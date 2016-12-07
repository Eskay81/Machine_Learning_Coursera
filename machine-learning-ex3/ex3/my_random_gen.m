## Copyright (C) 2016 ESKAY
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- This takes 2 input, first one is the dataset in text format and
##     no of figures row by col for example, if 10 pictures by 10 picture, then enter 10
##     my_mat = my_random_gen('data1.mat',10); -*- 
##
## @deftypefn {Function File} {@var{retval} =} my_random_gen (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: ESKAY <ESKAY@ESKAY_MACHINE>
## Created: 2016-11-22

function [output_mat] = my_random_gen (file_name,mat_size)

DataSet = load(file_name);
m = length(DataSet.X);
output_mat = zeros(mat_size);

for i = 1 : mat_size
	for j = 1 : mat_size
		row_no = randi(m,1,1);
		temp_mat = vec2mat(DataSet.X(row_no,:),20);
		output_mat(20*(i-1) + 1:20*(i-1)+20,20*(j-1)+1:20*(j-1)+20) = temp_mat';
	end
end
imshow(output_mat);
endfunction
