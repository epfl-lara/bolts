; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120386 () Bool)

(assert start!120386)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95713 0))(
  ( (array!95714 (arr!46203 (Array (_ BitVec 32) (_ BitVec 64))) (size!46754 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95713)

(declare-fun lt!616349 () array!95713)

(declare-fun b!1400631 () Bool)

(declare-fun lt!616347 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10542 0))(
  ( (MissingZero!10542 (index!44544 (_ BitVec 32))) (Found!10542 (index!44545 (_ BitVec 32))) (Intermediate!10542 (undefined!11354 Bool) (index!44546 (_ BitVec 32)) (x!126188 (_ BitVec 32))) (Undefined!10542) (MissingVacant!10542 (index!44547 (_ BitVec 32))) )
))
(declare-fun lt!616351 () SeekEntryResult!10542)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!793061 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95713 (_ BitVec 32)) SeekEntryResult!10542)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95713 (_ BitVec 32)) SeekEntryResult!10542)

(assert (=> b!1400631 (= e!793061 (= (seekEntryOrOpen!0 lt!616347 lt!616349 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126188 lt!616351) (index!44546 lt!616351) (index!44546 lt!616351) (select (arr!46203 a!2901) j!112) lt!616349 mask!2840)))))

(declare-fun b!1400632 () Bool)

(declare-fun res!939255 () Bool)

(declare-fun e!793060 () Bool)

(assert (=> b!1400632 (=> (not res!939255) (not e!793060))))

(declare-datatypes ((List!32902 0))(
  ( (Nil!32899) (Cons!32898 (h!34146 (_ BitVec 64)) (t!47603 List!32902)) )
))
(declare-fun arrayNoDuplicates!0 (array!95713 (_ BitVec 32) List!32902) Bool)

(assert (=> b!1400632 (= res!939255 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32899))))

(declare-fun b!1400633 () Bool)

(declare-fun res!939261 () Bool)

(assert (=> b!1400633 (=> (not res!939261) (not e!793060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400633 (= res!939261 (validKeyInArray!0 (select (arr!46203 a!2901) j!112)))))

(declare-fun b!1400634 () Bool)

(declare-fun e!793058 () Bool)

(assert (=> b!1400634 (= e!793058 true)))

(declare-fun lt!616344 () SeekEntryResult!10542)

(declare-fun lt!616348 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95713 (_ BitVec 32)) SeekEntryResult!10542)

(assert (=> b!1400634 (= lt!616344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616348 lt!616347 lt!616349 mask!2840))))

(declare-fun b!1400635 () Bool)

(declare-fun res!939253 () Bool)

(assert (=> b!1400635 (=> (not res!939253) (not e!793060))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400635 (= res!939253 (and (= (size!46754 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46754 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46754 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400636 () Bool)

(declare-fun e!793055 () Bool)

(assert (=> b!1400636 (= e!793055 e!793058)))

(declare-fun res!939252 () Bool)

(assert (=> b!1400636 (=> res!939252 e!793058)))

(declare-fun lt!616346 () SeekEntryResult!10542)

(assert (=> b!1400636 (= res!939252 (or (bvslt (x!126188 lt!616346) #b00000000000000000000000000000000) (bvsgt (x!126188 lt!616346) #b01111111111111111111111111111110) (bvslt (x!126188 lt!616351) #b00000000000000000000000000000000) (bvsgt (x!126188 lt!616351) #b01111111111111111111111111111110) (bvslt lt!616348 #b00000000000000000000000000000000) (bvsge lt!616348 (size!46754 a!2901)) (bvslt (index!44546 lt!616346) #b00000000000000000000000000000000) (bvsge (index!44546 lt!616346) (size!46754 a!2901)) (bvslt (index!44546 lt!616351) #b00000000000000000000000000000000) (bvsge (index!44546 lt!616351) (size!46754 a!2901)) (not (= lt!616346 (Intermediate!10542 false (index!44546 lt!616346) (x!126188 lt!616346)))) (not (= lt!616351 (Intermediate!10542 false (index!44546 lt!616351) (x!126188 lt!616351))))))))

(assert (=> b!1400636 e!793061))

(declare-fun res!939259 () Bool)

(assert (=> b!1400636 (=> (not res!939259) (not e!793061))))

(assert (=> b!1400636 (= res!939259 (and (not (undefined!11354 lt!616351)) (= (index!44546 lt!616351) i!1037) (bvslt (x!126188 lt!616351) (x!126188 lt!616346)) (= (select (store (arr!46203 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44546 lt!616351)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47038 0))(
  ( (Unit!47039) )
))
(declare-fun lt!616345 () Unit!47038)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47038)

(assert (=> b!1400636 (= lt!616345 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616348 (x!126188 lt!616346) (index!44546 lt!616346) (x!126188 lt!616351) (index!44546 lt!616351) (undefined!11354 lt!616351) mask!2840))))

(declare-fun res!939254 () Bool)

(assert (=> start!120386 (=> (not res!939254) (not e!793060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120386 (= res!939254 (validMask!0 mask!2840))))

(assert (=> start!120386 e!793060))

(assert (=> start!120386 true))

(declare-fun array_inv!35148 (array!95713) Bool)

(assert (=> start!120386 (array_inv!35148 a!2901)))

(declare-fun b!1400637 () Bool)

(declare-fun e!793056 () Bool)

(assert (=> b!1400637 (= e!793056 e!793055)))

(declare-fun res!939256 () Bool)

(assert (=> b!1400637 (=> res!939256 e!793055)))

(assert (=> b!1400637 (= res!939256 (or (= lt!616346 lt!616351) (not (is-Intermediate!10542 lt!616351))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400637 (= lt!616351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616347 mask!2840) lt!616347 lt!616349 mask!2840))))

(assert (=> b!1400637 (= lt!616347 (select (store (arr!46203 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400637 (= lt!616349 (array!95714 (store (arr!46203 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46754 a!2901)))))

(declare-fun b!1400638 () Bool)

(assert (=> b!1400638 (= e!793060 (not e!793056))))

(declare-fun res!939257 () Bool)

(assert (=> b!1400638 (=> res!939257 e!793056)))

(assert (=> b!1400638 (= res!939257 (or (not (is-Intermediate!10542 lt!616346)) (undefined!11354 lt!616346)))))

(declare-fun e!793057 () Bool)

(assert (=> b!1400638 e!793057))

(declare-fun res!939260 () Bool)

(assert (=> b!1400638 (=> (not res!939260) (not e!793057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95713 (_ BitVec 32)) Bool)

(assert (=> b!1400638 (= res!939260 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616350 () Unit!47038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47038)

(assert (=> b!1400638 (= lt!616350 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400638 (= lt!616346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616348 (select (arr!46203 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400638 (= lt!616348 (toIndex!0 (select (arr!46203 a!2901) j!112) mask!2840))))

(declare-fun b!1400639 () Bool)

(declare-fun res!939251 () Bool)

(assert (=> b!1400639 (=> (not res!939251) (not e!793060))))

(assert (=> b!1400639 (= res!939251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400640 () Bool)

(assert (=> b!1400640 (= e!793057 (= (seekEntryOrOpen!0 (select (arr!46203 a!2901) j!112) a!2901 mask!2840) (Found!10542 j!112)))))

(declare-fun b!1400641 () Bool)

(declare-fun res!939258 () Bool)

(assert (=> b!1400641 (=> (not res!939258) (not e!793060))))

(assert (=> b!1400641 (= res!939258 (validKeyInArray!0 (select (arr!46203 a!2901) i!1037)))))

(assert (= (and start!120386 res!939254) b!1400635))

(assert (= (and b!1400635 res!939253) b!1400641))

(assert (= (and b!1400641 res!939258) b!1400633))

(assert (= (and b!1400633 res!939261) b!1400639))

(assert (= (and b!1400639 res!939251) b!1400632))

(assert (= (and b!1400632 res!939255) b!1400638))

(assert (= (and b!1400638 res!939260) b!1400640))

(assert (= (and b!1400638 (not res!939257)) b!1400637))

(assert (= (and b!1400637 (not res!939256)) b!1400636))

(assert (= (and b!1400636 res!939259) b!1400631))

(assert (= (and b!1400636 (not res!939252)) b!1400634))

(declare-fun m!1288233 () Bool)

(assert (=> b!1400634 m!1288233))

(declare-fun m!1288235 () Bool)

(assert (=> b!1400640 m!1288235))

(assert (=> b!1400640 m!1288235))

(declare-fun m!1288237 () Bool)

(assert (=> b!1400640 m!1288237))

(declare-fun m!1288239 () Bool)

(assert (=> b!1400641 m!1288239))

(assert (=> b!1400641 m!1288239))

(declare-fun m!1288241 () Bool)

(assert (=> b!1400641 m!1288241))

(declare-fun m!1288243 () Bool)

(assert (=> b!1400637 m!1288243))

(assert (=> b!1400637 m!1288243))

(declare-fun m!1288245 () Bool)

(assert (=> b!1400637 m!1288245))

(declare-fun m!1288247 () Bool)

(assert (=> b!1400637 m!1288247))

(declare-fun m!1288249 () Bool)

(assert (=> b!1400637 m!1288249))

(declare-fun m!1288251 () Bool)

(assert (=> b!1400639 m!1288251))

(declare-fun m!1288253 () Bool)

(assert (=> b!1400631 m!1288253))

(assert (=> b!1400631 m!1288235))

(assert (=> b!1400631 m!1288235))

(declare-fun m!1288255 () Bool)

(assert (=> b!1400631 m!1288255))

(assert (=> b!1400633 m!1288235))

(assert (=> b!1400633 m!1288235))

(declare-fun m!1288257 () Bool)

(assert (=> b!1400633 m!1288257))

(declare-fun m!1288259 () Bool)

(assert (=> b!1400632 m!1288259))

(declare-fun m!1288261 () Bool)

(assert (=> start!120386 m!1288261))

(declare-fun m!1288263 () Bool)

(assert (=> start!120386 m!1288263))

(assert (=> b!1400638 m!1288235))

(declare-fun m!1288265 () Bool)

(assert (=> b!1400638 m!1288265))

(assert (=> b!1400638 m!1288235))

(assert (=> b!1400638 m!1288235))

(declare-fun m!1288267 () Bool)

(assert (=> b!1400638 m!1288267))

(declare-fun m!1288269 () Bool)

(assert (=> b!1400638 m!1288269))

(declare-fun m!1288271 () Bool)

(assert (=> b!1400638 m!1288271))

(assert (=> b!1400636 m!1288247))

(declare-fun m!1288273 () Bool)

(assert (=> b!1400636 m!1288273))

(declare-fun m!1288275 () Bool)

(assert (=> b!1400636 m!1288275))

(push 1)

