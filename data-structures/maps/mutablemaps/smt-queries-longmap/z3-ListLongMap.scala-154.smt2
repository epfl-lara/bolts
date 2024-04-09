; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2994 () Bool)

(assert start!2994)

(declare-fun b!17492 () Bool)

(declare-fun b_free!603 () Bool)

(declare-fun b_next!603 () Bool)

(assert (=> b!17492 (= b_free!603 (not b_next!603))))

(declare-fun tp!2999 () Bool)

(declare-fun b_and!1253 () Bool)

(assert (=> b!17492 (= tp!2999 b_and!1253)))

(declare-fun b!17481 () Bool)

(declare-fun e!10961 () Bool)

(declare-fun e!10960 () Bool)

(assert (=> b!17481 (= e!10961 e!10960)))

(declare-fun b!17482 () Bool)

(declare-fun e!10970 () Bool)

(declare-fun tp_is_empty!867 () Bool)

(assert (=> b!17482 (= e!10970 tp_is_empty!867)))

(declare-fun b!17483 () Bool)

(declare-fun e!10969 () Bool)

(declare-fun e!10968 () Bool)

(declare-fun mapRes!735 () Bool)

(assert (=> b!17483 (= e!10969 (and e!10968 mapRes!735))))

(declare-fun condMapEmpty!735 () Bool)

(declare-datatypes ((V!981 0))(
  ( (V!982 (val!460 Int)) )
))
(declare-datatypes ((ValueCell!234 0))(
  ( (ValueCellFull!234 (v!1424 V!981)) (EmptyCell!234) )
))
(declare-datatypes ((array!931 0))(
  ( (array!932 (arr!447 (Array (_ BitVec 32) ValueCell!234)) (size!537 (_ BitVec 32))) )
))
(declare-datatypes ((array!933 0))(
  ( (array!934 (arr!448 (Array (_ BitVec 32) (_ BitVec 64))) (size!538 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!54 0))(
  ( (LongMapFixedSize!55 (defaultEntry!1638 Int) (mask!4555 (_ BitVec 32)) (extraKeys!1551 (_ BitVec 32)) (zeroValue!1574 V!981) (minValue!1574 V!981) (_size!59 (_ BitVec 32)) (_keys!3063 array!933) (_values!1635 array!931) (_vacant!59 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!54 0))(
  ( (Cell!55 (v!1425 LongMapFixedSize!54)) )
))
(declare-datatypes ((LongMap!54 0))(
  ( (LongMap!55 (underlying!38 Cell!54)) )
))
(declare-fun thiss!848 () LongMap!54)

(declare-fun mapDefault!735 () ValueCell!234)

(assert (=> b!17483 (= condMapEmpty!735 (= (arr!447 (_values!1635 (v!1425 (underlying!38 thiss!848)))) ((as const (Array (_ BitVec 32) ValueCell!234)) mapDefault!735)))))

(declare-fun b!17484 () Bool)

(declare-fun e!10967 () Bool)

(assert (=> b!17484 (= e!10960 e!10967)))

(declare-fun b!17485 () Bool)

(declare-fun e!10963 () Bool)

(declare-fun e!10965 () Bool)

(assert (=> b!17485 (= e!10963 e!10965)))

(declare-fun res!12594 () Bool)

(assert (=> b!17485 (=> (not res!12594) (not e!10965))))

(declare-fun lt!4546 () LongMap!54)

(declare-fun valid!33 (LongMap!54) Bool)

(assert (=> b!17485 (= res!12594 (valid!33 lt!4546))))

(declare-datatypes ((tuple2!716 0))(
  ( (tuple2!717 (_1!359 Bool) (_2!359 LongMapFixedSize!54)) )
))
(declare-fun lt!4548 () tuple2!716)

(assert (=> b!17485 (= lt!4546 (LongMap!55 (Cell!55 (_2!359 lt!4548))))))

(declare-fun key!682 () (_ BitVec 64))

(declare-datatypes ((tuple2!718 0))(
  ( (tuple2!719 (_1!360 Bool) (_2!360 LongMap!54)) )
))
(declare-fun lt!4545 () tuple2!718)

(declare-fun v!259 () V!981)

(declare-fun update!7 (LongMapFixedSize!54 (_ BitVec 64) V!981) tuple2!716)

(assert (=> b!17485 (= lt!4548 (update!7 (v!1425 (underlying!38 (_2!360 lt!4545))) key!682 v!259))))

(declare-fun b!17486 () Bool)

(assert (=> b!17486 (= e!10968 tp_is_empty!867)))

(declare-fun res!12595 () Bool)

(declare-fun e!10966 () Bool)

(assert (=> start!2994 (=> (not res!12595) (not e!10966))))

(assert (=> start!2994 (= res!12595 (valid!33 thiss!848))))

(assert (=> start!2994 e!10966))

(assert (=> start!2994 e!10961))

(assert (=> start!2994 true))

(assert (=> start!2994 tp_is_empty!867))

(declare-fun b!17487 () Bool)

(assert (=> b!17487 (= e!10966 e!10963)))

(declare-fun res!12597 () Bool)

(assert (=> b!17487 (=> (not res!12597) (not e!10963))))

(assert (=> b!17487 (= res!12597 (_1!360 lt!4545))))

(declare-fun e!10964 () tuple2!718)

(assert (=> b!17487 (= lt!4545 e!10964)))

(declare-fun c!1759 () Bool)

(declare-fun imbalanced!10 (LongMap!54) Bool)

(assert (=> b!17487 (= c!1759 (imbalanced!10 thiss!848))))

(declare-fun mapNonEmpty!735 () Bool)

(declare-fun tp!3000 () Bool)

(assert (=> mapNonEmpty!735 (= mapRes!735 (and tp!3000 e!10970))))

(declare-fun mapKey!735 () (_ BitVec 32))

(declare-fun mapRest!735 () (Array (_ BitVec 32) ValueCell!234))

(declare-fun mapValue!735 () ValueCell!234)

(assert (=> mapNonEmpty!735 (= (arr!447 (_values!1635 (v!1425 (underlying!38 thiss!848)))) (store mapRest!735 mapKey!735 mapValue!735))))

(declare-fun b!17488 () Bool)

(declare-fun res!12596 () Bool)

(assert (=> b!17488 (=> (not res!12596) (not e!10965))))

(assert (=> b!17488 (= res!12596 (_1!359 lt!4548))))

(declare-fun mapIsEmpty!735 () Bool)

(assert (=> mapIsEmpty!735 mapRes!735))

(declare-fun b!17489 () Bool)

(assert (=> b!17489 (= e!10964 (tuple2!719 true thiss!848))))

(declare-fun b!17490 () Bool)

(assert (=> b!17490 (= e!10965 false)))

(declare-fun lt!4547 () Bool)

(declare-datatypes ((tuple2!720 0))(
  ( (tuple2!721 (_1!361 (_ BitVec 64)) (_2!361 V!981)) )
))
(declare-datatypes ((List!532 0))(
  ( (Nil!529) (Cons!528 (h!1094 tuple2!720) (t!3173 List!532)) )
))
(declare-datatypes ((ListLongMap!515 0))(
  ( (ListLongMap!516 (toList!273 List!532)) )
))
(declare-fun contains!204 (ListLongMap!515 (_ BitVec 64)) Bool)

(declare-fun map!337 (LongMap!54) ListLongMap!515)

(assert (=> b!17490 (= lt!4547 (contains!204 (map!337 lt!4546) key!682))))

(declare-fun b!17491 () Bool)

(declare-fun repack!7 (LongMap!54) tuple2!718)

(assert (=> b!17491 (= e!10964 (repack!7 thiss!848))))

(declare-fun array_inv!313 (array!933) Bool)

(declare-fun array_inv!314 (array!931) Bool)

(assert (=> b!17492 (= e!10967 (and tp!2999 tp_is_empty!867 (array_inv!313 (_keys!3063 (v!1425 (underlying!38 thiss!848)))) (array_inv!314 (_values!1635 (v!1425 (underlying!38 thiss!848)))) e!10969))))

(assert (= (and start!2994 res!12595) b!17487))

(assert (= (and b!17487 c!1759) b!17491))

(assert (= (and b!17487 (not c!1759)) b!17489))

(assert (= (and b!17487 res!12597) b!17485))

(assert (= (and b!17485 res!12594) b!17488))

(assert (= (and b!17488 res!12596) b!17490))

(assert (= (and b!17483 condMapEmpty!735) mapIsEmpty!735))

(assert (= (and b!17483 (not condMapEmpty!735)) mapNonEmpty!735))

(get-info :version)

(assert (= (and mapNonEmpty!735 ((_ is ValueCellFull!234) mapValue!735)) b!17482))

(assert (= (and b!17483 ((_ is ValueCellFull!234) mapDefault!735)) b!17486))

(assert (= b!17492 b!17483))

(assert (= b!17484 b!17492))

(assert (= b!17481 b!17484))

(assert (= start!2994 b!17481))

(declare-fun m!12293 () Bool)

(assert (=> mapNonEmpty!735 m!12293))

(declare-fun m!12295 () Bool)

(assert (=> b!17487 m!12295))

(declare-fun m!12297 () Bool)

(assert (=> start!2994 m!12297))

(declare-fun m!12299 () Bool)

(assert (=> b!17490 m!12299))

(assert (=> b!17490 m!12299))

(declare-fun m!12301 () Bool)

(assert (=> b!17490 m!12301))

(declare-fun m!12303 () Bool)

(assert (=> b!17492 m!12303))

(declare-fun m!12305 () Bool)

(assert (=> b!17492 m!12305))

(declare-fun m!12307 () Bool)

(assert (=> b!17485 m!12307))

(declare-fun m!12309 () Bool)

(assert (=> b!17485 m!12309))

(declare-fun m!12311 () Bool)

(assert (=> b!17491 m!12311))

(check-sat tp_is_empty!867 (not mapNonEmpty!735) (not b!17487) b_and!1253 (not b_next!603) (not b!17490) (not b!17491) (not start!2994) (not b!17492) (not b!17485))
(check-sat b_and!1253 (not b_next!603))
