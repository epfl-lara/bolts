; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39050 () Bool)

(assert start!39050)

(declare-fun b_free!9309 () Bool)

(declare-fun b_next!9309 () Bool)

(assert (=> start!39050 (= b_free!9309 (not b_next!9309))))

(declare-fun tp!33455 () Bool)

(declare-fun b_and!16713 () Bool)

(assert (=> start!39050 (= tp!33455 b_and!16713)))

(declare-fun res!237143 () Bool)

(declare-fun e!245550 () Bool)

(assert (=> start!39050 (=> (not res!237143) (not e!245550))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24775 0))(
  ( (array!24776 (arr!11834 (Array (_ BitVec 32) (_ BitVec 64))) (size!12186 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24775)

(assert (=> start!39050 (= res!237143 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12186 _keys!709))))))

(assert (=> start!39050 e!245550))

(declare-fun tp_is_empty!10461 () Bool)

(assert (=> start!39050 tp_is_empty!10461))

(assert (=> start!39050 tp!33455))

(assert (=> start!39050 true))

(declare-datatypes ((V!15053 0))(
  ( (V!15054 (val!5275 Int)) )
))
(declare-datatypes ((ValueCell!4887 0))(
  ( (ValueCellFull!4887 (v!7518 V!15053)) (EmptyCell!4887) )
))
(declare-datatypes ((array!24777 0))(
  ( (array!24778 (arr!11835 (Array (_ BitVec 32) ValueCell!4887)) (size!12187 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24777)

(declare-fun e!245549 () Bool)

(declare-fun array_inv!8640 (array!24777) Bool)

(assert (=> start!39050 (and (array_inv!8640 _values!549) e!245549)))

(declare-fun array_inv!8641 (array!24775) Bool)

(assert (=> start!39050 (array_inv!8641 _keys!709)))

(declare-fun b!409362 () Bool)

(declare-fun e!245547 () Bool)

(assert (=> b!409362 (= e!245550 e!245547)))

(declare-fun res!237148 () Bool)

(assert (=> b!409362 (=> (not res!237148) (not e!245547))))

(declare-fun lt!188924 () array!24775)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24775 (_ BitVec 32)) Bool)

(assert (=> b!409362 (= res!237148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188924 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409362 (= lt!188924 (array!24776 (store (arr!11834 _keys!709) i!563 k0!794) (size!12186 _keys!709)))))

(declare-fun mapIsEmpty!17313 () Bool)

(declare-fun mapRes!17313 () Bool)

(assert (=> mapIsEmpty!17313 mapRes!17313))

(declare-fun b!409363 () Bool)

(declare-fun res!237150 () Bool)

(assert (=> b!409363 (=> (not res!237150) (not e!245550))))

(assert (=> b!409363 (= res!237150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409364 () Bool)

(declare-fun res!237141 () Bool)

(assert (=> b!409364 (=> (not res!237141) (not e!245550))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!409364 (= res!237141 (and (= (size!12187 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12186 _keys!709) (size!12187 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17313 () Bool)

(declare-fun tp!33456 () Bool)

(declare-fun e!245546 () Bool)

(assert (=> mapNonEmpty!17313 (= mapRes!17313 (and tp!33456 e!245546))))

(declare-fun mapRest!17313 () (Array (_ BitVec 32) ValueCell!4887))

(declare-fun mapValue!17313 () ValueCell!4887)

(declare-fun mapKey!17313 () (_ BitVec 32))

(assert (=> mapNonEmpty!17313 (= (arr!11835 _values!549) (store mapRest!17313 mapKey!17313 mapValue!17313))))

(declare-fun b!409365 () Bool)

(declare-fun res!237142 () Bool)

(assert (=> b!409365 (=> (not res!237142) (not e!245547))))

(assert (=> b!409365 (= res!237142 (bvsle from!863 i!563))))

(declare-fun b!409366 () Bool)

(declare-fun res!237139 () Bool)

(assert (=> b!409366 (=> (not res!237139) (not e!245550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!409366 (= res!237139 (validKeyInArray!0 k0!794))))

(declare-fun b!409367 () Bool)

(declare-fun e!245551 () Bool)

(assert (=> b!409367 (= e!245549 (and e!245551 mapRes!17313))))

(declare-fun condMapEmpty!17313 () Bool)

(declare-fun mapDefault!17313 () ValueCell!4887)

(assert (=> b!409367 (= condMapEmpty!17313 (= (arr!11835 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4887)) mapDefault!17313)))))

(declare-fun b!409368 () Bool)

(declare-fun res!237149 () Bool)

(assert (=> b!409368 (=> (not res!237149) (not e!245550))))

(assert (=> b!409368 (= res!237149 (or (= (select (arr!11834 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11834 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409369 () Bool)

(assert (=> b!409369 (= e!245547 false)))

(declare-fun minValue!515 () V!15053)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6784 0))(
  ( (tuple2!6785 (_1!3402 (_ BitVec 64)) (_2!3402 V!15053)) )
))
(declare-datatypes ((List!6832 0))(
  ( (Nil!6829) (Cons!6828 (h!7684 tuple2!6784) (t!12014 List!6832)) )
))
(declare-datatypes ((ListLongMap!5711 0))(
  ( (ListLongMap!5712 (toList!2871 List!6832)) )
))
(declare-fun lt!188925 () ListLongMap!5711)

(declare-fun zeroValue!515 () V!15053)

(declare-fun getCurrentListMapNoExtraKeys!1081 (array!24775 array!24777 (_ BitVec 32) (_ BitVec 32) V!15053 V!15053 (_ BitVec 32) Int) ListLongMap!5711)

(assert (=> b!409369 (= lt!188925 (getCurrentListMapNoExtraKeys!1081 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409370 () Bool)

(assert (=> b!409370 (= e!245546 tp_is_empty!10461)))

(declare-fun b!409371 () Bool)

(declare-fun res!237145 () Bool)

(assert (=> b!409371 (=> (not res!237145) (not e!245550))))

(declare-datatypes ((List!6833 0))(
  ( (Nil!6830) (Cons!6829 (h!7685 (_ BitVec 64)) (t!12015 List!6833)) )
))
(declare-fun arrayNoDuplicates!0 (array!24775 (_ BitVec 32) List!6833) Bool)

(assert (=> b!409371 (= res!237145 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6830))))

(declare-fun b!409372 () Bool)

(declare-fun res!237146 () Bool)

(assert (=> b!409372 (=> (not res!237146) (not e!245550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409372 (= res!237146 (validMask!0 mask!1025))))

(declare-fun b!409373 () Bool)

(declare-fun res!237144 () Bool)

(assert (=> b!409373 (=> (not res!237144) (not e!245547))))

(assert (=> b!409373 (= res!237144 (arrayNoDuplicates!0 lt!188924 #b00000000000000000000000000000000 Nil!6830))))

(declare-fun b!409374 () Bool)

(declare-fun res!237140 () Bool)

(assert (=> b!409374 (=> (not res!237140) (not e!245550))))

(assert (=> b!409374 (= res!237140 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12186 _keys!709))))))

(declare-fun b!409375 () Bool)

(declare-fun res!237147 () Bool)

(assert (=> b!409375 (=> (not res!237147) (not e!245550))))

(declare-fun arrayContainsKey!0 (array!24775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409375 (= res!237147 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!409376 () Bool)

(assert (=> b!409376 (= e!245551 tp_is_empty!10461)))

(assert (= (and start!39050 res!237143) b!409372))

(assert (= (and b!409372 res!237146) b!409364))

(assert (= (and b!409364 res!237141) b!409363))

(assert (= (and b!409363 res!237150) b!409371))

(assert (= (and b!409371 res!237145) b!409374))

(assert (= (and b!409374 res!237140) b!409366))

(assert (= (and b!409366 res!237139) b!409368))

(assert (= (and b!409368 res!237149) b!409375))

(assert (= (and b!409375 res!237147) b!409362))

(assert (= (and b!409362 res!237148) b!409373))

(assert (= (and b!409373 res!237144) b!409365))

(assert (= (and b!409365 res!237142) b!409369))

(assert (= (and b!409367 condMapEmpty!17313) mapIsEmpty!17313))

(assert (= (and b!409367 (not condMapEmpty!17313)) mapNonEmpty!17313))

(get-info :version)

(assert (= (and mapNonEmpty!17313 ((_ is ValueCellFull!4887) mapValue!17313)) b!409370))

(assert (= (and b!409367 ((_ is ValueCellFull!4887) mapDefault!17313)) b!409376))

(assert (= start!39050 b!409367))

(declare-fun m!400259 () Bool)

(assert (=> b!409363 m!400259))

(declare-fun m!400261 () Bool)

(assert (=> b!409362 m!400261))

(declare-fun m!400263 () Bool)

(assert (=> b!409362 m!400263))

(declare-fun m!400265 () Bool)

(assert (=> b!409366 m!400265))

(declare-fun m!400267 () Bool)

(assert (=> b!409371 m!400267))

(declare-fun m!400269 () Bool)

(assert (=> b!409375 m!400269))

(declare-fun m!400271 () Bool)

(assert (=> b!409369 m!400271))

(declare-fun m!400273 () Bool)

(assert (=> mapNonEmpty!17313 m!400273))

(declare-fun m!400275 () Bool)

(assert (=> b!409368 m!400275))

(declare-fun m!400277 () Bool)

(assert (=> b!409373 m!400277))

(declare-fun m!400279 () Bool)

(assert (=> b!409372 m!400279))

(declare-fun m!400281 () Bool)

(assert (=> start!39050 m!400281))

(declare-fun m!400283 () Bool)

(assert (=> start!39050 m!400283))

(check-sat (not b!409373) (not b_next!9309) (not start!39050) (not b!409375) (not b!409363) (not b!409371) b_and!16713 (not b!409372) (not b!409362) tp_is_empty!10461 (not mapNonEmpty!17313) (not b!409366) (not b!409369))
(check-sat b_and!16713 (not b_next!9309))
