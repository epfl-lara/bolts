; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!129426 () Bool)

(assert start!129426)

(declare-datatypes ((Regex!3820 0))(
  ( (ElementMatch!3820 (c!232128 (_ BitVec 16))) (Concat!6416 (regOne!8152 Regex!3820) (regTwo!8152 Regex!3820)) (EmptyExpr!3820) (Star!3820 (reg!4149 Regex!3820)) (EmptyLang!3820) (Union!3820 (regOne!8153 Regex!3820) (regTwo!8153 Regex!3820)) )
))
(declare-datatypes ((String!17217 0))(
  ( (String!17218 (value!81029 String)) )
))
(declare-datatypes ((List!14495 0))(
  ( (Nil!14429) (Cons!14429 (h!19830 (_ BitVec 16)) (t!123742 List!14495)) )
))
(declare-datatypes ((TokenValue!2596 0))(
  ( (FloatLiteralValue!5192 (text!18617 List!14495)) (TokenValueExt!2595 (__x!9012 Int)) (Broken!12980 (value!81030 List!14495)) (Object!2661) (End!2596) (Def!2596) (Underscore!2596) (Match!2596) (Else!2596) (Error!2596) (Case!2596) (If!2596) (Extends!2596) (Abstract!2596) (Class!2596) (Val!2596) (DelimiterValue!5192 (del!2656 List!14495)) (KeywordValue!2602 (value!81031 List!14495)) (CommentValue!5192 (value!81032 List!14495)) (WhitespaceValue!5192 (value!81033 List!14495)) (IndentationValue!2596 (value!81034 List!14495)) (String!17219) (Int32!2596) (Broken!12981 (value!81035 List!14495)) (Boolean!2597) (Unit!20961) (OperatorValue!2599 (op!2656 List!14495)) (IdentifierValue!5192 (value!81036 List!14495)) (IdentifierValue!5193 (value!81037 List!14495)) (WhitespaceValue!5193 (value!81038 List!14495)) (True!5192) (False!5192) (Broken!12982 (value!81039 List!14495)) (Broken!12983 (value!81040 List!14495)) (True!5193) (RightBrace!2596) (RightBracket!2596) (Colon!2596) (Null!2596) (Comma!2596) (LeftBracket!2596) (False!5193) (LeftBrace!2596) (ImaginaryLiteralValue!2596 (text!18618 List!14495)) (StringLiteralValue!7788 (value!81041 List!14495)) (EOFValue!2596 (value!81042 List!14495)) (IdentValue!2596 (value!81043 List!14495)) (DelimiterValue!5193 (value!81044 List!14495)) (DedentValue!2596 (value!81045 List!14495)) (NewLineValue!2596 (value!81046 List!14495)) (IntegerValue!7788 (value!81047 (_ BitVec 32)) (text!18619 List!14495)) (IntegerValue!7789 (value!81048 Int) (text!18620 List!14495)) (Times!2596) (Or!2596) (Equal!2596) (Minus!2596) (Broken!12984 (value!81049 List!14495)) (And!2596) (Div!2596) (LessEqual!2596) (Mod!2596) (Concat!6417) (Not!2596) (Plus!2596) (SpaceValue!2596 (value!81050 List!14495)) (IntegerValue!7790 (value!81051 Int) (text!18621 List!14495)) (StringLiteralValue!7789 (text!18622 List!14495)) (FloatLiteralValue!5193 (text!18623 List!14495)) (BytesLiteralValue!2596 (value!81052 List!14495)) (CommentValue!5193 (value!81053 List!14495)) (StringLiteralValue!7790 (value!81054 List!14495)) (ErrorTokenValue!2596 (msg!2657 List!14495)) )
))
(declare-datatypes ((IArray!9589 0))(
  ( (IArray!9590 (innerList!4852 List!14495)) )
))
(declare-datatypes ((Conc!4792 0))(
  ( (Node!4792 (left!12327 Conc!4792) (right!12657 Conc!4792) (csize!9814 Int) (cheight!5003 Int)) (Leaf!7242 (xs!7519 IArray!9589) (csize!9815 Int)) (Empty!4792) )
))
(declare-datatypes ((BalanceConc!9524 0))(
  ( (BalanceConc!9525 (c!232129 Conc!4792)) )
))
(declare-datatypes ((TokenValueInjection!4852 0))(
  ( (TokenValueInjection!4853 (toValue!3805 Int) (toChars!3664 Int)) )
))
(declare-datatypes ((Rule!4812 0))(
  ( (Rule!4813 (regex!2506 Regex!3820) (tag!2768 String!17217) (isSeparator!2506 Bool) (transformation!2506 TokenValueInjection!4852)) )
))
(declare-datatypes ((Token!4674 0))(
  ( (Token!4675 (value!81055 TokenValue!2596) (rule!4269 Rule!4812) (size!11895 Int) (originalCharacters!3368 List!14495)) )
))
(declare-datatypes ((List!14496 0))(
  ( (Nil!14430) (Cons!14430 (h!19831 Token!4674) (t!123743 List!14496)) )
))
(declare-datatypes ((IArray!9591 0))(
  ( (IArray!9592 (innerList!4853 List!14496)) )
))
(declare-datatypes ((Conc!4793 0))(
  ( (Node!4793 (left!12328 Conc!4793) (right!12658 Conc!4793) (csize!9816 Int) (cheight!5004 Int)) (Leaf!7243 (xs!7520 IArray!9591) (csize!9817 Int)) (Empty!4793) )
))
(declare-datatypes ((List!14497 0))(
  ( (Nil!14431) (Cons!14431 (h!19832 Rule!4812) (t!123744 List!14497)) )
))
(declare-datatypes ((BalanceConc!9526 0))(
  ( (BalanceConc!9527 (c!232130 Conc!4793)) )
))
(declare-datatypes ((PrintableTokens!794 0))(
  ( (PrintableTokens!795 (rules!11021 List!14497) (tokens!1751 BalanceConc!9526)) )
))
(declare-fun acc!229 () PrintableTokens!794)

(declare-fun b!1412880 () Bool)

(declare-fun tp!401031 () Bool)

(declare-fun e!902000 () Bool)

(declare-fun e!902003 () Bool)

(declare-fun inv!18866 (BalanceConc!9526) Bool)

(assert (=> b!1412880 (= e!902003 (and tp!401031 (inv!18866 (tokens!1751 acc!229)) e!902000))))

(declare-fun b!1412881 () Bool)

(declare-fun e!902002 () Bool)

(declare-datatypes ((Option!2765 0))(
  ( (None!2764) (Some!2764 (v!21852 PrintableTokens!794)) )
))
(declare-fun lt!472833 () Option!2765)

(assert (=> b!1412881 (= e!902002 (and (is-Some!2764 lt!472833) (not (= (rules!11021 acc!229) (rules!11021 (v!21852 lt!472833))))))))

(declare-datatypes ((List!14498 0))(
  ( (Nil!14432) (Cons!14432 (h!19833 PrintableTokens!794) (t!123745 List!14498)) )
))
(declare-datatypes ((IArray!9593 0))(
  ( (IArray!9594 (innerList!4854 List!14498)) )
))
(declare-datatypes ((Conc!4794 0))(
  ( (Node!4794 (left!12329 Conc!4794) (right!12659 Conc!4794) (csize!9818 Int) (cheight!5005 Int)) (Leaf!7244 (xs!7521 IArray!9593) (csize!9819 Int)) (Empty!4794) )
))
(declare-datatypes ((BalanceConc!9528 0))(
  ( (BalanceConc!9529 (c!232131 Conc!4794)) )
))
(declare-fun objs!24 () BalanceConc!9528)

(declare-fun sep!3 () PrintableTokens!794)

(declare-fun append!425 (PrintableTokens!794 PrintableTokens!794) Option!2765)

(declare-fun head!2682 (BalanceConc!9528) PrintableTokens!794)

(assert (=> b!1412881 (= lt!472833 (append!425 (head!2682 objs!24) sep!3))))

(declare-fun b!1412882 () Bool)

(declare-fun res!639880 () Bool)

(assert (=> b!1412882 (=> (not res!639880) (not e!902002))))

(declare-fun isEmpty!8823 (BalanceConc!9528) Bool)

(assert (=> b!1412882 (= res!639880 (not (isEmpty!8823 objs!24)))))

(declare-fun b!1412883 () Bool)

(declare-fun e!902001 () Bool)

(declare-fun tp!401030 () Bool)

(declare-fun inv!18867 (Conc!4793) Bool)

(assert (=> b!1412883 (= e!902001 (and (inv!18867 (c!232130 (tokens!1751 sep!3))) tp!401030))))

(declare-fun b!1412884 () Bool)

(declare-fun e!902005 () Bool)

(declare-fun tp!401033 () Bool)

(declare-fun inv!18868 (Conc!4794) Bool)

(assert (=> b!1412884 (= e!902005 (and (inv!18868 (c!232131 objs!24)) tp!401033))))

(declare-fun b!1412885 () Bool)

(declare-fun res!639883 () Bool)

(assert (=> b!1412885 (=> (not res!639883) (not e!902002))))

(declare-fun size!11896 (BalanceConc!9528) Int)

(assert (=> b!1412885 (= res!639883 (not (= (size!11896 objs!24) 1)))))

(declare-fun b!1412886 () Bool)

(declare-fun res!639881 () Bool)

(assert (=> b!1412886 (=> (not res!639881) (not e!902002))))

(declare-fun usesJsonRules!0 (PrintableTokens!794) Bool)

(assert (=> b!1412886 (= res!639881 (usesJsonRules!0 sep!3))))

(declare-fun b!1412887 () Bool)

(declare-fun res!639882 () Bool)

(assert (=> b!1412887 (=> (not res!639882) (not e!902002))))

(assert (=> b!1412887 (= res!639882 (usesJsonRules!0 acc!229))))

(declare-fun b!1412888 () Bool)

(declare-fun tp!401029 () Bool)

(assert (=> b!1412888 (= e!902000 (and (inv!18867 (c!232130 (tokens!1751 acc!229))) tp!401029))))

(declare-fun res!639879 () Bool)

(assert (=> start!129426 (=> (not res!639879) (not e!902002))))

(declare-fun lambda!62450 () Int)

(declare-fun forall!3540 (BalanceConc!9528 Int) Bool)

(assert (=> start!129426 (= res!639879 (forall!3540 objs!24 lambda!62450))))

(assert (=> start!129426 e!902002))

(declare-fun inv!18869 (BalanceConc!9528) Bool)

(assert (=> start!129426 (and (inv!18869 objs!24) e!902005)))

(declare-fun inv!18870 (PrintableTokens!794) Bool)

(assert (=> start!129426 (and (inv!18870 acc!229) e!902003)))

(declare-fun e!902004 () Bool)

(assert (=> start!129426 (and (inv!18870 sep!3) e!902004)))

(declare-fun b!1412889 () Bool)

(declare-fun tp!401032 () Bool)

(assert (=> b!1412889 (= e!902004 (and tp!401032 (inv!18866 (tokens!1751 sep!3)) e!902001))))

(assert (= (and start!129426 res!639879) b!1412887))

(assert (= (and b!1412887 res!639882) b!1412886))

(assert (= (and b!1412886 res!639881) b!1412882))

(assert (= (and b!1412882 res!639880) b!1412885))

(assert (= (and b!1412885 res!639883) b!1412881))

(assert (= start!129426 b!1412884))

(assert (= b!1412880 b!1412888))

(assert (= start!129426 b!1412880))

(assert (= b!1412889 b!1412883))

(assert (= start!129426 b!1412889))

(declare-fun m!1594179 () Bool)

(assert (=> b!1412881 m!1594179))

(assert (=> b!1412881 m!1594179))

(declare-fun m!1594181 () Bool)

(assert (=> b!1412881 m!1594181))

(declare-fun m!1594183 () Bool)

(assert (=> b!1412880 m!1594183))

(declare-fun m!1594185 () Bool)

(assert (=> start!129426 m!1594185))

(declare-fun m!1594187 () Bool)

(assert (=> start!129426 m!1594187))

(declare-fun m!1594189 () Bool)

(assert (=> start!129426 m!1594189))

(declare-fun m!1594191 () Bool)

(assert (=> start!129426 m!1594191))

(declare-fun m!1594193 () Bool)

(assert (=> b!1412883 m!1594193))

(declare-fun m!1594195 () Bool)

(assert (=> b!1412885 m!1594195))

(declare-fun m!1594197 () Bool)

(assert (=> b!1412889 m!1594197))

(declare-fun m!1594199 () Bool)

(assert (=> b!1412887 m!1594199))

(declare-fun m!1594201 () Bool)

(assert (=> b!1412884 m!1594201))

(declare-fun m!1594203 () Bool)

(assert (=> b!1412886 m!1594203))

(declare-fun m!1594205 () Bool)

(assert (=> b!1412888 m!1594205))

(declare-fun m!1594207 () Bool)

(assert (=> b!1412882 m!1594207))

(push 1)

(assert (not b!1412882))

(assert (not start!129426))

(assert (not b!1412881))

(assert (not b!1412880))

(assert (not b!1412888))

(assert (not b!1412883))

(assert (not b!1412884))

(assert (not b!1412887))

(assert (not b!1412885))

(assert (not b!1412889))

(assert (not b!1412886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!404204 () Bool)

(declare-fun lt!472839 () Int)

(declare-fun size!11899 (List!14498) Int)

(declare-fun list!5664 (BalanceConc!9528) List!14498)

(assert (=> d!404204 (= lt!472839 (size!11899 (list!5664 objs!24)))))

(declare-fun size!11900 (Conc!4794) Int)

(assert (=> d!404204 (= lt!472839 (size!11900 (c!232131 objs!24)))))

(assert (=> d!404204 (= (size!11896 objs!24) lt!472839)))

(declare-fun bs!339123 () Bool)

(assert (= bs!339123 d!404204))

(declare-fun m!1594239 () Bool)

(assert (=> bs!339123 m!1594239))

(assert (=> bs!339123 m!1594239))

(declare-fun m!1594241 () Bool)

(assert (=> bs!339123 m!1594241))

(declare-fun m!1594243 () Bool)

(assert (=> bs!339123 m!1594243))

(assert (=> b!1412885 d!404204))

(declare-fun d!404206 () Bool)

(declare-fun lt!472842 () Bool)

(declare-fun forall!3542 (List!14498 Int) Bool)

(assert (=> d!404206 (= lt!472842 (forall!3542 (list!5664 objs!24) lambda!62450))))

(declare-fun forall!3543 (Conc!4794 Int) Bool)

(assert (=> d!404206 (= lt!472842 (forall!3543 (c!232131 objs!24) lambda!62450))))

(assert (=> d!404206 (= (forall!3540 objs!24 lambda!62450) lt!472842)))

(declare-fun bs!339124 () Bool)

(assert (= bs!339124 d!404206))

(assert (=> bs!339124 m!1594239))

(assert (=> bs!339124 m!1594239))

(declare-fun m!1594245 () Bool)

(assert (=> bs!339124 m!1594245))

(declare-fun m!1594247 () Bool)

(assert (=> bs!339124 m!1594247))

(assert (=> start!129426 d!404206))

(declare-fun d!404208 () Bool)

(declare-fun isBalanced!1417 (Conc!4794) Bool)

(assert (=> d!404208 (= (inv!18869 objs!24) (isBalanced!1417 (c!232131 objs!24)))))

(declare-fun bs!339125 () Bool)

(assert (= bs!339125 d!404208))

(declare-fun m!1594249 () Bool)

(assert (=> bs!339125 m!1594249))

(assert (=> start!129426 d!404208))

(declare-fun d!404210 () Bool)

(declare-fun res!639912 () Bool)

(declare-fun e!902032 () Bool)

(assert (=> d!404210 (=> (not res!639912) (not e!902032))))

(declare-fun isEmpty!8825 (List!14497) Bool)

(assert (=> d!404210 (= res!639912 (not (isEmpty!8825 (rules!11021 acc!229))))))

(assert (=> d!404210 (= (inv!18870 acc!229) e!902032)))

(declare-fun b!1412935 () Bool)

(declare-fun res!639913 () Bool)

(assert (=> b!1412935 (=> (not res!639913) (not e!902032))))

(declare-datatypes ((LexerInterface!2192 0))(
  ( (LexerInterfaceExt!2189 (__x!9014 Int)) (Lexer!2190) )
))
(declare-fun rulesInvariant!2062 (LexerInterface!2192 List!14497) Bool)

(assert (=> b!1412935 (= res!639913 (rulesInvariant!2062 Lexer!2190 (rules!11021 acc!229)))))

(declare-fun b!1412936 () Bool)

(declare-fun res!639914 () Bool)

(assert (=> b!1412936 (=> (not res!639914) (not e!902032))))

(declare-fun rulesProduceEachTokenIndividually!789 (LexerInterface!2192 List!14497 BalanceConc!9526) Bool)

(assert (=> b!1412936 (= res!639914 (rulesProduceEachTokenIndividually!789 Lexer!2190 (rules!11021 acc!229) (tokens!1751 acc!229)))))

(declare-fun b!1412937 () Bool)

(declare-fun separableTokens!174 (LexerInterface!2192 BalanceConc!9526 List!14497) Bool)

(assert (=> b!1412937 (= e!902032 (separableTokens!174 Lexer!2190 (tokens!1751 acc!229) (rules!11021 acc!229)))))

(assert (= (and d!404210 res!639912) b!1412935))

(assert (= (and b!1412935 res!639913) b!1412936))

(assert (= (and b!1412936 res!639914) b!1412937))

(declare-fun m!1594257 () Bool)

(assert (=> d!404210 m!1594257))

(declare-fun m!1594259 () Bool)

(assert (=> b!1412935 m!1594259))

(declare-fun m!1594261 () Bool)

(assert (=> b!1412936 m!1594261))

(declare-fun m!1594263 () Bool)

(assert (=> b!1412937 m!1594263))

(assert (=> start!129426 d!404210))

(declare-fun d!404218 () Bool)

(declare-fun res!639915 () Bool)

(declare-fun e!902033 () Bool)

(assert (=> d!404218 (=> (not res!639915) (not e!902033))))

(assert (=> d!404218 (= res!639915 (not (isEmpty!8825 (rules!11021 sep!3))))))

(assert (=> d!404218 (= (inv!18870 sep!3) e!902033)))

(declare-fun b!1412938 () Bool)

(declare-fun res!639916 () Bool)

(assert (=> b!1412938 (=> (not res!639916) (not e!902033))))

(assert (=> b!1412938 (= res!639916 (rulesInvariant!2062 Lexer!2190 (rules!11021 sep!3)))))

(declare-fun b!1412939 () Bool)

(declare-fun res!639917 () Bool)

(assert (=> b!1412939 (=> (not res!639917) (not e!902033))))

(assert (=> b!1412939 (= res!639917 (rulesProduceEachTokenIndividually!789 Lexer!2190 (rules!11021 sep!3) (tokens!1751 sep!3)))))

(declare-fun b!1412940 () Bool)

(assert (=> b!1412940 (= e!902033 (separableTokens!174 Lexer!2190 (tokens!1751 sep!3) (rules!11021 sep!3)))))

(assert (= (and d!404218 res!639915) b!1412938))

(assert (= (and b!1412938 res!639916) b!1412939))

(assert (= (and b!1412939 res!639917) b!1412940))

(declare-fun m!1594265 () Bool)

(assert (=> d!404218 m!1594265))

(declare-fun m!1594267 () Bool)

(assert (=> b!1412938 m!1594267))

(declare-fun m!1594269 () Bool)

(assert (=> b!1412939 m!1594269))

(declare-fun m!1594271 () Bool)

(assert (=> b!1412940 m!1594271))

(assert (=> start!129426 d!404218))

(declare-fun d!404220 () Bool)

(declare-fun isBalanced!1418 (Conc!4793) Bool)

(assert (=> d!404220 (= (inv!18866 (tokens!1751 acc!229)) (isBalanced!1418 (c!232130 (tokens!1751 acc!229))))))

(declare-fun bs!339127 () Bool)

(assert (= bs!339127 d!404220))

(declare-fun m!1594273 () Bool)

(assert (=> bs!339127 m!1594273))

(assert (=> b!1412880 d!404220))

(declare-fun d!404222 () Bool)

(declare-datatypes ((JsonLexer!388 0))(
  ( (JsonLexer!389) )
))
(declare-fun rules!109 (JsonLexer!388) List!14497)

(assert (=> d!404222 (= (usesJsonRules!0 sep!3) (= (rules!11021 sep!3) (rules!109 JsonLexer!389)))))

(declare-fun bs!339128 () Bool)

(assert (= bs!339128 d!404222))

(declare-fun m!1594275 () Bool)

(assert (=> bs!339128 m!1594275))

(assert (=> b!1412886 d!404222))

(declare-fun b!1412999 () Bool)

(declare-fun e!902072 () Option!2765)

(declare-fun e!902067 () Option!2765)

(assert (=> b!1412999 (= e!902072 e!902067)))

(declare-fun c!232163 () Bool)

(declare-fun isEmpty!8826 (BalanceConc!9526) Bool)

(assert (=> b!1412999 (= c!232163 (isEmpty!8826 (tokens!1751 (head!2682 objs!24))))))

(declare-fun bm!94669 () Bool)

(declare-fun call!94706 () List!14496)

(declare-fun call!94683 () List!14496)

(assert (=> bm!94669 (= call!94706 call!94683)))

(declare-fun c!232159 () Bool)

(declare-fun bm!94670 () Bool)

(declare-fun call!94691 () BalanceConc!9524)

(declare-fun print!957 (PrintableTokens!794) BalanceConc!9524)

(assert (=> bm!94670 (= call!94691 (print!957 (ite c!232159 sep!3 (ite c!232163 (head!2682 objs!24) sep!3))))))

(declare-fun bm!94671 () Bool)

(declare-fun call!94685 () List!14496)

(declare-fun call!94711 () List!14496)

(assert (=> bm!94671 (= call!94685 call!94711)))

(declare-fun bm!94672 () Bool)

(declare-fun call!94698 () BalanceConc!9524)

(assert (=> bm!94672 (= call!94698 call!94691)))

(declare-fun b!1413000 () Bool)

(declare-fun e!902064 () Option!2765)

(declare-fun ++!3761 (BalanceConc!9526 BalanceConc!9526) BalanceConc!9526)

(assert (=> b!1413000 (= e!902064 (Some!2764 (PrintableTokens!795 (rules!11021 (head!2682 objs!24)) (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3)))))))

(declare-fun lt!473005 () LexerInterface!2192)

(assert (=> b!1413000 (= lt!473005 Lexer!2190)))

(declare-fun lt!473022 () List!14496)

(assert (=> b!1413000 (= lt!473022 call!94706)))

(declare-fun lt!473008 () List!14496)

(assert (=> b!1413000 (= lt!473008 call!94685)))

(declare-datatypes ((Unit!20963 0))(
  ( (Unit!20964) )
))
(declare-fun lt!472989 () Unit!20963)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!16 (LexerInterface!2192 List!14496 List!14496 List!14497) Unit!20963)

(assert (=> b!1413000 (= lt!472989 (tokensListTwoByTwoPredicateConcatSeparableTokensList!16 lt!473005 lt!473022 lt!473008 (rules!11021 (head!2682 objs!24))))))

(declare-fun lt!473029 () Unit!20963)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!16 (LexerInterface!2192 List!14497 List!14496 List!14496) Unit!20963)

(assert (=> b!1413000 (= lt!473029 (lemmaRulesProduceEachTokenIndividuallyConcat!16 lt!473005 (rules!11021 (head!2682 objs!24)) lt!473022 lt!473008))))

(declare-fun rulesProduceEachTokenIndividuallyList!676 (LexerInterface!2192 List!14497 List!14496) Bool)

(declare-fun ++!3762 (List!14496 List!14496) List!14496)

(assert (=> b!1413000 (rulesProduceEachTokenIndividuallyList!676 lt!473005 (rules!11021 (head!2682 objs!24)) (++!3762 lt!473022 lt!473008))))

(declare-fun lt!473026 () Unit!20963)

(assert (=> b!1413000 (= lt!473026 lt!473029)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!197 (LexerInterface!2192 List!14496 List!14497) Bool)

(assert (=> b!1413000 (tokensListTwoByTwoPredicateSeparableList!197 lt!473005 (++!3762 lt!473022 lt!473008) (rules!11021 (head!2682 objs!24)))))

(declare-fun lt!472994 () Unit!20963)

(assert (=> b!1413000 (= lt!472994 lt!472989)))

(declare-fun lt!472981 () LexerInterface!2192)

(assert (=> b!1413000 (= lt!472981 Lexer!2190)))

(declare-fun lt!473016 () List!14496)

(assert (=> b!1413000 (= lt!473016 call!94706)))

(declare-fun lt!473004 () List!14496)

(assert (=> b!1413000 (= lt!473004 call!94685)))

(declare-fun lt!473042 () Unit!20963)

(declare-fun call!94677 () Unit!20963)

(assert (=> b!1413000 (= lt!473042 call!94677)))

(declare-fun call!94703 () List!14495)

(declare-fun call!94696 () List!14495)

(assert (=> b!1413000 (= call!94703 call!94696)))

(declare-fun lt!473000 () Unit!20963)

(assert (=> b!1413000 (= lt!473000 lt!473042)))

(declare-fun lt!472988 () Unit!20963)

(declare-fun call!94687 () Unit!20963)

(assert (=> b!1413000 (= lt!472988 call!94687)))

(declare-fun call!94709 () BalanceConc!9524)

(declare-fun call!94674 () BalanceConc!9524)

(assert (=> b!1413000 (= call!94709 call!94674)))

(declare-fun lt!472997 () Unit!20963)

(declare-fun Unit!20965 () Unit!20963)

(assert (=> b!1413000 (= lt!472997 Unit!20965)))

(declare-fun lt!472993 () Unit!20963)

(declare-fun call!94694 () Unit!20963)

(assert (=> b!1413000 (= lt!472993 call!94694)))

(declare-fun call!94710 () BalanceConc!9524)

(assert (=> b!1413000 (= call!94698 call!94710)))

(declare-fun lt!473003 () Unit!20963)

(declare-fun Unit!20966 () Unit!20963)

(assert (=> b!1413000 (= lt!473003 Unit!20966)))

(declare-fun lt!473017 () PrintableTokens!794)

(assert (=> b!1413000 (= lt!473017 (PrintableTokens!795 (rules!11021 (head!2682 objs!24)) (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3))))))

(declare-fun lt!473025 () BalanceConc!9526)

(assert (=> b!1413000 (= lt!473025 (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3)))))

(declare-fun lt!473027 () Unit!20963)

(declare-fun theoremInvertabilityWhenTokenListSeparable!21 (LexerInterface!2192 List!14497 List!14496) Unit!20963)

(declare-fun list!5665 (BalanceConc!9526) List!14496)

(assert (=> b!1413000 (= lt!473027 (theoremInvertabilityWhenTokenListSeparable!21 Lexer!2190 (rules!11021 (head!2682 objs!24)) (list!5665 (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3)))))))

(declare-fun print!958 (LexerInterface!2192 BalanceConc!9526) BalanceConc!9524)

(assert (=> b!1413000 (= (print!957 (PrintableTokens!795 (rules!11021 (head!2682 objs!24)) (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3)))) (print!958 Lexer!2190 (++!3761 (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3))))))

(declare-fun lt!473028 () Unit!20963)

(declare-fun Unit!20967 () Unit!20963)

(assert (=> b!1413000 (= lt!473028 Unit!20967)))

(declare-fun lt!473015 () LexerInterface!2192)

(assert (=> b!1413000 (= lt!473015 Lexer!2190)))

(declare-fun lt!473043 () List!14496)

(assert (=> b!1413000 (= lt!473043 call!94706)))

(declare-fun lt!473010 () List!14496)

(assert (=> b!1413000 (= lt!473010 call!94685)))

(declare-fun lt!473040 () Unit!20963)

(declare-fun lemmaPrintConcatSameAsConcatPrint!16 (LexerInterface!2192 List!14496 List!14496) Unit!20963)

(assert (=> b!1413000 (= lt!473040 (lemmaPrintConcatSameAsConcatPrint!16 lt!473015 lt!473043 lt!473010))))

(declare-fun call!94704 () List!14495)

(declare-fun call!94693 () List!14495)

(assert (=> b!1413000 (= call!94704 call!94693)))

(declare-fun lt!472980 () Unit!20963)

(assert (=> b!1413000 (= lt!472980 lt!473040)))

(declare-fun bm!94673 () Bool)

(declare-fun call!94708 () Unit!20963)

(assert (=> bm!94673 (= call!94687 call!94708)))

(declare-fun b!1413001 () Bool)

(declare-fun lt!472985 () Unit!20963)

(declare-fun Unit!20968 () Unit!20963)

(assert (=> b!1413001 (= lt!472985 Unit!20968)))

(declare-fun e!902066 () List!14495)

(assert (=> b!1413001 (= call!94703 e!902066)))

(declare-fun c!232160 () Bool)

(declare-fun lt!473013 () List!14496)

(assert (=> b!1413001 (= c!232160 (is-Cons!14430 lt!473013))))

(assert (=> b!1413001 (= lt!473013 call!94706)))

(declare-fun lt!472999 () Unit!20963)

(declare-fun Unit!20969 () Unit!20963)

(assert (=> b!1413001 (= lt!472999 Unit!20969)))

(declare-fun call!94684 () BalanceConc!9524)

(assert (=> b!1413001 (= call!94710 call!94684)))

(declare-fun lt!472983 () Unit!20963)

(declare-fun Unit!20970 () Unit!20963)

(assert (=> b!1413001 (= lt!472983 Unit!20970)))

(assert (=> b!1413001 (= call!94709 call!94710)))

(declare-fun lt!472995 () Unit!20963)

(assert (=> b!1413001 (= lt!472995 call!94694)))

(declare-fun lt!473041 () Unit!20963)

(declare-fun Unit!20971 () Unit!20963)

(assert (=> b!1413001 (= lt!473041 Unit!20971)))

(assert (=> b!1413001 (= call!94698 call!94674)))

(declare-fun lt!473007 () Unit!20963)

(assert (=> b!1413001 (= lt!473007 call!94687)))

(declare-fun lt!472998 () Unit!20963)

(declare-fun Unit!20972 () Unit!20963)

(assert (=> b!1413001 (= lt!472998 Unit!20972)))

(declare-fun call!94705 () List!14495)

(assert (=> b!1413001 (= call!94705 Nil!14429)))

(declare-fun lt!473031 () Unit!20963)

(declare-fun lt!473032 () Unit!20963)

(assert (=> b!1413001 (= lt!473031 lt!473032)))

(assert (=> b!1413001 (= call!94704 call!94696)))

(assert (=> b!1413001 (= lt!473032 call!94677)))

(declare-fun lt!473014 () List!14496)

(assert (=> b!1413001 (= lt!473014 call!94706)))

(declare-fun lt!472996 () List!14496)

(assert (=> b!1413001 (= lt!472996 Nil!14430)))

(declare-fun lt!473020 () LexerInterface!2192)

(assert (=> b!1413001 (= lt!473020 Lexer!2190)))

(assert (=> b!1413001 (= e!902067 (Some!2764 sep!3))))

(declare-fun bm!94675 () Bool)

(declare-fun call!94679 () List!14495)

(declare-fun call!94678 () List!14495)

(declare-fun e!902065 () List!14495)

(declare-fun call!94690 () List!14495)

(declare-fun call!94682 () List!14495)

(declare-fun call!94702 () List!14495)

(declare-fun ++!3763 (List!14495 List!14495) List!14495)

(assert (=> bm!94675 (= call!94678 (++!3763 (ite c!232159 call!94682 e!902065) (ite c!232159 call!94679 (ite c!232163 call!94690 call!94702))))))

(declare-fun call!94686 () List!14496)

(declare-fun bm!94676 () Bool)

(declare-fun call!94676 () List!14496)

(declare-fun lt!473024 () LexerInterface!2192)

(declare-fun call!94689 () List!14495)

(declare-fun printList!651 (LexerInterface!2192 List!14496) List!14495)

(assert (=> bm!94676 (= call!94689 (printList!651 (ite c!232159 lt!473024 (ite c!232163 lt!473020 lt!473015)) (ite c!232159 call!94676 call!94686)))))

(declare-fun call!94680 () List!14495)

(declare-fun lt!473018 () List!14496)

(declare-fun bm!94677 () Bool)

(assert (=> bm!94677 (= call!94680 (printList!651 (ite c!232159 Lexer!2190 (ite c!232163 lt!473020 lt!473015)) (ite c!232159 (t!123743 lt!473018) (ite c!232163 lt!472996 lt!473010))))))

(declare-fun bm!94678 () Bool)

(declare-fun call!94695 () List!14495)

(assert (=> bm!94678 (= call!94695 (printList!651 (ite (or c!232159 c!232163) Lexer!2190 lt!472981) (ite (or c!232159 c!232163) Nil!14430 lt!473004)))))

(declare-fun b!1413002 () Bool)

(assert (=> b!1413002 (= e!902066 Nil!14429)))

(declare-fun call!94700 () BalanceConc!9524)

(declare-fun bm!94679 () Bool)

(declare-fun charsOf!1468 (Token!4674) BalanceConc!9524)

(assert (=> bm!94679 (= call!94700 (charsOf!1468 (ite c!232159 (h!19831 lt!473018) (h!19831 lt!473013))))))

(declare-fun lt!472992 () List!14496)

(declare-fun call!94701 () Unit!20963)

(declare-fun bm!94680 () Bool)

(declare-fun lt!473023 () List!14496)

(assert (=> bm!94680 (= call!94701 (lemmaPrintConcatSameAsConcatPrint!16 (ite c!232159 lt!473024 (ite c!232163 lt!473020 lt!472981)) (ite c!232159 lt!472992 (ite c!232163 lt!472996 lt!473016)) (ite c!232159 lt!473023 (ite c!232163 lt!473014 lt!473004))))))

(declare-fun bm!94681 () Bool)

(declare-fun call!94699 () BalanceConc!9524)

(assert (=> bm!94681 (= call!94710 call!94699)))

(declare-fun bm!94682 () Bool)

(assert (=> bm!94682 (= call!94711 (list!5665 (ite (or c!232159 c!232163) (tokens!1751 (head!2682 objs!24)) (tokens!1751 sep!3))))))

(declare-fun b!1413003 () Bool)

(declare-fun e!902069 () List!14495)

(assert (=> b!1413003 (= e!902069 Nil!14429)))

(declare-fun bm!94683 () Bool)

(assert (=> bm!94683 (= call!94679 (printList!651 (ite c!232159 lt!473024 (ite c!232163 lt!473020 lt!472981)) (ite c!232159 lt!473023 (ite c!232163 lt!473014 lt!473016))))))

(declare-fun call!94692 () Unit!20963)

(declare-fun bm!94684 () Bool)

(assert (=> bm!94684 (= call!94692 (theoremInvertabilityWhenTokenListSeparable!21 Lexer!2190 (rules!11021 sep!3) (ite c!232159 call!94683 (ite c!232163 call!94706 call!94685))))))

(declare-fun bm!94685 () Bool)

(assert (=> bm!94685 (= call!94694 call!94692)))

(declare-fun bm!94686 () Bool)

(assert (=> bm!94686 (= call!94676 (++!3762 (ite c!232159 lt!472992 lt!473016) (ite c!232159 lt!473023 lt!473004)))))

(declare-fun bm!94687 () Bool)

(assert (=> bm!94687 (= call!94708 (theoremInvertabilityWhenTokenListSeparable!21 Lexer!2190 (rules!11021 (head!2682 objs!24)) (ite c!232159 call!94711 (ite c!232163 call!94685 call!94706))))))

(declare-fun bm!94688 () Bool)

(declare-fun call!94688 () BalanceConc!9524)

(assert (=> bm!94688 (= call!94688 (print!958 Lexer!2190 (tokens!1751 (head!2682 objs!24))))))

(declare-fun bm!94689 () Bool)

(assert (=> bm!94689 (= call!94674 call!94688)))

(declare-fun b!1413004 () Bool)

(assert (=> b!1413004 (= e!902072 (Some!2764 (head!2682 objs!24)))))

(assert (=> b!1413004 (= lt!473024 Lexer!2190)))

(assert (=> b!1413004 (= lt!472992 call!94711)))

(assert (=> b!1413004 (= lt!473023 Nil!14430)))

(declare-fun lt!473021 () Unit!20963)

(assert (=> b!1413004 (= lt!473021 call!94701)))

(assert (=> b!1413004 (= call!94689 call!94678)))

(declare-fun lt!473036 () Unit!20963)

(assert (=> b!1413004 (= lt!473036 lt!473021)))

(assert (=> b!1413004 (= call!94695 Nil!14429)))

(declare-fun lt!473034 () Unit!20963)

(declare-fun Unit!20973 () Unit!20963)

(assert (=> b!1413004 (= lt!473034 Unit!20973)))

(declare-fun lt!473037 () Unit!20963)

(assert (=> b!1413004 (= lt!473037 call!94708)))

(declare-fun call!94675 () BalanceConc!9524)

(assert (=> b!1413004 (= call!94675 call!94688)))

(declare-fun lt!473030 () Unit!20963)

(declare-fun Unit!20974 () Unit!20963)

(assert (=> b!1413004 (= lt!473030 Unit!20974)))

(declare-fun lt!473039 () Unit!20963)

(assert (=> b!1413004 (= lt!473039 call!94692)))

(assert (=> b!1413004 (= call!94691 call!94699)))

(declare-fun lt!472986 () Unit!20963)

(declare-fun Unit!20975 () Unit!20963)

(assert (=> b!1413004 (= lt!472986 Unit!20975)))

(assert (=> b!1413004 (= call!94699 call!94684)))

(declare-fun lt!472991 () Unit!20963)

(declare-fun Unit!20976 () Unit!20963)

(assert (=> b!1413004 (= lt!472991 Unit!20976)))

(assert (=> b!1413004 (= lt!473018 call!94683)))

(declare-fun c!232161 () Bool)

(assert (=> b!1413004 (= c!232161 (is-Cons!14430 lt!473018))))

(declare-fun call!94697 () List!14495)

(assert (=> b!1413004 (= call!94697 e!902069)))

(declare-fun lt!473012 () Unit!20963)

(declare-fun Unit!20977 () Unit!20963)

(assert (=> b!1413004 (= lt!473012 Unit!20977)))

(declare-fun bm!94690 () Bool)

(assert (=> bm!94690 (= call!94677 call!94701)))

(declare-fun b!1413005 () Bool)

(assert (=> b!1413005 (= e!902065 call!94690)))

(declare-fun bm!94691 () Bool)

(assert (=> bm!94691 (= call!94702 call!94680)))

(declare-fun bm!94692 () Bool)

(assert (=> bm!94692 (= call!94705 call!94695)))

(declare-fun bm!94693 () Bool)

(declare-fun call!94707 () List!14495)

(assert (=> bm!94693 (= call!94696 call!94707)))

(declare-fun b!1413006 () Bool)

(declare-fun e!902068 () List!14496)

(assert (=> b!1413006 (= e!902068 call!94706)))

(declare-fun b!1413007 () Bool)

(assert (=> b!1413007 (= e!902064 None!2764)))

(declare-fun lt!473035 () Option!2765)

(declare-fun b!1413008 () Bool)

(declare-fun e!902070 () Bool)

(declare-fun list!5666 (BalanceConc!9524) List!14495)

(declare-fun get!4439 (Option!2765) PrintableTokens!794)

(assert (=> b!1413008 (= e!902070 (= (list!5666 (print!957 (get!4439 lt!473035))) (++!3763 (list!5666 (print!957 (head!2682 objs!24))) (list!5666 (print!957 sep!3)))))))

(declare-fun b!1413009 () Bool)

(declare-fun call!94681 () List!14495)

(assert (=> b!1413009 (= e!902065 call!94681)))

(declare-fun bm!94694 () Bool)

(assert (=> bm!94694 (= call!94690 call!94697)))

(declare-fun bm!94695 () Bool)

(assert (=> bm!94695 (= call!94697 (printList!651 (ite (or c!232159 c!232163) Lexer!2190 lt!473015) (ite c!232159 call!94683 (ite c!232163 (t!123743 lt!473013) lt!473043))))))

(declare-fun bm!94696 () Bool)

(declare-fun c!232164 () Bool)

(assert (=> bm!94696 (= c!232164 c!232163)))

(assert (=> bm!94696 (= call!94703 call!94682)))

(declare-fun bm!94697 () Bool)

(assert (=> bm!94697 (= call!94686 (++!3762 (ite c!232163 lt!472996 lt!473043) (ite c!232163 lt!473014 lt!473010)))))

(declare-fun bm!94698 () Bool)

(assert (=> bm!94698 (= call!94683 (list!5665 (ite (or c!232159 c!232163) (tokens!1751 sep!3) (tokens!1751 (head!2682 objs!24)))))))

(declare-fun b!1413010 () Bool)

(declare-fun res!639942 () Bool)

(assert (=> b!1413010 (=> (not res!639942) (not e!902070))))

(assert (=> b!1413010 (= res!639942 (= (list!5665 (tokens!1751 (get!4439 lt!473035))) (++!3762 (list!5665 (tokens!1751 (head!2682 objs!24))) (list!5665 (tokens!1751 sep!3)))))))

(declare-fun bm!94699 () Bool)

(assert (=> bm!94699 (= call!94704 call!94689)))

(declare-fun bm!94700 () Bool)

(declare-fun call!94712 () List!14495)

(assert (=> bm!94700 (= call!94712 call!94679)))

(declare-fun bm!94701 () Bool)

(declare-fun c!232165 () Bool)

(assert (=> bm!94701 (= c!232165 c!232163)))

(assert (=> bm!94701 (= call!94693 call!94678)))

(declare-fun bm!94702 () Bool)

(assert (=> bm!94702 (= call!94681 (list!5666 call!94700))))

(declare-fun bm!94703 () Bool)

(declare-fun printTailRec!633 (LexerInterface!2192 BalanceConc!9526 Int BalanceConc!9524) BalanceConc!9524)

(assert (=> bm!94703 (= call!94684 (printTailRec!633 Lexer!2190 (tokens!1751 sep!3) 0 (BalanceConc!9525 Empty!4792)))))

(declare-fun b!1413011 () Bool)

(declare-fun e!902071 () Bool)

(assert (=> b!1413011 (= e!902071 e!902070)))

(declare-fun res!639940 () Bool)

(assert (=> b!1413011 (=> (not res!639940) (not e!902070))))

(assert (=> b!1413011 (= res!639940 (= (rules!11021 (get!4439 lt!473035)) (rules!11021 (head!2682 objs!24))))))

(declare-fun b!1413012 () Bool)

(assert (=> b!1413012 (= e!902069 call!94707)))

(declare-fun bm!94704 () Bool)

(assert (=> bm!94704 (= call!94682 (printList!651 (ite c!232159 lt!473024 (ite c!232163 Lexer!2190 lt!472981)) (ite c!232159 lt!472992 e!902068)))))

(declare-fun b!1413013 () Bool)

(assert (=> b!1413013 (= e!902066 call!94693)))

(declare-fun b!1413014 () Bool)

(declare-fun c!232162 () Bool)

(declare-fun separableTokensPredicate!474 (LexerInterface!2192 Token!4674 Token!4674 List!14497) Bool)

(declare-fun last!65 (BalanceConc!9526) Token!4674)

(declare-fun head!2684 (BalanceConc!9526) Token!4674)

(assert (=> b!1413014 (= c!232162 (separableTokensPredicate!474 Lexer!2190 (last!65 (tokens!1751 (head!2682 objs!24))) (head!2684 (tokens!1751 sep!3)) (rules!11021 (head!2682 objs!24))))))

(declare-fun lt!473002 () Unit!20963)

(declare-fun lt!473011 () Unit!20963)

(assert (=> b!1413014 (= lt!473002 lt!473011)))

(declare-fun lt!472982 () LexerInterface!2192)

(declare-fun lt!473033 () Token!4674)

(declare-fun rulesProduceIndividualToken!1160 (LexerInterface!2192 List!14497 Token!4674) Bool)

(assert (=> b!1413014 (rulesProduceIndividualToken!1160 lt!472982 (rules!11021 (head!2682 objs!24)) lt!473033)))

(declare-fun lt!473006 () List!14496)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!345 (LexerInterface!2192 List!14497 List!14496 Token!4674) Unit!20963)

(assert (=> b!1413014 (= lt!473011 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!345 lt!472982 (rules!11021 (head!2682 objs!24)) lt!473006 lt!473033))))

(assert (=> b!1413014 (= lt!473033 (head!2684 (tokens!1751 sep!3)))))

(assert (=> b!1413014 (= lt!473006 call!94685)))

(assert (=> b!1413014 (= lt!472982 Lexer!2190)))

(declare-fun lt!473038 () Unit!20963)

(declare-fun lt!473019 () Unit!20963)

(assert (=> b!1413014 (= lt!473038 lt!473019)))

(declare-fun lt!473001 () LexerInterface!2192)

(declare-fun lt!473009 () Token!4674)

(assert (=> b!1413014 (rulesProduceIndividualToken!1160 lt!473001 (rules!11021 (head!2682 objs!24)) lt!473009)))

(declare-fun lt!472984 () List!14496)

(assert (=> b!1413014 (= lt!473019 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!345 lt!473001 (rules!11021 (head!2682 objs!24)) lt!472984 lt!473009))))

(assert (=> b!1413014 (= lt!473009 (last!65 (tokens!1751 (head!2682 objs!24))))))

(assert (=> b!1413014 (= lt!472984 call!94706)))

(assert (=> b!1413014 (= lt!473001 Lexer!2190)))

(assert (=> b!1413014 (= e!902067 e!902064)))

(declare-fun bm!94705 () Bool)

(assert (=> bm!94705 (= call!94675 (print!957 (ite c!232159 (head!2682 objs!24) (ite c!232163 sep!3 (head!2682 objs!24)))))))

(declare-fun bm!94706 () Bool)

(assert (=> bm!94706 (= call!94699 (print!958 Lexer!2190 (tokens!1751 sep!3)))))

(declare-fun b!1413015 () Bool)

(assert (=> b!1413015 (= e!902068 call!94676)))

(declare-fun bm!94707 () Bool)

(assert (=> bm!94707 (= call!94709 call!94675)))

(declare-fun d!404224 () Bool)

(assert (=> d!404224 e!902071))

(declare-fun res!639941 () Bool)

(assert (=> d!404224 (=> res!639941 e!902071)))

(declare-fun isEmpty!8827 (Option!2765) Bool)

(assert (=> d!404224 (= res!639941 (isEmpty!8827 lt!473035))))

(assert (=> d!404224 (= lt!473035 e!902072)))

(assert (=> d!404224 (= c!232159 (isEmpty!8826 (tokens!1751 sep!3)))))

(declare-fun lt!472987 () Unit!20963)

(declare-fun lemmaInvariant!223 (PrintableTokens!794) Unit!20963)

(assert (=> d!404224 (= lt!472987 (lemmaInvariant!223 (head!2682 objs!24)))))

(declare-fun lt!472990 () Unit!20963)

(assert (=> d!404224 (= lt!472990 (lemmaInvariant!223 sep!3))))

(assert (=> d!404224 (= (rules!11021 (head!2682 objs!24)) (rules!11021 sep!3))))

(assert (=> d!404224 (= (append!425 (head!2682 objs!24) sep!3) lt!473035)))

(declare-fun bm!94674 () Bool)

(assert (=> bm!94674 (= call!94707 (++!3763 (ite c!232159 call!94681 (ite c!232163 call!94702 call!94712)) (ite c!232159 call!94680 (ite c!232163 call!94712 call!94705))))))

(assert (= (and d!404224 c!232159) b!1413004))

(assert (= (and d!404224 (not c!232159)) b!1412999))

(assert (= (and b!1413004 c!232161) b!1413012))

(assert (= (and b!1413004 (not c!232161)) b!1413003))

(assert (= (and b!1412999 c!232163) b!1413001))

(assert (= (and b!1412999 (not c!232163)) b!1413014))

(assert (= (and b!1413001 c!232160) b!1413013))

(assert (= (and b!1413001 (not c!232160)) b!1413002))

(assert (= (and b!1413014 c!232162) b!1413000))

(assert (= (and b!1413014 (not c!232162)) b!1413007))

(assert (= (or b!1413001 b!1413000) bm!94691))

(assert (= (or b!1413001 b!1413000) bm!94697))

(assert (= (or b!1413001 b!1413000) bm!94690))

(assert (= (or b!1413001 b!1413000) bm!94700))

(assert (= (or b!1413001 b!1413000) bm!94681))

(assert (= (or b!1413001 b!1413000) bm!94692))

(assert (= (or b!1413001 b!1413014 b!1413000) bm!94671))

(assert (= (or b!1413001 b!1413000) bm!94672))

(assert (= (or b!1413013 b!1413000) bm!94694))

(assert (= (or b!1413001 b!1413000) bm!94707))

(assert (= (or b!1413001 b!1413014 b!1413000) bm!94669))

(assert (= (or b!1413001 b!1413000) bm!94689))

(assert (= (or b!1413001 b!1413000) bm!94685))

(assert (= (or b!1413001 b!1413000) bm!94673))

(assert (= (or b!1413001 b!1413000) bm!94696))

(assert (= (and bm!94696 c!232164) b!1413006))

(assert (= (and bm!94696 (not c!232164)) b!1413015))

(assert (= (or b!1413001 b!1413000) bm!94699))

(assert (= (or b!1413001 b!1413000) bm!94693))

(assert (= (or b!1413013 b!1413000) bm!94701))

(assert (= (and bm!94701 c!232165) b!1413009))

(assert (= (and bm!94701 (not c!232165)) b!1413005))

(assert (= (or b!1413004 bm!94672) bm!94670))

(assert (= (or b!1413004 bm!94669) bm!94698))

(assert (= (or b!1413004 bm!94700) bm!94683))

(assert (= (or b!1413004 bm!94671) bm!94682))

(assert (= (or b!1413004 b!1413015) bm!94686))

(assert (= (or b!1413004 bm!94690) bm!94680))

(assert (= (or b!1413004 bm!94707) bm!94705))

(assert (= (or b!1413004 bm!94681) bm!94706))

(assert (= (or b!1413012 b!1413009) bm!94679))

(assert (= (or b!1413004 bm!94696) bm!94704))

(assert (= (or b!1413004 b!1413001) bm!94703))

(assert (= (or b!1413004 bm!94692) bm!94678))

(assert (= (or b!1413004 bm!94689) bm!94688))

(assert (= (or b!1413012 bm!94691) bm!94677))

(assert (= (or b!1413004 bm!94694) bm!94695))

(assert (= (or b!1413004 bm!94685) bm!94684))

(assert (= (or b!1413004 bm!94699) bm!94676))

(assert (= (or b!1413004 bm!94673) bm!94687))

(assert (= (or b!1413004 bm!94701) bm!94675))

(assert (= (or b!1413012 b!1413009) bm!94702))

(assert (= (or b!1413012 bm!94693) bm!94674))

(assert (= (and d!404224 (not res!639941)) b!1413011))

(assert (= (and b!1413011 res!639940) b!1413010))

(assert (= (and b!1413010 res!639942) b!1413008))

(declare-fun m!1594321 () Bool)

(assert (=> bm!94684 m!1594321))

(declare-fun m!1594323 () Bool)

(assert (=> b!1413008 m!1594323))

(declare-fun m!1594325 () Bool)

(assert (=> b!1413008 m!1594325))

(declare-fun m!1594327 () Bool)

(assert (=> b!1413008 m!1594327))

(declare-fun m!1594329 () Bool)

(assert (=> b!1413008 m!1594329))

(declare-fun m!1594331 () Bool)

(assert (=> b!1413008 m!1594331))

(declare-fun m!1594333 () Bool)

(assert (=> b!1413008 m!1594333))

(declare-fun m!1594335 () Bool)

(assert (=> b!1413008 m!1594335))

(assert (=> b!1413008 m!1594331))

(assert (=> b!1413008 m!1594179))

(declare-fun m!1594337 () Bool)

(assert (=> b!1413008 m!1594337))

(assert (=> b!1413008 m!1594337))

(assert (=> b!1413008 m!1594323))

(assert (=> b!1413008 m!1594329))

(assert (=> b!1413008 m!1594325))

(assert (=> b!1413008 m!1594335))

(declare-fun m!1594339 () Bool)

(assert (=> bm!94670 m!1594339))

(declare-fun m!1594341 () Bool)

(assert (=> bm!94675 m!1594341))

(declare-fun m!1594343 () Bool)

(assert (=> bm!94679 m!1594343))

(declare-fun m!1594345 () Bool)

(assert (=> bm!94674 m!1594345))

(declare-fun m!1594347 () Bool)

(assert (=> bm!94687 m!1594347))

(declare-fun m!1594349 () Bool)

(assert (=> bm!94682 m!1594349))

(declare-fun m!1594351 () Bool)

(assert (=> bm!94705 m!1594351))

(declare-fun m!1594353 () Bool)

(assert (=> bm!94703 m!1594353))

(declare-fun m!1594355 () Bool)

(assert (=> bm!94678 m!1594355))

(declare-fun m!1594357 () Bool)

(assert (=> bm!94704 m!1594357))

(declare-fun m!1594359 () Bool)

(assert (=> b!1413010 m!1594359))

(assert (=> b!1413010 m!1594335))

(declare-fun m!1594361 () Bool)

(assert (=> b!1413010 m!1594361))

(assert (=> b!1413010 m!1594359))

(assert (=> b!1413010 m!1594361))

(declare-fun m!1594363 () Bool)

(assert (=> b!1413010 m!1594363))

(declare-fun m!1594365 () Bool)

(assert (=> b!1413010 m!1594365))

(declare-fun m!1594367 () Bool)

(assert (=> bm!94686 m!1594367))

(declare-fun m!1594369 () Bool)

(assert (=> bm!94698 m!1594369))

(declare-fun m!1594371 () Bool)

(assert (=> b!1413000 m!1594371))

(declare-fun m!1594373 () Bool)

(assert (=> b!1413000 m!1594373))

(declare-fun m!1594375 () Bool)

(assert (=> b!1413000 m!1594375))

(declare-fun m!1594377 () Bool)

(assert (=> b!1413000 m!1594377))

(assert (=> b!1413000 m!1594371))

(declare-fun m!1594379 () Bool)

(assert (=> b!1413000 m!1594379))

(assert (=> b!1413000 m!1594371))

(assert (=> b!1413000 m!1594375))

(declare-fun m!1594381 () Bool)

(assert (=> b!1413000 m!1594381))

(declare-fun m!1594383 () Bool)

(assert (=> b!1413000 m!1594383))

(declare-fun m!1594385 () Bool)

(assert (=> b!1413000 m!1594385))

(declare-fun m!1594387 () Bool)

(assert (=> b!1413000 m!1594387))

(declare-fun m!1594389 () Bool)

(assert (=> b!1413000 m!1594389))

(assert (=> b!1413000 m!1594387))

(assert (=> b!1413000 m!1594387))

(declare-fun m!1594391 () Bool)

(assert (=> b!1413000 m!1594391))

(declare-fun m!1594393 () Bool)

(assert (=> bm!94677 m!1594393))

(declare-fun m!1594395 () Bool)

(assert (=> bm!94697 m!1594395))

(declare-fun m!1594397 () Bool)

(assert (=> d!404224 m!1594397))

(declare-fun m!1594399 () Bool)

(assert (=> d!404224 m!1594399))

(assert (=> d!404224 m!1594179))

(declare-fun m!1594401 () Bool)

(assert (=> d!404224 m!1594401))

(declare-fun m!1594403 () Bool)

(assert (=> d!404224 m!1594403))

(declare-fun m!1594405 () Bool)

(assert (=> bm!94695 m!1594405))

(declare-fun m!1594407 () Bool)

(assert (=> bm!94706 m!1594407))

(declare-fun m!1594409 () Bool)

(assert (=> bm!94676 m!1594409))

(declare-fun m!1594411 () Bool)

(assert (=> bm!94680 m!1594411))

(declare-fun m!1594413 () Bool)

(assert (=> bm!94688 m!1594413))

(declare-fun m!1594415 () Bool)

(assert (=> bm!94683 m!1594415))

(assert (=> b!1413011 m!1594335))

(declare-fun m!1594417 () Bool)

(assert (=> b!1413014 m!1594417))

(declare-fun m!1594419 () Bool)

(assert (=> b!1413014 m!1594419))

(declare-fun m!1594421 () Bool)

(assert (=> b!1413014 m!1594421))

(assert (=> b!1413014 m!1594417))

(declare-fun m!1594423 () Bool)

(assert (=> b!1413014 m!1594423))

(assert (=> b!1413014 m!1594419))

(declare-fun m!1594425 () Bool)

(assert (=> b!1413014 m!1594425))

(declare-fun m!1594427 () Bool)

(assert (=> b!1413014 m!1594427))

(declare-fun m!1594429 () Bool)

(assert (=> b!1413014 m!1594429))

(declare-fun m!1594431 () Bool)

(assert (=> bm!94702 m!1594431))

(declare-fun m!1594433 () Bool)

(assert (=> b!1412999 m!1594433))

(assert (=> b!1412881 d!404224))

(declare-fun d!404248 () Bool)

(declare-fun lt!473046 () PrintableTokens!794)

(declare-fun head!2685 (List!14498) PrintableTokens!794)

(assert (=> d!404248 (= lt!473046 (head!2685 (list!5664 objs!24)))))

(declare-fun head!2686 (Conc!4794) PrintableTokens!794)

(assert (=> d!404248 (= lt!473046 (head!2686 (c!232131 objs!24)))))

(assert (=> d!404248 (not (isEmpty!8823 objs!24))))

(assert (=> d!404248 (= (head!2682 objs!24) lt!473046)))

(declare-fun bs!339136 () Bool)

(assert (= bs!339136 d!404248))

(assert (=> bs!339136 m!1594239))

(assert (=> bs!339136 m!1594239))

(declare-fun m!1594435 () Bool)

(assert (=> bs!339136 m!1594435))

(declare-fun m!1594437 () Bool)

(assert (=> bs!339136 m!1594437))

(assert (=> bs!339136 m!1594207))

(assert (=> b!1412881 d!404248))

(declare-fun d!404250 () Bool)

(assert (=> d!404250 (= (usesJsonRules!0 acc!229) (= (rules!11021 acc!229) (rules!109 JsonLexer!389)))))

(declare-fun bs!339137 () Bool)

(assert (= bs!339137 d!404250))

(assert (=> bs!339137 m!1594275))

(assert (=> b!1412887 d!404250))

(declare-fun d!404252 () Bool)

(declare-fun lt!473049 () Bool)

(declare-fun isEmpty!8828 (List!14498) Bool)

(assert (=> d!404252 (= lt!473049 (isEmpty!8828 (list!5664 objs!24)))))

(declare-fun isEmpty!8829 (Conc!4794) Bool)

(assert (=> d!404252 (= lt!473049 (isEmpty!8829 (c!232131 objs!24)))))

(assert (=> d!404252 (= (isEmpty!8823 objs!24) lt!473049)))

(declare-fun bs!339138 () Bool)

(assert (= bs!339138 d!404252))

(assert (=> bs!339138 m!1594239))

(assert (=> bs!339138 m!1594239))

(declare-fun m!1594439 () Bool)

(assert (=> bs!339138 m!1594439))

(declare-fun m!1594441 () Bool)

(assert (=> bs!339138 m!1594441))

(assert (=> b!1412882 d!404252))

(declare-fun d!404254 () Bool)

(declare-fun c!232168 () Bool)

(assert (=> d!404254 (= c!232168 (is-Node!4793 (c!232130 (tokens!1751 acc!229))))))

(declare-fun e!902077 () Bool)

(assert (=> d!404254 (= (inv!18867 (c!232130 (tokens!1751 acc!229))) e!902077)))

(declare-fun b!1413022 () Bool)

(declare-fun inv!18876 (Conc!4793) Bool)

(assert (=> b!1413022 (= e!902077 (inv!18876 (c!232130 (tokens!1751 acc!229))))))

(declare-fun b!1413023 () Bool)

(declare-fun e!902078 () Bool)

(assert (=> b!1413023 (= e!902077 e!902078)))

(declare-fun res!639945 () Bool)

(assert (=> b!1413023 (= res!639945 (not (is-Leaf!7243 (c!232130 (tokens!1751 acc!229)))))))

(assert (=> b!1413023 (=> res!639945 e!902078)))

(declare-fun b!1413024 () Bool)

(declare-fun inv!18877 (Conc!4793) Bool)

(assert (=> b!1413024 (= e!902078 (inv!18877 (c!232130 (tokens!1751 acc!229))))))

(assert (= (and d!404254 c!232168) b!1413022))

(assert (= (and d!404254 (not c!232168)) b!1413023))

(assert (= (and b!1413023 (not res!639945)) b!1413024))

(declare-fun m!1594443 () Bool)

(assert (=> b!1413022 m!1594443))

(declare-fun m!1594445 () Bool)

(assert (=> b!1413024 m!1594445))

(assert (=> b!1412888 d!404254))

(declare-fun d!404256 () Bool)

(declare-fun c!232169 () Bool)

(assert (=> d!404256 (= c!232169 (is-Node!4793 (c!232130 (tokens!1751 sep!3))))))

(declare-fun e!902079 () Bool)

(assert (=> d!404256 (= (inv!18867 (c!232130 (tokens!1751 sep!3))) e!902079)))

(declare-fun b!1413025 () Bool)

(assert (=> b!1413025 (= e!902079 (inv!18876 (c!232130 (tokens!1751 sep!3))))))

(declare-fun b!1413026 () Bool)

(declare-fun e!902080 () Bool)

(assert (=> b!1413026 (= e!902079 e!902080)))

(declare-fun res!639946 () Bool)

(assert (=> b!1413026 (= res!639946 (not (is-Leaf!7243 (c!232130 (tokens!1751 sep!3)))))))

(assert (=> b!1413026 (=> res!639946 e!902080)))

(declare-fun b!1413027 () Bool)

(assert (=> b!1413027 (= e!902080 (inv!18877 (c!232130 (tokens!1751 sep!3))))))

(assert (= (and d!404256 c!232169) b!1413025))

(assert (= (and d!404256 (not c!232169)) b!1413026))

(assert (= (and b!1413026 (not res!639946)) b!1413027))

(declare-fun m!1594447 () Bool)

(assert (=> b!1413025 m!1594447))

(declare-fun m!1594449 () Bool)

(assert (=> b!1413027 m!1594449))

(assert (=> b!1412883 d!404256))

(declare-fun d!404258 () Bool)

(assert (=> d!404258 (= (inv!18866 (tokens!1751 sep!3)) (isBalanced!1418 (c!232130 (tokens!1751 sep!3))))))

(declare-fun bs!339139 () Bool)

(assert (= bs!339139 d!404258))

(declare-fun m!1594451 () Bool)

(assert (=> bs!339139 m!1594451))

(assert (=> b!1412889 d!404258))

(declare-fun d!404260 () Bool)

(declare-fun c!232172 () Bool)

(assert (=> d!404260 (= c!232172 (is-Node!4794 (c!232131 objs!24)))))

(declare-fun e!902085 () Bool)

(assert (=> d!404260 (= (inv!18868 (c!232131 objs!24)) e!902085)))

(declare-fun b!1413034 () Bool)

(declare-fun inv!18878 (Conc!4794) Bool)

(assert (=> b!1413034 (= e!902085 (inv!18878 (c!232131 objs!24)))))

(declare-fun b!1413035 () Bool)

(declare-fun e!902086 () Bool)

(assert (=> b!1413035 (= e!902085 e!902086)))

(declare-fun res!639949 () Bool)

(assert (=> b!1413035 (= res!639949 (not (is-Leaf!7244 (c!232131 objs!24))))))

(assert (=> b!1413035 (=> res!639949 e!902086)))

(declare-fun b!1413036 () Bool)

(declare-fun inv!18879 (Conc!4794) Bool)

(assert (=> b!1413036 (= e!902086 (inv!18879 (c!232131 objs!24)))))

(assert (= (and d!404260 c!232172) b!1413034))

(assert (= (and d!404260 (not c!232172)) b!1413035))

(assert (= (and b!1413035 (not res!639949)) b!1413036))

(declare-fun m!1594453 () Bool)

(assert (=> b!1413034 m!1594453))

(declare-fun m!1594455 () Bool)

(assert (=> b!1413036 m!1594455))

(assert (=> b!1412884 d!404260))

(declare-fun b!1413047 () Bool)

(declare-fun b_free!34727 () Bool)

(declare-fun b_next!35431 () Bool)

(assert (=> b!1413047 (= b_free!34727 (not b_next!35431))))

(declare-fun tp!401056 () Bool)

(declare-fun b_and!94703 () Bool)

(assert (=> b!1413047 (= tp!401056 b_and!94703)))

(declare-fun b_free!34729 () Bool)

(declare-fun b_next!35433 () Bool)

(assert (=> b!1413047 (= b_free!34729 (not b_next!35433))))

(declare-fun tp!401057 () Bool)

(declare-fun b_and!94705 () Bool)

(assert (=> b!1413047 (= tp!401057 b_and!94705)))

(declare-fun e!902098 () Bool)

(assert (=> b!1413047 (= e!902098 (and tp!401056 tp!401057))))

(declare-fun b!1413046 () Bool)

(declare-fun e!902095 () Bool)

(declare-fun inv!18863 (String!17217) Bool)

(declare-fun inv!18880 (TokenValueInjection!4852) Bool)

(assert (=> b!1413046 (= e!902095 (and (inv!18863 (tag!2768 (h!19832 (rules!11021 acc!229)))) (inv!18880 (transformation!2506 (h!19832 (rules!11021 acc!229)))) e!902098))))

(declare-fun b!1413045 () Bool)

(declare-fun e!902097 () Bool)

(declare-fun tp!401055 () Bool)

(assert (=> b!1413045 (= e!902097 (and e!902095 tp!401055))))

(assert (=> b!1412880 (= tp!401031 e!902097)))

(assert (= b!1413046 b!1413047))

(assert (= b!1413045 b!1413046))

(assert (= (and b!1412880 (is-Cons!14431 (rules!11021 acc!229))) b!1413045))

(declare-fun m!1594457 () Bool)

(assert (=> b!1413046 m!1594457))

(declare-fun m!1594459 () Bool)

(assert (=> b!1413046 m!1594459))

(declare-fun e!902104 () Bool)

(declare-fun b!1413056 () Bool)

(declare-fun tp!401066 () Bool)

(declare-fun tp!401064 () Bool)

(assert (=> b!1413056 (= e!902104 (and (inv!18867 (left!12328 (c!232130 (tokens!1751 acc!229)))) tp!401064 (inv!18867 (right!12658 (c!232130 (tokens!1751 acc!229)))) tp!401066))))

(declare-fun b!1413058 () Bool)

(declare-fun e!902103 () Bool)

(declare-fun tp!401065 () Bool)

(assert (=> b!1413058 (= e!902103 tp!401065)))

(declare-fun b!1413057 () Bool)

(declare-fun inv!18881 (IArray!9591) Bool)

(assert (=> b!1413057 (= e!902104 (and (inv!18881 (xs!7520 (c!232130 (tokens!1751 acc!229)))) e!902103))))

(assert (=> b!1412888 (= tp!401029 (and (inv!18867 (c!232130 (tokens!1751 acc!229))) e!902104))))

(assert (= (and b!1412888 (is-Node!4793 (c!232130 (tokens!1751 acc!229)))) b!1413056))

(assert (= b!1413057 b!1413058))

(assert (= (and b!1412888 (is-Leaf!7243 (c!232130 (tokens!1751 acc!229)))) b!1413057))

(declare-fun m!1594461 () Bool)

(assert (=> b!1413056 m!1594461))

(declare-fun m!1594463 () Bool)

(assert (=> b!1413056 m!1594463))

(declare-fun m!1594465 () Bool)

(assert (=> b!1413057 m!1594465))

(assert (=> b!1412888 m!1594205))

(declare-fun tp!401067 () Bool)

(declare-fun tp!401069 () Bool)

(declare-fun e!902106 () Bool)

(declare-fun b!1413059 () Bool)

(assert (=> b!1413059 (= e!902106 (and (inv!18867 (left!12328 (c!232130 (tokens!1751 sep!3)))) tp!401067 (inv!18867 (right!12658 (c!232130 (tokens!1751 sep!3)))) tp!401069))))

(declare-fun b!1413061 () Bool)

(declare-fun e!902105 () Bool)

(declare-fun tp!401068 () Bool)

(assert (=> b!1413061 (= e!902105 tp!401068)))

(declare-fun b!1413060 () Bool)

(assert (=> b!1413060 (= e!902106 (and (inv!18881 (xs!7520 (c!232130 (tokens!1751 sep!3)))) e!902105))))

(assert (=> b!1412883 (= tp!401030 (and (inv!18867 (c!232130 (tokens!1751 sep!3))) e!902106))))

(assert (= (and b!1412883 (is-Node!4793 (c!232130 (tokens!1751 sep!3)))) b!1413059))

(assert (= b!1413060 b!1413061))

(assert (= (and b!1412883 (is-Leaf!7243 (c!232130 (tokens!1751 sep!3)))) b!1413060))

(declare-fun m!1594467 () Bool)

(assert (=> b!1413059 m!1594467))

(declare-fun m!1594469 () Bool)

(assert (=> b!1413059 m!1594469))

(declare-fun m!1594471 () Bool)

(assert (=> b!1413060 m!1594471))

(assert (=> b!1412883 m!1594193))

(declare-fun b!1413064 () Bool)

(declare-fun b_free!34731 () Bool)

(declare-fun b_next!35435 () Bool)

(assert (=> b!1413064 (= b_free!34731 (not b_next!35435))))

(declare-fun tp!401071 () Bool)

(declare-fun b_and!94707 () Bool)

(assert (=> b!1413064 (= tp!401071 b_and!94707)))

(declare-fun b_free!34733 () Bool)

(declare-fun b_next!35437 () Bool)

(assert (=> b!1413064 (= b_free!34733 (not b_next!35437))))

(declare-fun tp!401072 () Bool)

(declare-fun b_and!94709 () Bool)

(assert (=> b!1413064 (= tp!401072 b_and!94709)))

(declare-fun e!902110 () Bool)

(assert (=> b!1413064 (= e!902110 (and tp!401071 tp!401072))))

(declare-fun b!1413063 () Bool)

(declare-fun e!902107 () Bool)

(assert (=> b!1413063 (= e!902107 (and (inv!18863 (tag!2768 (h!19832 (rules!11021 sep!3)))) (inv!18880 (transformation!2506 (h!19832 (rules!11021 sep!3)))) e!902110))))

(declare-fun b!1413062 () Bool)

(declare-fun e!902109 () Bool)

(declare-fun tp!401070 () Bool)

(assert (=> b!1413062 (= e!902109 (and e!902107 tp!401070))))

(assert (=> b!1412889 (= tp!401032 e!902109)))

(assert (= b!1413063 b!1413064))

(assert (= b!1413062 b!1413063))

(assert (= (and b!1412889 (is-Cons!14431 (rules!11021 sep!3))) b!1413062))

(declare-fun m!1594473 () Bool)

(assert (=> b!1413063 m!1594473))

(declare-fun m!1594475 () Bool)

(assert (=> b!1413063 m!1594475))

(declare-fun e!902115 () Bool)

(declare-fun tp!401080 () Bool)

(declare-fun tp!401079 () Bool)

(declare-fun b!1413073 () Bool)

(assert (=> b!1413073 (= e!902115 (and (inv!18868 (left!12329 (c!232131 objs!24))) tp!401079 (inv!18868 (right!12659 (c!232131 objs!24))) tp!401080))))

(declare-fun b!1413075 () Bool)

(declare-fun e!902116 () Bool)

(declare-fun tp!401081 () Bool)

(assert (=> b!1413075 (= e!902116 tp!401081)))

(declare-fun b!1413074 () Bool)

(declare-fun inv!18882 (IArray!9593) Bool)

(assert (=> b!1413074 (= e!902115 (and (inv!18882 (xs!7521 (c!232131 objs!24))) e!902116))))

(assert (=> b!1412884 (= tp!401033 (and (inv!18868 (c!232131 objs!24)) e!902115))))

(assert (= (and b!1412884 (is-Node!4794 (c!232131 objs!24))) b!1413073))

(assert (= b!1413074 b!1413075))

(assert (= (and b!1412884 (is-Leaf!7244 (c!232131 objs!24))) b!1413074))

(declare-fun m!1594477 () Bool)

(assert (=> b!1413073 m!1594477))

(declare-fun m!1594479 () Bool)

(assert (=> b!1413073 m!1594479))

(declare-fun m!1594481 () Bool)

(assert (=> b!1413074 m!1594481))

(assert (=> b!1412884 m!1594201))

(push 1)

(assert (not d!404218))

(assert (not d!404206))

(assert (not d!404208))

(assert (not bm!94674))

(assert (not b!1413011))

(assert (not b!1412938))

(assert (not bm!94683))

(assert (not bm!94687))

(assert (not bm!94697))

(assert (not d!404222))

(assert (not bm!94676))

(assert (not b!1413057))

(assert (not bm!94702))

(assert (not b!1413008))

(assert (not b!1412999))

(assert (not b!1412936))

(assert (not bm!94706))

(assert (not d!404258))

(assert (not b!1413058))

(assert (not b!1413022))

(assert (not b!1412940))

(assert b_and!94703)

(assert (not bm!94677))

(assert (not b!1413034))

(assert (not b!1413075))

(assert (not d!404224))

(assert (not bm!94688))

(assert (not bm!94682))

(assert (not b!1412884))

(assert (not bm!94704))

(assert (not d!404252))

(assert (not b_next!35437))

(assert (not bm!94670))

(assert (not d!404210))

(assert (not bm!94678))

(assert (not b!1413014))

(assert b_and!94705)

(assert (not bm!94675))

(assert (not b!1413024))

(assert (not b!1413056))

(assert (not b!1412939))

(assert (not bm!94684))

(assert (not b!1413027))

(assert (not d!404250))

(assert (not d!404248))

(assert (not bm!94679))

(assert (not bm!94686))

(assert (not bm!94695))

(assert (not b!1412937))

(assert (not bm!94698))

(assert (not bm!94705))

(assert (not b!1413061))

(assert (not b_next!35431))

(assert (not b_next!35433))

(assert (not b_next!35435))

(assert (not d!404220))

(assert b_and!94707)

(assert (not b!1413073))

(assert (not b!1413010))

(assert (not bm!94680))

(assert (not b!1412935))

(assert b_and!94709)

(assert (not b!1413046))

(assert (not b!1413025))

(assert (not b!1413063))

(assert (not b!1413062))

(assert (not b!1412888))

(assert (not bm!94703))

(assert (not b!1413045))

(assert (not b!1413059))

(assert (not b!1413036))

(assert (not b!1413060))

(assert (not b!1413000))

(assert (not b!1413074))

(assert (not d!404204))

(assert (not b!1412883))

(check-sat)

(pop 1)

(push 1)

(assert b_and!94703)

(assert (not b_next!35437))

(assert b_and!94705)

(assert b_and!94709)

(assert (not b_next!35431))

(assert (not b_next!35433))

(assert (not b_next!35435))

(assert b_and!94707)

(check-sat)

(pop 1)

