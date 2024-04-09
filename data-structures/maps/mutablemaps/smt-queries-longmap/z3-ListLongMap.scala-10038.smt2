; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118374 () Bool)

(assert start!118374)

(declare-fun b!1383947 () Bool)

(declare-fun res!925584 () Bool)

(declare-fun e!784299 () Bool)

(assert (=> b!1383947 (=> (not res!925584) (not e!784299))))

(declare-datatypes ((array!94595 0))(
  ( (array!94596 (arr!45671 (Array (_ BitVec 32) (_ BitVec 64))) (size!46222 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94595)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383947 (= res!925584 (validKeyInArray!0 (select (arr!45671 a!2938) i!1065)))))

(declare-fun b!1383948 () Bool)

(declare-fun e!784300 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383948 (= e!784300 (validKeyInArray!0 (select (arr!45671 a!2938) startIndex!16)))))

(declare-fun b!1383949 () Bool)

(assert (=> b!1383949 (= e!784299 false)))

(declare-datatypes ((Unit!46071 0))(
  ( (Unit!46072) )
))
(declare-fun lt!608695 () Unit!46071)

(declare-fun e!784298 () Unit!46071)

(assert (=> b!1383949 (= lt!608695 e!784298)))

(declare-fun c!128624 () Bool)

(assert (=> b!1383949 (= c!128624 e!784300)))

(declare-fun res!925586 () Bool)

(assert (=> b!1383949 (=> (not res!925586) (not e!784300))))

(assert (=> b!1383949 (= res!925586 (not (= startIndex!16 i!1065)))))

(declare-fun b!1383950 () Bool)

(declare-fun lt!608693 () Unit!46071)

(assert (=> b!1383950 (= e!784298 lt!608693)))

(declare-fun lt!608694 () Unit!46071)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46071)

(assert (=> b!1383950 (= lt!608694 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10085 0))(
  ( (MissingZero!10085 (index!42710 (_ BitVec 32))) (Found!10085 (index!42711 (_ BitVec 32))) (Intermediate!10085 (undefined!10897 Bool) (index!42712 (_ BitVec 32)) (x!124225 (_ BitVec 32))) (Undefined!10085) (MissingVacant!10085 (index!42713 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94595 (_ BitVec 32)) SeekEntryResult!10085)

(assert (=> b!1383950 (= (seekEntryOrOpen!0 (select (arr!45671 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45671 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94596 (store (arr!45671 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46222 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46071)

(assert (=> b!1383950 (= lt!608693 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94595 (_ BitVec 32)) Bool)

(assert (=> b!1383950 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun res!925587 () Bool)

(assert (=> start!118374 (=> (not res!925587) (not e!784299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118374 (= res!925587 (validMask!0 mask!2987))))

(assert (=> start!118374 e!784299))

(assert (=> start!118374 true))

(declare-fun array_inv!34616 (array!94595) Bool)

(assert (=> start!118374 (array_inv!34616 a!2938)))

(declare-fun b!1383951 () Bool)

(declare-fun Unit!46073 () Unit!46071)

(assert (=> b!1383951 (= e!784298 Unit!46073)))

(declare-fun b!1383952 () Bool)

(declare-fun res!925590 () Bool)

(assert (=> b!1383952 (=> (not res!925590) (not e!784299))))

(assert (=> b!1383952 (= res!925590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383953 () Bool)

(declare-fun res!925585 () Bool)

(assert (=> b!1383953 (=> (not res!925585) (not e!784299))))

(assert (=> b!1383953 (= res!925585 (and (= (size!46222 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46222 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46222 a!2938))))))

(declare-fun b!1383954 () Bool)

(declare-fun res!925588 () Bool)

(assert (=> b!1383954 (=> (not res!925588) (not e!784299))))

(declare-datatypes ((List!32379 0))(
  ( (Nil!32376) (Cons!32375 (h!33584 (_ BitVec 64)) (t!47080 List!32379)) )
))
(declare-fun arrayNoDuplicates!0 (array!94595 (_ BitVec 32) List!32379) Bool)

(assert (=> b!1383954 (= res!925588 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32376))))

(declare-fun b!1383955 () Bool)

(declare-fun res!925589 () Bool)

(assert (=> b!1383955 (=> (not res!925589) (not e!784299))))

(assert (=> b!1383955 (= res!925589 (and (not (= (select (arr!45671 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45671 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!118374 res!925587) b!1383953))

(assert (= (and b!1383953 res!925585) b!1383947))

(assert (= (and b!1383947 res!925584) b!1383954))

(assert (= (and b!1383954 res!925588) b!1383952))

(assert (= (and b!1383952 res!925590) b!1383955))

(assert (= (and b!1383955 res!925589) b!1383949))

(assert (= (and b!1383949 res!925586) b!1383948))

(assert (= (and b!1383949 c!128624) b!1383950))

(assert (= (and b!1383949 (not c!128624)) b!1383951))

(declare-fun m!1269203 () Bool)

(assert (=> b!1383954 m!1269203))

(declare-fun m!1269205 () Bool)

(assert (=> b!1383955 m!1269205))

(declare-fun m!1269207 () Bool)

(assert (=> b!1383950 m!1269207))

(declare-fun m!1269209 () Bool)

(assert (=> b!1383950 m!1269209))

(assert (=> b!1383950 m!1269209))

(declare-fun m!1269211 () Bool)

(assert (=> b!1383950 m!1269211))

(declare-fun m!1269213 () Bool)

(assert (=> b!1383950 m!1269213))

(declare-fun m!1269215 () Bool)

(assert (=> b!1383950 m!1269215))

(declare-fun m!1269217 () Bool)

(assert (=> b!1383950 m!1269217))

(declare-fun m!1269219 () Bool)

(assert (=> b!1383950 m!1269219))

(assert (=> b!1383950 m!1269217))

(declare-fun m!1269221 () Bool)

(assert (=> b!1383950 m!1269221))

(assert (=> b!1383948 m!1269217))

(assert (=> b!1383948 m!1269217))

(declare-fun m!1269223 () Bool)

(assert (=> b!1383948 m!1269223))

(declare-fun m!1269225 () Bool)

(assert (=> b!1383952 m!1269225))

(assert (=> b!1383947 m!1269205))

(assert (=> b!1383947 m!1269205))

(declare-fun m!1269227 () Bool)

(assert (=> b!1383947 m!1269227))

(declare-fun m!1269229 () Bool)

(assert (=> start!118374 m!1269229))

(declare-fun m!1269231 () Bool)

(assert (=> start!118374 m!1269231))

(check-sat (not b!1383952) (not b!1383950) (not b!1383954) (not b!1383948) (not start!118374) (not b!1383947))
