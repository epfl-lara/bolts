; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130584 () Bool)

(assert start!130584)

(declare-fun b!1532124 () Bool)

(declare-fun e!853693 () Bool)

(declare-fun e!853689 () Bool)

(assert (=> b!1532124 (= e!853693 e!853689)))

(declare-fun res!1049404 () Bool)

(assert (=> b!1532124 (=> (not res!1049404) (not e!853689))))

(declare-datatypes ((SeekEntryResult!13247 0))(
  ( (MissingZero!13247 (index!55382 (_ BitVec 32))) (Found!13247 (index!55383 (_ BitVec 32))) (Intermediate!13247 (undefined!14059 Bool) (index!55384 (_ BitVec 32)) (x!137084 (_ BitVec 32))) (Undefined!13247) (MissingVacant!13247 (index!55385 (_ BitVec 32))) )
))
(declare-fun lt!663536 () SeekEntryResult!13247)

(declare-fun lt!663532 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101690 0))(
  ( (array!101691 (arr!49061 (Array (_ BitVec 32) (_ BitVec 64))) (size!49612 (_ BitVec 32))) )
))
(declare-fun lt!663538 () array!101690)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101690 (_ BitVec 32)) SeekEntryResult!13247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532124 (= res!1049404 (= lt!663536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663532 mask!2512) lt!663532 lt!663538 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101690)

(assert (=> b!1532124 (= lt!663532 (select (store (arr!49061 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1532124 (= lt!663538 (array!101691 (store (arr!49061 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49612 a!2804)))))

(declare-fun b!1532125 () Bool)

(declare-fun res!1049411 () Bool)

(declare-fun e!853692 () Bool)

(assert (=> b!1532125 (=> (not res!1049411) (not e!853692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101690 (_ BitVec 32)) Bool)

(assert (=> b!1532125 (= res!1049411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1532126 () Bool)

(declare-fun res!1049408 () Bool)

(assert (=> b!1532126 (=> (not res!1049408) (not e!853692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532126 (= res!1049408 (validKeyInArray!0 (select (arr!49061 a!2804) i!961)))))

(declare-fun b!1532127 () Bool)

(assert (=> b!1532127 (= e!853692 e!853693)))

(declare-fun res!1049405 () Bool)

(assert (=> b!1532127 (=> (not res!1049405) (not e!853693))))

(declare-fun lt!663533 () SeekEntryResult!13247)

(assert (=> b!1532127 (= res!1049405 (= lt!663536 lt!663533))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1532127 (= lt!663533 (Intermediate!13247 false resIndex!21 resX!21))))

(assert (=> b!1532127 (= lt!663536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49061 a!2804) j!70) mask!2512) (select (arr!49061 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1532128 () Bool)

(declare-fun res!1049410 () Bool)

(assert (=> b!1532128 (=> (not res!1049410) (not e!853692))))

(declare-datatypes ((List!35724 0))(
  ( (Nil!35721) (Cons!35720 (h!37166 (_ BitVec 64)) (t!50425 List!35724)) )
))
(declare-fun arrayNoDuplicates!0 (array!101690 (_ BitVec 32) List!35724) Bool)

(assert (=> b!1532128 (= res!1049410 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35721))))

(declare-fun b!1532129 () Bool)

(declare-fun res!1049415 () Bool)

(assert (=> b!1532129 (=> (not res!1049415) (not e!853692))))

(assert (=> b!1532129 (= res!1049415 (validKeyInArray!0 (select (arr!49061 a!2804) j!70)))))

(declare-fun res!1049402 () Bool)

(assert (=> start!130584 (=> (not res!1049402) (not e!853692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130584 (= res!1049402 (validMask!0 mask!2512))))

(assert (=> start!130584 e!853692))

(assert (=> start!130584 true))

(declare-fun array_inv!38006 (array!101690) Bool)

(assert (=> start!130584 (array_inv!38006 a!2804)))

(declare-fun b!1532130 () Bool)

(declare-fun res!1049407 () Bool)

(assert (=> b!1532130 (=> (not res!1049407) (not e!853692))))

(assert (=> b!1532130 (= res!1049407 (and (= (size!49612 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49612 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49612 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1532131 () Bool)

(declare-fun res!1049403 () Bool)

(assert (=> b!1532131 (=> (not res!1049403) (not e!853693))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1532131 (= res!1049403 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49061 a!2804) j!70) a!2804 mask!2512) lt!663533))))

(declare-fun e!853688 () Bool)

(declare-fun b!1532132 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101690 (_ BitVec 32)) SeekEntryResult!13247)

(assert (=> b!1532132 (= e!853688 (= (seekEntry!0 (select (arr!49061 a!2804) j!70) a!2804 mask!2512) (Found!13247 j!70)))))

(declare-fun b!1532133 () Bool)

(declare-fun e!853691 () Bool)

(assert (=> b!1532133 (= e!853691 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101690 (_ BitVec 32)) SeekEntryResult!13247)

(assert (=> b!1532133 (= (seekEntryOrOpen!0 (select (arr!49061 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663532 lt!663538 mask!2512))))

(declare-fun lt!663534 () (_ BitVec 32))

(declare-datatypes ((Unit!51234 0))(
  ( (Unit!51235) )
))
(declare-fun lt!663535 () Unit!51234)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101690 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51234)

(assert (=> b!1532133 (= lt!663535 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663534 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1532134 () Bool)

(declare-fun res!1049412 () Bool)

(assert (=> b!1532134 (=> (not res!1049412) (not e!853692))))

(assert (=> b!1532134 (= res!1049412 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49612 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49612 a!2804))))))

(declare-fun b!1532135 () Bool)

(declare-fun e!853694 () Bool)

(assert (=> b!1532135 (= e!853689 (not e!853694))))

(declare-fun res!1049409 () Bool)

(assert (=> b!1532135 (=> res!1049409 e!853694)))

(assert (=> b!1532135 (= res!1049409 (or (not (= (select (arr!49061 a!2804) j!70) lt!663532)) (= x!534 resX!21)))))

(assert (=> b!1532135 e!853688))

(declare-fun res!1049414 () Bool)

(assert (=> b!1532135 (=> (not res!1049414) (not e!853688))))

(assert (=> b!1532135 (= res!1049414 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!663537 () Unit!51234)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101690 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51234)

(assert (=> b!1532135 (= lt!663537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1532136 () Bool)

(assert (=> b!1532136 (= e!853694 e!853691)))

(declare-fun res!1049413 () Bool)

(assert (=> b!1532136 (=> res!1049413 e!853691)))

(assert (=> b!1532136 (= res!1049413 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663534 #b00000000000000000000000000000000) (bvsge lt!663534 (size!49612 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532136 (= lt!663534 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1532137 () Bool)

(declare-fun res!1049406 () Bool)

(assert (=> b!1532137 (=> res!1049406 e!853691)))

(assert (=> b!1532137 (= res!1049406 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663534 (select (arr!49061 a!2804) j!70) a!2804 mask!2512) lt!663533)))))

(assert (= (and start!130584 res!1049402) b!1532130))

(assert (= (and b!1532130 res!1049407) b!1532126))

(assert (= (and b!1532126 res!1049408) b!1532129))

(assert (= (and b!1532129 res!1049415) b!1532125))

(assert (= (and b!1532125 res!1049411) b!1532128))

(assert (= (and b!1532128 res!1049410) b!1532134))

(assert (= (and b!1532134 res!1049412) b!1532127))

(assert (= (and b!1532127 res!1049405) b!1532131))

(assert (= (and b!1532131 res!1049403) b!1532124))

(assert (= (and b!1532124 res!1049404) b!1532135))

(assert (= (and b!1532135 res!1049414) b!1532132))

(assert (= (and b!1532135 (not res!1049409)) b!1532136))

(assert (= (and b!1532136 (not res!1049413)) b!1532137))

(assert (= (and b!1532137 (not res!1049406)) b!1532133))

(declare-fun m!1414879 () Bool)

(assert (=> b!1532135 m!1414879))

(declare-fun m!1414881 () Bool)

(assert (=> b!1532135 m!1414881))

(declare-fun m!1414883 () Bool)

(assert (=> b!1532135 m!1414883))

(declare-fun m!1414885 () Bool)

(assert (=> b!1532128 m!1414885))

(assert (=> b!1532131 m!1414879))

(assert (=> b!1532131 m!1414879))

(declare-fun m!1414887 () Bool)

(assert (=> b!1532131 m!1414887))

(assert (=> b!1532129 m!1414879))

(assert (=> b!1532129 m!1414879))

(declare-fun m!1414889 () Bool)

(assert (=> b!1532129 m!1414889))

(assert (=> b!1532132 m!1414879))

(assert (=> b!1532132 m!1414879))

(declare-fun m!1414891 () Bool)

(assert (=> b!1532132 m!1414891))

(declare-fun m!1414893 () Bool)

(assert (=> b!1532126 m!1414893))

(assert (=> b!1532126 m!1414893))

(declare-fun m!1414895 () Bool)

(assert (=> b!1532126 m!1414895))

(assert (=> b!1532127 m!1414879))

(assert (=> b!1532127 m!1414879))

(declare-fun m!1414897 () Bool)

(assert (=> b!1532127 m!1414897))

(assert (=> b!1532127 m!1414897))

(assert (=> b!1532127 m!1414879))

(declare-fun m!1414899 () Bool)

(assert (=> b!1532127 m!1414899))

(declare-fun m!1414901 () Bool)

(assert (=> b!1532136 m!1414901))

(declare-fun m!1414903 () Bool)

(assert (=> b!1532125 m!1414903))

(assert (=> b!1532137 m!1414879))

(assert (=> b!1532137 m!1414879))

(declare-fun m!1414905 () Bool)

(assert (=> b!1532137 m!1414905))

(declare-fun m!1414907 () Bool)

(assert (=> start!130584 m!1414907))

(declare-fun m!1414909 () Bool)

(assert (=> start!130584 m!1414909))

(declare-fun m!1414911 () Bool)

(assert (=> b!1532124 m!1414911))

(assert (=> b!1532124 m!1414911))

(declare-fun m!1414913 () Bool)

(assert (=> b!1532124 m!1414913))

(declare-fun m!1414915 () Bool)

(assert (=> b!1532124 m!1414915))

(declare-fun m!1414917 () Bool)

(assert (=> b!1532124 m!1414917))

(assert (=> b!1532133 m!1414879))

(assert (=> b!1532133 m!1414879))

(declare-fun m!1414919 () Bool)

(assert (=> b!1532133 m!1414919))

(declare-fun m!1414921 () Bool)

(assert (=> b!1532133 m!1414921))

(declare-fun m!1414923 () Bool)

(assert (=> b!1532133 m!1414923))

(check-sat (not b!1532133) (not start!130584) (not b!1532127) (not b!1532135) (not b!1532129) (not b!1532128) (not b!1532137) (not b!1532131) (not b!1532136) (not b!1532124) (not b!1532125) (not b!1532126) (not b!1532132))
(check-sat)
