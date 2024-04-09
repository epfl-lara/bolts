; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134918 () Bool)

(assert start!134918)

(declare-fun res!1074099 () Bool)

(declare-fun e!876506 () Bool)

(assert (=> start!134918 (=> (not res!1074099) (not e!876506))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134918 (= res!1074099 (validMask!0 mask!889))))

(assert (=> start!134918 e!876506))

(assert (=> start!134918 true))

(declare-datatypes ((array!104931 0))(
  ( (array!104932 (arr!50630 (Array (_ BitVec 32) (_ BitVec 64))) (size!51181 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104931)

(declare-fun array_inv!39275 (array!104931) Bool)

(assert (=> start!134918 (array_inv!39275 _keys!600)))

(declare-fun b!1571895 () Bool)

(declare-fun res!1074101 () Bool)

(assert (=> b!1571895 (=> (not res!1074101) (not e!876506))))

(assert (=> b!1571895 (= res!1074101 (= (size!51181 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571896 () Bool)

(declare-fun res!1074100 () Bool)

(assert (=> b!1571896 (=> (not res!1074100) (not e!876506))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571896 (= res!1074100 (validKeyInArray!0 k0!754))))

(declare-fun b!1571897 () Bool)

(assert (=> b!1571897 (= e!876506 false)))

(declare-datatypes ((SeekEntryResult!13559 0))(
  ( (MissingZero!13559 (index!56633 (_ BitVec 32))) (Found!13559 (index!56634 (_ BitVec 32))) (Intermediate!13559 (undefined!14371 Bool) (index!56635 (_ BitVec 32)) (x!141406 (_ BitVec 32))) (Undefined!13559) (MissingVacant!13559 (index!56636 (_ BitVec 32))) )
))
(declare-fun lt!673750 () SeekEntryResult!13559)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104931 (_ BitVec 32)) SeekEntryResult!13559)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571897 (= lt!673750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134918 res!1074099) b!1571895))

(assert (= (and b!1571895 res!1074101) b!1571896))

(assert (= (and b!1571896 res!1074100) b!1571897))

(declare-fun m!1445789 () Bool)

(assert (=> start!134918 m!1445789))

(declare-fun m!1445791 () Bool)

(assert (=> start!134918 m!1445791))

(declare-fun m!1445793 () Bool)

(assert (=> b!1571896 m!1445793))

(declare-fun m!1445795 () Bool)

(assert (=> b!1571897 m!1445795))

(assert (=> b!1571897 m!1445795))

(declare-fun m!1445797 () Bool)

(assert (=> b!1571897 m!1445797))

(check-sat (not b!1571897) (not start!134918) (not b!1571896))
