; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118260 () Bool)

(assert start!118260)

(declare-fun b!1382968 () Bool)

(declare-fun res!924670 () Bool)

(declare-fun e!783893 () Bool)

(assert (=> b!1382968 (=> (not res!924670) (not e!783893))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((array!94481 0))(
  ( (array!94482 (arr!45614 (Array (_ BitVec 32) (_ BitVec 64))) (size!46165 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94481)

(assert (=> b!1382968 (= res!924670 (and (= (size!46165 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46165 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46165 a!2938))))))

(declare-fun b!1382970 () Bool)

(declare-fun res!924671 () Bool)

(assert (=> b!1382970 (=> (not res!924671) (not e!783893))))

(declare-datatypes ((List!32322 0))(
  ( (Nil!32319) (Cons!32318 (h!33527 (_ BitVec 64)) (t!47023 List!32322)) )
))
(declare-fun arrayNoDuplicates!0 (array!94481 (_ BitVec 32) List!32322) Bool)

(assert (=> b!1382970 (= res!924671 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32319))))

(declare-fun b!1382969 () Bool)

(declare-fun res!924669 () Bool)

(assert (=> b!1382969 (=> (not res!924669) (not e!783893))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382969 (= res!924669 (validKeyInArray!0 (select (arr!45614 a!2938) i!1065)))))

(declare-fun res!924672 () Bool)

(assert (=> start!118260 (=> (not res!924672) (not e!783893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118260 (= res!924672 (validMask!0 mask!2987))))

(assert (=> start!118260 e!783893))

(assert (=> start!118260 true))

(declare-fun array_inv!34559 (array!94481) Bool)

(assert (=> start!118260 (array_inv!34559 a!2938)))

(declare-fun b!1382971 () Bool)

(assert (=> b!1382971 (= e!783893 false)))

(declare-fun lt!608458 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94481 (_ BitVec 32)) Bool)

(assert (=> b!1382971 (= lt!608458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118260 res!924672) b!1382968))

(assert (= (and b!1382968 res!924670) b!1382969))

(assert (= (and b!1382969 res!924669) b!1382970))

(assert (= (and b!1382970 res!924671) b!1382971))

(declare-fun m!1268129 () Bool)

(assert (=> b!1382970 m!1268129))

(declare-fun m!1268131 () Bool)

(assert (=> b!1382969 m!1268131))

(assert (=> b!1382969 m!1268131))

(declare-fun m!1268133 () Bool)

(assert (=> b!1382969 m!1268133))

(declare-fun m!1268135 () Bool)

(assert (=> start!118260 m!1268135))

(declare-fun m!1268137 () Bool)

(assert (=> start!118260 m!1268137))

(declare-fun m!1268139 () Bool)

(assert (=> b!1382971 m!1268139))

(check-sat (not start!118260) (not b!1382970) (not b!1382969) (not b!1382971))
