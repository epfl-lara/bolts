; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473048 () Bool)

(assert start!473048)

(declare-fun b!4683155 () Bool)

(declare-fun e!2921781 () Bool)

(declare-fun e!2921783 () Bool)

(assert (=> b!4683155 (= e!2921781 e!2921783)))

(declare-fun res!1974122 () Bool)

(assert (=> b!4683155 (=> res!1974122 e!2921783)))

(declare-datatypes ((K!13690 0))(
  ( (K!13691 (val!19223 Int)) )
))
(declare-datatypes ((V!13936 0))(
  ( (V!13937 (val!19224 Int)) )
))
(declare-datatypes ((tuple2!53658 0))(
  ( (tuple2!53659 (_1!30123 K!13690) (_2!30123 V!13936)) )
))
(declare-datatypes ((List!52433 0))(
  ( (Nil!52309) (Cons!52309 (h!58530 tuple2!53658) (t!359595 List!52433)) )
))
(declare-fun oldBucket!34 () List!52433)

(declare-fun key!4653 () K!13690)

(declare-fun containsKey!2967 (List!52433 K!13690) Bool)

(assert (=> b!4683155 (= res!1974122 (not (containsKey!2967 (t!359595 oldBucket!34) key!4653)))))

(assert (=> b!4683155 (containsKey!2967 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6185 0))(
  ( (HashableExt!6184 (__x!31888 Int)) )
))
(declare-fun hashF!1323 () Hashable!6185)

(declare-datatypes ((Unit!123049 0))(
  ( (Unit!123050) )
))
(declare-fun lt!1842790 () Unit!123049)

(declare-fun lemmaGetPairDefinedThenContainsKey!168 (List!52433 K!13690 Hashable!6185) Unit!123049)

(assert (=> b!4683155 (= lt!1842790 (lemmaGetPairDefinedThenContainsKey!168 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1842789 () List!52433)

(declare-datatypes ((Option!11991 0))(
  ( (None!11990) (Some!11990 (v!46357 tuple2!53658)) )
))
(declare-fun isDefined!9246 (Option!11991) Bool)

(declare-fun getPair!420 (List!52433 K!13690) Option!11991)

(assert (=> b!4683155 (isDefined!9246 (getPair!420 lt!1842789 key!4653))))

(declare-fun lambda!205323 () Int)

(declare-fun lt!1842792 () Unit!123049)

(declare-datatypes ((tuple2!53660 0))(
  ( (tuple2!53661 (_1!30124 (_ BitVec 64)) (_2!30124 List!52433)) )
))
(declare-datatypes ((List!52434 0))(
  ( (Nil!52310) (Cons!52310 (h!58531 tuple2!53660) (t!359596 List!52434)) )
))
(declare-datatypes ((ListLongMap!4051 0))(
  ( (ListLongMap!4052 (toList!5521 List!52434)) )
))
(declare-fun lm!2023 () ListLongMap!4051)

(declare-fun lt!1842793 () tuple2!53660)

(declare-fun forallContained!3366 (List!52434 Int tuple2!53660) Unit!123049)

(assert (=> b!4683155 (= lt!1842792 (forallContained!3366 (toList!5521 lm!2023) lambda!205323 lt!1842793))))

(declare-fun contains!15446 (List!52434 tuple2!53660) Bool)

(assert (=> b!4683155 (contains!15446 (toList!5521 lm!2023) lt!1842793)))

(declare-fun lt!1842788 () (_ BitVec 64))

(assert (=> b!4683155 (= lt!1842793 (tuple2!53661 lt!1842788 lt!1842789))))

(declare-fun lt!1842794 () Unit!123049)

(declare-fun lemmaGetValueImpliesTupleContained!225 (ListLongMap!4051 (_ BitVec 64) List!52433) Unit!123049)

(assert (=> b!4683155 (= lt!1842794 (lemmaGetValueImpliesTupleContained!225 lm!2023 lt!1842788 lt!1842789))))

(declare-fun apply!12299 (ListLongMap!4051 (_ BitVec 64)) List!52433)

(assert (=> b!4683155 (= lt!1842789 (apply!12299 lm!2023 lt!1842788))))

(declare-fun contains!15447 (ListLongMap!4051 (_ BitVec 64)) Bool)

(assert (=> b!4683155 (contains!15447 lm!2023 lt!1842788)))

(declare-fun lt!1842787 () Unit!123049)

(declare-fun lemmaInGenMapThenLongMapContainsHash!626 (ListLongMap!4051 K!13690 Hashable!6185) Unit!123049)

(assert (=> b!4683155 (= lt!1842787 (lemmaInGenMapThenLongMapContainsHash!626 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1842786 () Unit!123049)

(declare-fun lemmaInGenMapThenGetPairDefined!216 (ListLongMap!4051 K!13690 Hashable!6185) Unit!123049)

(assert (=> b!4683155 (= lt!1842786 (lemmaInGenMapThenGetPairDefined!216 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4683156 () Bool)

(declare-fun res!1974119 () Bool)

(declare-fun e!2921786 () Bool)

(assert (=> b!4683156 (=> (not res!1974119) (not e!2921786))))

(declare-fun newBucket!218 () List!52433)

(declare-fun removePairForKey!1411 (List!52433 K!13690) List!52433)

(assert (=> b!4683156 (= res!1974119 (= (removePairForKey!1411 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1974111 () Bool)

(assert (=> start!473048 (=> (not res!1974111) (not e!2921786))))

(declare-fun forall!11259 (List!52434 Int) Bool)

(assert (=> start!473048 (= res!1974111 (forall!11259 (toList!5521 lm!2023) lambda!205323))))

(assert (=> start!473048 e!2921786))

(declare-fun e!2921779 () Bool)

(declare-fun inv!67564 (ListLongMap!4051) Bool)

(assert (=> start!473048 (and (inv!67564 lm!2023) e!2921779)))

(declare-fun tp_is_empty!30557 () Bool)

(assert (=> start!473048 tp_is_empty!30557))

(declare-fun e!2921784 () Bool)

(assert (=> start!473048 e!2921784))

(assert (=> start!473048 true))

(declare-fun e!2921778 () Bool)

(assert (=> start!473048 e!2921778))

(declare-fun b!4683157 () Bool)

(declare-fun e!2921780 () Bool)

(declare-fun e!2921782 () Bool)

(assert (=> b!4683157 (= e!2921780 e!2921782)))

(declare-fun res!1974113 () Bool)

(assert (=> b!4683157 (=> (not res!1974113) (not e!2921782))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4683157 (= res!1974113 (= lt!1842788 hash!405))))

(declare-fun hash!4003 (Hashable!6185 K!13690) (_ BitVec 64))

(assert (=> b!4683157 (= lt!1842788 (hash!4003 hashF!1323 key!4653))))

(declare-fun b!4683158 () Bool)

(declare-fun res!1974114 () Bool)

(assert (=> b!4683158 (=> (not res!1974114) (not e!2921782))))

(declare-fun allKeysSameHashInMap!1730 (ListLongMap!4051 Hashable!6185) Bool)

(assert (=> b!4683158 (= res!1974114 (allKeysSameHashInMap!1730 lm!2023 hashF!1323))))

(declare-fun b!4683159 () Bool)

(declare-fun res!1974110 () Bool)

(assert (=> b!4683159 (=> (not res!1974110) (not e!2921782))))

(declare-fun allKeysSameHash!1642 (List!52433 (_ BitVec 64) Hashable!6185) Bool)

(assert (=> b!4683159 (= res!1974110 (allKeysSameHash!1642 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4683160 () Bool)

(declare-fun tp_is_empty!30559 () Bool)

(declare-fun tp!1345334 () Bool)

(assert (=> b!4683160 (= e!2921778 (and tp_is_empty!30557 tp_is_empty!30559 tp!1345334))))

(declare-fun b!4683161 () Bool)

(declare-fun res!1974112 () Bool)

(assert (=> b!4683161 (=> (not res!1974112) (not e!2921782))))

(declare-fun head!9910 (List!52434) tuple2!53660)

(assert (=> b!4683161 (= res!1974112 (= (head!9910 (toList!5521 lm!2023)) (tuple2!53661 hash!405 oldBucket!34)))))

(declare-fun b!4683162 () Bool)

(declare-fun res!1974118 () Bool)

(assert (=> b!4683162 (=> (not res!1974118) (not e!2921786))))

(declare-fun noDuplicateKeys!1816 (List!52433) Bool)

(assert (=> b!4683162 (= res!1974118 (noDuplicateKeys!1816 oldBucket!34))))

(declare-fun b!4683163 () Bool)

(assert (=> b!4683163 (= e!2921786 e!2921780)))

(declare-fun res!1974120 () Bool)

(assert (=> b!4683163 (=> (not res!1974120) (not e!2921780))))

(declare-datatypes ((ListMap!4885 0))(
  ( (ListMap!4886 (toList!5522 List!52433)) )
))
(declare-fun lt!1842791 () ListMap!4885)

(declare-fun contains!15448 (ListMap!4885 K!13690) Bool)

(assert (=> b!4683163 (= res!1974120 (contains!15448 lt!1842791 key!4653))))

(declare-fun extractMap!1842 (List!52434) ListMap!4885)

(assert (=> b!4683163 (= lt!1842791 (extractMap!1842 (toList!5521 lm!2023)))))

(declare-fun tp!1345335 () Bool)

(declare-fun b!4683164 () Bool)

(assert (=> b!4683164 (= e!2921784 (and tp_is_empty!30557 tp_is_empty!30559 tp!1345335))))

(declare-fun b!4683165 () Bool)

(declare-fun res!1974117 () Bool)

(assert (=> b!4683165 (=> (not res!1974117) (not e!2921782))))

(get-info :version)

(assert (=> b!4683165 (= res!1974117 ((_ is Cons!52310) (toList!5521 lm!2023)))))

(declare-fun b!4683166 () Bool)

(declare-fun res!1974116 () Bool)

(assert (=> b!4683166 (=> (not res!1974116) (not e!2921786))))

(assert (=> b!4683166 (= res!1974116 (allKeysSameHash!1642 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4683167 () Bool)

(declare-fun e!2921785 () Bool)

(declare-fun addToMapMapFromBucket!1248 (List!52433 ListMap!4885) ListMap!4885)

(assert (=> b!4683167 (= e!2921785 (= lt!1842791 (addToMapMapFromBucket!1248 (_2!30124 (h!58531 (toList!5521 lm!2023))) (extractMap!1842 (t!359596 (toList!5521 lm!2023))))))))

(declare-fun b!4683168 () Bool)

(declare-fun tp!1345333 () Bool)

(assert (=> b!4683168 (= e!2921779 tp!1345333)))

(declare-fun b!4683169 () Bool)

(assert (=> b!4683169 (= e!2921783 (not (= newBucket!218 Nil!52309)))))

(declare-fun b!4683170 () Bool)

(assert (=> b!4683170 (= e!2921782 (not e!2921781))))

(declare-fun res!1974121 () Bool)

(assert (=> b!4683170 (=> res!1974121 e!2921781)))

(assert (=> b!4683170 (= res!1974121 (or (and ((_ is Cons!52309) oldBucket!34) (= (_1!30123 (h!58530 oldBucket!34)) key!4653)) (not ((_ is Cons!52309) oldBucket!34)) (= (_1!30123 (h!58530 oldBucket!34)) key!4653)))))

(assert (=> b!4683170 e!2921785))

(declare-fun res!1974123 () Bool)

(assert (=> b!4683170 (=> (not res!1974123) (not e!2921785))))

(declare-fun tail!8491 (ListLongMap!4051) ListLongMap!4051)

(assert (=> b!4683170 (= res!1974123 (= (t!359596 (toList!5521 lm!2023)) (toList!5521 (tail!8491 lm!2023))))))

(declare-fun b!4683171 () Bool)

(declare-fun res!1974115 () Bool)

(assert (=> b!4683171 (=> (not res!1974115) (not e!2921786))))

(assert (=> b!4683171 (= res!1974115 (noDuplicateKeys!1816 newBucket!218))))

(assert (= (and start!473048 res!1974111) b!4683162))

(assert (= (and b!4683162 res!1974118) b!4683171))

(assert (= (and b!4683171 res!1974115) b!4683156))

(assert (= (and b!4683156 res!1974119) b!4683166))

(assert (= (and b!4683166 res!1974116) b!4683163))

(assert (= (and b!4683163 res!1974120) b!4683157))

(assert (= (and b!4683157 res!1974113) b!4683159))

(assert (= (and b!4683159 res!1974110) b!4683158))

(assert (= (and b!4683158 res!1974114) b!4683161))

(assert (= (and b!4683161 res!1974112) b!4683165))

(assert (= (and b!4683165 res!1974117) b!4683170))

(assert (= (and b!4683170 res!1974123) b!4683167))

(assert (= (and b!4683170 (not res!1974121)) b!4683155))

(assert (= (and b!4683155 (not res!1974122)) b!4683169))

(assert (= start!473048 b!4683168))

(assert (= (and start!473048 ((_ is Cons!52309) oldBucket!34)) b!4683164))

(assert (= (and start!473048 ((_ is Cons!52309) newBucket!218)) b!4683160))

(declare-fun m!5581655 () Bool)

(assert (=> b!4683155 m!5581655))

(declare-fun m!5581657 () Bool)

(assert (=> b!4683155 m!5581657))

(declare-fun m!5581659 () Bool)

(assert (=> b!4683155 m!5581659))

(declare-fun m!5581661 () Bool)

(assert (=> b!4683155 m!5581661))

(declare-fun m!5581663 () Bool)

(assert (=> b!4683155 m!5581663))

(declare-fun m!5581665 () Bool)

(assert (=> b!4683155 m!5581665))

(declare-fun m!5581667 () Bool)

(assert (=> b!4683155 m!5581667))

(declare-fun m!5581669 () Bool)

(assert (=> b!4683155 m!5581669))

(declare-fun m!5581671 () Bool)

(assert (=> b!4683155 m!5581671))

(declare-fun m!5581673 () Bool)

(assert (=> b!4683155 m!5581673))

(declare-fun m!5581675 () Bool)

(assert (=> b!4683155 m!5581675))

(assert (=> b!4683155 m!5581661))

(declare-fun m!5581677 () Bool)

(assert (=> b!4683155 m!5581677))

(declare-fun m!5581679 () Bool)

(assert (=> b!4683166 m!5581679))

(declare-fun m!5581681 () Bool)

(assert (=> b!4683171 m!5581681))

(declare-fun m!5581683 () Bool)

(assert (=> b!4683158 m!5581683))

(declare-fun m!5581685 () Bool)

(assert (=> b!4683161 m!5581685))

(declare-fun m!5581687 () Bool)

(assert (=> b!4683170 m!5581687))

(declare-fun m!5581689 () Bool)

(assert (=> b!4683156 m!5581689))

(declare-fun m!5581691 () Bool)

(assert (=> b!4683157 m!5581691))

(declare-fun m!5581693 () Bool)

(assert (=> b!4683162 m!5581693))

(declare-fun m!5581695 () Bool)

(assert (=> b!4683167 m!5581695))

(assert (=> b!4683167 m!5581695))

(declare-fun m!5581697 () Bool)

(assert (=> b!4683167 m!5581697))

(declare-fun m!5581699 () Bool)

(assert (=> b!4683163 m!5581699))

(declare-fun m!5581701 () Bool)

(assert (=> b!4683163 m!5581701))

(declare-fun m!5581703 () Bool)

(assert (=> b!4683159 m!5581703))

(declare-fun m!5581705 () Bool)

(assert (=> start!473048 m!5581705))

(declare-fun m!5581707 () Bool)

(assert (=> start!473048 m!5581707))

(check-sat (not b!4683164) (not b!4683166) (not b!4683157) (not start!473048) (not b!4683161) (not b!4683171) tp_is_empty!30559 (not b!4683158) tp_is_empty!30557 (not b!4683160) (not b!4683159) (not b!4683170) (not b!4683168) (not b!4683162) (not b!4683163) (not b!4683155) (not b!4683167) (not b!4683156))
(check-sat)
(get-model)

(declare-fun bs!1083700 () Bool)

(declare-fun d!1488370 () Bool)

(assert (= bs!1083700 (and d!1488370 start!473048)))

(declare-fun lambda!205326 () Int)

(assert (=> bs!1083700 (not (= lambda!205326 lambda!205323))))

(assert (=> d!1488370 true))

(assert (=> d!1488370 (= (allKeysSameHashInMap!1730 lm!2023 hashF!1323) (forall!11259 (toList!5521 lm!2023) lambda!205326))))

(declare-fun bs!1083701 () Bool)

(assert (= bs!1083701 d!1488370))

(declare-fun m!5581709 () Bool)

(assert (=> bs!1083701 m!5581709))

(assert (=> b!4683158 d!1488370))

(declare-fun d!1488372 () Bool)

(declare-fun res!1974136 () Bool)

(declare-fun e!2921799 () Bool)

(assert (=> d!1488372 (=> res!1974136 e!2921799)))

(assert (=> d!1488372 (= res!1974136 ((_ is Nil!52310) (toList!5521 lm!2023)))))

(assert (=> d!1488372 (= (forall!11259 (toList!5521 lm!2023) lambda!205323) e!2921799)))

(declare-fun b!4683186 () Bool)

(declare-fun e!2921800 () Bool)

(assert (=> b!4683186 (= e!2921799 e!2921800)))

(declare-fun res!1974137 () Bool)

(assert (=> b!4683186 (=> (not res!1974137) (not e!2921800))))

(declare-fun dynLambda!21689 (Int tuple2!53660) Bool)

(assert (=> b!4683186 (= res!1974137 (dynLambda!21689 lambda!205323 (h!58531 (toList!5521 lm!2023))))))

(declare-fun b!4683187 () Bool)

(assert (=> b!4683187 (= e!2921800 (forall!11259 (t!359596 (toList!5521 lm!2023)) lambda!205323))))

(assert (= (and d!1488372 (not res!1974136)) b!4683186))

(assert (= (and b!4683186 res!1974137) b!4683187))

(declare-fun b_lambda!176741 () Bool)

(assert (=> (not b_lambda!176741) (not b!4683186)))

(declare-fun m!5581719 () Bool)

(assert (=> b!4683186 m!5581719))

(declare-fun m!5581721 () Bool)

(assert (=> b!4683187 m!5581721))

(assert (=> start!473048 d!1488372))

(declare-fun d!1488380 () Bool)

(declare-fun isStrictlySorted!625 (List!52434) Bool)

(assert (=> d!1488380 (= (inv!67564 lm!2023) (isStrictlySorted!625 (toList!5521 lm!2023)))))

(declare-fun bs!1083704 () Bool)

(assert (= bs!1083704 d!1488380))

(declare-fun m!5581725 () Bool)

(assert (=> bs!1083704 m!5581725))

(assert (=> start!473048 d!1488380))

(declare-fun d!1488384 () Bool)

(assert (=> d!1488384 true))

(assert (=> d!1488384 true))

(declare-fun lambda!205332 () Int)

(declare-fun forall!11261 (List!52433 Int) Bool)

(assert (=> d!1488384 (= (allKeysSameHash!1642 newBucket!218 hash!405 hashF!1323) (forall!11261 newBucket!218 lambda!205332))))

(declare-fun bs!1083705 () Bool)

(assert (= bs!1083705 d!1488384))

(declare-fun m!5581727 () Bool)

(assert (=> bs!1083705 m!5581727))

(assert (=> b!4683159 d!1488384))

(declare-fun d!1488386 () Bool)

(declare-fun tail!8492 (List!52434) List!52434)

(assert (=> d!1488386 (= (tail!8491 lm!2023) (ListLongMap!4052 (tail!8492 (toList!5521 lm!2023))))))

(declare-fun bs!1083706 () Bool)

(assert (= bs!1083706 d!1488386))

(declare-fun m!5581729 () Bool)

(assert (=> bs!1083706 m!5581729))

(assert (=> b!4683170 d!1488386))

(declare-fun d!1488388 () Bool)

(assert (=> d!1488388 (= (head!9910 (toList!5521 lm!2023)) (h!58531 (toList!5521 lm!2023)))))

(assert (=> b!4683161 d!1488388))

(declare-fun d!1488390 () Bool)

(declare-fun res!1974148 () Bool)

(declare-fun e!2921817 () Bool)

(assert (=> d!1488390 (=> res!1974148 e!2921817)))

(assert (=> d!1488390 (= res!1974148 (not ((_ is Cons!52309) newBucket!218)))))

(assert (=> d!1488390 (= (noDuplicateKeys!1816 newBucket!218) e!2921817)))

(declare-fun b!4683216 () Bool)

(declare-fun e!2921818 () Bool)

(assert (=> b!4683216 (= e!2921817 e!2921818)))

(declare-fun res!1974149 () Bool)

(assert (=> b!4683216 (=> (not res!1974149) (not e!2921818))))

(assert (=> b!4683216 (= res!1974149 (not (containsKey!2967 (t!359595 newBucket!218) (_1!30123 (h!58530 newBucket!218)))))))

(declare-fun b!4683217 () Bool)

(assert (=> b!4683217 (= e!2921818 (noDuplicateKeys!1816 (t!359595 newBucket!218)))))

(assert (= (and d!1488390 (not res!1974148)) b!4683216))

(assert (= (and b!4683216 res!1974149) b!4683217))

(declare-fun m!5581731 () Bool)

(assert (=> b!4683216 m!5581731))

(declare-fun m!5581733 () Bool)

(assert (=> b!4683217 m!5581733))

(assert (=> b!4683171 d!1488390))

(declare-fun d!1488392 () Bool)

(declare-fun res!1974150 () Bool)

(declare-fun e!2921819 () Bool)

(assert (=> d!1488392 (=> res!1974150 e!2921819)))

(assert (=> d!1488392 (= res!1974150 (not ((_ is Cons!52309) oldBucket!34)))))

(assert (=> d!1488392 (= (noDuplicateKeys!1816 oldBucket!34) e!2921819)))

(declare-fun b!4683218 () Bool)

(declare-fun e!2921820 () Bool)

(assert (=> b!4683218 (= e!2921819 e!2921820)))

(declare-fun res!1974151 () Bool)

(assert (=> b!4683218 (=> (not res!1974151) (not e!2921820))))

(assert (=> b!4683218 (= res!1974151 (not (containsKey!2967 (t!359595 oldBucket!34) (_1!30123 (h!58530 oldBucket!34)))))))

(declare-fun b!4683219 () Bool)

(assert (=> b!4683219 (= e!2921820 (noDuplicateKeys!1816 (t!359595 oldBucket!34)))))

(assert (= (and d!1488392 (not res!1974150)) b!4683218))

(assert (= (and b!4683218 res!1974151) b!4683219))

(declare-fun m!5581735 () Bool)

(assert (=> b!4683218 m!5581735))

(declare-fun m!5581737 () Bool)

(assert (=> b!4683219 m!5581737))

(assert (=> b!4683162 d!1488392))

(declare-fun b!4683254 () Bool)

(declare-fun e!2921847 () Bool)

(declare-datatypes ((List!52436 0))(
  ( (Nil!52312) (Cons!52312 (h!58535 K!13690) (t!359598 List!52436)) )
))
(declare-fun contains!15451 (List!52436 K!13690) Bool)

(declare-fun keys!18651 (ListMap!4885) List!52436)

(assert (=> b!4683254 (= e!2921847 (contains!15451 (keys!18651 lt!1842791) key!4653))))

(declare-fun b!4683255 () Bool)

(declare-fun e!2921845 () Unit!123049)

(declare-fun Unit!123064 () Unit!123049)

(assert (=> b!4683255 (= e!2921845 Unit!123064)))

(declare-fun b!4683256 () Bool)

(declare-fun e!2921842 () Bool)

(assert (=> b!4683256 (= e!2921842 e!2921847)))

(declare-fun res!1974163 () Bool)

(assert (=> b!4683256 (=> (not res!1974163) (not e!2921847))))

(declare-datatypes ((Option!11994 0))(
  ( (None!11993) (Some!11993 (v!46364 V!13936)) )
))
(declare-fun isDefined!9248 (Option!11994) Bool)

(declare-fun getValueByKey!1732 (List!52433 K!13690) Option!11994)

(assert (=> b!4683256 (= res!1974163 (isDefined!9248 (getValueByKey!1732 (toList!5522 lt!1842791) key!4653)))))

(declare-fun b!4683257 () Bool)

(declare-fun e!2921844 () Bool)

(assert (=> b!4683257 (= e!2921844 (not (contains!15451 (keys!18651 lt!1842791) key!4653)))))

(declare-fun b!4683258 () Bool)

(declare-fun e!2921846 () List!52436)

(assert (=> b!4683258 (= e!2921846 (keys!18651 lt!1842791))))

(declare-fun bm!327308 () Bool)

(declare-fun call!327313 () Bool)

(assert (=> bm!327308 (= call!327313 (contains!15451 e!2921846 key!4653))))

(declare-fun c!800932 () Bool)

(declare-fun c!800933 () Bool)

(assert (=> bm!327308 (= c!800932 c!800933)))

(declare-fun b!4683259 () Bool)

(declare-fun getKeysList!826 (List!52433) List!52436)

(assert (=> b!4683259 (= e!2921846 (getKeysList!826 (toList!5522 lt!1842791)))))

(declare-fun b!4683253 () Bool)

(declare-fun e!2921843 () Unit!123049)

(declare-fun lt!1842843 () Unit!123049)

(assert (=> b!4683253 (= e!2921843 lt!1842843)))

(declare-fun lt!1842845 () Unit!123049)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1623 (List!52433 K!13690) Unit!123049)

(assert (=> b!4683253 (= lt!1842845 (lemmaContainsKeyImpliesGetValueByKeyDefined!1623 (toList!5522 lt!1842791) key!4653))))

(assert (=> b!4683253 (isDefined!9248 (getValueByKey!1732 (toList!5522 lt!1842791) key!4653))))

(declare-fun lt!1842840 () Unit!123049)

(assert (=> b!4683253 (= lt!1842840 lt!1842845)))

(declare-fun lemmaInListThenGetKeysListContains!821 (List!52433 K!13690) Unit!123049)

(assert (=> b!4683253 (= lt!1842843 (lemmaInListThenGetKeysListContains!821 (toList!5522 lt!1842791) key!4653))))

(assert (=> b!4683253 call!327313))

(declare-fun d!1488394 () Bool)

(assert (=> d!1488394 e!2921842))

(declare-fun res!1974162 () Bool)

(assert (=> d!1488394 (=> res!1974162 e!2921842)))

(assert (=> d!1488394 (= res!1974162 e!2921844)))

(declare-fun res!1974161 () Bool)

(assert (=> d!1488394 (=> (not res!1974161) (not e!2921844))))

(declare-fun lt!1842842 () Bool)

(assert (=> d!1488394 (= res!1974161 (not lt!1842842))))

(declare-fun lt!1842841 () Bool)

(assert (=> d!1488394 (= lt!1842842 lt!1842841)))

(declare-fun lt!1842839 () Unit!123049)

(assert (=> d!1488394 (= lt!1842839 e!2921843)))

(assert (=> d!1488394 (= c!800933 lt!1842841)))

(declare-fun containsKey!2969 (List!52433 K!13690) Bool)

(assert (=> d!1488394 (= lt!1842841 (containsKey!2969 (toList!5522 lt!1842791) key!4653))))

(assert (=> d!1488394 (= (contains!15448 lt!1842791 key!4653) lt!1842842)))

(declare-fun b!4683260 () Bool)

(assert (=> b!4683260 false))

(declare-fun lt!1842844 () Unit!123049)

(declare-fun lt!1842838 () Unit!123049)

(assert (=> b!4683260 (= lt!1842844 lt!1842838)))

(assert (=> b!4683260 (containsKey!2969 (toList!5522 lt!1842791) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!825 (List!52433 K!13690) Unit!123049)

(assert (=> b!4683260 (= lt!1842838 (lemmaInGetKeysListThenContainsKey!825 (toList!5522 lt!1842791) key!4653))))

(declare-fun Unit!123065 () Unit!123049)

(assert (=> b!4683260 (= e!2921845 Unit!123065)))

(declare-fun b!4683261 () Bool)

(assert (=> b!4683261 (= e!2921843 e!2921845)))

(declare-fun c!800934 () Bool)

(assert (=> b!4683261 (= c!800934 call!327313)))

(assert (= (and d!1488394 c!800933) b!4683253))

(assert (= (and d!1488394 (not c!800933)) b!4683261))

(assert (= (and b!4683261 c!800934) b!4683260))

(assert (= (and b!4683261 (not c!800934)) b!4683255))

(assert (= (or b!4683253 b!4683261) bm!327308))

(assert (= (and bm!327308 c!800932) b!4683259))

(assert (= (and bm!327308 (not c!800932)) b!4683258))

(assert (= (and d!1488394 res!1974161) b!4683257))

(assert (= (and d!1488394 (not res!1974162)) b!4683256))

(assert (= (and b!4683256 res!1974163) b!4683254))

(declare-fun m!5581765 () Bool)

(assert (=> b!4683258 m!5581765))

(declare-fun m!5581767 () Bool)

(assert (=> b!4683253 m!5581767))

(declare-fun m!5581769 () Bool)

(assert (=> b!4683253 m!5581769))

(assert (=> b!4683253 m!5581769))

(declare-fun m!5581771 () Bool)

(assert (=> b!4683253 m!5581771))

(declare-fun m!5581773 () Bool)

(assert (=> b!4683253 m!5581773))

(declare-fun m!5581775 () Bool)

(assert (=> b!4683260 m!5581775))

(declare-fun m!5581777 () Bool)

(assert (=> b!4683260 m!5581777))

(assert (=> b!4683257 m!5581765))

(assert (=> b!4683257 m!5581765))

(declare-fun m!5581779 () Bool)

(assert (=> b!4683257 m!5581779))

(assert (=> b!4683254 m!5581765))

(assert (=> b!4683254 m!5581765))

(assert (=> b!4683254 m!5581779))

(assert (=> b!4683256 m!5581769))

(assert (=> b!4683256 m!5581769))

(assert (=> b!4683256 m!5581771))

(declare-fun m!5581781 () Bool)

(assert (=> bm!327308 m!5581781))

(declare-fun m!5581783 () Bool)

(assert (=> b!4683259 m!5581783))

(assert (=> d!1488394 m!5581775))

(assert (=> b!4683163 d!1488394))

(declare-fun bs!1083710 () Bool)

(declare-fun d!1488402 () Bool)

(assert (= bs!1083710 (and d!1488402 start!473048)))

(declare-fun lambda!205338 () Int)

(assert (=> bs!1083710 (= lambda!205338 lambda!205323)))

(declare-fun bs!1083711 () Bool)

(assert (= bs!1083711 (and d!1488402 d!1488370)))

(assert (=> bs!1083711 (not (= lambda!205338 lambda!205326))))

(declare-fun lt!1842848 () ListMap!4885)

(declare-fun invariantList!1386 (List!52433) Bool)

(assert (=> d!1488402 (invariantList!1386 (toList!5522 lt!1842848))))

(declare-fun e!2921850 () ListMap!4885)

(assert (=> d!1488402 (= lt!1842848 e!2921850)))

(declare-fun c!800937 () Bool)

(assert (=> d!1488402 (= c!800937 ((_ is Cons!52310) (toList!5521 lm!2023)))))

(assert (=> d!1488402 (forall!11259 (toList!5521 lm!2023) lambda!205338)))

(assert (=> d!1488402 (= (extractMap!1842 (toList!5521 lm!2023)) lt!1842848)))

(declare-fun b!4683266 () Bool)

(assert (=> b!4683266 (= e!2921850 (addToMapMapFromBucket!1248 (_2!30124 (h!58531 (toList!5521 lm!2023))) (extractMap!1842 (t!359596 (toList!5521 lm!2023)))))))

(declare-fun b!4683267 () Bool)

(assert (=> b!4683267 (= e!2921850 (ListMap!4886 Nil!52309))))

(assert (= (and d!1488402 c!800937) b!4683266))

(assert (= (and d!1488402 (not c!800937)) b!4683267))

(declare-fun m!5581785 () Bool)

(assert (=> d!1488402 m!5581785))

(declare-fun m!5581787 () Bool)

(assert (=> d!1488402 m!5581787))

(assert (=> b!4683266 m!5581695))

(assert (=> b!4683266 m!5581695))

(assert (=> b!4683266 m!5581697))

(assert (=> b!4683163 d!1488402))

(declare-fun d!1488404 () Bool)

(declare-fun lt!1842851 () List!52433)

(assert (=> d!1488404 (not (containsKey!2967 lt!1842851 key!4653))))

(declare-fun e!2921856 () List!52433)

(assert (=> d!1488404 (= lt!1842851 e!2921856)))

(declare-fun c!800942 () Bool)

(assert (=> d!1488404 (= c!800942 (and ((_ is Cons!52309) oldBucket!34) (= (_1!30123 (h!58530 oldBucket!34)) key!4653)))))

(assert (=> d!1488404 (noDuplicateKeys!1816 oldBucket!34)))

(assert (=> d!1488404 (= (removePairForKey!1411 oldBucket!34 key!4653) lt!1842851)))

(declare-fun b!4683277 () Bool)

(declare-fun e!2921855 () List!52433)

(assert (=> b!4683277 (= e!2921856 e!2921855)))

(declare-fun c!800943 () Bool)

(assert (=> b!4683277 (= c!800943 ((_ is Cons!52309) oldBucket!34))))

(declare-fun b!4683279 () Bool)

(assert (=> b!4683279 (= e!2921855 Nil!52309)))

(declare-fun b!4683278 () Bool)

(assert (=> b!4683278 (= e!2921855 (Cons!52309 (h!58530 oldBucket!34) (removePairForKey!1411 (t!359595 oldBucket!34) key!4653)))))

(declare-fun b!4683276 () Bool)

(assert (=> b!4683276 (= e!2921856 (t!359595 oldBucket!34))))

(assert (= (and d!1488404 c!800942) b!4683276))

(assert (= (and d!1488404 (not c!800942)) b!4683277))

(assert (= (and b!4683277 c!800943) b!4683278))

(assert (= (and b!4683277 (not c!800943)) b!4683279))

(declare-fun m!5581789 () Bool)

(assert (=> d!1488404 m!5581789))

(assert (=> d!1488404 m!5581693))

(declare-fun m!5581791 () Bool)

(assert (=> b!4683278 m!5581791))

(assert (=> b!4683156 d!1488404))

(declare-fun d!1488406 () Bool)

(declare-fun lt!1842854 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9126 (List!52434) (InoxSet tuple2!53660))

(assert (=> d!1488406 (= lt!1842854 (select (content!9126 (toList!5521 lm!2023)) lt!1842793))))

(declare-fun e!2921861 () Bool)

(assert (=> d!1488406 (= lt!1842854 e!2921861)))

(declare-fun res!1974169 () Bool)

(assert (=> d!1488406 (=> (not res!1974169) (not e!2921861))))

(assert (=> d!1488406 (= res!1974169 ((_ is Cons!52310) (toList!5521 lm!2023)))))

(assert (=> d!1488406 (= (contains!15446 (toList!5521 lm!2023) lt!1842793) lt!1842854)))

(declare-fun b!4683284 () Bool)

(declare-fun e!2921862 () Bool)

(assert (=> b!4683284 (= e!2921861 e!2921862)))

(declare-fun res!1974168 () Bool)

(assert (=> b!4683284 (=> res!1974168 e!2921862)))

(assert (=> b!4683284 (= res!1974168 (= (h!58531 (toList!5521 lm!2023)) lt!1842793))))

(declare-fun b!4683285 () Bool)

(assert (=> b!4683285 (= e!2921862 (contains!15446 (t!359596 (toList!5521 lm!2023)) lt!1842793))))

(assert (= (and d!1488406 res!1974169) b!4683284))

(assert (= (and b!4683284 (not res!1974168)) b!4683285))

(declare-fun m!5581793 () Bool)

(assert (=> d!1488406 m!5581793))

(declare-fun m!5581795 () Bool)

(assert (=> d!1488406 m!5581795))

(declare-fun m!5581797 () Bool)

(assert (=> b!4683285 m!5581797))

(assert (=> b!4683155 d!1488406))

(declare-fun d!1488408 () Bool)

(declare-fun e!2921870 () Bool)

(assert (=> d!1488408 e!2921870))

(declare-fun res!1974172 () Bool)

(assert (=> d!1488408 (=> res!1974172 e!2921870)))

(declare-fun lt!1842904 () Bool)

(assert (=> d!1488408 (= res!1974172 (not lt!1842904))))

(declare-fun lt!1842902 () Bool)

(assert (=> d!1488408 (= lt!1842904 lt!1842902)))

(declare-fun lt!1842901 () Unit!123049)

(declare-fun e!2921869 () Unit!123049)

(assert (=> d!1488408 (= lt!1842901 e!2921869)))

(declare-fun c!800948 () Bool)

(assert (=> d!1488408 (= c!800948 lt!1842902)))

(declare-fun containsKey!2971 (List!52434 (_ BitVec 64)) Bool)

(assert (=> d!1488408 (= lt!1842902 (containsKey!2971 (toList!5521 lm!2023) lt!1842788))))

(assert (=> d!1488408 (= (contains!15447 lm!2023 lt!1842788) lt!1842904)))

(declare-fun b!4683296 () Bool)

(declare-fun lt!1842903 () Unit!123049)

(assert (=> b!4683296 (= e!2921869 lt!1842903)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1625 (List!52434 (_ BitVec 64)) Unit!123049)

(assert (=> b!4683296 (= lt!1842903 (lemmaContainsKeyImpliesGetValueByKeyDefined!1625 (toList!5521 lm!2023) lt!1842788))))

(declare-datatypes ((Option!11995 0))(
  ( (None!11994) (Some!11994 (v!46365 List!52433)) )
))
(declare-fun isDefined!9250 (Option!11995) Bool)

(declare-fun getValueByKey!1733 (List!52434 (_ BitVec 64)) Option!11995)

(assert (=> b!4683296 (isDefined!9250 (getValueByKey!1733 (toList!5521 lm!2023) lt!1842788))))

(declare-fun b!4683297 () Bool)

(declare-fun Unit!123067 () Unit!123049)

(assert (=> b!4683297 (= e!2921869 Unit!123067)))

(declare-fun b!4683298 () Bool)

(assert (=> b!4683298 (= e!2921870 (isDefined!9250 (getValueByKey!1733 (toList!5521 lm!2023) lt!1842788)))))

(assert (= (and d!1488408 c!800948) b!4683296))

(assert (= (and d!1488408 (not c!800948)) b!4683297))

(assert (= (and d!1488408 (not res!1974172)) b!4683298))

(declare-fun m!5581799 () Bool)

(assert (=> d!1488408 m!5581799))

(declare-fun m!5581801 () Bool)

(assert (=> b!4683296 m!5581801))

(declare-fun m!5581803 () Bool)

(assert (=> b!4683296 m!5581803))

(assert (=> b!4683296 m!5581803))

(declare-fun m!5581805 () Bool)

(assert (=> b!4683296 m!5581805))

(assert (=> b!4683298 m!5581803))

(assert (=> b!4683298 m!5581803))

(assert (=> b!4683298 m!5581805))

(assert (=> b!4683155 d!1488408))

(declare-fun bs!1083712 () Bool)

(declare-fun d!1488410 () Bool)

(assert (= bs!1083712 (and d!1488410 start!473048)))

(declare-fun lambda!205369 () Int)

(assert (=> bs!1083712 (= lambda!205369 lambda!205323)))

(declare-fun bs!1083713 () Bool)

(assert (= bs!1083713 (and d!1488410 d!1488370)))

(assert (=> bs!1083713 (not (= lambda!205369 lambda!205326))))

(declare-fun bs!1083714 () Bool)

(assert (= bs!1083714 (and d!1488410 d!1488402)))

(assert (=> bs!1083714 (= lambda!205369 lambda!205338)))

(assert (=> d!1488410 (contains!15447 lm!2023 (hash!4003 hashF!1323 key!4653))))

(declare-fun lt!1842911 () Unit!123049)

(declare-fun choose!32431 (ListLongMap!4051 K!13690 Hashable!6185) Unit!123049)

(assert (=> d!1488410 (= lt!1842911 (choose!32431 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488410 (forall!11259 (toList!5521 lm!2023) lambda!205369)))

(assert (=> d!1488410 (= (lemmaInGenMapThenLongMapContainsHash!626 lm!2023 key!4653 hashF!1323) lt!1842911)))

(declare-fun bs!1083715 () Bool)

(assert (= bs!1083715 d!1488410))

(assert (=> bs!1083715 m!5581691))

(assert (=> bs!1083715 m!5581691))

(declare-fun m!5581807 () Bool)

(assert (=> bs!1083715 m!5581807))

(declare-fun m!5581809 () Bool)

(assert (=> bs!1083715 m!5581809))

(declare-fun m!5581811 () Bool)

(assert (=> bs!1083715 m!5581811))

(assert (=> b!4683155 d!1488410))

(declare-fun d!1488412 () Bool)

(assert (=> d!1488412 (contains!15446 (toList!5521 lm!2023) (tuple2!53661 lt!1842788 lt!1842789))))

(declare-fun lt!1842935 () Unit!123049)

(declare-fun choose!32432 (ListLongMap!4051 (_ BitVec 64) List!52433) Unit!123049)

(assert (=> d!1488412 (= lt!1842935 (choose!32432 lm!2023 lt!1842788 lt!1842789))))

(assert (=> d!1488412 (contains!15447 lm!2023 lt!1842788)))

(assert (=> d!1488412 (= (lemmaGetValueImpliesTupleContained!225 lm!2023 lt!1842788 lt!1842789) lt!1842935)))

(declare-fun bs!1083718 () Bool)

(assert (= bs!1083718 d!1488412))

(declare-fun m!5581813 () Bool)

(assert (=> bs!1083718 m!5581813))

(declare-fun m!5581815 () Bool)

(assert (=> bs!1083718 m!5581815))

(assert (=> bs!1083718 m!5581659))

(assert (=> b!4683155 d!1488412))

(declare-fun bs!1083730 () Bool)

(declare-fun d!1488414 () Bool)

(assert (= bs!1083730 (and d!1488414 start!473048)))

(declare-fun lambda!205384 () Int)

(assert (=> bs!1083730 (= lambda!205384 lambda!205323)))

(declare-fun bs!1083731 () Bool)

(assert (= bs!1083731 (and d!1488414 d!1488370)))

(assert (=> bs!1083731 (not (= lambda!205384 lambda!205326))))

(declare-fun bs!1083732 () Bool)

(assert (= bs!1083732 (and d!1488414 d!1488402)))

(assert (=> bs!1083732 (= lambda!205384 lambda!205338)))

(declare-fun bs!1083733 () Bool)

(assert (= bs!1083733 (and d!1488414 d!1488410)))

(assert (=> bs!1083733 (= lambda!205384 lambda!205369)))

(declare-fun e!2921914 () Bool)

(declare-fun b!4683370 () Bool)

(assert (=> b!4683370 (= e!2921914 (isDefined!9246 (getPair!420 (apply!12299 lm!2023 (hash!4003 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1842975 () Unit!123049)

(assert (=> b!4683370 (= lt!1842975 (forallContained!3366 (toList!5521 lm!2023) lambda!205384 (tuple2!53661 (hash!4003 hashF!1323 key!4653) (apply!12299 lm!2023 (hash!4003 hashF!1323 key!4653)))))))

(declare-fun lt!1842971 () Unit!123049)

(declare-fun lt!1842970 () Unit!123049)

(assert (=> b!4683370 (= lt!1842971 lt!1842970)))

(declare-fun lt!1842968 () (_ BitVec 64))

(declare-fun lt!1842973 () List!52433)

(assert (=> b!4683370 (contains!15446 (toList!5521 lm!2023) (tuple2!53661 lt!1842968 lt!1842973))))

(assert (=> b!4683370 (= lt!1842970 (lemmaGetValueImpliesTupleContained!225 lm!2023 lt!1842968 lt!1842973))))

(declare-fun e!2921913 () Bool)

(assert (=> b!4683370 e!2921913))

(declare-fun res!1974214 () Bool)

(assert (=> b!4683370 (=> (not res!1974214) (not e!2921913))))

(assert (=> b!4683370 (= res!1974214 (contains!15447 lm!2023 lt!1842968))))

(assert (=> b!4683370 (= lt!1842973 (apply!12299 lm!2023 (hash!4003 hashF!1323 key!4653)))))

(assert (=> b!4683370 (= lt!1842968 (hash!4003 hashF!1323 key!4653))))

(declare-fun lt!1842969 () Unit!123049)

(declare-fun lt!1842974 () Unit!123049)

(assert (=> b!4683370 (= lt!1842969 lt!1842974)))

(assert (=> b!4683370 (contains!15447 lm!2023 (hash!4003 hashF!1323 key!4653))))

(assert (=> b!4683370 (= lt!1842974 (lemmaInGenMapThenLongMapContainsHash!626 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4683371 () Bool)

(assert (=> b!4683371 (= e!2921913 (= (getValueByKey!1733 (toList!5521 lm!2023) lt!1842968) (Some!11994 lt!1842973)))))

(declare-fun b!4683368 () Bool)

(declare-fun res!1974211 () Bool)

(assert (=> b!4683368 (=> (not res!1974211) (not e!2921914))))

(assert (=> b!4683368 (= res!1974211 (allKeysSameHashInMap!1730 lm!2023 hashF!1323))))

(assert (=> d!1488414 e!2921914))

(declare-fun res!1974212 () Bool)

(assert (=> d!1488414 (=> (not res!1974212) (not e!2921914))))

(assert (=> d!1488414 (= res!1974212 (forall!11259 (toList!5521 lm!2023) lambda!205384))))

(declare-fun lt!1842972 () Unit!123049)

(declare-fun choose!32433 (ListLongMap!4051 K!13690 Hashable!6185) Unit!123049)

(assert (=> d!1488414 (= lt!1842972 (choose!32433 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488414 (forall!11259 (toList!5521 lm!2023) lambda!205384)))

(assert (=> d!1488414 (= (lemmaInGenMapThenGetPairDefined!216 lm!2023 key!4653 hashF!1323) lt!1842972)))

(declare-fun b!4683369 () Bool)

(declare-fun res!1974213 () Bool)

(assert (=> b!4683369 (=> (not res!1974213) (not e!2921914))))

(assert (=> b!4683369 (= res!1974213 (contains!15448 (extractMap!1842 (toList!5521 lm!2023)) key!4653))))

(assert (= (and d!1488414 res!1974212) b!4683368))

(assert (= (and b!4683368 res!1974211) b!4683369))

(assert (= (and b!4683369 res!1974213) b!4683370))

(assert (= (and b!4683370 res!1974214) b!4683371))

(assert (=> b!4683370 m!5581691))

(declare-fun m!5581901 () Bool)

(assert (=> b!4683370 m!5581901))

(assert (=> b!4683370 m!5581691))

(declare-fun m!5581903 () Bool)

(assert (=> b!4683370 m!5581903))

(declare-fun m!5581905 () Bool)

(assert (=> b!4683370 m!5581905))

(assert (=> b!4683370 m!5581903))

(declare-fun m!5581907 () Bool)

(assert (=> b!4683370 m!5581907))

(declare-fun m!5581909 () Bool)

(assert (=> b!4683370 m!5581909))

(assert (=> b!4683370 m!5581691))

(assert (=> b!4683370 m!5581807))

(declare-fun m!5581911 () Bool)

(assert (=> b!4683370 m!5581911))

(assert (=> b!4683370 m!5581907))

(declare-fun m!5581913 () Bool)

(assert (=> b!4683370 m!5581913))

(assert (=> b!4683370 m!5581657))

(declare-fun m!5581915 () Bool)

(assert (=> b!4683371 m!5581915))

(declare-fun m!5581917 () Bool)

(assert (=> d!1488414 m!5581917))

(declare-fun m!5581919 () Bool)

(assert (=> d!1488414 m!5581919))

(assert (=> d!1488414 m!5581917))

(assert (=> b!4683369 m!5581701))

(assert (=> b!4683369 m!5581701))

(declare-fun m!5581921 () Bool)

(assert (=> b!4683369 m!5581921))

(assert (=> b!4683368 m!5581683))

(assert (=> b!4683155 d!1488414))

(declare-fun d!1488434 () Bool)

(declare-fun isEmpty!29070 (Option!11991) Bool)

(assert (=> d!1488434 (= (isDefined!9246 (getPair!420 lt!1842789 key!4653)) (not (isEmpty!29070 (getPair!420 lt!1842789 key!4653))))))

(declare-fun bs!1083734 () Bool)

(assert (= bs!1083734 d!1488434))

(assert (=> bs!1083734 m!5581661))

(declare-fun m!5581923 () Bool)

(assert (=> bs!1083734 m!5581923))

(assert (=> b!4683155 d!1488434))

(declare-fun d!1488436 () Bool)

(assert (=> d!1488436 (containsKey!2967 oldBucket!34 key!4653)))

(declare-fun lt!1842978 () Unit!123049)

(declare-fun choose!32434 (List!52433 K!13690 Hashable!6185) Unit!123049)

(assert (=> d!1488436 (= lt!1842978 (choose!32434 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1488436 (noDuplicateKeys!1816 oldBucket!34)))

(assert (=> d!1488436 (= (lemmaGetPairDefinedThenContainsKey!168 oldBucket!34 key!4653 hashF!1323) lt!1842978)))

(declare-fun bs!1083735 () Bool)

(assert (= bs!1083735 d!1488436))

(assert (=> bs!1083735 m!5581669))

(declare-fun m!5581925 () Bool)

(assert (=> bs!1083735 m!5581925))

(assert (=> bs!1083735 m!5581693))

(assert (=> b!4683155 d!1488436))

(declare-fun d!1488438 () Bool)

(declare-fun res!1974219 () Bool)

(declare-fun e!2921919 () Bool)

(assert (=> d!1488438 (=> res!1974219 e!2921919)))

(assert (=> d!1488438 (= res!1974219 (and ((_ is Cons!52309) (t!359595 oldBucket!34)) (= (_1!30123 (h!58530 (t!359595 oldBucket!34))) key!4653)))))

(assert (=> d!1488438 (= (containsKey!2967 (t!359595 oldBucket!34) key!4653) e!2921919)))

(declare-fun b!4683376 () Bool)

(declare-fun e!2921920 () Bool)

(assert (=> b!4683376 (= e!2921919 e!2921920)))

(declare-fun res!1974220 () Bool)

(assert (=> b!4683376 (=> (not res!1974220) (not e!2921920))))

(assert (=> b!4683376 (= res!1974220 ((_ is Cons!52309) (t!359595 oldBucket!34)))))

(declare-fun b!4683377 () Bool)

(assert (=> b!4683377 (= e!2921920 (containsKey!2967 (t!359595 (t!359595 oldBucket!34)) key!4653))))

(assert (= (and d!1488438 (not res!1974219)) b!4683376))

(assert (= (and b!4683376 res!1974220) b!4683377))

(declare-fun m!5581927 () Bool)

(assert (=> b!4683377 m!5581927))

(assert (=> b!4683155 d!1488438))

(declare-fun d!1488440 () Bool)

(declare-fun get!17426 (Option!11995) List!52433)

(assert (=> d!1488440 (= (apply!12299 lm!2023 lt!1842788) (get!17426 (getValueByKey!1733 (toList!5521 lm!2023) lt!1842788)))))

(declare-fun bs!1083736 () Bool)

(assert (= bs!1083736 d!1488440))

(assert (=> bs!1083736 m!5581803))

(assert (=> bs!1083736 m!5581803))

(declare-fun m!5581929 () Bool)

(assert (=> bs!1083736 m!5581929))

(assert (=> b!4683155 d!1488440))

(declare-fun d!1488442 () Bool)

(assert (=> d!1488442 (dynLambda!21689 lambda!205323 lt!1842793)))

(declare-fun lt!1842981 () Unit!123049)

(declare-fun choose!32435 (List!52434 Int tuple2!53660) Unit!123049)

(assert (=> d!1488442 (= lt!1842981 (choose!32435 (toList!5521 lm!2023) lambda!205323 lt!1842793))))

(declare-fun e!2921923 () Bool)

(assert (=> d!1488442 e!2921923))

(declare-fun res!1974223 () Bool)

(assert (=> d!1488442 (=> (not res!1974223) (not e!2921923))))

(assert (=> d!1488442 (= res!1974223 (forall!11259 (toList!5521 lm!2023) lambda!205323))))

(assert (=> d!1488442 (= (forallContained!3366 (toList!5521 lm!2023) lambda!205323 lt!1842793) lt!1842981)))

(declare-fun b!4683380 () Bool)

(assert (=> b!4683380 (= e!2921923 (contains!15446 (toList!5521 lm!2023) lt!1842793))))

(assert (= (and d!1488442 res!1974223) b!4683380))

(declare-fun b_lambda!176745 () Bool)

(assert (=> (not b_lambda!176745) (not d!1488442)))

(declare-fun m!5581931 () Bool)

(assert (=> d!1488442 m!5581931))

(declare-fun m!5581933 () Bool)

(assert (=> d!1488442 m!5581933))

(assert (=> d!1488442 m!5581705))

(assert (=> b!4683380 m!5581675))

(assert (=> b!4683155 d!1488442))

(declare-fun d!1488444 () Bool)

(declare-fun res!1974224 () Bool)

(declare-fun e!2921924 () Bool)

(assert (=> d!1488444 (=> res!1974224 e!2921924)))

(assert (=> d!1488444 (= res!1974224 (and ((_ is Cons!52309) oldBucket!34) (= (_1!30123 (h!58530 oldBucket!34)) key!4653)))))

(assert (=> d!1488444 (= (containsKey!2967 oldBucket!34 key!4653) e!2921924)))

(declare-fun b!4683381 () Bool)

(declare-fun e!2921925 () Bool)

(assert (=> b!4683381 (= e!2921924 e!2921925)))

(declare-fun res!1974225 () Bool)

(assert (=> b!4683381 (=> (not res!1974225) (not e!2921925))))

(assert (=> b!4683381 (= res!1974225 ((_ is Cons!52309) oldBucket!34))))

(declare-fun b!4683382 () Bool)

(assert (=> b!4683382 (= e!2921925 (containsKey!2967 (t!359595 oldBucket!34) key!4653))))

(assert (= (and d!1488444 (not res!1974224)) b!4683381))

(assert (= (and b!4683381 res!1974225) b!4683382))

(assert (=> b!4683382 m!5581663))

(assert (=> b!4683155 d!1488444))

(declare-fun b!4683411 () Bool)

(declare-fun e!2921945 () Option!11991)

(assert (=> b!4683411 (= e!2921945 (Some!11990 (h!58530 lt!1842789)))))

(declare-fun b!4683412 () Bool)

(declare-fun e!2921943 () Option!11991)

(assert (=> b!4683412 (= e!2921943 None!11990)))

(declare-fun b!4683413 () Bool)

(declare-fun e!2921942 () Bool)

(declare-fun e!2921944 () Bool)

(assert (=> b!4683413 (= e!2921942 e!2921944)))

(declare-fun res!1974249 () Bool)

(assert (=> b!4683413 (=> (not res!1974249) (not e!2921944))))

(declare-fun lt!1843008 () Option!11991)

(assert (=> b!4683413 (= res!1974249 (isDefined!9246 lt!1843008))))

(declare-fun b!4683414 () Bool)

(declare-fun e!2921946 () Bool)

(assert (=> b!4683414 (= e!2921946 (not (containsKey!2967 lt!1842789 key!4653)))))

(declare-fun b!4683415 () Bool)

(declare-fun res!1974248 () Bool)

(assert (=> b!4683415 (=> (not res!1974248) (not e!2921944))))

(declare-fun get!17427 (Option!11991) tuple2!53658)

(assert (=> b!4683415 (= res!1974248 (= (_1!30123 (get!17427 lt!1843008)) key!4653))))

(declare-fun b!4683416 () Bool)

(assert (=> b!4683416 (= e!2921943 (getPair!420 (t!359595 lt!1842789) key!4653))))

(declare-fun d!1488446 () Bool)

(assert (=> d!1488446 e!2921942))

(declare-fun res!1974246 () Bool)

(assert (=> d!1488446 (=> res!1974246 e!2921942)))

(assert (=> d!1488446 (= res!1974246 e!2921946)))

(declare-fun res!1974247 () Bool)

(assert (=> d!1488446 (=> (not res!1974247) (not e!2921946))))

(assert (=> d!1488446 (= res!1974247 (isEmpty!29070 lt!1843008))))

(assert (=> d!1488446 (= lt!1843008 e!2921945)))

(declare-fun c!800967 () Bool)

(assert (=> d!1488446 (= c!800967 (and ((_ is Cons!52309) lt!1842789) (= (_1!30123 (h!58530 lt!1842789)) key!4653)))))

(assert (=> d!1488446 (noDuplicateKeys!1816 lt!1842789)))

(assert (=> d!1488446 (= (getPair!420 lt!1842789 key!4653) lt!1843008)))

(declare-fun b!4683417 () Bool)

(declare-fun contains!15452 (List!52433 tuple2!53658) Bool)

(assert (=> b!4683417 (= e!2921944 (contains!15452 lt!1842789 (get!17427 lt!1843008)))))

(declare-fun b!4683418 () Bool)

(assert (=> b!4683418 (= e!2921945 e!2921943)))

(declare-fun c!800968 () Bool)

(assert (=> b!4683418 (= c!800968 ((_ is Cons!52309) lt!1842789))))

(assert (= (and d!1488446 c!800967) b!4683411))

(assert (= (and d!1488446 (not c!800967)) b!4683418))

(assert (= (and b!4683418 c!800968) b!4683416))

(assert (= (and b!4683418 (not c!800968)) b!4683412))

(assert (= (and d!1488446 res!1974247) b!4683414))

(assert (= (and d!1488446 (not res!1974246)) b!4683413))

(assert (= (and b!4683413 res!1974249) b!4683415))

(assert (= (and b!4683415 res!1974248) b!4683417))

(declare-fun m!5581935 () Bool)

(assert (=> b!4683414 m!5581935))

(declare-fun m!5581937 () Bool)

(assert (=> d!1488446 m!5581937))

(declare-fun m!5581939 () Bool)

(assert (=> d!1488446 m!5581939))

(declare-fun m!5581941 () Bool)

(assert (=> b!4683415 m!5581941))

(declare-fun m!5581943 () Bool)

(assert (=> b!4683413 m!5581943))

(declare-fun m!5581945 () Bool)

(assert (=> b!4683416 m!5581945))

(assert (=> b!4683417 m!5581941))

(assert (=> b!4683417 m!5581941))

(declare-fun m!5581947 () Bool)

(assert (=> b!4683417 m!5581947))

(assert (=> b!4683155 d!1488446))

(declare-fun bs!1083742 () Bool)

(declare-fun d!1488448 () Bool)

(assert (= bs!1083742 (and d!1488448 d!1488384)))

(declare-fun lambda!205392 () Int)

(assert (=> bs!1083742 (= lambda!205392 lambda!205332)))

(assert (=> d!1488448 true))

(assert (=> d!1488448 true))

(assert (=> d!1488448 (= (allKeysSameHash!1642 oldBucket!34 hash!405 hashF!1323) (forall!11261 oldBucket!34 lambda!205392))))

(declare-fun bs!1083743 () Bool)

(assert (= bs!1083743 d!1488448))

(declare-fun m!5581949 () Bool)

(assert (=> bs!1083743 m!5581949))

(assert (=> b!4683166 d!1488448))

(declare-fun d!1488450 () Bool)

(declare-fun hash!4005 (Hashable!6185 K!13690) (_ BitVec 64))

(assert (=> d!1488450 (= (hash!4003 hashF!1323 key!4653) (hash!4005 hashF!1323 key!4653))))

(declare-fun bs!1083744 () Bool)

(assert (= bs!1083744 d!1488450))

(declare-fun m!5581969 () Bool)

(assert (=> bs!1083744 m!5581969))

(assert (=> b!4683157 d!1488450))

(declare-fun bs!1083760 () Bool)

(declare-fun b!4683468 () Bool)

(assert (= bs!1083760 (and b!4683468 d!1488384)))

(declare-fun lambda!205425 () Int)

(assert (=> bs!1083760 (not (= lambda!205425 lambda!205332))))

(declare-fun bs!1083761 () Bool)

(assert (= bs!1083761 (and b!4683468 d!1488448)))

(assert (=> bs!1083761 (not (= lambda!205425 lambda!205392))))

(assert (=> b!4683468 true))

(declare-fun bs!1083762 () Bool)

(declare-fun b!4683469 () Bool)

(assert (= bs!1083762 (and b!4683469 d!1488384)))

(declare-fun lambda!205426 () Int)

(assert (=> bs!1083762 (not (= lambda!205426 lambda!205332))))

(declare-fun bs!1083763 () Bool)

(assert (= bs!1083763 (and b!4683469 d!1488448)))

(assert (=> bs!1083763 (not (= lambda!205426 lambda!205392))))

(declare-fun bs!1083764 () Bool)

(assert (= bs!1083764 (and b!4683469 b!4683468)))

(assert (=> bs!1083764 (= lambda!205426 lambda!205425)))

(assert (=> b!4683469 true))

(declare-fun lambda!205427 () Int)

(assert (=> bs!1083762 (not (= lambda!205427 lambda!205332))))

(assert (=> bs!1083763 (not (= lambda!205427 lambda!205392))))

(declare-fun lt!1843084 () ListMap!4885)

(assert (=> bs!1083764 (= (= lt!1843084 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (= lambda!205427 lambda!205425))))

(assert (=> b!4683469 (= (= lt!1843084 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (= lambda!205427 lambda!205426))))

(assert (=> b!4683469 true))

(declare-fun bs!1083765 () Bool)

(declare-fun d!1488452 () Bool)

(assert (= bs!1083765 (and d!1488452 b!4683468)))

(declare-fun lambda!205428 () Int)

(declare-fun lt!1843070 () ListMap!4885)

(assert (=> bs!1083765 (= (= lt!1843070 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (= lambda!205428 lambda!205425))))

(declare-fun bs!1083766 () Bool)

(assert (= bs!1083766 (and d!1488452 b!4683469)))

(assert (=> bs!1083766 (= (= lt!1843070 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (= lambda!205428 lambda!205426))))

(declare-fun bs!1083767 () Bool)

(assert (= bs!1083767 (and d!1488452 d!1488448)))

(assert (=> bs!1083767 (not (= lambda!205428 lambda!205392))))

(assert (=> bs!1083766 (= (= lt!1843070 lt!1843084) (= lambda!205428 lambda!205427))))

(declare-fun bs!1083768 () Bool)

(assert (= bs!1083768 (and d!1488452 d!1488384)))

(assert (=> bs!1083768 (not (= lambda!205428 lambda!205332))))

(assert (=> d!1488452 true))

(declare-fun e!2921982 () ListMap!4885)

(assert (=> b!4683468 (= e!2921982 (extractMap!1842 (t!359596 (toList!5521 lm!2023))))))

(declare-fun lt!1843076 () Unit!123049)

(declare-fun call!327329 () Unit!123049)

(assert (=> b!4683468 (= lt!1843076 call!327329)))

(declare-fun call!327331 () Bool)

(assert (=> b!4683468 call!327331))

(declare-fun lt!1843086 () Unit!123049)

(assert (=> b!4683468 (= lt!1843086 lt!1843076)))

(declare-fun call!327330 () Bool)

(assert (=> b!4683468 call!327330))

(declare-fun lt!1843088 () Unit!123049)

(declare-fun Unit!123068 () Unit!123049)

(assert (=> b!4683468 (= lt!1843088 Unit!123068)))

(declare-fun e!2921981 () Bool)

(assert (=> d!1488452 e!2921981))

(declare-fun res!1974275 () Bool)

(assert (=> d!1488452 (=> (not res!1974275) (not e!2921981))))

(assert (=> d!1488452 (= res!1974275 (forall!11261 (_2!30124 (h!58531 (toList!5521 lm!2023))) lambda!205428))))

(assert (=> d!1488452 (= lt!1843070 e!2921982)))

(declare-fun c!800974 () Bool)

(assert (=> d!1488452 (= c!800974 ((_ is Nil!52309) (_2!30124 (h!58531 (toList!5521 lm!2023)))))))

(assert (=> d!1488452 (noDuplicateKeys!1816 (_2!30124 (h!58531 (toList!5521 lm!2023))))))

(assert (=> d!1488452 (= (addToMapMapFromBucket!1248 (_2!30124 (h!58531 (toList!5521 lm!2023))) (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) lt!1843070)))

(assert (=> b!4683469 (= e!2921982 lt!1843084)))

(declare-fun lt!1843069 () ListMap!4885)

(declare-fun +!2108 (ListMap!4885 tuple2!53658) ListMap!4885)

(assert (=> b!4683469 (= lt!1843069 (+!2108 (extractMap!1842 (t!359596 (toList!5521 lm!2023))) (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023))))))))

(assert (=> b!4683469 (= lt!1843084 (addToMapMapFromBucket!1248 (t!359595 (_2!30124 (h!58531 (toList!5521 lm!2023)))) (+!2108 (extractMap!1842 (t!359596 (toList!5521 lm!2023))) (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023)))))))))

(declare-fun lt!1843082 () Unit!123049)

(assert (=> b!4683469 (= lt!1843082 call!327329)))

(assert (=> b!4683469 (forall!11261 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) lambda!205426)))

(declare-fun lt!1843080 () Unit!123049)

(assert (=> b!4683469 (= lt!1843080 lt!1843082)))

(assert (=> b!4683469 call!327330))

(declare-fun lt!1843075 () Unit!123049)

(declare-fun Unit!123069 () Unit!123049)

(assert (=> b!4683469 (= lt!1843075 Unit!123069)))

(assert (=> b!4683469 (forall!11261 (t!359595 (_2!30124 (h!58531 (toList!5521 lm!2023)))) lambda!205427)))

(declare-fun lt!1843074 () Unit!123049)

(declare-fun Unit!123070 () Unit!123049)

(assert (=> b!4683469 (= lt!1843074 Unit!123070)))

(declare-fun lt!1843085 () Unit!123049)

(declare-fun Unit!123071 () Unit!123049)

(assert (=> b!4683469 (= lt!1843085 Unit!123071)))

(declare-fun lt!1843071 () Unit!123049)

(declare-fun forallContained!3368 (List!52433 Int tuple2!53658) Unit!123049)

(assert (=> b!4683469 (= lt!1843071 (forallContained!3368 (toList!5522 lt!1843069) lambda!205427 (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023))))))))

(assert (=> b!4683469 (contains!15448 lt!1843069 (_1!30123 (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023))))))))

(declare-fun lt!1843081 () Unit!123049)

(declare-fun Unit!123072 () Unit!123049)

(assert (=> b!4683469 (= lt!1843081 Unit!123072)))

(assert (=> b!4683469 (contains!15448 lt!1843084 (_1!30123 (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023))))))))

(declare-fun lt!1843087 () Unit!123049)

(declare-fun Unit!123073 () Unit!123049)

(assert (=> b!4683469 (= lt!1843087 Unit!123073)))

(assert (=> b!4683469 (forall!11261 (_2!30124 (h!58531 (toList!5521 lm!2023))) lambda!205427)))

(declare-fun lt!1843089 () Unit!123049)

(declare-fun Unit!123074 () Unit!123049)

(assert (=> b!4683469 (= lt!1843089 Unit!123074)))

(assert (=> b!4683469 (forall!11261 (toList!5522 lt!1843069) lambda!205427)))

(declare-fun lt!1843079 () Unit!123049)

(declare-fun Unit!123075 () Unit!123049)

(assert (=> b!4683469 (= lt!1843079 Unit!123075)))

(declare-fun lt!1843077 () Unit!123049)

(declare-fun Unit!123076 () Unit!123049)

(assert (=> b!4683469 (= lt!1843077 Unit!123076)))

(declare-fun lt!1843073 () Unit!123049)

(declare-fun addForallContainsKeyThenBeforeAdding!673 (ListMap!4885 ListMap!4885 K!13690 V!13936) Unit!123049)

(assert (=> b!4683469 (= lt!1843073 (addForallContainsKeyThenBeforeAdding!673 (extractMap!1842 (t!359596 (toList!5521 lm!2023))) lt!1843084 (_1!30123 (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023))))) (_2!30123 (h!58530 (_2!30124 (h!58531 (toList!5521 lm!2023)))))))))

(assert (=> b!4683469 call!327331))

(declare-fun lt!1843072 () Unit!123049)

(assert (=> b!4683469 (= lt!1843072 lt!1843073)))

(assert (=> b!4683469 (forall!11261 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) lambda!205427)))

(declare-fun lt!1843083 () Unit!123049)

(declare-fun Unit!123077 () Unit!123049)

(assert (=> b!4683469 (= lt!1843083 Unit!123077)))

(declare-fun res!1974274 () Bool)

(assert (=> b!4683469 (= res!1974274 (forall!11261 (_2!30124 (h!58531 (toList!5521 lm!2023))) lambda!205427))))

(declare-fun e!2921980 () Bool)

(assert (=> b!4683469 (=> (not res!1974274) (not e!2921980))))

(assert (=> b!4683469 e!2921980))

(declare-fun lt!1843078 () Unit!123049)

(declare-fun Unit!123078 () Unit!123049)

(assert (=> b!4683469 (= lt!1843078 Unit!123078)))

(declare-fun bm!327324 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!674 (ListMap!4885) Unit!123049)

(assert (=> bm!327324 (= call!327329 (lemmaContainsAllItsOwnKeys!674 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))))))

(declare-fun bm!327325 () Bool)

(assert (=> bm!327325 (= call!327330 (forall!11261 (ite c!800974 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (toList!5522 lt!1843069)) (ite c!800974 lambda!205425 lambda!205427)))))

(declare-fun b!4683470 () Bool)

(assert (=> b!4683470 (= e!2921980 (forall!11261 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) lambda!205427))))

(declare-fun b!4683471 () Bool)

(declare-fun res!1974273 () Bool)

(assert (=> b!4683471 (=> (not res!1974273) (not e!2921981))))

(assert (=> b!4683471 (= res!1974273 (forall!11261 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) lambda!205428))))

(declare-fun bm!327326 () Bool)

(assert (=> bm!327326 (= call!327331 (forall!11261 (toList!5522 (extractMap!1842 (t!359596 (toList!5521 lm!2023)))) (ite c!800974 lambda!205425 lambda!205427)))))

(declare-fun b!4683472 () Bool)

(assert (=> b!4683472 (= e!2921981 (invariantList!1386 (toList!5522 lt!1843070)))))

(assert (= (and d!1488452 c!800974) b!4683468))

(assert (= (and d!1488452 (not c!800974)) b!4683469))

(assert (= (and b!4683469 res!1974274) b!4683470))

(assert (= (or b!4683468 b!4683469) bm!327324))

(assert (= (or b!4683468 b!4683469) bm!327325))

(assert (= (or b!4683468 b!4683469) bm!327326))

(assert (= (and d!1488452 res!1974275) b!4683471))

(assert (= (and b!4683471 res!1974273) b!4683472))

(declare-fun m!5582003 () Bool)

(assert (=> b!4683472 m!5582003))

(declare-fun m!5582005 () Bool)

(assert (=> b!4683469 m!5582005))

(declare-fun m!5582007 () Bool)

(assert (=> b!4683469 m!5582007))

(assert (=> b!4683469 m!5581695))

(declare-fun m!5582009 () Bool)

(assert (=> b!4683469 m!5582009))

(declare-fun m!5582011 () Bool)

(assert (=> b!4683469 m!5582011))

(declare-fun m!5582013 () Bool)

(assert (=> b!4683469 m!5582013))

(declare-fun m!5582015 () Bool)

(assert (=> b!4683469 m!5582015))

(assert (=> b!4683469 m!5581695))

(declare-fun m!5582017 () Bool)

(assert (=> b!4683469 m!5582017))

(assert (=> b!4683469 m!5582017))

(declare-fun m!5582019 () Bool)

(assert (=> b!4683469 m!5582019))

(declare-fun m!5582021 () Bool)

(assert (=> b!4683469 m!5582021))

(assert (=> b!4683469 m!5582013))

(declare-fun m!5582023 () Bool)

(assert (=> b!4683469 m!5582023))

(declare-fun m!5582025 () Bool)

(assert (=> b!4683469 m!5582025))

(declare-fun m!5582027 () Bool)

(assert (=> bm!327326 m!5582027))

(declare-fun m!5582029 () Bool)

(assert (=> b!4683471 m!5582029))

(declare-fun m!5582031 () Bool)

(assert (=> d!1488452 m!5582031))

(declare-fun m!5582033 () Bool)

(assert (=> d!1488452 m!5582033))

(assert (=> bm!327324 m!5581695))

(declare-fun m!5582035 () Bool)

(assert (=> bm!327324 m!5582035))

(declare-fun m!5582037 () Bool)

(assert (=> bm!327325 m!5582037))

(assert (=> b!4683470 m!5582011))

(assert (=> b!4683167 d!1488452))

(declare-fun bs!1083769 () Bool)

(declare-fun d!1488480 () Bool)

(assert (= bs!1083769 (and d!1488480 d!1488414)))

(declare-fun lambda!205429 () Int)

(assert (=> bs!1083769 (= lambda!205429 lambda!205384)))

(declare-fun bs!1083770 () Bool)

(assert (= bs!1083770 (and d!1488480 d!1488402)))

(assert (=> bs!1083770 (= lambda!205429 lambda!205338)))

(declare-fun bs!1083771 () Bool)

(assert (= bs!1083771 (and d!1488480 d!1488410)))

(assert (=> bs!1083771 (= lambda!205429 lambda!205369)))

(declare-fun bs!1083772 () Bool)

(assert (= bs!1083772 (and d!1488480 start!473048)))

(assert (=> bs!1083772 (= lambda!205429 lambda!205323)))

(declare-fun bs!1083773 () Bool)

(assert (= bs!1083773 (and d!1488480 d!1488370)))

(assert (=> bs!1083773 (not (= lambda!205429 lambda!205326))))

(declare-fun lt!1843090 () ListMap!4885)

(assert (=> d!1488480 (invariantList!1386 (toList!5522 lt!1843090))))

(declare-fun e!2921983 () ListMap!4885)

(assert (=> d!1488480 (= lt!1843090 e!2921983)))

(declare-fun c!800975 () Bool)

(assert (=> d!1488480 (= c!800975 ((_ is Cons!52310) (t!359596 (toList!5521 lm!2023))))))

(assert (=> d!1488480 (forall!11259 (t!359596 (toList!5521 lm!2023)) lambda!205429)))

(assert (=> d!1488480 (= (extractMap!1842 (t!359596 (toList!5521 lm!2023))) lt!1843090)))

(declare-fun b!4683475 () Bool)

(assert (=> b!4683475 (= e!2921983 (addToMapMapFromBucket!1248 (_2!30124 (h!58531 (t!359596 (toList!5521 lm!2023)))) (extractMap!1842 (t!359596 (t!359596 (toList!5521 lm!2023))))))))

(declare-fun b!4683476 () Bool)

(assert (=> b!4683476 (= e!2921983 (ListMap!4886 Nil!52309))))

(assert (= (and d!1488480 c!800975) b!4683475))

(assert (= (and d!1488480 (not c!800975)) b!4683476))

(declare-fun m!5582039 () Bool)

(assert (=> d!1488480 m!5582039))

(declare-fun m!5582041 () Bool)

(assert (=> d!1488480 m!5582041))

(declare-fun m!5582043 () Bool)

(assert (=> b!4683475 m!5582043))

(assert (=> b!4683475 m!5582043))

(declare-fun m!5582045 () Bool)

(assert (=> b!4683475 m!5582045))

(assert (=> b!4683167 d!1488480))

(declare-fun tp!1345348 () Bool)

(declare-fun e!2921986 () Bool)

(declare-fun b!4683481 () Bool)

(assert (=> b!4683481 (= e!2921986 (and tp_is_empty!30557 tp_is_empty!30559 tp!1345348))))

(assert (=> b!4683164 (= tp!1345335 e!2921986)))

(assert (= (and b!4683164 ((_ is Cons!52309) (t!359595 oldBucket!34))) b!4683481))

(declare-fun e!2921987 () Bool)

(declare-fun b!4683482 () Bool)

(declare-fun tp!1345349 () Bool)

(assert (=> b!4683482 (= e!2921987 (and tp_is_empty!30557 tp_is_empty!30559 tp!1345349))))

(assert (=> b!4683160 (= tp!1345334 e!2921987)))

(assert (= (and b!4683160 ((_ is Cons!52309) (t!359595 newBucket!218))) b!4683482))

(declare-fun b!4683487 () Bool)

(declare-fun e!2921990 () Bool)

(declare-fun tp!1345354 () Bool)

(declare-fun tp!1345355 () Bool)

(assert (=> b!4683487 (= e!2921990 (and tp!1345354 tp!1345355))))

(assert (=> b!4683168 (= tp!1345333 e!2921990)))

(assert (= (and b!4683168 ((_ is Cons!52310) (toList!5521 lm!2023))) b!4683487))

(declare-fun b_lambda!176753 () Bool)

(assert (= b_lambda!176741 (or start!473048 b_lambda!176753)))

(declare-fun bs!1083774 () Bool)

(declare-fun d!1488482 () Bool)

(assert (= bs!1083774 (and d!1488482 start!473048)))

(assert (=> bs!1083774 (= (dynLambda!21689 lambda!205323 (h!58531 (toList!5521 lm!2023))) (noDuplicateKeys!1816 (_2!30124 (h!58531 (toList!5521 lm!2023)))))))

(assert (=> bs!1083774 m!5582033))

(assert (=> b!4683186 d!1488482))

(declare-fun b_lambda!176755 () Bool)

(assert (= b_lambda!176745 (or start!473048 b_lambda!176755)))

(declare-fun bs!1083775 () Bool)

(declare-fun d!1488484 () Bool)

(assert (= bs!1083775 (and d!1488484 start!473048)))

(assert (=> bs!1083775 (= (dynLambda!21689 lambda!205323 lt!1842793) (noDuplicateKeys!1816 (_2!30124 lt!1842793)))))

(declare-fun m!5582047 () Bool)

(assert (=> bs!1083775 m!5582047))

(assert (=> d!1488442 d!1488484))

(check-sat (not d!1488452) (not b!4683218) (not d!1488380) (not b!4683254) (not d!1488446) (not b!4683266) (not d!1488480) (not d!1488440) (not b!4683253) (not b!4683417) (not d!1488406) (not bm!327326) (not b!4683382) (not b!4683377) (not bm!327325) (not bs!1083775) (not d!1488408) (not b!4683259) (not b!4683368) (not b!4683256) (not b!4683298) (not b!4683487) (not d!1488384) (not d!1488402) (not d!1488436) (not b!4683415) (not bs!1083774) (not b!4683260) (not b!4683380) (not b!4683413) (not d!1488448) (not b!4683470) (not d!1488404) (not b!4683414) (not b_lambda!176753) (not d!1488412) (not bm!327324) (not d!1488450) (not b!4683416) (not d!1488386) (not b!4683370) (not d!1488394) (not b!4683219) (not d!1488442) (not d!1488370) (not d!1488434) (not b!4683475) (not b_lambda!176755) (not b!4683369) (not d!1488414) tp_is_empty!30559 (not b!4683258) (not b!4683471) (not b!4683482) (not b!4683469) (not b!4683257) (not d!1488410) (not b!4683472) (not b!4683187) tp_is_empty!30557 (not b!4683371) (not b!4683285) (not b!4683296) (not b!4683481) (not b!4683216) (not bm!327308) (not b!4683217) (not b!4683278))
(check-sat)
