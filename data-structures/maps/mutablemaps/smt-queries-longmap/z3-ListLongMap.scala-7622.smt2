; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96090 () Bool)

(assert start!96090)

(declare-fun b_free!22707 () Bool)

(declare-fun b_next!22707 () Bool)

(assert (=> start!96090 (= b_free!22707 (not b_next!22707))))

(declare-fun tp!79971 () Bool)

(declare-fun b_and!36107 () Bool)

(assert (=> start!96090 (= tp!79971 b_and!36107)))

(declare-fun res!726658 () Bool)

(declare-fun e!622190 () Bool)

(assert (=> start!96090 (=> (not res!726658) (not e!622190))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96090 (= res!726658 (validMask!0 mask!1414))))

(assert (=> start!96090 e!622190))

(assert (=> start!96090 tp!79971))

(assert (=> start!96090 true))

(declare-fun tp_is_empty!26709 () Bool)

(assert (=> start!96090 tp_is_empty!26709))

(declare-datatypes ((array!70308 0))(
  ( (array!70309 (arr!33824 (Array (_ BitVec 32) (_ BitVec 64))) (size!34361 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70308)

(declare-fun array_inv!25950 (array!70308) Bool)

(assert (=> start!96090 (array_inv!25950 _keys!1070)))

(declare-datatypes ((V!40739 0))(
  ( (V!40740 (val!13411 Int)) )
))
(declare-datatypes ((ValueCell!12645 0))(
  ( (ValueCellFull!12645 (v!16033 V!40739)) (EmptyCell!12645) )
))
(declare-datatypes ((array!70310 0))(
  ( (array!70311 (arr!33825 (Array (_ BitVec 32) ValueCell!12645)) (size!34362 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70310)

(declare-fun e!622187 () Bool)

(declare-fun array_inv!25951 (array!70310) Bool)

(assert (=> start!96090 (and (array_inv!25951 _values!874) e!622187)))

(declare-fun b!1089244 () Bool)

(declare-fun res!726650 () Bool)

(assert (=> b!1089244 (=> (not res!726650) (not e!622190))))

(declare-datatypes ((List!23749 0))(
  ( (Nil!23746) (Cons!23745 (h!24954 (_ BitVec 64)) (t!33521 List!23749)) )
))
(declare-fun arrayNoDuplicates!0 (array!70308 (_ BitVec 32) List!23749) Bool)

(assert (=> b!1089244 (= res!726650 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23746))))

(declare-fun b!1089245 () Bool)

(declare-fun e!622186 () Bool)

(declare-fun e!622192 () Bool)

(assert (=> b!1089245 (= e!622186 e!622192)))

(declare-fun res!726657 () Bool)

(assert (=> b!1089245 (=> res!726657 e!622192)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1089245 (= res!726657 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((tuple2!17110 0))(
  ( (tuple2!17111 (_1!8565 (_ BitVec 64)) (_2!8565 V!40739)) )
))
(declare-datatypes ((List!23750 0))(
  ( (Nil!23747) (Cons!23746 (h!24955 tuple2!17110) (t!33522 List!23750)) )
))
(declare-datatypes ((ListLongMap!15091 0))(
  ( (ListLongMap!15092 (toList!7561 List!23750)) )
))
(declare-fun lt!485540 () ListLongMap!15091)

(declare-fun lt!485543 () ListLongMap!15091)

(assert (=> b!1089245 (= lt!485540 lt!485543)))

(declare-fun lt!485541 () ListLongMap!15091)

(declare-fun lt!485532 () tuple2!17110)

(declare-fun +!3276 (ListLongMap!15091 tuple2!17110) ListLongMap!15091)

(assert (=> b!1089245 (= lt!485543 (+!3276 lt!485541 lt!485532))))

(declare-fun lt!485539 () ListLongMap!15091)

(declare-fun lt!485542 () ListLongMap!15091)

(assert (=> b!1089245 (= lt!485539 lt!485542)))

(declare-fun lt!485531 () ListLongMap!15091)

(assert (=> b!1089245 (= lt!485542 (+!3276 lt!485531 lt!485532))))

(declare-fun lt!485538 () ListLongMap!15091)

(assert (=> b!1089245 (= lt!485540 (+!3276 lt!485538 lt!485532))))

(declare-fun zeroValue!831 () V!40739)

(assert (=> b!1089245 (= lt!485532 (tuple2!17111 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1089246 () Bool)

(declare-fun res!726649 () Bool)

(assert (=> b!1089246 (=> (not res!726649) (not e!622190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089246 (= res!726649 (validKeyInArray!0 k0!904))))

(declare-fun b!1089247 () Bool)

(declare-fun e!622191 () Bool)

(assert (=> b!1089247 (= e!622190 e!622191)))

(declare-fun res!726652 () Bool)

(assert (=> b!1089247 (=> (not res!726652) (not e!622191))))

(declare-fun lt!485533 () array!70308)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70308 (_ BitVec 32)) Bool)

(assert (=> b!1089247 (= res!726652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485533 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089247 (= lt!485533 (array!70309 (store (arr!33824 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34361 _keys!1070)))))

(declare-fun b!1089248 () Bool)

(declare-fun res!726654 () Bool)

(assert (=> b!1089248 (=> (not res!726654) (not e!622191))))

(assert (=> b!1089248 (= res!726654 (arrayNoDuplicates!0 lt!485533 #b00000000000000000000000000000000 Nil!23746))))

(declare-fun b!1089249 () Bool)

(assert (=> b!1089249 (= e!622191 (not e!622186))))

(declare-fun res!726653 () Bool)

(assert (=> b!1089249 (=> res!726653 e!622186)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1089249 (= res!726653 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40739)

(declare-fun getCurrentListMap!4305 (array!70308 array!70310 (_ BitVec 32) (_ BitVec 32) V!40739 V!40739 (_ BitVec 32) Int) ListLongMap!15091)

(assert (=> b!1089249 (= lt!485539 (getCurrentListMap!4305 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485534 () array!70310)

(assert (=> b!1089249 (= lt!485540 (getCurrentListMap!4305 lt!485533 lt!485534 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089249 (and (= lt!485538 lt!485541) (= lt!485541 lt!485538))))

(declare-fun -!839 (ListLongMap!15091 (_ BitVec 64)) ListLongMap!15091)

(assert (=> b!1089249 (= lt!485541 (-!839 lt!485531 k0!904))))

(declare-datatypes ((Unit!35793 0))(
  ( (Unit!35794) )
))
(declare-fun lt!485535 () Unit!35793)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!111 (array!70308 array!70310 (_ BitVec 32) (_ BitVec 32) V!40739 V!40739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35793)

(assert (=> b!1089249 (= lt!485535 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!111 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4057 (array!70308 array!70310 (_ BitVec 32) (_ BitVec 32) V!40739 V!40739 (_ BitVec 32) Int) ListLongMap!15091)

(assert (=> b!1089249 (= lt!485538 (getCurrentListMapNoExtraKeys!4057 lt!485533 lt!485534 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2193 (Int (_ BitVec 64)) V!40739)

(assert (=> b!1089249 (= lt!485534 (array!70311 (store (arr!33825 _values!874) i!650 (ValueCellFull!12645 (dynLambda!2193 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34362 _values!874)))))

(assert (=> b!1089249 (= lt!485531 (getCurrentListMapNoExtraKeys!4057 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089249 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485536 () Unit!35793)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70308 (_ BitVec 64) (_ BitVec 32)) Unit!35793)

(assert (=> b!1089249 (= lt!485536 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089250 () Bool)

(declare-fun e!622189 () Bool)

(assert (=> b!1089250 (= e!622189 tp_is_empty!26709)))

(declare-fun b!1089251 () Bool)

(declare-fun e!622188 () Bool)

(assert (=> b!1089251 (= e!622188 tp_is_empty!26709)))

(declare-fun b!1089252 () Bool)

(declare-fun res!726655 () Bool)

(assert (=> b!1089252 (=> (not res!726655) (not e!622190))))

(assert (=> b!1089252 (= res!726655 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089253 () Bool)

(declare-fun res!726659 () Bool)

(assert (=> b!1089253 (=> (not res!726659) (not e!622190))))

(assert (=> b!1089253 (= res!726659 (= (select (arr!33824 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41818 () Bool)

(declare-fun mapRes!41818 () Bool)

(declare-fun tp!79970 () Bool)

(assert (=> mapNonEmpty!41818 (= mapRes!41818 (and tp!79970 e!622189))))

(declare-fun mapValue!41818 () ValueCell!12645)

(declare-fun mapRest!41818 () (Array (_ BitVec 32) ValueCell!12645))

(declare-fun mapKey!41818 () (_ BitVec 32))

(assert (=> mapNonEmpty!41818 (= (arr!33825 _values!874) (store mapRest!41818 mapKey!41818 mapValue!41818))))

(declare-fun mapIsEmpty!41818 () Bool)

(assert (=> mapIsEmpty!41818 mapRes!41818))

(declare-fun b!1089254 () Bool)

(declare-fun res!726651 () Bool)

(assert (=> b!1089254 (=> (not res!726651) (not e!622190))))

(assert (=> b!1089254 (= res!726651 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34361 _keys!1070))))))

(declare-fun b!1089255 () Bool)

(assert (=> b!1089255 (= e!622192 true)))

(assert (=> b!1089255 (= (-!839 lt!485542 k0!904) lt!485543)))

(declare-fun lt!485537 () Unit!35793)

(declare-fun addRemoveCommutativeForDiffKeys!73 (ListLongMap!15091 (_ BitVec 64) V!40739 (_ BitVec 64)) Unit!35793)

(assert (=> b!1089255 (= lt!485537 (addRemoveCommutativeForDiffKeys!73 lt!485531 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun b!1089256 () Bool)

(assert (=> b!1089256 (= e!622187 (and e!622188 mapRes!41818))))

(declare-fun condMapEmpty!41818 () Bool)

(declare-fun mapDefault!41818 () ValueCell!12645)

(assert (=> b!1089256 (= condMapEmpty!41818 (= (arr!33825 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12645)) mapDefault!41818)))))

(declare-fun b!1089257 () Bool)

(declare-fun res!726656 () Bool)

(assert (=> b!1089257 (=> (not res!726656) (not e!622190))))

(assert (=> b!1089257 (= res!726656 (and (= (size!34362 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34361 _keys!1070) (size!34362 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!96090 res!726658) b!1089257))

(assert (= (and b!1089257 res!726656) b!1089252))

(assert (= (and b!1089252 res!726655) b!1089244))

(assert (= (and b!1089244 res!726650) b!1089254))

(assert (= (and b!1089254 res!726651) b!1089246))

(assert (= (and b!1089246 res!726649) b!1089253))

(assert (= (and b!1089253 res!726659) b!1089247))

(assert (= (and b!1089247 res!726652) b!1089248))

(assert (= (and b!1089248 res!726654) b!1089249))

(assert (= (and b!1089249 (not res!726653)) b!1089245))

(assert (= (and b!1089245 (not res!726657)) b!1089255))

(assert (= (and b!1089256 condMapEmpty!41818) mapIsEmpty!41818))

(assert (= (and b!1089256 (not condMapEmpty!41818)) mapNonEmpty!41818))

(get-info :version)

(assert (= (and mapNonEmpty!41818 ((_ is ValueCellFull!12645) mapValue!41818)) b!1089250))

(assert (= (and b!1089256 ((_ is ValueCellFull!12645) mapDefault!41818)) b!1089251))

(assert (= start!96090 b!1089256))

(declare-fun b_lambda!17407 () Bool)

(assert (=> (not b_lambda!17407) (not b!1089249)))

(declare-fun t!33520 () Bool)

(declare-fun tb!7593 () Bool)

(assert (=> (and start!96090 (= defaultEntry!882 defaultEntry!882) t!33520) tb!7593))

(declare-fun result!15697 () Bool)

(assert (=> tb!7593 (= result!15697 tp_is_empty!26709)))

(assert (=> b!1089249 t!33520))

(declare-fun b_and!36109 () Bool)

(assert (= b_and!36107 (and (=> t!33520 result!15697) b_and!36109)))

(declare-fun m!1008601 () Bool)

(assert (=> b!1089249 m!1008601))

(declare-fun m!1008603 () Bool)

(assert (=> b!1089249 m!1008603))

(declare-fun m!1008605 () Bool)

(assert (=> b!1089249 m!1008605))

(declare-fun m!1008607 () Bool)

(assert (=> b!1089249 m!1008607))

(declare-fun m!1008609 () Bool)

(assert (=> b!1089249 m!1008609))

(declare-fun m!1008611 () Bool)

(assert (=> b!1089249 m!1008611))

(declare-fun m!1008613 () Bool)

(assert (=> b!1089249 m!1008613))

(declare-fun m!1008615 () Bool)

(assert (=> b!1089249 m!1008615))

(declare-fun m!1008617 () Bool)

(assert (=> b!1089249 m!1008617))

(declare-fun m!1008619 () Bool)

(assert (=> b!1089249 m!1008619))

(declare-fun m!1008621 () Bool)

(assert (=> b!1089248 m!1008621))

(declare-fun m!1008623 () Bool)

(assert (=> mapNonEmpty!41818 m!1008623))

(declare-fun m!1008625 () Bool)

(assert (=> b!1089252 m!1008625))

(declare-fun m!1008627 () Bool)

(assert (=> b!1089246 m!1008627))

(declare-fun m!1008629 () Bool)

(assert (=> b!1089247 m!1008629))

(declare-fun m!1008631 () Bool)

(assert (=> b!1089247 m!1008631))

(declare-fun m!1008633 () Bool)

(assert (=> b!1089253 m!1008633))

(declare-fun m!1008635 () Bool)

(assert (=> b!1089244 m!1008635))

(declare-fun m!1008637 () Bool)

(assert (=> b!1089255 m!1008637))

(declare-fun m!1008639 () Bool)

(assert (=> b!1089255 m!1008639))

(declare-fun m!1008641 () Bool)

(assert (=> b!1089245 m!1008641))

(declare-fun m!1008643 () Bool)

(assert (=> b!1089245 m!1008643))

(declare-fun m!1008645 () Bool)

(assert (=> b!1089245 m!1008645))

(declare-fun m!1008647 () Bool)

(assert (=> start!96090 m!1008647))

(declare-fun m!1008649 () Bool)

(assert (=> start!96090 m!1008649))

(declare-fun m!1008651 () Bool)

(assert (=> start!96090 m!1008651))

(check-sat (not b!1089244) (not b!1089247) (not b_next!22707) (not b!1089248) tp_is_empty!26709 (not b!1089249) (not mapNonEmpty!41818) (not b!1089245) (not b_lambda!17407) b_and!36109 (not b!1089246) (not b!1089255) (not start!96090) (not b!1089252))
(check-sat b_and!36109 (not b_next!22707))
