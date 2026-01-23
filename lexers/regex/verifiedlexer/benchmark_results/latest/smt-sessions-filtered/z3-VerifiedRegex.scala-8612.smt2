; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459100 () Bool)

(assert start!459100)

(declare-fun b!4599774 () Bool)

(declare-datatypes ((Unit!108343 0))(
  ( (Unit!108344) )
))
(declare-fun e!2869149 () Unit!108343)

(declare-fun Unit!108345 () Unit!108343)

(assert (=> b!4599774 (= e!2869149 Unit!108345)))

(declare-fun b!4599775 () Bool)

(declare-fun e!2869144 () Bool)

(declare-fun e!2869137 () Bool)

(assert (=> b!4599775 (= e!2869144 (not e!2869137))))

(declare-fun res!1924124 () Bool)

(assert (=> b!4599775 (=> res!1924124 e!2869137)))

(declare-datatypes ((K!12465 0))(
  ( (K!12466 (val!18243 Int)) )
))
(declare-datatypes ((V!12711 0))(
  ( (V!12712 (val!18244 Int)) )
))
(declare-datatypes ((tuple2!51754 0))(
  ( (tuple2!51755 (_1!29171 K!12465) (_2!29171 V!12711)) )
))
(declare-datatypes ((List!51222 0))(
  ( (Nil!51098) (Cons!51098 (h!57066 tuple2!51754) (t!358216 List!51222)) )
))
(declare-fun lt!1759288 () List!51222)

(declare-fun key!3287 () K!12465)

(declare-fun newBucket!178 () List!51222)

(declare-fun removePairForKey!951 (List!51222 K!12465) List!51222)

(assert (=> b!4599775 (= res!1924124 (not (= newBucket!178 (removePairForKey!951 lt!1759288 key!3287))))))

(declare-fun lt!1759289 () Unit!108343)

(declare-fun lambda!186420 () Int)

(declare-datatypes ((tuple2!51756 0))(
  ( (tuple2!51757 (_1!29172 (_ BitVec 64)) (_2!29172 List!51222)) )
))
(declare-fun lt!1759282 () tuple2!51756)

(declare-datatypes ((List!51223 0))(
  ( (Nil!51099) (Cons!51099 (h!57067 tuple2!51756) (t!358217 List!51223)) )
))
(declare-datatypes ((ListLongMap!3299 0))(
  ( (ListLongMap!3300 (toList!4667 List!51223)) )
))
(declare-fun lm!1477 () ListLongMap!3299)

(declare-fun forallContained!2863 (List!51223 Int tuple2!51756) Unit!108343)

(assert (=> b!4599775 (= lt!1759289 (forallContained!2863 (toList!4667 lm!1477) lambda!186420 lt!1759282))))

(declare-fun contains!14055 (List!51223 tuple2!51756) Bool)

(assert (=> b!4599775 (contains!14055 (toList!4667 lm!1477) lt!1759282)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4599775 (= lt!1759282 (tuple2!51757 hash!344 lt!1759288))))

(declare-fun lt!1759273 () Unit!108343)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!836 (List!51223 (_ BitVec 64) List!51222) Unit!108343)

(assert (=> b!4599775 (= lt!1759273 (lemmaGetValueByKeyImpliesContainsTuple!836 (toList!4667 lm!1477) hash!344 lt!1759288))))

(declare-fun apply!12063 (ListLongMap!3299 (_ BitVec 64)) List!51222)

(assert (=> b!4599775 (= lt!1759288 (apply!12063 lm!1477 hash!344))))

(declare-fun lt!1759275 () (_ BitVec 64))

(declare-fun contains!14056 (ListLongMap!3299 (_ BitVec 64)) Bool)

(assert (=> b!4599775 (contains!14056 lm!1477 lt!1759275)))

(declare-datatypes ((Hashable!5725 0))(
  ( (HashableExt!5724 (__x!31428 Int)) )
))
(declare-fun hashF!1107 () Hashable!5725)

(declare-fun lt!1759281 () Unit!108343)

(declare-fun lemmaInGenMapThenLongMapContainsHash!400 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> b!4599775 (= lt!1759281 (lemmaInGenMapThenLongMapContainsHash!400 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4599776 () Bool)

(declare-fun e!2869138 () Bool)

(declare-fun tp!1340509 () Bool)

(assert (=> b!4599776 (= e!2869138 tp!1340509)))

(declare-fun b!4599777 () Bool)

(declare-fun e!2869148 () Bool)

(declare-fun e!2869139 () Bool)

(assert (=> b!4599777 (= e!2869148 e!2869139)))

(declare-fun res!1924129 () Bool)

(assert (=> b!4599777 (=> res!1924129 e!2869139)))

(declare-fun lt!1759276 () ListLongMap!3299)

(declare-fun lt!1759277 () tuple2!51756)

(declare-fun lt!1759284 () ListLongMap!3299)

(declare-fun +!1754 (ListLongMap!3299 tuple2!51756) ListLongMap!3299)

(assert (=> b!4599777 (= res!1924129 (not (= lt!1759276 (+!1754 lt!1759284 lt!1759277))))))

(declare-fun tail!7960 (ListLongMap!3299) ListLongMap!3299)

(assert (=> b!4599777 (= lt!1759284 (tail!7960 lm!1477))))

(declare-fun b!4599778 () Bool)

(declare-fun res!1924121 () Bool)

(declare-fun e!2869150 () Bool)

(assert (=> b!4599778 (=> res!1924121 e!2869150)))

(declare-fun noDuplicateKeys!1326 (List!51222) Bool)

(assert (=> b!4599778 (= res!1924121 (not (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun b!4599779 () Bool)

(declare-fun res!1924115 () Bool)

(assert (=> b!4599779 (=> res!1924115 e!2869137)))

(get-info :version)

(assert (=> b!4599779 (= res!1924115 (or ((_ is Nil!51099) (toList!4667 lm!1477)) (not (= (_1!29172 (h!57067 (toList!4667 lm!1477))) hash!344))))))

(declare-fun b!4599780 () Bool)

(declare-fun e!2869146 () Unit!108343)

(declare-fun Unit!108346 () Unit!108343)

(assert (=> b!4599780 (= e!2869146 Unit!108346)))

(declare-fun res!1924114 () Bool)

(declare-fun e!2869140 () Bool)

(assert (=> start!459100 (=> (not res!1924114) (not e!2869140))))

(declare-fun forall!10612 (List!51223 Int) Bool)

(assert (=> start!459100 (= res!1924114 (forall!10612 (toList!4667 lm!1477) lambda!186420))))

(assert (=> start!459100 e!2869140))

(assert (=> start!459100 true))

(declare-fun inv!66649 (ListLongMap!3299) Bool)

(assert (=> start!459100 (and (inv!66649 lm!1477) e!2869138)))

(declare-fun tp_is_empty!28597 () Bool)

(assert (=> start!459100 tp_is_empty!28597))

(declare-fun e!2869143 () Bool)

(assert (=> start!459100 e!2869143))

(declare-fun b!4599781 () Bool)

(declare-fun res!1924126 () Bool)

(assert (=> b!4599781 (=> (not res!1924126) (not e!2869140))))

(declare-fun allKeysSameHashInMap!1437 (ListLongMap!3299 Hashable!5725) Bool)

(assert (=> b!4599781 (= res!1924126 (allKeysSameHashInMap!1437 lm!1477 hashF!1107))))

(declare-fun b!4599782 () Bool)

(declare-fun res!1924123 () Bool)

(assert (=> b!4599782 (=> (not res!1924123) (not e!2869140))))

(declare-datatypes ((ListMap!3929 0))(
  ( (ListMap!3930 (toList!4668 List!51222)) )
))
(declare-fun contains!14057 (ListMap!3929 K!12465) Bool)

(declare-fun extractMap!1386 (List!51223) ListMap!3929)

(assert (=> b!4599782 (= res!1924123 (contains!14057 (extractMap!1386 (toList!4667 lm!1477)) key!3287))))

(declare-fun b!4599783 () Bool)

(declare-fun res!1924117 () Bool)

(assert (=> b!4599783 (=> (not res!1924117) (not e!2869144))))

(declare-fun allKeysSameHash!1182 (List!51222 (_ BitVec 64) Hashable!5725) Bool)

(assert (=> b!4599783 (= res!1924117 (allKeysSameHash!1182 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4599784 () Bool)

(declare-fun e!2869142 () Bool)

(assert (=> b!4599784 (= e!2869142 e!2869150)))

(declare-fun res!1924127 () Bool)

(assert (=> b!4599784 (=> res!1924127 e!2869150)))

(declare-fun lt!1759272 () Bool)

(assert (=> b!4599784 (= res!1924127 lt!1759272)))

(declare-fun lt!1759286 () Unit!108343)

(assert (=> b!4599784 (= lt!1759286 e!2869146)))

(declare-fun c!787865 () Bool)

(assert (=> b!4599784 (= c!787865 lt!1759272)))

(declare-fun lt!1759280 () ListMap!3929)

(assert (=> b!4599784 (= lt!1759272 (contains!14057 lt!1759280 key!3287))))

(declare-fun b!4599785 () Bool)

(declare-fun e!2869141 () Bool)

(assert (=> b!4599785 (= e!2869141 false)))

(declare-fun b!4599786 () Bool)

(declare-fun tp_is_empty!28599 () Bool)

(declare-fun tp!1340508 () Bool)

(assert (=> b!4599786 (= e!2869143 (and tp_is_empty!28597 tp_is_empty!28599 tp!1340508))))

(declare-fun b!4599787 () Bool)

(declare-fun Unit!108347 () Unit!108343)

(assert (=> b!4599787 (= e!2869149 Unit!108347)))

(declare-fun lt!1759271 () Unit!108343)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!296 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> b!4599787 (= lt!1759271 (lemmaNotInItsHashBucketThenNotInMap!296 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4599787 false))

(declare-fun b!4599788 () Bool)

(assert (=> b!4599788 (= e!2869139 e!2869142)))

(declare-fun res!1924128 () Bool)

(assert (=> b!4599788 (=> res!1924128 e!2869142)))

(assert (=> b!4599788 (= res!1924128 (not (= lt!1759280 (extractMap!1386 (t!358217 (toList!4667 lm!1477))))))))

(assert (=> b!4599788 (= lt!1759280 (extractMap!1386 (toList!4667 lt!1759284)))))

(declare-fun b!4599789 () Bool)

(declare-fun res!1924125 () Bool)

(assert (=> b!4599789 (=> res!1924125 e!2869137)))

(assert (=> b!4599789 (= res!1924125 (not (noDuplicateKeys!1326 newBucket!178)))))

(declare-fun b!4599790 () Bool)

(declare-fun e!2869147 () Bool)

(declare-fun e!2869145 () Bool)

(assert (=> b!4599790 (= e!2869147 e!2869145)))

(declare-fun res!1924122 () Bool)

(assert (=> b!4599790 (=> res!1924122 e!2869145)))

(declare-fun lt!1759278 () List!51223)

(declare-fun containsKeyBiggerList!282 (List!51223 K!12465) Bool)

(assert (=> b!4599790 (= res!1924122 (not (containsKeyBiggerList!282 lt!1759278 key!3287)))))

(assert (=> b!4599790 (= lt!1759278 (Cons!51099 (h!57067 (toList!4667 lm!1477)) Nil!51099))))

(declare-fun b!4599791 () Bool)

(declare-fun res!1924118 () Bool)

(assert (=> b!4599791 (=> res!1924118 e!2869150)))

(assert (=> b!4599791 (= res!1924118 (not (forall!10612 (toList!4667 lm!1477) lambda!186420)))))

(declare-fun b!4599792 () Bool)

(assert (=> b!4599792 (= e!2869140 e!2869144)))

(declare-fun res!1924119 () Bool)

(assert (=> b!4599792 (=> (not res!1924119) (not e!2869144))))

(assert (=> b!4599792 (= res!1924119 (= lt!1759275 hash!344))))

(declare-fun hash!3231 (Hashable!5725 K!12465) (_ BitVec 64))

(assert (=> b!4599792 (= lt!1759275 (hash!3231 hashF!1107 key!3287))))

(declare-fun b!4599793 () Bool)

(assert (=> b!4599793 (= e!2869137 e!2869147)))

(declare-fun res!1924116 () Bool)

(assert (=> b!4599793 (=> res!1924116 e!2869147)))

(declare-fun lt!1759285 () Bool)

(assert (=> b!4599793 (= res!1924116 lt!1759285)))

(declare-fun lt!1759283 () Unit!108343)

(assert (=> b!4599793 (= lt!1759283 e!2869149)))

(declare-fun c!787866 () Bool)

(assert (=> b!4599793 (= c!787866 lt!1759285)))

(declare-fun containsKey!2170 (List!51222 K!12465) Bool)

(assert (=> b!4599793 (= lt!1759285 (not (containsKey!2170 (_2!29172 (h!57067 (toList!4667 lm!1477))) key!3287)))))

(declare-fun b!4599794 () Bool)

(assert (=> b!4599794 (= e!2869150 (= (removePairForKey!951 (_2!29172 (h!57067 (toList!4667 lm!1477))) key!3287) newBucket!178))))

(declare-fun b!4599795 () Bool)

(assert (=> b!4599795 (= e!2869145 e!2869148)))

(declare-fun res!1924130 () Bool)

(assert (=> b!4599795 (=> res!1924130 e!2869148)))

(declare-fun tail!7961 (List!51223) List!51223)

(assert (=> b!4599795 (= res!1924130 (not (= (t!358217 (toList!4667 lm!1477)) (tail!7961 (toList!4667 lt!1759276)))))))

(assert (=> b!4599795 (= lt!1759276 (+!1754 lm!1477 lt!1759277))))

(declare-fun eq!733 (ListMap!3929 ListMap!3929) Bool)

(declare-fun -!502 (ListMap!3929 K!12465) ListMap!3929)

(assert (=> b!4599795 (eq!733 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)) (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))))

(assert (=> b!4599795 (= lt!1759277 (tuple2!51757 hash!344 newBucket!178))))

(declare-fun lt!1759287 () Unit!108343)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!92 ((_ BitVec 64) List!51222 List!51222 K!12465 Hashable!5725) Unit!108343)

(assert (=> b!4599795 (= lt!1759287 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!92 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4599795 (contains!14057 (extractMap!1386 lt!1759278) key!3287)))

(declare-fun lt!1759274 () Unit!108343)

(declare-fun lemmaListContainsThenExtractedMapContains!260 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> b!4599795 (= lt!1759274 (lemmaListContainsThenExtractedMapContains!260 (ListLongMap!3300 lt!1759278) key!3287 hashF!1107))))

(declare-fun b!4599796 () Bool)

(declare-fun Unit!108348 () Unit!108343)

(assert (=> b!4599796 (= e!2869146 Unit!108348)))

(declare-fun lt!1759279 () Unit!108343)

(assert (=> b!4599796 (= lt!1759279 (lemmaInGenMapThenLongMapContainsHash!400 lt!1759284 key!3287 hashF!1107))))

(declare-fun res!1924120 () Bool)

(assert (=> b!4599796 (= res!1924120 (contains!14056 lt!1759284 lt!1759275))))

(assert (=> b!4599796 (=> (not res!1924120) (not e!2869141))))

(assert (=> b!4599796 e!2869141))

(assert (= (and start!459100 res!1924114) b!4599781))

(assert (= (and b!4599781 res!1924126) b!4599782))

(assert (= (and b!4599782 res!1924123) b!4599792))

(assert (= (and b!4599792 res!1924119) b!4599783))

(assert (= (and b!4599783 res!1924117) b!4599775))

(assert (= (and b!4599775 (not res!1924124)) b!4599789))

(assert (= (and b!4599789 (not res!1924125)) b!4599779))

(assert (= (and b!4599779 (not res!1924115)) b!4599793))

(assert (= (and b!4599793 c!787866) b!4599787))

(assert (= (and b!4599793 (not c!787866)) b!4599774))

(assert (= (and b!4599793 (not res!1924116)) b!4599790))

(assert (= (and b!4599790 (not res!1924122)) b!4599795))

(assert (= (and b!4599795 (not res!1924130)) b!4599777))

(assert (= (and b!4599777 (not res!1924129)) b!4599788))

(assert (= (and b!4599788 (not res!1924128)) b!4599784))

(assert (= (and b!4599784 c!787865) b!4599796))

(assert (= (and b!4599784 (not c!787865)) b!4599780))

(assert (= (and b!4599796 res!1924120) b!4599785))

(assert (= (and b!4599784 (not res!1924127)) b!4599791))

(assert (= (and b!4599791 (not res!1924118)) b!4599778))

(assert (= (and b!4599778 (not res!1924121)) b!4599794))

(assert (= start!459100 b!4599776))

(assert (= (and start!459100 ((_ is Cons!51098) newBucket!178)) b!4599786))

(declare-fun m!5426705 () Bool)

(assert (=> b!4599789 m!5426705))

(declare-fun m!5426707 () Bool)

(assert (=> b!4599775 m!5426707))

(declare-fun m!5426709 () Bool)

(assert (=> b!4599775 m!5426709))

(declare-fun m!5426711 () Bool)

(assert (=> b!4599775 m!5426711))

(declare-fun m!5426713 () Bool)

(assert (=> b!4599775 m!5426713))

(declare-fun m!5426715 () Bool)

(assert (=> b!4599775 m!5426715))

(declare-fun m!5426717 () Bool)

(assert (=> b!4599775 m!5426717))

(declare-fun m!5426719 () Bool)

(assert (=> b!4599775 m!5426719))

(declare-fun m!5426721 () Bool)

(assert (=> b!4599796 m!5426721))

(declare-fun m!5426723 () Bool)

(assert (=> b!4599796 m!5426723))

(declare-fun m!5426725 () Bool)

(assert (=> b!4599794 m!5426725))

(declare-fun m!5426727 () Bool)

(assert (=> b!4599788 m!5426727))

(declare-fun m!5426729 () Bool)

(assert (=> b!4599788 m!5426729))

(declare-fun m!5426731 () Bool)

(assert (=> b!4599795 m!5426731))

(declare-fun m!5426733 () Bool)

(assert (=> b!4599795 m!5426733))

(assert (=> b!4599795 m!5426731))

(declare-fun m!5426735 () Bool)

(assert (=> b!4599795 m!5426735))

(declare-fun m!5426737 () Bool)

(assert (=> b!4599795 m!5426737))

(declare-fun m!5426739 () Bool)

(assert (=> b!4599795 m!5426739))

(assert (=> b!4599795 m!5426737))

(declare-fun m!5426741 () Bool)

(assert (=> b!4599795 m!5426741))

(declare-fun m!5426743 () Bool)

(assert (=> b!4599795 m!5426743))

(declare-fun m!5426745 () Bool)

(assert (=> b!4599795 m!5426745))

(declare-fun m!5426747 () Bool)

(assert (=> b!4599795 m!5426747))

(declare-fun m!5426749 () Bool)

(assert (=> b!4599795 m!5426749))

(assert (=> b!4599795 m!5426747))

(assert (=> b!4599795 m!5426741))

(declare-fun m!5426751 () Bool)

(assert (=> b!4599783 m!5426751))

(declare-fun m!5426753 () Bool)

(assert (=> b!4599791 m!5426753))

(declare-fun m!5426755 () Bool)

(assert (=> b!4599787 m!5426755))

(declare-fun m!5426757 () Bool)

(assert (=> b!4599793 m!5426757))

(declare-fun m!5426759 () Bool)

(assert (=> b!4599792 m!5426759))

(declare-fun m!5426761 () Bool)

(assert (=> b!4599778 m!5426761))

(assert (=> start!459100 m!5426753))

(declare-fun m!5426763 () Bool)

(assert (=> start!459100 m!5426763))

(declare-fun m!5426765 () Bool)

(assert (=> b!4599790 m!5426765))

(declare-fun m!5426767 () Bool)

(assert (=> b!4599777 m!5426767))

(declare-fun m!5426769 () Bool)

(assert (=> b!4599777 m!5426769))

(declare-fun m!5426771 () Bool)

(assert (=> b!4599782 m!5426771))

(assert (=> b!4599782 m!5426771))

(declare-fun m!5426773 () Bool)

(assert (=> b!4599782 m!5426773))

(declare-fun m!5426775 () Bool)

(assert (=> b!4599781 m!5426775))

(declare-fun m!5426777 () Bool)

(assert (=> b!4599784 m!5426777))

(check-sat (not b!4599787) (not b!4599782) (not b!4599789) tp_is_empty!28599 tp_is_empty!28597 (not b!4599796) (not b!4599795) (not b!4599792) (not start!459100) (not b!4599790) (not b!4599778) (not b!4599786) (not b!4599794) (not b!4599781) (not b!4599788) (not b!4599791) (not b!4599784) (not b!4599793) (not b!4599777) (not b!4599775) (not b!4599783) (not b!4599776))
(check-sat)
(get-model)

(declare-fun bs!1011668 () Bool)

(declare-fun d!1448273 () Bool)

(assert (= bs!1011668 (and d!1448273 start!459100)))

(declare-fun lambda!186423 () Int)

(assert (=> bs!1011668 (= lambda!186423 lambda!186420)))

(assert (=> d!1448273 (contains!14056 lt!1759284 (hash!3231 hashF!1107 key!3287))))

(declare-fun lt!1759292 () Unit!108343)

(declare-fun choose!30838 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> d!1448273 (= lt!1759292 (choose!30838 lt!1759284 key!3287 hashF!1107))))

(assert (=> d!1448273 (forall!10612 (toList!4667 lt!1759284) lambda!186423)))

(assert (=> d!1448273 (= (lemmaInGenMapThenLongMapContainsHash!400 lt!1759284 key!3287 hashF!1107) lt!1759292)))

(declare-fun bs!1011669 () Bool)

(assert (= bs!1011669 d!1448273))

(assert (=> bs!1011669 m!5426759))

(assert (=> bs!1011669 m!5426759))

(declare-fun m!5426779 () Bool)

(assert (=> bs!1011669 m!5426779))

(declare-fun m!5426781 () Bool)

(assert (=> bs!1011669 m!5426781))

(declare-fun m!5426783 () Bool)

(assert (=> bs!1011669 m!5426783))

(assert (=> b!4599796 d!1448273))

(declare-fun d!1448275 () Bool)

(declare-fun e!2869162 () Bool)

(assert (=> d!1448275 e!2869162))

(declare-fun res!1924133 () Bool)

(assert (=> d!1448275 (=> res!1924133 e!2869162)))

(declare-fun lt!1759310 () Bool)

(assert (=> d!1448275 (= res!1924133 (not lt!1759310))))

(declare-fun lt!1759307 () Bool)

(assert (=> d!1448275 (= lt!1759310 lt!1759307)))

(declare-fun lt!1759309 () Unit!108343)

(declare-fun e!2869161 () Unit!108343)

(assert (=> d!1448275 (= lt!1759309 e!2869161)))

(declare-fun c!787875 () Bool)

(assert (=> d!1448275 (= c!787875 lt!1759307)))

(declare-fun containsKey!2173 (List!51223 (_ BitVec 64)) Bool)

(assert (=> d!1448275 (= lt!1759307 (containsKey!2173 (toList!4667 lt!1759284) lt!1759275))))

(assert (=> d!1448275 (= (contains!14056 lt!1759284 lt!1759275) lt!1759310)))

(declare-fun b!4599815 () Bool)

(declare-fun lt!1759308 () Unit!108343)

(assert (=> b!4599815 (= e!2869161 lt!1759308)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (List!51223 (_ BitVec 64)) Unit!108343)

(assert (=> b!4599815 (= lt!1759308 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lt!1759284) lt!1759275))))

(declare-datatypes ((Option!11398 0))(
  ( (None!11397) (Some!11397 (v!45387 List!51222)) )
))
(declare-fun isDefined!8666 (Option!11398) Bool)

(declare-fun getValueByKey!1318 (List!51223 (_ BitVec 64)) Option!11398)

(assert (=> b!4599815 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275))))

(declare-fun b!4599816 () Bool)

(declare-fun Unit!108355 () Unit!108343)

(assert (=> b!4599816 (= e!2869161 Unit!108355)))

(declare-fun b!4599817 () Bool)

(assert (=> b!4599817 (= e!2869162 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275)))))

(assert (= (and d!1448275 c!787875) b!4599815))

(assert (= (and d!1448275 (not c!787875)) b!4599816))

(assert (= (and d!1448275 (not res!1924133)) b!4599817))

(declare-fun m!5426795 () Bool)

(assert (=> d!1448275 m!5426795))

(declare-fun m!5426797 () Bool)

(assert (=> b!4599815 m!5426797))

(declare-fun m!5426799 () Bool)

(assert (=> b!4599815 m!5426799))

(assert (=> b!4599815 m!5426799))

(declare-fun m!5426801 () Bool)

(assert (=> b!4599815 m!5426801))

(assert (=> b!4599817 m!5426799))

(assert (=> b!4599817 m!5426799))

(assert (=> b!4599817 m!5426801))

(assert (=> b!4599796 d!1448275))

(declare-fun bs!1011676 () Bool)

(declare-fun d!1448283 () Bool)

(assert (= bs!1011676 (and d!1448283 start!459100)))

(declare-fun lambda!186430 () Int)

(assert (=> bs!1011676 (= lambda!186430 lambda!186420)))

(declare-fun bs!1011677 () Bool)

(assert (= bs!1011677 (and d!1448283 d!1448273)))

(assert (=> bs!1011677 (= lambda!186430 lambda!186423)))

(declare-fun lt!1759340 () ListMap!3929)

(declare-fun invariantList!1128 (List!51222) Bool)

(assert (=> d!1448283 (invariantList!1128 (toList!4668 lt!1759340))))

(declare-fun e!2869193 () ListMap!3929)

(assert (=> d!1448283 (= lt!1759340 e!2869193)))

(declare-fun c!787884 () Bool)

(assert (=> d!1448283 (= c!787884 ((_ is Cons!51099) (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))

(assert (=> d!1448283 (forall!10612 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099) lambda!186430)))

(assert (=> d!1448283 (= (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) lt!1759340)))

(declare-fun b!4599856 () Bool)

(declare-fun addToMapMapFromBucket!818 (List!51222 ListMap!3929) ListMap!3929)

(assert (=> b!4599856 (= e!2869193 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(declare-fun b!4599857 () Bool)

(assert (=> b!4599857 (= e!2869193 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448283 c!787884) b!4599856))

(assert (= (and d!1448283 (not c!787884)) b!4599857))

(declare-fun m!5426855 () Bool)

(assert (=> d!1448283 m!5426855))

(declare-fun m!5426857 () Bool)

(assert (=> d!1448283 m!5426857))

(declare-fun m!5426859 () Bool)

(assert (=> b!4599856 m!5426859))

(assert (=> b!4599856 m!5426859))

(declare-fun m!5426861 () Bool)

(assert (=> b!4599856 m!5426861))

(assert (=> b!4599795 d!1448283))

(declare-fun d!1448303 () Bool)

(declare-fun e!2869209 () Bool)

(assert (=> d!1448303 e!2869209))

(declare-fun res!1924170 () Bool)

(assert (=> d!1448303 (=> (not res!1924170) (not e!2869209))))

(declare-fun lt!1759359 () ListMap!3929)

(assert (=> d!1448303 (= res!1924170 (not (contains!14057 lt!1759359 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!223 (List!51222 K!12465) List!51222)

(assert (=> d!1448303 (= lt!1759359 (ListMap!3930 (removePresrvNoDuplicatedKeys!223 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287)))))

(assert (=> d!1448303 (= (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287) lt!1759359)))

(declare-fun b!4599880 () Bool)

(declare-datatypes ((List!51225 0))(
  ( (Nil!51101) (Cons!51101 (h!57071 K!12465) (t!358219 List!51225)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8654 (List!51225) (InoxSet K!12465))

(declare-fun keys!17896 (ListMap!3929) List!51225)

(assert (=> b!4599880 (= e!2869209 (= ((_ map and) (content!8654 (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) ((_ map not) (store ((as const (Array K!12465 Bool)) false) key!3287 true))) (content!8654 (keys!17896 lt!1759359))))))

(assert (= (and d!1448303 res!1924170) b!4599880))

(declare-fun m!5426899 () Bool)

(assert (=> d!1448303 m!5426899))

(declare-fun m!5426901 () Bool)

(assert (=> d!1448303 m!5426901))

(declare-fun m!5426903 () Bool)

(assert (=> b!4599880 m!5426903))

(declare-fun m!5426905 () Bool)

(assert (=> b!4599880 m!5426905))

(declare-fun m!5426907 () Bool)

(assert (=> b!4599880 m!5426907))

(assert (=> b!4599880 m!5426747))

(declare-fun m!5426909 () Bool)

(assert (=> b!4599880 m!5426909))

(assert (=> b!4599880 m!5426909))

(declare-fun m!5426911 () Bool)

(assert (=> b!4599880 m!5426911))

(assert (=> b!4599880 m!5426905))

(assert (=> b!4599795 d!1448303))

(declare-fun d!1448317 () Bool)

(declare-fun e!2869236 () Bool)

(assert (=> d!1448317 e!2869236))

(declare-fun res!1924190 () Bool)

(assert (=> d!1448317 (=> (not res!1924190) (not e!2869236))))

(declare-fun lt!1759392 () ListLongMap!3299)

(assert (=> d!1448317 (= res!1924190 (contains!14056 lt!1759392 (_1!29172 lt!1759277)))))

(declare-fun lt!1759393 () List!51223)

(assert (=> d!1448317 (= lt!1759392 (ListLongMap!3300 lt!1759393))))

(declare-fun lt!1759395 () Unit!108343)

(declare-fun lt!1759394 () Unit!108343)

(assert (=> d!1448317 (= lt!1759395 lt!1759394)))

(assert (=> d!1448317 (= (getValueByKey!1318 lt!1759393 (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277)))))

(declare-fun lemmaContainsTupThenGetReturnValue!800 (List!51223 (_ BitVec 64) List!51222) Unit!108343)

(assert (=> d!1448317 (= lt!1759394 (lemmaContainsTupThenGetReturnValue!800 lt!1759393 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(declare-fun insertStrictlySorted!492 (List!51223 (_ BitVec 64) List!51222) List!51223)

(assert (=> d!1448317 (= lt!1759393 (insertStrictlySorted!492 (toList!4667 lm!1477) (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(assert (=> d!1448317 (= (+!1754 lm!1477 lt!1759277) lt!1759392)))

(declare-fun b!4599918 () Bool)

(declare-fun res!1924191 () Bool)

(assert (=> b!4599918 (=> (not res!1924191) (not e!2869236))))

(assert (=> b!4599918 (= res!1924191 (= (getValueByKey!1318 (toList!4667 lt!1759392) (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277))))))

(declare-fun b!4599919 () Bool)

(assert (=> b!4599919 (= e!2869236 (contains!14055 (toList!4667 lt!1759392) lt!1759277))))

(assert (= (and d!1448317 res!1924190) b!4599918))

(assert (= (and b!4599918 res!1924191) b!4599919))

(declare-fun m!5426935 () Bool)

(assert (=> d!1448317 m!5426935))

(declare-fun m!5426937 () Bool)

(assert (=> d!1448317 m!5426937))

(declare-fun m!5426939 () Bool)

(assert (=> d!1448317 m!5426939))

(declare-fun m!5426941 () Bool)

(assert (=> d!1448317 m!5426941))

(declare-fun m!5426943 () Bool)

(assert (=> b!4599918 m!5426943))

(declare-fun m!5426945 () Bool)

(assert (=> b!4599919 m!5426945))

(assert (=> b!4599795 d!1448317))

(declare-fun d!1448323 () Bool)

(declare-fun content!8656 (List!51222) (InoxSet tuple2!51754))

(assert (=> d!1448323 (= (eq!733 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)) (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287)) (= (content!8656 (toList!4668 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)))) (content!8656 (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287)))))))

(declare-fun bs!1011695 () Bool)

(assert (= bs!1011695 d!1448323))

(declare-fun m!5426969 () Bool)

(assert (=> bs!1011695 m!5426969))

(declare-fun m!5426971 () Bool)

(assert (=> bs!1011695 m!5426971))

(assert (=> b!4599795 d!1448323))

(declare-fun bs!1011700 () Bool)

(declare-fun d!1448329 () Bool)

(assert (= bs!1011700 (and d!1448329 start!459100)))

(declare-fun lambda!186439 () Int)

(assert (=> bs!1011700 (= lambda!186439 lambda!186420)))

(declare-fun bs!1011701 () Bool)

(assert (= bs!1011701 (and d!1448329 d!1448273)))

(assert (=> bs!1011701 (= lambda!186439 lambda!186423)))

(declare-fun bs!1011702 () Bool)

(assert (= bs!1011702 (and d!1448329 d!1448283)))

(assert (=> bs!1011702 (= lambda!186439 lambda!186430)))

(declare-fun lt!1759405 () ListMap!3929)

(assert (=> d!1448329 (invariantList!1128 (toList!4668 lt!1759405))))

(declare-fun e!2869244 () ListMap!3929)

(assert (=> d!1448329 (= lt!1759405 e!2869244)))

(declare-fun c!787902 () Bool)

(assert (=> d!1448329 (= c!787902 ((_ is Cons!51099) lt!1759278))))

(assert (=> d!1448329 (forall!10612 lt!1759278 lambda!186439)))

(assert (=> d!1448329 (= (extractMap!1386 lt!1759278) lt!1759405)))

(declare-fun b!4599933 () Bool)

(assert (=> b!4599933 (= e!2869244 (addToMapMapFromBucket!818 (_2!29172 (h!57067 lt!1759278)) (extractMap!1386 (t!358217 lt!1759278))))))

(declare-fun b!4599934 () Bool)

(assert (=> b!4599934 (= e!2869244 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448329 c!787902) b!4599933))

(assert (= (and d!1448329 (not c!787902)) b!4599934))

(declare-fun m!5426979 () Bool)

(assert (=> d!1448329 m!5426979))

(declare-fun m!5426981 () Bool)

(assert (=> d!1448329 m!5426981))

(declare-fun m!5426983 () Bool)

(assert (=> b!4599933 m!5426983))

(assert (=> b!4599933 m!5426983))

(declare-fun m!5426985 () Bool)

(assert (=> b!4599933 m!5426985))

(assert (=> b!4599795 d!1448329))

(declare-fun d!1448335 () Bool)

(assert (=> d!1448335 (eq!733 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)) (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))))

(declare-fun lt!1759420 () Unit!108343)

(declare-fun choose!30839 ((_ BitVec 64) List!51222 List!51222 K!12465 Hashable!5725) Unit!108343)

(assert (=> d!1448335 (= lt!1759420 (choose!30839 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1448335 (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477))))))

(assert (=> d!1448335 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!92 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1759420)))

(declare-fun bs!1011730 () Bool)

(assert (= bs!1011730 d!1448335))

(declare-fun m!5427041 () Bool)

(assert (=> bs!1011730 m!5427041))

(assert (=> bs!1011730 m!5426741))

(declare-fun m!5427043 () Bool)

(assert (=> bs!1011730 m!5427043))

(declare-fun m!5427045 () Bool)

(assert (=> bs!1011730 m!5427045))

(assert (=> bs!1011730 m!5426747))

(assert (=> bs!1011730 m!5426747))

(assert (=> bs!1011730 m!5426741))

(assert (=> bs!1011730 m!5427041))

(assert (=> bs!1011730 m!5426761))

(assert (=> b!4599795 d!1448335))

(declare-fun bs!1011743 () Bool)

(declare-fun d!1448351 () Bool)

(assert (= bs!1011743 (and d!1448351 start!459100)))

(declare-fun lambda!186451 () Int)

(assert (=> bs!1011743 (= lambda!186451 lambda!186420)))

(declare-fun bs!1011744 () Bool)

(assert (= bs!1011744 (and d!1448351 d!1448273)))

(assert (=> bs!1011744 (= lambda!186451 lambda!186423)))

(declare-fun bs!1011745 () Bool)

(assert (= bs!1011745 (and d!1448351 d!1448283)))

(assert (=> bs!1011745 (= lambda!186451 lambda!186430)))

(declare-fun bs!1011746 () Bool)

(assert (= bs!1011746 (and d!1448351 d!1448329)))

(assert (=> bs!1011746 (= lambda!186451 lambda!186439)))

(assert (=> d!1448351 (contains!14057 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278))) key!3287)))

(declare-fun lt!1759435 () Unit!108343)

(declare-fun choose!30840 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> d!1448351 (= lt!1759435 (choose!30840 (ListLongMap!3300 lt!1759278) key!3287 hashF!1107))))

(assert (=> d!1448351 (forall!10612 (toList!4667 (ListLongMap!3300 lt!1759278)) lambda!186451)))

(assert (=> d!1448351 (= (lemmaListContainsThenExtractedMapContains!260 (ListLongMap!3300 lt!1759278) key!3287 hashF!1107) lt!1759435)))

(declare-fun bs!1011747 () Bool)

(assert (= bs!1011747 d!1448351))

(declare-fun m!5427087 () Bool)

(assert (=> bs!1011747 m!5427087))

(assert (=> bs!1011747 m!5427087))

(declare-fun m!5427089 () Bool)

(assert (=> bs!1011747 m!5427089))

(declare-fun m!5427091 () Bool)

(assert (=> bs!1011747 m!5427091))

(declare-fun m!5427093 () Bool)

(assert (=> bs!1011747 m!5427093))

(assert (=> b!4599795 d!1448351))

(declare-fun b!4599998 () Bool)

(declare-fun e!2869292 () List!51225)

(assert (=> b!4599998 (= e!2869292 (keys!17896 (extractMap!1386 lt!1759278)))))

(declare-fun b!4599999 () Bool)

(declare-fun e!2869287 () Bool)

(declare-fun contains!14059 (List!51225 K!12465) Bool)

(assert (=> b!4599999 (= e!2869287 (not (contains!14059 (keys!17896 (extractMap!1386 lt!1759278)) key!3287)))))

(declare-fun d!1448363 () Bool)

(declare-fun e!2869290 () Bool)

(assert (=> d!1448363 e!2869290))

(declare-fun res!1924221 () Bool)

(assert (=> d!1448363 (=> res!1924221 e!2869290)))

(assert (=> d!1448363 (= res!1924221 e!2869287)))

(declare-fun res!1924220 () Bool)

(assert (=> d!1448363 (=> (not res!1924220) (not e!2869287))))

(declare-fun lt!1759461 () Bool)

(assert (=> d!1448363 (= res!1924220 (not lt!1759461))))

(declare-fun lt!1759455 () Bool)

(assert (=> d!1448363 (= lt!1759461 lt!1759455)))

(declare-fun lt!1759459 () Unit!108343)

(declare-fun e!2869289 () Unit!108343)

(assert (=> d!1448363 (= lt!1759459 e!2869289)))

(declare-fun c!787917 () Bool)

(assert (=> d!1448363 (= c!787917 lt!1759455)))

(declare-fun containsKey!2174 (List!51222 K!12465) Bool)

(assert (=> d!1448363 (= lt!1759455 (containsKey!2174 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(assert (=> d!1448363 (= (contains!14057 (extractMap!1386 lt!1759278) key!3287) lt!1759461)))

(declare-fun b!4600000 () Bool)

(declare-fun getKeysList!577 (List!51222) List!51225)

(assert (=> b!4600000 (= e!2869292 (getKeysList!577 (toList!4668 (extractMap!1386 lt!1759278))))))

(declare-fun b!4600001 () Bool)

(declare-fun e!2869288 () Bool)

(assert (=> b!4600001 (= e!2869290 e!2869288)))

(declare-fun res!1924222 () Bool)

(assert (=> b!4600001 (=> (not res!1924222) (not e!2869288))))

(declare-datatypes ((Option!11399 0))(
  ( (None!11398) (Some!11398 (v!45388 V!12711)) )
))
(declare-fun isDefined!8667 (Option!11399) Bool)

(declare-fun getValueByKey!1319 (List!51222 K!12465) Option!11399)

(assert (=> b!4600001 (= res!1924222 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287)))))

(declare-fun b!4600002 () Bool)

(assert (=> b!4600002 (= e!2869288 (contains!14059 (keys!17896 (extractMap!1386 lt!1759278)) key!3287))))

(declare-fun b!4600003 () Bool)

(declare-fun lt!1759462 () Unit!108343)

(assert (=> b!4600003 (= e!2869289 lt!1759462)))

(declare-fun lt!1759457 () Unit!108343)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (List!51222 K!12465) Unit!108343)

(assert (=> b!4600003 (= lt!1759457 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(assert (=> b!4600003 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(declare-fun lt!1759458 () Unit!108343)

(assert (=> b!4600003 (= lt!1759458 lt!1759457)))

(declare-fun lemmaInListThenGetKeysListContains!573 (List!51222 K!12465) Unit!108343)

(assert (=> b!4600003 (= lt!1759462 (lemmaInListThenGetKeysListContains!573 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(declare-fun call!320991 () Bool)

(assert (=> b!4600003 call!320991))

(declare-fun b!4600004 () Bool)

(declare-fun e!2869291 () Unit!108343)

(declare-fun Unit!108356 () Unit!108343)

(assert (=> b!4600004 (= e!2869291 Unit!108356)))

(declare-fun bm!320986 () Bool)

(assert (=> bm!320986 (= call!320991 (contains!14059 e!2869292 key!3287))))

(declare-fun c!787916 () Bool)

(assert (=> bm!320986 (= c!787916 c!787917)))

(declare-fun b!4600005 () Bool)

(assert (=> b!4600005 (= e!2869289 e!2869291)))

(declare-fun c!787915 () Bool)

(assert (=> b!4600005 (= c!787915 call!320991)))

(declare-fun b!4600006 () Bool)

(assert (=> b!4600006 false))

(declare-fun lt!1759460 () Unit!108343)

(declare-fun lt!1759456 () Unit!108343)

(assert (=> b!4600006 (= lt!1759460 lt!1759456)))

(assert (=> b!4600006 (containsKey!2174 (toList!4668 (extractMap!1386 lt!1759278)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!576 (List!51222 K!12465) Unit!108343)

(assert (=> b!4600006 (= lt!1759456 (lemmaInGetKeysListThenContainsKey!576 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(declare-fun Unit!108357 () Unit!108343)

(assert (=> b!4600006 (= e!2869291 Unit!108357)))

(assert (= (and d!1448363 c!787917) b!4600003))

(assert (= (and d!1448363 (not c!787917)) b!4600005))

(assert (= (and b!4600005 c!787915) b!4600006))

(assert (= (and b!4600005 (not c!787915)) b!4600004))

(assert (= (or b!4600003 b!4600005) bm!320986))

(assert (= (and bm!320986 c!787916) b!4600000))

(assert (= (and bm!320986 (not c!787916)) b!4599998))

(assert (= (and d!1448363 res!1924220) b!4599999))

(assert (= (and d!1448363 (not res!1924221)) b!4600001))

(assert (= (and b!4600001 res!1924222) b!4600002))

(declare-fun m!5427105 () Bool)

(assert (=> d!1448363 m!5427105))

(declare-fun m!5427107 () Bool)

(assert (=> bm!320986 m!5427107))

(assert (=> b!4599999 m!5426731))

(declare-fun m!5427109 () Bool)

(assert (=> b!4599999 m!5427109))

(assert (=> b!4599999 m!5427109))

(declare-fun m!5427111 () Bool)

(assert (=> b!4599999 m!5427111))

(declare-fun m!5427113 () Bool)

(assert (=> b!4600001 m!5427113))

(assert (=> b!4600001 m!5427113))

(declare-fun m!5427115 () Bool)

(assert (=> b!4600001 m!5427115))

(assert (=> b!4600006 m!5427105))

(declare-fun m!5427117 () Bool)

(assert (=> b!4600006 m!5427117))

(declare-fun m!5427119 () Bool)

(assert (=> b!4600003 m!5427119))

(assert (=> b!4600003 m!5427113))

(assert (=> b!4600003 m!5427113))

(assert (=> b!4600003 m!5427115))

(declare-fun m!5427121 () Bool)

(assert (=> b!4600003 m!5427121))

(assert (=> b!4600002 m!5426731))

(assert (=> b!4600002 m!5427109))

(assert (=> b!4600002 m!5427109))

(assert (=> b!4600002 m!5427111))

(declare-fun m!5427123 () Bool)

(assert (=> b!4600000 m!5427123))

(assert (=> b!4599998 m!5426731))

(assert (=> b!4599998 m!5427109))

(assert (=> b!4599795 d!1448363))

(declare-fun d!1448371 () Bool)

(assert (=> d!1448371 (= (tail!7961 (toList!4667 lt!1759276)) (t!358217 (toList!4667 lt!1759276)))))

(assert (=> b!4599795 d!1448371))

(declare-fun bs!1011762 () Bool)

(declare-fun d!1448373 () Bool)

(assert (= bs!1011762 (and d!1448373 d!1448351)))

(declare-fun lambda!186455 () Int)

(assert (=> bs!1011762 (= lambda!186455 lambda!186451)))

(declare-fun bs!1011763 () Bool)

(assert (= bs!1011763 (and d!1448373 d!1448329)))

(assert (=> bs!1011763 (= lambda!186455 lambda!186439)))

(declare-fun bs!1011764 () Bool)

(assert (= bs!1011764 (and d!1448373 d!1448283)))

(assert (=> bs!1011764 (= lambda!186455 lambda!186430)))

(declare-fun bs!1011765 () Bool)

(assert (= bs!1011765 (and d!1448373 d!1448273)))

(assert (=> bs!1011765 (= lambda!186455 lambda!186423)))

(declare-fun bs!1011766 () Bool)

(assert (= bs!1011766 (and d!1448373 start!459100)))

(assert (=> bs!1011766 (= lambda!186455 lambda!186420)))

(declare-fun lt!1759463 () ListMap!3929)

(assert (=> d!1448373 (invariantList!1128 (toList!4668 lt!1759463))))

(declare-fun e!2869293 () ListMap!3929)

(assert (=> d!1448373 (= lt!1759463 e!2869293)))

(declare-fun c!787918 () Bool)

(assert (=> d!1448373 (= c!787918 ((_ is Cons!51099) (Cons!51099 lt!1759277 Nil!51099)))))

(assert (=> d!1448373 (forall!10612 (Cons!51099 lt!1759277 Nil!51099) lambda!186455)))

(assert (=> d!1448373 (= (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)) lt!1759463)))

(declare-fun b!4600007 () Bool)

(assert (=> b!4600007 (= e!2869293 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))))))

(declare-fun b!4600008 () Bool)

(assert (=> b!4600008 (= e!2869293 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448373 c!787918) b!4600007))

(assert (= (and d!1448373 (not c!787918)) b!4600008))

(declare-fun m!5427125 () Bool)

(assert (=> d!1448373 m!5427125))

(declare-fun m!5427127 () Bool)

(assert (=> d!1448373 m!5427127))

(declare-fun m!5427129 () Bool)

(assert (=> b!4600007 m!5427129))

(assert (=> b!4600007 m!5427129))

(declare-fun m!5427131 () Bool)

(assert (=> b!4600007 m!5427131))

(assert (=> b!4599795 d!1448373))

(declare-fun b!4600009 () Bool)

(declare-fun e!2869299 () List!51225)

(assert (=> b!4600009 (= e!2869299 (keys!17896 lt!1759280))))

(declare-fun b!4600010 () Bool)

(declare-fun e!2869294 () Bool)

(assert (=> b!4600010 (= e!2869294 (not (contains!14059 (keys!17896 lt!1759280) key!3287)))))

(declare-fun d!1448375 () Bool)

(declare-fun e!2869297 () Bool)

(assert (=> d!1448375 e!2869297))

(declare-fun res!1924224 () Bool)

(assert (=> d!1448375 (=> res!1924224 e!2869297)))

(assert (=> d!1448375 (= res!1924224 e!2869294)))

(declare-fun res!1924223 () Bool)

(assert (=> d!1448375 (=> (not res!1924223) (not e!2869294))))

(declare-fun lt!1759470 () Bool)

(assert (=> d!1448375 (= res!1924223 (not lt!1759470))))

(declare-fun lt!1759464 () Bool)

(assert (=> d!1448375 (= lt!1759470 lt!1759464)))

(declare-fun lt!1759468 () Unit!108343)

(declare-fun e!2869296 () Unit!108343)

(assert (=> d!1448375 (= lt!1759468 e!2869296)))

(declare-fun c!787921 () Bool)

(assert (=> d!1448375 (= c!787921 lt!1759464)))

(assert (=> d!1448375 (= lt!1759464 (containsKey!2174 (toList!4668 lt!1759280) key!3287))))

(assert (=> d!1448375 (= (contains!14057 lt!1759280 key!3287) lt!1759470)))

(declare-fun b!4600011 () Bool)

(assert (=> b!4600011 (= e!2869299 (getKeysList!577 (toList!4668 lt!1759280)))))

(declare-fun b!4600012 () Bool)

(declare-fun e!2869295 () Bool)

(assert (=> b!4600012 (= e!2869297 e!2869295)))

(declare-fun res!1924225 () Bool)

(assert (=> b!4600012 (=> (not res!1924225) (not e!2869295))))

(assert (=> b!4600012 (= res!1924225 (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759280) key!3287)))))

(declare-fun b!4600013 () Bool)

(assert (=> b!4600013 (= e!2869295 (contains!14059 (keys!17896 lt!1759280) key!3287))))

(declare-fun b!4600014 () Bool)

(declare-fun lt!1759471 () Unit!108343)

(assert (=> b!4600014 (= e!2869296 lt!1759471)))

(declare-fun lt!1759466 () Unit!108343)

(assert (=> b!4600014 (= lt!1759466 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 lt!1759280) key!3287))))

(assert (=> b!4600014 (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759280) key!3287))))

(declare-fun lt!1759467 () Unit!108343)

(assert (=> b!4600014 (= lt!1759467 lt!1759466)))

(assert (=> b!4600014 (= lt!1759471 (lemmaInListThenGetKeysListContains!573 (toList!4668 lt!1759280) key!3287))))

(declare-fun call!320992 () Bool)

(assert (=> b!4600014 call!320992))

(declare-fun b!4600015 () Bool)

(declare-fun e!2869298 () Unit!108343)

(declare-fun Unit!108360 () Unit!108343)

(assert (=> b!4600015 (= e!2869298 Unit!108360)))

(declare-fun bm!320987 () Bool)

(assert (=> bm!320987 (= call!320992 (contains!14059 e!2869299 key!3287))))

(declare-fun c!787920 () Bool)

(assert (=> bm!320987 (= c!787920 c!787921)))

(declare-fun b!4600016 () Bool)

(assert (=> b!4600016 (= e!2869296 e!2869298)))

(declare-fun c!787919 () Bool)

(assert (=> b!4600016 (= c!787919 call!320992)))

(declare-fun b!4600017 () Bool)

(assert (=> b!4600017 false))

(declare-fun lt!1759469 () Unit!108343)

(declare-fun lt!1759465 () Unit!108343)

(assert (=> b!4600017 (= lt!1759469 lt!1759465)))

(assert (=> b!4600017 (containsKey!2174 (toList!4668 lt!1759280) key!3287)))

(assert (=> b!4600017 (= lt!1759465 (lemmaInGetKeysListThenContainsKey!576 (toList!4668 lt!1759280) key!3287))))

(declare-fun Unit!108361 () Unit!108343)

(assert (=> b!4600017 (= e!2869298 Unit!108361)))

(assert (= (and d!1448375 c!787921) b!4600014))

(assert (= (and d!1448375 (not c!787921)) b!4600016))

(assert (= (and b!4600016 c!787919) b!4600017))

(assert (= (and b!4600016 (not c!787919)) b!4600015))

(assert (= (or b!4600014 b!4600016) bm!320987))

(assert (= (and bm!320987 c!787920) b!4600011))

(assert (= (and bm!320987 (not c!787920)) b!4600009))

(assert (= (and d!1448375 res!1924223) b!4600010))

(assert (= (and d!1448375 (not res!1924224)) b!4600012))

(assert (= (and b!4600012 res!1924225) b!4600013))

(declare-fun m!5427133 () Bool)

(assert (=> d!1448375 m!5427133))

(declare-fun m!5427135 () Bool)

(assert (=> bm!320987 m!5427135))

(declare-fun m!5427137 () Bool)

(assert (=> b!4600010 m!5427137))

(assert (=> b!4600010 m!5427137))

(declare-fun m!5427139 () Bool)

(assert (=> b!4600010 m!5427139))

(declare-fun m!5427141 () Bool)

(assert (=> b!4600012 m!5427141))

(assert (=> b!4600012 m!5427141))

(declare-fun m!5427143 () Bool)

(assert (=> b!4600012 m!5427143))

(assert (=> b!4600017 m!5427133))

(declare-fun m!5427145 () Bool)

(assert (=> b!4600017 m!5427145))

(declare-fun m!5427147 () Bool)

(assert (=> b!4600014 m!5427147))

(assert (=> b!4600014 m!5427141))

(assert (=> b!4600014 m!5427141))

(assert (=> b!4600014 m!5427143))

(declare-fun m!5427149 () Bool)

(assert (=> b!4600014 m!5427149))

(assert (=> b!4600013 m!5427137))

(assert (=> b!4600013 m!5427137))

(assert (=> b!4600013 m!5427139))

(declare-fun m!5427151 () Bool)

(assert (=> b!4600011 m!5427151))

(assert (=> b!4600009 m!5427137))

(assert (=> b!4599784 d!1448375))

(declare-fun b!4600027 () Bool)

(declare-fun e!2869304 () List!51222)

(declare-fun e!2869305 () List!51222)

(assert (=> b!4600027 (= e!2869304 e!2869305)))

(declare-fun c!787926 () Bool)

(assert (=> b!4600027 (= c!787926 ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(declare-fun b!4600029 () Bool)

(assert (=> b!4600029 (= e!2869305 Nil!51098)))

(declare-fun d!1448377 () Bool)

(declare-fun lt!1759474 () List!51222)

(assert (=> d!1448377 (not (containsKey!2170 lt!1759474 key!3287))))

(assert (=> d!1448377 (= lt!1759474 e!2869304)))

(declare-fun c!787927 () Bool)

(assert (=> d!1448377 (= c!787927 (and ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477)))) (= (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))) key!3287)))))

(assert (=> d!1448377 (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477))))))

(assert (=> d!1448377 (= (removePairForKey!951 (_2!29172 (h!57067 (toList!4667 lm!1477))) key!3287) lt!1759474)))

(declare-fun b!4600026 () Bool)

(assert (=> b!4600026 (= e!2869304 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(declare-fun b!4600028 () Bool)

(assert (=> b!4600028 (= e!2869305 (Cons!51098 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477)))) (removePairForKey!951 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) key!3287)))))

(assert (= (and d!1448377 c!787927) b!4600026))

(assert (= (and d!1448377 (not c!787927)) b!4600027))

(assert (= (and b!4600027 c!787926) b!4600028))

(assert (= (and b!4600027 (not c!787926)) b!4600029))

(declare-fun m!5427153 () Bool)

(assert (=> d!1448377 m!5427153))

(assert (=> d!1448377 m!5426761))

(declare-fun m!5427155 () Bool)

(assert (=> b!4600028 m!5427155))

(assert (=> b!4599794 d!1448377))

(declare-fun d!1448379 () Bool)

(assert (=> d!1448379 true))

(assert (=> d!1448379 true))

(declare-fun lambda!186458 () Int)

(declare-fun forall!10613 (List!51222 Int) Bool)

(assert (=> d!1448379 (= (allKeysSameHash!1182 newBucket!178 hash!344 hashF!1107) (forall!10613 newBucket!178 lambda!186458))))

(declare-fun bs!1011767 () Bool)

(assert (= bs!1011767 d!1448379))

(declare-fun m!5427157 () Bool)

(assert (=> bs!1011767 m!5427157))

(assert (=> b!4599783 d!1448379))

(declare-fun bs!1011768 () Bool)

(declare-fun d!1448381 () Bool)

(assert (= bs!1011768 (and d!1448381 d!1448351)))

(declare-fun lambda!186459 () Int)

(assert (=> bs!1011768 (= lambda!186459 lambda!186451)))

(declare-fun bs!1011769 () Bool)

(assert (= bs!1011769 (and d!1448381 d!1448329)))

(assert (=> bs!1011769 (= lambda!186459 lambda!186439)))

(declare-fun bs!1011770 () Bool)

(assert (= bs!1011770 (and d!1448381 d!1448283)))

(assert (=> bs!1011770 (= lambda!186459 lambda!186430)))

(declare-fun bs!1011771 () Bool)

(assert (= bs!1011771 (and d!1448381 d!1448273)))

(assert (=> bs!1011771 (= lambda!186459 lambda!186423)))

(declare-fun bs!1011772 () Bool)

(assert (= bs!1011772 (and d!1448381 d!1448373)))

(assert (=> bs!1011772 (= lambda!186459 lambda!186455)))

(declare-fun bs!1011773 () Bool)

(assert (= bs!1011773 (and d!1448381 start!459100)))

(assert (=> bs!1011773 (= lambda!186459 lambda!186420)))

(declare-fun lt!1759475 () ListMap!3929)

(assert (=> d!1448381 (invariantList!1128 (toList!4668 lt!1759475))))

(declare-fun e!2869306 () ListMap!3929)

(assert (=> d!1448381 (= lt!1759475 e!2869306)))

(declare-fun c!787928 () Bool)

(assert (=> d!1448381 (= c!787928 ((_ is Cons!51099) (t!358217 (toList!4667 lm!1477))))))

(assert (=> d!1448381 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186459)))

(assert (=> d!1448381 (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759475)))

(declare-fun b!4600034 () Bool)

(assert (=> b!4600034 (= e!2869306 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))))))

(declare-fun b!4600035 () Bool)

(assert (=> b!4600035 (= e!2869306 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448381 c!787928) b!4600034))

(assert (= (and d!1448381 (not c!787928)) b!4600035))

(declare-fun m!5427159 () Bool)

(assert (=> d!1448381 m!5427159))

(declare-fun m!5427161 () Bool)

(assert (=> d!1448381 m!5427161))

(declare-fun m!5427163 () Bool)

(assert (=> b!4600034 m!5427163))

(assert (=> b!4600034 m!5427163))

(declare-fun m!5427165 () Bool)

(assert (=> b!4600034 m!5427165))

(assert (=> b!4599788 d!1448381))

(declare-fun bs!1011774 () Bool)

(declare-fun d!1448383 () Bool)

(assert (= bs!1011774 (and d!1448383 d!1448351)))

(declare-fun lambda!186460 () Int)

(assert (=> bs!1011774 (= lambda!186460 lambda!186451)))

(declare-fun bs!1011775 () Bool)

(assert (= bs!1011775 (and d!1448383 d!1448329)))

(assert (=> bs!1011775 (= lambda!186460 lambda!186439)))

(declare-fun bs!1011776 () Bool)

(assert (= bs!1011776 (and d!1448383 d!1448283)))

(assert (=> bs!1011776 (= lambda!186460 lambda!186430)))

(declare-fun bs!1011777 () Bool)

(assert (= bs!1011777 (and d!1448383 d!1448273)))

(assert (=> bs!1011777 (= lambda!186460 lambda!186423)))

(declare-fun bs!1011778 () Bool)

(assert (= bs!1011778 (and d!1448383 d!1448381)))

(assert (=> bs!1011778 (= lambda!186460 lambda!186459)))

(declare-fun bs!1011779 () Bool)

(assert (= bs!1011779 (and d!1448383 d!1448373)))

(assert (=> bs!1011779 (= lambda!186460 lambda!186455)))

(declare-fun bs!1011780 () Bool)

(assert (= bs!1011780 (and d!1448383 start!459100)))

(assert (=> bs!1011780 (= lambda!186460 lambda!186420)))

(declare-fun lt!1759476 () ListMap!3929)

(assert (=> d!1448383 (invariantList!1128 (toList!4668 lt!1759476))))

(declare-fun e!2869307 () ListMap!3929)

(assert (=> d!1448383 (= lt!1759476 e!2869307)))

(declare-fun c!787929 () Bool)

(assert (=> d!1448383 (= c!787929 ((_ is Cons!51099) (toList!4667 lt!1759284)))))

(assert (=> d!1448383 (forall!10612 (toList!4667 lt!1759284) lambda!186460)))

(assert (=> d!1448383 (= (extractMap!1386 (toList!4667 lt!1759284)) lt!1759476)))

(declare-fun b!4600036 () Bool)

(assert (=> b!4600036 (= e!2869307 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))))))

(declare-fun b!4600037 () Bool)

(assert (=> b!4600037 (= e!2869307 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448383 c!787929) b!4600036))

(assert (= (and d!1448383 (not c!787929)) b!4600037))

(declare-fun m!5427167 () Bool)

(assert (=> d!1448383 m!5427167))

(declare-fun m!5427169 () Bool)

(assert (=> d!1448383 m!5427169))

(declare-fun m!5427171 () Bool)

(assert (=> b!4600036 m!5427171))

(assert (=> b!4600036 m!5427171))

(declare-fun m!5427173 () Bool)

(assert (=> b!4600036 m!5427173))

(assert (=> b!4599788 d!1448383))

(declare-fun d!1448385 () Bool)

(declare-fun e!2869308 () Bool)

(assert (=> d!1448385 e!2869308))

(declare-fun res!1924226 () Bool)

(assert (=> d!1448385 (=> (not res!1924226) (not e!2869308))))

(declare-fun lt!1759477 () ListLongMap!3299)

(assert (=> d!1448385 (= res!1924226 (contains!14056 lt!1759477 (_1!29172 lt!1759277)))))

(declare-fun lt!1759478 () List!51223)

(assert (=> d!1448385 (= lt!1759477 (ListLongMap!3300 lt!1759478))))

(declare-fun lt!1759480 () Unit!108343)

(declare-fun lt!1759479 () Unit!108343)

(assert (=> d!1448385 (= lt!1759480 lt!1759479)))

(assert (=> d!1448385 (= (getValueByKey!1318 lt!1759478 (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277)))))

(assert (=> d!1448385 (= lt!1759479 (lemmaContainsTupThenGetReturnValue!800 lt!1759478 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(assert (=> d!1448385 (= lt!1759478 (insertStrictlySorted!492 (toList!4667 lt!1759284) (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(assert (=> d!1448385 (= (+!1754 lt!1759284 lt!1759277) lt!1759477)))

(declare-fun b!4600038 () Bool)

(declare-fun res!1924227 () Bool)

(assert (=> b!4600038 (=> (not res!1924227) (not e!2869308))))

(assert (=> b!4600038 (= res!1924227 (= (getValueByKey!1318 (toList!4667 lt!1759477) (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277))))))

(declare-fun b!4600039 () Bool)

(assert (=> b!4600039 (= e!2869308 (contains!14055 (toList!4667 lt!1759477) lt!1759277))))

(assert (= (and d!1448385 res!1924226) b!4600038))

(assert (= (and b!4600038 res!1924227) b!4600039))

(declare-fun m!5427175 () Bool)

(assert (=> d!1448385 m!5427175))

(declare-fun m!5427177 () Bool)

(assert (=> d!1448385 m!5427177))

(declare-fun m!5427179 () Bool)

(assert (=> d!1448385 m!5427179))

(declare-fun m!5427181 () Bool)

(assert (=> d!1448385 m!5427181))

(declare-fun m!5427183 () Bool)

(assert (=> b!4600038 m!5427183))

(declare-fun m!5427185 () Bool)

(assert (=> b!4600039 m!5427185))

(assert (=> b!4599777 d!1448385))

(declare-fun d!1448387 () Bool)

(assert (=> d!1448387 (= (tail!7960 lm!1477) (ListLongMap!3300 (tail!7961 (toList!4667 lm!1477))))))

(declare-fun bs!1011781 () Bool)

(assert (= bs!1011781 d!1448387))

(declare-fun m!5427187 () Bool)

(assert (=> bs!1011781 m!5427187))

(assert (=> b!4599777 d!1448387))

(declare-fun bs!1011782 () Bool)

(declare-fun d!1448389 () Bool)

(assert (= bs!1011782 (and d!1448389 d!1448351)))

(declare-fun lambda!186463 () Int)

(assert (=> bs!1011782 (= lambda!186463 lambda!186451)))

(declare-fun bs!1011783 () Bool)

(assert (= bs!1011783 (and d!1448389 d!1448329)))

(assert (=> bs!1011783 (= lambda!186463 lambda!186439)))

(declare-fun bs!1011784 () Bool)

(assert (= bs!1011784 (and d!1448389 d!1448283)))

(assert (=> bs!1011784 (= lambda!186463 lambda!186430)))

(declare-fun bs!1011785 () Bool)

(assert (= bs!1011785 (and d!1448389 d!1448273)))

(assert (=> bs!1011785 (= lambda!186463 lambda!186423)))

(declare-fun bs!1011786 () Bool)

(assert (= bs!1011786 (and d!1448389 d!1448381)))

(assert (=> bs!1011786 (= lambda!186463 lambda!186459)))

(declare-fun bs!1011787 () Bool)

(assert (= bs!1011787 (and d!1448389 d!1448383)))

(assert (=> bs!1011787 (= lambda!186463 lambda!186460)))

(declare-fun bs!1011788 () Bool)

(assert (= bs!1011788 (and d!1448389 d!1448373)))

(assert (=> bs!1011788 (= lambda!186463 lambda!186455)))

(declare-fun bs!1011789 () Bool)

(assert (= bs!1011789 (and d!1448389 start!459100)))

(assert (=> bs!1011789 (= lambda!186463 lambda!186420)))

(assert (=> d!1448389 (not (contains!14057 (extractMap!1386 (toList!4667 lm!1477)) key!3287))))

(declare-fun lt!1759483 () Unit!108343)

(declare-fun choose!30844 (ListLongMap!3299 K!12465 Hashable!5725) Unit!108343)

(assert (=> d!1448389 (= lt!1759483 (choose!30844 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1448389 (forall!10612 (toList!4667 lm!1477) lambda!186463)))

(assert (=> d!1448389 (= (lemmaNotInItsHashBucketThenNotInMap!296 lm!1477 key!3287 hashF!1107) lt!1759483)))

(declare-fun bs!1011790 () Bool)

(assert (= bs!1011790 d!1448389))

(assert (=> bs!1011790 m!5426771))

(assert (=> bs!1011790 m!5426771))

(assert (=> bs!1011790 m!5426773))

(declare-fun m!5427189 () Bool)

(assert (=> bs!1011790 m!5427189))

(declare-fun m!5427191 () Bool)

(assert (=> bs!1011790 m!5427191))

(assert (=> b!4599787 d!1448389))

(declare-fun bs!1011791 () Bool)

(declare-fun d!1448391 () Bool)

(assert (= bs!1011791 (and d!1448391 d!1448351)))

(declare-fun lambda!186464 () Int)

(assert (=> bs!1011791 (= lambda!186464 lambda!186451)))

(declare-fun bs!1011792 () Bool)

(assert (= bs!1011792 (and d!1448391 d!1448329)))

(assert (=> bs!1011792 (= lambda!186464 lambda!186439)))

(declare-fun bs!1011793 () Bool)

(assert (= bs!1011793 (and d!1448391 d!1448283)))

(assert (=> bs!1011793 (= lambda!186464 lambda!186430)))

(declare-fun bs!1011794 () Bool)

(assert (= bs!1011794 (and d!1448391 d!1448389)))

(assert (=> bs!1011794 (= lambda!186464 lambda!186463)))

(declare-fun bs!1011795 () Bool)

(assert (= bs!1011795 (and d!1448391 d!1448273)))

(assert (=> bs!1011795 (= lambda!186464 lambda!186423)))

(declare-fun bs!1011796 () Bool)

(assert (= bs!1011796 (and d!1448391 d!1448381)))

(assert (=> bs!1011796 (= lambda!186464 lambda!186459)))

(declare-fun bs!1011797 () Bool)

(assert (= bs!1011797 (and d!1448391 d!1448383)))

(assert (=> bs!1011797 (= lambda!186464 lambda!186460)))

(declare-fun bs!1011798 () Bool)

(assert (= bs!1011798 (and d!1448391 d!1448373)))

(assert (=> bs!1011798 (= lambda!186464 lambda!186455)))

(declare-fun bs!1011799 () Bool)

(assert (= bs!1011799 (and d!1448391 start!459100)))

(assert (=> bs!1011799 (= lambda!186464 lambda!186420)))

(assert (=> d!1448391 (contains!14056 lm!1477 (hash!3231 hashF!1107 key!3287))))

(declare-fun lt!1759484 () Unit!108343)

(assert (=> d!1448391 (= lt!1759484 (choose!30838 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1448391 (forall!10612 (toList!4667 lm!1477) lambda!186464)))

(assert (=> d!1448391 (= (lemmaInGenMapThenLongMapContainsHash!400 lm!1477 key!3287 hashF!1107) lt!1759484)))

(declare-fun bs!1011800 () Bool)

(assert (= bs!1011800 d!1448391))

(assert (=> bs!1011800 m!5426759))

(assert (=> bs!1011800 m!5426759))

(declare-fun m!5427193 () Bool)

(assert (=> bs!1011800 m!5427193))

(declare-fun m!5427195 () Bool)

(assert (=> bs!1011800 m!5427195))

(declare-fun m!5427197 () Bool)

(assert (=> bs!1011800 m!5427197))

(assert (=> b!4599775 d!1448391))

(declare-fun d!1448393 () Bool)

(declare-fun e!2869310 () Bool)

(assert (=> d!1448393 e!2869310))

(declare-fun res!1924228 () Bool)

(assert (=> d!1448393 (=> res!1924228 e!2869310)))

(declare-fun lt!1759488 () Bool)

(assert (=> d!1448393 (= res!1924228 (not lt!1759488))))

(declare-fun lt!1759485 () Bool)

(assert (=> d!1448393 (= lt!1759488 lt!1759485)))

(declare-fun lt!1759487 () Unit!108343)

(declare-fun e!2869309 () Unit!108343)

(assert (=> d!1448393 (= lt!1759487 e!2869309)))

(declare-fun c!787930 () Bool)

(assert (=> d!1448393 (= c!787930 lt!1759485)))

(assert (=> d!1448393 (= lt!1759485 (containsKey!2173 (toList!4667 lm!1477) lt!1759275))))

(assert (=> d!1448393 (= (contains!14056 lm!1477 lt!1759275) lt!1759488)))

(declare-fun b!4600040 () Bool)

(declare-fun lt!1759486 () Unit!108343)

(assert (=> b!4600040 (= e!2869309 lt!1759486)))

(assert (=> b!4600040 (= lt!1759486 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lm!1477) lt!1759275))))

(assert (=> b!4600040 (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275))))

(declare-fun b!4600041 () Bool)

(declare-fun Unit!108362 () Unit!108343)

(assert (=> b!4600041 (= e!2869309 Unit!108362)))

(declare-fun b!4600042 () Bool)

(assert (=> b!4600042 (= e!2869310 (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275)))))

(assert (= (and d!1448393 c!787930) b!4600040))

(assert (= (and d!1448393 (not c!787930)) b!4600041))

(assert (= (and d!1448393 (not res!1924228)) b!4600042))

(declare-fun m!5427199 () Bool)

(assert (=> d!1448393 m!5427199))

(declare-fun m!5427201 () Bool)

(assert (=> b!4600040 m!5427201))

(declare-fun m!5427203 () Bool)

(assert (=> b!4600040 m!5427203))

(assert (=> b!4600040 m!5427203))

(declare-fun m!5427205 () Bool)

(assert (=> b!4600040 m!5427205))

(assert (=> b!4600042 m!5427203))

(assert (=> b!4600042 m!5427203))

(assert (=> b!4600042 m!5427205))

(assert (=> b!4599775 d!1448393))

(declare-fun d!1448395 () Bool)

(declare-fun lt!1759491 () Bool)

(declare-fun content!8658 (List!51223) (InoxSet tuple2!51756))

(assert (=> d!1448395 (= lt!1759491 (select (content!8658 (toList!4667 lm!1477)) lt!1759282))))

(declare-fun e!2869315 () Bool)

(assert (=> d!1448395 (= lt!1759491 e!2869315)))

(declare-fun res!1924233 () Bool)

(assert (=> d!1448395 (=> (not res!1924233) (not e!2869315))))

(assert (=> d!1448395 (= res!1924233 ((_ is Cons!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448395 (= (contains!14055 (toList!4667 lm!1477) lt!1759282) lt!1759491)))

(declare-fun b!4600047 () Bool)

(declare-fun e!2869316 () Bool)

(assert (=> b!4600047 (= e!2869315 e!2869316)))

(declare-fun res!1924234 () Bool)

(assert (=> b!4600047 (=> res!1924234 e!2869316)))

(assert (=> b!4600047 (= res!1924234 (= (h!57067 (toList!4667 lm!1477)) lt!1759282))))

(declare-fun b!4600048 () Bool)

(assert (=> b!4600048 (= e!2869316 (contains!14055 (t!358217 (toList!4667 lm!1477)) lt!1759282))))

(assert (= (and d!1448395 res!1924233) b!4600047))

(assert (= (and b!4600047 (not res!1924234)) b!4600048))

(declare-fun m!5427207 () Bool)

(assert (=> d!1448395 m!5427207))

(declare-fun m!5427209 () Bool)

(assert (=> d!1448395 m!5427209))

(declare-fun m!5427211 () Bool)

(assert (=> b!4600048 m!5427211))

(assert (=> b!4599775 d!1448395))

(declare-fun d!1448397 () Bool)

(declare-fun get!16891 (Option!11398) List!51222)

(assert (=> d!1448397 (= (apply!12063 lm!1477 hash!344) (get!16891 (getValueByKey!1318 (toList!4667 lm!1477) hash!344)))))

(declare-fun bs!1011801 () Bool)

(assert (= bs!1011801 d!1448397))

(declare-fun m!5427213 () Bool)

(assert (=> bs!1011801 m!5427213))

(assert (=> bs!1011801 m!5427213))

(declare-fun m!5427215 () Bool)

(assert (=> bs!1011801 m!5427215))

(assert (=> b!4599775 d!1448397))

(declare-fun d!1448399 () Bool)

(assert (=> d!1448399 (contains!14055 (toList!4667 lm!1477) (tuple2!51757 hash!344 lt!1759288))))

(declare-fun lt!1759494 () Unit!108343)

(declare-fun choose!30845 (List!51223 (_ BitVec 64) List!51222) Unit!108343)

(assert (=> d!1448399 (= lt!1759494 (choose!30845 (toList!4667 lm!1477) hash!344 lt!1759288))))

(declare-fun e!2869319 () Bool)

(assert (=> d!1448399 e!2869319))

(declare-fun res!1924237 () Bool)

(assert (=> d!1448399 (=> (not res!1924237) (not e!2869319))))

(declare-fun isStrictlySorted!544 (List!51223) Bool)

(assert (=> d!1448399 (= res!1924237 (isStrictlySorted!544 (toList!4667 lm!1477)))))

(assert (=> d!1448399 (= (lemmaGetValueByKeyImpliesContainsTuple!836 (toList!4667 lm!1477) hash!344 lt!1759288) lt!1759494)))

(declare-fun b!4600051 () Bool)

(assert (=> b!4600051 (= e!2869319 (= (getValueByKey!1318 (toList!4667 lm!1477) hash!344) (Some!11397 lt!1759288)))))

(assert (= (and d!1448399 res!1924237) b!4600051))

(declare-fun m!5427217 () Bool)

(assert (=> d!1448399 m!5427217))

(declare-fun m!5427219 () Bool)

(assert (=> d!1448399 m!5427219))

(declare-fun m!5427221 () Bool)

(assert (=> d!1448399 m!5427221))

(assert (=> b!4600051 m!5427213))

(assert (=> b!4599775 d!1448399))

(declare-fun b!4600053 () Bool)

(declare-fun e!2869320 () List!51222)

(declare-fun e!2869321 () List!51222)

(assert (=> b!4600053 (= e!2869320 e!2869321)))

(declare-fun c!787931 () Bool)

(assert (=> b!4600053 (= c!787931 ((_ is Cons!51098) lt!1759288))))

(declare-fun b!4600055 () Bool)

(assert (=> b!4600055 (= e!2869321 Nil!51098)))

(declare-fun d!1448401 () Bool)

(declare-fun lt!1759495 () List!51222)

(assert (=> d!1448401 (not (containsKey!2170 lt!1759495 key!3287))))

(assert (=> d!1448401 (= lt!1759495 e!2869320)))

(declare-fun c!787932 () Bool)

(assert (=> d!1448401 (= c!787932 (and ((_ is Cons!51098) lt!1759288) (= (_1!29171 (h!57066 lt!1759288)) key!3287)))))

(assert (=> d!1448401 (noDuplicateKeys!1326 lt!1759288)))

(assert (=> d!1448401 (= (removePairForKey!951 lt!1759288 key!3287) lt!1759495)))

(declare-fun b!4600052 () Bool)

(assert (=> b!4600052 (= e!2869320 (t!358216 lt!1759288))))

(declare-fun b!4600054 () Bool)

(assert (=> b!4600054 (= e!2869321 (Cons!51098 (h!57066 lt!1759288) (removePairForKey!951 (t!358216 lt!1759288) key!3287)))))

(assert (= (and d!1448401 c!787932) b!4600052))

(assert (= (and d!1448401 (not c!787932)) b!4600053))

(assert (= (and b!4600053 c!787931) b!4600054))

(assert (= (and b!4600053 (not c!787931)) b!4600055))

(declare-fun m!5427223 () Bool)

(assert (=> d!1448401 m!5427223))

(declare-fun m!5427225 () Bool)

(assert (=> d!1448401 m!5427225))

(declare-fun m!5427227 () Bool)

(assert (=> b!4600054 m!5427227))

(assert (=> b!4599775 d!1448401))

(declare-fun d!1448403 () Bool)

(declare-fun dynLambda!21402 (Int tuple2!51756) Bool)

(assert (=> d!1448403 (dynLambda!21402 lambda!186420 lt!1759282)))

(declare-fun lt!1759498 () Unit!108343)

(declare-fun choose!30846 (List!51223 Int tuple2!51756) Unit!108343)

(assert (=> d!1448403 (= lt!1759498 (choose!30846 (toList!4667 lm!1477) lambda!186420 lt!1759282))))

(declare-fun e!2869324 () Bool)

(assert (=> d!1448403 e!2869324))

(declare-fun res!1924240 () Bool)

(assert (=> d!1448403 (=> (not res!1924240) (not e!2869324))))

(assert (=> d!1448403 (= res!1924240 (forall!10612 (toList!4667 lm!1477) lambda!186420))))

(assert (=> d!1448403 (= (forallContained!2863 (toList!4667 lm!1477) lambda!186420 lt!1759282) lt!1759498)))

(declare-fun b!4600058 () Bool)

(assert (=> b!4600058 (= e!2869324 (contains!14055 (toList!4667 lm!1477) lt!1759282))))

(assert (= (and d!1448403 res!1924240) b!4600058))

(declare-fun b_lambda!169461 () Bool)

(assert (=> (not b_lambda!169461) (not d!1448403)))

(declare-fun m!5427229 () Bool)

(assert (=> d!1448403 m!5427229))

(declare-fun m!5427231 () Bool)

(assert (=> d!1448403 m!5427231))

(assert (=> d!1448403 m!5426753))

(assert (=> b!4600058 m!5426719))

(assert (=> b!4599775 d!1448403))

(declare-fun d!1448405 () Bool)

(declare-fun res!1924247 () Bool)

(declare-fun e!2869333 () Bool)

(assert (=> d!1448405 (=> res!1924247 e!2869333)))

(declare-fun e!2869332 () Bool)

(assert (=> d!1448405 (= res!1924247 e!2869332)))

(declare-fun res!1924248 () Bool)

(assert (=> d!1448405 (=> (not res!1924248) (not e!2869332))))

(assert (=> d!1448405 (= res!1924248 ((_ is Cons!51099) lt!1759278))))

(assert (=> d!1448405 (= (containsKeyBiggerList!282 lt!1759278 key!3287) e!2869333)))

(declare-fun b!4600065 () Bool)

(assert (=> b!4600065 (= e!2869332 (containsKey!2170 (_2!29172 (h!57067 lt!1759278)) key!3287))))

(declare-fun b!4600066 () Bool)

(declare-fun e!2869331 () Bool)

(assert (=> b!4600066 (= e!2869333 e!2869331)))

(declare-fun res!1924249 () Bool)

(assert (=> b!4600066 (=> (not res!1924249) (not e!2869331))))

(assert (=> b!4600066 (= res!1924249 ((_ is Cons!51099) lt!1759278))))

(declare-fun b!4600067 () Bool)

(assert (=> b!4600067 (= e!2869331 (containsKeyBiggerList!282 (t!358217 lt!1759278) key!3287))))

(assert (= (and d!1448405 res!1924248) b!4600065))

(assert (= (and d!1448405 (not res!1924247)) b!4600066))

(assert (= (and b!4600066 res!1924249) b!4600067))

(declare-fun m!5427233 () Bool)

(assert (=> b!4600065 m!5427233))

(declare-fun m!5427235 () Bool)

(assert (=> b!4600067 m!5427235))

(assert (=> b!4599790 d!1448405))

(declare-fun d!1448407 () Bool)

(declare-fun res!1924254 () Bool)

(declare-fun e!2869338 () Bool)

(assert (=> d!1448407 (=> res!1924254 e!2869338)))

(assert (=> d!1448407 (= res!1924254 (not ((_ is Cons!51098) newBucket!178)))))

(assert (=> d!1448407 (= (noDuplicateKeys!1326 newBucket!178) e!2869338)))

(declare-fun b!4600072 () Bool)

(declare-fun e!2869339 () Bool)

(assert (=> b!4600072 (= e!2869338 e!2869339)))

(declare-fun res!1924255 () Bool)

(assert (=> b!4600072 (=> (not res!1924255) (not e!2869339))))

(assert (=> b!4600072 (= res!1924255 (not (containsKey!2170 (t!358216 newBucket!178) (_1!29171 (h!57066 newBucket!178)))))))

(declare-fun b!4600073 () Bool)

(assert (=> b!4600073 (= e!2869339 (noDuplicateKeys!1326 (t!358216 newBucket!178)))))

(assert (= (and d!1448407 (not res!1924254)) b!4600072))

(assert (= (and b!4600072 res!1924255) b!4600073))

(declare-fun m!5427237 () Bool)

(assert (=> b!4600072 m!5427237))

(declare-fun m!5427239 () Bool)

(assert (=> b!4600073 m!5427239))

(assert (=> b!4599789 d!1448407))

(declare-fun d!1448409 () Bool)

(declare-fun res!1924256 () Bool)

(declare-fun e!2869340 () Bool)

(assert (=> d!1448409 (=> res!1924256 e!2869340)))

(assert (=> d!1448409 (= res!1924256 (not ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(assert (=> d!1448409 (= (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477)))) e!2869340)))

(declare-fun b!4600074 () Bool)

(declare-fun e!2869341 () Bool)

(assert (=> b!4600074 (= e!2869340 e!2869341)))

(declare-fun res!1924257 () Bool)

(assert (=> b!4600074 (=> (not res!1924257) (not e!2869341))))

(assert (=> b!4600074 (= res!1924257 (not (containsKey!2170 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))))

(declare-fun b!4600075 () Bool)

(assert (=> b!4600075 (= e!2869341 (noDuplicateKeys!1326 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(assert (= (and d!1448409 (not res!1924256)) b!4600074))

(assert (= (and b!4600074 res!1924257) b!4600075))

(declare-fun m!5427241 () Bool)

(assert (=> b!4600074 m!5427241))

(declare-fun m!5427243 () Bool)

(assert (=> b!4600075 m!5427243))

(assert (=> b!4599778 d!1448409))

(declare-fun d!1448411 () Bool)

(declare-fun res!1924262 () Bool)

(declare-fun e!2869346 () Bool)

(assert (=> d!1448411 (=> res!1924262 e!2869346)))

(assert (=> d!1448411 (= res!1924262 (and ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477)))) (= (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))) key!3287)))))

(assert (=> d!1448411 (= (containsKey!2170 (_2!29172 (h!57067 (toList!4667 lm!1477))) key!3287) e!2869346)))

(declare-fun b!4600080 () Bool)

(declare-fun e!2869347 () Bool)

(assert (=> b!4600080 (= e!2869346 e!2869347)))

(declare-fun res!1924263 () Bool)

(assert (=> b!4600080 (=> (not res!1924263) (not e!2869347))))

(assert (=> b!4600080 (= res!1924263 ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(declare-fun b!4600081 () Bool)

(assert (=> b!4600081 (= e!2869347 (containsKey!2170 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) key!3287))))

(assert (= (and d!1448411 (not res!1924262)) b!4600080))

(assert (= (and b!4600080 res!1924263) b!4600081))

(declare-fun m!5427245 () Bool)

(assert (=> b!4600081 m!5427245))

(assert (=> b!4599793 d!1448411))

(declare-fun b!4600082 () Bool)

(declare-fun e!2869353 () List!51225)

(assert (=> b!4600082 (= e!2869353 (keys!17896 (extractMap!1386 (toList!4667 lm!1477))))))

(declare-fun b!4600083 () Bool)

(declare-fun e!2869348 () Bool)

(assert (=> b!4600083 (= e!2869348 (not (contains!14059 (keys!17896 (extractMap!1386 (toList!4667 lm!1477))) key!3287)))))

(declare-fun d!1448413 () Bool)

(declare-fun e!2869351 () Bool)

(assert (=> d!1448413 e!2869351))

(declare-fun res!1924265 () Bool)

(assert (=> d!1448413 (=> res!1924265 e!2869351)))

(assert (=> d!1448413 (= res!1924265 e!2869348)))

(declare-fun res!1924264 () Bool)

(assert (=> d!1448413 (=> (not res!1924264) (not e!2869348))))

(declare-fun lt!1759505 () Bool)

(assert (=> d!1448413 (= res!1924264 (not lt!1759505))))

(declare-fun lt!1759499 () Bool)

(assert (=> d!1448413 (= lt!1759505 lt!1759499)))

(declare-fun lt!1759503 () Unit!108343)

(declare-fun e!2869350 () Unit!108343)

(assert (=> d!1448413 (= lt!1759503 e!2869350)))

(declare-fun c!787935 () Bool)

(assert (=> d!1448413 (= c!787935 lt!1759499)))

(assert (=> d!1448413 (= lt!1759499 (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(assert (=> d!1448413 (= (contains!14057 (extractMap!1386 (toList!4667 lm!1477)) key!3287) lt!1759505)))

(declare-fun b!4600084 () Bool)

(assert (=> b!4600084 (= e!2869353 (getKeysList!577 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))

(declare-fun b!4600085 () Bool)

(declare-fun e!2869349 () Bool)

(assert (=> b!4600085 (= e!2869351 e!2869349)))

(declare-fun res!1924266 () Bool)

(assert (=> b!4600085 (=> (not res!1924266) (not e!2869349))))

(assert (=> b!4600085 (= res!1924266 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287)))))

(declare-fun b!4600086 () Bool)

(assert (=> b!4600086 (= e!2869349 (contains!14059 (keys!17896 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(declare-fun b!4600087 () Bool)

(declare-fun lt!1759506 () Unit!108343)

(assert (=> b!4600087 (= e!2869350 lt!1759506)))

(declare-fun lt!1759501 () Unit!108343)

(assert (=> b!4600087 (= lt!1759501 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(assert (=> b!4600087 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(declare-fun lt!1759502 () Unit!108343)

(assert (=> b!4600087 (= lt!1759502 lt!1759501)))

(assert (=> b!4600087 (= lt!1759506 (lemmaInListThenGetKeysListContains!573 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(declare-fun call!320993 () Bool)

(assert (=> b!4600087 call!320993))

(declare-fun b!4600088 () Bool)

(declare-fun e!2869352 () Unit!108343)

(declare-fun Unit!108363 () Unit!108343)

(assert (=> b!4600088 (= e!2869352 Unit!108363)))

(declare-fun bm!320988 () Bool)

(assert (=> bm!320988 (= call!320993 (contains!14059 e!2869353 key!3287))))

(declare-fun c!787934 () Bool)

(assert (=> bm!320988 (= c!787934 c!787935)))

(declare-fun b!4600089 () Bool)

(assert (=> b!4600089 (= e!2869350 e!2869352)))

(declare-fun c!787933 () Bool)

(assert (=> b!4600089 (= c!787933 call!320993)))

(declare-fun b!4600090 () Bool)

(assert (=> b!4600090 false))

(declare-fun lt!1759504 () Unit!108343)

(declare-fun lt!1759500 () Unit!108343)

(assert (=> b!4600090 (= lt!1759504 lt!1759500)))

(assert (=> b!4600090 (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287)))

(assert (=> b!4600090 (= lt!1759500 (lemmaInGetKeysListThenContainsKey!576 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(declare-fun Unit!108364 () Unit!108343)

(assert (=> b!4600090 (= e!2869352 Unit!108364)))

(assert (= (and d!1448413 c!787935) b!4600087))

(assert (= (and d!1448413 (not c!787935)) b!4600089))

(assert (= (and b!4600089 c!787933) b!4600090))

(assert (= (and b!4600089 (not c!787933)) b!4600088))

(assert (= (or b!4600087 b!4600089) bm!320988))

(assert (= (and bm!320988 c!787934) b!4600084))

(assert (= (and bm!320988 (not c!787934)) b!4600082))

(assert (= (and d!1448413 res!1924264) b!4600083))

(assert (= (and d!1448413 (not res!1924265)) b!4600085))

(assert (= (and b!4600085 res!1924266) b!4600086))

(declare-fun m!5427247 () Bool)

(assert (=> d!1448413 m!5427247))

(declare-fun m!5427249 () Bool)

(assert (=> bm!320988 m!5427249))

(assert (=> b!4600083 m!5426771))

(declare-fun m!5427251 () Bool)

(assert (=> b!4600083 m!5427251))

(assert (=> b!4600083 m!5427251))

(declare-fun m!5427253 () Bool)

(assert (=> b!4600083 m!5427253))

(declare-fun m!5427255 () Bool)

(assert (=> b!4600085 m!5427255))

(assert (=> b!4600085 m!5427255))

(declare-fun m!5427257 () Bool)

(assert (=> b!4600085 m!5427257))

(assert (=> b!4600090 m!5427247))

(declare-fun m!5427259 () Bool)

(assert (=> b!4600090 m!5427259))

(declare-fun m!5427261 () Bool)

(assert (=> b!4600087 m!5427261))

(assert (=> b!4600087 m!5427255))

(assert (=> b!4600087 m!5427255))

(assert (=> b!4600087 m!5427257))

(declare-fun m!5427263 () Bool)

(assert (=> b!4600087 m!5427263))

(assert (=> b!4600086 m!5426771))

(assert (=> b!4600086 m!5427251))

(assert (=> b!4600086 m!5427251))

(assert (=> b!4600086 m!5427253))

(declare-fun m!5427265 () Bool)

(assert (=> b!4600084 m!5427265))

(assert (=> b!4600082 m!5426771))

(assert (=> b!4600082 m!5427251))

(assert (=> b!4599782 d!1448413))

(declare-fun bs!1011802 () Bool)

(declare-fun d!1448415 () Bool)

(assert (= bs!1011802 (and d!1448415 d!1448351)))

(declare-fun lambda!186465 () Int)

(assert (=> bs!1011802 (= lambda!186465 lambda!186451)))

(declare-fun bs!1011803 () Bool)

(assert (= bs!1011803 (and d!1448415 d!1448329)))

(assert (=> bs!1011803 (= lambda!186465 lambda!186439)))

(declare-fun bs!1011804 () Bool)

(assert (= bs!1011804 (and d!1448415 d!1448391)))

(assert (=> bs!1011804 (= lambda!186465 lambda!186464)))

(declare-fun bs!1011805 () Bool)

(assert (= bs!1011805 (and d!1448415 d!1448283)))

(assert (=> bs!1011805 (= lambda!186465 lambda!186430)))

(declare-fun bs!1011806 () Bool)

(assert (= bs!1011806 (and d!1448415 d!1448389)))

(assert (=> bs!1011806 (= lambda!186465 lambda!186463)))

(declare-fun bs!1011807 () Bool)

(assert (= bs!1011807 (and d!1448415 d!1448273)))

(assert (=> bs!1011807 (= lambda!186465 lambda!186423)))

(declare-fun bs!1011808 () Bool)

(assert (= bs!1011808 (and d!1448415 d!1448381)))

(assert (=> bs!1011808 (= lambda!186465 lambda!186459)))

(declare-fun bs!1011809 () Bool)

(assert (= bs!1011809 (and d!1448415 d!1448383)))

(assert (=> bs!1011809 (= lambda!186465 lambda!186460)))

(declare-fun bs!1011810 () Bool)

(assert (= bs!1011810 (and d!1448415 d!1448373)))

(assert (=> bs!1011810 (= lambda!186465 lambda!186455)))

(declare-fun bs!1011811 () Bool)

(assert (= bs!1011811 (and d!1448415 start!459100)))

(assert (=> bs!1011811 (= lambda!186465 lambda!186420)))

(declare-fun lt!1759507 () ListMap!3929)

(assert (=> d!1448415 (invariantList!1128 (toList!4668 lt!1759507))))

(declare-fun e!2869354 () ListMap!3929)

(assert (=> d!1448415 (= lt!1759507 e!2869354)))

(declare-fun c!787936 () Bool)

(assert (=> d!1448415 (= c!787936 ((_ is Cons!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448415 (forall!10612 (toList!4667 lm!1477) lambda!186465)))

(assert (=> d!1448415 (= (extractMap!1386 (toList!4667 lm!1477)) lt!1759507)))

(declare-fun b!4600091 () Bool)

(assert (=> b!4600091 (= e!2869354 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))))))

(declare-fun b!4600092 () Bool)

(assert (=> b!4600092 (= e!2869354 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448415 c!787936) b!4600091))

(assert (= (and d!1448415 (not c!787936)) b!4600092))

(declare-fun m!5427267 () Bool)

(assert (=> d!1448415 m!5427267))

(declare-fun m!5427269 () Bool)

(assert (=> d!1448415 m!5427269))

(assert (=> b!4600091 m!5426727))

(assert (=> b!4600091 m!5426727))

(declare-fun m!5427271 () Bool)

(assert (=> b!4600091 m!5427271))

(assert (=> b!4599782 d!1448415))

(declare-fun d!1448417 () Bool)

(declare-fun hash!3235 (Hashable!5725 K!12465) (_ BitVec 64))

(assert (=> d!1448417 (= (hash!3231 hashF!1107 key!3287) (hash!3235 hashF!1107 key!3287))))

(declare-fun bs!1011812 () Bool)

(assert (= bs!1011812 d!1448417))

(declare-fun m!5427273 () Bool)

(assert (=> bs!1011812 m!5427273))

(assert (=> b!4599792 d!1448417))

(declare-fun bs!1011813 () Bool)

(declare-fun d!1448419 () Bool)

(assert (= bs!1011813 (and d!1448419 d!1448351)))

(declare-fun lambda!186468 () Int)

(assert (=> bs!1011813 (not (= lambda!186468 lambda!186451))))

(declare-fun bs!1011814 () Bool)

(assert (= bs!1011814 (and d!1448419 d!1448329)))

(assert (=> bs!1011814 (not (= lambda!186468 lambda!186439))))

(declare-fun bs!1011815 () Bool)

(assert (= bs!1011815 (and d!1448419 d!1448391)))

(assert (=> bs!1011815 (not (= lambda!186468 lambda!186464))))

(declare-fun bs!1011816 () Bool)

(assert (= bs!1011816 (and d!1448419 d!1448415)))

(assert (=> bs!1011816 (not (= lambda!186468 lambda!186465))))

(declare-fun bs!1011817 () Bool)

(assert (= bs!1011817 (and d!1448419 d!1448283)))

(assert (=> bs!1011817 (not (= lambda!186468 lambda!186430))))

(declare-fun bs!1011818 () Bool)

(assert (= bs!1011818 (and d!1448419 d!1448389)))

(assert (=> bs!1011818 (not (= lambda!186468 lambda!186463))))

(declare-fun bs!1011819 () Bool)

(assert (= bs!1011819 (and d!1448419 d!1448273)))

(assert (=> bs!1011819 (not (= lambda!186468 lambda!186423))))

(declare-fun bs!1011820 () Bool)

(assert (= bs!1011820 (and d!1448419 d!1448381)))

(assert (=> bs!1011820 (not (= lambda!186468 lambda!186459))))

(declare-fun bs!1011821 () Bool)

(assert (= bs!1011821 (and d!1448419 d!1448383)))

(assert (=> bs!1011821 (not (= lambda!186468 lambda!186460))))

(declare-fun bs!1011822 () Bool)

(assert (= bs!1011822 (and d!1448419 d!1448373)))

(assert (=> bs!1011822 (not (= lambda!186468 lambda!186455))))

(declare-fun bs!1011823 () Bool)

(assert (= bs!1011823 (and d!1448419 start!459100)))

(assert (=> bs!1011823 (not (= lambda!186468 lambda!186420))))

(assert (=> d!1448419 true))

(assert (=> d!1448419 (= (allKeysSameHashInMap!1437 lm!1477 hashF!1107) (forall!10612 (toList!4667 lm!1477) lambda!186468))))

(declare-fun bs!1011824 () Bool)

(assert (= bs!1011824 d!1448419))

(declare-fun m!5427275 () Bool)

(assert (=> bs!1011824 m!5427275))

(assert (=> b!4599781 d!1448419))

(declare-fun d!1448421 () Bool)

(declare-fun res!1924271 () Bool)

(declare-fun e!2869359 () Bool)

(assert (=> d!1448421 (=> res!1924271 e!2869359)))

(assert (=> d!1448421 (= res!1924271 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448421 (= (forall!10612 (toList!4667 lm!1477) lambda!186420) e!2869359)))

(declare-fun b!4600099 () Bool)

(declare-fun e!2869360 () Bool)

(assert (=> b!4600099 (= e!2869359 e!2869360)))

(declare-fun res!1924272 () Bool)

(assert (=> b!4600099 (=> (not res!1924272) (not e!2869360))))

(assert (=> b!4600099 (= res!1924272 (dynLambda!21402 lambda!186420 (h!57067 (toList!4667 lm!1477))))))

(declare-fun b!4600100 () Bool)

(assert (=> b!4600100 (= e!2869360 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186420))))

(assert (= (and d!1448421 (not res!1924271)) b!4600099))

(assert (= (and b!4600099 res!1924272) b!4600100))

(declare-fun b_lambda!169463 () Bool)

(assert (=> (not b_lambda!169463) (not b!4600099)))

(declare-fun m!5427277 () Bool)

(assert (=> b!4600099 m!5427277))

(declare-fun m!5427279 () Bool)

(assert (=> b!4600100 m!5427279))

(assert (=> start!459100 d!1448421))

(declare-fun d!1448423 () Bool)

(assert (=> d!1448423 (= (inv!66649 lm!1477) (isStrictlySorted!544 (toList!4667 lm!1477)))))

(declare-fun bs!1011825 () Bool)

(assert (= bs!1011825 d!1448423))

(assert (=> bs!1011825 m!5427221))

(assert (=> start!459100 d!1448423))

(assert (=> b!4599791 d!1448421))

(declare-fun b!4600105 () Bool)

(declare-fun e!2869363 () Bool)

(declare-fun tp!1340523 () Bool)

(declare-fun tp!1340524 () Bool)

(assert (=> b!4600105 (= e!2869363 (and tp!1340523 tp!1340524))))

(assert (=> b!4599776 (= tp!1340509 e!2869363)))

(assert (= (and b!4599776 ((_ is Cons!51099) (toList!4667 lm!1477))) b!4600105))

(declare-fun tp!1340527 () Bool)

(declare-fun b!4600110 () Bool)

(declare-fun e!2869366 () Bool)

(assert (=> b!4600110 (= e!2869366 (and tp_is_empty!28597 tp_is_empty!28599 tp!1340527))))

(assert (=> b!4599786 (= tp!1340508 e!2869366)))

(assert (= (and b!4599786 ((_ is Cons!51098) (t!358216 newBucket!178))) b!4600110))

(declare-fun b_lambda!169465 () Bool)

(assert (= b_lambda!169463 (or start!459100 b_lambda!169465)))

(declare-fun bs!1011826 () Bool)

(declare-fun d!1448425 () Bool)

(assert (= bs!1011826 (and d!1448425 start!459100)))

(assert (=> bs!1011826 (= (dynLambda!21402 lambda!186420 (h!57067 (toList!4667 lm!1477))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> bs!1011826 m!5426761))

(assert (=> b!4600099 d!1448425))

(declare-fun b_lambda!169467 () Bool)

(assert (= b_lambda!169461 (or start!459100 b_lambda!169467)))

(declare-fun bs!1011827 () Bool)

(declare-fun d!1448427 () Bool)

(assert (= bs!1011827 (and d!1448427 start!459100)))

(assert (=> bs!1011827 (= (dynLambda!21402 lambda!186420 lt!1759282) (noDuplicateKeys!1326 (_2!29172 lt!1759282)))))

(declare-fun m!5427281 () Bool)

(assert (=> bs!1011827 m!5427281))

(assert (=> d!1448403 d!1448427))

(check-sat (not bm!320987) (not b!4600012) (not d!1448401) tp_is_empty!28597 (not b!4599919) (not d!1448403) (not d!1448375) (not b!4600090) (not b!4599933) (not b!4600065) (not d!1448389) (not b!4600007) (not b!4600051) (not d!1448397) (not b!4600040) (not d!1448419) (not d!1448283) (not b!4600042) (not b!4600074) (not b!4600085) (not bm!320988) (not b!4600006) (not b!4599815) (not bm!320986) (not b!4599817) (not b!4600010) (not b!4600001) (not b!4600028) (not b!4600000) (not b!4600003) (not b!4600087) (not b!4600083) (not d!1448323) (not b!4600038) (not b!4599880) (not b!4600067) (not d!1448317) (not b!4600017) (not d!1448383) (not b!4600075) (not bs!1011827) (not b!4600013) (not b!4600086) (not d!1448335) (not b!4600082) (not d!1448393) (not d!1448391) (not d!1448399) (not b!4600002) (not d!1448379) (not d!1448387) (not b!4600039) (not b!4600105) (not d!1448303) (not b!4600011) tp_is_empty!28599 (not b_lambda!169467) (not b!4600084) (not d!1448385) (not b_lambda!169465) (not d!1448395) (not b!4600054) (not b!4600091) (not b!4600048) (not b!4600081) (not d!1448415) (not d!1448273) (not b!4600110) (not d!1448377) (not d!1448329) (not b!4600072) (not d!1448351) (not b!4600100) (not d!1448373) (not b!4600073) (not b!4600036) (not d!1448417) (not d!1448275) (not b!4600058) (not d!1448381) (not d!1448413) (not d!1448363) (not b!4599998) (not b!4599856) (not b!4600034) (not b!4599918) (not b!4600014) (not d!1448423) (not b!4600009) (not b!4599999) (not bs!1011826))
(check-sat)
(get-model)

(declare-fun d!1448429 () Bool)

(declare-fun noDuplicatedKeys!327 (List!51222) Bool)

(assert (=> d!1448429 (= (invariantList!1128 (toList!4668 lt!1759475)) (noDuplicatedKeys!327 (toList!4668 lt!1759475)))))

(declare-fun bs!1011828 () Bool)

(assert (= bs!1011828 d!1448429))

(declare-fun m!5427283 () Bool)

(assert (=> bs!1011828 m!5427283))

(assert (=> d!1448381 d!1448429))

(declare-fun d!1448431 () Bool)

(declare-fun res!1924273 () Bool)

(declare-fun e!2869367 () Bool)

(assert (=> d!1448431 (=> res!1924273 e!2869367)))

(assert (=> d!1448431 (= res!1924273 ((_ is Nil!51099) (t!358217 (toList!4667 lm!1477))))))

(assert (=> d!1448431 (= (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186459) e!2869367)))

(declare-fun b!4600111 () Bool)

(declare-fun e!2869368 () Bool)

(assert (=> b!4600111 (= e!2869367 e!2869368)))

(declare-fun res!1924274 () Bool)

(assert (=> b!4600111 (=> (not res!1924274) (not e!2869368))))

(assert (=> b!4600111 (= res!1924274 (dynLambda!21402 lambda!186459 (h!57067 (t!358217 (toList!4667 lm!1477)))))))

(declare-fun b!4600112 () Bool)

(assert (=> b!4600112 (= e!2869368 (forall!10612 (t!358217 (t!358217 (toList!4667 lm!1477))) lambda!186459))))

(assert (= (and d!1448431 (not res!1924273)) b!4600111))

(assert (= (and b!4600111 res!1924274) b!4600112))

(declare-fun b_lambda!169469 () Bool)

(assert (=> (not b_lambda!169469) (not b!4600111)))

(declare-fun m!5427285 () Bool)

(assert (=> b!4600111 m!5427285))

(declare-fun m!5427287 () Bool)

(assert (=> b!4600112 m!5427287))

(assert (=> d!1448381 d!1448431))

(declare-fun d!1448433 () Bool)

(declare-fun res!1924279 () Bool)

(declare-fun e!2869373 () Bool)

(assert (=> d!1448433 (=> res!1924279 e!2869373)))

(assert (=> d!1448433 (= res!1924279 (and ((_ is Cons!51098) (toList!4668 lt!1759280)) (= (_1!29171 (h!57066 (toList!4668 lt!1759280))) key!3287)))))

(assert (=> d!1448433 (= (containsKey!2174 (toList!4668 lt!1759280) key!3287) e!2869373)))

(declare-fun b!4600117 () Bool)

(declare-fun e!2869374 () Bool)

(assert (=> b!4600117 (= e!2869373 e!2869374)))

(declare-fun res!1924280 () Bool)

(assert (=> b!4600117 (=> (not res!1924280) (not e!2869374))))

(assert (=> b!4600117 (= res!1924280 ((_ is Cons!51098) (toList!4668 lt!1759280)))))

(declare-fun b!4600118 () Bool)

(assert (=> b!4600118 (= e!2869374 (containsKey!2174 (t!358216 (toList!4668 lt!1759280)) key!3287))))

(assert (= (and d!1448433 (not res!1924279)) b!4600117))

(assert (= (and b!4600117 res!1924280) b!4600118))

(declare-fun m!5427289 () Bool)

(assert (=> b!4600118 m!5427289))

(assert (=> d!1448375 d!1448433))

(declare-fun d!1448435 () Bool)

(declare-fun res!1924281 () Bool)

(declare-fun e!2869375 () Bool)

(assert (=> d!1448435 (=> res!1924281 e!2869375)))

(assert (=> d!1448435 (= res!1924281 (not ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))

(assert (=> d!1448435 (= (noDuplicateKeys!1326 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) e!2869375)))

(declare-fun b!4600119 () Bool)

(declare-fun e!2869376 () Bool)

(assert (=> b!4600119 (= e!2869375 e!2869376)))

(declare-fun res!1924282 () Bool)

(assert (=> b!4600119 (=> (not res!1924282) (not e!2869376))))

(assert (=> b!4600119 (= res!1924282 (not (containsKey!2170 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (_1!29171 (h!57066 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))))

(declare-fun b!4600120 () Bool)

(assert (=> b!4600120 (= e!2869376 (noDuplicateKeys!1326 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))

(assert (= (and d!1448435 (not res!1924281)) b!4600119))

(assert (= (and b!4600119 res!1924282) b!4600120))

(declare-fun m!5427291 () Bool)

(assert (=> b!4600119 m!5427291))

(declare-fun m!5427293 () Bool)

(assert (=> b!4600120 m!5427293))

(assert (=> b!4600075 d!1448435))

(assert (=> bs!1011826 d!1448409))

(declare-fun d!1448437 () Bool)

(declare-fun lt!1759510 () Bool)

(assert (=> d!1448437 (= lt!1759510 (select (content!8654 (keys!17896 (extractMap!1386 (toList!4667 lm!1477)))) key!3287))))

(declare-fun e!2869381 () Bool)

(assert (=> d!1448437 (= lt!1759510 e!2869381)))

(declare-fun res!1924287 () Bool)

(assert (=> d!1448437 (=> (not res!1924287) (not e!2869381))))

(assert (=> d!1448437 (= res!1924287 ((_ is Cons!51101) (keys!17896 (extractMap!1386 (toList!4667 lm!1477)))))))

(assert (=> d!1448437 (= (contains!14059 (keys!17896 (extractMap!1386 (toList!4667 lm!1477))) key!3287) lt!1759510)))

(declare-fun b!4600125 () Bool)

(declare-fun e!2869382 () Bool)

(assert (=> b!4600125 (= e!2869381 e!2869382)))

(declare-fun res!1924288 () Bool)

(assert (=> b!4600125 (=> res!1924288 e!2869382)))

(assert (=> b!4600125 (= res!1924288 (= (h!57071 (keys!17896 (extractMap!1386 (toList!4667 lm!1477)))) key!3287))))

(declare-fun b!4600126 () Bool)

(assert (=> b!4600126 (= e!2869382 (contains!14059 (t!358219 (keys!17896 (extractMap!1386 (toList!4667 lm!1477)))) key!3287))))

(assert (= (and d!1448437 res!1924287) b!4600125))

(assert (= (and b!4600125 (not res!1924288)) b!4600126))

(assert (=> d!1448437 m!5427251))

(declare-fun m!5427295 () Bool)

(assert (=> d!1448437 m!5427295))

(declare-fun m!5427297 () Bool)

(assert (=> d!1448437 m!5427297))

(declare-fun m!5427299 () Bool)

(assert (=> b!4600126 m!5427299))

(assert (=> b!4600083 d!1448437))

(declare-fun b!4600134 () Bool)

(assert (=> b!4600134 true))

(declare-fun d!1448439 () Bool)

(declare-fun e!2869385 () Bool)

(assert (=> d!1448439 e!2869385))

(declare-fun res!1924295 () Bool)

(assert (=> d!1448439 (=> (not res!1924295) (not e!2869385))))

(declare-fun lt!1759513 () List!51225)

(declare-fun noDuplicate!813 (List!51225) Bool)

(assert (=> d!1448439 (= res!1924295 (noDuplicate!813 lt!1759513))))

(assert (=> d!1448439 (= lt!1759513 (getKeysList!577 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))

(assert (=> d!1448439 (= (keys!17896 (extractMap!1386 (toList!4667 lm!1477))) lt!1759513)))

(declare-fun b!4600133 () Bool)

(declare-fun res!1924296 () Bool)

(assert (=> b!4600133 (=> (not res!1924296) (not e!2869385))))

(declare-fun length!482 (List!51225) Int)

(declare-fun length!483 (List!51222) Int)

(assert (=> b!4600133 (= res!1924296 (= (length!482 lt!1759513) (length!483 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))))

(declare-fun res!1924297 () Bool)

(assert (=> b!4600134 (=> (not res!1924297) (not e!2869385))))

(declare-fun lambda!186473 () Int)

(declare-fun forall!10615 (List!51225 Int) Bool)

(assert (=> b!4600134 (= res!1924297 (forall!10615 lt!1759513 lambda!186473))))

(declare-fun lambda!186474 () Int)

(declare-fun b!4600135 () Bool)

(declare-fun map!11289 (List!51222 Int) List!51225)

(assert (=> b!4600135 (= e!2869385 (= (content!8654 lt!1759513) (content!8654 (map!11289 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) lambda!186474))))))

(assert (= (and d!1448439 res!1924295) b!4600133))

(assert (= (and b!4600133 res!1924296) b!4600134))

(assert (= (and b!4600134 res!1924297) b!4600135))

(declare-fun m!5427301 () Bool)

(assert (=> d!1448439 m!5427301))

(assert (=> d!1448439 m!5427265))

(declare-fun m!5427303 () Bool)

(assert (=> b!4600133 m!5427303))

(declare-fun m!5427305 () Bool)

(assert (=> b!4600133 m!5427305))

(declare-fun m!5427307 () Bool)

(assert (=> b!4600134 m!5427307))

(declare-fun m!5427309 () Bool)

(assert (=> b!4600135 m!5427309))

(declare-fun m!5427311 () Bool)

(assert (=> b!4600135 m!5427311))

(assert (=> b!4600135 m!5427311))

(declare-fun m!5427313 () Bool)

(assert (=> b!4600135 m!5427313))

(assert (=> b!4600083 d!1448439))

(declare-fun d!1448443 () Bool)

(declare-fun res!1924298 () Bool)

(declare-fun e!2869386 () Bool)

(assert (=> d!1448443 (=> res!1924298 e!2869386)))

(assert (=> d!1448443 (= res!1924298 (and ((_ is Cons!51098) (_2!29172 (h!57067 lt!1759278))) (= (_1!29171 (h!57066 (_2!29172 (h!57067 lt!1759278)))) key!3287)))))

(assert (=> d!1448443 (= (containsKey!2170 (_2!29172 (h!57067 lt!1759278)) key!3287) e!2869386)))

(declare-fun b!4600138 () Bool)

(declare-fun e!2869387 () Bool)

(assert (=> b!4600138 (= e!2869386 e!2869387)))

(declare-fun res!1924299 () Bool)

(assert (=> b!4600138 (=> (not res!1924299) (not e!2869387))))

(assert (=> b!4600138 (= res!1924299 ((_ is Cons!51098) (_2!29172 (h!57067 lt!1759278))))))

(declare-fun b!4600139 () Bool)

(assert (=> b!4600139 (= e!2869387 (containsKey!2170 (t!358216 (_2!29172 (h!57067 lt!1759278))) key!3287))))

(assert (= (and d!1448443 (not res!1924298)) b!4600138))

(assert (= (and b!4600138 res!1924299) b!4600139))

(declare-fun m!5427315 () Bool)

(assert (=> b!4600139 m!5427315))

(assert (=> b!4600065 d!1448443))

(declare-fun d!1448445 () Bool)

(declare-fun isEmpty!28867 (Option!11399) Bool)

(assert (=> d!1448445 (= (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759280) key!3287)) (not (isEmpty!28867 (getValueByKey!1319 (toList!4668 lt!1759280) key!3287))))))

(declare-fun bs!1011829 () Bool)

(assert (= bs!1011829 d!1448445))

(assert (=> bs!1011829 m!5427141))

(declare-fun m!5427317 () Bool)

(assert (=> bs!1011829 m!5427317))

(assert (=> b!4600012 d!1448445))

(declare-fun b!4600151 () Bool)

(declare-fun e!2869394 () Option!11399)

(declare-fun e!2869395 () Option!11399)

(assert (=> b!4600151 (= e!2869394 e!2869395)))

(declare-fun c!787942 () Bool)

(assert (=> b!4600151 (= c!787942 (and ((_ is Cons!51098) (toList!4668 lt!1759280)) (not (= (_1!29171 (h!57066 (toList!4668 lt!1759280))) key!3287))))))

(declare-fun b!4600152 () Bool)

(assert (=> b!4600152 (= e!2869395 (getValueByKey!1319 (t!358216 (toList!4668 lt!1759280)) key!3287))))

(declare-fun d!1448447 () Bool)

(declare-fun c!787941 () Bool)

(assert (=> d!1448447 (= c!787941 (and ((_ is Cons!51098) (toList!4668 lt!1759280)) (= (_1!29171 (h!57066 (toList!4668 lt!1759280))) key!3287)))))

(assert (=> d!1448447 (= (getValueByKey!1319 (toList!4668 lt!1759280) key!3287) e!2869394)))

(declare-fun b!4600150 () Bool)

(assert (=> b!4600150 (= e!2869394 (Some!11398 (_2!29171 (h!57066 (toList!4668 lt!1759280)))))))

(declare-fun b!4600153 () Bool)

(assert (=> b!4600153 (= e!2869395 None!11398)))

(assert (= (and d!1448447 c!787941) b!4600150))

(assert (= (and d!1448447 (not c!787941)) b!4600151))

(assert (= (and b!4600151 c!787942) b!4600152))

(assert (= (and b!4600151 (not c!787942)) b!4600153))

(declare-fun m!5427319 () Bool)

(assert (=> b!4600152 m!5427319))

(assert (=> b!4600012 d!1448447))

(declare-fun d!1448449 () Bool)

(assert (=> d!1448449 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(declare-fun lt!1759519 () Unit!108343)

(declare-fun choose!30847 (List!51222 K!12465) Unit!108343)

(assert (=> d!1448449 (= lt!1759519 (choose!30847 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(assert (=> d!1448449 (invariantList!1128 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))

(assert (=> d!1448449 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287) lt!1759519)))

(declare-fun bs!1011830 () Bool)

(assert (= bs!1011830 d!1448449))

(assert (=> bs!1011830 m!5427255))

(assert (=> bs!1011830 m!5427255))

(assert (=> bs!1011830 m!5427257))

(declare-fun m!5427325 () Bool)

(assert (=> bs!1011830 m!5427325))

(declare-fun m!5427327 () Bool)

(assert (=> bs!1011830 m!5427327))

(assert (=> b!4600087 d!1448449))

(declare-fun d!1448453 () Bool)

(assert (=> d!1448453 (= (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287)) (not (isEmpty!28867 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))))

(declare-fun bs!1011831 () Bool)

(assert (= bs!1011831 d!1448453))

(assert (=> bs!1011831 m!5427255))

(declare-fun m!5427329 () Bool)

(assert (=> bs!1011831 m!5427329))

(assert (=> b!4600087 d!1448453))

(declare-fun b!4600156 () Bool)

(declare-fun e!2869397 () Option!11399)

(declare-fun e!2869398 () Option!11399)

(assert (=> b!4600156 (= e!2869397 e!2869398)))

(declare-fun c!787944 () Bool)

(assert (=> b!4600156 (= c!787944 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (not (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) key!3287))))))

(declare-fun b!4600157 () Bool)

(assert (=> b!4600157 (= e!2869398 (getValueByKey!1319 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) key!3287))))

(declare-fun d!1448455 () Bool)

(declare-fun c!787943 () Bool)

(assert (=> d!1448455 (= c!787943 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) key!3287)))))

(assert (=> d!1448455 (= (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287) e!2869397)))

(declare-fun b!4600155 () Bool)

(assert (=> b!4600155 (= e!2869397 (Some!11398 (_2!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))))

(declare-fun b!4600158 () Bool)

(assert (=> b!4600158 (= e!2869398 None!11398)))

(assert (= (and d!1448455 c!787943) b!4600155))

(assert (= (and d!1448455 (not c!787943)) b!4600156))

(assert (= (and b!4600156 c!787944) b!4600157))

(assert (= (and b!4600156 (not c!787944)) b!4600158))

(declare-fun m!5427331 () Bool)

(assert (=> b!4600157 m!5427331))

(assert (=> b!4600087 d!1448455))

(declare-fun d!1448457 () Bool)

(assert (=> d!1448457 (contains!14059 (getKeysList!577 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) key!3287)))

(declare-fun lt!1759522 () Unit!108343)

(declare-fun choose!30848 (List!51222 K!12465) Unit!108343)

(assert (=> d!1448457 (= lt!1759522 (choose!30848 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(assert (=> d!1448457 (invariantList!1128 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))

(assert (=> d!1448457 (= (lemmaInListThenGetKeysListContains!573 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287) lt!1759522)))

(declare-fun bs!1011833 () Bool)

(assert (= bs!1011833 d!1448457))

(assert (=> bs!1011833 m!5427265))

(assert (=> bs!1011833 m!5427265))

(declare-fun m!5427335 () Bool)

(assert (=> bs!1011833 m!5427335))

(declare-fun m!5427337 () Bool)

(assert (=> bs!1011833 m!5427337))

(assert (=> bs!1011833 m!5427327))

(assert (=> b!4600087 d!1448457))

(declare-fun d!1448461 () Bool)

(declare-fun lt!1759523 () Bool)

(assert (=> d!1448461 (= lt!1759523 (select (content!8658 (toList!4667 lt!1759392)) lt!1759277))))

(declare-fun e!2869399 () Bool)

(assert (=> d!1448461 (= lt!1759523 e!2869399)))

(declare-fun res!1924303 () Bool)

(assert (=> d!1448461 (=> (not res!1924303) (not e!2869399))))

(assert (=> d!1448461 (= res!1924303 ((_ is Cons!51099) (toList!4667 lt!1759392)))))

(assert (=> d!1448461 (= (contains!14055 (toList!4667 lt!1759392) lt!1759277) lt!1759523)))

(declare-fun b!4600162 () Bool)

(declare-fun e!2869401 () Bool)

(assert (=> b!4600162 (= e!2869399 e!2869401)))

(declare-fun res!1924304 () Bool)

(assert (=> b!4600162 (=> res!1924304 e!2869401)))

(assert (=> b!4600162 (= res!1924304 (= (h!57067 (toList!4667 lt!1759392)) lt!1759277))))

(declare-fun b!4600163 () Bool)

(assert (=> b!4600163 (= e!2869401 (contains!14055 (t!358217 (toList!4667 lt!1759392)) lt!1759277))))

(assert (= (and d!1448461 res!1924303) b!4600162))

(assert (= (and b!4600162 (not res!1924304)) b!4600163))

(declare-fun m!5427339 () Bool)

(assert (=> d!1448461 m!5427339))

(declare-fun m!5427341 () Bool)

(assert (=> d!1448461 m!5427341))

(declare-fun m!5427343 () Bool)

(assert (=> b!4600163 m!5427343))

(assert (=> b!4599919 d!1448461))

(assert (=> b!4600085 d!1448453))

(assert (=> b!4600085 d!1448455))

(declare-fun d!1448463 () Bool)

(declare-fun res!1924305 () Bool)

(declare-fun e!2869407 () Bool)

(assert (=> d!1448463 (=> res!1924305 e!2869407)))

(declare-fun e!2869406 () Bool)

(assert (=> d!1448463 (= res!1924305 e!2869406)))

(declare-fun res!1924306 () Bool)

(assert (=> d!1448463 (=> (not res!1924306) (not e!2869406))))

(assert (=> d!1448463 (= res!1924306 ((_ is Cons!51099) (t!358217 lt!1759278)))))

(assert (=> d!1448463 (= (containsKeyBiggerList!282 (t!358217 lt!1759278) key!3287) e!2869407)))

(declare-fun b!4600169 () Bool)

(assert (=> b!4600169 (= e!2869406 (containsKey!2170 (_2!29172 (h!57067 (t!358217 lt!1759278))) key!3287))))

(declare-fun b!4600170 () Bool)

(declare-fun e!2869405 () Bool)

(assert (=> b!4600170 (= e!2869407 e!2869405)))

(declare-fun res!1924307 () Bool)

(assert (=> b!4600170 (=> (not res!1924307) (not e!2869405))))

(assert (=> b!4600170 (= res!1924307 ((_ is Cons!51099) (t!358217 lt!1759278)))))

(declare-fun b!4600171 () Bool)

(assert (=> b!4600171 (= e!2869405 (containsKeyBiggerList!282 (t!358217 (t!358217 lt!1759278)) key!3287))))

(assert (= (and d!1448463 res!1924306) b!4600169))

(assert (= (and d!1448463 (not res!1924305)) b!4600170))

(assert (= (and b!4600170 res!1924307) b!4600171))

(declare-fun m!5427345 () Bool)

(assert (=> b!4600169 m!5427345))

(declare-fun m!5427347 () Bool)

(assert (=> b!4600171 m!5427347))

(assert (=> b!4600067 d!1448463))

(declare-fun d!1448465 () Bool)

(declare-fun lt!1759524 () Bool)

(assert (=> d!1448465 (= lt!1759524 (select (content!8654 (keys!17896 lt!1759280)) key!3287))))

(declare-fun e!2869408 () Bool)

(assert (=> d!1448465 (= lt!1759524 e!2869408)))

(declare-fun res!1924308 () Bool)

(assert (=> d!1448465 (=> (not res!1924308) (not e!2869408))))

(assert (=> d!1448465 (= res!1924308 ((_ is Cons!51101) (keys!17896 lt!1759280)))))

(assert (=> d!1448465 (= (contains!14059 (keys!17896 lt!1759280) key!3287) lt!1759524)))

(declare-fun b!4600172 () Bool)

(declare-fun e!2869409 () Bool)

(assert (=> b!4600172 (= e!2869408 e!2869409)))

(declare-fun res!1924309 () Bool)

(assert (=> b!4600172 (=> res!1924309 e!2869409)))

(assert (=> b!4600172 (= res!1924309 (= (h!57071 (keys!17896 lt!1759280)) key!3287))))

(declare-fun b!4600173 () Bool)

(assert (=> b!4600173 (= e!2869409 (contains!14059 (t!358219 (keys!17896 lt!1759280)) key!3287))))

(assert (= (and d!1448465 res!1924308) b!4600172))

(assert (= (and b!4600172 (not res!1924309)) b!4600173))

(assert (=> d!1448465 m!5427137))

(declare-fun m!5427349 () Bool)

(assert (=> d!1448465 m!5427349))

(declare-fun m!5427351 () Bool)

(assert (=> d!1448465 m!5427351))

(declare-fun m!5427353 () Bool)

(assert (=> b!4600173 m!5427353))

(assert (=> b!4600010 d!1448465))

(declare-fun bs!1011834 () Bool)

(declare-fun b!4600175 () Bool)

(assert (= bs!1011834 (and b!4600175 b!4600134)))

(declare-fun lambda!186475 () Int)

(assert (=> bs!1011834 (= (= (toList!4668 lt!1759280) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186475 lambda!186473))))

(assert (=> b!4600175 true))

(declare-fun bs!1011835 () Bool)

(declare-fun b!4600176 () Bool)

(assert (= bs!1011835 (and b!4600176 b!4600135)))

(declare-fun lambda!186476 () Int)

(assert (=> bs!1011835 (= lambda!186476 lambda!186474)))

(declare-fun d!1448467 () Bool)

(declare-fun e!2869410 () Bool)

(assert (=> d!1448467 e!2869410))

(declare-fun res!1924310 () Bool)

(assert (=> d!1448467 (=> (not res!1924310) (not e!2869410))))

(declare-fun lt!1759525 () List!51225)

(assert (=> d!1448467 (= res!1924310 (noDuplicate!813 lt!1759525))))

(assert (=> d!1448467 (= lt!1759525 (getKeysList!577 (toList!4668 lt!1759280)))))

(assert (=> d!1448467 (= (keys!17896 lt!1759280) lt!1759525)))

(declare-fun b!4600174 () Bool)

(declare-fun res!1924311 () Bool)

(assert (=> b!4600174 (=> (not res!1924311) (not e!2869410))))

(assert (=> b!4600174 (= res!1924311 (= (length!482 lt!1759525) (length!483 (toList!4668 lt!1759280))))))

(declare-fun res!1924312 () Bool)

(assert (=> b!4600175 (=> (not res!1924312) (not e!2869410))))

(assert (=> b!4600175 (= res!1924312 (forall!10615 lt!1759525 lambda!186475))))

(assert (=> b!4600176 (= e!2869410 (= (content!8654 lt!1759525) (content!8654 (map!11289 (toList!4668 lt!1759280) lambda!186476))))))

(assert (= (and d!1448467 res!1924310) b!4600174))

(assert (= (and b!4600174 res!1924311) b!4600175))

(assert (= (and b!4600175 res!1924312) b!4600176))

(declare-fun m!5427355 () Bool)

(assert (=> d!1448467 m!5427355))

(assert (=> d!1448467 m!5427151))

(declare-fun m!5427357 () Bool)

(assert (=> b!4600174 m!5427357))

(declare-fun m!5427359 () Bool)

(assert (=> b!4600174 m!5427359))

(declare-fun m!5427361 () Bool)

(assert (=> b!4600175 m!5427361))

(declare-fun m!5427363 () Bool)

(assert (=> b!4600176 m!5427363))

(declare-fun m!5427365 () Bool)

(assert (=> b!4600176 m!5427365))

(assert (=> b!4600176 m!5427365))

(declare-fun m!5427367 () Bool)

(assert (=> b!4600176 m!5427367))

(assert (=> b!4600010 d!1448467))

(declare-fun d!1448469 () Bool)

(declare-fun lt!1759526 () Bool)

(assert (=> d!1448469 (= lt!1759526 (select (content!8654 e!2869353) key!3287))))

(declare-fun e!2869411 () Bool)

(assert (=> d!1448469 (= lt!1759526 e!2869411)))

(declare-fun res!1924313 () Bool)

(assert (=> d!1448469 (=> (not res!1924313) (not e!2869411))))

(assert (=> d!1448469 (= res!1924313 ((_ is Cons!51101) e!2869353))))

(assert (=> d!1448469 (= (contains!14059 e!2869353 key!3287) lt!1759526)))

(declare-fun b!4600177 () Bool)

(declare-fun e!2869412 () Bool)

(assert (=> b!4600177 (= e!2869411 e!2869412)))

(declare-fun res!1924314 () Bool)

(assert (=> b!4600177 (=> res!1924314 e!2869412)))

(assert (=> b!4600177 (= res!1924314 (= (h!57071 e!2869353) key!3287))))

(declare-fun b!4600178 () Bool)

(assert (=> b!4600178 (= e!2869412 (contains!14059 (t!358219 e!2869353) key!3287))))

(assert (= (and d!1448469 res!1924313) b!4600177))

(assert (= (and b!4600177 (not res!1924314)) b!4600178))

(declare-fun m!5427369 () Bool)

(assert (=> d!1448469 m!5427369))

(declare-fun m!5427371 () Bool)

(assert (=> d!1448469 m!5427371))

(declare-fun m!5427373 () Bool)

(assert (=> b!4600178 m!5427373))

(assert (=> bm!320988 d!1448469))

(declare-fun d!1448471 () Bool)

(assert (=> d!1448471 (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759280) key!3287))))

(declare-fun lt!1759527 () Unit!108343)

(assert (=> d!1448471 (= lt!1759527 (choose!30847 (toList!4668 lt!1759280) key!3287))))

(assert (=> d!1448471 (invariantList!1128 (toList!4668 lt!1759280))))

(assert (=> d!1448471 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 lt!1759280) key!3287) lt!1759527)))

(declare-fun bs!1011836 () Bool)

(assert (= bs!1011836 d!1448471))

(assert (=> bs!1011836 m!5427141))

(assert (=> bs!1011836 m!5427141))

(assert (=> bs!1011836 m!5427143))

(declare-fun m!5427375 () Bool)

(assert (=> bs!1011836 m!5427375))

(declare-fun m!5427377 () Bool)

(assert (=> bs!1011836 m!5427377))

(assert (=> b!4600014 d!1448471))

(assert (=> b!4600014 d!1448445))

(assert (=> b!4600014 d!1448447))

(declare-fun d!1448473 () Bool)

(assert (=> d!1448473 (contains!14059 (getKeysList!577 (toList!4668 lt!1759280)) key!3287)))

(declare-fun lt!1759528 () Unit!108343)

(assert (=> d!1448473 (= lt!1759528 (choose!30848 (toList!4668 lt!1759280) key!3287))))

(assert (=> d!1448473 (invariantList!1128 (toList!4668 lt!1759280))))

(assert (=> d!1448473 (= (lemmaInListThenGetKeysListContains!573 (toList!4668 lt!1759280) key!3287) lt!1759528)))

(declare-fun bs!1011837 () Bool)

(assert (= bs!1011837 d!1448473))

(assert (=> bs!1011837 m!5427151))

(assert (=> bs!1011837 m!5427151))

(declare-fun m!5427379 () Bool)

(assert (=> bs!1011837 m!5427379))

(declare-fun m!5427381 () Bool)

(assert (=> bs!1011837 m!5427381))

(assert (=> bs!1011837 m!5427377))

(assert (=> b!4600014 d!1448473))

(declare-fun d!1448475 () Bool)

(declare-fun res!1924319 () Bool)

(declare-fun e!2869419 () Bool)

(assert (=> d!1448475 (=> res!1924319 e!2869419)))

(assert (=> d!1448475 (= res!1924319 ((_ is Nil!51098) newBucket!178))))

(assert (=> d!1448475 (= (forall!10613 newBucket!178 lambda!186458) e!2869419)))

(declare-fun b!4600187 () Bool)

(declare-fun e!2869420 () Bool)

(assert (=> b!4600187 (= e!2869419 e!2869420)))

(declare-fun res!1924320 () Bool)

(assert (=> b!4600187 (=> (not res!1924320) (not e!2869420))))

(declare-fun dynLambda!21403 (Int tuple2!51754) Bool)

(assert (=> b!4600187 (= res!1924320 (dynLambda!21403 lambda!186458 (h!57066 newBucket!178)))))

(declare-fun b!4600188 () Bool)

(assert (=> b!4600188 (= e!2869420 (forall!10613 (t!358216 newBucket!178) lambda!186458))))

(assert (= (and d!1448475 (not res!1924319)) b!4600187))

(assert (= (and b!4600187 res!1924320) b!4600188))

(declare-fun b_lambda!169471 () Bool)

(assert (=> (not b_lambda!169471) (not b!4600187)))

(declare-fun m!5427385 () Bool)

(assert (=> b!4600187 m!5427385))

(declare-fun m!5427387 () Bool)

(assert (=> b!4600188 m!5427387))

(assert (=> d!1448379 d!1448475))

(declare-fun b!4600191 () Bool)

(declare-fun e!2869428 () List!51225)

(assert (=> b!4600191 (= e!2869428 (keys!17896 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))))))

(declare-fun b!4600192 () Bool)

(declare-fun e!2869423 () Bool)

(assert (=> b!4600192 (= e!2869423 (not (contains!14059 (keys!17896 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287)))))

(declare-fun d!1448479 () Bool)

(declare-fun e!2869426 () Bool)

(assert (=> d!1448479 e!2869426))

(declare-fun res!1924324 () Bool)

(assert (=> d!1448479 (=> res!1924324 e!2869426)))

(assert (=> d!1448479 (= res!1924324 e!2869423)))

(declare-fun res!1924323 () Bool)

(assert (=> d!1448479 (=> (not res!1924323) (not e!2869423))))

(declare-fun lt!1759535 () Bool)

(assert (=> d!1448479 (= res!1924323 (not lt!1759535))))

(declare-fun lt!1759529 () Bool)

(assert (=> d!1448479 (= lt!1759535 lt!1759529)))

(declare-fun lt!1759533 () Unit!108343)

(declare-fun e!2869425 () Unit!108343)

(assert (=> d!1448479 (= lt!1759533 e!2869425)))

(declare-fun c!787953 () Bool)

(assert (=> d!1448479 (= c!787953 lt!1759529)))

(assert (=> d!1448479 (= lt!1759529 (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(assert (=> d!1448479 (= (contains!14057 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278))) key!3287) lt!1759535)))

(declare-fun b!4600193 () Bool)

(assert (=> b!4600193 (= e!2869428 (getKeysList!577 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278))))))))

(declare-fun b!4600194 () Bool)

(declare-fun e!2869424 () Bool)

(assert (=> b!4600194 (= e!2869426 e!2869424)))

(declare-fun res!1924325 () Bool)

(assert (=> b!4600194 (=> (not res!1924325) (not e!2869424))))

(assert (=> b!4600194 (= res!1924325 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287)))))

(declare-fun b!4600195 () Bool)

(assert (=> b!4600195 (= e!2869424 (contains!14059 (keys!17896 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(declare-fun b!4600196 () Bool)

(declare-fun lt!1759536 () Unit!108343)

(assert (=> b!4600196 (= e!2869425 lt!1759536)))

(declare-fun lt!1759531 () Unit!108343)

(assert (=> b!4600196 (= lt!1759531 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(assert (=> b!4600196 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(declare-fun lt!1759532 () Unit!108343)

(assert (=> b!4600196 (= lt!1759532 lt!1759531)))

(assert (=> b!4600196 (= lt!1759536 (lemmaInListThenGetKeysListContains!573 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(declare-fun call!320994 () Bool)

(assert (=> b!4600196 call!320994))

(declare-fun b!4600197 () Bool)

(declare-fun e!2869427 () Unit!108343)

(declare-fun Unit!108365 () Unit!108343)

(assert (=> b!4600197 (= e!2869427 Unit!108365)))

(declare-fun bm!320989 () Bool)

(assert (=> bm!320989 (= call!320994 (contains!14059 e!2869428 key!3287))))

(declare-fun c!787952 () Bool)

(assert (=> bm!320989 (= c!787952 c!787953)))

(declare-fun b!4600200 () Bool)

(assert (=> b!4600200 (= e!2869425 e!2869427)))

(declare-fun c!787951 () Bool)

(assert (=> b!4600200 (= c!787951 call!320994)))

(declare-fun b!4600201 () Bool)

(assert (=> b!4600201 false))

(declare-fun lt!1759534 () Unit!108343)

(declare-fun lt!1759530 () Unit!108343)

(assert (=> b!4600201 (= lt!1759534 lt!1759530)))

(assert (=> b!4600201 (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287)))

(assert (=> b!4600201 (= lt!1759530 (lemmaInGetKeysListThenContainsKey!576 (toList!4668 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278)))) key!3287))))

(declare-fun Unit!108366 () Unit!108343)

(assert (=> b!4600201 (= e!2869427 Unit!108366)))

(assert (= (and d!1448479 c!787953) b!4600196))

(assert (= (and d!1448479 (not c!787953)) b!4600200))

(assert (= (and b!4600200 c!787951) b!4600201))

(assert (= (and b!4600200 (not c!787951)) b!4600197))

(assert (= (or b!4600196 b!4600200) bm!320989))

(assert (= (and bm!320989 c!787952) b!4600193))

(assert (= (and bm!320989 (not c!787952)) b!4600191))

(assert (= (and d!1448479 res!1924323) b!4600192))

(assert (= (and d!1448479 (not res!1924324)) b!4600194))

(assert (= (and b!4600194 res!1924325) b!4600195))

(declare-fun m!5427389 () Bool)

(assert (=> d!1448479 m!5427389))

(declare-fun m!5427391 () Bool)

(assert (=> bm!320989 m!5427391))

(assert (=> b!4600192 m!5427087))

(declare-fun m!5427393 () Bool)

(assert (=> b!4600192 m!5427393))

(assert (=> b!4600192 m!5427393))

(declare-fun m!5427395 () Bool)

(assert (=> b!4600192 m!5427395))

(declare-fun m!5427397 () Bool)

(assert (=> b!4600194 m!5427397))

(assert (=> b!4600194 m!5427397))

(declare-fun m!5427399 () Bool)

(assert (=> b!4600194 m!5427399))

(assert (=> b!4600201 m!5427389))

(declare-fun m!5427401 () Bool)

(assert (=> b!4600201 m!5427401))

(declare-fun m!5427403 () Bool)

(assert (=> b!4600196 m!5427403))

(assert (=> b!4600196 m!5427397))

(assert (=> b!4600196 m!5427397))

(assert (=> b!4600196 m!5427399))

(declare-fun m!5427405 () Bool)

(assert (=> b!4600196 m!5427405))

(assert (=> b!4600195 m!5427087))

(assert (=> b!4600195 m!5427393))

(assert (=> b!4600195 m!5427393))

(assert (=> b!4600195 m!5427395))

(declare-fun m!5427407 () Bool)

(assert (=> b!4600193 m!5427407))

(assert (=> b!4600191 m!5427087))

(assert (=> b!4600191 m!5427393))

(assert (=> d!1448351 d!1448479))

(declare-fun bs!1011838 () Bool)

(declare-fun d!1448481 () Bool)

(assert (= bs!1011838 (and d!1448481 d!1448351)))

(declare-fun lambda!186477 () Int)

(assert (=> bs!1011838 (= lambda!186477 lambda!186451)))

(declare-fun bs!1011839 () Bool)

(assert (= bs!1011839 (and d!1448481 d!1448329)))

(assert (=> bs!1011839 (= lambda!186477 lambda!186439)))

(declare-fun bs!1011840 () Bool)

(assert (= bs!1011840 (and d!1448481 d!1448391)))

(assert (=> bs!1011840 (= lambda!186477 lambda!186464)))

(declare-fun bs!1011841 () Bool)

(assert (= bs!1011841 (and d!1448481 d!1448419)))

(assert (=> bs!1011841 (not (= lambda!186477 lambda!186468))))

(declare-fun bs!1011842 () Bool)

(assert (= bs!1011842 (and d!1448481 d!1448415)))

(assert (=> bs!1011842 (= lambda!186477 lambda!186465)))

(declare-fun bs!1011843 () Bool)

(assert (= bs!1011843 (and d!1448481 d!1448283)))

(assert (=> bs!1011843 (= lambda!186477 lambda!186430)))

(declare-fun bs!1011844 () Bool)

(assert (= bs!1011844 (and d!1448481 d!1448389)))

(assert (=> bs!1011844 (= lambda!186477 lambda!186463)))

(declare-fun bs!1011845 () Bool)

(assert (= bs!1011845 (and d!1448481 d!1448273)))

(assert (=> bs!1011845 (= lambda!186477 lambda!186423)))

(declare-fun bs!1011846 () Bool)

(assert (= bs!1011846 (and d!1448481 d!1448381)))

(assert (=> bs!1011846 (= lambda!186477 lambda!186459)))

(declare-fun bs!1011847 () Bool)

(assert (= bs!1011847 (and d!1448481 d!1448383)))

(assert (=> bs!1011847 (= lambda!186477 lambda!186460)))

(declare-fun bs!1011848 () Bool)

(assert (= bs!1011848 (and d!1448481 d!1448373)))

(assert (=> bs!1011848 (= lambda!186477 lambda!186455)))

(declare-fun bs!1011849 () Bool)

(assert (= bs!1011849 (and d!1448481 start!459100)))

(assert (=> bs!1011849 (= lambda!186477 lambda!186420)))

(declare-fun lt!1759537 () ListMap!3929)

(assert (=> d!1448481 (invariantList!1128 (toList!4668 lt!1759537))))

(declare-fun e!2869433 () ListMap!3929)

(assert (=> d!1448481 (= lt!1759537 e!2869433)))

(declare-fun c!787954 () Bool)

(assert (=> d!1448481 (= c!787954 ((_ is Cons!51099) (toList!4667 (ListLongMap!3300 lt!1759278))))))

(assert (=> d!1448481 (forall!10612 (toList!4667 (ListLongMap!3300 lt!1759278)) lambda!186477)))

(assert (=> d!1448481 (= (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278))) lt!1759537)))

(declare-fun b!4600204 () Bool)

(assert (=> b!4600204 (= e!2869433 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (toList!4667 (ListLongMap!3300 lt!1759278)))) (extractMap!1386 (t!358217 (toList!4667 (ListLongMap!3300 lt!1759278))))))))

(declare-fun b!4600205 () Bool)

(assert (=> b!4600205 (= e!2869433 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448481 c!787954) b!4600204))

(assert (= (and d!1448481 (not c!787954)) b!4600205))

(declare-fun m!5427411 () Bool)

(assert (=> d!1448481 m!5427411))

(declare-fun m!5427413 () Bool)

(assert (=> d!1448481 m!5427413))

(declare-fun m!5427415 () Bool)

(assert (=> b!4600204 m!5427415))

(assert (=> b!4600204 m!5427415))

(declare-fun m!5427417 () Bool)

(assert (=> b!4600204 m!5427417))

(assert (=> d!1448351 d!1448481))

(declare-fun d!1448485 () Bool)

(assert (=> d!1448485 (contains!14057 (extractMap!1386 (toList!4667 (ListLongMap!3300 lt!1759278))) key!3287)))

(assert (=> d!1448485 true))

(declare-fun _$34!829 () Unit!108343)

(assert (=> d!1448485 (= (choose!30840 (ListLongMap!3300 lt!1759278) key!3287 hashF!1107) _$34!829)))

(declare-fun bs!1011852 () Bool)

(assert (= bs!1011852 d!1448485))

(assert (=> bs!1011852 m!5427087))

(assert (=> bs!1011852 m!5427087))

(assert (=> bs!1011852 m!5427089))

(assert (=> d!1448351 d!1448485))

(declare-fun d!1448493 () Bool)

(declare-fun res!1924332 () Bool)

(declare-fun e!2869436 () Bool)

(assert (=> d!1448493 (=> res!1924332 e!2869436)))

(assert (=> d!1448493 (= res!1924332 ((_ is Nil!51099) (toList!4667 (ListLongMap!3300 lt!1759278))))))

(assert (=> d!1448493 (= (forall!10612 (toList!4667 (ListLongMap!3300 lt!1759278)) lambda!186451) e!2869436)))

(declare-fun b!4600208 () Bool)

(declare-fun e!2869437 () Bool)

(assert (=> b!4600208 (= e!2869436 e!2869437)))

(declare-fun res!1924333 () Bool)

(assert (=> b!4600208 (=> (not res!1924333) (not e!2869437))))

(assert (=> b!4600208 (= res!1924333 (dynLambda!21402 lambda!186451 (h!57067 (toList!4667 (ListLongMap!3300 lt!1759278)))))))

(declare-fun b!4600209 () Bool)

(assert (=> b!4600209 (= e!2869437 (forall!10612 (t!358217 (toList!4667 (ListLongMap!3300 lt!1759278))) lambda!186451))))

(assert (= (and d!1448493 (not res!1924332)) b!4600208))

(assert (= (and b!4600208 res!1924333) b!4600209))

(declare-fun b_lambda!169473 () Bool)

(assert (=> (not b_lambda!169473) (not b!4600208)))

(declare-fun m!5427431 () Bool)

(assert (=> b!4600208 m!5427431))

(declare-fun m!5427433 () Bool)

(assert (=> b!4600209 m!5427433))

(assert (=> d!1448351 d!1448493))

(declare-fun bs!1011853 () Bool)

(declare-fun b!4600226 () Bool)

(assert (= bs!1011853 (and b!4600226 d!1448379)))

(declare-fun lambda!186526 () Int)

(assert (=> bs!1011853 (not (= lambda!186526 lambda!186458))))

(assert (=> b!4600226 true))

(declare-fun bs!1011854 () Bool)

(declare-fun b!4600224 () Bool)

(assert (= bs!1011854 (and b!4600224 d!1448379)))

(declare-fun lambda!186529 () Int)

(assert (=> bs!1011854 (not (= lambda!186529 lambda!186458))))

(declare-fun bs!1011855 () Bool)

(assert (= bs!1011855 (and b!4600224 b!4600226)))

(assert (=> bs!1011855 (= lambda!186529 lambda!186526)))

(assert (=> b!4600224 true))

(declare-fun lambda!186530 () Int)

(assert (=> bs!1011854 (not (= lambda!186530 lambda!186458))))

(declare-fun lt!1759640 () ListMap!3929)

(assert (=> bs!1011855 (= (= lt!1759640 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186530 lambda!186526))))

(assert (=> b!4600224 (= (= lt!1759640 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186530 lambda!186529))))

(assert (=> b!4600224 true))

(declare-fun bs!1011856 () Bool)

(declare-fun d!1448495 () Bool)

(assert (= bs!1011856 (and d!1448495 d!1448379)))

(declare-fun lambda!186533 () Int)

(assert (=> bs!1011856 (not (= lambda!186533 lambda!186458))))

(declare-fun bs!1011857 () Bool)

(assert (= bs!1011857 (and d!1448495 b!4600226)))

(declare-fun lt!1759626 () ListMap!3929)

(assert (=> bs!1011857 (= (= lt!1759626 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186533 lambda!186526))))

(declare-fun bs!1011858 () Bool)

(assert (= bs!1011858 (and d!1448495 b!4600224)))

(assert (=> bs!1011858 (= (= lt!1759626 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186533 lambda!186529))))

(assert (=> bs!1011858 (= (= lt!1759626 lt!1759640) (= lambda!186533 lambda!186530))))

(assert (=> d!1448495 true))

(declare-fun e!2869447 () ListMap!3929)

(assert (=> b!4600224 (= e!2869447 lt!1759640)))

(declare-fun lt!1759633 () ListMap!3929)

(declare-fun +!1756 (ListMap!3929 tuple2!51754) ListMap!3929)

(assert (=> b!4600224 (= lt!1759633 (+!1756 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477)))) (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))))))

(assert (=> b!4600224 (= lt!1759640 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))) (+!1756 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477)))) (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))))

(declare-fun lt!1759638 () Unit!108343)

(declare-fun call!321002 () Unit!108343)

(assert (=> b!4600224 (= lt!1759638 call!321002)))

(declare-fun call!321001 () Bool)

(assert (=> b!4600224 call!321001))

(declare-fun lt!1759644 () Unit!108343)

(assert (=> b!4600224 (= lt!1759644 lt!1759638)))

(assert (=> b!4600224 (forall!10613 (toList!4668 lt!1759633) lambda!186530)))

(declare-fun lt!1759637 () Unit!108343)

(declare-fun Unit!108378 () Unit!108343)

(assert (=> b!4600224 (= lt!1759637 Unit!108378)))

(assert (=> b!4600224 (forall!10613 (t!358216 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))) lambda!186530)))

(declare-fun lt!1759629 () Unit!108343)

(declare-fun Unit!108379 () Unit!108343)

(assert (=> b!4600224 (= lt!1759629 Unit!108379)))

(declare-fun lt!1759634 () Unit!108343)

(declare-fun Unit!108380 () Unit!108343)

(assert (=> b!4600224 (= lt!1759634 Unit!108380)))

(declare-fun lt!1759627 () Unit!108343)

(declare-fun forallContained!2865 (List!51222 Int tuple2!51754) Unit!108343)

(assert (=> b!4600224 (= lt!1759627 (forallContained!2865 (toList!4668 lt!1759633) lambda!186530 (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))))))

(assert (=> b!4600224 (contains!14057 lt!1759633 (_1!29171 (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))))))

(declare-fun lt!1759636 () Unit!108343)

(declare-fun Unit!108381 () Unit!108343)

(assert (=> b!4600224 (= lt!1759636 Unit!108381)))

(assert (=> b!4600224 (contains!14057 lt!1759640 (_1!29171 (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))))))

(declare-fun lt!1759630 () Unit!108343)

(declare-fun Unit!108382 () Unit!108343)

(assert (=> b!4600224 (= lt!1759630 Unit!108382)))

(assert (=> b!4600224 (forall!10613 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))) lambda!186530)))

(declare-fun lt!1759639 () Unit!108343)

(declare-fun Unit!108383 () Unit!108343)

(assert (=> b!4600224 (= lt!1759639 Unit!108383)))

(declare-fun call!321003 () Bool)

(assert (=> b!4600224 call!321003))

(declare-fun lt!1759628 () Unit!108343)

(declare-fun Unit!108384 () Unit!108343)

(assert (=> b!4600224 (= lt!1759628 Unit!108384)))

(declare-fun lt!1759625 () Unit!108343)

(declare-fun Unit!108385 () Unit!108343)

(assert (=> b!4600224 (= lt!1759625 Unit!108385)))

(declare-fun lt!1759624 () Unit!108343)

(declare-fun addForallContainsKeyThenBeforeAdding!438 (ListMap!3929 ListMap!3929 K!12465 V!12711) Unit!108343)

(assert (=> b!4600224 (= lt!1759624 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477)))) lt!1759640 (_1!29171 (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))) (_2!29171 (h!57066 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))))

(assert (=> b!4600224 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) lambda!186530)))

(declare-fun lt!1759643 () Unit!108343)

(assert (=> b!4600224 (= lt!1759643 lt!1759624)))

(assert (=> b!4600224 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) lambda!186530)))

(declare-fun lt!1759632 () Unit!108343)

(declare-fun Unit!108386 () Unit!108343)

(assert (=> b!4600224 (= lt!1759632 Unit!108386)))

(declare-fun res!1924340 () Bool)

(assert (=> b!4600224 (= res!1924340 (forall!10613 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))) lambda!186530))))

(declare-fun e!2869446 () Bool)

(assert (=> b!4600224 (=> (not res!1924340) (not e!2869446))))

(assert (=> b!4600224 e!2869446))

(declare-fun lt!1759635 () Unit!108343)

(declare-fun Unit!108387 () Unit!108343)

(assert (=> b!4600224 (= lt!1759635 Unit!108387)))

(declare-fun c!787959 () Bool)

(declare-fun bm!320996 () Bool)

(assert (=> bm!320996 (= call!321001 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (ite c!787959 lambda!186526 lambda!186529)))))

(declare-fun bm!320997 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!438 (ListMap!3929) Unit!108343)

(assert (=> bm!320997 (= call!321002 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))))))

(assert (=> b!4600226 (= e!2869447 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477)))))))

(declare-fun lt!1759641 () Unit!108343)

(assert (=> b!4600226 (= lt!1759641 call!321002)))

(assert (=> b!4600226 call!321003))

(declare-fun lt!1759642 () Unit!108343)

(assert (=> b!4600226 (= lt!1759642 lt!1759641)))

(assert (=> b!4600226 call!321001))

(declare-fun lt!1759631 () Unit!108343)

(declare-fun Unit!108388 () Unit!108343)

(assert (=> b!4600226 (= lt!1759631 Unit!108388)))

(declare-fun b!4600227 () Bool)

(declare-fun res!1924341 () Bool)

(declare-fun e!2869448 () Bool)

(assert (=> b!4600227 (=> (not res!1924341) (not e!2869448))))

(assert (=> b!4600227 (= res!1924341 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) lambda!186533))))

(declare-fun b!4600228 () Bool)

(assert (=> b!4600228 (= e!2869448 (invariantList!1128 (toList!4668 lt!1759626)))))

(declare-fun bm!320998 () Bool)

(assert (=> bm!320998 (= call!321003 (forall!10613 (ite c!787959 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (toList!4668 lt!1759633)) (ite c!787959 lambda!186526 lambda!186530)))))

(assert (=> d!1448495 e!2869448))

(declare-fun res!1924342 () Bool)

(assert (=> d!1448495 (=> (not res!1924342) (not e!2869448))))

(assert (=> d!1448495 (= res!1924342 (forall!10613 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))) lambda!186533))))

(assert (=> d!1448495 (= lt!1759626 e!2869447)))

(assert (=> d!1448495 (= c!787959 ((_ is Nil!51098) (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))

(assert (=> d!1448495 (noDuplicateKeys!1326 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))))))

(assert (=> d!1448495 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477)))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) lt!1759626)))

(declare-fun b!4600225 () Bool)

(assert (=> b!4600225 (= e!2869446 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) lambda!186530))))

(assert (= (and d!1448495 c!787959) b!4600226))

(assert (= (and d!1448495 (not c!787959)) b!4600224))

(assert (= (and b!4600224 res!1924340) b!4600225))

(assert (= (or b!4600226 b!4600224) bm!320998))

(assert (= (or b!4600226 b!4600224) bm!320996))

(assert (= (or b!4600226 b!4600224) bm!320997))

(assert (= (and d!1448495 res!1924342) b!4600227))

(assert (= (and b!4600227 res!1924341) b!4600228))

(declare-fun m!5427435 () Bool)

(assert (=> bm!320998 m!5427435))

(declare-fun m!5427437 () Bool)

(assert (=> b!4600224 m!5427437))

(declare-fun m!5427439 () Bool)

(assert (=> b!4600224 m!5427439))

(assert (=> b!4600224 m!5427163))

(assert (=> b!4600224 m!5427437))

(declare-fun m!5427441 () Bool)

(assert (=> b!4600224 m!5427441))

(declare-fun m!5427443 () Bool)

(assert (=> b!4600224 m!5427443))

(declare-fun m!5427445 () Bool)

(assert (=> b!4600224 m!5427445))

(assert (=> b!4600224 m!5427441))

(declare-fun m!5427447 () Bool)

(assert (=> b!4600224 m!5427447))

(declare-fun m!5427449 () Bool)

(assert (=> b!4600224 m!5427449))

(declare-fun m!5427451 () Bool)

(assert (=> b!4600224 m!5427451))

(declare-fun m!5427453 () Bool)

(assert (=> b!4600224 m!5427453))

(assert (=> b!4600224 m!5427445))

(assert (=> b!4600224 m!5427163))

(declare-fun m!5427455 () Bool)

(assert (=> b!4600224 m!5427455))

(declare-fun m!5427457 () Bool)

(assert (=> b!4600227 m!5427457))

(assert (=> b!4600225 m!5427445))

(declare-fun m!5427459 () Bool)

(assert (=> d!1448495 m!5427459))

(declare-fun m!5427461 () Bool)

(assert (=> d!1448495 m!5427461))

(assert (=> bm!320997 m!5427163))

(declare-fun m!5427463 () Bool)

(assert (=> bm!320997 m!5427463))

(declare-fun m!5427465 () Bool)

(assert (=> b!4600228 m!5427465))

(declare-fun m!5427467 () Bool)

(assert (=> bm!320996 m!5427467))

(assert (=> b!4600034 d!1448495))

(declare-fun bs!1011859 () Bool)

(declare-fun d!1448497 () Bool)

(assert (= bs!1011859 (and d!1448497 d!1448351)))

(declare-fun lambda!186538 () Int)

(assert (=> bs!1011859 (= lambda!186538 lambda!186451)))

(declare-fun bs!1011860 () Bool)

(assert (= bs!1011860 (and d!1448497 d!1448329)))

(assert (=> bs!1011860 (= lambda!186538 lambda!186439)))

(declare-fun bs!1011861 () Bool)

(assert (= bs!1011861 (and d!1448497 d!1448391)))

(assert (=> bs!1011861 (= lambda!186538 lambda!186464)))

(declare-fun bs!1011862 () Bool)

(assert (= bs!1011862 (and d!1448497 d!1448419)))

(assert (=> bs!1011862 (not (= lambda!186538 lambda!186468))))

(declare-fun bs!1011863 () Bool)

(assert (= bs!1011863 (and d!1448497 d!1448415)))

(assert (=> bs!1011863 (= lambda!186538 lambda!186465)))

(declare-fun bs!1011864 () Bool)

(assert (= bs!1011864 (and d!1448497 d!1448283)))

(assert (=> bs!1011864 (= lambda!186538 lambda!186430)))

(declare-fun bs!1011865 () Bool)

(assert (= bs!1011865 (and d!1448497 d!1448389)))

(assert (=> bs!1011865 (= lambda!186538 lambda!186463)))

(declare-fun bs!1011866 () Bool)

(assert (= bs!1011866 (and d!1448497 d!1448481)))

(assert (=> bs!1011866 (= lambda!186538 lambda!186477)))

(declare-fun bs!1011867 () Bool)

(assert (= bs!1011867 (and d!1448497 d!1448273)))

(assert (=> bs!1011867 (= lambda!186538 lambda!186423)))

(declare-fun bs!1011868 () Bool)

(assert (= bs!1011868 (and d!1448497 d!1448381)))

(assert (=> bs!1011868 (= lambda!186538 lambda!186459)))

(declare-fun bs!1011869 () Bool)

(assert (= bs!1011869 (and d!1448497 d!1448383)))

(assert (=> bs!1011869 (= lambda!186538 lambda!186460)))

(declare-fun bs!1011870 () Bool)

(assert (= bs!1011870 (and d!1448497 d!1448373)))

(assert (=> bs!1011870 (= lambda!186538 lambda!186455)))

(declare-fun bs!1011871 () Bool)

(assert (= bs!1011871 (and d!1448497 start!459100)))

(assert (=> bs!1011871 (= lambda!186538 lambda!186420)))

(declare-fun lt!1759647 () ListMap!3929)

(assert (=> d!1448497 (invariantList!1128 (toList!4668 lt!1759647))))

(declare-fun e!2869453 () ListMap!3929)

(assert (=> d!1448497 (= lt!1759647 e!2869453)))

(declare-fun c!787960 () Bool)

(assert (=> d!1448497 (= c!787960 ((_ is Cons!51099) (t!358217 (t!358217 (toList!4667 lm!1477)))))))

(assert (=> d!1448497 (forall!10612 (t!358217 (t!358217 (toList!4667 lm!1477))) lambda!186538)))

(assert (=> d!1448497 (= (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477)))) lt!1759647)))

(declare-fun b!4600237 () Bool)

(assert (=> b!4600237 (= e!2869453 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (t!358217 (toList!4667 lm!1477))))) (extractMap!1386 (t!358217 (t!358217 (t!358217 (toList!4667 lm!1477)))))))))

(declare-fun b!4600238 () Bool)

(assert (=> b!4600238 (= e!2869453 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448497 c!787960) b!4600237))

(assert (= (and d!1448497 (not c!787960)) b!4600238))

(declare-fun m!5427469 () Bool)

(assert (=> d!1448497 m!5427469))

(declare-fun m!5427471 () Bool)

(assert (=> d!1448497 m!5427471))

(declare-fun m!5427473 () Bool)

(assert (=> b!4600237 m!5427473))

(assert (=> b!4600237 m!5427473))

(declare-fun m!5427475 () Bool)

(assert (=> b!4600237 m!5427475))

(assert (=> b!4600034 d!1448497))

(declare-fun d!1448499 () Bool)

(assert (=> d!1448499 (= (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287)) (not (isEmpty!28867 (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))))

(declare-fun bs!1011872 () Bool)

(assert (= bs!1011872 d!1448499))

(assert (=> bs!1011872 m!5427113))

(declare-fun m!5427477 () Bool)

(assert (=> bs!1011872 m!5427477))

(assert (=> b!4600001 d!1448499))

(declare-fun b!4600240 () Bool)

(declare-fun e!2869454 () Option!11399)

(declare-fun e!2869455 () Option!11399)

(assert (=> b!4600240 (= e!2869454 e!2869455)))

(declare-fun c!787962 () Bool)

(assert (=> b!4600240 (= c!787962 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 lt!1759278))) (not (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278)))) key!3287))))))

(declare-fun b!4600241 () Bool)

(assert (=> b!4600241 (= e!2869455 (getValueByKey!1319 (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) key!3287))))

(declare-fun d!1448501 () Bool)

(declare-fun c!787961 () Bool)

(assert (=> d!1448501 (= c!787961 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 lt!1759278))) (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278)))) key!3287)))))

(assert (=> d!1448501 (= (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287) e!2869454)))

(declare-fun b!4600239 () Bool)

(assert (=> b!4600239 (= e!2869454 (Some!11398 (_2!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))))))))

(declare-fun b!4600242 () Bool)

(assert (=> b!4600242 (= e!2869455 None!11398)))

(assert (= (and d!1448501 c!787961) b!4600239))

(assert (= (and d!1448501 (not c!787961)) b!4600240))

(assert (= (and b!4600240 c!787962) b!4600241))

(assert (= (and b!4600240 (not c!787962)) b!4600242))

(declare-fun m!5427479 () Bool)

(assert (=> b!4600241 m!5427479))

(assert (=> b!4600001 d!1448501))

(declare-fun d!1448503 () Bool)

(assert (=> d!1448503 (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275))))

(declare-fun lt!1759671 () Unit!108343)

(declare-fun choose!30852 (List!51223 (_ BitVec 64)) Unit!108343)

(assert (=> d!1448503 (= lt!1759671 (choose!30852 (toList!4667 lm!1477) lt!1759275))))

(declare-fun e!2869461 () Bool)

(assert (=> d!1448503 e!2869461))

(declare-fun res!1924354 () Bool)

(assert (=> d!1448503 (=> (not res!1924354) (not e!2869461))))

(assert (=> d!1448503 (= res!1924354 (isStrictlySorted!544 (toList!4667 lm!1477)))))

(assert (=> d!1448503 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lm!1477) lt!1759275) lt!1759671)))

(declare-fun b!4600247 () Bool)

(assert (=> b!4600247 (= e!2869461 (containsKey!2173 (toList!4667 lm!1477) lt!1759275))))

(assert (= (and d!1448503 res!1924354) b!4600247))

(assert (=> d!1448503 m!5427203))

(assert (=> d!1448503 m!5427203))

(assert (=> d!1448503 m!5427205))

(declare-fun m!5427481 () Bool)

(assert (=> d!1448503 m!5427481))

(assert (=> d!1448503 m!5427221))

(assert (=> b!4600247 m!5427199))

(assert (=> b!4600040 d!1448503))

(declare-fun d!1448505 () Bool)

(declare-fun isEmpty!28869 (Option!11398) Bool)

(assert (=> d!1448505 (= (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275)) (not (isEmpty!28869 (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275))))))

(declare-fun bs!1011874 () Bool)

(assert (= bs!1011874 d!1448505))

(assert (=> bs!1011874 m!5427203))

(declare-fun m!5427483 () Bool)

(assert (=> bs!1011874 m!5427483))

(assert (=> b!4600040 d!1448505))

(declare-fun b!4600264 () Bool)

(declare-fun e!2869467 () Option!11398)

(assert (=> b!4600264 (= e!2869467 None!11397)))

(declare-fun b!4600263 () Bool)

(assert (=> b!4600263 (= e!2869467 (getValueByKey!1318 (t!358217 (toList!4667 lm!1477)) lt!1759275))))

(declare-fun b!4600261 () Bool)

(declare-fun e!2869466 () Option!11398)

(assert (=> b!4600261 (= e!2869466 (Some!11397 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(declare-fun d!1448507 () Bool)

(declare-fun c!787968 () Bool)

(assert (=> d!1448507 (= c!787968 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (= (_1!29172 (h!57067 (toList!4667 lm!1477))) lt!1759275)))))

(assert (=> d!1448507 (= (getValueByKey!1318 (toList!4667 lm!1477) lt!1759275) e!2869466)))

(declare-fun b!4600262 () Bool)

(assert (=> b!4600262 (= e!2869466 e!2869467)))

(declare-fun c!787969 () Bool)

(assert (=> b!4600262 (= c!787969 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (not (= (_1!29172 (h!57067 (toList!4667 lm!1477))) lt!1759275))))))

(assert (= (and d!1448507 c!787968) b!4600261))

(assert (= (and d!1448507 (not c!787968)) b!4600262))

(assert (= (and b!4600262 c!787969) b!4600263))

(assert (= (and b!4600262 (not c!787969)) b!4600264))

(declare-fun m!5427485 () Bool)

(assert (=> b!4600263 m!5427485))

(assert (=> b!4600040 d!1448507))

(declare-fun d!1448509 () Bool)

(declare-fun res!1924355 () Bool)

(declare-fun e!2869468 () Bool)

(assert (=> d!1448509 (=> res!1924355 e!2869468)))

(assert (=> d!1448509 (= res!1924355 (and ((_ is Cons!51098) (t!358216 newBucket!178)) (= (_1!29171 (h!57066 (t!358216 newBucket!178))) (_1!29171 (h!57066 newBucket!178)))))))

(assert (=> d!1448509 (= (containsKey!2170 (t!358216 newBucket!178) (_1!29171 (h!57066 newBucket!178))) e!2869468)))

(declare-fun b!4600265 () Bool)

(declare-fun e!2869469 () Bool)

(assert (=> b!4600265 (= e!2869468 e!2869469)))

(declare-fun res!1924356 () Bool)

(assert (=> b!4600265 (=> (not res!1924356) (not e!2869469))))

(assert (=> b!4600265 (= res!1924356 ((_ is Cons!51098) (t!358216 newBucket!178)))))

(declare-fun b!4600266 () Bool)

(assert (=> b!4600266 (= e!2869469 (containsKey!2170 (t!358216 (t!358216 newBucket!178)) (_1!29171 (h!57066 newBucket!178))))))

(assert (= (and d!1448509 (not res!1924355)) b!4600265))

(assert (= (and b!4600265 res!1924356) b!4600266))

(declare-fun m!5427487 () Bool)

(assert (=> b!4600266 m!5427487))

(assert (=> b!4600072 d!1448509))

(declare-fun d!1448511 () Bool)

(declare-fun lt!1759672 () Bool)

(assert (=> d!1448511 (= lt!1759672 (select (content!8654 e!2869299) key!3287))))

(declare-fun e!2869470 () Bool)

(assert (=> d!1448511 (= lt!1759672 e!2869470)))

(declare-fun res!1924357 () Bool)

(assert (=> d!1448511 (=> (not res!1924357) (not e!2869470))))

(assert (=> d!1448511 (= res!1924357 ((_ is Cons!51101) e!2869299))))

(assert (=> d!1448511 (= (contains!14059 e!2869299 key!3287) lt!1759672)))

(declare-fun b!4600267 () Bool)

(declare-fun e!2869471 () Bool)

(assert (=> b!4600267 (= e!2869470 e!2869471)))

(declare-fun res!1924358 () Bool)

(assert (=> b!4600267 (=> res!1924358 e!2869471)))

(assert (=> b!4600267 (= res!1924358 (= (h!57071 e!2869299) key!3287))))

(declare-fun b!4600268 () Bool)

(assert (=> b!4600268 (= e!2869471 (contains!14059 (t!358219 e!2869299) key!3287))))

(assert (= (and d!1448511 res!1924357) b!4600267))

(assert (= (and b!4600267 (not res!1924358)) b!4600268))

(declare-fun m!5427497 () Bool)

(assert (=> d!1448511 m!5427497))

(declare-fun m!5427501 () Bool)

(assert (=> d!1448511 m!5427501))

(declare-fun m!5427503 () Bool)

(assert (=> b!4600268 m!5427503))

(assert (=> bm!320987 d!1448511))

(declare-fun d!1448513 () Bool)

(declare-fun res!1924359 () Bool)

(declare-fun e!2869472 () Bool)

(assert (=> d!1448513 (=> res!1924359 e!2869472)))

(assert (=> d!1448513 (= res!1924359 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) key!3287)))))

(assert (=> d!1448513 (= (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287) e!2869472)))

(declare-fun b!4600269 () Bool)

(declare-fun e!2869473 () Bool)

(assert (=> b!4600269 (= e!2869472 e!2869473)))

(declare-fun res!1924360 () Bool)

(assert (=> b!4600269 (=> (not res!1924360) (not e!2869473))))

(assert (=> b!4600269 (= res!1924360 ((_ is Cons!51098) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))

(declare-fun b!4600270 () Bool)

(assert (=> b!4600270 (= e!2869473 (containsKey!2174 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) key!3287))))

(assert (= (and d!1448513 (not res!1924359)) b!4600269))

(assert (= (and b!4600269 res!1924360) b!4600270))

(declare-fun m!5427519 () Bool)

(assert (=> b!4600270 m!5427519))

(assert (=> b!4600090 d!1448513))

(declare-fun d!1448515 () Bool)

(assert (=> d!1448515 (containsKey!2174 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287)))

(declare-fun lt!1759696 () Unit!108343)

(declare-fun choose!30853 (List!51222 K!12465) Unit!108343)

(assert (=> d!1448515 (= lt!1759696 (choose!30853 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287))))

(assert (=> d!1448515 (invariantList!1128 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))

(assert (=> d!1448515 (= (lemmaInGetKeysListThenContainsKey!576 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) key!3287) lt!1759696)))

(declare-fun bs!1011884 () Bool)

(assert (= bs!1011884 d!1448515))

(assert (=> bs!1011884 m!5427247))

(declare-fun m!5427531 () Bool)

(assert (=> bs!1011884 m!5427531))

(assert (=> bs!1011884 m!5427327))

(assert (=> b!4600090 d!1448515))

(declare-fun d!1448519 () Bool)

(declare-fun lt!1759697 () Bool)

(assert (=> d!1448519 (= lt!1759697 (select (content!8654 (keys!17896 (extractMap!1386 lt!1759278))) key!3287))))

(declare-fun e!2869477 () Bool)

(assert (=> d!1448519 (= lt!1759697 e!2869477)))

(declare-fun res!1924364 () Bool)

(assert (=> d!1448519 (=> (not res!1924364) (not e!2869477))))

(assert (=> d!1448519 (= res!1924364 ((_ is Cons!51101) (keys!17896 (extractMap!1386 lt!1759278))))))

(assert (=> d!1448519 (= (contains!14059 (keys!17896 (extractMap!1386 lt!1759278)) key!3287) lt!1759697)))

(declare-fun b!4600276 () Bool)

(declare-fun e!2869478 () Bool)

(assert (=> b!4600276 (= e!2869477 e!2869478)))

(declare-fun res!1924365 () Bool)

(assert (=> b!4600276 (=> res!1924365 e!2869478)))

(assert (=> b!4600276 (= res!1924365 (= (h!57071 (keys!17896 (extractMap!1386 lt!1759278))) key!3287))))

(declare-fun b!4600277 () Bool)

(assert (=> b!4600277 (= e!2869478 (contains!14059 (t!358219 (keys!17896 (extractMap!1386 lt!1759278))) key!3287))))

(assert (= (and d!1448519 res!1924364) b!4600276))

(assert (= (and b!4600276 (not res!1924365)) b!4600277))

(assert (=> d!1448519 m!5427109))

(declare-fun m!5427533 () Bool)

(assert (=> d!1448519 m!5427533))

(declare-fun m!5427535 () Bool)

(assert (=> d!1448519 m!5427535))

(declare-fun m!5427537 () Bool)

(assert (=> b!4600277 m!5427537))

(assert (=> b!4599999 d!1448519))

(declare-fun bs!1011890 () Bool)

(declare-fun b!4600279 () Bool)

(assert (= bs!1011890 (and b!4600279 b!4600134)))

(declare-fun lambda!186545 () Int)

(assert (=> bs!1011890 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186545 lambda!186473))))

(declare-fun bs!1011891 () Bool)

(assert (= bs!1011891 (and b!4600279 b!4600175)))

(assert (=> bs!1011891 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 lt!1759280)) (= lambda!186545 lambda!186475))))

(assert (=> b!4600279 true))

(declare-fun bs!1011892 () Bool)

(declare-fun b!4600280 () Bool)

(assert (= bs!1011892 (and b!4600280 b!4600135)))

(declare-fun lambda!186547 () Int)

(assert (=> bs!1011892 (= lambda!186547 lambda!186474)))

(declare-fun bs!1011893 () Bool)

(assert (= bs!1011893 (and b!4600280 b!4600176)))

(assert (=> bs!1011893 (= lambda!186547 lambda!186476)))

(declare-fun d!1448521 () Bool)

(declare-fun e!2869479 () Bool)

(assert (=> d!1448521 e!2869479))

(declare-fun res!1924366 () Bool)

(assert (=> d!1448521 (=> (not res!1924366) (not e!2869479))))

(declare-fun lt!1759698 () List!51225)

(assert (=> d!1448521 (= res!1924366 (noDuplicate!813 lt!1759698))))

(assert (=> d!1448521 (= lt!1759698 (getKeysList!577 (toList!4668 (extractMap!1386 lt!1759278))))))

(assert (=> d!1448521 (= (keys!17896 (extractMap!1386 lt!1759278)) lt!1759698)))

(declare-fun b!4600278 () Bool)

(declare-fun res!1924367 () Bool)

(assert (=> b!4600278 (=> (not res!1924367) (not e!2869479))))

(assert (=> b!4600278 (= res!1924367 (= (length!482 lt!1759698) (length!483 (toList!4668 (extractMap!1386 lt!1759278)))))))

(declare-fun res!1924368 () Bool)

(assert (=> b!4600279 (=> (not res!1924368) (not e!2869479))))

(assert (=> b!4600279 (= res!1924368 (forall!10615 lt!1759698 lambda!186545))))

(assert (=> b!4600280 (= e!2869479 (= (content!8654 lt!1759698) (content!8654 (map!11289 (toList!4668 (extractMap!1386 lt!1759278)) lambda!186547))))))

(assert (= (and d!1448521 res!1924366) b!4600278))

(assert (= (and b!4600278 res!1924367) b!4600279))

(assert (= (and b!4600279 res!1924368) b!4600280))

(declare-fun m!5427539 () Bool)

(assert (=> d!1448521 m!5427539))

(assert (=> d!1448521 m!5427123))

(declare-fun m!5427541 () Bool)

(assert (=> b!4600278 m!5427541))

(declare-fun m!5427543 () Bool)

(assert (=> b!4600278 m!5427543))

(declare-fun m!5427545 () Bool)

(assert (=> b!4600279 m!5427545))

(declare-fun m!5427547 () Bool)

(assert (=> b!4600280 m!5427547))

(declare-fun m!5427549 () Bool)

(assert (=> b!4600280 m!5427549))

(assert (=> b!4600280 m!5427549))

(declare-fun m!5427551 () Bool)

(assert (=> b!4600280 m!5427551))

(assert (=> b!4599999 d!1448521))

(declare-fun d!1448523 () Bool)

(declare-fun lt!1759699 () Bool)

(assert (=> d!1448523 (= lt!1759699 (select (content!8658 (toList!4667 lt!1759477)) lt!1759277))))

(declare-fun e!2869480 () Bool)

(assert (=> d!1448523 (= lt!1759699 e!2869480)))

(declare-fun res!1924369 () Bool)

(assert (=> d!1448523 (=> (not res!1924369) (not e!2869480))))

(assert (=> d!1448523 (= res!1924369 ((_ is Cons!51099) (toList!4667 lt!1759477)))))

(assert (=> d!1448523 (= (contains!14055 (toList!4667 lt!1759477) lt!1759277) lt!1759699)))

(declare-fun b!4600281 () Bool)

(declare-fun e!2869481 () Bool)

(assert (=> b!4600281 (= e!2869480 e!2869481)))

(declare-fun res!1924370 () Bool)

(assert (=> b!4600281 (=> res!1924370 e!2869481)))

(assert (=> b!4600281 (= res!1924370 (= (h!57067 (toList!4667 lt!1759477)) lt!1759277))))

(declare-fun b!4600282 () Bool)

(assert (=> b!4600282 (= e!2869481 (contains!14055 (t!358217 (toList!4667 lt!1759477)) lt!1759277))))

(assert (= (and d!1448523 res!1924369) b!4600281))

(assert (= (and b!4600281 (not res!1924370)) b!4600282))

(declare-fun m!5427553 () Bool)

(assert (=> d!1448523 m!5427553))

(declare-fun m!5427555 () Bool)

(assert (=> d!1448523 m!5427555))

(declare-fun m!5427557 () Bool)

(assert (=> b!4600282 m!5427557))

(assert (=> b!4600039 d!1448523))

(declare-fun d!1448525 () Bool)

(assert (=> d!1448525 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(declare-fun lt!1759700 () Unit!108343)

(assert (=> d!1448525 (= lt!1759700 (choose!30847 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(assert (=> d!1448525 (invariantList!1128 (toList!4668 (extractMap!1386 lt!1759278)))))

(assert (=> d!1448525 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 lt!1759278)) key!3287) lt!1759700)))

(declare-fun bs!1011895 () Bool)

(assert (= bs!1011895 d!1448525))

(assert (=> bs!1011895 m!5427113))

(assert (=> bs!1011895 m!5427113))

(assert (=> bs!1011895 m!5427115))

(declare-fun m!5427559 () Bool)

(assert (=> bs!1011895 m!5427559))

(declare-fun m!5427561 () Bool)

(assert (=> bs!1011895 m!5427561))

(assert (=> b!4600003 d!1448525))

(assert (=> b!4600003 d!1448499))

(assert (=> b!4600003 d!1448501))

(declare-fun d!1448527 () Bool)

(assert (=> d!1448527 (contains!14059 (getKeysList!577 (toList!4668 (extractMap!1386 lt!1759278))) key!3287)))

(declare-fun lt!1759701 () Unit!108343)

(assert (=> d!1448527 (= lt!1759701 (choose!30848 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(assert (=> d!1448527 (invariantList!1128 (toList!4668 (extractMap!1386 lt!1759278)))))

(assert (=> d!1448527 (= (lemmaInListThenGetKeysListContains!573 (toList!4668 (extractMap!1386 lt!1759278)) key!3287) lt!1759701)))

(declare-fun bs!1011900 () Bool)

(assert (= bs!1011900 d!1448527))

(assert (=> bs!1011900 m!5427123))

(assert (=> bs!1011900 m!5427123))

(declare-fun m!5427563 () Bool)

(assert (=> bs!1011900 m!5427563))

(declare-fun m!5427565 () Bool)

(assert (=> bs!1011900 m!5427565))

(assert (=> bs!1011900 m!5427561))

(assert (=> b!4600003 d!1448527))

(assert (=> b!4600042 d!1448505))

(assert (=> b!4600042 d!1448507))

(declare-fun d!1448529 () Bool)

(declare-fun res!1924371 () Bool)

(declare-fun e!2869482 () Bool)

(assert (=> d!1448529 (=> res!1924371 e!2869482)))

(assert (=> d!1448529 (= res!1924371 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 lt!1759278))) (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278)))) key!3287)))))

(assert (=> d!1448529 (= (containsKey!2174 (toList!4668 (extractMap!1386 lt!1759278)) key!3287) e!2869482)))

(declare-fun b!4600283 () Bool)

(declare-fun e!2869483 () Bool)

(assert (=> b!4600283 (= e!2869482 e!2869483)))

(declare-fun res!1924372 () Bool)

(assert (=> b!4600283 (=> (not res!1924372) (not e!2869483))))

(assert (=> b!4600283 (= res!1924372 ((_ is Cons!51098) (toList!4668 (extractMap!1386 lt!1759278))))))

(declare-fun b!4600284 () Bool)

(assert (=> b!4600284 (= e!2869483 (containsKey!2174 (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) key!3287))))

(assert (= (and d!1448529 (not res!1924371)) b!4600283))

(assert (= (and b!4600283 res!1924372) b!4600284))

(declare-fun m!5427567 () Bool)

(assert (=> b!4600284 m!5427567))

(assert (=> d!1448363 d!1448529))

(declare-fun d!1448531 () Bool)

(assert (=> d!1448531 (= (invariantList!1128 (toList!4668 lt!1759507)) (noDuplicatedKeys!327 (toList!4668 lt!1759507)))))

(declare-fun bs!1011902 () Bool)

(assert (= bs!1011902 d!1448531))

(declare-fun m!5427569 () Bool)

(assert (=> bs!1011902 m!5427569))

(assert (=> d!1448415 d!1448531))

(declare-fun d!1448533 () Bool)

(declare-fun res!1924373 () Bool)

(declare-fun e!2869484 () Bool)

(assert (=> d!1448533 (=> res!1924373 e!2869484)))

(assert (=> d!1448533 (= res!1924373 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448533 (= (forall!10612 (toList!4667 lm!1477) lambda!186465) e!2869484)))

(declare-fun b!4600285 () Bool)

(declare-fun e!2869485 () Bool)

(assert (=> b!4600285 (= e!2869484 e!2869485)))

(declare-fun res!1924374 () Bool)

(assert (=> b!4600285 (=> (not res!1924374) (not e!2869485))))

(assert (=> b!4600285 (= res!1924374 (dynLambda!21402 lambda!186465 (h!57067 (toList!4667 lm!1477))))))

(declare-fun b!4600286 () Bool)

(assert (=> b!4600286 (= e!2869485 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186465))))

(assert (= (and d!1448533 (not res!1924373)) b!4600285))

(assert (= (and b!4600285 res!1924374) b!4600286))

(declare-fun b_lambda!169475 () Bool)

(assert (=> (not b_lambda!169475) (not b!4600285)))

(declare-fun m!5427571 () Bool)

(assert (=> b!4600285 m!5427571))

(declare-fun m!5427573 () Bool)

(assert (=> b!4600286 m!5427573))

(assert (=> d!1448415 d!1448533))

(declare-fun b!4600287 () Bool)

(declare-fun e!2869491 () List!51225)

(assert (=> b!4600287 (= e!2869491 (keys!17896 lt!1759359))))

(declare-fun b!4600288 () Bool)

(declare-fun e!2869486 () Bool)

(assert (=> b!4600288 (= e!2869486 (not (contains!14059 (keys!17896 lt!1759359) key!3287)))))

(declare-fun d!1448535 () Bool)

(declare-fun e!2869489 () Bool)

(assert (=> d!1448535 e!2869489))

(declare-fun res!1924376 () Bool)

(assert (=> d!1448535 (=> res!1924376 e!2869489)))

(assert (=> d!1448535 (= res!1924376 e!2869486)))

(declare-fun res!1924375 () Bool)

(assert (=> d!1448535 (=> (not res!1924375) (not e!2869486))))

(declare-fun lt!1759708 () Bool)

(assert (=> d!1448535 (= res!1924375 (not lt!1759708))))

(declare-fun lt!1759702 () Bool)

(assert (=> d!1448535 (= lt!1759708 lt!1759702)))

(declare-fun lt!1759706 () Unit!108343)

(declare-fun e!2869488 () Unit!108343)

(assert (=> d!1448535 (= lt!1759706 e!2869488)))

(declare-fun c!787973 () Bool)

(assert (=> d!1448535 (= c!787973 lt!1759702)))

(assert (=> d!1448535 (= lt!1759702 (containsKey!2174 (toList!4668 lt!1759359) key!3287))))

(assert (=> d!1448535 (= (contains!14057 lt!1759359 key!3287) lt!1759708)))

(declare-fun b!4600289 () Bool)

(assert (=> b!4600289 (= e!2869491 (getKeysList!577 (toList!4668 lt!1759359)))))

(declare-fun b!4600290 () Bool)

(declare-fun e!2869487 () Bool)

(assert (=> b!4600290 (= e!2869489 e!2869487)))

(declare-fun res!1924377 () Bool)

(assert (=> b!4600290 (=> (not res!1924377) (not e!2869487))))

(assert (=> b!4600290 (= res!1924377 (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759359) key!3287)))))

(declare-fun b!4600291 () Bool)

(assert (=> b!4600291 (= e!2869487 (contains!14059 (keys!17896 lt!1759359) key!3287))))

(declare-fun b!4600292 () Bool)

(declare-fun lt!1759709 () Unit!108343)

(assert (=> b!4600292 (= e!2869488 lt!1759709)))

(declare-fun lt!1759704 () Unit!108343)

(assert (=> b!4600292 (= lt!1759704 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 lt!1759359) key!3287))))

(assert (=> b!4600292 (isDefined!8667 (getValueByKey!1319 (toList!4668 lt!1759359) key!3287))))

(declare-fun lt!1759705 () Unit!108343)

(assert (=> b!4600292 (= lt!1759705 lt!1759704)))

(assert (=> b!4600292 (= lt!1759709 (lemmaInListThenGetKeysListContains!573 (toList!4668 lt!1759359) key!3287))))

(declare-fun call!321016 () Bool)

(assert (=> b!4600292 call!321016))

(declare-fun b!4600293 () Bool)

(declare-fun e!2869490 () Unit!108343)

(declare-fun Unit!108401 () Unit!108343)

(assert (=> b!4600293 (= e!2869490 Unit!108401)))

(declare-fun bm!321011 () Bool)

(assert (=> bm!321011 (= call!321016 (contains!14059 e!2869491 key!3287))))

(declare-fun c!787972 () Bool)

(assert (=> bm!321011 (= c!787972 c!787973)))

(declare-fun b!4600294 () Bool)

(assert (=> b!4600294 (= e!2869488 e!2869490)))

(declare-fun c!787971 () Bool)

(assert (=> b!4600294 (= c!787971 call!321016)))

(declare-fun b!4600295 () Bool)

(assert (=> b!4600295 false))

(declare-fun lt!1759707 () Unit!108343)

(declare-fun lt!1759703 () Unit!108343)

(assert (=> b!4600295 (= lt!1759707 lt!1759703)))

(assert (=> b!4600295 (containsKey!2174 (toList!4668 lt!1759359) key!3287)))

(assert (=> b!4600295 (= lt!1759703 (lemmaInGetKeysListThenContainsKey!576 (toList!4668 lt!1759359) key!3287))))

(declare-fun Unit!108402 () Unit!108343)

(assert (=> b!4600295 (= e!2869490 Unit!108402)))

(assert (= (and d!1448535 c!787973) b!4600292))

(assert (= (and d!1448535 (not c!787973)) b!4600294))

(assert (= (and b!4600294 c!787971) b!4600295))

(assert (= (and b!4600294 (not c!787971)) b!4600293))

(assert (= (or b!4600292 b!4600294) bm!321011))

(assert (= (and bm!321011 c!787972) b!4600289))

(assert (= (and bm!321011 (not c!787972)) b!4600287))

(assert (= (and d!1448535 res!1924375) b!4600288))

(assert (= (and d!1448535 (not res!1924376)) b!4600290))

(assert (= (and b!4600290 res!1924377) b!4600291))

(declare-fun m!5427577 () Bool)

(assert (=> d!1448535 m!5427577))

(declare-fun m!5427579 () Bool)

(assert (=> bm!321011 m!5427579))

(assert (=> b!4600288 m!5426905))

(assert (=> b!4600288 m!5426905))

(declare-fun m!5427585 () Bool)

(assert (=> b!4600288 m!5427585))

(declare-fun m!5427587 () Bool)

(assert (=> b!4600290 m!5427587))

(assert (=> b!4600290 m!5427587))

(declare-fun m!5427591 () Bool)

(assert (=> b!4600290 m!5427591))

(assert (=> b!4600295 m!5427577))

(declare-fun m!5427595 () Bool)

(assert (=> b!4600295 m!5427595))

(declare-fun m!5427599 () Bool)

(assert (=> b!4600292 m!5427599))

(assert (=> b!4600292 m!5427587))

(assert (=> b!4600292 m!5427587))

(assert (=> b!4600292 m!5427591))

(declare-fun m!5427603 () Bool)

(assert (=> b!4600292 m!5427603))

(assert (=> b!4600291 m!5426905))

(assert (=> b!4600291 m!5426905))

(assert (=> b!4600291 m!5427585))

(declare-fun m!5427609 () Bool)

(assert (=> b!4600289 m!5427609))

(assert (=> b!4600287 m!5426905))

(assert (=> d!1448303 d!1448535))

(declare-fun b!4600399 () Bool)

(declare-fun e!2869559 () Unit!108343)

(declare-fun Unit!108405 () Unit!108343)

(assert (=> b!4600399 (= e!2869559 Unit!108405)))

(declare-fun lt!1759778 () List!51222)

(assert (=> b!4600399 (= lt!1759778 (removePresrvNoDuplicatedKeys!223 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) key!3287))))

(declare-fun lt!1759785 () Unit!108343)

(assert (=> b!4600399 (= lt!1759785 (lemmaInListThenGetKeysListContains!573 lt!1759778 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(assert (=> b!4600399 (contains!14059 (getKeysList!577 lt!1759778) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun lt!1759774 () Unit!108343)

(assert (=> b!4600399 (= lt!1759774 lt!1759785)))

(assert (=> b!4600399 false))

(declare-fun b!4600400 () Bool)

(declare-fun e!2869558 () List!51222)

(declare-fun e!2869563 () List!51222)

(assert (=> b!4600400 (= e!2869558 e!2869563)))

(declare-fun c!788005 () Bool)

(assert (=> b!4600400 (= c!788005 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (not (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) key!3287))))))

(declare-fun b!4600402 () Bool)

(declare-fun call!321031 () (InoxSet tuple2!51754))

(declare-fun call!321029 () (InoxSet tuple2!51754))

(assert (=> b!4600402 (= call!321031 call!321029)))

(declare-fun e!2869557 () Unit!108343)

(declare-fun Unit!108408 () Unit!108343)

(assert (=> b!4600402 (= e!2869557 Unit!108408)))

(declare-fun bm!321024 () Bool)

(declare-fun c!788006 () Bool)

(declare-fun call!321030 () Bool)

(assert (=> bm!321024 (= call!321030 (containsKey!2174 (ite c!788006 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) (ite c!788006 key!3287 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))))

(declare-fun b!4600403 () Bool)

(declare-fun res!1924423 () Bool)

(declare-fun e!2869560 () Bool)

(assert (=> b!4600403 (=> (not res!1924423) (not e!2869560))))

(declare-fun lt!1759786 () List!51222)

(assert (=> b!4600403 (= res!1924423 (not (containsKey!2174 lt!1759786 key!3287)))))

(declare-fun b!4600404 () Bool)

(declare-fun e!2869556 () Bool)

(assert (=> b!4600404 (= e!2869560 e!2869556)))

(declare-fun c!788007 () Bool)

(assert (=> b!4600404 (= c!788007 (containsKey!2174 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))))

(declare-fun b!4600405 () Bool)

(declare-fun res!1924421 () Bool)

(assert (=> b!4600405 (=> (not res!1924421) (not e!2869560))))

(assert (=> b!4600405 (= res!1924421 (= (content!8654 (getKeysList!577 lt!1759786)) ((_ map and) (content!8654 (getKeysList!577 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) ((_ map not) (store ((as const (Array K!12465 Bool)) false) key!3287 true)))))))

(declare-fun bm!321025 () Bool)

(declare-fun call!321034 () (InoxSet tuple2!51754))

(assert (=> bm!321025 (= call!321034 (content!8656 lt!1759786))))

(declare-fun b!4600406 () Bool)

(assert (=> b!4600406 (= e!2869563 Nil!51098)))

(declare-fun b!4600407 () Bool)

(declare-fun e!2869562 () Unit!108343)

(declare-fun Unit!108409 () Unit!108343)

(assert (=> b!4600407 (= e!2869562 Unit!108409)))

(declare-fun lt!1759787 () V!12711)

(declare-fun get!16892 (Option!11399) V!12711)

(assert (=> b!4600407 (= lt!1759787 (get!16892 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287)))))

(declare-fun lt!1759783 () K!12465)

(assert (=> b!4600407 (= lt!1759783 key!3287)))

(declare-fun lt!1759784 () K!12465)

(assert (=> b!4600407 (= lt!1759784 key!3287)))

(declare-fun lt!1759772 () Unit!108343)

(declare-fun lemmaContainsTupleThenContainsKey!106 (List!51222 K!12465 V!12711) Unit!108343)

(assert (=> b!4600407 (= lt!1759772 (lemmaContainsTupleThenContainsKey!106 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lt!1759783 (get!16892 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))))))

(declare-fun call!321033 () Bool)

(assert (=> b!4600407 call!321033))

(declare-fun lt!1759782 () Unit!108343)

(assert (=> b!4600407 (= lt!1759782 lt!1759772)))

(assert (=> b!4600407 false))

(declare-fun d!1448537 () Bool)

(assert (=> d!1448537 e!2869560))

(declare-fun res!1924422 () Bool)

(assert (=> d!1448537 (=> (not res!1924422) (not e!2869560))))

(assert (=> d!1448537 (= res!1924422 (invariantList!1128 lt!1759786))))

(assert (=> d!1448537 (= lt!1759786 e!2869558)))

(assert (=> d!1448537 (= c!788006 (and ((_ is Cons!51098) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) key!3287)))))

(assert (=> d!1448537 (invariantList!1128 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))

(assert (=> d!1448537 (= (removePresrvNoDuplicatedKeys!223 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287) lt!1759786)))

(declare-fun e!2869561 () List!51222)

(declare-fun b!4600401 () Bool)

(assert (=> b!4600401 (= e!2869561 (removePresrvNoDuplicatedKeys!223 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) key!3287))))

(declare-fun b!4600408 () Bool)

(declare-fun call!321032 () (InoxSet tuple2!51754))

(assert (=> b!4600408 (= e!2869556 (= call!321034 call!321032))))

(declare-fun b!4600409 () Bool)

(assert (=> b!4600409 (= call!321031 ((_ map and) call!321029 ((_ map not) (store ((as const (Array tuple2!51754 Bool)) false) (tuple2!51755 key!3287 (get!16892 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))) true))))))

(declare-fun lt!1759781 () Unit!108343)

(assert (=> b!4600409 (= lt!1759781 e!2869562)))

(declare-fun c!788009 () Bool)

(declare-fun contains!14060 (List!51222 tuple2!51754) Bool)

(assert (=> b!4600409 (= c!788009 (contains!14060 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (tuple2!51755 key!3287 (get!16892 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287)))))))

(declare-fun Unit!108410 () Unit!108343)

(assert (=> b!4600409 (= e!2869557 Unit!108410)))

(declare-fun b!4600410 () Bool)

(declare-fun e!2869564 () Unit!108343)

(declare-fun Unit!108411 () Unit!108343)

(assert (=> b!4600410 (= e!2869564 Unit!108411)))

(declare-fun lt!1759776 () Unit!108343)

(assert (=> b!4600410 (= lt!1759776 (lemmaInGetKeysListThenContainsKey!576 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(assert (=> b!4600410 call!321030))

(declare-fun lt!1759779 () Unit!108343)

(assert (=> b!4600410 (= lt!1759779 lt!1759776)))

(assert (=> b!4600410 false))

(declare-fun b!4600411 () Bool)

(declare-fun Unit!108412 () Unit!108343)

(assert (=> b!4600411 (= e!2869559 Unit!108412)))

(declare-fun bm!321026 () Bool)

(assert (=> bm!321026 (= call!321032 (content!8656 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(declare-fun bm!321027 () Bool)

(assert (=> bm!321027 (= call!321031 (content!8656 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun b!4600412 () Bool)

(assert (=> b!4600412 (= e!2869556 (= call!321034 ((_ map and) call!321032 ((_ map not) (store ((as const (Array tuple2!51754 Bool)) false) (tuple2!51755 key!3287 (get!16892 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))) true)))))))

(assert (=> b!4600412 (containsKey!2174 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287)))

(declare-fun lt!1759780 () Unit!108343)

(assert (=> b!4600412 (= lt!1759780 (lemmaContainsKeyImpliesGetValueByKeyDefined!1223 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))))

(assert (=> b!4600412 (isDefined!8667 (getValueByKey!1319 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) key!3287))))

(declare-fun lt!1759788 () Unit!108343)

(assert (=> b!4600412 (= lt!1759788 lt!1759780)))

(declare-fun bm!321028 () Bool)

(assert (=> bm!321028 (= call!321029 (content!8656 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(declare-fun b!4600413 () Bool)

(assert (=> b!4600413 (= e!2869558 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(declare-fun c!788004 () Bool)

(assert (=> b!4600413 (= c!788004 call!321030)))

(declare-fun lt!1759777 () Unit!108343)

(assert (=> b!4600413 (= lt!1759777 e!2869557)))

(declare-fun b!4600414 () Bool)

(declare-fun lt!1759775 () Unit!108343)

(assert (=> b!4600414 (= lt!1759775 e!2869559)))

(declare-fun c!788003 () Bool)

(assert (=> b!4600414 (= c!788003 call!321033)))

(declare-fun lt!1759773 () Unit!108343)

(assert (=> b!4600414 (= lt!1759773 e!2869564)))

(declare-fun c!788008 () Bool)

(assert (=> b!4600414 (= c!788008 (contains!14059 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(declare-fun lt!1759789 () List!51222)

(declare-fun $colon$colon!1043 (List!51222 tuple2!51754) List!51222)

(assert (=> b!4600414 (= lt!1759789 ($colon$colon!1043 (removePresrvNoDuplicatedKeys!223 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) key!3287) (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(assert (=> b!4600414 (= e!2869563 lt!1759789)))

(declare-fun b!4600415 () Bool)

(declare-fun Unit!108413 () Unit!108343)

(assert (=> b!4600415 (= e!2869564 Unit!108413)))

(declare-fun bm!321029 () Bool)

(assert (=> bm!321029 (= call!321033 (containsKey!2174 e!2869561 (ite c!788006 lt!1759783 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))))

(declare-fun c!788010 () Bool)

(assert (=> bm!321029 (= c!788010 c!788006)))

(declare-fun b!4600416 () Bool)

(declare-fun Unit!108414 () Unit!108343)

(assert (=> b!4600416 (= e!2869562 Unit!108414)))

(declare-fun b!4600417 () Bool)

(assert (=> b!4600417 (= e!2869561 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(assert (= (and d!1448537 c!788006) b!4600413))

(assert (= (and d!1448537 (not c!788006)) b!4600400))

(assert (= (and b!4600413 c!788004) b!4600409))

(assert (= (and b!4600413 (not c!788004)) b!4600402))

(assert (= (and b!4600409 c!788009) b!4600407))

(assert (= (and b!4600409 (not c!788009)) b!4600416))

(assert (= (or b!4600409 b!4600402) bm!321027))

(assert (= (or b!4600409 b!4600402) bm!321028))

(assert (= (and b!4600400 c!788005) b!4600414))

(assert (= (and b!4600400 (not c!788005)) b!4600406))

(assert (= (and b!4600414 c!788008) b!4600410))

(assert (= (and b!4600414 (not c!788008)) b!4600415))

(assert (= (and b!4600414 c!788003) b!4600399))

(assert (= (and b!4600414 (not c!788003)) b!4600411))

(assert (= (or b!4600413 b!4600410) bm!321024))

(assert (= (or b!4600407 b!4600414) bm!321029))

(assert (= (and bm!321029 c!788010) b!4600417))

(assert (= (and bm!321029 (not c!788010)) b!4600401))

(assert (= (and d!1448537 res!1924422) b!4600403))

(assert (= (and b!4600403 res!1924423) b!4600405))

(assert (= (and b!4600405 res!1924421) b!4600404))

(assert (= (and b!4600404 c!788007) b!4600412))

(assert (= (and b!4600404 (not c!788007)) b!4600408))

(assert (= (or b!4600412 b!4600408) bm!321025))

(assert (= (or b!4600412 b!4600408) bm!321026))

(declare-fun m!5427707 () Bool)

(assert (=> bm!321024 m!5427707))

(declare-fun m!5427709 () Bool)

(assert (=> bm!321028 m!5427709))

(declare-fun m!5427711 () Bool)

(assert (=> b!4600401 m!5427711))

(declare-fun m!5427717 () Bool)

(assert (=> bm!321029 m!5427717))

(assert (=> bm!321026 m!5427709))

(declare-fun m!5427719 () Bool)

(assert (=> b!4600403 m!5427719))

(declare-fun m!5427721 () Bool)

(assert (=> d!1448537 m!5427721))

(declare-fun m!5427723 () Bool)

(assert (=> d!1448537 m!5427723))

(declare-fun m!5427725 () Bool)

(assert (=> b!4600404 m!5427725))

(declare-fun m!5427727 () Bool)

(assert (=> b!4600407 m!5427727))

(assert (=> b!4600407 m!5427727))

(declare-fun m!5427729 () Bool)

(assert (=> b!4600407 m!5427729))

(assert (=> b!4600407 m!5427729))

(declare-fun m!5427731 () Bool)

(assert (=> b!4600407 m!5427731))

(declare-fun m!5427733 () Bool)

(assert (=> bm!321027 m!5427733))

(declare-fun m!5427735 () Bool)

(assert (=> b!4600405 m!5427735))

(declare-fun m!5427737 () Bool)

(assert (=> b!4600405 m!5427737))

(declare-fun m!5427739 () Bool)

(assert (=> b!4600405 m!5427739))

(declare-fun m!5427741 () Bool)

(assert (=> b!4600405 m!5427741))

(assert (=> b!4600405 m!5426903))

(assert (=> b!4600405 m!5427735))

(assert (=> b!4600405 m!5427739))

(assert (=> b!4600409 m!5427727))

(assert (=> b!4600409 m!5427727))

(assert (=> b!4600409 m!5427729))

(declare-fun m!5427743 () Bool)

(assert (=> b!4600409 m!5427743))

(declare-fun m!5427745 () Bool)

(assert (=> b!4600409 m!5427745))

(declare-fun m!5427747 () Bool)

(assert (=> b!4600410 m!5427747))

(declare-fun m!5427749 () Bool)

(assert (=> b!4600414 m!5427749))

(assert (=> b!4600414 m!5427749))

(declare-fun m!5427753 () Bool)

(assert (=> b!4600414 m!5427753))

(assert (=> b!4600414 m!5427711))

(assert (=> b!4600414 m!5427711))

(declare-fun m!5427755 () Bool)

(assert (=> b!4600414 m!5427755))

(assert (=> b!4600399 m!5427711))

(declare-fun m!5427757 () Bool)

(assert (=> b!4600399 m!5427757))

(declare-fun m!5427759 () Bool)

(assert (=> b!4600399 m!5427759))

(assert (=> b!4600399 m!5427759))

(declare-fun m!5427765 () Bool)

(assert (=> b!4600399 m!5427765))

(declare-fun m!5427767 () Bool)

(assert (=> bm!321025 m!5427767))

(assert (=> b!4600412 m!5427727))

(declare-fun m!5427769 () Bool)

(assert (=> b!4600412 m!5427769))

(assert (=> b!4600412 m!5427727))

(assert (=> b!4600412 m!5427729))

(declare-fun m!5427771 () Bool)

(assert (=> b!4600412 m!5427771))

(assert (=> b!4600412 m!5427727))

(assert (=> b!4600412 m!5427725))

(assert (=> b!4600412 m!5427743))

(assert (=> d!1448303 d!1448537))

(assert (=> d!1448335 d!1448283))

(declare-fun d!1448589 () Bool)

(assert (=> d!1448589 (eq!733 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)) (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))))

(assert (=> d!1448589 true))

(declare-fun _$18!267 () Unit!108343)

(assert (=> d!1448589 (= (choose!30839 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!267)))

(declare-fun bs!1011927 () Bool)

(assert (= bs!1011927 d!1448589))

(assert (=> bs!1011927 m!5427041))

(assert (=> bs!1011927 m!5426747))

(assert (=> bs!1011927 m!5426747))

(assert (=> bs!1011927 m!5426741))

(assert (=> bs!1011927 m!5427041))

(assert (=> bs!1011927 m!5426741))

(assert (=> bs!1011927 m!5427043))

(assert (=> d!1448335 d!1448589))

(assert (=> d!1448335 d!1448303))

(assert (=> d!1448335 d!1448409))

(declare-fun bs!1011928 () Bool)

(declare-fun d!1448595 () Bool)

(assert (= bs!1011928 (and d!1448595 d!1448351)))

(declare-fun lambda!186569 () Int)

(assert (=> bs!1011928 (= lambda!186569 lambda!186451)))

(declare-fun bs!1011930 () Bool)

(assert (= bs!1011930 (and d!1448595 d!1448329)))

(assert (=> bs!1011930 (= lambda!186569 lambda!186439)))

(declare-fun bs!1011932 () Bool)

(assert (= bs!1011932 (and d!1448595 d!1448497)))

(assert (=> bs!1011932 (= lambda!186569 lambda!186538)))

(declare-fun bs!1011934 () Bool)

(assert (= bs!1011934 (and d!1448595 d!1448391)))

(assert (=> bs!1011934 (= lambda!186569 lambda!186464)))

(declare-fun bs!1011936 () Bool)

(assert (= bs!1011936 (and d!1448595 d!1448419)))

(assert (=> bs!1011936 (not (= lambda!186569 lambda!186468))))

(declare-fun bs!1011937 () Bool)

(assert (= bs!1011937 (and d!1448595 d!1448415)))

(assert (=> bs!1011937 (= lambda!186569 lambda!186465)))

(declare-fun bs!1011938 () Bool)

(assert (= bs!1011938 (and d!1448595 d!1448283)))

(assert (=> bs!1011938 (= lambda!186569 lambda!186430)))

(declare-fun bs!1011939 () Bool)

(assert (= bs!1011939 (and d!1448595 d!1448389)))

(assert (=> bs!1011939 (= lambda!186569 lambda!186463)))

(declare-fun bs!1011940 () Bool)

(assert (= bs!1011940 (and d!1448595 d!1448481)))

(assert (=> bs!1011940 (= lambda!186569 lambda!186477)))

(declare-fun bs!1011941 () Bool)

(assert (= bs!1011941 (and d!1448595 d!1448273)))

(assert (=> bs!1011941 (= lambda!186569 lambda!186423)))

(declare-fun bs!1011942 () Bool)

(assert (= bs!1011942 (and d!1448595 d!1448381)))

(assert (=> bs!1011942 (= lambda!186569 lambda!186459)))

(declare-fun bs!1011944 () Bool)

(assert (= bs!1011944 (and d!1448595 d!1448383)))

(assert (=> bs!1011944 (= lambda!186569 lambda!186460)))

(declare-fun bs!1011946 () Bool)

(assert (= bs!1011946 (and d!1448595 d!1448373)))

(assert (=> bs!1011946 (= lambda!186569 lambda!186455)))

(declare-fun bs!1011947 () Bool)

(assert (= bs!1011947 (and d!1448595 start!459100)))

(assert (=> bs!1011947 (= lambda!186569 lambda!186420)))

(declare-fun lt!1759805 () ListMap!3929)

(assert (=> d!1448595 (invariantList!1128 (toList!4668 lt!1759805))))

(declare-fun e!2869582 () ListMap!3929)

(assert (=> d!1448595 (= lt!1759805 e!2869582)))

(declare-fun c!788016 () Bool)

(assert (=> d!1448595 (= c!788016 ((_ is Cons!51099) (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)))))

(assert (=> d!1448595 (forall!10612 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099) lambda!186569)))

(assert (=> d!1448595 (= (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)) lt!1759805)))

(declare-fun b!4600450 () Bool)

(assert (=> b!4600450 (= e!2869582 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)))))))

(declare-fun b!4600451 () Bool)

(assert (=> b!4600451 (= e!2869582 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448595 c!788016) b!4600450))

(assert (= (and d!1448595 (not c!788016)) b!4600451))

(declare-fun m!5427795 () Bool)

(assert (=> d!1448595 m!5427795))

(declare-fun m!5427797 () Bool)

(assert (=> d!1448595 m!5427797))

(declare-fun m!5427799 () Bool)

(assert (=> b!4600450 m!5427799))

(assert (=> b!4600450 m!5427799))

(declare-fun m!5427801 () Bool)

(assert (=> b!4600450 m!5427801))

(assert (=> d!1448335 d!1448595))

(declare-fun d!1448597 () Bool)

(assert (=> d!1448597 (= (eq!733 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)) (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287)) (= (content!8656 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 newBucket!178) Nil!51099)))) (content!8656 (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287)))))))

(declare-fun bs!1011955 () Bool)

(assert (= bs!1011955 d!1448597))

(declare-fun m!5427803 () Bool)

(assert (=> bs!1011955 m!5427803))

(assert (=> bs!1011955 m!5426971))

(assert (=> d!1448335 d!1448597))

(assert (=> b!4600017 d!1448433))

(declare-fun d!1448599 () Bool)

(assert (=> d!1448599 (containsKey!2174 (toList!4668 lt!1759280) key!3287)))

(declare-fun lt!1759806 () Unit!108343)

(assert (=> d!1448599 (= lt!1759806 (choose!30853 (toList!4668 lt!1759280) key!3287))))

(assert (=> d!1448599 (invariantList!1128 (toList!4668 lt!1759280))))

(assert (=> d!1448599 (= (lemmaInGetKeysListThenContainsKey!576 (toList!4668 lt!1759280) key!3287) lt!1759806)))

(declare-fun bs!1011958 () Bool)

(assert (= bs!1011958 d!1448599))

(assert (=> bs!1011958 m!5427133))

(declare-fun m!5427805 () Bool)

(assert (=> bs!1011958 m!5427805))

(assert (=> bs!1011958 m!5427377))

(assert (=> b!4600017 d!1448599))

(declare-fun bs!1011961 () Bool)

(declare-fun b!4600454 () Bool)

(assert (= bs!1011961 (and b!4600454 d!1448495)))

(declare-fun lambda!186573 () Int)

(assert (=> bs!1011961 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759626) (= lambda!186573 lambda!186533))))

(declare-fun bs!1011962 () Bool)

(assert (= bs!1011962 (and b!4600454 b!4600224)))

(assert (=> bs!1011962 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759640) (= lambda!186573 lambda!186530))))

(assert (=> bs!1011962 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186573 lambda!186529))))

(declare-fun bs!1011963 () Bool)

(assert (= bs!1011963 (and b!4600454 b!4600226)))

(assert (=> bs!1011963 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186573 lambda!186526))))

(declare-fun bs!1011964 () Bool)

(assert (= bs!1011964 (and b!4600454 d!1448379)))

(assert (=> bs!1011964 (not (= lambda!186573 lambda!186458))))

(assert (=> b!4600454 true))

(declare-fun bs!1011965 () Bool)

(declare-fun b!4600452 () Bool)

(assert (= bs!1011965 (and b!4600452 d!1448495)))

(declare-fun lambda!186574 () Int)

(assert (=> bs!1011965 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759626) (= lambda!186574 lambda!186533))))

(declare-fun bs!1011966 () Bool)

(assert (= bs!1011966 (and b!4600452 b!4600454)))

(assert (=> bs!1011966 (= lambda!186574 lambda!186573)))

(declare-fun bs!1011967 () Bool)

(assert (= bs!1011967 (and b!4600452 b!4600224)))

(assert (=> bs!1011967 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759640) (= lambda!186574 lambda!186530))))

(assert (=> bs!1011967 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186574 lambda!186529))))

(declare-fun bs!1011968 () Bool)

(assert (= bs!1011968 (and b!4600452 b!4600226)))

(assert (=> bs!1011968 (= (= (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186574 lambda!186526))))

(declare-fun bs!1011969 () Bool)

(assert (= bs!1011969 (and b!4600452 d!1448379)))

(assert (=> bs!1011969 (not (= lambda!186574 lambda!186458))))

(assert (=> b!4600452 true))

(declare-fun lambda!186575 () Int)

(declare-fun lt!1759823 () ListMap!3929)

(assert (=> bs!1011965 (= (= lt!1759823 lt!1759626) (= lambda!186575 lambda!186533))))

(assert (=> b!4600452 (= (= lt!1759823 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186575 lambda!186574))))

(assert (=> bs!1011966 (= (= lt!1759823 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186575 lambda!186573))))

(assert (=> bs!1011967 (= (= lt!1759823 lt!1759640) (= lambda!186575 lambda!186530))))

(assert (=> bs!1011967 (= (= lt!1759823 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186575 lambda!186529))))

(assert (=> bs!1011968 (= (= lt!1759823 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186575 lambda!186526))))

(assert (=> bs!1011969 (not (= lambda!186575 lambda!186458))))

(assert (=> b!4600452 true))

(declare-fun bs!1011976 () Bool)

(declare-fun d!1448601 () Bool)

(assert (= bs!1011976 (and d!1448601 d!1448495)))

(declare-fun lt!1759809 () ListMap!3929)

(declare-fun lambda!186577 () Int)

(assert (=> bs!1011976 (= (= lt!1759809 lt!1759626) (= lambda!186577 lambda!186533))))

(declare-fun bs!1011978 () Bool)

(assert (= bs!1011978 (and d!1448601 b!4600452)))

(assert (=> bs!1011978 (= (= lt!1759809 lt!1759823) (= lambda!186577 lambda!186575))))

(assert (=> bs!1011978 (= (= lt!1759809 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186577 lambda!186574))))

(declare-fun bs!1011979 () Bool)

(assert (= bs!1011979 (and d!1448601 b!4600454)))

(assert (=> bs!1011979 (= (= lt!1759809 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186577 lambda!186573))))

(declare-fun bs!1011980 () Bool)

(assert (= bs!1011980 (and d!1448601 b!4600224)))

(assert (=> bs!1011980 (= (= lt!1759809 lt!1759640) (= lambda!186577 lambda!186530))))

(assert (=> bs!1011980 (= (= lt!1759809 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186577 lambda!186529))))

(declare-fun bs!1011981 () Bool)

(assert (= bs!1011981 (and d!1448601 b!4600226)))

(assert (=> bs!1011981 (= (= lt!1759809 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186577 lambda!186526))))

(declare-fun bs!1011983 () Bool)

(assert (= bs!1011983 (and d!1448601 d!1448379)))

(assert (=> bs!1011983 (not (= lambda!186577 lambda!186458))))

(assert (=> d!1448601 true))

(declare-fun e!2869584 () ListMap!3929)

(assert (=> b!4600452 (= e!2869584 lt!1759823)))

(declare-fun lt!1759816 () ListMap!3929)

(assert (=> b!4600452 (= lt!1759816 (+!1756 (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(assert (=> b!4600452 (= lt!1759823 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) (+!1756 (extractMap!1386 (t!358217 (toList!4667 lm!1477))) (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))

(declare-fun lt!1759821 () Unit!108343)

(declare-fun call!321036 () Unit!108343)

(assert (=> b!4600452 (= lt!1759821 call!321036)))

(declare-fun call!321035 () Bool)

(assert (=> b!4600452 call!321035))

(declare-fun lt!1759827 () Unit!108343)

(assert (=> b!4600452 (= lt!1759827 lt!1759821)))

(assert (=> b!4600452 (forall!10613 (toList!4668 lt!1759816) lambda!186575)))

(declare-fun lt!1759820 () Unit!108343)

(declare-fun Unit!108420 () Unit!108343)

(assert (=> b!4600452 (= lt!1759820 Unit!108420)))

(assert (=> b!4600452 (forall!10613 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) lambda!186575)))

(declare-fun lt!1759812 () Unit!108343)

(declare-fun Unit!108422 () Unit!108343)

(assert (=> b!4600452 (= lt!1759812 Unit!108422)))

(declare-fun lt!1759817 () Unit!108343)

(declare-fun Unit!108423 () Unit!108343)

(assert (=> b!4600452 (= lt!1759817 Unit!108423)))

(declare-fun lt!1759810 () Unit!108343)

(assert (=> b!4600452 (= lt!1759810 (forallContained!2865 (toList!4668 lt!1759816) lambda!186575 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(assert (=> b!4600452 (contains!14057 lt!1759816 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun lt!1759819 () Unit!108343)

(declare-fun Unit!108426 () Unit!108343)

(assert (=> b!4600452 (= lt!1759819 Unit!108426)))

(assert (=> b!4600452 (contains!14057 lt!1759823 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun lt!1759813 () Unit!108343)

(declare-fun Unit!108427 () Unit!108343)

(assert (=> b!4600452 (= lt!1759813 Unit!108427)))

(assert (=> b!4600452 (forall!10613 (_2!29172 (h!57067 (toList!4667 lm!1477))) lambda!186575)))

(declare-fun lt!1759822 () Unit!108343)

(declare-fun Unit!108428 () Unit!108343)

(assert (=> b!4600452 (= lt!1759822 Unit!108428)))

(declare-fun call!321037 () Bool)

(assert (=> b!4600452 call!321037))

(declare-fun lt!1759811 () Unit!108343)

(declare-fun Unit!108429 () Unit!108343)

(assert (=> b!4600452 (= lt!1759811 Unit!108429)))

(declare-fun lt!1759808 () Unit!108343)

(declare-fun Unit!108430 () Unit!108343)

(assert (=> b!4600452 (= lt!1759808 Unit!108430)))

(declare-fun lt!1759807 () Unit!108343)

(assert (=> b!4600452 (= lt!1759807 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 (toList!4667 lm!1477))) lt!1759823 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (_2!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))

(assert (=> b!4600452 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) lambda!186575)))

(declare-fun lt!1759826 () Unit!108343)

(assert (=> b!4600452 (= lt!1759826 lt!1759807)))

(assert (=> b!4600452 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) lambda!186575)))

(declare-fun lt!1759815 () Unit!108343)

(declare-fun Unit!108431 () Unit!108343)

(assert (=> b!4600452 (= lt!1759815 Unit!108431)))

(declare-fun res!1924444 () Bool)

(assert (=> b!4600452 (= res!1924444 (forall!10613 (_2!29172 (h!57067 (toList!4667 lm!1477))) lambda!186575))))

(declare-fun e!2869583 () Bool)

(assert (=> b!4600452 (=> (not res!1924444) (not e!2869583))))

(assert (=> b!4600452 e!2869583))

(declare-fun lt!1759818 () Unit!108343)

(declare-fun Unit!108432 () Unit!108343)

(assert (=> b!4600452 (= lt!1759818 Unit!108432)))

(declare-fun bm!321030 () Bool)

(declare-fun c!788017 () Bool)

(assert (=> bm!321030 (= call!321035 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (ite c!788017 lambda!186573 lambda!186574)))))

(declare-fun bm!321031 () Bool)

(assert (=> bm!321031 (= call!321036 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))))))

(assert (=> b!4600454 (= e!2869584 (extractMap!1386 (t!358217 (toList!4667 lm!1477))))))

(declare-fun lt!1759824 () Unit!108343)

(assert (=> b!4600454 (= lt!1759824 call!321036)))

(assert (=> b!4600454 call!321037))

(declare-fun lt!1759825 () Unit!108343)

(assert (=> b!4600454 (= lt!1759825 lt!1759824)))

(assert (=> b!4600454 call!321035))

(declare-fun lt!1759814 () Unit!108343)

(declare-fun Unit!108433 () Unit!108343)

(assert (=> b!4600454 (= lt!1759814 Unit!108433)))

(declare-fun b!4600455 () Bool)

(declare-fun res!1924445 () Bool)

(declare-fun e!2869585 () Bool)

(assert (=> b!4600455 (=> (not res!1924445) (not e!2869585))))

(assert (=> b!4600455 (= res!1924445 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) lambda!186577))))

(declare-fun b!4600456 () Bool)

(assert (=> b!4600456 (= e!2869585 (invariantList!1128 (toList!4668 lt!1759809)))))

(declare-fun bm!321032 () Bool)

(assert (=> bm!321032 (= call!321037 (forall!10613 (ite c!788017 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (toList!4668 lt!1759816)) (ite c!788017 lambda!186573 lambda!186575)))))

(assert (=> d!1448601 e!2869585))

(declare-fun res!1924446 () Bool)

(assert (=> d!1448601 (=> (not res!1924446) (not e!2869585))))

(assert (=> d!1448601 (= res!1924446 (forall!10613 (_2!29172 (h!57067 (toList!4667 lm!1477))) lambda!186577))))

(assert (=> d!1448601 (= lt!1759809 e!2869584)))

(assert (=> d!1448601 (= c!788017 ((_ is Nil!51098) (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> d!1448601 (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477))))))

(assert (=> d!1448601 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 (toList!4667 lm!1477))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) lt!1759809)))

(declare-fun b!4600453 () Bool)

(assert (=> b!4600453 (= e!2869583 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) lambda!186575))))

(assert (= (and d!1448601 c!788017) b!4600454))

(assert (= (and d!1448601 (not c!788017)) b!4600452))

(assert (= (and b!4600452 res!1924444) b!4600453))

(assert (= (or b!4600454 b!4600452) bm!321032))

(assert (= (or b!4600454 b!4600452) bm!321030))

(assert (= (or b!4600454 b!4600452) bm!321031))

(assert (= (and d!1448601 res!1924446) b!4600455))

(assert (= (and b!4600455 res!1924445) b!4600456))

(declare-fun m!5427837 () Bool)

(assert (=> bm!321032 m!5427837))

(declare-fun m!5427839 () Bool)

(assert (=> b!4600452 m!5427839))

(declare-fun m!5427841 () Bool)

(assert (=> b!4600452 m!5427841))

(assert (=> b!4600452 m!5426727))

(assert (=> b!4600452 m!5427839))

(declare-fun m!5427843 () Bool)

(assert (=> b!4600452 m!5427843))

(declare-fun m!5427845 () Bool)

(assert (=> b!4600452 m!5427845))

(declare-fun m!5427847 () Bool)

(assert (=> b!4600452 m!5427847))

(assert (=> b!4600452 m!5427843))

(declare-fun m!5427849 () Bool)

(assert (=> b!4600452 m!5427849))

(declare-fun m!5427851 () Bool)

(assert (=> b!4600452 m!5427851))

(declare-fun m!5427853 () Bool)

(assert (=> b!4600452 m!5427853))

(declare-fun m!5427855 () Bool)

(assert (=> b!4600452 m!5427855))

(assert (=> b!4600452 m!5427847))

(assert (=> b!4600452 m!5426727))

(declare-fun m!5427857 () Bool)

(assert (=> b!4600452 m!5427857))

(declare-fun m!5427859 () Bool)

(assert (=> b!4600455 m!5427859))

(assert (=> b!4600453 m!5427847))

(declare-fun m!5427861 () Bool)

(assert (=> d!1448601 m!5427861))

(assert (=> d!1448601 m!5426761))

(assert (=> bm!321031 m!5426727))

(declare-fun m!5427863 () Bool)

(assert (=> bm!321031 m!5427863))

(declare-fun m!5427865 () Bool)

(assert (=> b!4600456 m!5427865))

(declare-fun m!5427867 () Bool)

(assert (=> bm!321030 m!5427867))

(assert (=> b!4600091 d!1448601))

(assert (=> b!4600091 d!1448381))

(declare-fun d!1448607 () Bool)

(declare-fun res!1924452 () Bool)

(declare-fun e!2869592 () Bool)

(assert (=> d!1448607 (=> res!1924452 e!2869592)))

(assert (=> d!1448607 (= res!1924452 (and ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (= (_1!29171 (h!57066 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))) key!3287)))))

(assert (=> d!1448607 (= (containsKey!2170 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) key!3287) e!2869592)))

(declare-fun b!4600468 () Bool)

(declare-fun e!2869593 () Bool)

(assert (=> b!4600468 (= e!2869592 e!2869593)))

(declare-fun res!1924453 () Bool)

(assert (=> b!4600468 (=> (not res!1924453) (not e!2869593))))

(assert (=> b!4600468 (= res!1924453 ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun b!4600469 () Bool)

(assert (=> b!4600469 (= e!2869593 (containsKey!2170 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) key!3287))))

(assert (= (and d!1448607 (not res!1924452)) b!4600468))

(assert (= (and b!4600468 res!1924453) b!4600469))

(declare-fun m!5427869 () Bool)

(assert (=> b!4600469 m!5427869))

(assert (=> b!4600081 d!1448607))

(declare-fun d!1448609 () Bool)

(declare-fun lt!1759835 () Bool)

(assert (=> d!1448609 (= lt!1759835 (select (content!8654 e!2869292) key!3287))))

(declare-fun e!2869594 () Bool)

(assert (=> d!1448609 (= lt!1759835 e!2869594)))

(declare-fun res!1924454 () Bool)

(assert (=> d!1448609 (=> (not res!1924454) (not e!2869594))))

(assert (=> d!1448609 (= res!1924454 ((_ is Cons!51101) e!2869292))))

(assert (=> d!1448609 (= (contains!14059 e!2869292 key!3287) lt!1759835)))

(declare-fun b!4600470 () Bool)

(declare-fun e!2869595 () Bool)

(assert (=> b!4600470 (= e!2869594 e!2869595)))

(declare-fun res!1924455 () Bool)

(assert (=> b!4600470 (=> res!1924455 e!2869595)))

(assert (=> b!4600470 (= res!1924455 (= (h!57071 e!2869292) key!3287))))

(declare-fun b!4600471 () Bool)

(assert (=> b!4600471 (= e!2869595 (contains!14059 (t!358219 e!2869292) key!3287))))

(assert (= (and d!1448609 res!1924454) b!4600470))

(assert (= (and b!4600470 (not res!1924455)) b!4600471))

(declare-fun m!5427871 () Bool)

(assert (=> d!1448609 m!5427871))

(declare-fun m!5427873 () Bool)

(assert (=> d!1448609 m!5427873))

(declare-fun m!5427875 () Bool)

(assert (=> b!4600471 m!5427875))

(assert (=> bm!320986 d!1448609))

(declare-fun bs!1012003 () Bool)

(declare-fun b!4600474 () Bool)

(assert (= bs!1012003 (and b!4600474 d!1448495)))

(declare-fun lambda!186581 () Int)

(assert (=> bs!1012003 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759626) (= lambda!186581 lambda!186533))))

(declare-fun bs!1012004 () Bool)

(assert (= bs!1012004 (and b!4600474 b!4600452)))

(assert (=> bs!1012004 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759823) (= lambda!186581 lambda!186575))))

(assert (=> bs!1012004 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186581 lambda!186574))))

(declare-fun bs!1012005 () Bool)

(assert (= bs!1012005 (and b!4600474 b!4600454)))

(assert (=> bs!1012005 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186581 lambda!186573))))

(declare-fun bs!1012006 () Bool)

(assert (= bs!1012006 (and b!4600474 b!4600224)))

(assert (=> bs!1012006 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186581 lambda!186529))))

(declare-fun bs!1012007 () Bool)

(assert (= bs!1012007 (and b!4600474 d!1448601)))

(assert (=> bs!1012007 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759809) (= lambda!186581 lambda!186577))))

(assert (=> bs!1012006 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759640) (= lambda!186581 lambda!186530))))

(declare-fun bs!1012008 () Bool)

(assert (= bs!1012008 (and b!4600474 b!4600226)))

(assert (=> bs!1012008 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186581 lambda!186526))))

(declare-fun bs!1012009 () Bool)

(assert (= bs!1012009 (and b!4600474 d!1448379)))

(assert (=> bs!1012009 (not (= lambda!186581 lambda!186458))))

(assert (=> b!4600474 true))

(declare-fun bs!1012010 () Bool)

(declare-fun b!4600472 () Bool)

(assert (= bs!1012010 (and b!4600472 d!1448495)))

(declare-fun lambda!186582 () Int)

(assert (=> bs!1012010 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759626) (= lambda!186582 lambda!186533))))

(declare-fun bs!1012011 () Bool)

(assert (= bs!1012011 (and b!4600472 b!4600452)))

(assert (=> bs!1012011 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759823) (= lambda!186582 lambda!186575))))

(assert (=> bs!1012011 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186582 lambda!186574))))

(declare-fun bs!1012012 () Bool)

(assert (= bs!1012012 (and b!4600472 b!4600454)))

(assert (=> bs!1012012 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186582 lambda!186573))))

(declare-fun bs!1012013 () Bool)

(assert (= bs!1012013 (and b!4600472 b!4600224)))

(assert (=> bs!1012013 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186582 lambda!186529))))

(declare-fun bs!1012014 () Bool)

(assert (= bs!1012014 (and b!4600472 b!4600474)))

(assert (=> bs!1012014 (= lambda!186582 lambda!186581)))

(declare-fun bs!1012015 () Bool)

(assert (= bs!1012015 (and b!4600472 d!1448601)))

(assert (=> bs!1012015 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759809) (= lambda!186582 lambda!186577))))

(assert (=> bs!1012013 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759640) (= lambda!186582 lambda!186530))))

(declare-fun bs!1012016 () Bool)

(assert (= bs!1012016 (and b!4600472 b!4600226)))

(assert (=> bs!1012016 (= (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186582 lambda!186526))))

(declare-fun bs!1012017 () Bool)

(assert (= bs!1012017 (and b!4600472 d!1448379)))

(assert (=> bs!1012017 (not (= lambda!186582 lambda!186458))))

(assert (=> b!4600472 true))

(declare-fun lambda!186583 () Int)

(declare-fun lt!1759852 () ListMap!3929)

(assert (=> bs!1012010 (= (= lt!1759852 lt!1759626) (= lambda!186583 lambda!186533))))

(assert (=> bs!1012011 (= (= lt!1759852 lt!1759823) (= lambda!186583 lambda!186575))))

(assert (=> bs!1012011 (= (= lt!1759852 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186583 lambda!186574))))

(assert (=> bs!1012012 (= (= lt!1759852 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186583 lambda!186573))))

(assert (=> bs!1012013 (= (= lt!1759852 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186583 lambda!186529))))

(assert (=> b!4600472 (= (= lt!1759852 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186583 lambda!186582))))

(assert (=> bs!1012014 (= (= lt!1759852 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186583 lambda!186581))))

(assert (=> bs!1012015 (= (= lt!1759852 lt!1759809) (= lambda!186583 lambda!186577))))

(assert (=> bs!1012013 (= (= lt!1759852 lt!1759640) (= lambda!186583 lambda!186530))))

(assert (=> bs!1012016 (= (= lt!1759852 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186583 lambda!186526))))

(assert (=> bs!1012017 (not (= lambda!186583 lambda!186458))))

(assert (=> b!4600472 true))

(declare-fun bs!1012018 () Bool)

(declare-fun d!1448611 () Bool)

(assert (= bs!1012018 (and d!1448611 d!1448495)))

(declare-fun lambda!186584 () Int)

(declare-fun lt!1759838 () ListMap!3929)

(assert (=> bs!1012018 (= (= lt!1759838 lt!1759626) (= lambda!186584 lambda!186533))))

(declare-fun bs!1012019 () Bool)

(assert (= bs!1012019 (and d!1448611 b!4600452)))

(assert (=> bs!1012019 (= (= lt!1759838 lt!1759823) (= lambda!186584 lambda!186575))))

(declare-fun bs!1012020 () Bool)

(assert (= bs!1012020 (and d!1448611 b!4600454)))

(assert (=> bs!1012020 (= (= lt!1759838 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186584 lambda!186573))))

(declare-fun bs!1012021 () Bool)

(assert (= bs!1012021 (and d!1448611 b!4600224)))

(assert (=> bs!1012021 (= (= lt!1759838 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186584 lambda!186529))))

(declare-fun bs!1012022 () Bool)

(assert (= bs!1012022 (and d!1448611 b!4600472)))

(assert (=> bs!1012022 (= (= lt!1759838 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186584 lambda!186582))))

(declare-fun bs!1012023 () Bool)

(assert (= bs!1012023 (and d!1448611 b!4600474)))

(assert (=> bs!1012023 (= (= lt!1759838 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186584 lambda!186581))))

(assert (=> bs!1012019 (= (= lt!1759838 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186584 lambda!186574))))

(assert (=> bs!1012022 (= (= lt!1759838 lt!1759852) (= lambda!186584 lambda!186583))))

(declare-fun bs!1012024 () Bool)

(assert (= bs!1012024 (and d!1448611 d!1448601)))

(assert (=> bs!1012024 (= (= lt!1759838 lt!1759809) (= lambda!186584 lambda!186577))))

(assert (=> bs!1012021 (= (= lt!1759838 lt!1759640) (= lambda!186584 lambda!186530))))

(declare-fun bs!1012025 () Bool)

(assert (= bs!1012025 (and d!1448611 b!4600226)))

(assert (=> bs!1012025 (= (= lt!1759838 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186584 lambda!186526))))

(declare-fun bs!1012026 () Bool)

(assert (= bs!1012026 (and d!1448611 d!1448379)))

(assert (=> bs!1012026 (not (= lambda!186584 lambda!186458))))

(assert (=> d!1448611 true))

(declare-fun e!2869597 () ListMap!3929)

(assert (=> b!4600472 (= e!2869597 lt!1759852)))

(declare-fun lt!1759845 () ListMap!3929)

(assert (=> b!4600472 (= lt!1759845 (+!1756 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(assert (=> b!4600472 (= lt!1759852 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (+!1756 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(declare-fun lt!1759850 () Unit!108343)

(declare-fun call!321039 () Unit!108343)

(assert (=> b!4600472 (= lt!1759850 call!321039)))

(declare-fun call!321038 () Bool)

(assert (=> b!4600472 call!321038))

(declare-fun lt!1759856 () Unit!108343)

(assert (=> b!4600472 (= lt!1759856 lt!1759850)))

(assert (=> b!4600472 (forall!10613 (toList!4668 lt!1759845) lambda!186583)))

(declare-fun lt!1759849 () Unit!108343)

(declare-fun Unit!108442 () Unit!108343)

(assert (=> b!4600472 (= lt!1759849 Unit!108442)))

(assert (=> b!4600472 (forall!10613 (t!358216 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lambda!186583)))

(declare-fun lt!1759841 () Unit!108343)

(declare-fun Unit!108443 () Unit!108343)

(assert (=> b!4600472 (= lt!1759841 Unit!108443)))

(declare-fun lt!1759846 () Unit!108343)

(declare-fun Unit!108444 () Unit!108343)

(assert (=> b!4600472 (= lt!1759846 Unit!108444)))

(declare-fun lt!1759839 () Unit!108343)

(assert (=> b!4600472 (= lt!1759839 (forallContained!2865 (toList!4668 lt!1759845) lambda!186583 (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(assert (=> b!4600472 (contains!14057 lt!1759845 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun lt!1759848 () Unit!108343)

(declare-fun Unit!108446 () Unit!108343)

(assert (=> b!4600472 (= lt!1759848 Unit!108446)))

(assert (=> b!4600472 (contains!14057 lt!1759852 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun lt!1759842 () Unit!108343)

(declare-fun Unit!108448 () Unit!108343)

(assert (=> b!4600472 (= lt!1759842 Unit!108448)))

(assert (=> b!4600472 (forall!10613 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lambda!186583)))

(declare-fun lt!1759851 () Unit!108343)

(declare-fun Unit!108449 () Unit!108343)

(assert (=> b!4600472 (= lt!1759851 Unit!108449)))

(declare-fun call!321040 () Bool)

(assert (=> b!4600472 call!321040))

(declare-fun lt!1759840 () Unit!108343)

(declare-fun Unit!108450 () Unit!108343)

(assert (=> b!4600472 (= lt!1759840 Unit!108450)))

(declare-fun lt!1759837 () Unit!108343)

(declare-fun Unit!108451 () Unit!108343)

(assert (=> b!4600472 (= lt!1759837 Unit!108451)))

(declare-fun lt!1759836 () Unit!108343)

(assert (=> b!4600472 (= lt!1759836 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759852 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))) (_2!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(assert (=> b!4600472 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lambda!186583)))

(declare-fun lt!1759855 () Unit!108343)

(assert (=> b!4600472 (= lt!1759855 lt!1759836)))

(assert (=> b!4600472 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lambda!186583)))

(declare-fun lt!1759844 () Unit!108343)

(declare-fun Unit!108453 () Unit!108343)

(assert (=> b!4600472 (= lt!1759844 Unit!108453)))

(declare-fun res!1924456 () Bool)

(assert (=> b!4600472 (= res!1924456 (forall!10613 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lambda!186583))))

(declare-fun e!2869596 () Bool)

(assert (=> b!4600472 (=> (not res!1924456) (not e!2869596))))

(assert (=> b!4600472 e!2869596))

(declare-fun lt!1759847 () Unit!108343)

(declare-fun Unit!108454 () Unit!108343)

(assert (=> b!4600472 (= lt!1759847 Unit!108454)))

(declare-fun bm!321033 () Bool)

(declare-fun c!788021 () Bool)

(assert (=> bm!321033 (= call!321038 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (ite c!788021 lambda!186581 lambda!186582)))))

(declare-fun bm!321034 () Bool)

(assert (=> bm!321034 (= call!321039 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(assert (=> b!4600474 (= e!2869597 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))

(declare-fun lt!1759853 () Unit!108343)

(assert (=> b!4600474 (= lt!1759853 call!321039)))

(assert (=> b!4600474 call!321040))

(declare-fun lt!1759854 () Unit!108343)

(assert (=> b!4600474 (= lt!1759854 lt!1759853)))

(assert (=> b!4600474 call!321038))

(declare-fun lt!1759843 () Unit!108343)

(declare-fun Unit!108455 () Unit!108343)

(assert (=> b!4600474 (= lt!1759843 Unit!108455)))

(declare-fun b!4600475 () Bool)

(declare-fun res!1924457 () Bool)

(declare-fun e!2869598 () Bool)

(assert (=> b!4600475 (=> (not res!1924457) (not e!2869598))))

(assert (=> b!4600475 (= res!1924457 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lambda!186584))))

(declare-fun b!4600476 () Bool)

(assert (=> b!4600476 (= e!2869598 (invariantList!1128 (toList!4668 lt!1759838)))))

(declare-fun bm!321035 () Bool)

(assert (=> bm!321035 (= call!321040 (forall!10613 (ite c!788021 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (toList!4668 lt!1759845)) (ite c!788021 lambda!186581 lambda!186583)))))

(assert (=> d!1448611 e!2869598))

(declare-fun res!1924458 () Bool)

(assert (=> d!1448611 (=> (not res!1924458) (not e!2869598))))

(assert (=> d!1448611 (= res!1924458 (forall!10613 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lambda!186584))))

(assert (=> d!1448611 (= lt!1759838 e!2869597)))

(assert (=> d!1448611 (= c!788021 ((_ is Nil!51098) (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(assert (=> d!1448611 (noDuplicateKeys!1326 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))

(assert (=> d!1448611 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lt!1759838)))

(declare-fun b!4600473 () Bool)

(assert (=> b!4600473 (= e!2869596 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) lambda!186583))))

(assert (= (and d!1448611 c!788021) b!4600474))

(assert (= (and d!1448611 (not c!788021)) b!4600472))

(assert (= (and b!4600472 res!1924456) b!4600473))

(assert (= (or b!4600474 b!4600472) bm!321035))

(assert (= (or b!4600474 b!4600472) bm!321033))

(assert (= (or b!4600474 b!4600472) bm!321034))

(assert (= (and d!1448611 res!1924458) b!4600475))

(assert (= (and b!4600475 res!1924457) b!4600476))

(declare-fun m!5427903 () Bool)

(assert (=> bm!321035 m!5427903))

(declare-fun m!5427905 () Bool)

(assert (=> b!4600472 m!5427905))

(declare-fun m!5427907 () Bool)

(assert (=> b!4600472 m!5427907))

(assert (=> b!4600472 m!5426859))

(assert (=> b!4600472 m!5427905))

(declare-fun m!5427909 () Bool)

(assert (=> b!4600472 m!5427909))

(declare-fun m!5427911 () Bool)

(assert (=> b!4600472 m!5427911))

(declare-fun m!5427913 () Bool)

(assert (=> b!4600472 m!5427913))

(assert (=> b!4600472 m!5427909))

(declare-fun m!5427915 () Bool)

(assert (=> b!4600472 m!5427915))

(declare-fun m!5427917 () Bool)

(assert (=> b!4600472 m!5427917))

(declare-fun m!5427919 () Bool)

(assert (=> b!4600472 m!5427919))

(declare-fun m!5427921 () Bool)

(assert (=> b!4600472 m!5427921))

(assert (=> b!4600472 m!5427913))

(assert (=> b!4600472 m!5426859))

(declare-fun m!5427923 () Bool)

(assert (=> b!4600472 m!5427923))

(declare-fun m!5427925 () Bool)

(assert (=> b!4600475 m!5427925))

(assert (=> b!4600473 m!5427913))

(declare-fun m!5427927 () Bool)

(assert (=> d!1448611 m!5427927))

(declare-fun m!5427929 () Bool)

(assert (=> d!1448611 m!5427929))

(assert (=> bm!321034 m!5426859))

(declare-fun m!5427931 () Bool)

(assert (=> bm!321034 m!5427931))

(declare-fun m!5427933 () Bool)

(assert (=> b!4600476 m!5427933))

(declare-fun m!5427935 () Bool)

(assert (=> bm!321033 m!5427935))

(assert (=> b!4599856 d!1448611))

(declare-fun bs!1012027 () Bool)

(declare-fun d!1448615 () Bool)

(assert (= bs!1012027 (and d!1448615 d!1448351)))

(declare-fun lambda!186585 () Int)

(assert (=> bs!1012027 (= lambda!186585 lambda!186451)))

(declare-fun bs!1012028 () Bool)

(assert (= bs!1012028 (and d!1448615 d!1448329)))

(assert (=> bs!1012028 (= lambda!186585 lambda!186439)))

(declare-fun bs!1012029 () Bool)

(assert (= bs!1012029 (and d!1448615 d!1448497)))

(assert (=> bs!1012029 (= lambda!186585 lambda!186538)))

(declare-fun bs!1012030 () Bool)

(assert (= bs!1012030 (and d!1448615 d!1448391)))

(assert (=> bs!1012030 (= lambda!186585 lambda!186464)))

(declare-fun bs!1012031 () Bool)

(assert (= bs!1012031 (and d!1448615 d!1448419)))

(assert (=> bs!1012031 (not (= lambda!186585 lambda!186468))))

(declare-fun bs!1012032 () Bool)

(assert (= bs!1012032 (and d!1448615 d!1448415)))

(assert (=> bs!1012032 (= lambda!186585 lambda!186465)))

(declare-fun bs!1012033 () Bool)

(assert (= bs!1012033 (and d!1448615 d!1448595)))

(assert (=> bs!1012033 (= lambda!186585 lambda!186569)))

(declare-fun bs!1012034 () Bool)

(assert (= bs!1012034 (and d!1448615 d!1448283)))

(assert (=> bs!1012034 (= lambda!186585 lambda!186430)))

(declare-fun bs!1012035 () Bool)

(assert (= bs!1012035 (and d!1448615 d!1448389)))

(assert (=> bs!1012035 (= lambda!186585 lambda!186463)))

(declare-fun bs!1012036 () Bool)

(assert (= bs!1012036 (and d!1448615 d!1448481)))

(assert (=> bs!1012036 (= lambda!186585 lambda!186477)))

(declare-fun bs!1012037 () Bool)

(assert (= bs!1012037 (and d!1448615 d!1448273)))

(assert (=> bs!1012037 (= lambda!186585 lambda!186423)))

(declare-fun bs!1012038 () Bool)

(assert (= bs!1012038 (and d!1448615 d!1448381)))

(assert (=> bs!1012038 (= lambda!186585 lambda!186459)))

(declare-fun bs!1012039 () Bool)

(assert (= bs!1012039 (and d!1448615 d!1448383)))

(assert (=> bs!1012039 (= lambda!186585 lambda!186460)))

(declare-fun bs!1012040 () Bool)

(assert (= bs!1012040 (and d!1448615 d!1448373)))

(assert (=> bs!1012040 (= lambda!186585 lambda!186455)))

(declare-fun bs!1012041 () Bool)

(assert (= bs!1012041 (and d!1448615 start!459100)))

(assert (=> bs!1012041 (= lambda!186585 lambda!186420)))

(declare-fun lt!1759857 () ListMap!3929)

(assert (=> d!1448615 (invariantList!1128 (toList!4668 lt!1759857))))

(declare-fun e!2869599 () ListMap!3929)

(assert (=> d!1448615 (= lt!1759857 e!2869599)))

(declare-fun c!788022 () Bool)

(assert (=> d!1448615 (= c!788022 ((_ is Cons!51099) (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))

(assert (=> d!1448615 (forall!10612 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) lambda!186585)))

(assert (=> d!1448615 (= (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759857)))

(declare-fun b!4600477 () Bool)

(assert (=> b!4600477 (= e!2869599 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (extractMap!1386 (t!358217 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun b!4600478 () Bool)

(assert (=> b!4600478 (= e!2869599 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448615 c!788022) b!4600477))

(assert (= (and d!1448615 (not c!788022)) b!4600478))

(declare-fun m!5427937 () Bool)

(assert (=> d!1448615 m!5427937))

(declare-fun m!5427939 () Bool)

(assert (=> d!1448615 m!5427939))

(declare-fun m!5427941 () Bool)

(assert (=> b!4600477 m!5427941))

(assert (=> b!4600477 m!5427941))

(declare-fun m!5427943 () Bool)

(assert (=> b!4600477 m!5427943))

(assert (=> b!4599856 d!1448615))

(assert (=> b!4600006 d!1448529))

(declare-fun d!1448617 () Bool)

(assert (=> d!1448617 (containsKey!2174 (toList!4668 (extractMap!1386 lt!1759278)) key!3287)))

(declare-fun lt!1759858 () Unit!108343)

(assert (=> d!1448617 (= lt!1759858 (choose!30853 (toList!4668 (extractMap!1386 lt!1759278)) key!3287))))

(assert (=> d!1448617 (invariantList!1128 (toList!4668 (extractMap!1386 lt!1759278)))))

(assert (=> d!1448617 (= (lemmaInGetKeysListThenContainsKey!576 (toList!4668 (extractMap!1386 lt!1759278)) key!3287) lt!1759858)))

(declare-fun bs!1012042 () Bool)

(assert (= bs!1012042 d!1448617))

(assert (=> bs!1012042 m!5427105))

(declare-fun m!5427945 () Bool)

(assert (=> bs!1012042 m!5427945))

(assert (=> bs!1012042 m!5427561))

(assert (=> b!4600006 d!1448617))

(declare-fun b!4600482 () Bool)

(declare-fun e!2869601 () Option!11398)

(assert (=> b!4600482 (= e!2869601 None!11397)))

(declare-fun b!4600481 () Bool)

(assert (=> b!4600481 (= e!2869601 (getValueByKey!1318 (t!358217 (toList!4667 lm!1477)) hash!344))))

(declare-fun b!4600479 () Bool)

(declare-fun e!2869600 () Option!11398)

(assert (=> b!4600479 (= e!2869600 (Some!11397 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(declare-fun d!1448619 () Bool)

(declare-fun c!788023 () Bool)

(assert (=> d!1448619 (= c!788023 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (= (_1!29172 (h!57067 (toList!4667 lm!1477))) hash!344)))))

(assert (=> d!1448619 (= (getValueByKey!1318 (toList!4667 lm!1477) hash!344) e!2869600)))

(declare-fun b!4600480 () Bool)

(assert (=> b!4600480 (= e!2869600 e!2869601)))

(declare-fun c!788024 () Bool)

(assert (=> b!4600480 (= c!788024 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (not (= (_1!29172 (h!57067 (toList!4667 lm!1477))) hash!344))))))

(assert (= (and d!1448619 c!788023) b!4600479))

(assert (= (and d!1448619 (not c!788023)) b!4600480))

(assert (= (and b!4600480 c!788024) b!4600481))

(assert (= (and b!4600480 (not c!788024)) b!4600482))

(declare-fun m!5427947 () Bool)

(assert (=> b!4600481 m!5427947))

(assert (=> b!4600051 d!1448619))

(declare-fun b!4600484 () Bool)

(declare-fun e!2869602 () List!51222)

(declare-fun e!2869603 () List!51222)

(assert (=> b!4600484 (= e!2869602 e!2869603)))

(declare-fun c!788025 () Bool)

(assert (=> b!4600484 (= c!788025 ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun b!4600486 () Bool)

(assert (=> b!4600486 (= e!2869603 Nil!51098)))

(declare-fun d!1448621 () Bool)

(declare-fun lt!1759859 () List!51222)

(assert (=> d!1448621 (not (containsKey!2170 lt!1759859 key!3287))))

(assert (=> d!1448621 (= lt!1759859 e!2869602)))

(declare-fun c!788026 () Bool)

(assert (=> d!1448621 (= c!788026 (and ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (= (_1!29171 (h!57066 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))) key!3287)))))

(assert (=> d!1448621 (noDuplicateKeys!1326 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> d!1448621 (= (removePairForKey!951 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) key!3287) lt!1759859)))

(declare-fun b!4600483 () Bool)

(assert (=> b!4600483 (= e!2869602 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun b!4600485 () Bool)

(assert (=> b!4600485 (= e!2869603 (Cons!51098 (h!57066 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (removePairForKey!951 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) key!3287)))))

(assert (= (and d!1448621 c!788026) b!4600483))

(assert (= (and d!1448621 (not c!788026)) b!4600484))

(assert (= (and b!4600484 c!788025) b!4600485))

(assert (= (and b!4600484 (not c!788025)) b!4600486))

(declare-fun m!5427949 () Bool)

(assert (=> d!1448621 m!5427949))

(assert (=> d!1448621 m!5427243))

(declare-fun m!5427951 () Bool)

(assert (=> b!4600485 m!5427951))

(assert (=> b!4600028 d!1448621))

(declare-fun d!1448623 () Bool)

(assert (=> d!1448623 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275))))

(declare-fun lt!1759860 () Unit!108343)

(assert (=> d!1448623 (= lt!1759860 (choose!30852 (toList!4667 lt!1759284) lt!1759275))))

(declare-fun e!2869604 () Bool)

(assert (=> d!1448623 e!2869604))

(declare-fun res!1924459 () Bool)

(assert (=> d!1448623 (=> (not res!1924459) (not e!2869604))))

(assert (=> d!1448623 (= res!1924459 (isStrictlySorted!544 (toList!4667 lt!1759284)))))

(assert (=> d!1448623 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lt!1759284) lt!1759275) lt!1759860)))

(declare-fun b!4600487 () Bool)

(assert (=> b!4600487 (= e!2869604 (containsKey!2173 (toList!4667 lt!1759284) lt!1759275))))

(assert (= (and d!1448623 res!1924459) b!4600487))

(assert (=> d!1448623 m!5426799))

(assert (=> d!1448623 m!5426799))

(assert (=> d!1448623 m!5426801))

(declare-fun m!5427953 () Bool)

(assert (=> d!1448623 m!5427953))

(declare-fun m!5427955 () Bool)

(assert (=> d!1448623 m!5427955))

(assert (=> b!4600487 m!5426795))

(assert (=> b!4599815 d!1448623))

(declare-fun d!1448625 () Bool)

(assert (=> d!1448625 (= (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275)) (not (isEmpty!28869 (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275))))))

(declare-fun bs!1012043 () Bool)

(assert (= bs!1012043 d!1448625))

(assert (=> bs!1012043 m!5426799))

(declare-fun m!5427957 () Bool)

(assert (=> bs!1012043 m!5427957))

(assert (=> b!4599815 d!1448625))

(declare-fun b!4600491 () Bool)

(declare-fun e!2869606 () Option!11398)

(assert (=> b!4600491 (= e!2869606 None!11397)))

(declare-fun b!4600490 () Bool)

(assert (=> b!4600490 (= e!2869606 (getValueByKey!1318 (t!358217 (toList!4667 lt!1759284)) lt!1759275))))

(declare-fun b!4600488 () Bool)

(declare-fun e!2869605 () Option!11398)

(assert (=> b!4600488 (= e!2869605 (Some!11397 (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))

(declare-fun d!1448627 () Bool)

(declare-fun c!788027 () Bool)

(assert (=> d!1448627 (= c!788027 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (= (_1!29172 (h!57067 (toList!4667 lt!1759284))) lt!1759275)))))

(assert (=> d!1448627 (= (getValueByKey!1318 (toList!4667 lt!1759284) lt!1759275) e!2869605)))

(declare-fun b!4600489 () Bool)

(assert (=> b!4600489 (= e!2869605 e!2869606)))

(declare-fun c!788028 () Bool)

(assert (=> b!4600489 (= c!788028 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (not (= (_1!29172 (h!57067 (toList!4667 lt!1759284))) lt!1759275))))))

(assert (= (and d!1448627 c!788027) b!4600488))

(assert (= (and d!1448627 (not c!788027)) b!4600489))

(assert (= (and b!4600489 c!788028) b!4600490))

(assert (= (and b!4600489 (not c!788028)) b!4600491))

(declare-fun m!5427959 () Bool)

(assert (=> b!4600490 m!5427959))

(assert (=> b!4599815 d!1448627))

(declare-fun bs!1012044 () Bool)

(declare-fun b!4600494 () Bool)

(assert (= bs!1012044 (and b!4600494 d!1448495)))

(declare-fun lambda!186586 () Int)

(assert (=> bs!1012044 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759626) (= lambda!186586 lambda!186533))))

(declare-fun bs!1012045 () Bool)

(assert (= bs!1012045 (and b!4600494 d!1448611)))

(assert (=> bs!1012045 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759838) (= lambda!186586 lambda!186584))))

(declare-fun bs!1012046 () Bool)

(assert (= bs!1012046 (and b!4600494 b!4600452)))

(assert (=> bs!1012046 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759823) (= lambda!186586 lambda!186575))))

(declare-fun bs!1012047 () Bool)

(assert (= bs!1012047 (and b!4600494 b!4600454)))

(assert (=> bs!1012047 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186586 lambda!186573))))

(declare-fun bs!1012048 () Bool)

(assert (= bs!1012048 (and b!4600494 b!4600224)))

(assert (=> bs!1012048 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186586 lambda!186529))))

(declare-fun bs!1012049 () Bool)

(assert (= bs!1012049 (and b!4600494 b!4600472)))

(assert (=> bs!1012049 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186586 lambda!186582))))

(declare-fun bs!1012050 () Bool)

(assert (= bs!1012050 (and b!4600494 b!4600474)))

(assert (=> bs!1012050 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186586 lambda!186581))))

(assert (=> bs!1012046 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186586 lambda!186574))))

(assert (=> bs!1012049 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759852) (= lambda!186586 lambda!186583))))

(declare-fun bs!1012051 () Bool)

(assert (= bs!1012051 (and b!4600494 d!1448601)))

(assert (=> bs!1012051 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759809) (= lambda!186586 lambda!186577))))

(assert (=> bs!1012048 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759640) (= lambda!186586 lambda!186530))))

(declare-fun bs!1012052 () Bool)

(assert (= bs!1012052 (and b!4600494 b!4600226)))

(assert (=> bs!1012052 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186586 lambda!186526))))

(declare-fun bs!1012053 () Bool)

(assert (= bs!1012053 (and b!4600494 d!1448379)))

(assert (=> bs!1012053 (not (= lambda!186586 lambda!186458))))

(assert (=> b!4600494 true))

(declare-fun bs!1012054 () Bool)

(declare-fun b!4600492 () Bool)

(assert (= bs!1012054 (and b!4600492 d!1448495)))

(declare-fun lambda!186587 () Int)

(assert (=> bs!1012054 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759626) (= lambda!186587 lambda!186533))))

(declare-fun bs!1012055 () Bool)

(assert (= bs!1012055 (and b!4600492 d!1448611)))

(assert (=> bs!1012055 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759838) (= lambda!186587 lambda!186584))))

(declare-fun bs!1012056 () Bool)

(assert (= bs!1012056 (and b!4600492 b!4600452)))

(assert (=> bs!1012056 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759823) (= lambda!186587 lambda!186575))))

(declare-fun bs!1012057 () Bool)

(assert (= bs!1012057 (and b!4600492 b!4600454)))

(assert (=> bs!1012057 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186587 lambda!186573))))

(declare-fun bs!1012058 () Bool)

(assert (= bs!1012058 (and b!4600492 b!4600224)))

(assert (=> bs!1012058 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186587 lambda!186529))))

(declare-fun bs!1012059 () Bool)

(assert (= bs!1012059 (and b!4600492 b!4600472)))

(assert (=> bs!1012059 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186587 lambda!186582))))

(declare-fun bs!1012060 () Bool)

(assert (= bs!1012060 (and b!4600492 b!4600474)))

(assert (=> bs!1012060 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186587 lambda!186581))))

(assert (=> bs!1012056 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186587 lambda!186574))))

(declare-fun bs!1012061 () Bool)

(assert (= bs!1012061 (and b!4600492 b!4600494)))

(assert (=> bs!1012061 (= lambda!186587 lambda!186586)))

(assert (=> bs!1012059 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759852) (= lambda!186587 lambda!186583))))

(declare-fun bs!1012062 () Bool)

(assert (= bs!1012062 (and b!4600492 d!1448601)))

(assert (=> bs!1012062 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759809) (= lambda!186587 lambda!186577))))

(assert (=> bs!1012058 (= (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759640) (= lambda!186587 lambda!186530))))

(declare-fun bs!1012063 () Bool)

(assert (= bs!1012063 (and b!4600492 b!4600226)))

(assert (=> bs!1012063 (= (= (extractMap!1386 (t!358217 lt!1759278)) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186587 lambda!186526))))

(declare-fun bs!1012065 () Bool)

(assert (= bs!1012065 (and b!4600492 d!1448379)))

(assert (=> bs!1012065 (not (= lambda!186587 lambda!186458))))

(assert (=> b!4600492 true))

(declare-fun lt!1759877 () ListMap!3929)

(declare-fun lambda!186588 () Int)

(assert (=> bs!1012054 (= (= lt!1759877 lt!1759626) (= lambda!186588 lambda!186533))))

(assert (=> bs!1012055 (= (= lt!1759877 lt!1759838) (= lambda!186588 lambda!186584))))

(assert (=> bs!1012056 (= (= lt!1759877 lt!1759823) (= lambda!186588 lambda!186575))))

(assert (=> bs!1012058 (= (= lt!1759877 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186588 lambda!186529))))

(assert (=> bs!1012059 (= (= lt!1759877 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186588 lambda!186582))))

(assert (=> bs!1012060 (= (= lt!1759877 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186588 lambda!186581))))

(assert (=> bs!1012056 (= (= lt!1759877 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186588 lambda!186574))))

(assert (=> bs!1012061 (= (= lt!1759877 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186588 lambda!186586))))

(assert (=> bs!1012059 (= (= lt!1759877 lt!1759852) (= lambda!186588 lambda!186583))))

(assert (=> bs!1012057 (= (= lt!1759877 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186588 lambda!186573))))

(assert (=> b!4600492 (= (= lt!1759877 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186588 lambda!186587))))

(assert (=> bs!1012062 (= (= lt!1759877 lt!1759809) (= lambda!186588 lambda!186577))))

(assert (=> bs!1012058 (= (= lt!1759877 lt!1759640) (= lambda!186588 lambda!186530))))

(assert (=> bs!1012063 (= (= lt!1759877 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186588 lambda!186526))))

(assert (=> bs!1012065 (not (= lambda!186588 lambda!186458))))

(assert (=> b!4600492 true))

(declare-fun bs!1012077 () Bool)

(declare-fun d!1448629 () Bool)

(assert (= bs!1012077 (and d!1448629 d!1448495)))

(declare-fun lt!1759863 () ListMap!3929)

(declare-fun lambda!186590 () Int)

(assert (=> bs!1012077 (= (= lt!1759863 lt!1759626) (= lambda!186590 lambda!186533))))

(declare-fun bs!1012079 () Bool)

(assert (= bs!1012079 (and d!1448629 d!1448611)))

(assert (=> bs!1012079 (= (= lt!1759863 lt!1759838) (= lambda!186590 lambda!186584))))

(declare-fun bs!1012080 () Bool)

(assert (= bs!1012080 (and d!1448629 b!4600452)))

(assert (=> bs!1012080 (= (= lt!1759863 lt!1759823) (= lambda!186590 lambda!186575))))

(declare-fun bs!1012082 () Bool)

(assert (= bs!1012082 (and d!1448629 b!4600224)))

(assert (=> bs!1012082 (= (= lt!1759863 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186590 lambda!186529))))

(declare-fun bs!1012083 () Bool)

(assert (= bs!1012083 (and d!1448629 b!4600472)))

(assert (=> bs!1012083 (= (= lt!1759863 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186590 lambda!186582))))

(declare-fun bs!1012084 () Bool)

(assert (= bs!1012084 (and d!1448629 b!4600492)))

(assert (=> bs!1012084 (= (= lt!1759863 lt!1759877) (= lambda!186590 lambda!186588))))

(declare-fun bs!1012085 () Bool)

(assert (= bs!1012085 (and d!1448629 b!4600474)))

(assert (=> bs!1012085 (= (= lt!1759863 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186590 lambda!186581))))

(assert (=> bs!1012080 (= (= lt!1759863 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186590 lambda!186574))))

(declare-fun bs!1012086 () Bool)

(assert (= bs!1012086 (and d!1448629 b!4600494)))

(assert (=> bs!1012086 (= (= lt!1759863 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186590 lambda!186586))))

(assert (=> bs!1012083 (= (= lt!1759863 lt!1759852) (= lambda!186590 lambda!186583))))

(declare-fun bs!1012087 () Bool)

(assert (= bs!1012087 (and d!1448629 b!4600454)))

(assert (=> bs!1012087 (= (= lt!1759863 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186590 lambda!186573))))

(assert (=> bs!1012084 (= (= lt!1759863 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186590 lambda!186587))))

(declare-fun bs!1012088 () Bool)

(assert (= bs!1012088 (and d!1448629 d!1448601)))

(assert (=> bs!1012088 (= (= lt!1759863 lt!1759809) (= lambda!186590 lambda!186577))))

(assert (=> bs!1012082 (= (= lt!1759863 lt!1759640) (= lambda!186590 lambda!186530))))

(declare-fun bs!1012089 () Bool)

(assert (= bs!1012089 (and d!1448629 b!4600226)))

(assert (=> bs!1012089 (= (= lt!1759863 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186590 lambda!186526))))

(declare-fun bs!1012090 () Bool)

(assert (= bs!1012090 (and d!1448629 d!1448379)))

(assert (=> bs!1012090 (not (= lambda!186590 lambda!186458))))

(assert (=> d!1448629 true))

(declare-fun e!2869608 () ListMap!3929)

(assert (=> b!4600492 (= e!2869608 lt!1759877)))

(declare-fun lt!1759870 () ListMap!3929)

(assert (=> b!4600492 (= lt!1759870 (+!1756 (extractMap!1386 (t!358217 lt!1759278)) (h!57066 (_2!29172 (h!57067 lt!1759278)))))))

(assert (=> b!4600492 (= lt!1759877 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 lt!1759278))) (+!1756 (extractMap!1386 (t!358217 lt!1759278)) (h!57066 (_2!29172 (h!57067 lt!1759278))))))))

(declare-fun lt!1759875 () Unit!108343)

(declare-fun call!321042 () Unit!108343)

(assert (=> b!4600492 (= lt!1759875 call!321042)))

(declare-fun call!321041 () Bool)

(assert (=> b!4600492 call!321041))

(declare-fun lt!1759881 () Unit!108343)

(assert (=> b!4600492 (= lt!1759881 lt!1759875)))

(assert (=> b!4600492 (forall!10613 (toList!4668 lt!1759870) lambda!186588)))

(declare-fun lt!1759874 () Unit!108343)

(declare-fun Unit!108457 () Unit!108343)

(assert (=> b!4600492 (= lt!1759874 Unit!108457)))

(assert (=> b!4600492 (forall!10613 (t!358216 (_2!29172 (h!57067 lt!1759278))) lambda!186588)))

(declare-fun lt!1759866 () Unit!108343)

(declare-fun Unit!108458 () Unit!108343)

(assert (=> b!4600492 (= lt!1759866 Unit!108458)))

(declare-fun lt!1759871 () Unit!108343)

(declare-fun Unit!108459 () Unit!108343)

(assert (=> b!4600492 (= lt!1759871 Unit!108459)))

(declare-fun lt!1759864 () Unit!108343)

(assert (=> b!4600492 (= lt!1759864 (forallContained!2865 (toList!4668 lt!1759870) lambda!186588 (h!57066 (_2!29172 (h!57067 lt!1759278)))))))

(assert (=> b!4600492 (contains!14057 lt!1759870 (_1!29171 (h!57066 (_2!29172 (h!57067 lt!1759278)))))))

(declare-fun lt!1759873 () Unit!108343)

(declare-fun Unit!108460 () Unit!108343)

(assert (=> b!4600492 (= lt!1759873 Unit!108460)))

(assert (=> b!4600492 (contains!14057 lt!1759877 (_1!29171 (h!57066 (_2!29172 (h!57067 lt!1759278)))))))

(declare-fun lt!1759867 () Unit!108343)

(declare-fun Unit!108461 () Unit!108343)

(assert (=> b!4600492 (= lt!1759867 Unit!108461)))

(assert (=> b!4600492 (forall!10613 (_2!29172 (h!57067 lt!1759278)) lambda!186588)))

(declare-fun lt!1759876 () Unit!108343)

(declare-fun Unit!108462 () Unit!108343)

(assert (=> b!4600492 (= lt!1759876 Unit!108462)))

(declare-fun call!321043 () Bool)

(assert (=> b!4600492 call!321043))

(declare-fun lt!1759865 () Unit!108343)

(declare-fun Unit!108463 () Unit!108343)

(assert (=> b!4600492 (= lt!1759865 Unit!108463)))

(declare-fun lt!1759862 () Unit!108343)

(declare-fun Unit!108464 () Unit!108343)

(assert (=> b!4600492 (= lt!1759862 Unit!108464)))

(declare-fun lt!1759861 () Unit!108343)

(assert (=> b!4600492 (= lt!1759861 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 lt!1759278)) lt!1759877 (_1!29171 (h!57066 (_2!29172 (h!57067 lt!1759278)))) (_2!29171 (h!57066 (_2!29172 (h!57067 lt!1759278))))))))

(assert (=> b!4600492 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) lambda!186588)))

(declare-fun lt!1759880 () Unit!108343)

(assert (=> b!4600492 (= lt!1759880 lt!1759861)))

(assert (=> b!4600492 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) lambda!186588)))

(declare-fun lt!1759869 () Unit!108343)

(declare-fun Unit!108465 () Unit!108343)

(assert (=> b!4600492 (= lt!1759869 Unit!108465)))

(declare-fun res!1924460 () Bool)

(assert (=> b!4600492 (= res!1924460 (forall!10613 (_2!29172 (h!57067 lt!1759278)) lambda!186588))))

(declare-fun e!2869607 () Bool)

(assert (=> b!4600492 (=> (not res!1924460) (not e!2869607))))

(assert (=> b!4600492 e!2869607))

(declare-fun lt!1759872 () Unit!108343)

(declare-fun Unit!108466 () Unit!108343)

(assert (=> b!4600492 (= lt!1759872 Unit!108466)))

(declare-fun bm!321036 () Bool)

(declare-fun c!788029 () Bool)

(assert (=> bm!321036 (= call!321041 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) (ite c!788029 lambda!186586 lambda!186587)))))

(declare-fun bm!321037 () Bool)

(assert (=> bm!321037 (= call!321042 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 lt!1759278))))))

(assert (=> b!4600494 (= e!2869608 (extractMap!1386 (t!358217 lt!1759278)))))

(declare-fun lt!1759878 () Unit!108343)

(assert (=> b!4600494 (= lt!1759878 call!321042)))

(assert (=> b!4600494 call!321043))

(declare-fun lt!1759879 () Unit!108343)

(assert (=> b!4600494 (= lt!1759879 lt!1759878)))

(assert (=> b!4600494 call!321041))

(declare-fun lt!1759868 () Unit!108343)

(declare-fun Unit!108467 () Unit!108343)

(assert (=> b!4600494 (= lt!1759868 Unit!108467)))

(declare-fun b!4600495 () Bool)

(declare-fun res!1924461 () Bool)

(declare-fun e!2869609 () Bool)

(assert (=> b!4600495 (=> (not res!1924461) (not e!2869609))))

(assert (=> b!4600495 (= res!1924461 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) lambda!186590))))

(declare-fun b!4600496 () Bool)

(assert (=> b!4600496 (= e!2869609 (invariantList!1128 (toList!4668 lt!1759863)))))

(declare-fun bm!321038 () Bool)

(assert (=> bm!321038 (= call!321043 (forall!10613 (ite c!788029 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) (toList!4668 lt!1759870)) (ite c!788029 lambda!186586 lambda!186588)))))

(assert (=> d!1448629 e!2869609))

(declare-fun res!1924462 () Bool)

(assert (=> d!1448629 (=> (not res!1924462) (not e!2869609))))

(assert (=> d!1448629 (= res!1924462 (forall!10613 (_2!29172 (h!57067 lt!1759278)) lambda!186590))))

(assert (=> d!1448629 (= lt!1759863 e!2869608)))

(assert (=> d!1448629 (= c!788029 ((_ is Nil!51098) (_2!29172 (h!57067 lt!1759278))))))

(assert (=> d!1448629 (noDuplicateKeys!1326 (_2!29172 (h!57067 lt!1759278)))))

(assert (=> d!1448629 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 lt!1759278)) (extractMap!1386 (t!358217 lt!1759278))) lt!1759863)))

(declare-fun b!4600493 () Bool)

(assert (=> b!4600493 (= e!2869607 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 lt!1759278))) lambda!186588))))

(assert (= (and d!1448629 c!788029) b!4600494))

(assert (= (and d!1448629 (not c!788029)) b!4600492))

(assert (= (and b!4600492 res!1924460) b!4600493))

(assert (= (or b!4600494 b!4600492) bm!321038))

(assert (= (or b!4600494 b!4600492) bm!321036))

(assert (= (or b!4600494 b!4600492) bm!321037))

(assert (= (and d!1448629 res!1924462) b!4600495))

(assert (= (and b!4600495 res!1924461) b!4600496))

(declare-fun m!5427971 () Bool)

(assert (=> bm!321038 m!5427971))

(declare-fun m!5427973 () Bool)

(assert (=> b!4600492 m!5427973))

(declare-fun m!5427975 () Bool)

(assert (=> b!4600492 m!5427975))

(assert (=> b!4600492 m!5426983))

(assert (=> b!4600492 m!5427973))

(declare-fun m!5427977 () Bool)

(assert (=> b!4600492 m!5427977))

(declare-fun m!5427979 () Bool)

(assert (=> b!4600492 m!5427979))

(declare-fun m!5427981 () Bool)

(assert (=> b!4600492 m!5427981))

(assert (=> b!4600492 m!5427977))

(declare-fun m!5427983 () Bool)

(assert (=> b!4600492 m!5427983))

(declare-fun m!5427985 () Bool)

(assert (=> b!4600492 m!5427985))

(declare-fun m!5427987 () Bool)

(assert (=> b!4600492 m!5427987))

(declare-fun m!5427989 () Bool)

(assert (=> b!4600492 m!5427989))

(assert (=> b!4600492 m!5427981))

(assert (=> b!4600492 m!5426983))

(declare-fun m!5427991 () Bool)

(assert (=> b!4600492 m!5427991))

(declare-fun m!5427993 () Bool)

(assert (=> b!4600495 m!5427993))

(assert (=> b!4600493 m!5427981))

(declare-fun m!5427995 () Bool)

(assert (=> d!1448629 m!5427995))

(declare-fun m!5427997 () Bool)

(assert (=> d!1448629 m!5427997))

(assert (=> bm!321037 m!5426983))

(declare-fun m!5427999 () Bool)

(assert (=> bm!321037 m!5427999))

(declare-fun m!5428001 () Bool)

(assert (=> b!4600496 m!5428001))

(declare-fun m!5428003 () Bool)

(assert (=> bm!321036 m!5428003))

(assert (=> b!4599933 d!1448629))

(declare-fun bs!1012099 () Bool)

(declare-fun d!1448637 () Bool)

(assert (= bs!1012099 (and d!1448637 d!1448351)))

(declare-fun lambda!186592 () Int)

(assert (=> bs!1012099 (= lambda!186592 lambda!186451)))

(declare-fun bs!1012100 () Bool)

(assert (= bs!1012100 (and d!1448637 d!1448329)))

(assert (=> bs!1012100 (= lambda!186592 lambda!186439)))

(declare-fun bs!1012102 () Bool)

(assert (= bs!1012102 (and d!1448637 d!1448497)))

(assert (=> bs!1012102 (= lambda!186592 lambda!186538)))

(declare-fun bs!1012104 () Bool)

(assert (= bs!1012104 (and d!1448637 d!1448391)))

(assert (=> bs!1012104 (= lambda!186592 lambda!186464)))

(declare-fun bs!1012105 () Bool)

(assert (= bs!1012105 (and d!1448637 d!1448419)))

(assert (=> bs!1012105 (not (= lambda!186592 lambda!186468))))

(declare-fun bs!1012107 () Bool)

(assert (= bs!1012107 (and d!1448637 d!1448415)))

(assert (=> bs!1012107 (= lambda!186592 lambda!186465)))

(declare-fun bs!1012109 () Bool)

(assert (= bs!1012109 (and d!1448637 d!1448595)))

(assert (=> bs!1012109 (= lambda!186592 lambda!186569)))

(declare-fun bs!1012111 () Bool)

(assert (= bs!1012111 (and d!1448637 d!1448283)))

(assert (=> bs!1012111 (= lambda!186592 lambda!186430)))

(declare-fun bs!1012112 () Bool)

(assert (= bs!1012112 (and d!1448637 d!1448389)))

(assert (=> bs!1012112 (= lambda!186592 lambda!186463)))

(declare-fun bs!1012114 () Bool)

(assert (= bs!1012114 (and d!1448637 d!1448481)))

(assert (=> bs!1012114 (= lambda!186592 lambda!186477)))

(declare-fun bs!1012115 () Bool)

(assert (= bs!1012115 (and d!1448637 d!1448273)))

(assert (=> bs!1012115 (= lambda!186592 lambda!186423)))

(declare-fun bs!1012116 () Bool)

(assert (= bs!1012116 (and d!1448637 d!1448381)))

(assert (=> bs!1012116 (= lambda!186592 lambda!186459)))

(declare-fun bs!1012118 () Bool)

(assert (= bs!1012118 (and d!1448637 d!1448383)))

(assert (=> bs!1012118 (= lambda!186592 lambda!186460)))

(declare-fun bs!1012119 () Bool)

(assert (= bs!1012119 (and d!1448637 d!1448373)))

(assert (=> bs!1012119 (= lambda!186592 lambda!186455)))

(declare-fun bs!1012120 () Bool)

(assert (= bs!1012120 (and d!1448637 d!1448615)))

(assert (=> bs!1012120 (= lambda!186592 lambda!186585)))

(declare-fun bs!1012122 () Bool)

(assert (= bs!1012122 (and d!1448637 start!459100)))

(assert (=> bs!1012122 (= lambda!186592 lambda!186420)))

(declare-fun lt!1759904 () ListMap!3929)

(assert (=> d!1448637 (invariantList!1128 (toList!4668 lt!1759904))))

(declare-fun e!2869614 () ListMap!3929)

(assert (=> d!1448637 (= lt!1759904 e!2869614)))

(declare-fun c!788032 () Bool)

(assert (=> d!1448637 (= c!788032 ((_ is Cons!51099) (t!358217 lt!1759278)))))

(assert (=> d!1448637 (forall!10612 (t!358217 lt!1759278) lambda!186592)))

(assert (=> d!1448637 (= (extractMap!1386 (t!358217 lt!1759278)) lt!1759904)))

(declare-fun b!4600504 () Bool)

(assert (=> b!4600504 (= e!2869614 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 lt!1759278))) (extractMap!1386 (t!358217 (t!358217 lt!1759278)))))))

(declare-fun b!4600505 () Bool)

(assert (=> b!4600505 (= e!2869614 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448637 c!788032) b!4600504))

(assert (= (and d!1448637 (not c!788032)) b!4600505))

(declare-fun m!5428005 () Bool)

(assert (=> d!1448637 m!5428005))

(declare-fun m!5428007 () Bool)

(assert (=> d!1448637 m!5428007))

(declare-fun m!5428009 () Bool)

(assert (=> b!4600504 m!5428009))

(assert (=> b!4600504 m!5428009))

(declare-fun m!5428011 () Bool)

(assert (=> b!4600504 m!5428011))

(assert (=> b!4599933 d!1448637))

(assert (=> b!4600058 d!1448395))

(declare-fun d!1448639 () Bool)

(assert (=> d!1448639 (= (invariantList!1128 (toList!4668 lt!1759476)) (noDuplicatedKeys!327 (toList!4668 lt!1759476)))))

(declare-fun bs!1012123 () Bool)

(assert (= bs!1012123 d!1448639))

(declare-fun m!5428013 () Bool)

(assert (=> bs!1012123 m!5428013))

(assert (=> d!1448383 d!1448639))

(declare-fun d!1448641 () Bool)

(declare-fun res!1924466 () Bool)

(declare-fun e!2869615 () Bool)

(assert (=> d!1448641 (=> res!1924466 e!2869615)))

(assert (=> d!1448641 (= res!1924466 ((_ is Nil!51099) (toList!4667 lt!1759284)))))

(assert (=> d!1448641 (= (forall!10612 (toList!4667 lt!1759284) lambda!186460) e!2869615)))

(declare-fun b!4600506 () Bool)

(declare-fun e!2869616 () Bool)

(assert (=> b!4600506 (= e!2869615 e!2869616)))

(declare-fun res!1924467 () Bool)

(assert (=> b!4600506 (=> (not res!1924467) (not e!2869616))))

(assert (=> b!4600506 (= res!1924467 (dynLambda!21402 lambda!186460 (h!57067 (toList!4667 lt!1759284))))))

(declare-fun b!4600507 () Bool)

(assert (=> b!4600507 (= e!2869616 (forall!10612 (t!358217 (toList!4667 lt!1759284)) lambda!186460))))

(assert (= (and d!1448641 (not res!1924466)) b!4600506))

(assert (= (and b!4600506 res!1924467) b!4600507))

(declare-fun b_lambda!169483 () Bool)

(assert (=> (not b_lambda!169483) (not b!4600506)))

(declare-fun m!5428015 () Bool)

(assert (=> b!4600506 m!5428015))

(declare-fun m!5428017 () Bool)

(assert (=> b!4600507 m!5428017))

(assert (=> d!1448383 d!1448641))

(assert (=> b!4600009 d!1448467))

(declare-fun d!1448643 () Bool)

(declare-fun e!2869618 () Bool)

(assert (=> d!1448643 e!2869618))

(declare-fun res!1924468 () Bool)

(assert (=> d!1448643 (=> res!1924468 e!2869618)))

(declare-fun lt!1759908 () Bool)

(assert (=> d!1448643 (= res!1924468 (not lt!1759908))))

(declare-fun lt!1759905 () Bool)

(assert (=> d!1448643 (= lt!1759908 lt!1759905)))

(declare-fun lt!1759907 () Unit!108343)

(declare-fun e!2869617 () Unit!108343)

(assert (=> d!1448643 (= lt!1759907 e!2869617)))

(declare-fun c!788033 () Bool)

(assert (=> d!1448643 (= c!788033 lt!1759905)))

(assert (=> d!1448643 (= lt!1759905 (containsKey!2173 (toList!4667 lt!1759284) (hash!3231 hashF!1107 key!3287)))))

(assert (=> d!1448643 (= (contains!14056 lt!1759284 (hash!3231 hashF!1107 key!3287)) lt!1759908)))

(declare-fun b!4600508 () Bool)

(declare-fun lt!1759906 () Unit!108343)

(assert (=> b!4600508 (= e!2869617 lt!1759906)))

(assert (=> b!4600508 (= lt!1759906 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lt!1759284) (hash!3231 hashF!1107 key!3287)))))

(assert (=> b!4600508 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) (hash!3231 hashF!1107 key!3287)))))

(declare-fun b!4600509 () Bool)

(declare-fun Unit!108468 () Unit!108343)

(assert (=> b!4600509 (= e!2869617 Unit!108468)))

(declare-fun b!4600510 () Bool)

(assert (=> b!4600510 (= e!2869618 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759284) (hash!3231 hashF!1107 key!3287))))))

(assert (= (and d!1448643 c!788033) b!4600508))

(assert (= (and d!1448643 (not c!788033)) b!4600509))

(assert (= (and d!1448643 (not res!1924468)) b!4600510))

(assert (=> d!1448643 m!5426759))

(declare-fun m!5428019 () Bool)

(assert (=> d!1448643 m!5428019))

(assert (=> b!4600508 m!5426759))

(declare-fun m!5428021 () Bool)

(assert (=> b!4600508 m!5428021))

(assert (=> b!4600508 m!5426759))

(declare-fun m!5428023 () Bool)

(assert (=> b!4600508 m!5428023))

(assert (=> b!4600508 m!5428023))

(declare-fun m!5428025 () Bool)

(assert (=> b!4600508 m!5428025))

(assert (=> b!4600510 m!5426759))

(assert (=> b!4600510 m!5428023))

(assert (=> b!4600510 m!5428023))

(assert (=> b!4600510 m!5428025))

(assert (=> d!1448273 d!1448643))

(assert (=> d!1448273 d!1448417))

(declare-fun d!1448645 () Bool)

(assert (=> d!1448645 (contains!14056 lt!1759284 (hash!3231 hashF!1107 key!3287))))

(assert (=> d!1448645 true))

(declare-fun _$27!1440 () Unit!108343)

(assert (=> d!1448645 (= (choose!30838 lt!1759284 key!3287 hashF!1107) _$27!1440)))

(declare-fun bs!1012132 () Bool)

(assert (= bs!1012132 d!1448645))

(assert (=> bs!1012132 m!5426759))

(assert (=> bs!1012132 m!5426759))

(assert (=> bs!1012132 m!5426779))

(assert (=> d!1448273 d!1448645))

(declare-fun d!1448647 () Bool)

(declare-fun res!1924469 () Bool)

(declare-fun e!2869619 () Bool)

(assert (=> d!1448647 (=> res!1924469 e!2869619)))

(assert (=> d!1448647 (= res!1924469 ((_ is Nil!51099) (toList!4667 lt!1759284)))))

(assert (=> d!1448647 (= (forall!10612 (toList!4667 lt!1759284) lambda!186423) e!2869619)))

(declare-fun b!4600511 () Bool)

(declare-fun e!2869620 () Bool)

(assert (=> b!4600511 (= e!2869619 e!2869620)))

(declare-fun res!1924470 () Bool)

(assert (=> b!4600511 (=> (not res!1924470) (not e!2869620))))

(assert (=> b!4600511 (= res!1924470 (dynLambda!21402 lambda!186423 (h!57067 (toList!4667 lt!1759284))))))

(declare-fun b!4600512 () Bool)

(assert (=> b!4600512 (= e!2869620 (forall!10612 (t!358217 (toList!4667 lt!1759284)) lambda!186423))))

(assert (= (and d!1448647 (not res!1924469)) b!4600511))

(assert (= (and b!4600511 res!1924470) b!4600512))

(declare-fun b_lambda!169485 () Bool)

(assert (=> (not b_lambda!169485) (not b!4600511)))

(declare-fun m!5428027 () Bool)

(assert (=> b!4600511 m!5428027))

(declare-fun m!5428029 () Bool)

(assert (=> b!4600512 m!5428029))

(assert (=> d!1448273 d!1448647))

(declare-fun b!4600516 () Bool)

(declare-fun e!2869622 () Option!11398)

(assert (=> b!4600516 (= e!2869622 None!11397)))

(declare-fun b!4600515 () Bool)

(assert (=> b!4600515 (= e!2869622 (getValueByKey!1318 (t!358217 (toList!4667 lt!1759392)) (_1!29172 lt!1759277)))))

(declare-fun b!4600513 () Bool)

(declare-fun e!2869621 () Option!11398)

(assert (=> b!4600513 (= e!2869621 (Some!11397 (_2!29172 (h!57067 (toList!4667 lt!1759392)))))))

(declare-fun d!1448649 () Bool)

(declare-fun c!788034 () Bool)

(assert (=> d!1448649 (= c!788034 (and ((_ is Cons!51099) (toList!4667 lt!1759392)) (= (_1!29172 (h!57067 (toList!4667 lt!1759392))) (_1!29172 lt!1759277))))))

(assert (=> d!1448649 (= (getValueByKey!1318 (toList!4667 lt!1759392) (_1!29172 lt!1759277)) e!2869621)))

(declare-fun b!4600514 () Bool)

(assert (=> b!4600514 (= e!2869621 e!2869622)))

(declare-fun c!788035 () Bool)

(assert (=> b!4600514 (= c!788035 (and ((_ is Cons!51099) (toList!4667 lt!1759392)) (not (= (_1!29172 (h!57067 (toList!4667 lt!1759392))) (_1!29172 lt!1759277)))))))

(assert (= (and d!1448649 c!788034) b!4600513))

(assert (= (and d!1448649 (not c!788034)) b!4600514))

(assert (= (and b!4600514 c!788035) b!4600515))

(assert (= (and b!4600514 (not c!788035)) b!4600516))

(declare-fun m!5428031 () Bool)

(assert (=> b!4600515 m!5428031))

(assert (=> b!4599918 d!1448649))

(declare-fun d!1448651 () Bool)

(declare-fun lt!1759909 () Bool)

(assert (=> d!1448651 (= lt!1759909 (select (content!8658 (toList!4667 lm!1477)) (tuple2!51757 hash!344 lt!1759288)))))

(declare-fun e!2869623 () Bool)

(assert (=> d!1448651 (= lt!1759909 e!2869623)))

(declare-fun res!1924471 () Bool)

(assert (=> d!1448651 (=> (not res!1924471) (not e!2869623))))

(assert (=> d!1448651 (= res!1924471 ((_ is Cons!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448651 (= (contains!14055 (toList!4667 lm!1477) (tuple2!51757 hash!344 lt!1759288)) lt!1759909)))

(declare-fun b!4600517 () Bool)

(declare-fun e!2869624 () Bool)

(assert (=> b!4600517 (= e!2869623 e!2869624)))

(declare-fun res!1924472 () Bool)

(assert (=> b!4600517 (=> res!1924472 e!2869624)))

(assert (=> b!4600517 (= res!1924472 (= (h!57067 (toList!4667 lm!1477)) (tuple2!51757 hash!344 lt!1759288)))))

(declare-fun b!4600518 () Bool)

(assert (=> b!4600518 (= e!2869624 (contains!14055 (t!358217 (toList!4667 lm!1477)) (tuple2!51757 hash!344 lt!1759288)))))

(assert (= (and d!1448651 res!1924471) b!4600517))

(assert (= (and b!4600517 (not res!1924472)) b!4600518))

(assert (=> d!1448651 m!5427207))

(declare-fun m!5428033 () Bool)

(assert (=> d!1448651 m!5428033))

(declare-fun m!5428035 () Bool)

(assert (=> b!4600518 m!5428035))

(assert (=> d!1448399 d!1448651))

(declare-fun d!1448653 () Bool)

(assert (=> d!1448653 (contains!14055 (toList!4667 lm!1477) (tuple2!51757 hash!344 lt!1759288))))

(assert (=> d!1448653 true))

(declare-fun _$14!1479 () Unit!108343)

(assert (=> d!1448653 (= (choose!30845 (toList!4667 lm!1477) hash!344 lt!1759288) _$14!1479)))

(declare-fun bs!1012134 () Bool)

(assert (= bs!1012134 d!1448653))

(assert (=> bs!1012134 m!5427217))

(assert (=> d!1448399 d!1448653))

(declare-fun d!1448655 () Bool)

(declare-fun res!1924477 () Bool)

(declare-fun e!2869630 () Bool)

(assert (=> d!1448655 (=> res!1924477 e!2869630)))

(assert (=> d!1448655 (= res!1924477 (or ((_ is Nil!51099) (toList!4667 lm!1477)) ((_ is Nil!51099) (t!358217 (toList!4667 lm!1477)))))))

(assert (=> d!1448655 (= (isStrictlySorted!544 (toList!4667 lm!1477)) e!2869630)))

(declare-fun b!4600525 () Bool)

(declare-fun e!2869631 () Bool)

(assert (=> b!4600525 (= e!2869630 e!2869631)))

(declare-fun res!1924478 () Bool)

(assert (=> b!4600525 (=> (not res!1924478) (not e!2869631))))

(assert (=> b!4600525 (= res!1924478 (bvslt (_1!29172 (h!57067 (toList!4667 lm!1477))) (_1!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))

(declare-fun b!4600526 () Bool)

(assert (=> b!4600526 (= e!2869631 (isStrictlySorted!544 (t!358217 (toList!4667 lm!1477))))))

(assert (= (and d!1448655 (not res!1924477)) b!4600525))

(assert (= (and b!4600525 res!1924478) b!4600526))

(declare-fun m!5428073 () Bool)

(assert (=> b!4600526 m!5428073))

(assert (=> d!1448399 d!1448655))

(declare-fun bs!1012216 () Bool)

(declare-fun b!4600599 () Bool)

(assert (= bs!1012216 (and b!4600599 b!4600134)))

(declare-fun lambda!186613 () Int)

(assert (=> bs!1012216 (= (= (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186613 lambda!186473))))

(declare-fun bs!1012218 () Bool)

(assert (= bs!1012218 (and b!4600599 b!4600175)))

(assert (=> bs!1012218 (= (= (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (toList!4668 lt!1759280)) (= lambda!186613 lambda!186475))))

(declare-fun bs!1012220 () Bool)

(assert (= bs!1012220 (and b!4600599 b!4600279)))

(assert (=> bs!1012220 (= (= (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186613 lambda!186545))))

(assert (=> b!4600599 true))

(declare-fun bs!1012222 () Bool)

(declare-fun b!4600594 () Bool)

(assert (= bs!1012222 (and b!4600594 b!4600134)))

(declare-fun lambda!186614 () Int)

(assert (=> bs!1012222 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186614 lambda!186473))))

(declare-fun bs!1012223 () Bool)

(assert (= bs!1012223 (and b!4600594 b!4600175)))

(assert (=> bs!1012223 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (toList!4668 lt!1759280)) (= lambda!186614 lambda!186475))))

(declare-fun bs!1012224 () Bool)

(assert (= bs!1012224 (and b!4600594 b!4600279)))

(assert (=> bs!1012224 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186614 lambda!186545))))

(declare-fun bs!1012225 () Bool)

(assert (= bs!1012225 (and b!4600594 b!4600599)))

(assert (=> bs!1012225 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186614 lambda!186613))))

(assert (=> b!4600594 true))

(declare-fun bs!1012226 () Bool)

(declare-fun b!4600597 () Bool)

(assert (= bs!1012226 (and b!4600597 b!4600134)))

(declare-fun lambda!186615 () Int)

(assert (=> bs!1012226 (= lambda!186615 lambda!186473)))

(declare-fun bs!1012227 () Bool)

(assert (= bs!1012227 (and b!4600597 b!4600175)))

(assert (=> bs!1012227 (= (= (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) (toList!4668 lt!1759280)) (= lambda!186615 lambda!186475))))

(declare-fun bs!1012228 () Bool)

(assert (= bs!1012228 (and b!4600597 b!4600279)))

(assert (=> bs!1012228 (= (= (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186615 lambda!186545))))

(declare-fun bs!1012229 () Bool)

(assert (= bs!1012229 (and b!4600597 b!4600599)))

(assert (=> bs!1012229 (= (= (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186615 lambda!186613))))

(declare-fun bs!1012230 () Bool)

(assert (= bs!1012230 (and b!4600597 b!4600594)))

(assert (=> bs!1012230 (= (= (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186615 lambda!186614))))

(assert (=> b!4600597 true))

(declare-fun bs!1012231 () Bool)

(declare-fun b!4600592 () Bool)

(assert (= bs!1012231 (and b!4600592 b!4600135)))

(declare-fun lambda!186616 () Int)

(assert (=> bs!1012231 (= lambda!186616 lambda!186474)))

(declare-fun bs!1012232 () Bool)

(assert (= bs!1012232 (and b!4600592 b!4600176)))

(assert (=> bs!1012232 (= lambda!186616 lambda!186476)))

(declare-fun bs!1012233 () Bool)

(assert (= bs!1012233 (and b!4600592 b!4600280)))

(assert (=> bs!1012233 (= lambda!186616 lambda!186547)))

(declare-fun e!2869672 () Bool)

(declare-fun lt!1759939 () List!51225)

(assert (=> b!4600592 (= e!2869672 (= (content!8654 lt!1759939) (content!8654 (map!11289 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))) lambda!186616))))))

(declare-fun b!4600593 () Bool)

(declare-fun e!2869674 () Unit!108343)

(declare-fun Unit!108470 () Unit!108343)

(assert (=> b!4600593 (= e!2869674 Unit!108470)))

(declare-fun e!2869675 () List!51225)

(assert (=> b!4600594 (= e!2869675 (Cons!51101 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))))

(declare-fun c!788051 () Bool)

(assert (=> b!4600594 (= c!788051 (containsKey!2174 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))))

(declare-fun lt!1759942 () Unit!108343)

(assert (=> b!4600594 (= lt!1759942 e!2869674)))

(declare-fun c!788050 () Bool)

(assert (=> b!4600594 (= c!788050 (contains!14059 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))))

(declare-fun lt!1759941 () Unit!108343)

(declare-fun e!2869673 () Unit!108343)

(assert (=> b!4600594 (= lt!1759941 e!2869673)))

(declare-fun lt!1759945 () List!51225)

(assert (=> b!4600594 (= lt!1759945 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))))

(declare-fun lt!1759943 () Unit!108343)

(declare-fun lemmaForallContainsAddHeadPreserves!234 (List!51222 List!51225 tuple2!51754) Unit!108343)

(assert (=> b!4600594 (= lt!1759943 (lemmaForallContainsAddHeadPreserves!234 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) lt!1759945 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))))

(assert (=> b!4600594 (forall!10615 lt!1759945 lambda!186614)))

(declare-fun lt!1759940 () Unit!108343)

(assert (=> b!4600594 (= lt!1759940 lt!1759943)))

(declare-fun b!4600595 () Bool)

(assert (=> b!4600595 false))

(declare-fun Unit!108471 () Unit!108343)

(assert (=> b!4600595 (= e!2869674 Unit!108471)))

(declare-fun b!4600596 () Bool)

(declare-fun res!1924519 () Bool)

(assert (=> b!4600596 (=> (not res!1924519) (not e!2869672))))

(assert (=> b!4600596 (= res!1924519 (= (length!482 lt!1759939) (length!483 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))))

(declare-fun res!1924518 () Bool)

(assert (=> b!4600597 (=> (not res!1924518) (not e!2869672))))

(assert (=> b!4600597 (= res!1924518 (forall!10615 lt!1759939 lambda!186615))))

(declare-fun b!4600598 () Bool)

(declare-fun Unit!108472 () Unit!108343)

(assert (=> b!4600598 (= e!2869673 Unit!108472)))

(assert (=> b!4600599 false))

(declare-fun lt!1759944 () Unit!108343)

(declare-fun forallContained!2867 (List!51225 Int K!12465) Unit!108343)

(assert (=> b!4600599 (= lt!1759944 (forallContained!2867 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) lambda!186613 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))))

(declare-fun Unit!108473 () Unit!108343)

(assert (=> b!4600599 (= e!2869673 Unit!108473)))

(declare-fun d!1448659 () Bool)

(assert (=> d!1448659 e!2869672))

(declare-fun res!1924520 () Bool)

(assert (=> d!1448659 (=> (not res!1924520) (not e!2869672))))

(assert (=> d!1448659 (= res!1924520 (noDuplicate!813 lt!1759939))))

(assert (=> d!1448659 (= lt!1759939 e!2869675)))

(declare-fun c!788052 () Bool)

(assert (=> d!1448659 (= c!788052 ((_ is Cons!51098) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))))

(assert (=> d!1448659 (invariantList!1128 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))))

(assert (=> d!1448659 (= (getKeysList!577 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) lt!1759939)))

(declare-fun b!4600600 () Bool)

(assert (=> b!4600600 (= e!2869675 Nil!51101)))

(assert (= (and d!1448659 c!788052) b!4600594))

(assert (= (and d!1448659 (not c!788052)) b!4600600))

(assert (= (and b!4600594 c!788051) b!4600595))

(assert (= (and b!4600594 (not c!788051)) b!4600593))

(assert (= (and b!4600594 c!788050) b!4600599))

(assert (= (and b!4600594 (not c!788050)) b!4600598))

(assert (= (and d!1448659 res!1924520) b!4600596))

(assert (= (and b!4600596 res!1924519) b!4600597))

(assert (= (and b!4600597 res!1924518) b!4600592))

(declare-fun m!5428219 () Bool)

(assert (=> b!4600597 m!5428219))

(declare-fun m!5428225 () Bool)

(assert (=> b!4600594 m!5428225))

(declare-fun m!5428227 () Bool)

(assert (=> b!4600594 m!5428227))

(declare-fun m!5428229 () Bool)

(assert (=> b!4600594 m!5428229))

(assert (=> b!4600594 m!5428229))

(declare-fun m!5428233 () Bool)

(assert (=> b!4600594 m!5428233))

(declare-fun m!5428235 () Bool)

(assert (=> b!4600594 m!5428235))

(declare-fun m!5428237 () Bool)

(assert (=> d!1448659 m!5428237))

(assert (=> d!1448659 m!5427327))

(declare-fun m!5428239 () Bool)

(assert (=> b!4600592 m!5428239))

(declare-fun m!5428241 () Bool)

(assert (=> b!4600592 m!5428241))

(assert (=> b!4600592 m!5428241))

(declare-fun m!5428243 () Bool)

(assert (=> b!4600592 m!5428243))

(assert (=> b!4600599 m!5428229))

(assert (=> b!4600599 m!5428229))

(declare-fun m!5428245 () Bool)

(assert (=> b!4600599 m!5428245))

(declare-fun m!5428247 () Bool)

(assert (=> b!4600596 m!5428247))

(assert (=> b!4600596 m!5427305))

(assert (=> b!4600084 d!1448659))

(declare-fun d!1448709 () Bool)

(declare-fun e!2869685 () Bool)

(assert (=> d!1448709 e!2869685))

(declare-fun res!1924524 () Bool)

(assert (=> d!1448709 (=> res!1924524 e!2869685)))

(declare-fun lt!1759955 () Bool)

(assert (=> d!1448709 (= res!1924524 (not lt!1759955))))

(declare-fun lt!1759952 () Bool)

(assert (=> d!1448709 (= lt!1759955 lt!1759952)))

(declare-fun lt!1759954 () Unit!108343)

(declare-fun e!2869684 () Unit!108343)

(assert (=> d!1448709 (= lt!1759954 e!2869684)))

(declare-fun c!788058 () Bool)

(assert (=> d!1448709 (= c!788058 lt!1759952)))

(assert (=> d!1448709 (= lt!1759952 (containsKey!2173 (toList!4667 lm!1477) (hash!3231 hashF!1107 key!3287)))))

(assert (=> d!1448709 (= (contains!14056 lm!1477 (hash!3231 hashF!1107 key!3287)) lt!1759955)))

(declare-fun b!4600616 () Bool)

(declare-fun lt!1759953 () Unit!108343)

(assert (=> b!4600616 (= e!2869684 lt!1759953)))

(assert (=> b!4600616 (= lt!1759953 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lm!1477) (hash!3231 hashF!1107 key!3287)))))

(assert (=> b!4600616 (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) (hash!3231 hashF!1107 key!3287)))))

(declare-fun b!4600617 () Bool)

(declare-fun Unit!108474 () Unit!108343)

(assert (=> b!4600617 (= e!2869684 Unit!108474)))

(declare-fun b!4600618 () Bool)

(assert (=> b!4600618 (= e!2869685 (isDefined!8666 (getValueByKey!1318 (toList!4667 lm!1477) (hash!3231 hashF!1107 key!3287))))))

(assert (= (and d!1448709 c!788058) b!4600616))

(assert (= (and d!1448709 (not c!788058)) b!4600617))

(assert (= (and d!1448709 (not res!1924524)) b!4600618))

(assert (=> d!1448709 m!5426759))

(declare-fun m!5428251 () Bool)

(assert (=> d!1448709 m!5428251))

(assert (=> b!4600616 m!5426759))

(declare-fun m!5428253 () Bool)

(assert (=> b!4600616 m!5428253))

(assert (=> b!4600616 m!5426759))

(declare-fun m!5428255 () Bool)

(assert (=> b!4600616 m!5428255))

(assert (=> b!4600616 m!5428255))

(declare-fun m!5428257 () Bool)

(assert (=> b!4600616 m!5428257))

(assert (=> b!4600618 m!5426759))

(assert (=> b!4600618 m!5428255))

(assert (=> b!4600618 m!5428255))

(assert (=> b!4600618 m!5428257))

(assert (=> d!1448391 d!1448709))

(assert (=> d!1448391 d!1448417))

(declare-fun d!1448713 () Bool)

(assert (=> d!1448713 (contains!14056 lm!1477 (hash!3231 hashF!1107 key!3287))))

(assert (=> d!1448713 true))

(declare-fun _$27!1442 () Unit!108343)

(assert (=> d!1448713 (= (choose!30838 lm!1477 key!3287 hashF!1107) _$27!1442)))

(declare-fun bs!1012234 () Bool)

(assert (= bs!1012234 d!1448713))

(assert (=> bs!1012234 m!5426759))

(assert (=> bs!1012234 m!5426759))

(assert (=> bs!1012234 m!5427193))

(assert (=> d!1448391 d!1448713))

(declare-fun d!1448715 () Bool)

(declare-fun res!1924525 () Bool)

(declare-fun e!2869686 () Bool)

(assert (=> d!1448715 (=> res!1924525 e!2869686)))

(assert (=> d!1448715 (= res!1924525 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448715 (= (forall!10612 (toList!4667 lm!1477) lambda!186464) e!2869686)))

(declare-fun b!4600619 () Bool)

(declare-fun e!2869687 () Bool)

(assert (=> b!4600619 (= e!2869686 e!2869687)))

(declare-fun res!1924526 () Bool)

(assert (=> b!4600619 (=> (not res!1924526) (not e!2869687))))

(assert (=> b!4600619 (= res!1924526 (dynLambda!21402 lambda!186464 (h!57067 (toList!4667 lm!1477))))))

(declare-fun b!4600620 () Bool)

(assert (=> b!4600620 (= e!2869687 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186464))))

(assert (= (and d!1448715 (not res!1924525)) b!4600619))

(assert (= (and b!4600619 res!1924526) b!4600620))

(declare-fun b_lambda!169495 () Bool)

(assert (=> (not b_lambda!169495) (not b!4600619)))

(declare-fun m!5428259 () Bool)

(assert (=> b!4600619 m!5428259))

(declare-fun m!5428261 () Bool)

(assert (=> b!4600620 m!5428261))

(assert (=> d!1448391 d!1448715))

(declare-fun d!1448717 () Bool)

(assert (=> d!1448717 (= (invariantList!1128 (toList!4668 lt!1759463)) (noDuplicatedKeys!327 (toList!4668 lt!1759463)))))

(declare-fun bs!1012235 () Bool)

(assert (= bs!1012235 d!1448717))

(declare-fun m!5428263 () Bool)

(assert (=> bs!1012235 m!5428263))

(assert (=> d!1448373 d!1448717))

(declare-fun d!1448719 () Bool)

(declare-fun res!1924527 () Bool)

(declare-fun e!2869688 () Bool)

(assert (=> d!1448719 (=> res!1924527 e!2869688)))

(assert (=> d!1448719 (= res!1924527 ((_ is Nil!51099) (Cons!51099 lt!1759277 Nil!51099)))))

(assert (=> d!1448719 (= (forall!10612 (Cons!51099 lt!1759277 Nil!51099) lambda!186455) e!2869688)))

(declare-fun b!4600621 () Bool)

(declare-fun e!2869689 () Bool)

(assert (=> b!4600621 (= e!2869688 e!2869689)))

(declare-fun res!1924528 () Bool)

(assert (=> b!4600621 (=> (not res!1924528) (not e!2869689))))

(assert (=> b!4600621 (= res!1924528 (dynLambda!21402 lambda!186455 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))

(declare-fun b!4600622 () Bool)

(assert (=> b!4600622 (= e!2869689 (forall!10612 (t!358217 (Cons!51099 lt!1759277 Nil!51099)) lambda!186455))))

(assert (= (and d!1448719 (not res!1924527)) b!4600621))

(assert (= (and b!4600621 res!1924528) b!4600622))

(declare-fun b_lambda!169497 () Bool)

(assert (=> (not b_lambda!169497) (not b!4600621)))

(declare-fun m!5428265 () Bool)

(assert (=> b!4600621 m!5428265))

(declare-fun m!5428267 () Bool)

(assert (=> b!4600622 m!5428267))

(assert (=> d!1448373 d!1448719))

(assert (=> b!4600082 d!1448439))

(declare-fun d!1448721 () Bool)

(declare-fun c!788061 () Bool)

(assert (=> d!1448721 (= c!788061 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(declare-fun e!2869694 () (InoxSet tuple2!51756))

(assert (=> d!1448721 (= (content!8658 (toList!4667 lm!1477)) e!2869694)))

(declare-fun b!4600631 () Bool)

(assert (=> b!4600631 (= e!2869694 ((as const (Array tuple2!51756 Bool)) false))))

(declare-fun b!4600632 () Bool)

(assert (=> b!4600632 (= e!2869694 ((_ map or) (store ((as const (Array tuple2!51756 Bool)) false) (h!57067 (toList!4667 lm!1477)) true) (content!8658 (t!358217 (toList!4667 lm!1477)))))))

(assert (= (and d!1448721 c!788061) b!4600631))

(assert (= (and d!1448721 (not c!788061)) b!4600632))

(declare-fun m!5428269 () Bool)

(assert (=> b!4600632 m!5428269))

(declare-fun m!5428271 () Bool)

(assert (=> b!4600632 m!5428271))

(assert (=> d!1448395 d!1448721))

(declare-fun d!1448723 () Bool)

(declare-fun res!1924533 () Bool)

(declare-fun e!2869695 () Bool)

(assert (=> d!1448723 (=> res!1924533 e!2869695)))

(assert (=> d!1448723 (= res!1924533 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448723 (= (forall!10612 (toList!4667 lm!1477) lambda!186468) e!2869695)))

(declare-fun b!4600633 () Bool)

(declare-fun e!2869696 () Bool)

(assert (=> b!4600633 (= e!2869695 e!2869696)))

(declare-fun res!1924534 () Bool)

(assert (=> b!4600633 (=> (not res!1924534) (not e!2869696))))

(assert (=> b!4600633 (= res!1924534 (dynLambda!21402 lambda!186468 (h!57067 (toList!4667 lm!1477))))))

(declare-fun b!4600634 () Bool)

(assert (=> b!4600634 (= e!2869696 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186468))))

(assert (= (and d!1448723 (not res!1924533)) b!4600633))

(assert (= (and b!4600633 res!1924534) b!4600634))

(declare-fun b_lambda!169499 () Bool)

(assert (=> (not b_lambda!169499) (not b!4600633)))

(declare-fun m!5428273 () Bool)

(assert (=> b!4600633 m!5428273))

(declare-fun m!5428275 () Bool)

(assert (=> b!4600634 m!5428275))

(assert (=> d!1448419 d!1448723))

(declare-fun d!1448725 () Bool)

(declare-fun res!1924535 () Bool)

(declare-fun e!2869697 () Bool)

(assert (=> d!1448725 (=> res!1924535 e!2869697)))

(assert (=> d!1448725 (= res!1924535 (and ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (= (_1!29171 (h!57066 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))))) (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))))

(assert (=> d!1448725 (= (containsKey!2170 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477)))) (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477)))))) e!2869697)))

(declare-fun b!4600635 () Bool)

(declare-fun e!2869698 () Bool)

(assert (=> b!4600635 (= e!2869697 e!2869698)))

(declare-fun res!1924536 () Bool)

(assert (=> b!4600635 (=> (not res!1924536) (not e!2869698))))

(assert (=> b!4600635 (= res!1924536 ((_ is Cons!51098) (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))))))

(declare-fun b!4600636 () Bool)

(assert (=> b!4600636 (= e!2869698 (containsKey!2170 (t!358216 (t!358216 (_2!29172 (h!57067 (toList!4667 lm!1477))))) (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))))

(assert (= (and d!1448725 (not res!1924535)) b!4600635))

(assert (= (and b!4600635 res!1924536) b!4600636))

(declare-fun m!5428277 () Bool)

(assert (=> b!4600636 m!5428277))

(assert (=> b!4600074 d!1448725))

(assert (=> b!4599817 d!1448625))

(assert (=> b!4599817 d!1448627))

(declare-fun d!1448727 () Bool)

(declare-fun res!1924543 () Bool)

(declare-fun e!2869704 () Bool)

(assert (=> d!1448727 (=> res!1924543 e!2869704)))

(assert (=> d!1448727 (= res!1924543 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (= (_1!29172 (h!57067 (toList!4667 lm!1477))) lt!1759275)))))

(assert (=> d!1448727 (= (containsKey!2173 (toList!4667 lm!1477) lt!1759275) e!2869704)))

(declare-fun b!4600643 () Bool)

(declare-fun e!2869705 () Bool)

(assert (=> b!4600643 (= e!2869704 e!2869705)))

(declare-fun res!1924544 () Bool)

(assert (=> b!4600643 (=> (not res!1924544) (not e!2869705))))

(assert (=> b!4600643 (= res!1924544 (and (or (not ((_ is Cons!51099) (toList!4667 lm!1477))) (bvsle (_1!29172 (h!57067 (toList!4667 lm!1477))) lt!1759275)) ((_ is Cons!51099) (toList!4667 lm!1477)) (bvslt (_1!29172 (h!57067 (toList!4667 lm!1477))) lt!1759275)))))

(declare-fun b!4600644 () Bool)

(assert (=> b!4600644 (= e!2869705 (containsKey!2173 (t!358217 (toList!4667 lm!1477)) lt!1759275))))

(assert (= (and d!1448727 (not res!1924543)) b!4600643))

(assert (= (and b!4600643 res!1924544) b!4600644))

(declare-fun m!5428287 () Bool)

(assert (=> b!4600644 m!5428287))

(assert (=> d!1448393 d!1448727))

(declare-fun bs!1012236 () Bool)

(declare-fun b!4600647 () Bool)

(assert (= bs!1012236 (and b!4600647 d!1448495)))

(declare-fun lambda!186617 () Int)

(assert (=> bs!1012236 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759626) (= lambda!186617 lambda!186533))))

(declare-fun bs!1012237 () Bool)

(assert (= bs!1012237 (and b!4600647 d!1448629)))

(assert (=> bs!1012237 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759863) (= lambda!186617 lambda!186590))))

(declare-fun bs!1012238 () Bool)

(assert (= bs!1012238 (and b!4600647 d!1448611)))

(assert (=> bs!1012238 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759838) (= lambda!186617 lambda!186584))))

(declare-fun bs!1012239 () Bool)

(assert (= bs!1012239 (and b!4600647 b!4600452)))

(assert (=> bs!1012239 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759823) (= lambda!186617 lambda!186575))))

(declare-fun bs!1012240 () Bool)

(assert (= bs!1012240 (and b!4600647 b!4600224)))

(assert (=> bs!1012240 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186617 lambda!186529))))

(declare-fun bs!1012241 () Bool)

(assert (= bs!1012241 (and b!4600647 b!4600472)))

(assert (=> bs!1012241 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186617 lambda!186582))))

(declare-fun bs!1012242 () Bool)

(assert (= bs!1012242 (and b!4600647 b!4600492)))

(assert (=> bs!1012242 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759877) (= lambda!186617 lambda!186588))))

(declare-fun bs!1012243 () Bool)

(assert (= bs!1012243 (and b!4600647 b!4600474)))

(assert (=> bs!1012243 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186617 lambda!186581))))

(assert (=> bs!1012239 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186617 lambda!186574))))

(declare-fun bs!1012244 () Bool)

(assert (= bs!1012244 (and b!4600647 b!4600494)))

(assert (=> bs!1012244 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186617 lambda!186586))))

(assert (=> bs!1012241 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759852) (= lambda!186617 lambda!186583))))

(declare-fun bs!1012245 () Bool)

(assert (= bs!1012245 (and b!4600647 b!4600454)))

(assert (=> bs!1012245 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186617 lambda!186573))))

(assert (=> bs!1012242 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186617 lambda!186587))))

(declare-fun bs!1012246 () Bool)

(assert (= bs!1012246 (and b!4600647 d!1448601)))

(assert (=> bs!1012246 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759809) (= lambda!186617 lambda!186577))))

(assert (=> bs!1012240 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759640) (= lambda!186617 lambda!186530))))

(declare-fun bs!1012247 () Bool)

(assert (= bs!1012247 (and b!4600647 b!4600226)))

(assert (=> bs!1012247 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186617 lambda!186526))))

(declare-fun bs!1012248 () Bool)

(assert (= bs!1012248 (and b!4600647 d!1448379)))

(assert (=> bs!1012248 (not (= lambda!186617 lambda!186458))))

(assert (=> b!4600647 true))

(declare-fun bs!1012249 () Bool)

(declare-fun b!4600645 () Bool)

(assert (= bs!1012249 (and b!4600645 d!1448495)))

(declare-fun lambda!186618 () Int)

(assert (=> bs!1012249 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759626) (= lambda!186618 lambda!186533))))

(declare-fun bs!1012250 () Bool)

(assert (= bs!1012250 (and b!4600645 d!1448629)))

(assert (=> bs!1012250 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759863) (= lambda!186618 lambda!186590))))

(declare-fun bs!1012251 () Bool)

(assert (= bs!1012251 (and b!4600645 d!1448611)))

(assert (=> bs!1012251 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759838) (= lambda!186618 lambda!186584))))

(declare-fun bs!1012252 () Bool)

(assert (= bs!1012252 (and b!4600645 b!4600452)))

(assert (=> bs!1012252 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759823) (= lambda!186618 lambda!186575))))

(declare-fun bs!1012253 () Bool)

(assert (= bs!1012253 (and b!4600645 b!4600224)))

(assert (=> bs!1012253 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186618 lambda!186529))))

(declare-fun bs!1012254 () Bool)

(assert (= bs!1012254 (and b!4600645 b!4600472)))

(assert (=> bs!1012254 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186618 lambda!186582))))

(declare-fun bs!1012255 () Bool)

(assert (= bs!1012255 (and b!4600645 b!4600647)))

(assert (=> bs!1012255 (= lambda!186618 lambda!186617)))

(declare-fun bs!1012256 () Bool)

(assert (= bs!1012256 (and b!4600645 b!4600492)))

(assert (=> bs!1012256 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759877) (= lambda!186618 lambda!186588))))

(declare-fun bs!1012257 () Bool)

(assert (= bs!1012257 (and b!4600645 b!4600474)))

(assert (=> bs!1012257 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186618 lambda!186581))))

(assert (=> bs!1012252 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186618 lambda!186574))))

(declare-fun bs!1012258 () Bool)

(assert (= bs!1012258 (and b!4600645 b!4600494)))

(assert (=> bs!1012258 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186618 lambda!186586))))

(assert (=> bs!1012254 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759852) (= lambda!186618 lambda!186583))))

(declare-fun bs!1012259 () Bool)

(assert (= bs!1012259 (and b!4600645 b!4600454)))

(assert (=> bs!1012259 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186618 lambda!186573))))

(assert (=> bs!1012256 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186618 lambda!186587))))

(declare-fun bs!1012260 () Bool)

(assert (= bs!1012260 (and b!4600645 d!1448601)))

(assert (=> bs!1012260 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759809) (= lambda!186618 lambda!186577))))

(assert (=> bs!1012253 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759640) (= lambda!186618 lambda!186530))))

(declare-fun bs!1012261 () Bool)

(assert (= bs!1012261 (and b!4600645 b!4600226)))

(assert (=> bs!1012261 (= (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186618 lambda!186526))))

(declare-fun bs!1012262 () Bool)

(assert (= bs!1012262 (and b!4600645 d!1448379)))

(assert (=> bs!1012262 (not (= lambda!186618 lambda!186458))))

(assert (=> b!4600645 true))

(declare-fun lambda!186619 () Int)

(declare-fun lt!1759975 () ListMap!3929)

(assert (=> bs!1012249 (= (= lt!1759975 lt!1759626) (= lambda!186619 lambda!186533))))

(assert (=> bs!1012250 (= (= lt!1759975 lt!1759863) (= lambda!186619 lambda!186590))))

(assert (=> bs!1012251 (= (= lt!1759975 lt!1759838) (= lambda!186619 lambda!186584))))

(assert (=> bs!1012252 (= (= lt!1759975 lt!1759823) (= lambda!186619 lambda!186575))))

(assert (=> bs!1012253 (= (= lt!1759975 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186619 lambda!186529))))

(assert (=> bs!1012254 (= (= lt!1759975 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186619 lambda!186582))))

(assert (=> bs!1012255 (= (= lt!1759975 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186619 lambda!186617))))

(assert (=> bs!1012256 (= (= lt!1759975 lt!1759877) (= lambda!186619 lambda!186588))))

(assert (=> bs!1012257 (= (= lt!1759975 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186619 lambda!186581))))

(assert (=> b!4600645 (= (= lt!1759975 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186619 lambda!186618))))

(assert (=> bs!1012252 (= (= lt!1759975 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186619 lambda!186574))))

(assert (=> bs!1012258 (= (= lt!1759975 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186619 lambda!186586))))

(assert (=> bs!1012254 (= (= lt!1759975 lt!1759852) (= lambda!186619 lambda!186583))))

(assert (=> bs!1012259 (= (= lt!1759975 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186619 lambda!186573))))

(assert (=> bs!1012256 (= (= lt!1759975 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186619 lambda!186587))))

(assert (=> bs!1012260 (= (= lt!1759975 lt!1759809) (= lambda!186619 lambda!186577))))

(assert (=> bs!1012253 (= (= lt!1759975 lt!1759640) (= lambda!186619 lambda!186530))))

(assert (=> bs!1012261 (= (= lt!1759975 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186619 lambda!186526))))

(assert (=> bs!1012262 (not (= lambda!186619 lambda!186458))))

(assert (=> b!4600645 true))

(declare-fun bs!1012263 () Bool)

(declare-fun d!1448731 () Bool)

(assert (= bs!1012263 (and d!1448731 d!1448495)))

(declare-fun lambda!186620 () Int)

(declare-fun lt!1759961 () ListMap!3929)

(assert (=> bs!1012263 (= (= lt!1759961 lt!1759626) (= lambda!186620 lambda!186533))))

(declare-fun bs!1012264 () Bool)

(assert (= bs!1012264 (and d!1448731 d!1448629)))

(assert (=> bs!1012264 (= (= lt!1759961 lt!1759863) (= lambda!186620 lambda!186590))))

(declare-fun bs!1012265 () Bool)

(assert (= bs!1012265 (and d!1448731 d!1448611)))

(assert (=> bs!1012265 (= (= lt!1759961 lt!1759838) (= lambda!186620 lambda!186584))))

(declare-fun bs!1012266 () Bool)

(assert (= bs!1012266 (and d!1448731 b!4600452)))

(assert (=> bs!1012266 (= (= lt!1759961 lt!1759823) (= lambda!186620 lambda!186575))))

(declare-fun bs!1012267 () Bool)

(assert (= bs!1012267 (and d!1448731 b!4600645)))

(assert (=> bs!1012267 (= (= lt!1759961 lt!1759975) (= lambda!186620 lambda!186619))))

(declare-fun bs!1012268 () Bool)

(assert (= bs!1012268 (and d!1448731 b!4600224)))

(assert (=> bs!1012268 (= (= lt!1759961 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186620 lambda!186529))))

(declare-fun bs!1012269 () Bool)

(assert (= bs!1012269 (and d!1448731 b!4600472)))

(assert (=> bs!1012269 (= (= lt!1759961 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186620 lambda!186582))))

(declare-fun bs!1012270 () Bool)

(assert (= bs!1012270 (and d!1448731 b!4600647)))

(assert (=> bs!1012270 (= (= lt!1759961 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186620 lambda!186617))))

(declare-fun bs!1012271 () Bool)

(assert (= bs!1012271 (and d!1448731 b!4600492)))

(assert (=> bs!1012271 (= (= lt!1759961 lt!1759877) (= lambda!186620 lambda!186588))))

(declare-fun bs!1012272 () Bool)

(assert (= bs!1012272 (and d!1448731 b!4600474)))

(assert (=> bs!1012272 (= (= lt!1759961 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186620 lambda!186581))))

(assert (=> bs!1012267 (= (= lt!1759961 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186620 lambda!186618))))

(assert (=> bs!1012266 (= (= lt!1759961 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186620 lambda!186574))))

(declare-fun bs!1012273 () Bool)

(assert (= bs!1012273 (and d!1448731 b!4600494)))

(assert (=> bs!1012273 (= (= lt!1759961 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186620 lambda!186586))))

(assert (=> bs!1012269 (= (= lt!1759961 lt!1759852) (= lambda!186620 lambda!186583))))

(declare-fun bs!1012274 () Bool)

(assert (= bs!1012274 (and d!1448731 b!4600454)))

(assert (=> bs!1012274 (= (= lt!1759961 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186620 lambda!186573))))

(assert (=> bs!1012271 (= (= lt!1759961 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186620 lambda!186587))))

(declare-fun bs!1012275 () Bool)

(assert (= bs!1012275 (and d!1448731 d!1448601)))

(assert (=> bs!1012275 (= (= lt!1759961 lt!1759809) (= lambda!186620 lambda!186577))))

(assert (=> bs!1012268 (= (= lt!1759961 lt!1759640) (= lambda!186620 lambda!186530))))

(declare-fun bs!1012276 () Bool)

(assert (= bs!1012276 (and d!1448731 b!4600226)))

(assert (=> bs!1012276 (= (= lt!1759961 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186620 lambda!186526))))

(declare-fun bs!1012277 () Bool)

(assert (= bs!1012277 (and d!1448731 d!1448379)))

(assert (=> bs!1012277 (not (= lambda!186620 lambda!186458))))

(assert (=> d!1448731 true))

(declare-fun e!2869707 () ListMap!3929)

(assert (=> b!4600645 (= e!2869707 lt!1759975)))

(declare-fun lt!1759968 () ListMap!3929)

(assert (=> b!4600645 (= lt!1759968 (+!1756 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))))

(assert (=> b!4600645 (= lt!1759975 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))) (+!1756 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))))))))

(declare-fun lt!1759973 () Unit!108343)

(declare-fun call!321048 () Unit!108343)

(assert (=> b!4600645 (= lt!1759973 call!321048)))

(declare-fun call!321047 () Bool)

(assert (=> b!4600645 call!321047))

(declare-fun lt!1759979 () Unit!108343)

(assert (=> b!4600645 (= lt!1759979 lt!1759973)))

(assert (=> b!4600645 (forall!10613 (toList!4668 lt!1759968) lambda!186619)))

(declare-fun lt!1759972 () Unit!108343)

(declare-fun Unit!108486 () Unit!108343)

(assert (=> b!4600645 (= lt!1759972 Unit!108486)))

(assert (=> b!4600645 (forall!10613 (t!358216 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))) lambda!186619)))

(declare-fun lt!1759964 () Unit!108343)

(declare-fun Unit!108487 () Unit!108343)

(assert (=> b!4600645 (= lt!1759964 Unit!108487)))

(declare-fun lt!1759969 () Unit!108343)

(declare-fun Unit!108488 () Unit!108343)

(assert (=> b!4600645 (= lt!1759969 Unit!108488)))

(declare-fun lt!1759962 () Unit!108343)

(assert (=> b!4600645 (= lt!1759962 (forallContained!2865 (toList!4668 lt!1759968) lambda!186619 (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))))

(assert (=> b!4600645 (contains!14057 lt!1759968 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))))

(declare-fun lt!1759971 () Unit!108343)

(declare-fun Unit!108489 () Unit!108343)

(assert (=> b!4600645 (= lt!1759971 Unit!108489)))

(assert (=> b!4600645 (contains!14057 lt!1759975 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))))

(declare-fun lt!1759965 () Unit!108343)

(declare-fun Unit!108490 () Unit!108343)

(assert (=> b!4600645 (= lt!1759965 Unit!108490)))

(assert (=> b!4600645 (forall!10613 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) lambda!186619)))

(declare-fun lt!1759974 () Unit!108343)

(declare-fun Unit!108491 () Unit!108343)

(assert (=> b!4600645 (= lt!1759974 Unit!108491)))

(declare-fun call!321049 () Bool)

(assert (=> b!4600645 call!321049))

(declare-fun lt!1759963 () Unit!108343)

(declare-fun Unit!108492 () Unit!108343)

(assert (=> b!4600645 (= lt!1759963 Unit!108492)))

(declare-fun lt!1759960 () Unit!108343)

(declare-fun Unit!108493 () Unit!108343)

(assert (=> b!4600645 (= lt!1759960 Unit!108493)))

(declare-fun lt!1759959 () Unit!108343)

(assert (=> b!4600645 (= lt!1759959 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759975 (_1!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))) (_2!29171 (h!57066 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))))))))

(assert (=> b!4600645 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) lambda!186619)))

(declare-fun lt!1759978 () Unit!108343)

(assert (=> b!4600645 (= lt!1759978 lt!1759959)))

(assert (=> b!4600645 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) lambda!186619)))

(declare-fun lt!1759967 () Unit!108343)

(declare-fun Unit!108494 () Unit!108343)

(assert (=> b!4600645 (= lt!1759967 Unit!108494)))

(declare-fun res!1924545 () Bool)

(assert (=> b!4600645 (= res!1924545 (forall!10613 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) lambda!186619))))

(declare-fun e!2869706 () Bool)

(assert (=> b!4600645 (=> (not res!1924545) (not e!2869706))))

(assert (=> b!4600645 e!2869706))

(declare-fun lt!1759970 () Unit!108343)

(declare-fun Unit!108495 () Unit!108343)

(assert (=> b!4600645 (= lt!1759970 Unit!108495)))

(declare-fun bm!321042 () Bool)

(declare-fun c!788062 () Bool)

(assert (=> bm!321042 (= call!321047 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (ite c!788062 lambda!186617 lambda!186618)))))

(declare-fun bm!321043 () Bool)

(assert (=> bm!321043 (= call!321048 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))))))

(assert (=> b!4600647 (= e!2869707 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))))))

(declare-fun lt!1759976 () Unit!108343)

(assert (=> b!4600647 (= lt!1759976 call!321048)))

(assert (=> b!4600647 call!321049))

(declare-fun lt!1759977 () Unit!108343)

(assert (=> b!4600647 (= lt!1759977 lt!1759976)))

(assert (=> b!4600647 call!321047))

(declare-fun lt!1759966 () Unit!108343)

(declare-fun Unit!108496 () Unit!108343)

(assert (=> b!4600647 (= lt!1759966 Unit!108496)))

(declare-fun b!4600648 () Bool)

(declare-fun res!1924546 () Bool)

(declare-fun e!2869708 () Bool)

(assert (=> b!4600648 (=> (not res!1924546) (not e!2869708))))

(assert (=> b!4600648 (= res!1924546 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) lambda!186620))))

(declare-fun b!4600649 () Bool)

(assert (=> b!4600649 (= e!2869708 (invariantList!1128 (toList!4668 lt!1759961)))))

(declare-fun bm!321044 () Bool)

(assert (=> bm!321044 (= call!321049 (forall!10613 (ite c!788062 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (toList!4668 lt!1759968)) (ite c!788062 lambda!186617 lambda!186619)))))

(assert (=> d!1448731 e!2869708))

(declare-fun res!1924547 () Bool)

(assert (=> d!1448731 (=> (not res!1924547) (not e!2869708))))

(assert (=> d!1448731 (= res!1924547 (forall!10613 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) lambda!186620))))

(assert (=> d!1448731 (= lt!1759961 e!2869707)))

(assert (=> d!1448731 (= c!788062 ((_ is Nil!51098) (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))))))

(assert (=> d!1448731 (noDuplicateKeys!1326 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))))))

(assert (=> d!1448731 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) lt!1759961)))

(declare-fun b!4600646 () Bool)

(assert (=> b!4600646 (= e!2869706 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) lambda!186619))))

(assert (= (and d!1448731 c!788062) b!4600647))

(assert (= (and d!1448731 (not c!788062)) b!4600645))

(assert (= (and b!4600645 res!1924545) b!4600646))

(assert (= (or b!4600647 b!4600645) bm!321044))

(assert (= (or b!4600647 b!4600645) bm!321042))

(assert (= (or b!4600647 b!4600645) bm!321043))

(assert (= (and d!1448731 res!1924547) b!4600648))

(assert (= (and b!4600648 res!1924546) b!4600649))

(declare-fun m!5428289 () Bool)

(assert (=> bm!321044 m!5428289))

(declare-fun m!5428291 () Bool)

(assert (=> b!4600645 m!5428291))

(declare-fun m!5428293 () Bool)

(assert (=> b!4600645 m!5428293))

(assert (=> b!4600645 m!5427129))

(assert (=> b!4600645 m!5428291))

(declare-fun m!5428295 () Bool)

(assert (=> b!4600645 m!5428295))

(declare-fun m!5428297 () Bool)

(assert (=> b!4600645 m!5428297))

(declare-fun m!5428299 () Bool)

(assert (=> b!4600645 m!5428299))

(assert (=> b!4600645 m!5428295))

(declare-fun m!5428301 () Bool)

(assert (=> b!4600645 m!5428301))

(declare-fun m!5428303 () Bool)

(assert (=> b!4600645 m!5428303))

(declare-fun m!5428305 () Bool)

(assert (=> b!4600645 m!5428305))

(declare-fun m!5428307 () Bool)

(assert (=> b!4600645 m!5428307))

(assert (=> b!4600645 m!5428299))

(assert (=> b!4600645 m!5427129))

(declare-fun m!5428309 () Bool)

(assert (=> b!4600645 m!5428309))

(declare-fun m!5428311 () Bool)

(assert (=> b!4600648 m!5428311))

(assert (=> b!4600646 m!5428299))

(declare-fun m!5428313 () Bool)

(assert (=> d!1448731 m!5428313))

(declare-fun m!5428315 () Bool)

(assert (=> d!1448731 m!5428315))

(assert (=> bm!321043 m!5427129))

(declare-fun m!5428317 () Bool)

(assert (=> bm!321043 m!5428317))

(declare-fun m!5428319 () Bool)

(assert (=> b!4600649 m!5428319))

(declare-fun m!5428321 () Bool)

(assert (=> bm!321042 m!5428321))

(assert (=> b!4600007 d!1448731))

(declare-fun bs!1012278 () Bool)

(declare-fun d!1448733 () Bool)

(assert (= bs!1012278 (and d!1448733 d!1448329)))

(declare-fun lambda!186621 () Int)

(assert (=> bs!1012278 (= lambda!186621 lambda!186439)))

(declare-fun bs!1012279 () Bool)

(assert (= bs!1012279 (and d!1448733 d!1448497)))

(assert (=> bs!1012279 (= lambda!186621 lambda!186538)))

(declare-fun bs!1012280 () Bool)

(assert (= bs!1012280 (and d!1448733 d!1448391)))

(assert (=> bs!1012280 (= lambda!186621 lambda!186464)))

(declare-fun bs!1012281 () Bool)

(assert (= bs!1012281 (and d!1448733 d!1448419)))

(assert (=> bs!1012281 (not (= lambda!186621 lambda!186468))))

(declare-fun bs!1012282 () Bool)

(assert (= bs!1012282 (and d!1448733 d!1448415)))

(assert (=> bs!1012282 (= lambda!186621 lambda!186465)))

(declare-fun bs!1012283 () Bool)

(assert (= bs!1012283 (and d!1448733 d!1448595)))

(assert (=> bs!1012283 (= lambda!186621 lambda!186569)))

(declare-fun bs!1012284 () Bool)

(assert (= bs!1012284 (and d!1448733 d!1448283)))

(assert (=> bs!1012284 (= lambda!186621 lambda!186430)))

(declare-fun bs!1012285 () Bool)

(assert (= bs!1012285 (and d!1448733 d!1448389)))

(assert (=> bs!1012285 (= lambda!186621 lambda!186463)))

(declare-fun bs!1012286 () Bool)

(assert (= bs!1012286 (and d!1448733 d!1448481)))

(assert (=> bs!1012286 (= lambda!186621 lambda!186477)))

(declare-fun bs!1012287 () Bool)

(assert (= bs!1012287 (and d!1448733 d!1448273)))

(assert (=> bs!1012287 (= lambda!186621 lambda!186423)))

(declare-fun bs!1012288 () Bool)

(assert (= bs!1012288 (and d!1448733 d!1448381)))

(assert (=> bs!1012288 (= lambda!186621 lambda!186459)))

(declare-fun bs!1012289 () Bool)

(assert (= bs!1012289 (and d!1448733 d!1448383)))

(assert (=> bs!1012289 (= lambda!186621 lambda!186460)))

(declare-fun bs!1012290 () Bool)

(assert (= bs!1012290 (and d!1448733 d!1448373)))

(assert (=> bs!1012290 (= lambda!186621 lambda!186455)))

(declare-fun bs!1012291 () Bool)

(assert (= bs!1012291 (and d!1448733 d!1448615)))

(assert (=> bs!1012291 (= lambda!186621 lambda!186585)))

(declare-fun bs!1012292 () Bool)

(assert (= bs!1012292 (and d!1448733 start!459100)))

(assert (=> bs!1012292 (= lambda!186621 lambda!186420)))

(declare-fun bs!1012293 () Bool)

(assert (= bs!1012293 (and d!1448733 d!1448351)))

(assert (=> bs!1012293 (= lambda!186621 lambda!186451)))

(declare-fun bs!1012294 () Bool)

(assert (= bs!1012294 (and d!1448733 d!1448637)))

(assert (=> bs!1012294 (= lambda!186621 lambda!186592)))

(declare-fun lt!1759982 () ListMap!3929)

(assert (=> d!1448733 (invariantList!1128 (toList!4668 lt!1759982))))

(declare-fun e!2869719 () ListMap!3929)

(assert (=> d!1448733 (= lt!1759982 e!2869719)))

(declare-fun c!788071 () Bool)

(assert (=> d!1448733 (= c!788071 ((_ is Cons!51099) (t!358217 (Cons!51099 lt!1759277 Nil!51099))))))

(assert (=> d!1448733 (forall!10612 (t!358217 (Cons!51099 lt!1759277 Nil!51099)) lambda!186621)))

(assert (=> d!1448733 (= (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099))) lt!1759982)))

(declare-fun b!4600670 () Bool)

(assert (=> b!4600670 (= e!2869719 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (extractMap!1386 (t!358217 (t!358217 (Cons!51099 lt!1759277 Nil!51099))))))))

(declare-fun b!4600671 () Bool)

(assert (=> b!4600671 (= e!2869719 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448733 c!788071) b!4600670))

(assert (= (and d!1448733 (not c!788071)) b!4600671))

(declare-fun m!5428323 () Bool)

(assert (=> d!1448733 m!5428323))

(declare-fun m!5428325 () Bool)

(assert (=> d!1448733 m!5428325))

(declare-fun m!5428327 () Bool)

(assert (=> b!4600670 m!5428327))

(assert (=> b!4600670 m!5428327))

(declare-fun m!5428329 () Bool)

(assert (=> b!4600670 m!5428329))

(assert (=> b!4600007 d!1448733))

(assert (=> b!4600086 d!1448437))

(assert (=> b!4600086 d!1448439))

(declare-fun bs!1012295 () Bool)

(declare-fun b!4600689 () Bool)

(assert (= bs!1012295 (and b!4600689 b!4600134)))

(declare-fun lambda!186622 () Int)

(assert (=> bs!1012295 (= (= (t!358216 (toList!4668 lt!1759280)) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186622 lambda!186473))))

(declare-fun bs!1012296 () Bool)

(assert (= bs!1012296 (and b!4600689 b!4600175)))

(assert (=> bs!1012296 (= (= (t!358216 (toList!4668 lt!1759280)) (toList!4668 lt!1759280)) (= lambda!186622 lambda!186475))))

(declare-fun bs!1012297 () Bool)

(assert (= bs!1012297 (and b!4600689 b!4600279)))

(assert (=> bs!1012297 (= (= (t!358216 (toList!4668 lt!1759280)) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186622 lambda!186545))))

(declare-fun bs!1012298 () Bool)

(assert (= bs!1012298 (and b!4600689 b!4600599)))

(assert (=> bs!1012298 (= (= (t!358216 (toList!4668 lt!1759280)) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186622 lambda!186613))))

(declare-fun bs!1012299 () Bool)

(assert (= bs!1012299 (and b!4600689 b!4600597)))

(assert (=> bs!1012299 (= (= (t!358216 (toList!4668 lt!1759280)) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186622 lambda!186615))))

(declare-fun bs!1012300 () Bool)

(assert (= bs!1012300 (and b!4600689 b!4600594)))

(assert (=> bs!1012300 (= (= (t!358216 (toList!4668 lt!1759280)) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186622 lambda!186614))))

(assert (=> b!4600689 true))

(declare-fun bs!1012301 () Bool)

(declare-fun b!4600684 () Bool)

(assert (= bs!1012301 (and b!4600684 b!4600134)))

(declare-fun lambda!186623 () Int)

(assert (=> bs!1012301 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186623 lambda!186473))))

(declare-fun bs!1012303 () Bool)

(assert (= bs!1012303 (and b!4600684 b!4600175)))

(assert (=> bs!1012303 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (toList!4668 lt!1759280)) (= lambda!186623 lambda!186475))))

(declare-fun bs!1012304 () Bool)

(assert (= bs!1012304 (and b!4600684 b!4600279)))

(assert (=> bs!1012304 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186623 lambda!186545))))

(declare-fun bs!1012305 () Bool)

(assert (= bs!1012305 (and b!4600684 b!4600599)))

(assert (=> bs!1012305 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186623 lambda!186613))))

(declare-fun bs!1012306 () Bool)

(assert (= bs!1012306 (and b!4600684 b!4600689)))

(assert (=> bs!1012306 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (t!358216 (toList!4668 lt!1759280))) (= lambda!186623 lambda!186622))))

(declare-fun bs!1012307 () Bool)

(assert (= bs!1012307 (and b!4600684 b!4600597)))

(assert (=> bs!1012307 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186623 lambda!186615))))

(declare-fun bs!1012308 () Bool)

(assert (= bs!1012308 (and b!4600684 b!4600594)))

(assert (=> bs!1012308 (= (= (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280))) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186623 lambda!186614))))

(assert (=> b!4600684 true))

(declare-fun bs!1012309 () Bool)

(declare-fun b!4600687 () Bool)

(assert (= bs!1012309 (and b!4600687 b!4600134)))

(declare-fun lambda!186624 () Int)

(assert (=> bs!1012309 (= (= (toList!4668 lt!1759280) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186624 lambda!186473))))

(declare-fun bs!1012310 () Bool)

(assert (= bs!1012310 (and b!4600687 b!4600175)))

(assert (=> bs!1012310 (= lambda!186624 lambda!186475)))

(declare-fun bs!1012311 () Bool)

(assert (= bs!1012311 (and b!4600687 b!4600279)))

(assert (=> bs!1012311 (= (= (toList!4668 lt!1759280) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186624 lambda!186545))))

(declare-fun bs!1012312 () Bool)

(assert (= bs!1012312 (and b!4600687 b!4600684)))

(assert (=> bs!1012312 (= (= (toList!4668 lt!1759280) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186624 lambda!186623))))

(declare-fun bs!1012313 () Bool)

(assert (= bs!1012313 (and b!4600687 b!4600599)))

(assert (=> bs!1012313 (= (= (toList!4668 lt!1759280) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186624 lambda!186613))))

(declare-fun bs!1012314 () Bool)

(assert (= bs!1012314 (and b!4600687 b!4600689)))

(assert (=> bs!1012314 (= (= (toList!4668 lt!1759280) (t!358216 (toList!4668 lt!1759280))) (= lambda!186624 lambda!186622))))

(declare-fun bs!1012315 () Bool)

(assert (= bs!1012315 (and b!4600687 b!4600597)))

(assert (=> bs!1012315 (= (= (toList!4668 lt!1759280) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186624 lambda!186615))))

(declare-fun bs!1012316 () Bool)

(assert (= bs!1012316 (and b!4600687 b!4600594)))

(assert (=> bs!1012316 (= (= (toList!4668 lt!1759280) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186624 lambda!186614))))

(assert (=> b!4600687 true))

(declare-fun bs!1012317 () Bool)

(declare-fun b!4600682 () Bool)

(assert (= bs!1012317 (and b!4600682 b!4600135)))

(declare-fun lambda!186625 () Int)

(assert (=> bs!1012317 (= lambda!186625 lambda!186474)))

(declare-fun bs!1012318 () Bool)

(assert (= bs!1012318 (and b!4600682 b!4600176)))

(assert (=> bs!1012318 (= lambda!186625 lambda!186476)))

(declare-fun bs!1012319 () Bool)

(assert (= bs!1012319 (and b!4600682 b!4600280)))

(assert (=> bs!1012319 (= lambda!186625 lambda!186547)))

(declare-fun bs!1012320 () Bool)

(assert (= bs!1012320 (and b!4600682 b!4600592)))

(assert (=> bs!1012320 (= lambda!186625 lambda!186616)))

(declare-fun e!2869725 () Bool)

(declare-fun lt!1759984 () List!51225)

(assert (=> b!4600682 (= e!2869725 (= (content!8654 lt!1759984) (content!8654 (map!11289 (toList!4668 lt!1759280) lambda!186625))))))

(declare-fun b!4600683 () Bool)

(declare-fun e!2869727 () Unit!108343)

(declare-fun Unit!108508 () Unit!108343)

(assert (=> b!4600683 (= e!2869727 Unit!108508)))

(declare-fun e!2869728 () List!51225)

(assert (=> b!4600684 (= e!2869728 (Cons!51101 (_1!29171 (h!57066 (toList!4668 lt!1759280))) (getKeysList!577 (t!358216 (toList!4668 lt!1759280)))))))

(declare-fun c!788077 () Bool)

(assert (=> b!4600684 (= c!788077 (containsKey!2174 (t!358216 (toList!4668 lt!1759280)) (_1!29171 (h!57066 (toList!4668 lt!1759280)))))))

(declare-fun lt!1759987 () Unit!108343)

(assert (=> b!4600684 (= lt!1759987 e!2869727)))

(declare-fun c!788076 () Bool)

(assert (=> b!4600684 (= c!788076 (contains!14059 (getKeysList!577 (t!358216 (toList!4668 lt!1759280))) (_1!29171 (h!57066 (toList!4668 lt!1759280)))))))

(declare-fun lt!1759986 () Unit!108343)

(declare-fun e!2869726 () Unit!108343)

(assert (=> b!4600684 (= lt!1759986 e!2869726)))

(declare-fun lt!1759990 () List!51225)

(assert (=> b!4600684 (= lt!1759990 (getKeysList!577 (t!358216 (toList!4668 lt!1759280))))))

(declare-fun lt!1759988 () Unit!108343)

(assert (=> b!4600684 (= lt!1759988 (lemmaForallContainsAddHeadPreserves!234 (t!358216 (toList!4668 lt!1759280)) lt!1759990 (h!57066 (toList!4668 lt!1759280))))))

(assert (=> b!4600684 (forall!10615 lt!1759990 lambda!186623)))

(declare-fun lt!1759985 () Unit!108343)

(assert (=> b!4600684 (= lt!1759985 lt!1759988)))

(declare-fun b!4600685 () Bool)

(assert (=> b!4600685 false))

(declare-fun Unit!108509 () Unit!108343)

(assert (=> b!4600685 (= e!2869727 Unit!108509)))

(declare-fun b!4600686 () Bool)

(declare-fun res!1924555 () Bool)

(assert (=> b!4600686 (=> (not res!1924555) (not e!2869725))))

(assert (=> b!4600686 (= res!1924555 (= (length!482 lt!1759984) (length!483 (toList!4668 lt!1759280))))))

(declare-fun res!1924554 () Bool)

(assert (=> b!4600687 (=> (not res!1924554) (not e!2869725))))

(assert (=> b!4600687 (= res!1924554 (forall!10615 lt!1759984 lambda!186624))))

(declare-fun b!4600688 () Bool)

(declare-fun Unit!108510 () Unit!108343)

(assert (=> b!4600688 (= e!2869726 Unit!108510)))

(assert (=> b!4600689 false))

(declare-fun lt!1759989 () Unit!108343)

(assert (=> b!4600689 (= lt!1759989 (forallContained!2867 (getKeysList!577 (t!358216 (toList!4668 lt!1759280))) lambda!186622 (_1!29171 (h!57066 (toList!4668 lt!1759280)))))))

(declare-fun Unit!108511 () Unit!108343)

(assert (=> b!4600689 (= e!2869726 Unit!108511)))

(declare-fun d!1448735 () Bool)

(assert (=> d!1448735 e!2869725))

(declare-fun res!1924556 () Bool)

(assert (=> d!1448735 (=> (not res!1924556) (not e!2869725))))

(assert (=> d!1448735 (= res!1924556 (noDuplicate!813 lt!1759984))))

(assert (=> d!1448735 (= lt!1759984 e!2869728)))

(declare-fun c!788078 () Bool)

(assert (=> d!1448735 (= c!788078 ((_ is Cons!51098) (toList!4668 lt!1759280)))))

(assert (=> d!1448735 (invariantList!1128 (toList!4668 lt!1759280))))

(assert (=> d!1448735 (= (getKeysList!577 (toList!4668 lt!1759280)) lt!1759984)))

(declare-fun b!4600690 () Bool)

(assert (=> b!4600690 (= e!2869728 Nil!51101)))

(assert (= (and d!1448735 c!788078) b!4600684))

(assert (= (and d!1448735 (not c!788078)) b!4600690))

(assert (= (and b!4600684 c!788077) b!4600685))

(assert (= (and b!4600684 (not c!788077)) b!4600683))

(assert (= (and b!4600684 c!788076) b!4600689))

(assert (= (and b!4600684 (not c!788076)) b!4600688))

(assert (= (and d!1448735 res!1924556) b!4600686))

(assert (= (and b!4600686 res!1924555) b!4600687))

(assert (= (and b!4600687 res!1924554) b!4600682))

(declare-fun m!5428343 () Bool)

(assert (=> b!4600687 m!5428343))

(declare-fun m!5428345 () Bool)

(assert (=> b!4600684 m!5428345))

(declare-fun m!5428347 () Bool)

(assert (=> b!4600684 m!5428347))

(declare-fun m!5428349 () Bool)

(assert (=> b!4600684 m!5428349))

(assert (=> b!4600684 m!5428349))

(declare-fun m!5428351 () Bool)

(assert (=> b!4600684 m!5428351))

(declare-fun m!5428353 () Bool)

(assert (=> b!4600684 m!5428353))

(declare-fun m!5428355 () Bool)

(assert (=> d!1448735 m!5428355))

(assert (=> d!1448735 m!5427377))

(declare-fun m!5428357 () Bool)

(assert (=> b!4600682 m!5428357))

(declare-fun m!5428359 () Bool)

(assert (=> b!4600682 m!5428359))

(assert (=> b!4600682 m!5428359))

(declare-fun m!5428361 () Bool)

(assert (=> b!4600682 m!5428361))

(assert (=> b!4600689 m!5428349))

(assert (=> b!4600689 m!5428349))

(declare-fun m!5428363 () Bool)

(assert (=> b!4600689 m!5428363))

(declare-fun m!5428365 () Bool)

(assert (=> b!4600686 m!5428365))

(assert (=> b!4600686 m!5427359))

(assert (=> b!4600011 d!1448735))

(declare-fun d!1448741 () Bool)

(declare-fun c!788089 () Bool)

(assert (=> d!1448741 (= c!788089 ((_ is Nil!51101) (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(declare-fun e!2869739 () (InoxSet K!12465))

(assert (=> d!1448741 (= (content!8654 (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) e!2869739)))

(declare-fun b!4600711 () Bool)

(assert (=> b!4600711 (= e!2869739 ((as const (Array K!12465 Bool)) false))))

(declare-fun b!4600712 () Bool)

(assert (=> b!4600712 (= e!2869739 ((_ map or) (store ((as const (Array K!12465 Bool)) false) (h!57071 (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) true) (content!8654 (t!358219 (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))))

(assert (= (and d!1448741 c!788089) b!4600711))

(assert (= (and d!1448741 (not c!788089)) b!4600712))

(declare-fun m!5428373 () Bool)

(assert (=> b!4600712 m!5428373))

(declare-fun m!5428375 () Bool)

(assert (=> b!4600712 m!5428375))

(assert (=> b!4599880 d!1448741))

(declare-fun bs!1012322 () Bool)

(declare-fun b!4600714 () Bool)

(assert (= bs!1012322 (and b!4600714 b!4600134)))

(declare-fun lambda!186626 () Int)

(assert (=> bs!1012322 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186626 lambda!186473))))

(declare-fun bs!1012323 () Bool)

(assert (= bs!1012323 (and b!4600714 b!4600175)))

(assert (=> bs!1012323 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (toList!4668 lt!1759280)) (= lambda!186626 lambda!186475))))

(declare-fun bs!1012324 () Bool)

(assert (= bs!1012324 (and b!4600714 b!4600279)))

(assert (=> bs!1012324 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186626 lambda!186545))))

(declare-fun bs!1012326 () Bool)

(assert (= bs!1012326 (and b!4600714 b!4600684)))

(assert (=> bs!1012326 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186626 lambda!186623))))

(declare-fun bs!1012327 () Bool)

(assert (= bs!1012327 (and b!4600714 b!4600689)))

(assert (=> bs!1012327 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (t!358216 (toList!4668 lt!1759280))) (= lambda!186626 lambda!186622))))

(declare-fun bs!1012328 () Bool)

(assert (= bs!1012328 (and b!4600714 b!4600597)))

(assert (=> bs!1012328 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186626 lambda!186615))))

(declare-fun bs!1012329 () Bool)

(assert (= bs!1012329 (and b!4600714 b!4600594)))

(assert (=> bs!1012329 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186626 lambda!186614))))

(declare-fun bs!1012330 () Bool)

(assert (= bs!1012330 (and b!4600714 b!4600687)))

(assert (=> bs!1012330 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (toList!4668 lt!1759280)) (= lambda!186626 lambda!186624))))

(declare-fun bs!1012331 () Bool)

(assert (= bs!1012331 (and b!4600714 b!4600599)))

(assert (=> bs!1012331 (= (= (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186626 lambda!186613))))

(assert (=> b!4600714 true))

(declare-fun bs!1012332 () Bool)

(declare-fun b!4600715 () Bool)

(assert (= bs!1012332 (and b!4600715 b!4600280)))

(declare-fun lambda!186627 () Int)

(assert (=> bs!1012332 (= lambda!186627 lambda!186547)))

(declare-fun bs!1012333 () Bool)

(assert (= bs!1012333 (and b!4600715 b!4600682)))

(assert (=> bs!1012333 (= lambda!186627 lambda!186625)))

(declare-fun bs!1012334 () Bool)

(assert (= bs!1012334 (and b!4600715 b!4600135)))

(assert (=> bs!1012334 (= lambda!186627 lambda!186474)))

(declare-fun bs!1012335 () Bool)

(assert (= bs!1012335 (and b!4600715 b!4600592)))

(assert (=> bs!1012335 (= lambda!186627 lambda!186616)))

(declare-fun bs!1012336 () Bool)

(assert (= bs!1012336 (and b!4600715 b!4600176)))

(assert (=> bs!1012336 (= lambda!186627 lambda!186476)))

(declare-fun d!1448749 () Bool)

(declare-fun e!2869740 () Bool)

(assert (=> d!1448749 e!2869740))

(declare-fun res!1924557 () Bool)

(assert (=> d!1448749 (=> (not res!1924557) (not e!2869740))))

(declare-fun lt!1759993 () List!51225)

(assert (=> d!1448749 (= res!1924557 (noDuplicate!813 lt!1759993))))

(assert (=> d!1448749 (= lt!1759993 (getKeysList!577 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(assert (=> d!1448749 (= (keys!17896 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lt!1759993)))

(declare-fun b!4600713 () Bool)

(declare-fun res!1924558 () Bool)

(assert (=> b!4600713 (=> (not res!1924558) (not e!2869740))))

(assert (=> b!4600713 (= res!1924558 (= (length!482 lt!1759993) (length!483 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))))

(declare-fun res!1924559 () Bool)

(assert (=> b!4600714 (=> (not res!1924559) (not e!2869740))))

(assert (=> b!4600714 (= res!1924559 (forall!10615 lt!1759993 lambda!186626))))

(assert (=> b!4600715 (= e!2869740 (= (content!8654 lt!1759993) (content!8654 (map!11289 (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) lambda!186627))))))

(assert (= (and d!1448749 res!1924557) b!4600713))

(assert (= (and b!4600713 res!1924558) b!4600714))

(assert (= (and b!4600714 res!1924559) b!4600715))

(declare-fun m!5428379 () Bool)

(assert (=> d!1448749 m!5428379))

(assert (=> d!1448749 m!5427739))

(declare-fun m!5428381 () Bool)

(assert (=> b!4600713 m!5428381))

(declare-fun m!5428383 () Bool)

(assert (=> b!4600713 m!5428383))

(declare-fun m!5428385 () Bool)

(assert (=> b!4600714 m!5428385))

(declare-fun m!5428387 () Bool)

(assert (=> b!4600715 m!5428387))

(declare-fun m!5428389 () Bool)

(assert (=> b!4600715 m!5428389))

(assert (=> b!4600715 m!5428389))

(declare-fun m!5428391 () Bool)

(assert (=> b!4600715 m!5428391))

(assert (=> b!4599880 d!1448749))

(declare-fun d!1448753 () Bool)

(declare-fun c!788090 () Bool)

(assert (=> d!1448753 (= c!788090 ((_ is Nil!51101) (keys!17896 lt!1759359)))))

(declare-fun e!2869741 () (InoxSet K!12465))

(assert (=> d!1448753 (= (content!8654 (keys!17896 lt!1759359)) e!2869741)))

(declare-fun b!4600716 () Bool)

(assert (=> b!4600716 (= e!2869741 ((as const (Array K!12465 Bool)) false))))

(declare-fun b!4600717 () Bool)

(assert (=> b!4600717 (= e!2869741 ((_ map or) (store ((as const (Array K!12465 Bool)) false) (h!57071 (keys!17896 lt!1759359)) true) (content!8654 (t!358219 (keys!17896 lt!1759359)))))))

(assert (= (and d!1448753 c!788090) b!4600716))

(assert (= (and d!1448753 (not c!788090)) b!4600717))

(declare-fun m!5428393 () Bool)

(assert (=> b!4600717 m!5428393))

(declare-fun m!5428395 () Bool)

(assert (=> b!4600717 m!5428395))

(assert (=> b!4599880 d!1448753))

(declare-fun bs!1012337 () Bool)

(declare-fun b!4600719 () Bool)

(assert (= bs!1012337 (and b!4600719 b!4600134)))

(declare-fun lambda!186628 () Int)

(assert (=> bs!1012337 (= (= (toList!4668 lt!1759359) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186628 lambda!186473))))

(declare-fun bs!1012338 () Bool)

(assert (= bs!1012338 (and b!4600719 b!4600175)))

(assert (=> bs!1012338 (= (= (toList!4668 lt!1759359) (toList!4668 lt!1759280)) (= lambda!186628 lambda!186475))))

(declare-fun bs!1012339 () Bool)

(assert (= bs!1012339 (and b!4600719 b!4600279)))

(assert (=> bs!1012339 (= (= (toList!4668 lt!1759359) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186628 lambda!186545))))

(declare-fun bs!1012340 () Bool)

(assert (= bs!1012340 (and b!4600719 b!4600684)))

(assert (=> bs!1012340 (= (= (toList!4668 lt!1759359) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186628 lambda!186623))))

(declare-fun bs!1012341 () Bool)

(assert (= bs!1012341 (and b!4600719 b!4600689)))

(assert (=> bs!1012341 (= (= (toList!4668 lt!1759359) (t!358216 (toList!4668 lt!1759280))) (= lambda!186628 lambda!186622))))

(declare-fun bs!1012342 () Bool)

(assert (= bs!1012342 (and b!4600719 b!4600597)))

(assert (=> bs!1012342 (= (= (toList!4668 lt!1759359) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186628 lambda!186615))))

(declare-fun bs!1012343 () Bool)

(assert (= bs!1012343 (and b!4600719 b!4600594)))

(assert (=> bs!1012343 (= (= (toList!4668 lt!1759359) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186628 lambda!186614))))

(declare-fun bs!1012344 () Bool)

(assert (= bs!1012344 (and b!4600719 b!4600714)))

(assert (=> bs!1012344 (= (= (toList!4668 lt!1759359) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186628 lambda!186626))))

(declare-fun bs!1012345 () Bool)

(assert (= bs!1012345 (and b!4600719 b!4600687)))

(assert (=> bs!1012345 (= (= (toList!4668 lt!1759359) (toList!4668 lt!1759280)) (= lambda!186628 lambda!186624))))

(declare-fun bs!1012346 () Bool)

(assert (= bs!1012346 (and b!4600719 b!4600599)))

(assert (=> bs!1012346 (= (= (toList!4668 lt!1759359) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186628 lambda!186613))))

(assert (=> b!4600719 true))

(declare-fun bs!1012348 () Bool)

(declare-fun b!4600720 () Bool)

(assert (= bs!1012348 (and b!4600720 b!4600280)))

(declare-fun lambda!186629 () Int)

(assert (=> bs!1012348 (= lambda!186629 lambda!186547)))

(declare-fun bs!1012349 () Bool)

(assert (= bs!1012349 (and b!4600720 b!4600715)))

(assert (=> bs!1012349 (= lambda!186629 lambda!186627)))

(declare-fun bs!1012350 () Bool)

(assert (= bs!1012350 (and b!4600720 b!4600682)))

(assert (=> bs!1012350 (= lambda!186629 lambda!186625)))

(declare-fun bs!1012352 () Bool)

(assert (= bs!1012352 (and b!4600720 b!4600135)))

(assert (=> bs!1012352 (= lambda!186629 lambda!186474)))

(declare-fun bs!1012353 () Bool)

(assert (= bs!1012353 (and b!4600720 b!4600592)))

(assert (=> bs!1012353 (= lambda!186629 lambda!186616)))

(declare-fun bs!1012354 () Bool)

(assert (= bs!1012354 (and b!4600720 b!4600176)))

(assert (=> bs!1012354 (= lambda!186629 lambda!186476)))

(declare-fun d!1448755 () Bool)

(declare-fun e!2869742 () Bool)

(assert (=> d!1448755 e!2869742))

(declare-fun res!1924560 () Bool)

(assert (=> d!1448755 (=> (not res!1924560) (not e!2869742))))

(declare-fun lt!1759995 () List!51225)

(assert (=> d!1448755 (= res!1924560 (noDuplicate!813 lt!1759995))))

(assert (=> d!1448755 (= lt!1759995 (getKeysList!577 (toList!4668 lt!1759359)))))

(assert (=> d!1448755 (= (keys!17896 lt!1759359) lt!1759995)))

(declare-fun b!4600718 () Bool)

(declare-fun res!1924561 () Bool)

(assert (=> b!4600718 (=> (not res!1924561) (not e!2869742))))

(assert (=> b!4600718 (= res!1924561 (= (length!482 lt!1759995) (length!483 (toList!4668 lt!1759359))))))

(declare-fun res!1924562 () Bool)

(assert (=> b!4600719 (=> (not res!1924562) (not e!2869742))))

(assert (=> b!4600719 (= res!1924562 (forall!10615 lt!1759995 lambda!186628))))

(assert (=> b!4600720 (= e!2869742 (= (content!8654 lt!1759995) (content!8654 (map!11289 (toList!4668 lt!1759359) lambda!186629))))))

(assert (= (and d!1448755 res!1924560) b!4600718))

(assert (= (and b!4600718 res!1924561) b!4600719))

(assert (= (and b!4600719 res!1924562) b!4600720))

(declare-fun m!5428407 () Bool)

(assert (=> d!1448755 m!5428407))

(assert (=> d!1448755 m!5427609))

(declare-fun m!5428409 () Bool)

(assert (=> b!4600718 m!5428409))

(declare-fun m!5428411 () Bool)

(assert (=> b!4600718 m!5428411))

(declare-fun m!5428413 () Bool)

(assert (=> b!4600719 m!5428413))

(declare-fun m!5428417 () Bool)

(assert (=> b!4600720 m!5428417))

(declare-fun m!5428421 () Bool)

(assert (=> b!4600720 m!5428421))

(assert (=> b!4600720 m!5428421))

(declare-fun m!5428423 () Bool)

(assert (=> b!4600720 m!5428423))

(assert (=> b!4599880 d!1448755))

(declare-fun d!1448765 () Bool)

(declare-fun e!2869750 () Bool)

(assert (=> d!1448765 e!2869750))

(declare-fun res!1924570 () Bool)

(assert (=> d!1448765 (=> res!1924570 e!2869750)))

(declare-fun lt!1760023 () Bool)

(assert (=> d!1448765 (= res!1924570 (not lt!1760023))))

(declare-fun lt!1760019 () Bool)

(assert (=> d!1448765 (= lt!1760023 lt!1760019)))

(declare-fun lt!1760022 () Unit!108343)

(declare-fun e!2869748 () Unit!108343)

(assert (=> d!1448765 (= lt!1760022 e!2869748)))

(declare-fun c!788092 () Bool)

(assert (=> d!1448765 (= c!788092 lt!1760019)))

(assert (=> d!1448765 (= lt!1760019 (containsKey!2173 (toList!4667 lt!1759477) (_1!29172 lt!1759277)))))

(assert (=> d!1448765 (= (contains!14056 lt!1759477 (_1!29172 lt!1759277)) lt!1760023)))

(declare-fun b!4600728 () Bool)

(declare-fun lt!1760021 () Unit!108343)

(assert (=> b!4600728 (= e!2869748 lt!1760021)))

(assert (=> b!4600728 (= lt!1760021 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lt!1759477) (_1!29172 lt!1759277)))))

(assert (=> b!4600728 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759477) (_1!29172 lt!1759277)))))

(declare-fun b!4600729 () Bool)

(declare-fun Unit!108513 () Unit!108343)

(assert (=> b!4600729 (= e!2869748 Unit!108513)))

(declare-fun b!4600731 () Bool)

(assert (=> b!4600731 (= e!2869750 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759477) (_1!29172 lt!1759277))))))

(assert (= (and d!1448765 c!788092) b!4600728))

(assert (= (and d!1448765 (not c!788092)) b!4600729))

(assert (= (and d!1448765 (not res!1924570)) b!4600731))

(declare-fun m!5428425 () Bool)

(assert (=> d!1448765 m!5428425))

(declare-fun m!5428427 () Bool)

(assert (=> b!4600728 m!5428427))

(assert (=> b!4600728 m!5427183))

(assert (=> b!4600728 m!5427183))

(declare-fun m!5428429 () Bool)

(assert (=> b!4600728 m!5428429))

(assert (=> b!4600731 m!5427183))

(assert (=> b!4600731 m!5427183))

(assert (=> b!4600731 m!5428429))

(assert (=> d!1448385 d!1448765))

(declare-fun b!4600736 () Bool)

(declare-fun e!2869753 () Option!11398)

(assert (=> b!4600736 (= e!2869753 None!11397)))

(declare-fun b!4600735 () Bool)

(assert (=> b!4600735 (= e!2869753 (getValueByKey!1318 (t!358217 lt!1759478) (_1!29172 lt!1759277)))))

(declare-fun b!4600733 () Bool)

(declare-fun e!2869752 () Option!11398)

(assert (=> b!4600733 (= e!2869752 (Some!11397 (_2!29172 (h!57067 lt!1759478))))))

(declare-fun d!1448767 () Bool)

(declare-fun c!788093 () Bool)

(assert (=> d!1448767 (= c!788093 (and ((_ is Cons!51099) lt!1759478) (= (_1!29172 (h!57067 lt!1759478)) (_1!29172 lt!1759277))))))

(assert (=> d!1448767 (= (getValueByKey!1318 lt!1759478 (_1!29172 lt!1759277)) e!2869752)))

(declare-fun b!4600734 () Bool)

(assert (=> b!4600734 (= e!2869752 e!2869753)))

(declare-fun c!788094 () Bool)

(assert (=> b!4600734 (= c!788094 (and ((_ is Cons!51099) lt!1759478) (not (= (_1!29172 (h!57067 lt!1759478)) (_1!29172 lt!1759277)))))))

(assert (= (and d!1448767 c!788093) b!4600733))

(assert (= (and d!1448767 (not c!788093)) b!4600734))

(assert (= (and b!4600734 c!788094) b!4600735))

(assert (= (and b!4600734 (not c!788094)) b!4600736))

(declare-fun m!5428431 () Bool)

(assert (=> b!4600735 m!5428431))

(assert (=> d!1448385 d!1448767))

(declare-fun d!1448769 () Bool)

(assert (=> d!1448769 (= (getValueByKey!1318 lt!1759478 (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277)))))

(declare-fun lt!1760026 () Unit!108343)

(declare-fun choose!30857 (List!51223 (_ BitVec 64) List!51222) Unit!108343)

(assert (=> d!1448769 (= lt!1760026 (choose!30857 lt!1759478 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(declare-fun e!2869756 () Bool)

(assert (=> d!1448769 e!2869756))

(declare-fun res!1924575 () Bool)

(assert (=> d!1448769 (=> (not res!1924575) (not e!2869756))))

(assert (=> d!1448769 (= res!1924575 (isStrictlySorted!544 lt!1759478))))

(assert (=> d!1448769 (= (lemmaContainsTupThenGetReturnValue!800 lt!1759478 (_1!29172 lt!1759277) (_2!29172 lt!1759277)) lt!1760026)))

(declare-fun b!4600741 () Bool)

(declare-fun res!1924576 () Bool)

(assert (=> b!4600741 (=> (not res!1924576) (not e!2869756))))

(assert (=> b!4600741 (= res!1924576 (containsKey!2173 lt!1759478 (_1!29172 lt!1759277)))))

(declare-fun b!4600742 () Bool)

(assert (=> b!4600742 (= e!2869756 (contains!14055 lt!1759478 (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277))))))

(assert (= (and d!1448769 res!1924575) b!4600741))

(assert (= (and b!4600741 res!1924576) b!4600742))

(assert (=> d!1448769 m!5427177))

(declare-fun m!5428433 () Bool)

(assert (=> d!1448769 m!5428433))

(declare-fun m!5428435 () Bool)

(assert (=> d!1448769 m!5428435))

(declare-fun m!5428437 () Bool)

(assert (=> b!4600741 m!5428437))

(declare-fun m!5428439 () Bool)

(assert (=> b!4600742 m!5428439))

(assert (=> d!1448385 d!1448769))

(declare-fun b!4600774 () Bool)

(declare-fun e!2869776 () Bool)

(declare-fun lt!1760053 () List!51223)

(assert (=> b!4600774 (= e!2869776 (contains!14055 lt!1760053 (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277))))))

(declare-fun b!4600775 () Bool)

(declare-fun e!2869777 () List!51223)

(declare-fun call!321071 () List!51223)

(assert (=> b!4600775 (= e!2869777 call!321071)))

(declare-fun b!4600776 () Bool)

(declare-fun e!2869775 () List!51223)

(assert (=> b!4600776 (= e!2869775 (insertStrictlySorted!492 (t!358217 (toList!4667 lt!1759284)) (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(declare-fun d!1448771 () Bool)

(assert (=> d!1448771 e!2869776))

(declare-fun res!1924584 () Bool)

(assert (=> d!1448771 (=> (not res!1924584) (not e!2869776))))

(assert (=> d!1448771 (= res!1924584 (isStrictlySorted!544 lt!1760053))))

(declare-fun e!2869773 () List!51223)

(assert (=> d!1448771 (= lt!1760053 e!2869773)))

(declare-fun c!788108 () Bool)

(assert (=> d!1448771 (= c!788108 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (bvslt (_1!29172 (h!57067 (toList!4667 lt!1759284))) (_1!29172 lt!1759277))))))

(assert (=> d!1448771 (isStrictlySorted!544 (toList!4667 lt!1759284))))

(assert (=> d!1448771 (= (insertStrictlySorted!492 (toList!4667 lt!1759284) (_1!29172 lt!1759277) (_2!29172 lt!1759277)) lt!1760053)))

(declare-fun b!4600777 () Bool)

(declare-fun e!2869774 () List!51223)

(declare-fun call!321072 () List!51223)

(assert (=> b!4600777 (= e!2869774 call!321072)))

(declare-fun bm!321066 () Bool)

(declare-fun call!321073 () List!51223)

(assert (=> bm!321066 (= call!321072 call!321073)))

(declare-fun c!788109 () Bool)

(declare-fun c!788110 () Bool)

(declare-fun b!4600778 () Bool)

(assert (=> b!4600778 (= e!2869775 (ite c!788110 (t!358217 (toList!4667 lt!1759284)) (ite c!788109 (Cons!51099 (h!57067 (toList!4667 lt!1759284)) (t!358217 (toList!4667 lt!1759284))) Nil!51099)))))

(declare-fun b!4600779 () Bool)

(assert (=> b!4600779 (= c!788109 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (bvsgt (_1!29172 (h!57067 (toList!4667 lt!1759284))) (_1!29172 lt!1759277))))))

(assert (=> b!4600779 (= e!2869774 e!2869777)))

(declare-fun bm!321067 () Bool)

(assert (=> bm!321067 (= call!321071 call!321072)))

(declare-fun b!4600780 () Bool)

(assert (=> b!4600780 (= e!2869773 call!321073)))

(declare-fun b!4600781 () Bool)

(assert (=> b!4600781 (= e!2869777 call!321071)))

(declare-fun b!4600782 () Bool)

(declare-fun res!1924585 () Bool)

(assert (=> b!4600782 (=> (not res!1924585) (not e!2869776))))

(assert (=> b!4600782 (= res!1924585 (containsKey!2173 lt!1760053 (_1!29172 lt!1759277)))))

(declare-fun b!4600783 () Bool)

(assert (=> b!4600783 (= e!2869773 e!2869774)))

(assert (=> b!4600783 (= c!788110 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (= (_1!29172 (h!57067 (toList!4667 lt!1759284))) (_1!29172 lt!1759277))))))

(declare-fun bm!321068 () Bool)

(declare-fun $colon$colon!1045 (List!51223 tuple2!51756) List!51223)

(assert (=> bm!321068 (= call!321073 ($colon$colon!1045 e!2869775 (ite c!788108 (h!57067 (toList!4667 lt!1759284)) (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))))

(declare-fun c!788107 () Bool)

(assert (=> bm!321068 (= c!788107 c!788108)))

(assert (= (and d!1448771 c!788108) b!4600780))

(assert (= (and d!1448771 (not c!788108)) b!4600783))

(assert (= (and b!4600783 c!788110) b!4600777))

(assert (= (and b!4600783 (not c!788110)) b!4600779))

(assert (= (and b!4600779 c!788109) b!4600781))

(assert (= (and b!4600779 (not c!788109)) b!4600775))

(assert (= (or b!4600781 b!4600775) bm!321067))

(assert (= (or b!4600777 bm!321067) bm!321066))

(assert (= (or b!4600780 bm!321066) bm!321068))

(assert (= (and bm!321068 c!788107) b!4600776))

(assert (= (and bm!321068 (not c!788107)) b!4600778))

(assert (= (and d!1448771 res!1924584) b!4600782))

(assert (= (and b!4600782 res!1924585) b!4600774))

(declare-fun m!5428495 () Bool)

(assert (=> b!4600776 m!5428495))

(declare-fun m!5428497 () Bool)

(assert (=> bm!321068 m!5428497))

(declare-fun m!5428499 () Bool)

(assert (=> b!4600774 m!5428499))

(declare-fun m!5428501 () Bool)

(assert (=> d!1448771 m!5428501))

(assert (=> d!1448771 m!5427955))

(declare-fun m!5428503 () Bool)

(assert (=> b!4600782 m!5428503))

(assert (=> d!1448385 d!1448771))

(declare-fun d!1448785 () Bool)

(assert (=> d!1448785 (dynLambda!21402 lambda!186420 lt!1759282)))

(assert (=> d!1448785 true))

(declare-fun _$7!2138 () Unit!108343)

(assert (=> d!1448785 (= (choose!30846 (toList!4667 lm!1477) lambda!186420 lt!1759282) _$7!2138)))

(declare-fun b_lambda!169503 () Bool)

(assert (=> (not b_lambda!169503) (not d!1448785)))

(declare-fun bs!1012444 () Bool)

(assert (= bs!1012444 d!1448785))

(assert (=> bs!1012444 m!5427229))

(assert (=> d!1448403 d!1448785))

(assert (=> d!1448403 d!1448421))

(declare-fun d!1448787 () Bool)

(declare-fun lt!1760054 () Bool)

(assert (=> d!1448787 (= lt!1760054 (select (content!8658 (t!358217 (toList!4667 lm!1477))) lt!1759282))))

(declare-fun e!2869778 () Bool)

(assert (=> d!1448787 (= lt!1760054 e!2869778)))

(declare-fun res!1924586 () Bool)

(assert (=> d!1448787 (=> (not res!1924586) (not e!2869778))))

(assert (=> d!1448787 (= res!1924586 ((_ is Cons!51099) (t!358217 (toList!4667 lm!1477))))))

(assert (=> d!1448787 (= (contains!14055 (t!358217 (toList!4667 lm!1477)) lt!1759282) lt!1760054)))

(declare-fun b!4600784 () Bool)

(declare-fun e!2869779 () Bool)

(assert (=> b!4600784 (= e!2869778 e!2869779)))

(declare-fun res!1924587 () Bool)

(assert (=> b!4600784 (=> res!1924587 e!2869779)))

(assert (=> b!4600784 (= res!1924587 (= (h!57067 (t!358217 (toList!4667 lm!1477))) lt!1759282))))

(declare-fun b!4600785 () Bool)

(assert (=> b!4600785 (= e!2869779 (contains!14055 (t!358217 (t!358217 (toList!4667 lm!1477))) lt!1759282))))

(assert (= (and d!1448787 res!1924586) b!4600784))

(assert (= (and b!4600784 (not res!1924587)) b!4600785))

(assert (=> d!1448787 m!5428271))

(declare-fun m!5428505 () Bool)

(assert (=> d!1448787 m!5428505))

(declare-fun m!5428507 () Bool)

(assert (=> b!4600785 m!5428507))

(assert (=> b!4600048 d!1448787))

(declare-fun d!1448789 () Bool)

(declare-fun res!1924588 () Bool)

(declare-fun e!2869780 () Bool)

(assert (=> d!1448789 (=> res!1924588 e!2869780)))

(assert (=> d!1448789 (= res!1924588 (not ((_ is Cons!51098) (_2!29172 lt!1759282))))))

(assert (=> d!1448789 (= (noDuplicateKeys!1326 (_2!29172 lt!1759282)) e!2869780)))

(declare-fun b!4600786 () Bool)

(declare-fun e!2869781 () Bool)

(assert (=> b!4600786 (= e!2869780 e!2869781)))

(declare-fun res!1924589 () Bool)

(assert (=> b!4600786 (=> (not res!1924589) (not e!2869781))))

(assert (=> b!4600786 (= res!1924589 (not (containsKey!2170 (t!358216 (_2!29172 lt!1759282)) (_1!29171 (h!57066 (_2!29172 lt!1759282))))))))

(declare-fun b!4600787 () Bool)

(assert (=> b!4600787 (= e!2869781 (noDuplicateKeys!1326 (t!358216 (_2!29172 lt!1759282))))))

(assert (= (and d!1448789 (not res!1924588)) b!4600786))

(assert (= (and b!4600786 res!1924589) b!4600787))

(declare-fun m!5428509 () Bool)

(assert (=> b!4600786 m!5428509))

(declare-fun m!5428511 () Bool)

(assert (=> b!4600787 m!5428511))

(assert (=> bs!1011827 d!1448789))

(declare-fun d!1448791 () Bool)

(declare-fun res!1924590 () Bool)

(declare-fun e!2869782 () Bool)

(assert (=> d!1448791 (=> res!1924590 e!2869782)))

(assert (=> d!1448791 (= res!1924590 (and ((_ is Cons!51099) (toList!4667 lt!1759284)) (= (_1!29172 (h!57067 (toList!4667 lt!1759284))) lt!1759275)))))

(assert (=> d!1448791 (= (containsKey!2173 (toList!4667 lt!1759284) lt!1759275) e!2869782)))

(declare-fun b!4600788 () Bool)

(declare-fun e!2869783 () Bool)

(assert (=> b!4600788 (= e!2869782 e!2869783)))

(declare-fun res!1924591 () Bool)

(assert (=> b!4600788 (=> (not res!1924591) (not e!2869783))))

(assert (=> b!4600788 (= res!1924591 (and (or (not ((_ is Cons!51099) (toList!4667 lt!1759284))) (bvsle (_1!29172 (h!57067 (toList!4667 lt!1759284))) lt!1759275)) ((_ is Cons!51099) (toList!4667 lt!1759284)) (bvslt (_1!29172 (h!57067 (toList!4667 lt!1759284))) lt!1759275)))))

(declare-fun b!4600789 () Bool)

(assert (=> b!4600789 (= e!2869783 (containsKey!2173 (t!358217 (toList!4667 lt!1759284)) lt!1759275))))

(assert (= (and d!1448791 (not res!1924590)) b!4600788))

(assert (= (and b!4600788 res!1924591) b!4600789))

(declare-fun m!5428513 () Bool)

(assert (=> b!4600789 m!5428513))

(assert (=> d!1448275 d!1448791))

(assert (=> b!4599998 d!1448521))

(declare-fun d!1448793 () Bool)

(declare-fun res!1924592 () Bool)

(declare-fun e!2869784 () Bool)

(assert (=> d!1448793 (=> res!1924592 e!2869784)))

(assert (=> d!1448793 (= res!1924592 (and ((_ is Cons!51098) lt!1759495) (= (_1!29171 (h!57066 lt!1759495)) key!3287)))))

(assert (=> d!1448793 (= (containsKey!2170 lt!1759495 key!3287) e!2869784)))

(declare-fun b!4600790 () Bool)

(declare-fun e!2869785 () Bool)

(assert (=> b!4600790 (= e!2869784 e!2869785)))

(declare-fun res!1924593 () Bool)

(assert (=> b!4600790 (=> (not res!1924593) (not e!2869785))))

(assert (=> b!4600790 (= res!1924593 ((_ is Cons!51098) lt!1759495))))

(declare-fun b!4600791 () Bool)

(assert (=> b!4600791 (= e!2869785 (containsKey!2170 (t!358216 lt!1759495) key!3287))))

(assert (= (and d!1448793 (not res!1924592)) b!4600790))

(assert (= (and b!4600790 res!1924593) b!4600791))

(declare-fun m!5428515 () Bool)

(assert (=> b!4600791 m!5428515))

(assert (=> d!1448401 d!1448793))

(declare-fun d!1448795 () Bool)

(declare-fun res!1924594 () Bool)

(declare-fun e!2869786 () Bool)

(assert (=> d!1448795 (=> res!1924594 e!2869786)))

(assert (=> d!1448795 (= res!1924594 (not ((_ is Cons!51098) lt!1759288)))))

(assert (=> d!1448795 (= (noDuplicateKeys!1326 lt!1759288) e!2869786)))

(declare-fun b!4600792 () Bool)

(declare-fun e!2869787 () Bool)

(assert (=> b!4600792 (= e!2869786 e!2869787)))

(declare-fun res!1924595 () Bool)

(assert (=> b!4600792 (=> (not res!1924595) (not e!2869787))))

(assert (=> b!4600792 (= res!1924595 (not (containsKey!2170 (t!358216 lt!1759288) (_1!29171 (h!57066 lt!1759288)))))))

(declare-fun b!4600793 () Bool)

(assert (=> b!4600793 (= e!2869787 (noDuplicateKeys!1326 (t!358216 lt!1759288)))))

(assert (= (and d!1448795 (not res!1924594)) b!4600792))

(assert (= (and b!4600792 res!1924595) b!4600793))

(declare-fun m!5428517 () Bool)

(assert (=> b!4600792 m!5428517))

(declare-fun m!5428519 () Bool)

(assert (=> b!4600793 m!5428519))

(assert (=> d!1448401 d!1448795))

(declare-fun bs!1012449 () Bool)

(declare-fun b!4600796 () Bool)

(assert (= bs!1012449 (and b!4600796 d!1448495)))

(declare-fun lambda!186639 () Int)

(assert (=> bs!1012449 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759626) (= lambda!186639 lambda!186533))))

(declare-fun bs!1012450 () Bool)

(assert (= bs!1012450 (and b!4600796 d!1448629)))

(assert (=> bs!1012450 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759863) (= lambda!186639 lambda!186590))))

(declare-fun bs!1012451 () Bool)

(assert (= bs!1012451 (and b!4600796 d!1448611)))

(assert (=> bs!1012451 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759838) (= lambda!186639 lambda!186584))))

(declare-fun bs!1012452 () Bool)

(assert (= bs!1012452 (and b!4600796 b!4600452)))

(assert (=> bs!1012452 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759823) (= lambda!186639 lambda!186575))))

(declare-fun bs!1012453 () Bool)

(assert (= bs!1012453 (and b!4600796 b!4600645)))

(assert (=> bs!1012453 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759975) (= lambda!186639 lambda!186619))))

(declare-fun bs!1012454 () Bool)

(assert (= bs!1012454 (and b!4600796 d!1448731)))

(assert (=> bs!1012454 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759961) (= lambda!186639 lambda!186620))))

(declare-fun bs!1012455 () Bool)

(assert (= bs!1012455 (and b!4600796 b!4600224)))

(assert (=> bs!1012455 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186639 lambda!186529))))

(declare-fun bs!1012456 () Bool)

(assert (= bs!1012456 (and b!4600796 b!4600472)))

(assert (=> bs!1012456 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186639 lambda!186582))))

(declare-fun bs!1012457 () Bool)

(assert (= bs!1012457 (and b!4600796 b!4600647)))

(assert (=> bs!1012457 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186639 lambda!186617))))

(declare-fun bs!1012458 () Bool)

(assert (= bs!1012458 (and b!4600796 b!4600492)))

(assert (=> bs!1012458 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759877) (= lambda!186639 lambda!186588))))

(declare-fun bs!1012459 () Bool)

(assert (= bs!1012459 (and b!4600796 b!4600474)))

(assert (=> bs!1012459 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186639 lambda!186581))))

(assert (=> bs!1012453 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186639 lambda!186618))))

(assert (=> bs!1012452 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186639 lambda!186574))))

(declare-fun bs!1012462 () Bool)

(assert (= bs!1012462 (and b!4600796 b!4600494)))

(assert (=> bs!1012462 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186639 lambda!186586))))

(assert (=> bs!1012456 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759852) (= lambda!186639 lambda!186583))))

(declare-fun bs!1012465 () Bool)

(assert (= bs!1012465 (and b!4600796 b!4600454)))

(assert (=> bs!1012465 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186639 lambda!186573))))

(assert (=> bs!1012458 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186639 lambda!186587))))

(declare-fun bs!1012468 () Bool)

(assert (= bs!1012468 (and b!4600796 d!1448601)))

(assert (=> bs!1012468 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759809) (= lambda!186639 lambda!186577))))

(assert (=> bs!1012455 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759640) (= lambda!186639 lambda!186530))))

(declare-fun bs!1012471 () Bool)

(assert (= bs!1012471 (and b!4600796 b!4600226)))

(assert (=> bs!1012471 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186639 lambda!186526))))

(declare-fun bs!1012473 () Bool)

(assert (= bs!1012473 (and b!4600796 d!1448379)))

(assert (=> bs!1012473 (not (= lambda!186639 lambda!186458))))

(assert (=> b!4600796 true))

(declare-fun bs!1012481 () Bool)

(declare-fun b!4600794 () Bool)

(assert (= bs!1012481 (and b!4600794 d!1448495)))

(declare-fun lambda!186641 () Int)

(assert (=> bs!1012481 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759626) (= lambda!186641 lambda!186533))))

(declare-fun bs!1012482 () Bool)

(assert (= bs!1012482 (and b!4600794 d!1448629)))

(assert (=> bs!1012482 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759863) (= lambda!186641 lambda!186590))))

(declare-fun bs!1012483 () Bool)

(assert (= bs!1012483 (and b!4600794 d!1448611)))

(assert (=> bs!1012483 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759838) (= lambda!186641 lambda!186584))))

(declare-fun bs!1012484 () Bool)

(assert (= bs!1012484 (and b!4600794 b!4600452)))

(assert (=> bs!1012484 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759823) (= lambda!186641 lambda!186575))))

(declare-fun bs!1012485 () Bool)

(assert (= bs!1012485 (and b!4600794 b!4600645)))

(assert (=> bs!1012485 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759975) (= lambda!186641 lambda!186619))))

(declare-fun bs!1012486 () Bool)

(assert (= bs!1012486 (and b!4600794 d!1448731)))

(assert (=> bs!1012486 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759961) (= lambda!186641 lambda!186620))))

(declare-fun bs!1012487 () Bool)

(assert (= bs!1012487 (and b!4600794 b!4600224)))

(assert (=> bs!1012487 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186641 lambda!186529))))

(declare-fun bs!1012488 () Bool)

(assert (= bs!1012488 (and b!4600794 b!4600647)))

(assert (=> bs!1012488 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186641 lambda!186617))))

(declare-fun bs!1012489 () Bool)

(assert (= bs!1012489 (and b!4600794 b!4600492)))

(assert (=> bs!1012489 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759877) (= lambda!186641 lambda!186588))))

(declare-fun bs!1012490 () Bool)

(assert (= bs!1012490 (and b!4600794 b!4600474)))

(assert (=> bs!1012490 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186641 lambda!186581))))

(assert (=> bs!1012485 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186641 lambda!186618))))

(assert (=> bs!1012484 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186641 lambda!186574))))

(declare-fun bs!1012492 () Bool)

(assert (= bs!1012492 (and b!4600794 b!4600494)))

(assert (=> bs!1012492 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186641 lambda!186586))))

(declare-fun bs!1012493 () Bool)

(assert (= bs!1012493 (and b!4600794 b!4600472)))

(assert (=> bs!1012493 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759852) (= lambda!186641 lambda!186583))))

(declare-fun bs!1012495 () Bool)

(assert (= bs!1012495 (and b!4600794 b!4600454)))

(assert (=> bs!1012495 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186641 lambda!186573))))

(assert (=> bs!1012489 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186641 lambda!186587))))

(declare-fun bs!1012496 () Bool)

(assert (= bs!1012496 (and b!4600794 d!1448601)))

(assert (=> bs!1012496 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759809) (= lambda!186641 lambda!186577))))

(assert (=> bs!1012487 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1759640) (= lambda!186641 lambda!186530))))

(declare-fun bs!1012497 () Bool)

(assert (= bs!1012497 (and b!4600794 b!4600226)))

(assert (=> bs!1012497 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186641 lambda!186526))))

(declare-fun bs!1012498 () Bool)

(assert (= bs!1012498 (and b!4600794 d!1448379)))

(assert (=> bs!1012498 (not (= lambda!186641 lambda!186458))))

(assert (=> bs!1012493 (= (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186641 lambda!186582))))

(declare-fun bs!1012499 () Bool)

(assert (= bs!1012499 (and b!4600794 b!4600796)))

(assert (=> bs!1012499 (= lambda!186641 lambda!186639)))

(assert (=> b!4600794 true))

(declare-fun lambda!186642 () Int)

(declare-fun lt!1760071 () ListMap!3929)

(assert (=> bs!1012482 (= (= lt!1760071 lt!1759863) (= lambda!186642 lambda!186590))))

(assert (=> bs!1012483 (= (= lt!1760071 lt!1759838) (= lambda!186642 lambda!186584))))

(assert (=> bs!1012484 (= (= lt!1760071 lt!1759823) (= lambda!186642 lambda!186575))))

(assert (=> bs!1012485 (= (= lt!1760071 lt!1759975) (= lambda!186642 lambda!186619))))

(assert (=> bs!1012486 (= (= lt!1760071 lt!1759961) (= lambda!186642 lambda!186620))))

(assert (=> bs!1012487 (= (= lt!1760071 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186642 lambda!186529))))

(assert (=> bs!1012488 (= (= lt!1760071 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186642 lambda!186617))))

(assert (=> bs!1012489 (= (= lt!1760071 lt!1759877) (= lambda!186642 lambda!186588))))

(assert (=> bs!1012490 (= (= lt!1760071 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186642 lambda!186581))))

(assert (=> b!4600794 (= (= lt!1760071 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (= lambda!186642 lambda!186641))))

(assert (=> bs!1012481 (= (= lt!1760071 lt!1759626) (= lambda!186642 lambda!186533))))

(assert (=> bs!1012485 (= (= lt!1760071 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186642 lambda!186618))))

(assert (=> bs!1012484 (= (= lt!1760071 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186642 lambda!186574))))

(assert (=> bs!1012492 (= (= lt!1760071 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186642 lambda!186586))))

(assert (=> bs!1012493 (= (= lt!1760071 lt!1759852) (= lambda!186642 lambda!186583))))

(assert (=> bs!1012495 (= (= lt!1760071 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186642 lambda!186573))))

(assert (=> bs!1012489 (= (= lt!1760071 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186642 lambda!186587))))

(assert (=> bs!1012496 (= (= lt!1760071 lt!1759809) (= lambda!186642 lambda!186577))))

(assert (=> bs!1012487 (= (= lt!1760071 lt!1759640) (= lambda!186642 lambda!186530))))

(assert (=> bs!1012497 (= (= lt!1760071 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186642 lambda!186526))))

(assert (=> bs!1012498 (not (= lambda!186642 lambda!186458))))

(assert (=> bs!1012493 (= (= lt!1760071 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186642 lambda!186582))))

(assert (=> bs!1012499 (= (= lt!1760071 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (= lambda!186642 lambda!186639))))

(assert (=> b!4600794 true))

(declare-fun bs!1012500 () Bool)

(declare-fun d!1448797 () Bool)

(assert (= bs!1012500 (and d!1448797 b!4600794)))

(declare-fun lt!1760057 () ListMap!3929)

(declare-fun lambda!186643 () Int)

(assert (=> bs!1012500 (= (= lt!1760057 lt!1760071) (= lambda!186643 lambda!186642))))

(declare-fun bs!1012501 () Bool)

(assert (= bs!1012501 (and d!1448797 d!1448629)))

(assert (=> bs!1012501 (= (= lt!1760057 lt!1759863) (= lambda!186643 lambda!186590))))

(declare-fun bs!1012502 () Bool)

(assert (= bs!1012502 (and d!1448797 d!1448611)))

(assert (=> bs!1012502 (= (= lt!1760057 lt!1759838) (= lambda!186643 lambda!186584))))

(declare-fun bs!1012503 () Bool)

(assert (= bs!1012503 (and d!1448797 b!4600452)))

(assert (=> bs!1012503 (= (= lt!1760057 lt!1759823) (= lambda!186643 lambda!186575))))

(declare-fun bs!1012504 () Bool)

(assert (= bs!1012504 (and d!1448797 b!4600645)))

(assert (=> bs!1012504 (= (= lt!1760057 lt!1759975) (= lambda!186643 lambda!186619))))

(declare-fun bs!1012505 () Bool)

(assert (= bs!1012505 (and d!1448797 d!1448731)))

(assert (=> bs!1012505 (= (= lt!1760057 lt!1759961) (= lambda!186643 lambda!186620))))

(declare-fun bs!1012506 () Bool)

(assert (= bs!1012506 (and d!1448797 b!4600224)))

(assert (=> bs!1012506 (= (= lt!1760057 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186643 lambda!186529))))

(declare-fun bs!1012507 () Bool)

(assert (= bs!1012507 (and d!1448797 b!4600647)))

(assert (=> bs!1012507 (= (= lt!1760057 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186643 lambda!186617))))

(declare-fun bs!1012508 () Bool)

(assert (= bs!1012508 (and d!1448797 b!4600492)))

(assert (=> bs!1012508 (= (= lt!1760057 lt!1759877) (= lambda!186643 lambda!186588))))

(declare-fun bs!1012509 () Bool)

(assert (= bs!1012509 (and d!1448797 b!4600474)))

(assert (=> bs!1012509 (= (= lt!1760057 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186643 lambda!186581))))

(assert (=> bs!1012500 (= (= lt!1760057 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (= lambda!186643 lambda!186641))))

(declare-fun bs!1012510 () Bool)

(assert (= bs!1012510 (and d!1448797 d!1448495)))

(assert (=> bs!1012510 (= (= lt!1760057 lt!1759626) (= lambda!186643 lambda!186533))))

(assert (=> bs!1012504 (= (= lt!1760057 (extractMap!1386 (t!358217 (Cons!51099 lt!1759277 Nil!51099)))) (= lambda!186643 lambda!186618))))

(assert (=> bs!1012503 (= (= lt!1760057 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186643 lambda!186574))))

(declare-fun bs!1012511 () Bool)

(assert (= bs!1012511 (and d!1448797 b!4600494)))

(assert (=> bs!1012511 (= (= lt!1760057 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186643 lambda!186586))))

(declare-fun bs!1012512 () Bool)

(assert (= bs!1012512 (and d!1448797 b!4600472)))

(assert (=> bs!1012512 (= (= lt!1760057 lt!1759852) (= lambda!186643 lambda!186583))))

(declare-fun bs!1012513 () Bool)

(assert (= bs!1012513 (and d!1448797 b!4600454)))

(assert (=> bs!1012513 (= (= lt!1760057 (extractMap!1386 (t!358217 (toList!4667 lm!1477)))) (= lambda!186643 lambda!186573))))

(assert (=> bs!1012508 (= (= lt!1760057 (extractMap!1386 (t!358217 lt!1759278))) (= lambda!186643 lambda!186587))))

(declare-fun bs!1012514 () Bool)

(assert (= bs!1012514 (and d!1448797 d!1448601)))

(assert (=> bs!1012514 (= (= lt!1760057 lt!1759809) (= lambda!186643 lambda!186577))))

(assert (=> bs!1012506 (= (= lt!1760057 lt!1759640) (= lambda!186643 lambda!186530))))

(declare-fun bs!1012515 () Bool)

(assert (= bs!1012515 (and d!1448797 b!4600226)))

(assert (=> bs!1012515 (= (= lt!1760057 (extractMap!1386 (t!358217 (t!358217 (toList!4667 lm!1477))))) (= lambda!186643 lambda!186526))))

(declare-fun bs!1012516 () Bool)

(assert (= bs!1012516 (and d!1448797 d!1448379)))

(assert (=> bs!1012516 (not (= lambda!186643 lambda!186458))))

(assert (=> bs!1012512 (= (= lt!1760057 (extractMap!1386 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186643 lambda!186582))))

(declare-fun bs!1012517 () Bool)

(assert (= bs!1012517 (and d!1448797 b!4600796)))

(assert (=> bs!1012517 (= (= lt!1760057 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (= lambda!186643 lambda!186639))))

(assert (=> d!1448797 true))

(declare-fun e!2869789 () ListMap!3929)

(assert (=> b!4600794 (= e!2869789 lt!1760071)))

(declare-fun lt!1760064 () ListMap!3929)

(assert (=> b!4600794 (= lt!1760064 (+!1756 (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284))))))))

(assert (=> b!4600794 (= lt!1760071 (addToMapMapFromBucket!818 (t!358216 (_2!29172 (h!57067 (toList!4667 lt!1759284)))) (+!1756 (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))))

(declare-fun lt!1760069 () Unit!108343)

(declare-fun call!321075 () Unit!108343)

(assert (=> b!4600794 (= lt!1760069 call!321075)))

(declare-fun call!321074 () Bool)

(assert (=> b!4600794 call!321074))

(declare-fun lt!1760075 () Unit!108343)

(assert (=> b!4600794 (= lt!1760075 lt!1760069)))

(assert (=> b!4600794 (forall!10613 (toList!4668 lt!1760064) lambda!186642)))

(declare-fun lt!1760068 () Unit!108343)

(declare-fun Unit!108527 () Unit!108343)

(assert (=> b!4600794 (= lt!1760068 Unit!108527)))

(assert (=> b!4600794 (forall!10613 (t!358216 (_2!29172 (h!57067 (toList!4667 lt!1759284)))) lambda!186642)))

(declare-fun lt!1760060 () Unit!108343)

(declare-fun Unit!108528 () Unit!108343)

(assert (=> b!4600794 (= lt!1760060 Unit!108528)))

(declare-fun lt!1760065 () Unit!108343)

(declare-fun Unit!108529 () Unit!108343)

(assert (=> b!4600794 (= lt!1760065 Unit!108529)))

(declare-fun lt!1760058 () Unit!108343)

(assert (=> b!4600794 (= lt!1760058 (forallContained!2865 (toList!4668 lt!1760064) lambda!186642 (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284))))))))

(assert (=> b!4600794 (contains!14057 lt!1760064 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284))))))))

(declare-fun lt!1760067 () Unit!108343)

(declare-fun Unit!108530 () Unit!108343)

(assert (=> b!4600794 (= lt!1760067 Unit!108530)))

(assert (=> b!4600794 (contains!14057 lt!1760071 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284))))))))

(declare-fun lt!1760061 () Unit!108343)

(declare-fun Unit!108531 () Unit!108343)

(assert (=> b!4600794 (= lt!1760061 Unit!108531)))

(assert (=> b!4600794 (forall!10613 (_2!29172 (h!57067 (toList!4667 lt!1759284))) lambda!186642)))

(declare-fun lt!1760070 () Unit!108343)

(declare-fun Unit!108532 () Unit!108343)

(assert (=> b!4600794 (= lt!1760070 Unit!108532)))

(declare-fun call!321076 () Bool)

(assert (=> b!4600794 call!321076))

(declare-fun lt!1760059 () Unit!108343)

(declare-fun Unit!108533 () Unit!108343)

(assert (=> b!4600794 (= lt!1760059 Unit!108533)))

(declare-fun lt!1760056 () Unit!108343)

(declare-fun Unit!108534 () Unit!108343)

(assert (=> b!4600794 (= lt!1760056 Unit!108534)))

(declare-fun lt!1760055 () Unit!108343)

(assert (=> b!4600794 (= lt!1760055 (addForallContainsKeyThenBeforeAdding!438 (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1760071 (_1!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284))))) (_2!29171 (h!57066 (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))))

(assert (=> b!4600794 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) lambda!186642)))

(declare-fun lt!1760074 () Unit!108343)

(assert (=> b!4600794 (= lt!1760074 lt!1760055)))

(assert (=> b!4600794 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) lambda!186642)))

(declare-fun lt!1760063 () Unit!108343)

(declare-fun Unit!108535 () Unit!108343)

(assert (=> b!4600794 (= lt!1760063 Unit!108535)))

(declare-fun res!1924596 () Bool)

(assert (=> b!4600794 (= res!1924596 (forall!10613 (_2!29172 (h!57067 (toList!4667 lt!1759284))) lambda!186642))))

(declare-fun e!2869788 () Bool)

(assert (=> b!4600794 (=> (not res!1924596) (not e!2869788))))

(assert (=> b!4600794 e!2869788))

(declare-fun lt!1760066 () Unit!108343)

(declare-fun Unit!108536 () Unit!108343)

(assert (=> b!4600794 (= lt!1760066 Unit!108536)))

(declare-fun bm!321069 () Bool)

(declare-fun c!788111 () Bool)

(assert (=> bm!321069 (= call!321074 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (ite c!788111 lambda!186639 lambda!186641)))))

(declare-fun bm!321070 () Bool)

(assert (=> bm!321070 (= call!321075 (lemmaContainsAllItsOwnKeys!438 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))))))

(assert (=> b!4600796 (= e!2869789 (extractMap!1386 (t!358217 (toList!4667 lt!1759284))))))

(declare-fun lt!1760072 () Unit!108343)

(assert (=> b!4600796 (= lt!1760072 call!321075)))

(assert (=> b!4600796 call!321076))

(declare-fun lt!1760073 () Unit!108343)

(assert (=> b!4600796 (= lt!1760073 lt!1760072)))

(assert (=> b!4600796 call!321074))

(declare-fun lt!1760062 () Unit!108343)

(declare-fun Unit!108537 () Unit!108343)

(assert (=> b!4600796 (= lt!1760062 Unit!108537)))

(declare-fun b!4600797 () Bool)

(declare-fun res!1924597 () Bool)

(declare-fun e!2869790 () Bool)

(assert (=> b!4600797 (=> (not res!1924597) (not e!2869790))))

(assert (=> b!4600797 (= res!1924597 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) lambda!186643))))

(declare-fun b!4600798 () Bool)

(assert (=> b!4600798 (= e!2869790 (invariantList!1128 (toList!4668 lt!1760057)))))

(declare-fun bm!321071 () Bool)

(assert (=> bm!321071 (= call!321076 (forall!10613 (ite c!788111 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) (toList!4668 lt!1760064)) (ite c!788111 lambda!186639 lambda!186642)))))

(assert (=> d!1448797 e!2869790))

(declare-fun res!1924598 () Bool)

(assert (=> d!1448797 (=> (not res!1924598) (not e!2869790))))

(assert (=> d!1448797 (= res!1924598 (forall!10613 (_2!29172 (h!57067 (toList!4667 lt!1759284))) lambda!186643))))

(assert (=> d!1448797 (= lt!1760057 e!2869789)))

(assert (=> d!1448797 (= c!788111 ((_ is Nil!51098) (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))

(assert (=> d!1448797 (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lt!1759284))))))

(assert (=> d!1448797 (= (addToMapMapFromBucket!818 (_2!29172 (h!57067 (toList!4667 lt!1759284))) (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) lt!1760057)))

(declare-fun b!4600795 () Bool)

(assert (=> b!4600795 (= e!2869788 (forall!10613 (toList!4668 (extractMap!1386 (t!358217 (toList!4667 lt!1759284)))) lambda!186642))))

(assert (= (and d!1448797 c!788111) b!4600796))

(assert (= (and d!1448797 (not c!788111)) b!4600794))

(assert (= (and b!4600794 res!1924596) b!4600795))

(assert (= (or b!4600796 b!4600794) bm!321071))

(assert (= (or b!4600796 b!4600794) bm!321069))

(assert (= (or b!4600796 b!4600794) bm!321070))

(assert (= (and d!1448797 res!1924598) b!4600797))

(assert (= (and b!4600797 res!1924597) b!4600798))

(declare-fun m!5428589 () Bool)

(assert (=> bm!321071 m!5428589))

(declare-fun m!5428591 () Bool)

(assert (=> b!4600794 m!5428591))

(declare-fun m!5428593 () Bool)

(assert (=> b!4600794 m!5428593))

(assert (=> b!4600794 m!5427171))

(assert (=> b!4600794 m!5428591))

(declare-fun m!5428595 () Bool)

(assert (=> b!4600794 m!5428595))

(declare-fun m!5428597 () Bool)

(assert (=> b!4600794 m!5428597))

(declare-fun m!5428599 () Bool)

(assert (=> b!4600794 m!5428599))

(assert (=> b!4600794 m!5428595))

(declare-fun m!5428601 () Bool)

(assert (=> b!4600794 m!5428601))

(declare-fun m!5428605 () Bool)

(assert (=> b!4600794 m!5428605))

(declare-fun m!5428607 () Bool)

(assert (=> b!4600794 m!5428607))

(declare-fun m!5428609 () Bool)

(assert (=> b!4600794 m!5428609))

(assert (=> b!4600794 m!5428599))

(assert (=> b!4600794 m!5427171))

(declare-fun m!5428611 () Bool)

(assert (=> b!4600794 m!5428611))

(declare-fun m!5428613 () Bool)

(assert (=> b!4600797 m!5428613))

(assert (=> b!4600795 m!5428599))

(declare-fun m!5428615 () Bool)

(assert (=> d!1448797 m!5428615))

(declare-fun m!5428617 () Bool)

(assert (=> d!1448797 m!5428617))

(assert (=> bm!321070 m!5427171))

(declare-fun m!5428619 () Bool)

(assert (=> bm!321070 m!5428619))

(declare-fun m!5428621 () Bool)

(assert (=> b!4600798 m!5428621))

(declare-fun m!5428623 () Bool)

(assert (=> bm!321069 m!5428623))

(assert (=> b!4600036 d!1448797))

(declare-fun bs!1012518 () Bool)

(declare-fun d!1448821 () Bool)

(assert (= bs!1012518 (and d!1448821 d!1448329)))

(declare-fun lambda!186644 () Int)

(assert (=> bs!1012518 (= lambda!186644 lambda!186439)))

(declare-fun bs!1012519 () Bool)

(assert (= bs!1012519 (and d!1448821 d!1448497)))

(assert (=> bs!1012519 (= lambda!186644 lambda!186538)))

(declare-fun bs!1012520 () Bool)

(assert (= bs!1012520 (and d!1448821 d!1448391)))

(assert (=> bs!1012520 (= lambda!186644 lambda!186464)))

(declare-fun bs!1012521 () Bool)

(assert (= bs!1012521 (and d!1448821 d!1448419)))

(assert (=> bs!1012521 (not (= lambda!186644 lambda!186468))))

(declare-fun bs!1012522 () Bool)

(assert (= bs!1012522 (and d!1448821 d!1448415)))

(assert (=> bs!1012522 (= lambda!186644 lambda!186465)))

(declare-fun bs!1012523 () Bool)

(assert (= bs!1012523 (and d!1448821 d!1448595)))

(assert (=> bs!1012523 (= lambda!186644 lambda!186569)))

(declare-fun bs!1012524 () Bool)

(assert (= bs!1012524 (and d!1448821 d!1448283)))

(assert (=> bs!1012524 (= lambda!186644 lambda!186430)))

(declare-fun bs!1012525 () Bool)

(assert (= bs!1012525 (and d!1448821 d!1448389)))

(assert (=> bs!1012525 (= lambda!186644 lambda!186463)))

(declare-fun bs!1012526 () Bool)

(assert (= bs!1012526 (and d!1448821 d!1448481)))

(assert (=> bs!1012526 (= lambda!186644 lambda!186477)))

(declare-fun bs!1012527 () Bool)

(assert (= bs!1012527 (and d!1448821 d!1448273)))

(assert (=> bs!1012527 (= lambda!186644 lambda!186423)))

(declare-fun bs!1012528 () Bool)

(assert (= bs!1012528 (and d!1448821 d!1448381)))

(assert (=> bs!1012528 (= lambda!186644 lambda!186459)))

(declare-fun bs!1012529 () Bool)

(assert (= bs!1012529 (and d!1448821 d!1448383)))

(assert (=> bs!1012529 (= lambda!186644 lambda!186460)))

(declare-fun bs!1012530 () Bool)

(assert (= bs!1012530 (and d!1448821 d!1448373)))

(assert (=> bs!1012530 (= lambda!186644 lambda!186455)))

(declare-fun bs!1012531 () Bool)

(assert (= bs!1012531 (and d!1448821 d!1448615)))

(assert (=> bs!1012531 (= lambda!186644 lambda!186585)))

(declare-fun bs!1012532 () Bool)

(assert (= bs!1012532 (and d!1448821 d!1448351)))

(assert (=> bs!1012532 (= lambda!186644 lambda!186451)))

(declare-fun bs!1012533 () Bool)

(assert (= bs!1012533 (and d!1448821 d!1448637)))

(assert (=> bs!1012533 (= lambda!186644 lambda!186592)))

(declare-fun bs!1012534 () Bool)

(assert (= bs!1012534 (and d!1448821 start!459100)))

(assert (=> bs!1012534 (= lambda!186644 lambda!186420)))

(declare-fun bs!1012535 () Bool)

(assert (= bs!1012535 (and d!1448821 d!1448733)))

(assert (=> bs!1012535 (= lambda!186644 lambda!186621)))

(declare-fun lt!1760084 () ListMap!3929)

(assert (=> d!1448821 (invariantList!1128 (toList!4668 lt!1760084))))

(declare-fun e!2869815 () ListMap!3929)

(assert (=> d!1448821 (= lt!1760084 e!2869815)))

(declare-fun c!788116 () Bool)

(assert (=> d!1448821 (= c!788116 ((_ is Cons!51099) (t!358217 (toList!4667 lt!1759284))))))

(assert (=> d!1448821 (forall!10612 (t!358217 (toList!4667 lt!1759284)) lambda!186644)))

(assert (=> d!1448821 (= (extractMap!1386 (t!358217 (toList!4667 lt!1759284))) lt!1760084)))

(declare-fun b!4600828 () Bool)

(assert (=> b!4600828 (= e!2869815 (addToMapMapFromBucket!818 (_2!29172 (h!57067 (t!358217 (toList!4667 lt!1759284)))) (extractMap!1386 (t!358217 (t!358217 (toList!4667 lt!1759284))))))))

(declare-fun b!4600829 () Bool)

(assert (=> b!4600829 (= e!2869815 (ListMap!3930 Nil!51098))))

(assert (= (and d!1448821 c!788116) b!4600828))

(assert (= (and d!1448821 (not c!788116)) b!4600829))

(declare-fun m!5428649 () Bool)

(assert (=> d!1448821 m!5428649))

(declare-fun m!5428651 () Bool)

(assert (=> d!1448821 m!5428651))

(declare-fun m!5428653 () Bool)

(assert (=> b!4600828 m!5428653))

(assert (=> b!4600828 m!5428653))

(declare-fun m!5428655 () Bool)

(assert (=> b!4600828 m!5428655))

(assert (=> b!4600036 d!1448821))

(assert (=> b!4600013 d!1448465))

(assert (=> b!4600013 d!1448467))

(declare-fun d!1448829 () Bool)

(assert (=> d!1448829 (= (tail!7961 (toList!4667 lm!1477)) (t!358217 (toList!4667 lm!1477)))))

(assert (=> d!1448387 d!1448829))

(declare-fun d!1448831 () Bool)

(assert (=> d!1448831 (= (invariantList!1128 (toList!4668 lt!1759340)) (noDuplicatedKeys!327 (toList!4668 lt!1759340)))))

(declare-fun bs!1012536 () Bool)

(assert (= bs!1012536 d!1448831))

(declare-fun m!5428659 () Bool)

(assert (=> bs!1012536 m!5428659))

(assert (=> d!1448283 d!1448831))

(declare-fun d!1448835 () Bool)

(declare-fun res!1924625 () Bool)

(declare-fun e!2869826 () Bool)

(assert (=> d!1448835 (=> res!1924625 e!2869826)))

(assert (=> d!1448835 (= res!1924625 ((_ is Nil!51099) (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))

(assert (=> d!1448835 (= (forall!10612 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099) lambda!186430) e!2869826)))

(declare-fun b!4600847 () Bool)

(declare-fun e!2869827 () Bool)

(assert (=> b!4600847 (= e!2869826 e!2869827)))

(declare-fun res!1924626 () Bool)

(assert (=> b!4600847 (=> (not res!1924626) (not e!2869827))))

(assert (=> b!4600847 (= res!1924626 (dynLambda!21402 lambda!186430 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))))))

(declare-fun b!4600848 () Bool)

(assert (=> b!4600848 (= e!2869827 (forall!10612 (t!358217 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) lambda!186430))))

(assert (= (and d!1448835 (not res!1924625)) b!4600847))

(assert (= (and b!4600847 res!1924626) b!4600848))

(declare-fun b_lambda!169507 () Bool)

(assert (=> (not b_lambda!169507) (not b!4600847)))

(declare-fun m!5428665 () Bool)

(assert (=> b!4600847 m!5428665))

(declare-fun m!5428667 () Bool)

(assert (=> b!4600848 m!5428667))

(assert (=> d!1448283 d!1448835))

(declare-fun bs!1012538 () Bool)

(declare-fun b!4600865 () Bool)

(assert (= bs!1012538 (and b!4600865 b!4600719)))

(declare-fun lambda!186645 () Int)

(assert (=> bs!1012538 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 lt!1759359)) (= lambda!186645 lambda!186628))))

(declare-fun bs!1012539 () Bool)

(assert (= bs!1012539 (and b!4600865 b!4600134)))

(assert (=> bs!1012539 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186645 lambda!186473))))

(declare-fun bs!1012540 () Bool)

(assert (= bs!1012540 (and b!4600865 b!4600175)))

(assert (=> bs!1012540 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 lt!1759280)) (= lambda!186645 lambda!186475))))

(declare-fun bs!1012541 () Bool)

(assert (= bs!1012541 (and b!4600865 b!4600279)))

(assert (=> bs!1012541 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186645 lambda!186545))))

(declare-fun bs!1012542 () Bool)

(assert (= bs!1012542 (and b!4600865 b!4600684)))

(assert (=> bs!1012542 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186645 lambda!186623))))

(declare-fun bs!1012543 () Bool)

(assert (= bs!1012543 (and b!4600865 b!4600689)))

(assert (=> bs!1012543 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 lt!1759280))) (= lambda!186645 lambda!186622))))

(declare-fun bs!1012544 () Bool)

(assert (= bs!1012544 (and b!4600865 b!4600597)))

(assert (=> bs!1012544 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186645 lambda!186615))))

(declare-fun bs!1012545 () Bool)

(assert (= bs!1012545 (and b!4600865 b!4600594)))

(assert (=> bs!1012545 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186645 lambda!186614))))

(declare-fun bs!1012546 () Bool)

(assert (= bs!1012546 (and b!4600865 b!4600714)))

(assert (=> bs!1012546 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186645 lambda!186626))))

(declare-fun bs!1012547 () Bool)

(assert (= bs!1012547 (and b!4600865 b!4600687)))

(assert (=> bs!1012547 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (toList!4668 lt!1759280)) (= lambda!186645 lambda!186624))))

(declare-fun bs!1012548 () Bool)

(assert (= bs!1012548 (and b!4600865 b!4600599)))

(assert (=> bs!1012548 (= (= (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186645 lambda!186613))))

(assert (=> b!4600865 true))

(declare-fun bs!1012549 () Bool)

(declare-fun b!4600860 () Bool)

(assert (= bs!1012549 (and b!4600860 b!4600719)))

(declare-fun lambda!186646 () Int)

(assert (=> bs!1012549 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 lt!1759359)) (= lambda!186646 lambda!186628))))

(declare-fun bs!1012550 () Bool)

(assert (= bs!1012550 (and b!4600860 b!4600134)))

(assert (=> bs!1012550 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186646 lambda!186473))))

(declare-fun bs!1012551 () Bool)

(assert (= bs!1012551 (and b!4600860 b!4600175)))

(assert (=> bs!1012551 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 lt!1759280)) (= lambda!186646 lambda!186475))))

(declare-fun bs!1012552 () Bool)

(assert (= bs!1012552 (and b!4600860 b!4600865)))

(assert (=> bs!1012552 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (= lambda!186646 lambda!186645))))

(declare-fun bs!1012553 () Bool)

(assert (= bs!1012553 (and b!4600860 b!4600279)))

(assert (=> bs!1012553 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 (extractMap!1386 lt!1759278))) (= lambda!186646 lambda!186545))))

(declare-fun bs!1012555 () Bool)

(assert (= bs!1012555 (and b!4600860 b!4600684)))

(assert (=> bs!1012555 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186646 lambda!186623))))

(declare-fun bs!1012556 () Bool)

(assert (= bs!1012556 (and b!4600860 b!4600689)))

(assert (=> bs!1012556 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (t!358216 (toList!4668 lt!1759280))) (= lambda!186646 lambda!186622))))

(declare-fun bs!1012558 () Bool)

(assert (= bs!1012558 (and b!4600860 b!4600597)))

(assert (=> bs!1012558 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186646 lambda!186615))))

(declare-fun bs!1012560 () Bool)

(assert (= bs!1012560 (and b!4600860 b!4600594)))

(assert (=> bs!1012560 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186646 lambda!186614))))

(declare-fun bs!1012562 () Bool)

(assert (= bs!1012562 (and b!4600860 b!4600714)))

(assert (=> bs!1012562 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186646 lambda!186626))))

(declare-fun bs!1012564 () Bool)

(assert (= bs!1012564 (and b!4600860 b!4600687)))

(assert (=> bs!1012564 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (toList!4668 lt!1759280)) (= lambda!186646 lambda!186624))))

(declare-fun bs!1012566 () Bool)

(assert (= bs!1012566 (and b!4600860 b!4600599)))

(assert (=> bs!1012566 (= (= (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186646 lambda!186613))))

(assert (=> b!4600860 true))

(declare-fun bs!1012570 () Bool)

(declare-fun b!4600863 () Bool)

(assert (= bs!1012570 (and b!4600863 b!4600860)))

(declare-fun lambda!186648 () Int)

(assert (=> bs!1012570 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))) (t!358216 (toList!4668 (extractMap!1386 lt!1759278))))) (= lambda!186648 lambda!186646))))

(declare-fun bs!1012572 () Bool)

(assert (= bs!1012572 (and b!4600863 b!4600719)))

(assert (=> bs!1012572 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 lt!1759359)) (= lambda!186648 lambda!186628))))

(declare-fun bs!1012574 () Bool)

(assert (= bs!1012574 (and b!4600863 b!4600134)))

(assert (=> bs!1012574 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186648 lambda!186473))))

(declare-fun bs!1012576 () Bool)

(assert (= bs!1012576 (and b!4600863 b!4600175)))

(assert (=> bs!1012576 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 lt!1759280)) (= lambda!186648 lambda!186475))))

(declare-fun bs!1012578 () Bool)

(assert (= bs!1012578 (and b!4600863 b!4600865)))

(assert (=> bs!1012578 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (= lambda!186648 lambda!186645))))

(declare-fun bs!1012580 () Bool)

(assert (= bs!1012580 (and b!4600863 b!4600279)))

(assert (=> bs!1012580 (= lambda!186648 lambda!186545)))

(declare-fun bs!1012582 () Bool)

(assert (= bs!1012582 (and b!4600863 b!4600684)))

(assert (=> bs!1012582 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (Cons!51098 (h!57066 (toList!4668 lt!1759280)) (t!358216 (toList!4668 lt!1759280)))) (= lambda!186648 lambda!186623))))

(declare-fun bs!1012584 () Bool)

(assert (= bs!1012584 (and b!4600863 b!4600689)))

(assert (=> bs!1012584 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (t!358216 (toList!4668 lt!1759280))) (= lambda!186648 lambda!186622))))

(declare-fun bs!1012586 () Bool)

(assert (= bs!1012586 (and b!4600863 b!4600597)))

(assert (=> bs!1012586 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (= lambda!186648 lambda!186615))))

(declare-fun bs!1012587 () Bool)

(assert (= bs!1012587 (and b!4600863 b!4600594)))

(assert (=> bs!1012587 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (Cons!51098 (h!57066 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477)))))) (= lambda!186648 lambda!186614))))

(declare-fun bs!1012588 () Bool)

(assert (= bs!1012588 (and b!4600863 b!4600714)))

(assert (=> bs!1012588 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))) (= lambda!186648 lambda!186626))))

(declare-fun bs!1012589 () Bool)

(assert (= bs!1012589 (and b!4600863 b!4600687)))

(assert (=> bs!1012589 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (toList!4668 lt!1759280)) (= lambda!186648 lambda!186624))))

(declare-fun bs!1012590 () Bool)

(assert (= bs!1012590 (and b!4600863 b!4600599)))

(assert (=> bs!1012590 (= (= (toList!4668 (extractMap!1386 lt!1759278)) (t!358216 (toList!4668 (extractMap!1386 (toList!4667 lm!1477))))) (= lambda!186648 lambda!186613))))

(assert (=> b!4600863 true))

(declare-fun bs!1012591 () Bool)

(declare-fun b!4600858 () Bool)

(assert (= bs!1012591 (and b!4600858 b!4600280)))

(declare-fun lambda!186649 () Int)

(assert (=> bs!1012591 (= lambda!186649 lambda!186547)))

(declare-fun bs!1012592 () Bool)

(assert (= bs!1012592 (and b!4600858 b!4600682)))

(assert (=> bs!1012592 (= lambda!186649 lambda!186625)))

(declare-fun bs!1012593 () Bool)

(assert (= bs!1012593 (and b!4600858 b!4600135)))

(assert (=> bs!1012593 (= lambda!186649 lambda!186474)))

(declare-fun bs!1012594 () Bool)

(assert (= bs!1012594 (and b!4600858 b!4600592)))

(assert (=> bs!1012594 (= lambda!186649 lambda!186616)))

(declare-fun bs!1012595 () Bool)

(assert (= bs!1012595 (and b!4600858 b!4600176)))

(assert (=> bs!1012595 (= lambda!186649 lambda!186476)))

(declare-fun bs!1012596 () Bool)

(assert (= bs!1012596 (and b!4600858 b!4600720)))

(assert (=> bs!1012596 (= lambda!186649 lambda!186629)))

(declare-fun bs!1012597 () Bool)

(assert (= bs!1012597 (and b!4600858 b!4600715)))

(assert (=> bs!1012597 (= lambda!186649 lambda!186627)))

(declare-fun lt!1760096 () List!51225)

(declare-fun e!2869834 () Bool)

(assert (=> b!4600858 (= e!2869834 (= (content!8654 lt!1760096) (content!8654 (map!11289 (toList!4668 (extractMap!1386 lt!1759278)) lambda!186649))))))

(declare-fun b!4600859 () Bool)

(declare-fun e!2869836 () Unit!108343)

(declare-fun Unit!108547 () Unit!108343)

(assert (=> b!4600859 (= e!2869836 Unit!108547)))

(declare-fun e!2869837 () List!51225)

(assert (=> b!4600860 (= e!2869837 (Cons!51101 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278)))) (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 lt!1759278))))))))

(declare-fun c!788127 () Bool)

(assert (=> b!4600860 (= c!788127 (containsKey!2174 (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))))))))

(declare-fun lt!1760099 () Unit!108343)

(assert (=> b!4600860 (= lt!1760099 e!2869836)))

(declare-fun c!788126 () Bool)

(assert (=> b!4600860 (= c!788126 (contains!14059 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))))))))

(declare-fun lt!1760098 () Unit!108343)

(declare-fun e!2869835 () Unit!108343)

(assert (=> b!4600860 (= lt!1760098 e!2869835)))

(declare-fun lt!1760102 () List!51225)

(assert (=> b!4600860 (= lt!1760102 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))))))

(declare-fun lt!1760100 () Unit!108343)

(assert (=> b!4600860 (= lt!1760100 (lemmaForallContainsAddHeadPreserves!234 (t!358216 (toList!4668 (extractMap!1386 lt!1759278))) lt!1760102 (h!57066 (toList!4668 (extractMap!1386 lt!1759278)))))))

(assert (=> b!4600860 (forall!10615 lt!1760102 lambda!186646)))

(declare-fun lt!1760097 () Unit!108343)

(assert (=> b!4600860 (= lt!1760097 lt!1760100)))

(declare-fun b!4600861 () Bool)

(assert (=> b!4600861 false))

(declare-fun Unit!108549 () Unit!108343)

(assert (=> b!4600861 (= e!2869836 Unit!108549)))

(declare-fun b!4600862 () Bool)

(declare-fun res!1924631 () Bool)

(assert (=> b!4600862 (=> (not res!1924631) (not e!2869834))))

(assert (=> b!4600862 (= res!1924631 (= (length!482 lt!1760096) (length!483 (toList!4668 (extractMap!1386 lt!1759278)))))))

(declare-fun res!1924630 () Bool)

(assert (=> b!4600863 (=> (not res!1924630) (not e!2869834))))

(assert (=> b!4600863 (= res!1924630 (forall!10615 lt!1760096 lambda!186648))))

(declare-fun b!4600864 () Bool)

(declare-fun Unit!108550 () Unit!108343)

(assert (=> b!4600864 (= e!2869835 Unit!108550)))

(assert (=> b!4600865 false))

(declare-fun lt!1760101 () Unit!108343)

(assert (=> b!4600865 (= lt!1760101 (forallContained!2867 (getKeysList!577 (t!358216 (toList!4668 (extractMap!1386 lt!1759278)))) lambda!186645 (_1!29171 (h!57066 (toList!4668 (extractMap!1386 lt!1759278))))))))

(declare-fun Unit!108551 () Unit!108343)

(assert (=> b!4600865 (= e!2869835 Unit!108551)))

(declare-fun d!1448841 () Bool)

(assert (=> d!1448841 e!2869834))

(declare-fun res!1924632 () Bool)

(assert (=> d!1448841 (=> (not res!1924632) (not e!2869834))))

(assert (=> d!1448841 (= res!1924632 (noDuplicate!813 lt!1760096))))

(assert (=> d!1448841 (= lt!1760096 e!2869837)))

(declare-fun c!788128 () Bool)

(assert (=> d!1448841 (= c!788128 ((_ is Cons!51098) (toList!4668 (extractMap!1386 lt!1759278))))))

(assert (=> d!1448841 (invariantList!1128 (toList!4668 (extractMap!1386 lt!1759278)))))

(assert (=> d!1448841 (= (getKeysList!577 (toList!4668 (extractMap!1386 lt!1759278))) lt!1760096)))

(declare-fun b!4600866 () Bool)

(assert (=> b!4600866 (= e!2869837 Nil!51101)))

(assert (= (and d!1448841 c!788128) b!4600860))

(assert (= (and d!1448841 (not c!788128)) b!4600866))

(assert (= (and b!4600860 c!788127) b!4600861))

(assert (= (and b!4600860 (not c!788127)) b!4600859))

(assert (= (and b!4600860 c!788126) b!4600865))

(assert (= (and b!4600860 (not c!788126)) b!4600864))

(assert (= (and d!1448841 res!1924632) b!4600862))

(assert (= (and b!4600862 res!1924631) b!4600863))

(assert (= (and b!4600863 res!1924630) b!4600858))

(declare-fun m!5428697 () Bool)

(assert (=> b!4600863 m!5428697))

(declare-fun m!5428699 () Bool)

(assert (=> b!4600860 m!5428699))

(declare-fun m!5428701 () Bool)

(assert (=> b!4600860 m!5428701))

(declare-fun m!5428703 () Bool)

(assert (=> b!4600860 m!5428703))

(assert (=> b!4600860 m!5428703))

(declare-fun m!5428705 () Bool)

(assert (=> b!4600860 m!5428705))

(declare-fun m!5428707 () Bool)

(assert (=> b!4600860 m!5428707))

(declare-fun m!5428709 () Bool)

(assert (=> d!1448841 m!5428709))

(assert (=> d!1448841 m!5427561))

(declare-fun m!5428711 () Bool)

(assert (=> b!4600858 m!5428711))

(declare-fun m!5428713 () Bool)

(assert (=> b!4600858 m!5428713))

(assert (=> b!4600858 m!5428713))

(declare-fun m!5428715 () Bool)

(assert (=> b!4600858 m!5428715))

(assert (=> b!4600865 m!5428703))

(assert (=> b!4600865 m!5428703))

(declare-fun m!5428717 () Bool)

(assert (=> b!4600865 m!5428717))

(declare-fun m!5428719 () Bool)

(assert (=> b!4600862 m!5428719))

(assert (=> b!4600862 m!5427543))

(assert (=> b!4600000 d!1448841))

(declare-fun d!1448847 () Bool)

(declare-fun res!1924633 () Bool)

(declare-fun e!2869839 () Bool)

(assert (=> d!1448847 (=> res!1924633 e!2869839)))

(assert (=> d!1448847 (= res!1924633 ((_ is Nil!51099) (t!358217 (toList!4667 lm!1477))))))

(assert (=> d!1448847 (= (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186420) e!2869839)))

(declare-fun b!4600869 () Bool)

(declare-fun e!2869840 () Bool)

(assert (=> b!4600869 (= e!2869839 e!2869840)))

(declare-fun res!1924634 () Bool)

(assert (=> b!4600869 (=> (not res!1924634) (not e!2869840))))

(assert (=> b!4600869 (= res!1924634 (dynLambda!21402 lambda!186420 (h!57067 (t!358217 (toList!4667 lm!1477)))))))

(declare-fun b!4600870 () Bool)

(assert (=> b!4600870 (= e!2869840 (forall!10612 (t!358217 (t!358217 (toList!4667 lm!1477))) lambda!186420))))

(assert (= (and d!1448847 (not res!1924633)) b!4600869))

(assert (= (and b!4600869 res!1924634) b!4600870))

(declare-fun b_lambda!169509 () Bool)

(assert (=> (not b_lambda!169509) (not b!4600869)))

(declare-fun m!5428721 () Bool)

(assert (=> b!4600869 m!5428721))

(declare-fun m!5428723 () Bool)

(assert (=> b!4600870 m!5428723))

(assert (=> b!4600100 d!1448847))

(assert (=> b!4600002 d!1448519))

(assert (=> b!4600002 d!1448521))

(declare-fun d!1448849 () Bool)

(declare-fun res!1924635 () Bool)

(declare-fun e!2869841 () Bool)

(assert (=> d!1448849 (=> res!1924635 e!2869841)))

(assert (=> d!1448849 (= res!1924635 (and ((_ is Cons!51098) lt!1759474) (= (_1!29171 (h!57066 lt!1759474)) key!3287)))))

(assert (=> d!1448849 (= (containsKey!2170 lt!1759474 key!3287) e!2869841)))

(declare-fun b!4600871 () Bool)

(declare-fun e!2869842 () Bool)

(assert (=> b!4600871 (= e!2869841 e!2869842)))

(declare-fun res!1924636 () Bool)

(assert (=> b!4600871 (=> (not res!1924636) (not e!2869842))))

(assert (=> b!4600871 (= res!1924636 ((_ is Cons!51098) lt!1759474))))

(declare-fun b!4600872 () Bool)

(assert (=> b!4600872 (= e!2869842 (containsKey!2170 (t!358216 lt!1759474) key!3287))))

(assert (= (and d!1448849 (not res!1924635)) b!4600871))

(assert (= (and b!4600871 res!1924636) b!4600872))

(declare-fun m!5428725 () Bool)

(assert (=> b!4600872 m!5428725))

(assert (=> d!1448377 d!1448849))

(assert (=> d!1448377 d!1448409))

(declare-fun b!4600876 () Bool)

(declare-fun e!2869844 () Option!11398)

(assert (=> b!4600876 (= e!2869844 None!11397)))

(declare-fun b!4600875 () Bool)

(assert (=> b!4600875 (= e!2869844 (getValueByKey!1318 (t!358217 (toList!4667 lt!1759477)) (_1!29172 lt!1759277)))))

(declare-fun b!4600873 () Bool)

(declare-fun e!2869843 () Option!11398)

(assert (=> b!4600873 (= e!2869843 (Some!11397 (_2!29172 (h!57067 (toList!4667 lt!1759477)))))))

(declare-fun d!1448851 () Bool)

(declare-fun c!788130 () Bool)

(assert (=> d!1448851 (= c!788130 (and ((_ is Cons!51099) (toList!4667 lt!1759477)) (= (_1!29172 (h!57067 (toList!4667 lt!1759477))) (_1!29172 lt!1759277))))))

(assert (=> d!1448851 (= (getValueByKey!1318 (toList!4667 lt!1759477) (_1!29172 lt!1759277)) e!2869843)))

(declare-fun b!4600874 () Bool)

(assert (=> b!4600874 (= e!2869843 e!2869844)))

(declare-fun c!788131 () Bool)

(assert (=> b!4600874 (= c!788131 (and ((_ is Cons!51099) (toList!4667 lt!1759477)) (not (= (_1!29172 (h!57067 (toList!4667 lt!1759477))) (_1!29172 lt!1759277)))))))

(assert (= (and d!1448851 c!788130) b!4600873))

(assert (= (and d!1448851 (not c!788130)) b!4600874))

(assert (= (and b!4600874 c!788131) b!4600875))

(assert (= (and b!4600874 (not c!788131)) b!4600876))

(declare-fun m!5428727 () Bool)

(assert (=> b!4600875 m!5428727))

(assert (=> b!4600038 d!1448851))

(declare-fun d!1448853 () Bool)

(assert (=> d!1448853 (= (get!16891 (getValueByKey!1318 (toList!4667 lm!1477) hash!344)) (v!45387 (getValueByKey!1318 (toList!4667 lm!1477) hash!344)))))

(assert (=> d!1448397 d!1448853))

(assert (=> d!1448397 d!1448619))

(declare-fun d!1448855 () Bool)

(declare-fun res!1924637 () Bool)

(declare-fun e!2869845 () Bool)

(assert (=> d!1448855 (=> res!1924637 e!2869845)))

(assert (=> d!1448855 (= res!1924637 (not ((_ is Cons!51098) (t!358216 newBucket!178))))))

(assert (=> d!1448855 (= (noDuplicateKeys!1326 (t!358216 newBucket!178)) e!2869845)))

(declare-fun b!4600877 () Bool)

(declare-fun e!2869846 () Bool)

(assert (=> b!4600877 (= e!2869845 e!2869846)))

(declare-fun res!1924638 () Bool)

(assert (=> b!4600877 (=> (not res!1924638) (not e!2869846))))

(assert (=> b!4600877 (= res!1924638 (not (containsKey!2170 (t!358216 (t!358216 newBucket!178)) (_1!29171 (h!57066 (t!358216 newBucket!178))))))))

(declare-fun b!4600878 () Bool)

(assert (=> b!4600878 (= e!2869846 (noDuplicateKeys!1326 (t!358216 (t!358216 newBucket!178))))))

(assert (= (and d!1448855 (not res!1924637)) b!4600877))

(assert (= (and b!4600877 res!1924638) b!4600878))

(declare-fun m!5428729 () Bool)

(assert (=> b!4600877 m!5428729))

(declare-fun m!5428731 () Bool)

(assert (=> b!4600878 m!5428731))

(assert (=> b!4600073 d!1448855))

(declare-fun b!4600880 () Bool)

(declare-fun e!2869847 () List!51222)

(declare-fun e!2869848 () List!51222)

(assert (=> b!4600880 (= e!2869847 e!2869848)))

(declare-fun c!788132 () Bool)

(assert (=> b!4600880 (= c!788132 ((_ is Cons!51098) (t!358216 lt!1759288)))))

(declare-fun b!4600882 () Bool)

(assert (=> b!4600882 (= e!2869848 Nil!51098)))

(declare-fun d!1448857 () Bool)

(declare-fun lt!1760104 () List!51222)

(assert (=> d!1448857 (not (containsKey!2170 lt!1760104 key!3287))))

(assert (=> d!1448857 (= lt!1760104 e!2869847)))

(declare-fun c!788133 () Bool)

(assert (=> d!1448857 (= c!788133 (and ((_ is Cons!51098) (t!358216 lt!1759288)) (= (_1!29171 (h!57066 (t!358216 lt!1759288))) key!3287)))))

(assert (=> d!1448857 (noDuplicateKeys!1326 (t!358216 lt!1759288))))

(assert (=> d!1448857 (= (removePairForKey!951 (t!358216 lt!1759288) key!3287) lt!1760104)))

(declare-fun b!4600879 () Bool)

(assert (=> b!4600879 (= e!2869847 (t!358216 (t!358216 lt!1759288)))))

(declare-fun b!4600881 () Bool)

(assert (=> b!4600881 (= e!2869848 (Cons!51098 (h!57066 (t!358216 lt!1759288)) (removePairForKey!951 (t!358216 (t!358216 lt!1759288)) key!3287)))))

(assert (= (and d!1448857 c!788133) b!4600879))

(assert (= (and d!1448857 (not c!788133)) b!4600880))

(assert (= (and b!4600880 c!788132) b!4600881))

(assert (= (and b!4600880 (not c!788132)) b!4600882))

(declare-fun m!5428733 () Bool)

(assert (=> d!1448857 m!5428733))

(assert (=> d!1448857 m!5428519))

(declare-fun m!5428735 () Bool)

(assert (=> b!4600881 m!5428735))

(assert (=> b!4600054 d!1448857))

(declare-fun d!1448859 () Bool)

(assert (=> d!1448859 (= (invariantList!1128 (toList!4668 lt!1759405)) (noDuplicatedKeys!327 (toList!4668 lt!1759405)))))

(declare-fun bs!1012598 () Bool)

(assert (= bs!1012598 d!1448859))

(declare-fun m!5428737 () Bool)

(assert (=> bs!1012598 m!5428737))

(assert (=> d!1448329 d!1448859))

(declare-fun d!1448861 () Bool)

(declare-fun res!1924639 () Bool)

(declare-fun e!2869849 () Bool)

(assert (=> d!1448861 (=> res!1924639 e!2869849)))

(assert (=> d!1448861 (= res!1924639 ((_ is Nil!51099) lt!1759278))))

(assert (=> d!1448861 (= (forall!10612 lt!1759278 lambda!186439) e!2869849)))

(declare-fun b!4600883 () Bool)

(declare-fun e!2869850 () Bool)

(assert (=> b!4600883 (= e!2869849 e!2869850)))

(declare-fun res!1924640 () Bool)

(assert (=> b!4600883 (=> (not res!1924640) (not e!2869850))))

(assert (=> b!4600883 (= res!1924640 (dynLambda!21402 lambda!186439 (h!57067 lt!1759278)))))

(declare-fun b!4600884 () Bool)

(assert (=> b!4600884 (= e!2869850 (forall!10612 (t!358217 lt!1759278) lambda!186439))))

(assert (= (and d!1448861 (not res!1924639)) b!4600883))

(assert (= (and b!4600883 res!1924640) b!4600884))

(declare-fun b_lambda!169511 () Bool)

(assert (=> (not b_lambda!169511) (not b!4600883)))

(declare-fun m!5428739 () Bool)

(assert (=> b!4600883 m!5428739))

(declare-fun m!5428741 () Bool)

(assert (=> b!4600884 m!5428741))

(assert (=> d!1448329 d!1448861))

(declare-fun d!1448863 () Bool)

(declare-fun choose!30858 (Hashable!5725 K!12465) (_ BitVec 64))

(assert (=> d!1448863 (= (hash!3235 hashF!1107 key!3287) (choose!30858 hashF!1107 key!3287))))

(declare-fun bs!1012599 () Bool)

(assert (= bs!1012599 d!1448863))

(declare-fun m!5428743 () Bool)

(assert (=> bs!1012599 m!5428743))

(assert (=> d!1448417 d!1448863))

(assert (=> d!1448389 d!1448413))

(assert (=> d!1448389 d!1448415))

(declare-fun d!1448865 () Bool)

(assert (=> d!1448865 (not (contains!14057 (extractMap!1386 (toList!4667 lm!1477)) key!3287))))

(assert (=> d!1448865 true))

(declare-fun _$26!551 () Unit!108343)

(assert (=> d!1448865 (= (choose!30844 lm!1477 key!3287 hashF!1107) _$26!551)))

(declare-fun bs!1012635 () Bool)

(assert (= bs!1012635 d!1448865))

(assert (=> bs!1012635 m!5426771))

(assert (=> bs!1012635 m!5426771))

(assert (=> bs!1012635 m!5426773))

(assert (=> d!1448389 d!1448865))

(declare-fun d!1448879 () Bool)

(declare-fun res!1924650 () Bool)

(declare-fun e!2869860 () Bool)

(assert (=> d!1448879 (=> res!1924650 e!2869860)))

(assert (=> d!1448879 (= res!1924650 ((_ is Nil!51099) (toList!4667 lm!1477)))))

(assert (=> d!1448879 (= (forall!10612 (toList!4667 lm!1477) lambda!186463) e!2869860)))

(declare-fun b!4600896 () Bool)

(declare-fun e!2869861 () Bool)

(assert (=> b!4600896 (= e!2869860 e!2869861)))

(declare-fun res!1924651 () Bool)

(assert (=> b!4600896 (=> (not res!1924651) (not e!2869861))))

(assert (=> b!4600896 (= res!1924651 (dynLambda!21402 lambda!186463 (h!57067 (toList!4667 lm!1477))))))

(declare-fun b!4600897 () Bool)

(assert (=> b!4600897 (= e!2869861 (forall!10612 (t!358217 (toList!4667 lm!1477)) lambda!186463))))

(assert (= (and d!1448879 (not res!1924650)) b!4600896))

(assert (= (and b!4600896 res!1924651) b!4600897))

(declare-fun b_lambda!169519 () Bool)

(assert (=> (not b_lambda!169519) (not b!4600896)))

(declare-fun m!5428761 () Bool)

(assert (=> b!4600896 m!5428761))

(declare-fun m!5428763 () Bool)

(assert (=> b!4600897 m!5428763))

(assert (=> d!1448389 d!1448879))

(declare-fun d!1448881 () Bool)

(declare-fun c!788137 () Bool)

(assert (=> d!1448881 (= c!788137 ((_ is Nil!51098) (toList!4668 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)))))))

(declare-fun e!2869864 () (InoxSet tuple2!51754))

(assert (=> d!1448881 (= (content!8656 (toList!4668 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)))) e!2869864)))

(declare-fun b!4600902 () Bool)

(assert (=> b!4600902 (= e!2869864 ((as const (Array tuple2!51754 Bool)) false))))

(declare-fun b!4600903 () Bool)

(assert (=> b!4600903 (= e!2869864 ((_ map or) (store ((as const (Array tuple2!51754 Bool)) false) (h!57066 (toList!4668 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)))) true) (content!8656 (t!358216 (toList!4668 (extractMap!1386 (Cons!51099 lt!1759277 Nil!51099)))))))))

(assert (= (and d!1448881 c!788137) b!4600902))

(assert (= (and d!1448881 (not c!788137)) b!4600903))

(declare-fun m!5428765 () Bool)

(assert (=> b!4600903 m!5428765))

(declare-fun m!5428767 () Bool)

(assert (=> b!4600903 m!5428767))

(assert (=> d!1448323 d!1448881))

(declare-fun d!1448883 () Bool)

(declare-fun c!788138 () Bool)

(assert (=> d!1448883 (= c!788138 ((_ is Nil!51098) (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))))))

(declare-fun e!2869865 () (InoxSet tuple2!51754))

(assert (=> d!1448883 (= (content!8656 (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))) e!2869865)))

(declare-fun b!4600904 () Bool)

(assert (=> b!4600904 (= e!2869865 ((as const (Array tuple2!51754 Bool)) false))))

(declare-fun b!4600905 () Bool)

(assert (=> b!4600905 (= e!2869865 ((_ map or) (store ((as const (Array tuple2!51754 Bool)) false) (h!57066 (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))) true) (content!8656 (t!358216 (toList!4668 (-!502 (extractMap!1386 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)) key!3287))))))))

(assert (= (and d!1448883 c!788138) b!4600904))

(assert (= (and d!1448883 (not c!788138)) b!4600905))

(declare-fun m!5428769 () Bool)

(assert (=> b!4600905 m!5428769))

(declare-fun m!5428771 () Bool)

(assert (=> b!4600905 m!5428771))

(assert (=> d!1448323 d!1448883))

(assert (=> d!1448423 d!1448655))

(assert (=> d!1448413 d!1448513))

(declare-fun d!1448885 () Bool)

(declare-fun e!2869867 () Bool)

(assert (=> d!1448885 e!2869867))

(declare-fun res!1924652 () Bool)

(assert (=> d!1448885 (=> res!1924652 e!2869867)))

(declare-fun lt!1760129 () Bool)

(assert (=> d!1448885 (= res!1924652 (not lt!1760129))))

(declare-fun lt!1760126 () Bool)

(assert (=> d!1448885 (= lt!1760129 lt!1760126)))

(declare-fun lt!1760128 () Unit!108343)

(declare-fun e!2869866 () Unit!108343)

(assert (=> d!1448885 (= lt!1760128 e!2869866)))

(declare-fun c!788139 () Bool)

(assert (=> d!1448885 (= c!788139 lt!1760126)))

(assert (=> d!1448885 (= lt!1760126 (containsKey!2173 (toList!4667 lt!1759392) (_1!29172 lt!1759277)))))

(assert (=> d!1448885 (= (contains!14056 lt!1759392 (_1!29172 lt!1759277)) lt!1760129)))

(declare-fun b!4600906 () Bool)

(declare-fun lt!1760127 () Unit!108343)

(assert (=> b!4600906 (= e!2869866 lt!1760127)))

(assert (=> b!4600906 (= lt!1760127 (lemmaContainsKeyImpliesGetValueByKeyDefined!1222 (toList!4667 lt!1759392) (_1!29172 lt!1759277)))))

(assert (=> b!4600906 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759392) (_1!29172 lt!1759277)))))

(declare-fun b!4600907 () Bool)

(declare-fun Unit!108552 () Unit!108343)

(assert (=> b!4600907 (= e!2869866 Unit!108552)))

(declare-fun b!4600908 () Bool)

(assert (=> b!4600908 (= e!2869867 (isDefined!8666 (getValueByKey!1318 (toList!4667 lt!1759392) (_1!29172 lt!1759277))))))

(assert (= (and d!1448885 c!788139) b!4600906))

(assert (= (and d!1448885 (not c!788139)) b!4600907))

(assert (= (and d!1448885 (not res!1924652)) b!4600908))

(declare-fun m!5428773 () Bool)

(assert (=> d!1448885 m!5428773))

(declare-fun m!5428775 () Bool)

(assert (=> b!4600906 m!5428775))

(assert (=> b!4600906 m!5426943))

(assert (=> b!4600906 m!5426943))

(declare-fun m!5428777 () Bool)

(assert (=> b!4600906 m!5428777))

(assert (=> b!4600908 m!5426943))

(assert (=> b!4600908 m!5426943))

(assert (=> b!4600908 m!5428777))

(assert (=> d!1448317 d!1448885))

(declare-fun b!4600912 () Bool)

(declare-fun e!2869869 () Option!11398)

(assert (=> b!4600912 (= e!2869869 None!11397)))

(declare-fun b!4600911 () Bool)

(assert (=> b!4600911 (= e!2869869 (getValueByKey!1318 (t!358217 lt!1759393) (_1!29172 lt!1759277)))))

(declare-fun b!4600909 () Bool)

(declare-fun e!2869868 () Option!11398)

(assert (=> b!4600909 (= e!2869868 (Some!11397 (_2!29172 (h!57067 lt!1759393))))))

(declare-fun d!1448887 () Bool)

(declare-fun c!788140 () Bool)

(assert (=> d!1448887 (= c!788140 (and ((_ is Cons!51099) lt!1759393) (= (_1!29172 (h!57067 lt!1759393)) (_1!29172 lt!1759277))))))

(assert (=> d!1448887 (= (getValueByKey!1318 lt!1759393 (_1!29172 lt!1759277)) e!2869868)))

(declare-fun b!4600910 () Bool)

(assert (=> b!4600910 (= e!2869868 e!2869869)))

(declare-fun c!788141 () Bool)

(assert (=> b!4600910 (= c!788141 (and ((_ is Cons!51099) lt!1759393) (not (= (_1!29172 (h!57067 lt!1759393)) (_1!29172 lt!1759277)))))))

(assert (= (and d!1448887 c!788140) b!4600909))

(assert (= (and d!1448887 (not c!788140)) b!4600910))

(assert (= (and b!4600910 c!788141) b!4600911))

(assert (= (and b!4600910 (not c!788141)) b!4600912))

(declare-fun m!5428779 () Bool)

(assert (=> b!4600911 m!5428779))

(assert (=> d!1448317 d!1448887))

(declare-fun d!1448889 () Bool)

(assert (=> d!1448889 (= (getValueByKey!1318 lt!1759393 (_1!29172 lt!1759277)) (Some!11397 (_2!29172 lt!1759277)))))

(declare-fun lt!1760130 () Unit!108343)

(assert (=> d!1448889 (= lt!1760130 (choose!30857 lt!1759393 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(declare-fun e!2869870 () Bool)

(assert (=> d!1448889 e!2869870))

(declare-fun res!1924653 () Bool)

(assert (=> d!1448889 (=> (not res!1924653) (not e!2869870))))

(assert (=> d!1448889 (= res!1924653 (isStrictlySorted!544 lt!1759393))))

(assert (=> d!1448889 (= (lemmaContainsTupThenGetReturnValue!800 lt!1759393 (_1!29172 lt!1759277) (_2!29172 lt!1759277)) lt!1760130)))

(declare-fun b!4600913 () Bool)

(declare-fun res!1924654 () Bool)

(assert (=> b!4600913 (=> (not res!1924654) (not e!2869870))))

(assert (=> b!4600913 (= res!1924654 (containsKey!2173 lt!1759393 (_1!29172 lt!1759277)))))

(declare-fun b!4600914 () Bool)

(assert (=> b!4600914 (= e!2869870 (contains!14055 lt!1759393 (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277))))))

(assert (= (and d!1448889 res!1924653) b!4600913))

(assert (= (and b!4600913 res!1924654) b!4600914))

(assert (=> d!1448889 m!5426937))

(declare-fun m!5428781 () Bool)

(assert (=> d!1448889 m!5428781))

(declare-fun m!5428783 () Bool)

(assert (=> d!1448889 m!5428783))

(declare-fun m!5428785 () Bool)

(assert (=> b!4600913 m!5428785))

(declare-fun m!5428787 () Bool)

(assert (=> b!4600914 m!5428787))

(assert (=> d!1448317 d!1448889))

(declare-fun b!4600915 () Bool)

(declare-fun e!2869874 () Bool)

(declare-fun lt!1760131 () List!51223)

(assert (=> b!4600915 (= e!2869874 (contains!14055 lt!1760131 (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277))))))

(declare-fun b!4600916 () Bool)

(declare-fun e!2869875 () List!51223)

(declare-fun call!321084 () List!51223)

(assert (=> b!4600916 (= e!2869875 call!321084)))

(declare-fun b!4600917 () Bool)

(declare-fun e!2869873 () List!51223)

(assert (=> b!4600917 (= e!2869873 (insertStrictlySorted!492 (t!358217 (toList!4667 lm!1477)) (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))

(declare-fun d!1448891 () Bool)

(assert (=> d!1448891 e!2869874))

(declare-fun res!1924655 () Bool)

(assert (=> d!1448891 (=> (not res!1924655) (not e!2869874))))

(assert (=> d!1448891 (= res!1924655 (isStrictlySorted!544 lt!1760131))))

(declare-fun e!2869871 () List!51223)

(assert (=> d!1448891 (= lt!1760131 e!2869871)))

(declare-fun c!788143 () Bool)

(assert (=> d!1448891 (= c!788143 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (bvslt (_1!29172 (h!57067 (toList!4667 lm!1477))) (_1!29172 lt!1759277))))))

(assert (=> d!1448891 (isStrictlySorted!544 (toList!4667 lm!1477))))

(assert (=> d!1448891 (= (insertStrictlySorted!492 (toList!4667 lm!1477) (_1!29172 lt!1759277) (_2!29172 lt!1759277)) lt!1760131)))

(declare-fun b!4600918 () Bool)

(declare-fun e!2869872 () List!51223)

(declare-fun call!321085 () List!51223)

(assert (=> b!4600918 (= e!2869872 call!321085)))

(declare-fun bm!321079 () Bool)

(declare-fun call!321086 () List!51223)

(assert (=> bm!321079 (= call!321085 call!321086)))

(declare-fun c!788144 () Bool)

(declare-fun b!4600919 () Bool)

(declare-fun c!788145 () Bool)

(assert (=> b!4600919 (= e!2869873 (ite c!788145 (t!358217 (toList!4667 lm!1477)) (ite c!788144 (Cons!51099 (h!57067 (toList!4667 lm!1477)) (t!358217 (toList!4667 lm!1477))) Nil!51099)))))

(declare-fun b!4600920 () Bool)

(assert (=> b!4600920 (= c!788144 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (bvsgt (_1!29172 (h!57067 (toList!4667 lm!1477))) (_1!29172 lt!1759277))))))

(assert (=> b!4600920 (= e!2869872 e!2869875)))

(declare-fun bm!321080 () Bool)

(assert (=> bm!321080 (= call!321084 call!321085)))

(declare-fun b!4600921 () Bool)

(assert (=> b!4600921 (= e!2869871 call!321086)))

(declare-fun b!4600922 () Bool)

(assert (=> b!4600922 (= e!2869875 call!321084)))

(declare-fun b!4600923 () Bool)

(declare-fun res!1924656 () Bool)

(assert (=> b!4600923 (=> (not res!1924656) (not e!2869874))))

(assert (=> b!4600923 (= res!1924656 (containsKey!2173 lt!1760131 (_1!29172 lt!1759277)))))

(declare-fun b!4600924 () Bool)

(assert (=> b!4600924 (= e!2869871 e!2869872)))

(assert (=> b!4600924 (= c!788145 (and ((_ is Cons!51099) (toList!4667 lm!1477)) (= (_1!29172 (h!57067 (toList!4667 lm!1477))) (_1!29172 lt!1759277))))))

(declare-fun bm!321081 () Bool)

(assert (=> bm!321081 (= call!321086 ($colon$colon!1045 e!2869873 (ite c!788143 (h!57067 (toList!4667 lm!1477)) (tuple2!51757 (_1!29172 lt!1759277) (_2!29172 lt!1759277)))))))

(declare-fun c!788142 () Bool)

(assert (=> bm!321081 (= c!788142 c!788143)))

(assert (= (and d!1448891 c!788143) b!4600921))

(assert (= (and d!1448891 (not c!788143)) b!4600924))

(assert (= (and b!4600924 c!788145) b!4600918))

(assert (= (and b!4600924 (not c!788145)) b!4600920))

(assert (= (and b!4600920 c!788144) b!4600922))

(assert (= (and b!4600920 (not c!788144)) b!4600916))

(assert (= (or b!4600922 b!4600916) bm!321080))

(assert (= (or b!4600918 bm!321080) bm!321079))

(assert (= (or b!4600921 bm!321079) bm!321081))

(assert (= (and bm!321081 c!788142) b!4600917))

(assert (= (and bm!321081 (not c!788142)) b!4600919))

(assert (= (and d!1448891 res!1924655) b!4600923))

(assert (= (and b!4600923 res!1924656) b!4600915))

(declare-fun m!5428789 () Bool)

(assert (=> b!4600917 m!5428789))

(declare-fun m!5428791 () Bool)

(assert (=> bm!321081 m!5428791))

(declare-fun m!5428793 () Bool)

(assert (=> b!4600915 m!5428793))

(declare-fun m!5428795 () Bool)

(assert (=> d!1448891 m!5428795))

(assert (=> d!1448891 m!5427221))

(declare-fun m!5428797 () Bool)

(assert (=> b!4600923 m!5428797))

(assert (=> d!1448317 d!1448891))

(declare-fun b!4600925 () Bool)

(declare-fun e!2869876 () Bool)

(declare-fun tp!1340528 () Bool)

(assert (=> b!4600925 (= e!2869876 (and tp_is_empty!28597 tp_is_empty!28599 tp!1340528))))

(assert (=> b!4600110 (= tp!1340527 e!2869876)))

(assert (= (and b!4600110 ((_ is Cons!51098) (t!358216 (t!358216 newBucket!178)))) b!4600925))

(declare-fun b!4600926 () Bool)

(declare-fun e!2869877 () Bool)

(declare-fun tp!1340529 () Bool)

(assert (=> b!4600926 (= e!2869877 (and tp_is_empty!28597 tp_is_empty!28599 tp!1340529))))

(assert (=> b!4600105 (= tp!1340523 e!2869877)))

(assert (= (and b!4600105 ((_ is Cons!51098) (_2!29172 (h!57067 (toList!4667 lm!1477))))) b!4600926))

(declare-fun b!4600927 () Bool)

(declare-fun e!2869878 () Bool)

(declare-fun tp!1340530 () Bool)

(declare-fun tp!1340531 () Bool)

(assert (=> b!4600927 (= e!2869878 (and tp!1340530 tp!1340531))))

(assert (=> b!4600105 (= tp!1340524 e!2869878)))

(assert (= (and b!4600105 ((_ is Cons!51099) (t!358217 (toList!4667 lm!1477)))) b!4600927))

(declare-fun b_lambda!169521 () Bool)

(assert (= b_lambda!169499 (or d!1448419 b_lambda!169521)))

(declare-fun bs!1012655 () Bool)

(declare-fun d!1448893 () Bool)

(assert (= bs!1012655 (and d!1448893 d!1448419)))

(assert (=> bs!1012655 (= (dynLambda!21402 lambda!186468 (h!57067 (toList!4667 lm!1477))) (allKeysSameHash!1182 (_2!29172 (h!57067 (toList!4667 lm!1477))) (_1!29172 (h!57067 (toList!4667 lm!1477))) hashF!1107))))

(declare-fun m!5428835 () Bool)

(assert (=> bs!1012655 m!5428835))

(assert (=> b!4600633 d!1448893))

(declare-fun b_lambda!169523 () Bool)

(assert (= b_lambda!169511 (or d!1448329 b_lambda!169523)))

(declare-fun bs!1012656 () Bool)

(declare-fun d!1448897 () Bool)

(assert (= bs!1012656 (and d!1448897 d!1448329)))

(assert (=> bs!1012656 (= (dynLambda!21402 lambda!186439 (h!57067 lt!1759278)) (noDuplicateKeys!1326 (_2!29172 (h!57067 lt!1759278))))))

(assert (=> bs!1012656 m!5427997))

(assert (=> b!4600883 d!1448897))

(declare-fun b_lambda!169525 () Bool)

(assert (= b_lambda!169471 (or d!1448379 b_lambda!169525)))

(declare-fun bs!1012657 () Bool)

(declare-fun d!1448899 () Bool)

(assert (= bs!1012657 (and d!1448899 d!1448379)))

(assert (=> bs!1012657 (= (dynLambda!21403 lambda!186458 (h!57066 newBucket!178)) (= (hash!3231 hashF!1107 (_1!29171 (h!57066 newBucket!178))) hash!344))))

(declare-fun m!5428837 () Bool)

(assert (=> bs!1012657 m!5428837))

(assert (=> b!4600187 d!1448899))

(declare-fun b_lambda!169527 () Bool)

(assert (= b_lambda!169483 (or d!1448383 b_lambda!169527)))

(declare-fun bs!1012658 () Bool)

(declare-fun d!1448901 () Bool)

(assert (= bs!1012658 (and d!1448901 d!1448383)))

(assert (=> bs!1012658 (= (dynLambda!21402 lambda!186460 (h!57067 (toList!4667 lt!1759284))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))

(assert (=> bs!1012658 m!5428617))

(assert (=> b!4600506 d!1448901))

(declare-fun b_lambda!169529 () Bool)

(assert (= b_lambda!169519 (or d!1448389 b_lambda!169529)))

(declare-fun bs!1012660 () Bool)

(declare-fun d!1448903 () Bool)

(assert (= bs!1012660 (and d!1448903 d!1448389)))

(assert (=> bs!1012660 (= (dynLambda!21402 lambda!186463 (h!57067 (toList!4667 lm!1477))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> bs!1012660 m!5426761))

(assert (=> b!4600896 d!1448903))

(declare-fun b_lambda!169531 () Bool)

(assert (= b_lambda!169485 (or d!1448273 b_lambda!169531)))

(declare-fun bs!1012662 () Bool)

(declare-fun d!1448905 () Bool)

(assert (= bs!1012662 (and d!1448905 d!1448273)))

(assert (=> bs!1012662 (= (dynLambda!21402 lambda!186423 (h!57067 (toList!4667 lt!1759284))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lt!1759284)))))))

(assert (=> bs!1012662 m!5428617))

(assert (=> b!4600511 d!1448905))

(declare-fun b_lambda!169533 () Bool)

(assert (= b_lambda!169469 (or d!1448381 b_lambda!169533)))

(declare-fun bs!1012664 () Bool)

(declare-fun d!1448907 () Bool)

(assert (= bs!1012664 (and d!1448907 d!1448381)))

(assert (=> bs!1012664 (= (dynLambda!21402 lambda!186459 (h!57067 (t!358217 (toList!4667 lm!1477)))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))

(assert (=> bs!1012664 m!5427461))

(assert (=> b!4600111 d!1448907))

(declare-fun b_lambda!169535 () Bool)

(assert (= b_lambda!169475 (or d!1448415 b_lambda!169535)))

(declare-fun bs!1012666 () Bool)

(declare-fun d!1448909 () Bool)

(assert (= bs!1012666 (and d!1448909 d!1448415)))

(assert (=> bs!1012666 (= (dynLambda!21402 lambda!186465 (h!57067 (toList!4667 lm!1477))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> bs!1012666 m!5426761))

(assert (=> b!4600285 d!1448909))

(declare-fun b_lambda!169537 () Bool)

(assert (= b_lambda!169497 (or d!1448373 b_lambda!169537)))

(declare-fun bs!1012669 () Bool)

(declare-fun d!1448911 () Bool)

(assert (= bs!1012669 (and d!1448911 d!1448373)))

(assert (=> bs!1012669 (= (dynLambda!21402 lambda!186455 (h!57067 (Cons!51099 lt!1759277 Nil!51099))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (Cons!51099 lt!1759277 Nil!51099)))))))

(assert (=> bs!1012669 m!5428315))

(assert (=> b!4600621 d!1448911))

(declare-fun b_lambda!169539 () Bool)

(assert (= b_lambda!169509 (or start!459100 b_lambda!169539)))

(declare-fun bs!1012671 () Bool)

(declare-fun d!1448913 () Bool)

(assert (= bs!1012671 (and d!1448913 start!459100)))

(assert (=> bs!1012671 (= (dynLambda!21402 lambda!186420 (h!57067 (t!358217 (toList!4667 lm!1477)))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (t!358217 (toList!4667 lm!1477))))))))

(assert (=> bs!1012671 m!5427461))

(assert (=> b!4600869 d!1448913))

(declare-fun b_lambda!169541 () Bool)

(assert (= b_lambda!169495 (or d!1448391 b_lambda!169541)))

(declare-fun bs!1012674 () Bool)

(declare-fun d!1448915 () Bool)

(assert (= bs!1012674 (and d!1448915 d!1448391)))

(assert (=> bs!1012674 (= (dynLambda!21402 lambda!186464 (h!57067 (toList!4667 lm!1477))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 lm!1477)))))))

(assert (=> bs!1012674 m!5426761))

(assert (=> b!4600619 d!1448915))

(declare-fun b_lambda!169543 () Bool)

(assert (= b_lambda!169503 (or start!459100 b_lambda!169543)))

(assert (=> d!1448785 d!1448427))

(declare-fun b_lambda!169545 () Bool)

(assert (= b_lambda!169473 (or d!1448351 b_lambda!169545)))

(declare-fun bs!1012676 () Bool)

(declare-fun d!1448917 () Bool)

(assert (= bs!1012676 (and d!1448917 d!1448351)))

(assert (=> bs!1012676 (= (dynLambda!21402 lambda!186451 (h!57067 (toList!4667 (ListLongMap!3300 lt!1759278)))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (toList!4667 (ListLongMap!3300 lt!1759278))))))))

(declare-fun m!5428839 () Bool)

(assert (=> bs!1012676 m!5428839))

(assert (=> b!4600208 d!1448917))

(declare-fun b_lambda!169547 () Bool)

(assert (= b_lambda!169507 (or d!1448283 b_lambda!169547)))

(declare-fun bs!1012679 () Bool)

(declare-fun d!1448919 () Bool)

(assert (= bs!1012679 (and d!1448919 d!1448283)))

(assert (=> bs!1012679 (= (dynLambda!21402 lambda!186430 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099))) (noDuplicateKeys!1326 (_2!29172 (h!57067 (Cons!51099 (tuple2!51757 hash!344 (_2!29172 (h!57067 (toList!4667 lm!1477)))) Nil!51099)))))))

(assert (=> bs!1012679 m!5427929))

(assert (=> b!4600847 d!1448919))

(check-sat (not b!4600270) (not b_lambda!169529) (not d!1448645) (not b!4600616) (not b!4600195) (not d!1448797) (not bs!1012662) (not b!4600689) (not d!1448617) (not b!4600915) (not b!4600877) (not d!1448611) (not b!4600731) (not b!4600134) (not bm!321069) (not bm!321027) (not d!1448841) (not d!1448755) (not b!4600622) (not d!1448535) (not b!4600487) (not b_lambda!169527) (not d!1448863) (not b!4600897) (not b!4600515) (not b!4600399) (not d!1448713) (not b!4600292) (not d!1448537) (not b!4600404) (not b!4600237) (not b!4600196) (not b_lambda!169545) (not b!4600776) (not b_lambda!169537) (not d!1448521) (not d!1448623) (not b!4600620) (not b!4600906) (not b!4600735) (not b!4600720) (not b!4600163) (not b!4600828) (not d!1448439) (not b!4600670) (not bm!321034) (not b!4600794) (not b!4600288) (not d!1448531) (not b!4600485) (not b!4600911) (not b!4600636) (not b!4600728) (not b!4600191) (not bm!321070) (not bs!1012671) (not b!4600289) (not d!1448639) (not d!1448859) (not b!4600290) (not b_lambda!169541) (not d!1448505) (not b!4600927) (not b!4600282) (not b!4600204) (not d!1448769) (not d!1448595) (not d!1448599) (not b!4600646) (not d!1448461) (not b!4600712) (not b!4600719) (not bm!321033) (not b!4600905) (not b!4600863) (not b!4600717) (not d!1448429) (not b!4600490) (not d!1448765) (not b_lambda!169535) (not b!4600597) (not b!4600157) (not b!4600225) (not b!4600201) (not b!4600872) (not d!1448731) (not b_lambda!169539) (not d!1448653) (not b!4600512) (not bm!320989) (not b!4600492) (not b!4600193) (not b!4600286) (not d!1448469) (not b!4600171) (not b!4600481) (not bm!321025) (not b!4600599) (not d!1448457) (not b!4600718) (not b!4600209) (not b!4600173) (not b!4600473) (not b!4600224) (not bm!321042) (not bm!321024) (not bm!321030) (not b!4600618) (not d!1448515) (not bm!320998) (not d!1448629) (not b!4600401) (not b!4600686) (not b!4600403) (not b!4600139) (not d!1448465) (not b!4600405) (not b!4600133) (not b!4600510) (not b!4600278) (not d!1448709) (not b!4600742) (not d!1448467) (not b!4600152) (not b!4600176) (not b!4600648) (not b!4600875) (not b!4600714) (not b!4600266) (not b!4600120) (not b!4600923) (not b!4600649) (not b!4600504) (not b!4600169) (not b!4600493) (not d!1448857) (not b!4600450) (not b!4600792) (not b!4600913) (not bm!320996) (not d!1448481) (not b!4600798) (not b!4600596) (not bs!1012657) (not b!4600263) (not bm!321031) (not b!4600407) (not d!1448733) (not d!1448865) (not b!4600526) (not bm!321038) (not d!1448637) (not d!1448659) (not bm!321032) (not d!1448519) (not bm!321043) (not b!4600797) (not b!4600410) (not b!4600793) (not b!4600862) (not b_lambda!169543) (not b!4600644) (not b!4600903) (not d!1448885) (not b!4600592) (not bs!1012674) tp_is_empty!28599 (not d!1448473) (not bs!1012656) (not d!1448651) (not b!4600194) (not bs!1012676) tp_is_empty!28597 (not bm!321011) (not b!4600508) (not bs!1012666) (not bm!321044) (not b!4600412) (not d!1448523) (not bm!320997) (not b!4600287) (not b!4600126) (not b!4600178) (not b!4600884) (not b_lambda!169465) (not b!4600453) (not bm!321071) (not b_lambda!169467) (not bs!1012664) (not d!1448735) (not b!4600188) (not b!4600280) (not bs!1012655) (not b!4600878) (not b!4600227) (not b!4600634) (not b!4600475) (not b!4600495) (not b!4600414) (not b!4600279) (not d!1448891) (not b!4600789) (not bm!321081) (not b!4600791) (not b!4600645) (not bm!321037) (not d!1448749) (not d!1448485) (not b_lambda!169521) (not b!4600741) (not b!4600477) (not bm!321029) (not b!4600785) (not b!4600786) (not b_lambda!169523) (not bm!321035) (not b!4600119) (not b!4600782) (not d!1448831) (not b!4600787) (not d!1448821) (not b_lambda!169531) (not b!4600277) (not bs!1012669) (not b!4600192) (not bs!1012679) (not b!4600594) (not b!4600112) (not d!1448453) (not b!4600228) (not b!4600917) (not bs!1012660) (not d!1448495) (not d!1448609) (not d!1448601) (not b!4600268) (not bm!321036) (not b!4600455) (not d!1448479) (not b!4600469) (not d!1448471) (not bm!321026) (not b!4600409) (not b!4600687) (not d!1448503) (not d!1448597) (not b!4600774) (not b!4600860) (not d!1448621) (not b!4600507) (not d!1448511) (not b!4600284) (not bm!321068) (not b!4600926) (not b!4600925) (not b!4600247) (not d!1448615) (not b!4600295) (not b!4600908) (not b!4600456) (not d!1448889) (not d!1448527) (not b!4600713) (not d!1448449) (not b!4600452) (not d!1448625) (not b!4600518) (not b!4600682) (not d!1448589) (not d!1448525) (not b_lambda!169533) (not bm!321028) (not b!4600865) (not d!1448717) (not b!4600848) (not b_lambda!169547) (not b!4600715) (not b!4600684) (not b!4600795) (not d!1448499) (not b!4600632) (not b!4600914) (not d!1448771) (not d!1448445) (not b!4600118) (not b!4600496) (not b!4600471) (not bs!1012658) (not b!4600472) (not b!4600870) (not b!4600881) (not b!4600174) (not b_lambda!169525) (not b!4600476) (not b!4600858) (not d!1448643) (not b!4600241) (not d!1448437) (not b!4600291) (not b!4600175) (not b!4600135) (not d!1448497) (not d!1448787))
(check-sat)
