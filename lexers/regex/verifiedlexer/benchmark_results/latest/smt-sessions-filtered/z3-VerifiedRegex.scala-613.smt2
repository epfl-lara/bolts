; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19658 () Bool)

(assert start!19658)

(declare-fun b!181440 () Bool)

(declare-fun b_free!7033 () Bool)

(declare-fun b_next!7033 () Bool)

(assert (=> b!181440 (= b_free!7033 (not b_next!7033))))

(declare-fun tp!86459 () Bool)

(declare-fun b_and!12397 () Bool)

(assert (=> b!181440 (= tp!86459 b_and!12397)))

(declare-fun b_free!7035 () Bool)

(declare-fun b_next!7035 () Bool)

(assert (=> b!181440 (= b_free!7035 (not b_next!7035))))

(declare-fun tp!86463 () Bool)

(declare-fun b_and!12399 () Bool)

(assert (=> b!181440 (= tp!86463 b_and!12399)))

(declare-fun b!181454 () Bool)

(declare-fun b_free!7037 () Bool)

(declare-fun b_next!7037 () Bool)

(assert (=> b!181454 (= b_free!7037 (not b_next!7037))))

(declare-fun tp!86456 () Bool)

(declare-fun b_and!12401 () Bool)

(assert (=> b!181454 (= tp!86456 b_and!12401)))

(declare-fun b_free!7039 () Bool)

(declare-fun b_next!7039 () Bool)

(assert (=> b!181454 (= b_free!7039 (not b_next!7039))))

(declare-fun tp!86462 () Bool)

(declare-fun b_and!12403 () Bool)

(assert (=> b!181454 (= tp!86462 b_and!12403)))

(declare-fun b!181446 () Bool)

(declare-fun b_free!7041 () Bool)

(declare-fun b_next!7041 () Bool)

(assert (=> b!181446 (= b_free!7041 (not b_next!7041))))

(declare-fun tp!86454 () Bool)

(declare-fun b_and!12405 () Bool)

(assert (=> b!181446 (= tp!86454 b_and!12405)))

(declare-fun b_free!7043 () Bool)

(declare-fun b_next!7043 () Bool)

(assert (=> b!181446 (= b_free!7043 (not b_next!7043))))

(declare-fun tp!86460 () Bool)

(declare-fun b_and!12407 () Bool)

(assert (=> b!181446 (= tp!86460 b_and!12407)))

(declare-fun bs!18074 () Bool)

(declare-fun b!181451 () Bool)

(declare-fun b!181435 () Bool)

(assert (= bs!18074 (and b!181451 b!181435)))

(declare-fun lambda!5370 () Int)

(declare-fun lambda!5369 () Int)

(assert (=> bs!18074 (not (= lambda!5370 lambda!5369))))

(declare-fun b!181468 () Bool)

(declare-fun e!110563 () Bool)

(assert (=> b!181468 (= e!110563 true)))

(declare-fun b!181467 () Bool)

(declare-fun e!110562 () Bool)

(assert (=> b!181467 (= e!110562 e!110563)))

(declare-fun b!181466 () Bool)

(declare-fun e!110561 () Bool)

(assert (=> b!181466 (= e!110561 e!110562)))

(assert (=> b!181451 e!110561))

(assert (= b!181467 b!181468))

(assert (= b!181466 b!181467))

(declare-datatypes ((List!3041 0))(
  ( (Nil!3031) (Cons!3031 (h!8428 (_ BitVec 16)) (t!28319 List!3041)) )
))
(declare-datatypes ((TokenValue!571 0))(
  ( (FloatLiteralValue!1142 (text!4442 List!3041)) (TokenValueExt!570 (__x!2629 Int)) (Broken!2855 (value!19936 List!3041)) (Object!580) (End!571) (Def!571) (Underscore!571) (Match!571) (Else!571) (Error!571) (Case!571) (If!571) (Extends!571) (Abstract!571) (Class!571) (Val!571) (DelimiterValue!1142 (del!631 List!3041)) (KeywordValue!577 (value!19937 List!3041)) (CommentValue!1142 (value!19938 List!3041)) (WhitespaceValue!1142 (value!19939 List!3041)) (IndentationValue!571 (value!19940 List!3041)) (String!3934) (Int32!571) (Broken!2856 (value!19941 List!3041)) (Boolean!572) (Unit!2785) (OperatorValue!574 (op!631 List!3041)) (IdentifierValue!1142 (value!19942 List!3041)) (IdentifierValue!1143 (value!19943 List!3041)) (WhitespaceValue!1143 (value!19944 List!3041)) (True!1142) (False!1142) (Broken!2857 (value!19945 List!3041)) (Broken!2858 (value!19946 List!3041)) (True!1143) (RightBrace!571) (RightBracket!571) (Colon!571) (Null!571) (Comma!571) (LeftBracket!571) (False!1143) (LeftBrace!571) (ImaginaryLiteralValue!571 (text!4443 List!3041)) (StringLiteralValue!1713 (value!19947 List!3041)) (EOFValue!571 (value!19948 List!3041)) (IdentValue!571 (value!19949 List!3041)) (DelimiterValue!1143 (value!19950 List!3041)) (DedentValue!571 (value!19951 List!3041)) (NewLineValue!571 (value!19952 List!3041)) (IntegerValue!1713 (value!19953 (_ BitVec 32)) (text!4444 List!3041)) (IntegerValue!1714 (value!19954 Int) (text!4445 List!3041)) (Times!571) (Or!571) (Equal!571) (Minus!571) (Broken!2859 (value!19955 List!3041)) (And!571) (Div!571) (LessEqual!571) (Mod!571) (Concat!1344) (Not!571) (Plus!571) (SpaceValue!571 (value!19956 List!3041)) (IntegerValue!1715 (value!19957 Int) (text!4446 List!3041)) (StringLiteralValue!1714 (text!4447 List!3041)) (FloatLiteralValue!1143 (text!4448 List!3041)) (BytesLiteralValue!571 (value!19958 List!3041)) (CommentValue!1143 (value!19959 List!3041)) (StringLiteralValue!1715 (value!19960 List!3041)) (ErrorTokenValue!571 (msg!632 List!3041)) )
))
(declare-datatypes ((C!2468 0))(
  ( (C!2469 (val!1120 Int)) )
))
(declare-datatypes ((List!3042 0))(
  ( (Nil!3032) (Cons!3032 (h!8429 C!2468) (t!28320 List!3042)) )
))
(declare-datatypes ((IArray!1841 0))(
  ( (IArray!1842 (innerList!978 List!3042)) )
))
(declare-datatypes ((Conc!920 0))(
  ( (Node!920 (left!2349 Conc!920) (right!2679 Conc!920) (csize!2070 Int) (cheight!1131 Int)) (Leaf!1534 (xs!3515 IArray!1841) (csize!2071 Int)) (Empty!920) )
))
(declare-datatypes ((BalanceConc!1848 0))(
  ( (BalanceConc!1849 (c!35457 Conc!920)) )
))
(declare-datatypes ((TokenValueInjection!914 0))(
  ( (TokenValueInjection!915 (toValue!1220 Int) (toChars!1079 Int)) )
))
(declare-datatypes ((Regex!773 0))(
  ( (ElementMatch!773 (c!35458 C!2468)) (Concat!1345 (regOne!2058 Regex!773) (regTwo!2058 Regex!773)) (EmptyExpr!773) (Star!773 (reg!1102 Regex!773)) (EmptyLang!773) (Union!773 (regOne!2059 Regex!773) (regTwo!2059 Regex!773)) )
))
(declare-datatypes ((String!3935 0))(
  ( (String!3936 (value!19961 String)) )
))
(declare-datatypes ((Rule!898 0))(
  ( (Rule!899 (regex!549 Regex!773) (tag!727 String!3935) (isSeparator!549 Bool) (transformation!549 TokenValueInjection!914)) )
))
(declare-datatypes ((List!3043 0))(
  ( (Nil!3033) (Cons!3033 (h!8430 Rule!898) (t!28321 List!3043)) )
))
(declare-fun rules!1920 () List!3043)

(get-info :version)

(assert (= (and b!181451 ((_ is Cons!3033) rules!1920)) b!181466))

(declare-fun order!1769 () Int)

(declare-fun order!1771 () Int)

(declare-fun dynLambda!1217 (Int Int) Int)

(declare-fun dynLambda!1218 (Int Int) Int)

(assert (=> b!181468 (< (dynLambda!1217 order!1769 (toValue!1220 (transformation!549 (h!8430 rules!1920)))) (dynLambda!1218 order!1771 lambda!5370))))

(declare-fun order!1773 () Int)

(declare-fun dynLambda!1219 (Int Int) Int)

(assert (=> b!181468 (< (dynLambda!1219 order!1773 (toChars!1079 (transformation!549 (h!8430 rules!1920)))) (dynLambda!1218 order!1771 lambda!5370))))

(assert (=> b!181451 true))

(declare-fun b!181423 () Bool)

(declare-fun res!82241 () Bool)

(declare-fun e!110552 () Bool)

(assert (=> b!181423 (=> (not res!82241) (not e!110552))))

(declare-fun isEmpty!1383 (List!3043) Bool)

(assert (=> b!181423 (= res!82241 (not (isEmpty!1383 rules!1920)))))

(declare-fun b!181424 () Bool)

(declare-fun e!110542 () Bool)

(declare-fun e!110539 () Bool)

(assert (=> b!181424 (= e!110542 e!110539)))

(declare-fun res!82235 () Bool)

(assert (=> b!181424 (=> res!82235 e!110539)))

(declare-fun lt!59791 () List!3042)

(declare-fun lt!59790 () List!3042)

(declare-fun isPrefix!245 (List!3042 List!3042) Bool)

(assert (=> b!181424 (= res!82235 (not (isPrefix!245 lt!59791 lt!59790)))))

(declare-datatypes ((Token!842 0))(
  ( (Token!843 (value!19962 TokenValue!571) (rule!1064 Rule!898) (size!2479 Int) (originalCharacters!592 List!3042)) )
))
(declare-datatypes ((tuple2!3018 0))(
  ( (tuple2!3019 (_1!1725 Token!842) (_2!1725 List!3042)) )
))
(declare-datatypes ((Option!376 0))(
  ( (None!375) (Some!375 (v!13856 tuple2!3018)) )
))
(declare-fun lt!59800 () Option!376)

(declare-datatypes ((LexerInterface!435 0))(
  ( (LexerInterfaceExt!432 (__x!2630 Int)) (Lexer!433) )
))
(declare-fun thiss!17480 () LexerInterface!435)

(declare-fun maxPrefix!165 (LexerInterface!435 List!3043 List!3042) Option!376)

(assert (=> b!181424 (= lt!59800 (maxPrefix!165 thiss!17480 rules!1920 lt!59790))))

(declare-fun lt!59799 () List!3042)

(assert (=> b!181424 (isPrefix!245 lt!59791 lt!59799)))

(declare-datatypes ((Unit!2786 0))(
  ( (Unit!2787) )
))
(declare-fun lt!59780 () Unit!2786)

(declare-fun lt!59792 () List!3042)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!140 (List!3042 List!3042) Unit!2786)

(assert (=> b!181424 (= lt!59780 (lemmaConcatTwoListThenFirstIsPrefix!140 lt!59791 lt!59792))))

(declare-fun e!110534 () Bool)

(assert (=> b!181424 e!110534))

(declare-fun res!82252 () Bool)

(assert (=> b!181424 (=> res!82252 e!110534)))

(declare-datatypes ((List!3044 0))(
  ( (Nil!3034) (Cons!3034 (h!8431 Token!842) (t!28322 List!3044)) )
))
(declare-fun tokens!465 () List!3044)

(declare-fun isEmpty!1384 (List!3044) Bool)

(assert (=> b!181424 (= res!82252 (isEmpty!1384 tokens!465))))

(declare-fun separatorToken!170 () Token!842)

(declare-fun lt!59794 () Unit!2786)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!10 (LexerInterface!435 List!3043 List!3044 Token!842) Unit!2786)

(assert (=> b!181424 (= lt!59794 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!10 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!181425 () Bool)

(declare-fun e!110533 () Bool)

(declare-fun e!110548 () Bool)

(assert (=> b!181425 (= e!110533 (not e!110548))))

(declare-fun res!82256 () Bool)

(assert (=> b!181425 (=> res!82256 e!110548)))

(declare-fun lt!59786 () List!3042)

(declare-fun list!1115 (BalanceConc!1848) List!3042)

(declare-datatypes ((IArray!1843 0))(
  ( (IArray!1844 (innerList!979 List!3044)) )
))
(declare-datatypes ((Conc!921 0))(
  ( (Node!921 (left!2350 Conc!921) (right!2680 Conc!921) (csize!2072 Int) (cheight!1132 Int)) (Leaf!1535 (xs!3516 IArray!1843) (csize!2073 Int)) (Empty!921) )
))
(declare-datatypes ((BalanceConc!1850 0))(
  ( (BalanceConc!1851 (c!35459 Conc!921)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!118 (LexerInterface!435 List!3043 BalanceConc!1850 Token!842 Int) BalanceConc!1848)

(declare-fun seqFromList!475 (List!3044) BalanceConc!1850)

(assert (=> b!181425 (= res!82256 (not (= lt!59786 (list!1115 (printWithSeparatorTokenWhenNeededRec!118 thiss!17480 rules!1920 (seqFromList!475 (t!28322 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!59783 () List!3042)

(assert (=> b!181425 (= lt!59783 lt!59799)))

(declare-fun ++!714 (List!3042 List!3042) List!3042)

(assert (=> b!181425 (= lt!59799 (++!714 lt!59791 lt!59792))))

(declare-fun lt!59797 () List!3042)

(assert (=> b!181425 (= lt!59783 (++!714 (++!714 lt!59791 lt!59797) lt!59786))))

(declare-fun lt!59785 () Unit!2786)

(declare-fun lemmaConcatAssociativity!238 (List!3042 List!3042 List!3042) Unit!2786)

(assert (=> b!181425 (= lt!59785 (lemmaConcatAssociativity!238 lt!59791 lt!59797 lt!59786))))

(declare-fun charsOf!204 (Token!842) BalanceConc!1848)

(assert (=> b!181425 (= lt!59791 (list!1115 (charsOf!204 (h!8431 tokens!465))))))

(assert (=> b!181425 (= lt!59792 (++!714 lt!59797 lt!59786))))

(declare-fun printWithSeparatorTokenWhenNeededList!128 (LexerInterface!435 List!3043 List!3044 Token!842) List!3042)

(assert (=> b!181425 (= lt!59786 (printWithSeparatorTokenWhenNeededList!128 thiss!17480 rules!1920 (t!28322 tokens!465) separatorToken!170))))

(assert (=> b!181425 (= lt!59797 (list!1115 (charsOf!204 separatorToken!170)))))

(declare-fun b!181426 () Bool)

(declare-fun res!82240 () Bool)

(assert (=> b!181426 (=> (not res!82240) (not e!110552))))

(declare-fun rulesInvariant!401 (LexerInterface!435 List!3043) Bool)

(assert (=> b!181426 (= res!82240 (rulesInvariant!401 thiss!17480 rules!1920))))

(declare-fun b!181427 () Bool)

(declare-fun e!110537 () Bool)

(declare-fun lt!59782 () Option!376)

(declare-fun get!854 (Option!376) tuple2!3018)

(declare-fun head!628 (List!3044) Token!842)

(assert (=> b!181427 (= e!110537 (= (_1!1725 (get!854 lt!59782)) (head!628 tokens!465)))))

(declare-fun b!181428 () Bool)

(declare-fun e!110529 () Bool)

(assert (=> b!181428 (= e!110529 e!110542)))

(declare-fun res!82258 () Bool)

(assert (=> b!181428 (=> res!82258 e!110542)))

(declare-fun lt!59779 () Bool)

(assert (=> b!181428 (= res!82258 (not lt!59779))))

(declare-fun e!110535 () Bool)

(assert (=> b!181428 e!110535))

(declare-fun res!82257 () Bool)

(assert (=> b!181428 (=> (not res!82257) (not e!110535))))

(declare-fun lt!59795 () tuple2!3018)

(assert (=> b!181428 (= res!82257 (= (_1!1725 lt!59795) (h!8431 tokens!465)))))

(declare-fun lt!59787 () Option!376)

(assert (=> b!181428 (= lt!59795 (get!854 lt!59787))))

(declare-fun isDefined!227 (Option!376) Bool)

(assert (=> b!181428 (isDefined!227 lt!59787)))

(assert (=> b!181428 (= lt!59787 (maxPrefix!165 thiss!17480 rules!1920 lt!59791))))

(declare-fun b!181429 () Bool)

(declare-fun e!110545 () Bool)

(declare-fun e!110553 () Bool)

(declare-fun tp!86457 () Bool)

(declare-fun inv!3863 (String!3935) Bool)

(declare-fun inv!3866 (TokenValueInjection!914) Bool)

(assert (=> b!181429 (= e!110545 (and tp!86457 (inv!3863 (tag!727 (rule!1064 (h!8431 tokens!465)))) (inv!3866 (transformation!549 (rule!1064 (h!8431 tokens!465)))) e!110553))))

(declare-fun b!181430 () Bool)

(declare-fun e!110544 () Bool)

(assert (=> b!181430 (= e!110548 e!110544)))

(declare-fun res!82251 () Bool)

(assert (=> b!181430 (=> res!82251 e!110544)))

(declare-fun e!110550 () Bool)

(assert (=> b!181430 (= res!82251 e!110550)))

(declare-fun res!82242 () Bool)

(assert (=> b!181430 (=> (not res!82242) (not e!110550))))

(assert (=> b!181430 (= res!82242 (not lt!59779))))

(assert (=> b!181430 (= lt!59779 (= lt!59790 lt!59799))))

(declare-fun b!181431 () Bool)

(declare-fun e!110530 () Bool)

(declare-fun tp!86465 () Bool)

(declare-fun e!110532 () Bool)

(assert (=> b!181431 (= e!110530 (and tp!86465 (inv!3863 (tag!727 (rule!1064 separatorToken!170))) (inv!3866 (transformation!549 (rule!1064 separatorToken!170))) e!110532))))

(declare-fun b!181432 () Bool)

(assert (=> b!181432 (= e!110539 true)))

(declare-fun lt!59784 () List!3042)

(assert (=> b!181432 (= lt!59784 (++!714 lt!59791 (_2!1725 (get!854 lt!59800))))))

(declare-fun b!181434 () Bool)

(declare-fun e!110554 () Bool)

(declare-fun e!110549 () Bool)

(declare-fun tp!86461 () Bool)

(assert (=> b!181434 (= e!110554 (and e!110549 tp!86461))))

(declare-fun res!82238 () Bool)

(declare-fun e!110540 () Bool)

(assert (=> b!181435 (=> (not res!82238) (not e!110540))))

(declare-fun forall!619 (List!3044 Int) Bool)

(assert (=> b!181435 (= res!82238 (forall!619 tokens!465 lambda!5369))))

(declare-fun b!181436 () Bool)

(assert (=> b!181436 (= e!110534 e!110537)))

(declare-fun res!82249 () Bool)

(assert (=> b!181436 (=> (not res!82249) (not e!110537))))

(assert (=> b!181436 (= res!82249 (isDefined!227 lt!59782))))

(assert (=> b!181436 (= lt!59782 (maxPrefix!165 thiss!17480 rules!1920 lt!59790))))

(declare-fun b!181437 () Bool)

(declare-fun tp!86453 () Bool)

(declare-fun e!110551 () Bool)

(assert (=> b!181437 (= e!110549 (and tp!86453 (inv!3863 (tag!727 (h!8430 rules!1920))) (inv!3866 (transformation!549 (h!8430 rules!1920))) e!110551))))

(declare-fun b!181438 () Bool)

(declare-fun res!82250 () Bool)

(assert (=> b!181438 (=> res!82250 e!110539)))

(assert (=> b!181438 (= res!82250 (not (= lt!59799 lt!59790)))))

(declare-fun b!181439 () Bool)

(declare-fun res!82236 () Bool)

(assert (=> b!181439 (=> (not res!82236) (not e!110540))))

(declare-fun rulesProduceIndividualToken!184 (LexerInterface!435 List!3043 Token!842) Bool)

(assert (=> b!181439 (= res!82236 (rulesProduceIndividualToken!184 thiss!17480 rules!1920 separatorToken!170))))

(assert (=> b!181440 (= e!110551 (and tp!86459 tp!86463))))

(declare-fun b!181441 () Bool)

(declare-fun res!82239 () Bool)

(declare-fun e!110527 () Bool)

(assert (=> b!181441 (=> res!82239 e!110527)))

(assert (=> b!181441 (= res!82239 (not (rulesProduceIndividualToken!184 thiss!17480 rules!1920 (h!8431 tokens!465))))))

(declare-fun b!181442 () Bool)

(assert (=> b!181442 (= e!110544 e!110527)))

(declare-fun res!82244 () Bool)

(assert (=> b!181442 (=> res!82244 e!110527)))

(declare-fun lt!59778 () List!3042)

(declare-fun lt!59796 () List!3042)

(assert (=> b!181442 (= res!82244 (or (not (= lt!59796 lt!59778)) (not (= lt!59778 lt!59791)) (not (= lt!59796 lt!59791))))))

(declare-fun printList!119 (LexerInterface!435 List!3044) List!3042)

(assert (=> b!181442 (= lt!59778 (printList!119 thiss!17480 (Cons!3034 (h!8431 tokens!465) Nil!3034)))))

(declare-fun lt!59793 () BalanceConc!1848)

(assert (=> b!181442 (= lt!59796 (list!1115 lt!59793))))

(declare-fun lt!59788 () BalanceConc!1850)

(declare-fun printTailRec!129 (LexerInterface!435 BalanceConc!1850 Int BalanceConc!1848) BalanceConc!1848)

(assert (=> b!181442 (= lt!59793 (printTailRec!129 thiss!17480 lt!59788 0 (BalanceConc!1849 Empty!920)))))

(declare-fun print!166 (LexerInterface!435 BalanceConc!1850) BalanceConc!1848)

(assert (=> b!181442 (= lt!59793 (print!166 thiss!17480 lt!59788))))

(declare-fun singletonSeq!101 (Token!842) BalanceConc!1850)

(assert (=> b!181442 (= lt!59788 (singletonSeq!101 (h!8431 tokens!465)))))

(declare-fun b!181443 () Bool)

(declare-fun res!82243 () Bool)

(assert (=> b!181443 (=> (not res!82243) (not e!110540))))

(declare-fun sepAndNonSepRulesDisjointChars!138 (List!3043 List!3043) Bool)

(assert (=> b!181443 (= res!82243 (sepAndNonSepRulesDisjointChars!138 rules!1920 rules!1920))))

(declare-fun tp!86464 () Bool)

(declare-fun e!110541 () Bool)

(declare-fun b!181444 () Bool)

(declare-fun inv!21 (TokenValue!571) Bool)

(assert (=> b!181444 (= e!110541 (and (inv!21 (value!19962 separatorToken!170)) e!110530 tp!86464))))

(declare-fun b!181445 () Bool)

(declare-fun res!82253 () Bool)

(assert (=> b!181445 (=> res!82253 e!110527)))

(declare-fun isEmpty!1385 (BalanceConc!1850) Bool)

(declare-datatypes ((tuple2!3020 0))(
  ( (tuple2!3021 (_1!1726 BalanceConc!1850) (_2!1726 BalanceConc!1848)) )
))
(declare-fun lex!235 (LexerInterface!435 List!3043 BalanceConc!1848) tuple2!3020)

(declare-fun seqFromList!476 (List!3042) BalanceConc!1848)

(assert (=> b!181445 (= res!82253 (isEmpty!1385 (_1!1726 (lex!235 thiss!17480 rules!1920 (seqFromList!476 lt!59791)))))))

(assert (=> b!181446 (= e!110553 (and tp!86454 tp!86460))))

(declare-fun b!181447 () Bool)

(declare-fun matchR!111 (Regex!773 List!3042) Bool)

(assert (=> b!181447 (= e!110535 (matchR!111 (regex!549 (rule!1064 (h!8431 tokens!465))) lt!59791))))

(declare-fun b!181448 () Bool)

(declare-fun e!110531 () Bool)

(declare-fun tp!86458 () Bool)

(declare-fun e!110547 () Bool)

(declare-fun inv!3867 (Token!842) Bool)

(assert (=> b!181448 (= e!110531 (and (inv!3867 (h!8431 tokens!465)) e!110547 tp!86458))))

(declare-fun b!181449 () Bool)

(declare-fun res!82245 () Bool)

(assert (=> b!181449 (=> (not res!82245) (not e!110533))))

(declare-fun lt!59789 () List!3042)

(assert (=> b!181449 (= res!82245 (= (list!1115 (seqFromList!476 lt!59790)) lt!59789))))

(declare-fun b!181450 () Bool)

(declare-fun res!82254 () Bool)

(assert (=> b!181450 (=> (not res!82254) (not e!110535))))

(declare-fun isEmpty!1386 (List!3042) Bool)

(assert (=> b!181450 (= res!82254 (isEmpty!1386 (_2!1725 lt!59795)))))

(assert (=> b!181451 (= e!110527 e!110529)))

(declare-fun res!82246 () Bool)

(assert (=> b!181451 (=> res!82246 e!110529)))

(declare-datatypes ((tuple2!3022 0))(
  ( (tuple2!3023 (_1!1727 Token!842) (_2!1727 BalanceConc!1848)) )
))
(declare-datatypes ((Option!377 0))(
  ( (None!376) (Some!376 (v!13857 tuple2!3022)) )
))
(declare-fun isDefined!228 (Option!377) Bool)

(declare-fun maxPrefixZipperSequence!128 (LexerInterface!435 List!3043 BalanceConc!1848) Option!377)

(assert (=> b!181451 (= res!82246 (not (isDefined!228 (maxPrefixZipperSequence!128 thiss!17480 rules!1920 (seqFromList!476 (originalCharacters!592 (h!8431 tokens!465)))))))))

(declare-fun lt!59781 () Unit!2786)

(declare-fun forallContained!116 (List!3044 Int Token!842) Unit!2786)

(assert (=> b!181451 (= lt!59781 (forallContained!116 tokens!465 lambda!5370 (h!8431 tokens!465)))))

(assert (=> b!181451 (= lt!59791 (originalCharacters!592 (h!8431 tokens!465)))))

(declare-fun b!181452 () Bool)

(declare-fun res!82255 () Bool)

(assert (=> b!181452 (=> (not res!82255) (not e!110540))))

(assert (=> b!181452 (= res!82255 ((_ is Cons!3034) tokens!465))))

(declare-fun b!181453 () Bool)

(assert (=> b!181453 (= e!110552 e!110540)))

(declare-fun res!82237 () Bool)

(assert (=> b!181453 (=> (not res!82237) (not e!110540))))

(declare-fun lt!59798 () BalanceConc!1850)

(declare-fun rulesProduceEachTokenIndividually!227 (LexerInterface!435 List!3043 BalanceConc!1850) Bool)

(assert (=> b!181453 (= res!82237 (rulesProduceEachTokenIndividually!227 thiss!17480 rules!1920 lt!59798))))

(assert (=> b!181453 (= lt!59798 (seqFromList!475 tokens!465))))

(assert (=> b!181454 (= e!110532 (and tp!86456 tp!86462))))

(declare-fun res!82248 () Bool)

(assert (=> start!19658 (=> (not res!82248) (not e!110552))))

(assert (=> start!19658 (= res!82248 ((_ is Lexer!433) thiss!17480))))

(assert (=> start!19658 e!110552))

(assert (=> start!19658 true))

(assert (=> start!19658 e!110554))

(assert (=> start!19658 (and (inv!3867 separatorToken!170) e!110541)))

(assert (=> start!19658 e!110531))

(declare-fun b!181433 () Bool)

(declare-fun res!82234 () Bool)

(assert (=> b!181433 (=> (not res!82234) (not e!110540))))

(assert (=> b!181433 (= res!82234 (isSeparator!549 (rule!1064 separatorToken!170)))))

(declare-fun b!181455 () Bool)

(assert (=> b!181455 (= e!110550 (not (= lt!59790 (++!714 lt!59791 lt!59786))))))

(declare-fun b!181456 () Bool)

(assert (=> b!181456 (= e!110540 e!110533)))

(declare-fun res!82247 () Bool)

(assert (=> b!181456 (=> (not res!82247) (not e!110533))))

(assert (=> b!181456 (= res!82247 (= lt!59790 lt!59789))))

(assert (=> b!181456 (= lt!59789 (list!1115 (printWithSeparatorTokenWhenNeededRec!118 thiss!17480 rules!1920 lt!59798 separatorToken!170 0)))))

(assert (=> b!181456 (= lt!59790 (printWithSeparatorTokenWhenNeededList!128 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!86455 () Bool)

(declare-fun b!181457 () Bool)

(assert (=> b!181457 (= e!110547 (and (inv!21 (value!19962 (h!8431 tokens!465))) e!110545 tp!86455))))

(assert (= (and start!19658 res!82248) b!181423))

(assert (= (and b!181423 res!82241) b!181426))

(assert (= (and b!181426 res!82240) b!181453))

(assert (= (and b!181453 res!82237) b!181439))

(assert (= (and b!181439 res!82236) b!181433))

(assert (= (and b!181433 res!82234) b!181435))

(assert (= (and b!181435 res!82238) b!181443))

(assert (= (and b!181443 res!82243) b!181452))

(assert (= (and b!181452 res!82255) b!181456))

(assert (= (and b!181456 res!82247) b!181449))

(assert (= (and b!181449 res!82245) b!181425))

(assert (= (and b!181425 (not res!82256)) b!181430))

(assert (= (and b!181430 res!82242) b!181455))

(assert (= (and b!181430 (not res!82251)) b!181442))

(assert (= (and b!181442 (not res!82244)) b!181441))

(assert (= (and b!181441 (not res!82239)) b!181445))

(assert (= (and b!181445 (not res!82253)) b!181451))

(assert (= (and b!181451 (not res!82246)) b!181428))

(assert (= (and b!181428 res!82257) b!181450))

(assert (= (and b!181450 res!82254) b!181447))

(assert (= (and b!181428 (not res!82258)) b!181424))

(assert (= (and b!181424 (not res!82252)) b!181436))

(assert (= (and b!181436 res!82249) b!181427))

(assert (= (and b!181424 (not res!82235)) b!181438))

(assert (= (and b!181438 (not res!82250)) b!181432))

(assert (= b!181437 b!181440))

(assert (= b!181434 b!181437))

(assert (= (and start!19658 ((_ is Cons!3033) rules!1920)) b!181434))

(assert (= b!181431 b!181454))

(assert (= b!181444 b!181431))

(assert (= start!19658 b!181444))

(assert (= b!181429 b!181446))

(assert (= b!181457 b!181429))

(assert (= b!181448 b!181457))

(assert (= (and start!19658 ((_ is Cons!3034) tokens!465)) b!181448))

(declare-fun m!184101 () Bool)

(assert (=> b!181451 m!184101))

(assert (=> b!181451 m!184101))

(declare-fun m!184103 () Bool)

(assert (=> b!181451 m!184103))

(assert (=> b!181451 m!184103))

(declare-fun m!184105 () Bool)

(assert (=> b!181451 m!184105))

(declare-fun m!184107 () Bool)

(assert (=> b!181451 m!184107))

(declare-fun m!184109 () Bool)

(assert (=> b!181437 m!184109))

(declare-fun m!184111 () Bool)

(assert (=> b!181437 m!184111))

(declare-fun m!184113 () Bool)

(assert (=> b!181439 m!184113))

(declare-fun m!184115 () Bool)

(assert (=> b!181453 m!184115))

(declare-fun m!184117 () Bool)

(assert (=> b!181453 m!184117))

(declare-fun m!184119 () Bool)

(assert (=> b!181456 m!184119))

(assert (=> b!181456 m!184119))

(declare-fun m!184121 () Bool)

(assert (=> b!181456 m!184121))

(declare-fun m!184123 () Bool)

(assert (=> b!181456 m!184123))

(declare-fun m!184125 () Bool)

(assert (=> b!181429 m!184125))

(declare-fun m!184127 () Bool)

(assert (=> b!181429 m!184127))

(declare-fun m!184129 () Bool)

(assert (=> b!181431 m!184129))

(declare-fun m!184131 () Bool)

(assert (=> b!181431 m!184131))

(declare-fun m!184133 () Bool)

(assert (=> b!181426 m!184133))

(declare-fun m!184135 () Bool)

(assert (=> b!181436 m!184135))

(declare-fun m!184137 () Bool)

(assert (=> b!181436 m!184137))

(declare-fun m!184139 () Bool)

(assert (=> b!181450 m!184139))

(declare-fun m!184141 () Bool)

(assert (=> b!181445 m!184141))

(assert (=> b!181445 m!184141))

(declare-fun m!184143 () Bool)

(assert (=> b!181445 m!184143))

(declare-fun m!184145 () Bool)

(assert (=> b!181445 m!184145))

(declare-fun m!184147 () Bool)

(assert (=> start!19658 m!184147))

(declare-fun m!184149 () Bool)

(assert (=> b!181448 m!184149))

(declare-fun m!184151 () Bool)

(assert (=> b!181447 m!184151))

(declare-fun m!184153 () Bool)

(assert (=> b!181442 m!184153))

(declare-fun m!184155 () Bool)

(assert (=> b!181442 m!184155))

(declare-fun m!184157 () Bool)

(assert (=> b!181442 m!184157))

(declare-fun m!184159 () Bool)

(assert (=> b!181442 m!184159))

(declare-fun m!184161 () Bool)

(assert (=> b!181442 m!184161))

(declare-fun m!184163 () Bool)

(assert (=> b!181443 m!184163))

(declare-fun m!184165 () Bool)

(assert (=> b!181435 m!184165))

(declare-fun m!184167 () Bool)

(assert (=> b!181423 m!184167))

(declare-fun m!184169 () Bool)

(assert (=> b!181441 m!184169))

(declare-fun m!184171 () Bool)

(assert (=> b!181432 m!184171))

(declare-fun m!184173 () Bool)

(assert (=> b!181432 m!184173))

(declare-fun m!184175 () Bool)

(assert (=> b!181428 m!184175))

(declare-fun m!184177 () Bool)

(assert (=> b!181428 m!184177))

(declare-fun m!184179 () Bool)

(assert (=> b!181428 m!184179))

(declare-fun m!184181 () Bool)

(assert (=> b!181455 m!184181))

(declare-fun m!184183 () Bool)

(assert (=> b!181424 m!184183))

(assert (=> b!181424 m!184137))

(declare-fun m!184185 () Bool)

(assert (=> b!181424 m!184185))

(declare-fun m!184187 () Bool)

(assert (=> b!181424 m!184187))

(declare-fun m!184189 () Bool)

(assert (=> b!181424 m!184189))

(declare-fun m!184191 () Bool)

(assert (=> b!181424 m!184191))

(declare-fun m!184193 () Bool)

(assert (=> b!181425 m!184193))

(declare-fun m!184195 () Bool)

(assert (=> b!181425 m!184195))

(declare-fun m!184197 () Bool)

(assert (=> b!181425 m!184197))

(declare-fun m!184199 () Bool)

(assert (=> b!181425 m!184199))

(declare-fun m!184201 () Bool)

(assert (=> b!181425 m!184201))

(declare-fun m!184203 () Bool)

(assert (=> b!181425 m!184203))

(assert (=> b!181425 m!184197))

(assert (=> b!181425 m!184201))

(declare-fun m!184205 () Bool)

(assert (=> b!181425 m!184205))

(assert (=> b!181425 m!184193))

(declare-fun m!184207 () Bool)

(assert (=> b!181425 m!184207))

(declare-fun m!184209 () Bool)

(assert (=> b!181425 m!184209))

(declare-fun m!184211 () Bool)

(assert (=> b!181425 m!184211))

(declare-fun m!184213 () Bool)

(assert (=> b!181425 m!184213))

(assert (=> b!181425 m!184209))

(declare-fun m!184215 () Bool)

(assert (=> b!181425 m!184215))

(assert (=> b!181425 m!184207))

(declare-fun m!184217 () Bool)

(assert (=> b!181425 m!184217))

(declare-fun m!184219 () Bool)

(assert (=> b!181444 m!184219))

(declare-fun m!184221 () Bool)

(assert (=> b!181449 m!184221))

(assert (=> b!181449 m!184221))

(declare-fun m!184223 () Bool)

(assert (=> b!181449 m!184223))

(declare-fun m!184225 () Bool)

(assert (=> b!181427 m!184225))

(declare-fun m!184227 () Bool)

(assert (=> b!181427 m!184227))

(declare-fun m!184229 () Bool)

(assert (=> b!181457 m!184229))

(check-sat b_and!12407 (not b!181450) (not b!181451) (not b!181437) (not b!181445) (not b!181429) b_and!12401 b_and!12399 (not b!181423) (not b_next!7037) (not b!181424) (not b_next!7035) (not b!181453) b_and!12405 (not b!181442) (not b_next!7043) (not b!181435) (not b!181428) (not b!181447) (not b!181444) (not b!181455) b_and!12403 (not b!181448) (not b!181434) (not b!181466) (not b!181449) (not b!181439) (not b_next!7039) (not b!181432) (not b!181426) (not start!19658) (not b!181425) b_and!12397 (not b!181441) (not b!181436) (not b!181457) (not b_next!7033) (not b!181443) (not b!181456) (not b!181431) (not b_next!7041) (not b!181427))
(check-sat b_and!12407 b_and!12403 (not b_next!7039) b_and!12401 b_and!12399 (not b_next!7037) (not b_next!7035) b_and!12405 (not b_next!7043) b_and!12397 (not b_next!7033) (not b_next!7041))
