; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41724 () Bool)

(assert start!41724)

(declare-fun b_free!11355 () Bool)

(declare-fun b_next!11355 () Bool)

(assert (=> start!41724 (= b_free!11355 (not b_next!11355))))

(declare-fun tp!40069 () Bool)

(declare-fun b_and!19729 () Bool)

(assert (=> start!41724 (= tp!40069 b_and!19729)))

(declare-fun b!465599 () Bool)

(declare-fun e!272164 () Bool)

(assert (=> b!465599 (= e!272164 true)))

(declare-datatypes ((V!18149 0))(
  ( (V!18150 (val!6436 Int)) )
))
(declare-fun zeroValue!794 () V!18149)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29303 0))(
  ( (array!29304 (arr!14078 (Array (_ BitVec 32) (_ BitVec 64))) (size!14430 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29303)

(declare-datatypes ((ValueCell!6048 0))(
  ( (ValueCellFull!6048 (v!8719 V!18149)) (EmptyCell!6048) )
))
(declare-datatypes ((array!29305 0))(
  ( (array!29306 (arr!14079 (Array (_ BitVec 32) ValueCell!6048)) (size!14431 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29305)

(declare-datatypes ((tuple2!8416 0))(
  ( (tuple2!8417 (_1!4218 (_ BitVec 64)) (_2!4218 V!18149)) )
))
(declare-datatypes ((List!8540 0))(
  ( (Nil!8537) (Cons!8536 (h!9392 tuple2!8416) (t!14498 List!8540)) )
))
(declare-datatypes ((ListLongMap!7343 0))(
  ( (ListLongMap!7344 (toList!3687 List!8540)) )
))
(declare-fun lt!210344 () ListLongMap!7343)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18149)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2132 (array!29303 array!29305 (_ BitVec 32) (_ BitVec 32) V!18149 V!18149 (_ BitVec 32) Int) ListLongMap!7343)

(assert (=> b!465599 (= lt!210344 (getCurrentListMap!2132 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18149)

(declare-fun lt!210347 () ListLongMap!7343)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun +!1623 (ListLongMap!7343 tuple2!8416) ListLongMap!7343)

(assert (=> b!465599 (= lt!210347 (+!1623 (getCurrentListMap!2132 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8417 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun res!278392 () Bool)

(declare-fun e!272163 () Bool)

(assert (=> start!41724 (=> (not res!278392) (not e!272163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41724 (= res!278392 (validMask!0 mask!1365))))

(assert (=> start!41724 e!272163))

(declare-fun tp_is_empty!12783 () Bool)

(assert (=> start!41724 tp_is_empty!12783))

(assert (=> start!41724 tp!40069))

(assert (=> start!41724 true))

(declare-fun array_inv!10150 (array!29303) Bool)

(assert (=> start!41724 (array_inv!10150 _keys!1025)))

(declare-fun e!272166 () Bool)

(declare-fun array_inv!10151 (array!29305) Bool)

(assert (=> start!41724 (and (array_inv!10151 _values!833) e!272166)))

(declare-fun b!465600 () Bool)

(declare-fun e!272162 () Bool)

(assert (=> b!465600 (= e!272162 tp_is_empty!12783)))

(declare-fun b!465601 () Bool)

(declare-fun res!278390 () Bool)

(assert (=> b!465601 (=> (not res!278390) (not e!272163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29303 (_ BitVec 32)) Bool)

(assert (=> b!465601 (= res!278390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20857 () Bool)

(declare-fun mapRes!20857 () Bool)

(assert (=> mapIsEmpty!20857 mapRes!20857))

(declare-fun mapNonEmpty!20857 () Bool)

(declare-fun tp!40068 () Bool)

(declare-fun e!272161 () Bool)

(assert (=> mapNonEmpty!20857 (= mapRes!20857 (and tp!40068 e!272161))))

(declare-fun mapValue!20857 () ValueCell!6048)

(declare-fun mapKey!20857 () (_ BitVec 32))

(declare-fun mapRest!20857 () (Array (_ BitVec 32) ValueCell!6048))

(assert (=> mapNonEmpty!20857 (= (arr!14079 _values!833) (store mapRest!20857 mapKey!20857 mapValue!20857))))

(declare-fun b!465602 () Bool)

(declare-fun res!278388 () Bool)

(assert (=> b!465602 (=> (not res!278388) (not e!272163))))

(declare-datatypes ((List!8541 0))(
  ( (Nil!8538) (Cons!8537 (h!9393 (_ BitVec 64)) (t!14499 List!8541)) )
))
(declare-fun arrayNoDuplicates!0 (array!29303 (_ BitVec 32) List!8541) Bool)

(assert (=> b!465602 (= res!278388 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8538))))

(declare-fun b!465603 () Bool)

(assert (=> b!465603 (= e!272163 (not e!272164))))

(declare-fun res!278391 () Bool)

(assert (=> b!465603 (=> res!278391 e!272164)))

(assert (=> b!465603 (= res!278391 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!210343 () ListLongMap!7343)

(declare-fun lt!210346 () ListLongMap!7343)

(assert (=> b!465603 (= lt!210343 lt!210346)))

(declare-datatypes ((Unit!13493 0))(
  ( (Unit!13494) )
))
(declare-fun lt!210345 () Unit!13493)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!49 (array!29303 array!29305 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18149 V!18149 V!18149 V!18149 (_ BitVec 32) Int) Unit!13493)

(assert (=> b!465603 (= lt!210345 (lemmaNoChangeToArrayThenSameMapNoExtras!49 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1854 (array!29303 array!29305 (_ BitVec 32) (_ BitVec 32) V!18149 V!18149 (_ BitVec 32) Int) ListLongMap!7343)

(assert (=> b!465603 (= lt!210346 (getCurrentListMapNoExtraKeys!1854 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465603 (= lt!210343 (getCurrentListMapNoExtraKeys!1854 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465604 () Bool)

(assert (=> b!465604 (= e!272161 tp_is_empty!12783)))

(declare-fun b!465605 () Bool)

(assert (=> b!465605 (= e!272166 (and e!272162 mapRes!20857))))

(declare-fun condMapEmpty!20857 () Bool)

(declare-fun mapDefault!20857 () ValueCell!6048)

(assert (=> b!465605 (= condMapEmpty!20857 (= (arr!14079 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6048)) mapDefault!20857)))))

(declare-fun b!465606 () Bool)

(declare-fun res!278389 () Bool)

(assert (=> b!465606 (=> (not res!278389) (not e!272163))))

(assert (=> b!465606 (= res!278389 (and (= (size!14431 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14430 _keys!1025) (size!14431 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!41724 res!278392) b!465606))

(assert (= (and b!465606 res!278389) b!465601))

(assert (= (and b!465601 res!278390) b!465602))

(assert (= (and b!465602 res!278388) b!465603))

(assert (= (and b!465603 (not res!278391)) b!465599))

(assert (= (and b!465605 condMapEmpty!20857) mapIsEmpty!20857))

(assert (= (and b!465605 (not condMapEmpty!20857)) mapNonEmpty!20857))

(get-info :version)

(assert (= (and mapNonEmpty!20857 ((_ is ValueCellFull!6048) mapValue!20857)) b!465604))

(assert (= (and b!465605 ((_ is ValueCellFull!6048) mapDefault!20857)) b!465600))

(assert (= start!41724 b!465605))

(declare-fun m!447865 () Bool)

(assert (=> b!465599 m!447865))

(declare-fun m!447867 () Bool)

(assert (=> b!465599 m!447867))

(assert (=> b!465599 m!447867))

(declare-fun m!447869 () Bool)

(assert (=> b!465599 m!447869))

(declare-fun m!447871 () Bool)

(assert (=> b!465602 m!447871))

(declare-fun m!447873 () Bool)

(assert (=> start!41724 m!447873))

(declare-fun m!447875 () Bool)

(assert (=> start!41724 m!447875))

(declare-fun m!447877 () Bool)

(assert (=> start!41724 m!447877))

(declare-fun m!447879 () Bool)

(assert (=> mapNonEmpty!20857 m!447879))

(declare-fun m!447881 () Bool)

(assert (=> b!465601 m!447881))

(declare-fun m!447883 () Bool)

(assert (=> b!465603 m!447883))

(declare-fun m!447885 () Bool)

(assert (=> b!465603 m!447885))

(declare-fun m!447887 () Bool)

(assert (=> b!465603 m!447887))

(check-sat (not b!465599) (not mapNonEmpty!20857) (not b!465601) (not b_next!11355) (not b!465602) (not start!41724) b_and!19729 tp_is_empty!12783 (not b!465603))
(check-sat b_and!19729 (not b_next!11355))
