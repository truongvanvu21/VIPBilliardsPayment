package com.group1.vipbilliardspayment.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.group1.vipbilliardspayment.dto.request.ThuNganCreateRequest;
import com.group1.vipbilliardspayment.dto.request.ThuNganUpdateRequest;
import com.group1.vipbilliardspayment.dto.response.ThuNganResponse;
import com.group1.vipbilliardspayment.entity.ThuNgan;
import com.group1.vipbilliardspayment.exception.AppException;
import com.group1.vipbilliardspayment.exception.ErrorCode;
import com.group1.vipbilliardspayment.mapper.ThuNganMapper;
import com.group1.vipbilliardspayment.repository.ThuNganRepository;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class ThuNganService {

	ThuNganRepository thuNgan;
	
	ThuNganMapper thuNganMapper;
	
	public List<ThuNganResponse> GetAlThuNgan()
	{
		List<ThuNgan> lstThuNgan = thuNgan.findAll();
		return lstThuNgan.stream().map(thuNganMapper::toThuNganReponse).collect(Collectors.toList());
	}

	public List<ThuNganResponse> FindThuNganByHoTen(String hoTen)
	{
		List<ThuNgan> lstThuNgan = thuNgan.findAll();
		return lstThuNgan.stream().filter(thungan -> thungan.getHoTen().contains(hoTen)).map(thuNganMapper::toThuNganReponse).collect(Collectors.toList());
	}

	public ThuNganResponse GetThuNganByTenDangNhap(String tenDangNhap)
	{
		List<ThuNgan> lstThuNgan = thuNgan.findAll();
		return lstThuNgan.stream().filter(thungan -> thungan.getTenDangNhap().equals(tenDangNhap)).map(thuNganMapper::toThuNganReponse).findFirst().orElse(null);
	}
	
	public ThuNganResponse CreateThuNgan(ThuNganCreateRequest thungan_)
	{
		List<ThuNgan> lstThuNgan = thuNgan.findAll();
		
		if(lstThuNgan.stream().filter(tmp -> tmp.getTenDangNhap().equals(thungan_.getTenDangNhap())).findFirst().orElse(null) != null)
		{
			throw new AppException(ErrorCode.TENDANGNHAP_ALREADY_EXISTS);
		}
		else if(lstThuNgan.stream().filter(tmp -> tmp.getSoCCCD().equals(thungan_.getSoCCCD())).findFirst().orElse(null) != null)
		{
			throw new AppException(ErrorCode.SOCCCD_ALREADY_EXISTS);
		}
		try {
			
			ThuNgan tn = new ThuNgan();
			tn.setHoTen(thungan_.getHoTen());
			tn.setNgaySinh(thungan_.getNgaySinh());
			tn.setGioiTinhNu(thungan_.isGioiTinhNu());
			tn.setEmail(thungan_.getEmail());
			tn.setSoDienThoai(thungan_.getSoDienThoai());
			tn.setSoCCCD(thungan_.getSoCCCD());
			tn.setTenDangNhap(thungan_.getTenDangNhap());

			PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10);
			tn.setMatKhau(passwordEncoder.encode(thungan_.getMatKhau()));
			
			tn = thuNgan.save(tn);
			
			
			return thuNganMapper.toThuNganReponse(tn);
		} catch (Exception e) {
			
			throw new AppException(ErrorCode.CREATE_FAILED);
		}
	}
	
	public ThuNganResponse UpdateThuNgan(Integer maThuNgan, ThuNganUpdateRequest thungan_)
	{
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(10);
		Optional<ThuNgan> tn = thuNgan.findById(maThuNgan);
		if(!tn.isPresent())
		{
			throw new AppException(ErrorCode.THUNGAN_NOT_FOUND);
		}
		try {
			ThuNgan thungan = tn.get();
			thungan.setHoTen(thungan_.getHoTen());
			thungan.setNgaySinh(thungan_.getNgaySinh());
			thungan.setGioiTinhNu(thungan_.isGioiTinhNu());
			thungan.setEmail(thungan_.getEmail());
			thungan.setSoCCCD(thungan_.getSoCCCD());
			thungan.setSoDienThoai(thungan_.getSoDienThoai());
			thungan.setMatKhau(passwordEncoder.encode(thungan_.getMatKhau()));
			
			thungan = thuNgan.save(thungan);
			return thuNganMapper.toThuNganReponse(thungan);	
		} catch (Exception e) {
			throw new AppException(ErrorCode.UPDATE_FAILED);
		}
	}
}
