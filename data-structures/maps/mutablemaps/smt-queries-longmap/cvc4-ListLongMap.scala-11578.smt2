; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134932 () Bool)

(assert start!134932)

(declare-fun res!1074162 () Bool)

(declare-fun e!876549 () Bool)

(assert (=> start!134932 (=> (not res!1074162) (not e!876549))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134932 (= res!1074162 (validMask!0 mask!889))))

(assert (=> start!134932 e!876549))

(assert (=> start!134932 true))

(declare-datatypes ((array!104945 0))(
  ( (array!104946 (arr!50637 (Array (_ BitVec 32) (_ BitVec 64))) (size!51188 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104945)

(declare-fun array_inv!39282 (array!104945) Bool)

(assert (=> start!134932 (array_inv!39282 _keys!600)))

(declare-fun b!1571958 () Bool)

(declare-fun res!1074163 () Bool)

(assert (=> b!1571958 (=> (not res!1074163) (not e!876549))))

(assert (=> b!1571958 (= res!1074163 (= (size!51188 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1571959 () Bool)

(declare-fun res!1074164 () Bool)

(assert (=> b!1571959 (=> (not res!1074164) (not e!876549))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571959 (= res!1074164 (validKeyInArray!0 k!754))))

(declare-fun b!1571960 () Bool)

(assert (=> b!1571960 (= e!876549 false)))

(declare-datatypes ((SeekEntryResult!13566 0))(
  ( (MissingZero!13566 (index!56661 (_ BitVec 32))) (Found!13566 (index!56662 (_ BitVec 32))) (Intermediate!13566 (undefined!14378 Bool) (index!56663 (_ BitVec 32)) (x!141429 (_ BitVec 32))) (Undefined!13566) (MissingVacant!13566 (index!56664 (_ BitVec 32))) )
))
(declare-fun lt!673771 () SeekEntryResult!13566)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104945 (_ BitVec 32)) SeekEntryResult!13566)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1571960 (= lt!673771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!134932 res!1074162) b!1571958))

(assert (= (and b!1571958 res!1074163) b!1571959))

(assert (= (and b!1571959 res!1074164) b!1571960))

(declare-fun m!1445859 () Bool)

(assert (=> start!134932 m!1445859))

(declare-fun m!1445861 () Bool)

(assert (=> start!134932 m!1445861))

(declare-fun m!1445863 () Bool)

(assert (=> b!1571959 m!1445863))

(declare-fun m!1445865 () Bool)

(assert (=> b!1571960 m!1445865))

(assert (=> b!1571960 m!1445865))

(declare-fun m!1445867 () Bool)

(assert (=> b!1571960 m!1445867))

(push 1)

(assert (not b!1571960))

(assert (not start!134932))

(assert (not b!1571959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

