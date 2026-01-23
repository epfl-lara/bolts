; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430780 () Bool)

(assert start!430780)

(declare-fun b!4420403 () Bool)

(declare-fun e!2752376 () Bool)

(declare-fun e!2752368 () Bool)

(assert (=> b!4420403 (= e!2752376 (not e!2752368))))

(declare-fun res!1826805 () Bool)

(assert (=> b!4420403 (=> res!1826805 e!2752368)))

(declare-datatypes ((V!11141 0))(
  ( (V!11142 (val!16987 Int)) )
))
(declare-datatypes ((K!10895 0))(
  ( (K!10896 (val!16988 Int)) )
))
(declare-datatypes ((tuple2!49294 0))(
  ( (tuple2!49295 (_1!27941 K!10895) (_2!27941 V!11141)) )
))
(declare-datatypes ((List!49654 0))(
  ( (Nil!49530) (Cons!49530 (h!55203 tuple2!49294) (t!356592 List!49654)) )
))
(declare-datatypes ((tuple2!49296 0))(
  ( (tuple2!49297 (_1!27942 (_ BitVec 64)) (_2!27942 List!49654)) )
))
(declare-datatypes ((List!49655 0))(
  ( (Nil!49531) (Cons!49531 (h!55204 tuple2!49296) (t!356593 List!49655)) )
))
(declare-datatypes ((ListLongMap!2095 0))(
  ( (ListLongMap!2096 (toList!3445 List!49655)) )
))
(declare-fun lt!1620726 () ListLongMap!2095)

(declare-fun lambda!152886 () Int)

(declare-fun forall!9526 (List!49655 Int) Bool)

(assert (=> b!4420403 (= res!1826805 (not (forall!9526 (toList!3445 lt!1620726) lambda!152886)))))

(assert (=> b!4420403 (forall!9526 (toList!3445 lt!1620726) lambda!152886)))

(declare-fun lm!1616 () ListLongMap!2095)

(declare-fun lt!1620732 () tuple2!49296)

(declare-fun +!1042 (ListLongMap!2095 tuple2!49296) ListLongMap!2095)

(assert (=> b!4420403 (= lt!1620726 (+!1042 lm!1616 lt!1620732))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49654)

(assert (=> b!4420403 (= lt!1620732 (tuple2!49297 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81294 0))(
  ( (Unit!81295) )
))
(declare-fun lt!1620731 () Unit!81294)

(declare-fun addValidProp!373 (ListLongMap!2095 Int (_ BitVec 64) List!49654) Unit!81294)

(assert (=> b!4420403 (= lt!1620731 (addValidProp!373 lm!1616 lambda!152886 hash!366 newBucket!194))))

(declare-fun b!4420404 () Bool)

(declare-fun res!1826799 () Bool)

(declare-fun e!2752373 () Bool)

(assert (=> b!4420404 (=> (not res!1826799) (not e!2752373))))

(declare-fun key!3717 () K!10895)

(declare-datatypes ((ListMap!2689 0))(
  ( (ListMap!2690 (toList!3446 List!49654)) )
))
(declare-fun contains!12007 (ListMap!2689 K!10895) Bool)

(declare-fun extractMap!790 (List!49655) ListMap!2689)

(assert (=> b!4420404 (= res!1826799 (not (contains!12007 (extractMap!790 (toList!3445 lm!1616)) key!3717)))))

(declare-fun e!2752374 () Bool)

(declare-fun tp_is_empty!26161 () Bool)

(declare-fun b!4420405 () Bool)

(declare-fun tp!1332941 () Bool)

(declare-fun tp_is_empty!26163 () Bool)

(assert (=> b!4420405 (= e!2752374 (and tp_is_empty!26163 tp_is_empty!26161 tp!1332941))))

(declare-fun b!4420406 () Bool)

(declare-fun e!2752371 () Unit!81294)

(declare-fun Unit!81296 () Unit!81294)

(assert (=> b!4420406 (= e!2752371 Unit!81296)))

(declare-datatypes ((Hashable!5123 0))(
  ( (HashableExt!5122 (__x!30826 Int)) )
))
(declare-fun hashF!1220 () Hashable!5123)

(declare-fun lt!1620733 () Unit!81294)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!16 (ListLongMap!2095 K!10895 Hashable!5123) Unit!81294)

(assert (=> b!4420406 (= lt!1620733 (lemmaExtractTailMapContainsThenExtractMapDoes!16 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4420406 false))

(declare-fun b!4420407 () Bool)

(assert (=> b!4420407 (= e!2752373 e!2752376)))

(declare-fun res!1826802 () Bool)

(assert (=> b!4420407 (=> (not res!1826802) (not e!2752376))))

(declare-fun e!2752372 () Bool)

(assert (=> b!4420407 (= res!1826802 e!2752372)))

(declare-fun res!1826797 () Bool)

(assert (=> b!4420407 (=> res!1826797 e!2752372)))

(declare-fun e!2752369 () Bool)

(assert (=> b!4420407 (= res!1826797 e!2752369)))

(declare-fun res!1826800 () Bool)

(assert (=> b!4420407 (=> (not res!1826800) (not e!2752369))))

(declare-fun lt!1620728 () Bool)

(assert (=> b!4420407 (= res!1826800 lt!1620728)))

(declare-fun contains!12008 (ListLongMap!2095 (_ BitVec 64)) Bool)

(assert (=> b!4420407 (= lt!1620728 (contains!12008 lm!1616 hash!366))))

(declare-fun b!4420408 () Bool)

(declare-fun res!1826798 () Bool)

(assert (=> b!4420408 (=> (not res!1826798) (not e!2752373))))

(declare-fun allKeysSameHashInMap!835 (ListLongMap!2095 Hashable!5123) Bool)

(assert (=> b!4420408 (= res!1826798 (allKeysSameHashInMap!835 lm!1616 hashF!1220))))

(declare-fun newValue!93 () V!11141)

(declare-fun b!4420409 () Bool)

(assert (=> b!4420409 (= e!2752372 (and (not lt!1620728) (= newBucket!194 (Cons!49530 (tuple2!49295 key!3717 newValue!93) Nil!49530))))))

(declare-fun b!4420410 () Bool)

(declare-fun res!1826804 () Bool)

(assert (=> b!4420410 (=> (not res!1826804) (not e!2752376))))

(declare-fun noDuplicateKeys!729 (List!49654) Bool)

(assert (=> b!4420410 (= res!1826804 (noDuplicateKeys!729 newBucket!194))))

(declare-fun res!1826801 () Bool)

(assert (=> start!430780 (=> (not res!1826801) (not e!2752373))))

(assert (=> start!430780 (= res!1826801 (forall!9526 (toList!3445 lm!1616) lambda!152886))))

(assert (=> start!430780 e!2752373))

(assert (=> start!430780 tp_is_empty!26161))

(assert (=> start!430780 tp_is_empty!26163))

(assert (=> start!430780 e!2752374))

(declare-fun e!2752375 () Bool)

(declare-fun inv!65081 (ListLongMap!2095) Bool)

(assert (=> start!430780 (and (inv!65081 lm!1616) e!2752375)))

(assert (=> start!430780 true))

(declare-fun b!4420411 () Bool)

(declare-fun res!1826803 () Bool)

(assert (=> b!4420411 (=> (not res!1826803) (not e!2752373))))

(declare-fun hash!2063 (Hashable!5123 K!10895) (_ BitVec 64))

(assert (=> b!4420411 (= res!1826803 (= (hash!2063 hashF!1220 key!3717) hash!366))))

(declare-fun b!4420412 () Bool)

(declare-fun res!1826794 () Bool)

(assert (=> b!4420412 (=> (not res!1826794) (not e!2752376))))

(assert (=> b!4420412 (= res!1826794 (forall!9526 (toList!3445 lm!1616) lambda!152886))))

(declare-fun b!4420413 () Bool)

(declare-fun Unit!81297 () Unit!81294)

(assert (=> b!4420413 (= e!2752371 Unit!81297)))

(declare-fun b!4420414 () Bool)

(declare-fun res!1826796 () Bool)

(assert (=> b!4420414 (=> res!1826796 e!2752368)))

(get-info :version)

(assert (=> b!4420414 (= res!1826796 (or (and ((_ is Cons!49531) (toList!3445 lm!1616)) (= (_1!27942 (h!55204 (toList!3445 lm!1616))) hash!366)) (not ((_ is Cons!49531) (toList!3445 lm!1616))) (= (_1!27942 (h!55204 (toList!3445 lm!1616))) hash!366)))))

(declare-fun b!4420415 () Bool)

(declare-fun e!2752370 () Bool)

(assert (=> b!4420415 (= e!2752368 e!2752370)))

(declare-fun res!1826793 () Bool)

(assert (=> b!4420415 (=> res!1826793 e!2752370)))

(declare-fun head!9184 (ListLongMap!2095) tuple2!49296)

(assert (=> b!4420415 (= res!1826793 (= (head!9184 lm!1616) lt!1620732))))

(declare-fun lt!1620729 () ListLongMap!2095)

(declare-fun eq!387 (ListMap!2689 ListMap!2689) Bool)

(declare-fun +!1043 (ListMap!2689 tuple2!49294) ListMap!2689)

(assert (=> b!4420415 (eq!387 (extractMap!790 (toList!3445 (+!1042 lt!1620729 lt!1620732))) (+!1043 (extractMap!790 (toList!3445 lt!1620729)) (tuple2!49295 key!3717 newValue!93)))))

(declare-fun lt!1620730 () Unit!81294)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!103 (ListLongMap!2095 (_ BitVec 64) List!49654 K!10895 V!11141 Hashable!5123) Unit!81294)

(assert (=> b!4420415 (= lt!1620730 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!103 lt!1620729 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7230 (ListLongMap!2095) ListLongMap!2095)

(assert (=> b!4420415 (= lt!1620729 (tail!7230 lm!1616))))

(declare-fun lt!1620727 () Unit!81294)

(assert (=> b!4420415 (= lt!1620727 e!2752371)))

(declare-fun c!752405 () Bool)

(declare-fun tail!7231 (List!49655) List!49655)

(assert (=> b!4420415 (= c!752405 (contains!12007 (extractMap!790 (tail!7231 (toList!3445 lm!1616))) key!3717))))

(declare-fun b!4420416 () Bool)

(declare-fun tp!1332942 () Bool)

(assert (=> b!4420416 (= e!2752375 tp!1332942)))

(declare-fun b!4420417 () Bool)

(declare-fun apply!11581 (ListLongMap!2095 (_ BitVec 64)) List!49654)

(assert (=> b!4420417 (= e!2752369 (= newBucket!194 (Cons!49530 (tuple2!49295 key!3717 newValue!93) (apply!11581 lm!1616 hash!366))))))

(declare-fun b!4420418 () Bool)

(assert (=> b!4420418 (= e!2752370 (forall!9526 (toList!3445 lm!1616) lambda!152886))))

(declare-fun b!4420419 () Bool)

(declare-fun res!1826795 () Bool)

(assert (=> b!4420419 (=> (not res!1826795) (not e!2752373))))

(declare-fun allKeysSameHash!689 (List!49654 (_ BitVec 64) Hashable!5123) Bool)

(assert (=> b!4420419 (= res!1826795 (allKeysSameHash!689 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!430780 res!1826801) b!4420408))

(assert (= (and b!4420408 res!1826798) b!4420411))

(assert (= (and b!4420411 res!1826803) b!4420419))

(assert (= (and b!4420419 res!1826795) b!4420404))

(assert (= (and b!4420404 res!1826799) b!4420407))

(assert (= (and b!4420407 res!1826800) b!4420417))

(assert (= (and b!4420407 (not res!1826797)) b!4420409))

(assert (= (and b!4420407 res!1826802) b!4420410))

(assert (= (and b!4420410 res!1826804) b!4420412))

(assert (= (and b!4420412 res!1826794) b!4420403))

(assert (= (and b!4420403 (not res!1826805)) b!4420414))

(assert (= (and b!4420414 (not res!1826796)) b!4420415))

(assert (= (and b!4420415 c!752405) b!4420406))

(assert (= (and b!4420415 (not c!752405)) b!4420413))

(assert (= (and b!4420415 (not res!1826793)) b!4420418))

(assert (= (and start!430780 ((_ is Cons!49530) newBucket!194)) b!4420405))

(assert (= start!430780 b!4420416))

(declare-fun m!5097625 () Bool)

(assert (=> b!4420407 m!5097625))

(declare-fun m!5097627 () Bool)

(assert (=> start!430780 m!5097627))

(declare-fun m!5097629 () Bool)

(assert (=> start!430780 m!5097629))

(declare-fun m!5097631 () Bool)

(assert (=> b!4420415 m!5097631))

(declare-fun m!5097633 () Bool)

(assert (=> b!4420415 m!5097633))

(declare-fun m!5097635 () Bool)

(assert (=> b!4420415 m!5097635))

(declare-fun m!5097637 () Bool)

(assert (=> b!4420415 m!5097637))

(declare-fun m!5097639 () Bool)

(assert (=> b!4420415 m!5097639))

(declare-fun m!5097641 () Bool)

(assert (=> b!4420415 m!5097641))

(declare-fun m!5097643 () Bool)

(assert (=> b!4420415 m!5097643))

(declare-fun m!5097645 () Bool)

(assert (=> b!4420415 m!5097645))

(assert (=> b!4420415 m!5097641))

(declare-fun m!5097647 () Bool)

(assert (=> b!4420415 m!5097647))

(assert (=> b!4420415 m!5097633))

(declare-fun m!5097649 () Bool)

(assert (=> b!4420415 m!5097649))

(assert (=> b!4420415 m!5097645))

(assert (=> b!4420415 m!5097639))

(declare-fun m!5097651 () Bool)

(assert (=> b!4420415 m!5097651))

(assert (=> b!4420415 m!5097631))

(declare-fun m!5097653 () Bool)

(assert (=> b!4420404 m!5097653))

(assert (=> b!4420404 m!5097653))

(declare-fun m!5097655 () Bool)

(assert (=> b!4420404 m!5097655))

(declare-fun m!5097657 () Bool)

(assert (=> b!4420406 m!5097657))

(declare-fun m!5097659 () Bool)

(assert (=> b!4420403 m!5097659))

(assert (=> b!4420403 m!5097659))

(declare-fun m!5097661 () Bool)

(assert (=> b!4420403 m!5097661))

(declare-fun m!5097663 () Bool)

(assert (=> b!4420403 m!5097663))

(declare-fun m!5097665 () Bool)

(assert (=> b!4420417 m!5097665))

(declare-fun m!5097667 () Bool)

(assert (=> b!4420419 m!5097667))

(assert (=> b!4420412 m!5097627))

(declare-fun m!5097669 () Bool)

(assert (=> b!4420408 m!5097669))

(declare-fun m!5097671 () Bool)

(assert (=> b!4420411 m!5097671))

(declare-fun m!5097673 () Bool)

(assert (=> b!4420410 m!5097673))

(assert (=> b!4420418 m!5097627))

(check-sat (not b!4420407) (not b!4420418) (not b!4420405) (not b!4420404) (not b!4420406) (not b!4420411) (not b!4420410) (not b!4420415) (not start!430780) (not b!4420417) (not b!4420412) (not b!4420419) tp_is_empty!26163 tp_is_empty!26161 (not b!4420408) (not b!4420416) (not b!4420403))
(check-sat)
