; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462048 () Bool)

(assert start!462048)

(declare-fun b!4617414 () Bool)

(declare-fun res!1934883 () Bool)

(declare-fun e!2880160 () Bool)

(assert (=> b!4617414 (=> (not res!1934883) (not e!2880160))))

(declare-datatypes ((Hashable!5851 0))(
  ( (HashableExt!5850 (__x!31554 Int)) )
))
(declare-fun hashF!1389 () Hashable!5851)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12785 0))(
  ( (K!12786 (val!18499 Int)) )
))
(declare-datatypes ((V!13031 0))(
  ( (V!13032 (val!18500 Int)) )
))
(declare-datatypes ((tuple2!52262 0))(
  ( (tuple2!52263 (_1!29425 K!12785) (_2!29425 V!13031)) )
))
(declare-datatypes ((List!51525 0))(
  ( (Nil!51401) (Cons!51401 (h!57421 tuple2!52262) (t!358537 List!51525)) )
))
(declare-fun newBucket!224 () List!51525)

(declare-fun allKeysSameHash!1308 (List!51525 (_ BitVec 64) Hashable!5851) Bool)

(assert (=> b!4617414 (= res!1934883 (allKeysSameHash!1308 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4617415 () Bool)

(declare-fun res!1934885 () Bool)

(declare-fun e!2880161 () Bool)

(assert (=> b!4617415 (=> (not res!1934885) (not e!2880161))))

(declare-fun oldBucket!40 () List!51525)

(declare-fun key!4968 () K!12785)

(declare-fun removePairForKey!1077 (List!51525 K!12785) List!51525)

(assert (=> b!4617415 (= res!1934885 (= (removePairForKey!1077 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4617416 () Bool)

(declare-fun res!1934882 () Bool)

(assert (=> b!4617416 (=> (not res!1934882) (not e!2880161))))

(assert (=> b!4617416 (= res!1934882 (allKeysSameHash!1308 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4617417 () Bool)

(declare-fun e!2880162 () Bool)

(assert (=> b!4617417 (= e!2880162 true)))

(declare-datatypes ((Option!11478 0))(
  ( (None!11477) (Some!11477 (v!45543 tuple2!52262)) )
))
(declare-fun lt!1773280 () Option!11478)

(declare-fun getPair!246 (List!51525 K!12785) Option!11478)

(assert (=> b!4617417 (= lt!1773280 (getPair!246 oldBucket!40 key!4968))))

(declare-fun lt!1773291 () List!51525)

(declare-fun isDefined!8743 (Option!11478) Bool)

(assert (=> b!4617417 (isDefined!8743 (getPair!246 lt!1773291 key!4968))))

(declare-datatypes ((Unit!110642 0))(
  ( (Unit!110643) )
))
(declare-fun lt!1773282 () Unit!110642)

(declare-datatypes ((tuple2!52264 0))(
  ( (tuple2!52265 (_1!29426 (_ BitVec 64)) (_2!29426 List!51525)) )
))
(declare-fun lt!1773284 () tuple2!52264)

(declare-datatypes ((List!51526 0))(
  ( (Nil!51402) (Cons!51402 (h!57422 tuple2!52264) (t!358538 List!51526)) )
))
(declare-fun lt!1773286 () List!51526)

(declare-fun lambda!189860 () Int)

(declare-fun forallContained!2969 (List!51526 Int tuple2!52264) Unit!110642)

(assert (=> b!4617417 (= lt!1773282 (forallContained!2969 lt!1773286 lambda!189860 lt!1773284))))

(declare-fun contains!14362 (List!51526 tuple2!52264) Bool)

(assert (=> b!4617417 (contains!14362 lt!1773286 lt!1773284)))

(declare-fun lt!1773285 () (_ BitVec 64))

(assert (=> b!4617417 (= lt!1773284 (tuple2!52265 lt!1773285 lt!1773291))))

(declare-fun lt!1773288 () Unit!110642)

(declare-datatypes ((ListLongMap!3463 0))(
  ( (ListLongMap!3464 (toList!4873 List!51526)) )
))
(declare-fun lt!1773290 () ListLongMap!3463)

(declare-fun lemmaGetValueImpliesTupleContained!51 (ListLongMap!3463 (_ BitVec 64) List!51525) Unit!110642)

(assert (=> b!4617417 (= lt!1773288 (lemmaGetValueImpliesTupleContained!51 lt!1773290 lt!1773285 lt!1773291))))

(declare-fun apply!12119 (ListLongMap!3463 (_ BitVec 64)) List!51525)

(assert (=> b!4617417 (= lt!1773291 (apply!12119 lt!1773290 lt!1773285))))

(declare-fun contains!14363 (ListLongMap!3463 (_ BitVec 64)) Bool)

(assert (=> b!4617417 (contains!14363 lt!1773290 lt!1773285)))

(declare-fun lt!1773289 () Unit!110642)

(declare-fun lemmaInGenMapThenLongMapContainsHash!452 (ListLongMap!3463 K!12785 Hashable!5851) Unit!110642)

(assert (=> b!4617417 (= lt!1773289 (lemmaInGenMapThenLongMapContainsHash!452 lt!1773290 key!4968 hashF!1389))))

(declare-fun lt!1773281 () Unit!110642)

(declare-fun lemmaInGenMapThenGetPairDefined!42 (ListLongMap!3463 K!12785 Hashable!5851) Unit!110642)

(assert (=> b!4617417 (= lt!1773281 (lemmaInGenMapThenGetPairDefined!42 lt!1773290 key!4968 hashF!1389))))

(assert (=> b!4617417 (= lt!1773290 (ListLongMap!3464 lt!1773286))))

(declare-fun b!4617418 () Bool)

(declare-fun res!1934890 () Bool)

(assert (=> b!4617418 (=> (not res!1934890) (not e!2880161))))

(declare-fun noDuplicateKeys!1454 (List!51525) Bool)

(assert (=> b!4617418 (= res!1934890 (noDuplicateKeys!1454 newBucket!224))))

(declare-fun b!4617419 () Bool)

(assert (=> b!4617419 (= e!2880160 (not e!2880162))))

(declare-fun res!1934888 () Bool)

(assert (=> b!4617419 (=> res!1934888 e!2880162)))

(get-info :version)

(assert (=> b!4617419 (= res!1934888 (or (and ((_ is Cons!51401) oldBucket!40) (= (_1!29425 (h!57421 oldBucket!40)) key!4968)) (not ((_ is Cons!51401) oldBucket!40)) (= (_1!29425 (h!57421 oldBucket!40)) key!4968)))))

(declare-fun e!2880163 () Bool)

(assert (=> b!4617419 e!2880163))

(declare-fun res!1934886 () Bool)

(assert (=> b!4617419 (=> (not res!1934886) (not e!2880163))))

(declare-datatypes ((ListMap!4177 0))(
  ( (ListMap!4178 (toList!4874 List!51525)) )
))
(declare-fun lt!1773283 () ListMap!4177)

(declare-fun lt!1773287 () ListMap!4177)

(declare-fun addToMapMapFromBucket!915 (List!51525 ListMap!4177) ListMap!4177)

(assert (=> b!4617419 (= res!1934886 (= lt!1773283 (addToMapMapFromBucket!915 oldBucket!40 lt!1773287)))))

(declare-fun extractMap!1510 (List!51526) ListMap!4177)

(assert (=> b!4617419 (= lt!1773287 (extractMap!1510 Nil!51402))))

(assert (=> b!4617419 true))

(declare-fun tp!1341675 () Bool)

(declare-fun b!4617420 () Bool)

(declare-fun tp_is_empty!29111 () Bool)

(declare-fun tp_is_empty!29109 () Bool)

(declare-fun e!2880164 () Bool)

(assert (=> b!4617420 (= e!2880164 (and tp_is_empty!29109 tp_is_empty!29111 tp!1341675))))

(declare-fun b!4617421 () Bool)

(declare-fun e!2880159 () Bool)

(assert (=> b!4617421 (= e!2880161 e!2880159)))

(declare-fun res!1934887 () Bool)

(assert (=> b!4617421 (=> (not res!1934887) (not e!2880159))))

(declare-fun contains!14364 (ListMap!4177 K!12785) Bool)

(assert (=> b!4617421 (= res!1934887 (contains!14364 lt!1773283 key!4968))))

(assert (=> b!4617421 (= lt!1773283 (extractMap!1510 lt!1773286))))

(assert (=> b!4617421 (= lt!1773286 (Cons!51402 (tuple2!52265 hash!414 oldBucket!40) Nil!51402))))

(declare-fun b!4617422 () Bool)

(assert (=> b!4617422 (= e!2880163 (= lt!1773287 (ListMap!4178 Nil!51401)))))

(declare-fun b!4617423 () Bool)

(assert (=> b!4617423 (= e!2880159 e!2880160)))

(declare-fun res!1934889 () Bool)

(assert (=> b!4617423 (=> (not res!1934889) (not e!2880160))))

(assert (=> b!4617423 (= res!1934889 (= lt!1773285 hash!414))))

(declare-fun hash!3415 (Hashable!5851 K!12785) (_ BitVec 64))

(assert (=> b!4617423 (= lt!1773285 (hash!3415 hashF!1389 key!4968))))

(declare-fun e!2880158 () Bool)

(declare-fun b!4617424 () Bool)

(declare-fun tp!1341674 () Bool)

(assert (=> b!4617424 (= e!2880158 (and tp_is_empty!29109 tp_is_empty!29111 tp!1341674))))

(declare-fun res!1934884 () Bool)

(assert (=> start!462048 (=> (not res!1934884) (not e!2880161))))

(assert (=> start!462048 (= res!1934884 (noDuplicateKeys!1454 oldBucket!40))))

(assert (=> start!462048 e!2880161))

(assert (=> start!462048 true))

(assert (=> start!462048 e!2880158))

(assert (=> start!462048 tp_is_empty!29109))

(assert (=> start!462048 e!2880164))

(assert (= (and start!462048 res!1934884) b!4617418))

(assert (= (and b!4617418 res!1934890) b!4617415))

(assert (= (and b!4617415 res!1934885) b!4617416))

(assert (= (and b!4617416 res!1934882) b!4617421))

(assert (= (and b!4617421 res!1934887) b!4617423))

(assert (= (and b!4617423 res!1934889) b!4617414))

(assert (= (and b!4617414 res!1934883) b!4617419))

(assert (= (and b!4617419 res!1934886) b!4617422))

(assert (= (and b!4617419 (not res!1934888)) b!4617417))

(assert (= (and start!462048 ((_ is Cons!51401) oldBucket!40)) b!4617424))

(assert (= (and start!462048 ((_ is Cons!51401) newBucket!224)) b!4617420))

(declare-fun m!5452715 () Bool)

(assert (=> b!4617418 m!5452715))

(declare-fun m!5452717 () Bool)

(assert (=> b!4617417 m!5452717))

(declare-fun m!5452719 () Bool)

(assert (=> b!4617417 m!5452719))

(declare-fun m!5452721 () Bool)

(assert (=> b!4617417 m!5452721))

(assert (=> b!4617417 m!5452717))

(declare-fun m!5452723 () Bool)

(assert (=> b!4617417 m!5452723))

(declare-fun m!5452725 () Bool)

(assert (=> b!4617417 m!5452725))

(declare-fun m!5452727 () Bool)

(assert (=> b!4617417 m!5452727))

(declare-fun m!5452729 () Bool)

(assert (=> b!4617417 m!5452729))

(declare-fun m!5452731 () Bool)

(assert (=> b!4617417 m!5452731))

(declare-fun m!5452733 () Bool)

(assert (=> b!4617417 m!5452733))

(declare-fun m!5452735 () Bool)

(assert (=> b!4617417 m!5452735))

(declare-fun m!5452737 () Bool)

(assert (=> b!4617415 m!5452737))

(declare-fun m!5452739 () Bool)

(assert (=> b!4617416 m!5452739))

(declare-fun m!5452741 () Bool)

(assert (=> b!4617419 m!5452741))

(declare-fun m!5452743 () Bool)

(assert (=> b!4617419 m!5452743))

(declare-fun m!5452745 () Bool)

(assert (=> b!4617421 m!5452745))

(declare-fun m!5452747 () Bool)

(assert (=> b!4617421 m!5452747))

(declare-fun m!5452749 () Bool)

(assert (=> b!4617423 m!5452749))

(declare-fun m!5452751 () Bool)

(assert (=> b!4617414 m!5452751))

(declare-fun m!5452753 () Bool)

(assert (=> start!462048 m!5452753))

(check-sat (not b!4617417) (not b!4617423) (not b!4617418) (not b!4617424) (not start!462048) (not b!4617416) tp_is_empty!29109 (not b!4617420) (not b!4617419) (not b!4617414) tp_is_empty!29111 (not b!4617421) (not b!4617415))
(check-sat)
