; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134874 () Bool)

(assert start!134874)

(declare-fun res!1074008 () Bool)

(declare-fun e!876420 () Bool)

(assert (=> start!134874 (=> (not res!1074008) (not e!876420))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134874 (= res!1074008 (validMask!0 mask!889))))

(assert (=> start!134874 e!876420))

(assert (=> start!134874 true))

(declare-datatypes ((array!104914 0))(
  ( (array!104915 (arr!50623 (Array (_ BitVec 32) (_ BitVec 64))) (size!51174 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104914)

(declare-fun array_inv!39268 (array!104914) Bool)

(assert (=> start!134874 (array_inv!39268 _keys!600)))

(declare-fun b!1571751 () Bool)

(declare-fun res!1074007 () Bool)

(assert (=> b!1571751 (=> (not res!1074007) (not e!876420))))

(assert (=> b!1571751 (= res!1074007 (= (size!51174 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571752 () Bool)

(declare-fun res!1074006 () Bool)

(assert (=> b!1571752 (=> (not res!1074006) (not e!876420))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571752 (= res!1074006 (validKeyInArray!0 k!754))))

(declare-fun b!1571753 () Bool)

(assert (=> b!1571753 (= e!876420 false)))

(declare-datatypes ((SeekEntryResult!13552 0))(
  ( (MissingZero!13552 (index!56605 (_ BitVec 32))) (Found!13552 (index!56606 (_ BitVec 32))) (Intermediate!13552 (undefined!14364 Bool) (index!56607 (_ BitVec 32)) (x!141377 (_ BitVec 32))) (Undefined!13552) (MissingVacant!13552 (index!56608 (_ BitVec 32))) )
))
(declare-fun lt!673693 () SeekEntryResult!13552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104914 (_ BitVec 32)) SeekEntryResult!13552)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571753 (= lt!673693 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134874 res!1074008) b!1571751))

(assert (= (and b!1571751 res!1074007) b!1571752))

(assert (= (and b!1571752 res!1074006) b!1571753))

(declare-fun m!1445689 () Bool)

(assert (=> start!134874 m!1445689))

(declare-fun m!1445691 () Bool)

(assert (=> start!134874 m!1445691))

(declare-fun m!1445693 () Bool)

(assert (=> b!1571752 m!1445693))

(declare-fun m!1445695 () Bool)

(assert (=> b!1571753 m!1445695))

(assert (=> b!1571753 m!1445695))

(declare-fun m!1445697 () Bool)

(assert (=> b!1571753 m!1445697))

(push 1)

(assert (not b!1571752))

(assert (not start!134874))

(assert (not b!1571753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

