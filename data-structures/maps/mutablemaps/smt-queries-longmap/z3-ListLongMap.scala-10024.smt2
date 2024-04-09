; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118290 () Bool)

(assert start!118290)

(declare-fun b!1383150 () Bool)

(declare-fun res!924851 () Bool)

(declare-fun e!783983 () Bool)

(assert (=> b!1383150 (=> (not res!924851) (not e!783983))))

(declare-datatypes ((array!94511 0))(
  ( (array!94512 (arr!45629 (Array (_ BitVec 32) (_ BitVec 64))) (size!46180 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94511)

(declare-datatypes ((List!32337 0))(
  ( (Nil!32334) (Cons!32333 (h!33542 (_ BitVec 64)) (t!47038 List!32337)) )
))
(declare-fun arrayNoDuplicates!0 (array!94511 (_ BitVec 32) List!32337) Bool)

(assert (=> b!1383150 (= res!924851 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32334))))

(declare-fun b!1383148 () Bool)

(declare-fun res!924852 () Bool)

(assert (=> b!1383148 (=> (not res!924852) (not e!783983))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383148 (= res!924852 (and (= (size!46180 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46180 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46180 a!2938))))))

(declare-fun b!1383149 () Bool)

(declare-fun res!924850 () Bool)

(assert (=> b!1383149 (=> (not res!924850) (not e!783983))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383149 (= res!924850 (validKeyInArray!0 (select (arr!45629 a!2938) i!1065)))))

(declare-fun b!1383151 () Bool)

(assert (=> b!1383151 (= e!783983 false)))

(declare-fun lt!608503 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94511 (_ BitVec 32)) Bool)

(assert (=> b!1383151 (= lt!608503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924849 () Bool)

(assert (=> start!118290 (=> (not res!924849) (not e!783983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118290 (= res!924849 (validMask!0 mask!2987))))

(assert (=> start!118290 e!783983))

(assert (=> start!118290 true))

(declare-fun array_inv!34574 (array!94511) Bool)

(assert (=> start!118290 (array_inv!34574 a!2938)))

(assert (= (and start!118290 res!924849) b!1383148))

(assert (= (and b!1383148 res!924852) b!1383149))

(assert (= (and b!1383149 res!924850) b!1383150))

(assert (= (and b!1383150 res!924851) b!1383151))

(declare-fun m!1268309 () Bool)

(assert (=> b!1383150 m!1268309))

(declare-fun m!1268311 () Bool)

(assert (=> b!1383149 m!1268311))

(assert (=> b!1383149 m!1268311))

(declare-fun m!1268313 () Bool)

(assert (=> b!1383149 m!1268313))

(declare-fun m!1268315 () Bool)

(assert (=> b!1383151 m!1268315))

(declare-fun m!1268317 () Bool)

(assert (=> start!118290 m!1268317))

(declare-fun m!1268319 () Bool)

(assert (=> start!118290 m!1268319))

(check-sat (not start!118290) (not b!1383150) (not b!1383151) (not b!1383149))
