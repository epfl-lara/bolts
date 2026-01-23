; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242086 () Bool)

(assert start!242086)

(declare-fun b!2481243 () Bool)

(declare-fun b_free!72281 () Bool)

(declare-fun b_next!72985 () Bool)

(assert (=> b!2481243 (= b_free!72281 (not b_next!72985))))

(declare-fun tp!794271 () Bool)

(declare-fun b_and!188527 () Bool)

(assert (=> b!2481243 (= tp!794271 b_and!188527)))

(declare-fun b!2481242 () Bool)

(declare-fun b_free!72283 () Bool)

(declare-fun b_next!72987 () Bool)

(assert (=> b!2481242 (= b_free!72283 (not b_next!72987))))

(declare-fun tp!794272 () Bool)

(declare-fun b_and!188529 () Bool)

(assert (=> b!2481242 (= tp!794272 b_and!188529)))

(declare-fun b!2481237 () Bool)

(declare-fun res!1050445 () Bool)

(declare-fun e!1574973 () Bool)

(assert (=> b!2481237 (=> (not res!1050445) (not e!1574973))))

(declare-datatypes ((Hashable!3266 0))(
  ( (HashableExt!3265 (__x!18974 Int)) )
))
(declare-datatypes ((K!5475 0))(
  ( (K!5476 (val!8855 Int)) )
))
(declare-datatypes ((V!5677 0))(
  ( (V!5678 (val!8856 Int)) )
))
(declare-datatypes ((tuple2!28802 0))(
  ( (tuple2!28803 (_1!16942 K!5475) (_2!16942 V!5677)) )
))
(declare-datatypes ((List!29193 0))(
  ( (Nil!29093) (Cons!29093 (h!34499 tuple2!28802) (t!210850 List!29193)) )
))
(declare-datatypes ((array!11881 0))(
  ( (array!11882 (arr!5302 (Array (_ BitVec 32) List!29193)) (size!22721 (_ BitVec 32))) )
))
(declare-datatypes ((array!11883 0))(
  ( (array!11884 (arr!5303 (Array (_ BitVec 32) (_ BitVec 64))) (size!22722 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6712 0))(
  ( (LongMapFixedSize!6713 (defaultEntry!3730 Int) (mask!8523 (_ BitVec 32)) (extraKeys!3604 (_ BitVec 32)) (zeroValue!3614 List!29193) (minValue!3614 List!29193) (_size!6759 (_ BitVec 32)) (_keys!3653 array!11883) (_values!3636 array!11881) (_vacant!3417 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13241 0))(
  ( (Cell!13242 (v!31424 LongMapFixedSize!6712)) )
))
(declare-datatypes ((MutLongMap!3356 0))(
  ( (LongMap!3356 (underlying!6919 Cell!13241)) (MutLongMapExt!3355 (__x!18975 Int)) )
))
(declare-datatypes ((Cell!13243 0))(
  ( (Cell!13244 (v!31425 MutLongMap!3356)) )
))
(declare-datatypes ((MutableMap!3266 0))(
  ( (MutableMapExt!3265 (__x!18976 Int)) (HashMap!3266 (underlying!6920 Cell!13243) (hashF!5224 Hashable!3266) (_size!6760 (_ BitVec 32)) (defaultValue!3428 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3266)

(declare-fun key!2246 () K!5475)

(declare-fun contains!5086 (MutableMap!3266 K!5475) Bool)

(assert (=> b!2481237 (= res!1050445 (not (contains!5086 thiss!42540 key!2246)))))

(declare-fun b!2481238 () Bool)

(declare-fun e!1574967 () Bool)

(declare-fun e!1574969 () Bool)

(assert (=> b!2481238 (= e!1574967 e!1574969)))

(declare-fun b!2481239 () Bool)

(declare-fun e!1574972 () Bool)

(declare-fun e!1574968 () Bool)

(declare-fun lt!888132 () MutLongMap!3356)

(get-info :version)

(assert (=> b!2481239 (= e!1574972 (and e!1574968 ((_ is LongMap!3356) lt!888132)))))

(assert (=> b!2481239 (= lt!888132 (v!31425 (underlying!6920 thiss!42540)))))

(declare-fun mapNonEmpty!15526 () Bool)

(declare-fun mapRes!15526 () Bool)

(declare-fun tp!794270 () Bool)

(declare-fun tp!794274 () Bool)

(assert (=> mapNonEmpty!15526 (= mapRes!15526 (and tp!794270 tp!794274))))

(declare-fun mapRest!15526 () (Array (_ BitVec 32) List!29193))

(declare-fun mapKey!15526 () (_ BitVec 32))

(declare-fun mapValue!15526 () List!29193)

(assert (=> mapNonEmpty!15526 (= (arr!5302 (_values!3636 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) (store mapRest!15526 mapKey!15526 mapValue!15526))))

(declare-fun b!2481240 () Bool)

(declare-fun res!1050444 () Bool)

(assert (=> b!2481240 (=> (not res!1050444) (not e!1574973))))

(declare-fun valid!2560 (MutableMap!3266) Bool)

(assert (=> b!2481240 (= res!1050444 (valid!2560 thiss!42540))))

(declare-fun mapIsEmpty!15526 () Bool)

(assert (=> mapIsEmpty!15526 mapRes!15526))

(declare-fun e!1574971 () Bool)

(assert (=> b!2481242 (= e!1574971 (and e!1574972 tp!794272))))

(declare-fun tp!794275 () Bool)

(declare-fun tp!794273 () Bool)

(declare-fun e!1574970 () Bool)

(declare-fun array_inv!3805 (array!11883) Bool)

(declare-fun array_inv!3806 (array!11881) Bool)

(assert (=> b!2481243 (= e!1574969 (and tp!794271 tp!794273 tp!794275 (array_inv!3805 (_keys!3653 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) (array_inv!3806 (_values!3636 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) e!1574970))))

(declare-fun b!2481244 () Bool)

(declare-fun tp!794276 () Bool)

(assert (=> b!2481244 (= e!1574970 (and tp!794276 mapRes!15526))))

(declare-fun condMapEmpty!15526 () Bool)

(declare-fun mapDefault!15526 () List!29193)

(assert (=> b!2481244 (= condMapEmpty!15526 (= (arr!5302 (_values!3636 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29193)) mapDefault!15526)))))

(declare-fun b!2481245 () Bool)

(assert (=> b!2481245 (= e!1574968 e!1574967)))

(declare-fun b!2481241 () Bool)

(declare-fun lambda!93946 () Int)

(declare-datatypes ((tuple2!28804 0))(
  ( (tuple2!28805 (_1!16943 (_ BitVec 64)) (_2!16943 List!29193)) )
))
(declare-datatypes ((List!29194 0))(
  ( (Nil!29094) (Cons!29094 (h!34500 tuple2!28804) (t!210851 List!29194)) )
))
(declare-fun forall!5967 (List!29194 Int) Bool)

(declare-datatypes ((ListLongMap!517 0))(
  ( (ListLongMap!518 (toList!1570 List!29194)) )
))
(declare-fun map!6182 (MutLongMap!3356) ListLongMap!517)

(assert (=> b!2481241 (= e!1574973 (not (forall!5967 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))) lambda!93946)))))

(declare-fun res!1050446 () Bool)

(assert (=> start!242086 (=> (not res!1050446) (not e!1574973))))

(assert (=> start!242086 (= res!1050446 ((_ is HashMap!3266) thiss!42540))))

(assert (=> start!242086 e!1574973))

(assert (=> start!242086 e!1574971))

(declare-fun tp_is_empty!12235 () Bool)

(assert (=> start!242086 tp_is_empty!12235))

(assert (= (and start!242086 res!1050446) b!2481240))

(assert (= (and b!2481240 res!1050444) b!2481237))

(assert (= (and b!2481237 res!1050445) b!2481241))

(assert (= (and b!2481244 condMapEmpty!15526) mapIsEmpty!15526))

(assert (= (and b!2481244 (not condMapEmpty!15526)) mapNonEmpty!15526))

(assert (= b!2481243 b!2481244))

(assert (= b!2481238 b!2481243))

(assert (= b!2481245 b!2481238))

(assert (= (and b!2481239 ((_ is LongMap!3356) (v!31425 (underlying!6920 thiss!42540)))) b!2481245))

(assert (= b!2481242 b!2481239))

(assert (= (and start!242086 ((_ is HashMap!3266) thiss!42540)) b!2481242))

(declare-fun m!2849271 () Bool)

(assert (=> b!2481240 m!2849271))

(declare-fun m!2849273 () Bool)

(assert (=> b!2481243 m!2849273))

(declare-fun m!2849275 () Bool)

(assert (=> b!2481243 m!2849275))

(declare-fun m!2849277 () Bool)

(assert (=> b!2481241 m!2849277))

(declare-fun m!2849279 () Bool)

(assert (=> b!2481241 m!2849279))

(declare-fun m!2849281 () Bool)

(assert (=> b!2481237 m!2849281))

(declare-fun m!2849283 () Bool)

(assert (=> mapNonEmpty!15526 m!2849283))

(check-sat (not b!2481240) tp_is_empty!12235 (not b!2481244) b_and!188529 (not b!2481241) (not b!2481237) b_and!188527 (not b_next!72987) (not b_next!72985) (not b!2481243) (not mapNonEmpty!15526))
(check-sat b_and!188529 b_and!188527 (not b_next!72985) (not b_next!72987))
(get-model)

(declare-fun d!712779 () Bool)

(assert (=> d!712779 (= (array_inv!3805 (_keys!3653 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) (bvsge (size!22722 (_keys!3653 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481243 d!712779))

(declare-fun d!712781 () Bool)

(assert (=> d!712781 (= (array_inv!3806 (_values!3636 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) (bvsge (size!22721 (_values!3636 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481243 d!712781))

(declare-fun bs!467406 () Bool)

(declare-fun b!2481250 () Bool)

(assert (= bs!467406 (and b!2481250 b!2481241)))

(declare-fun lambda!93949 () Int)

(assert (=> bs!467406 (= lambda!93949 lambda!93946)))

(declare-fun d!712783 () Bool)

(declare-fun res!1050451 () Bool)

(declare-fun e!1574976 () Bool)

(assert (=> d!712783 (=> (not res!1050451) (not e!1574976))))

(declare-fun valid!2561 (MutLongMap!3356) Bool)

(assert (=> d!712783 (= res!1050451 (valid!2561 (v!31425 (underlying!6920 thiss!42540))))))

(assert (=> d!712783 (= (valid!2560 thiss!42540) e!1574976)))

(declare-fun res!1050452 () Bool)

(assert (=> b!2481250 (=> (not res!1050452) (not e!1574976))))

(assert (=> b!2481250 (= res!1050452 (forall!5967 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))) lambda!93949))))

(declare-fun b!2481251 () Bool)

(declare-fun allKeysSameHashInMap!163 (ListLongMap!517 Hashable!3266) Bool)

(assert (=> b!2481251 (= e!1574976 (allKeysSameHashInMap!163 (map!6182 (v!31425 (underlying!6920 thiss!42540))) (hashF!5224 thiss!42540)))))

(assert (= (and d!712783 res!1050451) b!2481250))

(assert (= (and b!2481250 res!1050452) b!2481251))

(declare-fun m!2849285 () Bool)

(assert (=> d!712783 m!2849285))

(assert (=> b!2481250 m!2849277))

(declare-fun m!2849287 () Bool)

(assert (=> b!2481250 m!2849287))

(assert (=> b!2481251 m!2849277))

(assert (=> b!2481251 m!2849277))

(declare-fun m!2849289 () Bool)

(assert (=> b!2481251 m!2849289))

(assert (=> b!2481240 d!712783))

(declare-fun bs!467407 () Bool)

(declare-fun b!2481276 () Bool)

(assert (= bs!467407 (and b!2481276 b!2481241)))

(declare-fun lambda!93952 () Int)

(assert (=> bs!467407 (= lambda!93952 lambda!93946)))

(declare-fun bs!467408 () Bool)

(assert (= bs!467408 (and b!2481276 b!2481250)))

(assert (=> bs!467408 (= lambda!93952 lambda!93949)))

(declare-fun b!2481274 () Bool)

(assert (=> b!2481274 false))

(declare-datatypes ((Unit!42571 0))(
  ( (Unit!42572) )
))
(declare-fun lt!888178 () Unit!42571)

(declare-fun lt!888177 () Unit!42571)

(assert (=> b!2481274 (= lt!888178 lt!888177)))

(declare-fun lt!888187 () List!29194)

(declare-fun lt!888183 () (_ BitVec 64))

(declare-fun lt!888184 () List!29193)

(declare-fun contains!5087 (List!29194 tuple2!28804) Bool)

(assert (=> b!2481274 (contains!5087 lt!888187 (tuple2!28805 lt!888183 lt!888184))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!72 (List!29194 (_ BitVec 64) List!29193) Unit!42571)

(assert (=> b!2481274 (= lt!888177 (lemmaGetValueByKeyImpliesContainsTuple!72 lt!888187 lt!888183 lt!888184))))

(declare-fun apply!6910 (MutLongMap!3356 (_ BitVec 64)) List!29193)

(assert (=> b!2481274 (= lt!888184 (apply!6910 (v!31425 (underlying!6920 thiss!42540)) lt!888183))))

(assert (=> b!2481274 (= lt!888187 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))))))

(declare-fun lt!888176 () Unit!42571)

(declare-fun lt!888182 () Unit!42571)

(assert (=> b!2481274 (= lt!888176 lt!888182)))

(declare-fun lt!888189 () List!29194)

(declare-datatypes ((Option!5744 0))(
  ( (None!5743) (Some!5743 (v!31426 List!29193)) )
))
(declare-fun isDefined!4566 (Option!5744) Bool)

(declare-fun getValueByKey!134 (List!29194 (_ BitVec 64)) Option!5744)

(assert (=> b!2481274 (isDefined!4566 (getValueByKey!134 lt!888189 lt!888183))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!91 (List!29194 (_ BitVec 64)) Unit!42571)

(assert (=> b!2481274 (= lt!888182 (lemmaContainsKeyImpliesGetValueByKeyDefined!91 lt!888189 lt!888183))))

(assert (=> b!2481274 (= lt!888189 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))))))

(declare-fun lt!888190 () Unit!42571)

(declare-fun lt!888192 () Unit!42571)

(assert (=> b!2481274 (= lt!888190 lt!888192)))

(declare-fun lt!888174 () List!29194)

(declare-fun containsKey!131 (List!29194 (_ BitVec 64)) Bool)

(assert (=> b!2481274 (containsKey!131 lt!888174 lt!888183)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!68 (List!29194 (_ BitVec 64)) Unit!42571)

(assert (=> b!2481274 (= lt!888192 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!68 lt!888174 lt!888183))))

(assert (=> b!2481274 (= lt!888174 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))))))

(declare-fun e!1574992 () Unit!42571)

(declare-fun Unit!42573 () Unit!42571)

(assert (=> b!2481274 (= e!1574992 Unit!42573)))

(declare-fun b!2481275 () Bool)

(declare-fun e!1574995 () Bool)

(declare-fun call!151943 () Bool)

(assert (=> b!2481275 (= e!1574995 call!151943)))

(declare-fun d!712785 () Bool)

(declare-fun lt!888173 () Bool)

(declare-datatypes ((ListMap!1053 0))(
  ( (ListMap!1054 (toList!1571 List!29193)) )
))
(declare-fun contains!5088 (ListMap!1053 K!5475) Bool)

(declare-fun map!6183 (MutableMap!3266) ListMap!1053)

(assert (=> d!712785 (= lt!888173 (contains!5088 (map!6183 thiss!42540) key!2246))))

(declare-fun e!1574994 () Bool)

(assert (=> d!712785 (= lt!888173 e!1574994)))

(declare-fun res!1050459 () Bool)

(assert (=> d!712785 (=> (not res!1050459) (not e!1574994))))

(declare-fun contains!5089 (MutLongMap!3356 (_ BitVec 64)) Bool)

(assert (=> d!712785 (= res!1050459 (contains!5089 (v!31425 (underlying!6920 thiss!42540)) lt!888183))))

(declare-fun lt!888175 () Unit!42571)

(declare-fun e!1574996 () Unit!42571)

(assert (=> d!712785 (= lt!888175 e!1574996)))

(declare-fun c!394482 () Bool)

(declare-fun extractMap!170 (List!29194) ListMap!1053)

(assert (=> d!712785 (= c!394482 (contains!5088 (extractMap!170 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540))))) key!2246))))

(declare-fun lt!888188 () Unit!42571)

(declare-fun e!1574997 () Unit!42571)

(assert (=> d!712785 (= lt!888188 e!1574997)))

(declare-fun c!394485 () Bool)

(assert (=> d!712785 (= c!394485 (contains!5089 (v!31425 (underlying!6920 thiss!42540)) lt!888183))))

(declare-fun hash!685 (Hashable!3266 K!5475) (_ BitVec 64))

(assert (=> d!712785 (= lt!888183 (hash!685 (hashF!5224 thiss!42540) key!2246))))

(assert (=> d!712785 (valid!2560 thiss!42540)))

(assert (=> d!712785 (= (contains!5086 thiss!42540 key!2246) lt!888173)))

(declare-fun forallContained!853 (List!29194 Int tuple2!28804) Unit!42571)

(assert (=> b!2481276 (= e!1574997 (forallContained!853 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))) lambda!93952 (tuple2!28805 lt!888183 (apply!6910 (v!31425 (underlying!6920 thiss!42540)) lt!888183))))))

(declare-fun c!394483 () Bool)

(assert (=> b!2481276 (= c!394483 (not (contains!5087 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))) (tuple2!28805 lt!888183 (apply!6910 (v!31425 (underlying!6920 thiss!42540)) lt!888183)))))))

(declare-fun lt!888181 () Unit!42571)

(assert (=> b!2481276 (= lt!888181 e!1574992)))

(declare-fun bm!151938 () Bool)

(declare-datatypes ((Option!5745 0))(
  ( (None!5744) (Some!5744 (v!31427 tuple2!28802)) )
))
(declare-fun call!151948 () Option!5745)

(declare-fun isDefined!4567 (Option!5745) Bool)

(assert (=> bm!151938 (= call!151943 (isDefined!4567 call!151948))))

(declare-fun bm!151939 () Bool)

(declare-fun call!151946 () List!29193)

(declare-fun getPair!67 (List!29193 K!5475) Option!5745)

(assert (=> bm!151939 (= call!151948 (getPair!67 call!151946 key!2246))))

(declare-fun b!2481277 () Bool)

(declare-fun lt!888191 () Unit!42571)

(assert (=> b!2481277 (= e!1574996 lt!888191)))

(declare-fun lt!888180 () ListLongMap!517)

(declare-fun call!151945 () ListLongMap!517)

(assert (=> b!2481277 (= lt!888180 call!151945)))

(declare-fun lemmaInGenericMapThenInLongMap!67 (ListLongMap!517 K!5475 Hashable!3266) Unit!42571)

(assert (=> b!2481277 (= lt!888191 (lemmaInGenericMapThenInLongMap!67 lt!888180 key!2246 (hashF!5224 thiss!42540)))))

(declare-fun res!1050460 () Bool)

(declare-fun call!151944 () Bool)

(assert (=> b!2481277 (= res!1050460 call!151944)))

(assert (=> b!2481277 (=> (not res!1050460) (not e!1574995))))

(assert (=> b!2481277 e!1574995))

(declare-fun b!2481278 () Bool)

(declare-fun Unit!42574 () Unit!42571)

(assert (=> b!2481278 (= e!1574992 Unit!42574)))

(declare-fun bm!151940 () Bool)

(declare-fun call!151947 () (_ BitVec 64))

(assert (=> bm!151940 (= call!151947 (hash!685 (hashF!5224 thiss!42540) key!2246))))

(declare-fun b!2481279 () Bool)

(declare-fun e!1574993 () Unit!42571)

(declare-fun Unit!42575 () Unit!42571)

(assert (=> b!2481279 (= e!1574993 Unit!42575)))

(declare-fun bm!151941 () Bool)

(assert (=> bm!151941 (= call!151945 (map!6182 (v!31425 (underlying!6920 thiss!42540))))))

(declare-fun b!2481280 () Bool)

(assert (=> b!2481280 (= e!1574996 e!1574993)))

(declare-fun res!1050461 () Bool)

(assert (=> b!2481280 (= res!1050461 call!151944)))

(declare-fun e!1574991 () Bool)

(assert (=> b!2481280 (=> (not res!1050461) (not e!1574991))))

(declare-fun c!394484 () Bool)

(assert (=> b!2481280 (= c!394484 e!1574991)))

(declare-fun b!2481281 () Bool)

(declare-fun Unit!42576 () Unit!42571)

(assert (=> b!2481281 (= e!1574997 Unit!42576)))

(declare-fun bm!151942 () Bool)

(declare-fun contains!5090 (ListLongMap!517 (_ BitVec 64)) Bool)

(assert (=> bm!151942 (= call!151944 (contains!5090 (ite c!394482 lt!888180 call!151945) call!151947))))

(declare-fun bm!151943 () Bool)

(declare-fun apply!6911 (ListLongMap!517 (_ BitVec 64)) List!29193)

(assert (=> bm!151943 (= call!151946 (apply!6911 (ite c!394482 lt!888180 call!151945) call!151947))))

(declare-fun b!2481282 () Bool)

(assert (=> b!2481282 (= e!1574994 (isDefined!4567 (getPair!67 (apply!6910 (v!31425 (underlying!6920 thiss!42540)) lt!888183) key!2246)))))

(declare-fun b!2481283 () Bool)

(assert (=> b!2481283 false))

(declare-fun lt!888179 () Unit!42571)

(declare-fun lt!888185 () Unit!42571)

(assert (=> b!2481283 (= lt!888179 lt!888185)))

(declare-fun lt!888186 () ListLongMap!517)

(assert (=> b!2481283 (contains!5088 (extractMap!170 (toList!1570 lt!888186)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!67 (ListLongMap!517 K!5475 Hashable!3266) Unit!42571)

(assert (=> b!2481283 (= lt!888185 (lemmaInLongMapThenInGenericMap!67 lt!888186 key!2246 (hashF!5224 thiss!42540)))))

(assert (=> b!2481283 (= lt!888186 call!151945)))

(declare-fun Unit!42577 () Unit!42571)

(assert (=> b!2481283 (= e!1574993 Unit!42577)))

(declare-fun b!2481284 () Bool)

(assert (=> b!2481284 (= e!1574991 call!151943)))

(assert (= (and d!712785 c!394485) b!2481276))

(assert (= (and d!712785 (not c!394485)) b!2481281))

(assert (= (and b!2481276 c!394483) b!2481274))

(assert (= (and b!2481276 (not c!394483)) b!2481278))

(assert (= (and d!712785 c!394482) b!2481277))

(assert (= (and d!712785 (not c!394482)) b!2481280))

(assert (= (and b!2481277 res!1050460) b!2481275))

(assert (= (and b!2481280 res!1050461) b!2481284))

(assert (= (and b!2481280 c!394484) b!2481283))

(assert (= (and b!2481280 (not c!394484)) b!2481279))

(assert (= (or b!2481277 b!2481280 b!2481284 b!2481283) bm!151941))

(assert (= (or b!2481277 b!2481275 b!2481280 b!2481284) bm!151940))

(assert (= (or b!2481275 b!2481284) bm!151943))

(assert (= (or b!2481277 b!2481280) bm!151942))

(assert (= (or b!2481275 b!2481284) bm!151939))

(assert (= (or b!2481275 b!2481284) bm!151938))

(assert (= (and d!712785 res!1050459) b!2481282))

(assert (=> b!2481276 m!2849277))

(declare-fun m!2849291 () Bool)

(assert (=> b!2481276 m!2849291))

(declare-fun m!2849293 () Bool)

(assert (=> b!2481276 m!2849293))

(declare-fun m!2849295 () Bool)

(assert (=> b!2481276 m!2849295))

(declare-fun m!2849297 () Bool)

(assert (=> bm!151943 m!2849297))

(declare-fun m!2849299 () Bool)

(assert (=> bm!151938 m!2849299))

(declare-fun m!2849301 () Bool)

(assert (=> bm!151942 m!2849301))

(declare-fun m!2849303 () Bool)

(assert (=> d!712785 m!2849303))

(assert (=> d!712785 m!2849271))

(assert (=> d!712785 m!2849303))

(declare-fun m!2849305 () Bool)

(assert (=> d!712785 m!2849305))

(assert (=> d!712785 m!2849277))

(declare-fun m!2849307 () Bool)

(assert (=> d!712785 m!2849307))

(declare-fun m!2849309 () Bool)

(assert (=> d!712785 m!2849309))

(declare-fun m!2849311 () Bool)

(assert (=> d!712785 m!2849311))

(declare-fun m!2849313 () Bool)

(assert (=> d!712785 m!2849313))

(assert (=> d!712785 m!2849311))

(declare-fun m!2849315 () Bool)

(assert (=> b!2481283 m!2849315))

(assert (=> b!2481283 m!2849315))

(declare-fun m!2849317 () Bool)

(assert (=> b!2481283 m!2849317))

(declare-fun m!2849319 () Bool)

(assert (=> b!2481283 m!2849319))

(declare-fun m!2849321 () Bool)

(assert (=> bm!151939 m!2849321))

(declare-fun m!2849323 () Bool)

(assert (=> b!2481277 m!2849323))

(assert (=> bm!151941 m!2849277))

(assert (=> bm!151940 m!2849307))

(assert (=> b!2481282 m!2849291))

(assert (=> b!2481282 m!2849291))

(declare-fun m!2849325 () Bool)

(assert (=> b!2481282 m!2849325))

(assert (=> b!2481282 m!2849325))

(declare-fun m!2849327 () Bool)

(assert (=> b!2481282 m!2849327))

(declare-fun m!2849329 () Bool)

(assert (=> b!2481274 m!2849329))

(assert (=> b!2481274 m!2849291))

(assert (=> b!2481274 m!2849277))

(declare-fun m!2849331 () Bool)

(assert (=> b!2481274 m!2849331))

(declare-fun m!2849333 () Bool)

(assert (=> b!2481274 m!2849333))

(assert (=> b!2481274 m!2849333))

(declare-fun m!2849335 () Bool)

(assert (=> b!2481274 m!2849335))

(declare-fun m!2849337 () Bool)

(assert (=> b!2481274 m!2849337))

(declare-fun m!2849339 () Bool)

(assert (=> b!2481274 m!2849339))

(declare-fun m!2849341 () Bool)

(assert (=> b!2481274 m!2849341))

(assert (=> b!2481237 d!712785))

(declare-fun d!712787 () Bool)

(declare-fun res!1050466 () Bool)

(declare-fun e!1575002 () Bool)

(assert (=> d!712787 (=> res!1050466 e!1575002)))

(assert (=> d!712787 (= res!1050466 ((_ is Nil!29094) (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540))))))))

(assert (=> d!712787 (= (forall!5967 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))) lambda!93946) e!1575002)))

(declare-fun b!2481289 () Bool)

(declare-fun e!1575003 () Bool)

(assert (=> b!2481289 (= e!1575002 e!1575003)))

(declare-fun res!1050467 () Bool)

(assert (=> b!2481289 (=> (not res!1050467) (not e!1575003))))

(declare-fun dynLambda!12462 (Int tuple2!28804) Bool)

(assert (=> b!2481289 (= res!1050467 (dynLambda!12462 lambda!93946 (h!34500 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))))))))

(declare-fun b!2481290 () Bool)

(assert (=> b!2481290 (= e!1575003 (forall!5967 (t!210851 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540))))) lambda!93946))))

(assert (= (and d!712787 (not res!1050466)) b!2481289))

(assert (= (and b!2481289 res!1050467) b!2481290))

(declare-fun b_lambda!76095 () Bool)

(assert (=> (not b_lambda!76095) (not b!2481289)))

(declare-fun m!2849343 () Bool)

(assert (=> b!2481289 m!2849343))

(declare-fun m!2849345 () Bool)

(assert (=> b!2481290 m!2849345))

(assert (=> b!2481241 d!712787))

(declare-fun d!712789 () Bool)

(declare-fun map!6184 (LongMapFixedSize!6712) ListLongMap!517)

(assert (=> d!712789 (= (map!6182 (v!31425 (underlying!6920 thiss!42540))) (map!6184 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540))))))))

(declare-fun bs!467409 () Bool)

(assert (= bs!467409 d!712789))

(declare-fun m!2849347 () Bool)

(assert (=> bs!467409 m!2849347))

(assert (=> b!2481241 d!712789))

(declare-fun tp_is_empty!12237 () Bool)

(declare-fun e!1575006 () Bool)

(declare-fun tp!794279 () Bool)

(declare-fun b!2481295 () Bool)

(assert (=> b!2481295 (= e!1575006 (and tp_is_empty!12235 tp_is_empty!12237 tp!794279))))

(assert (=> b!2481243 (= tp!794273 e!1575006)))

(assert (= (and b!2481243 ((_ is Cons!29093) (zeroValue!3614 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540))))))) b!2481295))

(declare-fun e!1575007 () Bool)

(declare-fun b!2481296 () Bool)

(declare-fun tp!794280 () Bool)

(assert (=> b!2481296 (= e!1575007 (and tp_is_empty!12235 tp_is_empty!12237 tp!794280))))

(assert (=> b!2481243 (= tp!794275 e!1575007)))

(assert (= (and b!2481243 ((_ is Cons!29093) (minValue!3614 (v!31424 (underlying!6919 (v!31425 (underlying!6920 thiss!42540))))))) b!2481296))

(declare-fun b!2481297 () Bool)

(declare-fun e!1575008 () Bool)

(declare-fun tp!794281 () Bool)

(assert (=> b!2481297 (= e!1575008 (and tp_is_empty!12235 tp_is_empty!12237 tp!794281))))

(assert (=> b!2481244 (= tp!794276 e!1575008)))

(assert (= (and b!2481244 ((_ is Cons!29093) mapDefault!15526)) b!2481297))

(declare-fun b!2481305 () Bool)

(declare-fun e!1575014 () Bool)

(declare-fun tp!794288 () Bool)

(assert (=> b!2481305 (= e!1575014 (and tp_is_empty!12235 tp_is_empty!12237 tp!794288))))

(declare-fun e!1575013 () Bool)

(declare-fun tp!794289 () Bool)

(declare-fun b!2481304 () Bool)

(assert (=> b!2481304 (= e!1575013 (and tp_is_empty!12235 tp_is_empty!12237 tp!794289))))

(declare-fun condMapEmpty!15529 () Bool)

(declare-fun mapDefault!15529 () List!29193)

(assert (=> mapNonEmpty!15526 (= condMapEmpty!15529 (= mapRest!15526 ((as const (Array (_ BitVec 32) List!29193)) mapDefault!15529)))))

(declare-fun mapRes!15529 () Bool)

(assert (=> mapNonEmpty!15526 (= tp!794270 (and e!1575014 mapRes!15529))))

(declare-fun mapNonEmpty!15529 () Bool)

(declare-fun tp!794290 () Bool)

(assert (=> mapNonEmpty!15529 (= mapRes!15529 (and tp!794290 e!1575013))))

(declare-fun mapRest!15529 () (Array (_ BitVec 32) List!29193))

(declare-fun mapKey!15529 () (_ BitVec 32))

(declare-fun mapValue!15529 () List!29193)

(assert (=> mapNonEmpty!15529 (= mapRest!15526 (store mapRest!15529 mapKey!15529 mapValue!15529))))

(declare-fun mapIsEmpty!15529 () Bool)

(assert (=> mapIsEmpty!15529 mapRes!15529))

(assert (= (and mapNonEmpty!15526 condMapEmpty!15529) mapIsEmpty!15529))

(assert (= (and mapNonEmpty!15526 (not condMapEmpty!15529)) mapNonEmpty!15529))

(assert (= (and mapNonEmpty!15529 ((_ is Cons!29093) mapValue!15529)) b!2481304))

(assert (= (and mapNonEmpty!15526 ((_ is Cons!29093) mapDefault!15529)) b!2481305))

(declare-fun m!2849349 () Bool)

(assert (=> mapNonEmpty!15529 m!2849349))

(declare-fun e!1575015 () Bool)

(declare-fun b!2481306 () Bool)

(declare-fun tp!794291 () Bool)

(assert (=> b!2481306 (= e!1575015 (and tp_is_empty!12235 tp_is_empty!12237 tp!794291))))

(assert (=> mapNonEmpty!15526 (= tp!794274 e!1575015)))

(assert (= (and mapNonEmpty!15526 ((_ is Cons!29093) mapValue!15526)) b!2481306))

(declare-fun b_lambda!76097 () Bool)

(assert (= b_lambda!76095 (or b!2481241 b_lambda!76097)))

(declare-fun bs!467410 () Bool)

(declare-fun d!712791 () Bool)

(assert (= bs!467410 (and d!712791 b!2481241)))

(declare-fun noDuplicateKeys!82 (List!29193) Bool)

(assert (=> bs!467410 (= (dynLambda!12462 lambda!93946 (h!34500 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540)))))) (noDuplicateKeys!82 (_2!16943 (h!34500 (toList!1570 (map!6182 (v!31425 (underlying!6920 thiss!42540))))))))))

(declare-fun m!2849351 () Bool)

(assert (=> bs!467410 m!2849351))

(assert (=> b!2481289 d!712791))

(check-sat (not bm!151942) (not b!2481277) tp_is_empty!12235 (not d!712785) (not b!2481274) (not b!2481290) (not b!2481250) b_and!188529 (not b!2481251) (not mapNonEmpty!15529) (not bm!151941) (not b!2481306) (not b!2481297) (not b!2481283) tp_is_empty!12237 (not b!2481305) (not bm!151940) (not bs!467410) (not bm!151943) b_and!188527 (not b!2481304) (not b_next!72987) (not b_next!72985) (not b!2481295) (not bm!151939) (not b!2481296) (not d!712783) (not d!712789) (not b!2481276) (not bm!151938) (not b_lambda!76097) (not b!2481282))
(check-sat b_and!188529 b_and!188527 (not b_next!72985) (not b_next!72987))
