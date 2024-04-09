; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104950 () Bool)

(assert start!104950)

(declare-fun b_free!26705 () Bool)

(declare-fun b_next!26705 () Bool)

(assert (=> start!104950 (= b_free!26705 (not b_next!26705))))

(declare-fun tp!93609 () Bool)

(declare-fun b_and!44491 () Bool)

(assert (=> start!104950 (= tp!93609 b_and!44491)))

(declare-fun b!1250412 () Bool)

(declare-fun e!709912 () Bool)

(declare-fun tp_is_empty!31607 () Bool)

(assert (=> b!1250412 (= e!709912 tp_is_empty!31607)))

(declare-fun mapNonEmpty!49174 () Bool)

(declare-fun mapRes!49174 () Bool)

(declare-fun tp!93608 () Bool)

(declare-fun e!709907 () Bool)

(assert (=> mapNonEmpty!49174 (= mapRes!49174 (and tp!93608 e!709907))))

(declare-fun mapKey!49174 () (_ BitVec 32))

(declare-datatypes ((V!47507 0))(
  ( (V!47508 (val!15866 Int)) )
))
(declare-datatypes ((ValueCell!15040 0))(
  ( (ValueCellFull!15040 (v!18562 V!47507)) (EmptyCell!15040) )
))
(declare-fun mapRest!49174 () (Array (_ BitVec 32) ValueCell!15040))

(declare-datatypes ((array!80863 0))(
  ( (array!80864 (arr!38993 (Array (_ BitVec 32) ValueCell!15040)) (size!39530 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80863)

(declare-fun mapValue!49174 () ValueCell!15040)

(assert (=> mapNonEmpty!49174 (= (arr!38993 _values!914) (store mapRest!49174 mapKey!49174 mapValue!49174))))

(declare-fun b!1250413 () Bool)

(declare-fun e!709910 () Bool)

(declare-fun e!709906 () Bool)

(assert (=> b!1250413 (= e!709910 e!709906)))

(declare-fun res!834141 () Bool)

(assert (=> b!1250413 (=> res!834141 e!709906)))

(declare-datatypes ((tuple2!20590 0))(
  ( (tuple2!20591 (_1!10305 (_ BitVec 64)) (_2!10305 V!47507)) )
))
(declare-datatypes ((List!27847 0))(
  ( (Nil!27844) (Cons!27843 (h!29052 tuple2!20590) (t!41327 List!27847)) )
))
(declare-datatypes ((ListLongMap!18475 0))(
  ( (ListLongMap!18476 (toList!9253 List!27847)) )
))
(declare-fun lt!564207 () ListLongMap!18475)

(declare-fun contains!7504 (ListLongMap!18475 (_ BitVec 64)) Bool)

(assert (=> b!1250413 (= res!834141 (contains!7504 lt!564207 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47507)

(declare-datatypes ((array!80865 0))(
  ( (array!80866 (arr!38994 (Array (_ BitVec 32) (_ BitVec 64))) (size!39531 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80865)

(declare-fun minValueBefore!43 () V!47507)

(declare-fun getCurrentListMap!4470 (array!80865 array!80863 (_ BitVec 32) (_ BitVec 32) V!47507 V!47507 (_ BitVec 32) Int) ListLongMap!18475)

(assert (=> b!1250413 (= lt!564207 (getCurrentListMap!4470 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250414 () Bool)

(assert (=> b!1250414 (= e!709907 tp_is_empty!31607)))

(declare-fun b!1250415 () Bool)

(declare-fun e!709911 () Bool)

(assert (=> b!1250415 (= e!709911 (and e!709912 mapRes!49174))))

(declare-fun condMapEmpty!49174 () Bool)

(declare-fun mapDefault!49174 () ValueCell!15040)

