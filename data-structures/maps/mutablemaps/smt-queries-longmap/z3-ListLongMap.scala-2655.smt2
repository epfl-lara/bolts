; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39758 () Bool)

(assert start!39758)

(declare-fun b_free!10017 () Bool)

(declare-fun b_next!10017 () Bool)

(assert (=> start!39758 (= b_free!10017 (not b_next!10017))))

(declare-fun tp!35579 () Bool)

(declare-fun b_and!17711 () Bool)

(assert (=> start!39758 (= tp!35579 b_and!17711)))

(declare-fun b!427689 () Bool)

(declare-fun res!251025 () Bool)

(declare-fun e!253545 () Bool)

(assert (=> b!427689 (=> (not res!251025) (not e!253545))))

(declare-datatypes ((array!26157 0))(
  ( (array!26158 (arr!12525 (Array (_ BitVec 32) (_ BitVec 64))) (size!12877 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26157)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427689 (= res!251025 (or (= (select (arr!12525 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12525 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427690 () Bool)

(declare-fun e!253546 () Bool)

(assert (=> b!427690 (= e!253545 e!253546)))

(declare-fun res!251023 () Bool)

(assert (=> b!427690 (=> (not res!251023) (not e!253546))))

(declare-fun lt!195453 () array!26157)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26157 (_ BitVec 32)) Bool)

(assert (=> b!427690 (= res!251023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195453 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!427690 (= lt!195453 (array!26158 (store (arr!12525 _keys!709) i!563 k0!794) (size!12877 _keys!709)))))

(declare-fun b!427691 () Bool)

(declare-fun e!253542 () Bool)

(declare-fun tp_is_empty!11169 () Bool)

(assert (=> b!427691 (= e!253542 tp_is_empty!11169)))

(declare-fun b!427692 () Bool)

(declare-fun res!251022 () Bool)

(assert (=> b!427692 (=> (not res!251022) (not e!253546))))

(declare-datatypes ((List!7390 0))(
  ( (Nil!7387) (Cons!7386 (h!8242 (_ BitVec 64)) (t!12864 List!7390)) )
))
(declare-fun arrayNoDuplicates!0 (array!26157 (_ BitVec 32) List!7390) Bool)

(assert (=> b!427692 (= res!251022 (arrayNoDuplicates!0 lt!195453 #b00000000000000000000000000000000 Nil!7387))))

(declare-fun b!427693 () Bool)

(declare-fun res!251021 () Bool)

(assert (=> b!427693 (=> (not res!251021) (not e!253545))))

(assert (=> b!427693 (= res!251021 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7387))))

(declare-fun b!427694 () Bool)

(declare-fun res!251031 () Bool)

(assert (=> b!427694 (=> (not res!251031) (not e!253546))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!427694 (= res!251031 (bvsle from!863 i!563))))

(declare-fun b!427695 () Bool)

(declare-fun e!253544 () Bool)

(assert (=> b!427695 (= e!253546 e!253544)))

(declare-fun res!251029 () Bool)

(assert (=> b!427695 (=> (not res!251029) (not e!253544))))

(assert (=> b!427695 (= res!251029 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15997 0))(
  ( (V!15998 (val!5629 Int)) )
))
(declare-fun minValue!515 () V!15997)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5241 0))(
  ( (ValueCellFull!5241 (v!7872 V!15997)) (EmptyCell!5241) )
))
(declare-datatypes ((array!26159 0))(
  ( (array!26160 (arr!12526 (Array (_ BitVec 32) ValueCell!5241)) (size!12878 (_ BitVec 32))) )
))
(declare-fun lt!195454 () array!26159)

(declare-fun zeroValue!515 () V!15997)

(declare-datatypes ((tuple2!7340 0))(
  ( (tuple2!7341 (_1!3680 (_ BitVec 64)) (_2!3680 V!15997)) )
))
(declare-datatypes ((List!7391 0))(
  ( (Nil!7388) (Cons!7387 (h!8243 tuple2!7340) (t!12865 List!7391)) )
))
(declare-datatypes ((ListLongMap!6267 0))(
  ( (ListLongMap!6268 (toList!3149 List!7391)) )
))
(declare-fun lt!195459 () ListLongMap!6267)

(declare-fun getCurrentListMapNoExtraKeys!1349 (array!26157 array!26159 (_ BitVec 32) (_ BitVec 32) V!15997 V!15997 (_ BitVec 32) Int) ListLongMap!6267)

(assert (=> b!427695 (= lt!195459 (getCurrentListMapNoExtraKeys!1349 lt!195453 lt!195454 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26159)

(declare-fun v!412 () V!15997)

(assert (=> b!427695 (= lt!195454 (array!26160 (store (arr!12526 _values!549) i!563 (ValueCellFull!5241 v!412)) (size!12878 _values!549)))))

(declare-fun lt!195458 () ListLongMap!6267)

(assert (=> b!427695 (= lt!195458 (getCurrentListMapNoExtraKeys!1349 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427696 () Bool)

(declare-fun res!251018 () Bool)

(assert (=> b!427696 (=> (not res!251018) (not e!253545))))

(assert (=> b!427696 (= res!251018 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12877 _keys!709))))))

(declare-fun b!427697 () Bool)

(declare-fun e!253540 () Bool)

(assert (=> b!427697 (= e!253544 (not e!253540))))

(declare-fun res!251028 () Bool)

(assert (=> b!427697 (=> res!251028 e!253540)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427697 (= res!251028 (not (validKeyInArray!0 (select (arr!12525 _keys!709) from!863))))))

(declare-fun lt!195455 () ListLongMap!6267)

(declare-fun lt!195456 () ListLongMap!6267)

(assert (=> b!427697 (= lt!195455 lt!195456)))

(declare-fun lt!195452 () ListLongMap!6267)

(declare-fun +!1302 (ListLongMap!6267 tuple2!7340) ListLongMap!6267)

(assert (=> b!427697 (= lt!195456 (+!1302 lt!195452 (tuple2!7341 k0!794 v!412)))))

(assert (=> b!427697 (= lt!195455 (getCurrentListMapNoExtraKeys!1349 lt!195453 lt!195454 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427697 (= lt!195452 (getCurrentListMapNoExtraKeys!1349 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12505 0))(
  ( (Unit!12506) )
))
(declare-fun lt!195457 () Unit!12505)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!503 (array!26157 array!26159 (_ BitVec 32) (_ BitVec 32) V!15997 V!15997 (_ BitVec 32) (_ BitVec 64) V!15997 (_ BitVec 32) Int) Unit!12505)

(assert (=> b!427697 (= lt!195457 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!503 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!251019 () Bool)

(assert (=> start!39758 (=> (not res!251019) (not e!253545))))

(assert (=> start!39758 (= res!251019 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12877 _keys!709))))))

(assert (=> start!39758 e!253545))

(assert (=> start!39758 tp_is_empty!11169))

(assert (=> start!39758 tp!35579))

(assert (=> start!39758 true))

(declare-fun e!253543 () Bool)

(declare-fun array_inv!9114 (array!26159) Bool)

(assert (=> start!39758 (and (array_inv!9114 _values!549) e!253543)))

(declare-fun array_inv!9115 (array!26157) Bool)

(assert (=> start!39758 (array_inv!9115 _keys!709)))

(declare-fun mapNonEmpty!18375 () Bool)

(declare-fun mapRes!18375 () Bool)

(declare-fun tp!35580 () Bool)

(assert (=> mapNonEmpty!18375 (= mapRes!18375 (and tp!35580 e!253542))))

(declare-fun mapValue!18375 () ValueCell!5241)

(declare-fun mapKey!18375 () (_ BitVec 32))

(declare-fun mapRest!18375 () (Array (_ BitVec 32) ValueCell!5241))

(assert (=> mapNonEmpty!18375 (= (arr!12526 _values!549) (store mapRest!18375 mapKey!18375 mapValue!18375))))

(declare-fun b!427698 () Bool)

(declare-fun res!251030 () Bool)

(assert (=> b!427698 (=> (not res!251030) (not e!253545))))

(assert (=> b!427698 (= res!251030 (and (= (size!12878 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12877 _keys!709) (size!12878 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427699 () Bool)

(declare-fun res!251024 () Bool)

(assert (=> b!427699 (=> (not res!251024) (not e!253545))))

(declare-fun arrayContainsKey!0 (array!26157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427699 (= res!251024 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427700 () Bool)

(declare-fun e!253539 () Bool)

(assert (=> b!427700 (= e!253539 tp_is_empty!11169)))

(declare-fun b!427701 () Bool)

(assert (=> b!427701 (= e!253543 (and e!253539 mapRes!18375))))

(declare-fun condMapEmpty!18375 () Bool)

(declare-fun mapDefault!18375 () ValueCell!5241)

(assert (=> b!427701 (= condMapEmpty!18375 (= (arr!12526 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5241)) mapDefault!18375)))))

(declare-fun b!427702 () Bool)

(assert (=> b!427702 (= e!253540 true)))

(declare-fun get!6208 (ValueCell!5241 V!15997) V!15997)

(declare-fun dynLambda!749 (Int (_ BitVec 64)) V!15997)

(assert (=> b!427702 (= lt!195459 (+!1302 lt!195456 (tuple2!7341 (select (arr!12525 _keys!709) from!863) (get!6208 (select (arr!12526 _values!549) from!863) (dynLambda!749 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427703 () Bool)

(declare-fun res!251027 () Bool)

(assert (=> b!427703 (=> (not res!251027) (not e!253545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427703 (= res!251027 (validMask!0 mask!1025))))

(declare-fun b!427704 () Bool)

(declare-fun res!251026 () Bool)

(assert (=> b!427704 (=> (not res!251026) (not e!253545))))

(assert (=> b!427704 (= res!251026 (validKeyInArray!0 k0!794))))

(declare-fun b!427705 () Bool)

(declare-fun res!251020 () Bool)

(assert (=> b!427705 (=> (not res!251020) (not e!253545))))

(assert (=> b!427705 (= res!251020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!18375 () Bool)

(assert (=> mapIsEmpty!18375 mapRes!18375))

(assert (= (and start!39758 res!251019) b!427703))

(assert (= (and b!427703 res!251027) b!427698))

(assert (= (and b!427698 res!251030) b!427705))

(assert (= (and b!427705 res!251020) b!427693))

(assert (= (and b!427693 res!251021) b!427696))

(assert (= (and b!427696 res!251018) b!427704))

(assert (= (and b!427704 res!251026) b!427689))

(assert (= (and b!427689 res!251025) b!427699))

(assert (= (and b!427699 res!251024) b!427690))

(assert (= (and b!427690 res!251023) b!427692))

(assert (= (and b!427692 res!251022) b!427694))

(assert (= (and b!427694 res!251031) b!427695))

(assert (= (and b!427695 res!251029) b!427697))

(assert (= (and b!427697 (not res!251028)) b!427702))

(assert (= (and b!427701 condMapEmpty!18375) mapIsEmpty!18375))

(assert (= (and b!427701 (not condMapEmpty!18375)) mapNonEmpty!18375))

(get-info :version)

(assert (= (and mapNonEmpty!18375 ((_ is ValueCellFull!5241) mapValue!18375)) b!427691))

(assert (= (and b!427701 ((_ is ValueCellFull!5241) mapDefault!18375)) b!427700))

(assert (= start!39758 b!427701))

(declare-fun b_lambda!9135 () Bool)

(assert (=> (not b_lambda!9135) (not b!427702)))

(declare-fun t!12863 () Bool)

(declare-fun tb!3431 () Bool)

(assert (=> (and start!39758 (= defaultEntry!557 defaultEntry!557) t!12863) tb!3431))

(declare-fun result!6381 () Bool)

(assert (=> tb!3431 (= result!6381 tp_is_empty!11169)))

(assert (=> b!427702 t!12863))

(declare-fun b_and!17713 () Bool)

(assert (= b_and!17711 (and (=> t!12863 result!6381) b_and!17713)))

(declare-fun m!416199 () Bool)

(assert (=> b!427692 m!416199))

(declare-fun m!416201 () Bool)

(assert (=> start!39758 m!416201))

(declare-fun m!416203 () Bool)

(assert (=> start!39758 m!416203))

(declare-fun m!416205 () Bool)

(assert (=> b!427704 m!416205))

(declare-fun m!416207 () Bool)

(assert (=> b!427699 m!416207))

(declare-fun m!416209 () Bool)

(assert (=> b!427690 m!416209))

(declare-fun m!416211 () Bool)

(assert (=> b!427690 m!416211))

(declare-fun m!416213 () Bool)

(assert (=> b!427693 m!416213))

(declare-fun m!416215 () Bool)

(assert (=> b!427697 m!416215))

(declare-fun m!416217 () Bool)

(assert (=> b!427697 m!416217))

(declare-fun m!416219 () Bool)

(assert (=> b!427697 m!416219))

(declare-fun m!416221 () Bool)

(assert (=> b!427697 m!416221))

(assert (=> b!427697 m!416215))

(declare-fun m!416223 () Bool)

(assert (=> b!427697 m!416223))

(declare-fun m!416225 () Bool)

(assert (=> b!427697 m!416225))

(declare-fun m!416227 () Bool)

(assert (=> b!427689 m!416227))

(declare-fun m!416229 () Bool)

(assert (=> b!427705 m!416229))

(declare-fun m!416231 () Bool)

(assert (=> b!427703 m!416231))

(declare-fun m!416233 () Bool)

(assert (=> b!427695 m!416233))

(declare-fun m!416235 () Bool)

(assert (=> b!427695 m!416235))

(declare-fun m!416237 () Bool)

(assert (=> b!427695 m!416237))

(assert (=> b!427702 m!416215))

(declare-fun m!416239 () Bool)

(assert (=> b!427702 m!416239))

(declare-fun m!416241 () Bool)

(assert (=> b!427702 m!416241))

(declare-fun m!416243 () Bool)

(assert (=> b!427702 m!416243))

(assert (=> b!427702 m!416243))

(assert (=> b!427702 m!416241))

(declare-fun m!416245 () Bool)

(assert (=> b!427702 m!416245))

(declare-fun m!416247 () Bool)

(assert (=> mapNonEmpty!18375 m!416247))

(check-sat tp_is_empty!11169 (not b!427697) (not b!427692) (not b_lambda!9135) (not b!427705) (not b!427703) (not b!427702) (not b!427695) (not b!427690) (not b!427704) (not b_next!10017) b_and!17713 (not b!427693) (not b!427699) (not start!39758) (not mapNonEmpty!18375))
(check-sat b_and!17713 (not b_next!10017))
