; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106016 () Bool)

(assert start!106016)

(declare-fun b_free!27469 () Bool)

(declare-fun b_next!27469 () Bool)

(assert (=> start!106016 (= b_free!27469 (not b_next!27469))))

(declare-fun tp!95948 () Bool)

(declare-fun b_and!45417 () Bool)

(assert (=> start!106016 (= tp!95948 b_and!45417)))

(declare-fun b!1262023 () Bool)

(declare-fun e!718388 () Bool)

(declare-fun tp_is_empty!32371 () Bool)

(assert (=> b!1262023 (= e!718388 tp_is_empty!32371)))

(declare-fun b!1262024 () Bool)

(declare-fun e!718384 () Bool)

(declare-fun e!718385 () Bool)

(assert (=> b!1262024 (= e!718384 (not e!718385))))

(declare-fun res!840919 () Bool)

(assert (=> b!1262024 (=> res!840919 e!718385)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262024 (= res!840919 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48527 0))(
  ( (V!48528 (val!16248 Int)) )
))
(declare-datatypes ((tuple2!21174 0))(
  ( (tuple2!21175 (_1!10597 (_ BitVec 64)) (_2!10597 V!48527)) )
))
(declare-datatypes ((List!28396 0))(
  ( (Nil!28393) (Cons!28392 (h!29601 tuple2!21174) (t!41908 List!28396)) )
))
(declare-datatypes ((ListLongMap!19059 0))(
  ( (ListLongMap!19060 (toList!9545 List!28396)) )
))
(declare-fun lt!571981 () ListLongMap!19059)

(declare-fun lt!571982 () ListLongMap!19059)

(assert (=> b!1262024 (= lt!571981 lt!571982)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48527)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48527)

(declare-datatypes ((Unit!42022 0))(
  ( (Unit!42023) )
))
(declare-fun lt!571983 () Unit!42022)

(declare-datatypes ((array!82345 0))(
  ( (array!82346 (arr!39718 (Array (_ BitVec 32) (_ BitVec 64))) (size!40255 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82345)

(declare-datatypes ((ValueCell!15422 0))(
  ( (ValueCellFull!15422 (v!18954 V!48527)) (EmptyCell!15422) )
))
(declare-datatypes ((array!82347 0))(
  ( (array!82348 (arr!39719 (Array (_ BitVec 32) ValueCell!15422)) (size!40256 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82347)

(declare-fun minValueBefore!43 () V!48527)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1182 (array!82345 array!82347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48527 V!48527 V!48527 V!48527 (_ BitVec 32) Int) Unit!42022)

(assert (=> b!1262024 (= lt!571983 (lemmaNoChangeToArrayThenSameMapNoExtras!1182 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5886 (array!82345 array!82347 (_ BitVec 32) (_ BitVec 32) V!48527 V!48527 (_ BitVec 32) Int) ListLongMap!19059)

(assert (=> b!1262024 (= lt!571982 (getCurrentListMapNoExtraKeys!5886 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262024 (= lt!571981 (getCurrentListMapNoExtraKeys!5886 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262025 () Bool)

(declare-fun res!840920 () Bool)

(assert (=> b!1262025 (=> (not res!840920) (not e!718384))))

(declare-datatypes ((List!28397 0))(
  ( (Nil!28394) (Cons!28393 (h!29602 (_ BitVec 64)) (t!41909 List!28397)) )
))
(declare-fun arrayNoDuplicates!0 (array!82345 (_ BitVec 32) List!28397) Bool)

(assert (=> b!1262025 (= res!840920 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28394))))

(declare-fun mapNonEmpty!50368 () Bool)

(declare-fun mapRes!50368 () Bool)

(declare-fun tp!95949 () Bool)

(assert (=> mapNonEmpty!50368 (= mapRes!50368 (and tp!95949 e!718388))))

(declare-fun mapKey!50368 () (_ BitVec 32))

(declare-fun mapRest!50368 () (Array (_ BitVec 32) ValueCell!15422))

(declare-fun mapValue!50368 () ValueCell!15422)

(assert (=> mapNonEmpty!50368 (= (arr!39719 _values!914) (store mapRest!50368 mapKey!50368 mapValue!50368))))

(declare-fun b!1262027 () Bool)

(declare-fun e!718387 () Bool)

(declare-fun e!718383 () Bool)

(assert (=> b!1262027 (= e!718387 (and e!718383 mapRes!50368))))

(declare-fun condMapEmpty!50368 () Bool)

(declare-fun mapDefault!50368 () ValueCell!15422)

