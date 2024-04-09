; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118394 () Bool)

(assert start!118394)

(declare-fun b!1384217 () Bool)

(declare-datatypes ((Unit!46101 0))(
  ( (Unit!46102) )
))
(declare-fun e!784418 () Unit!46101)

(declare-fun Unit!46103 () Unit!46101)

(assert (=> b!1384217 (= e!784418 Unit!46103)))

(declare-fun b!1384218 () Bool)

(declare-fun res!925797 () Bool)

(declare-fun e!784419 () Bool)

(assert (=> b!1384218 (=> (not res!925797) (not e!784419))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94615 0))(
  ( (array!94616 (arr!45681 (Array (_ BitVec 32) (_ BitVec 64))) (size!46232 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94615)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1384218 (= res!925797 (and (= (size!46232 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46232 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46232 a!2938))))))

(declare-fun b!1384219 () Bool)

(declare-fun res!925795 () Bool)

(assert (=> b!1384219 (=> (not res!925795) (not e!784419))))

(assert (=> b!1384219 (= res!925795 (and (not (= (select (arr!45681 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45681 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384220 () Bool)

(declare-fun res!925794 () Bool)

(assert (=> b!1384220 (=> (not res!925794) (not e!784419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384220 (= res!925794 (validKeyInArray!0 (select (arr!45681 a!2938) i!1065)))))

(declare-fun b!1384221 () Bool)

(assert (=> b!1384221 (= e!784419 false)))

(declare-fun lt!608784 () Unit!46101)

(assert (=> b!1384221 (= lt!608784 e!784418)))

(declare-fun c!128654 () Bool)

(declare-fun e!784421 () Bool)

(assert (=> b!1384221 (= c!128654 e!784421)))

(declare-fun res!925798 () Bool)

(assert (=> b!1384221 (=> (not res!925798) (not e!784421))))

(assert (=> b!1384221 (= res!925798 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384222 () Bool)

(declare-fun lt!608785 () Unit!46101)

(assert (=> b!1384222 (= e!784418 lt!608785)))

(declare-fun lt!608783 () Unit!46101)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46101)

(assert (=> b!1384222 (= lt!608783 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10095 0))(
  ( (MissingZero!10095 (index!42750 (_ BitVec 32))) (Found!10095 (index!42751 (_ BitVec 32))) (Intermediate!10095 (undefined!10907 Bool) (index!42752 (_ BitVec 32)) (x!124259 (_ BitVec 32))) (Undefined!10095) (MissingVacant!10095 (index!42753 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94615 (_ BitVec 32)) SeekEntryResult!10095)

(assert (=> b!1384222 (= (seekEntryOrOpen!0 (select (arr!45681 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45681 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94616 (store (arr!45681 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46232 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94615 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46101)

(assert (=> b!1384222 (= lt!608785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94615 (_ BitVec 32)) Bool)

(assert (=> b!1384222 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384223 () Bool)

(declare-fun res!925796 () Bool)

(assert (=> b!1384223 (=> (not res!925796) (not e!784419))))

(assert (=> b!1384223 (= res!925796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384224 () Bool)

(assert (=> b!1384224 (= e!784421 (validKeyInArray!0 (select (arr!45681 a!2938) startIndex!16)))))

(declare-fun res!925799 () Bool)

(assert (=> start!118394 (=> (not res!925799) (not e!784419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118394 (= res!925799 (validMask!0 mask!2987))))

(assert (=> start!118394 e!784419))

(assert (=> start!118394 true))

(declare-fun array_inv!34626 (array!94615) Bool)

(assert (=> start!118394 (array_inv!34626 a!2938)))

(declare-fun b!1384225 () Bool)

(declare-fun res!925800 () Bool)

(assert (=> b!1384225 (=> (not res!925800) (not e!784419))))

(declare-datatypes ((List!32389 0))(
  ( (Nil!32386) (Cons!32385 (h!33594 (_ BitVec 64)) (t!47090 List!32389)) )
))
(declare-fun arrayNoDuplicates!0 (array!94615 (_ BitVec 32) List!32389) Bool)

(assert (=> b!1384225 (= res!925800 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32386))))

(assert (= (and start!118394 res!925799) b!1384218))

(assert (= (and b!1384218 res!925797) b!1384220))

(assert (= (and b!1384220 res!925794) b!1384225))

(assert (= (and b!1384225 res!925800) b!1384223))

(assert (= (and b!1384223 res!925796) b!1384219))

(assert (= (and b!1384219 res!925795) b!1384221))

(assert (= (and b!1384221 res!925798) b!1384224))

(assert (= (and b!1384221 c!128654) b!1384222))

(assert (= (and b!1384221 (not c!128654)) b!1384217))

(declare-fun m!1269503 () Bool)

(assert (=> b!1384223 m!1269503))

(declare-fun m!1269505 () Bool)

(assert (=> b!1384219 m!1269505))

(assert (=> b!1384220 m!1269505))

(assert (=> b!1384220 m!1269505))

(declare-fun m!1269507 () Bool)

(assert (=> b!1384220 m!1269507))

(declare-fun m!1269509 () Bool)

(assert (=> start!118394 m!1269509))

(declare-fun m!1269511 () Bool)

(assert (=> start!118394 m!1269511))

(declare-fun m!1269513 () Bool)

(assert (=> b!1384222 m!1269513))

(declare-fun m!1269515 () Bool)

(assert (=> b!1384222 m!1269515))

(assert (=> b!1384222 m!1269515))

(declare-fun m!1269517 () Bool)

(assert (=> b!1384222 m!1269517))

(declare-fun m!1269519 () Bool)

(assert (=> b!1384222 m!1269519))

(declare-fun m!1269521 () Bool)

(assert (=> b!1384222 m!1269521))

(declare-fun m!1269523 () Bool)

(assert (=> b!1384222 m!1269523))

(declare-fun m!1269525 () Bool)

(assert (=> b!1384222 m!1269525))

(assert (=> b!1384222 m!1269523))

(declare-fun m!1269527 () Bool)

(assert (=> b!1384222 m!1269527))

(assert (=> b!1384224 m!1269523))

(assert (=> b!1384224 m!1269523))

(declare-fun m!1269529 () Bool)

(assert (=> b!1384224 m!1269529))

(declare-fun m!1269531 () Bool)

(assert (=> b!1384225 m!1269531))

(push 1)

(assert (not b!1384223))

(assert (not start!118394))

(assert (not b!1384222))

(assert (not b!1384220))

(assert (not b!1384224))

(assert (not b!1384225))

(check-sat)

(pop 1)

(push 1)

