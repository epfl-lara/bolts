; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134852 () Bool)

(assert start!134852)

(declare-fun res!1073907 () Bool)

(declare-fun e!876353 () Bool)

(assert (=> start!134852 (=> (not res!1073907) (not e!876353))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134852 (= res!1073907 (validMask!0 mask!889))))

(assert (=> start!134852 e!876353))

(assert (=> start!134852 true))

(declare-datatypes ((array!104892 0))(
  ( (array!104893 (arr!50612 (Array (_ BitVec 32) (_ BitVec 64))) (size!51163 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104892)

(declare-fun array_inv!39257 (array!104892) Bool)

(assert (=> start!134852 (array_inv!39257 _keys!600)))

(declare-fun b!1571652 () Bool)

(declare-fun res!1073909 () Bool)

(assert (=> b!1571652 (=> (not res!1073909) (not e!876353))))

(assert (=> b!1571652 (= res!1073909 (= (size!51163 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571653 () Bool)

(declare-fun res!1073908 () Bool)

(assert (=> b!1571653 (=> (not res!1073908) (not e!876353))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571653 (= res!1073908 (validKeyInArray!0 k0!754))))

(declare-fun b!1571654 () Bool)

(assert (=> b!1571654 (= e!876353 false)))

(declare-fun lt!673660 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571654 (= lt!673660 (toIndex!0 k0!754 mask!889))))

(assert (= (and start!134852 res!1073907) b!1571652))

(assert (= (and b!1571652 res!1073909) b!1571653))

(assert (= (and b!1571653 res!1073908) b!1571654))

(declare-fun m!1445577 () Bool)

(assert (=> start!134852 m!1445577))

(declare-fun m!1445579 () Bool)

(assert (=> start!134852 m!1445579))

(declare-fun m!1445581 () Bool)

(assert (=> b!1571653 m!1445581))

(declare-fun m!1445583 () Bool)

(assert (=> b!1571654 m!1445583))

(check-sat (not b!1571653) (not start!134852) (not b!1571654))
(check-sat)
