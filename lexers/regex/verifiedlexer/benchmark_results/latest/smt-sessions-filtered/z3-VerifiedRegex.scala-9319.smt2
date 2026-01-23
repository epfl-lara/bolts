; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495202 () Bool)

(assert start!495202)

(declare-fun b!4799671 () Bool)

(declare-fun res!2041200 () Bool)

(declare-fun e!2997173 () Bool)

(assert (=> b!4799671 (=> res!2041200 e!2997173)))

(declare-datatypes ((K!15884 0))(
  ( (K!15885 (val!21013 Int)) )
))
(declare-datatypes ((V!16130 0))(
  ( (V!16131 (val!21014 Int)) )
))
(declare-datatypes ((tuple2!57000 0))(
  ( (tuple2!57001 (_1!31794 K!15884) (_2!31794 V!16130)) )
))
(declare-datatypes ((List!54434 0))(
  ( (Nil!54310) (Cons!54310 (h!60742 tuple2!57000) (t!361884 List!54434)) )
))
(declare-datatypes ((tuple2!57002 0))(
  ( (tuple2!57003 (_1!31795 (_ BitVec 64)) (_2!31795 List!54434)) )
))
(declare-datatypes ((List!54435 0))(
  ( (Nil!54311) (Cons!54311 (h!60743 tuple2!57002) (t!361885 List!54435)) )
))
(declare-datatypes ((ListLongMap!5417 0))(
  ( (ListLongMap!5418 (toList!6995 List!54435)) )
))
(declare-fun lm!2473 () ListLongMap!5417)

(get-info :version)

(assert (=> b!4799671 (= res!2041200 (not ((_ is Cons!54311) (toList!6995 lm!2473))))))

(declare-fun b!4799672 () Bool)

(declare-fun e!2997176 () Bool)

(declare-fun tp!1358328 () Bool)

(assert (=> b!4799672 (= e!2997176 tp!1358328)))

(declare-fun b!4799673 () Bool)

(declare-fun res!2041206 () Bool)

(declare-fun e!2997174 () Bool)

(assert (=> b!4799673 (=> res!2041206 e!2997174)))

(declare-fun lt!1955751 () ListLongMap!5417)

(declare-datatypes ((Hashable!6958 0))(
  ( (HashableExt!6957 (__x!32981 Int)) )
))
(declare-fun hashF!1559 () Hashable!6958)

(declare-fun allKeysSameHashInMap!2363 (ListLongMap!5417 Hashable!6958) Bool)

(assert (=> b!4799673 (= res!2041206 (not (allKeysSameHashInMap!2363 lt!1955751 hashF!1559)))))

(declare-fun b!4799674 () Bool)

(declare-fun res!2041198 () Bool)

(declare-fun e!2997175 () Bool)

(assert (=> b!4799674 (=> (not res!2041198) (not e!2997175))))

(declare-fun key!5896 () K!15884)

(declare-datatypes ((ListMap!6467 0))(
  ( (ListMap!6468 (toList!6996 List!54434)) )
))
(declare-fun contains!17959 (ListMap!6467 K!15884) Bool)

(declare-fun extractMap!2485 (List!54435) ListMap!6467)

(assert (=> b!4799674 (= res!2041198 (contains!17959 (extractMap!2485 (toList!6995 lm!2473)) key!5896))))

(declare-fun res!2041205 () Bool)

(assert (=> start!495202 (=> (not res!2041205) (not e!2997175))))

(declare-fun lambda!232141 () Int)

(declare-fun forall!12321 (List!54435 Int) Bool)

(assert (=> start!495202 (= res!2041205 (forall!12321 (toList!6995 lm!2473) lambda!232141))))

(assert (=> start!495202 e!2997175))

(declare-fun inv!69910 (ListLongMap!5417) Bool)

(assert (=> start!495202 (and (inv!69910 lm!2473) e!2997176)))

(assert (=> start!495202 true))

(declare-fun tp_is_empty!33693 () Bool)

(assert (=> start!495202 tp_is_empty!33693))

(declare-fun tp_is_empty!33695 () Bool)

(assert (=> start!495202 tp_is_empty!33695))

(declare-fun lt!1955753 () (_ BitVec 64))

(declare-fun e!2997171 () Bool)

(declare-fun b!4799675 () Bool)

(declare-datatypes ((Option!13170 0))(
  ( (None!13169) (Some!13169 (v!48490 tuple2!57000)) )
))
(declare-fun isDefined!10311 (Option!13170) Bool)

(declare-fun getPair!930 (List!54434 K!15884) Option!13170)

(declare-fun apply!13031 (ListLongMap!5417 (_ BitVec 64)) List!54434)

(assert (=> b!4799675 (= e!2997171 (isDefined!10311 (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896)))))

(declare-fun b!4799676 () Bool)

(declare-fun res!2041204 () Bool)

(assert (=> b!4799676 (=> (not res!2041204) (not e!2997175))))

(assert (=> b!4799676 (= res!2041204 (allKeysSameHashInMap!2363 lm!2473 hashF!1559))))

(declare-fun b!4799677 () Bool)

(assert (=> b!4799677 (= e!2997175 (not e!2997173))))

(declare-fun res!2041203 () Bool)

(assert (=> b!4799677 (=> res!2041203 e!2997173)))

(declare-fun value!3111 () V!16130)

(declare-fun getValue!146 (List!54435 K!15884) V!16130)

(assert (=> b!4799677 (= res!2041203 (not (= (getValue!146 (toList!6995 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!600 (List!54435 K!15884) Bool)

(assert (=> b!4799677 (containsKeyBiggerList!600 (toList!6995 lm!2473) key!5896)))

(declare-datatypes ((Unit!140595 0))(
  ( (Unit!140596) )
))
(declare-fun lt!1955754 () Unit!140595)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!340 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> b!4799677 (= lt!1955754 (lemmaInLongMapThenContainsKeyBiggerList!340 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4799677 e!2997171))

(declare-fun res!2041202 () Bool)

(assert (=> b!4799677 (=> (not res!2041202) (not e!2997171))))

(declare-fun contains!17960 (ListLongMap!5417 (_ BitVec 64)) Bool)

(assert (=> b!4799677 (= res!2041202 (contains!17960 lm!2473 lt!1955753))))

(declare-fun hash!5011 (Hashable!6958 K!15884) (_ BitVec 64))

(assert (=> b!4799677 (= lt!1955753 (hash!5011 hashF!1559 key!5896))))

(declare-fun lt!1955755 () Unit!140595)

(declare-fun lemmaInGenericMapThenInLongMap!362 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> b!4799677 (= lt!1955755 (lemmaInGenericMapThenInLongMap!362 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4799678 () Bool)

(assert (=> b!4799678 (= e!2997173 e!2997174)))

(declare-fun res!2041199 () Bool)

(assert (=> b!4799678 (=> res!2041199 e!2997174)))

(assert (=> b!4799678 (= res!2041199 (not (forall!12321 (toList!6995 lt!1955751) lambda!232141)))))

(declare-fun lt!1955750 () Unit!140595)

(declare-fun e!2997172 () Unit!140595)

(assert (=> b!4799678 (= lt!1955750 e!2997172)))

(declare-fun c!818057 () Bool)

(assert (=> b!4799678 (= c!818057 (not (contains!17960 lt!1955751 lt!1955753)))))

(declare-fun tail!9319 (ListLongMap!5417) ListLongMap!5417)

(assert (=> b!4799678 (= lt!1955751 (tail!9319 lm!2473))))

(declare-fun b!4799679 () Bool)

(declare-fun res!2041201 () Bool)

(assert (=> b!4799679 (=> res!2041201 e!2997173)))

(declare-fun containsKey!4020 (List!54434 K!15884) Bool)

(assert (=> b!4799679 (= res!2041201 (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896))))

(declare-fun b!4799680 () Bool)

(declare-fun lt!1955752 () Unit!140595)

(assert (=> b!4799680 (= e!2997172 lt!1955752)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!56 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> b!4799680 (= lt!1955752 (lemmaHashNotInLongMapThenNotInGenerated!56 lt!1955751 key!5896 hashF!1559))))

(assert (=> b!4799680 (not (contains!17959 (extractMap!2485 (toList!6995 lt!1955751)) key!5896))))

(declare-fun b!4799681 () Bool)

(assert (=> b!4799681 (= e!2997174 (containsKeyBiggerList!600 (toList!6995 lt!1955751) key!5896))))

(declare-fun b!4799682 () Bool)

(declare-fun Unit!140597 () Unit!140595)

(assert (=> b!4799682 (= e!2997172 Unit!140597)))

(assert (= (and start!495202 res!2041205) b!4799676))

(assert (= (and b!4799676 res!2041204) b!4799674))

(assert (= (and b!4799674 res!2041198) b!4799677))

(assert (= (and b!4799677 res!2041202) b!4799675))

(assert (= (and b!4799677 (not res!2041203)) b!4799671))

(assert (= (and b!4799671 (not res!2041200)) b!4799679))

(assert (= (and b!4799679 (not res!2041201)) b!4799678))

(assert (= (and b!4799678 c!818057) b!4799680))

(assert (= (and b!4799678 (not c!818057)) b!4799682))

(assert (= (and b!4799678 (not res!2041199)) b!4799673))

(assert (= (and b!4799673 (not res!2041206)) b!4799681))

(assert (= start!495202 b!4799672))

(declare-fun m!5782992 () Bool)

(assert (=> b!4799680 m!5782992))

(declare-fun m!5782994 () Bool)

(assert (=> b!4799680 m!5782994))

(assert (=> b!4799680 m!5782994))

(declare-fun m!5782996 () Bool)

(assert (=> b!4799680 m!5782996))

(declare-fun m!5782998 () Bool)

(assert (=> b!4799681 m!5782998))

(declare-fun m!5783000 () Bool)

(assert (=> b!4799678 m!5783000))

(declare-fun m!5783002 () Bool)

(assert (=> b!4799678 m!5783002))

(declare-fun m!5783004 () Bool)

(assert (=> b!4799678 m!5783004))

(declare-fun m!5783006 () Bool)

(assert (=> b!4799673 m!5783006))

(declare-fun m!5783008 () Bool)

(assert (=> b!4799676 m!5783008))

(declare-fun m!5783010 () Bool)

(assert (=> b!4799677 m!5783010))

(declare-fun m!5783012 () Bool)

(assert (=> b!4799677 m!5783012))

(declare-fun m!5783014 () Bool)

(assert (=> b!4799677 m!5783014))

(declare-fun m!5783016 () Bool)

(assert (=> b!4799677 m!5783016))

(declare-fun m!5783018 () Bool)

(assert (=> b!4799677 m!5783018))

(declare-fun m!5783020 () Bool)

(assert (=> b!4799677 m!5783020))

(declare-fun m!5783022 () Bool)

(assert (=> b!4799674 m!5783022))

(assert (=> b!4799674 m!5783022))

(declare-fun m!5783024 () Bool)

(assert (=> b!4799674 m!5783024))

(declare-fun m!5783026 () Bool)

(assert (=> start!495202 m!5783026))

(declare-fun m!5783028 () Bool)

(assert (=> start!495202 m!5783028))

(declare-fun m!5783030 () Bool)

(assert (=> b!4799679 m!5783030))

(declare-fun m!5783032 () Bool)

(assert (=> b!4799675 m!5783032))

(assert (=> b!4799675 m!5783032))

(declare-fun m!5783034 () Bool)

(assert (=> b!4799675 m!5783034))

(assert (=> b!4799675 m!5783034))

(declare-fun m!5783036 () Bool)

(assert (=> b!4799675 m!5783036))

(check-sat (not b!4799680) (not b!4799678) (not b!4799676) (not b!4799679) (not b!4799674) (not start!495202) (not b!4799675) tp_is_empty!33693 tp_is_empty!33695 (not b!4799672) (not b!4799681) (not b!4799673) (not b!4799677))
(check-sat)
(get-model)

(declare-fun d!1536534 () Bool)

(declare-fun res!2041214 () Bool)

(declare-fun e!2997185 () Bool)

(assert (=> d!1536534 (=> res!2041214 e!2997185)))

(declare-fun e!2997184 () Bool)

(assert (=> d!1536534 (= res!2041214 e!2997184)))

(declare-fun res!2041215 () Bool)

(assert (=> d!1536534 (=> (not res!2041215) (not e!2997184))))

(assert (=> d!1536534 (= res!2041215 ((_ is Cons!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536534 (= (containsKeyBiggerList!600 (toList!6995 lm!2473) key!5896) e!2997185)))

(declare-fun b!4799689 () Bool)

(assert (=> b!4799689 (= e!2997184 (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896))))

(declare-fun b!4799690 () Bool)

(declare-fun e!2997183 () Bool)

(assert (=> b!4799690 (= e!2997185 e!2997183)))

(declare-fun res!2041213 () Bool)

(assert (=> b!4799690 (=> (not res!2041213) (not e!2997183))))

(assert (=> b!4799690 (= res!2041213 ((_ is Cons!54311) (toList!6995 lm!2473)))))

(declare-fun b!4799691 () Bool)

(assert (=> b!4799691 (= e!2997183 (containsKeyBiggerList!600 (t!361885 (toList!6995 lm!2473)) key!5896))))

(assert (= (and d!1536534 res!2041215) b!4799689))

(assert (= (and d!1536534 (not res!2041214)) b!4799690))

(assert (= (and b!4799690 res!2041213) b!4799691))

(assert (=> b!4799689 m!5783030))

(declare-fun m!5783038 () Bool)

(assert (=> b!4799691 m!5783038))

(assert (=> b!4799677 d!1536534))

(declare-fun bs!1157085 () Bool)

(declare-fun d!1536538 () Bool)

(assert (= bs!1157085 (and d!1536538 start!495202)))

(declare-fun lambda!232147 () Int)

(assert (=> bs!1157085 (= lambda!232147 lambda!232141)))

(assert (=> d!1536538 (containsKeyBiggerList!600 (toList!6995 lm!2473) key!5896)))

(declare-fun lt!1955760 () Unit!140595)

(declare-fun choose!34667 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> d!1536538 (= lt!1955760 (choose!34667 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536538 (forall!12321 (toList!6995 lm!2473) lambda!232147)))

(assert (=> d!1536538 (= (lemmaInLongMapThenContainsKeyBiggerList!340 lm!2473 key!5896 hashF!1559) lt!1955760)))

(declare-fun bs!1157086 () Bool)

(assert (= bs!1157086 d!1536538))

(assert (=> bs!1157086 m!5783010))

(declare-fun m!5783044 () Bool)

(assert (=> bs!1157086 m!5783044))

(declare-fun m!5783046 () Bool)

(assert (=> bs!1157086 m!5783046))

(assert (=> b!4799677 d!1536538))

(declare-fun bs!1157089 () Bool)

(declare-fun d!1536544 () Bool)

(assert (= bs!1157089 (and d!1536544 start!495202)))

(declare-fun lambda!232150 () Int)

(assert (=> bs!1157089 (= lambda!232150 lambda!232141)))

(declare-fun bs!1157090 () Bool)

(assert (= bs!1157090 (and d!1536544 d!1536538)))

(assert (=> bs!1157090 (= lambda!232150 lambda!232147)))

(declare-fun e!2997215 () Bool)

(assert (=> d!1536544 e!2997215))

(declare-fun res!2041239 () Bool)

(assert (=> d!1536544 (=> (not res!2041239) (not e!2997215))))

(assert (=> d!1536544 (= res!2041239 (contains!17960 lm!2473 (hash!5011 hashF!1559 key!5896)))))

(declare-fun lt!1955776 () Unit!140595)

(declare-fun choose!34668 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> d!1536544 (= lt!1955776 (choose!34668 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1536544 (forall!12321 (toList!6995 lm!2473) lambda!232150)))

(assert (=> d!1536544 (= (lemmaInGenericMapThenInLongMap!362 lm!2473 key!5896 hashF!1559) lt!1955776)))

(declare-fun b!4799735 () Bool)

(assert (=> b!4799735 (= e!2997215 (isDefined!10311 (getPair!930 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536544 res!2041239) b!4799735))

(assert (=> d!1536544 m!5783014))

(assert (=> d!1536544 m!5783014))

(declare-fun m!5783082 () Bool)

(assert (=> d!1536544 m!5783082))

(declare-fun m!5783084 () Bool)

(assert (=> d!1536544 m!5783084))

(declare-fun m!5783086 () Bool)

(assert (=> d!1536544 m!5783086))

(assert (=> b!4799735 m!5783014))

(assert (=> b!4799735 m!5783014))

(declare-fun m!5783088 () Bool)

(assert (=> b!4799735 m!5783088))

(assert (=> b!4799735 m!5783088))

(declare-fun m!5783090 () Bool)

(assert (=> b!4799735 m!5783090))

(assert (=> b!4799735 m!5783090))

(declare-fun m!5783092 () Bool)

(assert (=> b!4799735 m!5783092))

(assert (=> b!4799677 d!1536544))

(declare-fun d!1536558 () Bool)

(declare-fun c!818069 () Bool)

(declare-fun e!2997236 () Bool)

(assert (=> d!1536558 (= c!818069 e!2997236)))

(declare-fun res!2041257 () Bool)

(assert (=> d!1536558 (=> (not res!2041257) (not e!2997236))))

(assert (=> d!1536558 (= res!2041257 ((_ is Cons!54311) (toList!6995 lm!2473)))))

(declare-fun e!2997235 () V!16130)

(assert (=> d!1536558 (= (getValue!146 (toList!6995 lm!2473) key!5896) e!2997235)))

(declare-fun b!4799759 () Bool)

(assert (=> b!4799759 (= e!2997236 (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896))))

(declare-fun b!4799757 () Bool)

(declare-fun get!18541 (Option!13170) tuple2!57000)

(assert (=> b!4799757 (= e!2997235 (_2!31794 (get!18541 (getPair!930 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896))))))

(declare-fun b!4799758 () Bool)

(assert (=> b!4799758 (= e!2997235 (getValue!146 (t!361885 (toList!6995 lm!2473)) key!5896))))

(assert (= (and d!1536558 res!2041257) b!4799759))

(assert (= (and d!1536558 c!818069) b!4799757))

(assert (= (and d!1536558 (not c!818069)) b!4799758))

(assert (=> b!4799759 m!5783030))

(declare-fun m!5783098 () Bool)

(assert (=> b!4799757 m!5783098))

(assert (=> b!4799757 m!5783098))

(declare-fun m!5783100 () Bool)

(assert (=> b!4799757 m!5783100))

(declare-fun m!5783102 () Bool)

(assert (=> b!4799758 m!5783102))

(assert (=> b!4799677 d!1536558))

(declare-fun d!1536562 () Bool)

(declare-fun e!2997241 () Bool)

(assert (=> d!1536562 e!2997241))

(declare-fun res!2041260 () Bool)

(assert (=> d!1536562 (=> res!2041260 e!2997241)))

(declare-fun lt!1955790 () Bool)

(assert (=> d!1536562 (= res!2041260 (not lt!1955790))))

(declare-fun lt!1955788 () Bool)

(assert (=> d!1536562 (= lt!1955790 lt!1955788)))

(declare-fun lt!1955791 () Unit!140595)

(declare-fun e!2997242 () Unit!140595)

(assert (=> d!1536562 (= lt!1955791 e!2997242)))

(declare-fun c!818072 () Bool)

(assert (=> d!1536562 (= c!818072 lt!1955788)))

(declare-fun containsKey!4023 (List!54435 (_ BitVec 64)) Bool)

(assert (=> d!1536562 (= lt!1955788 (containsKey!4023 (toList!6995 lm!2473) lt!1955753))))

(assert (=> d!1536562 (= (contains!17960 lm!2473 lt!1955753) lt!1955790)))

(declare-fun b!4799766 () Bool)

(declare-fun lt!1955789 () Unit!140595)

(assert (=> b!4799766 (= e!2997242 lt!1955789)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (List!54435 (_ BitVec 64)) Unit!140595)

(assert (=> b!4799766 (= lt!1955789 (lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (toList!6995 lm!2473) lt!1955753))))

(declare-datatypes ((Option!13173 0))(
  ( (None!13172) (Some!13172 (v!48493 List!54434)) )
))
(declare-fun isDefined!10314 (Option!13173) Bool)

(declare-fun getValueByKey!2390 (List!54435 (_ BitVec 64)) Option!13173)

(assert (=> b!4799766 (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753))))

(declare-fun b!4799767 () Bool)

(declare-fun Unit!140604 () Unit!140595)

(assert (=> b!4799767 (= e!2997242 Unit!140604)))

(declare-fun b!4799768 () Bool)

(assert (=> b!4799768 (= e!2997241 (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753)))))

(assert (= (and d!1536562 c!818072) b!4799766))

(assert (= (and d!1536562 (not c!818072)) b!4799767))

(assert (= (and d!1536562 (not res!2041260)) b!4799768))

(declare-fun m!5783108 () Bool)

(assert (=> d!1536562 m!5783108))

(declare-fun m!5783110 () Bool)

(assert (=> b!4799766 m!5783110))

(declare-fun m!5783112 () Bool)

(assert (=> b!4799766 m!5783112))

(assert (=> b!4799766 m!5783112))

(declare-fun m!5783114 () Bool)

(assert (=> b!4799766 m!5783114))

(assert (=> b!4799768 m!5783112))

(assert (=> b!4799768 m!5783112))

(assert (=> b!4799768 m!5783114))

(assert (=> b!4799677 d!1536562))

(declare-fun d!1536566 () Bool)

(declare-fun hash!5013 (Hashable!6958 K!15884) (_ BitVec 64))

(assert (=> d!1536566 (= (hash!5011 hashF!1559 key!5896) (hash!5013 hashF!1559 key!5896))))

(declare-fun bs!1157094 () Bool)

(assert (= bs!1157094 d!1536566))

(declare-fun m!5783116 () Bool)

(assert (=> bs!1157094 m!5783116))

(assert (=> b!4799677 d!1536566))

(declare-fun d!1536568 () Bool)

(declare-fun res!2041274 () Bool)

(declare-fun e!2997265 () Bool)

(assert (=> d!1536568 (=> res!2041274 e!2997265)))

(assert (=> d!1536568 (= res!2041274 ((_ is Nil!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536568 (= (forall!12321 (toList!6995 lt!1955751) lambda!232141) e!2997265)))

(declare-fun b!4799800 () Bool)

(declare-fun e!2997266 () Bool)

(assert (=> b!4799800 (= e!2997265 e!2997266)))

(declare-fun res!2041275 () Bool)

(assert (=> b!4799800 (=> (not res!2041275) (not e!2997266))))

(declare-fun dynLambda!22090 (Int tuple2!57002) Bool)

(assert (=> b!4799800 (= res!2041275 (dynLambda!22090 lambda!232141 (h!60743 (toList!6995 lt!1955751))))))

(declare-fun b!4799801 () Bool)

(assert (=> b!4799801 (= e!2997266 (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232141))))

(assert (= (and d!1536568 (not res!2041274)) b!4799800))

(assert (= (and b!4799800 res!2041275) b!4799801))

(declare-fun b_lambda!187493 () Bool)

(assert (=> (not b_lambda!187493) (not b!4799800)))

(declare-fun m!5783124 () Bool)

(assert (=> b!4799800 m!5783124))

(declare-fun m!5783132 () Bool)

(assert (=> b!4799801 m!5783132))

(assert (=> b!4799678 d!1536568))

(declare-fun d!1536570 () Bool)

(declare-fun e!2997267 () Bool)

(assert (=> d!1536570 e!2997267))

(declare-fun res!2041276 () Bool)

(assert (=> d!1536570 (=> res!2041276 e!2997267)))

(declare-fun lt!1955818 () Bool)

(assert (=> d!1536570 (= res!2041276 (not lt!1955818))))

(declare-fun lt!1955816 () Bool)

(assert (=> d!1536570 (= lt!1955818 lt!1955816)))

(declare-fun lt!1955819 () Unit!140595)

(declare-fun e!2997268 () Unit!140595)

(assert (=> d!1536570 (= lt!1955819 e!2997268)))

(declare-fun c!818082 () Bool)

(assert (=> d!1536570 (= c!818082 lt!1955816)))

(assert (=> d!1536570 (= lt!1955816 (containsKey!4023 (toList!6995 lt!1955751) lt!1955753))))

(assert (=> d!1536570 (= (contains!17960 lt!1955751 lt!1955753) lt!1955818)))

(declare-fun b!4799802 () Bool)

(declare-fun lt!1955817 () Unit!140595)

(assert (=> b!4799802 (= e!2997268 lt!1955817)))

(assert (=> b!4799802 (= lt!1955817 (lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (toList!6995 lt!1955751) lt!1955753))))

(assert (=> b!4799802 (isDefined!10314 (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753))))

(declare-fun b!4799803 () Bool)

(declare-fun Unit!140605 () Unit!140595)

(assert (=> b!4799803 (= e!2997268 Unit!140605)))

(declare-fun b!4799804 () Bool)

(assert (=> b!4799804 (= e!2997267 (isDefined!10314 (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753)))))

(assert (= (and d!1536570 c!818082) b!4799802))

(assert (= (and d!1536570 (not c!818082)) b!4799803))

(assert (= (and d!1536570 (not res!2041276)) b!4799804))

(declare-fun m!5783142 () Bool)

(assert (=> d!1536570 m!5783142))

(declare-fun m!5783144 () Bool)

(assert (=> b!4799802 m!5783144))

(declare-fun m!5783146 () Bool)

(assert (=> b!4799802 m!5783146))

(assert (=> b!4799802 m!5783146))

(declare-fun m!5783148 () Bool)

(assert (=> b!4799802 m!5783148))

(assert (=> b!4799804 m!5783146))

(assert (=> b!4799804 m!5783146))

(assert (=> b!4799804 m!5783148))

(assert (=> b!4799678 d!1536570))

(declare-fun d!1536574 () Bool)

(declare-fun tail!9321 (List!54435) List!54435)

(assert (=> d!1536574 (= (tail!9319 lm!2473) (ListLongMap!5418 (tail!9321 (toList!6995 lm!2473))))))

(declare-fun bs!1157095 () Bool)

(assert (= bs!1157095 d!1536574))

(declare-fun m!5783150 () Bool)

(assert (=> bs!1157095 m!5783150))

(assert (=> b!4799678 d!1536574))

(declare-fun d!1536576 () Bool)

(declare-fun res!2041277 () Bool)

(declare-fun e!2997269 () Bool)

(assert (=> d!1536576 (=> res!2041277 e!2997269)))

(assert (=> d!1536576 (= res!2041277 ((_ is Nil!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536576 (= (forall!12321 (toList!6995 lm!2473) lambda!232141) e!2997269)))

(declare-fun b!4799805 () Bool)

(declare-fun e!2997270 () Bool)

(assert (=> b!4799805 (= e!2997269 e!2997270)))

(declare-fun res!2041278 () Bool)

(assert (=> b!4799805 (=> (not res!2041278) (not e!2997270))))

(assert (=> b!4799805 (= res!2041278 (dynLambda!22090 lambda!232141 (h!60743 (toList!6995 lm!2473))))))

(declare-fun b!4799806 () Bool)

(assert (=> b!4799806 (= e!2997270 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232141))))

(assert (= (and d!1536576 (not res!2041277)) b!4799805))

(assert (= (and b!4799805 res!2041278) b!4799806))

(declare-fun b_lambda!187495 () Bool)

(assert (=> (not b_lambda!187495) (not b!4799805)))

(declare-fun m!5783152 () Bool)

(assert (=> b!4799805 m!5783152))

(declare-fun m!5783154 () Bool)

(assert (=> b!4799806 m!5783154))

(assert (=> start!495202 d!1536576))

(declare-fun d!1536578 () Bool)

(declare-fun isStrictlySorted!897 (List!54435) Bool)

(assert (=> d!1536578 (= (inv!69910 lm!2473) (isStrictlySorted!897 (toList!6995 lm!2473)))))

(declare-fun bs!1157096 () Bool)

(assert (= bs!1157096 d!1536578))

(declare-fun m!5783156 () Bool)

(assert (=> bs!1157096 m!5783156))

(assert (=> start!495202 d!1536578))

(declare-fun bs!1157100 () Bool)

(declare-fun d!1536580 () Bool)

(assert (= bs!1157100 (and d!1536580 start!495202)))

(declare-fun lambda!232158 () Int)

(assert (=> bs!1157100 (not (= lambda!232158 lambda!232141))))

(declare-fun bs!1157101 () Bool)

(assert (= bs!1157101 (and d!1536580 d!1536538)))

(assert (=> bs!1157101 (not (= lambda!232158 lambda!232147))))

(declare-fun bs!1157102 () Bool)

(assert (= bs!1157102 (and d!1536580 d!1536544)))

(assert (=> bs!1157102 (not (= lambda!232158 lambda!232150))))

(assert (=> d!1536580 true))

(assert (=> d!1536580 (= (allKeysSameHashInMap!2363 lt!1955751 hashF!1559) (forall!12321 (toList!6995 lt!1955751) lambda!232158))))

(declare-fun bs!1157103 () Bool)

(assert (= bs!1157103 d!1536580))

(declare-fun m!5783166 () Bool)

(assert (=> bs!1157103 m!5783166))

(assert (=> b!4799673 d!1536580))

(declare-fun b!4799869 () Bool)

(declare-datatypes ((List!54437 0))(
  ( (Nil!54313) (Cons!54313 (h!60745 K!15884) (t!361887 List!54437)) )
))
(declare-fun e!2997316 () List!54437)

(declare-fun keys!19853 (ListMap!6467) List!54437)

(assert (=> b!4799869 (= e!2997316 (keys!19853 (extractMap!2485 (toList!6995 lm!2473))))))

(declare-fun b!4799870 () Bool)

(declare-fun getKeysList!1096 (List!54434) List!54437)

(assert (=> b!4799870 (= e!2997316 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))

(declare-fun b!4799871 () Bool)

(declare-fun e!2997317 () Bool)

(declare-fun contains!17963 (List!54437 K!15884) Bool)

(assert (=> b!4799871 (= e!2997317 (not (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lm!2473))) key!5896)))))

(declare-fun d!1536584 () Bool)

(declare-fun e!2997315 () Bool)

(assert (=> d!1536584 e!2997315))

(declare-fun res!2041301 () Bool)

(assert (=> d!1536584 (=> res!2041301 e!2997315)))

(assert (=> d!1536584 (= res!2041301 e!2997317)))

(declare-fun res!2041302 () Bool)

(assert (=> d!1536584 (=> (not res!2041302) (not e!2997317))))

(declare-fun lt!1955864 () Bool)

(assert (=> d!1536584 (= res!2041302 (not lt!1955864))))

(declare-fun lt!1955861 () Bool)

(assert (=> d!1536584 (= lt!1955864 lt!1955861)))

(declare-fun lt!1955865 () Unit!140595)

(declare-fun e!2997312 () Unit!140595)

(assert (=> d!1536584 (= lt!1955865 e!2997312)))

(declare-fun c!818100 () Bool)

(assert (=> d!1536584 (= c!818100 lt!1955861)))

(declare-fun containsKey!4024 (List!54434 K!15884) Bool)

(assert (=> d!1536584 (= lt!1955861 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> d!1536584 (= (contains!17959 (extractMap!2485 (toList!6995 lm!2473)) key!5896) lt!1955864)))

(declare-fun b!4799872 () Bool)

(assert (=> b!4799872 false))

(declare-fun lt!1955862 () Unit!140595)

(declare-fun lt!1955863 () Unit!140595)

(assert (=> b!4799872 (= lt!1955862 lt!1955863)))

(assert (=> b!4799872 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1096 (List!54434 K!15884) Unit!140595)

(assert (=> b!4799872 (= lt!1955863 (lemmaInGetKeysListThenContainsKey!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(declare-fun e!2997314 () Unit!140595)

(declare-fun Unit!140606 () Unit!140595)

(assert (=> b!4799872 (= e!2997314 Unit!140606)))

(declare-fun b!4799873 () Bool)

(assert (=> b!4799873 (= e!2997312 e!2997314)))

(declare-fun c!818101 () Bool)

(declare-fun call!335331 () Bool)

(assert (=> b!4799873 (= c!818101 call!335331)))

(declare-fun b!4799874 () Bool)

(declare-fun Unit!140607 () Unit!140595)

(assert (=> b!4799874 (= e!2997314 Unit!140607)))

(declare-fun b!4799875 () Bool)

(declare-fun e!2997313 () Bool)

(assert (=> b!4799875 (= e!2997313 (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(declare-fun b!4799876 () Bool)

(assert (=> b!4799876 (= e!2997315 e!2997313)))

(declare-fun res!2041300 () Bool)

(assert (=> b!4799876 (=> (not res!2041300) (not e!2997313))))

(declare-datatypes ((Option!13174 0))(
  ( (None!13173) (Some!13173 (v!48494 V!16130)) )
))
(declare-fun isDefined!10315 (Option!13174) Bool)

(declare-fun getValueByKey!2391 (List!54434 K!15884) Option!13174)

(assert (=> b!4799876 (= res!2041300 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896)))))

(declare-fun bm!335326 () Bool)

(assert (=> bm!335326 (= call!335331 (contains!17963 e!2997316 key!5896))))

(declare-fun c!818102 () Bool)

(assert (=> bm!335326 (= c!818102 c!818100)))

(declare-fun b!4799877 () Bool)

(declare-fun lt!1955859 () Unit!140595)

(assert (=> b!4799877 (= e!2997312 lt!1955859)))

(declare-fun lt!1955860 () Unit!140595)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2182 (List!54434 K!15884) Unit!140595)

(assert (=> b!4799877 (= lt!1955860 (lemmaContainsKeyImpliesGetValueByKeyDefined!2182 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> b!4799877 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(declare-fun lt!1955858 () Unit!140595)

(assert (=> b!4799877 (= lt!1955858 lt!1955860)))

(declare-fun lemmaInListThenGetKeysListContains!1091 (List!54434 K!15884) Unit!140595)

(assert (=> b!4799877 (= lt!1955859 (lemmaInListThenGetKeysListContains!1091 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> b!4799877 call!335331))

(assert (= (and d!1536584 c!818100) b!4799877))

(assert (= (and d!1536584 (not c!818100)) b!4799873))

(assert (= (and b!4799873 c!818101) b!4799872))

(assert (= (and b!4799873 (not c!818101)) b!4799874))

(assert (= (or b!4799877 b!4799873) bm!335326))

(assert (= (and bm!335326 c!818102) b!4799870))

(assert (= (and bm!335326 (not c!818102)) b!4799869))

(assert (= (and d!1536584 res!2041302) b!4799871))

(assert (= (and d!1536584 (not res!2041301)) b!4799876))

(assert (= (and b!4799876 res!2041300) b!4799875))

(declare-fun m!5783240 () Bool)

(assert (=> d!1536584 m!5783240))

(assert (=> b!4799872 m!5783240))

(declare-fun m!5783242 () Bool)

(assert (=> b!4799872 m!5783242))

(declare-fun m!5783244 () Bool)

(assert (=> b!4799876 m!5783244))

(assert (=> b!4799876 m!5783244))

(declare-fun m!5783246 () Bool)

(assert (=> b!4799876 m!5783246))

(assert (=> b!4799875 m!5783022))

(declare-fun m!5783248 () Bool)

(assert (=> b!4799875 m!5783248))

(assert (=> b!4799875 m!5783248))

(declare-fun m!5783250 () Bool)

(assert (=> b!4799875 m!5783250))

(declare-fun m!5783252 () Bool)

(assert (=> bm!335326 m!5783252))

(declare-fun m!5783254 () Bool)

(assert (=> b!4799877 m!5783254))

(assert (=> b!4799877 m!5783244))

(assert (=> b!4799877 m!5783244))

(assert (=> b!4799877 m!5783246))

(declare-fun m!5783256 () Bool)

(assert (=> b!4799877 m!5783256))

(assert (=> b!4799871 m!5783022))

(assert (=> b!4799871 m!5783248))

(assert (=> b!4799871 m!5783248))

(assert (=> b!4799871 m!5783250))

(declare-fun m!5783258 () Bool)

(assert (=> b!4799870 m!5783258))

(assert (=> b!4799869 m!5783022))

(assert (=> b!4799869 m!5783248))

(assert (=> b!4799674 d!1536584))

(declare-fun bs!1157132 () Bool)

(declare-fun d!1536610 () Bool)

(assert (= bs!1157132 (and d!1536610 start!495202)))

(declare-fun lambda!232170 () Int)

(assert (=> bs!1157132 (= lambda!232170 lambda!232141)))

(declare-fun bs!1157133 () Bool)

(assert (= bs!1157133 (and d!1536610 d!1536538)))

(assert (=> bs!1157133 (= lambda!232170 lambda!232147)))

(declare-fun bs!1157134 () Bool)

(assert (= bs!1157134 (and d!1536610 d!1536544)))

(assert (=> bs!1157134 (= lambda!232170 lambda!232150)))

(declare-fun bs!1157135 () Bool)

(assert (= bs!1157135 (and d!1536610 d!1536580)))

(assert (=> bs!1157135 (not (= lambda!232170 lambda!232158))))

(declare-fun lt!1955868 () ListMap!6467)

(declare-fun invariantList!1750 (List!54434) Bool)

(assert (=> d!1536610 (invariantList!1750 (toList!6996 lt!1955868))))

(declare-fun e!2997320 () ListMap!6467)

(assert (=> d!1536610 (= lt!1955868 e!2997320)))

(declare-fun c!818105 () Bool)

(assert (=> d!1536610 (= c!818105 ((_ is Cons!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536610 (forall!12321 (toList!6995 lm!2473) lambda!232170)))

(assert (=> d!1536610 (= (extractMap!2485 (toList!6995 lm!2473)) lt!1955868)))

(declare-fun b!4799882 () Bool)

(declare-fun addToMapMapFromBucket!1727 (List!54434 ListMap!6467) ListMap!6467)

(assert (=> b!4799882 (= e!2997320 (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (toList!6995 lm!2473))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))))))

(declare-fun b!4799883 () Bool)

(assert (=> b!4799883 (= e!2997320 (ListMap!6468 Nil!54310))))

(assert (= (and d!1536610 c!818105) b!4799882))

(assert (= (and d!1536610 (not c!818105)) b!4799883))

(declare-fun m!5783260 () Bool)

(assert (=> d!1536610 m!5783260))

(declare-fun m!5783262 () Bool)

(assert (=> d!1536610 m!5783262))

(declare-fun m!5783264 () Bool)

(assert (=> b!4799882 m!5783264))

(assert (=> b!4799882 m!5783264))

(declare-fun m!5783266 () Bool)

(assert (=> b!4799882 m!5783266))

(assert (=> b!4799674 d!1536610))

(declare-fun d!1536612 () Bool)

(declare-fun res!2041307 () Bool)

(declare-fun e!2997325 () Bool)

(assert (=> d!1536612 (=> res!2041307 e!2997325)))

(assert (=> d!1536612 (= res!2041307 (and ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473)))) (= (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))) key!5896)))))

(assert (=> d!1536612 (= (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896) e!2997325)))

(declare-fun b!4799888 () Bool)

(declare-fun e!2997326 () Bool)

(assert (=> b!4799888 (= e!2997325 e!2997326)))

(declare-fun res!2041308 () Bool)

(assert (=> b!4799888 (=> (not res!2041308) (not e!2997326))))

(assert (=> b!4799888 (= res!2041308 ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(declare-fun b!4799889 () Bool)

(assert (=> b!4799889 (= e!2997326 (containsKey!4020 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) key!5896))))

(assert (= (and d!1536612 (not res!2041307)) b!4799888))

(assert (= (and b!4799888 res!2041308) b!4799889))

(declare-fun m!5783268 () Bool)

(assert (=> b!4799889 m!5783268))

(assert (=> b!4799679 d!1536612))

(declare-fun bs!1157136 () Bool)

(declare-fun d!1536614 () Bool)

(assert (= bs!1157136 (and d!1536614 d!1536580)))

(declare-fun lambda!232173 () Int)

(assert (=> bs!1157136 (not (= lambda!232173 lambda!232158))))

(declare-fun bs!1157137 () Bool)

(assert (= bs!1157137 (and d!1536614 d!1536610)))

(assert (=> bs!1157137 (= lambda!232173 lambda!232170)))

(declare-fun bs!1157138 () Bool)

(assert (= bs!1157138 (and d!1536614 d!1536544)))

(assert (=> bs!1157138 (= lambda!232173 lambda!232150)))

(declare-fun bs!1157139 () Bool)

(assert (= bs!1157139 (and d!1536614 start!495202)))

(assert (=> bs!1157139 (= lambda!232173 lambda!232141)))

(declare-fun bs!1157140 () Bool)

(assert (= bs!1157140 (and d!1536614 d!1536538)))

(assert (=> bs!1157140 (= lambda!232173 lambda!232147)))

(assert (=> d!1536614 (not (contains!17959 (extractMap!2485 (toList!6995 lt!1955751)) key!5896))))

(declare-fun lt!1955871 () Unit!140595)

(declare-fun choose!34669 (ListLongMap!5417 K!15884 Hashable!6958) Unit!140595)

(assert (=> d!1536614 (= lt!1955871 (choose!34669 lt!1955751 key!5896 hashF!1559))))

(assert (=> d!1536614 (forall!12321 (toList!6995 lt!1955751) lambda!232173)))

(assert (=> d!1536614 (= (lemmaHashNotInLongMapThenNotInGenerated!56 lt!1955751 key!5896 hashF!1559) lt!1955871)))

(declare-fun bs!1157141 () Bool)

(assert (= bs!1157141 d!1536614))

(assert (=> bs!1157141 m!5782994))

(assert (=> bs!1157141 m!5782994))

(assert (=> bs!1157141 m!5782996))

(declare-fun m!5783270 () Bool)

(assert (=> bs!1157141 m!5783270))

(declare-fun m!5783272 () Bool)

(assert (=> bs!1157141 m!5783272))

(assert (=> b!4799680 d!1536614))

(declare-fun b!4799890 () Bool)

(declare-fun e!2997331 () List!54437)

(assert (=> b!4799890 (= e!2997331 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751))))))

(declare-fun b!4799891 () Bool)

(assert (=> b!4799891 (= e!2997331 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))

(declare-fun b!4799892 () Bool)

(declare-fun e!2997332 () Bool)

(assert (=> b!4799892 (= e!2997332 (not (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751))) key!5896)))))

(declare-fun d!1536616 () Bool)

(declare-fun e!2997330 () Bool)

(assert (=> d!1536616 e!2997330))

(declare-fun res!2041310 () Bool)

(assert (=> d!1536616 (=> res!2041310 e!2997330)))

(assert (=> d!1536616 (= res!2041310 e!2997332)))

(declare-fun res!2041311 () Bool)

(assert (=> d!1536616 (=> (not res!2041311) (not e!2997332))))

(declare-fun lt!1955878 () Bool)

(assert (=> d!1536616 (= res!2041311 (not lt!1955878))))

(declare-fun lt!1955875 () Bool)

(assert (=> d!1536616 (= lt!1955878 lt!1955875)))

(declare-fun lt!1955879 () Unit!140595)

(declare-fun e!2997327 () Unit!140595)

(assert (=> d!1536616 (= lt!1955879 e!2997327)))

(declare-fun c!818106 () Bool)

(assert (=> d!1536616 (= c!818106 lt!1955875)))

(assert (=> d!1536616 (= lt!1955875 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> d!1536616 (= (contains!17959 (extractMap!2485 (toList!6995 lt!1955751)) key!5896) lt!1955878)))

(declare-fun b!4799893 () Bool)

(assert (=> b!4799893 false))

(declare-fun lt!1955876 () Unit!140595)

(declare-fun lt!1955877 () Unit!140595)

(assert (=> b!4799893 (= lt!1955876 lt!1955877)))

(assert (=> b!4799893 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896)))

(assert (=> b!4799893 (= lt!1955877 (lemmaInGetKeysListThenContainsKey!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(declare-fun e!2997329 () Unit!140595)

(declare-fun Unit!140608 () Unit!140595)

(assert (=> b!4799893 (= e!2997329 Unit!140608)))

(declare-fun b!4799894 () Bool)

(assert (=> b!4799894 (= e!2997327 e!2997329)))

(declare-fun c!818107 () Bool)

(declare-fun call!335332 () Bool)

(assert (=> b!4799894 (= c!818107 call!335332)))

(declare-fun b!4799895 () Bool)

(declare-fun Unit!140609 () Unit!140595)

(assert (=> b!4799895 (= e!2997329 Unit!140609)))

(declare-fun b!4799896 () Bool)

(declare-fun e!2997328 () Bool)

(assert (=> b!4799896 (= e!2997328 (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(declare-fun b!4799897 () Bool)

(assert (=> b!4799897 (= e!2997330 e!2997328)))

(declare-fun res!2041309 () Bool)

(assert (=> b!4799897 (=> (not res!2041309) (not e!2997328))))

(assert (=> b!4799897 (= res!2041309 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896)))))

(declare-fun bm!335327 () Bool)

(assert (=> bm!335327 (= call!335332 (contains!17963 e!2997331 key!5896))))

(declare-fun c!818108 () Bool)

(assert (=> bm!335327 (= c!818108 c!818106)))

(declare-fun b!4799898 () Bool)

(declare-fun lt!1955873 () Unit!140595)

(assert (=> b!4799898 (= e!2997327 lt!1955873)))

(declare-fun lt!1955874 () Unit!140595)

(assert (=> b!4799898 (= lt!1955874 (lemmaContainsKeyImpliesGetValueByKeyDefined!2182 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> b!4799898 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(declare-fun lt!1955872 () Unit!140595)

(assert (=> b!4799898 (= lt!1955872 lt!1955874)))

(assert (=> b!4799898 (= lt!1955873 (lemmaInListThenGetKeysListContains!1091 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> b!4799898 call!335332))

(assert (= (and d!1536616 c!818106) b!4799898))

(assert (= (and d!1536616 (not c!818106)) b!4799894))

(assert (= (and b!4799894 c!818107) b!4799893))

(assert (= (and b!4799894 (not c!818107)) b!4799895))

(assert (= (or b!4799898 b!4799894) bm!335327))

(assert (= (and bm!335327 c!818108) b!4799891))

(assert (= (and bm!335327 (not c!818108)) b!4799890))

(assert (= (and d!1536616 res!2041311) b!4799892))

(assert (= (and d!1536616 (not res!2041310)) b!4799897))

(assert (= (and b!4799897 res!2041309) b!4799896))

(declare-fun m!5783274 () Bool)

(assert (=> d!1536616 m!5783274))

(assert (=> b!4799893 m!5783274))

(declare-fun m!5783276 () Bool)

(assert (=> b!4799893 m!5783276))

(declare-fun m!5783278 () Bool)

(assert (=> b!4799897 m!5783278))

(assert (=> b!4799897 m!5783278))

(declare-fun m!5783280 () Bool)

(assert (=> b!4799897 m!5783280))

(assert (=> b!4799896 m!5782994))

(declare-fun m!5783282 () Bool)

(assert (=> b!4799896 m!5783282))

(assert (=> b!4799896 m!5783282))

(declare-fun m!5783284 () Bool)

(assert (=> b!4799896 m!5783284))

(declare-fun m!5783286 () Bool)

(assert (=> bm!335327 m!5783286))

(declare-fun m!5783288 () Bool)

(assert (=> b!4799898 m!5783288))

(assert (=> b!4799898 m!5783278))

(assert (=> b!4799898 m!5783278))

(assert (=> b!4799898 m!5783280))

(declare-fun m!5783290 () Bool)

(assert (=> b!4799898 m!5783290))

(assert (=> b!4799892 m!5782994))

(assert (=> b!4799892 m!5783282))

(assert (=> b!4799892 m!5783282))

(assert (=> b!4799892 m!5783284))

(declare-fun m!5783292 () Bool)

(assert (=> b!4799891 m!5783292))

(assert (=> b!4799890 m!5782994))

(assert (=> b!4799890 m!5783282))

(assert (=> b!4799680 d!1536616))

(declare-fun bs!1157142 () Bool)

(declare-fun d!1536618 () Bool)

(assert (= bs!1157142 (and d!1536618 d!1536580)))

(declare-fun lambda!232174 () Int)

(assert (=> bs!1157142 (not (= lambda!232174 lambda!232158))))

(declare-fun bs!1157143 () Bool)

(assert (= bs!1157143 (and d!1536618 d!1536614)))

(assert (=> bs!1157143 (= lambda!232174 lambda!232173)))

(declare-fun bs!1157144 () Bool)

(assert (= bs!1157144 (and d!1536618 d!1536610)))

(assert (=> bs!1157144 (= lambda!232174 lambda!232170)))

(declare-fun bs!1157145 () Bool)

(assert (= bs!1157145 (and d!1536618 d!1536544)))

(assert (=> bs!1157145 (= lambda!232174 lambda!232150)))

(declare-fun bs!1157146 () Bool)

(assert (= bs!1157146 (and d!1536618 start!495202)))

(assert (=> bs!1157146 (= lambda!232174 lambda!232141)))

(declare-fun bs!1157147 () Bool)

(assert (= bs!1157147 (and d!1536618 d!1536538)))

(assert (=> bs!1157147 (= lambda!232174 lambda!232147)))

(declare-fun lt!1955880 () ListMap!6467)

(assert (=> d!1536618 (invariantList!1750 (toList!6996 lt!1955880))))

(declare-fun e!2997333 () ListMap!6467)

(assert (=> d!1536618 (= lt!1955880 e!2997333)))

(declare-fun c!818109 () Bool)

(assert (=> d!1536618 (= c!818109 ((_ is Cons!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536618 (forall!12321 (toList!6995 lt!1955751) lambda!232174)))

(assert (=> d!1536618 (= (extractMap!2485 (toList!6995 lt!1955751)) lt!1955880)))

(declare-fun b!4799899 () Bool)

(assert (=> b!4799899 (= e!2997333 (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))))))

(declare-fun b!4799900 () Bool)

(assert (=> b!4799900 (= e!2997333 (ListMap!6468 Nil!54310))))

(assert (= (and d!1536618 c!818109) b!4799899))

(assert (= (and d!1536618 (not c!818109)) b!4799900))

(declare-fun m!5783294 () Bool)

(assert (=> d!1536618 m!5783294))

(declare-fun m!5783296 () Bool)

(assert (=> d!1536618 m!5783296))

(declare-fun m!5783298 () Bool)

(assert (=> b!4799899 m!5783298))

(assert (=> b!4799899 m!5783298))

(declare-fun m!5783300 () Bool)

(assert (=> b!4799899 m!5783300))

(assert (=> b!4799680 d!1536618))

(declare-fun d!1536620 () Bool)

(declare-fun isEmpty!29496 (Option!13170) Bool)

(assert (=> d!1536620 (= (isDefined!10311 (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896)) (not (isEmpty!29496 (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896))))))

(declare-fun bs!1157148 () Bool)

(assert (= bs!1157148 d!1536620))

(assert (=> bs!1157148 m!5783034))

(declare-fun m!5783302 () Bool)

(assert (=> bs!1157148 m!5783302))

(assert (=> b!4799675 d!1536620))

(declare-fun e!2997348 () Bool)

(declare-fun b!4799917 () Bool)

(declare-fun lt!1955883 () Option!13170)

(declare-fun contains!17964 (List!54434 tuple2!57000) Bool)

(assert (=> b!4799917 (= e!2997348 (contains!17964 (apply!13031 lm!2473 lt!1955753) (get!18541 lt!1955883)))))

(declare-fun b!4799918 () Bool)

(declare-fun e!2997344 () Option!13170)

(assert (=> b!4799918 (= e!2997344 (getPair!930 (t!361884 (apply!13031 lm!2473 lt!1955753)) key!5896))))

(declare-fun b!4799919 () Bool)

(declare-fun e!2997345 () Option!13170)

(assert (=> b!4799919 (= e!2997345 (Some!13169 (h!60742 (apply!13031 lm!2473 lt!1955753))))))

(declare-fun b!4799920 () Bool)

(declare-fun e!2997347 () Bool)

(assert (=> b!4799920 (= e!2997347 (not (containsKey!4020 (apply!13031 lm!2473 lt!1955753) key!5896)))))

(declare-fun b!4799921 () Bool)

(assert (=> b!4799921 (= e!2997345 e!2997344)))

(declare-fun c!818115 () Bool)

(assert (=> b!4799921 (= c!818115 ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753)))))

(declare-fun d!1536622 () Bool)

(declare-fun e!2997346 () Bool)

(assert (=> d!1536622 e!2997346))

(declare-fun res!2041320 () Bool)

(assert (=> d!1536622 (=> res!2041320 e!2997346)))

(assert (=> d!1536622 (= res!2041320 e!2997347)))

(declare-fun res!2041323 () Bool)

(assert (=> d!1536622 (=> (not res!2041323) (not e!2997347))))

(assert (=> d!1536622 (= res!2041323 (isEmpty!29496 lt!1955883))))

(assert (=> d!1536622 (= lt!1955883 e!2997345)))

(declare-fun c!818114 () Bool)

(assert (=> d!1536622 (= c!818114 (and ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753)) (= (_1!31794 (h!60742 (apply!13031 lm!2473 lt!1955753))) key!5896)))))

(declare-fun noDuplicateKeys!2359 (List!54434) Bool)

(assert (=> d!1536622 (noDuplicateKeys!2359 (apply!13031 lm!2473 lt!1955753))))

(assert (=> d!1536622 (= (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896) lt!1955883)))

(declare-fun b!4799922 () Bool)

(declare-fun res!2041321 () Bool)

(assert (=> b!4799922 (=> (not res!2041321) (not e!2997348))))

(assert (=> b!4799922 (= res!2041321 (= (_1!31794 (get!18541 lt!1955883)) key!5896))))

(declare-fun b!4799923 () Bool)

(assert (=> b!4799923 (= e!2997344 None!13169)))

(declare-fun b!4799924 () Bool)

(assert (=> b!4799924 (= e!2997346 e!2997348)))

(declare-fun res!2041322 () Bool)

(assert (=> b!4799924 (=> (not res!2041322) (not e!2997348))))

(assert (=> b!4799924 (= res!2041322 (isDefined!10311 lt!1955883))))

(assert (= (and d!1536622 c!818114) b!4799919))

(assert (= (and d!1536622 (not c!818114)) b!4799921))

(assert (= (and b!4799921 c!818115) b!4799918))

(assert (= (and b!4799921 (not c!818115)) b!4799923))

(assert (= (and d!1536622 res!2041323) b!4799920))

(assert (= (and d!1536622 (not res!2041320)) b!4799924))

(assert (= (and b!4799924 res!2041322) b!4799922))

(assert (= (and b!4799922 res!2041321) b!4799917))

(declare-fun m!5783304 () Bool)

(assert (=> b!4799917 m!5783304))

(assert (=> b!4799917 m!5783032))

(assert (=> b!4799917 m!5783304))

(declare-fun m!5783306 () Bool)

(assert (=> b!4799917 m!5783306))

(assert (=> b!4799922 m!5783304))

(assert (=> b!4799920 m!5783032))

(declare-fun m!5783308 () Bool)

(assert (=> b!4799920 m!5783308))

(declare-fun m!5783310 () Bool)

(assert (=> b!4799924 m!5783310))

(declare-fun m!5783312 () Bool)

(assert (=> d!1536622 m!5783312))

(assert (=> d!1536622 m!5783032))

(declare-fun m!5783314 () Bool)

(assert (=> d!1536622 m!5783314))

(declare-fun m!5783316 () Bool)

(assert (=> b!4799918 m!5783316))

(assert (=> b!4799675 d!1536622))

(declare-fun d!1536624 () Bool)

(declare-fun get!18542 (Option!13173) List!54434)

(assert (=> d!1536624 (= (apply!13031 lm!2473 lt!1955753) (get!18542 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753)))))

(declare-fun bs!1157149 () Bool)

(assert (= bs!1157149 d!1536624))

(assert (=> bs!1157149 m!5783112))

(assert (=> bs!1157149 m!5783112))

(declare-fun m!5783318 () Bool)

(assert (=> bs!1157149 m!5783318))

(assert (=> b!4799675 d!1536624))

(declare-fun bs!1157150 () Bool)

(declare-fun d!1536626 () Bool)

(assert (= bs!1157150 (and d!1536626 d!1536618)))

(declare-fun lambda!232175 () Int)

(assert (=> bs!1157150 (not (= lambda!232175 lambda!232174))))

(declare-fun bs!1157151 () Bool)

(assert (= bs!1157151 (and d!1536626 d!1536580)))

(assert (=> bs!1157151 (= lambda!232175 lambda!232158)))

(declare-fun bs!1157152 () Bool)

(assert (= bs!1157152 (and d!1536626 d!1536614)))

(assert (=> bs!1157152 (not (= lambda!232175 lambda!232173))))

(declare-fun bs!1157153 () Bool)

(assert (= bs!1157153 (and d!1536626 d!1536610)))

(assert (=> bs!1157153 (not (= lambda!232175 lambda!232170))))

(declare-fun bs!1157154 () Bool)

(assert (= bs!1157154 (and d!1536626 d!1536544)))

(assert (=> bs!1157154 (not (= lambda!232175 lambda!232150))))

(declare-fun bs!1157155 () Bool)

(assert (= bs!1157155 (and d!1536626 start!495202)))

(assert (=> bs!1157155 (not (= lambda!232175 lambda!232141))))

(declare-fun bs!1157156 () Bool)

(assert (= bs!1157156 (and d!1536626 d!1536538)))

(assert (=> bs!1157156 (not (= lambda!232175 lambda!232147))))

(assert (=> d!1536626 true))

(assert (=> d!1536626 (= (allKeysSameHashInMap!2363 lm!2473 hashF!1559) (forall!12321 (toList!6995 lm!2473) lambda!232175))))

(declare-fun bs!1157157 () Bool)

(assert (= bs!1157157 d!1536626))

(declare-fun m!5783320 () Bool)

(assert (=> bs!1157157 m!5783320))

(assert (=> b!4799676 d!1536626))

(declare-fun d!1536628 () Bool)

(declare-fun res!2041325 () Bool)

(declare-fun e!2997351 () Bool)

(assert (=> d!1536628 (=> res!2041325 e!2997351)))

(declare-fun e!2997350 () Bool)

(assert (=> d!1536628 (= res!2041325 e!2997350)))

(declare-fun res!2041326 () Bool)

(assert (=> d!1536628 (=> (not res!2041326) (not e!2997350))))

(assert (=> d!1536628 (= res!2041326 ((_ is Cons!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536628 (= (containsKeyBiggerList!600 (toList!6995 lt!1955751) key!5896) e!2997351)))

(declare-fun b!4799925 () Bool)

(assert (=> b!4799925 (= e!2997350 (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lt!1955751))) key!5896))))

(declare-fun b!4799926 () Bool)

(declare-fun e!2997349 () Bool)

(assert (=> b!4799926 (= e!2997351 e!2997349)))

(declare-fun res!2041324 () Bool)

(assert (=> b!4799926 (=> (not res!2041324) (not e!2997349))))

(assert (=> b!4799926 (= res!2041324 ((_ is Cons!54311) (toList!6995 lt!1955751)))))

(declare-fun b!4799927 () Bool)

(assert (=> b!4799927 (= e!2997349 (containsKeyBiggerList!600 (t!361885 (toList!6995 lt!1955751)) key!5896))))

(assert (= (and d!1536628 res!2041326) b!4799925))

(assert (= (and d!1536628 (not res!2041325)) b!4799926))

(assert (= (and b!4799926 res!2041324) b!4799927))

(declare-fun m!5783322 () Bool)

(assert (=> b!4799925 m!5783322))

(declare-fun m!5783324 () Bool)

(assert (=> b!4799927 m!5783324))

(assert (=> b!4799681 d!1536628))

(declare-fun b!4799932 () Bool)

(declare-fun e!2997354 () Bool)

(declare-fun tp!1358339 () Bool)

(declare-fun tp!1358340 () Bool)

(assert (=> b!4799932 (= e!2997354 (and tp!1358339 tp!1358340))))

(assert (=> b!4799672 (= tp!1358328 e!2997354)))

(assert (= (and b!4799672 ((_ is Cons!54311) (toList!6995 lm!2473))) b!4799932))

(declare-fun b_lambda!187503 () Bool)

(assert (= b_lambda!187493 (or start!495202 b_lambda!187503)))

(declare-fun bs!1157158 () Bool)

(declare-fun d!1536630 () Bool)

(assert (= bs!1157158 (and d!1536630 start!495202)))

(assert (=> bs!1157158 (= (dynLambda!22090 lambda!232141 (h!60743 (toList!6995 lt!1955751))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(declare-fun m!5783326 () Bool)

(assert (=> bs!1157158 m!5783326))

(assert (=> b!4799800 d!1536630))

(declare-fun b_lambda!187505 () Bool)

(assert (= b_lambda!187495 (or start!495202 b_lambda!187505)))

(declare-fun bs!1157159 () Bool)

(declare-fun d!1536632 () Bool)

(assert (= bs!1157159 (and d!1536632 start!495202)))

(assert (=> bs!1157159 (= (dynLambda!22090 lambda!232141 (h!60743 (toList!6995 lm!2473))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(declare-fun m!5783328 () Bool)

(assert (=> bs!1157159 m!5783328))

(assert (=> b!4799805 d!1536632))

(check-sat (not b!4799806) (not d!1536580) (not d!1536538) (not b_lambda!187505) (not d!1536616) tp_is_empty!33693 (not b!4799757) (not d!1536614) (not d!1536544) tp_is_empty!33695 (not bs!1157158) (not b!4799927) (not b!4799891) (not b!4799801) (not b!4799758) (not b!4799735) (not b!4799872) (not b!4799691) (not b!4799932) (not b!4799689) (not d!1536620) (not b!4799917) (not d!1536618) (not b!4799804) (not b!4799899) (not b!4799871) (not b!4799869) (not b!4799875) (not d!1536566) (not bs!1157159) (not d!1536610) (not b!4799920) (not d!1536626) (not b!4799870) (not b!4799759) (not b!4799922) (not b!4799925) (not b!4799882) (not bm!335327) (not d!1536562) (not b!4799876) (not b!4799924) (not b!4799898) (not b!4799802) (not b!4799768) (not d!1536578) (not d!1536624) (not d!1536622) (not b!4799896) (not bm!335326) (not b!4799893) (not d!1536570) (not d!1536584) (not b!4799897) (not b!4799766) (not b!4799890) (not d!1536574) (not b_lambda!187503) (not b!4799918) (not b!4799889) (not b!4799892) (not b!4799877))
(check-sat)
(get-model)

(declare-fun d!1536676 () Bool)

(declare-fun lt!1955916 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9743 (List!54437) (InoxSet K!15884))

(assert (=> d!1536676 (= lt!1955916 (select (content!9743 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896))))

(declare-fun e!2997412 () Bool)

(assert (=> d!1536676 (= lt!1955916 e!2997412)))

(declare-fun res!2041367 () Bool)

(assert (=> d!1536676 (=> (not res!2041367) (not e!2997412))))

(assert (=> d!1536676 (= res!2041367 ((_ is Cons!54313) (keys!19853 (extractMap!2485 (toList!6995 lt!1955751)))))))

(assert (=> d!1536676 (= (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) lt!1955916)))

(declare-fun b!4800021 () Bool)

(declare-fun e!2997413 () Bool)

(assert (=> b!4800021 (= e!2997412 e!2997413)))

(declare-fun res!2041368 () Bool)

(assert (=> b!4800021 (=> res!2041368 e!2997413)))

(assert (=> b!4800021 (= res!2041368 (= (h!60745 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896))))

(declare-fun b!4800022 () Bool)

(assert (=> b!4800022 (= e!2997413 (contains!17963 (t!361887 (keys!19853 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896))))

(assert (= (and d!1536676 res!2041367) b!4800021))

(assert (= (and b!4800021 (not res!2041368)) b!4800022))

(assert (=> d!1536676 m!5783282))

(declare-fun m!5783402 () Bool)

(assert (=> d!1536676 m!5783402))

(declare-fun m!5783404 () Bool)

(assert (=> d!1536676 m!5783404))

(declare-fun m!5783406 () Bool)

(assert (=> b!4800022 m!5783406))

(assert (=> b!4799896 d!1536676))

(declare-fun b!4800030 () Bool)

(assert (=> b!4800030 true))

(declare-fun d!1536678 () Bool)

(declare-fun e!2997416 () Bool)

(assert (=> d!1536678 e!2997416))

(declare-fun res!2041376 () Bool)

(assert (=> d!1536678 (=> (not res!2041376) (not e!2997416))))

(declare-fun lt!1955919 () List!54437)

(declare-fun noDuplicate!933 (List!54437) Bool)

(assert (=> d!1536678 (= res!2041376 (noDuplicate!933 lt!1955919))))

(assert (=> d!1536678 (= lt!1955919 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))

(assert (=> d!1536678 (= (keys!19853 (extractMap!2485 (toList!6995 lt!1955751))) lt!1955919)))

(declare-fun b!4800029 () Bool)

(declare-fun res!2041377 () Bool)

(assert (=> b!4800029 (=> (not res!2041377) (not e!2997416))))

(declare-fun length!722 (List!54437) Int)

(declare-fun length!723 (List!54434) Int)

(assert (=> b!4800029 (= res!2041377 (= (length!722 lt!1955919) (length!723 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))))

(declare-fun res!2041375 () Bool)

(assert (=> b!4800030 (=> (not res!2041375) (not e!2997416))))

(declare-fun lambda!232192 () Int)

(declare-fun forall!12324 (List!54437 Int) Bool)

(assert (=> b!4800030 (= res!2041375 (forall!12324 lt!1955919 lambda!232192))))

(declare-fun b!4800031 () Bool)

(declare-fun lambda!232193 () Int)

(declare-fun map!12273 (List!54434 Int) List!54437)

(assert (=> b!4800031 (= e!2997416 (= (content!9743 lt!1955919) (content!9743 (map!12273 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) lambda!232193))))))

(assert (= (and d!1536678 res!2041376) b!4800029))

(assert (= (and b!4800029 res!2041377) b!4800030))

(assert (= (and b!4800030 res!2041375) b!4800031))

(declare-fun m!5783408 () Bool)

(assert (=> d!1536678 m!5783408))

(assert (=> d!1536678 m!5783292))

(declare-fun m!5783410 () Bool)

(assert (=> b!4800029 m!5783410))

(declare-fun m!5783412 () Bool)

(assert (=> b!4800029 m!5783412))

(declare-fun m!5783414 () Bool)

(assert (=> b!4800030 m!5783414))

(declare-fun m!5783416 () Bool)

(assert (=> b!4800031 m!5783416))

(declare-fun m!5783418 () Bool)

(assert (=> b!4800031 m!5783418))

(assert (=> b!4800031 m!5783418))

(declare-fun m!5783420 () Bool)

(assert (=> b!4800031 m!5783420))

(assert (=> b!4799896 d!1536678))

(declare-fun d!1536680 () Bool)

(declare-fun lt!1955920 () Bool)

(assert (=> d!1536680 (= lt!1955920 (select (content!9743 e!2997316) key!5896))))

(declare-fun e!2997417 () Bool)

(assert (=> d!1536680 (= lt!1955920 e!2997417)))

(declare-fun res!2041378 () Bool)

(assert (=> d!1536680 (=> (not res!2041378) (not e!2997417))))

(assert (=> d!1536680 (= res!2041378 ((_ is Cons!54313) e!2997316))))

(assert (=> d!1536680 (= (contains!17963 e!2997316 key!5896) lt!1955920)))

(declare-fun b!4800034 () Bool)

(declare-fun e!2997418 () Bool)

(assert (=> b!4800034 (= e!2997417 e!2997418)))

(declare-fun res!2041379 () Bool)

(assert (=> b!4800034 (=> res!2041379 e!2997418)))

(assert (=> b!4800034 (= res!2041379 (= (h!60745 e!2997316) key!5896))))

(declare-fun b!4800035 () Bool)

(assert (=> b!4800035 (= e!2997418 (contains!17963 (t!361887 e!2997316) key!5896))))

(assert (= (and d!1536680 res!2041378) b!4800034))

(assert (= (and b!4800034 (not res!2041379)) b!4800035))

(declare-fun m!5783422 () Bool)

(assert (=> d!1536680 m!5783422))

(declare-fun m!5783424 () Bool)

(assert (=> d!1536680 m!5783424))

(declare-fun m!5783426 () Bool)

(assert (=> b!4800035 m!5783426))

(assert (=> bm!335326 d!1536680))

(declare-fun d!1536682 () Bool)

(declare-fun res!2041380 () Bool)

(declare-fun e!2997419 () Bool)

(assert (=> d!1536682 (=> res!2041380 e!2997419)))

(assert (=> d!1536682 (= res!2041380 ((_ is Nil!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536682 (= (forall!12321 (toList!6995 lt!1955751) lambda!232158) e!2997419)))

(declare-fun b!4800036 () Bool)

(declare-fun e!2997420 () Bool)

(assert (=> b!4800036 (= e!2997419 e!2997420)))

(declare-fun res!2041381 () Bool)

(assert (=> b!4800036 (=> (not res!2041381) (not e!2997420))))

(assert (=> b!4800036 (= res!2041381 (dynLambda!22090 lambda!232158 (h!60743 (toList!6995 lt!1955751))))))

(declare-fun b!4800037 () Bool)

(assert (=> b!4800037 (= e!2997420 (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232158))))

(assert (= (and d!1536682 (not res!2041380)) b!4800036))

(assert (= (and b!4800036 res!2041381) b!4800037))

(declare-fun b_lambda!187509 () Bool)

(assert (=> (not b_lambda!187509) (not b!4800036)))

(declare-fun m!5783428 () Bool)

(assert (=> b!4800036 m!5783428))

(declare-fun m!5783430 () Bool)

(assert (=> b!4800037 m!5783430))

(assert (=> d!1536580 d!1536682))

(declare-fun d!1536684 () Bool)

(declare-fun isEmpty!29499 (Option!13173) Bool)

(assert (=> d!1536684 (= (isDefined!10314 (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753)) (not (isEmpty!29499 (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753))))))

(declare-fun bs!1157168 () Bool)

(assert (= bs!1157168 d!1536684))

(assert (=> bs!1157168 m!5783146))

(declare-fun m!5783432 () Bool)

(assert (=> bs!1157168 m!5783432))

(assert (=> b!4799804 d!1536684))

(declare-fun b!4800049 () Bool)

(declare-fun e!2997426 () Option!13173)

(assert (=> b!4800049 (= e!2997426 None!13172)))

(declare-fun b!4800046 () Bool)

(declare-fun e!2997425 () Option!13173)

(assert (=> b!4800046 (= e!2997425 (Some!13172 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(declare-fun b!4800047 () Bool)

(assert (=> b!4800047 (= e!2997425 e!2997426)))

(declare-fun c!818144 () Bool)

(assert (=> b!4800047 (= c!818144 (and ((_ is Cons!54311) (toList!6995 lt!1955751)) (not (= (_1!31795 (h!60743 (toList!6995 lt!1955751))) lt!1955753))))))

(declare-fun d!1536686 () Bool)

(declare-fun c!818143 () Bool)

(assert (=> d!1536686 (= c!818143 (and ((_ is Cons!54311) (toList!6995 lt!1955751)) (= (_1!31795 (h!60743 (toList!6995 lt!1955751))) lt!1955753)))))

(assert (=> d!1536686 (= (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753) e!2997425)))

(declare-fun b!4800048 () Bool)

(assert (=> b!4800048 (= e!2997426 (getValueByKey!2390 (t!361885 (toList!6995 lt!1955751)) lt!1955753))))

(assert (= (and d!1536686 c!818143) b!4800046))

(assert (= (and d!1536686 (not c!818143)) b!4800047))

(assert (= (and b!4800047 c!818144) b!4800048))

(assert (= (and b!4800047 (not c!818144)) b!4800049))

(declare-fun m!5783434 () Bool)

(assert (=> b!4800048 m!5783434))

(assert (=> b!4799804 d!1536686))

(declare-fun d!1536688 () Bool)

(declare-fun lt!1955921 () Bool)

(assert (=> d!1536688 (= lt!1955921 (select (content!9743 (keys!19853 (extractMap!2485 (toList!6995 lm!2473)))) key!5896))))

(declare-fun e!2997427 () Bool)

(assert (=> d!1536688 (= lt!1955921 e!2997427)))

(declare-fun res!2041382 () Bool)

(assert (=> d!1536688 (=> (not res!2041382) (not e!2997427))))

(assert (=> d!1536688 (= res!2041382 ((_ is Cons!54313) (keys!19853 (extractMap!2485 (toList!6995 lm!2473)))))))

(assert (=> d!1536688 (= (contains!17963 (keys!19853 (extractMap!2485 (toList!6995 lm!2473))) key!5896) lt!1955921)))

(declare-fun b!4800050 () Bool)

(declare-fun e!2997428 () Bool)

(assert (=> b!4800050 (= e!2997427 e!2997428)))

(declare-fun res!2041383 () Bool)

(assert (=> b!4800050 (=> res!2041383 e!2997428)))

(assert (=> b!4800050 (= res!2041383 (= (h!60745 (keys!19853 (extractMap!2485 (toList!6995 lm!2473)))) key!5896))))

(declare-fun b!4800051 () Bool)

(assert (=> b!4800051 (= e!2997428 (contains!17963 (t!361887 (keys!19853 (extractMap!2485 (toList!6995 lm!2473)))) key!5896))))

(assert (= (and d!1536688 res!2041382) b!4800050))

(assert (= (and b!4800050 (not res!2041383)) b!4800051))

(assert (=> d!1536688 m!5783248))

(declare-fun m!5783436 () Bool)

(assert (=> d!1536688 m!5783436))

(declare-fun m!5783438 () Bool)

(assert (=> d!1536688 m!5783438))

(declare-fun m!5783440 () Bool)

(assert (=> b!4800051 m!5783440))

(assert (=> b!4799875 d!1536688))

(declare-fun bs!1157169 () Bool)

(declare-fun b!4800053 () Bool)

(assert (= bs!1157169 (and b!4800053 b!4800030)))

(declare-fun lambda!232194 () Int)

(assert (=> bs!1157169 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232194 lambda!232192))))

(assert (=> b!4800053 true))

(declare-fun bs!1157170 () Bool)

(declare-fun b!4800054 () Bool)

(assert (= bs!1157170 (and b!4800054 b!4800031)))

(declare-fun lambda!232195 () Int)

(assert (=> bs!1157170 (= lambda!232195 lambda!232193)))

(declare-fun d!1536690 () Bool)

(declare-fun e!2997429 () Bool)

(assert (=> d!1536690 e!2997429))

(declare-fun res!2041385 () Bool)

(assert (=> d!1536690 (=> (not res!2041385) (not e!2997429))))

(declare-fun lt!1955922 () List!54437)

(assert (=> d!1536690 (= res!2041385 (noDuplicate!933 lt!1955922))))

(assert (=> d!1536690 (= lt!1955922 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))

(assert (=> d!1536690 (= (keys!19853 (extractMap!2485 (toList!6995 lm!2473))) lt!1955922)))

(declare-fun b!4800052 () Bool)

(declare-fun res!2041386 () Bool)

(assert (=> b!4800052 (=> (not res!2041386) (not e!2997429))))

(assert (=> b!4800052 (= res!2041386 (= (length!722 lt!1955922) (length!723 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))))

(declare-fun res!2041384 () Bool)

(assert (=> b!4800053 (=> (not res!2041384) (not e!2997429))))

(assert (=> b!4800053 (= res!2041384 (forall!12324 lt!1955922 lambda!232194))))

(assert (=> b!4800054 (= e!2997429 (= (content!9743 lt!1955922) (content!9743 (map!12273 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) lambda!232195))))))

(assert (= (and d!1536690 res!2041385) b!4800052))

(assert (= (and b!4800052 res!2041386) b!4800053))

(assert (= (and b!4800053 res!2041384) b!4800054))

(declare-fun m!5783442 () Bool)

(assert (=> d!1536690 m!5783442))

(assert (=> d!1536690 m!5783258))

(declare-fun m!5783444 () Bool)

(assert (=> b!4800052 m!5783444))

(declare-fun m!5783446 () Bool)

(assert (=> b!4800052 m!5783446))

(declare-fun m!5783448 () Bool)

(assert (=> b!4800053 m!5783448))

(declare-fun m!5783450 () Bool)

(assert (=> b!4800054 m!5783450))

(declare-fun m!5783452 () Bool)

(assert (=> b!4800054 m!5783452))

(assert (=> b!4800054 m!5783452))

(declare-fun m!5783454 () Bool)

(assert (=> b!4800054 m!5783454))

(assert (=> b!4799875 d!1536690))

(assert (=> b!4799890 d!1536678))

(assert (=> b!4799871 d!1536688))

(assert (=> b!4799871 d!1536690))

(assert (=> b!4799892 d!1536676))

(assert (=> b!4799892 d!1536678))

(declare-fun d!1536692 () Bool)

(assert (=> d!1536692 (isDefined!10314 (getValueByKey!2390 (toList!6995 lt!1955751) lt!1955753))))

(declare-fun lt!1955931 () Unit!140595)

(declare-fun choose!34674 (List!54435 (_ BitVec 64)) Unit!140595)

(assert (=> d!1536692 (= lt!1955931 (choose!34674 (toList!6995 lt!1955751) lt!1955753))))

(declare-fun e!2997434 () Bool)

(assert (=> d!1536692 e!2997434))

(declare-fun res!2041389 () Bool)

(assert (=> d!1536692 (=> (not res!2041389) (not e!2997434))))

(assert (=> d!1536692 (= res!2041389 (isStrictlySorted!897 (toList!6995 lt!1955751)))))

(assert (=> d!1536692 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (toList!6995 lt!1955751) lt!1955753) lt!1955931)))

(declare-fun b!4800061 () Bool)

(assert (=> b!4800061 (= e!2997434 (containsKey!4023 (toList!6995 lt!1955751) lt!1955753))))

(assert (= (and d!1536692 res!2041389) b!4800061))

(assert (=> d!1536692 m!5783146))

(assert (=> d!1536692 m!5783146))

(assert (=> d!1536692 m!5783148))

(declare-fun m!5783456 () Bool)

(assert (=> d!1536692 m!5783456))

(declare-fun m!5783458 () Bool)

(assert (=> d!1536692 m!5783458))

(assert (=> b!4800061 m!5783142))

(assert (=> b!4799802 d!1536692))

(assert (=> b!4799802 d!1536684))

(assert (=> b!4799802 d!1536686))

(assert (=> b!4799869 d!1536690))

(declare-fun d!1536694 () Bool)

(declare-fun res!2041394 () Bool)

(declare-fun e!2997439 () Bool)

(assert (=> d!1536694 (=> res!2041394 e!2997439)))

(assert (=> d!1536694 (= res!2041394 (or ((_ is Nil!54311) (toList!6995 lm!2473)) ((_ is Nil!54311) (t!361885 (toList!6995 lm!2473)))))))

(assert (=> d!1536694 (= (isStrictlySorted!897 (toList!6995 lm!2473)) e!2997439)))

(declare-fun b!4800066 () Bool)

(declare-fun e!2997440 () Bool)

(assert (=> b!4800066 (= e!2997439 e!2997440)))

(declare-fun res!2041395 () Bool)

(assert (=> b!4800066 (=> (not res!2041395) (not e!2997440))))

(assert (=> b!4800066 (= res!2041395 (bvslt (_1!31795 (h!60743 (toList!6995 lm!2473))) (_1!31795 (h!60743 (t!361885 (toList!6995 lm!2473))))))))

(declare-fun b!4800067 () Bool)

(assert (=> b!4800067 (= e!2997440 (isStrictlySorted!897 (t!361885 (toList!6995 lm!2473))))))

(assert (= (and d!1536694 (not res!2041394)) b!4800066))

(assert (= (and b!4800066 res!2041395) b!4800067))

(declare-fun m!5783460 () Bool)

(assert (=> b!4800067 m!5783460))

(assert (=> d!1536578 d!1536694))

(declare-fun d!1536696 () Bool)

(assert (=> d!1536696 (= (isEmpty!29496 lt!1955883) (not ((_ is Some!13169) lt!1955883)))))

(assert (=> d!1536622 d!1536696))

(declare-fun d!1536698 () Bool)

(declare-fun res!2041400 () Bool)

(declare-fun e!2997445 () Bool)

(assert (=> d!1536698 (=> res!2041400 e!2997445)))

(assert (=> d!1536698 (= res!2041400 (not ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753))))))

(assert (=> d!1536698 (= (noDuplicateKeys!2359 (apply!13031 lm!2473 lt!1955753)) e!2997445)))

(declare-fun b!4800072 () Bool)

(declare-fun e!2997446 () Bool)

(assert (=> b!4800072 (= e!2997445 e!2997446)))

(declare-fun res!2041401 () Bool)

(assert (=> b!4800072 (=> (not res!2041401) (not e!2997446))))

(assert (=> b!4800072 (= res!2041401 (not (containsKey!4020 (t!361884 (apply!13031 lm!2473 lt!1955753)) (_1!31794 (h!60742 (apply!13031 lm!2473 lt!1955753))))))))

(declare-fun b!4800073 () Bool)

(assert (=> b!4800073 (= e!2997446 (noDuplicateKeys!2359 (t!361884 (apply!13031 lm!2473 lt!1955753))))))

(assert (= (and d!1536698 (not res!2041400)) b!4800072))

(assert (= (and b!4800072 res!2041401) b!4800073))

(declare-fun m!5783462 () Bool)

(assert (=> b!4800072 m!5783462))

(declare-fun m!5783464 () Bool)

(assert (=> b!4800073 m!5783464))

(assert (=> d!1536622 d!1536698))

(declare-fun d!1536700 () Bool)

(declare-fun lt!1955966 () Bool)

(declare-fun content!9744 (List!54434) (InoxSet tuple2!57000))

(assert (=> d!1536700 (= lt!1955966 (select (content!9744 (apply!13031 lm!2473 lt!1955753)) (get!18541 lt!1955883)))))

(declare-fun e!2997451 () Bool)

(assert (=> d!1536700 (= lt!1955966 e!2997451)))

(declare-fun res!2041407 () Bool)

(assert (=> d!1536700 (=> (not res!2041407) (not e!2997451))))

(assert (=> d!1536700 (= res!2041407 ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753)))))

(assert (=> d!1536700 (= (contains!17964 (apply!13031 lm!2473 lt!1955753) (get!18541 lt!1955883)) lt!1955966)))

(declare-fun b!4800078 () Bool)

(declare-fun e!2997452 () Bool)

(assert (=> b!4800078 (= e!2997451 e!2997452)))

(declare-fun res!2041406 () Bool)

(assert (=> b!4800078 (=> res!2041406 e!2997452)))

(assert (=> b!4800078 (= res!2041406 (= (h!60742 (apply!13031 lm!2473 lt!1955753)) (get!18541 lt!1955883)))))

(declare-fun b!4800079 () Bool)

(assert (=> b!4800079 (= e!2997452 (contains!17964 (t!361884 (apply!13031 lm!2473 lt!1955753)) (get!18541 lt!1955883)))))

(assert (= (and d!1536700 res!2041407) b!4800078))

(assert (= (and b!4800078 (not res!2041406)) b!4800079))

(assert (=> d!1536700 m!5783032))

(declare-fun m!5783466 () Bool)

(assert (=> d!1536700 m!5783466))

(assert (=> d!1536700 m!5783304))

(declare-fun m!5783468 () Bool)

(assert (=> d!1536700 m!5783468))

(assert (=> b!4800079 m!5783304))

(declare-fun m!5783470 () Bool)

(assert (=> b!4800079 m!5783470))

(assert (=> b!4799917 d!1536700))

(declare-fun d!1536702 () Bool)

(assert (=> d!1536702 (= (get!18541 lt!1955883) (v!48490 lt!1955883))))

(assert (=> b!4799917 d!1536702))

(declare-fun d!1536704 () Bool)

(assert (=> d!1536704 (= (get!18542 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753)) (v!48493 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753)))))

(assert (=> d!1536624 d!1536704))

(declare-fun b!4800083 () Bool)

(declare-fun e!2997454 () Option!13173)

(assert (=> b!4800083 (= e!2997454 None!13172)))

(declare-fun b!4800080 () Bool)

(declare-fun e!2997453 () Option!13173)

(assert (=> b!4800080 (= e!2997453 (Some!13172 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(declare-fun b!4800081 () Bool)

(assert (=> b!4800081 (= e!2997453 e!2997454)))

(declare-fun c!818148 () Bool)

(assert (=> b!4800081 (= c!818148 (and ((_ is Cons!54311) (toList!6995 lm!2473)) (not (= (_1!31795 (h!60743 (toList!6995 lm!2473))) lt!1955753))))))

(declare-fun d!1536706 () Bool)

(declare-fun c!818147 () Bool)

(assert (=> d!1536706 (= c!818147 (and ((_ is Cons!54311) (toList!6995 lm!2473)) (= (_1!31795 (h!60743 (toList!6995 lm!2473))) lt!1955753)))))

(assert (=> d!1536706 (= (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753) e!2997453)))

(declare-fun b!4800082 () Bool)

(assert (=> b!4800082 (= e!2997454 (getValueByKey!2390 (t!361885 (toList!6995 lm!2473)) lt!1955753))))

(assert (= (and d!1536706 c!818147) b!4800080))

(assert (= (and d!1536706 (not c!818147)) b!4800081))

(assert (= (and b!4800081 c!818148) b!4800082))

(assert (= (and b!4800081 (not c!818148)) b!4800083))

(declare-fun m!5783472 () Bool)

(assert (=> b!4800082 m!5783472))

(assert (=> d!1536624 d!1536706))

(declare-fun d!1536708 () Bool)

(declare-fun c!818149 () Bool)

(declare-fun e!2997458 () Bool)

(assert (=> d!1536708 (= c!818149 e!2997458)))

(declare-fun res!2041410 () Bool)

(assert (=> d!1536708 (=> (not res!2041410) (not e!2997458))))

(assert (=> d!1536708 (= res!2041410 ((_ is Cons!54311) (t!361885 (toList!6995 lm!2473))))))

(declare-fun e!2997457 () V!16130)

(assert (=> d!1536708 (= (getValue!146 (t!361885 (toList!6995 lm!2473)) key!5896) e!2997457)))

(declare-fun b!4800086 () Bool)

(assert (=> b!4800086 (= e!2997458 (containsKey!4020 (_2!31795 (h!60743 (t!361885 (toList!6995 lm!2473)))) key!5896))))

(declare-fun b!4800084 () Bool)

(assert (=> b!4800084 (= e!2997457 (_2!31794 (get!18541 (getPair!930 (_2!31795 (h!60743 (t!361885 (toList!6995 lm!2473)))) key!5896))))))

(declare-fun b!4800085 () Bool)

(assert (=> b!4800085 (= e!2997457 (getValue!146 (t!361885 (t!361885 (toList!6995 lm!2473))) key!5896))))

(assert (= (and d!1536708 res!2041410) b!4800086))

(assert (= (and d!1536708 c!818149) b!4800084))

(assert (= (and d!1536708 (not c!818149)) b!4800085))

(declare-fun m!5783474 () Bool)

(assert (=> b!4800086 m!5783474))

(declare-fun m!5783476 () Bool)

(assert (=> b!4800084 m!5783476))

(assert (=> b!4800084 m!5783476))

(declare-fun m!5783478 () Bool)

(assert (=> b!4800084 m!5783478))

(declare-fun m!5783480 () Bool)

(assert (=> b!4800085 m!5783480))

(assert (=> b!4799758 d!1536708))

(declare-fun b!4800246 () Bool)

(assert (=> b!4800246 true))

(declare-fun bs!1157256 () Bool)

(declare-fun b!4800242 () Bool)

(assert (= bs!1157256 (and b!4800242 b!4800246)))

(declare-fun lambda!232275 () Int)

(declare-fun lambda!232274 () Int)

(assert (=> bs!1157256 (= lambda!232275 lambda!232274)))

(assert (=> b!4800242 true))

(declare-fun lt!1956098 () ListMap!6467)

(declare-fun lambda!232276 () Int)

(assert (=> bs!1157256 (= (= lt!1956098 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232276 lambda!232274))))

(assert (=> b!4800242 (= (= lt!1956098 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232276 lambda!232275))))

(assert (=> b!4800242 true))

(declare-fun bs!1157257 () Bool)

(declare-fun d!1536710 () Bool)

(assert (= bs!1157257 (and d!1536710 b!4800246)))

(declare-fun lambda!232277 () Int)

(declare-fun lt!1956103 () ListMap!6467)

(assert (=> bs!1157257 (= (= lt!1956103 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232277 lambda!232274))))

(declare-fun bs!1157258 () Bool)

(assert (= bs!1157258 (and d!1536710 b!4800242)))

(assert (=> bs!1157258 (= (= lt!1956103 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232277 lambda!232275))))

(assert (=> bs!1157258 (= (= lt!1956103 lt!1956098) (= lambda!232277 lambda!232276))))

(assert (=> d!1536710 true))

(declare-fun e!2997569 () ListMap!6467)

(assert (=> b!4800242 (= e!2997569 lt!1956098)))

(declare-fun lt!1956104 () ListMap!6467)

(declare-fun +!2503 (ListMap!6467 tuple2!57000) ListMap!6467)

(assert (=> b!4800242 (= lt!1956104 (+!2503 (extractMap!2485 (t!361885 (toList!6995 lm!2473))) (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(assert (=> b!4800242 (= lt!1956098 (addToMapMapFromBucket!1727 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) (+!2503 (extractMap!2485 (t!361885 (toList!6995 lm!2473))) (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))))

(declare-fun lt!1956108 () Unit!140595)

(declare-fun call!335351 () Unit!140595)

(assert (=> b!4800242 (= lt!1956108 call!335351)))

(declare-fun forall!12325 (List!54434 Int) Bool)

(assert (=> b!4800242 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) lambda!232275)))

(declare-fun lt!1956095 () Unit!140595)

(assert (=> b!4800242 (= lt!1956095 lt!1956108)))

(declare-fun call!335353 () Bool)

(assert (=> b!4800242 call!335353))

(declare-fun lt!1956091 () Unit!140595)

(declare-fun Unit!140629 () Unit!140595)

(assert (=> b!4800242 (= lt!1956091 Unit!140629)))

(assert (=> b!4800242 (forall!12325 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) lambda!232276)))

(declare-fun lt!1956094 () Unit!140595)

(declare-fun Unit!140630 () Unit!140595)

(assert (=> b!4800242 (= lt!1956094 Unit!140630)))

(declare-fun lt!1956099 () Unit!140595)

(declare-fun Unit!140631 () Unit!140595)

(assert (=> b!4800242 (= lt!1956099 Unit!140631)))

(declare-fun lt!1956096 () Unit!140595)

(declare-fun forallContained!4210 (List!54434 Int tuple2!57000) Unit!140595)

(assert (=> b!4800242 (= lt!1956096 (forallContained!4210 (toList!6996 lt!1956104) lambda!232276 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(assert (=> b!4800242 (contains!17959 lt!1956104 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(declare-fun lt!1956101 () Unit!140595)

(declare-fun Unit!140632 () Unit!140595)

(assert (=> b!4800242 (= lt!1956101 Unit!140632)))

(assert (=> b!4800242 (contains!17959 lt!1956098 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(declare-fun lt!1956093 () Unit!140595)

(declare-fun Unit!140633 () Unit!140595)

(assert (=> b!4800242 (= lt!1956093 Unit!140633)))

(assert (=> b!4800242 (forall!12325 (_2!31795 (h!60743 (toList!6995 lm!2473))) lambda!232276)))

(declare-fun lt!1956111 () Unit!140595)

(declare-fun Unit!140634 () Unit!140595)

(assert (=> b!4800242 (= lt!1956111 Unit!140634)))

(assert (=> b!4800242 (forall!12325 (toList!6996 lt!1956104) lambda!232276)))

(declare-fun lt!1956109 () Unit!140595)

(declare-fun Unit!140635 () Unit!140595)

(assert (=> b!4800242 (= lt!1956109 Unit!140635)))

(declare-fun lt!1956110 () Unit!140595)

(declare-fun Unit!140636 () Unit!140595)

(assert (=> b!4800242 (= lt!1956110 Unit!140636)))

(declare-fun lt!1956105 () Unit!140595)

(declare-fun addForallContainsKeyThenBeforeAdding!958 (ListMap!6467 ListMap!6467 K!15884 V!16130) Unit!140595)

(assert (=> b!4800242 (= lt!1956105 (addForallContainsKeyThenBeforeAdding!958 (extractMap!2485 (t!361885 (toList!6995 lm!2473))) lt!1956098 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))) (_2!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))))

(assert (=> b!4800242 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) lambda!232276)))

(declare-fun lt!1956106 () Unit!140595)

(assert (=> b!4800242 (= lt!1956106 lt!1956105)))

(assert (=> b!4800242 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) lambda!232276)))

(declare-fun lt!1956100 () Unit!140595)

(declare-fun Unit!140637 () Unit!140595)

(assert (=> b!4800242 (= lt!1956100 Unit!140637)))

(declare-fun res!2041517 () Bool)

(assert (=> b!4800242 (= res!2041517 (forall!12325 (_2!31795 (h!60743 (toList!6995 lm!2473))) lambda!232276))))

(declare-fun e!2997570 () Bool)

(assert (=> b!4800242 (=> (not res!2041517) (not e!2997570))))

(assert (=> b!4800242 e!2997570))

(declare-fun lt!1956102 () Unit!140595)

(declare-fun Unit!140638 () Unit!140595)

(assert (=> b!4800242 (= lt!1956102 Unit!140638)))

(declare-fun e!2997568 () Bool)

(assert (=> d!1536710 e!2997568))

(declare-fun res!2041518 () Bool)

(assert (=> d!1536710 (=> (not res!2041518) (not e!2997568))))

(assert (=> d!1536710 (= res!2041518 (forall!12325 (_2!31795 (h!60743 (toList!6995 lm!2473))) lambda!232277))))

(assert (=> d!1536710 (= lt!1956103 e!2997569)))

(declare-fun c!818169 () Bool)

(assert (=> d!1536710 (= c!818169 ((_ is Nil!54310) (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(assert (=> d!1536710 (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473))))))

(assert (=> d!1536710 (= (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (toList!6995 lm!2473))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) lt!1956103)))

(declare-fun bm!335346 () Bool)

(assert (=> bm!335346 (= call!335353 (forall!12325 (ite c!818169 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (toList!6996 lt!1956104)) (ite c!818169 lambda!232274 lambda!232276)))))

(declare-fun bm!335347 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!959 (ListMap!6467) Unit!140595)

(assert (=> bm!335347 (= call!335351 (lemmaContainsAllItsOwnKeys!959 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))))))

(declare-fun b!4800243 () Bool)

(declare-fun call!335352 () Bool)

(assert (=> b!4800243 (= e!2997570 call!335352)))

(declare-fun b!4800244 () Bool)

(declare-fun res!2041516 () Bool)

(assert (=> b!4800244 (=> (not res!2041516) (not e!2997568))))

(assert (=> b!4800244 (= res!2041516 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) lambda!232277))))

(declare-fun b!4800245 () Bool)

(assert (=> b!4800245 (= e!2997568 (invariantList!1750 (toList!6996 lt!1956103)))))

(assert (=> b!4800246 (= e!2997569 (extractMap!2485 (t!361885 (toList!6995 lm!2473))))))

(declare-fun lt!1956097 () Unit!140595)

(assert (=> b!4800246 (= lt!1956097 call!335351)))

(assert (=> b!4800246 call!335352))

(declare-fun lt!1956092 () Unit!140595)

(assert (=> b!4800246 (= lt!1956092 lt!1956097)))

(assert (=> b!4800246 call!335353))

(declare-fun lt!1956107 () Unit!140595)

(declare-fun Unit!140639 () Unit!140595)

(assert (=> b!4800246 (= lt!1956107 Unit!140639)))

(declare-fun bm!335348 () Bool)

(assert (=> bm!335348 (= call!335352 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (ite c!818169 lambda!232274 lambda!232276)))))

(assert (= (and d!1536710 c!818169) b!4800246))

(assert (= (and d!1536710 (not c!818169)) b!4800242))

(assert (= (and b!4800242 res!2041517) b!4800243))

(assert (= (or b!4800246 b!4800242) bm!335346))

(assert (= (or b!4800246 b!4800243) bm!335348))

(assert (= (or b!4800246 b!4800242) bm!335347))

(assert (= (and d!1536710 res!2041518) b!4800244))

(assert (= (and b!4800244 res!2041516) b!4800245))

(declare-fun m!5783780 () Bool)

(assert (=> bm!335346 m!5783780))

(assert (=> bm!335347 m!5783264))

(declare-fun m!5783782 () Bool)

(assert (=> bm!335347 m!5783782))

(declare-fun m!5783784 () Bool)

(assert (=> b!4800242 m!5783784))

(declare-fun m!5783786 () Bool)

(assert (=> b!4800242 m!5783786))

(declare-fun m!5783788 () Bool)

(assert (=> b!4800242 m!5783788))

(declare-fun m!5783790 () Bool)

(assert (=> b!4800242 m!5783790))

(declare-fun m!5783792 () Bool)

(assert (=> b!4800242 m!5783792))

(assert (=> b!4800242 m!5783264))

(assert (=> b!4800242 m!5783786))

(declare-fun m!5783794 () Bool)

(assert (=> b!4800242 m!5783794))

(assert (=> b!4800242 m!5783790))

(declare-fun m!5783796 () Bool)

(assert (=> b!4800242 m!5783796))

(declare-fun m!5783798 () Bool)

(assert (=> b!4800242 m!5783798))

(declare-fun m!5783800 () Bool)

(assert (=> b!4800242 m!5783800))

(assert (=> b!4800242 m!5783264))

(declare-fun m!5783802 () Bool)

(assert (=> b!4800242 m!5783802))

(declare-fun m!5783804 () Bool)

(assert (=> b!4800242 m!5783804))

(assert (=> b!4800242 m!5783794))

(declare-fun m!5783806 () Bool)

(assert (=> b!4800245 m!5783806))

(declare-fun m!5783808 () Bool)

(assert (=> d!1536710 m!5783808))

(assert (=> d!1536710 m!5783328))

(declare-fun m!5783810 () Bool)

(assert (=> b!4800244 m!5783810))

(declare-fun m!5783812 () Bool)

(assert (=> bm!335348 m!5783812))

(assert (=> b!4799882 d!1536710))

(declare-fun bs!1157259 () Bool)

(declare-fun d!1536830 () Bool)

(assert (= bs!1157259 (and d!1536830 d!1536618)))

(declare-fun lambda!232278 () Int)

(assert (=> bs!1157259 (= lambda!232278 lambda!232174)))

(declare-fun bs!1157260 () Bool)

(assert (= bs!1157260 (and d!1536830 d!1536580)))

(assert (=> bs!1157260 (not (= lambda!232278 lambda!232158))))

(declare-fun bs!1157261 () Bool)

(assert (= bs!1157261 (and d!1536830 d!1536614)))

(assert (=> bs!1157261 (= lambda!232278 lambda!232173)))

(declare-fun bs!1157262 () Bool)

(assert (= bs!1157262 (and d!1536830 d!1536610)))

(assert (=> bs!1157262 (= lambda!232278 lambda!232170)))

(declare-fun bs!1157263 () Bool)

(assert (= bs!1157263 (and d!1536830 d!1536626)))

(assert (=> bs!1157263 (not (= lambda!232278 lambda!232175))))

(declare-fun bs!1157264 () Bool)

(assert (= bs!1157264 (and d!1536830 d!1536544)))

(assert (=> bs!1157264 (= lambda!232278 lambda!232150)))

(declare-fun bs!1157265 () Bool)

(assert (= bs!1157265 (and d!1536830 start!495202)))

(assert (=> bs!1157265 (= lambda!232278 lambda!232141)))

(declare-fun bs!1157266 () Bool)

(assert (= bs!1157266 (and d!1536830 d!1536538)))

(assert (=> bs!1157266 (= lambda!232278 lambda!232147)))

(declare-fun lt!1956112 () ListMap!6467)

(assert (=> d!1536830 (invariantList!1750 (toList!6996 lt!1956112))))

(declare-fun e!2997571 () ListMap!6467)

(assert (=> d!1536830 (= lt!1956112 e!2997571)))

(declare-fun c!818170 () Bool)

(assert (=> d!1536830 (= c!818170 ((_ is Cons!54311) (t!361885 (toList!6995 lm!2473))))))

(assert (=> d!1536830 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232278)))

(assert (=> d!1536830 (= (extractMap!2485 (t!361885 (toList!6995 lm!2473))) lt!1956112)))

(declare-fun b!4800249 () Bool)

(assert (=> b!4800249 (= e!2997571 (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (t!361885 (toList!6995 lm!2473)))) (extractMap!2485 (t!361885 (t!361885 (toList!6995 lm!2473))))))))

(declare-fun b!4800250 () Bool)

(assert (=> b!4800250 (= e!2997571 (ListMap!6468 Nil!54310))))

(assert (= (and d!1536830 c!818170) b!4800249))

(assert (= (and d!1536830 (not c!818170)) b!4800250))

(declare-fun m!5783814 () Bool)

(assert (=> d!1536830 m!5783814))

(declare-fun m!5783816 () Bool)

(assert (=> d!1536830 m!5783816))

(declare-fun m!5783818 () Bool)

(assert (=> b!4800249 m!5783818))

(assert (=> b!4800249 m!5783818))

(declare-fun m!5783820 () Bool)

(assert (=> b!4800249 m!5783820))

(assert (=> b!4799882 d!1536830))

(declare-fun d!1536832 () Bool)

(declare-fun res!2041519 () Bool)

(declare-fun e!2997572 () Bool)

(assert (=> d!1536832 (=> res!2041519 e!2997572)))

(assert (=> d!1536832 (= res!2041519 (not ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(assert (=> d!1536832 (= (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lt!1955751)))) e!2997572)))

(declare-fun b!4800251 () Bool)

(declare-fun e!2997573 () Bool)

(assert (=> b!4800251 (= e!2997572 e!2997573)))

(declare-fun res!2041520 () Bool)

(assert (=> b!4800251 (=> (not res!2041520) (not e!2997573))))

(assert (=> b!4800251 (= res!2041520 (not (containsKey!4020 (t!361884 (_2!31795 (h!60743 (toList!6995 lt!1955751)))) (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))))

(declare-fun b!4800252 () Bool)

(assert (=> b!4800252 (= e!2997573 (noDuplicateKeys!2359 (t!361884 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(assert (= (and d!1536832 (not res!2041519)) b!4800251))

(assert (= (and b!4800251 res!2041520) b!4800252))

(declare-fun m!5783822 () Bool)

(assert (=> b!4800251 m!5783822))

(declare-fun m!5783824 () Bool)

(assert (=> b!4800252 m!5783824))

(assert (=> bs!1157158 d!1536832))

(declare-fun d!1536834 () Bool)

(declare-fun e!2997574 () Bool)

(assert (=> d!1536834 e!2997574))

(declare-fun res!2041521 () Bool)

(assert (=> d!1536834 (=> res!2041521 e!2997574)))

(declare-fun lt!1956115 () Bool)

(assert (=> d!1536834 (= res!2041521 (not lt!1956115))))

(declare-fun lt!1956113 () Bool)

(assert (=> d!1536834 (= lt!1956115 lt!1956113)))

(declare-fun lt!1956116 () Unit!140595)

(declare-fun e!2997575 () Unit!140595)

(assert (=> d!1536834 (= lt!1956116 e!2997575)))

(declare-fun c!818171 () Bool)

(assert (=> d!1536834 (= c!818171 lt!1956113)))

(assert (=> d!1536834 (= lt!1956113 (containsKey!4023 (toList!6995 lm!2473) (hash!5011 hashF!1559 key!5896)))))

(assert (=> d!1536834 (= (contains!17960 lm!2473 (hash!5011 hashF!1559 key!5896)) lt!1956115)))

(declare-fun b!4800253 () Bool)

(declare-fun lt!1956114 () Unit!140595)

(assert (=> b!4800253 (= e!2997575 lt!1956114)))

(assert (=> b!4800253 (= lt!1956114 (lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (toList!6995 lm!2473) (hash!5011 hashF!1559 key!5896)))))

(assert (=> b!4800253 (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) (hash!5011 hashF!1559 key!5896)))))

(declare-fun b!4800254 () Bool)

(declare-fun Unit!140641 () Unit!140595)

(assert (=> b!4800254 (= e!2997575 Unit!140641)))

(declare-fun b!4800255 () Bool)

(assert (=> b!4800255 (= e!2997574 (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) (hash!5011 hashF!1559 key!5896))))))

(assert (= (and d!1536834 c!818171) b!4800253))

(assert (= (and d!1536834 (not c!818171)) b!4800254))

(assert (= (and d!1536834 (not res!2041521)) b!4800255))

(assert (=> d!1536834 m!5783014))

(declare-fun m!5783826 () Bool)

(assert (=> d!1536834 m!5783826))

(assert (=> b!4800253 m!5783014))

(declare-fun m!5783828 () Bool)

(assert (=> b!4800253 m!5783828))

(assert (=> b!4800253 m!5783014))

(declare-fun m!5783830 () Bool)

(assert (=> b!4800253 m!5783830))

(assert (=> b!4800253 m!5783830))

(declare-fun m!5783832 () Bool)

(assert (=> b!4800253 m!5783832))

(assert (=> b!4800255 m!5783014))

(assert (=> b!4800255 m!5783830))

(assert (=> b!4800255 m!5783830))

(assert (=> b!4800255 m!5783832))

(assert (=> d!1536544 d!1536834))

(assert (=> d!1536544 d!1536566))

(declare-fun d!1536836 () Bool)

(declare-fun e!2997578 () Bool)

(assert (=> d!1536836 e!2997578))

(declare-fun res!2041524 () Bool)

(assert (=> d!1536836 (=> (not res!2041524) (not e!2997578))))

(assert (=> d!1536836 (= res!2041524 (contains!17960 lm!2473 (hash!5011 hashF!1559 key!5896)))))

(assert (=> d!1536836 true))

(declare-fun _$5!256 () Unit!140595)

(assert (=> d!1536836 (= (choose!34668 lm!2473 key!5896 hashF!1559) _$5!256)))

(declare-fun b!4800258 () Bool)

(assert (=> b!4800258 (= e!2997578 (isDefined!10311 (getPair!930 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1536836 res!2041524) b!4800258))

(assert (=> d!1536836 m!5783014))

(assert (=> d!1536836 m!5783014))

(assert (=> d!1536836 m!5783082))

(assert (=> b!4800258 m!5783014))

(assert (=> b!4800258 m!5783014))

(assert (=> b!4800258 m!5783088))

(assert (=> b!4800258 m!5783088))

(assert (=> b!4800258 m!5783090))

(assert (=> b!4800258 m!5783090))

(assert (=> b!4800258 m!5783092))

(assert (=> d!1536544 d!1536836))

(declare-fun d!1536838 () Bool)

(declare-fun res!2041525 () Bool)

(declare-fun e!2997579 () Bool)

(assert (=> d!1536838 (=> res!2041525 e!2997579)))

(assert (=> d!1536838 (= res!2041525 ((_ is Nil!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536838 (= (forall!12321 (toList!6995 lm!2473) lambda!232150) e!2997579)))

(declare-fun b!4800259 () Bool)

(declare-fun e!2997580 () Bool)

(assert (=> b!4800259 (= e!2997579 e!2997580)))

(declare-fun res!2041526 () Bool)

(assert (=> b!4800259 (=> (not res!2041526) (not e!2997580))))

(assert (=> b!4800259 (= res!2041526 (dynLambda!22090 lambda!232150 (h!60743 (toList!6995 lm!2473))))))

(declare-fun b!4800260 () Bool)

(assert (=> b!4800260 (= e!2997580 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232150))))

(assert (= (and d!1536838 (not res!2041525)) b!4800259))

(assert (= (and b!4800259 res!2041526) b!4800260))

(declare-fun b_lambda!187545 () Bool)

(assert (=> (not b_lambda!187545) (not b!4800259)))

(declare-fun m!5783834 () Bool)

(assert (=> b!4800259 m!5783834))

(declare-fun m!5783836 () Bool)

(assert (=> b!4800260 m!5783836))

(assert (=> d!1536544 d!1536838))

(declare-fun d!1536840 () Bool)

(declare-fun res!2041527 () Bool)

(declare-fun e!2997581 () Bool)

(assert (=> d!1536840 (=> res!2041527 e!2997581)))

(assert (=> d!1536840 (= res!2041527 ((_ is Nil!54311) (t!361885 (toList!6995 lt!1955751))))))

(assert (=> d!1536840 (= (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232141) e!2997581)))

(declare-fun b!4800261 () Bool)

(declare-fun e!2997582 () Bool)

(assert (=> b!4800261 (= e!2997581 e!2997582)))

(declare-fun res!2041528 () Bool)

(assert (=> b!4800261 (=> (not res!2041528) (not e!2997582))))

(assert (=> b!4800261 (= res!2041528 (dynLambda!22090 lambda!232141 (h!60743 (t!361885 (toList!6995 lt!1955751)))))))

(declare-fun b!4800262 () Bool)

(assert (=> b!4800262 (= e!2997582 (forall!12321 (t!361885 (t!361885 (toList!6995 lt!1955751))) lambda!232141))))

(assert (= (and d!1536840 (not res!2041527)) b!4800261))

(assert (= (and b!4800261 res!2041528) b!4800262))

(declare-fun b_lambda!187547 () Bool)

(assert (=> (not b_lambda!187547) (not b!4800261)))

(declare-fun m!5783838 () Bool)

(assert (=> b!4800261 m!5783838))

(declare-fun m!5783840 () Bool)

(assert (=> b!4800262 m!5783840))

(assert (=> b!4799801 d!1536840))

(declare-fun d!1536842 () Bool)

(declare-fun choose!34676 (Hashable!6958 K!15884) (_ BitVec 64))

(assert (=> d!1536842 (= (hash!5013 hashF!1559 key!5896) (choose!34676 hashF!1559 key!5896))))

(declare-fun bs!1157267 () Bool)

(assert (= bs!1157267 d!1536842))

(declare-fun m!5783842 () Bool)

(assert (=> bs!1157267 m!5783842))

(assert (=> d!1536566 d!1536842))

(declare-fun d!1536844 () Bool)

(declare-fun res!2041529 () Bool)

(declare-fun e!2997583 () Bool)

(assert (=> d!1536844 (=> res!2041529 e!2997583)))

(assert (=> d!1536844 (= res!2041529 ((_ is Nil!54311) (t!361885 (toList!6995 lm!2473))))))

(assert (=> d!1536844 (= (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232141) e!2997583)))

(declare-fun b!4800263 () Bool)

(declare-fun e!2997584 () Bool)

(assert (=> b!4800263 (= e!2997583 e!2997584)))

(declare-fun res!2041530 () Bool)

(assert (=> b!4800263 (=> (not res!2041530) (not e!2997584))))

(assert (=> b!4800263 (= res!2041530 (dynLambda!22090 lambda!232141 (h!60743 (t!361885 (toList!6995 lm!2473)))))))

(declare-fun b!4800264 () Bool)

(assert (=> b!4800264 (= e!2997584 (forall!12321 (t!361885 (t!361885 (toList!6995 lm!2473))) lambda!232141))))

(assert (= (and d!1536844 (not res!2041529)) b!4800263))

(assert (= (and b!4800263 res!2041530) b!4800264))

(declare-fun b_lambda!187549 () Bool)

(assert (=> (not b_lambda!187549) (not b!4800263)))

(declare-fun m!5783844 () Bool)

(assert (=> b!4800263 m!5783844))

(declare-fun m!5783846 () Bool)

(assert (=> b!4800264 m!5783846))

(assert (=> b!4799806 d!1536844))

(declare-fun d!1536846 () Bool)

(assert (=> d!1536846 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(declare-fun lt!1956119 () Unit!140595)

(declare-fun choose!34677 (List!54434 K!15884) Unit!140595)

(assert (=> d!1536846 (= lt!1956119 (choose!34677 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> d!1536846 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))

(assert (=> d!1536846 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2182 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) lt!1956119)))

(declare-fun bs!1157268 () Bool)

(assert (= bs!1157268 d!1536846))

(assert (=> bs!1157268 m!5783278))

(assert (=> bs!1157268 m!5783278))

(assert (=> bs!1157268 m!5783280))

(declare-fun m!5783848 () Bool)

(assert (=> bs!1157268 m!5783848))

(declare-fun m!5783850 () Bool)

(assert (=> bs!1157268 m!5783850))

(assert (=> b!4799898 d!1536846))

(declare-fun d!1536848 () Bool)

(declare-fun isEmpty!29500 (Option!13174) Bool)

(assert (=> d!1536848 (= (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896)) (not (isEmpty!29500 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))))

(declare-fun bs!1157269 () Bool)

(assert (= bs!1157269 d!1536848))

(assert (=> bs!1157269 m!5783278))

(declare-fun m!5783852 () Bool)

(assert (=> bs!1157269 m!5783852))

(assert (=> b!4799898 d!1536848))

(declare-fun b!4800274 () Bool)

(declare-fun e!2997589 () Option!13174)

(declare-fun e!2997590 () Option!13174)

(assert (=> b!4800274 (= e!2997589 e!2997590)))

(declare-fun c!818177 () Bool)

(assert (=> b!4800274 (= c!818177 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (not (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) key!5896))))))

(declare-fun b!4800276 () Bool)

(assert (=> b!4800276 (= e!2997590 None!13173)))

(declare-fun b!4800275 () Bool)

(assert (=> b!4800275 (= e!2997590 (getValueByKey!2391 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896))))

(declare-fun b!4800273 () Bool)

(assert (=> b!4800273 (= e!2997589 (Some!13173 (_2!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))))

(declare-fun d!1536850 () Bool)

(declare-fun c!818176 () Bool)

(assert (=> d!1536850 (= c!818176 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) key!5896)))))

(assert (=> d!1536850 (= (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) e!2997589)))

(assert (= (and d!1536850 c!818176) b!4800273))

(assert (= (and d!1536850 (not c!818176)) b!4800274))

(assert (= (and b!4800274 c!818177) b!4800275))

(assert (= (and b!4800274 (not c!818177)) b!4800276))

(declare-fun m!5783854 () Bool)

(assert (=> b!4800275 m!5783854))

(assert (=> b!4799898 d!1536850))

(declare-fun d!1536852 () Bool)

(assert (=> d!1536852 (contains!17963 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896)))

(declare-fun lt!1956122 () Unit!140595)

(declare-fun choose!34678 (List!54434 K!15884) Unit!140595)

(assert (=> d!1536852 (= lt!1956122 (choose!34678 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> d!1536852 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))

(assert (=> d!1536852 (= (lemmaInListThenGetKeysListContains!1091 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) lt!1956122)))

(declare-fun bs!1157270 () Bool)

(assert (= bs!1157270 d!1536852))

(assert (=> bs!1157270 m!5783292))

(assert (=> bs!1157270 m!5783292))

(declare-fun m!5783856 () Bool)

(assert (=> bs!1157270 m!5783856))

(declare-fun m!5783858 () Bool)

(assert (=> bs!1157270 m!5783858))

(assert (=> bs!1157270 m!5783850))

(assert (=> b!4799898 d!1536852))

(declare-fun d!1536854 () Bool)

(declare-fun noDuplicatedKeys!452 (List!54434) Bool)

(assert (=> d!1536854 (= (invariantList!1750 (toList!6996 lt!1955868)) (noDuplicatedKeys!452 (toList!6996 lt!1955868)))))

(declare-fun bs!1157271 () Bool)

(assert (= bs!1157271 d!1536854))

(declare-fun m!5783860 () Bool)

(assert (=> bs!1157271 m!5783860))

(assert (=> d!1536610 d!1536854))

(declare-fun d!1536856 () Bool)

(declare-fun res!2041531 () Bool)

(declare-fun e!2997591 () Bool)

(assert (=> d!1536856 (=> res!2041531 e!2997591)))

(assert (=> d!1536856 (= res!2041531 ((_ is Nil!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536856 (= (forall!12321 (toList!6995 lm!2473) lambda!232170) e!2997591)))

(declare-fun b!4800277 () Bool)

(declare-fun e!2997592 () Bool)

(assert (=> b!4800277 (= e!2997591 e!2997592)))

(declare-fun res!2041532 () Bool)

(assert (=> b!4800277 (=> (not res!2041532) (not e!2997592))))

(assert (=> b!4800277 (= res!2041532 (dynLambda!22090 lambda!232170 (h!60743 (toList!6995 lm!2473))))))

(declare-fun b!4800278 () Bool)

(assert (=> b!4800278 (= e!2997592 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232170))))

(assert (= (and d!1536856 (not res!2041531)) b!4800277))

(assert (= (and b!4800277 res!2041532) b!4800278))

(declare-fun b_lambda!187551 () Bool)

(assert (=> (not b_lambda!187551) (not b!4800277)))

(declare-fun m!5783862 () Bool)

(assert (=> b!4800277 m!5783862))

(declare-fun m!5783864 () Bool)

(assert (=> b!4800278 m!5783864))

(assert (=> d!1536610 d!1536856))

(declare-fun d!1536858 () Bool)

(assert (=> d!1536858 (= (isEmpty!29496 (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896)) (not ((_ is Some!13169) (getPair!930 (apply!13031 lm!2473 lt!1955753) key!5896))))))

(assert (=> d!1536620 d!1536858))

(declare-fun d!1536860 () Bool)

(assert (=> d!1536860 (= (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896)) (not (isEmpty!29500 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))))

(declare-fun bs!1157272 () Bool)

(assert (= bs!1157272 d!1536860))

(assert (=> bs!1157272 m!5783244))

(declare-fun m!5783866 () Bool)

(assert (=> bs!1157272 m!5783866))

(assert (=> b!4799876 d!1536860))

(declare-fun b!4800280 () Bool)

(declare-fun e!2997593 () Option!13174)

(declare-fun e!2997594 () Option!13174)

(assert (=> b!4800280 (= e!2997593 e!2997594)))

(declare-fun c!818179 () Bool)

(assert (=> b!4800280 (= c!818179 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (not (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) key!5896))))))

(declare-fun b!4800282 () Bool)

(assert (=> b!4800282 (= e!2997594 None!13173)))

(declare-fun b!4800281 () Bool)

(assert (=> b!4800281 (= e!2997594 (getValueByKey!2391 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) key!5896))))

(declare-fun b!4800279 () Bool)

(assert (=> b!4800279 (= e!2997593 (Some!13173 (_2!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))))

(declare-fun d!1536862 () Bool)

(declare-fun c!818178 () Bool)

(assert (=> d!1536862 (= c!818178 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) key!5896)))))

(assert (=> d!1536862 (= (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896) e!2997593)))

(assert (= (and d!1536862 c!818178) b!4800279))

(assert (= (and d!1536862 (not c!818178)) b!4800280))

(assert (= (and b!4800280 c!818179) b!4800281))

(assert (= (and b!4800280 (not c!818179)) b!4800282))

(declare-fun m!5783868 () Bool)

(assert (=> b!4800281 m!5783868))

(assert (=> b!4799876 d!1536862))

(assert (=> b!4799897 d!1536848))

(assert (=> b!4799897 d!1536850))

(declare-fun d!1536864 () Bool)

(assert (=> d!1536864 (isDefined!10315 (getValueByKey!2391 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(declare-fun lt!1956123 () Unit!140595)

(assert (=> d!1536864 (= lt!1956123 (choose!34677 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> d!1536864 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))

(assert (=> d!1536864 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2182 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896) lt!1956123)))

(declare-fun bs!1157273 () Bool)

(assert (= bs!1157273 d!1536864))

(assert (=> bs!1157273 m!5783244))

(assert (=> bs!1157273 m!5783244))

(assert (=> bs!1157273 m!5783246))

(declare-fun m!5783870 () Bool)

(assert (=> bs!1157273 m!5783870))

(declare-fun m!5783872 () Bool)

(assert (=> bs!1157273 m!5783872))

(assert (=> b!4799877 d!1536864))

(assert (=> b!4799877 d!1536860))

(assert (=> b!4799877 d!1536862))

(declare-fun d!1536866 () Bool)

(assert (=> d!1536866 (contains!17963 (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) key!5896)))

(declare-fun lt!1956124 () Unit!140595)

(assert (=> d!1536866 (= lt!1956124 (choose!34678 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> d!1536866 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))

(assert (=> d!1536866 (= (lemmaInListThenGetKeysListContains!1091 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896) lt!1956124)))

(declare-fun bs!1157274 () Bool)

(assert (= bs!1157274 d!1536866))

(assert (=> bs!1157274 m!5783258))

(assert (=> bs!1157274 m!5783258))

(declare-fun m!5783874 () Bool)

(assert (=> bs!1157274 m!5783874))

(declare-fun m!5783876 () Bool)

(assert (=> bs!1157274 m!5783876))

(assert (=> bs!1157274 m!5783872))

(assert (=> b!4799877 d!1536866))

(declare-fun d!1536868 () Bool)

(declare-fun res!2041537 () Bool)

(declare-fun e!2997599 () Bool)

(assert (=> d!1536868 (=> res!2041537 e!2997599)))

(assert (=> d!1536868 (= res!2041537 (and ((_ is Cons!54311) (toList!6995 lm!2473)) (= (_1!31795 (h!60743 (toList!6995 lm!2473))) lt!1955753)))))

(assert (=> d!1536868 (= (containsKey!4023 (toList!6995 lm!2473) lt!1955753) e!2997599)))

(declare-fun b!4800287 () Bool)

(declare-fun e!2997600 () Bool)

(assert (=> b!4800287 (= e!2997599 e!2997600)))

(declare-fun res!2041538 () Bool)

(assert (=> b!4800287 (=> (not res!2041538) (not e!2997600))))

(assert (=> b!4800287 (= res!2041538 (and (or (not ((_ is Cons!54311) (toList!6995 lm!2473))) (bvsle (_1!31795 (h!60743 (toList!6995 lm!2473))) lt!1955753)) ((_ is Cons!54311) (toList!6995 lm!2473)) (bvslt (_1!31795 (h!60743 (toList!6995 lm!2473))) lt!1955753)))))

(declare-fun b!4800288 () Bool)

(assert (=> b!4800288 (= e!2997600 (containsKey!4023 (t!361885 (toList!6995 lm!2473)) lt!1955753))))

(assert (= (and d!1536868 (not res!2041537)) b!4800287))

(assert (= (and b!4800287 res!2041538) b!4800288))

(declare-fun m!5783878 () Bool)

(assert (=> b!4800288 m!5783878))

(assert (=> d!1536562 d!1536868))

(declare-fun d!1536870 () Bool)

(declare-fun res!2041539 () Bool)

(declare-fun e!2997601 () Bool)

(assert (=> d!1536870 (=> res!2041539 e!2997601)))

(assert (=> d!1536870 (= res!2041539 ((_ is Nil!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536870 (= (forall!12321 (toList!6995 lm!2473) lambda!232175) e!2997601)))

(declare-fun b!4800289 () Bool)

(declare-fun e!2997602 () Bool)

(assert (=> b!4800289 (= e!2997601 e!2997602)))

(declare-fun res!2041540 () Bool)

(assert (=> b!4800289 (=> (not res!2041540) (not e!2997602))))

(assert (=> b!4800289 (= res!2041540 (dynLambda!22090 lambda!232175 (h!60743 (toList!6995 lm!2473))))))

(declare-fun b!4800290 () Bool)

(assert (=> b!4800290 (= e!2997602 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232175))))

(assert (= (and d!1536870 (not res!2041539)) b!4800289))

(assert (= (and b!4800289 res!2041540) b!4800290))

(declare-fun b_lambda!187553 () Bool)

(assert (=> (not b_lambda!187553) (not b!4800289)))

(declare-fun m!5783880 () Bool)

(assert (=> b!4800289 m!5783880))

(declare-fun m!5783882 () Bool)

(assert (=> b!4800290 m!5783882))

(assert (=> d!1536626 d!1536870))

(declare-fun d!1536872 () Bool)

(declare-fun res!2041542 () Bool)

(declare-fun e!2997605 () Bool)

(assert (=> d!1536872 (=> res!2041542 e!2997605)))

(declare-fun e!2997604 () Bool)

(assert (=> d!1536872 (= res!2041542 e!2997604)))

(declare-fun res!2041543 () Bool)

(assert (=> d!1536872 (=> (not res!2041543) (not e!2997604))))

(assert (=> d!1536872 (= res!2041543 ((_ is Cons!54311) (t!361885 (toList!6995 lm!2473))))))

(assert (=> d!1536872 (= (containsKeyBiggerList!600 (t!361885 (toList!6995 lm!2473)) key!5896) e!2997605)))

(declare-fun b!4800291 () Bool)

(assert (=> b!4800291 (= e!2997604 (containsKey!4020 (_2!31795 (h!60743 (t!361885 (toList!6995 lm!2473)))) key!5896))))

(declare-fun b!4800292 () Bool)

(declare-fun e!2997603 () Bool)

(assert (=> b!4800292 (= e!2997605 e!2997603)))

(declare-fun res!2041541 () Bool)

(assert (=> b!4800292 (=> (not res!2041541) (not e!2997603))))

(assert (=> b!4800292 (= res!2041541 ((_ is Cons!54311) (t!361885 (toList!6995 lm!2473))))))

(declare-fun b!4800293 () Bool)

(assert (=> b!4800293 (= e!2997603 (containsKeyBiggerList!600 (t!361885 (t!361885 (toList!6995 lm!2473))) key!5896))))

(assert (= (and d!1536872 res!2041543) b!4800291))

(assert (= (and d!1536872 (not res!2041542)) b!4800292))

(assert (= (and b!4800292 res!2041541) b!4800293))

(assert (=> b!4800291 m!5783474))

(declare-fun m!5783884 () Bool)

(assert (=> b!4800293 m!5783884))

(assert (=> b!4799691 d!1536872))

(declare-fun d!1536874 () Bool)

(declare-fun res!2041548 () Bool)

(declare-fun e!2997610 () Bool)

(assert (=> d!1536874 (=> res!2041548 e!2997610)))

(assert (=> d!1536874 (= res!2041548 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) key!5896)))))

(assert (=> d!1536874 (= (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) e!2997610)))

(declare-fun b!4800298 () Bool)

(declare-fun e!2997611 () Bool)

(assert (=> b!4800298 (= e!2997610 e!2997611)))

(declare-fun res!2041549 () Bool)

(assert (=> b!4800298 (=> (not res!2041549) (not e!2997611))))

(assert (=> b!4800298 (= res!2041549 ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))

(declare-fun b!4800299 () Bool)

(assert (=> b!4800299 (= e!2997611 (containsKey!4024 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) key!5896))))

(assert (= (and d!1536874 (not res!2041548)) b!4800298))

(assert (= (and b!4800298 res!2041549) b!4800299))

(declare-fun m!5783886 () Bool)

(assert (=> b!4800299 m!5783886))

(assert (=> b!4799893 d!1536874))

(declare-fun d!1536876 () Bool)

(assert (=> d!1536876 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896)))

(declare-fun lt!1956127 () Unit!140595)

(declare-fun choose!34679 (List!54434 K!15884) Unit!140595)

(assert (=> d!1536876 (= lt!1956127 (choose!34679 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896))))

(assert (=> d!1536876 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))

(assert (=> d!1536876 (= (lemmaInGetKeysListThenContainsKey!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) key!5896) lt!1956127)))

(declare-fun bs!1157275 () Bool)

(assert (= bs!1157275 d!1536876))

(assert (=> bs!1157275 m!5783274))

(declare-fun m!5783888 () Bool)

(assert (=> bs!1157275 m!5783888))

(assert (=> bs!1157275 m!5783850))

(assert (=> b!4799893 d!1536876))

(declare-fun d!1536878 () Bool)

(declare-fun res!2041551 () Bool)

(declare-fun e!2997614 () Bool)

(assert (=> d!1536878 (=> res!2041551 e!2997614)))

(declare-fun e!2997613 () Bool)

(assert (=> d!1536878 (= res!2041551 e!2997613)))

(declare-fun res!2041552 () Bool)

(assert (=> d!1536878 (=> (not res!2041552) (not e!2997613))))

(assert (=> d!1536878 (= res!2041552 ((_ is Cons!54311) (t!361885 (toList!6995 lt!1955751))))))

(assert (=> d!1536878 (= (containsKeyBiggerList!600 (t!361885 (toList!6995 lt!1955751)) key!5896) e!2997614)))

(declare-fun b!4800300 () Bool)

(assert (=> b!4800300 (= e!2997613 (containsKey!4020 (_2!31795 (h!60743 (t!361885 (toList!6995 lt!1955751)))) key!5896))))

(declare-fun b!4800301 () Bool)

(declare-fun e!2997612 () Bool)

(assert (=> b!4800301 (= e!2997614 e!2997612)))

(declare-fun res!2041550 () Bool)

(assert (=> b!4800301 (=> (not res!2041550) (not e!2997612))))

(assert (=> b!4800301 (= res!2041550 ((_ is Cons!54311) (t!361885 (toList!6995 lt!1955751))))))

(declare-fun b!4800302 () Bool)

(assert (=> b!4800302 (= e!2997612 (containsKeyBiggerList!600 (t!361885 (t!361885 (toList!6995 lt!1955751))) key!5896))))

(assert (= (and d!1536878 res!2041552) b!4800300))

(assert (= (and d!1536878 (not res!2041551)) b!4800301))

(assert (= (and b!4800301 res!2041550) b!4800302))

(declare-fun m!5783890 () Bool)

(assert (=> b!4800300 m!5783890))

(declare-fun m!5783892 () Bool)

(assert (=> b!4800302 m!5783892))

(assert (=> b!4799927 d!1536878))

(assert (=> b!4799689 d!1536612))

(declare-fun bs!1157276 () Bool)

(declare-fun b!4800324 () Bool)

(assert (= bs!1157276 (and b!4800324 b!4800030)))

(declare-fun lambda!232287 () Int)

(assert (=> bs!1157276 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232287 lambda!232192))))

(declare-fun bs!1157277 () Bool)

(assert (= bs!1157277 (and b!4800324 b!4800053)))

(assert (=> bs!1157277 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= lambda!232287 lambda!232194))))

(assert (=> b!4800324 true))

(declare-fun bs!1157278 () Bool)

(declare-fun b!4800321 () Bool)

(assert (= bs!1157278 (and b!4800321 b!4800030)))

(declare-fun lambda!232288 () Int)

(assert (=> bs!1157278 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232288 lambda!232192))))

(declare-fun bs!1157279 () Bool)

(assert (= bs!1157279 (and b!4800321 b!4800053)))

(assert (=> bs!1157279 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= lambda!232288 lambda!232194))))

(declare-fun bs!1157280 () Bool)

(assert (= bs!1157280 (and b!4800321 b!4800324)))

(assert (=> bs!1157280 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (= lambda!232288 lambda!232287))))

(assert (=> b!4800321 true))

(declare-fun bs!1157281 () Bool)

(declare-fun b!4800326 () Bool)

(assert (= bs!1157281 (and b!4800326 b!4800030)))

(declare-fun lambda!232289 () Int)

(assert (=> bs!1157281 (= lambda!232289 lambda!232192)))

(declare-fun bs!1157282 () Bool)

(assert (= bs!1157282 (and b!4800326 b!4800053)))

(assert (=> bs!1157282 (= (= (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= lambda!232289 lambda!232194))))

(declare-fun bs!1157283 () Bool)

(assert (= bs!1157283 (and b!4800326 b!4800324)))

(assert (=> bs!1157283 (= (= (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (= lambda!232289 lambda!232287))))

(declare-fun bs!1157284 () Bool)

(assert (= bs!1157284 (and b!4800326 b!4800321)))

(assert (=> bs!1157284 (= (= (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))) (= lambda!232289 lambda!232288))))

(assert (=> b!4800326 true))

(declare-fun bs!1157285 () Bool)

(declare-fun b!4800329 () Bool)

(assert (= bs!1157285 (and b!4800329 b!4800031)))

(declare-fun lambda!232290 () Int)

(assert (=> bs!1157285 (= lambda!232290 lambda!232193)))

(declare-fun bs!1157286 () Bool)

(assert (= bs!1157286 (and b!4800329 b!4800054)))

(assert (=> bs!1157286 (= lambda!232290 lambda!232195)))

(declare-fun e!2997626 () List!54437)

(assert (=> b!4800321 (= e!2997626 (Cons!54313 (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))))

(declare-fun c!818187 () Bool)

(assert (=> b!4800321 (= c!818187 (containsKey!4024 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))))

(declare-fun lt!1956146 () Unit!140595)

(declare-fun e!2997623 () Unit!140595)

(assert (=> b!4800321 (= lt!1956146 e!2997623)))

(declare-fun c!818188 () Bool)

(assert (=> b!4800321 (= c!818188 (contains!17963 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))))

(declare-fun lt!1956148 () Unit!140595)

(declare-fun e!2997625 () Unit!140595)

(assert (=> b!4800321 (= lt!1956148 e!2997625)))

(declare-fun lt!1956144 () List!54437)

(assert (=> b!4800321 (= lt!1956144 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))))

(declare-fun lt!1956143 () Unit!140595)

(declare-fun lemmaForallContainsAddHeadPreserves!348 (List!54434 List!54437 tuple2!57000) Unit!140595)

(assert (=> b!4800321 (= lt!1956143 (lemmaForallContainsAddHeadPreserves!348 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) lt!1956144 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))))

(assert (=> b!4800321 (forall!12324 lt!1956144 lambda!232288)))

(declare-fun lt!1956145 () Unit!140595)

(assert (=> b!4800321 (= lt!1956145 lt!1956143)))

(declare-fun b!4800322 () Bool)

(declare-fun Unit!140642 () Unit!140595)

(assert (=> b!4800322 (= e!2997625 Unit!140642)))

(declare-fun b!4800323 () Bool)

(declare-fun res!2041559 () Bool)

(declare-fun e!2997624 () Bool)

(assert (=> b!4800323 (=> (not res!2041559) (not e!2997624))))

(declare-fun lt!1956147 () List!54437)

(assert (=> b!4800323 (= res!2041559 (= (length!722 lt!1956147) (length!723 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))))

(assert (=> b!4800324 false))

(declare-fun lt!1956142 () Unit!140595)

(declare-fun forallContained!4211 (List!54437 Int K!15884) Unit!140595)

(assert (=> b!4800324 (= lt!1956142 (forallContained!4211 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) lambda!232287 (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))))

(declare-fun Unit!140643 () Unit!140595)

(assert (=> b!4800324 (= e!2997625 Unit!140643)))

(declare-fun b!4800325 () Bool)

(assert (=> b!4800325 (= e!2997626 Nil!54313)))

(declare-fun d!1536880 () Bool)

(assert (=> d!1536880 e!2997624))

(declare-fun res!2041560 () Bool)

(assert (=> d!1536880 (=> (not res!2041560) (not e!2997624))))

(assert (=> d!1536880 (= res!2041560 (noDuplicate!933 lt!1956147))))

(assert (=> d!1536880 (= lt!1956147 e!2997626)))

(declare-fun c!818186 () Bool)

(assert (=> d!1536880 (= c!818186 ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))))

(assert (=> d!1536880 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))))

(assert (=> d!1536880 (= (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) lt!1956147)))

(declare-fun res!2041561 () Bool)

(assert (=> b!4800326 (=> (not res!2041561) (not e!2997624))))

(assert (=> b!4800326 (= res!2041561 (forall!12324 lt!1956147 lambda!232289))))

(declare-fun b!4800327 () Bool)

(declare-fun Unit!140644 () Unit!140595)

(assert (=> b!4800327 (= e!2997623 Unit!140644)))

(declare-fun b!4800328 () Bool)

(assert (=> b!4800328 false))

(declare-fun Unit!140645 () Unit!140595)

(assert (=> b!4800328 (= e!2997623 Unit!140645)))

(assert (=> b!4800329 (= e!2997624 (= (content!9743 lt!1956147) (content!9743 (map!12273 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))) lambda!232290))))))

(assert (= (and d!1536880 c!818186) b!4800321))

(assert (= (and d!1536880 (not c!818186)) b!4800325))

(assert (= (and b!4800321 c!818187) b!4800328))

(assert (= (and b!4800321 (not c!818187)) b!4800327))

(assert (= (and b!4800321 c!818188) b!4800324))

(assert (= (and b!4800321 (not c!818188)) b!4800322))

(assert (= (and d!1536880 res!2041560) b!4800323))

(assert (= (and b!4800323 res!2041559) b!4800326))

(assert (= (and b!4800326 res!2041561) b!4800329))

(declare-fun m!5783894 () Bool)

(assert (=> b!4800321 m!5783894))

(declare-fun m!5783896 () Bool)

(assert (=> b!4800321 m!5783896))

(declare-fun m!5783898 () Bool)

(assert (=> b!4800321 m!5783898))

(declare-fun m!5783900 () Bool)

(assert (=> b!4800321 m!5783900))

(assert (=> b!4800321 m!5783894))

(declare-fun m!5783902 () Bool)

(assert (=> b!4800321 m!5783902))

(declare-fun m!5783904 () Bool)

(assert (=> d!1536880 m!5783904))

(assert (=> d!1536880 m!5783850))

(assert (=> b!4800324 m!5783894))

(assert (=> b!4800324 m!5783894))

(declare-fun m!5783906 () Bool)

(assert (=> b!4800324 m!5783906))

(declare-fun m!5783908 () Bool)

(assert (=> b!4800323 m!5783908))

(assert (=> b!4800323 m!5783412))

(declare-fun m!5783910 () Bool)

(assert (=> b!4800329 m!5783910))

(declare-fun m!5783912 () Bool)

(assert (=> b!4800329 m!5783912))

(assert (=> b!4800329 m!5783912))

(declare-fun m!5783914 () Bool)

(assert (=> b!4800329 m!5783914))

(declare-fun m!5783916 () Bool)

(assert (=> b!4800326 m!5783916))

(assert (=> b!4799891 d!1536880))

(declare-fun d!1536882 () Bool)

(declare-fun res!2041562 () Bool)

(declare-fun e!2997627 () Bool)

(assert (=> d!1536882 (=> res!2041562 e!2997627)))

(assert (=> d!1536882 (= res!2041562 (and ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) key!5896)))))

(assert (=> d!1536882 (= (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896) e!2997627)))

(declare-fun b!4800332 () Bool)

(declare-fun e!2997628 () Bool)

(assert (=> b!4800332 (= e!2997627 e!2997628)))

(declare-fun res!2041563 () Bool)

(assert (=> b!4800332 (=> (not res!2041563) (not e!2997628))))

(assert (=> b!4800332 (= res!2041563 ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))

(declare-fun b!4800333 () Bool)

(assert (=> b!4800333 (= e!2997628 (containsKey!4024 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) key!5896))))

(assert (= (and d!1536882 (not res!2041562)) b!4800332))

(assert (= (and b!4800332 res!2041563) b!4800333))

(declare-fun m!5783918 () Bool)

(assert (=> b!4800333 m!5783918))

(assert (=> b!4799872 d!1536882))

(declare-fun d!1536884 () Bool)

(assert (=> d!1536884 (containsKey!4024 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896)))

(declare-fun lt!1956149 () Unit!140595)

(assert (=> d!1536884 (= lt!1956149 (choose!34679 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896))))

(assert (=> d!1536884 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))

(assert (=> d!1536884 (= (lemmaInGetKeysListThenContainsKey!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) key!5896) lt!1956149)))

(declare-fun bs!1157287 () Bool)

(assert (= bs!1157287 d!1536884))

(assert (=> bs!1157287 m!5783240))

(declare-fun m!5783920 () Bool)

(assert (=> bs!1157287 m!5783920))

(assert (=> bs!1157287 m!5783872))

(assert (=> b!4799872 d!1536884))

(declare-fun d!1536886 () Bool)

(declare-fun res!2041564 () Bool)

(declare-fun e!2997629 () Bool)

(assert (=> d!1536886 (=> res!2041564 e!2997629)))

(assert (=> d!1536886 (= res!2041564 (and ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lt!1955751)))) (= (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))) key!5896)))))

(assert (=> d!1536886 (= (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lt!1955751))) key!5896) e!2997629)))

(declare-fun b!4800334 () Bool)

(declare-fun e!2997630 () Bool)

(assert (=> b!4800334 (= e!2997629 e!2997630)))

(declare-fun res!2041565 () Bool)

(assert (=> b!4800334 (=> (not res!2041565) (not e!2997630))))

(assert (=> b!4800334 (= res!2041565 ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(declare-fun b!4800335 () Bool)

(assert (=> b!4800335 (= e!2997630 (containsKey!4020 (t!361884 (_2!31795 (h!60743 (toList!6995 lt!1955751)))) key!5896))))

(assert (= (and d!1536886 (not res!2041564)) b!4800334))

(assert (= (and b!4800334 res!2041565) b!4800335))

(declare-fun m!5783922 () Bool)

(assert (=> b!4800335 m!5783922))

(assert (=> b!4799925 d!1536886))

(declare-fun d!1536888 () Bool)

(assert (=> d!1536888 (= (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753)) (not (isEmpty!29499 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753))))))

(declare-fun bs!1157288 () Bool)

(assert (= bs!1157288 d!1536888))

(assert (=> bs!1157288 m!5783112))

(declare-fun m!5783924 () Bool)

(assert (=> bs!1157288 m!5783924))

(assert (=> b!4799768 d!1536888))

(assert (=> b!4799768 d!1536706))

(declare-fun d!1536890 () Bool)

(assert (=> d!1536890 (= (isDefined!10311 lt!1955883) (not (isEmpty!29496 lt!1955883)))))

(declare-fun bs!1157289 () Bool)

(assert (= bs!1157289 d!1536890))

(assert (=> bs!1157289 m!5783312))

(assert (=> b!4799924 d!1536890))

(assert (=> d!1536616 d!1536874))

(declare-fun bs!1157290 () Bool)

(declare-fun b!4800339 () Bool)

(assert (= bs!1157290 (and b!4800339 b!4800321)))

(declare-fun lambda!232291 () Int)

(assert (=> bs!1157290 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))) (= lambda!232291 lambda!232288))))

(declare-fun bs!1157291 () Bool)

(assert (= bs!1157291 (and b!4800339 b!4800326)))

(assert (=> bs!1157291 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232291 lambda!232289))))

(declare-fun bs!1157292 () Bool)

(assert (= bs!1157292 (and b!4800339 b!4800324)))

(assert (=> bs!1157292 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (= lambda!232291 lambda!232287))))

(declare-fun bs!1157293 () Bool)

(assert (= bs!1157293 (and b!4800339 b!4800053)))

(assert (=> bs!1157293 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= lambda!232291 lambda!232194))))

(declare-fun bs!1157294 () Bool)

(assert (= bs!1157294 (and b!4800339 b!4800030)))

(assert (=> bs!1157294 (= (= (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232291 lambda!232192))))

(assert (=> b!4800339 true))

(declare-fun bs!1157295 () Bool)

(declare-fun b!4800336 () Bool)

(assert (= bs!1157295 (and b!4800336 b!4800321)))

(declare-fun lambda!232292 () Int)

(assert (=> bs!1157295 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))) (= lambda!232292 lambda!232288))))

(declare-fun bs!1157296 () Bool)

(assert (= bs!1157296 (and b!4800336 b!4800326)))

(assert (=> bs!1157296 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232292 lambda!232289))))

(declare-fun bs!1157297 () Bool)

(assert (= bs!1157297 (and b!4800336 b!4800339)))

(assert (=> bs!1157297 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (= lambda!232292 lambda!232291))))

(declare-fun bs!1157298 () Bool)

(assert (= bs!1157298 (and b!4800336 b!4800324)))

(assert (=> bs!1157298 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (= lambda!232292 lambda!232287))))

(declare-fun bs!1157299 () Bool)

(assert (= bs!1157299 (and b!4800336 b!4800053)))

(assert (=> bs!1157299 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (= lambda!232292 lambda!232194))))

(declare-fun bs!1157300 () Bool)

(assert (= bs!1157300 (and b!4800336 b!4800030)))

(assert (=> bs!1157300 (= (= (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232292 lambda!232192))))

(assert (=> b!4800336 true))

(declare-fun bs!1157301 () Bool)

(declare-fun b!4800341 () Bool)

(assert (= bs!1157301 (and b!4800341 b!4800321)))

(declare-fun lambda!232293 () Int)

(assert (=> bs!1157301 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))))) (= lambda!232293 lambda!232288))))

(declare-fun bs!1157302 () Bool)

(assert (= bs!1157302 (and b!4800341 b!4800326)))

(assert (=> bs!1157302 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232293 lambda!232289))))

(declare-fun bs!1157303 () Bool)

(assert (= bs!1157303 (and b!4800341 b!4800336)))

(assert (=> bs!1157303 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (Cons!54310 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))) (= lambda!232293 lambda!232292))))

(declare-fun bs!1157304 () Bool)

(assert (= bs!1157304 (and b!4800341 b!4800339)))

(assert (=> bs!1157304 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (= lambda!232293 lambda!232291))))

(declare-fun bs!1157305 () Bool)

(assert (= bs!1157305 (and b!4800341 b!4800324)))

(assert (=> bs!1157305 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lt!1955751))))) (= lambda!232293 lambda!232287))))

(declare-fun bs!1157306 () Bool)

(assert (= bs!1157306 (and b!4800341 b!4800053)))

(assert (=> bs!1157306 (= lambda!232293 lambda!232194)))

(declare-fun bs!1157307 () Bool)

(assert (= bs!1157307 (and b!4800341 b!4800030)))

(assert (=> bs!1157307 (= (= (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) (toList!6996 (extractMap!2485 (toList!6995 lt!1955751)))) (= lambda!232293 lambda!232192))))

(assert (=> b!4800341 true))

(declare-fun bs!1157308 () Bool)

(declare-fun b!4800344 () Bool)

(assert (= bs!1157308 (and b!4800344 b!4800031)))

(declare-fun lambda!232294 () Int)

(assert (=> bs!1157308 (= lambda!232294 lambda!232193)))

(declare-fun bs!1157309 () Bool)

(assert (= bs!1157309 (and b!4800344 b!4800054)))

(assert (=> bs!1157309 (= lambda!232294 lambda!232195)))

(declare-fun bs!1157310 () Bool)

(assert (= bs!1157310 (and b!4800344 b!4800329)))

(assert (=> bs!1157310 (= lambda!232294 lambda!232290)))

(declare-fun e!2997634 () List!54437)

(assert (=> b!4800336 (= e!2997634 (Cons!54313 (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))))

(declare-fun c!818190 () Bool)

(assert (=> b!4800336 (= c!818190 (containsKey!4024 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))))

(declare-fun lt!1956154 () Unit!140595)

(declare-fun e!2997631 () Unit!140595)

(assert (=> b!4800336 (= lt!1956154 e!2997631)))

(declare-fun c!818191 () Bool)

(assert (=> b!4800336 (= c!818191 (contains!17963 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))))

(declare-fun lt!1956156 () Unit!140595)

(declare-fun e!2997633 () Unit!140595)

(assert (=> b!4800336 (= lt!1956156 e!2997633)))

(declare-fun lt!1956152 () List!54437)

(assert (=> b!4800336 (= lt!1956152 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))))

(declare-fun lt!1956151 () Unit!140595)

(assert (=> b!4800336 (= lt!1956151 (lemmaForallContainsAddHeadPreserves!348 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) lt!1956152 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))))

(assert (=> b!4800336 (forall!12324 lt!1956152 lambda!232292)))

(declare-fun lt!1956153 () Unit!140595)

(assert (=> b!4800336 (= lt!1956153 lt!1956151)))

(declare-fun b!4800337 () Bool)

(declare-fun Unit!140657 () Unit!140595)

(assert (=> b!4800337 (= e!2997633 Unit!140657)))

(declare-fun b!4800338 () Bool)

(declare-fun res!2041566 () Bool)

(declare-fun e!2997632 () Bool)

(assert (=> b!4800338 (=> (not res!2041566) (not e!2997632))))

(declare-fun lt!1956155 () List!54437)

(assert (=> b!4800338 (= res!2041566 (= (length!722 lt!1956155) (length!723 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))))

(assert (=> b!4800339 false))

(declare-fun lt!1956150 () Unit!140595)

(assert (=> b!4800339 (= lt!1956150 (forallContained!4211 (getKeysList!1096 (t!361884 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))) lambda!232291 (_1!31794 (h!60742 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))))

(declare-fun Unit!140658 () Unit!140595)

(assert (=> b!4800339 (= e!2997633 Unit!140658)))

(declare-fun b!4800340 () Bool)

(assert (=> b!4800340 (= e!2997634 Nil!54313)))

(declare-fun d!1536892 () Bool)

(assert (=> d!1536892 e!2997632))

(declare-fun res!2041567 () Bool)

(assert (=> d!1536892 (=> (not res!2041567) (not e!2997632))))

(assert (=> d!1536892 (= res!2041567 (noDuplicate!933 lt!1956155))))

(assert (=> d!1536892 (= lt!1956155 e!2997634)))

(declare-fun c!818189 () Bool)

(assert (=> d!1536892 (= c!818189 ((_ is Cons!54310) (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))))))

(assert (=> d!1536892 (invariantList!1750 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))))))

(assert (=> d!1536892 (= (getKeysList!1096 (toList!6996 (extractMap!2485 (toList!6995 lm!2473)))) lt!1956155)))

(declare-fun res!2041568 () Bool)

(assert (=> b!4800341 (=> (not res!2041568) (not e!2997632))))

(assert (=> b!4800341 (= res!2041568 (forall!12324 lt!1956155 lambda!232293))))

(declare-fun b!4800342 () Bool)

(declare-fun Unit!140659 () Unit!140595)

(assert (=> b!4800342 (= e!2997631 Unit!140659)))

(declare-fun b!4800343 () Bool)

(assert (=> b!4800343 false))

(declare-fun Unit!140660 () Unit!140595)

(assert (=> b!4800343 (= e!2997631 Unit!140660)))

(assert (=> b!4800344 (= e!2997632 (= (content!9743 lt!1956155) (content!9743 (map!12273 (toList!6996 (extractMap!2485 (toList!6995 lm!2473))) lambda!232294))))))

(assert (= (and d!1536892 c!818189) b!4800336))

(assert (= (and d!1536892 (not c!818189)) b!4800340))

(assert (= (and b!4800336 c!818190) b!4800343))

(assert (= (and b!4800336 (not c!818190)) b!4800342))

(assert (= (and b!4800336 c!818191) b!4800339))

(assert (= (and b!4800336 (not c!818191)) b!4800337))

(assert (= (and d!1536892 res!2041567) b!4800338))

(assert (= (and b!4800338 res!2041566) b!4800341))

(assert (= (and b!4800341 res!2041568) b!4800344))

(declare-fun m!5783926 () Bool)

(assert (=> b!4800336 m!5783926))

(declare-fun m!5783928 () Bool)

(assert (=> b!4800336 m!5783928))

(declare-fun m!5783930 () Bool)

(assert (=> b!4800336 m!5783930))

(declare-fun m!5783932 () Bool)

(assert (=> b!4800336 m!5783932))

(assert (=> b!4800336 m!5783926))

(declare-fun m!5783934 () Bool)

(assert (=> b!4800336 m!5783934))

(declare-fun m!5783936 () Bool)

(assert (=> d!1536892 m!5783936))

(assert (=> d!1536892 m!5783872))

(assert (=> b!4800339 m!5783926))

(assert (=> b!4800339 m!5783926))

(declare-fun m!5783938 () Bool)

(assert (=> b!4800339 m!5783938))

(declare-fun m!5783940 () Bool)

(assert (=> b!4800338 m!5783940))

(assert (=> b!4800338 m!5783446))

(declare-fun m!5783942 () Bool)

(assert (=> b!4800344 m!5783942))

(declare-fun m!5783944 () Bool)

(assert (=> b!4800344 m!5783944))

(assert (=> b!4800344 m!5783944))

(declare-fun m!5783946 () Bool)

(assert (=> b!4800344 m!5783946))

(declare-fun m!5783948 () Bool)

(assert (=> b!4800341 m!5783948))

(assert (=> b!4799870 d!1536892))

(assert (=> b!4799759 d!1536612))

(declare-fun d!1536894 () Bool)

(assert (=> d!1536894 (= (tail!9321 (toList!6995 lm!2473)) (t!361885 (toList!6995 lm!2473)))))

(assert (=> d!1536574 d!1536894))

(declare-fun d!1536896 () Bool)

(declare-fun res!2041569 () Bool)

(declare-fun e!2997635 () Bool)

(assert (=> d!1536896 (=> res!2041569 e!2997635)))

(assert (=> d!1536896 (= res!2041569 (and ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753)) (= (_1!31794 (h!60742 (apply!13031 lm!2473 lt!1955753))) key!5896)))))

(assert (=> d!1536896 (= (containsKey!4020 (apply!13031 lm!2473 lt!1955753) key!5896) e!2997635)))

(declare-fun b!4800345 () Bool)

(declare-fun e!2997636 () Bool)

(assert (=> b!4800345 (= e!2997635 e!2997636)))

(declare-fun res!2041570 () Bool)

(assert (=> b!4800345 (=> (not res!2041570) (not e!2997636))))

(assert (=> b!4800345 (= res!2041570 ((_ is Cons!54310) (apply!13031 lm!2473 lt!1955753)))))

(declare-fun b!4800346 () Bool)

(assert (=> b!4800346 (= e!2997636 (containsKey!4020 (t!361884 (apply!13031 lm!2473 lt!1955753)) key!5896))))

(assert (= (and d!1536896 (not res!2041569)) b!4800345))

(assert (= (and b!4800345 res!2041570) b!4800346))

(declare-fun m!5783950 () Bool)

(assert (=> b!4800346 m!5783950))

(assert (=> b!4799920 d!1536896))

(declare-fun d!1536898 () Bool)

(declare-fun res!2041571 () Bool)

(declare-fun e!2997637 () Bool)

(assert (=> d!1536898 (=> res!2041571 e!2997637)))

(assert (=> d!1536898 (= res!2041571 (not ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(assert (=> d!1536898 (= (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473)))) e!2997637)))

(declare-fun b!4800347 () Bool)

(declare-fun e!2997638 () Bool)

(assert (=> b!4800347 (= e!2997637 e!2997638)))

(declare-fun res!2041572 () Bool)

(assert (=> b!4800347 (=> (not res!2041572) (not e!2997638))))

(assert (=> b!4800347 (= res!2041572 (not (containsKey!4020 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))))

(declare-fun b!4800348 () Bool)

(assert (=> b!4800348 (= e!2997638 (noDuplicateKeys!2359 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(assert (= (and d!1536898 (not res!2041571)) b!4800347))

(assert (= (and b!4800347 res!2041572) b!4800348))

(declare-fun m!5783952 () Bool)

(assert (=> b!4800347 m!5783952))

(declare-fun m!5783954 () Bool)

(assert (=> b!4800348 m!5783954))

(assert (=> bs!1157159 d!1536898))

(declare-fun d!1536900 () Bool)

(assert (=> d!1536900 (isDefined!10314 (getValueByKey!2390 (toList!6995 lm!2473) lt!1955753))))

(declare-fun lt!1956157 () Unit!140595)

(assert (=> d!1536900 (= lt!1956157 (choose!34674 (toList!6995 lm!2473) lt!1955753))))

(declare-fun e!2997639 () Bool)

(assert (=> d!1536900 e!2997639))

(declare-fun res!2041573 () Bool)

(assert (=> d!1536900 (=> (not res!2041573) (not e!2997639))))

(assert (=> d!1536900 (= res!2041573 (isStrictlySorted!897 (toList!6995 lm!2473)))))

(assert (=> d!1536900 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2181 (toList!6995 lm!2473) lt!1955753) lt!1956157)))

(declare-fun b!4800349 () Bool)

(assert (=> b!4800349 (= e!2997639 (containsKey!4023 (toList!6995 lm!2473) lt!1955753))))

(assert (= (and d!1536900 res!2041573) b!4800349))

(assert (=> d!1536900 m!5783112))

(assert (=> d!1536900 m!5783112))

(assert (=> d!1536900 m!5783114))

(declare-fun m!5783956 () Bool)

(assert (=> d!1536900 m!5783956))

(assert (=> d!1536900 m!5783156))

(assert (=> b!4800349 m!5783108))

(assert (=> b!4799766 d!1536900))

(assert (=> b!4799766 d!1536888))

(assert (=> b!4799766 d!1536706))

(declare-fun d!1536902 () Bool)

(assert (=> d!1536902 (= (isDefined!10311 (getPair!930 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29496 (getPair!930 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1157311 () Bool)

(assert (= bs!1157311 d!1536902))

(assert (=> bs!1157311 m!5783090))

(declare-fun m!5783958 () Bool)

(assert (=> bs!1157311 m!5783958))

(assert (=> b!4799735 d!1536902))

(declare-fun lt!1956158 () Option!13170)

(declare-fun b!4800350 () Bool)

(declare-fun e!2997644 () Bool)

(assert (=> b!4800350 (= e!2997644 (contains!17964 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) (get!18541 lt!1956158)))))

(declare-fun b!4800351 () Bool)

(declare-fun e!2997640 () Option!13170)

(assert (=> b!4800351 (= e!2997640 (getPair!930 (t!361884 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4800352 () Bool)

(declare-fun e!2997641 () Option!13170)

(assert (=> b!4800352 (= e!2997641 (Some!13169 (h!60742 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)))))))

(declare-fun b!4800353 () Bool)

(declare-fun e!2997643 () Bool)

(assert (=> b!4800353 (= e!2997643 (not (containsKey!4020 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4800354 () Bool)

(assert (=> b!4800354 (= e!2997641 e!2997640)))

(declare-fun c!818193 () Bool)

(assert (=> b!4800354 (= c!818193 ((_ is Cons!54310) (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896))))))

(declare-fun d!1536904 () Bool)

(declare-fun e!2997642 () Bool)

(assert (=> d!1536904 e!2997642))

(declare-fun res!2041574 () Bool)

(assert (=> d!1536904 (=> res!2041574 e!2997642)))

(assert (=> d!1536904 (= res!2041574 e!2997643)))

(declare-fun res!2041577 () Bool)

(assert (=> d!1536904 (=> (not res!2041577) (not e!2997643))))

(assert (=> d!1536904 (= res!2041577 (isEmpty!29496 lt!1956158))))

(assert (=> d!1536904 (= lt!1956158 e!2997641)))

(declare-fun c!818192 () Bool)

(assert (=> d!1536904 (= c!818192 (and ((_ is Cons!54310) (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896))) (= (_1!31794 (h!60742 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1536904 (noDuplicateKeys!2359 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)))))

(assert (=> d!1536904 (= (getPair!930 (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) key!5896) lt!1956158)))

(declare-fun b!4800355 () Bool)

(declare-fun res!2041575 () Bool)

(assert (=> b!4800355 (=> (not res!2041575) (not e!2997644))))

(assert (=> b!4800355 (= res!2041575 (= (_1!31794 (get!18541 lt!1956158)) key!5896))))

(declare-fun b!4800356 () Bool)

(assert (=> b!4800356 (= e!2997640 None!13169)))

(declare-fun b!4800357 () Bool)

(assert (=> b!4800357 (= e!2997642 e!2997644)))

(declare-fun res!2041576 () Bool)

(assert (=> b!4800357 (=> (not res!2041576) (not e!2997644))))

(assert (=> b!4800357 (= res!2041576 (isDefined!10311 lt!1956158))))

(assert (= (and d!1536904 c!818192) b!4800352))

(assert (= (and d!1536904 (not c!818192)) b!4800354))

(assert (= (and b!4800354 c!818193) b!4800351))

(assert (= (and b!4800354 (not c!818193)) b!4800356))

(assert (= (and d!1536904 res!2041577) b!4800353))

(assert (= (and d!1536904 (not res!2041574)) b!4800357))

(assert (= (and b!4800357 res!2041576) b!4800355))

(assert (= (and b!4800355 res!2041575) b!4800350))

(declare-fun m!5783960 () Bool)

(assert (=> b!4800350 m!5783960))

(assert (=> b!4800350 m!5783088))

(assert (=> b!4800350 m!5783960))

(declare-fun m!5783962 () Bool)

(assert (=> b!4800350 m!5783962))

(assert (=> b!4800355 m!5783960))

(assert (=> b!4800353 m!5783088))

(declare-fun m!5783964 () Bool)

(assert (=> b!4800353 m!5783964))

(declare-fun m!5783966 () Bool)

(assert (=> b!4800357 m!5783966))

(declare-fun m!5783968 () Bool)

(assert (=> d!1536904 m!5783968))

(assert (=> d!1536904 m!5783088))

(declare-fun m!5783970 () Bool)

(assert (=> d!1536904 m!5783970))

(declare-fun m!5783972 () Bool)

(assert (=> b!4800351 m!5783972))

(assert (=> b!4799735 d!1536904))

(declare-fun d!1536906 () Bool)

(assert (=> d!1536906 (= (apply!13031 lm!2473 (hash!5011 hashF!1559 key!5896)) (get!18542 (getValueByKey!2390 (toList!6995 lm!2473) (hash!5011 hashF!1559 key!5896))))))

(declare-fun bs!1157312 () Bool)

(assert (= bs!1157312 d!1536906))

(assert (=> bs!1157312 m!5783014))

(assert (=> bs!1157312 m!5783830))

(assert (=> bs!1157312 m!5783830))

(declare-fun m!5783974 () Bool)

(assert (=> bs!1157312 m!5783974))

(assert (=> b!4799735 d!1536906))

(assert (=> b!4799735 d!1536566))

(assert (=> b!4799922 d!1536702))

(declare-fun bs!1157313 () Bool)

(declare-fun b!4800362 () Bool)

(assert (= bs!1157313 (and b!4800362 b!4800246)))

(declare-fun lambda!232295 () Int)

(assert (=> bs!1157313 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232295 lambda!232274))))

(declare-fun bs!1157314 () Bool)

(assert (= bs!1157314 (and b!4800362 b!4800242)))

(assert (=> bs!1157314 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232295 lambda!232275))))

(assert (=> bs!1157314 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956098) (= lambda!232295 lambda!232276))))

(declare-fun bs!1157315 () Bool)

(assert (= bs!1157315 (and b!4800362 d!1536710)))

(assert (=> bs!1157315 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956103) (= lambda!232295 lambda!232277))))

(assert (=> b!4800362 true))

(declare-fun bs!1157316 () Bool)

(declare-fun b!4800358 () Bool)

(assert (= bs!1157316 (and b!4800358 b!4800246)))

(declare-fun lambda!232296 () Int)

(assert (=> bs!1157316 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232296 lambda!232274))))

(declare-fun bs!1157317 () Bool)

(assert (= bs!1157317 (and b!4800358 b!4800242)))

(assert (=> bs!1157317 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956098) (= lambda!232296 lambda!232276))))

(declare-fun bs!1157318 () Bool)

(assert (= bs!1157318 (and b!4800358 b!4800362)))

(assert (=> bs!1157318 (= lambda!232296 lambda!232295)))

(declare-fun bs!1157319 () Bool)

(assert (= bs!1157319 (and b!4800358 d!1536710)))

(assert (=> bs!1157319 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956103) (= lambda!232296 lambda!232277))))

(assert (=> bs!1157317 (= (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232296 lambda!232275))))

(assert (=> b!4800358 true))

(declare-fun lt!1956166 () ListMap!6467)

(declare-fun lambda!232297 () Int)

(assert (=> bs!1157316 (= (= lt!1956166 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232297 lambda!232274))))

(assert (=> b!4800358 (= (= lt!1956166 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (= lambda!232297 lambda!232296))))

(assert (=> bs!1157317 (= (= lt!1956166 lt!1956098) (= lambda!232297 lambda!232276))))

(assert (=> bs!1157318 (= (= lt!1956166 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (= lambda!232297 lambda!232295))))

(assert (=> bs!1157319 (= (= lt!1956166 lt!1956103) (= lambda!232297 lambda!232277))))

(assert (=> bs!1157317 (= (= lt!1956166 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232297 lambda!232275))))

(assert (=> b!4800358 true))

(declare-fun bs!1157320 () Bool)

(declare-fun d!1536908 () Bool)

(assert (= bs!1157320 (and d!1536908 b!4800246)))

(declare-fun lambda!232298 () Int)

(declare-fun lt!1956171 () ListMap!6467)

(assert (=> bs!1157320 (= (= lt!1956171 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232298 lambda!232274))))

(declare-fun bs!1157321 () Bool)

(assert (= bs!1157321 (and d!1536908 b!4800358)))

(assert (=> bs!1157321 (= (= lt!1956171 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (= lambda!232298 lambda!232296))))

(declare-fun bs!1157322 () Bool)

(assert (= bs!1157322 (and d!1536908 b!4800242)))

(assert (=> bs!1157322 (= (= lt!1956171 lt!1956098) (= lambda!232298 lambda!232276))))

(declare-fun bs!1157323 () Bool)

(assert (= bs!1157323 (and d!1536908 b!4800362)))

(assert (=> bs!1157323 (= (= lt!1956171 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (= lambda!232298 lambda!232295))))

(declare-fun bs!1157324 () Bool)

(assert (= bs!1157324 (and d!1536908 d!1536710)))

(assert (=> bs!1157324 (= (= lt!1956171 lt!1956103) (= lambda!232298 lambda!232277))))

(assert (=> bs!1157322 (= (= lt!1956171 (extractMap!2485 (t!361885 (toList!6995 lm!2473)))) (= lambda!232298 lambda!232275))))

(assert (=> bs!1157321 (= (= lt!1956171 lt!1956166) (= lambda!232298 lambda!232297))))

(assert (=> d!1536908 true))

(declare-fun e!2997646 () ListMap!6467)

(assert (=> b!4800358 (= e!2997646 lt!1956166)))

(declare-fun lt!1956172 () ListMap!6467)

(assert (=> b!4800358 (= lt!1956172 (+!2503 (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(assert (=> b!4800358 (= lt!1956166 (addToMapMapFromBucket!1727 (t!361884 (_2!31795 (h!60743 (toList!6995 lt!1955751)))) (+!2503 (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))))

(declare-fun lt!1956176 () Unit!140595)

(declare-fun call!335354 () Unit!140595)

(assert (=> b!4800358 (= lt!1956176 call!335354)))

(assert (=> b!4800358 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) lambda!232296)))

(declare-fun lt!1956163 () Unit!140595)

(assert (=> b!4800358 (= lt!1956163 lt!1956176)))

(declare-fun call!335356 () Bool)

(assert (=> b!4800358 call!335356))

(declare-fun lt!1956159 () Unit!140595)

(declare-fun Unit!140661 () Unit!140595)

(assert (=> b!4800358 (= lt!1956159 Unit!140661)))

(assert (=> b!4800358 (forall!12325 (t!361884 (_2!31795 (h!60743 (toList!6995 lt!1955751)))) lambda!232297)))

(declare-fun lt!1956162 () Unit!140595)

(declare-fun Unit!140662 () Unit!140595)

(assert (=> b!4800358 (= lt!1956162 Unit!140662)))

(declare-fun lt!1956167 () Unit!140595)

(declare-fun Unit!140663 () Unit!140595)

(assert (=> b!4800358 (= lt!1956167 Unit!140663)))

(declare-fun lt!1956164 () Unit!140595)

(assert (=> b!4800358 (= lt!1956164 (forallContained!4210 (toList!6996 lt!1956172) lambda!232297 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(assert (=> b!4800358 (contains!17959 lt!1956172 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(declare-fun lt!1956169 () Unit!140595)

(declare-fun Unit!140664 () Unit!140595)

(assert (=> b!4800358 (= lt!1956169 Unit!140664)))

(assert (=> b!4800358 (contains!17959 lt!1956166 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))))

(declare-fun lt!1956161 () Unit!140595)

(declare-fun Unit!140665 () Unit!140595)

(assert (=> b!4800358 (= lt!1956161 Unit!140665)))

(assert (=> b!4800358 (forall!12325 (_2!31795 (h!60743 (toList!6995 lt!1955751))) lambda!232297)))

(declare-fun lt!1956179 () Unit!140595)

(declare-fun Unit!140666 () Unit!140595)

(assert (=> b!4800358 (= lt!1956179 Unit!140666)))

(assert (=> b!4800358 (forall!12325 (toList!6996 lt!1956172) lambda!232297)))

(declare-fun lt!1956177 () Unit!140595)

(declare-fun Unit!140667 () Unit!140595)

(assert (=> b!4800358 (= lt!1956177 Unit!140667)))

(declare-fun lt!1956178 () Unit!140595)

(declare-fun Unit!140668 () Unit!140595)

(assert (=> b!4800358 (= lt!1956178 Unit!140668)))

(declare-fun lt!1956173 () Unit!140595)

(assert (=> b!4800358 (= lt!1956173 (addForallContainsKeyThenBeforeAdding!958 (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956166 (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751))))) (_2!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))))

(assert (=> b!4800358 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) lambda!232297)))

(declare-fun lt!1956174 () Unit!140595)

(assert (=> b!4800358 (= lt!1956174 lt!1956173)))

(assert (=> b!4800358 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) lambda!232297)))

(declare-fun lt!1956168 () Unit!140595)

(declare-fun Unit!140669 () Unit!140595)

(assert (=> b!4800358 (= lt!1956168 Unit!140669)))

(declare-fun res!2041579 () Bool)

(assert (=> b!4800358 (= res!2041579 (forall!12325 (_2!31795 (h!60743 (toList!6995 lt!1955751))) lambda!232297))))

(declare-fun e!2997647 () Bool)

(assert (=> b!4800358 (=> (not res!2041579) (not e!2997647))))

(assert (=> b!4800358 e!2997647))

(declare-fun lt!1956170 () Unit!140595)

(declare-fun Unit!140670 () Unit!140595)

(assert (=> b!4800358 (= lt!1956170 Unit!140670)))

(declare-fun e!2997645 () Bool)

(assert (=> d!1536908 e!2997645))

(declare-fun res!2041580 () Bool)

(assert (=> d!1536908 (=> (not res!2041580) (not e!2997645))))

(assert (=> d!1536908 (= res!2041580 (forall!12325 (_2!31795 (h!60743 (toList!6995 lt!1955751))) lambda!232298))))

(assert (=> d!1536908 (= lt!1956171 e!2997646)))

(declare-fun c!818194 () Bool)

(assert (=> d!1536908 (= c!818194 ((_ is Nil!54310) (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(assert (=> d!1536908 (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lt!1955751))))))

(assert (=> d!1536908 (= (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (toList!6995 lt!1955751))) (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) lt!1956171)))

(declare-fun bm!335349 () Bool)

(assert (=> bm!335349 (= call!335356 (forall!12325 (ite c!818194 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (toList!6996 lt!1956172)) (ite c!818194 lambda!232295 lambda!232297)))))

(declare-fun bm!335350 () Bool)

(assert (=> bm!335350 (= call!335354 (lemmaContainsAllItsOwnKeys!959 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))))))

(declare-fun b!4800359 () Bool)

(declare-fun call!335355 () Bool)

(assert (=> b!4800359 (= e!2997647 call!335355)))

(declare-fun b!4800360 () Bool)

(declare-fun res!2041578 () Bool)

(assert (=> b!4800360 (=> (not res!2041578) (not e!2997645))))

(assert (=> b!4800360 (= res!2041578 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) lambda!232298))))

(declare-fun b!4800361 () Bool)

(assert (=> b!4800361 (= e!2997645 (invariantList!1750 (toList!6996 lt!1956171)))))

(assert (=> b!4800362 (= e!2997646 (extractMap!2485 (t!361885 (toList!6995 lt!1955751))))))

(declare-fun lt!1956165 () Unit!140595)

(assert (=> b!4800362 (= lt!1956165 call!335354)))

(assert (=> b!4800362 call!335355))

(declare-fun lt!1956160 () Unit!140595)

(assert (=> b!4800362 (= lt!1956160 lt!1956165)))

(assert (=> b!4800362 call!335356))

(declare-fun lt!1956175 () Unit!140595)

(declare-fun Unit!140671 () Unit!140595)

(assert (=> b!4800362 (= lt!1956175 Unit!140671)))

(declare-fun bm!335351 () Bool)

(assert (=> bm!335351 (= call!335355 (forall!12325 (toList!6996 (extractMap!2485 (t!361885 (toList!6995 lt!1955751)))) (ite c!818194 lambda!232295 lambda!232297)))))

(assert (= (and d!1536908 c!818194) b!4800362))

(assert (= (and d!1536908 (not c!818194)) b!4800358))

(assert (= (and b!4800358 res!2041579) b!4800359))

(assert (= (or b!4800362 b!4800358) bm!335349))

(assert (= (or b!4800362 b!4800359) bm!335351))

(assert (= (or b!4800362 b!4800358) bm!335350))

(assert (= (and d!1536908 res!2041580) b!4800360))

(assert (= (and b!4800360 res!2041578) b!4800361))

(declare-fun m!5783976 () Bool)

(assert (=> bm!335349 m!5783976))

(assert (=> bm!335350 m!5783298))

(declare-fun m!5783978 () Bool)

(assert (=> bm!335350 m!5783978))

(declare-fun m!5783980 () Bool)

(assert (=> b!4800358 m!5783980))

(declare-fun m!5783982 () Bool)

(assert (=> b!4800358 m!5783982))

(declare-fun m!5783984 () Bool)

(assert (=> b!4800358 m!5783984))

(declare-fun m!5783986 () Bool)

(assert (=> b!4800358 m!5783986))

(declare-fun m!5783988 () Bool)

(assert (=> b!4800358 m!5783988))

(assert (=> b!4800358 m!5783298))

(assert (=> b!4800358 m!5783982))

(declare-fun m!5783990 () Bool)

(assert (=> b!4800358 m!5783990))

(assert (=> b!4800358 m!5783986))

(declare-fun m!5783992 () Bool)

(assert (=> b!4800358 m!5783992))

(declare-fun m!5783994 () Bool)

(assert (=> b!4800358 m!5783994))

(declare-fun m!5783996 () Bool)

(assert (=> b!4800358 m!5783996))

(assert (=> b!4800358 m!5783298))

(declare-fun m!5783998 () Bool)

(assert (=> b!4800358 m!5783998))

(declare-fun m!5784000 () Bool)

(assert (=> b!4800358 m!5784000))

(assert (=> b!4800358 m!5783990))

(declare-fun m!5784002 () Bool)

(assert (=> b!4800361 m!5784002))

(declare-fun m!5784004 () Bool)

(assert (=> d!1536908 m!5784004))

(assert (=> d!1536908 m!5783326))

(declare-fun m!5784006 () Bool)

(assert (=> b!4800360 m!5784006))

(declare-fun m!5784008 () Bool)

(assert (=> bm!335351 m!5784008))

(assert (=> b!4799899 d!1536908))

(declare-fun bs!1157325 () Bool)

(declare-fun d!1536910 () Bool)

(assert (= bs!1157325 (and d!1536910 d!1536618)))

(declare-fun lambda!232299 () Int)

(assert (=> bs!1157325 (= lambda!232299 lambda!232174)))

(declare-fun bs!1157326 () Bool)

(assert (= bs!1157326 (and d!1536910 d!1536580)))

(assert (=> bs!1157326 (not (= lambda!232299 lambda!232158))))

(declare-fun bs!1157327 () Bool)

(assert (= bs!1157327 (and d!1536910 d!1536614)))

(assert (=> bs!1157327 (= lambda!232299 lambda!232173)))

(declare-fun bs!1157328 () Bool)

(assert (= bs!1157328 (and d!1536910 d!1536610)))

(assert (=> bs!1157328 (= lambda!232299 lambda!232170)))

(declare-fun bs!1157329 () Bool)

(assert (= bs!1157329 (and d!1536910 d!1536626)))

(assert (=> bs!1157329 (not (= lambda!232299 lambda!232175))))

(declare-fun bs!1157330 () Bool)

(assert (= bs!1157330 (and d!1536910 start!495202)))

(assert (=> bs!1157330 (= lambda!232299 lambda!232141)))

(declare-fun bs!1157331 () Bool)

(assert (= bs!1157331 (and d!1536910 d!1536538)))

(assert (=> bs!1157331 (= lambda!232299 lambda!232147)))

(declare-fun bs!1157332 () Bool)

(assert (= bs!1157332 (and d!1536910 d!1536830)))

(assert (=> bs!1157332 (= lambda!232299 lambda!232278)))

(declare-fun bs!1157333 () Bool)

(assert (= bs!1157333 (and d!1536910 d!1536544)))

(assert (=> bs!1157333 (= lambda!232299 lambda!232150)))

(declare-fun lt!1956180 () ListMap!6467)

(assert (=> d!1536910 (invariantList!1750 (toList!6996 lt!1956180))))

(declare-fun e!2997648 () ListMap!6467)

(assert (=> d!1536910 (= lt!1956180 e!2997648)))

(declare-fun c!818195 () Bool)

(assert (=> d!1536910 (= c!818195 ((_ is Cons!54311) (t!361885 (toList!6995 lt!1955751))))))

(assert (=> d!1536910 (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232299)))

(assert (=> d!1536910 (= (extractMap!2485 (t!361885 (toList!6995 lt!1955751))) lt!1956180)))

(declare-fun b!4800363 () Bool)

(assert (=> b!4800363 (= e!2997648 (addToMapMapFromBucket!1727 (_2!31795 (h!60743 (t!361885 (toList!6995 lt!1955751)))) (extractMap!2485 (t!361885 (t!361885 (toList!6995 lt!1955751))))))))

(declare-fun b!4800364 () Bool)

(assert (=> b!4800364 (= e!2997648 (ListMap!6468 Nil!54310))))

(assert (= (and d!1536910 c!818195) b!4800363))

(assert (= (and d!1536910 (not c!818195)) b!4800364))

(declare-fun m!5784010 () Bool)

(assert (=> d!1536910 m!5784010))

(declare-fun m!5784012 () Bool)

(assert (=> d!1536910 m!5784012))

(declare-fun m!5784014 () Bool)

(assert (=> b!4800363 m!5784014))

(assert (=> b!4800363 m!5784014))

(declare-fun m!5784016 () Bool)

(assert (=> b!4800363 m!5784016))

(assert (=> b!4799899 d!1536910))

(declare-fun d!1536912 () Bool)

(assert (=> d!1536912 (= (get!18541 (getPair!930 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896)) (v!48490 (getPair!930 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896)))))

(assert (=> b!4799757 d!1536912))

(declare-fun b!4800365 () Bool)

(declare-fun e!2997653 () Bool)

(declare-fun lt!1956181 () Option!13170)

(assert (=> b!4800365 (= e!2997653 (contains!17964 (_2!31795 (h!60743 (toList!6995 lm!2473))) (get!18541 lt!1956181)))))

(declare-fun b!4800366 () Bool)

(declare-fun e!2997649 () Option!13170)

(assert (=> b!4800366 (= e!2997649 (getPair!930 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) key!5896))))

(declare-fun b!4800367 () Bool)

(declare-fun e!2997650 () Option!13170)

(assert (=> b!4800367 (= e!2997650 (Some!13169 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(declare-fun b!4800368 () Bool)

(declare-fun e!2997652 () Bool)

(assert (=> b!4800368 (= e!2997652 (not (containsKey!4020 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896)))))

(declare-fun b!4800369 () Bool)

(assert (=> b!4800369 (= e!2997650 e!2997649)))

(declare-fun c!818197 () Bool)

(assert (=> b!4800369 (= c!818197 ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(declare-fun d!1536914 () Bool)

(declare-fun e!2997651 () Bool)

(assert (=> d!1536914 e!2997651))

(declare-fun res!2041581 () Bool)

(assert (=> d!1536914 (=> res!2041581 e!2997651)))

(assert (=> d!1536914 (= res!2041581 e!2997652)))

(declare-fun res!2041584 () Bool)

(assert (=> d!1536914 (=> (not res!2041584) (not e!2997652))))

(assert (=> d!1536914 (= res!2041584 (isEmpty!29496 lt!1956181))))

(assert (=> d!1536914 (= lt!1956181 e!2997650)))

(declare-fun c!818196 () Bool)

(assert (=> d!1536914 (= c!818196 (and ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473)))) (= (_1!31794 (h!60742 (_2!31795 (h!60743 (toList!6995 lm!2473))))) key!5896)))))

(assert (=> d!1536914 (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473))))))

(assert (=> d!1536914 (= (getPair!930 (_2!31795 (h!60743 (toList!6995 lm!2473))) key!5896) lt!1956181)))

(declare-fun b!4800370 () Bool)

(declare-fun res!2041582 () Bool)

(assert (=> b!4800370 (=> (not res!2041582) (not e!2997653))))

(assert (=> b!4800370 (= res!2041582 (= (_1!31794 (get!18541 lt!1956181)) key!5896))))

(declare-fun b!4800371 () Bool)

(assert (=> b!4800371 (= e!2997649 None!13169)))

(declare-fun b!4800372 () Bool)

(assert (=> b!4800372 (= e!2997651 e!2997653)))

(declare-fun res!2041583 () Bool)

(assert (=> b!4800372 (=> (not res!2041583) (not e!2997653))))

(assert (=> b!4800372 (= res!2041583 (isDefined!10311 lt!1956181))))

(assert (= (and d!1536914 c!818196) b!4800367))

(assert (= (and d!1536914 (not c!818196)) b!4800369))

(assert (= (and b!4800369 c!818197) b!4800366))

(assert (= (and b!4800369 (not c!818197)) b!4800371))

(assert (= (and d!1536914 res!2041584) b!4800368))

(assert (= (and d!1536914 (not res!2041581)) b!4800372))

(assert (= (and b!4800372 res!2041583) b!4800370))

(assert (= (and b!4800370 res!2041582) b!4800365))

(declare-fun m!5784018 () Bool)

(assert (=> b!4800365 m!5784018))

(assert (=> b!4800365 m!5784018))

(declare-fun m!5784020 () Bool)

(assert (=> b!4800365 m!5784020))

(assert (=> b!4800370 m!5784018))

(assert (=> b!4800368 m!5783030))

(declare-fun m!5784022 () Bool)

(assert (=> b!4800372 m!5784022))

(declare-fun m!5784024 () Bool)

(assert (=> d!1536914 m!5784024))

(assert (=> d!1536914 m!5783328))

(declare-fun m!5784026 () Bool)

(assert (=> b!4800366 m!5784026))

(assert (=> b!4799757 d!1536914))

(assert (=> d!1536584 d!1536882))

(declare-fun lt!1956182 () Option!13170)

(declare-fun e!2997658 () Bool)

(declare-fun b!4800373 () Bool)

(assert (=> b!4800373 (= e!2997658 (contains!17964 (t!361884 (apply!13031 lm!2473 lt!1955753)) (get!18541 lt!1956182)))))

(declare-fun b!4800374 () Bool)

(declare-fun e!2997654 () Option!13170)

(assert (=> b!4800374 (= e!2997654 (getPair!930 (t!361884 (t!361884 (apply!13031 lm!2473 lt!1955753))) key!5896))))

(declare-fun b!4800375 () Bool)

(declare-fun e!2997655 () Option!13170)

(assert (=> b!4800375 (= e!2997655 (Some!13169 (h!60742 (t!361884 (apply!13031 lm!2473 lt!1955753)))))))

(declare-fun b!4800376 () Bool)

(declare-fun e!2997657 () Bool)

(assert (=> b!4800376 (= e!2997657 (not (containsKey!4020 (t!361884 (apply!13031 lm!2473 lt!1955753)) key!5896)))))

(declare-fun b!4800377 () Bool)

(assert (=> b!4800377 (= e!2997655 e!2997654)))

(declare-fun c!818199 () Bool)

(assert (=> b!4800377 (= c!818199 ((_ is Cons!54310) (t!361884 (apply!13031 lm!2473 lt!1955753))))))

(declare-fun d!1536916 () Bool)

(declare-fun e!2997656 () Bool)

(assert (=> d!1536916 e!2997656))

(declare-fun res!2041585 () Bool)

(assert (=> d!1536916 (=> res!2041585 e!2997656)))

(assert (=> d!1536916 (= res!2041585 e!2997657)))

(declare-fun res!2041588 () Bool)

(assert (=> d!1536916 (=> (not res!2041588) (not e!2997657))))

(assert (=> d!1536916 (= res!2041588 (isEmpty!29496 lt!1956182))))

(assert (=> d!1536916 (= lt!1956182 e!2997655)))

(declare-fun c!818198 () Bool)

(assert (=> d!1536916 (= c!818198 (and ((_ is Cons!54310) (t!361884 (apply!13031 lm!2473 lt!1955753))) (= (_1!31794 (h!60742 (t!361884 (apply!13031 lm!2473 lt!1955753)))) key!5896)))))

(assert (=> d!1536916 (noDuplicateKeys!2359 (t!361884 (apply!13031 lm!2473 lt!1955753)))))

(assert (=> d!1536916 (= (getPair!930 (t!361884 (apply!13031 lm!2473 lt!1955753)) key!5896) lt!1956182)))

(declare-fun b!4800378 () Bool)

(declare-fun res!2041586 () Bool)

(assert (=> b!4800378 (=> (not res!2041586) (not e!2997658))))

(assert (=> b!4800378 (= res!2041586 (= (_1!31794 (get!18541 lt!1956182)) key!5896))))

(declare-fun b!4800379 () Bool)

(assert (=> b!4800379 (= e!2997654 None!13169)))

(declare-fun b!4800380 () Bool)

(assert (=> b!4800380 (= e!2997656 e!2997658)))

(declare-fun res!2041587 () Bool)

(assert (=> b!4800380 (=> (not res!2041587) (not e!2997658))))

(assert (=> b!4800380 (= res!2041587 (isDefined!10311 lt!1956182))))

(assert (= (and d!1536916 c!818198) b!4800375))

(assert (= (and d!1536916 (not c!818198)) b!4800377))

(assert (= (and b!4800377 c!818199) b!4800374))

(assert (= (and b!4800377 (not c!818199)) b!4800379))

(assert (= (and d!1536916 res!2041588) b!4800376))

(assert (= (and d!1536916 (not res!2041585)) b!4800380))

(assert (= (and b!4800380 res!2041587) b!4800378))

(assert (= (and b!4800378 res!2041586) b!4800373))

(declare-fun m!5784028 () Bool)

(assert (=> b!4800373 m!5784028))

(assert (=> b!4800373 m!5784028))

(declare-fun m!5784030 () Bool)

(assert (=> b!4800373 m!5784030))

(assert (=> b!4800378 m!5784028))

(assert (=> b!4800376 m!5783950))

(declare-fun m!5784032 () Bool)

(assert (=> b!4800380 m!5784032))

(declare-fun m!5784034 () Bool)

(assert (=> d!1536916 m!5784034))

(assert (=> d!1536916 m!5783464))

(declare-fun m!5784036 () Bool)

(assert (=> b!4800374 m!5784036))

(assert (=> b!4799918 d!1536916))

(declare-fun d!1536918 () Bool)

(declare-fun res!2041589 () Bool)

(declare-fun e!2997659 () Bool)

(assert (=> d!1536918 (=> res!2041589 e!2997659)))

(assert (=> d!1536918 (= res!2041589 (and ((_ is Cons!54311) (toList!6995 lt!1955751)) (= (_1!31795 (h!60743 (toList!6995 lt!1955751))) lt!1955753)))))

(assert (=> d!1536918 (= (containsKey!4023 (toList!6995 lt!1955751) lt!1955753) e!2997659)))

(declare-fun b!4800381 () Bool)

(declare-fun e!2997660 () Bool)

(assert (=> b!4800381 (= e!2997659 e!2997660)))

(declare-fun res!2041590 () Bool)

(assert (=> b!4800381 (=> (not res!2041590) (not e!2997660))))

(assert (=> b!4800381 (= res!2041590 (and (or (not ((_ is Cons!54311) (toList!6995 lt!1955751))) (bvsle (_1!31795 (h!60743 (toList!6995 lt!1955751))) lt!1955753)) ((_ is Cons!54311) (toList!6995 lt!1955751)) (bvslt (_1!31795 (h!60743 (toList!6995 lt!1955751))) lt!1955753)))))

(declare-fun b!4800382 () Bool)

(assert (=> b!4800382 (= e!2997660 (containsKey!4023 (t!361885 (toList!6995 lt!1955751)) lt!1955753))))

(assert (= (and d!1536918 (not res!2041589)) b!4800381))

(assert (= (and b!4800381 res!2041590) b!4800382))

(declare-fun m!5784038 () Bool)

(assert (=> b!4800382 m!5784038))

(assert (=> d!1536570 d!1536918))

(assert (=> d!1536614 d!1536616))

(assert (=> d!1536614 d!1536618))

(declare-fun d!1536920 () Bool)

(assert (=> d!1536920 (not (contains!17959 (extractMap!2485 (toList!6995 lt!1955751)) key!5896))))

(assert (=> d!1536920 true))

(declare-fun _$28!847 () Unit!140595)

(assert (=> d!1536920 (= (choose!34669 lt!1955751 key!5896 hashF!1559) _$28!847)))

(declare-fun bs!1157334 () Bool)

(assert (= bs!1157334 d!1536920))

(assert (=> bs!1157334 m!5782994))

(assert (=> bs!1157334 m!5782994))

(assert (=> bs!1157334 m!5782996))

(assert (=> d!1536614 d!1536920))

(declare-fun d!1536922 () Bool)

(declare-fun res!2041591 () Bool)

(declare-fun e!2997661 () Bool)

(assert (=> d!1536922 (=> res!2041591 e!2997661)))

(assert (=> d!1536922 (= res!2041591 ((_ is Nil!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536922 (= (forall!12321 (toList!6995 lt!1955751) lambda!232173) e!2997661)))

(declare-fun b!4800383 () Bool)

(declare-fun e!2997662 () Bool)

(assert (=> b!4800383 (= e!2997661 e!2997662)))

(declare-fun res!2041592 () Bool)

(assert (=> b!4800383 (=> (not res!2041592) (not e!2997662))))

(assert (=> b!4800383 (= res!2041592 (dynLambda!22090 lambda!232173 (h!60743 (toList!6995 lt!1955751))))))

(declare-fun b!4800384 () Bool)

(assert (=> b!4800384 (= e!2997662 (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232173))))

(assert (= (and d!1536922 (not res!2041591)) b!4800383))

(assert (= (and b!4800383 res!2041592) b!4800384))

(declare-fun b_lambda!187555 () Bool)

(assert (=> (not b_lambda!187555) (not b!4800383)))

(declare-fun m!5784040 () Bool)

(assert (=> b!4800383 m!5784040))

(declare-fun m!5784042 () Bool)

(assert (=> b!4800384 m!5784042))

(assert (=> d!1536614 d!1536922))

(declare-fun d!1536924 () Bool)

(declare-fun lt!1956183 () Bool)

(assert (=> d!1536924 (= lt!1956183 (select (content!9743 e!2997331) key!5896))))

(declare-fun e!2997663 () Bool)

(assert (=> d!1536924 (= lt!1956183 e!2997663)))

(declare-fun res!2041593 () Bool)

(assert (=> d!1536924 (=> (not res!2041593) (not e!2997663))))

(assert (=> d!1536924 (= res!2041593 ((_ is Cons!54313) e!2997331))))

(assert (=> d!1536924 (= (contains!17963 e!2997331 key!5896) lt!1956183)))

(declare-fun b!4800385 () Bool)

(declare-fun e!2997664 () Bool)

(assert (=> b!4800385 (= e!2997663 e!2997664)))

(declare-fun res!2041594 () Bool)

(assert (=> b!4800385 (=> res!2041594 e!2997664)))

(assert (=> b!4800385 (= res!2041594 (= (h!60745 e!2997331) key!5896))))

(declare-fun b!4800386 () Bool)

(assert (=> b!4800386 (= e!2997664 (contains!17963 (t!361887 e!2997331) key!5896))))

(assert (= (and d!1536924 res!2041593) b!4800385))

(assert (= (and b!4800385 (not res!2041594)) b!4800386))

(declare-fun m!5784044 () Bool)

(assert (=> d!1536924 m!5784044))

(declare-fun m!5784046 () Bool)

(assert (=> d!1536924 m!5784046))

(declare-fun m!5784048 () Bool)

(assert (=> b!4800386 m!5784048))

(assert (=> bm!335327 d!1536924))

(declare-fun d!1536926 () Bool)

(declare-fun res!2041595 () Bool)

(declare-fun e!2997665 () Bool)

(assert (=> d!1536926 (=> res!2041595 e!2997665)))

(assert (=> d!1536926 (= res!2041595 (and ((_ is Cons!54310) (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473))))) (= (_1!31794 (h!60742 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))))) key!5896)))))

(assert (=> d!1536926 (= (containsKey!4020 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473)))) key!5896) e!2997665)))

(declare-fun b!4800387 () Bool)

(declare-fun e!2997666 () Bool)

(assert (=> b!4800387 (= e!2997665 e!2997666)))

(declare-fun res!2041596 () Bool)

(assert (=> b!4800387 (=> (not res!2041596) (not e!2997666))))

(assert (=> b!4800387 (= res!2041596 ((_ is Cons!54310) (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473))))))))

(declare-fun b!4800388 () Bool)

(assert (=> b!4800388 (= e!2997666 (containsKey!4020 (t!361884 (t!361884 (_2!31795 (h!60743 (toList!6995 lm!2473))))) key!5896))))

(assert (= (and d!1536926 (not res!2041595)) b!4800387))

(assert (= (and b!4800387 res!2041596) b!4800388))

(declare-fun m!5784050 () Bool)

(assert (=> b!4800388 m!5784050))

(assert (=> b!4799889 d!1536926))

(assert (=> d!1536538 d!1536534))

(declare-fun d!1536928 () Bool)

(assert (=> d!1536928 (containsKeyBiggerList!600 (toList!6995 lm!2473) key!5896)))

(assert (=> d!1536928 true))

(declare-fun _$33!874 () Unit!140595)

(assert (=> d!1536928 (= (choose!34667 lm!2473 key!5896 hashF!1559) _$33!874)))

(declare-fun bs!1157335 () Bool)

(assert (= bs!1157335 d!1536928))

(assert (=> bs!1157335 m!5783010))

(assert (=> d!1536538 d!1536928))

(declare-fun d!1536930 () Bool)

(declare-fun res!2041597 () Bool)

(declare-fun e!2997667 () Bool)

(assert (=> d!1536930 (=> res!2041597 e!2997667)))

(assert (=> d!1536930 (= res!2041597 ((_ is Nil!54311) (toList!6995 lm!2473)))))

(assert (=> d!1536930 (= (forall!12321 (toList!6995 lm!2473) lambda!232147) e!2997667)))

(declare-fun b!4800389 () Bool)

(declare-fun e!2997668 () Bool)

(assert (=> b!4800389 (= e!2997667 e!2997668)))

(declare-fun res!2041598 () Bool)

(assert (=> b!4800389 (=> (not res!2041598) (not e!2997668))))

(assert (=> b!4800389 (= res!2041598 (dynLambda!22090 lambda!232147 (h!60743 (toList!6995 lm!2473))))))

(declare-fun b!4800390 () Bool)

(assert (=> b!4800390 (= e!2997668 (forall!12321 (t!361885 (toList!6995 lm!2473)) lambda!232147))))

(assert (= (and d!1536930 (not res!2041597)) b!4800389))

(assert (= (and b!4800389 res!2041598) b!4800390))

(declare-fun b_lambda!187557 () Bool)

(assert (=> (not b_lambda!187557) (not b!4800389)))

(declare-fun m!5784052 () Bool)

(assert (=> b!4800389 m!5784052))

(declare-fun m!5784054 () Bool)

(assert (=> b!4800390 m!5784054))

(assert (=> d!1536538 d!1536930))

(declare-fun d!1536932 () Bool)

(assert (=> d!1536932 (= (invariantList!1750 (toList!6996 lt!1955880)) (noDuplicatedKeys!452 (toList!6996 lt!1955880)))))

(declare-fun bs!1157336 () Bool)

(assert (= bs!1157336 d!1536932))

(declare-fun m!5784056 () Bool)

(assert (=> bs!1157336 m!5784056))

(assert (=> d!1536618 d!1536932))

(declare-fun d!1536934 () Bool)

(declare-fun res!2041599 () Bool)

(declare-fun e!2997669 () Bool)

(assert (=> d!1536934 (=> res!2041599 e!2997669)))

(assert (=> d!1536934 (= res!2041599 ((_ is Nil!54311) (toList!6995 lt!1955751)))))

(assert (=> d!1536934 (= (forall!12321 (toList!6995 lt!1955751) lambda!232174) e!2997669)))

(declare-fun b!4800391 () Bool)

(declare-fun e!2997670 () Bool)

(assert (=> b!4800391 (= e!2997669 e!2997670)))

(declare-fun res!2041600 () Bool)

(assert (=> b!4800391 (=> (not res!2041600) (not e!2997670))))

(assert (=> b!4800391 (= res!2041600 (dynLambda!22090 lambda!232174 (h!60743 (toList!6995 lt!1955751))))))

(declare-fun b!4800392 () Bool)

(assert (=> b!4800392 (= e!2997670 (forall!12321 (t!361885 (toList!6995 lt!1955751)) lambda!232174))))

(assert (= (and d!1536934 (not res!2041599)) b!4800391))

(assert (= (and b!4800391 res!2041600) b!4800392))

(declare-fun b_lambda!187559 () Bool)

(assert (=> (not b_lambda!187559) (not b!4800391)))

(declare-fun m!5784058 () Bool)

(assert (=> b!4800391 m!5784058))

(declare-fun m!5784060 () Bool)

(assert (=> b!4800392 m!5784060))

(assert (=> d!1536618 d!1536934))

(declare-fun tp!1358348 () Bool)

(declare-fun b!4800397 () Bool)

(declare-fun e!2997673 () Bool)

(assert (=> b!4800397 (= e!2997673 (and tp_is_empty!33693 tp_is_empty!33695 tp!1358348))))

(assert (=> b!4799932 (= tp!1358339 e!2997673)))

(assert (= (and b!4799932 ((_ is Cons!54310) (_2!31795 (h!60743 (toList!6995 lm!2473))))) b!4800397))

(declare-fun b!4800398 () Bool)

(declare-fun e!2997674 () Bool)

(declare-fun tp!1358349 () Bool)

(declare-fun tp!1358350 () Bool)

(assert (=> b!4800398 (= e!2997674 (and tp!1358349 tp!1358350))))

(assert (=> b!4799932 (= tp!1358340 e!2997674)))

(assert (= (and b!4799932 ((_ is Cons!54311) (t!361885 (toList!6995 lm!2473)))) b!4800398))

(declare-fun b_lambda!187561 () Bool)

(assert (= b_lambda!187559 (or d!1536618 b_lambda!187561)))

(declare-fun bs!1157337 () Bool)

(declare-fun d!1536936 () Bool)

(assert (= bs!1157337 (and d!1536936 d!1536618)))

(assert (=> bs!1157337 (= (dynLambda!22090 lambda!232174 (h!60743 (toList!6995 lt!1955751))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(assert (=> bs!1157337 m!5783326))

(assert (=> b!4800391 d!1536936))

(declare-fun b_lambda!187563 () Bool)

(assert (= b_lambda!187551 (or d!1536610 b_lambda!187563)))

(declare-fun bs!1157338 () Bool)

(declare-fun d!1536938 () Bool)

(assert (= bs!1157338 (and d!1536938 d!1536610)))

(assert (=> bs!1157338 (= (dynLambda!22090 lambda!232170 (h!60743 (toList!6995 lm!2473))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(assert (=> bs!1157338 m!5783328))

(assert (=> b!4800277 d!1536938))

(declare-fun b_lambda!187565 () Bool)

(assert (= b_lambda!187549 (or start!495202 b_lambda!187565)))

(declare-fun bs!1157339 () Bool)

(declare-fun d!1536940 () Bool)

(assert (= bs!1157339 (and d!1536940 start!495202)))

(assert (=> bs!1157339 (= (dynLambda!22090 lambda!232141 (h!60743 (t!361885 (toList!6995 lm!2473)))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (t!361885 (toList!6995 lm!2473))))))))

(declare-fun m!5784062 () Bool)

(assert (=> bs!1157339 m!5784062))

(assert (=> b!4800263 d!1536940))

(declare-fun b_lambda!187567 () Bool)

(assert (= b_lambda!187555 (or d!1536614 b_lambda!187567)))

(declare-fun bs!1157340 () Bool)

(declare-fun d!1536942 () Bool)

(assert (= bs!1157340 (and d!1536942 d!1536614)))

(assert (=> bs!1157340 (= (dynLambda!22090 lambda!232173 (h!60743 (toList!6995 lt!1955751))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lt!1955751)))))))

(assert (=> bs!1157340 m!5783326))

(assert (=> b!4800383 d!1536942))

(declare-fun b_lambda!187569 () Bool)

(assert (= b_lambda!187545 (or d!1536544 b_lambda!187569)))

(declare-fun bs!1157341 () Bool)

(declare-fun d!1536944 () Bool)

(assert (= bs!1157341 (and d!1536944 d!1536544)))

(assert (=> bs!1157341 (= (dynLambda!22090 lambda!232150 (h!60743 (toList!6995 lm!2473))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(assert (=> bs!1157341 m!5783328))

(assert (=> b!4800259 d!1536944))

(declare-fun b_lambda!187571 () Bool)

(assert (= b_lambda!187547 (or start!495202 b_lambda!187571)))

(declare-fun bs!1157342 () Bool)

(declare-fun d!1536946 () Bool)

(assert (= bs!1157342 (and d!1536946 start!495202)))

(assert (=> bs!1157342 (= (dynLambda!22090 lambda!232141 (h!60743 (t!361885 (toList!6995 lt!1955751)))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (t!361885 (toList!6995 lt!1955751))))))))

(declare-fun m!5784064 () Bool)

(assert (=> bs!1157342 m!5784064))

(assert (=> b!4800261 d!1536946))

(declare-fun b_lambda!187573 () Bool)

(assert (= b_lambda!187557 (or d!1536538 b_lambda!187573)))

(declare-fun bs!1157343 () Bool)

(declare-fun d!1536948 () Bool)

(assert (= bs!1157343 (and d!1536948 d!1536538)))

(assert (=> bs!1157343 (= (dynLambda!22090 lambda!232147 (h!60743 (toList!6995 lm!2473))) (noDuplicateKeys!2359 (_2!31795 (h!60743 (toList!6995 lm!2473)))))))

(assert (=> bs!1157343 m!5783328))

(assert (=> b!4800389 d!1536948))

(declare-fun b_lambda!187575 () Bool)

(assert (= b_lambda!187553 (or d!1536626 b_lambda!187575)))

(declare-fun bs!1157344 () Bool)

(declare-fun d!1536950 () Bool)

(assert (= bs!1157344 (and d!1536950 d!1536626)))

(declare-fun allKeysSameHash!1975 (List!54434 (_ BitVec 64) Hashable!6958) Bool)

(assert (=> bs!1157344 (= (dynLambda!22090 lambda!232175 (h!60743 (toList!6995 lm!2473))) (allKeysSameHash!1975 (_2!31795 (h!60743 (toList!6995 lm!2473))) (_1!31795 (h!60743 (toList!6995 lm!2473))) hashF!1559))))

(declare-fun m!5784066 () Bool)

(assert (=> bs!1157344 m!5784066))

(assert (=> b!4800289 d!1536950))

(declare-fun b_lambda!187577 () Bool)

(assert (= b_lambda!187509 (or d!1536580 b_lambda!187577)))

(declare-fun bs!1157345 () Bool)

(declare-fun d!1536952 () Bool)

(assert (= bs!1157345 (and d!1536952 d!1536580)))

(assert (=> bs!1157345 (= (dynLambda!22090 lambda!232158 (h!60743 (toList!6995 lt!1955751))) (allKeysSameHash!1975 (_2!31795 (h!60743 (toList!6995 lt!1955751))) (_1!31795 (h!60743 (toList!6995 lt!1955751))) hashF!1559))))

(declare-fun m!5784068 () Bool)

(assert (=> bs!1157345 m!5784068))

(assert (=> b!4800036 d!1536952))

(check-sat (not b!4800037) (not bs!1157344) (not b!4800333) (not d!1536684) (not b!4800388) (not d!1536910) (not b!4800072) (not b!4800085) (not b!4800252) (not b!4800291) (not b!4800349) (not b!4800384) (not b!4800376) (not d!1536888) (not d!1536860) (not b!4800353) (not b!4800251) (not b!4800022) (not b!4800355) (not d!1536866) (not b_lambda!187561) (not d!1536916) (not d!1536690) (not b_lambda!187573) (not b_lambda!187577) (not bs!1157345) (not d!1536928) (not d!1536830) (not b!4800245) (not d!1536846) (not b!4800382) (not d!1536920) (not b!4800336) (not b!4800339) (not b!4800030) (not b!4800360) (not b_lambda!187569) (not d!1536876) (not bm!335346) (not b!4800054) (not b!4800073) (not b!4800079) (not b!4800346) (not b_lambda!187505) (not b!4800338) (not b!4800288) (not b_lambda!187571) (not b!4800278) (not b!4800390) (not bs!1157338) (not d!1536692) (not b!4800029) (not b!4800348) (not d!1536676) (not b!4800321) (not b!4800290) (not bm!335347) (not b!4800386) (not b!4800335) (not b!4800275) (not d!1536700) (not bm!335350) (not b!4800344) tp_is_empty!33693 (not b_lambda!187563) (not bs!1157343) (not d!1536688) (not b!4800249) (not bs!1157341) (not d!1536908) (not b!4800351) (not d!1536834) (not b!4800368) (not b!4800329) (not b!4800366) (not b!4800031) (not b!4800361) (not b!4800255) (not d!1536904) (not bs!1157339) (not d!1536890) (not b!4800035) (not b!4800373) (not b!4800052) (not bs!1157340) (not d!1536836) (not b!4800051) (not b!4800365) (not b!4800374) (not d!1536900) (not bm!335348) (not b!4800380) (not b!4800302) (not b!4800326) (not b!4800244) (not b!4800242) (not bm!335349) (not d!1536932) (not b!4800397) (not b!4800082) (not b!4800048) (not d!1536880) (not b!4800398) (not b!4800067) (not b_lambda!187575) (not bs!1157337) (not d!1536852) (not d!1536710) (not b!4800264) (not d!1536884) (not b!4800281) (not b_lambda!187567) (not b!4800324) (not b!4800350) (not d!1536864) (not d!1536678) tp_is_empty!33695 (not b!4800358) (not b!4800262) (not d!1536848) (not d!1536902) (not b_lambda!187565) (not b!4800084) (not b!4800300) (not b!4800372) (not b!4800258) (not b!4800357) (not b!4800260) (not b!4800363) (not b!4800253) (not d!1536842) (not d!1536914) (not d!1536854) (not b!4800341) (not bs!1157342) (not b!4800053) (not b_lambda!187503) (not d!1536906) (not bm!335351) (not b!4800370) (not d!1536892) (not b!4800299) (not b!4800347) (not b!4800086) (not b!4800293) (not b!4800323) (not b!4800392) (not d!1536680) (not b!4800378) (not b!4800061) (not d!1536924))
(check-sat)
