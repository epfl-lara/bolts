; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297670 () Bool)

(assert start!297670)

(declare-fun b!3178496 () Bool)

(declare-fun b_free!83641 () Bool)

(declare-fun b_next!84345 () Bool)

(assert (=> b!3178496 (= b_free!83641 (not b_next!84345))))

(declare-fun tp!1005482 () Bool)

(declare-fun b_and!209935 () Bool)

(assert (=> b!3178496 (= tp!1005482 b_and!209935)))

(declare-fun b_free!83643 () Bool)

(declare-fun b_next!84347 () Bool)

(assert (=> b!3178496 (= b_free!83643 (not b_next!84347))))

(declare-fun tp!1005484 () Bool)

(declare-fun b_and!209937 () Bool)

(assert (=> b!3178496 (= tp!1005484 b_and!209937)))

(declare-fun b!3178490 () Bool)

(declare-fun b_free!83645 () Bool)

(declare-fun b_next!84349 () Bool)

(assert (=> b!3178490 (= b_free!83645 (not b_next!84349))))

(declare-fun tp!1005480 () Bool)

(declare-fun b_and!209939 () Bool)

(assert (=> b!3178490 (= tp!1005480 b_and!209939)))

(declare-fun b_free!83647 () Bool)

(declare-fun b_next!84351 () Bool)

(assert (=> b!3178490 (= b_free!83647 (not b_next!84351))))

(declare-fun tp!1005474 () Bool)

(declare-fun b_and!209941 () Bool)

(assert (=> b!3178490 (= tp!1005474 b_and!209941)))

(declare-fun b!3178494 () Bool)

(declare-fun b_free!83649 () Bool)

(declare-fun b_next!84353 () Bool)

(assert (=> b!3178494 (= b_free!83649 (not b_next!84353))))

(declare-fun tp!1005478 () Bool)

(declare-fun b_and!209943 () Bool)

(assert (=> b!3178494 (= tp!1005478 b_and!209943)))

(declare-fun b_free!83651 () Bool)

(declare-fun b_next!84355 () Bool)

(assert (=> b!3178494 (= b_free!83651 (not b_next!84355))))

(declare-fun tp!1005481 () Bool)

(declare-fun b_and!209945 () Bool)

(assert (=> b!3178494 (= tp!1005481 b_and!209945)))

(declare-fun e!1979909 () Bool)

(declare-fun b!3178475 () Bool)

(declare-fun e!1979919 () Bool)

(declare-fun tp!1005477 () Bool)

(declare-datatypes ((C!19912 0))(
  ( (C!19913 (val!12004 Int)) )
))
(declare-datatypes ((Regex!9863 0))(
  ( (ElementMatch!9863 (c!534040 C!19912)) (Concat!15197 (regOne!20238 Regex!9863) (regTwo!20238 Regex!9863)) (EmptyExpr!9863) (Star!9863 (reg!10192 Regex!9863)) (EmptyLang!9863) (Union!9863 (regOne!20239 Regex!9863) (regTwo!20239 Regex!9863)) )
))
(declare-datatypes ((List!35792 0))(
  ( (Nil!35668) (Cons!35668 (h!41088 (_ BitVec 16)) (t!234899 List!35792)) )
))
(declare-datatypes ((TokenValue!5334 0))(
  ( (FloatLiteralValue!10668 (text!37783 List!35792)) (TokenValueExt!5333 (__x!22885 Int)) (Broken!26670 (value!165898 List!35792)) (Object!5457) (End!5334) (Def!5334) (Underscore!5334) (Match!5334) (Else!5334) (Error!5334) (Case!5334) (If!5334) (Extends!5334) (Abstract!5334) (Class!5334) (Val!5334) (DelimiterValue!10668 (del!5394 List!35792)) (KeywordValue!5340 (value!165899 List!35792)) (CommentValue!10668 (value!165900 List!35792)) (WhitespaceValue!10668 (value!165901 List!35792)) (IndentationValue!5334 (value!165902 List!35792)) (String!40003) (Int32!5334) (Broken!26671 (value!165903 List!35792)) (Boolean!5335) (Unit!50091) (OperatorValue!5337 (op!5394 List!35792)) (IdentifierValue!10668 (value!165904 List!35792)) (IdentifierValue!10669 (value!165905 List!35792)) (WhitespaceValue!10669 (value!165906 List!35792)) (True!10668) (False!10668) (Broken!26672 (value!165907 List!35792)) (Broken!26673 (value!165908 List!35792)) (True!10669) (RightBrace!5334) (RightBracket!5334) (Colon!5334) (Null!5334) (Comma!5334) (LeftBracket!5334) (False!10669) (LeftBrace!5334) (ImaginaryLiteralValue!5334 (text!37784 List!35792)) (StringLiteralValue!16002 (value!165909 List!35792)) (EOFValue!5334 (value!165910 List!35792)) (IdentValue!5334 (value!165911 List!35792)) (DelimiterValue!10669 (value!165912 List!35792)) (DedentValue!5334 (value!165913 List!35792)) (NewLineValue!5334 (value!165914 List!35792)) (IntegerValue!16002 (value!165915 (_ BitVec 32)) (text!37785 List!35792)) (IntegerValue!16003 (value!165916 Int) (text!37786 List!35792)) (Times!5334) (Or!5334) (Equal!5334) (Minus!5334) (Broken!26674 (value!165917 List!35792)) (And!5334) (Div!5334) (LessEqual!5334) (Mod!5334) (Concat!15198) (Not!5334) (Plus!5334) (SpaceValue!5334 (value!165918 List!35792)) (IntegerValue!16004 (value!165919 Int) (text!37787 List!35792)) (StringLiteralValue!16003 (text!37788 List!35792)) (FloatLiteralValue!10669 (text!37789 List!35792)) (BytesLiteralValue!5334 (value!165920 List!35792)) (CommentValue!10669 (value!165921 List!35792)) (StringLiteralValue!16004 (value!165922 List!35792)) (ErrorTokenValue!5334 (msg!5395 List!35792)) )
))
(declare-datatypes ((List!35793 0))(
  ( (Nil!35669) (Cons!35669 (h!41089 C!19912) (t!234900 List!35793)) )
))
(declare-datatypes ((IArray!21171 0))(
  ( (IArray!21172 (innerList!10643 List!35793)) )
))
(declare-datatypes ((Conc!10583 0))(
  ( (Node!10583 (left!27745 Conc!10583) (right!28075 Conc!10583) (csize!21396 Int) (cheight!10794 Int)) (Leaf!16746 (xs!13701 IArray!21171) (csize!21397 Int)) (Empty!10583) )
))
(declare-datatypes ((BalanceConc!20780 0))(
  ( (BalanceConc!20781 (c!534041 Conc!10583)) )
))
(declare-datatypes ((String!40004 0))(
  ( (String!40005 (value!165923 String)) )
))
(declare-datatypes ((TokenValueInjection!10096 0))(
  ( (TokenValueInjection!10097 (toValue!7164 Int) (toChars!7023 Int)) )
))
(declare-datatypes ((Rule!10008 0))(
  ( (Rule!10009 (regex!5104 Regex!9863) (tag!5608 String!40004) (isSeparator!5104 Bool) (transformation!5104 TokenValueInjection!10096)) )
))
(declare-datatypes ((Token!9574 0))(
  ( (Token!9575 (value!165924 TokenValue!5334) (rule!7514 Rule!10008) (size!26933 Int) (originalCharacters!5818 List!35793)) )
))
(declare-datatypes ((List!35794 0))(
  ( (Nil!35670) (Cons!35670 (h!41090 Token!9574) (t!234901 List!35794)) )
))
(declare-fun tokens!494 () List!35794)

(declare-fun inv!21 (TokenValue!5334) Bool)

(assert (=> b!3178475 (= e!1979919 (and (inv!21 (value!165924 (h!41090 tokens!494))) e!1979909 tp!1005477))))

(declare-fun b!3178476 () Bool)

(declare-fun res!1291421 () Bool)

(declare-fun e!1979913 () Bool)

(assert (=> b!3178476 (=> (not res!1291421) (not e!1979913))))

(get-info :version)

(assert (=> b!3178476 (= res!1291421 (and (not ((_ is Nil!35670) tokens!494)) ((_ is Nil!35670) (t!234901 tokens!494))))))

(declare-fun b!3178477 () Bool)

(declare-fun tp!1005473 () Bool)

(declare-fun e!1979922 () Bool)

(declare-fun inv!48520 (String!40004) Bool)

(declare-fun inv!48523 (TokenValueInjection!10096) Bool)

(assert (=> b!3178477 (= e!1979909 (and tp!1005473 (inv!48520 (tag!5608 (rule!7514 (h!41090 tokens!494)))) (inv!48523 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) e!1979922))))

(declare-fun b!3178478 () Bool)

(declare-fun e!1979914 () Bool)

(declare-fun tp!1005472 () Bool)

(declare-fun inv!48524 (Token!9574) Bool)

(assert (=> b!3178478 (= e!1979914 (and (inv!48524 (h!41090 tokens!494)) e!1979919 tp!1005472))))

(declare-fun b!3178479 () Bool)

(declare-fun res!1291423 () Bool)

(assert (=> b!3178479 (=> (not res!1291423) (not e!1979913))))

(declare-datatypes ((LexerInterface!4693 0))(
  ( (LexerInterfaceExt!4690 (__x!22886 Int)) (Lexer!4691) )
))
(declare-fun thiss!18206 () LexerInterface!4693)

(declare-datatypes ((List!35795 0))(
  ( (Nil!35671) (Cons!35671 (h!41091 Rule!10008) (t!234902 List!35795)) )
))
(declare-fun rules!2135 () List!35795)

(declare-fun rulesInvariant!4090 (LexerInterface!4693 List!35795) Bool)

(assert (=> b!3178479 (= res!1291423 (rulesInvariant!4090 thiss!18206 rules!2135))))

(declare-fun separatorToken!241 () Token!9574)

(declare-fun e!1979923 () Bool)

(declare-fun tp!1005483 () Bool)

(declare-fun b!3178480 () Bool)

(declare-fun e!1979921 () Bool)

(assert (=> b!3178480 (= e!1979921 (and tp!1005483 (inv!48520 (tag!5608 (rule!7514 separatorToken!241))) (inv!48523 (transformation!5104 (rule!7514 separatorToken!241))) e!1979923))))

(declare-fun b!3178481 () Bool)

(declare-fun res!1291433 () Bool)

(declare-fun e!1979924 () Bool)

(assert (=> b!3178481 (=> res!1291433 e!1979924)))

(declare-fun rulesProduceIndividualToken!2185 (LexerInterface!4693 List!35795 Token!9574) Bool)

(assert (=> b!3178481 (= res!1291433 (not (rulesProduceIndividualToken!2185 thiss!18206 rules!2135 (h!41090 tokens!494))))))

(declare-fun b!3178482 () Bool)

(declare-fun res!1291425 () Bool)

(assert (=> b!3178482 (=> (not res!1291425) (not e!1979913))))

(declare-fun isEmpty!19786 (List!35795) Bool)

(assert (=> b!3178482 (= res!1291425 (not (isEmpty!19786 rules!2135)))))

(declare-fun res!1291426 () Bool)

(assert (=> start!297670 (=> (not res!1291426) (not e!1979913))))

(assert (=> start!297670 (= res!1291426 ((_ is Lexer!4691) thiss!18206))))

(assert (=> start!297670 e!1979913))

(assert (=> start!297670 true))

(declare-fun e!1979910 () Bool)

(assert (=> start!297670 e!1979910))

(assert (=> start!297670 e!1979914))

(declare-fun e!1979916 () Bool)

(assert (=> start!297670 (and (inv!48524 separatorToken!241) e!1979916)))

(declare-fun b!3178483 () Bool)

(declare-fun e!1979907 () Bool)

(declare-fun tp!1005476 () Bool)

(assert (=> b!3178483 (= e!1979910 (and e!1979907 tp!1005476))))

(declare-fun b!3178484 () Bool)

(declare-fun e!1979918 () Bool)

(assert (=> b!3178484 (= e!1979913 (not e!1979918))))

(declare-fun res!1291420 () Bool)

(assert (=> b!3178484 (=> res!1291420 e!1979918)))

(declare-fun lt!1068263 () List!35793)

(declare-fun lt!1068264 () List!35793)

(assert (=> b!3178484 (= res!1291420 (not (= lt!1068263 lt!1068264)))))

(declare-fun printList!1247 (LexerInterface!4693 List!35794) List!35793)

(assert (=> b!3178484 (= lt!1068264 (printList!1247 thiss!18206 (Cons!35670 (h!41090 tokens!494) Nil!35670)))))

(declare-fun lt!1068266 () BalanceConc!20780)

(declare-fun list!12657 (BalanceConc!20780) List!35793)

(assert (=> b!3178484 (= lt!1068263 (list!12657 lt!1068266))))

(declare-datatypes ((IArray!21173 0))(
  ( (IArray!21174 (innerList!10644 List!35794)) )
))
(declare-datatypes ((Conc!10584 0))(
  ( (Node!10584 (left!27746 Conc!10584) (right!28076 Conc!10584) (csize!21398 Int) (cheight!10795 Int)) (Leaf!16747 (xs!13702 IArray!21173) (csize!21399 Int)) (Empty!10584) )
))
(declare-datatypes ((BalanceConc!20782 0))(
  ( (BalanceConc!20783 (c!534042 Conc!10584)) )
))
(declare-fun lt!1068265 () BalanceConc!20782)

(declare-fun printTailRec!1192 (LexerInterface!4693 BalanceConc!20782 Int BalanceConc!20780) BalanceConc!20780)

(assert (=> b!3178484 (= lt!1068266 (printTailRec!1192 thiss!18206 lt!1068265 0 (BalanceConc!20781 Empty!10583)))))

(declare-fun print!1760 (LexerInterface!4693 BalanceConc!20782) BalanceConc!20780)

(assert (=> b!3178484 (= lt!1068266 (print!1760 thiss!18206 lt!1068265))))

(declare-fun singletonSeq!2200 (Token!9574) BalanceConc!20782)

(assert (=> b!3178484 (= lt!1068265 (singletonSeq!2200 (h!41090 tokens!494)))))

(declare-fun b!3178485 () Bool)

(declare-fun res!1291422 () Bool)

(assert (=> b!3178485 (=> (not res!1291422) (not e!1979913))))

(declare-fun lambda!116303 () Int)

(declare-fun forall!7212 (List!35794 Int) Bool)

(assert (=> b!3178485 (= res!1291422 (forall!7212 tokens!494 lambda!116303))))

(declare-fun b!3178486 () Bool)

(declare-fun res!1291429 () Bool)

(assert (=> b!3178486 (=> (not res!1291429) (not e!1979913))))

(assert (=> b!3178486 (= res!1291429 (isSeparator!5104 (rule!7514 separatorToken!241)))))

(declare-fun b!3178487 () Bool)

(declare-fun res!1291428 () Bool)

(assert (=> b!3178487 (=> (not res!1291428) (not e!1979913))))

(declare-fun sepAndNonSepRulesDisjointChars!1298 (List!35795 List!35795) Bool)

(assert (=> b!3178487 (= res!1291428 (sepAndNonSepRulesDisjointChars!1298 rules!2135 rules!2135))))

(declare-fun e!1979920 () Bool)

(declare-fun b!3178488 () Bool)

(declare-fun tp!1005479 () Bool)

(assert (=> b!3178488 (= e!1979907 (and tp!1005479 (inv!48520 (tag!5608 (h!41091 rules!2135))) (inv!48523 (transformation!5104 (h!41091 rules!2135))) e!1979920))))

(declare-fun b!3178489 () Bool)

(assert (=> b!3178489 (= e!1979918 e!1979924)))

(declare-fun res!1291427 () Bool)

(assert (=> b!3178489 (=> res!1291427 e!1979924)))

(declare-fun lt!1068262 () List!35793)

(assert (=> b!3178489 (= res!1291427 (or (not (= lt!1068264 lt!1068262)) (not (= lt!1068263 lt!1068262))))))

(declare-fun charsOf!3126 (Token!9574) BalanceConc!20780)

(assert (=> b!3178489 (= lt!1068262 (list!12657 (charsOf!3126 (h!41090 tokens!494))))))

(assert (=> b!3178490 (= e!1979922 (and tp!1005480 tp!1005474))))

(declare-fun b!3178491 () Bool)

(declare-fun res!1291424 () Bool)

(assert (=> b!3178491 (=> res!1291424 e!1979924)))

(declare-fun isEmpty!19787 (BalanceConc!20782) Bool)

(declare-datatypes ((tuple2!35004 0))(
  ( (tuple2!35005 (_1!20636 BalanceConc!20782) (_2!20636 BalanceConc!20780)) )
))
(declare-fun lex!2033 (LexerInterface!4693 List!35795 BalanceConc!20780) tuple2!35004)

(declare-fun seqFromList!3287 (List!35793) BalanceConc!20780)

(assert (=> b!3178491 (= res!1291424 (isEmpty!19787 (_1!20636 (lex!2033 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262)))))))

(declare-fun tp!1005475 () Bool)

(declare-fun b!3178492 () Bool)

(assert (=> b!3178492 (= e!1979916 (and (inv!21 (value!165924 separatorToken!241)) e!1979921 tp!1005475))))

(declare-fun b!3178493 () Bool)

(declare-fun e!1979908 () Bool)

(assert (=> b!3178493 (= e!1979924 e!1979908)))

(declare-fun res!1291431 () Bool)

(assert (=> b!3178493 (=> (not res!1291431) (not e!1979908))))

(assert (=> b!3178493 (= res!1291431 (forall!7212 tokens!494 lambda!116303))))

(assert (=> b!3178494 (= e!1979920 (and tp!1005478 tp!1005481))))

(declare-fun b!3178495 () Bool)

(declare-fun res!1291432 () Bool)

(assert (=> b!3178495 (=> (not res!1291432) (not e!1979913))))

(declare-fun rulesProduceEachTokenIndividually!1144 (LexerInterface!4693 List!35795 BalanceConc!20782) Bool)

(declare-fun seqFromList!3288 (List!35794) BalanceConc!20782)

(assert (=> b!3178495 (= res!1291432 (rulesProduceEachTokenIndividually!1144 thiss!18206 rules!2135 (seqFromList!3288 tokens!494)))))

(assert (=> b!3178496 (= e!1979923 (and tp!1005482 tp!1005484))))

(declare-fun b!3178497 () Bool)

(declare-fun res!1291430 () Bool)

(assert (=> b!3178497 (=> (not res!1291430) (not e!1979913))))

(assert (=> b!3178497 (= res!1291430 (rulesProduceIndividualToken!2185 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3178498 () Bool)

(declare-fun contains!6303 (List!35794 Token!9574) Bool)

(assert (=> b!3178498 (= e!1979908 (contains!6303 tokens!494 (h!41090 tokens!494)))))

(assert (= (and start!297670 res!1291426) b!3178482))

(assert (= (and b!3178482 res!1291425) b!3178479))

(assert (= (and b!3178479 res!1291423) b!3178495))

(assert (= (and b!3178495 res!1291432) b!3178497))

(assert (= (and b!3178497 res!1291430) b!3178486))

(assert (= (and b!3178486 res!1291429) b!3178485))

(assert (= (and b!3178485 res!1291422) b!3178487))

(assert (= (and b!3178487 res!1291428) b!3178476))

(assert (= (and b!3178476 res!1291421) b!3178484))

(assert (= (and b!3178484 (not res!1291420)) b!3178489))

(assert (= (and b!3178489 (not res!1291427)) b!3178481))

(assert (= (and b!3178481 (not res!1291433)) b!3178491))

(assert (= (and b!3178491 (not res!1291424)) b!3178493))

(assert (= (and b!3178493 res!1291431) b!3178498))

(assert (= b!3178488 b!3178494))

(assert (= b!3178483 b!3178488))

(assert (= (and start!297670 ((_ is Cons!35671) rules!2135)) b!3178483))

(assert (= b!3178477 b!3178490))

(assert (= b!3178475 b!3178477))

(assert (= b!3178478 b!3178475))

(assert (= (and start!297670 ((_ is Cons!35670) tokens!494)) b!3178478))

(assert (= b!3178480 b!3178496))

(assert (= b!3178492 b!3178480))

(assert (= start!297670 b!3178492))

(declare-fun m!3434905 () Bool)

(assert (=> b!3178478 m!3434905))

(declare-fun m!3434907 () Bool)

(assert (=> b!3178482 m!3434907))

(declare-fun m!3434909 () Bool)

(assert (=> b!3178480 m!3434909))

(declare-fun m!3434911 () Bool)

(assert (=> b!3178480 m!3434911))

(declare-fun m!3434913 () Bool)

(assert (=> b!3178497 m!3434913))

(declare-fun m!3434915 () Bool)

(assert (=> b!3178489 m!3434915))

(assert (=> b!3178489 m!3434915))

(declare-fun m!3434917 () Bool)

(assert (=> b!3178489 m!3434917))

(declare-fun m!3434919 () Bool)

(assert (=> b!3178498 m!3434919))

(declare-fun m!3434921 () Bool)

(assert (=> b!3178491 m!3434921))

(assert (=> b!3178491 m!3434921))

(declare-fun m!3434923 () Bool)

(assert (=> b!3178491 m!3434923))

(declare-fun m!3434925 () Bool)

(assert (=> b!3178491 m!3434925))

(declare-fun m!3434927 () Bool)

(assert (=> b!3178484 m!3434927))

(declare-fun m!3434929 () Bool)

(assert (=> b!3178484 m!3434929))

(declare-fun m!3434931 () Bool)

(assert (=> b!3178484 m!3434931))

(declare-fun m!3434933 () Bool)

(assert (=> b!3178484 m!3434933))

(declare-fun m!3434935 () Bool)

(assert (=> b!3178484 m!3434935))

(declare-fun m!3434937 () Bool)

(assert (=> b!3178485 m!3434937))

(declare-fun m!3434939 () Bool)

(assert (=> start!297670 m!3434939))

(assert (=> b!3178493 m!3434937))

(declare-fun m!3434941 () Bool)

(assert (=> b!3178475 m!3434941))

(declare-fun m!3434943 () Bool)

(assert (=> b!3178492 m!3434943))

(declare-fun m!3434945 () Bool)

(assert (=> b!3178479 m!3434945))

(declare-fun m!3434947 () Bool)

(assert (=> b!3178481 m!3434947))

(declare-fun m!3434949 () Bool)

(assert (=> b!3178495 m!3434949))

(assert (=> b!3178495 m!3434949))

(declare-fun m!3434951 () Bool)

(assert (=> b!3178495 m!3434951))

(declare-fun m!3434953 () Bool)

(assert (=> b!3178488 m!3434953))

(declare-fun m!3434955 () Bool)

(assert (=> b!3178488 m!3434955))

(declare-fun m!3434957 () Bool)

(assert (=> b!3178477 m!3434957))

(declare-fun m!3434959 () Bool)

(assert (=> b!3178477 m!3434959))

(declare-fun m!3434961 () Bool)

(assert (=> b!3178487 m!3434961))

(check-sat (not b!3178477) (not b_next!84349) (not b!3178498) (not b!3178493) (not b!3178489) (not b!3178491) (not b_next!84347) (not b!3178481) b_and!209943 b_and!209945 (not b!3178492) (not b_next!84345) (not start!297670) b_and!209941 (not b!3178482) (not b_next!84355) (not b!3178480) (not b!3178475) (not b_next!84353) (not b!3178488) (not b_next!84351) (not b!3178495) (not b!3178478) (not b!3178479) (not b!3178487) (not b!3178485) b_and!209935 b_and!209939 (not b!3178483) (not b!3178484) (not b!3178497) b_and!209937)
(check-sat (not b_next!84355) (not b_next!84353) (not b_next!84349) (not b_next!84347) b_and!209943 (not b_next!84351) b_and!209945 (not b_next!84345) b_and!209935 b_and!209939 b_and!209937 b_and!209941)
(get-model)

(declare-fun d!870035 () Bool)

(declare-fun res!1291446 () Bool)

(declare-fun e!1979929 () Bool)

(assert (=> d!870035 (=> res!1291446 e!1979929)))

(assert (=> d!870035 (= res!1291446 ((_ is Nil!35670) tokens!494))))

(assert (=> d!870035 (= (forall!7212 tokens!494 lambda!116303) e!1979929)))

(declare-fun b!3178503 () Bool)

(declare-fun e!1979930 () Bool)

(assert (=> b!3178503 (= e!1979929 e!1979930)))

(declare-fun res!1291447 () Bool)

(assert (=> b!3178503 (=> (not res!1291447) (not e!1979930))))

(declare-fun dynLambda!14381 (Int Token!9574) Bool)

(assert (=> b!3178503 (= res!1291447 (dynLambda!14381 lambda!116303 (h!41090 tokens!494)))))

(declare-fun b!3178504 () Bool)

(assert (=> b!3178504 (= e!1979930 (forall!7212 (t!234901 tokens!494) lambda!116303))))

(assert (= (and d!870035 (not res!1291446)) b!3178503))

(assert (= (and b!3178503 res!1291447) b!3178504))

(declare-fun b_lambda!86515 () Bool)

(assert (=> (not b_lambda!86515) (not b!3178503)))

(declare-fun m!3434963 () Bool)

(assert (=> b!3178503 m!3434963))

(declare-fun m!3434965 () Bool)

(assert (=> b!3178504 m!3434965))

(assert (=> b!3178485 d!870035))

(declare-fun b!3178515 () Bool)

(declare-fun e!1979938 () Bool)

(declare-fun inv!17 (TokenValue!5334) Bool)

(assert (=> b!3178515 (= e!1979938 (inv!17 (value!165924 (h!41090 tokens!494))))))

(declare-fun b!3178516 () Bool)

(declare-fun res!1291450 () Bool)

(declare-fun e!1979937 () Bool)

(assert (=> b!3178516 (=> res!1291450 e!1979937)))

(assert (=> b!3178516 (= res!1291450 (not ((_ is IntegerValue!16004) (value!165924 (h!41090 tokens!494)))))))

(assert (=> b!3178516 (= e!1979938 e!1979937)))

(declare-fun d!870037 () Bool)

(declare-fun c!534047 () Bool)

(assert (=> d!870037 (= c!534047 ((_ is IntegerValue!16002) (value!165924 (h!41090 tokens!494))))))

(declare-fun e!1979939 () Bool)

(assert (=> d!870037 (= (inv!21 (value!165924 (h!41090 tokens!494))) e!1979939)))

(declare-fun b!3178517 () Bool)

(declare-fun inv!16 (TokenValue!5334) Bool)

(assert (=> b!3178517 (= e!1979939 (inv!16 (value!165924 (h!41090 tokens!494))))))

(declare-fun b!3178518 () Bool)

(assert (=> b!3178518 (= e!1979939 e!1979938)))

(declare-fun c!534048 () Bool)

(assert (=> b!3178518 (= c!534048 ((_ is IntegerValue!16003) (value!165924 (h!41090 tokens!494))))))

(declare-fun b!3178519 () Bool)

(declare-fun inv!15 (TokenValue!5334) Bool)

(assert (=> b!3178519 (= e!1979937 (inv!15 (value!165924 (h!41090 tokens!494))))))

(assert (= (and d!870037 c!534047) b!3178517))

(assert (= (and d!870037 (not c!534047)) b!3178518))

(assert (= (and b!3178518 c!534048) b!3178515))

(assert (= (and b!3178518 (not c!534048)) b!3178516))

(assert (= (and b!3178516 (not res!1291450)) b!3178519))

(declare-fun m!3434967 () Bool)

(assert (=> b!3178515 m!3434967))

(declare-fun m!3434969 () Bool)

(assert (=> b!3178517 m!3434969))

(declare-fun m!3434971 () Bool)

(assert (=> b!3178519 m!3434971))

(assert (=> b!3178475 d!870037))

(declare-fun d!870039 () Bool)

(declare-fun list!12660 (Conc!10583) List!35793)

(assert (=> d!870039 (= (list!12657 lt!1068266) (list!12660 (c!534041 lt!1068266)))))

(declare-fun bs!539802 () Bool)

(assert (= bs!539802 d!870039))

(declare-fun m!3434973 () Bool)

(assert (=> bs!539802 m!3434973))

(assert (=> b!3178484 d!870039))

(declare-fun d!870041 () Bool)

(declare-fun lt!1068281 () BalanceConc!20780)

(declare-fun printListTailRec!533 (LexerInterface!4693 List!35794 List!35793) List!35793)

(declare-fun dropList!1050 (BalanceConc!20782 Int) List!35794)

(assert (=> d!870041 (= (list!12657 lt!1068281) (printListTailRec!533 thiss!18206 (dropList!1050 lt!1068265 0) (list!12657 (BalanceConc!20781 Empty!10583))))))

(declare-fun e!1979944 () BalanceConc!20780)

(assert (=> d!870041 (= lt!1068281 e!1979944)))

(declare-fun c!534051 () Bool)

(declare-fun size!26937 (BalanceConc!20782) Int)

(assert (=> d!870041 (= c!534051 (>= 0 (size!26937 lt!1068265)))))

(declare-fun e!1979945 () Bool)

(assert (=> d!870041 e!1979945))

(declare-fun res!1291453 () Bool)

(assert (=> d!870041 (=> (not res!1291453) (not e!1979945))))

(assert (=> d!870041 (= res!1291453 (>= 0 0))))

(assert (=> d!870041 (= (printTailRec!1192 thiss!18206 lt!1068265 0 (BalanceConc!20781 Empty!10583)) lt!1068281)))

(declare-fun b!3178526 () Bool)

(assert (=> b!3178526 (= e!1979945 (<= 0 (size!26937 lt!1068265)))))

(declare-fun b!3178527 () Bool)

(assert (=> b!3178527 (= e!1979944 (BalanceConc!20781 Empty!10583))))

(declare-fun b!3178528 () Bool)

(declare-fun ++!8525 (BalanceConc!20780 BalanceConc!20780) BalanceConc!20780)

(declare-fun apply!8019 (BalanceConc!20782 Int) Token!9574)

(assert (=> b!3178528 (= e!1979944 (printTailRec!1192 thiss!18206 lt!1068265 (+ 0 1) (++!8525 (BalanceConc!20781 Empty!10583) (charsOf!3126 (apply!8019 lt!1068265 0)))))))

(declare-fun lt!1068283 () List!35794)

(declare-fun list!12661 (BalanceConc!20782) List!35794)

(assert (=> b!3178528 (= lt!1068283 (list!12661 lt!1068265))))

(declare-datatypes ((Unit!50094 0))(
  ( (Unit!50095) )
))
(declare-fun lt!1068282 () Unit!50094)

(declare-fun lemmaDropApply!1009 (List!35794 Int) Unit!50094)

(assert (=> b!3178528 (= lt!1068282 (lemmaDropApply!1009 lt!1068283 0))))

(declare-fun head!6935 (List!35794) Token!9574)

(declare-fun drop!1833 (List!35794 Int) List!35794)

(declare-fun apply!8020 (List!35794 Int) Token!9574)

(assert (=> b!3178528 (= (head!6935 (drop!1833 lt!1068283 0)) (apply!8020 lt!1068283 0))))

(declare-fun lt!1068287 () Unit!50094)

(assert (=> b!3178528 (= lt!1068287 lt!1068282)))

(declare-fun lt!1068286 () List!35794)

(assert (=> b!3178528 (= lt!1068286 (list!12661 lt!1068265))))

(declare-fun lt!1068284 () Unit!50094)

(declare-fun lemmaDropTail!893 (List!35794 Int) Unit!50094)

(assert (=> b!3178528 (= lt!1068284 (lemmaDropTail!893 lt!1068286 0))))

(declare-fun tail!5161 (List!35794) List!35794)

(assert (=> b!3178528 (= (tail!5161 (drop!1833 lt!1068286 0)) (drop!1833 lt!1068286 (+ 0 1)))))

(declare-fun lt!1068285 () Unit!50094)

(assert (=> b!3178528 (= lt!1068285 lt!1068284)))

(assert (= (and d!870041 res!1291453) b!3178526))

(assert (= (and d!870041 c!534051) b!3178527))

(assert (= (and d!870041 (not c!534051)) b!3178528))

(declare-fun m!3434975 () Bool)

(assert (=> d!870041 m!3434975))

(declare-fun m!3434977 () Bool)

(assert (=> d!870041 m!3434977))

(assert (=> d!870041 m!3434975))

(assert (=> d!870041 m!3434977))

(declare-fun m!3434979 () Bool)

(assert (=> d!870041 m!3434979))

(declare-fun m!3434981 () Bool)

(assert (=> d!870041 m!3434981))

(declare-fun m!3434983 () Bool)

(assert (=> d!870041 m!3434983))

(assert (=> b!3178526 m!3434981))

(declare-fun m!3434985 () Bool)

(assert (=> b!3178528 m!3434985))

(declare-fun m!3434987 () Bool)

(assert (=> b!3178528 m!3434987))

(declare-fun m!3434989 () Bool)

(assert (=> b!3178528 m!3434989))

(declare-fun m!3434991 () Bool)

(assert (=> b!3178528 m!3434991))

(declare-fun m!3434993 () Bool)

(assert (=> b!3178528 m!3434993))

(declare-fun m!3434995 () Bool)

(assert (=> b!3178528 m!3434995))

(declare-fun m!3434997 () Bool)

(assert (=> b!3178528 m!3434997))

(assert (=> b!3178528 m!3434987))

(assert (=> b!3178528 m!3434995))

(declare-fun m!3434999 () Bool)

(assert (=> b!3178528 m!3434999))

(declare-fun m!3435001 () Bool)

(assert (=> b!3178528 m!3435001))

(declare-fun m!3435003 () Bool)

(assert (=> b!3178528 m!3435003))

(declare-fun m!3435005 () Bool)

(assert (=> b!3178528 m!3435005))

(declare-fun m!3435007 () Bool)

(assert (=> b!3178528 m!3435007))

(assert (=> b!3178528 m!3435003))

(assert (=> b!3178528 m!3434989))

(assert (=> b!3178528 m!3434999))

(declare-fun m!3435009 () Bool)

(assert (=> b!3178528 m!3435009))

(assert (=> b!3178484 d!870041))

(declare-fun d!870043 () Bool)

(declare-fun lt!1068292 () BalanceConc!20780)

(assert (=> d!870043 (= (list!12657 lt!1068292) (printList!1247 thiss!18206 (list!12661 lt!1068265)))))

(assert (=> d!870043 (= lt!1068292 (printTailRec!1192 thiss!18206 lt!1068265 0 (BalanceConc!20781 Empty!10583)))))

(assert (=> d!870043 (= (print!1760 thiss!18206 lt!1068265) lt!1068292)))

(declare-fun bs!539803 () Bool)

(assert (= bs!539803 d!870043))

(declare-fun m!3435011 () Bool)

(assert (=> bs!539803 m!3435011))

(assert (=> bs!539803 m!3435009))

(assert (=> bs!539803 m!3435009))

(declare-fun m!3435013 () Bool)

(assert (=> bs!539803 m!3435013))

(assert (=> bs!539803 m!3434929))

(assert (=> b!3178484 d!870043))

(declare-fun d!870045 () Bool)

(declare-fun e!1979948 () Bool)

(assert (=> d!870045 e!1979948))

(declare-fun res!1291456 () Bool)

(assert (=> d!870045 (=> (not res!1291456) (not e!1979948))))

(declare-fun lt!1068295 () BalanceConc!20782)

(assert (=> d!870045 (= res!1291456 (= (list!12661 lt!1068295) (Cons!35670 (h!41090 tokens!494) Nil!35670)))))

(declare-fun singleton!966 (Token!9574) BalanceConc!20782)

(assert (=> d!870045 (= lt!1068295 (singleton!966 (h!41090 tokens!494)))))

(assert (=> d!870045 (= (singletonSeq!2200 (h!41090 tokens!494)) lt!1068295)))

(declare-fun b!3178531 () Bool)

(declare-fun isBalanced!3177 (Conc!10584) Bool)

(assert (=> b!3178531 (= e!1979948 (isBalanced!3177 (c!534042 lt!1068295)))))

(assert (= (and d!870045 res!1291456) b!3178531))

(declare-fun m!3435015 () Bool)

(assert (=> d!870045 m!3435015))

(declare-fun m!3435017 () Bool)

(assert (=> d!870045 m!3435017))

(declare-fun m!3435019 () Bool)

(assert (=> b!3178531 m!3435019))

(assert (=> b!3178484 d!870045))

(declare-fun d!870047 () Bool)

(declare-fun c!534054 () Bool)

(assert (=> d!870047 (= c!534054 ((_ is Cons!35670) (Cons!35670 (h!41090 tokens!494) Nil!35670)))))

(declare-fun e!1979951 () List!35793)

(assert (=> d!870047 (= (printList!1247 thiss!18206 (Cons!35670 (h!41090 tokens!494) Nil!35670)) e!1979951)))

(declare-fun b!3178536 () Bool)

(declare-fun ++!8526 (List!35793 List!35793) List!35793)

(assert (=> b!3178536 (= e!1979951 (++!8526 (list!12657 (charsOf!3126 (h!41090 (Cons!35670 (h!41090 tokens!494) Nil!35670)))) (printList!1247 thiss!18206 (t!234901 (Cons!35670 (h!41090 tokens!494) Nil!35670)))))))

(declare-fun b!3178537 () Bool)

(assert (=> b!3178537 (= e!1979951 Nil!35669)))

(assert (= (and d!870047 c!534054) b!3178536))

(assert (= (and d!870047 (not c!534054)) b!3178537))

(declare-fun m!3435021 () Bool)

(assert (=> b!3178536 m!3435021))

(assert (=> b!3178536 m!3435021))

(declare-fun m!3435023 () Bool)

(assert (=> b!3178536 m!3435023))

(declare-fun m!3435025 () Bool)

(assert (=> b!3178536 m!3435025))

(assert (=> b!3178536 m!3435023))

(assert (=> b!3178536 m!3435025))

(declare-fun m!3435027 () Bool)

(assert (=> b!3178536 m!3435027))

(assert (=> b!3178484 d!870047))

(declare-fun bs!539810 () Bool)

(declare-fun d!870049 () Bool)

(assert (= bs!539810 (and d!870049 b!3178485)))

(declare-fun lambda!116313 () Int)

(assert (=> bs!539810 (not (= lambda!116313 lambda!116303))))

(declare-fun b!3178616 () Bool)

(declare-fun e!1980012 () Bool)

(assert (=> b!3178616 (= e!1980012 true)))

(declare-fun b!3178615 () Bool)

(declare-fun e!1980011 () Bool)

(assert (=> b!3178615 (= e!1980011 e!1980012)))

(declare-fun b!3178614 () Bool)

(declare-fun e!1980010 () Bool)

(assert (=> b!3178614 (= e!1980010 e!1980011)))

(assert (=> d!870049 e!1980010))

(assert (= b!3178615 b!3178616))

(assert (= b!3178614 b!3178615))

(assert (= (and d!870049 ((_ is Cons!35671) rules!2135)) b!3178614))

(declare-fun order!18173 () Int)

(declare-fun order!18175 () Int)

(declare-fun dynLambda!14382 (Int Int) Int)

(declare-fun dynLambda!14383 (Int Int) Int)

(assert (=> b!3178616 (< (dynLambda!14382 order!18173 (toValue!7164 (transformation!5104 (h!41091 rules!2135)))) (dynLambda!14383 order!18175 lambda!116313))))

(declare-fun order!18177 () Int)

(declare-fun dynLambda!14384 (Int Int) Int)

(assert (=> b!3178616 (< (dynLambda!14384 order!18177 (toChars!7023 (transformation!5104 (h!41091 rules!2135)))) (dynLambda!14383 order!18175 lambda!116313))))

(assert (=> d!870049 true))

(declare-fun e!1980003 () Bool)

(assert (=> d!870049 e!1980003))

(declare-fun res!1291493 () Bool)

(assert (=> d!870049 (=> (not res!1291493) (not e!1980003))))

(declare-fun lt!1068332 () Bool)

(assert (=> d!870049 (= res!1291493 (= lt!1068332 (forall!7212 (list!12661 (seqFromList!3288 tokens!494)) lambda!116313)))))

(declare-fun forall!7214 (BalanceConc!20782 Int) Bool)

(assert (=> d!870049 (= lt!1068332 (forall!7214 (seqFromList!3288 tokens!494) lambda!116313))))

(assert (=> d!870049 (not (isEmpty!19786 rules!2135))))

(assert (=> d!870049 (= (rulesProduceEachTokenIndividually!1144 thiss!18206 rules!2135 (seqFromList!3288 tokens!494)) lt!1068332)))

(declare-fun b!3178605 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1693 (LexerInterface!4693 List!35795 List!35794) Bool)

(assert (=> b!3178605 (= e!1980003 (= lt!1068332 (rulesProduceEachTokenIndividuallyList!1693 thiss!18206 rules!2135 (list!12661 (seqFromList!3288 tokens!494)))))))

(assert (= (and d!870049 res!1291493) b!3178605))

(assert (=> d!870049 m!3434949))

(declare-fun m!3435137 () Bool)

(assert (=> d!870049 m!3435137))

(assert (=> d!870049 m!3435137))

(declare-fun m!3435139 () Bool)

(assert (=> d!870049 m!3435139))

(assert (=> d!870049 m!3434949))

(declare-fun m!3435141 () Bool)

(assert (=> d!870049 m!3435141))

(assert (=> d!870049 m!3434907))

(assert (=> b!3178605 m!3434949))

(assert (=> b!3178605 m!3435137))

(assert (=> b!3178605 m!3435137))

(declare-fun m!3435143 () Bool)

(assert (=> b!3178605 m!3435143))

(assert (=> b!3178495 d!870049))

(declare-fun d!870083 () Bool)

(declare-fun fromListB!1485 (List!35794) BalanceConc!20782)

(assert (=> d!870083 (= (seqFromList!3288 tokens!494) (fromListB!1485 tokens!494))))

(declare-fun bs!539811 () Bool)

(assert (= bs!539811 d!870083))

(declare-fun m!3435145 () Bool)

(assert (=> bs!539811 m!3435145))

(assert (=> b!3178495 d!870083))

(assert (=> b!3178493 d!870035))

(declare-fun b!3178619 () Bool)

(declare-fun e!1980014 () Bool)

(assert (=> b!3178619 (= e!1980014 (inv!17 (value!165924 separatorToken!241)))))

(declare-fun b!3178620 () Bool)

(declare-fun res!1291494 () Bool)

(declare-fun e!1980013 () Bool)

(assert (=> b!3178620 (=> res!1291494 e!1980013)))

(assert (=> b!3178620 (= res!1291494 (not ((_ is IntegerValue!16004) (value!165924 separatorToken!241))))))

(assert (=> b!3178620 (= e!1980014 e!1980013)))

(declare-fun d!870085 () Bool)

(declare-fun c!534064 () Bool)

(assert (=> d!870085 (= c!534064 ((_ is IntegerValue!16002) (value!165924 separatorToken!241)))))

(declare-fun e!1980015 () Bool)

(assert (=> d!870085 (= (inv!21 (value!165924 separatorToken!241)) e!1980015)))

(declare-fun b!3178621 () Bool)

(assert (=> b!3178621 (= e!1980015 (inv!16 (value!165924 separatorToken!241)))))

(declare-fun b!3178622 () Bool)

(assert (=> b!3178622 (= e!1980015 e!1980014)))

(declare-fun c!534065 () Bool)

(assert (=> b!3178622 (= c!534065 ((_ is IntegerValue!16003) (value!165924 separatorToken!241)))))

(declare-fun b!3178623 () Bool)

(assert (=> b!3178623 (= e!1980013 (inv!15 (value!165924 separatorToken!241)))))

(assert (= (and d!870085 c!534064) b!3178621))

(assert (= (and d!870085 (not c!534064)) b!3178622))

(assert (= (and b!3178622 c!534065) b!3178619))

(assert (= (and b!3178622 (not c!534065)) b!3178620))

(assert (= (and b!3178620 (not res!1291494)) b!3178623))

(declare-fun m!3435147 () Bool)

(assert (=> b!3178619 m!3435147))

(declare-fun m!3435149 () Bool)

(assert (=> b!3178621 m!3435149))

(declare-fun m!3435151 () Bool)

(assert (=> b!3178623 m!3435151))

(assert (=> b!3178492 d!870085))

(declare-fun d!870087 () Bool)

(declare-fun res!1291499 () Bool)

(declare-fun e!1980018 () Bool)

(assert (=> d!870087 (=> (not res!1291499) (not e!1980018))))

(declare-fun isEmpty!19792 (List!35793) Bool)

(assert (=> d!870087 (= res!1291499 (not (isEmpty!19792 (originalCharacters!5818 separatorToken!241))))))

(assert (=> d!870087 (= (inv!48524 separatorToken!241) e!1980018)))

(declare-fun b!3178628 () Bool)

(declare-fun res!1291500 () Bool)

(assert (=> b!3178628 (=> (not res!1291500) (not e!1980018))))

(declare-fun dynLambda!14385 (Int TokenValue!5334) BalanceConc!20780)

(assert (=> b!3178628 (= res!1291500 (= (originalCharacters!5818 separatorToken!241) (list!12657 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (value!165924 separatorToken!241)))))))

(declare-fun b!3178629 () Bool)

(declare-fun size!26938 (List!35793) Int)

(assert (=> b!3178629 (= e!1980018 (= (size!26933 separatorToken!241) (size!26938 (originalCharacters!5818 separatorToken!241))))))

(assert (= (and d!870087 res!1291499) b!3178628))

(assert (= (and b!3178628 res!1291500) b!3178629))

(declare-fun b_lambda!86519 () Bool)

(assert (=> (not b_lambda!86519) (not b!3178628)))

(declare-fun t!234914 () Bool)

(declare-fun tb!155115 () Bool)

(assert (=> (and b!3178496 (= (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241)))) t!234914) tb!155115))

(declare-fun b!3178634 () Bool)

(declare-fun e!1980021 () Bool)

(declare-fun tp!1005487 () Bool)

(declare-fun inv!48527 (Conc!10583) Bool)

(assert (=> b!3178634 (= e!1980021 (and (inv!48527 (c!534041 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (value!165924 separatorToken!241)))) tp!1005487))))

(declare-fun result!197108 () Bool)

(declare-fun inv!48528 (BalanceConc!20780) Bool)

(assert (=> tb!155115 (= result!197108 (and (inv!48528 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (value!165924 separatorToken!241))) e!1980021))))

(assert (= tb!155115 b!3178634))

(declare-fun m!3435153 () Bool)

(assert (=> b!3178634 m!3435153))

(declare-fun m!3435155 () Bool)

(assert (=> tb!155115 m!3435155))

(assert (=> b!3178628 t!234914))

(declare-fun b_and!209947 () Bool)

(assert (= b_and!209937 (and (=> t!234914 result!197108) b_and!209947)))

(declare-fun tb!155117 () Bool)

(declare-fun t!234916 () Bool)

(assert (=> (and b!3178490 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241)))) t!234916) tb!155117))

(declare-fun result!197112 () Bool)

(assert (= result!197112 result!197108))

(assert (=> b!3178628 t!234916))

(declare-fun b_and!209949 () Bool)

(assert (= b_and!209941 (and (=> t!234916 result!197112) b_and!209949)))

(declare-fun tb!155119 () Bool)

(declare-fun t!234918 () Bool)

(assert (=> (and b!3178494 (= (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241)))) t!234918) tb!155119))

(declare-fun result!197114 () Bool)

(assert (= result!197114 result!197108))

(assert (=> b!3178628 t!234918))

(declare-fun b_and!209951 () Bool)

(assert (= b_and!209945 (and (=> t!234918 result!197114) b_and!209951)))

(declare-fun m!3435157 () Bool)

(assert (=> d!870087 m!3435157))

(declare-fun m!3435159 () Bool)

(assert (=> b!3178628 m!3435159))

(assert (=> b!3178628 m!3435159))

(declare-fun m!3435161 () Bool)

(assert (=> b!3178628 m!3435161))

(declare-fun m!3435163 () Bool)

(assert (=> b!3178629 m!3435163))

(assert (=> start!297670 d!870087))

(declare-fun d!870089 () Bool)

(declare-fun lt!1068352 () Bool)

(declare-fun e!1980079 () Bool)

(assert (=> d!870089 (= lt!1068352 e!1980079)))

(declare-fun res!1291543 () Bool)

(assert (=> d!870089 (=> (not res!1291543) (not e!1980079))))

(assert (=> d!870089 (= res!1291543 (= (list!12661 (_1!20636 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 (h!41090 tokens!494)))))) (list!12661 (singletonSeq!2200 (h!41090 tokens!494)))))))

(declare-fun e!1980078 () Bool)

(assert (=> d!870089 (= lt!1068352 e!1980078)))

(declare-fun res!1291541 () Bool)

(assert (=> d!870089 (=> (not res!1291541) (not e!1980078))))

(declare-fun lt!1068351 () tuple2!35004)

(assert (=> d!870089 (= res!1291541 (= (size!26937 (_1!20636 lt!1068351)) 1))))

(assert (=> d!870089 (= lt!1068351 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 (h!41090 tokens!494)))))))

(assert (=> d!870089 (not (isEmpty!19786 rules!2135))))

(assert (=> d!870089 (= (rulesProduceIndividualToken!2185 thiss!18206 rules!2135 (h!41090 tokens!494)) lt!1068352)))

(declare-fun b!3178712 () Bool)

(declare-fun res!1291542 () Bool)

(assert (=> b!3178712 (=> (not res!1291542) (not e!1980078))))

(assert (=> b!3178712 (= res!1291542 (= (apply!8019 (_1!20636 lt!1068351) 0) (h!41090 tokens!494)))))

(declare-fun b!3178713 () Bool)

(declare-fun isEmpty!19793 (BalanceConc!20780) Bool)

(assert (=> b!3178713 (= e!1980078 (isEmpty!19793 (_2!20636 lt!1068351)))))

(declare-fun b!3178714 () Bool)

(assert (=> b!3178714 (= e!1980079 (isEmpty!19793 (_2!20636 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 (h!41090 tokens!494)))))))))

(assert (= (and d!870089 res!1291541) b!3178712))

(assert (= (and b!3178712 res!1291542) b!3178713))

(assert (= (and d!870089 res!1291543) b!3178714))

(declare-fun m!3435257 () Bool)

(assert (=> d!870089 m!3435257))

(assert (=> d!870089 m!3434907))

(assert (=> d!870089 m!3434927))

(declare-fun m!3435259 () Bool)

(assert (=> d!870089 m!3435259))

(declare-fun m!3435261 () Bool)

(assert (=> d!870089 m!3435261))

(declare-fun m!3435263 () Bool)

(assert (=> d!870089 m!3435263))

(assert (=> d!870089 m!3434927))

(declare-fun m!3435265 () Bool)

(assert (=> d!870089 m!3435265))

(assert (=> d!870089 m!3434927))

(assert (=> d!870089 m!3435259))

(declare-fun m!3435267 () Bool)

(assert (=> b!3178712 m!3435267))

(declare-fun m!3435269 () Bool)

(assert (=> b!3178713 m!3435269))

(assert (=> b!3178714 m!3434927))

(assert (=> b!3178714 m!3434927))

(assert (=> b!3178714 m!3435259))

(assert (=> b!3178714 m!3435259))

(assert (=> b!3178714 m!3435261))

(declare-fun m!3435271 () Bool)

(assert (=> b!3178714 m!3435271))

(assert (=> b!3178481 d!870089))

(declare-fun d!870115 () Bool)

(assert (=> d!870115 (= (isEmpty!19786 rules!2135) ((_ is Nil!35671) rules!2135))))

(assert (=> b!3178482 d!870115))

(declare-fun d!870117 () Bool)

(assert (=> d!870117 (= (inv!48520 (tag!5608 (rule!7514 separatorToken!241))) (= (mod (str.len (value!165923 (tag!5608 (rule!7514 separatorToken!241)))) 2) 0))))

(assert (=> b!3178480 d!870117))

(declare-fun d!870119 () Bool)

(declare-fun res!1291546 () Bool)

(declare-fun e!1980105 () Bool)

(assert (=> d!870119 (=> (not res!1291546) (not e!1980105))))

(declare-fun semiInverseModEq!2127 (Int Int) Bool)

(assert (=> d!870119 (= res!1291546 (semiInverseModEq!2127 (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toValue!7164 (transformation!5104 (rule!7514 separatorToken!241)))))))

(assert (=> d!870119 (= (inv!48523 (transformation!5104 (rule!7514 separatorToken!241))) e!1980105)))

(declare-fun b!3178750 () Bool)

(declare-fun equivClasses!2026 (Int Int) Bool)

(assert (=> b!3178750 (= e!1980105 (equivClasses!2026 (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toValue!7164 (transformation!5104 (rule!7514 separatorToken!241)))))))

(assert (= (and d!870119 res!1291546) b!3178750))

(declare-fun m!3435281 () Bool)

(assert (=> d!870119 m!3435281))

(declare-fun m!3435283 () Bool)

(assert (=> b!3178750 m!3435283))

(assert (=> b!3178480 d!870119))

(declare-fun lt!1068355 () Bool)

(declare-fun d!870121 () Bool)

(declare-fun isEmpty!19794 (List!35794) Bool)

(assert (=> d!870121 (= lt!1068355 (isEmpty!19794 (list!12661 (_1!20636 (lex!2033 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262))))))))

(declare-fun isEmpty!19795 (Conc!10584) Bool)

(assert (=> d!870121 (= lt!1068355 (isEmpty!19795 (c!534042 (_1!20636 (lex!2033 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262))))))))

(assert (=> d!870121 (= (isEmpty!19787 (_1!20636 (lex!2033 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262)))) lt!1068355)))

(declare-fun bs!539814 () Bool)

(assert (= bs!539814 d!870121))

(declare-fun m!3435285 () Bool)

(assert (=> bs!539814 m!3435285))

(assert (=> bs!539814 m!3435285))

(declare-fun m!3435287 () Bool)

(assert (=> bs!539814 m!3435287))

(declare-fun m!3435289 () Bool)

(assert (=> bs!539814 m!3435289))

(assert (=> b!3178491 d!870121))

(declare-fun b!3178766 () Bool)

(declare-fun e!1980114 () Bool)

(declare-fun e!1980115 () Bool)

(assert (=> b!3178766 (= e!1980114 e!1980115)))

(declare-fun res!1291554 () Bool)

(declare-fun lt!1068358 () tuple2!35004)

(declare-fun size!26939 (BalanceConc!20780) Int)

(assert (=> b!3178766 (= res!1291554 (< (size!26939 (_2!20636 lt!1068358)) (size!26939 (seqFromList!3287 lt!1068262))))))

(assert (=> b!3178766 (=> (not res!1291554) (not e!1980115))))

(declare-fun b!3178767 () Bool)

(assert (=> b!3178767 (= e!1980114 (= (_2!20636 lt!1068358) (seqFromList!3287 lt!1068262)))))

(declare-fun d!870125 () Bool)

(declare-fun e!1980116 () Bool)

(assert (=> d!870125 e!1980116))

(declare-fun res!1291553 () Bool)

(assert (=> d!870125 (=> (not res!1291553) (not e!1980116))))

(assert (=> d!870125 (= res!1291553 e!1980114)))

(declare-fun c!534076 () Bool)

(assert (=> d!870125 (= c!534076 (> (size!26937 (_1!20636 lt!1068358)) 0))))

(declare-fun lexTailRecV2!905 (LexerInterface!4693 List!35795 BalanceConc!20780 BalanceConc!20780 BalanceConc!20780 BalanceConc!20782) tuple2!35004)

(assert (=> d!870125 (= lt!1068358 (lexTailRecV2!905 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262) (BalanceConc!20781 Empty!10583) (seqFromList!3287 lt!1068262) (BalanceConc!20783 Empty!10584)))))

(assert (=> d!870125 (= (lex!2033 thiss!18206 rules!2135 (seqFromList!3287 lt!1068262)) lt!1068358)))

(declare-fun b!3178768 () Bool)

(assert (=> b!3178768 (= e!1980115 (not (isEmpty!19787 (_1!20636 lt!1068358))))))

(declare-fun b!3178769 () Bool)

(declare-fun res!1291555 () Bool)

(assert (=> b!3178769 (=> (not res!1291555) (not e!1980116))))

(declare-datatypes ((tuple2!35008 0))(
  ( (tuple2!35009 (_1!20638 List!35794) (_2!20638 List!35793)) )
))
(declare-fun lexList!1267 (LexerInterface!4693 List!35795 List!35793) tuple2!35008)

(assert (=> b!3178769 (= res!1291555 (= (list!12661 (_1!20636 lt!1068358)) (_1!20638 (lexList!1267 thiss!18206 rules!2135 (list!12657 (seqFromList!3287 lt!1068262))))))))

(declare-fun b!3178770 () Bool)

(assert (=> b!3178770 (= e!1980116 (= (list!12657 (_2!20636 lt!1068358)) (_2!20638 (lexList!1267 thiss!18206 rules!2135 (list!12657 (seqFromList!3287 lt!1068262))))))))

(assert (= (and d!870125 c!534076) b!3178766))

(assert (= (and d!870125 (not c!534076)) b!3178767))

(assert (= (and b!3178766 res!1291554) b!3178768))

(assert (= (and d!870125 res!1291553) b!3178769))

(assert (= (and b!3178769 res!1291555) b!3178770))

(declare-fun m!3435291 () Bool)

(assert (=> b!3178770 m!3435291))

(assert (=> b!3178770 m!3434921))

(declare-fun m!3435293 () Bool)

(assert (=> b!3178770 m!3435293))

(assert (=> b!3178770 m!3435293))

(declare-fun m!3435295 () Bool)

(assert (=> b!3178770 m!3435295))

(declare-fun m!3435297 () Bool)

(assert (=> b!3178768 m!3435297))

(declare-fun m!3435299 () Bool)

(assert (=> d!870125 m!3435299))

(assert (=> d!870125 m!3434921))

(assert (=> d!870125 m!3434921))

(declare-fun m!3435301 () Bool)

(assert (=> d!870125 m!3435301))

(declare-fun m!3435303 () Bool)

(assert (=> b!3178769 m!3435303))

(assert (=> b!3178769 m!3434921))

(assert (=> b!3178769 m!3435293))

(assert (=> b!3178769 m!3435293))

(assert (=> b!3178769 m!3435295))

(declare-fun m!3435305 () Bool)

(assert (=> b!3178766 m!3435305))

(assert (=> b!3178766 m!3434921))

(declare-fun m!3435307 () Bool)

(assert (=> b!3178766 m!3435307))

(assert (=> b!3178491 d!870125))

(declare-fun d!870127 () Bool)

(declare-fun fromListB!1486 (List!35793) BalanceConc!20780)

(assert (=> d!870127 (= (seqFromList!3287 lt!1068262) (fromListB!1486 lt!1068262))))

(declare-fun bs!539815 () Bool)

(assert (= bs!539815 d!870127))

(declare-fun m!3435309 () Bool)

(assert (=> bs!539815 m!3435309))

(assert (=> b!3178491 d!870127))

(declare-fun d!870129 () Bool)

(assert (=> d!870129 (= (list!12657 (charsOf!3126 (h!41090 tokens!494))) (list!12660 (c!534041 (charsOf!3126 (h!41090 tokens!494)))))))

(declare-fun bs!539816 () Bool)

(assert (= bs!539816 d!870129))

(declare-fun m!3435311 () Bool)

(assert (=> bs!539816 m!3435311))

(assert (=> b!3178489 d!870129))

(declare-fun d!870131 () Bool)

(declare-fun lt!1068361 () BalanceConc!20780)

(assert (=> d!870131 (= (list!12657 lt!1068361) (originalCharacters!5818 (h!41090 tokens!494)))))

(assert (=> d!870131 (= lt!1068361 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (value!165924 (h!41090 tokens!494))))))

(assert (=> d!870131 (= (charsOf!3126 (h!41090 tokens!494)) lt!1068361)))

(declare-fun b_lambda!86535 () Bool)

(assert (=> (not b_lambda!86535) (not d!870131)))

(declare-fun t!234942 () Bool)

(declare-fun tb!155141 () Bool)

(assert (=> (and b!3178496 (= (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494))))) t!234942) tb!155141))

(declare-fun b!3178771 () Bool)

(declare-fun e!1980117 () Bool)

(declare-fun tp!1005548 () Bool)

(assert (=> b!3178771 (= e!1980117 (and (inv!48527 (c!534041 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (value!165924 (h!41090 tokens!494))))) tp!1005548))))

(declare-fun result!197146 () Bool)

(assert (=> tb!155141 (= result!197146 (and (inv!48528 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (value!165924 (h!41090 tokens!494)))) e!1980117))))

(assert (= tb!155141 b!3178771))

(declare-fun m!3435313 () Bool)

(assert (=> b!3178771 m!3435313))

(declare-fun m!3435315 () Bool)

(assert (=> tb!155141 m!3435315))

(assert (=> d!870131 t!234942))

(declare-fun b_and!209979 () Bool)

(assert (= b_and!209947 (and (=> t!234942 result!197146) b_and!209979)))

(declare-fun t!234944 () Bool)

(declare-fun tb!155143 () Bool)

(assert (=> (and b!3178490 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494))))) t!234944) tb!155143))

(declare-fun result!197148 () Bool)

(assert (= result!197148 result!197146))

(assert (=> d!870131 t!234944))

(declare-fun b_and!209981 () Bool)

(assert (= b_and!209949 (and (=> t!234944 result!197148) b_and!209981)))

(declare-fun tb!155145 () Bool)

(declare-fun t!234946 () Bool)

(assert (=> (and b!3178494 (= (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494))))) t!234946) tb!155145))

(declare-fun result!197150 () Bool)

(assert (= result!197150 result!197146))

(assert (=> d!870131 t!234946))

(declare-fun b_and!209983 () Bool)

(assert (= b_and!209951 (and (=> t!234946 result!197150) b_and!209983)))

(declare-fun m!3435317 () Bool)

(assert (=> d!870131 m!3435317))

(declare-fun m!3435319 () Bool)

(assert (=> d!870131 m!3435319))

(assert (=> b!3178489 d!870131))

(declare-fun d!870133 () Bool)

(declare-fun res!1291558 () Bool)

(declare-fun e!1980120 () Bool)

(assert (=> d!870133 (=> (not res!1291558) (not e!1980120))))

(declare-fun rulesValid!1887 (LexerInterface!4693 List!35795) Bool)

(assert (=> d!870133 (= res!1291558 (rulesValid!1887 thiss!18206 rules!2135))))

(assert (=> d!870133 (= (rulesInvariant!4090 thiss!18206 rules!2135) e!1980120)))

(declare-fun b!3178774 () Bool)

(declare-datatypes ((List!35797 0))(
  ( (Nil!35673) (Cons!35673 (h!41093 String!40004) (t!234956 List!35797)) )
))
(declare-fun noDuplicateTag!1883 (LexerInterface!4693 List!35795 List!35797) Bool)

(assert (=> b!3178774 (= e!1980120 (noDuplicateTag!1883 thiss!18206 rules!2135 Nil!35673))))

(assert (= (and d!870133 res!1291558) b!3178774))

(declare-fun m!3435321 () Bool)

(assert (=> d!870133 m!3435321))

(declare-fun m!3435323 () Bool)

(assert (=> b!3178774 m!3435323))

(assert (=> b!3178479 d!870133))

(declare-fun d!870135 () Bool)

(assert (=> d!870135 (= (inv!48520 (tag!5608 (h!41091 rules!2135))) (= (mod (str.len (value!165923 (tag!5608 (h!41091 rules!2135)))) 2) 0))))

(assert (=> b!3178488 d!870135))

(declare-fun d!870137 () Bool)

(declare-fun res!1291559 () Bool)

(declare-fun e!1980121 () Bool)

(assert (=> d!870137 (=> (not res!1291559) (not e!1980121))))

(assert (=> d!870137 (= res!1291559 (semiInverseModEq!2127 (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toValue!7164 (transformation!5104 (h!41091 rules!2135)))))))

(assert (=> d!870137 (= (inv!48523 (transformation!5104 (h!41091 rules!2135))) e!1980121)))

(declare-fun b!3178775 () Bool)

(assert (=> b!3178775 (= e!1980121 (equivClasses!2026 (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toValue!7164 (transformation!5104 (h!41091 rules!2135)))))))

(assert (= (and d!870137 res!1291559) b!3178775))

(declare-fun m!3435325 () Bool)

(assert (=> d!870137 m!3435325))

(declare-fun m!3435327 () Bool)

(assert (=> b!3178775 m!3435327))

(assert (=> b!3178488 d!870137))

(declare-fun d!870139 () Bool)

(assert (=> d!870139 (= (inv!48520 (tag!5608 (rule!7514 (h!41090 tokens!494)))) (= (mod (str.len (value!165923 (tag!5608 (rule!7514 (h!41090 tokens!494))))) 2) 0))))

(assert (=> b!3178477 d!870139))

(declare-fun d!870141 () Bool)

(declare-fun res!1291560 () Bool)

(declare-fun e!1980122 () Bool)

(assert (=> d!870141 (=> (not res!1291560) (not e!1980122))))

(assert (=> d!870141 (= res!1291560 (semiInverseModEq!2127 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (toValue!7164 (transformation!5104 (rule!7514 (h!41090 tokens!494))))))))

(assert (=> d!870141 (= (inv!48523 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) e!1980122)))

(declare-fun b!3178776 () Bool)

(assert (=> b!3178776 (= e!1980122 (equivClasses!2026 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (toValue!7164 (transformation!5104 (rule!7514 (h!41090 tokens!494))))))))

(assert (= (and d!870141 res!1291560) b!3178776))

(declare-fun m!3435329 () Bool)

(assert (=> d!870141 m!3435329))

(declare-fun m!3435331 () Bool)

(assert (=> b!3178776 m!3435331))

(assert (=> b!3178477 d!870141))

(declare-fun d!870143 () Bool)

(declare-fun res!1291561 () Bool)

(declare-fun e!1980123 () Bool)

(assert (=> d!870143 (=> (not res!1291561) (not e!1980123))))

(assert (=> d!870143 (= res!1291561 (not (isEmpty!19792 (originalCharacters!5818 (h!41090 tokens!494)))))))

(assert (=> d!870143 (= (inv!48524 (h!41090 tokens!494)) e!1980123)))

(declare-fun b!3178777 () Bool)

(declare-fun res!1291562 () Bool)

(assert (=> b!3178777 (=> (not res!1291562) (not e!1980123))))

(assert (=> b!3178777 (= res!1291562 (= (originalCharacters!5818 (h!41090 tokens!494)) (list!12657 (dynLambda!14385 (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (value!165924 (h!41090 tokens!494))))))))

(declare-fun b!3178778 () Bool)

(assert (=> b!3178778 (= e!1980123 (= (size!26933 (h!41090 tokens!494)) (size!26938 (originalCharacters!5818 (h!41090 tokens!494)))))))

(assert (= (and d!870143 res!1291561) b!3178777))

(assert (= (and b!3178777 res!1291562) b!3178778))

(declare-fun b_lambda!86537 () Bool)

(assert (=> (not b_lambda!86537) (not b!3178777)))

(assert (=> b!3178777 t!234942))

(declare-fun b_and!209985 () Bool)

(assert (= b_and!209979 (and (=> t!234942 result!197146) b_and!209985)))

(assert (=> b!3178777 t!234944))

(declare-fun b_and!209987 () Bool)

(assert (= b_and!209981 (and (=> t!234944 result!197148) b_and!209987)))

(assert (=> b!3178777 t!234946))

(declare-fun b_and!209989 () Bool)

(assert (= b_and!209983 (and (=> t!234946 result!197150) b_and!209989)))

(declare-fun m!3435333 () Bool)

(assert (=> d!870143 m!3435333))

(assert (=> b!3178777 m!3435319))

(assert (=> b!3178777 m!3435319))

(declare-fun m!3435335 () Bool)

(assert (=> b!3178777 m!3435335))

(declare-fun m!3435337 () Bool)

(assert (=> b!3178778 m!3435337))

(assert (=> b!3178478 d!870143))

(declare-fun d!870145 () Bool)

(declare-fun lt!1068363 () Bool)

(declare-fun e!1980125 () Bool)

(assert (=> d!870145 (= lt!1068363 e!1980125)))

(declare-fun res!1291565 () Bool)

(assert (=> d!870145 (=> (not res!1291565) (not e!1980125))))

(assert (=> d!870145 (= res!1291565 (= (list!12661 (_1!20636 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 separatorToken!241))))) (list!12661 (singletonSeq!2200 separatorToken!241))))))

(declare-fun e!1980124 () Bool)

(assert (=> d!870145 (= lt!1068363 e!1980124)))

(declare-fun res!1291563 () Bool)

(assert (=> d!870145 (=> (not res!1291563) (not e!1980124))))

(declare-fun lt!1068362 () tuple2!35004)

(assert (=> d!870145 (= res!1291563 (= (size!26937 (_1!20636 lt!1068362)) 1))))

(assert (=> d!870145 (= lt!1068362 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 separatorToken!241))))))

(assert (=> d!870145 (not (isEmpty!19786 rules!2135))))

(assert (=> d!870145 (= (rulesProduceIndividualToken!2185 thiss!18206 rules!2135 separatorToken!241) lt!1068363)))

(declare-fun b!3178779 () Bool)

(declare-fun res!1291564 () Bool)

(assert (=> b!3178779 (=> (not res!1291564) (not e!1980124))))

(assert (=> b!3178779 (= res!1291564 (= (apply!8019 (_1!20636 lt!1068362) 0) separatorToken!241))))

(declare-fun b!3178780 () Bool)

(assert (=> b!3178780 (= e!1980124 (isEmpty!19793 (_2!20636 lt!1068362)))))

(declare-fun b!3178781 () Bool)

(assert (=> b!3178781 (= e!1980125 (isEmpty!19793 (_2!20636 (lex!2033 thiss!18206 rules!2135 (print!1760 thiss!18206 (singletonSeq!2200 separatorToken!241))))))))

(assert (= (and d!870145 res!1291563) b!3178779))

(assert (= (and b!3178779 res!1291564) b!3178780))

(assert (= (and d!870145 res!1291565) b!3178781))

(declare-fun m!3435339 () Bool)

(assert (=> d!870145 m!3435339))

(assert (=> d!870145 m!3434907))

(declare-fun m!3435341 () Bool)

(assert (=> d!870145 m!3435341))

(declare-fun m!3435343 () Bool)

(assert (=> d!870145 m!3435343))

(declare-fun m!3435345 () Bool)

(assert (=> d!870145 m!3435345))

(declare-fun m!3435347 () Bool)

(assert (=> d!870145 m!3435347))

(assert (=> d!870145 m!3435341))

(declare-fun m!3435349 () Bool)

(assert (=> d!870145 m!3435349))

(assert (=> d!870145 m!3435341))

(assert (=> d!870145 m!3435343))

(declare-fun m!3435351 () Bool)

(assert (=> b!3178779 m!3435351))

(declare-fun m!3435353 () Bool)

(assert (=> b!3178780 m!3435353))

(assert (=> b!3178781 m!3435341))

(assert (=> b!3178781 m!3435341))

(assert (=> b!3178781 m!3435343))

(assert (=> b!3178781 m!3435343))

(assert (=> b!3178781 m!3435345))

(declare-fun m!3435355 () Bool)

(assert (=> b!3178781 m!3435355))

(assert (=> b!3178497 d!870145))

(declare-fun d!870147 () Bool)

(declare-fun lt!1068366 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4838 (List!35794) (InoxSet Token!9574))

(assert (=> d!870147 (= lt!1068366 (select (content!4838 tokens!494) (h!41090 tokens!494)))))

(declare-fun e!1980131 () Bool)

(assert (=> d!870147 (= lt!1068366 e!1980131)))

(declare-fun res!1291570 () Bool)

(assert (=> d!870147 (=> (not res!1291570) (not e!1980131))))

(assert (=> d!870147 (= res!1291570 ((_ is Cons!35670) tokens!494))))

(assert (=> d!870147 (= (contains!6303 tokens!494 (h!41090 tokens!494)) lt!1068366)))

(declare-fun b!3178786 () Bool)

(declare-fun e!1980130 () Bool)

(assert (=> b!3178786 (= e!1980131 e!1980130)))

(declare-fun res!1291571 () Bool)

(assert (=> b!3178786 (=> res!1291571 e!1980130)))

(assert (=> b!3178786 (= res!1291571 (= (h!41090 tokens!494) (h!41090 tokens!494)))))

(declare-fun b!3178787 () Bool)

(assert (=> b!3178787 (= e!1980130 (contains!6303 (t!234901 tokens!494) (h!41090 tokens!494)))))

(assert (= (and d!870147 res!1291570) b!3178786))

(assert (= (and b!3178786 (not res!1291571)) b!3178787))

(declare-fun m!3435357 () Bool)

(assert (=> d!870147 m!3435357))

(declare-fun m!3435359 () Bool)

(assert (=> d!870147 m!3435359))

(declare-fun m!3435361 () Bool)

(assert (=> b!3178787 m!3435361))

(assert (=> b!3178498 d!870147))

(declare-fun d!870149 () Bool)

(declare-fun res!1291576 () Bool)

(declare-fun e!1980136 () Bool)

(assert (=> d!870149 (=> res!1291576 e!1980136)))

(assert (=> d!870149 (= res!1291576 (not ((_ is Cons!35671) rules!2135)))))

(assert (=> d!870149 (= (sepAndNonSepRulesDisjointChars!1298 rules!2135 rules!2135) e!1980136)))

(declare-fun b!3178792 () Bool)

(declare-fun e!1980137 () Bool)

(assert (=> b!3178792 (= e!1980136 e!1980137)))

(declare-fun res!1291577 () Bool)

(assert (=> b!3178792 (=> (not res!1291577) (not e!1980137))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!563 (Rule!10008 List!35795) Bool)

(assert (=> b!3178792 (= res!1291577 (ruleDisjointCharsFromAllFromOtherType!563 (h!41091 rules!2135) rules!2135))))

(declare-fun b!3178793 () Bool)

(assert (=> b!3178793 (= e!1980137 (sepAndNonSepRulesDisjointChars!1298 rules!2135 (t!234902 rules!2135)))))

(assert (= (and d!870149 (not res!1291576)) b!3178792))

(assert (= (and b!3178792 res!1291577) b!3178793))

(declare-fun m!3435363 () Bool)

(assert (=> b!3178792 m!3435363))

(declare-fun m!3435365 () Bool)

(assert (=> b!3178793 m!3435365))

(assert (=> b!3178487 d!870149))

(declare-fun b!3178804 () Bool)

(declare-fun e!1980140 () Bool)

(declare-fun tp_is_empty!17241 () Bool)

(assert (=> b!3178804 (= e!1980140 tp_is_empty!17241)))

(declare-fun b!3178805 () Bool)

(declare-fun tp!1005559 () Bool)

(declare-fun tp!1005560 () Bool)

(assert (=> b!3178805 (= e!1980140 (and tp!1005559 tp!1005560))))

(declare-fun b!3178806 () Bool)

(declare-fun tp!1005561 () Bool)

(assert (=> b!3178806 (= e!1980140 tp!1005561)))

(declare-fun b!3178807 () Bool)

(declare-fun tp!1005563 () Bool)

(declare-fun tp!1005562 () Bool)

(assert (=> b!3178807 (= e!1980140 (and tp!1005563 tp!1005562))))

(assert (=> b!3178480 (= tp!1005483 e!1980140)))

(assert (= (and b!3178480 ((_ is ElementMatch!9863) (regex!5104 (rule!7514 separatorToken!241)))) b!3178804))

(assert (= (and b!3178480 ((_ is Concat!15197) (regex!5104 (rule!7514 separatorToken!241)))) b!3178805))

(assert (= (and b!3178480 ((_ is Star!9863) (regex!5104 (rule!7514 separatorToken!241)))) b!3178806))

(assert (= (and b!3178480 ((_ is Union!9863) (regex!5104 (rule!7514 separatorToken!241)))) b!3178807))

(declare-fun b!3178812 () Bool)

(declare-fun e!1980143 () Bool)

(declare-fun tp!1005566 () Bool)

(assert (=> b!3178812 (= e!1980143 (and tp_is_empty!17241 tp!1005566))))

(assert (=> b!3178475 (= tp!1005477 e!1980143)))

(assert (= (and b!3178475 ((_ is Cons!35669) (originalCharacters!5818 (h!41090 tokens!494)))) b!3178812))

(declare-fun b!3178813 () Bool)

(declare-fun e!1980144 () Bool)

(assert (=> b!3178813 (= e!1980144 tp_is_empty!17241)))

(declare-fun b!3178814 () Bool)

(declare-fun tp!1005567 () Bool)

(declare-fun tp!1005568 () Bool)

(assert (=> b!3178814 (= e!1980144 (and tp!1005567 tp!1005568))))

(declare-fun b!3178815 () Bool)

(declare-fun tp!1005569 () Bool)

(assert (=> b!3178815 (= e!1980144 tp!1005569)))

(declare-fun b!3178816 () Bool)

(declare-fun tp!1005571 () Bool)

(declare-fun tp!1005570 () Bool)

(assert (=> b!3178816 (= e!1980144 (and tp!1005571 tp!1005570))))

(assert (=> b!3178488 (= tp!1005479 e!1980144)))

(assert (= (and b!3178488 ((_ is ElementMatch!9863) (regex!5104 (h!41091 rules!2135)))) b!3178813))

(assert (= (and b!3178488 ((_ is Concat!15197) (regex!5104 (h!41091 rules!2135)))) b!3178814))

(assert (= (and b!3178488 ((_ is Star!9863) (regex!5104 (h!41091 rules!2135)))) b!3178815))

(assert (= (and b!3178488 ((_ is Union!9863) (regex!5104 (h!41091 rules!2135)))) b!3178816))

(declare-fun b!3178817 () Bool)

(declare-fun e!1980145 () Bool)

(assert (=> b!3178817 (= e!1980145 tp_is_empty!17241)))

(declare-fun b!3178818 () Bool)

(declare-fun tp!1005572 () Bool)

(declare-fun tp!1005573 () Bool)

(assert (=> b!3178818 (= e!1980145 (and tp!1005572 tp!1005573))))

(declare-fun b!3178819 () Bool)

(declare-fun tp!1005574 () Bool)

(assert (=> b!3178819 (= e!1980145 tp!1005574)))

(declare-fun b!3178820 () Bool)

(declare-fun tp!1005576 () Bool)

(declare-fun tp!1005575 () Bool)

(assert (=> b!3178820 (= e!1980145 (and tp!1005576 tp!1005575))))

(assert (=> b!3178477 (= tp!1005473 e!1980145)))

(assert (= (and b!3178477 ((_ is ElementMatch!9863) (regex!5104 (rule!7514 (h!41090 tokens!494))))) b!3178817))

(assert (= (and b!3178477 ((_ is Concat!15197) (regex!5104 (rule!7514 (h!41090 tokens!494))))) b!3178818))

(assert (= (and b!3178477 ((_ is Star!9863) (regex!5104 (rule!7514 (h!41090 tokens!494))))) b!3178819))

(assert (= (and b!3178477 ((_ is Union!9863) (regex!5104 (rule!7514 (h!41090 tokens!494))))) b!3178820))

(declare-fun b!3178834 () Bool)

(declare-fun b_free!83661 () Bool)

(declare-fun b_next!84365 () Bool)

(assert (=> b!3178834 (= b_free!83661 (not b_next!84365))))

(declare-fun tp!1005591 () Bool)

(declare-fun b_and!209991 () Bool)

(assert (=> b!3178834 (= tp!1005591 b_and!209991)))

(declare-fun b_free!83663 () Bool)

(declare-fun b_next!84367 () Bool)

(assert (=> b!3178834 (= b_free!83663 (not b_next!84367))))

(declare-fun tb!155147 () Bool)

(declare-fun t!234949 () Bool)

(assert (=> (and b!3178834 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241)))) t!234949) tb!155147))

(declare-fun result!197158 () Bool)

(assert (= result!197158 result!197108))

(assert (=> b!3178628 t!234949))

(declare-fun t!234951 () Bool)

(declare-fun tb!155149 () Bool)

(assert (=> (and b!3178834 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494))))) t!234951) tb!155149))

(declare-fun result!197160 () Bool)

(assert (= result!197160 result!197146))

(assert (=> d!870131 t!234951))

(assert (=> b!3178777 t!234951))

(declare-fun tp!1005588 () Bool)

(declare-fun b_and!209993 () Bool)

(assert (=> b!3178834 (= tp!1005588 (and (=> t!234949 result!197158) (=> t!234951 result!197160) b_and!209993))))

(declare-fun e!1980162 () Bool)

(declare-fun tp!1005589 () Bool)

(declare-fun b!3178833 () Bool)

(declare-fun e!1980160 () Bool)

(assert (=> b!3178833 (= e!1980162 (and tp!1005589 (inv!48520 (tag!5608 (rule!7514 (h!41090 (t!234901 tokens!494))))) (inv!48523 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) e!1980160))))

(declare-fun b!3178832 () Bool)

(declare-fun tp!1005587 () Bool)

(declare-fun e!1980158 () Bool)

(assert (=> b!3178832 (= e!1980158 (and (inv!21 (value!165924 (h!41090 (t!234901 tokens!494)))) e!1980162 tp!1005587))))

(assert (=> b!3178834 (= e!1980160 (and tp!1005591 tp!1005588))))

(declare-fun b!3178831 () Bool)

(declare-fun e!1980161 () Bool)

(declare-fun tp!1005590 () Bool)

(assert (=> b!3178831 (= e!1980161 (and (inv!48524 (h!41090 (t!234901 tokens!494))) e!1980158 tp!1005590))))

(assert (=> b!3178478 (= tp!1005472 e!1980161)))

(assert (= b!3178833 b!3178834))

(assert (= b!3178832 b!3178833))

(assert (= b!3178831 b!3178832))

(assert (= (and b!3178478 ((_ is Cons!35670) (t!234901 tokens!494))) b!3178831))

(declare-fun m!3435367 () Bool)

(assert (=> b!3178833 m!3435367))

(declare-fun m!3435369 () Bool)

(assert (=> b!3178833 m!3435369))

(declare-fun m!3435371 () Bool)

(assert (=> b!3178832 m!3435371))

(declare-fun m!3435373 () Bool)

(assert (=> b!3178831 m!3435373))

(declare-fun b!3178845 () Bool)

(declare-fun b_free!83665 () Bool)

(declare-fun b_next!84369 () Bool)

(assert (=> b!3178845 (= b_free!83665 (not b_next!84369))))

(declare-fun tp!1005601 () Bool)

(declare-fun b_and!209995 () Bool)

(assert (=> b!3178845 (= tp!1005601 b_and!209995)))

(declare-fun b_free!83667 () Bool)

(declare-fun b_next!84371 () Bool)

(assert (=> b!3178845 (= b_free!83667 (not b_next!84371))))

(declare-fun tb!155151 () Bool)

(declare-fun t!234953 () Bool)

(assert (=> (and b!3178845 (= (toChars!7023 (transformation!5104 (h!41091 (t!234902 rules!2135)))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241)))) t!234953) tb!155151))

(declare-fun result!197164 () Bool)

(assert (= result!197164 result!197108))

(assert (=> b!3178628 t!234953))

(declare-fun tb!155153 () Bool)

(declare-fun t!234955 () Bool)

(assert (=> (and b!3178845 (= (toChars!7023 (transformation!5104 (h!41091 (t!234902 rules!2135)))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494))))) t!234955) tb!155153))

(declare-fun result!197166 () Bool)

(assert (= result!197166 result!197146))

(assert (=> d!870131 t!234955))

(assert (=> b!3178777 t!234955))

(declare-fun b_and!209997 () Bool)

(declare-fun tp!1005600 () Bool)

(assert (=> b!3178845 (= tp!1005600 (and (=> t!234953 result!197164) (=> t!234955 result!197166) b_and!209997))))

(declare-fun e!1980172 () Bool)

(assert (=> b!3178845 (= e!1980172 (and tp!1005601 tp!1005600))))

(declare-fun b!3178844 () Bool)

(declare-fun e!1980175 () Bool)

(declare-fun tp!1005602 () Bool)

(assert (=> b!3178844 (= e!1980175 (and tp!1005602 (inv!48520 (tag!5608 (h!41091 (t!234902 rules!2135)))) (inv!48523 (transformation!5104 (h!41091 (t!234902 rules!2135)))) e!1980172))))

(declare-fun b!3178843 () Bool)

(declare-fun e!1980174 () Bool)

(declare-fun tp!1005603 () Bool)

(assert (=> b!3178843 (= e!1980174 (and e!1980175 tp!1005603))))

(assert (=> b!3178483 (= tp!1005476 e!1980174)))

(assert (= b!3178844 b!3178845))

(assert (= b!3178843 b!3178844))

(assert (= (and b!3178483 ((_ is Cons!35671) (t!234902 rules!2135))) b!3178843))

(declare-fun m!3435375 () Bool)

(assert (=> b!3178844 m!3435375))

(declare-fun m!3435377 () Bool)

(assert (=> b!3178844 m!3435377))

(declare-fun b!3178846 () Bool)

(declare-fun e!1980176 () Bool)

(declare-fun tp!1005604 () Bool)

(assert (=> b!3178846 (= e!1980176 (and tp_is_empty!17241 tp!1005604))))

(assert (=> b!3178492 (= tp!1005475 e!1980176)))

(assert (= (and b!3178492 ((_ is Cons!35669) (originalCharacters!5818 separatorToken!241))) b!3178846))

(declare-fun b_lambda!86539 () Bool)

(assert (= b_lambda!86537 (or (and b!3178494 b_free!83651 (= (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178845 b_free!83667 (= (toChars!7023 (transformation!5104 (h!41091 (t!234902 rules!2135)))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178496 b_free!83643 (= (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178490 b_free!83647) (and b!3178834 b_free!83663 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) b_lambda!86539)))

(declare-fun b_lambda!86541 () Bool)

(assert (= b_lambda!86535 (or (and b!3178494 b_free!83651 (= (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178845 b_free!83667 (= (toChars!7023 (transformation!5104 (h!41091 (t!234902 rules!2135)))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178496 b_free!83643 (= (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) (and b!3178490 b_free!83647) (and b!3178834 b_free!83663 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))))) b_lambda!86541)))

(declare-fun b_lambda!86543 () Bool)

(assert (= b_lambda!86515 (or b!3178485 b_lambda!86543)))

(declare-fun bs!539817 () Bool)

(declare-fun d!870151 () Bool)

(assert (= bs!539817 (and d!870151 b!3178485)))

(assert (=> bs!539817 (= (dynLambda!14381 lambda!116303 (h!41090 tokens!494)) (not (isSeparator!5104 (rule!7514 (h!41090 tokens!494)))))))

(assert (=> b!3178503 d!870151))

(declare-fun b_lambda!86545 () Bool)

(assert (= b_lambda!86519 (or (and b!3178834 b_free!83663 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 (t!234901 tokens!494))))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))))) (and b!3178496 b_free!83643) (and b!3178490 b_free!83647 (= (toChars!7023 (transformation!5104 (rule!7514 (h!41090 tokens!494)))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))))) (and b!3178494 b_free!83651 (= (toChars!7023 (transformation!5104 (h!41091 rules!2135))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))))) (and b!3178845 b_free!83667 (= (toChars!7023 (transformation!5104 (h!41091 (t!234902 rules!2135)))) (toChars!7023 (transformation!5104 (rule!7514 separatorToken!241))))) b_lambda!86545)))

(check-sat (not b_next!84355) (not d!870131) (not b!3178526) (not b!3178816) (not b!3178768) (not b!3178517) (not d!870089) (not b!3178714) (not b!3178519) (not b!3178713) (not b!3178750) (not b!3178771) (not b!3178712) (not d!870129) (not b!3178634) (not b!3178819) (not d!870043) (not b_next!84353) (not b!3178629) (not b_next!84349) (not b!3178787) (not b!3178528) (not b_lambda!86541) (not b!3178832) (not b!3178766) (not d!870125) (not b!3178780) (not b!3178792) b_and!209997 (not d!870039) (not b!3178536) (not d!870143) b_and!209991 (not b!3178833) (not b!3178846) (not b!3178628) (not b!3178820) (not b!3178531) (not b!3178776) (not b!3178807) (not b!3178781) (not b!3178614) (not b!3178779) (not b!3178623) (not b_lambda!86543) (not b_next!84347) (not d!870083) (not b_lambda!86539) (not b!3178815) (not b!3178777) (not b!3178818) (not d!870119) (not b!3178605) b_and!209987 (not b!3178504) tp_is_empty!17241 (not d!870049) (not d!870041) (not d!870145) (not b!3178793) (not b_lambda!86545) (not d!870045) (not b!3178770) (not b!3178844) (not b_next!84369) (not b!3178619) (not d!870121) b_and!209943 (not tb!155115) (not b!3178814) (not b_next!84351) (not d!870147) (not b!3178778) (not b!3178774) (not d!870137) b_and!209989 b_and!209993 b_and!209985 (not b!3178843) (not b_next!84371) (not b_next!84367) (not b_next!84345) (not b!3178806) (not b!3178621) (not b_next!84365) (not d!870133) (not d!870087) b_and!209935 (not b!3178812) (not b!3178805) b_and!209995 b_and!209939 (not b!3178775) (not b!3178831) (not b!3178515) (not tb!155141) (not b!3178769) (not d!870141) (not d!870127))
(check-sat (not b_next!84355) (not b_next!84353) (not b_next!84349) (not b_next!84347) b_and!209987 (not b_next!84369) b_and!209943 (not b_next!84351) b_and!209997 b_and!209991 b_and!209989 b_and!209993 b_and!209985 (not b_next!84371) (not b_next!84367) (not b_next!84345) (not b_next!84365) b_and!209935 b_and!209995 b_and!209939)
