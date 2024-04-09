; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118436 () Bool)

(assert start!118436)

(declare-fun b!1384820 () Bool)

(declare-fun res!926276 () Bool)

(declare-fun e!784708 () Bool)

(assert (=> b!1384820 (=> (not res!926276) (not e!784708))))

(declare-datatypes ((array!94657 0))(
  ( (array!94658 (arr!45702 (Array (_ BitVec 32) (_ BitVec 64))) (size!46253 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94657)

(declare-datatypes ((List!32410 0))(
  ( (Nil!32407) (Cons!32406 (h!33615 (_ BitVec 64)) (t!47111 List!32410)) )
))
(declare-fun arrayNoDuplicates!0 (array!94657 (_ BitVec 32) List!32410) Bool)

(assert (=> b!1384820 (= res!926276 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32407))))

(declare-fun b!1384821 () Bool)

(declare-fun res!926272 () Bool)

(assert (=> b!1384821 (=> (not res!926272) (not e!784708))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94657 (_ BitVec 32)) Bool)

(assert (=> b!1384821 (= res!926272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384822 () Bool)

(declare-datatypes ((Unit!46164 0))(
  ( (Unit!46165) )
))
(declare-fun e!784707 () Unit!46164)

(declare-fun lt!609046 () Unit!46164)

(assert (=> b!1384822 (= e!784707 lt!609046)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609044 () Unit!46164)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46164)

(assert (=> b!1384822 (= lt!609044 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10116 0))(
  ( (MissingZero!10116 (index!42834 (_ BitVec 32))) (Found!10116 (index!42835 (_ BitVec 32))) (Intermediate!10116 (undefined!10928 Bool) (index!42836 (_ BitVec 32)) (x!124336 (_ BitVec 32))) (Undefined!10116) (MissingVacant!10116 (index!42837 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94657 (_ BitVec 32)) SeekEntryResult!10116)

(assert (=> b!1384822 (= (seekEntryOrOpen!0 (select (arr!45702 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45702 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94658 (store (arr!45702 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46253 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46164)

(assert (=> b!1384822 (= lt!609046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384822 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384823 () Bool)

(declare-fun res!926274 () Bool)

(assert (=> b!1384823 (=> (not res!926274) (not e!784708))))

(assert (=> b!1384823 (= res!926274 (and (not (= (select (arr!45702 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45702 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384824 () Bool)

(assert (=> b!1384824 (= e!784708 false)))

(declare-fun lt!609045 () Unit!46164)

(assert (=> b!1384824 (= lt!609045 e!784707)))

(declare-fun c!128717 () Bool)

(declare-fun e!784709 () Bool)

(assert (=> b!1384824 (= c!128717 e!784709)))

(declare-fun res!926277 () Bool)

(assert (=> b!1384824 (=> (not res!926277) (not e!784709))))

(assert (=> b!1384824 (= res!926277 (not (= startIndex!16 i!1065)))))

(declare-fun res!926271 () Bool)

(assert (=> start!118436 (=> (not res!926271) (not e!784708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118436 (= res!926271 (validMask!0 mask!2987))))

(assert (=> start!118436 e!784708))

(assert (=> start!118436 true))

(declare-fun array_inv!34647 (array!94657) Bool)

(assert (=> start!118436 (array_inv!34647 a!2938)))

(declare-fun b!1384825 () Bool)

(declare-fun Unit!46166 () Unit!46164)

(assert (=> b!1384825 (= e!784707 Unit!46166)))

(declare-fun b!1384826 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384826 (= e!784709 (validKeyInArray!0 (select (arr!45702 a!2938) startIndex!16)))))

(declare-fun b!1384827 () Bool)

(declare-fun res!926275 () Bool)

(assert (=> b!1384827 (=> (not res!926275) (not e!784708))))

(assert (=> b!1384827 (= res!926275 (validKeyInArray!0 (select (arr!45702 a!2938) i!1065)))))

(declare-fun b!1384828 () Bool)

(declare-fun res!926273 () Bool)

(assert (=> b!1384828 (=> (not res!926273) (not e!784708))))

(assert (=> b!1384828 (= res!926273 (and (= (size!46253 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46253 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46253 a!2938))))))

(assert (= (and start!118436 res!926271) b!1384828))

(assert (= (and b!1384828 res!926273) b!1384827))

(assert (= (and b!1384827 res!926275) b!1384820))

(assert (= (and b!1384820 res!926276) b!1384821))

(assert (= (and b!1384821 res!926272) b!1384823))

(assert (= (and b!1384823 res!926274) b!1384824))

(assert (= (and b!1384824 res!926277) b!1384826))

(assert (= (and b!1384824 c!128717) b!1384822))

(assert (= (and b!1384824 (not c!128717)) b!1384825))

(declare-fun m!1270181 () Bool)

(assert (=> b!1384827 m!1270181))

(assert (=> b!1384827 m!1270181))

(declare-fun m!1270183 () Bool)

(assert (=> b!1384827 m!1270183))

(declare-fun m!1270185 () Bool)

(assert (=> b!1384820 m!1270185))

(declare-fun m!1270187 () Bool)

(assert (=> b!1384821 m!1270187))

(declare-fun m!1270189 () Bool)

(assert (=> start!118436 m!1270189))

(declare-fun m!1270191 () Bool)

(assert (=> start!118436 m!1270191))

(assert (=> b!1384823 m!1270181))

(declare-fun m!1270193 () Bool)

(assert (=> b!1384826 m!1270193))

(assert (=> b!1384826 m!1270193))

(declare-fun m!1270195 () Bool)

(assert (=> b!1384826 m!1270195))

(declare-fun m!1270197 () Bool)

(assert (=> b!1384822 m!1270197))

(declare-fun m!1270199 () Bool)

(assert (=> b!1384822 m!1270199))

(assert (=> b!1384822 m!1270199))

(declare-fun m!1270201 () Bool)

(assert (=> b!1384822 m!1270201))

(declare-fun m!1270203 () Bool)

(assert (=> b!1384822 m!1270203))

(declare-fun m!1270205 () Bool)

(assert (=> b!1384822 m!1270205))

(assert (=> b!1384822 m!1270193))

(declare-fun m!1270207 () Bool)

(assert (=> b!1384822 m!1270207))

(assert (=> b!1384822 m!1270193))

(declare-fun m!1270209 () Bool)

(assert (=> b!1384822 m!1270209))

(push 1)

(assert (not b!1384822))

(assert (not b!1384821))

(assert (not b!1384826))

(assert (not b!1384827))

(assert (not b!1384820))

