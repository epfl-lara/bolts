; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134866 () Bool)

(assert start!134866)

(declare-fun res!1073970 () Bool)

(declare-fun e!876395 () Bool)

(assert (=> start!134866 (=> (not res!1073970) (not e!876395))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134866 (= res!1073970 (validMask!0 mask!889))))

(assert (=> start!134866 e!876395))

(assert (=> start!134866 true))

(declare-datatypes ((array!104906 0))(
  ( (array!104907 (arr!50619 (Array (_ BitVec 32) (_ BitVec 64))) (size!51170 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104906)

(declare-fun array_inv!39264 (array!104906) Bool)

(assert (=> start!134866 (array_inv!39264 _keys!600)))

(declare-fun b!1571715 () Bool)

(declare-fun res!1073971 () Bool)

(assert (=> b!1571715 (=> (not res!1073971) (not e!876395))))

(assert (=> b!1571715 (= res!1073971 (= (size!51170 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571716 () Bool)

(declare-fun res!1073972 () Bool)

(assert (=> b!1571716 (=> (not res!1073972) (not e!876395))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571716 (= res!1073972 (validKeyInArray!0 k!754))))

(declare-datatypes ((SeekEntryResult!13548 0))(
  ( (MissingZero!13548 (index!56589 (_ BitVec 32))) (Found!13548 (index!56590 (_ BitVec 32))) (Intermediate!13548 (undefined!14360 Bool) (index!56591 (_ BitVec 32)) (x!141357 (_ BitVec 32))) (Undefined!13548) (MissingVacant!13548 (index!56592 (_ BitVec 32))) )
))
(declare-fun lt!673681 () SeekEntryResult!13548)

(declare-fun b!1571717 () Bool)

(assert (=> b!1571717 (= e!876395 (and (is-Intermediate!13548 lt!673681) (not (undefined!14360 lt!673681)) (not (= (select (arr!50619 _keys!600) (index!56591 lt!673681)) k!754)) (not (= (select (arr!50619 _keys!600) (index!56591 lt!673681)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50619 _keys!600) (index!56591 lt!673681)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56591 lt!673681) #b00000000000000000000000000000000) (bvslt (index!56591 lt!673681) (bvadd #b00000000000000000000000000000001 mask!889)) (bvslt mask!889 #b00000000000000000000000000000000)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104906 (_ BitVec 32)) SeekEntryResult!13548)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571717 (= lt!673681 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134866 res!1073970) b!1571715))

(assert (= (and b!1571715 res!1073971) b!1571716))

(assert (= (and b!1571716 res!1073972) b!1571717))

(declare-fun m!1445647 () Bool)

(assert (=> start!134866 m!1445647))

(declare-fun m!1445649 () Bool)

(assert (=> start!134866 m!1445649))

(declare-fun m!1445651 () Bool)

(assert (=> b!1571716 m!1445651))

(declare-fun m!1445653 () Bool)

(assert (=> b!1571717 m!1445653))

(declare-fun m!1445655 () Bool)

(assert (=> b!1571717 m!1445655))

(assert (=> b!1571717 m!1445655))

(declare-fun m!1445657 () Bool)

(assert (=> b!1571717 m!1445657))

(push 1)

(assert (not b!1571717))

(assert (not b!1571716))

(assert (not start!134866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

