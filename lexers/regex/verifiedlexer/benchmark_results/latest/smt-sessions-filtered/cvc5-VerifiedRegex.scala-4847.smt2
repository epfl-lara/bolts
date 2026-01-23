; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!248874 () Bool)

(assert start!248874)

(assert (=> start!248874 true))

(declare-fun b!2576267 () Bool)

(declare-fun e!1625599 () Bool)

(declare-datatypes ((List!29733 0))(
  ( (Nil!29633) (Cons!29633 (h!35053 (_ BitVec 16)) (t!211434 List!29733)) )
))
(declare-datatypes ((IArray!18469 0))(
  ( (IArray!18470 (innerList!9292 List!29733)) )
))
(declare-datatypes ((Conc!9232 0))(
  ( (Node!9232 (left!22513 Conc!9232) (right!22843 Conc!9232) (csize!18694 Int) (cheight!9443 Int)) (Leaf!14080 (xs!12216 IArray!18469) (csize!18695 Int)) (Empty!9232) )
))
(declare-datatypes ((BalanceConc!18078 0))(
  ( (BalanceConc!18079 (c!414920 Conc!9232)) )
))
(declare-fun x!462482 () BalanceConc!18078)

(declare-fun tp!818913 () Bool)

(declare-fun inv!39871 (Conc!9232) Bool)

(assert (=> b!2576267 (= e!1625599 (and (inv!39871 (c!414920 x!462482)) tp!818913))))

(declare-datatypes ((NewLineValueInjection!4 0))(
  ( (NewLineValueInjection!5) )
))
(declare-fun thiss!4369 () NewLineValueInjection!4)

(declare-fun inst!1400 () Bool)

(declare-fun inv!39872 (BalanceConc!18078) Bool)

(declare-fun list!11162 (BalanceConc!18078) List!29733)

(declare-datatypes ((TokenValue!4696 0))(
  ( (FloatLiteralValue!9392 (text!33317 List!29733)) (TokenValueExt!4695 (__x!19215 Int)) (Broken!23480 (value!144771 List!29733)) (Object!4795) (End!4696) (Def!4696) (Underscore!4696) (Match!4696) (Else!4696) (Error!4696) (Case!4696) (If!4696) (Extends!4696) (Abstract!4696) (Class!4696) (Val!4696) (DelimiterValue!9392 (del!4756 List!29733)) (KeywordValue!4702 (value!144772 List!29733)) (CommentValue!9392 (value!144773 List!29733)) (WhitespaceValue!9392 (value!144774 List!29733)) (IndentationValue!4696 (value!144775 List!29733)) (String!32917) (Int32!4696) (Broken!23481 (value!144776 List!29733)) (Boolean!4697) (Unit!43477) (OperatorValue!4699 (op!4756 List!29733)) (IdentifierValue!9392 (value!144777 List!29733)) (IdentifierValue!9393 (value!144778 List!29733)) (WhitespaceValue!9393 (value!144779 List!29733)) (True!9392) (False!9392) (Broken!23482 (value!144780 List!29733)) (Broken!23483 (value!144781 List!29733)) (True!9393) (RightBrace!4696) (RightBracket!4696) (Colon!4696) (Null!4696) (Comma!4696) (LeftBracket!4696) (False!9393) (LeftBrace!4696) (ImaginaryLiteralValue!4696 (text!33318 List!29733)) (StringLiteralValue!14088 (value!144782 List!29733)) (EOFValue!4696 (value!144783 List!29733)) (IdentValue!4696 (value!144784 List!29733)) (DelimiterValue!9393 (value!144785 List!29733)) (DedentValue!4696 (value!144786 List!29733)) (NewLineValue!4696 (value!144787 List!29733)) (IntegerValue!14088 (value!144788 (_ BitVec 32)) (text!33319 List!29733)) (IntegerValue!14089 (value!144789 Int) (text!33320 List!29733)) (Times!4696) (Or!4696) (Equal!4696) (Minus!4696) (Broken!23484 (value!144790 List!29733)) (And!4696) (Div!4696) (LessEqual!4696) (Mod!4696) (Concat!12340) (Not!4696) (Plus!4696) (SpaceValue!4696 (value!144791 List!29733)) (IntegerValue!14090 (value!144792 Int) (text!33321 List!29733)) (StringLiteralValue!14089 (text!33322 List!29733)) (FloatLiteralValue!9393 (text!33323 List!29733)) (BytesLiteralValue!4696 (value!144793 List!29733)) (CommentValue!9393 (value!144794 List!29733)) (StringLiteralValue!14090 (value!144795 List!29733)) (ErrorTokenValue!4696 (msg!4757 List!29733)) )
))
(declare-fun toCharacters!17 (NewLineValueInjection!4 TokenValue!4696) BalanceConc!18078)

(declare-fun toValue!24 (NewLineValueInjection!4 BalanceConc!18078) TokenValue!4696)

(assert (=> start!248874 (= inst!1400 (=> (and (inv!39872 x!462482) e!1625599) (= (list!11162 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482))) (list!11162 x!462482))))))

(assert (= start!248874 b!2576267))

(declare-fun m!2910815 () Bool)

(assert (=> b!2576267 m!2910815))

(declare-fun m!2910817 () Bool)

(assert (=> start!248874 m!2910817))

(declare-fun m!2910819 () Bool)

(assert (=> start!248874 m!2910819))

(declare-fun m!2910821 () Bool)

(assert (=> start!248874 m!2910821))

(declare-fun m!2910823 () Bool)

(assert (=> start!248874 m!2910823))

(assert (=> start!248874 m!2910817))

(assert (=> start!248874 m!2910823))

(declare-fun m!2910825 () Bool)

(assert (=> start!248874 m!2910825))

(declare-fun bs!470162 () Bool)

(declare-fun neg-inst!1400 () Bool)

(declare-fun s!228106 () Bool)

(assert (= bs!470162 (and neg-inst!1400 s!228106)))

(assert (=> bs!470162 (=> true (= (list!11162 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482))) (list!11162 x!462482)))))

(assert (=> m!2910825 m!2910823))

(assert (=> m!2910825 m!2910817))

(assert (=> m!2910825 m!2910819))

(assert (=> m!2910825 s!228106))

(assert (=> m!2910823 s!228106))

(declare-fun bs!470163 () Bool)

(assert (= bs!470163 (and neg-inst!1400 start!248874)))

(assert (=> bs!470163 (= true inst!1400)))

(declare-fun lambda!94834 () Int)

(declare-fun Forall!1139 (Int) Bool)

(assert (=> start!248874 (= (Forall!1139 lambda!94834) inst!1400)))

(assert (=> start!248874 (not (Forall!1139 lambda!94834))))

(assert (=> start!248874 true))

(assert (= neg-inst!1400 inst!1400))

(declare-fun m!2910827 () Bool)

(assert (=> start!248874 m!2910827))

(assert (=> start!248874 m!2910827))

(push 1)

(assert (not bs!470162))

(assert (not b!2576267))

(assert (not start!248874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728614 () Bool)

(declare-fun list!11164 (Conc!9232) List!29733)

(assert (=> d!728614 (= (list!11162 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482))) (list!11164 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)))))))

(declare-fun bs!470166 () Bool)

(assert (= bs!470166 d!728614))

(declare-fun m!2910843 () Bool)

(assert (=> bs!470166 m!2910843))

(assert (=> bs!470162 d!728614))

(declare-fun d!728616 () Bool)

(declare-fun c!414925 () Bool)

(assert (=> d!728616 (= c!414925 (is-NewLineValue!4696 (toValue!24 thiss!4369 x!462482)))))

(declare-fun e!1625605 () BalanceConc!18078)

(assert (=> d!728616 (= (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)) e!1625605)))

(declare-fun b!2576277 () Bool)

(declare-fun seqFromList!3136 (List!29733) BalanceConc!18078)

(assert (=> b!2576277 (= e!1625605 (seqFromList!3136 (value!144787 (toValue!24 thiss!4369 x!462482))))))

(declare-fun b!2576278 () Bool)

(assert (=> b!2576278 (= e!1625605 (BalanceConc!18079 Empty!9232))))

(assert (= (and d!728616 c!414925) b!2576277))

(assert (= (and d!728616 (not c!414925)) b!2576278))

(declare-fun m!2910847 () Bool)

(assert (=> b!2576277 m!2910847))

(assert (=> bs!470162 d!728616))

(declare-fun d!728622 () Bool)

(declare-fun efficientList!343 (BalanceConc!18078) List!29733)

(assert (=> d!728622 (= (toValue!24 thiss!4369 x!462482) (NewLineValue!4696 (efficientList!343 x!462482)))))

(declare-fun bs!470168 () Bool)

(assert (= bs!470168 d!728622))

(declare-fun m!2910849 () Bool)

(assert (=> bs!470168 m!2910849))

(assert (=> bs!470162 d!728622))

(declare-fun d!728624 () Bool)

(assert (=> d!728624 (= (list!11162 x!462482) (list!11164 (c!414920 x!462482)))))

(declare-fun bs!470169 () Bool)

(assert (= bs!470169 d!728624))

(declare-fun m!2910851 () Bool)

(assert (=> bs!470169 m!2910851))

(assert (=> bs!470162 d!728624))

(push 1)

(assert (not start!248874))

(assert (not b!2576267))

(assert (not b!2576277))

(assert (not d!728624))

(assert (not d!728622))

(assert (not d!728614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!728628 () Bool)

(declare-fun lt!906621 () List!29733)

(assert (=> d!728628 (= lt!906621 (list!11162 x!462482))))

(declare-fun efficientList!345 (Conc!9232 List!29733) List!29733)

(declare-fun efficientList$default$2!118 (Conc!9232) List!29733)

(assert (=> d!728628 (= lt!906621 (efficientList!345 (c!414920 x!462482) (efficientList$default$2!118 (c!414920 x!462482))))))

(assert (=> d!728628 (= (efficientList!343 x!462482) lt!906621)))

(declare-fun bs!470172 () Bool)

(assert (= bs!470172 d!728628))

(assert (=> bs!470172 m!2910825))

(declare-fun m!2910859 () Bool)

(assert (=> bs!470172 m!2910859))

(assert (=> bs!470172 m!2910859))

(declare-fun m!2910861 () Bool)

(assert (=> bs!470172 m!2910861))

(assert (=> d!728622 d!728628))

(declare-fun b!2576293 () Bool)

(declare-fun e!1625613 () List!29733)

(assert (=> b!2576293 (= e!1625613 Nil!29633)))

(declare-fun b!2576296 () Bool)

(declare-fun e!1625614 () List!29733)

(declare-fun ++!7283 (List!29733 List!29733) List!29733)

(assert (=> b!2576296 (= e!1625614 (++!7283 (list!11164 (left!22513 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482))))) (list!11164 (right!22843 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)))))))))

(declare-fun b!2576294 () Bool)

(assert (=> b!2576294 (= e!1625613 e!1625614)))

(declare-fun c!414935 () Bool)

(assert (=> b!2576294 (= c!414935 (is-Leaf!14080 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)))))))

(declare-fun b!2576295 () Bool)

(declare-fun list!11166 (IArray!18469) List!29733)

(assert (=> b!2576295 (= e!1625614 (list!11166 (xs!12216 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482))))))))

(declare-fun d!728632 () Bool)

(declare-fun c!414934 () Bool)

(assert (=> d!728632 (= c!414934 (is-Empty!9232 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)))))))

(assert (=> d!728632 (= (list!11164 (c!414920 (toCharacters!17 thiss!4369 (toValue!24 thiss!4369 x!462482)))) e!1625613)))

(assert (= (and d!728632 c!414934) b!2576293))

(assert (= (and d!728632 (not c!414934)) b!2576294))

(assert (= (and b!2576294 c!414935) b!2576295))

(assert (= (and b!2576294 (not c!414935)) b!2576296))

(declare-fun m!2910863 () Bool)

(assert (=> b!2576296 m!2910863))

(declare-fun m!2910865 () Bool)

(assert (=> b!2576296 m!2910865))

(assert (=> b!2576296 m!2910863))

(assert (=> b!2576296 m!2910865))

(declare-fun m!2910867 () Bool)

(assert (=> b!2576296 m!2910867))

(declare-fun m!2910869 () Bool)

(assert (=> b!2576295 m!2910869))

(assert (=> d!728614 d!728632))

(declare-fun b!2576297 () Bool)

(declare-fun e!1625615 () List!29733)

(assert (=> b!2576297 (= e!1625615 Nil!29633)))

(declare-fun b!2576300 () Bool)

(declare-fun e!1625616 () List!29733)

(assert (=> b!2576300 (= e!1625616 (++!7283 (list!11164 (left!22513 (c!414920 x!462482))) (list!11164 (right!22843 (c!414920 x!462482)))))))

(declare-fun b!2576298 () Bool)

(assert (=> b!2576298 (= e!1625615 e!1625616)))

(declare-fun c!414937 () Bool)

(assert (=> b!2576298 (= c!414937 (is-Leaf!14080 (c!414920 x!462482)))))

(declare-fun b!2576299 () Bool)

(assert (=> b!2576299 (= e!1625616 (list!11166 (xs!12216 (c!414920 x!462482))))))

(declare-fun d!728634 () Bool)

(declare-fun c!414936 () Bool)

(assert (=> d!728634 (= c!414936 (is-Empty!9232 (c!414920 x!462482)))))

(assert (=> d!728634 (= (list!11164 (c!414920 x!462482)) e!1625615)))

(assert (= (and d!728634 c!414936) b!2576297))

(assert (= (and d!728634 (not c!414936)) b!2576298))

(assert (= (and b!2576298 c!414937) b!2576299))

(assert (= (and b!2576298 (not c!414937)) b!2576300))

(declare-fun m!2910871 () Bool)

(assert (=> b!2576300 m!2910871))

(declare-fun m!2910873 () Bool)

(assert (=> b!2576300 m!2910873))

(assert (=> b!2576300 m!2910871))

(assert (=> b!2576300 m!2910873))

(declare-fun m!2910875 () Bool)

(assert (=> b!2576300 m!2910875))

(declare-fun m!2910877 () Bool)

(assert (=> b!2576299 m!2910877))

(assert (=> d!728624 d!728634))

(push 1)

(assert (not b!2576295))

(assert (not start!248874))

(assert (not b!2576277))

(assert (not b!2576299))

(assert (not b!2576296))

(assert (not d!728628))

(assert (not b!2576300))

(assert (not b!2576267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!728628 d!728624))

(declare-fun d!728640 () Bool)

(declare-fun lt!906636 () List!29733)

(assert (=> d!728640 (= lt!906636 (++!7283 (list!11164 (c!414920 x!462482)) (efficientList$default$2!118 (c!414920 x!462482))))))

(declare-fun e!1625631 () List!29733)

(assert (=> d!728640 (= lt!906636 e!1625631)))

(declare-fun c!414951 () Bool)

(assert (=> d!728640 (= c!414951 (is-Empty!9232 (c!414920 x!462482)))))

(assert (=> d!728640 (= (efficientList!345 (c!414920 x!462482) (efficientList$default$2!118 (c!414920 x!462482))) lt!906636)))

(declare-fun b!2576325 () Bool)

(declare-fun e!1625629 () List!29733)

(declare-fun call!166666 () List!29733)

(assert (=> b!2576325 (= e!1625629 call!166666)))

(declare-fun b!2576326 () Bool)

(assert (=> b!2576326 (= e!1625631 e!1625629)))

(declare-fun c!414952 () Bool)

(assert (=> b!2576326 (= c!414952 (is-Leaf!14080 (c!414920 x!462482)))))

(declare-fun b!2576327 () Bool)

(declare-fun e!1625630 () List!29733)

(declare-fun efficientList!347 (IArray!18469) List!29733)

(assert (=> b!2576327 (= e!1625630 (efficientList!347 (xs!12216 (c!414920 x!462482))))))

(declare-fun bm!166661 () Bool)

(declare-fun c!414950 () Bool)

(assert (=> bm!166661 (= c!414950 c!414952)))

(declare-fun lt!906637 () List!29733)

(assert (=> bm!166661 (= call!166666 (++!7283 e!1625630 (ite c!414952 (efficientList$default$2!118 (c!414920 x!462482)) lt!906637)))))

(declare-fun b!2576328 () Bool)

(declare-datatypes ((Unit!43479 0))(
  ( (Unit!43480) )
))
(declare-fun lt!906638 () Unit!43479)

(declare-fun lt!906635 () Unit!43479)

(assert (=> b!2576328 (= lt!906638 lt!906635)))

(declare-fun lt!906639 () List!29733)

(assert (=> b!2576328 (= (++!7283 call!166666 (efficientList$default$2!118 (c!414920 x!462482))) (++!7283 lt!906639 (++!7283 lt!906637 (efficientList$default$2!118 (c!414920 x!462482)))))))

(declare-fun lemmaConcatAssociativity!1469 (List!29733 List!29733 List!29733) Unit!43479)

(assert (=> b!2576328 (= lt!906635 (lemmaConcatAssociativity!1469 lt!906639 lt!906637 (efficientList$default$2!118 (c!414920 x!462482))))))

(assert (=> b!2576328 (= lt!906637 (list!11164 (right!22843 (c!414920 x!462482))))))

(assert (=> b!2576328 (= lt!906639 (list!11164 (left!22513 (c!414920 x!462482))))))

(assert (=> b!2576328 (= e!1625629 (efficientList!345 (left!22513 (c!414920 x!462482)) (efficientList!345 (right!22843 (c!414920 x!462482)) (efficientList$default$2!118 (c!414920 x!462482)))))))

(declare-fun b!2576329 () Bool)

(assert (=> b!2576329 (= e!1625630 lt!906639)))

(declare-fun b!2576330 () Bool)

(assert (=> b!2576330 (= e!1625631 (efficientList$default$2!118 (c!414920 x!462482)))))

(assert (= (and d!728640 c!414951) b!2576330))

(assert (= (and d!728640 (not c!414951)) b!2576326))

(assert (= (and b!2576326 c!414952) b!2576325))

(assert (= (and b!2576326 (not c!414952)) b!2576328))

(assert (= (or b!2576325 b!2576328) bm!166661))

(assert (= (and bm!166661 c!414950) b!2576327))

(assert (= (and bm!166661 (not c!414950)) b!2576329))

(assert (=> d!728640 m!2910851))

(assert (=> d!728640 m!2910851))

(assert (=> d!728640 m!2910859))

(declare-fun m!2910891 () Bool)

(assert (=> d!728640 m!2910891))

(declare-fun m!2910893 () Bool)

(assert (=> b!2576327 m!2910893))

(declare-fun m!2910895 () Bool)

(assert (=> bm!166661 m!2910895))

(declare-fun m!2910897 () Bool)

(assert (=> b!2576328 m!2910897))

(declare-fun m!2910899 () Bool)

(assert (=> b!2576328 m!2910899))

(assert (=> b!2576328 m!2910859))

(assert (=> b!2576328 m!2910897))

(assert (=> b!2576328 m!2910859))

(declare-fun m!2910901 () Bool)

(assert (=> b!2576328 m!2910901))

(assert (=> b!2576328 m!2910859))

(declare-fun m!2910905 () Bool)

(assert (=> b!2576328 m!2910905))

(assert (=> b!2576328 m!2910871))

(assert (=> b!2576328 m!2910901))

(declare-fun m!2910909 () Bool)

(assert (=> b!2576328 m!2910909))

(assert (=> b!2576328 m!2910873))

(assert (=> b!2576328 m!2910859))

(declare-fun m!2910911 () Bool)

(assert (=> b!2576328 m!2910911))

(assert (=> d!728628 d!728640))

(declare-fun d!728644 () Bool)

(assert (=> d!728644 (= (efficientList$default$2!118 (c!414920 x!462482)) Nil!29633)))

(assert (=> d!728628 d!728644))

(declare-fun d!728646 () Bool)

(declare-fun c!414957 () Bool)

(assert (=> d!728646 (= c!414957 (is-Node!9232 (c!414920 x!462482)))))

(declare-fun e!1625638 () Bool)

(assert (=> d!728646 (= (inv!39871 (c!414920 x!462482)) e!1625638)))

(declare-fun b!2576341 () Bool)

(declare-fun inv!39875 (Conc!9232) Bool)

(assert (=> b!2576341 (= e!1625638 (inv!39875 (c!414920 x!462482)))))

(declare-fun b!2576342 () Bool)

(declare-fun e!1625639 () Bool)

(assert (=> b!2576342 (= e!1625638 e!1625639)))

(declare-fun res!1083687 () Bool)

(assert (=> b!2576342 (= res!1083687 (not (is-Leaf!14080 (c!414920 x!462482))))))

(assert (=> b!2576342 (=> res!1083687 e!1625639)))

(declare-fun b!2576343 () Bool)

(declare-fun inv!39876 (Conc!9232) Bool)

(assert (=> b!2576343 (= e!1625639 (inv!39876 (c!414920 x!462482)))))

(assert (= (and d!728646 c!414957) b!2576341))

(assert (= (and d!728646 (not c!414957)) b!2576342))

(assert (= (and b!2576342 (not res!1083687)) b!2576343))

(declare-fun m!2910917 () Bool)

(assert (=> b!2576341 m!2910917))

(declare-fun m!2910919 () Bool)

(assert (=> b!2576343 m!2910919))

(assert (=> b!2576267 d!728646))

(declare-fun d!728648 () Bool)

(declare-fun choose!15193 (Int) Bool)

(assert (=> d!728648 (= (Forall!1139 lambda!94834) (choose!15193 lambda!94834))))

(declare-fun bs!470174 () Bool)

(assert (= bs!470174 d!728648))

(declare-fun m!2910921 () Bool)

(assert (=> bs!470174 m!2910921))

(assert (=> start!248874 d!728648))

(assert (=> start!248874 d!728616))

(assert (=> start!248874 d!728622))

(assert (=> start!248874 d!728614))

(declare-fun d!728650 () Bool)

(declare-fun isBalanced!2805 (Conc!9232) Bool)

(assert (=> d!728650 (= (inv!39872 x!462482) (isBalanced!2805 (c!414920 x!462482)))))

(declare-fun bs!470175 () Bool)

(assert (= bs!470175 d!728650))

(declare-fun m!2910923 () Bool)

(assert (=> bs!470175 m!2910923))

(assert (=> start!248874 d!728650))

(assert (=> start!248874 d!728624))

(declare-fun d!728652 () Bool)

(declare-fun fromListB!1418 (List!29733) BalanceConc!18078)

(assert (=> d!728652 (= (seqFromList!3136 (value!144787 (toValue!24 thiss!4369 x!462482))) (fromListB!1418 (value!144787 (toValue!24 thiss!4369 x!462482))))))

(declare-fun bs!470176 () Bool)

(assert (= bs!470176 d!728652))

(declare-fun m!2910925 () Bool)

(assert (=> bs!470176 m!2910925))

(assert (=> b!2576277 d!728652))

(declare-fun b!2576350 () Bool)

(declare-fun e!1625644 () Bool)

(declare-fun tp!818921 () Bool)

(declare-fun tp!818922 () Bool)

(assert (=> b!2576350 (= e!1625644 (and (inv!39871 (left!22513 (c!414920 x!462482))) tp!818921 (inv!39871 (right!22843 (c!414920 x!462482))) tp!818922))))

(declare-fun b!2576351 () Bool)

(declare-fun inv!39877 (IArray!18469) Bool)

(assert (=> b!2576351 (= e!1625644 (inv!39877 (xs!12216 (c!414920 x!462482))))))

(assert (=> b!2576267 (= tp!818913 (and (inv!39871 (c!414920 x!462482)) e!1625644))))

(assert (= (and b!2576267 (is-Node!9232 (c!414920 x!462482))) b!2576350))

(assert (= (and b!2576267 (is-Leaf!14080 (c!414920 x!462482))) b!2576351))

(declare-fun m!2910927 () Bool)

(assert (=> b!2576350 m!2910927))

(declare-fun m!2910929 () Bool)

(assert (=> b!2576350 m!2910929))

(declare-fun m!2910931 () Bool)

(assert (=> b!2576351 m!2910931))

(assert (=> b!2576267 m!2910815))

(push 1)

(assert (not b!2576295))

(assert (not b!2576327))

(assert (not b!2576299))

(assert (not b!2576328))

(assert (not d!728648))

(assert (not b!2576296))

(assert (not b!2576350))

(assert (not b!2576343))

(assert (not bm!166661))

(assert (not d!728640))

(assert (not b!2576300))

(assert (not b!2576267))

(assert (not d!728652))

(assert (not b!2576351))

(assert (not b!2576341))

(assert (not d!728650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2576369 () Bool)

(declare-fun e!1625657 () List!29733)

(assert (=> b!2576369 (= e!1625657 (efficientList$default$2!118 (c!414920 x!462482)))))

(declare-fun b!2576371 () Bool)

(declare-fun res!1083696 () Bool)

(declare-fun e!1625656 () Bool)

(assert (=> b!2576371 (=> (not res!1083696) (not e!1625656))))

(declare-fun lt!906642 () List!29733)

(declare-fun size!22969 (List!29733) Int)

(assert (=> b!2576371 (= res!1083696 (= (size!22969 lt!906642) (+ (size!22969 (list!11164 (c!414920 x!462482))) (size!22969 (efficientList$default$2!118 (c!414920 x!462482))))))))

(declare-fun b!2576370 () Bool)

(assert (=> b!2576370 (= e!1625657 (Cons!29633 (h!35053 (list!11164 (c!414920 x!462482))) (++!7283 (t!211434 (list!11164 (c!414920 x!462482))) (efficientList$default$2!118 (c!414920 x!462482)))))))

(declare-fun b!2576372 () Bool)

(assert (=> b!2576372 (= e!1625656 (or (not (= (efficientList$default$2!118 (c!414920 x!462482)) Nil!29633)) (= lt!906642 (list!11164 (c!414920 x!462482)))))))

(declare-fun d!728660 () Bool)

(assert (=> d!728660 e!1625656))

(declare-fun res!1083695 () Bool)

(assert (=> d!728660 (=> (not res!1083695) (not e!1625656))))

(declare-fun content!4089 (List!29733) (Set (_ BitVec 16)))

(assert (=> d!728660 (= res!1083695 (= (content!4089 lt!906642) (set.union (content!4089 (list!11164 (c!414920 x!462482))) (content!4089 (efficientList$default$2!118 (c!414920 x!462482))))))))

(assert (=> d!728660 (= lt!906642 e!1625657)))

(declare-fun c!414963 () Bool)

(assert (=> d!728660 (= c!414963 (is-Nil!29633 (list!11164 (c!414920 x!462482))))))

(assert (=> d!728660 (= (++!7283 (list!11164 (c!414920 x!462482)) (efficientList$default$2!118 (c!414920 x!462482))) lt!906642)))

(assert (= (and d!728660 c!414963) b!2576369))

(assert (= (and d!728660 (not c!414963)) b!2576370))

(assert (= (and d!728660 res!1083695) b!2576371))

(assert (= (and b!2576371 res!1083696) b!2576372))

(declare-fun m!2910943 () Bool)

(assert (=> b!2576371 m!2910943))

(assert (=> b!2576371 m!2910851))

(declare-fun m!2910945 () Bool)

(assert (=> b!2576371 m!2910945))

(assert (=> b!2576371 m!2910859))

(declare-fun m!2910947 () Bool)

(assert (=> b!2576371 m!2910947))

(assert (=> b!2576370 m!2910859))

(declare-fun m!2910949 () Bool)

(assert (=> b!2576370 m!2910949))

(declare-fun m!2910951 () Bool)

(assert (=> d!728660 m!2910951))

(assert (=> d!728660 m!2910851))

(declare-fun m!2910953 () Bool)

(assert (=> d!728660 m!2910953))

(assert (=> d!728660 m!2910859))

(declare-fun m!2910955 () Bool)

(assert (=> d!728660 m!2910955))

(assert (=> d!728640 d!728660))

(assert (=> d!728640 d!728634))

(declare-fun d!728666 () Bool)

(declare-fun e!1625660 () Bool)

(assert (=> d!728666 e!1625660))

(declare-fun res!1083699 () Bool)

(assert (=> d!728666 (=> (not res!1083699) (not e!1625660))))

(declare-fun lt!906645 () BalanceConc!18078)

(assert (=> d!728666 (= res!1083699 (= (list!11162 lt!906645) (value!144787 (toValue!24 thiss!4369 x!462482))))))

(declare-fun fromList!555 (List!29733) Conc!9232)

(assert (=> d!728666 (= lt!906645 (BalanceConc!18079 (fromList!555 (value!144787 (toValue!24 thiss!4369 x!462482)))))))

(assert (=> d!728666 (= (fromListB!1418 (value!144787 (toValue!24 thiss!4369 x!462482))) lt!906645)))

(declare-fun b!2576375 () Bool)

(assert (=> b!2576375 (= e!1625660 (isBalanced!2805 (fromList!555 (value!144787 (toValue!24 thiss!4369 x!462482)))))))

(assert (= (and d!728666 res!1083699) b!2576375))

(declare-fun m!2910957 () Bool)

(assert (=> d!728666 m!2910957))

(declare-fun m!2910959 () Bool)

(assert (=> d!728666 m!2910959))

(assert (=> b!2576375 m!2910959))

(assert (=> b!2576375 m!2910959))

(declare-fun m!2910961 () Bool)

(assert (=> b!2576375 m!2910961))

(assert (=> d!728652 d!728666))

(push 1)

(assert (not b!2576295))

(assert (not b!2576327))

(assert (not d!728666))

(assert (not b!2576299))

(assert (not b!2576351))

(assert (not b!2576375))

(assert (not b!2576328))

(assert (not b!2576296))

(assert (not b!2576350))

(assert (not b!2576343))

(assert (not bm!166661))

(assert (not b!2576371))

(assert (not b!2576300))

(assert (not b!2576267))

(assert (not d!728660))

(assert (not d!728648))

(assert (not b!2576370))

(assert (not b!2576341))

(assert (not d!728650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

