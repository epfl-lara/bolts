; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29926 () Bool)

(assert start!29926)

(declare-fun b!276789 () Bool)

(declare-fun b_free!10225 () Bool)

(declare-fun b_next!10225 () Bool)

(assert (=> b!276789 (= b_free!10225 (not b_next!10225))))

(declare-fun tp!103739 () Bool)

(declare-fun b_and!22221 () Bool)

(assert (=> b!276789 (= tp!103739 b_and!22221)))

(declare-fun b_free!10227 () Bool)

(declare-fun b_next!10227 () Bool)

(assert (=> b!276789 (= b_free!10227 (not b_next!10227))))

(declare-fun tp!103741 () Bool)

(declare-fun b_and!22223 () Bool)

(assert (=> b!276789 (= tp!103741 b_and!22223)))

(declare-fun b!276821 () Bool)

(declare-fun b_free!10229 () Bool)

(declare-fun b_next!10229 () Bool)

(assert (=> b!276821 (= b_free!10229 (not b_next!10229))))

(declare-fun tp!103738 () Bool)

(declare-fun b_and!22225 () Bool)

(assert (=> b!276821 (= tp!103738 b_and!22225)))

(declare-fun b_free!10231 () Bool)

(declare-fun b_next!10231 () Bool)

(assert (=> b!276821 (= b_free!10231 (not b_next!10231))))

(declare-fun tp!103746 () Bool)

(declare-fun b_and!22227 () Bool)

(assert (=> b!276821 (= tp!103746 b_and!22227)))

(declare-fun b!276813 () Bool)

(declare-fun b_free!10233 () Bool)

(declare-fun b_next!10233 () Bool)

(assert (=> b!276813 (= b_free!10233 (not b_next!10233))))

(declare-fun tp!103748 () Bool)

(declare-fun b_and!22229 () Bool)

(assert (=> b!276813 (= tp!103748 b_and!22229)))

(declare-fun b_free!10235 () Bool)

(declare-fun b_next!10235 () Bool)

(assert (=> b!276813 (= b_free!10235 (not b_next!10235))))

(declare-fun tp!103744 () Bool)

(declare-fun b_and!22231 () Bool)

(assert (=> b!276813 (= tp!103744 b_and!22231)))

(declare-fun bs!31056 () Bool)

(declare-fun b!276812 () Bool)

(declare-fun b!276786 () Bool)

(assert (= bs!31056 (and b!276812 b!276786)))

(declare-fun lambda!9418 () Int)

(declare-fun lambda!9417 () Int)

(assert (=> bs!31056 (not (= lambda!9418 lambda!9417))))

(declare-fun b!276832 () Bool)

(declare-fun e!172130 () Bool)

(assert (=> b!276832 (= e!172130 true)))

(declare-fun b!276831 () Bool)

(declare-fun e!172129 () Bool)

(assert (=> b!276831 (= e!172129 e!172130)))

(declare-fun b!276830 () Bool)

(declare-fun e!172128 () Bool)

(assert (=> b!276830 (= e!172128 e!172129)))

(assert (=> b!276812 e!172128))

(assert (= b!276831 b!276832))

(assert (= b!276830 b!276831))

(declare-datatypes ((List!3876 0))(
  ( (Nil!3866) (Cons!3866 (h!9263 (_ BitVec 16)) (t!39102 List!3876)) )
))
(declare-datatypes ((TokenValue!761 0))(
  ( (FloatLiteralValue!1522 (text!5772 List!3876)) (TokenValueExt!760 (__x!3009 Int)) (Broken!3805 (value!25351 List!3876)) (Object!770) (End!761) (Def!761) (Underscore!761) (Match!761) (Else!761) (Error!761) (Case!761) (If!761) (Extends!761) (Abstract!761) (Class!761) (Val!761) (DelimiterValue!1522 (del!821 List!3876)) (KeywordValue!767 (value!25352 List!3876)) (CommentValue!1522 (value!25353 List!3876)) (WhitespaceValue!1522 (value!25354 List!3876)) (IndentationValue!761 (value!25355 List!3876)) (String!4884) (Int32!761) (Broken!3806 (value!25356 List!3876)) (Boolean!762) (Unit!5063) (OperatorValue!764 (op!821 List!3876)) (IdentifierValue!1522 (value!25357 List!3876)) (IdentifierValue!1523 (value!25358 List!3876)) (WhitespaceValue!1523 (value!25359 List!3876)) (True!1522) (False!1522) (Broken!3807 (value!25360 List!3876)) (Broken!3808 (value!25361 List!3876)) (True!1523) (RightBrace!761) (RightBracket!761) (Colon!761) (Null!761) (Comma!761) (LeftBracket!761) (False!1523) (LeftBrace!761) (ImaginaryLiteralValue!761 (text!5773 List!3876)) (StringLiteralValue!2283 (value!25362 List!3876)) (EOFValue!761 (value!25363 List!3876)) (IdentValue!761 (value!25364 List!3876)) (DelimiterValue!1523 (value!25365 List!3876)) (DedentValue!761 (value!25366 List!3876)) (NewLineValue!761 (value!25367 List!3876)) (IntegerValue!2283 (value!25368 (_ BitVec 32)) (text!5774 List!3876)) (IntegerValue!2284 (value!25369 Int) (text!5775 List!3876)) (Times!761) (Or!761) (Equal!761) (Minus!761) (Broken!3809 (value!25370 List!3876)) (And!761) (Div!761) (LessEqual!761) (Mod!761) (Concat!1724) (Not!761) (Plus!761) (SpaceValue!761 (value!25371 List!3876)) (IntegerValue!2285 (value!25372 Int) (text!5776 List!3876)) (StringLiteralValue!2284 (text!5777 List!3876)) (FloatLiteralValue!1523 (text!5778 List!3876)) (BytesLiteralValue!761 (value!25373 List!3876)) (CommentValue!1523 (value!25374 List!3876)) (StringLiteralValue!2285 (value!25375 List!3876)) (ErrorTokenValue!761 (msg!822 List!3876)) )
))
(declare-datatypes ((C!2848 0))(
  ( (C!2849 (val!1310 Int)) )
))
(declare-datatypes ((List!3877 0))(
  ( (Nil!3867) (Cons!3867 (h!9264 C!2848) (t!39103 List!3877)) )
))
(declare-datatypes ((IArray!2601 0))(
  ( (IArray!2602 (innerList!1358 List!3877)) )
))
(declare-datatypes ((Conc!1300 0))(
  ( (Node!1300 (left!3188 Conc!1300) (right!3518 Conc!1300) (csize!2830 Int) (cheight!1511 Int)) (Leaf!2009 (xs!3899 IArray!2601) (csize!2831 Int)) (Empty!1300) )
))
(declare-datatypes ((BalanceConc!2608 0))(
  ( (BalanceConc!2609 (c!52342 Conc!1300)) )
))
(declare-datatypes ((String!4885 0))(
  ( (String!4886 (value!25376 String)) )
))
(declare-datatypes ((TokenValueInjection!1294 0))(
  ( (TokenValueInjection!1295 (toValue!1482 Int) (toChars!1341 Int)) )
))
(declare-datatypes ((Regex!963 0))(
  ( (ElementMatch!963 (c!52343 C!2848)) (Concat!1725 (regOne!2438 Regex!963) (regTwo!2438 Regex!963)) (EmptyExpr!963) (Star!963 (reg!1292 Regex!963)) (EmptyLang!963) (Union!963 (regOne!2439 Regex!963) (regTwo!2439 Regex!963)) )
))
(declare-datatypes ((Rule!1278 0))(
  ( (Rule!1279 (regex!739 Regex!963) (tag!949 String!4885) (isSeparator!739 Bool) (transformation!739 TokenValueInjection!1294)) )
))
(declare-datatypes ((List!3878 0))(
  ( (Nil!3868) (Cons!3868 (h!9265 Rule!1278) (t!39104 List!3878)) )
))
(declare-fun rules!1920 () List!3878)

(get-info :version)

(assert (= (and b!276812 ((_ is Cons!3868) rules!1920)) b!276830))

(declare-fun order!3009 () Int)

(declare-fun order!3011 () Int)

(declare-fun dynLambda!2011 (Int Int) Int)

(declare-fun dynLambda!2012 (Int Int) Int)

(assert (=> b!276832 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9418))))

(declare-fun order!3013 () Int)

(declare-fun dynLambda!2013 (Int Int) Int)

(assert (=> b!276832 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9418))))

(assert (=> b!276812 true))

(declare-fun res!126424 () Bool)

(declare-fun e!172119 () Bool)

(assert (=> b!276786 (=> (not res!126424) (not e!172119))))

(declare-datatypes ((Token!1222 0))(
  ( (Token!1223 (value!25377 TokenValue!761) (rule!1326 Rule!1278) (size!3089 Int) (originalCharacters!782 List!3877)) )
))
(declare-datatypes ((List!3879 0))(
  ( (Nil!3869) (Cons!3869 (h!9266 Token!1222) (t!39105 List!3879)) )
))
(declare-fun tokens!465 () List!3879)

(declare-fun forall!984 (List!3879 Int) Bool)

(assert (=> b!276786 (= res!126424 (forall!984 tokens!465 lambda!9417))))

(declare-fun b!276787 () Bool)

(declare-fun res!126430 () Bool)

(declare-fun e!172107 () Bool)

(assert (=> b!276787 (=> res!126430 e!172107)))

(declare-fun lt!115011 () List!3877)

(declare-fun isEmpty!2497 (List!3877) Bool)

(assert (=> b!276787 (= res!126430 (not (isEmpty!2497 lt!115011)))))

(declare-fun lt!115001 () List!3877)

(declare-fun b!276788 () Bool)

(declare-fun lt!114996 () List!3877)

(declare-fun lt!114992 () List!3877)

(assert (=> b!276788 (= e!172107 (or (not (= lt!114996 lt!114992)) (= lt!114996 lt!115001)))))

(declare-fun e!172100 () Bool)

(assert (=> b!276789 (= e!172100 (and tp!103739 tp!103741))))

(declare-fun b!276790 () Bool)

(declare-fun res!126428 () Bool)

(assert (=> b!276790 (=> (not res!126428) (not e!172119))))

(assert (=> b!276790 (= res!126428 ((_ is Cons!3869) tokens!465))))

(declare-fun b!276791 () Bool)

(declare-fun e!172095 () Bool)

(declare-datatypes ((tuple2!4366 0))(
  ( (tuple2!4367 (_1!2399 Token!1222) (_2!2399 List!3877)) )
))
(declare-datatypes ((Option!832 0))(
  ( (None!831) (Some!831 (v!14726 tuple2!4366)) )
))
(declare-fun lt!115004 () Option!832)

(declare-fun get!1291 (Option!832) tuple2!4366)

(declare-fun head!904 (List!3879) Token!1222)

(assert (=> b!276791 (= e!172095 (= (_1!2399 (get!1291 lt!115004)) (head!904 tokens!465)))))

(declare-fun b!276792 () Bool)

(declare-fun res!126431 () Bool)

(declare-fun e!172099 () Bool)

(assert (=> b!276792 (=> res!126431 e!172099)))

(declare-datatypes ((LexerInterface!625 0))(
  ( (LexerInterfaceExt!622 (__x!3010 Int)) (Lexer!623) )
))
(declare-fun thiss!17480 () LexerInterface!625)

(declare-fun rulesProduceIndividualToken!374 (LexerInterface!625 List!3878 Token!1222) Bool)

(assert (=> b!276792 (= res!126431 (not (rulesProduceIndividualToken!374 thiss!17480 rules!1920 (h!9266 tokens!465))))))

(declare-fun b!276793 () Bool)

(declare-fun e!172102 () Bool)

(assert (=> b!276793 (= e!172102 e!172095)))

(declare-fun res!126422 () Bool)

(assert (=> b!276793 (=> (not res!126422) (not e!172095))))

(declare-fun isDefined!675 (Option!832) Bool)

(assert (=> b!276793 (= res!126422 (isDefined!675 lt!115004))))

(declare-fun maxPrefix!343 (LexerInterface!625 List!3878 List!3877) Option!832)

(assert (=> b!276793 (= lt!115004 (maxPrefix!343 thiss!17480 rules!1920 lt!114996))))

(declare-fun separatorToken!170 () Token!1222)

(declare-fun tp!103743 () Bool)

(declare-fun e!172103 () Bool)

(declare-fun b!276794 () Bool)

(declare-fun inv!4785 (String!4885) Bool)

(declare-fun inv!4788 (TokenValueInjection!1294) Bool)

(assert (=> b!276794 (= e!172103 (and tp!103743 (inv!4785 (tag!949 (rule!1326 separatorToken!170))) (inv!4788 (transformation!739 (rule!1326 separatorToken!170))) e!172100))))

(declare-fun e!172117 () Bool)

(declare-fun b!276795 () Bool)

(declare-fun ++!1022 (List!3877 List!3877) List!3877)

(assert (=> b!276795 (= e!172117 (not (= lt!114996 (++!1022 lt!114992 lt!115011))))))

(declare-fun e!172110 () Bool)

(declare-fun tp!103742 () Bool)

(declare-fun b!276796 () Bool)

(declare-fun inv!21 (TokenValue!761) Bool)

(assert (=> b!276796 (= e!172110 (and (inv!21 (value!25377 separatorToken!170)) e!172103 tp!103742))))

(declare-fun b!276797 () Bool)

(declare-fun tp!103747 () Bool)

(declare-fun e!172098 () Bool)

(declare-fun e!172105 () Bool)

(declare-fun inv!4789 (Token!1222) Bool)

(assert (=> b!276797 (= e!172098 (and (inv!4789 (h!9266 tokens!465)) e!172105 tp!103747))))

(declare-fun b!276798 () Bool)

(declare-fun e!172096 () Bool)

(declare-fun e!172111 () Bool)

(assert (=> b!276798 (= e!172096 e!172111)))

(declare-fun res!126432 () Bool)

(assert (=> b!276798 (=> res!126432 e!172111)))

(assert (=> b!276798 (= res!126432 e!172117)))

(declare-fun res!126420 () Bool)

(assert (=> b!276798 (=> (not res!126420) (not e!172117))))

(declare-fun lt!114987 () Bool)

(assert (=> b!276798 (= res!126420 (not lt!114987))))

(declare-fun lt!114988 () List!3877)

(assert (=> b!276798 (= lt!114987 (= lt!114996 lt!114988))))

(declare-fun b!276799 () Bool)

(declare-fun e!172113 () Bool)

(declare-fun e!172109 () Bool)

(assert (=> b!276799 (= e!172113 e!172109)))

(declare-fun res!126429 () Bool)

(assert (=> b!276799 (=> res!126429 e!172109)))

(assert (=> b!276799 (= res!126429 (not lt!114987))))

(declare-fun e!172118 () Bool)

(assert (=> b!276799 e!172118))

(declare-fun res!126434 () Bool)

(assert (=> b!276799 (=> (not res!126434) (not e!172118))))

(declare-fun lt!115006 () tuple2!4366)

(assert (=> b!276799 (= res!126434 (= (_1!2399 lt!115006) (h!9266 tokens!465)))))

(declare-fun lt!114990 () Option!832)

(assert (=> b!276799 (= lt!115006 (get!1291 lt!114990))))

(assert (=> b!276799 (isDefined!675 lt!114990)))

(assert (=> b!276799 (= lt!114990 (maxPrefix!343 thiss!17480 rules!1920 lt!114992))))

(declare-fun b!276800 () Bool)

(declare-fun e!172104 () Bool)

(declare-fun e!172094 () Bool)

(declare-fun tp!103737 () Bool)

(assert (=> b!276800 (= e!172104 (and e!172094 tp!103737))))

(declare-fun b!276801 () Bool)

(assert (=> b!276801 (= e!172109 e!172107)))

(declare-fun res!126426 () Bool)

(assert (=> b!276801 (=> res!126426 e!172107)))

(declare-fun isEmpty!2498 (List!3879) Bool)

(assert (=> b!276801 (= res!126426 (not (isEmpty!2498 (t!39105 tokens!465))))))

(declare-fun lt!114997 () List!3877)

(declare-fun lt!115010 () Option!832)

(assert (=> b!276801 (= lt!115010 (maxPrefix!343 thiss!17480 rules!1920 lt!114997))))

(declare-fun lt!115003 () tuple2!4366)

(assert (=> b!276801 (= lt!114997 (_2!2399 lt!115003))))

(declare-datatypes ((Unit!5064 0))(
  ( (Unit!5065) )
))
(declare-fun lt!114994 () Unit!5064)

(declare-fun lemmaSamePrefixThenSameSuffix!208 (List!3877 List!3877 List!3877 List!3877 List!3877) Unit!5064)

(assert (=> b!276801 (= lt!114994 (lemmaSamePrefixThenSameSuffix!208 lt!114992 lt!114997 lt!114992 (_2!2399 lt!115003) lt!114996))))

(assert (=> b!276801 (= lt!115003 (get!1291 (maxPrefix!343 thiss!17480 rules!1920 lt!114996)))))

(declare-fun isPrefix!407 (List!3877 List!3877) Bool)

(assert (=> b!276801 (isPrefix!407 lt!114992 lt!114988)))

(declare-fun lt!115005 () Unit!5064)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!302 (List!3877 List!3877) Unit!5064)

(assert (=> b!276801 (= lt!115005 (lemmaConcatTwoListThenFirstIsPrefix!302 lt!114992 lt!114997))))

(assert (=> b!276801 e!172102))

(declare-fun res!126439 () Bool)

(assert (=> b!276801 (=> res!126439 e!172102)))

(assert (=> b!276801 (= res!126439 (isEmpty!2498 tokens!465))))

(declare-fun lt!115002 () Unit!5064)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!164 (LexerInterface!625 List!3878 List!3879 Token!1222) Unit!5064)

(assert (=> b!276801 (= lt!115002 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!164 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!276802 () Bool)

(declare-fun res!126425 () Bool)

(declare-fun e!172112 () Bool)

(assert (=> b!276802 (=> (not res!126425) (not e!172112))))

(declare-fun rulesInvariant!591 (LexerInterface!625 List!3878) Bool)

(assert (=> b!276802 (= res!126425 (rulesInvariant!591 thiss!17480 rules!1920))))

(declare-fun b!276803 () Bool)

(declare-fun res!126442 () Bool)

(assert (=> b!276803 (=> (not res!126442) (not e!172112))))

(declare-fun isEmpty!2499 (List!3878) Bool)

(assert (=> b!276803 (= res!126442 (not (isEmpty!2499 rules!1920)))))

(declare-fun res!126427 () Bool)

(assert (=> start!29926 (=> (not res!126427) (not e!172112))))

(assert (=> start!29926 (= res!126427 ((_ is Lexer!623) thiss!17480))))

(assert (=> start!29926 e!172112))

(assert (=> start!29926 true))

(assert (=> start!29926 e!172104))

(assert (=> start!29926 (and (inv!4789 separatorToken!170) e!172110)))

(assert (=> start!29926 e!172098))

(declare-fun b!276804 () Bool)

(declare-fun res!126418 () Bool)

(assert (=> b!276804 (=> (not res!126418) (not e!172119))))

(assert (=> b!276804 (= res!126418 (isSeparator!739 (rule!1326 separatorToken!170)))))

(declare-fun b!276805 () Bool)

(declare-fun res!126423 () Bool)

(assert (=> b!276805 (=> (not res!126423) (not e!172119))))

(declare-fun sepAndNonSepRulesDisjointChars!328 (List!3878 List!3878) Bool)

(assert (=> b!276805 (= res!126423 (sepAndNonSepRulesDisjointChars!328 rules!1920 rules!1920))))

(declare-fun b!276806 () Bool)

(declare-fun e!172115 () Bool)

(declare-fun tp!103745 () Bool)

(declare-fun e!172116 () Bool)

(assert (=> b!276806 (= e!172116 (and tp!103745 (inv!4785 (tag!949 (rule!1326 (h!9266 tokens!465)))) (inv!4788 (transformation!739 (rule!1326 (h!9266 tokens!465)))) e!172115))))

(declare-fun b!276807 () Bool)

(assert (=> b!276807 (= e!172111 e!172099)))

(declare-fun res!126440 () Bool)

(assert (=> b!276807 (=> res!126440 e!172099)))

(declare-fun lt!115008 () List!3877)

(declare-fun lt!115012 () List!3877)

(assert (=> b!276807 (= res!126440 (or (not (= lt!115012 lt!115008)) (not (= lt!115008 lt!114992)) (not (= lt!115012 lt!114992))))))

(declare-fun lt!115000 () List!3879)

(declare-fun printList!301 (LexerInterface!625 List!3879) List!3877)

(assert (=> b!276807 (= lt!115008 (printList!301 thiss!17480 lt!115000))))

(declare-fun lt!114993 () BalanceConc!2608)

(declare-fun list!1595 (BalanceConc!2608) List!3877)

(assert (=> b!276807 (= lt!115012 (list!1595 lt!114993))))

(assert (=> b!276807 (= lt!115000 (Cons!3869 (h!9266 tokens!465) Nil!3869))))

(declare-datatypes ((IArray!2603 0))(
  ( (IArray!2604 (innerList!1359 List!3879)) )
))
(declare-datatypes ((Conc!1301 0))(
  ( (Node!1301 (left!3189 Conc!1301) (right!3519 Conc!1301) (csize!2832 Int) (cheight!1512 Int)) (Leaf!2010 (xs!3900 IArray!2603) (csize!2833 Int)) (Empty!1301) )
))
(declare-datatypes ((BalanceConc!2610 0))(
  ( (BalanceConc!2611 (c!52344 Conc!1301)) )
))
(declare-fun lt!114991 () BalanceConc!2610)

(declare-fun printTailRec!313 (LexerInterface!625 BalanceConc!2610 Int BalanceConc!2608) BalanceConc!2608)

(assert (=> b!276807 (= lt!114993 (printTailRec!313 thiss!17480 lt!114991 0 (BalanceConc!2609 Empty!1300)))))

(declare-fun print!350 (LexerInterface!625 BalanceConc!2610) BalanceConc!2608)

(assert (=> b!276807 (= lt!114993 (print!350 thiss!17480 lt!114991))))

(declare-fun singletonSeq!285 (Token!1222) BalanceConc!2610)

(assert (=> b!276807 (= lt!114991 (singletonSeq!285 (h!9266 tokens!465)))))

(declare-fun tp!103749 () Bool)

(declare-fun b!276808 () Bool)

(declare-fun e!172097 () Bool)

(assert (=> b!276808 (= e!172094 (and tp!103749 (inv!4785 (tag!949 (h!9265 rules!1920))) (inv!4788 (transformation!739 (h!9265 rules!1920))) e!172097))))

(declare-fun b!276809 () Bool)

(declare-fun res!126438 () Bool)

(assert (=> b!276809 (=> (not res!126438) (not e!172118))))

(assert (=> b!276809 (= res!126438 (isEmpty!2497 (_2!2399 lt!115006)))))

(declare-fun b!276810 () Bool)

(declare-fun res!126435 () Bool)

(assert (=> b!276810 (=> res!126435 e!172099)))

(declare-fun isEmpty!2500 (BalanceConc!2610) Bool)

(declare-datatypes ((tuple2!4368 0))(
  ( (tuple2!4369 (_1!2400 BalanceConc!2610) (_2!2400 BalanceConc!2608)) )
))
(declare-fun lex!417 (LexerInterface!625 List!3878 BalanceConc!2608) tuple2!4368)

(declare-fun seqFromList!845 (List!3877) BalanceConc!2608)

(assert (=> b!276810 (= res!126435 (isEmpty!2500 (_1!2400 (lex!417 thiss!17480 rules!1920 (seqFromList!845 lt!114992)))))))

(declare-fun tp!103740 () Bool)

(declare-fun b!276811 () Bool)

(assert (=> b!276811 (= e!172105 (and (inv!21 (value!25377 (h!9266 tokens!465))) e!172116 tp!103740))))

(assert (=> b!276812 (= e!172099 e!172113)))

(declare-fun res!126441 () Bool)

(assert (=> b!276812 (=> res!126441 e!172113)))

(declare-datatypes ((tuple2!4370 0))(
  ( (tuple2!4371 (_1!2401 Token!1222) (_2!2401 BalanceConc!2608)) )
))
(declare-datatypes ((Option!833 0))(
  ( (None!832) (Some!832 (v!14727 tuple2!4370)) )
))
(declare-fun isDefined!676 (Option!833) Bool)

(declare-fun maxPrefixZipperSequence!306 (LexerInterface!625 List!3878 BalanceConc!2608) Option!833)

(assert (=> b!276812 (= res!126441 (not (isDefined!676 (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))

(declare-fun lt!115009 () Unit!5064)

(declare-fun forallContained!294 (List!3879 Int Token!1222) Unit!5064)

(assert (=> b!276812 (= lt!115009 (forallContained!294 tokens!465 lambda!9418 (h!9266 tokens!465)))))

(assert (=> b!276812 (= lt!114992 (originalCharacters!782 (h!9266 tokens!465)))))

(assert (=> b!276813 (= e!172115 (and tp!103748 tp!103744))))

(declare-fun b!276814 () Bool)

(declare-fun res!126417 () Bool)

(declare-fun e!172120 () Bool)

(assert (=> b!276814 (=> (not res!126417) (not e!172120))))

(declare-fun lt!114995 () List!3877)

(assert (=> b!276814 (= res!126417 (= (list!1595 (seqFromList!845 lt!114996)) lt!114995))))

(declare-fun b!276815 () Bool)

(declare-fun res!126419 () Bool)

(assert (=> b!276815 (=> (not res!126419) (not e!172119))))

(assert (=> b!276815 (= res!126419 (rulesProduceIndividualToken!374 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!276816 () Bool)

(declare-fun res!126437 () Bool)

(assert (=> b!276816 (=> res!126437 e!172107)))

(assert (=> b!276816 (= res!126437 (not (= tokens!465 lt!115000)))))

(declare-fun b!276817 () Bool)

(assert (=> b!276817 (= e!172112 e!172119)))

(declare-fun res!126436 () Bool)

(assert (=> b!276817 (=> (not res!126436) (not e!172119))))

(declare-fun lt!114998 () BalanceConc!2610)

(declare-fun rulesProduceEachTokenIndividually!417 (LexerInterface!625 List!3878 BalanceConc!2610) Bool)

(assert (=> b!276817 (= res!126436 (rulesProduceEachTokenIndividually!417 thiss!17480 rules!1920 lt!114998))))

(declare-fun seqFromList!846 (List!3879) BalanceConc!2610)

(assert (=> b!276817 (= lt!114998 (seqFromList!846 tokens!465))))

(declare-fun b!276818 () Bool)

(assert (=> b!276818 (= e!172120 (not e!172096))))

(declare-fun res!126433 () Bool)

(assert (=> b!276818 (=> res!126433 e!172096)))

(declare-fun printWithSeparatorTokenWhenNeededRec!300 (LexerInterface!625 List!3878 BalanceConc!2610 Token!1222 Int) BalanceConc!2608)

(assert (=> b!276818 (= res!126433 (not (= lt!115011 (list!1595 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 (seqFromList!846 (t!39105 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!114989 () List!3877)

(assert (=> b!276818 (= lt!114989 lt!114988)))

(assert (=> b!276818 (= lt!114988 (++!1022 lt!114992 lt!114997))))

(assert (=> b!276818 (= lt!114989 (++!1022 lt!115001 lt!115011))))

(declare-fun lt!114999 () List!3877)

(assert (=> b!276818 (= lt!115001 (++!1022 lt!114992 lt!114999))))

(declare-fun lt!115007 () Unit!5064)

(declare-fun lemmaConcatAssociativity!440 (List!3877 List!3877 List!3877) Unit!5064)

(assert (=> b!276818 (= lt!115007 (lemmaConcatAssociativity!440 lt!114992 lt!114999 lt!115011))))

(declare-fun charsOf!384 (Token!1222) BalanceConc!2608)

(assert (=> b!276818 (= lt!114992 (list!1595 (charsOf!384 (h!9266 tokens!465))))))

(assert (=> b!276818 (= lt!114997 (++!1022 lt!114999 lt!115011))))

(declare-fun printWithSeparatorTokenWhenNeededList!308 (LexerInterface!625 List!3878 List!3879 Token!1222) List!3877)

(assert (=> b!276818 (= lt!115011 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (t!39105 tokens!465) separatorToken!170))))

(assert (=> b!276818 (= lt!114999 (list!1595 (charsOf!384 separatorToken!170)))))

(declare-fun b!276819 () Bool)

(declare-fun matchR!285 (Regex!963 List!3877) Bool)

(assert (=> b!276819 (= e!172118 (matchR!285 (regex!739 (rule!1326 (h!9266 tokens!465))) lt!114992))))

(declare-fun b!276820 () Bool)

(assert (=> b!276820 (= e!172119 e!172120)))

(declare-fun res!126421 () Bool)

(assert (=> b!276820 (=> (not res!126421) (not e!172120))))

(assert (=> b!276820 (= res!126421 (= lt!114996 lt!114995))))

(assert (=> b!276820 (= lt!114995 (list!1595 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 lt!114998 separatorToken!170 0)))))

(assert (=> b!276820 (= lt!114996 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!276821 (= e!172097 (and tp!103738 tp!103746))))

(assert (= (and start!29926 res!126427) b!276803))

(assert (= (and b!276803 res!126442) b!276802))

(assert (= (and b!276802 res!126425) b!276817))

(assert (= (and b!276817 res!126436) b!276815))

(assert (= (and b!276815 res!126419) b!276804))

(assert (= (and b!276804 res!126418) b!276786))

(assert (= (and b!276786 res!126424) b!276805))

(assert (= (and b!276805 res!126423) b!276790))

(assert (= (and b!276790 res!126428) b!276820))

(assert (= (and b!276820 res!126421) b!276814))

(assert (= (and b!276814 res!126417) b!276818))

(assert (= (and b!276818 (not res!126433)) b!276798))

(assert (= (and b!276798 res!126420) b!276795))

(assert (= (and b!276798 (not res!126432)) b!276807))

(assert (= (and b!276807 (not res!126440)) b!276792))

(assert (= (and b!276792 (not res!126431)) b!276810))

(assert (= (and b!276810 (not res!126435)) b!276812))

(assert (= (and b!276812 (not res!126441)) b!276799))

(assert (= (and b!276799 res!126434) b!276809))

(assert (= (and b!276809 res!126438) b!276819))

(assert (= (and b!276799 (not res!126429)) b!276801))

(assert (= (and b!276801 (not res!126439)) b!276793))

(assert (= (and b!276793 res!126422) b!276791))

(assert (= (and b!276801 (not res!126426)) b!276816))

(assert (= (and b!276816 (not res!126437)) b!276787))

(assert (= (and b!276787 (not res!126430)) b!276788))

(assert (= b!276808 b!276821))

(assert (= b!276800 b!276808))

(assert (= (and start!29926 ((_ is Cons!3868) rules!1920)) b!276800))

(assert (= b!276794 b!276789))

(assert (= b!276796 b!276794))

(assert (= start!29926 b!276796))

(assert (= b!276806 b!276813))

(assert (= b!276811 b!276806))

(assert (= b!276797 b!276811))

(assert (= (and start!29926 ((_ is Cons!3869) tokens!465)) b!276797))

(declare-fun m!353273 () Bool)

(assert (=> b!276801 m!353273))

(declare-fun m!353275 () Bool)

(assert (=> b!276801 m!353275))

(declare-fun m!353277 () Bool)

(assert (=> b!276801 m!353277))

(declare-fun m!353279 () Bool)

(assert (=> b!276801 m!353279))

(declare-fun m!353281 () Bool)

(assert (=> b!276801 m!353281))

(declare-fun m!353283 () Bool)

(assert (=> b!276801 m!353283))

(declare-fun m!353285 () Bool)

(assert (=> b!276801 m!353285))

(assert (=> b!276801 m!353273))

(declare-fun m!353287 () Bool)

(assert (=> b!276801 m!353287))

(declare-fun m!353289 () Bool)

(assert (=> b!276801 m!353289))

(declare-fun m!353291 () Bool)

(assert (=> b!276799 m!353291))

(declare-fun m!353293 () Bool)

(assert (=> b!276799 m!353293))

(declare-fun m!353295 () Bool)

(assert (=> b!276799 m!353295))

(declare-fun m!353297 () Bool)

(assert (=> b!276812 m!353297))

(assert (=> b!276812 m!353297))

(declare-fun m!353299 () Bool)

(assert (=> b!276812 m!353299))

(assert (=> b!276812 m!353299))

(declare-fun m!353301 () Bool)

(assert (=> b!276812 m!353301))

(declare-fun m!353303 () Bool)

(assert (=> b!276812 m!353303))

(declare-fun m!353305 () Bool)

(assert (=> b!276809 m!353305))

(declare-fun m!353307 () Bool)

(assert (=> b!276807 m!353307))

(declare-fun m!353309 () Bool)

(assert (=> b!276807 m!353309))

(declare-fun m!353311 () Bool)

(assert (=> b!276807 m!353311))

(declare-fun m!353313 () Bool)

(assert (=> b!276807 m!353313))

(declare-fun m!353315 () Bool)

(assert (=> b!276807 m!353315))

(declare-fun m!353317 () Bool)

(assert (=> b!276815 m!353317))

(declare-fun m!353319 () Bool)

(assert (=> b!276803 m!353319))

(declare-fun m!353321 () Bool)

(assert (=> b!276796 m!353321))

(declare-fun m!353323 () Bool)

(assert (=> b!276792 m!353323))

(declare-fun m!353325 () Bool)

(assert (=> b!276817 m!353325))

(declare-fun m!353327 () Bool)

(assert (=> b!276817 m!353327))

(declare-fun m!353329 () Bool)

(assert (=> b!276802 m!353329))

(declare-fun m!353331 () Bool)

(assert (=> b!276787 m!353331))

(declare-fun m!353333 () Bool)

(assert (=> b!276805 m!353333))

(declare-fun m!353335 () Bool)

(assert (=> start!29926 m!353335))

(declare-fun m!353337 () Bool)

(assert (=> b!276814 m!353337))

(assert (=> b!276814 m!353337))

(declare-fun m!353339 () Bool)

(assert (=> b!276814 m!353339))

(declare-fun m!353341 () Bool)

(assert (=> b!276794 m!353341))

(declare-fun m!353343 () Bool)

(assert (=> b!276794 m!353343))

(declare-fun m!353345 () Bool)

(assert (=> b!276810 m!353345))

(assert (=> b!276810 m!353345))

(declare-fun m!353347 () Bool)

(assert (=> b!276810 m!353347))

(declare-fun m!353349 () Bool)

(assert (=> b!276810 m!353349))

(declare-fun m!353351 () Bool)

(assert (=> b!276791 m!353351))

(declare-fun m!353353 () Bool)

(assert (=> b!276791 m!353353))

(declare-fun m!353355 () Bool)

(assert (=> b!276818 m!353355))

(declare-fun m!353357 () Bool)

(assert (=> b!276818 m!353357))

(declare-fun m!353359 () Bool)

(assert (=> b!276818 m!353359))

(declare-fun m!353361 () Bool)

(assert (=> b!276818 m!353361))

(assert (=> b!276818 m!353359))

(declare-fun m!353363 () Bool)

(assert (=> b!276818 m!353363))

(declare-fun m!353365 () Bool)

(assert (=> b!276818 m!353365))

(declare-fun m!353367 () Bool)

(assert (=> b!276818 m!353367))

(declare-fun m!353369 () Bool)

(assert (=> b!276818 m!353369))

(declare-fun m!353371 () Bool)

(assert (=> b!276818 m!353371))

(assert (=> b!276818 m!353369))

(declare-fun m!353373 () Bool)

(assert (=> b!276818 m!353373))

(declare-fun m!353375 () Bool)

(assert (=> b!276818 m!353375))

(declare-fun m!353377 () Bool)

(assert (=> b!276818 m!353377))

(assert (=> b!276818 m!353355))

(assert (=> b!276818 m!353375))

(declare-fun m!353379 () Bool)

(assert (=> b!276818 m!353379))

(declare-fun m!353381 () Bool)

(assert (=> b!276795 m!353381))

(declare-fun m!353383 () Bool)

(assert (=> b!276806 m!353383))

(declare-fun m!353385 () Bool)

(assert (=> b!276806 m!353385))

(declare-fun m!353387 () Bool)

(assert (=> b!276820 m!353387))

(assert (=> b!276820 m!353387))

(declare-fun m!353389 () Bool)

(assert (=> b!276820 m!353389))

(declare-fun m!353391 () Bool)

(assert (=> b!276820 m!353391))

(declare-fun m!353393 () Bool)

(assert (=> b!276786 m!353393))

(declare-fun m!353395 () Bool)

(assert (=> b!276808 m!353395))

(declare-fun m!353397 () Bool)

(assert (=> b!276808 m!353397))

(declare-fun m!353399 () Bool)

(assert (=> b!276819 m!353399))

(declare-fun m!353401 () Bool)

(assert (=> b!276811 m!353401))

(declare-fun m!353403 () Bool)

(assert (=> b!276797 m!353403))

(declare-fun m!353405 () Bool)

(assert (=> b!276793 m!353405))

(assert (=> b!276793 m!353273))

(check-sat b_and!22223 (not b!276817) (not b!276808) (not b_next!10225) (not b!276803) (not b_next!10233) (not b!276815) b_and!22229 (not b!276801) b_and!22221 (not b!276830) (not b!276799) (not b!276794) (not b!276797) (not b!276792) (not b_next!10227) (not b!276809) (not b!276820) (not b!276818) (not b!276810) (not b!276812) (not b!276811) (not b!276793) b_and!22227 (not b!276787) (not b!276802) (not b_next!10235) (not start!29926) (not b!276800) (not b!276791) (not b!276786) (not b!276806) b_and!22225 (not b_next!10231) (not b!276807) (not b!276814) (not b!276795) (not b!276805) (not b_next!10229) b_and!22231 (not b!276819) (not b!276796))
(check-sat b_and!22223 (not b_next!10227) b_and!22227 (not b_next!10225) (not b_next!10235) (not b_next!10233) b_and!22229 b_and!22221 b_and!22225 (not b_next!10231) (not b_next!10229) b_and!22231)
(get-model)

(declare-fun d!81029 () Bool)

(assert (=> d!81029 (= (get!1291 lt!115004) (v!14726 lt!115004))))

(assert (=> b!276791 d!81029))

(declare-fun d!81033 () Bool)

(assert (=> d!81033 (= (head!904 tokens!465) (h!9266 tokens!465))))

(assert (=> b!276791 d!81033))

(declare-fun d!81035 () Bool)

(declare-fun isEmpty!2502 (Option!833) Bool)

(assert (=> d!81035 (= (isDefined!676 (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465))))) (not (isEmpty!2502 (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))

(declare-fun bs!31060 () Bool)

(assert (= bs!31060 d!81035))

(assert (=> bs!31060 m!353299))

(declare-fun m!353503 () Bool)

(assert (=> bs!31060 m!353503))

(assert (=> b!276812 d!81035))

(declare-fun b!276914 () Bool)

(declare-fun e!172176 () Bool)

(declare-fun e!172181 () Bool)

(assert (=> b!276914 (= e!172176 e!172181)))

(declare-fun res!126508 () Bool)

(assert (=> b!276914 (=> (not res!126508) (not e!172181))))

(declare-fun lt!115073 () Option!833)

(declare-fun get!1292 (Option!833) tuple2!4370)

(declare-fun maxPrefixZipper!120 (LexerInterface!625 List!3878 List!3877) Option!832)

(assert (=> b!276914 (= res!126508 (= (_1!2401 (get!1292 lt!115073)) (_1!2399 (get!1291 (maxPrefixZipper!120 thiss!17480 rules!1920 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))))

(declare-fun b!276915 () Bool)

(declare-fun e!172177 () Option!833)

(declare-fun call!15304 () Option!833)

(assert (=> b!276915 (= e!172177 call!15304)))

(declare-fun b!276916 () Bool)

(declare-fun res!126507 () Bool)

(declare-fun e!172179 () Bool)

(assert (=> b!276916 (=> (not res!126507) (not e!172179))))

(assert (=> b!276916 (= res!126507 e!172176)))

(declare-fun res!126506 () Bool)

(assert (=> b!276916 (=> res!126506 e!172176)))

(assert (=> b!276916 (= res!126506 (not (isDefined!676 lt!115073)))))

(declare-fun b!276917 () Bool)

(declare-fun e!172178 () Bool)

(assert (=> b!276917 (= e!172179 e!172178)))

(declare-fun res!126505 () Bool)

(assert (=> b!276917 (=> res!126505 e!172178)))

(assert (=> b!276917 (= res!126505 (not (isDefined!676 lt!115073)))))

(declare-fun b!276918 () Bool)

(declare-fun e!172180 () Bool)

(assert (=> b!276918 (= e!172180 (= (list!1595 (_2!2401 (get!1292 lt!115073))) (_2!2399 (get!1291 (maxPrefix!343 thiss!17480 rules!1920 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))))

(declare-fun b!276919 () Bool)

(assert (=> b!276919 (= e!172178 e!172180)))

(declare-fun res!126504 () Bool)

(assert (=> b!276919 (=> (not res!126504) (not e!172180))))

(assert (=> b!276919 (= res!126504 (= (_1!2401 (get!1292 lt!115073)) (_1!2399 (get!1291 (maxPrefix!343 thiss!17480 rules!1920 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))))

(declare-fun b!276920 () Bool)

(assert (=> b!276920 (= e!172181 (= (list!1595 (_2!2401 (get!1292 lt!115073))) (_2!2399 (get!1291 (maxPrefixZipper!120 thiss!17480 rules!1920 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))))))

(declare-fun d!81043 () Bool)

(assert (=> d!81043 e!172179))

(declare-fun res!126509 () Bool)

(assert (=> d!81043 (=> (not res!126509) (not e!172179))))

(assert (=> d!81043 (= res!126509 (= (isDefined!676 lt!115073) (isDefined!675 (maxPrefixZipper!120 thiss!17480 rules!1920 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465))))))))))

(assert (=> d!81043 (= lt!115073 e!172177)))

(declare-fun c!52359 () Bool)

(assert (=> d!81043 (= c!52359 (and ((_ is Cons!3868) rules!1920) ((_ is Nil!3868) (t!39104 rules!1920))))))

(declare-fun lt!115077 () Unit!5064)

(declare-fun lt!115075 () Unit!5064)

(assert (=> d!81043 (= lt!115077 lt!115075)))

(declare-fun lt!115078 () List!3877)

(declare-fun lt!115072 () List!3877)

(assert (=> d!81043 (isPrefix!407 lt!115078 lt!115072)))

(declare-fun lemmaIsPrefixRefl!217 (List!3877 List!3877) Unit!5064)

(assert (=> d!81043 (= lt!115075 (lemmaIsPrefixRefl!217 lt!115078 lt!115072))))

(assert (=> d!81043 (= lt!115072 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))

(assert (=> d!81043 (= lt!115078 (list!1595 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))

(declare-fun rulesValidInductive!212 (LexerInterface!625 List!3878) Bool)

(assert (=> d!81043 (rulesValidInductive!212 thiss!17480 rules!1920)))

(assert (=> d!81043 (= (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))) lt!115073)))

(declare-fun bm!15299 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!121 (LexerInterface!625 Rule!1278 BalanceConc!2608) Option!833)

(assert (=> bm!15299 (= call!15304 (maxPrefixOneRuleZipperSequence!121 thiss!17480 (h!9265 rules!1920) (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))

(declare-fun b!276921 () Bool)

(declare-fun lt!115076 () Option!833)

(declare-fun lt!115074 () Option!833)

(assert (=> b!276921 (= e!172177 (ite (and ((_ is None!832) lt!115076) ((_ is None!832) lt!115074)) None!832 (ite ((_ is None!832) lt!115074) lt!115076 (ite ((_ is None!832) lt!115076) lt!115074 (ite (>= (size!3089 (_1!2401 (v!14727 lt!115076))) (size!3089 (_1!2401 (v!14727 lt!115074)))) lt!115076 lt!115074)))))))

(assert (=> b!276921 (= lt!115076 call!15304)))

(assert (=> b!276921 (= lt!115074 (maxPrefixZipperSequence!306 thiss!17480 (t!39104 rules!1920) (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465)))))))

(assert (= (and d!81043 c!52359) b!276915))

(assert (= (and d!81043 (not c!52359)) b!276921))

(assert (= (or b!276915 b!276921) bm!15299))

(assert (= (and d!81043 res!126509) b!276916))

(assert (= (and b!276916 (not res!126506)) b!276914))

(assert (= (and b!276914 res!126508) b!276920))

(assert (= (and b!276916 res!126507) b!276917))

(assert (= (and b!276917 (not res!126505)) b!276919))

(assert (= (and b!276919 res!126504) b!276918))

(declare-fun m!353529 () Bool)

(assert (=> b!276920 m!353529))

(declare-fun m!353531 () Bool)

(assert (=> b!276920 m!353531))

(assert (=> b!276920 m!353297))

(assert (=> b!276920 m!353529))

(assert (=> b!276920 m!353531))

(declare-fun m!353533 () Bool)

(assert (=> b!276920 m!353533))

(declare-fun m!353535 () Bool)

(assert (=> b!276920 m!353535))

(declare-fun m!353537 () Bool)

(assert (=> b!276920 m!353537))

(assert (=> b!276914 m!353535))

(assert (=> b!276914 m!353297))

(assert (=> b!276914 m!353529))

(assert (=> b!276914 m!353529))

(assert (=> b!276914 m!353531))

(assert (=> b!276914 m!353531))

(assert (=> b!276914 m!353533))

(assert (=> b!276919 m!353535))

(assert (=> b!276919 m!353297))

(assert (=> b!276919 m!353529))

(assert (=> b!276919 m!353529))

(declare-fun m!353539 () Bool)

(assert (=> b!276919 m!353539))

(assert (=> b!276919 m!353539))

(declare-fun m!353541 () Bool)

(assert (=> b!276919 m!353541))

(assert (=> b!276918 m!353297))

(assert (=> b!276918 m!353529))

(assert (=> b!276918 m!353539))

(assert (=> b!276918 m!353541))

(assert (=> b!276918 m!353535))

(assert (=> b!276918 m!353537))

(assert (=> b!276918 m!353529))

(assert (=> b!276918 m!353539))

(declare-fun m!353543 () Bool)

(assert (=> b!276917 m!353543))

(assert (=> d!81043 m!353529))

(assert (=> d!81043 m!353531))

(assert (=> d!81043 m!353297))

(assert (=> d!81043 m!353529))

(declare-fun m!353545 () Bool)

(assert (=> d!81043 m!353545))

(assert (=> d!81043 m!353531))

(declare-fun m!353547 () Bool)

(assert (=> d!81043 m!353547))

(declare-fun m!353549 () Bool)

(assert (=> d!81043 m!353549))

(declare-fun m!353551 () Bool)

(assert (=> d!81043 m!353551))

(assert (=> d!81043 m!353543))

(assert (=> bm!15299 m!353297))

(declare-fun m!353553 () Bool)

(assert (=> bm!15299 m!353553))

(assert (=> b!276916 m!353543))

(assert (=> b!276921 m!353297))

(declare-fun m!353555 () Bool)

(assert (=> b!276921 m!353555))

(assert (=> b!276812 d!81043))

(declare-fun d!81057 () Bool)

(declare-fun fromListB!335 (List!3877) BalanceConc!2608)

(assert (=> d!81057 (= (seqFromList!845 (originalCharacters!782 (h!9266 tokens!465))) (fromListB!335 (originalCharacters!782 (h!9266 tokens!465))))))

(declare-fun bs!31064 () Bool)

(assert (= bs!31064 d!81057))

(declare-fun m!353557 () Bool)

(assert (=> bs!31064 m!353557))

(assert (=> b!276812 d!81057))

(declare-fun d!81059 () Bool)

(declare-fun dynLambda!2015 (Int Token!1222) Bool)

(assert (=> d!81059 (dynLambda!2015 lambda!9418 (h!9266 tokens!465))))

(declare-fun lt!115081 () Unit!5064)

(declare-fun choose!2503 (List!3879 Int Token!1222) Unit!5064)

(assert (=> d!81059 (= lt!115081 (choose!2503 tokens!465 lambda!9418 (h!9266 tokens!465)))))

(declare-fun e!172184 () Bool)

(assert (=> d!81059 e!172184))

(declare-fun res!126512 () Bool)

(assert (=> d!81059 (=> (not res!126512) (not e!172184))))

(assert (=> d!81059 (= res!126512 (forall!984 tokens!465 lambda!9418))))

(assert (=> d!81059 (= (forallContained!294 tokens!465 lambda!9418 (h!9266 tokens!465)) lt!115081)))

(declare-fun b!276924 () Bool)

(declare-fun contains!741 (List!3879 Token!1222) Bool)

(assert (=> b!276924 (= e!172184 (contains!741 tokens!465 (h!9266 tokens!465)))))

(assert (= (and d!81059 res!126512) b!276924))

(declare-fun b_lambda!8935 () Bool)

(assert (=> (not b_lambda!8935) (not d!81059)))

(declare-fun m!353559 () Bool)

(assert (=> d!81059 m!353559))

(declare-fun m!353561 () Bool)

(assert (=> d!81059 m!353561))

(declare-fun m!353563 () Bool)

(assert (=> d!81059 m!353563))

(declare-fun m!353565 () Bool)

(assert (=> b!276924 m!353565))

(assert (=> b!276812 d!81059))

(declare-fun d!81061 () Bool)

(declare-fun lt!115105 () Bool)

(declare-fun e!172210 () Bool)

(assert (=> d!81061 (= lt!115105 e!172210)))

(declare-fun res!126522 () Bool)

(assert (=> d!81061 (=> (not res!126522) (not e!172210))))

(declare-fun list!1598 (BalanceConc!2610) List!3879)

(assert (=> d!81061 (= res!126522 (= (list!1598 (_1!2400 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 (h!9266 tokens!465)))))) (list!1598 (singletonSeq!285 (h!9266 tokens!465)))))))

(declare-fun e!172209 () Bool)

(assert (=> d!81061 (= lt!115105 e!172209)))

(declare-fun res!126523 () Bool)

(assert (=> d!81061 (=> (not res!126523) (not e!172209))))

(declare-fun lt!115106 () tuple2!4368)

(declare-fun size!3092 (BalanceConc!2610) Int)

(assert (=> d!81061 (= res!126523 (= (size!3092 (_1!2400 lt!115106)) 1))))

(assert (=> d!81061 (= lt!115106 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 (h!9266 tokens!465)))))))

(assert (=> d!81061 (not (isEmpty!2499 rules!1920))))

(assert (=> d!81061 (= (rulesProduceIndividualToken!374 thiss!17480 rules!1920 (h!9266 tokens!465)) lt!115105)))

(declare-fun b!276968 () Bool)

(declare-fun res!126521 () Bool)

(assert (=> b!276968 (=> (not res!126521) (not e!172209))))

(declare-fun apply!800 (BalanceConc!2610 Int) Token!1222)

(assert (=> b!276968 (= res!126521 (= (apply!800 (_1!2400 lt!115106) 0) (h!9266 tokens!465)))))

(declare-fun b!276969 () Bool)

(declare-fun isEmpty!2503 (BalanceConc!2608) Bool)

(assert (=> b!276969 (= e!172209 (isEmpty!2503 (_2!2400 lt!115106)))))

(declare-fun b!276970 () Bool)

(assert (=> b!276970 (= e!172210 (isEmpty!2503 (_2!2400 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 (h!9266 tokens!465)))))))))

(assert (= (and d!81061 res!126523) b!276968))

(assert (= (and b!276968 res!126521) b!276969))

(assert (= (and d!81061 res!126522) b!276970))

(declare-fun m!353605 () Bool)

(assert (=> d!81061 m!353605))

(declare-fun m!353607 () Bool)

(assert (=> d!81061 m!353607))

(declare-fun m!353609 () Bool)

(assert (=> d!81061 m!353609))

(assert (=> d!81061 m!353315))

(assert (=> d!81061 m!353315))

(declare-fun m!353611 () Bool)

(assert (=> d!81061 m!353611))

(declare-fun m!353613 () Bool)

(assert (=> d!81061 m!353613))

(assert (=> d!81061 m!353319))

(assert (=> d!81061 m!353315))

(assert (=> d!81061 m!353605))

(declare-fun m!353615 () Bool)

(assert (=> b!276968 m!353615))

(declare-fun m!353617 () Bool)

(assert (=> b!276969 m!353617))

(assert (=> b!276970 m!353315))

(assert (=> b!276970 m!353315))

(assert (=> b!276970 m!353605))

(assert (=> b!276970 m!353605))

(assert (=> b!276970 m!353607))

(declare-fun m!353619 () Bool)

(assert (=> b!276970 m!353619))

(assert (=> b!276792 d!81061))

(declare-fun d!81067 () Bool)

(declare-fun isEmpty!2504 (Option!832) Bool)

(assert (=> d!81067 (= (isDefined!675 lt!115004) (not (isEmpty!2504 lt!115004)))))

(declare-fun bs!31067 () Bool)

(assert (= bs!31067 d!81067))

(declare-fun m!353621 () Bool)

(assert (=> bs!31067 m!353621))

(assert (=> b!276793 d!81067))

(declare-fun b!276989 () Bool)

(declare-fun res!126544 () Bool)

(declare-fun e!172218 () Bool)

(assert (=> b!276989 (=> (not res!126544) (not e!172218))))

(declare-fun lt!115120 () Option!832)

(declare-fun apply!801 (TokenValueInjection!1294 BalanceConc!2608) TokenValue!761)

(assert (=> b!276989 (= res!126544 (= (value!25377 (_1!2399 (get!1291 lt!115120))) (apply!801 (transformation!739 (rule!1326 (_1!2399 (get!1291 lt!115120)))) (seqFromList!845 (originalCharacters!782 (_1!2399 (get!1291 lt!115120)))))))))

(declare-fun b!276990 () Bool)

(declare-fun res!126539 () Bool)

(assert (=> b!276990 (=> (not res!126539) (not e!172218))))

(assert (=> b!276990 (= res!126539 (matchR!285 (regex!739 (rule!1326 (_1!2399 (get!1291 lt!115120)))) (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115120))))))))

(declare-fun b!276991 () Bool)

(declare-fun res!126540 () Bool)

(assert (=> b!276991 (=> (not res!126540) (not e!172218))))

(declare-fun size!3093 (List!3877) Int)

(assert (=> b!276991 (= res!126540 (< (size!3093 (_2!2399 (get!1291 lt!115120))) (size!3093 lt!114996)))))

(declare-fun b!276992 () Bool)

(declare-fun res!126541 () Bool)

(assert (=> b!276992 (=> (not res!126541) (not e!172218))))

(assert (=> b!276992 (= res!126541 (= (++!1022 (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115120)))) (_2!2399 (get!1291 lt!115120))) lt!114996))))

(declare-fun b!276993 () Bool)

(declare-fun e!172219 () Option!832)

(declare-fun lt!115118 () Option!832)

(declare-fun lt!115121 () Option!832)

(assert (=> b!276993 (= e!172219 (ite (and ((_ is None!831) lt!115118) ((_ is None!831) lt!115121)) None!831 (ite ((_ is None!831) lt!115121) lt!115118 (ite ((_ is None!831) lt!115118) lt!115121 (ite (>= (size!3089 (_1!2399 (v!14726 lt!115118))) (size!3089 (_1!2399 (v!14726 lt!115121)))) lt!115118 lt!115121)))))))

(declare-fun call!15322 () Option!832)

(assert (=> b!276993 (= lt!115118 call!15322)))

(assert (=> b!276993 (= lt!115121 (maxPrefix!343 thiss!17480 (t!39104 rules!1920) lt!114996))))

(declare-fun b!276994 () Bool)

(declare-fun contains!742 (List!3878 Rule!1278) Bool)

(assert (=> b!276994 (= e!172218 (contains!742 rules!1920 (rule!1326 (_1!2399 (get!1291 lt!115120)))))))

(declare-fun bm!15317 () Bool)

(declare-fun maxPrefixOneRule!151 (LexerInterface!625 Rule!1278 List!3877) Option!832)

(assert (=> bm!15317 (= call!15322 (maxPrefixOneRule!151 thiss!17480 (h!9265 rules!1920) lt!114996))))

(declare-fun d!81069 () Bool)

(declare-fun e!172217 () Bool)

(assert (=> d!81069 e!172217))

(declare-fun res!126538 () Bool)

(assert (=> d!81069 (=> res!126538 e!172217)))

(assert (=> d!81069 (= res!126538 (isEmpty!2504 lt!115120))))

(assert (=> d!81069 (= lt!115120 e!172219)))

(declare-fun c!52378 () Bool)

(assert (=> d!81069 (= c!52378 (and ((_ is Cons!3868) rules!1920) ((_ is Nil!3868) (t!39104 rules!1920))))))

(declare-fun lt!115117 () Unit!5064)

(declare-fun lt!115119 () Unit!5064)

(assert (=> d!81069 (= lt!115117 lt!115119)))

(assert (=> d!81069 (isPrefix!407 lt!114996 lt!114996)))

(assert (=> d!81069 (= lt!115119 (lemmaIsPrefixRefl!217 lt!114996 lt!114996))))

(assert (=> d!81069 (rulesValidInductive!212 thiss!17480 rules!1920)))

(assert (=> d!81069 (= (maxPrefix!343 thiss!17480 rules!1920 lt!114996) lt!115120)))

(declare-fun b!276995 () Bool)

(assert (=> b!276995 (= e!172219 call!15322)))

(declare-fun b!276996 () Bool)

(assert (=> b!276996 (= e!172217 e!172218)))

(declare-fun res!126542 () Bool)

(assert (=> b!276996 (=> (not res!126542) (not e!172218))))

(assert (=> b!276996 (= res!126542 (isDefined!675 lt!115120))))

(declare-fun b!276997 () Bool)

(declare-fun res!126543 () Bool)

(assert (=> b!276997 (=> (not res!126543) (not e!172218))))

(assert (=> b!276997 (= res!126543 (= (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115120)))) (originalCharacters!782 (_1!2399 (get!1291 lt!115120)))))))

(assert (= (and d!81069 c!52378) b!276995))

(assert (= (and d!81069 (not c!52378)) b!276993))

(assert (= (or b!276995 b!276993) bm!15317))

(assert (= (and d!81069 (not res!126538)) b!276996))

(assert (= (and b!276996 res!126542) b!276997))

(assert (= (and b!276997 res!126543) b!276991))

(assert (= (and b!276991 res!126540) b!276992))

(assert (= (and b!276992 res!126541) b!276989))

(assert (= (and b!276989 res!126544) b!276990))

(assert (= (and b!276990 res!126539) b!276994))

(declare-fun m!353623 () Bool)

(assert (=> b!276993 m!353623))

(declare-fun m!353625 () Bool)

(assert (=> b!276990 m!353625))

(declare-fun m!353627 () Bool)

(assert (=> b!276990 m!353627))

(assert (=> b!276990 m!353627))

(declare-fun m!353629 () Bool)

(assert (=> b!276990 m!353629))

(assert (=> b!276990 m!353629))

(declare-fun m!353631 () Bool)

(assert (=> b!276990 m!353631))

(assert (=> b!276992 m!353625))

(assert (=> b!276992 m!353627))

(assert (=> b!276992 m!353627))

(assert (=> b!276992 m!353629))

(assert (=> b!276992 m!353629))

(declare-fun m!353633 () Bool)

(assert (=> b!276992 m!353633))

(declare-fun m!353635 () Bool)

(assert (=> d!81069 m!353635))

(declare-fun m!353637 () Bool)

(assert (=> d!81069 m!353637))

(declare-fun m!353639 () Bool)

(assert (=> d!81069 m!353639))

(assert (=> d!81069 m!353545))

(assert (=> b!276991 m!353625))

(declare-fun m!353641 () Bool)

(assert (=> b!276991 m!353641))

(declare-fun m!353643 () Bool)

(assert (=> b!276991 m!353643))

(assert (=> b!276994 m!353625))

(declare-fun m!353645 () Bool)

(assert (=> b!276994 m!353645))

(assert (=> b!276997 m!353625))

(assert (=> b!276997 m!353627))

(assert (=> b!276997 m!353627))

(assert (=> b!276997 m!353629))

(assert (=> b!276989 m!353625))

(declare-fun m!353647 () Bool)

(assert (=> b!276989 m!353647))

(assert (=> b!276989 m!353647))

(declare-fun m!353649 () Bool)

(assert (=> b!276989 m!353649))

(declare-fun m!353651 () Bool)

(assert (=> bm!15317 m!353651))

(declare-fun m!353653 () Bool)

(assert (=> b!276996 m!353653))

(assert (=> b!276793 d!81069))

(declare-fun d!81071 () Bool)

(declare-fun list!1599 (Conc!1300) List!3877)

(assert (=> d!81071 (= (list!1595 (seqFromList!845 lt!114996)) (list!1599 (c!52342 (seqFromList!845 lt!114996))))))

(declare-fun bs!31068 () Bool)

(assert (= bs!31068 d!81071))

(declare-fun m!353655 () Bool)

(assert (=> bs!31068 m!353655))

(assert (=> b!276814 d!81071))

(declare-fun d!81073 () Bool)

(assert (=> d!81073 (= (seqFromList!845 lt!114996) (fromListB!335 lt!114996))))

(declare-fun bs!31069 () Bool)

(assert (= bs!31069 d!81073))

(declare-fun m!353657 () Bool)

(assert (=> bs!31069 m!353657))

(assert (=> b!276814 d!81073))

(declare-fun d!81075 () Bool)

(declare-fun lt!115122 () Bool)

(declare-fun e!172221 () Bool)

(assert (=> d!81075 (= lt!115122 e!172221)))

(declare-fun res!126546 () Bool)

(assert (=> d!81075 (=> (not res!126546) (not e!172221))))

(assert (=> d!81075 (= res!126546 (= (list!1598 (_1!2400 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 separatorToken!170))))) (list!1598 (singletonSeq!285 separatorToken!170))))))

(declare-fun e!172220 () Bool)

(assert (=> d!81075 (= lt!115122 e!172220)))

(declare-fun res!126547 () Bool)

(assert (=> d!81075 (=> (not res!126547) (not e!172220))))

(declare-fun lt!115123 () tuple2!4368)

(assert (=> d!81075 (= res!126547 (= (size!3092 (_1!2400 lt!115123)) 1))))

(assert (=> d!81075 (= lt!115123 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 separatorToken!170))))))

(assert (=> d!81075 (not (isEmpty!2499 rules!1920))))

(assert (=> d!81075 (= (rulesProduceIndividualToken!374 thiss!17480 rules!1920 separatorToken!170) lt!115122)))

(declare-fun b!276998 () Bool)

(declare-fun res!126545 () Bool)

(assert (=> b!276998 (=> (not res!126545) (not e!172220))))

(assert (=> b!276998 (= res!126545 (= (apply!800 (_1!2400 lt!115123) 0) separatorToken!170))))

(declare-fun b!276999 () Bool)

(assert (=> b!276999 (= e!172220 (isEmpty!2503 (_2!2400 lt!115123)))))

(declare-fun b!277000 () Bool)

(assert (=> b!277000 (= e!172221 (isEmpty!2503 (_2!2400 (lex!417 thiss!17480 rules!1920 (print!350 thiss!17480 (singletonSeq!285 separatorToken!170))))))))

(assert (= (and d!81075 res!126547) b!276998))

(assert (= (and b!276998 res!126545) b!276999))

(assert (= (and d!81075 res!126546) b!277000))

(declare-fun m!353659 () Bool)

(assert (=> d!81075 m!353659))

(declare-fun m!353661 () Bool)

(assert (=> d!81075 m!353661))

(declare-fun m!353663 () Bool)

(assert (=> d!81075 m!353663))

(declare-fun m!353665 () Bool)

(assert (=> d!81075 m!353665))

(assert (=> d!81075 m!353665))

(declare-fun m!353667 () Bool)

(assert (=> d!81075 m!353667))

(declare-fun m!353669 () Bool)

(assert (=> d!81075 m!353669))

(assert (=> d!81075 m!353319))

(assert (=> d!81075 m!353665))

(assert (=> d!81075 m!353659))

(declare-fun m!353671 () Bool)

(assert (=> b!276998 m!353671))

(declare-fun m!353673 () Bool)

(assert (=> b!276999 m!353673))

(assert (=> b!277000 m!353665))

(assert (=> b!277000 m!353665))

(assert (=> b!277000 m!353659))

(assert (=> b!277000 m!353659))

(assert (=> b!277000 m!353661))

(declare-fun m!353675 () Bool)

(assert (=> b!277000 m!353675))

(assert (=> b!276815 d!81075))

(declare-fun d!81077 () Bool)

(assert (=> d!81077 (= (inv!4785 (tag!949 (rule!1326 separatorToken!170))) (= (mod (str.len (value!25376 (tag!949 (rule!1326 separatorToken!170)))) 2) 0))))

(assert (=> b!276794 d!81077))

(declare-fun d!81079 () Bool)

(declare-fun res!126552 () Bool)

(declare-fun e!172228 () Bool)

(assert (=> d!81079 (=> (not res!126552) (not e!172228))))

(declare-fun semiInverseModEq!267 (Int Int) Bool)

(assert (=> d!81079 (= res!126552 (semiInverseModEq!267 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toValue!1482 (transformation!739 (rule!1326 separatorToken!170)))))))

(assert (=> d!81079 (= (inv!4788 (transformation!739 (rule!1326 separatorToken!170))) e!172228)))

(declare-fun b!277009 () Bool)

(declare-fun equivClasses!250 (Int Int) Bool)

(assert (=> b!277009 (= e!172228 (equivClasses!250 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toValue!1482 (transformation!739 (rule!1326 separatorToken!170)))))))

(assert (= (and d!81079 res!126552) b!277009))

(declare-fun m!353677 () Bool)

(assert (=> d!81079 m!353677))

(declare-fun m!353679 () Bool)

(assert (=> b!277009 m!353679))

(assert (=> b!276794 d!81079))

(declare-fun b!277033 () Bool)

(declare-fun e!172242 () Bool)

(declare-fun lt!115154 () List!3877)

(assert (=> b!277033 (= e!172242 (or (not (= lt!115011 Nil!3867)) (= lt!115154 lt!114992)))))

(declare-fun b!277032 () Bool)

(declare-fun res!126561 () Bool)

(assert (=> b!277032 (=> (not res!126561) (not e!172242))))

(assert (=> b!277032 (= res!126561 (= (size!3093 lt!115154) (+ (size!3093 lt!114992) (size!3093 lt!115011))))))

(declare-fun d!81081 () Bool)

(assert (=> d!81081 e!172242))

(declare-fun res!126562 () Bool)

(assert (=> d!81081 (=> (not res!126562) (not e!172242))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!561 (List!3877) (InoxSet C!2848))

(assert (=> d!81081 (= res!126562 (= (content!561 lt!115154) ((_ map or) (content!561 lt!114992) (content!561 lt!115011))))))

(declare-fun e!172241 () List!3877)

(assert (=> d!81081 (= lt!115154 e!172241)))

(declare-fun c!52387 () Bool)

(assert (=> d!81081 (= c!52387 ((_ is Nil!3867) lt!114992))))

(assert (=> d!81081 (= (++!1022 lt!114992 lt!115011) lt!115154)))

(declare-fun b!277030 () Bool)

(assert (=> b!277030 (= e!172241 lt!115011)))

(declare-fun b!277031 () Bool)

(assert (=> b!277031 (= e!172241 (Cons!3867 (h!9264 lt!114992) (++!1022 (t!39103 lt!114992) lt!115011)))))

(assert (= (and d!81081 c!52387) b!277030))

(assert (= (and d!81081 (not c!52387)) b!277031))

(assert (= (and d!81081 res!126562) b!277032))

(assert (= (and b!277032 res!126561) b!277033))

(declare-fun m!353681 () Bool)

(assert (=> b!277032 m!353681))

(declare-fun m!353683 () Bool)

(assert (=> b!277032 m!353683))

(declare-fun m!353685 () Bool)

(assert (=> b!277032 m!353685))

(declare-fun m!353687 () Bool)

(assert (=> d!81081 m!353687))

(declare-fun m!353689 () Bool)

(assert (=> d!81081 m!353689))

(declare-fun m!353691 () Bool)

(assert (=> d!81081 m!353691))

(declare-fun m!353693 () Bool)

(assert (=> b!277031 m!353693))

(assert (=> b!276795 d!81081))

(declare-fun d!81083 () Bool)

(assert (=> d!81083 (= (inv!4785 (tag!949 (rule!1326 (h!9266 tokens!465)))) (= (mod (str.len (value!25376 (tag!949 (rule!1326 (h!9266 tokens!465))))) 2) 0))))

(assert (=> b!276806 d!81083))

(declare-fun d!81085 () Bool)

(declare-fun res!126563 () Bool)

(declare-fun e!172243 () Bool)

(assert (=> d!81085 (=> (not res!126563) (not e!172243))))

(assert (=> d!81085 (= res!126563 (semiInverseModEq!267 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toValue!1482 (transformation!739 (rule!1326 (h!9266 tokens!465))))))))

(assert (=> d!81085 (= (inv!4788 (transformation!739 (rule!1326 (h!9266 tokens!465)))) e!172243)))

(declare-fun b!277034 () Bool)

(assert (=> b!277034 (= e!172243 (equivClasses!250 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toValue!1482 (transformation!739 (rule!1326 (h!9266 tokens!465))))))))

(assert (= (and d!81085 res!126563) b!277034))

(declare-fun m!353695 () Bool)

(assert (=> d!81085 m!353695))

(declare-fun m!353697 () Bool)

(assert (=> b!277034 m!353697))

(assert (=> b!276806 d!81085))

(declare-fun d!81087 () Bool)

(declare-fun e!172248 () Bool)

(assert (=> d!81087 e!172248))

(declare-fun res!126566 () Bool)

(assert (=> d!81087 (=> (not res!126566) (not e!172248))))

(declare-fun lt!115157 () BalanceConc!2610)

(assert (=> d!81087 (= res!126566 (= (list!1598 lt!115157) (Cons!3869 (h!9266 tokens!465) Nil!3869)))))

(declare-fun singleton!122 (Token!1222) BalanceConc!2610)

(assert (=> d!81087 (= lt!115157 (singleton!122 (h!9266 tokens!465)))))

(assert (=> d!81087 (= (singletonSeq!285 (h!9266 tokens!465)) lt!115157)))

(declare-fun b!277041 () Bool)

(declare-fun isBalanced!363 (Conc!1301) Bool)

(assert (=> b!277041 (= e!172248 (isBalanced!363 (c!52344 lt!115157)))))

(assert (= (and d!81087 res!126566) b!277041))

(declare-fun m!353699 () Bool)

(assert (=> d!81087 m!353699))

(declare-fun m!353701 () Bool)

(assert (=> d!81087 m!353701))

(declare-fun m!353703 () Bool)

(assert (=> b!277041 m!353703))

(assert (=> b!276807 d!81087))

(declare-fun d!81089 () Bool)

(assert (=> d!81089 (= (list!1595 lt!114993) (list!1599 (c!52342 lt!114993)))))

(declare-fun bs!31070 () Bool)

(assert (= bs!31070 d!81089))

(declare-fun m!353705 () Bool)

(assert (=> bs!31070 m!353705))

(assert (=> b!276807 d!81089))

(declare-fun d!81091 () Bool)

(declare-fun lt!115201 () BalanceConc!2608)

(declare-fun printListTailRec!138 (LexerInterface!625 List!3879 List!3877) List!3877)

(declare-fun dropList!172 (BalanceConc!2610 Int) List!3879)

(assert (=> d!81091 (= (list!1595 lt!115201) (printListTailRec!138 thiss!17480 (dropList!172 lt!114991 0) (list!1595 (BalanceConc!2609 Empty!1300))))))

(declare-fun e!172280 () BalanceConc!2608)

(assert (=> d!81091 (= lt!115201 e!172280)))

(declare-fun c!52398 () Bool)

(assert (=> d!81091 (= c!52398 (>= 0 (size!3092 lt!114991)))))

(declare-fun e!172281 () Bool)

(assert (=> d!81091 e!172281))

(declare-fun res!126588 () Bool)

(assert (=> d!81091 (=> (not res!126588) (not e!172281))))

(assert (=> d!81091 (= res!126588 (>= 0 0))))

(assert (=> d!81091 (= (printTailRec!313 thiss!17480 lt!114991 0 (BalanceConc!2609 Empty!1300)) lt!115201)))

(declare-fun b!277088 () Bool)

(assert (=> b!277088 (= e!172281 (<= 0 (size!3092 lt!114991)))))

(declare-fun b!277089 () Bool)

(assert (=> b!277089 (= e!172280 (BalanceConc!2609 Empty!1300))))

(declare-fun b!277090 () Bool)

(declare-fun ++!1024 (BalanceConc!2608 BalanceConc!2608) BalanceConc!2608)

(assert (=> b!277090 (= e!172280 (printTailRec!313 thiss!17480 lt!114991 (+ 0 1) (++!1024 (BalanceConc!2609 Empty!1300) (charsOf!384 (apply!800 lt!114991 0)))))))

(declare-fun lt!115197 () List!3879)

(assert (=> b!277090 (= lt!115197 (list!1598 lt!114991))))

(declare-fun lt!115198 () Unit!5064)

(declare-fun lemmaDropApply!212 (List!3879 Int) Unit!5064)

(assert (=> b!277090 (= lt!115198 (lemmaDropApply!212 lt!115197 0))))

(declare-fun drop!225 (List!3879 Int) List!3879)

(declare-fun apply!802 (List!3879 Int) Token!1222)

(assert (=> b!277090 (= (head!904 (drop!225 lt!115197 0)) (apply!802 lt!115197 0))))

(declare-fun lt!115195 () Unit!5064)

(assert (=> b!277090 (= lt!115195 lt!115198)))

(declare-fun lt!115200 () List!3879)

(assert (=> b!277090 (= lt!115200 (list!1598 lt!114991))))

(declare-fun lt!115199 () Unit!5064)

(declare-fun lemmaDropTail!204 (List!3879 Int) Unit!5064)

(assert (=> b!277090 (= lt!115199 (lemmaDropTail!204 lt!115200 0))))

(declare-fun tail!495 (List!3879) List!3879)

(assert (=> b!277090 (= (tail!495 (drop!225 lt!115200 0)) (drop!225 lt!115200 (+ 0 1)))))

(declare-fun lt!115196 () Unit!5064)

(assert (=> b!277090 (= lt!115196 lt!115199)))

(assert (= (and d!81091 res!126588) b!277088))

(assert (= (and d!81091 c!52398) b!277089))

(assert (= (and d!81091 (not c!52398)) b!277090))

(declare-fun m!353821 () Bool)

(assert (=> d!81091 m!353821))

(declare-fun m!353823 () Bool)

(assert (=> d!81091 m!353823))

(declare-fun m!353825 () Bool)

(assert (=> d!81091 m!353825))

(assert (=> d!81091 m!353821))

(declare-fun m!353827 () Bool)

(assert (=> d!81091 m!353827))

(declare-fun m!353829 () Bool)

(assert (=> d!81091 m!353829))

(assert (=> d!81091 m!353825))

(assert (=> b!277088 m!353829))

(declare-fun m!353833 () Bool)

(assert (=> b!277090 m!353833))

(declare-fun m!353835 () Bool)

(assert (=> b!277090 m!353835))

(declare-fun m!353837 () Bool)

(assert (=> b!277090 m!353837))

(assert (=> b!277090 m!353835))

(declare-fun m!353843 () Bool)

(assert (=> b!277090 m!353843))

(declare-fun m!353845 () Bool)

(assert (=> b!277090 m!353845))

(declare-fun m!353847 () Bool)

(assert (=> b!277090 m!353847))

(declare-fun m!353849 () Bool)

(assert (=> b!277090 m!353849))

(declare-fun m!353851 () Bool)

(assert (=> b!277090 m!353851))

(declare-fun m!353853 () Bool)

(assert (=> b!277090 m!353853))

(declare-fun m!353855 () Bool)

(assert (=> b!277090 m!353855))

(declare-fun m!353857 () Bool)

(assert (=> b!277090 m!353857))

(assert (=> b!277090 m!353851))

(declare-fun m!353859 () Bool)

(assert (=> b!277090 m!353859))

(assert (=> b!277090 m!353837))

(assert (=> b!277090 m!353847))

(assert (=> b!277090 m!353843))

(declare-fun m!353861 () Bool)

(assert (=> b!277090 m!353861))

(assert (=> b!276807 d!81091))

(declare-fun d!81113 () Bool)

(declare-fun c!52401 () Bool)

(assert (=> d!81113 (= c!52401 ((_ is Cons!3869) lt!115000))))

(declare-fun e!172285 () List!3877)

(assert (=> d!81113 (= (printList!301 thiss!17480 lt!115000) e!172285)))

(declare-fun b!277097 () Bool)

(assert (=> b!277097 (= e!172285 (++!1022 (list!1595 (charsOf!384 (h!9266 lt!115000))) (printList!301 thiss!17480 (t!39105 lt!115000))))))

(declare-fun b!277098 () Bool)

(assert (=> b!277098 (= e!172285 Nil!3867)))

(assert (= (and d!81113 c!52401) b!277097))

(assert (= (and d!81113 (not c!52401)) b!277098))

(declare-fun m!353863 () Bool)

(assert (=> b!277097 m!353863))

(assert (=> b!277097 m!353863))

(declare-fun m!353865 () Bool)

(assert (=> b!277097 m!353865))

(declare-fun m!353867 () Bool)

(assert (=> b!277097 m!353867))

(assert (=> b!277097 m!353865))

(assert (=> b!277097 m!353867))

(declare-fun m!353869 () Bool)

(assert (=> b!277097 m!353869))

(assert (=> b!276807 d!81113))

(declare-fun d!81115 () Bool)

(declare-fun lt!115204 () BalanceConc!2608)

(assert (=> d!81115 (= (list!1595 lt!115204) (printList!301 thiss!17480 (list!1598 lt!114991)))))

(assert (=> d!81115 (= lt!115204 (printTailRec!313 thiss!17480 lt!114991 0 (BalanceConc!2609 Empty!1300)))))

(assert (=> d!81115 (= (print!350 thiss!17480 lt!114991) lt!115204)))

(declare-fun bs!31080 () Bool)

(assert (= bs!31080 d!81115))

(declare-fun m!353871 () Bool)

(assert (=> bs!31080 m!353871))

(assert (=> bs!31080 m!353855))

(assert (=> bs!31080 m!353855))

(declare-fun m!353873 () Bool)

(assert (=> bs!31080 m!353873))

(assert (=> bs!31080 m!353309))

(assert (=> b!276807 d!81115))

(declare-fun d!81117 () Bool)

(declare-fun res!126595 () Bool)

(declare-fun e!172290 () Bool)

(assert (=> d!81117 (=> res!126595 e!172290)))

(assert (=> d!81117 (= res!126595 ((_ is Nil!3869) tokens!465))))

(assert (=> d!81117 (= (forall!984 tokens!465 lambda!9417) e!172290)))

(declare-fun b!277103 () Bool)

(declare-fun e!172291 () Bool)

(assert (=> b!277103 (= e!172290 e!172291)))

(declare-fun res!126596 () Bool)

(assert (=> b!277103 (=> (not res!126596) (not e!172291))))

(assert (=> b!277103 (= res!126596 (dynLambda!2015 lambda!9417 (h!9266 tokens!465)))))

(declare-fun b!277104 () Bool)

(assert (=> b!277104 (= e!172291 (forall!984 (t!39105 tokens!465) lambda!9417))))

(assert (= (and d!81117 (not res!126595)) b!277103))

(assert (= (and b!277103 res!126596) b!277104))

(declare-fun b_lambda!8947 () Bool)

(assert (=> (not b_lambda!8947) (not b!277103)))

(declare-fun m!353875 () Bool)

(assert (=> b!277103 m!353875))

(declare-fun m!353877 () Bool)

(assert (=> b!277104 m!353877))

(assert (=> b!276786 d!81117))

(declare-fun d!81119 () Bool)

(assert (=> d!81119 (= (isEmpty!2497 lt!115011) ((_ is Nil!3867) lt!115011))))

(assert (=> b!276787 d!81119))

(declare-fun d!81121 () Bool)

(assert (=> d!81121 (= (inv!4785 (tag!949 (h!9265 rules!1920))) (= (mod (str.len (value!25376 (tag!949 (h!9265 rules!1920)))) 2) 0))))

(assert (=> b!276808 d!81121))

(declare-fun d!81123 () Bool)

(declare-fun res!126597 () Bool)

(declare-fun e!172292 () Bool)

(assert (=> d!81123 (=> (not res!126597) (not e!172292))))

(assert (=> d!81123 (= res!126597 (semiInverseModEq!267 (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toValue!1482 (transformation!739 (h!9265 rules!1920)))))))

(assert (=> d!81123 (= (inv!4788 (transformation!739 (h!9265 rules!1920))) e!172292)))

(declare-fun b!277105 () Bool)

(assert (=> b!277105 (= e!172292 (equivClasses!250 (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toValue!1482 (transformation!739 (h!9265 rules!1920)))))))

(assert (= (and d!81123 res!126597) b!277105))

(declare-fun m!353879 () Bool)

(assert (=> d!81123 m!353879))

(declare-fun m!353881 () Bool)

(assert (=> b!277105 m!353881))

(assert (=> b!276808 d!81123))

(declare-fun d!81125 () Bool)

(assert (=> d!81125 (= (isEmpty!2497 (_2!2399 lt!115006)) ((_ is Nil!3867) (_2!2399 lt!115006)))))

(assert (=> b!276809 d!81125))

(declare-fun lt!115207 () Bool)

(declare-fun d!81127 () Bool)

(assert (=> d!81127 (= lt!115207 (isEmpty!2498 (list!1598 (_1!2400 (lex!417 thiss!17480 rules!1920 (seqFromList!845 lt!114992))))))))

(declare-fun isEmpty!2505 (Conc!1301) Bool)

(assert (=> d!81127 (= lt!115207 (isEmpty!2505 (c!52344 (_1!2400 (lex!417 thiss!17480 rules!1920 (seqFromList!845 lt!114992))))))))

(assert (=> d!81127 (= (isEmpty!2500 (_1!2400 (lex!417 thiss!17480 rules!1920 (seqFromList!845 lt!114992)))) lt!115207)))

(declare-fun bs!31081 () Bool)

(assert (= bs!31081 d!81127))

(declare-fun m!353883 () Bool)

(assert (=> bs!31081 m!353883))

(assert (=> bs!31081 m!353883))

(declare-fun m!353885 () Bool)

(assert (=> bs!31081 m!353885))

(declare-fun m!353887 () Bool)

(assert (=> bs!31081 m!353887))

(assert (=> b!276810 d!81127))

(declare-fun b!277131 () Bool)

(declare-fun res!126615 () Bool)

(declare-fun e!172309 () Bool)

(assert (=> b!277131 (=> (not res!126615) (not e!172309))))

(declare-fun lt!115218 () tuple2!4368)

(declare-datatypes ((tuple2!4372 0))(
  ( (tuple2!4373 (_1!2402 List!3879) (_2!2402 List!3877)) )
))
(declare-fun lexList!216 (LexerInterface!625 List!3878 List!3877) tuple2!4372)

(assert (=> b!277131 (= res!126615 (= (list!1598 (_1!2400 lt!115218)) (_1!2402 (lexList!216 thiss!17480 rules!1920 (list!1595 (seqFromList!845 lt!114992))))))))

(declare-fun b!277132 () Bool)

(declare-fun e!172310 () Bool)

(declare-fun e!172308 () Bool)

(assert (=> b!277132 (= e!172310 e!172308)))

(declare-fun res!126614 () Bool)

(declare-fun size!3094 (BalanceConc!2608) Int)

(assert (=> b!277132 (= res!126614 (< (size!3094 (_2!2400 lt!115218)) (size!3094 (seqFromList!845 lt!114992))))))

(assert (=> b!277132 (=> (not res!126614) (not e!172308))))

(declare-fun b!277134 () Bool)

(assert (=> b!277134 (= e!172308 (not (isEmpty!2500 (_1!2400 lt!115218))))))

(declare-fun b!277135 () Bool)

(assert (=> b!277135 (= e!172310 (= (_2!2400 lt!115218) (seqFromList!845 lt!114992)))))

(declare-fun b!277133 () Bool)

(assert (=> b!277133 (= e!172309 (= (list!1595 (_2!2400 lt!115218)) (_2!2402 (lexList!216 thiss!17480 rules!1920 (list!1595 (seqFromList!845 lt!114992))))))))

(declare-fun d!81129 () Bool)

(assert (=> d!81129 e!172309))

(declare-fun res!126616 () Bool)

(assert (=> d!81129 (=> (not res!126616) (not e!172309))))

(assert (=> d!81129 (= res!126616 e!172310)))

(declare-fun c!52405 () Bool)

(assert (=> d!81129 (= c!52405 (> (size!3092 (_1!2400 lt!115218)) 0))))

(declare-fun lexTailRecV2!183 (LexerInterface!625 List!3878 BalanceConc!2608 BalanceConc!2608 BalanceConc!2608 BalanceConc!2610) tuple2!4368)

(assert (=> d!81129 (= lt!115218 (lexTailRecV2!183 thiss!17480 rules!1920 (seqFromList!845 lt!114992) (BalanceConc!2609 Empty!1300) (seqFromList!845 lt!114992) (BalanceConc!2611 Empty!1301)))))

(assert (=> d!81129 (= (lex!417 thiss!17480 rules!1920 (seqFromList!845 lt!114992)) lt!115218)))

(assert (= (and d!81129 c!52405) b!277132))

(assert (= (and d!81129 (not c!52405)) b!277135))

(assert (= (and b!277132 res!126614) b!277134))

(assert (= (and d!81129 res!126616) b!277131))

(assert (= (and b!277131 res!126615) b!277133))

(declare-fun m!353913 () Bool)

(assert (=> b!277134 m!353913))

(declare-fun m!353917 () Bool)

(assert (=> d!81129 m!353917))

(assert (=> d!81129 m!353345))

(assert (=> d!81129 m!353345))

(declare-fun m!353921 () Bool)

(assert (=> d!81129 m!353921))

(declare-fun m!353923 () Bool)

(assert (=> b!277133 m!353923))

(assert (=> b!277133 m!353345))

(declare-fun m!353925 () Bool)

(assert (=> b!277133 m!353925))

(assert (=> b!277133 m!353925))

(declare-fun m!353929 () Bool)

(assert (=> b!277133 m!353929))

(declare-fun m!353933 () Bool)

(assert (=> b!277132 m!353933))

(assert (=> b!277132 m!353345))

(declare-fun m!353935 () Bool)

(assert (=> b!277132 m!353935))

(declare-fun m!353937 () Bool)

(assert (=> b!277131 m!353937))

(assert (=> b!277131 m!353345))

(assert (=> b!277131 m!353925))

(assert (=> b!277131 m!353925))

(assert (=> b!277131 m!353929))

(assert (=> b!276810 d!81129))

(declare-fun d!81139 () Bool)

(assert (=> d!81139 (= (seqFromList!845 lt!114992) (fromListB!335 lt!114992))))

(declare-fun bs!31089 () Bool)

(assert (= bs!31089 d!81139))

(declare-fun m!353943 () Bool)

(assert (=> bs!31089 m!353943))

(assert (=> b!276810 d!81139))

(declare-fun b!277146 () Bool)

(declare-fun e!172318 () Bool)

(declare-fun inv!17 (TokenValue!761) Bool)

(assert (=> b!277146 (= e!172318 (inv!17 (value!25377 (h!9266 tokens!465))))))

(declare-fun b!277147 () Bool)

(declare-fun e!172317 () Bool)

(assert (=> b!277147 (= e!172317 e!172318)))

(declare-fun c!52411 () Bool)

(assert (=> b!277147 (= c!52411 ((_ is IntegerValue!2284) (value!25377 (h!9266 tokens!465))))))

(declare-fun b!277148 () Bool)

(declare-fun res!126619 () Bool)

(declare-fun e!172319 () Bool)

(assert (=> b!277148 (=> res!126619 e!172319)))

(assert (=> b!277148 (= res!126619 (not ((_ is IntegerValue!2285) (value!25377 (h!9266 tokens!465)))))))

(assert (=> b!277148 (= e!172318 e!172319)))

(declare-fun b!277149 () Bool)

(declare-fun inv!15 (TokenValue!761) Bool)

(assert (=> b!277149 (= e!172319 (inv!15 (value!25377 (h!9266 tokens!465))))))

(declare-fun d!81141 () Bool)

(declare-fun c!52410 () Bool)

(assert (=> d!81141 (= c!52410 ((_ is IntegerValue!2283) (value!25377 (h!9266 tokens!465))))))

(assert (=> d!81141 (= (inv!21 (value!25377 (h!9266 tokens!465))) e!172317)))

(declare-fun b!277150 () Bool)

(declare-fun inv!16 (TokenValue!761) Bool)

(assert (=> b!277150 (= e!172317 (inv!16 (value!25377 (h!9266 tokens!465))))))

(assert (= (and d!81141 c!52410) b!277150))

(assert (= (and d!81141 (not c!52410)) b!277147))

(assert (= (and b!277147 c!52411) b!277146))

(assert (= (and b!277147 (not c!52411)) b!277148))

(assert (= (and b!277148 (not res!126619)) b!277149))

(declare-fun m!353951 () Bool)

(assert (=> b!277146 m!353951))

(declare-fun m!353953 () Bool)

(assert (=> b!277149 m!353953))

(declare-fun m!353955 () Bool)

(assert (=> b!277150 m!353955))

(assert (=> b!276811 d!81141))

(declare-fun b!277151 () Bool)

(declare-fun res!126626 () Bool)

(declare-fun e!172321 () Bool)

(assert (=> b!277151 (=> (not res!126626) (not e!172321))))

(declare-fun lt!115222 () Option!832)

(assert (=> b!277151 (= res!126626 (= (value!25377 (_1!2399 (get!1291 lt!115222))) (apply!801 (transformation!739 (rule!1326 (_1!2399 (get!1291 lt!115222)))) (seqFromList!845 (originalCharacters!782 (_1!2399 (get!1291 lt!115222)))))))))

(declare-fun b!277152 () Bool)

(declare-fun res!126621 () Bool)

(assert (=> b!277152 (=> (not res!126621) (not e!172321))))

(assert (=> b!277152 (= res!126621 (matchR!285 (regex!739 (rule!1326 (_1!2399 (get!1291 lt!115222)))) (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115222))))))))

(declare-fun b!277153 () Bool)

(declare-fun res!126622 () Bool)

(assert (=> b!277153 (=> (not res!126622) (not e!172321))))

(assert (=> b!277153 (= res!126622 (< (size!3093 (_2!2399 (get!1291 lt!115222))) (size!3093 lt!114997)))))

(declare-fun b!277154 () Bool)

(declare-fun res!126623 () Bool)

(assert (=> b!277154 (=> (not res!126623) (not e!172321))))

(assert (=> b!277154 (= res!126623 (= (++!1022 (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115222)))) (_2!2399 (get!1291 lt!115222))) lt!114997))))

(declare-fun b!277155 () Bool)

(declare-fun e!172322 () Option!832)

(declare-fun lt!115220 () Option!832)

(declare-fun lt!115223 () Option!832)

(assert (=> b!277155 (= e!172322 (ite (and ((_ is None!831) lt!115220) ((_ is None!831) lt!115223)) None!831 (ite ((_ is None!831) lt!115223) lt!115220 (ite ((_ is None!831) lt!115220) lt!115223 (ite (>= (size!3089 (_1!2399 (v!14726 lt!115220))) (size!3089 (_1!2399 (v!14726 lt!115223)))) lt!115220 lt!115223)))))))

(declare-fun call!15339 () Option!832)

(assert (=> b!277155 (= lt!115220 call!15339)))

(assert (=> b!277155 (= lt!115223 (maxPrefix!343 thiss!17480 (t!39104 rules!1920) lt!114997))))

(declare-fun b!277156 () Bool)

(assert (=> b!277156 (= e!172321 (contains!742 rules!1920 (rule!1326 (_1!2399 (get!1291 lt!115222)))))))

(declare-fun bm!15334 () Bool)

(assert (=> bm!15334 (= call!15339 (maxPrefixOneRule!151 thiss!17480 (h!9265 rules!1920) lt!114997))))

(declare-fun d!81145 () Bool)

(declare-fun e!172320 () Bool)

(assert (=> d!81145 e!172320))

(declare-fun res!126620 () Bool)

(assert (=> d!81145 (=> res!126620 e!172320)))

(assert (=> d!81145 (= res!126620 (isEmpty!2504 lt!115222))))

(assert (=> d!81145 (= lt!115222 e!172322)))

(declare-fun c!52412 () Bool)

(assert (=> d!81145 (= c!52412 (and ((_ is Cons!3868) rules!1920) ((_ is Nil!3868) (t!39104 rules!1920))))))

(declare-fun lt!115219 () Unit!5064)

(declare-fun lt!115221 () Unit!5064)

(assert (=> d!81145 (= lt!115219 lt!115221)))

(assert (=> d!81145 (isPrefix!407 lt!114997 lt!114997)))

(assert (=> d!81145 (= lt!115221 (lemmaIsPrefixRefl!217 lt!114997 lt!114997))))

(assert (=> d!81145 (rulesValidInductive!212 thiss!17480 rules!1920)))

(assert (=> d!81145 (= (maxPrefix!343 thiss!17480 rules!1920 lt!114997) lt!115222)))

(declare-fun b!277157 () Bool)

(assert (=> b!277157 (= e!172322 call!15339)))

(declare-fun b!277158 () Bool)

(assert (=> b!277158 (= e!172320 e!172321)))

(declare-fun res!126624 () Bool)

(assert (=> b!277158 (=> (not res!126624) (not e!172321))))

(assert (=> b!277158 (= res!126624 (isDefined!675 lt!115222))))

(declare-fun b!277159 () Bool)

(declare-fun res!126625 () Bool)

(assert (=> b!277159 (=> (not res!126625) (not e!172321))))

(assert (=> b!277159 (= res!126625 (= (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115222)))) (originalCharacters!782 (_1!2399 (get!1291 lt!115222)))))))

(assert (= (and d!81145 c!52412) b!277157))

(assert (= (and d!81145 (not c!52412)) b!277155))

(assert (= (or b!277157 b!277155) bm!15334))

(assert (= (and d!81145 (not res!126620)) b!277158))

(assert (= (and b!277158 res!126624) b!277159))

(assert (= (and b!277159 res!126625) b!277153))

(assert (= (and b!277153 res!126622) b!277154))

(assert (= (and b!277154 res!126623) b!277151))

(assert (= (and b!277151 res!126626) b!277152))

(assert (= (and b!277152 res!126621) b!277156))

(declare-fun m!353957 () Bool)

(assert (=> b!277155 m!353957))

(declare-fun m!353959 () Bool)

(assert (=> b!277152 m!353959))

(declare-fun m!353961 () Bool)

(assert (=> b!277152 m!353961))

(assert (=> b!277152 m!353961))

(declare-fun m!353963 () Bool)

(assert (=> b!277152 m!353963))

(assert (=> b!277152 m!353963))

(declare-fun m!353965 () Bool)

(assert (=> b!277152 m!353965))

(assert (=> b!277154 m!353959))

(assert (=> b!277154 m!353961))

(assert (=> b!277154 m!353961))

(assert (=> b!277154 m!353963))

(assert (=> b!277154 m!353963))

(declare-fun m!353967 () Bool)

(assert (=> b!277154 m!353967))

(declare-fun m!353969 () Bool)

(assert (=> d!81145 m!353969))

(declare-fun m!353971 () Bool)

(assert (=> d!81145 m!353971))

(declare-fun m!353973 () Bool)

(assert (=> d!81145 m!353973))

(assert (=> d!81145 m!353545))

(assert (=> b!277153 m!353959))

(declare-fun m!353975 () Bool)

(assert (=> b!277153 m!353975))

(declare-fun m!353977 () Bool)

(assert (=> b!277153 m!353977))

(assert (=> b!277156 m!353959))

(declare-fun m!353979 () Bool)

(assert (=> b!277156 m!353979))

(assert (=> b!277159 m!353959))

(assert (=> b!277159 m!353961))

(assert (=> b!277159 m!353961))

(assert (=> b!277159 m!353963))

(assert (=> b!277151 m!353959))

(declare-fun m!353981 () Bool)

(assert (=> b!277151 m!353981))

(assert (=> b!277151 m!353981))

(declare-fun m!353983 () Bool)

(assert (=> b!277151 m!353983))

(declare-fun m!353985 () Bool)

(assert (=> bm!15334 m!353985))

(declare-fun m!353987 () Bool)

(assert (=> b!277158 m!353987))

(assert (=> b!276801 d!81145))

(declare-fun d!81147 () Bool)

(assert (=> d!81147 (= (get!1291 (maxPrefix!343 thiss!17480 rules!1920 lt!114996)) (v!14726 (maxPrefix!343 thiss!17480 rules!1920 lt!114996)))))

(assert (=> b!276801 d!81147))

(declare-fun d!81149 () Bool)

(assert (=> d!81149 (= (isEmpty!2498 (t!39105 tokens!465)) ((_ is Nil!3869) (t!39105 tokens!465)))))

(assert (=> b!276801 d!81149))

(declare-fun b!277210 () Bool)

(declare-fun e!172350 () Bool)

(declare-fun e!172352 () Bool)

(assert (=> b!277210 (= e!172350 e!172352)))

(declare-fun res!126662 () Bool)

(assert (=> b!277210 (=> (not res!126662) (not e!172352))))

(assert (=> b!277210 (= res!126662 (not ((_ is Nil!3867) lt!114988)))))

(declare-fun b!277213 () Bool)

(declare-fun e!172351 () Bool)

(assert (=> b!277213 (= e!172351 (>= (size!3093 lt!114988) (size!3093 lt!114992)))))

(declare-fun b!277211 () Bool)

(declare-fun res!126660 () Bool)

(assert (=> b!277211 (=> (not res!126660) (not e!172352))))

(declare-fun head!906 (List!3877) C!2848)

(assert (=> b!277211 (= res!126660 (= (head!906 lt!114992) (head!906 lt!114988)))))

(declare-fun d!81151 () Bool)

(assert (=> d!81151 e!172351))

(declare-fun res!126659 () Bool)

(assert (=> d!81151 (=> res!126659 e!172351)))

(declare-fun lt!115229 () Bool)

(assert (=> d!81151 (= res!126659 (not lt!115229))))

(assert (=> d!81151 (= lt!115229 e!172350)))

(declare-fun res!126661 () Bool)

(assert (=> d!81151 (=> res!126661 e!172350)))

(assert (=> d!81151 (= res!126661 ((_ is Nil!3867) lt!114992))))

(assert (=> d!81151 (= (isPrefix!407 lt!114992 lt!114988) lt!115229)))

(declare-fun b!277212 () Bool)

(declare-fun tail!496 (List!3877) List!3877)

(assert (=> b!277212 (= e!172352 (isPrefix!407 (tail!496 lt!114992) (tail!496 lt!114988)))))

(assert (= (and d!81151 (not res!126661)) b!277210))

(assert (= (and b!277210 res!126662) b!277211))

(assert (= (and b!277211 res!126660) b!277212))

(assert (= (and d!81151 (not res!126659)) b!277213))

(declare-fun m!354003 () Bool)

(assert (=> b!277213 m!354003))

(assert (=> b!277213 m!353683))

(declare-fun m!354007 () Bool)

(assert (=> b!277211 m!354007))

(declare-fun m!354009 () Bool)

(assert (=> b!277211 m!354009))

(declare-fun m!354011 () Bool)

(assert (=> b!277212 m!354011))

(declare-fun m!354013 () Bool)

(assert (=> b!277212 m!354013))

(assert (=> b!277212 m!354011))

(assert (=> b!277212 m!354013))

(declare-fun m!354015 () Bool)

(assert (=> b!277212 m!354015))

(assert (=> b!276801 d!81151))

(declare-fun d!81155 () Bool)

(assert (=> d!81155 (= (isEmpty!2498 tokens!465) ((_ is Nil!3869) tokens!465))))

(assert (=> b!276801 d!81155))

(declare-fun d!81159 () Bool)

(assert (=> d!81159 (isPrefix!407 lt!114992 (++!1022 lt!114992 lt!114997))))

(declare-fun lt!115232 () Unit!5064)

(declare-fun choose!2504 (List!3877 List!3877) Unit!5064)

(assert (=> d!81159 (= lt!115232 (choose!2504 lt!114992 lt!114997))))

(assert (=> d!81159 (= (lemmaConcatTwoListThenFirstIsPrefix!302 lt!114992 lt!114997) lt!115232)))

(declare-fun bs!31090 () Bool)

(assert (= bs!31090 d!81159))

(assert (=> bs!31090 m!353365))

(assert (=> bs!31090 m!353365))

(declare-fun m!354021 () Bool)

(assert (=> bs!31090 m!354021))

(declare-fun m!354023 () Bool)

(assert (=> bs!31090 m!354023))

(assert (=> b!276801 d!81159))

(declare-fun d!81165 () Bool)

(declare-fun e!172386 () Bool)

(assert (=> d!81165 e!172386))

(declare-fun res!126675 () Bool)

(assert (=> d!81165 (=> res!126675 e!172386)))

(assert (=> d!81165 (= res!126675 (isEmpty!2498 tokens!465))))

(declare-fun lt!115258 () Unit!5064)

(declare-fun choose!2505 (LexerInterface!625 List!3878 List!3879 Token!1222) Unit!5064)

(assert (=> d!81165 (= lt!115258 (choose!2505 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!81165 (not (isEmpty!2499 rules!1920))))

(assert (=> d!81165 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!164 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!115258)))

(declare-fun b!277261 () Bool)

(declare-fun e!172385 () Bool)

(assert (=> b!277261 (= e!172386 e!172385)))

(declare-fun res!126674 () Bool)

(assert (=> b!277261 (=> (not res!126674) (not e!172385))))

(assert (=> b!277261 (= res!126674 (isDefined!675 (maxPrefix!343 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!277262 () Bool)

(assert (=> b!277262 (= e!172385 (= (_1!2399 (get!1291 (maxPrefix!343 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!904 tokens!465)))))

(assert (= (and d!81165 (not res!126675)) b!277261))

(assert (= (and b!277261 res!126674) b!277262))

(assert (=> d!81165 m!353275))

(declare-fun m!354115 () Bool)

(assert (=> d!81165 m!354115))

(assert (=> d!81165 m!353319))

(assert (=> b!277261 m!353391))

(assert (=> b!277261 m!353391))

(declare-fun m!354117 () Bool)

(assert (=> b!277261 m!354117))

(assert (=> b!277261 m!354117))

(declare-fun m!354119 () Bool)

(assert (=> b!277261 m!354119))

(assert (=> b!277262 m!353391))

(assert (=> b!277262 m!353391))

(assert (=> b!277262 m!354117))

(assert (=> b!277262 m!354117))

(declare-fun m!354121 () Bool)

(assert (=> b!277262 m!354121))

(assert (=> b!277262 m!353353))

(assert (=> b!276801 d!81165))

(assert (=> b!276801 d!81069))

(declare-fun d!81179 () Bool)

(assert (=> d!81179 (= lt!114997 (_2!2399 lt!115003))))

(declare-fun lt!115261 () Unit!5064)

(declare-fun choose!2506 (List!3877 List!3877 List!3877 List!3877 List!3877) Unit!5064)

(assert (=> d!81179 (= lt!115261 (choose!2506 lt!114992 lt!114997 lt!114992 (_2!2399 lt!115003) lt!114996))))

(assert (=> d!81179 (isPrefix!407 lt!114992 lt!114996)))

(assert (=> d!81179 (= (lemmaSamePrefixThenSameSuffix!208 lt!114992 lt!114997 lt!114992 (_2!2399 lt!115003) lt!114996) lt!115261)))

(declare-fun bs!31114 () Bool)

(assert (= bs!31114 d!81179))

(declare-fun m!354123 () Bool)

(assert (=> bs!31114 m!354123))

(declare-fun m!354125 () Bool)

(assert (=> bs!31114 m!354125))

(assert (=> b!276801 d!81179))

(declare-fun d!81181 () Bool)

(declare-fun res!126680 () Bool)

(declare-fun e!172389 () Bool)

(assert (=> d!81181 (=> (not res!126680) (not e!172389))))

(assert (=> d!81181 (= res!126680 (not (isEmpty!2497 (originalCharacters!782 separatorToken!170))))))

(assert (=> d!81181 (= (inv!4789 separatorToken!170) e!172389)))

(declare-fun b!277267 () Bool)

(declare-fun res!126681 () Bool)

(assert (=> b!277267 (=> (not res!126681) (not e!172389))))

(declare-fun dynLambda!2017 (Int TokenValue!761) BalanceConc!2608)

(assert (=> b!277267 (= res!126681 (= (originalCharacters!782 separatorToken!170) (list!1595 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (value!25377 separatorToken!170)))))))

(declare-fun b!277268 () Bool)

(assert (=> b!277268 (= e!172389 (= (size!3089 separatorToken!170) (size!3093 (originalCharacters!782 separatorToken!170))))))

(assert (= (and d!81181 res!126680) b!277267))

(assert (= (and b!277267 res!126681) b!277268))

(declare-fun b_lambda!8949 () Bool)

(assert (=> (not b_lambda!8949) (not b!277267)))

(declare-fun t!39132 () Bool)

(declare-fun tb!15833 () Bool)

(assert (=> (and b!276789 (= (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170)))) t!39132) tb!15833))

(declare-fun b!277273 () Bool)

(declare-fun e!172392 () Bool)

(declare-fun tp!103756 () Bool)

(declare-fun inv!4792 (Conc!1300) Bool)

(assert (=> b!277273 (= e!172392 (and (inv!4792 (c!52342 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (value!25377 separatorToken!170)))) tp!103756))))

(declare-fun result!19526 () Bool)

(declare-fun inv!4793 (BalanceConc!2608) Bool)

(assert (=> tb!15833 (= result!19526 (and (inv!4793 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (value!25377 separatorToken!170))) e!172392))))

(assert (= tb!15833 b!277273))

(declare-fun m!354127 () Bool)

(assert (=> b!277273 m!354127))

(declare-fun m!354129 () Bool)

(assert (=> tb!15833 m!354129))

(assert (=> b!277267 t!39132))

(declare-fun b_and!22257 () Bool)

(assert (= b_and!22223 (and (=> t!39132 result!19526) b_and!22257)))

(declare-fun tb!15835 () Bool)

(declare-fun t!39134 () Bool)

(assert (=> (and b!276821 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170)))) t!39134) tb!15835))

(declare-fun result!19530 () Bool)

(assert (= result!19530 result!19526))

(assert (=> b!277267 t!39134))

(declare-fun b_and!22259 () Bool)

(assert (= b_and!22227 (and (=> t!39134 result!19530) b_and!22259)))

(declare-fun t!39136 () Bool)

(declare-fun tb!15837 () Bool)

(assert (=> (and b!276813 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170)))) t!39136) tb!15837))

(declare-fun result!19532 () Bool)

(assert (= result!19532 result!19526))

(assert (=> b!277267 t!39136))

(declare-fun b_and!22261 () Bool)

(assert (= b_and!22231 (and (=> t!39136 result!19532) b_and!22261)))

(declare-fun m!354131 () Bool)

(assert (=> d!81181 m!354131))

(declare-fun m!354133 () Bool)

(assert (=> b!277267 m!354133))

(assert (=> b!277267 m!354133))

(declare-fun m!354135 () Bool)

(assert (=> b!277267 m!354135))

(declare-fun m!354137 () Bool)

(assert (=> b!277268 m!354137))

(assert (=> start!29926 d!81181))

(declare-fun d!81183 () Bool)

(declare-fun res!126688 () Bool)

(declare-fun e!172399 () Bool)

(assert (=> d!81183 (=> (not res!126688) (not e!172399))))

(declare-fun rulesValid!232 (LexerInterface!625 List!3878) Bool)

(assert (=> d!81183 (= res!126688 (rulesValid!232 thiss!17480 rules!1920))))

(assert (=> d!81183 (= (rulesInvariant!591 thiss!17480 rules!1920) e!172399)))

(declare-fun b!277280 () Bool)

(declare-datatypes ((List!3881 0))(
  ( (Nil!3871) (Cons!3871 (h!9268 String!4885) (t!39171 List!3881)) )
))
(declare-fun noDuplicateTag!232 (LexerInterface!625 List!3878 List!3881) Bool)

(assert (=> b!277280 (= e!172399 (noDuplicateTag!232 thiss!17480 rules!1920 Nil!3871))))

(assert (= (and d!81183 res!126688) b!277280))

(declare-fun m!354139 () Bool)

(assert (=> d!81183 m!354139))

(declare-fun m!354141 () Bool)

(assert (=> b!277280 m!354141))

(assert (=> b!276802 d!81183))

(declare-fun d!81185 () Bool)

(assert (=> d!81185 (= (isEmpty!2499 rules!1920) ((_ is Nil!3868) rules!1920))))

(assert (=> b!276803 d!81185))

(declare-fun d!81187 () Bool)

(declare-fun res!126695 () Bool)

(declare-fun e!172406 () Bool)

(assert (=> d!81187 (=> res!126695 e!172406)))

(assert (=> d!81187 (= res!126695 (not ((_ is Cons!3868) rules!1920)))))

(assert (=> d!81187 (= (sepAndNonSepRulesDisjointChars!328 rules!1920 rules!1920) e!172406)))

(declare-fun b!277287 () Bool)

(declare-fun e!172407 () Bool)

(assert (=> b!277287 (= e!172406 e!172407)))

(declare-fun res!126696 () Bool)

(assert (=> b!277287 (=> (not res!126696) (not e!172407))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!124 (Rule!1278 List!3878) Bool)

(assert (=> b!277287 (= res!126696 (ruleDisjointCharsFromAllFromOtherType!124 (h!9265 rules!1920) rules!1920))))

(declare-fun b!277288 () Bool)

(assert (=> b!277288 (= e!172407 (sepAndNonSepRulesDisjointChars!328 rules!1920 (t!39104 rules!1920)))))

(assert (= (and d!81187 (not res!126695)) b!277287))

(assert (= (and b!277287 res!126696) b!277288))

(declare-fun m!354151 () Bool)

(assert (=> b!277287 m!354151))

(declare-fun m!354153 () Bool)

(assert (=> b!277288 m!354153))

(assert (=> b!276805 d!81187))

(declare-fun bs!31118 () Bool)

(declare-fun d!81191 () Bool)

(assert (= bs!31118 (and d!81191 b!276786)))

(declare-fun lambda!9440 () Int)

(assert (=> bs!31118 (not (= lambda!9440 lambda!9417))))

(declare-fun bs!31119 () Bool)

(assert (= bs!31119 (and d!81191 b!276812)))

(assert (=> bs!31119 (= lambda!9440 lambda!9418)))

(declare-fun b!277320 () Bool)

(declare-fun e!172428 () Bool)

(assert (=> b!277320 (= e!172428 true)))

(declare-fun b!277319 () Bool)

(declare-fun e!172427 () Bool)

(assert (=> b!277319 (= e!172427 e!172428)))

(declare-fun b!277318 () Bool)

(declare-fun e!172426 () Bool)

(assert (=> b!277318 (= e!172426 e!172427)))

(assert (=> d!81191 e!172426))

(assert (= b!277319 b!277320))

(assert (= b!277318 b!277319))

(assert (= (and d!81191 ((_ is Cons!3868) rules!1920)) b!277318))

(assert (=> b!277320 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9440))))

(assert (=> b!277320 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9440))))

(assert (=> d!81191 true))

(declare-fun e!172425 () Bool)

(assert (=> d!81191 e!172425))

(declare-fun res!126721 () Bool)

(assert (=> d!81191 (=> (not res!126721) (not e!172425))))

(declare-fun lt!115279 () Bool)

(assert (=> d!81191 (= res!126721 (= lt!115279 (forall!984 (list!1598 lt!114998) lambda!9440)))))

(declare-fun forall!986 (BalanceConc!2610 Int) Bool)

(assert (=> d!81191 (= lt!115279 (forall!986 lt!114998 lambda!9440))))

(assert (=> d!81191 (not (isEmpty!2499 rules!1920))))

(assert (=> d!81191 (= (rulesProduceEachTokenIndividually!417 thiss!17480 rules!1920 lt!114998) lt!115279)))

(declare-fun b!277317 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!237 (LexerInterface!625 List!3878 List!3879) Bool)

(assert (=> b!277317 (= e!172425 (= lt!115279 (rulesProduceEachTokenIndividuallyList!237 thiss!17480 rules!1920 (list!1598 lt!114998))))))

(assert (= (and d!81191 res!126721) b!277317))

(declare-fun m!354211 () Bool)

(assert (=> d!81191 m!354211))

(assert (=> d!81191 m!354211))

(declare-fun m!354213 () Bool)

(assert (=> d!81191 m!354213))

(declare-fun m!354215 () Bool)

(assert (=> d!81191 m!354215))

(assert (=> d!81191 m!353319))

(assert (=> b!277317 m!354211))

(assert (=> b!277317 m!354211))

(declare-fun m!354217 () Bool)

(assert (=> b!277317 m!354217))

(assert (=> b!276817 d!81191))

(declare-fun d!81213 () Bool)

(declare-fun fromListB!336 (List!3879) BalanceConc!2610)

(assert (=> d!81213 (= (seqFromList!846 tokens!465) (fromListB!336 tokens!465))))

(declare-fun bs!31120 () Bool)

(assert (= bs!31120 d!81213))

(declare-fun m!354219 () Bool)

(assert (=> bs!31120 m!354219))

(assert (=> b!276817 d!81213))

(declare-fun b!277327 () Bool)

(declare-fun e!172434 () Bool)

(assert (=> b!277327 (= e!172434 (inv!17 (value!25377 separatorToken!170)))))

(declare-fun b!277328 () Bool)

(declare-fun e!172433 () Bool)

(assert (=> b!277328 (= e!172433 e!172434)))

(declare-fun c!52440 () Bool)

(assert (=> b!277328 (= c!52440 ((_ is IntegerValue!2284) (value!25377 separatorToken!170)))))

(declare-fun b!277329 () Bool)

(declare-fun res!126728 () Bool)

(declare-fun e!172435 () Bool)

(assert (=> b!277329 (=> res!126728 e!172435)))

(assert (=> b!277329 (= res!126728 (not ((_ is IntegerValue!2285) (value!25377 separatorToken!170))))))

(assert (=> b!277329 (= e!172434 e!172435)))

(declare-fun b!277330 () Bool)

(assert (=> b!277330 (= e!172435 (inv!15 (value!25377 separatorToken!170)))))

(declare-fun d!81215 () Bool)

(declare-fun c!52439 () Bool)

(assert (=> d!81215 (= c!52439 ((_ is IntegerValue!2283) (value!25377 separatorToken!170)))))

(assert (=> d!81215 (= (inv!21 (value!25377 separatorToken!170)) e!172433)))

(declare-fun b!277331 () Bool)

(assert (=> b!277331 (= e!172433 (inv!16 (value!25377 separatorToken!170)))))

(assert (= (and d!81215 c!52439) b!277331))

(assert (= (and d!81215 (not c!52439)) b!277328))

(assert (= (and b!277328 c!52440) b!277327))

(assert (= (and b!277328 (not c!52440)) b!277329))

(assert (= (and b!277329 (not res!126728)) b!277330))

(declare-fun m!354221 () Bool)

(assert (=> b!277327 m!354221))

(declare-fun m!354223 () Bool)

(assert (=> b!277330 m!354223))

(declare-fun m!354225 () Bool)

(assert (=> b!277331 m!354225))

(assert (=> b!276796 d!81215))

(declare-fun d!81217 () Bool)

(declare-fun res!126729 () Bool)

(declare-fun e!172436 () Bool)

(assert (=> d!81217 (=> (not res!126729) (not e!172436))))

(assert (=> d!81217 (= res!126729 (not (isEmpty!2497 (originalCharacters!782 (h!9266 tokens!465)))))))

(assert (=> d!81217 (= (inv!4789 (h!9266 tokens!465)) e!172436)))

(declare-fun b!277332 () Bool)

(declare-fun res!126730 () Bool)

(assert (=> b!277332 (=> (not res!126730) (not e!172436))))

(assert (=> b!277332 (= res!126730 (= (originalCharacters!782 (h!9266 tokens!465)) (list!1595 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (value!25377 (h!9266 tokens!465))))))))

(declare-fun b!277333 () Bool)

(assert (=> b!277333 (= e!172436 (= (size!3089 (h!9266 tokens!465)) (size!3093 (originalCharacters!782 (h!9266 tokens!465)))))))

(assert (= (and d!81217 res!126729) b!277332))

(assert (= (and b!277332 res!126730) b!277333))

(declare-fun b_lambda!8951 () Bool)

(assert (=> (not b_lambda!8951) (not b!277332)))

(declare-fun tb!15839 () Bool)

(declare-fun t!39143 () Bool)

(assert (=> (and b!276789 (= (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465))))) t!39143) tb!15839))

(declare-fun b!277334 () Bool)

(declare-fun e!172437 () Bool)

(declare-fun tp!103757 () Bool)

(assert (=> b!277334 (= e!172437 (and (inv!4792 (c!52342 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (value!25377 (h!9266 tokens!465))))) tp!103757))))

(declare-fun result!19534 () Bool)

(assert (=> tb!15839 (= result!19534 (and (inv!4793 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (value!25377 (h!9266 tokens!465)))) e!172437))))

(assert (= tb!15839 b!277334))

(declare-fun m!354227 () Bool)

(assert (=> b!277334 m!354227))

(declare-fun m!354229 () Bool)

(assert (=> tb!15839 m!354229))

(assert (=> b!277332 t!39143))

(declare-fun b_and!22263 () Bool)

(assert (= b_and!22257 (and (=> t!39143 result!19534) b_and!22263)))

(declare-fun t!39145 () Bool)

(declare-fun tb!15841 () Bool)

(assert (=> (and b!276821 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465))))) t!39145) tb!15841))

(declare-fun result!19536 () Bool)

(assert (= result!19536 result!19534))

(assert (=> b!277332 t!39145))

(declare-fun b_and!22265 () Bool)

(assert (= b_and!22259 (and (=> t!39145 result!19536) b_and!22265)))

(declare-fun t!39147 () Bool)

(declare-fun tb!15843 () Bool)

(assert (=> (and b!276813 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465))))) t!39147) tb!15843))

(declare-fun result!19538 () Bool)

(assert (= result!19538 result!19534))

(assert (=> b!277332 t!39147))

(declare-fun b_and!22267 () Bool)

(assert (= b_and!22261 (and (=> t!39147 result!19538) b_and!22267)))

(declare-fun m!354231 () Bool)

(assert (=> d!81217 m!354231))

(declare-fun m!354233 () Bool)

(assert (=> b!277332 m!354233))

(assert (=> b!277332 m!354233))

(declare-fun m!354235 () Bool)

(assert (=> b!277332 m!354235))

(declare-fun m!354237 () Bool)

(assert (=> b!277333 m!354237))

(assert (=> b!276797 d!81217))

(declare-fun d!81219 () Bool)

(assert (=> d!81219 (= (seqFromList!846 (t!39105 tokens!465)) (fromListB!336 (t!39105 tokens!465)))))

(declare-fun bs!31121 () Bool)

(assert (= bs!31121 d!81219))

(declare-fun m!354239 () Bool)

(assert (=> bs!31121 m!354239))

(assert (=> b!276818 d!81219))

(declare-fun d!81221 () Bool)

(assert (=> d!81221 (= (list!1595 (charsOf!384 separatorToken!170)) (list!1599 (c!52342 (charsOf!384 separatorToken!170))))))

(declare-fun bs!31122 () Bool)

(assert (= bs!31122 d!81221))

(declare-fun m!354241 () Bool)

(assert (=> bs!31122 m!354241))

(assert (=> b!276818 d!81221))

(declare-fun lt!115286 () List!3877)

(declare-fun e!172441 () Bool)

(declare-fun b!277341 () Bool)

(assert (=> b!277341 (= e!172441 (or (not (= lt!115011 Nil!3867)) (= lt!115286 lt!115001)))))

(declare-fun b!277340 () Bool)

(declare-fun res!126734 () Bool)

(assert (=> b!277340 (=> (not res!126734) (not e!172441))))

(assert (=> b!277340 (= res!126734 (= (size!3093 lt!115286) (+ (size!3093 lt!115001) (size!3093 lt!115011))))))

(declare-fun d!81223 () Bool)

(assert (=> d!81223 e!172441))

(declare-fun res!126735 () Bool)

(assert (=> d!81223 (=> (not res!126735) (not e!172441))))

(assert (=> d!81223 (= res!126735 (= (content!561 lt!115286) ((_ map or) (content!561 lt!115001) (content!561 lt!115011))))))

(declare-fun e!172440 () List!3877)

(assert (=> d!81223 (= lt!115286 e!172440)))

(declare-fun c!52441 () Bool)

(assert (=> d!81223 (= c!52441 ((_ is Nil!3867) lt!115001))))

(assert (=> d!81223 (= (++!1022 lt!115001 lt!115011) lt!115286)))

(declare-fun b!277338 () Bool)

(assert (=> b!277338 (= e!172440 lt!115011)))

(declare-fun b!277339 () Bool)

(assert (=> b!277339 (= e!172440 (Cons!3867 (h!9264 lt!115001) (++!1022 (t!39103 lt!115001) lt!115011)))))

(assert (= (and d!81223 c!52441) b!277338))

(assert (= (and d!81223 (not c!52441)) b!277339))

(assert (= (and d!81223 res!126735) b!277340))

(assert (= (and b!277340 res!126734) b!277341))

(declare-fun m!354247 () Bool)

(assert (=> b!277340 m!354247))

(declare-fun m!354249 () Bool)

(assert (=> b!277340 m!354249))

(assert (=> b!277340 m!353685))

(declare-fun m!354251 () Bool)

(assert (=> d!81223 m!354251))

(declare-fun m!354255 () Bool)

(assert (=> d!81223 m!354255))

(assert (=> d!81223 m!353691))

(declare-fun m!354257 () Bool)

(assert (=> b!277339 m!354257))

(assert (=> b!276818 d!81223))

(declare-fun e!172443 () Bool)

(declare-fun lt!115287 () List!3877)

(declare-fun b!277345 () Bool)

(assert (=> b!277345 (= e!172443 (or (not (= lt!114999 Nil!3867)) (= lt!115287 lt!114992)))))

(declare-fun b!277344 () Bool)

(declare-fun res!126736 () Bool)

(assert (=> b!277344 (=> (not res!126736) (not e!172443))))

(assert (=> b!277344 (= res!126736 (= (size!3093 lt!115287) (+ (size!3093 lt!114992) (size!3093 lt!114999))))))

(declare-fun d!81225 () Bool)

(assert (=> d!81225 e!172443))

(declare-fun res!126737 () Bool)

(assert (=> d!81225 (=> (not res!126737) (not e!172443))))

(assert (=> d!81225 (= res!126737 (= (content!561 lt!115287) ((_ map or) (content!561 lt!114992) (content!561 lt!114999))))))

(declare-fun e!172442 () List!3877)

(assert (=> d!81225 (= lt!115287 e!172442)))

(declare-fun c!52442 () Bool)

(assert (=> d!81225 (= c!52442 ((_ is Nil!3867) lt!114992))))

(assert (=> d!81225 (= (++!1022 lt!114992 lt!114999) lt!115287)))

(declare-fun b!277342 () Bool)

(assert (=> b!277342 (= e!172442 lt!114999)))

(declare-fun b!277343 () Bool)

(assert (=> b!277343 (= e!172442 (Cons!3867 (h!9264 lt!114992) (++!1022 (t!39103 lt!114992) lt!114999)))))

(assert (= (and d!81225 c!52442) b!277342))

(assert (= (and d!81225 (not c!52442)) b!277343))

(assert (= (and d!81225 res!126737) b!277344))

(assert (= (and b!277344 res!126736) b!277345))

(declare-fun m!354267 () Bool)

(assert (=> b!277344 m!354267))

(assert (=> b!277344 m!353683))

(declare-fun m!354269 () Bool)

(assert (=> b!277344 m!354269))

(declare-fun m!354271 () Bool)

(assert (=> d!81225 m!354271))

(assert (=> d!81225 m!353689))

(declare-fun m!354273 () Bool)

(assert (=> d!81225 m!354273))

(declare-fun m!354275 () Bool)

(assert (=> b!277343 m!354275))

(assert (=> b!276818 d!81225))

(declare-fun bs!31126 () Bool)

(declare-fun b!277411 () Bool)

(assert (= bs!31126 (and b!277411 b!276786)))

(declare-fun lambda!9443 () Int)

(assert (=> bs!31126 (not (= lambda!9443 lambda!9417))))

(declare-fun bs!31127 () Bool)

(assert (= bs!31127 (and b!277411 b!276812)))

(assert (=> bs!31127 (= lambda!9443 lambda!9418)))

(declare-fun bs!31128 () Bool)

(assert (= bs!31128 (and b!277411 d!81191)))

(assert (=> bs!31128 (= lambda!9443 lambda!9440)))

(declare-fun b!277419 () Bool)

(declare-fun e!172493 () Bool)

(assert (=> b!277419 (= e!172493 true)))

(declare-fun b!277418 () Bool)

(declare-fun e!172492 () Bool)

(assert (=> b!277418 (= e!172492 e!172493)))

(declare-fun b!277417 () Bool)

(declare-fun e!172491 () Bool)

(assert (=> b!277417 (= e!172491 e!172492)))

(assert (=> b!277411 e!172491))

(assert (= b!277418 b!277419))

(assert (= b!277417 b!277418))

(assert (= (and b!277411 ((_ is Cons!3868) rules!1920)) b!277417))

(assert (=> b!277419 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9443))))

(assert (=> b!277419 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9443))))

(assert (=> b!277411 true))

(declare-fun b!277407 () Bool)

(declare-fun e!172490 () BalanceConc!2608)

(assert (=> b!277407 (= e!172490 (charsOf!384 separatorToken!170))))

(declare-fun b!277408 () Bool)

(declare-fun e!172489 () List!3877)

(assert (=> b!277408 (= e!172489 Nil!3867)))

(declare-fun b!277409 () Bool)

(declare-fun e!172487 () List!3877)

(declare-fun call!15369 () List!3877)

(assert (=> b!277409 (= e!172487 call!15369)))

(declare-fun b!277410 () Bool)

(declare-fun c!52460 () Bool)

(declare-fun lt!115333 () Option!832)

(assert (=> b!277410 (= c!52460 (and ((_ is Some!831) lt!115333) (not (= (_1!2399 (v!14726 lt!115333)) (h!9266 (t!39105 tokens!465))))))))

(declare-fun e!172486 () List!3877)

(assert (=> b!277410 (= e!172487 e!172486)))

(declare-fun call!15368 () BalanceConc!2608)

(declare-fun call!15371 () List!3877)

(declare-fun bm!15362 () Bool)

(declare-fun c!52462 () Bool)

(assert (=> bm!15362 (= call!15371 (list!1595 (ite c!52462 call!15368 e!172490)))))

(declare-fun bm!15363 () Bool)

(declare-fun call!15367 () BalanceConc!2608)

(assert (=> bm!15363 (= call!15367 call!15368)))

(assert (=> b!277411 (= e!172489 e!172487)))

(declare-fun lt!115332 () Unit!5064)

(assert (=> b!277411 (= lt!115332 (forallContained!294 (t!39105 tokens!465) lambda!9443 (h!9266 (t!39105 tokens!465))))))

(declare-fun lt!115334 () List!3877)

(assert (=> b!277411 (= lt!115334 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (t!39105 (t!39105 tokens!465)) separatorToken!170))))

(assert (=> b!277411 (= lt!115333 (maxPrefix!343 thiss!17480 rules!1920 (++!1022 (list!1595 (charsOf!384 (h!9266 (t!39105 tokens!465)))) lt!115334)))))

(assert (=> b!277411 (= c!52462 (and ((_ is Some!831) lt!115333) (= (_1!2399 (v!14726 lt!115333)) (h!9266 (t!39105 tokens!465)))))))

(declare-fun d!81229 () Bool)

(declare-fun c!52459 () Bool)

(assert (=> d!81229 (= c!52459 ((_ is Cons!3869) (t!39105 tokens!465)))))

(assert (=> d!81229 (= (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (t!39105 tokens!465) separatorToken!170) e!172489)))

(declare-fun bm!15364 () Bool)

(declare-fun c!52461 () Bool)

(assert (=> bm!15364 (= c!52461 c!52462)))

(declare-fun e!172488 () List!3877)

(declare-fun call!15370 () List!3877)

(assert (=> bm!15364 (= call!15369 (++!1022 e!172488 (ite c!52462 lt!115334 call!15370)))))

(declare-fun b!277412 () Bool)

(assert (=> b!277412 (= e!172486 Nil!3867)))

(assert (=> b!277412 (= (print!350 thiss!17480 (singletonSeq!285 (h!9266 (t!39105 tokens!465)))) (printTailRec!313 thiss!17480 (singletonSeq!285 (h!9266 (t!39105 tokens!465))) 0 (BalanceConc!2609 Empty!1300)))))

(declare-fun lt!115329 () Unit!5064)

(declare-fun Unit!5074 () Unit!5064)

(assert (=> b!277412 (= lt!115329 Unit!5074)))

(declare-fun lt!115331 () Unit!5064)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!120 (LexerInterface!625 List!3878 List!3877 List!3877) Unit!5064)

(assert (=> b!277412 (= lt!115331 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!120 thiss!17480 rules!1920 call!15370 lt!115334))))

(assert (=> b!277412 false))

(declare-fun lt!115330 () Unit!5064)

(declare-fun Unit!5075 () Unit!5064)

(assert (=> b!277412 (= lt!115330 Unit!5075)))

(declare-fun b!277413 () Bool)

(assert (=> b!277413 (= e!172488 call!15371)))

(declare-fun bm!15365 () Bool)

(assert (=> bm!15365 (= call!15368 (charsOf!384 (h!9266 (t!39105 tokens!465))))))

(declare-fun b!277414 () Bool)

(assert (=> b!277414 (= e!172488 (list!1595 call!15367))))

(declare-fun b!277415 () Bool)

(assert (=> b!277415 (= e!172490 call!15367)))

(declare-fun bm!15366 () Bool)

(assert (=> bm!15366 (= call!15370 call!15371)))

(declare-fun c!52458 () Bool)

(assert (=> bm!15366 (= c!52458 c!52460)))

(declare-fun b!277416 () Bool)

(assert (=> b!277416 (= e!172486 (++!1022 call!15369 lt!115334))))

(assert (= (and d!81229 c!52459) b!277411))

(assert (= (and d!81229 (not c!52459)) b!277408))

(assert (= (and b!277411 c!52462) b!277409))

(assert (= (and b!277411 (not c!52462)) b!277410))

(assert (= (and b!277410 c!52460) b!277416))

(assert (= (and b!277410 (not c!52460)) b!277412))

(assert (= (or b!277416 b!277412) bm!15363))

(assert (= (or b!277416 b!277412) bm!15366))

(assert (= (and bm!15366 c!52458) b!277407))

(assert (= (and bm!15366 (not c!52458)) b!277415))

(assert (= (or b!277409 bm!15363) bm!15365))

(assert (= (or b!277409 bm!15366) bm!15362))

(assert (= (or b!277409 b!277416) bm!15364))

(assert (= (and bm!15364 c!52461) b!277413))

(assert (= (and bm!15364 (not c!52461)) b!277414))

(declare-fun m!354349 () Bool)

(assert (=> b!277412 m!354349))

(assert (=> b!277412 m!354349))

(declare-fun m!354351 () Bool)

(assert (=> b!277412 m!354351))

(assert (=> b!277412 m!354349))

(declare-fun m!354353 () Bool)

(assert (=> b!277412 m!354353))

(declare-fun m!354355 () Bool)

(assert (=> b!277412 m!354355))

(declare-fun m!354357 () Bool)

(assert (=> b!277411 m!354357))

(declare-fun m!354359 () Bool)

(assert (=> b!277411 m!354359))

(declare-fun m!354361 () Bool)

(assert (=> b!277411 m!354361))

(assert (=> b!277411 m!354359))

(declare-fun m!354363 () Bool)

(assert (=> b!277411 m!354363))

(assert (=> b!277411 m!354363))

(declare-fun m!354365 () Bool)

(assert (=> b!277411 m!354365))

(declare-fun m!354367 () Bool)

(assert (=> b!277411 m!354367))

(assert (=> b!277411 m!354357))

(assert (=> b!277407 m!353359))

(declare-fun m!354369 () Bool)

(assert (=> bm!15362 m!354369))

(assert (=> bm!15365 m!354357))

(declare-fun m!354371 () Bool)

(assert (=> bm!15364 m!354371))

(declare-fun m!354373 () Bool)

(assert (=> b!277416 m!354373))

(declare-fun m!354375 () Bool)

(assert (=> b!277414 m!354375))

(assert (=> b!276818 d!81229))

(declare-fun b!277423 () Bool)

(declare-fun e!172495 () Bool)

(declare-fun lt!115335 () List!3877)

(assert (=> b!277423 (= e!172495 (or (not (= lt!115011 Nil!3867)) (= lt!115335 lt!114999)))))

(declare-fun b!277422 () Bool)

(declare-fun res!126769 () Bool)

(assert (=> b!277422 (=> (not res!126769) (not e!172495))))

(assert (=> b!277422 (= res!126769 (= (size!3093 lt!115335) (+ (size!3093 lt!114999) (size!3093 lt!115011))))))

(declare-fun d!81249 () Bool)

(assert (=> d!81249 e!172495))

(declare-fun res!126770 () Bool)

(assert (=> d!81249 (=> (not res!126770) (not e!172495))))

(assert (=> d!81249 (= res!126770 (= (content!561 lt!115335) ((_ map or) (content!561 lt!114999) (content!561 lt!115011))))))

(declare-fun e!172494 () List!3877)

(assert (=> d!81249 (= lt!115335 e!172494)))

(declare-fun c!52463 () Bool)

(assert (=> d!81249 (= c!52463 ((_ is Nil!3867) lt!114999))))

(assert (=> d!81249 (= (++!1022 lt!114999 lt!115011) lt!115335)))

(declare-fun b!277420 () Bool)

(assert (=> b!277420 (= e!172494 lt!115011)))

(declare-fun b!277421 () Bool)

(assert (=> b!277421 (= e!172494 (Cons!3867 (h!9264 lt!114999) (++!1022 (t!39103 lt!114999) lt!115011)))))

(assert (= (and d!81249 c!52463) b!277420))

(assert (= (and d!81249 (not c!52463)) b!277421))

(assert (= (and d!81249 res!126770) b!277422))

(assert (= (and b!277422 res!126769) b!277423))

(declare-fun m!354377 () Bool)

(assert (=> b!277422 m!354377))

(assert (=> b!277422 m!354269))

(assert (=> b!277422 m!353685))

(declare-fun m!354379 () Bool)

(assert (=> d!81249 m!354379))

(assert (=> d!81249 m!354273))

(assert (=> d!81249 m!353691))

(declare-fun m!354381 () Bool)

(assert (=> b!277421 m!354381))

(assert (=> b!276818 d!81249))

(declare-fun bs!31132 () Bool)

(declare-fun d!81251 () Bool)

(assert (= bs!31132 (and d!81251 b!276786)))

(declare-fun lambda!9448 () Int)

(assert (=> bs!31132 (= lambda!9448 lambda!9417)))

(declare-fun bs!31133 () Bool)

(assert (= bs!31133 (and d!81251 b!276812)))

(assert (=> bs!31133 (not (= lambda!9448 lambda!9418))))

(declare-fun bs!31134 () Bool)

(assert (= bs!31134 (and d!81251 d!81191)))

(assert (=> bs!31134 (not (= lambda!9448 lambda!9440))))

(declare-fun bs!31135 () Bool)

(assert (= bs!31135 (and d!81251 b!277411)))

(assert (=> bs!31135 (not (= lambda!9448 lambda!9443))))

(declare-fun bs!31136 () Bool)

(declare-fun b!277523 () Bool)

(assert (= bs!31136 (and b!277523 b!276812)))

(declare-fun lambda!9449 () Int)

(assert (=> bs!31136 (= lambda!9449 lambda!9418)))

(declare-fun bs!31137 () Bool)

(assert (= bs!31137 (and b!277523 d!81251)))

(assert (=> bs!31137 (not (= lambda!9449 lambda!9448))))

(declare-fun bs!31138 () Bool)

(assert (= bs!31138 (and b!277523 b!276786)))

(assert (=> bs!31138 (not (= lambda!9449 lambda!9417))))

(declare-fun bs!31139 () Bool)

(assert (= bs!31139 (and b!277523 d!81191)))

(assert (=> bs!31139 (= lambda!9449 lambda!9440)))

(declare-fun bs!31140 () Bool)

(assert (= bs!31140 (and b!277523 b!277411)))

(assert (=> bs!31140 (= lambda!9449 lambda!9443)))

(declare-fun b!277530 () Bool)

(declare-fun e!172570 () Bool)

(assert (=> b!277530 (= e!172570 true)))

(declare-fun b!277529 () Bool)

(declare-fun e!172569 () Bool)

(assert (=> b!277529 (= e!172569 e!172570)))

(declare-fun b!277528 () Bool)

(declare-fun e!172568 () Bool)

(assert (=> b!277528 (= e!172568 e!172569)))

(assert (=> b!277523 e!172568))

(assert (= b!277529 b!277530))

(assert (= b!277528 b!277529))

(assert (= (and b!277523 ((_ is Cons!3868) rules!1920)) b!277528))

(assert (=> b!277530 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9449))))

(assert (=> b!277530 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9449))))

(assert (=> b!277523 true))

(declare-fun b!277517 () Bool)

(declare-fun e!172567 () Bool)

(declare-fun lt!115373 () Option!833)

(assert (=> b!277517 (= e!172567 (= (_1!2401 (v!14727 lt!115373)) (apply!800 (seqFromList!846 (t!39105 tokens!465)) 0)))))

(declare-fun bm!15377 () Bool)

(declare-fun call!15384 () Token!1222)

(declare-fun call!15382 () Token!1222)

(assert (=> bm!15377 (= call!15384 call!15382)))

(declare-fun bm!15378 () Bool)

(declare-fun call!15385 () BalanceConc!2608)

(declare-fun call!15386 () BalanceConc!2608)

(assert (=> bm!15378 (= call!15385 call!15386)))

(declare-fun b!277518 () Bool)

(declare-fun e!172563 () Bool)

(assert (=> b!277518 (= e!172563 (<= 0 (size!3092 (seqFromList!846 (t!39105 tokens!465)))))))

(declare-fun bm!15379 () Bool)

(assert (=> bm!15379 (= call!15382 (apply!800 (seqFromList!846 (t!39105 tokens!465)) 0))))

(declare-fun b!277519 () Bool)

(declare-fun e!172566 () BalanceConc!2608)

(assert (=> b!277519 (= e!172566 (charsOf!384 call!15384))))

(declare-fun c!52477 () Bool)

(declare-fun c!52478 () Bool)

(declare-fun bm!15380 () Bool)

(assert (=> bm!15380 (= call!15386 (charsOf!384 (ite c!52477 call!15382 (ite c!52478 separatorToken!170 call!15384))))))

(declare-fun b!277520 () Bool)

(assert (=> b!277520 (= e!172566 call!15386)))

(declare-fun b!277521 () Bool)

(declare-fun e!172565 () BalanceConc!2608)

(assert (=> b!277521 (= e!172565 (BalanceConc!2609 Empty!1300))))

(assert (=> b!277521 (= (print!350 thiss!17480 (singletonSeq!285 call!15384)) (printTailRec!313 thiss!17480 (singletonSeq!285 call!15384) 0 (BalanceConc!2609 Empty!1300)))))

(declare-fun lt!115374 () Unit!5064)

(declare-fun Unit!5076 () Unit!5064)

(assert (=> b!277521 (= lt!115374 Unit!5076)))

(declare-fun lt!115378 () Unit!5064)

(declare-fun lt!115380 () BalanceConc!2608)

(assert (=> b!277521 (= lt!115378 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!120 thiss!17480 rules!1920 (list!1595 call!15385) (list!1595 lt!115380)))))

(assert (=> b!277521 false))

(declare-fun lt!115371 () Unit!5064)

(declare-fun Unit!5077 () Unit!5064)

(assert (=> b!277521 (= lt!115371 Unit!5077)))

(declare-fun b!277522 () Bool)

(declare-fun e!172562 () Bool)

(assert (=> b!277522 (= e!172562 (not (= (_1!2401 (v!14727 lt!115373)) call!15382)))))

(declare-fun e!172564 () BalanceConc!2608)

(declare-fun e!172561 () BalanceConc!2608)

(assert (=> b!277523 (= e!172564 e!172561)))

(declare-fun lt!115367 () List!3879)

(assert (=> b!277523 (= lt!115367 (list!1598 (seqFromList!846 (t!39105 tokens!465))))))

(declare-fun lt!115375 () Unit!5064)

(assert (=> b!277523 (= lt!115375 (lemmaDropApply!212 lt!115367 0))))

(assert (=> b!277523 (= (head!904 (drop!225 lt!115367 0)) (apply!802 lt!115367 0))))

(declare-fun lt!115376 () Unit!5064)

(assert (=> b!277523 (= lt!115376 lt!115375)))

(declare-fun lt!115370 () List!3879)

(assert (=> b!277523 (= lt!115370 (list!1598 (seqFromList!846 (t!39105 tokens!465))))))

(declare-fun lt!115379 () Unit!5064)

(assert (=> b!277523 (= lt!115379 (lemmaDropTail!204 lt!115370 0))))

(assert (=> b!277523 (= (tail!495 (drop!225 lt!115370 0)) (drop!225 lt!115370 (+ 0 1)))))

(declare-fun lt!115369 () Unit!5064)

(assert (=> b!277523 (= lt!115369 lt!115379)))

(declare-fun lt!115372 () Unit!5064)

(assert (=> b!277523 (= lt!115372 (forallContained!294 (list!1598 (seqFromList!846 (t!39105 tokens!465))) lambda!9449 (apply!800 (seqFromList!846 (t!39105 tokens!465)) 0)))))

(assert (=> b!277523 (= lt!115380 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 (seqFromList!846 (t!39105 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!277523 (= lt!115373 (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (++!1024 (charsOf!384 (apply!800 (seqFromList!846 (t!39105 tokens!465)) 0)) lt!115380)))))

(declare-fun res!126786 () Bool)

(assert (=> b!277523 (= res!126786 ((_ is Some!832) lt!115373))))

(assert (=> b!277523 (=> (not res!126786) (not e!172567))))

(assert (=> b!277523 (= c!52477 e!172567)))

(declare-fun lt!115368 () BalanceConc!2608)

(assert (=> d!81251 (= (list!1595 lt!115368) (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (dropList!172 (seqFromList!846 (t!39105 tokens!465)) 0) separatorToken!170))))

(assert (=> d!81251 (= lt!115368 e!172564)))

(declare-fun c!52476 () Bool)

(assert (=> d!81251 (= c!52476 (>= 0 (size!3092 (seqFromList!846 (t!39105 tokens!465)))))))

(declare-fun lt!115377 () Unit!5064)

(declare-fun lemmaContentSubsetPreservesForall!116 (List!3879 List!3879 Int) Unit!5064)

(assert (=> d!81251 (= lt!115377 (lemmaContentSubsetPreservesForall!116 (list!1598 (seqFromList!846 (t!39105 tokens!465))) (dropList!172 (seqFromList!846 (t!39105 tokens!465)) 0) lambda!9448))))

(assert (=> d!81251 e!172563))

(declare-fun res!126788 () Bool)

(assert (=> d!81251 (=> (not res!126788) (not e!172563))))

(assert (=> d!81251 (= res!126788 (>= 0 0))))

(assert (=> d!81251 (= (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 (seqFromList!846 (t!39105 tokens!465)) separatorToken!170 0) lt!115368)))

(declare-fun b!277524 () Bool)

(declare-fun call!15383 () BalanceConc!2608)

(assert (=> b!277524 (= e!172565 (++!1024 call!15383 lt!115380))))

(declare-fun b!277525 () Bool)

(assert (=> b!277525 (= c!52478 e!172562)))

(declare-fun res!126787 () Bool)

(assert (=> b!277525 (=> (not res!126787) (not e!172562))))

(assert (=> b!277525 (= res!126787 ((_ is Some!832) lt!115373))))

(assert (=> b!277525 (= e!172561 e!172565)))

(declare-fun b!277526 () Bool)

(assert (=> b!277526 (= e!172561 call!15383)))

(declare-fun b!277527 () Bool)

(assert (=> b!277527 (= e!172564 (BalanceConc!2609 Empty!1300))))

(declare-fun bm!15381 () Bool)

(declare-fun c!52475 () Bool)

(assert (=> bm!15381 (= c!52475 c!52477)))

(assert (=> bm!15381 (= call!15383 (++!1024 e!172566 (ite c!52477 lt!115380 call!15385)))))

(assert (= (and d!81251 res!126788) b!277518))

(assert (= (and d!81251 c!52476) b!277527))

(assert (= (and d!81251 (not c!52476)) b!277523))

(assert (= (and b!277523 res!126786) b!277517))

(assert (= (and b!277523 c!52477) b!277526))

(assert (= (and b!277523 (not c!52477)) b!277525))

(assert (= (and b!277525 res!126787) b!277522))

(assert (= (and b!277525 c!52478) b!277524))

(assert (= (and b!277525 (not c!52478)) b!277521))

(assert (= (or b!277524 b!277521) bm!15377))

(assert (= (or b!277524 b!277521) bm!15378))

(assert (= (or b!277526 bm!15377 b!277522) bm!15379))

(assert (= (or b!277526 bm!15378) bm!15380))

(assert (= (or b!277526 b!277524) bm!15381))

(assert (= (and bm!15381 c!52475) b!277520))

(assert (= (and bm!15381 (not c!52475)) b!277519))

(declare-fun m!354415 () Bool)

(assert (=> bm!15381 m!354415))

(declare-fun m!354417 () Bool)

(assert (=> b!277521 m!354417))

(declare-fun m!354419 () Bool)

(assert (=> b!277521 m!354419))

(declare-fun m!354421 () Bool)

(assert (=> b!277521 m!354421))

(assert (=> b!277521 m!354417))

(declare-fun m!354423 () Bool)

(assert (=> b!277521 m!354423))

(assert (=> b!277521 m!354417))

(declare-fun m!354425 () Bool)

(assert (=> b!277521 m!354425))

(assert (=> b!277521 m!354421))

(assert (=> b!277521 m!354425))

(declare-fun m!354427 () Bool)

(assert (=> b!277521 m!354427))

(declare-fun m!354429 () Bool)

(assert (=> b!277524 m!354429))

(assert (=> b!277517 m!353355))

(declare-fun m!354431 () Bool)

(assert (=> b!277517 m!354431))

(assert (=> b!277518 m!353355))

(declare-fun m!354433 () Bool)

(assert (=> b!277518 m!354433))

(declare-fun m!354435 () Bool)

(assert (=> bm!15380 m!354435))

(assert (=> d!81251 m!353355))

(assert (=> d!81251 m!354433))

(assert (=> d!81251 m!353355))

(declare-fun m!354437 () Bool)

(assert (=> d!81251 m!354437))

(declare-fun m!354439 () Bool)

(assert (=> d!81251 m!354439))

(assert (=> d!81251 m!354437))

(declare-fun m!354441 () Bool)

(assert (=> d!81251 m!354441))

(declare-fun m!354443 () Bool)

(assert (=> d!81251 m!354443))

(assert (=> d!81251 m!353355))

(assert (=> d!81251 m!354441))

(assert (=> d!81251 m!354441))

(declare-fun m!354445 () Bool)

(assert (=> d!81251 m!354445))

(assert (=> bm!15379 m!353355))

(assert (=> bm!15379 m!354431))

(declare-fun m!354447 () Bool)

(assert (=> b!277523 m!354447))

(assert (=> b!277523 m!354447))

(declare-fun m!354449 () Bool)

(assert (=> b!277523 m!354449))

(assert (=> b!277523 m!353355))

(assert (=> b!277523 m!354437))

(assert (=> b!277523 m!353355))

(assert (=> b!277523 m!354431))

(declare-fun m!354451 () Bool)

(assert (=> b!277523 m!354451))

(declare-fun m!354453 () Bool)

(assert (=> b!277523 m!354453))

(declare-fun m!354455 () Bool)

(assert (=> b!277523 m!354455))

(declare-fun m!354457 () Bool)

(assert (=> b!277523 m!354457))

(declare-fun m!354459 () Bool)

(assert (=> b!277523 m!354459))

(assert (=> b!277523 m!354431))

(declare-fun m!354461 () Bool)

(assert (=> b!277523 m!354461))

(declare-fun m!354463 () Bool)

(assert (=> b!277523 m!354463))

(assert (=> b!277523 m!354461))

(assert (=> b!277523 m!354455))

(assert (=> b!277523 m!354437))

(assert (=> b!277523 m!354431))

(declare-fun m!354465 () Bool)

(assert (=> b!277523 m!354465))

(declare-fun m!354467 () Bool)

(assert (=> b!277523 m!354467))

(assert (=> b!277523 m!354453))

(declare-fun m!354469 () Bool)

(assert (=> b!277523 m!354469))

(assert (=> b!277523 m!353355))

(declare-fun m!354471 () Bool)

(assert (=> b!277523 m!354471))

(declare-fun m!354473 () Bool)

(assert (=> b!277519 m!354473))

(assert (=> b!276818 d!81251))

(declare-fun d!81259 () Bool)

(declare-fun lt!115383 () BalanceConc!2608)

(assert (=> d!81259 (= (list!1595 lt!115383) (originalCharacters!782 separatorToken!170))))

(assert (=> d!81259 (= lt!115383 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (value!25377 separatorToken!170)))))

(assert (=> d!81259 (= (charsOf!384 separatorToken!170) lt!115383)))

(declare-fun b_lambda!8967 () Bool)

(assert (=> (not b_lambda!8967) (not d!81259)))

(assert (=> d!81259 t!39132))

(declare-fun b_and!22277 () Bool)

(assert (= b_and!22263 (and (=> t!39132 result!19526) b_and!22277)))

(assert (=> d!81259 t!39134))

(declare-fun b_and!22279 () Bool)

(assert (= b_and!22265 (and (=> t!39134 result!19530) b_and!22279)))

(assert (=> d!81259 t!39136))

(declare-fun b_and!22281 () Bool)

(assert (= b_and!22267 (and (=> t!39136 result!19532) b_and!22281)))

(declare-fun m!354475 () Bool)

(assert (=> d!81259 m!354475))

(assert (=> d!81259 m!354133))

(assert (=> b!276818 d!81259))

(declare-fun d!81261 () Bool)

(assert (=> d!81261 (= (list!1595 (charsOf!384 (h!9266 tokens!465))) (list!1599 (c!52342 (charsOf!384 (h!9266 tokens!465)))))))

(declare-fun bs!31141 () Bool)

(assert (= bs!31141 d!81261))

(declare-fun m!354477 () Bool)

(assert (=> bs!31141 m!354477))

(assert (=> b!276818 d!81261))

(declare-fun d!81263 () Bool)

(declare-fun lt!115384 () BalanceConc!2608)

(assert (=> d!81263 (= (list!1595 lt!115384) (originalCharacters!782 (h!9266 tokens!465)))))

(assert (=> d!81263 (= lt!115384 (dynLambda!2017 (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (value!25377 (h!9266 tokens!465))))))

(assert (=> d!81263 (= (charsOf!384 (h!9266 tokens!465)) lt!115384)))

(declare-fun b_lambda!8969 () Bool)

(assert (=> (not b_lambda!8969) (not d!81263)))

(assert (=> d!81263 t!39143))

(declare-fun b_and!22283 () Bool)

(assert (= b_and!22277 (and (=> t!39143 result!19534) b_and!22283)))

(assert (=> d!81263 t!39145))

(declare-fun b_and!22285 () Bool)

(assert (= b_and!22279 (and (=> t!39145 result!19536) b_and!22285)))

(assert (=> d!81263 t!39147))

(declare-fun b_and!22287 () Bool)

(assert (= b_and!22281 (and (=> t!39147 result!19538) b_and!22287)))

(declare-fun m!354479 () Bool)

(assert (=> d!81263 m!354479))

(assert (=> d!81263 m!354233))

(assert (=> b!276818 d!81263))

(declare-fun d!81265 () Bool)

(assert (=> d!81265 (= (++!1022 (++!1022 lt!114992 lt!114999) lt!115011) (++!1022 lt!114992 (++!1022 lt!114999 lt!115011)))))

(declare-fun lt!115387 () Unit!5064)

(declare-fun choose!2511 (List!3877 List!3877 List!3877) Unit!5064)

(assert (=> d!81265 (= lt!115387 (choose!2511 lt!114992 lt!114999 lt!115011))))

(assert (=> d!81265 (= (lemmaConcatAssociativity!440 lt!114992 lt!114999 lt!115011) lt!115387)))

(declare-fun bs!31142 () Bool)

(assert (= bs!31142 d!81265))

(assert (=> bs!31142 m!353363))

(declare-fun m!354481 () Bool)

(assert (=> bs!31142 m!354481))

(assert (=> bs!31142 m!353371))

(declare-fun m!354483 () Bool)

(assert (=> bs!31142 m!354483))

(declare-fun m!354485 () Bool)

(assert (=> bs!31142 m!354485))

(assert (=> bs!31142 m!353371))

(assert (=> bs!31142 m!353363))

(assert (=> b!276818 d!81265))

(declare-fun d!81267 () Bool)

(assert (=> d!81267 (= (list!1595 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 (seqFromList!846 (t!39105 tokens!465)) separatorToken!170 0)) (list!1599 (c!52342 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 (seqFromList!846 (t!39105 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!31143 () Bool)

(assert (= bs!31143 d!81267))

(declare-fun m!354487 () Bool)

(assert (=> bs!31143 m!354487))

(assert (=> b!276818 d!81267))

(declare-fun lt!115388 () List!3877)

(declare-fun b!277534 () Bool)

(declare-fun e!172572 () Bool)

(assert (=> b!277534 (= e!172572 (or (not (= lt!114997 Nil!3867)) (= lt!115388 lt!114992)))))

(declare-fun b!277533 () Bool)

(declare-fun res!126789 () Bool)

(assert (=> b!277533 (=> (not res!126789) (not e!172572))))

(assert (=> b!277533 (= res!126789 (= (size!3093 lt!115388) (+ (size!3093 lt!114992) (size!3093 lt!114997))))))

(declare-fun d!81269 () Bool)

(assert (=> d!81269 e!172572))

(declare-fun res!126790 () Bool)

(assert (=> d!81269 (=> (not res!126790) (not e!172572))))

(assert (=> d!81269 (= res!126790 (= (content!561 lt!115388) ((_ map or) (content!561 lt!114992) (content!561 lt!114997))))))

(declare-fun e!172571 () List!3877)

(assert (=> d!81269 (= lt!115388 e!172571)))

(declare-fun c!52479 () Bool)

(assert (=> d!81269 (= c!52479 ((_ is Nil!3867) lt!114992))))

(assert (=> d!81269 (= (++!1022 lt!114992 lt!114997) lt!115388)))

(declare-fun b!277531 () Bool)

(assert (=> b!277531 (= e!172571 lt!114997)))

(declare-fun b!277532 () Bool)

(assert (=> b!277532 (= e!172571 (Cons!3867 (h!9264 lt!114992) (++!1022 (t!39103 lt!114992) lt!114997)))))

(assert (= (and d!81269 c!52479) b!277531))

(assert (= (and d!81269 (not c!52479)) b!277532))

(assert (= (and d!81269 res!126790) b!277533))

(assert (= (and b!277533 res!126789) b!277534))

(declare-fun m!354489 () Bool)

(assert (=> b!277533 m!354489))

(assert (=> b!277533 m!353683))

(assert (=> b!277533 m!353977))

(declare-fun m!354491 () Bool)

(assert (=> d!81269 m!354491))

(assert (=> d!81269 m!353689))

(declare-fun m!354493 () Bool)

(assert (=> d!81269 m!354493))

(declare-fun m!354495 () Bool)

(assert (=> b!277532 m!354495))

(assert (=> b!276818 d!81269))

(declare-fun b!277563 () Bool)

(declare-fun res!126808 () Bool)

(declare-fun e!172589 () Bool)

(assert (=> b!277563 (=> res!126808 e!172589)))

(assert (=> b!277563 (= res!126808 (not ((_ is ElementMatch!963) (regex!739 (rule!1326 (h!9266 tokens!465))))))))

(declare-fun e!172590 () Bool)

(assert (=> b!277563 (= e!172590 e!172589)))

(declare-fun b!277564 () Bool)

(declare-fun e!172591 () Bool)

(assert (=> b!277564 (= e!172591 e!172590)))

(declare-fun c!52488 () Bool)

(assert (=> b!277564 (= c!52488 ((_ is EmptyLang!963) (regex!739 (rule!1326 (h!9266 tokens!465)))))))

(declare-fun b!277565 () Bool)

(declare-fun e!172593 () Bool)

(assert (=> b!277565 (= e!172593 (= (head!906 lt!114992) (c!52343 (regex!739 (rule!1326 (h!9266 tokens!465))))))))

(declare-fun bm!15384 () Bool)

(declare-fun call!15389 () Bool)

(assert (=> bm!15384 (= call!15389 (isEmpty!2497 lt!114992))))

(declare-fun b!277566 () Bool)

(declare-fun res!126807 () Bool)

(assert (=> b!277566 (=> (not res!126807) (not e!172593))))

(assert (=> b!277566 (= res!126807 (isEmpty!2497 (tail!496 lt!114992)))))

(declare-fun b!277567 () Bool)

(declare-fun res!126811 () Bool)

(declare-fun e!172587 () Bool)

(assert (=> b!277567 (=> res!126811 e!172587)))

(assert (=> b!277567 (= res!126811 (not (isEmpty!2497 (tail!496 lt!114992))))))

(declare-fun b!277568 () Bool)

(declare-fun res!126814 () Bool)

(assert (=> b!277568 (=> (not res!126814) (not e!172593))))

(assert (=> b!277568 (= res!126814 (not call!15389))))

(declare-fun b!277569 () Bool)

(declare-fun e!172588 () Bool)

(declare-fun derivativeStep!140 (Regex!963 C!2848) Regex!963)

(assert (=> b!277569 (= e!172588 (matchR!285 (derivativeStep!140 (regex!739 (rule!1326 (h!9266 tokens!465))) (head!906 lt!114992)) (tail!496 lt!114992)))))

(declare-fun d!81271 () Bool)

(assert (=> d!81271 e!172591))

(declare-fun c!52486 () Bool)

(assert (=> d!81271 (= c!52486 ((_ is EmptyExpr!963) (regex!739 (rule!1326 (h!9266 tokens!465)))))))

(declare-fun lt!115391 () Bool)

(assert (=> d!81271 (= lt!115391 e!172588)))

(declare-fun c!52487 () Bool)

(assert (=> d!81271 (= c!52487 (isEmpty!2497 lt!114992))))

(declare-fun validRegex!249 (Regex!963) Bool)

(assert (=> d!81271 (validRegex!249 (regex!739 (rule!1326 (h!9266 tokens!465))))))

(assert (=> d!81271 (= (matchR!285 (regex!739 (rule!1326 (h!9266 tokens!465))) lt!114992) lt!115391)))

(declare-fun b!277570 () Bool)

(declare-fun nullable!174 (Regex!963) Bool)

(assert (=> b!277570 (= e!172588 (nullable!174 (regex!739 (rule!1326 (h!9266 tokens!465)))))))

(declare-fun b!277571 () Bool)

(assert (=> b!277571 (= e!172591 (= lt!115391 call!15389))))

(declare-fun b!277572 () Bool)

(assert (=> b!277572 (= e!172590 (not lt!115391))))

(declare-fun b!277573 () Bool)

(declare-fun e!172592 () Bool)

(assert (=> b!277573 (= e!172589 e!172592)))

(declare-fun res!126810 () Bool)

(assert (=> b!277573 (=> (not res!126810) (not e!172592))))

(assert (=> b!277573 (= res!126810 (not lt!115391))))

(declare-fun b!277574 () Bool)

(assert (=> b!277574 (= e!172592 e!172587)))

(declare-fun res!126812 () Bool)

(assert (=> b!277574 (=> res!126812 e!172587)))

(assert (=> b!277574 (= res!126812 call!15389)))

(declare-fun b!277575 () Bool)

(declare-fun res!126809 () Bool)

(assert (=> b!277575 (=> res!126809 e!172589)))

(assert (=> b!277575 (= res!126809 e!172593)))

(declare-fun res!126813 () Bool)

(assert (=> b!277575 (=> (not res!126813) (not e!172593))))

(assert (=> b!277575 (= res!126813 lt!115391)))

(declare-fun b!277576 () Bool)

(assert (=> b!277576 (= e!172587 (not (= (head!906 lt!114992) (c!52343 (regex!739 (rule!1326 (h!9266 tokens!465)))))))))

(assert (= (and d!81271 c!52487) b!277570))

(assert (= (and d!81271 (not c!52487)) b!277569))

(assert (= (and d!81271 c!52486) b!277571))

(assert (= (and d!81271 (not c!52486)) b!277564))

(assert (= (and b!277564 c!52488) b!277572))

(assert (= (and b!277564 (not c!52488)) b!277563))

(assert (= (and b!277563 (not res!126808)) b!277575))

(assert (= (and b!277575 res!126813) b!277568))

(assert (= (and b!277568 res!126814) b!277566))

(assert (= (and b!277566 res!126807) b!277565))

(assert (= (and b!277575 (not res!126809)) b!277573))

(assert (= (and b!277573 res!126810) b!277574))

(assert (= (and b!277574 (not res!126812)) b!277567))

(assert (= (and b!277567 (not res!126811)) b!277576))

(assert (= (or b!277571 b!277568 b!277574) bm!15384))

(declare-fun m!354497 () Bool)

(assert (=> d!81271 m!354497))

(declare-fun m!354499 () Bool)

(assert (=> d!81271 m!354499))

(assert (=> b!277566 m!354011))

(assert (=> b!277566 m!354011))

(declare-fun m!354501 () Bool)

(assert (=> b!277566 m!354501))

(assert (=> bm!15384 m!354497))

(assert (=> b!277569 m!354007))

(assert (=> b!277569 m!354007))

(declare-fun m!354503 () Bool)

(assert (=> b!277569 m!354503))

(assert (=> b!277569 m!354011))

(assert (=> b!277569 m!354503))

(assert (=> b!277569 m!354011))

(declare-fun m!354505 () Bool)

(assert (=> b!277569 m!354505))

(assert (=> b!277567 m!354011))

(assert (=> b!277567 m!354011))

(assert (=> b!277567 m!354501))

(assert (=> b!277565 m!354007))

(declare-fun m!354507 () Bool)

(assert (=> b!277570 m!354507))

(assert (=> b!277576 m!354007))

(assert (=> b!276819 d!81271))

(declare-fun d!81273 () Bool)

(assert (=> d!81273 (= (get!1291 lt!114990) (v!14726 lt!114990))))

(assert (=> b!276799 d!81273))

(declare-fun d!81275 () Bool)

(assert (=> d!81275 (= (isDefined!675 lt!114990) (not (isEmpty!2504 lt!114990)))))

(declare-fun bs!31144 () Bool)

(assert (= bs!31144 d!81275))

(declare-fun m!354509 () Bool)

(assert (=> bs!31144 m!354509))

(assert (=> b!276799 d!81275))

(declare-fun b!277577 () Bool)

(declare-fun res!126821 () Bool)

(declare-fun e!172595 () Bool)

(assert (=> b!277577 (=> (not res!126821) (not e!172595))))

(declare-fun lt!115395 () Option!832)

(assert (=> b!277577 (= res!126821 (= (value!25377 (_1!2399 (get!1291 lt!115395))) (apply!801 (transformation!739 (rule!1326 (_1!2399 (get!1291 lt!115395)))) (seqFromList!845 (originalCharacters!782 (_1!2399 (get!1291 lt!115395)))))))))

(declare-fun b!277578 () Bool)

(declare-fun res!126816 () Bool)

(assert (=> b!277578 (=> (not res!126816) (not e!172595))))

(assert (=> b!277578 (= res!126816 (matchR!285 (regex!739 (rule!1326 (_1!2399 (get!1291 lt!115395)))) (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115395))))))))

(declare-fun b!277579 () Bool)

(declare-fun res!126817 () Bool)

(assert (=> b!277579 (=> (not res!126817) (not e!172595))))

(assert (=> b!277579 (= res!126817 (< (size!3093 (_2!2399 (get!1291 lt!115395))) (size!3093 lt!114992)))))

(declare-fun b!277580 () Bool)

(declare-fun res!126818 () Bool)

(assert (=> b!277580 (=> (not res!126818) (not e!172595))))

(assert (=> b!277580 (= res!126818 (= (++!1022 (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115395)))) (_2!2399 (get!1291 lt!115395))) lt!114992))))

(declare-fun b!277581 () Bool)

(declare-fun e!172596 () Option!832)

(declare-fun lt!115393 () Option!832)

(declare-fun lt!115396 () Option!832)

(assert (=> b!277581 (= e!172596 (ite (and ((_ is None!831) lt!115393) ((_ is None!831) lt!115396)) None!831 (ite ((_ is None!831) lt!115396) lt!115393 (ite ((_ is None!831) lt!115393) lt!115396 (ite (>= (size!3089 (_1!2399 (v!14726 lt!115393))) (size!3089 (_1!2399 (v!14726 lt!115396)))) lt!115393 lt!115396)))))))

(declare-fun call!15390 () Option!832)

(assert (=> b!277581 (= lt!115393 call!15390)))

(assert (=> b!277581 (= lt!115396 (maxPrefix!343 thiss!17480 (t!39104 rules!1920) lt!114992))))

(declare-fun b!277582 () Bool)

(assert (=> b!277582 (= e!172595 (contains!742 rules!1920 (rule!1326 (_1!2399 (get!1291 lt!115395)))))))

(declare-fun bm!15385 () Bool)

(assert (=> bm!15385 (= call!15390 (maxPrefixOneRule!151 thiss!17480 (h!9265 rules!1920) lt!114992))))

(declare-fun d!81277 () Bool)

(declare-fun e!172594 () Bool)

(assert (=> d!81277 e!172594))

(declare-fun res!126815 () Bool)

(assert (=> d!81277 (=> res!126815 e!172594)))

(assert (=> d!81277 (= res!126815 (isEmpty!2504 lt!115395))))

(assert (=> d!81277 (= lt!115395 e!172596)))

(declare-fun c!52489 () Bool)

(assert (=> d!81277 (= c!52489 (and ((_ is Cons!3868) rules!1920) ((_ is Nil!3868) (t!39104 rules!1920))))))

(declare-fun lt!115392 () Unit!5064)

(declare-fun lt!115394 () Unit!5064)

(assert (=> d!81277 (= lt!115392 lt!115394)))

(assert (=> d!81277 (isPrefix!407 lt!114992 lt!114992)))

(assert (=> d!81277 (= lt!115394 (lemmaIsPrefixRefl!217 lt!114992 lt!114992))))

(assert (=> d!81277 (rulesValidInductive!212 thiss!17480 rules!1920)))

(assert (=> d!81277 (= (maxPrefix!343 thiss!17480 rules!1920 lt!114992) lt!115395)))

(declare-fun b!277583 () Bool)

(assert (=> b!277583 (= e!172596 call!15390)))

(declare-fun b!277584 () Bool)

(assert (=> b!277584 (= e!172594 e!172595)))

(declare-fun res!126819 () Bool)

(assert (=> b!277584 (=> (not res!126819) (not e!172595))))

(assert (=> b!277584 (= res!126819 (isDefined!675 lt!115395))))

(declare-fun b!277585 () Bool)

(declare-fun res!126820 () Bool)

(assert (=> b!277585 (=> (not res!126820) (not e!172595))))

(assert (=> b!277585 (= res!126820 (= (list!1595 (charsOf!384 (_1!2399 (get!1291 lt!115395)))) (originalCharacters!782 (_1!2399 (get!1291 lt!115395)))))))

(assert (= (and d!81277 c!52489) b!277583))

(assert (= (and d!81277 (not c!52489)) b!277581))

(assert (= (or b!277583 b!277581) bm!15385))

(assert (= (and d!81277 (not res!126815)) b!277584))

(assert (= (and b!277584 res!126819) b!277585))

(assert (= (and b!277585 res!126820) b!277579))

(assert (= (and b!277579 res!126817) b!277580))

(assert (= (and b!277580 res!126818) b!277577))

(assert (= (and b!277577 res!126821) b!277578))

(assert (= (and b!277578 res!126816) b!277582))

(declare-fun m!354511 () Bool)

(assert (=> b!277581 m!354511))

(declare-fun m!354513 () Bool)

(assert (=> b!277578 m!354513))

(declare-fun m!354515 () Bool)

(assert (=> b!277578 m!354515))

(assert (=> b!277578 m!354515))

(declare-fun m!354517 () Bool)

(assert (=> b!277578 m!354517))

(assert (=> b!277578 m!354517))

(declare-fun m!354519 () Bool)

(assert (=> b!277578 m!354519))

(assert (=> b!277580 m!354513))

(assert (=> b!277580 m!354515))

(assert (=> b!277580 m!354515))

(assert (=> b!277580 m!354517))

(assert (=> b!277580 m!354517))

(declare-fun m!354521 () Bool)

(assert (=> b!277580 m!354521))

(declare-fun m!354523 () Bool)

(assert (=> d!81277 m!354523))

(declare-fun m!354525 () Bool)

(assert (=> d!81277 m!354525))

(declare-fun m!354527 () Bool)

(assert (=> d!81277 m!354527))

(assert (=> d!81277 m!353545))

(assert (=> b!277579 m!354513))

(declare-fun m!354529 () Bool)

(assert (=> b!277579 m!354529))

(assert (=> b!277579 m!353683))

(assert (=> b!277582 m!354513))

(declare-fun m!354531 () Bool)

(assert (=> b!277582 m!354531))

(assert (=> b!277585 m!354513))

(assert (=> b!277585 m!354515))

(assert (=> b!277585 m!354515))

(assert (=> b!277585 m!354517))

(assert (=> b!277577 m!354513))

(declare-fun m!354533 () Bool)

(assert (=> b!277577 m!354533))

(assert (=> b!277577 m!354533))

(declare-fun m!354535 () Bool)

(assert (=> b!277577 m!354535))

(declare-fun m!354537 () Bool)

(assert (=> bm!15385 m!354537))

(declare-fun m!354539 () Bool)

(assert (=> b!277584 m!354539))

(assert (=> b!276799 d!81277))

(declare-fun d!81279 () Bool)

(assert (=> d!81279 (= (list!1595 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 lt!114998 separatorToken!170 0)) (list!1599 (c!52342 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 lt!114998 separatorToken!170 0))))))

(declare-fun bs!31145 () Bool)

(assert (= bs!31145 d!81279))

(declare-fun m!354541 () Bool)

(assert (=> bs!31145 m!354541))

(assert (=> b!276820 d!81279))

(declare-fun bs!31146 () Bool)

(declare-fun d!81281 () Bool)

(assert (= bs!31146 (and d!81281 b!276812)))

(declare-fun lambda!9450 () Int)

(assert (=> bs!31146 (not (= lambda!9450 lambda!9418))))

(declare-fun bs!31147 () Bool)

(assert (= bs!31147 (and d!81281 b!277523)))

(assert (=> bs!31147 (not (= lambda!9450 lambda!9449))))

(declare-fun bs!31148 () Bool)

(assert (= bs!31148 (and d!81281 d!81251)))

(assert (=> bs!31148 (= lambda!9450 lambda!9448)))

(declare-fun bs!31149 () Bool)

(assert (= bs!31149 (and d!81281 b!276786)))

(assert (=> bs!31149 (= lambda!9450 lambda!9417)))

(declare-fun bs!31150 () Bool)

(assert (= bs!31150 (and d!81281 d!81191)))

(assert (=> bs!31150 (not (= lambda!9450 lambda!9440))))

(declare-fun bs!31151 () Bool)

(assert (= bs!31151 (and d!81281 b!277411)))

(assert (=> bs!31151 (not (= lambda!9450 lambda!9443))))

(declare-fun bs!31152 () Bool)

(declare-fun b!277592 () Bool)

(assert (= bs!31152 (and b!277592 b!276812)))

(declare-fun lambda!9451 () Int)

(assert (=> bs!31152 (= lambda!9451 lambda!9418)))

(declare-fun bs!31153 () Bool)

(assert (= bs!31153 (and b!277592 b!277523)))

(assert (=> bs!31153 (= lambda!9451 lambda!9449)))

(declare-fun bs!31154 () Bool)

(assert (= bs!31154 (and b!277592 d!81281)))

(assert (=> bs!31154 (not (= lambda!9451 lambda!9450))))

(declare-fun bs!31155 () Bool)

(assert (= bs!31155 (and b!277592 d!81251)))

(assert (=> bs!31155 (not (= lambda!9451 lambda!9448))))

(declare-fun bs!31156 () Bool)

(assert (= bs!31156 (and b!277592 b!276786)))

(assert (=> bs!31156 (not (= lambda!9451 lambda!9417))))

(declare-fun bs!31157 () Bool)

(assert (= bs!31157 (and b!277592 d!81191)))

(assert (=> bs!31157 (= lambda!9451 lambda!9440)))

(declare-fun bs!31158 () Bool)

(assert (= bs!31158 (and b!277592 b!277411)))

(assert (=> bs!31158 (= lambda!9451 lambda!9443)))

(declare-fun b!277599 () Bool)

(declare-fun e!172606 () Bool)

(assert (=> b!277599 (= e!172606 true)))

(declare-fun b!277598 () Bool)

(declare-fun e!172605 () Bool)

(assert (=> b!277598 (= e!172605 e!172606)))

(declare-fun b!277597 () Bool)

(declare-fun e!172604 () Bool)

(assert (=> b!277597 (= e!172604 e!172605)))

(assert (=> b!277592 e!172604))

(assert (= b!277598 b!277599))

(assert (= b!277597 b!277598))

(assert (= (and b!277592 ((_ is Cons!3868) rules!1920)) b!277597))

(assert (=> b!277599 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9451))))

(assert (=> b!277599 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9451))))

(assert (=> b!277592 true))

(declare-fun b!277586 () Bool)

(declare-fun e!172603 () Bool)

(declare-fun lt!115403 () Option!833)

(assert (=> b!277586 (= e!172603 (= (_1!2401 (v!14727 lt!115403)) (apply!800 lt!114998 0)))))

(declare-fun bm!15386 () Bool)

(declare-fun call!15393 () Token!1222)

(declare-fun call!15391 () Token!1222)

(assert (=> bm!15386 (= call!15393 call!15391)))

(declare-fun bm!15387 () Bool)

(declare-fun call!15394 () BalanceConc!2608)

(declare-fun call!15395 () BalanceConc!2608)

(assert (=> bm!15387 (= call!15394 call!15395)))

(declare-fun b!277587 () Bool)

(declare-fun e!172599 () Bool)

(assert (=> b!277587 (= e!172599 (<= 0 (size!3092 lt!114998)))))

(declare-fun bm!15388 () Bool)

(assert (=> bm!15388 (= call!15391 (apply!800 lt!114998 0))))

(declare-fun b!277588 () Bool)

(declare-fun e!172602 () BalanceConc!2608)

(assert (=> b!277588 (= e!172602 (charsOf!384 call!15393))))

(declare-fun bm!15389 () Bool)

(declare-fun c!52492 () Bool)

(declare-fun c!52493 () Bool)

(assert (=> bm!15389 (= call!15395 (charsOf!384 (ite c!52492 call!15391 (ite c!52493 separatorToken!170 call!15393))))))

(declare-fun b!277589 () Bool)

(assert (=> b!277589 (= e!172602 call!15395)))

(declare-fun b!277590 () Bool)

(declare-fun e!172601 () BalanceConc!2608)

(assert (=> b!277590 (= e!172601 (BalanceConc!2609 Empty!1300))))

(assert (=> b!277590 (= (print!350 thiss!17480 (singletonSeq!285 call!15393)) (printTailRec!313 thiss!17480 (singletonSeq!285 call!15393) 0 (BalanceConc!2609 Empty!1300)))))

(declare-fun lt!115404 () Unit!5064)

(declare-fun Unit!5078 () Unit!5064)

(assert (=> b!277590 (= lt!115404 Unit!5078)))

(declare-fun lt!115408 () Unit!5064)

(declare-fun lt!115410 () BalanceConc!2608)

(assert (=> b!277590 (= lt!115408 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!120 thiss!17480 rules!1920 (list!1595 call!15394) (list!1595 lt!115410)))))

(assert (=> b!277590 false))

(declare-fun lt!115401 () Unit!5064)

(declare-fun Unit!5079 () Unit!5064)

(assert (=> b!277590 (= lt!115401 Unit!5079)))

(declare-fun b!277591 () Bool)

(declare-fun e!172598 () Bool)

(assert (=> b!277591 (= e!172598 (not (= (_1!2401 (v!14727 lt!115403)) call!15391)))))

(declare-fun e!172600 () BalanceConc!2608)

(declare-fun e!172597 () BalanceConc!2608)

(assert (=> b!277592 (= e!172600 e!172597)))

(declare-fun lt!115397 () List!3879)

(assert (=> b!277592 (= lt!115397 (list!1598 lt!114998))))

(declare-fun lt!115405 () Unit!5064)

(assert (=> b!277592 (= lt!115405 (lemmaDropApply!212 lt!115397 0))))

(assert (=> b!277592 (= (head!904 (drop!225 lt!115397 0)) (apply!802 lt!115397 0))))

(declare-fun lt!115406 () Unit!5064)

(assert (=> b!277592 (= lt!115406 lt!115405)))

(declare-fun lt!115400 () List!3879)

(assert (=> b!277592 (= lt!115400 (list!1598 lt!114998))))

(declare-fun lt!115409 () Unit!5064)

(assert (=> b!277592 (= lt!115409 (lemmaDropTail!204 lt!115400 0))))

(assert (=> b!277592 (= (tail!495 (drop!225 lt!115400 0)) (drop!225 lt!115400 (+ 0 1)))))

(declare-fun lt!115399 () Unit!5064)

(assert (=> b!277592 (= lt!115399 lt!115409)))

(declare-fun lt!115402 () Unit!5064)

(assert (=> b!277592 (= lt!115402 (forallContained!294 (list!1598 lt!114998) lambda!9451 (apply!800 lt!114998 0)))))

(assert (=> b!277592 (= lt!115410 (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 lt!114998 separatorToken!170 (+ 0 1)))))

(assert (=> b!277592 (= lt!115403 (maxPrefixZipperSequence!306 thiss!17480 rules!1920 (++!1024 (charsOf!384 (apply!800 lt!114998 0)) lt!115410)))))

(declare-fun res!126822 () Bool)

(assert (=> b!277592 (= res!126822 ((_ is Some!832) lt!115403))))

(assert (=> b!277592 (=> (not res!126822) (not e!172603))))

(assert (=> b!277592 (= c!52492 e!172603)))

(declare-fun lt!115398 () BalanceConc!2608)

(assert (=> d!81281 (= (list!1595 lt!115398) (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (dropList!172 lt!114998 0) separatorToken!170))))

(assert (=> d!81281 (= lt!115398 e!172600)))

(declare-fun c!52491 () Bool)

(assert (=> d!81281 (= c!52491 (>= 0 (size!3092 lt!114998)))))

(declare-fun lt!115407 () Unit!5064)

(assert (=> d!81281 (= lt!115407 (lemmaContentSubsetPreservesForall!116 (list!1598 lt!114998) (dropList!172 lt!114998 0) lambda!9450))))

(assert (=> d!81281 e!172599))

(declare-fun res!126824 () Bool)

(assert (=> d!81281 (=> (not res!126824) (not e!172599))))

(assert (=> d!81281 (= res!126824 (>= 0 0))))

(assert (=> d!81281 (= (printWithSeparatorTokenWhenNeededRec!300 thiss!17480 rules!1920 lt!114998 separatorToken!170 0) lt!115398)))

(declare-fun b!277593 () Bool)

(declare-fun call!15392 () BalanceConc!2608)

(assert (=> b!277593 (= e!172601 (++!1024 call!15392 lt!115410))))

(declare-fun b!277594 () Bool)

(assert (=> b!277594 (= c!52493 e!172598)))

(declare-fun res!126823 () Bool)

(assert (=> b!277594 (=> (not res!126823) (not e!172598))))

(assert (=> b!277594 (= res!126823 ((_ is Some!832) lt!115403))))

(assert (=> b!277594 (= e!172597 e!172601)))

(declare-fun b!277595 () Bool)

(assert (=> b!277595 (= e!172597 call!15392)))

(declare-fun b!277596 () Bool)

(assert (=> b!277596 (= e!172600 (BalanceConc!2609 Empty!1300))))

(declare-fun bm!15390 () Bool)

(declare-fun c!52490 () Bool)

(assert (=> bm!15390 (= c!52490 c!52492)))

(assert (=> bm!15390 (= call!15392 (++!1024 e!172602 (ite c!52492 lt!115410 call!15394)))))

(assert (= (and d!81281 res!126824) b!277587))

(assert (= (and d!81281 c!52491) b!277596))

(assert (= (and d!81281 (not c!52491)) b!277592))

(assert (= (and b!277592 res!126822) b!277586))

(assert (= (and b!277592 c!52492) b!277595))

(assert (= (and b!277592 (not c!52492)) b!277594))

(assert (= (and b!277594 res!126823) b!277591))

(assert (= (and b!277594 c!52493) b!277593))

(assert (= (and b!277594 (not c!52493)) b!277590))

(assert (= (or b!277593 b!277590) bm!15386))

(assert (= (or b!277593 b!277590) bm!15387))

(assert (= (or b!277595 bm!15386 b!277591) bm!15388))

(assert (= (or b!277595 bm!15387) bm!15389))

(assert (= (or b!277595 b!277593) bm!15390))

(assert (= (and bm!15390 c!52490) b!277589))

(assert (= (and bm!15390 (not c!52490)) b!277588))

(declare-fun m!354543 () Bool)

(assert (=> bm!15390 m!354543))

(declare-fun m!354545 () Bool)

(assert (=> b!277590 m!354545))

(declare-fun m!354547 () Bool)

(assert (=> b!277590 m!354547))

(declare-fun m!354549 () Bool)

(assert (=> b!277590 m!354549))

(assert (=> b!277590 m!354545))

(declare-fun m!354551 () Bool)

(assert (=> b!277590 m!354551))

(assert (=> b!277590 m!354545))

(declare-fun m!354553 () Bool)

(assert (=> b!277590 m!354553))

(assert (=> b!277590 m!354549))

(assert (=> b!277590 m!354553))

(declare-fun m!354555 () Bool)

(assert (=> b!277590 m!354555))

(declare-fun m!354557 () Bool)

(assert (=> b!277593 m!354557))

(declare-fun m!354559 () Bool)

(assert (=> b!277586 m!354559))

(declare-fun m!354561 () Bool)

(assert (=> b!277587 m!354561))

(declare-fun m!354563 () Bool)

(assert (=> bm!15389 m!354563))

(assert (=> d!81281 m!354561))

(assert (=> d!81281 m!354211))

(declare-fun m!354565 () Bool)

(assert (=> d!81281 m!354565))

(assert (=> d!81281 m!354211))

(declare-fun m!354567 () Bool)

(assert (=> d!81281 m!354567))

(declare-fun m!354569 () Bool)

(assert (=> d!81281 m!354569))

(assert (=> d!81281 m!354567))

(assert (=> d!81281 m!354567))

(declare-fun m!354571 () Bool)

(assert (=> d!81281 m!354571))

(assert (=> bm!15388 m!354559))

(declare-fun m!354573 () Bool)

(assert (=> b!277592 m!354573))

(assert (=> b!277592 m!354573))

(declare-fun m!354575 () Bool)

(assert (=> b!277592 m!354575))

(assert (=> b!277592 m!354211))

(assert (=> b!277592 m!354559))

(declare-fun m!354577 () Bool)

(assert (=> b!277592 m!354577))

(declare-fun m!354579 () Bool)

(assert (=> b!277592 m!354579))

(declare-fun m!354581 () Bool)

(assert (=> b!277592 m!354581))

(declare-fun m!354583 () Bool)

(assert (=> b!277592 m!354583))

(declare-fun m!354585 () Bool)

(assert (=> b!277592 m!354585))

(assert (=> b!277592 m!354559))

(declare-fun m!354587 () Bool)

(assert (=> b!277592 m!354587))

(declare-fun m!354589 () Bool)

(assert (=> b!277592 m!354589))

(assert (=> b!277592 m!354587))

(assert (=> b!277592 m!354581))

(assert (=> b!277592 m!354211))

(assert (=> b!277592 m!354559))

(declare-fun m!354591 () Bool)

(assert (=> b!277592 m!354591))

(declare-fun m!354593 () Bool)

(assert (=> b!277592 m!354593))

(assert (=> b!277592 m!354579))

(declare-fun m!354595 () Bool)

(assert (=> b!277592 m!354595))

(declare-fun m!354597 () Bool)

(assert (=> b!277592 m!354597))

(declare-fun m!354599 () Bool)

(assert (=> b!277588 m!354599))

(assert (=> b!276820 d!81281))

(declare-fun bs!31159 () Bool)

(declare-fun b!277604 () Bool)

(assert (= bs!31159 (and b!277604 b!276812)))

(declare-fun lambda!9452 () Int)

(assert (=> bs!31159 (= lambda!9452 lambda!9418)))

(declare-fun bs!31160 () Bool)

(assert (= bs!31160 (and b!277604 b!277523)))

(assert (=> bs!31160 (= lambda!9452 lambda!9449)))

(declare-fun bs!31161 () Bool)

(assert (= bs!31161 (and b!277604 d!81251)))

(assert (=> bs!31161 (not (= lambda!9452 lambda!9448))))

(declare-fun bs!31162 () Bool)

(assert (= bs!31162 (and b!277604 b!276786)))

(assert (=> bs!31162 (not (= lambda!9452 lambda!9417))))

(declare-fun bs!31163 () Bool)

(assert (= bs!31163 (and b!277604 b!277592)))

(assert (=> bs!31163 (= lambda!9452 lambda!9451)))

(declare-fun bs!31164 () Bool)

(assert (= bs!31164 (and b!277604 d!81281)))

(assert (=> bs!31164 (not (= lambda!9452 lambda!9450))))

(declare-fun bs!31165 () Bool)

(assert (= bs!31165 (and b!277604 d!81191)))

(assert (=> bs!31165 (= lambda!9452 lambda!9440)))

(declare-fun bs!31166 () Bool)

(assert (= bs!31166 (and b!277604 b!277411)))

(assert (=> bs!31166 (= lambda!9452 lambda!9443)))

(declare-fun b!277612 () Bool)

(declare-fun e!172614 () Bool)

(assert (=> b!277612 (= e!172614 true)))

(declare-fun b!277611 () Bool)

(declare-fun e!172613 () Bool)

(assert (=> b!277611 (= e!172613 e!172614)))

(declare-fun b!277610 () Bool)

(declare-fun e!172612 () Bool)

(assert (=> b!277610 (= e!172612 e!172613)))

(assert (=> b!277604 e!172612))

(assert (= b!277611 b!277612))

(assert (= b!277610 b!277611))

(assert (= (and b!277604 ((_ is Cons!3868) rules!1920)) b!277610))

(assert (=> b!277612 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9452))))

(assert (=> b!277612 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 rules!1920)))) (dynLambda!2012 order!3011 lambda!9452))))

(assert (=> b!277604 true))

(declare-fun b!277600 () Bool)

(declare-fun e!172611 () BalanceConc!2608)

(assert (=> b!277600 (= e!172611 (charsOf!384 separatorToken!170))))

(declare-fun b!277601 () Bool)

(declare-fun e!172610 () List!3877)

(assert (=> b!277601 (= e!172610 Nil!3867)))

(declare-fun b!277602 () Bool)

(declare-fun e!172608 () List!3877)

(declare-fun call!15398 () List!3877)

(assert (=> b!277602 (= e!172608 call!15398)))

(declare-fun b!277603 () Bool)

(declare-fun c!52496 () Bool)

(declare-fun lt!115415 () Option!832)

(assert (=> b!277603 (= c!52496 (and ((_ is Some!831) lt!115415) (not (= (_1!2399 (v!14726 lt!115415)) (h!9266 tokens!465)))))))

(declare-fun e!172607 () List!3877)

(assert (=> b!277603 (= e!172608 e!172607)))

(declare-fun call!15397 () BalanceConc!2608)

(declare-fun c!52498 () Bool)

(declare-fun call!15400 () List!3877)

(declare-fun bm!15391 () Bool)

(assert (=> bm!15391 (= call!15400 (list!1595 (ite c!52498 call!15397 e!172611)))))

(declare-fun bm!15392 () Bool)

(declare-fun call!15396 () BalanceConc!2608)

(assert (=> bm!15392 (= call!15396 call!15397)))

(assert (=> b!277604 (= e!172610 e!172608)))

(declare-fun lt!115414 () Unit!5064)

(assert (=> b!277604 (= lt!115414 (forallContained!294 tokens!465 lambda!9452 (h!9266 tokens!465)))))

(declare-fun lt!115416 () List!3877)

(assert (=> b!277604 (= lt!115416 (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 (t!39105 tokens!465) separatorToken!170))))

(assert (=> b!277604 (= lt!115415 (maxPrefix!343 thiss!17480 rules!1920 (++!1022 (list!1595 (charsOf!384 (h!9266 tokens!465))) lt!115416)))))

(assert (=> b!277604 (= c!52498 (and ((_ is Some!831) lt!115415) (= (_1!2399 (v!14726 lt!115415)) (h!9266 tokens!465))))))

(declare-fun d!81283 () Bool)

(declare-fun c!52495 () Bool)

(assert (=> d!81283 (= c!52495 ((_ is Cons!3869) tokens!465))))

(assert (=> d!81283 (= (printWithSeparatorTokenWhenNeededList!308 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!172610)))

(declare-fun bm!15393 () Bool)

(declare-fun c!52497 () Bool)

(assert (=> bm!15393 (= c!52497 c!52498)))

(declare-fun call!15399 () List!3877)

(declare-fun e!172609 () List!3877)

(assert (=> bm!15393 (= call!15398 (++!1022 e!172609 (ite c!52498 lt!115416 call!15399)))))

(declare-fun b!277605 () Bool)

(assert (=> b!277605 (= e!172607 Nil!3867)))

(assert (=> b!277605 (= (print!350 thiss!17480 (singletonSeq!285 (h!9266 tokens!465))) (printTailRec!313 thiss!17480 (singletonSeq!285 (h!9266 tokens!465)) 0 (BalanceConc!2609 Empty!1300)))))

(declare-fun lt!115411 () Unit!5064)

(declare-fun Unit!5080 () Unit!5064)

(assert (=> b!277605 (= lt!115411 Unit!5080)))

(declare-fun lt!115413 () Unit!5064)

(assert (=> b!277605 (= lt!115413 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!120 thiss!17480 rules!1920 call!15399 lt!115416))))

(assert (=> b!277605 false))

(declare-fun lt!115412 () Unit!5064)

(declare-fun Unit!5081 () Unit!5064)

(assert (=> b!277605 (= lt!115412 Unit!5081)))

(declare-fun b!277606 () Bool)

(assert (=> b!277606 (= e!172609 call!15400)))

(declare-fun bm!15394 () Bool)

(assert (=> bm!15394 (= call!15397 (charsOf!384 (h!9266 tokens!465)))))

(declare-fun b!277607 () Bool)

(assert (=> b!277607 (= e!172609 (list!1595 call!15396))))

(declare-fun b!277608 () Bool)

(assert (=> b!277608 (= e!172611 call!15396)))

(declare-fun bm!15395 () Bool)

(assert (=> bm!15395 (= call!15399 call!15400)))

(declare-fun c!52494 () Bool)

(assert (=> bm!15395 (= c!52494 c!52496)))

(declare-fun b!277609 () Bool)

(assert (=> b!277609 (= e!172607 (++!1022 call!15398 lt!115416))))

(assert (= (and d!81283 c!52495) b!277604))

(assert (= (and d!81283 (not c!52495)) b!277601))

(assert (= (and b!277604 c!52498) b!277602))

(assert (= (and b!277604 (not c!52498)) b!277603))

(assert (= (and b!277603 c!52496) b!277609))

(assert (= (and b!277603 (not c!52496)) b!277605))

(assert (= (or b!277609 b!277605) bm!15392))

(assert (= (or b!277609 b!277605) bm!15395))

(assert (= (and bm!15395 c!52494) b!277600))

(assert (= (and bm!15395 (not c!52494)) b!277608))

(assert (= (or b!277602 bm!15392) bm!15394))

(assert (= (or b!277602 bm!15395) bm!15391))

(assert (= (or b!277602 b!277609) bm!15393))

(assert (= (and bm!15393 c!52497) b!277606))

(assert (= (and bm!15393 (not c!52497)) b!277607))

(assert (=> b!277605 m!353315))

(assert (=> b!277605 m!353315))

(assert (=> b!277605 m!353605))

(assert (=> b!277605 m!353315))

(declare-fun m!354601 () Bool)

(assert (=> b!277605 m!354601))

(declare-fun m!354603 () Bool)

(assert (=> b!277605 m!354603))

(assert (=> b!277604 m!353369))

(assert (=> b!277604 m!353373))

(assert (=> b!277604 m!353357))

(assert (=> b!277604 m!353373))

(declare-fun m!354605 () Bool)

(assert (=> b!277604 m!354605))

(assert (=> b!277604 m!354605))

(declare-fun m!354607 () Bool)

(assert (=> b!277604 m!354607))

(declare-fun m!354609 () Bool)

(assert (=> b!277604 m!354609))

(assert (=> b!277604 m!353369))

(assert (=> b!277600 m!353359))

(declare-fun m!354611 () Bool)

(assert (=> bm!15391 m!354611))

(assert (=> bm!15394 m!353369))

(declare-fun m!354613 () Bool)

(assert (=> bm!15393 m!354613))

(declare-fun m!354615 () Bool)

(assert (=> b!277609 m!354615))

(declare-fun m!354617 () Bool)

(assert (=> b!277607 m!354617))

(assert (=> b!276820 d!81283))

(declare-fun b!277615 () Bool)

(declare-fun e!172617 () Bool)

(assert (=> b!277615 (= e!172617 true)))

(declare-fun b!277614 () Bool)

(declare-fun e!172616 () Bool)

(assert (=> b!277614 (= e!172616 e!172617)))

(declare-fun b!277613 () Bool)

(declare-fun e!172615 () Bool)

(assert (=> b!277613 (= e!172615 e!172616)))

(assert (=> b!276830 e!172615))

(assert (= b!277614 b!277615))

(assert (= b!277613 b!277614))

(assert (= (and b!276830 ((_ is Cons!3868) (t!39104 rules!1920))) b!277613))

(assert (=> b!277615 (< (dynLambda!2011 order!3009 (toValue!1482 (transformation!739 (h!9265 (t!39104 rules!1920))))) (dynLambda!2012 order!3011 lambda!9418))))

(assert (=> b!277615 (< (dynLambda!2013 order!3013 (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920))))) (dynLambda!2012 order!3011 lambda!9418))))

(declare-fun b!277627 () Bool)

(declare-fun e!172620 () Bool)

(declare-fun tp!103828 () Bool)

(declare-fun tp!103827 () Bool)

(assert (=> b!277627 (= e!172620 (and tp!103828 tp!103827))))

(declare-fun b!277626 () Bool)

(declare-fun tp_is_empty!1831 () Bool)

(assert (=> b!277626 (= e!172620 tp_is_empty!1831)))

(declare-fun b!277628 () Bool)

(declare-fun tp!103825 () Bool)

(assert (=> b!277628 (= e!172620 tp!103825)))

(assert (=> b!276794 (= tp!103743 e!172620)))

(declare-fun b!277629 () Bool)

(declare-fun tp!103824 () Bool)

(declare-fun tp!103826 () Bool)

(assert (=> b!277629 (= e!172620 (and tp!103824 tp!103826))))

(assert (= (and b!276794 ((_ is ElementMatch!963) (regex!739 (rule!1326 separatorToken!170)))) b!277626))

(assert (= (and b!276794 ((_ is Concat!1725) (regex!739 (rule!1326 separatorToken!170)))) b!277627))

(assert (= (and b!276794 ((_ is Star!963) (regex!739 (rule!1326 separatorToken!170)))) b!277628))

(assert (= (and b!276794 ((_ is Union!963) (regex!739 (rule!1326 separatorToken!170)))) b!277629))

(declare-fun b!277631 () Bool)

(declare-fun e!172621 () Bool)

(declare-fun tp!103833 () Bool)

(declare-fun tp!103832 () Bool)

(assert (=> b!277631 (= e!172621 (and tp!103833 tp!103832))))

(declare-fun b!277630 () Bool)

(assert (=> b!277630 (= e!172621 tp_is_empty!1831)))

(declare-fun b!277632 () Bool)

(declare-fun tp!103830 () Bool)

(assert (=> b!277632 (= e!172621 tp!103830)))

(assert (=> b!276806 (= tp!103745 e!172621)))

(declare-fun b!277633 () Bool)

(declare-fun tp!103829 () Bool)

(declare-fun tp!103831 () Bool)

(assert (=> b!277633 (= e!172621 (and tp!103829 tp!103831))))

(assert (= (and b!276806 ((_ is ElementMatch!963) (regex!739 (rule!1326 (h!9266 tokens!465))))) b!277630))

(assert (= (and b!276806 ((_ is Concat!1725) (regex!739 (rule!1326 (h!9266 tokens!465))))) b!277631))

(assert (= (and b!276806 ((_ is Star!963) (regex!739 (rule!1326 (h!9266 tokens!465))))) b!277632))

(assert (= (and b!276806 ((_ is Union!963) (regex!739 (rule!1326 (h!9266 tokens!465))))) b!277633))

(declare-fun b!277638 () Bool)

(declare-fun e!172624 () Bool)

(declare-fun tp!103836 () Bool)

(assert (=> b!277638 (= e!172624 (and tp_is_empty!1831 tp!103836))))

(assert (=> b!276796 (= tp!103742 e!172624)))

(assert (= (and b!276796 ((_ is Cons!3867) (originalCharacters!782 separatorToken!170))) b!277638))

(declare-fun b!277652 () Bool)

(declare-fun b_free!10245 () Bool)

(declare-fun b_next!10245 () Bool)

(assert (=> b!277652 (= b_free!10245 (not b_next!10245))))

(declare-fun tp!103849 () Bool)

(declare-fun b_and!22289 () Bool)

(assert (=> b!277652 (= tp!103849 b_and!22289)))

(declare-fun b_free!10247 () Bool)

(declare-fun b_next!10247 () Bool)

(assert (=> b!277652 (= b_free!10247 (not b_next!10247))))

(declare-fun tb!15853 () Bool)

(declare-fun t!39164 () Bool)

(assert (=> (and b!277652 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170)))) t!39164) tb!15853))

(declare-fun result!19562 () Bool)

(assert (= result!19562 result!19526))

(assert (=> b!277267 t!39164))

(declare-fun t!39166 () Bool)

(declare-fun tb!15855 () Bool)

(assert (=> (and b!277652 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465))))) t!39166) tb!15855))

(declare-fun result!19564 () Bool)

(assert (= result!19564 result!19534))

(assert (=> b!277332 t!39166))

(assert (=> d!81259 t!39164))

(assert (=> d!81263 t!39166))

(declare-fun b_and!22291 () Bool)

(declare-fun tp!103847 () Bool)

(assert (=> b!277652 (= tp!103847 (and (=> t!39164 result!19562) (=> t!39166 result!19564) b_and!22291))))

(declare-fun e!172638 () Bool)

(assert (=> b!277652 (= e!172638 (and tp!103849 tp!103847))))

(declare-fun e!172641 () Bool)

(declare-fun b!277650 () Bool)

(declare-fun tp!103848 () Bool)

(declare-fun e!172642 () Bool)

(assert (=> b!277650 (= e!172641 (and (inv!21 (value!25377 (h!9266 (t!39105 tokens!465)))) e!172642 tp!103848))))

(declare-fun e!172639 () Bool)

(assert (=> b!276797 (= tp!103747 e!172639)))

(declare-fun tp!103851 () Bool)

(declare-fun b!277651 () Bool)

(assert (=> b!277651 (= e!172642 (and tp!103851 (inv!4785 (tag!949 (rule!1326 (h!9266 (t!39105 tokens!465))))) (inv!4788 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) e!172638))))

(declare-fun b!277649 () Bool)

(declare-fun tp!103850 () Bool)

(assert (=> b!277649 (= e!172639 (and (inv!4789 (h!9266 (t!39105 tokens!465))) e!172641 tp!103850))))

(assert (= b!277651 b!277652))

(assert (= b!277650 b!277651))

(assert (= b!277649 b!277650))

(assert (= (and b!276797 ((_ is Cons!3869) (t!39105 tokens!465))) b!277649))

(declare-fun m!354619 () Bool)

(assert (=> b!277650 m!354619))

(declare-fun m!354621 () Bool)

(assert (=> b!277651 m!354621))

(declare-fun m!354623 () Bool)

(assert (=> b!277651 m!354623))

(declare-fun m!354625 () Bool)

(assert (=> b!277649 m!354625))

(declare-fun b!277654 () Bool)

(declare-fun e!172643 () Bool)

(declare-fun tp!103856 () Bool)

(declare-fun tp!103855 () Bool)

(assert (=> b!277654 (= e!172643 (and tp!103856 tp!103855))))

(declare-fun b!277653 () Bool)

(assert (=> b!277653 (= e!172643 tp_is_empty!1831)))

(declare-fun b!277655 () Bool)

(declare-fun tp!103853 () Bool)

(assert (=> b!277655 (= e!172643 tp!103853)))

(assert (=> b!276808 (= tp!103749 e!172643)))

(declare-fun b!277656 () Bool)

(declare-fun tp!103852 () Bool)

(declare-fun tp!103854 () Bool)

(assert (=> b!277656 (= e!172643 (and tp!103852 tp!103854))))

(assert (= (and b!276808 ((_ is ElementMatch!963) (regex!739 (h!9265 rules!1920)))) b!277653))

(assert (= (and b!276808 ((_ is Concat!1725) (regex!739 (h!9265 rules!1920)))) b!277654))

(assert (= (and b!276808 ((_ is Star!963) (regex!739 (h!9265 rules!1920)))) b!277655))

(assert (= (and b!276808 ((_ is Union!963) (regex!739 (h!9265 rules!1920)))) b!277656))

(declare-fun b!277657 () Bool)

(declare-fun e!172644 () Bool)

(declare-fun tp!103857 () Bool)

(assert (=> b!277657 (= e!172644 (and tp_is_empty!1831 tp!103857))))

(assert (=> b!276811 (= tp!103740 e!172644)))

(assert (= (and b!276811 ((_ is Cons!3867) (originalCharacters!782 (h!9266 tokens!465)))) b!277657))

(declare-fun b!277668 () Bool)

(declare-fun b_free!10249 () Bool)

(declare-fun b_next!10249 () Bool)

(assert (=> b!277668 (= b_free!10249 (not b_next!10249))))

(declare-fun tp!103868 () Bool)

(declare-fun b_and!22293 () Bool)

(assert (=> b!277668 (= tp!103868 b_and!22293)))

(declare-fun b_free!10251 () Bool)

(declare-fun b_next!10251 () Bool)

(assert (=> b!277668 (= b_free!10251 (not b_next!10251))))

(declare-fun t!39168 () Bool)

(declare-fun tb!15857 () Bool)

(assert (=> (and b!277668 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170)))) t!39168) tb!15857))

(declare-fun result!19568 () Bool)

(assert (= result!19568 result!19526))

(assert (=> b!277267 t!39168))

(declare-fun tb!15859 () Bool)

(declare-fun t!39170 () Bool)

(assert (=> (and b!277668 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465))))) t!39170) tb!15859))

(declare-fun result!19570 () Bool)

(assert (= result!19570 result!19534))

(assert (=> b!277332 t!39170))

(assert (=> d!81259 t!39168))

(assert (=> d!81263 t!39170))

(declare-fun b_and!22295 () Bool)

(declare-fun tp!103869 () Bool)

(assert (=> b!277668 (= tp!103869 (and (=> t!39168 result!19568) (=> t!39170 result!19570) b_and!22295))))

(declare-fun e!172653 () Bool)

(assert (=> b!277668 (= e!172653 (and tp!103868 tp!103869))))

(declare-fun e!172656 () Bool)

(declare-fun tp!103867 () Bool)

(declare-fun b!277667 () Bool)

(assert (=> b!277667 (= e!172656 (and tp!103867 (inv!4785 (tag!949 (h!9265 (t!39104 rules!1920)))) (inv!4788 (transformation!739 (h!9265 (t!39104 rules!1920)))) e!172653))))

(declare-fun b!277666 () Bool)

(declare-fun e!172654 () Bool)

(declare-fun tp!103866 () Bool)

(assert (=> b!277666 (= e!172654 (and e!172656 tp!103866))))

(assert (=> b!276800 (= tp!103737 e!172654)))

(assert (= b!277667 b!277668))

(assert (= b!277666 b!277667))

(assert (= (and b!276800 ((_ is Cons!3868) (t!39104 rules!1920))) b!277666))

(declare-fun m!354627 () Bool)

(assert (=> b!277667 m!354627))

(declare-fun m!354629 () Bool)

(assert (=> b!277667 m!354629))

(declare-fun b_lambda!8971 () Bool)

(assert (= b_lambda!8949 (or (and b!277668 b_free!10251 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276821 b_free!10231 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276813 b_free!10235 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276789 b_free!10227) (and b!277652 b_free!10247 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) b_lambda!8971)))

(declare-fun b_lambda!8973 () Bool)

(assert (= b_lambda!8951 (or (and b!276789 b_free!10227 (= (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!277652 b_free!10247 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!277668 b_free!10251 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!276821 b_free!10231 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!276813 b_free!10235) b_lambda!8973)))

(declare-fun b_lambda!8975 () Bool)

(assert (= b_lambda!8935 (or b!276812 b_lambda!8975)))

(declare-fun bs!31167 () Bool)

(declare-fun d!81285 () Bool)

(assert (= bs!31167 (and d!81285 b!276812)))

(assert (=> bs!31167 (= (dynLambda!2015 lambda!9418 (h!9266 tokens!465)) (rulesProduceIndividualToken!374 thiss!17480 rules!1920 (h!9266 tokens!465)))))

(assert (=> bs!31167 m!353323))

(assert (=> d!81059 d!81285))

(declare-fun b_lambda!8977 () Bool)

(assert (= b_lambda!8969 (or (and b!276789 b_free!10227 (= (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!277652 b_free!10247 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!277668 b_free!10251 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!276821 b_free!10231 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))))) (and b!276813 b_free!10235) b_lambda!8977)))

(declare-fun b_lambda!8979 () Bool)

(assert (= b_lambda!8947 (or b!276786 b_lambda!8979)))

(declare-fun bs!31168 () Bool)

(declare-fun d!81287 () Bool)

(assert (= bs!31168 (and d!81287 b!276786)))

(assert (=> bs!31168 (= (dynLambda!2015 lambda!9417 (h!9266 tokens!465)) (not (isSeparator!739 (rule!1326 (h!9266 tokens!465)))))))

(assert (=> b!277103 d!81287))

(declare-fun b_lambda!8981 () Bool)

(assert (= b_lambda!8967 (or (and b!277668 b_free!10251 (= (toChars!1341 (transformation!739 (h!9265 (t!39104 rules!1920)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276821 b_free!10231 (= (toChars!1341 (transformation!739 (h!9265 rules!1920))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276813 b_free!10235 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 tokens!465)))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) (and b!276789 b_free!10227) (and b!277652 b_free!10247 (= (toChars!1341 (transformation!739 (rule!1326 (h!9266 (t!39105 tokens!465))))) (toChars!1341 (transformation!739 (rule!1326 separatorToken!170))))) b_lambda!8981)))

(check-sat (not d!81219) (not d!81091) (not b!277628) (not bm!15317) (not b!277273) (not b!277585) (not b!277581) (not b!277613) (not b!276968) (not bm!15385) (not d!81191) (not b!277607) (not b!277031) (not b!277041) (not bm!15389) (not b!277584) (not b!277518) (not b!277627) (not d!81261) (not b!277262) (not b!277654) (not b_next!10227) (not b!276920) (not b!277288) (not b!277592) (not b!277153) (not d!81183) (not b!277097) (not d!81123) (not b!277331) (not d!81139) (not b!276990) (not b!277597) (not b_lambda!8979) (not b!277578) (not bm!15334) (not b!276993) (not bm!15379) (not b!277656) (not d!81089) (not b_next!10247) (not b!277577) (not d!81129) (not b!277587) (not b!277407) (not d!81075) (not b!277657) (not b!277582) (not b!277090) (not b!277651) (not b!277105) (not d!81145) (not b!276921) (not b!277638) (not b!277523) (not b!277211) (not b!277421) (not bm!15364) (not d!81079) (not d!81265) (not d!81179) (not b!277213) (not b!277600) (not b!277212) (not b!277567) (not bm!15391) (not tb!15839) (not b!277151) (not d!81225) (not b_next!10225) b_and!22287 (not d!81269) (not b!277317) (not bm!15381) (not b!277633) (not d!81085) (not d!81221) (not b!277267) (not b!277134) (not tb!15833) (not b!277666) (not b!277667) (not b!277655) (not d!81223) (not d!81115) (not b!277524) (not b_next!10235) (not bm!15299) (not b!277034) b_and!22293 (not b!277586) b_and!22295 (not d!81267) (not b!277517) (not bm!15388) (not b!277261) (not d!81073) (not b!277334) (not d!81251) (not d!81259) (not b!277149) b_and!22291 (not b!276998) (not b!277155) (not b!277333) (not d!81249) (not b!276991) (not b!277588) (not b!277590) (not b!276916) (not d!81127) (not b!276989) (not b!277287) (not b_next!10231) (not b!276918) (not b!277519) (not d!81165) b_and!22225 (not d!81181) (not b!277327) (not d!81087) (not b!277565) (not b!277629) (not b!277343) (not b!277150) (not b!277411) (not b!277533) (not b!277032) (not b!277104) (not d!81275) (not b!277416) (not b_next!10233) (not b!277146) (not b!277532) (not b!277318) b_and!22283 (not b_next!10249) (not b!276997) (not b!277280) (not b!276919) (not b!277330) (not b_lambda!8977) (not d!81263) (not b!277344) (not b!277632) (not b!277566) (not b!277631) (not bm!15365) (not b!277521) (not b_lambda!8971) (not d!81059) (not b!276994) (not bs!31167) (not b!276970) (not d!81217) (not bm!15380) (not b!277610) (not bm!15393) b_and!22289 (not b!277417) (not b_next!10229) (not d!81277) (not d!81069) (not d!81159) (not b!277650) (not b!277649) (not b!277000) (not b!277609) (not b!277576) (not d!81057) (not b!277339) (not b!277579) (not b!277593) (not b!277422) (not b!277605) (not bm!15390) (not b!277088) (not b!276917) (not b!276999) (not b!277159) (not d!81071) (not b!277580) (not b!276996) (not b!277133) (not b!276914) (not bm!15362) (not d!81035) b_and!22229 (not b!277604) (not b!277154) (not b!277156) (not bm!15384) (not b!277340) (not b!277570) (not b!277268) (not b!276992) (not d!81271) (not d!81281) (not d!81081) (not b_lambda!8973) (not b!276969) (not d!81279) (not b_lambda!8975) (not d!81043) (not b!277569) (not bm!15394) (not b!277158) (not b_lambda!8981) (not b!277131) tp_is_empty!1831 (not b!277009) (not b!277414) (not d!81061) (not d!81067) (not d!81213) (not b!277152) b_and!22221 (not b!276924) (not b!277528) (not b!277332) b_and!22285 (not b!277132) (not b!277412) (not b_next!10251) (not b_next!10245))
(check-sat (not b_next!10227) (not b_next!10247) (not b_next!10225) b_and!22287 (not b_next!10235) b_and!22293 b_and!22295 b_and!22291 b_and!22229 b_and!22221 b_and!22285 b_and!22225 (not b_next!10231) (not b_next!10233) b_and!22283 (not b_next!10249) b_and!22289 (not b_next!10229) (not b_next!10251) (not b_next!10245))
