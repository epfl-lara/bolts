; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47804 () Bool)

(assert start!47804)

(declare-fun b!521506 () Bool)

(declare-fun b_free!13681 () Bool)

(declare-fun b_next!13697 () Bool)

(assert (=> b!521506 (= b_free!13681 (not b_next!13697))))

(declare-fun tp!162293 () Bool)

(declare-fun b_and!51175 () Bool)

(assert (=> b!521506 (= tp!162293 b_and!51175)))

(declare-fun b!521505 () Bool)

(declare-fun b_free!13683 () Bool)

(declare-fun b_next!13699 () Bool)

(assert (=> b!521505 (= b_free!13683 (not b_next!13699))))

(declare-fun tp!162291 () Bool)

(declare-fun b_and!51177 () Bool)

(assert (=> b!521505 (= tp!162291 b_and!51177)))

(declare-fun res!221485 () Bool)

(declare-fun e!312693 () Bool)

(assert (=> start!47804 (=> (not res!221485) (not e!312693))))

(declare-datatypes ((C!3324 0))(
  ( (C!3325 (val!1888 Int)) )
))
(declare-datatypes ((Regex!1201 0))(
  ( (ElementMatch!1201 (c!100722 C!3324)) (Concat!2103 (regOne!2914 Regex!1201) (regTwo!2914 Regex!1201)) (EmptyExpr!1201) (Star!1201 (reg!1530 Regex!1201)) (EmptyLang!1201) (Union!1201 (regOne!2915 Regex!1201) (regTwo!2915 Regex!1201)) )
))
(declare-datatypes ((tuple2!5928 0))(
  ( (tuple2!5929 (_1!3180 Regex!1201) (_2!3180 C!3324)) )
))
(declare-datatypes ((tuple2!5930 0))(
  ( (tuple2!5931 (_1!3181 tuple2!5928) (_2!3181 Regex!1201)) )
))
(declare-datatypes ((List!4836 0))(
  ( (Nil!4826) (Cons!4826 (h!10227 tuple2!5930) (t!73426 List!4836)) )
))
(declare-datatypes ((array!2113 0))(
  ( (array!2114 (arr!966 (Array (_ BitVec 32) (_ BitVec 64))) (size!3942 (_ BitVec 32))) )
))
(declare-datatypes ((array!2115 0))(
  ( (array!2116 (arr!967 (Array (_ BitVec 32) List!4836)) (size!3943 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1082 0))(
  ( (LongMapFixedSize!1083 (defaultEntry!897 Int) (mask!2013 (_ BitVec 32)) (extraKeys!788 (_ BitVec 32)) (zeroValue!798 List!4836) (minValue!798 List!4836) (_size!1191 (_ BitVec 32)) (_keys!835 array!2113) (_values!820 array!2115) (_vacant!602 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2105 0))(
  ( (Cell!2106 (v!15915 LongMapFixedSize!1082)) )
))
(declare-datatypes ((MutLongMap!541 0))(
  ( (LongMap!541 (underlying!1261 Cell!2105)) (MutLongMapExt!540 (__x!3516 Int)) )
))
(declare-datatypes ((Cell!2107 0))(
  ( (Cell!2108 (v!15916 MutLongMap!541)) )
))
(declare-datatypes ((Hashable!513 0))(
  ( (HashableExt!512 (__x!3517 Int)) )
))
(declare-datatypes ((MutableMap!513 0))(
  ( (MutableMapExt!512 (__x!3518 Int)) (HashMap!513 (underlying!1262 Cell!2107) (hashF!2421 Hashable!513) (_size!1192 (_ BitVec 32)) (defaultValue!664 Int)) )
))
(declare-datatypes ((Cache!298 0))(
  ( (Cache!299 (cache!900 MutableMap!513)) )
))
(declare-fun thiss!28494 () Cache!298)

(declare-fun validCacheMap!36 (MutableMap!513) Bool)

(assert (=> start!47804 (= res!221485 (validCacheMap!36 (cache!900 thiss!28494)))))

(assert (=> start!47804 e!312693))

(declare-fun e!312699 () Bool)

(declare-fun inv!6104 (Cache!298) Bool)

(assert (=> start!47804 (and (inv!6104 thiss!28494) e!312699)))

(declare-fun b!521500 () Bool)

(declare-fun e!312691 () Bool)

(declare-fun tp!162287 () Bool)

(declare-fun mapRes!2096 () Bool)

(assert (=> b!521500 (= e!312691 (and tp!162287 mapRes!2096))))

(declare-fun condMapEmpty!2096 () Bool)

(declare-fun mapDefault!2096 () List!4836)

(assert (=> b!521500 (= condMapEmpty!2096 (= (arr!967 (_values!820 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) ((as const (Array (_ BitVec 32) List!4836)) mapDefault!2096)))))

(declare-fun b!521501 () Bool)

(declare-fun e!312692 () Bool)

(declare-fun e!312695 () Bool)

(assert (=> b!521501 (= e!312692 e!312695)))

(declare-fun b!521502 () Bool)

(declare-fun res!221484 () Bool)

(assert (=> b!521502 (=> (not res!221484) (not e!312693))))

(get-info :version)

(assert (=> b!521502 (= res!221484 ((_ is HashMap!513) (cache!900 thiss!28494)))))

(declare-fun mapNonEmpty!2096 () Bool)

(declare-fun tp!162292 () Bool)

(declare-fun tp!162290 () Bool)

(assert (=> mapNonEmpty!2096 (= mapRes!2096 (and tp!162292 tp!162290))))

(declare-fun mapKey!2096 () (_ BitVec 32))

(declare-fun mapValue!2096 () List!4836)

(declare-fun mapRest!2096 () (Array (_ BitVec 32) List!4836))

(assert (=> mapNonEmpty!2096 (= (arr!967 (_values!820 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) (store mapRest!2096 mapKey!2096 mapValue!2096))))

(declare-fun b!521503 () Bool)

(declare-fun e!312697 () Bool)

(assert (=> b!521503 (= e!312695 e!312697)))

(declare-fun b!521504 () Bool)

(declare-fun e!312696 () Bool)

(declare-fun lt!217139 () MutLongMap!541)

(assert (=> b!521504 (= e!312696 (and e!312692 ((_ is LongMap!541) lt!217139)))))

(assert (=> b!521504 (= lt!217139 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))

(declare-fun e!312698 () Bool)

(assert (=> b!521505 (= e!312698 (and e!312696 tp!162291))))

(declare-fun tp!162289 () Bool)

(declare-fun tp!162288 () Bool)

(declare-fun array_inv!705 (array!2113) Bool)

(declare-fun array_inv!706 (array!2115) Bool)

(assert (=> b!521506 (= e!312697 (and tp!162293 tp!162289 tp!162288 (array_inv!705 (_keys!835 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) (array_inv!706 (_values!820 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) e!312691))))

(declare-fun b!521507 () Bool)

(assert (=> b!521507 (= e!312699 e!312698)))

(declare-fun b!521508 () Bool)

(declare-fun valid!515 (MutableMap!513) Bool)

(assert (=> b!521508 (= e!312693 (not (valid!515 (cache!900 thiss!28494))))))

(declare-fun mapIsEmpty!2096 () Bool)

(assert (=> mapIsEmpty!2096 mapRes!2096))

(assert (= (and start!47804 res!221485) b!521502))

(assert (= (and b!521502 res!221484) b!521508))

(assert (= (and b!521500 condMapEmpty!2096) mapIsEmpty!2096))

(assert (= (and b!521500 (not condMapEmpty!2096)) mapNonEmpty!2096))

(assert (= b!521506 b!521500))

(assert (= b!521503 b!521506))

(assert (= b!521501 b!521503))

(assert (= (and b!521504 ((_ is LongMap!541) (v!15916 (underlying!1262 (cache!900 thiss!28494))))) b!521501))

(assert (= b!521505 b!521504))

(assert (= (and b!521507 ((_ is HashMap!513) (cache!900 thiss!28494))) b!521505))

(assert (= start!47804 b!521507))

(declare-fun m!767932 () Bool)

(assert (=> start!47804 m!767932))

(declare-fun m!767934 () Bool)

(assert (=> start!47804 m!767934))

(declare-fun m!767936 () Bool)

(assert (=> mapNonEmpty!2096 m!767936))

(declare-fun m!767938 () Bool)

(assert (=> b!521506 m!767938))

(declare-fun m!767940 () Bool)

(assert (=> b!521506 m!767940))

(declare-fun m!767942 () Bool)

(assert (=> b!521508 m!767942))

(check-sat (not b!521506) b_and!51175 (not b!521500) (not b!521508) (not b_next!13697) (not b_next!13699) b_and!51177 (not mapNonEmpty!2096) (not start!47804))
(check-sat b_and!51175 b_and!51177 (not b_next!13699) (not b_next!13697))
(get-model)

(declare-fun d!186155 () Bool)

(assert (=> d!186155 (= (array_inv!705 (_keys!835 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) (bvsge (size!3942 (_keys!835 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521506 d!186155))

(declare-fun d!186157 () Bool)

(assert (=> d!186157 (= (array_inv!706 (_values!820 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) (bvsge (size!3943 (_values!820 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494))))))) #b00000000000000000000000000000000))))

(assert (=> b!521506 d!186157))

(declare-fun d!186159 () Bool)

(declare-fun res!221490 () Bool)

(declare-fun e!312702 () Bool)

(assert (=> d!186159 (=> (not res!221490) (not e!312702))))

(declare-fun valid!516 (MutLongMap!541) Bool)

(assert (=> d!186159 (= res!221490 (valid!516 (v!15916 (underlying!1262 (cache!900 thiss!28494)))))))

(assert (=> d!186159 (= (valid!515 (cache!900 thiss!28494)) e!312702)))

(declare-fun b!521513 () Bool)

(declare-fun res!221491 () Bool)

(assert (=> b!521513 (=> (not res!221491) (not e!312702))))

(declare-fun lambda!14959 () Int)

(declare-datatypes ((tuple2!5932 0))(
  ( (tuple2!5933 (_1!3182 (_ BitVec 64)) (_2!3182 List!4836)) )
))
(declare-datatypes ((List!4837 0))(
  ( (Nil!4827) (Cons!4827 (h!10228 tuple2!5932) (t!73427 List!4837)) )
))
(declare-fun forall!1465 (List!4837 Int) Bool)

(declare-datatypes ((ListLongMap!97 0))(
  ( (ListLongMap!98 (toList!445 List!4837)) )
))
(declare-fun map!1110 (MutLongMap!541) ListLongMap!97)

(assert (=> b!521513 (= res!221491 (forall!1465 (toList!445 (map!1110 (v!15916 (underlying!1262 (cache!900 thiss!28494))))) lambda!14959))))

(declare-fun b!521514 () Bool)

(declare-fun allKeysSameHashInMap!37 (ListLongMap!97 Hashable!513) Bool)

(assert (=> b!521514 (= e!312702 (allKeysSameHashInMap!37 (map!1110 (v!15916 (underlying!1262 (cache!900 thiss!28494)))) (hashF!2421 (cache!900 thiss!28494))))))

(assert (= (and d!186159 res!221490) b!521513))

(assert (= (and b!521513 res!221491) b!521514))

(declare-fun m!767944 () Bool)

(assert (=> d!186159 m!767944))

(declare-fun m!767946 () Bool)

(assert (=> b!521513 m!767946))

(declare-fun m!767948 () Bool)

(assert (=> b!521513 m!767948))

(assert (=> b!521514 m!767946))

(assert (=> b!521514 m!767946))

(declare-fun m!767950 () Bool)

(assert (=> b!521514 m!767950))

(assert (=> b!521508 d!186159))

(declare-fun d!186161 () Bool)

(declare-fun res!221498 () Bool)

(declare-fun e!312707 () Bool)

(assert (=> d!186161 (=> (not res!221498) (not e!312707))))

(assert (=> d!186161 (= res!221498 (valid!515 (cache!900 thiss!28494)))))

(assert (=> d!186161 (= (validCacheMap!36 (cache!900 thiss!28494)) e!312707)))

(declare-fun b!521521 () Bool)

(declare-fun res!221499 () Bool)

(assert (=> b!521521 (=> (not res!221499) (not e!312707))))

(declare-fun invariantList!88 (List!4836) Bool)

(declare-datatypes ((ListMap!225 0))(
  ( (ListMap!226 (toList!446 List!4836)) )
))
(declare-fun map!1111 (MutableMap!513) ListMap!225)

(assert (=> b!521521 (= res!221499 (invariantList!88 (toList!446 (map!1111 (cache!900 thiss!28494)))))))

(declare-fun b!521522 () Bool)

(declare-fun lambda!14962 () Int)

(declare-fun forall!1466 (List!4836 Int) Bool)

(assert (=> b!521522 (= e!312707 (forall!1466 (toList!446 (map!1111 (cache!900 thiss!28494))) lambda!14962))))

(assert (= (and d!186161 res!221498) b!521521))

(assert (= (and b!521521 res!221499) b!521522))

(assert (=> d!186161 m!767942))

(declare-fun m!767953 () Bool)

(assert (=> b!521521 m!767953))

(declare-fun m!767955 () Bool)

(assert (=> b!521521 m!767955))

(assert (=> b!521522 m!767953))

(declare-fun m!767957 () Bool)

(assert (=> b!521522 m!767957))

(assert (=> start!47804 d!186161))

(declare-fun d!186163 () Bool)

(declare-fun res!221502 () Bool)

(declare-fun e!312710 () Bool)

(assert (=> d!186163 (=> (not res!221502) (not e!312710))))

(assert (=> d!186163 (= res!221502 ((_ is HashMap!513) (cache!900 thiss!28494)))))

(assert (=> d!186163 (= (inv!6104 thiss!28494) e!312710)))

(declare-fun b!521525 () Bool)

(assert (=> b!521525 (= e!312710 (validCacheMap!36 (cache!900 thiss!28494)))))

(assert (= (and d!186163 res!221502) b!521525))

(assert (=> b!521525 m!767932))

(assert (=> start!47804 d!186163))

(declare-fun mapNonEmpty!2099 () Bool)

(declare-fun mapRes!2099 () Bool)

(declare-fun tp!162314 () Bool)

(declare-fun e!312716 () Bool)

(assert (=> mapNonEmpty!2099 (= mapRes!2099 (and tp!162314 e!312716))))

(declare-fun mapRest!2099 () (Array (_ BitVec 32) List!4836))

(declare-fun mapKey!2099 () (_ BitVec 32))

(declare-fun mapValue!2099 () List!4836)

(assert (=> mapNonEmpty!2099 (= mapRest!2096 (store mapRest!2099 mapKey!2099 mapValue!2099))))

(declare-fun tp!162309 () Bool)

(declare-fun tp!162308 () Bool)

(declare-fun tp_is_empty!2787 () Bool)

(declare-fun b!521533 () Bool)

(declare-fun tp!162312 () Bool)

(declare-fun e!312715 () Bool)

(assert (=> b!521533 (= e!312715 (and tp!162312 tp_is_empty!2787 tp!162309 tp!162308))))

(declare-fun mapIsEmpty!2099 () Bool)

(assert (=> mapIsEmpty!2099 mapRes!2099))

(declare-fun tp!162313 () Bool)

(declare-fun tp!162310 () Bool)

(declare-fun b!521532 () Bool)

(declare-fun tp!162311 () Bool)

(assert (=> b!521532 (= e!312716 (and tp!162313 tp_is_empty!2787 tp!162311 tp!162310))))

(declare-fun condMapEmpty!2099 () Bool)

(declare-fun mapDefault!2099 () List!4836)

(assert (=> mapNonEmpty!2096 (= condMapEmpty!2099 (= mapRest!2096 ((as const (Array (_ BitVec 32) List!4836)) mapDefault!2099)))))

(assert (=> mapNonEmpty!2096 (= tp!162292 (and e!312715 mapRes!2099))))

(assert (= (and mapNonEmpty!2096 condMapEmpty!2099) mapIsEmpty!2099))

(assert (= (and mapNonEmpty!2096 (not condMapEmpty!2099)) mapNonEmpty!2099))

(assert (= (and mapNonEmpty!2099 ((_ is Cons!4826) mapValue!2099)) b!521532))

(assert (= (and mapNonEmpty!2096 ((_ is Cons!4826) mapDefault!2099)) b!521533))

(declare-fun m!767959 () Bool)

(assert (=> mapNonEmpty!2099 m!767959))

(declare-fun tp!162323 () Bool)

(declare-fun tp!162322 () Bool)

(declare-fun e!312719 () Bool)

(declare-fun tp!162321 () Bool)

(declare-fun b!521538 () Bool)

(assert (=> b!521538 (= e!312719 (and tp!162321 tp_is_empty!2787 tp!162322 tp!162323))))

(assert (=> mapNonEmpty!2096 (= tp!162290 e!312719)))

(assert (= (and mapNonEmpty!2096 ((_ is Cons!4826) mapValue!2096)) b!521538))

(declare-fun e!312720 () Bool)

(declare-fun tp!162326 () Bool)

(declare-fun b!521539 () Bool)

(declare-fun tp!162325 () Bool)

(declare-fun tp!162324 () Bool)

(assert (=> b!521539 (= e!312720 (and tp!162324 tp_is_empty!2787 tp!162325 tp!162326))))

(assert (=> b!521506 (= tp!162289 e!312720)))

(assert (= (and b!521506 ((_ is Cons!4826) (zeroValue!798 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494)))))))) b!521539))

(declare-fun b!521540 () Bool)

(declare-fun tp!162328 () Bool)

(declare-fun e!312721 () Bool)

(declare-fun tp!162329 () Bool)

(declare-fun tp!162327 () Bool)

(assert (=> b!521540 (= e!312721 (and tp!162327 tp_is_empty!2787 tp!162328 tp!162329))))

(assert (=> b!521506 (= tp!162288 e!312721)))

(assert (= (and b!521506 ((_ is Cons!4826) (minValue!798 (v!15915 (underlying!1261 (v!15916 (underlying!1262 (cache!900 thiss!28494)))))))) b!521540))

(declare-fun tp!162332 () Bool)

(declare-fun e!312722 () Bool)

(declare-fun b!521541 () Bool)

(declare-fun tp!162331 () Bool)

(declare-fun tp!162330 () Bool)

(assert (=> b!521541 (= e!312722 (and tp!162330 tp_is_empty!2787 tp!162331 tp!162332))))

(assert (=> b!521500 (= tp!162287 e!312722)))

(assert (= (and b!521500 ((_ is Cons!4826) mapDefault!2096)) b!521541))

(check-sat (not b!521513) (not b!521538) tp_is_empty!2787 (not b!521514) (not b!521541) (not mapNonEmpty!2099) (not b_next!13697) (not b_next!13699) (not b!521533) (not b!521540) (not b!521522) b_and!51177 (not b!521521) (not b!521539) (not d!186159) (not d!186161) b_and!51175 (not b!521525) (not b!521532))
(check-sat b_and!51175 b_and!51177 (not b_next!13699) (not b_next!13697))
