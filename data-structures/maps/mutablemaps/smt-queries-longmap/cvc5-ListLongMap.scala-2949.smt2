; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41922 () Bool)

(assert start!41922)

(declare-fun b_free!11503 () Bool)

(declare-fun b_next!11503 () Bool)

(assert (=> start!41922 (= b_free!11503 (not b_next!11503))))

(declare-fun tp!40522 () Bool)

(declare-fun b_and!19909 () Bool)

(assert (=> start!41922 (= tp!40522 b_and!19909)))

(declare-fun b!467747 () Bool)

(declare-fun e!273687 () Bool)

(assert (=> b!467747 (= e!273687 true)))

(declare-datatypes ((V!18347 0))(
  ( (V!18348 (val!6510 Int)) )
))
(declare-datatypes ((tuple2!8530 0))(
  ( (tuple2!8531 (_1!4275 (_ BitVec 64)) (_2!4275 V!18347)) )
))
(declare-datatypes ((List!8649 0))(
  ( (Nil!8646) (Cons!8645 (h!9501 tuple2!8530) (t!14613 List!8649)) )
))
(declare-datatypes ((ListLongMap!7457 0))(
  ( (ListLongMap!7458 (toList!3744 List!8649)) )
))
(declare-fun lt!211549 () ListLongMap!7457)

(declare-fun minValueBefore!38 () V!18347)

(declare-fun zeroValue!794 () V!18347)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!29595 0))(
  ( (array!29596 (arr!14221 (Array (_ BitVec 32) (_ BitVec 64))) (size!14573 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29595)

(declare-datatypes ((ValueCell!6122 0))(
  ( (ValueCellFull!6122 (v!8795 V!18347)) (EmptyCell!6122) )
))
(declare-datatypes ((array!29597 0))(
  ( (array!29598 (arr!14222 (Array (_ BitVec 32) ValueCell!6122)) (size!14574 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29597)

(declare-fun getCurrentListMap!2162 (array!29595 array!29597 (_ BitVec 32) (_ BitVec 32) V!18347 V!18347 (_ BitVec 32) Int) ListLongMap!7457)

(assert (=> b!467747 (= lt!211549 (getCurrentListMap!2162 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467748 () Bool)

(declare-fun res!279615 () Bool)

(declare-fun e!273691 () Bool)

(assert (=> b!467748 (=> (not res!279615) (not e!273691))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467748 (= res!279615 (and (= (size!14574 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14573 _keys!1025) (size!14574 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279614 () Bool)

(assert (=> start!41922 (=> (not res!279614) (not e!273691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41922 (= res!279614 (validMask!0 mask!1365))))

(assert (=> start!41922 e!273691))

(declare-fun tp_is_empty!12931 () Bool)

(assert (=> start!41922 tp_is_empty!12931))

(assert (=> start!41922 tp!40522))

(assert (=> start!41922 true))

(declare-fun array_inv!10258 (array!29595) Bool)

(assert (=> start!41922 (array_inv!10258 _keys!1025)))

(declare-fun e!273689 () Bool)

(declare-fun array_inv!10259 (array!29597) Bool)

(assert (=> start!41922 (and (array_inv!10259 _values!833) e!273689)))

(declare-fun b!467749 () Bool)

(declare-fun res!279612 () Bool)

(assert (=> b!467749 (=> (not res!279612) (not e!273691))))

(declare-datatypes ((List!8650 0))(
  ( (Nil!8647) (Cons!8646 (h!9502 (_ BitVec 64)) (t!14614 List!8650)) )
))
(declare-fun arrayNoDuplicates!0 (array!29595 (_ BitVec 32) List!8650) Bool)

(assert (=> b!467749 (= res!279612 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8647))))

(declare-fun b!467750 () Bool)

(assert (=> b!467750 (= e!273691 (not e!273687))))

(declare-fun res!279613 () Bool)

(assert (=> b!467750 (=> res!279613 e!273687)))

(assert (=> b!467750 (= res!279613 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211546 () ListLongMap!7457)

(declare-fun lt!211548 () ListLongMap!7457)

(assert (=> b!467750 (= lt!211546 lt!211548)))

(declare-datatypes ((Unit!13609 0))(
  ( (Unit!13610) )
))
(declare-fun lt!211547 () Unit!13609)

(declare-fun minValueAfter!38 () V!18347)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!105 (array!29595 array!29597 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18347 V!18347 V!18347 V!18347 (_ BitVec 32) Int) Unit!13609)

(assert (=> b!467750 (= lt!211547 (lemmaNoChangeToArrayThenSameMapNoExtras!105 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1910 (array!29595 array!29597 (_ BitVec 32) (_ BitVec 32) V!18347 V!18347 (_ BitVec 32) Int) ListLongMap!7457)

(assert (=> b!467750 (= lt!211548 (getCurrentListMapNoExtraKeys!1910 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467750 (= lt!211546 (getCurrentListMapNoExtraKeys!1910 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21088 () Bool)

(declare-fun mapRes!21088 () Bool)

(declare-fun tp!40521 () Bool)

(declare-fun e!273692 () Bool)

(assert (=> mapNonEmpty!21088 (= mapRes!21088 (and tp!40521 e!273692))))

(declare-fun mapRest!21088 () (Array (_ BitVec 32) ValueCell!6122))

(declare-fun mapKey!21088 () (_ BitVec 32))

(declare-fun mapValue!21088 () ValueCell!6122)

(assert (=> mapNonEmpty!21088 (= (arr!14222 _values!833) (store mapRest!21088 mapKey!21088 mapValue!21088))))

(declare-fun b!467751 () Bool)

(assert (=> b!467751 (= e!273692 tp_is_empty!12931)))

(declare-fun b!467752 () Bool)

(declare-fun e!273688 () Bool)

(assert (=> b!467752 (= e!273688 tp_is_empty!12931)))

(declare-fun b!467753 () Bool)

(assert (=> b!467753 (= e!273689 (and e!273688 mapRes!21088))))

(declare-fun condMapEmpty!21088 () Bool)

(declare-fun mapDefault!21088 () ValueCell!6122)

