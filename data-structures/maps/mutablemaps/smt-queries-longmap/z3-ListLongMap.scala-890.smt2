; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20450 () Bool)

(assert start!20450)

(declare-fun b_free!5097 () Bool)

(declare-fun b_next!5097 () Bool)

(assert (=> start!20450 (= b_free!5097 (not b_next!5097))))

(declare-fun tp!18323 () Bool)

(declare-fun b_and!11861 () Bool)

(assert (=> start!20450 (= tp!18323 b_and!11861)))

(declare-fun b!202335 () Bool)

(declare-fun res!96952 () Bool)

(declare-fun e!132552 () Bool)

(assert (=> b!202335 (=> (not res!96952) (not e!132552))))

(declare-datatypes ((array!9130 0))(
  ( (array!9131 (arr!4315 (Array (_ BitVec 32) (_ BitVec 64))) (size!4640 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9130)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6251 0))(
  ( (V!6252 (val!2521 Int)) )
))
(declare-datatypes ((ValueCell!2133 0))(
  ( (ValueCellFull!2133 (v!4487 V!6251)) (EmptyCell!2133) )
))
(declare-datatypes ((array!9132 0))(
  ( (array!9133 (arr!4316 (Array (_ BitVec 32) ValueCell!2133)) (size!4641 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9132)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!202335 (= res!96952 (and (= (size!4641 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4640 _keys!825) (size!4641 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!202336 () Bool)

(declare-fun e!132550 () Bool)

(declare-fun tp_is_empty!4953 () Bool)

(assert (=> b!202336 (= e!132550 tp_is_empty!4953)))

(declare-fun b!202337 () Bool)

(declare-fun res!96959 () Bool)

(assert (=> b!202337 (=> (not res!96959) (not e!132552))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!202337 (= res!96959 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4640 _keys!825))))))

(declare-fun b!202338 () Bool)

(declare-fun e!132551 () Bool)

(assert (=> b!202338 (= e!132552 (not e!132551))))

(declare-fun res!96956 () Bool)

(assert (=> b!202338 (=> res!96956 e!132551)))

(assert (=> b!202338 (= res!96956 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6251)

(declare-datatypes ((tuple2!3818 0))(
  ( (tuple2!3819 (_1!1919 (_ BitVec 64)) (_2!1919 V!6251)) )
))
(declare-datatypes ((List!2748 0))(
  ( (Nil!2745) (Cons!2744 (h!3386 tuple2!3818) (t!7687 List!2748)) )
))
(declare-datatypes ((ListLongMap!2745 0))(
  ( (ListLongMap!2746 (toList!1388 List!2748)) )
))
(declare-fun lt!101605 () ListLongMap!2745)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6251)

(declare-fun getCurrentListMap!965 (array!9130 array!9132 (_ BitVec 32) (_ BitVec 32) V!6251 V!6251 (_ BitVec 32) Int) ListLongMap!2745)

(assert (=> b!202338 (= lt!101605 (getCurrentListMap!965 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101604 () array!9132)

(declare-fun lt!101602 () ListLongMap!2745)

(assert (=> b!202338 (= lt!101602 (getCurrentListMap!965 _keys!825 lt!101604 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101600 () ListLongMap!2745)

(declare-fun lt!101598 () ListLongMap!2745)

(assert (=> b!202338 (and (= lt!101600 lt!101598) (= lt!101598 lt!101600))))

(declare-fun v!520 () V!6251)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!101599 () ListLongMap!2745)

(declare-fun +!405 (ListLongMap!2745 tuple2!3818) ListLongMap!2745)

(assert (=> b!202338 (= lt!101598 (+!405 lt!101599 (tuple2!3819 k0!843 v!520)))))

(declare-datatypes ((Unit!6115 0))(
  ( (Unit!6116) )
))
(declare-fun lt!101603 () Unit!6115)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!78 (array!9130 array!9132 (_ BitVec 32) (_ BitVec 32) V!6251 V!6251 (_ BitVec 32) (_ BitVec 64) V!6251 (_ BitVec 32) Int) Unit!6115)

(assert (=> b!202338 (= lt!101603 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!78 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!336 (array!9130 array!9132 (_ BitVec 32) (_ BitVec 32) V!6251 V!6251 (_ BitVec 32) Int) ListLongMap!2745)

(assert (=> b!202338 (= lt!101600 (getCurrentListMapNoExtraKeys!336 _keys!825 lt!101604 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202338 (= lt!101604 (array!9133 (store (arr!4316 _values!649) i!601 (ValueCellFull!2133 v!520)) (size!4641 _values!649)))))

(assert (=> b!202338 (= lt!101599 (getCurrentListMapNoExtraKeys!336 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202339 () Bool)

(declare-fun e!132549 () Bool)

(assert (=> b!202339 (= e!132549 tp_is_empty!4953)))

(declare-fun b!202341 () Bool)

(declare-fun res!96960 () Bool)

(assert (=> b!202341 (=> (not res!96960) (not e!132552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202341 (= res!96960 (validKeyInArray!0 k0!843))))

(declare-fun b!202342 () Bool)

(declare-fun res!96954 () Bool)

(assert (=> b!202342 (=> (not res!96954) (not e!132552))))

(declare-datatypes ((List!2749 0))(
  ( (Nil!2746) (Cons!2745 (h!3387 (_ BitVec 64)) (t!7688 List!2749)) )
))
(declare-fun arrayNoDuplicates!0 (array!9130 (_ BitVec 32) List!2749) Bool)

(assert (=> b!202342 (= res!96954 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2746))))

(declare-fun b!202343 () Bool)

(assert (=> b!202343 (= e!132551 true)))

(declare-fun e!132553 () Bool)

(assert (=> b!202343 e!132553))

(declare-fun res!96961 () Bool)

(assert (=> b!202343 (=> (not res!96961) (not e!132553))))

(declare-fun lt!101601 () tuple2!3818)

(assert (=> b!202343 (= res!96961 (= lt!101602 (+!405 lt!101600 lt!101601)))))

(assert (=> b!202343 (= lt!101601 (tuple2!3819 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202344 () Bool)

(declare-fun res!96958 () Bool)

(assert (=> b!202344 (=> (not res!96958) (not e!132552))))

(assert (=> b!202344 (= res!96958 (= (select (arr!4315 _keys!825) i!601) k0!843))))

(declare-fun b!202345 () Bool)

(declare-fun res!96955 () Bool)

(assert (=> b!202345 (=> (not res!96955) (not e!132553))))

(assert (=> b!202345 (= res!96955 (= lt!101605 (+!405 lt!101599 lt!101601)))))

(declare-fun b!202340 () Bool)

(declare-fun e!132547 () Bool)

(declare-fun mapRes!8498 () Bool)

(assert (=> b!202340 (= e!132547 (and e!132550 mapRes!8498))))

(declare-fun condMapEmpty!8498 () Bool)

(declare-fun mapDefault!8498 () ValueCell!2133)

(assert (=> b!202340 (= condMapEmpty!8498 (= (arr!4316 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2133)) mapDefault!8498)))))

(declare-fun res!96957 () Bool)

(assert (=> start!20450 (=> (not res!96957) (not e!132552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20450 (= res!96957 (validMask!0 mask!1149))))

(assert (=> start!20450 e!132552))

(declare-fun array_inv!2841 (array!9132) Bool)

(assert (=> start!20450 (and (array_inv!2841 _values!649) e!132547)))

(assert (=> start!20450 true))

(assert (=> start!20450 tp_is_empty!4953))

(declare-fun array_inv!2842 (array!9130) Bool)

(assert (=> start!20450 (array_inv!2842 _keys!825)))

(assert (=> start!20450 tp!18323))

(declare-fun mapNonEmpty!8498 () Bool)

(declare-fun tp!18322 () Bool)

(assert (=> mapNonEmpty!8498 (= mapRes!8498 (and tp!18322 e!132549))))

(declare-fun mapValue!8498 () ValueCell!2133)

(declare-fun mapRest!8498 () (Array (_ BitVec 32) ValueCell!2133))

(declare-fun mapKey!8498 () (_ BitVec 32))

(assert (=> mapNonEmpty!8498 (= (arr!4316 _values!649) (store mapRest!8498 mapKey!8498 mapValue!8498))))

(declare-fun b!202346 () Bool)

(assert (=> b!202346 (= e!132553 (= lt!101602 (+!405 lt!101598 lt!101601)))))

(declare-fun mapIsEmpty!8498 () Bool)

(assert (=> mapIsEmpty!8498 mapRes!8498))

(declare-fun b!202347 () Bool)

(declare-fun res!96953 () Bool)

(assert (=> b!202347 (=> (not res!96953) (not e!132552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9130 (_ BitVec 32)) Bool)

(assert (=> b!202347 (= res!96953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20450 res!96957) b!202335))

(assert (= (and b!202335 res!96952) b!202347))

(assert (= (and b!202347 res!96953) b!202342))

(assert (= (and b!202342 res!96954) b!202337))

(assert (= (and b!202337 res!96959) b!202341))

(assert (= (and b!202341 res!96960) b!202344))

(assert (= (and b!202344 res!96958) b!202338))

(assert (= (and b!202338 (not res!96956)) b!202343))

(assert (= (and b!202343 res!96961) b!202345))

(assert (= (and b!202345 res!96955) b!202346))

(assert (= (and b!202340 condMapEmpty!8498) mapIsEmpty!8498))

(assert (= (and b!202340 (not condMapEmpty!8498)) mapNonEmpty!8498))

(get-info :version)

(assert (= (and mapNonEmpty!8498 ((_ is ValueCellFull!2133) mapValue!8498)) b!202339))

(assert (= (and b!202340 ((_ is ValueCellFull!2133) mapDefault!8498)) b!202336))

(assert (= start!20450 b!202340))

(declare-fun m!229677 () Bool)

(assert (=> b!202343 m!229677))

(declare-fun m!229679 () Bool)

(assert (=> mapNonEmpty!8498 m!229679))

(declare-fun m!229681 () Bool)

(assert (=> b!202344 m!229681))

(declare-fun m!229683 () Bool)

(assert (=> b!202338 m!229683))

(declare-fun m!229685 () Bool)

(assert (=> b!202338 m!229685))

(declare-fun m!229687 () Bool)

(assert (=> b!202338 m!229687))

(declare-fun m!229689 () Bool)

(assert (=> b!202338 m!229689))

(declare-fun m!229691 () Bool)

(assert (=> b!202338 m!229691))

(declare-fun m!229693 () Bool)

(assert (=> b!202338 m!229693))

(declare-fun m!229695 () Bool)

(assert (=> b!202338 m!229695))

(declare-fun m!229697 () Bool)

(assert (=> start!20450 m!229697))

(declare-fun m!229699 () Bool)

(assert (=> start!20450 m!229699))

(declare-fun m!229701 () Bool)

(assert (=> start!20450 m!229701))

(declare-fun m!229703 () Bool)

(assert (=> b!202342 m!229703))

(declare-fun m!229705 () Bool)

(assert (=> b!202345 m!229705))

(declare-fun m!229707 () Bool)

(assert (=> b!202346 m!229707))

(declare-fun m!229709 () Bool)

(assert (=> b!202347 m!229709))

(declare-fun m!229711 () Bool)

(assert (=> b!202341 m!229711))

(check-sat (not start!20450) (not b!202342) (not b!202345) (not b!202343) (not b!202347) tp_is_empty!4953 (not b!202346) (not b!202338) b_and!11861 (not b_next!5097) (not mapNonEmpty!8498) (not b!202341))
(check-sat b_and!11861 (not b_next!5097))
