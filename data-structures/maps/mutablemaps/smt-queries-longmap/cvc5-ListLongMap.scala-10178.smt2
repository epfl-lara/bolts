; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120034 () Bool)

(assert start!120034)

(declare-fun b!1396793 () Bool)

(declare-fun res!935818 () Bool)

(declare-fun e!790803 () Bool)

(assert (=> b!1396793 (=> (not res!935818) (not e!790803))))

(declare-datatypes ((array!95481 0))(
  ( (array!95482 (arr!46090 (Array (_ BitVec 32) (_ BitVec 64))) (size!46641 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95481)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95481 (_ BitVec 32)) Bool)

(assert (=> b!1396793 (= res!935818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396794 () Bool)

(declare-fun res!935821 () Bool)

(assert (=> b!1396794 (=> (not res!935821) (not e!790803))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396794 (= res!935821 (validKeyInArray!0 (select (arr!46090 a!2901) j!112)))))

(declare-fun b!1396795 () Bool)

(declare-fun res!935817 () Bool)

(assert (=> b!1396795 (=> (not res!935817) (not e!790803))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396795 (= res!935817 (and (= (size!46641 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46641 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46641 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396796 () Bool)

(declare-fun e!790805 () Bool)

(assert (=> b!1396796 (= e!790805 true)))

(declare-datatypes ((SeekEntryResult!10429 0))(
  ( (MissingZero!10429 (index!44086 (_ BitVec 32))) (Found!10429 (index!44087 (_ BitVec 32))) (Intermediate!10429 (undefined!11241 Bool) (index!44088 (_ BitVec 32)) (x!125758 (_ BitVec 32))) (Undefined!10429) (MissingVacant!10429 (index!44089 (_ BitVec 32))) )
))
(declare-fun lt!613711 () SeekEntryResult!10429)

(declare-fun lt!613707 () array!95481)

(declare-fun lt!613705 () (_ BitVec 32))

(declare-fun lt!613709 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95481 (_ BitVec 32)) SeekEntryResult!10429)

(assert (=> b!1396796 (= lt!613711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613705 lt!613709 lt!613707 mask!2840))))

(declare-fun b!1396798 () Bool)

(declare-fun res!935823 () Bool)

(assert (=> b!1396798 (=> (not res!935823) (not e!790803))))

(declare-datatypes ((List!32789 0))(
  ( (Nil!32786) (Cons!32785 (h!34027 (_ BitVec 64)) (t!47490 List!32789)) )
))
(declare-fun arrayNoDuplicates!0 (array!95481 (_ BitVec 32) List!32789) Bool)

(assert (=> b!1396798 (= res!935823 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32786))))

(declare-fun b!1396799 () Bool)

(declare-fun res!935822 () Bool)

(assert (=> b!1396799 (=> (not res!935822) (not e!790803))))

(assert (=> b!1396799 (= res!935822 (validKeyInArray!0 (select (arr!46090 a!2901) i!1037)))))

(declare-fun b!1396800 () Bool)

(declare-fun e!790801 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95481 (_ BitVec 32)) SeekEntryResult!10429)

(assert (=> b!1396800 (= e!790801 (= (seekEntryOrOpen!0 (select (arr!46090 a!2901) j!112) a!2901 mask!2840) (Found!10429 j!112)))))

(declare-fun b!1396801 () Bool)

(declare-fun e!790804 () Bool)

(assert (=> b!1396801 (= e!790804 e!790805)))

(declare-fun res!935815 () Bool)

(assert (=> b!1396801 (=> res!935815 e!790805)))

(declare-fun lt!613710 () SeekEntryResult!10429)

(declare-fun lt!613706 () SeekEntryResult!10429)

(assert (=> b!1396801 (= res!935815 (or (= lt!613710 lt!613706) (not (is-Intermediate!10429 lt!613706)) (bvslt (x!125758 lt!613710) #b00000000000000000000000000000000) (bvsgt (x!125758 lt!613710) #b01111111111111111111111111111110) (bvslt lt!613705 #b00000000000000000000000000000000) (bvsge lt!613705 (size!46641 a!2901)) (bvslt (index!44088 lt!613710) #b00000000000000000000000000000000) (bvsge (index!44088 lt!613710) (size!46641 a!2901)) (not (= lt!613710 (Intermediate!10429 false (index!44088 lt!613710) (x!125758 lt!613710)))) (not (= lt!613706 (Intermediate!10429 (undefined!11241 lt!613706) (index!44088 lt!613706) (x!125758 lt!613706))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396801 (= lt!613706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613709 mask!2840) lt!613709 lt!613707 mask!2840))))

(assert (=> b!1396801 (= lt!613709 (select (store (arr!46090 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396801 (= lt!613707 (array!95482 (store (arr!46090 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46641 a!2901)))))

(declare-fun b!1396797 () Bool)

(assert (=> b!1396797 (= e!790803 (not e!790804))))

(declare-fun res!935816 () Bool)

(assert (=> b!1396797 (=> res!935816 e!790804)))

(assert (=> b!1396797 (= res!935816 (or (not (is-Intermediate!10429 lt!613710)) (undefined!11241 lt!613710)))))

(assert (=> b!1396797 e!790801))

(declare-fun res!935819 () Bool)

(assert (=> b!1396797 (=> (not res!935819) (not e!790801))))

(assert (=> b!1396797 (= res!935819 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46812 0))(
  ( (Unit!46813) )
))
(declare-fun lt!613708 () Unit!46812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46812)

(assert (=> b!1396797 (= lt!613708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396797 (= lt!613710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613705 (select (arr!46090 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396797 (= lt!613705 (toIndex!0 (select (arr!46090 a!2901) j!112) mask!2840))))

(declare-fun res!935820 () Bool)

(assert (=> start!120034 (=> (not res!935820) (not e!790803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120034 (= res!935820 (validMask!0 mask!2840))))

(assert (=> start!120034 e!790803))

(assert (=> start!120034 true))

(declare-fun array_inv!35035 (array!95481) Bool)

(assert (=> start!120034 (array_inv!35035 a!2901)))

(assert (= (and start!120034 res!935820) b!1396795))

(assert (= (and b!1396795 res!935817) b!1396799))

(assert (= (and b!1396799 res!935822) b!1396794))

(assert (= (and b!1396794 res!935821) b!1396793))

(assert (= (and b!1396793 res!935818) b!1396798))

(assert (= (and b!1396798 res!935823) b!1396797))

(assert (= (and b!1396797 res!935819) b!1396800))

(assert (= (and b!1396797 (not res!935816)) b!1396801))

(assert (= (and b!1396801 (not res!935815)) b!1396796))

(declare-fun m!1283435 () Bool)

(assert (=> b!1396793 m!1283435))

(declare-fun m!1283437 () Bool)

(assert (=> b!1396801 m!1283437))

(assert (=> b!1396801 m!1283437))

(declare-fun m!1283439 () Bool)

(assert (=> b!1396801 m!1283439))

(declare-fun m!1283441 () Bool)

(assert (=> b!1396801 m!1283441))

(declare-fun m!1283443 () Bool)

(assert (=> b!1396801 m!1283443))

(declare-fun m!1283445 () Bool)

(assert (=> b!1396796 m!1283445))

(declare-fun m!1283447 () Bool)

(assert (=> b!1396794 m!1283447))

(assert (=> b!1396794 m!1283447))

(declare-fun m!1283449 () Bool)

(assert (=> b!1396794 m!1283449))

(assert (=> b!1396800 m!1283447))

(assert (=> b!1396800 m!1283447))

(declare-fun m!1283451 () Bool)

(assert (=> b!1396800 m!1283451))

(declare-fun m!1283453 () Bool)

(assert (=> b!1396799 m!1283453))

(assert (=> b!1396799 m!1283453))

(declare-fun m!1283455 () Bool)

(assert (=> b!1396799 m!1283455))

(assert (=> b!1396797 m!1283447))

(declare-fun m!1283457 () Bool)

(assert (=> b!1396797 m!1283457))

(assert (=> b!1396797 m!1283447))

(declare-fun m!1283459 () Bool)

(assert (=> b!1396797 m!1283459))

(assert (=> b!1396797 m!1283447))

(declare-fun m!1283461 () Bool)

(assert (=> b!1396797 m!1283461))

(declare-fun m!1283463 () Bool)

(assert (=> b!1396797 m!1283463))

(declare-fun m!1283465 () Bool)

(assert (=> start!120034 m!1283465))

(declare-fun m!1283467 () Bool)

(assert (=> start!120034 m!1283467))

(declare-fun m!1283469 () Bool)

(assert (=> b!1396798 m!1283469))

(push 1)

