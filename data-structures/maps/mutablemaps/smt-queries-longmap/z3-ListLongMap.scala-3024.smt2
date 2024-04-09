; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42508 () Bool)

(assert start!42508)

(declare-fun b_free!11955 () Bool)

(declare-fun b_next!11955 () Bool)

(assert (=> start!42508 (= b_free!11955 (not b_next!11955))))

(declare-fun tp!41901 () Bool)

(declare-fun b_and!20441 () Bool)

(assert (=> start!42508 (= tp!41901 b_and!20441)))

(declare-fun b!474018 () Bool)

(declare-fun e!278203 () Bool)

(declare-fun e!278207 () Bool)

(assert (=> b!474018 (= e!278203 (not e!278207))))

(declare-fun res!283203 () Bool)

(assert (=> b!474018 (=> res!283203 e!278207)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474018 (= res!283203 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18949 0))(
  ( (V!18950 (val!6736 Int)) )
))
(declare-datatypes ((tuple2!8876 0))(
  ( (tuple2!8877 (_1!4448 (_ BitVec 64)) (_2!4448 V!18949)) )
))
(declare-datatypes ((List!8985 0))(
  ( (Nil!8982) (Cons!8981 (h!9837 tuple2!8876) (t!14965 List!8985)) )
))
(declare-datatypes ((ListLongMap!7803 0))(
  ( (ListLongMap!7804 (toList!3917 List!8985)) )
))
(declare-fun lt!215853 () ListLongMap!7803)

(declare-fun lt!215851 () ListLongMap!7803)

(assert (=> b!474018 (= lt!215853 lt!215851)))

(declare-fun minValueBefore!38 () V!18949)

(declare-fun zeroValue!794 () V!18949)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30483 0))(
  ( (array!30484 (arr!14657 (Array (_ BitVec 32) (_ BitVec 64))) (size!15009 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30483)

(declare-datatypes ((ValueCell!6348 0))(
  ( (ValueCellFull!6348 (v!9024 V!18949)) (EmptyCell!6348) )
))
(declare-datatypes ((array!30485 0))(
  ( (array!30486 (arr!14658 (Array (_ BitVec 32) ValueCell!6348)) (size!15010 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30485)

(declare-datatypes ((Unit!13957 0))(
  ( (Unit!13958) )
))
(declare-fun lt!215852 () Unit!13957)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18949)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!267 (array!30483 array!30485 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18949 V!18949 V!18949 V!18949 (_ BitVec 32) Int) Unit!13957)

(assert (=> b!474018 (= lt!215852 (lemmaNoChangeToArrayThenSameMapNoExtras!267 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2072 (array!30483 array!30485 (_ BitVec 32) (_ BitVec 32) V!18949 V!18949 (_ BitVec 32) Int) ListLongMap!7803)

(assert (=> b!474018 (= lt!215851 (getCurrentListMapNoExtraKeys!2072 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474018 (= lt!215853 (getCurrentListMapNoExtraKeys!2072 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474019 () Bool)

(assert (=> b!474019 (= e!278207 true)))

(declare-fun lt!215850 () ListLongMap!7803)

(declare-fun lt!215856 () tuple2!8876)

(declare-fun +!1722 (ListLongMap!7803 tuple2!8876) ListLongMap!7803)

(assert (=> b!474019 (= (+!1722 lt!215850 lt!215856) (+!1722 (+!1722 lt!215850 (tuple2!8877 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215856))))

(assert (=> b!474019 (= lt!215856 (tuple2!8877 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215855 () Unit!13957)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!159 (ListLongMap!7803 (_ BitVec 64) V!18949 V!18949) Unit!13957)

(assert (=> b!474019 (= lt!215855 (addSameAsAddTwiceSameKeyDiffValues!159 lt!215850 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!474019 (= lt!215850 (+!1722 lt!215853 (tuple2!8877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215857 () ListLongMap!7803)

(declare-fun getCurrentListMap!2259 (array!30483 array!30485 (_ BitVec 32) (_ BitVec 32) V!18949 V!18949 (_ BitVec 32) Int) ListLongMap!7803)

(assert (=> b!474019 (= lt!215857 (getCurrentListMap!2259 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215854 () ListLongMap!7803)

(assert (=> b!474019 (= lt!215854 (getCurrentListMap!2259 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474020 () Bool)

(declare-fun e!278204 () Bool)

(declare-fun e!278205 () Bool)

(declare-fun mapRes!21790 () Bool)

(assert (=> b!474020 (= e!278204 (and e!278205 mapRes!21790))))

(declare-fun condMapEmpty!21790 () Bool)

(declare-fun mapDefault!21790 () ValueCell!6348)

(assert (=> b!474020 (= condMapEmpty!21790 (= (arr!14658 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6348)) mapDefault!21790)))))

(declare-fun res!283202 () Bool)

(assert (=> start!42508 (=> (not res!283202) (not e!278203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42508 (= res!283202 (validMask!0 mask!1365))))

(assert (=> start!42508 e!278203))

(declare-fun tp_is_empty!13383 () Bool)

(assert (=> start!42508 tp_is_empty!13383))

(assert (=> start!42508 tp!41901))

(assert (=> start!42508 true))

(declare-fun array_inv!10564 (array!30483) Bool)

(assert (=> start!42508 (array_inv!10564 _keys!1025)))

(declare-fun array_inv!10565 (array!30485) Bool)

(assert (=> start!42508 (and (array_inv!10565 _values!833) e!278204)))

(declare-fun b!474021 () Bool)

(declare-fun res!283201 () Bool)

(assert (=> b!474021 (=> (not res!283201) (not e!278203))))

(declare-datatypes ((List!8986 0))(
  ( (Nil!8983) (Cons!8982 (h!9838 (_ BitVec 64)) (t!14966 List!8986)) )
))
(declare-fun arrayNoDuplicates!0 (array!30483 (_ BitVec 32) List!8986) Bool)

(assert (=> b!474021 (= res!283201 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8983))))

(declare-fun b!474022 () Bool)

(declare-fun res!283204 () Bool)

(assert (=> b!474022 (=> (not res!283204) (not e!278203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30483 (_ BitVec 32)) Bool)

(assert (=> b!474022 (= res!283204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21790 () Bool)

(declare-fun tp!41902 () Bool)

(declare-fun e!278206 () Bool)

(assert (=> mapNonEmpty!21790 (= mapRes!21790 (and tp!41902 e!278206))))

(declare-fun mapRest!21790 () (Array (_ BitVec 32) ValueCell!6348))

(declare-fun mapValue!21790 () ValueCell!6348)

(declare-fun mapKey!21790 () (_ BitVec 32))

(assert (=> mapNonEmpty!21790 (= (arr!14658 _values!833) (store mapRest!21790 mapKey!21790 mapValue!21790))))

(declare-fun b!474023 () Bool)

(assert (=> b!474023 (= e!278205 tp_is_empty!13383)))

(declare-fun mapIsEmpty!21790 () Bool)

(assert (=> mapIsEmpty!21790 mapRes!21790))

(declare-fun b!474024 () Bool)

(declare-fun res!283205 () Bool)

(assert (=> b!474024 (=> (not res!283205) (not e!278203))))

(assert (=> b!474024 (= res!283205 (and (= (size!15010 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15009 _keys!1025) (size!15010 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474025 () Bool)

(assert (=> b!474025 (= e!278206 tp_is_empty!13383)))

(assert (= (and start!42508 res!283202) b!474024))

(assert (= (and b!474024 res!283205) b!474022))

(assert (= (and b!474022 res!283204) b!474021))

(assert (= (and b!474021 res!283201) b!474018))

(assert (= (and b!474018 (not res!283203)) b!474019))

(assert (= (and b!474020 condMapEmpty!21790) mapIsEmpty!21790))

(assert (= (and b!474020 (not condMapEmpty!21790)) mapNonEmpty!21790))

(get-info :version)

(assert (= (and mapNonEmpty!21790 ((_ is ValueCellFull!6348) mapValue!21790)) b!474025))

(assert (= (and b!474020 ((_ is ValueCellFull!6348) mapDefault!21790)) b!474023))

(assert (= start!42508 b!474020))

(declare-fun m!456333 () Bool)

(assert (=> start!42508 m!456333))

(declare-fun m!456335 () Bool)

(assert (=> start!42508 m!456335))

(declare-fun m!456337 () Bool)

(assert (=> start!42508 m!456337))

(declare-fun m!456339 () Bool)

(assert (=> b!474018 m!456339))

(declare-fun m!456341 () Bool)

(assert (=> b!474018 m!456341))

(declare-fun m!456343 () Bool)

(assert (=> b!474018 m!456343))

(declare-fun m!456345 () Bool)

(assert (=> b!474019 m!456345))

(declare-fun m!456347 () Bool)

(assert (=> b!474019 m!456347))

(assert (=> b!474019 m!456345))

(declare-fun m!456349 () Bool)

(assert (=> b!474019 m!456349))

(declare-fun m!456351 () Bool)

(assert (=> b!474019 m!456351))

(declare-fun m!456353 () Bool)

(assert (=> b!474019 m!456353))

(declare-fun m!456355 () Bool)

(assert (=> b!474019 m!456355))

(declare-fun m!456357 () Bool)

(assert (=> b!474019 m!456357))

(declare-fun m!456359 () Bool)

(assert (=> mapNonEmpty!21790 m!456359))

(declare-fun m!456361 () Bool)

(assert (=> b!474022 m!456361))

(declare-fun m!456363 () Bool)

(assert (=> b!474021 m!456363))

(check-sat (not mapNonEmpty!21790) (not b_next!11955) b_and!20441 (not b!474022) (not start!42508) (not b!474019) (not b!474018) (not b!474021) tp_is_empty!13383)
(check-sat b_and!20441 (not b_next!11955))
