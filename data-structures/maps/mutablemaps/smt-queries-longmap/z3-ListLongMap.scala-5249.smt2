; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70620 () Bool)

(assert start!70620)

(declare-fun b_free!12903 () Bool)

(declare-fun b_next!12903 () Bool)

(assert (=> start!70620 (= b_free!12903 (not b_next!12903))))

(declare-fun tp!45444 () Bool)

(declare-fun b_and!21763 () Bool)

(assert (=> start!70620 (= tp!45444 b_and!21763)))

(declare-fun b!819983 () Bool)

(declare-fun e!455544 () Bool)

(declare-fun tp_is_empty!14613 () Bool)

(assert (=> b!819983 (= e!455544 tp_is_empty!14613)))

(declare-fun b!819984 () Bool)

(declare-fun e!455541 () Bool)

(declare-fun e!455545 () Bool)

(assert (=> b!819984 (= e!455541 (not e!455545))))

(declare-fun res!559635 () Bool)

(assert (=> b!819984 (=> res!559635 e!455545)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819984 (= res!559635 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24485 0))(
  ( (V!24486 (val!7354 Int)) )
))
(declare-datatypes ((tuple2!9696 0))(
  ( (tuple2!9697 (_1!4858 (_ BitVec 64)) (_2!4858 V!24485)) )
))
(declare-datatypes ((List!15554 0))(
  ( (Nil!15551) (Cons!15550 (h!16679 tuple2!9696) (t!21893 List!15554)) )
))
(declare-datatypes ((ListLongMap!8533 0))(
  ( (ListLongMap!8534 (toList!4282 List!15554)) )
))
(declare-fun lt!368435 () ListLongMap!8533)

(declare-fun lt!368436 () ListLongMap!8533)

(assert (=> b!819984 (= lt!368435 lt!368436)))

(declare-fun zeroValueBefore!34 () V!24485)

(declare-datatypes ((array!45390 0))(
  ( (array!45391 (arr!21744 (Array (_ BitVec 32) (_ BitVec 64))) (size!22165 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45390)

(declare-fun zeroValueAfter!34 () V!24485)

(declare-fun minValue!754 () V!24485)

(declare-datatypes ((ValueCell!6891 0))(
  ( (ValueCellFull!6891 (v!9780 V!24485)) (EmptyCell!6891) )
))
(declare-datatypes ((array!45392 0))(
  ( (array!45393 (arr!21745 (Array (_ BitVec 32) ValueCell!6891)) (size!22166 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45392)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28015 0))(
  ( (Unit!28016) )
))
(declare-fun lt!368437 () Unit!28015)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!432 (array!45390 array!45392 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24485 V!24485 V!24485 V!24485 (_ BitVec 32) Int) Unit!28015)

(assert (=> b!819984 (= lt!368437 (lemmaNoChangeToArrayThenSameMapNoExtras!432 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2316 (array!45390 array!45392 (_ BitVec 32) (_ BitVec 32) V!24485 V!24485 (_ BitVec 32) Int) ListLongMap!8533)

(assert (=> b!819984 (= lt!368436 (getCurrentListMapNoExtraKeys!2316 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819984 (= lt!368435 (getCurrentListMapNoExtraKeys!2316 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819985 () Bool)

(declare-fun res!559634 () Bool)

(assert (=> b!819985 (=> (not res!559634) (not e!455541))))

(assert (=> b!819985 (= res!559634 (and (= (size!22166 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22165 _keys!976) (size!22166 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!368434 () ListLongMap!8533)

(declare-fun b!819986 () Bool)

(declare-fun e!455546 () Bool)

(declare-fun +!1823 (ListLongMap!8533 tuple2!9696) ListLongMap!8533)

(assert (=> b!819986 (= e!455546 (= lt!368434 (+!1823 lt!368436 (tuple2!9697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819987 () Bool)

(declare-fun res!559637 () Bool)

(assert (=> b!819987 (=> (not res!559637) (not e!455541))))

(declare-datatypes ((List!15555 0))(
  ( (Nil!15552) (Cons!15551 (h!16680 (_ BitVec 64)) (t!21894 List!15555)) )
))
(declare-fun arrayNoDuplicates!0 (array!45390 (_ BitVec 32) List!15555) Bool)

(assert (=> b!819987 (= res!559637 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15552))))

(declare-fun b!819989 () Bool)

(declare-fun res!559639 () Bool)

(assert (=> b!819989 (=> (not res!559639) (not e!455541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45390 (_ BitVec 32)) Bool)

(assert (=> b!819989 (= res!559639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23521 () Bool)

(declare-fun mapRes!23521 () Bool)

(declare-fun tp!45445 () Bool)

(assert (=> mapNonEmpty!23521 (= mapRes!23521 (and tp!45445 e!455544))))

(declare-fun mapKey!23521 () (_ BitVec 32))

(declare-fun mapValue!23521 () ValueCell!6891)

(declare-fun mapRest!23521 () (Array (_ BitVec 32) ValueCell!6891))

(assert (=> mapNonEmpty!23521 (= (arr!21745 _values!788) (store mapRest!23521 mapKey!23521 mapValue!23521))))

(declare-fun b!819990 () Bool)

(declare-fun e!455543 () Bool)

(assert (=> b!819990 (= e!455543 tp_is_empty!14613)))

(declare-fun b!819991 () Bool)

(declare-fun e!455542 () Bool)

(assert (=> b!819991 (= e!455542 (and e!455543 mapRes!23521))))

(declare-fun condMapEmpty!23521 () Bool)

(declare-fun mapDefault!23521 () ValueCell!6891)

(assert (=> b!819991 (= condMapEmpty!23521 (= (arr!21745 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6891)) mapDefault!23521)))))

(declare-fun mapIsEmpty!23521 () Bool)

(assert (=> mapIsEmpty!23521 mapRes!23521))

(declare-fun res!559636 () Bool)

(assert (=> start!70620 (=> (not res!559636) (not e!455541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70620 (= res!559636 (validMask!0 mask!1312))))

(assert (=> start!70620 e!455541))

(assert (=> start!70620 tp_is_empty!14613))

(declare-fun array_inv!17349 (array!45390) Bool)

(assert (=> start!70620 (array_inv!17349 _keys!976)))

(assert (=> start!70620 true))

(declare-fun array_inv!17350 (array!45392) Bool)

(assert (=> start!70620 (and (array_inv!17350 _values!788) e!455542)))

(assert (=> start!70620 tp!45444))

(declare-fun b!819988 () Bool)

(assert (=> b!819988 (= e!455545 true)))

(declare-fun lt!368433 () ListLongMap!8533)

(declare-fun lt!368441 () tuple2!9696)

(declare-fun lt!368440 () tuple2!9696)

(assert (=> b!819988 (= lt!368433 (+!1823 (+!1823 lt!368436 lt!368440) lt!368441))))

(declare-fun lt!368438 () ListLongMap!8533)

(assert (=> b!819988 (= (+!1823 lt!368435 lt!368441) (+!1823 lt!368438 lt!368441))))

(declare-fun lt!368439 () Unit!28015)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!199 (ListLongMap!8533 (_ BitVec 64) V!24485 V!24485) Unit!28015)

(assert (=> b!819988 (= lt!368439 (addSameAsAddTwiceSameKeyDiffValues!199 lt!368435 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819988 (= lt!368441 (tuple2!9697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819988 e!455546))

(declare-fun res!559638 () Bool)

(assert (=> b!819988 (=> (not res!559638) (not e!455546))))

(declare-fun lt!368432 () ListLongMap!8533)

(assert (=> b!819988 (= res!559638 (= lt!368432 lt!368438))))

(assert (=> b!819988 (= lt!368438 (+!1823 lt!368435 lt!368440))))

(assert (=> b!819988 (= lt!368440 (tuple2!9697 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2434 (array!45390 array!45392 (_ BitVec 32) (_ BitVec 32) V!24485 V!24485 (_ BitVec 32) Int) ListLongMap!8533)

(assert (=> b!819988 (= lt!368434 (getCurrentListMap!2434 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819988 (= lt!368432 (getCurrentListMap!2434 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70620 res!559636) b!819985))

(assert (= (and b!819985 res!559634) b!819989))

(assert (= (and b!819989 res!559639) b!819987))

(assert (= (and b!819987 res!559637) b!819984))

(assert (= (and b!819984 (not res!559635)) b!819988))

(assert (= (and b!819988 res!559638) b!819986))

(assert (= (and b!819991 condMapEmpty!23521) mapIsEmpty!23521))

(assert (= (and b!819991 (not condMapEmpty!23521)) mapNonEmpty!23521))

(get-info :version)

(assert (= (and mapNonEmpty!23521 ((_ is ValueCellFull!6891) mapValue!23521)) b!819983))

(assert (= (and b!819991 ((_ is ValueCellFull!6891) mapDefault!23521)) b!819990))

(assert (= start!70620 b!819991))

(declare-fun m!761933 () Bool)

(assert (=> start!70620 m!761933))

(declare-fun m!761935 () Bool)

(assert (=> start!70620 m!761935))

(declare-fun m!761937 () Bool)

(assert (=> start!70620 m!761937))

(declare-fun m!761939 () Bool)

(assert (=> b!819986 m!761939))

(declare-fun m!761941 () Bool)

(assert (=> b!819989 m!761941))

(declare-fun m!761943 () Bool)

(assert (=> b!819984 m!761943))

(declare-fun m!761945 () Bool)

(assert (=> b!819984 m!761945))

(declare-fun m!761947 () Bool)

(assert (=> b!819984 m!761947))

(declare-fun m!761949 () Bool)

(assert (=> mapNonEmpty!23521 m!761949))

(declare-fun m!761951 () Bool)

(assert (=> b!819988 m!761951))

(declare-fun m!761953 () Bool)

(assert (=> b!819988 m!761953))

(declare-fun m!761955 () Bool)

(assert (=> b!819988 m!761955))

(declare-fun m!761957 () Bool)

(assert (=> b!819988 m!761957))

(declare-fun m!761959 () Bool)

(assert (=> b!819988 m!761959))

(assert (=> b!819988 m!761955))

(declare-fun m!761961 () Bool)

(assert (=> b!819988 m!761961))

(declare-fun m!761963 () Bool)

(assert (=> b!819988 m!761963))

(declare-fun m!761965 () Bool)

(assert (=> b!819988 m!761965))

(declare-fun m!761967 () Bool)

(assert (=> b!819987 m!761967))

(check-sat b_and!21763 (not b!819987) (not start!70620) (not b_next!12903) (not b!819986) (not b!819988) (not b!819984) (not mapNonEmpty!23521) tp_is_empty!14613 (not b!819989))
(check-sat b_and!21763 (not b_next!12903))
