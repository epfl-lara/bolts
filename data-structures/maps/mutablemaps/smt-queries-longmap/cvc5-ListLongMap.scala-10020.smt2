; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118264 () Bool)

(assert start!118264)

(declare-fun b!1382992 () Bool)

(declare-fun res!924695 () Bool)

(declare-fun e!783905 () Bool)

(assert (=> b!1382992 (=> (not res!924695) (not e!783905))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94485 0))(
  ( (array!94486 (arr!45616 (Array (_ BitVec 32) (_ BitVec 64))) (size!46167 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94485)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1382992 (= res!924695 (and (= (size!46167 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46167 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46167 a!2938))))))

(declare-fun b!1382995 () Bool)

(assert (=> b!1382995 (= e!783905 false)))

(declare-fun lt!608464 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94485 (_ BitVec 32)) Bool)

(assert (=> b!1382995 (= lt!608464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1382993 () Bool)

(declare-fun res!924696 () Bool)

(assert (=> b!1382993 (=> (not res!924696) (not e!783905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382993 (= res!924696 (validKeyInArray!0 (select (arr!45616 a!2938) i!1065)))))

(declare-fun b!1382994 () Bool)

(declare-fun res!924694 () Bool)

(assert (=> b!1382994 (=> (not res!924694) (not e!783905))))

(declare-datatypes ((List!32324 0))(
  ( (Nil!32321) (Cons!32320 (h!33529 (_ BitVec 64)) (t!47025 List!32324)) )
))
(declare-fun arrayNoDuplicates!0 (array!94485 (_ BitVec 32) List!32324) Bool)

(assert (=> b!1382994 (= res!924694 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32321))))

(declare-fun res!924693 () Bool)

(assert (=> start!118264 (=> (not res!924693) (not e!783905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118264 (= res!924693 (validMask!0 mask!2987))))

(assert (=> start!118264 e!783905))

(assert (=> start!118264 true))

(declare-fun array_inv!34561 (array!94485) Bool)

(assert (=> start!118264 (array_inv!34561 a!2938)))

(assert (= (and start!118264 res!924693) b!1382992))

(assert (= (and b!1382992 res!924695) b!1382993))

(assert (= (and b!1382993 res!924696) b!1382994))

(assert (= (and b!1382994 res!924694) b!1382995))

(declare-fun m!1268153 () Bool)

(assert (=> b!1382995 m!1268153))

(declare-fun m!1268155 () Bool)

(assert (=> b!1382993 m!1268155))

(assert (=> b!1382993 m!1268155))

(declare-fun m!1268157 () Bool)

(assert (=> b!1382993 m!1268157))

(declare-fun m!1268159 () Bool)

(assert (=> b!1382994 m!1268159))

(declare-fun m!1268161 () Bool)

(assert (=> start!118264 m!1268161))

(declare-fun m!1268163 () Bool)

(assert (=> start!118264 m!1268163))

(push 1)

(assert (not b!1382995))

(assert (not b!1382993))

(assert (not start!118264))

(assert (not b!1382994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

