; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118292 () Bool)

(assert start!118292)

(declare-fun b!1383162 () Bool)

(declare-fun res!924864 () Bool)

(declare-fun e!783988 () Bool)

(assert (=> b!1383162 (=> (not res!924864) (not e!783988))))

(declare-datatypes ((array!94513 0))(
  ( (array!94514 (arr!45630 (Array (_ BitVec 32) (_ BitVec 64))) (size!46181 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94513)

(declare-datatypes ((List!32338 0))(
  ( (Nil!32335) (Cons!32334 (h!33543 (_ BitVec 64)) (t!47039 List!32338)) )
))
(declare-fun arrayNoDuplicates!0 (array!94513 (_ BitVec 32) List!32338) Bool)

(assert (=> b!1383162 (= res!924864 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32335))))

(declare-fun b!1383163 () Bool)

(assert (=> b!1383163 (= e!783988 false)))

(declare-fun lt!608506 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94513 (_ BitVec 32)) Bool)

(assert (=> b!1383163 (= lt!608506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383160 () Bool)

(declare-fun res!924863 () Bool)

(assert (=> b!1383160 (=> (not res!924863) (not e!783988))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383160 (= res!924863 (and (= (size!46181 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46181 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46181 a!2938))))))

(declare-fun b!1383161 () Bool)

(declare-fun res!924861 () Bool)

(assert (=> b!1383161 (=> (not res!924861) (not e!783988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383161 (= res!924861 (validKeyInArray!0 (select (arr!45630 a!2938) i!1065)))))

(declare-fun res!924862 () Bool)

(assert (=> start!118292 (=> (not res!924862) (not e!783988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118292 (= res!924862 (validMask!0 mask!2987))))

(assert (=> start!118292 e!783988))

(assert (=> start!118292 true))

(declare-fun array_inv!34575 (array!94513) Bool)

(assert (=> start!118292 (array_inv!34575 a!2938)))

(assert (= (and start!118292 res!924862) b!1383160))

(assert (= (and b!1383160 res!924863) b!1383161))

(assert (= (and b!1383161 res!924861) b!1383162))

(assert (= (and b!1383162 res!924864) b!1383163))

(declare-fun m!1268321 () Bool)

(assert (=> b!1383162 m!1268321))

(declare-fun m!1268323 () Bool)

(assert (=> b!1383163 m!1268323))

(declare-fun m!1268325 () Bool)

(assert (=> b!1383161 m!1268325))

(assert (=> b!1383161 m!1268325))

(declare-fun m!1268327 () Bool)

(assert (=> b!1383161 m!1268327))

(declare-fun m!1268329 () Bool)

(assert (=> start!118292 m!1268329))

(declare-fun m!1268331 () Bool)

(assert (=> start!118292 m!1268331))

(push 1)

(assert (not b!1383161))

(assert (not start!118292))

(assert (not b!1383162))

(assert (not b!1383163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

