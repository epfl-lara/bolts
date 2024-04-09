; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118286 () Bool)

(assert start!118286)

(declare-fun b!1383125 () Bool)

(declare-fun res!924827 () Bool)

(declare-fun e!783970 () Bool)

(assert (=> b!1383125 (=> (not res!924827) (not e!783970))))

(declare-datatypes ((array!94507 0))(
  ( (array!94508 (arr!45627 (Array (_ BitVec 32) (_ BitVec 64))) (size!46178 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94507)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383125 (= res!924827 (validKeyInArray!0 (select (arr!45627 a!2938) i!1065)))))

(declare-fun b!1383127 () Bool)

(assert (=> b!1383127 (= e!783970 false)))

(declare-fun lt!608497 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94507 (_ BitVec 32)) Bool)

(assert (=> b!1383127 (= lt!608497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924828 () Bool)

(assert (=> start!118286 (=> (not res!924828) (not e!783970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118286 (= res!924828 (validMask!0 mask!2987))))

(assert (=> start!118286 e!783970))

(assert (=> start!118286 true))

(declare-fun array_inv!34572 (array!94507) Bool)

(assert (=> start!118286 (array_inv!34572 a!2938)))

(declare-fun b!1383126 () Bool)

(declare-fun res!924826 () Bool)

(assert (=> b!1383126 (=> (not res!924826) (not e!783970))))

(declare-datatypes ((List!32335 0))(
  ( (Nil!32332) (Cons!32331 (h!33540 (_ BitVec 64)) (t!47036 List!32335)) )
))
(declare-fun arrayNoDuplicates!0 (array!94507 (_ BitVec 32) List!32335) Bool)

(assert (=> b!1383126 (= res!924826 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32332))))

(declare-fun b!1383124 () Bool)

(declare-fun res!924825 () Bool)

(assert (=> b!1383124 (=> (not res!924825) (not e!783970))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383124 (= res!924825 (and (= (size!46178 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46178 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46178 a!2938))))))

(assert (= (and start!118286 res!924828) b!1383124))

(assert (= (and b!1383124 res!924825) b!1383125))

(assert (= (and b!1383125 res!924827) b!1383126))

(assert (= (and b!1383126 res!924826) b!1383127))

(declare-fun m!1268285 () Bool)

(assert (=> b!1383125 m!1268285))

(assert (=> b!1383125 m!1268285))

(declare-fun m!1268287 () Bool)

(assert (=> b!1383125 m!1268287))

(declare-fun m!1268289 () Bool)

(assert (=> b!1383127 m!1268289))

(declare-fun m!1268291 () Bool)

(assert (=> start!118286 m!1268291))

(declare-fun m!1268293 () Bool)

(assert (=> start!118286 m!1268293))

(declare-fun m!1268295 () Bool)

(assert (=> b!1383126 m!1268295))

(push 1)

(assert (not b!1383125))

(assert (not start!118286))

(assert (not b!1383126))

(assert (not b!1383127))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

