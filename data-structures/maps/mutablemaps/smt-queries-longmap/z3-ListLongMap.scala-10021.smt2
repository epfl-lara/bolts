; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118272 () Bool)

(assert start!118272)

(declare-fun b!1383041 () Bool)

(declare-fun res!924743 () Bool)

(declare-fun e!783928 () Bool)

(assert (=> b!1383041 (=> (not res!924743) (not e!783928))))

(declare-datatypes ((array!94493 0))(
  ( (array!94494 (arr!45620 (Array (_ BitVec 32) (_ BitVec 64))) (size!46171 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94493)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383041 (= res!924743 (validKeyInArray!0 (select (arr!45620 a!2938) i!1065)))))

(declare-fun res!924741 () Bool)

(assert (=> start!118272 (=> (not res!924741) (not e!783928))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118272 (= res!924741 (validMask!0 mask!2987))))

(assert (=> start!118272 e!783928))

(assert (=> start!118272 true))

(declare-fun array_inv!34565 (array!94493) Bool)

(assert (=> start!118272 (array_inv!34565 a!2938)))

(declare-fun b!1383042 () Bool)

(declare-fun res!924744 () Bool)

(assert (=> b!1383042 (=> (not res!924744) (not e!783928))))

(declare-datatypes ((List!32328 0))(
  ( (Nil!32325) (Cons!32324 (h!33533 (_ BitVec 64)) (t!47029 List!32328)) )
))
(declare-fun arrayNoDuplicates!0 (array!94493 (_ BitVec 32) List!32328) Bool)

(assert (=> b!1383042 (= res!924744 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32325))))

(declare-fun b!1383040 () Bool)

(declare-fun res!924742 () Bool)

(assert (=> b!1383040 (=> (not res!924742) (not e!783928))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383040 (= res!924742 (and (= (size!46171 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46171 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46171 a!2938))))))

(declare-fun b!1383043 () Bool)

(assert (=> b!1383043 (= e!783928 false)))

(declare-fun lt!608476 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94493 (_ BitVec 32)) Bool)

(assert (=> b!1383043 (= lt!608476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118272 res!924741) b!1383040))

(assert (= (and b!1383040 res!924742) b!1383041))

(assert (= (and b!1383041 res!924743) b!1383042))

(assert (= (and b!1383042 res!924744) b!1383043))

(declare-fun m!1268201 () Bool)

(assert (=> b!1383041 m!1268201))

(assert (=> b!1383041 m!1268201))

(declare-fun m!1268203 () Bool)

(assert (=> b!1383041 m!1268203))

(declare-fun m!1268205 () Bool)

(assert (=> start!118272 m!1268205))

(declare-fun m!1268207 () Bool)

(assert (=> start!118272 m!1268207))

(declare-fun m!1268209 () Bool)

(assert (=> b!1383042 m!1268209))

(declare-fun m!1268211 () Bool)

(assert (=> b!1383043 m!1268211))

(check-sat (not b!1383041) (not start!118272) (not b!1383042) (not b!1383043))
