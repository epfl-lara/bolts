; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41982 () Bool)

(assert start!41982)

(declare-fun b_free!11547 () Bool)

(declare-fun b_next!11547 () Bool)

(assert (=> start!41982 (= b_free!11547 (not b_next!11547))))

(declare-fun tp!40657 () Bool)

(declare-fun b_and!19963 () Bool)

(assert (=> start!41982 (= tp!40657 b_and!19963)))

(declare-fun b!468423 () Bool)

(declare-fun e!274179 () Bool)

(declare-fun tp_is_empty!12975 () Bool)

(assert (=> b!468423 (= e!274179 tp_is_empty!12975)))

(declare-fun b!468424 () Bool)

(declare-fun e!274181 () Bool)

(assert (=> b!468424 (= e!274181 tp_is_empty!12975)))

(declare-fun mapIsEmpty!21157 () Bool)

(declare-fun mapRes!21157 () Bool)

(assert (=> mapIsEmpty!21157 mapRes!21157))

(declare-fun res!280004 () Bool)

(declare-fun e!274182 () Bool)

(assert (=> start!41982 (=> (not res!280004) (not e!274182))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41982 (= res!280004 (validMask!0 mask!1365))))

(assert (=> start!41982 e!274182))

(assert (=> start!41982 tp_is_empty!12975))

(assert (=> start!41982 tp!40657))

(assert (=> start!41982 true))

(declare-datatypes ((array!29683 0))(
  ( (array!29684 (arr!14264 (Array (_ BitVec 32) (_ BitVec 64))) (size!14616 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29683)

(declare-fun array_inv!10286 (array!29683) Bool)

(assert (=> start!41982 (array_inv!10286 _keys!1025)))

(declare-datatypes ((V!18405 0))(
  ( (V!18406 (val!6532 Int)) )
))
(declare-datatypes ((ValueCell!6144 0))(
  ( (ValueCellFull!6144 (v!8817 V!18405)) (EmptyCell!6144) )
))
(declare-datatypes ((array!29685 0))(
  ( (array!29686 (arr!14265 (Array (_ BitVec 32) ValueCell!6144)) (size!14617 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29685)

(declare-fun e!274180 () Bool)

(declare-fun array_inv!10287 (array!29685) Bool)

(assert (=> start!41982 (and (array_inv!10287 _values!833) e!274180)))

(declare-fun b!468425 () Bool)

(declare-fun res!280000 () Bool)

(assert (=> b!468425 (=> (not res!280000) (not e!274182))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!468425 (= res!280000 (and (= (size!14617 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14616 _keys!1025) (size!14617 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468426 () Bool)

(declare-fun res!280001 () Bool)

(assert (=> b!468426 (=> (not res!280001) (not e!274182))))

(declare-datatypes ((List!8684 0))(
  ( (Nil!8681) (Cons!8680 (h!9536 (_ BitVec 64)) (t!14650 List!8684)) )
))
(declare-fun arrayNoDuplicates!0 (array!29683 (_ BitVec 32) List!8684) Bool)

(assert (=> b!468426 (= res!280001 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8681))))

(declare-fun b!468427 () Bool)

(declare-fun e!274177 () Bool)

(assert (=> b!468427 (= e!274182 (not e!274177))))

(declare-fun res!280002 () Bool)

(assert (=> b!468427 (=> res!280002 e!274177)))

(assert (=> b!468427 (= res!280002 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8564 0))(
  ( (tuple2!8565 (_1!4292 (_ BitVec 64)) (_2!4292 V!18405)) )
))
(declare-datatypes ((List!8685 0))(
  ( (Nil!8682) (Cons!8681 (h!9537 tuple2!8564) (t!14651 List!8685)) )
))
(declare-datatypes ((ListLongMap!7491 0))(
  ( (ListLongMap!7492 (toList!3761 List!8685)) )
))
(declare-fun lt!211958 () ListLongMap!7491)

(declare-fun lt!211960 () ListLongMap!7491)

(assert (=> b!468427 (= lt!211958 lt!211960)))

(declare-fun minValueBefore!38 () V!18405)

(declare-fun zeroValue!794 () V!18405)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13644 0))(
  ( (Unit!13645) )
))
(declare-fun lt!211962 () Unit!13644)

(declare-fun minValueAfter!38 () V!18405)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!121 (array!29683 array!29685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18405 V!18405 V!18405 V!18405 (_ BitVec 32) Int) Unit!13644)

(assert (=> b!468427 (= lt!211962 (lemmaNoChangeToArrayThenSameMapNoExtras!121 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1926 (array!29683 array!29685 (_ BitVec 32) (_ BitVec 32) V!18405 V!18405 (_ BitVec 32) Int) ListLongMap!7491)

(assert (=> b!468427 (= lt!211960 (getCurrentListMapNoExtraKeys!1926 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468427 (= lt!211958 (getCurrentListMapNoExtraKeys!1926 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468428 () Bool)

(assert (=> b!468428 (= e!274177 true)))

(declare-fun lt!211963 () tuple2!8564)

(declare-fun +!1653 (ListLongMap!7491 tuple2!8564) ListLongMap!7491)

(assert (=> b!468428 (= (+!1653 lt!211958 lt!211963) (+!1653 (+!1653 lt!211958 (tuple2!8565 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!211963))))

(assert (=> b!468428 (= lt!211963 (tuple2!8565 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!211964 () Unit!13644)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!94 (ListLongMap!7491 (_ BitVec 64) V!18405 V!18405) Unit!13644)

(assert (=> b!468428 (= lt!211964 (addSameAsAddTwiceSameKeyDiffValues!94 lt!211958 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!211961 () ListLongMap!7491)

(declare-fun getCurrentListMap!2175 (array!29683 array!29685 (_ BitVec 32) (_ BitVec 32) V!18405 V!18405 (_ BitVec 32) Int) ListLongMap!7491)

(assert (=> b!468428 (= lt!211961 (getCurrentListMap!2175 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!211959 () ListLongMap!7491)

(assert (=> b!468428 (= lt!211959 (getCurrentListMap!2175 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21157 () Bool)

(declare-fun tp!40656 () Bool)

(assert (=> mapNonEmpty!21157 (= mapRes!21157 (and tp!40656 e!274181))))

(declare-fun mapRest!21157 () (Array (_ BitVec 32) ValueCell!6144))

(declare-fun mapKey!21157 () (_ BitVec 32))

(declare-fun mapValue!21157 () ValueCell!6144)

(assert (=> mapNonEmpty!21157 (= (arr!14265 _values!833) (store mapRest!21157 mapKey!21157 mapValue!21157))))

(declare-fun b!468429 () Bool)

(declare-fun res!280003 () Bool)

(assert (=> b!468429 (=> (not res!280003) (not e!274182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29683 (_ BitVec 32)) Bool)

(assert (=> b!468429 (= res!280003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468430 () Bool)

(assert (=> b!468430 (= e!274180 (and e!274179 mapRes!21157))))

(declare-fun condMapEmpty!21157 () Bool)

(declare-fun mapDefault!21157 () ValueCell!6144)

(assert (=> b!468430 (= condMapEmpty!21157 (= (arr!14265 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6144)) mapDefault!21157)))))

(assert (= (and start!41982 res!280004) b!468425))

(assert (= (and b!468425 res!280000) b!468429))

(assert (= (and b!468429 res!280003) b!468426))

(assert (= (and b!468426 res!280001) b!468427))

(assert (= (and b!468427 (not res!280002)) b!468428))

(assert (= (and b!468430 condMapEmpty!21157) mapIsEmpty!21157))

(assert (= (and b!468430 (not condMapEmpty!21157)) mapNonEmpty!21157))

(get-info :version)

(assert (= (and mapNonEmpty!21157 ((_ is ValueCellFull!6144) mapValue!21157)) b!468424))

(assert (= (and b!468430 ((_ is ValueCellFull!6144) mapDefault!21157)) b!468423))

(assert (= start!41982 b!468430))

(declare-fun m!450441 () Bool)

(assert (=> start!41982 m!450441))

(declare-fun m!450443 () Bool)

(assert (=> start!41982 m!450443))

(declare-fun m!450445 () Bool)

(assert (=> start!41982 m!450445))

(declare-fun m!450447 () Bool)

(assert (=> b!468426 m!450447))

(declare-fun m!450449 () Bool)

(assert (=> b!468429 m!450449))

(declare-fun m!450451 () Bool)

(assert (=> b!468428 m!450451))

(declare-fun m!450453 () Bool)

(assert (=> b!468428 m!450453))

(declare-fun m!450455 () Bool)

(assert (=> b!468428 m!450455))

(declare-fun m!450457 () Bool)

(assert (=> b!468428 m!450457))

(assert (=> b!468428 m!450453))

(declare-fun m!450459 () Bool)

(assert (=> b!468428 m!450459))

(declare-fun m!450461 () Bool)

(assert (=> b!468428 m!450461))

(declare-fun m!450463 () Bool)

(assert (=> mapNonEmpty!21157 m!450463))

(declare-fun m!450465 () Bool)

(assert (=> b!468427 m!450465))

(declare-fun m!450467 () Bool)

(assert (=> b!468427 m!450467))

(declare-fun m!450469 () Bool)

(assert (=> b!468427 m!450469))

(check-sat (not mapNonEmpty!21157) (not b_next!11547) (not start!41982) (not b!468426) (not b!468428) (not b!468427) b_and!19963 (not b!468429) tp_is_empty!12975)
(check-sat b_and!19963 (not b_next!11547))
