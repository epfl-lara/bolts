; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118384 () Bool)

(assert start!118384)

(declare-fun b!1384082 () Bool)

(declare-fun res!925689 () Bool)

(declare-fun e!784360 () Bool)

(assert (=> b!1384082 (=> (not res!925689) (not e!784360))))

(declare-datatypes ((array!94605 0))(
  ( (array!94606 (arr!45676 (Array (_ BitVec 32) (_ BitVec 64))) (size!46227 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94605)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384082 (= res!925689 (validKeyInArray!0 (select (arr!45676 a!2938) i!1065)))))

(declare-fun b!1384083 () Bool)

(declare-fun res!925693 () Bool)

(assert (=> b!1384083 (=> (not res!925693) (not e!784360))))

(assert (=> b!1384083 (= res!925693 (and (not (= (select (arr!45676 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45676 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384084 () Bool)

(declare-fun res!925691 () Bool)

(assert (=> b!1384084 (=> (not res!925691) (not e!784360))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384084 (= res!925691 (and (= (size!46227 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46227 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46227 a!2938))))))

(declare-fun res!925695 () Bool)

(assert (=> start!118384 (=> (not res!925695) (not e!784360))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118384 (= res!925695 (validMask!0 mask!2987))))

(assert (=> start!118384 e!784360))

(assert (=> start!118384 true))

(declare-fun array_inv!34621 (array!94605) Bool)

(assert (=> start!118384 (array_inv!34621 a!2938)))

(declare-fun b!1384085 () Bool)

(assert (=> b!1384085 (= e!784360 false)))

(declare-datatypes ((Unit!46086 0))(
  ( (Unit!46087) )
))
(declare-fun lt!608739 () Unit!46086)

(declare-fun e!784361 () Unit!46086)

(assert (=> b!1384085 (= lt!608739 e!784361)))

(declare-fun c!128639 () Bool)

(declare-fun e!784359 () Bool)

(assert (=> b!1384085 (= c!128639 e!784359)))

(declare-fun res!925690 () Bool)

(assert (=> b!1384085 (=> (not res!925690) (not e!784359))))

(assert (=> b!1384085 (= res!925690 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384086 () Bool)

(declare-fun lt!608740 () Unit!46086)

(assert (=> b!1384086 (= e!784361 lt!608740)))

(declare-fun lt!608738 () Unit!46086)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46086)

(assert (=> b!1384086 (= lt!608738 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10090 0))(
  ( (MissingZero!10090 (index!42730 (_ BitVec 32))) (Found!10090 (index!42731 (_ BitVec 32))) (Intermediate!10090 (undefined!10902 Bool) (index!42732 (_ BitVec 32)) (x!124246 (_ BitVec 32))) (Undefined!10090) (MissingVacant!10090 (index!42733 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94605 (_ BitVec 32)) SeekEntryResult!10090)

(assert (=> b!1384086 (= (seekEntryOrOpen!0 (select (arr!45676 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45676 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94606 (store (arr!45676 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46227 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94605 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46086)

(assert (=> b!1384086 (= lt!608740 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94605 (_ BitVec 32)) Bool)

(assert (=> b!1384086 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384087 () Bool)

(declare-fun res!925692 () Bool)

(assert (=> b!1384087 (=> (not res!925692) (not e!784360))))

(declare-datatypes ((List!32384 0))(
  ( (Nil!32381) (Cons!32380 (h!33589 (_ BitVec 64)) (t!47085 List!32384)) )
))
(declare-fun arrayNoDuplicates!0 (array!94605 (_ BitVec 32) List!32384) Bool)

(assert (=> b!1384087 (= res!925692 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32381))))

(declare-fun b!1384088 () Bool)

(declare-fun Unit!46088 () Unit!46086)

(assert (=> b!1384088 (= e!784361 Unit!46088)))

(declare-fun b!1384089 () Bool)

(declare-fun res!925694 () Bool)

(assert (=> b!1384089 (=> (not res!925694) (not e!784360))))

(assert (=> b!1384089 (= res!925694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384090 () Bool)

(assert (=> b!1384090 (= e!784359 (validKeyInArray!0 (select (arr!45676 a!2938) startIndex!16)))))

(assert (= (and start!118384 res!925695) b!1384084))

(assert (= (and b!1384084 res!925691) b!1384082))

(assert (= (and b!1384082 res!925689) b!1384087))

(assert (= (and b!1384087 res!925692) b!1384089))

(assert (= (and b!1384089 res!925694) b!1384083))

(assert (= (and b!1384083 res!925693) b!1384085))

(assert (= (and b!1384085 res!925690) b!1384090))

(assert (= (and b!1384085 c!128639) b!1384086))

(assert (= (and b!1384085 (not c!128639)) b!1384088))

(declare-fun m!1269353 () Bool)

(assert (=> b!1384087 m!1269353))

(declare-fun m!1269355 () Bool)

(assert (=> start!118384 m!1269355))

(declare-fun m!1269357 () Bool)

(assert (=> start!118384 m!1269357))

(declare-fun m!1269359 () Bool)

(assert (=> b!1384086 m!1269359))

(declare-fun m!1269361 () Bool)

(assert (=> b!1384086 m!1269361))

(assert (=> b!1384086 m!1269361))

(declare-fun m!1269363 () Bool)

(assert (=> b!1384086 m!1269363))

(declare-fun m!1269365 () Bool)

(assert (=> b!1384086 m!1269365))

(declare-fun m!1269367 () Bool)

(assert (=> b!1384086 m!1269367))

(declare-fun m!1269369 () Bool)

(assert (=> b!1384086 m!1269369))

(declare-fun m!1269371 () Bool)

(assert (=> b!1384086 m!1269371))

(assert (=> b!1384086 m!1269369))

(declare-fun m!1269373 () Bool)

(assert (=> b!1384086 m!1269373))

(declare-fun m!1269375 () Bool)

(assert (=> b!1384089 m!1269375))

(declare-fun m!1269377 () Bool)

(assert (=> b!1384082 m!1269377))

(assert (=> b!1384082 m!1269377))

(declare-fun m!1269379 () Bool)

(assert (=> b!1384082 m!1269379))

(assert (=> b!1384090 m!1269369))

(assert (=> b!1384090 m!1269369))

(declare-fun m!1269381 () Bool)

(assert (=> b!1384090 m!1269381))

(assert (=> b!1384083 m!1269377))

(push 1)

(assert (not b!1384089))

(assert (not b!1384082))

(assert (not b!1384090))

(assert (not b!1384086))

(assert (not b!1384087))

(assert (not start!118384))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

