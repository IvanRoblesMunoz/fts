#
# Copyright (c) 2015-2016 by Gaohang Wu.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

require(fBasics)

da = read.table("introTS/d-axp3dx-0111.txt", header = T)
rtn = da[, 2:5]
# (a)
apply(100 * rtn, 2, basicStats)
# (b)
lrtn = log(1 + rtn)
apply(100 * lrtn, 2, basicStats)
# (c)
# \frac{\sqrt{T}\hat{\mu}_x}{\hat{\sigma}_x}
apply(lrtn, 2, t.test)

