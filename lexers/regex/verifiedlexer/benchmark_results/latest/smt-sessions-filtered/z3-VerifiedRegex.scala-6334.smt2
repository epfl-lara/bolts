; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!323122 () Bool)

(assert start!323122)

(declare-fun b!3474887 () Bool)

(declare-fun b_free!90089 () Bool)

(declare-fun b_next!90793 () Bool)

(assert (=> b!3474887 (= b_free!90089 (not b_next!90793))))

(declare-fun tp!1080271 () Bool)

(declare-fun b_and!245059 () Bool)

(assert (=> b!3474887 (= tp!1080271 b_and!245059)))

(declare-fun b_free!90091 () Bool)

(declare-fun b_next!90795 () Bool)

(assert (=> b!3474887 (= b_free!90091 (not b_next!90795))))

(declare-fun tp!1080280 () Bool)

(declare-fun b_and!245061 () Bool)

(assert (=> b!3474887 (= tp!1080280 b_and!245061)))

(declare-fun b!3474896 () Bool)

(declare-fun b_free!90093 () Bool)

(declare-fun b_next!90797 () Bool)

(assert (=> b!3474896 (= b_free!90093 (not b_next!90797))))

(declare-fun tp!1080278 () Bool)

(declare-fun b_and!245063 () Bool)

(assert (=> b!3474896 (= tp!1080278 b_and!245063)))

(declare-fun b_free!90095 () Bool)

(declare-fun b_next!90799 () Bool)

(assert (=> b!3474896 (= b_free!90095 (not b_next!90799))))

(declare-fun tp!1080270 () Bool)

(declare-fun b_and!245065 () Bool)

(assert (=> b!3474896 (= tp!1080270 b_and!245065)))

(declare-fun b!3474906 () Bool)

(declare-fun b_free!90097 () Bool)

(declare-fun b_next!90801 () Bool)

(assert (=> b!3474906 (= b_free!90097 (not b_next!90801))))

(declare-fun tp!1080275 () Bool)

(declare-fun b_and!245067 () Bool)

(assert (=> b!3474906 (= tp!1080275 b_and!245067)))

(declare-fun b_free!90099 () Bool)

(declare-fun b_next!90803 () Bool)

(assert (=> b!3474906 (= b_free!90099 (not b_next!90803))))

(declare-fun tp!1080274 () Bool)

(declare-fun b_and!245069 () Bool)

(assert (=> b!3474906 (= tp!1080274 b_and!245069)))

(declare-fun bs!561643 () Bool)

(declare-fun b!3474908 () Bool)

(declare-fun b!3474883 () Bool)

(assert (= bs!561643 (and b!3474908 b!3474883)))

(declare-fun lambda!122075 () Int)

(declare-fun lambda!122074 () Int)

(assert (=> bs!561643 (not (= lambda!122075 lambda!122074))))

(declare-fun b!3474928 () Bool)

(declare-fun e!2152338 () Bool)

(assert (=> b!3474928 (= e!2152338 true)))

(declare-fun b!3474927 () Bool)

(declare-fun e!2152337 () Bool)

(assert (=> b!3474927 (= e!2152337 e!2152338)))

(declare-fun b!3474926 () Bool)

(declare-fun e!2152336 () Bool)

(assert (=> b!3474926 (= e!2152336 e!2152337)))

(assert (=> b!3474908 e!2152336))

(assert (= b!3474927 b!3474928))

(assert (= b!3474926 b!3474927))

(declare-datatypes ((C!20600 0))(
  ( (C!20601 (val!12348 Int)) )
))
(declare-datatypes ((Regex!10207 0))(
  ( (ElementMatch!10207 (c!595966 C!20600)) (Concat!15885 (regOne!20926 Regex!10207) (regTwo!20926 Regex!10207)) (EmptyExpr!10207) (Star!10207 (reg!10536 Regex!10207)) (EmptyLang!10207) (Union!10207 (regOne!20927 Regex!10207) (regTwo!20927 Regex!10207)) )
))
(declare-datatypes ((List!37330 0))(
  ( (Nil!37206) (Cons!37206 (h!42626 (_ BitVec 16)) (t!274951 List!37330)) )
))
(declare-datatypes ((TokenValue!5678 0))(
  ( (FloatLiteralValue!11356 (text!40191 List!37330)) (TokenValueExt!5677 (__x!23573 Int)) (Broken!28390 (value!175702 List!37330)) (Object!5801) (End!5678) (Def!5678) (Underscore!5678) (Match!5678) (Else!5678) (Error!5678) (Case!5678) (If!5678) (Extends!5678) (Abstract!5678) (Class!5678) (Val!5678) (DelimiterValue!11356 (del!5738 List!37330)) (KeywordValue!5684 (value!175703 List!37330)) (CommentValue!11356 (value!175704 List!37330)) (WhitespaceValue!11356 (value!175705 List!37330)) (IndentationValue!5678 (value!175706 List!37330)) (String!41723) (Int32!5678) (Broken!28391 (value!175707 List!37330)) (Boolean!5679) (Unit!52637) (OperatorValue!5681 (op!5738 List!37330)) (IdentifierValue!11356 (value!175708 List!37330)) (IdentifierValue!11357 (value!175709 List!37330)) (WhitespaceValue!11357 (value!175710 List!37330)) (True!11356) (False!11356) (Broken!28392 (value!175711 List!37330)) (Broken!28393 (value!175712 List!37330)) (True!11357) (RightBrace!5678) (RightBracket!5678) (Colon!5678) (Null!5678) (Comma!5678) (LeftBracket!5678) (False!11357) (LeftBrace!5678) (ImaginaryLiteralValue!5678 (text!40192 List!37330)) (StringLiteralValue!17034 (value!175713 List!37330)) (EOFValue!5678 (value!175714 List!37330)) (IdentValue!5678 (value!175715 List!37330)) (DelimiterValue!11357 (value!175716 List!37330)) (DedentValue!5678 (value!175717 List!37330)) (NewLineValue!5678 (value!175718 List!37330)) (IntegerValue!17034 (value!175719 (_ BitVec 32)) (text!40193 List!37330)) (IntegerValue!17035 (value!175720 Int) (text!40194 List!37330)) (Times!5678) (Or!5678) (Equal!5678) (Minus!5678) (Broken!28394 (value!175721 List!37330)) (And!5678) (Div!5678) (LessEqual!5678) (Mod!5678) (Concat!15886) (Not!5678) (Plus!5678) (SpaceValue!5678 (value!175722 List!37330)) (IntegerValue!17036 (value!175723 Int) (text!40195 List!37330)) (StringLiteralValue!17035 (text!40196 List!37330)) (FloatLiteralValue!11357 (text!40197 List!37330)) (BytesLiteralValue!5678 (value!175724 List!37330)) (CommentValue!11357 (value!175725 List!37330)) (StringLiteralValue!17036 (value!175726 List!37330)) (ErrorTokenValue!5678 (msg!5739 List!37330)) )
))
(declare-datatypes ((List!37331 0))(
  ( (Nil!37207) (Cons!37207 (h!42627 C!20600) (t!274952 List!37331)) )
))
(declare-datatypes ((IArray!22547 0))(
  ( (IArray!22548 (innerList!11331 List!37331)) )
))
(declare-datatypes ((Conc!11271 0))(
  ( (Node!11271 (left!29041 Conc!11271) (right!29371 Conc!11271) (csize!22772 Int) (cheight!11482 Int)) (Leaf!17606 (xs!14449 IArray!22547) (csize!22773 Int)) (Empty!11271) )
))
(declare-datatypes ((BalanceConc!22156 0))(
  ( (BalanceConc!22157 (c!595967 Conc!11271)) )
))
(declare-datatypes ((String!41724 0))(
  ( (String!41725 (value!175727 String)) )
))
(declare-datatypes ((TokenValueInjection!10784 0))(
  ( (TokenValueInjection!10785 (toValue!7684 Int) (toChars!7543 Int)) )
))
(declare-datatypes ((Rule!10696 0))(
  ( (Rule!10697 (regex!5448 Regex!10207) (tag!6062 String!41724) (isSeparator!5448 Bool) (transformation!5448 TokenValueInjection!10784)) )
))
(declare-datatypes ((List!37332 0))(
  ( (Nil!37208) (Cons!37208 (h!42628 Rule!10696) (t!274953 List!37332)) )
))
(declare-fun rules!2135 () List!37332)

(get-info :version)

(assert (= (and b!3474908 ((_ is Cons!37208) rules!2135)) b!3474926))

(declare-fun order!19873 () Int)

(declare-fun order!19875 () Int)

(declare-fun dynLambda!15714 (Int Int) Int)

(declare-fun dynLambda!15715 (Int Int) Int)

(assert (=> b!3474928 (< (dynLambda!15714 order!19873 (toValue!7684 (transformation!5448 (h!42628 rules!2135)))) (dynLambda!15715 order!19875 lambda!122075))))

(declare-fun order!19877 () Int)

(declare-fun dynLambda!15716 (Int Int) Int)

(assert (=> b!3474928 (< (dynLambda!15716 order!19877 (toChars!7543 (transformation!5448 (h!42628 rules!2135)))) (dynLambda!15715 order!19875 lambda!122075))))

(assert (=> b!3474908 true))

(declare-fun b!3474874 () Bool)

(declare-fun e!2152320 () Bool)

(declare-fun e!2152323 () Bool)

(assert (=> b!3474874 (= e!2152320 e!2152323)))

(declare-fun res!1401587 () Bool)

(assert (=> b!3474874 (=> (not res!1401587) (not e!2152323))))

(declare-fun lt!1182564 () Rule!10696)

(declare-fun lt!1182540 () List!37331)

(declare-fun matchR!4791 (Regex!10207 List!37331) Bool)

(assert (=> b!3474874 (= res!1401587 (matchR!4791 (regex!5448 lt!1182564) lt!1182540))))

(declare-datatypes ((Option!7549 0))(
  ( (None!7548) (Some!7548 (v!36904 Rule!10696)) )
))
(declare-fun lt!1182533 () Option!7549)

(declare-fun get!11918 (Option!7549) Rule!10696)

(assert (=> b!3474874 (= lt!1182564 (get!11918 lt!1182533))))

(declare-fun b!3474875 () Bool)

(declare-fun res!1401573 () Bool)

(declare-fun e!2152295 () Bool)

(assert (=> b!3474875 (=> res!1401573 e!2152295)))

(declare-datatypes ((Token!10262 0))(
  ( (Token!10263 (value!175728 TokenValue!5678) (rule!8044 Rule!10696) (size!28241 Int) (originalCharacters!6162 List!37331)) )
))
(declare-datatypes ((tuple2!36952 0))(
  ( (tuple2!36953 (_1!21610 Token!10262) (_2!21610 List!37331)) )
))
(declare-fun lt!1182563 () tuple2!36952)

(declare-fun isEmpty!21576 (List!37331) Bool)

(assert (=> b!3474875 (= res!1401573 (not (isEmpty!21576 (_2!21610 lt!1182563))))))

(declare-fun separatorToken!241 () Token!10262)

(declare-fun e!2152304 () Bool)

(declare-fun tp!1080279 () Bool)

(declare-fun b!3474876 () Bool)

(declare-fun e!2152302 () Bool)

(declare-fun inv!50393 (String!41724) Bool)

(declare-fun inv!50396 (TokenValueInjection!10784) Bool)

(assert (=> b!3474876 (= e!2152304 (and tp!1080279 (inv!50393 (tag!6062 (rule!8044 separatorToken!241))) (inv!50396 (transformation!5448 (rule!8044 separatorToken!241))) e!2152302))))

(declare-fun b!3474877 () Bool)

(declare-fun e!2152311 () Bool)

(declare-fun e!2152301 () Bool)

(assert (=> b!3474877 (= e!2152311 e!2152301)))

(declare-fun res!1401569 () Bool)

(assert (=> b!3474877 (=> res!1401569 e!2152301)))

(declare-fun lt!1182554 () List!37331)

(declare-fun lt!1182530 () List!37331)

(assert (=> b!3474877 (= res!1401569 (not (= lt!1182554 lt!1182530)))))

(declare-fun lt!1182548 () List!37331)

(assert (=> b!3474877 (= lt!1182548 lt!1182530)))

(declare-fun lt!1182557 () List!37331)

(declare-fun lt!1182536 () List!37331)

(declare-fun ++!9185 (List!37331 List!37331) List!37331)

(assert (=> b!3474877 (= lt!1182530 (++!9185 lt!1182557 lt!1182536))))

(declare-fun lt!1182566 () List!37331)

(declare-datatypes ((Unit!52638 0))(
  ( (Unit!52639) )
))
(declare-fun lt!1182531 () Unit!52638)

(declare-fun lemmaConcatAssociativity!1972 (List!37331 List!37331 List!37331) Unit!52638)

(assert (=> b!3474877 (= lt!1182531 (lemmaConcatAssociativity!1972 lt!1182557 lt!1182540 lt!1182566))))

(declare-fun tp!1080281 () Bool)

(declare-fun e!2152306 () Bool)

(declare-fun e!2152310 () Bool)

(declare-fun b!3474878 () Bool)

(assert (=> b!3474878 (= e!2152306 (and tp!1080281 (inv!50393 (tag!6062 (h!42628 rules!2135))) (inv!50396 (transformation!5448 (h!42628 rules!2135))) e!2152310))))

(declare-fun b!3474879 () Bool)

(declare-fun res!1401563 () Bool)

(declare-fun e!2152315 () Bool)

(assert (=> b!3474879 (=> (not res!1401563) (not e!2152315))))

(declare-datatypes ((List!37333 0))(
  ( (Nil!37209) (Cons!37209 (h!42629 Token!10262) (t!274954 List!37333)) )
))
(declare-fun tokens!494 () List!37333)

(declare-datatypes ((LexerInterface!5037 0))(
  ( (LexerInterfaceExt!5034 (__x!23574 Int)) (Lexer!5035) )
))
(declare-fun thiss!18206 () LexerInterface!5037)

(declare-datatypes ((IArray!22549 0))(
  ( (IArray!22550 (innerList!11332 List!37333)) )
))
(declare-datatypes ((Conc!11272 0))(
  ( (Node!11272 (left!29042 Conc!11272) (right!29372 Conc!11272) (csize!22774 Int) (cheight!11483 Int)) (Leaf!17607 (xs!14450 IArray!22549) (csize!22775 Int)) (Empty!11272) )
))
(declare-datatypes ((BalanceConc!22158 0))(
  ( (BalanceConc!22159 (c!595968 Conc!11272)) )
))
(declare-fun rulesProduceEachTokenIndividually!1488 (LexerInterface!5037 List!37332 BalanceConc!22158) Bool)

(declare-fun seqFromList!3949 (List!37333) BalanceConc!22158)

(assert (=> b!3474879 (= res!1401563 (rulesProduceEachTokenIndividually!1488 thiss!18206 rules!2135 (seqFromList!3949 tokens!494)))))

(declare-fun b!3474880 () Bool)

(declare-fun e!2152316 () Bool)

(assert (=> b!3474880 (= e!2152316 false)))

(declare-fun b!3474881 () Bool)

(declare-fun res!1401562 () Bool)

(declare-fun e!2152322 () Bool)

(assert (=> b!3474881 (=> res!1401562 e!2152322)))

(declare-fun rulesProduceIndividualToken!2529 (LexerInterface!5037 List!37332 Token!10262) Bool)

(assert (=> b!3474881 (= res!1401562 (not (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 tokens!494))))))

(declare-fun b!3474882 () Bool)

(declare-fun e!2152325 () Bool)

(assert (=> b!3474882 (= e!2152325 e!2152295)))

(declare-fun res!1401566 () Bool)

(assert (=> b!3474882 (=> res!1401566 e!2152295)))

(assert (=> b!3474882 (= res!1401566 (not (= (_1!21610 lt!1182563) (h!42629 tokens!494))))))

(declare-datatypes ((Option!7550 0))(
  ( (None!7549) (Some!7549 (v!36905 tuple2!36952)) )
))
(declare-fun lt!1182534 () Option!7550)

(declare-fun get!11919 (Option!7550) tuple2!36952)

(assert (=> b!3474882 (= lt!1182563 (get!11919 lt!1182534))))

(declare-fun res!1401575 () Bool)

(assert (=> b!3474883 (=> (not res!1401575) (not e!2152315))))

(declare-fun forall!7949 (List!37333 Int) Bool)

(assert (=> b!3474883 (= res!1401575 (forall!7949 tokens!494 lambda!122074))))

(declare-fun b!3474884 () Bool)

(declare-fun res!1401583 () Bool)

(declare-fun e!2152324 () Bool)

(assert (=> b!3474884 (=> res!1401583 e!2152324)))

(declare-fun contains!6919 (List!37332 Rule!10696) Bool)

(assert (=> b!3474884 (= res!1401583 (not (contains!6919 rules!2135 (rule!8044 separatorToken!241))))))

(declare-fun b!3474885 () Bool)

(declare-fun e!2152308 () Bool)

(assert (=> b!3474885 (= e!2152308 e!2152311)))

(declare-fun res!1401582 () Bool)

(assert (=> b!3474885 (=> res!1401582 e!2152311)))

(assert (=> b!3474885 (= res!1401582 (not (= lt!1182554 lt!1182548)))))

(assert (=> b!3474885 (= lt!1182548 (++!9185 (++!9185 lt!1182557 lt!1182540) lt!1182566))))

(declare-fun b!3474886 () Bool)

(declare-fun e!2152326 () Bool)

(assert (=> b!3474886 (= e!2152322 e!2152326)))

(declare-fun res!1401561 () Bool)

(assert (=> b!3474886 (=> res!1401561 e!2152326)))

(declare-fun lt!1182549 () BalanceConc!22156)

(declare-fun isEmpty!21577 (BalanceConc!22158) Bool)

(declare-datatypes ((tuple2!36954 0))(
  ( (tuple2!36955 (_1!21611 BalanceConc!22158) (_2!21611 BalanceConc!22156)) )
))
(declare-fun lex!2363 (LexerInterface!5037 List!37332 BalanceConc!22156) tuple2!36954)

(assert (=> b!3474886 (= res!1401561 (isEmpty!21577 (_1!21611 (lex!2363 thiss!18206 rules!2135 lt!1182549))))))

(declare-fun seqFromList!3950 (List!37331) BalanceConc!22156)

(assert (=> b!3474886 (= lt!1182549 (seqFromList!3950 lt!1182557))))

(assert (=> b!3474887 (= e!2152302 (and tp!1080271 tp!1080280))))

(declare-fun b!3474888 () Bool)

(assert (=> b!3474888 (= e!2152324 e!2152325)))

(declare-fun res!1401591 () Bool)

(assert (=> b!3474888 (=> res!1401591 e!2152325)))

(declare-fun isDefined!5813 (Option!7550) Bool)

(assert (=> b!3474888 (= res!1401591 (not (isDefined!5813 lt!1182534)))))

(declare-fun maxPrefix!2577 (LexerInterface!5037 List!37332 List!37331) Option!7550)

(assert (=> b!3474888 (= lt!1182534 (maxPrefix!2577 thiss!18206 rules!2135 lt!1182557))))

(declare-fun b!3474889 () Bool)

(declare-fun e!2152314 () Unit!52638)

(declare-fun Unit!52640 () Unit!52638)

(assert (=> b!3474889 (= e!2152314 Unit!52640)))

(declare-fun lt!1182538 () C!20600)

(declare-fun lt!1182547 () Unit!52638)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!506 (Regex!10207 List!37331 C!20600) Unit!52638)

(assert (=> b!3474889 (= lt!1182547 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!506 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540 lt!1182538))))

(declare-fun res!1401564 () Bool)

(assert (=> b!3474889 (= res!1401564 (not (matchR!4791 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540)))))

(assert (=> b!3474889 (=> (not res!1401564) (not e!2152316))))

(assert (=> b!3474889 e!2152316))

(declare-fun b!3474890 () Bool)

(declare-fun e!2152317 () Bool)

(declare-fun lt!1182535 () Rule!10696)

(assert (=> b!3474890 (= e!2152317 (= (rule!8044 (h!42629 tokens!494)) lt!1182535))))

(declare-fun b!3474891 () Bool)

(declare-fun e!2152329 () Bool)

(assert (=> b!3474891 (= e!2152295 e!2152329)))

(declare-fun res!1401588 () Bool)

(assert (=> b!3474891 (=> res!1401588 e!2152329)))

(assert (=> b!3474891 (= res!1401588 (not (matchR!4791 (regex!5448 (rule!8044 (h!42629 tokens!494))) lt!1182557)))))

(declare-fun ruleValid!1746 (LexerInterface!5037 Rule!10696) Bool)

(assert (=> b!3474891 (ruleValid!1746 thiss!18206 (rule!8044 (h!42629 tokens!494)))))

(declare-fun lt!1182541 () Unit!52638)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!946 (LexerInterface!5037 Rule!10696 List!37332) Unit!52638)

(assert (=> b!3474891 (= lt!1182541 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!946 thiss!18206 (rule!8044 (h!42629 tokens!494)) rules!2135))))

(declare-fun b!3474892 () Bool)

(declare-fun res!1401584 () Bool)

(declare-fun e!2152303 () Bool)

(assert (=> b!3474892 (=> (not res!1401584) (not e!2152303))))

(declare-fun lt!1182545 () tuple2!36954)

(declare-fun apply!8784 (BalanceConc!22158 Int) Token!10262)

(assert (=> b!3474892 (= res!1401584 (= (apply!8784 (_1!21611 lt!1182545) 0) separatorToken!241))))

(declare-fun b!3474893 () Bool)

(declare-fun e!2152328 () Bool)

(assert (=> b!3474893 (= e!2152315 (not e!2152328))))

(declare-fun res!1401565 () Bool)

(assert (=> b!3474893 (=> res!1401565 e!2152328)))

(declare-fun lt!1182546 () List!37331)

(declare-fun lt!1182553 () List!37331)

(assert (=> b!3474893 (= res!1401565 (not (= lt!1182546 lt!1182553)))))

(declare-fun printList!1585 (LexerInterface!5037 List!37333) List!37331)

(assert (=> b!3474893 (= lt!1182553 (printList!1585 thiss!18206 (Cons!37209 (h!42629 tokens!494) Nil!37209)))))

(declare-fun lt!1182559 () BalanceConc!22156)

(declare-fun list!13561 (BalanceConc!22156) List!37331)

(assert (=> b!3474893 (= lt!1182546 (list!13561 lt!1182559))))

(declare-fun lt!1182552 () BalanceConc!22158)

(declare-fun printTailRec!1532 (LexerInterface!5037 BalanceConc!22158 Int BalanceConc!22156) BalanceConc!22156)

(assert (=> b!3474893 (= lt!1182559 (printTailRec!1532 thiss!18206 lt!1182552 0 (BalanceConc!22157 Empty!11271)))))

(declare-fun print!2102 (LexerInterface!5037 BalanceConc!22158) BalanceConc!22156)

(assert (=> b!3474893 (= lt!1182559 (print!2102 thiss!18206 lt!1182552))))

(declare-fun singletonSeq!2544 (Token!10262) BalanceConc!22158)

(assert (=> b!3474893 (= lt!1182552 (singletonSeq!2544 (h!42629 tokens!494)))))

(declare-fun tp!1080272 () Bool)

(declare-fun e!2152319 () Bool)

(declare-fun e!2152309 () Bool)

(declare-fun b!3474894 () Bool)

(declare-fun inv!21 (TokenValue!5678) Bool)

(assert (=> b!3474894 (= e!2152319 (and (inv!21 (value!175728 (h!42629 tokens!494))) e!2152309 tp!1080272))))

(declare-fun b!3474895 () Bool)

(declare-fun res!1401570 () Bool)

(assert (=> b!3474895 (=> (not res!1401570) (not e!2152315))))

(declare-fun sepAndNonSepRulesDisjointChars!1642 (List!37332 List!37332) Bool)

(assert (=> b!3474895 (= res!1401570 (sepAndNonSepRulesDisjointChars!1642 rules!2135 rules!2135))))

(assert (=> b!3474896 (= e!2152310 (and tp!1080278 tp!1080270))))

(declare-fun b!3474897 () Bool)

(declare-fun Unit!52641 () Unit!52638)

(assert (=> b!3474897 (= e!2152314 Unit!52641)))

(declare-fun b!3474898 () Bool)

(assert (=> b!3474898 (= e!2152328 e!2152322)))

(declare-fun res!1401585 () Bool)

(assert (=> b!3474898 (=> res!1401585 e!2152322)))

(assert (=> b!3474898 (= res!1401585 (or (not (= lt!1182553 lt!1182557)) (not (= lt!1182546 lt!1182557))))))

(declare-fun charsOf!3462 (Token!10262) BalanceConc!22156)

(assert (=> b!3474898 (= lt!1182557 (list!13561 (charsOf!3462 (h!42629 tokens!494))))))

(declare-fun b!3474899 () Bool)

(declare-fun res!1401589 () Bool)

(declare-fun e!2152307 () Bool)

(assert (=> b!3474899 (=> (not res!1401589) (not e!2152307))))

(declare-fun lt!1182555 () tuple2!36954)

(assert (=> b!3474899 (= res!1401589 (= (apply!8784 (_1!21611 lt!1182555) 0) (h!42629 (t!274954 tokens!494))))))

(declare-fun b!3474900 () Bool)

(assert (=> b!3474900 (= e!2152323 (= (rule!8044 separatorToken!241) lt!1182564))))

(declare-fun b!3474901 () Bool)

(declare-fun res!1401581 () Bool)

(assert (=> b!3474901 (=> (not res!1401581) (not e!2152315))))

(assert (=> b!3474901 (= res!1401581 (and (not ((_ is Nil!37209) tokens!494)) (not ((_ is Nil!37209) (t!274954 tokens!494)))))))

(declare-fun b!3474902 () Bool)

(declare-fun e!2152299 () Bool)

(assert (=> b!3474902 (= e!2152299 e!2152317)))

(declare-fun res!1401572 () Bool)

(assert (=> b!3474902 (=> (not res!1401572) (not e!2152317))))

(assert (=> b!3474902 (= res!1401572 (matchR!4791 (regex!5448 lt!1182535) lt!1182557))))

(declare-fun lt!1182544 () Option!7549)

(assert (=> b!3474902 (= lt!1182535 (get!11918 lt!1182544))))

(declare-fun b!3474903 () Bool)

(declare-fun isEmpty!21578 (BalanceConc!22156) Bool)

(assert (=> b!3474903 (= e!2152307 (isEmpty!21578 (_2!21611 lt!1182555)))))

(declare-fun b!3474904 () Bool)

(declare-fun res!1401590 () Bool)

(assert (=> b!3474904 (=> (not res!1401590) (not e!2152315))))

(declare-fun isEmpty!21579 (List!37332) Bool)

(assert (=> b!3474904 (= res!1401590 (not (isEmpty!21579 rules!2135)))))

(declare-fun b!3474905 () Bool)

(declare-fun res!1401586 () Bool)

(assert (=> b!3474905 (=> (not res!1401586) (not e!2152315))))

(declare-fun rulesInvariant!4434 (LexerInterface!5037 List!37332) Bool)

(assert (=> b!3474905 (= res!1401586 (rulesInvariant!4434 thiss!18206 rules!2135))))

(declare-fun res!1401578 () Bool)

(assert (=> start!323122 (=> (not res!1401578) (not e!2152315))))

(assert (=> start!323122 (= res!1401578 ((_ is Lexer!5035) thiss!18206))))

(assert (=> start!323122 e!2152315))

(assert (=> start!323122 true))

(declare-fun e!2152305 () Bool)

(assert (=> start!323122 e!2152305))

(declare-fun e!2152300 () Bool)

(assert (=> start!323122 e!2152300))

(declare-fun e!2152321 () Bool)

(declare-fun inv!50397 (Token!10262) Bool)

(assert (=> start!323122 (and (inv!50397 separatorToken!241) e!2152321)))

(declare-fun e!2152318 () Bool)

(assert (=> b!3474906 (= e!2152318 (and tp!1080275 tp!1080274))))

(declare-fun tp!1080277 () Bool)

(declare-fun b!3474907 () Bool)

(assert (=> b!3474907 (= e!2152321 (and (inv!21 (value!175728 separatorToken!241)) e!2152304 tp!1080277))))

(assert (=> b!3474908 (= e!2152301 e!2152324)))

(declare-fun res!1401580 () Bool)

(assert (=> b!3474908 (=> res!1401580 e!2152324)))

(assert (=> b!3474908 (= res!1401580 (not (contains!6919 rules!2135 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun contains!6920 (List!37331 C!20600) Bool)

(declare-fun usedCharacters!682 (Regex!10207) List!37331)

(assert (=> b!3474908 (not (contains!6920 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494)))) lt!1182538))))

(declare-fun lt!1182550 () Unit!52638)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!248 (LexerInterface!5037 List!37332 List!37332 Rule!10696 Rule!10696 C!20600) Unit!52638)

(assert (=> b!3474908 (= lt!1182550 (lemmaNonSepRuleNotContainsCharContainedInASepRule!248 thiss!18206 rules!2135 rules!2135 (rule!8044 (h!42629 tokens!494)) (rule!8044 separatorToken!241) lt!1182538))))

(declare-fun lt!1182551 () Unit!52638)

(declare-fun forallContained!1395 (List!37333 Int Token!10262) Unit!52638)

(assert (=> b!3474908 (= lt!1182551 (forallContained!1395 tokens!494 lambda!122075 (h!42629 (t!274954 tokens!494))))))

(assert (=> b!3474908 (= (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 (t!274954 tokens!494))) e!2152307)))

(declare-fun res!1401567 () Bool)

(assert (=> b!3474908 (=> (not res!1401567) (not e!2152307))))

(declare-fun size!28242 (BalanceConc!22158) Int)

(assert (=> b!3474908 (= res!1401567 (= (size!28242 (_1!21611 lt!1182555)) 1))))

(declare-fun lt!1182542 () BalanceConc!22156)

(assert (=> b!3474908 (= lt!1182555 (lex!2363 thiss!18206 rules!2135 lt!1182542))))

(declare-fun lt!1182556 () BalanceConc!22158)

(assert (=> b!3474908 (= lt!1182542 (printTailRec!1532 thiss!18206 lt!1182556 0 (BalanceConc!22157 Empty!11271)))))

(assert (=> b!3474908 (= lt!1182542 (print!2102 thiss!18206 lt!1182556))))

(assert (=> b!3474908 (= lt!1182556 (singletonSeq!2544 (h!42629 (t!274954 tokens!494))))))

(assert (=> b!3474908 e!2152303))

(declare-fun res!1401592 () Bool)

(assert (=> b!3474908 (=> (not res!1401592) (not e!2152303))))

(assert (=> b!3474908 (= res!1401592 (= (size!28242 (_1!21611 lt!1182545)) 1))))

(declare-fun lt!1182532 () BalanceConc!22156)

(assert (=> b!3474908 (= lt!1182545 (lex!2363 thiss!18206 rules!2135 lt!1182532))))

(declare-fun lt!1182565 () BalanceConc!22158)

(assert (=> b!3474908 (= lt!1182532 (printTailRec!1532 thiss!18206 lt!1182565 0 (BalanceConc!22157 Empty!11271)))))

(assert (=> b!3474908 (= lt!1182532 (print!2102 thiss!18206 lt!1182565))))

(assert (=> b!3474908 (= lt!1182565 (singletonSeq!2544 separatorToken!241))))

(declare-fun lt!1182537 () Unit!52638)

(assert (=> b!3474908 (= lt!1182537 e!2152314)))

(declare-fun c!595965 () Bool)

(assert (=> b!3474908 (= c!595965 (not (contains!6920 (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241))) lt!1182538)))))

(declare-fun head!7333 (List!37331) C!20600)

(assert (=> b!3474908 (= lt!1182538 (head!7333 lt!1182540))))

(assert (=> b!3474908 e!2152320))

(declare-fun res!1401571 () Bool)

(assert (=> b!3474908 (=> (not res!1401571) (not e!2152320))))

(declare-fun isDefined!5814 (Option!7549) Bool)

(assert (=> b!3474908 (= res!1401571 (isDefined!5814 lt!1182533))))

(declare-fun getRuleFromTag!1091 (LexerInterface!5037 List!37332 String!41724) Option!7549)

(assert (=> b!3474908 (= lt!1182533 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 separatorToken!241))))))

(declare-fun lt!1182558 () Unit!52638)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1091 (LexerInterface!5037 List!37332 List!37331 Token!10262) Unit!52638)

(assert (=> b!3474908 (= lt!1182558 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1091 thiss!18206 rules!2135 lt!1182540 separatorToken!241))))

(declare-fun maxPrefixOneRule!1744 (LexerInterface!5037 Rule!10696 List!37331) Option!7550)

(declare-fun apply!8785 (TokenValueInjection!10784 BalanceConc!22156) TokenValue!5678)

(declare-fun size!28243 (List!37331) Int)

(assert (=> b!3474908 (= (maxPrefixOneRule!1744 thiss!18206 (rule!8044 (h!42629 tokens!494)) lt!1182557) (Some!7549 (tuple2!36953 (Token!10263 (apply!8785 (transformation!5448 (rule!8044 (h!42629 tokens!494))) lt!1182549) (rule!8044 (h!42629 tokens!494)) (size!28243 lt!1182557) lt!1182557) Nil!37207)))))

(declare-fun lt!1182543 () Unit!52638)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!837 (LexerInterface!5037 List!37332 List!37331 List!37331 List!37331 Rule!10696) Unit!52638)

(assert (=> b!3474908 (= lt!1182543 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!837 thiss!18206 rules!2135 lt!1182557 lt!1182557 Nil!37207 (rule!8044 (h!42629 tokens!494))))))

(assert (=> b!3474908 e!2152299))

(declare-fun res!1401576 () Bool)

(assert (=> b!3474908 (=> (not res!1401576) (not e!2152299))))

(assert (=> b!3474908 (= res!1401576 (isDefined!5814 lt!1182544))))

(assert (=> b!3474908 (= lt!1182544 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun lt!1182560 () Unit!52638)

(assert (=> b!3474908 (= lt!1182560 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1091 thiss!18206 rules!2135 lt!1182557 (h!42629 tokens!494)))))

(declare-fun lt!1182561 () Unit!52638)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1026 (LexerInterface!5037 List!37332 List!37333 Token!10262) Unit!52638)

(assert (=> b!3474908 (= lt!1182561 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1026 thiss!18206 rules!2135 tokens!494 (h!42629 tokens!494)))))

(declare-fun b!3474909 () Bool)

(declare-fun res!1401574 () Bool)

(assert (=> b!3474909 (=> (not res!1401574) (not e!2152315))))

(assert (=> b!3474909 (= res!1401574 (isSeparator!5448 (rule!8044 separatorToken!241)))))

(declare-fun b!3474910 () Bool)

(assert (=> b!3474910 (= e!2152303 (isEmpty!21578 (_2!21611 lt!1182545)))))

(declare-fun b!3474911 () Bool)

(declare-fun e!2152298 () Bool)

(assert (=> b!3474911 (= e!2152326 e!2152298)))

(declare-fun res!1401577 () Bool)

(assert (=> b!3474911 (=> res!1401577 e!2152298)))

(assert (=> b!3474911 (= res!1401577 (or (isSeparator!5448 (rule!8044 (h!42629 tokens!494))) (isSeparator!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))))

(declare-fun lt!1182562 () Unit!52638)

(assert (=> b!3474911 (= lt!1182562 (forallContained!1395 tokens!494 lambda!122074 (h!42629 (t!274954 tokens!494))))))

(declare-fun lt!1182539 () Unit!52638)

(assert (=> b!3474911 (= lt!1182539 (forallContained!1395 tokens!494 lambda!122074 (h!42629 tokens!494)))))

(declare-fun tp!1080273 () Bool)

(declare-fun b!3474912 () Bool)

(assert (=> b!3474912 (= e!2152309 (and tp!1080273 (inv!50393 (tag!6062 (rule!8044 (h!42629 tokens!494)))) (inv!50396 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) e!2152318))))

(declare-fun b!3474913 () Bool)

(assert (=> b!3474913 (= e!2152298 e!2152308)))

(declare-fun res!1401579 () Bool)

(assert (=> b!3474913 (=> res!1401579 e!2152308)))

(declare-fun printWithSeparatorTokenList!324 (LexerInterface!5037 List!37333 Token!10262) List!37331)

(assert (=> b!3474913 (= res!1401579 (not (= lt!1182566 (++!9185 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241)))))))

(assert (=> b!3474913 (= lt!1182536 (++!9185 lt!1182540 lt!1182566))))

(assert (=> b!3474913 (= lt!1182540 (list!13561 (charsOf!3462 separatorToken!241)))))

(assert (=> b!3474913 (= lt!1182566 (printWithSeparatorTokenList!324 thiss!18206 (t!274954 tokens!494) separatorToken!241))))

(assert (=> b!3474913 (= lt!1182554 (printWithSeparatorTokenList!324 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3474914 () Bool)

(declare-fun tp!1080276 () Bool)

(assert (=> b!3474914 (= e!2152305 (and e!2152306 tp!1080276))))

(declare-fun b!3474915 () Bool)

(declare-fun res!1401568 () Bool)

(assert (=> b!3474915 (=> (not res!1401568) (not e!2152315))))

(assert (=> b!3474915 (= res!1401568 (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3474916 () Bool)

(declare-fun tp!1080282 () Bool)

(assert (=> b!3474916 (= e!2152300 (and (inv!50397 (h!42629 tokens!494)) e!2152319 tp!1080282))))

(declare-fun b!3474917 () Bool)

(assert (=> b!3474917 (= e!2152329 (not (isEmpty!21576 lt!1182536)))))

(assert (= (and start!323122 res!1401578) b!3474904))

(assert (= (and b!3474904 res!1401590) b!3474905))

(assert (= (and b!3474905 res!1401586) b!3474879))

(assert (= (and b!3474879 res!1401563) b!3474915))

(assert (= (and b!3474915 res!1401568) b!3474909))

(assert (= (and b!3474909 res!1401574) b!3474883))

(assert (= (and b!3474883 res!1401575) b!3474895))

(assert (= (and b!3474895 res!1401570) b!3474901))

(assert (= (and b!3474901 res!1401581) b!3474893))

(assert (= (and b!3474893 (not res!1401565)) b!3474898))

(assert (= (and b!3474898 (not res!1401585)) b!3474881))

(assert (= (and b!3474881 (not res!1401562)) b!3474886))

(assert (= (and b!3474886 (not res!1401561)) b!3474911))

(assert (= (and b!3474911 (not res!1401577)) b!3474913))

(assert (= (and b!3474913 (not res!1401579)) b!3474885))

(assert (= (and b!3474885 (not res!1401582)) b!3474877))

(assert (= (and b!3474877 (not res!1401569)) b!3474908))

(assert (= (and b!3474908 res!1401576) b!3474902))

(assert (= (and b!3474902 res!1401572) b!3474890))

(assert (= (and b!3474908 res!1401571) b!3474874))

(assert (= (and b!3474874 res!1401587) b!3474900))

(assert (= (and b!3474908 c!595965) b!3474889))

(assert (= (and b!3474908 (not c!595965)) b!3474897))

(assert (= (and b!3474889 res!1401564) b!3474880))

(assert (= (and b!3474908 res!1401592) b!3474892))

(assert (= (and b!3474892 res!1401584) b!3474910))

(assert (= (and b!3474908 res!1401567) b!3474899))

(assert (= (and b!3474899 res!1401589) b!3474903))

(assert (= (and b!3474908 (not res!1401580)) b!3474884))

(assert (= (and b!3474884 (not res!1401583)) b!3474888))

(assert (= (and b!3474888 (not res!1401591)) b!3474882))

(assert (= (and b!3474882 (not res!1401566)) b!3474875))

(assert (= (and b!3474875 (not res!1401573)) b!3474891))

(assert (= (and b!3474891 (not res!1401588)) b!3474917))

(assert (= b!3474878 b!3474896))

(assert (= b!3474914 b!3474878))

(assert (= (and start!323122 ((_ is Cons!37208) rules!2135)) b!3474914))

(assert (= b!3474912 b!3474906))

(assert (= b!3474894 b!3474912))

(assert (= b!3474916 b!3474894))

(assert (= (and start!323122 ((_ is Cons!37209) tokens!494)) b!3474916))

(assert (= b!3474876 b!3474887))

(assert (= b!3474907 b!3474876))

(assert (= start!323122 b!3474907))

(declare-fun m!3888883 () Bool)

(assert (=> b!3474888 m!3888883))

(declare-fun m!3888885 () Bool)

(assert (=> b!3474888 m!3888885))

(declare-fun m!3888887 () Bool)

(assert (=> b!3474903 m!3888887))

(declare-fun m!3888889 () Bool)

(assert (=> b!3474889 m!3888889))

(declare-fun m!3888891 () Bool)

(assert (=> b!3474889 m!3888891))

(declare-fun m!3888893 () Bool)

(assert (=> b!3474905 m!3888893))

(declare-fun m!3888895 () Bool)

(assert (=> b!3474883 m!3888895))

(declare-fun m!3888897 () Bool)

(assert (=> b!3474911 m!3888897))

(declare-fun m!3888899 () Bool)

(assert (=> b!3474911 m!3888899))

(declare-fun m!3888901 () Bool)

(assert (=> b!3474881 m!3888901))

(declare-fun m!3888903 () Bool)

(assert (=> b!3474904 m!3888903))

(declare-fun m!3888905 () Bool)

(assert (=> b!3474907 m!3888905))

(declare-fun m!3888907 () Bool)

(assert (=> b!3474879 m!3888907))

(assert (=> b!3474879 m!3888907))

(declare-fun m!3888909 () Bool)

(assert (=> b!3474879 m!3888909))

(declare-fun m!3888911 () Bool)

(assert (=> b!3474912 m!3888911))

(declare-fun m!3888913 () Bool)

(assert (=> b!3474912 m!3888913))

(declare-fun m!3888915 () Bool)

(assert (=> b!3474875 m!3888915))

(declare-fun m!3888917 () Bool)

(assert (=> b!3474908 m!3888917))

(declare-fun m!3888919 () Bool)

(assert (=> b!3474908 m!3888919))

(declare-fun m!3888921 () Bool)

(assert (=> b!3474908 m!3888921))

(declare-fun m!3888923 () Bool)

(assert (=> b!3474908 m!3888923))

(declare-fun m!3888925 () Bool)

(assert (=> b!3474908 m!3888925))

(declare-fun m!3888927 () Bool)

(assert (=> b!3474908 m!3888927))

(declare-fun m!3888929 () Bool)

(assert (=> b!3474908 m!3888929))

(declare-fun m!3888931 () Bool)

(assert (=> b!3474908 m!3888931))

(assert (=> b!3474908 m!3888919))

(declare-fun m!3888933 () Bool)

(assert (=> b!3474908 m!3888933))

(declare-fun m!3888935 () Bool)

(assert (=> b!3474908 m!3888935))

(declare-fun m!3888937 () Bool)

(assert (=> b!3474908 m!3888937))

(declare-fun m!3888939 () Bool)

(assert (=> b!3474908 m!3888939))

(assert (=> b!3474908 m!3888935))

(declare-fun m!3888941 () Bool)

(assert (=> b!3474908 m!3888941))

(declare-fun m!3888943 () Bool)

(assert (=> b!3474908 m!3888943))

(declare-fun m!3888945 () Bool)

(assert (=> b!3474908 m!3888945))

(declare-fun m!3888947 () Bool)

(assert (=> b!3474908 m!3888947))

(declare-fun m!3888949 () Bool)

(assert (=> b!3474908 m!3888949))

(declare-fun m!3888951 () Bool)

(assert (=> b!3474908 m!3888951))

(declare-fun m!3888953 () Bool)

(assert (=> b!3474908 m!3888953))

(declare-fun m!3888955 () Bool)

(assert (=> b!3474908 m!3888955))

(declare-fun m!3888957 () Bool)

(assert (=> b!3474908 m!3888957))

(declare-fun m!3888959 () Bool)

(assert (=> b!3474908 m!3888959))

(declare-fun m!3888961 () Bool)

(assert (=> b!3474908 m!3888961))

(declare-fun m!3888963 () Bool)

(assert (=> b!3474908 m!3888963))

(declare-fun m!3888965 () Bool)

(assert (=> b!3474908 m!3888965))

(declare-fun m!3888967 () Bool)

(assert (=> b!3474908 m!3888967))

(declare-fun m!3888969 () Bool)

(assert (=> b!3474908 m!3888969))

(declare-fun m!3888971 () Bool)

(assert (=> b!3474908 m!3888971))

(declare-fun m!3888973 () Bool)

(assert (=> b!3474908 m!3888973))

(declare-fun m!3888975 () Bool)

(assert (=> b!3474908 m!3888975))

(declare-fun m!3888977 () Bool)

(assert (=> b!3474874 m!3888977))

(declare-fun m!3888979 () Bool)

(assert (=> b!3474874 m!3888979))

(declare-fun m!3888981 () Bool)

(assert (=> b!3474891 m!3888981))

(declare-fun m!3888983 () Bool)

(assert (=> b!3474891 m!3888983))

(declare-fun m!3888985 () Bool)

(assert (=> b!3474891 m!3888985))

(declare-fun m!3888987 () Bool)

(assert (=> b!3474910 m!3888987))

(declare-fun m!3888989 () Bool)

(assert (=> b!3474878 m!3888989))

(declare-fun m!3888991 () Bool)

(assert (=> b!3474878 m!3888991))

(declare-fun m!3888993 () Bool)

(assert (=> b!3474877 m!3888993))

(declare-fun m!3888995 () Bool)

(assert (=> b!3474877 m!3888995))

(declare-fun m!3888997 () Bool)

(assert (=> b!3474876 m!3888997))

(declare-fun m!3888999 () Bool)

(assert (=> b!3474876 m!3888999))

(declare-fun m!3889001 () Bool)

(assert (=> b!3474917 m!3889001))

(declare-fun m!3889003 () Bool)

(assert (=> b!3474886 m!3889003))

(declare-fun m!3889005 () Bool)

(assert (=> b!3474886 m!3889005))

(declare-fun m!3889007 () Bool)

(assert (=> b!3474886 m!3889007))

(declare-fun m!3889009 () Bool)

(assert (=> b!3474898 m!3889009))

(assert (=> b!3474898 m!3889009))

(declare-fun m!3889011 () Bool)

(assert (=> b!3474898 m!3889011))

(declare-fun m!3889013 () Bool)

(assert (=> b!3474895 m!3889013))

(declare-fun m!3889015 () Bool)

(assert (=> b!3474884 m!3889015))

(declare-fun m!3889017 () Bool)

(assert (=> b!3474915 m!3889017))

(declare-fun m!3889019 () Bool)

(assert (=> b!3474882 m!3889019))

(declare-fun m!3889021 () Bool)

(assert (=> b!3474894 m!3889021))

(declare-fun m!3889023 () Bool)

(assert (=> b!3474899 m!3889023))

(declare-fun m!3889025 () Bool)

(assert (=> b!3474913 m!3889025))

(declare-fun m!3889027 () Bool)

(assert (=> b!3474913 m!3889027))

(declare-fun m!3889029 () Bool)

(assert (=> b!3474913 m!3889029))

(declare-fun m!3889031 () Bool)

(assert (=> b!3474913 m!3889031))

(declare-fun m!3889033 () Bool)

(assert (=> b!3474913 m!3889033))

(declare-fun m!3889035 () Bool)

(assert (=> b!3474913 m!3889035))

(assert (=> b!3474913 m!3889029))

(assert (=> b!3474913 m!3889025))

(assert (=> b!3474913 m!3889027))

(declare-fun m!3889037 () Bool)

(assert (=> b!3474913 m!3889037))

(declare-fun m!3889039 () Bool)

(assert (=> b!3474913 m!3889039))

(assert (=> b!3474913 m!3889037))

(declare-fun m!3889041 () Bool)

(assert (=> b!3474913 m!3889041))

(assert (=> b!3474913 m!3889031))

(declare-fun m!3889043 () Bool)

(assert (=> b!3474913 m!3889043))

(declare-fun m!3889045 () Bool)

(assert (=> b!3474902 m!3889045))

(declare-fun m!3889047 () Bool)

(assert (=> b!3474902 m!3889047))

(declare-fun m!3889049 () Bool)

(assert (=> start!323122 m!3889049))

(declare-fun m!3889051 () Bool)

(assert (=> b!3474893 m!3889051))

(declare-fun m!3889053 () Bool)

(assert (=> b!3474893 m!3889053))

(declare-fun m!3889055 () Bool)

(assert (=> b!3474893 m!3889055))

(declare-fun m!3889057 () Bool)

(assert (=> b!3474893 m!3889057))

(declare-fun m!3889059 () Bool)

(assert (=> b!3474893 m!3889059))

(declare-fun m!3889061 () Bool)

(assert (=> b!3474916 m!3889061))

(declare-fun m!3889063 () Bool)

(assert (=> b!3474885 m!3889063))

(assert (=> b!3474885 m!3889063))

(declare-fun m!3889065 () Bool)

(assert (=> b!3474885 m!3889065))

(declare-fun m!3889067 () Bool)

(assert (=> b!3474892 m!3889067))

(check-sat (not b!3474877) (not b!3474915) b_and!245061 (not b!3474892) b_and!245067 (not b!3474903) (not b!3474894) (not b!3474926) (not b!3474891) (not b!3474879) b_and!245069 b_and!245063 (not b!3474884) b_and!245059 (not b!3474885) (not b_next!90803) (not b!3474904) (not b!3474898) (not b!3474882) (not b!3474883) (not b!3474888) (not b!3474905) (not b!3474886) (not b!3474913) (not b!3474902) (not b!3474874) (not b!3474911) (not b!3474895) (not b_next!90801) (not b!3474907) (not b!3474881) (not b!3474910) (not b!3474912) b_and!245065 (not start!323122) (not b!3474889) (not b!3474878) (not b!3474917) (not b_next!90795) (not b_next!90797) (not b!3474899) (not b!3474914) (not b_next!90799) (not b!3474876) (not b!3474893) (not b_next!90793) (not b!3474916) (not b!3474908) (not b!3474875))
(check-sat b_and!245059 (not b_next!90803) b_and!245061 b_and!245067 (not b_next!90801) b_and!245065 (not b_next!90799) (not b_next!90793) b_and!245069 b_and!245063 (not b_next!90795) (not b_next!90797))
(get-model)

(declare-fun b!3474968 () Bool)

(declare-fun e!2152362 () Bool)

(declare-fun e!2152360 () Bool)

(assert (=> b!3474968 (= e!2152362 e!2152360)))

(declare-fun res!1401627 () Bool)

(assert (=> b!3474968 (=> res!1401627 e!2152360)))

(declare-fun call!250743 () Bool)

(assert (=> b!3474968 (= res!1401627 call!250743)))

(declare-fun bm!250738 () Bool)

(assert (=> bm!250738 (= call!250743 (isEmpty!21576 lt!1182557))))

(declare-fun b!3474970 () Bool)

(declare-fun res!1401628 () Bool)

(declare-fun e!2152365 () Bool)

(assert (=> b!3474970 (=> res!1401628 e!2152365)))

(declare-fun e!2152364 () Bool)

(assert (=> b!3474970 (= res!1401628 e!2152364)))

(declare-fun res!1401629 () Bool)

(assert (=> b!3474970 (=> (not res!1401629) (not e!2152364))))

(declare-fun lt!1182593 () Bool)

(assert (=> b!3474970 (= res!1401629 lt!1182593)))

(declare-fun b!3474971 () Bool)

(declare-fun e!2152363 () Bool)

(declare-fun nullable!3494 (Regex!10207) Bool)

(assert (=> b!3474971 (= e!2152363 (nullable!3494 (regex!5448 lt!1182535)))))

(declare-fun b!3474972 () Bool)

(declare-fun e!2152359 () Bool)

(assert (=> b!3474972 (= e!2152359 (not lt!1182593))))

(declare-fun b!3474973 () Bool)

(declare-fun res!1401630 () Bool)

(assert (=> b!3474973 (=> (not res!1401630) (not e!2152364))))

(assert (=> b!3474973 (= res!1401630 (not call!250743))))

(declare-fun b!3474969 () Bool)

(assert (=> b!3474969 (= e!2152364 (= (head!7333 lt!1182557) (c!595966 (regex!5448 lt!1182535))))))

(declare-fun d!1003491 () Bool)

(declare-fun e!2152361 () Bool)

(assert (=> d!1003491 e!2152361))

(declare-fun c!595980 () Bool)

(assert (=> d!1003491 (= c!595980 ((_ is EmptyExpr!10207) (regex!5448 lt!1182535)))))

(assert (=> d!1003491 (= lt!1182593 e!2152363)))

(declare-fun c!595979 () Bool)

(assert (=> d!1003491 (= c!595979 (isEmpty!21576 lt!1182557))))

(declare-fun validRegex!4650 (Regex!10207) Bool)

(assert (=> d!1003491 (validRegex!4650 (regex!5448 lt!1182535))))

(assert (=> d!1003491 (= (matchR!4791 (regex!5448 lt!1182535) lt!1182557) lt!1182593)))

(declare-fun b!3474974 () Bool)

(assert (=> b!3474974 (= e!2152361 (= lt!1182593 call!250743))))

(declare-fun b!3474975 () Bool)

(assert (=> b!3474975 (= e!2152365 e!2152362)))

(declare-fun res!1401625 () Bool)

(assert (=> b!3474975 (=> (not res!1401625) (not e!2152362))))

(assert (=> b!3474975 (= res!1401625 (not lt!1182593))))

(declare-fun b!3474976 () Bool)

(declare-fun res!1401624 () Bool)

(assert (=> b!3474976 (=> res!1401624 e!2152365)))

(assert (=> b!3474976 (= res!1401624 (not ((_ is ElementMatch!10207) (regex!5448 lt!1182535))))))

(assert (=> b!3474976 (= e!2152359 e!2152365)))

(declare-fun b!3474977 () Bool)

(declare-fun derivativeStep!3047 (Regex!10207 C!20600) Regex!10207)

(declare-fun tail!5444 (List!37331) List!37331)

(assert (=> b!3474977 (= e!2152363 (matchR!4791 (derivativeStep!3047 (regex!5448 lt!1182535) (head!7333 lt!1182557)) (tail!5444 lt!1182557)))))

(declare-fun b!3474978 () Bool)

(declare-fun res!1401623 () Bool)

(assert (=> b!3474978 (=> res!1401623 e!2152360)))

(assert (=> b!3474978 (= res!1401623 (not (isEmpty!21576 (tail!5444 lt!1182557))))))

(declare-fun b!3474979 () Bool)

(assert (=> b!3474979 (= e!2152361 e!2152359)))

(declare-fun c!595978 () Bool)

(assert (=> b!3474979 (= c!595978 ((_ is EmptyLang!10207) (regex!5448 lt!1182535)))))

(declare-fun b!3474980 () Bool)

(assert (=> b!3474980 (= e!2152360 (not (= (head!7333 lt!1182557) (c!595966 (regex!5448 lt!1182535)))))))

(declare-fun b!3474981 () Bool)

(declare-fun res!1401626 () Bool)

(assert (=> b!3474981 (=> (not res!1401626) (not e!2152364))))

(assert (=> b!3474981 (= res!1401626 (isEmpty!21576 (tail!5444 lt!1182557)))))

(assert (= (and d!1003491 c!595979) b!3474971))

(assert (= (and d!1003491 (not c!595979)) b!3474977))

(assert (= (and d!1003491 c!595980) b!3474974))

(assert (= (and d!1003491 (not c!595980)) b!3474979))

(assert (= (and b!3474979 c!595978) b!3474972))

(assert (= (and b!3474979 (not c!595978)) b!3474976))

(assert (= (and b!3474976 (not res!1401624)) b!3474970))

(assert (= (and b!3474970 res!1401629) b!3474973))

(assert (= (and b!3474973 res!1401630) b!3474981))

(assert (= (and b!3474981 res!1401626) b!3474969))

(assert (= (and b!3474970 (not res!1401628)) b!3474975))

(assert (= (and b!3474975 res!1401625) b!3474968))

(assert (= (and b!3474968 (not res!1401627)) b!3474978))

(assert (= (and b!3474978 (not res!1401623)) b!3474980))

(assert (= (or b!3474974 b!3474968 b!3474973) bm!250738))

(declare-fun m!3889111 () Bool)

(assert (=> b!3474980 m!3889111))

(declare-fun m!3889113 () Bool)

(assert (=> bm!250738 m!3889113))

(assert (=> b!3474977 m!3889111))

(assert (=> b!3474977 m!3889111))

(declare-fun m!3889115 () Bool)

(assert (=> b!3474977 m!3889115))

(declare-fun m!3889117 () Bool)

(assert (=> b!3474977 m!3889117))

(assert (=> b!3474977 m!3889115))

(assert (=> b!3474977 m!3889117))

(declare-fun m!3889119 () Bool)

(assert (=> b!3474977 m!3889119))

(assert (=> d!1003491 m!3889113))

(declare-fun m!3889121 () Bool)

(assert (=> d!1003491 m!3889121))

(assert (=> b!3474969 m!3889111))

(assert (=> b!3474981 m!3889117))

(assert (=> b!3474981 m!3889117))

(declare-fun m!3889123 () Bool)

(assert (=> b!3474981 m!3889123))

(assert (=> b!3474978 m!3889117))

(assert (=> b!3474978 m!3889117))

(assert (=> b!3474978 m!3889123))

(declare-fun m!3889125 () Bool)

(assert (=> b!3474971 m!3889125))

(assert (=> b!3474902 d!1003491))

(declare-fun d!1003499 () Bool)

(assert (=> d!1003499 (= (get!11918 lt!1182544) (v!36904 lt!1182544))))

(assert (=> b!3474902 d!1003499))

(declare-fun d!1003501 () Bool)

(declare-fun lt!1182599 () Bool)

(assert (=> d!1003501 (= lt!1182599 (isEmpty!21576 (list!13561 (_2!21611 lt!1182555))))))

(declare-fun isEmpty!21581 (Conc!11271) Bool)

(assert (=> d!1003501 (= lt!1182599 (isEmpty!21581 (c!595967 (_2!21611 lt!1182555))))))

(assert (=> d!1003501 (= (isEmpty!21578 (_2!21611 lt!1182555)) lt!1182599)))

(declare-fun bs!561646 () Bool)

(assert (= bs!561646 d!1003501))

(declare-fun m!3889141 () Bool)

(assert (=> bs!561646 m!3889141))

(assert (=> bs!561646 m!3889141))

(declare-fun m!3889143 () Bool)

(assert (=> bs!561646 m!3889143))

(declare-fun m!3889145 () Bool)

(assert (=> bs!561646 m!3889145))

(assert (=> b!3474903 d!1003501))

(declare-fun d!1003507 () Bool)

(assert (=> d!1003507 (= (get!11919 lt!1182534) (v!36905 lt!1182534))))

(assert (=> b!3474882 d!1003507))

(declare-fun d!1003509 () Bool)

(declare-fun lt!1182625 () Bool)

(declare-fun e!2152430 () Bool)

(assert (=> d!1003509 (= lt!1182625 e!2152430)))

(declare-fun res!1401704 () Bool)

(assert (=> d!1003509 (=> (not res!1401704) (not e!2152430))))

(declare-fun list!13564 (BalanceConc!22158) List!37333)

(assert (=> d!1003509 (= res!1401704 (= (list!13564 (_1!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 tokens!494)))))) (list!13564 (singletonSeq!2544 (h!42629 tokens!494)))))))

(declare-fun e!2152431 () Bool)

(assert (=> d!1003509 (= lt!1182625 e!2152431)))

(declare-fun res!1401705 () Bool)

(assert (=> d!1003509 (=> (not res!1401705) (not e!2152431))))

(declare-fun lt!1182626 () tuple2!36954)

(assert (=> d!1003509 (= res!1401705 (= (size!28242 (_1!21611 lt!1182626)) 1))))

(assert (=> d!1003509 (= lt!1182626 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 tokens!494)))))))

(assert (=> d!1003509 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003509 (= (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 tokens!494)) lt!1182625)))

(declare-fun b!3475101 () Bool)

(declare-fun res!1401703 () Bool)

(assert (=> b!3475101 (=> (not res!1401703) (not e!2152431))))

(assert (=> b!3475101 (= res!1401703 (= (apply!8784 (_1!21611 lt!1182626) 0) (h!42629 tokens!494)))))

(declare-fun b!3475102 () Bool)

(assert (=> b!3475102 (= e!2152431 (isEmpty!21578 (_2!21611 lt!1182626)))))

(declare-fun b!3475103 () Bool)

(assert (=> b!3475103 (= e!2152430 (isEmpty!21578 (_2!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 tokens!494)))))))))

(assert (= (and d!1003509 res!1401705) b!3475101))

(assert (= (and b!3475101 res!1401703) b!3475102))

(assert (= (and d!1003509 res!1401704) b!3475103))

(declare-fun m!3889225 () Bool)

(assert (=> d!1003509 m!3889225))

(declare-fun m!3889227 () Bool)

(assert (=> d!1003509 m!3889227))

(declare-fun m!3889229 () Bool)

(assert (=> d!1003509 m!3889229))

(declare-fun m!3889231 () Bool)

(assert (=> d!1003509 m!3889231))

(assert (=> d!1003509 m!3889055))

(assert (=> d!1003509 m!3889055))

(assert (=> d!1003509 m!3889225))

(assert (=> d!1003509 m!3889055))

(declare-fun m!3889233 () Bool)

(assert (=> d!1003509 m!3889233))

(assert (=> d!1003509 m!3888903))

(declare-fun m!3889235 () Bool)

(assert (=> b!3475101 m!3889235))

(declare-fun m!3889237 () Bool)

(assert (=> b!3475102 m!3889237))

(assert (=> b!3475103 m!3889055))

(assert (=> b!3475103 m!3889055))

(assert (=> b!3475103 m!3889225))

(assert (=> b!3475103 m!3889225))

(assert (=> b!3475103 m!3889227))

(declare-fun m!3889239 () Bool)

(assert (=> b!3475103 m!3889239))

(assert (=> b!3474881 d!1003509))

(declare-fun d!1003529 () Bool)

(declare-fun lt!1182629 () Token!10262)

(declare-fun apply!8788 (List!37333 Int) Token!10262)

(assert (=> d!1003529 (= lt!1182629 (apply!8788 (list!13564 (_1!21611 lt!1182555)) 0))))

(declare-fun apply!8789 (Conc!11272 Int) Token!10262)

(assert (=> d!1003529 (= lt!1182629 (apply!8789 (c!595968 (_1!21611 lt!1182555)) 0))))

(declare-fun e!2152434 () Bool)

(assert (=> d!1003529 e!2152434))

(declare-fun res!1401708 () Bool)

(assert (=> d!1003529 (=> (not res!1401708) (not e!2152434))))

(assert (=> d!1003529 (= res!1401708 (<= 0 0))))

(assert (=> d!1003529 (= (apply!8784 (_1!21611 lt!1182555) 0) lt!1182629)))

(declare-fun b!3475106 () Bool)

(assert (=> b!3475106 (= e!2152434 (< 0 (size!28242 (_1!21611 lt!1182555))))))

(assert (= (and d!1003529 res!1401708) b!3475106))

(declare-fun m!3889241 () Bool)

(assert (=> d!1003529 m!3889241))

(assert (=> d!1003529 m!3889241))

(declare-fun m!3889243 () Bool)

(assert (=> d!1003529 m!3889243))

(declare-fun m!3889245 () Bool)

(assert (=> d!1003529 m!3889245))

(assert (=> b!3475106 m!3888941))

(assert (=> b!3474899 d!1003529))

(declare-fun d!1003531 () Bool)

(assert (=> d!1003531 (= (inv!50393 (tag!6062 (h!42628 rules!2135))) (= (mod (str.len (value!175727 (tag!6062 (h!42628 rules!2135)))) 2) 0))))

(assert (=> b!3474878 d!1003531))

(declare-fun d!1003533 () Bool)

(declare-fun res!1401711 () Bool)

(declare-fun e!2152437 () Bool)

(assert (=> d!1003533 (=> (not res!1401711) (not e!2152437))))

(declare-fun semiInverseModEq!2288 (Int Int) Bool)

(assert (=> d!1003533 (= res!1401711 (semiInverseModEq!2288 (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toValue!7684 (transformation!5448 (h!42628 rules!2135)))))))

(assert (=> d!1003533 (= (inv!50396 (transformation!5448 (h!42628 rules!2135))) e!2152437)))

(declare-fun b!3475109 () Bool)

(declare-fun equivClasses!2187 (Int Int) Bool)

(assert (=> b!3475109 (= e!2152437 (equivClasses!2187 (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toValue!7684 (transformation!5448 (h!42628 rules!2135)))))))

(assert (= (and d!1003533 res!1401711) b!3475109))

(declare-fun m!3889247 () Bool)

(assert (=> d!1003533 m!3889247))

(declare-fun m!3889249 () Bool)

(assert (=> b!3475109 m!3889249))

(assert (=> b!3474878 d!1003533))

(declare-fun d!1003535 () Bool)

(declare-fun e!2152442 () Bool)

(assert (=> d!1003535 e!2152442))

(declare-fun res!1401716 () Bool)

(assert (=> d!1003535 (=> (not res!1401716) (not e!2152442))))

(declare-fun lt!1182632 () List!37331)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5202 (List!37331) (InoxSet C!20600))

(assert (=> d!1003535 (= res!1401716 (= (content!5202 lt!1182632) ((_ map or) (content!5202 lt!1182557) (content!5202 lt!1182536))))))

(declare-fun e!2152443 () List!37331)

(assert (=> d!1003535 (= lt!1182632 e!2152443)))

(declare-fun c!596004 () Bool)

(assert (=> d!1003535 (= c!596004 ((_ is Nil!37207) lt!1182557))))

(assert (=> d!1003535 (= (++!9185 lt!1182557 lt!1182536) lt!1182632)))

(declare-fun b!3475120 () Bool)

(declare-fun res!1401717 () Bool)

(assert (=> b!3475120 (=> (not res!1401717) (not e!2152442))))

(assert (=> b!3475120 (= res!1401717 (= (size!28243 lt!1182632) (+ (size!28243 lt!1182557) (size!28243 lt!1182536))))))

(declare-fun b!3475119 () Bool)

(assert (=> b!3475119 (= e!2152443 (Cons!37207 (h!42627 lt!1182557) (++!9185 (t!274952 lt!1182557) lt!1182536)))))

(declare-fun b!3475121 () Bool)

(assert (=> b!3475121 (= e!2152442 (or (not (= lt!1182536 Nil!37207)) (= lt!1182632 lt!1182557)))))

(declare-fun b!3475118 () Bool)

(assert (=> b!3475118 (= e!2152443 lt!1182536)))

(assert (= (and d!1003535 c!596004) b!3475118))

(assert (= (and d!1003535 (not c!596004)) b!3475119))

(assert (= (and d!1003535 res!1401716) b!3475120))

(assert (= (and b!3475120 res!1401717) b!3475121))

(declare-fun m!3889251 () Bool)

(assert (=> d!1003535 m!3889251))

(declare-fun m!3889253 () Bool)

(assert (=> d!1003535 m!3889253))

(declare-fun m!3889255 () Bool)

(assert (=> d!1003535 m!3889255))

(declare-fun m!3889257 () Bool)

(assert (=> b!3475120 m!3889257))

(assert (=> b!3475120 m!3888939))

(declare-fun m!3889259 () Bool)

(assert (=> b!3475120 m!3889259))

(declare-fun m!3889261 () Bool)

(assert (=> b!3475119 m!3889261))

(assert (=> b!3474877 d!1003535))

(declare-fun d!1003537 () Bool)

(assert (=> d!1003537 (= (++!9185 (++!9185 lt!1182557 lt!1182540) lt!1182566) (++!9185 lt!1182557 (++!9185 lt!1182540 lt!1182566)))))

(declare-fun lt!1182635 () Unit!52638)

(declare-fun choose!20099 (List!37331 List!37331 List!37331) Unit!52638)

(assert (=> d!1003537 (= lt!1182635 (choose!20099 lt!1182557 lt!1182540 lt!1182566))))

(assert (=> d!1003537 (= (lemmaConcatAssociativity!1972 lt!1182557 lt!1182540 lt!1182566) lt!1182635)))

(declare-fun bs!561648 () Bool)

(assert (= bs!561648 d!1003537))

(assert (=> bs!561648 m!3889041))

(assert (=> bs!561648 m!3889063))

(assert (=> bs!561648 m!3889065))

(assert (=> bs!561648 m!3889041))

(declare-fun m!3889263 () Bool)

(assert (=> bs!561648 m!3889263))

(assert (=> bs!561648 m!3889063))

(declare-fun m!3889265 () Bool)

(assert (=> bs!561648 m!3889265))

(assert (=> b!3474877 d!1003537))

(declare-fun bs!561651 () Bool)

(declare-fun d!1003539 () Bool)

(assert (= bs!561651 (and d!1003539 b!3474883)))

(declare-fun lambda!122080 () Int)

(assert (=> bs!561651 (not (= lambda!122080 lambda!122074))))

(declare-fun bs!561652 () Bool)

(assert (= bs!561652 (and d!1003539 b!3474908)))

(assert (=> bs!561652 (= lambda!122080 lambda!122075)))

(declare-fun b!3475174 () Bool)

(declare-fun e!2152481 () Bool)

(assert (=> b!3475174 (= e!2152481 true)))

(declare-fun b!3475173 () Bool)

(declare-fun e!2152480 () Bool)

(assert (=> b!3475173 (= e!2152480 e!2152481)))

(declare-fun b!3475172 () Bool)

(declare-fun e!2152479 () Bool)

(assert (=> b!3475172 (= e!2152479 e!2152480)))

(assert (=> d!1003539 e!2152479))

(assert (= b!3475173 b!3475174))

(assert (= b!3475172 b!3475173))

(assert (= (and d!1003539 ((_ is Cons!37208) rules!2135)) b!3475172))

(assert (=> b!3475174 (< (dynLambda!15714 order!19873 (toValue!7684 (transformation!5448 (h!42628 rules!2135)))) (dynLambda!15715 order!19875 lambda!122080))))

(assert (=> b!3475174 (< (dynLambda!15716 order!19877 (toChars!7543 (transformation!5448 (h!42628 rules!2135)))) (dynLambda!15715 order!19875 lambda!122080))))

(assert (=> d!1003539 true))

(declare-fun e!2152478 () Bool)

(assert (=> d!1003539 e!2152478))

(declare-fun res!1401756 () Bool)

(assert (=> d!1003539 (=> (not res!1401756) (not e!2152478))))

(declare-fun lt!1182660 () Bool)

(assert (=> d!1003539 (= res!1401756 (= lt!1182660 (forall!7949 (list!13564 (seqFromList!3949 tokens!494)) lambda!122080)))))

(declare-fun forall!7950 (BalanceConc!22158 Int) Bool)

(assert (=> d!1003539 (= lt!1182660 (forall!7950 (seqFromList!3949 tokens!494) lambda!122080))))

(assert (=> d!1003539 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003539 (= (rulesProduceEachTokenIndividually!1488 thiss!18206 rules!2135 (seqFromList!3949 tokens!494)) lt!1182660)))

(declare-fun b!3475171 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1860 (LexerInterface!5037 List!37332 List!37333) Bool)

(assert (=> b!3475171 (= e!2152478 (= lt!1182660 (rulesProduceEachTokenIndividuallyList!1860 thiss!18206 rules!2135 (list!13564 (seqFromList!3949 tokens!494)))))))

(assert (= (and d!1003539 res!1401756) b!3475171))

(assert (=> d!1003539 m!3888907))

(declare-fun m!3889371 () Bool)

(assert (=> d!1003539 m!3889371))

(assert (=> d!1003539 m!3889371))

(declare-fun m!3889373 () Bool)

(assert (=> d!1003539 m!3889373))

(assert (=> d!1003539 m!3888907))

(declare-fun m!3889375 () Bool)

(assert (=> d!1003539 m!3889375))

(assert (=> d!1003539 m!3888903))

(assert (=> b!3475171 m!3888907))

(assert (=> b!3475171 m!3889371))

(assert (=> b!3475171 m!3889371))

(declare-fun m!3889377 () Bool)

(assert (=> b!3475171 m!3889377))

(assert (=> b!3474879 d!1003539))

(declare-fun d!1003569 () Bool)

(declare-fun fromListB!1792 (List!37333) BalanceConc!22158)

(assert (=> d!1003569 (= (seqFromList!3949 tokens!494) (fromListB!1792 tokens!494))))

(declare-fun bs!561653 () Bool)

(assert (= bs!561653 d!1003569))

(declare-fun m!3889379 () Bool)

(assert (=> bs!561653 m!3889379))

(assert (=> b!3474879 d!1003569))

(declare-fun d!1003571 () Bool)

(assert (=> d!1003571 (= (isEmpty!21576 (_2!21610 lt!1182563)) ((_ is Nil!37207) (_2!21610 lt!1182563)))))

(assert (=> b!3474875 d!1003571))

(declare-fun d!1003573 () Bool)

(assert (=> d!1003573 (= (isEmpty!21576 lt!1182536) ((_ is Nil!37207) lt!1182536))))

(assert (=> b!3474917 d!1003573))

(declare-fun d!1003575 () Bool)

(declare-fun list!13565 (Conc!11271) List!37331)

(assert (=> d!1003575 (= (list!13561 (charsOf!3462 (h!42629 tokens!494))) (list!13565 (c!595967 (charsOf!3462 (h!42629 tokens!494)))))))

(declare-fun bs!561654 () Bool)

(assert (= bs!561654 d!1003575))

(declare-fun m!3889381 () Bool)

(assert (=> bs!561654 m!3889381))

(assert (=> b!3474898 d!1003575))

(declare-fun d!1003577 () Bool)

(declare-fun lt!1182663 () BalanceConc!22156)

(assert (=> d!1003577 (= (list!13561 lt!1182663) (originalCharacters!6162 (h!42629 tokens!494)))))

(declare-fun dynLambda!15718 (Int TokenValue!5678) BalanceConc!22156)

(assert (=> d!1003577 (= lt!1182663 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (value!175728 (h!42629 tokens!494))))))

(assert (=> d!1003577 (= (charsOf!3462 (h!42629 tokens!494)) lt!1182663)))

(declare-fun b_lambda!100327 () Bool)

(assert (=> (not b_lambda!100327) (not d!1003577)))

(declare-fun tb!190483 () Bool)

(declare-fun t!274975 () Bool)

(assert (=> (and b!3474887 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!274975) tb!190483))

(declare-fun b!3475179 () Bool)

(declare-fun e!2152484 () Bool)

(declare-fun tp!1080289 () Bool)

(declare-fun inv!50400 (Conc!11271) Bool)

(assert (=> b!3475179 (= e!2152484 (and (inv!50400 (c!595967 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (value!175728 (h!42629 tokens!494))))) tp!1080289))))

(declare-fun result!234530 () Bool)

(declare-fun inv!50401 (BalanceConc!22156) Bool)

(assert (=> tb!190483 (= result!234530 (and (inv!50401 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (value!175728 (h!42629 tokens!494)))) e!2152484))))

(assert (= tb!190483 b!3475179))

(declare-fun m!3889383 () Bool)

(assert (=> b!3475179 m!3889383))

(declare-fun m!3889385 () Bool)

(assert (=> tb!190483 m!3889385))

(assert (=> d!1003577 t!274975))

(declare-fun b_and!245083 () Bool)

(assert (= b_and!245061 (and (=> t!274975 result!234530) b_and!245083)))

(declare-fun tb!190485 () Bool)

(declare-fun t!274977 () Bool)

(assert (=> (and b!3474896 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!274977) tb!190485))

(declare-fun result!234534 () Bool)

(assert (= result!234534 result!234530))

(assert (=> d!1003577 t!274977))

(declare-fun b_and!245085 () Bool)

(assert (= b_and!245065 (and (=> t!274977 result!234534) b_and!245085)))

(declare-fun t!274979 () Bool)

(declare-fun tb!190487 () Bool)

(assert (=> (and b!3474906 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!274979) tb!190487))

(declare-fun result!234536 () Bool)

(assert (= result!234536 result!234530))

(assert (=> d!1003577 t!274979))

(declare-fun b_and!245087 () Bool)

(assert (= b_and!245069 (and (=> t!274979 result!234536) b_and!245087)))

(declare-fun m!3889387 () Bool)

(assert (=> d!1003577 m!3889387))

(declare-fun m!3889389 () Bool)

(assert (=> d!1003577 m!3889389))

(assert (=> b!3474898 d!1003577))

(declare-fun d!1003579 () Bool)

(assert (=> d!1003579 (= (inv!50393 (tag!6062 (rule!8044 separatorToken!241))) (= (mod (str.len (value!175727 (tag!6062 (rule!8044 separatorToken!241)))) 2) 0))))

(assert (=> b!3474876 d!1003579))

(declare-fun d!1003581 () Bool)

(declare-fun res!1401757 () Bool)

(declare-fun e!2152485 () Bool)

(assert (=> d!1003581 (=> (not res!1401757) (not e!2152485))))

(assert (=> d!1003581 (= res!1401757 (semiInverseModEq!2288 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toValue!7684 (transformation!5448 (rule!8044 separatorToken!241)))))))

(assert (=> d!1003581 (= (inv!50396 (transformation!5448 (rule!8044 separatorToken!241))) e!2152485)))

(declare-fun b!3475180 () Bool)

(assert (=> b!3475180 (= e!2152485 (equivClasses!2187 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toValue!7684 (transformation!5448 (rule!8044 separatorToken!241)))))))

(assert (= (and d!1003581 res!1401757) b!3475180))

(declare-fun m!3889391 () Bool)

(assert (=> d!1003581 m!3889391))

(declare-fun m!3889393 () Bool)

(assert (=> b!3475180 m!3889393))

(assert (=> b!3474876 d!1003581))

(declare-fun d!1003583 () Bool)

(declare-fun lt!1182664 () Bool)

(declare-fun e!2152486 () Bool)

(assert (=> d!1003583 (= lt!1182664 e!2152486)))

(declare-fun res!1401759 () Bool)

(assert (=> d!1003583 (=> (not res!1401759) (not e!2152486))))

(assert (=> d!1003583 (= res!1401759 (= (list!13564 (_1!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 separatorToken!241))))) (list!13564 (singletonSeq!2544 separatorToken!241))))))

(declare-fun e!2152487 () Bool)

(assert (=> d!1003583 (= lt!1182664 e!2152487)))

(declare-fun res!1401760 () Bool)

(assert (=> d!1003583 (=> (not res!1401760) (not e!2152487))))

(declare-fun lt!1182665 () tuple2!36954)

(assert (=> d!1003583 (= res!1401760 (= (size!28242 (_1!21611 lt!1182665)) 1))))

(assert (=> d!1003583 (= lt!1182665 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 separatorToken!241))))))

(assert (=> d!1003583 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003583 (= (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 separatorToken!241) lt!1182664)))

(declare-fun b!3475181 () Bool)

(declare-fun res!1401758 () Bool)

(assert (=> b!3475181 (=> (not res!1401758) (not e!2152487))))

(assert (=> b!3475181 (= res!1401758 (= (apply!8784 (_1!21611 lt!1182665) 0) separatorToken!241))))

(declare-fun b!3475182 () Bool)

(assert (=> b!3475182 (= e!2152487 (isEmpty!21578 (_2!21611 lt!1182665)))))

(declare-fun b!3475183 () Bool)

(assert (=> b!3475183 (= e!2152486 (isEmpty!21578 (_2!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 separatorToken!241))))))))

(assert (= (and d!1003583 res!1401760) b!3475181))

(assert (= (and b!3475181 res!1401758) b!3475182))

(assert (= (and d!1003583 res!1401759) b!3475183))

(declare-fun m!3889395 () Bool)

(assert (=> d!1003583 m!3889395))

(declare-fun m!3889397 () Bool)

(assert (=> d!1003583 m!3889397))

(declare-fun m!3889399 () Bool)

(assert (=> d!1003583 m!3889399))

(declare-fun m!3889401 () Bool)

(assert (=> d!1003583 m!3889401))

(assert (=> d!1003583 m!3888947))

(assert (=> d!1003583 m!3888947))

(assert (=> d!1003583 m!3889395))

(assert (=> d!1003583 m!3888947))

(declare-fun m!3889403 () Bool)

(assert (=> d!1003583 m!3889403))

(assert (=> d!1003583 m!3888903))

(declare-fun m!3889405 () Bool)

(assert (=> b!3475181 m!3889405))

(declare-fun m!3889407 () Bool)

(assert (=> b!3475182 m!3889407))

(assert (=> b!3475183 m!3888947))

(assert (=> b!3475183 m!3888947))

(assert (=> b!3475183 m!3889395))

(assert (=> b!3475183 m!3889395))

(assert (=> b!3475183 m!3889397))

(declare-fun m!3889409 () Bool)

(assert (=> b!3475183 m!3889409))

(assert (=> b!3474915 d!1003583))

(declare-fun b!3475194 () Bool)

(declare-fun res!1401763 () Bool)

(declare-fun e!2152495 () Bool)

(assert (=> b!3475194 (=> res!1401763 e!2152495)))

(assert (=> b!3475194 (= res!1401763 (not ((_ is IntegerValue!17036) (value!175728 (h!42629 tokens!494)))))))

(declare-fun e!2152494 () Bool)

(assert (=> b!3475194 (= e!2152494 e!2152495)))

(declare-fun b!3475195 () Bool)

(declare-fun e!2152496 () Bool)

(declare-fun inv!16 (TokenValue!5678) Bool)

(assert (=> b!3475195 (= e!2152496 (inv!16 (value!175728 (h!42629 tokens!494))))))

(declare-fun d!1003585 () Bool)

(declare-fun c!596015 () Bool)

(assert (=> d!1003585 (= c!596015 ((_ is IntegerValue!17034) (value!175728 (h!42629 tokens!494))))))

(assert (=> d!1003585 (= (inv!21 (value!175728 (h!42629 tokens!494))) e!2152496)))

(declare-fun b!3475196 () Bool)

(assert (=> b!3475196 (= e!2152496 e!2152494)))

(declare-fun c!596014 () Bool)

(assert (=> b!3475196 (= c!596014 ((_ is IntegerValue!17035) (value!175728 (h!42629 tokens!494))))))

(declare-fun b!3475197 () Bool)

(declare-fun inv!17 (TokenValue!5678) Bool)

(assert (=> b!3475197 (= e!2152494 (inv!17 (value!175728 (h!42629 tokens!494))))))

(declare-fun b!3475198 () Bool)

(declare-fun inv!15 (TokenValue!5678) Bool)

(assert (=> b!3475198 (= e!2152495 (inv!15 (value!175728 (h!42629 tokens!494))))))

(assert (= (and d!1003585 c!596015) b!3475195))

(assert (= (and d!1003585 (not c!596015)) b!3475196))

(assert (= (and b!3475196 c!596014) b!3475197))

(assert (= (and b!3475196 (not c!596014)) b!3475194))

(assert (= (and b!3475194 (not res!1401763)) b!3475198))

(declare-fun m!3889411 () Bool)

(assert (=> b!3475195 m!3889411))

(declare-fun m!3889413 () Bool)

(assert (=> b!3475197 m!3889413))

(declare-fun m!3889415 () Bool)

(assert (=> b!3475198 m!3889415))

(assert (=> b!3474894 d!1003585))

(declare-fun d!1003587 () Bool)

(declare-fun lt!1182668 () BalanceConc!22156)

(assert (=> d!1003587 (= (list!13561 lt!1182668) (printList!1585 thiss!18206 (list!13564 lt!1182552)))))

(assert (=> d!1003587 (= lt!1182668 (printTailRec!1532 thiss!18206 lt!1182552 0 (BalanceConc!22157 Empty!11271)))))

(assert (=> d!1003587 (= (print!2102 thiss!18206 lt!1182552) lt!1182668)))

(declare-fun bs!561655 () Bool)

(assert (= bs!561655 d!1003587))

(declare-fun m!3889417 () Bool)

(assert (=> bs!561655 m!3889417))

(declare-fun m!3889419 () Bool)

(assert (=> bs!561655 m!3889419))

(assert (=> bs!561655 m!3889419))

(declare-fun m!3889421 () Bool)

(assert (=> bs!561655 m!3889421))

(assert (=> bs!561655 m!3889057))

(assert (=> b!3474893 d!1003587))

(declare-fun d!1003589 () Bool)

(declare-fun lt!1182695 () BalanceConc!22156)

(declare-fun printListTailRec!694 (LexerInterface!5037 List!37333 List!37331) List!37331)

(declare-fun dropList!1211 (BalanceConc!22158 Int) List!37333)

(assert (=> d!1003589 (= (list!13561 lt!1182695) (printListTailRec!694 thiss!18206 (dropList!1211 lt!1182552 0) (list!13561 (BalanceConc!22157 Empty!11271))))))

(declare-fun e!2152521 () BalanceConc!22156)

(assert (=> d!1003589 (= lt!1182695 e!2152521)))

(declare-fun c!596027 () Bool)

(assert (=> d!1003589 (= c!596027 (>= 0 (size!28242 lt!1182552)))))

(declare-fun e!2152522 () Bool)

(assert (=> d!1003589 e!2152522))

(declare-fun res!1401781 () Bool)

(assert (=> d!1003589 (=> (not res!1401781) (not e!2152522))))

(assert (=> d!1003589 (= res!1401781 (>= 0 0))))

(assert (=> d!1003589 (= (printTailRec!1532 thiss!18206 lt!1182552 0 (BalanceConc!22157 Empty!11271)) lt!1182695)))

(declare-fun b!3475239 () Bool)

(assert (=> b!3475239 (= e!2152522 (<= 0 (size!28242 lt!1182552)))))

(declare-fun b!3475240 () Bool)

(assert (=> b!3475240 (= e!2152521 (BalanceConc!22157 Empty!11271))))

(declare-fun b!3475241 () Bool)

(declare-fun ++!9187 (BalanceConc!22156 BalanceConc!22156) BalanceConc!22156)

(assert (=> b!3475241 (= e!2152521 (printTailRec!1532 thiss!18206 lt!1182552 (+ 0 1) (++!9187 (BalanceConc!22157 Empty!11271) (charsOf!3462 (apply!8784 lt!1182552 0)))))))

(declare-fun lt!1182698 () List!37333)

(assert (=> b!3475241 (= lt!1182698 (list!13564 lt!1182552))))

(declare-fun lt!1182696 () Unit!52638)

(declare-fun lemmaDropApply!1169 (List!37333 Int) Unit!52638)

(assert (=> b!3475241 (= lt!1182696 (lemmaDropApply!1169 lt!1182698 0))))

(declare-fun head!7335 (List!37333) Token!10262)

(declare-fun drop!2019 (List!37333 Int) List!37333)

(assert (=> b!3475241 (= (head!7335 (drop!2019 lt!1182698 0)) (apply!8788 lt!1182698 0))))

(declare-fun lt!1182693 () Unit!52638)

(assert (=> b!3475241 (= lt!1182693 lt!1182696)))

(declare-fun lt!1182694 () List!37333)

(assert (=> b!3475241 (= lt!1182694 (list!13564 lt!1182552))))

(declare-fun lt!1182697 () Unit!52638)

(declare-fun lemmaDropTail!1053 (List!37333 Int) Unit!52638)

(assert (=> b!3475241 (= lt!1182697 (lemmaDropTail!1053 lt!1182694 0))))

(declare-fun tail!5445 (List!37333) List!37333)

(assert (=> b!3475241 (= (tail!5445 (drop!2019 lt!1182694 0)) (drop!2019 lt!1182694 (+ 0 1)))))

(declare-fun lt!1182692 () Unit!52638)

(assert (=> b!3475241 (= lt!1182692 lt!1182697)))

(assert (= (and d!1003589 res!1401781) b!3475239))

(assert (= (and d!1003589 c!596027) b!3475240))

(assert (= (and d!1003589 (not c!596027)) b!3475241))

(declare-fun m!3889477 () Bool)

(assert (=> d!1003589 m!3889477))

(assert (=> d!1003589 m!3889477))

(declare-fun m!3889479 () Bool)

(assert (=> d!1003589 m!3889479))

(declare-fun m!3889481 () Bool)

(assert (=> d!1003589 m!3889481))

(declare-fun m!3889483 () Bool)

(assert (=> d!1003589 m!3889483))

(assert (=> d!1003589 m!3889479))

(declare-fun m!3889485 () Bool)

(assert (=> d!1003589 m!3889485))

(assert (=> b!3475239 m!3889483))

(declare-fun m!3889487 () Bool)

(assert (=> b!3475241 m!3889487))

(declare-fun m!3889489 () Bool)

(assert (=> b!3475241 m!3889489))

(declare-fun m!3889491 () Bool)

(assert (=> b!3475241 m!3889491))

(declare-fun m!3889493 () Bool)

(assert (=> b!3475241 m!3889493))

(declare-fun m!3889495 () Bool)

(assert (=> b!3475241 m!3889495))

(declare-fun m!3889497 () Bool)

(assert (=> b!3475241 m!3889497))

(declare-fun m!3889499 () Bool)

(assert (=> b!3475241 m!3889499))

(declare-fun m!3889501 () Bool)

(assert (=> b!3475241 m!3889501))

(assert (=> b!3475241 m!3889487))

(assert (=> b!3475241 m!3889489))

(declare-fun m!3889503 () Bool)

(assert (=> b!3475241 m!3889503))

(declare-fun m!3889505 () Bool)

(assert (=> b!3475241 m!3889505))

(declare-fun m!3889507 () Bool)

(assert (=> b!3475241 m!3889507))

(assert (=> b!3475241 m!3889501))

(assert (=> b!3475241 m!3889497))

(assert (=> b!3475241 m!3889419))

(assert (=> b!3475241 m!3889493))

(declare-fun m!3889509 () Bool)

(assert (=> b!3475241 m!3889509))

(assert (=> b!3474893 d!1003589))

(declare-fun d!1003605 () Bool)

(assert (=> d!1003605 (= (list!13561 lt!1182559) (list!13565 (c!595967 lt!1182559)))))

(declare-fun bs!561660 () Bool)

(assert (= bs!561660 d!1003605))

(declare-fun m!3889511 () Bool)

(assert (=> bs!561660 m!3889511))

(assert (=> b!3474893 d!1003605))

(declare-fun d!1003607 () Bool)

(declare-fun e!2152529 () Bool)

(assert (=> d!1003607 e!2152529))

(declare-fun res!1401786 () Bool)

(assert (=> d!1003607 (=> (not res!1401786) (not e!2152529))))

(declare-fun lt!1182706 () BalanceConc!22158)

(assert (=> d!1003607 (= res!1401786 (= (list!13564 lt!1182706) (Cons!37209 (h!42629 tokens!494) Nil!37209)))))

(declare-fun singleton!1126 (Token!10262) BalanceConc!22158)

(assert (=> d!1003607 (= lt!1182706 (singleton!1126 (h!42629 tokens!494)))))

(assert (=> d!1003607 (= (singletonSeq!2544 (h!42629 tokens!494)) lt!1182706)))

(declare-fun b!3475252 () Bool)

(declare-fun isBalanced!3425 (Conc!11272) Bool)

(assert (=> b!3475252 (= e!2152529 (isBalanced!3425 (c!595968 lt!1182706)))))

(assert (= (and d!1003607 res!1401786) b!3475252))

(declare-fun m!3889539 () Bool)

(assert (=> d!1003607 m!3889539))

(declare-fun m!3889541 () Bool)

(assert (=> d!1003607 m!3889541))

(declare-fun m!3889543 () Bool)

(assert (=> b!3475252 m!3889543))

(assert (=> b!3474893 d!1003607))

(declare-fun d!1003621 () Bool)

(declare-fun c!596033 () Bool)

(assert (=> d!1003621 (= c!596033 ((_ is Cons!37209) (Cons!37209 (h!42629 tokens!494) Nil!37209)))))

(declare-fun e!2152533 () List!37331)

(assert (=> d!1003621 (= (printList!1585 thiss!18206 (Cons!37209 (h!42629 tokens!494) Nil!37209)) e!2152533)))

(declare-fun b!3475258 () Bool)

(assert (=> b!3475258 (= e!2152533 (++!9185 (list!13561 (charsOf!3462 (h!42629 (Cons!37209 (h!42629 tokens!494) Nil!37209)))) (printList!1585 thiss!18206 (t!274954 (Cons!37209 (h!42629 tokens!494) Nil!37209)))))))

(declare-fun b!3475259 () Bool)

(assert (=> b!3475259 (= e!2152533 Nil!37207)))

(assert (= (and d!1003621 c!596033) b!3475258))

(assert (= (and d!1003621 (not c!596033)) b!3475259))

(declare-fun m!3889553 () Bool)

(assert (=> b!3475258 m!3889553))

(assert (=> b!3475258 m!3889553))

(declare-fun m!3889555 () Bool)

(assert (=> b!3475258 m!3889555))

(declare-fun m!3889559 () Bool)

(assert (=> b!3475258 m!3889559))

(assert (=> b!3475258 m!3889555))

(assert (=> b!3475258 m!3889559))

(declare-fun m!3889565 () Bool)

(assert (=> b!3475258 m!3889565))

(assert (=> b!3474893 d!1003621))

(declare-fun d!1003627 () Bool)

(declare-fun res!1401791 () Bool)

(declare-fun e!2152538 () Bool)

(assert (=> d!1003627 (=> res!1401791 e!2152538)))

(assert (=> d!1003627 (= res!1401791 (not ((_ is Cons!37208) rules!2135)))))

(assert (=> d!1003627 (= (sepAndNonSepRulesDisjointChars!1642 rules!2135 rules!2135) e!2152538)))

(declare-fun b!3475264 () Bool)

(declare-fun e!2152539 () Bool)

(assert (=> b!3475264 (= e!2152538 e!2152539)))

(declare-fun res!1401792 () Bool)

(assert (=> b!3475264 (=> (not res!1401792) (not e!2152539))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!725 (Rule!10696 List!37332) Bool)

(assert (=> b!3475264 (= res!1401792 (ruleDisjointCharsFromAllFromOtherType!725 (h!42628 rules!2135) rules!2135))))

(declare-fun b!3475265 () Bool)

(assert (=> b!3475265 (= e!2152539 (sepAndNonSepRulesDisjointChars!1642 rules!2135 (t!274953 rules!2135)))))

(assert (= (and d!1003627 (not res!1401791)) b!3475264))

(assert (= (and b!3475264 res!1401792) b!3475265))

(declare-fun m!3889567 () Bool)

(assert (=> b!3475264 m!3889567))

(declare-fun m!3889569 () Bool)

(assert (=> b!3475265 m!3889569))

(assert (=> b!3474895 d!1003627))

(declare-fun b!3475266 () Bool)

(declare-fun e!2152543 () Bool)

(declare-fun e!2152541 () Bool)

(assert (=> b!3475266 (= e!2152543 e!2152541)))

(declare-fun res!1401797 () Bool)

(assert (=> b!3475266 (=> res!1401797 e!2152541)))

(declare-fun call!250751 () Bool)

(assert (=> b!3475266 (= res!1401797 call!250751)))

(declare-fun bm!250746 () Bool)

(assert (=> bm!250746 (= call!250751 (isEmpty!21576 lt!1182540))))

(declare-fun b!3475268 () Bool)

(declare-fun res!1401798 () Bool)

(declare-fun e!2152546 () Bool)

(assert (=> b!3475268 (=> res!1401798 e!2152546)))

(declare-fun e!2152545 () Bool)

(assert (=> b!3475268 (= res!1401798 e!2152545)))

(declare-fun res!1401799 () Bool)

(assert (=> b!3475268 (=> (not res!1401799) (not e!2152545))))

(declare-fun lt!1182710 () Bool)

(assert (=> b!3475268 (= res!1401799 lt!1182710)))

(declare-fun b!3475269 () Bool)

(declare-fun e!2152544 () Bool)

(assert (=> b!3475269 (= e!2152544 (nullable!3494 (regex!5448 lt!1182564)))))

(declare-fun b!3475270 () Bool)

(declare-fun e!2152540 () Bool)

(assert (=> b!3475270 (= e!2152540 (not lt!1182710))))

(declare-fun b!3475271 () Bool)

(declare-fun res!1401800 () Bool)

(assert (=> b!3475271 (=> (not res!1401800) (not e!2152545))))

(assert (=> b!3475271 (= res!1401800 (not call!250751))))

(declare-fun b!3475267 () Bool)

(assert (=> b!3475267 (= e!2152545 (= (head!7333 lt!1182540) (c!595966 (regex!5448 lt!1182564))))))

(declare-fun d!1003629 () Bool)

(declare-fun e!2152542 () Bool)

(assert (=> d!1003629 e!2152542))

(declare-fun c!596036 () Bool)

(assert (=> d!1003629 (= c!596036 ((_ is EmptyExpr!10207) (regex!5448 lt!1182564)))))

(assert (=> d!1003629 (= lt!1182710 e!2152544)))

(declare-fun c!596035 () Bool)

(assert (=> d!1003629 (= c!596035 (isEmpty!21576 lt!1182540))))

(assert (=> d!1003629 (validRegex!4650 (regex!5448 lt!1182564))))

(assert (=> d!1003629 (= (matchR!4791 (regex!5448 lt!1182564) lt!1182540) lt!1182710)))

(declare-fun b!3475272 () Bool)

(assert (=> b!3475272 (= e!2152542 (= lt!1182710 call!250751))))

(declare-fun b!3475273 () Bool)

(assert (=> b!3475273 (= e!2152546 e!2152543)))

(declare-fun res!1401795 () Bool)

(assert (=> b!3475273 (=> (not res!1401795) (not e!2152543))))

(assert (=> b!3475273 (= res!1401795 (not lt!1182710))))

(declare-fun b!3475274 () Bool)

(declare-fun res!1401794 () Bool)

(assert (=> b!3475274 (=> res!1401794 e!2152546)))

(assert (=> b!3475274 (= res!1401794 (not ((_ is ElementMatch!10207) (regex!5448 lt!1182564))))))

(assert (=> b!3475274 (= e!2152540 e!2152546)))

(declare-fun b!3475275 () Bool)

(assert (=> b!3475275 (= e!2152544 (matchR!4791 (derivativeStep!3047 (regex!5448 lt!1182564) (head!7333 lt!1182540)) (tail!5444 lt!1182540)))))

(declare-fun b!3475276 () Bool)

(declare-fun res!1401793 () Bool)

(assert (=> b!3475276 (=> res!1401793 e!2152541)))

(assert (=> b!3475276 (= res!1401793 (not (isEmpty!21576 (tail!5444 lt!1182540))))))

(declare-fun b!3475277 () Bool)

(assert (=> b!3475277 (= e!2152542 e!2152540)))

(declare-fun c!596034 () Bool)

(assert (=> b!3475277 (= c!596034 ((_ is EmptyLang!10207) (regex!5448 lt!1182564)))))

(declare-fun b!3475278 () Bool)

(assert (=> b!3475278 (= e!2152541 (not (= (head!7333 lt!1182540) (c!595966 (regex!5448 lt!1182564)))))))

(declare-fun b!3475279 () Bool)

(declare-fun res!1401796 () Bool)

(assert (=> b!3475279 (=> (not res!1401796) (not e!2152545))))

(assert (=> b!3475279 (= res!1401796 (isEmpty!21576 (tail!5444 lt!1182540)))))

(assert (= (and d!1003629 c!596035) b!3475269))

(assert (= (and d!1003629 (not c!596035)) b!3475275))

(assert (= (and d!1003629 c!596036) b!3475272))

(assert (= (and d!1003629 (not c!596036)) b!3475277))

(assert (= (and b!3475277 c!596034) b!3475270))

(assert (= (and b!3475277 (not c!596034)) b!3475274))

(assert (= (and b!3475274 (not res!1401794)) b!3475268))

(assert (= (and b!3475268 res!1401799) b!3475271))

(assert (= (and b!3475271 res!1401800) b!3475279))

(assert (= (and b!3475279 res!1401796) b!3475267))

(assert (= (and b!3475268 (not res!1401798)) b!3475273))

(assert (= (and b!3475273 res!1401795) b!3475266))

(assert (= (and b!3475266 (not res!1401797)) b!3475276))

(assert (= (and b!3475276 (not res!1401793)) b!3475278))

(assert (= (or b!3475272 b!3475266 b!3475271) bm!250746))

(assert (=> b!3475278 m!3888975))

(declare-fun m!3889571 () Bool)

(assert (=> bm!250746 m!3889571))

(assert (=> b!3475275 m!3888975))

(assert (=> b!3475275 m!3888975))

(declare-fun m!3889573 () Bool)

(assert (=> b!3475275 m!3889573))

(declare-fun m!3889575 () Bool)

(assert (=> b!3475275 m!3889575))

(assert (=> b!3475275 m!3889573))

(assert (=> b!3475275 m!3889575))

(declare-fun m!3889577 () Bool)

(assert (=> b!3475275 m!3889577))

(assert (=> d!1003629 m!3889571))

(declare-fun m!3889579 () Bool)

(assert (=> d!1003629 m!3889579))

(assert (=> b!3475267 m!3888975))

(assert (=> b!3475279 m!3889575))

(assert (=> b!3475279 m!3889575))

(declare-fun m!3889581 () Bool)

(assert (=> b!3475279 m!3889581))

(assert (=> b!3475276 m!3889575))

(assert (=> b!3475276 m!3889575))

(assert (=> b!3475276 m!3889581))

(declare-fun m!3889583 () Bool)

(assert (=> b!3475269 m!3889583))

(assert (=> b!3474874 d!1003629))

(declare-fun d!1003631 () Bool)

(assert (=> d!1003631 (= (get!11918 lt!1182533) (v!36904 lt!1182533))))

(assert (=> b!3474874 d!1003631))

(declare-fun d!1003633 () Bool)

(declare-fun res!1401805 () Bool)

(declare-fun e!2152549 () Bool)

(assert (=> d!1003633 (=> (not res!1401805) (not e!2152549))))

(assert (=> d!1003633 (= res!1401805 (not (isEmpty!21576 (originalCharacters!6162 (h!42629 tokens!494)))))))

(assert (=> d!1003633 (= (inv!50397 (h!42629 tokens!494)) e!2152549)))

(declare-fun b!3475284 () Bool)

(declare-fun res!1401806 () Bool)

(assert (=> b!3475284 (=> (not res!1401806) (not e!2152549))))

(assert (=> b!3475284 (= res!1401806 (= (originalCharacters!6162 (h!42629 tokens!494)) (list!13561 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (value!175728 (h!42629 tokens!494))))))))

(declare-fun b!3475285 () Bool)

(assert (=> b!3475285 (= e!2152549 (= (size!28241 (h!42629 tokens!494)) (size!28243 (originalCharacters!6162 (h!42629 tokens!494)))))))

(assert (= (and d!1003633 res!1401805) b!3475284))

(assert (= (and b!3475284 res!1401806) b!3475285))

(declare-fun b_lambda!100333 () Bool)

(assert (=> (not b_lambda!100333) (not b!3475284)))

(assert (=> b!3475284 t!274975))

(declare-fun b_and!245101 () Bool)

(assert (= b_and!245083 (and (=> t!274975 result!234530) b_and!245101)))

(assert (=> b!3475284 t!274977))

(declare-fun b_and!245103 () Bool)

(assert (= b_and!245085 (and (=> t!274977 result!234534) b_and!245103)))

(assert (=> b!3475284 t!274979))

(declare-fun b_and!245105 () Bool)

(assert (= b_and!245087 (and (=> t!274979 result!234536) b_and!245105)))

(declare-fun m!3889585 () Bool)

(assert (=> d!1003633 m!3889585))

(assert (=> b!3475284 m!3889389))

(assert (=> b!3475284 m!3889389))

(declare-fun m!3889587 () Bool)

(assert (=> b!3475284 m!3889587))

(declare-fun m!3889589 () Bool)

(assert (=> b!3475285 m!3889589))

(assert (=> b!3474916 d!1003633))

(declare-fun b!3475286 () Bool)

(declare-fun e!2152553 () Bool)

(declare-fun e!2152551 () Bool)

(assert (=> b!3475286 (= e!2152553 e!2152551)))

(declare-fun res!1401811 () Bool)

(assert (=> b!3475286 (=> res!1401811 e!2152551)))

(declare-fun call!250752 () Bool)

(assert (=> b!3475286 (= res!1401811 call!250752)))

(declare-fun bm!250747 () Bool)

(assert (=> bm!250747 (= call!250752 (isEmpty!21576 lt!1182557))))

(declare-fun b!3475288 () Bool)

(declare-fun res!1401812 () Bool)

(declare-fun e!2152556 () Bool)

(assert (=> b!3475288 (=> res!1401812 e!2152556)))

(declare-fun e!2152555 () Bool)

(assert (=> b!3475288 (= res!1401812 e!2152555)))

(declare-fun res!1401813 () Bool)

(assert (=> b!3475288 (=> (not res!1401813) (not e!2152555))))

(declare-fun lt!1182711 () Bool)

(assert (=> b!3475288 (= res!1401813 lt!1182711)))

(declare-fun b!3475289 () Bool)

(declare-fun e!2152554 () Bool)

(assert (=> b!3475289 (= e!2152554 (nullable!3494 (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475290 () Bool)

(declare-fun e!2152550 () Bool)

(assert (=> b!3475290 (= e!2152550 (not lt!1182711))))

(declare-fun b!3475291 () Bool)

(declare-fun res!1401814 () Bool)

(assert (=> b!3475291 (=> (not res!1401814) (not e!2152555))))

(assert (=> b!3475291 (= res!1401814 (not call!250752))))

(declare-fun b!3475287 () Bool)

(assert (=> b!3475287 (= e!2152555 (= (head!7333 lt!1182557) (c!595966 (regex!5448 (rule!8044 (h!42629 tokens!494))))))))

(declare-fun d!1003635 () Bool)

(declare-fun e!2152552 () Bool)

(assert (=> d!1003635 e!2152552))

(declare-fun c!596039 () Bool)

(assert (=> d!1003635 (= c!596039 ((_ is EmptyExpr!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(assert (=> d!1003635 (= lt!1182711 e!2152554)))

(declare-fun c!596038 () Bool)

(assert (=> d!1003635 (= c!596038 (isEmpty!21576 lt!1182557))))

(assert (=> d!1003635 (validRegex!4650 (regex!5448 (rule!8044 (h!42629 tokens!494))))))

(assert (=> d!1003635 (= (matchR!4791 (regex!5448 (rule!8044 (h!42629 tokens!494))) lt!1182557) lt!1182711)))

(declare-fun b!3475292 () Bool)

(assert (=> b!3475292 (= e!2152552 (= lt!1182711 call!250752))))

(declare-fun b!3475293 () Bool)

(assert (=> b!3475293 (= e!2152556 e!2152553)))

(declare-fun res!1401809 () Bool)

(assert (=> b!3475293 (=> (not res!1401809) (not e!2152553))))

(assert (=> b!3475293 (= res!1401809 (not lt!1182711))))

(declare-fun b!3475294 () Bool)

(declare-fun res!1401808 () Bool)

(assert (=> b!3475294 (=> res!1401808 e!2152556)))

(assert (=> b!3475294 (= res!1401808 (not ((_ is ElementMatch!10207) (regex!5448 (rule!8044 (h!42629 tokens!494))))))))

(assert (=> b!3475294 (= e!2152550 e!2152556)))

(declare-fun b!3475295 () Bool)

(assert (=> b!3475295 (= e!2152554 (matchR!4791 (derivativeStep!3047 (regex!5448 (rule!8044 (h!42629 tokens!494))) (head!7333 lt!1182557)) (tail!5444 lt!1182557)))))

(declare-fun b!3475296 () Bool)

(declare-fun res!1401807 () Bool)

(assert (=> b!3475296 (=> res!1401807 e!2152551)))

(assert (=> b!3475296 (= res!1401807 (not (isEmpty!21576 (tail!5444 lt!1182557))))))

(declare-fun b!3475297 () Bool)

(assert (=> b!3475297 (= e!2152552 e!2152550)))

(declare-fun c!596037 () Bool)

(assert (=> b!3475297 (= c!596037 ((_ is EmptyLang!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475298 () Bool)

(assert (=> b!3475298 (= e!2152551 (not (= (head!7333 lt!1182557) (c!595966 (regex!5448 (rule!8044 (h!42629 tokens!494)))))))))

(declare-fun b!3475299 () Bool)

(declare-fun res!1401810 () Bool)

(assert (=> b!3475299 (=> (not res!1401810) (not e!2152555))))

(assert (=> b!3475299 (= res!1401810 (isEmpty!21576 (tail!5444 lt!1182557)))))

(assert (= (and d!1003635 c!596038) b!3475289))

(assert (= (and d!1003635 (not c!596038)) b!3475295))

(assert (= (and d!1003635 c!596039) b!3475292))

(assert (= (and d!1003635 (not c!596039)) b!3475297))

(assert (= (and b!3475297 c!596037) b!3475290))

(assert (= (and b!3475297 (not c!596037)) b!3475294))

(assert (= (and b!3475294 (not res!1401808)) b!3475288))

(assert (= (and b!3475288 res!1401813) b!3475291))

(assert (= (and b!3475291 res!1401814) b!3475299))

(assert (= (and b!3475299 res!1401810) b!3475287))

(assert (= (and b!3475288 (not res!1401812)) b!3475293))

(assert (= (and b!3475293 res!1401809) b!3475286))

(assert (= (and b!3475286 (not res!1401811)) b!3475296))

(assert (= (and b!3475296 (not res!1401807)) b!3475298))

(assert (= (or b!3475292 b!3475286 b!3475291) bm!250747))

(assert (=> b!3475298 m!3889111))

(assert (=> bm!250747 m!3889113))

(assert (=> b!3475295 m!3889111))

(assert (=> b!3475295 m!3889111))

(declare-fun m!3889591 () Bool)

(assert (=> b!3475295 m!3889591))

(assert (=> b!3475295 m!3889117))

(assert (=> b!3475295 m!3889591))

(assert (=> b!3475295 m!3889117))

(declare-fun m!3889593 () Bool)

(assert (=> b!3475295 m!3889593))

(assert (=> d!1003635 m!3889113))

(declare-fun m!3889595 () Bool)

(assert (=> d!1003635 m!3889595))

(assert (=> b!3475287 m!3889111))

(assert (=> b!3475299 m!3889117))

(assert (=> b!3475299 m!3889117))

(assert (=> b!3475299 m!3889123))

(assert (=> b!3475296 m!3889117))

(assert (=> b!3475296 m!3889117))

(assert (=> b!3475296 m!3889123))

(declare-fun m!3889597 () Bool)

(assert (=> b!3475289 m!3889597))

(assert (=> b!3474891 d!1003635))

(declare-fun d!1003637 () Bool)

(declare-fun res!1401819 () Bool)

(declare-fun e!2152559 () Bool)

(assert (=> d!1003637 (=> (not res!1401819) (not e!2152559))))

(assert (=> d!1003637 (= res!1401819 (validRegex!4650 (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(assert (=> d!1003637 (= (ruleValid!1746 thiss!18206 (rule!8044 (h!42629 tokens!494))) e!2152559)))

(declare-fun b!3475304 () Bool)

(declare-fun res!1401820 () Bool)

(assert (=> b!3475304 (=> (not res!1401820) (not e!2152559))))

(assert (=> b!3475304 (= res!1401820 (not (nullable!3494 (regex!5448 (rule!8044 (h!42629 tokens!494))))))))

(declare-fun b!3475305 () Bool)

(assert (=> b!3475305 (= e!2152559 (not (= (tag!6062 (rule!8044 (h!42629 tokens!494))) (String!41725 ""))))))

(assert (= (and d!1003637 res!1401819) b!3475304))

(assert (= (and b!3475304 res!1401820) b!3475305))

(assert (=> d!1003637 m!3889595))

(assert (=> b!3475304 m!3889597))

(assert (=> b!3474891 d!1003637))

(declare-fun d!1003639 () Bool)

(assert (=> d!1003639 (ruleValid!1746 thiss!18206 (rule!8044 (h!42629 tokens!494)))))

(declare-fun lt!1182714 () Unit!52638)

(declare-fun choose!20102 (LexerInterface!5037 Rule!10696 List!37332) Unit!52638)

(assert (=> d!1003639 (= lt!1182714 (choose!20102 thiss!18206 (rule!8044 (h!42629 tokens!494)) rules!2135))))

(assert (=> d!1003639 (contains!6919 rules!2135 (rule!8044 (h!42629 tokens!494)))))

(assert (=> d!1003639 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!946 thiss!18206 (rule!8044 (h!42629 tokens!494)) rules!2135) lt!1182714)))

(declare-fun bs!561664 () Bool)

(assert (= bs!561664 d!1003639))

(assert (=> bs!561664 m!3888983))

(declare-fun m!3889599 () Bool)

(assert (=> bs!561664 m!3889599))

(assert (=> bs!561664 m!3888943))

(assert (=> b!3474891 d!1003639))

(declare-fun d!1003641 () Bool)

(assert (=> d!1003641 (= (inv!50393 (tag!6062 (rule!8044 (h!42629 tokens!494)))) (= (mod (str.len (value!175727 (tag!6062 (rule!8044 (h!42629 tokens!494))))) 2) 0))))

(assert (=> b!3474912 d!1003641))

(declare-fun d!1003643 () Bool)

(declare-fun res!1401821 () Bool)

(declare-fun e!2152560 () Bool)

(assert (=> d!1003643 (=> (not res!1401821) (not e!2152560))))

(assert (=> d!1003643 (= res!1401821 (semiInverseModEq!2288 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))))))

(assert (=> d!1003643 (= (inv!50396 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) e!2152560)))

(declare-fun b!3475306 () Bool)

(assert (=> b!3475306 (= e!2152560 (equivClasses!2187 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))))))

(assert (= (and d!1003643 res!1401821) b!3475306))

(declare-fun m!3889601 () Bool)

(assert (=> d!1003643 m!3889601))

(declare-fun m!3889603 () Bool)

(assert (=> b!3475306 m!3889603))

(assert (=> b!3474912 d!1003643))

(declare-fun d!1003645 () Bool)

(declare-fun res!1401822 () Bool)

(declare-fun e!2152561 () Bool)

(assert (=> d!1003645 (=> (not res!1401822) (not e!2152561))))

(assert (=> d!1003645 (= res!1401822 (not (isEmpty!21576 (originalCharacters!6162 separatorToken!241))))))

(assert (=> d!1003645 (= (inv!50397 separatorToken!241) e!2152561)))

(declare-fun b!3475307 () Bool)

(declare-fun res!1401823 () Bool)

(assert (=> b!3475307 (=> (not res!1401823) (not e!2152561))))

(assert (=> b!3475307 (= res!1401823 (= (originalCharacters!6162 separatorToken!241) (list!13561 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (value!175728 separatorToken!241)))))))

(declare-fun b!3475308 () Bool)

(assert (=> b!3475308 (= e!2152561 (= (size!28241 separatorToken!241) (size!28243 (originalCharacters!6162 separatorToken!241))))))

(assert (= (and d!1003645 res!1401822) b!3475307))

(assert (= (and b!3475307 res!1401823) b!3475308))

(declare-fun b_lambda!100335 () Bool)

(assert (=> (not b_lambda!100335) (not b!3475307)))

(declare-fun t!274992 () Bool)

(declare-fun tb!190495 () Bool)

(assert (=> (and b!3474887 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241)))) t!274992) tb!190495))

(declare-fun b!3475309 () Bool)

(declare-fun e!2152562 () Bool)

(declare-fun tp!1080291 () Bool)

(assert (=> b!3475309 (= e!2152562 (and (inv!50400 (c!595967 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (value!175728 separatorToken!241)))) tp!1080291))))

(declare-fun result!234544 () Bool)

(assert (=> tb!190495 (= result!234544 (and (inv!50401 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (value!175728 separatorToken!241))) e!2152562))))

(assert (= tb!190495 b!3475309))

(declare-fun m!3889605 () Bool)

(assert (=> b!3475309 m!3889605))

(declare-fun m!3889607 () Bool)

(assert (=> tb!190495 m!3889607))

(assert (=> b!3475307 t!274992))

(declare-fun b_and!245107 () Bool)

(assert (= b_and!245101 (and (=> t!274992 result!234544) b_and!245107)))

(declare-fun t!274994 () Bool)

(declare-fun tb!190497 () Bool)

(assert (=> (and b!3474896 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241)))) t!274994) tb!190497))

(declare-fun result!234546 () Bool)

(assert (= result!234546 result!234544))

(assert (=> b!3475307 t!274994))

(declare-fun b_and!245109 () Bool)

(assert (= b_and!245103 (and (=> t!274994 result!234546) b_and!245109)))

(declare-fun tb!190499 () Bool)

(declare-fun t!274996 () Bool)

(assert (=> (and b!3474906 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241)))) t!274996) tb!190499))

(declare-fun result!234548 () Bool)

(assert (= result!234548 result!234544))

(assert (=> b!3475307 t!274996))

(declare-fun b_and!245111 () Bool)

(assert (= b_and!245105 (and (=> t!274996 result!234548) b_and!245111)))

(declare-fun m!3889609 () Bool)

(assert (=> d!1003645 m!3889609))

(declare-fun m!3889611 () Bool)

(assert (=> b!3475307 m!3889611))

(assert (=> b!3475307 m!3889611))

(declare-fun m!3889613 () Bool)

(assert (=> b!3475307 m!3889613))

(declare-fun m!3889615 () Bool)

(assert (=> b!3475308 m!3889615))

(assert (=> start!323122 d!1003645))

(declare-fun d!1003647 () Bool)

(declare-fun c!596042 () Bool)

(assert (=> d!1003647 (= c!596042 ((_ is Cons!37209) tokens!494))))

(declare-fun e!2152565 () List!37331)

(assert (=> d!1003647 (= (printWithSeparatorTokenList!324 thiss!18206 tokens!494 separatorToken!241) e!2152565)))

(declare-fun b!3475314 () Bool)

(assert (=> b!3475314 (= e!2152565 (++!9185 (++!9185 (list!13561 (charsOf!3462 (h!42629 tokens!494))) (list!13561 (charsOf!3462 separatorToken!241))) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 tokens!494) separatorToken!241)))))

(declare-fun b!3475315 () Bool)

(assert (=> b!3475315 (= e!2152565 Nil!37207)))

(assert (= (and d!1003647 c!596042) b!3475314))

(assert (= (and d!1003647 (not c!596042)) b!3475315))

(assert (=> b!3475314 m!3889009))

(assert (=> b!3475314 m!3889011))

(assert (=> b!3475314 m!3889031))

(assert (=> b!3475314 m!3889031))

(assert (=> b!3475314 m!3889043))

(assert (=> b!3475314 m!3889009))

(declare-fun m!3889617 () Bool)

(assert (=> b!3475314 m!3889617))

(assert (=> b!3475314 m!3889035))

(declare-fun m!3889619 () Bool)

(assert (=> b!3475314 m!3889619))

(assert (=> b!3475314 m!3889035))

(assert (=> b!3475314 m!3889011))

(assert (=> b!3475314 m!3889043))

(assert (=> b!3475314 m!3889617))

(assert (=> b!3474913 d!1003647))

(declare-fun d!1003649 () Bool)

(declare-fun e!2152566 () Bool)

(assert (=> d!1003649 e!2152566))

(declare-fun res!1401824 () Bool)

(assert (=> d!1003649 (=> (not res!1401824) (not e!2152566))))

(declare-fun lt!1182715 () List!37331)

(assert (=> d!1003649 (= res!1401824 (= (content!5202 lt!1182715) ((_ map or) (content!5202 lt!1182540) (content!5202 lt!1182566))))))

(declare-fun e!2152567 () List!37331)

(assert (=> d!1003649 (= lt!1182715 e!2152567)))

(declare-fun c!596043 () Bool)

(assert (=> d!1003649 (= c!596043 ((_ is Nil!37207) lt!1182540))))

(assert (=> d!1003649 (= (++!9185 lt!1182540 lt!1182566) lt!1182715)))

(declare-fun b!3475318 () Bool)

(declare-fun res!1401825 () Bool)

(assert (=> b!3475318 (=> (not res!1401825) (not e!2152566))))

(assert (=> b!3475318 (= res!1401825 (= (size!28243 lt!1182715) (+ (size!28243 lt!1182540) (size!28243 lt!1182566))))))

(declare-fun b!3475317 () Bool)

(assert (=> b!3475317 (= e!2152567 (Cons!37207 (h!42627 lt!1182540) (++!9185 (t!274952 lt!1182540) lt!1182566)))))

(declare-fun b!3475319 () Bool)

(assert (=> b!3475319 (= e!2152566 (or (not (= lt!1182566 Nil!37207)) (= lt!1182715 lt!1182540)))))

(declare-fun b!3475316 () Bool)

(assert (=> b!3475316 (= e!2152567 lt!1182566)))

(assert (= (and d!1003649 c!596043) b!3475316))

(assert (= (and d!1003649 (not c!596043)) b!3475317))

(assert (= (and d!1003649 res!1401824) b!3475318))

(assert (= (and b!3475318 res!1401825) b!3475319))

(declare-fun m!3889621 () Bool)

(assert (=> d!1003649 m!3889621))

(declare-fun m!3889623 () Bool)

(assert (=> d!1003649 m!3889623))

(declare-fun m!3889625 () Bool)

(assert (=> d!1003649 m!3889625))

(declare-fun m!3889627 () Bool)

(assert (=> b!3475318 m!3889627))

(declare-fun m!3889629 () Bool)

(assert (=> b!3475318 m!3889629))

(declare-fun m!3889631 () Bool)

(assert (=> b!3475318 m!3889631))

(declare-fun m!3889633 () Bool)

(assert (=> b!3475317 m!3889633))

(assert (=> b!3474913 d!1003649))

(declare-fun d!1003651 () Bool)

(declare-fun e!2152568 () Bool)

(assert (=> d!1003651 e!2152568))

(declare-fun res!1401826 () Bool)

(assert (=> d!1003651 (=> (not res!1401826) (not e!2152568))))

(declare-fun lt!1182716 () List!37331)

(assert (=> d!1003651 (= res!1401826 (= (content!5202 lt!1182716) ((_ map or) (content!5202 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540)) (content!5202 (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241)))))))

(declare-fun e!2152569 () List!37331)

(assert (=> d!1003651 (= lt!1182716 e!2152569)))

(declare-fun c!596044 () Bool)

(assert (=> d!1003651 (= c!596044 ((_ is Nil!37207) (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540)))))

(assert (=> d!1003651 (= (++!9185 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241)) lt!1182716)))

(declare-fun b!3475322 () Bool)

(declare-fun res!1401827 () Bool)

(assert (=> b!3475322 (=> (not res!1401827) (not e!2152568))))

(assert (=> b!3475322 (= res!1401827 (= (size!28243 lt!1182716) (+ (size!28243 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540)) (size!28243 (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241)))))))

(declare-fun b!3475321 () Bool)

(assert (=> b!3475321 (= e!2152569 (Cons!37207 (h!42627 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540)) (++!9185 (t!274952 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540)) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241))))))

(declare-fun b!3475323 () Bool)

(assert (=> b!3475323 (= e!2152568 (or (not (= (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241) Nil!37207)) (= lt!1182716 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540))))))

(declare-fun b!3475320 () Bool)

(assert (=> b!3475320 (= e!2152569 (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241))))

(assert (= (and d!1003651 c!596044) b!3475320))

(assert (= (and d!1003651 (not c!596044)) b!3475321))

(assert (= (and d!1003651 res!1401826) b!3475322))

(assert (= (and b!3475322 res!1401827) b!3475323))

(declare-fun m!3889635 () Bool)

(assert (=> d!1003651 m!3889635))

(assert (=> d!1003651 m!3889027))

(declare-fun m!3889637 () Bool)

(assert (=> d!1003651 m!3889637))

(assert (=> d!1003651 m!3889037))

(declare-fun m!3889639 () Bool)

(assert (=> d!1003651 m!3889639))

(declare-fun m!3889641 () Bool)

(assert (=> b!3475322 m!3889641))

(assert (=> b!3475322 m!3889027))

(declare-fun m!3889643 () Bool)

(assert (=> b!3475322 m!3889643))

(assert (=> b!3475322 m!3889037))

(declare-fun m!3889645 () Bool)

(assert (=> b!3475322 m!3889645))

(assert (=> b!3475321 m!3889037))

(declare-fun m!3889647 () Bool)

(assert (=> b!3475321 m!3889647))

(assert (=> b!3474913 d!1003651))

(declare-fun d!1003653 () Bool)

(declare-fun e!2152570 () Bool)

(assert (=> d!1003653 e!2152570))

(declare-fun res!1401828 () Bool)

(assert (=> d!1003653 (=> (not res!1401828) (not e!2152570))))

(declare-fun lt!1182717 () List!37331)

(assert (=> d!1003653 (= res!1401828 (= (content!5202 lt!1182717) ((_ map or) (content!5202 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494))))) (content!5202 lt!1182540))))))

(declare-fun e!2152571 () List!37331)

(assert (=> d!1003653 (= lt!1182717 e!2152571)))

(declare-fun c!596045 () Bool)

(assert (=> d!1003653 (= c!596045 ((_ is Nil!37207) (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494))))))))

(assert (=> d!1003653 (= (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) lt!1182540) lt!1182717)))

(declare-fun b!3475326 () Bool)

(declare-fun res!1401829 () Bool)

(assert (=> b!3475326 (=> (not res!1401829) (not e!2152570))))

(assert (=> b!3475326 (= res!1401829 (= (size!28243 lt!1182717) (+ (size!28243 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494))))) (size!28243 lt!1182540))))))

(declare-fun b!3475325 () Bool)

(assert (=> b!3475325 (= e!2152571 (Cons!37207 (h!42627 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494))))) (++!9185 (t!274952 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494))))) lt!1182540)))))

(declare-fun b!3475327 () Bool)

(assert (=> b!3475327 (= e!2152570 (or (not (= lt!1182540 Nil!37207)) (= lt!1182717 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))))))))

(declare-fun b!3475324 () Bool)

(assert (=> b!3475324 (= e!2152571 lt!1182540)))

(assert (= (and d!1003653 c!596045) b!3475324))

(assert (= (and d!1003653 (not c!596045)) b!3475325))

(assert (= (and d!1003653 res!1401828) b!3475326))

(assert (= (and b!3475326 res!1401829) b!3475327))

(declare-fun m!3889649 () Bool)

(assert (=> d!1003653 m!3889649))

(assert (=> d!1003653 m!3889025))

(declare-fun m!3889651 () Bool)

(assert (=> d!1003653 m!3889651))

(assert (=> d!1003653 m!3889623))

(declare-fun m!3889653 () Bool)

(assert (=> b!3475326 m!3889653))

(assert (=> b!3475326 m!3889025))

(declare-fun m!3889655 () Bool)

(assert (=> b!3475326 m!3889655))

(assert (=> b!3475326 m!3889629))

(declare-fun m!3889657 () Bool)

(assert (=> b!3475325 m!3889657))

(assert (=> b!3474913 d!1003653))

(declare-fun d!1003655 () Bool)

(declare-fun lt!1182718 () BalanceConc!22156)

(assert (=> d!1003655 (= (list!13561 lt!1182718) (originalCharacters!6162 separatorToken!241))))

(assert (=> d!1003655 (= lt!1182718 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (value!175728 separatorToken!241)))))

(assert (=> d!1003655 (= (charsOf!3462 separatorToken!241) lt!1182718)))

(declare-fun b_lambda!100337 () Bool)

(assert (=> (not b_lambda!100337) (not d!1003655)))

(assert (=> d!1003655 t!274992))

(declare-fun b_and!245113 () Bool)

(assert (= b_and!245107 (and (=> t!274992 result!234544) b_and!245113)))

(assert (=> d!1003655 t!274994))

(declare-fun b_and!245115 () Bool)

(assert (= b_and!245109 (and (=> t!274994 result!234546) b_and!245115)))

(assert (=> d!1003655 t!274996))

(declare-fun b_and!245117 () Bool)

(assert (= b_and!245111 (and (=> t!274996 result!234548) b_and!245117)))

(declare-fun m!3889659 () Bool)

(assert (=> d!1003655 m!3889659))

(assert (=> d!1003655 m!3889611))

(assert (=> b!3474913 d!1003655))

(declare-fun d!1003657 () Bool)

(assert (=> d!1003657 (= (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) (list!13565 (c!595967 (charsOf!3462 (h!42629 (t!274954 tokens!494))))))))

(declare-fun bs!561665 () Bool)

(assert (= bs!561665 d!1003657))

(declare-fun m!3889661 () Bool)

(assert (=> bs!561665 m!3889661))

(assert (=> b!3474913 d!1003657))

(declare-fun d!1003659 () Bool)

(declare-fun c!596046 () Bool)

(assert (=> d!1003659 (= c!596046 ((_ is Cons!37209) (t!274954 (t!274954 tokens!494))))))

(declare-fun e!2152572 () List!37331)

(assert (=> d!1003659 (= (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241) e!2152572)))

(declare-fun b!3475328 () Bool)

(assert (=> b!3475328 (= e!2152572 (++!9185 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 (t!274954 tokens!494))))) (list!13561 (charsOf!3462 separatorToken!241))) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 (t!274954 tokens!494))) separatorToken!241)))))

(declare-fun b!3475329 () Bool)

(assert (=> b!3475329 (= e!2152572 Nil!37207)))

(assert (= (and d!1003659 c!596046) b!3475328))

(assert (= (and d!1003659 (not c!596046)) b!3475329))

(declare-fun m!3889663 () Bool)

(assert (=> b!3475328 m!3889663))

(declare-fun m!3889665 () Bool)

(assert (=> b!3475328 m!3889665))

(assert (=> b!3475328 m!3889031))

(assert (=> b!3475328 m!3889031))

(assert (=> b!3475328 m!3889043))

(assert (=> b!3475328 m!3889663))

(declare-fun m!3889667 () Bool)

(assert (=> b!3475328 m!3889667))

(declare-fun m!3889669 () Bool)

(assert (=> b!3475328 m!3889669))

(declare-fun m!3889671 () Bool)

(assert (=> b!3475328 m!3889671))

(assert (=> b!3475328 m!3889669))

(assert (=> b!3475328 m!3889665))

(assert (=> b!3475328 m!3889043))

(assert (=> b!3475328 m!3889667))

(assert (=> b!3474913 d!1003659))

(declare-fun d!1003661 () Bool)

(declare-fun c!596047 () Bool)

(assert (=> d!1003661 (= c!596047 ((_ is Cons!37209) (t!274954 tokens!494)))))

(declare-fun e!2152573 () List!37331)

(assert (=> d!1003661 (= (printWithSeparatorTokenList!324 thiss!18206 (t!274954 tokens!494) separatorToken!241) e!2152573)))

(declare-fun b!3475330 () Bool)

(assert (=> b!3475330 (= e!2152573 (++!9185 (++!9185 (list!13561 (charsOf!3462 (h!42629 (t!274954 tokens!494)))) (list!13561 (charsOf!3462 separatorToken!241))) (printWithSeparatorTokenList!324 thiss!18206 (t!274954 (t!274954 tokens!494)) separatorToken!241)))))

(declare-fun b!3475331 () Bool)

(assert (=> b!3475331 (= e!2152573 Nil!37207)))

(assert (= (and d!1003661 c!596047) b!3475330))

(assert (= (and d!1003661 (not c!596047)) b!3475331))

(assert (=> b!3475330 m!3889029))

(assert (=> b!3475330 m!3889025))

(assert (=> b!3475330 m!3889031))

(assert (=> b!3475330 m!3889031))

(assert (=> b!3475330 m!3889043))

(assert (=> b!3475330 m!3889029))

(declare-fun m!3889673 () Bool)

(assert (=> b!3475330 m!3889673))

(assert (=> b!3475330 m!3889037))

(declare-fun m!3889675 () Bool)

(assert (=> b!3475330 m!3889675))

(assert (=> b!3475330 m!3889037))

(assert (=> b!3475330 m!3889025))

(assert (=> b!3475330 m!3889043))

(assert (=> b!3475330 m!3889673))

(assert (=> b!3474913 d!1003661))

(declare-fun d!1003663 () Bool)

(assert (=> d!1003663 (= (list!13561 (charsOf!3462 separatorToken!241)) (list!13565 (c!595967 (charsOf!3462 separatorToken!241))))))

(declare-fun bs!561666 () Bool)

(assert (= bs!561666 d!1003663))

(declare-fun m!3889677 () Bool)

(assert (=> bs!561666 m!3889677))

(assert (=> b!3474913 d!1003663))

(declare-fun d!1003665 () Bool)

(declare-fun lt!1182719 () BalanceConc!22156)

(assert (=> d!1003665 (= (list!13561 lt!1182719) (originalCharacters!6162 (h!42629 (t!274954 tokens!494))))))

(assert (=> d!1003665 (= lt!1182719 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (value!175728 (h!42629 (t!274954 tokens!494)))))))

(assert (=> d!1003665 (= (charsOf!3462 (h!42629 (t!274954 tokens!494))) lt!1182719)))

(declare-fun b_lambda!100339 () Bool)

(assert (=> (not b_lambda!100339) (not d!1003665)))

(declare-fun t!274998 () Bool)

(declare-fun tb!190501 () Bool)

(assert (=> (and b!3474887 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494)))))) t!274998) tb!190501))

(declare-fun b!3475332 () Bool)

(declare-fun e!2152574 () Bool)

(declare-fun tp!1080292 () Bool)

(assert (=> b!3475332 (= e!2152574 (and (inv!50400 (c!595967 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (value!175728 (h!42629 (t!274954 tokens!494)))))) tp!1080292))))

(declare-fun result!234550 () Bool)

(assert (=> tb!190501 (= result!234550 (and (inv!50401 (dynLambda!15718 (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (value!175728 (h!42629 (t!274954 tokens!494))))) e!2152574))))

(assert (= tb!190501 b!3475332))

(declare-fun m!3889679 () Bool)

(assert (=> b!3475332 m!3889679))

(declare-fun m!3889681 () Bool)

(assert (=> tb!190501 m!3889681))

(assert (=> d!1003665 t!274998))

(declare-fun b_and!245119 () Bool)

(assert (= b_and!245113 (and (=> t!274998 result!234550) b_and!245119)))

(declare-fun tb!190503 () Bool)

(declare-fun t!275000 () Bool)

(assert (=> (and b!3474896 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494)))))) t!275000) tb!190503))

(declare-fun result!234552 () Bool)

(assert (= result!234552 result!234550))

(assert (=> d!1003665 t!275000))

(declare-fun b_and!245121 () Bool)

(assert (= b_and!245115 (and (=> t!275000 result!234552) b_and!245121)))

(declare-fun t!275002 () Bool)

(declare-fun tb!190505 () Bool)

(assert (=> (and b!3474906 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494)))))) t!275002) tb!190505))

(declare-fun result!234554 () Bool)

(assert (= result!234554 result!234550))

(assert (=> d!1003665 t!275002))

(declare-fun b_and!245123 () Bool)

(assert (= b_and!245117 (and (=> t!275002 result!234554) b_and!245123)))

(declare-fun m!3889683 () Bool)

(assert (=> d!1003665 m!3889683))

(declare-fun m!3889685 () Bool)

(assert (=> d!1003665 m!3889685))

(assert (=> b!3474913 d!1003665))

(declare-fun d!1003667 () Bool)

(declare-fun lt!1182720 () Token!10262)

(assert (=> d!1003667 (= lt!1182720 (apply!8788 (list!13564 (_1!21611 lt!1182545)) 0))))

(assert (=> d!1003667 (= lt!1182720 (apply!8789 (c!595968 (_1!21611 lt!1182545)) 0))))

(declare-fun e!2152575 () Bool)

(assert (=> d!1003667 e!2152575))

(declare-fun res!1401830 () Bool)

(assert (=> d!1003667 (=> (not res!1401830) (not e!2152575))))

(assert (=> d!1003667 (= res!1401830 (<= 0 0))))

(assert (=> d!1003667 (= (apply!8784 (_1!21611 lt!1182545) 0) lt!1182720)))

(declare-fun b!3475333 () Bool)

(assert (=> b!3475333 (= e!2152575 (< 0 (size!28242 (_1!21611 lt!1182545))))))

(assert (= (and d!1003667 res!1401830) b!3475333))

(declare-fun m!3889687 () Bool)

(assert (=> d!1003667 m!3889687))

(assert (=> d!1003667 m!3889687))

(declare-fun m!3889689 () Bool)

(assert (=> d!1003667 m!3889689))

(declare-fun m!3889691 () Bool)

(assert (=> d!1003667 m!3889691))

(assert (=> b!3475333 m!3888973))

(assert (=> b!3474892 d!1003667))

(declare-fun d!1003669 () Bool)

(declare-fun lt!1182721 () Bool)

(assert (=> d!1003669 (= lt!1182721 (isEmpty!21576 (list!13561 (_2!21611 lt!1182545))))))

(assert (=> d!1003669 (= lt!1182721 (isEmpty!21581 (c!595967 (_2!21611 lt!1182545))))))

(assert (=> d!1003669 (= (isEmpty!21578 (_2!21611 lt!1182545)) lt!1182721)))

(declare-fun bs!561667 () Bool)

(assert (= bs!561667 d!1003669))

(declare-fun m!3889693 () Bool)

(assert (=> bs!561667 m!3889693))

(assert (=> bs!561667 m!3889693))

(declare-fun m!3889695 () Bool)

(assert (=> bs!561667 m!3889695))

(declare-fun m!3889697 () Bool)

(assert (=> bs!561667 m!3889697))

(assert (=> b!3474910 d!1003669))

(declare-fun d!1003671 () Bool)

(declare-fun isEmpty!21585 (Option!7550) Bool)

(assert (=> d!1003671 (= (isDefined!5813 lt!1182534) (not (isEmpty!21585 lt!1182534)))))

(declare-fun bs!561668 () Bool)

(assert (= bs!561668 d!1003671))

(declare-fun m!3889699 () Bool)

(assert (=> bs!561668 m!3889699))

(assert (=> b!3474888 d!1003671))

(declare-fun b!3475352 () Bool)

(declare-fun e!2152582 () Option!7550)

(declare-fun call!250755 () Option!7550)

(assert (=> b!3475352 (= e!2152582 call!250755)))

(declare-fun bm!250750 () Bool)

(assert (=> bm!250750 (= call!250755 (maxPrefixOneRule!1744 thiss!18206 (h!42628 rules!2135) lt!1182557))))

(declare-fun b!3475353 () Bool)

(declare-fun res!1401848 () Bool)

(declare-fun e!2152584 () Bool)

(assert (=> b!3475353 (=> (not res!1401848) (not e!2152584))))

(declare-fun lt!1182733 () Option!7550)

(assert (=> b!3475353 (= res!1401848 (= (++!9185 (list!13561 (charsOf!3462 (_1!21610 (get!11919 lt!1182733)))) (_2!21610 (get!11919 lt!1182733))) lt!1182557))))

(declare-fun b!3475354 () Bool)

(declare-fun res!1401850 () Bool)

(assert (=> b!3475354 (=> (not res!1401850) (not e!2152584))))

(assert (=> b!3475354 (= res!1401850 (= (value!175728 (_1!21610 (get!11919 lt!1182733))) (apply!8785 (transformation!5448 (rule!8044 (_1!21610 (get!11919 lt!1182733)))) (seqFromList!3950 (originalCharacters!6162 (_1!21610 (get!11919 lt!1182733)))))))))

(declare-fun b!3475355 () Bool)

(declare-fun res!1401849 () Bool)

(assert (=> b!3475355 (=> (not res!1401849) (not e!2152584))))

(assert (=> b!3475355 (= res!1401849 (matchR!4791 (regex!5448 (rule!8044 (_1!21610 (get!11919 lt!1182733)))) (list!13561 (charsOf!3462 (_1!21610 (get!11919 lt!1182733))))))))

(declare-fun b!3475356 () Bool)

(declare-fun res!1401845 () Bool)

(assert (=> b!3475356 (=> (not res!1401845) (not e!2152584))))

(assert (=> b!3475356 (= res!1401845 (= (list!13561 (charsOf!3462 (_1!21610 (get!11919 lt!1182733)))) (originalCharacters!6162 (_1!21610 (get!11919 lt!1182733)))))))

(declare-fun b!3475357 () Bool)

(declare-fun lt!1182735 () Option!7550)

(declare-fun lt!1182732 () Option!7550)

(assert (=> b!3475357 (= e!2152582 (ite (and ((_ is None!7549) lt!1182735) ((_ is None!7549) lt!1182732)) None!7549 (ite ((_ is None!7549) lt!1182732) lt!1182735 (ite ((_ is None!7549) lt!1182735) lt!1182732 (ite (>= (size!28241 (_1!21610 (v!36905 lt!1182735))) (size!28241 (_1!21610 (v!36905 lt!1182732)))) lt!1182735 lt!1182732)))))))

(assert (=> b!3475357 (= lt!1182735 call!250755)))

(assert (=> b!3475357 (= lt!1182732 (maxPrefix!2577 thiss!18206 (t!274953 rules!2135) lt!1182557))))

(declare-fun b!3475358 () Bool)

(declare-fun e!2152583 () Bool)

(assert (=> b!3475358 (= e!2152583 e!2152584)))

(declare-fun res!1401847 () Bool)

(assert (=> b!3475358 (=> (not res!1401847) (not e!2152584))))

(assert (=> b!3475358 (= res!1401847 (isDefined!5813 lt!1182733))))

(declare-fun b!3475359 () Bool)

(declare-fun res!1401851 () Bool)

(assert (=> b!3475359 (=> (not res!1401851) (not e!2152584))))

(assert (=> b!3475359 (= res!1401851 (< (size!28243 (_2!21610 (get!11919 lt!1182733))) (size!28243 lt!1182557)))))

(declare-fun b!3475360 () Bool)

(assert (=> b!3475360 (= e!2152584 (contains!6919 rules!2135 (rule!8044 (_1!21610 (get!11919 lt!1182733)))))))

(declare-fun d!1003673 () Bool)

(assert (=> d!1003673 e!2152583))

(declare-fun res!1401846 () Bool)

(assert (=> d!1003673 (=> res!1401846 e!2152583)))

(assert (=> d!1003673 (= res!1401846 (isEmpty!21585 lt!1182733))))

(assert (=> d!1003673 (= lt!1182733 e!2152582)))

(declare-fun c!596050 () Bool)

(assert (=> d!1003673 (= c!596050 (and ((_ is Cons!37208) rules!2135) ((_ is Nil!37208) (t!274953 rules!2135))))))

(declare-fun lt!1182734 () Unit!52638)

(declare-fun lt!1182736 () Unit!52638)

(assert (=> d!1003673 (= lt!1182734 lt!1182736)))

(declare-fun isPrefix!2850 (List!37331 List!37331) Bool)

(assert (=> d!1003673 (isPrefix!2850 lt!1182557 lt!1182557)))

(declare-fun lemmaIsPrefixRefl!1809 (List!37331 List!37331) Unit!52638)

(assert (=> d!1003673 (= lt!1182736 (lemmaIsPrefixRefl!1809 lt!1182557 lt!1182557))))

(declare-fun rulesValidInductive!1859 (LexerInterface!5037 List!37332) Bool)

(assert (=> d!1003673 (rulesValidInductive!1859 thiss!18206 rules!2135)))

(assert (=> d!1003673 (= (maxPrefix!2577 thiss!18206 rules!2135 lt!1182557) lt!1182733)))

(assert (= (and d!1003673 c!596050) b!3475352))

(assert (= (and d!1003673 (not c!596050)) b!3475357))

(assert (= (or b!3475352 b!3475357) bm!250750))

(assert (= (and d!1003673 (not res!1401846)) b!3475358))

(assert (= (and b!3475358 res!1401847) b!3475356))

(assert (= (and b!3475356 res!1401845) b!3475359))

(assert (= (and b!3475359 res!1401851) b!3475353))

(assert (= (and b!3475353 res!1401848) b!3475354))

(assert (= (and b!3475354 res!1401850) b!3475355))

(assert (= (and b!3475355 res!1401849) b!3475360))

(declare-fun m!3889701 () Bool)

(assert (=> b!3475359 m!3889701))

(declare-fun m!3889703 () Bool)

(assert (=> b!3475359 m!3889703))

(assert (=> b!3475359 m!3888939))

(declare-fun m!3889705 () Bool)

(assert (=> b!3475357 m!3889705))

(declare-fun m!3889707 () Bool)

(assert (=> d!1003673 m!3889707))

(declare-fun m!3889709 () Bool)

(assert (=> d!1003673 m!3889709))

(declare-fun m!3889711 () Bool)

(assert (=> d!1003673 m!3889711))

(declare-fun m!3889713 () Bool)

(assert (=> d!1003673 m!3889713))

(assert (=> b!3475355 m!3889701))

(declare-fun m!3889715 () Bool)

(assert (=> b!3475355 m!3889715))

(assert (=> b!3475355 m!3889715))

(declare-fun m!3889717 () Bool)

(assert (=> b!3475355 m!3889717))

(assert (=> b!3475355 m!3889717))

(declare-fun m!3889719 () Bool)

(assert (=> b!3475355 m!3889719))

(assert (=> b!3475356 m!3889701))

(assert (=> b!3475356 m!3889715))

(assert (=> b!3475356 m!3889715))

(assert (=> b!3475356 m!3889717))

(assert (=> b!3475353 m!3889701))

(assert (=> b!3475353 m!3889715))

(assert (=> b!3475353 m!3889715))

(assert (=> b!3475353 m!3889717))

(assert (=> b!3475353 m!3889717))

(declare-fun m!3889721 () Bool)

(assert (=> b!3475353 m!3889721))

(assert (=> b!3475354 m!3889701))

(declare-fun m!3889723 () Bool)

(assert (=> b!3475354 m!3889723))

(assert (=> b!3475354 m!3889723))

(declare-fun m!3889725 () Bool)

(assert (=> b!3475354 m!3889725))

(assert (=> b!3475360 m!3889701))

(declare-fun m!3889727 () Bool)

(assert (=> b!3475360 m!3889727))

(declare-fun m!3889729 () Bool)

(assert (=> bm!250750 m!3889729))

(declare-fun m!3889731 () Bool)

(assert (=> b!3475358 m!3889731))

(assert (=> b!3474888 d!1003673))

(declare-fun d!1003675 () Bool)

(declare-fun dynLambda!15720 (Int Token!10262) Bool)

(assert (=> d!1003675 (dynLambda!15720 lambda!122074 (h!42629 (t!274954 tokens!494)))))

(declare-fun lt!1182739 () Unit!52638)

(declare-fun choose!20105 (List!37333 Int Token!10262) Unit!52638)

(assert (=> d!1003675 (= lt!1182739 (choose!20105 tokens!494 lambda!122074 (h!42629 (t!274954 tokens!494))))))

(declare-fun e!2152587 () Bool)

(assert (=> d!1003675 e!2152587))

(declare-fun res!1401854 () Bool)

(assert (=> d!1003675 (=> (not res!1401854) (not e!2152587))))

(assert (=> d!1003675 (= res!1401854 (forall!7949 tokens!494 lambda!122074))))

(assert (=> d!1003675 (= (forallContained!1395 tokens!494 lambda!122074 (h!42629 (t!274954 tokens!494))) lt!1182739)))

(declare-fun b!3475363 () Bool)

(declare-fun contains!6922 (List!37333 Token!10262) Bool)

(assert (=> b!3475363 (= e!2152587 (contains!6922 tokens!494 (h!42629 (t!274954 tokens!494))))))

(assert (= (and d!1003675 res!1401854) b!3475363))

(declare-fun b_lambda!100341 () Bool)

(assert (=> (not b_lambda!100341) (not d!1003675)))

(declare-fun m!3889733 () Bool)

(assert (=> d!1003675 m!3889733))

(declare-fun m!3889735 () Bool)

(assert (=> d!1003675 m!3889735))

(assert (=> d!1003675 m!3888895))

(declare-fun m!3889737 () Bool)

(assert (=> b!3475363 m!3889737))

(assert (=> b!3474911 d!1003675))

(declare-fun d!1003677 () Bool)

(assert (=> d!1003677 (dynLambda!15720 lambda!122074 (h!42629 tokens!494))))

(declare-fun lt!1182740 () Unit!52638)

(assert (=> d!1003677 (= lt!1182740 (choose!20105 tokens!494 lambda!122074 (h!42629 tokens!494)))))

(declare-fun e!2152588 () Bool)

(assert (=> d!1003677 e!2152588))

(declare-fun res!1401855 () Bool)

(assert (=> d!1003677 (=> (not res!1401855) (not e!2152588))))

(assert (=> d!1003677 (= res!1401855 (forall!7949 tokens!494 lambda!122074))))

(assert (=> d!1003677 (= (forallContained!1395 tokens!494 lambda!122074 (h!42629 tokens!494)) lt!1182740)))

(declare-fun b!3475364 () Bool)

(assert (=> b!3475364 (= e!2152588 (contains!6922 tokens!494 (h!42629 tokens!494)))))

(assert (= (and d!1003677 res!1401855) b!3475364))

(declare-fun b_lambda!100343 () Bool)

(assert (=> (not b_lambda!100343) (not d!1003677)))

(declare-fun m!3889739 () Bool)

(assert (=> d!1003677 m!3889739))

(declare-fun m!3889741 () Bool)

(assert (=> d!1003677 m!3889741))

(assert (=> d!1003677 m!3888895))

(declare-fun m!3889743 () Bool)

(assert (=> b!3475364 m!3889743))

(assert (=> b!3474911 d!1003677))

(declare-fun d!1003679 () Bool)

(assert (=> d!1003679 (not (matchR!4791 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540))))

(declare-fun lt!1182745 () Unit!52638)

(declare-fun choose!20106 (Regex!10207 List!37331 C!20600) Unit!52638)

(assert (=> d!1003679 (= lt!1182745 (choose!20106 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540 lt!1182538))))

(assert (=> d!1003679 (validRegex!4650 (regex!5448 (rule!8044 separatorToken!241)))))

(assert (=> d!1003679 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!506 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540 lt!1182538) lt!1182745)))

(declare-fun bs!561669 () Bool)

(assert (= bs!561669 d!1003679))

(assert (=> bs!561669 m!3888891))

(declare-fun m!3889745 () Bool)

(assert (=> bs!561669 m!3889745))

(declare-fun m!3889747 () Bool)

(assert (=> bs!561669 m!3889747))

(assert (=> b!3474889 d!1003679))

(declare-fun b!3475373 () Bool)

(declare-fun e!2152598 () Bool)

(declare-fun e!2152596 () Bool)

(assert (=> b!3475373 (= e!2152598 e!2152596)))

(declare-fun res!1401866 () Bool)

(assert (=> b!3475373 (=> res!1401866 e!2152596)))

(declare-fun call!250756 () Bool)

(assert (=> b!3475373 (= res!1401866 call!250756)))

(declare-fun bm!250751 () Bool)

(assert (=> bm!250751 (= call!250756 (isEmpty!21576 lt!1182540))))

(declare-fun b!3475377 () Bool)

(declare-fun res!1401867 () Bool)

(declare-fun e!2152601 () Bool)

(assert (=> b!3475377 (=> res!1401867 e!2152601)))

(declare-fun e!2152600 () Bool)

(assert (=> b!3475377 (= res!1401867 e!2152600)))

(declare-fun res!1401868 () Bool)

(assert (=> b!3475377 (=> (not res!1401868) (not e!2152600))))

(declare-fun lt!1182746 () Bool)

(assert (=> b!3475377 (= res!1401868 lt!1182746)))

(declare-fun b!3475378 () Bool)

(declare-fun e!2152599 () Bool)

(assert (=> b!3475378 (= e!2152599 (nullable!3494 (regex!5448 (rule!8044 separatorToken!241))))))

(declare-fun b!3475379 () Bool)

(declare-fun e!2152595 () Bool)

(assert (=> b!3475379 (= e!2152595 (not lt!1182746))))

(declare-fun b!3475380 () Bool)

(declare-fun res!1401869 () Bool)

(assert (=> b!3475380 (=> (not res!1401869) (not e!2152600))))

(assert (=> b!3475380 (= res!1401869 (not call!250756))))

(declare-fun b!3475374 () Bool)

(assert (=> b!3475374 (= e!2152600 (= (head!7333 lt!1182540) (c!595966 (regex!5448 (rule!8044 separatorToken!241)))))))

(declare-fun d!1003681 () Bool)

(declare-fun e!2152597 () Bool)

(assert (=> d!1003681 e!2152597))

(declare-fun c!596056 () Bool)

(assert (=> d!1003681 (= c!596056 ((_ is EmptyExpr!10207) (regex!5448 (rule!8044 separatorToken!241))))))

(assert (=> d!1003681 (= lt!1182746 e!2152599)))

(declare-fun c!596055 () Bool)

(assert (=> d!1003681 (= c!596055 (isEmpty!21576 lt!1182540))))

(assert (=> d!1003681 (validRegex!4650 (regex!5448 (rule!8044 separatorToken!241)))))

(assert (=> d!1003681 (= (matchR!4791 (regex!5448 (rule!8044 separatorToken!241)) lt!1182540) lt!1182746)))

(declare-fun b!3475381 () Bool)

(assert (=> b!3475381 (= e!2152597 (= lt!1182746 call!250756))))

(declare-fun b!3475382 () Bool)

(assert (=> b!3475382 (= e!2152601 e!2152598)))

(declare-fun res!1401864 () Bool)

(assert (=> b!3475382 (=> (not res!1401864) (not e!2152598))))

(assert (=> b!3475382 (= res!1401864 (not lt!1182746))))

(declare-fun b!3475383 () Bool)

(declare-fun res!1401863 () Bool)

(assert (=> b!3475383 (=> res!1401863 e!2152601)))

(assert (=> b!3475383 (= res!1401863 (not ((_ is ElementMatch!10207) (regex!5448 (rule!8044 separatorToken!241)))))))

(assert (=> b!3475383 (= e!2152595 e!2152601)))

(declare-fun b!3475384 () Bool)

(assert (=> b!3475384 (= e!2152599 (matchR!4791 (derivativeStep!3047 (regex!5448 (rule!8044 separatorToken!241)) (head!7333 lt!1182540)) (tail!5444 lt!1182540)))))

(declare-fun b!3475385 () Bool)

(declare-fun res!1401860 () Bool)

(assert (=> b!3475385 (=> res!1401860 e!2152596)))

(assert (=> b!3475385 (= res!1401860 (not (isEmpty!21576 (tail!5444 lt!1182540))))))

(declare-fun b!3475386 () Bool)

(assert (=> b!3475386 (= e!2152597 e!2152595)))

(declare-fun c!596054 () Bool)

(assert (=> b!3475386 (= c!596054 ((_ is EmptyLang!10207) (regex!5448 (rule!8044 separatorToken!241))))))

(declare-fun b!3475387 () Bool)

(assert (=> b!3475387 (= e!2152596 (not (= (head!7333 lt!1182540) (c!595966 (regex!5448 (rule!8044 separatorToken!241))))))))

(declare-fun b!3475388 () Bool)

(declare-fun res!1401865 () Bool)

(assert (=> b!3475388 (=> (not res!1401865) (not e!2152600))))

(assert (=> b!3475388 (= res!1401865 (isEmpty!21576 (tail!5444 lt!1182540)))))

(assert (= (and d!1003681 c!596055) b!3475378))

(assert (= (and d!1003681 (not c!596055)) b!3475384))

(assert (= (and d!1003681 c!596056) b!3475381))

(assert (= (and d!1003681 (not c!596056)) b!3475386))

(assert (= (and b!3475386 c!596054) b!3475379))

(assert (= (and b!3475386 (not c!596054)) b!3475383))

(assert (= (and b!3475383 (not res!1401863)) b!3475377))

(assert (= (and b!3475377 res!1401868) b!3475380))

(assert (= (and b!3475380 res!1401869) b!3475388))

(assert (= (and b!3475388 res!1401865) b!3475374))

(assert (= (and b!3475377 (not res!1401867)) b!3475382))

(assert (= (and b!3475382 res!1401864) b!3475373))

(assert (= (and b!3475373 (not res!1401866)) b!3475385))

(assert (= (and b!3475385 (not res!1401860)) b!3475387))

(assert (= (or b!3475381 b!3475373 b!3475380) bm!250751))

(assert (=> b!3475387 m!3888975))

(assert (=> bm!250751 m!3889571))

(assert (=> b!3475384 m!3888975))

(assert (=> b!3475384 m!3888975))

(declare-fun m!3889749 () Bool)

(assert (=> b!3475384 m!3889749))

(assert (=> b!3475384 m!3889575))

(assert (=> b!3475384 m!3889749))

(assert (=> b!3475384 m!3889575))

(declare-fun m!3889751 () Bool)

(assert (=> b!3475384 m!3889751))

(assert (=> d!1003681 m!3889571))

(assert (=> d!1003681 m!3889747))

(assert (=> b!3475374 m!3888975))

(assert (=> b!3475388 m!3889575))

(assert (=> b!3475388 m!3889575))

(assert (=> b!3475388 m!3889581))

(assert (=> b!3475385 m!3889575))

(assert (=> b!3475385 m!3889575))

(assert (=> b!3475385 m!3889581))

(declare-fun m!3889753 () Bool)

(assert (=> b!3475378 m!3889753))

(assert (=> b!3474889 d!1003681))

(declare-fun b!3475389 () Bool)

(declare-fun res!1401870 () Bool)

(declare-fun e!2152603 () Bool)

(assert (=> b!3475389 (=> res!1401870 e!2152603)))

(assert (=> b!3475389 (= res!1401870 (not ((_ is IntegerValue!17036) (value!175728 separatorToken!241))))))

(declare-fun e!2152602 () Bool)

(assert (=> b!3475389 (= e!2152602 e!2152603)))

(declare-fun b!3475390 () Bool)

(declare-fun e!2152604 () Bool)

(assert (=> b!3475390 (= e!2152604 (inv!16 (value!175728 separatorToken!241)))))

(declare-fun d!1003683 () Bool)

(declare-fun c!596058 () Bool)

(assert (=> d!1003683 (= c!596058 ((_ is IntegerValue!17034) (value!175728 separatorToken!241)))))

(assert (=> d!1003683 (= (inv!21 (value!175728 separatorToken!241)) e!2152604)))

(declare-fun b!3475391 () Bool)

(assert (=> b!3475391 (= e!2152604 e!2152602)))

(declare-fun c!596057 () Bool)

(assert (=> b!3475391 (= c!596057 ((_ is IntegerValue!17035) (value!175728 separatorToken!241)))))

(declare-fun b!3475392 () Bool)

(assert (=> b!3475392 (= e!2152602 (inv!17 (value!175728 separatorToken!241)))))

(declare-fun b!3475393 () Bool)

(assert (=> b!3475393 (= e!2152603 (inv!15 (value!175728 separatorToken!241)))))

(assert (= (and d!1003683 c!596058) b!3475390))

(assert (= (and d!1003683 (not c!596058)) b!3475391))

(assert (= (and b!3475391 c!596057) b!3475392))

(assert (= (and b!3475391 (not c!596057)) b!3475389))

(assert (= (and b!3475389 (not res!1401870)) b!3475393))

(declare-fun m!3889755 () Bool)

(assert (=> b!3475390 m!3889755))

(declare-fun m!3889757 () Bool)

(assert (=> b!3475392 m!3889757))

(declare-fun m!3889759 () Bool)

(assert (=> b!3475393 m!3889759))

(assert (=> b!3474907 d!1003683))

(declare-fun lt!1182750 () Bool)

(declare-fun d!1003685 () Bool)

(declare-fun isEmpty!21587 (List!37333) Bool)

(assert (=> d!1003685 (= lt!1182750 (isEmpty!21587 (list!13564 (_1!21611 (lex!2363 thiss!18206 rules!2135 lt!1182549)))))))

(declare-fun isEmpty!21588 (Conc!11272) Bool)

(assert (=> d!1003685 (= lt!1182750 (isEmpty!21588 (c!595968 (_1!21611 (lex!2363 thiss!18206 rules!2135 lt!1182549)))))))

(assert (=> d!1003685 (= (isEmpty!21577 (_1!21611 (lex!2363 thiss!18206 rules!2135 lt!1182549))) lt!1182750)))

(declare-fun bs!561670 () Bool)

(assert (= bs!561670 d!1003685))

(declare-fun m!3889779 () Bool)

(assert (=> bs!561670 m!3889779))

(assert (=> bs!561670 m!3889779))

(declare-fun m!3889781 () Bool)

(assert (=> bs!561670 m!3889781))

(declare-fun m!3889783 () Bool)

(assert (=> bs!561670 m!3889783))

(assert (=> b!3474886 d!1003685))

(declare-fun b!3475486 () Bool)

(declare-fun e!2152666 () Bool)

(declare-fun lt!1182792 () tuple2!36954)

(assert (=> b!3475486 (= e!2152666 (= (_2!21611 lt!1182792) lt!1182549))))

(declare-fun d!1003689 () Bool)

(declare-fun e!2152665 () Bool)

(assert (=> d!1003689 e!2152665))

(declare-fun res!1401907 () Bool)

(assert (=> d!1003689 (=> (not res!1401907) (not e!2152665))))

(assert (=> d!1003689 (= res!1401907 e!2152666)))

(declare-fun c!596086 () Bool)

(assert (=> d!1003689 (= c!596086 (> (size!28242 (_1!21611 lt!1182792)) 0))))

(declare-fun lexTailRecV2!1062 (LexerInterface!5037 List!37332 BalanceConc!22156 BalanceConc!22156 BalanceConc!22156 BalanceConc!22158) tuple2!36954)

(assert (=> d!1003689 (= lt!1182792 (lexTailRecV2!1062 thiss!18206 rules!2135 lt!1182549 (BalanceConc!22157 Empty!11271) lt!1182549 (BalanceConc!22159 Empty!11272)))))

(assert (=> d!1003689 (= (lex!2363 thiss!18206 rules!2135 lt!1182549) lt!1182792)))

(declare-fun b!3475487 () Bool)

(declare-datatypes ((tuple2!36958 0))(
  ( (tuple2!36959 (_1!21613 List!37333) (_2!21613 List!37331)) )
))
(declare-fun lexList!1454 (LexerInterface!5037 List!37332 List!37331) tuple2!36958)

(assert (=> b!3475487 (= e!2152665 (= (list!13561 (_2!21611 lt!1182792)) (_2!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182549)))))))

(declare-fun b!3475488 () Bool)

(declare-fun res!1401909 () Bool)

(assert (=> b!3475488 (=> (not res!1401909) (not e!2152665))))

(assert (=> b!3475488 (= res!1401909 (= (list!13564 (_1!21611 lt!1182792)) (_1!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182549)))))))

(declare-fun b!3475489 () Bool)

(declare-fun e!2152667 () Bool)

(assert (=> b!3475489 (= e!2152667 (not (isEmpty!21577 (_1!21611 lt!1182792))))))

(declare-fun b!3475490 () Bool)

(assert (=> b!3475490 (= e!2152666 e!2152667)))

(declare-fun res!1401908 () Bool)

(declare-fun size!28247 (BalanceConc!22156) Int)

(assert (=> b!3475490 (= res!1401908 (< (size!28247 (_2!21611 lt!1182792)) (size!28247 lt!1182549)))))

(assert (=> b!3475490 (=> (not res!1401908) (not e!2152667))))

(assert (= (and d!1003689 c!596086) b!3475490))

(assert (= (and d!1003689 (not c!596086)) b!3475486))

(assert (= (and b!3475490 res!1401908) b!3475489))

(assert (= (and d!1003689 res!1401907) b!3475488))

(assert (= (and b!3475488 res!1401909) b!3475487))

(declare-fun m!3889941 () Bool)

(assert (=> b!3475488 m!3889941))

(declare-fun m!3889943 () Bool)

(assert (=> b!3475488 m!3889943))

(assert (=> b!3475488 m!3889943))

(declare-fun m!3889945 () Bool)

(assert (=> b!3475488 m!3889945))

(declare-fun m!3889947 () Bool)

(assert (=> b!3475490 m!3889947))

(declare-fun m!3889949 () Bool)

(assert (=> b!3475490 m!3889949))

(declare-fun m!3889951 () Bool)

(assert (=> d!1003689 m!3889951))

(declare-fun m!3889953 () Bool)

(assert (=> d!1003689 m!3889953))

(declare-fun m!3889955 () Bool)

(assert (=> b!3475489 m!3889955))

(declare-fun m!3889957 () Bool)

(assert (=> b!3475487 m!3889957))

(assert (=> b!3475487 m!3889943))

(assert (=> b!3475487 m!3889943))

(assert (=> b!3475487 m!3889945))

(assert (=> b!3474886 d!1003689))

(declare-fun d!1003729 () Bool)

(declare-fun fromListB!1795 (List!37331) BalanceConc!22156)

(assert (=> d!1003729 (= (seqFromList!3950 lt!1182557) (fromListB!1795 lt!1182557))))

(declare-fun bs!561677 () Bool)

(assert (= bs!561677 d!1003729))

(declare-fun m!3889959 () Bool)

(assert (=> bs!561677 m!3889959))

(assert (=> b!3474886 d!1003729))

(declare-fun d!1003731 () Bool)

(declare-fun e!2152668 () Bool)

(assert (=> d!1003731 e!2152668))

(declare-fun res!1401910 () Bool)

(assert (=> d!1003731 (=> (not res!1401910) (not e!2152668))))

(declare-fun lt!1182793 () List!37331)

(assert (=> d!1003731 (= res!1401910 (= (content!5202 lt!1182793) ((_ map or) (content!5202 (++!9185 lt!1182557 lt!1182540)) (content!5202 lt!1182566))))))

(declare-fun e!2152669 () List!37331)

(assert (=> d!1003731 (= lt!1182793 e!2152669)))

(declare-fun c!596087 () Bool)

(assert (=> d!1003731 (= c!596087 ((_ is Nil!37207) (++!9185 lt!1182557 lt!1182540)))))

(assert (=> d!1003731 (= (++!9185 (++!9185 lt!1182557 lt!1182540) lt!1182566) lt!1182793)))

(declare-fun b!3475493 () Bool)

(declare-fun res!1401911 () Bool)

(assert (=> b!3475493 (=> (not res!1401911) (not e!2152668))))

(assert (=> b!3475493 (= res!1401911 (= (size!28243 lt!1182793) (+ (size!28243 (++!9185 lt!1182557 lt!1182540)) (size!28243 lt!1182566))))))

(declare-fun b!3475492 () Bool)

(assert (=> b!3475492 (= e!2152669 (Cons!37207 (h!42627 (++!9185 lt!1182557 lt!1182540)) (++!9185 (t!274952 (++!9185 lt!1182557 lt!1182540)) lt!1182566)))))

(declare-fun b!3475494 () Bool)

(assert (=> b!3475494 (= e!2152668 (or (not (= lt!1182566 Nil!37207)) (= lt!1182793 (++!9185 lt!1182557 lt!1182540))))))

(declare-fun b!3475491 () Bool)

(assert (=> b!3475491 (= e!2152669 lt!1182566)))

(assert (= (and d!1003731 c!596087) b!3475491))

(assert (= (and d!1003731 (not c!596087)) b!3475492))

(assert (= (and d!1003731 res!1401910) b!3475493))

(assert (= (and b!3475493 res!1401911) b!3475494))

(declare-fun m!3889961 () Bool)

(assert (=> d!1003731 m!3889961))

(assert (=> d!1003731 m!3889063))

(declare-fun m!3889963 () Bool)

(assert (=> d!1003731 m!3889963))

(assert (=> d!1003731 m!3889625))

(declare-fun m!3889965 () Bool)

(assert (=> b!3475493 m!3889965))

(assert (=> b!3475493 m!3889063))

(declare-fun m!3889967 () Bool)

(assert (=> b!3475493 m!3889967))

(assert (=> b!3475493 m!3889631))

(declare-fun m!3889969 () Bool)

(assert (=> b!3475492 m!3889969))

(assert (=> b!3474885 d!1003731))

(declare-fun d!1003733 () Bool)

(declare-fun e!2152670 () Bool)

(assert (=> d!1003733 e!2152670))

(declare-fun res!1401912 () Bool)

(assert (=> d!1003733 (=> (not res!1401912) (not e!2152670))))

(declare-fun lt!1182794 () List!37331)

(assert (=> d!1003733 (= res!1401912 (= (content!5202 lt!1182794) ((_ map or) (content!5202 lt!1182557) (content!5202 lt!1182540))))))

(declare-fun e!2152671 () List!37331)

(assert (=> d!1003733 (= lt!1182794 e!2152671)))

(declare-fun c!596088 () Bool)

(assert (=> d!1003733 (= c!596088 ((_ is Nil!37207) lt!1182557))))

(assert (=> d!1003733 (= (++!9185 lt!1182557 lt!1182540) lt!1182794)))

(declare-fun b!3475497 () Bool)

(declare-fun res!1401913 () Bool)

(assert (=> b!3475497 (=> (not res!1401913) (not e!2152670))))

(assert (=> b!3475497 (= res!1401913 (= (size!28243 lt!1182794) (+ (size!28243 lt!1182557) (size!28243 lt!1182540))))))

(declare-fun b!3475496 () Bool)

(assert (=> b!3475496 (= e!2152671 (Cons!37207 (h!42627 lt!1182557) (++!9185 (t!274952 lt!1182557) lt!1182540)))))

(declare-fun b!3475498 () Bool)

(assert (=> b!3475498 (= e!2152670 (or (not (= lt!1182540 Nil!37207)) (= lt!1182794 lt!1182557)))))

(declare-fun b!3475495 () Bool)

(assert (=> b!3475495 (= e!2152671 lt!1182540)))

(assert (= (and d!1003733 c!596088) b!3475495))

(assert (= (and d!1003733 (not c!596088)) b!3475496))

(assert (= (and d!1003733 res!1401912) b!3475497))

(assert (= (and b!3475497 res!1401913) b!3475498))

(declare-fun m!3889971 () Bool)

(assert (=> d!1003733 m!3889971))

(assert (=> d!1003733 m!3889253))

(assert (=> d!1003733 m!3889623))

(declare-fun m!3889973 () Bool)

(assert (=> b!3475497 m!3889973))

(assert (=> b!3475497 m!3888939))

(assert (=> b!3475497 m!3889629))

(declare-fun m!3889975 () Bool)

(assert (=> b!3475496 m!3889975))

(assert (=> b!3474885 d!1003733))

(declare-fun d!1003735 () Bool)

(declare-fun isEmpty!21589 (Option!7549) Bool)

(assert (=> d!1003735 (= (isDefined!5814 lt!1182533) (not (isEmpty!21589 lt!1182533)))))

(declare-fun bs!561678 () Bool)

(assert (= bs!561678 d!1003735))

(declare-fun m!3889977 () Bool)

(assert (=> bs!561678 m!3889977))

(assert (=> b!3474908 d!1003735))

(declare-fun d!1003737 () Bool)

(declare-fun lt!1182795 () Bool)

(declare-fun e!2152672 () Bool)

(assert (=> d!1003737 (= lt!1182795 e!2152672)))

(declare-fun res!1401915 () Bool)

(assert (=> d!1003737 (=> (not res!1401915) (not e!2152672))))

(assert (=> d!1003737 (= res!1401915 (= (list!13564 (_1!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 (t!274954 tokens!494))))))) (list!13564 (singletonSeq!2544 (h!42629 (t!274954 tokens!494))))))))

(declare-fun e!2152673 () Bool)

(assert (=> d!1003737 (= lt!1182795 e!2152673)))

(declare-fun res!1401916 () Bool)

(assert (=> d!1003737 (=> (not res!1401916) (not e!2152673))))

(declare-fun lt!1182796 () tuple2!36954)

(assert (=> d!1003737 (= res!1401916 (= (size!28242 (_1!21611 lt!1182796)) 1))))

(assert (=> d!1003737 (= lt!1182796 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 (t!274954 tokens!494))))))))

(assert (=> d!1003737 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003737 (= (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 (t!274954 tokens!494))) lt!1182795)))

(declare-fun b!3475499 () Bool)

(declare-fun res!1401914 () Bool)

(assert (=> b!3475499 (=> (not res!1401914) (not e!2152673))))

(assert (=> b!3475499 (= res!1401914 (= (apply!8784 (_1!21611 lt!1182796) 0) (h!42629 (t!274954 tokens!494))))))

(declare-fun b!3475500 () Bool)

(assert (=> b!3475500 (= e!2152673 (isEmpty!21578 (_2!21611 lt!1182796)))))

(declare-fun b!3475501 () Bool)

(assert (=> b!3475501 (= e!2152672 (isEmpty!21578 (_2!21611 (lex!2363 thiss!18206 rules!2135 (print!2102 thiss!18206 (singletonSeq!2544 (h!42629 (t!274954 tokens!494))))))))))

(assert (= (and d!1003737 res!1401916) b!3475499))

(assert (= (and b!3475499 res!1401914) b!3475500))

(assert (= (and d!1003737 res!1401915) b!3475501))

(declare-fun m!3889979 () Bool)

(assert (=> d!1003737 m!3889979))

(declare-fun m!3889981 () Bool)

(assert (=> d!1003737 m!3889981))

(declare-fun m!3889983 () Bool)

(assert (=> d!1003737 m!3889983))

(declare-fun m!3889985 () Bool)

(assert (=> d!1003737 m!3889985))

(assert (=> d!1003737 m!3888965))

(assert (=> d!1003737 m!3888965))

(assert (=> d!1003737 m!3889979))

(assert (=> d!1003737 m!3888965))

(declare-fun m!3889987 () Bool)

(assert (=> d!1003737 m!3889987))

(assert (=> d!1003737 m!3888903))

(declare-fun m!3889989 () Bool)

(assert (=> b!3475499 m!3889989))

(declare-fun m!3889991 () Bool)

(assert (=> b!3475500 m!3889991))

(assert (=> b!3475501 m!3888965))

(assert (=> b!3475501 m!3888965))

(assert (=> b!3475501 m!3889979))

(assert (=> b!3475501 m!3889979))

(assert (=> b!3475501 m!3889981))

(declare-fun m!3889993 () Bool)

(assert (=> b!3475501 m!3889993))

(assert (=> b!3474908 d!1003737))

(declare-fun d!1003739 () Bool)

(assert (=> d!1003739 (= (head!7333 lt!1182540) (h!42627 lt!1182540))))

(assert (=> b!3474908 d!1003739))

(declare-fun b!3475514 () Bool)

(declare-fun e!2152683 () Option!7549)

(declare-fun e!2152682 () Option!7549)

(assert (=> b!3475514 (= e!2152683 e!2152682)))

(declare-fun c!596094 () Bool)

(assert (=> b!3475514 (= c!596094 (and ((_ is Cons!37208) rules!2135) (not (= (tag!6062 (h!42628 rules!2135)) (tag!6062 (rule!8044 (h!42629 tokens!494)))))))))

(declare-fun d!1003741 () Bool)

(declare-fun e!2152684 () Bool)

(assert (=> d!1003741 e!2152684))

(declare-fun res!1401922 () Bool)

(assert (=> d!1003741 (=> res!1401922 e!2152684)))

(declare-fun lt!1182804 () Option!7549)

(assert (=> d!1003741 (= res!1401922 (isEmpty!21589 lt!1182804))))

(assert (=> d!1003741 (= lt!1182804 e!2152683)))

(declare-fun c!596093 () Bool)

(assert (=> d!1003741 (= c!596093 (and ((_ is Cons!37208) rules!2135) (= (tag!6062 (h!42628 rules!2135)) (tag!6062 (rule!8044 (h!42629 tokens!494))))))))

(assert (=> d!1003741 (rulesInvariant!4434 thiss!18206 rules!2135)))

(assert (=> d!1003741 (= (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 (h!42629 tokens!494)))) lt!1182804)))

(declare-fun b!3475515 () Bool)

(declare-fun lt!1182805 () Unit!52638)

(declare-fun lt!1182803 () Unit!52638)

(assert (=> b!3475515 (= lt!1182805 lt!1182803)))

(assert (=> b!3475515 (rulesInvariant!4434 thiss!18206 (t!274953 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!438 (LexerInterface!5037 Rule!10696 List!37332) Unit!52638)

(assert (=> b!3475515 (= lt!1182803 (lemmaInvariantOnRulesThenOnTail!438 thiss!18206 (h!42628 rules!2135) (t!274953 rules!2135)))))

(assert (=> b!3475515 (= e!2152682 (getRuleFromTag!1091 thiss!18206 (t!274953 rules!2135) (tag!6062 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475516 () Bool)

(assert (=> b!3475516 (= e!2152683 (Some!7548 (h!42628 rules!2135)))))

(declare-fun b!3475517 () Bool)

(declare-fun e!2152685 () Bool)

(assert (=> b!3475517 (= e!2152685 (= (tag!6062 (get!11918 lt!1182804)) (tag!6062 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475518 () Bool)

(assert (=> b!3475518 (= e!2152682 None!7548)))

(declare-fun b!3475519 () Bool)

(assert (=> b!3475519 (= e!2152684 e!2152685)))

(declare-fun res!1401921 () Bool)

(assert (=> b!3475519 (=> (not res!1401921) (not e!2152685))))

(assert (=> b!3475519 (= res!1401921 (contains!6919 rules!2135 (get!11918 lt!1182804)))))

(assert (= (and d!1003741 c!596093) b!3475516))

(assert (= (and d!1003741 (not c!596093)) b!3475514))

(assert (= (and b!3475514 c!596094) b!3475515))

(assert (= (and b!3475514 (not c!596094)) b!3475518))

(assert (= (and d!1003741 (not res!1401922)) b!3475519))

(assert (= (and b!3475519 res!1401921) b!3475517))

(declare-fun m!3889995 () Bool)

(assert (=> d!1003741 m!3889995))

(assert (=> d!1003741 m!3888893))

(declare-fun m!3889997 () Bool)

(assert (=> b!3475515 m!3889997))

(declare-fun m!3889999 () Bool)

(assert (=> b!3475515 m!3889999))

(declare-fun m!3890001 () Bool)

(assert (=> b!3475515 m!3890001))

(declare-fun m!3890003 () Bool)

(assert (=> b!3475517 m!3890003))

(assert (=> b!3475519 m!3890003))

(assert (=> b!3475519 m!3890003))

(declare-fun m!3890005 () Bool)

(assert (=> b!3475519 m!3890005))

(assert (=> b!3474908 d!1003741))

(declare-fun d!1003743 () Bool)

(declare-fun e!2152686 () Bool)

(assert (=> d!1003743 e!2152686))

(declare-fun res!1401923 () Bool)

(assert (=> d!1003743 (=> (not res!1401923) (not e!2152686))))

(declare-fun lt!1182806 () BalanceConc!22158)

(assert (=> d!1003743 (= res!1401923 (= (list!13564 lt!1182806) (Cons!37209 separatorToken!241 Nil!37209)))))

(assert (=> d!1003743 (= lt!1182806 (singleton!1126 separatorToken!241))))

(assert (=> d!1003743 (= (singletonSeq!2544 separatorToken!241) lt!1182806)))

(declare-fun b!3475520 () Bool)

(assert (=> b!3475520 (= e!2152686 (isBalanced!3425 (c!595968 lt!1182806)))))

(assert (= (and d!1003743 res!1401923) b!3475520))

(declare-fun m!3890007 () Bool)

(assert (=> d!1003743 m!3890007))

(declare-fun m!3890009 () Bool)

(assert (=> d!1003743 m!3890009))

(declare-fun m!3890011 () Bool)

(assert (=> b!3475520 m!3890011))

(assert (=> b!3474908 d!1003743))

(declare-fun d!1003745 () Bool)

(declare-fun lt!1182807 () BalanceConc!22156)

(assert (=> d!1003745 (= (list!13561 lt!1182807) (printList!1585 thiss!18206 (list!13564 lt!1182556)))))

(assert (=> d!1003745 (= lt!1182807 (printTailRec!1532 thiss!18206 lt!1182556 0 (BalanceConc!22157 Empty!11271)))))

(assert (=> d!1003745 (= (print!2102 thiss!18206 lt!1182556) lt!1182807)))

(declare-fun bs!561679 () Bool)

(assert (= bs!561679 d!1003745))

(declare-fun m!3890013 () Bool)

(assert (=> bs!561679 m!3890013))

(declare-fun m!3890015 () Bool)

(assert (=> bs!561679 m!3890015))

(assert (=> bs!561679 m!3890015))

(declare-fun m!3890017 () Bool)

(assert (=> bs!561679 m!3890017))

(assert (=> bs!561679 m!3888917))

(assert (=> b!3474908 d!1003745))

(declare-fun b!3475521 () Bool)

(declare-fun e!2152688 () Option!7549)

(declare-fun e!2152687 () Option!7549)

(assert (=> b!3475521 (= e!2152688 e!2152687)))

(declare-fun c!596096 () Bool)

(assert (=> b!3475521 (= c!596096 (and ((_ is Cons!37208) rules!2135) (not (= (tag!6062 (h!42628 rules!2135)) (tag!6062 (rule!8044 separatorToken!241))))))))

(declare-fun d!1003747 () Bool)

(declare-fun e!2152689 () Bool)

(assert (=> d!1003747 e!2152689))

(declare-fun res!1401925 () Bool)

(assert (=> d!1003747 (=> res!1401925 e!2152689)))

(declare-fun lt!1182809 () Option!7549)

(assert (=> d!1003747 (= res!1401925 (isEmpty!21589 lt!1182809))))

(assert (=> d!1003747 (= lt!1182809 e!2152688)))

(declare-fun c!596095 () Bool)

(assert (=> d!1003747 (= c!596095 (and ((_ is Cons!37208) rules!2135) (= (tag!6062 (h!42628 rules!2135)) (tag!6062 (rule!8044 separatorToken!241)))))))

(assert (=> d!1003747 (rulesInvariant!4434 thiss!18206 rules!2135)))

(assert (=> d!1003747 (= (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 separatorToken!241))) lt!1182809)))

(declare-fun b!3475522 () Bool)

(declare-fun lt!1182810 () Unit!52638)

(declare-fun lt!1182808 () Unit!52638)

(assert (=> b!3475522 (= lt!1182810 lt!1182808)))

(assert (=> b!3475522 (rulesInvariant!4434 thiss!18206 (t!274953 rules!2135))))

(assert (=> b!3475522 (= lt!1182808 (lemmaInvariantOnRulesThenOnTail!438 thiss!18206 (h!42628 rules!2135) (t!274953 rules!2135)))))

(assert (=> b!3475522 (= e!2152687 (getRuleFromTag!1091 thiss!18206 (t!274953 rules!2135) (tag!6062 (rule!8044 separatorToken!241))))))

(declare-fun b!3475523 () Bool)

(assert (=> b!3475523 (= e!2152688 (Some!7548 (h!42628 rules!2135)))))

(declare-fun b!3475524 () Bool)

(declare-fun e!2152690 () Bool)

(assert (=> b!3475524 (= e!2152690 (= (tag!6062 (get!11918 lt!1182809)) (tag!6062 (rule!8044 separatorToken!241))))))

(declare-fun b!3475525 () Bool)

(assert (=> b!3475525 (= e!2152687 None!7548)))

(declare-fun b!3475526 () Bool)

(assert (=> b!3475526 (= e!2152689 e!2152690)))

(declare-fun res!1401924 () Bool)

(assert (=> b!3475526 (=> (not res!1401924) (not e!2152690))))

(assert (=> b!3475526 (= res!1401924 (contains!6919 rules!2135 (get!11918 lt!1182809)))))

(assert (= (and d!1003747 c!596095) b!3475523))

(assert (= (and d!1003747 (not c!596095)) b!3475521))

(assert (= (and b!3475521 c!596096) b!3475522))

(assert (= (and b!3475521 (not c!596096)) b!3475525))

(assert (= (and d!1003747 (not res!1401925)) b!3475526))

(assert (= (and b!3475526 res!1401924) b!3475524))

(declare-fun m!3890019 () Bool)

(assert (=> d!1003747 m!3890019))

(assert (=> d!1003747 m!3888893))

(assert (=> b!3475522 m!3889997))

(assert (=> b!3475522 m!3889999))

(declare-fun m!3890021 () Bool)

(assert (=> b!3475522 m!3890021))

(declare-fun m!3890023 () Bool)

(assert (=> b!3475524 m!3890023))

(assert (=> b!3475526 m!3890023))

(assert (=> b!3475526 m!3890023))

(declare-fun m!3890025 () Bool)

(assert (=> b!3475526 m!3890025))

(assert (=> b!3474908 d!1003747))

(declare-fun d!1003749 () Bool)

(declare-fun lt!1182813 () Int)

(assert (=> d!1003749 (>= lt!1182813 0)))

(declare-fun e!2152693 () Int)

(assert (=> d!1003749 (= lt!1182813 e!2152693)))

(declare-fun c!596099 () Bool)

(assert (=> d!1003749 (= c!596099 ((_ is Nil!37207) lt!1182557))))

(assert (=> d!1003749 (= (size!28243 lt!1182557) lt!1182813)))

(declare-fun b!3475531 () Bool)

(assert (=> b!3475531 (= e!2152693 0)))

(declare-fun b!3475532 () Bool)

(assert (=> b!3475532 (= e!2152693 (+ 1 (size!28243 (t!274952 lt!1182557))))))

(assert (= (and d!1003749 c!596099) b!3475531))

(assert (= (and d!1003749 (not c!596099)) b!3475532))

(declare-fun m!3890027 () Bool)

(assert (=> b!3475532 m!3890027))

(assert (=> b!3474908 d!1003749))

(declare-fun d!1003751 () Bool)

(declare-fun e!2152694 () Bool)

(assert (=> d!1003751 e!2152694))

(declare-fun res!1401926 () Bool)

(assert (=> d!1003751 (=> (not res!1401926) (not e!2152694))))

(declare-fun lt!1182814 () BalanceConc!22158)

(assert (=> d!1003751 (= res!1401926 (= (list!13564 lt!1182814) (Cons!37209 (h!42629 (t!274954 tokens!494)) Nil!37209)))))

(assert (=> d!1003751 (= lt!1182814 (singleton!1126 (h!42629 (t!274954 tokens!494))))))

(assert (=> d!1003751 (= (singletonSeq!2544 (h!42629 (t!274954 tokens!494))) lt!1182814)))

(declare-fun b!3475533 () Bool)

(assert (=> b!3475533 (= e!2152694 (isBalanced!3425 (c!595968 lt!1182814)))))

(assert (= (and d!1003751 res!1401926) b!3475533))

(declare-fun m!3890029 () Bool)

(assert (=> d!1003751 m!3890029))

(declare-fun m!3890031 () Bool)

(assert (=> d!1003751 m!3890031))

(declare-fun m!3890033 () Bool)

(assert (=> b!3475533 m!3890033))

(assert (=> b!3474908 d!1003751))

(declare-fun d!1003753 () Bool)

(declare-fun lt!1182817 () Bool)

(assert (=> d!1003753 (= lt!1182817 (select (content!5202 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494))))) lt!1182538))))

(declare-fun e!2152700 () Bool)

(assert (=> d!1003753 (= lt!1182817 e!2152700)))

(declare-fun res!1401932 () Bool)

(assert (=> d!1003753 (=> (not res!1401932) (not e!2152700))))

(assert (=> d!1003753 (= res!1401932 ((_ is Cons!37207) (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494))))))))

(assert (=> d!1003753 (= (contains!6920 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494)))) lt!1182538) lt!1182817)))

(declare-fun b!3475538 () Bool)

(declare-fun e!2152699 () Bool)

(assert (=> b!3475538 (= e!2152700 e!2152699)))

(declare-fun res!1401931 () Bool)

(assert (=> b!3475538 (=> res!1401931 e!2152699)))

(assert (=> b!3475538 (= res!1401931 (= (h!42627 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494))))) lt!1182538))))

(declare-fun b!3475539 () Bool)

(assert (=> b!3475539 (= e!2152699 (contains!6920 (t!274952 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494))))) lt!1182538))))

(assert (= (and d!1003753 res!1401932) b!3475538))

(assert (= (and b!3475538 (not res!1401931)) b!3475539))

(assert (=> d!1003753 m!3888935))

(declare-fun m!3890035 () Bool)

(assert (=> d!1003753 m!3890035))

(declare-fun m!3890037 () Bool)

(assert (=> d!1003753 m!3890037))

(declare-fun m!3890039 () Bool)

(assert (=> b!3475539 m!3890039))

(assert (=> b!3474908 d!1003753))

(declare-fun d!1003755 () Bool)

(declare-fun lt!1182821 () BalanceConc!22156)

(assert (=> d!1003755 (= (list!13561 lt!1182821) (printListTailRec!694 thiss!18206 (dropList!1211 lt!1182556 0) (list!13561 (BalanceConc!22157 Empty!11271))))))

(declare-fun e!2152701 () BalanceConc!22156)

(assert (=> d!1003755 (= lt!1182821 e!2152701)))

(declare-fun c!596100 () Bool)

(assert (=> d!1003755 (= c!596100 (>= 0 (size!28242 lt!1182556)))))

(declare-fun e!2152702 () Bool)

(assert (=> d!1003755 e!2152702))

(declare-fun res!1401933 () Bool)

(assert (=> d!1003755 (=> (not res!1401933) (not e!2152702))))

(assert (=> d!1003755 (= res!1401933 (>= 0 0))))

(assert (=> d!1003755 (= (printTailRec!1532 thiss!18206 lt!1182556 0 (BalanceConc!22157 Empty!11271)) lt!1182821)))

(declare-fun b!3475540 () Bool)

(assert (=> b!3475540 (= e!2152702 (<= 0 (size!28242 lt!1182556)))))

(declare-fun b!3475541 () Bool)

(assert (=> b!3475541 (= e!2152701 (BalanceConc!22157 Empty!11271))))

(declare-fun b!3475542 () Bool)

(assert (=> b!3475542 (= e!2152701 (printTailRec!1532 thiss!18206 lt!1182556 (+ 0 1) (++!9187 (BalanceConc!22157 Empty!11271) (charsOf!3462 (apply!8784 lt!1182556 0)))))))

(declare-fun lt!1182824 () List!37333)

(assert (=> b!3475542 (= lt!1182824 (list!13564 lt!1182556))))

(declare-fun lt!1182822 () Unit!52638)

(assert (=> b!3475542 (= lt!1182822 (lemmaDropApply!1169 lt!1182824 0))))

(assert (=> b!3475542 (= (head!7335 (drop!2019 lt!1182824 0)) (apply!8788 lt!1182824 0))))

(declare-fun lt!1182819 () Unit!52638)

(assert (=> b!3475542 (= lt!1182819 lt!1182822)))

(declare-fun lt!1182820 () List!37333)

(assert (=> b!3475542 (= lt!1182820 (list!13564 lt!1182556))))

(declare-fun lt!1182823 () Unit!52638)

(assert (=> b!3475542 (= lt!1182823 (lemmaDropTail!1053 lt!1182820 0))))

(assert (=> b!3475542 (= (tail!5445 (drop!2019 lt!1182820 0)) (drop!2019 lt!1182820 (+ 0 1)))))

(declare-fun lt!1182818 () Unit!52638)

(assert (=> b!3475542 (= lt!1182818 lt!1182823)))

(assert (= (and d!1003755 res!1401933) b!3475540))

(assert (= (and d!1003755 c!596100) b!3475541))

(assert (= (and d!1003755 (not c!596100)) b!3475542))

(declare-fun m!3890041 () Bool)

(assert (=> d!1003755 m!3890041))

(assert (=> d!1003755 m!3890041))

(assert (=> d!1003755 m!3889479))

(declare-fun m!3890043 () Bool)

(assert (=> d!1003755 m!3890043))

(declare-fun m!3890045 () Bool)

(assert (=> d!1003755 m!3890045))

(assert (=> d!1003755 m!3889479))

(declare-fun m!3890047 () Bool)

(assert (=> d!1003755 m!3890047))

(assert (=> b!3475540 m!3890045))

(declare-fun m!3890049 () Bool)

(assert (=> b!3475542 m!3890049))

(declare-fun m!3890051 () Bool)

(assert (=> b!3475542 m!3890051))

(declare-fun m!3890053 () Bool)

(assert (=> b!3475542 m!3890053))

(declare-fun m!3890055 () Bool)

(assert (=> b!3475542 m!3890055))

(declare-fun m!3890057 () Bool)

(assert (=> b!3475542 m!3890057))

(declare-fun m!3890059 () Bool)

(assert (=> b!3475542 m!3890059))

(declare-fun m!3890061 () Bool)

(assert (=> b!3475542 m!3890061))

(declare-fun m!3890063 () Bool)

(assert (=> b!3475542 m!3890063))

(assert (=> b!3475542 m!3890049))

(assert (=> b!3475542 m!3890051))

(declare-fun m!3890065 () Bool)

(assert (=> b!3475542 m!3890065))

(declare-fun m!3890067 () Bool)

(assert (=> b!3475542 m!3890067))

(declare-fun m!3890069 () Bool)

(assert (=> b!3475542 m!3890069))

(assert (=> b!3475542 m!3890063))

(assert (=> b!3475542 m!3890059))

(assert (=> b!3475542 m!3890015))

(assert (=> b!3475542 m!3890055))

(declare-fun m!3890071 () Bool)

(assert (=> b!3475542 m!3890071))

(assert (=> b!3474908 d!1003755))

(declare-fun d!1003757 () Bool)

(declare-fun e!2152705 () Bool)

(assert (=> d!1003757 e!2152705))

(declare-fun res!1401938 () Bool)

(assert (=> d!1003757 (=> (not res!1401938) (not e!2152705))))

(assert (=> d!1003757 (= res!1401938 (isDefined!5814 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 separatorToken!241)))))))

(declare-fun lt!1182827 () Unit!52638)

(declare-fun choose!20110 (LexerInterface!5037 List!37332 List!37331 Token!10262) Unit!52638)

(assert (=> d!1003757 (= lt!1182827 (choose!20110 thiss!18206 rules!2135 lt!1182540 separatorToken!241))))

(assert (=> d!1003757 (rulesInvariant!4434 thiss!18206 rules!2135)))

(assert (=> d!1003757 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1091 thiss!18206 rules!2135 lt!1182540 separatorToken!241) lt!1182827)))

(declare-fun b!3475547 () Bool)

(declare-fun res!1401939 () Bool)

(assert (=> b!3475547 (=> (not res!1401939) (not e!2152705))))

(assert (=> b!3475547 (= res!1401939 (matchR!4791 (regex!5448 (get!11918 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 separatorToken!241))))) (list!13561 (charsOf!3462 separatorToken!241))))))

(declare-fun b!3475548 () Bool)

(assert (=> b!3475548 (= e!2152705 (= (rule!8044 separatorToken!241) (get!11918 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 separatorToken!241))))))))

(assert (= (and d!1003757 res!1401938) b!3475547))

(assert (= (and b!3475547 res!1401939) b!3475548))

(assert (=> d!1003757 m!3888961))

(assert (=> d!1003757 m!3888961))

(declare-fun m!3890073 () Bool)

(assert (=> d!1003757 m!3890073))

(declare-fun m!3890075 () Bool)

(assert (=> d!1003757 m!3890075))

(assert (=> d!1003757 m!3888893))

(assert (=> b!3475547 m!3888961))

(assert (=> b!3475547 m!3888961))

(declare-fun m!3890077 () Bool)

(assert (=> b!3475547 m!3890077))

(assert (=> b!3475547 m!3889043))

(declare-fun m!3890079 () Bool)

(assert (=> b!3475547 m!3890079))

(assert (=> b!3475547 m!3889031))

(assert (=> b!3475547 m!3889043))

(assert (=> b!3475547 m!3889031))

(assert (=> b!3475548 m!3888961))

(assert (=> b!3475548 m!3888961))

(assert (=> b!3475548 m!3890077))

(assert (=> b!3474908 d!1003757))

(declare-fun d!1003759 () Bool)

(declare-fun e!2152706 () Bool)

(assert (=> d!1003759 e!2152706))

(declare-fun res!1401940 () Bool)

(assert (=> d!1003759 (=> (not res!1401940) (not e!2152706))))

(assert (=> d!1003759 (= res!1401940 (isDefined!5814 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 (h!42629 tokens!494))))))))

(declare-fun lt!1182828 () Unit!52638)

(assert (=> d!1003759 (= lt!1182828 (choose!20110 thiss!18206 rules!2135 lt!1182557 (h!42629 tokens!494)))))

(assert (=> d!1003759 (rulesInvariant!4434 thiss!18206 rules!2135)))

(assert (=> d!1003759 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1091 thiss!18206 rules!2135 lt!1182557 (h!42629 tokens!494)) lt!1182828)))

(declare-fun b!3475549 () Bool)

(declare-fun res!1401941 () Bool)

(assert (=> b!3475549 (=> (not res!1401941) (not e!2152706))))

(assert (=> b!3475549 (= res!1401941 (matchR!4791 (regex!5448 (get!11918 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 (h!42629 tokens!494)))))) (list!13561 (charsOf!3462 (h!42629 tokens!494)))))))

(declare-fun b!3475550 () Bool)

(assert (=> b!3475550 (= e!2152706 (= (rule!8044 (h!42629 tokens!494)) (get!11918 (getRuleFromTag!1091 thiss!18206 rules!2135 (tag!6062 (rule!8044 (h!42629 tokens!494)))))))))

(assert (= (and d!1003759 res!1401940) b!3475549))

(assert (= (and b!3475549 res!1401941) b!3475550))

(assert (=> d!1003759 m!3888925))

(assert (=> d!1003759 m!3888925))

(declare-fun m!3890081 () Bool)

(assert (=> d!1003759 m!3890081))

(declare-fun m!3890083 () Bool)

(assert (=> d!1003759 m!3890083))

(assert (=> d!1003759 m!3888893))

(assert (=> b!3475549 m!3888925))

(assert (=> b!3475549 m!3888925))

(declare-fun m!3890085 () Bool)

(assert (=> b!3475549 m!3890085))

(assert (=> b!3475549 m!3889011))

(declare-fun m!3890087 () Bool)

(assert (=> b!3475549 m!3890087))

(assert (=> b!3475549 m!3889009))

(assert (=> b!3475549 m!3889011))

(assert (=> b!3475549 m!3889009))

(assert (=> b!3475550 m!3888925))

(assert (=> b!3475550 m!3888925))

(assert (=> b!3475550 m!3890085))

(assert (=> b!3474908 d!1003759))

(declare-fun d!1003761 () Bool)

(declare-fun lt!1182829 () BalanceConc!22156)

(assert (=> d!1003761 (= (list!13561 lt!1182829) (printList!1585 thiss!18206 (list!13564 lt!1182565)))))

(assert (=> d!1003761 (= lt!1182829 (printTailRec!1532 thiss!18206 lt!1182565 0 (BalanceConc!22157 Empty!11271)))))

(assert (=> d!1003761 (= (print!2102 thiss!18206 lt!1182565) lt!1182829)))

(declare-fun bs!561680 () Bool)

(assert (= bs!561680 d!1003761))

(declare-fun m!3890089 () Bool)

(assert (=> bs!561680 m!3890089))

(declare-fun m!3890091 () Bool)

(assert (=> bs!561680 m!3890091))

(assert (=> bs!561680 m!3890091))

(declare-fun m!3890093 () Bool)

(assert (=> bs!561680 m!3890093))

(assert (=> bs!561680 m!3888949))

(assert (=> b!3474908 d!1003761))

(declare-fun b!3475567 () Bool)

(declare-fun e!2152718 () List!37331)

(declare-fun call!250780 () List!37331)

(assert (=> b!3475567 (= e!2152718 call!250780)))

(declare-fun bm!250772 () Bool)

(declare-fun call!250779 () List!37331)

(declare-fun c!596112 () Bool)

(assert (=> bm!250772 (= call!250779 (usedCharacters!682 (ite c!596112 (regOne!20927 (regex!5448 (rule!8044 separatorToken!241))) (regTwo!20926 (regex!5448 (rule!8044 separatorToken!241))))))))

(declare-fun b!3475568 () Bool)

(assert (=> b!3475568 (= e!2152718 call!250780)))

(declare-fun bm!250774 () Bool)

(declare-fun call!250778 () List!37331)

(assert (=> bm!250774 (= call!250780 (++!9185 (ite c!596112 call!250779 call!250778) (ite c!596112 call!250778 call!250779)))))

(declare-fun b!3475569 () Bool)

(declare-fun e!2152717 () List!37331)

(assert (=> b!3475569 (= e!2152717 e!2152718)))

(assert (=> b!3475569 (= c!596112 ((_ is Union!10207) (regex!5448 (rule!8044 separatorToken!241))))))

(declare-fun b!3475570 () Bool)

(declare-fun call!250777 () List!37331)

(assert (=> b!3475570 (= e!2152717 call!250777)))

(declare-fun bm!250775 () Bool)

(assert (=> bm!250775 (= call!250778 call!250777)))

(declare-fun b!3475571 () Bool)

(declare-fun e!2152715 () List!37331)

(assert (=> b!3475571 (= e!2152715 (Cons!37207 (c!595966 (regex!5448 (rule!8044 separatorToken!241))) Nil!37207))))

(declare-fun b!3475572 () Bool)

(declare-fun e!2152716 () List!37331)

(assert (=> b!3475572 (= e!2152716 e!2152715)))

(declare-fun c!596111 () Bool)

(assert (=> b!3475572 (= c!596111 ((_ is ElementMatch!10207) (regex!5448 (rule!8044 separatorToken!241))))))

(declare-fun b!3475573 () Bool)

(declare-fun c!596109 () Bool)

(assert (=> b!3475573 (= c!596109 ((_ is Star!10207) (regex!5448 (rule!8044 separatorToken!241))))))

(assert (=> b!3475573 (= e!2152715 e!2152717)))

(declare-fun b!3475574 () Bool)

(assert (=> b!3475574 (= e!2152716 Nil!37207)))

(declare-fun bm!250773 () Bool)

(assert (=> bm!250773 (= call!250777 (usedCharacters!682 (ite c!596109 (reg!10536 (regex!5448 (rule!8044 separatorToken!241))) (ite c!596112 (regTwo!20927 (regex!5448 (rule!8044 separatorToken!241))) (regOne!20926 (regex!5448 (rule!8044 separatorToken!241)))))))))

(declare-fun d!1003763 () Bool)

(declare-fun c!596110 () Bool)

(assert (=> d!1003763 (= c!596110 (or ((_ is EmptyExpr!10207) (regex!5448 (rule!8044 separatorToken!241))) ((_ is EmptyLang!10207) (regex!5448 (rule!8044 separatorToken!241)))))))

(assert (=> d!1003763 (= (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241))) e!2152716)))

(assert (= (and d!1003763 c!596110) b!3475574))

(assert (= (and d!1003763 (not c!596110)) b!3475572))

(assert (= (and b!3475572 c!596111) b!3475571))

(assert (= (and b!3475572 (not c!596111)) b!3475573))

(assert (= (and b!3475573 c!596109) b!3475570))

(assert (= (and b!3475573 (not c!596109)) b!3475569))

(assert (= (and b!3475569 c!596112) b!3475568))

(assert (= (and b!3475569 (not c!596112)) b!3475567))

(assert (= (or b!3475568 b!3475567) bm!250775))

(assert (= (or b!3475568 b!3475567) bm!250772))

(assert (= (or b!3475568 b!3475567) bm!250774))

(assert (= (or b!3475570 bm!250775) bm!250773))

(declare-fun m!3890095 () Bool)

(assert (=> bm!250772 m!3890095))

(declare-fun m!3890097 () Bool)

(assert (=> bm!250774 m!3890097))

(declare-fun m!3890099 () Bool)

(assert (=> bm!250773 m!3890099))

(assert (=> b!3474908 d!1003763))

(declare-fun d!1003765 () Bool)

(declare-fun lt!1182830 () Bool)

(assert (=> d!1003765 (= lt!1182830 (select (content!5202 (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241)))) lt!1182538))))

(declare-fun e!2152720 () Bool)

(assert (=> d!1003765 (= lt!1182830 e!2152720)))

(declare-fun res!1401943 () Bool)

(assert (=> d!1003765 (=> (not res!1401943) (not e!2152720))))

(assert (=> d!1003765 (= res!1401943 ((_ is Cons!37207) (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241)))))))

(assert (=> d!1003765 (= (contains!6920 (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241))) lt!1182538) lt!1182830)))

(declare-fun b!3475575 () Bool)

(declare-fun e!2152719 () Bool)

(assert (=> b!3475575 (= e!2152720 e!2152719)))

(declare-fun res!1401942 () Bool)

(assert (=> b!3475575 (=> res!1401942 e!2152719)))

(assert (=> b!3475575 (= res!1401942 (= (h!42627 (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241)))) lt!1182538))))

(declare-fun b!3475576 () Bool)

(assert (=> b!3475576 (= e!2152719 (contains!6920 (t!274952 (usedCharacters!682 (regex!5448 (rule!8044 separatorToken!241)))) lt!1182538))))

(assert (= (and d!1003765 res!1401943) b!3475575))

(assert (= (and b!3475575 (not res!1401942)) b!3475576))

(assert (=> d!1003765 m!3888919))

(declare-fun m!3890101 () Bool)

(assert (=> d!1003765 m!3890101))

(declare-fun m!3890103 () Bool)

(assert (=> d!1003765 m!3890103))

(declare-fun m!3890105 () Bool)

(assert (=> b!3475576 m!3890105))

(assert (=> b!3474908 d!1003765))

(declare-fun d!1003767 () Bool)

(assert (=> d!1003767 (= (maxPrefixOneRule!1744 thiss!18206 (rule!8044 (h!42629 tokens!494)) lt!1182557) (Some!7549 (tuple2!36953 (Token!10263 (apply!8785 (transformation!5448 (rule!8044 (h!42629 tokens!494))) (seqFromList!3950 lt!1182557)) (rule!8044 (h!42629 tokens!494)) (size!28243 lt!1182557) lt!1182557) Nil!37207)))))

(declare-fun lt!1182833 () Unit!52638)

(declare-fun choose!20111 (LexerInterface!5037 List!37332 List!37331 List!37331 List!37331 Rule!10696) Unit!52638)

(assert (=> d!1003767 (= lt!1182833 (choose!20111 thiss!18206 rules!2135 lt!1182557 lt!1182557 Nil!37207 (rule!8044 (h!42629 tokens!494))))))

(assert (=> d!1003767 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003767 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!837 thiss!18206 rules!2135 lt!1182557 lt!1182557 Nil!37207 (rule!8044 (h!42629 tokens!494))) lt!1182833)))

(declare-fun bs!561681 () Bool)

(assert (= bs!561681 d!1003767))

(assert (=> bs!561681 m!3888903))

(assert (=> bs!561681 m!3889007))

(assert (=> bs!561681 m!3888953))

(assert (=> bs!561681 m!3888939))

(assert (=> bs!561681 m!3889007))

(declare-fun m!3890107 () Bool)

(assert (=> bs!561681 m!3890107))

(declare-fun m!3890109 () Bool)

(assert (=> bs!561681 m!3890109))

(assert (=> b!3474908 d!1003767))

(declare-fun b!3475577 () Bool)

(declare-fun e!2152724 () List!37331)

(declare-fun call!250784 () List!37331)

(assert (=> b!3475577 (= e!2152724 call!250784)))

(declare-fun bm!250776 () Bool)

(declare-fun call!250783 () List!37331)

(declare-fun c!596116 () Bool)

(assert (=> bm!250776 (= call!250783 (usedCharacters!682 (ite c!596116 (regOne!20927 (regex!5448 (rule!8044 (h!42629 tokens!494)))) (regTwo!20926 (regex!5448 (rule!8044 (h!42629 tokens!494)))))))))

(declare-fun b!3475578 () Bool)

(assert (=> b!3475578 (= e!2152724 call!250784)))

(declare-fun call!250782 () List!37331)

(declare-fun bm!250778 () Bool)

(assert (=> bm!250778 (= call!250784 (++!9185 (ite c!596116 call!250783 call!250782) (ite c!596116 call!250782 call!250783)))))

(declare-fun b!3475579 () Bool)

(declare-fun e!2152723 () List!37331)

(assert (=> b!3475579 (= e!2152723 e!2152724)))

(assert (=> b!3475579 (= c!596116 ((_ is Union!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475580 () Bool)

(declare-fun call!250781 () List!37331)

(assert (=> b!3475580 (= e!2152723 call!250781)))

(declare-fun bm!250779 () Bool)

(assert (=> bm!250779 (= call!250782 call!250781)))

(declare-fun b!3475581 () Bool)

(declare-fun e!2152721 () List!37331)

(assert (=> b!3475581 (= e!2152721 (Cons!37207 (c!595966 (regex!5448 (rule!8044 (h!42629 tokens!494)))) Nil!37207))))

(declare-fun b!3475582 () Bool)

(declare-fun e!2152722 () List!37331)

(assert (=> b!3475582 (= e!2152722 e!2152721)))

(declare-fun c!596115 () Bool)

(assert (=> b!3475582 (= c!596115 ((_ is ElementMatch!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(declare-fun b!3475583 () Bool)

(declare-fun c!596113 () Bool)

(assert (=> b!3475583 (= c!596113 ((_ is Star!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))))))

(assert (=> b!3475583 (= e!2152721 e!2152723)))

(declare-fun b!3475584 () Bool)

(assert (=> b!3475584 (= e!2152722 Nil!37207)))

(declare-fun bm!250777 () Bool)

(assert (=> bm!250777 (= call!250781 (usedCharacters!682 (ite c!596113 (reg!10536 (regex!5448 (rule!8044 (h!42629 tokens!494)))) (ite c!596116 (regTwo!20927 (regex!5448 (rule!8044 (h!42629 tokens!494)))) (regOne!20926 (regex!5448 (rule!8044 (h!42629 tokens!494))))))))))

(declare-fun d!1003769 () Bool)

(declare-fun c!596114 () Bool)

(assert (=> d!1003769 (= c!596114 (or ((_ is EmptyExpr!10207) (regex!5448 (rule!8044 (h!42629 tokens!494)))) ((_ is EmptyLang!10207) (regex!5448 (rule!8044 (h!42629 tokens!494))))))))

(assert (=> d!1003769 (= (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494)))) e!2152722)))

(assert (= (and d!1003769 c!596114) b!3475584))

(assert (= (and d!1003769 (not c!596114)) b!3475582))

(assert (= (and b!3475582 c!596115) b!3475581))

(assert (= (and b!3475582 (not c!596115)) b!3475583))

(assert (= (and b!3475583 c!596113) b!3475580))

(assert (= (and b!3475583 (not c!596113)) b!3475579))

(assert (= (and b!3475579 c!596116) b!3475578))

(assert (= (and b!3475579 (not c!596116)) b!3475577))

(assert (= (or b!3475578 b!3475577) bm!250779))

(assert (= (or b!3475578 b!3475577) bm!250776))

(assert (= (or b!3475578 b!3475577) bm!250778))

(assert (= (or b!3475580 bm!250779) bm!250777))

(declare-fun m!3890111 () Bool)

(assert (=> bm!250776 m!3890111))

(declare-fun m!3890113 () Bool)

(assert (=> bm!250778 m!3890113))

(declare-fun m!3890115 () Bool)

(assert (=> bm!250777 m!3890115))

(assert (=> b!3474908 d!1003769))

(declare-fun d!1003771 () Bool)

(assert (=> d!1003771 (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 tokens!494))))

(declare-fun lt!1182873 () Unit!52638)

(declare-fun choose!20112 (LexerInterface!5037 List!37332 List!37333 Token!10262) Unit!52638)

(assert (=> d!1003771 (= lt!1182873 (choose!20112 thiss!18206 rules!2135 tokens!494 (h!42629 tokens!494)))))

(assert (=> d!1003771 (not (isEmpty!21579 rules!2135))))

(assert (=> d!1003771 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1026 thiss!18206 rules!2135 tokens!494 (h!42629 tokens!494)) lt!1182873)))

(declare-fun bs!561686 () Bool)

(assert (= bs!561686 d!1003771))

(assert (=> bs!561686 m!3888901))

(declare-fun m!3890221 () Bool)

(assert (=> bs!561686 m!3890221))

(assert (=> bs!561686 m!3888903))

(assert (=> b!3474908 d!1003771))

(declare-fun d!1003791 () Bool)

(assert (=> d!1003791 (dynLambda!15720 lambda!122075 (h!42629 (t!274954 tokens!494)))))

(declare-fun lt!1182874 () Unit!52638)

(assert (=> d!1003791 (= lt!1182874 (choose!20105 tokens!494 lambda!122075 (h!42629 (t!274954 tokens!494))))))

(declare-fun e!2152749 () Bool)

(assert (=> d!1003791 e!2152749))

(declare-fun res!1401977 () Bool)

(assert (=> d!1003791 (=> (not res!1401977) (not e!2152749))))

(assert (=> d!1003791 (= res!1401977 (forall!7949 tokens!494 lambda!122075))))

(assert (=> d!1003791 (= (forallContained!1395 tokens!494 lambda!122075 (h!42629 (t!274954 tokens!494))) lt!1182874)))

(declare-fun b!3475630 () Bool)

(assert (=> b!3475630 (= e!2152749 (contains!6922 tokens!494 (h!42629 (t!274954 tokens!494))))))

(assert (= (and d!1003791 res!1401977) b!3475630))

(declare-fun b_lambda!100353 () Bool)

(assert (=> (not b_lambda!100353) (not d!1003791)))

(declare-fun m!3890231 () Bool)

(assert (=> d!1003791 m!3890231))

(declare-fun m!3890235 () Bool)

(assert (=> d!1003791 m!3890235))

(declare-fun m!3890239 () Bool)

(assert (=> d!1003791 m!3890239))

(assert (=> b!3475630 m!3889737))

(assert (=> b!3474908 d!1003791))

(declare-fun d!1003797 () Bool)

(declare-fun lt!1182880 () Int)

(declare-fun size!28248 (List!37333) Int)

(assert (=> d!1003797 (= lt!1182880 (size!28248 (list!13564 (_1!21611 lt!1182545))))))

(declare-fun size!28249 (Conc!11272) Int)

(assert (=> d!1003797 (= lt!1182880 (size!28249 (c!595968 (_1!21611 lt!1182545))))))

(assert (=> d!1003797 (= (size!28242 (_1!21611 lt!1182545)) lt!1182880)))

(declare-fun bs!561687 () Bool)

(assert (= bs!561687 d!1003797))

(assert (=> bs!561687 m!3889687))

(assert (=> bs!561687 m!3889687))

(declare-fun m!3890261 () Bool)

(assert (=> bs!561687 m!3890261))

(declare-fun m!3890263 () Bool)

(assert (=> bs!561687 m!3890263))

(assert (=> b!3474908 d!1003797))

(declare-fun d!1003803 () Bool)

(declare-fun dynLambda!15722 (Int BalanceConc!22156) TokenValue!5678)

(assert (=> d!1003803 (= (apply!8785 (transformation!5448 (rule!8044 (h!42629 tokens!494))) lt!1182549) (dynLambda!15722 (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) lt!1182549))))

(declare-fun b_lambda!100355 () Bool)

(assert (=> (not b_lambda!100355) (not d!1003803)))

(declare-fun t!275012 () Bool)

(declare-fun tb!190513 () Bool)

(assert (=> (and b!3474887 (= (toValue!7684 (transformation!5448 (rule!8044 separatorToken!241))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275012) tb!190513))

(declare-fun result!234564 () Bool)

(assert (=> tb!190513 (= result!234564 (inv!21 (dynLambda!15722 (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) lt!1182549)))))

(declare-fun m!3890281 () Bool)

(assert (=> tb!190513 m!3890281))

(assert (=> d!1003803 t!275012))

(declare-fun b_and!245137 () Bool)

(assert (= b_and!245059 (and (=> t!275012 result!234564) b_and!245137)))

(declare-fun t!275014 () Bool)

(declare-fun tb!190515 () Bool)

(assert (=> (and b!3474896 (= (toValue!7684 (transformation!5448 (h!42628 rules!2135))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275014) tb!190515))

(declare-fun result!234568 () Bool)

(assert (= result!234568 result!234564))

(assert (=> d!1003803 t!275014))

(declare-fun b_and!245139 () Bool)

(assert (= b_and!245063 (and (=> t!275014 result!234568) b_and!245139)))

(declare-fun t!275016 () Bool)

(declare-fun tb!190517 () Bool)

(assert (=> (and b!3474906 (= (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275016) tb!190517))

(declare-fun result!234570 () Bool)

(assert (= result!234570 result!234564))

(assert (=> d!1003803 t!275016))

(declare-fun b_and!245141 () Bool)

(assert (= b_and!245067 (and (=> t!275016 result!234570) b_and!245141)))

(declare-fun m!3890287 () Bool)

(assert (=> d!1003803 m!3890287))

(assert (=> b!3474908 d!1003803))

(declare-fun b!3475768 () Bool)

(declare-fun e!2152842 () Option!7550)

(declare-datatypes ((tuple2!36962 0))(
  ( (tuple2!36963 (_1!21615 List!37331) (_2!21615 List!37331)) )
))
(declare-fun lt!1182901 () tuple2!36962)

(assert (=> b!3475768 (= e!2152842 (Some!7549 (tuple2!36953 (Token!10263 (apply!8785 (transformation!5448 (rule!8044 (h!42629 tokens!494))) (seqFromList!3950 (_1!21615 lt!1182901))) (rule!8044 (h!42629 tokens!494)) (size!28247 (seqFromList!3950 (_1!21615 lt!1182901))) (_1!21615 lt!1182901)) (_2!21615 lt!1182901))))))

(declare-fun lt!1182900 () Unit!52638)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!888 (Regex!10207 List!37331) Unit!52638)

(assert (=> b!3475768 (= lt!1182900 (longestMatchIsAcceptedByMatchOrIsEmpty!888 (regex!5448 (rule!8044 (h!42629 tokens!494))) lt!1182557))))

(declare-fun res!1402035 () Bool)

(declare-fun findLongestMatchInner!915 (Regex!10207 List!37331 Int List!37331 List!37331 Int) tuple2!36962)

(assert (=> b!3475768 (= res!1402035 (isEmpty!21576 (_1!21615 (findLongestMatchInner!915 (regex!5448 (rule!8044 (h!42629 tokens!494))) Nil!37207 (size!28243 Nil!37207) lt!1182557 lt!1182557 (size!28243 lt!1182557)))))))

(declare-fun e!2152843 () Bool)

(assert (=> b!3475768 (=> res!1402035 e!2152843)))

(assert (=> b!3475768 e!2152843))

(declare-fun lt!1182902 () Unit!52638)

(assert (=> b!3475768 (= lt!1182902 lt!1182900)))

(declare-fun lt!1182899 () Unit!52638)

(declare-fun lemmaSemiInverse!1265 (TokenValueInjection!10784 BalanceConc!22156) Unit!52638)

(assert (=> b!3475768 (= lt!1182899 (lemmaSemiInverse!1265 (transformation!5448 (rule!8044 (h!42629 tokens!494))) (seqFromList!3950 (_1!21615 lt!1182901))))))

(declare-fun b!3475769 () Bool)

(declare-fun res!1402034 () Bool)

(declare-fun e!2152841 () Bool)

(assert (=> b!3475769 (=> (not res!1402034) (not e!2152841))))

(declare-fun lt!1182903 () Option!7550)

(assert (=> b!3475769 (= res!1402034 (= (++!9185 (list!13561 (charsOf!3462 (_1!21610 (get!11919 lt!1182903)))) (_2!21610 (get!11919 lt!1182903))) lt!1182557))))

(declare-fun b!3475770 () Bool)

(declare-fun e!2152840 () Bool)

(assert (=> b!3475770 (= e!2152840 e!2152841)))

(declare-fun res!1402030 () Bool)

(assert (=> b!3475770 (=> (not res!1402030) (not e!2152841))))

(assert (=> b!3475770 (= res!1402030 (matchR!4791 (regex!5448 (rule!8044 (h!42629 tokens!494))) (list!13561 (charsOf!3462 (_1!21610 (get!11919 lt!1182903))))))))

(declare-fun d!1003821 () Bool)

(assert (=> d!1003821 e!2152840))

(declare-fun res!1402033 () Bool)

(assert (=> d!1003821 (=> res!1402033 e!2152840)))

(assert (=> d!1003821 (= res!1402033 (isEmpty!21585 lt!1182903))))

(assert (=> d!1003821 (= lt!1182903 e!2152842)))

(declare-fun c!596138 () Bool)

(assert (=> d!1003821 (= c!596138 (isEmpty!21576 (_1!21615 lt!1182901)))))

(declare-fun findLongestMatch!830 (Regex!10207 List!37331) tuple2!36962)

(assert (=> d!1003821 (= lt!1182901 (findLongestMatch!830 (regex!5448 (rule!8044 (h!42629 tokens!494))) lt!1182557))))

(assert (=> d!1003821 (ruleValid!1746 thiss!18206 (rule!8044 (h!42629 tokens!494)))))

(assert (=> d!1003821 (= (maxPrefixOneRule!1744 thiss!18206 (rule!8044 (h!42629 tokens!494)) lt!1182557) lt!1182903)))

(declare-fun b!3475771 () Bool)

(assert (=> b!3475771 (= e!2152843 (matchR!4791 (regex!5448 (rule!8044 (h!42629 tokens!494))) (_1!21615 (findLongestMatchInner!915 (regex!5448 (rule!8044 (h!42629 tokens!494))) Nil!37207 (size!28243 Nil!37207) lt!1182557 lt!1182557 (size!28243 lt!1182557)))))))

(declare-fun b!3475772 () Bool)

(declare-fun res!1402032 () Bool)

(assert (=> b!3475772 (=> (not res!1402032) (not e!2152841))))

(assert (=> b!3475772 (= res!1402032 (< (size!28243 (_2!21610 (get!11919 lt!1182903))) (size!28243 lt!1182557)))))

(declare-fun b!3475773 () Bool)

(declare-fun res!1402029 () Bool)

(assert (=> b!3475773 (=> (not res!1402029) (not e!2152841))))

(assert (=> b!3475773 (= res!1402029 (= (rule!8044 (_1!21610 (get!11919 lt!1182903))) (rule!8044 (h!42629 tokens!494))))))

(declare-fun b!3475774 () Bool)

(declare-fun res!1402031 () Bool)

(assert (=> b!3475774 (=> (not res!1402031) (not e!2152841))))

(assert (=> b!3475774 (= res!1402031 (= (value!175728 (_1!21610 (get!11919 lt!1182903))) (apply!8785 (transformation!5448 (rule!8044 (_1!21610 (get!11919 lt!1182903)))) (seqFromList!3950 (originalCharacters!6162 (_1!21610 (get!11919 lt!1182903)))))))))

(declare-fun b!3475775 () Bool)

(assert (=> b!3475775 (= e!2152842 None!7549)))

(declare-fun b!3475776 () Bool)

(assert (=> b!3475776 (= e!2152841 (= (size!28241 (_1!21610 (get!11919 lt!1182903))) (size!28243 (originalCharacters!6162 (_1!21610 (get!11919 lt!1182903))))))))

(assert (= (and d!1003821 c!596138) b!3475775))

(assert (= (and d!1003821 (not c!596138)) b!3475768))

(assert (= (and b!3475768 (not res!1402035)) b!3475771))

(assert (= (and d!1003821 (not res!1402033)) b!3475770))

(assert (= (and b!3475770 res!1402030) b!3475769))

(assert (= (and b!3475769 res!1402034) b!3475772))

(assert (= (and b!3475772 res!1402032) b!3475773))

(assert (= (and b!3475773 res!1402029) b!3475774))

(assert (= (and b!3475774 res!1402031) b!3475776))

(declare-fun m!3890331 () Bool)

(assert (=> b!3475771 m!3890331))

(assert (=> b!3475771 m!3888939))

(assert (=> b!3475771 m!3890331))

(assert (=> b!3475771 m!3888939))

(declare-fun m!3890333 () Bool)

(assert (=> b!3475771 m!3890333))

(declare-fun m!3890335 () Bool)

(assert (=> b!3475771 m!3890335))

(declare-fun m!3890337 () Bool)

(assert (=> b!3475773 m!3890337))

(declare-fun m!3890339 () Bool)

(assert (=> d!1003821 m!3890339))

(declare-fun m!3890341 () Bool)

(assert (=> d!1003821 m!3890341))

(declare-fun m!3890343 () Bool)

(assert (=> d!1003821 m!3890343))

(assert (=> d!1003821 m!3888983))

(assert (=> b!3475769 m!3890337))

(declare-fun m!3890345 () Bool)

(assert (=> b!3475769 m!3890345))

(assert (=> b!3475769 m!3890345))

(declare-fun m!3890347 () Bool)

(assert (=> b!3475769 m!3890347))

(assert (=> b!3475769 m!3890347))

(declare-fun m!3890349 () Bool)

(assert (=> b!3475769 m!3890349))

(assert (=> b!3475776 m!3890337))

(declare-fun m!3890351 () Bool)

(assert (=> b!3475776 m!3890351))

(declare-fun m!3890353 () Bool)

(assert (=> b!3475768 m!3890353))

(declare-fun m!3890355 () Bool)

(assert (=> b!3475768 m!3890355))

(assert (=> b!3475768 m!3890353))

(assert (=> b!3475768 m!3890353))

(declare-fun m!3890357 () Bool)

(assert (=> b!3475768 m!3890357))

(assert (=> b!3475768 m!3890331))

(assert (=> b!3475768 m!3890353))

(declare-fun m!3890359 () Bool)

(assert (=> b!3475768 m!3890359))

(assert (=> b!3475768 m!3888939))

(declare-fun m!3890361 () Bool)

(assert (=> b!3475768 m!3890361))

(declare-fun m!3890363 () Bool)

(assert (=> b!3475768 m!3890363))

(assert (=> b!3475768 m!3890331))

(assert (=> b!3475768 m!3888939))

(assert (=> b!3475768 m!3890333))

(assert (=> b!3475774 m!3890337))

(declare-fun m!3890365 () Bool)

(assert (=> b!3475774 m!3890365))

(assert (=> b!3475774 m!3890365))

(declare-fun m!3890367 () Bool)

(assert (=> b!3475774 m!3890367))

(assert (=> b!3475772 m!3890337))

(declare-fun m!3890369 () Bool)

(assert (=> b!3475772 m!3890369))

(assert (=> b!3475772 m!3888939))

(assert (=> b!3475770 m!3890337))

(assert (=> b!3475770 m!3890345))

(assert (=> b!3475770 m!3890345))

(assert (=> b!3475770 m!3890347))

(assert (=> b!3475770 m!3890347))

(declare-fun m!3890371 () Bool)

(assert (=> b!3475770 m!3890371))

(assert (=> b!3474908 d!1003821))

(declare-fun d!1003845 () Bool)

(declare-fun lt!1182904 () Int)

(assert (=> d!1003845 (= lt!1182904 (size!28248 (list!13564 (_1!21611 lt!1182555))))))

(assert (=> d!1003845 (= lt!1182904 (size!28249 (c!595968 (_1!21611 lt!1182555))))))

(assert (=> d!1003845 (= (size!28242 (_1!21611 lt!1182555)) lt!1182904)))

(declare-fun bs!561694 () Bool)

(assert (= bs!561694 d!1003845))

(assert (=> bs!561694 m!3889241))

(assert (=> bs!561694 m!3889241))

(declare-fun m!3890373 () Bool)

(assert (=> bs!561694 m!3890373))

(declare-fun m!3890375 () Bool)

(assert (=> bs!561694 m!3890375))

(assert (=> b!3474908 d!1003845))

(declare-fun d!1003847 () Bool)

(declare-fun lt!1182908 () BalanceConc!22156)

(assert (=> d!1003847 (= (list!13561 lt!1182908) (printListTailRec!694 thiss!18206 (dropList!1211 lt!1182565 0) (list!13561 (BalanceConc!22157 Empty!11271))))))

(declare-fun e!2152844 () BalanceConc!22156)

(assert (=> d!1003847 (= lt!1182908 e!2152844)))

(declare-fun c!596139 () Bool)

(assert (=> d!1003847 (= c!596139 (>= 0 (size!28242 lt!1182565)))))

(declare-fun e!2152845 () Bool)

(assert (=> d!1003847 e!2152845))

(declare-fun res!1402036 () Bool)

(assert (=> d!1003847 (=> (not res!1402036) (not e!2152845))))

(assert (=> d!1003847 (= res!1402036 (>= 0 0))))

(assert (=> d!1003847 (= (printTailRec!1532 thiss!18206 lt!1182565 0 (BalanceConc!22157 Empty!11271)) lt!1182908)))

(declare-fun b!3475777 () Bool)

(assert (=> b!3475777 (= e!2152845 (<= 0 (size!28242 lt!1182565)))))

(declare-fun b!3475778 () Bool)

(assert (=> b!3475778 (= e!2152844 (BalanceConc!22157 Empty!11271))))

(declare-fun b!3475779 () Bool)

(assert (=> b!3475779 (= e!2152844 (printTailRec!1532 thiss!18206 lt!1182565 (+ 0 1) (++!9187 (BalanceConc!22157 Empty!11271) (charsOf!3462 (apply!8784 lt!1182565 0)))))))

(declare-fun lt!1182911 () List!37333)

(assert (=> b!3475779 (= lt!1182911 (list!13564 lt!1182565))))

(declare-fun lt!1182909 () Unit!52638)

(assert (=> b!3475779 (= lt!1182909 (lemmaDropApply!1169 lt!1182911 0))))

(assert (=> b!3475779 (= (head!7335 (drop!2019 lt!1182911 0)) (apply!8788 lt!1182911 0))))

(declare-fun lt!1182906 () Unit!52638)

(assert (=> b!3475779 (= lt!1182906 lt!1182909)))

(declare-fun lt!1182907 () List!37333)

(assert (=> b!3475779 (= lt!1182907 (list!13564 lt!1182565))))

(declare-fun lt!1182910 () Unit!52638)

(assert (=> b!3475779 (= lt!1182910 (lemmaDropTail!1053 lt!1182907 0))))

(assert (=> b!3475779 (= (tail!5445 (drop!2019 lt!1182907 0)) (drop!2019 lt!1182907 (+ 0 1)))))

(declare-fun lt!1182905 () Unit!52638)

(assert (=> b!3475779 (= lt!1182905 lt!1182910)))

(assert (= (and d!1003847 res!1402036) b!3475777))

(assert (= (and d!1003847 c!596139) b!3475778))

(assert (= (and d!1003847 (not c!596139)) b!3475779))

(declare-fun m!3890377 () Bool)

(assert (=> d!1003847 m!3890377))

(assert (=> d!1003847 m!3890377))

(assert (=> d!1003847 m!3889479))

(declare-fun m!3890379 () Bool)

(assert (=> d!1003847 m!3890379))

(declare-fun m!3890381 () Bool)

(assert (=> d!1003847 m!3890381))

(assert (=> d!1003847 m!3889479))

(declare-fun m!3890383 () Bool)

(assert (=> d!1003847 m!3890383))

(assert (=> b!3475777 m!3890381))

(declare-fun m!3890385 () Bool)

(assert (=> b!3475779 m!3890385))

(declare-fun m!3890387 () Bool)

(assert (=> b!3475779 m!3890387))

(declare-fun m!3890389 () Bool)

(assert (=> b!3475779 m!3890389))

(declare-fun m!3890391 () Bool)

(assert (=> b!3475779 m!3890391))

(declare-fun m!3890393 () Bool)

(assert (=> b!3475779 m!3890393))

(declare-fun m!3890395 () Bool)

(assert (=> b!3475779 m!3890395))

(declare-fun m!3890397 () Bool)

(assert (=> b!3475779 m!3890397))

(declare-fun m!3890399 () Bool)

(assert (=> b!3475779 m!3890399))

(assert (=> b!3475779 m!3890385))

(assert (=> b!3475779 m!3890387))

(declare-fun m!3890401 () Bool)

(assert (=> b!3475779 m!3890401))

(declare-fun m!3890403 () Bool)

(assert (=> b!3475779 m!3890403))

(declare-fun m!3890405 () Bool)

(assert (=> b!3475779 m!3890405))

(assert (=> b!3475779 m!3890399))

(assert (=> b!3475779 m!3890395))

(assert (=> b!3475779 m!3890091))

(assert (=> b!3475779 m!3890391))

(declare-fun m!3890407 () Bool)

(assert (=> b!3475779 m!3890407))

(assert (=> b!3474908 d!1003847))

(declare-fun d!1003849 () Bool)

(assert (=> d!1003849 (= (isDefined!5814 lt!1182544) (not (isEmpty!21589 lt!1182544)))))

(declare-fun bs!561695 () Bool)

(assert (= bs!561695 d!1003849))

(declare-fun m!3890409 () Bool)

(assert (=> bs!561695 m!3890409))

(assert (=> b!3474908 d!1003849))

(declare-fun d!1003851 () Bool)

(assert (=> d!1003851 (not (contains!6920 (usedCharacters!682 (regex!5448 (rule!8044 (h!42629 tokens!494)))) lt!1182538))))

(declare-fun lt!1182914 () Unit!52638)

(declare-fun choose!20114 (LexerInterface!5037 List!37332 List!37332 Rule!10696 Rule!10696 C!20600) Unit!52638)

(assert (=> d!1003851 (= lt!1182914 (choose!20114 thiss!18206 rules!2135 rules!2135 (rule!8044 (h!42629 tokens!494)) (rule!8044 separatorToken!241) lt!1182538))))

(assert (=> d!1003851 (rulesInvariant!4434 thiss!18206 rules!2135)))

(assert (=> d!1003851 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!248 thiss!18206 rules!2135 rules!2135 (rule!8044 (h!42629 tokens!494)) (rule!8044 separatorToken!241) lt!1182538) lt!1182914)))

(declare-fun bs!561696 () Bool)

(assert (= bs!561696 d!1003851))

(assert (=> bs!561696 m!3888935))

(assert (=> bs!561696 m!3888935))

(assert (=> bs!561696 m!3888937))

(declare-fun m!3890411 () Bool)

(assert (=> bs!561696 m!3890411))

(assert (=> bs!561696 m!3888893))

(assert (=> b!3474908 d!1003851))

(declare-fun b!3475780 () Bool)

(declare-fun e!2152847 () Bool)

(declare-fun lt!1182915 () tuple2!36954)

(assert (=> b!3475780 (= e!2152847 (= (_2!21611 lt!1182915) lt!1182532))))

(declare-fun d!1003853 () Bool)

(declare-fun e!2152846 () Bool)

(assert (=> d!1003853 e!2152846))

(declare-fun res!1402037 () Bool)

(assert (=> d!1003853 (=> (not res!1402037) (not e!2152846))))

(assert (=> d!1003853 (= res!1402037 e!2152847)))

(declare-fun c!596141 () Bool)

(assert (=> d!1003853 (= c!596141 (> (size!28242 (_1!21611 lt!1182915)) 0))))

(assert (=> d!1003853 (= lt!1182915 (lexTailRecV2!1062 thiss!18206 rules!2135 lt!1182532 (BalanceConc!22157 Empty!11271) lt!1182532 (BalanceConc!22159 Empty!11272)))))

(assert (=> d!1003853 (= (lex!2363 thiss!18206 rules!2135 lt!1182532) lt!1182915)))

(declare-fun b!3475781 () Bool)

(assert (=> b!3475781 (= e!2152846 (= (list!13561 (_2!21611 lt!1182915)) (_2!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182532)))))))

(declare-fun b!3475782 () Bool)

(declare-fun res!1402039 () Bool)

(assert (=> b!3475782 (=> (not res!1402039) (not e!2152846))))

(assert (=> b!3475782 (= res!1402039 (= (list!13564 (_1!21611 lt!1182915)) (_1!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182532)))))))

(declare-fun b!3475783 () Bool)

(declare-fun e!2152848 () Bool)

(assert (=> b!3475783 (= e!2152848 (not (isEmpty!21577 (_1!21611 lt!1182915))))))

(declare-fun b!3475784 () Bool)

(assert (=> b!3475784 (= e!2152847 e!2152848)))

(declare-fun res!1402038 () Bool)

(assert (=> b!3475784 (= res!1402038 (< (size!28247 (_2!21611 lt!1182915)) (size!28247 lt!1182532)))))

(assert (=> b!3475784 (=> (not res!1402038) (not e!2152848))))

(assert (= (and d!1003853 c!596141) b!3475784))

(assert (= (and d!1003853 (not c!596141)) b!3475780))

(assert (= (and b!3475784 res!1402038) b!3475783))

(assert (= (and d!1003853 res!1402037) b!3475782))

(assert (= (and b!3475782 res!1402039) b!3475781))

(declare-fun m!3890413 () Bool)

(assert (=> b!3475782 m!3890413))

(declare-fun m!3890415 () Bool)

(assert (=> b!3475782 m!3890415))

(assert (=> b!3475782 m!3890415))

(declare-fun m!3890417 () Bool)

(assert (=> b!3475782 m!3890417))

(declare-fun m!3890419 () Bool)

(assert (=> b!3475784 m!3890419))

(declare-fun m!3890421 () Bool)

(assert (=> b!3475784 m!3890421))

(declare-fun m!3890423 () Bool)

(assert (=> d!1003853 m!3890423))

(declare-fun m!3890425 () Bool)

(assert (=> d!1003853 m!3890425))

(declare-fun m!3890427 () Bool)

(assert (=> b!3475783 m!3890427))

(declare-fun m!3890429 () Bool)

(assert (=> b!3475781 m!3890429))

(assert (=> b!3475781 m!3890415))

(assert (=> b!3475781 m!3890415))

(assert (=> b!3475781 m!3890417))

(assert (=> b!3474908 d!1003853))

(declare-fun b!3475785 () Bool)

(declare-fun e!2152850 () Bool)

(declare-fun lt!1182916 () tuple2!36954)

(assert (=> b!3475785 (= e!2152850 (= (_2!21611 lt!1182916) lt!1182542))))

(declare-fun d!1003855 () Bool)

(declare-fun e!2152849 () Bool)

(assert (=> d!1003855 e!2152849))

(declare-fun res!1402040 () Bool)

(assert (=> d!1003855 (=> (not res!1402040) (not e!2152849))))

(assert (=> d!1003855 (= res!1402040 e!2152850)))

(declare-fun c!596142 () Bool)

(assert (=> d!1003855 (= c!596142 (> (size!28242 (_1!21611 lt!1182916)) 0))))

(assert (=> d!1003855 (= lt!1182916 (lexTailRecV2!1062 thiss!18206 rules!2135 lt!1182542 (BalanceConc!22157 Empty!11271) lt!1182542 (BalanceConc!22159 Empty!11272)))))

(assert (=> d!1003855 (= (lex!2363 thiss!18206 rules!2135 lt!1182542) lt!1182916)))

(declare-fun b!3475786 () Bool)

(assert (=> b!3475786 (= e!2152849 (= (list!13561 (_2!21611 lt!1182916)) (_2!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182542)))))))

(declare-fun b!3475787 () Bool)

(declare-fun res!1402042 () Bool)

(assert (=> b!3475787 (=> (not res!1402042) (not e!2152849))))

(assert (=> b!3475787 (= res!1402042 (= (list!13564 (_1!21611 lt!1182916)) (_1!21613 (lexList!1454 thiss!18206 rules!2135 (list!13561 lt!1182542)))))))

(declare-fun b!3475788 () Bool)

(declare-fun e!2152851 () Bool)

(assert (=> b!3475788 (= e!2152851 (not (isEmpty!21577 (_1!21611 lt!1182916))))))

(declare-fun b!3475789 () Bool)

(assert (=> b!3475789 (= e!2152850 e!2152851)))

(declare-fun res!1402041 () Bool)

(assert (=> b!3475789 (= res!1402041 (< (size!28247 (_2!21611 lt!1182916)) (size!28247 lt!1182542)))))

(assert (=> b!3475789 (=> (not res!1402041) (not e!2152851))))

(assert (= (and d!1003855 c!596142) b!3475789))

(assert (= (and d!1003855 (not c!596142)) b!3475785))

(assert (= (and b!3475789 res!1402041) b!3475788))

(assert (= (and d!1003855 res!1402040) b!3475787))

(assert (= (and b!3475787 res!1402042) b!3475786))

(declare-fun m!3890431 () Bool)

(assert (=> b!3475787 m!3890431))

(declare-fun m!3890433 () Bool)

(assert (=> b!3475787 m!3890433))

(assert (=> b!3475787 m!3890433))

(declare-fun m!3890435 () Bool)

(assert (=> b!3475787 m!3890435))

(declare-fun m!3890437 () Bool)

(assert (=> b!3475789 m!3890437))

(declare-fun m!3890439 () Bool)

(assert (=> b!3475789 m!3890439))

(declare-fun m!3890441 () Bool)

(assert (=> d!1003855 m!3890441))

(declare-fun m!3890443 () Bool)

(assert (=> d!1003855 m!3890443))

(declare-fun m!3890445 () Bool)

(assert (=> b!3475788 m!3890445))

(declare-fun m!3890447 () Bool)

(assert (=> b!3475786 m!3890447))

(assert (=> b!3475786 m!3890433))

(assert (=> b!3475786 m!3890433))

(assert (=> b!3475786 m!3890435))

(assert (=> b!3474908 d!1003855))

(declare-fun d!1003857 () Bool)

(declare-fun lt!1182919 () Bool)

(declare-fun content!5205 (List!37332) (InoxSet Rule!10696))

(assert (=> d!1003857 (= lt!1182919 (select (content!5205 rules!2135) (rule!8044 (h!42629 tokens!494))))))

(declare-fun e!2152857 () Bool)

(assert (=> d!1003857 (= lt!1182919 e!2152857)))

(declare-fun res!1402047 () Bool)

(assert (=> d!1003857 (=> (not res!1402047) (not e!2152857))))

(assert (=> d!1003857 (= res!1402047 ((_ is Cons!37208) rules!2135))))

(assert (=> d!1003857 (= (contains!6919 rules!2135 (rule!8044 (h!42629 tokens!494))) lt!1182919)))

(declare-fun b!3475794 () Bool)

(declare-fun e!2152856 () Bool)

(assert (=> b!3475794 (= e!2152857 e!2152856)))

(declare-fun res!1402048 () Bool)

(assert (=> b!3475794 (=> res!1402048 e!2152856)))

(assert (=> b!3475794 (= res!1402048 (= (h!42628 rules!2135) (rule!8044 (h!42629 tokens!494))))))

(declare-fun b!3475795 () Bool)

(assert (=> b!3475795 (= e!2152856 (contains!6919 (t!274953 rules!2135) (rule!8044 (h!42629 tokens!494))))))

(assert (= (and d!1003857 res!1402047) b!3475794))

(assert (= (and b!3475794 (not res!1402048)) b!3475795))

(declare-fun m!3890449 () Bool)

(assert (=> d!1003857 m!3890449))

(declare-fun m!3890451 () Bool)

(assert (=> d!1003857 m!3890451))

(declare-fun m!3890453 () Bool)

(assert (=> b!3475795 m!3890453))

(assert (=> b!3474908 d!1003857))

(declare-fun d!1003859 () Bool)

(declare-fun res!1402053 () Bool)

(declare-fun e!2152862 () Bool)

(assert (=> d!1003859 (=> res!1402053 e!2152862)))

(assert (=> d!1003859 (= res!1402053 ((_ is Nil!37209) tokens!494))))

(assert (=> d!1003859 (= (forall!7949 tokens!494 lambda!122074) e!2152862)))

(declare-fun b!3475800 () Bool)

(declare-fun e!2152863 () Bool)

(assert (=> b!3475800 (= e!2152862 e!2152863)))

(declare-fun res!1402054 () Bool)

(assert (=> b!3475800 (=> (not res!1402054) (not e!2152863))))

(assert (=> b!3475800 (= res!1402054 (dynLambda!15720 lambda!122074 (h!42629 tokens!494)))))

(declare-fun b!3475801 () Bool)

(assert (=> b!3475801 (= e!2152863 (forall!7949 (t!274954 tokens!494) lambda!122074))))

(assert (= (and d!1003859 (not res!1402053)) b!3475800))

(assert (= (and b!3475800 res!1402054) b!3475801))

(declare-fun b_lambda!100381 () Bool)

(assert (=> (not b_lambda!100381) (not b!3475800)))

(assert (=> b!3475800 m!3889739))

(declare-fun m!3890455 () Bool)

(assert (=> b!3475801 m!3890455))

(assert (=> b!3474883 d!1003859))

(declare-fun d!1003861 () Bool)

(assert (=> d!1003861 (= (isEmpty!21579 rules!2135) ((_ is Nil!37208) rules!2135))))

(assert (=> b!3474904 d!1003861))

(declare-fun d!1003863 () Bool)

(declare-fun res!1402057 () Bool)

(declare-fun e!2152866 () Bool)

(assert (=> d!1003863 (=> (not res!1402057) (not e!2152866))))

(declare-fun rulesValid!2049 (LexerInterface!5037 List!37332) Bool)

(assert (=> d!1003863 (= res!1402057 (rulesValid!2049 thiss!18206 rules!2135))))

(assert (=> d!1003863 (= (rulesInvariant!4434 thiss!18206 rules!2135) e!2152866)))

(declare-fun b!3475804 () Bool)

(declare-datatypes ((List!37335 0))(
  ( (Nil!37211) (Cons!37211 (h!42631 String!41724) (t!275050 List!37335)) )
))
(declare-fun noDuplicateTag!2045 (LexerInterface!5037 List!37332 List!37335) Bool)

(assert (=> b!3475804 (= e!2152866 (noDuplicateTag!2045 thiss!18206 rules!2135 Nil!37211))))

(assert (= (and d!1003863 res!1402057) b!3475804))

(declare-fun m!3890457 () Bool)

(assert (=> d!1003863 m!3890457))

(declare-fun m!3890459 () Bool)

(assert (=> b!3475804 m!3890459))

(assert (=> b!3474905 d!1003863))

(declare-fun d!1003865 () Bool)

(declare-fun lt!1182920 () Bool)

(assert (=> d!1003865 (= lt!1182920 (select (content!5205 rules!2135) (rule!8044 separatorToken!241)))))

(declare-fun e!2152868 () Bool)

(assert (=> d!1003865 (= lt!1182920 e!2152868)))

(declare-fun res!1402058 () Bool)

(assert (=> d!1003865 (=> (not res!1402058) (not e!2152868))))

(assert (=> d!1003865 (= res!1402058 ((_ is Cons!37208) rules!2135))))

(assert (=> d!1003865 (= (contains!6919 rules!2135 (rule!8044 separatorToken!241)) lt!1182920)))

(declare-fun b!3475805 () Bool)

(declare-fun e!2152867 () Bool)

(assert (=> b!3475805 (= e!2152868 e!2152867)))

(declare-fun res!1402059 () Bool)

(assert (=> b!3475805 (=> res!1402059 e!2152867)))

(assert (=> b!3475805 (= res!1402059 (= (h!42628 rules!2135) (rule!8044 separatorToken!241)))))

(declare-fun b!3475806 () Bool)

(assert (=> b!3475806 (= e!2152867 (contains!6919 (t!274953 rules!2135) (rule!8044 separatorToken!241)))))

(assert (= (and d!1003865 res!1402058) b!3475805))

(assert (= (and b!3475805 (not res!1402059)) b!3475806))

(assert (=> d!1003865 m!3890449))

(declare-fun m!3890461 () Bool)

(assert (=> d!1003865 m!3890461))

(declare-fun m!3890463 () Bool)

(assert (=> b!3475806 m!3890463))

(assert (=> b!3474884 d!1003865))

(declare-fun b!3475818 () Bool)

(declare-fun e!2152871 () Bool)

(declare-fun tp!1080363 () Bool)

(declare-fun tp!1080362 () Bool)

(assert (=> b!3475818 (= e!2152871 (and tp!1080363 tp!1080362))))

(declare-fun b!3475820 () Bool)

(declare-fun tp!1080359 () Bool)

(declare-fun tp!1080361 () Bool)

(assert (=> b!3475820 (= e!2152871 (and tp!1080359 tp!1080361))))

(declare-fun b!3475819 () Bool)

(declare-fun tp!1080360 () Bool)

(assert (=> b!3475819 (= e!2152871 tp!1080360)))

(assert (=> b!3474912 (= tp!1080273 e!2152871)))

(declare-fun b!3475817 () Bool)

(declare-fun tp_is_empty!17569 () Bool)

(assert (=> b!3475817 (= e!2152871 tp_is_empty!17569)))

(assert (= (and b!3474912 ((_ is ElementMatch!10207) (regex!5448 (rule!8044 (h!42629 tokens!494))))) b!3475817))

(assert (= (and b!3474912 ((_ is Concat!15885) (regex!5448 (rule!8044 (h!42629 tokens!494))))) b!3475818))

(assert (= (and b!3474912 ((_ is Star!10207) (regex!5448 (rule!8044 (h!42629 tokens!494))))) b!3475819))

(assert (= (and b!3474912 ((_ is Union!10207) (regex!5448 (rule!8044 (h!42629 tokens!494))))) b!3475820))

(declare-fun b!3475831 () Bool)

(declare-fun b_free!90109 () Bool)

(declare-fun b_next!90813 () Bool)

(assert (=> b!3475831 (= b_free!90109 (not b_next!90813))))

(declare-fun tb!190535 () Bool)

(declare-fun t!275034 () Bool)

(assert (=> (and b!3475831 (= (toValue!7684 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275034) tb!190535))

(declare-fun result!234600 () Bool)

(assert (= result!234600 result!234564))

(assert (=> d!1003803 t!275034))

(declare-fun b_and!245151 () Bool)

(declare-fun tp!1080373 () Bool)

(assert (=> b!3475831 (= tp!1080373 (and (=> t!275034 result!234600) b_and!245151))))

(declare-fun b_free!90111 () Bool)

(declare-fun b_next!90815 () Bool)

(assert (=> b!3475831 (= b_free!90111 (not b_next!90815))))

(declare-fun t!275036 () Bool)

(declare-fun tb!190537 () Bool)

(assert (=> (and b!3475831 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275036) tb!190537))

(declare-fun result!234602 () Bool)

(assert (= result!234602 result!234530))

(assert (=> d!1003577 t!275036))

(declare-fun tb!190539 () Bool)

(declare-fun t!275038 () Bool)

(assert (=> (and b!3475831 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241)))) t!275038) tb!190539))

(declare-fun result!234604 () Bool)

(assert (= result!234604 result!234544))

(assert (=> d!1003655 t!275038))

(assert (=> b!3475284 t!275036))

(declare-fun tb!190541 () Bool)

(declare-fun t!275040 () Bool)

(assert (=> (and b!3475831 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494)))))) t!275040) tb!190541))

(declare-fun result!234606 () Bool)

(assert (= result!234606 result!234550))

(assert (=> d!1003665 t!275040))

(assert (=> b!3475307 t!275038))

(declare-fun b_and!245153 () Bool)

(declare-fun tp!1080372 () Bool)

(assert (=> b!3475831 (= tp!1080372 (and (=> t!275036 result!234602) (=> t!275038 result!234604) (=> t!275040 result!234606) b_and!245153))))

(declare-fun e!2152881 () Bool)

(assert (=> b!3475831 (= e!2152881 (and tp!1080373 tp!1080372))))

(declare-fun e!2152883 () Bool)

(declare-fun tp!1080375 () Bool)

(declare-fun b!3475830 () Bool)

(assert (=> b!3475830 (= e!2152883 (and tp!1080375 (inv!50393 (tag!6062 (h!42628 (t!274953 rules!2135)))) (inv!50396 (transformation!5448 (h!42628 (t!274953 rules!2135)))) e!2152881))))

(declare-fun b!3475829 () Bool)

(declare-fun e!2152882 () Bool)

(declare-fun tp!1080374 () Bool)

(assert (=> b!3475829 (= e!2152882 (and e!2152883 tp!1080374))))

(assert (=> b!3474914 (= tp!1080276 e!2152882)))

(assert (= b!3475830 b!3475831))

(assert (= b!3475829 b!3475830))

(assert (= (and b!3474914 ((_ is Cons!37208) (t!274953 rules!2135))) b!3475829))

(declare-fun m!3890465 () Bool)

(assert (=> b!3475830 m!3890465))

(declare-fun m!3890467 () Bool)

(assert (=> b!3475830 m!3890467))

(declare-fun b!3475833 () Bool)

(declare-fun e!2152884 () Bool)

(declare-fun tp!1080380 () Bool)

(declare-fun tp!1080379 () Bool)

(assert (=> b!3475833 (= e!2152884 (and tp!1080380 tp!1080379))))

(declare-fun b!3475835 () Bool)

(declare-fun tp!1080376 () Bool)

(declare-fun tp!1080378 () Bool)

(assert (=> b!3475835 (= e!2152884 (and tp!1080376 tp!1080378))))

(declare-fun b!3475834 () Bool)

(declare-fun tp!1080377 () Bool)

(assert (=> b!3475834 (= e!2152884 tp!1080377)))

(assert (=> b!3474878 (= tp!1080281 e!2152884)))

(declare-fun b!3475832 () Bool)

(assert (=> b!3475832 (= e!2152884 tp_is_empty!17569)))

(assert (= (and b!3474878 ((_ is ElementMatch!10207) (regex!5448 (h!42628 rules!2135)))) b!3475832))

(assert (= (and b!3474878 ((_ is Concat!15885) (regex!5448 (h!42628 rules!2135)))) b!3475833))

(assert (= (and b!3474878 ((_ is Star!10207) (regex!5448 (h!42628 rules!2135)))) b!3475834))

(assert (= (and b!3474878 ((_ is Union!10207) (regex!5448 (h!42628 rules!2135)))) b!3475835))

(declare-fun b!3475840 () Bool)

(declare-fun e!2152887 () Bool)

(declare-fun tp!1080383 () Bool)

(assert (=> b!3475840 (= e!2152887 (and tp_is_empty!17569 tp!1080383))))

(assert (=> b!3474907 (= tp!1080277 e!2152887)))

(assert (= (and b!3474907 ((_ is Cons!37207) (originalCharacters!6162 separatorToken!241))) b!3475840))

(declare-fun b!3475843 () Bool)

(declare-fun e!2152890 () Bool)

(assert (=> b!3475843 (= e!2152890 true)))

(declare-fun b!3475842 () Bool)

(declare-fun e!2152889 () Bool)

(assert (=> b!3475842 (= e!2152889 e!2152890)))

(declare-fun b!3475841 () Bool)

(declare-fun e!2152888 () Bool)

(assert (=> b!3475841 (= e!2152888 e!2152889)))

(assert (=> b!3474926 e!2152888))

(assert (= b!3475842 b!3475843))

(assert (= b!3475841 b!3475842))

(assert (= (and b!3474926 ((_ is Cons!37208) (t!274953 rules!2135))) b!3475841))

(assert (=> b!3475843 (< (dynLambda!15714 order!19873 (toValue!7684 (transformation!5448 (h!42628 (t!274953 rules!2135))))) (dynLambda!15715 order!19875 lambda!122075))))

(assert (=> b!3475843 (< (dynLambda!15716 order!19877 (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135))))) (dynLambda!15715 order!19875 lambda!122075))))

(declare-fun b!3475845 () Bool)

(declare-fun e!2152891 () Bool)

(declare-fun tp!1080388 () Bool)

(declare-fun tp!1080387 () Bool)

(assert (=> b!3475845 (= e!2152891 (and tp!1080388 tp!1080387))))

(declare-fun b!3475847 () Bool)

(declare-fun tp!1080384 () Bool)

(declare-fun tp!1080386 () Bool)

(assert (=> b!3475847 (= e!2152891 (and tp!1080384 tp!1080386))))

(declare-fun b!3475846 () Bool)

(declare-fun tp!1080385 () Bool)

(assert (=> b!3475846 (= e!2152891 tp!1080385)))

(assert (=> b!3474876 (= tp!1080279 e!2152891)))

(declare-fun b!3475844 () Bool)

(assert (=> b!3475844 (= e!2152891 tp_is_empty!17569)))

(assert (= (and b!3474876 ((_ is ElementMatch!10207) (regex!5448 (rule!8044 separatorToken!241)))) b!3475844))

(assert (= (and b!3474876 ((_ is Concat!15885) (regex!5448 (rule!8044 separatorToken!241)))) b!3475845))

(assert (= (and b!3474876 ((_ is Star!10207) (regex!5448 (rule!8044 separatorToken!241)))) b!3475846))

(assert (= (and b!3474876 ((_ is Union!10207) (regex!5448 (rule!8044 separatorToken!241)))) b!3475847))

(declare-fun b!3475848 () Bool)

(declare-fun e!2152892 () Bool)

(declare-fun tp!1080389 () Bool)

(assert (=> b!3475848 (= e!2152892 (and tp_is_empty!17569 tp!1080389))))

(assert (=> b!3474894 (= tp!1080272 e!2152892)))

(assert (= (and b!3474894 ((_ is Cons!37207) (originalCharacters!6162 (h!42629 tokens!494)))) b!3475848))

(declare-fun b!3475862 () Bool)

(declare-fun b_free!90113 () Bool)

(declare-fun b_next!90817 () Bool)

(assert (=> b!3475862 (= b_free!90113 (not b_next!90817))))

(declare-fun t!275042 () Bool)

(declare-fun tb!190543 () Bool)

(assert (=> (and b!3475862 (= (toValue!7684 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275042) tb!190543))

(declare-fun result!234612 () Bool)

(assert (= result!234612 result!234564))

(assert (=> d!1003803 t!275042))

(declare-fun tp!1080403 () Bool)

(declare-fun b_and!245155 () Bool)

(assert (=> b!3475862 (= tp!1080403 (and (=> t!275042 result!234612) b_and!245155))))

(declare-fun b_free!90115 () Bool)

(declare-fun b_next!90819 () Bool)

(assert (=> b!3475862 (= b_free!90115 (not b_next!90819))))

(declare-fun t!275044 () Bool)

(declare-fun tb!190545 () Bool)

(assert (=> (and b!3475862 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494))))) t!275044) tb!190545))

(declare-fun result!234614 () Bool)

(assert (= result!234614 result!234530))

(assert (=> d!1003577 t!275044))

(declare-fun t!275046 () Bool)

(declare-fun tb!190547 () Bool)

(assert (=> (and b!3475862 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241)))) t!275046) tb!190547))

(declare-fun result!234616 () Bool)

(assert (= result!234616 result!234544))

(assert (=> d!1003655 t!275046))

(assert (=> b!3475284 t!275044))

(declare-fun t!275048 () Bool)

(declare-fun tb!190549 () Bool)

(assert (=> (and b!3475862 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494)))))) t!275048) tb!190549))

(declare-fun result!234618 () Bool)

(assert (= result!234618 result!234550))

(assert (=> d!1003665 t!275048))

(assert (=> b!3475307 t!275046))

(declare-fun tp!1080402 () Bool)

(declare-fun b_and!245157 () Bool)

(assert (=> b!3475862 (= tp!1080402 (and (=> t!275044 result!234614) (=> t!275048 result!234618) (=> t!275046 result!234616) b_and!245157))))

(declare-fun tp!1080404 () Bool)

(declare-fun e!2152907 () Bool)

(declare-fun e!2152910 () Bool)

(declare-fun b!3475861 () Bool)

(assert (=> b!3475861 (= e!2152907 (and tp!1080404 (inv!50393 (tag!6062 (rule!8044 (h!42629 (t!274954 tokens!494))))) (inv!50396 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) e!2152910))))

(assert (=> b!3475862 (= e!2152910 (and tp!1080403 tp!1080402))))

(declare-fun tp!1080401 () Bool)

(declare-fun e!2152906 () Bool)

(declare-fun b!3475860 () Bool)

(assert (=> b!3475860 (= e!2152906 (and (inv!21 (value!175728 (h!42629 (t!274954 tokens!494)))) e!2152907 tp!1080401))))

(declare-fun e!2152908 () Bool)

(assert (=> b!3474916 (= tp!1080282 e!2152908)))

(declare-fun tp!1080400 () Bool)

(declare-fun b!3475859 () Bool)

(assert (=> b!3475859 (= e!2152908 (and (inv!50397 (h!42629 (t!274954 tokens!494))) e!2152906 tp!1080400))))

(assert (= b!3475861 b!3475862))

(assert (= b!3475860 b!3475861))

(assert (= b!3475859 b!3475860))

(assert (= (and b!3474916 ((_ is Cons!37209) (t!274954 tokens!494))) b!3475859))

(declare-fun m!3890469 () Bool)

(assert (=> b!3475861 m!3890469))

(declare-fun m!3890471 () Bool)

(assert (=> b!3475861 m!3890471))

(declare-fun m!3890473 () Bool)

(assert (=> b!3475860 m!3890473))

(declare-fun m!3890475 () Bool)

(assert (=> b!3475859 m!3890475))

(declare-fun b_lambda!100383 () Bool)

(assert (= b_lambda!100339 (or (and b!3474887 b_free!90091 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))) (and b!3474906 b_free!90099 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))) (and b!3475862 b_free!90115) (and b!3475831 b_free!90111 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))) (and b!3474896 b_free!90095 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))) b_lambda!100383)))

(declare-fun b_lambda!100385 () Bool)

(assert (= b_lambda!100355 (or (and b!3474906 b_free!90097) (and b!3475831 b_free!90109 (= (toValue!7684 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3475862 b_free!90113 (= (toValue!7684 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474896 b_free!90093 (= (toValue!7684 (transformation!5448 (h!42628 rules!2135))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474887 b_free!90089 (= (toValue!7684 (transformation!5448 (rule!8044 separatorToken!241))) (toValue!7684 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) b_lambda!100385)))

(declare-fun b_lambda!100387 () Bool)

(assert (= b_lambda!100335 (or (and b!3474887 b_free!90091) (and b!3475831 b_free!90111 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3475862 b_free!90115 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3474896 b_free!90095 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3474906 b_free!90099 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) b_lambda!100387)))

(declare-fun b_lambda!100389 () Bool)

(assert (= b_lambda!100343 (or b!3474883 b_lambda!100389)))

(declare-fun bs!561697 () Bool)

(declare-fun d!1003867 () Bool)

(assert (= bs!561697 (and d!1003867 b!3474883)))

(assert (=> bs!561697 (= (dynLambda!15720 lambda!122074 (h!42629 tokens!494)) (not (isSeparator!5448 (rule!8044 (h!42629 tokens!494)))))))

(assert (=> d!1003677 d!1003867))

(declare-fun b_lambda!100391 () Bool)

(assert (= b_lambda!100341 (or b!3474883 b_lambda!100391)))

(declare-fun bs!561698 () Bool)

(declare-fun d!1003869 () Bool)

(assert (= bs!561698 (and d!1003869 b!3474883)))

(assert (=> bs!561698 (= (dynLambda!15720 lambda!122074 (h!42629 (t!274954 tokens!494))) (not (isSeparator!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))))))

(assert (=> d!1003675 d!1003869))

(declare-fun b_lambda!100393 () Bool)

(assert (= b_lambda!100381 (or b!3474883 b_lambda!100393)))

(assert (=> b!3475800 d!1003867))

(declare-fun b_lambda!100395 () Bool)

(assert (= b_lambda!100337 (or (and b!3474887 b_free!90091) (and b!3475831 b_free!90111 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3475862 b_free!90115 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3474896 b_free!90095 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) (and b!3474906 b_free!90099 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))) (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))))) b_lambda!100395)))

(declare-fun b_lambda!100397 () Bool)

(assert (= b_lambda!100333 (or (and b!3475831 b_free!90111 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474887 b_free!90091 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474896 b_free!90095 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474906 b_free!90099) (and b!3475862 b_free!90115 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) b_lambda!100397)))

(declare-fun b_lambda!100399 () Bool)

(assert (= b_lambda!100353 (or b!3474908 b_lambda!100399)))

(declare-fun bs!561699 () Bool)

(declare-fun d!1003871 () Bool)

(assert (= bs!561699 (and d!1003871 b!3474908)))

(assert (=> bs!561699 (= (dynLambda!15720 lambda!122075 (h!42629 (t!274954 tokens!494))) (rulesProduceIndividualToken!2529 thiss!18206 rules!2135 (h!42629 (t!274954 tokens!494))))))

(assert (=> bs!561699 m!3888951))

(assert (=> d!1003791 d!1003871))

(declare-fun b_lambda!100401 () Bool)

(assert (= b_lambda!100327 (or (and b!3475831 b_free!90111 (= (toChars!7543 (transformation!5448 (h!42628 (t!274953 rules!2135)))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474887 b_free!90091 (= (toChars!7543 (transformation!5448 (rule!8044 separatorToken!241))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474896 b_free!90095 (= (toChars!7543 (transformation!5448 (h!42628 rules!2135))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) (and b!3474906 b_free!90099) (and b!3475862 b_free!90115 (= (toChars!7543 (transformation!5448 (rule!8044 (h!42629 (t!274954 tokens!494))))) (toChars!7543 (transformation!5448 (rule!8044 (h!42629 tokens!494)))))) b_lambda!100401)))

(check-sat (not d!1003797) (not b!3475109) (not d!1003759) (not d!1003865) (not bm!250746) (not b!3475500) (not b_lambda!100395) (not b!3475806) (not b!3475833) (not d!1003849) (not b!3475333) (not b!3475258) (not b!3475357) (not b!3475198) (not b!3475549) (not d!1003651) (not b!3475774) (not b!3475325) (not d!1003821) (not b!3475279) (not d!1003845) (not b!3475777) (not d!1003857) (not b!3475103) (not b!3475522) (not d!1003673) (not b!3475374) (not d!1003681) (not b!3475773) (not b_next!90803) (not d!1003581) b_and!245123 (not b!3475768) (not bm!250778) (not b!3475299) (not d!1003589) (not d!1003729) b_and!245157 b_and!245139 (not b!3475330) (not b!3475847) (not b!3475287) (not b!3475542) (not bm!250772) (not d!1003629) (not d!1003645) (not tb!190501) (not b!3474969) (not bm!250750) (not b!3475779) (not b!3475285) (not b_lambda!100385) (not b!3475289) (not b!3475321) (not b!3475517) (not b!3475276) (not b!3475309) (not b!3475576) (not b!3475360) (not b!3475390) (not b!3475322) b_and!245119 (not d!1003671) (not b!3475284) (not b!3475328) (not d!1003733) (not b!3475497) (not b!3475539) (not b!3475101) (not bm!250777) (not bm!250751) (not b!3475326) (not d!1003663) (not b!3475307) (not b_lambda!100393) (not b!3475487) (not b!3475781) (not b!3475830) b_and!245155 (not d!1003529) (not bm!250774) (not b!3475180) (not b!3475496) (not d!1003675) (not d!1003751) (not b!3475106) (not d!1003767) (not b!3475846) (not d!1003855) (not b!3475363) (not bs!561699) (not b!3475787) (not b!3474981) (not b!3475818) (not d!1003761) (not b!3475318) (not d!1003491) (not b!3475789) (not b!3475526) (not b!3475295) (not b!3475515) (not d!1003847) (not b!3474977) (not b!3475834) (not b!3475387) (not b_lambda!100383) (not b!3475241) (not d!1003569) (not d!1003771) (not d!1003575) (not b!3475845) (not b!3475769) (not d!1003853) (not tb!190513) (not b!3475378) (not b!3475782) (not b!3475265) (not d!1003765) (not b_lambda!100387) (not d!1003583) (not b_lambda!100397) (not b!3475332) (not d!1003535) (not d!1003677) (not d!1003685) (not d!1003653) (not d!1003737) (not b!3475179) (not tb!190495) (not b!3475264) b_and!245151 (not b!3475520) (not d!1003537) b_and!245153 (not b!3475550) (not b!3475784) (not b!3475314) (not b!3475492) (not b!3475533) (not b!3475801) (not d!1003639) (not b!3475306) (not b!3475820) (not d!1003501) (not b!3475392) (not b!3475364) (not d!1003755) (not b!3475308) (not b!3475532) (not b_next!90801) (not d!1003745) (not b!3475547) (not b!3475393) (not d!1003735) (not b_next!90815) (not d!1003669) (not d!1003851) (not b!3475183) (not b!3475540) (not b!3475304) (not b!3475772) (not b!3475354) (not b!3475786) (not b!3475171) (not b!3475275) (not b!3475102) (not d!1003743) (not d!1003863) (not b!3475770) (not d!1003667) (not b!3475353) b_and!245121 (not b!3475548) (not d!1003577) (not b!3475359) (not b!3475819) b_and!245137 (not b!3475269) (not b!3475499) (not b!3475298) (not b!3475835) (not b!3475840) (not b!3475630) (not b!3475841) (not d!1003509) (not b!3475488) (not b_next!90813) (not b!3475252) (not d!1003587) (not b!3475524) (not bm!250747) (not b!3475195) (not b!3475296) (not d!1003689) (not b!3475489) (not d!1003679) (not bm!250773) (not bm!250776) (not b!3475861) (not d!1003607) (not b!3475317) (not b!3475239) (not d!1003539) (not d!1003605) (not d!1003731) (not b!3474971) (not d!1003791) (not d!1003741) (not b_lambda!100391) (not d!1003665) (not b!3475795) (not d!1003533) (not b!3475267) (not b!3475355) (not b!3475859) (not b!3474978) (not b!3474980) (not d!1003747) (not d!1003655) (not b_lambda!100389) (not b!3475120) (not b!3475493) (not d!1003635) b_and!245141 (not b!3475771) (not b_next!90795) (not b!3475182) (not b!3475385) (not b!3475776) (not b!3475358) (not b_next!90797) (not b!3475829) (not d!1003633) (not d!1003753) (not b_next!90799) (not b!3475172) (not d!1003649) (not b!3475860) (not d!1003637) (not b!3475356) (not b!3475388) (not b!3475384) (not b!3475804) (not b_next!90817) (not b!3475519) (not b!3475119) (not b!3475501) (not b_lambda!100399) (not b!3475848) (not b!3475278) (not b_lambda!100401) tp_is_empty!17569 (not b!3475197) (not b_next!90793) (not tb!190483) (not b!3475788) (not b!3475783) (not d!1003643) (not b_next!90819) (not d!1003657) (not d!1003757) (not b!3475490) (not b!3475181) (not bm!250738))
(check-sat b_and!245119 b_and!245155 (not b_next!90801) (not b_next!90815) b_and!245121 b_and!245137 (not b_next!90813) (not b_next!90799) (not b_next!90817) b_and!245123 (not b_next!90803) b_and!245139 b_and!245157 b_and!245151 b_and!245153 b_and!245141 (not b_next!90795) (not b_next!90797) (not b_next!90819) (not b_next!90793))
