; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497578 () Bool)

(assert start!497578)

(declare-fun b!4812305 () Bool)

(declare-fun b_free!130251 () Bool)

(declare-fun b_next!131041 () Bool)

(assert (=> b!4812305 (= b_free!130251 (not b_next!131041))))

(declare-fun tp!1361226 () Bool)

(declare-fun b_and!342057 () Bool)

(assert (=> b!4812305 (= tp!1361226 b_and!342057)))

(declare-fun b!4812295 () Bool)

(declare-fun b_free!130253 () Bool)

(declare-fun b_next!131043 () Bool)

(assert (=> b!4812295 (= b_free!130253 (not b_next!131043))))

(declare-fun tp!1361225 () Bool)

(declare-fun b_and!342059 () Bool)

(assert (=> b!4812295 (= tp!1361225 b_and!342059)))

(declare-fun bs!1160185 () Bool)

(declare-fun b!4812298 () Bool)

(declare-fun b!4812297 () Bool)

(assert (= bs!1160185 (and b!4812298 b!4812297)))

(declare-fun lambda!233838 () Int)

(declare-fun lambda!233837 () Int)

(assert (=> bs!1160185 (= lambda!233838 lambda!233837)))

(declare-fun mapIsEmpty!22418 () Bool)

(declare-fun mapRes!22418 () Bool)

(assert (=> mapIsEmpty!22418 mapRes!22418))

(declare-fun e!3006482 () Bool)

(declare-fun e!3006488 () Bool)

(assert (=> b!4812295 (= e!3006482 (and e!3006488 tp!1361225))))

(declare-fun mapNonEmpty!22418 () Bool)

(declare-fun tp!1361228 () Bool)

(declare-fun tp!1361224 () Bool)

(assert (=> mapNonEmpty!22418 (= mapRes!22418 (and tp!1361228 tp!1361224))))

(declare-datatypes ((K!16209 0))(
  ( (K!16210 (val!21273 Int)) )
))
(declare-datatypes ((V!16455 0))(
  ( (V!16456 (val!21274 Int)) )
))
(declare-datatypes ((tuple2!57486 0))(
  ( (tuple2!57487 (_1!32037 K!16209) (_2!32037 V!16455)) )
))
(declare-datatypes ((List!54707 0))(
  ( (Nil!54583) (Cons!54583 (h!61015 tuple2!57486) (t!362197 List!54707)) )
))
(declare-fun mapValue!22418 () List!54707)

(declare-datatypes ((array!18692 0))(
  ( (array!18693 (arr!8339 (Array (_ BitVec 32) (_ BitVec 64))) (size!36585 (_ BitVec 32))) )
))
(declare-datatypes ((array!18694 0))(
  ( (array!18695 (arr!8340 (Array (_ BitVec 32) List!54707)) (size!36586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10154 0))(
  ( (LongMapFixedSize!10155 (defaultEntry!5499 Int) (mask!15096 (_ BitVec 32)) (extraKeys!5357 (_ BitVec 32)) (zeroValue!5370 List!54707) (minValue!5370 List!54707) (_size!10179 (_ BitVec 32)) (_keys!5426 array!18692) (_values!5395 array!18694) (_vacant!5142 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20073 0))(
  ( (Cell!20074 (v!48917 LongMapFixedSize!10154)) )
))
(declare-datatypes ((MutLongMap!5077 0))(
  ( (LongMap!5077 (underlying!10361 Cell!20073)) (MutLongMapExt!5076 (__x!33329 Int)) )
))
(declare-datatypes ((Hashable!7088 0))(
  ( (HashableExt!7087 (__x!33330 Int)) )
))
(declare-datatypes ((Cell!20075 0))(
  ( (Cell!20076 (v!48918 MutLongMap!5077)) )
))
(declare-datatypes ((MutableMap!4961 0))(
  ( (MutableMapExt!4960 (__x!33331 Int)) (HashMap!4961 (underlying!10362 Cell!20075) (hashF!13365 Hashable!7088) (_size!10180 (_ BitVec 32)) (defaultValue!5132 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4961)

(declare-fun mapKey!22418 () (_ BitVec 32))

(declare-fun mapRest!22418 () (Array (_ BitVec 32) List!54707))

(assert (=> mapNonEmpty!22418 (= (arr!8340 (_values!5395 (v!48917 (underlying!10361 (v!48918 (underlying!10362 thiss!41921)))))) (store mapRest!22418 mapKey!22418 mapValue!22418))))

(declare-fun b!4812296 () Bool)

(declare-fun e!3006484 () Bool)

(assert (=> b!4812296 (= e!3006484 false)))

(declare-fun lt!1963649 () Bool)

(declare-datatypes ((tuple2!57488 0))(
  ( (tuple2!57489 (_1!32038 (_ BitVec 64)) (_2!32038 List!54707)) )
))
(declare-datatypes ((List!54708 0))(
  ( (Nil!54584) (Cons!54584 (h!61016 tuple2!57488) (t!362198 List!54708)) )
))
(declare-datatypes ((ListLongMap!5643 0))(
  ( (ListLongMap!5644 (toList!7167 List!54708)) )
))
(declare-fun lt!1963647 () ListLongMap!5643)

(declare-fun allKeysSameHashInMap!2414 (ListLongMap!5643 Hashable!7088) Bool)

(assert (=> b!4812296 (= lt!1963649 (allKeysSameHashInMap!2414 lt!1963647 (hashF!13365 thiss!41921)))))

(declare-fun lt!1963652 () ListLongMap!5643)

(declare-datatypes ((Unit!141629 0))(
  ( (Unit!141630) )
))
(declare-fun e!3006487 () Unit!141629)

(declare-fun lt!1963654 () tuple2!57488)

(declare-fun forallContained!4276 (List!54708 Int tuple2!57488) Unit!141629)

(assert (=> b!4812297 (= e!3006487 (forallContained!4276 (toList!7167 lt!1963652) lambda!233837 lt!1963654))))

(declare-fun map!12453 (MutLongMap!5077) ListLongMap!5643)

(assert (=> b!4812297 (= lt!1963652 (map!12453 (v!48918 (underlying!10362 thiss!41921))))))

(declare-fun lt!1963648 () List!54707)

(declare-fun lt!1963645 () (_ BitVec 64))

(declare-fun apply!13180 (MutLongMap!5077 (_ BitVec 64)) List!54707)

(assert (=> b!4812297 (= lt!1963648 (apply!13180 (v!48918 (underlying!10362 thiss!41921)) lt!1963645))))

(assert (=> b!4812297 (= lt!1963654 (tuple2!57489 lt!1963645 lt!1963648))))

(declare-fun c!820191 () Bool)

(declare-fun contains!18312 (List!54708 tuple2!57488) Bool)

(assert (=> b!4812297 (= c!820191 (not (contains!18312 (toList!7167 lt!1963652) lt!1963654)))))

(declare-fun lt!1963653 () Unit!141629)

(declare-fun e!3006486 () Unit!141629)

(assert (=> b!4812297 (= lt!1963653 e!3006486)))

(declare-fun res!2046870 () Bool)

(assert (=> b!4812298 (=> (not res!2046870) (not e!3006484))))

(declare-fun forall!12401 (List!54708 Int) Bool)

(assert (=> b!4812298 (= res!2046870 (forall!12401 (toList!7167 lt!1963647) lambda!233838))))

(declare-fun b!4812299 () Bool)

(declare-fun Unit!141631 () Unit!141629)

(assert (=> b!4812299 (= e!3006487 Unit!141631)))

(declare-fun b!4812300 () Bool)

(declare-fun e!3006491 () Bool)

(declare-fun tp!1361227 () Bool)

(assert (=> b!4812300 (= e!3006491 (and tp!1361227 mapRes!22418))))

(declare-fun condMapEmpty!22418 () Bool)

(declare-fun mapDefault!22418 () List!54707)

(assert (=> b!4812300 (= condMapEmpty!22418 (= (arr!8340 (_values!5395 (v!48917 (underlying!10361 (v!48918 (underlying!10362 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54707)) mapDefault!22418)))))

(declare-fun b!4812301 () Bool)

(declare-fun res!2046869 () Bool)

(declare-fun e!3006483 () Bool)

(assert (=> b!4812301 (=> (not res!2046869) (not e!3006483))))

(declare-fun valid!4108 (MutableMap!4961) Bool)

(assert (=> b!4812301 (= res!2046869 (valid!4108 thiss!41921))))

(declare-fun b!4812302 () Bool)

(declare-fun Unit!141632 () Unit!141629)

(assert (=> b!4812302 (= e!3006486 Unit!141632)))

(declare-fun b!4812303 () Bool)

(assert (=> b!4812303 false))

(declare-fun lt!1963650 () Unit!141629)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1009 (List!54708 (_ BitVec 64) List!54707) Unit!141629)

(assert (=> b!4812303 (= lt!1963650 (lemmaGetValueByKeyImpliesContainsTuple!1009 (toList!7167 lt!1963652) lt!1963645 lt!1963648))))

(declare-datatypes ((Option!13325 0))(
  ( (None!13324) (Some!13324 (v!48919 List!54707)) )
))
(declare-fun isDefined!10463 (Option!13325) Bool)

(declare-fun getValueByKey!2504 (List!54708 (_ BitVec 64)) Option!13325)

(assert (=> b!4812303 (isDefined!10463 (getValueByKey!2504 (toList!7167 lt!1963652) lt!1963645))))

(declare-fun lt!1963646 () Unit!141629)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2291 (List!54708 (_ BitVec 64)) Unit!141629)

(assert (=> b!4812303 (= lt!1963646 (lemmaContainsKeyImpliesGetValueByKeyDefined!2291 (toList!7167 lt!1963652) lt!1963645))))

(declare-fun containsKey!4168 (List!54708 (_ BitVec 64)) Bool)

(assert (=> b!4812303 (containsKey!4168 (toList!7167 lt!1963652) lt!1963645)))

(declare-fun lt!1963655 () Unit!141629)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!286 (List!54708 (_ BitVec 64)) Unit!141629)

(assert (=> b!4812303 (= lt!1963655 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!286 (toList!7167 lt!1963652) lt!1963645))))

(declare-fun Unit!141633 () Unit!141629)

(assert (=> b!4812303 (= e!3006486 Unit!141633)))

(declare-fun res!2046867 () Bool)

(assert (=> start!497578 (=> (not res!2046867) (not e!3006483))))

(get-info :version)

(assert (=> start!497578 (= res!2046867 ((_ is HashMap!4961) thiss!41921))))

(assert (=> start!497578 e!3006483))

(assert (=> start!497578 e!3006482))

(declare-fun tp_is_empty!34039 () Bool)

(assert (=> start!497578 tp_is_empty!34039))

(declare-fun b!4812304 () Bool)

(assert (=> b!4812304 (= e!3006483 e!3006484)))

(declare-fun res!2046868 () Bool)

(assert (=> b!4812304 (=> (not res!2046868) (not e!3006484))))

(declare-fun key!1652 () K!16209)

(declare-datatypes ((ListMap!6585 0))(
  ( (ListMap!6586 (toList!7168 List!54707)) )
))
(declare-fun contains!18313 (ListMap!6585 K!16209) Bool)

(declare-fun extractMap!2544 (List!54708) ListMap!6585)

(assert (=> b!4812304 (= res!2046868 (contains!18313 (extractMap!2544 (toList!7167 lt!1963647)) key!1652))))

(assert (=> b!4812304 (= lt!1963647 (map!12453 (v!48918 (underlying!10362 thiss!41921))))))

(declare-fun lt!1963656 () Unit!141629)

(assert (=> b!4812304 (= lt!1963656 e!3006487)))

(declare-fun c!820190 () Bool)

(declare-fun contains!18314 (MutLongMap!5077 (_ BitVec 64)) Bool)

(assert (=> b!4812304 (= c!820190 (contains!18314 (v!48918 (underlying!10362 thiss!41921)) lt!1963645))))

(declare-fun hash!5154 (Hashable!7088 K!16209) (_ BitVec 64))

(assert (=> b!4812304 (= lt!1963645 (hash!5154 (hashF!13365 thiss!41921) key!1652))))

(declare-fun tp!1361230 () Bool)

(declare-fun tp!1361229 () Bool)

(declare-fun e!3006492 () Bool)

(declare-fun array_inv!6023 (array!18692) Bool)

(declare-fun array_inv!6024 (array!18694) Bool)

(assert (=> b!4812305 (= e!3006492 (and tp!1361226 tp!1361230 tp!1361229 (array_inv!6023 (_keys!5426 (v!48917 (underlying!10361 (v!48918 (underlying!10362 thiss!41921)))))) (array_inv!6024 (_values!5395 (v!48917 (underlying!10361 (v!48918 (underlying!10362 thiss!41921)))))) e!3006491))))

(declare-fun b!4812306 () Bool)

(declare-fun e!3006489 () Bool)

(declare-fun lt!1963651 () MutLongMap!5077)

(assert (=> b!4812306 (= e!3006488 (and e!3006489 ((_ is LongMap!5077) lt!1963651)))))

(assert (=> b!4812306 (= lt!1963651 (v!48918 (underlying!10362 thiss!41921)))))

(declare-fun b!4812307 () Bool)

(declare-fun e!3006485 () Bool)

(assert (=> b!4812307 (= e!3006489 e!3006485)))

(declare-fun b!4812308 () Bool)

(assert (=> b!4812308 (= e!3006485 e!3006492)))

(assert (= (and start!497578 res!2046867) b!4812301))

(assert (= (and b!4812301 res!2046869) b!4812304))

(assert (= (and b!4812304 c!820190) b!4812297))

(assert (= (and b!4812304 (not c!820190)) b!4812299))

(assert (= (and b!4812297 c!820191) b!4812303))

(assert (= (and b!4812297 (not c!820191)) b!4812302))

(assert (= (and b!4812304 res!2046868) b!4812298))

(assert (= (and b!4812298 res!2046870) b!4812296))

(assert (= (and b!4812300 condMapEmpty!22418) mapIsEmpty!22418))

(assert (= (and b!4812300 (not condMapEmpty!22418)) mapNonEmpty!22418))

(assert (= b!4812305 b!4812300))

(assert (= b!4812308 b!4812305))

(assert (= b!4812307 b!4812308))

(assert (= (and b!4812306 ((_ is LongMap!5077) (v!48918 (underlying!10362 thiss!41921)))) b!4812307))

(assert (= b!4812295 b!4812306))

(assert (= (and start!497578 ((_ is HashMap!4961) thiss!41921)) b!4812295))

(declare-fun m!5797896 () Bool)

(assert (=> b!4812303 m!5797896))

(declare-fun m!5797898 () Bool)

(assert (=> b!4812303 m!5797898))

(declare-fun m!5797900 () Bool)

(assert (=> b!4812303 m!5797900))

(assert (=> b!4812303 m!5797896))

(declare-fun m!5797902 () Bool)

(assert (=> b!4812303 m!5797902))

(declare-fun m!5797904 () Bool)

(assert (=> b!4812303 m!5797904))

(declare-fun m!5797906 () Bool)

(assert (=> b!4812303 m!5797906))

(declare-fun m!5797908 () Bool)

(assert (=> b!4812296 m!5797908))

(declare-fun m!5797910 () Bool)

(assert (=> mapNonEmpty!22418 m!5797910))

(declare-fun m!5797912 () Bool)

(assert (=> b!4812297 m!5797912))

(declare-fun m!5797914 () Bool)

(assert (=> b!4812297 m!5797914))

(declare-fun m!5797916 () Bool)

(assert (=> b!4812297 m!5797916))

(declare-fun m!5797918 () Bool)

(assert (=> b!4812297 m!5797918))

(declare-fun m!5797920 () Bool)

(assert (=> b!4812305 m!5797920))

(declare-fun m!5797922 () Bool)

(assert (=> b!4812305 m!5797922))

(declare-fun m!5797924 () Bool)

(assert (=> b!4812301 m!5797924))

(declare-fun m!5797926 () Bool)

(assert (=> b!4812298 m!5797926))

(declare-fun m!5797928 () Bool)

(assert (=> b!4812304 m!5797928))

(declare-fun m!5797930 () Bool)

(assert (=> b!4812304 m!5797930))

(assert (=> b!4812304 m!5797930))

(declare-fun m!5797932 () Bool)

(assert (=> b!4812304 m!5797932))

(declare-fun m!5797934 () Bool)

(assert (=> b!4812304 m!5797934))

(assert (=> b!4812304 m!5797914))

(check-sat (not b!4812304) b_and!342057 (not b!4812296) (not mapNonEmpty!22418) (not b!4812298) b_and!342059 (not b_next!131041) (not b!4812297) (not b!4812300) (not b!4812301) (not b!4812303) (not b_next!131043) (not b!4812305) tp_is_empty!34039)
(check-sat b_and!342057 b_and!342059 (not b_next!131041) (not b_next!131043))
