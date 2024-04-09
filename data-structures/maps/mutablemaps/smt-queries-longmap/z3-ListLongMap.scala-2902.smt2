; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41564 () Bool)

(assert start!41564)

(declare-fun b_free!11223 () Bool)

(declare-fun b_next!11223 () Bool)

(assert (=> start!41564 (= b_free!11223 (not b_next!11223))))

(declare-fun tp!39667 () Bool)

(declare-fun b_and!19581 () Bool)

(assert (=> start!41564 (= tp!39667 b_and!19581)))

(declare-fun b!463993 () Bool)

(declare-fun res!277487 () Bool)

(declare-fun e!271012 () Bool)

(assert (=> b!463993 (=> (not res!277487) (not e!271012))))

(declare-datatypes ((array!29055 0))(
  ( (array!29056 (arr!13956 (Array (_ BitVec 32) (_ BitVec 64))) (size!14308 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29055)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29055 (_ BitVec 32)) Bool)

(assert (=> b!463993 (= res!277487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20653 () Bool)

(declare-fun mapRes!20653 () Bool)

(assert (=> mapIsEmpty!20653 mapRes!20653))

(declare-fun b!463994 () Bool)

(declare-fun res!277486 () Bool)

(assert (=> b!463994 (=> (not res!277486) (not e!271012))))

(declare-datatypes ((List!8451 0))(
  ( (Nil!8448) (Cons!8447 (h!9303 (_ BitVec 64)) (t!14405 List!8451)) )
))
(declare-fun arrayNoDuplicates!0 (array!29055 (_ BitVec 32) List!8451) Bool)

(assert (=> b!463994 (= res!277486 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8448))))

(declare-fun b!463995 () Bool)

(declare-fun e!271011 () Bool)

(declare-fun tp_is_empty!12651 () Bool)

(assert (=> b!463995 (= e!271011 tp_is_empty!12651)))

(declare-fun b!463996 () Bool)

(assert (=> b!463996 (= e!271012 (not true))))

(declare-datatypes ((V!17973 0))(
  ( (V!17974 (val!6370 Int)) )
))
(declare-datatypes ((tuple2!8324 0))(
  ( (tuple2!8325 (_1!4172 (_ BitVec 64)) (_2!4172 V!17973)) )
))
(declare-datatypes ((List!8452 0))(
  ( (Nil!8449) (Cons!8448 (h!9304 tuple2!8324) (t!14406 List!8452)) )
))
(declare-datatypes ((ListLongMap!7251 0))(
  ( (ListLongMap!7252 (toList!3641 List!8452)) )
))
(declare-fun lt!209569 () ListLongMap!7251)

(declare-fun lt!209570 () ListLongMap!7251)

(assert (=> b!463996 (= lt!209569 lt!209570)))

(declare-fun minValueBefore!38 () V!17973)

(declare-fun zeroValue!794 () V!17973)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13403 0))(
  ( (Unit!13404) )
))
(declare-fun lt!209571 () Unit!13403)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5982 0))(
  ( (ValueCellFull!5982 (v!8653 V!17973)) (EmptyCell!5982) )
))
(declare-datatypes ((array!29057 0))(
  ( (array!29058 (arr!13957 (Array (_ BitVec 32) ValueCell!5982)) (size!14309 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29057)

(declare-fun minValueAfter!38 () V!17973)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!4 (array!29055 array!29057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17973 V!17973 V!17973 V!17973 (_ BitVec 32) Int) Unit!13403)

(assert (=> b!463996 (= lt!209571 (lemmaNoChangeToArrayThenSameMapNoExtras!4 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1809 (array!29055 array!29057 (_ BitVec 32) (_ BitVec 32) V!17973 V!17973 (_ BitVec 32) Int) ListLongMap!7251)

(assert (=> b!463996 (= lt!209570 (getCurrentListMapNoExtraKeys!1809 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!463996 (= lt!209569 (getCurrentListMapNoExtraKeys!1809 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!463997 () Bool)

(declare-fun e!271015 () Bool)

(assert (=> b!463997 (= e!271015 tp_is_empty!12651)))

(declare-fun mapNonEmpty!20653 () Bool)

(declare-fun tp!39666 () Bool)

(assert (=> mapNonEmpty!20653 (= mapRes!20653 (and tp!39666 e!271015))))

(declare-fun mapRest!20653 () (Array (_ BitVec 32) ValueCell!5982))

(declare-fun mapValue!20653 () ValueCell!5982)

(declare-fun mapKey!20653 () (_ BitVec 32))

(assert (=> mapNonEmpty!20653 (= (arr!13957 _values!833) (store mapRest!20653 mapKey!20653 mapValue!20653))))

(declare-fun res!277485 () Bool)

(assert (=> start!41564 (=> (not res!277485) (not e!271012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41564 (= res!277485 (validMask!0 mask!1365))))

(assert (=> start!41564 e!271012))

(assert (=> start!41564 tp_is_empty!12651))

(assert (=> start!41564 tp!39667))

(assert (=> start!41564 true))

(declare-fun array_inv!10064 (array!29055) Bool)

(assert (=> start!41564 (array_inv!10064 _keys!1025)))

(declare-fun e!271013 () Bool)

(declare-fun array_inv!10065 (array!29057) Bool)

(assert (=> start!41564 (and (array_inv!10065 _values!833) e!271013)))

(declare-fun b!463998 () Bool)

(declare-fun res!277484 () Bool)

(assert (=> b!463998 (=> (not res!277484) (not e!271012))))

(assert (=> b!463998 (= res!277484 (and (= (size!14309 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14308 _keys!1025) (size!14309 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463999 () Bool)

(assert (=> b!463999 (= e!271013 (and e!271011 mapRes!20653))))

(declare-fun condMapEmpty!20653 () Bool)

(declare-fun mapDefault!20653 () ValueCell!5982)

(assert (=> b!463999 (= condMapEmpty!20653 (= (arr!13957 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5982)) mapDefault!20653)))))

(assert (= (and start!41564 res!277485) b!463998))

(assert (= (and b!463998 res!277484) b!463993))

(assert (= (and b!463993 res!277487) b!463994))

(assert (= (and b!463994 res!277486) b!463996))

(assert (= (and b!463999 condMapEmpty!20653) mapIsEmpty!20653))

(assert (= (and b!463999 (not condMapEmpty!20653)) mapNonEmpty!20653))

(get-info :version)

(assert (= (and mapNonEmpty!20653 ((_ is ValueCellFull!5982) mapValue!20653)) b!463997))

(assert (= (and b!463999 ((_ is ValueCellFull!5982) mapDefault!20653)) b!463995))

(assert (= start!41564 b!463999))

(declare-fun m!446449 () Bool)

(assert (=> start!41564 m!446449))

(declare-fun m!446451 () Bool)

(assert (=> start!41564 m!446451))

(declare-fun m!446453 () Bool)

(assert (=> start!41564 m!446453))

(declare-fun m!446455 () Bool)

(assert (=> mapNonEmpty!20653 m!446455))

(declare-fun m!446457 () Bool)

(assert (=> b!463994 m!446457))

(declare-fun m!446459 () Bool)

(assert (=> b!463993 m!446459))

(declare-fun m!446461 () Bool)

(assert (=> b!463996 m!446461))

(declare-fun m!446463 () Bool)

(assert (=> b!463996 m!446463))

(declare-fun m!446465 () Bool)

(assert (=> b!463996 m!446465))

(check-sat (not b_next!11223) (not start!41564) (not b!463993) (not mapNonEmpty!20653) tp_is_empty!12651 (not b!463994) b_and!19581 (not b!463996))
(check-sat b_and!19581 (not b_next!11223))
