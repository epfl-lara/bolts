; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130074 () Bool)

(assert start!130074)

(declare-fun b!1525641 () Bool)

(declare-fun res!1043826 () Bool)

(declare-fun e!850448 () Bool)

(assert (=> b!1525641 (=> (not res!1043826) (not e!850448))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101414 0))(
  ( (array!101415 (arr!48929 (Array (_ BitVec 32) (_ BitVec 64))) (size!49480 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101414)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525641 (= res!1043826 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49480 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49480 a!2804))))))

(declare-fun b!1525642 () Bool)

(declare-fun res!1043816 () Bool)

(assert (=> b!1525642 (=> (not res!1043816) (not e!850448))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101414 (_ BitVec 32)) Bool)

(assert (=> b!1525642 (= res!1043816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525643 () Bool)

(declare-fun res!1043817 () Bool)

(declare-fun e!850449 () Bool)

(assert (=> b!1525643 (=> (not res!1043817) (not e!850449))))

(declare-datatypes ((SeekEntryResult!13115 0))(
  ( (MissingZero!13115 (index!54854 (_ BitVec 32))) (Found!13115 (index!54855 (_ BitVec 32))) (Intermediate!13115 (undefined!13927 Bool) (index!54856 (_ BitVec 32)) (x!136564 (_ BitVec 32))) (Undefined!13115) (MissingVacant!13115 (index!54857 (_ BitVec 32))) )
))
(declare-fun lt!660759 () SeekEntryResult!13115)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101414 (_ BitVec 32)) SeekEntryResult!13115)

(assert (=> b!1525643 (= res!1043817 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48929 a!2804) j!70) a!2804 mask!2512) lt!660759))))

(declare-fun lt!660756 () (_ BitVec 64))

(declare-fun e!850450 () Bool)

(declare-fun lt!660758 () array!101414)

(declare-fun b!1525644 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101414 (_ BitVec 32)) SeekEntryResult!13115)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101414 (_ BitVec 32)) SeekEntryResult!13115)

(assert (=> b!1525644 (= e!850450 (= (seekEntryOrOpen!0 lt!660756 lt!660758 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660756 lt!660758 mask!2512)))))

(declare-fun b!1525645 () Bool)

(declare-fun e!850451 () Bool)

(assert (=> b!1525645 (= e!850451 e!850450)))

(declare-fun res!1043819 () Bool)

(assert (=> b!1525645 (=> (not res!1043819) (not e!850450))))

(assert (=> b!1525645 (= res!1043819 (= (seekEntryOrOpen!0 (select (arr!48929 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48929 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525646 () Bool)

(declare-fun e!850453 () Bool)

(assert (=> b!1525646 (= e!850453 (not true))))

(declare-fun e!850452 () Bool)

(assert (=> b!1525646 e!850452))

(declare-fun res!1043822 () Bool)

(assert (=> b!1525646 (=> (not res!1043822) (not e!850452))))

(assert (=> b!1525646 (= res!1043822 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50970 0))(
  ( (Unit!50971) )
))
(declare-fun lt!660757 () Unit!50970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50970)

(assert (=> b!1525646 (= lt!660757 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525647 () Bool)

(declare-fun res!1043813 () Bool)

(assert (=> b!1525647 (=> (not res!1043813) (not e!850452))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101414 (_ BitVec 32)) SeekEntryResult!13115)

(assert (=> b!1525647 (= res!1043813 (= (seekEntry!0 (select (arr!48929 a!2804) j!70) a!2804 mask!2512) (Found!13115 j!70)))))

(declare-fun res!1043824 () Bool)

(assert (=> start!130074 (=> (not res!1043824) (not e!850448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130074 (= res!1043824 (validMask!0 mask!2512))))

(assert (=> start!130074 e!850448))

(assert (=> start!130074 true))

(declare-fun array_inv!37874 (array!101414) Bool)

(assert (=> start!130074 (array_inv!37874 a!2804)))

(declare-fun b!1525648 () Bool)

(declare-fun res!1043814 () Bool)

(assert (=> b!1525648 (=> (not res!1043814) (not e!850448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525648 (= res!1043814 (validKeyInArray!0 (select (arr!48929 a!2804) j!70)))))

(declare-fun b!1525649 () Bool)

(assert (=> b!1525649 (= e!850452 e!850451)))

(declare-fun res!1043823 () Bool)

(assert (=> b!1525649 (=> res!1043823 e!850451)))

(assert (=> b!1525649 (= res!1043823 (or (not (= (select (arr!48929 a!2804) j!70) lt!660756)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48929 a!2804) index!487) (select (arr!48929 a!2804) j!70)) (not (= (select (arr!48929 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525650 () Bool)

(declare-fun res!1043820 () Bool)

(assert (=> b!1525650 (=> (not res!1043820) (not e!850448))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525650 (= res!1043820 (validKeyInArray!0 (select (arr!48929 a!2804) i!961)))))

(declare-fun b!1525651 () Bool)

(assert (=> b!1525651 (= e!850449 e!850453)))

(declare-fun res!1043815 () Bool)

(assert (=> b!1525651 (=> (not res!1043815) (not e!850453))))

(declare-fun lt!660760 () SeekEntryResult!13115)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525651 (= res!1043815 (= lt!660760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660756 mask!2512) lt!660756 lt!660758 mask!2512)))))

(assert (=> b!1525651 (= lt!660756 (select (store (arr!48929 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525651 (= lt!660758 (array!101415 (store (arr!48929 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49480 a!2804)))))

(declare-fun b!1525652 () Bool)

(declare-fun res!1043818 () Bool)

(assert (=> b!1525652 (=> (not res!1043818) (not e!850448))))

(assert (=> b!1525652 (= res!1043818 (and (= (size!49480 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49480 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49480 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525653 () Bool)

(declare-fun res!1043825 () Bool)

(assert (=> b!1525653 (=> (not res!1043825) (not e!850448))))

(declare-datatypes ((List!35592 0))(
  ( (Nil!35589) (Cons!35588 (h!37022 (_ BitVec 64)) (t!50293 List!35592)) )
))
(declare-fun arrayNoDuplicates!0 (array!101414 (_ BitVec 32) List!35592) Bool)

(assert (=> b!1525653 (= res!1043825 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35589))))

(declare-fun b!1525654 () Bool)

(assert (=> b!1525654 (= e!850448 e!850449)))

(declare-fun res!1043821 () Bool)

(assert (=> b!1525654 (=> (not res!1043821) (not e!850449))))

(assert (=> b!1525654 (= res!1043821 (= lt!660760 lt!660759))))

(assert (=> b!1525654 (= lt!660759 (Intermediate!13115 false resIndex!21 resX!21))))

(assert (=> b!1525654 (= lt!660760 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48929 a!2804) j!70) mask!2512) (select (arr!48929 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130074 res!1043824) b!1525652))

(assert (= (and b!1525652 res!1043818) b!1525650))

(assert (= (and b!1525650 res!1043820) b!1525648))

(assert (= (and b!1525648 res!1043814) b!1525642))

(assert (= (and b!1525642 res!1043816) b!1525653))

(assert (= (and b!1525653 res!1043825) b!1525641))

(assert (= (and b!1525641 res!1043826) b!1525654))

(assert (= (and b!1525654 res!1043821) b!1525643))

(assert (= (and b!1525643 res!1043817) b!1525651))

(assert (= (and b!1525651 res!1043815) b!1525646))

(assert (= (and b!1525646 res!1043822) b!1525647))

(assert (= (and b!1525647 res!1043813) b!1525649))

(assert (= (and b!1525649 (not res!1043823)) b!1525645))

(assert (= (and b!1525645 res!1043819) b!1525644))

(declare-fun m!1408429 () Bool)

(assert (=> b!1525649 m!1408429))

(declare-fun m!1408431 () Bool)

(assert (=> b!1525649 m!1408431))

(assert (=> b!1525647 m!1408429))

(assert (=> b!1525647 m!1408429))

(declare-fun m!1408433 () Bool)

(assert (=> b!1525647 m!1408433))

(declare-fun m!1408435 () Bool)

(assert (=> start!130074 m!1408435))

(declare-fun m!1408437 () Bool)

(assert (=> start!130074 m!1408437))

(assert (=> b!1525643 m!1408429))

(assert (=> b!1525643 m!1408429))

(declare-fun m!1408439 () Bool)

(assert (=> b!1525643 m!1408439))

(assert (=> b!1525654 m!1408429))

(assert (=> b!1525654 m!1408429))

(declare-fun m!1408441 () Bool)

(assert (=> b!1525654 m!1408441))

(assert (=> b!1525654 m!1408441))

(assert (=> b!1525654 m!1408429))

(declare-fun m!1408443 () Bool)

(assert (=> b!1525654 m!1408443))

(assert (=> b!1525645 m!1408429))

(assert (=> b!1525645 m!1408429))

(declare-fun m!1408445 () Bool)

(assert (=> b!1525645 m!1408445))

(assert (=> b!1525645 m!1408429))

(declare-fun m!1408447 () Bool)

(assert (=> b!1525645 m!1408447))

(assert (=> b!1525648 m!1408429))

(assert (=> b!1525648 m!1408429))

(declare-fun m!1408449 () Bool)

(assert (=> b!1525648 m!1408449))

(declare-fun m!1408451 () Bool)

(assert (=> b!1525650 m!1408451))

(assert (=> b!1525650 m!1408451))

(declare-fun m!1408453 () Bool)

(assert (=> b!1525650 m!1408453))

(declare-fun m!1408455 () Bool)

(assert (=> b!1525642 m!1408455))

(declare-fun m!1408457 () Bool)

(assert (=> b!1525653 m!1408457))

(declare-fun m!1408459 () Bool)

(assert (=> b!1525646 m!1408459))

(declare-fun m!1408461 () Bool)

(assert (=> b!1525646 m!1408461))

(declare-fun m!1408463 () Bool)

(assert (=> b!1525644 m!1408463))

(declare-fun m!1408465 () Bool)

(assert (=> b!1525644 m!1408465))

(declare-fun m!1408467 () Bool)

(assert (=> b!1525651 m!1408467))

(assert (=> b!1525651 m!1408467))

(declare-fun m!1408469 () Bool)

(assert (=> b!1525651 m!1408469))

(declare-fun m!1408471 () Bool)

(assert (=> b!1525651 m!1408471))

(declare-fun m!1408473 () Bool)

(assert (=> b!1525651 m!1408473))

(check-sat (not b!1525651) (not b!1525643) (not b!1525650) (not start!130074) (not b!1525645) (not b!1525654) (not b!1525653) (not b!1525644) (not b!1525646) (not b!1525647) (not b!1525648) (not b!1525642))
(check-sat)
