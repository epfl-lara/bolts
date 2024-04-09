; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135602 () Bool)

(assert start!135602)

(declare-fun res!1075692 () Bool)

(declare-fun e!877983 () Bool)

(assert (=> start!135602 (=> (not res!1075692) (not e!877983))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135602 (= res!1075692 (validMask!0 mask!898))))

(assert (=> start!135602 e!877983))

(assert (=> start!135602 true))

(declare-datatypes ((array!105222 0))(
  ( (array!105223 (arr!50753 (Array (_ BitVec 32) (_ BitVec 64))) (size!51304 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105222)

(declare-fun array_inv!39398 (array!105222) Bool)

(assert (=> start!135602 (array_inv!39398 _keys!605)))

(declare-fun b!1574262 () Bool)

(declare-fun res!1075694 () Bool)

(assert (=> b!1574262 (=> (not res!1075694) (not e!877983))))

(assert (=> b!1574262 (= res!1075694 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51304 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574263 () Bool)

(declare-fun res!1075693 () Bool)

(assert (=> b!1574263 (=> (not res!1075693) (not e!877983))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574263 (= res!1075693 (validKeyInArray!0 k0!761))))

(declare-fun b!1574264 () Bool)

(assert (=> b!1574264 (= e!877983 false)))

(declare-fun lt!674704 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574264 (= lt!674704 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135602 res!1075692) b!1574262))

(assert (= (and b!1574262 res!1075694) b!1574263))

(assert (= (and b!1574263 res!1075693) b!1574264))

(declare-fun m!1447551 () Bool)

(assert (=> start!135602 m!1447551))

(declare-fun m!1447553 () Bool)

(assert (=> start!135602 m!1447553))

(declare-fun m!1447555 () Bool)

(assert (=> b!1574263 m!1447555))

(declare-fun m!1447557 () Bool)

(assert (=> b!1574264 m!1447557))

(check-sat (not b!1574264) (not start!135602) (not b!1574263))
