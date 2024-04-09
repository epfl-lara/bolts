; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120252 () Bool)

(assert start!120252)

(declare-fun b!1399195 () Bool)

(declare-fun e!792159 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1399195 (= e!792159 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun e!792163 () Bool)

(assert (=> b!1399195 e!792163))

(declare-fun res!938057 () Bool)

(assert (=> b!1399195 (=> (not res!938057) (not e!792163))))

(declare-datatypes ((array!95642 0))(
  ( (array!95643 (arr!46169 (Array (_ BitVec 32) (_ BitVec 64))) (size!46720 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95642)

(declare-datatypes ((SeekEntryResult!10508 0))(
  ( (MissingZero!10508 (index!44405 (_ BitVec 32))) (Found!10508 (index!44406 (_ BitVec 32))) (Intermediate!10508 (undefined!11320 Bool) (index!44407 (_ BitVec 32)) (x!126054 (_ BitVec 32))) (Undefined!10508) (MissingVacant!10508 (index!44408 (_ BitVec 32))) )
))
(declare-fun lt!615387 () SeekEntryResult!10508)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!615386 () SeekEntryResult!10508)

(assert (=> b!1399195 (= res!938057 (and (not (undefined!11320 lt!615387)) (= (index!44407 lt!615387) i!1037) (bvslt (x!126054 lt!615387) (x!126054 lt!615386)) (= (select (store (arr!46169 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44407 lt!615387)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46970 0))(
  ( (Unit!46971) )
))
(declare-fun lt!615391 () Unit!46970)

(declare-fun lt!615388 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46970)

(assert (=> b!1399195 (= lt!615391 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615388 (x!126054 lt!615386) (index!44407 lt!615386) (x!126054 lt!615387) (index!44407 lt!615387) (undefined!11320 lt!615387) mask!2840))))

(declare-fun b!1399196 () Bool)

(declare-fun res!938055 () Bool)

(declare-fun e!792161 () Bool)

(assert (=> b!1399196 (=> (not res!938055) (not e!792161))))

(declare-datatypes ((List!32868 0))(
  ( (Nil!32865) (Cons!32864 (h!34109 (_ BitVec 64)) (t!47569 List!32868)) )
))
(declare-fun arrayNoDuplicates!0 (array!95642 (_ BitVec 32) List!32868) Bool)

(assert (=> b!1399196 (= res!938055 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32865))))

(declare-fun b!1399197 () Bool)

(declare-fun res!938054 () Bool)

(assert (=> b!1399197 (=> (not res!938054) (not e!792161))))

(assert (=> b!1399197 (= res!938054 (and (= (size!46720 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46720 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46720 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399198 () Bool)

(declare-fun e!792164 () Bool)

(assert (=> b!1399198 (= e!792164 e!792159)))

(declare-fun res!938059 () Bool)

(assert (=> b!1399198 (=> res!938059 e!792159)))

(get-info :version)

(assert (=> b!1399198 (= res!938059 (or (= lt!615386 lt!615387) (not ((_ is Intermediate!10508) lt!615387))))))

(declare-fun lt!615385 () array!95642)

(declare-fun lt!615390 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95642 (_ BitVec 32)) SeekEntryResult!10508)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399198 (= lt!615387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615390 mask!2840) lt!615390 lt!615385 mask!2840))))

(assert (=> b!1399198 (= lt!615390 (select (store (arr!46169 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399198 (= lt!615385 (array!95643 (store (arr!46169 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46720 a!2901)))))

(declare-fun e!792160 () Bool)

(declare-fun b!1399199 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95642 (_ BitVec 32)) SeekEntryResult!10508)

(assert (=> b!1399199 (= e!792160 (= (seekEntryOrOpen!0 (select (arr!46169 a!2901) j!112) a!2901 mask!2840) (Found!10508 j!112)))))

(declare-fun b!1399200 () Bool)

(declare-fun res!938056 () Bool)

(assert (=> b!1399200 (=> (not res!938056) (not e!792161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95642 (_ BitVec 32)) Bool)

(assert (=> b!1399200 (= res!938056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399201 () Bool)

(assert (=> b!1399201 (= e!792161 (not e!792164))))

(declare-fun res!938058 () Bool)

(assert (=> b!1399201 (=> res!938058 e!792164)))

(assert (=> b!1399201 (= res!938058 (or (not ((_ is Intermediate!10508) lt!615386)) (undefined!11320 lt!615386)))))

(assert (=> b!1399201 e!792160))

(declare-fun res!938052 () Bool)

(assert (=> b!1399201 (=> (not res!938052) (not e!792160))))

(assert (=> b!1399201 (= res!938052 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615389 () Unit!46970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95642 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46970)

(assert (=> b!1399201 (= lt!615389 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399201 (= lt!615386 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615388 (select (arr!46169 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399201 (= lt!615388 (toIndex!0 (select (arr!46169 a!2901) j!112) mask!2840))))

(declare-fun b!1399202 () Bool)

(declare-fun res!938060 () Bool)

(assert (=> b!1399202 (=> (not res!938060) (not e!792161))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399202 (= res!938060 (validKeyInArray!0 (select (arr!46169 a!2901) j!112)))))

(declare-fun b!1399203 () Bool)

(declare-fun res!938053 () Bool)

(assert (=> b!1399203 (=> (not res!938053) (not e!792161))))

(assert (=> b!1399203 (= res!938053 (validKeyInArray!0 (select (arr!46169 a!2901) i!1037)))))

(declare-fun b!1399204 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95642 (_ BitVec 32)) SeekEntryResult!10508)

(assert (=> b!1399204 (= e!792163 (= (seekEntryOrOpen!0 lt!615390 lt!615385 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126054 lt!615387) (index!44407 lt!615387) (index!44407 lt!615387) (select (arr!46169 a!2901) j!112) lt!615385 mask!2840)))))

(declare-fun res!938061 () Bool)

(assert (=> start!120252 (=> (not res!938061) (not e!792161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120252 (= res!938061 (validMask!0 mask!2840))))

(assert (=> start!120252 e!792161))

(assert (=> start!120252 true))

(declare-fun array_inv!35114 (array!95642) Bool)

(assert (=> start!120252 (array_inv!35114 a!2901)))

(assert (= (and start!120252 res!938061) b!1399197))

(assert (= (and b!1399197 res!938054) b!1399203))

(assert (= (and b!1399203 res!938053) b!1399202))

(assert (= (and b!1399202 res!938060) b!1399200))

(assert (= (and b!1399200 res!938056) b!1399196))

(assert (= (and b!1399196 res!938055) b!1399201))

(assert (= (and b!1399201 res!938052) b!1399199))

(assert (= (and b!1399201 (not res!938058)) b!1399198))

(assert (= (and b!1399198 (not res!938059)) b!1399195))

(assert (= (and b!1399195 res!938057) b!1399204))

(declare-fun m!1286525 () Bool)

(assert (=> b!1399200 m!1286525))

(declare-fun m!1286527 () Bool)

(assert (=> b!1399203 m!1286527))

(assert (=> b!1399203 m!1286527))

(declare-fun m!1286529 () Bool)

(assert (=> b!1399203 m!1286529))

(declare-fun m!1286531 () Bool)

(assert (=> b!1399199 m!1286531))

(assert (=> b!1399199 m!1286531))

(declare-fun m!1286533 () Bool)

(assert (=> b!1399199 m!1286533))

(declare-fun m!1286535 () Bool)

(assert (=> start!120252 m!1286535))

(declare-fun m!1286537 () Bool)

(assert (=> start!120252 m!1286537))

(declare-fun m!1286539 () Bool)

(assert (=> b!1399204 m!1286539))

(assert (=> b!1399204 m!1286531))

(assert (=> b!1399204 m!1286531))

(declare-fun m!1286541 () Bool)

(assert (=> b!1399204 m!1286541))

(declare-fun m!1286543 () Bool)

(assert (=> b!1399198 m!1286543))

(assert (=> b!1399198 m!1286543))

(declare-fun m!1286545 () Bool)

(assert (=> b!1399198 m!1286545))

(declare-fun m!1286547 () Bool)

(assert (=> b!1399198 m!1286547))

(declare-fun m!1286549 () Bool)

(assert (=> b!1399198 m!1286549))

(assert (=> b!1399195 m!1286547))

(declare-fun m!1286551 () Bool)

(assert (=> b!1399195 m!1286551))

(declare-fun m!1286553 () Bool)

(assert (=> b!1399195 m!1286553))

(assert (=> b!1399202 m!1286531))

(assert (=> b!1399202 m!1286531))

(declare-fun m!1286555 () Bool)

(assert (=> b!1399202 m!1286555))

(declare-fun m!1286557 () Bool)

(assert (=> b!1399196 m!1286557))

(assert (=> b!1399201 m!1286531))

(declare-fun m!1286559 () Bool)

(assert (=> b!1399201 m!1286559))

(assert (=> b!1399201 m!1286531))

(assert (=> b!1399201 m!1286531))

(declare-fun m!1286561 () Bool)

(assert (=> b!1399201 m!1286561))

(declare-fun m!1286563 () Bool)

(assert (=> b!1399201 m!1286563))

(declare-fun m!1286565 () Bool)

(assert (=> b!1399201 m!1286565))

(check-sat (not start!120252) (not b!1399199) (not b!1399202) (not b!1399198) (not b!1399200) (not b!1399204) (not b!1399195) (not b!1399203) (not b!1399201) (not b!1399196))
(check-sat)
