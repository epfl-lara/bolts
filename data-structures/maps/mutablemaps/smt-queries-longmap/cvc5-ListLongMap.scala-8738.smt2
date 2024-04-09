; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105988 () Bool)

(assert start!105988)

(declare-fun b_free!27463 () Bool)

(declare-fun b_next!27463 () Bool)

(assert (=> start!105988 (= b_free!27463 (not b_next!27463))))

(declare-fun tp!95928 () Bool)

(declare-fun b_and!45399 () Bool)

(assert (=> start!105988 (= tp!95928 b_and!45399)))

(declare-fun b!1261766 () Bool)

(declare-fun res!840799 () Bool)

(declare-fun e!718212 () Bool)

(assert (=> b!1261766 (=> (not res!840799) (not e!718212))))

(declare-datatypes ((array!82331 0))(
  ( (array!82332 (arr!39712 (Array (_ BitVec 32) (_ BitVec 64))) (size!40249 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82331)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82331 (_ BitVec 32)) Bool)

(assert (=> b!1261766 (= res!840799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261767 () Bool)

(declare-fun res!840796 () Bool)

(assert (=> b!1261767 (=> (not res!840796) (not e!718212))))

(declare-datatypes ((List!28390 0))(
  ( (Nil!28387) (Cons!28386 (h!29595 (_ BitVec 64)) (t!41900 List!28390)) )
))
(declare-fun arrayNoDuplicates!0 (array!82331 (_ BitVec 32) List!28390) Bool)

(assert (=> b!1261767 (= res!840796 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28387))))

(declare-fun b!1261768 () Bool)

(declare-fun e!718214 () Bool)

(declare-fun e!718210 () Bool)

(assert (=> b!1261768 (= e!718214 e!718210)))

(declare-fun res!840797 () Bool)

(assert (=> b!1261768 (=> res!840797 e!718210)))

(declare-datatypes ((V!48519 0))(
  ( (V!48520 (val!16245 Int)) )
))
(declare-datatypes ((tuple2!21168 0))(
  ( (tuple2!21169 (_1!10594 (_ BitVec 64)) (_2!10594 V!48519)) )
))
(declare-datatypes ((List!28391 0))(
  ( (Nil!28388) (Cons!28387 (h!29596 tuple2!21168) (t!41901 List!28391)) )
))
(declare-datatypes ((ListLongMap!19053 0))(
  ( (ListLongMap!19054 (toList!9542 List!28391)) )
))
(declare-fun lt!571785 () ListLongMap!19053)

(declare-fun contains!7607 (ListLongMap!19053 (_ BitVec 64)) Bool)

(assert (=> b!1261768 (= res!840797 (contains!7607 lt!571785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48519)

(declare-datatypes ((ValueCell!15419 0))(
  ( (ValueCellFull!15419 (v!18950 V!48519)) (EmptyCell!15419) )
))
(declare-datatypes ((array!82333 0))(
  ( (array!82334 (arr!39713 (Array (_ BitVec 32) ValueCell!15419)) (size!40250 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82333)

(declare-fun minValueBefore!43 () V!48519)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun getCurrentListMap!4648 (array!82331 array!82333 (_ BitVec 32) (_ BitVec 32) V!48519 V!48519 (_ BitVec 32) Int) ListLongMap!19053)

(assert (=> b!1261768 (= lt!571785 (getCurrentListMap!4648 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261769 () Bool)

(assert (=> b!1261769 (= e!718212 (not e!718214))))

(declare-fun res!840800 () Bool)

(assert (=> b!1261769 (=> res!840800 e!718214)))

(assert (=> b!1261769 (= res!840800 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!571787 () ListLongMap!19053)

(declare-fun lt!571788 () ListLongMap!19053)

(assert (=> b!1261769 (= lt!571787 lt!571788)))

(declare-fun minValueAfter!43 () V!48519)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!42013 0))(
  ( (Unit!42014) )
))
(declare-fun lt!571786 () Unit!42013)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1179 (array!82331 array!82333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48519 V!48519 V!48519 V!48519 (_ BitVec 32) Int) Unit!42013)

(assert (=> b!1261769 (= lt!571786 (lemmaNoChangeToArrayThenSameMapNoExtras!1179 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5883 (array!82331 array!82333 (_ BitVec 32) (_ BitVec 32) V!48519 V!48519 (_ BitVec 32) Int) ListLongMap!19053)

(assert (=> b!1261769 (= lt!571788 (getCurrentListMapNoExtraKeys!5883 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1261769 (= lt!571787 (getCurrentListMapNoExtraKeys!5883 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50356 () Bool)

(declare-fun mapRes!50356 () Bool)

(declare-fun tp!95927 () Bool)

(declare-fun e!718211 () Bool)

(assert (=> mapNonEmpty!50356 (= mapRes!50356 (and tp!95927 e!718211))))

(declare-fun mapKey!50356 () (_ BitVec 32))

(declare-fun mapRest!50356 () (Array (_ BitVec 32) ValueCell!15419))

(declare-fun mapValue!50356 () ValueCell!15419)

(assert (=> mapNonEmpty!50356 (= (arr!39713 _values!914) (store mapRest!50356 mapKey!50356 mapValue!50356))))

(declare-fun res!840798 () Bool)

(assert (=> start!105988 (=> (not res!840798) (not e!718212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105988 (= res!840798 (validMask!0 mask!1466))))

(assert (=> start!105988 e!718212))

(assert (=> start!105988 true))

(assert (=> start!105988 tp!95928))

(declare-fun tp_is_empty!32365 () Bool)

(assert (=> start!105988 tp_is_empty!32365))

(declare-fun array_inv!30181 (array!82331) Bool)

(assert (=> start!105988 (array_inv!30181 _keys!1118)))

(declare-fun e!718213 () Bool)

(declare-fun array_inv!30182 (array!82333) Bool)

(assert (=> start!105988 (and (array_inv!30182 _values!914) e!718213)))

(declare-fun mapIsEmpty!50356 () Bool)

(assert (=> mapIsEmpty!50356 mapRes!50356))

(declare-fun b!1261770 () Bool)

(declare-fun e!718209 () Bool)

(assert (=> b!1261770 (= e!718213 (and e!718209 mapRes!50356))))

(declare-fun condMapEmpty!50356 () Bool)

(declare-fun mapDefault!50356 () ValueCell!15419)

