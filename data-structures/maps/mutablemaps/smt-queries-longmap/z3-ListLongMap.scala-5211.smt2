; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70324 () Bool)

(assert start!70324)

(declare-fun b_free!12675 () Bool)

(declare-fun b_next!12675 () Bool)

(assert (=> start!70324 (= b_free!12675 (not b_next!12675))))

(declare-fun tp!44748 () Bool)

(declare-fun b_and!21493 () Bool)

(assert (=> start!70324 (= tp!44748 b_and!21493)))

(declare-fun b!816568 () Bool)

(declare-fun res!557597 () Bool)

(declare-fun e!453038 () Bool)

(assert (=> b!816568 (=> (not res!557597) (not e!453038))))

(declare-datatypes ((array!44948 0))(
  ( (array!44949 (arr!21527 (Array (_ BitVec 32) (_ BitVec 64))) (size!21948 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44948)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24181 0))(
  ( (V!24182 (val!7240 Int)) )
))
(declare-datatypes ((ValueCell!6777 0))(
  ( (ValueCellFull!6777 (v!9664 V!24181)) (EmptyCell!6777) )
))
(declare-datatypes ((array!44950 0))(
  ( (array!44951 (arr!21528 (Array (_ BitVec 32) ValueCell!6777)) (size!21949 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44950)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816568 (= res!557597 (and (= (size!21949 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21948 _keys!976) (size!21949 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816569 () Bool)

(declare-fun res!557596 () Bool)

(assert (=> b!816569 (=> (not res!557596) (not e!453038))))

(declare-datatypes ((List!15387 0))(
  ( (Nil!15384) (Cons!15383 (h!16512 (_ BitVec 64)) (t!21718 List!15387)) )
))
(declare-fun arrayNoDuplicates!0 (array!44948 (_ BitVec 32) List!15387) Bool)

(assert (=> b!816569 (= res!557596 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15384))))

(declare-fun b!816570 () Bool)

(declare-fun e!453040 () Bool)

(declare-fun e!453041 () Bool)

(declare-fun mapRes!23167 () Bool)

(assert (=> b!816570 (= e!453040 (and e!453041 mapRes!23167))))

(declare-fun condMapEmpty!23167 () Bool)

(declare-fun mapDefault!23167 () ValueCell!6777)

(assert (=> b!816570 (= condMapEmpty!23167 (= (arr!21528 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6777)) mapDefault!23167)))))

(declare-fun b!816571 () Bool)

(declare-fun e!453042 () Bool)

(declare-fun tp_is_empty!14385 () Bool)

(assert (=> b!816571 (= e!453042 tp_is_empty!14385)))

(declare-fun mapNonEmpty!23167 () Bool)

(declare-fun tp!44749 () Bool)

(assert (=> mapNonEmpty!23167 (= mapRes!23167 (and tp!44749 e!453042))))

(declare-fun mapKey!23167 () (_ BitVec 32))

(declare-fun mapValue!23167 () ValueCell!6777)

(declare-fun mapRest!23167 () (Array (_ BitVec 32) ValueCell!6777))

(assert (=> mapNonEmpty!23167 (= (arr!21528 _values!788) (store mapRest!23167 mapKey!23167 mapValue!23167))))

(declare-fun b!816572 () Bool)

(declare-fun e!453037 () Bool)

(assert (=> b!816572 (= e!453037 true)))

(declare-fun zeroValueAfter!34 () V!24181)

(declare-fun minValue!754 () V!24181)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9516 0))(
  ( (tuple2!9517 (_1!4768 (_ BitVec 64)) (_2!4768 V!24181)) )
))
(declare-datatypes ((List!15388 0))(
  ( (Nil!15385) (Cons!15384 (h!16513 tuple2!9516) (t!21719 List!15388)) )
))
(declare-datatypes ((ListLongMap!8353 0))(
  ( (ListLongMap!8354 (toList!4192 List!15388)) )
))
(declare-fun lt!365798 () ListLongMap!8353)

(declare-fun getCurrentListMap!2378 (array!44948 array!44950 (_ BitVec 32) (_ BitVec 32) V!24181 V!24181 (_ BitVec 32) Int) ListLongMap!8353)

(assert (=> b!816572 (= lt!365798 (getCurrentListMap!2378 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24181)

(declare-fun lt!365802 () ListLongMap!8353)

(declare-fun +!1777 (ListLongMap!8353 tuple2!9516) ListLongMap!8353)

(assert (=> b!816572 (= lt!365802 (+!1777 (getCurrentListMap!2378 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9517 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816573 () Bool)

(declare-fun res!557593 () Bool)

(assert (=> b!816573 (=> (not res!557593) (not e!453038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44948 (_ BitVec 32)) Bool)

(assert (=> b!816573 (= res!557593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816574 () Bool)

(assert (=> b!816574 (= e!453041 tp_is_empty!14385)))

(declare-fun mapIsEmpty!23167 () Bool)

(assert (=> mapIsEmpty!23167 mapRes!23167))

(declare-fun res!557595 () Bool)

(assert (=> start!70324 (=> (not res!557595) (not e!453038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70324 (= res!557595 (validMask!0 mask!1312))))

(assert (=> start!70324 e!453038))

(assert (=> start!70324 tp_is_empty!14385))

(declare-fun array_inv!17197 (array!44948) Bool)

(assert (=> start!70324 (array_inv!17197 _keys!976)))

(assert (=> start!70324 true))

(declare-fun array_inv!17198 (array!44950) Bool)

(assert (=> start!70324 (and (array_inv!17198 _values!788) e!453040)))

(assert (=> start!70324 tp!44748))

(declare-fun b!816575 () Bool)

(assert (=> b!816575 (= e!453038 (not e!453037))))

(declare-fun res!557594 () Bool)

(assert (=> b!816575 (=> res!557594 e!453037)))

(assert (=> b!816575 (= res!557594 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365799 () ListLongMap!8353)

(declare-fun lt!365801 () ListLongMap!8353)

(assert (=> b!816575 (= lt!365799 lt!365801)))

(declare-datatypes ((Unit!27838 0))(
  ( (Unit!27839) )
))
(declare-fun lt!365800 () Unit!27838)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!355 (array!44948 array!44950 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24181 V!24181 V!24181 V!24181 (_ BitVec 32) Int) Unit!27838)

(assert (=> b!816575 (= lt!365800 (lemmaNoChangeToArrayThenSameMapNoExtras!355 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2239 (array!44948 array!44950 (_ BitVec 32) (_ BitVec 32) V!24181 V!24181 (_ BitVec 32) Int) ListLongMap!8353)

(assert (=> b!816575 (= lt!365801 (getCurrentListMapNoExtraKeys!2239 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816575 (= lt!365799 (getCurrentListMapNoExtraKeys!2239 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70324 res!557595) b!816568))

(assert (= (and b!816568 res!557597) b!816573))

(assert (= (and b!816573 res!557593) b!816569))

(assert (= (and b!816569 res!557596) b!816575))

(assert (= (and b!816575 (not res!557594)) b!816572))

(assert (= (and b!816570 condMapEmpty!23167) mapIsEmpty!23167))

(assert (= (and b!816570 (not condMapEmpty!23167)) mapNonEmpty!23167))

(get-info :version)

(assert (= (and mapNonEmpty!23167 ((_ is ValueCellFull!6777) mapValue!23167)) b!816571))

(assert (= (and b!816570 ((_ is ValueCellFull!6777) mapDefault!23167)) b!816574))

(assert (= start!70324 b!816570))

(declare-fun m!758293 () Bool)

(assert (=> mapNonEmpty!23167 m!758293))

(declare-fun m!758295 () Bool)

(assert (=> b!816569 m!758295))

(declare-fun m!758297 () Bool)

(assert (=> start!70324 m!758297))

(declare-fun m!758299 () Bool)

(assert (=> start!70324 m!758299))

(declare-fun m!758301 () Bool)

(assert (=> start!70324 m!758301))

(declare-fun m!758303 () Bool)

(assert (=> b!816575 m!758303))

(declare-fun m!758305 () Bool)

(assert (=> b!816575 m!758305))

(declare-fun m!758307 () Bool)

(assert (=> b!816575 m!758307))

(declare-fun m!758309 () Bool)

(assert (=> b!816573 m!758309))

(declare-fun m!758311 () Bool)

(assert (=> b!816572 m!758311))

(declare-fun m!758313 () Bool)

(assert (=> b!816572 m!758313))

(assert (=> b!816572 m!758313))

(declare-fun m!758315 () Bool)

(assert (=> b!816572 m!758315))

(check-sat (not b!816569) (not b_next!12675) tp_is_empty!14385 b_and!21493 (not mapNonEmpty!23167) (not b!816573) (not b!816575) (not start!70324) (not b!816572))
(check-sat b_and!21493 (not b_next!12675))
