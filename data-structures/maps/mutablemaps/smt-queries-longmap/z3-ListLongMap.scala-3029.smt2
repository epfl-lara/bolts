; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42558 () Bool)

(assert start!42558)

(declare-fun b_free!11985 () Bool)

(declare-fun b_next!11985 () Bool)

(assert (=> start!42558 (= b_free!11985 (not b_next!11985))))

(declare-fun tp!41995 () Bool)

(declare-fun b_and!20483 () Bool)

(assert (=> start!42558 (= tp!41995 b_and!20483)))

(declare-fun b!474536 () Bool)

(declare-fun res!283485 () Bool)

(declare-fun e!278566 () Bool)

(assert (=> b!474536 (=> (not res!283485) (not e!278566))))

(declare-datatypes ((array!30545 0))(
  ( (array!30546 (arr!14687 (Array (_ BitVec 32) (_ BitVec 64))) (size!15039 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30545)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30545 (_ BitVec 32)) Bool)

(assert (=> b!474536 (= res!283485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474537 () Bool)

(declare-fun e!278562 () Bool)

(declare-fun tp_is_empty!13413 () Bool)

(assert (=> b!474537 (= e!278562 tp_is_empty!13413)))

(declare-fun res!283483 () Bool)

(assert (=> start!42558 (=> (not res!283483) (not e!278566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42558 (= res!283483 (validMask!0 mask!1365))))

(assert (=> start!42558 e!278566))

(assert (=> start!42558 tp_is_empty!13413))

(assert (=> start!42558 tp!41995))

(assert (=> start!42558 true))

(declare-fun array_inv!10582 (array!30545) Bool)

(assert (=> start!42558 (array_inv!10582 _keys!1025)))

(declare-datatypes ((V!18989 0))(
  ( (V!18990 (val!6751 Int)) )
))
(declare-datatypes ((ValueCell!6363 0))(
  ( (ValueCellFull!6363 (v!9040 V!18989)) (EmptyCell!6363) )
))
(declare-datatypes ((array!30547 0))(
  ( (array!30548 (arr!14688 (Array (_ BitVec 32) ValueCell!6363)) (size!15040 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30547)

(declare-fun e!278565 () Bool)

(declare-fun array_inv!10583 (array!30547) Bool)

(assert (=> start!42558 (and (array_inv!10583 _values!833) e!278565)))

(declare-fun b!474538 () Bool)

(declare-fun mapRes!21838 () Bool)

(assert (=> b!474538 (= e!278565 (and e!278562 mapRes!21838))))

(declare-fun condMapEmpty!21838 () Bool)

(declare-fun mapDefault!21838 () ValueCell!6363)

(assert (=> b!474538 (= condMapEmpty!21838 (= (arr!14688 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6363)) mapDefault!21838)))))

(declare-fun mapIsEmpty!21838 () Bool)

(assert (=> mapIsEmpty!21838 mapRes!21838))

(declare-fun b!474539 () Bool)

(assert (=> b!474539 (= e!278566 false)))

(declare-fun zeroValue!794 () V!18989)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8898 0))(
  ( (tuple2!8899 (_1!4459 (_ BitVec 64)) (_2!4459 V!18989)) )
))
(declare-datatypes ((List!9010 0))(
  ( (Nil!9007) (Cons!9006 (h!9862 tuple2!8898) (t!14992 List!9010)) )
))
(declare-datatypes ((ListLongMap!7825 0))(
  ( (ListLongMap!7826 (toList!3928 List!9010)) )
))
(declare-fun lt!216237 () ListLongMap!7825)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18989)

(declare-fun getCurrentListMapNoExtraKeys!2082 (array!30545 array!30547 (_ BitVec 32) (_ BitVec 32) V!18989 V!18989 (_ BitVec 32) Int) ListLongMap!7825)

(assert (=> b!474539 (= lt!216237 (getCurrentListMapNoExtraKeys!2082 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18989)

(declare-fun lt!216236 () ListLongMap!7825)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474539 (= lt!216236 (getCurrentListMapNoExtraKeys!2082 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474540 () Bool)

(declare-fun e!278563 () Bool)

(assert (=> b!474540 (= e!278563 tp_is_empty!13413)))

(declare-fun b!474541 () Bool)

(declare-fun res!283482 () Bool)

(assert (=> b!474541 (=> (not res!283482) (not e!278566))))

(declare-datatypes ((List!9011 0))(
  ( (Nil!9008) (Cons!9007 (h!9863 (_ BitVec 64)) (t!14993 List!9011)) )
))
(declare-fun arrayNoDuplicates!0 (array!30545 (_ BitVec 32) List!9011) Bool)

(assert (=> b!474541 (= res!283482 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9008))))

(declare-fun mapNonEmpty!21838 () Bool)

(declare-fun tp!41994 () Bool)

(assert (=> mapNonEmpty!21838 (= mapRes!21838 (and tp!41994 e!278563))))

(declare-fun mapKey!21838 () (_ BitVec 32))

(declare-fun mapValue!21838 () ValueCell!6363)

(declare-fun mapRest!21838 () (Array (_ BitVec 32) ValueCell!6363))

(assert (=> mapNonEmpty!21838 (= (arr!14688 _values!833) (store mapRest!21838 mapKey!21838 mapValue!21838))))

(declare-fun b!474542 () Bool)

(declare-fun res!283484 () Bool)

(assert (=> b!474542 (=> (not res!283484) (not e!278566))))

(assert (=> b!474542 (= res!283484 (and (= (size!15040 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15039 _keys!1025) (size!15040 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42558 res!283483) b!474542))

(assert (= (and b!474542 res!283484) b!474536))

(assert (= (and b!474536 res!283485) b!474541))

(assert (= (and b!474541 res!283482) b!474539))

(assert (= (and b!474538 condMapEmpty!21838) mapIsEmpty!21838))

(assert (= (and b!474538 (not condMapEmpty!21838)) mapNonEmpty!21838))

(get-info :version)

(assert (= (and mapNonEmpty!21838 ((_ is ValueCellFull!6363) mapValue!21838)) b!474540))

(assert (= (and b!474538 ((_ is ValueCellFull!6363) mapDefault!21838)) b!474537))

(assert (= start!42558 b!474538))

(declare-fun m!456919 () Bool)

(assert (=> mapNonEmpty!21838 m!456919))

(declare-fun m!456921 () Bool)

(assert (=> b!474536 m!456921))

(declare-fun m!456923 () Bool)

(assert (=> b!474541 m!456923))

(declare-fun m!456925 () Bool)

(assert (=> b!474539 m!456925))

(declare-fun m!456927 () Bool)

(assert (=> b!474539 m!456927))

(declare-fun m!456929 () Bool)

(assert (=> start!42558 m!456929))

(declare-fun m!456931 () Bool)

(assert (=> start!42558 m!456931))

(declare-fun m!456933 () Bool)

(assert (=> start!42558 m!456933))

(check-sat (not b!474539) b_and!20483 (not b_next!11985) (not b!474536) (not b!474541) (not mapNonEmpty!21838) tp_is_empty!13413 (not start!42558))
(check-sat b_and!20483 (not b_next!11985))
