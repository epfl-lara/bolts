; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413926 () Bool)

(assert start!413926)

(declare-fun b!4307676 () Bool)

(declare-fun b_free!128483 () Bool)

(declare-fun b_next!129187 () Bool)

(assert (=> b!4307676 (= b_free!128483 (not b_next!129187))))

(declare-fun tp!1323785 () Bool)

(declare-fun b_and!339893 () Bool)

(assert (=> b!4307676 (= tp!1323785 b_and!339893)))

(declare-fun b!4307675 () Bool)

(declare-fun b_free!128485 () Bool)

(declare-fun b_next!129189 () Bool)

(assert (=> b!4307675 (= b_free!128485 (not b_next!129189))))

(declare-fun tp!1323781 () Bool)

(declare-fun b_and!339895 () Bool)

(assert (=> b!4307675 (= tp!1323781 b_and!339895)))

(declare-fun b!4307665 () Bool)

(declare-fun res!1765579 () Bool)

(declare-fun e!2678679 () Bool)

(assert (=> b!4307665 (=> (not res!1765579) (not e!2678679))))

(declare-datatypes ((V!9526 0))(
  ( (V!9527 (val!15717 Int)) )
))
(declare-datatypes ((K!9324 0))(
  ( (K!9325 (val!15718 Int)) )
))
(declare-datatypes ((tuple2!46446 0))(
  ( (tuple2!46447 (_1!26502 K!9324) (_2!26502 V!9526)) )
))
(declare-datatypes ((List!48263 0))(
  ( (Nil!48139) (Cons!48139 (h!53571 tuple2!46446) (t!355058 List!48263)) )
))
(declare-datatypes ((array!16676 0))(
  ( (array!16677 (arr!7447 (Array (_ BitVec 32) (_ BitVec 64))) (size!35486 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4547 0))(
  ( (HashableExt!4546 (__x!29918 Int)) )
))
(declare-datatypes ((array!16678 0))(
  ( (array!16679 (arr!7448 (Array (_ BitVec 32) List!48263)) (size!35487 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9262 0))(
  ( (LongMapFixedSize!9263 (defaultEntry!5016 Int) (mask!13175 (_ BitVec 32)) (extraKeys!4880 (_ BitVec 32)) (zeroValue!4890 List!48263) (minValue!4890 List!48263) (_size!9305 (_ BitVec 32)) (_keys!4931 array!16676) (_values!4912 array!16678) (_vacant!4692 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18333 0))(
  ( (Cell!18334 (v!42237 LongMapFixedSize!9262)) )
))
(declare-datatypes ((MutLongMap!4631 0))(
  ( (LongMap!4631 (underlying!9491 Cell!18333)) (MutLongMapExt!4630 (__x!29919 Int)) )
))
(declare-datatypes ((Cell!18335 0))(
  ( (Cell!18336 (v!42238 MutLongMap!4631)) )
))
(declare-datatypes ((MutableMap!4537 0))(
  ( (MutableMapExt!4536 (__x!29920 Int)) (HashMap!4537 (underlying!9492 Cell!18335) (hashF!6651 Hashable!4547) (_size!9306 (_ BitVec 32)) (defaultValue!4708 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4537)

(declare-fun valid!3620 (MutableMap!4537) Bool)

(assert (=> b!4307665 (= res!1765579 (valid!3620 thiss!42308))))

(declare-fun b!4307666 () Bool)

(declare-datatypes ((Unit!67184 0))(
  ( (Unit!67185) )
))
(declare-fun e!2678677 () Unit!67184)

(declare-fun Unit!67186 () Unit!67184)

(assert (=> b!4307666 (= e!2678677 Unit!67186)))

(declare-fun b!4307667 () Bool)

(declare-fun e!2678676 () Bool)

(assert (=> b!4307667 (= e!2678679 e!2678676)))

(declare-fun res!1765577 () Bool)

(assert (=> b!4307667 (=> (not res!1765577) (not e!2678676))))

(declare-fun key!2048 () K!9324)

(declare-fun contains!10099 (MutableMap!4537 K!9324) Bool)

(assert (=> b!4307667 (= res!1765577 (not (contains!10099 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46448 0))(
  ( (tuple2!46449 (_1!26503 (_ BitVec 64)) (_2!26503 List!48263)) )
))
(declare-datatypes ((List!48264 0))(
  ( (Nil!48140) (Cons!48140 (h!53572 tuple2!46448) (t!355059 List!48264)) )
))
(declare-datatypes ((ListLongMap!967 0))(
  ( (ListLongMap!968 (toList!2355 List!48264)) )
))
(declare-fun lt!1528368 () ListLongMap!967)

(declare-fun map!10120 (MutLongMap!4631) ListLongMap!967)

(assert (=> b!4307667 (= lt!1528368 (map!10120 (v!42238 (underlying!9492 thiss!42308))))))

(declare-datatypes ((ListMap!1637 0))(
  ( (ListMap!1638 (toList!2356 List!48263)) )
))
(declare-fun lt!1528371 () ListMap!1637)

(declare-fun map!10121 (MutableMap!4537) ListMap!1637)

(assert (=> b!4307667 (= lt!1528371 (map!10121 thiss!42308))))

(declare-fun b!4307668 () Bool)

(declare-fun e!2678673 () List!48263)

(assert (=> b!4307668 (= e!2678673 Nil!48139)))

(declare-fun b!4307669 () Bool)

(declare-fun e!2678680 () Bool)

(declare-fun e!2678674 () Bool)

(assert (=> b!4307669 (= e!2678680 e!2678674)))

(declare-fun b!4307670 () Bool)

(declare-fun e!2678669 () Bool)

(declare-fun tp!1323784 () Bool)

(declare-fun mapRes!20710 () Bool)

(assert (=> b!4307670 (= e!2678669 (and tp!1323784 mapRes!20710))))

(declare-fun condMapEmpty!20710 () Bool)

(declare-fun mapDefault!20710 () List!48263)

(assert (=> b!4307670 (= condMapEmpty!20710 (= (arr!7448 (_values!4912 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48263)) mapDefault!20710)))))

(declare-fun b!4307672 () Bool)

(declare-fun e!2678678 () Bool)

(assert (=> b!4307672 (= e!2678676 e!2678678)))

(declare-fun res!1765581 () Bool)

(assert (=> b!4307672 (=> (not res!1765581) (not e!2678678))))

(declare-datatypes ((tuple2!46450 0))(
  ( (tuple2!46451 (_1!26504 Bool) (_2!26504 MutLongMap!4631)) )
))
(declare-fun lt!1528363 () tuple2!46450)

(assert (=> b!4307672 (= res!1765581 (_1!26504 lt!1528363))))

(declare-fun lt!1528367 () MutableMap!4537)

(assert (=> b!4307672 (= lt!1528367 (HashMap!4537 (Cell!18336 (_2!26504 lt!1528363)) (hashF!6651 thiss!42308) (_size!9306 thiss!42308) (defaultValue!4708 thiss!42308)))))

(declare-fun lt!1528375 () List!48263)

(declare-fun lt!1528366 () (_ BitVec 64))

(declare-fun update!410 (MutLongMap!4631 (_ BitVec 64) List!48263) tuple2!46450)

(assert (=> b!4307672 (= lt!1528363 (update!410 (v!42238 (underlying!9492 thiss!42308)) lt!1528366 lt!1528375))))

(declare-fun lt!1528377 () tuple2!46446)

(declare-fun lt!1528365 () List!48263)

(assert (=> b!4307672 (= lt!1528375 (Cons!48139 lt!1528377 lt!1528365))))

(declare-fun v!9179 () V!9526)

(assert (=> b!4307672 (= lt!1528377 (tuple2!46447 key!2048 v!9179))))

(assert (=> b!4307672 (= lt!1528365 e!2678673)))

(declare-fun c!732381 () Bool)

(declare-fun contains!10100 (MutLongMap!4631 (_ BitVec 64)) Bool)

(assert (=> b!4307672 (= c!732381 (contains!10100 (v!42238 (underlying!9492 thiss!42308)) lt!1528366))))

(declare-fun hash!970 (Hashable!4547 K!9324) (_ BitVec 64))

(assert (=> b!4307672 (= lt!1528366 (hash!970 (hashF!6651 thiss!42308) key!2048))))

(declare-fun b!4307673 () Bool)

(declare-fun e!2678671 () Bool)

(declare-fun lt!1528370 () MutLongMap!4631)

(get-info :version)

(assert (=> b!4307673 (= e!2678671 (and e!2678680 ((_ is LongMap!4631) lt!1528370)))))

(assert (=> b!4307673 (= lt!1528370 (v!42238 (underlying!9492 thiss!42308)))))

(declare-fun b!4307674 () Bool)

(assert (=> b!4307674 (= e!2678678 (not (valid!3620 lt!1528367)))))

(declare-fun e!2678682 () Bool)

(assert (=> b!4307674 e!2678682))

(declare-fun res!1765578 () Bool)

(assert (=> b!4307674 (=> (not res!1765578) (not e!2678682))))

(declare-fun lt!1528364 () ListLongMap!967)

(declare-fun lambda!132704 () Int)

(declare-fun forall!8713 (List!48264 Int) Bool)

(assert (=> b!4307674 (= res!1765578 (forall!8713 (toList!2355 lt!1528364) lambda!132704))))

(assert (=> b!4307674 (= lt!1528364 (map!10120 (_2!26504 lt!1528363)))))

(declare-fun lt!1528376 () ListLongMap!967)

(declare-fun eq!132 (ListMap!1637 ListMap!1637) Bool)

(declare-fun extractMap!315 (List!48264) ListMap!1637)

(declare-fun +!244 (ListMap!1637 tuple2!46446) ListMap!1637)

(assert (=> b!4307674 (eq!132 (extractMap!315 (toList!2355 lt!1528376)) (+!244 (extractMap!315 (toList!2355 lt!1528368)) lt!1528377))))

(declare-fun lt!1528374 () Unit!67184)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!49 (ListLongMap!967 (_ BitVec 64) List!48263 K!9324 V!9526 Hashable!4547) Unit!67184)

(assert (=> b!4307674 (= lt!1528374 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!49 lt!1528368 lt!1528366 lt!1528375 key!2048 v!9179 (hashF!6651 thiss!42308)))))

(declare-fun e!2678672 () Bool)

(assert (=> b!4307674 e!2678672))

(declare-fun res!1765576 () Bool)

(assert (=> b!4307674 (=> (not res!1765576) (not e!2678672))))

(assert (=> b!4307674 (= res!1765576 (forall!8713 (toList!2355 lt!1528376) lambda!132704))))

(declare-fun +!245 (ListLongMap!967 tuple2!46448) ListLongMap!967)

(assert (=> b!4307674 (= lt!1528376 (+!245 lt!1528368 (tuple2!46449 lt!1528366 lt!1528375)))))

(declare-fun lt!1528372 () Unit!67184)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!138 (ListLongMap!967 (_ BitVec 64) List!48263 Hashable!4547) Unit!67184)

(assert (=> b!4307674 (= lt!1528372 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!138 lt!1528368 lt!1528366 lt!1528375 (hashF!6651 thiss!42308)))))

(declare-fun lt!1528373 () Unit!67184)

(assert (=> b!4307674 (= lt!1528373 e!2678677)))

(declare-fun c!732382 () Bool)

(declare-fun isEmpty!28075 (List!48263) Bool)

(assert (=> b!4307674 (= c!732382 (not (isEmpty!28075 lt!1528365)))))

(declare-fun mapIsEmpty!20710 () Bool)

(assert (=> mapIsEmpty!20710 mapRes!20710))

(declare-fun e!2678670 () Bool)

(assert (=> b!4307675 (= e!2678670 (and e!2678671 tp!1323781))))

(declare-fun tp!1323780 () Bool)

(declare-fun e!2678681 () Bool)

(declare-fun tp!1323782 () Bool)

(declare-fun array_inv!5341 (array!16676) Bool)

(declare-fun array_inv!5342 (array!16678) Bool)

(assert (=> b!4307676 (= e!2678681 (and tp!1323785 tp!1323780 tp!1323782 (array_inv!5341 (_keys!4931 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) (array_inv!5342 (_values!4912 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) e!2678669))))

(declare-fun b!4307677 () Bool)

(declare-fun apply!10985 (MutLongMap!4631 (_ BitVec 64)) List!48263)

(assert (=> b!4307677 (= e!2678673 (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528366))))

(declare-fun mapNonEmpty!20710 () Bool)

(declare-fun tp!1323779 () Bool)

(declare-fun tp!1323783 () Bool)

(assert (=> mapNonEmpty!20710 (= mapRes!20710 (and tp!1323779 tp!1323783))))

(declare-fun mapKey!20710 () (_ BitVec 32))

(declare-fun mapRest!20710 () (Array (_ BitVec 32) List!48263))

(declare-fun mapValue!20710 () List!48263)

(assert (=> mapNonEmpty!20710 (= (arr!7448 (_values!4912 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) (store mapRest!20710 mapKey!20710 mapValue!20710))))

(declare-fun b!4307671 () Bool)

(assert (=> b!4307671 (= e!2678682 (eq!132 (map!10121 lt!1528367) (+!244 lt!1528371 lt!1528377)))))

(declare-fun res!1765575 () Bool)

(assert (=> start!413926 (=> (not res!1765575) (not e!2678679))))

(assert (=> start!413926 (= res!1765575 ((_ is HashMap!4537) thiss!42308))))

(assert (=> start!413926 e!2678679))

(assert (=> start!413926 e!2678670))

(declare-fun tp_is_empty!23645 () Bool)

(assert (=> start!413926 tp_is_empty!23645))

(declare-fun tp_is_empty!23647 () Bool)

(assert (=> start!413926 tp_is_empty!23647))

(declare-fun b!4307678 () Bool)

(declare-fun res!1765580 () Bool)

(assert (=> b!4307678 (=> (not res!1765580) (not e!2678682))))

(declare-fun allKeysSameHashInMap!323 (ListLongMap!967 Hashable!4547) Bool)

(assert (=> b!4307678 (= res!1765580 (allKeysSameHashInMap!323 lt!1528364 (hashF!6651 thiss!42308)))))

(declare-fun b!4307679 () Bool)

(assert (=> b!4307679 (= e!2678674 e!2678681)))

(declare-fun b!4307680 () Bool)

(assert (=> b!4307680 (= e!2678672 (allKeysSameHashInMap!323 lt!1528376 (hashF!6651 thiss!42308)))))

(declare-fun b!4307681 () Bool)

(declare-fun lt!1528378 () Unit!67184)

(assert (=> b!4307681 (= e!2678677 lt!1528378)))

(declare-fun lt!1528369 () Unit!67184)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!162 (List!48264 (_ BitVec 64) List!48263 Hashable!4547) Unit!67184)

(assert (=> b!4307681 (= lt!1528369 (lemmaInLongMapAllKeySameHashThenForTuple!162 (toList!2355 lt!1528368) lt!1528366 lt!1528365 (hashF!6651 thiss!42308)))))

(declare-fun allKeysSameHash!172 (List!48263 (_ BitVec 64) Hashable!4547) Bool)

(assert (=> b!4307681 (allKeysSameHash!172 lt!1528365 lt!1528366 (hashF!6651 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!156 (List!48263 K!9324 (_ BitVec 64) Hashable!4547) Unit!67184)

(assert (=> b!4307681 (= lt!1528378 (lemmaRemovePairForKeyPreservesHash!156 lt!1528365 key!2048 lt!1528366 (hashF!6651 thiss!42308)))))

(declare-fun removePairForKey!196 (List!48263 K!9324) List!48263)

(assert (=> b!4307681 (allKeysSameHash!172 (removePairForKey!196 lt!1528365 key!2048) lt!1528366 (hashF!6651 thiss!42308))))

(assert (= (and start!413926 res!1765575) b!4307665))

(assert (= (and b!4307665 res!1765579) b!4307667))

(assert (= (and b!4307667 res!1765577) b!4307672))

(assert (= (and b!4307672 c!732381) b!4307677))

(assert (= (and b!4307672 (not c!732381)) b!4307668))

(assert (= (and b!4307672 res!1765581) b!4307674))

(assert (= (and b!4307674 c!732382) b!4307681))

(assert (= (and b!4307674 (not c!732382)) b!4307666))

(assert (= (and b!4307674 res!1765576) b!4307680))

(assert (= (and b!4307674 res!1765578) b!4307678))

(assert (= (and b!4307678 res!1765580) b!4307671))

(assert (= (and b!4307670 condMapEmpty!20710) mapIsEmpty!20710))

(assert (= (and b!4307670 (not condMapEmpty!20710)) mapNonEmpty!20710))

(assert (= b!4307676 b!4307670))

(assert (= b!4307679 b!4307676))

(assert (= b!4307669 b!4307679))

(assert (= (and b!4307673 ((_ is LongMap!4631) (v!42238 (underlying!9492 thiss!42308)))) b!4307669))

(assert (= b!4307675 b!4307673))

(assert (= (and start!413926 ((_ is HashMap!4537) thiss!42308)) b!4307675))

(declare-fun m!4900605 () Bool)

(assert (=> b!4307674 m!4900605))

(declare-fun m!4900607 () Bool)

(assert (=> b!4307674 m!4900607))

(declare-fun m!4900609 () Bool)

(assert (=> b!4307674 m!4900609))

(declare-fun m!4900611 () Bool)

(assert (=> b!4307674 m!4900611))

(declare-fun m!4900613 () Bool)

(assert (=> b!4307674 m!4900613))

(declare-fun m!4900615 () Bool)

(assert (=> b!4307674 m!4900615))

(declare-fun m!4900617 () Bool)

(assert (=> b!4307674 m!4900617))

(declare-fun m!4900619 () Bool)

(assert (=> b!4307674 m!4900619))

(declare-fun m!4900621 () Bool)

(assert (=> b!4307674 m!4900621))

(declare-fun m!4900623 () Bool)

(assert (=> b!4307674 m!4900623))

(assert (=> b!4307674 m!4900609))

(assert (=> b!4307674 m!4900613))

(assert (=> b!4307674 m!4900611))

(declare-fun m!4900625 () Bool)

(assert (=> b!4307674 m!4900625))

(declare-fun m!4900627 () Bool)

(assert (=> b!4307674 m!4900627))

(declare-fun m!4900629 () Bool)

(assert (=> b!4307680 m!4900629))

(declare-fun m!4900631 () Bool)

(assert (=> b!4307671 m!4900631))

(declare-fun m!4900633 () Bool)

(assert (=> b!4307671 m!4900633))

(assert (=> b!4307671 m!4900631))

(assert (=> b!4307671 m!4900633))

(declare-fun m!4900635 () Bool)

(assert (=> b!4307671 m!4900635))

(declare-fun m!4900637 () Bool)

(assert (=> b!4307678 m!4900637))

(declare-fun m!4900639 () Bool)

(assert (=> b!4307681 m!4900639))

(declare-fun m!4900641 () Bool)

(assert (=> b!4307681 m!4900641))

(declare-fun m!4900643 () Bool)

(assert (=> b!4307681 m!4900643))

(assert (=> b!4307681 m!4900641))

(declare-fun m!4900645 () Bool)

(assert (=> b!4307681 m!4900645))

(declare-fun m!4900647 () Bool)

(assert (=> b!4307681 m!4900647))

(declare-fun m!4900649 () Bool)

(assert (=> b!4307665 m!4900649))

(declare-fun m!4900651 () Bool)

(assert (=> b!4307677 m!4900651))

(declare-fun m!4900653 () Bool)

(assert (=> b!4307676 m!4900653))

(declare-fun m!4900655 () Bool)

(assert (=> b!4307676 m!4900655))

(declare-fun m!4900657 () Bool)

(assert (=> b!4307667 m!4900657))

(declare-fun m!4900659 () Bool)

(assert (=> b!4307667 m!4900659))

(declare-fun m!4900661 () Bool)

(assert (=> b!4307667 m!4900661))

(declare-fun m!4900663 () Bool)

(assert (=> mapNonEmpty!20710 m!4900663))

(declare-fun m!4900665 () Bool)

(assert (=> b!4307672 m!4900665))

(declare-fun m!4900667 () Bool)

(assert (=> b!4307672 m!4900667))

(declare-fun m!4900669 () Bool)

(assert (=> b!4307672 m!4900669))

(check-sat (not b_next!129189) (not b!4307681) (not mapNonEmpty!20710) (not b!4307671) (not b_next!129187) tp_is_empty!23645 tp_is_empty!23647 (not b!4307676) (not b!4307667) b_and!339893 (not b!4307680) (not b!4307677) (not b!4307678) (not b!4307665) b_and!339895 (not b!4307672) (not b!4307670) (not b!4307674))
(check-sat b_and!339893 b_and!339895 (not b_next!129189) (not b_next!129187))
(get-model)

(declare-fun d!1267700 () Bool)

(declare-fun res!1765586 () Bool)

(declare-fun e!2678687 () Bool)

(assert (=> d!1267700 (=> res!1765586 e!2678687)))

(assert (=> d!1267700 (= res!1765586 ((_ is Nil!48140) (toList!2355 lt!1528376)))))

(assert (=> d!1267700 (= (forall!8713 (toList!2355 lt!1528376) lambda!132704) e!2678687)))

(declare-fun b!4307686 () Bool)

(declare-fun e!2678688 () Bool)

(assert (=> b!4307686 (= e!2678687 e!2678688)))

(declare-fun res!1765587 () Bool)

(assert (=> b!4307686 (=> (not res!1765587) (not e!2678688))))

(declare-fun dynLambda!20417 (Int tuple2!46448) Bool)

(assert (=> b!4307686 (= res!1765587 (dynLambda!20417 lambda!132704 (h!53572 (toList!2355 lt!1528376))))))

(declare-fun b!4307687 () Bool)

(assert (=> b!4307687 (= e!2678688 (forall!8713 (t!355059 (toList!2355 lt!1528376)) lambda!132704))))

(assert (= (and d!1267700 (not res!1765586)) b!4307686))

(assert (= (and b!4307686 res!1765587) b!4307687))

(declare-fun b_lambda!126559 () Bool)

(assert (=> (not b_lambda!126559) (not b!4307686)))

(declare-fun m!4900671 () Bool)

(assert (=> b!4307686 m!4900671))

(declare-fun m!4900673 () Bool)

(assert (=> b!4307687 m!4900673))

(assert (=> b!4307674 d!1267700))

(declare-fun bs!604803 () Bool)

(declare-fun d!1267702 () Bool)

(assert (= bs!604803 (and d!1267702 b!4307674)))

(declare-fun lambda!132709 () Int)

(assert (=> bs!604803 (= lambda!132709 lambda!132704)))

(declare-fun e!2678691 () Bool)

(assert (=> d!1267702 e!2678691))

(declare-fun res!1765590 () Bool)

(assert (=> d!1267702 (=> (not res!1765590) (not e!2678691))))

(declare-fun lt!1528384 () ListLongMap!967)

(assert (=> d!1267702 (= res!1765590 (forall!8713 (toList!2355 lt!1528384) lambda!132709))))

(assert (=> d!1267702 (= lt!1528384 (+!245 lt!1528368 (tuple2!46449 lt!1528366 lt!1528375)))))

(declare-fun lt!1528383 () Unit!67184)

(declare-fun choose!26239 (ListLongMap!967 (_ BitVec 64) List!48263 Hashable!4547) Unit!67184)

(assert (=> d!1267702 (= lt!1528383 (choose!26239 lt!1528368 lt!1528366 lt!1528375 (hashF!6651 thiss!42308)))))

(assert (=> d!1267702 (forall!8713 (toList!2355 lt!1528368) lambda!132709)))

(assert (=> d!1267702 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!138 lt!1528368 lt!1528366 lt!1528375 (hashF!6651 thiss!42308)) lt!1528383)))

(declare-fun b!4307690 () Bool)

(assert (=> b!4307690 (= e!2678691 (allKeysSameHashInMap!323 lt!1528384 (hashF!6651 thiss!42308)))))

(assert (= (and d!1267702 res!1765590) b!4307690))

(declare-fun m!4900675 () Bool)

(assert (=> d!1267702 m!4900675))

(assert (=> d!1267702 m!4900617))

(declare-fun m!4900677 () Bool)

(assert (=> d!1267702 m!4900677))

(declare-fun m!4900679 () Bool)

(assert (=> d!1267702 m!4900679))

(declare-fun m!4900681 () Bool)

(assert (=> b!4307690 m!4900681))

(assert (=> b!4307674 d!1267702))

(declare-fun d!1267704 () Bool)

(declare-fun map!10122 (LongMapFixedSize!9262) ListLongMap!967)

(assert (=> d!1267704 (= (map!10120 (_2!26504 lt!1528363)) (map!10122 (v!42237 (underlying!9491 (_2!26504 lt!1528363)))))))

(declare-fun bs!604804 () Bool)

(assert (= bs!604804 d!1267704))

(declare-fun m!4900683 () Bool)

(assert (=> bs!604804 m!4900683))

(assert (=> b!4307674 d!1267704))

(declare-fun bs!604805 () Bool)

(declare-fun d!1267706 () Bool)

(assert (= bs!604805 (and d!1267706 b!4307674)))

(declare-fun lambda!132712 () Int)

(assert (=> bs!604805 (= lambda!132712 lambda!132704)))

(declare-fun bs!604806 () Bool)

(assert (= bs!604806 (and d!1267706 d!1267702)))

(assert (=> bs!604806 (= lambda!132712 lambda!132709)))

(assert (=> d!1267706 (eq!132 (extractMap!315 (toList!2355 (+!245 lt!1528368 (tuple2!46449 lt!1528366 lt!1528375)))) (+!244 (extractMap!315 (toList!2355 lt!1528368)) (tuple2!46447 key!2048 v!9179)))))

(declare-fun lt!1528387 () Unit!67184)

(declare-fun choose!26240 (ListLongMap!967 (_ BitVec 64) List!48263 K!9324 V!9526 Hashable!4547) Unit!67184)

(assert (=> d!1267706 (= lt!1528387 (choose!26240 lt!1528368 lt!1528366 lt!1528375 key!2048 v!9179 (hashF!6651 thiss!42308)))))

(assert (=> d!1267706 (forall!8713 (toList!2355 lt!1528368) lambda!132712)))

(assert (=> d!1267706 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!49 lt!1528368 lt!1528366 lt!1528375 key!2048 v!9179 (hashF!6651 thiss!42308)) lt!1528387)))

(declare-fun bs!604807 () Bool)

(assert (= bs!604807 d!1267706))

(declare-fun m!4900685 () Bool)

(assert (=> bs!604807 m!4900685))

(declare-fun m!4900687 () Bool)

(assert (=> bs!604807 m!4900687))

(declare-fun m!4900689 () Bool)

(assert (=> bs!604807 m!4900689))

(assert (=> bs!604807 m!4900609))

(assert (=> bs!604807 m!4900687))

(declare-fun m!4900691 () Bool)

(assert (=> bs!604807 m!4900691))

(assert (=> bs!604807 m!4900685))

(assert (=> bs!604807 m!4900617))

(declare-fun m!4900693 () Bool)

(assert (=> bs!604807 m!4900693))

(assert (=> bs!604807 m!4900609))

(assert (=> b!4307674 d!1267706))

(declare-fun d!1267708 () Bool)

(declare-fun res!1765591 () Bool)

(declare-fun e!2678692 () Bool)

(assert (=> d!1267708 (=> res!1765591 e!2678692)))

(assert (=> d!1267708 (= res!1765591 ((_ is Nil!48140) (toList!2355 lt!1528364)))))

(assert (=> d!1267708 (= (forall!8713 (toList!2355 lt!1528364) lambda!132704) e!2678692)))

(declare-fun b!4307691 () Bool)

(declare-fun e!2678693 () Bool)

(assert (=> b!4307691 (= e!2678692 e!2678693)))

(declare-fun res!1765592 () Bool)

(assert (=> b!4307691 (=> (not res!1765592) (not e!2678693))))

(assert (=> b!4307691 (= res!1765592 (dynLambda!20417 lambda!132704 (h!53572 (toList!2355 lt!1528364))))))

(declare-fun b!4307692 () Bool)

(assert (=> b!4307692 (= e!2678693 (forall!8713 (t!355059 (toList!2355 lt!1528364)) lambda!132704))))

(assert (= (and d!1267708 (not res!1765591)) b!4307691))

(assert (= (and b!4307691 res!1765592) b!4307692))

(declare-fun b_lambda!126561 () Bool)

(assert (=> (not b_lambda!126561) (not b!4307691)))

(declare-fun m!4900695 () Bool)

(assert (=> b!4307691 m!4900695))

(declare-fun m!4900697 () Bool)

(assert (=> b!4307692 m!4900697))

(assert (=> b!4307674 d!1267708))

(declare-fun d!1267710 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7552 (List!48263) (InoxSet tuple2!46446))

(assert (=> d!1267710 (= (eq!132 (extractMap!315 (toList!2355 lt!1528376)) (+!244 (extractMap!315 (toList!2355 lt!1528368)) lt!1528377)) (= (content!7552 (toList!2356 (extractMap!315 (toList!2355 lt!1528376)))) (content!7552 (toList!2356 (+!244 (extractMap!315 (toList!2355 lt!1528368)) lt!1528377)))))))

(declare-fun bs!604808 () Bool)

(assert (= bs!604808 d!1267710))

(declare-fun m!4900699 () Bool)

(assert (=> bs!604808 m!4900699))

(declare-fun m!4900701 () Bool)

(assert (=> bs!604808 m!4900701))

(assert (=> b!4307674 d!1267710))

(declare-fun d!1267712 () Bool)

(assert (=> d!1267712 (= (isEmpty!28075 lt!1528365) ((_ is Nil!48139) lt!1528365))))

(assert (=> b!4307674 d!1267712))

(declare-fun bs!604809 () Bool)

(declare-fun d!1267714 () Bool)

(assert (= bs!604809 (and d!1267714 b!4307674)))

(declare-fun lambda!132715 () Int)

(assert (=> bs!604809 (= lambda!132715 lambda!132704)))

(declare-fun bs!604810 () Bool)

(assert (= bs!604810 (and d!1267714 d!1267702)))

(assert (=> bs!604810 (= lambda!132715 lambda!132709)))

(declare-fun bs!604811 () Bool)

(assert (= bs!604811 (and d!1267714 d!1267706)))

(assert (=> bs!604811 (= lambda!132715 lambda!132712)))

(declare-fun lt!1528390 () ListMap!1637)

(declare-fun invariantList!567 (List!48263) Bool)

(assert (=> d!1267714 (invariantList!567 (toList!2356 lt!1528390))))

(declare-fun e!2678696 () ListMap!1637)

(assert (=> d!1267714 (= lt!1528390 e!2678696)))

(declare-fun c!732385 () Bool)

(assert (=> d!1267714 (= c!732385 ((_ is Cons!48140) (toList!2355 lt!1528368)))))

(assert (=> d!1267714 (forall!8713 (toList!2355 lt!1528368) lambda!132715)))

(assert (=> d!1267714 (= (extractMap!315 (toList!2355 lt!1528368)) lt!1528390)))

(declare-fun b!4307697 () Bool)

(declare-fun addToMapMapFromBucket!35 (List!48263 ListMap!1637) ListMap!1637)

(assert (=> b!4307697 (= e!2678696 (addToMapMapFromBucket!35 (_2!26503 (h!53572 (toList!2355 lt!1528368))) (extractMap!315 (t!355059 (toList!2355 lt!1528368)))))))

(declare-fun b!4307698 () Bool)

(assert (=> b!4307698 (= e!2678696 (ListMap!1638 Nil!48139))))

(assert (= (and d!1267714 c!732385) b!4307697))

(assert (= (and d!1267714 (not c!732385)) b!4307698))

(declare-fun m!4900703 () Bool)

(assert (=> d!1267714 m!4900703))

(declare-fun m!4900705 () Bool)

(assert (=> d!1267714 m!4900705))

(declare-fun m!4900707 () Bool)

(assert (=> b!4307697 m!4900707))

(assert (=> b!4307697 m!4900707))

(declare-fun m!4900709 () Bool)

(assert (=> b!4307697 m!4900709))

(assert (=> b!4307674 d!1267714))

(declare-fun bs!604812 () Bool)

(declare-fun b!4307703 () Bool)

(assert (= bs!604812 (and b!4307703 b!4307674)))

(declare-fun lambda!132718 () Int)

(assert (=> bs!604812 (= lambda!132718 lambda!132704)))

(declare-fun bs!604813 () Bool)

(assert (= bs!604813 (and b!4307703 d!1267702)))

(assert (=> bs!604813 (= lambda!132718 lambda!132709)))

(declare-fun bs!604814 () Bool)

(assert (= bs!604814 (and b!4307703 d!1267706)))

(assert (=> bs!604814 (= lambda!132718 lambda!132712)))

(declare-fun bs!604815 () Bool)

(assert (= bs!604815 (and b!4307703 d!1267714)))

(assert (=> bs!604815 (= lambda!132718 lambda!132715)))

(declare-fun d!1267716 () Bool)

(declare-fun res!1765597 () Bool)

(declare-fun e!2678699 () Bool)

(assert (=> d!1267716 (=> (not res!1765597) (not e!2678699))))

(declare-fun valid!3621 (MutLongMap!4631) Bool)

(assert (=> d!1267716 (= res!1765597 (valid!3621 (v!42238 (underlying!9492 lt!1528367))))))

(assert (=> d!1267716 (= (valid!3620 lt!1528367) e!2678699)))

(declare-fun res!1765598 () Bool)

(assert (=> b!4307703 (=> (not res!1765598) (not e!2678699))))

(assert (=> b!4307703 (= res!1765598 (forall!8713 (toList!2355 (map!10120 (v!42238 (underlying!9492 lt!1528367)))) lambda!132718))))

(declare-fun b!4307704 () Bool)

(assert (=> b!4307704 (= e!2678699 (allKeysSameHashInMap!323 (map!10120 (v!42238 (underlying!9492 lt!1528367))) (hashF!6651 lt!1528367)))))

(assert (= (and d!1267716 res!1765597) b!4307703))

(assert (= (and b!4307703 res!1765598) b!4307704))

(declare-fun m!4900711 () Bool)

(assert (=> d!1267716 m!4900711))

(declare-fun m!4900713 () Bool)

(assert (=> b!4307703 m!4900713))

(declare-fun m!4900715 () Bool)

(assert (=> b!4307703 m!4900715))

(assert (=> b!4307704 m!4900713))

(assert (=> b!4307704 m!4900713))

(declare-fun m!4900717 () Bool)

(assert (=> b!4307704 m!4900717))

(assert (=> b!4307674 d!1267716))

(declare-fun bs!604816 () Bool)

(declare-fun d!1267718 () Bool)

(assert (= bs!604816 (and d!1267718 b!4307703)))

(declare-fun lambda!132719 () Int)

(assert (=> bs!604816 (= lambda!132719 lambda!132718)))

(declare-fun bs!604817 () Bool)

(assert (= bs!604817 (and d!1267718 d!1267702)))

(assert (=> bs!604817 (= lambda!132719 lambda!132709)))

(declare-fun bs!604818 () Bool)

(assert (= bs!604818 (and d!1267718 b!4307674)))

(assert (=> bs!604818 (= lambda!132719 lambda!132704)))

(declare-fun bs!604819 () Bool)

(assert (= bs!604819 (and d!1267718 d!1267706)))

(assert (=> bs!604819 (= lambda!132719 lambda!132712)))

(declare-fun bs!604820 () Bool)

(assert (= bs!604820 (and d!1267718 d!1267714)))

(assert (=> bs!604820 (= lambda!132719 lambda!132715)))

(declare-fun lt!1528391 () ListMap!1637)

(assert (=> d!1267718 (invariantList!567 (toList!2356 lt!1528391))))

(declare-fun e!2678700 () ListMap!1637)

(assert (=> d!1267718 (= lt!1528391 e!2678700)))

(declare-fun c!732386 () Bool)

(assert (=> d!1267718 (= c!732386 ((_ is Cons!48140) (toList!2355 lt!1528376)))))

(assert (=> d!1267718 (forall!8713 (toList!2355 lt!1528376) lambda!132719)))

(assert (=> d!1267718 (= (extractMap!315 (toList!2355 lt!1528376)) lt!1528391)))

(declare-fun b!4307705 () Bool)

(assert (=> b!4307705 (= e!2678700 (addToMapMapFromBucket!35 (_2!26503 (h!53572 (toList!2355 lt!1528376))) (extractMap!315 (t!355059 (toList!2355 lt!1528376)))))))

(declare-fun b!4307706 () Bool)

(assert (=> b!4307706 (= e!2678700 (ListMap!1638 Nil!48139))))

(assert (= (and d!1267718 c!732386) b!4307705))

(assert (= (and d!1267718 (not c!732386)) b!4307706))

(declare-fun m!4900719 () Bool)

(assert (=> d!1267718 m!4900719))

(declare-fun m!4900721 () Bool)

(assert (=> d!1267718 m!4900721))

(declare-fun m!4900723 () Bool)

(assert (=> b!4307705 m!4900723))

(assert (=> b!4307705 m!4900723))

(declare-fun m!4900725 () Bool)

(assert (=> b!4307705 m!4900725))

(assert (=> b!4307674 d!1267718))

(declare-fun d!1267720 () Bool)

(declare-fun e!2678703 () Bool)

(assert (=> d!1267720 e!2678703))

(declare-fun res!1765603 () Bool)

(assert (=> d!1267720 (=> (not res!1765603) (not e!2678703))))

(declare-fun lt!1528403 () ListMap!1637)

(declare-fun contains!10101 (ListMap!1637 K!9324) Bool)

(assert (=> d!1267720 (= res!1765603 (contains!10101 lt!1528403 (_1!26502 lt!1528377)))))

(declare-fun lt!1528400 () List!48263)

(assert (=> d!1267720 (= lt!1528403 (ListMap!1638 lt!1528400))))

(declare-fun lt!1528401 () Unit!67184)

(declare-fun lt!1528402 () Unit!67184)

(assert (=> d!1267720 (= lt!1528401 lt!1528402)))

(declare-datatypes ((Option!10216 0))(
  ( (None!10215) (Some!10215 (v!42243 V!9526)) )
))
(declare-fun getValueByKey!247 (List!48263 K!9324) Option!10216)

(assert (=> d!1267720 (= (getValueByKey!247 lt!1528400 (_1!26502 lt!1528377)) (Some!10215 (_2!26502 lt!1528377)))))

(declare-fun lemmaContainsTupThenGetReturnValue!70 (List!48263 K!9324 V!9526) Unit!67184)

(assert (=> d!1267720 (= lt!1528402 (lemmaContainsTupThenGetReturnValue!70 lt!1528400 (_1!26502 lt!1528377) (_2!26502 lt!1528377)))))

(declare-fun insertNoDuplicatedKeys!43 (List!48263 K!9324 V!9526) List!48263)

(assert (=> d!1267720 (= lt!1528400 (insertNoDuplicatedKeys!43 (toList!2356 (extractMap!315 (toList!2355 lt!1528368))) (_1!26502 lt!1528377) (_2!26502 lt!1528377)))))

(assert (=> d!1267720 (= (+!244 (extractMap!315 (toList!2355 lt!1528368)) lt!1528377) lt!1528403)))

(declare-fun b!4307711 () Bool)

(declare-fun res!1765604 () Bool)

(assert (=> b!4307711 (=> (not res!1765604) (not e!2678703))))

(assert (=> b!4307711 (= res!1765604 (= (getValueByKey!247 (toList!2356 lt!1528403) (_1!26502 lt!1528377)) (Some!10215 (_2!26502 lt!1528377))))))

(declare-fun b!4307712 () Bool)

(declare-fun contains!10102 (List!48263 tuple2!46446) Bool)

(assert (=> b!4307712 (= e!2678703 (contains!10102 (toList!2356 lt!1528403) lt!1528377))))

(assert (= (and d!1267720 res!1765603) b!4307711))

(assert (= (and b!4307711 res!1765604) b!4307712))

(declare-fun m!4900727 () Bool)

(assert (=> d!1267720 m!4900727))

(declare-fun m!4900729 () Bool)

(assert (=> d!1267720 m!4900729))

(declare-fun m!4900731 () Bool)

(assert (=> d!1267720 m!4900731))

(declare-fun m!4900733 () Bool)

(assert (=> d!1267720 m!4900733))

(declare-fun m!4900735 () Bool)

(assert (=> b!4307711 m!4900735))

(declare-fun m!4900737 () Bool)

(assert (=> b!4307712 m!4900737))

(assert (=> b!4307674 d!1267720))

(declare-fun d!1267722 () Bool)

(declare-fun e!2678706 () Bool)

(assert (=> d!1267722 e!2678706))

(declare-fun res!1765609 () Bool)

(assert (=> d!1267722 (=> (not res!1765609) (not e!2678706))))

(declare-fun lt!1528414 () ListLongMap!967)

(declare-fun contains!10103 (ListLongMap!967 (_ BitVec 64)) Bool)

(assert (=> d!1267722 (= res!1765609 (contains!10103 lt!1528414 (_1!26503 (tuple2!46449 lt!1528366 lt!1528375))))))

(declare-fun lt!1528413 () List!48264)

(assert (=> d!1267722 (= lt!1528414 (ListLongMap!968 lt!1528413))))

(declare-fun lt!1528415 () Unit!67184)

(declare-fun lt!1528412 () Unit!67184)

(assert (=> d!1267722 (= lt!1528415 lt!1528412)))

(declare-datatypes ((Option!10217 0))(
  ( (None!10216) (Some!10216 (v!42244 List!48263)) )
))
(declare-fun getValueByKey!248 (List!48264 (_ BitVec 64)) Option!10217)

(assert (=> d!1267722 (= (getValueByKey!248 lt!1528413 (_1!26503 (tuple2!46449 lt!1528366 lt!1528375))) (Some!10216 (_2!26503 (tuple2!46449 lt!1528366 lt!1528375))))))

(declare-fun lemmaContainsTupThenGetReturnValue!71 (List!48264 (_ BitVec 64) List!48263) Unit!67184)

(assert (=> d!1267722 (= lt!1528412 (lemmaContainsTupThenGetReturnValue!71 lt!1528413 (_1!26503 (tuple2!46449 lt!1528366 lt!1528375)) (_2!26503 (tuple2!46449 lt!1528366 lt!1528375))))))

(declare-fun insertStrictlySorted!36 (List!48264 (_ BitVec 64) List!48263) List!48264)

(assert (=> d!1267722 (= lt!1528413 (insertStrictlySorted!36 (toList!2355 lt!1528368) (_1!26503 (tuple2!46449 lt!1528366 lt!1528375)) (_2!26503 (tuple2!46449 lt!1528366 lt!1528375))))))

(assert (=> d!1267722 (= (+!245 lt!1528368 (tuple2!46449 lt!1528366 lt!1528375)) lt!1528414)))

(declare-fun b!4307717 () Bool)

(declare-fun res!1765610 () Bool)

(assert (=> b!4307717 (=> (not res!1765610) (not e!2678706))))

(assert (=> b!4307717 (= res!1765610 (= (getValueByKey!248 (toList!2355 lt!1528414) (_1!26503 (tuple2!46449 lt!1528366 lt!1528375))) (Some!10216 (_2!26503 (tuple2!46449 lt!1528366 lt!1528375)))))))

(declare-fun b!4307718 () Bool)

(declare-fun contains!10104 (List!48264 tuple2!46448) Bool)

(assert (=> b!4307718 (= e!2678706 (contains!10104 (toList!2355 lt!1528414) (tuple2!46449 lt!1528366 lt!1528375)))))

(assert (= (and d!1267722 res!1765609) b!4307717))

(assert (= (and b!4307717 res!1765610) b!4307718))

(declare-fun m!4900739 () Bool)

(assert (=> d!1267722 m!4900739))

(declare-fun m!4900741 () Bool)

(assert (=> d!1267722 m!4900741))

(declare-fun m!4900743 () Bool)

(assert (=> d!1267722 m!4900743))

(declare-fun m!4900745 () Bool)

(assert (=> d!1267722 m!4900745))

(declare-fun m!4900747 () Bool)

(assert (=> b!4307717 m!4900747))

(declare-fun m!4900749 () Bool)

(assert (=> b!4307718 m!4900749))

(assert (=> b!4307674 d!1267722))

(declare-fun d!1267724 () Bool)

(declare-fun e!2678709 () Bool)

(assert (=> d!1267724 e!2678709))

(declare-fun c!732389 () Bool)

(assert (=> d!1267724 (= c!732389 (contains!10100 (v!42238 (underlying!9492 thiss!42308)) lt!1528366))))

(declare-fun lt!1528418 () List!48263)

(declare-fun apply!10986 (LongMapFixedSize!9262 (_ BitVec 64)) List!48263)

(assert (=> d!1267724 (= lt!1528418 (apply!10986 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))) lt!1528366))))

(assert (=> d!1267724 (valid!3621 (v!42238 (underlying!9492 thiss!42308)))))

(assert (=> d!1267724 (= (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528366) lt!1528418)))

(declare-fun b!4307723 () Bool)

(declare-fun get!15573 (Option!10217) List!48263)

(assert (=> b!4307723 (= e!2678709 (= lt!1528418 (get!15573 (getValueByKey!248 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))) lt!1528366))))))

(declare-fun b!4307724 () Bool)

(declare-fun dynLambda!20418 (Int (_ BitVec 64)) List!48263)

(assert (=> b!4307724 (= e!2678709 (= lt!1528418 (dynLambda!20418 (defaultEntry!5016 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308))))) lt!1528366)))))

(assert (=> b!4307724 ((_ is LongMap!4631) (v!42238 (underlying!9492 thiss!42308)))))

(assert (= (and d!1267724 c!732389) b!4307723))

(assert (= (and d!1267724 (not c!732389)) b!4307724))

(declare-fun b_lambda!126563 () Bool)

(assert (=> (not b_lambda!126563) (not b!4307724)))

(declare-fun t!355061 () Bool)

(declare-fun tb!257281 () Bool)

(assert (=> (and b!4307676 (= (defaultEntry!5016 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308))))) (defaultEntry!5016 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) t!355061) tb!257281))

(assert (=> b!4307724 t!355061))

(declare-fun result!314658 () Bool)

(declare-fun b_and!339897 () Bool)

(assert (= b_and!339893 (and (=> t!355061 result!314658) b_and!339897)))

(assert (=> d!1267724 m!4900667))

(declare-fun m!4900751 () Bool)

(assert (=> d!1267724 m!4900751))

(declare-fun m!4900753 () Bool)

(assert (=> d!1267724 m!4900753))

(assert (=> b!4307723 m!4900659))

(declare-fun m!4900755 () Bool)

(assert (=> b!4307723 m!4900755))

(assert (=> b!4307723 m!4900755))

(declare-fun m!4900757 () Bool)

(assert (=> b!4307723 m!4900757))

(declare-fun m!4900759 () Bool)

(assert (=> b!4307724 m!4900759))

(assert (=> b!4307677 d!1267724))

(declare-fun bs!604821 () Bool)

(declare-fun b!4307749 () Bool)

(assert (= bs!604821 (and b!4307749 b!4307703)))

(declare-fun lambda!132722 () Int)

(assert (=> bs!604821 (= lambda!132722 lambda!132718)))

(declare-fun bs!604822 () Bool)

(assert (= bs!604822 (and b!4307749 d!1267718)))

(assert (=> bs!604822 (= lambda!132722 lambda!132719)))

(declare-fun bs!604823 () Bool)

(assert (= bs!604823 (and b!4307749 d!1267702)))

(assert (=> bs!604823 (= lambda!132722 lambda!132709)))

(declare-fun bs!604824 () Bool)

(assert (= bs!604824 (and b!4307749 b!4307674)))

(assert (=> bs!604824 (= lambda!132722 lambda!132704)))

(declare-fun bs!604825 () Bool)

(assert (= bs!604825 (and b!4307749 d!1267706)))

(assert (=> bs!604825 (= lambda!132722 lambda!132712)))

(declare-fun bs!604826 () Bool)

(assert (= bs!604826 (and b!4307749 d!1267714)))

(assert (=> bs!604826 (= lambda!132722 lambda!132715)))

(declare-fun b!4307747 () Bool)

(declare-fun e!2678727 () Unit!67184)

(declare-fun Unit!67187 () Unit!67184)

(assert (=> b!4307747 (= e!2678727 Unit!67187)))

(declare-fun b!4307748 () Bool)

(declare-fun e!2678729 () Unit!67184)

(declare-fun Unit!67188 () Unit!67184)

(assert (=> b!4307748 (= e!2678729 Unit!67188)))

(declare-fun e!2678725 () Unit!67184)

(declare-fun lt!1528476 () (_ BitVec 64))

(declare-fun forallContained!1495 (List!48264 Int tuple2!46448) Unit!67184)

(assert (=> b!4307749 (= e!2678725 (forallContained!1495 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))) lambda!132722 (tuple2!46449 lt!1528476 (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528476))))))

(declare-fun c!732398 () Bool)

(assert (=> b!4307749 (= c!732398 (not (contains!10104 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))) (tuple2!46449 lt!1528476 (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528476)))))))

(declare-fun lt!1528477 () Unit!67184)

(assert (=> b!4307749 (= lt!1528477 e!2678729)))

(declare-fun bm!297033 () Bool)

(declare-fun call!297038 () ListLongMap!967)

(assert (=> bm!297033 (= call!297038 (map!10120 (v!42238 (underlying!9492 thiss!42308))))))

(declare-fun bm!297034 () Bool)

(declare-datatypes ((Option!10218 0))(
  ( (None!10217) (Some!10217 (v!42245 tuple2!46446)) )
))
(declare-fun call!297041 () Option!10218)

(declare-fun call!297040 () List!48263)

(declare-fun getPair!128 (List!48263 K!9324) Option!10218)

(assert (=> bm!297034 (= call!297041 (getPair!128 call!297040 key!2048))))

(declare-fun bm!297035 () Bool)

(declare-fun call!297042 () Bool)

(declare-fun isDefined!7519 (Option!10218) Bool)

(assert (=> bm!297035 (= call!297042 (isDefined!7519 call!297041))))

(declare-fun b!4307750 () Bool)

(assert (=> b!4307750 false))

(declare-fun lt!1528478 () Unit!67184)

(declare-fun lt!1528461 () Unit!67184)

(assert (=> b!4307750 (= lt!1528478 lt!1528461)))

(declare-fun lt!1528469 () ListLongMap!967)

(assert (=> b!4307750 (contains!10101 (extractMap!315 (toList!2355 lt!1528469)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!128 (ListLongMap!967 K!9324 Hashable!4547) Unit!67184)

(assert (=> b!4307750 (= lt!1528461 (lemmaInLongMapThenInGenericMap!128 lt!1528469 key!2048 (hashF!6651 thiss!42308)))))

(assert (=> b!4307750 (= lt!1528469 call!297038)))

(declare-fun Unit!67189 () Unit!67184)

(assert (=> b!4307750 (= e!2678727 Unit!67189)))

(declare-fun lt!1528471 () ListLongMap!967)

(declare-fun call!297043 () (_ BitVec 64))

(declare-fun c!732400 () Bool)

(declare-fun bm!297036 () Bool)

(declare-fun call!297039 () Bool)

(assert (=> bm!297036 (= call!297039 (contains!10103 (ite c!732400 lt!1528471 call!297038) call!297043))))

(declare-fun b!4307751 () Bool)

(declare-fun e!2678730 () Unit!67184)

(assert (=> b!4307751 (= e!2678730 e!2678727)))

(declare-fun res!1765618 () Bool)

(assert (=> b!4307751 (= res!1765618 call!297039)))

(declare-fun e!2678726 () Bool)

(assert (=> b!4307751 (=> (not res!1765618) (not e!2678726))))

(declare-fun c!732401 () Bool)

(assert (=> b!4307751 (= c!732401 e!2678726)))

(declare-fun b!4307752 () Bool)

(declare-fun lt!1528474 () Unit!67184)

(assert (=> b!4307752 (= e!2678730 lt!1528474)))

(assert (=> b!4307752 (= lt!1528471 call!297038)))

(declare-fun lemmaInGenericMapThenInLongMap!128 (ListLongMap!967 K!9324 Hashable!4547) Unit!67184)

(assert (=> b!4307752 (= lt!1528474 (lemmaInGenericMapThenInLongMap!128 lt!1528471 key!2048 (hashF!6651 thiss!42308)))))

(declare-fun res!1765619 () Bool)

(assert (=> b!4307752 (= res!1765619 call!297039)))

(declare-fun e!2678728 () Bool)

(assert (=> b!4307752 (=> (not res!1765619) (not e!2678728))))

(assert (=> b!4307752 e!2678728))

(declare-fun b!4307753 () Bool)

(assert (=> b!4307753 (= e!2678728 call!297042)))

(declare-fun bm!297038 () Bool)

(assert (=> bm!297038 (= call!297043 (hash!970 (hashF!6651 thiss!42308) key!2048))))

(declare-fun b!4307754 () Bool)

(declare-fun Unit!67190 () Unit!67184)

(assert (=> b!4307754 (= e!2678725 Unit!67190)))

(declare-fun e!2678724 () Bool)

(declare-fun b!4307755 () Bool)

(assert (=> b!4307755 (= e!2678724 (isDefined!7519 (getPair!128 (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528476) key!2048)))))

(declare-fun bm!297037 () Bool)

(declare-fun apply!10987 (ListLongMap!967 (_ BitVec 64)) List!48263)

(assert (=> bm!297037 (= call!297040 (apply!10987 (ite c!732400 lt!1528471 call!297038) call!297043))))

(declare-fun d!1267726 () Bool)

(declare-fun lt!1528464 () Bool)

(assert (=> d!1267726 (= lt!1528464 (contains!10101 (map!10121 thiss!42308) key!2048))))

(assert (=> d!1267726 (= lt!1528464 e!2678724)))

(declare-fun res!1765617 () Bool)

(assert (=> d!1267726 (=> (not res!1765617) (not e!2678724))))

(assert (=> d!1267726 (= res!1765617 (contains!10100 (v!42238 (underlying!9492 thiss!42308)) lt!1528476))))

(declare-fun lt!1528472 () Unit!67184)

(assert (=> d!1267726 (= lt!1528472 e!2678730)))

(assert (=> d!1267726 (= c!732400 (contains!10101 (extractMap!315 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308))))) key!2048))))

(declare-fun lt!1528475 () Unit!67184)

(assert (=> d!1267726 (= lt!1528475 e!2678725)))

(declare-fun c!732399 () Bool)

(assert (=> d!1267726 (= c!732399 (contains!10100 (v!42238 (underlying!9492 thiss!42308)) lt!1528476))))

(assert (=> d!1267726 (= lt!1528476 (hash!970 (hashF!6651 thiss!42308) key!2048))))

(assert (=> d!1267726 (valid!3620 thiss!42308)))

(assert (=> d!1267726 (= (contains!10099 thiss!42308 key!2048) lt!1528464)))

(declare-fun b!4307756 () Bool)

(assert (=> b!4307756 (= e!2678726 call!297042)))

(declare-fun b!4307757 () Bool)

(assert (=> b!4307757 false))

(declare-fun lt!1528459 () Unit!67184)

(declare-fun lt!1528463 () Unit!67184)

(assert (=> b!4307757 (= lt!1528459 lt!1528463)))

(declare-fun lt!1528470 () List!48264)

(declare-fun lt!1528468 () List!48263)

(assert (=> b!4307757 (contains!10104 lt!1528470 (tuple2!46449 lt!1528476 lt!1528468))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!139 (List!48264 (_ BitVec 64) List!48263) Unit!67184)

(assert (=> b!4307757 (= lt!1528463 (lemmaGetValueByKeyImpliesContainsTuple!139 lt!1528470 lt!1528476 lt!1528468))))

(assert (=> b!4307757 (= lt!1528468 (apply!10985 (v!42238 (underlying!9492 thiss!42308)) lt!1528476))))

(assert (=> b!4307757 (= lt!1528470 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))))))

(declare-fun lt!1528460 () Unit!67184)

(declare-fun lt!1528466 () Unit!67184)

(assert (=> b!4307757 (= lt!1528460 lt!1528466)))

(declare-fun lt!1528465 () List!48264)

(declare-fun isDefined!7520 (Option!10217) Bool)

(assert (=> b!4307757 (isDefined!7520 (getValueByKey!248 lt!1528465 lt!1528476))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!168 (List!48264 (_ BitVec 64)) Unit!67184)

(assert (=> b!4307757 (= lt!1528466 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 lt!1528465 lt!1528476))))

(assert (=> b!4307757 (= lt!1528465 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))))))

(declare-fun lt!1528473 () Unit!67184)

(declare-fun lt!1528462 () Unit!67184)

(assert (=> b!4307757 (= lt!1528473 lt!1528462)))

(declare-fun lt!1528467 () List!48264)

(declare-fun containsKey!294 (List!48264 (_ BitVec 64)) Bool)

(assert (=> b!4307757 (containsKey!294 lt!1528467 lt!1528476)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!129 (List!48264 (_ BitVec 64)) Unit!67184)

(assert (=> b!4307757 (= lt!1528462 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!129 lt!1528467 lt!1528476))))

(assert (=> b!4307757 (= lt!1528467 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))))))

(declare-fun Unit!67191 () Unit!67184)

(assert (=> b!4307757 (= e!2678729 Unit!67191)))

(assert (= (and d!1267726 c!732399) b!4307749))

(assert (= (and d!1267726 (not c!732399)) b!4307754))

(assert (= (and b!4307749 c!732398) b!4307757))

(assert (= (and b!4307749 (not c!732398)) b!4307748))

(assert (= (and d!1267726 c!732400) b!4307752))

(assert (= (and d!1267726 (not c!732400)) b!4307751))

(assert (= (and b!4307752 res!1765619) b!4307753))

(assert (= (and b!4307751 res!1765618) b!4307756))

(assert (= (and b!4307751 c!732401) b!4307750))

(assert (= (and b!4307751 (not c!732401)) b!4307747))

(assert (= (or b!4307752 b!4307751 b!4307756 b!4307750) bm!297033))

(assert (= (or b!4307752 b!4307753 b!4307751 b!4307756) bm!297038))

(assert (= (or b!4307752 b!4307751) bm!297036))

(assert (= (or b!4307753 b!4307756) bm!297037))

(assert (= (or b!4307753 b!4307756) bm!297034))

(assert (= (or b!4307753 b!4307756) bm!297035))

(assert (= (and d!1267726 res!1765617) b!4307755))

(declare-fun m!4900761 () Bool)

(assert (=> bm!297036 m!4900761))

(assert (=> d!1267726 m!4900649))

(assert (=> d!1267726 m!4900661))

(declare-fun m!4900763 () Bool)

(assert (=> d!1267726 m!4900763))

(declare-fun m!4900765 () Bool)

(assert (=> d!1267726 m!4900765))

(declare-fun m!4900767 () Bool)

(assert (=> d!1267726 m!4900767))

(assert (=> d!1267726 m!4900763))

(assert (=> d!1267726 m!4900661))

(declare-fun m!4900769 () Bool)

(assert (=> d!1267726 m!4900769))

(assert (=> d!1267726 m!4900669))

(assert (=> d!1267726 m!4900659))

(declare-fun m!4900771 () Bool)

(assert (=> bm!297034 m!4900771))

(assert (=> b!4307749 m!4900659))

(declare-fun m!4900773 () Bool)

(assert (=> b!4307749 m!4900773))

(declare-fun m!4900775 () Bool)

(assert (=> b!4307749 m!4900775))

(declare-fun m!4900777 () Bool)

(assert (=> b!4307749 m!4900777))

(declare-fun m!4900779 () Bool)

(assert (=> b!4307752 m!4900779))

(assert (=> bm!297033 m!4900659))

(assert (=> bm!297038 m!4900669))

(assert (=> b!4307755 m!4900773))

(assert (=> b!4307755 m!4900773))

(declare-fun m!4900781 () Bool)

(assert (=> b!4307755 m!4900781))

(assert (=> b!4307755 m!4900781))

(declare-fun m!4900783 () Bool)

(assert (=> b!4307755 m!4900783))

(declare-fun m!4900785 () Bool)

(assert (=> bm!297037 m!4900785))

(declare-fun m!4900787 () Bool)

(assert (=> b!4307757 m!4900787))

(assert (=> b!4307757 m!4900659))

(declare-fun m!4900789 () Bool)

(assert (=> b!4307757 m!4900789))

(assert (=> b!4307757 m!4900773))

(declare-fun m!4900791 () Bool)

(assert (=> b!4307757 m!4900791))

(declare-fun m!4900793 () Bool)

(assert (=> b!4307757 m!4900793))

(assert (=> b!4307757 m!4900791))

(declare-fun m!4900795 () Bool)

(assert (=> b!4307757 m!4900795))

(declare-fun m!4900797 () Bool)

(assert (=> b!4307757 m!4900797))

(declare-fun m!4900799 () Bool)

(assert (=> b!4307757 m!4900799))

(declare-fun m!4900801 () Bool)

(assert (=> bm!297035 m!4900801))

(declare-fun m!4900803 () Bool)

(assert (=> b!4307750 m!4900803))

(assert (=> b!4307750 m!4900803))

(declare-fun m!4900805 () Bool)

(assert (=> b!4307750 m!4900805))

(declare-fun m!4900807 () Bool)

(assert (=> b!4307750 m!4900807))

(assert (=> b!4307667 d!1267726))

(declare-fun d!1267728 () Bool)

(assert (=> d!1267728 (= (map!10120 (v!42238 (underlying!9492 thiss!42308))) (map!10122 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308))))))))

(declare-fun bs!604827 () Bool)

(assert (= bs!604827 d!1267728))

(declare-fun m!4900809 () Bool)

(assert (=> bs!604827 m!4900809))

(assert (=> b!4307667 d!1267728))

(declare-fun d!1267730 () Bool)

(declare-fun lt!1528481 () ListMap!1637)

(assert (=> d!1267730 (invariantList!567 (toList!2356 lt!1528481))))

(assert (=> d!1267730 (= lt!1528481 (extractMap!315 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308))))))))

(assert (=> d!1267730 (valid!3620 thiss!42308)))

(assert (=> d!1267730 (= (map!10121 thiss!42308) lt!1528481)))

(declare-fun bs!604828 () Bool)

(assert (= bs!604828 d!1267730))

(declare-fun m!4900811 () Bool)

(assert (=> bs!604828 m!4900811))

(assert (=> bs!604828 m!4900659))

(assert (=> bs!604828 m!4900763))

(assert (=> bs!604828 m!4900649))

(assert (=> b!4307667 d!1267730))

(declare-fun b!4307768 () Bool)

(declare-fun e!2678735 () List!48263)

(assert (=> b!4307768 (= e!2678735 (Cons!48139 (h!53571 lt!1528365) (removePairForKey!196 (t!355058 lt!1528365) key!2048)))))

(declare-fun b!4307769 () Bool)

(assert (=> b!4307769 (= e!2678735 Nil!48139)))

(declare-fun b!4307766 () Bool)

(declare-fun e!2678736 () List!48263)

(assert (=> b!4307766 (= e!2678736 (t!355058 lt!1528365))))

(declare-fun d!1267732 () Bool)

(declare-fun lt!1528484 () List!48263)

(declare-fun containsKey!295 (List!48263 K!9324) Bool)

(assert (=> d!1267732 (not (containsKey!295 lt!1528484 key!2048))))

(assert (=> d!1267732 (= lt!1528484 e!2678736)))

(declare-fun c!732407 () Bool)

(assert (=> d!1267732 (= c!732407 (and ((_ is Cons!48139) lt!1528365) (= (_1!26502 (h!53571 lt!1528365)) key!2048)))))

(declare-fun noDuplicateKeys!198 (List!48263) Bool)

(assert (=> d!1267732 (noDuplicateKeys!198 lt!1528365)))

(assert (=> d!1267732 (= (removePairForKey!196 lt!1528365 key!2048) lt!1528484)))

(declare-fun b!4307767 () Bool)

(assert (=> b!4307767 (= e!2678736 e!2678735)))

(declare-fun c!732406 () Bool)

(assert (=> b!4307767 (= c!732406 ((_ is Cons!48139) lt!1528365))))

(assert (= (and d!1267732 c!732407) b!4307766))

(assert (= (and d!1267732 (not c!732407)) b!4307767))

(assert (= (and b!4307767 c!732406) b!4307768))

(assert (= (and b!4307767 (not c!732406)) b!4307769))

(declare-fun m!4900813 () Bool)

(assert (=> b!4307768 m!4900813))

(declare-fun m!4900815 () Bool)

(assert (=> d!1267732 m!4900815))

(declare-fun m!4900817 () Bool)

(assert (=> d!1267732 m!4900817))

(assert (=> b!4307681 d!1267732))

(declare-fun bs!604829 () Bool)

(declare-fun d!1267734 () Bool)

(assert (= bs!604829 (and d!1267734 b!4307703)))

(declare-fun lambda!132725 () Int)

(assert (=> bs!604829 (not (= lambda!132725 lambda!132718))))

(declare-fun bs!604830 () Bool)

(assert (= bs!604830 (and d!1267734 d!1267718)))

(assert (=> bs!604830 (not (= lambda!132725 lambda!132719))))

(declare-fun bs!604831 () Bool)

(assert (= bs!604831 (and d!1267734 d!1267702)))

(assert (=> bs!604831 (not (= lambda!132725 lambda!132709))))

(declare-fun bs!604832 () Bool)

(assert (= bs!604832 (and d!1267734 b!4307674)))

(assert (=> bs!604832 (not (= lambda!132725 lambda!132704))))

(declare-fun bs!604833 () Bool)

(assert (= bs!604833 (and d!1267734 d!1267706)))

(assert (=> bs!604833 (not (= lambda!132725 lambda!132712))))

(declare-fun bs!604834 () Bool)

(assert (= bs!604834 (and d!1267734 b!4307749)))

(assert (=> bs!604834 (not (= lambda!132725 lambda!132722))))

(declare-fun bs!604835 () Bool)

(assert (= bs!604835 (and d!1267734 d!1267714)))

(assert (=> bs!604835 (not (= lambda!132725 lambda!132715))))

(assert (=> d!1267734 true))

(assert (=> d!1267734 (allKeysSameHash!172 lt!1528365 lt!1528366 (hashF!6651 thiss!42308))))

(declare-fun lt!1528487 () Unit!67184)

(declare-fun choose!26241 (List!48264 (_ BitVec 64) List!48263 Hashable!4547) Unit!67184)

(assert (=> d!1267734 (= lt!1528487 (choose!26241 (toList!2355 lt!1528368) lt!1528366 lt!1528365 (hashF!6651 thiss!42308)))))

(assert (=> d!1267734 (forall!8713 (toList!2355 lt!1528368) lambda!132725)))

(assert (=> d!1267734 (= (lemmaInLongMapAllKeySameHashThenForTuple!162 (toList!2355 lt!1528368) lt!1528366 lt!1528365 (hashF!6651 thiss!42308)) lt!1528487)))

(declare-fun bs!604836 () Bool)

(assert (= bs!604836 d!1267734))

(assert (=> bs!604836 m!4900639))

(declare-fun m!4900819 () Bool)

(assert (=> bs!604836 m!4900819))

(declare-fun m!4900821 () Bool)

(assert (=> bs!604836 m!4900821))

(assert (=> b!4307681 d!1267734))

(declare-fun d!1267736 () Bool)

(assert (=> d!1267736 true))

(assert (=> d!1267736 true))

(declare-fun lambda!132728 () Int)

(declare-fun forall!8714 (List!48263 Int) Bool)

(assert (=> d!1267736 (= (allKeysSameHash!172 lt!1528365 lt!1528366 (hashF!6651 thiss!42308)) (forall!8714 lt!1528365 lambda!132728))))

(declare-fun bs!604837 () Bool)

(assert (= bs!604837 d!1267736))

(declare-fun m!4900823 () Bool)

(assert (=> bs!604837 m!4900823))

(assert (=> b!4307681 d!1267736))

(declare-fun bs!604838 () Bool)

(declare-fun d!1267738 () Bool)

(assert (= bs!604838 (and d!1267738 d!1267736)))

(declare-fun lambda!132729 () Int)

(assert (=> bs!604838 (= lambda!132729 lambda!132728)))

(assert (=> d!1267738 true))

(assert (=> d!1267738 true))

(assert (=> d!1267738 (= (allKeysSameHash!172 (removePairForKey!196 lt!1528365 key!2048) lt!1528366 (hashF!6651 thiss!42308)) (forall!8714 (removePairForKey!196 lt!1528365 key!2048) lambda!132729))))

(declare-fun bs!604839 () Bool)

(assert (= bs!604839 d!1267738))

(assert (=> bs!604839 m!4900641))

(declare-fun m!4900825 () Bool)

(assert (=> bs!604839 m!4900825))

(assert (=> b!4307681 d!1267738))

(declare-fun d!1267740 () Bool)

(assert (=> d!1267740 (allKeysSameHash!172 (removePairForKey!196 lt!1528365 key!2048) lt!1528366 (hashF!6651 thiss!42308))))

(declare-fun lt!1528490 () Unit!67184)

(declare-fun choose!26242 (List!48263 K!9324 (_ BitVec 64) Hashable!4547) Unit!67184)

(assert (=> d!1267740 (= lt!1528490 (choose!26242 lt!1528365 key!2048 lt!1528366 (hashF!6651 thiss!42308)))))

(assert (=> d!1267740 (noDuplicateKeys!198 lt!1528365)))

(assert (=> d!1267740 (= (lemmaRemovePairForKeyPreservesHash!156 lt!1528365 key!2048 lt!1528366 (hashF!6651 thiss!42308)) lt!1528490)))

(declare-fun bs!604840 () Bool)

(assert (= bs!604840 d!1267740))

(assert (=> bs!604840 m!4900641))

(assert (=> bs!604840 m!4900641))

(assert (=> bs!604840 m!4900643))

(declare-fun m!4900827 () Bool)

(assert (=> bs!604840 m!4900827))

(assert (=> bs!604840 m!4900817))

(assert (=> b!4307681 d!1267740))

(declare-fun d!1267742 () Bool)

(declare-fun e!2678748 () Bool)

(assert (=> d!1267742 e!2678748))

(declare-fun res!1765626 () Bool)

(assert (=> d!1267742 (=> (not res!1765626) (not e!2678748))))

(declare-fun lt!1528500 () tuple2!46450)

(assert (=> d!1267742 (= res!1765626 ((_ is LongMap!4631) (_2!26504 lt!1528500)))))

(declare-fun e!2678751 () tuple2!46450)

(assert (=> d!1267742 (= lt!1528500 e!2678751)))

(declare-fun c!732414 () Bool)

(declare-fun lt!1528499 () tuple2!46450)

(assert (=> d!1267742 (= c!732414 (_1!26504 lt!1528499))))

(declare-fun e!2678747 () tuple2!46450)

(assert (=> d!1267742 (= lt!1528499 e!2678747)))

(declare-fun c!732415 () Bool)

(declare-fun imbalanced!46 (MutLongMap!4631) Bool)

(assert (=> d!1267742 (= c!732415 (imbalanced!46 (v!42238 (underlying!9492 thiss!42308))))))

(assert (=> d!1267742 (valid!3621 (v!42238 (underlying!9492 thiss!42308)))))

(assert (=> d!1267742 (= (update!410 (v!42238 (underlying!9492 thiss!42308)) lt!1528366 lt!1528375) lt!1528500)))

(declare-fun call!297049 () ListLongMap!967)

(declare-fun e!2678749 () Bool)

(declare-fun b!4307794 () Bool)

(declare-fun call!297048 () ListLongMap!967)

(assert (=> b!4307794 (= e!2678749 (= call!297048 (+!245 call!297049 (tuple2!46449 lt!1528366 lt!1528375))))))

(declare-fun b!4307795 () Bool)

(declare-fun e!2678750 () Bool)

(assert (=> b!4307795 (= e!2678750 e!2678749)))

(declare-fun res!1765627 () Bool)

(assert (=> b!4307795 (= res!1765627 (contains!10103 call!297048 lt!1528366))))

(assert (=> b!4307795 (=> (not res!1765627) (not e!2678749))))

(declare-fun b!4307796 () Bool)

(assert (=> b!4307796 (= e!2678747 (tuple2!46451 true (v!42238 (underlying!9492 thiss!42308))))))

(declare-fun b!4307797 () Bool)

(assert (=> b!4307797 (= e!2678750 (= call!297048 call!297049))))

(declare-fun bm!297043 () Bool)

(assert (=> bm!297043 (= call!297049 (map!10120 (v!42238 (underlying!9492 thiss!42308))))))

(declare-fun b!4307798 () Bool)

(declare-fun lt!1528502 () tuple2!46450)

(assert (=> b!4307798 (= e!2678747 (tuple2!46451 (_1!26504 lt!1528502) (_2!26504 lt!1528502)))))

(declare-fun repack!50 (MutLongMap!4631) tuple2!46450)

(assert (=> b!4307798 (= lt!1528502 (repack!50 (v!42238 (underlying!9492 thiss!42308))))))

(declare-fun bm!297044 () Bool)

(assert (=> bm!297044 (= call!297048 (map!10120 (_2!26504 lt!1528500)))))

(declare-fun b!4307799 () Bool)

(declare-fun res!1765628 () Bool)

(assert (=> b!4307799 (=> (not res!1765628) (not e!2678748))))

(assert (=> b!4307799 (= res!1765628 (valid!3621 (_2!26504 lt!1528500)))))

(declare-fun b!4307800 () Bool)

(assert (=> b!4307800 (= e!2678751 (tuple2!46451 false (_2!26504 lt!1528499)))))

(declare-fun b!4307801 () Bool)

(declare-datatypes ((tuple2!46452 0))(
  ( (tuple2!46453 (_1!26505 Bool) (_2!26505 LongMapFixedSize!9262)) )
))
(declare-fun lt!1528501 () tuple2!46452)

(assert (=> b!4307801 (= e!2678751 (tuple2!46451 (_1!26505 lt!1528501) (LongMap!4631 (Cell!18334 (_2!26505 lt!1528501)))))))

(declare-fun update!411 (LongMapFixedSize!9262 (_ BitVec 64) List!48263) tuple2!46452)

(assert (=> b!4307801 (= lt!1528501 (update!411 (v!42237 (underlying!9491 (_2!26504 lt!1528499))) lt!1528366 lt!1528375))))

(declare-fun b!4307802 () Bool)

(assert (=> b!4307802 (= e!2678748 e!2678750)))

(declare-fun c!732416 () Bool)

(assert (=> b!4307802 (= c!732416 (_1!26504 lt!1528500))))

(assert (= (and d!1267742 c!732415) b!4307798))

(assert (= (and d!1267742 (not c!732415)) b!4307796))

(assert (= (and d!1267742 c!732414) b!4307801))

(assert (= (and d!1267742 (not c!732414)) b!4307800))

(assert (= (and d!1267742 res!1765626) b!4307799))

(assert (= (and b!4307799 res!1765628) b!4307802))

(assert (= (and b!4307802 c!732416) b!4307795))

(assert (= (and b!4307802 (not c!732416)) b!4307797))

(assert (= (and b!4307795 res!1765627) b!4307794))

(assert (= (or b!4307795 b!4307794 b!4307797) bm!297044))

(assert (= (or b!4307794 b!4307797) bm!297043))

(declare-fun m!4900829 () Bool)

(assert (=> bm!297044 m!4900829))

(declare-fun m!4900831 () Bool)

(assert (=> b!4307798 m!4900831))

(declare-fun m!4900833 () Bool)

(assert (=> b!4307801 m!4900833))

(declare-fun m!4900835 () Bool)

(assert (=> b!4307795 m!4900835))

(declare-fun m!4900837 () Bool)

(assert (=> b!4307799 m!4900837))

(assert (=> bm!297043 m!4900659))

(declare-fun m!4900839 () Bool)

(assert (=> b!4307794 m!4900839))

(declare-fun m!4900841 () Bool)

(assert (=> d!1267742 m!4900841))

(assert (=> d!1267742 m!4900753))

(assert (=> b!4307672 d!1267742))

(declare-fun d!1267744 () Bool)

(declare-fun lt!1528505 () Bool)

(assert (=> d!1267744 (= lt!1528505 (contains!10103 (map!10120 (v!42238 (underlying!9492 thiss!42308))) lt!1528366))))

(declare-fun contains!10105 (LongMapFixedSize!9262 (_ BitVec 64)) Bool)

(assert (=> d!1267744 (= lt!1528505 (contains!10105 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))) lt!1528366))))

(assert (=> d!1267744 (valid!3621 (v!42238 (underlying!9492 thiss!42308)))))

(assert (=> d!1267744 (= (contains!10100 (v!42238 (underlying!9492 thiss!42308)) lt!1528366) lt!1528505)))

(declare-fun bs!604841 () Bool)

(assert (= bs!604841 d!1267744))

(assert (=> bs!604841 m!4900659))

(assert (=> bs!604841 m!4900659))

(declare-fun m!4900843 () Bool)

(assert (=> bs!604841 m!4900843))

(declare-fun m!4900845 () Bool)

(assert (=> bs!604841 m!4900845))

(assert (=> bs!604841 m!4900753))

(assert (=> b!4307672 d!1267744))

(declare-fun d!1267746 () Bool)

(declare-fun hash!975 (Hashable!4547 K!9324) (_ BitVec 64))

(assert (=> d!1267746 (= (hash!970 (hashF!6651 thiss!42308) key!2048) (hash!975 (hashF!6651 thiss!42308) key!2048))))

(declare-fun bs!604842 () Bool)

(assert (= bs!604842 d!1267746))

(declare-fun m!4900847 () Bool)

(assert (=> bs!604842 m!4900847))

(assert (=> b!4307672 d!1267746))

(declare-fun d!1267748 () Bool)

(assert (=> d!1267748 (= (array_inv!5341 (_keys!4931 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) (bvsge (size!35486 (_keys!4931 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4307676 d!1267748))

(declare-fun d!1267750 () Bool)

(assert (=> d!1267750 (= (array_inv!5342 (_values!4912 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) (bvsge (size!35487 (_values!4912 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4307676 d!1267750))

(declare-fun bs!604843 () Bool)

(declare-fun d!1267752 () Bool)

(assert (= bs!604843 (and d!1267752 b!4307703)))

(declare-fun lambda!132732 () Int)

(assert (=> bs!604843 (not (= lambda!132732 lambda!132718))))

(declare-fun bs!604844 () Bool)

(assert (= bs!604844 (and d!1267752 d!1267718)))

(assert (=> bs!604844 (not (= lambda!132732 lambda!132719))))

(declare-fun bs!604845 () Bool)

(assert (= bs!604845 (and d!1267752 d!1267702)))

(assert (=> bs!604845 (not (= lambda!132732 lambda!132709))))

(declare-fun bs!604846 () Bool)

(assert (= bs!604846 (and d!1267752 b!4307674)))

(assert (=> bs!604846 (not (= lambda!132732 lambda!132704))))

(declare-fun bs!604847 () Bool)

(assert (= bs!604847 (and d!1267752 d!1267734)))

(assert (=> bs!604847 (= lambda!132732 lambda!132725)))

(declare-fun bs!604848 () Bool)

(assert (= bs!604848 (and d!1267752 d!1267706)))

(assert (=> bs!604848 (not (= lambda!132732 lambda!132712))))

(declare-fun bs!604849 () Bool)

(assert (= bs!604849 (and d!1267752 b!4307749)))

(assert (=> bs!604849 (not (= lambda!132732 lambda!132722))))

(declare-fun bs!604850 () Bool)

(assert (= bs!604850 (and d!1267752 d!1267714)))

(assert (=> bs!604850 (not (= lambda!132732 lambda!132715))))

(assert (=> d!1267752 true))

(assert (=> d!1267752 (= (allKeysSameHashInMap!323 lt!1528376 (hashF!6651 thiss!42308)) (forall!8713 (toList!2355 lt!1528376) lambda!132732))))

(declare-fun bs!604851 () Bool)

(assert (= bs!604851 d!1267752))

(declare-fun m!4900849 () Bool)

(assert (=> bs!604851 m!4900849))

(assert (=> b!4307680 d!1267752))

(declare-fun d!1267754 () Bool)

(assert (=> d!1267754 (= (eq!132 (map!10121 lt!1528367) (+!244 lt!1528371 lt!1528377)) (= (content!7552 (toList!2356 (map!10121 lt!1528367))) (content!7552 (toList!2356 (+!244 lt!1528371 lt!1528377)))))))

(declare-fun bs!604852 () Bool)

(assert (= bs!604852 d!1267754))

(declare-fun m!4900851 () Bool)

(assert (=> bs!604852 m!4900851))

(declare-fun m!4900853 () Bool)

(assert (=> bs!604852 m!4900853))

(assert (=> b!4307671 d!1267754))

(declare-fun d!1267756 () Bool)

(declare-fun lt!1528506 () ListMap!1637)

(assert (=> d!1267756 (invariantList!567 (toList!2356 lt!1528506))))

(assert (=> d!1267756 (= lt!1528506 (extractMap!315 (toList!2355 (map!10120 (v!42238 (underlying!9492 lt!1528367))))))))

(assert (=> d!1267756 (valid!3620 lt!1528367)))

(assert (=> d!1267756 (= (map!10121 lt!1528367) lt!1528506)))

(declare-fun bs!604853 () Bool)

(assert (= bs!604853 d!1267756))

(declare-fun m!4900855 () Bool)

(assert (=> bs!604853 m!4900855))

(assert (=> bs!604853 m!4900713))

(declare-fun m!4900857 () Bool)

(assert (=> bs!604853 m!4900857))

(assert (=> bs!604853 m!4900623))

(assert (=> b!4307671 d!1267756))

(declare-fun d!1267758 () Bool)

(declare-fun e!2678752 () Bool)

(assert (=> d!1267758 e!2678752))

(declare-fun res!1765629 () Bool)

(assert (=> d!1267758 (=> (not res!1765629) (not e!2678752))))

(declare-fun lt!1528510 () ListMap!1637)

(assert (=> d!1267758 (= res!1765629 (contains!10101 lt!1528510 (_1!26502 lt!1528377)))))

(declare-fun lt!1528507 () List!48263)

(assert (=> d!1267758 (= lt!1528510 (ListMap!1638 lt!1528507))))

(declare-fun lt!1528508 () Unit!67184)

(declare-fun lt!1528509 () Unit!67184)

(assert (=> d!1267758 (= lt!1528508 lt!1528509)))

(assert (=> d!1267758 (= (getValueByKey!247 lt!1528507 (_1!26502 lt!1528377)) (Some!10215 (_2!26502 lt!1528377)))))

(assert (=> d!1267758 (= lt!1528509 (lemmaContainsTupThenGetReturnValue!70 lt!1528507 (_1!26502 lt!1528377) (_2!26502 lt!1528377)))))

(assert (=> d!1267758 (= lt!1528507 (insertNoDuplicatedKeys!43 (toList!2356 lt!1528371) (_1!26502 lt!1528377) (_2!26502 lt!1528377)))))

(assert (=> d!1267758 (= (+!244 lt!1528371 lt!1528377) lt!1528510)))

(declare-fun b!4307803 () Bool)

(declare-fun res!1765630 () Bool)

(assert (=> b!4307803 (=> (not res!1765630) (not e!2678752))))

(assert (=> b!4307803 (= res!1765630 (= (getValueByKey!247 (toList!2356 lt!1528510) (_1!26502 lt!1528377)) (Some!10215 (_2!26502 lt!1528377))))))

(declare-fun b!4307804 () Bool)

(assert (=> b!4307804 (= e!2678752 (contains!10102 (toList!2356 lt!1528510) lt!1528377))))

(assert (= (and d!1267758 res!1765629) b!4307803))

(assert (= (and b!4307803 res!1765630) b!4307804))

(declare-fun m!4900859 () Bool)

(assert (=> d!1267758 m!4900859))

(declare-fun m!4900861 () Bool)

(assert (=> d!1267758 m!4900861))

(declare-fun m!4900863 () Bool)

(assert (=> d!1267758 m!4900863))

(declare-fun m!4900865 () Bool)

(assert (=> d!1267758 m!4900865))

(declare-fun m!4900867 () Bool)

(assert (=> b!4307803 m!4900867))

(declare-fun m!4900869 () Bool)

(assert (=> b!4307804 m!4900869))

(assert (=> b!4307671 d!1267758))

(declare-fun bs!604854 () Bool)

(declare-fun b!4307805 () Bool)

(assert (= bs!604854 (and b!4307805 b!4307703)))

(declare-fun lambda!132733 () Int)

(assert (=> bs!604854 (= lambda!132733 lambda!132718)))

(declare-fun bs!604855 () Bool)

(assert (= bs!604855 (and b!4307805 d!1267752)))

(assert (=> bs!604855 (not (= lambda!132733 lambda!132732))))

(declare-fun bs!604856 () Bool)

(assert (= bs!604856 (and b!4307805 d!1267718)))

(assert (=> bs!604856 (= lambda!132733 lambda!132719)))

(declare-fun bs!604857 () Bool)

(assert (= bs!604857 (and b!4307805 d!1267702)))

(assert (=> bs!604857 (= lambda!132733 lambda!132709)))

(declare-fun bs!604858 () Bool)

(assert (= bs!604858 (and b!4307805 b!4307674)))

(assert (=> bs!604858 (= lambda!132733 lambda!132704)))

(declare-fun bs!604859 () Bool)

(assert (= bs!604859 (and b!4307805 d!1267734)))

(assert (=> bs!604859 (not (= lambda!132733 lambda!132725))))

(declare-fun bs!604860 () Bool)

(assert (= bs!604860 (and b!4307805 d!1267706)))

(assert (=> bs!604860 (= lambda!132733 lambda!132712)))

(declare-fun bs!604861 () Bool)

(assert (= bs!604861 (and b!4307805 b!4307749)))

(assert (=> bs!604861 (= lambda!132733 lambda!132722)))

(declare-fun bs!604862 () Bool)

(assert (= bs!604862 (and b!4307805 d!1267714)))

(assert (=> bs!604862 (= lambda!132733 lambda!132715)))

(declare-fun d!1267760 () Bool)

(declare-fun res!1765631 () Bool)

(declare-fun e!2678753 () Bool)

(assert (=> d!1267760 (=> (not res!1765631) (not e!2678753))))

(assert (=> d!1267760 (= res!1765631 (valid!3621 (v!42238 (underlying!9492 thiss!42308))))))

(assert (=> d!1267760 (= (valid!3620 thiss!42308) e!2678753)))

(declare-fun res!1765632 () Bool)

(assert (=> b!4307805 (=> (not res!1765632) (not e!2678753))))

(assert (=> b!4307805 (= res!1765632 (forall!8713 (toList!2355 (map!10120 (v!42238 (underlying!9492 thiss!42308)))) lambda!132733))))

(declare-fun b!4307806 () Bool)

(assert (=> b!4307806 (= e!2678753 (allKeysSameHashInMap!323 (map!10120 (v!42238 (underlying!9492 thiss!42308))) (hashF!6651 thiss!42308)))))

(assert (= (and d!1267760 res!1765631) b!4307805))

(assert (= (and b!4307805 res!1765632) b!4307806))

(assert (=> d!1267760 m!4900753))

(assert (=> b!4307805 m!4900659))

(declare-fun m!4900871 () Bool)

(assert (=> b!4307805 m!4900871))

(assert (=> b!4307806 m!4900659))

(assert (=> b!4307806 m!4900659))

(declare-fun m!4900873 () Bool)

(assert (=> b!4307806 m!4900873))

(assert (=> b!4307665 d!1267760))

(declare-fun bs!604863 () Bool)

(declare-fun d!1267762 () Bool)

(assert (= bs!604863 (and d!1267762 b!4307703)))

(declare-fun lambda!132734 () Int)

(assert (=> bs!604863 (not (= lambda!132734 lambda!132718))))

(declare-fun bs!604864 () Bool)

(assert (= bs!604864 (and d!1267762 d!1267752)))

(assert (=> bs!604864 (= lambda!132734 lambda!132732)))

(declare-fun bs!604865 () Bool)

(assert (= bs!604865 (and d!1267762 d!1267718)))

(assert (=> bs!604865 (not (= lambda!132734 lambda!132719))))

(declare-fun bs!604866 () Bool)

(assert (= bs!604866 (and d!1267762 d!1267702)))

(assert (=> bs!604866 (not (= lambda!132734 lambda!132709))))

(declare-fun bs!604867 () Bool)

(assert (= bs!604867 (and d!1267762 b!4307674)))

(assert (=> bs!604867 (not (= lambda!132734 lambda!132704))))

(declare-fun bs!604868 () Bool)

(assert (= bs!604868 (and d!1267762 d!1267734)))

(assert (=> bs!604868 (= lambda!132734 lambda!132725)))

(declare-fun bs!604869 () Bool)

(assert (= bs!604869 (and d!1267762 d!1267706)))

(assert (=> bs!604869 (not (= lambda!132734 lambda!132712))))

(declare-fun bs!604870 () Bool)

(assert (= bs!604870 (and d!1267762 b!4307749)))

(assert (=> bs!604870 (not (= lambda!132734 lambda!132722))))

(declare-fun bs!604871 () Bool)

(assert (= bs!604871 (and d!1267762 b!4307805)))

(assert (=> bs!604871 (not (= lambda!132734 lambda!132733))))

(declare-fun bs!604872 () Bool)

(assert (= bs!604872 (and d!1267762 d!1267714)))

(assert (=> bs!604872 (not (= lambda!132734 lambda!132715))))

(assert (=> d!1267762 true))

(assert (=> d!1267762 (= (allKeysSameHashInMap!323 lt!1528364 (hashF!6651 thiss!42308)) (forall!8713 (toList!2355 lt!1528364) lambda!132734))))

(declare-fun bs!604873 () Bool)

(assert (= bs!604873 d!1267762))

(declare-fun m!4900875 () Bool)

(assert (=> bs!604873 m!4900875))

(assert (=> b!4307678 d!1267762))

(declare-fun mapNonEmpty!20713 () Bool)

(declare-fun mapRes!20713 () Bool)

(declare-fun tp!1323793 () Bool)

(declare-fun e!2678758 () Bool)

(assert (=> mapNonEmpty!20713 (= mapRes!20713 (and tp!1323793 e!2678758))))

(declare-fun mapRest!20713 () (Array (_ BitVec 32) List!48263))

(declare-fun mapKey!20713 () (_ BitVec 32))

(declare-fun mapValue!20713 () List!48263)

(assert (=> mapNonEmpty!20713 (= mapRest!20710 (store mapRest!20713 mapKey!20713 mapValue!20713))))

(declare-fun tp!1323792 () Bool)

(declare-fun e!2678759 () Bool)

(declare-fun b!4307814 () Bool)

(assert (=> b!4307814 (= e!2678759 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323792))))

(declare-fun tp!1323794 () Bool)

(declare-fun b!4307813 () Bool)

(assert (=> b!4307813 (= e!2678758 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323794))))

(declare-fun condMapEmpty!20713 () Bool)

(declare-fun mapDefault!20713 () List!48263)

(assert (=> mapNonEmpty!20710 (= condMapEmpty!20713 (= mapRest!20710 ((as const (Array (_ BitVec 32) List!48263)) mapDefault!20713)))))

(assert (=> mapNonEmpty!20710 (= tp!1323779 (and e!2678759 mapRes!20713))))

(declare-fun mapIsEmpty!20713 () Bool)

(assert (=> mapIsEmpty!20713 mapRes!20713))

(assert (= (and mapNonEmpty!20710 condMapEmpty!20713) mapIsEmpty!20713))

(assert (= (and mapNonEmpty!20710 (not condMapEmpty!20713)) mapNonEmpty!20713))

(assert (= (and mapNonEmpty!20713 ((_ is Cons!48139) mapValue!20713)) b!4307813))

(assert (= (and mapNonEmpty!20710 ((_ is Cons!48139) mapDefault!20713)) b!4307814))

(declare-fun m!4900877 () Bool)

(assert (=> mapNonEmpty!20713 m!4900877))

(declare-fun e!2678762 () Bool)

(declare-fun b!4307819 () Bool)

(declare-fun tp!1323797 () Bool)

(assert (=> b!4307819 (= e!2678762 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323797))))

(assert (=> mapNonEmpty!20710 (= tp!1323783 e!2678762)))

(assert (= (and mapNonEmpty!20710 ((_ is Cons!48139) mapValue!20710)) b!4307819))

(declare-fun b!4307820 () Bool)

(declare-fun tp!1323798 () Bool)

(declare-fun e!2678763 () Bool)

(assert (=> b!4307820 (= e!2678763 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323798))))

(assert (=> b!4307676 (= tp!1323780 e!2678763)))

(assert (= (and b!4307676 ((_ is Cons!48139) (zeroValue!4890 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308))))))) b!4307820))

(declare-fun tp!1323799 () Bool)

(declare-fun b!4307821 () Bool)

(declare-fun e!2678764 () Bool)

(assert (=> b!4307821 (= e!2678764 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323799))))

(assert (=> b!4307676 (= tp!1323782 e!2678764)))

(assert (= (and b!4307676 ((_ is Cons!48139) (minValue!4890 (v!42237 (underlying!9491 (v!42238 (underlying!9492 thiss!42308))))))) b!4307821))

(declare-fun tp!1323800 () Bool)

(declare-fun b!4307822 () Bool)

(declare-fun e!2678765 () Bool)

(assert (=> b!4307822 (= e!2678765 (and tp_is_empty!23647 tp_is_empty!23645 tp!1323800))))

(assert (=> b!4307670 (= tp!1323784 e!2678765)))

(assert (= (and b!4307670 ((_ is Cons!48139) mapDefault!20710)) b!4307822))

(declare-fun b_lambda!126565 () Bool)

(assert (= b_lambda!126561 (or b!4307674 b_lambda!126565)))

(declare-fun bs!604874 () Bool)

(declare-fun d!1267764 () Bool)

(assert (= bs!604874 (and d!1267764 b!4307674)))

(assert (=> bs!604874 (= (dynLambda!20417 lambda!132704 (h!53572 (toList!2355 lt!1528364))) (noDuplicateKeys!198 (_2!26503 (h!53572 (toList!2355 lt!1528364)))))))

(declare-fun m!4900879 () Bool)

(assert (=> bs!604874 m!4900879))

(assert (=> b!4307691 d!1267764))

(declare-fun b_lambda!126567 () Bool)

(assert (= b_lambda!126559 (or b!4307674 b_lambda!126567)))

(declare-fun bs!604875 () Bool)

(declare-fun d!1267766 () Bool)

(assert (= bs!604875 (and d!1267766 b!4307674)))

(assert (=> bs!604875 (= (dynLambda!20417 lambda!132704 (h!53572 (toList!2355 lt!1528376))) (noDuplicateKeys!198 (_2!26503 (h!53572 (toList!2355 lt!1528376)))))))

(declare-fun m!4900881 () Bool)

(assert (=> bs!604875 m!4900881))

(assert (=> b!4307686 d!1267766))

(declare-fun b_lambda!126569 () Bool)

(assert (= b_lambda!126563 (or (and b!4307676 b_free!128483) b_lambda!126569)))

(check-sat (not d!1267720) (not b_lambda!126565) (not b!4307814) (not b!4307755) (not d!1267732) (not d!1267704) (not b!4307718) (not d!1267742) (not b!4307692) (not b!4307805) (not d!1267706) (not d!1267756) (not b_lambda!126567) (not bs!604874) (not b_next!129189) (not b!4307704) (not b!4307690) (not b!4307697) (not d!1267738) (not b!4307813) (not d!1267746) (not bm!297034) (not tb!257281) (not b!4307752) (not bm!297033) (not b!4307750) (not b!4307795) (not b!4307806) (not b!4307798) (not bm!297038) (not d!1267710) (not d!1267722) (not d!1267734) (not b!4307757) (not b!4307822) (not b!4307749) (not bm!297036) (not b!4307705) (not bm!297043) (not mapNonEmpty!20713) (not b!4307723) (not b_lambda!126569) (not d!1267724) (not b_next!129187) (not d!1267744) (not d!1267760) (not d!1267740) tp_is_empty!23645 (not b!4307717) (not d!1267736) tp_is_empty!23647 (not d!1267754) (not d!1267728) (not bm!297044) (not b!4307794) (not b!4307821) (not b!4307803) (not d!1267758) (not b!4307768) (not b!4307819) (not b!4307804) (not b!4307703) (not d!1267718) (not b!4307799) (not d!1267752) b_and!339897 (not b!4307687) (not b!4307712) (not d!1267716) (not d!1267726) (not d!1267714) (not d!1267702) (not b!4307820) (not d!1267730) (not d!1267762) b_and!339895 (not b!4307711) (not bs!604875) (not bm!297037) (not b!4307801) (not bm!297035))
(check-sat b_and!339897 b_and!339895 (not b_next!129189) (not b_next!129187))
