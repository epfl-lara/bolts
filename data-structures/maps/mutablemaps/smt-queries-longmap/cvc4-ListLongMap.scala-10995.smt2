; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128852 () Bool)

(assert start!128852)

(declare-fun b!1509279 () Bool)

(declare-fun res!1029256 () Bool)

(declare-fun e!843072 () Bool)

(assert (=> b!1509279 (=> (not res!1029256) (not e!843072))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100621 0))(
  ( (array!100622 (arr!48543 (Array (_ BitVec 32) (_ BitVec 64))) (size!49094 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100621)

(assert (=> b!1509279 (= res!1029256 (and (= (size!49094 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49094 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49094 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509280 () Bool)

(declare-fun res!1029254 () Bool)

(declare-fun e!843074 () Bool)

(assert (=> b!1509280 (=> (not res!1029254) (not e!843074))))

(declare-datatypes ((SeekEntryResult!12735 0))(
  ( (MissingZero!12735 (index!53334 (_ BitVec 32))) (Found!12735 (index!53335 (_ BitVec 32))) (Intermediate!12735 (undefined!13547 Bool) (index!53336 (_ BitVec 32)) (x!135098 (_ BitVec 32))) (Undefined!12735) (MissingVacant!12735 (index!53337 (_ BitVec 32))) )
))
(declare-fun lt!654819 () SeekEntryResult!12735)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100621 (_ BitVec 32)) SeekEntryResult!12735)

(assert (=> b!1509280 (= res!1029254 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48543 a!2804) j!70) a!2804 mask!2512) lt!654819))))

(declare-fun b!1509281 () Bool)

(declare-fun res!1029255 () Bool)

(assert (=> b!1509281 (=> (not res!1029255) (not e!843072))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509281 (= res!1029255 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49094 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49094 a!2804))))))

(declare-fun b!1509282 () Bool)

(declare-fun res!1029259 () Bool)

(assert (=> b!1509282 (=> (not res!1029259) (not e!843072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509282 (= res!1029259 (validKeyInArray!0 (select (arr!48543 a!2804) i!961)))))

(declare-fun b!1509283 () Bool)

(declare-fun res!1029258 () Bool)

(assert (=> b!1509283 (=> (not res!1029258) (not e!843072))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100621 (_ BitVec 32)) Bool)

(assert (=> b!1509283 (= res!1029258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509284 () Bool)

(assert (=> b!1509284 (= e!843074 false)))

(declare-fun lt!654820 () SeekEntryResult!12735)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509284 (= lt!654820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48543 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48543 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100622 (store (arr!48543 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49094 a!2804)) mask!2512))))

(declare-fun res!1029253 () Bool)

(assert (=> start!128852 (=> (not res!1029253) (not e!843072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128852 (= res!1029253 (validMask!0 mask!2512))))

(assert (=> start!128852 e!843072))

(assert (=> start!128852 true))

(declare-fun array_inv!37488 (array!100621) Bool)

(assert (=> start!128852 (array_inv!37488 a!2804)))

(declare-fun b!1509278 () Bool)

(declare-fun res!1029260 () Bool)

(assert (=> b!1509278 (=> (not res!1029260) (not e!843072))))

(assert (=> b!1509278 (= res!1029260 (validKeyInArray!0 (select (arr!48543 a!2804) j!70)))))

(declare-fun b!1509285 () Bool)

(assert (=> b!1509285 (= e!843072 e!843074)))

(declare-fun res!1029257 () Bool)

(assert (=> b!1509285 (=> (not res!1029257) (not e!843074))))

(assert (=> b!1509285 (= res!1029257 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48543 a!2804) j!70) mask!2512) (select (arr!48543 a!2804) j!70) a!2804 mask!2512) lt!654819))))

(assert (=> b!1509285 (= lt!654819 (Intermediate!12735 false resIndex!21 resX!21))))

(declare-fun b!1509286 () Bool)

(declare-fun res!1029261 () Bool)

(assert (=> b!1509286 (=> (not res!1029261) (not e!843072))))

(declare-datatypes ((List!35206 0))(
  ( (Nil!35203) (Cons!35202 (h!36615 (_ BitVec 64)) (t!49907 List!35206)) )
))
(declare-fun arrayNoDuplicates!0 (array!100621 (_ BitVec 32) List!35206) Bool)

(assert (=> b!1509286 (= res!1029261 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35203))))

(assert (= (and start!128852 res!1029253) b!1509279))

(assert (= (and b!1509279 res!1029256) b!1509282))

(assert (= (and b!1509282 res!1029259) b!1509278))

(assert (= (and b!1509278 res!1029260) b!1509283))

(assert (= (and b!1509283 res!1029258) b!1509286))

(assert (= (and b!1509286 res!1029261) b!1509281))

(assert (= (and b!1509281 res!1029255) b!1509285))

(assert (= (and b!1509285 res!1029257) b!1509280))

(assert (= (and b!1509280 res!1029254) b!1509284))

(declare-fun m!1391799 () Bool)

(assert (=> b!1509278 m!1391799))

(assert (=> b!1509278 m!1391799))

(declare-fun m!1391801 () Bool)

(assert (=> b!1509278 m!1391801))

(declare-fun m!1391803 () Bool)

(assert (=> b!1509286 m!1391803))

(declare-fun m!1391805 () Bool)

(assert (=> b!1509282 m!1391805))

(assert (=> b!1509282 m!1391805))

(declare-fun m!1391807 () Bool)

(assert (=> b!1509282 m!1391807))

(declare-fun m!1391809 () Bool)

(assert (=> b!1509284 m!1391809))

(declare-fun m!1391811 () Bool)

(assert (=> b!1509284 m!1391811))

(assert (=> b!1509284 m!1391811))

(declare-fun m!1391813 () Bool)

(assert (=> b!1509284 m!1391813))

(assert (=> b!1509284 m!1391813))

(assert (=> b!1509284 m!1391811))

(declare-fun m!1391815 () Bool)

(assert (=> b!1509284 m!1391815))

(declare-fun m!1391817 () Bool)

(assert (=> b!1509283 m!1391817))

(assert (=> b!1509285 m!1391799))

(assert (=> b!1509285 m!1391799))

(declare-fun m!1391819 () Bool)

(assert (=> b!1509285 m!1391819))

(assert (=> b!1509285 m!1391819))

(assert (=> b!1509285 m!1391799))

(declare-fun m!1391821 () Bool)

(assert (=> b!1509285 m!1391821))

(declare-fun m!1391823 () Bool)

(assert (=> start!128852 m!1391823))

(declare-fun m!1391825 () Bool)

(assert (=> start!128852 m!1391825))

(assert (=> b!1509280 m!1391799))

(assert (=> b!1509280 m!1391799))

(declare-fun m!1391827 () Bool)

(assert (=> b!1509280 m!1391827))

(push 1)

(assert (not b!1509286))

