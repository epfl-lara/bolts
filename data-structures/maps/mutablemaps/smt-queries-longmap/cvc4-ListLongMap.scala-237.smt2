; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4106 () Bool)

(assert start!4106)

(declare-fun b_free!1013 () Bool)

(declare-fun b_next!1013 () Bool)

(assert (=> start!4106 (= b_free!1013 (not b_next!1013))))

(declare-fun tp!4458 () Bool)

(declare-fun b_and!1825 () Bool)

(assert (=> start!4106 (= tp!4458 b_and!1825)))

(declare-fun b!30614 () Bool)

(declare-fun res!18446 () Bool)

(declare-fun e!19625 () Bool)

(assert (=> b!30614 (=> (not res!18446) (not e!19625))))

(declare-datatypes ((array!1949 0))(
  ( (array!1950 (arr!928 (Array (_ BitVec 32) (_ BitVec 64))) (size!1029 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1949)

(declare-datatypes ((List!761 0))(
  ( (Nil!758) (Cons!757 (h!1324 (_ BitVec 64)) (t!3456 List!761)) )
))
(declare-fun arrayNoDuplicates!0 (array!1949 (_ BitVec 32) List!761) Bool)

(assert (=> b!30614 (= res!18446 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!758))))

(declare-fun b!30615 () Bool)

(assert (=> b!30615 (= e!19625 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!113 0))(
  ( (MissingZero!113 (index!2574 (_ BitVec 32))) (Found!113 (index!2575 (_ BitVec 32))) (Intermediate!113 (undefined!925 Bool) (index!2576 (_ BitVec 32)) (x!6551 (_ BitVec 32))) (Undefined!113) (MissingVacant!113 (index!2577 (_ BitVec 32))) )
))
(declare-fun lt!11445 () SeekEntryResult!113)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1949 (_ BitVec 32)) SeekEntryResult!113)

(assert (=> b!30615 (= lt!11445 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun b!30616 () Bool)

(declare-fun e!19626 () Bool)

(declare-fun tp_is_empty!1367 () Bool)

(assert (=> b!30616 (= e!19626 tp_is_empty!1367)))

(declare-fun b!30617 () Bool)

(declare-fun res!18449 () Bool)

(assert (=> b!30617 (=> (not res!18449) (not e!19625))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1647 0))(
  ( (V!1648 (val!710 Int)) )
))
(declare-datatypes ((ValueCell!484 0))(
  ( (ValueCellFull!484 (v!1799 V!1647)) (EmptyCell!484) )
))
(declare-datatypes ((array!1951 0))(
  ( (array!1952 (arr!929 (Array (_ BitVec 32) ValueCell!484)) (size!1030 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1951)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1647)

(declare-fun minValue!1443 () V!1647)

(declare-datatypes ((tuple2!1158 0))(
  ( (tuple2!1159 (_1!589 (_ BitVec 64)) (_2!589 V!1647)) )
))
(declare-datatypes ((List!762 0))(
  ( (Nil!759) (Cons!758 (h!1325 tuple2!1158) (t!3457 List!762)) )
))
(declare-datatypes ((ListLongMap!739 0))(
  ( (ListLongMap!740 (toList!385 List!762)) )
))
(declare-fun contains!322 (ListLongMap!739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!212 (array!1949 array!1951 (_ BitVec 32) (_ BitVec 32) V!1647 V!1647 (_ BitVec 32) Int) ListLongMap!739)

(assert (=> b!30617 (= res!18449 (not (contains!322 (getCurrentListMap!212 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30618 () Bool)

(declare-fun e!19623 () Bool)

(declare-fun e!19624 () Bool)

(declare-fun mapRes!1579 () Bool)

(assert (=> b!30618 (= e!19623 (and e!19624 mapRes!1579))))

(declare-fun condMapEmpty!1579 () Bool)

(declare-fun mapDefault!1579 () ValueCell!484)

