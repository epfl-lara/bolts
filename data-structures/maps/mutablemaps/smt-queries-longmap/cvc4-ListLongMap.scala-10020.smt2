; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118268 () Bool)

(assert start!118268)

(declare-fun b!1383016 () Bool)

(declare-fun res!924720 () Bool)

(declare-fun e!783917 () Bool)

(assert (=> b!1383016 (=> (not res!924720) (not e!783917))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94489 0))(
  ( (array!94490 (arr!45618 (Array (_ BitVec 32) (_ BitVec 64))) (size!46169 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94489)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383016 (= res!924720 (and (= (size!46169 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46169 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46169 a!2938))))))

(declare-fun b!1383018 () Bool)

(declare-fun res!924718 () Bool)

(assert (=> b!1383018 (=> (not res!924718) (not e!783917))))

(declare-datatypes ((List!32326 0))(
  ( (Nil!32323) (Cons!32322 (h!33531 (_ BitVec 64)) (t!47027 List!32326)) )
))
(declare-fun arrayNoDuplicates!0 (array!94489 (_ BitVec 32) List!32326) Bool)

(assert (=> b!1383018 (= res!924718 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32323))))

(declare-fun res!924719 () Bool)

(assert (=> start!118268 (=> (not res!924719) (not e!783917))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118268 (= res!924719 (validMask!0 mask!2987))))

(assert (=> start!118268 e!783917))

(assert (=> start!118268 true))

(declare-fun array_inv!34563 (array!94489) Bool)

(assert (=> start!118268 (array_inv!34563 a!2938)))

(declare-fun b!1383019 () Bool)

(assert (=> b!1383019 (= e!783917 false)))

(declare-fun lt!608470 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94489 (_ BitVec 32)) Bool)

(assert (=> b!1383019 (= lt!608470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383017 () Bool)

(declare-fun res!924717 () Bool)

(assert (=> b!1383017 (=> (not res!924717) (not e!783917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383017 (= res!924717 (validKeyInArray!0 (select (arr!45618 a!2938) i!1065)))))

(assert (= (and start!118268 res!924719) b!1383016))

(assert (= (and b!1383016 res!924720) b!1383017))

(assert (= (and b!1383017 res!924717) b!1383018))

(assert (= (and b!1383018 res!924718) b!1383019))

(declare-fun m!1268177 () Bool)

(assert (=> b!1383018 m!1268177))

(declare-fun m!1268179 () Bool)

(assert (=> start!118268 m!1268179))

(declare-fun m!1268181 () Bool)

(assert (=> start!118268 m!1268181))

(declare-fun m!1268183 () Bool)

(assert (=> b!1383019 m!1268183))

(declare-fun m!1268185 () Bool)

(assert (=> b!1383017 m!1268185))

(assert (=> b!1383017 m!1268185))

(declare-fun m!1268187 () Bool)

(assert (=> b!1383017 m!1268187))

(push 1)

(assert (not b!1383017))

(assert (not start!118268))

(assert (not b!1383018))

(assert (not b!1383019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

