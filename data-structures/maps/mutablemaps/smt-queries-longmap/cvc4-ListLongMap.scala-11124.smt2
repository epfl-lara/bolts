; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130076 () Bool)

(assert start!130076)

(declare-fun b!1525683 () Bool)

(declare-fun res!1043865 () Bool)

(declare-fun e!850474 () Bool)

(assert (=> b!1525683 (=> (not res!1043865) (not e!850474))))

(declare-datatypes ((array!101416 0))(
  ( (array!101417 (arr!48930 (Array (_ BitVec 32) (_ BitVec 64))) (size!49481 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101416)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101416 (_ BitVec 32)) Bool)

(assert (=> b!1525683 (= res!1043865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1043861 () Bool)

(assert (=> start!130076 (=> (not res!1043861) (not e!850474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130076 (= res!1043861 (validMask!0 mask!2512))))

(assert (=> start!130076 e!850474))

(assert (=> start!130076 true))

(declare-fun array_inv!37875 (array!101416) Bool)

(assert (=> start!130076 (array_inv!37875 a!2804)))

(declare-fun b!1525684 () Bool)

(declare-fun res!1043868 () Bool)

(assert (=> b!1525684 (=> (not res!1043868) (not e!850474))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1525684 (= res!1043868 (and (= (size!49481 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49481 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49481 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525685 () Bool)

(declare-fun res!1043867 () Bool)

(assert (=> b!1525685 (=> (not res!1043867) (not e!850474))))

(declare-datatypes ((List!35593 0))(
  ( (Nil!35590) (Cons!35589 (h!37023 (_ BitVec 64)) (t!50294 List!35593)) )
))
(declare-fun arrayNoDuplicates!0 (array!101416 (_ BitVec 32) List!35593) Bool)

(assert (=> b!1525685 (= res!1043867 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35590))))

(declare-fun b!1525686 () Bool)

(declare-fun e!850469 () Bool)

(declare-fun e!850475 () Bool)

(assert (=> b!1525686 (= e!850469 e!850475)))

(declare-fun res!1043860 () Bool)

(assert (=> b!1525686 (=> (not res!1043860) (not e!850475))))

(declare-datatypes ((SeekEntryResult!13116 0))(
  ( (MissingZero!13116 (index!54858 (_ BitVec 32))) (Found!13116 (index!54859 (_ BitVec 32))) (Intermediate!13116 (undefined!13928 Bool) (index!54860 (_ BitVec 32)) (x!136565 (_ BitVec 32))) (Undefined!13116) (MissingVacant!13116 (index!54861 (_ BitVec 32))) )
))
(declare-fun lt!660773 () SeekEntryResult!13116)

(declare-fun lt!660774 () (_ BitVec 64))

(declare-fun lt!660775 () array!101416)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101416 (_ BitVec 32)) SeekEntryResult!13116)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525686 (= res!1043860 (= lt!660773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660774 mask!2512) lt!660774 lt!660775 mask!2512)))))

(assert (=> b!1525686 (= lt!660774 (select (store (arr!48930 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525686 (= lt!660775 (array!101417 (store (arr!48930 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49481 a!2804)))))

(declare-fun b!1525687 () Bool)

(declare-fun res!1043856 () Bool)

(declare-fun e!850472 () Bool)

(assert (=> b!1525687 (=> (not res!1043856) (not e!850472))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101416 (_ BitVec 32)) SeekEntryResult!13116)

(assert (=> b!1525687 (= res!1043856 (= (seekEntry!0 (select (arr!48930 a!2804) j!70) a!2804 mask!2512) (Found!13116 j!70)))))

(declare-fun b!1525688 () Bool)

(assert (=> b!1525688 (= e!850474 e!850469)))

(declare-fun res!1043855 () Bool)

(assert (=> b!1525688 (=> (not res!1043855) (not e!850469))))

(declare-fun lt!660772 () SeekEntryResult!13116)

(assert (=> b!1525688 (= res!1043855 (= lt!660773 lt!660772))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1525688 (= lt!660772 (Intermediate!13116 false resIndex!21 resX!21))))

(assert (=> b!1525688 (= lt!660773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48930 a!2804) j!70) mask!2512) (select (arr!48930 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525689 () Bool)

(declare-fun res!1043866 () Bool)

(assert (=> b!1525689 (=> (not res!1043866) (not e!850474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525689 (= res!1043866 (validKeyInArray!0 (select (arr!48930 a!2804) i!961)))))

(declare-fun b!1525690 () Bool)

(declare-fun e!850470 () Bool)

(declare-fun e!850471 () Bool)

(assert (=> b!1525690 (= e!850470 e!850471)))

(declare-fun res!1043864 () Bool)

(assert (=> b!1525690 (=> (not res!1043864) (not e!850471))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101416 (_ BitVec 32)) SeekEntryResult!13116)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101416 (_ BitVec 32)) SeekEntryResult!13116)

(assert (=> b!1525690 (= res!1043864 (= (seekEntryOrOpen!0 (select (arr!48930 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48930 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525691 () Bool)

(declare-fun res!1043862 () Bool)

(assert (=> b!1525691 (=> (not res!1043862) (not e!850469))))

(assert (=> b!1525691 (= res!1043862 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48930 a!2804) j!70) a!2804 mask!2512) lt!660772))))

(declare-fun b!1525692 () Bool)

(assert (=> b!1525692 (= e!850475 (not true))))

(assert (=> b!1525692 e!850472))

(declare-fun res!1043857 () Bool)

(assert (=> b!1525692 (=> (not res!1043857) (not e!850472))))

(assert (=> b!1525692 (= res!1043857 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50972 0))(
  ( (Unit!50973) )
))
(declare-fun lt!660771 () Unit!50972)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50972)

(assert (=> b!1525692 (= lt!660771 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525693 () Bool)

(declare-fun res!1043858 () Bool)

(assert (=> b!1525693 (=> (not res!1043858) (not e!850474))))

(assert (=> b!1525693 (= res!1043858 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49481 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49481 a!2804))))))

(declare-fun b!1525694 () Bool)

(assert (=> b!1525694 (= e!850472 e!850470)))

(declare-fun res!1043859 () Bool)

(assert (=> b!1525694 (=> res!1043859 e!850470)))

(assert (=> b!1525694 (= res!1043859 (or (not (= (select (arr!48930 a!2804) j!70) lt!660774)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48930 a!2804) index!487) (select (arr!48930 a!2804) j!70)) (not (= (select (arr!48930 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525695 () Bool)

(declare-fun res!1043863 () Bool)

(assert (=> b!1525695 (=> (not res!1043863) (not e!850474))))

(assert (=> b!1525695 (= res!1043863 (validKeyInArray!0 (select (arr!48930 a!2804) j!70)))))

(declare-fun b!1525696 () Bool)

(assert (=> b!1525696 (= e!850471 (= (seekEntryOrOpen!0 lt!660774 lt!660775 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660774 lt!660775 mask!2512)))))

(assert (= (and start!130076 res!1043861) b!1525684))

(assert (= (and b!1525684 res!1043868) b!1525689))

(assert (= (and b!1525689 res!1043866) b!1525695))

(assert (= (and b!1525695 res!1043863) b!1525683))

(assert (= (and b!1525683 res!1043865) b!1525685))

(assert (= (and b!1525685 res!1043867) b!1525693))

(assert (= (and b!1525693 res!1043858) b!1525688))

(assert (= (and b!1525688 res!1043855) b!1525691))

(assert (= (and b!1525691 res!1043862) b!1525686))

(assert (= (and b!1525686 res!1043860) b!1525692))

(assert (= (and b!1525692 res!1043857) b!1525687))

(assert (= (and b!1525687 res!1043856) b!1525694))

(assert (= (and b!1525694 (not res!1043859)) b!1525690))

(assert (= (and b!1525690 res!1043864) b!1525696))

(declare-fun m!1408475 () Bool)

(assert (=> b!1525695 m!1408475))

(assert (=> b!1525695 m!1408475))

(declare-fun m!1408477 () Bool)

(assert (=> b!1525695 m!1408477))

(assert (=> b!1525690 m!1408475))

(assert (=> b!1525690 m!1408475))

(declare-fun m!1408479 () Bool)

(assert (=> b!1525690 m!1408479))

(assert (=> b!1525690 m!1408475))

(declare-fun m!1408481 () Bool)

(assert (=> b!1525690 m!1408481))

(declare-fun m!1408483 () Bool)

(assert (=> b!1525686 m!1408483))

(assert (=> b!1525686 m!1408483))

(declare-fun m!1408485 () Bool)

(assert (=> b!1525686 m!1408485))

(declare-fun m!1408487 () Bool)

(assert (=> b!1525686 m!1408487))

(declare-fun m!1408489 () Bool)

(assert (=> b!1525686 m!1408489))

(declare-fun m!1408491 () Bool)

(assert (=> b!1525696 m!1408491))

(declare-fun m!1408493 () Bool)

(assert (=> b!1525696 m!1408493))

(declare-fun m!1408495 () Bool)

(assert (=> start!130076 m!1408495))

(declare-fun m!1408497 () Bool)

(assert (=> start!130076 m!1408497))

(assert (=> b!1525688 m!1408475))

(assert (=> b!1525688 m!1408475))

(declare-fun m!1408499 () Bool)

(assert (=> b!1525688 m!1408499))

(assert (=> b!1525688 m!1408499))

(assert (=> b!1525688 m!1408475))

(declare-fun m!1408501 () Bool)

(assert (=> b!1525688 m!1408501))

(assert (=> b!1525694 m!1408475))

(declare-fun m!1408503 () Bool)

(assert (=> b!1525694 m!1408503))

(declare-fun m!1408505 () Bool)

(assert (=> b!1525692 m!1408505))

(declare-fun m!1408507 () Bool)

(assert (=> b!1525692 m!1408507))

(declare-fun m!1408509 () Bool)

(assert (=> b!1525689 m!1408509))

(assert (=> b!1525689 m!1408509))

(declare-fun m!1408511 () Bool)

(assert (=> b!1525689 m!1408511))

(assert (=> b!1525691 m!1408475))

(assert (=> b!1525691 m!1408475))

(declare-fun m!1408513 () Bool)

(assert (=> b!1525691 m!1408513))

(declare-fun m!1408515 () Bool)

(assert (=> b!1525683 m!1408515))

(assert (=> b!1525687 m!1408475))

(assert (=> b!1525687 m!1408475))

(declare-fun m!1408517 () Bool)

(assert (=> b!1525687 m!1408517))

(declare-fun m!1408519 () Bool)

(assert (=> b!1525685 m!1408519))

(push 1)

