; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118396 () Bool)

(assert start!118396)

(declare-fun b!1384244 () Bool)

(declare-fun res!925821 () Bool)

(declare-fun e!784430 () Bool)

(assert (=> b!1384244 (=> (not res!925821) (not e!784430))))

(declare-datatypes ((array!94617 0))(
  ( (array!94618 (arr!45682 (Array (_ BitVec 32) (_ BitVec 64))) (size!46233 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94617)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384244 (= res!925821 (validKeyInArray!0 (select (arr!45682 a!2938) i!1065)))))

(declare-fun b!1384245 () Bool)

(declare-fun res!925816 () Bool)

(assert (=> b!1384245 (=> (not res!925816) (not e!784430))))

(assert (=> b!1384245 (= res!925816 (and (not (= (select (arr!45682 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45682 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384246 () Bool)

(declare-datatypes ((Unit!46104 0))(
  ( (Unit!46105) )
))
(declare-fun e!784431 () Unit!46104)

(declare-fun Unit!46106 () Unit!46104)

(assert (=> b!1384246 (= e!784431 Unit!46106)))

(declare-fun b!1384247 () Bool)

(declare-fun res!925817 () Bool)

(assert (=> b!1384247 (=> (not res!925817) (not e!784430))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384247 (= res!925817 (and (= (size!46233 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46233 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46233 a!2938))))))

(declare-fun b!1384248 () Bool)

(declare-fun res!925815 () Bool)

(assert (=> b!1384248 (=> (not res!925815) (not e!784430))))

(declare-datatypes ((List!32390 0))(
  ( (Nil!32387) (Cons!32386 (h!33595 (_ BitVec 64)) (t!47091 List!32390)) )
))
(declare-fun arrayNoDuplicates!0 (array!94617 (_ BitVec 32) List!32390) Bool)

(assert (=> b!1384248 (= res!925815 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32387))))

(declare-fun res!925818 () Bool)

(assert (=> start!118396 (=> (not res!925818) (not e!784430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118396 (= res!925818 (validMask!0 mask!2987))))

(assert (=> start!118396 e!784430))

(assert (=> start!118396 true))

(declare-fun array_inv!34627 (array!94617) Bool)

(assert (=> start!118396 (array_inv!34627 a!2938)))

(declare-fun b!1384249 () Bool)

(declare-fun e!784433 () Bool)

(assert (=> b!1384249 (= e!784433 (validKeyInArray!0 (select (arr!45682 a!2938) startIndex!16)))))

(declare-fun b!1384250 () Bool)

(assert (=> b!1384250 (= e!784430 false)))

(declare-fun lt!608793 () Unit!46104)

(assert (=> b!1384250 (= lt!608793 e!784431)))

(declare-fun c!128657 () Bool)

(assert (=> b!1384250 (= c!128657 e!784433)))

(declare-fun res!925820 () Bool)

(assert (=> b!1384250 (=> (not res!925820) (not e!784433))))

(assert (=> b!1384250 (= res!925820 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384251 () Bool)

(declare-fun res!925819 () Bool)

(assert (=> b!1384251 (=> (not res!925819) (not e!784430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94617 (_ BitVec 32)) Bool)

(assert (=> b!1384251 (= res!925819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384252 () Bool)

(declare-fun lt!608794 () Unit!46104)

(assert (=> b!1384252 (= e!784431 lt!608794)))

(declare-fun lt!608792 () Unit!46104)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46104)

(assert (=> b!1384252 (= lt!608792 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10096 0))(
  ( (MissingZero!10096 (index!42754 (_ BitVec 32))) (Found!10096 (index!42755 (_ BitVec 32))) (Intermediate!10096 (undefined!10908 Bool) (index!42756 (_ BitVec 32)) (x!124268 (_ BitVec 32))) (Undefined!10096) (MissingVacant!10096 (index!42757 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94617 (_ BitVec 32)) SeekEntryResult!10096)

(assert (=> b!1384252 (= (seekEntryOrOpen!0 (select (arr!45682 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45682 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94618 (store (arr!45682 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46233 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46104)

(assert (=> b!1384252 (= lt!608794 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384252 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(assert (= (and start!118396 res!925818) b!1384247))

(assert (= (and b!1384247 res!925817) b!1384244))

(assert (= (and b!1384244 res!925821) b!1384248))

(assert (= (and b!1384248 res!925815) b!1384251))

(assert (= (and b!1384251 res!925819) b!1384245))

(assert (= (and b!1384245 res!925816) b!1384250))

(assert (= (and b!1384250 res!925820) b!1384249))

(assert (= (and b!1384250 c!128657) b!1384252))

(assert (= (and b!1384250 (not c!128657)) b!1384246))

(declare-fun m!1269533 () Bool)

(assert (=> b!1384251 m!1269533))

(declare-fun m!1269535 () Bool)

(assert (=> b!1384249 m!1269535))

(assert (=> b!1384249 m!1269535))

(declare-fun m!1269537 () Bool)

(assert (=> b!1384249 m!1269537))

(declare-fun m!1269539 () Bool)

(assert (=> b!1384248 m!1269539))

(declare-fun m!1269541 () Bool)

(assert (=> b!1384245 m!1269541))

(declare-fun m!1269543 () Bool)

(assert (=> b!1384252 m!1269543))

(declare-fun m!1269545 () Bool)

(assert (=> b!1384252 m!1269545))

(assert (=> b!1384252 m!1269545))

(declare-fun m!1269547 () Bool)

(assert (=> b!1384252 m!1269547))

(declare-fun m!1269549 () Bool)

(assert (=> b!1384252 m!1269549))

(declare-fun m!1269551 () Bool)

(assert (=> b!1384252 m!1269551))

(assert (=> b!1384252 m!1269535))

(declare-fun m!1269553 () Bool)

(assert (=> b!1384252 m!1269553))

(assert (=> b!1384252 m!1269535))

(declare-fun m!1269555 () Bool)

(assert (=> b!1384252 m!1269555))

(declare-fun m!1269557 () Bool)

(assert (=> start!118396 m!1269557))

(declare-fun m!1269559 () Bool)

(assert (=> start!118396 m!1269559))

(assert (=> b!1384244 m!1269541))

(assert (=> b!1384244 m!1269541))

(declare-fun m!1269561 () Bool)

(assert (=> b!1384244 m!1269561))

(push 1)

(assert (not b!1384252))

(assert (not b!1384248))

(assert (not start!118396))

(assert (not b!1384244))

(assert (not b!1384251))

(assert (not b!1384249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

