; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113486 () Bool)

(assert start!113486)

(declare-fun b_free!31501 () Bool)

(declare-fun b_next!31501 () Bool)

(assert (=> start!113486 (= b_free!31501 (not b_next!31501))))

(declare-fun tp!110308 () Bool)

(declare-fun b_and!50799 () Bool)

(assert (=> start!113486 (= tp!110308 b_and!50799)))

(declare-fun mapIsEmpty!57958 () Bool)

(declare-fun mapRes!57958 () Bool)

(assert (=> mapIsEmpty!57958 mapRes!57958))

(declare-fun b!1346688 () Bool)

(declare-fun res!893678 () Bool)

(declare-fun e!766291 () Bool)

(assert (=> b!1346688 (=> (not res!893678) (not e!766291))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91791 0))(
  ( (array!91792 (arr!44347 (Array (_ BitVec 32) (_ BitVec 64))) (size!44898 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91791)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55105 0))(
  ( (V!55106 (val!18825 Int)) )
))
(declare-datatypes ((ValueCell!17852 0))(
  ( (ValueCellFull!17852 (v!21471 V!55105)) (EmptyCell!17852) )
))
(declare-datatypes ((array!91793 0))(
  ( (array!91794 (arr!44348 (Array (_ BitVec 32) ValueCell!17852)) (size!44899 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91793)

(assert (=> b!1346688 (= res!893678 (and (= (size!44899 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44898 _keys!1571) (size!44899 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346689 () Bool)

(declare-fun res!893681 () Bool)

(assert (=> b!1346689 (=> (not res!893681) (not e!766291))))

(declare-fun minValue!1245 () V!55105)

(declare-fun zeroValue!1245 () V!55105)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24402 0))(
  ( (tuple2!24403 (_1!12211 (_ BitVec 64)) (_2!12211 V!55105)) )
))
(declare-datatypes ((List!31576 0))(
  ( (Nil!31573) (Cons!31572 (h!32781 tuple2!24402) (t!46173 List!31576)) )
))
(declare-datatypes ((ListLongMap!22071 0))(
  ( (ListLongMap!22072 (toList!11051 List!31576)) )
))
(declare-fun contains!9163 (ListLongMap!22071 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5942 (array!91791 array!91793 (_ BitVec 32) (_ BitVec 32) V!55105 V!55105 (_ BitVec 32) Int) ListLongMap!22071)

(assert (=> b!1346689 (= res!893681 (contains!9163 (getCurrentListMap!5942 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1346690 () Bool)

(declare-fun e!766292 () Bool)

(declare-fun e!766288 () Bool)

(assert (=> b!1346690 (= e!766292 (and e!766288 mapRes!57958))))

(declare-fun condMapEmpty!57958 () Bool)

(declare-fun mapDefault!57958 () ValueCell!17852)

