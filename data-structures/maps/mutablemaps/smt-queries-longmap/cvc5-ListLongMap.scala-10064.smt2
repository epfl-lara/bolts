; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118558 () Bool)

(assert start!118558)

(declare-fun b!1385617 () Bool)

(declare-fun res!926976 () Bool)

(declare-fun e!785101 () Bool)

(assert (=> b!1385617 (=> (not res!926976) (not e!785101))))

(declare-datatypes ((array!94752 0))(
  ( (array!94753 (arr!45748 (Array (_ BitVec 32) (_ BitVec 64))) (size!46299 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94752)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94752 (_ BitVec 32)) Bool)

(assert (=> b!1385617 (= res!926976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385618 () Bool)

(declare-fun res!926977 () Bool)

(assert (=> b!1385618 (=> (not res!926977) (not e!785101))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385618 (= res!926977 (validKeyInArray!0 (select (arr!45748 a!2938) startIndex!16)))))

(declare-fun b!1385619 () Bool)

(declare-fun res!926978 () Bool)

(assert (=> b!1385619 (=> (not res!926978) (not e!785101))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385619 (= res!926978 (and (not (= (select (arr!45748 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45748 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1385620 () Bool)

(declare-fun res!926980 () Bool)

(assert (=> b!1385620 (=> (not res!926980) (not e!785101))))

(assert (=> b!1385620 (= res!926980 (and (= (size!46299 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46299 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46299 a!2938))))))

(declare-fun res!926982 () Bool)

(assert (=> start!118558 (=> (not res!926982) (not e!785101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118558 (= res!926982 (validMask!0 mask!2987))))

(assert (=> start!118558 e!785101))

(assert (=> start!118558 true))

(declare-fun array_inv!34693 (array!94752) Bool)

(assert (=> start!118558 (array_inv!34693 a!2938)))

(declare-fun b!1385621 () Bool)

(assert (=> b!1385621 (= e!785101 (= i!1065 startIndex!16))))

(declare-fun b!1385622 () Bool)

(declare-fun res!926979 () Bool)

(assert (=> b!1385622 (=> (not res!926979) (not e!785101))))

(assert (=> b!1385622 (= res!926979 (validKeyInArray!0 (select (arr!45748 a!2938) i!1065)))))

(declare-fun b!1385623 () Bool)

(declare-fun res!926981 () Bool)

(assert (=> b!1385623 (=> (not res!926981) (not e!785101))))

(declare-datatypes ((List!32456 0))(
  ( (Nil!32453) (Cons!32452 (h!33661 (_ BitVec 64)) (t!47157 List!32456)) )
))
(declare-fun arrayNoDuplicates!0 (array!94752 (_ BitVec 32) List!32456) Bool)

(assert (=> b!1385623 (= res!926981 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32453))))

(assert (= (and start!118558 res!926982) b!1385620))

(assert (= (and b!1385620 res!926980) b!1385622))

(assert (= (and b!1385622 res!926979) b!1385623))

(assert (= (and b!1385623 res!926981) b!1385617))

(assert (= (and b!1385617 res!926976) b!1385619))

(assert (= (and b!1385619 res!926978) b!1385618))

(assert (= (and b!1385618 res!926977) b!1385621))

(declare-fun m!1270961 () Bool)

(assert (=> b!1385617 m!1270961))

(declare-fun m!1270963 () Bool)

(assert (=> b!1385622 m!1270963))

(assert (=> b!1385622 m!1270963))

(declare-fun m!1270965 () Bool)

(assert (=> b!1385622 m!1270965))

(declare-fun m!1270967 () Bool)

(assert (=> b!1385618 m!1270967))

(assert (=> b!1385618 m!1270967))

(declare-fun m!1270969 () Bool)

(assert (=> b!1385618 m!1270969))

(assert (=> b!1385619 m!1270963))

(declare-fun m!1270971 () Bool)

(assert (=> b!1385623 m!1270971))

(declare-fun m!1270973 () Bool)

(assert (=> start!118558 m!1270973))

(declare-fun m!1270975 () Bool)

(assert (=> start!118558 m!1270975))

(push 1)

(assert (not b!1385622))

(assert (not start!118558))

(assert (not b!1385617))

(assert (not b!1385618))

(assert (not b!1385623))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

