; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497634 () Bool)

(assert start!497634)

(declare-fun b!4812709 () Bool)

(declare-fun b_free!130275 () Bool)

(declare-fun b_next!131065 () Bool)

(assert (=> b!4812709 (= b_free!130275 (not b_next!131065))))

(declare-fun tp!1361367 () Bool)

(declare-fun b_and!342083 () Bool)

(assert (=> b!4812709 (= tp!1361367 b_and!342083)))

(declare-fun b!4812706 () Bool)

(declare-fun b_free!130277 () Bool)

(declare-fun b_next!131067 () Bool)

(assert (=> b!4812706 (= b_free!130277 (not b_next!131067))))

(declare-fun tp!1361366 () Bool)

(declare-fun b_and!342085 () Bool)

(assert (=> b!4812706 (= tp!1361366 b_and!342085)))

(declare-fun bs!1160208 () Bool)

(declare-fun b!4812708 () Bool)

(declare-fun b!4812703 () Bool)

(assert (= bs!1160208 (and b!4812708 b!4812703)))

(declare-fun lambda!233874 () Int)

(declare-fun lambda!233873 () Int)

(assert (=> bs!1160208 (= lambda!233874 lambda!233873)))

(declare-fun b!4812699 () Bool)

(assert (=> b!4812699 false))

(declare-fun lt!1963913 () (_ BitVec 64))

(declare-datatypes ((Unit!141660 0))(
  ( (Unit!141661) )
))
(declare-fun lt!1963917 () Unit!141660)

(declare-datatypes ((K!16224 0))(
  ( (K!16225 (val!21285 Int)) )
))
(declare-datatypes ((V!16470 0))(
  ( (V!16471 (val!21286 Int)) )
))
(declare-datatypes ((tuple2!57508 0))(
  ( (tuple2!57509 (_1!32048 K!16224) (_2!32048 V!16470)) )
))
(declare-datatypes ((List!54719 0))(
  ( (Nil!54595) (Cons!54595 (h!61027 tuple2!57508) (t!362211 List!54719)) )
))
(declare-fun lt!1963919 () List!54719)

(declare-datatypes ((tuple2!57510 0))(
  ( (tuple2!57511 (_1!32049 (_ BitVec 64)) (_2!32049 List!54719)) )
))
(declare-datatypes ((List!54720 0))(
  ( (Nil!54596) (Cons!54596 (h!61028 tuple2!57510) (t!362212 List!54720)) )
))
(declare-datatypes ((ListLongMap!5653 0))(
  ( (ListLongMap!5654 (toList!7176 List!54720)) )
))
(declare-fun lt!1963914 () ListLongMap!5653)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1014 (List!54720 (_ BitVec 64) List!54719) Unit!141660)

(assert (=> b!4812699 (= lt!1963917 (lemmaGetValueByKeyImpliesContainsTuple!1014 (toList!7176 lt!1963914) lt!1963913 lt!1963919))))

(declare-datatypes ((Option!13334 0))(
  ( (None!13333) (Some!13333 (v!48940 List!54719)) )
))
(declare-fun isDefined!10471 (Option!13334) Bool)

(declare-fun getValueByKey!2510 (List!54720 (_ BitVec 64)) Option!13334)

(assert (=> b!4812699 (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun lt!1963918 () Unit!141660)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2297 (List!54720 (_ BitVec 64)) Unit!141660)

(assert (=> b!4812699 (= lt!1963918 (lemmaContainsKeyImpliesGetValueByKeyDefined!2297 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun containsKey!4175 (List!54720 (_ BitVec 64)) Bool)

(assert (=> b!4812699 (containsKey!4175 (toList!7176 lt!1963914) lt!1963913)))

(declare-fun lt!1963923 () Unit!141660)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!291 (List!54720 (_ BitVec 64)) Unit!141660)

(assert (=> b!4812699 (= lt!1963923 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!291 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun e!3006785 () Unit!141660)

(declare-fun Unit!141662 () Unit!141660)

(assert (=> b!4812699 (= e!3006785 Unit!141662)))

(declare-fun b!4812700 () Bool)

(declare-fun res!2047018 () Bool)

(declare-fun e!3006784 () Bool)

(assert (=> b!4812700 (=> (not res!2047018) (not e!3006784))))

(declare-fun lt!1963921 () ListLongMap!5653)

(declare-fun contains!18332 (ListLongMap!5653 (_ BitVec 64)) Bool)

(assert (=> b!4812700 (= res!2047018 (contains!18332 lt!1963921 lt!1963913))))

(declare-fun b!4812701 () Bool)

(declare-fun e!3006776 () Bool)

(declare-fun e!3006781 () Bool)

(assert (=> b!4812701 (= e!3006776 e!3006781)))

(declare-fun b!4812702 () Bool)

(declare-fun e!3006780 () Bool)

(assert (=> b!4812702 (= e!3006781 e!3006780)))

(declare-fun e!3006778 () Unit!141660)

(declare-fun lt!1963916 () tuple2!57510)

(declare-fun forallContained!4281 (List!54720 Int tuple2!57510) Unit!141660)

(assert (=> b!4812703 (= e!3006778 (forallContained!4281 (toList!7176 lt!1963914) lambda!233873 lt!1963916))))

(declare-datatypes ((array!18718 0))(
  ( (array!18719 (arr!8351 (Array (_ BitVec 32) (_ BitVec 64))) (size!36597 (_ BitVec 32))) )
))
(declare-datatypes ((array!18720 0))(
  ( (array!18721 (arr!8352 (Array (_ BitVec 32) List!54719)) (size!36598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10166 0))(
  ( (LongMapFixedSize!10167 (defaultEntry!5505 Int) (mask!15105 (_ BitVec 32)) (extraKeys!5363 (_ BitVec 32)) (zeroValue!5376 List!54719) (minValue!5376 List!54719) (_size!10191 (_ BitVec 32)) (_keys!5432 array!18718) (_values!5401 array!18720) (_vacant!5148 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20097 0))(
  ( (Cell!20098 (v!48941 LongMapFixedSize!10166)) )
))
(declare-datatypes ((MutLongMap!5083 0))(
  ( (LongMap!5083 (underlying!10373 Cell!20097)) (MutLongMapExt!5082 (__x!33347 Int)) )
))
(declare-datatypes ((Hashable!7094 0))(
  ( (HashableExt!7093 (__x!33348 Int)) )
))
(declare-datatypes ((Cell!20099 0))(
  ( (Cell!20100 (v!48942 MutLongMap!5083)) )
))
(declare-datatypes ((MutableMap!4967 0))(
  ( (MutableMapExt!4966 (__x!33349 Int)) (HashMap!4967 (underlying!10374 Cell!20099) (hashF!13371 Hashable!7094) (_size!10192 (_ BitVec 32)) (defaultValue!5138 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4967)

(declare-fun map!12462 (MutLongMap!5083) ListLongMap!5653)

(assert (=> b!4812703 (= lt!1963914 (map!12462 (v!48942 (underlying!10374 thiss!41921))))))

(declare-fun apply!13189 (MutLongMap!5083 (_ BitVec 64)) List!54719)

(assert (=> b!4812703 (= lt!1963919 (apply!13189 (v!48942 (underlying!10374 thiss!41921)) lt!1963913))))

(assert (=> b!4812703 (= lt!1963916 (tuple2!57511 lt!1963913 lt!1963919))))

(declare-fun c!820257 () Bool)

(declare-fun contains!18333 (List!54720 tuple2!57510) Bool)

(assert (=> b!4812703 (= c!820257 (not (contains!18333 (toList!7176 lt!1963914) lt!1963916)))))

(declare-fun lt!1963915 () Unit!141660)

(assert (=> b!4812703 (= lt!1963915 e!3006785)))

(declare-fun b!4812704 () Bool)

(declare-fun e!3006782 () Bool)

(declare-fun lt!1963922 () MutLongMap!5083)

(get-info :version)

(assert (=> b!4812704 (= e!3006782 (and e!3006776 ((_ is LongMap!5083) lt!1963922)))))

(assert (=> b!4812704 (= lt!1963922 (v!48942 (underlying!10374 thiss!41921)))))

(declare-fun b!4812705 () Bool)

(declare-fun e!3006786 () Bool)

(assert (=> b!4812705 (= e!3006786 e!3006784)))

(declare-fun res!2047017 () Bool)

(assert (=> b!4812705 (=> (not res!2047017) (not e!3006784))))

(declare-fun key!1652 () K!16224)

(declare-datatypes ((ListMap!6593 0))(
  ( (ListMap!6594 (toList!7177 List!54719)) )
))
(declare-fun contains!18334 (ListMap!6593 K!16224) Bool)

(declare-fun extractMap!2548 (List!54720) ListMap!6593)

(assert (=> b!4812705 (= res!2047017 (not (contains!18334 (extractMap!2548 (toList!7176 lt!1963921)) key!1652)))))

(assert (=> b!4812705 (= lt!1963921 (map!12462 (v!48942 (underlying!10374 thiss!41921))))))

(declare-fun lt!1963920 () Unit!141660)

(assert (=> b!4812705 (= lt!1963920 e!3006778)))

(declare-fun c!820256 () Bool)

(declare-fun contains!18335 (MutLongMap!5083 (_ BitVec 64)) Bool)

(assert (=> b!4812705 (= c!820256 (contains!18335 (v!48942 (underlying!10374 thiss!41921)) lt!1963913))))

(declare-fun hash!5159 (Hashable!7094 K!16224) (_ BitVec 64))

(assert (=> b!4812705 (= lt!1963913 (hash!5159 (hashF!13371 thiss!41921) key!1652))))

(declare-fun mapNonEmpty!22439 () Bool)

(declare-fun mapRes!22439 () Bool)

(declare-fun tp!1361368 () Bool)

(declare-fun tp!1361369 () Bool)

(assert (=> mapNonEmpty!22439 (= mapRes!22439 (and tp!1361368 tp!1361369))))

(declare-fun mapRest!22439 () (Array (_ BitVec 32) List!54719))

(declare-fun mapKey!22439 () (_ BitVec 32))

(declare-fun mapValue!22439 () List!54719)

(assert (=> mapNonEmpty!22439 (= (arr!8352 (_values!5401 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) (store mapRest!22439 mapKey!22439 mapValue!22439))))

(declare-fun res!2047020 () Bool)

(assert (=> start!497634 (=> (not res!2047020) (not e!3006786))))

(assert (=> start!497634 (= res!2047020 ((_ is HashMap!4967) thiss!41921))))

(assert (=> start!497634 e!3006786))

(declare-fun e!3006779 () Bool)

(assert (=> start!497634 e!3006779))

(declare-fun tp_is_empty!34053 () Bool)

(assert (=> start!497634 tp_is_empty!34053))

(assert (=> b!4812706 (= e!3006779 (and e!3006782 tp!1361366))))

(declare-fun b!4812707 () Bool)

(declare-fun e!3006783 () Bool)

(declare-fun tp!1361370 () Bool)

(assert (=> b!4812707 (= e!3006783 (and tp!1361370 mapRes!22439))))

(declare-fun condMapEmpty!22439 () Bool)

(declare-fun mapDefault!22439 () List!54719)

(assert (=> b!4812707 (= condMapEmpty!22439 (= (arr!8352 (_values!5401 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54719)) mapDefault!22439)))))

(declare-fun res!2047016 () Bool)

(assert (=> b!4812708 (=> (not res!2047016) (not e!3006784))))

(declare-fun forall!12404 (List!54720 Int) Bool)

(assert (=> b!4812708 (= res!2047016 (forall!12404 (toList!7176 lt!1963921) lambda!233874))))

(declare-fun tp!1361371 () Bool)

(declare-fun tp!1361365 () Bool)

(declare-fun array_inv!6033 (array!18718) Bool)

(declare-fun array_inv!6034 (array!18720) Bool)

(assert (=> b!4812709 (= e!3006780 (and tp!1361367 tp!1361365 tp!1361371 (array_inv!6033 (_keys!5432 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) (array_inv!6034 (_values!5401 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) e!3006783))))

(declare-fun b!4812710 () Bool)

(declare-fun res!2047019 () Bool)

(assert (=> b!4812710 (=> (not res!2047019) (not e!3006786))))

(declare-fun valid!4112 (MutableMap!4967) Bool)

(assert (=> b!4812710 (= res!2047019 (valid!4112 thiss!41921))))

(declare-fun mapIsEmpty!22439 () Bool)

(assert (=> mapIsEmpty!22439 mapRes!22439))

(declare-fun b!4812711 () Bool)

(declare-fun res!2047015 () Bool)

(assert (=> b!4812711 (=> (not res!2047015) (not e!3006784))))

(declare-datatypes ((Option!13335 0))(
  ( (None!13334) (Some!13334 (v!48943 tuple2!57508)) )
))
(declare-fun isDefined!10472 (Option!13335) Bool)

(declare-fun getPair!972 (List!54719 K!16224) Option!13335)

(declare-fun apply!13190 (ListLongMap!5653 (_ BitVec 64)) List!54719)

(assert (=> b!4812711 (= res!2047015 (isDefined!10472 (getPair!972 (apply!13190 lt!1963921 lt!1963913) key!1652)))))

(declare-fun b!4812712 () Bool)

(declare-fun Unit!141663 () Unit!141660)

(assert (=> b!4812712 (= e!3006785 Unit!141663)))

(declare-fun b!4812713 () Bool)

(declare-fun allKeysSameHashInMap!2416 (ListLongMap!5653 Hashable!7094) Bool)

(assert (=> b!4812713 (= e!3006784 (not (allKeysSameHashInMap!2416 lt!1963921 (hashF!13371 thiss!41921))))))

(declare-fun b!4812714 () Bool)

(declare-fun Unit!141664 () Unit!141660)

(assert (=> b!4812714 (= e!3006778 Unit!141664)))

(assert (= (and start!497634 res!2047020) b!4812710))

(assert (= (and b!4812710 res!2047019) b!4812705))

(assert (= (and b!4812705 c!820256) b!4812703))

(assert (= (and b!4812705 (not c!820256)) b!4812714))

(assert (= (and b!4812703 c!820257) b!4812699))

(assert (= (and b!4812703 (not c!820257)) b!4812712))

(assert (= (and b!4812705 res!2047017) b!4812700))

(assert (= (and b!4812700 res!2047018) b!4812711))

(assert (= (and b!4812711 res!2047015) b!4812708))

(assert (= (and b!4812708 res!2047016) b!4812713))

(assert (= (and b!4812707 condMapEmpty!22439) mapIsEmpty!22439))

(assert (= (and b!4812707 (not condMapEmpty!22439)) mapNonEmpty!22439))

(assert (= b!4812709 b!4812707))

(assert (= b!4812702 b!4812709))

(assert (= b!4812701 b!4812702))

(assert (= (and b!4812704 ((_ is LongMap!5083) (v!48942 (underlying!10374 thiss!41921)))) b!4812701))

(assert (= b!4812706 b!4812704))

(assert (= (and start!497634 ((_ is HashMap!4967) thiss!41921)) b!4812706))

(declare-fun m!5798274 () Bool)

(assert (=> mapNonEmpty!22439 m!5798274))

(declare-fun m!5798276 () Bool)

(assert (=> b!4812713 m!5798276))

(declare-fun m!5798278 () Bool)

(assert (=> b!4812699 m!5798278))

(declare-fun m!5798280 () Bool)

(assert (=> b!4812699 m!5798280))

(assert (=> b!4812699 m!5798278))

(declare-fun m!5798282 () Bool)

(assert (=> b!4812699 m!5798282))

(declare-fun m!5798284 () Bool)

(assert (=> b!4812699 m!5798284))

(declare-fun m!5798286 () Bool)

(assert (=> b!4812699 m!5798286))

(declare-fun m!5798288 () Bool)

(assert (=> b!4812699 m!5798288))

(declare-fun m!5798290 () Bool)

(assert (=> b!4812710 m!5798290))

(declare-fun m!5798292 () Bool)

(assert (=> b!4812711 m!5798292))

(assert (=> b!4812711 m!5798292))

(declare-fun m!5798294 () Bool)

(assert (=> b!4812711 m!5798294))

(assert (=> b!4812711 m!5798294))

(declare-fun m!5798296 () Bool)

(assert (=> b!4812711 m!5798296))

(declare-fun m!5798298 () Bool)

(assert (=> b!4812703 m!5798298))

(declare-fun m!5798300 () Bool)

(assert (=> b!4812703 m!5798300))

(declare-fun m!5798302 () Bool)

(assert (=> b!4812703 m!5798302))

(declare-fun m!5798304 () Bool)

(assert (=> b!4812703 m!5798304))

(declare-fun m!5798306 () Bool)

(assert (=> b!4812709 m!5798306))

(declare-fun m!5798308 () Bool)

(assert (=> b!4812709 m!5798308))

(declare-fun m!5798310 () Bool)

(assert (=> b!4812708 m!5798310))

(declare-fun m!5798312 () Bool)

(assert (=> b!4812700 m!5798312))

(declare-fun m!5798314 () Bool)

(assert (=> b!4812705 m!5798314))

(declare-fun m!5798316 () Bool)

(assert (=> b!4812705 m!5798316))

(assert (=> b!4812705 m!5798300))

(declare-fun m!5798318 () Bool)

(assert (=> b!4812705 m!5798318))

(assert (=> b!4812705 m!5798314))

(declare-fun m!5798320 () Bool)

(assert (=> b!4812705 m!5798320))

(check-sat (not b!4812707) (not b!4812713) (not b!4812699) b_and!342085 (not b!4812705) tp_is_empty!34053 (not b!4812710) (not b_next!131067) (not b!4812709) (not b!4812711) (not b!4812703) b_and!342083 (not mapNonEmpty!22439) (not b_next!131065) (not b!4812700) (not b!4812708))
(check-sat b_and!342083 b_and!342085 (not b_next!131065) (not b_next!131067))
(get-model)

(declare-fun d!1540690 () Bool)

(declare-fun res!2047025 () Bool)

(declare-fun e!3006791 () Bool)

(assert (=> d!1540690 (=> res!2047025 e!3006791)))

(assert (=> d!1540690 (= res!2047025 ((_ is Nil!54596) (toList!7176 lt!1963921)))))

(assert (=> d!1540690 (= (forall!12404 (toList!7176 lt!1963921) lambda!233874) e!3006791)))

(declare-fun b!4812719 () Bool)

(declare-fun e!3006792 () Bool)

(assert (=> b!4812719 (= e!3006791 e!3006792)))

(declare-fun res!2047026 () Bool)

(assert (=> b!4812719 (=> (not res!2047026) (not e!3006792))))

(declare-fun dynLambda!22147 (Int tuple2!57510) Bool)

(assert (=> b!4812719 (= res!2047026 (dynLambda!22147 lambda!233874 (h!61028 (toList!7176 lt!1963921))))))

(declare-fun b!4812720 () Bool)

(assert (=> b!4812720 (= e!3006792 (forall!12404 (t!362212 (toList!7176 lt!1963921)) lambda!233874))))

(assert (= (and d!1540690 (not res!2047025)) b!4812719))

(assert (= (and b!4812719 res!2047026) b!4812720))

(declare-fun b_lambda!188301 () Bool)

(assert (=> (not b_lambda!188301) (not b!4812719)))

(declare-fun m!5798322 () Bool)

(assert (=> b!4812719 m!5798322))

(declare-fun m!5798324 () Bool)

(assert (=> b!4812720 m!5798324))

(assert (=> b!4812708 d!1540690))

(declare-fun bs!1160209 () Bool)

(declare-fun d!1540692 () Bool)

(assert (= bs!1160209 (and d!1540692 b!4812703)))

(declare-fun lambda!233877 () Int)

(assert (=> bs!1160209 (not (= lambda!233877 lambda!233873))))

(declare-fun bs!1160210 () Bool)

(assert (= bs!1160210 (and d!1540692 b!4812708)))

(assert (=> bs!1160210 (not (= lambda!233877 lambda!233874))))

(assert (=> d!1540692 true))

(assert (=> d!1540692 (= (allKeysSameHashInMap!2416 lt!1963921 (hashF!13371 thiss!41921)) (forall!12404 (toList!7176 lt!1963921) lambda!233877))))

(declare-fun bs!1160211 () Bool)

(assert (= bs!1160211 d!1540692))

(declare-fun m!5798326 () Bool)

(assert (=> bs!1160211 m!5798326))

(assert (=> b!4812713 d!1540692))

(declare-fun d!1540694 () Bool)

(assert (=> d!1540694 (contains!18333 (toList!7176 lt!1963914) (tuple2!57511 lt!1963913 lt!1963919))))

(declare-fun lt!1963926 () Unit!141660)

(declare-fun choose!34876 (List!54720 (_ BitVec 64) List!54719) Unit!141660)

(assert (=> d!1540694 (= lt!1963926 (choose!34876 (toList!7176 lt!1963914) lt!1963913 lt!1963919))))

(declare-fun e!3006795 () Bool)

(assert (=> d!1540694 e!3006795))

(declare-fun res!2047029 () Bool)

(assert (=> d!1540694 (=> (not res!2047029) (not e!3006795))))

(declare-fun isStrictlySorted!936 (List!54720) Bool)

(assert (=> d!1540694 (= res!2047029 (isStrictlySorted!936 (toList!7176 lt!1963914)))))

(assert (=> d!1540694 (= (lemmaGetValueByKeyImpliesContainsTuple!1014 (toList!7176 lt!1963914) lt!1963913 lt!1963919) lt!1963926)))

(declare-fun b!4812725 () Bool)

(assert (=> b!4812725 (= e!3006795 (= (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913) (Some!13333 lt!1963919)))))

(assert (= (and d!1540694 res!2047029) b!4812725))

(declare-fun m!5798328 () Bool)

(assert (=> d!1540694 m!5798328))

(declare-fun m!5798330 () Bool)

(assert (=> d!1540694 m!5798330))

(declare-fun m!5798332 () Bool)

(assert (=> d!1540694 m!5798332))

(assert (=> b!4812725 m!5798278))

(assert (=> b!4812699 d!1540694))

(declare-fun d!1540696 () Bool)

(assert (=> d!1540696 (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun lt!1963929 () Unit!141660)

(declare-fun choose!34877 (List!54720 (_ BitVec 64)) Unit!141660)

(assert (=> d!1540696 (= lt!1963929 (choose!34877 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun e!3006798 () Bool)

(assert (=> d!1540696 e!3006798))

(declare-fun res!2047032 () Bool)

(assert (=> d!1540696 (=> (not res!2047032) (not e!3006798))))

(assert (=> d!1540696 (= res!2047032 (isStrictlySorted!936 (toList!7176 lt!1963914)))))

(assert (=> d!1540696 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2297 (toList!7176 lt!1963914) lt!1963913) lt!1963929)))

(declare-fun b!4812728 () Bool)

(assert (=> b!4812728 (= e!3006798 (containsKey!4175 (toList!7176 lt!1963914) lt!1963913))))

(assert (= (and d!1540696 res!2047032) b!4812728))

(assert (=> d!1540696 m!5798278))

(assert (=> d!1540696 m!5798278))

(assert (=> d!1540696 m!5798282))

(declare-fun m!5798334 () Bool)

(assert (=> d!1540696 m!5798334))

(assert (=> d!1540696 m!5798332))

(assert (=> b!4812728 m!5798284))

(assert (=> b!4812699 d!1540696))

(declare-fun b!4812740 () Bool)

(declare-fun e!3006804 () Option!13334)

(assert (=> b!4812740 (= e!3006804 None!13333)))

(declare-fun b!4812739 () Bool)

(assert (=> b!4812739 (= e!3006804 (getValueByKey!2510 (t!362212 (toList!7176 lt!1963914)) lt!1963913))))

(declare-fun d!1540698 () Bool)

(declare-fun c!820262 () Bool)

(assert (=> d!1540698 (= c!820262 (and ((_ is Cons!54596) (toList!7176 lt!1963914)) (= (_1!32049 (h!61028 (toList!7176 lt!1963914))) lt!1963913)))))

(declare-fun e!3006803 () Option!13334)

(assert (=> d!1540698 (= (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913) e!3006803)))

(declare-fun b!4812738 () Bool)

(assert (=> b!4812738 (= e!3006803 e!3006804)))

(declare-fun c!820263 () Bool)

(assert (=> b!4812738 (= c!820263 (and ((_ is Cons!54596) (toList!7176 lt!1963914)) (not (= (_1!32049 (h!61028 (toList!7176 lt!1963914))) lt!1963913))))))

(declare-fun b!4812737 () Bool)

(assert (=> b!4812737 (= e!3006803 (Some!13333 (_2!32049 (h!61028 (toList!7176 lt!1963914)))))))

(assert (= (and d!1540698 c!820262) b!4812737))

(assert (= (and d!1540698 (not c!820262)) b!4812738))

(assert (= (and b!4812738 c!820263) b!4812739))

(assert (= (and b!4812738 (not c!820263)) b!4812740))

(declare-fun m!5798336 () Bool)

(assert (=> b!4812739 m!5798336))

(assert (=> b!4812699 d!1540698))

(declare-fun d!1540700 () Bool)

(assert (=> d!1540700 (containsKey!4175 (toList!7176 lt!1963914) lt!1963913)))

(declare-fun lt!1963932 () Unit!141660)

(declare-fun choose!34878 (List!54720 (_ BitVec 64)) Unit!141660)

(assert (=> d!1540700 (= lt!1963932 (choose!34878 (toList!7176 lt!1963914) lt!1963913))))

(declare-fun e!3006807 () Bool)

(assert (=> d!1540700 e!3006807))

(declare-fun res!2047035 () Bool)

(assert (=> d!1540700 (=> (not res!2047035) (not e!3006807))))

(assert (=> d!1540700 (= res!2047035 (isStrictlySorted!936 (toList!7176 lt!1963914)))))

(assert (=> d!1540700 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!291 (toList!7176 lt!1963914) lt!1963913) lt!1963932)))

(declare-fun b!4812743 () Bool)

(assert (=> b!4812743 (= e!3006807 (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913)))))

(assert (= (and d!1540700 res!2047035) b!4812743))

(assert (=> d!1540700 m!5798284))

(declare-fun m!5798338 () Bool)

(assert (=> d!1540700 m!5798338))

(assert (=> d!1540700 m!5798332))

(assert (=> b!4812743 m!5798278))

(assert (=> b!4812743 m!5798278))

(assert (=> b!4812743 m!5798282))

(assert (=> b!4812699 d!1540700))

(declare-fun d!1540702 () Bool)

(declare-fun res!2047040 () Bool)

(declare-fun e!3006812 () Bool)

(assert (=> d!1540702 (=> res!2047040 e!3006812)))

(assert (=> d!1540702 (= res!2047040 (and ((_ is Cons!54596) (toList!7176 lt!1963914)) (= (_1!32049 (h!61028 (toList!7176 lt!1963914))) lt!1963913)))))

(assert (=> d!1540702 (= (containsKey!4175 (toList!7176 lt!1963914) lt!1963913) e!3006812)))

(declare-fun b!4812748 () Bool)

(declare-fun e!3006813 () Bool)

(assert (=> b!4812748 (= e!3006812 e!3006813)))

(declare-fun res!2047041 () Bool)

(assert (=> b!4812748 (=> (not res!2047041) (not e!3006813))))

(assert (=> b!4812748 (= res!2047041 (and (or (not ((_ is Cons!54596) (toList!7176 lt!1963914))) (bvsle (_1!32049 (h!61028 (toList!7176 lt!1963914))) lt!1963913)) ((_ is Cons!54596) (toList!7176 lt!1963914)) (bvslt (_1!32049 (h!61028 (toList!7176 lt!1963914))) lt!1963913)))))

(declare-fun b!4812749 () Bool)

(assert (=> b!4812749 (= e!3006813 (containsKey!4175 (t!362212 (toList!7176 lt!1963914)) lt!1963913))))

(assert (= (and d!1540702 (not res!2047040)) b!4812748))

(assert (= (and b!4812748 res!2047041) b!4812749))

(declare-fun m!5798340 () Bool)

(assert (=> b!4812749 m!5798340))

(assert (=> b!4812699 d!1540702))

(declare-fun d!1540704 () Bool)

(declare-fun isEmpty!29557 (Option!13334) Bool)

(assert (=> d!1540704 (= (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913)) (not (isEmpty!29557 (getValueByKey!2510 (toList!7176 lt!1963914) lt!1963913))))))

(declare-fun bs!1160212 () Bool)

(assert (= bs!1160212 d!1540704))

(assert (=> bs!1160212 m!5798278))

(declare-fun m!5798342 () Bool)

(assert (=> bs!1160212 m!5798342))

(assert (=> b!4812699 d!1540704))

(declare-fun d!1540706 () Bool)

(assert (=> d!1540706 (= (array_inv!6033 (_keys!5432 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) (bvsge (size!36597 (_keys!5432 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812709 d!1540706))

(declare-fun d!1540708 () Bool)

(assert (=> d!1540708 (= (array_inv!6034 (_values!5401 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) (bvsge (size!36598 (_values!5401 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4812709 d!1540708))

(declare-fun d!1540710 () Bool)

(declare-fun isEmpty!29558 (Option!13335) Bool)

(assert (=> d!1540710 (= (isDefined!10472 (getPair!972 (apply!13190 lt!1963921 lt!1963913) key!1652)) (not (isEmpty!29558 (getPair!972 (apply!13190 lt!1963921 lt!1963913) key!1652))))))

(declare-fun bs!1160213 () Bool)

(assert (= bs!1160213 d!1540710))

(assert (=> bs!1160213 m!5798294))

(declare-fun m!5798344 () Bool)

(assert (=> bs!1160213 m!5798344))

(assert (=> b!4812711 d!1540710))

(declare-fun b!4812766 () Bool)

(declare-fun e!3006826 () Bool)

(declare-fun e!3006825 () Bool)

(assert (=> b!4812766 (= e!3006826 e!3006825)))

(declare-fun res!2047050 () Bool)

(assert (=> b!4812766 (=> (not res!2047050) (not e!3006825))))

(declare-fun lt!1963935 () Option!13335)

(assert (=> b!4812766 (= res!2047050 (isDefined!10472 lt!1963935))))

(declare-fun b!4812767 () Bool)

(declare-fun e!3006827 () Option!13335)

(assert (=> b!4812767 (= e!3006827 (Some!13334 (h!61027 (apply!13190 lt!1963921 lt!1963913))))))

(declare-fun b!4812768 () Bool)

(declare-fun res!2047052 () Bool)

(assert (=> b!4812768 (=> (not res!2047052) (not e!3006825))))

(declare-fun get!18680 (Option!13335) tuple2!57508)

(assert (=> b!4812768 (= res!2047052 (= (_1!32048 (get!18680 lt!1963935)) key!1652))))

(declare-fun b!4812769 () Bool)

(declare-fun e!3006824 () Option!13335)

(assert (=> b!4812769 (= e!3006827 e!3006824)))

(declare-fun c!820269 () Bool)

(assert (=> b!4812769 (= c!820269 ((_ is Cons!54595) (apply!13190 lt!1963921 lt!1963913)))))

(declare-fun e!3006828 () Bool)

(declare-fun b!4812770 () Bool)

(declare-fun containsKey!4176 (List!54719 K!16224) Bool)

(assert (=> b!4812770 (= e!3006828 (not (containsKey!4176 (apply!13190 lt!1963921 lt!1963913) key!1652)))))

(declare-fun b!4812771 () Bool)

(declare-fun contains!18336 (List!54719 tuple2!57508) Bool)

(assert (=> b!4812771 (= e!3006825 (contains!18336 (apply!13190 lt!1963921 lt!1963913) (get!18680 lt!1963935)))))

(declare-fun b!4812772 () Bool)

(assert (=> b!4812772 (= e!3006824 (getPair!972 (t!362211 (apply!13190 lt!1963921 lt!1963913)) key!1652))))

(declare-fun b!4812773 () Bool)

(assert (=> b!4812773 (= e!3006824 None!13334)))

(declare-fun d!1540712 () Bool)

(assert (=> d!1540712 e!3006826))

(declare-fun res!2047051 () Bool)

(assert (=> d!1540712 (=> res!2047051 e!3006826)))

(assert (=> d!1540712 (= res!2047051 e!3006828)))

(declare-fun res!2047053 () Bool)

(assert (=> d!1540712 (=> (not res!2047053) (not e!3006828))))

(assert (=> d!1540712 (= res!2047053 (isEmpty!29558 lt!1963935))))

(assert (=> d!1540712 (= lt!1963935 e!3006827)))

(declare-fun c!820268 () Bool)

(assert (=> d!1540712 (= c!820268 (and ((_ is Cons!54595) (apply!13190 lt!1963921 lt!1963913)) (= (_1!32048 (h!61027 (apply!13190 lt!1963921 lt!1963913))) key!1652)))))

(declare-fun noDuplicateKeys!2394 (List!54719) Bool)

(assert (=> d!1540712 (noDuplicateKeys!2394 (apply!13190 lt!1963921 lt!1963913))))

(assert (=> d!1540712 (= (getPair!972 (apply!13190 lt!1963921 lt!1963913) key!1652) lt!1963935)))

(assert (= (and d!1540712 c!820268) b!4812767))

(assert (= (and d!1540712 (not c!820268)) b!4812769))

(assert (= (and b!4812769 c!820269) b!4812772))

(assert (= (and b!4812769 (not c!820269)) b!4812773))

(assert (= (and d!1540712 res!2047053) b!4812770))

(assert (= (and d!1540712 (not res!2047051)) b!4812766))

(assert (= (and b!4812766 res!2047050) b!4812768))

(assert (= (and b!4812768 res!2047052) b!4812771))

(declare-fun m!5798346 () Bool)

(assert (=> b!4812766 m!5798346))

(declare-fun m!5798348 () Bool)

(assert (=> b!4812771 m!5798348))

(assert (=> b!4812771 m!5798292))

(assert (=> b!4812771 m!5798348))

(declare-fun m!5798350 () Bool)

(assert (=> b!4812771 m!5798350))

(declare-fun m!5798352 () Bool)

(assert (=> d!1540712 m!5798352))

(assert (=> d!1540712 m!5798292))

(declare-fun m!5798354 () Bool)

(assert (=> d!1540712 m!5798354))

(assert (=> b!4812768 m!5798348))

(assert (=> b!4812770 m!5798292))

(declare-fun m!5798356 () Bool)

(assert (=> b!4812770 m!5798356))

(declare-fun m!5798358 () Bool)

(assert (=> b!4812772 m!5798358))

(assert (=> b!4812711 d!1540712))

(declare-fun d!1540714 () Bool)

(declare-fun get!18681 (Option!13334) List!54719)

(assert (=> d!1540714 (= (apply!13190 lt!1963921 lt!1963913) (get!18681 (getValueByKey!2510 (toList!7176 lt!1963921) lt!1963913)))))

(declare-fun bs!1160214 () Bool)

(assert (= bs!1160214 d!1540714))

(declare-fun m!5798360 () Bool)

(assert (=> bs!1160214 m!5798360))

(assert (=> bs!1160214 m!5798360))

(declare-fun m!5798362 () Bool)

(assert (=> bs!1160214 m!5798362))

(assert (=> b!4812711 d!1540714))

(declare-fun d!1540716 () Bool)

(assert (=> d!1540716 (dynLambda!22147 lambda!233873 lt!1963916)))

(declare-fun lt!1963938 () Unit!141660)

(declare-fun choose!34879 (List!54720 Int tuple2!57510) Unit!141660)

(assert (=> d!1540716 (= lt!1963938 (choose!34879 (toList!7176 lt!1963914) lambda!233873 lt!1963916))))

(declare-fun e!3006831 () Bool)

(assert (=> d!1540716 e!3006831))

(declare-fun res!2047056 () Bool)

(assert (=> d!1540716 (=> (not res!2047056) (not e!3006831))))

(assert (=> d!1540716 (= res!2047056 (forall!12404 (toList!7176 lt!1963914) lambda!233873))))

(assert (=> d!1540716 (= (forallContained!4281 (toList!7176 lt!1963914) lambda!233873 lt!1963916) lt!1963938)))

(declare-fun b!4812776 () Bool)

(assert (=> b!4812776 (= e!3006831 (contains!18333 (toList!7176 lt!1963914) lt!1963916))))

(assert (= (and d!1540716 res!2047056) b!4812776))

(declare-fun b_lambda!188303 () Bool)

(assert (=> (not b_lambda!188303) (not d!1540716)))

(declare-fun m!5798364 () Bool)

(assert (=> d!1540716 m!5798364))

(declare-fun m!5798366 () Bool)

(assert (=> d!1540716 m!5798366))

(declare-fun m!5798368 () Bool)

(assert (=> d!1540716 m!5798368))

(assert (=> b!4812776 m!5798304))

(assert (=> b!4812703 d!1540716))

(declare-fun d!1540718 () Bool)

(declare-fun map!12463 (LongMapFixedSize!10166) ListLongMap!5653)

(assert (=> d!1540718 (= (map!12462 (v!48942 (underlying!10374 thiss!41921))) (map!12463 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921))))))))

(declare-fun bs!1160215 () Bool)

(assert (= bs!1160215 d!1540718))

(declare-fun m!5798370 () Bool)

(assert (=> bs!1160215 m!5798370))

(assert (=> b!4812703 d!1540718))

(declare-fun d!1540720 () Bool)

(declare-fun e!3006834 () Bool)

(assert (=> d!1540720 e!3006834))

(declare-fun c!820272 () Bool)

(assert (=> d!1540720 (= c!820272 (contains!18335 (v!48942 (underlying!10374 thiss!41921)) lt!1963913))))

(declare-fun lt!1963941 () List!54719)

(declare-fun apply!13191 (LongMapFixedSize!10166 (_ BitVec 64)) List!54719)

(assert (=> d!1540720 (= lt!1963941 (apply!13191 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))) lt!1963913))))

(declare-fun valid!4113 (MutLongMap!5083) Bool)

(assert (=> d!1540720 (valid!4113 (v!48942 (underlying!10374 thiss!41921)))))

(assert (=> d!1540720 (= (apply!13189 (v!48942 (underlying!10374 thiss!41921)) lt!1963913) lt!1963941)))

(declare-fun b!4812781 () Bool)

(assert (=> b!4812781 (= e!3006834 (= lt!1963941 (get!18681 (getValueByKey!2510 (toList!7176 (map!12462 (v!48942 (underlying!10374 thiss!41921)))) lt!1963913))))))

(declare-fun b!4812782 () Bool)

(declare-fun dynLambda!22148 (Int (_ BitVec 64)) List!54719)

(assert (=> b!4812782 (= e!3006834 (= lt!1963941 (dynLambda!22148 (defaultEntry!5505 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921))))) lt!1963913)))))

(assert (=> b!4812782 ((_ is LongMap!5083) (v!48942 (underlying!10374 thiss!41921)))))

(assert (= (and d!1540720 c!820272) b!4812781))

(assert (= (and d!1540720 (not c!820272)) b!4812782))

(declare-fun b_lambda!188305 () Bool)

(assert (=> (not b_lambda!188305) (not b!4812782)))

(declare-fun t!362214 () Bool)

(declare-fun tb!257545 () Bool)

(assert (=> (and b!4812709 (= (defaultEntry!5505 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921))))) (defaultEntry!5505 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))))) t!362214) tb!257545))

(assert (=> b!4812782 t!362214))

(declare-fun result!319648 () Bool)

(declare-fun b_and!342087 () Bool)

(assert (= b_and!342083 (and (=> t!362214 result!319648) b_and!342087)))

(assert (=> d!1540720 m!5798318))

(declare-fun m!5798372 () Bool)

(assert (=> d!1540720 m!5798372))

(declare-fun m!5798374 () Bool)

(assert (=> d!1540720 m!5798374))

(assert (=> b!4812781 m!5798300))

(declare-fun m!5798376 () Bool)

(assert (=> b!4812781 m!5798376))

(assert (=> b!4812781 m!5798376))

(declare-fun m!5798378 () Bool)

(assert (=> b!4812781 m!5798378))

(declare-fun m!5798380 () Bool)

(assert (=> b!4812782 m!5798380))

(assert (=> b!4812703 d!1540720))

(declare-fun d!1540722 () Bool)

(declare-fun lt!1963944 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9782 (List!54720) (InoxSet tuple2!57510))

(assert (=> d!1540722 (= lt!1963944 (select (content!9782 (toList!7176 lt!1963914)) lt!1963916))))

(declare-fun e!3006839 () Bool)

(assert (=> d!1540722 (= lt!1963944 e!3006839)))

(declare-fun res!2047061 () Bool)

(assert (=> d!1540722 (=> (not res!2047061) (not e!3006839))))

(assert (=> d!1540722 (= res!2047061 ((_ is Cons!54596) (toList!7176 lt!1963914)))))

(assert (=> d!1540722 (= (contains!18333 (toList!7176 lt!1963914) lt!1963916) lt!1963944)))

(declare-fun b!4812787 () Bool)

(declare-fun e!3006840 () Bool)

(assert (=> b!4812787 (= e!3006839 e!3006840)))

(declare-fun res!2047062 () Bool)

(assert (=> b!4812787 (=> res!2047062 e!3006840)))

(assert (=> b!4812787 (= res!2047062 (= (h!61028 (toList!7176 lt!1963914)) lt!1963916))))

(declare-fun b!4812788 () Bool)

(assert (=> b!4812788 (= e!3006840 (contains!18333 (t!362212 (toList!7176 lt!1963914)) lt!1963916))))

(assert (= (and d!1540722 res!2047061) b!4812787))

(assert (= (and b!4812787 (not res!2047062)) b!4812788))

(declare-fun m!5798382 () Bool)

(assert (=> d!1540722 m!5798382))

(declare-fun m!5798384 () Bool)

(assert (=> d!1540722 m!5798384))

(declare-fun m!5798386 () Bool)

(assert (=> b!4812788 m!5798386))

(assert (=> b!4812703 d!1540722))

(declare-fun b!4812807 () Bool)

(declare-fun e!3006857 () Bool)

(declare-datatypes ((List!54721 0))(
  ( (Nil!54597) (Cons!54597 (h!61029 K!16224) (t!362215 List!54721)) )
))
(declare-fun contains!18337 (List!54721 K!16224) Bool)

(declare-fun keys!20018 (ListMap!6593) List!54721)

(assert (=> b!4812807 (= e!3006857 (not (contains!18337 (keys!20018 (extractMap!2548 (toList!7176 lt!1963921))) key!1652)))))

(declare-fun b!4812808 () Bool)

(declare-fun e!3006853 () Unit!141660)

(declare-fun Unit!141665 () Unit!141660)

(assert (=> b!4812808 (= e!3006853 Unit!141665)))

(declare-fun b!4812809 () Bool)

(declare-fun e!3006854 () List!54721)

(declare-fun getKeysList!1125 (List!54719) List!54721)

(assert (=> b!4812809 (= e!3006854 (getKeysList!1125 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921)))))))

(declare-fun b!4812810 () Bool)

(assert (=> b!4812810 false))

(declare-fun lt!1963966 () Unit!141660)

(declare-fun lt!1963967 () Unit!141660)

(assert (=> b!4812810 (= lt!1963966 lt!1963967)))

(declare-fun containsKey!4177 (List!54719 K!16224) Bool)

(assert (=> b!4812810 (containsKey!4177 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1125 (List!54719 K!16224) Unit!141660)

(assert (=> b!4812810 (= lt!1963967 (lemmaInGetKeysListThenContainsKey!1125 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(declare-fun Unit!141666 () Unit!141660)

(assert (=> b!4812810 (= e!3006853 Unit!141666)))

(declare-fun b!4812811 () Bool)

(assert (=> b!4812811 (= e!3006854 (keys!20018 (extractMap!2548 (toList!7176 lt!1963921))))))

(declare-fun bm!335851 () Bool)

(declare-fun call!335856 () Bool)

(assert (=> bm!335851 (= call!335856 (contains!18337 e!3006854 key!1652))))

(declare-fun c!820279 () Bool)

(declare-fun c!820280 () Bool)

(assert (=> bm!335851 (= c!820279 c!820280)))

(declare-fun b!4812812 () Bool)

(declare-fun e!3006858 () Unit!141660)

(assert (=> b!4812812 (= e!3006858 e!3006853)))

(declare-fun c!820281 () Bool)

(assert (=> b!4812812 (= c!820281 call!335856)))

(declare-fun d!1540724 () Bool)

(declare-fun e!3006855 () Bool)

(assert (=> d!1540724 e!3006855))

(declare-fun res!2047070 () Bool)

(assert (=> d!1540724 (=> res!2047070 e!3006855)))

(assert (=> d!1540724 (= res!2047070 e!3006857)))

(declare-fun res!2047069 () Bool)

(assert (=> d!1540724 (=> (not res!2047069) (not e!3006857))))

(declare-fun lt!1963964 () Bool)

(assert (=> d!1540724 (= res!2047069 (not lt!1963964))))

(declare-fun lt!1963963 () Bool)

(assert (=> d!1540724 (= lt!1963964 lt!1963963)))

(declare-fun lt!1963968 () Unit!141660)

(assert (=> d!1540724 (= lt!1963968 e!3006858)))

(assert (=> d!1540724 (= c!820280 lt!1963963)))

(assert (=> d!1540724 (= lt!1963963 (containsKey!4177 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(assert (=> d!1540724 (= (contains!18334 (extractMap!2548 (toList!7176 lt!1963921)) key!1652) lt!1963964)))

(declare-fun b!4812813 () Bool)

(declare-fun e!3006856 () Bool)

(assert (=> b!4812813 (= e!3006855 e!3006856)))

(declare-fun res!2047071 () Bool)

(assert (=> b!4812813 (=> (not res!2047071) (not e!3006856))))

(declare-datatypes ((Option!13336 0))(
  ( (None!13335) (Some!13335 (v!48946 V!16470)) )
))
(declare-fun isDefined!10473 (Option!13336) Bool)

(declare-fun getValueByKey!2511 (List!54719 K!16224) Option!13336)

(assert (=> b!4812813 (= res!2047071 (isDefined!10473 (getValueByKey!2511 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652)))))

(declare-fun b!4812814 () Bool)

(assert (=> b!4812814 (= e!3006856 (contains!18337 (keys!20018 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(declare-fun b!4812815 () Bool)

(declare-fun lt!1963961 () Unit!141660)

(assert (=> b!4812815 (= e!3006858 lt!1963961)))

(declare-fun lt!1963965 () Unit!141660)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2298 (List!54719 K!16224) Unit!141660)

(assert (=> b!4812815 (= lt!1963965 (lemmaContainsKeyImpliesGetValueByKeyDefined!2298 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(assert (=> b!4812815 (isDefined!10473 (getValueByKey!2511 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(declare-fun lt!1963962 () Unit!141660)

(assert (=> b!4812815 (= lt!1963962 lt!1963965)))

(declare-fun lemmaInListThenGetKeysListContains!1120 (List!54719 K!16224) Unit!141660)

(assert (=> b!4812815 (= lt!1963961 (lemmaInListThenGetKeysListContains!1120 (toList!7177 (extractMap!2548 (toList!7176 lt!1963921))) key!1652))))

(assert (=> b!4812815 call!335856))

(assert (= (and d!1540724 c!820280) b!4812815))

(assert (= (and d!1540724 (not c!820280)) b!4812812))

(assert (= (and b!4812812 c!820281) b!4812810))

(assert (= (and b!4812812 (not c!820281)) b!4812808))

(assert (= (or b!4812815 b!4812812) bm!335851))

(assert (= (and bm!335851 c!820279) b!4812809))

(assert (= (and bm!335851 (not c!820279)) b!4812811))

(assert (= (and d!1540724 res!2047069) b!4812807))

(assert (= (and d!1540724 (not res!2047070)) b!4812813))

(assert (= (and b!4812813 res!2047071) b!4812814))

(assert (=> b!4812811 m!5798314))

(declare-fun m!5798388 () Bool)

(assert (=> b!4812811 m!5798388))

(declare-fun m!5798390 () Bool)

(assert (=> d!1540724 m!5798390))

(assert (=> b!4812814 m!5798314))

(assert (=> b!4812814 m!5798388))

(assert (=> b!4812814 m!5798388))

(declare-fun m!5798392 () Bool)

(assert (=> b!4812814 m!5798392))

(assert (=> b!4812810 m!5798390))

(declare-fun m!5798394 () Bool)

(assert (=> b!4812810 m!5798394))

(assert (=> b!4812807 m!5798314))

(assert (=> b!4812807 m!5798388))

(assert (=> b!4812807 m!5798388))

(assert (=> b!4812807 m!5798392))

(declare-fun m!5798396 () Bool)

(assert (=> b!4812809 m!5798396))

(declare-fun m!5798398 () Bool)

(assert (=> bm!335851 m!5798398))

(declare-fun m!5798400 () Bool)

(assert (=> b!4812815 m!5798400))

(declare-fun m!5798402 () Bool)

(assert (=> b!4812815 m!5798402))

(assert (=> b!4812815 m!5798402))

(declare-fun m!5798404 () Bool)

(assert (=> b!4812815 m!5798404))

(declare-fun m!5798406 () Bool)

(assert (=> b!4812815 m!5798406))

(assert (=> b!4812813 m!5798402))

(assert (=> b!4812813 m!5798402))

(assert (=> b!4812813 m!5798404))

(assert (=> b!4812705 d!1540724))

(declare-fun d!1540726 () Bool)

(declare-fun hash!5160 (Hashable!7094 K!16224) (_ BitVec 64))

(assert (=> d!1540726 (= (hash!5159 (hashF!13371 thiss!41921) key!1652) (hash!5160 (hashF!13371 thiss!41921) key!1652))))

(declare-fun bs!1160216 () Bool)

(assert (= bs!1160216 d!1540726))

(declare-fun m!5798408 () Bool)

(assert (=> bs!1160216 m!5798408))

(assert (=> b!4812705 d!1540726))

(assert (=> b!4812705 d!1540718))

(declare-fun bs!1160217 () Bool)

(declare-fun d!1540728 () Bool)

(assert (= bs!1160217 (and d!1540728 b!4812703)))

(declare-fun lambda!233880 () Int)

(assert (=> bs!1160217 (= lambda!233880 lambda!233873)))

(declare-fun bs!1160218 () Bool)

(assert (= bs!1160218 (and d!1540728 b!4812708)))

(assert (=> bs!1160218 (= lambda!233880 lambda!233874)))

(declare-fun bs!1160219 () Bool)

(assert (= bs!1160219 (and d!1540728 d!1540692)))

(assert (=> bs!1160219 (not (= lambda!233880 lambda!233877))))

(declare-fun lt!1963971 () ListMap!6593)

(declare-fun invariantList!1779 (List!54719) Bool)

(assert (=> d!1540728 (invariantList!1779 (toList!7177 lt!1963971))))

(declare-fun e!3006861 () ListMap!6593)

(assert (=> d!1540728 (= lt!1963971 e!3006861)))

(declare-fun c!820284 () Bool)

(assert (=> d!1540728 (= c!820284 ((_ is Cons!54596) (toList!7176 lt!1963921)))))

(assert (=> d!1540728 (forall!12404 (toList!7176 lt!1963921) lambda!233880)))

(assert (=> d!1540728 (= (extractMap!2548 (toList!7176 lt!1963921)) lt!1963971)))

(declare-fun b!4812820 () Bool)

(declare-fun addToMapMapFromBucket!1756 (List!54719 ListMap!6593) ListMap!6593)

(assert (=> b!4812820 (= e!3006861 (addToMapMapFromBucket!1756 (_2!32049 (h!61028 (toList!7176 lt!1963921))) (extractMap!2548 (t!362212 (toList!7176 lt!1963921)))))))

(declare-fun b!4812821 () Bool)

(assert (=> b!4812821 (= e!3006861 (ListMap!6594 Nil!54595))))

(assert (= (and d!1540728 c!820284) b!4812820))

(assert (= (and d!1540728 (not c!820284)) b!4812821))

(declare-fun m!5798410 () Bool)

(assert (=> d!1540728 m!5798410))

(declare-fun m!5798412 () Bool)

(assert (=> d!1540728 m!5798412))

(declare-fun m!5798414 () Bool)

(assert (=> b!4812820 m!5798414))

(assert (=> b!4812820 m!5798414))

(declare-fun m!5798416 () Bool)

(assert (=> b!4812820 m!5798416))

(assert (=> b!4812705 d!1540728))

(declare-fun d!1540730 () Bool)

(declare-fun lt!1963974 () Bool)

(assert (=> d!1540730 (= lt!1963974 (contains!18332 (map!12462 (v!48942 (underlying!10374 thiss!41921))) lt!1963913))))

(declare-fun contains!18338 (LongMapFixedSize!10166 (_ BitVec 64)) Bool)

(assert (=> d!1540730 (= lt!1963974 (contains!18338 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921)))) lt!1963913))))

(assert (=> d!1540730 (valid!4113 (v!48942 (underlying!10374 thiss!41921)))))

(assert (=> d!1540730 (= (contains!18335 (v!48942 (underlying!10374 thiss!41921)) lt!1963913) lt!1963974)))

(declare-fun bs!1160220 () Bool)

(assert (= bs!1160220 d!1540730))

(assert (=> bs!1160220 m!5798300))

(assert (=> bs!1160220 m!5798300))

(declare-fun m!5798418 () Bool)

(assert (=> bs!1160220 m!5798418))

(declare-fun m!5798420 () Bool)

(assert (=> bs!1160220 m!5798420))

(assert (=> bs!1160220 m!5798374))

(assert (=> b!4812705 d!1540730))

(declare-fun d!1540732 () Bool)

(declare-fun e!3006866 () Bool)

(assert (=> d!1540732 e!3006866))

(declare-fun res!2047074 () Bool)

(assert (=> d!1540732 (=> res!2047074 e!3006866)))

(declare-fun lt!1963985 () Bool)

(assert (=> d!1540732 (= res!2047074 (not lt!1963985))))

(declare-fun lt!1963983 () Bool)

(assert (=> d!1540732 (= lt!1963985 lt!1963983)))

(declare-fun lt!1963984 () Unit!141660)

(declare-fun e!3006867 () Unit!141660)

(assert (=> d!1540732 (= lt!1963984 e!3006867)))

(declare-fun c!820287 () Bool)

(assert (=> d!1540732 (= c!820287 lt!1963983)))

(assert (=> d!1540732 (= lt!1963983 (containsKey!4175 (toList!7176 lt!1963921) lt!1963913))))

(assert (=> d!1540732 (= (contains!18332 lt!1963921 lt!1963913) lt!1963985)))

(declare-fun b!4812828 () Bool)

(declare-fun lt!1963986 () Unit!141660)

(assert (=> b!4812828 (= e!3006867 lt!1963986)))

(assert (=> b!4812828 (= lt!1963986 (lemmaContainsKeyImpliesGetValueByKeyDefined!2297 (toList!7176 lt!1963921) lt!1963913))))

(assert (=> b!4812828 (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963921) lt!1963913))))

(declare-fun b!4812829 () Bool)

(declare-fun Unit!141667 () Unit!141660)

(assert (=> b!4812829 (= e!3006867 Unit!141667)))

(declare-fun b!4812830 () Bool)

(assert (=> b!4812830 (= e!3006866 (isDefined!10471 (getValueByKey!2510 (toList!7176 lt!1963921) lt!1963913)))))

(assert (= (and d!1540732 c!820287) b!4812828))

(assert (= (and d!1540732 (not c!820287)) b!4812829))

(assert (= (and d!1540732 (not res!2047074)) b!4812830))

(declare-fun m!5798422 () Bool)

(assert (=> d!1540732 m!5798422))

(declare-fun m!5798424 () Bool)

(assert (=> b!4812828 m!5798424))

(assert (=> b!4812828 m!5798360))

(assert (=> b!4812828 m!5798360))

(declare-fun m!5798426 () Bool)

(assert (=> b!4812828 m!5798426))

(assert (=> b!4812830 m!5798360))

(assert (=> b!4812830 m!5798360))

(assert (=> b!4812830 m!5798426))

(assert (=> b!4812700 d!1540732))

(declare-fun bs!1160221 () Bool)

(declare-fun b!4812835 () Bool)

(assert (= bs!1160221 (and b!4812835 b!4812703)))

(declare-fun lambda!233883 () Int)

(assert (=> bs!1160221 (= lambda!233883 lambda!233873)))

(declare-fun bs!1160222 () Bool)

(assert (= bs!1160222 (and b!4812835 b!4812708)))

(assert (=> bs!1160222 (= lambda!233883 lambda!233874)))

(declare-fun bs!1160223 () Bool)

(assert (= bs!1160223 (and b!4812835 d!1540692)))

(assert (=> bs!1160223 (not (= lambda!233883 lambda!233877))))

(declare-fun bs!1160224 () Bool)

(assert (= bs!1160224 (and b!4812835 d!1540728)))

(assert (=> bs!1160224 (= lambda!233883 lambda!233880)))

(declare-fun d!1540734 () Bool)

(declare-fun res!2047079 () Bool)

(declare-fun e!3006870 () Bool)

(assert (=> d!1540734 (=> (not res!2047079) (not e!3006870))))

(assert (=> d!1540734 (= res!2047079 (valid!4113 (v!48942 (underlying!10374 thiss!41921))))))

(assert (=> d!1540734 (= (valid!4112 thiss!41921) e!3006870)))

(declare-fun res!2047080 () Bool)

(assert (=> b!4812835 (=> (not res!2047080) (not e!3006870))))

(assert (=> b!4812835 (= res!2047080 (forall!12404 (toList!7176 (map!12462 (v!48942 (underlying!10374 thiss!41921)))) lambda!233883))))

(declare-fun b!4812836 () Bool)

(assert (=> b!4812836 (= e!3006870 (allKeysSameHashInMap!2416 (map!12462 (v!48942 (underlying!10374 thiss!41921))) (hashF!13371 thiss!41921)))))

(assert (= (and d!1540734 res!2047079) b!4812835))

(assert (= (and b!4812835 res!2047080) b!4812836))

(assert (=> d!1540734 m!5798374))

(assert (=> b!4812835 m!5798300))

(declare-fun m!5798428 () Bool)

(assert (=> b!4812835 m!5798428))

(assert (=> b!4812836 m!5798300))

(assert (=> b!4812836 m!5798300))

(declare-fun m!5798430 () Bool)

(assert (=> b!4812836 m!5798430))

(assert (=> b!4812710 d!1540734))

(declare-fun tp!1361374 () Bool)

(declare-fun e!3006873 () Bool)

(declare-fun tp_is_empty!34055 () Bool)

(declare-fun b!4812841 () Bool)

(assert (=> b!4812841 (= e!3006873 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361374))))

(assert (=> b!4812709 (= tp!1361365 e!3006873)))

(assert (= (and b!4812709 ((_ is Cons!54595) (zeroValue!5376 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921))))))) b!4812841))

(declare-fun b!4812842 () Bool)

(declare-fun tp!1361375 () Bool)

(declare-fun e!3006874 () Bool)

(assert (=> b!4812842 (= e!3006874 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361375))))

(assert (=> b!4812709 (= tp!1361371 e!3006874)))

(assert (= (and b!4812709 ((_ is Cons!54595) (minValue!5376 (v!48941 (underlying!10373 (v!48942 (underlying!10374 thiss!41921))))))) b!4812842))

(declare-fun b!4812843 () Bool)

(declare-fun tp!1361376 () Bool)

(declare-fun e!3006875 () Bool)

(assert (=> b!4812843 (= e!3006875 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361376))))

(assert (=> b!4812707 (= tp!1361370 e!3006875)))

(assert (= (and b!4812707 ((_ is Cons!54595) mapDefault!22439)) b!4812843))

(declare-fun condMapEmpty!22442 () Bool)

(declare-fun mapDefault!22442 () List!54719)

(assert (=> mapNonEmpty!22439 (= condMapEmpty!22442 (= mapRest!22439 ((as const (Array (_ BitVec 32) List!54719)) mapDefault!22442)))))

(declare-fun e!3006880 () Bool)

(declare-fun mapRes!22442 () Bool)

(assert (=> mapNonEmpty!22439 (= tp!1361368 (and e!3006880 mapRes!22442))))

(declare-fun b!4812851 () Bool)

(declare-fun tp!1361385 () Bool)

(assert (=> b!4812851 (= e!3006880 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361385))))

(declare-fun mapNonEmpty!22442 () Bool)

(declare-fun tp!1361383 () Bool)

(declare-fun e!3006881 () Bool)

(assert (=> mapNonEmpty!22442 (= mapRes!22442 (and tp!1361383 e!3006881))))

(declare-fun mapRest!22442 () (Array (_ BitVec 32) List!54719))

(declare-fun mapKey!22442 () (_ BitVec 32))

(declare-fun mapValue!22442 () List!54719)

(assert (=> mapNonEmpty!22442 (= mapRest!22439 (store mapRest!22442 mapKey!22442 mapValue!22442))))

(declare-fun tp!1361384 () Bool)

(declare-fun b!4812850 () Bool)

(assert (=> b!4812850 (= e!3006881 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361384))))

(declare-fun mapIsEmpty!22442 () Bool)

(assert (=> mapIsEmpty!22442 mapRes!22442))

(assert (= (and mapNonEmpty!22439 condMapEmpty!22442) mapIsEmpty!22442))

(assert (= (and mapNonEmpty!22439 (not condMapEmpty!22442)) mapNonEmpty!22442))

(assert (= (and mapNonEmpty!22442 ((_ is Cons!54595) mapValue!22442)) b!4812850))

(assert (= (and mapNonEmpty!22439 ((_ is Cons!54595) mapDefault!22442)) b!4812851))

(declare-fun m!5798432 () Bool)

(assert (=> mapNonEmpty!22442 m!5798432))

(declare-fun tp!1361386 () Bool)

(declare-fun b!4812852 () Bool)

(declare-fun e!3006882 () Bool)

(assert (=> b!4812852 (= e!3006882 (and tp_is_empty!34053 tp_is_empty!34055 tp!1361386))))

(assert (=> mapNonEmpty!22439 (= tp!1361369 e!3006882)))

(assert (= (and mapNonEmpty!22439 ((_ is Cons!54595) mapValue!22439)) b!4812852))

(declare-fun b_lambda!188307 () Bool)

(assert (= b_lambda!188305 (or (and b!4812709 b_free!130275) b_lambda!188307)))

(declare-fun b_lambda!188309 () Bool)

(assert (= b_lambda!188301 (or b!4812708 b_lambda!188309)))

(declare-fun bs!1160225 () Bool)

(declare-fun d!1540736 () Bool)

(assert (= bs!1160225 (and d!1540736 b!4812708)))

(assert (=> bs!1160225 (= (dynLambda!22147 lambda!233874 (h!61028 (toList!7176 lt!1963921))) (noDuplicateKeys!2394 (_2!32049 (h!61028 (toList!7176 lt!1963921)))))))

(declare-fun m!5798434 () Bool)

(assert (=> bs!1160225 m!5798434))

(assert (=> b!4812719 d!1540736))

(declare-fun b_lambda!188311 () Bool)

(assert (= b_lambda!188303 (or b!4812703 b_lambda!188311)))

(declare-fun bs!1160226 () Bool)

(declare-fun d!1540738 () Bool)

(assert (= bs!1160226 (and d!1540738 b!4812703)))

(assert (=> bs!1160226 (= (dynLambda!22147 lambda!233873 lt!1963916) (noDuplicateKeys!2394 (_2!32049 lt!1963916)))))

(declare-fun m!5798436 () Bool)

(assert (=> bs!1160226 m!5798436))

(assert (=> d!1540716 d!1540738))

(check-sat (not d!1540722) (not b!4812820) (not b!4812835) (not bs!1160225) (not b!4812720) (not b!4812749) (not d!1540694) (not b!4812809) (not d!1540724) (not b!4812739) (not b!4812766) (not bm!335851) (not b!4812852) (not d!1540726) (not bs!1160226) (not b!4812830) (not b_lambda!188309) (not b!4812743) (not b!4812842) (not b!4812807) (not d!1540710) b_and!342087 (not d!1540720) (not b!4812815) (not d!1540704) b_and!342085 (not b!4812771) (not d!1540728) (not b!4812813) (not b!4812788) (not d!1540714) (not d!1540712) (not b!4812811) (not b!4812725) (not b!4812841) (not b!4812776) (not b!4812850) (not b_lambda!188307) (not mapNonEmpty!22442) (not d!1540732) (not d!1540696) (not b!4812781) (not d!1540730) (not d!1540700) (not d!1540692) (not b!4812814) (not b!4812810) tp_is_empty!34053 (not d!1540734) (not b!4812728) (not tb!257545) tp_is_empty!34055 (not d!1540716) (not b!4812772) (not b!4812768) (not d!1540718) (not b_next!131065) (not b!4812836) (not b!4812851) (not b_next!131067) (not b!4812770) (not b!4812843) (not b!4812828) (not b_lambda!188311))
(check-sat b_and!342087 b_and!342085 (not b_next!131065) (not b_next!131067))
