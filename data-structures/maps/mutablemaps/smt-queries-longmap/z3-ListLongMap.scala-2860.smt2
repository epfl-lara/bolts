; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41200 () Bool)

(assert start!41200)

(declare-fun b_free!11061 () Bool)

(declare-fun b_next!11061 () Bool)

(assert (=> start!41200 (= b_free!11061 (not b_next!11061))))

(declare-fun tp!39019 () Bool)

(declare-fun b_and!19379 () Bool)

(assert (=> start!41200 (= tp!39019 b_and!19379)))

(declare-fun mapNonEmpty!20248 () Bool)

(declare-fun mapRes!20248 () Bool)

(declare-fun tp!39018 () Bool)

(declare-fun e!268636 () Bool)

(assert (=> mapNonEmpty!20248 (= mapRes!20248 (and tp!39018 e!268636))))

(declare-fun mapKey!20248 () (_ BitVec 32))

(declare-datatypes ((V!17637 0))(
  ( (V!17638 (val!6244 Int)) )
))
(declare-datatypes ((ValueCell!5856 0))(
  ( (ValueCellFull!5856 (v!8518 V!17637)) (EmptyCell!5856) )
))
(declare-fun mapValue!20248 () ValueCell!5856)

(declare-datatypes ((array!28559 0))(
  ( (array!28560 (arr!13717 (Array (_ BitVec 32) ValueCell!5856)) (size!14069 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28559)

(declare-fun mapRest!20248 () (Array (_ BitVec 32) ValueCell!5856))

(assert (=> mapNonEmpty!20248 (= (arr!13717 _values!549) (store mapRest!20248 mapKey!20248 mapValue!20248))))

(declare-fun b!460486 () Bool)

(declare-fun res!275426 () Bool)

(declare-fun e!268638 () Bool)

(assert (=> b!460486 (=> (not res!275426) (not e!268638))))

(declare-datatypes ((array!28561 0))(
  ( (array!28562 (arr!13718 (Array (_ BitVec 32) (_ BitVec 64))) (size!14070 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28561)

(declare-datatypes ((List!8306 0))(
  ( (Nil!8303) (Cons!8302 (h!9158 (_ BitVec 64)) (t!14254 List!8306)) )
))
(declare-fun arrayNoDuplicates!0 (array!28561 (_ BitVec 32) List!8306) Bool)

(assert (=> b!460486 (= res!275426 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8303))))

(declare-fun b!460487 () Bool)

(declare-fun res!275427 () Bool)

(assert (=> b!460487 (=> (not res!275427) (not e!268638))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460487 (= res!275427 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14070 _keys!709))))))

(declare-fun b!460488 () Bool)

(declare-fun tp_is_empty!12399 () Bool)

(assert (=> b!460488 (= e!268636 tp_is_empty!12399)))

(declare-fun b!460489 () Bool)

(declare-fun res!275424 () Bool)

(assert (=> b!460489 (=> (not res!275424) (not e!268638))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460489 (= res!275424 (validMask!0 mask!1025))))

(declare-fun b!460490 () Bool)

(declare-fun res!275421 () Bool)

(assert (=> b!460490 (=> (not res!275421) (not e!268638))))

(assert (=> b!460490 (= res!275421 (or (= (select (arr!13718 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13718 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460491 () Bool)

(declare-fun e!268635 () Bool)

(assert (=> b!460491 (= e!268638 e!268635)))

(declare-fun res!275429 () Bool)

(assert (=> b!460491 (=> (not res!275429) (not e!268635))))

(declare-fun lt!208642 () array!28561)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28561 (_ BitVec 32)) Bool)

(assert (=> b!460491 (= res!275429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208642 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!460491 (= lt!208642 (array!28562 (store (arr!13718 _keys!709) i!563 k0!794) (size!14070 _keys!709)))))

(declare-fun b!460492 () Bool)

(declare-fun e!268641 () Bool)

(declare-fun e!268637 () Bool)

(assert (=> b!460492 (= e!268641 (and e!268637 mapRes!20248))))

(declare-fun condMapEmpty!20248 () Bool)

(declare-fun mapDefault!20248 () ValueCell!5856)

(assert (=> b!460492 (= condMapEmpty!20248 (= (arr!13717 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5856)) mapDefault!20248)))))

(declare-fun mapIsEmpty!20248 () Bool)

(assert (=> mapIsEmpty!20248 mapRes!20248))

(declare-fun b!460494 () Bool)

(declare-fun res!275431 () Bool)

(assert (=> b!460494 (=> (not res!275431) (not e!268635))))

(assert (=> b!460494 (= res!275431 (arrayNoDuplicates!0 lt!208642 #b00000000000000000000000000000000 Nil!8303))))

(declare-fun b!460495 () Bool)

(declare-fun res!275417 () Bool)

(assert (=> b!460495 (=> (not res!275417) (not e!268638))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!460495 (= res!275417 (and (= (size!14069 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14070 _keys!709) (size!14069 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460496 () Bool)

(declare-fun res!275423 () Bool)

(assert (=> b!460496 (=> (not res!275423) (not e!268638))))

(declare-fun arrayContainsKey!0 (array!28561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460496 (= res!275423 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!460497 () Bool)

(assert (=> b!460497 (= e!268637 tp_is_empty!12399)))

(declare-fun b!460498 () Bool)

(declare-datatypes ((Unit!13359 0))(
  ( (Unit!13360) )
))
(declare-fun e!268640 () Unit!13359)

(declare-fun Unit!13361 () Unit!13359)

(assert (=> b!460498 (= e!268640 Unit!13361)))

(declare-fun lt!208643 () Unit!13359)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28561 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13359)

(assert (=> b!460498 (= lt!208643 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460498 false))

(declare-fun b!460499 () Bool)

(declare-fun res!275419 () Bool)

(assert (=> b!460499 (=> (not res!275419) (not e!268638))))

(assert (=> b!460499 (= res!275419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460500 () Bool)

(declare-fun e!268634 () Bool)

(declare-fun e!268642 () Bool)

(assert (=> b!460500 (= e!268634 (not e!268642))))

(declare-fun res!275430 () Bool)

(assert (=> b!460500 (=> res!275430 e!268642)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460500 (= res!275430 (not (validKeyInArray!0 (select (arr!13718 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8204 0))(
  ( (tuple2!8205 (_1!4112 (_ BitVec 64)) (_2!4112 V!17637)) )
))
(declare-datatypes ((List!8307 0))(
  ( (Nil!8304) (Cons!8303 (h!9159 tuple2!8204) (t!14255 List!8307)) )
))
(declare-datatypes ((ListLongMap!7131 0))(
  ( (ListLongMap!7132 (toList!3581 List!8307)) )
))
(declare-fun lt!208646 () ListLongMap!7131)

(declare-fun lt!208653 () ListLongMap!7131)

(assert (=> b!460500 (= lt!208646 lt!208653)))

(declare-fun lt!208641 () ListLongMap!7131)

(declare-fun lt!208639 () tuple2!8204)

(declare-fun +!1600 (ListLongMap!7131 tuple2!8204) ListLongMap!7131)

(assert (=> b!460500 (= lt!208653 (+!1600 lt!208641 lt!208639))))

(declare-fun minValue!515 () V!17637)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!208652 () array!28559)

(declare-fun zeroValue!515 () V!17637)

(declare-fun getCurrentListMapNoExtraKeys!1749 (array!28561 array!28559 (_ BitVec 32) (_ BitVec 32) V!17637 V!17637 (_ BitVec 32) Int) ListLongMap!7131)

(assert (=> b!460500 (= lt!208646 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!17637)

(assert (=> b!460500 (= lt!208639 (tuple2!8205 k0!794 v!412))))

(assert (=> b!460500 (= lt!208641 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208645 () Unit!13359)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!752 (array!28561 array!28559 (_ BitVec 32) (_ BitVec 32) V!17637 V!17637 (_ BitVec 32) (_ BitVec 64) V!17637 (_ BitVec 32) Int) Unit!13359)

(assert (=> b!460500 (= lt!208645 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!752 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460501 () Bool)

(assert (=> b!460501 (= e!268635 e!268634)))

(declare-fun res!275422 () Bool)

(assert (=> b!460501 (=> (not res!275422) (not e!268634))))

(assert (=> b!460501 (= res!275422 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!208640 () ListLongMap!7131)

(assert (=> b!460501 (= lt!208640 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!460501 (= lt!208652 (array!28560 (store (arr!13717 _values!549) i!563 (ValueCellFull!5856 v!412)) (size!14069 _values!549)))))

(declare-fun lt!208644 () ListLongMap!7131)

(assert (=> b!460501 (= lt!208644 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460493 () Bool)

(declare-fun Unit!13362 () Unit!13359)

(assert (=> b!460493 (= e!268640 Unit!13362)))

(declare-fun res!275425 () Bool)

(assert (=> start!41200 (=> (not res!275425) (not e!268638))))

(assert (=> start!41200 (= res!275425 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14070 _keys!709))))))

(assert (=> start!41200 e!268638))

(assert (=> start!41200 tp_is_empty!12399))

(assert (=> start!41200 tp!39019))

(assert (=> start!41200 true))

(declare-fun array_inv!9914 (array!28559) Bool)

(assert (=> start!41200 (and (array_inv!9914 _values!549) e!268641)))

(declare-fun array_inv!9915 (array!28561) Bool)

(assert (=> start!41200 (array_inv!9915 _keys!709)))

(declare-fun b!460502 () Bool)

(declare-fun res!275418 () Bool)

(assert (=> b!460502 (=> (not res!275418) (not e!268635))))

(assert (=> b!460502 (= res!275418 (bvsle from!863 i!563))))

(declare-fun b!460503 () Bool)

(declare-fun res!275428 () Bool)

(assert (=> b!460503 (=> (not res!275428) (not e!268638))))

(assert (=> b!460503 (= res!275428 (validKeyInArray!0 k0!794))))

(declare-fun e!268639 () Bool)

(declare-fun b!460504 () Bool)

(assert (=> b!460504 (= e!268639 (= lt!208640 (+!1600 lt!208644 lt!208639)))))

(declare-fun lt!208648 () ListLongMap!7131)

(declare-fun lt!208650 () tuple2!8204)

(assert (=> b!460504 (= lt!208648 (+!1600 (+!1600 lt!208641 lt!208650) lt!208639))))

(declare-fun lt!208647 () Unit!13359)

(declare-fun lt!208651 () V!17637)

(declare-fun addCommutativeForDiffKeys!424 (ListLongMap!7131 (_ BitVec 64) V!17637 (_ BitVec 64) V!17637) Unit!13359)

(assert (=> b!460504 (= lt!208647 (addCommutativeForDiffKeys!424 lt!208641 k0!794 v!412 (select (arr!13718 _keys!709) from!863) lt!208651))))

(declare-fun b!460505 () Bool)

(assert (=> b!460505 (= e!268642 e!268639)))

(declare-fun res!275420 () Bool)

(assert (=> b!460505 (=> res!275420 e!268639)))

(assert (=> b!460505 (= res!275420 (= k0!794 (select (arr!13718 _keys!709) from!863)))))

(assert (=> b!460505 (not (= (select (arr!13718 _keys!709) from!863) k0!794))))

(declare-fun lt!208649 () Unit!13359)

(assert (=> b!460505 (= lt!208649 e!268640)))

(declare-fun c!56465 () Bool)

(assert (=> b!460505 (= c!56465 (= (select (arr!13718 _keys!709) from!863) k0!794))))

(assert (=> b!460505 (= lt!208640 lt!208648)))

(assert (=> b!460505 (= lt!208648 (+!1600 lt!208653 lt!208650))))

(assert (=> b!460505 (= lt!208650 (tuple2!8205 (select (arr!13718 _keys!709) from!863) lt!208651))))

(declare-fun get!6788 (ValueCell!5856 V!17637) V!17637)

(declare-fun dynLambda!908 (Int (_ BitVec 64)) V!17637)

(assert (=> b!460505 (= lt!208651 (get!6788 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!41200 res!275425) b!460489))

(assert (= (and b!460489 res!275424) b!460495))

(assert (= (and b!460495 res!275417) b!460499))

(assert (= (and b!460499 res!275419) b!460486))

(assert (= (and b!460486 res!275426) b!460487))

(assert (= (and b!460487 res!275427) b!460503))

(assert (= (and b!460503 res!275428) b!460490))

(assert (= (and b!460490 res!275421) b!460496))

(assert (= (and b!460496 res!275423) b!460491))

(assert (= (and b!460491 res!275429) b!460494))

(assert (= (and b!460494 res!275431) b!460502))

(assert (= (and b!460502 res!275418) b!460501))

(assert (= (and b!460501 res!275422) b!460500))

(assert (= (and b!460500 (not res!275430)) b!460505))

(assert (= (and b!460505 c!56465) b!460498))

(assert (= (and b!460505 (not c!56465)) b!460493))

(assert (= (and b!460505 (not res!275420)) b!460504))

(assert (= (and b!460492 condMapEmpty!20248) mapIsEmpty!20248))

(assert (= (and b!460492 (not condMapEmpty!20248)) mapNonEmpty!20248))

(get-info :version)

(assert (= (and mapNonEmpty!20248 ((_ is ValueCellFull!5856) mapValue!20248)) b!460488))

(assert (= (and b!460492 ((_ is ValueCellFull!5856) mapDefault!20248)) b!460497))

(assert (= start!41200 b!460492))

(declare-fun b_lambda!9925 () Bool)

(assert (=> (not b_lambda!9925) (not b!460505)))

(declare-fun t!14253 () Bool)

(declare-fun tb!3905 () Bool)

(assert (=> (and start!41200 (= defaultEntry!557 defaultEntry!557) t!14253) tb!3905))

(declare-fun result!7347 () Bool)

(assert (=> tb!3905 (= result!7347 tp_is_empty!12399)))

(assert (=> b!460505 t!14253))

(declare-fun b_and!19381 () Bool)

(assert (= b_and!19379 (and (=> t!14253 result!7347) b_and!19381)))

(declare-fun m!443699 () Bool)

(assert (=> b!460503 m!443699))

(declare-fun m!443701 () Bool)

(assert (=> mapNonEmpty!20248 m!443701))

(declare-fun m!443703 () Bool)

(assert (=> b!460496 m!443703))

(declare-fun m!443705 () Bool)

(assert (=> start!41200 m!443705))

(declare-fun m!443707 () Bool)

(assert (=> start!41200 m!443707))

(declare-fun m!443709 () Bool)

(assert (=> b!460489 m!443709))

(declare-fun m!443711 () Bool)

(assert (=> b!460500 m!443711))

(declare-fun m!443713 () Bool)

(assert (=> b!460500 m!443713))

(declare-fun m!443715 () Bool)

(assert (=> b!460500 m!443715))

(declare-fun m!443717 () Bool)

(assert (=> b!460500 m!443717))

(assert (=> b!460500 m!443711))

(declare-fun m!443719 () Bool)

(assert (=> b!460500 m!443719))

(declare-fun m!443721 () Bool)

(assert (=> b!460500 m!443721))

(declare-fun m!443723 () Bool)

(assert (=> b!460486 m!443723))

(declare-fun m!443725 () Bool)

(assert (=> b!460501 m!443725))

(declare-fun m!443727 () Bool)

(assert (=> b!460501 m!443727))

(declare-fun m!443729 () Bool)

(assert (=> b!460501 m!443729))

(declare-fun m!443731 () Bool)

(assert (=> b!460491 m!443731))

(declare-fun m!443733 () Bool)

(assert (=> b!460491 m!443733))

(declare-fun m!443735 () Bool)

(assert (=> b!460494 m!443735))

(declare-fun m!443737 () Bool)

(assert (=> b!460490 m!443737))

(assert (=> b!460505 m!443711))

(declare-fun m!443739 () Bool)

(assert (=> b!460505 m!443739))

(declare-fun m!443741 () Bool)

(assert (=> b!460505 m!443741))

(declare-fun m!443743 () Bool)

(assert (=> b!460505 m!443743))

(assert (=> b!460505 m!443741))

(assert (=> b!460505 m!443739))

(declare-fun m!443745 () Bool)

(assert (=> b!460505 m!443745))

(assert (=> b!460504 m!443711))

(declare-fun m!443747 () Bool)

(assert (=> b!460504 m!443747))

(assert (=> b!460504 m!443747))

(declare-fun m!443749 () Bool)

(assert (=> b!460504 m!443749))

(declare-fun m!443751 () Bool)

(assert (=> b!460504 m!443751))

(assert (=> b!460504 m!443711))

(declare-fun m!443753 () Bool)

(assert (=> b!460504 m!443753))

(declare-fun m!443755 () Bool)

(assert (=> b!460499 m!443755))

(declare-fun m!443757 () Bool)

(assert (=> b!460498 m!443757))

(check-sat (not b!460498) (not b!460491) (not start!41200) (not b!460503) (not b!460494) (not mapNonEmpty!20248) (not b!460486) (not b_lambda!9925) (not b_next!11061) (not b!460501) (not b!460500) (not b!460489) (not b!460496) (not b!460499) tp_is_empty!12399 (not b!460505) (not b!460504) b_and!19381)
(check-sat b_and!19381 (not b_next!11061))
(get-model)

(declare-fun b_lambda!9929 () Bool)

(assert (= b_lambda!9925 (or (and start!41200 b_free!11061) b_lambda!9929)))

(check-sat (not b!460486) (not b_lambda!9929) (not b!460498) (not b!460491) (not start!41200) (not b!460503) (not b!460494) (not mapNonEmpty!20248) (not b_next!11061) (not b!460501) (not b!460500) (not b!460489) (not b!460496) (not b!460499) tp_is_empty!12399 (not b!460505) (not b!460504) b_and!19381)
(check-sat b_and!19381 (not b_next!11061))
(get-model)

(declare-fun b!460578 () Bool)

(declare-fun e!268679 () Bool)

(declare-fun e!268680 () Bool)

(assert (=> b!460578 (= e!268679 e!268680)))

(declare-fun c!56471 () Bool)

(assert (=> b!460578 (= c!56471 (validKeyInArray!0 (select (arr!13718 lt!208642) #b00000000000000000000000000000000)))))

(declare-fun bm!30148 () Bool)

(declare-fun call!30151 () Bool)

(assert (=> bm!30148 (= call!30151 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!208642 mask!1025))))

(declare-fun b!460580 () Bool)

(declare-fun e!268681 () Bool)

(assert (=> b!460580 (= e!268680 e!268681)))

(declare-fun lt!208707 () (_ BitVec 64))

(assert (=> b!460580 (= lt!208707 (select (arr!13718 lt!208642) #b00000000000000000000000000000000))))

(declare-fun lt!208705 () Unit!13359)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28561 (_ BitVec 64) (_ BitVec 32)) Unit!13359)

(assert (=> b!460580 (= lt!208705 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!208642 lt!208707 #b00000000000000000000000000000000))))

(assert (=> b!460580 (arrayContainsKey!0 lt!208642 lt!208707 #b00000000000000000000000000000000)))

(declare-fun lt!208706 () Unit!13359)

(assert (=> b!460580 (= lt!208706 lt!208705)))

(declare-fun res!275482 () Bool)

(declare-datatypes ((SeekEntryResult!3524 0))(
  ( (MissingZero!3524 (index!16275 (_ BitVec 32))) (Found!3524 (index!16276 (_ BitVec 32))) (Intermediate!3524 (undefined!4336 Bool) (index!16277 (_ BitVec 32)) (x!42954 (_ BitVec 32))) (Undefined!3524) (MissingVacant!3524 (index!16278 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28561 (_ BitVec 32)) SeekEntryResult!3524)

(assert (=> b!460580 (= res!275482 (= (seekEntryOrOpen!0 (select (arr!13718 lt!208642) #b00000000000000000000000000000000) lt!208642 mask!1025) (Found!3524 #b00000000000000000000000000000000)))))

(assert (=> b!460580 (=> (not res!275482) (not e!268681))))

(declare-fun b!460581 () Bool)

(assert (=> b!460581 (= e!268681 call!30151)))

(declare-fun d!74681 () Bool)

(declare-fun res!275481 () Bool)

(assert (=> d!74681 (=> res!275481 e!268679)))

(assert (=> d!74681 (= res!275481 (bvsge #b00000000000000000000000000000000 (size!14070 lt!208642)))))

(assert (=> d!74681 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208642 mask!1025) e!268679)))

(declare-fun b!460579 () Bool)

(assert (=> b!460579 (= e!268680 call!30151)))

(assert (= (and d!74681 (not res!275481)) b!460578))

(assert (= (and b!460578 c!56471) b!460580))

(assert (= (and b!460578 (not c!56471)) b!460579))

(assert (= (and b!460580 res!275482) b!460581))

(assert (= (or b!460581 b!460579) bm!30148))

(declare-fun m!443819 () Bool)

(assert (=> b!460578 m!443819))

(assert (=> b!460578 m!443819))

(declare-fun m!443821 () Bool)

(assert (=> b!460578 m!443821))

(declare-fun m!443823 () Bool)

(assert (=> bm!30148 m!443823))

(assert (=> b!460580 m!443819))

(declare-fun m!443825 () Bool)

(assert (=> b!460580 m!443825))

(declare-fun m!443827 () Bool)

(assert (=> b!460580 m!443827))

(assert (=> b!460580 m!443819))

(declare-fun m!443829 () Bool)

(assert (=> b!460580 m!443829))

(assert (=> b!460491 d!74681))

(declare-fun b!460606 () Bool)

(assert (=> b!460606 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14070 lt!208642)))))

(assert (=> b!460606 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14069 lt!208652)))))

(declare-fun lt!208725 () ListLongMap!7131)

(declare-fun e!268697 () Bool)

(declare-fun apply!317 (ListLongMap!7131 (_ BitVec 64)) V!17637)

(assert (=> b!460606 (= e!268697 (= (apply!317 lt!208725 (select (arr!13718 lt!208642) from!863)) (get!6788 (select (arr!13717 lt!208652) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!460607 () Bool)

(declare-fun e!268699 () Bool)

(assert (=> b!460607 (= e!268699 (validKeyInArray!0 (select (arr!13718 lt!208642) from!863)))))

(assert (=> b!460607 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!460608 () Bool)

(declare-fun e!268701 () Bool)

(declare-fun e!268702 () Bool)

(assert (=> b!460608 (= e!268701 e!268702)))

(declare-fun c!56480 () Bool)

(assert (=> b!460608 (= c!56480 (bvslt from!863 (size!14070 lt!208642)))))

(declare-fun b!460609 () Bool)

(declare-fun e!268696 () Bool)

(assert (=> b!460609 (= e!268696 e!268701)))

(declare-fun c!56481 () Bool)

(assert (=> b!460609 (= c!56481 e!268699)))

(declare-fun res!275493 () Bool)

(assert (=> b!460609 (=> (not res!275493) (not e!268699))))

(assert (=> b!460609 (= res!275493 (bvslt from!863 (size!14070 lt!208642)))))

(declare-fun b!460610 () Bool)

(declare-fun e!268700 () ListLongMap!7131)

(declare-fun e!268698 () ListLongMap!7131)

(assert (=> b!460610 (= e!268700 e!268698)))

(declare-fun c!56483 () Bool)

(assert (=> b!460610 (= c!56483 (validKeyInArray!0 (select (arr!13718 lt!208642) from!863)))))

(declare-fun b!460612 () Bool)

(declare-fun call!30154 () ListLongMap!7131)

(assert (=> b!460612 (= e!268698 call!30154)))

(declare-fun b!460613 () Bool)

(declare-fun isEmpty!569 (ListLongMap!7131) Bool)

(assert (=> b!460613 (= e!268702 (isEmpty!569 lt!208725))))

(declare-fun b!460614 () Bool)

(declare-fun lt!208722 () Unit!13359)

(declare-fun lt!208728 () Unit!13359)

(assert (=> b!460614 (= lt!208722 lt!208728)))

(declare-fun lt!208724 () (_ BitVec 64))

(declare-fun lt!208723 () (_ BitVec 64))

(declare-fun lt!208726 () ListLongMap!7131)

(declare-fun lt!208727 () V!17637)

(declare-fun contains!2511 (ListLongMap!7131 (_ BitVec 64)) Bool)

(assert (=> b!460614 (not (contains!2511 (+!1600 lt!208726 (tuple2!8205 lt!208723 lt!208727)) lt!208724))))

(declare-fun addStillNotContains!152 (ListLongMap!7131 (_ BitVec 64) V!17637 (_ BitVec 64)) Unit!13359)

(assert (=> b!460614 (= lt!208728 (addStillNotContains!152 lt!208726 lt!208723 lt!208727 lt!208724))))

(assert (=> b!460614 (= lt!208724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!460614 (= lt!208727 (get!6788 (select (arr!13717 lt!208652) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!460614 (= lt!208723 (select (arr!13718 lt!208642) from!863))))

(assert (=> b!460614 (= lt!208726 call!30154)))

(assert (=> b!460614 (= e!268698 (+!1600 call!30154 (tuple2!8205 (select (arr!13718 lt!208642) from!863) (get!6788 (select (arr!13717 lt!208652) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!460615 () Bool)

(declare-fun res!275491 () Bool)

(assert (=> b!460615 (=> (not res!275491) (not e!268696))))

(assert (=> b!460615 (= res!275491 (not (contains!2511 lt!208725 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460616 () Bool)

(assert (=> b!460616 (= e!268700 (ListLongMap!7132 Nil!8304))))

(declare-fun bm!30151 () Bool)

(assert (=> bm!30151 (= call!30154 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!460617 () Bool)

(assert (=> b!460617 (= e!268701 e!268697)))

(assert (=> b!460617 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14070 lt!208642)))))

(declare-fun res!275492 () Bool)

(assert (=> b!460617 (= res!275492 (contains!2511 lt!208725 (select (arr!13718 lt!208642) from!863)))))

(assert (=> b!460617 (=> (not res!275492) (not e!268697))))

(declare-fun d!74683 () Bool)

(assert (=> d!74683 e!268696))

(declare-fun res!275494 () Bool)

(assert (=> d!74683 (=> (not res!275494) (not e!268696))))

(assert (=> d!74683 (= res!275494 (not (contains!2511 lt!208725 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74683 (= lt!208725 e!268700)))

(declare-fun c!56482 () Bool)

(assert (=> d!74683 (= c!56482 (bvsge from!863 (size!14070 lt!208642)))))

(assert (=> d!74683 (validMask!0 mask!1025)))

(assert (=> d!74683 (= (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!208725)))

(declare-fun b!460611 () Bool)

(assert (=> b!460611 (= e!268702 (= lt!208725 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(assert (= (and d!74683 c!56482) b!460616))

(assert (= (and d!74683 (not c!56482)) b!460610))

(assert (= (and b!460610 c!56483) b!460614))

(assert (= (and b!460610 (not c!56483)) b!460612))

(assert (= (or b!460614 b!460612) bm!30151))

(assert (= (and d!74683 res!275494) b!460615))

(assert (= (and b!460615 res!275491) b!460609))

(assert (= (and b!460609 res!275493) b!460607))

(assert (= (and b!460609 c!56481) b!460617))

(assert (= (and b!460609 (not c!56481)) b!460608))

(assert (= (and b!460617 res!275492) b!460606))

(assert (= (and b!460608 c!56480) b!460611))

(assert (= (and b!460608 (not c!56480)) b!460613))

(declare-fun b_lambda!9931 () Bool)

(assert (=> (not b_lambda!9931) (not b!460606)))

(assert (=> b!460606 t!14253))

(declare-fun b_and!19387 () Bool)

(assert (= b_and!19381 (and (=> t!14253 result!7347) b_and!19387)))

(declare-fun b_lambda!9933 () Bool)

(assert (=> (not b_lambda!9933) (not b!460614)))

(assert (=> b!460614 t!14253))

(declare-fun b_and!19389 () Bool)

(assert (= b_and!19387 (and (=> t!14253 result!7347) b_and!19389)))

(declare-fun m!443831 () Bool)

(assert (=> b!460606 m!443831))

(assert (=> b!460606 m!443739))

(declare-fun m!443833 () Bool)

(assert (=> b!460606 m!443833))

(declare-fun m!443835 () Bool)

(assert (=> b!460606 m!443835))

(assert (=> b!460606 m!443739))

(assert (=> b!460606 m!443831))

(assert (=> b!460606 m!443835))

(declare-fun m!443837 () Bool)

(assert (=> b!460606 m!443837))

(assert (=> b!460617 m!443835))

(assert (=> b!460617 m!443835))

(declare-fun m!443839 () Bool)

(assert (=> b!460617 m!443839))

(declare-fun m!443841 () Bool)

(assert (=> b!460614 m!443841))

(declare-fun m!443843 () Bool)

(assert (=> b!460614 m!443843))

(assert (=> b!460614 m!443831))

(assert (=> b!460614 m!443739))

(assert (=> b!460614 m!443833))

(declare-fun m!443845 () Bool)

(assert (=> b!460614 m!443845))

(assert (=> b!460614 m!443835))

(assert (=> b!460614 m!443739))

(assert (=> b!460614 m!443831))

(assert (=> b!460614 m!443841))

(declare-fun m!443847 () Bool)

(assert (=> b!460614 m!443847))

(declare-fun m!443849 () Bool)

(assert (=> d!74683 m!443849))

(assert (=> d!74683 m!443709))

(assert (=> b!460610 m!443835))

(assert (=> b!460610 m!443835))

(declare-fun m!443851 () Bool)

(assert (=> b!460610 m!443851))

(declare-fun m!443853 () Bool)

(assert (=> b!460613 m!443853))

(declare-fun m!443855 () Bool)

(assert (=> bm!30151 m!443855))

(assert (=> b!460607 m!443835))

(assert (=> b!460607 m!443835))

(assert (=> b!460607 m!443851))

(assert (=> b!460611 m!443855))

(declare-fun m!443857 () Bool)

(assert (=> b!460615 m!443857))

(assert (=> b!460501 d!74683))

(declare-fun b!460618 () Bool)

(assert (=> b!460618 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14070 _keys!709)))))

(assert (=> b!460618 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14069 _values!549)))))

(declare-fun lt!208732 () ListLongMap!7131)

(declare-fun e!268704 () Bool)

(assert (=> b!460618 (= e!268704 (= (apply!317 lt!208732 (select (arr!13718 _keys!709) from!863)) (get!6788 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!460619 () Bool)

(declare-fun e!268706 () Bool)

(assert (=> b!460619 (= e!268706 (validKeyInArray!0 (select (arr!13718 _keys!709) from!863)))))

(assert (=> b!460619 (bvsge from!863 #b00000000000000000000000000000000)))

(declare-fun b!460620 () Bool)

(declare-fun e!268708 () Bool)

(declare-fun e!268709 () Bool)

(assert (=> b!460620 (= e!268708 e!268709)))

(declare-fun c!56484 () Bool)

(assert (=> b!460620 (= c!56484 (bvslt from!863 (size!14070 _keys!709)))))

(declare-fun b!460621 () Bool)

(declare-fun e!268703 () Bool)

(assert (=> b!460621 (= e!268703 e!268708)))

(declare-fun c!56485 () Bool)

(assert (=> b!460621 (= c!56485 e!268706)))

(declare-fun res!275497 () Bool)

(assert (=> b!460621 (=> (not res!275497) (not e!268706))))

(assert (=> b!460621 (= res!275497 (bvslt from!863 (size!14070 _keys!709)))))

(declare-fun b!460622 () Bool)

(declare-fun e!268707 () ListLongMap!7131)

(declare-fun e!268705 () ListLongMap!7131)

(assert (=> b!460622 (= e!268707 e!268705)))

(declare-fun c!56487 () Bool)

(assert (=> b!460622 (= c!56487 (validKeyInArray!0 (select (arr!13718 _keys!709) from!863)))))

(declare-fun b!460624 () Bool)

(declare-fun call!30155 () ListLongMap!7131)

(assert (=> b!460624 (= e!268705 call!30155)))

(declare-fun b!460625 () Bool)

(assert (=> b!460625 (= e!268709 (isEmpty!569 lt!208732))))

(declare-fun b!460626 () Bool)

(declare-fun lt!208729 () Unit!13359)

(declare-fun lt!208735 () Unit!13359)

(assert (=> b!460626 (= lt!208729 lt!208735)))

(declare-fun lt!208734 () V!17637)

(declare-fun lt!208731 () (_ BitVec 64))

(declare-fun lt!208730 () (_ BitVec 64))

(declare-fun lt!208733 () ListLongMap!7131)

(assert (=> b!460626 (not (contains!2511 (+!1600 lt!208733 (tuple2!8205 lt!208730 lt!208734)) lt!208731))))

(assert (=> b!460626 (= lt!208735 (addStillNotContains!152 lt!208733 lt!208730 lt!208734 lt!208731))))

(assert (=> b!460626 (= lt!208731 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!460626 (= lt!208734 (get!6788 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!460626 (= lt!208730 (select (arr!13718 _keys!709) from!863))))

(assert (=> b!460626 (= lt!208733 call!30155)))

(assert (=> b!460626 (= e!268705 (+!1600 call!30155 (tuple2!8205 (select (arr!13718 _keys!709) from!863) (get!6788 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!460627 () Bool)

(declare-fun res!275495 () Bool)

(assert (=> b!460627 (=> (not res!275495) (not e!268703))))

(assert (=> b!460627 (= res!275495 (not (contains!2511 lt!208732 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460628 () Bool)

(assert (=> b!460628 (= e!268707 (ListLongMap!7132 Nil!8304))))

(declare-fun bm!30152 () Bool)

(assert (=> bm!30152 (= call!30155 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!460629 () Bool)

(assert (=> b!460629 (= e!268708 e!268704)))

(assert (=> b!460629 (and (bvsge from!863 #b00000000000000000000000000000000) (bvslt from!863 (size!14070 _keys!709)))))

(declare-fun res!275496 () Bool)

(assert (=> b!460629 (= res!275496 (contains!2511 lt!208732 (select (arr!13718 _keys!709) from!863)))))

(assert (=> b!460629 (=> (not res!275496) (not e!268704))))

(declare-fun d!74685 () Bool)

(assert (=> d!74685 e!268703))

(declare-fun res!275498 () Bool)

(assert (=> d!74685 (=> (not res!275498) (not e!268703))))

(assert (=> d!74685 (= res!275498 (not (contains!2511 lt!208732 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74685 (= lt!208732 e!268707)))

(declare-fun c!56486 () Bool)

(assert (=> d!74685 (= c!56486 (bvsge from!863 (size!14070 _keys!709)))))

(assert (=> d!74685 (validMask!0 mask!1025)))

(assert (=> d!74685 (= (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557) lt!208732)))

(declare-fun b!460623 () Bool)

(assert (=> b!460623 (= e!268709 (= lt!208732 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(assert (= (and d!74685 c!56486) b!460628))

(assert (= (and d!74685 (not c!56486)) b!460622))

(assert (= (and b!460622 c!56487) b!460626))

(assert (= (and b!460622 (not c!56487)) b!460624))

(assert (= (or b!460626 b!460624) bm!30152))

(assert (= (and d!74685 res!275498) b!460627))

(assert (= (and b!460627 res!275495) b!460621))

(assert (= (and b!460621 res!275497) b!460619))

(assert (= (and b!460621 c!56485) b!460629))

(assert (= (and b!460621 (not c!56485)) b!460620))

(assert (= (and b!460629 res!275496) b!460618))

(assert (= (and b!460620 c!56484) b!460623))

(assert (= (and b!460620 (not c!56484)) b!460625))

(declare-fun b_lambda!9935 () Bool)

(assert (=> (not b_lambda!9935) (not b!460618)))

(assert (=> b!460618 t!14253))

(declare-fun b_and!19391 () Bool)

(assert (= b_and!19389 (and (=> t!14253 result!7347) b_and!19391)))

(declare-fun b_lambda!9937 () Bool)

(assert (=> (not b_lambda!9937) (not b!460626)))

(assert (=> b!460626 t!14253))

(declare-fun b_and!19393 () Bool)

(assert (= b_and!19391 (and (=> t!14253 result!7347) b_and!19393)))

(assert (=> b!460618 m!443741))

(assert (=> b!460618 m!443739))

(assert (=> b!460618 m!443745))

(assert (=> b!460618 m!443711))

(assert (=> b!460618 m!443739))

(assert (=> b!460618 m!443741))

(assert (=> b!460618 m!443711))

(declare-fun m!443859 () Bool)

(assert (=> b!460618 m!443859))

(assert (=> b!460629 m!443711))

(assert (=> b!460629 m!443711))

(declare-fun m!443861 () Bool)

(assert (=> b!460629 m!443861))

(declare-fun m!443863 () Bool)

(assert (=> b!460626 m!443863))

(declare-fun m!443865 () Bool)

(assert (=> b!460626 m!443865))

(assert (=> b!460626 m!443741))

(assert (=> b!460626 m!443739))

(assert (=> b!460626 m!443745))

(declare-fun m!443867 () Bool)

(assert (=> b!460626 m!443867))

(assert (=> b!460626 m!443711))

(assert (=> b!460626 m!443739))

(assert (=> b!460626 m!443741))

(assert (=> b!460626 m!443863))

(declare-fun m!443869 () Bool)

(assert (=> b!460626 m!443869))

(declare-fun m!443871 () Bool)

(assert (=> d!74685 m!443871))

(assert (=> d!74685 m!443709))

(assert (=> b!460622 m!443711))

(assert (=> b!460622 m!443711))

(assert (=> b!460622 m!443719))

(declare-fun m!443873 () Bool)

(assert (=> b!460625 m!443873))

(declare-fun m!443875 () Bool)

(assert (=> bm!30152 m!443875))

(assert (=> b!460619 m!443711))

(assert (=> b!460619 m!443711))

(assert (=> b!460619 m!443719))

(assert (=> b!460623 m!443875))

(declare-fun m!443877 () Bool)

(assert (=> b!460627 m!443877))

(assert (=> b!460501 d!74685))

(declare-fun d!74687 () Bool)

(assert (=> d!74687 (= (validKeyInArray!0 k0!794) (and (not (= k0!794 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!794 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!460503 d!74687))

(declare-fun d!74689 () Bool)

(declare-fun e!268712 () Bool)

(assert (=> d!74689 e!268712))

(declare-fun res!275504 () Bool)

(assert (=> d!74689 (=> (not res!275504) (not e!268712))))

(declare-fun lt!208744 () ListLongMap!7131)

(assert (=> d!74689 (= res!275504 (contains!2511 lt!208744 (_1!4112 lt!208639)))))

(declare-fun lt!208746 () List!8307)

(assert (=> d!74689 (= lt!208744 (ListLongMap!7132 lt!208746))))

(declare-fun lt!208747 () Unit!13359)

(declare-fun lt!208745 () Unit!13359)

(assert (=> d!74689 (= lt!208747 lt!208745)))

(declare-datatypes ((Option!379 0))(
  ( (Some!378 (v!8523 V!17637)) (None!377) )
))
(declare-fun getValueByKey!373 (List!8307 (_ BitVec 64)) Option!379)

(assert (=> d!74689 (= (getValueByKey!373 lt!208746 (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639)))))

(declare-fun lemmaContainsTupThenGetReturnValue!197 (List!8307 (_ BitVec 64) V!17637) Unit!13359)

(assert (=> d!74689 (= lt!208745 (lemmaContainsTupThenGetReturnValue!197 lt!208746 (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(declare-fun insertStrictlySorted!199 (List!8307 (_ BitVec 64) V!17637) List!8307)

(assert (=> d!74689 (= lt!208746 (insertStrictlySorted!199 (toList!3581 lt!208644) (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(assert (=> d!74689 (= (+!1600 lt!208644 lt!208639) lt!208744)))

(declare-fun b!460634 () Bool)

(declare-fun res!275503 () Bool)

(assert (=> b!460634 (=> (not res!275503) (not e!268712))))

(assert (=> b!460634 (= res!275503 (= (getValueByKey!373 (toList!3581 lt!208744) (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639))))))

(declare-fun b!460635 () Bool)

(declare-fun contains!2512 (List!8307 tuple2!8204) Bool)

(assert (=> b!460635 (= e!268712 (contains!2512 (toList!3581 lt!208744) lt!208639))))

(assert (= (and d!74689 res!275504) b!460634))

(assert (= (and b!460634 res!275503) b!460635))

(declare-fun m!443879 () Bool)

(assert (=> d!74689 m!443879))

(declare-fun m!443881 () Bool)

(assert (=> d!74689 m!443881))

(declare-fun m!443883 () Bool)

(assert (=> d!74689 m!443883))

(declare-fun m!443885 () Bool)

(assert (=> d!74689 m!443885))

(declare-fun m!443887 () Bool)

(assert (=> b!460634 m!443887))

(declare-fun m!443889 () Bool)

(assert (=> b!460635 m!443889))

(assert (=> b!460504 d!74689))

(declare-fun d!74691 () Bool)

(declare-fun e!268713 () Bool)

(assert (=> d!74691 e!268713))

(declare-fun res!275506 () Bool)

(assert (=> d!74691 (=> (not res!275506) (not e!268713))))

(declare-fun lt!208748 () ListLongMap!7131)

(assert (=> d!74691 (= res!275506 (contains!2511 lt!208748 (_1!4112 lt!208639)))))

(declare-fun lt!208750 () List!8307)

(assert (=> d!74691 (= lt!208748 (ListLongMap!7132 lt!208750))))

(declare-fun lt!208751 () Unit!13359)

(declare-fun lt!208749 () Unit!13359)

(assert (=> d!74691 (= lt!208751 lt!208749)))

(assert (=> d!74691 (= (getValueByKey!373 lt!208750 (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639)))))

(assert (=> d!74691 (= lt!208749 (lemmaContainsTupThenGetReturnValue!197 lt!208750 (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(assert (=> d!74691 (= lt!208750 (insertStrictlySorted!199 (toList!3581 (+!1600 lt!208641 lt!208650)) (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(assert (=> d!74691 (= (+!1600 (+!1600 lt!208641 lt!208650) lt!208639) lt!208748)))

(declare-fun b!460636 () Bool)

(declare-fun res!275505 () Bool)

(assert (=> b!460636 (=> (not res!275505) (not e!268713))))

(assert (=> b!460636 (= res!275505 (= (getValueByKey!373 (toList!3581 lt!208748) (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639))))))

(declare-fun b!460637 () Bool)

(assert (=> b!460637 (= e!268713 (contains!2512 (toList!3581 lt!208748) lt!208639))))

(assert (= (and d!74691 res!275506) b!460636))

(assert (= (and b!460636 res!275505) b!460637))

(declare-fun m!443891 () Bool)

(assert (=> d!74691 m!443891))

(declare-fun m!443893 () Bool)

(assert (=> d!74691 m!443893))

(declare-fun m!443895 () Bool)

(assert (=> d!74691 m!443895))

(declare-fun m!443897 () Bool)

(assert (=> d!74691 m!443897))

(declare-fun m!443899 () Bool)

(assert (=> b!460636 m!443899))

(declare-fun m!443901 () Bool)

(assert (=> b!460637 m!443901))

(assert (=> b!460504 d!74691))

(declare-fun d!74693 () Bool)

(declare-fun e!268714 () Bool)

(assert (=> d!74693 e!268714))

(declare-fun res!275508 () Bool)

(assert (=> d!74693 (=> (not res!275508) (not e!268714))))

(declare-fun lt!208752 () ListLongMap!7131)

(assert (=> d!74693 (= res!275508 (contains!2511 lt!208752 (_1!4112 lt!208650)))))

(declare-fun lt!208754 () List!8307)

(assert (=> d!74693 (= lt!208752 (ListLongMap!7132 lt!208754))))

(declare-fun lt!208755 () Unit!13359)

(declare-fun lt!208753 () Unit!13359)

(assert (=> d!74693 (= lt!208755 lt!208753)))

(assert (=> d!74693 (= (getValueByKey!373 lt!208754 (_1!4112 lt!208650)) (Some!378 (_2!4112 lt!208650)))))

(assert (=> d!74693 (= lt!208753 (lemmaContainsTupThenGetReturnValue!197 lt!208754 (_1!4112 lt!208650) (_2!4112 lt!208650)))))

(assert (=> d!74693 (= lt!208754 (insertStrictlySorted!199 (toList!3581 lt!208641) (_1!4112 lt!208650) (_2!4112 lt!208650)))))

(assert (=> d!74693 (= (+!1600 lt!208641 lt!208650) lt!208752)))

(declare-fun b!460638 () Bool)

(declare-fun res!275507 () Bool)

(assert (=> b!460638 (=> (not res!275507) (not e!268714))))

(assert (=> b!460638 (= res!275507 (= (getValueByKey!373 (toList!3581 lt!208752) (_1!4112 lt!208650)) (Some!378 (_2!4112 lt!208650))))))

(declare-fun b!460639 () Bool)

(assert (=> b!460639 (= e!268714 (contains!2512 (toList!3581 lt!208752) lt!208650))))

(assert (= (and d!74693 res!275508) b!460638))

(assert (= (and b!460638 res!275507) b!460639))

(declare-fun m!443903 () Bool)

(assert (=> d!74693 m!443903))

(declare-fun m!443905 () Bool)

(assert (=> d!74693 m!443905))

(declare-fun m!443907 () Bool)

(assert (=> d!74693 m!443907))

(declare-fun m!443909 () Bool)

(assert (=> d!74693 m!443909))

(declare-fun m!443911 () Bool)

(assert (=> b!460638 m!443911))

(declare-fun m!443913 () Bool)

(assert (=> b!460639 m!443913))

(assert (=> b!460504 d!74693))

(declare-fun d!74695 () Bool)

(assert (=> d!74695 (= (+!1600 (+!1600 lt!208641 (tuple2!8205 k0!794 v!412)) (tuple2!8205 (select (arr!13718 _keys!709) from!863) lt!208651)) (+!1600 (+!1600 lt!208641 (tuple2!8205 (select (arr!13718 _keys!709) from!863) lt!208651)) (tuple2!8205 k0!794 v!412)))))

(declare-fun lt!208758 () Unit!13359)

(declare-fun choose!1342 (ListLongMap!7131 (_ BitVec 64) V!17637 (_ BitVec 64) V!17637) Unit!13359)

(assert (=> d!74695 (= lt!208758 (choose!1342 lt!208641 k0!794 v!412 (select (arr!13718 _keys!709) from!863) lt!208651))))

(assert (=> d!74695 (not (= k0!794 (select (arr!13718 _keys!709) from!863)))))

(assert (=> d!74695 (= (addCommutativeForDiffKeys!424 lt!208641 k0!794 v!412 (select (arr!13718 _keys!709) from!863) lt!208651) lt!208758)))

(declare-fun bs!14541 () Bool)

(assert (= bs!14541 d!74695))

(declare-fun m!443915 () Bool)

(assert (=> bs!14541 m!443915))

(assert (=> bs!14541 m!443915))

(declare-fun m!443917 () Bool)

(assert (=> bs!14541 m!443917))

(declare-fun m!443919 () Bool)

(assert (=> bs!14541 m!443919))

(declare-fun m!443921 () Bool)

(assert (=> bs!14541 m!443921))

(assert (=> bs!14541 m!443711))

(declare-fun m!443923 () Bool)

(assert (=> bs!14541 m!443923))

(assert (=> bs!14541 m!443919))

(assert (=> b!460504 d!74695))

(declare-fun d!74697 () Bool)

(assert (=> d!74697 (= (array_inv!9914 _values!549) (bvsge (size!14069 _values!549) #b00000000000000000000000000000000))))

(assert (=> start!41200 d!74697))

(declare-fun d!74699 () Bool)

(assert (=> d!74699 (= (array_inv!9915 _keys!709) (bvsge (size!14070 _keys!709) #b00000000000000000000000000000000))))

(assert (=> start!41200 d!74699))

(declare-fun b!460650 () Bool)

(declare-fun e!268726 () Bool)

(declare-fun e!268725 () Bool)

(assert (=> b!460650 (= e!268726 e!268725)))

(declare-fun res!275515 () Bool)

(assert (=> b!460650 (=> (not res!275515) (not e!268725))))

(declare-fun e!268724 () Bool)

(assert (=> b!460650 (= res!275515 (not e!268724))))

(declare-fun res!275516 () Bool)

(assert (=> b!460650 (=> (not res!275516) (not e!268724))))

(assert (=> b!460650 (= res!275516 (validKeyInArray!0 (select (arr!13718 lt!208642) #b00000000000000000000000000000000)))))

(declare-fun bm!30155 () Bool)

(declare-fun call!30158 () Bool)

(declare-fun c!56490 () Bool)

(assert (=> bm!30155 (= call!30158 (arrayNoDuplicates!0 lt!208642 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56490 (Cons!8302 (select (arr!13718 lt!208642) #b00000000000000000000000000000000) Nil!8303) Nil!8303)))))

(declare-fun b!460652 () Bool)

(declare-fun contains!2513 (List!8306 (_ BitVec 64)) Bool)

(assert (=> b!460652 (= e!268724 (contains!2513 Nil!8303 (select (arr!13718 lt!208642) #b00000000000000000000000000000000)))))

(declare-fun b!460653 () Bool)

(declare-fun e!268723 () Bool)

(assert (=> b!460653 (= e!268723 call!30158)))

(declare-fun b!460654 () Bool)

(assert (=> b!460654 (= e!268725 e!268723)))

(assert (=> b!460654 (= c!56490 (validKeyInArray!0 (select (arr!13718 lt!208642) #b00000000000000000000000000000000)))))

(declare-fun b!460651 () Bool)

(assert (=> b!460651 (= e!268723 call!30158)))

(declare-fun d!74701 () Bool)

(declare-fun res!275517 () Bool)

(assert (=> d!74701 (=> res!275517 e!268726)))

(assert (=> d!74701 (= res!275517 (bvsge #b00000000000000000000000000000000 (size!14070 lt!208642)))))

(assert (=> d!74701 (= (arrayNoDuplicates!0 lt!208642 #b00000000000000000000000000000000 Nil!8303) e!268726)))

(assert (= (and d!74701 (not res!275517)) b!460650))

(assert (= (and b!460650 res!275516) b!460652))

(assert (= (and b!460650 res!275515) b!460654))

(assert (= (and b!460654 c!56490) b!460653))

(assert (= (and b!460654 (not c!56490)) b!460651))

(assert (= (or b!460653 b!460651) bm!30155))

(assert (=> b!460650 m!443819))

(assert (=> b!460650 m!443819))

(assert (=> b!460650 m!443821))

(assert (=> bm!30155 m!443819))

(declare-fun m!443925 () Bool)

(assert (=> bm!30155 m!443925))

(assert (=> b!460652 m!443819))

(assert (=> b!460652 m!443819))

(declare-fun m!443927 () Bool)

(assert (=> b!460652 m!443927))

(assert (=> b!460654 m!443819))

(assert (=> b!460654 m!443819))

(assert (=> b!460654 m!443821))

(assert (=> b!460494 d!74701))

(declare-fun d!74703 () Bool)

(declare-fun e!268727 () Bool)

(assert (=> d!74703 e!268727))

(declare-fun res!275519 () Bool)

(assert (=> d!74703 (=> (not res!275519) (not e!268727))))

(declare-fun lt!208759 () ListLongMap!7131)

(assert (=> d!74703 (= res!275519 (contains!2511 lt!208759 (_1!4112 lt!208650)))))

(declare-fun lt!208761 () List!8307)

(assert (=> d!74703 (= lt!208759 (ListLongMap!7132 lt!208761))))

(declare-fun lt!208762 () Unit!13359)

(declare-fun lt!208760 () Unit!13359)

(assert (=> d!74703 (= lt!208762 lt!208760)))

(assert (=> d!74703 (= (getValueByKey!373 lt!208761 (_1!4112 lt!208650)) (Some!378 (_2!4112 lt!208650)))))

(assert (=> d!74703 (= lt!208760 (lemmaContainsTupThenGetReturnValue!197 lt!208761 (_1!4112 lt!208650) (_2!4112 lt!208650)))))

(assert (=> d!74703 (= lt!208761 (insertStrictlySorted!199 (toList!3581 lt!208653) (_1!4112 lt!208650) (_2!4112 lt!208650)))))

(assert (=> d!74703 (= (+!1600 lt!208653 lt!208650) lt!208759)))

(declare-fun b!460655 () Bool)

(declare-fun res!275518 () Bool)

(assert (=> b!460655 (=> (not res!275518) (not e!268727))))

(assert (=> b!460655 (= res!275518 (= (getValueByKey!373 (toList!3581 lt!208759) (_1!4112 lt!208650)) (Some!378 (_2!4112 lt!208650))))))

(declare-fun b!460656 () Bool)

(assert (=> b!460656 (= e!268727 (contains!2512 (toList!3581 lt!208759) lt!208650))))

(assert (= (and d!74703 res!275519) b!460655))

(assert (= (and b!460655 res!275518) b!460656))

(declare-fun m!443929 () Bool)

(assert (=> d!74703 m!443929))

(declare-fun m!443931 () Bool)

(assert (=> d!74703 m!443931))

(declare-fun m!443933 () Bool)

(assert (=> d!74703 m!443933))

(declare-fun m!443935 () Bool)

(assert (=> d!74703 m!443935))

(declare-fun m!443937 () Bool)

(assert (=> b!460655 m!443937))

(declare-fun m!443939 () Bool)

(assert (=> b!460656 m!443939))

(assert (=> b!460505 d!74703))

(declare-fun d!74705 () Bool)

(declare-fun c!56493 () Bool)

(assert (=> d!74705 (= c!56493 ((_ is ValueCellFull!5856) (select (arr!13717 _values!549) from!863)))))

(declare-fun e!268730 () V!17637)

(assert (=> d!74705 (= (get!6788 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)) e!268730)))

(declare-fun b!460661 () Bool)

(declare-fun get!6790 (ValueCell!5856 V!17637) V!17637)

(assert (=> b!460661 (= e!268730 (get!6790 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460662 () Bool)

(declare-fun get!6791 (ValueCell!5856 V!17637) V!17637)

(assert (=> b!460662 (= e!268730 (get!6791 (select (arr!13717 _values!549) from!863) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!74705 c!56493) b!460661))

(assert (= (and d!74705 (not c!56493)) b!460662))

(assert (=> b!460661 m!443741))

(assert (=> b!460661 m!443739))

(declare-fun m!443941 () Bool)

(assert (=> b!460661 m!443941))

(assert (=> b!460662 m!443741))

(assert (=> b!460662 m!443739))

(declare-fun m!443943 () Bool)

(assert (=> b!460662 m!443943))

(assert (=> b!460505 d!74705))

(declare-fun d!74707 () Bool)

(declare-fun res!275524 () Bool)

(declare-fun e!268735 () Bool)

(assert (=> d!74707 (=> res!275524 e!268735)))

(assert (=> d!74707 (= res!275524 (= (select (arr!13718 _keys!709) #b00000000000000000000000000000000) k0!794))))

(assert (=> d!74707 (= (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000) e!268735)))

(declare-fun b!460667 () Bool)

(declare-fun e!268736 () Bool)

(assert (=> b!460667 (= e!268735 e!268736)))

(declare-fun res!275525 () Bool)

(assert (=> b!460667 (=> (not res!275525) (not e!268736))))

(assert (=> b!460667 (= res!275525 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!14070 _keys!709)))))

(declare-fun b!460668 () Bool)

(assert (=> b!460668 (= e!268736 (arrayContainsKey!0 _keys!709 k0!794 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!74707 (not res!275524)) b!460667))

(assert (= (and b!460667 res!275525) b!460668))

(declare-fun m!443945 () Bool)

(assert (=> d!74707 m!443945))

(declare-fun m!443947 () Bool)

(assert (=> b!460668 m!443947))

(assert (=> b!460496 d!74707))

(declare-fun b!460669 () Bool)

(declare-fun e!268740 () Bool)

(declare-fun e!268739 () Bool)

(assert (=> b!460669 (= e!268740 e!268739)))

(declare-fun res!275526 () Bool)

(assert (=> b!460669 (=> (not res!275526) (not e!268739))))

(declare-fun e!268738 () Bool)

(assert (=> b!460669 (= res!275526 (not e!268738))))

(declare-fun res!275527 () Bool)

(assert (=> b!460669 (=> (not res!275527) (not e!268738))))

(assert (=> b!460669 (= res!275527 (validKeyInArray!0 (select (arr!13718 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!30156 () Bool)

(declare-fun call!30159 () Bool)

(declare-fun c!56494 () Bool)

(assert (=> bm!30156 (= call!30159 (arrayNoDuplicates!0 _keys!709 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!56494 (Cons!8302 (select (arr!13718 _keys!709) #b00000000000000000000000000000000) Nil!8303) Nil!8303)))))

(declare-fun b!460671 () Bool)

(assert (=> b!460671 (= e!268738 (contains!2513 Nil!8303 (select (arr!13718 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!460672 () Bool)

(declare-fun e!268737 () Bool)

(assert (=> b!460672 (= e!268737 call!30159)))

(declare-fun b!460673 () Bool)

(assert (=> b!460673 (= e!268739 e!268737)))

(assert (=> b!460673 (= c!56494 (validKeyInArray!0 (select (arr!13718 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun b!460670 () Bool)

(assert (=> b!460670 (= e!268737 call!30159)))

(declare-fun d!74709 () Bool)

(declare-fun res!275528 () Bool)

(assert (=> d!74709 (=> res!275528 e!268740)))

(assert (=> d!74709 (= res!275528 (bvsge #b00000000000000000000000000000000 (size!14070 _keys!709)))))

(assert (=> d!74709 (= (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8303) e!268740)))

(assert (= (and d!74709 (not res!275528)) b!460669))

(assert (= (and b!460669 res!275527) b!460671))

(assert (= (and b!460669 res!275526) b!460673))

(assert (= (and b!460673 c!56494) b!460672))

(assert (= (and b!460673 (not c!56494)) b!460670))

(assert (= (or b!460672 b!460670) bm!30156))

(assert (=> b!460669 m!443945))

(assert (=> b!460669 m!443945))

(declare-fun m!443949 () Bool)

(assert (=> b!460669 m!443949))

(assert (=> bm!30156 m!443945))

(declare-fun m!443951 () Bool)

(assert (=> bm!30156 m!443951))

(assert (=> b!460671 m!443945))

(assert (=> b!460671 m!443945))

(declare-fun m!443953 () Bool)

(assert (=> b!460671 m!443953))

(assert (=> b!460673 m!443945))

(assert (=> b!460673 m!443945))

(assert (=> b!460673 m!443949))

(assert (=> b!460486 d!74709))

(declare-fun d!74711 () Bool)

(assert (=> d!74711 (= (validMask!0 mask!1025) (and (or (= mask!1025 #b00000000000000000000000000000111) (= mask!1025 #b00000000000000000000000000001111) (= mask!1025 #b00000000000000000000000000011111) (= mask!1025 #b00000000000000000000000000111111) (= mask!1025 #b00000000000000000000000001111111) (= mask!1025 #b00000000000000000000000011111111) (= mask!1025 #b00000000000000000000000111111111) (= mask!1025 #b00000000000000000000001111111111) (= mask!1025 #b00000000000000000000011111111111) (= mask!1025 #b00000000000000000000111111111111) (= mask!1025 #b00000000000000000001111111111111) (= mask!1025 #b00000000000000000011111111111111) (= mask!1025 #b00000000000000000111111111111111) (= mask!1025 #b00000000000000001111111111111111) (= mask!1025 #b00000000000000011111111111111111) (= mask!1025 #b00000000000000111111111111111111) (= mask!1025 #b00000000000001111111111111111111) (= mask!1025 #b00000000000011111111111111111111) (= mask!1025 #b00000000000111111111111111111111) (= mask!1025 #b00000000001111111111111111111111) (= mask!1025 #b00000000011111111111111111111111) (= mask!1025 #b00000000111111111111111111111111) (= mask!1025 #b00000001111111111111111111111111) (= mask!1025 #b00000011111111111111111111111111) (= mask!1025 #b00000111111111111111111111111111) (= mask!1025 #b00001111111111111111111111111111) (= mask!1025 #b00011111111111111111111111111111) (= mask!1025 #b00111111111111111111111111111111)) (bvsle mask!1025 #b00111111111111111111111111111111)))))

(assert (=> b!460489 d!74711))

(declare-fun b!460674 () Bool)

(declare-fun e!268741 () Bool)

(declare-fun e!268742 () Bool)

(assert (=> b!460674 (= e!268741 e!268742)))

(declare-fun c!56495 () Bool)

(assert (=> b!460674 (= c!56495 (validKeyInArray!0 (select (arr!13718 _keys!709) #b00000000000000000000000000000000)))))

(declare-fun bm!30157 () Bool)

(declare-fun call!30160 () Bool)

(assert (=> bm!30157 (= call!30160 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!709 mask!1025))))

(declare-fun b!460676 () Bool)

(declare-fun e!268743 () Bool)

(assert (=> b!460676 (= e!268742 e!268743)))

(declare-fun lt!208765 () (_ BitVec 64))

(assert (=> b!460676 (= lt!208765 (select (arr!13718 _keys!709) #b00000000000000000000000000000000))))

(declare-fun lt!208763 () Unit!13359)

(assert (=> b!460676 (= lt!208763 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!709 lt!208765 #b00000000000000000000000000000000))))

(assert (=> b!460676 (arrayContainsKey!0 _keys!709 lt!208765 #b00000000000000000000000000000000)))

(declare-fun lt!208764 () Unit!13359)

(assert (=> b!460676 (= lt!208764 lt!208763)))

(declare-fun res!275530 () Bool)

(assert (=> b!460676 (= res!275530 (= (seekEntryOrOpen!0 (select (arr!13718 _keys!709) #b00000000000000000000000000000000) _keys!709 mask!1025) (Found!3524 #b00000000000000000000000000000000)))))

(assert (=> b!460676 (=> (not res!275530) (not e!268743))))

(declare-fun b!460677 () Bool)

(assert (=> b!460677 (= e!268743 call!30160)))

(declare-fun d!74713 () Bool)

(declare-fun res!275529 () Bool)

(assert (=> d!74713 (=> res!275529 e!268741)))

(assert (=> d!74713 (= res!275529 (bvsge #b00000000000000000000000000000000 (size!14070 _keys!709)))))

(assert (=> d!74713 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025) e!268741)))

(declare-fun b!460675 () Bool)

(assert (=> b!460675 (= e!268742 call!30160)))

(assert (= (and d!74713 (not res!275529)) b!460674))

(assert (= (and b!460674 c!56495) b!460676))

(assert (= (and b!460674 (not c!56495)) b!460675))

(assert (= (and b!460676 res!275530) b!460677))

(assert (= (or b!460677 b!460675) bm!30157))

(assert (=> b!460674 m!443945))

(assert (=> b!460674 m!443945))

(assert (=> b!460674 m!443949))

(declare-fun m!443955 () Bool)

(assert (=> bm!30157 m!443955))

(assert (=> b!460676 m!443945))

(declare-fun m!443957 () Bool)

(assert (=> b!460676 m!443957))

(declare-fun m!443959 () Bool)

(assert (=> b!460676 m!443959))

(assert (=> b!460676 m!443945))

(declare-fun m!443961 () Bool)

(assert (=> b!460676 m!443961))

(assert (=> b!460499 d!74713))

(declare-fun d!74715 () Bool)

(assert (=> d!74715 (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))

(declare-fun lt!208768 () Unit!13359)

(declare-fun choose!114 (array!28561 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13359)

(assert (=> d!74715 (= lt!208768 (choose!114 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> d!74715 (bvsge from!863 #b00000000000000000000000000000000)))

(assert (=> d!74715 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000) lt!208768)))

(declare-fun bs!14542 () Bool)

(assert (= bs!14542 d!74715))

(assert (=> bs!14542 m!443703))

(declare-fun m!443963 () Bool)

(assert (=> bs!14542 m!443963))

(assert (=> b!460498 d!74715))

(declare-fun b!460678 () Bool)

(assert (=> b!460678 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(assert (=> b!460678 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14069 _values!549)))))

(declare-fun e!268745 () Bool)

(declare-fun lt!208772 () ListLongMap!7131)

(assert (=> b!460678 (= e!268745 (= (apply!317 lt!208772 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))) (get!6788 (select (arr!13717 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!460679 () Bool)

(declare-fun e!268747 () Bool)

(assert (=> b!460679 (= e!268747 (validKeyInArray!0 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!460679 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!460680 () Bool)

(declare-fun e!268749 () Bool)

(declare-fun e!268750 () Bool)

(assert (=> b!460680 (= e!268749 e!268750)))

(declare-fun c!56496 () Bool)

(assert (=> b!460680 (= c!56496 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(declare-fun b!460681 () Bool)

(declare-fun e!268744 () Bool)

(assert (=> b!460681 (= e!268744 e!268749)))

(declare-fun c!56497 () Bool)

(assert (=> b!460681 (= c!56497 e!268747)))

(declare-fun res!275533 () Bool)

(assert (=> b!460681 (=> (not res!275533) (not e!268747))))

(assert (=> b!460681 (= res!275533 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(declare-fun b!460682 () Bool)

(declare-fun e!268748 () ListLongMap!7131)

(declare-fun e!268746 () ListLongMap!7131)

(assert (=> b!460682 (= e!268748 e!268746)))

(declare-fun c!56499 () Bool)

(assert (=> b!460682 (= c!56499 (validKeyInArray!0 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!460684 () Bool)

(declare-fun call!30161 () ListLongMap!7131)

(assert (=> b!460684 (= e!268746 call!30161)))

(declare-fun b!460685 () Bool)

(assert (=> b!460685 (= e!268750 (isEmpty!569 lt!208772))))

(declare-fun b!460686 () Bool)

(declare-fun lt!208769 () Unit!13359)

(declare-fun lt!208775 () Unit!13359)

(assert (=> b!460686 (= lt!208769 lt!208775)))

(declare-fun lt!208774 () V!17637)

(declare-fun lt!208773 () ListLongMap!7131)

(declare-fun lt!208770 () (_ BitVec 64))

(declare-fun lt!208771 () (_ BitVec 64))

(assert (=> b!460686 (not (contains!2511 (+!1600 lt!208773 (tuple2!8205 lt!208770 lt!208774)) lt!208771))))

(assert (=> b!460686 (= lt!208775 (addStillNotContains!152 lt!208773 lt!208770 lt!208774 lt!208771))))

(assert (=> b!460686 (= lt!208771 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!460686 (= lt!208774 (get!6788 (select (arr!13717 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!460686 (= lt!208770 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!460686 (= lt!208773 call!30161)))

(assert (=> b!460686 (= e!268746 (+!1600 call!30161 (tuple2!8205 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863)) (get!6788 (select (arr!13717 _values!549) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!460687 () Bool)

(declare-fun res!275531 () Bool)

(assert (=> b!460687 (=> (not res!275531) (not e!268744))))

(assert (=> b!460687 (= res!275531 (not (contains!2511 lt!208772 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460688 () Bool)

(assert (=> b!460688 (= e!268748 (ListLongMap!7132 Nil!8304))))

(declare-fun bm!30158 () Bool)

(assert (=> bm!30158 (= call!30161 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!460689 () Bool)

(assert (=> b!460689 (= e!268749 e!268745)))

(assert (=> b!460689 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(declare-fun res!275532 () Bool)

(assert (=> b!460689 (= res!275532 (contains!2511 lt!208772 (select (arr!13718 _keys!709) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!460689 (=> (not res!275532) (not e!268745))))

(declare-fun d!74717 () Bool)

(assert (=> d!74717 e!268744))

(declare-fun res!275534 () Bool)

(assert (=> d!74717 (=> (not res!275534) (not e!268744))))

(assert (=> d!74717 (= res!275534 (not (contains!2511 lt!208772 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74717 (= lt!208772 e!268748)))

(declare-fun c!56498 () Bool)

(assert (=> d!74717 (= c!56498 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(assert (=> d!74717 (validMask!0 mask!1025)))

(assert (=> d!74717 (= (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!208772)))

(declare-fun b!460683 () Bool)

(assert (=> b!460683 (= e!268750 (= lt!208772 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(assert (= (and d!74717 c!56498) b!460688))

(assert (= (and d!74717 (not c!56498)) b!460682))

(assert (= (and b!460682 c!56499) b!460686))

(assert (= (and b!460682 (not c!56499)) b!460684))

(assert (= (or b!460686 b!460684) bm!30158))

(assert (= (and d!74717 res!275534) b!460687))

(assert (= (and b!460687 res!275531) b!460681))

(assert (= (and b!460681 res!275533) b!460679))

(assert (= (and b!460681 c!56497) b!460689))

(assert (= (and b!460681 (not c!56497)) b!460680))

(assert (= (and b!460689 res!275532) b!460678))

(assert (= (and b!460680 c!56496) b!460683))

(assert (= (and b!460680 (not c!56496)) b!460685))

(declare-fun b_lambda!9939 () Bool)

(assert (=> (not b_lambda!9939) (not b!460678)))

(assert (=> b!460678 t!14253))

(declare-fun b_and!19395 () Bool)

(assert (= b_and!19393 (and (=> t!14253 result!7347) b_and!19395)))

(declare-fun b_lambda!9941 () Bool)

(assert (=> (not b_lambda!9941) (not b!460686)))

(assert (=> b!460686 t!14253))

(declare-fun b_and!19397 () Bool)

(assert (= b_and!19395 (and (=> t!14253 result!7347) b_and!19397)))

(declare-fun m!443965 () Bool)

(assert (=> b!460678 m!443965))

(assert (=> b!460678 m!443739))

(declare-fun m!443967 () Bool)

(assert (=> b!460678 m!443967))

(declare-fun m!443969 () Bool)

(assert (=> b!460678 m!443969))

(assert (=> b!460678 m!443739))

(assert (=> b!460678 m!443965))

(assert (=> b!460678 m!443969))

(declare-fun m!443971 () Bool)

(assert (=> b!460678 m!443971))

(assert (=> b!460689 m!443969))

(assert (=> b!460689 m!443969))

(declare-fun m!443973 () Bool)

(assert (=> b!460689 m!443973))

(declare-fun m!443975 () Bool)

(assert (=> b!460686 m!443975))

(declare-fun m!443977 () Bool)

(assert (=> b!460686 m!443977))

(assert (=> b!460686 m!443965))

(assert (=> b!460686 m!443739))

(assert (=> b!460686 m!443967))

(declare-fun m!443979 () Bool)

(assert (=> b!460686 m!443979))

(assert (=> b!460686 m!443969))

(assert (=> b!460686 m!443739))

(assert (=> b!460686 m!443965))

(assert (=> b!460686 m!443975))

(declare-fun m!443981 () Bool)

(assert (=> b!460686 m!443981))

(declare-fun m!443983 () Bool)

(assert (=> d!74717 m!443983))

(assert (=> d!74717 m!443709))

(assert (=> b!460682 m!443969))

(assert (=> b!460682 m!443969))

(declare-fun m!443985 () Bool)

(assert (=> b!460682 m!443985))

(declare-fun m!443987 () Bool)

(assert (=> b!460685 m!443987))

(declare-fun m!443989 () Bool)

(assert (=> bm!30158 m!443989))

(assert (=> b!460679 m!443969))

(assert (=> b!460679 m!443969))

(assert (=> b!460679 m!443985))

(assert (=> b!460683 m!443989))

(declare-fun m!443991 () Bool)

(assert (=> b!460687 m!443991))

(assert (=> b!460500 d!74717))

(declare-fun d!74719 () Bool)

(declare-fun e!268751 () Bool)

(assert (=> d!74719 e!268751))

(declare-fun res!275536 () Bool)

(assert (=> d!74719 (=> (not res!275536) (not e!268751))))

(declare-fun lt!208776 () ListLongMap!7131)

(assert (=> d!74719 (= res!275536 (contains!2511 lt!208776 (_1!4112 lt!208639)))))

(declare-fun lt!208778 () List!8307)

(assert (=> d!74719 (= lt!208776 (ListLongMap!7132 lt!208778))))

(declare-fun lt!208779 () Unit!13359)

(declare-fun lt!208777 () Unit!13359)

(assert (=> d!74719 (= lt!208779 lt!208777)))

(assert (=> d!74719 (= (getValueByKey!373 lt!208778 (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639)))))

(assert (=> d!74719 (= lt!208777 (lemmaContainsTupThenGetReturnValue!197 lt!208778 (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(assert (=> d!74719 (= lt!208778 (insertStrictlySorted!199 (toList!3581 lt!208641) (_1!4112 lt!208639) (_2!4112 lt!208639)))))

(assert (=> d!74719 (= (+!1600 lt!208641 lt!208639) lt!208776)))

(declare-fun b!460690 () Bool)

(declare-fun res!275535 () Bool)

(assert (=> b!460690 (=> (not res!275535) (not e!268751))))

(assert (=> b!460690 (= res!275535 (= (getValueByKey!373 (toList!3581 lt!208776) (_1!4112 lt!208639)) (Some!378 (_2!4112 lt!208639))))))

(declare-fun b!460691 () Bool)

(assert (=> b!460691 (= e!268751 (contains!2512 (toList!3581 lt!208776) lt!208639))))

(assert (= (and d!74719 res!275536) b!460690))

(assert (= (and b!460690 res!275535) b!460691))

(declare-fun m!443993 () Bool)

(assert (=> d!74719 m!443993))

(declare-fun m!443995 () Bool)

(assert (=> d!74719 m!443995))

(declare-fun m!443997 () Bool)

(assert (=> d!74719 m!443997))

(declare-fun m!443999 () Bool)

(assert (=> d!74719 m!443999))

(declare-fun m!444001 () Bool)

(assert (=> b!460690 m!444001))

(declare-fun m!444003 () Bool)

(assert (=> b!460691 m!444003))

(assert (=> b!460500 d!74719))

(declare-fun d!74721 () Bool)

(assert (=> d!74721 (= (validKeyInArray!0 (select (arr!13718 _keys!709) from!863)) (and (not (= (select (arr!13718 _keys!709) from!863) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!13718 _keys!709) from!863) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!460500 d!74721))

(declare-fun call!30166 () ListLongMap!7131)

(declare-fun call!30167 () ListLongMap!7131)

(declare-fun b!460698 () Bool)

(declare-fun e!268756 () Bool)

(assert (=> b!460698 (= e!268756 (= call!30167 (+!1600 call!30166 (tuple2!8205 k0!794 v!412))))))

(declare-fun d!74723 () Bool)

(declare-fun e!268757 () Bool)

(assert (=> d!74723 e!268757))

(declare-fun res!275539 () Bool)

(assert (=> d!74723 (=> (not res!275539) (not e!268757))))

(assert (=> d!74723 (= res!275539 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14070 _keys!709)))) (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563)) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14069 _values!549)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14070 _keys!709)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563) (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14069 _values!549))))))))

(declare-fun lt!208782 () Unit!13359)

(declare-fun choose!1343 (array!28561 array!28559 (_ BitVec 32) (_ BitVec 32) V!17637 V!17637 (_ BitVec 32) (_ BitVec 64) V!17637 (_ BitVec 32) Int) Unit!13359)

(assert (=> d!74723 (= lt!208782 (choose!1343 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> d!74723 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!14070 _keys!709)))))

(assert (=> d!74723 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!752 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!208782)))

(declare-fun bm!30163 () Bool)

(assert (=> bm!30163 (= call!30167 (getCurrentListMapNoExtraKeys!1749 (array!28562 (store (arr!13718 _keys!709) i!563 k0!794) (size!14070 _keys!709)) (array!28560 (store (arr!13717 _values!549) i!563 (ValueCellFull!5856 v!412)) (size!14069 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460699 () Bool)

(assert (=> b!460699 (= e!268757 e!268756)))

(declare-fun c!56502 () Bool)

(assert (=> b!460699 (= c!56502 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun bm!30164 () Bool)

(assert (=> bm!30164 (= call!30166 (getCurrentListMapNoExtraKeys!1749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460700 () Bool)

(assert (=> b!460700 (= e!268756 (= call!30167 call!30166))))

(assert (= (and d!74723 res!275539) b!460699))

(assert (= (and b!460699 c!56502) b!460698))

(assert (= (and b!460699 (not c!56502)) b!460700))

(assert (= (or b!460698 b!460700) bm!30164))

(assert (= (or b!460698 b!460700) bm!30163))

(declare-fun m!444005 () Bool)

(assert (=> b!460698 m!444005))

(declare-fun m!444007 () Bool)

(assert (=> d!74723 m!444007))

(assert (=> bm!30163 m!443733))

(assert (=> bm!30163 m!443727))

(declare-fun m!444009 () Bool)

(assert (=> bm!30163 m!444009))

(assert (=> bm!30164 m!443715))

(assert (=> b!460500 d!74723))

(declare-fun b!460701 () Bool)

(assert (=> b!460701 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 lt!208642)))))

(assert (=> b!460701 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14069 lt!208652)))))

(declare-fun e!268759 () Bool)

(declare-fun lt!208786 () ListLongMap!7131)

(assert (=> b!460701 (= e!268759 (= (apply!317 lt!208786 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863))) (get!6788 (select (arr!13717 lt!208652) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!460702 () Bool)

(declare-fun e!268761 () Bool)

(assert (=> b!460702 (= e!268761 (validKeyInArray!0 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!460702 (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))

(declare-fun b!460703 () Bool)

(declare-fun e!268763 () Bool)

(declare-fun e!268764 () Bool)

(assert (=> b!460703 (= e!268763 e!268764)))

(declare-fun c!56503 () Bool)

(assert (=> b!460703 (= c!56503 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 lt!208642)))))

(declare-fun b!460704 () Bool)

(declare-fun e!268758 () Bool)

(assert (=> b!460704 (= e!268758 e!268763)))

(declare-fun c!56504 () Bool)

(assert (=> b!460704 (= c!56504 e!268761)))

(declare-fun res!275542 () Bool)

(assert (=> b!460704 (=> (not res!275542) (not e!268761))))

(assert (=> b!460704 (= res!275542 (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 lt!208642)))))

(declare-fun b!460705 () Bool)

(declare-fun e!268762 () ListLongMap!7131)

(declare-fun e!268760 () ListLongMap!7131)

(assert (=> b!460705 (= e!268762 e!268760)))

(declare-fun c!56506 () Bool)

(assert (=> b!460705 (= c!56506 (validKeyInArray!0 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863))))))

(declare-fun b!460707 () Bool)

(declare-fun call!30168 () ListLongMap!7131)

(assert (=> b!460707 (= e!268760 call!30168)))

(declare-fun b!460708 () Bool)

(assert (=> b!460708 (= e!268764 (isEmpty!569 lt!208786))))

(declare-fun b!460709 () Bool)

(declare-fun lt!208783 () Unit!13359)

(declare-fun lt!208789 () Unit!13359)

(assert (=> b!460709 (= lt!208783 lt!208789)))

(declare-fun lt!208784 () (_ BitVec 64))

(declare-fun lt!208788 () V!17637)

(declare-fun lt!208787 () ListLongMap!7131)

(declare-fun lt!208785 () (_ BitVec 64))

(assert (=> b!460709 (not (contains!2511 (+!1600 lt!208787 (tuple2!8205 lt!208784 lt!208788)) lt!208785))))

(assert (=> b!460709 (= lt!208789 (addStillNotContains!152 lt!208787 lt!208784 lt!208788 lt!208785))))

(assert (=> b!460709 (= lt!208785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!460709 (= lt!208788 (get!6788 (select (arr!13717 lt!208652) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!460709 (= lt!208784 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863)))))

(assert (=> b!460709 (= lt!208787 call!30168)))

(assert (=> b!460709 (= e!268760 (+!1600 call!30168 (tuple2!8205 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863)) (get!6788 (select (arr!13717 lt!208652) (bvadd #b00000000000000000000000000000001 from!863)) (dynLambda!908 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!460710 () Bool)

(declare-fun res!275540 () Bool)

(assert (=> b!460710 (=> (not res!275540) (not e!268758))))

(assert (=> b!460710 (= res!275540 (not (contains!2511 lt!208786 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460711 () Bool)

(assert (=> b!460711 (= e!268762 (ListLongMap!7132 Nil!8304))))

(declare-fun bm!30165 () Bool)

(assert (=> bm!30165 (= call!30168 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557))))

(declare-fun b!460712 () Bool)

(assert (=> b!460712 (= e!268763 e!268759)))

(assert (=> b!460712 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!863) (size!14070 lt!208642)))))

(declare-fun res!275541 () Bool)

(assert (=> b!460712 (= res!275541 (contains!2511 lt!208786 (select (arr!13718 lt!208642) (bvadd #b00000000000000000000000000000001 from!863))))))

(assert (=> b!460712 (=> (not res!275541) (not e!268759))))

(declare-fun d!74725 () Bool)

(assert (=> d!74725 e!268758))

(declare-fun res!275543 () Bool)

(assert (=> d!74725 (=> (not res!275543) (not e!268758))))

(assert (=> d!74725 (= res!275543 (not (contains!2511 lt!208786 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!74725 (= lt!208786 e!268762)))

(declare-fun c!56505 () Bool)

(assert (=> d!74725 (= c!56505 (bvsge (bvadd #b00000000000000000000000000000001 from!863) (size!14070 lt!208642)))))

(assert (=> d!74725 (validMask!0 mask!1025)))

(assert (=> d!74725 (= (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!208786)))

(declare-fun b!460706 () Bool)

(assert (=> b!460706 (= e!268764 (= lt!208786 (getCurrentListMapNoExtraKeys!1749 lt!208642 lt!208652 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863 #b00000000000000000000000000000001) defaultEntry!557)))))

(assert (= (and d!74725 c!56505) b!460711))

(assert (= (and d!74725 (not c!56505)) b!460705))

(assert (= (and b!460705 c!56506) b!460709))

(assert (= (and b!460705 (not c!56506)) b!460707))

(assert (= (or b!460709 b!460707) bm!30165))

(assert (= (and d!74725 res!275543) b!460710))

(assert (= (and b!460710 res!275540) b!460704))

(assert (= (and b!460704 res!275542) b!460702))

(assert (= (and b!460704 c!56504) b!460712))

(assert (= (and b!460704 (not c!56504)) b!460703))

(assert (= (and b!460712 res!275541) b!460701))

(assert (= (and b!460703 c!56503) b!460706))

(assert (= (and b!460703 (not c!56503)) b!460708))

(declare-fun b_lambda!9943 () Bool)

(assert (=> (not b_lambda!9943) (not b!460701)))

(assert (=> b!460701 t!14253))

(declare-fun b_and!19399 () Bool)

(assert (= b_and!19397 (and (=> t!14253 result!7347) b_and!19399)))

(declare-fun b_lambda!9945 () Bool)

(assert (=> (not b_lambda!9945) (not b!460709)))

(assert (=> b!460709 t!14253))

(declare-fun b_and!19401 () Bool)

(assert (= b_and!19399 (and (=> t!14253 result!7347) b_and!19401)))

(declare-fun m!444011 () Bool)

(assert (=> b!460701 m!444011))

(assert (=> b!460701 m!443739))

(declare-fun m!444013 () Bool)

(assert (=> b!460701 m!444013))

(declare-fun m!444015 () Bool)

(assert (=> b!460701 m!444015))

(assert (=> b!460701 m!443739))

(assert (=> b!460701 m!444011))

(assert (=> b!460701 m!444015))

(declare-fun m!444017 () Bool)

(assert (=> b!460701 m!444017))

(assert (=> b!460712 m!444015))

(assert (=> b!460712 m!444015))

(declare-fun m!444019 () Bool)

(assert (=> b!460712 m!444019))

(declare-fun m!444021 () Bool)

(assert (=> b!460709 m!444021))

(declare-fun m!444023 () Bool)

(assert (=> b!460709 m!444023))

(assert (=> b!460709 m!444011))

(assert (=> b!460709 m!443739))

(assert (=> b!460709 m!444013))

(declare-fun m!444025 () Bool)

(assert (=> b!460709 m!444025))

(assert (=> b!460709 m!444015))

(assert (=> b!460709 m!443739))

(assert (=> b!460709 m!444011))

(assert (=> b!460709 m!444021))

(declare-fun m!444027 () Bool)

(assert (=> b!460709 m!444027))

(declare-fun m!444029 () Bool)

(assert (=> d!74725 m!444029))

(assert (=> d!74725 m!443709))

(assert (=> b!460705 m!444015))

(assert (=> b!460705 m!444015))

(declare-fun m!444031 () Bool)

(assert (=> b!460705 m!444031))

(declare-fun m!444033 () Bool)

(assert (=> b!460708 m!444033))

(declare-fun m!444035 () Bool)

(assert (=> bm!30165 m!444035))

(assert (=> b!460702 m!444015))

(assert (=> b!460702 m!444015))

(assert (=> b!460702 m!444031))

(assert (=> b!460706 m!444035))

(declare-fun m!444037 () Bool)

(assert (=> b!460710 m!444037))

(assert (=> b!460500 d!74725))

(declare-fun b!460720 () Bool)

(declare-fun e!268769 () Bool)

(assert (=> b!460720 (= e!268769 tp_is_empty!12399)))

(declare-fun condMapEmpty!20254 () Bool)

(declare-fun mapDefault!20254 () ValueCell!5856)

(assert (=> mapNonEmpty!20248 (= condMapEmpty!20254 (= mapRest!20248 ((as const (Array (_ BitVec 32) ValueCell!5856)) mapDefault!20254)))))

(declare-fun mapRes!20254 () Bool)

(assert (=> mapNonEmpty!20248 (= tp!39018 (and e!268769 mapRes!20254))))

(declare-fun b!460719 () Bool)

(declare-fun e!268770 () Bool)

(assert (=> b!460719 (= e!268770 tp_is_empty!12399)))

(declare-fun mapNonEmpty!20254 () Bool)

(declare-fun tp!39028 () Bool)

(assert (=> mapNonEmpty!20254 (= mapRes!20254 (and tp!39028 e!268770))))

(declare-fun mapRest!20254 () (Array (_ BitVec 32) ValueCell!5856))

(declare-fun mapValue!20254 () ValueCell!5856)

(declare-fun mapKey!20254 () (_ BitVec 32))

(assert (=> mapNonEmpty!20254 (= mapRest!20248 (store mapRest!20254 mapKey!20254 mapValue!20254))))

(declare-fun mapIsEmpty!20254 () Bool)

(assert (=> mapIsEmpty!20254 mapRes!20254))

(assert (= (and mapNonEmpty!20248 condMapEmpty!20254) mapIsEmpty!20254))

(assert (= (and mapNonEmpty!20248 (not condMapEmpty!20254)) mapNonEmpty!20254))

(assert (= (and mapNonEmpty!20254 ((_ is ValueCellFull!5856) mapValue!20254)) b!460719))

(assert (= (and mapNonEmpty!20248 ((_ is ValueCellFull!5856) mapDefault!20254)) b!460720))

(declare-fun m!444039 () Bool)

(assert (=> mapNonEmpty!20254 m!444039))

(declare-fun b_lambda!9947 () Bool)

(assert (= b_lambda!9943 (or (and start!41200 b_free!11061) b_lambda!9947)))

(declare-fun b_lambda!9949 () Bool)

(assert (= b_lambda!9945 (or (and start!41200 b_free!11061) b_lambda!9949)))

(declare-fun b_lambda!9951 () Bool)

(assert (= b_lambda!9937 (or (and start!41200 b_free!11061) b_lambda!9951)))

(declare-fun b_lambda!9953 () Bool)

(assert (= b_lambda!9933 (or (and start!41200 b_free!11061) b_lambda!9953)))

(declare-fun b_lambda!9955 () Bool)

(assert (= b_lambda!9939 (or (and start!41200 b_free!11061) b_lambda!9955)))

(declare-fun b_lambda!9957 () Bool)

(assert (= b_lambda!9935 (or (and start!41200 b_free!11061) b_lambda!9957)))

(declare-fun b_lambda!9959 () Bool)

(assert (= b_lambda!9941 (or (and start!41200 b_free!11061) b_lambda!9959)))

(declare-fun b_lambda!9961 () Bool)

(assert (= b_lambda!9931 (or (and start!41200 b_free!11061) b_lambda!9961)))

(check-sat (not b!460689) (not b!460615) (not b_lambda!9961) (not b!460634) (not d!74715) (not d!74685) (not bm!30157) (not b_lambda!9953) (not b!460629) (not b!460626) (not b!460638) (not b!460656) (not b!460712) (not d!74703) (not b_lambda!9955) (not b!460706) (not b!460617) (not b!460622) (not b!460619) (not b_lambda!9959) (not b!460578) (not b!460635) (not b!460702) (not d!74691) (not b!460613) (not b!460671) (not b!460673) (not b_next!11061) (not b!460661) (not b!460637) (not b_lambda!9929) (not bm!30148) (not b_lambda!9947) (not bm!30163) (not bm!30155) (not b!460685) (not b!460655) (not b!460676) (not mapNonEmpty!20254) (not b_lambda!9951) (not d!74723) (not b!460636) (not d!74693) (not b!460710) (not b!460690) (not b!460687) (not b!460686) (not d!74719) (not b!460682) b_and!19401 (not b_lambda!9957) (not b!460580) (not b!460623) (not d!74695) (not b!460627) (not bm!30158) (not b!460639) (not b!460674) (not b!460652) (not b!460654) (not bm!30165) (not b!460614) (not b_lambda!9949) (not bm!30156) (not b!460668) (not b!460705) (not b!460650) (not b!460709) (not bm!30152) (not b!460625) (not d!74683) (not d!74689) tp_is_empty!12399 (not b!460611) (not b!460678) (not b!460683) (not b!460662) (not b!460607) (not b!460708) (not b!460701) (not b!460698) (not b!460610) (not b!460606) (not d!74717) (not b!460691) (not bm!30164) (not b!460679) (not bm!30151) (not d!74725) (not b!460618) (not b!460669))
(check-sat b_and!19401 (not b_next!11061))
