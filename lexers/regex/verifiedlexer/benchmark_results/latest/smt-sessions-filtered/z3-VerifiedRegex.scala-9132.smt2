; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487586 () Bool)

(assert start!487586)

(declare-fun b!4766363 () Bool)

(declare-fun b_free!129635 () Bool)

(declare-fun b_next!130425 () Bool)

(assert (=> b!4766363 (= b_free!129635 (not b_next!130425))))

(declare-fun tp!1355413 () Bool)

(declare-fun b_and!341339 () Bool)

(assert (=> b!4766363 (= tp!1355413 b_and!341339)))

(declare-fun b!4766368 () Bool)

(declare-fun b_free!129637 () Bool)

(declare-fun b_next!130427 () Bool)

(assert (=> b!4766368 (= b_free!129637 (not b_next!130427))))

(declare-fun tp!1355415 () Bool)

(declare-fun b_and!341341 () Bool)

(assert (=> b!4766368 (= tp!1355415 b_and!341341)))

(declare-fun b!4766361 () Bool)

(declare-fun res!2021496 () Bool)

(declare-fun e!2974997 () Bool)

(assert (=> b!4766361 (=> (not res!2021496) (not e!2974997))))

(declare-datatypes ((K!14949 0))(
  ( (K!14950 (val!20265 Int)) )
))
(declare-datatypes ((V!15195 0))(
  ( (V!15196 (val!20266 Int)) )
))
(declare-datatypes ((tuple2!55516 0))(
  ( (tuple2!55517 (_1!31052 K!14949) (_2!31052 V!15195)) )
))
(declare-datatypes ((array!18006 0))(
  ( (array!18007 (arr!8031 (Array (_ BitVec 32) (_ BitVec 64))) (size!36261 (_ BitVec 32))) )
))
(declare-datatypes ((List!53602 0))(
  ( (Nil!53478) (Cons!53478 (h!59890 tuple2!55516) (t!361020 List!53602)) )
))
(declare-datatypes ((array!18008 0))(
  ( (array!18009 (arr!8032 (Array (_ BitVec 32) List!53602)) (size!36262 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6584 0))(
  ( (HashableExt!6583 (__x!32517 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9846 0))(
  ( (LongMapFixedSize!9847 (defaultEntry!5341 Int) (mask!14680 (_ BitVec 32)) (extraKeys!5198 (_ BitVec 32)) (zeroValue!5211 List!53602) (minValue!5211 List!53602) (_size!9871 (_ BitVec 32)) (_keys!5265 array!18006) (_values!5236 array!18008) (_vacant!4988 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19457 0))(
  ( (Cell!19458 (v!47633 LongMapFixedSize!9846)) )
))
(declare-datatypes ((MutLongMap!4923 0))(
  ( (LongMap!4923 (underlying!10053 Cell!19457)) (MutLongMapExt!4922 (__x!32518 Int)) )
))
(declare-datatypes ((Cell!19459 0))(
  ( (Cell!19460 (v!47634 MutLongMap!4923)) )
))
(declare-datatypes ((MutableMap!4807 0))(
  ( (MutableMapExt!4806 (__x!32519 Int)) (HashMap!4807 (underlying!10054 Cell!19459) (hashF!12421 Hashable!6584) (_size!9872 (_ BitVec 32)) (defaultValue!4978 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4807)

(declare-fun key!1776 () K!14949)

(declare-fun contains!16820 (MutableMap!4807 K!14949) Bool)

(assert (=> b!4766361 (= res!2021496 (contains!16820 thiss!42052 key!1776))))

(declare-fun b!4766362 () Bool)

(declare-fun e!2974996 () Bool)

(declare-fun e!2974998 () Bool)

(assert (=> b!4766362 (= e!2974996 e!2974998)))

(declare-fun tp!1355411 () Bool)

(declare-fun tp!1355414 () Bool)

(declare-fun e!2974994 () Bool)

(declare-fun e!2974999 () Bool)

(declare-fun array_inv!5779 (array!18006) Bool)

(declare-fun array_inv!5780 (array!18008) Bool)

(assert (=> b!4766363 (= e!2974999 (and tp!1355413 tp!1355414 tp!1355411 (array_inv!5779 (_keys!5265 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) (array_inv!5780 (_values!5236 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) e!2974994))))

(declare-fun b!4766364 () Bool)

(declare-datatypes ((Unit!138209 0))(
  ( (Unit!138210) )
))
(declare-fun e!2974995 () Unit!138209)

(declare-fun Unit!138211 () Unit!138209)

(assert (=> b!4766364 (= e!2974995 Unit!138211)))

(declare-fun lt!1929158 () Unit!138209)

(declare-datatypes ((tuple2!55518 0))(
  ( (tuple2!55519 (_1!31053 (_ BitVec 64)) (_2!31053 List!53602)) )
))
(declare-datatypes ((List!53603 0))(
  ( (Nil!53479) (Cons!53479 (h!59891 tuple2!55518) (t!361021 List!53603)) )
))
(declare-datatypes ((ListLongMap!4681 0))(
  ( (ListLongMap!4682 (toList!6283 List!53603)) )
))
(declare-fun lt!1929153 () ListLongMap!4681)

(declare-fun lt!1929151 () (_ BitVec 64))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1983 (List!53603 (_ BitVec 64)) Unit!138209)

(assert (=> b!4766364 (= lt!1929158 (lemmaContainsKeyImpliesGetValueByKeyDefined!1983 (toList!6283 lt!1929153) lt!1929151))))

(declare-datatypes ((Option!12663 0))(
  ( (None!12662) (Some!12662 (v!47635 List!53602)) )
))
(declare-fun isDefined!9832 (Option!12663) Bool)

(declare-fun getValueByKey!2173 (List!53603 (_ BitVec 64)) Option!12663)

(assert (=> b!4766364 (isDefined!9832 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151))))

(declare-fun lt!1929156 () List!53602)

(declare-fun lt!1929164 () Unit!138209)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!927 (List!53603 (_ BitVec 64) List!53602) Unit!138209)

(assert (=> b!4766364 (= lt!1929164 (lemmaGetValueByKeyImpliesContainsTuple!927 (toList!6283 lt!1929153) lt!1929151 lt!1929156))))

(assert (=> b!4766364 false))

(declare-fun b!4766365 () Bool)

(declare-datatypes ((Option!12664 0))(
  ( (None!12663) (Some!12663 (v!47636 tuple2!55516)) )
))
(declare-fun lt!1929154 () Option!12664)

(declare-fun isDefined!9833 (Option!12664) Bool)

(assert (=> b!4766365 (= e!2974997 (not (isDefined!9833 lt!1929154)))))

(declare-fun e!2974993 () Bool)

(assert (=> b!4766365 e!2974993))

(declare-fun res!2021497 () Bool)

(assert (=> b!4766365 (=> (not res!2021497) (not e!2974993))))

(declare-fun lt!1929162 () Option!12664)

(assert (=> b!4766365 (= res!2021497 (isDefined!9833 lt!1929162))))

(declare-fun lt!1929147 () List!53602)

(declare-fun getPair!643 (List!53602 K!14949) Option!12664)

(assert (=> b!4766365 (= lt!1929162 (getPair!643 lt!1929147 key!1776))))

(declare-fun lt!1929161 () Unit!138209)

(declare-fun lambda!224313 () Int)

(declare-fun lt!1929163 () tuple2!55518)

(declare-fun forallContained!3859 (List!53603 Int tuple2!55518) Unit!138209)

(assert (=> b!4766365 (= lt!1929161 (forallContained!3859 (toList!6283 lt!1929153) lambda!224313 lt!1929163))))

(declare-fun lt!1929155 () Unit!138209)

(declare-fun lemmaInGenMapThenGetPairDefined!426 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> b!4766365 (= lt!1929155 (lemmaInGenMapThenGetPairDefined!426 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(declare-fun lt!1929159 () Unit!138209)

(assert (=> b!4766365 (= lt!1929159 (forallContained!3859 (toList!6283 lt!1929153) lambda!224313 lt!1929163))))

(declare-fun contains!16821 (List!53603 tuple2!55518) Bool)

(assert (=> b!4766365 (contains!16821 (toList!6283 lt!1929153) lt!1929163)))

(assert (=> b!4766365 (= lt!1929163 (tuple2!55519 lt!1929151 lt!1929147))))

(declare-fun lt!1929148 () Unit!138209)

(declare-fun lemmaGetValueImpliesTupleContained!435 (ListLongMap!4681 (_ BitVec 64) List!53602) Unit!138209)

(assert (=> b!4766365 (= lt!1929148 (lemmaGetValueImpliesTupleContained!435 lt!1929153 lt!1929151 lt!1929147))))

(declare-fun apply!12621 (ListLongMap!4681 (_ BitVec 64)) List!53602)

(assert (=> b!4766365 (= lt!1929147 (apply!12621 lt!1929153 lt!1929151))))

(declare-fun contains!16822 (ListLongMap!4681 (_ BitVec 64)) Bool)

(assert (=> b!4766365 (contains!16822 lt!1929153 lt!1929151)))

(declare-fun lt!1929149 () Unit!138209)

(declare-fun lemmaInGenMapThenLongMapContainsHash!836 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> b!4766365 (= lt!1929149 (lemmaInGenMapThenLongMapContainsHash!836 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(declare-fun lt!1929160 () Unit!138209)

(declare-fun lemmaGetPairGetSameValueAsMap!58 (ListLongMap!4681 K!14949 V!15195 Hashable!6584) Unit!138209)

(declare-fun get!18024 (Option!12664) tuple2!55516)

(assert (=> b!4766365 (= lt!1929160 (lemmaGetPairGetSameValueAsMap!58 lt!1929153 key!1776 (_2!31052 (get!18024 lt!1929154)) (hashF!12421 thiss!42052)))))

(assert (=> b!4766365 (= lt!1929154 (getPair!643 lt!1929156 key!1776))))

(declare-fun lt!1929146 () Unit!138209)

(declare-fun lt!1929152 () tuple2!55518)

(assert (=> b!4766365 (= lt!1929146 (forallContained!3859 (toList!6283 lt!1929153) lambda!224313 lt!1929152))))

(declare-fun lt!1929157 () Unit!138209)

(assert (=> b!4766365 (= lt!1929157 e!2974995)))

(declare-fun c!813017 () Bool)

(assert (=> b!4766365 (= c!813017 (not (contains!16821 (toList!6283 lt!1929153) lt!1929152)))))

(assert (=> b!4766365 (= lt!1929152 (tuple2!55519 lt!1929151 lt!1929156))))

(declare-fun apply!12622 (MutLongMap!4923 (_ BitVec 64)) List!53602)

(assert (=> b!4766365 (= lt!1929156 (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929151))))

(declare-fun map!11979 (MutLongMap!4923) ListLongMap!4681)

(assert (=> b!4766365 (= lt!1929153 (map!11979 (v!47634 (underlying!10054 thiss!42052))))))

(declare-fun hash!4566 (Hashable!6584 K!14949) (_ BitVec 64))

(assert (=> b!4766365 (= lt!1929151 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun res!2021499 () Bool)

(assert (=> start!487586 (=> (not res!2021499) (not e!2974997))))

(get-info :version)

(assert (=> start!487586 (= res!2021499 ((_ is HashMap!4807) thiss!42052))))

(assert (=> start!487586 e!2974997))

(declare-fun e!2974991 () Bool)

(assert (=> start!487586 e!2974991))

(declare-fun tp_is_empty!32437 () Bool)

(assert (=> start!487586 tp_is_empty!32437))

(declare-fun b!4766366 () Bool)

(assert (=> b!4766366 (= e!2974998 e!2974999)))

(declare-fun b!4766367 () Bool)

(declare-fun res!2021498 () Bool)

(assert (=> b!4766367 (=> (not res!2021498) (not e!2974997))))

(declare-fun valid!3923 (MutableMap!4807) Bool)

(assert (=> b!4766367 (= res!2021498 (valid!3923 thiss!42052))))

(declare-fun mapNonEmpty!21845 () Bool)

(declare-fun mapRes!21845 () Bool)

(declare-fun tp!1355410 () Bool)

(declare-fun tp!1355409 () Bool)

(assert (=> mapNonEmpty!21845 (= mapRes!21845 (and tp!1355410 tp!1355409))))

(declare-fun mapValue!21845 () List!53602)

(declare-fun mapKey!21845 () (_ BitVec 32))

(declare-fun mapRest!21845 () (Array (_ BitVec 32) List!53602))

(assert (=> mapNonEmpty!21845 (= (arr!8032 (_values!5236 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) (store mapRest!21845 mapKey!21845 mapValue!21845))))

(declare-fun e!2974990 () Bool)

(assert (=> b!4766368 (= e!2974991 (and e!2974990 tp!1355415))))

(declare-fun b!4766369 () Bool)

(declare-fun Unit!138212 () Unit!138209)

(assert (=> b!4766369 (= e!2974995 Unit!138212)))

(declare-fun b!4766370 () Bool)

(declare-fun lt!1929150 () MutLongMap!4923)

(assert (=> b!4766370 (= e!2974990 (and e!2974996 ((_ is LongMap!4923) lt!1929150)))))

(assert (=> b!4766370 (= lt!1929150 (v!47634 (underlying!10054 thiss!42052)))))

(declare-fun mapIsEmpty!21845 () Bool)

(assert (=> mapIsEmpty!21845 mapRes!21845))

(declare-fun b!4766371 () Bool)

(declare-datatypes ((Option!12665 0))(
  ( (None!12664) (Some!12664 (v!47637 V!15195)) )
))
(declare-fun get!18025 (Option!12665) V!15195)

(declare-fun getValueByKey!2174 (List!53602 K!14949) Option!12665)

(declare-datatypes ((ListMap!5779 0))(
  ( (ListMap!5780 (toList!6284 List!53602)) )
))
(declare-fun extractMap!2142 (List!53603) ListMap!5779)

(assert (=> b!4766371 (= e!2974993 (= (_2!31052 (get!18024 lt!1929162)) (get!18025 (getValueByKey!2174 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))) key!1776))))))

(declare-fun b!4766372 () Bool)

(declare-fun tp!1355412 () Bool)

(assert (=> b!4766372 (= e!2974994 (and tp!1355412 mapRes!21845))))

(declare-fun condMapEmpty!21845 () Bool)

(declare-fun mapDefault!21845 () List!53602)

(assert (=> b!4766372 (= condMapEmpty!21845 (= (arr!8032 (_values!5236 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53602)) mapDefault!21845)))))

(assert (= (and start!487586 res!2021499) b!4766367))

(assert (= (and b!4766367 res!2021498) b!4766361))

(assert (= (and b!4766361 res!2021496) b!4766365))

(assert (= (and b!4766365 c!813017) b!4766364))

(assert (= (and b!4766365 (not c!813017)) b!4766369))

(assert (= (and b!4766365 res!2021497) b!4766371))

(assert (= (and b!4766372 condMapEmpty!21845) mapIsEmpty!21845))

(assert (= (and b!4766372 (not condMapEmpty!21845)) mapNonEmpty!21845))

(assert (= b!4766363 b!4766372))

(assert (= b!4766366 b!4766363))

(assert (= b!4766362 b!4766366))

(assert (= (and b!4766370 ((_ is LongMap!4923) (v!47634 (underlying!10054 thiss!42052)))) b!4766362))

(assert (= b!4766368 b!4766370))

(assert (= (and start!487586 ((_ is HashMap!4807) thiss!42052)) b!4766368))

(declare-fun m!5737106 () Bool)

(assert (=> b!4766371 m!5737106))

(declare-fun m!5737108 () Bool)

(assert (=> b!4766371 m!5737108))

(declare-fun m!5737110 () Bool)

(assert (=> b!4766371 m!5737110))

(assert (=> b!4766371 m!5737110))

(declare-fun m!5737112 () Bool)

(assert (=> b!4766371 m!5737112))

(declare-fun m!5737114 () Bool)

(assert (=> b!4766365 m!5737114))

(declare-fun m!5737116 () Bool)

(assert (=> b!4766365 m!5737116))

(declare-fun m!5737118 () Bool)

(assert (=> b!4766365 m!5737118))

(declare-fun m!5737120 () Bool)

(assert (=> b!4766365 m!5737120))

(declare-fun m!5737122 () Bool)

(assert (=> b!4766365 m!5737122))

(declare-fun m!5737124 () Bool)

(assert (=> b!4766365 m!5737124))

(declare-fun m!5737126 () Bool)

(assert (=> b!4766365 m!5737126))

(declare-fun m!5737128 () Bool)

(assert (=> b!4766365 m!5737128))

(declare-fun m!5737130 () Bool)

(assert (=> b!4766365 m!5737130))

(declare-fun m!5737132 () Bool)

(assert (=> b!4766365 m!5737132))

(declare-fun m!5737134 () Bool)

(assert (=> b!4766365 m!5737134))

(declare-fun m!5737136 () Bool)

(assert (=> b!4766365 m!5737136))

(declare-fun m!5737138 () Bool)

(assert (=> b!4766365 m!5737138))

(declare-fun m!5737140 () Bool)

(assert (=> b!4766365 m!5737140))

(declare-fun m!5737142 () Bool)

(assert (=> b!4766365 m!5737142))

(declare-fun m!5737144 () Bool)

(assert (=> b!4766365 m!5737144))

(declare-fun m!5737146 () Bool)

(assert (=> b!4766365 m!5737146))

(assert (=> b!4766365 m!5737138))

(declare-fun m!5737148 () Bool)

(assert (=> b!4766365 m!5737148))

(declare-fun m!5737150 () Bool)

(assert (=> b!4766367 m!5737150))

(declare-fun m!5737152 () Bool)

(assert (=> b!4766363 m!5737152))

(declare-fun m!5737154 () Bool)

(assert (=> b!4766363 m!5737154))

(declare-fun m!5737156 () Bool)

(assert (=> mapNonEmpty!21845 m!5737156))

(declare-fun m!5737158 () Bool)

(assert (=> b!4766364 m!5737158))

(declare-fun m!5737160 () Bool)

(assert (=> b!4766364 m!5737160))

(assert (=> b!4766364 m!5737160))

(declare-fun m!5737162 () Bool)

(assert (=> b!4766364 m!5737162))

(declare-fun m!5737164 () Bool)

(assert (=> b!4766364 m!5737164))

(declare-fun m!5737166 () Bool)

(assert (=> b!4766361 m!5737166))

(check-sat (not b!4766367) tp_is_empty!32437 (not mapNonEmpty!21845) (not b!4766365) (not b!4766363) (not b_next!130425) b_and!341341 (not b!4766371) (not b_next!130427) (not b!4766361) b_and!341339 (not b!4766364) (not b!4766372))
(check-sat b_and!341341 b_and!341339 (not b_next!130427) (not b_next!130425))
(get-model)

(declare-fun d!1523543 () Bool)

(assert (=> d!1523543 (isDefined!9832 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151))))

(declare-fun lt!1929167 () Unit!138209)

(declare-fun choose!33957 (List!53603 (_ BitVec 64)) Unit!138209)

(assert (=> d!1523543 (= lt!1929167 (choose!33957 (toList!6283 lt!1929153) lt!1929151))))

(declare-fun e!2975002 () Bool)

(assert (=> d!1523543 e!2975002))

(declare-fun res!2021502 () Bool)

(assert (=> d!1523543 (=> (not res!2021502) (not e!2975002))))

(declare-fun isStrictlySorted!806 (List!53603) Bool)

(assert (=> d!1523543 (= res!2021502 (isStrictlySorted!806 (toList!6283 lt!1929153)))))

(assert (=> d!1523543 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1983 (toList!6283 lt!1929153) lt!1929151) lt!1929167)))

(declare-fun b!4766375 () Bool)

(declare-fun containsKey!3661 (List!53603 (_ BitVec 64)) Bool)

(assert (=> b!4766375 (= e!2975002 (containsKey!3661 (toList!6283 lt!1929153) lt!1929151))))

(assert (= (and d!1523543 res!2021502) b!4766375))

(assert (=> d!1523543 m!5737160))

(assert (=> d!1523543 m!5737160))

(assert (=> d!1523543 m!5737162))

(declare-fun m!5737168 () Bool)

(assert (=> d!1523543 m!5737168))

(declare-fun m!5737170 () Bool)

(assert (=> d!1523543 m!5737170))

(declare-fun m!5737172 () Bool)

(assert (=> b!4766375 m!5737172))

(assert (=> b!4766364 d!1523543))

(declare-fun d!1523545 () Bool)

(declare-fun isEmpty!29276 (Option!12663) Bool)

(assert (=> d!1523545 (= (isDefined!9832 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151)) (not (isEmpty!29276 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151))))))

(declare-fun bs!1148846 () Bool)

(assert (= bs!1148846 d!1523545))

(assert (=> bs!1148846 m!5737160))

(declare-fun m!5737174 () Bool)

(assert (=> bs!1148846 m!5737174))

(assert (=> b!4766364 d!1523545))

(declare-fun b!4766387 () Bool)

(declare-fun e!2975008 () Option!12663)

(assert (=> b!4766387 (= e!2975008 None!12662)))

(declare-fun b!4766385 () Bool)

(declare-fun e!2975007 () Option!12663)

(assert (=> b!4766385 (= e!2975007 e!2975008)))

(declare-fun c!813023 () Bool)

(assert (=> b!4766385 (= c!813023 (and ((_ is Cons!53479) (toList!6283 lt!1929153)) (not (= (_1!31053 (h!59891 (toList!6283 lt!1929153))) lt!1929151))))))

(declare-fun b!4766384 () Bool)

(assert (=> b!4766384 (= e!2975007 (Some!12662 (_2!31053 (h!59891 (toList!6283 lt!1929153)))))))

(declare-fun b!4766386 () Bool)

(assert (=> b!4766386 (= e!2975008 (getValueByKey!2173 (t!361021 (toList!6283 lt!1929153)) lt!1929151))))

(declare-fun d!1523547 () Bool)

(declare-fun c!813022 () Bool)

(assert (=> d!1523547 (= c!813022 (and ((_ is Cons!53479) (toList!6283 lt!1929153)) (= (_1!31053 (h!59891 (toList!6283 lt!1929153))) lt!1929151)))))

(assert (=> d!1523547 (= (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151) e!2975007)))

(assert (= (and d!1523547 c!813022) b!4766384))

(assert (= (and d!1523547 (not c!813022)) b!4766385))

(assert (= (and b!4766385 c!813023) b!4766386))

(assert (= (and b!4766385 (not c!813023)) b!4766387))

(declare-fun m!5737176 () Bool)

(assert (=> b!4766386 m!5737176))

(assert (=> b!4766364 d!1523547))

(declare-fun d!1523549 () Bool)

(assert (=> d!1523549 (contains!16821 (toList!6283 lt!1929153) (tuple2!55519 lt!1929151 lt!1929156))))

(declare-fun lt!1929170 () Unit!138209)

(declare-fun choose!33958 (List!53603 (_ BitVec 64) List!53602) Unit!138209)

(assert (=> d!1523549 (= lt!1929170 (choose!33958 (toList!6283 lt!1929153) lt!1929151 lt!1929156))))

(declare-fun e!2975011 () Bool)

(assert (=> d!1523549 e!2975011))

(declare-fun res!2021505 () Bool)

(assert (=> d!1523549 (=> (not res!2021505) (not e!2975011))))

(assert (=> d!1523549 (= res!2021505 (isStrictlySorted!806 (toList!6283 lt!1929153)))))

(assert (=> d!1523549 (= (lemmaGetValueByKeyImpliesContainsTuple!927 (toList!6283 lt!1929153) lt!1929151 lt!1929156) lt!1929170)))

(declare-fun b!4766390 () Bool)

(assert (=> b!4766390 (= e!2975011 (= (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151) (Some!12662 lt!1929156)))))

(assert (= (and d!1523549 res!2021505) b!4766390))

(declare-fun m!5737178 () Bool)

(assert (=> d!1523549 m!5737178))

(declare-fun m!5737180 () Bool)

(assert (=> d!1523549 m!5737180))

(assert (=> d!1523549 m!5737170))

(assert (=> b!4766390 m!5737160))

(assert (=> b!4766364 d!1523549))

(declare-fun d!1523551 () Bool)

(assert (=> d!1523551 (= (array_inv!5779 (_keys!5265 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) (bvsge (size!36261 (_keys!5265 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766363 d!1523551))

(declare-fun d!1523553 () Bool)

(assert (=> d!1523553 (= (array_inv!5780 (_values!5236 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) (bvsge (size!36262 (_values!5236 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4766363 d!1523553))

(declare-fun d!1523555 () Bool)

(declare-fun lt!1929173 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9585 (List!53603) (InoxSet tuple2!55518))

(assert (=> d!1523555 (= lt!1929173 (select (content!9585 (toList!6283 lt!1929153)) lt!1929152))))

(declare-fun e!2975016 () Bool)

(assert (=> d!1523555 (= lt!1929173 e!2975016)))

(declare-fun res!2021511 () Bool)

(assert (=> d!1523555 (=> (not res!2021511) (not e!2975016))))

(assert (=> d!1523555 (= res!2021511 ((_ is Cons!53479) (toList!6283 lt!1929153)))))

(assert (=> d!1523555 (= (contains!16821 (toList!6283 lt!1929153) lt!1929152) lt!1929173)))

(declare-fun b!4766395 () Bool)

(declare-fun e!2975017 () Bool)

(assert (=> b!4766395 (= e!2975016 e!2975017)))

(declare-fun res!2021510 () Bool)

(assert (=> b!4766395 (=> res!2021510 e!2975017)))

(assert (=> b!4766395 (= res!2021510 (= (h!59891 (toList!6283 lt!1929153)) lt!1929152))))

(declare-fun b!4766396 () Bool)

(assert (=> b!4766396 (= e!2975017 (contains!16821 (t!361021 (toList!6283 lt!1929153)) lt!1929152))))

(assert (= (and d!1523555 res!2021511) b!4766395))

(assert (= (and b!4766395 (not res!2021510)) b!4766396))

(declare-fun m!5737182 () Bool)

(assert (=> d!1523555 m!5737182))

(declare-fun m!5737184 () Bool)

(assert (=> d!1523555 m!5737184))

(declare-fun m!5737186 () Bool)

(assert (=> b!4766396 m!5737186))

(assert (=> b!4766365 d!1523555))

(declare-fun bs!1148847 () Bool)

(declare-fun d!1523557 () Bool)

(assert (= bs!1148847 (and d!1523557 b!4766365)))

(declare-fun lambda!224316 () Int)

(assert (=> bs!1148847 (= lambda!224316 lambda!224313)))

(assert (=> d!1523557 (contains!16822 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun lt!1929176 () Unit!138209)

(declare-fun choose!33959 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> d!1523557 (= lt!1929176 (choose!33959 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(declare-fun forall!11874 (List!53603 Int) Bool)

(assert (=> d!1523557 (forall!11874 (toList!6283 lt!1929153) lambda!224316)))

(assert (=> d!1523557 (= (lemmaInGenMapThenLongMapContainsHash!836 lt!1929153 key!1776 (hashF!12421 thiss!42052)) lt!1929176)))

(declare-fun bs!1148848 () Bool)

(assert (= bs!1148848 d!1523557))

(assert (=> bs!1148848 m!5737130))

(assert (=> bs!1148848 m!5737130))

(declare-fun m!5737188 () Bool)

(assert (=> bs!1148848 m!5737188))

(declare-fun m!5737190 () Bool)

(assert (=> bs!1148848 m!5737190))

(declare-fun m!5737192 () Bool)

(assert (=> bs!1148848 m!5737192))

(assert (=> b!4766365 d!1523557))

(declare-fun d!1523559 () Bool)

(assert (=> d!1523559 (= (get!18024 lt!1929154) (v!47636 lt!1929154))))

(assert (=> b!4766365 d!1523559))

(declare-fun d!1523561 () Bool)

(declare-fun get!18026 (Option!12663) List!53602)

(assert (=> d!1523561 (= (apply!12621 lt!1929153 lt!1929151) (get!18026 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151)))))

(declare-fun bs!1148849 () Bool)

(assert (= bs!1148849 d!1523561))

(assert (=> bs!1148849 m!5737160))

(assert (=> bs!1148849 m!5737160))

(declare-fun m!5737194 () Bool)

(assert (=> bs!1148849 m!5737194))

(assert (=> b!4766365 d!1523561))

(declare-fun d!1523563 () Bool)

(declare-fun map!11980 (LongMapFixedSize!9846) ListLongMap!4681)

(assert (=> d!1523563 (= (map!11979 (v!47634 (underlying!10054 thiss!42052))) (map!11980 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052))))))))

(declare-fun bs!1148850 () Bool)

(assert (= bs!1148850 d!1523563))

(declare-fun m!5737196 () Bool)

(assert (=> bs!1148850 m!5737196))

(assert (=> b!4766365 d!1523563))

(declare-fun d!1523565 () Bool)

(declare-fun dynLambda!21948 (Int tuple2!55518) Bool)

(assert (=> d!1523565 (dynLambda!21948 lambda!224313 lt!1929163)))

(declare-fun lt!1929179 () Unit!138209)

(declare-fun choose!33960 (List!53603 Int tuple2!55518) Unit!138209)

(assert (=> d!1523565 (= lt!1929179 (choose!33960 (toList!6283 lt!1929153) lambda!224313 lt!1929163))))

(declare-fun e!2975020 () Bool)

(assert (=> d!1523565 e!2975020))

(declare-fun res!2021514 () Bool)

(assert (=> d!1523565 (=> (not res!2021514) (not e!2975020))))

(assert (=> d!1523565 (= res!2021514 (forall!11874 (toList!6283 lt!1929153) lambda!224313))))

(assert (=> d!1523565 (= (forallContained!3859 (toList!6283 lt!1929153) lambda!224313 lt!1929163) lt!1929179)))

(declare-fun b!4766399 () Bool)

(assert (=> b!4766399 (= e!2975020 (contains!16821 (toList!6283 lt!1929153) lt!1929163))))

(assert (= (and d!1523565 res!2021514) b!4766399))

(declare-fun b_lambda!184331 () Bool)

(assert (=> (not b_lambda!184331) (not d!1523565)))

(declare-fun m!5737198 () Bool)

(assert (=> d!1523565 m!5737198))

(declare-fun m!5737200 () Bool)

(assert (=> d!1523565 m!5737200))

(declare-fun m!5737202 () Bool)

(assert (=> d!1523565 m!5737202))

(assert (=> b!4766399 m!5737148))

(assert (=> b!4766365 d!1523565))

(declare-fun b!4766416 () Bool)

(declare-fun res!2021526 () Bool)

(declare-fun e!2975032 () Bool)

(assert (=> b!4766416 (=> (not res!2021526) (not e!2975032))))

(declare-fun lt!1929182 () Option!12664)

(assert (=> b!4766416 (= res!2021526 (= (_1!31052 (get!18024 lt!1929182)) key!1776))))

(declare-fun b!4766417 () Bool)

(declare-fun e!2975035 () Bool)

(declare-fun containsKey!3662 (List!53602 K!14949) Bool)

(assert (=> b!4766417 (= e!2975035 (not (containsKey!3662 lt!1929156 key!1776)))))

(declare-fun b!4766418 () Bool)

(declare-fun e!2975031 () Option!12664)

(assert (=> b!4766418 (= e!2975031 (getPair!643 (t!361020 lt!1929156) key!1776))))

(declare-fun d!1523567 () Bool)

(declare-fun e!2975034 () Bool)

(assert (=> d!1523567 e!2975034))

(declare-fun res!2021525 () Bool)

(assert (=> d!1523567 (=> res!2021525 e!2975034)))

(assert (=> d!1523567 (= res!2021525 e!2975035)))

(declare-fun res!2021524 () Bool)

(assert (=> d!1523567 (=> (not res!2021524) (not e!2975035))))

(declare-fun isEmpty!29277 (Option!12664) Bool)

(assert (=> d!1523567 (= res!2021524 (isEmpty!29277 lt!1929182))))

(declare-fun e!2975033 () Option!12664)

(assert (=> d!1523567 (= lt!1929182 e!2975033)))

(declare-fun c!813028 () Bool)

(assert (=> d!1523567 (= c!813028 (and ((_ is Cons!53478) lt!1929156) (= (_1!31052 (h!59890 lt!1929156)) key!1776)))))

(declare-fun noDuplicateKeys!2252 (List!53602) Bool)

(assert (=> d!1523567 (noDuplicateKeys!2252 lt!1929156)))

(assert (=> d!1523567 (= (getPair!643 lt!1929156 key!1776) lt!1929182)))

(declare-fun b!4766419 () Bool)

(assert (=> b!4766419 (= e!2975033 (Some!12663 (h!59890 lt!1929156)))))

(declare-fun b!4766420 () Bool)

(assert (=> b!4766420 (= e!2975033 e!2975031)))

(declare-fun c!813029 () Bool)

(assert (=> b!4766420 (= c!813029 ((_ is Cons!53478) lt!1929156))))

(declare-fun b!4766421 () Bool)

(declare-fun contains!16823 (List!53602 tuple2!55516) Bool)

(assert (=> b!4766421 (= e!2975032 (contains!16823 lt!1929156 (get!18024 lt!1929182)))))

(declare-fun b!4766422 () Bool)

(assert (=> b!4766422 (= e!2975031 None!12663)))

(declare-fun b!4766423 () Bool)

(assert (=> b!4766423 (= e!2975034 e!2975032)))

(declare-fun res!2021523 () Bool)

(assert (=> b!4766423 (=> (not res!2021523) (not e!2975032))))

(assert (=> b!4766423 (= res!2021523 (isDefined!9833 lt!1929182))))

(assert (= (and d!1523567 c!813028) b!4766419))

(assert (= (and d!1523567 (not c!813028)) b!4766420))

(assert (= (and b!4766420 c!813029) b!4766418))

(assert (= (and b!4766420 (not c!813029)) b!4766422))

(assert (= (and d!1523567 res!2021524) b!4766417))

(assert (= (and d!1523567 (not res!2021525)) b!4766423))

(assert (= (and b!4766423 res!2021523) b!4766416))

(assert (= (and b!4766416 res!2021526) b!4766421))

(declare-fun m!5737204 () Bool)

(assert (=> b!4766416 m!5737204))

(declare-fun m!5737206 () Bool)

(assert (=> b!4766423 m!5737206))

(declare-fun m!5737208 () Bool)

(assert (=> d!1523567 m!5737208))

(declare-fun m!5737210 () Bool)

(assert (=> d!1523567 m!5737210))

(declare-fun m!5737212 () Bool)

(assert (=> b!4766417 m!5737212))

(assert (=> b!4766421 m!5737204))

(assert (=> b!4766421 m!5737204))

(declare-fun m!5737214 () Bool)

(assert (=> b!4766421 m!5737214))

(declare-fun m!5737216 () Bool)

(assert (=> b!4766418 m!5737216))

(assert (=> b!4766365 d!1523567))

(declare-fun bs!1148851 () Bool)

(declare-fun d!1523569 () Bool)

(assert (= bs!1148851 (and d!1523569 b!4766365)))

(declare-fun lambda!224323 () Int)

(assert (=> bs!1148851 (= lambda!224323 lambda!224313)))

(declare-fun bs!1148852 () Bool)

(assert (= bs!1148852 (and d!1523569 d!1523557)))

(assert (=> bs!1148852 (= lambda!224323 lambda!224316)))

(declare-fun b!4766433 () Bool)

(declare-fun res!2021535 () Bool)

(declare-fun e!2975041 () Bool)

(assert (=> b!4766433 (=> (not res!2021535) (not e!2975041))))

(declare-fun contains!16824 (ListMap!5779 K!14949) Bool)

(assert (=> b!4766433 (= res!2021535 (contains!16824 (extractMap!2142 (toList!6283 lt!1929153)) key!1776))))

(declare-fun b!4766432 () Bool)

(declare-fun res!2021538 () Bool)

(assert (=> b!4766432 (=> (not res!2021538) (not e!2975041))))

(declare-fun allKeysSameHashInMap!2020 (ListLongMap!4681 Hashable!6584) Bool)

(assert (=> b!4766432 (= res!2021538 (allKeysSameHashInMap!2020 lt!1929153 (hashF!12421 thiss!42052)))))

(declare-fun lt!1929203 () List!53602)

(declare-fun e!2975040 () Bool)

(declare-fun lt!1929200 () (_ BitVec 64))

(declare-fun b!4766435 () Bool)

(assert (=> b!4766435 (= e!2975040 (= (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929200) (Some!12662 lt!1929203)))))

(assert (=> d!1523569 e!2975041))

(declare-fun res!2021536 () Bool)

(assert (=> d!1523569 (=> (not res!2021536) (not e!2975041))))

(assert (=> d!1523569 (= res!2021536 (forall!11874 (toList!6283 lt!1929153) lambda!224323))))

(declare-fun lt!1929206 () Unit!138209)

(declare-fun choose!33961 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> d!1523569 (= lt!1929206 (choose!33961 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(assert (=> d!1523569 (forall!11874 (toList!6283 lt!1929153) lambda!224323)))

(assert (=> d!1523569 (= (lemmaInGenMapThenGetPairDefined!426 lt!1929153 key!1776 (hashF!12421 thiss!42052)) lt!1929206)))

(declare-fun b!4766434 () Bool)

(assert (=> b!4766434 (= e!2975041 (isDefined!9833 (getPair!643 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1929205 () Unit!138209)

(assert (=> b!4766434 (= lt!1929205 (forallContained!3859 (toList!6283 lt!1929153) lambda!224323 (tuple2!55519 (hash!4566 (hashF!12421 thiss!42052) key!1776) (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))))

(declare-fun lt!1929202 () Unit!138209)

(declare-fun lt!1929199 () Unit!138209)

(assert (=> b!4766434 (= lt!1929202 lt!1929199)))

(assert (=> b!4766434 (contains!16821 (toList!6283 lt!1929153) (tuple2!55519 lt!1929200 lt!1929203))))

(assert (=> b!4766434 (= lt!1929199 (lemmaGetValueImpliesTupleContained!435 lt!1929153 lt!1929200 lt!1929203))))

(assert (=> b!4766434 e!2975040))

(declare-fun res!2021537 () Bool)

(assert (=> b!4766434 (=> (not res!2021537) (not e!2975040))))

(assert (=> b!4766434 (= res!2021537 (contains!16822 lt!1929153 lt!1929200))))

(assert (=> b!4766434 (= lt!1929203 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))

(assert (=> b!4766434 (= lt!1929200 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun lt!1929201 () Unit!138209)

(declare-fun lt!1929204 () Unit!138209)

(assert (=> b!4766434 (= lt!1929201 lt!1929204)))

(assert (=> b!4766434 (contains!16822 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(assert (=> b!4766434 (= lt!1929204 (lemmaInGenMapThenLongMapContainsHash!836 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(assert (= (and d!1523569 res!2021536) b!4766432))

(assert (= (and b!4766432 res!2021538) b!4766433))

(assert (= (and b!4766433 res!2021535) b!4766434))

(assert (= (and b!4766434 res!2021537) b!4766435))

(declare-fun m!5737218 () Bool)

(assert (=> b!4766435 m!5737218))

(declare-fun m!5737220 () Bool)

(assert (=> d!1523569 m!5737220))

(declare-fun m!5737222 () Bool)

(assert (=> d!1523569 m!5737222))

(assert (=> d!1523569 m!5737220))

(assert (=> b!4766433 m!5737108))

(assert (=> b!4766433 m!5737108))

(declare-fun m!5737224 () Bool)

(assert (=> b!4766433 m!5737224))

(declare-fun m!5737226 () Bool)

(assert (=> b!4766432 m!5737226))

(assert (=> b!4766434 m!5737130))

(declare-fun m!5737228 () Bool)

(assert (=> b!4766434 m!5737228))

(declare-fun m!5737230 () Bool)

(assert (=> b!4766434 m!5737230))

(assert (=> b!4766434 m!5737130))

(assert (=> b!4766434 m!5737228))

(declare-fun m!5737232 () Bool)

(assert (=> b!4766434 m!5737232))

(assert (=> b!4766434 m!5737230))

(declare-fun m!5737234 () Bool)

(assert (=> b!4766434 m!5737234))

(assert (=> b!4766434 m!5737134))

(declare-fun m!5737236 () Bool)

(assert (=> b!4766434 m!5737236))

(declare-fun m!5737238 () Bool)

(assert (=> b!4766434 m!5737238))

(declare-fun m!5737240 () Bool)

(assert (=> b!4766434 m!5737240))

(assert (=> b!4766434 m!5737130))

(assert (=> b!4766434 m!5737188))

(assert (=> b!4766365 d!1523569))

(declare-fun d!1523571 () Bool)

(declare-fun hash!4567 (Hashable!6584 K!14949) (_ BitVec 64))

(assert (=> d!1523571 (= (hash!4566 (hashF!12421 thiss!42052) key!1776) (hash!4567 (hashF!12421 thiss!42052) key!1776))))

(declare-fun bs!1148853 () Bool)

(assert (= bs!1148853 d!1523571))

(declare-fun m!5737242 () Bool)

(assert (=> bs!1148853 m!5737242))

(assert (=> b!4766365 d!1523571))

(declare-fun d!1523573 () Bool)

(declare-fun e!2975046 () Bool)

(assert (=> d!1523573 e!2975046))

(declare-fun res!2021541 () Bool)

(assert (=> d!1523573 (=> res!2021541 e!2975046)))

(declare-fun lt!1929217 () Bool)

(assert (=> d!1523573 (= res!2021541 (not lt!1929217))))

(declare-fun lt!1929216 () Bool)

(assert (=> d!1523573 (= lt!1929217 lt!1929216)))

(declare-fun lt!1929218 () Unit!138209)

(declare-fun e!2975047 () Unit!138209)

(assert (=> d!1523573 (= lt!1929218 e!2975047)))

(declare-fun c!813032 () Bool)

(assert (=> d!1523573 (= c!813032 lt!1929216)))

(assert (=> d!1523573 (= lt!1929216 (containsKey!3661 (toList!6283 lt!1929153) lt!1929151))))

(assert (=> d!1523573 (= (contains!16822 lt!1929153 lt!1929151) lt!1929217)))

(declare-fun b!4766442 () Bool)

(declare-fun lt!1929215 () Unit!138209)

(assert (=> b!4766442 (= e!2975047 lt!1929215)))

(assert (=> b!4766442 (= lt!1929215 (lemmaContainsKeyImpliesGetValueByKeyDefined!1983 (toList!6283 lt!1929153) lt!1929151))))

(assert (=> b!4766442 (isDefined!9832 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151))))

(declare-fun b!4766443 () Bool)

(declare-fun Unit!138213 () Unit!138209)

(assert (=> b!4766443 (= e!2975047 Unit!138213)))

(declare-fun b!4766444 () Bool)

(assert (=> b!4766444 (= e!2975046 (isDefined!9832 (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929151)))))

(assert (= (and d!1523573 c!813032) b!4766442))

(assert (= (and d!1523573 (not c!813032)) b!4766443))

(assert (= (and d!1523573 (not res!2021541)) b!4766444))

(assert (=> d!1523573 m!5737172))

(assert (=> b!4766442 m!5737158))

(assert (=> b!4766442 m!5737160))

(assert (=> b!4766442 m!5737160))

(assert (=> b!4766442 m!5737162))

(assert (=> b!4766444 m!5737160))

(assert (=> b!4766444 m!5737160))

(assert (=> b!4766444 m!5737162))

(assert (=> b!4766365 d!1523573))

(declare-fun d!1523575 () Bool)

(assert (=> d!1523575 (dynLambda!21948 lambda!224313 lt!1929152)))

(declare-fun lt!1929219 () Unit!138209)

(assert (=> d!1523575 (= lt!1929219 (choose!33960 (toList!6283 lt!1929153) lambda!224313 lt!1929152))))

(declare-fun e!2975048 () Bool)

(assert (=> d!1523575 e!2975048))

(declare-fun res!2021542 () Bool)

(assert (=> d!1523575 (=> (not res!2021542) (not e!2975048))))

(assert (=> d!1523575 (= res!2021542 (forall!11874 (toList!6283 lt!1929153) lambda!224313))))

(assert (=> d!1523575 (= (forallContained!3859 (toList!6283 lt!1929153) lambda!224313 lt!1929152) lt!1929219)))

(declare-fun b!4766445 () Bool)

(assert (=> b!4766445 (= e!2975048 (contains!16821 (toList!6283 lt!1929153) lt!1929152))))

(assert (= (and d!1523575 res!2021542) b!4766445))

(declare-fun b_lambda!184333 () Bool)

(assert (=> (not b_lambda!184333) (not d!1523575)))

(declare-fun m!5737244 () Bool)

(assert (=> d!1523575 m!5737244))

(declare-fun m!5737246 () Bool)

(assert (=> d!1523575 m!5737246))

(assert (=> d!1523575 m!5737202))

(assert (=> b!4766445 m!5737144))

(assert (=> b!4766365 d!1523575))

(declare-fun d!1523577 () Bool)

(declare-fun e!2975051 () Bool)

(assert (=> d!1523577 e!2975051))

(declare-fun c!813035 () Bool)

(declare-fun contains!16825 (MutLongMap!4923 (_ BitVec 64)) Bool)

(assert (=> d!1523577 (= c!813035 (contains!16825 (v!47634 (underlying!10054 thiss!42052)) lt!1929151))))

(declare-fun lt!1929222 () List!53602)

(declare-fun apply!12623 (LongMapFixedSize!9846 (_ BitVec 64)) List!53602)

(assert (=> d!1523577 (= lt!1929222 (apply!12623 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))) lt!1929151))))

(declare-fun valid!3924 (MutLongMap!4923) Bool)

(assert (=> d!1523577 (valid!3924 (v!47634 (underlying!10054 thiss!42052)))))

(assert (=> d!1523577 (= (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929151) lt!1929222)))

(declare-fun b!4766450 () Bool)

(assert (=> b!4766450 (= e!2975051 (= lt!1929222 (get!18026 (getValueByKey!2173 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))) lt!1929151))))))

(declare-fun b!4766451 () Bool)

(declare-fun dynLambda!21949 (Int (_ BitVec 64)) List!53602)

(assert (=> b!4766451 (= e!2975051 (= lt!1929222 (dynLambda!21949 (defaultEntry!5341 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052))))) lt!1929151)))))

(assert (=> b!4766451 ((_ is LongMap!4923) (v!47634 (underlying!10054 thiss!42052)))))

(assert (= (and d!1523577 c!813035) b!4766450))

(assert (= (and d!1523577 (not c!813035)) b!4766451))

(declare-fun b_lambda!184335 () Bool)

(assert (=> (not b_lambda!184335) (not b!4766451)))

(declare-fun t!361023 () Bool)

(declare-fun tb!257471 () Bool)

(assert (=> (and b!4766363 (= (defaultEntry!5341 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052))))) (defaultEntry!5341 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052)))))) t!361023) tb!257471))

(assert (=> b!4766451 t!361023))

(declare-fun result!319102 () Bool)

(declare-fun b_and!341343 () Bool)

(assert (= b_and!341339 (and (=> t!361023 result!319102) b_and!341343)))

(declare-fun m!5737248 () Bool)

(assert (=> d!1523577 m!5737248))

(declare-fun m!5737250 () Bool)

(assert (=> d!1523577 m!5737250))

(declare-fun m!5737252 () Bool)

(assert (=> d!1523577 m!5737252))

(assert (=> b!4766450 m!5737120))

(declare-fun m!5737254 () Bool)

(assert (=> b!4766450 m!5737254))

(assert (=> b!4766450 m!5737254))

(declare-fun m!5737256 () Bool)

(assert (=> b!4766450 m!5737256))

(declare-fun m!5737258 () Bool)

(assert (=> b!4766451 m!5737258))

(assert (=> b!4766365 d!1523577))

(declare-fun d!1523579 () Bool)

(assert (=> d!1523579 (= (isDefined!9833 lt!1929154) (not (isEmpty!29277 lt!1929154)))))

(declare-fun bs!1148854 () Bool)

(assert (= bs!1148854 d!1523579))

(declare-fun m!5737260 () Bool)

(assert (=> bs!1148854 m!5737260))

(assert (=> b!4766365 d!1523579))

(declare-fun d!1523581 () Bool)

(assert (=> d!1523581 (contains!16821 (toList!6283 lt!1929153) (tuple2!55519 lt!1929151 lt!1929147))))

(declare-fun lt!1929225 () Unit!138209)

(declare-fun choose!33962 (ListLongMap!4681 (_ BitVec 64) List!53602) Unit!138209)

(assert (=> d!1523581 (= lt!1929225 (choose!33962 lt!1929153 lt!1929151 lt!1929147))))

(assert (=> d!1523581 (contains!16822 lt!1929153 lt!1929151)))

(assert (=> d!1523581 (= (lemmaGetValueImpliesTupleContained!435 lt!1929153 lt!1929151 lt!1929147) lt!1929225)))

(declare-fun bs!1148855 () Bool)

(assert (= bs!1148855 d!1523581))

(declare-fun m!5737262 () Bool)

(assert (=> bs!1148855 m!5737262))

(declare-fun m!5737264 () Bool)

(assert (=> bs!1148855 m!5737264))

(assert (=> bs!1148855 m!5737142))

(assert (=> b!4766365 d!1523581))

(declare-fun d!1523583 () Bool)

(assert (=> d!1523583 (= (isDefined!9833 lt!1929162) (not (isEmpty!29277 lt!1929162)))))

(declare-fun bs!1148856 () Bool)

(assert (= bs!1148856 d!1523583))

(declare-fun m!5737266 () Bool)

(assert (=> bs!1148856 m!5737266))

(assert (=> b!4766365 d!1523583))

(declare-fun bs!1148857 () Bool)

(declare-fun d!1523585 () Bool)

(assert (= bs!1148857 (and d!1523585 b!4766365)))

(declare-fun lambda!224336 () Int)

(assert (=> bs!1148857 (= lambda!224336 lambda!224313)))

(declare-fun bs!1148858 () Bool)

(assert (= bs!1148858 (and d!1523585 d!1523557)))

(assert (=> bs!1148858 (= lambda!224336 lambda!224316)))

(declare-fun bs!1148859 () Bool)

(assert (= bs!1148859 (and d!1523585 d!1523569)))

(assert (=> bs!1148859 (= lambda!224336 lambda!224323)))

(declare-fun lt!1929267 () (_ BitVec 64))

(declare-fun e!2975066 () Bool)

(declare-fun b!4766473 () Bool)

(declare-fun lt!1929261 () List!53602)

(assert (=> b!4766473 (= e!2975066 (= (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929267) (Some!12662 lt!1929261)))))

(declare-fun b!4766474 () Bool)

(declare-fun res!2021572 () Bool)

(declare-fun e!2975065 () Bool)

(assert (=> b!4766474 (=> (not res!2021572) (not e!2975065))))

(assert (=> b!4766474 (= res!2021572 (contains!16824 (extractMap!2142 (toList!6283 lt!1929153)) key!1776))))

(declare-fun b!4766475 () Bool)

(declare-fun res!2021564 () Bool)

(declare-fun e!2975062 () Bool)

(assert (=> b!4766475 (=> (not res!2021564) (not e!2975062))))

(assert (=> b!4766475 (= res!2021564 (allKeysSameHashInMap!2020 lt!1929153 (hashF!12421 thiss!42052)))))

(declare-fun b!4766476 () Bool)

(assert (=> b!4766476 (= e!2975062 (= (_2!31052 (get!18024 (getPair!643 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)) key!1776))) (get!18025 (getValueByKey!2174 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))) key!1776))))))

(declare-fun lt!1929262 () Unit!138209)

(declare-fun lt!1929260 () Unit!138209)

(assert (=> b!4766476 (= lt!1929262 lt!1929260)))

(assert (=> b!4766476 e!2975065))

(declare-fun res!2021566 () Bool)

(assert (=> b!4766476 (=> (not res!2021566) (not e!2975065))))

(assert (=> b!4766476 (= res!2021566 (forall!11874 (toList!6283 lt!1929153) lambda!224336))))

(assert (=> b!4766476 (= lt!1929260 (lemmaInGenMapThenGetPairDefined!426 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(declare-fun e!2975064 () Bool)

(assert (=> b!4766476 e!2975064))

(declare-fun res!2021568 () Bool)

(assert (=> b!4766476 (=> (not res!2021568) (not e!2975064))))

(assert (=> b!4766476 (= res!2021568 (forall!11874 (toList!6283 lt!1929153) lambda!224336))))

(declare-fun lt!1929275 () Unit!138209)

(assert (=> b!4766476 (= lt!1929275 (forallContained!3859 (toList!6283 lt!1929153) lambda!224336 (tuple2!55519 (hash!4566 (hashF!12421 thiss!42052) key!1776) (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))))

(declare-fun lt!1929268 () Unit!138209)

(declare-fun lt!1929272 () Unit!138209)

(assert (=> b!4766476 (= lt!1929268 lt!1929272)))

(assert (=> b!4766476 (contains!16821 (toList!6283 lt!1929153) (tuple2!55519 lt!1929267 lt!1929261))))

(assert (=> b!4766476 (= lt!1929272 (lemmaGetValueImpliesTupleContained!435 lt!1929153 lt!1929267 lt!1929261))))

(assert (=> b!4766476 e!2975066))

(declare-fun res!2021565 () Bool)

(assert (=> b!4766476 (=> (not res!2021565) (not e!2975066))))

(assert (=> b!4766476 (= res!2021565 (contains!16822 lt!1929153 lt!1929267))))

(assert (=> b!4766476 (= lt!1929261 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))

(assert (=> b!4766476 (= lt!1929267 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun lt!1929273 () Unit!138209)

(declare-fun lt!1929263 () Unit!138209)

(assert (=> b!4766476 (= lt!1929273 lt!1929263)))

(assert (=> b!4766476 (contains!16822 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(assert (=> b!4766476 (= lt!1929263 (lemmaInGenMapThenLongMapContainsHash!836 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(assert (=> d!1523585 e!2975062))

(declare-fun res!2021571 () Bool)

(assert (=> d!1523585 (=> (not res!2021571) (not e!2975062))))

(assert (=> d!1523585 (= res!2021571 (forall!11874 (toList!6283 lt!1929153) lambda!224336))))

(declare-fun lt!1929264 () Unit!138209)

(declare-fun choose!33963 (ListLongMap!4681 K!14949 V!15195 Hashable!6584) Unit!138209)

(assert (=> d!1523585 (= lt!1929264 (choose!33963 lt!1929153 key!1776 (_2!31052 (get!18024 lt!1929154)) (hashF!12421 thiss!42052)))))

(assert (=> d!1523585 (forall!11874 (toList!6283 lt!1929153) lambda!224336)))

(assert (=> d!1523585 (= (lemmaGetPairGetSameValueAsMap!58 lt!1929153 key!1776 (_2!31052 (get!18024 lt!1929154)) (hashF!12421 thiss!42052)) lt!1929264)))

(declare-fun b!4766477 () Bool)

(declare-fun e!2975063 () Bool)

(declare-fun lt!1929265 () List!53602)

(declare-fun lt!1929274 () (_ BitVec 64))

(assert (=> b!4766477 (= e!2975063 (= (getValueByKey!2173 (toList!6283 lt!1929153) lt!1929274) (Some!12662 lt!1929265)))))

(declare-fun b!4766478 () Bool)

(declare-fun res!2021569 () Bool)

(assert (=> b!4766478 (=> (not res!2021569) (not e!2975062))))

(assert (=> b!4766478 (= res!2021569 (contains!16824 (extractMap!2142 (toList!6283 lt!1929153)) key!1776))))

(declare-fun b!4766479 () Bool)

(declare-fun res!2021567 () Bool)

(assert (=> b!4766479 (=> (not res!2021567) (not e!2975065))))

(assert (=> b!4766479 (= res!2021567 (allKeysSameHashInMap!2020 lt!1929153 (hashF!12421 thiss!42052)))))

(declare-fun b!4766480 () Bool)

(assert (=> b!4766480 (= e!2975064 (contains!16824 (extractMap!2142 (toList!6283 lt!1929153)) key!1776))))

(declare-fun b!4766481 () Bool)

(declare-fun res!2021563 () Bool)

(assert (=> b!4766481 (=> (not res!2021563) (not e!2975064))))

(assert (=> b!4766481 (= res!2021563 (allKeysSameHashInMap!2020 lt!1929153 (hashF!12421 thiss!42052)))))

(declare-fun b!4766482 () Bool)

(assert (=> b!4766482 (= e!2975065 (isDefined!9833 (getPair!643 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)) key!1776)))))

(declare-fun lt!1929269 () Unit!138209)

(assert (=> b!4766482 (= lt!1929269 (forallContained!3859 (toList!6283 lt!1929153) lambda!224336 (tuple2!55519 (hash!4566 (hashF!12421 thiss!42052) key!1776) (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))))

(declare-fun lt!1929271 () Unit!138209)

(declare-fun lt!1929270 () Unit!138209)

(assert (=> b!4766482 (= lt!1929271 lt!1929270)))

(assert (=> b!4766482 (contains!16821 (toList!6283 lt!1929153) (tuple2!55519 lt!1929274 lt!1929265))))

(assert (=> b!4766482 (= lt!1929270 (lemmaGetValueImpliesTupleContained!435 lt!1929153 lt!1929274 lt!1929265))))

(assert (=> b!4766482 e!2975063))

(declare-fun res!2021570 () Bool)

(assert (=> b!4766482 (=> (not res!2021570) (not e!2975063))))

(assert (=> b!4766482 (= res!2021570 (contains!16822 lt!1929153 lt!1929274))))

(assert (=> b!4766482 (= lt!1929265 (apply!12621 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776)))))

(assert (=> b!4766482 (= lt!1929274 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun lt!1929276 () Unit!138209)

(declare-fun lt!1929266 () Unit!138209)

(assert (=> b!4766482 (= lt!1929276 lt!1929266)))

(assert (=> b!4766482 (contains!16822 lt!1929153 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(assert (=> b!4766482 (= lt!1929266 (lemmaInGenMapThenLongMapContainsHash!836 lt!1929153 key!1776 (hashF!12421 thiss!42052)))))

(assert (= (and d!1523585 res!2021571) b!4766475))

(assert (= (and b!4766475 res!2021564) b!4766478))

(assert (= (and b!4766478 res!2021569) b!4766476))

(assert (= (and b!4766476 res!2021565) b!4766473))

(assert (= (and b!4766476 res!2021568) b!4766481))

(assert (= (and b!4766481 res!2021563) b!4766480))

(assert (= (and b!4766476 res!2021566) b!4766479))

(assert (= (and b!4766479 res!2021567) b!4766474))

(assert (= (and b!4766474 res!2021572) b!4766482))

(assert (= (and b!4766482 res!2021570) b!4766477))

(assert (=> b!4766479 m!5737226))

(declare-fun m!5737268 () Bool)

(assert (=> b!4766482 m!5737268))

(assert (=> b!4766482 m!5737228))

(assert (=> b!4766482 m!5737230))

(assert (=> b!4766482 m!5737130))

(assert (=> b!4766482 m!5737188))

(assert (=> b!4766482 m!5737230))

(assert (=> b!4766482 m!5737234))

(assert (=> b!4766482 m!5737134))

(assert (=> b!4766482 m!5737130))

(declare-fun m!5737270 () Bool)

(assert (=> b!4766482 m!5737270))

(declare-fun m!5737272 () Bool)

(assert (=> b!4766482 m!5737272))

(assert (=> b!4766482 m!5737130))

(assert (=> b!4766482 m!5737228))

(declare-fun m!5737274 () Bool)

(assert (=> b!4766482 m!5737274))

(declare-fun m!5737276 () Bool)

(assert (=> b!4766473 m!5737276))

(assert (=> b!4766476 m!5737230))

(declare-fun m!5737278 () Bool)

(assert (=> b!4766476 m!5737278))

(declare-fun m!5737280 () Bool)

(assert (=> b!4766476 m!5737280))

(assert (=> b!4766476 m!5737270))

(assert (=> b!4766476 m!5737228))

(assert (=> b!4766476 m!5737230))

(declare-fun m!5737282 () Bool)

(assert (=> b!4766476 m!5737282))

(assert (=> b!4766476 m!5737110))

(assert (=> b!4766476 m!5737112))

(assert (=> b!4766476 m!5737280))

(assert (=> b!4766476 m!5737130))

(assert (=> b!4766476 m!5737228))

(assert (=> b!4766476 m!5737130))

(assert (=> b!4766476 m!5737188))

(assert (=> b!4766476 m!5737110))

(assert (=> b!4766476 m!5737134))

(assert (=> b!4766476 m!5737130))

(assert (=> b!4766476 m!5737140))

(declare-fun m!5737284 () Bool)

(assert (=> b!4766476 m!5737284))

(assert (=> b!4766476 m!5737108))

(declare-fun m!5737286 () Bool)

(assert (=> b!4766476 m!5737286))

(assert (=> b!4766480 m!5737108))

(assert (=> b!4766480 m!5737108))

(assert (=> b!4766480 m!5737224))

(assert (=> b!4766475 m!5737226))

(assert (=> d!1523585 m!5737280))

(declare-fun m!5737288 () Bool)

(assert (=> d!1523585 m!5737288))

(assert (=> d!1523585 m!5737280))

(assert (=> b!4766474 m!5737108))

(assert (=> b!4766474 m!5737108))

(assert (=> b!4766474 m!5737224))

(declare-fun m!5737290 () Bool)

(assert (=> b!4766477 m!5737290))

(assert (=> b!4766481 m!5737226))

(assert (=> b!4766478 m!5737108))

(assert (=> b!4766478 m!5737108))

(assert (=> b!4766478 m!5737224))

(assert (=> b!4766365 d!1523585))

(declare-fun d!1523587 () Bool)

(declare-fun lt!1929277 () Bool)

(assert (=> d!1523587 (= lt!1929277 (select (content!9585 (toList!6283 lt!1929153)) lt!1929163))))

(declare-fun e!2975067 () Bool)

(assert (=> d!1523587 (= lt!1929277 e!2975067)))

(declare-fun res!2021574 () Bool)

(assert (=> d!1523587 (=> (not res!2021574) (not e!2975067))))

(assert (=> d!1523587 (= res!2021574 ((_ is Cons!53479) (toList!6283 lt!1929153)))))

(assert (=> d!1523587 (= (contains!16821 (toList!6283 lt!1929153) lt!1929163) lt!1929277)))

(declare-fun b!4766483 () Bool)

(declare-fun e!2975068 () Bool)

(assert (=> b!4766483 (= e!2975067 e!2975068)))

(declare-fun res!2021573 () Bool)

(assert (=> b!4766483 (=> res!2021573 e!2975068)))

(assert (=> b!4766483 (= res!2021573 (= (h!59891 (toList!6283 lt!1929153)) lt!1929163))))

(declare-fun b!4766484 () Bool)

(assert (=> b!4766484 (= e!2975068 (contains!16821 (t!361021 (toList!6283 lt!1929153)) lt!1929163))))

(assert (= (and d!1523587 res!2021574) b!4766483))

(assert (= (and b!4766483 (not res!2021573)) b!4766484))

(assert (=> d!1523587 m!5737182))

(declare-fun m!5737292 () Bool)

(assert (=> d!1523587 m!5737292))

(declare-fun m!5737294 () Bool)

(assert (=> b!4766484 m!5737294))

(assert (=> b!4766365 d!1523587))

(declare-fun b!4766485 () Bool)

(declare-fun res!2021578 () Bool)

(declare-fun e!2975070 () Bool)

(assert (=> b!4766485 (=> (not res!2021578) (not e!2975070))))

(declare-fun lt!1929278 () Option!12664)

(assert (=> b!4766485 (= res!2021578 (= (_1!31052 (get!18024 lt!1929278)) key!1776))))

(declare-fun b!4766486 () Bool)

(declare-fun e!2975073 () Bool)

(assert (=> b!4766486 (= e!2975073 (not (containsKey!3662 lt!1929147 key!1776)))))

(declare-fun b!4766487 () Bool)

(declare-fun e!2975069 () Option!12664)

(assert (=> b!4766487 (= e!2975069 (getPair!643 (t!361020 lt!1929147) key!1776))))

(declare-fun d!1523589 () Bool)

(declare-fun e!2975072 () Bool)

(assert (=> d!1523589 e!2975072))

(declare-fun res!2021577 () Bool)

(assert (=> d!1523589 (=> res!2021577 e!2975072)))

(assert (=> d!1523589 (= res!2021577 e!2975073)))

(declare-fun res!2021576 () Bool)

(assert (=> d!1523589 (=> (not res!2021576) (not e!2975073))))

(assert (=> d!1523589 (= res!2021576 (isEmpty!29277 lt!1929278))))

(declare-fun e!2975071 () Option!12664)

(assert (=> d!1523589 (= lt!1929278 e!2975071)))

(declare-fun c!813036 () Bool)

(assert (=> d!1523589 (= c!813036 (and ((_ is Cons!53478) lt!1929147) (= (_1!31052 (h!59890 lt!1929147)) key!1776)))))

(assert (=> d!1523589 (noDuplicateKeys!2252 lt!1929147)))

(assert (=> d!1523589 (= (getPair!643 lt!1929147 key!1776) lt!1929278)))

(declare-fun b!4766488 () Bool)

(assert (=> b!4766488 (= e!2975071 (Some!12663 (h!59890 lt!1929147)))))

(declare-fun b!4766489 () Bool)

(assert (=> b!4766489 (= e!2975071 e!2975069)))

(declare-fun c!813037 () Bool)

(assert (=> b!4766489 (= c!813037 ((_ is Cons!53478) lt!1929147))))

(declare-fun b!4766490 () Bool)

(assert (=> b!4766490 (= e!2975070 (contains!16823 lt!1929147 (get!18024 lt!1929278)))))

(declare-fun b!4766491 () Bool)

(assert (=> b!4766491 (= e!2975069 None!12663)))

(declare-fun b!4766492 () Bool)

(assert (=> b!4766492 (= e!2975072 e!2975070)))

(declare-fun res!2021575 () Bool)

(assert (=> b!4766492 (=> (not res!2021575) (not e!2975070))))

(assert (=> b!4766492 (= res!2021575 (isDefined!9833 lt!1929278))))

(assert (= (and d!1523589 c!813036) b!4766488))

(assert (= (and d!1523589 (not c!813036)) b!4766489))

(assert (= (and b!4766489 c!813037) b!4766487))

(assert (= (and b!4766489 (not c!813037)) b!4766491))

(assert (= (and d!1523589 res!2021576) b!4766486))

(assert (= (and d!1523589 (not res!2021577)) b!4766492))

(assert (= (and b!4766492 res!2021575) b!4766485))

(assert (= (and b!4766485 res!2021578) b!4766490))

(declare-fun m!5737296 () Bool)

(assert (=> b!4766485 m!5737296))

(declare-fun m!5737298 () Bool)

(assert (=> b!4766492 m!5737298))

(declare-fun m!5737300 () Bool)

(assert (=> d!1523589 m!5737300))

(declare-fun m!5737302 () Bool)

(assert (=> d!1523589 m!5737302))

(declare-fun m!5737304 () Bool)

(assert (=> b!4766486 m!5737304))

(assert (=> b!4766490 m!5737296))

(assert (=> b!4766490 m!5737296))

(declare-fun m!5737306 () Bool)

(assert (=> b!4766490 m!5737306))

(declare-fun m!5737308 () Bool)

(assert (=> b!4766487 m!5737308))

(assert (=> b!4766365 d!1523589))

(declare-fun bs!1148860 () Bool)

(declare-fun b!4766522 () Bool)

(assert (= bs!1148860 (and b!4766522 b!4766365)))

(declare-fun lambda!224339 () Int)

(assert (=> bs!1148860 (= lambda!224339 lambda!224313)))

(declare-fun bs!1148861 () Bool)

(assert (= bs!1148861 (and b!4766522 d!1523557)))

(assert (=> bs!1148861 (= lambda!224339 lambda!224316)))

(declare-fun bs!1148862 () Bool)

(assert (= bs!1148862 (and b!4766522 d!1523569)))

(assert (=> bs!1148862 (= lambda!224339 lambda!224323)))

(declare-fun bs!1148863 () Bool)

(assert (= bs!1148863 (and b!4766522 d!1523585)))

(assert (=> bs!1148863 (= lambda!224339 lambda!224336)))

(declare-fun bm!334172 () Bool)

(declare-fun call!334182 () Bool)

(declare-fun call!334178 () Option!12664)

(assert (=> bm!334172 (= call!334182 (isDefined!9833 call!334178))))

(declare-fun call!334179 () Bool)

(declare-fun call!334180 () (_ BitVec 64))

(declare-fun c!813048 () Bool)

(declare-fun lt!1929327 () ListLongMap!4681)

(declare-fun call!334181 () ListLongMap!4681)

(declare-fun bm!334173 () Bool)

(assert (=> bm!334173 (= call!334179 (contains!16822 (ite c!813048 lt!1929327 call!334181) call!334180))))

(declare-fun b!4766516 () Bool)

(declare-fun e!2975093 () Unit!138209)

(declare-fun Unit!138214 () Unit!138209)

(assert (=> b!4766516 (= e!2975093 Unit!138214)))

(declare-fun b!4766517 () Bool)

(assert (=> b!4766517 false))

(declare-fun lt!1929336 () Unit!138209)

(declare-fun lt!1929333 () Unit!138209)

(assert (=> b!4766517 (= lt!1929336 lt!1929333)))

(declare-fun lt!1929329 () ListLongMap!4681)

(assert (=> b!4766517 (contains!16824 (extractMap!2142 (toList!6283 lt!1929329)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!200 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> b!4766517 (= lt!1929333 (lemmaInLongMapThenInGenericMap!200 lt!1929329 key!1776 (hashF!12421 thiss!42052)))))

(assert (=> b!4766517 (= lt!1929329 call!334181)))

(declare-fun e!2975094 () Unit!138209)

(declare-fun Unit!138215 () Unit!138209)

(assert (=> b!4766517 (= e!2975094 Unit!138215)))

(declare-fun b!4766518 () Bool)

(declare-fun e!2975090 () Unit!138209)

(declare-fun lt!1929325 () Unit!138209)

(assert (=> b!4766518 (= e!2975090 lt!1929325)))

(assert (=> b!4766518 (= lt!1929327 call!334181)))

(declare-fun lemmaInGenericMapThenInLongMap!200 (ListLongMap!4681 K!14949 Hashable!6584) Unit!138209)

(assert (=> b!4766518 (= lt!1929325 (lemmaInGenericMapThenInLongMap!200 lt!1929327 key!1776 (hashF!12421 thiss!42052)))))

(declare-fun res!2021585 () Bool)

(assert (=> b!4766518 (= res!2021585 call!334179)))

(declare-fun e!2975092 () Bool)

(assert (=> b!4766518 (=> (not res!2021585) (not e!2975092))))

(assert (=> b!4766518 e!2975092))

(declare-fun b!4766519 () Bool)

(declare-fun e!2975091 () Unit!138209)

(declare-fun Unit!138216 () Unit!138209)

(assert (=> b!4766519 (= e!2975091 Unit!138216)))

(declare-fun b!4766520 () Bool)

(assert (=> b!4766520 (= e!2975090 e!2975094)))

(declare-fun res!2021587 () Bool)

(assert (=> b!4766520 (= res!2021587 call!334179)))

(declare-fun e!2975089 () Bool)

(assert (=> b!4766520 (=> (not res!2021587) (not e!2975089))))

(declare-fun c!813049 () Bool)

(assert (=> b!4766520 (= c!813049 e!2975089)))

(declare-fun bm!334174 () Bool)

(assert (=> bm!334174 (= call!334180 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(declare-fun b!4766521 () Bool)

(declare-fun Unit!138217 () Unit!138209)

(assert (=> b!4766521 (= e!2975094 Unit!138217)))

(declare-fun bm!334175 () Bool)

(assert (=> bm!334175 (= call!334181 (map!11979 (v!47634 (underlying!10054 thiss!42052))))))

(declare-fun bm!334176 () Bool)

(declare-fun call!334177 () List!53602)

(assert (=> bm!334176 (= call!334178 (getPair!643 call!334177 key!1776))))

(declare-fun lt!1929334 () (_ BitVec 64))

(assert (=> b!4766522 (= e!2975093 (forallContained!3859 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))) lambda!224339 (tuple2!55519 lt!1929334 (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929334))))))

(declare-fun c!813047 () Bool)

(assert (=> b!4766522 (= c!813047 (not (contains!16821 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))) (tuple2!55519 lt!1929334 (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929334)))))))

(declare-fun lt!1929330 () Unit!138209)

(assert (=> b!4766522 (= lt!1929330 e!2975091)))

(declare-fun d!1523591 () Bool)

(declare-fun lt!1929328 () Bool)

(declare-fun map!11981 (MutableMap!4807) ListMap!5779)

(assert (=> d!1523591 (= lt!1929328 (contains!16824 (map!11981 thiss!42052) key!1776))))

(declare-fun e!2975088 () Bool)

(assert (=> d!1523591 (= lt!1929328 e!2975088)))

(declare-fun res!2021586 () Bool)

(assert (=> d!1523591 (=> (not res!2021586) (not e!2975088))))

(assert (=> d!1523591 (= res!2021586 (contains!16825 (v!47634 (underlying!10054 thiss!42052)) lt!1929334))))

(declare-fun lt!1929320 () Unit!138209)

(assert (=> d!1523591 (= lt!1929320 e!2975090)))

(assert (=> d!1523591 (= c!813048 (contains!16824 (extractMap!2142 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052))))) key!1776))))

(declare-fun lt!1929322 () Unit!138209)

(assert (=> d!1523591 (= lt!1929322 e!2975093)))

(declare-fun c!813046 () Bool)

(assert (=> d!1523591 (= c!813046 (contains!16825 (v!47634 (underlying!10054 thiss!42052)) lt!1929334))))

(assert (=> d!1523591 (= lt!1929334 (hash!4566 (hashF!12421 thiss!42052) key!1776))))

(assert (=> d!1523591 (valid!3923 thiss!42052)))

(assert (=> d!1523591 (= (contains!16820 thiss!42052 key!1776) lt!1929328)))

(declare-fun b!4766515 () Bool)

(assert (=> b!4766515 (= e!2975089 call!334182)))

(declare-fun b!4766523 () Bool)

(assert (=> b!4766523 (= e!2975092 call!334182)))

(declare-fun bm!334177 () Bool)

(assert (=> bm!334177 (= call!334177 (apply!12621 (ite c!813048 lt!1929327 call!334181) call!334180))))

(declare-fun b!4766524 () Bool)

(assert (=> b!4766524 (= e!2975088 (isDefined!9833 (getPair!643 (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929334) key!1776)))))

(declare-fun b!4766525 () Bool)

(assert (=> b!4766525 false))

(declare-fun lt!1929331 () Unit!138209)

(declare-fun lt!1929332 () Unit!138209)

(assert (=> b!4766525 (= lt!1929331 lt!1929332)))

(declare-fun lt!1929335 () List!53603)

(declare-fun lt!1929319 () List!53602)

(assert (=> b!4766525 (contains!16821 lt!1929335 (tuple2!55519 lt!1929334 lt!1929319))))

(assert (=> b!4766525 (= lt!1929332 (lemmaGetValueByKeyImpliesContainsTuple!927 lt!1929335 lt!1929334 lt!1929319))))

(assert (=> b!4766525 (= lt!1929319 (apply!12622 (v!47634 (underlying!10054 thiss!42052)) lt!1929334))))

(assert (=> b!4766525 (= lt!1929335 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))))))

(declare-fun lt!1929326 () Unit!138209)

(declare-fun lt!1929324 () Unit!138209)

(assert (=> b!4766525 (= lt!1929326 lt!1929324)))

(declare-fun lt!1929321 () List!53603)

(assert (=> b!4766525 (isDefined!9832 (getValueByKey!2173 lt!1929321 lt!1929334))))

(assert (=> b!4766525 (= lt!1929324 (lemmaContainsKeyImpliesGetValueByKeyDefined!1983 lt!1929321 lt!1929334))))

(assert (=> b!4766525 (= lt!1929321 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))))))

(declare-fun lt!1929323 () Unit!138209)

(declare-fun lt!1929337 () Unit!138209)

(assert (=> b!4766525 (= lt!1929323 lt!1929337)))

(declare-fun lt!1929338 () List!53603)

(assert (=> b!4766525 (containsKey!3661 lt!1929338 lt!1929334)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!201 (List!53603 (_ BitVec 64)) Unit!138209)

(assert (=> b!4766525 (= lt!1929337 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!201 lt!1929338 lt!1929334))))

(assert (=> b!4766525 (= lt!1929338 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))))))

(declare-fun Unit!138218 () Unit!138209)

(assert (=> b!4766525 (= e!2975091 Unit!138218)))

(assert (= (and d!1523591 c!813046) b!4766522))

(assert (= (and d!1523591 (not c!813046)) b!4766516))

(assert (= (and b!4766522 c!813047) b!4766525))

(assert (= (and b!4766522 (not c!813047)) b!4766519))

(assert (= (and d!1523591 c!813048) b!4766518))

(assert (= (and d!1523591 (not c!813048)) b!4766520))

(assert (= (and b!4766518 res!2021585) b!4766523))

(assert (= (and b!4766520 res!2021587) b!4766515))

(assert (= (and b!4766520 c!813049) b!4766517))

(assert (= (and b!4766520 (not c!813049)) b!4766521))

(assert (= (or b!4766518 b!4766523 b!4766520 b!4766515) bm!334174))

(assert (= (or b!4766518 b!4766520 b!4766515 b!4766517) bm!334175))

(assert (= (or b!4766523 b!4766515) bm!334177))

(assert (= (or b!4766518 b!4766520) bm!334173))

(assert (= (or b!4766523 b!4766515) bm!334176))

(assert (= (or b!4766523 b!4766515) bm!334172))

(assert (= (and d!1523591 res!2021586) b!4766524))

(assert (=> bm!334175 m!5737120))

(assert (=> b!4766522 m!5737120))

(declare-fun m!5737310 () Bool)

(assert (=> b!4766522 m!5737310))

(declare-fun m!5737312 () Bool)

(assert (=> b!4766522 m!5737312))

(declare-fun m!5737314 () Bool)

(assert (=> b!4766522 m!5737314))

(assert (=> b!4766524 m!5737310))

(assert (=> b!4766524 m!5737310))

(declare-fun m!5737316 () Bool)

(assert (=> b!4766524 m!5737316))

(assert (=> b!4766524 m!5737316))

(declare-fun m!5737318 () Bool)

(assert (=> b!4766524 m!5737318))

(declare-fun m!5737320 () Bool)

(assert (=> bm!334172 m!5737320))

(assert (=> bm!334174 m!5737130))

(declare-fun m!5737322 () Bool)

(assert (=> b!4766518 m!5737322))

(declare-fun m!5737324 () Bool)

(assert (=> d!1523591 m!5737324))

(assert (=> d!1523591 m!5737150))

(assert (=> d!1523591 m!5737130))

(declare-fun m!5737326 () Bool)

(assert (=> d!1523591 m!5737326))

(declare-fun m!5737328 () Bool)

(assert (=> d!1523591 m!5737328))

(assert (=> d!1523591 m!5737326))

(declare-fun m!5737330 () Bool)

(assert (=> d!1523591 m!5737330))

(assert (=> d!1523591 m!5737120))

(assert (=> d!1523591 m!5737324))

(declare-fun m!5737332 () Bool)

(assert (=> d!1523591 m!5737332))

(declare-fun m!5737334 () Bool)

(assert (=> bm!334173 m!5737334))

(declare-fun m!5737336 () Bool)

(assert (=> bm!334177 m!5737336))

(declare-fun m!5737338 () Bool)

(assert (=> bm!334176 m!5737338))

(declare-fun m!5737340 () Bool)

(assert (=> b!4766517 m!5737340))

(assert (=> b!4766517 m!5737340))

(declare-fun m!5737342 () Bool)

(assert (=> b!4766517 m!5737342))

(declare-fun m!5737344 () Bool)

(assert (=> b!4766517 m!5737344))

(declare-fun m!5737346 () Bool)

(assert (=> b!4766525 m!5737346))

(declare-fun m!5737348 () Bool)

(assert (=> b!4766525 m!5737348))

(assert (=> b!4766525 m!5737346))

(assert (=> b!4766525 m!5737310))

(declare-fun m!5737350 () Bool)

(assert (=> b!4766525 m!5737350))

(declare-fun m!5737352 () Bool)

(assert (=> b!4766525 m!5737352))

(declare-fun m!5737354 () Bool)

(assert (=> b!4766525 m!5737354))

(declare-fun m!5737356 () Bool)

(assert (=> b!4766525 m!5737356))

(declare-fun m!5737358 () Bool)

(assert (=> b!4766525 m!5737358))

(assert (=> b!4766525 m!5737120))

(assert (=> b!4766361 d!1523591))

(declare-fun d!1523593 () Bool)

(assert (=> d!1523593 (= (get!18024 lt!1929162) (v!47636 lt!1929162))))

(assert (=> b!4766371 d!1523593))

(declare-fun d!1523595 () Bool)

(assert (=> d!1523595 (= (get!18025 (getValueByKey!2174 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))) key!1776)) (v!47637 (getValueByKey!2174 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))) key!1776)))))

(assert (=> b!4766371 d!1523595))

(declare-fun b!4766534 () Bool)

(declare-fun e!2975099 () Option!12665)

(assert (=> b!4766534 (= e!2975099 (Some!12664 (_2!31052 (h!59890 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153)))))))))

(declare-fun b!4766537 () Bool)

(declare-fun e!2975100 () Option!12665)

(assert (=> b!4766537 (= e!2975100 None!12664)))

(declare-fun b!4766536 () Bool)

(assert (=> b!4766536 (= e!2975100 (getValueByKey!2174 (t!361020 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153)))) key!1776))))

(declare-fun b!4766535 () Bool)

(assert (=> b!4766535 (= e!2975099 e!2975100)))

(declare-fun c!813055 () Bool)

(assert (=> b!4766535 (= c!813055 (and ((_ is Cons!53478) (toList!6284 (extractMap!2142 (toList!6283 lt!1929153)))) (not (= (_1!31052 (h!59890 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))))) key!1776))))))

(declare-fun d!1523597 () Bool)

(declare-fun c!813054 () Bool)

(assert (=> d!1523597 (= c!813054 (and ((_ is Cons!53478) (toList!6284 (extractMap!2142 (toList!6283 lt!1929153)))) (= (_1!31052 (h!59890 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))))) key!1776)))))

(assert (=> d!1523597 (= (getValueByKey!2174 (toList!6284 (extractMap!2142 (toList!6283 lt!1929153))) key!1776) e!2975099)))

(assert (= (and d!1523597 c!813054) b!4766534))

(assert (= (and d!1523597 (not c!813054)) b!4766535))

(assert (= (and b!4766535 c!813055) b!4766536))

(assert (= (and b!4766535 (not c!813055)) b!4766537))

(declare-fun m!5737360 () Bool)

(assert (=> b!4766536 m!5737360))

(assert (=> b!4766371 d!1523597))

(declare-fun bs!1148864 () Bool)

(declare-fun d!1523599 () Bool)

(assert (= bs!1148864 (and d!1523599 b!4766522)))

(declare-fun lambda!224342 () Int)

(assert (=> bs!1148864 (= lambda!224342 lambda!224339)))

(declare-fun bs!1148865 () Bool)

(assert (= bs!1148865 (and d!1523599 b!4766365)))

(assert (=> bs!1148865 (= lambda!224342 lambda!224313)))

(declare-fun bs!1148866 () Bool)

(assert (= bs!1148866 (and d!1523599 d!1523557)))

(assert (=> bs!1148866 (= lambda!224342 lambda!224316)))

(declare-fun bs!1148867 () Bool)

(assert (= bs!1148867 (and d!1523599 d!1523585)))

(assert (=> bs!1148867 (= lambda!224342 lambda!224336)))

(declare-fun bs!1148868 () Bool)

(assert (= bs!1148868 (and d!1523599 d!1523569)))

(assert (=> bs!1148868 (= lambda!224342 lambda!224323)))

(declare-fun lt!1929341 () ListMap!5779)

(declare-fun invariantList!1659 (List!53602) Bool)

(assert (=> d!1523599 (invariantList!1659 (toList!6284 lt!1929341))))

(declare-fun e!2975103 () ListMap!5779)

(assert (=> d!1523599 (= lt!1929341 e!2975103)))

(declare-fun c!813058 () Bool)

(assert (=> d!1523599 (= c!813058 ((_ is Cons!53479) (toList!6283 lt!1929153)))))

(assert (=> d!1523599 (forall!11874 (toList!6283 lt!1929153) lambda!224342)))

(assert (=> d!1523599 (= (extractMap!2142 (toList!6283 lt!1929153)) lt!1929341)))

(declare-fun b!4766542 () Bool)

(declare-fun addToMapMapFromBucket!1624 (List!53602 ListMap!5779) ListMap!5779)

(assert (=> b!4766542 (= e!2975103 (addToMapMapFromBucket!1624 (_2!31053 (h!59891 (toList!6283 lt!1929153))) (extractMap!2142 (t!361021 (toList!6283 lt!1929153)))))))

(declare-fun b!4766543 () Bool)

(assert (=> b!4766543 (= e!2975103 (ListMap!5780 Nil!53478))))

(assert (= (and d!1523599 c!813058) b!4766542))

(assert (= (and d!1523599 (not c!813058)) b!4766543))

(declare-fun m!5737362 () Bool)

(assert (=> d!1523599 m!5737362))

(declare-fun m!5737364 () Bool)

(assert (=> d!1523599 m!5737364))

(declare-fun m!5737366 () Bool)

(assert (=> b!4766542 m!5737366))

(assert (=> b!4766542 m!5737366))

(declare-fun m!5737368 () Bool)

(assert (=> b!4766542 m!5737368))

(assert (=> b!4766371 d!1523599))

(declare-fun bs!1148869 () Bool)

(declare-fun b!4766548 () Bool)

(assert (= bs!1148869 (and b!4766548 b!4766522)))

(declare-fun lambda!224345 () Int)

(assert (=> bs!1148869 (= lambda!224345 lambda!224339)))

(declare-fun bs!1148870 () Bool)

(assert (= bs!1148870 (and b!4766548 b!4766365)))

(assert (=> bs!1148870 (= lambda!224345 lambda!224313)))

(declare-fun bs!1148871 () Bool)

(assert (= bs!1148871 (and b!4766548 d!1523557)))

(assert (=> bs!1148871 (= lambda!224345 lambda!224316)))

(declare-fun bs!1148872 () Bool)

(assert (= bs!1148872 (and b!4766548 d!1523599)))

(assert (=> bs!1148872 (= lambda!224345 lambda!224342)))

(declare-fun bs!1148873 () Bool)

(assert (= bs!1148873 (and b!4766548 d!1523585)))

(assert (=> bs!1148873 (= lambda!224345 lambda!224336)))

(declare-fun bs!1148874 () Bool)

(assert (= bs!1148874 (and b!4766548 d!1523569)))

(assert (=> bs!1148874 (= lambda!224345 lambda!224323)))

(declare-fun d!1523601 () Bool)

(declare-fun res!2021592 () Bool)

(declare-fun e!2975106 () Bool)

(assert (=> d!1523601 (=> (not res!2021592) (not e!2975106))))

(assert (=> d!1523601 (= res!2021592 (valid!3924 (v!47634 (underlying!10054 thiss!42052))))))

(assert (=> d!1523601 (= (valid!3923 thiss!42052) e!2975106)))

(declare-fun res!2021593 () Bool)

(assert (=> b!4766548 (=> (not res!2021593) (not e!2975106))))

(assert (=> b!4766548 (= res!2021593 (forall!11874 (toList!6283 (map!11979 (v!47634 (underlying!10054 thiss!42052)))) lambda!224345))))

(declare-fun b!4766549 () Bool)

(assert (=> b!4766549 (= e!2975106 (allKeysSameHashInMap!2020 (map!11979 (v!47634 (underlying!10054 thiss!42052))) (hashF!12421 thiss!42052)))))

(assert (= (and d!1523601 res!2021592) b!4766548))

(assert (= (and b!4766548 res!2021593) b!4766549))

(assert (=> d!1523601 m!5737252))

(assert (=> b!4766548 m!5737120))

(declare-fun m!5737370 () Bool)

(assert (=> b!4766548 m!5737370))

(assert (=> b!4766549 m!5737120))

(assert (=> b!4766549 m!5737120))

(declare-fun m!5737372 () Bool)

(assert (=> b!4766549 m!5737372))

(assert (=> b!4766367 d!1523601))

(declare-fun tp_is_empty!32439 () Bool)

(declare-fun b!4766554 () Bool)

(declare-fun tp!1355418 () Bool)

(declare-fun e!2975109 () Bool)

(assert (=> b!4766554 (= e!2975109 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355418))))

(assert (=> b!4766372 (= tp!1355412 e!2975109)))

(assert (= (and b!4766372 ((_ is Cons!53478) mapDefault!21845)) b!4766554))

(declare-fun e!2975110 () Bool)

(declare-fun tp!1355419 () Bool)

(declare-fun b!4766555 () Bool)

(assert (=> b!4766555 (= e!2975110 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355419))))

(assert (=> b!4766363 (= tp!1355414 e!2975110)))

(assert (= (and b!4766363 ((_ is Cons!53478) (zeroValue!5211 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052))))))) b!4766555))

(declare-fun b!4766556 () Bool)

(declare-fun e!2975111 () Bool)

(declare-fun tp!1355420 () Bool)

(assert (=> b!4766556 (= e!2975111 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355420))))

(assert (=> b!4766363 (= tp!1355411 e!2975111)))

(assert (= (and b!4766363 ((_ is Cons!53478) (minValue!5211 (v!47633 (underlying!10053 (v!47634 (underlying!10054 thiss!42052))))))) b!4766556))

(declare-fun b!4766564 () Bool)

(declare-fun tp!1355428 () Bool)

(declare-fun e!2975116 () Bool)

(assert (=> b!4766564 (= e!2975116 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355428))))

(declare-fun b!4766563 () Bool)

(declare-fun tp!1355429 () Bool)

(declare-fun e!2975117 () Bool)

(assert (=> b!4766563 (= e!2975117 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355429))))

(declare-fun mapNonEmpty!21848 () Bool)

(declare-fun mapRes!21848 () Bool)

(declare-fun tp!1355427 () Bool)

(assert (=> mapNonEmpty!21848 (= mapRes!21848 (and tp!1355427 e!2975117))))

(declare-fun mapKey!21848 () (_ BitVec 32))

(declare-fun mapRest!21848 () (Array (_ BitVec 32) List!53602))

(declare-fun mapValue!21848 () List!53602)

(assert (=> mapNonEmpty!21848 (= mapRest!21845 (store mapRest!21848 mapKey!21848 mapValue!21848))))

(declare-fun mapIsEmpty!21848 () Bool)

(assert (=> mapIsEmpty!21848 mapRes!21848))

(declare-fun condMapEmpty!21848 () Bool)

(declare-fun mapDefault!21848 () List!53602)

(assert (=> mapNonEmpty!21845 (= condMapEmpty!21848 (= mapRest!21845 ((as const (Array (_ BitVec 32) List!53602)) mapDefault!21848)))))

(assert (=> mapNonEmpty!21845 (= tp!1355410 (and e!2975116 mapRes!21848))))

(assert (= (and mapNonEmpty!21845 condMapEmpty!21848) mapIsEmpty!21848))

(assert (= (and mapNonEmpty!21845 (not condMapEmpty!21848)) mapNonEmpty!21848))

(assert (= (and mapNonEmpty!21848 ((_ is Cons!53478) mapValue!21848)) b!4766563))

(assert (= (and mapNonEmpty!21845 ((_ is Cons!53478) mapDefault!21848)) b!4766564))

(declare-fun m!5737374 () Bool)

(assert (=> mapNonEmpty!21848 m!5737374))

(declare-fun tp!1355430 () Bool)

(declare-fun b!4766565 () Bool)

(declare-fun e!2975118 () Bool)

(assert (=> b!4766565 (= e!2975118 (and tp_is_empty!32437 tp_is_empty!32439 tp!1355430))))

(assert (=> mapNonEmpty!21845 (= tp!1355409 e!2975118)))

(assert (= (and mapNonEmpty!21845 ((_ is Cons!53478) mapValue!21845)) b!4766565))

(declare-fun b_lambda!184337 () Bool)

(assert (= b_lambda!184333 (or b!4766365 b_lambda!184337)))

(declare-fun bs!1148875 () Bool)

(declare-fun d!1523603 () Bool)

(assert (= bs!1148875 (and d!1523603 b!4766365)))

(assert (=> bs!1148875 (= (dynLambda!21948 lambda!224313 lt!1929152) (noDuplicateKeys!2252 (_2!31053 lt!1929152)))))

(declare-fun m!5737376 () Bool)

(assert (=> bs!1148875 m!5737376))

(assert (=> d!1523575 d!1523603))

(declare-fun b_lambda!184339 () Bool)

(assert (= b_lambda!184335 (or (and b!4766363 b_free!129635) b_lambda!184339)))

(declare-fun b_lambda!184341 () Bool)

(assert (= b_lambda!184331 (or b!4766365 b_lambda!184341)))

(declare-fun bs!1148876 () Bool)

(declare-fun d!1523605 () Bool)

(assert (= bs!1148876 (and d!1523605 b!4766365)))

(assert (=> bs!1148876 (= (dynLambda!21948 lambda!224313 lt!1929163) (noDuplicateKeys!2252 (_2!31053 lt!1929163)))))

(declare-fun m!5737378 () Bool)

(assert (=> bs!1148876 m!5737378))

(assert (=> d!1523565 d!1523605))

(check-sat (not b!4766476) (not b!4766478) (not d!1523599) (not d!1523583) (not mapNonEmpty!21848) (not b!4766474) (not b_lambda!184341) (not b!4766486) (not d!1523571) (not d!1523589) (not bm!334175) (not d!1523581) tp_is_empty!32437 (not bs!1148875) (not d!1523591) (not b!4766484) (not b!4766542) (not b!4766423) (not bm!334176) (not d!1523577) (not b!4766475) (not b!4766487) (not b!4766565) (not b!4766549) (not b!4766418) (not bm!334174) (not b!4766421) (not d!1523573) (not b!4766480) (not b!4766536) (not d!1523557) (not b!4766481) (not b!4766518) (not b!4766525) (not d!1523545) (not b!4766432) (not b_next!130425) (not b!4766564) (not b!4766477) (not d!1523575) (not bs!1148876) tp_is_empty!32439 (not b!4766450) (not b!4766473) (not b!4766417) (not b!4766485) b_and!341341 (not b!4766524) (not d!1523563) (not b!4766554) (not b!4766399) (not d!1523565) (not b!4766390) (not d!1523561) (not b!4766492) (not b!4766555) (not b!4766442) (not bm!334172) (not b!4766396) (not d!1523555) (not b!4766490) (not tb!257471) (not b_next!130427) (not d!1523549) (not b!4766482) (not d!1523585) (not b!4766435) (not b!4766548) (not d!1523567) (not b!4766375) (not bm!334177) (not b!4766386) (not b!4766416) (not b_lambda!184339) (not b!4766563) b_and!341343 (not d!1523587) (not b!4766444) (not b!4766434) (not b!4766517) (not b!4766433) (not d!1523569) (not d!1523543) (not d!1523579) (not b!4766479) (not b!4766556) (not b_lambda!184337) (not bm!334173) (not d!1523601) (not b!4766445) (not b!4766522))
(check-sat b_and!341341 b_and!341343 (not b_next!130427) (not b_next!130425))
