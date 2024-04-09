; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129336 () Bool)

(assert start!129336)

(declare-fun b!1518379 () Bool)

(declare-fun res!1038358 () Bool)

(declare-fun e!847076 () Bool)

(assert (=> b!1518379 (=> (not res!1038358) (not e!847076))))

(declare-datatypes ((SeekEntryResult!12977 0))(
  ( (MissingZero!12977 (index!54302 (_ BitVec 32))) (Found!12977 (index!54303 (_ BitVec 32))) (Intermediate!12977 (undefined!13789 Bool) (index!54304 (_ BitVec 32)) (x!135988 (_ BitVec 32))) (Undefined!12977) (MissingVacant!12977 (index!54305 (_ BitVec 32))) )
))
(declare-fun lt!658123 () SeekEntryResult!12977)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101105 0))(
  ( (array!101106 (arr!48785 (Array (_ BitVec 32) (_ BitVec 64))) (size!49336 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101105)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101105 (_ BitVec 32)) SeekEntryResult!12977)

(assert (=> b!1518379 (= res!1038358 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48785 a!2804) j!70) a!2804 mask!2512) lt!658123))))

(declare-fun b!1518380 () Bool)

(declare-fun res!1038360 () Bool)

(declare-fun e!847075 () Bool)

(assert (=> b!1518380 (=> (not res!1038360) (not e!847075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518380 (= res!1038360 (validKeyInArray!0 (select (arr!48785 a!2804) j!70)))))

(declare-fun b!1518381 () Bool)

(declare-fun res!1038362 () Bool)

(assert (=> b!1518381 (=> (not res!1038362) (not e!847075))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518381 (= res!1038362 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49336 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49336 a!2804))))))

(declare-fun b!1518382 () Bool)

(assert (=> b!1518382 (= e!847075 e!847076)))

(declare-fun res!1038357 () Bool)

(assert (=> b!1518382 (=> (not res!1038357) (not e!847076))))

(declare-fun lt!658126 () SeekEntryResult!12977)

(assert (=> b!1518382 (= res!1038357 (= lt!658126 lt!658123))))

(assert (=> b!1518382 (= lt!658123 (Intermediate!12977 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518382 (= lt!658126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48785 a!2804) j!70) mask!2512) (select (arr!48785 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518383 () Bool)

(declare-fun res!1038356 () Bool)

(assert (=> b!1518383 (=> (not res!1038356) (not e!847075))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518383 (= res!1038356 (validKeyInArray!0 (select (arr!48785 a!2804) i!961)))))

(declare-fun b!1518384 () Bool)

(declare-fun res!1038354 () Bool)

(assert (=> b!1518384 (=> (not res!1038354) (not e!847076))))

(assert (=> b!1518384 (= res!1038354 (= lt!658126 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48785 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48785 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101106 (store (arr!48785 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49336 a!2804)) mask!2512)))))

(declare-fun b!1518385 () Bool)

(declare-fun e!847077 () Bool)

(declare-fun e!847074 () Bool)

(assert (=> b!1518385 (= e!847077 e!847074)))

(declare-fun res!1038355 () Bool)

(assert (=> b!1518385 (=> res!1038355 e!847074)))

(declare-fun lt!658124 () (_ BitVec 32))

(assert (=> b!1518385 (= res!1038355 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658124 #b00000000000000000000000000000000) (bvsge lt!658124 (size!49336 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518385 (= lt!658124 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518386 () Bool)

(assert (=> b!1518386 (= e!847076 (not e!847077))))

(declare-fun res!1038365 () Bool)

(assert (=> b!1518386 (=> res!1038365 e!847077)))

(assert (=> b!1518386 (= res!1038365 (or (not (= (select (arr!48785 a!2804) j!70) (select (store (arr!48785 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!847079 () Bool)

(assert (=> b!1518386 e!847079))

(declare-fun res!1038366 () Bool)

(assert (=> b!1518386 (=> (not res!1038366) (not e!847079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101105 (_ BitVec 32)) Bool)

(assert (=> b!1518386 (= res!1038366 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50778 0))(
  ( (Unit!50779) )
))
(declare-fun lt!658122 () Unit!50778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50778)

(assert (=> b!1518386 (= lt!658122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518387 () Bool)

(declare-fun res!1038359 () Bool)

(assert (=> b!1518387 (=> (not res!1038359) (not e!847075))))

(declare-datatypes ((List!35448 0))(
  ( (Nil!35445) (Cons!35444 (h!36857 (_ BitVec 64)) (t!50149 List!35448)) )
))
(declare-fun arrayNoDuplicates!0 (array!101105 (_ BitVec 32) List!35448) Bool)

(assert (=> b!1518387 (= res!1038359 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35445))))

(declare-fun b!1518388 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101105 (_ BitVec 32)) SeekEntryResult!12977)

(assert (=> b!1518388 (= e!847079 (= (seekEntry!0 (select (arr!48785 a!2804) j!70) a!2804 mask!2512) (Found!12977 j!70)))))

(declare-fun b!1518389 () Bool)

(declare-fun res!1038363 () Bool)

(assert (=> b!1518389 (=> (not res!1038363) (not e!847075))))

(assert (=> b!1518389 (= res!1038363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1038364 () Bool)

(assert (=> start!129336 (=> (not res!1038364) (not e!847075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129336 (= res!1038364 (validMask!0 mask!2512))))

(assert (=> start!129336 e!847075))

(assert (=> start!129336 true))

(declare-fun array_inv!37730 (array!101105) Bool)

(assert (=> start!129336 (array_inv!37730 a!2804)))

(declare-fun b!1518390 () Bool)

(assert (=> b!1518390 (= e!847074 true)))

(declare-fun lt!658125 () SeekEntryResult!12977)

(assert (=> b!1518390 (= lt!658125 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658124 (select (arr!48785 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518391 () Bool)

(declare-fun res!1038361 () Bool)

(assert (=> b!1518391 (=> (not res!1038361) (not e!847075))))

(assert (=> b!1518391 (= res!1038361 (and (= (size!49336 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49336 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49336 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129336 res!1038364) b!1518391))

(assert (= (and b!1518391 res!1038361) b!1518383))

(assert (= (and b!1518383 res!1038356) b!1518380))

(assert (= (and b!1518380 res!1038360) b!1518389))

(assert (= (and b!1518389 res!1038363) b!1518387))

(assert (= (and b!1518387 res!1038359) b!1518381))

(assert (= (and b!1518381 res!1038362) b!1518382))

(assert (= (and b!1518382 res!1038357) b!1518379))

(assert (= (and b!1518379 res!1038358) b!1518384))

(assert (= (and b!1518384 res!1038354) b!1518386))

(assert (= (and b!1518386 res!1038366) b!1518388))

(assert (= (and b!1518386 (not res!1038365)) b!1518385))

(assert (= (and b!1518385 (not res!1038355)) b!1518390))

(declare-fun m!1401751 () Bool)

(assert (=> b!1518390 m!1401751))

(assert (=> b!1518390 m!1401751))

(declare-fun m!1401753 () Bool)

(assert (=> b!1518390 m!1401753))

(declare-fun m!1401755 () Bool)

(assert (=> start!129336 m!1401755))

(declare-fun m!1401757 () Bool)

(assert (=> start!129336 m!1401757))

(assert (=> b!1518382 m!1401751))

(assert (=> b!1518382 m!1401751))

(declare-fun m!1401759 () Bool)

(assert (=> b!1518382 m!1401759))

(assert (=> b!1518382 m!1401759))

(assert (=> b!1518382 m!1401751))

(declare-fun m!1401761 () Bool)

(assert (=> b!1518382 m!1401761))

(assert (=> b!1518388 m!1401751))

(assert (=> b!1518388 m!1401751))

(declare-fun m!1401763 () Bool)

(assert (=> b!1518388 m!1401763))

(declare-fun m!1401765 () Bool)

(assert (=> b!1518385 m!1401765))

(assert (=> b!1518379 m!1401751))

(assert (=> b!1518379 m!1401751))

(declare-fun m!1401767 () Bool)

(assert (=> b!1518379 m!1401767))

(assert (=> b!1518380 m!1401751))

(assert (=> b!1518380 m!1401751))

(declare-fun m!1401769 () Bool)

(assert (=> b!1518380 m!1401769))

(assert (=> b!1518386 m!1401751))

(declare-fun m!1401771 () Bool)

(assert (=> b!1518386 m!1401771))

(declare-fun m!1401773 () Bool)

(assert (=> b!1518386 m!1401773))

(declare-fun m!1401775 () Bool)

(assert (=> b!1518386 m!1401775))

(declare-fun m!1401777 () Bool)

(assert (=> b!1518386 m!1401777))

(declare-fun m!1401779 () Bool)

(assert (=> b!1518383 m!1401779))

(assert (=> b!1518383 m!1401779))

(declare-fun m!1401781 () Bool)

(assert (=> b!1518383 m!1401781))

(declare-fun m!1401783 () Bool)

(assert (=> b!1518387 m!1401783))

(declare-fun m!1401785 () Bool)

(assert (=> b!1518389 m!1401785))

(assert (=> b!1518384 m!1401773))

(assert (=> b!1518384 m!1401775))

(assert (=> b!1518384 m!1401775))

(declare-fun m!1401787 () Bool)

(assert (=> b!1518384 m!1401787))

(assert (=> b!1518384 m!1401787))

(assert (=> b!1518384 m!1401775))

(declare-fun m!1401789 () Bool)

(assert (=> b!1518384 m!1401789))

(check-sat (not b!1518387) (not b!1518380) (not b!1518390) (not b!1518385) (not b!1518389) (not b!1518382) (not b!1518386) (not b!1518383) (not b!1518379) (not start!129336) (not b!1518388) (not b!1518384))
(check-sat)
