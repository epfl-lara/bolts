; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242054 () Bool)

(assert start!242054)

(declare-fun b!2480524 () Bool)

(declare-fun b_free!72217 () Bool)

(declare-fun b_next!72921 () Bool)

(assert (=> b!2480524 (= b_free!72217 (not b_next!72921))))

(declare-fun tp!793936 () Bool)

(declare-fun b_and!188463 () Bool)

(assert (=> b!2480524 (= tp!793936 b_and!188463)))

(declare-fun b!2480520 () Bool)

(declare-fun b_free!72219 () Bool)

(declare-fun b_next!72923 () Bool)

(assert (=> b!2480520 (= b_free!72219 (not b_next!72923))))

(declare-fun tp!793939 () Bool)

(declare-fun b_and!188465 () Bool)

(assert (=> b!2480520 (= tp!793939 b_and!188465)))

(declare-fun b!2480515 () Bool)

(declare-fun res!1050058 () Bool)

(declare-fun e!1574382 () Bool)

(assert (=> b!2480515 (=> (not res!1050058) (not e!1574382))))

(declare-datatypes ((Hashable!3250 0))(
  ( (HashableExt!3249 (__x!18926 Int)) )
))
(declare-datatypes ((K!5435 0))(
  ( (K!5436 (val!8823 Int)) )
))
(declare-datatypes ((V!5637 0))(
  ( (V!5638 (val!8824 Int)) )
))
(declare-datatypes ((tuple2!28714 0))(
  ( (tuple2!28715 (_1!16898 K!5435) (_2!16898 V!5637)) )
))
(declare-datatypes ((List!29166 0))(
  ( (Nil!29066) (Cons!29066 (h!34472 tuple2!28714) (t!210823 List!29166)) )
))
(declare-datatypes ((array!11817 0))(
  ( (array!11818 (arr!5270 (Array (_ BitVec 32) List!29166)) (size!22689 (_ BitVec 32))) )
))
(declare-datatypes ((array!11819 0))(
  ( (array!11820 (arr!5271 (Array (_ BitVec 32) (_ BitVec 64))) (size!22690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6680 0))(
  ( (LongMapFixedSize!6681 (defaultEntry!3714 Int) (mask!8499 (_ BitVec 32)) (extraKeys!3588 (_ BitVec 32)) (zeroValue!3598 List!29166) (minValue!3598 List!29166) (_size!6727 (_ BitVec 32)) (_keys!3637 array!11819) (_values!3620 array!11817) (_vacant!3401 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13177 0))(
  ( (Cell!13178 (v!31392 LongMapFixedSize!6680)) )
))
(declare-datatypes ((MutLongMap!3340 0))(
  ( (LongMap!3340 (underlying!6887 Cell!13177)) (MutLongMapExt!3339 (__x!18927 Int)) )
))
(declare-datatypes ((Cell!13179 0))(
  ( (Cell!13180 (v!31393 MutLongMap!3340)) )
))
(declare-datatypes ((MutableMap!3250 0))(
  ( (MutableMapExt!3249 (__x!18928 Int)) (HashMap!3250 (underlying!6888 Cell!13179) (hashF!5208 Hashable!3250) (_size!6728 (_ BitVec 32)) (defaultValue!3412 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3250)

(declare-fun valid!2548 (MutableMap!3250) Bool)

(assert (=> b!2480515 (= res!1050058 (valid!2548 thiss!42540))))

(declare-fun b!2480516 () Bool)

(declare-fun e!1574385 () Bool)

(declare-datatypes ((Unit!42527 0))(
  ( (Unit!42528) )
))
(declare-datatypes ((tuple2!28716 0))(
  ( (tuple2!28717 (_1!16899 Unit!42527) (_2!16899 MutableMap!3250)) )
))
(declare-fun lt!887601 () tuple2!28716)

(assert (=> b!2480516 (= e!1574385 (valid!2548 (_2!16899 lt!887601)))))

(declare-fun b!2480517 () Bool)

(declare-fun e!1574388 () Bool)

(declare-fun e!1574383 () Bool)

(assert (=> b!2480517 (= e!1574388 e!1574383)))

(declare-fun b!2480518 () Bool)

(declare-fun e!1574391 () Bool)

(assert (=> b!2480518 (= e!1574391 e!1574385)))

(declare-fun res!1050060 () Bool)

(assert (=> b!2480518 (=> res!1050060 e!1574385)))

(declare-datatypes ((tuple2!28718 0))(
  ( (tuple2!28719 (_1!16900 Bool) (_2!16900 MutLongMap!3340)) )
))
(declare-fun lt!887597 () tuple2!28718)

(assert (=> b!2480518 (= res!1050060 (_1!16900 lt!887597))))

(declare-fun b!2480519 () Bool)

(declare-fun e!1574384 () Bool)

(declare-fun tp!793935 () Bool)

(declare-fun mapRes!15478 () Bool)

(assert (=> b!2480519 (= e!1574384 (and tp!793935 mapRes!15478))))

(declare-fun condMapEmpty!15478 () Bool)

(declare-fun mapDefault!15478 () List!29166)

(assert (=> b!2480519 (= condMapEmpty!15478 (= (arr!5270 (_values!3620 (v!31392 (underlying!6887 (v!31393 (underlying!6888 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29166)) mapDefault!15478)))))

(declare-fun mapIsEmpty!15478 () Bool)

(assert (=> mapIsEmpty!15478 mapRes!15478))

(declare-fun e!1574386 () Bool)

(declare-fun e!1574390 () Bool)

(assert (=> b!2480520 (= e!1574386 (and e!1574390 tp!793939))))

(declare-fun b!2480521 () Bool)

(declare-fun e!1574389 () Bool)

(assert (=> b!2480521 (= e!1574383 e!1574389)))

(declare-fun b!2480522 () Bool)

(declare-fun lt!887598 () MutLongMap!3340)

(get-info :version)

(assert (=> b!2480522 (= e!1574390 (and e!1574388 ((_ is LongMap!3340) lt!887598)))))

(assert (=> b!2480522 (= lt!887598 (v!31393 (underlying!6888 thiss!42540)))))

(declare-fun b!2480523 () Bool)

(assert (=> b!2480523 (= e!1574382 (not (or (_1!16900 lt!887597) ((_ is HashMap!3250) (_2!16899 lt!887601)))))))

(assert (=> b!2480523 e!1574391))

(declare-fun res!1050062 () Bool)

(assert (=> b!2480523 (=> (not res!1050062) (not e!1574391))))

(declare-fun lt!887603 () List!29166)

(declare-fun noDuplicateKeys!74 (List!29166) Bool)

(assert (=> b!2480523 (= res!1050062 (noDuplicateKeys!74 lt!887603))))

(declare-fun lt!887604 () Unit!42527)

(declare-fun lt!887600 () List!29166)

(declare-fun key!2246 () K!5435)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!60 (List!29166 K!5435) Unit!42527)

(assert (=> b!2480523 (= lt!887604 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!60 lt!887600 key!2246))))

(declare-fun lt!887599 () Cell!13179)

(declare-fun Unit!42529 () Unit!42527)

(declare-fun Unit!42530 () Unit!42527)

(assert (=> b!2480523 (= lt!887601 (ite (_1!16900 lt!887597) (tuple2!28717 Unit!42529 (HashMap!3250 lt!887599 (hashF!5208 thiss!42540) (bvsub (_size!6728 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3412 thiss!42540))) (tuple2!28717 Unit!42530 (HashMap!3250 lt!887599 (hashF!5208 thiss!42540) (_size!6728 thiss!42540) (defaultValue!3412 thiss!42540)))))))

(assert (=> b!2480523 (= lt!887599 (Cell!13180 (_2!16900 lt!887597)))))

(declare-fun lt!887596 () (_ BitVec 64))

(declare-fun update!181 (MutLongMap!3340 (_ BitVec 64) List!29166) tuple2!28718)

(assert (=> b!2480523 (= lt!887597 (update!181 (v!31393 (underlying!6888 thiss!42540)) lt!887596 lt!887603))))

(declare-fun removePairForKey!64 (List!29166 K!5435) List!29166)

(assert (=> b!2480523 (= lt!887603 (removePairForKey!64 lt!887600 key!2246))))

(declare-datatypes ((ListMap!1035 0))(
  ( (ListMap!1036 (toList!1550 List!29166)) )
))
(declare-fun lt!887602 () ListMap!1035)

(declare-fun map!6155 (MutableMap!3250) ListMap!1035)

(assert (=> b!2480523 (= lt!887602 (map!6155 thiss!42540))))

(declare-fun lambda!93878 () Int)

(declare-fun lt!887595 () Unit!42527)

(declare-datatypes ((tuple2!28720 0))(
  ( (tuple2!28721 (_1!16901 (_ BitVec 64)) (_2!16901 List!29166)) )
))
(declare-datatypes ((List!29167 0))(
  ( (Nil!29067) (Cons!29067 (h!34473 tuple2!28720) (t!210824 List!29167)) )
))
(declare-fun forallContained!845 (List!29167 Int tuple2!28720) Unit!42527)

(declare-datatypes ((ListLongMap!495 0))(
  ( (ListLongMap!496 (toList!1551 List!29167)) )
))
(declare-fun map!6156 (MutLongMap!3340) ListLongMap!495)

(assert (=> b!2480523 (= lt!887595 (forallContained!845 (toList!1551 (map!6156 (v!31393 (underlying!6888 thiss!42540)))) lambda!93878 (tuple2!28721 lt!887596 lt!887600)))))

(declare-fun apply!6902 (MutLongMap!3340 (_ BitVec 64)) List!29166)

(assert (=> b!2480523 (= lt!887600 (apply!6902 (v!31393 (underlying!6888 thiss!42540)) lt!887596))))

(declare-fun hash!677 (Hashable!3250 K!5435) (_ BitVec 64))

(assert (=> b!2480523 (= lt!887596 (hash!677 (hashF!5208 thiss!42540) key!2246))))

(declare-fun mapNonEmpty!15478 () Bool)

(declare-fun tp!793938 () Bool)

(declare-fun tp!793940 () Bool)

(assert (=> mapNonEmpty!15478 (= mapRes!15478 (and tp!793938 tp!793940))))

(declare-fun mapValue!15478 () List!29166)

(declare-fun mapRest!15478 () (Array (_ BitVec 32) List!29166))

(declare-fun mapKey!15478 () (_ BitVec 32))

(assert (=> mapNonEmpty!15478 (= (arr!5270 (_values!3620 (v!31392 (underlying!6887 (v!31393 (underlying!6888 thiss!42540)))))) (store mapRest!15478 mapKey!15478 mapValue!15478))))

(declare-fun res!1050059 () Bool)

(assert (=> start!242054 (=> (not res!1050059) (not e!1574382))))

(assert (=> start!242054 (= res!1050059 ((_ is HashMap!3250) thiss!42540))))

(assert (=> start!242054 e!1574382))

(assert (=> start!242054 e!1574386))

(declare-fun tp_is_empty!12203 () Bool)

(assert (=> start!242054 tp_is_empty!12203))

(declare-fun tp!793934 () Bool)

(declare-fun tp!793937 () Bool)

(declare-fun array_inv!3783 (array!11819) Bool)

(declare-fun array_inv!3784 (array!11817) Bool)

(assert (=> b!2480524 (= e!1574389 (and tp!793936 tp!793934 tp!793937 (array_inv!3783 (_keys!3637 (v!31392 (underlying!6887 (v!31393 (underlying!6888 thiss!42540)))))) (array_inv!3784 (_values!3620 (v!31392 (underlying!6887 (v!31393 (underlying!6888 thiss!42540)))))) e!1574384))))

(declare-fun b!2480525 () Bool)

(declare-fun res!1050061 () Bool)

(assert (=> b!2480525 (=> (not res!1050061) (not e!1574382))))

(declare-fun contains!5070 (MutableMap!3250 K!5435) Bool)

(assert (=> b!2480525 (= res!1050061 (contains!5070 thiss!42540 key!2246))))

(assert (= (and start!242054 res!1050059) b!2480515))

(assert (= (and b!2480515 res!1050058) b!2480525))

(assert (= (and b!2480525 res!1050061) b!2480523))

(assert (= (and b!2480523 res!1050062) b!2480518))

(assert (= (and b!2480518 (not res!1050060)) b!2480516))

(assert (= (and b!2480519 condMapEmpty!15478) mapIsEmpty!15478))

(assert (= (and b!2480519 (not condMapEmpty!15478)) mapNonEmpty!15478))

(assert (= b!2480524 b!2480519))

(assert (= b!2480521 b!2480524))

(assert (= b!2480517 b!2480521))

(assert (= (and b!2480522 ((_ is LongMap!3340) (v!31393 (underlying!6888 thiss!42540)))) b!2480517))

(assert (= b!2480520 b!2480522))

(assert (= (and start!242054 ((_ is HashMap!3250) thiss!42540)) b!2480520))

(declare-fun m!2848563 () Bool)

(assert (=> mapNonEmpty!15478 m!2848563))

(declare-fun m!2848565 () Bool)

(assert (=> b!2480516 m!2848565))

(declare-fun m!2848567 () Bool)

(assert (=> b!2480524 m!2848567))

(declare-fun m!2848569 () Bool)

(assert (=> b!2480524 m!2848569))

(declare-fun m!2848571 () Bool)

(assert (=> b!2480523 m!2848571))

(declare-fun m!2848573 () Bool)

(assert (=> b!2480523 m!2848573))

(declare-fun m!2848575 () Bool)

(assert (=> b!2480523 m!2848575))

(declare-fun m!2848577 () Bool)

(assert (=> b!2480523 m!2848577))

(declare-fun m!2848579 () Bool)

(assert (=> b!2480523 m!2848579))

(declare-fun m!2848581 () Bool)

(assert (=> b!2480523 m!2848581))

(declare-fun m!2848583 () Bool)

(assert (=> b!2480523 m!2848583))

(declare-fun m!2848585 () Bool)

(assert (=> b!2480523 m!2848585))

(declare-fun m!2848587 () Bool)

(assert (=> b!2480523 m!2848587))

(declare-fun m!2848589 () Bool)

(assert (=> b!2480525 m!2848589))

(declare-fun m!2848591 () Bool)

(assert (=> b!2480515 m!2848591))

(check-sat (not b!2480525) (not b_next!72923) (not b!2480515) (not b!2480519) tp_is_empty!12203 b_and!188465 (not b!2480523) b_and!188463 (not mapNonEmpty!15478) (not b!2480524) (not b!2480516) (not b_next!72921))
(check-sat b_and!188465 b_and!188463 (not b_next!72921) (not b_next!72923))
