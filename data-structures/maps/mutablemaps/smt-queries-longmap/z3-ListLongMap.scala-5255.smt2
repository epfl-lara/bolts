; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70676 () Bool)

(assert start!70676)

(declare-fun b_free!12939 () Bool)

(declare-fun b_next!12939 () Bool)

(assert (=> start!70676 (= b_free!12939 (not b_next!12939))))

(declare-fun tp!45556 () Bool)

(declare-fun b_and!21811 () Bool)

(assert (=> start!70676 (= tp!45556 b_and!21811)))

(declare-fun res!559968 () Bool)

(declare-fun e!455963 () Bool)

(assert (=> start!70676 (=> (not res!559968) (not e!455963))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70676 (= res!559968 (validMask!0 mask!1312))))

(assert (=> start!70676 e!455963))

(declare-fun tp_is_empty!14649 () Bool)

(assert (=> start!70676 tp_is_empty!14649))

(declare-datatypes ((array!45460 0))(
  ( (array!45461 (arr!21778 (Array (_ BitVec 32) (_ BitVec 64))) (size!22199 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45460)

(declare-fun array_inv!17373 (array!45460) Bool)

(assert (=> start!70676 (array_inv!17373 _keys!976)))

(assert (=> start!70676 true))

(declare-datatypes ((V!24533 0))(
  ( (V!24534 (val!7372 Int)) )
))
(declare-datatypes ((ValueCell!6909 0))(
  ( (ValueCellFull!6909 (v!9799 V!24533)) (EmptyCell!6909) )
))
(declare-datatypes ((array!45462 0))(
  ( (array!45463 (arr!21779 (Array (_ BitVec 32) ValueCell!6909)) (size!22200 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45462)

(declare-fun e!455962 () Bool)

(declare-fun array_inv!17374 (array!45462) Bool)

(assert (=> start!70676 (and (array_inv!17374 _values!788) e!455962)))

(assert (=> start!70676 tp!45556))

(declare-fun b!820581 () Bool)

(assert (=> b!820581 (= e!455963 (not true))))

(declare-datatypes ((tuple2!9720 0))(
  ( (tuple2!9721 (_1!4870 (_ BitVec 64)) (_2!4870 V!24533)) )
))
(declare-datatypes ((List!15579 0))(
  ( (Nil!15576) (Cons!15575 (h!16704 tuple2!9720) (t!21920 List!15579)) )
))
(declare-datatypes ((ListLongMap!8557 0))(
  ( (ListLongMap!8558 (toList!4294 List!15579)) )
))
(declare-fun lt!368840 () ListLongMap!8557)

(declare-fun lt!368841 () ListLongMap!8557)

(assert (=> b!820581 (= lt!368840 lt!368841)))

(declare-fun zeroValueBefore!34 () V!24533)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24533)

(declare-fun minValue!754 () V!24533)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!28041 0))(
  ( (Unit!28042) )
))
(declare-fun lt!368839 () Unit!28041)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!444 (array!45460 array!45462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24533 V!24533 V!24533 V!24533 (_ BitVec 32) Int) Unit!28041)

(assert (=> b!820581 (= lt!368839 (lemmaNoChangeToArrayThenSameMapNoExtras!444 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2328 (array!45460 array!45462 (_ BitVec 32) (_ BitVec 32) V!24533 V!24533 (_ BitVec 32) Int) ListLongMap!8557)

(assert (=> b!820581 (= lt!368841 (getCurrentListMapNoExtraKeys!2328 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820581 (= lt!368840 (getCurrentListMapNoExtraKeys!2328 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23578 () Bool)

(declare-fun mapRes!23578 () Bool)

(declare-fun tp!45555 () Bool)

(declare-fun e!455964 () Bool)

(assert (=> mapNonEmpty!23578 (= mapRes!23578 (and tp!45555 e!455964))))

(declare-fun mapKey!23578 () (_ BitVec 32))

(declare-fun mapValue!23578 () ValueCell!6909)

(declare-fun mapRest!23578 () (Array (_ BitVec 32) ValueCell!6909))

(assert (=> mapNonEmpty!23578 (= (arr!21779 _values!788) (store mapRest!23578 mapKey!23578 mapValue!23578))))

(declare-fun b!820582 () Bool)

(declare-fun res!559969 () Bool)

(assert (=> b!820582 (=> (not res!559969) (not e!455963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45460 (_ BitVec 32)) Bool)

(assert (=> b!820582 (= res!559969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820583 () Bool)

(assert (=> b!820583 (= e!455964 tp_is_empty!14649)))

(declare-fun b!820584 () Bool)

(declare-fun e!455960 () Bool)

(assert (=> b!820584 (= e!455962 (and e!455960 mapRes!23578))))

(declare-fun condMapEmpty!23578 () Bool)

(declare-fun mapDefault!23578 () ValueCell!6909)

(assert (=> b!820584 (= condMapEmpty!23578 (= (arr!21779 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6909)) mapDefault!23578)))))

(declare-fun b!820585 () Bool)

(declare-fun res!559971 () Bool)

(assert (=> b!820585 (=> (not res!559971) (not e!455963))))

(assert (=> b!820585 (= res!559971 (and (= (size!22200 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22199 _keys!976) (size!22200 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820586 () Bool)

(assert (=> b!820586 (= e!455960 tp_is_empty!14649)))

(declare-fun b!820587 () Bool)

(declare-fun res!559970 () Bool)

(assert (=> b!820587 (=> (not res!559970) (not e!455963))))

(declare-datatypes ((List!15580 0))(
  ( (Nil!15577) (Cons!15576 (h!16705 (_ BitVec 64)) (t!21921 List!15580)) )
))
(declare-fun arrayNoDuplicates!0 (array!45460 (_ BitVec 32) List!15580) Bool)

(assert (=> b!820587 (= res!559970 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15577))))

(declare-fun mapIsEmpty!23578 () Bool)

(assert (=> mapIsEmpty!23578 mapRes!23578))

(assert (= (and start!70676 res!559968) b!820585))

(assert (= (and b!820585 res!559971) b!820582))

(assert (= (and b!820582 res!559969) b!820587))

(assert (= (and b!820587 res!559970) b!820581))

(assert (= (and b!820584 condMapEmpty!23578) mapIsEmpty!23578))

(assert (= (and b!820584 (not condMapEmpty!23578)) mapNonEmpty!23578))

(get-info :version)

(assert (= (and mapNonEmpty!23578 ((_ is ValueCellFull!6909) mapValue!23578)) b!820583))

(assert (= (and b!820584 ((_ is ValueCellFull!6909) mapDefault!23578)) b!820586))

(assert (= start!70676 b!820584))

(declare-fun m!762585 () Bool)

(assert (=> b!820582 m!762585))

(declare-fun m!762587 () Bool)

(assert (=> b!820581 m!762587))

(declare-fun m!762589 () Bool)

(assert (=> b!820581 m!762589))

(declare-fun m!762591 () Bool)

(assert (=> b!820581 m!762591))

(declare-fun m!762593 () Bool)

(assert (=> mapNonEmpty!23578 m!762593))

(declare-fun m!762595 () Bool)

(assert (=> start!70676 m!762595))

(declare-fun m!762597 () Bool)

(assert (=> start!70676 m!762597))

(declare-fun m!762599 () Bool)

(assert (=> start!70676 m!762599))

(declare-fun m!762601 () Bool)

(assert (=> b!820587 m!762601))

(check-sat (not b!820582) tp_is_empty!14649 (not start!70676) (not b!820581) (not b_next!12939) (not mapNonEmpty!23578) (not b!820587) b_and!21811)
(check-sat b_and!21811 (not b_next!12939))
