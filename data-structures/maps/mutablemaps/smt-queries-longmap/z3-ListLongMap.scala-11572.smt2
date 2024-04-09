; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134864 () Bool)

(assert start!134864)

(declare-fun res!1073963 () Bool)

(declare-fun e!876390 () Bool)

(assert (=> start!134864 (=> (not res!1073963) (not e!876390))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134864 (= res!1073963 (validMask!0 mask!889))))

(assert (=> start!134864 e!876390))

(assert (=> start!134864 true))

(declare-datatypes ((array!104904 0))(
  ( (array!104905 (arr!50618 (Array (_ BitVec 32) (_ BitVec 64))) (size!51169 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104904)

(declare-fun array_inv!39263 (array!104904) Bool)

(assert (=> start!134864 (array_inv!39263 _keys!600)))

(declare-fun b!1571706 () Bool)

(declare-fun res!1073962 () Bool)

(assert (=> b!1571706 (=> (not res!1073962) (not e!876390))))

(assert (=> b!1571706 (= res!1073962 (= (size!51169 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571707 () Bool)

(declare-fun res!1073961 () Bool)

(assert (=> b!1571707 (=> (not res!1073961) (not e!876390))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571707 (= res!1073961 (validKeyInArray!0 k0!754))))

(declare-datatypes ((SeekEntryResult!13547 0))(
  ( (MissingZero!13547 (index!56585 (_ BitVec 32))) (Found!13547 (index!56586 (_ BitVec 32))) (Intermediate!13547 (undefined!14359 Bool) (index!56587 (_ BitVec 32)) (x!141356 (_ BitVec 32))) (Undefined!13547) (MissingVacant!13547 (index!56588 (_ BitVec 32))) )
))
(declare-fun lt!673678 () SeekEntryResult!13547)

(declare-fun b!1571708 () Bool)

(get-info :version)

(assert (=> b!1571708 (= e!876390 (and ((_ is Intermediate!13547) lt!673678) (not (undefined!14359 lt!673678)) (not (= (select (arr!50618 _keys!600) (index!56587 lt!673678)) k0!754)) (not (= (select (arr!50618 _keys!600) (index!56587 lt!673678)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50618 _keys!600) (index!56587 lt!673678)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56587 lt!673678) #b00000000000000000000000000000000) (bvslt (index!56587 lt!673678) (bvadd #b00000000000000000000000000000001 mask!889)) (bvslt mask!889 #b00000000000000000000000000000000)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104904 (_ BitVec 32)) SeekEntryResult!13547)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571708 (= lt!673678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!134864 res!1073963) b!1571706))

(assert (= (and b!1571706 res!1073962) b!1571707))

(assert (= (and b!1571707 res!1073961) b!1571708))

(declare-fun m!1445635 () Bool)

(assert (=> start!134864 m!1445635))

(declare-fun m!1445637 () Bool)

(assert (=> start!134864 m!1445637))

(declare-fun m!1445639 () Bool)

(assert (=> b!1571707 m!1445639))

(declare-fun m!1445641 () Bool)

(assert (=> b!1571708 m!1445641))

(declare-fun m!1445643 () Bool)

(assert (=> b!1571708 m!1445643))

(assert (=> b!1571708 m!1445643))

(declare-fun m!1445645 () Bool)

(assert (=> b!1571708 m!1445645))

(check-sat (not start!134864) (not b!1571708) (not b!1571707))
(check-sat)
