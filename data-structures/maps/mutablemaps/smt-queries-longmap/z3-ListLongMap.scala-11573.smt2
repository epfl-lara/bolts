; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134870 () Bool)

(assert start!134870)

(declare-fun res!1073988 () Bool)

(declare-fun e!876407 () Bool)

(assert (=> start!134870 (=> (not res!1073988) (not e!876407))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134870 (= res!1073988 (validMask!0 mask!889))))

(assert (=> start!134870 e!876407))

(assert (=> start!134870 true))

(declare-datatypes ((array!104910 0))(
  ( (array!104911 (arr!50621 (Array (_ BitVec 32) (_ BitVec 64))) (size!51172 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104910)

(declare-fun array_inv!39266 (array!104910) Bool)

(assert (=> start!134870 (array_inv!39266 _keys!600)))

(declare-fun b!1571733 () Bool)

(declare-fun res!1073990 () Bool)

(assert (=> b!1571733 (=> (not res!1073990) (not e!876407))))

(assert (=> b!1571733 (= res!1073990 (= (size!51172 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571734 () Bool)

(declare-fun res!1073989 () Bool)

(assert (=> b!1571734 (=> (not res!1073989) (not e!876407))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571734 (= res!1073989 (validKeyInArray!0 k0!754))))

(declare-fun b!1571735 () Bool)

(assert (=> b!1571735 (= e!876407 false)))

(declare-datatypes ((SeekEntryResult!13550 0))(
  ( (MissingZero!13550 (index!56597 (_ BitVec 32))) (Found!13550 (index!56598 (_ BitVec 32))) (Intermediate!13550 (undefined!14362 Bool) (index!56599 (_ BitVec 32)) (x!141367 (_ BitVec 32))) (Undefined!13550) (MissingVacant!13550 (index!56600 (_ BitVec 32))) )
))
(declare-fun lt!673687 () SeekEntryResult!13550)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104910 (_ BitVec 32)) SeekEntryResult!13550)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571735 (= lt!673687 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134870 res!1073988) b!1571733))

(assert (= (and b!1571733 res!1073990) b!1571734))

(assert (= (and b!1571734 res!1073989) b!1571735))

(declare-fun m!1445669 () Bool)

(assert (=> start!134870 m!1445669))

(declare-fun m!1445671 () Bool)

(assert (=> start!134870 m!1445671))

(declare-fun m!1445673 () Bool)

(assert (=> b!1571734 m!1445673))

(declare-fun m!1445675 () Bool)

(assert (=> b!1571735 m!1445675))

(assert (=> b!1571735 m!1445675))

(declare-fun m!1445677 () Bool)

(assert (=> b!1571735 m!1445677))

(check-sat (not b!1571734) (not b!1571735) (not start!134870))
(check-sat)
