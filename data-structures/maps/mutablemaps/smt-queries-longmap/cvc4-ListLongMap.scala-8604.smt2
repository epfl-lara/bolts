; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104908 () Bool)

(assert start!104908)

(declare-fun b_free!26663 () Bool)

(declare-fun b_next!26663 () Bool)

(assert (=> start!104908 (= b_free!26663 (not b_next!26663))))

(declare-fun tp!93482 () Bool)

(declare-fun b_and!44449 () Bool)

(assert (=> start!104908 (= tp!93482 b_and!44449)))

(declare-fun b!1249846 () Bool)

(declare-fun res!833764 () Bool)

(declare-fun e!709471 () Bool)

(assert (=> b!1249846 (=> (not res!833764) (not e!709471))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80783 0))(
  ( (array!80784 (arr!38953 (Array (_ BitVec 32) (_ BitVec 64))) (size!39490 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80783)

(declare-datatypes ((V!47451 0))(
  ( (V!47452 (val!15845 Int)) )
))
(declare-datatypes ((ValueCell!15019 0))(
  ( (ValueCellFull!15019 (v!18541 V!47451)) (EmptyCell!15019) )
))
(declare-datatypes ((array!80785 0))(
  ( (array!80786 (arr!38954 (Array (_ BitVec 32) ValueCell!15019)) (size!39491 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80785)

(assert (=> b!1249846 (= res!833764 (and (= (size!39491 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39490 _keys!1118) (size!39491 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!833760 () Bool)

(assert (=> start!104908 (=> (not res!833760) (not e!709471))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104908 (= res!833760 (validMask!0 mask!1466))))

(assert (=> start!104908 e!709471))

(assert (=> start!104908 true))

(assert (=> start!104908 tp!93482))

(declare-fun tp_is_empty!31565 () Bool)

(assert (=> start!104908 tp_is_empty!31565))

(declare-fun array_inv!29651 (array!80783) Bool)

(assert (=> start!104908 (array_inv!29651 _keys!1118)))

(declare-fun e!709469 () Bool)

(declare-fun array_inv!29652 (array!80785) Bool)

(assert (=> start!104908 (and (array_inv!29652 _values!914) e!709469)))

(declare-fun mapIsEmpty!49111 () Bool)

(declare-fun mapRes!49111 () Bool)

(assert (=> mapIsEmpty!49111 mapRes!49111))

(declare-fun b!1249847 () Bool)

(declare-fun e!709466 () Bool)

(assert (=> b!1249847 (= e!709471 (not e!709466))))

(declare-fun res!833761 () Bool)

(assert (=> b!1249847 (=> res!833761 e!709466)))

(assert (=> b!1249847 (= res!833761 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!20552 0))(
  ( (tuple2!20553 (_1!10286 (_ BitVec 64)) (_2!10286 V!47451)) )
))
(declare-datatypes ((List!27815 0))(
  ( (Nil!27812) (Cons!27811 (h!29020 tuple2!20552) (t!41295 List!27815)) )
))
(declare-datatypes ((ListLongMap!18437 0))(
  ( (ListLongMap!18438 (toList!9234 List!27815)) )
))
(declare-fun lt!563892 () ListLongMap!18437)

(declare-fun lt!563891 () ListLongMap!18437)

(assert (=> b!1249847 (= lt!563892 lt!563891)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47451)

(declare-fun minValueBefore!43 () V!47451)

(declare-datatypes ((Unit!41451 0))(
  ( (Unit!41452) )
))
(declare-fun lt!563890 () Unit!41451)

(declare-fun minValueAfter!43 () V!47451)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!935 (array!80783 array!80785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47451 V!47451 V!47451 V!47451 (_ BitVec 32) Int) Unit!41451)

(assert (=> b!1249847 (= lt!563890 (lemmaNoChangeToArrayThenSameMapNoExtras!935 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5617 (array!80783 array!80785 (_ BitVec 32) (_ BitVec 32) V!47451 V!47451 (_ BitVec 32) Int) ListLongMap!18437)

(assert (=> b!1249847 (= lt!563891 (getCurrentListMapNoExtraKeys!5617 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249847 (= lt!563892 (getCurrentListMapNoExtraKeys!5617 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49111 () Bool)

(declare-fun tp!93483 () Bool)

(declare-fun e!709467 () Bool)

(assert (=> mapNonEmpty!49111 (= mapRes!49111 (and tp!93483 e!709467))))

(declare-fun mapValue!49111 () ValueCell!15019)

(declare-fun mapRest!49111 () (Array (_ BitVec 32) ValueCell!15019))

(declare-fun mapKey!49111 () (_ BitVec 32))

(assert (=> mapNonEmpty!49111 (= (arr!38954 _values!914) (store mapRest!49111 mapKey!49111 mapValue!49111))))

(declare-fun b!1249848 () Bool)

(assert (=> b!1249848 (= e!709466 true)))

(declare-fun lt!563893 () Bool)

(declare-fun contains!7491 (ListLongMap!18437 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4457 (array!80783 array!80785 (_ BitVec 32) (_ BitVec 32) V!47451 V!47451 (_ BitVec 32) Int) ListLongMap!18437)

(assert (=> b!1249848 (= lt!563893 (contains!7491 (getCurrentListMap!4457 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1249849 () Bool)

(declare-fun e!709470 () Bool)

(assert (=> b!1249849 (= e!709469 (and e!709470 mapRes!49111))))

(declare-fun condMapEmpty!49111 () Bool)

(declare-fun mapDefault!49111 () ValueCell!15019)

