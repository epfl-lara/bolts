; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453116 () Bool)

(assert start!453116)

(declare-fun b!4559418 () Bool)

(declare-fun res!1902408 () Bool)

(declare-fun e!2842094 () Bool)

(assert (=> b!4559418 (=> (not res!1902408) (not e!2842094))))

(declare-datatypes ((Hashable!5633 0))(
  ( (HashableExt!5632 (__x!31336 Int)) )
))
(declare-fun hashF!1107 () Hashable!5633)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12235 0))(
  ( (K!12236 (val!18059 Int)) )
))
(declare-datatypes ((V!12481 0))(
  ( (V!12482 (val!18060 Int)) )
))
(declare-datatypes ((tuple2!51386 0))(
  ( (tuple2!51387 (_1!28987 K!12235) (_2!28987 V!12481)) )
))
(declare-datatypes ((List!50979 0))(
  ( (Nil!50855) (Cons!50855 (h!56762 tuple2!51386) (t!357953 List!50979)) )
))
(declare-fun newBucket!178 () List!50979)

(declare-fun allKeysSameHash!1092 (List!50979 (_ BitVec 64) Hashable!5633) Bool)

(assert (=> b!4559418 (= res!1902408 (allKeysSameHash!1092 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4559419 () Bool)

(declare-fun res!1902411 () Bool)

(declare-fun e!2842096 () Bool)

(assert (=> b!4559419 (=> (not res!1902411) (not e!2842096))))

(declare-datatypes ((tuple2!51388 0))(
  ( (tuple2!51389 (_1!28988 (_ BitVec 64)) (_2!28988 List!50979)) )
))
(declare-datatypes ((List!50980 0))(
  ( (Nil!50856) (Cons!50856 (h!56763 tuple2!51388) (t!357954 List!50980)) )
))
(declare-datatypes ((ListLongMap!3115 0))(
  ( (ListLongMap!3116 (toList!4483 List!50980)) )
))
(declare-fun lm!1477 () ListLongMap!3115)

(declare-fun key!3287 () K!12235)

(declare-datatypes ((ListMap!3745 0))(
  ( (ListMap!3746 (toList!4484 List!50979)) )
))
(declare-fun contains!13704 (ListMap!3745 K!12235) Bool)

(declare-fun extractMap!1294 (List!50980) ListMap!3745)

(assert (=> b!4559419 (= res!1902411 (contains!13704 (extractMap!1294 (toList!4483 lm!1477)) key!3287))))

(declare-fun b!4559420 () Bool)

(declare-fun res!1902415 () Bool)

(assert (=> b!4559420 (=> (not res!1902415) (not e!2842096))))

(declare-fun allKeysSameHashInMap!1345 (ListLongMap!3115 Hashable!5633) Bool)

(assert (=> b!4559420 (= res!1902415 (allKeysSameHashInMap!1345 lm!1477 hashF!1107))))

(declare-fun b!4559421 () Bool)

(declare-fun res!1902412 () Bool)

(declare-fun e!2842097 () Bool)

(assert (=> b!4559421 (=> res!1902412 e!2842097)))

(get-info :version)

(assert (=> b!4559421 (= res!1902412 (or ((_ is Nil!50856) (toList!4483 lm!1477)) (= (_1!28988 (h!56763 (toList!4483 lm!1477))) hash!344)))))

(declare-fun b!4559422 () Bool)

(declare-fun contains!13705 (ListLongMap!3115 (_ BitVec 64)) Bool)

(declare-fun tail!7856 (ListLongMap!3115) ListLongMap!3115)

(assert (=> b!4559422 (= e!2842097 (contains!13705 (tail!7856 lm!1477) hash!344))))

(declare-fun b!4559423 () Bool)

(declare-fun tp!1339168 () Bool)

(declare-fun e!2842095 () Bool)

(declare-fun tp_is_empty!28229 () Bool)

(declare-fun tp_is_empty!28231 () Bool)

(assert (=> b!4559423 (= e!2842095 (and tp_is_empty!28229 tp_is_empty!28231 tp!1339168))))

(declare-fun b!4559424 () Bool)

(declare-fun res!1902413 () Bool)

(assert (=> b!4559424 (=> res!1902413 e!2842097)))

(declare-fun noDuplicateKeys!1238 (List!50979) Bool)

(assert (=> b!4559424 (= res!1902413 (not (noDuplicateKeys!1238 newBucket!178)))))

(declare-fun res!1902409 () Bool)

(assert (=> start!453116 (=> (not res!1902409) (not e!2842096))))

(declare-fun lambda!179705 () Int)

(declare-fun forall!10421 (List!50980 Int) Bool)

(assert (=> start!453116 (= res!1902409 (forall!10421 (toList!4483 lm!1477) lambda!179705))))

(assert (=> start!453116 e!2842096))

(assert (=> start!453116 true))

(declare-fun e!2842093 () Bool)

(declare-fun inv!66419 (ListLongMap!3115) Bool)

(assert (=> start!453116 (and (inv!66419 lm!1477) e!2842093)))

(assert (=> start!453116 tp_is_empty!28229))

(assert (=> start!453116 e!2842095))

(declare-fun b!4559425 () Bool)

(assert (=> b!4559425 (= e!2842094 (not e!2842097))))

(declare-fun res!1902414 () Bool)

(assert (=> b!4559425 (=> res!1902414 e!2842097)))

(declare-fun lt!1730775 () List!50979)

(declare-fun removePairForKey!865 (List!50979 K!12235) List!50979)

(assert (=> b!4559425 (= res!1902414 (not (= newBucket!178 (removePairForKey!865 lt!1730775 key!3287))))))

(declare-datatypes ((Unit!102402 0))(
  ( (Unit!102403) )
))
(declare-fun lt!1730776 () Unit!102402)

(declare-fun lt!1730777 () tuple2!51388)

(declare-fun forallContained!2685 (List!50980 Int tuple2!51388) Unit!102402)

(assert (=> b!4559425 (= lt!1730776 (forallContained!2685 (toList!4483 lm!1477) lambda!179705 lt!1730777))))

(declare-fun contains!13706 (List!50980 tuple2!51388) Bool)

(assert (=> b!4559425 (contains!13706 (toList!4483 lm!1477) lt!1730777)))

(assert (=> b!4559425 (= lt!1730777 (tuple2!51389 hash!344 lt!1730775))))

(declare-fun lt!1730778 () Unit!102402)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!750 (List!50980 (_ BitVec 64) List!50979) Unit!102402)

(assert (=> b!4559425 (= lt!1730778 (lemmaGetValueByKeyImpliesContainsTuple!750 (toList!4483 lm!1477) hash!344 lt!1730775))))

(declare-fun apply!11975 (ListLongMap!3115 (_ BitVec 64)) List!50979)

(assert (=> b!4559425 (= lt!1730775 (apply!11975 lm!1477 hash!344))))

(declare-fun lt!1730780 () (_ BitVec 64))

(assert (=> b!4559425 (contains!13705 lm!1477 lt!1730780)))

(declare-fun lt!1730779 () Unit!102402)

(declare-fun lemmaInGenMapThenLongMapContainsHash!312 (ListLongMap!3115 K!12235 Hashable!5633) Unit!102402)

(assert (=> b!4559425 (= lt!1730779 (lemmaInGenMapThenLongMapContainsHash!312 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4559426 () Bool)

(assert (=> b!4559426 (= e!2842096 e!2842094)))

(declare-fun res!1902410 () Bool)

(assert (=> b!4559426 (=> (not res!1902410) (not e!2842094))))

(assert (=> b!4559426 (= res!1902410 (= lt!1730780 hash!344))))

(declare-fun hash!3030 (Hashable!5633 K!12235) (_ BitVec 64))

(assert (=> b!4559426 (= lt!1730780 (hash!3030 hashF!1107 key!3287))))

(declare-fun b!4559427 () Bool)

(declare-fun tp!1339169 () Bool)

(assert (=> b!4559427 (= e!2842093 tp!1339169)))

(assert (= (and start!453116 res!1902409) b!4559420))

(assert (= (and b!4559420 res!1902415) b!4559419))

(assert (= (and b!4559419 res!1902411) b!4559426))

(assert (= (and b!4559426 res!1902410) b!4559418))

(assert (= (and b!4559418 res!1902408) b!4559425))

(assert (= (and b!4559425 (not res!1902414)) b!4559424))

(assert (= (and b!4559424 (not res!1902413)) b!4559421))

(assert (= (and b!4559421 (not res!1902412)) b!4559422))

(assert (= start!453116 b!4559427))

(assert (= (and start!453116 ((_ is Cons!50855) newBucket!178)) b!4559423))

(declare-fun m!5349699 () Bool)

(assert (=> start!453116 m!5349699))

(declare-fun m!5349701 () Bool)

(assert (=> start!453116 m!5349701))

(declare-fun m!5349703 () Bool)

(assert (=> b!4559422 m!5349703))

(assert (=> b!4559422 m!5349703))

(declare-fun m!5349705 () Bool)

(assert (=> b!4559422 m!5349705))

(declare-fun m!5349707 () Bool)

(assert (=> b!4559426 m!5349707))

(declare-fun m!5349709 () Bool)

(assert (=> b!4559425 m!5349709))

(declare-fun m!5349711 () Bool)

(assert (=> b!4559425 m!5349711))

(declare-fun m!5349713 () Bool)

(assert (=> b!4559425 m!5349713))

(declare-fun m!5349715 () Bool)

(assert (=> b!4559425 m!5349715))

(declare-fun m!5349717 () Bool)

(assert (=> b!4559425 m!5349717))

(declare-fun m!5349719 () Bool)

(assert (=> b!4559425 m!5349719))

(declare-fun m!5349721 () Bool)

(assert (=> b!4559425 m!5349721))

(declare-fun m!5349723 () Bool)

(assert (=> b!4559424 m!5349723))

(declare-fun m!5349725 () Bool)

(assert (=> b!4559419 m!5349725))

(assert (=> b!4559419 m!5349725))

(declare-fun m!5349727 () Bool)

(assert (=> b!4559419 m!5349727))

(declare-fun m!5349729 () Bool)

(assert (=> b!4559420 m!5349729))

(declare-fun m!5349731 () Bool)

(assert (=> b!4559418 m!5349731))

(check-sat (not b!4559425) (not b!4559426) (not b!4559427) (not start!453116) (not b!4559424) (not b!4559423) (not b!4559419) tp_is_empty!28229 (not b!4559418) (not b!4559422) (not b!4559420) tp_is_empty!28231)
(check-sat)
(get-model)

(declare-fun d!1419219 () Bool)

(declare-fun hash!3032 (Hashable!5633 K!12235) (_ BitVec 64))

(assert (=> d!1419219 (= (hash!3030 hashF!1107 key!3287) (hash!3032 hashF!1107 key!3287))))

(declare-fun bs!939742 () Bool)

(assert (= bs!939742 d!1419219))

(declare-fun m!5349733 () Bool)

(assert (=> bs!939742 m!5349733))

(assert (=> b!4559426 d!1419219))

(declare-fun bs!939743 () Bool)

(declare-fun d!1419221 () Bool)

(assert (= bs!939743 (and d!1419221 start!453116)))

(declare-fun lambda!179708 () Int)

(assert (=> bs!939743 (not (= lambda!179708 lambda!179705))))

(assert (=> d!1419221 true))

(assert (=> d!1419221 (= (allKeysSameHashInMap!1345 lm!1477 hashF!1107) (forall!10421 (toList!4483 lm!1477) lambda!179708))))

(declare-fun bs!939744 () Bool)

(assert (= bs!939744 d!1419221))

(declare-fun m!5349735 () Bool)

(assert (=> bs!939744 m!5349735))

(assert (=> b!4559420 d!1419221))

(declare-fun bs!939747 () Bool)

(declare-fun d!1419225 () Bool)

(assert (= bs!939747 (and d!1419225 start!453116)))

(declare-fun lambda!179714 () Int)

(assert (=> bs!939747 (= lambda!179714 lambda!179705)))

(declare-fun bs!939748 () Bool)

(assert (= bs!939748 (and d!1419225 d!1419221)))

(assert (=> bs!939748 (not (= lambda!179714 lambda!179708))))

(assert (=> d!1419225 (contains!13705 lm!1477 (hash!3030 hashF!1107 key!3287))))

(declare-fun lt!1730783 () Unit!102402)

(declare-fun choose!30189 (ListLongMap!3115 K!12235 Hashable!5633) Unit!102402)

(assert (=> d!1419225 (= lt!1730783 (choose!30189 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419225 (forall!10421 (toList!4483 lm!1477) lambda!179714)))

(assert (=> d!1419225 (= (lemmaInGenMapThenLongMapContainsHash!312 lm!1477 key!3287 hashF!1107) lt!1730783)))

(declare-fun bs!939749 () Bool)

(assert (= bs!939749 d!1419225))

(assert (=> bs!939749 m!5349707))

(assert (=> bs!939749 m!5349707))

(declare-fun m!5349745 () Bool)

(assert (=> bs!939749 m!5349745))

(declare-fun m!5349747 () Bool)

(assert (=> bs!939749 m!5349747))

(declare-fun m!5349749 () Bool)

(assert (=> bs!939749 m!5349749))

(assert (=> b!4559425 d!1419225))

(declare-fun d!1419233 () Bool)

(declare-fun lt!1730798 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8512 (List!50980) (InoxSet tuple2!51388))

(assert (=> d!1419233 (= lt!1730798 (select (content!8512 (toList!4483 lm!1477)) lt!1730777))))

(declare-fun e!2842121 () Bool)

(assert (=> d!1419233 (= lt!1730798 e!2842121)))

(declare-fun res!1902435 () Bool)

(assert (=> d!1419233 (=> (not res!1902435) (not e!2842121))))

(assert (=> d!1419233 (= res!1902435 ((_ is Cons!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419233 (= (contains!13706 (toList!4483 lm!1477) lt!1730777) lt!1730798)))

(declare-fun b!4559459 () Bool)

(declare-fun e!2842120 () Bool)

(assert (=> b!4559459 (= e!2842121 e!2842120)))

(declare-fun res!1902436 () Bool)

(assert (=> b!4559459 (=> res!1902436 e!2842120)))

(assert (=> b!4559459 (= res!1902436 (= (h!56763 (toList!4483 lm!1477)) lt!1730777))))

(declare-fun b!4559460 () Bool)

(assert (=> b!4559460 (= e!2842120 (contains!13706 (t!357954 (toList!4483 lm!1477)) lt!1730777))))

(assert (= (and d!1419233 res!1902435) b!4559459))

(assert (= (and b!4559459 (not res!1902436)) b!4559460))

(declare-fun m!5349767 () Bool)

(assert (=> d!1419233 m!5349767))

(declare-fun m!5349769 () Bool)

(assert (=> d!1419233 m!5349769))

(declare-fun m!5349771 () Bool)

(assert (=> b!4559460 m!5349771))

(assert (=> b!4559425 d!1419233))

(declare-fun d!1419243 () Bool)

(declare-datatypes ((Option!11267 0))(
  ( (None!11266) (Some!11266 (v!45046 List!50979)) )
))
(declare-fun get!16755 (Option!11267) List!50979)

(declare-fun getValueByKey!1199 (List!50980 (_ BitVec 64)) Option!11267)

(assert (=> d!1419243 (= (apply!11975 lm!1477 hash!344) (get!16755 (getValueByKey!1199 (toList!4483 lm!1477) hash!344)))))

(declare-fun bs!939752 () Bool)

(assert (= bs!939752 d!1419243))

(declare-fun m!5349773 () Bool)

(assert (=> bs!939752 m!5349773))

(assert (=> bs!939752 m!5349773))

(declare-fun m!5349775 () Bool)

(assert (=> bs!939752 m!5349775))

(assert (=> b!4559425 d!1419243))

(declare-fun d!1419245 () Bool)

(declare-fun e!2842144 () Bool)

(assert (=> d!1419245 e!2842144))

(declare-fun res!1902448 () Bool)

(assert (=> d!1419245 (=> res!1902448 e!2842144)))

(declare-fun lt!1730834 () Bool)

(assert (=> d!1419245 (= res!1902448 (not lt!1730834))))

(declare-fun lt!1730832 () Bool)

(assert (=> d!1419245 (= lt!1730834 lt!1730832)))

(declare-fun lt!1730831 () Unit!102402)

(declare-fun e!2842145 () Unit!102402)

(assert (=> d!1419245 (= lt!1730831 e!2842145)))

(declare-fun c!779563 () Bool)

(assert (=> d!1419245 (= c!779563 lt!1730832)))

(declare-fun containsKey!1967 (List!50980 (_ BitVec 64)) Bool)

(assert (=> d!1419245 (= lt!1730832 (containsKey!1967 (toList!4483 lm!1477) lt!1730780))))

(assert (=> d!1419245 (= (contains!13705 lm!1477 lt!1730780) lt!1730834)))

(declare-fun b!4559494 () Bool)

(declare-fun lt!1730833 () Unit!102402)

(assert (=> b!4559494 (= e!2842145 lt!1730833)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (List!50980 (_ BitVec 64)) Unit!102402)

(assert (=> b!4559494 (= lt!1730833 (lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (toList!4483 lm!1477) lt!1730780))))

(declare-fun isDefined!8539 (Option!11267) Bool)

(assert (=> b!4559494 (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780))))

(declare-fun b!4559495 () Bool)

(declare-fun Unit!102408 () Unit!102402)

(assert (=> b!4559495 (= e!2842145 Unit!102408)))

(declare-fun b!4559496 () Bool)

(assert (=> b!4559496 (= e!2842144 (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780)))))

(assert (= (and d!1419245 c!779563) b!4559494))

(assert (= (and d!1419245 (not c!779563)) b!4559495))

(assert (= (and d!1419245 (not res!1902448)) b!4559496))

(declare-fun m!5349797 () Bool)

(assert (=> d!1419245 m!5349797))

(declare-fun m!5349799 () Bool)

(assert (=> b!4559494 m!5349799))

(declare-fun m!5349801 () Bool)

(assert (=> b!4559494 m!5349801))

(assert (=> b!4559494 m!5349801))

(declare-fun m!5349803 () Bool)

(assert (=> b!4559494 m!5349803))

(assert (=> b!4559496 m!5349801))

(assert (=> b!4559496 m!5349801))

(assert (=> b!4559496 m!5349803))

(assert (=> b!4559425 d!1419245))

(declare-fun b!4559514 () Bool)

(declare-fun e!2842156 () List!50979)

(declare-fun e!2842155 () List!50979)

(assert (=> b!4559514 (= e!2842156 e!2842155)))

(declare-fun c!779572 () Bool)

(assert (=> b!4559514 (= c!779572 ((_ is Cons!50855) lt!1730775))))

(declare-fun d!1419249 () Bool)

(declare-fun lt!1730840 () List!50979)

(declare-fun containsKey!1968 (List!50979 K!12235) Bool)

(assert (=> d!1419249 (not (containsKey!1968 lt!1730840 key!3287))))

(assert (=> d!1419249 (= lt!1730840 e!2842156)))

(declare-fun c!779571 () Bool)

(assert (=> d!1419249 (= c!779571 (and ((_ is Cons!50855) lt!1730775) (= (_1!28987 (h!56762 lt!1730775)) key!3287)))))

(assert (=> d!1419249 (noDuplicateKeys!1238 lt!1730775)))

(assert (=> d!1419249 (= (removePairForKey!865 lt!1730775 key!3287) lt!1730840)))

(declare-fun b!4559513 () Bool)

(assert (=> b!4559513 (= e!2842156 (t!357953 lt!1730775))))

(declare-fun b!4559516 () Bool)

(assert (=> b!4559516 (= e!2842155 Nil!50855)))

(declare-fun b!4559515 () Bool)

(assert (=> b!4559515 (= e!2842155 (Cons!50855 (h!56762 lt!1730775) (removePairForKey!865 (t!357953 lt!1730775) key!3287)))))

(assert (= (and d!1419249 c!779571) b!4559513))

(assert (= (and d!1419249 (not c!779571)) b!4559514))

(assert (= (and b!4559514 c!779572) b!4559515))

(assert (= (and b!4559514 (not c!779572)) b!4559516))

(declare-fun m!5349813 () Bool)

(assert (=> d!1419249 m!5349813))

(declare-fun m!5349815 () Bool)

(assert (=> d!1419249 m!5349815))

(declare-fun m!5349817 () Bool)

(assert (=> b!4559515 m!5349817))

(assert (=> b!4559425 d!1419249))

(declare-fun d!1419253 () Bool)

(declare-fun dynLambda!21270 (Int tuple2!51388) Bool)

(assert (=> d!1419253 (dynLambda!21270 lambda!179705 lt!1730777)))

(declare-fun lt!1730849 () Unit!102402)

(declare-fun choose!30190 (List!50980 Int tuple2!51388) Unit!102402)

(assert (=> d!1419253 (= lt!1730849 (choose!30190 (toList!4483 lm!1477) lambda!179705 lt!1730777))))

(declare-fun e!2842160 () Bool)

(assert (=> d!1419253 e!2842160))

(declare-fun res!1902454 () Bool)

(assert (=> d!1419253 (=> (not res!1902454) (not e!2842160))))

(assert (=> d!1419253 (= res!1902454 (forall!10421 (toList!4483 lm!1477) lambda!179705))))

(assert (=> d!1419253 (= (forallContained!2685 (toList!4483 lm!1477) lambda!179705 lt!1730777) lt!1730849)))

(declare-fun b!4559520 () Bool)

(assert (=> b!4559520 (= e!2842160 (contains!13706 (toList!4483 lm!1477) lt!1730777))))

(assert (= (and d!1419253 res!1902454) b!4559520))

(declare-fun b_lambda!162027 () Bool)

(assert (=> (not b_lambda!162027) (not d!1419253)))

(declare-fun m!5349833 () Bool)

(assert (=> d!1419253 m!5349833))

(declare-fun m!5349835 () Bool)

(assert (=> d!1419253 m!5349835))

(assert (=> d!1419253 m!5349699))

(assert (=> b!4559520 m!5349721))

(assert (=> b!4559425 d!1419253))

(declare-fun d!1419261 () Bool)

(assert (=> d!1419261 (contains!13706 (toList!4483 lm!1477) (tuple2!51389 hash!344 lt!1730775))))

(declare-fun lt!1730864 () Unit!102402)

(declare-fun choose!30191 (List!50980 (_ BitVec 64) List!50979) Unit!102402)

(assert (=> d!1419261 (= lt!1730864 (choose!30191 (toList!4483 lm!1477) hash!344 lt!1730775))))

(declare-fun e!2842176 () Bool)

(assert (=> d!1419261 e!2842176))

(declare-fun res!1902467 () Bool)

(assert (=> d!1419261 (=> (not res!1902467) (not e!2842176))))

(declare-fun isStrictlySorted!484 (List!50980) Bool)

(assert (=> d!1419261 (= res!1902467 (isStrictlySorted!484 (toList!4483 lm!1477)))))

(assert (=> d!1419261 (= (lemmaGetValueByKeyImpliesContainsTuple!750 (toList!4483 lm!1477) hash!344 lt!1730775) lt!1730864)))

(declare-fun b!4559542 () Bool)

(assert (=> b!4559542 (= e!2842176 (= (getValueByKey!1199 (toList!4483 lm!1477) hash!344) (Some!11266 lt!1730775)))))

(assert (= (and d!1419261 res!1902467) b!4559542))

(declare-fun m!5349855 () Bool)

(assert (=> d!1419261 m!5349855))

(declare-fun m!5349857 () Bool)

(assert (=> d!1419261 m!5349857))

(declare-fun m!5349859 () Bool)

(assert (=> d!1419261 m!5349859))

(assert (=> b!4559542 m!5349773))

(assert (=> b!4559425 d!1419261))

(declare-fun d!1419269 () Bool)

(declare-fun res!1902472 () Bool)

(declare-fun e!2842190 () Bool)

(assert (=> d!1419269 (=> res!1902472 e!2842190)))

(assert (=> d!1419269 (= res!1902472 ((_ is Nil!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419269 (= (forall!10421 (toList!4483 lm!1477) lambda!179705) e!2842190)))

(declare-fun b!4559563 () Bool)

(declare-fun e!2842191 () Bool)

(assert (=> b!4559563 (= e!2842190 e!2842191)))

(declare-fun res!1902473 () Bool)

(assert (=> b!4559563 (=> (not res!1902473) (not e!2842191))))

(assert (=> b!4559563 (= res!1902473 (dynLambda!21270 lambda!179705 (h!56763 (toList!4483 lm!1477))))))

(declare-fun b!4559564 () Bool)

(assert (=> b!4559564 (= e!2842191 (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179705))))

(assert (= (and d!1419269 (not res!1902472)) b!4559563))

(assert (= (and b!4559563 res!1902473) b!4559564))

(declare-fun b_lambda!162033 () Bool)

(assert (=> (not b_lambda!162033) (not b!4559563)))

(declare-fun m!5349873 () Bool)

(assert (=> b!4559563 m!5349873))

(declare-fun m!5349875 () Bool)

(assert (=> b!4559564 m!5349875))

(assert (=> start!453116 d!1419269))

(declare-fun d!1419277 () Bool)

(assert (=> d!1419277 (= (inv!66419 lm!1477) (isStrictlySorted!484 (toList!4483 lm!1477)))))

(declare-fun bs!939764 () Bool)

(assert (= bs!939764 d!1419277))

(assert (=> bs!939764 m!5349859))

(assert (=> start!453116 d!1419277))

(declare-fun b!4559584 () Bool)

(declare-fun e!2842207 () Unit!102402)

(declare-fun Unit!102409 () Unit!102402)

(assert (=> b!4559584 (= e!2842207 Unit!102409)))

(declare-fun d!1419279 () Bool)

(declare-fun e!2842205 () Bool)

(assert (=> d!1419279 e!2842205))

(declare-fun res!1902480 () Bool)

(assert (=> d!1419279 (=> res!1902480 e!2842205)))

(declare-fun e!2842206 () Bool)

(assert (=> d!1419279 (= res!1902480 e!2842206)))

(declare-fun res!1902481 () Bool)

(assert (=> d!1419279 (=> (not res!1902481) (not e!2842206))))

(declare-fun lt!1730887 () Bool)

(assert (=> d!1419279 (= res!1902481 (not lt!1730887))))

(declare-fun lt!1730882 () Bool)

(assert (=> d!1419279 (= lt!1730887 lt!1730882)))

(declare-fun lt!1730883 () Unit!102402)

(declare-fun e!2842210 () Unit!102402)

(assert (=> d!1419279 (= lt!1730883 e!2842210)))

(declare-fun c!779587 () Bool)

(assert (=> d!1419279 (= c!779587 lt!1730882)))

(declare-fun containsKey!1969 (List!50979 K!12235) Bool)

(assert (=> d!1419279 (= lt!1730882 (containsKey!1969 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(assert (=> d!1419279 (= (contains!13704 (extractMap!1294 (toList!4483 lm!1477)) key!3287) lt!1730887)))

(declare-fun b!4559585 () Bool)

(declare-fun e!2842208 () Bool)

(assert (=> b!4559585 (= e!2842205 e!2842208)))

(declare-fun res!1902482 () Bool)

(assert (=> b!4559585 (=> (not res!1902482) (not e!2842208))))

(declare-datatypes ((Option!11268 0))(
  ( (None!11267) (Some!11267 (v!45047 V!12481)) )
))
(declare-fun isDefined!8540 (Option!11268) Bool)

(declare-fun getValueByKey!1200 (List!50979 K!12235) Option!11268)

(assert (=> b!4559585 (= res!1902482 (isDefined!8540 (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287)))))

(declare-fun b!4559586 () Bool)

(declare-datatypes ((List!50982 0))(
  ( (Nil!50858) (Cons!50858 (h!56767 K!12235) (t!357956 List!50982)) )
))
(declare-fun e!2842209 () List!50982)

(declare-fun getKeysList!518 (List!50979) List!50982)

(assert (=> b!4559586 (= e!2842209 (getKeysList!518 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))

(declare-fun b!4559587 () Bool)

(declare-fun contains!13708 (List!50982 K!12235) Bool)

(declare-fun keys!17731 (ListMap!3745) List!50982)

(assert (=> b!4559587 (= e!2842206 (not (contains!13708 (keys!17731 (extractMap!1294 (toList!4483 lm!1477))) key!3287)))))

(declare-fun b!4559588 () Bool)

(assert (=> b!4559588 (= e!2842208 (contains!13708 (keys!17731 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(declare-fun b!4559589 () Bool)

(declare-fun lt!1730886 () Unit!102402)

(assert (=> b!4559589 (= e!2842210 lt!1730886)))

(declare-fun lt!1730888 () Unit!102402)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1104 (List!50979 K!12235) Unit!102402)

(assert (=> b!4559589 (= lt!1730888 (lemmaContainsKeyImpliesGetValueByKeyDefined!1104 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(assert (=> b!4559589 (isDefined!8540 (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(declare-fun lt!1730889 () Unit!102402)

(assert (=> b!4559589 (= lt!1730889 lt!1730888)))

(declare-fun lemmaInListThenGetKeysListContains!514 (List!50979 K!12235) Unit!102402)

(assert (=> b!4559589 (= lt!1730886 (lemmaInListThenGetKeysListContains!514 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(declare-fun call!318220 () Bool)

(assert (=> b!4559589 call!318220))

(declare-fun b!4559590 () Bool)

(assert (=> b!4559590 false))

(declare-fun lt!1730884 () Unit!102402)

(declare-fun lt!1730885 () Unit!102402)

(assert (=> b!4559590 (= lt!1730884 lt!1730885)))

(assert (=> b!4559590 (containsKey!1969 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!517 (List!50979 K!12235) Unit!102402)

(assert (=> b!4559590 (= lt!1730885 (lemmaInGetKeysListThenContainsKey!517 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(declare-fun Unit!102410 () Unit!102402)

(assert (=> b!4559590 (= e!2842207 Unit!102410)))

(declare-fun bm!318215 () Bool)

(assert (=> bm!318215 (= call!318220 (contains!13708 e!2842209 key!3287))))

(declare-fun c!779588 () Bool)

(assert (=> bm!318215 (= c!779588 c!779587)))

(declare-fun b!4559591 () Bool)

(assert (=> b!4559591 (= e!2842209 (keys!17731 (extractMap!1294 (toList!4483 lm!1477))))))

(declare-fun b!4559592 () Bool)

(assert (=> b!4559592 (= e!2842210 e!2842207)))

(declare-fun c!779586 () Bool)

(assert (=> b!4559592 (= c!779586 call!318220)))

(assert (= (and d!1419279 c!779587) b!4559589))

(assert (= (and d!1419279 (not c!779587)) b!4559592))

(assert (= (and b!4559592 c!779586) b!4559590))

(assert (= (and b!4559592 (not c!779586)) b!4559584))

(assert (= (or b!4559589 b!4559592) bm!318215))

(assert (= (and bm!318215 c!779588) b!4559586))

(assert (= (and bm!318215 (not c!779588)) b!4559591))

(assert (= (and d!1419279 res!1902481) b!4559587))

(assert (= (and d!1419279 (not res!1902480)) b!4559585))

(assert (= (and b!4559585 res!1902482) b!4559588))

(assert (=> b!4559591 m!5349725))

(declare-fun m!5349877 () Bool)

(assert (=> b!4559591 m!5349877))

(declare-fun m!5349879 () Bool)

(assert (=> b!4559586 m!5349879))

(declare-fun m!5349881 () Bool)

(assert (=> d!1419279 m!5349881))

(assert (=> b!4559588 m!5349725))

(assert (=> b!4559588 m!5349877))

(assert (=> b!4559588 m!5349877))

(declare-fun m!5349883 () Bool)

(assert (=> b!4559588 m!5349883))

(declare-fun m!5349885 () Bool)

(assert (=> bm!318215 m!5349885))

(assert (=> b!4559587 m!5349725))

(assert (=> b!4559587 m!5349877))

(assert (=> b!4559587 m!5349877))

(assert (=> b!4559587 m!5349883))

(declare-fun m!5349887 () Bool)

(assert (=> b!4559589 m!5349887))

(declare-fun m!5349889 () Bool)

(assert (=> b!4559589 m!5349889))

(assert (=> b!4559589 m!5349889))

(declare-fun m!5349891 () Bool)

(assert (=> b!4559589 m!5349891))

(declare-fun m!5349893 () Bool)

(assert (=> b!4559589 m!5349893))

(assert (=> b!4559590 m!5349881))

(declare-fun m!5349895 () Bool)

(assert (=> b!4559590 m!5349895))

(assert (=> b!4559585 m!5349889))

(assert (=> b!4559585 m!5349889))

(assert (=> b!4559585 m!5349891))

(assert (=> b!4559419 d!1419279))

(declare-fun bs!939765 () Bool)

(declare-fun d!1419281 () Bool)

(assert (= bs!939765 (and d!1419281 start!453116)))

(declare-fun lambda!179726 () Int)

(assert (=> bs!939765 (= lambda!179726 lambda!179705)))

(declare-fun bs!939766 () Bool)

(assert (= bs!939766 (and d!1419281 d!1419221)))

(assert (=> bs!939766 (not (= lambda!179726 lambda!179708))))

(declare-fun bs!939767 () Bool)

(assert (= bs!939767 (and d!1419281 d!1419225)))

(assert (=> bs!939767 (= lambda!179726 lambda!179714)))

(declare-fun lt!1730892 () ListMap!3745)

(declare-fun invariantList!1070 (List!50979) Bool)

(assert (=> d!1419281 (invariantList!1070 (toList!4484 lt!1730892))))

(declare-fun e!2842213 () ListMap!3745)

(assert (=> d!1419281 (= lt!1730892 e!2842213)))

(declare-fun c!779591 () Bool)

(assert (=> d!1419281 (= c!779591 ((_ is Cons!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419281 (forall!10421 (toList!4483 lm!1477) lambda!179726)))

(assert (=> d!1419281 (= (extractMap!1294 (toList!4483 lm!1477)) lt!1730892)))

(declare-fun b!4559597 () Bool)

(declare-fun addToMapMapFromBucket!756 (List!50979 ListMap!3745) ListMap!3745)

(assert (=> b!4559597 (= e!2842213 (addToMapMapFromBucket!756 (_2!28988 (h!56763 (toList!4483 lm!1477))) (extractMap!1294 (t!357954 (toList!4483 lm!1477)))))))

(declare-fun b!4559598 () Bool)

(assert (=> b!4559598 (= e!2842213 (ListMap!3746 Nil!50855))))

(assert (= (and d!1419281 c!779591) b!4559597))

(assert (= (and d!1419281 (not c!779591)) b!4559598))

(declare-fun m!5349897 () Bool)

(assert (=> d!1419281 m!5349897))

(declare-fun m!5349899 () Bool)

(assert (=> d!1419281 m!5349899))

(declare-fun m!5349901 () Bool)

(assert (=> b!4559597 m!5349901))

(assert (=> b!4559597 m!5349901))

(declare-fun m!5349903 () Bool)

(assert (=> b!4559597 m!5349903))

(assert (=> b!4559419 d!1419281))

(declare-fun d!1419283 () Bool)

(declare-fun res!1902487 () Bool)

(declare-fun e!2842218 () Bool)

(assert (=> d!1419283 (=> res!1902487 e!2842218)))

(assert (=> d!1419283 (= res!1902487 (not ((_ is Cons!50855) newBucket!178)))))

(assert (=> d!1419283 (= (noDuplicateKeys!1238 newBucket!178) e!2842218)))

(declare-fun b!4559603 () Bool)

(declare-fun e!2842219 () Bool)

(assert (=> b!4559603 (= e!2842218 e!2842219)))

(declare-fun res!1902488 () Bool)

(assert (=> b!4559603 (=> (not res!1902488) (not e!2842219))))

(assert (=> b!4559603 (= res!1902488 (not (containsKey!1968 (t!357953 newBucket!178) (_1!28987 (h!56762 newBucket!178)))))))

(declare-fun b!4559604 () Bool)

(assert (=> b!4559604 (= e!2842219 (noDuplicateKeys!1238 (t!357953 newBucket!178)))))

(assert (= (and d!1419283 (not res!1902487)) b!4559603))

(assert (= (and b!4559603 res!1902488) b!4559604))

(declare-fun m!5349905 () Bool)

(assert (=> b!4559603 m!5349905))

(declare-fun m!5349907 () Bool)

(assert (=> b!4559604 m!5349907))

(assert (=> b!4559424 d!1419283))

(declare-fun d!1419285 () Bool)

(assert (=> d!1419285 true))

(assert (=> d!1419285 true))

(declare-fun lambda!179729 () Int)

(declare-fun forall!10423 (List!50979 Int) Bool)

(assert (=> d!1419285 (= (allKeysSameHash!1092 newBucket!178 hash!344 hashF!1107) (forall!10423 newBucket!178 lambda!179729))))

(declare-fun bs!939768 () Bool)

(assert (= bs!939768 d!1419285))

(declare-fun m!5349909 () Bool)

(assert (=> bs!939768 m!5349909))

(assert (=> b!4559418 d!1419285))

(declare-fun d!1419287 () Bool)

(declare-fun e!2842220 () Bool)

(assert (=> d!1419287 e!2842220))

(declare-fun res!1902489 () Bool)

(assert (=> d!1419287 (=> res!1902489 e!2842220)))

(declare-fun lt!1730896 () Bool)

(assert (=> d!1419287 (= res!1902489 (not lt!1730896))))

(declare-fun lt!1730894 () Bool)

(assert (=> d!1419287 (= lt!1730896 lt!1730894)))

(declare-fun lt!1730893 () Unit!102402)

(declare-fun e!2842221 () Unit!102402)

(assert (=> d!1419287 (= lt!1730893 e!2842221)))

(declare-fun c!779592 () Bool)

(assert (=> d!1419287 (= c!779592 lt!1730894)))

(assert (=> d!1419287 (= lt!1730894 (containsKey!1967 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(assert (=> d!1419287 (= (contains!13705 (tail!7856 lm!1477) hash!344) lt!1730896)))

(declare-fun b!4559609 () Bool)

(declare-fun lt!1730895 () Unit!102402)

(assert (=> b!4559609 (= e!2842221 lt!1730895)))

(assert (=> b!4559609 (= lt!1730895 (lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(assert (=> b!4559609 (isDefined!8539 (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(declare-fun b!4559610 () Bool)

(declare-fun Unit!102411 () Unit!102402)

(assert (=> b!4559610 (= e!2842221 Unit!102411)))

(declare-fun b!4559611 () Bool)

(assert (=> b!4559611 (= e!2842220 (isDefined!8539 (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344)))))

(assert (= (and d!1419287 c!779592) b!4559609))

(assert (= (and d!1419287 (not c!779592)) b!4559610))

(assert (= (and d!1419287 (not res!1902489)) b!4559611))

(declare-fun m!5349911 () Bool)

(assert (=> d!1419287 m!5349911))

(declare-fun m!5349913 () Bool)

(assert (=> b!4559609 m!5349913))

(declare-fun m!5349915 () Bool)

(assert (=> b!4559609 m!5349915))

(assert (=> b!4559609 m!5349915))

(declare-fun m!5349917 () Bool)

(assert (=> b!4559609 m!5349917))

(assert (=> b!4559611 m!5349915))

(assert (=> b!4559611 m!5349915))

(assert (=> b!4559611 m!5349917))

(assert (=> b!4559422 d!1419287))

(declare-fun d!1419289 () Bool)

(declare-fun tail!7858 (List!50980) List!50980)

(assert (=> d!1419289 (= (tail!7856 lm!1477) (ListLongMap!3116 (tail!7858 (toList!4483 lm!1477))))))

(declare-fun bs!939769 () Bool)

(assert (= bs!939769 d!1419289))

(declare-fun m!5349919 () Bool)

(assert (=> bs!939769 m!5349919))

(assert (=> b!4559422 d!1419289))

(declare-fun b!4559616 () Bool)

(declare-fun e!2842224 () Bool)

(declare-fun tp!1339183 () Bool)

(declare-fun tp!1339184 () Bool)

(assert (=> b!4559616 (= e!2842224 (and tp!1339183 tp!1339184))))

(assert (=> b!4559427 (= tp!1339169 e!2842224)))

(assert (= (and b!4559427 ((_ is Cons!50856) (toList!4483 lm!1477))) b!4559616))

(declare-fun e!2842227 () Bool)

(declare-fun tp!1339187 () Bool)

(declare-fun b!4559621 () Bool)

(assert (=> b!4559621 (= e!2842227 (and tp_is_empty!28229 tp_is_empty!28231 tp!1339187))))

(assert (=> b!4559423 (= tp!1339168 e!2842227)))

(assert (= (and b!4559423 ((_ is Cons!50855) (t!357953 newBucket!178))) b!4559621))

(declare-fun b_lambda!162035 () Bool)

(assert (= b_lambda!162027 (or start!453116 b_lambda!162035)))

(declare-fun bs!939770 () Bool)

(declare-fun d!1419291 () Bool)

(assert (= bs!939770 (and d!1419291 start!453116)))

(assert (=> bs!939770 (= (dynLambda!21270 lambda!179705 lt!1730777) (noDuplicateKeys!1238 (_2!28988 lt!1730777)))))

(declare-fun m!5349921 () Bool)

(assert (=> bs!939770 m!5349921))

(assert (=> d!1419253 d!1419291))

(declare-fun b_lambda!162037 () Bool)

(assert (= b_lambda!162033 (or start!453116 b_lambda!162037)))

(declare-fun bs!939771 () Bool)

(declare-fun d!1419293 () Bool)

(assert (= bs!939771 (and d!1419293 start!453116)))

(assert (=> bs!939771 (= (dynLambda!21270 lambda!179705 (h!56763 (toList!4483 lm!1477))) (noDuplicateKeys!1238 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(declare-fun m!5349923 () Bool)

(assert (=> bs!939771 m!5349923))

(assert (=> b!4559563 d!1419293))

(check-sat (not d!1419243) (not d!1419233) (not b_lambda!162035) (not b!4559616) (not d!1419281) (not d!1419277) (not b!4559611) (not d!1419279) (not b!4559604) (not b!4559520) (not b!4559609) (not b!4559597) (not b!4559515) (not d!1419221) (not b!4559586) (not b!4559564) (not d!1419249) (not d!1419253) (not b!4559585) (not d!1419219) (not b!4559460) (not d!1419289) (not d!1419245) (not b!4559587) (not b!4559542) (not b!4559588) (not bs!939771) (not b!4559603) tp_is_empty!28229 (not b!4559621) (not d!1419225) (not d!1419285) (not b_lambda!162037) (not b!4559591) tp_is_empty!28231 (not b!4559590) (not d!1419287) (not b!4559496) (not b!4559589) (not bm!318215) (not bs!939770) (not b!4559494) (not d!1419261))
(check-sat)
(get-model)

(declare-fun d!1419319 () Bool)

(declare-fun res!1902500 () Bool)

(declare-fun e!2842251 () Bool)

(assert (=> d!1419319 (=> res!1902500 e!2842251)))

(assert (=> d!1419319 (= res!1902500 ((_ is Nil!50855) newBucket!178))))

(assert (=> d!1419319 (= (forall!10423 newBucket!178 lambda!179729) e!2842251)))

(declare-fun b!4559658 () Bool)

(declare-fun e!2842252 () Bool)

(assert (=> b!4559658 (= e!2842251 e!2842252)))

(declare-fun res!1902501 () Bool)

(assert (=> b!4559658 (=> (not res!1902501) (not e!2842252))))

(declare-fun dynLambda!21272 (Int tuple2!51386) Bool)

(assert (=> b!4559658 (= res!1902501 (dynLambda!21272 lambda!179729 (h!56762 newBucket!178)))))

(declare-fun b!4559659 () Bool)

(assert (=> b!4559659 (= e!2842252 (forall!10423 (t!357953 newBucket!178) lambda!179729))))

(assert (= (and d!1419319 (not res!1902500)) b!4559658))

(assert (= (and b!4559658 res!1902501) b!4559659))

(declare-fun b_lambda!162039 () Bool)

(assert (=> (not b_lambda!162039) (not b!4559658)))

(declare-fun m!5349951 () Bool)

(assert (=> b!4559658 m!5349951))

(declare-fun m!5349953 () Bool)

(assert (=> b!4559659 m!5349953))

(assert (=> d!1419285 d!1419319))

(declare-fun d!1419321 () Bool)

(declare-fun isEmpty!28781 (Option!11267) Bool)

(assert (=> d!1419321 (= (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780)) (not (isEmpty!28781 (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780))))))

(declare-fun bs!939775 () Bool)

(assert (= bs!939775 d!1419321))

(assert (=> bs!939775 m!5349801))

(declare-fun m!5349955 () Bool)

(assert (=> bs!939775 m!5349955))

(assert (=> b!4559496 d!1419321))

(declare-fun d!1419323 () Bool)

(declare-fun c!779612 () Bool)

(assert (=> d!1419323 (= c!779612 (and ((_ is Cons!50856) (toList!4483 lm!1477)) (= (_1!28988 (h!56763 (toList!4483 lm!1477))) lt!1730780)))))

(declare-fun e!2842259 () Option!11267)

(assert (=> d!1419323 (= (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780) e!2842259)))

(declare-fun b!4559674 () Bool)

(declare-fun e!2842260 () Option!11267)

(assert (=> b!4559674 (= e!2842260 (getValueByKey!1199 (t!357954 (toList!4483 lm!1477)) lt!1730780))))

(declare-fun b!4559672 () Bool)

(assert (=> b!4559672 (= e!2842259 (Some!11266 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(declare-fun b!4559675 () Bool)

(assert (=> b!4559675 (= e!2842260 None!11266)))

(declare-fun b!4559673 () Bool)

(assert (=> b!4559673 (= e!2842259 e!2842260)))

(declare-fun c!779613 () Bool)

(assert (=> b!4559673 (= c!779613 (and ((_ is Cons!50856) (toList!4483 lm!1477)) (not (= (_1!28988 (h!56763 (toList!4483 lm!1477))) lt!1730780))))))

(assert (= (and d!1419323 c!779612) b!4559672))

(assert (= (and d!1419323 (not c!779612)) b!4559673))

(assert (= (and b!4559673 c!779613) b!4559674))

(assert (= (and b!4559673 (not c!779613)) b!4559675))

(declare-fun m!5349957 () Bool)

(assert (=> b!4559674 m!5349957))

(assert (=> b!4559496 d!1419323))

(declare-fun d!1419325 () Bool)

(assert (=> d!1419325 (isDefined!8539 (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(declare-fun lt!1730941 () Unit!102402)

(declare-fun choose!30194 (List!50980 (_ BitVec 64)) Unit!102402)

(assert (=> d!1419325 (= lt!1730941 (choose!30194 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(declare-fun e!2842263 () Bool)

(assert (=> d!1419325 e!2842263))

(declare-fun res!1902504 () Bool)

(assert (=> d!1419325 (=> (not res!1902504) (not e!2842263))))

(assert (=> d!1419325 (= res!1902504 (isStrictlySorted!484 (toList!4483 (tail!7856 lm!1477))))))

(assert (=> d!1419325 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (toList!4483 (tail!7856 lm!1477)) hash!344) lt!1730941)))

(declare-fun b!4559678 () Bool)

(assert (=> b!4559678 (= e!2842263 (containsKey!1967 (toList!4483 (tail!7856 lm!1477)) hash!344))))

(assert (= (and d!1419325 res!1902504) b!4559678))

(assert (=> d!1419325 m!5349915))

(assert (=> d!1419325 m!5349915))

(assert (=> d!1419325 m!5349917))

(declare-fun m!5349959 () Bool)

(assert (=> d!1419325 m!5349959))

(declare-fun m!5349961 () Bool)

(assert (=> d!1419325 m!5349961))

(assert (=> b!4559678 m!5349911))

(assert (=> b!4559609 d!1419325))

(declare-fun d!1419327 () Bool)

(assert (=> d!1419327 (= (isDefined!8539 (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344)) (not (isEmpty!28781 (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344))))))

(declare-fun bs!939776 () Bool)

(assert (= bs!939776 d!1419327))

(assert (=> bs!939776 m!5349915))

(declare-fun m!5349963 () Bool)

(assert (=> bs!939776 m!5349963))

(assert (=> b!4559609 d!1419327))

(declare-fun d!1419329 () Bool)

(declare-fun c!779614 () Bool)

(assert (=> d!1419329 (= c!779614 (and ((_ is Cons!50856) (toList!4483 (tail!7856 lm!1477))) (= (_1!28988 (h!56763 (toList!4483 (tail!7856 lm!1477)))) hash!344)))))

(declare-fun e!2842266 () Option!11267)

(assert (=> d!1419329 (= (getValueByKey!1199 (toList!4483 (tail!7856 lm!1477)) hash!344) e!2842266)))

(declare-fun b!4559681 () Bool)

(declare-fun e!2842267 () Option!11267)

(assert (=> b!4559681 (= e!2842267 (getValueByKey!1199 (t!357954 (toList!4483 (tail!7856 lm!1477))) hash!344))))

(declare-fun b!4559679 () Bool)

(assert (=> b!4559679 (= e!2842266 (Some!11266 (_2!28988 (h!56763 (toList!4483 (tail!7856 lm!1477))))))))

(declare-fun b!4559682 () Bool)

(assert (=> b!4559682 (= e!2842267 None!11266)))

(declare-fun b!4559680 () Bool)

(assert (=> b!4559680 (= e!2842266 e!2842267)))

(declare-fun c!779615 () Bool)

(assert (=> b!4559680 (= c!779615 (and ((_ is Cons!50856) (toList!4483 (tail!7856 lm!1477))) (not (= (_1!28988 (h!56763 (toList!4483 (tail!7856 lm!1477)))) hash!344))))))

(assert (= (and d!1419329 c!779614) b!4559679))

(assert (= (and d!1419329 (not c!779614)) b!4559680))

(assert (= (and b!4559680 c!779615) b!4559681))

(assert (= (and b!4559680 (not c!779615)) b!4559682))

(declare-fun m!5349965 () Bool)

(assert (=> b!4559681 m!5349965))

(assert (=> b!4559609 d!1419329))

(declare-fun d!1419331 () Bool)

(declare-fun res!1902507 () Bool)

(declare-fun e!2842268 () Bool)

(assert (=> d!1419331 (=> res!1902507 e!2842268)))

(assert (=> d!1419331 (= res!1902507 (not ((_ is Cons!50855) (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(assert (=> d!1419331 (= (noDuplicateKeys!1238 (_2!28988 (h!56763 (toList!4483 lm!1477)))) e!2842268)))

(declare-fun b!4559685 () Bool)

(declare-fun e!2842269 () Bool)

(assert (=> b!4559685 (= e!2842268 e!2842269)))

(declare-fun res!1902508 () Bool)

(assert (=> b!4559685 (=> (not res!1902508) (not e!2842269))))

(assert (=> b!4559685 (= res!1902508 (not (containsKey!1968 (t!357953 (_2!28988 (h!56763 (toList!4483 lm!1477)))) (_1!28987 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))))

(declare-fun b!4559686 () Bool)

(assert (=> b!4559686 (= e!2842269 (noDuplicateKeys!1238 (t!357953 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(assert (= (and d!1419331 (not res!1902507)) b!4559685))

(assert (= (and b!4559685 res!1902508) b!4559686))

(declare-fun m!5349967 () Bool)

(assert (=> b!4559685 m!5349967))

(declare-fun m!5349969 () Bool)

(assert (=> b!4559686 m!5349969))

(assert (=> bs!939771 d!1419331))

(declare-fun d!1419333 () Bool)

(declare-fun noDuplicatedKeys!289 (List!50979) Bool)

(assert (=> d!1419333 (= (invariantList!1070 (toList!4484 lt!1730892)) (noDuplicatedKeys!289 (toList!4484 lt!1730892)))))

(declare-fun bs!939777 () Bool)

(assert (= bs!939777 d!1419333))

(declare-fun m!5349971 () Bool)

(assert (=> bs!939777 m!5349971))

(assert (=> d!1419281 d!1419333))

(declare-fun d!1419335 () Bool)

(declare-fun res!1902509 () Bool)

(declare-fun e!2842270 () Bool)

(assert (=> d!1419335 (=> res!1902509 e!2842270)))

(assert (=> d!1419335 (= res!1902509 ((_ is Nil!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419335 (= (forall!10421 (toList!4483 lm!1477) lambda!179726) e!2842270)))

(declare-fun b!4559687 () Bool)

(declare-fun e!2842271 () Bool)

(assert (=> b!4559687 (= e!2842270 e!2842271)))

(declare-fun res!1902510 () Bool)

(assert (=> b!4559687 (=> (not res!1902510) (not e!2842271))))

(assert (=> b!4559687 (= res!1902510 (dynLambda!21270 lambda!179726 (h!56763 (toList!4483 lm!1477))))))

(declare-fun b!4559688 () Bool)

(assert (=> b!4559688 (= e!2842271 (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179726))))

(assert (= (and d!1419335 (not res!1902509)) b!4559687))

(assert (= (and b!4559687 res!1902510) b!4559688))

(declare-fun b_lambda!162041 () Bool)

(assert (=> (not b_lambda!162041) (not b!4559687)))

(declare-fun m!5349973 () Bool)

(assert (=> b!4559687 m!5349973))

(declare-fun m!5349975 () Bool)

(assert (=> b!4559688 m!5349975))

(assert (=> d!1419281 d!1419335))

(declare-fun d!1419337 () Bool)

(declare-fun res!1902511 () Bool)

(declare-fun e!2842272 () Bool)

(assert (=> d!1419337 (=> res!1902511 e!2842272)))

(assert (=> d!1419337 (= res!1902511 ((_ is Nil!50856) (t!357954 (toList!4483 lm!1477))))))

(assert (=> d!1419337 (= (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179705) e!2842272)))

(declare-fun b!4559689 () Bool)

(declare-fun e!2842273 () Bool)

(assert (=> b!4559689 (= e!2842272 e!2842273)))

(declare-fun res!1902512 () Bool)

(assert (=> b!4559689 (=> (not res!1902512) (not e!2842273))))

(assert (=> b!4559689 (= res!1902512 (dynLambda!21270 lambda!179705 (h!56763 (t!357954 (toList!4483 lm!1477)))))))

(declare-fun b!4559690 () Bool)

(assert (=> b!4559690 (= e!2842273 (forall!10421 (t!357954 (t!357954 (toList!4483 lm!1477))) lambda!179705))))

(assert (= (and d!1419337 (not res!1902511)) b!4559689))

(assert (= (and b!4559689 res!1902512) b!4559690))

(declare-fun b_lambda!162043 () Bool)

(assert (=> (not b_lambda!162043) (not b!4559689)))

(declare-fun m!5349977 () Bool)

(assert (=> b!4559689 m!5349977))

(declare-fun m!5349979 () Bool)

(assert (=> b!4559690 m!5349979))

(assert (=> b!4559564 d!1419337))

(declare-fun d!1419339 () Bool)

(assert (=> d!1419339 (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) lt!1730780))))

(declare-fun lt!1730946 () Unit!102402)

(assert (=> d!1419339 (= lt!1730946 (choose!30194 (toList!4483 lm!1477) lt!1730780))))

(declare-fun e!2842276 () Bool)

(assert (=> d!1419339 e!2842276))

(declare-fun res!1902515 () Bool)

(assert (=> d!1419339 (=> (not res!1902515) (not e!2842276))))

(assert (=> d!1419339 (= res!1902515 (isStrictlySorted!484 (toList!4483 lm!1477)))))

(assert (=> d!1419339 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (toList!4483 lm!1477) lt!1730780) lt!1730946)))

(declare-fun b!4559691 () Bool)

(assert (=> b!4559691 (= e!2842276 (containsKey!1967 (toList!4483 lm!1477) lt!1730780))))

(assert (= (and d!1419339 res!1902515) b!4559691))

(assert (=> d!1419339 m!5349801))

(assert (=> d!1419339 m!5349801))

(assert (=> d!1419339 m!5349803))

(declare-fun m!5349981 () Bool)

(assert (=> d!1419339 m!5349981))

(assert (=> d!1419339 m!5349859))

(assert (=> b!4559691 m!5349797))

(assert (=> b!4559494 d!1419339))

(assert (=> b!4559494 d!1419321))

(assert (=> b!4559494 d!1419323))

(declare-fun lt!1730947 () Bool)

(declare-fun d!1419341 () Bool)

(assert (=> d!1419341 (= lt!1730947 (select (content!8512 (toList!4483 lm!1477)) (tuple2!51389 hash!344 lt!1730775)))))

(declare-fun e!2842278 () Bool)

(assert (=> d!1419341 (= lt!1730947 e!2842278)))

(declare-fun res!1902518 () Bool)

(assert (=> d!1419341 (=> (not res!1902518) (not e!2842278))))

(assert (=> d!1419341 (= res!1902518 ((_ is Cons!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419341 (= (contains!13706 (toList!4483 lm!1477) (tuple2!51389 hash!344 lt!1730775)) lt!1730947)))

(declare-fun b!4559694 () Bool)

(declare-fun e!2842277 () Bool)

(assert (=> b!4559694 (= e!2842278 e!2842277)))

(declare-fun res!1902519 () Bool)

(assert (=> b!4559694 (=> res!1902519 e!2842277)))

(assert (=> b!4559694 (= res!1902519 (= (h!56763 (toList!4483 lm!1477)) (tuple2!51389 hash!344 lt!1730775)))))

(declare-fun b!4559695 () Bool)

(assert (=> b!4559695 (= e!2842277 (contains!13706 (t!357954 (toList!4483 lm!1477)) (tuple2!51389 hash!344 lt!1730775)))))

(assert (= (and d!1419341 res!1902518) b!4559694))

(assert (= (and b!4559694 (not res!1902519)) b!4559695))

(assert (=> d!1419341 m!5349767))

(declare-fun m!5349983 () Bool)

(assert (=> d!1419341 m!5349983))

(declare-fun m!5349985 () Bool)

(assert (=> b!4559695 m!5349985))

(assert (=> d!1419261 d!1419341))

(declare-fun d!1419343 () Bool)

(assert (=> d!1419343 (contains!13706 (toList!4483 lm!1477) (tuple2!51389 hash!344 lt!1730775))))

(assert (=> d!1419343 true))

(declare-fun _$14!1291 () Unit!102402)

(assert (=> d!1419343 (= (choose!30191 (toList!4483 lm!1477) hash!344 lt!1730775) _$14!1291)))

(declare-fun bs!939778 () Bool)

(assert (= bs!939778 d!1419343))

(assert (=> bs!939778 m!5349855))

(assert (=> d!1419261 d!1419343))

(declare-fun d!1419345 () Bool)

(declare-fun res!1902527 () Bool)

(declare-fun e!2842286 () Bool)

(assert (=> d!1419345 (=> res!1902527 e!2842286)))

(assert (=> d!1419345 (= res!1902527 (or ((_ is Nil!50856) (toList!4483 lm!1477)) ((_ is Nil!50856) (t!357954 (toList!4483 lm!1477)))))))

(assert (=> d!1419345 (= (isStrictlySorted!484 (toList!4483 lm!1477)) e!2842286)))

(declare-fun b!4559709 () Bool)

(declare-fun e!2842287 () Bool)

(assert (=> b!4559709 (= e!2842286 e!2842287)))

(declare-fun res!1902528 () Bool)

(assert (=> b!4559709 (=> (not res!1902528) (not e!2842287))))

(assert (=> b!4559709 (= res!1902528 (bvslt (_1!28988 (h!56763 (toList!4483 lm!1477))) (_1!28988 (h!56763 (t!357954 (toList!4483 lm!1477))))))))

(declare-fun b!4559710 () Bool)

(assert (=> b!4559710 (= e!2842287 (isStrictlySorted!484 (t!357954 (toList!4483 lm!1477))))))

(assert (= (and d!1419345 (not res!1902527)) b!4559709))

(assert (= (and b!4559709 res!1902528) b!4559710))

(declare-fun m!5349987 () Bool)

(assert (=> b!4559710 m!5349987))

(assert (=> d!1419261 d!1419345))

(declare-fun d!1419347 () Bool)

(declare-fun choose!30197 (Hashable!5633 K!12235) (_ BitVec 64))

(assert (=> d!1419347 (= (hash!3032 hashF!1107 key!3287) (choose!30197 hashF!1107 key!3287))))

(declare-fun bs!939782 () Bool)

(assert (= bs!939782 d!1419347))

(declare-fun m!5349989 () Bool)

(assert (=> bs!939782 m!5349989))

(assert (=> d!1419219 d!1419347))

(declare-fun b!4559734 () Bool)

(assert (=> b!4559734 true))

(declare-fun d!1419349 () Bool)

(declare-fun e!2842305 () Bool)

(assert (=> d!1419349 e!2842305))

(declare-fun res!1902550 () Bool)

(assert (=> d!1419349 (=> (not res!1902550) (not e!2842305))))

(declare-fun lt!1730972 () List!50982)

(declare-fun noDuplicate!774 (List!50982) Bool)

(assert (=> d!1419349 (= res!1902550 (noDuplicate!774 lt!1730972))))

(assert (=> d!1419349 (= lt!1730972 (getKeysList!518 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))

(assert (=> d!1419349 (= (keys!17731 (extractMap!1294 (toList!4483 lm!1477))) lt!1730972)))

(declare-fun b!4559733 () Bool)

(declare-fun res!1902549 () Bool)

(assert (=> b!4559733 (=> (not res!1902549) (not e!2842305))))

(declare-fun length!404 (List!50982) Int)

(declare-fun length!405 (List!50979) Int)

(assert (=> b!4559733 (= res!1902549 (= (length!404 lt!1730972) (length!405 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))))

(declare-fun res!1902551 () Bool)

(assert (=> b!4559734 (=> (not res!1902551) (not e!2842305))))

(declare-fun lambda!179767 () Int)

(declare-fun forall!10425 (List!50982 Int) Bool)

(assert (=> b!4559734 (= res!1902551 (forall!10425 lt!1730972 lambda!179767))))

(declare-fun lambda!179768 () Int)

(declare-fun b!4559735 () Bool)

(declare-fun content!8514 (List!50982) (InoxSet K!12235))

(declare-fun map!11204 (List!50979 Int) List!50982)

(assert (=> b!4559735 (= e!2842305 (= (content!8514 lt!1730972) (content!8514 (map!11204 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) lambda!179768))))))

(assert (= (and d!1419349 res!1902550) b!4559733))

(assert (= (and b!4559733 res!1902549) b!4559734))

(assert (= (and b!4559734 res!1902551) b!4559735))

(declare-fun m!5350039 () Bool)

(assert (=> d!1419349 m!5350039))

(assert (=> d!1419349 m!5349879))

(declare-fun m!5350041 () Bool)

(assert (=> b!4559733 m!5350041))

(declare-fun m!5350043 () Bool)

(assert (=> b!4559733 m!5350043))

(declare-fun m!5350045 () Bool)

(assert (=> b!4559734 m!5350045))

(declare-fun m!5350047 () Bool)

(assert (=> b!4559735 m!5350047))

(declare-fun m!5350049 () Bool)

(assert (=> b!4559735 m!5350049))

(assert (=> b!4559735 m!5350049))

(declare-fun m!5350051 () Bool)

(assert (=> b!4559735 m!5350051))

(assert (=> b!4559591 d!1419349))

(declare-fun d!1419361 () Bool)

(declare-fun lt!1730973 () Bool)

(assert (=> d!1419361 (= lt!1730973 (select (content!8512 (t!357954 (toList!4483 lm!1477))) lt!1730777))))

(declare-fun e!2842313 () Bool)

(assert (=> d!1419361 (= lt!1730973 e!2842313)))

(declare-fun res!1902558 () Bool)

(assert (=> d!1419361 (=> (not res!1902558) (not e!2842313))))

(assert (=> d!1419361 (= res!1902558 ((_ is Cons!50856) (t!357954 (toList!4483 lm!1477))))))

(assert (=> d!1419361 (= (contains!13706 (t!357954 (toList!4483 lm!1477)) lt!1730777) lt!1730973)))

(declare-fun b!4559744 () Bool)

(declare-fun e!2842312 () Bool)

(assert (=> b!4559744 (= e!2842313 e!2842312)))

(declare-fun res!1902559 () Bool)

(assert (=> b!4559744 (=> res!1902559 e!2842312)))

(assert (=> b!4559744 (= res!1902559 (= (h!56763 (t!357954 (toList!4483 lm!1477))) lt!1730777))))

(declare-fun b!4559745 () Bool)

(assert (=> b!4559745 (= e!2842312 (contains!13706 (t!357954 (t!357954 (toList!4483 lm!1477))) lt!1730777))))

(assert (= (and d!1419361 res!1902558) b!4559744))

(assert (= (and b!4559744 (not res!1902559)) b!4559745))

(declare-fun m!5350055 () Bool)

(assert (=> d!1419361 m!5350055))

(declare-fun m!5350057 () Bool)

(assert (=> d!1419361 m!5350057))

(declare-fun m!5350059 () Bool)

(assert (=> b!4559745 m!5350059))

(assert (=> b!4559460 d!1419361))

(declare-fun d!1419365 () Bool)

(declare-fun res!1902560 () Bool)

(declare-fun e!2842314 () Bool)

(assert (=> d!1419365 (=> res!1902560 e!2842314)))

(assert (=> d!1419365 (= res!1902560 (not ((_ is Cons!50855) (t!357953 newBucket!178))))))

(assert (=> d!1419365 (= (noDuplicateKeys!1238 (t!357953 newBucket!178)) e!2842314)))

(declare-fun b!4559746 () Bool)

(declare-fun e!2842315 () Bool)

(assert (=> b!4559746 (= e!2842314 e!2842315)))

(declare-fun res!1902561 () Bool)

(assert (=> b!4559746 (=> (not res!1902561) (not e!2842315))))

(assert (=> b!4559746 (= res!1902561 (not (containsKey!1968 (t!357953 (t!357953 newBucket!178)) (_1!28987 (h!56762 (t!357953 newBucket!178))))))))

(declare-fun b!4559747 () Bool)

(assert (=> b!4559747 (= e!2842315 (noDuplicateKeys!1238 (t!357953 (t!357953 newBucket!178))))))

(assert (= (and d!1419365 (not res!1902560)) b!4559746))

(assert (= (and b!4559746 res!1902561) b!4559747))

(declare-fun m!5350061 () Bool)

(assert (=> b!4559746 m!5350061))

(declare-fun m!5350063 () Bool)

(assert (=> b!4559747 m!5350063))

(assert (=> b!4559604 d!1419365))

(declare-fun d!1419369 () Bool)

(declare-fun res!1902574 () Bool)

(declare-fun e!2842328 () Bool)

(assert (=> d!1419369 (=> res!1902574 e!2842328)))

(assert (=> d!1419369 (= res!1902574 (and ((_ is Cons!50855) (t!357953 newBucket!178)) (= (_1!28987 (h!56762 (t!357953 newBucket!178))) (_1!28987 (h!56762 newBucket!178)))))))

(assert (=> d!1419369 (= (containsKey!1968 (t!357953 newBucket!178) (_1!28987 (h!56762 newBucket!178))) e!2842328)))

(declare-fun b!4559760 () Bool)

(declare-fun e!2842329 () Bool)

(assert (=> b!4559760 (= e!2842328 e!2842329)))

(declare-fun res!1902575 () Bool)

(assert (=> b!4559760 (=> (not res!1902575) (not e!2842329))))

(assert (=> b!4559760 (= res!1902575 ((_ is Cons!50855) (t!357953 newBucket!178)))))

(declare-fun b!4559761 () Bool)

(assert (=> b!4559761 (= e!2842329 (containsKey!1968 (t!357953 (t!357953 newBucket!178)) (_1!28987 (h!56762 newBucket!178))))))

(assert (= (and d!1419369 (not res!1902574)) b!4559760))

(assert (= (and b!4559760 res!1902575) b!4559761))

(declare-fun m!5350083 () Bool)

(assert (=> b!4559761 m!5350083))

(assert (=> b!4559603 d!1419369))

(declare-fun d!1419381 () Bool)

(declare-fun e!2842330 () Bool)

(assert (=> d!1419381 e!2842330))

(declare-fun res!1902576 () Bool)

(assert (=> d!1419381 (=> res!1902576 e!2842330)))

(declare-fun lt!1730977 () Bool)

(assert (=> d!1419381 (= res!1902576 (not lt!1730977))))

(declare-fun lt!1730975 () Bool)

(assert (=> d!1419381 (= lt!1730977 lt!1730975)))

(declare-fun lt!1730974 () Unit!102402)

(declare-fun e!2842331 () Unit!102402)

(assert (=> d!1419381 (= lt!1730974 e!2842331)))

(declare-fun c!779618 () Bool)

(assert (=> d!1419381 (= c!779618 lt!1730975)))

(assert (=> d!1419381 (= lt!1730975 (containsKey!1967 (toList!4483 lm!1477) (hash!3030 hashF!1107 key!3287)))))

(assert (=> d!1419381 (= (contains!13705 lm!1477 (hash!3030 hashF!1107 key!3287)) lt!1730977)))

(declare-fun b!4559762 () Bool)

(declare-fun lt!1730976 () Unit!102402)

(assert (=> b!4559762 (= e!2842331 lt!1730976)))

(assert (=> b!4559762 (= lt!1730976 (lemmaContainsKeyImpliesGetValueByKeyDefined!1103 (toList!4483 lm!1477) (hash!3030 hashF!1107 key!3287)))))

(assert (=> b!4559762 (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) (hash!3030 hashF!1107 key!3287)))))

(declare-fun b!4559763 () Bool)

(declare-fun Unit!102427 () Unit!102402)

(assert (=> b!4559763 (= e!2842331 Unit!102427)))

(declare-fun b!4559764 () Bool)

(assert (=> b!4559764 (= e!2842330 (isDefined!8539 (getValueByKey!1199 (toList!4483 lm!1477) (hash!3030 hashF!1107 key!3287))))))

(assert (= (and d!1419381 c!779618) b!4559762))

(assert (= (and d!1419381 (not c!779618)) b!4559763))

(assert (= (and d!1419381 (not res!1902576)) b!4559764))

(assert (=> d!1419381 m!5349707))

(declare-fun m!5350085 () Bool)

(assert (=> d!1419381 m!5350085))

(assert (=> b!4559762 m!5349707))

(declare-fun m!5350087 () Bool)

(assert (=> b!4559762 m!5350087))

(assert (=> b!4559762 m!5349707))

(declare-fun m!5350089 () Bool)

(assert (=> b!4559762 m!5350089))

(assert (=> b!4559762 m!5350089))

(declare-fun m!5350091 () Bool)

(assert (=> b!4559762 m!5350091))

(assert (=> b!4559764 m!5349707))

(assert (=> b!4559764 m!5350089))

(assert (=> b!4559764 m!5350089))

(assert (=> b!4559764 m!5350091))

(assert (=> d!1419225 d!1419381))

(assert (=> d!1419225 d!1419219))

(declare-fun d!1419383 () Bool)

(assert (=> d!1419383 (contains!13705 lm!1477 (hash!3030 hashF!1107 key!3287))))

(assert (=> d!1419383 true))

(declare-fun _$27!1315 () Unit!102402)

(assert (=> d!1419383 (= (choose!30189 lm!1477 key!3287 hashF!1107) _$27!1315)))

(declare-fun bs!939791 () Bool)

(assert (= bs!939791 d!1419383))

(assert (=> bs!939791 m!5349707))

(assert (=> bs!939791 m!5349707))

(assert (=> bs!939791 m!5349745))

(assert (=> d!1419225 d!1419383))

(declare-fun d!1419385 () Bool)

(declare-fun res!1902583 () Bool)

(declare-fun e!2842338 () Bool)

(assert (=> d!1419385 (=> res!1902583 e!2842338)))

(assert (=> d!1419385 (= res!1902583 ((_ is Nil!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419385 (= (forall!10421 (toList!4483 lm!1477) lambda!179714) e!2842338)))

(declare-fun b!4559771 () Bool)

(declare-fun e!2842339 () Bool)

(assert (=> b!4559771 (= e!2842338 e!2842339)))

(declare-fun res!1902584 () Bool)

(assert (=> b!4559771 (=> (not res!1902584) (not e!2842339))))

(assert (=> b!4559771 (= res!1902584 (dynLambda!21270 lambda!179714 (h!56763 (toList!4483 lm!1477))))))

(declare-fun b!4559772 () Bool)

(assert (=> b!4559772 (= e!2842339 (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179714))))

(assert (= (and d!1419385 (not res!1902583)) b!4559771))

(assert (= (and b!4559771 res!1902584) b!4559772))

(declare-fun b_lambda!162053 () Bool)

(assert (=> (not b_lambda!162053) (not b!4559771)))

(declare-fun m!5350099 () Bool)

(assert (=> b!4559771 m!5350099))

(declare-fun m!5350101 () Bool)

(assert (=> b!4559772 m!5350101))

(assert (=> d!1419225 d!1419385))

(declare-fun d!1419389 () Bool)

(assert (=> d!1419389 (dynLambda!21270 lambda!179705 lt!1730777)))

(assert (=> d!1419389 true))

(declare-fun _$7!1992 () Unit!102402)

(assert (=> d!1419389 (= (choose!30190 (toList!4483 lm!1477) lambda!179705 lt!1730777) _$7!1992)))

(declare-fun b_lambda!162055 () Bool)

(assert (=> (not b_lambda!162055) (not d!1419389)))

(declare-fun bs!939792 () Bool)

(assert (= bs!939792 d!1419389))

(assert (=> bs!939792 m!5349833))

(assert (=> d!1419253 d!1419389))

(assert (=> d!1419253 d!1419269))

(declare-fun d!1419391 () Bool)

(declare-fun lt!1730985 () Bool)

(assert (=> d!1419391 (= lt!1730985 (select (content!8514 e!2842209) key!3287))))

(declare-fun e!2842344 () Bool)

(assert (=> d!1419391 (= lt!1730985 e!2842344)))

(declare-fun res!1902589 () Bool)

(assert (=> d!1419391 (=> (not res!1902589) (not e!2842344))))

(assert (=> d!1419391 (= res!1902589 ((_ is Cons!50858) e!2842209))))

(assert (=> d!1419391 (= (contains!13708 e!2842209 key!3287) lt!1730985)))

(declare-fun b!4559777 () Bool)

(declare-fun e!2842345 () Bool)

(assert (=> b!4559777 (= e!2842344 e!2842345)))

(declare-fun res!1902590 () Bool)

(assert (=> b!4559777 (=> res!1902590 e!2842345)))

(assert (=> b!4559777 (= res!1902590 (= (h!56767 e!2842209) key!3287))))

(declare-fun b!4559778 () Bool)

(assert (=> b!4559778 (= e!2842345 (contains!13708 (t!357956 e!2842209) key!3287))))

(assert (= (and d!1419391 res!1902589) b!4559777))

(assert (= (and b!4559777 (not res!1902590)) b!4559778))

(declare-fun m!5350103 () Bool)

(assert (=> d!1419391 m!5350103))

(declare-fun m!5350105 () Bool)

(assert (=> d!1419391 m!5350105))

(declare-fun m!5350107 () Bool)

(assert (=> b!4559778 m!5350107))

(assert (=> bm!318215 d!1419391))

(declare-fun d!1419393 () Bool)

(declare-fun res!1902597 () Bool)

(declare-fun e!2842348 () Bool)

(assert (=> d!1419393 (=> res!1902597 e!2842348)))

(assert (=> d!1419393 (= res!1902597 (not ((_ is Cons!50855) (_2!28988 lt!1730777))))))

(assert (=> d!1419393 (= (noDuplicateKeys!1238 (_2!28988 lt!1730777)) e!2842348)))

(declare-fun b!4559783 () Bool)

(declare-fun e!2842349 () Bool)

(assert (=> b!4559783 (= e!2842348 e!2842349)))

(declare-fun res!1902598 () Bool)

(assert (=> b!4559783 (=> (not res!1902598) (not e!2842349))))

(assert (=> b!4559783 (= res!1902598 (not (containsKey!1968 (t!357953 (_2!28988 lt!1730777)) (_1!28987 (h!56762 (_2!28988 lt!1730777))))))))

(declare-fun b!4559784 () Bool)

(assert (=> b!4559784 (= e!2842349 (noDuplicateKeys!1238 (t!357953 (_2!28988 lt!1730777))))))

(assert (= (and d!1419393 (not res!1902597)) b!4559783))

(assert (= (and b!4559783 res!1902598) b!4559784))

(declare-fun m!5350109 () Bool)

(assert (=> b!4559783 m!5350109))

(declare-fun m!5350111 () Bool)

(assert (=> b!4559784 m!5350111))

(assert (=> bs!939770 d!1419393))

(declare-fun d!1419395 () Bool)

(declare-fun res!1902606 () Bool)

(declare-fun e!2842355 () Bool)

(assert (=> d!1419395 (=> res!1902606 e!2842355)))

(assert (=> d!1419395 (= res!1902606 (and ((_ is Cons!50856) (toList!4483 lm!1477)) (= (_1!28988 (h!56763 (toList!4483 lm!1477))) lt!1730780)))))

(assert (=> d!1419395 (= (containsKey!1967 (toList!4483 lm!1477) lt!1730780) e!2842355)))

(declare-fun b!4559796 () Bool)

(declare-fun e!2842356 () Bool)

(assert (=> b!4559796 (= e!2842355 e!2842356)))

(declare-fun res!1902607 () Bool)

(assert (=> b!4559796 (=> (not res!1902607) (not e!2842356))))

(assert (=> b!4559796 (= res!1902607 (and (or (not ((_ is Cons!50856) (toList!4483 lm!1477))) (bvsle (_1!28988 (h!56763 (toList!4483 lm!1477))) lt!1730780)) ((_ is Cons!50856) (toList!4483 lm!1477)) (bvslt (_1!28988 (h!56763 (toList!4483 lm!1477))) lt!1730780)))))

(declare-fun b!4559797 () Bool)

(assert (=> b!4559797 (= e!2842356 (containsKey!1967 (t!357954 (toList!4483 lm!1477)) lt!1730780))))

(assert (= (and d!1419395 (not res!1902606)) b!4559796))

(assert (= (and b!4559796 res!1902607) b!4559797))

(declare-fun m!5350113 () Bool)

(assert (=> b!4559797 m!5350113))

(assert (=> d!1419245 d!1419395))

(declare-fun d!1419397 () Bool)

(declare-fun res!1902616 () Bool)

(declare-fun e!2842365 () Bool)

(assert (=> d!1419397 (=> res!1902616 e!2842365)))

(assert (=> d!1419397 (= res!1902616 (and ((_ is Cons!50855) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (= (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) key!3287)))))

(assert (=> d!1419397 (= (containsKey!1969 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287) e!2842365)))

(declare-fun b!4559806 () Bool)

(declare-fun e!2842366 () Bool)

(assert (=> b!4559806 (= e!2842365 e!2842366)))

(declare-fun res!1902617 () Bool)

(assert (=> b!4559806 (=> (not res!1902617) (not e!2842366))))

(assert (=> b!4559806 (= res!1902617 ((_ is Cons!50855) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))

(declare-fun b!4559807 () Bool)

(assert (=> b!4559807 (= e!2842366 (containsKey!1969 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) key!3287))))

(assert (= (and d!1419397 (not res!1902616)) b!4559806))

(assert (= (and b!4559806 res!1902617) b!4559807))

(declare-fun m!5350129 () Bool)

(assert (=> b!4559807 m!5350129))

(assert (=> b!4559590 d!1419397))

(declare-fun d!1419401 () Bool)

(assert (=> d!1419401 (containsKey!1969 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287)))

(declare-fun lt!1730990 () Unit!102402)

(declare-fun choose!30199 (List!50979 K!12235) Unit!102402)

(assert (=> d!1419401 (= lt!1730990 (choose!30199 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(assert (=> d!1419401 (invariantList!1070 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))

(assert (=> d!1419401 (= (lemmaInGetKeysListThenContainsKey!517 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287) lt!1730990)))

(declare-fun bs!939793 () Bool)

(assert (= bs!939793 d!1419401))

(assert (=> bs!939793 m!5349881))

(declare-fun m!5350137 () Bool)

(assert (=> bs!939793 m!5350137))

(declare-fun m!5350139 () Bool)

(assert (=> bs!939793 m!5350139))

(assert (=> b!4559590 d!1419401))

(declare-fun d!1419407 () Bool)

(assert (=> d!1419407 (isDefined!8540 (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(declare-fun lt!1730993 () Unit!102402)

(declare-fun choose!30200 (List!50979 K!12235) Unit!102402)

(assert (=> d!1419407 (= lt!1730993 (choose!30200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(assert (=> d!1419407 (invariantList!1070 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))

(assert (=> d!1419407 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1104 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287) lt!1730993)))

(declare-fun bs!939795 () Bool)

(assert (= bs!939795 d!1419407))

(assert (=> bs!939795 m!5349889))

(assert (=> bs!939795 m!5349889))

(assert (=> bs!939795 m!5349891))

(declare-fun m!5350141 () Bool)

(assert (=> bs!939795 m!5350141))

(assert (=> bs!939795 m!5350139))

(assert (=> b!4559589 d!1419407))

(declare-fun d!1419411 () Bool)

(declare-fun isEmpty!28783 (Option!11268) Bool)

(assert (=> d!1419411 (= (isDefined!8540 (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287)) (not (isEmpty!28783 (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))))

(declare-fun bs!939796 () Bool)

(assert (= bs!939796 d!1419411))

(assert (=> bs!939796 m!5349889))

(declare-fun m!5350143 () Bool)

(assert (=> bs!939796 m!5350143))

(assert (=> b!4559589 d!1419411))

(declare-fun d!1419413 () Bool)

(declare-fun c!779623 () Bool)

(assert (=> d!1419413 (= c!779623 (and ((_ is Cons!50855) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (= (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) key!3287)))))

(declare-fun e!2842381 () Option!11268)

(assert (=> d!1419413 (= (getValueByKey!1200 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287) e!2842381)))

(declare-fun b!4559829 () Bool)

(declare-fun e!2842382 () Option!11268)

(assert (=> b!4559829 (= e!2842382 None!11267)))

(declare-fun b!4559827 () Bool)

(assert (=> b!4559827 (= e!2842381 e!2842382)))

(declare-fun c!779624 () Bool)

(assert (=> b!4559827 (= c!779624 (and ((_ is Cons!50855) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (not (= (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) key!3287))))))

(declare-fun b!4559828 () Bool)

(assert (=> b!4559828 (= e!2842382 (getValueByKey!1200 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) key!3287))))

(declare-fun b!4559826 () Bool)

(assert (=> b!4559826 (= e!2842381 (Some!11267 (_2!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))))

(assert (= (and d!1419413 c!779623) b!4559826))

(assert (= (and d!1419413 (not c!779623)) b!4559827))

(assert (= (and b!4559827 c!779624) b!4559828))

(assert (= (and b!4559827 (not c!779624)) b!4559829))

(declare-fun m!5350153 () Bool)

(assert (=> b!4559828 m!5350153))

(assert (=> b!4559589 d!1419413))

(declare-fun d!1419421 () Bool)

(assert (=> d!1419421 (contains!13708 (getKeysList!518 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) key!3287)))

(declare-fun lt!1730999 () Unit!102402)

(declare-fun choose!30201 (List!50979 K!12235) Unit!102402)

(assert (=> d!1419421 (= lt!1730999 (choose!30201 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287))))

(assert (=> d!1419421 (invariantList!1070 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))

(assert (=> d!1419421 (= (lemmaInListThenGetKeysListContains!514 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) key!3287) lt!1730999)))

(declare-fun bs!939799 () Bool)

(assert (= bs!939799 d!1419421))

(assert (=> bs!939799 m!5349879))

(assert (=> bs!939799 m!5349879))

(declare-fun m!5350157 () Bool)

(assert (=> bs!939799 m!5350157))

(declare-fun m!5350159 () Bool)

(assert (=> bs!939799 m!5350159))

(assert (=> bs!939799 m!5350139))

(assert (=> b!4559589 d!1419421))

(declare-fun d!1419425 () Bool)

(declare-fun res!1902628 () Bool)

(declare-fun e!2842389 () Bool)

(assert (=> d!1419425 (=> res!1902628 e!2842389)))

(assert (=> d!1419425 (= res!1902628 (and ((_ is Cons!50856) (toList!4483 (tail!7856 lm!1477))) (= (_1!28988 (h!56763 (toList!4483 (tail!7856 lm!1477)))) hash!344)))))

(assert (=> d!1419425 (= (containsKey!1967 (toList!4483 (tail!7856 lm!1477)) hash!344) e!2842389)))

(declare-fun b!4559842 () Bool)

(declare-fun e!2842390 () Bool)

(assert (=> b!4559842 (= e!2842389 e!2842390)))

(declare-fun res!1902629 () Bool)

(assert (=> b!4559842 (=> (not res!1902629) (not e!2842390))))

(assert (=> b!4559842 (= res!1902629 (and (or (not ((_ is Cons!50856) (toList!4483 (tail!7856 lm!1477)))) (bvsle (_1!28988 (h!56763 (toList!4483 (tail!7856 lm!1477)))) hash!344)) ((_ is Cons!50856) (toList!4483 (tail!7856 lm!1477))) (bvslt (_1!28988 (h!56763 (toList!4483 (tail!7856 lm!1477)))) hash!344)))))

(declare-fun b!4559843 () Bool)

(assert (=> b!4559843 (= e!2842390 (containsKey!1967 (t!357954 (toList!4483 (tail!7856 lm!1477))) hash!344))))

(assert (= (and d!1419425 (not res!1902628)) b!4559842))

(assert (= (and b!4559842 res!1902629) b!4559843))

(declare-fun m!5350161 () Bool)

(assert (=> b!4559843 m!5350161))

(assert (=> d!1419287 d!1419425))

(declare-fun d!1419427 () Bool)

(declare-fun lt!1731000 () Bool)

(assert (=> d!1419427 (= lt!1731000 (select (content!8514 (keys!17731 (extractMap!1294 (toList!4483 lm!1477)))) key!3287))))

(declare-fun e!2842391 () Bool)

(assert (=> d!1419427 (= lt!1731000 e!2842391)))

(declare-fun res!1902630 () Bool)

(assert (=> d!1419427 (=> (not res!1902630) (not e!2842391))))

(assert (=> d!1419427 (= res!1902630 ((_ is Cons!50858) (keys!17731 (extractMap!1294 (toList!4483 lm!1477)))))))

(assert (=> d!1419427 (= (contains!13708 (keys!17731 (extractMap!1294 (toList!4483 lm!1477))) key!3287) lt!1731000)))

(declare-fun b!4559844 () Bool)

(declare-fun e!2842392 () Bool)

(assert (=> b!4559844 (= e!2842391 e!2842392)))

(declare-fun res!1902631 () Bool)

(assert (=> b!4559844 (=> res!1902631 e!2842392)))

(assert (=> b!4559844 (= res!1902631 (= (h!56767 (keys!17731 (extractMap!1294 (toList!4483 lm!1477)))) key!3287))))

(declare-fun b!4559845 () Bool)

(assert (=> b!4559845 (= e!2842392 (contains!13708 (t!357956 (keys!17731 (extractMap!1294 (toList!4483 lm!1477)))) key!3287))))

(assert (= (and d!1419427 res!1902630) b!4559844))

(assert (= (and b!4559844 (not res!1902631)) b!4559845))

(assert (=> d!1419427 m!5349877))

(declare-fun m!5350163 () Bool)

(assert (=> d!1419427 m!5350163))

(declare-fun m!5350165 () Bool)

(assert (=> d!1419427 m!5350165))

(declare-fun m!5350167 () Bool)

(assert (=> b!4559845 m!5350167))

(assert (=> b!4559588 d!1419427))

(assert (=> b!4559588 d!1419349))

(declare-fun d!1419429 () Bool)

(assert (=> d!1419429 (= (tail!7858 (toList!4483 lm!1477)) (t!357954 (toList!4483 lm!1477)))))

(assert (=> d!1419289 d!1419429))

(assert (=> b!4559520 d!1419233))

(assert (=> b!4559587 d!1419427))

(assert (=> b!4559587 d!1419349))

(declare-fun bs!939801 () Bool)

(declare-fun b!4559894 () Bool)

(assert (= bs!939801 (and b!4559894 b!4559734)))

(declare-fun lambda!179791 () Int)

(assert (=> bs!939801 (= (= (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (= lambda!179791 lambda!179767))))

(assert (=> b!4559894 true))

(declare-fun bs!939802 () Bool)

(declare-fun b!4559887 () Bool)

(assert (= bs!939802 (and b!4559887 b!4559734)))

(declare-fun lambda!179792 () Int)

(assert (=> bs!939802 (= (= (Cons!50855 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (= lambda!179792 lambda!179767))))

(declare-fun bs!939803 () Bool)

(assert (= bs!939803 (and b!4559887 b!4559894)))

(assert (=> bs!939803 (= (= (Cons!50855 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (= lambda!179792 lambda!179791))))

(assert (=> b!4559887 true))

(declare-fun bs!939804 () Bool)

(declare-fun b!4559886 () Bool)

(assert (= bs!939804 (and b!4559886 b!4559734)))

(declare-fun lambda!179793 () Int)

(assert (=> bs!939804 (= lambda!179793 lambda!179767)))

(declare-fun bs!939805 () Bool)

(assert (= bs!939805 (and b!4559886 b!4559894)))

(assert (=> bs!939805 (= (= (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (= lambda!179793 lambda!179791))))

(declare-fun bs!939806 () Bool)

(assert (= bs!939806 (and b!4559886 b!4559887)))

(assert (=> bs!939806 (= (= (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) (Cons!50855 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))) (= lambda!179793 lambda!179792))))

(assert (=> b!4559886 true))

(declare-fun bs!939807 () Bool)

(declare-fun b!4559893 () Bool)

(assert (= bs!939807 (and b!4559893 b!4559735)))

(declare-fun lambda!179794 () Int)

(assert (=> bs!939807 (= lambda!179794 lambda!179768)))

(declare-fun res!1902648 () Bool)

(declare-fun e!2842414 () Bool)

(assert (=> b!4559886 (=> (not res!1902648) (not e!2842414))))

(declare-fun lt!1731039 () List!50982)

(assert (=> b!4559886 (= res!1902648 (forall!10425 lt!1731039 lambda!179793))))

(declare-fun e!2842416 () List!50982)

(assert (=> b!4559887 (= e!2842416 (Cons!50858 (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (getKeysList!518 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))))

(declare-fun c!779645 () Bool)

(assert (=> b!4559887 (= c!779645 (containsKey!1969 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))))

(declare-fun lt!1731036 () Unit!102402)

(declare-fun e!2842415 () Unit!102402)

(assert (=> b!4559887 (= lt!1731036 e!2842415)))

(declare-fun c!779643 () Bool)

(assert (=> b!4559887 (= c!779643 (contains!13708 (getKeysList!518 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))))

(declare-fun lt!1731040 () Unit!102402)

(declare-fun e!2842413 () Unit!102402)

(assert (=> b!4559887 (= lt!1731040 e!2842413)))

(declare-fun lt!1731034 () List!50982)

(assert (=> b!4559887 (= lt!1731034 (getKeysList!518 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))))

(declare-fun lt!1731035 () Unit!102402)

(declare-fun lemmaForallContainsAddHeadPreserves!195 (List!50979 List!50982 tuple2!51386) Unit!102402)

(assert (=> b!4559887 (= lt!1731035 (lemmaForallContainsAddHeadPreserves!195 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) lt!1731034 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))))

(assert (=> b!4559887 (forall!10425 lt!1731034 lambda!179792)))

(declare-fun lt!1731037 () Unit!102402)

(assert (=> b!4559887 (= lt!1731037 lt!1731035)))

(declare-fun b!4559888 () Bool)

(declare-fun res!1902649 () Bool)

(assert (=> b!4559888 (=> (not res!1902649) (not e!2842414))))

(assert (=> b!4559888 (= res!1902649 (= (length!404 lt!1731039) (length!405 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))))

(declare-fun b!4559889 () Bool)

(declare-fun Unit!102429 () Unit!102402)

(assert (=> b!4559889 (= e!2842413 Unit!102429)))

(declare-fun d!1419431 () Bool)

(assert (=> d!1419431 e!2842414))

(declare-fun res!1902650 () Bool)

(assert (=> d!1419431 (=> (not res!1902650) (not e!2842414))))

(assert (=> d!1419431 (= res!1902650 (noDuplicate!774 lt!1731039))))

(assert (=> d!1419431 (= lt!1731039 e!2842416)))

(declare-fun c!779644 () Bool)

(assert (=> d!1419431 (= c!779644 ((_ is Cons!50855) (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))

(assert (=> d!1419431 (invariantList!1070 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))))

(assert (=> d!1419431 (= (getKeysList!518 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))) lt!1731039)))

(declare-fun b!4559890 () Bool)

(assert (=> b!4559890 false))

(declare-fun Unit!102430 () Unit!102402)

(assert (=> b!4559890 (= e!2842415 Unit!102430)))

(declare-fun b!4559891 () Bool)

(declare-fun Unit!102431 () Unit!102402)

(assert (=> b!4559891 (= e!2842415 Unit!102431)))

(declare-fun b!4559892 () Bool)

(assert (=> b!4559892 (= e!2842416 Nil!50858)))

(assert (=> b!4559893 (= e!2842414 (= (content!8514 lt!1731039) (content!8514 (map!11204 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))) lambda!179794))))))

(assert (=> b!4559894 false))

(declare-fun lt!1731038 () Unit!102402)

(declare-fun forallContained!2688 (List!50982 Int K!12235) Unit!102402)

(assert (=> b!4559894 (= lt!1731038 (forallContained!2688 (getKeysList!518 (t!357953 (toList!4484 (extractMap!1294 (toList!4483 lm!1477))))) lambda!179791 (_1!28987 (h!56762 (toList!4484 (extractMap!1294 (toList!4483 lm!1477)))))))))

(declare-fun Unit!102432 () Unit!102402)

(assert (=> b!4559894 (= e!2842413 Unit!102432)))

(assert (= (and d!1419431 c!779644) b!4559887))

(assert (= (and d!1419431 (not c!779644)) b!4559892))

(assert (= (and b!4559887 c!779645) b!4559890))

(assert (= (and b!4559887 (not c!779645)) b!4559891))

(assert (= (and b!4559887 c!779643) b!4559894))

(assert (= (and b!4559887 (not c!779643)) b!4559889))

(assert (= (and d!1419431 res!1902650) b!4559888))

(assert (= (and b!4559888 res!1902649) b!4559886))

(assert (= (and b!4559886 res!1902648) b!4559893))

(declare-fun m!5350183 () Bool)

(assert (=> b!4559887 m!5350183))

(declare-fun m!5350185 () Bool)

(assert (=> b!4559887 m!5350185))

(declare-fun m!5350187 () Bool)

(assert (=> b!4559887 m!5350187))

(declare-fun m!5350189 () Bool)

(assert (=> b!4559887 m!5350189))

(declare-fun m!5350191 () Bool)

(assert (=> b!4559887 m!5350191))

(assert (=> b!4559887 m!5350183))

(declare-fun m!5350193 () Bool)

(assert (=> d!1419431 m!5350193))

(assert (=> d!1419431 m!5350139))

(declare-fun m!5350195 () Bool)

(assert (=> b!4559886 m!5350195))

(declare-fun m!5350197 () Bool)

(assert (=> b!4559893 m!5350197))

(declare-fun m!5350199 () Bool)

(assert (=> b!4559893 m!5350199))

(assert (=> b!4559893 m!5350199))

(declare-fun m!5350201 () Bool)

(assert (=> b!4559893 m!5350201))

(declare-fun m!5350203 () Bool)

(assert (=> b!4559888 m!5350203))

(assert (=> b!4559888 m!5350043))

(assert (=> b!4559894 m!5350183))

(assert (=> b!4559894 m!5350183))

(declare-fun m!5350205 () Bool)

(assert (=> b!4559894 m!5350205))

(assert (=> b!4559586 d!1419431))

(assert (=> d!1419279 d!1419397))

(declare-fun d!1419439 () Bool)

(declare-fun c!779651 () Bool)

(assert (=> d!1419439 (= c!779651 ((_ is Nil!50856) (toList!4483 lm!1477)))))

(declare-fun e!2842423 () (InoxSet tuple2!51388))

(assert (=> d!1419439 (= (content!8512 (toList!4483 lm!1477)) e!2842423)))

(declare-fun b!4559912 () Bool)

(assert (=> b!4559912 (= e!2842423 ((as const (Array tuple2!51388 Bool)) false))))

(declare-fun b!4559913 () Bool)

(assert (=> b!4559913 (= e!2842423 ((_ map or) (store ((as const (Array tuple2!51388 Bool)) false) (h!56763 (toList!4483 lm!1477)) true) (content!8512 (t!357954 (toList!4483 lm!1477)))))))

(assert (= (and d!1419439 c!779651) b!4559912))

(assert (= (and d!1419439 (not c!779651)) b!4559913))

(declare-fun m!5350231 () Bool)

(assert (=> b!4559913 m!5350231))

(assert (=> b!4559913 m!5350055))

(assert (=> d!1419233 d!1419439))

(declare-fun d!1419443 () Bool)

(declare-fun res!1902656 () Bool)

(declare-fun e!2842426 () Bool)

(assert (=> d!1419443 (=> res!1902656 e!2842426)))

(assert (=> d!1419443 (= res!1902656 (and ((_ is Cons!50855) lt!1730840) (= (_1!28987 (h!56762 lt!1730840)) key!3287)))))

(assert (=> d!1419443 (= (containsKey!1968 lt!1730840 key!3287) e!2842426)))

(declare-fun b!4559916 () Bool)

(declare-fun e!2842427 () Bool)

(assert (=> b!4559916 (= e!2842426 e!2842427)))

(declare-fun res!1902657 () Bool)

(assert (=> b!4559916 (=> (not res!1902657) (not e!2842427))))

(assert (=> b!4559916 (= res!1902657 ((_ is Cons!50855) lt!1730840))))

(declare-fun b!4559917 () Bool)

(assert (=> b!4559917 (= e!2842427 (containsKey!1968 (t!357953 lt!1730840) key!3287))))

(assert (= (and d!1419443 (not res!1902656)) b!4559916))

(assert (= (and b!4559916 res!1902657) b!4559917))

(declare-fun m!5350235 () Bool)

(assert (=> b!4559917 m!5350235))

(assert (=> d!1419249 d!1419443))

(declare-fun d!1419447 () Bool)

(declare-fun res!1902658 () Bool)

(declare-fun e!2842428 () Bool)

(assert (=> d!1419447 (=> res!1902658 e!2842428)))

(assert (=> d!1419447 (= res!1902658 (not ((_ is Cons!50855) lt!1730775)))))

(assert (=> d!1419447 (= (noDuplicateKeys!1238 lt!1730775) e!2842428)))

(declare-fun b!4559918 () Bool)

(declare-fun e!2842429 () Bool)

(assert (=> b!4559918 (= e!2842428 e!2842429)))

(declare-fun res!1902659 () Bool)

(assert (=> b!4559918 (=> (not res!1902659) (not e!2842429))))

(assert (=> b!4559918 (= res!1902659 (not (containsKey!1968 (t!357953 lt!1730775) (_1!28987 (h!56762 lt!1730775)))))))

(declare-fun b!4559919 () Bool)

(assert (=> b!4559919 (= e!2842429 (noDuplicateKeys!1238 (t!357953 lt!1730775)))))

(assert (= (and d!1419447 (not res!1902658)) b!4559918))

(assert (= (and b!4559918 res!1902659) b!4559919))

(declare-fun m!5350237 () Bool)

(assert (=> b!4559918 m!5350237))

(declare-fun m!5350239 () Bool)

(assert (=> b!4559919 m!5350239))

(assert (=> d!1419249 d!1419447))

(assert (=> b!4559585 d!1419411))

(assert (=> b!4559585 d!1419413))

(declare-fun d!1419449 () Bool)

(declare-fun c!779652 () Bool)

(assert (=> d!1419449 (= c!779652 (and ((_ is Cons!50856) (toList!4483 lm!1477)) (= (_1!28988 (h!56763 (toList!4483 lm!1477))) hash!344)))))

(declare-fun e!2842430 () Option!11267)

(assert (=> d!1419449 (= (getValueByKey!1199 (toList!4483 lm!1477) hash!344) e!2842430)))

(declare-fun b!4559922 () Bool)

(declare-fun e!2842431 () Option!11267)

(assert (=> b!4559922 (= e!2842431 (getValueByKey!1199 (t!357954 (toList!4483 lm!1477)) hash!344))))

(declare-fun b!4559920 () Bool)

(assert (=> b!4559920 (= e!2842430 (Some!11266 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(declare-fun b!4559923 () Bool)

(assert (=> b!4559923 (= e!2842431 None!11266)))

(declare-fun b!4559921 () Bool)

(assert (=> b!4559921 (= e!2842430 e!2842431)))

(declare-fun c!779653 () Bool)

(assert (=> b!4559921 (= c!779653 (and ((_ is Cons!50856) (toList!4483 lm!1477)) (not (= (_1!28988 (h!56763 (toList!4483 lm!1477))) hash!344))))))

(assert (= (and d!1419449 c!779652) b!4559920))

(assert (= (and d!1419449 (not c!779652)) b!4559921))

(assert (= (and b!4559921 c!779653) b!4559922))

(assert (= (and b!4559921 (not c!779653)) b!4559923))

(declare-fun m!5350241 () Bool)

(assert (=> b!4559922 m!5350241))

(assert (=> b!4559542 d!1419449))

(declare-fun d!1419451 () Bool)

(declare-fun res!1902660 () Bool)

(declare-fun e!2842432 () Bool)

(assert (=> d!1419451 (=> res!1902660 e!2842432)))

(assert (=> d!1419451 (= res!1902660 ((_ is Nil!50856) (toList!4483 lm!1477)))))

(assert (=> d!1419451 (= (forall!10421 (toList!4483 lm!1477) lambda!179708) e!2842432)))

(declare-fun b!4559924 () Bool)

(declare-fun e!2842433 () Bool)

(assert (=> b!4559924 (= e!2842432 e!2842433)))

(declare-fun res!1902661 () Bool)

(assert (=> b!4559924 (=> (not res!1902661) (not e!2842433))))

(assert (=> b!4559924 (= res!1902661 (dynLambda!21270 lambda!179708 (h!56763 (toList!4483 lm!1477))))))

(declare-fun b!4559925 () Bool)

(assert (=> b!4559925 (= e!2842433 (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179708))))

(assert (= (and d!1419451 (not res!1902660)) b!4559924))

(assert (= (and b!4559924 res!1902661) b!4559925))

(declare-fun b_lambda!162057 () Bool)

(assert (=> (not b_lambda!162057) (not b!4559924)))

(declare-fun m!5350243 () Bool)

(assert (=> b!4559924 m!5350243))

(declare-fun m!5350245 () Bool)

(assert (=> b!4559925 m!5350245))

(assert (=> d!1419221 d!1419451))

(declare-fun d!1419453 () Bool)

(assert (=> d!1419453 (= (get!16755 (getValueByKey!1199 (toList!4483 lm!1477) hash!344)) (v!45046 (getValueByKey!1199 (toList!4483 lm!1477) hash!344)))))

(assert (=> d!1419243 d!1419453))

(assert (=> d!1419243 d!1419449))

(assert (=> d!1419277 d!1419345))

(declare-fun b!4559927 () Bool)

(declare-fun e!2842435 () List!50979)

(declare-fun e!2842434 () List!50979)

(assert (=> b!4559927 (= e!2842435 e!2842434)))

(declare-fun c!779655 () Bool)

(assert (=> b!4559927 (= c!779655 ((_ is Cons!50855) (t!357953 lt!1730775)))))

(declare-fun d!1419455 () Bool)

(declare-fun lt!1731051 () List!50979)

(assert (=> d!1419455 (not (containsKey!1968 lt!1731051 key!3287))))

(assert (=> d!1419455 (= lt!1731051 e!2842435)))

(declare-fun c!779654 () Bool)

(assert (=> d!1419455 (= c!779654 (and ((_ is Cons!50855) (t!357953 lt!1730775)) (= (_1!28987 (h!56762 (t!357953 lt!1730775))) key!3287)))))

(assert (=> d!1419455 (noDuplicateKeys!1238 (t!357953 lt!1730775))))

(assert (=> d!1419455 (= (removePairForKey!865 (t!357953 lt!1730775) key!3287) lt!1731051)))

(declare-fun b!4559926 () Bool)

(assert (=> b!4559926 (= e!2842435 (t!357953 (t!357953 lt!1730775)))))

(declare-fun b!4559929 () Bool)

(assert (=> b!4559929 (= e!2842434 Nil!50855)))

(declare-fun b!4559928 () Bool)

(assert (=> b!4559928 (= e!2842434 (Cons!50855 (h!56762 (t!357953 lt!1730775)) (removePairForKey!865 (t!357953 (t!357953 lt!1730775)) key!3287)))))

(assert (= (and d!1419455 c!779654) b!4559926))

(assert (= (and d!1419455 (not c!779654)) b!4559927))

(assert (= (and b!4559927 c!779655) b!4559928))

(assert (= (and b!4559927 (not c!779655)) b!4559929))

(declare-fun m!5350249 () Bool)

(assert (=> d!1419455 m!5350249))

(assert (=> d!1419455 m!5350239))

(declare-fun m!5350251 () Bool)

(assert (=> b!4559928 m!5350251))

(assert (=> b!4559515 d!1419455))

(assert (=> b!4559611 d!1419327))

(assert (=> b!4559611 d!1419329))

(declare-fun bs!939823 () Bool)

(declare-fun b!4559958 () Bool)

(assert (= bs!939823 (and b!4559958 d!1419285)))

(declare-fun lambda!179827 () Int)

(assert (=> bs!939823 (not (= lambda!179827 lambda!179729))))

(assert (=> b!4559958 true))

(declare-fun bs!939824 () Bool)

(declare-fun b!4559957 () Bool)

(assert (= bs!939824 (and b!4559957 d!1419285)))

(declare-fun lambda!179828 () Int)

(assert (=> bs!939824 (not (= lambda!179828 lambda!179729))))

(declare-fun bs!939825 () Bool)

(assert (= bs!939825 (and b!4559957 b!4559958)))

(assert (=> bs!939825 (= lambda!179828 lambda!179827)))

(assert (=> b!4559957 true))

(declare-fun lambda!179829 () Int)

(assert (=> bs!939824 (not (= lambda!179829 lambda!179729))))

(declare-fun lt!1731102 () ListMap!3745)

(assert (=> bs!939825 (= (= lt!1731102 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (= lambda!179829 lambda!179827))))

(assert (=> b!4559957 (= (= lt!1731102 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (= lambda!179829 lambda!179828))))

(assert (=> b!4559957 true))

(declare-fun bs!939826 () Bool)

(declare-fun d!1419459 () Bool)

(assert (= bs!939826 (and d!1419459 d!1419285)))

(declare-fun lambda!179830 () Int)

(assert (=> bs!939826 (not (= lambda!179830 lambda!179729))))

(declare-fun bs!939827 () Bool)

(assert (= bs!939827 (and d!1419459 b!4559958)))

(declare-fun lt!1731110 () ListMap!3745)

(assert (=> bs!939827 (= (= lt!1731110 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (= lambda!179830 lambda!179827))))

(declare-fun bs!939828 () Bool)

(assert (= bs!939828 (and d!1419459 b!4559957)))

(assert (=> bs!939828 (= (= lt!1731110 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (= lambda!179830 lambda!179828))))

(assert (=> bs!939828 (= (= lt!1731110 lt!1731102) (= lambda!179830 lambda!179829))))

(assert (=> d!1419459 true))

(declare-fun bm!318231 () Bool)

(declare-fun call!318238 () Unit!102402)

(declare-fun lemmaContainsAllItsOwnKeys!390 (ListMap!3745) Unit!102402)

(assert (=> bm!318231 (= call!318238 (lemmaContainsAllItsOwnKeys!390 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))))))

(declare-fun b!4559956 () Bool)

(declare-fun e!2842457 () Bool)

(assert (=> b!4559956 (= e!2842457 (invariantList!1070 (toList!4484 lt!1731110)))))

(declare-fun e!2842456 () ListMap!3745)

(assert (=> b!4559957 (= e!2842456 lt!1731102)))

(declare-fun lt!1731115 () ListMap!3745)

(declare-fun +!1662 (ListMap!3745 tuple2!51386) ListMap!3745)

(assert (=> b!4559957 (= lt!1731115 (+!1662 (extractMap!1294 (t!357954 (toList!4483 lm!1477))) (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(assert (=> b!4559957 (= lt!1731102 (addToMapMapFromBucket!756 (t!357953 (_2!28988 (h!56763 (toList!4483 lm!1477)))) (+!1662 (extractMap!1294 (t!357954 (toList!4483 lm!1477))) (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))))

(declare-fun lt!1731104 () Unit!102402)

(assert (=> b!4559957 (= lt!1731104 call!318238)))

(assert (=> b!4559957 (forall!10423 (toList!4484 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) lambda!179828)))

(declare-fun lt!1731100 () Unit!102402)

(assert (=> b!4559957 (= lt!1731100 lt!1731104)))

(assert (=> b!4559957 (forall!10423 (toList!4484 lt!1731115) lambda!179829)))

(declare-fun lt!1731111 () Unit!102402)

(declare-fun Unit!102433 () Unit!102402)

(assert (=> b!4559957 (= lt!1731111 Unit!102433)))

(assert (=> b!4559957 (forall!10423 (t!357953 (_2!28988 (h!56763 (toList!4483 lm!1477)))) lambda!179829)))

(declare-fun lt!1731108 () Unit!102402)

(declare-fun Unit!102434 () Unit!102402)

(assert (=> b!4559957 (= lt!1731108 Unit!102434)))

(declare-fun lt!1731105 () Unit!102402)

(declare-fun Unit!102435 () Unit!102402)

(assert (=> b!4559957 (= lt!1731105 Unit!102435)))

(declare-fun lt!1731099 () Unit!102402)

(declare-fun forallContained!2689 (List!50979 Int tuple2!51386) Unit!102402)

(assert (=> b!4559957 (= lt!1731099 (forallContained!2689 (toList!4484 lt!1731115) lambda!179829 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(assert (=> b!4559957 (contains!13704 lt!1731115 (_1!28987 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(declare-fun lt!1731101 () Unit!102402)

(declare-fun Unit!102436 () Unit!102402)

(assert (=> b!4559957 (= lt!1731101 Unit!102436)))

(assert (=> b!4559957 (contains!13704 lt!1731102 (_1!28987 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))))))

(declare-fun lt!1731103 () Unit!102402)

(declare-fun Unit!102437 () Unit!102402)

(assert (=> b!4559957 (= lt!1731103 Unit!102437)))

(assert (=> b!4559957 (forall!10423 (_2!28988 (h!56763 (toList!4483 lm!1477))) lambda!179829)))

(declare-fun lt!1731119 () Unit!102402)

(declare-fun Unit!102438 () Unit!102402)

(assert (=> b!4559957 (= lt!1731119 Unit!102438)))

(assert (=> b!4559957 (forall!10423 (toList!4484 lt!1731115) lambda!179829)))

(declare-fun lt!1731113 () Unit!102402)

(declare-fun Unit!102439 () Unit!102402)

(assert (=> b!4559957 (= lt!1731113 Unit!102439)))

(declare-fun lt!1731114 () Unit!102402)

(declare-fun Unit!102440 () Unit!102402)

(assert (=> b!4559957 (= lt!1731114 Unit!102440)))

(declare-fun lt!1731107 () Unit!102402)

(declare-fun addForallContainsKeyThenBeforeAdding!390 (ListMap!3745 ListMap!3745 K!12235 V!12481) Unit!102402)

(assert (=> b!4559957 (= lt!1731107 (addForallContainsKeyThenBeforeAdding!390 (extractMap!1294 (t!357954 (toList!4483 lm!1477))) lt!1731102 (_1!28987 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477))))) (_2!28987 (h!56762 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))))

(declare-fun call!318237 () Bool)

(assert (=> b!4559957 call!318237))

(declare-fun lt!1731117 () Unit!102402)

(assert (=> b!4559957 (= lt!1731117 lt!1731107)))

(assert (=> b!4559957 (forall!10423 (toList!4484 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) lambda!179829)))

(declare-fun lt!1731106 () Unit!102402)

(declare-fun Unit!102441 () Unit!102402)

(assert (=> b!4559957 (= lt!1731106 Unit!102441)))

(declare-fun res!1902677 () Bool)

(assert (=> b!4559957 (= res!1902677 (forall!10423 (_2!28988 (h!56763 (toList!4483 lm!1477))) lambda!179829))))

(declare-fun e!2842455 () Bool)

(assert (=> b!4559957 (=> (not res!1902677) (not e!2842455))))

(assert (=> b!4559957 e!2842455))

(declare-fun lt!1731112 () Unit!102402)

(declare-fun Unit!102442 () Unit!102402)

(assert (=> b!4559957 (= lt!1731112 Unit!102442)))

(assert (=> d!1419459 e!2842457))

(declare-fun res!1902675 () Bool)

(assert (=> d!1419459 (=> (not res!1902675) (not e!2842457))))

(assert (=> d!1419459 (= res!1902675 (forall!10423 (_2!28988 (h!56763 (toList!4483 lm!1477))) lambda!179830))))

(assert (=> d!1419459 (= lt!1731110 e!2842456)))

(declare-fun c!779661 () Bool)

(assert (=> d!1419459 (= c!779661 ((_ is Nil!50855) (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(assert (=> d!1419459 (noDuplicateKeys!1238 (_2!28988 (h!56763 (toList!4483 lm!1477))))))

(assert (=> d!1419459 (= (addToMapMapFromBucket!756 (_2!28988 (h!56763 (toList!4483 lm!1477))) (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) lt!1731110)))

(assert (=> b!4559958 (= e!2842456 (extractMap!1294 (t!357954 (toList!4483 lm!1477))))))

(declare-fun lt!1731118 () Unit!102402)

(assert (=> b!4559958 (= lt!1731118 call!318238)))

(assert (=> b!4559958 call!318237))

(declare-fun lt!1731116 () Unit!102402)

(assert (=> b!4559958 (= lt!1731116 lt!1731118)))

(declare-fun call!318236 () Bool)

(assert (=> b!4559958 call!318236))

(declare-fun lt!1731109 () Unit!102402)

(declare-fun Unit!102443 () Unit!102402)

(assert (=> b!4559958 (= lt!1731109 Unit!102443)))

(declare-fun b!4559959 () Bool)

(declare-fun res!1902676 () Bool)

(assert (=> b!4559959 (=> (not res!1902676) (not e!2842457))))

(assert (=> b!4559959 (= res!1902676 (forall!10423 (toList!4484 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) lambda!179830))))

(declare-fun bm!318232 () Bool)

(assert (=> bm!318232 (= call!318237 (forall!10423 (toList!4484 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (ite c!779661 lambda!179827 lambda!179829)))))

(declare-fun bm!318233 () Bool)

(assert (=> bm!318233 (= call!318236 (forall!10423 (toList!4484 (extractMap!1294 (t!357954 (toList!4483 lm!1477)))) (ite c!779661 lambda!179827 lambda!179829)))))

(declare-fun b!4559960 () Bool)

(assert (=> b!4559960 (= e!2842455 call!318236)))

(assert (= (and d!1419459 c!779661) b!4559958))

(assert (= (and d!1419459 (not c!779661)) b!4559957))

(assert (= (and b!4559957 res!1902677) b!4559960))

(assert (= (or b!4559958 b!4559957) bm!318232))

(assert (= (or b!4559958 b!4559960) bm!318233))

(assert (= (or b!4559958 b!4559957) bm!318231))

(assert (= (and d!1419459 res!1902675) b!4559959))

(assert (= (and b!4559959 res!1902676) b!4559956))

(declare-fun m!5350281 () Bool)

(assert (=> d!1419459 m!5350281))

(assert (=> d!1419459 m!5349923))

(assert (=> bm!318231 m!5349901))

(declare-fun m!5350283 () Bool)

(assert (=> bm!318231 m!5350283))

(declare-fun m!5350285 () Bool)

(assert (=> bm!318232 m!5350285))

(declare-fun m!5350287 () Bool)

(assert (=> b!4559956 m!5350287))

(assert (=> b!4559957 m!5349901))

(declare-fun m!5350289 () Bool)

(assert (=> b!4559957 m!5350289))

(declare-fun m!5350291 () Bool)

(assert (=> b!4559957 m!5350291))

(declare-fun m!5350293 () Bool)

(assert (=> b!4559957 m!5350293))

(assert (=> b!4559957 m!5350289))

(declare-fun m!5350295 () Bool)

(assert (=> b!4559957 m!5350295))

(declare-fun m!5350297 () Bool)

(assert (=> b!4559957 m!5350297))

(declare-fun m!5350299 () Bool)

(assert (=> b!4559957 m!5350299))

(declare-fun m!5350301 () Bool)

(assert (=> b!4559957 m!5350301))

(declare-fun m!5350303 () Bool)

(assert (=> b!4559957 m!5350303))

(declare-fun m!5350305 () Bool)

(assert (=> b!4559957 m!5350305))

(assert (=> b!4559957 m!5350305))

(declare-fun m!5350307 () Bool)

(assert (=> b!4559957 m!5350307))

(assert (=> b!4559957 m!5350291))

(assert (=> b!4559957 m!5349901))

(declare-fun m!5350309 () Bool)

(assert (=> b!4559957 m!5350309))

(declare-fun m!5350311 () Bool)

(assert (=> b!4559959 m!5350311))

(assert (=> bm!318233 m!5350285))

(assert (=> b!4559597 d!1419459))

(declare-fun bs!939829 () Bool)

(declare-fun d!1419483 () Bool)

(assert (= bs!939829 (and d!1419483 start!453116)))

(declare-fun lambda!179831 () Int)

(assert (=> bs!939829 (= lambda!179831 lambda!179705)))

(declare-fun bs!939830 () Bool)

(assert (= bs!939830 (and d!1419483 d!1419221)))

(assert (=> bs!939830 (not (= lambda!179831 lambda!179708))))

(declare-fun bs!939831 () Bool)

(assert (= bs!939831 (and d!1419483 d!1419225)))

(assert (=> bs!939831 (= lambda!179831 lambda!179714)))

(declare-fun bs!939832 () Bool)

(assert (= bs!939832 (and d!1419483 d!1419281)))

(assert (=> bs!939832 (= lambda!179831 lambda!179726)))

(declare-fun lt!1731120 () ListMap!3745)

(assert (=> d!1419483 (invariantList!1070 (toList!4484 lt!1731120))))

(declare-fun e!2842458 () ListMap!3745)

(assert (=> d!1419483 (= lt!1731120 e!2842458)))

(declare-fun c!779662 () Bool)

(assert (=> d!1419483 (= c!779662 ((_ is Cons!50856) (t!357954 (toList!4483 lm!1477))))))

(assert (=> d!1419483 (forall!10421 (t!357954 (toList!4483 lm!1477)) lambda!179831)))

(assert (=> d!1419483 (= (extractMap!1294 (t!357954 (toList!4483 lm!1477))) lt!1731120)))

(declare-fun b!4559963 () Bool)

(assert (=> b!4559963 (= e!2842458 (addToMapMapFromBucket!756 (_2!28988 (h!56763 (t!357954 (toList!4483 lm!1477)))) (extractMap!1294 (t!357954 (t!357954 (toList!4483 lm!1477))))))))

(declare-fun b!4559964 () Bool)

(assert (=> b!4559964 (= e!2842458 (ListMap!3746 Nil!50855))))

(assert (= (and d!1419483 c!779662) b!4559963))

(assert (= (and d!1419483 (not c!779662)) b!4559964))

(declare-fun m!5350313 () Bool)

(assert (=> d!1419483 m!5350313))

(declare-fun m!5350315 () Bool)

(assert (=> d!1419483 m!5350315))

(declare-fun m!5350317 () Bool)

(assert (=> b!4559963 m!5350317))

(assert (=> b!4559963 m!5350317))

(declare-fun m!5350319 () Bool)

(assert (=> b!4559963 m!5350319))

(assert (=> b!4559597 d!1419483))

(declare-fun tp!1339192 () Bool)

(declare-fun e!2842459 () Bool)

(declare-fun b!4559965 () Bool)

(assert (=> b!4559965 (= e!2842459 (and tp_is_empty!28229 tp_is_empty!28231 tp!1339192))))

(assert (=> b!4559616 (= tp!1339183 e!2842459)))

(assert (= (and b!4559616 ((_ is Cons!50855) (_2!28988 (h!56763 (toList!4483 lm!1477))))) b!4559965))

(declare-fun b!4559966 () Bool)

(declare-fun e!2842460 () Bool)

(declare-fun tp!1339193 () Bool)

(declare-fun tp!1339194 () Bool)

(assert (=> b!4559966 (= e!2842460 (and tp!1339193 tp!1339194))))

(assert (=> b!4559616 (= tp!1339184 e!2842460)))

(assert (= (and b!4559616 ((_ is Cons!50856) (t!357954 (toList!4483 lm!1477)))) b!4559966))

(declare-fun b!4559967 () Bool)

(declare-fun e!2842461 () Bool)

(declare-fun tp!1339195 () Bool)

(assert (=> b!4559967 (= e!2842461 (and tp_is_empty!28229 tp_is_empty!28231 tp!1339195))))

(assert (=> b!4559621 (= tp!1339187 e!2842461)))

(assert (= (and b!4559621 ((_ is Cons!50855) (t!357953 (t!357953 newBucket!178)))) b!4559967))

(declare-fun b_lambda!162075 () Bool)

(assert (= b_lambda!162043 (or start!453116 b_lambda!162075)))

(declare-fun bs!939833 () Bool)

(declare-fun d!1419485 () Bool)

(assert (= bs!939833 (and d!1419485 start!453116)))

(assert (=> bs!939833 (= (dynLambda!21270 lambda!179705 (h!56763 (t!357954 (toList!4483 lm!1477)))) (noDuplicateKeys!1238 (_2!28988 (h!56763 (t!357954 (toList!4483 lm!1477))))))))

(declare-fun m!5350321 () Bool)

(assert (=> bs!939833 m!5350321))

(assert (=> b!4559689 d!1419485))

(declare-fun b_lambda!162077 () Bool)

(assert (= b_lambda!162055 (or start!453116 b_lambda!162077)))

(assert (=> d!1419389 d!1419291))

(declare-fun b_lambda!162079 () Bool)

(assert (= b_lambda!162053 (or d!1419225 b_lambda!162079)))

(declare-fun bs!939834 () Bool)

(declare-fun d!1419487 () Bool)

(assert (= bs!939834 (and d!1419487 d!1419225)))

(assert (=> bs!939834 (= (dynLambda!21270 lambda!179714 (h!56763 (toList!4483 lm!1477))) (noDuplicateKeys!1238 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(assert (=> bs!939834 m!5349923))

(assert (=> b!4559771 d!1419487))

(declare-fun b_lambda!162081 () Bool)

(assert (= b_lambda!162039 (or d!1419285 b_lambda!162081)))

(declare-fun bs!939835 () Bool)

(declare-fun d!1419489 () Bool)

(assert (= bs!939835 (and d!1419489 d!1419285)))

(assert (=> bs!939835 (= (dynLambda!21272 lambda!179729 (h!56762 newBucket!178)) (= (hash!3030 hashF!1107 (_1!28987 (h!56762 newBucket!178))) hash!344))))

(declare-fun m!5350323 () Bool)

(assert (=> bs!939835 m!5350323))

(assert (=> b!4559658 d!1419489))

(declare-fun b_lambda!162083 () Bool)

(assert (= b_lambda!162057 (or d!1419221 b_lambda!162083)))

(declare-fun bs!939836 () Bool)

(declare-fun d!1419491 () Bool)

(assert (= bs!939836 (and d!1419491 d!1419221)))

(assert (=> bs!939836 (= (dynLambda!21270 lambda!179708 (h!56763 (toList!4483 lm!1477))) (allKeysSameHash!1092 (_2!28988 (h!56763 (toList!4483 lm!1477))) (_1!28988 (h!56763 (toList!4483 lm!1477))) hashF!1107))))

(declare-fun m!5350325 () Bool)

(assert (=> bs!939836 m!5350325))

(assert (=> b!4559924 d!1419491))

(declare-fun b_lambda!162085 () Bool)

(assert (= b_lambda!162041 (or d!1419281 b_lambda!162085)))

(declare-fun bs!939837 () Bool)

(declare-fun d!1419493 () Bool)

(assert (= bs!939837 (and d!1419493 d!1419281)))

(assert (=> bs!939837 (= (dynLambda!21270 lambda!179726 (h!56763 (toList!4483 lm!1477))) (noDuplicateKeys!1238 (_2!28988 (h!56763 (toList!4483 lm!1477)))))))

(assert (=> bs!939837 m!5349923))

(assert (=> b!4559687 d!1419493))

(check-sat (not b!4559886) (not d!1419401) (not b!4559659) (not d!1419431) (not d!1419427) (not b!4559686) (not bm!318233) (not b!4559928) (not d!1419321) (not b!4559710) (not b!4559887) (not b!4559783) (not b!4559894) (not b!4559845) (not b!4559965) (not b!4559690) (not b!4559688) (not bs!939837) (not d!1419383) (not d!1419459) (not bm!318232) (not bs!939835) (not b_lambda!162035) (not d!1419349) (not b!4559893) (not b!4559918) (not b!4559913) (not b!4559784) (not d!1419483) (not b!4559735) (not b!4559674) (not d!1419455) (not b!4559922) (not b!4559746) (not b!4559967) (not d!1419325) (not d!1419343) (not b!4559797) (not b!4559695) (not d!1419347) (not b!4559807) (not b!4559681) (not b!4559772) (not b!4559966) (not d!1419421) (not b_lambda!162079) (not b!4559959) (not b!4559678) (not b!4559963) (not b!4559734) (not b!4559917) (not d!1419333) (not b!4559762) (not b_lambda!162081) tp_is_empty!28229 (not d!1419327) (not b!4559691) (not d!1419361) (not d!1419341) (not b_lambda!162037) (not b!4559925) (not b!4559956) tp_is_empty!28231 (not b!4559685) (not b!4559747) (not bm!318231) (not b!4559733) (not bs!939833) (not b_lambda!162075) (not b!4559778) (not d!1419339) (not b!4559888) (not d!1419381) (not d!1419411) (not b!4559828) (not bs!939836) (not b!4559957) (not bs!939834) (not b_lambda!162077) (not b_lambda!162083) (not b!4559761) (not b_lambda!162085) (not b!4559745) (not b!4559843) (not d!1419391) (not b!4559919) (not d!1419407) (not b!4559764))
(check-sat)
