; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71236 () Bool)

(assert start!71236)

(declare-fun b_free!13359 () Bool)

(declare-fun b_next!13359 () Bool)

(assert (=> start!71236 (= b_free!13359 (not b_next!13359))))

(declare-fun tp!46839 () Bool)

(declare-fun b_and!22315 () Bool)

(assert (=> start!71236 (= tp!46839 b_and!22315)))

(declare-fun mapIsEmpty!24232 () Bool)

(declare-fun mapRes!24232 () Bool)

(assert (=> mapIsEmpty!24232 mapRes!24232))

(declare-fun b!827059 () Bool)

(declare-fun res!563860 () Bool)

(declare-fun e!460725 () Bool)

(assert (=> b!827059 (=> (not res!563860) (not e!460725))))

(declare-datatypes ((array!46276 0))(
  ( (array!46277 (arr!22178 (Array (_ BitVec 32) (_ BitVec 64))) (size!22599 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46276)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46276 (_ BitVec 32)) Bool)

(assert (=> b!827059 (= res!563860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827060 () Bool)

(declare-fun res!563862 () Bool)

(assert (=> b!827060 (=> (not res!563862) (not e!460725))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25093 0))(
  ( (V!25094 (val!7582 Int)) )
))
(declare-datatypes ((ValueCell!7119 0))(
  ( (ValueCellFull!7119 (v!10013 V!25093)) (EmptyCell!7119) )
))
(declare-datatypes ((array!46278 0))(
  ( (array!46279 (arr!22179 (Array (_ BitVec 32) ValueCell!7119)) (size!22600 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46278)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827060 (= res!563862 (and (= (size!22600 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22599 _keys!976) (size!22600 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827061 () Bool)

(declare-fun res!563863 () Bool)

(assert (=> b!827061 (=> (not res!563863) (not e!460725))))

(declare-datatypes ((List!15895 0))(
  ( (Nil!15892) (Cons!15891 (h!17020 (_ BitVec 64)) (t!22252 List!15895)) )
))
(declare-fun arrayNoDuplicates!0 (array!46276 (_ BitVec 32) List!15895) Bool)

(assert (=> b!827061 (= res!563863 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15892))))

(declare-fun b!827062 () Bool)

(declare-fun e!460722 () Bool)

(declare-fun e!460723 () Bool)

(assert (=> b!827062 (= e!460722 (and e!460723 mapRes!24232))))

(declare-fun condMapEmpty!24232 () Bool)

(declare-fun mapDefault!24232 () ValueCell!7119)

(assert (=> b!827062 (= condMapEmpty!24232 (= (arr!22179 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7119)) mapDefault!24232)))))

(declare-fun res!563861 () Bool)

(assert (=> start!71236 (=> (not res!563861) (not e!460725))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71236 (= res!563861 (validMask!0 mask!1312))))

(assert (=> start!71236 e!460725))

(declare-fun tp_is_empty!15069 () Bool)

(assert (=> start!71236 tp_is_empty!15069))

(declare-fun array_inv!17659 (array!46276) Bool)

(assert (=> start!71236 (array_inv!17659 _keys!976)))

(assert (=> start!71236 true))

(declare-fun array_inv!17660 (array!46278) Bool)

(assert (=> start!71236 (and (array_inv!17660 _values!788) e!460722)))

(assert (=> start!71236 tp!46839))

(declare-fun b!827063 () Bool)

(assert (=> b!827063 (= e!460725 false)))

(declare-fun zeroValueAfter!34 () V!25093)

(declare-fun minValue!754 () V!25093)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10060 0))(
  ( (tuple2!10061 (_1!5040 (_ BitVec 64)) (_2!5040 V!25093)) )
))
(declare-datatypes ((List!15896 0))(
  ( (Nil!15893) (Cons!15892 (h!17021 tuple2!10060) (t!22253 List!15896)) )
))
(declare-datatypes ((ListLongMap!8897 0))(
  ( (ListLongMap!8898 (toList!4464 List!15896)) )
))
(declare-fun lt!374788 () ListLongMap!8897)

(declare-fun getCurrentListMapNoExtraKeys!2471 (array!46276 array!46278 (_ BitVec 32) (_ BitVec 32) V!25093 V!25093 (_ BitVec 32) Int) ListLongMap!8897)

(assert (=> b!827063 (= lt!374788 (getCurrentListMapNoExtraKeys!2471 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25093)

(declare-fun lt!374787 () ListLongMap!8897)

(assert (=> b!827063 (= lt!374787 (getCurrentListMapNoExtraKeys!2471 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827064 () Bool)

(assert (=> b!827064 (= e!460723 tp_is_empty!15069)))

(declare-fun mapNonEmpty!24232 () Bool)

(declare-fun tp!46840 () Bool)

(declare-fun e!460726 () Bool)

(assert (=> mapNonEmpty!24232 (= mapRes!24232 (and tp!46840 e!460726))))

(declare-fun mapValue!24232 () ValueCell!7119)

(declare-fun mapKey!24232 () (_ BitVec 32))

(declare-fun mapRest!24232 () (Array (_ BitVec 32) ValueCell!7119))

(assert (=> mapNonEmpty!24232 (= (arr!22179 _values!788) (store mapRest!24232 mapKey!24232 mapValue!24232))))

(declare-fun b!827065 () Bool)

(assert (=> b!827065 (= e!460726 tp_is_empty!15069)))

(assert (= (and start!71236 res!563861) b!827060))

(assert (= (and b!827060 res!563862) b!827059))

(assert (= (and b!827059 res!563860) b!827061))

(assert (= (and b!827061 res!563863) b!827063))

(assert (= (and b!827062 condMapEmpty!24232) mapIsEmpty!24232))

(assert (= (and b!827062 (not condMapEmpty!24232)) mapNonEmpty!24232))

(get-info :version)

(assert (= (and mapNonEmpty!24232 ((_ is ValueCellFull!7119) mapValue!24232)) b!827065))

(assert (= (and b!827062 ((_ is ValueCellFull!7119) mapDefault!24232)) b!827064))

(assert (= start!71236 b!827062))

(declare-fun m!770285 () Bool)

(assert (=> start!71236 m!770285))

(declare-fun m!770287 () Bool)

(assert (=> start!71236 m!770287))

(declare-fun m!770289 () Bool)

(assert (=> start!71236 m!770289))

(declare-fun m!770291 () Bool)

(assert (=> b!827063 m!770291))

(declare-fun m!770293 () Bool)

(assert (=> b!827063 m!770293))

(declare-fun m!770295 () Bool)

(assert (=> b!827061 m!770295))

(declare-fun m!770297 () Bool)

(assert (=> b!827059 m!770297))

(declare-fun m!770299 () Bool)

(assert (=> mapNonEmpty!24232 m!770299))

(check-sat b_and!22315 (not start!71236) (not b_next!13359) (not b!827059) (not b!827061) (not b!827063) tp_is_empty!15069 (not mapNonEmpty!24232))
(check-sat b_and!22315 (not b_next!13359))
