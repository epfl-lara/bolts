; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134858 () Bool)

(assert start!134858)

(declare-fun res!1073934 () Bool)

(declare-fun e!876372 () Bool)

(assert (=> start!134858 (=> (not res!1073934) (not e!876372))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134858 (= res!1073934 (validMask!0 mask!889))))

(assert (=> start!134858 e!876372))

(assert (=> start!134858 true))

(declare-datatypes ((array!104898 0))(
  ( (array!104899 (arr!50615 (Array (_ BitVec 32) (_ BitVec 64))) (size!51166 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104898)

(declare-fun array_inv!39260 (array!104898) Bool)

(assert (=> start!134858 (array_inv!39260 _keys!600)))

(declare-fun b!1571679 () Bool)

(declare-fun res!1073936 () Bool)

(assert (=> b!1571679 (=> (not res!1073936) (not e!876372))))

(assert (=> b!1571679 (= res!1073936 (= (size!51166 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571680 () Bool)

(declare-fun res!1073935 () Bool)

(assert (=> b!1571680 (=> (not res!1073935) (not e!876372))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571680 (= res!1073935 (validKeyInArray!0 k0!754))))

(declare-fun b!1571681 () Bool)

(assert (=> b!1571681 (= e!876372 false)))

(declare-datatypes ((SeekEntryResult!13544 0))(
  ( (MissingZero!13544 (index!56573 (_ BitVec 32))) (Found!13544 (index!56574 (_ BitVec 32))) (Intermediate!13544 (undefined!14356 Bool) (index!56575 (_ BitVec 32)) (x!141345 (_ BitVec 32))) (Undefined!13544) (MissingVacant!13544 (index!56576 (_ BitVec 32))) )
))
(declare-fun lt!673669 () SeekEntryResult!13544)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104898 (_ BitVec 32)) SeekEntryResult!13544)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571681 (= lt!673669 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134858 res!1073934) b!1571679))

(assert (= (and b!1571679 res!1073936) b!1571680))

(assert (= (and b!1571680 res!1073935) b!1571681))

(declare-fun m!1445603 () Bool)

(assert (=> start!134858 m!1445603))

(declare-fun m!1445605 () Bool)

(assert (=> start!134858 m!1445605))

(declare-fun m!1445607 () Bool)

(assert (=> b!1571680 m!1445607))

(declare-fun m!1445609 () Bool)

(assert (=> b!1571681 m!1445609))

(assert (=> b!1571681 m!1445609))

(declare-fun m!1445611 () Bool)

(assert (=> b!1571681 m!1445611))

(check-sat (not b!1571680) (not b!1571681) (not start!134858))
(check-sat)
