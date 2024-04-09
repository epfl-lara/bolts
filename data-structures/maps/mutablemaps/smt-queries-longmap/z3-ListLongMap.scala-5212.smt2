; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70330 () Bool)

(assert start!70330)

(declare-fun b_free!12681 () Bool)

(declare-fun b_next!12681 () Bool)

(assert (=> start!70330 (= b_free!12681 (not b_next!12681))))

(declare-fun tp!44767 () Bool)

(declare-fun b_and!21499 () Bool)

(assert (=> start!70330 (= tp!44767 b_and!21499)))

(declare-fun res!557639 () Bool)

(declare-fun e!453092 () Bool)

(assert (=> start!70330 (=> (not res!557639) (not e!453092))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70330 (= res!557639 (validMask!0 mask!1312))))

(assert (=> start!70330 e!453092))

(declare-fun tp_is_empty!14391 () Bool)

(assert (=> start!70330 tp_is_empty!14391))

(declare-datatypes ((array!44960 0))(
  ( (array!44961 (arr!21533 (Array (_ BitVec 32) (_ BitVec 64))) (size!21954 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44960)

(declare-fun array_inv!17201 (array!44960) Bool)

(assert (=> start!70330 (array_inv!17201 _keys!976)))

(assert (=> start!70330 true))

(declare-datatypes ((V!24189 0))(
  ( (V!24190 (val!7243 Int)) )
))
(declare-datatypes ((ValueCell!6780 0))(
  ( (ValueCellFull!6780 (v!9667 V!24189)) (EmptyCell!6780) )
))
(declare-datatypes ((array!44962 0))(
  ( (array!44963 (arr!21534 (Array (_ BitVec 32) ValueCell!6780)) (size!21955 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44962)

(declare-fun e!453095 () Bool)

(declare-fun array_inv!17202 (array!44962) Bool)

(assert (=> start!70330 (and (array_inv!17202 _values!788) e!453095)))

(assert (=> start!70330 tp!44767))

(declare-fun mapIsEmpty!23176 () Bool)

(declare-fun mapRes!23176 () Bool)

(assert (=> mapIsEmpty!23176 mapRes!23176))

(declare-fun b!816640 () Bool)

(declare-fun res!557641 () Bool)

(assert (=> b!816640 (=> (not res!557641) (not e!453092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44960 (_ BitVec 32)) Bool)

(assert (=> b!816640 (= res!557641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816641 () Bool)

(declare-fun e!453093 () Bool)

(assert (=> b!816641 (= e!453095 (and e!453093 mapRes!23176))))

(declare-fun condMapEmpty!23176 () Bool)

(declare-fun mapDefault!23176 () ValueCell!6780)

(assert (=> b!816641 (= condMapEmpty!23176 (= (arr!21534 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6780)) mapDefault!23176)))))

(declare-fun mapNonEmpty!23176 () Bool)

(declare-fun tp!44766 () Bool)

(declare-fun e!453096 () Bool)

(assert (=> mapNonEmpty!23176 (= mapRes!23176 (and tp!44766 e!453096))))

(declare-fun mapRest!23176 () (Array (_ BitVec 32) ValueCell!6780))

(declare-fun mapKey!23176 () (_ BitVec 32))

(declare-fun mapValue!23176 () ValueCell!6780)

(assert (=> mapNonEmpty!23176 (= (arr!21534 _values!788) (store mapRest!23176 mapKey!23176 mapValue!23176))))

(declare-fun b!816642 () Bool)

(assert (=> b!816642 (= e!453093 tp_is_empty!14391)))

(declare-fun b!816643 () Bool)

(assert (=> b!816643 (= e!453096 tp_is_empty!14391)))

(declare-fun b!816644 () Bool)

(declare-fun res!557640 () Bool)

(assert (=> b!816644 (=> (not res!557640) (not e!453092))))

(declare-datatypes ((List!15392 0))(
  ( (Nil!15389) (Cons!15388 (h!16517 (_ BitVec 64)) (t!21723 List!15392)) )
))
(declare-fun arrayNoDuplicates!0 (array!44960 (_ BitVec 32) List!15392) Bool)

(assert (=> b!816644 (= res!557640 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15389))))

(declare-fun b!816645 () Bool)

(declare-fun res!557638 () Bool)

(assert (=> b!816645 (=> (not res!557638) (not e!453092))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816645 (= res!557638 (and (= (size!21955 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21954 _keys!976) (size!21955 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816646 () Bool)

(declare-fun e!453094 () Bool)

(assert (=> b!816646 (= e!453094 true)))

(declare-datatypes ((tuple2!9520 0))(
  ( (tuple2!9521 (_1!4770 (_ BitVec 64)) (_2!4770 V!24189)) )
))
(declare-datatypes ((List!15393 0))(
  ( (Nil!15390) (Cons!15389 (h!16518 tuple2!9520) (t!21724 List!15393)) )
))
(declare-datatypes ((ListLongMap!8357 0))(
  ( (ListLongMap!8358 (toList!4194 List!15393)) )
))
(declare-fun lt!365846 () ListLongMap!8357)

(declare-fun zeroValueAfter!34 () V!24189)

(declare-fun minValue!754 () V!24189)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2380 (array!44960 array!44962 (_ BitVec 32) (_ BitVec 32) V!24189 V!24189 (_ BitVec 32) Int) ListLongMap!8357)

(assert (=> b!816646 (= lt!365846 (getCurrentListMap!2380 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24189)

(declare-fun lt!365843 () ListLongMap!8357)

(declare-fun +!1779 (ListLongMap!8357 tuple2!9520) ListLongMap!8357)

(assert (=> b!816646 (= lt!365843 (+!1779 (getCurrentListMap!2380 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!816647 () Bool)

(assert (=> b!816647 (= e!453092 (not e!453094))))

(declare-fun res!557642 () Bool)

(assert (=> b!816647 (=> res!557642 e!453094)))

(assert (=> b!816647 (= res!557642 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365845 () ListLongMap!8357)

(declare-fun lt!365844 () ListLongMap!8357)

(assert (=> b!816647 (= lt!365845 lt!365844)))

(declare-datatypes ((Unit!27842 0))(
  ( (Unit!27843) )
))
(declare-fun lt!365847 () Unit!27842)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!357 (array!44960 array!44962 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24189 V!24189 V!24189 V!24189 (_ BitVec 32) Int) Unit!27842)

(assert (=> b!816647 (= lt!365847 (lemmaNoChangeToArrayThenSameMapNoExtras!357 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2241 (array!44960 array!44962 (_ BitVec 32) (_ BitVec 32) V!24189 V!24189 (_ BitVec 32) Int) ListLongMap!8357)

(assert (=> b!816647 (= lt!365844 (getCurrentListMapNoExtraKeys!2241 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816647 (= lt!365845 (getCurrentListMapNoExtraKeys!2241 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70330 res!557639) b!816645))

(assert (= (and b!816645 res!557638) b!816640))

(assert (= (and b!816640 res!557641) b!816644))

(assert (= (and b!816644 res!557640) b!816647))

(assert (= (and b!816647 (not res!557642)) b!816646))

(assert (= (and b!816641 condMapEmpty!23176) mapIsEmpty!23176))

(assert (= (and b!816641 (not condMapEmpty!23176)) mapNonEmpty!23176))

(get-info :version)

(assert (= (and mapNonEmpty!23176 ((_ is ValueCellFull!6780) mapValue!23176)) b!816643))

(assert (= (and b!816641 ((_ is ValueCellFull!6780) mapDefault!23176)) b!816642))

(assert (= start!70330 b!816641))

(declare-fun m!758365 () Bool)

(assert (=> b!816647 m!758365))

(declare-fun m!758367 () Bool)

(assert (=> b!816647 m!758367))

(declare-fun m!758369 () Bool)

(assert (=> b!816647 m!758369))

(declare-fun m!758371 () Bool)

(assert (=> start!70330 m!758371))

(declare-fun m!758373 () Bool)

(assert (=> start!70330 m!758373))

(declare-fun m!758375 () Bool)

(assert (=> start!70330 m!758375))

(declare-fun m!758377 () Bool)

(assert (=> b!816640 m!758377))

(declare-fun m!758379 () Bool)

(assert (=> b!816646 m!758379))

(declare-fun m!758381 () Bool)

(assert (=> b!816646 m!758381))

(assert (=> b!816646 m!758381))

(declare-fun m!758383 () Bool)

(assert (=> b!816646 m!758383))

(declare-fun m!758385 () Bool)

(assert (=> mapNonEmpty!23176 m!758385))

(declare-fun m!758387 () Bool)

(assert (=> b!816644 m!758387))

(check-sat tp_is_empty!14391 (not mapNonEmpty!23176) b_and!21499 (not b!816640) (not b!816644) (not b!816646) (not b!816647) (not start!70330) (not b_next!12681))
(check-sat b_and!21499 (not b_next!12681))
