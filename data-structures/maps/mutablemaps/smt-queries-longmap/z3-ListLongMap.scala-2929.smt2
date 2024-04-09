; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41772 () Bool)

(assert start!41772)

(declare-fun b_free!11385 () Bool)

(declare-fun b_next!11385 () Bool)

(assert (=> start!41772 (= b_free!11385 (not b_next!11385))))

(declare-fun tp!40161 () Bool)

(declare-fun b_and!19771 () Bool)

(assert (=> start!41772 (= tp!40161 b_and!19771)))

(declare-fun b!466143 () Bool)

(declare-fun e!272543 () Bool)

(declare-fun e!272544 () Bool)

(assert (=> b!466143 (= e!272543 (not e!272544))))

(declare-fun res!278699 () Bool)

(assert (=> b!466143 (=> res!278699 e!272544)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466143 (= res!278699 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!18189 0))(
  ( (V!18190 (val!6451 Int)) )
))
(declare-datatypes ((tuple2!8440 0))(
  ( (tuple2!8441 (_1!4230 (_ BitVec 64)) (_2!4230 V!18189)) )
))
(declare-datatypes ((List!8559 0))(
  ( (Nil!8556) (Cons!8555 (h!9411 tuple2!8440) (t!14519 List!8559)) )
))
(declare-datatypes ((ListLongMap!7367 0))(
  ( (ListLongMap!7368 (toList!3699 List!8559)) )
))
(declare-fun lt!210691 () ListLongMap!7367)

(declare-fun lt!210692 () ListLongMap!7367)

(assert (=> b!466143 (= lt!210691 lt!210692)))

(declare-fun minValueBefore!38 () V!18189)

(declare-fun zeroValue!794 () V!18189)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13517 0))(
  ( (Unit!13518) )
))
(declare-fun lt!210694 () Unit!13517)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29363 0))(
  ( (array!29364 (arr!14107 (Array (_ BitVec 32) (_ BitVec 64))) (size!14459 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29363)

(declare-datatypes ((ValueCell!6063 0))(
  ( (ValueCellFull!6063 (v!8735 V!18189)) (EmptyCell!6063) )
))
(declare-datatypes ((array!29365 0))(
  ( (array!29366 (arr!14108 (Array (_ BitVec 32) ValueCell!6063)) (size!14460 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29365)

(declare-fun minValueAfter!38 () V!18189)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!60 (array!29363 array!29365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18189 V!18189 V!18189 V!18189 (_ BitVec 32) Int) Unit!13517)

(assert (=> b!466143 (= lt!210694 (lemmaNoChangeToArrayThenSameMapNoExtras!60 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1865 (array!29363 array!29365 (_ BitVec 32) (_ BitVec 32) V!18189 V!18189 (_ BitVec 32) Int) ListLongMap!7367)

(assert (=> b!466143 (= lt!210692 (getCurrentListMapNoExtraKeys!1865 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466143 (= lt!210691 (getCurrentListMapNoExtraKeys!1865 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466144 () Bool)

(assert (=> b!466144 (= e!272544 true)))

(declare-fun lt!210693 () ListLongMap!7367)

(declare-fun getCurrentListMap!2140 (array!29363 array!29365 (_ BitVec 32) (_ BitVec 32) V!18189 V!18189 (_ BitVec 32) Int) ListLongMap!7367)

(assert (=> b!466144 (= lt!210693 (getCurrentListMap!2140 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210690 () ListLongMap!7367)

(declare-fun +!1631 (ListLongMap!7367 tuple2!8440) ListLongMap!7367)

(assert (=> b!466144 (= lt!210690 (+!1631 (getCurrentListMap!2140 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8441 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun res!278695 () Bool)

(assert (=> start!41772 (=> (not res!278695) (not e!272543))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41772 (= res!278695 (validMask!0 mask!1365))))

(assert (=> start!41772 e!272543))

(declare-fun tp_is_empty!12813 () Bool)

(assert (=> start!41772 tp_is_empty!12813))

(assert (=> start!41772 tp!40161))

(assert (=> start!41772 true))

(declare-fun array_inv!10166 (array!29363) Bool)

(assert (=> start!41772 (array_inv!10166 _keys!1025)))

(declare-fun e!272545 () Bool)

(declare-fun array_inv!10167 (array!29365) Bool)

(assert (=> start!41772 (and (array_inv!10167 _values!833) e!272545)))

(declare-fun b!466145 () Bool)

(declare-fun res!278697 () Bool)

(assert (=> b!466145 (=> (not res!278697) (not e!272543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29363 (_ BitVec 32)) Bool)

(assert (=> b!466145 (= res!278697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466146 () Bool)

(declare-fun e!272546 () Bool)

(assert (=> b!466146 (= e!272546 tp_is_empty!12813)))

(declare-fun b!466147 () Bool)

(declare-fun e!272542 () Bool)

(assert (=> b!466147 (= e!272542 tp_is_empty!12813)))

(declare-fun b!466148 () Bool)

(declare-fun res!278696 () Bool)

(assert (=> b!466148 (=> (not res!278696) (not e!272543))))

(declare-datatypes ((List!8560 0))(
  ( (Nil!8557) (Cons!8556 (h!9412 (_ BitVec 64)) (t!14520 List!8560)) )
))
(declare-fun arrayNoDuplicates!0 (array!29363 (_ BitVec 32) List!8560) Bool)

(assert (=> b!466148 (= res!278696 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8557))))

(declare-fun mapNonEmpty!20905 () Bool)

(declare-fun mapRes!20905 () Bool)

(declare-fun tp!40162 () Bool)

(assert (=> mapNonEmpty!20905 (= mapRes!20905 (and tp!40162 e!272542))))

(declare-fun mapValue!20905 () ValueCell!6063)

(declare-fun mapKey!20905 () (_ BitVec 32))

(declare-fun mapRest!20905 () (Array (_ BitVec 32) ValueCell!6063))

(assert (=> mapNonEmpty!20905 (= (arr!14108 _values!833) (store mapRest!20905 mapKey!20905 mapValue!20905))))

(declare-fun mapIsEmpty!20905 () Bool)

(assert (=> mapIsEmpty!20905 mapRes!20905))

(declare-fun b!466149 () Bool)

(assert (=> b!466149 (= e!272545 (and e!272546 mapRes!20905))))

(declare-fun condMapEmpty!20905 () Bool)

(declare-fun mapDefault!20905 () ValueCell!6063)

(assert (=> b!466149 (= condMapEmpty!20905 (= (arr!14108 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6063)) mapDefault!20905)))))

(declare-fun b!466150 () Bool)

(declare-fun res!278698 () Bool)

(assert (=> b!466150 (=> (not res!278698) (not e!272543))))

(assert (=> b!466150 (= res!278698 (and (= (size!14460 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14459 _keys!1025) (size!14460 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41772 res!278695) b!466150))

(assert (= (and b!466150 res!278698) b!466145))

(assert (= (and b!466145 res!278697) b!466148))

(assert (= (and b!466148 res!278696) b!466143))

(assert (= (and b!466143 (not res!278699)) b!466144))

(assert (= (and b!466149 condMapEmpty!20905) mapIsEmpty!20905))

(assert (= (and b!466149 (not condMapEmpty!20905)) mapNonEmpty!20905))

(get-info :version)

(assert (= (and mapNonEmpty!20905 ((_ is ValueCellFull!6063) mapValue!20905)) b!466147))

(assert (= (and b!466149 ((_ is ValueCellFull!6063) mapDefault!20905)) b!466146))

(assert (= start!41772 b!466149))

(declare-fun m!448395 () Bool)

(assert (=> b!466143 m!448395))

(declare-fun m!448397 () Bool)

(assert (=> b!466143 m!448397))

(declare-fun m!448399 () Bool)

(assert (=> b!466143 m!448399))

(declare-fun m!448401 () Bool)

(assert (=> b!466148 m!448401))

(declare-fun m!448403 () Bool)

(assert (=> start!41772 m!448403))

(declare-fun m!448405 () Bool)

(assert (=> start!41772 m!448405))

(declare-fun m!448407 () Bool)

(assert (=> start!41772 m!448407))

(declare-fun m!448409 () Bool)

(assert (=> b!466144 m!448409))

(declare-fun m!448411 () Bool)

(assert (=> b!466144 m!448411))

(assert (=> b!466144 m!448411))

(declare-fun m!448413 () Bool)

(assert (=> b!466144 m!448413))

(declare-fun m!448415 () Bool)

(assert (=> mapNonEmpty!20905 m!448415))

(declare-fun m!448417 () Bool)

(assert (=> b!466145 m!448417))

(check-sat (not b!466143) (not start!41772) (not mapNonEmpty!20905) b_and!19771 (not b_next!11385) tp_is_empty!12813 (not b!466145) (not b!466144) (not b!466148))
(check-sat b_and!19771 (not b_next!11385))
