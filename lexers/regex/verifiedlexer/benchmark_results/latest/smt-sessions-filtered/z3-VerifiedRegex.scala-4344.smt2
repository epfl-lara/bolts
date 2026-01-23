; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231212 () Bool)

(assert start!231212)

(declare-fun b!2358641 () Bool)

(declare-fun b_free!70389 () Bool)

(declare-fun b_next!71093 () Bool)

(assert (=> b!2358641 (= b_free!70389 (not b_next!71093))))

(declare-fun tp!754186 () Bool)

(declare-fun b_and!185319 () Bool)

(assert (=> b!2358641 (= tp!754186 b_and!185319)))

(declare-fun b!2358638 () Bool)

(declare-fun b_free!70391 () Bool)

(declare-fun b_next!71095 () Bool)

(assert (=> b!2358638 (= b_free!70391 (not b_next!71095))))

(declare-fun tp!754183 () Bool)

(declare-fun b_and!185321 () Bool)

(assert (=> b!2358638 (= tp!754183 b_and!185321)))

(declare-fun b!2358637 () Bool)

(declare-fun e!1506478 () Bool)

(declare-fun e!1506477 () Bool)

(assert (=> b!2358637 (= e!1506478 e!1506477)))

(declare-fun res!1001083 () Bool)

(declare-fun e!1506480 () Bool)

(assert (=> start!231212 (=> (not res!1001083) (not e!1506480))))

(declare-datatypes ((K!4957 0))(
  ( (K!4958 (val!8189 Int)) )
))
(declare-datatypes ((V!5159 0))(
  ( (V!5160 (val!8190 Int)) )
))
(declare-datatypes ((tuple2!27620 0))(
  ( (tuple2!27621 (_1!16351 K!4957) (_2!16351 V!5159)) )
))
(declare-datatypes ((List!27980 0))(
  ( (Nil!27882) (Cons!27882 (h!33283 tuple2!27620) (t!207855 List!27980)) )
))
(declare-datatypes ((array!11353 0))(
  ( (array!11354 (arr!5058 (Array (_ BitVec 32) (_ BitVec 64))) (size!22082 (_ BitVec 32))) )
))
(declare-datatypes ((array!11355 0))(
  ( (array!11356 (arr!5059 (Array (_ BitVec 32) List!27980)) (size!22083 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6468 0))(
  ( (LongMapFixedSize!6469 (defaultEntry!3605 Int) (mask!8127 (_ BitVec 32)) (extraKeys!3482 (_ BitVec 32)) (zeroValue!3492 List!27980) (minValue!3492 List!27980) (_size!6515 (_ BitVec 32)) (_keys!3531 array!11353) (_values!3514 array!11355) (_vacant!3295 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3144 0))(
  ( (HashableExt!3143 (__x!18460 Int)) )
))
(declare-datatypes ((Cell!12753 0))(
  ( (Cell!12754 (v!30810 LongMapFixedSize!6468)) )
))
(declare-datatypes ((MutLongMap!3234 0))(
  ( (LongMap!3234 (underlying!6673 Cell!12753)) (MutLongMapExt!3233 (__x!18461 Int)) )
))
(declare-datatypes ((Cell!12755 0))(
  ( (Cell!12756 (v!30811 MutLongMap!3234)) )
))
(declare-datatypes ((MutableMap!3144 0))(
  ( (MutableMapExt!3143 (__x!18462 Int)) (HashMap!3144 (underlying!6674 Cell!12755) (hashF!5073 Hashable!3144) (_size!6516 (_ BitVec 32)) (defaultValue!3306 Int)) )
))
(declare-fun thiss!47723 () MutableMap!3144)

(get-info :version)

(assert (=> start!231212 (= res!1001083 ((_ is MutableMapExt!3143) thiss!47723))))

(assert (=> start!231212 e!1506480))

(declare-fun e!1506482 () Bool)

(assert (=> start!231212 e!1506482))

(declare-fun tp_is_empty!11175 () Bool)

(assert (=> start!231212 tp_is_empty!11175))

(declare-fun e!1506486 () Bool)

(assert (=> b!2358638 (= e!1506482 (and e!1506486 tp!754183))))

(declare-fun mapIsEmpty!15096 () Bool)

(declare-fun mapRes!15096 () Bool)

(assert (=> mapIsEmpty!15096 mapRes!15096))

(declare-fun b!2358639 () Bool)

(declare-fun e!1506484 () Bool)

(assert (=> b!2358639 (= e!1506484 e!1506478)))

(declare-fun b!2358640 () Bool)

(declare-fun e!1506485 () Bool)

(declare-fun e!1506481 () Bool)

(assert (=> b!2358640 (= e!1506485 e!1506481)))

(declare-datatypes ((Option!5439 0))(
  ( (None!5438) (Some!5438 (v!30812 V!5159)) )
))
(declare-fun lt!863631 () Option!5439)

(declare-fun key!7163 () K!4957)

(declare-fun getValueByKey!114 (List!27980 K!4957) Option!5439)

(declare-datatypes ((ListMap!909 0))(
  ( (ListMap!910 (toList!1423 List!27980)) )
))
(declare-fun abstractMap!96 (MutableMap!3144) ListMap!909)

(assert (=> b!2358640 (= lt!863631 (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(declare-fun res!1001084 () Bool)

(declare-fun isDefined!4269 (Option!5439) Bool)

(assert (=> b!2358640 (= res!1001084 (not (isDefined!4269 lt!863631)))))

(assert (=> b!2358640 (=> res!1001084 e!1506481)))

(declare-fun tp!754188 () Bool)

(declare-fun tp!754184 () Bool)

(declare-fun e!1506479 () Bool)

(declare-fun array_inv!3629 (array!11353) Bool)

(declare-fun array_inv!3630 (array!11355) Bool)

(assert (=> b!2358641 (= e!1506477 (and tp!754186 tp!754188 tp!754184 (array_inv!3629 (_keys!3531 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) (array_inv!3630 (_values!3514 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) e!1506479))))

(declare-fun b!2358642 () Bool)

(declare-fun res!1001085 () Bool)

(assert (=> b!2358642 (=> (not res!1001085) (not e!1506480))))

(declare-fun valid!2425 (MutableMap!3144) Bool)

(assert (=> b!2358642 (= res!1001085 (valid!2425 thiss!47723))))

(declare-fun b!2358643 () Bool)

(declare-fun lt!863630 () MutLongMap!3234)

(assert (=> b!2358643 (= e!1506486 (and e!1506484 ((_ is LongMap!3234) lt!863630)))))

(assert (=> b!2358643 (= lt!863630 (v!30811 (underlying!6674 thiss!47723)))))

(declare-fun b!2358644 () Bool)

(declare-fun tp!754182 () Bool)

(assert (=> b!2358644 (= e!1506479 (and tp!754182 mapRes!15096))))

(declare-fun condMapEmpty!15096 () Bool)

(declare-fun mapDefault!15096 () List!27980)

(assert (=> b!2358644 (= condMapEmpty!15096 (= (arr!5059 (_values!3514 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) ((as const (Array (_ BitVec 32) List!27980)) mapDefault!15096)))))

(declare-fun b!2358645 () Bool)

(assert (=> b!2358645 (= e!1506480 e!1506485)))

(declare-fun c!374921 () Bool)

(declare-fun contains!4848 (MutableMap!3144 K!4957) Bool)

(assert (=> b!2358645 (= c!374921 (contains!4848 thiss!47723 key!7163))))

(declare-fun lt!863632 () V!5159)

(declare-fun choose!13662 (MutableMap!3144 K!4957) V!5159)

(assert (=> b!2358645 (= lt!863632 (choose!13662 thiss!47723 key!7163))))

(declare-fun b!2358646 () Bool)

(declare-fun get!8458 (Option!5439) V!5159)

(assert (=> b!2358646 (= e!1506481 (not (= lt!863632 (get!8458 lt!863631))))))

(declare-fun mapNonEmpty!15096 () Bool)

(declare-fun tp!754187 () Bool)

(declare-fun tp!754185 () Bool)

(assert (=> mapNonEmpty!15096 (= mapRes!15096 (and tp!754187 tp!754185))))

(declare-fun mapKey!15096 () (_ BitVec 32))

(declare-fun mapValue!15096 () List!27980)

(declare-fun mapRest!15096 () (Array (_ BitVec 32) List!27980))

(assert (=> mapNonEmpty!15096 (= (arr!5059 (_values!3514 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) (store mapRest!15096 mapKey!15096 mapValue!15096))))

(declare-fun b!2358647 () Bool)

(declare-fun dynLambda!12008 (Int K!4957) V!5159)

(declare-fun defaultEntry!3606 (MutableMap!3144) Int)

(assert (=> b!2358647 (= e!1506485 (not (= lt!863632 (dynLambda!12008 (defaultEntry!3606 thiss!47723) key!7163))))))

(assert (= (and start!231212 res!1001083) b!2358642))

(assert (= (and b!2358642 res!1001085) b!2358645))

(assert (= (and b!2358645 c!374921) b!2358640))

(assert (= (and b!2358645 (not c!374921)) b!2358647))

(assert (= (and b!2358640 (not res!1001084)) b!2358646))

(assert (= (and b!2358644 condMapEmpty!15096) mapIsEmpty!15096))

(assert (= (and b!2358644 (not condMapEmpty!15096)) mapNonEmpty!15096))

(assert (= b!2358641 b!2358644))

(assert (= b!2358637 b!2358641))

(assert (= b!2358639 b!2358637))

(assert (= (and b!2358643 ((_ is LongMap!3234) (v!30811 (underlying!6674 thiss!47723)))) b!2358639))

(assert (= b!2358638 b!2358643))

(assert (= (and start!231212 ((_ is HashMap!3144) thiss!47723)) b!2358638))

(declare-fun b_lambda!73741 () Bool)

(assert (=> (not b_lambda!73741) (not b!2358647)))

(declare-fun t!207854 () Bool)

(declare-fun tb!138737 () Bool)

(assert (=> (and b!2358638 (= (defaultValue!3306 thiss!47723) (defaultEntry!3606 thiss!47723)) t!207854) tb!138737))

(declare-fun result!169618 () Bool)

(declare-fun tp_is_empty!11177 () Bool)

(assert (=> tb!138737 (= result!169618 tp_is_empty!11177)))

(assert (=> b!2358647 t!207854))

(declare-fun b_and!185323 () Bool)

(assert (= b_and!185321 (and (=> t!207854 result!169618) b_and!185323)))

(declare-fun m!2771341 () Bool)

(assert (=> b!2358646 m!2771341))

(declare-fun m!2771343 () Bool)

(assert (=> b!2358640 m!2771343))

(declare-fun m!2771345 () Bool)

(assert (=> b!2358640 m!2771345))

(declare-fun m!2771347 () Bool)

(assert (=> b!2358640 m!2771347))

(declare-fun m!2771349 () Bool)

(assert (=> b!2358642 m!2771349))

(declare-fun m!2771351 () Bool)

(assert (=> b!2358645 m!2771351))

(declare-fun m!2771353 () Bool)

(assert (=> b!2358645 m!2771353))

(declare-fun m!2771355 () Bool)

(assert (=> b!2358647 m!2771355))

(declare-fun m!2771357 () Bool)

(assert (=> b!2358647 m!2771357))

(declare-fun m!2771359 () Bool)

(assert (=> b!2358641 m!2771359))

(declare-fun m!2771361 () Bool)

(assert (=> b!2358641 m!2771361))

(declare-fun m!2771363 () Bool)

(assert (=> mapNonEmpty!15096 m!2771363))

(check-sat (not b!2358641) (not b_next!71093) (not b_next!71095) (not b!2358640) b_and!185319 (not b!2358646) tp_is_empty!11177 (not b!2358647) (not b_lambda!73741) (not mapNonEmpty!15096) (not b!2358644) (not b!2358645) b_and!185323 (not b!2358642) tp_is_empty!11175)
(check-sat b_and!185319 b_and!185323 (not b_next!71095) (not b_next!71093))
(get-model)

(declare-fun b!2358660 () Bool)

(declare-fun e!1506492 () Option!5439)

(assert (=> b!2358660 (= e!1506492 (getValueByKey!114 (t!207855 (toList!1423 (abstractMap!96 thiss!47723))) key!7163))))

(declare-fun d!693399 () Bool)

(declare-fun c!374926 () Bool)

(assert (=> d!693399 (= c!374926 (and ((_ is Cons!27882) (toList!1423 (abstractMap!96 thiss!47723))) (= (_1!16351 (h!33283 (toList!1423 (abstractMap!96 thiss!47723)))) key!7163)))))

(declare-fun e!1506491 () Option!5439)

(assert (=> d!693399 (= (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163) e!1506491)))

(declare-fun b!2358659 () Bool)

(assert (=> b!2358659 (= e!1506491 e!1506492)))

(declare-fun c!374927 () Bool)

(assert (=> b!2358659 (= c!374927 (and ((_ is Cons!27882) (toList!1423 (abstractMap!96 thiss!47723))) (not (= (_1!16351 (h!33283 (toList!1423 (abstractMap!96 thiss!47723)))) key!7163))))))

(declare-fun b!2358658 () Bool)

(assert (=> b!2358658 (= e!1506491 (Some!5438 (_2!16351 (h!33283 (toList!1423 (abstractMap!96 thiss!47723))))))))

(declare-fun b!2358661 () Bool)

(assert (=> b!2358661 (= e!1506492 None!5438)))

(assert (= (and d!693399 c!374926) b!2358658))

(assert (= (and d!693399 (not c!374926)) b!2358659))

(assert (= (and b!2358659 c!374927) b!2358660))

(assert (= (and b!2358659 (not c!374927)) b!2358661))

(declare-fun m!2771365 () Bool)

(assert (=> b!2358660 m!2771365))

(assert (=> b!2358640 d!693399))

(declare-fun d!693401 () Bool)

(declare-fun c!374930 () Bool)

(assert (=> d!693401 (= c!374930 ((_ is MutableMapExt!3143) thiss!47723))))

(declare-fun e!1506495 () ListMap!909)

(assert (=> d!693401 (= (abstractMap!96 thiss!47723) e!1506495)))

(declare-fun b!2358666 () Bool)

(declare-fun abstractMap!97 (MutableMap!3144) ListMap!909)

(assert (=> b!2358666 (= e!1506495 (abstractMap!97 thiss!47723))))

(declare-fun b!2358667 () Bool)

(declare-fun abstractMap!98 (MutableMap!3144) ListMap!909)

(assert (=> b!2358667 (= e!1506495 (abstractMap!98 thiss!47723))))

(assert (= (and d!693401 c!374930) b!2358666))

(assert (= (and d!693401 (not c!374930)) b!2358667))

(declare-fun m!2771367 () Bool)

(assert (=> b!2358666 m!2771367))

(declare-fun m!2771369 () Bool)

(assert (=> b!2358667 m!2771369))

(assert (=> b!2358640 d!693401))

(declare-fun d!693403 () Bool)

(declare-fun isEmpty!15849 (Option!5439) Bool)

(assert (=> d!693403 (= (isDefined!4269 lt!863631) (not (isEmpty!15849 lt!863631)))))

(declare-fun bs!460410 () Bool)

(assert (= bs!460410 d!693403))

(declare-fun m!2771371 () Bool)

(assert (=> bs!460410 m!2771371))

(assert (=> b!2358640 d!693403))

(declare-fun d!693405 () Bool)

(declare-fun lt!863635 () Bool)

(declare-fun contains!4849 (ListMap!909 K!4957) Bool)

(assert (=> d!693405 (= lt!863635 (contains!4849 (abstractMap!96 thiss!47723) key!7163))))

(declare-fun e!1506498 () Bool)

(assert (=> d!693405 (= lt!863635 e!1506498)))

(declare-fun c!374933 () Bool)

(assert (=> d!693405 (= c!374933 ((_ is MutableMapExt!3143) thiss!47723))))

(assert (=> d!693405 (valid!2425 thiss!47723)))

(assert (=> d!693405 (= (contains!4848 thiss!47723 key!7163) lt!863635)))

(declare-fun b!2358672 () Bool)

(declare-fun contains!4850 (MutableMap!3144 K!4957) Bool)

(assert (=> b!2358672 (= e!1506498 (contains!4850 thiss!47723 key!7163))))

(declare-fun b!2358673 () Bool)

(declare-fun contains!4851 (MutableMap!3144 K!4957) Bool)

(assert (=> b!2358673 (= e!1506498 (contains!4851 thiss!47723 key!7163))))

(assert (= (and d!693405 c!374933) b!2358672))

(assert (= (and d!693405 (not c!374933)) b!2358673))

(assert (=> d!693405 m!2771343))

(assert (=> d!693405 m!2771343))

(declare-fun m!2771373 () Bool)

(assert (=> d!693405 m!2771373))

(assert (=> d!693405 m!2771349))

(declare-fun m!2771375 () Bool)

(assert (=> b!2358672 m!2771375))

(declare-fun m!2771377 () Bool)

(assert (=> b!2358673 m!2771377))

(assert (=> b!2358645 d!693405))

(declare-fun d!693407 () Bool)

(declare-fun choose!13663 (MutableMap!3144 K!4957) V!5159)

(assert (=> d!693407 (= (choose!13662 thiss!47723 key!7163) (choose!13663 thiss!47723 key!7163))))

(declare-fun bs!460411 () Bool)

(assert (= bs!460411 d!693407))

(declare-fun m!2771379 () Bool)

(assert (=> bs!460411 m!2771379))

(assert (=> b!2358645 d!693407))

(declare-fun d!693409 () Bool)

(declare-fun c!374936 () Bool)

(assert (=> d!693409 (= c!374936 ((_ is MutableMapExt!3143) thiss!47723))))

(declare-fun e!1506501 () Int)

(assert (=> d!693409 (= (defaultEntry!3606 thiss!47723) e!1506501)))

(declare-fun b!2358678 () Bool)

(declare-fun defaultEntry!3607 (MutableMap!3144) Int)

(assert (=> b!2358678 (= e!1506501 (defaultEntry!3607 thiss!47723))))

(declare-fun b!2358679 () Bool)

(declare-fun defaultEntry!3608 (MutableMap!3144) Int)

(assert (=> b!2358679 (= e!1506501 (defaultEntry!3608 thiss!47723))))

(assert (= (and d!693409 c!374936) b!2358678))

(assert (= (and d!693409 (not c!374936)) b!2358679))

(declare-fun m!2771381 () Bool)

(assert (=> b!2358678 m!2771381))

(declare-fun m!2771383 () Bool)

(assert (=> b!2358679 m!2771383))

(assert (=> b!2358647 d!693409))

(declare-fun d!693411 () Bool)

(declare-fun c!374939 () Bool)

(assert (=> d!693411 (= c!374939 ((_ is MutableMapExt!3143) thiss!47723))))

(declare-fun e!1506504 () Bool)

(assert (=> d!693411 (= (valid!2425 thiss!47723) e!1506504)))

(declare-fun b!2358684 () Bool)

(declare-fun valid!2426 (MutableMap!3144) Bool)

(assert (=> b!2358684 (= e!1506504 (valid!2426 thiss!47723))))

(declare-fun b!2358685 () Bool)

(declare-fun valid!2427 (MutableMap!3144) Bool)

(assert (=> b!2358685 (= e!1506504 (valid!2427 thiss!47723))))

(assert (= (and d!693411 c!374939) b!2358684))

(assert (= (and d!693411 (not c!374939)) b!2358685))

(declare-fun m!2771385 () Bool)

(assert (=> b!2358684 m!2771385))

(declare-fun m!2771387 () Bool)

(assert (=> b!2358685 m!2771387))

(assert (=> b!2358642 d!693411))

(declare-fun d!693413 () Bool)

(assert (=> d!693413 (= (array_inv!3629 (_keys!3531 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) (bvsge (size!22082 (_keys!3531 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358641 d!693413))

(declare-fun d!693415 () Bool)

(assert (=> d!693415 (= (array_inv!3630 (_values!3514 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) (bvsge (size!22083 (_values!3514 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))) #b00000000000000000000000000000000))))

(assert (=> b!2358641 d!693415))

(declare-fun d!693417 () Bool)

(assert (=> d!693417 (= (get!8458 lt!863631) (v!30812 lt!863631))))

(assert (=> b!2358646 d!693417))

(declare-fun b!2358690 () Bool)

(declare-fun e!1506507 () Bool)

(declare-fun tp!754191 () Bool)

(assert (=> b!2358690 (= e!1506507 (and tp_is_empty!11175 tp_is_empty!11177 tp!754191))))

(assert (=> b!2358644 (= tp!754182 e!1506507)))

(assert (= (and b!2358644 ((_ is Cons!27882) mapDefault!15096)) b!2358690))

(declare-fun mapIsEmpty!15099 () Bool)

(declare-fun mapRes!15099 () Bool)

(assert (=> mapIsEmpty!15099 mapRes!15099))

(declare-fun tp!754199 () Bool)

(declare-fun e!1506512 () Bool)

(declare-fun b!2358698 () Bool)

(assert (=> b!2358698 (= e!1506512 (and tp_is_empty!11175 tp_is_empty!11177 tp!754199))))

(declare-fun tp!754198 () Bool)

(declare-fun b!2358697 () Bool)

(declare-fun e!1506513 () Bool)

(assert (=> b!2358697 (= e!1506513 (and tp_is_empty!11175 tp_is_empty!11177 tp!754198))))

(declare-fun condMapEmpty!15099 () Bool)

(declare-fun mapDefault!15099 () List!27980)

(assert (=> mapNonEmpty!15096 (= condMapEmpty!15099 (= mapRest!15096 ((as const (Array (_ BitVec 32) List!27980)) mapDefault!15099)))))

(assert (=> mapNonEmpty!15096 (= tp!754187 (and e!1506512 mapRes!15099))))

(declare-fun mapNonEmpty!15099 () Bool)

(declare-fun tp!754200 () Bool)

(assert (=> mapNonEmpty!15099 (= mapRes!15099 (and tp!754200 e!1506513))))

(declare-fun mapRest!15099 () (Array (_ BitVec 32) List!27980))

(declare-fun mapValue!15099 () List!27980)

(declare-fun mapKey!15099 () (_ BitVec 32))

(assert (=> mapNonEmpty!15099 (= mapRest!15096 (store mapRest!15099 mapKey!15099 mapValue!15099))))

(assert (= (and mapNonEmpty!15096 condMapEmpty!15099) mapIsEmpty!15099))

(assert (= (and mapNonEmpty!15096 (not condMapEmpty!15099)) mapNonEmpty!15099))

(assert (= (and mapNonEmpty!15099 ((_ is Cons!27882) mapValue!15099)) b!2358697))

(assert (= (and mapNonEmpty!15096 ((_ is Cons!27882) mapDefault!15099)) b!2358698))

(declare-fun m!2771389 () Bool)

(assert (=> mapNonEmpty!15099 m!2771389))

(declare-fun b!2358699 () Bool)

(declare-fun e!1506514 () Bool)

(declare-fun tp!754201 () Bool)

(assert (=> b!2358699 (= e!1506514 (and tp_is_empty!11175 tp_is_empty!11177 tp!754201))))

(assert (=> mapNonEmpty!15096 (= tp!754185 e!1506514)))

(assert (= (and mapNonEmpty!15096 ((_ is Cons!27882) mapValue!15096)) b!2358699))

(declare-fun tp!754202 () Bool)

(declare-fun b!2358700 () Bool)

(declare-fun e!1506515 () Bool)

(assert (=> b!2358700 (= e!1506515 (and tp_is_empty!11175 tp_is_empty!11177 tp!754202))))

(assert (=> b!2358641 (= tp!754188 e!1506515)))

(assert (= (and b!2358641 ((_ is Cons!27882) (zeroValue!3492 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723))))))) b!2358700))

(declare-fun e!1506516 () Bool)

(declare-fun tp!754203 () Bool)

(declare-fun b!2358701 () Bool)

(assert (=> b!2358701 (= e!1506516 (and tp_is_empty!11175 tp_is_empty!11177 tp!754203))))

(assert (=> b!2358641 (= tp!754184 e!1506516)))

(assert (= (and b!2358641 ((_ is Cons!27882) (minValue!3492 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723))))))) b!2358701))

(declare-fun b_lambda!73743 () Bool)

(assert (= b_lambda!73741 (or (and b!2358638 b_free!70391 (= (defaultValue!3306 thiss!47723) (defaultEntry!3606 thiss!47723))) b_lambda!73743)))

(check-sat (not b_next!71093) (not b!2358678) (not b!2358679) (not b!2358698) tp_is_empty!11175 (not b!2358685) (not b_lambda!73743) (not b!2358699) (not d!693403) (not b!2358667) (not b!2358660) (not b!2358673) (not b!2358700) (not b!2358672) (not b_next!71095) b_and!185319 (not b!2358666) (not b!2358684) b_and!185323 (not d!693407) tp_is_empty!11177 (not d!693405) (not mapNonEmpty!15099) (not b!2358701) (not b!2358697) (not b!2358690))
(check-sat b_and!185319 b_and!185323 (not b_next!71095) (not b_next!71093))
(get-model)

(declare-fun b!2358704 () Bool)

(declare-fun e!1506518 () Option!5439)

(assert (=> b!2358704 (= e!1506518 (getValueByKey!114 (t!207855 (t!207855 (toList!1423 (abstractMap!96 thiss!47723)))) key!7163))))

(declare-fun d!693419 () Bool)

(declare-fun c!374940 () Bool)

(assert (=> d!693419 (= c!374940 (and ((_ is Cons!27882) (t!207855 (toList!1423 (abstractMap!96 thiss!47723)))) (= (_1!16351 (h!33283 (t!207855 (toList!1423 (abstractMap!96 thiss!47723))))) key!7163)))))

(declare-fun e!1506517 () Option!5439)

(assert (=> d!693419 (= (getValueByKey!114 (t!207855 (toList!1423 (abstractMap!96 thiss!47723))) key!7163) e!1506517)))

(declare-fun b!2358703 () Bool)

(assert (=> b!2358703 (= e!1506517 e!1506518)))

(declare-fun c!374941 () Bool)

(assert (=> b!2358703 (= c!374941 (and ((_ is Cons!27882) (t!207855 (toList!1423 (abstractMap!96 thiss!47723)))) (not (= (_1!16351 (h!33283 (t!207855 (toList!1423 (abstractMap!96 thiss!47723))))) key!7163))))))

(declare-fun b!2358702 () Bool)

(assert (=> b!2358702 (= e!1506517 (Some!5438 (_2!16351 (h!33283 (t!207855 (toList!1423 (abstractMap!96 thiss!47723)))))))))

(declare-fun b!2358705 () Bool)

(assert (=> b!2358705 (= e!1506518 None!5438)))

(assert (= (and d!693419 c!374940) b!2358702))

(assert (= (and d!693419 (not c!374940)) b!2358703))

(assert (= (and b!2358703 c!374941) b!2358704))

(assert (= (and b!2358703 (not c!374941)) b!2358705))

(declare-fun m!2771391 () Bool)

(assert (=> b!2358704 m!2771391))

(assert (=> b!2358660 d!693419))

(declare-fun d!693421 () Bool)

(assert (=> d!693421 (= (defaultEntry!3608 thiss!47723) (defaultValue!3306 thiss!47723))))

(assert (=> b!2358679 d!693421))

(declare-fun lambda!86723 () Int)

(declare-fun b!2358728 () Bool)

(declare-datatypes ((Unit!40788 0))(
  ( (Unit!40789) )
))
(declare-fun e!1506537 () Unit!40788)

(declare-fun lt!863687 () (_ BitVec 64))

(declare-datatypes ((tuple2!27622 0))(
  ( (tuple2!27623 (_1!16352 (_ BitVec 64)) (_2!16352 List!27980)) )
))
(declare-datatypes ((List!27981 0))(
  ( (Nil!27883) (Cons!27883 (h!33284 tuple2!27622) (t!207856 List!27981)) )
))
(declare-fun forallContained!799 (List!27981 Int tuple2!27622) Unit!40788)

(declare-datatypes ((ListLongMap!375 0))(
  ( (ListLongMap!376 (toList!1424 List!27981)) )
))
(declare-fun map!5770 (MutLongMap!3234) ListLongMap!375)

(declare-fun apply!6704 (MutLongMap!3234 (_ BitVec 64)) List!27980)

(assert (=> b!2358728 (= e!1506537 (forallContained!799 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))) lambda!86723 (tuple2!27623 lt!863687 (apply!6704 (v!30811 (underlying!6674 thiss!47723)) lt!863687))))))

(declare-fun c!374950 () Bool)

(declare-fun contains!4852 (List!27981 tuple2!27622) Bool)

(assert (=> b!2358728 (= c!374950 (not (contains!4852 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))) (tuple2!27623 lt!863687 (apply!6704 (v!30811 (underlying!6674 thiss!47723)) lt!863687)))))))

(declare-fun lt!863686 () Unit!40788)

(declare-fun e!1506539 () Unit!40788)

(assert (=> b!2358728 (= lt!863686 e!1506539)))

(declare-fun call!143592 () (_ BitVec 64))

(declare-fun call!143596 () ListLongMap!375)

(declare-fun c!374951 () Bool)

(declare-fun bm!143587 () Bool)

(declare-fun lt!863678 () ListLongMap!375)

(declare-fun call!143593 () List!27980)

(declare-fun apply!6705 (ListLongMap!375 (_ BitVec 64)) List!27980)

(assert (=> bm!143587 (= call!143593 (apply!6705 (ite c!374951 lt!863678 call!143596) call!143592))))

(declare-fun b!2358729 () Bool)

(declare-fun e!1506538 () Bool)

(declare-fun call!143597 () Bool)

(assert (=> b!2358729 (= e!1506538 call!143597)))

(declare-fun b!2358730 () Bool)

(declare-fun e!1506534 () Unit!40788)

(declare-fun e!1506535 () Unit!40788)

(assert (=> b!2358730 (= e!1506534 e!1506535)))

(declare-fun res!1001094 () Bool)

(declare-fun call!143594 () Bool)

(assert (=> b!2358730 (= res!1001094 call!143594)))

(declare-fun e!1506536 () Bool)

(assert (=> b!2358730 (=> (not res!1001094) (not e!1506536))))

(declare-fun c!374953 () Bool)

(assert (=> b!2358730 (= c!374953 e!1506536)))

(declare-fun bm!143588 () Bool)

(declare-fun contains!4853 (ListLongMap!375 (_ BitVec 64)) Bool)

(assert (=> bm!143588 (= call!143594 (contains!4853 (ite c!374951 lt!863678 call!143596) call!143592))))

(declare-fun bm!143589 () Bool)

(assert (=> bm!143589 (= call!143596 (map!5770 (v!30811 (underlying!6674 thiss!47723))))))

(declare-fun b!2358731 () Bool)

(assert (=> b!2358731 false))

(declare-fun lt!863677 () Unit!40788)

(declare-fun lt!863679 () Unit!40788)

(assert (=> b!2358731 (= lt!863677 lt!863679)))

(declare-fun lt!863693 () List!27981)

(declare-fun lt!863692 () List!27980)

(assert (=> b!2358731 (contains!4852 lt!863693 (tuple2!27623 lt!863687 lt!863692))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!53 (List!27981 (_ BitVec 64) List!27980) Unit!40788)

(assert (=> b!2358731 (= lt!863679 (lemmaGetValueByKeyImpliesContainsTuple!53 lt!863693 lt!863687 lt!863692))))

(assert (=> b!2358731 (= lt!863692 (apply!6704 (v!30811 (underlying!6674 thiss!47723)) lt!863687))))

(assert (=> b!2358731 (= lt!863693 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))))))

(declare-fun lt!863683 () Unit!40788)

(declare-fun lt!863681 () Unit!40788)

(assert (=> b!2358731 (= lt!863683 lt!863681)))

(declare-fun lt!863685 () List!27981)

(declare-datatypes ((Option!5440 0))(
  ( (None!5439) (Some!5439 (v!30813 List!27980)) )
))
(declare-fun isDefined!4270 (Option!5440) Bool)

(declare-fun getValueByKey!115 (List!27981 (_ BitVec 64)) Option!5440)

(assert (=> b!2358731 (isDefined!4270 (getValueByKey!115 lt!863685 lt!863687))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!71 (List!27981 (_ BitVec 64)) Unit!40788)

(assert (=> b!2358731 (= lt!863681 (lemmaContainsKeyImpliesGetValueByKeyDefined!71 lt!863685 lt!863687))))

(assert (=> b!2358731 (= lt!863685 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))))))

(declare-fun lt!863682 () Unit!40788)

(declare-fun lt!863688 () Unit!40788)

(assert (=> b!2358731 (= lt!863682 lt!863688)))

(declare-fun lt!863684 () List!27981)

(declare-fun containsKey!103 (List!27981 (_ BitVec 64)) Bool)

(assert (=> b!2358731 (containsKey!103 lt!863684 lt!863687)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!53 (List!27981 (_ BitVec 64)) Unit!40788)

(assert (=> b!2358731 (= lt!863688 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!53 lt!863684 lt!863687))))

(assert (=> b!2358731 (= lt!863684 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))))))

(declare-fun Unit!40790 () Unit!40788)

(assert (=> b!2358731 (= e!1506539 Unit!40790)))

(declare-fun b!2358732 () Bool)

(declare-fun Unit!40791 () Unit!40788)

(assert (=> b!2358732 (= e!1506537 Unit!40791)))

(declare-fun b!2358733 () Bool)

(declare-fun Unit!40792 () Unit!40788)

(assert (=> b!2358733 (= e!1506535 Unit!40792)))

(declare-fun b!2358734 () Bool)

(declare-fun e!1506533 () Bool)

(declare-datatypes ((Option!5441 0))(
  ( (None!5440) (Some!5440 (v!30814 tuple2!27620)) )
))
(declare-fun isDefined!4271 (Option!5441) Bool)

(declare-fun getPair!52 (List!27980 K!4957) Option!5441)

(assert (=> b!2358734 (= e!1506533 (isDefined!4271 (getPair!52 (apply!6704 (v!30811 (underlying!6674 thiss!47723)) lt!863687) key!7163)))))

(declare-fun b!2358735 () Bool)

(assert (=> b!2358735 false))

(declare-fun lt!863680 () Unit!40788)

(declare-fun lt!863691 () Unit!40788)

(assert (=> b!2358735 (= lt!863680 lt!863691)))

(declare-fun lt!863694 () ListLongMap!375)

(declare-fun extractMap!132 (List!27981) ListMap!909)

(assert (=> b!2358735 (contains!4849 (extractMap!132 (toList!1424 lt!863694)) key!7163)))

(declare-fun lemmaInLongMapThenInGenericMap!52 (ListLongMap!375 K!4957 Hashable!3144) Unit!40788)

(assert (=> b!2358735 (= lt!863691 (lemmaInLongMapThenInGenericMap!52 lt!863694 key!7163 (hashF!5073 thiss!47723)))))

(assert (=> b!2358735 (= lt!863694 call!143596)))

(declare-fun Unit!40793 () Unit!40788)

(assert (=> b!2358735 (= e!1506535 Unit!40793)))

(declare-fun b!2358736 () Bool)

(declare-fun Unit!40794 () Unit!40788)

(assert (=> b!2358736 (= e!1506539 Unit!40794)))

(declare-fun b!2358737 () Bool)

(declare-fun lt!863676 () Unit!40788)

(assert (=> b!2358737 (= e!1506534 lt!863676)))

(assert (=> b!2358737 (= lt!863678 call!143596)))

(declare-fun lemmaInGenericMapThenInLongMap!52 (ListLongMap!375 K!4957 Hashable!3144) Unit!40788)

(assert (=> b!2358737 (= lt!863676 (lemmaInGenericMapThenInLongMap!52 lt!863678 key!7163 (hashF!5073 thiss!47723)))))

(declare-fun res!1001093 () Bool)

(assert (=> b!2358737 (= res!1001093 call!143594)))

(assert (=> b!2358737 (=> (not res!1001093) (not e!1506538))))

(assert (=> b!2358737 e!1506538))

(declare-fun bm!143590 () Bool)

(declare-fun hash!600 (Hashable!3144 K!4957) (_ BitVec 64))

(assert (=> bm!143590 (= call!143592 (hash!600 (hashF!5073 thiss!47723) key!7163))))

(declare-fun bm!143591 () Bool)

(declare-fun call!143595 () Option!5441)

(assert (=> bm!143591 (= call!143597 (isDefined!4271 call!143595))))

(declare-fun b!2358738 () Bool)

(assert (=> b!2358738 (= e!1506536 call!143597)))

(declare-fun d!693423 () Bool)

(declare-fun lt!863689 () Bool)

(declare-fun map!5771 (MutableMap!3144) ListMap!909)

(assert (=> d!693423 (= lt!863689 (contains!4849 (map!5771 thiss!47723) key!7163))))

(assert (=> d!693423 (= lt!863689 e!1506533)))

(declare-fun res!1001092 () Bool)

(assert (=> d!693423 (=> (not res!1001092) (not e!1506533))))

(declare-fun contains!4854 (MutLongMap!3234 (_ BitVec 64)) Bool)

(assert (=> d!693423 (= res!1001092 (contains!4854 (v!30811 (underlying!6674 thiss!47723)) lt!863687))))

(declare-fun lt!863695 () Unit!40788)

(assert (=> d!693423 (= lt!863695 e!1506534)))

(assert (=> d!693423 (= c!374951 (contains!4849 (extractMap!132 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723))))) key!7163))))

(declare-fun lt!863690 () Unit!40788)

(assert (=> d!693423 (= lt!863690 e!1506537)))

(declare-fun c!374952 () Bool)

(assert (=> d!693423 (= c!374952 (contains!4854 (v!30811 (underlying!6674 thiss!47723)) lt!863687))))

(assert (=> d!693423 (= lt!863687 (hash!600 (hashF!5073 thiss!47723) key!7163))))

(assert (=> d!693423 (valid!2427 thiss!47723)))

(assert (=> d!693423 (= (contains!4851 thiss!47723 key!7163) lt!863689)))

(declare-fun bm!143592 () Bool)

(assert (=> bm!143592 (= call!143595 (getPair!52 call!143593 key!7163))))

(assert (= (and d!693423 c!374952) b!2358728))

(assert (= (and d!693423 (not c!374952)) b!2358732))

(assert (= (and b!2358728 c!374950) b!2358731))

(assert (= (and b!2358728 (not c!374950)) b!2358736))

(assert (= (and d!693423 c!374951) b!2358737))

(assert (= (and d!693423 (not c!374951)) b!2358730))

(assert (= (and b!2358737 res!1001093) b!2358729))

(assert (= (and b!2358730 res!1001094) b!2358738))

(assert (= (and b!2358730 c!374953) b!2358735))

(assert (= (and b!2358730 (not c!374953)) b!2358733))

(assert (= (or b!2358737 b!2358730 b!2358738 b!2358735) bm!143589))

(assert (= (or b!2358737 b!2358729 b!2358730 b!2358738) bm!143590))

(assert (= (or b!2358737 b!2358730) bm!143588))

(assert (= (or b!2358729 b!2358738) bm!143587))

(assert (= (or b!2358729 b!2358738) bm!143592))

(assert (= (or b!2358729 b!2358738) bm!143591))

(assert (= (and d!693423 res!1001092) b!2358734))

(declare-fun m!2771393 () Bool)

(assert (=> b!2358731 m!2771393))

(declare-fun m!2771395 () Bool)

(assert (=> b!2358731 m!2771395))

(declare-fun m!2771397 () Bool)

(assert (=> b!2358731 m!2771397))

(declare-fun m!2771399 () Bool)

(assert (=> b!2358731 m!2771399))

(declare-fun m!2771401 () Bool)

(assert (=> b!2358731 m!2771401))

(declare-fun m!2771403 () Bool)

(assert (=> b!2358731 m!2771403))

(declare-fun m!2771405 () Bool)

(assert (=> b!2358731 m!2771405))

(declare-fun m!2771407 () Bool)

(assert (=> b!2358731 m!2771407))

(assert (=> b!2358731 m!2771403))

(declare-fun m!2771409 () Bool)

(assert (=> b!2358731 m!2771409))

(declare-fun m!2771411 () Bool)

(assert (=> d!693423 m!2771411))

(declare-fun m!2771413 () Bool)

(assert (=> d!693423 m!2771413))

(assert (=> d!693423 m!2771401))

(declare-fun m!2771415 () Bool)

(assert (=> d!693423 m!2771415))

(assert (=> d!693423 m!2771413))

(declare-fun m!2771417 () Bool)

(assert (=> d!693423 m!2771417))

(assert (=> d!693423 m!2771387))

(declare-fun m!2771419 () Bool)

(assert (=> d!693423 m!2771419))

(assert (=> d!693423 m!2771411))

(declare-fun m!2771421 () Bool)

(assert (=> d!693423 m!2771421))

(declare-fun m!2771423 () Bool)

(assert (=> bm!143588 m!2771423))

(declare-fun m!2771425 () Bool)

(assert (=> bm!143592 m!2771425))

(assert (=> bm!143590 m!2771419))

(assert (=> b!2358728 m!2771401))

(assert (=> b!2358728 m!2771397))

(declare-fun m!2771427 () Bool)

(assert (=> b!2358728 m!2771427))

(declare-fun m!2771429 () Bool)

(assert (=> b!2358728 m!2771429))

(declare-fun m!2771431 () Bool)

(assert (=> bm!143591 m!2771431))

(declare-fun m!2771433 () Bool)

(assert (=> b!2358735 m!2771433))

(assert (=> b!2358735 m!2771433))

(declare-fun m!2771435 () Bool)

(assert (=> b!2358735 m!2771435))

(declare-fun m!2771437 () Bool)

(assert (=> b!2358735 m!2771437))

(declare-fun m!2771439 () Bool)

(assert (=> b!2358737 m!2771439))

(declare-fun m!2771441 () Bool)

(assert (=> bm!143587 m!2771441))

(assert (=> b!2358734 m!2771397))

(assert (=> b!2358734 m!2771397))

(declare-fun m!2771443 () Bool)

(assert (=> b!2358734 m!2771443))

(assert (=> b!2358734 m!2771443))

(declare-fun m!2771445 () Bool)

(assert (=> b!2358734 m!2771445))

(assert (=> bm!143589 m!2771401))

(assert (=> b!2358673 d!693423))

(declare-fun bs!460412 () Bool)

(declare-fun b!2358743 () Bool)

(assert (= bs!460412 (and b!2358743 b!2358728)))

(declare-fun lambda!86726 () Int)

(assert (=> bs!460412 (= lambda!86726 lambda!86723)))

(declare-fun d!693425 () Bool)

(declare-fun res!1001099 () Bool)

(declare-fun e!1506542 () Bool)

(assert (=> d!693425 (=> (not res!1001099) (not e!1506542))))

(declare-fun valid!2428 (MutLongMap!3234) Bool)

(assert (=> d!693425 (= res!1001099 (valid!2428 (v!30811 (underlying!6674 thiss!47723))))))

(assert (=> d!693425 (= (valid!2427 thiss!47723) e!1506542)))

(declare-fun res!1001100 () Bool)

(assert (=> b!2358743 (=> (not res!1001100) (not e!1506542))))

(declare-fun forall!5529 (List!27981 Int) Bool)

(assert (=> b!2358743 (= res!1001100 (forall!5529 (toList!1424 (map!5770 (v!30811 (underlying!6674 thiss!47723)))) lambda!86726))))

(declare-fun b!2358744 () Bool)

(declare-fun allKeysSameHashInMap!121 (ListLongMap!375 Hashable!3144) Bool)

(assert (=> b!2358744 (= e!1506542 (allKeysSameHashInMap!121 (map!5770 (v!30811 (underlying!6674 thiss!47723))) (hashF!5073 thiss!47723)))))

(assert (= (and d!693425 res!1001099) b!2358743))

(assert (= (and b!2358743 res!1001100) b!2358744))

(declare-fun m!2771447 () Bool)

(assert (=> d!693425 m!2771447))

(assert (=> b!2358743 m!2771401))

(declare-fun m!2771449 () Bool)

(assert (=> b!2358743 m!2771449))

(assert (=> b!2358744 m!2771401))

(assert (=> b!2358744 m!2771401))

(declare-fun m!2771451 () Bool)

(assert (=> b!2358744 m!2771451))

(assert (=> b!2358685 d!693425))

(declare-fun d!693427 () Bool)

(declare-fun choose!13664 (MutableMap!3144) Int)

(assert (=> d!693427 (= (defaultEntry!3607 thiss!47723) (choose!13664 thiss!47723))))

(declare-fun bs!460413 () Bool)

(assert (= bs!460413 d!693427))

(declare-fun m!2771453 () Bool)

(assert (=> bs!460413 m!2771453))

(assert (=> b!2358678 d!693427))

(declare-fun d!693429 () Bool)

(assert (=> d!693429 (= (abstractMap!98 thiss!47723) (map!5771 thiss!47723))))

(declare-fun bs!460414 () Bool)

(assert (= bs!460414 d!693429))

(assert (=> bs!460414 m!2771413))

(assert (=> b!2358667 d!693429))

(declare-fun d!693431 () Bool)

(declare-fun lt!863698 () Bool)

(assert (=> d!693431 (= lt!863698 (contains!4849 (abstractMap!96 thiss!47723) key!7163))))

(declare-fun choose!13665 (MutableMap!3144 K!4957) Bool)

(assert (=> d!693431 (= lt!863698 (choose!13665 thiss!47723 key!7163))))

(assert (=> d!693431 (valid!2425 thiss!47723)))

(assert (=> d!693431 (= (contains!4850 thiss!47723 key!7163) lt!863698)))

(declare-fun bs!460415 () Bool)

(assert (= bs!460415 d!693431))

(assert (=> bs!460415 m!2771343))

(assert (=> bs!460415 m!2771343))

(assert (=> bs!460415 m!2771373))

(declare-fun m!2771455 () Bool)

(assert (=> bs!460415 m!2771455))

(assert (=> bs!460415 m!2771349))

(assert (=> b!2358672 d!693431))

(declare-fun d!693433 () Bool)

(declare-fun choose!13666 (MutableMap!3144) Bool)

(assert (=> d!693433 (= (valid!2426 thiss!47723) (choose!13666 thiss!47723))))

(declare-fun bs!460416 () Bool)

(assert (= bs!460416 d!693433))

(declare-fun m!2771457 () Bool)

(assert (=> bs!460416 m!2771457))

(assert (=> b!2358684 d!693433))

(declare-fun b!2358763 () Bool)

(declare-fun e!1506558 () Unit!40788)

(declare-fun Unit!40795 () Unit!40788)

(assert (=> b!2358763 (= e!1506558 Unit!40795)))

(declare-fun b!2358764 () Bool)

(declare-datatypes ((List!27982 0))(
  ( (Nil!27884) (Cons!27884 (h!33285 K!4957) (t!207857 List!27982)) )
))
(declare-fun e!1506560 () List!27982)

(declare-fun getKeysList!12 (List!27980) List!27982)

(assert (=> b!2358764 (= e!1506560 (getKeysList!12 (toList!1423 (abstractMap!96 thiss!47723))))))

(declare-fun b!2358765 () Bool)

(declare-fun keys!8752 (ListMap!909) List!27982)

(assert (=> b!2358765 (= e!1506560 (keys!8752 (abstractMap!96 thiss!47723)))))

(declare-fun bm!143595 () Bool)

(declare-fun call!143600 () Bool)

(declare-fun contains!4855 (List!27982 K!4957) Bool)

(assert (=> bm!143595 (= call!143600 (contains!4855 e!1506560 key!7163))))

(declare-fun c!374962 () Bool)

(declare-fun c!374960 () Bool)

(assert (=> bm!143595 (= c!374962 c!374960)))

(declare-fun b!2358767 () Bool)

(declare-fun e!1506557 () Unit!40788)

(assert (=> b!2358767 (= e!1506557 e!1506558)))

(declare-fun c!374961 () Bool)

(assert (=> b!2358767 (= c!374961 call!143600)))

(declare-fun b!2358768 () Bool)

(declare-fun e!1506559 () Bool)

(assert (=> b!2358768 (= e!1506559 (not (contains!4855 (keys!8752 (abstractMap!96 thiss!47723)) key!7163)))))

(declare-fun b!2358769 () Bool)

(declare-fun lt!863719 () Unit!40788)

(assert (=> b!2358769 (= e!1506557 lt!863719)))

(declare-fun lt!863720 () Unit!40788)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!72 (List!27980 K!4957) Unit!40788)

(assert (=> b!2358769 (= lt!863720 (lemmaContainsKeyImpliesGetValueByKeyDefined!72 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(assert (=> b!2358769 (isDefined!4269 (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(declare-fun lt!863716 () Unit!40788)

(assert (=> b!2358769 (= lt!863716 lt!863720)))

(declare-fun lemmaInListThenGetKeysListContains!9 (List!27980 K!4957) Unit!40788)

(assert (=> b!2358769 (= lt!863719 (lemmaInListThenGetKeysListContains!9 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(assert (=> b!2358769 call!143600))

(declare-fun b!2358770 () Bool)

(declare-fun e!1506555 () Bool)

(declare-fun e!1506556 () Bool)

(assert (=> b!2358770 (= e!1506555 e!1506556)))

(declare-fun res!1001107 () Bool)

(assert (=> b!2358770 (=> (not res!1001107) (not e!1506556))))

(assert (=> b!2358770 (= res!1001107 (isDefined!4269 (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163)))))

(declare-fun b!2358771 () Bool)

(assert (=> b!2358771 false))

(declare-fun lt!863721 () Unit!40788)

(declare-fun lt!863717 () Unit!40788)

(assert (=> b!2358771 (= lt!863721 lt!863717)))

(declare-fun containsKey!104 (List!27980 K!4957) Bool)

(assert (=> b!2358771 (containsKey!104 (toList!1423 (abstractMap!96 thiss!47723)) key!7163)))

(declare-fun lemmaInGetKeysListThenContainsKey!9 (List!27980 K!4957) Unit!40788)

(assert (=> b!2358771 (= lt!863717 (lemmaInGetKeysListThenContainsKey!9 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(declare-fun Unit!40796 () Unit!40788)

(assert (=> b!2358771 (= e!1506558 Unit!40796)))

(declare-fun d!693435 () Bool)

(assert (=> d!693435 e!1506555))

(declare-fun res!1001108 () Bool)

(assert (=> d!693435 (=> res!1001108 e!1506555)))

(assert (=> d!693435 (= res!1001108 e!1506559)))

(declare-fun res!1001109 () Bool)

(assert (=> d!693435 (=> (not res!1001109) (not e!1506559))))

(declare-fun lt!863718 () Bool)

(assert (=> d!693435 (= res!1001109 (not lt!863718))))

(declare-fun lt!863715 () Bool)

(assert (=> d!693435 (= lt!863718 lt!863715)))

(declare-fun lt!863722 () Unit!40788)

(assert (=> d!693435 (= lt!863722 e!1506557)))

(assert (=> d!693435 (= c!374960 lt!863715)))

(assert (=> d!693435 (= lt!863715 (containsKey!104 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))

(assert (=> d!693435 (= (contains!4849 (abstractMap!96 thiss!47723) key!7163) lt!863718)))

(declare-fun b!2358766 () Bool)

(assert (=> b!2358766 (= e!1506556 (contains!4855 (keys!8752 (abstractMap!96 thiss!47723)) key!7163))))

(assert (= (and d!693435 c!374960) b!2358769))

(assert (= (and d!693435 (not c!374960)) b!2358767))

(assert (= (and b!2358767 c!374961) b!2358771))

(assert (= (and b!2358767 (not c!374961)) b!2358763))

(assert (= (or b!2358769 b!2358767) bm!143595))

(assert (= (and bm!143595 c!374962) b!2358764))

(assert (= (and bm!143595 (not c!374962)) b!2358765))

(assert (= (and d!693435 res!1001109) b!2358768))

(assert (= (and d!693435 (not res!1001108)) b!2358770))

(assert (= (and b!2358770 res!1001107) b!2358766))

(assert (=> b!2358766 m!2771343))

(declare-fun m!2771459 () Bool)

(assert (=> b!2358766 m!2771459))

(assert (=> b!2358766 m!2771459))

(declare-fun m!2771461 () Bool)

(assert (=> b!2358766 m!2771461))

(assert (=> b!2358765 m!2771343))

(assert (=> b!2358765 m!2771459))

(declare-fun m!2771463 () Bool)

(assert (=> b!2358764 m!2771463))

(declare-fun m!2771465 () Bool)

(assert (=> b!2358771 m!2771465))

(declare-fun m!2771467 () Bool)

(assert (=> b!2358771 m!2771467))

(declare-fun m!2771469 () Bool)

(assert (=> bm!143595 m!2771469))

(assert (=> d!693435 m!2771465))

(assert (=> b!2358770 m!2771345))

(assert (=> b!2358770 m!2771345))

(declare-fun m!2771471 () Bool)

(assert (=> b!2358770 m!2771471))

(assert (=> b!2358768 m!2771343))

(assert (=> b!2358768 m!2771459))

(assert (=> b!2358768 m!2771459))

(assert (=> b!2358768 m!2771461))

(declare-fun m!2771473 () Bool)

(assert (=> b!2358769 m!2771473))

(assert (=> b!2358769 m!2771345))

(assert (=> b!2358769 m!2771345))

(assert (=> b!2358769 m!2771471))

(declare-fun m!2771475 () Bool)

(assert (=> b!2358769 m!2771475))

(assert (=> d!693405 d!693435))

(assert (=> d!693405 d!693401))

(assert (=> d!693405 d!693411))

(declare-fun d!693437 () Bool)

(assert (=> d!693437 (= (isEmpty!15849 lt!863631) (not ((_ is Some!5438) lt!863631)))))

(assert (=> d!693403 d!693437))

(declare-fun d!693439 () Bool)

(declare-fun choose!13667 (MutableMap!3144) ListMap!909)

(assert (=> d!693439 (= (abstractMap!97 thiss!47723) (choose!13667 thiss!47723))))

(declare-fun bs!460417 () Bool)

(assert (= bs!460417 d!693439))

(declare-fun m!2771477 () Bool)

(assert (=> bs!460417 m!2771477))

(assert (=> b!2358666 d!693439))

(declare-fun b!2358781 () Bool)

(declare-fun e!1506568 () Bool)

(declare-fun e!1506569 () Bool)

(assert (=> b!2358781 (= e!1506568 e!1506569)))

(declare-fun res!1001118 () Bool)

(assert (=> b!2358781 (= res!1001118 (isDefined!4269 (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163)))))

(assert (=> b!2358781 (=> (not res!1001118) (not e!1506569))))

(declare-fun d!693441 () Bool)

(declare-fun e!1506567 () Bool)

(assert (=> d!693441 e!1506567))

(declare-fun res!1001117 () Bool)

(assert (=> d!693441 (=> (not res!1001117) (not e!1506567))))

(assert (=> d!693441 (= res!1001117 (valid!2425 thiss!47723))))

(assert (=> d!693441 tp_is_empty!11177))

(declare-fun res!1001116 () V!5159)

(assert (=> d!693441 (= (choose!13663 thiss!47723 key!7163) res!1001116)))

(declare-fun b!2358782 () Bool)

(assert (=> b!2358782 (= e!1506568 (= res!1001116 (dynLambda!12008 (defaultEntry!3606 thiss!47723) key!7163)))))

(declare-fun b!2358783 () Bool)

(assert (=> b!2358783 (= e!1506569 (= res!1001116 (get!8458 (getValueByKey!114 (toList!1423 (abstractMap!96 thiss!47723)) key!7163))))))

(declare-fun b!2358780 () Bool)

(assert (=> b!2358780 (= e!1506567 e!1506568)))

(declare-fun c!374965 () Bool)

(assert (=> b!2358780 (= c!374965 (contains!4848 thiss!47723 key!7163))))

(assert (= (and d!693441 res!1001117) b!2358780))

(assert (= (and b!2358780 c!374965) b!2358781))

(assert (= (and b!2358780 (not c!374965)) b!2358782))

(assert (= (and b!2358781 res!1001118) b!2358783))

(declare-fun b_lambda!73745 () Bool)

(assert (=> (not b_lambda!73745) (not b!2358782)))

(assert (=> b!2358782 t!207854))

(declare-fun b_and!185325 () Bool)

(assert (= b_and!185323 (and (=> t!207854 result!169618) b_and!185325)))

(assert (=> b!2358782 m!2771355))

(assert (=> b!2358782 m!2771357))

(assert (=> b!2358781 m!2771343))

(assert (=> b!2358781 m!2771345))

(assert (=> b!2358781 m!2771345))

(assert (=> b!2358781 m!2771471))

(assert (=> d!693441 m!2771349))

(assert (=> b!2358780 m!2771351))

(assert (=> b!2358783 m!2771343))

(assert (=> b!2358783 m!2771345))

(assert (=> b!2358783 m!2771345))

(declare-fun m!2771479 () Bool)

(assert (=> b!2358783 m!2771479))

(assert (=> d!693407 d!693441))

(declare-fun tp!754204 () Bool)

(declare-fun e!1506570 () Bool)

(declare-fun b!2358784 () Bool)

(assert (=> b!2358784 (= e!1506570 (and tp_is_empty!11175 tp_is_empty!11177 tp!754204))))

(assert (=> b!2358701 (= tp!754203 e!1506570)))

(assert (= (and b!2358701 ((_ is Cons!27882) (t!207855 (minValue!3492 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))))) b!2358784))

(declare-fun tp!754205 () Bool)

(declare-fun b!2358785 () Bool)

(declare-fun e!1506571 () Bool)

(assert (=> b!2358785 (= e!1506571 (and tp_is_empty!11175 tp_is_empty!11177 tp!754205))))

(assert (=> b!2358698 (= tp!754199 e!1506571)))

(assert (= (and b!2358698 ((_ is Cons!27882) (t!207855 mapDefault!15099))) b!2358785))

(declare-fun b!2358786 () Bool)

(declare-fun tp!754206 () Bool)

(declare-fun e!1506572 () Bool)

(assert (=> b!2358786 (= e!1506572 (and tp_is_empty!11175 tp_is_empty!11177 tp!754206))))

(assert (=> b!2358699 (= tp!754201 e!1506572)))

(assert (= (and b!2358699 ((_ is Cons!27882) (t!207855 mapValue!15096))) b!2358786))

(declare-fun b!2358787 () Bool)

(declare-fun e!1506573 () Bool)

(declare-fun tp!754207 () Bool)

(assert (=> b!2358787 (= e!1506573 (and tp_is_empty!11175 tp_is_empty!11177 tp!754207))))

(assert (=> b!2358697 (= tp!754198 e!1506573)))

(assert (= (and b!2358697 ((_ is Cons!27882) (t!207855 mapValue!15099))) b!2358787))

(declare-fun mapIsEmpty!15100 () Bool)

(declare-fun mapRes!15100 () Bool)

(assert (=> mapIsEmpty!15100 mapRes!15100))

(declare-fun tp!754209 () Bool)

(declare-fun e!1506574 () Bool)

(declare-fun b!2358789 () Bool)

(assert (=> b!2358789 (= e!1506574 (and tp_is_empty!11175 tp_is_empty!11177 tp!754209))))

(declare-fun b!2358788 () Bool)

(declare-fun tp!754208 () Bool)

(declare-fun e!1506575 () Bool)

(assert (=> b!2358788 (= e!1506575 (and tp_is_empty!11175 tp_is_empty!11177 tp!754208))))

(declare-fun condMapEmpty!15100 () Bool)

(declare-fun mapDefault!15100 () List!27980)

(assert (=> mapNonEmpty!15099 (= condMapEmpty!15100 (= mapRest!15099 ((as const (Array (_ BitVec 32) List!27980)) mapDefault!15100)))))

(assert (=> mapNonEmpty!15099 (= tp!754200 (and e!1506574 mapRes!15100))))

(declare-fun mapNonEmpty!15100 () Bool)

(declare-fun tp!754210 () Bool)

(assert (=> mapNonEmpty!15100 (= mapRes!15100 (and tp!754210 e!1506575))))

(declare-fun mapKey!15100 () (_ BitVec 32))

(declare-fun mapValue!15100 () List!27980)

(declare-fun mapRest!15100 () (Array (_ BitVec 32) List!27980))

(assert (=> mapNonEmpty!15100 (= mapRest!15099 (store mapRest!15100 mapKey!15100 mapValue!15100))))

(assert (= (and mapNonEmpty!15099 condMapEmpty!15100) mapIsEmpty!15100))

(assert (= (and mapNonEmpty!15099 (not condMapEmpty!15100)) mapNonEmpty!15100))

(assert (= (and mapNonEmpty!15100 ((_ is Cons!27882) mapValue!15100)) b!2358788))

(assert (= (and mapNonEmpty!15099 ((_ is Cons!27882) mapDefault!15100)) b!2358789))

(declare-fun m!2771481 () Bool)

(assert (=> mapNonEmpty!15100 m!2771481))

(declare-fun tp!754211 () Bool)

(declare-fun b!2358790 () Bool)

(declare-fun e!1506576 () Bool)

(assert (=> b!2358790 (= e!1506576 (and tp_is_empty!11175 tp_is_empty!11177 tp!754211))))

(assert (=> b!2358700 (= tp!754202 e!1506576)))

(assert (= (and b!2358700 ((_ is Cons!27882) (t!207855 (zeroValue!3492 (v!30810 (underlying!6673 (v!30811 (underlying!6674 thiss!47723)))))))) b!2358790))

(declare-fun e!1506577 () Bool)

(declare-fun b!2358791 () Bool)

(declare-fun tp!754212 () Bool)

(assert (=> b!2358791 (= e!1506577 (and tp_is_empty!11175 tp_is_empty!11177 tp!754212))))

(assert (=> b!2358690 (= tp!754191 e!1506577)))

(assert (= (and b!2358690 ((_ is Cons!27882) (t!207855 mapDefault!15096))) b!2358791))

(check-sat (not b_next!71093) (not bm!143588) (not b!2358734) (not b!2358704) (not b!2358770) (not d!693427) (not b!2358735) (not b!2358785) (not b!2358789) (not d!693425) (not b!2358744) (not bm!143587) (not b!2358783) (not b_next!71095) (not b!2358788) (not d!693435) (not b_lambda!73745) b_and!185319 (not b!2358791) (not b!2358781) (not b!2358765) (not b!2358769) tp_is_empty!11177 (not b!2358782) (not b!2358743) tp_is_empty!11175 (not d!693429) (not bm!143595) (not b!2358731) (not b!2358784) (not b_lambda!73743) (not bm!143589) (not d!693439) (not d!693433) (not b!2358766) (not b!2358768) (not mapNonEmpty!15100) b_and!185325 (not b!2358787) (not bm!143591) (not b!2358786) (not d!693423) (not d!693431) (not b!2358771) (not b!2358728) (not b!2358737) (not b!2358764) (not b!2358780) (not d!693441) (not bm!143590) (not bm!143592) (not b!2358790))
(check-sat b_and!185319 b_and!185325 (not b_next!71095) (not b_next!71093))
