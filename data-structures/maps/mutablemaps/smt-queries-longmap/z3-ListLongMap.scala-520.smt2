; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13090 () Bool)

(assert start!13090)

(declare-fun b!114503 () Bool)

(declare-fun b_free!2633 () Bool)

(declare-fun b_next!2633 () Bool)

(assert (=> b!114503 (= b_free!2633 (not b_next!2633))))

(declare-fun tp!10258 () Bool)

(declare-fun b_and!7081 () Bool)

(assert (=> b!114503 (= tp!10258 b_and!7081)))

(declare-fun b!114507 () Bool)

(declare-fun b_free!2635 () Bool)

(declare-fun b_next!2635 () Bool)

(assert (=> b!114507 (= b_free!2635 (not b_next!2635))))

(declare-fun tp!10260 () Bool)

(declare-fun b_and!7083 () Bool)

(assert (=> b!114507 (= tp!10260 b_and!7083)))

(declare-fun b!114492 () Bool)

(declare-fun res!56336 () Bool)

(declare-fun e!74516 () Bool)

(assert (=> b!114492 (=> (not res!56336) (not e!74516))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3291 0))(
  ( (V!3292 (val!1411 Int)) )
))
(declare-datatypes ((array!4466 0))(
  ( (array!4467 (arr!2116 (Array (_ BitVec 32) (_ BitVec 64))) (size!2376 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1023 0))(
  ( (ValueCellFull!1023 (v!2987 V!3291)) (EmptyCell!1023) )
))
(declare-datatypes ((array!4468 0))(
  ( (array!4469 (arr!2117 (Array (_ BitVec 32) ValueCell!1023)) (size!2377 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!954 0))(
  ( (LongMapFixedSize!955 (defaultEntry!2683 Int) (mask!6879 (_ BitVec 32)) (extraKeys!2472 (_ BitVec 32)) (zeroValue!2550 V!3291) (minValue!2550 V!3291) (_size!526 (_ BitVec 32)) (_keys!4405 array!4466) (_values!2666 array!4468) (_vacant!526 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!752 0))(
  ( (Cell!753 (v!2988 LongMapFixedSize!954)) )
))
(declare-datatypes ((LongMap!752 0))(
  ( (LongMap!753 (underlying!387 Cell!752)) )
))
(declare-fun thiss!992 () LongMap!752)

(assert (=> b!114492 (= res!56336 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992)))))))))

(declare-fun b!114493 () Bool)

(declare-fun e!74521 () Bool)

(declare-fun e!74512 () Bool)

(assert (=> b!114493 (= e!74521 (not e!74512))))

(declare-fun res!56335 () Bool)

(assert (=> b!114493 (=> res!56335 e!74512)))

(declare-datatypes ((tuple2!2468 0))(
  ( (tuple2!2469 (_1!1244 Bool) (_2!1244 LongMapFixedSize!954)) )
))
(declare-fun lt!59621 () tuple2!2468)

(declare-fun valid!442 (LongMapFixedSize!954) Bool)

(assert (=> b!114493 (= res!56335 (not (valid!442 (_2!1244 lt!59621))))))

(declare-datatypes ((tuple2!2470 0))(
  ( (tuple2!2471 (_1!1245 (_ BitVec 64)) (_2!1245 V!3291)) )
))
(declare-datatypes ((List!1674 0))(
  ( (Nil!1671) (Cons!1670 (h!2270 tuple2!2470) (t!5912 List!1674)) )
))
(declare-datatypes ((ListLongMap!1619 0))(
  ( (ListLongMap!1620 (toList!825 List!1674)) )
))
(declare-fun lt!59635 () ListLongMap!1619)

(declare-fun lt!59629 () ListLongMap!1619)

(declare-fun lt!59626 () tuple2!2470)

(declare-fun lt!59625 () tuple2!2470)

(declare-fun +!157 (ListLongMap!1619 tuple2!2470) ListLongMap!1619)

(assert (=> b!114493 (= (+!157 lt!59629 lt!59626) (+!157 (+!157 lt!59635 lt!59626) lt!59625))))

(assert (=> b!114493 (= lt!59626 (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59627 () V!3291)

(declare-datatypes ((Unit!3585 0))(
  ( (Unit!3586) )
))
(declare-fun lt!59624 () Unit!3585)

(declare-fun addCommutativeForDiffKeys!69 (ListLongMap!1619 (_ BitVec 64) V!3291 (_ BitVec 64) V!3291) Unit!3585)

(assert (=> b!114493 (= lt!59624 (addCommutativeForDiffKeys!69 lt!59635 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59620 () ListLongMap!1619)

(assert (=> b!114493 (= lt!59620 lt!59629)))

(assert (=> b!114493 (= lt!59629 (+!157 lt!59635 lt!59625))))

(declare-fun lt!59633 () ListLongMap!1619)

(declare-fun lt!59628 () tuple2!2470)

(assert (=> b!114493 (= lt!59620 (+!157 lt!59633 lt!59628))))

(declare-fun lt!59630 () ListLongMap!1619)

(assert (=> b!114493 (= lt!59635 (+!157 lt!59630 lt!59628))))

(assert (=> b!114493 (= lt!59628 (tuple2!2471 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(assert (=> b!114493 (= lt!59633 (+!157 lt!59630 lt!59625))))

(assert (=> b!114493 (= lt!59625 (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627))))

(declare-fun lt!59631 () Unit!3585)

(assert (=> b!114493 (= lt!59631 (addCommutativeForDiffKeys!69 lt!59630 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!124 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 32) Int) ListLongMap!1619)

(assert (=> b!114493 (= lt!59630 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114494 () Bool)

(declare-fun e!74522 () Bool)

(declare-fun e!74514 () Bool)

(assert (=> b!114494 (= e!74522 e!74514)))

(declare-fun b!114495 () Bool)

(declare-fun e!74525 () Bool)

(declare-fun e!74517 () Bool)

(declare-fun mapRes!4127 () Bool)

(assert (=> b!114495 (= e!74525 (and e!74517 mapRes!4127))))

(declare-fun condMapEmpty!4127 () Bool)

(declare-fun mapDefault!4127 () ValueCell!1023)

(assert (=> b!114495 (= condMapEmpty!4127 (= (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1023)) mapDefault!4127)))))

(declare-fun b!114496 () Bool)

(declare-fun tp_is_empty!2733 () Bool)

(assert (=> b!114496 (= e!74517 tp_is_empty!2733)))

(declare-fun b!114497 () Bool)

(assert (=> b!114497 (= e!74512 (valid!442 (v!2988 (underlying!387 thiss!992))))))

(declare-fun b!114498 () Bool)

(declare-fun e!74526 () Bool)

(declare-fun e!74510 () Bool)

(assert (=> b!114498 (= e!74526 e!74510)))

(declare-fun res!56339 () Bool)

(assert (=> b!114498 (=> (not res!56339) (not e!74510))))

(assert (=> b!114498 (= res!56339 (and (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1385 (ValueCell!1023 V!3291) V!3291)

(declare-fun dynLambda!401 (Int (_ BitVec 64)) V!3291)

(assert (=> b!114498 (= lt!59627 (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) from!355) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!114499 () Bool)

(assert (=> b!114499 (= e!74510 e!74521)))

(declare-fun res!56341 () Bool)

(assert (=> b!114499 (=> (not res!56341) (not e!74521))))

(assert (=> b!114499 (= res!56341 (and (_1!1244 lt!59621) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!59636 () Unit!3585)

(declare-fun e!74523 () Unit!3585)

(assert (=> b!114499 (= lt!59636 e!74523)))

(declare-fun lt!59622 () ListLongMap!1619)

(declare-fun c!20464 () Bool)

(declare-fun contains!851 (ListLongMap!1619 (_ BitVec 64)) Bool)

(assert (=> b!114499 (= c!20464 (contains!851 lt!59622 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!954)

(declare-fun update!170 (LongMapFixedSize!954 (_ BitVec 64) V!3291) tuple2!2468)

(assert (=> b!114499 (= lt!59621 (update!170 newMap!16 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627))))

(declare-fun b!114500 () Bool)

(declare-fun e!74519 () Bool)

(assert (=> b!114500 (= e!74519 tp_is_empty!2733)))

(declare-fun b!114501 () Bool)

(declare-fun e!74513 () Bool)

(declare-fun e!74511 () Bool)

(declare-fun mapRes!4128 () Bool)

(assert (=> b!114501 (= e!74513 (and e!74511 mapRes!4128))))

(declare-fun condMapEmpty!4128 () Bool)

(declare-fun mapDefault!4128 () ValueCell!1023)

(assert (=> b!114501 (= condMapEmpty!4128 (= (arr!2117 (_values!2666 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1023)) mapDefault!4128)))))

(declare-fun b!114502 () Bool)

(declare-fun Unit!3587 () Unit!3585)

(assert (=> b!114502 (= e!74523 Unit!3587)))

(declare-fun mapIsEmpty!4127 () Bool)

(assert (=> mapIsEmpty!4127 mapRes!4128))

(declare-fun mapNonEmpty!4127 () Bool)

(declare-fun tp!10259 () Bool)

(declare-fun e!74509 () Bool)

(assert (=> mapNonEmpty!4127 (= mapRes!4127 (and tp!10259 e!74509))))

(declare-fun mapRest!4128 () (Array (_ BitVec 32) ValueCell!1023))

(declare-fun mapKey!4127 () (_ BitVec 32))

(declare-fun mapValue!4127 () ValueCell!1023)

(assert (=> mapNonEmpty!4127 (= (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (store mapRest!4128 mapKey!4127 mapValue!4127))))

(declare-fun res!56340 () Bool)

(assert (=> start!13090 (=> (not res!56340) (not e!74516))))

(declare-fun valid!443 (LongMap!752) Bool)

(assert (=> start!13090 (= res!56340 (valid!443 thiss!992))))

(assert (=> start!13090 e!74516))

(assert (=> start!13090 e!74522))

(assert (=> start!13090 true))

(declare-fun e!74524 () Bool)

(assert (=> start!13090 e!74524))

(declare-fun e!74518 () Bool)

(declare-fun array_inv!1277 (array!4466) Bool)

(declare-fun array_inv!1278 (array!4468) Bool)

(assert (=> b!114503 (= e!74518 (and tp!10258 tp_is_empty!2733 (array_inv!1277 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (array_inv!1278 (_values!2666 (v!2988 (underlying!387 thiss!992)))) e!74525))))

(declare-fun mapIsEmpty!4128 () Bool)

(assert (=> mapIsEmpty!4128 mapRes!4127))

(declare-fun b!114504 () Bool)

(declare-fun res!56337 () Bool)

(assert (=> b!114504 (=> (not res!56337) (not e!74516))))

(assert (=> b!114504 (= res!56337 (valid!442 newMap!16))))

(declare-fun b!114505 () Bool)

(assert (=> b!114505 (= e!74514 e!74518)))

(declare-fun b!114506 () Bool)

(assert (=> b!114506 (= e!74509 tp_is_empty!2733)))

(assert (=> b!114507 (= e!74524 (and tp!10260 tp_is_empty!2733 (array_inv!1277 (_keys!4405 newMap!16)) (array_inv!1278 (_values!2666 newMap!16)) e!74513))))

(declare-fun b!114508 () Bool)

(declare-fun Unit!3588 () Unit!3585)

(assert (=> b!114508 (= e!74523 Unit!3588)))

(declare-fun lt!59623 () Unit!3585)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!126 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 64) (_ BitVec 32) Int) Unit!3585)

(assert (=> b!114508 (= lt!59623 (lemmaListMapContainsThenArrayContainsFrom!126 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114508 (arrayContainsKey!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59634 () Unit!3585)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4466 (_ BitVec 32) (_ BitVec 32)) Unit!3585)

(assert (=> b!114508 (= lt!59634 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1675 0))(
  ( (Nil!1672) (Cons!1671 (h!2271 (_ BitVec 64)) (t!5913 List!1675)) )
))
(declare-fun arrayNoDuplicates!0 (array!4466 (_ BitVec 32) List!1675) Bool)

(assert (=> b!114508 (arrayNoDuplicates!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) from!355 Nil!1672)))

(declare-fun lt!59619 () Unit!3585)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4466 (_ BitVec 32) (_ BitVec 64) List!1675) Unit!3585)

(assert (=> b!114508 (= lt!59619 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (Cons!1671 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) Nil!1672)))))

(assert (=> b!114508 false))

(declare-fun b!114509 () Bool)

(declare-fun res!56334 () Bool)

(assert (=> b!114509 (=> (not res!56334) (not e!74516))))

(assert (=> b!114509 (= res!56334 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6879 newMap!16)) (_size!526 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun mapNonEmpty!4128 () Bool)

(declare-fun tp!10257 () Bool)

(assert (=> mapNonEmpty!4128 (= mapRes!4128 (and tp!10257 e!74519))))

(declare-fun mapRest!4127 () (Array (_ BitVec 32) ValueCell!1023))

(declare-fun mapValue!4128 () ValueCell!1023)

(declare-fun mapKey!4128 () (_ BitVec 32))

(assert (=> mapNonEmpty!4128 (= (arr!2117 (_values!2666 newMap!16)) (store mapRest!4127 mapKey!4128 mapValue!4128))))

(declare-fun b!114510 () Bool)

(assert (=> b!114510 (= e!74511 tp_is_empty!2733)))

(declare-fun b!114511 () Bool)

(assert (=> b!114511 (= e!74516 e!74526)))

(declare-fun res!56338 () Bool)

(assert (=> b!114511 (=> (not res!56338) (not e!74526))))

(declare-fun lt!59632 () ListLongMap!1619)

(assert (=> b!114511 (= res!56338 (= lt!59632 lt!59622))))

(declare-fun map!1318 (LongMapFixedSize!954) ListLongMap!1619)

(assert (=> b!114511 (= lt!59622 (map!1318 newMap!16))))

(declare-fun getCurrentListMap!501 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 32) Int) ListLongMap!1619)

(assert (=> b!114511 (= lt!59632 (getCurrentListMap!501 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(assert (= (and start!13090 res!56340) b!114492))

(assert (= (and b!114492 res!56336) b!114504))

(assert (= (and b!114504 res!56337) b!114509))

(assert (= (and b!114509 res!56334) b!114511))

(assert (= (and b!114511 res!56338) b!114498))

(assert (= (and b!114498 res!56339) b!114499))

(assert (= (and b!114499 c!20464) b!114508))

(assert (= (and b!114499 (not c!20464)) b!114502))

(assert (= (and b!114499 res!56341) b!114493))

(assert (= (and b!114493 (not res!56335)) b!114497))

(assert (= (and b!114495 condMapEmpty!4127) mapIsEmpty!4128))

(assert (= (and b!114495 (not condMapEmpty!4127)) mapNonEmpty!4127))

(get-info :version)

(assert (= (and mapNonEmpty!4127 ((_ is ValueCellFull!1023) mapValue!4127)) b!114506))

(assert (= (and b!114495 ((_ is ValueCellFull!1023) mapDefault!4127)) b!114496))

(assert (= b!114503 b!114495))

(assert (= b!114505 b!114503))

(assert (= b!114494 b!114505))

(assert (= start!13090 b!114494))

(assert (= (and b!114501 condMapEmpty!4128) mapIsEmpty!4127))

(assert (= (and b!114501 (not condMapEmpty!4128)) mapNonEmpty!4128))

(assert (= (and mapNonEmpty!4128 ((_ is ValueCellFull!1023) mapValue!4128)) b!114500))

(assert (= (and b!114501 ((_ is ValueCellFull!1023) mapDefault!4128)) b!114510))

(assert (= b!114507 b!114501))

(assert (= start!13090 b!114507))

(declare-fun b_lambda!5143 () Bool)

(assert (=> (not b_lambda!5143) (not b!114498)))

(declare-fun t!5909 () Bool)

(declare-fun tb!2201 () Bool)

(assert (=> (and b!114503 (= (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))) t!5909) tb!2201))

(declare-fun result!3665 () Bool)

(assert (=> tb!2201 (= result!3665 tp_is_empty!2733)))

(assert (=> b!114498 t!5909))

(declare-fun b_and!7085 () Bool)

(assert (= b_and!7081 (and (=> t!5909 result!3665) b_and!7085)))

(declare-fun tb!2203 () Bool)

(declare-fun t!5911 () Bool)

(assert (=> (and b!114507 (= (defaultEntry!2683 newMap!16) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))) t!5911) tb!2203))

(declare-fun result!3669 () Bool)

(assert (= result!3669 result!3665))

(assert (=> b!114498 t!5911))

(declare-fun b_and!7087 () Bool)

(assert (= b_and!7083 (and (=> t!5911 result!3669) b_and!7087)))

(declare-fun m!130981 () Bool)

(assert (=> mapNonEmpty!4128 m!130981))

(declare-fun m!130983 () Bool)

(assert (=> b!114507 m!130983))

(declare-fun m!130985 () Bool)

(assert (=> b!114507 m!130985))

(declare-fun m!130987 () Bool)

(assert (=> b!114497 m!130987))

(declare-fun m!130989 () Bool)

(assert (=> b!114504 m!130989))

(declare-fun m!130991 () Bool)

(assert (=> b!114498 m!130991))

(declare-fun m!130993 () Bool)

(assert (=> b!114498 m!130993))

(declare-fun m!130995 () Bool)

(assert (=> b!114498 m!130995))

(assert (=> b!114498 m!130993))

(assert (=> b!114498 m!130995))

(declare-fun m!130997 () Bool)

(assert (=> b!114498 m!130997))

(declare-fun m!130999 () Bool)

(assert (=> b!114511 m!130999))

(declare-fun m!131001 () Bool)

(assert (=> b!114511 m!131001))

(declare-fun m!131003 () Bool)

(assert (=> b!114503 m!131003))

(declare-fun m!131005 () Bool)

(assert (=> b!114503 m!131005))

(assert (=> b!114499 m!130991))

(assert (=> b!114499 m!130991))

(declare-fun m!131007 () Bool)

(assert (=> b!114499 m!131007))

(assert (=> b!114499 m!130991))

(declare-fun m!131009 () Bool)

(assert (=> b!114499 m!131009))

(declare-fun m!131011 () Bool)

(assert (=> b!114508 m!131011))

(declare-fun m!131013 () Bool)

(assert (=> b!114508 m!131013))

(assert (=> b!114508 m!130991))

(declare-fun m!131015 () Bool)

(assert (=> b!114508 m!131015))

(assert (=> b!114508 m!130991))

(assert (=> b!114508 m!130991))

(declare-fun m!131017 () Bool)

(assert (=> b!114508 m!131017))

(assert (=> b!114508 m!130991))

(declare-fun m!131019 () Bool)

(assert (=> b!114508 m!131019))

(declare-fun m!131021 () Bool)

(assert (=> start!13090 m!131021))

(declare-fun m!131023 () Bool)

(assert (=> b!114493 m!131023))

(declare-fun m!131025 () Bool)

(assert (=> b!114493 m!131025))

(declare-fun m!131027 () Bool)

(assert (=> b!114493 m!131027))

(assert (=> b!114493 m!130991))

(assert (=> b!114493 m!130991))

(declare-fun m!131029 () Bool)

(assert (=> b!114493 m!131029))

(declare-fun m!131031 () Bool)

(assert (=> b!114493 m!131031))

(assert (=> b!114493 m!131027))

(declare-fun m!131033 () Bool)

(assert (=> b!114493 m!131033))

(declare-fun m!131035 () Bool)

(assert (=> b!114493 m!131035))

(declare-fun m!131037 () Bool)

(assert (=> b!114493 m!131037))

(declare-fun m!131039 () Bool)

(assert (=> b!114493 m!131039))

(declare-fun m!131041 () Bool)

(assert (=> b!114493 m!131041))

(assert (=> b!114493 m!130991))

(declare-fun m!131043 () Bool)

(assert (=> b!114493 m!131043))

(declare-fun m!131045 () Bool)

(assert (=> mapNonEmpty!4127 m!131045))

(check-sat (not b!114508) (not b!114493) tp_is_empty!2733 (not b_next!2635) (not b!114498) b_and!7085 (not start!13090) (not b!114511) (not b!114503) b_and!7087 (not b_next!2633) (not b!114507) (not mapNonEmpty!4128) (not mapNonEmpty!4127) (not b!114504) (not b!114497) (not b!114499) (not b_lambda!5143))
(check-sat b_and!7085 b_and!7087 (not b_next!2633) (not b_next!2635))
(get-model)

(declare-fun b_lambda!5147 () Bool)

(assert (= b_lambda!5143 (or (and b!114503 b_free!2633) (and b!114507 b_free!2635 (= (defaultEntry!2683 newMap!16) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))))) b_lambda!5147)))

(check-sat (not b!114508) (not b!114493) tp_is_empty!2733 (not b_next!2635) (not b!114498) b_and!7085 (not start!13090) (not b!114511) (not b!114503) b_and!7087 (not b_next!2633) (not b!114507) (not mapNonEmpty!4128) (not mapNonEmpty!4127) (not b!114504) (not b!114497) (not b_lambda!5147) (not b!114499))
(check-sat b_and!7085 b_and!7087 (not b_next!2633) (not b_next!2635))
(get-model)

(declare-fun d!32427 () Bool)

(assert (=> d!32427 (= (array_inv!1277 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvsge (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!114503 d!32427))

(declare-fun d!32429 () Bool)

(assert (=> d!32429 (= (array_inv!1278 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (bvsge (size!2377 (_values!2666 (v!2988 (underlying!387 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!114503 d!32429))

(declare-fun d!32431 () Bool)

(assert (=> d!32431 (not (arrayContainsKey!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!59693 () Unit!3585)

(declare-fun choose!68 (array!4466 (_ BitVec 32) (_ BitVec 64) List!1675) Unit!3585)

(assert (=> d!32431 (= lt!59693 (choose!68 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (Cons!1671 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) Nil!1672)))))

(assert (=> d!32431 (bvslt (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!32431 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (Cons!1671 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) Nil!1672)) lt!59693)))

(declare-fun bs!4681 () Bool)

(assert (= bs!4681 d!32431))

(assert (=> bs!4681 m!130991))

(assert (=> bs!4681 m!131017))

(assert (=> bs!4681 m!130991))

(declare-fun m!131113 () Bool)

(assert (=> bs!4681 m!131113))

(assert (=> b!114508 d!32431))

(declare-fun d!32433 () Bool)

(assert (=> d!32433 (arrayNoDuplicates!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) from!355 Nil!1672)))

(declare-fun lt!59696 () Unit!3585)

(declare-fun choose!39 (array!4466 (_ BitVec 32) (_ BitVec 32)) Unit!3585)

(assert (=> d!32433 (= lt!59696 (choose!39 (_keys!4405 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!32433 (bvslt (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!32433 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000000 from!355) lt!59696)))

(declare-fun bs!4682 () Bool)

(assert (= bs!4682 d!32433))

(assert (=> bs!4682 m!131013))

(declare-fun m!131115 () Bool)

(assert (=> bs!4682 m!131115))

(assert (=> b!114508 d!32433))

(declare-fun d!32435 () Bool)

(declare-fun res!56370 () Bool)

(declare-fun e!74585 () Bool)

(assert (=> d!32435 (=> res!56370 e!74585)))

(assert (=> d!32435 (= res!56370 (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(assert (=> d!32435 (= (arrayContainsKey!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!74585)))

(declare-fun b!114580 () Bool)

(declare-fun e!74586 () Bool)

(assert (=> b!114580 (= e!74585 e!74586)))

(declare-fun res!56371 () Bool)

(assert (=> b!114580 (=> (not res!56371) (not e!74586))))

(assert (=> b!114580 (= res!56371 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114581 () Bool)

(assert (=> b!114581 (= e!74586 (arrayContainsKey!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!32435 (not res!56370)) b!114580))

(assert (= (and b!114580 res!56371) b!114581))

(declare-fun m!131117 () Bool)

(assert (=> d!32435 m!131117))

(assert (=> b!114581 m!130991))

(declare-fun m!131119 () Bool)

(assert (=> b!114581 m!131119))

(assert (=> b!114508 d!32435))

(declare-fun d!32437 () Bool)

(declare-fun e!74589 () Bool)

(assert (=> d!32437 e!74589))

(declare-fun c!20470 () Bool)

(assert (=> d!32437 (= c!20470 (and (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!59699 () Unit!3585)

(declare-fun choose!731 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 64) (_ BitVec 32) Int) Unit!3585)

(assert (=> d!32437 (= lt!59699 (choose!731 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!32437 (validMask!0 (mask!6879 (v!2988 (underlying!387 thiss!992))))))

(assert (=> d!32437 (= (lemmaListMapContainsThenArrayContainsFrom!126 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))) lt!59699)))

(declare-fun b!114586 () Bool)

(assert (=> b!114586 (= e!74589 (arrayContainsKey!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!114587 () Bool)

(assert (=> b!114587 (= e!74589 (ite (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!32437 c!20470) b!114586))

(assert (= (and d!32437 (not c!20470)) b!114587))

(assert (=> d!32437 m!130991))

(declare-fun m!131121 () Bool)

(assert (=> d!32437 m!131121))

(declare-fun m!131123 () Bool)

(assert (=> d!32437 m!131123))

(assert (=> b!114586 m!130991))

(assert (=> b!114586 m!131017))

(assert (=> b!114508 d!32437))

(declare-fun b!114598 () Bool)

(declare-fun e!74599 () Bool)

(declare-fun call!12297 () Bool)

(assert (=> b!114598 (= e!74599 call!12297)))

(declare-fun d!32439 () Bool)

(declare-fun res!56380 () Bool)

(declare-fun e!74600 () Bool)

(assert (=> d!32439 (=> res!56380 e!74600)))

(assert (=> d!32439 (= res!56380 (bvsge from!355 (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(assert (=> d!32439 (= (arrayNoDuplicates!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) from!355 Nil!1672) e!74600)))

(declare-fun b!114599 () Bool)

(declare-fun e!74601 () Bool)

(assert (=> b!114599 (= e!74600 e!74601)))

(declare-fun res!56378 () Bool)

(assert (=> b!114599 (=> (not res!56378) (not e!74601))))

(declare-fun e!74598 () Bool)

(assert (=> b!114599 (= res!56378 (not e!74598))))

(declare-fun res!56379 () Bool)

(assert (=> b!114599 (=> (not res!56379) (not e!74598))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!114599 (= res!56379 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun b!114600 () Bool)

(declare-fun contains!852 (List!1675 (_ BitVec 64)) Bool)

(assert (=> b!114600 (= e!74598 (contains!852 Nil!1672 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun bm!12294 () Bool)

(declare-fun c!20473 () Bool)

(assert (=> bm!12294 (= call!12297 (arrayNoDuplicates!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!20473 (Cons!1671 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) Nil!1672) Nil!1672)))))

(declare-fun b!114601 () Bool)

(assert (=> b!114601 (= e!74601 e!74599)))

(assert (=> b!114601 (= c!20473 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun b!114602 () Bool)

(assert (=> b!114602 (= e!74599 call!12297)))

(assert (= (and d!32439 (not res!56380)) b!114599))

(assert (= (and b!114599 res!56379) b!114600))

(assert (= (and b!114599 res!56378) b!114601))

(assert (= (and b!114601 c!20473) b!114598))

(assert (= (and b!114601 (not c!20473)) b!114602))

(assert (= (or b!114598 b!114602) bm!12294))

(assert (=> b!114599 m!130991))

(assert (=> b!114599 m!130991))

(declare-fun m!131125 () Bool)

(assert (=> b!114599 m!131125))

(assert (=> b!114600 m!130991))

(assert (=> b!114600 m!130991))

(declare-fun m!131127 () Bool)

(assert (=> b!114600 m!131127))

(assert (=> bm!12294 m!130991))

(declare-fun m!131129 () Bool)

(assert (=> bm!12294 m!131129))

(assert (=> b!114601 m!130991))

(assert (=> b!114601 m!130991))

(assert (=> b!114601 m!131125))

(assert (=> b!114508 d!32439))

(declare-fun d!32441 () Bool)

(declare-fun e!74604 () Bool)

(assert (=> d!32441 e!74604))

(declare-fun res!56386 () Bool)

(assert (=> d!32441 (=> (not res!56386) (not e!74604))))

(declare-fun lt!59710 () ListLongMap!1619)

(assert (=> d!32441 (= res!56386 (contains!851 lt!59710 (_1!1245 lt!59625)))))

(declare-fun lt!59708 () List!1674)

(assert (=> d!32441 (= lt!59710 (ListLongMap!1620 lt!59708))))

(declare-fun lt!59711 () Unit!3585)

(declare-fun lt!59709 () Unit!3585)

(assert (=> d!32441 (= lt!59711 lt!59709)))

(declare-datatypes ((Option!166 0))(
  ( (Some!165 (v!2992 V!3291)) (None!164) )
))
(declare-fun getValueByKey!160 (List!1674 (_ BitVec 64)) Option!166)

(assert (=> d!32441 (= (getValueByKey!160 lt!59708 (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625)))))

(declare-fun lemmaContainsTupThenGetReturnValue!78 (List!1674 (_ BitVec 64) V!3291) Unit!3585)

(assert (=> d!32441 (= lt!59709 (lemmaContainsTupThenGetReturnValue!78 lt!59708 (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(declare-fun insertStrictlySorted!80 (List!1674 (_ BitVec 64) V!3291) List!1674)

(assert (=> d!32441 (= lt!59708 (insertStrictlySorted!80 (toList!825 lt!59630) (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(assert (=> d!32441 (= (+!157 lt!59630 lt!59625) lt!59710)))

(declare-fun b!114607 () Bool)

(declare-fun res!56385 () Bool)

(assert (=> b!114607 (=> (not res!56385) (not e!74604))))

(assert (=> b!114607 (= res!56385 (= (getValueByKey!160 (toList!825 lt!59710) (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625))))))

(declare-fun b!114608 () Bool)

(declare-fun contains!853 (List!1674 tuple2!2470) Bool)

(assert (=> b!114608 (= e!74604 (contains!853 (toList!825 lt!59710) lt!59625))))

(assert (= (and d!32441 res!56386) b!114607))

(assert (= (and b!114607 res!56385) b!114608))

(declare-fun m!131131 () Bool)

(assert (=> d!32441 m!131131))

(declare-fun m!131133 () Bool)

(assert (=> d!32441 m!131133))

(declare-fun m!131135 () Bool)

(assert (=> d!32441 m!131135))

(declare-fun m!131137 () Bool)

(assert (=> d!32441 m!131137))

(declare-fun m!131139 () Bool)

(assert (=> b!114607 m!131139))

(declare-fun m!131141 () Bool)

(assert (=> b!114608 m!131141))

(assert (=> b!114493 d!32441))

(declare-fun b!114633 () Bool)

(declare-fun e!74624 () Bool)

(assert (=> b!114633 (= e!74624 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!114633 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun bm!12297 () Bool)

(declare-fun call!12300 () ListLongMap!1619)

(assert (=> bm!12297 (= call!12300 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114634 () Bool)

(declare-fun e!74622 () Bool)

(declare-fun lt!59726 () ListLongMap!1619)

(declare-fun isEmpty!390 (ListLongMap!1619) Bool)

(assert (=> b!114634 (= e!74622 (isEmpty!390 lt!59726))))

(declare-fun b!114635 () Bool)

(declare-fun e!74619 () Bool)

(declare-fun e!74623 () Bool)

(assert (=> b!114635 (= e!74619 e!74623)))

(declare-fun c!20484 () Bool)

(assert (=> b!114635 (= c!20484 e!74624)))

(declare-fun res!56396 () Bool)

(assert (=> b!114635 (=> (not res!56396) (not e!74624))))

(assert (=> b!114635 (= res!56396 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114636 () Bool)

(declare-fun e!74625 () ListLongMap!1619)

(assert (=> b!114636 (= e!74625 (ListLongMap!1620 Nil!1671))))

(declare-fun b!114637 () Bool)

(declare-fun e!74621 () Bool)

(assert (=> b!114637 (= e!74623 e!74621)))

(assert (=> b!114637 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun res!56398 () Bool)

(assert (=> b!114637 (= res!56398 (contains!851 lt!59726 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!114637 (=> (not res!56398) (not e!74621))))

(declare-fun d!32443 () Bool)

(assert (=> d!32443 e!74619))

(declare-fun res!56395 () Bool)

(assert (=> d!32443 (=> (not res!56395) (not e!74619))))

(assert (=> d!32443 (= res!56395 (not (contains!851 lt!59726 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!32443 (= lt!59726 e!74625)))

(declare-fun c!20485 () Bool)

(assert (=> d!32443 (= c!20485 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(assert (=> d!32443 (validMask!0 (mask!6879 (v!2988 (underlying!387 thiss!992))))))

(assert (=> d!32443 (= (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))) lt!59726)))

(declare-fun b!114638 () Bool)

(declare-fun e!74620 () ListLongMap!1619)

(assert (=> b!114638 (= e!74625 e!74620)))

(declare-fun c!20483 () Bool)

(assert (=> b!114638 (= c!20483 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!114639 () Bool)

(assert (=> b!114639 (= e!74622 (= lt!59726 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114640 () Bool)

(assert (=> b!114640 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(assert (=> b!114640 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2377 (_values!2666 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun apply!103 (ListLongMap!1619 (_ BitVec 64)) V!3291)

(assert (=> b!114640 (= e!74621 (= (apply!103 lt!59726 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!114641 () Bool)

(declare-fun res!56397 () Bool)

(assert (=> b!114641 (=> (not res!56397) (not e!74619))))

(assert (=> b!114641 (= res!56397 (not (contains!851 lt!59726 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!114642 () Bool)

(declare-fun lt!59732 () Unit!3585)

(declare-fun lt!59729 () Unit!3585)

(assert (=> b!114642 (= lt!59732 lt!59729)))

(declare-fun lt!59730 () ListLongMap!1619)

(declare-fun lt!59727 () (_ BitVec 64))

(declare-fun lt!59728 () (_ BitVec 64))

(declare-fun lt!59731 () V!3291)

(assert (=> b!114642 (not (contains!851 (+!157 lt!59730 (tuple2!2471 lt!59728 lt!59731)) lt!59727))))

(declare-fun addStillNotContains!53 (ListLongMap!1619 (_ BitVec 64) V!3291 (_ BitVec 64)) Unit!3585)

(assert (=> b!114642 (= lt!59729 (addStillNotContains!53 lt!59730 lt!59728 lt!59731 lt!59727))))

(assert (=> b!114642 (= lt!59727 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!114642 (= lt!59731 (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!114642 (= lt!59728 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!114642 (= lt!59730 call!12300)))

(assert (=> b!114642 (= e!74620 (+!157 call!12300 (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!114643 () Bool)

(assert (=> b!114643 (= e!74623 e!74622)))

(declare-fun c!20482 () Bool)

(assert (=> b!114643 (= c!20482 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114644 () Bool)

(assert (=> b!114644 (= e!74620 call!12300)))

(assert (= (and d!32443 c!20485) b!114636))

(assert (= (and d!32443 (not c!20485)) b!114638))

(assert (= (and b!114638 c!20483) b!114642))

(assert (= (and b!114638 (not c!20483)) b!114644))

(assert (= (or b!114642 b!114644) bm!12297))

(assert (= (and d!32443 res!56395) b!114641))

(assert (= (and b!114641 res!56397) b!114635))

(assert (= (and b!114635 res!56396) b!114633))

(assert (= (and b!114635 c!20484) b!114637))

(assert (= (and b!114635 (not c!20484)) b!114643))

(assert (= (and b!114637 res!56398) b!114640))

(assert (= (and b!114643 c!20482) b!114639))

(assert (= (and b!114643 (not c!20482)) b!114634))

(declare-fun b_lambda!5149 () Bool)

(assert (=> (not b_lambda!5149) (not b!114640)))

(assert (=> b!114640 t!5909))

(declare-fun b_and!7097 () Bool)

(assert (= b_and!7085 (and (=> t!5909 result!3665) b_and!7097)))

(assert (=> b!114640 t!5911))

(declare-fun b_and!7099 () Bool)

(assert (= b_and!7087 (and (=> t!5911 result!3669) b_and!7099)))

(declare-fun b_lambda!5151 () Bool)

(assert (=> (not b_lambda!5151) (not b!114642)))

(assert (=> b!114642 t!5909))

(declare-fun b_and!7101 () Bool)

(assert (= b_and!7097 (and (=> t!5909 result!3665) b_and!7101)))

(assert (=> b!114642 t!5911))

(declare-fun b_and!7103 () Bool)

(assert (= b_and!7099 (and (=> t!5911 result!3669) b_and!7103)))

(assert (=> b!114633 m!131117))

(assert (=> b!114633 m!131117))

(declare-fun m!131143 () Bool)

(assert (=> b!114633 m!131143))

(declare-fun m!131145 () Bool)

(assert (=> bm!12297 m!131145))

(declare-fun m!131147 () Bool)

(assert (=> d!32443 m!131147))

(assert (=> d!32443 m!131123))

(assert (=> b!114638 m!131117))

(assert (=> b!114638 m!131117))

(assert (=> b!114638 m!131143))

(assert (=> b!114637 m!131117))

(assert (=> b!114637 m!131117))

(declare-fun m!131149 () Bool)

(assert (=> b!114637 m!131149))

(declare-fun m!131151 () Bool)

(assert (=> b!114634 m!131151))

(assert (=> b!114639 m!131145))

(declare-fun m!131153 () Bool)

(assert (=> b!114640 m!131153))

(assert (=> b!114640 m!130995))

(declare-fun m!131155 () Bool)

(assert (=> b!114640 m!131155))

(assert (=> b!114640 m!131117))

(declare-fun m!131157 () Bool)

(assert (=> b!114640 m!131157))

(assert (=> b!114640 m!130995))

(assert (=> b!114640 m!131153))

(assert (=> b!114640 m!131117))

(declare-fun m!131159 () Bool)

(assert (=> b!114641 m!131159))

(declare-fun m!131161 () Bool)

(assert (=> b!114642 m!131161))

(declare-fun m!131163 () Bool)

(assert (=> b!114642 m!131163))

(declare-fun m!131165 () Bool)

(assert (=> b!114642 m!131165))

(assert (=> b!114642 m!131153))

(assert (=> b!114642 m!130995))

(assert (=> b!114642 m!131155))

(declare-fun m!131167 () Bool)

(assert (=> b!114642 m!131167))

(assert (=> b!114642 m!130995))

(assert (=> b!114642 m!131153))

(assert (=> b!114642 m!131161))

(assert (=> b!114642 m!131117))

(assert (=> b!114493 d!32443))

(declare-fun d!32445 () Bool)

(declare-fun e!74626 () Bool)

(assert (=> d!32445 e!74626))

(declare-fun res!56400 () Bool)

(assert (=> d!32445 (=> (not res!56400) (not e!74626))))

(declare-fun lt!59735 () ListLongMap!1619)

(assert (=> d!32445 (= res!56400 (contains!851 lt!59735 (_1!1245 lt!59628)))))

(declare-fun lt!59733 () List!1674)

(assert (=> d!32445 (= lt!59735 (ListLongMap!1620 lt!59733))))

(declare-fun lt!59736 () Unit!3585)

(declare-fun lt!59734 () Unit!3585)

(assert (=> d!32445 (= lt!59736 lt!59734)))

(assert (=> d!32445 (= (getValueByKey!160 lt!59733 (_1!1245 lt!59628)) (Some!165 (_2!1245 lt!59628)))))

(assert (=> d!32445 (= lt!59734 (lemmaContainsTupThenGetReturnValue!78 lt!59733 (_1!1245 lt!59628) (_2!1245 lt!59628)))))

(assert (=> d!32445 (= lt!59733 (insertStrictlySorted!80 (toList!825 lt!59630) (_1!1245 lt!59628) (_2!1245 lt!59628)))))

(assert (=> d!32445 (= (+!157 lt!59630 lt!59628) lt!59735)))

(declare-fun b!114645 () Bool)

(declare-fun res!56399 () Bool)

(assert (=> b!114645 (=> (not res!56399) (not e!74626))))

(assert (=> b!114645 (= res!56399 (= (getValueByKey!160 (toList!825 lt!59735) (_1!1245 lt!59628)) (Some!165 (_2!1245 lt!59628))))))

(declare-fun b!114646 () Bool)

(assert (=> b!114646 (= e!74626 (contains!853 (toList!825 lt!59735) lt!59628))))

(assert (= (and d!32445 res!56400) b!114645))

(assert (= (and b!114645 res!56399) b!114646))

(declare-fun m!131169 () Bool)

(assert (=> d!32445 m!131169))

(declare-fun m!131171 () Bool)

(assert (=> d!32445 m!131171))

(declare-fun m!131173 () Bool)

(assert (=> d!32445 m!131173))

(declare-fun m!131175 () Bool)

(assert (=> d!32445 m!131175))

(declare-fun m!131177 () Bool)

(assert (=> b!114645 m!131177))

(declare-fun m!131179 () Bool)

(assert (=> b!114646 m!131179))

(assert (=> b!114493 d!32445))

(declare-fun d!32447 () Bool)

(declare-fun e!74627 () Bool)

(assert (=> d!32447 e!74627))

(declare-fun res!56402 () Bool)

(assert (=> d!32447 (=> (not res!56402) (not e!74627))))

(declare-fun lt!59739 () ListLongMap!1619)

(assert (=> d!32447 (= res!56402 (contains!851 lt!59739 (_1!1245 lt!59625)))))

(declare-fun lt!59737 () List!1674)

(assert (=> d!32447 (= lt!59739 (ListLongMap!1620 lt!59737))))

(declare-fun lt!59740 () Unit!3585)

(declare-fun lt!59738 () Unit!3585)

(assert (=> d!32447 (= lt!59740 lt!59738)))

(assert (=> d!32447 (= (getValueByKey!160 lt!59737 (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625)))))

(assert (=> d!32447 (= lt!59738 (lemmaContainsTupThenGetReturnValue!78 lt!59737 (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(assert (=> d!32447 (= lt!59737 (insertStrictlySorted!80 (toList!825 (+!157 lt!59635 lt!59626)) (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(assert (=> d!32447 (= (+!157 (+!157 lt!59635 lt!59626) lt!59625) lt!59739)))

(declare-fun b!114647 () Bool)

(declare-fun res!56401 () Bool)

(assert (=> b!114647 (=> (not res!56401) (not e!74627))))

(assert (=> b!114647 (= res!56401 (= (getValueByKey!160 (toList!825 lt!59739) (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625))))))

(declare-fun b!114648 () Bool)

(assert (=> b!114648 (= e!74627 (contains!853 (toList!825 lt!59739) lt!59625))))

(assert (= (and d!32447 res!56402) b!114647))

(assert (= (and b!114647 res!56401) b!114648))

(declare-fun m!131181 () Bool)

(assert (=> d!32447 m!131181))

(declare-fun m!131183 () Bool)

(assert (=> d!32447 m!131183))

(declare-fun m!131185 () Bool)

(assert (=> d!32447 m!131185))

(declare-fun m!131187 () Bool)

(assert (=> d!32447 m!131187))

(declare-fun m!131189 () Bool)

(assert (=> b!114647 m!131189))

(declare-fun m!131191 () Bool)

(assert (=> b!114648 m!131191))

(assert (=> b!114493 d!32447))

(declare-fun d!32449 () Bool)

(assert (=> d!32449 (= (+!157 (+!157 lt!59635 (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627)) (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992))))) (+!157 (+!157 lt!59635 (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992))))) (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627)))))

(declare-fun lt!59743 () Unit!3585)

(declare-fun choose!732 (ListLongMap!1619 (_ BitVec 64) V!3291 (_ BitVec 64) V!3291) Unit!3585)

(assert (=> d!32449 (= lt!59743 (choose!732 lt!59635 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(assert (=> d!32449 (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32449 (= (addCommutativeForDiffKeys!69 lt!59635 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992)))) lt!59743)))

(declare-fun bs!4683 () Bool)

(assert (= bs!4683 d!32449))

(assert (=> bs!4683 m!130991))

(declare-fun m!131193 () Bool)

(assert (=> bs!4683 m!131193))

(declare-fun m!131195 () Bool)

(assert (=> bs!4683 m!131195))

(declare-fun m!131197 () Bool)

(assert (=> bs!4683 m!131197))

(declare-fun m!131199 () Bool)

(assert (=> bs!4683 m!131199))

(declare-fun m!131201 () Bool)

(assert (=> bs!4683 m!131201))

(assert (=> bs!4683 m!131199))

(assert (=> bs!4683 m!131195))

(assert (=> b!114493 d!32449))

(declare-fun d!32451 () Bool)

(declare-fun e!74628 () Bool)

(assert (=> d!32451 e!74628))

(declare-fun res!56404 () Bool)

(assert (=> d!32451 (=> (not res!56404) (not e!74628))))

(declare-fun lt!59746 () ListLongMap!1619)

(assert (=> d!32451 (= res!56404 (contains!851 lt!59746 (_1!1245 lt!59628)))))

(declare-fun lt!59744 () List!1674)

(assert (=> d!32451 (= lt!59746 (ListLongMap!1620 lt!59744))))

(declare-fun lt!59747 () Unit!3585)

(declare-fun lt!59745 () Unit!3585)

(assert (=> d!32451 (= lt!59747 lt!59745)))

(assert (=> d!32451 (= (getValueByKey!160 lt!59744 (_1!1245 lt!59628)) (Some!165 (_2!1245 lt!59628)))))

(assert (=> d!32451 (= lt!59745 (lemmaContainsTupThenGetReturnValue!78 lt!59744 (_1!1245 lt!59628) (_2!1245 lt!59628)))))

(assert (=> d!32451 (= lt!59744 (insertStrictlySorted!80 (toList!825 lt!59633) (_1!1245 lt!59628) (_2!1245 lt!59628)))))

(assert (=> d!32451 (= (+!157 lt!59633 lt!59628) lt!59746)))

(declare-fun b!114649 () Bool)

(declare-fun res!56403 () Bool)

(assert (=> b!114649 (=> (not res!56403) (not e!74628))))

(assert (=> b!114649 (= res!56403 (= (getValueByKey!160 (toList!825 lt!59746) (_1!1245 lt!59628)) (Some!165 (_2!1245 lt!59628))))))

(declare-fun b!114650 () Bool)

(assert (=> b!114650 (= e!74628 (contains!853 (toList!825 lt!59746) lt!59628))))

(assert (= (and d!32451 res!56404) b!114649))

(assert (= (and b!114649 res!56403) b!114650))

(declare-fun m!131203 () Bool)

(assert (=> d!32451 m!131203))

(declare-fun m!131205 () Bool)

(assert (=> d!32451 m!131205))

(declare-fun m!131207 () Bool)

(assert (=> d!32451 m!131207))

(declare-fun m!131209 () Bool)

(assert (=> d!32451 m!131209))

(declare-fun m!131211 () Bool)

(assert (=> b!114649 m!131211))

(declare-fun m!131213 () Bool)

(assert (=> b!114650 m!131213))

(assert (=> b!114493 d!32451))

(declare-fun d!32453 () Bool)

(assert (=> d!32453 (= (+!157 (+!157 lt!59630 (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627)) (tuple2!2471 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))))) (+!157 (+!157 lt!59630 (tuple2!2471 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))))) (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627)))))

(declare-fun lt!59748 () Unit!3585)

(assert (=> d!32453 (= lt!59748 (choose!732 lt!59630 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(assert (=> d!32453 (not (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!32453 (= (addCommutativeForDiffKeys!69 lt!59630 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))) lt!59748)))

(declare-fun bs!4684 () Bool)

(assert (= bs!4684 d!32453))

(assert (=> bs!4684 m!130991))

(declare-fun m!131215 () Bool)

(assert (=> bs!4684 m!131215))

(declare-fun m!131217 () Bool)

(assert (=> bs!4684 m!131217))

(declare-fun m!131219 () Bool)

(assert (=> bs!4684 m!131219))

(declare-fun m!131221 () Bool)

(assert (=> bs!4684 m!131221))

(declare-fun m!131223 () Bool)

(assert (=> bs!4684 m!131223))

(assert (=> bs!4684 m!131221))

(assert (=> bs!4684 m!131217))

(assert (=> b!114493 d!32453))

(declare-fun d!32455 () Bool)

(declare-fun e!74629 () Bool)

(assert (=> d!32455 e!74629))

(declare-fun res!56406 () Bool)

(assert (=> d!32455 (=> (not res!56406) (not e!74629))))

(declare-fun lt!59751 () ListLongMap!1619)

(assert (=> d!32455 (= res!56406 (contains!851 lt!59751 (_1!1245 lt!59626)))))

(declare-fun lt!59749 () List!1674)

(assert (=> d!32455 (= lt!59751 (ListLongMap!1620 lt!59749))))

(declare-fun lt!59752 () Unit!3585)

(declare-fun lt!59750 () Unit!3585)

(assert (=> d!32455 (= lt!59752 lt!59750)))

(assert (=> d!32455 (= (getValueByKey!160 lt!59749 (_1!1245 lt!59626)) (Some!165 (_2!1245 lt!59626)))))

(assert (=> d!32455 (= lt!59750 (lemmaContainsTupThenGetReturnValue!78 lt!59749 (_1!1245 lt!59626) (_2!1245 lt!59626)))))

(assert (=> d!32455 (= lt!59749 (insertStrictlySorted!80 (toList!825 lt!59629) (_1!1245 lt!59626) (_2!1245 lt!59626)))))

(assert (=> d!32455 (= (+!157 lt!59629 lt!59626) lt!59751)))

(declare-fun b!114651 () Bool)

(declare-fun res!56405 () Bool)

(assert (=> b!114651 (=> (not res!56405) (not e!74629))))

(assert (=> b!114651 (= res!56405 (= (getValueByKey!160 (toList!825 lt!59751) (_1!1245 lt!59626)) (Some!165 (_2!1245 lt!59626))))))

(declare-fun b!114652 () Bool)

(assert (=> b!114652 (= e!74629 (contains!853 (toList!825 lt!59751) lt!59626))))

(assert (= (and d!32455 res!56406) b!114651))

(assert (= (and b!114651 res!56405) b!114652))

(declare-fun m!131225 () Bool)

(assert (=> d!32455 m!131225))

(declare-fun m!131227 () Bool)

(assert (=> d!32455 m!131227))

(declare-fun m!131229 () Bool)

(assert (=> d!32455 m!131229))

(declare-fun m!131231 () Bool)

(assert (=> d!32455 m!131231))

(declare-fun m!131233 () Bool)

(assert (=> b!114651 m!131233))

(declare-fun m!131235 () Bool)

(assert (=> b!114652 m!131235))

(assert (=> b!114493 d!32455))

(declare-fun d!32457 () Bool)

(declare-fun e!74630 () Bool)

(assert (=> d!32457 e!74630))

(declare-fun res!56408 () Bool)

(assert (=> d!32457 (=> (not res!56408) (not e!74630))))

(declare-fun lt!59755 () ListLongMap!1619)

(assert (=> d!32457 (= res!56408 (contains!851 lt!59755 (_1!1245 lt!59626)))))

(declare-fun lt!59753 () List!1674)

(assert (=> d!32457 (= lt!59755 (ListLongMap!1620 lt!59753))))

(declare-fun lt!59756 () Unit!3585)

(declare-fun lt!59754 () Unit!3585)

(assert (=> d!32457 (= lt!59756 lt!59754)))

(assert (=> d!32457 (= (getValueByKey!160 lt!59753 (_1!1245 lt!59626)) (Some!165 (_2!1245 lt!59626)))))

(assert (=> d!32457 (= lt!59754 (lemmaContainsTupThenGetReturnValue!78 lt!59753 (_1!1245 lt!59626) (_2!1245 lt!59626)))))

(assert (=> d!32457 (= lt!59753 (insertStrictlySorted!80 (toList!825 lt!59635) (_1!1245 lt!59626) (_2!1245 lt!59626)))))

(assert (=> d!32457 (= (+!157 lt!59635 lt!59626) lt!59755)))

(declare-fun b!114653 () Bool)

(declare-fun res!56407 () Bool)

(assert (=> b!114653 (=> (not res!56407) (not e!74630))))

(assert (=> b!114653 (= res!56407 (= (getValueByKey!160 (toList!825 lt!59755) (_1!1245 lt!59626)) (Some!165 (_2!1245 lt!59626))))))

(declare-fun b!114654 () Bool)

(assert (=> b!114654 (= e!74630 (contains!853 (toList!825 lt!59755) lt!59626))))

(assert (= (and d!32457 res!56408) b!114653))

(assert (= (and b!114653 res!56407) b!114654))

(declare-fun m!131237 () Bool)

(assert (=> d!32457 m!131237))

(declare-fun m!131239 () Bool)

(assert (=> d!32457 m!131239))

(declare-fun m!131241 () Bool)

(assert (=> d!32457 m!131241))

(declare-fun m!131243 () Bool)

(assert (=> d!32457 m!131243))

(declare-fun m!131245 () Bool)

(assert (=> b!114653 m!131245))

(declare-fun m!131247 () Bool)

(assert (=> b!114654 m!131247))

(assert (=> b!114493 d!32457))

(declare-fun d!32459 () Bool)

(declare-fun res!56415 () Bool)

(declare-fun e!74633 () Bool)

(assert (=> d!32459 (=> (not res!56415) (not e!74633))))

(declare-fun simpleValid!78 (LongMapFixedSize!954) Bool)

(assert (=> d!32459 (= res!56415 (simpleValid!78 (_2!1244 lt!59621)))))

(assert (=> d!32459 (= (valid!442 (_2!1244 lt!59621)) e!74633)))

(declare-fun b!114661 () Bool)

(declare-fun res!56416 () Bool)

(assert (=> b!114661 (=> (not res!56416) (not e!74633))))

(declare-fun arrayCountValidKeys!0 (array!4466 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!114661 (= res!56416 (= (arrayCountValidKeys!0 (_keys!4405 (_2!1244 lt!59621)) #b00000000000000000000000000000000 (size!2376 (_keys!4405 (_2!1244 lt!59621)))) (_size!526 (_2!1244 lt!59621))))))

(declare-fun b!114662 () Bool)

(declare-fun res!56417 () Bool)

(assert (=> b!114662 (=> (not res!56417) (not e!74633))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4466 (_ BitVec 32)) Bool)

(assert (=> b!114662 (= res!56417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4405 (_2!1244 lt!59621)) (mask!6879 (_2!1244 lt!59621))))))

(declare-fun b!114663 () Bool)

(assert (=> b!114663 (= e!74633 (arrayNoDuplicates!0 (_keys!4405 (_2!1244 lt!59621)) #b00000000000000000000000000000000 Nil!1672))))

(assert (= (and d!32459 res!56415) b!114661))

(assert (= (and b!114661 res!56416) b!114662))

(assert (= (and b!114662 res!56417) b!114663))

(declare-fun m!131249 () Bool)

(assert (=> d!32459 m!131249))

(declare-fun m!131251 () Bool)

(assert (=> b!114661 m!131251))

(declare-fun m!131253 () Bool)

(assert (=> b!114662 m!131253))

(declare-fun m!131255 () Bool)

(assert (=> b!114663 m!131255))

(assert (=> b!114493 d!32459))

(declare-fun d!32461 () Bool)

(declare-fun e!74634 () Bool)

(assert (=> d!32461 e!74634))

(declare-fun res!56419 () Bool)

(assert (=> d!32461 (=> (not res!56419) (not e!74634))))

(declare-fun lt!59759 () ListLongMap!1619)

(assert (=> d!32461 (= res!56419 (contains!851 lt!59759 (_1!1245 lt!59625)))))

(declare-fun lt!59757 () List!1674)

(assert (=> d!32461 (= lt!59759 (ListLongMap!1620 lt!59757))))

(declare-fun lt!59760 () Unit!3585)

(declare-fun lt!59758 () Unit!3585)

(assert (=> d!32461 (= lt!59760 lt!59758)))

(assert (=> d!32461 (= (getValueByKey!160 lt!59757 (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625)))))

(assert (=> d!32461 (= lt!59758 (lemmaContainsTupThenGetReturnValue!78 lt!59757 (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(assert (=> d!32461 (= lt!59757 (insertStrictlySorted!80 (toList!825 lt!59635) (_1!1245 lt!59625) (_2!1245 lt!59625)))))

(assert (=> d!32461 (= (+!157 lt!59635 lt!59625) lt!59759)))

(declare-fun b!114664 () Bool)

(declare-fun res!56418 () Bool)

(assert (=> b!114664 (=> (not res!56418) (not e!74634))))

(assert (=> b!114664 (= res!56418 (= (getValueByKey!160 (toList!825 lt!59759) (_1!1245 lt!59625)) (Some!165 (_2!1245 lt!59625))))))

(declare-fun b!114665 () Bool)

(assert (=> b!114665 (= e!74634 (contains!853 (toList!825 lt!59759) lt!59625))))

(assert (= (and d!32461 res!56419) b!114664))

(assert (= (and b!114664 res!56418) b!114665))

(declare-fun m!131257 () Bool)

(assert (=> d!32461 m!131257))

(declare-fun m!131259 () Bool)

(assert (=> d!32461 m!131259))

(declare-fun m!131261 () Bool)

(assert (=> d!32461 m!131261))

(declare-fun m!131263 () Bool)

(assert (=> d!32461 m!131263))

(declare-fun m!131265 () Bool)

(assert (=> b!114664 m!131265))

(declare-fun m!131267 () Bool)

(assert (=> b!114665 m!131267))

(assert (=> b!114493 d!32461))

(declare-fun d!32463 () Bool)

(declare-fun e!74639 () Bool)

(assert (=> d!32463 e!74639))

(declare-fun res!56422 () Bool)

(assert (=> d!32463 (=> res!56422 e!74639)))

(declare-fun lt!59769 () Bool)

(assert (=> d!32463 (= res!56422 (not lt!59769))))

(declare-fun lt!59771 () Bool)

(assert (=> d!32463 (= lt!59769 lt!59771)))

(declare-fun lt!59770 () Unit!3585)

(declare-fun e!74640 () Unit!3585)

(assert (=> d!32463 (= lt!59770 e!74640)))

(declare-fun c!20488 () Bool)

(assert (=> d!32463 (= c!20488 lt!59771)))

(declare-fun containsKey!164 (List!1674 (_ BitVec 64)) Bool)

(assert (=> d!32463 (= lt!59771 (containsKey!164 (toList!825 lt!59622) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(assert (=> d!32463 (= (contains!851 lt!59622 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)) lt!59769)))

(declare-fun b!114672 () Bool)

(declare-fun lt!59772 () Unit!3585)

(assert (=> b!114672 (= e!74640 lt!59772)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!113 (List!1674 (_ BitVec 64)) Unit!3585)

(assert (=> b!114672 (= lt!59772 (lemmaContainsKeyImpliesGetValueByKeyDefined!113 (toList!825 lt!59622) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun isDefined!114 (Option!166) Bool)

(assert (=> b!114672 (isDefined!114 (getValueByKey!160 (toList!825 lt!59622) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun b!114673 () Bool)

(declare-fun Unit!3589 () Unit!3585)

(assert (=> b!114673 (= e!74640 Unit!3589)))

(declare-fun b!114674 () Bool)

(assert (=> b!114674 (= e!74639 (isDefined!114 (getValueByKey!160 (toList!825 lt!59622) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355))))))

(assert (= (and d!32463 c!20488) b!114672))

(assert (= (and d!32463 (not c!20488)) b!114673))

(assert (= (and d!32463 (not res!56422)) b!114674))

(assert (=> d!32463 m!130991))

(declare-fun m!131269 () Bool)

(assert (=> d!32463 m!131269))

(assert (=> b!114672 m!130991))

(declare-fun m!131271 () Bool)

(assert (=> b!114672 m!131271))

(assert (=> b!114672 m!130991))

(declare-fun m!131273 () Bool)

(assert (=> b!114672 m!131273))

(assert (=> b!114672 m!131273))

(declare-fun m!131275 () Bool)

(assert (=> b!114672 m!131275))

(assert (=> b!114674 m!130991))

(assert (=> b!114674 m!131273))

(assert (=> b!114674 m!131273))

(assert (=> b!114674 m!131275))

(assert (=> b!114499 d!32463))

(declare-fun b!114759 () Bool)

(declare-fun e!74701 () Unit!3585)

(declare-fun Unit!3590 () Unit!3585)

(assert (=> b!114759 (= e!74701 Unit!3590)))

(declare-fun lt!59837 () Unit!3585)

(declare-fun call!12353 () Unit!3585)

(assert (=> b!114759 (= lt!59837 call!12353)))

(declare-datatypes ((SeekEntryResult!274 0))(
  ( (MissingZero!274 (index!3249 (_ BitVec 32))) (Found!274 (index!3250 (_ BitVec 32))) (Intermediate!274 (undefined!1086 Bool) (index!3251 (_ BitVec 32)) (x!14326 (_ BitVec 32))) (Undefined!274) (MissingVacant!274 (index!3252 (_ BitVec 32))) )
))
(declare-fun lt!59844 () SeekEntryResult!274)

(declare-fun call!12362 () SeekEntryResult!274)

(assert (=> b!114759 (= lt!59844 call!12362)))

(declare-fun res!56457 () Bool)

(assert (=> b!114759 (= res!56457 ((_ is Found!274) lt!59844))))

(declare-fun e!74695 () Bool)

(assert (=> b!114759 (=> (not res!56457) (not e!74695))))

(assert (=> b!114759 e!74695))

(declare-fun lt!59836 () Unit!3585)

(assert (=> b!114759 (= lt!59836 lt!59837)))

(assert (=> b!114759 false))

(declare-fun b!114760 () Bool)

(declare-fun e!74705 () Bool)

(declare-fun lt!59833 () SeekEntryResult!274)

(assert (=> b!114760 (= e!74705 ((_ is Undefined!274) lt!59833))))

(declare-fun call!12359 () SeekEntryResult!274)

(declare-fun bm!12346 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4466 (_ BitVec 32)) SeekEntryResult!274)

(assert (=> bm!12346 (= call!12359 (seekEntryOrOpen!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (_keys!4405 newMap!16) (mask!6879 newMap!16)))))

(declare-fun b!114761 () Bool)

(declare-fun res!56454 () Bool)

(declare-fun e!74697 () Bool)

(assert (=> b!114761 (=> (not res!56454) (not e!74697))))

(declare-fun lt!59852 () SeekEntryResult!274)

(assert (=> b!114761 (= res!56454 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3249 lt!59852)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!114762 () Bool)

(declare-fun e!74689 () Unit!3585)

(declare-fun Unit!3591 () Unit!3585)

(assert (=> b!114762 (= e!74689 Unit!3591)))

(declare-fun lt!59843 () Unit!3585)

(declare-fun call!12371 () Unit!3585)

(assert (=> b!114762 (= lt!59843 call!12371)))

(declare-fun call!12369 () SeekEntryResult!274)

(assert (=> b!114762 (= lt!59852 call!12369)))

(declare-fun c!20526 () Bool)

(assert (=> b!114762 (= c!20526 ((_ is MissingZero!274) lt!59852))))

(declare-fun e!74704 () Bool)

(assert (=> b!114762 e!74704))

(declare-fun lt!59828 () Unit!3585)

(assert (=> b!114762 (= lt!59828 lt!59843)))

(assert (=> b!114762 false))

(declare-fun b!114763 () Bool)

(declare-fun e!74688 () ListLongMap!1619)

(assert (=> b!114763 (= e!74688 (getCurrentListMap!501 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2683 newMap!16)))))

(declare-fun b!114764 () Bool)

(declare-fun e!74694 () tuple2!2468)

(declare-fun e!74706 () tuple2!2468)

(assert (=> b!114764 (= e!74694 e!74706)))

(declare-fun c!20520 () Bool)

(declare-fun lt!59839 () SeekEntryResult!274)

(assert (=> b!114764 (= c!20520 ((_ is MissingZero!274) lt!59839))))

(declare-fun b!114765 () Bool)

(declare-fun e!74699 () Bool)

(declare-fun e!74690 () Bool)

(assert (=> b!114765 (= e!74699 e!74690)))

(declare-fun call!12367 () ListLongMap!1619)

(declare-fun res!56458 () Bool)

(assert (=> b!114765 (= res!56458 (contains!851 call!12367 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(assert (=> b!114765 (=> (not res!56458) (not e!74690))))

(declare-fun e!74691 () Bool)

(declare-fun lt!59838 () SeekEntryResult!274)

(declare-fun b!114766 () Bool)

(assert (=> b!114766 (= e!74691 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3250 lt!59838)) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun b!114767 () Bool)

(declare-fun res!56461 () Bool)

(declare-fun call!12363 () Bool)

(assert (=> b!114767 (= res!56461 call!12363)))

(assert (=> b!114767 (=> (not res!56461) (not e!74691))))

(declare-fun b!114768 () Bool)

(declare-fun e!74687 () Bool)

(declare-fun call!12361 () Bool)

(assert (=> b!114768 (= e!74687 (not call!12361))))

(declare-fun b!114769 () Bool)

(declare-fun lt!59853 () Unit!3585)

(assert (=> b!114769 (= e!74701 lt!59853)))

(assert (=> b!114769 (= lt!59853 call!12371)))

(assert (=> b!114769 (= lt!59833 call!12362)))

(declare-fun c!20523 () Bool)

(assert (=> b!114769 (= c!20523 ((_ is MissingZero!274) lt!59833))))

(declare-fun e!74692 () Bool)

(assert (=> b!114769 e!74692))

(declare-fun lt!59832 () array!4468)

(declare-fun c!20521 () Bool)

(declare-fun lt!59842 () (_ BitVec 32))

(declare-fun c!20527 () Bool)

(declare-fun bm!12347 () Bool)

(declare-fun call!12350 () ListLongMap!1619)

(declare-fun c!20517 () Bool)

(assert (=> bm!12347 (= call!12350 (getCurrentListMap!501 (_keys!4405 newMap!16) (ite (or c!20527 c!20517) (_values!2666 newMap!16) lt!59832) (mask!6879 newMap!16) (ite c!20527 (ite c!20521 (extraKeys!2472 newMap!16) lt!59842) (extraKeys!2472 newMap!16)) (zeroValue!2550 newMap!16) (ite c!20527 (ite c!20521 (minValue!2550 newMap!16) lt!59627) (minValue!2550 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2683 newMap!16)))))

(declare-fun c!20530 () Bool)

(declare-fun c!20519 () Bool)

(declare-fun bm!12348 () Bool)

(declare-fun call!12365 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!12348 (= call!12365 (inRange!0 (ite c!20517 (ite c!20519 (index!3250 lt!59844) (ite c!20523 (index!3249 lt!59833) (index!3252 lt!59833))) (ite c!20530 (index!3250 lt!59838) (ite c!20526 (index!3249 lt!59852) (index!3252 lt!59852)))) (mask!6879 newMap!16)))))

(declare-fun b!114770 () Bool)

(declare-fun lt!59831 () Unit!3585)

(declare-fun lt!59835 () Unit!3585)

(assert (=> b!114770 (= lt!59831 lt!59835)))

(declare-fun call!12355 () ListLongMap!1619)

(assert (=> b!114770 (contains!851 call!12355 (select (arr!2116 (_keys!4405 newMap!16)) (index!3250 lt!59839)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!110 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 32) Int) Unit!3585)

(assert (=> b!114770 (= lt!59835 (lemmaValidKeyInArrayIsInListMap!110 (_keys!4405 newMap!16) lt!59832 (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) (index!3250 lt!59839) (defaultEntry!2683 newMap!16)))))

(assert (=> b!114770 (= lt!59832 (array!4469 (store (arr!2117 (_values!2666 newMap!16)) (index!3250 lt!59839) (ValueCellFull!1023 lt!59627)) (size!2377 (_values!2666 newMap!16))))))

(declare-fun lt!59848 () Unit!3585)

(declare-fun lt!59847 () Unit!3585)

(assert (=> b!114770 (= lt!59848 lt!59847)))

(declare-fun call!12354 () ListLongMap!1619)

(declare-fun call!12356 () ListLongMap!1619)

(assert (=> b!114770 (= call!12354 call!12356)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!52 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 32) (_ BitVec 64) V!3291 Int) Unit!3585)

(assert (=> b!114770 (= lt!59847 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!52 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) (index!3250 lt!59839) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 (defaultEntry!2683 newMap!16)))))

(declare-fun lt!59846 () Unit!3585)

(assert (=> b!114770 (= lt!59846 e!74689)))

(declare-fun call!12360 () Bool)

(assert (=> b!114770 (= c!20530 call!12360)))

(assert (=> b!114770 (= e!74706 (tuple2!2469 true (LongMapFixedSize!955 (defaultEntry!2683 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) (_size!526 newMap!16) (_keys!4405 newMap!16) (array!4469 (store (arr!2117 (_values!2666 newMap!16)) (index!3250 lt!59839) (ValueCellFull!1023 lt!59627)) (size!2377 (_values!2666 newMap!16))) (_vacant!526 newMap!16))))))

(declare-fun b!114771 () Bool)

(declare-fun res!56464 () Bool)

(assert (=> b!114771 (= res!56464 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3252 lt!59833)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!74693 () Bool)

(assert (=> b!114771 (=> (not res!56464) (not e!74693))))

(declare-fun bm!12349 () Bool)

(declare-fun call!12372 () Bool)

(declare-fun call!12352 () Bool)

(assert (=> bm!12349 (= call!12372 call!12352)))

(declare-fun b!114772 () Bool)

(declare-fun lt!59845 () tuple2!2468)

(declare-fun call!12357 () tuple2!2468)

(assert (=> b!114772 (= lt!59845 call!12357)))

(assert (=> b!114772 (= e!74706 (tuple2!2469 (_1!1244 lt!59845) (_2!1244 lt!59845)))))

(declare-fun bm!12350 () Bool)

(declare-fun c!20518 () Bool)

(declare-fun updateHelperNewKey!52 (LongMapFixedSize!954 (_ BitVec 64) V!3291 (_ BitVec 32)) tuple2!2468)

(assert (=> bm!12350 (= call!12357 (updateHelperNewKey!52 newMap!16 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627 (ite c!20518 (index!3252 lt!59839) (index!3249 lt!59839))))))

(declare-fun bm!12351 () Bool)

(assert (=> bm!12351 (= call!12352 (arrayContainsKey!0 (_keys!4405 newMap!16) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!12352 () Bool)

(assert (=> bm!12352 (= call!12361 call!12352)))

(declare-fun b!114773 () Bool)

(declare-fun e!74686 () ListLongMap!1619)

(assert (=> b!114773 (= e!74686 (getCurrentListMap!501 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2683 newMap!16)))))

(declare-fun bm!12353 () Bool)

(declare-fun call!12364 () ListLongMap!1619)

(assert (=> bm!12353 (= call!12364 call!12350)))

(declare-fun b!114774 () Bool)

(declare-fun res!56456 () Bool)

(declare-fun e!74700 () Bool)

(assert (=> b!114774 (=> (not res!56456) (not e!74700))))

(assert (=> b!114774 (= res!56456 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3249 lt!59833)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12354 () Bool)

(assert (=> bm!12354 (= call!12362 call!12359)))

(declare-fun bm!12355 () Bool)

(declare-fun call!12366 () Bool)

(assert (=> bm!12355 (= call!12366 call!12365)))

(declare-fun b!114775 () Bool)

(declare-fun res!56460 () Bool)

(assert (=> b!114775 (= res!56460 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3252 lt!59852)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!114775 (=> (not res!56460) (not e!74687))))

(declare-fun b!114776 () Bool)

(declare-fun lt!59829 () Unit!3585)

(declare-fun lt!59840 () Unit!3585)

(assert (=> b!114776 (= lt!59829 lt!59840)))

(declare-fun call!12351 () ListLongMap!1619)

(assert (=> b!114776 (= call!12351 call!12364)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!52 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 V!3291 Int) Unit!3585)

(assert (=> b!114776 (= lt!59840 (lemmaChangeLongMinValueKeyThenAddPairToListMap!52 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) lt!59842 (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) lt!59627 (defaultEntry!2683 newMap!16)))))

(assert (=> b!114776 (= lt!59842 (bvor (extraKeys!2472 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!74698 () tuple2!2468)

(assert (=> b!114776 (= e!74698 (tuple2!2469 true (LongMapFixedSize!955 (defaultEntry!2683 newMap!16) (mask!6879 newMap!16) (bvor (extraKeys!2472 newMap!16) #b00000000000000000000000000000010) (zeroValue!2550 newMap!16) lt!59627 (_size!526 newMap!16) (_keys!4405 newMap!16) (_values!2666 newMap!16) (_vacant!526 newMap!16))))))

(declare-fun b!114777 () Bool)

(assert (=> b!114777 (= e!74705 e!74693)))

(declare-fun res!56452 () Bool)

(declare-fun call!12349 () Bool)

(assert (=> b!114777 (= res!56452 call!12349)))

(assert (=> b!114777 (=> (not res!56452) (not e!74693))))

(declare-fun b!114778 () Bool)

(assert (=> b!114778 (= e!74695 (= (select (arr!2116 (_keys!4405 newMap!16)) (index!3250 lt!59844)) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun bm!12356 () Bool)

(declare-fun call!12370 () Bool)

(assert (=> bm!12356 (= call!12370 call!12363)))

(declare-fun bm!12357 () Bool)

(declare-fun call!12358 () ListLongMap!1619)

(assert (=> bm!12357 (= call!12358 (map!1318 newMap!16))))

(declare-fun bm!12358 () Bool)

(assert (=> bm!12358 (= call!12363 call!12365)))

(declare-fun b!114779 () Bool)

(declare-fun lt!59827 () Unit!3585)

(declare-fun lt!59834 () Unit!3585)

(assert (=> b!114779 (= lt!59827 lt!59834)))

(declare-fun call!12368 () ListLongMap!1619)

(assert (=> b!114779 (= call!12351 call!12368)))

(declare-fun lt!59849 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!52 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 V!3291 Int) Unit!3585)

(assert (=> b!114779 (= lt!59834 (lemmaChangeZeroKeyThenAddPairToListMap!52 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) lt!59849 (zeroValue!2550 newMap!16) lt!59627 (minValue!2550 newMap!16) (defaultEntry!2683 newMap!16)))))

(assert (=> b!114779 (= lt!59849 (bvor (extraKeys!2472 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!114779 (= e!74698 (tuple2!2469 true (LongMapFixedSize!955 (defaultEntry!2683 newMap!16) (mask!6879 newMap!16) (bvor (extraKeys!2472 newMap!16) #b00000000000000000000000000000001) lt!59627 (minValue!2550 newMap!16) (_size!526 newMap!16) (_keys!4405 newMap!16) (_values!2666 newMap!16) (_vacant!526 newMap!16))))))

(declare-fun b!114780 () Bool)

(declare-fun res!56463 () Bool)

(assert (=> b!114780 (=> (not res!56463) (not e!74697))))

(assert (=> b!114780 (= res!56463 call!12370)))

(assert (=> b!114780 (= e!74704 e!74697)))

(declare-fun b!114781 () Bool)

(declare-fun lt!59830 () tuple2!2468)

(assert (=> b!114781 (= e!74694 (tuple2!2469 (_1!1244 lt!59830) (_2!1244 lt!59830)))))

(assert (=> b!114781 (= lt!59830 call!12357)))

(declare-fun b!114782 () Bool)

(declare-fun lt!59841 () Unit!3585)

(assert (=> b!114782 (= e!74689 lt!59841)))

(assert (=> b!114782 (= lt!59841 call!12353)))

(assert (=> b!114782 (= lt!59838 call!12369)))

(declare-fun res!56453 () Bool)

(assert (=> b!114782 (= res!56453 ((_ is Found!274) lt!59838))))

(assert (=> b!114782 (=> (not res!56453) (not e!74691))))

(assert (=> b!114782 e!74691))

(declare-fun bm!12359 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!52 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 64) Int) Unit!3585)

(assert (=> bm!12359 (= call!12353 (lemmaInListMapThenSeekEntryOrOpenFindsIt!52 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (defaultEntry!2683 newMap!16)))))

(declare-fun b!114783 () Bool)

(declare-fun e!74685 () Bool)

(assert (=> b!114783 (= e!74685 e!74699)))

(declare-fun c!20524 () Bool)

(declare-fun lt!59850 () tuple2!2468)

(assert (=> b!114783 (= c!20524 (_1!1244 lt!59850))))

(declare-fun bm!12360 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!52 (array!4466 array!4468 (_ BitVec 32) (_ BitVec 32) V!3291 V!3291 (_ BitVec 64) Int) Unit!3585)

(assert (=> bm!12360 (= call!12371 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!52 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (defaultEntry!2683 newMap!16)))))

(declare-fun bm!12361 () Bool)

(assert (=> bm!12361 (= call!12349 call!12366)))

(declare-fun b!114784 () Bool)

(assert (=> b!114784 (= e!74686 (ite c!20521 call!12364 call!12368))))

(declare-fun b!114785 () Bool)

(assert (=> b!114785 (= c!20518 ((_ is MissingVacant!274) lt!59839))))

(declare-fun e!74696 () tuple2!2468)

(assert (=> b!114785 (= e!74696 e!74694)))

(declare-fun b!114786 () Bool)

(assert (=> b!114786 (= e!74690 (= call!12367 (+!157 call!12358 (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627))))))

(declare-fun bm!12362 () Bool)

(assert (=> bm!12362 (= call!12369 call!12359)))

(declare-fun b!114787 () Bool)

(assert (=> b!114787 (= e!74697 (not call!12361))))

(declare-fun b!114788 () Bool)

(declare-fun res!56455 () Bool)

(assert (=> b!114788 (=> (not res!56455) (not e!74700))))

(assert (=> b!114788 (= res!56455 call!12349)))

(assert (=> b!114788 (= e!74692 e!74700)))

(declare-fun b!114789 () Bool)

(assert (=> b!114789 (= e!74693 (not call!12372))))

(declare-fun b!114790 () Bool)

(declare-fun e!74703 () tuple2!2468)

(assert (=> b!114790 (= e!74703 e!74696)))

(assert (=> b!114790 (= lt!59839 (seekEntryOrOpen!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (_keys!4405 newMap!16) (mask!6879 newMap!16)))))

(assert (=> b!114790 (= c!20517 ((_ is Undefined!274) lt!59839))))

(declare-fun bm!12363 () Bool)

(assert (=> bm!12363 (= call!12368 call!12356)))

(declare-fun bm!12364 () Bool)

(assert (=> bm!12364 (= call!12354 (+!157 e!74686 (ite c!20527 (ite c!20521 (tuple2!2471 #b0000000000000000000000000000000000000000000000000000000000000000 lt!59627) (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 lt!59627)) (tuple2!2471 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627))))))

(declare-fun c!20529 () Bool)

(assert (=> bm!12364 (= c!20529 c!20527)))

(declare-fun b!114791 () Bool)

(assert (=> b!114791 (= e!74688 call!12355)))

(declare-fun b!114792 () Bool)

(declare-fun res!56451 () Bool)

(assert (=> b!114792 (= res!56451 call!12366)))

(assert (=> b!114792 (=> (not res!56451) (not e!74695))))

(declare-fun d!32465 () Bool)

(assert (=> d!32465 e!74685))

(declare-fun res!56459 () Bool)

(assert (=> d!32465 (=> (not res!56459) (not e!74685))))

(assert (=> d!32465 (= res!56459 (valid!442 (_2!1244 lt!59850)))))

(assert (=> d!32465 (= lt!59850 e!74703)))

(assert (=> d!32465 (= c!20527 (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) (bvneg (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355))))))

(assert (=> d!32465 (valid!442 newMap!16)))

(assert (=> d!32465 (= (update!170 newMap!16 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) lt!59627) lt!59850)))

(declare-fun b!114793 () Bool)

(declare-fun e!74702 () Bool)

(assert (=> b!114793 (= e!74702 ((_ is Undefined!274) lt!59852))))

(declare-fun b!114794 () Bool)

(assert (=> b!114794 (= e!74699 (= call!12367 call!12358))))

(declare-fun bm!12365 () Bool)

(assert (=> bm!12365 (= call!12355 call!12350)))

(declare-fun bm!12366 () Bool)

(declare-fun c!20528 () Bool)

(assert (=> bm!12366 (= c!20528 c!20517)))

(assert (=> bm!12366 (= call!12360 (contains!851 e!74688 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun b!114795 () Bool)

(assert (=> b!114795 (= e!74703 e!74698)))

(assert (=> b!114795 (= c!20521 (= (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!114796 () Bool)

(declare-fun c!20525 () Bool)

(assert (=> b!114796 (= c!20525 ((_ is MissingVacant!274) lt!59852))))

(assert (=> b!114796 (= e!74704 e!74702)))

(declare-fun bm!12367 () Bool)

(assert (=> bm!12367 (= call!12351 call!12354)))

(declare-fun bm!12368 () Bool)

(assert (=> bm!12368 (= call!12356 (getCurrentListMap!501 (_keys!4405 newMap!16) (ite c!20527 (_values!2666 newMap!16) (array!4469 (store (arr!2117 (_values!2666 newMap!16)) (index!3250 lt!59839) (ValueCellFull!1023 lt!59627)) (size!2377 (_values!2666 newMap!16)))) (mask!6879 newMap!16) (ite (and c!20527 c!20521) lt!59849 (extraKeys!2472 newMap!16)) (ite (and c!20527 c!20521) lt!59627 (zeroValue!2550 newMap!16)) (minValue!2550 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2683 newMap!16)))))

(declare-fun b!114797 () Bool)

(assert (=> b!114797 (= e!74700 (not call!12372))))

(declare-fun b!114798 () Bool)

(declare-fun lt!59851 () Unit!3585)

(assert (=> b!114798 (= lt!59851 e!74701)))

(assert (=> b!114798 (= c!20519 call!12360)))

(assert (=> b!114798 (= e!74696 (tuple2!2469 false newMap!16))))

(declare-fun b!114799 () Bool)

(assert (=> b!114799 (= e!74702 e!74687)))

(declare-fun res!56462 () Bool)

(assert (=> b!114799 (= res!56462 call!12370)))

(assert (=> b!114799 (=> (not res!56462) (not e!74687))))

(declare-fun b!114800 () Bool)

(declare-fun c!20522 () Bool)

(assert (=> b!114800 (= c!20522 ((_ is MissingVacant!274) lt!59833))))

(assert (=> b!114800 (= e!74692 e!74705)))

(declare-fun bm!12369 () Bool)

(assert (=> bm!12369 (= call!12367 (map!1318 (_2!1244 lt!59850)))))

(assert (= (and d!32465 c!20527) b!114795))

(assert (= (and d!32465 (not c!20527)) b!114790))

(assert (= (and b!114795 c!20521) b!114779))

(assert (= (and b!114795 (not c!20521)) b!114776))

(assert (= (or b!114779 b!114776) bm!12353))

(assert (= (or b!114779 b!114776) bm!12363))

(assert (= (or b!114779 b!114776) bm!12367))

(assert (= (and b!114790 c!20517) b!114798))

(assert (= (and b!114790 (not c!20517)) b!114785))

(assert (= (and b!114798 c!20519) b!114759))

(assert (= (and b!114798 (not c!20519)) b!114769))

(assert (= (and b!114759 res!56457) b!114792))

(assert (= (and b!114792 res!56451) b!114778))

(assert (= (and b!114769 c!20523) b!114788))

(assert (= (and b!114769 (not c!20523)) b!114800))

(assert (= (and b!114788 res!56455) b!114774))

(assert (= (and b!114774 res!56456) b!114797))

(assert (= (and b!114800 c!20522) b!114777))

(assert (= (and b!114800 (not c!20522)) b!114760))

(assert (= (and b!114777 res!56452) b!114771))

(assert (= (and b!114771 res!56464) b!114789))

(assert (= (or b!114788 b!114777) bm!12361))

(assert (= (or b!114797 b!114789) bm!12349))

(assert (= (or b!114792 bm!12361) bm!12355))

(assert (= (or b!114759 b!114769) bm!12354))

(assert (= (and b!114785 c!20518) b!114781))

(assert (= (and b!114785 (not c!20518)) b!114764))

(assert (= (and b!114764 c!20520) b!114772))

(assert (= (and b!114764 (not c!20520)) b!114770))

(assert (= (and b!114770 c!20530) b!114782))

(assert (= (and b!114770 (not c!20530)) b!114762))

(assert (= (and b!114782 res!56453) b!114767))

(assert (= (and b!114767 res!56461) b!114766))

(assert (= (and b!114762 c!20526) b!114780))

(assert (= (and b!114762 (not c!20526)) b!114796))

(assert (= (and b!114780 res!56463) b!114761))

(assert (= (and b!114761 res!56454) b!114787))

(assert (= (and b!114796 c!20525) b!114799))

(assert (= (and b!114796 (not c!20525)) b!114793))

(assert (= (and b!114799 res!56462) b!114775))

(assert (= (and b!114775 res!56460) b!114768))

(assert (= (or b!114780 b!114799) bm!12356))

(assert (= (or b!114787 b!114768) bm!12352))

(assert (= (or b!114767 bm!12356) bm!12358))

(assert (= (or b!114782 b!114762) bm!12362))

(assert (= (or b!114781 b!114772) bm!12350))

(assert (= (or bm!12354 bm!12362) bm!12346))

(assert (= (or b!114759 b!114782) bm!12359))

(assert (= (or bm!12349 bm!12352) bm!12351))

(assert (= (or b!114769 b!114762) bm!12360))

(assert (= (or b!114798 b!114770) bm!12365))

(assert (= (or bm!12355 bm!12358) bm!12348))

(assert (= (or b!114798 b!114770) bm!12366))

(assert (= (and bm!12366 c!20528) b!114791))

(assert (= (and bm!12366 (not c!20528)) b!114763))

(assert (= (or bm!12363 b!114770) bm!12368))

(assert (= (or bm!12353 bm!12365) bm!12347))

(assert (= (or bm!12367 b!114770) bm!12364))

(assert (= (and bm!12364 c!20529) b!114784))

(assert (= (and bm!12364 (not c!20529)) b!114773))

(assert (= (and d!32465 res!56459) b!114783))

(assert (= (and b!114783 c!20524) b!114765))

(assert (= (and b!114783 (not c!20524)) b!114794))

(assert (= (and b!114765 res!56458) b!114786))

(assert (= (or b!114765 b!114786 b!114794) bm!12369))

(assert (= (or b!114786 b!114794) bm!12357))

(assert (=> bm!12360 m!130991))

(declare-fun m!131277 () Bool)

(assert (=> bm!12360 m!131277))

(assert (=> bm!12350 m!130991))

(declare-fun m!131279 () Bool)

(assert (=> bm!12350 m!131279))

(declare-fun m!131281 () Bool)

(assert (=> b!114775 m!131281))

(declare-fun m!131283 () Bool)

(assert (=> bm!12347 m!131283))

(declare-fun m!131285 () Bool)

(assert (=> b!114786 m!131285))

(declare-fun m!131287 () Bool)

(assert (=> b!114770 m!131287))

(assert (=> b!114770 m!130991))

(declare-fun m!131289 () Bool)

(assert (=> b!114770 m!131289))

(declare-fun m!131291 () Bool)

(assert (=> b!114770 m!131291))

(assert (=> b!114770 m!131291))

(declare-fun m!131293 () Bool)

(assert (=> b!114770 m!131293))

(declare-fun m!131295 () Bool)

(assert (=> b!114770 m!131295))

(declare-fun m!131297 () Bool)

(assert (=> bm!12348 m!131297))

(assert (=> bm!12351 m!130991))

(declare-fun m!131299 () Bool)

(assert (=> bm!12351 m!131299))

(assert (=> bm!12359 m!130991))

(declare-fun m!131301 () Bool)

(assert (=> bm!12359 m!131301))

(declare-fun m!131303 () Bool)

(assert (=> b!114773 m!131303))

(assert (=> bm!12366 m!130991))

(declare-fun m!131305 () Bool)

(assert (=> bm!12366 m!131305))

(declare-fun m!131307 () Bool)

(assert (=> bm!12364 m!131307))

(declare-fun m!131309 () Bool)

(assert (=> b!114779 m!131309))

(declare-fun m!131311 () Bool)

(assert (=> bm!12369 m!131311))

(assert (=> b!114790 m!130991))

(declare-fun m!131313 () Bool)

(assert (=> b!114790 m!131313))

(declare-fun m!131315 () Bool)

(assert (=> b!114774 m!131315))

(declare-fun m!131317 () Bool)

(assert (=> b!114778 m!131317))

(assert (=> bm!12346 m!130991))

(assert (=> bm!12346 m!131313))

(assert (=> bm!12368 m!131287))

(declare-fun m!131319 () Bool)

(assert (=> bm!12368 m!131319))

(assert (=> b!114765 m!130991))

(declare-fun m!131321 () Bool)

(assert (=> b!114765 m!131321))

(declare-fun m!131323 () Bool)

(assert (=> b!114766 m!131323))

(declare-fun m!131325 () Bool)

(assert (=> d!32465 m!131325))

(assert (=> d!32465 m!130989))

(declare-fun m!131327 () Bool)

(assert (=> b!114761 m!131327))

(declare-fun m!131329 () Bool)

(assert (=> b!114776 m!131329))

(declare-fun m!131331 () Bool)

(assert (=> b!114771 m!131331))

(assert (=> bm!12357 m!130999))

(assert (=> b!114763 m!131303))

(assert (=> b!114499 d!32465))

(declare-fun d!32467 () Bool)

(assert (=> d!32467 (= (map!1318 newMap!16) (getCurrentListMap!501 (_keys!4405 newMap!16) (_values!2666 newMap!16) (mask!6879 newMap!16) (extraKeys!2472 newMap!16) (zeroValue!2550 newMap!16) (minValue!2550 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2683 newMap!16)))))

(declare-fun bs!4685 () Bool)

(assert (= bs!4685 d!32467))

(assert (=> bs!4685 m!131303))

(assert (=> b!114511 d!32467))

(declare-fun b!114843 () Bool)

(declare-fun e!74742 () ListLongMap!1619)

(declare-fun call!12391 () ListLongMap!1619)

(assert (=> b!114843 (= e!74742 call!12391)))

(declare-fun b!114844 () Bool)

(declare-fun e!74740 () Bool)

(declare-fun call!12389 () Bool)

(assert (=> b!114844 (= e!74740 (not call!12389))))

(declare-fun b!114845 () Bool)

(declare-fun call!12390 () ListLongMap!1619)

(assert (=> b!114845 (= e!74742 call!12390)))

(declare-fun b!114846 () Bool)

(declare-fun e!74734 () Bool)

(declare-fun call!12388 () Bool)

(assert (=> b!114846 (= e!74734 (not call!12388))))

(declare-fun b!114847 () Bool)

(declare-fun e!74741 () Bool)

(declare-fun lt!59898 () ListLongMap!1619)

(assert (=> b!114847 (= e!74741 (= (apply!103 lt!59898 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114848 () Bool)

(declare-fun e!74745 () Bool)

(assert (=> b!114848 (= e!74745 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!114849 () Bool)

(declare-fun e!74743 () Unit!3585)

(declare-fun lt!59913 () Unit!3585)

(assert (=> b!114849 (= e!74743 lt!59913)))

(declare-fun lt!59910 () ListLongMap!1619)

(assert (=> b!114849 (= lt!59910 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59914 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59914 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59918 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59918 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!59903 () Unit!3585)

(declare-fun addStillContains!79 (ListLongMap!1619 (_ BitVec 64) V!3291 (_ BitVec 64)) Unit!3585)

(assert (=> b!114849 (= lt!59903 (addStillContains!79 lt!59910 lt!59914 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) lt!59918))))

(assert (=> b!114849 (contains!851 (+!157 lt!59910 (tuple2!2471 lt!59914 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))))) lt!59918)))

(declare-fun lt!59905 () Unit!3585)

(assert (=> b!114849 (= lt!59905 lt!59903)))

(declare-fun lt!59900 () ListLongMap!1619)

(assert (=> b!114849 (= lt!59900 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59909 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59909 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59902 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59902 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!59911 () Unit!3585)

(declare-fun addApplyDifferent!79 (ListLongMap!1619 (_ BitVec 64) V!3291 (_ BitVec 64)) Unit!3585)

(assert (=> b!114849 (= lt!59911 (addApplyDifferent!79 lt!59900 lt!59909 (minValue!2550 (v!2988 (underlying!387 thiss!992))) lt!59902))))

(assert (=> b!114849 (= (apply!103 (+!157 lt!59900 (tuple2!2471 lt!59909 (minValue!2550 (v!2988 (underlying!387 thiss!992))))) lt!59902) (apply!103 lt!59900 lt!59902))))

(declare-fun lt!59901 () Unit!3585)

(assert (=> b!114849 (= lt!59901 lt!59911)))

(declare-fun lt!59917 () ListLongMap!1619)

(assert (=> b!114849 (= lt!59917 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59912 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59912 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59899 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59899 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!59915 () Unit!3585)

(assert (=> b!114849 (= lt!59915 (addApplyDifferent!79 lt!59917 lt!59912 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) lt!59899))))

(assert (=> b!114849 (= (apply!103 (+!157 lt!59917 (tuple2!2471 lt!59912 (zeroValue!2550 (v!2988 (underlying!387 thiss!992))))) lt!59899) (apply!103 lt!59917 lt!59899))))

(declare-fun lt!59916 () Unit!3585)

(assert (=> b!114849 (= lt!59916 lt!59915)))

(declare-fun lt!59919 () ListLongMap!1619)

(assert (=> b!114849 (= lt!59919 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun lt!59907 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59907 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!59906 () (_ BitVec 64))

(assert (=> b!114849 (= lt!59906 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!114849 (= lt!59913 (addApplyDifferent!79 lt!59919 lt!59907 (minValue!2550 (v!2988 (underlying!387 thiss!992))) lt!59906))))

(assert (=> b!114849 (= (apply!103 (+!157 lt!59919 (tuple2!2471 lt!59907 (minValue!2550 (v!2988 (underlying!387 thiss!992))))) lt!59906) (apply!103 lt!59919 lt!59906))))

(declare-fun d!32469 () Bool)

(declare-fun e!74739 () Bool)

(assert (=> d!32469 e!74739))

(declare-fun res!56491 () Bool)

(assert (=> d!32469 (=> (not res!56491) (not e!74739))))

(assert (=> d!32469 (= res!56491 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))))

(declare-fun lt!59908 () ListLongMap!1619)

(assert (=> d!32469 (= lt!59898 lt!59908)))

(declare-fun lt!59904 () Unit!3585)

(assert (=> d!32469 (= lt!59904 e!74743)))

(declare-fun c!20545 () Bool)

(assert (=> d!32469 (= c!20545 e!74745)))

(declare-fun res!56486 () Bool)

(assert (=> d!32469 (=> (not res!56486) (not e!74745))))

(assert (=> d!32469 (= res!56486 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun e!74738 () ListLongMap!1619)

(assert (=> d!32469 (= lt!59908 e!74738)))

(declare-fun c!20543 () Bool)

(assert (=> d!32469 (= c!20543 (and (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!32469 (validMask!0 (mask!6879 (v!2988 (underlying!387 thiss!992))))))

(assert (=> d!32469 (= (getCurrentListMap!501 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))) lt!59898)))

(declare-fun bm!12384 () Bool)

(declare-fun call!12393 () ListLongMap!1619)

(assert (=> bm!12384 (= call!12391 call!12393)))

(declare-fun b!114850 () Bool)

(declare-fun e!74733 () ListLongMap!1619)

(assert (=> b!114850 (= e!74738 e!74733)))

(declare-fun c!20548 () Bool)

(assert (=> b!114850 (= c!20548 (and (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!114851 () Bool)

(declare-fun e!74735 () Bool)

(declare-fun e!74744 () Bool)

(assert (=> b!114851 (= e!74735 e!74744)))

(declare-fun res!56488 () Bool)

(assert (=> b!114851 (=> (not res!56488) (not e!74744))))

(assert (=> b!114851 (= res!56488 (contains!851 lt!59898 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!114851 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114852 () Bool)

(declare-fun res!56483 () Bool)

(assert (=> b!114852 (=> (not res!56483) (not e!74739))))

(assert (=> b!114852 (= res!56483 e!74735)))

(declare-fun res!56490 () Bool)

(assert (=> b!114852 (=> res!56490 e!74735)))

(declare-fun e!74737 () Bool)

(assert (=> b!114852 (= res!56490 (not e!74737))))

(declare-fun res!56485 () Bool)

(assert (=> b!114852 (=> (not res!56485) (not e!74737))))

(assert (=> b!114852 (= res!56485 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114853 () Bool)

(assert (=> b!114853 (= e!74739 e!74734)))

(declare-fun c!20546 () Bool)

(assert (=> b!114853 (= c!20546 (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!114854 () Bool)

(assert (=> b!114854 (= e!74737 (validKeyInArray!0 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!114855 () Bool)

(assert (=> b!114855 (= e!74733 call!12391)))

(declare-fun b!114856 () Bool)

(assert (=> b!114856 (= e!74740 e!74741)))

(declare-fun res!56487 () Bool)

(assert (=> b!114856 (= res!56487 call!12389)))

(assert (=> b!114856 (=> (not res!56487) (not e!74741))))

(declare-fun bm!12385 () Bool)

(declare-fun call!12387 () ListLongMap!1619)

(declare-fun call!12392 () ListLongMap!1619)

(assert (=> bm!12385 (= call!12387 call!12392)))

(declare-fun b!114857 () Bool)

(declare-fun res!56484 () Bool)

(assert (=> b!114857 (=> (not res!56484) (not e!74739))))

(assert (=> b!114857 (= res!56484 e!74740)))

(declare-fun c!20547 () Bool)

(assert (=> b!114857 (= c!20547 (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!114858 () Bool)

(assert (=> b!114858 (= e!74744 (= (apply!103 lt!59898 (select (arr!2116 (_keys!4405 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!114858 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2377 (_values!2666 (v!2988 (underlying!387 thiss!992))))))))

(assert (=> b!114858 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun b!114859 () Bool)

(declare-fun Unit!3592 () Unit!3585)

(assert (=> b!114859 (= e!74743 Unit!3592)))

(declare-fun b!114860 () Bool)

(declare-fun e!74736 () Bool)

(assert (=> b!114860 (= e!74736 (= (apply!103 lt!59898 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2550 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun bm!12386 () Bool)

(assert (=> bm!12386 (= call!12390 call!12387)))

(declare-fun bm!12387 () Bool)

(assert (=> bm!12387 (= call!12392 (getCurrentListMapNoExtraKeys!124 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (_values!2666 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992))) (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) (zeroValue!2550 (v!2988 (underlying!387 thiss!992))) (minValue!2550 (v!2988 (underlying!387 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114861 () Bool)

(assert (=> b!114861 (= e!74734 e!74736)))

(declare-fun res!56489 () Bool)

(assert (=> b!114861 (= res!56489 call!12388)))

(assert (=> b!114861 (=> (not res!56489) (not e!74736))))

(declare-fun b!114862 () Bool)

(declare-fun c!20544 () Bool)

(assert (=> b!114862 (= c!20544 (and (not (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2472 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!114862 (= e!74733 e!74742)))

(declare-fun b!114863 () Bool)

(assert (=> b!114863 (= e!74738 (+!157 call!12393 (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992))))))))

(declare-fun bm!12388 () Bool)

(assert (=> bm!12388 (= call!12389 (contains!851 lt!59898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12389 () Bool)

(assert (=> bm!12389 (= call!12388 (contains!851 lt!59898 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!12390 () Bool)

(assert (=> bm!12390 (= call!12393 (+!157 (ite c!20543 call!12392 (ite c!20548 call!12387 call!12390)) (ite (or c!20543 c!20548) (tuple2!2471 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2550 (v!2988 (underlying!387 thiss!992)))) (tuple2!2471 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2550 (v!2988 (underlying!387 thiss!992)))))))))

(assert (= (and d!32469 c!20543) b!114863))

(assert (= (and d!32469 (not c!20543)) b!114850))

(assert (= (and b!114850 c!20548) b!114855))

(assert (= (and b!114850 (not c!20548)) b!114862))

(assert (= (and b!114862 c!20544) b!114843))

(assert (= (and b!114862 (not c!20544)) b!114845))

(assert (= (or b!114843 b!114845) bm!12386))

(assert (= (or b!114855 bm!12386) bm!12385))

(assert (= (or b!114855 b!114843) bm!12384))

(assert (= (or b!114863 bm!12385) bm!12387))

(assert (= (or b!114863 bm!12384) bm!12390))

(assert (= (and d!32469 res!56486) b!114848))

(assert (= (and d!32469 c!20545) b!114849))

(assert (= (and d!32469 (not c!20545)) b!114859))

(assert (= (and d!32469 res!56491) b!114852))

(assert (= (and b!114852 res!56485) b!114854))

(assert (= (and b!114852 (not res!56490)) b!114851))

(assert (= (and b!114851 res!56488) b!114858))

(assert (= (and b!114852 res!56483) b!114857))

(assert (= (and b!114857 c!20547) b!114856))

(assert (= (and b!114857 (not c!20547)) b!114844))

(assert (= (and b!114856 res!56487) b!114847))

(assert (= (or b!114856 b!114844) bm!12388))

(assert (= (and b!114857 res!56484) b!114853))

(assert (= (and b!114853 c!20546) b!114861))

(assert (= (and b!114853 (not c!20546)) b!114846))

(assert (= (and b!114861 res!56489) b!114860))

(assert (= (or b!114861 b!114846) bm!12389))

(declare-fun b_lambda!5153 () Bool)

(assert (=> (not b_lambda!5153) (not b!114858)))

(assert (=> b!114858 t!5909))

(declare-fun b_and!7105 () Bool)

(assert (= b_and!7101 (and (=> t!5909 result!3665) b_and!7105)))

(assert (=> b!114858 t!5911))

(declare-fun b_and!7107 () Bool)

(assert (= b_and!7103 (and (=> t!5911 result!3669) b_and!7107)))

(declare-fun m!131333 () Bool)

(assert (=> bm!12388 m!131333))

(assert (=> b!114848 m!131117))

(assert (=> b!114848 m!131117))

(assert (=> b!114848 m!131143))

(declare-fun m!131335 () Bool)

(assert (=> b!114849 m!131335))

(declare-fun m!131337 () Bool)

(assert (=> b!114849 m!131337))

(declare-fun m!131339 () Bool)

(assert (=> b!114849 m!131339))

(declare-fun m!131341 () Bool)

(assert (=> b!114849 m!131341))

(assert (=> b!114849 m!131031))

(declare-fun m!131343 () Bool)

(assert (=> b!114849 m!131343))

(declare-fun m!131345 () Bool)

(assert (=> b!114849 m!131345))

(declare-fun m!131347 () Bool)

(assert (=> b!114849 m!131347))

(declare-fun m!131349 () Bool)

(assert (=> b!114849 m!131349))

(assert (=> b!114849 m!131339))

(declare-fun m!131351 () Bool)

(assert (=> b!114849 m!131351))

(assert (=> b!114849 m!131351))

(declare-fun m!131353 () Bool)

(assert (=> b!114849 m!131353))

(assert (=> b!114849 m!131117))

(declare-fun m!131355 () Bool)

(assert (=> b!114849 m!131355))

(declare-fun m!131357 () Bool)

(assert (=> b!114849 m!131357))

(assert (=> b!114849 m!131337))

(declare-fun m!131359 () Bool)

(assert (=> b!114849 m!131359))

(declare-fun m!131361 () Bool)

(assert (=> b!114849 m!131361))

(assert (=> b!114849 m!131345))

(declare-fun m!131363 () Bool)

(assert (=> b!114849 m!131363))

(assert (=> bm!12387 m!131031))

(assert (=> b!114851 m!131117))

(assert (=> b!114851 m!131117))

(declare-fun m!131365 () Bool)

(assert (=> b!114851 m!131365))

(assert (=> b!114854 m!131117))

(assert (=> b!114854 m!131117))

(assert (=> b!114854 m!131143))

(declare-fun m!131367 () Bool)

(assert (=> bm!12389 m!131367))

(declare-fun m!131369 () Bool)

(assert (=> b!114847 m!131369))

(declare-fun m!131371 () Bool)

(assert (=> b!114860 m!131371))

(assert (=> d!32469 m!131123))

(declare-fun m!131373 () Bool)

(assert (=> b!114863 m!131373))

(assert (=> b!114858 m!131117))

(declare-fun m!131375 () Bool)

(assert (=> b!114858 m!131375))

(assert (=> b!114858 m!130995))

(assert (=> b!114858 m!131153))

(assert (=> b!114858 m!130995))

(assert (=> b!114858 m!131155))

(assert (=> b!114858 m!131117))

(assert (=> b!114858 m!131153))

(declare-fun m!131377 () Bool)

(assert (=> bm!12390 m!131377))

(assert (=> b!114511 d!32469))

(declare-fun d!32471 () Bool)

(assert (=> d!32471 (= (array_inv!1277 (_keys!4405 newMap!16)) (bvsge (size!2376 (_keys!4405 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!114507 d!32471))

(declare-fun d!32473 () Bool)

(assert (=> d!32473 (= (array_inv!1278 (_values!2666 newMap!16)) (bvsge (size!2377 (_values!2666 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!114507 d!32473))

(declare-fun d!32475 () Bool)

(declare-fun res!56492 () Bool)

(declare-fun e!74746 () Bool)

(assert (=> d!32475 (=> (not res!56492) (not e!74746))))

(assert (=> d!32475 (= res!56492 (simpleValid!78 (v!2988 (underlying!387 thiss!992))))))

(assert (=> d!32475 (= (valid!442 (v!2988 (underlying!387 thiss!992))) e!74746)))

(declare-fun b!114864 () Bool)

(declare-fun res!56493 () Bool)

(assert (=> b!114864 (=> (not res!56493) (not e!74746))))

(assert (=> b!114864 (= res!56493 (= (arrayCountValidKeys!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000000 (size!2376 (_keys!4405 (v!2988 (underlying!387 thiss!992))))) (_size!526 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114865 () Bool)

(declare-fun res!56494 () Bool)

(assert (=> b!114865 (=> (not res!56494) (not e!74746))))

(assert (=> b!114865 (= res!56494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4405 (v!2988 (underlying!387 thiss!992))) (mask!6879 (v!2988 (underlying!387 thiss!992)))))))

(declare-fun b!114866 () Bool)

(assert (=> b!114866 (= e!74746 (arrayNoDuplicates!0 (_keys!4405 (v!2988 (underlying!387 thiss!992))) #b00000000000000000000000000000000 Nil!1672))))

(assert (= (and d!32475 res!56492) b!114864))

(assert (= (and b!114864 res!56493) b!114865))

(assert (= (and b!114865 res!56494) b!114866))

(declare-fun m!131379 () Bool)

(assert (=> d!32475 m!131379))

(declare-fun m!131381 () Bool)

(assert (=> b!114864 m!131381))

(declare-fun m!131383 () Bool)

(assert (=> b!114865 m!131383))

(declare-fun m!131385 () Bool)

(assert (=> b!114866 m!131385))

(assert (=> b!114497 d!32475))

(declare-fun d!32477 () Bool)

(assert (=> d!32477 (= (valid!443 thiss!992) (valid!442 (v!2988 (underlying!387 thiss!992))))))

(declare-fun bs!4686 () Bool)

(assert (= bs!4686 d!32477))

(assert (=> bs!4686 m!130987))

(assert (=> start!13090 d!32477))

(declare-fun d!32479 () Bool)

(declare-fun c!20551 () Bool)

(assert (=> d!32479 (= c!20551 ((_ is ValueCellFull!1023) (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) from!355)))))

(declare-fun e!74749 () V!3291)

(assert (=> d!32479 (= (get!1385 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) from!355) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!74749)))

(declare-fun b!114871 () Bool)

(declare-fun get!1386 (ValueCell!1023 V!3291) V!3291)

(assert (=> b!114871 (= e!74749 (get!1386 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) from!355) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!114872 () Bool)

(declare-fun get!1387 (ValueCell!1023 V!3291) V!3291)

(assert (=> b!114872 (= e!74749 (get!1387 (select (arr!2117 (_values!2666 (v!2988 (underlying!387 thiss!992)))) from!355) (dynLambda!401 (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!32479 c!20551) b!114871))

(assert (= (and d!32479 (not c!20551)) b!114872))

(assert (=> b!114871 m!130993))

(assert (=> b!114871 m!130995))

(declare-fun m!131387 () Bool)

(assert (=> b!114871 m!131387))

(assert (=> b!114872 m!130993))

(assert (=> b!114872 m!130995))

(declare-fun m!131389 () Bool)

(assert (=> b!114872 m!131389))

(assert (=> b!114498 d!32479))

(declare-fun d!32481 () Bool)

(declare-fun res!56495 () Bool)

(declare-fun e!74750 () Bool)

(assert (=> d!32481 (=> (not res!56495) (not e!74750))))

(assert (=> d!32481 (= res!56495 (simpleValid!78 newMap!16))))

(assert (=> d!32481 (= (valid!442 newMap!16) e!74750)))

(declare-fun b!114873 () Bool)

(declare-fun res!56496 () Bool)

(assert (=> b!114873 (=> (not res!56496) (not e!74750))))

(assert (=> b!114873 (= res!56496 (= (arrayCountValidKeys!0 (_keys!4405 newMap!16) #b00000000000000000000000000000000 (size!2376 (_keys!4405 newMap!16))) (_size!526 newMap!16)))))

(declare-fun b!114874 () Bool)

(declare-fun res!56497 () Bool)

(assert (=> b!114874 (=> (not res!56497) (not e!74750))))

(assert (=> b!114874 (= res!56497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4405 newMap!16) (mask!6879 newMap!16)))))

(declare-fun b!114875 () Bool)

(assert (=> b!114875 (= e!74750 (arrayNoDuplicates!0 (_keys!4405 newMap!16) #b00000000000000000000000000000000 Nil!1672))))

(assert (= (and d!32481 res!56495) b!114873))

(assert (= (and b!114873 res!56496) b!114874))

(assert (= (and b!114874 res!56497) b!114875))

(declare-fun m!131391 () Bool)

(assert (=> d!32481 m!131391))

(declare-fun m!131393 () Bool)

(assert (=> b!114873 m!131393))

(declare-fun m!131395 () Bool)

(assert (=> b!114874 m!131395))

(declare-fun m!131397 () Bool)

(assert (=> b!114875 m!131397))

(assert (=> b!114504 d!32481))

(declare-fun condMapEmpty!4137 () Bool)

(declare-fun mapDefault!4137 () ValueCell!1023)

(assert (=> mapNonEmpty!4127 (= condMapEmpty!4137 (= mapRest!4128 ((as const (Array (_ BitVec 32) ValueCell!1023)) mapDefault!4137)))))

(declare-fun e!74755 () Bool)

(declare-fun mapRes!4137 () Bool)

(assert (=> mapNonEmpty!4127 (= tp!10259 (and e!74755 mapRes!4137))))

(declare-fun b!114882 () Bool)

(declare-fun e!74756 () Bool)

(assert (=> b!114882 (= e!74756 tp_is_empty!2733)))

(declare-fun b!114883 () Bool)

(assert (=> b!114883 (= e!74755 tp_is_empty!2733)))

(declare-fun mapIsEmpty!4137 () Bool)

(assert (=> mapIsEmpty!4137 mapRes!4137))

(declare-fun mapNonEmpty!4137 () Bool)

(declare-fun tp!10275 () Bool)

(assert (=> mapNonEmpty!4137 (= mapRes!4137 (and tp!10275 e!74756))))

(declare-fun mapValue!4137 () ValueCell!1023)

(declare-fun mapKey!4137 () (_ BitVec 32))

(declare-fun mapRest!4137 () (Array (_ BitVec 32) ValueCell!1023))

(assert (=> mapNonEmpty!4137 (= mapRest!4128 (store mapRest!4137 mapKey!4137 mapValue!4137))))

(assert (= (and mapNonEmpty!4127 condMapEmpty!4137) mapIsEmpty!4137))

(assert (= (and mapNonEmpty!4127 (not condMapEmpty!4137)) mapNonEmpty!4137))

(assert (= (and mapNonEmpty!4137 ((_ is ValueCellFull!1023) mapValue!4137)) b!114882))

(assert (= (and mapNonEmpty!4127 ((_ is ValueCellFull!1023) mapDefault!4137)) b!114883))

(declare-fun m!131399 () Bool)

(assert (=> mapNonEmpty!4137 m!131399))

(declare-fun condMapEmpty!4138 () Bool)

(declare-fun mapDefault!4138 () ValueCell!1023)

(assert (=> mapNonEmpty!4128 (= condMapEmpty!4138 (= mapRest!4127 ((as const (Array (_ BitVec 32) ValueCell!1023)) mapDefault!4138)))))

(declare-fun e!74757 () Bool)

(declare-fun mapRes!4138 () Bool)

(assert (=> mapNonEmpty!4128 (= tp!10257 (and e!74757 mapRes!4138))))

(declare-fun b!114884 () Bool)

(declare-fun e!74758 () Bool)

(assert (=> b!114884 (= e!74758 tp_is_empty!2733)))

(declare-fun b!114885 () Bool)

(assert (=> b!114885 (= e!74757 tp_is_empty!2733)))

(declare-fun mapIsEmpty!4138 () Bool)

(assert (=> mapIsEmpty!4138 mapRes!4138))

(declare-fun mapNonEmpty!4138 () Bool)

(declare-fun tp!10276 () Bool)

(assert (=> mapNonEmpty!4138 (= mapRes!4138 (and tp!10276 e!74758))))

(declare-fun mapValue!4138 () ValueCell!1023)

(declare-fun mapKey!4138 () (_ BitVec 32))

(declare-fun mapRest!4138 () (Array (_ BitVec 32) ValueCell!1023))

(assert (=> mapNonEmpty!4138 (= mapRest!4127 (store mapRest!4138 mapKey!4138 mapValue!4138))))

(assert (= (and mapNonEmpty!4128 condMapEmpty!4138) mapIsEmpty!4138))

(assert (= (and mapNonEmpty!4128 (not condMapEmpty!4138)) mapNonEmpty!4138))

(assert (= (and mapNonEmpty!4138 ((_ is ValueCellFull!1023) mapValue!4138)) b!114884))

(assert (= (and mapNonEmpty!4128 ((_ is ValueCellFull!1023) mapDefault!4138)) b!114885))

(declare-fun m!131401 () Bool)

(assert (=> mapNonEmpty!4138 m!131401))

(declare-fun b_lambda!5155 () Bool)

(assert (= b_lambda!5151 (or (and b!114503 b_free!2633) (and b!114507 b_free!2635 (= (defaultEntry!2683 newMap!16) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))))) b_lambda!5155)))

(declare-fun b_lambda!5157 () Bool)

(assert (= b_lambda!5153 (or (and b!114503 b_free!2633) (and b!114507 b_free!2635 (= (defaultEntry!2683 newMap!16) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))))) b_lambda!5157)))

(declare-fun b_lambda!5159 () Bool)

(assert (= b_lambda!5149 (or (and b!114503 b_free!2633) (and b!114507 b_free!2635 (= (defaultEntry!2683 newMap!16) (defaultEntry!2683 (v!2988 (underlying!387 thiss!992))))) b_lambda!5159)))

(check-sat (not mapNonEmpty!4138) (not d!32469) (not d!32455) (not b!114672) (not b!114650) (not bm!12351) (not b!114858) (not bm!12297) (not bm!12369) (not bm!12347) (not bm!12390) (not b!114586) (not b!114872) (not d!32481) (not b_next!2633) (not bm!12368) (not b!114600) (not d!32441) (not mapNonEmpty!4137) (not b!114646) (not b!114847) (not bm!12387) (not b!114639) (not b!114663) (not b!114654) (not d!32433) (not d!32461) (not bm!12357) (not b!114674) (not b!114652) (not d!32459) (not b!114581) (not bm!12389) (not b!114661) (not bm!12364) (not d!32477) (not b_lambda!5155) tp_is_empty!2733 (not d!32457) (not d!32451) (not b_next!2635) (not b!114865) (not b!114874) (not d!32445) (not d!32437) (not b!114848) (not b!114770) (not b!114763) (not d!32463) (not b!114786) (not d!32431) (not bm!12366) (not b!114866) (not b!114765) (not b!114851) (not b!114642) (not b!114665) (not b!114864) b_and!7107 (not b!114871) (not bm!12348) (not b!114641) (not b!114773) (not d!32453) (not b!114653) (not d!32443) (not b!114854) (not b!114601) (not d!32475) (not bm!12388) (not bm!12346) (not bm!12294) (not b!114875) (not b!114779) (not d!32465) (not b!114599) (not b!114638) (not b!114860) (not b!114607) (not b!114790) (not bm!12359) (not bm!12360) (not b!114664) (not d!32449) (not b!114776) (not b!114633) (not b!114648) (not b!114640) (not b!114849) (not b!114647) (not b!114634) (not b_lambda!5159) (not d!32467) (not b!114651) (not b!114863) (not b_lambda!5157) (not b!114645) (not b!114873) (not d!32447) (not b_lambda!5147) (not bm!12350) (not b!114649) (not b!114662) (not b!114608) b_and!7105 (not b!114637))
(check-sat b_and!7105 b_and!7107 (not b_next!2633) (not b_next!2635))
