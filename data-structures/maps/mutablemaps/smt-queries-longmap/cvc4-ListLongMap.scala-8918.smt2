; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108216 () Bool)

(assert start!108216)

(declare-fun b_free!27875 () Bool)

(declare-fun b_next!27875 () Bool)

(assert (=> start!108216 (= b_free!27875 (not b_next!27875))))

(declare-fun tp!98583 () Bool)

(declare-fun b_and!45943 () Bool)

(assert (=> start!108216 (= tp!98583 b_and!45943)))

(declare-fun mapNonEmpty!51671 () Bool)

(declare-fun mapRes!51671 () Bool)

(declare-fun tp!98582 () Bool)

(declare-fun e!729553 () Bool)

(assert (=> mapNonEmpty!51671 (= mapRes!51671 (and tp!98582 e!729553))))

(declare-datatypes ((V!49669 0))(
  ( (V!49670 (val!16787 Int)) )
))
(declare-datatypes ((ValueCell!15814 0))(
  ( (ValueCellFull!15814 (v!19383 V!49669)) (EmptyCell!15814) )
))
(declare-fun mapRest!51671 () (Array (_ BitVec 32) ValueCell!15814))

(declare-fun mapValue!51671 () ValueCell!15814)

(declare-fun mapKey!51671 () (_ BitVec 32))

(declare-datatypes ((array!83889 0))(
  ( (array!83890 (arr!40450 (Array (_ BitVec 32) ValueCell!15814)) (size!41001 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83889)

(assert (=> mapNonEmpty!51671 (= (arr!40450 _values!1187) (store mapRest!51671 mapKey!51671 mapValue!51671))))

(declare-fun res!848878 () Bool)

(declare-fun e!729554 () Bool)

(assert (=> start!108216 (=> (not res!848878) (not e!729554))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108216 (= res!848878 (validMask!0 mask!1805))))

(assert (=> start!108216 e!729554))

(assert (=> start!108216 true))

(assert (=> start!108216 tp!98583))

(declare-fun tp_is_empty!33425 () Bool)

(assert (=> start!108216 tp_is_empty!33425))

(declare-fun e!729550 () Bool)

(declare-fun array_inv!30701 (array!83889) Bool)

(assert (=> start!108216 (and (array_inv!30701 _values!1187) e!729550)))

(declare-datatypes ((array!83891 0))(
  ( (array!83892 (arr!40451 (Array (_ BitVec 32) (_ BitVec 64))) (size!41002 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83891)

(declare-fun array_inv!30702 (array!83891) Bool)

(assert (=> start!108216 (array_inv!30702 _keys!1427)))

(declare-fun b!1277389 () Bool)

(assert (=> b!1277389 (= e!729554 false)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun defaultEntry!1195 () Int)

(declare-fun minValue!1129 () V!49669)

(declare-fun k!1053 () (_ BitVec 64))

(declare-fun zeroValue!1129 () V!49669)

(declare-fun lt!575640 () Bool)

(declare-datatypes ((tuple2!21682 0))(
  ( (tuple2!21683 (_1!10851 (_ BitVec 64)) (_2!10851 V!49669)) )
))
(declare-datatypes ((List!28867 0))(
  ( (Nil!28864) (Cons!28863 (h!30072 tuple2!21682) (t!42412 List!28867)) )
))
(declare-datatypes ((ListLongMap!19351 0))(
  ( (ListLongMap!19352 (toList!9691 List!28867)) )
))
(declare-fun contains!7739 (ListLongMap!19351 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4711 (array!83891 array!83889 (_ BitVec 32) (_ BitVec 32) V!49669 V!49669 (_ BitVec 32) Int) ListLongMap!19351)

(assert (=> b!1277389 (= lt!575640 (contains!7739 (getCurrentListMap!4711 _keys!1427 _values!1187 mask!1805 extraKeys!1108 zeroValue!1129 minValue!1129 #b00000000000000000000000000000000 defaultEntry!1195) k!1053))))

(declare-fun b!1277390 () Bool)

(declare-fun res!848877 () Bool)

(assert (=> b!1277390 (=> (not res!848877) (not e!729554))))

(declare-datatypes ((List!28868 0))(
  ( (Nil!28865) (Cons!28864 (h!30073 (_ BitVec 64)) (t!42413 List!28868)) )
))
(declare-fun arrayNoDuplicates!0 (array!83891 (_ BitVec 32) List!28868) Bool)

(assert (=> b!1277390 (= res!848877 (arrayNoDuplicates!0 _keys!1427 #b00000000000000000000000000000000 Nil!28865))))

(declare-fun b!1277391 () Bool)

(declare-fun e!729551 () Bool)

(assert (=> b!1277391 (= e!729551 tp_is_empty!33425)))

(declare-fun b!1277392 () Bool)

(assert (=> b!1277392 (= e!729550 (and e!729551 mapRes!51671))))

(declare-fun condMapEmpty!51671 () Bool)

(declare-fun mapDefault!51671 () ValueCell!15814)

