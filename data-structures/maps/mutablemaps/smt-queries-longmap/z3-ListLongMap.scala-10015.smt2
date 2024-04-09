; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118236 () Bool)

(assert start!118236)

(declare-fun res!924549 () Bool)

(declare-fun e!783821 () Bool)

(assert (=> start!118236 (=> (not res!924549) (not e!783821))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118236 (= res!924549 (validMask!0 mask!2987))))

(assert (=> start!118236 e!783821))

(assert (=> start!118236 true))

(declare-datatypes ((array!94457 0))(
  ( (array!94458 (arr!45602 (Array (_ BitVec 32) (_ BitVec 64))) (size!46153 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94457)

(declare-fun array_inv!34547 (array!94457) Bool)

(assert (=> start!118236 (array_inv!34547 a!2938)))

(declare-fun b!1382846 () Bool)

(declare-fun res!924548 () Bool)

(assert (=> b!1382846 (=> (not res!924548) (not e!783821))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382846 (= res!924548 (and (= (size!46153 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46153 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46153 a!2938))))))

(declare-fun b!1382847 () Bool)

(declare-fun res!924547 () Bool)

(assert (=> b!1382847 (=> (not res!924547) (not e!783821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382847 (= res!924547 (validKeyInArray!0 (select (arr!45602 a!2938) i!1065)))))

(declare-fun b!1382848 () Bool)

(assert (=> b!1382848 (= e!783821 false)))

(declare-fun lt!608431 () Bool)

(declare-datatypes ((List!32310 0))(
  ( (Nil!32307) (Cons!32306 (h!33515 (_ BitVec 64)) (t!47011 List!32310)) )
))
(declare-fun arrayNoDuplicates!0 (array!94457 (_ BitVec 32) List!32310) Bool)

(assert (=> b!1382848 (= lt!608431 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32307))))

(assert (= (and start!118236 res!924549) b!1382846))

(assert (= (and b!1382846 res!924548) b!1382847))

(assert (= (and b!1382847 res!924547) b!1382848))

(declare-fun m!1268007 () Bool)

(assert (=> start!118236 m!1268007))

(declare-fun m!1268009 () Bool)

(assert (=> start!118236 m!1268009))

(declare-fun m!1268011 () Bool)

(assert (=> b!1382847 m!1268011))

(assert (=> b!1382847 m!1268011))

(declare-fun m!1268013 () Bool)

(assert (=> b!1382847 m!1268013))

(declare-fun m!1268015 () Bool)

(assert (=> b!1382848 m!1268015))

(check-sat (not b!1382848) (not start!118236) (not b!1382847))
