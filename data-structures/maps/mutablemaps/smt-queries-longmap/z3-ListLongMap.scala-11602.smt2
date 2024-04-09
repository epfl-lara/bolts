; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135452 () Bool)

(assert start!135452)

(declare-fun res!1075243 () Bool)

(declare-fun e!877677 () Bool)

(assert (=> start!135452 (=> (not res!1075243) (not e!877677))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135452 (= res!1075243 (validMask!0 mask!877))))

(assert (=> start!135452 e!877677))

(assert (=> start!135452 true))

(declare-datatypes ((array!105123 0))(
  ( (array!105124 (arr!50708 (Array (_ BitVec 32) (_ BitVec 64))) (size!51259 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105123)

(declare-fun array_inv!39353 (array!105123) Bool)

(assert (=> start!135452 (array_inv!39353 _keys!591)))

(declare-fun b!1573812 () Bool)

(declare-fun res!1075244 () Bool)

(assert (=> b!1573812 (=> (not res!1075244) (not e!877677))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573812 (= res!1075244 (and (= (size!51259 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51259 _keys!591)) (bvslt i!537 (size!51259 _keys!591))))))

(declare-fun b!1573813 () Bool)

(declare-fun res!1075242 () Bool)

(assert (=> b!1573813 (=> (not res!1075242) (not e!877677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573813 (= res!1075242 (validKeyInArray!0 (select (arr!50708 _keys!591) i!537)))))

(declare-fun b!1573814 () Bool)

(assert (=> b!1573814 (= e!877677 (not true))))

(declare-fun arrayContainsKey!0 (array!105123 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573814 (arrayContainsKey!0 _keys!591 (select (arr!50708 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52056 0))(
  ( (Unit!52057) )
))
(declare-fun lt!674587 () Unit!52056)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105123 (_ BitVec 64) (_ BitVec 32)) Unit!52056)

(assert (=> b!1573814 (= lt!674587 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50708 _keys!591) i!537) i!537))))

(assert (= (and start!135452 res!1075243) b!1573812))

(assert (= (and b!1573812 res!1075244) b!1573813))

(assert (= (and b!1573813 res!1075242) b!1573814))

(declare-fun m!1447039 () Bool)

(assert (=> start!135452 m!1447039))

(declare-fun m!1447041 () Bool)

(assert (=> start!135452 m!1447041))

(declare-fun m!1447043 () Bool)

(assert (=> b!1573813 m!1447043))

(assert (=> b!1573813 m!1447043))

(declare-fun m!1447045 () Bool)

(assert (=> b!1573813 m!1447045))

(assert (=> b!1573814 m!1447043))

(assert (=> b!1573814 m!1447043))

(declare-fun m!1447047 () Bool)

(assert (=> b!1573814 m!1447047))

(assert (=> b!1573814 m!1447043))

(declare-fun m!1447049 () Bool)

(assert (=> b!1573814 m!1447049))

(check-sat (not b!1573813) (not b!1573814) (not start!135452))
