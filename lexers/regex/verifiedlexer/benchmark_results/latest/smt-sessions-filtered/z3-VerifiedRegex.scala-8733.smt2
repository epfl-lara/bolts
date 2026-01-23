; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466172 () Bool)

(assert start!466172)

(declare-fun b!4637926 () Bool)

(declare-fun e!2893208 () Bool)

(declare-fun e!2893210 () Bool)

(assert (=> b!4637926 (= e!2893208 (not e!2893210))))

(declare-fun res!1947225 () Bool)

(assert (=> b!4637926 (=> res!1947225 e!2893210)))

(declare-datatypes ((K!13070 0))(
  ( (K!13071 (val!18727 Int)) )
))
(declare-datatypes ((V!13316 0))(
  ( (V!13317 (val!18728 Int)) )
))
(declare-datatypes ((tuple2!52718 0))(
  ( (tuple2!52719 (_1!29653 K!13070) (_2!29653 V!13316)) )
))
(declare-datatypes ((List!51828 0))(
  ( (Nil!51704) (Cons!51704 (h!57800 tuple2!52718) (t!358904 List!51828)) )
))
(declare-fun oldBucket!40 () List!51828)

(declare-fun key!4968 () K!13070)

(get-info :version)

(assert (=> b!4637926 (= res!1947225 (or (not ((_ is Cons!51704) oldBucket!40)) (not (= (_1!29653 (h!57800 oldBucket!40)) key!4968))))))

(declare-fun e!2893211 () Bool)

(assert (=> b!4637926 e!2893211))

(declare-fun res!1947222 () Bool)

(assert (=> b!4637926 (=> (not res!1947222) (not e!2893211))))

(declare-datatypes ((ListMap!4405 0))(
  ( (ListMap!4406 (toList!5084 List!51828)) )
))
(declare-fun lt!1800533 () ListMap!4405)

(declare-fun lt!1800535 () ListMap!4405)

(declare-fun addToMapMapFromBucket!1027 (List!51828 ListMap!4405) ListMap!4405)

(assert (=> b!4637926 (= res!1947222 (= lt!1800535 (addToMapMapFromBucket!1027 oldBucket!40 lt!1800533)))))

(declare-datatypes ((tuple2!52720 0))(
  ( (tuple2!52721 (_1!29654 (_ BitVec 64)) (_2!29654 List!51828)) )
))
(declare-datatypes ((List!51829 0))(
  ( (Nil!51705) (Cons!51705 (h!57801 tuple2!52720) (t!358905 List!51829)) )
))
(declare-fun extractMap!1624 (List!51829) ListMap!4405)

(assert (=> b!4637926 (= lt!1800533 (extractMap!1624 Nil!51705))))

(assert (=> b!4637926 true))

(declare-fun b!4637927 () Bool)

(declare-fun res!1947217 () Bool)

(assert (=> b!4637927 (=> (not res!1947217) (not e!2893208))))

(declare-datatypes ((Hashable!5965 0))(
  ( (HashableExt!5964 (__x!31668 Int)) )
))
(declare-fun hashF!1389 () Hashable!5965)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51828)

(declare-fun allKeysSameHash!1422 (List!51828 (_ BitVec 64) Hashable!5965) Bool)

(assert (=> b!4637927 (= res!1947217 (allKeysSameHash!1422 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637929 () Bool)

(declare-fun res!1947226 () Bool)

(declare-fun e!2893205 () Bool)

(assert (=> b!4637929 (=> res!1947226 e!2893205)))

(declare-fun lt!1800532 () List!51828)

(assert (=> b!4637929 (= res!1947226 (not (= (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705)) (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705)))))))

(declare-fun b!4637930 () Bool)

(declare-fun e!2893204 () Bool)

(assert (=> b!4637930 (= e!2893204 e!2893208)))

(declare-fun res!1947224 () Bool)

(assert (=> b!4637930 (=> (not res!1947224) (not e!2893208))))

(declare-fun contains!14819 (ListMap!4405 K!13070) Bool)

(assert (=> b!4637930 (= res!1947224 (contains!14819 lt!1800535 key!4968))))

(assert (=> b!4637930 (= lt!1800535 (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705)))))

(declare-fun b!4637931 () Bool)

(declare-fun e!2893212 () Bool)

(declare-fun containsKey!2584 (List!51828 K!13070) Bool)

(assert (=> b!4637931 (= e!2893212 (not (containsKey!2584 lt!1800532 key!4968)))))

(declare-fun b!4637932 () Bool)

(declare-fun res!1947218 () Bool)

(assert (=> b!4637932 (=> (not res!1947218) (not e!2893204))))

(declare-fun noDuplicateKeys!1568 (List!51828) Bool)

(assert (=> b!4637932 (= res!1947218 (noDuplicateKeys!1568 newBucket!224))))

(declare-fun b!4637933 () Bool)

(declare-fun res!1947220 () Bool)

(assert (=> b!4637933 (=> (not res!1947220) (not e!2893204))))

(assert (=> b!4637933 (= res!1947220 (allKeysSameHash!1422 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637934 () Bool)

(assert (=> b!4637934 (= e!2893211 (= lt!1800533 (ListMap!4406 Nil!51704)))))

(declare-fun b!4637935 () Bool)

(declare-fun res!1947216 () Bool)

(assert (=> b!4637935 (=> (not res!1947216) (not e!2893204))))

(declare-fun removePairForKey!1191 (List!51828 K!13070) List!51828)

(assert (=> b!4637935 (= res!1947216 (= (removePairForKey!1191 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4637936 () Bool)

(declare-fun e!2893209 () Bool)

(assert (=> b!4637936 (= e!2893205 e!2893209)))

(declare-fun res!1947215 () Bool)

(assert (=> b!4637936 (=> res!1947215 e!2893209)))

(declare-fun lt!1800531 () ListMap!4405)

(assert (=> b!4637936 (= res!1947215 (not (= lt!1800531 (addToMapMapFromBucket!1027 newBucket!224 (ListMap!4406 Nil!51704)))))))

(assert (=> b!4637936 (= lt!1800531 (addToMapMapFromBucket!1027 lt!1800532 (ListMap!4406 Nil!51704)))))

(declare-fun res!1947214 () Bool)

(assert (=> start!466172 (=> (not res!1947214) (not e!2893204))))

(assert (=> start!466172 (= res!1947214 (noDuplicateKeys!1568 oldBucket!40))))

(assert (=> start!466172 e!2893204))

(assert (=> start!466172 true))

(declare-fun e!2893206 () Bool)

(assert (=> start!466172 e!2893206))

(declare-fun tp_is_empty!29565 () Bool)

(assert (=> start!466172 tp_is_empty!29565))

(declare-fun e!2893207 () Bool)

(assert (=> start!466172 e!2893207))

(declare-fun b!4637928 () Bool)

(assert (=> b!4637928 (= e!2893209 e!2893212)))

(declare-fun res!1947219 () Bool)

(assert (=> b!4637928 (=> res!1947219 e!2893212)))

(declare-fun eq!869 (ListMap!4405 ListMap!4405) Bool)

(declare-fun +!1922 (ListMap!4405 tuple2!52718) ListMap!4405)

(assert (=> b!4637928 (= res!1947219 (not (eq!869 (+!1922 lt!1800531 (h!57800 oldBucket!40)) (addToMapMapFromBucket!1027 oldBucket!40 (ListMap!4406 Nil!51704)))))))

(declare-fun lt!1800534 () tuple2!52718)

(assert (=> b!4637928 (eq!869 (addToMapMapFromBucket!1027 (Cons!51704 lt!1800534 lt!1800532) (ListMap!4406 Nil!51704)) (+!1922 lt!1800531 lt!1800534))))

(declare-datatypes ((Unit!114771 0))(
  ( (Unit!114772) )
))
(declare-fun lt!1800530 () Unit!114771)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!120 (tuple2!52718 List!51828 ListMap!4405) Unit!114771)

(assert (=> b!4637928 (= lt!1800530 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!120 lt!1800534 lt!1800532 (ListMap!4406 Nil!51704)))))

(declare-fun head!9688 (List!51828) tuple2!52718)

(assert (=> b!4637928 (= lt!1800534 (head!9688 oldBucket!40))))

(declare-fun b!4637937 () Bool)

(declare-fun res!1947221 () Bool)

(assert (=> b!4637937 (=> (not res!1947221) (not e!2893208))))

(declare-fun hash!3648 (Hashable!5965 K!13070) (_ BitVec 64))

(assert (=> b!4637937 (= res!1947221 (= (hash!3648 hashF!1389 key!4968) hash!414))))

(declare-fun tp!1342662 () Bool)

(declare-fun b!4637938 () Bool)

(declare-fun tp_is_empty!29567 () Bool)

(assert (=> b!4637938 (= e!2893207 (and tp_is_empty!29565 tp_is_empty!29567 tp!1342662))))

(declare-fun b!4637939 () Bool)

(declare-fun tp!1342663 () Bool)

(assert (=> b!4637939 (= e!2893206 (and tp_is_empty!29565 tp_is_empty!29567 tp!1342663))))

(declare-fun b!4637940 () Bool)

(assert (=> b!4637940 (= e!2893210 e!2893205)))

(declare-fun res!1947223 () Bool)

(assert (=> b!4637940 (=> res!1947223 e!2893205)))

(assert (=> b!4637940 (= res!1947223 (not (= lt!1800532 newBucket!224)))))

(declare-fun tail!8195 (List!51828) List!51828)

(assert (=> b!4637940 (= lt!1800532 (tail!8195 oldBucket!40))))

(assert (= (and start!466172 res!1947214) b!4637932))

(assert (= (and b!4637932 res!1947218) b!4637935))

(assert (= (and b!4637935 res!1947216) b!4637933))

(assert (= (and b!4637933 res!1947220) b!4637930))

(assert (= (and b!4637930 res!1947224) b!4637937))

(assert (= (and b!4637937 res!1947221) b!4637927))

(assert (= (and b!4637927 res!1947217) b!4637926))

(assert (= (and b!4637926 res!1947222) b!4637934))

(assert (= (and b!4637926 (not res!1947225)) b!4637940))

(assert (= (and b!4637940 (not res!1947223)) b!4637929))

(assert (= (and b!4637929 (not res!1947226)) b!4637936))

(assert (= (and b!4637936 (not res!1947215)) b!4637928))

(assert (= (and b!4637928 (not res!1947219)) b!4637931))

(assert (= (and start!466172 ((_ is Cons!51704) oldBucket!40)) b!4637939))

(assert (= (and start!466172 ((_ is Cons!51704) newBucket!224)) b!4637938))

(declare-fun m!5496151 () Bool)

(assert (=> b!4637928 m!5496151))

(declare-fun m!5496153 () Bool)

(assert (=> b!4637928 m!5496153))

(declare-fun m!5496155 () Bool)

(assert (=> b!4637928 m!5496155))

(declare-fun m!5496157 () Bool)

(assert (=> b!4637928 m!5496157))

(assert (=> b!4637928 m!5496157))

(assert (=> b!4637928 m!5496153))

(declare-fun m!5496159 () Bool)

(assert (=> b!4637928 m!5496159))

(declare-fun m!5496161 () Bool)

(assert (=> b!4637928 m!5496161))

(declare-fun m!5496163 () Bool)

(assert (=> b!4637928 m!5496163))

(assert (=> b!4637928 m!5496151))

(declare-fun m!5496165 () Bool)

(assert (=> b!4637928 m!5496165))

(assert (=> b!4637928 m!5496163))

(declare-fun m!5496167 () Bool)

(assert (=> b!4637937 m!5496167))

(declare-fun m!5496169 () Bool)

(assert (=> start!466172 m!5496169))

(declare-fun m!5496171 () Bool)

(assert (=> b!4637932 m!5496171))

(declare-fun m!5496173 () Bool)

(assert (=> b!4637927 m!5496173))

(declare-fun m!5496175 () Bool)

(assert (=> b!4637931 m!5496175))

(declare-fun m!5496177 () Bool)

(assert (=> b!4637935 m!5496177))

(declare-fun m!5496179 () Bool)

(assert (=> b!4637926 m!5496179))

(declare-fun m!5496181 () Bool)

(assert (=> b!4637926 m!5496181))

(declare-fun m!5496183 () Bool)

(assert (=> b!4637940 m!5496183))

(declare-fun m!5496185 () Bool)

(assert (=> b!4637930 m!5496185))

(declare-fun m!5496187 () Bool)

(assert (=> b!4637930 m!5496187))

(declare-fun m!5496189 () Bool)

(assert (=> b!4637933 m!5496189))

(declare-fun m!5496191 () Bool)

(assert (=> b!4637929 m!5496191))

(declare-fun m!5496193 () Bool)

(assert (=> b!4637929 m!5496193))

(declare-fun m!5496195 () Bool)

(assert (=> b!4637936 m!5496195))

(declare-fun m!5496197 () Bool)

(assert (=> b!4637936 m!5496197))

(check-sat (not b!4637926) tp_is_empty!29567 (not b!4637932) (not b!4637936) (not b!4637929) (not start!466172) (not b!4637940) (not b!4637930) (not b!4637937) (not b!4637938) (not b!4637931) (not b!4637933) (not b!4637939) (not b!4637935) (not b!4637928) (not b!4637927) tp_is_empty!29565)
(check-sat)
(get-model)

(declare-fun b!4638020 () Bool)

(assert (=> b!4638020 true))

(declare-fun bs!1032173 () Bool)

(declare-fun b!4638021 () Bool)

(assert (= bs!1032173 (and b!4638021 b!4638020)))

(declare-fun lambda!195533 () Int)

(declare-fun lambda!195532 () Int)

(assert (=> bs!1032173 (= lambda!195533 lambda!195532)))

(assert (=> b!4638021 true))

(declare-fun lt!1800715 () ListMap!4405)

(declare-fun lambda!195534 () Int)

(assert (=> bs!1032173 (= (= lt!1800715 (ListMap!4406 Nil!51704)) (= lambda!195534 lambda!195532))))

(assert (=> b!4638021 (= (= lt!1800715 (ListMap!4406 Nil!51704)) (= lambda!195534 lambda!195533))))

(assert (=> b!4638021 true))

(declare-fun bs!1032174 () Bool)

(declare-fun d!1462400 () Bool)

(assert (= bs!1032174 (and d!1462400 b!4638020)))

(declare-fun lt!1800720 () ListMap!4405)

(declare-fun lambda!195535 () Int)

(assert (=> bs!1032174 (= (= lt!1800720 (ListMap!4406 Nil!51704)) (= lambda!195535 lambda!195532))))

(declare-fun bs!1032175 () Bool)

(assert (= bs!1032175 (and d!1462400 b!4638021)))

(assert (=> bs!1032175 (= (= lt!1800720 (ListMap!4406 Nil!51704)) (= lambda!195535 lambda!195533))))

(assert (=> bs!1032175 (= (= lt!1800720 lt!1800715) (= lambda!195535 lambda!195534))))

(assert (=> d!1462400 true))

(declare-fun call!323749 () Bool)

(declare-fun c!793751 () Bool)

(declare-fun bm!323742 () Bool)

(declare-fun forall!10918 (List!51828 Int) Bool)

(assert (=> bm!323742 (= call!323749 (forall!10918 (ite c!793751 (toList!5084 (ListMap!4406 Nil!51704)) newBucket!224) (ite c!793751 lambda!195532 lambda!195534)))))

(declare-fun e!2893262 () Bool)

(assert (=> d!1462400 e!2893262))

(declare-fun res!1947268 () Bool)

(assert (=> d!1462400 (=> (not res!1947268) (not e!2893262))))

(assert (=> d!1462400 (= res!1947268 (forall!10918 newBucket!224 lambda!195535))))

(declare-fun e!2893263 () ListMap!4405)

(assert (=> d!1462400 (= lt!1800720 e!2893263)))

(assert (=> d!1462400 (= c!793751 ((_ is Nil!51704) newBucket!224))))

(assert (=> d!1462400 (noDuplicateKeys!1568 newBucket!224)))

(assert (=> d!1462400 (= (addToMapMapFromBucket!1027 newBucket!224 (ListMap!4406 Nil!51704)) lt!1800720)))

(declare-fun bm!323743 () Bool)

(declare-fun call!323748 () Unit!114771)

(declare-fun lemmaContainsAllItsOwnKeys!552 (ListMap!4405) Unit!114771)

(assert (=> bm!323743 (= call!323748 (lemmaContainsAllItsOwnKeys!552 (ListMap!4406 Nil!51704)))))

(declare-fun b!4638018 () Bool)

(declare-fun res!1947266 () Bool)

(assert (=> b!4638018 (=> (not res!1947266) (not e!2893262))))

(assert (=> b!4638018 (= res!1947266 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195535))))

(declare-fun b!4638019 () Bool)

(declare-fun invariantList!1250 (List!51828) Bool)

(assert (=> b!4638019 (= e!2893262 (invariantList!1250 (toList!5084 lt!1800720)))))

(declare-fun call!323747 () Bool)

(declare-fun bm!323744 () Bool)

(assert (=> bm!323744 (= call!323747 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) (ite c!793751 lambda!195532 lambda!195533)))))

(assert (=> b!4638020 (= e!2893263 (ListMap!4406 Nil!51704))))

(declare-fun lt!1800714 () Unit!114771)

(assert (=> b!4638020 (= lt!1800714 call!323748)))

(assert (=> b!4638020 call!323749))

(declare-fun lt!1800721 () Unit!114771)

(assert (=> b!4638020 (= lt!1800721 lt!1800714)))

(assert (=> b!4638020 call!323747))

(declare-fun lt!1800705 () Unit!114771)

(declare-fun Unit!114795 () Unit!114771)

(assert (=> b!4638020 (= lt!1800705 Unit!114795)))

(assert (=> b!4638021 (= e!2893263 lt!1800715)))

(declare-fun lt!1800716 () ListMap!4405)

(assert (=> b!4638021 (= lt!1800716 (+!1922 (ListMap!4406 Nil!51704) (h!57800 newBucket!224)))))

(assert (=> b!4638021 (= lt!1800715 (addToMapMapFromBucket!1027 (t!358904 newBucket!224) (+!1922 (ListMap!4406 Nil!51704) (h!57800 newBucket!224))))))

(declare-fun lt!1800713 () Unit!114771)

(assert (=> b!4638021 (= lt!1800713 call!323748)))

(assert (=> b!4638021 call!323747))

(declare-fun lt!1800704 () Unit!114771)

(assert (=> b!4638021 (= lt!1800704 lt!1800713)))

(assert (=> b!4638021 (forall!10918 (toList!5084 lt!1800716) lambda!195534)))

(declare-fun lt!1800702 () Unit!114771)

(declare-fun Unit!114796 () Unit!114771)

(assert (=> b!4638021 (= lt!1800702 Unit!114796)))

(assert (=> b!4638021 (forall!10918 (t!358904 newBucket!224) lambda!195534)))

(declare-fun lt!1800710 () Unit!114771)

(declare-fun Unit!114797 () Unit!114771)

(assert (=> b!4638021 (= lt!1800710 Unit!114797)))

(declare-fun lt!1800703 () Unit!114771)

(declare-fun Unit!114798 () Unit!114771)

(assert (=> b!4638021 (= lt!1800703 Unit!114798)))

(declare-fun lt!1800712 () Unit!114771)

(declare-fun forallContained!3142 (List!51828 Int tuple2!52718) Unit!114771)

(assert (=> b!4638021 (= lt!1800712 (forallContained!3142 (toList!5084 lt!1800716) lambda!195534 (h!57800 newBucket!224)))))

(assert (=> b!4638021 (contains!14819 lt!1800716 (_1!29653 (h!57800 newBucket!224)))))

(declare-fun lt!1800707 () Unit!114771)

(declare-fun Unit!114799 () Unit!114771)

(assert (=> b!4638021 (= lt!1800707 Unit!114799)))

(assert (=> b!4638021 (contains!14819 lt!1800715 (_1!29653 (h!57800 newBucket!224)))))

(declare-fun lt!1800718 () Unit!114771)

(declare-fun Unit!114800 () Unit!114771)

(assert (=> b!4638021 (= lt!1800718 Unit!114800)))

(assert (=> b!4638021 (forall!10918 newBucket!224 lambda!195534)))

(declare-fun lt!1800711 () Unit!114771)

(declare-fun Unit!114801 () Unit!114771)

(assert (=> b!4638021 (= lt!1800711 Unit!114801)))

(assert (=> b!4638021 (forall!10918 (toList!5084 lt!1800716) lambda!195534)))

(declare-fun lt!1800709 () Unit!114771)

(declare-fun Unit!114802 () Unit!114771)

(assert (=> b!4638021 (= lt!1800709 Unit!114802)))

(declare-fun lt!1800708 () Unit!114771)

(declare-fun Unit!114803 () Unit!114771)

(assert (=> b!4638021 (= lt!1800708 Unit!114803)))

(declare-fun lt!1800722 () Unit!114771)

(declare-fun addForallContainsKeyThenBeforeAdding!551 (ListMap!4405 ListMap!4405 K!13070 V!13316) Unit!114771)

(assert (=> b!4638021 (= lt!1800722 (addForallContainsKeyThenBeforeAdding!551 (ListMap!4406 Nil!51704) lt!1800715 (_1!29653 (h!57800 newBucket!224)) (_2!29653 (h!57800 newBucket!224))))))

(assert (=> b!4638021 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195534)))

(declare-fun lt!1800717 () Unit!114771)

(assert (=> b!4638021 (= lt!1800717 lt!1800722)))

(assert (=> b!4638021 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195534)))

(declare-fun lt!1800706 () Unit!114771)

(declare-fun Unit!114804 () Unit!114771)

(assert (=> b!4638021 (= lt!1800706 Unit!114804)))

(declare-fun res!1947267 () Bool)

(assert (=> b!4638021 (= res!1947267 call!323749)))

(declare-fun e!2893261 () Bool)

(assert (=> b!4638021 (=> (not res!1947267) (not e!2893261))))

(assert (=> b!4638021 e!2893261))

(declare-fun lt!1800719 () Unit!114771)

(declare-fun Unit!114805 () Unit!114771)

(assert (=> b!4638021 (= lt!1800719 Unit!114805)))

(declare-fun b!4638022 () Bool)

(assert (=> b!4638022 (= e!2893261 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195534))))

(assert (= (and d!1462400 c!793751) b!4638020))

(assert (= (and d!1462400 (not c!793751)) b!4638021))

(assert (= (and b!4638021 res!1947267) b!4638022))

(assert (= (or b!4638020 b!4638021) bm!323743))

(assert (= (or b!4638020 b!4638021) bm!323742))

(assert (= (or b!4638020 b!4638021) bm!323744))

(assert (= (and d!1462400 res!1947268) b!4638018))

(assert (= (and b!4638018 res!1947266) b!4638019))

(declare-fun m!5496343 () Bool)

(assert (=> d!1462400 m!5496343))

(assert (=> d!1462400 m!5496171))

(declare-fun m!5496345 () Bool)

(assert (=> b!4638018 m!5496345))

(declare-fun m!5496347 () Bool)

(assert (=> bm!323744 m!5496347))

(declare-fun m!5496349 () Bool)

(assert (=> bm!323742 m!5496349))

(declare-fun m!5496351 () Bool)

(assert (=> b!4638022 m!5496351))

(assert (=> b!4638021 m!5496351))

(declare-fun m!5496353 () Bool)

(assert (=> b!4638021 m!5496353))

(declare-fun m!5496355 () Bool)

(assert (=> b!4638021 m!5496355))

(assert (=> b!4638021 m!5496351))

(declare-fun m!5496357 () Bool)

(assert (=> b!4638021 m!5496357))

(declare-fun m!5496359 () Bool)

(assert (=> b!4638021 m!5496359))

(declare-fun m!5496361 () Bool)

(assert (=> b!4638021 m!5496361))

(declare-fun m!5496363 () Bool)

(assert (=> b!4638021 m!5496363))

(assert (=> b!4638021 m!5496359))

(assert (=> b!4638021 m!5496353))

(declare-fun m!5496365 () Bool)

(assert (=> b!4638021 m!5496365))

(declare-fun m!5496367 () Bool)

(assert (=> b!4638021 m!5496367))

(declare-fun m!5496369 () Bool)

(assert (=> b!4638021 m!5496369))

(declare-fun m!5496371 () Bool)

(assert (=> bm!323743 m!5496371))

(declare-fun m!5496373 () Bool)

(assert (=> b!4638019 m!5496373))

(assert (=> b!4637936 d!1462400))

(declare-fun bs!1032178 () Bool)

(declare-fun b!4638038 () Bool)

(assert (= bs!1032178 (and b!4638038 b!4638020)))

(declare-fun lambda!195537 () Int)

(assert (=> bs!1032178 (= lambda!195537 lambda!195532)))

(declare-fun bs!1032179 () Bool)

(assert (= bs!1032179 (and b!4638038 b!4638021)))

(assert (=> bs!1032179 (= lambda!195537 lambda!195533)))

(assert (=> bs!1032179 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195537 lambda!195534))))

(declare-fun bs!1032180 () Bool)

(assert (= bs!1032180 (and b!4638038 d!1462400)))

(assert (=> bs!1032180 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195537 lambda!195535))))

(assert (=> b!4638038 true))

(declare-fun bs!1032181 () Bool)

(declare-fun b!4638039 () Bool)

(assert (= bs!1032181 (and b!4638039 b!4638021)))

(declare-fun lambda!195538 () Int)

(assert (=> bs!1032181 (= lambda!195538 lambda!195533)))

(declare-fun bs!1032182 () Bool)

(assert (= bs!1032182 (and b!4638039 b!4638020)))

(assert (=> bs!1032182 (= lambda!195538 lambda!195532)))

(declare-fun bs!1032183 () Bool)

(assert (= bs!1032183 (and b!4638039 b!4638038)))

(assert (=> bs!1032183 (= lambda!195538 lambda!195537)))

(assert (=> bs!1032181 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195538 lambda!195534))))

(declare-fun bs!1032184 () Bool)

(assert (= bs!1032184 (and b!4638039 d!1462400)))

(assert (=> bs!1032184 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195538 lambda!195535))))

(assert (=> b!4638039 true))

(declare-fun lt!1800745 () ListMap!4405)

(declare-fun lambda!195539 () Int)

(assert (=> bs!1032181 (= (= lt!1800745 (ListMap!4406 Nil!51704)) (= lambda!195539 lambda!195533))))

(assert (=> bs!1032182 (= (= lt!1800745 (ListMap!4406 Nil!51704)) (= lambda!195539 lambda!195532))))

(assert (=> bs!1032183 (= (= lt!1800745 (ListMap!4406 Nil!51704)) (= lambda!195539 lambda!195537))))

(assert (=> b!4638039 (= (= lt!1800745 (ListMap!4406 Nil!51704)) (= lambda!195539 lambda!195538))))

(assert (=> bs!1032181 (= (= lt!1800745 lt!1800715) (= lambda!195539 lambda!195534))))

(assert (=> bs!1032184 (= (= lt!1800745 lt!1800720) (= lambda!195539 lambda!195535))))

(assert (=> b!4638039 true))

(declare-fun bs!1032185 () Bool)

(declare-fun d!1462424 () Bool)

(assert (= bs!1032185 (and d!1462424 b!4638021)))

(declare-fun lt!1800750 () ListMap!4405)

(declare-fun lambda!195540 () Int)

(assert (=> bs!1032185 (= (= lt!1800750 (ListMap!4406 Nil!51704)) (= lambda!195540 lambda!195533))))

(declare-fun bs!1032186 () Bool)

(assert (= bs!1032186 (and d!1462424 b!4638039)))

(assert (=> bs!1032186 (= (= lt!1800750 lt!1800745) (= lambda!195540 lambda!195539))))

(declare-fun bs!1032187 () Bool)

(assert (= bs!1032187 (and d!1462424 b!4638020)))

(assert (=> bs!1032187 (= (= lt!1800750 (ListMap!4406 Nil!51704)) (= lambda!195540 lambda!195532))))

(declare-fun bs!1032188 () Bool)

(assert (= bs!1032188 (and d!1462424 b!4638038)))

(assert (=> bs!1032188 (= (= lt!1800750 (ListMap!4406 Nil!51704)) (= lambda!195540 lambda!195537))))

(assert (=> bs!1032186 (= (= lt!1800750 (ListMap!4406 Nil!51704)) (= lambda!195540 lambda!195538))))

(assert (=> bs!1032185 (= (= lt!1800750 lt!1800715) (= lambda!195540 lambda!195534))))

(declare-fun bs!1032189 () Bool)

(assert (= bs!1032189 (and d!1462424 d!1462400)))

(assert (=> bs!1032189 (= (= lt!1800750 lt!1800720) (= lambda!195540 lambda!195535))))

(assert (=> d!1462424 true))

(declare-fun bm!323746 () Bool)

(declare-fun c!793756 () Bool)

(declare-fun call!323753 () Bool)

(assert (=> bm!323746 (= call!323753 (forall!10918 (ite c!793756 (toList!5084 (ListMap!4406 Nil!51704)) lt!1800532) (ite c!793756 lambda!195537 lambda!195539)))))

(declare-fun e!2893272 () Bool)

(assert (=> d!1462424 e!2893272))

(declare-fun res!1947274 () Bool)

(assert (=> d!1462424 (=> (not res!1947274) (not e!2893272))))

(assert (=> d!1462424 (= res!1947274 (forall!10918 lt!1800532 lambda!195540))))

(declare-fun e!2893273 () ListMap!4405)

(assert (=> d!1462424 (= lt!1800750 e!2893273)))

(assert (=> d!1462424 (= c!793756 ((_ is Nil!51704) lt!1800532))))

(assert (=> d!1462424 (noDuplicateKeys!1568 lt!1800532)))

(assert (=> d!1462424 (= (addToMapMapFromBucket!1027 lt!1800532 (ListMap!4406 Nil!51704)) lt!1800750)))

(declare-fun bm!323747 () Bool)

(declare-fun call!323752 () Unit!114771)

(assert (=> bm!323747 (= call!323752 (lemmaContainsAllItsOwnKeys!552 (ListMap!4406 Nil!51704)))))

(declare-fun b!4638036 () Bool)

(declare-fun res!1947272 () Bool)

(assert (=> b!4638036 (=> (not res!1947272) (not e!2893272))))

(assert (=> b!4638036 (= res!1947272 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195540))))

(declare-fun b!4638037 () Bool)

(assert (=> b!4638037 (= e!2893272 (invariantList!1250 (toList!5084 lt!1800750)))))

(declare-fun bm!323748 () Bool)

(declare-fun call!323751 () Bool)

(assert (=> bm!323748 (= call!323751 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) (ite c!793756 lambda!195537 lambda!195538)))))

(assert (=> b!4638038 (= e!2893273 (ListMap!4406 Nil!51704))))

(declare-fun lt!1800744 () Unit!114771)

(assert (=> b!4638038 (= lt!1800744 call!323752)))

(assert (=> b!4638038 call!323753))

(declare-fun lt!1800751 () Unit!114771)

(assert (=> b!4638038 (= lt!1800751 lt!1800744)))

(assert (=> b!4638038 call!323751))

(declare-fun lt!1800735 () Unit!114771)

(declare-fun Unit!114817 () Unit!114771)

(assert (=> b!4638038 (= lt!1800735 Unit!114817)))

(assert (=> b!4638039 (= e!2893273 lt!1800745)))

(declare-fun lt!1800746 () ListMap!4405)

(assert (=> b!4638039 (= lt!1800746 (+!1922 (ListMap!4406 Nil!51704) (h!57800 lt!1800532)))))

(assert (=> b!4638039 (= lt!1800745 (addToMapMapFromBucket!1027 (t!358904 lt!1800532) (+!1922 (ListMap!4406 Nil!51704) (h!57800 lt!1800532))))))

(declare-fun lt!1800743 () Unit!114771)

(assert (=> b!4638039 (= lt!1800743 call!323752)))

(assert (=> b!4638039 call!323751))

(declare-fun lt!1800734 () Unit!114771)

(assert (=> b!4638039 (= lt!1800734 lt!1800743)))

(assert (=> b!4638039 (forall!10918 (toList!5084 lt!1800746) lambda!195539)))

(declare-fun lt!1800732 () Unit!114771)

(declare-fun Unit!114818 () Unit!114771)

(assert (=> b!4638039 (= lt!1800732 Unit!114818)))

(assert (=> b!4638039 (forall!10918 (t!358904 lt!1800532) lambda!195539)))

(declare-fun lt!1800740 () Unit!114771)

(declare-fun Unit!114819 () Unit!114771)

(assert (=> b!4638039 (= lt!1800740 Unit!114819)))

(declare-fun lt!1800733 () Unit!114771)

(declare-fun Unit!114820 () Unit!114771)

(assert (=> b!4638039 (= lt!1800733 Unit!114820)))

(declare-fun lt!1800742 () Unit!114771)

(assert (=> b!4638039 (= lt!1800742 (forallContained!3142 (toList!5084 lt!1800746) lambda!195539 (h!57800 lt!1800532)))))

(assert (=> b!4638039 (contains!14819 lt!1800746 (_1!29653 (h!57800 lt!1800532)))))

(declare-fun lt!1800737 () Unit!114771)

(declare-fun Unit!114821 () Unit!114771)

(assert (=> b!4638039 (= lt!1800737 Unit!114821)))

(assert (=> b!4638039 (contains!14819 lt!1800745 (_1!29653 (h!57800 lt!1800532)))))

(declare-fun lt!1800748 () Unit!114771)

(declare-fun Unit!114822 () Unit!114771)

(assert (=> b!4638039 (= lt!1800748 Unit!114822)))

(assert (=> b!4638039 (forall!10918 lt!1800532 lambda!195539)))

(declare-fun lt!1800741 () Unit!114771)

(declare-fun Unit!114823 () Unit!114771)

(assert (=> b!4638039 (= lt!1800741 Unit!114823)))

(assert (=> b!4638039 (forall!10918 (toList!5084 lt!1800746) lambda!195539)))

(declare-fun lt!1800739 () Unit!114771)

(declare-fun Unit!114824 () Unit!114771)

(assert (=> b!4638039 (= lt!1800739 Unit!114824)))

(declare-fun lt!1800738 () Unit!114771)

(declare-fun Unit!114825 () Unit!114771)

(assert (=> b!4638039 (= lt!1800738 Unit!114825)))

(declare-fun lt!1800752 () Unit!114771)

(assert (=> b!4638039 (= lt!1800752 (addForallContainsKeyThenBeforeAdding!551 (ListMap!4406 Nil!51704) lt!1800745 (_1!29653 (h!57800 lt!1800532)) (_2!29653 (h!57800 lt!1800532))))))

(assert (=> b!4638039 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195539)))

(declare-fun lt!1800747 () Unit!114771)

(assert (=> b!4638039 (= lt!1800747 lt!1800752)))

(assert (=> b!4638039 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195539)))

(declare-fun lt!1800736 () Unit!114771)

(declare-fun Unit!114826 () Unit!114771)

(assert (=> b!4638039 (= lt!1800736 Unit!114826)))

(declare-fun res!1947273 () Bool)

(assert (=> b!4638039 (= res!1947273 call!323753)))

(declare-fun e!2893271 () Bool)

(assert (=> b!4638039 (=> (not res!1947273) (not e!2893271))))

(assert (=> b!4638039 e!2893271))

(declare-fun lt!1800749 () Unit!114771)

(declare-fun Unit!114827 () Unit!114771)

(assert (=> b!4638039 (= lt!1800749 Unit!114827)))

(declare-fun b!4638040 () Bool)

(assert (=> b!4638040 (= e!2893271 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195539))))

(assert (= (and d!1462424 c!793756) b!4638038))

(assert (= (and d!1462424 (not c!793756)) b!4638039))

(assert (= (and b!4638039 res!1947273) b!4638040))

(assert (= (or b!4638038 b!4638039) bm!323747))

(assert (= (or b!4638038 b!4638039) bm!323746))

(assert (= (or b!4638038 b!4638039) bm!323748))

(assert (= (and d!1462424 res!1947274) b!4638036))

(assert (= (and b!4638036 res!1947272) b!4638037))

(declare-fun m!5496379 () Bool)

(assert (=> d!1462424 m!5496379))

(declare-fun m!5496381 () Bool)

(assert (=> d!1462424 m!5496381))

(declare-fun m!5496383 () Bool)

(assert (=> b!4638036 m!5496383))

(declare-fun m!5496385 () Bool)

(assert (=> bm!323748 m!5496385))

(declare-fun m!5496387 () Bool)

(assert (=> bm!323746 m!5496387))

(declare-fun m!5496389 () Bool)

(assert (=> b!4638040 m!5496389))

(assert (=> b!4638039 m!5496389))

(declare-fun m!5496391 () Bool)

(assert (=> b!4638039 m!5496391))

(declare-fun m!5496393 () Bool)

(assert (=> b!4638039 m!5496393))

(assert (=> b!4638039 m!5496389))

(declare-fun m!5496395 () Bool)

(assert (=> b!4638039 m!5496395))

(declare-fun m!5496397 () Bool)

(assert (=> b!4638039 m!5496397))

(declare-fun m!5496399 () Bool)

(assert (=> b!4638039 m!5496399))

(declare-fun m!5496401 () Bool)

(assert (=> b!4638039 m!5496401))

(assert (=> b!4638039 m!5496397))

(assert (=> b!4638039 m!5496391))

(declare-fun m!5496403 () Bool)

(assert (=> b!4638039 m!5496403))

(declare-fun m!5496405 () Bool)

(assert (=> b!4638039 m!5496405))

(declare-fun m!5496407 () Bool)

(assert (=> b!4638039 m!5496407))

(assert (=> bm!323747 m!5496371))

(declare-fun m!5496409 () Bool)

(assert (=> b!4638037 m!5496409))

(assert (=> b!4637936 d!1462424))

(declare-fun b!4638064 () Bool)

(declare-fun e!2893284 () List!51828)

(assert (=> b!4638064 (= e!2893284 Nil!51704)))

(declare-fun b!4638061 () Bool)

(declare-fun e!2893285 () List!51828)

(assert (=> b!4638061 (= e!2893285 (t!358904 oldBucket!40))))

(declare-fun b!4638063 () Bool)

(assert (=> b!4638063 (= e!2893284 (Cons!51704 (h!57800 oldBucket!40) (removePairForKey!1191 (t!358904 oldBucket!40) key!4968)))))

(declare-fun b!4638062 () Bool)

(assert (=> b!4638062 (= e!2893285 e!2893284)))

(declare-fun c!793767 () Bool)

(assert (=> b!4638062 (= c!793767 ((_ is Cons!51704) oldBucket!40))))

(declare-fun d!1462428 () Bool)

(declare-fun lt!1800758 () List!51828)

(assert (=> d!1462428 (not (containsKey!2584 lt!1800758 key!4968))))

(assert (=> d!1462428 (= lt!1800758 e!2893285)))

(declare-fun c!793768 () Bool)

(assert (=> d!1462428 (= c!793768 (and ((_ is Cons!51704) oldBucket!40) (= (_1!29653 (h!57800 oldBucket!40)) key!4968)))))

(assert (=> d!1462428 (noDuplicateKeys!1568 oldBucket!40)))

(assert (=> d!1462428 (= (removePairForKey!1191 oldBucket!40 key!4968) lt!1800758)))

(assert (= (and d!1462428 c!793768) b!4638061))

(assert (= (and d!1462428 (not c!793768)) b!4638062))

(assert (= (and b!4638062 c!793767) b!4638063))

(assert (= (and b!4638062 (not c!793767)) b!4638064))

(declare-fun m!5496411 () Bool)

(assert (=> b!4638063 m!5496411))

(declare-fun m!5496413 () Bool)

(assert (=> d!1462428 m!5496413))

(assert (=> d!1462428 m!5496169))

(assert (=> b!4637935 d!1462428))

(declare-fun bs!1032190 () Bool)

(declare-fun d!1462430 () Bool)

(assert (= bs!1032190 (and d!1462430 b!4638021)))

(declare-fun lambda!195543 () Int)

(assert (=> bs!1032190 (not (= lambda!195543 lambda!195533))))

(declare-fun bs!1032191 () Bool)

(assert (= bs!1032191 (and d!1462430 b!4638039)))

(assert (=> bs!1032191 (not (= lambda!195543 lambda!195539))))

(declare-fun bs!1032192 () Bool)

(assert (= bs!1032192 (and d!1462430 b!4638020)))

(assert (=> bs!1032192 (not (= lambda!195543 lambda!195532))))

(declare-fun bs!1032194 () Bool)

(assert (= bs!1032194 (and d!1462430 b!4638038)))

(assert (=> bs!1032194 (not (= lambda!195543 lambda!195537))))

(assert (=> bs!1032191 (not (= lambda!195543 lambda!195538))))

(assert (=> bs!1032190 (not (= lambda!195543 lambda!195534))))

(declare-fun bs!1032195 () Bool)

(assert (= bs!1032195 (and d!1462430 d!1462400)))

(assert (=> bs!1032195 (not (= lambda!195543 lambda!195535))))

(declare-fun bs!1032196 () Bool)

(assert (= bs!1032196 (and d!1462430 d!1462424)))

(assert (=> bs!1032196 (not (= lambda!195543 lambda!195540))))

(assert (=> d!1462430 true))

(assert (=> d!1462430 true))

(assert (=> d!1462430 (= (allKeysSameHash!1422 oldBucket!40 hash!414 hashF!1389) (forall!10918 oldBucket!40 lambda!195543))))

(declare-fun bs!1032197 () Bool)

(assert (= bs!1032197 d!1462430))

(declare-fun m!5496421 () Bool)

(assert (=> bs!1032197 m!5496421))

(assert (=> b!4637933 d!1462430))

(declare-fun d!1462434 () Bool)

(declare-fun res!1947282 () Bool)

(declare-fun e!2893293 () Bool)

(assert (=> d!1462434 (=> res!1947282 e!2893293)))

(assert (=> d!1462434 (= res!1947282 (not ((_ is Cons!51704) oldBucket!40)))))

(assert (=> d!1462434 (= (noDuplicateKeys!1568 oldBucket!40) e!2893293)))

(declare-fun b!4638078 () Bool)

(declare-fun e!2893294 () Bool)

(assert (=> b!4638078 (= e!2893293 e!2893294)))

(declare-fun res!1947283 () Bool)

(assert (=> b!4638078 (=> (not res!1947283) (not e!2893294))))

(assert (=> b!4638078 (= res!1947283 (not (containsKey!2584 (t!358904 oldBucket!40) (_1!29653 (h!57800 oldBucket!40)))))))

(declare-fun b!4638079 () Bool)

(assert (=> b!4638079 (= e!2893294 (noDuplicateKeys!1568 (t!358904 oldBucket!40)))))

(assert (= (and d!1462434 (not res!1947282)) b!4638078))

(assert (= (and b!4638078 res!1947283) b!4638079))

(declare-fun m!5496423 () Bool)

(assert (=> b!4638078 m!5496423))

(declare-fun m!5496425 () Bool)

(assert (=> b!4638079 m!5496425))

(assert (=> start!466172 d!1462434))

(declare-fun d!1462436 () Bool)

(declare-fun res!1947284 () Bool)

(declare-fun e!2893295 () Bool)

(assert (=> d!1462436 (=> res!1947284 e!2893295)))

(assert (=> d!1462436 (= res!1947284 (not ((_ is Cons!51704) newBucket!224)))))

(assert (=> d!1462436 (= (noDuplicateKeys!1568 newBucket!224) e!2893295)))

(declare-fun b!4638080 () Bool)

(declare-fun e!2893296 () Bool)

(assert (=> b!4638080 (= e!2893295 e!2893296)))

(declare-fun res!1947285 () Bool)

(assert (=> b!4638080 (=> (not res!1947285) (not e!2893296))))

(assert (=> b!4638080 (= res!1947285 (not (containsKey!2584 (t!358904 newBucket!224) (_1!29653 (h!57800 newBucket!224)))))))

(declare-fun b!4638081 () Bool)

(assert (=> b!4638081 (= e!2893296 (noDuplicateKeys!1568 (t!358904 newBucket!224)))))

(assert (= (and d!1462436 (not res!1947284)) b!4638080))

(assert (= (and b!4638080 res!1947285) b!4638081))

(declare-fun m!5496427 () Bool)

(assert (=> b!4638080 m!5496427))

(declare-fun m!5496429 () Bool)

(assert (=> b!4638081 m!5496429))

(assert (=> b!4637932 d!1462436))

(declare-fun b!4638108 () Bool)

(declare-fun e!2893314 () Bool)

(declare-datatypes ((List!51831 0))(
  ( (Nil!51707) (Cons!51707 (h!57805 K!13070) (t!358909 List!51831)) )
))
(declare-fun contains!14821 (List!51831 K!13070) Bool)

(declare-fun keys!18262 (ListMap!4405) List!51831)

(assert (=> b!4638108 (= e!2893314 (contains!14821 (keys!18262 lt!1800535) key!4968))))

(declare-fun b!4638109 () Bool)

(declare-fun e!2893318 () Unit!114771)

(declare-fun lt!1800815 () Unit!114771)

(assert (=> b!4638109 (= e!2893318 lt!1800815)))

(declare-fun lt!1800821 () Unit!114771)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1440 (List!51828 K!13070) Unit!114771)

(assert (=> b!4638109 (= lt!1800821 (lemmaContainsKeyImpliesGetValueByKeyDefined!1440 (toList!5084 lt!1800535) key!4968))))

(declare-datatypes ((Option!11722 0))(
  ( (None!11721) (Some!11721 (v!45931 V!13316)) )
))
(declare-fun isDefined!8987 (Option!11722) Bool)

(declare-fun getValueByKey!1538 (List!51828 K!13070) Option!11722)

(assert (=> b!4638109 (isDefined!8987 (getValueByKey!1538 (toList!5084 lt!1800535) key!4968))))

(declare-fun lt!1800820 () Unit!114771)

(assert (=> b!4638109 (= lt!1800820 lt!1800821)))

(declare-fun lemmaInListThenGetKeysListContains!696 (List!51828 K!13070) Unit!114771)

(assert (=> b!4638109 (= lt!1800815 (lemmaInListThenGetKeysListContains!696 (toList!5084 lt!1800535) key!4968))))

(declare-fun call!323759 () Bool)

(assert (=> b!4638109 call!323759))

(declare-fun b!4638110 () Bool)

(assert (=> b!4638110 false))

(declare-fun lt!1800817 () Unit!114771)

(declare-fun lt!1800819 () Unit!114771)

(assert (=> b!4638110 (= lt!1800817 lt!1800819)))

(declare-fun containsKey!2586 (List!51828 K!13070) Bool)

(assert (=> b!4638110 (containsKey!2586 (toList!5084 lt!1800535) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!700 (List!51828 K!13070) Unit!114771)

(assert (=> b!4638110 (= lt!1800819 (lemmaInGetKeysListThenContainsKey!700 (toList!5084 lt!1800535) key!4968))))

(declare-fun e!2893316 () Unit!114771)

(declare-fun Unit!114830 () Unit!114771)

(assert (=> b!4638110 (= e!2893316 Unit!114830)))

(declare-fun b!4638111 () Bool)

(declare-fun e!2893313 () Bool)

(assert (=> b!4638111 (= e!2893313 (not (contains!14821 (keys!18262 lt!1800535) key!4968)))))

(declare-fun b!4638112 () Bool)

(declare-fun e!2893317 () List!51831)

(assert (=> b!4638112 (= e!2893317 (keys!18262 lt!1800535))))

(declare-fun b!4638113 () Bool)

(assert (=> b!4638113 (= e!2893318 e!2893316)))

(declare-fun c!793776 () Bool)

(assert (=> b!4638113 (= c!793776 call!323759)))

(declare-fun b!4638114 () Bool)

(declare-fun e!2893315 () Bool)

(assert (=> b!4638114 (= e!2893315 e!2893314)))

(declare-fun res!1947302 () Bool)

(assert (=> b!4638114 (=> (not res!1947302) (not e!2893314))))

(assert (=> b!4638114 (= res!1947302 (isDefined!8987 (getValueByKey!1538 (toList!5084 lt!1800535) key!4968)))))

(declare-fun bm!323754 () Bool)

(assert (=> bm!323754 (= call!323759 (contains!14821 e!2893317 key!4968))))

(declare-fun c!793777 () Bool)

(declare-fun c!793778 () Bool)

(assert (=> bm!323754 (= c!793777 c!793778)))

(declare-fun d!1462438 () Bool)

(assert (=> d!1462438 e!2893315))

(declare-fun res!1947301 () Bool)

(assert (=> d!1462438 (=> res!1947301 e!2893315)))

(assert (=> d!1462438 (= res!1947301 e!2893313)))

(declare-fun res!1947300 () Bool)

(assert (=> d!1462438 (=> (not res!1947300) (not e!2893313))))

(declare-fun lt!1800822 () Bool)

(assert (=> d!1462438 (= res!1947300 (not lt!1800822))))

(declare-fun lt!1800818 () Bool)

(assert (=> d!1462438 (= lt!1800822 lt!1800818)))

(declare-fun lt!1800816 () Unit!114771)

(assert (=> d!1462438 (= lt!1800816 e!2893318)))

(assert (=> d!1462438 (= c!793778 lt!1800818)))

(assert (=> d!1462438 (= lt!1800818 (containsKey!2586 (toList!5084 lt!1800535) key!4968))))

(assert (=> d!1462438 (= (contains!14819 lt!1800535 key!4968) lt!1800822)))

(declare-fun b!4638115 () Bool)

(declare-fun Unit!114831 () Unit!114771)

(assert (=> b!4638115 (= e!2893316 Unit!114831)))

(declare-fun b!4638116 () Bool)

(declare-fun getKeysList!701 (List!51828) List!51831)

(assert (=> b!4638116 (= e!2893317 (getKeysList!701 (toList!5084 lt!1800535)))))

(assert (= (and d!1462438 c!793778) b!4638109))

(assert (= (and d!1462438 (not c!793778)) b!4638113))

(assert (= (and b!4638113 c!793776) b!4638110))

(assert (= (and b!4638113 (not c!793776)) b!4638115))

(assert (= (or b!4638109 b!4638113) bm!323754))

(assert (= (and bm!323754 c!793777) b!4638116))

(assert (= (and bm!323754 (not c!793777)) b!4638112))

(assert (= (and d!1462438 res!1947300) b!4638111))

(assert (= (and d!1462438 (not res!1947301)) b!4638114))

(assert (= (and b!4638114 res!1947302) b!4638108))

(declare-fun m!5496491 () Bool)

(assert (=> d!1462438 m!5496491))

(declare-fun m!5496493 () Bool)

(assert (=> b!4638114 m!5496493))

(assert (=> b!4638114 m!5496493))

(declare-fun m!5496495 () Bool)

(assert (=> b!4638114 m!5496495))

(declare-fun m!5496497 () Bool)

(assert (=> b!4638116 m!5496497))

(declare-fun m!5496499 () Bool)

(assert (=> b!4638112 m!5496499))

(assert (=> b!4638108 m!5496499))

(assert (=> b!4638108 m!5496499))

(declare-fun m!5496501 () Bool)

(assert (=> b!4638108 m!5496501))

(declare-fun m!5496503 () Bool)

(assert (=> bm!323754 m!5496503))

(declare-fun m!5496505 () Bool)

(assert (=> b!4638109 m!5496505))

(assert (=> b!4638109 m!5496493))

(assert (=> b!4638109 m!5496493))

(assert (=> b!4638109 m!5496495))

(declare-fun m!5496507 () Bool)

(assert (=> b!4638109 m!5496507))

(assert (=> b!4638110 m!5496491))

(declare-fun m!5496509 () Bool)

(assert (=> b!4638110 m!5496509))

(assert (=> b!4638111 m!5496499))

(assert (=> b!4638111 m!5496499))

(assert (=> b!4638111 m!5496501))

(assert (=> b!4637930 d!1462438))

(declare-fun d!1462450 () Bool)

(declare-fun lt!1800848 () ListMap!4405)

(assert (=> d!1462450 (invariantList!1250 (toList!5084 lt!1800848))))

(declare-fun e!2893328 () ListMap!4405)

(assert (=> d!1462450 (= lt!1800848 e!2893328)))

(declare-fun c!793784 () Bool)

(assert (=> d!1462450 (= c!793784 ((_ is Cons!51705) (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705)))))

(declare-fun lambda!195556 () Int)

(declare-fun forall!10920 (List!51829 Int) Bool)

(assert (=> d!1462450 (forall!10920 (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705) lambda!195556)))

(assert (=> d!1462450 (= (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705)) lt!1800848)))

(declare-fun b!4638132 () Bool)

(assert (=> b!4638132 (= e!2893328 (addToMapMapFromBucket!1027 (_2!29654 (h!57801 (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705))) (extractMap!1624 (t!358905 (Cons!51705 (tuple2!52721 hash!414 oldBucket!40) Nil!51705)))))))

(declare-fun b!4638133 () Bool)

(assert (=> b!4638133 (= e!2893328 (ListMap!4406 Nil!51704))))

(assert (= (and d!1462450 c!793784) b!4638132))

(assert (= (and d!1462450 (not c!793784)) b!4638133))

(declare-fun m!5496563 () Bool)

(assert (=> d!1462450 m!5496563))

(declare-fun m!5496565 () Bool)

(assert (=> d!1462450 m!5496565))

(declare-fun m!5496569 () Bool)

(assert (=> b!4638132 m!5496569))

(assert (=> b!4638132 m!5496569))

(declare-fun m!5496571 () Bool)

(assert (=> b!4638132 m!5496571))

(assert (=> b!4637930 d!1462450))

(declare-fun d!1462462 () Bool)

(declare-fun res!1947312 () Bool)

(declare-fun e!2893337 () Bool)

(assert (=> d!1462462 (=> res!1947312 e!2893337)))

(assert (=> d!1462462 (= res!1947312 (and ((_ is Cons!51704) lt!1800532) (= (_1!29653 (h!57800 lt!1800532)) key!4968)))))

(assert (=> d!1462462 (= (containsKey!2584 lt!1800532 key!4968) e!2893337)))

(declare-fun b!4638144 () Bool)

(declare-fun e!2893338 () Bool)

(assert (=> b!4638144 (= e!2893337 e!2893338)))

(declare-fun res!1947313 () Bool)

(assert (=> b!4638144 (=> (not res!1947313) (not e!2893338))))

(assert (=> b!4638144 (= res!1947313 ((_ is Cons!51704) lt!1800532))))

(declare-fun b!4638145 () Bool)

(assert (=> b!4638145 (= e!2893338 (containsKey!2584 (t!358904 lt!1800532) key!4968))))

(assert (= (and d!1462462 (not res!1947312)) b!4638144))

(assert (= (and b!4638144 res!1947313) b!4638145))

(declare-fun m!5496573 () Bool)

(assert (=> b!4638145 m!5496573))

(assert (=> b!4637931 d!1462462))

(declare-fun bs!1032286 () Bool)

(declare-fun d!1462464 () Bool)

(assert (= bs!1032286 (and d!1462464 d!1462450)))

(declare-fun lambda!195557 () Int)

(assert (=> bs!1032286 (= lambda!195557 lambda!195556)))

(declare-fun lt!1800849 () ListMap!4405)

(assert (=> d!1462464 (invariantList!1250 (toList!5084 lt!1800849))))

(declare-fun e!2893339 () ListMap!4405)

(assert (=> d!1462464 (= lt!1800849 e!2893339)))

(declare-fun c!793785 () Bool)

(assert (=> d!1462464 (= c!793785 ((_ is Cons!51705) (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705)))))

(assert (=> d!1462464 (forall!10920 (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705) lambda!195557)))

(assert (=> d!1462464 (= (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705)) lt!1800849)))

(declare-fun b!4638146 () Bool)

(assert (=> b!4638146 (= e!2893339 (addToMapMapFromBucket!1027 (_2!29654 (h!57801 (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705))) (extractMap!1624 (t!358905 (Cons!51705 (tuple2!52721 hash!414 lt!1800532) Nil!51705)))))))

(declare-fun b!4638147 () Bool)

(assert (=> b!4638147 (= e!2893339 (ListMap!4406 Nil!51704))))

(assert (= (and d!1462464 c!793785) b!4638146))

(assert (= (and d!1462464 (not c!793785)) b!4638147))

(declare-fun m!5496575 () Bool)

(assert (=> d!1462464 m!5496575))

(declare-fun m!5496577 () Bool)

(assert (=> d!1462464 m!5496577))

(declare-fun m!5496579 () Bool)

(assert (=> b!4638146 m!5496579))

(assert (=> b!4638146 m!5496579))

(declare-fun m!5496581 () Bool)

(assert (=> b!4638146 m!5496581))

(assert (=> b!4637929 d!1462464))

(declare-fun bs!1032287 () Bool)

(declare-fun d!1462466 () Bool)

(assert (= bs!1032287 (and d!1462466 d!1462450)))

(declare-fun lambda!195558 () Int)

(assert (=> bs!1032287 (= lambda!195558 lambda!195556)))

(declare-fun bs!1032288 () Bool)

(assert (= bs!1032288 (and d!1462466 d!1462464)))

(assert (=> bs!1032288 (= lambda!195558 lambda!195557)))

(declare-fun lt!1800850 () ListMap!4405)

(assert (=> d!1462466 (invariantList!1250 (toList!5084 lt!1800850))))

(declare-fun e!2893340 () ListMap!4405)

(assert (=> d!1462466 (= lt!1800850 e!2893340)))

(declare-fun c!793786 () Bool)

(assert (=> d!1462466 (= c!793786 ((_ is Cons!51705) (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705)))))

(assert (=> d!1462466 (forall!10920 (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705) lambda!195558)))

(assert (=> d!1462466 (= (extractMap!1624 (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705)) lt!1800850)))

(declare-fun b!4638148 () Bool)

(assert (=> b!4638148 (= e!2893340 (addToMapMapFromBucket!1027 (_2!29654 (h!57801 (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705))) (extractMap!1624 (t!358905 (Cons!51705 (tuple2!52721 hash!414 newBucket!224) Nil!51705)))))))

(declare-fun b!4638149 () Bool)

(assert (=> b!4638149 (= e!2893340 (ListMap!4406 Nil!51704))))

(assert (= (and d!1462466 c!793786) b!4638148))

(assert (= (and d!1462466 (not c!793786)) b!4638149))

(declare-fun m!5496583 () Bool)

(assert (=> d!1462466 m!5496583))

(declare-fun m!5496585 () Bool)

(assert (=> d!1462466 m!5496585))

(declare-fun m!5496587 () Bool)

(assert (=> b!4638148 m!5496587))

(assert (=> b!4638148 m!5496587))

(declare-fun m!5496589 () Bool)

(assert (=> b!4638148 m!5496589))

(assert (=> b!4637929 d!1462466))

(declare-fun d!1462468 () Bool)

(assert (=> d!1462468 (= (tail!8195 oldBucket!40) (t!358904 oldBucket!40))))

(assert (=> b!4637940 d!1462468))

(declare-fun d!1462470 () Bool)

(declare-fun e!2893343 () Bool)

(assert (=> d!1462470 e!2893343))

(declare-fun res!1947319 () Bool)

(assert (=> d!1462470 (=> (not res!1947319) (not e!2893343))))

(declare-fun lt!1800861 () ListMap!4405)

(assert (=> d!1462470 (= res!1947319 (contains!14819 lt!1800861 (_1!29653 lt!1800534)))))

(declare-fun lt!1800859 () List!51828)

(assert (=> d!1462470 (= lt!1800861 (ListMap!4406 lt!1800859))))

(declare-fun lt!1800860 () Unit!114771)

(declare-fun lt!1800862 () Unit!114771)

(assert (=> d!1462470 (= lt!1800860 lt!1800862)))

(assert (=> d!1462470 (= (getValueByKey!1538 lt!1800859 (_1!29653 lt!1800534)) (Some!11721 (_2!29653 lt!1800534)))))

(declare-fun lemmaContainsTupThenGetReturnValue!891 (List!51828 K!13070 V!13316) Unit!114771)

(assert (=> d!1462470 (= lt!1800862 (lemmaContainsTupThenGetReturnValue!891 lt!1800859 (_1!29653 lt!1800534) (_2!29653 lt!1800534)))))

(declare-fun insertNoDuplicatedKeys!399 (List!51828 K!13070 V!13316) List!51828)

(assert (=> d!1462470 (= lt!1800859 (insertNoDuplicatedKeys!399 (toList!5084 lt!1800531) (_1!29653 lt!1800534) (_2!29653 lt!1800534)))))

(assert (=> d!1462470 (= (+!1922 lt!1800531 lt!1800534) lt!1800861)))

(declare-fun b!4638154 () Bool)

(declare-fun res!1947318 () Bool)

(assert (=> b!4638154 (=> (not res!1947318) (not e!2893343))))

(assert (=> b!4638154 (= res!1947318 (= (getValueByKey!1538 (toList!5084 lt!1800861) (_1!29653 lt!1800534)) (Some!11721 (_2!29653 lt!1800534))))))

(declare-fun b!4638155 () Bool)

(declare-fun contains!14822 (List!51828 tuple2!52718) Bool)

(assert (=> b!4638155 (= e!2893343 (contains!14822 (toList!5084 lt!1800861) lt!1800534))))

(assert (= (and d!1462470 res!1947319) b!4638154))

(assert (= (and b!4638154 res!1947318) b!4638155))

(declare-fun m!5496591 () Bool)

(assert (=> d!1462470 m!5496591))

(declare-fun m!5496593 () Bool)

(assert (=> d!1462470 m!5496593))

(declare-fun m!5496595 () Bool)

(assert (=> d!1462470 m!5496595))

(declare-fun m!5496597 () Bool)

(assert (=> d!1462470 m!5496597))

(declare-fun m!5496599 () Bool)

(assert (=> b!4638154 m!5496599))

(declare-fun m!5496601 () Bool)

(assert (=> b!4638155 m!5496601))

(assert (=> b!4637928 d!1462470))

(declare-fun d!1462472 () Bool)

(assert (=> d!1462472 (= (head!9688 oldBucket!40) (h!57800 oldBucket!40))))

(assert (=> b!4637928 d!1462472))

(declare-fun bs!1032289 () Bool)

(declare-fun b!4638158 () Bool)

(assert (= bs!1032289 (and b!4638158 b!4638021)))

(declare-fun lambda!195559 () Int)

(assert (=> bs!1032289 (= lambda!195559 lambda!195533)))

(declare-fun bs!1032290 () Bool)

(assert (= bs!1032290 (and b!4638158 b!4638039)))

(assert (=> bs!1032290 (= (= (ListMap!4406 Nil!51704) lt!1800745) (= lambda!195559 lambda!195539))))

(declare-fun bs!1032291 () Bool)

(assert (= bs!1032291 (and b!4638158 d!1462430)))

(assert (=> bs!1032291 (not (= lambda!195559 lambda!195543))))

(declare-fun bs!1032292 () Bool)

(assert (= bs!1032292 (and b!4638158 b!4638020)))

(assert (=> bs!1032292 (= lambda!195559 lambda!195532)))

(declare-fun bs!1032293 () Bool)

(assert (= bs!1032293 (and b!4638158 b!4638038)))

(assert (=> bs!1032293 (= lambda!195559 lambda!195537)))

(assert (=> bs!1032290 (= lambda!195559 lambda!195538)))

(assert (=> bs!1032289 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195559 lambda!195534))))

(declare-fun bs!1032294 () Bool)

(assert (= bs!1032294 (and b!4638158 d!1462400)))

(assert (=> bs!1032294 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195559 lambda!195535))))

(declare-fun bs!1032295 () Bool)

(assert (= bs!1032295 (and b!4638158 d!1462424)))

(assert (=> bs!1032295 (= (= (ListMap!4406 Nil!51704) lt!1800750) (= lambda!195559 lambda!195540))))

(assert (=> b!4638158 true))

(declare-fun bs!1032296 () Bool)

(declare-fun b!4638159 () Bool)

(assert (= bs!1032296 (and b!4638159 b!4638021)))

(declare-fun lambda!195560 () Int)

(assert (=> bs!1032296 (= lambda!195560 lambda!195533)))

(declare-fun bs!1032297 () Bool)

(assert (= bs!1032297 (and b!4638159 b!4638039)))

(assert (=> bs!1032297 (= (= (ListMap!4406 Nil!51704) lt!1800745) (= lambda!195560 lambda!195539))))

(declare-fun bs!1032298 () Bool)

(assert (= bs!1032298 (and b!4638159 d!1462430)))

(assert (=> bs!1032298 (not (= lambda!195560 lambda!195543))))

(declare-fun bs!1032299 () Bool)

(assert (= bs!1032299 (and b!4638159 b!4638020)))

(assert (=> bs!1032299 (= lambda!195560 lambda!195532)))

(declare-fun bs!1032300 () Bool)

(assert (= bs!1032300 (and b!4638159 b!4638038)))

(assert (=> bs!1032300 (= lambda!195560 lambda!195537)))

(assert (=> bs!1032297 (= lambda!195560 lambda!195538)))

(declare-fun bs!1032301 () Bool)

(assert (= bs!1032301 (and b!4638159 b!4638158)))

(assert (=> bs!1032301 (= lambda!195560 lambda!195559)))

(assert (=> bs!1032296 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195560 lambda!195534))))

(declare-fun bs!1032302 () Bool)

(assert (= bs!1032302 (and b!4638159 d!1462400)))

(assert (=> bs!1032302 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195560 lambda!195535))))

(declare-fun bs!1032303 () Bool)

(assert (= bs!1032303 (and b!4638159 d!1462424)))

(assert (=> bs!1032303 (= (= (ListMap!4406 Nil!51704) lt!1800750) (= lambda!195560 lambda!195540))))

(assert (=> b!4638159 true))

(declare-fun lt!1800876 () ListMap!4405)

(declare-fun lambda!195561 () Int)

(assert (=> bs!1032296 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195533))))

(assert (=> bs!1032297 (= (= lt!1800876 lt!1800745) (= lambda!195561 lambda!195539))))

(assert (=> bs!1032298 (not (= lambda!195561 lambda!195543))))

(assert (=> bs!1032299 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195532))))

(assert (=> bs!1032300 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195537))))

(assert (=> bs!1032297 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195538))))

(assert (=> bs!1032301 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195559))))

(assert (=> b!4638159 (= (= lt!1800876 (ListMap!4406 Nil!51704)) (= lambda!195561 lambda!195560))))

(assert (=> bs!1032296 (= (= lt!1800876 lt!1800715) (= lambda!195561 lambda!195534))))

(assert (=> bs!1032302 (= (= lt!1800876 lt!1800720) (= lambda!195561 lambda!195535))))

(assert (=> bs!1032303 (= (= lt!1800876 lt!1800750) (= lambda!195561 lambda!195540))))

(assert (=> b!4638159 true))

(declare-fun bs!1032304 () Bool)

(declare-fun d!1462474 () Bool)

(assert (= bs!1032304 (and d!1462474 b!4638021)))

(declare-fun lt!1800881 () ListMap!4405)

(declare-fun lambda!195562 () Int)

(assert (=> bs!1032304 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195533))))

(declare-fun bs!1032305 () Bool)

(assert (= bs!1032305 (and d!1462474 b!4638039)))

(assert (=> bs!1032305 (= (= lt!1800881 lt!1800745) (= lambda!195562 lambda!195539))))

(declare-fun bs!1032306 () Bool)

(assert (= bs!1032306 (and d!1462474 d!1462430)))

(assert (=> bs!1032306 (not (= lambda!195562 lambda!195543))))

(declare-fun bs!1032307 () Bool)

(assert (= bs!1032307 (and d!1462474 b!4638020)))

(assert (=> bs!1032307 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195532))))

(declare-fun bs!1032308 () Bool)

(assert (= bs!1032308 (and d!1462474 b!4638038)))

(assert (=> bs!1032308 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195537))))

(assert (=> bs!1032305 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195538))))

(declare-fun bs!1032309 () Bool)

(assert (= bs!1032309 (and d!1462474 b!4638158)))

(assert (=> bs!1032309 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195559))))

(assert (=> bs!1032304 (= (= lt!1800881 lt!1800715) (= lambda!195562 lambda!195534))))

(declare-fun bs!1032310 () Bool)

(assert (= bs!1032310 (and d!1462474 d!1462400)))

(assert (=> bs!1032310 (= (= lt!1800881 lt!1800720) (= lambda!195562 lambda!195535))))

(declare-fun bs!1032311 () Bool)

(assert (= bs!1032311 (and d!1462474 d!1462424)))

(assert (=> bs!1032311 (= (= lt!1800881 lt!1800750) (= lambda!195562 lambda!195540))))

(declare-fun bs!1032312 () Bool)

(assert (= bs!1032312 (and d!1462474 b!4638159)))

(assert (=> bs!1032312 (= (= lt!1800881 lt!1800876) (= lambda!195562 lambda!195561))))

(assert (=> bs!1032312 (= (= lt!1800881 (ListMap!4406 Nil!51704)) (= lambda!195562 lambda!195560))))

(assert (=> d!1462474 true))

(declare-fun call!323765 () Bool)

(declare-fun bm!323758 () Bool)

(declare-fun c!793787 () Bool)

(assert (=> bm!323758 (= call!323765 (forall!10918 (ite c!793787 (toList!5084 (ListMap!4406 Nil!51704)) oldBucket!40) (ite c!793787 lambda!195559 lambda!195561)))))

(declare-fun e!2893345 () Bool)

(assert (=> d!1462474 e!2893345))

(declare-fun res!1947322 () Bool)

(assert (=> d!1462474 (=> (not res!1947322) (not e!2893345))))

(assert (=> d!1462474 (= res!1947322 (forall!10918 oldBucket!40 lambda!195562))))

(declare-fun e!2893346 () ListMap!4405)

(assert (=> d!1462474 (= lt!1800881 e!2893346)))

(assert (=> d!1462474 (= c!793787 ((_ is Nil!51704) oldBucket!40))))

(assert (=> d!1462474 (noDuplicateKeys!1568 oldBucket!40)))

(assert (=> d!1462474 (= (addToMapMapFromBucket!1027 oldBucket!40 (ListMap!4406 Nil!51704)) lt!1800881)))

(declare-fun bm!323759 () Bool)

(declare-fun call!323764 () Unit!114771)

(assert (=> bm!323759 (= call!323764 (lemmaContainsAllItsOwnKeys!552 (ListMap!4406 Nil!51704)))))

(declare-fun b!4638156 () Bool)

(declare-fun res!1947320 () Bool)

(assert (=> b!4638156 (=> (not res!1947320) (not e!2893345))))

(assert (=> b!4638156 (= res!1947320 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195562))))

(declare-fun b!4638157 () Bool)

(assert (=> b!4638157 (= e!2893345 (invariantList!1250 (toList!5084 lt!1800881)))))

(declare-fun call!323763 () Bool)

(declare-fun bm!323760 () Bool)

(assert (=> bm!323760 (= call!323763 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) (ite c!793787 lambda!195559 lambda!195560)))))

(assert (=> b!4638158 (= e!2893346 (ListMap!4406 Nil!51704))))

(declare-fun lt!1800875 () Unit!114771)

(assert (=> b!4638158 (= lt!1800875 call!323764)))

(assert (=> b!4638158 call!323765))

(declare-fun lt!1800882 () Unit!114771)

(assert (=> b!4638158 (= lt!1800882 lt!1800875)))

(assert (=> b!4638158 call!323763))

(declare-fun lt!1800866 () Unit!114771)

(declare-fun Unit!114843 () Unit!114771)

(assert (=> b!4638158 (= lt!1800866 Unit!114843)))

(assert (=> b!4638159 (= e!2893346 lt!1800876)))

(declare-fun lt!1800877 () ListMap!4405)

(assert (=> b!4638159 (= lt!1800877 (+!1922 (ListMap!4406 Nil!51704) (h!57800 oldBucket!40)))))

(assert (=> b!4638159 (= lt!1800876 (addToMapMapFromBucket!1027 (t!358904 oldBucket!40) (+!1922 (ListMap!4406 Nil!51704) (h!57800 oldBucket!40))))))

(declare-fun lt!1800874 () Unit!114771)

(assert (=> b!4638159 (= lt!1800874 call!323764)))

(assert (=> b!4638159 call!323763))

(declare-fun lt!1800865 () Unit!114771)

(assert (=> b!4638159 (= lt!1800865 lt!1800874)))

(assert (=> b!4638159 (forall!10918 (toList!5084 lt!1800877) lambda!195561)))

(declare-fun lt!1800863 () Unit!114771)

(declare-fun Unit!114844 () Unit!114771)

(assert (=> b!4638159 (= lt!1800863 Unit!114844)))

(assert (=> b!4638159 (forall!10918 (t!358904 oldBucket!40) lambda!195561)))

(declare-fun lt!1800871 () Unit!114771)

(declare-fun Unit!114845 () Unit!114771)

(assert (=> b!4638159 (= lt!1800871 Unit!114845)))

(declare-fun lt!1800864 () Unit!114771)

(declare-fun Unit!114846 () Unit!114771)

(assert (=> b!4638159 (= lt!1800864 Unit!114846)))

(declare-fun lt!1800873 () Unit!114771)

(assert (=> b!4638159 (= lt!1800873 (forallContained!3142 (toList!5084 lt!1800877) lambda!195561 (h!57800 oldBucket!40)))))

(assert (=> b!4638159 (contains!14819 lt!1800877 (_1!29653 (h!57800 oldBucket!40)))))

(declare-fun lt!1800868 () Unit!114771)

(declare-fun Unit!114847 () Unit!114771)

(assert (=> b!4638159 (= lt!1800868 Unit!114847)))

(assert (=> b!4638159 (contains!14819 lt!1800876 (_1!29653 (h!57800 oldBucket!40)))))

(declare-fun lt!1800879 () Unit!114771)

(declare-fun Unit!114848 () Unit!114771)

(assert (=> b!4638159 (= lt!1800879 Unit!114848)))

(assert (=> b!4638159 (forall!10918 oldBucket!40 lambda!195561)))

(declare-fun lt!1800872 () Unit!114771)

(declare-fun Unit!114849 () Unit!114771)

(assert (=> b!4638159 (= lt!1800872 Unit!114849)))

(assert (=> b!4638159 (forall!10918 (toList!5084 lt!1800877) lambda!195561)))

(declare-fun lt!1800870 () Unit!114771)

(declare-fun Unit!114850 () Unit!114771)

(assert (=> b!4638159 (= lt!1800870 Unit!114850)))

(declare-fun lt!1800869 () Unit!114771)

(declare-fun Unit!114851 () Unit!114771)

(assert (=> b!4638159 (= lt!1800869 Unit!114851)))

(declare-fun lt!1800883 () Unit!114771)

(assert (=> b!4638159 (= lt!1800883 (addForallContainsKeyThenBeforeAdding!551 (ListMap!4406 Nil!51704) lt!1800876 (_1!29653 (h!57800 oldBucket!40)) (_2!29653 (h!57800 oldBucket!40))))))

(assert (=> b!4638159 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195561)))

(declare-fun lt!1800878 () Unit!114771)

(assert (=> b!4638159 (= lt!1800878 lt!1800883)))

(assert (=> b!4638159 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195561)))

(declare-fun lt!1800867 () Unit!114771)

(declare-fun Unit!114852 () Unit!114771)

(assert (=> b!4638159 (= lt!1800867 Unit!114852)))

(declare-fun res!1947321 () Bool)

(assert (=> b!4638159 (= res!1947321 call!323765)))

(declare-fun e!2893344 () Bool)

(assert (=> b!4638159 (=> (not res!1947321) (not e!2893344))))

(assert (=> b!4638159 e!2893344))

(declare-fun lt!1800880 () Unit!114771)

(declare-fun Unit!114853 () Unit!114771)

(assert (=> b!4638159 (= lt!1800880 Unit!114853)))

(declare-fun b!4638160 () Bool)

(assert (=> b!4638160 (= e!2893344 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195561))))

(assert (= (and d!1462474 c!793787) b!4638158))

(assert (= (and d!1462474 (not c!793787)) b!4638159))

(assert (= (and b!4638159 res!1947321) b!4638160))

(assert (= (or b!4638158 b!4638159) bm!323759))

(assert (= (or b!4638158 b!4638159) bm!323758))

(assert (= (or b!4638158 b!4638159) bm!323760))

(assert (= (and d!1462474 res!1947322) b!4638156))

(assert (= (and b!4638156 res!1947320) b!4638157))

(declare-fun m!5496603 () Bool)

(assert (=> d!1462474 m!5496603))

(assert (=> d!1462474 m!5496169))

(declare-fun m!5496605 () Bool)

(assert (=> b!4638156 m!5496605))

(declare-fun m!5496607 () Bool)

(assert (=> bm!323760 m!5496607))

(declare-fun m!5496609 () Bool)

(assert (=> bm!323758 m!5496609))

(declare-fun m!5496611 () Bool)

(assert (=> b!4638160 m!5496611))

(assert (=> b!4638159 m!5496611))

(declare-fun m!5496613 () Bool)

(assert (=> b!4638159 m!5496613))

(declare-fun m!5496615 () Bool)

(assert (=> b!4638159 m!5496615))

(assert (=> b!4638159 m!5496611))

(declare-fun m!5496617 () Bool)

(assert (=> b!4638159 m!5496617))

(declare-fun m!5496619 () Bool)

(assert (=> b!4638159 m!5496619))

(declare-fun m!5496621 () Bool)

(assert (=> b!4638159 m!5496621))

(declare-fun m!5496623 () Bool)

(assert (=> b!4638159 m!5496623))

(assert (=> b!4638159 m!5496619))

(assert (=> b!4638159 m!5496613))

(declare-fun m!5496625 () Bool)

(assert (=> b!4638159 m!5496625))

(declare-fun m!5496627 () Bool)

(assert (=> b!4638159 m!5496627))

(declare-fun m!5496629 () Bool)

(assert (=> b!4638159 m!5496629))

(assert (=> bm!323759 m!5496371))

(declare-fun m!5496631 () Bool)

(assert (=> b!4638157 m!5496631))

(assert (=> b!4637928 d!1462474))

(declare-fun bs!1032313 () Bool)

(declare-fun b!4638163 () Bool)

(assert (= bs!1032313 (and b!4638163 b!4638021)))

(declare-fun lambda!195563 () Int)

(assert (=> bs!1032313 (= lambda!195563 lambda!195533)))

(declare-fun bs!1032314 () Bool)

(assert (= bs!1032314 (and b!4638163 b!4638039)))

(assert (=> bs!1032314 (= (= (ListMap!4406 Nil!51704) lt!1800745) (= lambda!195563 lambda!195539))))

(declare-fun bs!1032315 () Bool)

(assert (= bs!1032315 (and b!4638163 d!1462430)))

(assert (=> bs!1032315 (not (= lambda!195563 lambda!195543))))

(declare-fun bs!1032316 () Bool)

(assert (= bs!1032316 (and b!4638163 b!4638020)))

(assert (=> bs!1032316 (= lambda!195563 lambda!195532)))

(declare-fun bs!1032317 () Bool)

(assert (= bs!1032317 (and b!4638163 b!4638038)))

(assert (=> bs!1032317 (= lambda!195563 lambda!195537)))

(assert (=> bs!1032314 (= lambda!195563 lambda!195538)))

(declare-fun bs!1032318 () Bool)

(assert (= bs!1032318 (and b!4638163 b!4638158)))

(assert (=> bs!1032318 (= lambda!195563 lambda!195559)))

(assert (=> bs!1032313 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195563 lambda!195534))))

(declare-fun bs!1032319 () Bool)

(assert (= bs!1032319 (and b!4638163 d!1462400)))

(assert (=> bs!1032319 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195563 lambda!195535))))

(declare-fun bs!1032320 () Bool)

(assert (= bs!1032320 (and b!4638163 d!1462474)))

(assert (=> bs!1032320 (= (= (ListMap!4406 Nil!51704) lt!1800881) (= lambda!195563 lambda!195562))))

(declare-fun bs!1032321 () Bool)

(assert (= bs!1032321 (and b!4638163 d!1462424)))

(assert (=> bs!1032321 (= (= (ListMap!4406 Nil!51704) lt!1800750) (= lambda!195563 lambda!195540))))

(declare-fun bs!1032322 () Bool)

(assert (= bs!1032322 (and b!4638163 b!4638159)))

(assert (=> bs!1032322 (= (= (ListMap!4406 Nil!51704) lt!1800876) (= lambda!195563 lambda!195561))))

(assert (=> bs!1032322 (= lambda!195563 lambda!195560)))

(assert (=> b!4638163 true))

(declare-fun bs!1032323 () Bool)

(declare-fun b!4638164 () Bool)

(assert (= bs!1032323 (and b!4638164 b!4638021)))

(declare-fun lambda!195564 () Int)

(assert (=> bs!1032323 (= lambda!195564 lambda!195533)))

(declare-fun bs!1032324 () Bool)

(assert (= bs!1032324 (and b!4638164 b!4638039)))

(assert (=> bs!1032324 (= (= (ListMap!4406 Nil!51704) lt!1800745) (= lambda!195564 lambda!195539))))

(declare-fun bs!1032325 () Bool)

(assert (= bs!1032325 (and b!4638164 d!1462430)))

(assert (=> bs!1032325 (not (= lambda!195564 lambda!195543))))

(declare-fun bs!1032326 () Bool)

(assert (= bs!1032326 (and b!4638164 b!4638020)))

(assert (=> bs!1032326 (= lambda!195564 lambda!195532)))

(declare-fun bs!1032327 () Bool)

(assert (= bs!1032327 (and b!4638164 b!4638038)))

(assert (=> bs!1032327 (= lambda!195564 lambda!195537)))

(assert (=> bs!1032324 (= lambda!195564 lambda!195538)))

(declare-fun bs!1032328 () Bool)

(assert (= bs!1032328 (and b!4638164 b!4638158)))

(assert (=> bs!1032328 (= lambda!195564 lambda!195559)))

(assert (=> bs!1032323 (= (= (ListMap!4406 Nil!51704) lt!1800715) (= lambda!195564 lambda!195534))))

(declare-fun bs!1032329 () Bool)

(assert (= bs!1032329 (and b!4638164 b!4638163)))

(assert (=> bs!1032329 (= lambda!195564 lambda!195563)))

(declare-fun bs!1032330 () Bool)

(assert (= bs!1032330 (and b!4638164 d!1462400)))

(assert (=> bs!1032330 (= (= (ListMap!4406 Nil!51704) lt!1800720) (= lambda!195564 lambda!195535))))

(declare-fun bs!1032331 () Bool)

(assert (= bs!1032331 (and b!4638164 d!1462474)))

(assert (=> bs!1032331 (= (= (ListMap!4406 Nil!51704) lt!1800881) (= lambda!195564 lambda!195562))))

(declare-fun bs!1032332 () Bool)

(assert (= bs!1032332 (and b!4638164 d!1462424)))

(assert (=> bs!1032332 (= (= (ListMap!4406 Nil!51704) lt!1800750) (= lambda!195564 lambda!195540))))

(declare-fun bs!1032333 () Bool)

(assert (= bs!1032333 (and b!4638164 b!4638159)))

(assert (=> bs!1032333 (= (= (ListMap!4406 Nil!51704) lt!1800876) (= lambda!195564 lambda!195561))))

(assert (=> bs!1032333 (= lambda!195564 lambda!195560)))

(assert (=> b!4638164 true))

(declare-fun lt!1800897 () ListMap!4405)

(declare-fun lambda!195565 () Int)

(assert (=> bs!1032323 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195533))))

(assert (=> bs!1032324 (= (= lt!1800897 lt!1800745) (= lambda!195565 lambda!195539))))

(assert (=> bs!1032325 (not (= lambda!195565 lambda!195543))))

(assert (=> bs!1032326 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195532))))

(assert (=> bs!1032327 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195537))))

(assert (=> bs!1032324 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195538))))

(assert (=> bs!1032328 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195559))))

(assert (=> bs!1032323 (= (= lt!1800897 lt!1800715) (= lambda!195565 lambda!195534))))

(assert (=> bs!1032329 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195563))))

(assert (=> bs!1032331 (= (= lt!1800897 lt!1800881) (= lambda!195565 lambda!195562))))

(assert (=> bs!1032332 (= (= lt!1800897 lt!1800750) (= lambda!195565 lambda!195540))))

(assert (=> bs!1032333 (= (= lt!1800897 lt!1800876) (= lambda!195565 lambda!195561))))

(assert (=> bs!1032333 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195560))))

(assert (=> bs!1032330 (= (= lt!1800897 lt!1800720) (= lambda!195565 lambda!195535))))

(assert (=> b!4638164 (= (= lt!1800897 (ListMap!4406 Nil!51704)) (= lambda!195565 lambda!195564))))

(assert (=> b!4638164 true))

(declare-fun bs!1032334 () Bool)

(declare-fun d!1462476 () Bool)

(assert (= bs!1032334 (and d!1462476 b!4638021)))

(declare-fun lt!1800902 () ListMap!4405)

(declare-fun lambda!195566 () Int)

(assert (=> bs!1032334 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195533))))

(declare-fun bs!1032335 () Bool)

(assert (= bs!1032335 (and d!1462476 b!4638039)))

(assert (=> bs!1032335 (= (= lt!1800902 lt!1800745) (= lambda!195566 lambda!195539))))

(declare-fun bs!1032336 () Bool)

(assert (= bs!1032336 (and d!1462476 d!1462430)))

(assert (=> bs!1032336 (not (= lambda!195566 lambda!195543))))

(declare-fun bs!1032337 () Bool)

(assert (= bs!1032337 (and d!1462476 b!4638020)))

(assert (=> bs!1032337 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195532))))

(declare-fun bs!1032338 () Bool)

(assert (= bs!1032338 (and d!1462476 b!4638038)))

(assert (=> bs!1032338 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195537))))

(assert (=> bs!1032335 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195538))))

(declare-fun bs!1032339 () Bool)

(assert (= bs!1032339 (and d!1462476 b!4638158)))

(assert (=> bs!1032339 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195559))))

(assert (=> bs!1032334 (= (= lt!1800902 lt!1800715) (= lambda!195566 lambda!195534))))

(declare-fun bs!1032340 () Bool)

(assert (= bs!1032340 (and d!1462476 b!4638163)))

(assert (=> bs!1032340 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195563))))

(declare-fun bs!1032341 () Bool)

(assert (= bs!1032341 (and d!1462476 b!4638164)))

(assert (=> bs!1032341 (= (= lt!1800902 lt!1800897) (= lambda!195566 lambda!195565))))

(declare-fun bs!1032342 () Bool)

(assert (= bs!1032342 (and d!1462476 d!1462474)))

(assert (=> bs!1032342 (= (= lt!1800902 lt!1800881) (= lambda!195566 lambda!195562))))

(declare-fun bs!1032343 () Bool)

(assert (= bs!1032343 (and d!1462476 d!1462424)))

(assert (=> bs!1032343 (= (= lt!1800902 lt!1800750) (= lambda!195566 lambda!195540))))

(declare-fun bs!1032344 () Bool)

(assert (= bs!1032344 (and d!1462476 b!4638159)))

(assert (=> bs!1032344 (= (= lt!1800902 lt!1800876) (= lambda!195566 lambda!195561))))

(assert (=> bs!1032344 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195560))))

(declare-fun bs!1032345 () Bool)

(assert (= bs!1032345 (and d!1462476 d!1462400)))

(assert (=> bs!1032345 (= (= lt!1800902 lt!1800720) (= lambda!195566 lambda!195535))))

(assert (=> bs!1032341 (= (= lt!1800902 (ListMap!4406 Nil!51704)) (= lambda!195566 lambda!195564))))

(assert (=> d!1462476 true))

(declare-fun bm!323761 () Bool)

(declare-fun call!323768 () Bool)

(declare-fun c!793788 () Bool)

(assert (=> bm!323761 (= call!323768 (forall!10918 (ite c!793788 (toList!5084 (ListMap!4406 Nil!51704)) (Cons!51704 lt!1800534 lt!1800532)) (ite c!793788 lambda!195563 lambda!195565)))))

(declare-fun e!2893348 () Bool)

(assert (=> d!1462476 e!2893348))

(declare-fun res!1947325 () Bool)

(assert (=> d!1462476 (=> (not res!1947325) (not e!2893348))))

(assert (=> d!1462476 (= res!1947325 (forall!10918 (Cons!51704 lt!1800534 lt!1800532) lambda!195566))))

(declare-fun e!2893349 () ListMap!4405)

(assert (=> d!1462476 (= lt!1800902 e!2893349)))

(assert (=> d!1462476 (= c!793788 ((_ is Nil!51704) (Cons!51704 lt!1800534 lt!1800532)))))

(assert (=> d!1462476 (noDuplicateKeys!1568 (Cons!51704 lt!1800534 lt!1800532))))

(assert (=> d!1462476 (= (addToMapMapFromBucket!1027 (Cons!51704 lt!1800534 lt!1800532) (ListMap!4406 Nil!51704)) lt!1800902)))

(declare-fun bm!323762 () Bool)

(declare-fun call!323767 () Unit!114771)

(assert (=> bm!323762 (= call!323767 (lemmaContainsAllItsOwnKeys!552 (ListMap!4406 Nil!51704)))))

(declare-fun b!4638161 () Bool)

(declare-fun res!1947323 () Bool)

(assert (=> b!4638161 (=> (not res!1947323) (not e!2893348))))

(assert (=> b!4638161 (= res!1947323 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195566))))

(declare-fun b!4638162 () Bool)

(assert (=> b!4638162 (= e!2893348 (invariantList!1250 (toList!5084 lt!1800902)))))

(declare-fun call!323766 () Bool)

(declare-fun bm!323763 () Bool)

(assert (=> bm!323763 (= call!323766 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) (ite c!793788 lambda!195563 lambda!195564)))))

(assert (=> b!4638163 (= e!2893349 (ListMap!4406 Nil!51704))))

(declare-fun lt!1800896 () Unit!114771)

(assert (=> b!4638163 (= lt!1800896 call!323767)))

(assert (=> b!4638163 call!323768))

(declare-fun lt!1800903 () Unit!114771)

(assert (=> b!4638163 (= lt!1800903 lt!1800896)))

(assert (=> b!4638163 call!323766))

(declare-fun lt!1800887 () Unit!114771)

(declare-fun Unit!114854 () Unit!114771)

(assert (=> b!4638163 (= lt!1800887 Unit!114854)))

(assert (=> b!4638164 (= e!2893349 lt!1800897)))

(declare-fun lt!1800898 () ListMap!4405)

(assert (=> b!4638164 (= lt!1800898 (+!1922 (ListMap!4406 Nil!51704) (h!57800 (Cons!51704 lt!1800534 lt!1800532))))))

(assert (=> b!4638164 (= lt!1800897 (addToMapMapFromBucket!1027 (t!358904 (Cons!51704 lt!1800534 lt!1800532)) (+!1922 (ListMap!4406 Nil!51704) (h!57800 (Cons!51704 lt!1800534 lt!1800532)))))))

(declare-fun lt!1800895 () Unit!114771)

(assert (=> b!4638164 (= lt!1800895 call!323767)))

(assert (=> b!4638164 call!323766))

(declare-fun lt!1800886 () Unit!114771)

(assert (=> b!4638164 (= lt!1800886 lt!1800895)))

(assert (=> b!4638164 (forall!10918 (toList!5084 lt!1800898) lambda!195565)))

(declare-fun lt!1800884 () Unit!114771)

(declare-fun Unit!114855 () Unit!114771)

(assert (=> b!4638164 (= lt!1800884 Unit!114855)))

(assert (=> b!4638164 (forall!10918 (t!358904 (Cons!51704 lt!1800534 lt!1800532)) lambda!195565)))

(declare-fun lt!1800892 () Unit!114771)

(declare-fun Unit!114856 () Unit!114771)

(assert (=> b!4638164 (= lt!1800892 Unit!114856)))

(declare-fun lt!1800885 () Unit!114771)

(declare-fun Unit!114857 () Unit!114771)

(assert (=> b!4638164 (= lt!1800885 Unit!114857)))

(declare-fun lt!1800894 () Unit!114771)

(assert (=> b!4638164 (= lt!1800894 (forallContained!3142 (toList!5084 lt!1800898) lambda!195565 (h!57800 (Cons!51704 lt!1800534 lt!1800532))))))

(assert (=> b!4638164 (contains!14819 lt!1800898 (_1!29653 (h!57800 (Cons!51704 lt!1800534 lt!1800532))))))

(declare-fun lt!1800889 () Unit!114771)

(declare-fun Unit!114858 () Unit!114771)

(assert (=> b!4638164 (= lt!1800889 Unit!114858)))

(assert (=> b!4638164 (contains!14819 lt!1800897 (_1!29653 (h!57800 (Cons!51704 lt!1800534 lt!1800532))))))

(declare-fun lt!1800900 () Unit!114771)

(declare-fun Unit!114859 () Unit!114771)

(assert (=> b!4638164 (= lt!1800900 Unit!114859)))

(assert (=> b!4638164 (forall!10918 (Cons!51704 lt!1800534 lt!1800532) lambda!195565)))

(declare-fun lt!1800893 () Unit!114771)

(declare-fun Unit!114860 () Unit!114771)

(assert (=> b!4638164 (= lt!1800893 Unit!114860)))

(assert (=> b!4638164 (forall!10918 (toList!5084 lt!1800898) lambda!195565)))

(declare-fun lt!1800891 () Unit!114771)

(declare-fun Unit!114861 () Unit!114771)

(assert (=> b!4638164 (= lt!1800891 Unit!114861)))

(declare-fun lt!1800890 () Unit!114771)

(declare-fun Unit!114862 () Unit!114771)

(assert (=> b!4638164 (= lt!1800890 Unit!114862)))

(declare-fun lt!1800904 () Unit!114771)

(assert (=> b!4638164 (= lt!1800904 (addForallContainsKeyThenBeforeAdding!551 (ListMap!4406 Nil!51704) lt!1800897 (_1!29653 (h!57800 (Cons!51704 lt!1800534 lt!1800532))) (_2!29653 (h!57800 (Cons!51704 lt!1800534 lt!1800532)))))))

(assert (=> b!4638164 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195565)))

(declare-fun lt!1800899 () Unit!114771)

(assert (=> b!4638164 (= lt!1800899 lt!1800904)))

(assert (=> b!4638164 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195565)))

(declare-fun lt!1800888 () Unit!114771)

(declare-fun Unit!114863 () Unit!114771)

(assert (=> b!4638164 (= lt!1800888 Unit!114863)))

(declare-fun res!1947324 () Bool)

(assert (=> b!4638164 (= res!1947324 call!323768)))

(declare-fun e!2893347 () Bool)

(assert (=> b!4638164 (=> (not res!1947324) (not e!2893347))))

(assert (=> b!4638164 e!2893347))

(declare-fun lt!1800901 () Unit!114771)

(declare-fun Unit!114864 () Unit!114771)

(assert (=> b!4638164 (= lt!1800901 Unit!114864)))

(declare-fun b!4638165 () Bool)

(assert (=> b!4638165 (= e!2893347 (forall!10918 (toList!5084 (ListMap!4406 Nil!51704)) lambda!195565))))

(assert (= (and d!1462476 c!793788) b!4638163))

(assert (= (and d!1462476 (not c!793788)) b!4638164))

(assert (= (and b!4638164 res!1947324) b!4638165))

(assert (= (or b!4638163 b!4638164) bm!323762))

(assert (= (or b!4638163 b!4638164) bm!323761))

(assert (= (or b!4638163 b!4638164) bm!323763))

(assert (= (and d!1462476 res!1947325) b!4638161))

(assert (= (and b!4638161 res!1947323) b!4638162))

(declare-fun m!5496633 () Bool)

(assert (=> d!1462476 m!5496633))

(declare-fun m!5496635 () Bool)

(assert (=> d!1462476 m!5496635))

(declare-fun m!5496637 () Bool)

(assert (=> b!4638161 m!5496637))

(declare-fun m!5496639 () Bool)

(assert (=> bm!323763 m!5496639))

(declare-fun m!5496641 () Bool)

(assert (=> bm!323761 m!5496641))

(declare-fun m!5496643 () Bool)

(assert (=> b!4638165 m!5496643))

(assert (=> b!4638164 m!5496643))

(declare-fun m!5496645 () Bool)

(assert (=> b!4638164 m!5496645))

(declare-fun m!5496647 () Bool)

(assert (=> b!4638164 m!5496647))

(assert (=> b!4638164 m!5496643))

(declare-fun m!5496649 () Bool)

(assert (=> b!4638164 m!5496649))

(declare-fun m!5496651 () Bool)

(assert (=> b!4638164 m!5496651))

(declare-fun m!5496653 () Bool)

(assert (=> b!4638164 m!5496653))

(declare-fun m!5496655 () Bool)

(assert (=> b!4638164 m!5496655))

(assert (=> b!4638164 m!5496651))

(assert (=> b!4638164 m!5496645))

(declare-fun m!5496657 () Bool)

(assert (=> b!4638164 m!5496657))

(declare-fun m!5496659 () Bool)

(assert (=> b!4638164 m!5496659))

(declare-fun m!5496661 () Bool)

(assert (=> b!4638164 m!5496661))

(assert (=> bm!323762 m!5496371))

(declare-fun m!5496663 () Bool)

(assert (=> b!4638162 m!5496663))

(assert (=> b!4637928 d!1462476))

(declare-fun d!1462478 () Bool)

(assert (=> d!1462478 (eq!869 (addToMapMapFromBucket!1027 (Cons!51704 lt!1800534 lt!1800532) (ListMap!4406 Nil!51704)) (+!1922 (addToMapMapFromBucket!1027 lt!1800532 (ListMap!4406 Nil!51704)) lt!1800534))))

(declare-fun lt!1800907 () Unit!114771)

(declare-fun choose!31724 (tuple2!52718 List!51828 ListMap!4405) Unit!114771)

(assert (=> d!1462478 (= lt!1800907 (choose!31724 lt!1800534 lt!1800532 (ListMap!4406 Nil!51704)))))

(assert (=> d!1462478 (noDuplicateKeys!1568 lt!1800532)))

(assert (=> d!1462478 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!120 lt!1800534 lt!1800532 (ListMap!4406 Nil!51704)) lt!1800907)))

(declare-fun bs!1032346 () Bool)

(assert (= bs!1032346 d!1462478))

(assert (=> bs!1032346 m!5496163))

(assert (=> bs!1032346 m!5496381))

(assert (=> bs!1032346 m!5496163))

(declare-fun m!5496665 () Bool)

(assert (=> bs!1032346 m!5496665))

(declare-fun m!5496667 () Bool)

(assert (=> bs!1032346 m!5496667))

(declare-fun m!5496669 () Bool)

(assert (=> bs!1032346 m!5496669))

(assert (=> bs!1032346 m!5496197))

(assert (=> bs!1032346 m!5496665))

(assert (=> bs!1032346 m!5496197))

(assert (=> b!4637928 d!1462478))

(declare-fun d!1462480 () Bool)

(declare-fun e!2893350 () Bool)

(assert (=> d!1462480 e!2893350))

(declare-fun res!1947327 () Bool)

(assert (=> d!1462480 (=> (not res!1947327) (not e!2893350))))

(declare-fun lt!1800910 () ListMap!4405)

(assert (=> d!1462480 (= res!1947327 (contains!14819 lt!1800910 (_1!29653 (h!57800 oldBucket!40))))))

(declare-fun lt!1800908 () List!51828)

(assert (=> d!1462480 (= lt!1800910 (ListMap!4406 lt!1800908))))

(declare-fun lt!1800909 () Unit!114771)

(declare-fun lt!1800911 () Unit!114771)

(assert (=> d!1462480 (= lt!1800909 lt!1800911)))

(assert (=> d!1462480 (= (getValueByKey!1538 lt!1800908 (_1!29653 (h!57800 oldBucket!40))) (Some!11721 (_2!29653 (h!57800 oldBucket!40))))))

(assert (=> d!1462480 (= lt!1800911 (lemmaContainsTupThenGetReturnValue!891 lt!1800908 (_1!29653 (h!57800 oldBucket!40)) (_2!29653 (h!57800 oldBucket!40))))))

(assert (=> d!1462480 (= lt!1800908 (insertNoDuplicatedKeys!399 (toList!5084 lt!1800531) (_1!29653 (h!57800 oldBucket!40)) (_2!29653 (h!57800 oldBucket!40))))))

(assert (=> d!1462480 (= (+!1922 lt!1800531 (h!57800 oldBucket!40)) lt!1800910)))

(declare-fun b!4638166 () Bool)

(declare-fun res!1947326 () Bool)

(assert (=> b!4638166 (=> (not res!1947326) (not e!2893350))))

(assert (=> b!4638166 (= res!1947326 (= (getValueByKey!1538 (toList!5084 lt!1800910) (_1!29653 (h!57800 oldBucket!40))) (Some!11721 (_2!29653 (h!57800 oldBucket!40)))))))

(declare-fun b!4638167 () Bool)

(assert (=> b!4638167 (= e!2893350 (contains!14822 (toList!5084 lt!1800910) (h!57800 oldBucket!40)))))

(assert (= (and d!1462480 res!1947327) b!4638166))

(assert (= (and b!4638166 res!1947326) b!4638167))

(declare-fun m!5496671 () Bool)

(assert (=> d!1462480 m!5496671))

(declare-fun m!5496673 () Bool)

(assert (=> d!1462480 m!5496673))

(declare-fun m!5496675 () Bool)

(assert (=> d!1462480 m!5496675))

(declare-fun m!5496677 () Bool)

(assert (=> d!1462480 m!5496677))

(declare-fun m!5496679 () Bool)

(assert (=> b!4638166 m!5496679))

(declare-fun m!5496681 () Bool)

(assert (=> b!4638167 m!5496681))

(assert (=> b!4637928 d!1462480))

(declare-fun d!1462482 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8923 (List!51828) (InoxSet tuple2!52718))

(assert (=> d!1462482 (= (eq!869 (+!1922 lt!1800531 (h!57800 oldBucket!40)) (addToMapMapFromBucket!1027 oldBucket!40 (ListMap!4406 Nil!51704))) (= (content!8923 (toList!5084 (+!1922 lt!1800531 (h!57800 oldBucket!40)))) (content!8923 (toList!5084 (addToMapMapFromBucket!1027 oldBucket!40 (ListMap!4406 Nil!51704))))))))

(declare-fun bs!1032347 () Bool)

(assert (= bs!1032347 d!1462482))

(declare-fun m!5496683 () Bool)

(assert (=> bs!1032347 m!5496683))

(declare-fun m!5496685 () Bool)

(assert (=> bs!1032347 m!5496685))

(assert (=> b!4637928 d!1462482))

(declare-fun d!1462484 () Bool)

(assert (=> d!1462484 (= (eq!869 (addToMapMapFromBucket!1027 (Cons!51704 lt!1800534 lt!1800532) (ListMap!4406 Nil!51704)) (+!1922 lt!1800531 lt!1800534)) (= (content!8923 (toList!5084 (addToMapMapFromBucket!1027 (Cons!51704 lt!1800534 lt!1800532) (ListMap!4406 Nil!51704)))) (content!8923 (toList!5084 (+!1922 lt!1800531 lt!1800534)))))))

(declare-fun bs!1032348 () Bool)

(assert (= bs!1032348 d!1462484))

(declare-fun m!5496687 () Bool)

(assert (=> bs!1032348 m!5496687))

(declare-fun m!5496689 () Bool)

(assert (=> bs!1032348 m!5496689))

(assert (=> b!4637928 d!1462484))

(declare-fun bs!1032349 () Bool)

(declare-fun b!4638170 () Bool)

(assert (= bs!1032349 (and b!4638170 b!4638021)))

(declare-fun lambda!195567 () Int)

(assert (=> bs!1032349 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195533))))

(declare-fun bs!1032350 () Bool)

(assert (= bs!1032350 (and b!4638170 b!4638039)))

(assert (=> bs!1032350 (= (= lt!1800533 lt!1800745) (= lambda!195567 lambda!195539))))

(declare-fun bs!1032351 () Bool)

(assert (= bs!1032351 (and b!4638170 d!1462430)))

(assert (=> bs!1032351 (not (= lambda!195567 lambda!195543))))

(declare-fun bs!1032352 () Bool)

(assert (= bs!1032352 (and b!4638170 b!4638020)))

(assert (=> bs!1032352 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195532))))

(declare-fun bs!1032353 () Bool)

(assert (= bs!1032353 (and b!4638170 b!4638038)))

(assert (=> bs!1032353 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195537))))

(assert (=> bs!1032350 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195538))))

(declare-fun bs!1032354 () Bool)

(assert (= bs!1032354 (and b!4638170 b!4638158)))

(assert (=> bs!1032354 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195559))))

(assert (=> bs!1032349 (= (= lt!1800533 lt!1800715) (= lambda!195567 lambda!195534))))

(declare-fun bs!1032355 () Bool)

(assert (= bs!1032355 (and b!4638170 b!4638163)))

(assert (=> bs!1032355 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195563))))

(declare-fun bs!1032356 () Bool)

(assert (= bs!1032356 (and b!4638170 b!4638164)))

(assert (=> bs!1032356 (= (= lt!1800533 lt!1800897) (= lambda!195567 lambda!195565))))

(declare-fun bs!1032357 () Bool)

(assert (= bs!1032357 (and b!4638170 d!1462476)))

(assert (=> bs!1032357 (= (= lt!1800533 lt!1800902) (= lambda!195567 lambda!195566))))

(declare-fun bs!1032358 () Bool)

(assert (= bs!1032358 (and b!4638170 d!1462474)))

(assert (=> bs!1032358 (= (= lt!1800533 lt!1800881) (= lambda!195567 lambda!195562))))

(declare-fun bs!1032359 () Bool)

(assert (= bs!1032359 (and b!4638170 d!1462424)))

(assert (=> bs!1032359 (= (= lt!1800533 lt!1800750) (= lambda!195567 lambda!195540))))

(declare-fun bs!1032360 () Bool)

(assert (= bs!1032360 (and b!4638170 b!4638159)))

(assert (=> bs!1032360 (= (= lt!1800533 lt!1800876) (= lambda!195567 lambda!195561))))

(assert (=> bs!1032360 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195560))))

(declare-fun bs!1032361 () Bool)

(assert (= bs!1032361 (and b!4638170 d!1462400)))

(assert (=> bs!1032361 (= (= lt!1800533 lt!1800720) (= lambda!195567 lambda!195535))))

(assert (=> bs!1032356 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195567 lambda!195564))))

(assert (=> b!4638170 true))

(declare-fun bs!1032362 () Bool)

(declare-fun b!4638171 () Bool)

(assert (= bs!1032362 (and b!4638171 b!4638021)))

(declare-fun lambda!195568 () Int)

(assert (=> bs!1032362 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195533))))

(declare-fun bs!1032363 () Bool)

(assert (= bs!1032363 (and b!4638171 b!4638039)))

(assert (=> bs!1032363 (= (= lt!1800533 lt!1800745) (= lambda!195568 lambda!195539))))

(declare-fun bs!1032364 () Bool)

(assert (= bs!1032364 (and b!4638171 d!1462430)))

(assert (=> bs!1032364 (not (= lambda!195568 lambda!195543))))

(declare-fun bs!1032365 () Bool)

(assert (= bs!1032365 (and b!4638171 b!4638020)))

(assert (=> bs!1032365 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195532))))

(declare-fun bs!1032366 () Bool)

(assert (= bs!1032366 (and b!4638171 b!4638038)))

(assert (=> bs!1032366 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195537))))

(declare-fun bs!1032367 () Bool)

(assert (= bs!1032367 (and b!4638171 b!4638158)))

(assert (=> bs!1032367 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195559))))

(assert (=> bs!1032362 (= (= lt!1800533 lt!1800715) (= lambda!195568 lambda!195534))))

(declare-fun bs!1032368 () Bool)

(assert (= bs!1032368 (and b!4638171 b!4638163)))

(assert (=> bs!1032368 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195563))))

(declare-fun bs!1032369 () Bool)

(assert (= bs!1032369 (and b!4638171 b!4638164)))

(assert (=> bs!1032369 (= (= lt!1800533 lt!1800897) (= lambda!195568 lambda!195565))))

(declare-fun bs!1032370 () Bool)

(assert (= bs!1032370 (and b!4638171 d!1462476)))

(assert (=> bs!1032370 (= (= lt!1800533 lt!1800902) (= lambda!195568 lambda!195566))))

(declare-fun bs!1032371 () Bool)

(assert (= bs!1032371 (and b!4638171 d!1462474)))

(assert (=> bs!1032371 (= (= lt!1800533 lt!1800881) (= lambda!195568 lambda!195562))))

(declare-fun bs!1032372 () Bool)

(assert (= bs!1032372 (and b!4638171 d!1462424)))

(assert (=> bs!1032372 (= (= lt!1800533 lt!1800750) (= lambda!195568 lambda!195540))))

(declare-fun bs!1032373 () Bool)

(assert (= bs!1032373 (and b!4638171 b!4638170)))

(assert (=> bs!1032373 (= lambda!195568 lambda!195567)))

(assert (=> bs!1032363 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195538))))

(declare-fun bs!1032374 () Bool)

(assert (= bs!1032374 (and b!4638171 b!4638159)))

(assert (=> bs!1032374 (= (= lt!1800533 lt!1800876) (= lambda!195568 lambda!195561))))

(assert (=> bs!1032374 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195560))))

(declare-fun bs!1032375 () Bool)

(assert (= bs!1032375 (and b!4638171 d!1462400)))

(assert (=> bs!1032375 (= (= lt!1800533 lt!1800720) (= lambda!195568 lambda!195535))))

(assert (=> bs!1032369 (= (= lt!1800533 (ListMap!4406 Nil!51704)) (= lambda!195568 lambda!195564))))

(assert (=> b!4638171 true))

(declare-fun lambda!195569 () Int)

(declare-fun lt!1800925 () ListMap!4405)

(assert (=> bs!1032363 (= (= lt!1800925 lt!1800745) (= lambda!195569 lambda!195539))))

(assert (=> bs!1032364 (not (= lambda!195569 lambda!195543))))

(assert (=> bs!1032365 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195532))))

(assert (=> bs!1032366 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195537))))

(assert (=> bs!1032367 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195559))))

(assert (=> bs!1032362 (= (= lt!1800925 lt!1800715) (= lambda!195569 lambda!195534))))

(assert (=> bs!1032368 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195563))))

(assert (=> bs!1032369 (= (= lt!1800925 lt!1800897) (= lambda!195569 lambda!195565))))

(assert (=> bs!1032370 (= (= lt!1800925 lt!1800902) (= lambda!195569 lambda!195566))))

(assert (=> bs!1032371 (= (= lt!1800925 lt!1800881) (= lambda!195569 lambda!195562))))

(assert (=> bs!1032372 (= (= lt!1800925 lt!1800750) (= lambda!195569 lambda!195540))))

(assert (=> bs!1032362 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195533))))

(assert (=> b!4638171 (= (= lt!1800925 lt!1800533) (= lambda!195569 lambda!195568))))

(assert (=> bs!1032373 (= (= lt!1800925 lt!1800533) (= lambda!195569 lambda!195567))))

(assert (=> bs!1032363 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195538))))

(assert (=> bs!1032374 (= (= lt!1800925 lt!1800876) (= lambda!195569 lambda!195561))))

(assert (=> bs!1032374 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195560))))

(assert (=> bs!1032375 (= (= lt!1800925 lt!1800720) (= lambda!195569 lambda!195535))))

(assert (=> bs!1032369 (= (= lt!1800925 (ListMap!4406 Nil!51704)) (= lambda!195569 lambda!195564))))

(assert (=> b!4638171 true))

(declare-fun bs!1032376 () Bool)

(declare-fun d!1462486 () Bool)

(assert (= bs!1032376 (and d!1462486 b!4638171)))

(declare-fun lt!1800930 () ListMap!4405)

(declare-fun lambda!195570 () Int)

(assert (=> bs!1032376 (= (= lt!1800930 lt!1800925) (= lambda!195570 lambda!195569))))

(declare-fun bs!1032377 () Bool)

(assert (= bs!1032377 (and d!1462486 b!4638039)))

(assert (=> bs!1032377 (= (= lt!1800930 lt!1800745) (= lambda!195570 lambda!195539))))

(declare-fun bs!1032378 () Bool)

(assert (= bs!1032378 (and d!1462486 d!1462430)))

(assert (=> bs!1032378 (not (= lambda!195570 lambda!195543))))

(declare-fun bs!1032379 () Bool)

(assert (= bs!1032379 (and d!1462486 b!4638020)))

(assert (=> bs!1032379 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195532))))

(declare-fun bs!1032380 () Bool)

(assert (= bs!1032380 (and d!1462486 b!4638038)))

(assert (=> bs!1032380 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195537))))

(declare-fun bs!1032381 () Bool)

(assert (= bs!1032381 (and d!1462486 b!4638158)))

(assert (=> bs!1032381 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195559))))

(declare-fun bs!1032382 () Bool)

(assert (= bs!1032382 (and d!1462486 b!4638021)))

(assert (=> bs!1032382 (= (= lt!1800930 lt!1800715) (= lambda!195570 lambda!195534))))

(declare-fun bs!1032383 () Bool)

(assert (= bs!1032383 (and d!1462486 b!4638163)))

(assert (=> bs!1032383 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195563))))

(declare-fun bs!1032384 () Bool)

(assert (= bs!1032384 (and d!1462486 b!4638164)))

(assert (=> bs!1032384 (= (= lt!1800930 lt!1800897) (= lambda!195570 lambda!195565))))

(declare-fun bs!1032385 () Bool)

(assert (= bs!1032385 (and d!1462486 d!1462476)))

(assert (=> bs!1032385 (= (= lt!1800930 lt!1800902) (= lambda!195570 lambda!195566))))

(declare-fun bs!1032386 () Bool)

(assert (= bs!1032386 (and d!1462486 d!1462474)))

(assert (=> bs!1032386 (= (= lt!1800930 lt!1800881) (= lambda!195570 lambda!195562))))

(declare-fun bs!1032387 () Bool)

(assert (= bs!1032387 (and d!1462486 d!1462424)))

(assert (=> bs!1032387 (= (= lt!1800930 lt!1800750) (= lambda!195570 lambda!195540))))

(assert (=> bs!1032382 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195533))))

(assert (=> bs!1032376 (= (= lt!1800930 lt!1800533) (= lambda!195570 lambda!195568))))

(declare-fun bs!1032388 () Bool)

(assert (= bs!1032388 (and d!1462486 b!4638170)))

(assert (=> bs!1032388 (= (= lt!1800930 lt!1800533) (= lambda!195570 lambda!195567))))

(assert (=> bs!1032377 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195538))))

(declare-fun bs!1032389 () Bool)

(assert (= bs!1032389 (and d!1462486 b!4638159)))

(assert (=> bs!1032389 (= (= lt!1800930 lt!1800876) (= lambda!195570 lambda!195561))))

(assert (=> bs!1032389 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195560))))

(declare-fun bs!1032390 () Bool)

(assert (= bs!1032390 (and d!1462486 d!1462400)))

(assert (=> bs!1032390 (= (= lt!1800930 lt!1800720) (= lambda!195570 lambda!195535))))

(assert (=> bs!1032384 (= (= lt!1800930 (ListMap!4406 Nil!51704)) (= lambda!195570 lambda!195564))))

(assert (=> d!1462486 true))

(declare-fun call!323771 () Bool)

(declare-fun c!793789 () Bool)

(declare-fun bm!323764 () Bool)

(assert (=> bm!323764 (= call!323771 (forall!10918 (ite c!793789 (toList!5084 lt!1800533) oldBucket!40) (ite c!793789 lambda!195567 lambda!195569)))))

(declare-fun e!2893352 () Bool)

(assert (=> d!1462486 e!2893352))

(declare-fun res!1947330 () Bool)

(assert (=> d!1462486 (=> (not res!1947330) (not e!2893352))))

(assert (=> d!1462486 (= res!1947330 (forall!10918 oldBucket!40 lambda!195570))))

(declare-fun e!2893353 () ListMap!4405)

(assert (=> d!1462486 (= lt!1800930 e!2893353)))

(assert (=> d!1462486 (= c!793789 ((_ is Nil!51704) oldBucket!40))))

(assert (=> d!1462486 (noDuplicateKeys!1568 oldBucket!40)))

(assert (=> d!1462486 (= (addToMapMapFromBucket!1027 oldBucket!40 lt!1800533) lt!1800930)))

(declare-fun bm!323765 () Bool)

(declare-fun call!323770 () Unit!114771)

(assert (=> bm!323765 (= call!323770 (lemmaContainsAllItsOwnKeys!552 lt!1800533))))

(declare-fun b!4638168 () Bool)

(declare-fun res!1947328 () Bool)

(assert (=> b!4638168 (=> (not res!1947328) (not e!2893352))))

(assert (=> b!4638168 (= res!1947328 (forall!10918 (toList!5084 lt!1800533) lambda!195570))))

(declare-fun b!4638169 () Bool)

(assert (=> b!4638169 (= e!2893352 (invariantList!1250 (toList!5084 lt!1800930)))))

(declare-fun call!323769 () Bool)

(declare-fun bm!323766 () Bool)

(assert (=> bm!323766 (= call!323769 (forall!10918 (toList!5084 lt!1800533) (ite c!793789 lambda!195567 lambda!195568)))))

(assert (=> b!4638170 (= e!2893353 lt!1800533)))

(declare-fun lt!1800924 () Unit!114771)

(assert (=> b!4638170 (= lt!1800924 call!323770)))

(assert (=> b!4638170 call!323771))

(declare-fun lt!1800931 () Unit!114771)

(assert (=> b!4638170 (= lt!1800931 lt!1800924)))

(assert (=> b!4638170 call!323769))

(declare-fun lt!1800915 () Unit!114771)

(declare-fun Unit!114876 () Unit!114771)

(assert (=> b!4638170 (= lt!1800915 Unit!114876)))

(assert (=> b!4638171 (= e!2893353 lt!1800925)))

(declare-fun lt!1800926 () ListMap!4405)

(assert (=> b!4638171 (= lt!1800926 (+!1922 lt!1800533 (h!57800 oldBucket!40)))))

(assert (=> b!4638171 (= lt!1800925 (addToMapMapFromBucket!1027 (t!358904 oldBucket!40) (+!1922 lt!1800533 (h!57800 oldBucket!40))))))

(declare-fun lt!1800923 () Unit!114771)

(assert (=> b!4638171 (= lt!1800923 call!323770)))

(assert (=> b!4638171 call!323769))

(declare-fun lt!1800914 () Unit!114771)

(assert (=> b!4638171 (= lt!1800914 lt!1800923)))

(assert (=> b!4638171 (forall!10918 (toList!5084 lt!1800926) lambda!195569)))

(declare-fun lt!1800912 () Unit!114771)

(declare-fun Unit!114877 () Unit!114771)

(assert (=> b!4638171 (= lt!1800912 Unit!114877)))

(assert (=> b!4638171 (forall!10918 (t!358904 oldBucket!40) lambda!195569)))

(declare-fun lt!1800920 () Unit!114771)

(declare-fun Unit!114878 () Unit!114771)

(assert (=> b!4638171 (= lt!1800920 Unit!114878)))

(declare-fun lt!1800913 () Unit!114771)

(declare-fun Unit!114879 () Unit!114771)

(assert (=> b!4638171 (= lt!1800913 Unit!114879)))

(declare-fun lt!1800922 () Unit!114771)

(assert (=> b!4638171 (= lt!1800922 (forallContained!3142 (toList!5084 lt!1800926) lambda!195569 (h!57800 oldBucket!40)))))

(assert (=> b!4638171 (contains!14819 lt!1800926 (_1!29653 (h!57800 oldBucket!40)))))

(declare-fun lt!1800917 () Unit!114771)

(declare-fun Unit!114880 () Unit!114771)

(assert (=> b!4638171 (= lt!1800917 Unit!114880)))

(assert (=> b!4638171 (contains!14819 lt!1800925 (_1!29653 (h!57800 oldBucket!40)))))

(declare-fun lt!1800928 () Unit!114771)

(declare-fun Unit!114881 () Unit!114771)

(assert (=> b!4638171 (= lt!1800928 Unit!114881)))

(assert (=> b!4638171 (forall!10918 oldBucket!40 lambda!195569)))

(declare-fun lt!1800921 () Unit!114771)

(declare-fun Unit!114882 () Unit!114771)

(assert (=> b!4638171 (= lt!1800921 Unit!114882)))

(assert (=> b!4638171 (forall!10918 (toList!5084 lt!1800926) lambda!195569)))

(declare-fun lt!1800919 () Unit!114771)

(declare-fun Unit!114883 () Unit!114771)

(assert (=> b!4638171 (= lt!1800919 Unit!114883)))

(declare-fun lt!1800918 () Unit!114771)

(declare-fun Unit!114884 () Unit!114771)

(assert (=> b!4638171 (= lt!1800918 Unit!114884)))

(declare-fun lt!1800932 () Unit!114771)

(assert (=> b!4638171 (= lt!1800932 (addForallContainsKeyThenBeforeAdding!551 lt!1800533 lt!1800925 (_1!29653 (h!57800 oldBucket!40)) (_2!29653 (h!57800 oldBucket!40))))))

(assert (=> b!4638171 (forall!10918 (toList!5084 lt!1800533) lambda!195569)))

(declare-fun lt!1800927 () Unit!114771)

(assert (=> b!4638171 (= lt!1800927 lt!1800932)))

(assert (=> b!4638171 (forall!10918 (toList!5084 lt!1800533) lambda!195569)))

(declare-fun lt!1800916 () Unit!114771)

(declare-fun Unit!114885 () Unit!114771)

(assert (=> b!4638171 (= lt!1800916 Unit!114885)))

(declare-fun res!1947329 () Bool)

(assert (=> b!4638171 (= res!1947329 call!323771)))

(declare-fun e!2893351 () Bool)

(assert (=> b!4638171 (=> (not res!1947329) (not e!2893351))))

(assert (=> b!4638171 e!2893351))

(declare-fun lt!1800929 () Unit!114771)

(declare-fun Unit!114886 () Unit!114771)

(assert (=> b!4638171 (= lt!1800929 Unit!114886)))

(declare-fun b!4638172 () Bool)

(assert (=> b!4638172 (= e!2893351 (forall!10918 (toList!5084 lt!1800533) lambda!195569))))

(assert (= (and d!1462486 c!793789) b!4638170))

(assert (= (and d!1462486 (not c!793789)) b!4638171))

(assert (= (and b!4638171 res!1947329) b!4638172))

(assert (= (or b!4638170 b!4638171) bm!323765))

(assert (= (or b!4638170 b!4638171) bm!323764))

(assert (= (or b!4638170 b!4638171) bm!323766))

(assert (= (and d!1462486 res!1947330) b!4638168))

(assert (= (and b!4638168 res!1947328) b!4638169))

(declare-fun m!5496691 () Bool)

(assert (=> d!1462486 m!5496691))

(assert (=> d!1462486 m!5496169))

(declare-fun m!5496693 () Bool)

(assert (=> b!4638168 m!5496693))

(declare-fun m!5496695 () Bool)

(assert (=> bm!323766 m!5496695))

(declare-fun m!5496697 () Bool)

(assert (=> bm!323764 m!5496697))

(declare-fun m!5496699 () Bool)

(assert (=> b!4638172 m!5496699))

(assert (=> b!4638171 m!5496699))

(declare-fun m!5496701 () Bool)

(assert (=> b!4638171 m!5496701))

(declare-fun m!5496703 () Bool)

(assert (=> b!4638171 m!5496703))

(assert (=> b!4638171 m!5496699))

(declare-fun m!5496705 () Bool)

(assert (=> b!4638171 m!5496705))

(declare-fun m!5496707 () Bool)

(assert (=> b!4638171 m!5496707))

(declare-fun m!5496709 () Bool)

(assert (=> b!4638171 m!5496709))

(declare-fun m!5496711 () Bool)

(assert (=> b!4638171 m!5496711))

(assert (=> b!4638171 m!5496707))

(assert (=> b!4638171 m!5496701))

(declare-fun m!5496713 () Bool)

(assert (=> b!4638171 m!5496713))

(declare-fun m!5496715 () Bool)

(assert (=> b!4638171 m!5496715))

(declare-fun m!5496717 () Bool)

(assert (=> b!4638171 m!5496717))

(declare-fun m!5496719 () Bool)

(assert (=> bm!323765 m!5496719))

(declare-fun m!5496721 () Bool)

(assert (=> b!4638169 m!5496721))

(assert (=> b!4637926 d!1462486))

(declare-fun bs!1032391 () Bool)

(declare-fun d!1462488 () Bool)

(assert (= bs!1032391 (and d!1462488 d!1462450)))

(declare-fun lambda!195571 () Int)

(assert (=> bs!1032391 (= lambda!195571 lambda!195556)))

(declare-fun bs!1032392 () Bool)

(assert (= bs!1032392 (and d!1462488 d!1462464)))

(assert (=> bs!1032392 (= lambda!195571 lambda!195557)))

(declare-fun bs!1032393 () Bool)

(assert (= bs!1032393 (and d!1462488 d!1462466)))

(assert (=> bs!1032393 (= lambda!195571 lambda!195558)))

(declare-fun lt!1800933 () ListMap!4405)

(assert (=> d!1462488 (invariantList!1250 (toList!5084 lt!1800933))))

(declare-fun e!2893354 () ListMap!4405)

(assert (=> d!1462488 (= lt!1800933 e!2893354)))

(declare-fun c!793790 () Bool)

(assert (=> d!1462488 (= c!793790 ((_ is Cons!51705) Nil!51705))))

(assert (=> d!1462488 (forall!10920 Nil!51705 lambda!195571)))

(assert (=> d!1462488 (= (extractMap!1624 Nil!51705) lt!1800933)))

(declare-fun b!4638173 () Bool)

(assert (=> b!4638173 (= e!2893354 (addToMapMapFromBucket!1027 (_2!29654 (h!57801 Nil!51705)) (extractMap!1624 (t!358905 Nil!51705))))))

(declare-fun b!4638174 () Bool)

(assert (=> b!4638174 (= e!2893354 (ListMap!4406 Nil!51704))))

(assert (= (and d!1462488 c!793790) b!4638173))

(assert (= (and d!1462488 (not c!793790)) b!4638174))

(declare-fun m!5496723 () Bool)

(assert (=> d!1462488 m!5496723))

(declare-fun m!5496725 () Bool)

(assert (=> d!1462488 m!5496725))

(declare-fun m!5496727 () Bool)

(assert (=> b!4638173 m!5496727))

(assert (=> b!4638173 m!5496727))

(declare-fun m!5496729 () Bool)

(assert (=> b!4638173 m!5496729))

(assert (=> b!4637926 d!1462488))

(declare-fun d!1462490 () Bool)

(declare-fun hash!3650 (Hashable!5965 K!13070) (_ BitVec 64))

(assert (=> d!1462490 (= (hash!3648 hashF!1389 key!4968) (hash!3650 hashF!1389 key!4968))))

(declare-fun bs!1032394 () Bool)

(assert (= bs!1032394 d!1462490))

(declare-fun m!5496731 () Bool)

(assert (=> bs!1032394 m!5496731))

(assert (=> b!4637937 d!1462490))

(declare-fun bs!1032395 () Bool)

(declare-fun d!1462492 () Bool)

(assert (= bs!1032395 (and d!1462492 b!4638171)))

(declare-fun lambda!195572 () Int)

(assert (=> bs!1032395 (not (= lambda!195572 lambda!195569))))

(declare-fun bs!1032396 () Bool)

(assert (= bs!1032396 (and d!1462492 b!4638039)))

(assert (=> bs!1032396 (not (= lambda!195572 lambda!195539))))

(declare-fun bs!1032397 () Bool)

(assert (= bs!1032397 (and d!1462492 d!1462430)))

(assert (=> bs!1032397 (= lambda!195572 lambda!195543)))

(declare-fun bs!1032398 () Bool)

(assert (= bs!1032398 (and d!1462492 b!4638020)))

(assert (=> bs!1032398 (not (= lambda!195572 lambda!195532))))

(declare-fun bs!1032399 () Bool)

(assert (= bs!1032399 (and d!1462492 b!4638038)))

(assert (=> bs!1032399 (not (= lambda!195572 lambda!195537))))

(declare-fun bs!1032400 () Bool)

(assert (= bs!1032400 (and d!1462492 b!4638158)))

(assert (=> bs!1032400 (not (= lambda!195572 lambda!195559))))

(declare-fun bs!1032401 () Bool)

(assert (= bs!1032401 (and d!1462492 b!4638021)))

(assert (=> bs!1032401 (not (= lambda!195572 lambda!195534))))

(declare-fun bs!1032402 () Bool)

(assert (= bs!1032402 (and d!1462492 b!4638163)))

(assert (=> bs!1032402 (not (= lambda!195572 lambda!195563))))

(declare-fun bs!1032403 () Bool)

(assert (= bs!1032403 (and d!1462492 b!4638164)))

(assert (=> bs!1032403 (not (= lambda!195572 lambda!195565))))

(declare-fun bs!1032404 () Bool)

(assert (= bs!1032404 (and d!1462492 d!1462476)))

(assert (=> bs!1032404 (not (= lambda!195572 lambda!195566))))

(declare-fun bs!1032405 () Bool)

(assert (= bs!1032405 (and d!1462492 d!1462486)))

(assert (=> bs!1032405 (not (= lambda!195572 lambda!195570))))

(declare-fun bs!1032406 () Bool)

(assert (= bs!1032406 (and d!1462492 d!1462474)))

(assert (=> bs!1032406 (not (= lambda!195572 lambda!195562))))

(declare-fun bs!1032407 () Bool)

(assert (= bs!1032407 (and d!1462492 d!1462424)))

(assert (=> bs!1032407 (not (= lambda!195572 lambda!195540))))

(assert (=> bs!1032401 (not (= lambda!195572 lambda!195533))))

(assert (=> bs!1032395 (not (= lambda!195572 lambda!195568))))

(declare-fun bs!1032408 () Bool)

(assert (= bs!1032408 (and d!1462492 b!4638170)))

(assert (=> bs!1032408 (not (= lambda!195572 lambda!195567))))

(assert (=> bs!1032396 (not (= lambda!195572 lambda!195538))))

(declare-fun bs!1032409 () Bool)

(assert (= bs!1032409 (and d!1462492 b!4638159)))

(assert (=> bs!1032409 (not (= lambda!195572 lambda!195561))))

(assert (=> bs!1032409 (not (= lambda!195572 lambda!195560))))

(declare-fun bs!1032410 () Bool)

(assert (= bs!1032410 (and d!1462492 d!1462400)))

(assert (=> bs!1032410 (not (= lambda!195572 lambda!195535))))

(assert (=> bs!1032403 (not (= lambda!195572 lambda!195564))))

(assert (=> d!1462492 true))

(assert (=> d!1462492 true))

(assert (=> d!1462492 (= (allKeysSameHash!1422 newBucket!224 hash!414 hashF!1389) (forall!10918 newBucket!224 lambda!195572))))

(declare-fun bs!1032411 () Bool)

(assert (= bs!1032411 d!1462492))

(declare-fun m!5496733 () Bool)

(assert (=> bs!1032411 m!5496733))

(assert (=> b!4637927 d!1462492))

(declare-fun e!2893357 () Bool)

(declare-fun tp!1342670 () Bool)

(declare-fun b!4638179 () Bool)

(assert (=> b!4638179 (= e!2893357 (and tp_is_empty!29565 tp_is_empty!29567 tp!1342670))))

(assert (=> b!4637938 (= tp!1342662 e!2893357)))

(assert (= (and b!4637938 ((_ is Cons!51704) (t!358904 newBucket!224))) b!4638179))

(declare-fun tp!1342671 () Bool)

(declare-fun b!4638180 () Bool)

(declare-fun e!2893358 () Bool)

(assert (=> b!4638180 (= e!2893358 (and tp_is_empty!29565 tp_is_empty!29567 tp!1342671))))

(assert (=> b!4637939 (= tp!1342663 e!2893358)))

(assert (= (and b!4637939 ((_ is Cons!51704) (t!358904 oldBucket!40))) b!4638180))

(check-sat (not d!1462474) (not b!4638165) (not d!1462482) (not d!1462466) (not b!4638172) (not d!1462488) (not b!4638078) (not b!4638039) (not b!4638168) (not b!4638108) (not d!1462428) (not b!4638156) (not bm!323762) (not d!1462424) (not b!4638080) (not d!1462464) (not bm!323764) (not b!4638110) (not bm!323743) (not b!4638173) (not d!1462470) (not b!4638022) (not b!4638021) (not d!1462484) (not b!4638167) (not b!4638111) (not b!4638157) tp_is_empty!29567 (not d!1462400) (not b!4638169) (not b!4638160) (not b!4638145) (not bm!323763) (not b!4638036) (not b!4638018) (not d!1462430) (not b!4638179) (not b!4638132) (not bm!323754) (not b!4638166) (not b!4638154) (not b!4638112) (not d!1462450) (not bm!323744) (not b!4638180) (not d!1462438) (not bm!323748) (not b!4638037) (not b!4638159) (not b!4638171) (not b!4638161) tp_is_empty!29565 (not b!4638019) (not b!4638146) (not bm!323746) (not b!4638148) (not b!4638063) (not d!1462480) (not bm!323765) (not bm!323758) (not b!4638081) (not bm!323747) (not bm!323761) (not b!4638164) (not b!4638162) (not b!4638155) (not d!1462478) (not bm!323759) (not bm!323742) (not b!4638114) (not b!4638040) (not d!1462486) (not b!4638109) (not d!1462492) (not b!4638116) (not bm!323766) (not b!4638079) (not bm!323760) (not d!1462476) (not d!1462490))
(check-sat)
