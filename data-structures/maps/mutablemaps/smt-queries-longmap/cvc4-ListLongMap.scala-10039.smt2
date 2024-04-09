; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118382 () Bool)

(assert start!118382)

(declare-fun b!1384055 () Bool)

(declare-fun e!784346 () Bool)

(assert (=> b!1384055 (= e!784346 false)))

(declare-datatypes ((Unit!46083 0))(
  ( (Unit!46084) )
))
(declare-fun lt!608730 () Unit!46083)

(declare-fun e!784348 () Unit!46083)

(assert (=> b!1384055 (= lt!608730 e!784348)))

(declare-fun c!128636 () Bool)

(declare-fun e!784347 () Bool)

(assert (=> b!1384055 (= c!128636 e!784347)))

(declare-fun res!925673 () Bool)

(assert (=> b!1384055 (=> (not res!925673) (not e!784347))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1384055 (= res!925673 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384056 () Bool)

(declare-fun res!925669 () Bool)

(assert (=> b!1384056 (=> (not res!925669) (not e!784346))))

(declare-datatypes ((array!94603 0))(
  ( (array!94604 (arr!45675 (Array (_ BitVec 32) (_ BitVec 64))) (size!46226 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94603)

(declare-datatypes ((List!32383 0))(
  ( (Nil!32380) (Cons!32379 (h!33588 (_ BitVec 64)) (t!47084 List!32383)) )
))
(declare-fun arrayNoDuplicates!0 (array!94603 (_ BitVec 32) List!32383) Bool)

(assert (=> b!1384056 (= res!925669 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32380))))

(declare-fun res!925674 () Bool)

(assert (=> start!118382 (=> (not res!925674) (not e!784346))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118382 (= res!925674 (validMask!0 mask!2987))))

(assert (=> start!118382 e!784346))

(assert (=> start!118382 true))

(declare-fun array_inv!34620 (array!94603) Bool)

(assert (=> start!118382 (array_inv!34620 a!2938)))

(declare-fun b!1384057 () Bool)

(declare-fun res!925671 () Bool)

(assert (=> b!1384057 (=> (not res!925671) (not e!784346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384057 (= res!925671 (validKeyInArray!0 (select (arr!45675 a!2938) i!1065)))))

(declare-fun b!1384058 () Bool)

(declare-fun res!925668 () Bool)

(assert (=> b!1384058 (=> (not res!925668) (not e!784346))))

(assert (=> b!1384058 (= res!925668 (and (not (= (select (arr!45675 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45675 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384059 () Bool)

(declare-fun Unit!46085 () Unit!46083)

(assert (=> b!1384059 (= e!784348 Unit!46085)))

(declare-fun b!1384060 () Bool)

(declare-fun lt!608729 () Unit!46083)

(assert (=> b!1384060 (= e!784348 lt!608729)))

(declare-fun lt!608731 () Unit!46083)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46083)

(assert (=> b!1384060 (= lt!608731 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10089 0))(
  ( (MissingZero!10089 (index!42726 (_ BitVec 32))) (Found!10089 (index!42727 (_ BitVec 32))) (Intermediate!10089 (undefined!10901 Bool) (index!42728 (_ BitVec 32)) (x!124237 (_ BitVec 32))) (Undefined!10089) (MissingVacant!10089 (index!42729 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94603 (_ BitVec 32)) SeekEntryResult!10089)

(assert (=> b!1384060 (= (seekEntryOrOpen!0 (select (arr!45675 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45675 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94604 (store (arr!45675 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46226 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46083)

(assert (=> b!1384060 (= lt!608729 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94603 (_ BitVec 32)) Bool)

(assert (=> b!1384060 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384061 () Bool)

(assert (=> b!1384061 (= e!784347 (validKeyInArray!0 (select (arr!45675 a!2938) startIndex!16)))))

(declare-fun b!1384062 () Bool)

(declare-fun res!925670 () Bool)

(assert (=> b!1384062 (=> (not res!925670) (not e!784346))))

(assert (=> b!1384062 (= res!925670 (and (= (size!46226 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46226 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46226 a!2938))))))

(declare-fun b!1384063 () Bool)

(declare-fun res!925672 () Bool)

(assert (=> b!1384063 (=> (not res!925672) (not e!784346))))

(assert (=> b!1384063 (= res!925672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118382 res!925674) b!1384062))

(assert (= (and b!1384062 res!925670) b!1384057))

(assert (= (and b!1384057 res!925671) b!1384056))

(assert (= (and b!1384056 res!925669) b!1384063))

(assert (= (and b!1384063 res!925672) b!1384058))

(assert (= (and b!1384058 res!925668) b!1384055))

(assert (= (and b!1384055 res!925673) b!1384061))

(assert (= (and b!1384055 c!128636) b!1384060))

(assert (= (and b!1384055 (not c!128636)) b!1384059))

(declare-fun m!1269323 () Bool)

(assert (=> start!118382 m!1269323))

(declare-fun m!1269325 () Bool)

(assert (=> start!118382 m!1269325))

(declare-fun m!1269327 () Bool)

(assert (=> b!1384057 m!1269327))

(assert (=> b!1384057 m!1269327))

(declare-fun m!1269329 () Bool)

(assert (=> b!1384057 m!1269329))

(declare-fun m!1269331 () Bool)

(assert (=> b!1384061 m!1269331))

(assert (=> b!1384061 m!1269331))

(declare-fun m!1269333 () Bool)

(assert (=> b!1384061 m!1269333))

(declare-fun m!1269335 () Bool)

(assert (=> b!1384056 m!1269335))

(declare-fun m!1269337 () Bool)

(assert (=> b!1384060 m!1269337))

(declare-fun m!1269339 () Bool)

(assert (=> b!1384060 m!1269339))

(assert (=> b!1384060 m!1269339))

(declare-fun m!1269341 () Bool)

(assert (=> b!1384060 m!1269341))

(declare-fun m!1269343 () Bool)

(assert (=> b!1384060 m!1269343))

(declare-fun m!1269345 () Bool)

(assert (=> b!1384060 m!1269345))

(assert (=> b!1384060 m!1269331))

(declare-fun m!1269347 () Bool)

(assert (=> b!1384060 m!1269347))

(assert (=> b!1384060 m!1269331))

(declare-fun m!1269349 () Bool)

(assert (=> b!1384060 m!1269349))

(assert (=> b!1384058 m!1269327))

(declare-fun m!1269351 () Bool)

(assert (=> b!1384063 m!1269351))

(push 1)

(assert (not b!1384056))

(assert (not b!1384063))

(assert (not start!118382))

(assert (not b!1384060))

(assert (not b!1384057))

(assert (not b!1384061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

