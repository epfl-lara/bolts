; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118266 () Bool)

(assert start!118266)

(declare-fun b!1383004 () Bool)

(declare-fun res!924707 () Bool)

(declare-fun e!783910 () Bool)

(assert (=> b!1383004 (=> (not res!924707) (not e!783910))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94487 0))(
  ( (array!94488 (arr!45617 (Array (_ BitVec 32) (_ BitVec 64))) (size!46168 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94487)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383004 (= res!924707 (and (= (size!46168 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46168 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46168 a!2938))))))

(declare-fun b!1383007 () Bool)

(assert (=> b!1383007 (= e!783910 false)))

(declare-fun lt!608467 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94487 (_ BitVec 32)) Bool)

(assert (=> b!1383007 (= lt!608467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924708 () Bool)

(assert (=> start!118266 (=> (not res!924708) (not e!783910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118266 (= res!924708 (validMask!0 mask!2987))))

(assert (=> start!118266 e!783910))

(assert (=> start!118266 true))

(declare-fun array_inv!34562 (array!94487) Bool)

(assert (=> start!118266 (array_inv!34562 a!2938)))

(declare-fun b!1383005 () Bool)

(declare-fun res!924706 () Bool)

(assert (=> b!1383005 (=> (not res!924706) (not e!783910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383005 (= res!924706 (validKeyInArray!0 (select (arr!45617 a!2938) i!1065)))))

(declare-fun b!1383006 () Bool)

(declare-fun res!924705 () Bool)

(assert (=> b!1383006 (=> (not res!924705) (not e!783910))))

(declare-datatypes ((List!32325 0))(
  ( (Nil!32322) (Cons!32321 (h!33530 (_ BitVec 64)) (t!47026 List!32325)) )
))
(declare-fun arrayNoDuplicates!0 (array!94487 (_ BitVec 32) List!32325) Bool)

(assert (=> b!1383006 (= res!924705 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32322))))

(assert (= (and start!118266 res!924708) b!1383004))

(assert (= (and b!1383004 res!924707) b!1383005))

(assert (= (and b!1383005 res!924706) b!1383006))

(assert (= (and b!1383006 res!924705) b!1383007))

(declare-fun m!1268165 () Bool)

(assert (=> b!1383007 m!1268165))

(declare-fun m!1268167 () Bool)

(assert (=> start!118266 m!1268167))

(declare-fun m!1268169 () Bool)

(assert (=> start!118266 m!1268169))

(declare-fun m!1268171 () Bool)

(assert (=> b!1383005 m!1268171))

(assert (=> b!1383005 m!1268171))

(declare-fun m!1268173 () Bool)

(assert (=> b!1383005 m!1268173))

(declare-fun m!1268175 () Bool)

(assert (=> b!1383006 m!1268175))

(check-sat (not b!1383005) (not start!118266) (not b!1383006) (not b!1383007))
