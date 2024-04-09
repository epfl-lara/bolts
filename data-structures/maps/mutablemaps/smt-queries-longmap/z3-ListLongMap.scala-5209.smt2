; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70312 () Bool)

(assert start!70312)

(declare-fun b_free!12663 () Bool)

(declare-fun b_next!12663 () Bool)

(assert (=> start!70312 (= b_free!12663 (not b_next!12663))))

(declare-fun tp!44712 () Bool)

(declare-fun b_and!21481 () Bool)

(assert (=> start!70312 (= tp!44712 b_and!21481)))

(declare-fun b!816424 () Bool)

(declare-fun res!557505 () Bool)

(declare-fun e!452933 () Bool)

(assert (=> b!816424 (=> (not res!557505) (not e!452933))))

(declare-datatypes ((array!44926 0))(
  ( (array!44927 (arr!21516 (Array (_ BitVec 32) (_ BitVec 64))) (size!21937 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44926)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24165 0))(
  ( (V!24166 (val!7234 Int)) )
))
(declare-datatypes ((ValueCell!6771 0))(
  ( (ValueCellFull!6771 (v!9658 V!24165)) (EmptyCell!6771) )
))
(declare-datatypes ((array!44928 0))(
  ( (array!44929 (arr!21517 (Array (_ BitVec 32) ValueCell!6771)) (size!21938 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44928)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816424 (= res!557505 (and (= (size!21938 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21937 _keys!976) (size!21938 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816425 () Bool)

(declare-fun e!452930 () Bool)

(assert (=> b!816425 (= e!452930 true)))

(declare-datatypes ((tuple2!9508 0))(
  ( (tuple2!9509 (_1!4764 (_ BitVec 64)) (_2!4764 V!24165)) )
))
(declare-datatypes ((List!15378 0))(
  ( (Nil!15375) (Cons!15374 (h!16503 tuple2!9508) (t!21709 List!15378)) )
))
(declare-datatypes ((ListLongMap!8345 0))(
  ( (ListLongMap!8346 (toList!4188 List!15378)) )
))
(declare-fun lt!365708 () ListLongMap!8345)

(declare-fun zeroValueAfter!34 () V!24165)

(declare-fun minValue!754 () V!24165)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2375 (array!44926 array!44928 (_ BitVec 32) (_ BitVec 32) V!24165 V!24165 (_ BitVec 32) Int) ListLongMap!8345)

(assert (=> b!816425 (= lt!365708 (getCurrentListMap!2375 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24165)

(declare-fun lt!365712 () ListLongMap!8345)

(declare-fun +!1774 (ListLongMap!8345 tuple2!9508) ListLongMap!8345)

(assert (=> b!816425 (= lt!365712 (+!1774 (getCurrentListMap!2375 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9509 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816426 () Bool)

(declare-fun e!452932 () Bool)

(declare-fun e!452931 () Bool)

(declare-fun mapRes!23149 () Bool)

(assert (=> b!816426 (= e!452932 (and e!452931 mapRes!23149))))

(declare-fun condMapEmpty!23149 () Bool)

(declare-fun mapDefault!23149 () ValueCell!6771)

(assert (=> b!816426 (= condMapEmpty!23149 (= (arr!21517 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6771)) mapDefault!23149)))))

(declare-fun b!816427 () Bool)

(declare-fun res!557504 () Bool)

(assert (=> b!816427 (=> (not res!557504) (not e!452933))))

(declare-datatypes ((List!15379 0))(
  ( (Nil!15376) (Cons!15375 (h!16504 (_ BitVec 64)) (t!21710 List!15379)) )
))
(declare-fun arrayNoDuplicates!0 (array!44926 (_ BitVec 32) List!15379) Bool)

(assert (=> b!816427 (= res!557504 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15376))))

(declare-fun b!816428 () Bool)

(declare-fun res!557507 () Bool)

(assert (=> b!816428 (=> (not res!557507) (not e!452933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44926 (_ BitVec 32)) Bool)

(assert (=> b!816428 (= res!557507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23149 () Bool)

(assert (=> mapIsEmpty!23149 mapRes!23149))

(declare-fun b!816429 () Bool)

(declare-fun e!452929 () Bool)

(declare-fun tp_is_empty!14373 () Bool)

(assert (=> b!816429 (= e!452929 tp_is_empty!14373)))

(declare-fun res!557503 () Bool)

(assert (=> start!70312 (=> (not res!557503) (not e!452933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70312 (= res!557503 (validMask!0 mask!1312))))

(assert (=> start!70312 e!452933))

(assert (=> start!70312 tp_is_empty!14373))

(declare-fun array_inv!17191 (array!44926) Bool)

(assert (=> start!70312 (array_inv!17191 _keys!976)))

(assert (=> start!70312 true))

(declare-fun array_inv!17192 (array!44928) Bool)

(assert (=> start!70312 (and (array_inv!17192 _values!788) e!452932)))

(assert (=> start!70312 tp!44712))

(declare-fun mapNonEmpty!23149 () Bool)

(declare-fun tp!44713 () Bool)

(assert (=> mapNonEmpty!23149 (= mapRes!23149 (and tp!44713 e!452929))))

(declare-fun mapValue!23149 () ValueCell!6771)

(declare-fun mapRest!23149 () (Array (_ BitVec 32) ValueCell!6771))

(declare-fun mapKey!23149 () (_ BitVec 32))

(assert (=> mapNonEmpty!23149 (= (arr!21517 _values!788) (store mapRest!23149 mapKey!23149 mapValue!23149))))

(declare-fun b!816430 () Bool)

(assert (=> b!816430 (= e!452931 tp_is_empty!14373)))

(declare-fun b!816431 () Bool)

(assert (=> b!816431 (= e!452933 (not e!452930))))

(declare-fun res!557506 () Bool)

(assert (=> b!816431 (=> res!557506 e!452930)))

(assert (=> b!816431 (= res!557506 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365709 () ListLongMap!8345)

(declare-fun lt!365711 () ListLongMap!8345)

(assert (=> b!816431 (= lt!365709 lt!365711)))

(declare-datatypes ((Unit!27832 0))(
  ( (Unit!27833) )
))
(declare-fun lt!365710 () Unit!27832)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!352 (array!44926 array!44928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24165 V!24165 V!24165 V!24165 (_ BitVec 32) Int) Unit!27832)

(assert (=> b!816431 (= lt!365710 (lemmaNoChangeToArrayThenSameMapNoExtras!352 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2236 (array!44926 array!44928 (_ BitVec 32) (_ BitVec 32) V!24165 V!24165 (_ BitVec 32) Int) ListLongMap!8345)

(assert (=> b!816431 (= lt!365711 (getCurrentListMapNoExtraKeys!2236 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816431 (= lt!365709 (getCurrentListMapNoExtraKeys!2236 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70312 res!557503) b!816424))

(assert (= (and b!816424 res!557505) b!816428))

(assert (= (and b!816428 res!557507) b!816427))

(assert (= (and b!816427 res!557504) b!816431))

(assert (= (and b!816431 (not res!557506)) b!816425))

(assert (= (and b!816426 condMapEmpty!23149) mapIsEmpty!23149))

(assert (= (and b!816426 (not condMapEmpty!23149)) mapNonEmpty!23149))

(get-info :version)

(assert (= (and mapNonEmpty!23149 ((_ is ValueCellFull!6771) mapValue!23149)) b!816429))

(assert (= (and b!816426 ((_ is ValueCellFull!6771) mapDefault!23149)) b!816430))

(assert (= start!70312 b!816426))

(declare-fun m!758149 () Bool)

(assert (=> start!70312 m!758149))

(declare-fun m!758151 () Bool)

(assert (=> start!70312 m!758151))

(declare-fun m!758153 () Bool)

(assert (=> start!70312 m!758153))

(declare-fun m!758155 () Bool)

(assert (=> mapNonEmpty!23149 m!758155))

(declare-fun m!758157 () Bool)

(assert (=> b!816431 m!758157))

(declare-fun m!758159 () Bool)

(assert (=> b!816431 m!758159))

(declare-fun m!758161 () Bool)

(assert (=> b!816431 m!758161))

(declare-fun m!758163 () Bool)

(assert (=> b!816428 m!758163))

(declare-fun m!758165 () Bool)

(assert (=> b!816425 m!758165))

(declare-fun m!758167 () Bool)

(assert (=> b!816425 m!758167))

(assert (=> b!816425 m!758167))

(declare-fun m!758169 () Bool)

(assert (=> b!816425 m!758169))

(declare-fun m!758171 () Bool)

(assert (=> b!816427 m!758171))

(check-sat (not b!816431) (not mapNonEmpty!23149) (not b!816425) (not b!816428) (not b_next!12663) (not b!816427) (not start!70312) tp_is_empty!14373 b_and!21481)
(check-sat b_and!21481 (not b_next!12663))
