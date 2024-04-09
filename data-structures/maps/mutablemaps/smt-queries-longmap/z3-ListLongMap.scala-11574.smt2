; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134876 () Bool)

(assert start!134876)

(declare-fun res!1074015 () Bool)

(declare-fun e!876426 () Bool)

(assert (=> start!134876 (=> (not res!1074015) (not e!876426))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134876 (= res!1074015 (validMask!0 mask!889))))

(assert (=> start!134876 e!876426))

(assert (=> start!134876 true))

(declare-datatypes ((array!104916 0))(
  ( (array!104917 (arr!50624 (Array (_ BitVec 32) (_ BitVec 64))) (size!51175 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104916)

(declare-fun array_inv!39269 (array!104916) Bool)

(assert (=> start!134876 (array_inv!39269 _keys!600)))

(declare-fun b!1571760 () Bool)

(declare-fun res!1074017 () Bool)

(assert (=> b!1571760 (=> (not res!1074017) (not e!876426))))

(assert (=> b!1571760 (= res!1074017 (= (size!51175 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571761 () Bool)

(declare-fun res!1074016 () Bool)

(assert (=> b!1571761 (=> (not res!1074016) (not e!876426))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571761 (= res!1074016 (validKeyInArray!0 k0!754))))

(declare-fun b!1571762 () Bool)

(assert (=> b!1571762 (= e!876426 false)))

(declare-datatypes ((SeekEntryResult!13553 0))(
  ( (MissingZero!13553 (index!56609 (_ BitVec 32))) (Found!13553 (index!56610 (_ BitVec 32))) (Intermediate!13553 (undefined!14365 Bool) (index!56611 (_ BitVec 32)) (x!141378 (_ BitVec 32))) (Undefined!13553) (MissingVacant!13553 (index!56612 (_ BitVec 32))) )
))
(declare-fun lt!673696 () SeekEntryResult!13553)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104916 (_ BitVec 32)) SeekEntryResult!13553)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571762 (= lt!673696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134876 res!1074015) b!1571760))

(assert (= (and b!1571760 res!1074017) b!1571761))

(assert (= (and b!1571761 res!1074016) b!1571762))

(declare-fun m!1445699 () Bool)

(assert (=> start!134876 m!1445699))

(declare-fun m!1445701 () Bool)

(assert (=> start!134876 m!1445701))

(declare-fun m!1445703 () Bool)

(assert (=> b!1571761 m!1445703))

(declare-fun m!1445705 () Bool)

(assert (=> b!1571762 m!1445705))

(assert (=> b!1571762 m!1445705))

(declare-fun m!1445707 () Bool)

(assert (=> b!1571762 m!1445707))

(check-sat (not b!1571762) (not b!1571761) (not start!134876))
(check-sat)
