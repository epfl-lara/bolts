; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118278 () Bool)

(assert start!118278)

(declare-fun b!1383078 () Bool)

(declare-fun res!924778 () Bool)

(declare-fun e!783947 () Bool)

(assert (=> b!1383078 (=> (not res!924778) (not e!783947))))

(declare-datatypes ((array!94499 0))(
  ( (array!94500 (arr!45623 (Array (_ BitVec 32) (_ BitVec 64))) (size!46174 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94499)

(declare-datatypes ((List!32331 0))(
  ( (Nil!32328) (Cons!32327 (h!33536 (_ BitVec 64)) (t!47032 List!32331)) )
))
(declare-fun arrayNoDuplicates!0 (array!94499 (_ BitVec 32) List!32331) Bool)

(assert (=> b!1383078 (= res!924778 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32328))))

(declare-fun b!1383076 () Bool)

(declare-fun res!924780 () Bool)

(assert (=> b!1383076 (=> (not res!924780) (not e!783947))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383076 (= res!924780 (and (= (size!46174 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46174 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46174 a!2938))))))

(declare-fun res!924779 () Bool)

(assert (=> start!118278 (=> (not res!924779) (not e!783947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118278 (= res!924779 (validMask!0 mask!2987))))

(assert (=> start!118278 e!783947))

(assert (=> start!118278 true))

(declare-fun array_inv!34568 (array!94499) Bool)

(assert (=> start!118278 (array_inv!34568 a!2938)))

(declare-fun b!1383077 () Bool)

(declare-fun res!924777 () Bool)

(assert (=> b!1383077 (=> (not res!924777) (not e!783947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383077 (= res!924777 (validKeyInArray!0 (select (arr!45623 a!2938) i!1065)))))

(declare-fun b!1383079 () Bool)

(assert (=> b!1383079 (= e!783947 false)))

(declare-fun lt!608485 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94499 (_ BitVec 32)) Bool)

(assert (=> b!1383079 (= lt!608485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118278 res!924779) b!1383076))

(assert (= (and b!1383076 res!924780) b!1383077))

(assert (= (and b!1383077 res!924777) b!1383078))

(assert (= (and b!1383078 res!924778) b!1383079))

(declare-fun m!1268237 () Bool)

(assert (=> b!1383078 m!1268237))

(declare-fun m!1268239 () Bool)

(assert (=> start!118278 m!1268239))

(declare-fun m!1268241 () Bool)

(assert (=> start!118278 m!1268241))

(declare-fun m!1268243 () Bool)

(assert (=> b!1383077 m!1268243))

(assert (=> b!1383077 m!1268243))

(declare-fun m!1268245 () Bool)

(assert (=> b!1383077 m!1268245))

(declare-fun m!1268247 () Bool)

(assert (=> b!1383079 m!1268247))

(check-sat (not b!1383079) (not b!1383077) (not start!118278) (not b!1383078))
