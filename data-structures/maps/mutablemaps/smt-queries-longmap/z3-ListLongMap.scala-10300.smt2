; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121164 () Bool)

(assert start!121164)

(declare-fun b!1408244 () Bool)

(declare-fun res!946079 () Bool)

(declare-fun e!797025 () Bool)

(assert (=> b!1408244 (=> (not res!946079) (not e!797025))))

(declare-datatypes ((array!96236 0))(
  ( (array!96237 (arr!46457 (Array (_ BitVec 32) (_ BitVec 64))) (size!47008 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96236)

(declare-datatypes ((List!33156 0))(
  ( (Nil!33153) (Cons!33152 (h!34415 (_ BitVec 64)) (t!47857 List!33156)) )
))
(declare-fun arrayNoDuplicates!0 (array!96236 (_ BitVec 32) List!33156) Bool)

(assert (=> b!1408244 (= res!946079 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33153))))

(declare-fun b!1408245 () Bool)

(declare-fun e!797027 () Bool)

(assert (=> b!1408245 (= e!797025 (not e!797027))))

(declare-fun res!946077 () Bool)

(assert (=> b!1408245 (=> res!946077 e!797027)))

(declare-datatypes ((SeekEntryResult!10790 0))(
  ( (MissingZero!10790 (index!45536 (_ BitVec 32))) (Found!10790 (index!45537 (_ BitVec 32))) (Intermediate!10790 (undefined!11602 Bool) (index!45538 (_ BitVec 32)) (x!127146 (_ BitVec 32))) (Undefined!10790) (MissingVacant!10790 (index!45539 (_ BitVec 32))) )
))
(declare-fun lt!620230 () SeekEntryResult!10790)

(get-info :version)

(assert (=> b!1408245 (= res!946077 (or (not ((_ is Intermediate!10790) lt!620230)) (undefined!11602 lt!620230)))))

(declare-fun lt!620232 () SeekEntryResult!10790)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408245 (= lt!620232 (Found!10790 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96236 (_ BitVec 32)) SeekEntryResult!10790)

(assert (=> b!1408245 (= lt!620232 (seekEntryOrOpen!0 (select (arr!46457 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96236 (_ BitVec 32)) Bool)

(assert (=> b!1408245 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47504 0))(
  ( (Unit!47505) )
))
(declare-fun lt!620233 () Unit!47504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47504)

(assert (=> b!1408245 (= lt!620233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96236 (_ BitVec 32)) SeekEntryResult!10790)

(assert (=> b!1408245 (= lt!620230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620236 (select (arr!46457 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408245 (= lt!620236 (toIndex!0 (select (arr!46457 a!2901) j!112) mask!2840))))

(declare-fun b!1408246 () Bool)

(declare-fun res!946080 () Bool)

(assert (=> b!1408246 (=> (not res!946080) (not e!797025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408246 (= res!946080 (validKeyInArray!0 (select (arr!46457 a!2901) j!112)))))

(declare-fun b!1408247 () Bool)

(declare-fun res!946076 () Bool)

(declare-fun e!797026 () Bool)

(assert (=> b!1408247 (=> res!946076 e!797026)))

(assert (=> b!1408247 (= res!946076 (or (bvslt (x!127146 lt!620230) #b00000000000000000000000000000000) (bvsgt (x!127146 lt!620230) #b01111111111111111111111111111110) (bvslt lt!620236 #b00000000000000000000000000000000) (bvsge lt!620236 (size!47008 a!2901)) (bvslt (index!45538 lt!620230) #b00000000000000000000000000000000) (bvsge (index!45538 lt!620230) (size!47008 a!2901)) (not (= lt!620230 (Intermediate!10790 false (index!45538 lt!620230) (x!127146 lt!620230))))))))

(declare-fun b!1408248 () Bool)

(declare-fun res!946081 () Bool)

(assert (=> b!1408248 (=> (not res!946081) (not e!797025))))

(assert (=> b!1408248 (= res!946081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!946082 () Bool)

(assert (=> start!121164 (=> (not res!946082) (not e!797025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121164 (= res!946082 (validMask!0 mask!2840))))

(assert (=> start!121164 e!797025))

(assert (=> start!121164 true))

(declare-fun array_inv!35402 (array!96236) Bool)

(assert (=> start!121164 (array_inv!35402 a!2901)))

(declare-fun b!1408249 () Bool)

(assert (=> b!1408249 (= e!797027 e!797026)))

(declare-fun res!946083 () Bool)

(assert (=> b!1408249 (=> res!946083 e!797026)))

(declare-fun lt!620235 () (_ BitVec 64))

(declare-fun lt!620234 () array!96236)

(assert (=> b!1408249 (= res!946083 (not (= lt!620230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620235 mask!2840) lt!620235 lt!620234 mask!2840))))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408249 (= lt!620235 (select (store (arr!46457 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408249 (= lt!620234 (array!96237 (store (arr!46457 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47008 a!2901)))))

(declare-fun b!1408250 () Bool)

(declare-fun res!946075 () Bool)

(assert (=> b!1408250 (=> (not res!946075) (not e!797025))))

(assert (=> b!1408250 (= res!946075 (validKeyInArray!0 (select (arr!46457 a!2901) i!1037)))))

(declare-fun b!1408251 () Bool)

(declare-fun res!946078 () Bool)

(assert (=> b!1408251 (=> (not res!946078) (not e!797025))))

(assert (=> b!1408251 (= res!946078 (and (= (size!47008 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47008 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47008 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408252 () Bool)

(assert (=> b!1408252 (= e!797026 true)))

(assert (=> b!1408252 (= lt!620232 (seekEntryOrOpen!0 lt!620235 lt!620234 mask!2840))))

(declare-fun lt!620231 () Unit!47504)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47504)

(assert (=> b!1408252 (= lt!620231 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620236 (x!127146 lt!620230) (index!45538 lt!620230) mask!2840))))

(assert (= (and start!121164 res!946082) b!1408251))

(assert (= (and b!1408251 res!946078) b!1408250))

(assert (= (and b!1408250 res!946075) b!1408246))

(assert (= (and b!1408246 res!946080) b!1408248))

(assert (= (and b!1408248 res!946081) b!1408244))

(assert (= (and b!1408244 res!946079) b!1408245))

(assert (= (and b!1408245 (not res!946077)) b!1408249))

(assert (= (and b!1408249 (not res!946083)) b!1408247))

(assert (= (and b!1408247 (not res!946076)) b!1408252))

(declare-fun m!1297555 () Bool)

(assert (=> b!1408245 m!1297555))

(declare-fun m!1297557 () Bool)

(assert (=> b!1408245 m!1297557))

(assert (=> b!1408245 m!1297555))

(assert (=> b!1408245 m!1297555))

(declare-fun m!1297559 () Bool)

(assert (=> b!1408245 m!1297559))

(declare-fun m!1297561 () Bool)

(assert (=> b!1408245 m!1297561))

(assert (=> b!1408245 m!1297555))

(declare-fun m!1297563 () Bool)

(assert (=> b!1408245 m!1297563))

(declare-fun m!1297565 () Bool)

(assert (=> b!1408245 m!1297565))

(declare-fun m!1297567 () Bool)

(assert (=> b!1408244 m!1297567))

(assert (=> b!1408246 m!1297555))

(assert (=> b!1408246 m!1297555))

(declare-fun m!1297569 () Bool)

(assert (=> b!1408246 m!1297569))

(declare-fun m!1297571 () Bool)

(assert (=> b!1408250 m!1297571))

(assert (=> b!1408250 m!1297571))

(declare-fun m!1297573 () Bool)

(assert (=> b!1408250 m!1297573))

(declare-fun m!1297575 () Bool)

(assert (=> b!1408248 m!1297575))

(declare-fun m!1297577 () Bool)

(assert (=> b!1408252 m!1297577))

(declare-fun m!1297579 () Bool)

(assert (=> b!1408252 m!1297579))

(declare-fun m!1297581 () Bool)

(assert (=> start!121164 m!1297581))

(declare-fun m!1297583 () Bool)

(assert (=> start!121164 m!1297583))

(declare-fun m!1297585 () Bool)

(assert (=> b!1408249 m!1297585))

(assert (=> b!1408249 m!1297585))

(declare-fun m!1297587 () Bool)

(assert (=> b!1408249 m!1297587))

(declare-fun m!1297589 () Bool)

(assert (=> b!1408249 m!1297589))

(declare-fun m!1297591 () Bool)

(assert (=> b!1408249 m!1297591))

(check-sat (not b!1408250) (not b!1408246) (not b!1408252) (not b!1408245) (not b!1408248) (not b!1408244) (not b!1408249) (not start!121164))
(check-sat)
