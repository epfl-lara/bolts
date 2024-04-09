; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118248 () Bool)

(assert start!118248)

(declare-fun res!924601 () Bool)

(declare-fun e!783856 () Bool)

(assert (=> start!118248 (=> (not res!924601) (not e!783856))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118248 (= res!924601 (validMask!0 mask!2987))))

(assert (=> start!118248 e!783856))

(assert (=> start!118248 true))

(declare-datatypes ((array!94469 0))(
  ( (array!94470 (arr!45608 (Array (_ BitVec 32) (_ BitVec 64))) (size!46159 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94469)

(declare-fun array_inv!34553 (array!94469) Bool)

(assert (=> start!118248 (array_inv!34553 a!2938)))

(declare-fun b!1382900 () Bool)

(declare-fun res!924602 () Bool)

(assert (=> b!1382900 (=> (not res!924602) (not e!783856))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382900 (= res!924602 (and (= (size!46159 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46159 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46159 a!2938))))))

(declare-fun b!1382901 () Bool)

(declare-fun res!924603 () Bool)

(assert (=> b!1382901 (=> (not res!924603) (not e!783856))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382901 (= res!924603 (validKeyInArray!0 (select (arr!45608 a!2938) i!1065)))))

(declare-fun b!1382902 () Bool)

(assert (=> b!1382902 (= e!783856 false)))

(declare-fun lt!608449 () Bool)

(declare-datatypes ((List!32316 0))(
  ( (Nil!32313) (Cons!32312 (h!33521 (_ BitVec 64)) (t!47017 List!32316)) )
))
(declare-fun arrayNoDuplicates!0 (array!94469 (_ BitVec 32) List!32316) Bool)

(assert (=> b!1382902 (= lt!608449 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32313))))

(assert (= (and start!118248 res!924601) b!1382900))

(assert (= (and b!1382900 res!924602) b!1382901))

(assert (= (and b!1382901 res!924603) b!1382902))

(declare-fun m!1268067 () Bool)

(assert (=> start!118248 m!1268067))

(declare-fun m!1268069 () Bool)

(assert (=> start!118248 m!1268069))

(declare-fun m!1268071 () Bool)

(assert (=> b!1382901 m!1268071))

(assert (=> b!1382901 m!1268071))

(declare-fun m!1268073 () Bool)

(assert (=> b!1382901 m!1268073))

(declare-fun m!1268075 () Bool)

(assert (=> b!1382902 m!1268075))

(check-sat (not start!118248) (not b!1382901) (not b!1382902))
