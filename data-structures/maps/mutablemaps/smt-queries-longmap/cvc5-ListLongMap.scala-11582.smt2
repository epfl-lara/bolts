; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135012 () Bool)

(assert start!135012)

(declare-fun res!1074313 () Bool)

(declare-fun e!876699 () Bool)

(assert (=> start!135012 (=> (not res!1074313) (not e!876699))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135012 (= res!1074313 (validMask!0 mask!889))))

(assert (=> start!135012 e!876699))

(assert (=> start!135012 true))

(declare-datatypes ((array!104971 0))(
  ( (array!104972 (arr!50647 (Array (_ BitVec 32) (_ BitVec 64))) (size!51198 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104971)

(declare-fun array_inv!39292 (array!104971) Bool)

(assert (=> start!135012 (array_inv!39292 _keys!600)))

(declare-fun b!1572210 () Bool)

(declare-fun res!1074314 () Bool)

(assert (=> b!1572210 (=> (not res!1074314) (not e!876699))))

(assert (=> b!1572210 (= res!1074314 (= (size!51198 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572211 () Bool)

(declare-fun res!1074312 () Bool)

(assert (=> b!1572211 (=> (not res!1074312) (not e!876699))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572211 (= res!1074312 (validKeyInArray!0 k!754))))

(declare-fun b!1572212 () Bool)

(assert (=> b!1572212 (= e!876699 false)))

(declare-datatypes ((SeekEntryResult!13576 0))(
  ( (MissingZero!13576 (index!56701 (_ BitVec 32))) (Found!13576 (index!56702 (_ BitVec 32))) (Intermediate!13576 (undefined!14388 Bool) (index!56703 (_ BitVec 32)) (x!141483 (_ BitVec 32))) (Undefined!13576) (MissingVacant!13576 (index!56704 (_ BitVec 32))) )
))
(declare-fun lt!673873 () SeekEntryResult!13576)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104971 (_ BitVec 32)) SeekEntryResult!13576)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572212 (= lt!673873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135012 res!1074313) b!1572210))

(assert (= (and b!1572210 res!1074314) b!1572211))

(assert (= (and b!1572211 res!1074312) b!1572212))

(declare-fun m!1446019 () Bool)

(assert (=> start!135012 m!1446019))

(declare-fun m!1446021 () Bool)

(assert (=> start!135012 m!1446021))

(declare-fun m!1446023 () Bool)

(assert (=> b!1572211 m!1446023))

(declare-fun m!1446025 () Bool)

(assert (=> b!1572212 m!1446025))

(assert (=> b!1572212 m!1446025))

(declare-fun m!1446027 () Bool)

(assert (=> b!1572212 m!1446027))

(push 1)

(assert (not b!1572211))

(assert (not b!1572212))

(assert (not start!135012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

