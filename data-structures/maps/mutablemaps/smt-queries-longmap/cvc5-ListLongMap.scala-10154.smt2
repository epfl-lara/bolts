; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119728 () Bool)

(assert start!119728)

(declare-fun b!1394111 () Bool)

(declare-fun res!933634 () Bool)

(declare-fun e!789380 () Bool)

(assert (=> b!1394111 (=> (not res!933634) (not e!789380))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95328 0))(
  ( (array!95329 (arr!46018 (Array (_ BitVec 32) (_ BitVec 64))) (size!46569 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95328)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394111 (= res!933634 (and (= (size!46569 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46569 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46569 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394112 () Bool)

(declare-fun res!933632 () Bool)

(assert (=> b!1394112 (=> (not res!933632) (not e!789380))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394112 (= res!933632 (validKeyInArray!0 (select (arr!46018 a!2901) i!1037)))))

(declare-fun b!1394113 () Bool)

(declare-fun res!933629 () Bool)

(assert (=> b!1394113 (=> (not res!933629) (not e!789380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95328 (_ BitVec 32)) Bool)

(assert (=> b!1394113 (= res!933629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394114 () Bool)

(declare-fun res!933636 () Bool)

(assert (=> b!1394114 (=> (not res!933636) (not e!789380))))

(declare-datatypes ((List!32717 0))(
  ( (Nil!32714) (Cons!32713 (h!33946 (_ BitVec 64)) (t!47418 List!32717)) )
))
(declare-fun arrayNoDuplicates!0 (array!95328 (_ BitVec 32) List!32717) Bool)

(assert (=> b!1394114 (= res!933636 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32714))))

(declare-fun res!933630 () Bool)

(assert (=> start!119728 (=> (not res!933630) (not e!789380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119728 (= res!933630 (validMask!0 mask!2840))))

(assert (=> start!119728 e!789380))

(assert (=> start!119728 true))

(declare-fun array_inv!34963 (array!95328) Bool)

(assert (=> start!119728 (array_inv!34963 a!2901)))

(declare-fun b!1394115 () Bool)

(declare-fun e!789377 () Bool)

(assert (=> b!1394115 (= e!789380 (not e!789377))))

(declare-fun res!933635 () Bool)

(assert (=> b!1394115 (=> res!933635 e!789377)))

(declare-datatypes ((SeekEntryResult!10357 0))(
  ( (MissingZero!10357 (index!43798 (_ BitVec 32))) (Found!10357 (index!43799 (_ BitVec 32))) (Intermediate!10357 (undefined!11169 Bool) (index!43800 (_ BitVec 32)) (x!125476 (_ BitVec 32))) (Undefined!10357) (MissingVacant!10357 (index!43801 (_ BitVec 32))) )
))
(declare-fun lt!612223 () SeekEntryResult!10357)

(assert (=> b!1394115 (= res!933635 (or (not (is-Intermediate!10357 lt!612223)) (undefined!11169 lt!612223)))))

(declare-fun lt!612220 () SeekEntryResult!10357)

(assert (=> b!1394115 (= lt!612220 (Found!10357 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95328 (_ BitVec 32)) SeekEntryResult!10357)

(assert (=> b!1394115 (= lt!612220 (seekEntryOrOpen!0 (select (arr!46018 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394115 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46668 0))(
  ( (Unit!46669) )
))
(declare-fun lt!612226 () Unit!46668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46668)

(assert (=> b!1394115 (= lt!612226 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612224 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95328 (_ BitVec 32)) SeekEntryResult!10357)

(assert (=> b!1394115 (= lt!612223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612224 (select (arr!46018 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394115 (= lt!612224 (toIndex!0 (select (arr!46018 a!2901) j!112) mask!2840))))

(declare-fun b!1394116 () Bool)

(declare-fun res!933631 () Bool)

(assert (=> b!1394116 (=> (not res!933631) (not e!789380))))

(assert (=> b!1394116 (= res!933631 (validKeyInArray!0 (select (arr!46018 a!2901) j!112)))))

(declare-fun b!1394117 () Bool)

(declare-fun res!933633 () Bool)

(declare-fun e!789378 () Bool)

(assert (=> b!1394117 (=> res!933633 e!789378)))

(assert (=> b!1394117 (= res!933633 (or (bvslt (x!125476 lt!612223) #b00000000000000000000000000000000) (bvsgt (x!125476 lt!612223) #b01111111111111111111111111111110) (bvslt lt!612224 #b00000000000000000000000000000000) (bvsge lt!612224 (size!46569 a!2901)) (bvslt (index!43800 lt!612223) #b00000000000000000000000000000000) (bvsge (index!43800 lt!612223) (size!46569 a!2901)) (not (= lt!612223 (Intermediate!10357 false (index!43800 lt!612223) (x!125476 lt!612223))))))))

(declare-fun b!1394118 () Bool)

(assert (=> b!1394118 (= e!789378 true)))

(declare-fun lt!612225 () (_ BitVec 64))

(declare-fun lt!612222 () array!95328)

(assert (=> b!1394118 (= lt!612220 (seekEntryOrOpen!0 lt!612225 lt!612222 mask!2840))))

(declare-fun lt!612221 () Unit!46668)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46668)

(assert (=> b!1394118 (= lt!612221 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612224 (x!125476 lt!612223) (index!43800 lt!612223) mask!2840))))

(declare-fun b!1394119 () Bool)

(assert (=> b!1394119 (= e!789377 e!789378)))

(declare-fun res!933628 () Bool)

(assert (=> b!1394119 (=> res!933628 e!789378)))

(assert (=> b!1394119 (= res!933628 (not (= lt!612223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612225 mask!2840) lt!612225 lt!612222 mask!2840))))))

(assert (=> b!1394119 (= lt!612225 (select (store (arr!46018 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394119 (= lt!612222 (array!95329 (store (arr!46018 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46569 a!2901)))))

(assert (= (and start!119728 res!933630) b!1394111))

(assert (= (and b!1394111 res!933634) b!1394112))

(assert (= (and b!1394112 res!933632) b!1394116))

(assert (= (and b!1394116 res!933631) b!1394113))

(assert (= (and b!1394113 res!933629) b!1394114))

(assert (= (and b!1394114 res!933636) b!1394115))

(assert (= (and b!1394115 (not res!933635)) b!1394119))

(assert (= (and b!1394119 (not res!933628)) b!1394117))

(assert (= (and b!1394117 (not res!933633)) b!1394118))

(declare-fun m!1280393 () Bool)

(assert (=> start!119728 m!1280393))

(declare-fun m!1280395 () Bool)

(assert (=> start!119728 m!1280395))

(declare-fun m!1280397 () Bool)

(assert (=> b!1394119 m!1280397))

(assert (=> b!1394119 m!1280397))

(declare-fun m!1280399 () Bool)

(assert (=> b!1394119 m!1280399))

(declare-fun m!1280401 () Bool)

(assert (=> b!1394119 m!1280401))

(declare-fun m!1280403 () Bool)

(assert (=> b!1394119 m!1280403))

(declare-fun m!1280405 () Bool)

(assert (=> b!1394118 m!1280405))

(declare-fun m!1280407 () Bool)

(assert (=> b!1394118 m!1280407))

(declare-fun m!1280409 () Bool)

(assert (=> b!1394113 m!1280409))

(declare-fun m!1280411 () Bool)

(assert (=> b!1394114 m!1280411))

(declare-fun m!1280413 () Bool)

(assert (=> b!1394112 m!1280413))

(assert (=> b!1394112 m!1280413))

(declare-fun m!1280415 () Bool)

(assert (=> b!1394112 m!1280415))

(declare-fun m!1280417 () Bool)

(assert (=> b!1394116 m!1280417))

(assert (=> b!1394116 m!1280417))

(declare-fun m!1280419 () Bool)

(assert (=> b!1394116 m!1280419))

(assert (=> b!1394115 m!1280417))

(declare-fun m!1280421 () Bool)

(assert (=> b!1394115 m!1280421))

(assert (=> b!1394115 m!1280417))

(assert (=> b!1394115 m!1280417))

(declare-fun m!1280423 () Bool)

(assert (=> b!1394115 m!1280423))

(declare-fun m!1280425 () Bool)

(assert (=> b!1394115 m!1280425))

(assert (=> b!1394115 m!1280417))

(declare-fun m!1280427 () Bool)

(assert (=> b!1394115 m!1280427))

(declare-fun m!1280429 () Bool)

(assert (=> b!1394115 m!1280429))

(push 1)

