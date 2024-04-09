; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121680 () Bool)

(assert start!121680)

(declare-fun b!1413130 () Bool)

(declare-fun e!799752 () Bool)

(declare-fun e!799749 () Bool)

(assert (=> b!1413130 (= e!799752 (not e!799749))))

(declare-fun res!950231 () Bool)

(assert (=> b!1413130 (=> res!950231 e!799749)))

(declare-datatypes ((SeekEntryResult!10934 0))(
  ( (MissingZero!10934 (index!46115 (_ BitVec 32))) (Found!10934 (index!46116 (_ BitVec 32))) (Intermediate!10934 (undefined!11746 Bool) (index!46117 (_ BitVec 32)) (x!127704 (_ BitVec 32))) (Undefined!10934) (MissingVacant!10934 (index!46118 (_ BitVec 32))) )
))
(declare-fun lt!622821 () SeekEntryResult!10934)

(get-info :version)

(assert (=> b!1413130 (= res!950231 (or (not ((_ is Intermediate!10934) lt!622821)) (undefined!11746 lt!622821)))))

(declare-fun e!799754 () Bool)

(assert (=> b!1413130 e!799754))

(declare-fun res!950235 () Bool)

(assert (=> b!1413130 (=> (not res!950235) (not e!799754))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96536 0))(
  ( (array!96537 (arr!46601 (Array (_ BitVec 32) (_ BitVec 64))) (size!47152 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96536)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96536 (_ BitVec 32)) Bool)

(assert (=> b!1413130 (= res!950235 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47792 0))(
  ( (Unit!47793) )
))
(declare-fun lt!622822 () Unit!47792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47792)

(assert (=> b!1413130 (= lt!622822 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622819 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96536 (_ BitVec 32)) SeekEntryResult!10934)

(assert (=> b!1413130 (= lt!622821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622819 (select (arr!46601 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413130 (= lt!622819 (toIndex!0 (select (arr!46601 a!2901) j!112) mask!2840))))

(declare-fun b!1413131 () Bool)

(declare-fun e!799750 () Bool)

(assert (=> b!1413131 (= e!799750 true)))

(declare-fun e!799753 () Bool)

(assert (=> b!1413131 e!799753))

(declare-fun res!950238 () Bool)

(assert (=> b!1413131 (=> (not res!950238) (not e!799753))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622817 () SeekEntryResult!10934)

(assert (=> b!1413131 (= res!950238 (and (not (undefined!11746 lt!622817)) (= (index!46117 lt!622817) i!1037) (bvslt (x!127704 lt!622817) (x!127704 lt!622821)) (= (select (store (arr!46601 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46117 lt!622817)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622816 () Unit!47792)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47792)

(assert (=> b!1413131 (= lt!622816 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622819 (x!127704 lt!622821) (index!46117 lt!622821) (x!127704 lt!622817) (index!46117 lt!622817) (undefined!11746 lt!622817) mask!2840))))

(declare-fun b!1413132 () Bool)

(declare-fun res!950232 () Bool)

(assert (=> b!1413132 (=> (not res!950232) (not e!799752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413132 (= res!950232 (validKeyInArray!0 (select (arr!46601 a!2901) j!112)))))

(declare-fun b!1413133 () Bool)

(declare-fun res!950229 () Bool)

(assert (=> b!1413133 (=> (not res!950229) (not e!799752))))

(assert (=> b!1413133 (= res!950229 (validKeyInArray!0 (select (arr!46601 a!2901) i!1037)))))

(declare-fun lt!622820 () (_ BitVec 64))

(declare-fun b!1413134 () Bool)

(declare-fun lt!622818 () array!96536)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96536 (_ BitVec 32)) SeekEntryResult!10934)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96536 (_ BitVec 32)) SeekEntryResult!10934)

(assert (=> b!1413134 (= e!799753 (= (seekEntryOrOpen!0 lt!622820 lt!622818 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127704 lt!622817) (index!46117 lt!622817) (index!46117 lt!622817) (select (arr!46601 a!2901) j!112) lt!622818 mask!2840)))))

(declare-fun res!950237 () Bool)

(assert (=> start!121680 (=> (not res!950237) (not e!799752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121680 (= res!950237 (validMask!0 mask!2840))))

(assert (=> start!121680 e!799752))

(assert (=> start!121680 true))

(declare-fun array_inv!35546 (array!96536) Bool)

(assert (=> start!121680 (array_inv!35546 a!2901)))

(declare-fun b!1413135 () Bool)

(declare-fun res!950233 () Bool)

(assert (=> b!1413135 (=> (not res!950233) (not e!799752))))

(assert (=> b!1413135 (= res!950233 (and (= (size!47152 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47152 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47152 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413136 () Bool)

(assert (=> b!1413136 (= e!799754 (= (seekEntryOrOpen!0 (select (arr!46601 a!2901) j!112) a!2901 mask!2840) (Found!10934 j!112)))))

(declare-fun b!1413137 () Bool)

(assert (=> b!1413137 (= e!799749 e!799750)))

(declare-fun res!950234 () Bool)

(assert (=> b!1413137 (=> res!950234 e!799750)))

(assert (=> b!1413137 (= res!950234 (or (= lt!622821 lt!622817) (not ((_ is Intermediate!10934) lt!622817))))))

(assert (=> b!1413137 (= lt!622817 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622820 mask!2840) lt!622820 lt!622818 mask!2840))))

(assert (=> b!1413137 (= lt!622820 (select (store (arr!46601 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413137 (= lt!622818 (array!96537 (store (arr!46601 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47152 a!2901)))))

(declare-fun b!1413138 () Bool)

(declare-fun res!950236 () Bool)

(assert (=> b!1413138 (=> (not res!950236) (not e!799752))))

(assert (=> b!1413138 (= res!950236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413139 () Bool)

(declare-fun res!950230 () Bool)

(assert (=> b!1413139 (=> (not res!950230) (not e!799752))))

(declare-datatypes ((List!33300 0))(
  ( (Nil!33297) (Cons!33296 (h!34571 (_ BitVec 64)) (t!48001 List!33300)) )
))
(declare-fun arrayNoDuplicates!0 (array!96536 (_ BitVec 32) List!33300) Bool)

(assert (=> b!1413139 (= res!950230 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33297))))

(assert (= (and start!121680 res!950237) b!1413135))

(assert (= (and b!1413135 res!950233) b!1413133))

(assert (= (and b!1413133 res!950229) b!1413132))

(assert (= (and b!1413132 res!950232) b!1413138))

(assert (= (and b!1413138 res!950236) b!1413139))

(assert (= (and b!1413139 res!950230) b!1413130))

(assert (= (and b!1413130 res!950235) b!1413136))

(assert (= (and b!1413130 (not res!950231)) b!1413137))

(assert (= (and b!1413137 (not res!950234)) b!1413131))

(assert (= (and b!1413131 res!950238) b!1413134))

(declare-fun m!1303523 () Bool)

(assert (=> b!1413134 m!1303523))

(declare-fun m!1303525 () Bool)

(assert (=> b!1413134 m!1303525))

(assert (=> b!1413134 m!1303525))

(declare-fun m!1303527 () Bool)

(assert (=> b!1413134 m!1303527))

(assert (=> b!1413132 m!1303525))

(assert (=> b!1413132 m!1303525))

(declare-fun m!1303529 () Bool)

(assert (=> b!1413132 m!1303529))

(declare-fun m!1303531 () Bool)

(assert (=> start!121680 m!1303531))

(declare-fun m!1303533 () Bool)

(assert (=> start!121680 m!1303533))

(declare-fun m!1303535 () Bool)

(assert (=> b!1413131 m!1303535))

(declare-fun m!1303537 () Bool)

(assert (=> b!1413131 m!1303537))

(declare-fun m!1303539 () Bool)

(assert (=> b!1413131 m!1303539))

(declare-fun m!1303541 () Bool)

(assert (=> b!1413139 m!1303541))

(assert (=> b!1413136 m!1303525))

(assert (=> b!1413136 m!1303525))

(declare-fun m!1303543 () Bool)

(assert (=> b!1413136 m!1303543))

(declare-fun m!1303545 () Bool)

(assert (=> b!1413133 m!1303545))

(assert (=> b!1413133 m!1303545))

(declare-fun m!1303547 () Bool)

(assert (=> b!1413133 m!1303547))

(declare-fun m!1303549 () Bool)

(assert (=> b!1413137 m!1303549))

(assert (=> b!1413137 m!1303549))

(declare-fun m!1303551 () Bool)

(assert (=> b!1413137 m!1303551))

(assert (=> b!1413137 m!1303535))

(declare-fun m!1303553 () Bool)

(assert (=> b!1413137 m!1303553))

(declare-fun m!1303555 () Bool)

(assert (=> b!1413138 m!1303555))

(assert (=> b!1413130 m!1303525))

(declare-fun m!1303557 () Bool)

(assert (=> b!1413130 m!1303557))

(assert (=> b!1413130 m!1303525))

(declare-fun m!1303559 () Bool)

(assert (=> b!1413130 m!1303559))

(assert (=> b!1413130 m!1303525))

(declare-fun m!1303561 () Bool)

(assert (=> b!1413130 m!1303561))

(declare-fun m!1303563 () Bool)

(assert (=> b!1413130 m!1303563))

(check-sat (not b!1413133) (not b!1413131) (not b!1413130) (not b!1413134) (not b!1413139) (not b!1413132) (not b!1413137) (not b!1413136) (not start!121680) (not b!1413138))
(check-sat)
