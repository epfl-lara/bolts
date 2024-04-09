; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118296 () Bool)

(assert start!118296)

(declare-fun b!1383187 () Bool)

(declare-fun e!784000 () Bool)

(assert (=> b!1383187 (= e!784000 false)))

(declare-fun lt!608512 () Bool)

(declare-datatypes ((array!94517 0))(
  ( (array!94518 (arr!45632 (Array (_ BitVec 32) (_ BitVec 64))) (size!46183 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94517)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94517 (_ BitVec 32)) Bool)

(assert (=> b!1383187 (= lt!608512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383185 () Bool)

(declare-fun res!924888 () Bool)

(assert (=> b!1383185 (=> (not res!924888) (not e!784000))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383185 (= res!924888 (validKeyInArray!0 (select (arr!45632 a!2938) i!1065)))))

(declare-fun b!1383186 () Bool)

(declare-fun res!924887 () Bool)

(assert (=> b!1383186 (=> (not res!924887) (not e!784000))))

(declare-datatypes ((List!32340 0))(
  ( (Nil!32337) (Cons!32336 (h!33545 (_ BitVec 64)) (t!47041 List!32340)) )
))
(declare-fun arrayNoDuplicates!0 (array!94517 (_ BitVec 32) List!32340) Bool)

(assert (=> b!1383186 (= res!924887 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32337))))

(declare-fun res!924885 () Bool)

(assert (=> start!118296 (=> (not res!924885) (not e!784000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118296 (= res!924885 (validMask!0 mask!2987))))

(assert (=> start!118296 e!784000))

(assert (=> start!118296 true))

(declare-fun array_inv!34577 (array!94517) Bool)

(assert (=> start!118296 (array_inv!34577 a!2938)))

(declare-fun b!1383184 () Bool)

(declare-fun res!924886 () Bool)

(assert (=> b!1383184 (=> (not res!924886) (not e!784000))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383184 (= res!924886 (and (= (size!46183 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46183 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46183 a!2938))))))

(assert (= (and start!118296 res!924885) b!1383184))

(assert (= (and b!1383184 res!924886) b!1383185))

(assert (= (and b!1383185 res!924888) b!1383186))

(assert (= (and b!1383186 res!924887) b!1383187))

(declare-fun m!1268345 () Bool)

(assert (=> b!1383187 m!1268345))

(declare-fun m!1268347 () Bool)

(assert (=> b!1383185 m!1268347))

(assert (=> b!1383185 m!1268347))

(declare-fun m!1268349 () Bool)

(assert (=> b!1383185 m!1268349))

(declare-fun m!1268351 () Bool)

(assert (=> b!1383186 m!1268351))

(declare-fun m!1268353 () Bool)

(assert (=> start!118296 m!1268353))

(declare-fun m!1268355 () Bool)

(assert (=> start!118296 m!1268355))

(check-sat (not b!1383185) (not start!118296) (not b!1383186) (not b!1383187))
