; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338546 () Bool)

(assert start!338546)

(declare-fun b!3631365 () Bool)

(declare-fun b_free!94977 () Bool)

(declare-fun b_next!95681 () Bool)

(assert (=> b!3631365 (= b_free!94977 (not b_next!95681))))

(declare-fun tp!1108651 () Bool)

(declare-fun b_and!266523 () Bool)

(assert (=> b!3631365 (= tp!1108651 b_and!266523)))

(declare-fun b_free!94979 () Bool)

(declare-fun b_next!95683 () Bool)

(assert (=> b!3631365 (= b_free!94979 (not b_next!95683))))

(declare-fun tp!1108645 () Bool)

(declare-fun b_and!266525 () Bool)

(assert (=> b!3631365 (= tp!1108645 b_and!266525)))

(declare-fun b!3631367 () Bool)

(declare-fun b_free!94981 () Bool)

(declare-fun b_next!95685 () Bool)

(assert (=> b!3631367 (= b_free!94981 (not b_next!95685))))

(declare-fun tp!1108652 () Bool)

(declare-fun b_and!266527 () Bool)

(assert (=> b!3631367 (= tp!1108652 b_and!266527)))

(declare-fun b_free!94983 () Bool)

(declare-fun b_next!95687 () Bool)

(assert (=> b!3631367 (= b_free!94983 (not b_next!95687))))

(declare-fun tp!1108646 () Bool)

(declare-fun b_and!266529 () Bool)

(assert (=> b!3631367 (= tp!1108646 b_and!266529)))

(declare-fun b!3631368 () Bool)

(declare-fun b_free!94985 () Bool)

(declare-fun b_next!95689 () Bool)

(assert (=> b!3631368 (= b_free!94985 (not b_next!95689))))

(declare-fun tp!1108641 () Bool)

(declare-fun b_and!266531 () Bool)

(assert (=> b!3631368 (= tp!1108641 b_and!266531)))

(declare-fun b_free!94987 () Bool)

(declare-fun b_next!95691 () Bool)

(assert (=> b!3631368 (= b_free!94987 (not b_next!95691))))

(declare-fun tp!1108654 () Bool)

(declare-fun b_and!266533 () Bool)

(assert (=> b!3631368 (= tp!1108654 b_and!266533)))

(declare-fun b!3631364 () Bool)

(declare-fun b_free!94989 () Bool)

(declare-fun b_next!95693 () Bool)

(assert (=> b!3631364 (= b_free!94989 (not b_next!95693))))

(declare-fun tp!1108648 () Bool)

(declare-fun b_and!266535 () Bool)

(assert (=> b!3631364 (= tp!1108648 b_and!266535)))

(declare-fun b_free!94991 () Bool)

(declare-fun b_next!95695 () Bool)

(assert (=> b!3631364 (= b_free!94991 (not b_next!95695))))

(declare-fun tp!1108643 () Bool)

(declare-fun b_and!266537 () Bool)

(assert (=> b!3631364 (= tp!1108643 b_and!266537)))

(declare-fun b!3631348 () Bool)

(declare-fun e!2247798 () Bool)

(declare-datatypes ((List!38383 0))(
  ( (Nil!38259) (Cons!38259 (h!43679 (_ BitVec 16)) (t!295246 List!38383)) )
))
(declare-datatypes ((TokenValue!5938 0))(
  ( (FloatLiteralValue!11876 (text!42011 List!38383)) (TokenValueExt!5937 (__x!24093 Int)) (Broken!29690 (value!183112 List!38383)) (Object!6061) (End!5938) (Def!5938) (Underscore!5938) (Match!5938) (Else!5938) (Error!5938) (Case!5938) (If!5938) (Extends!5938) (Abstract!5938) (Class!5938) (Val!5938) (DelimiterValue!11876 (del!5998 List!38383)) (KeywordValue!5944 (value!183113 List!38383)) (CommentValue!11876 (value!183114 List!38383)) (WhitespaceValue!11876 (value!183115 List!38383)) (IndentationValue!5938 (value!183116 List!38383)) (String!43023) (Int32!5938) (Broken!29691 (value!183117 List!38383)) (Boolean!5939) (Unit!55075) (OperatorValue!5941 (op!5998 List!38383)) (IdentifierValue!11876 (value!183118 List!38383)) (IdentifierValue!11877 (value!183119 List!38383)) (WhitespaceValue!11877 (value!183120 List!38383)) (True!11876) (False!11876) (Broken!29692 (value!183121 List!38383)) (Broken!29693 (value!183122 List!38383)) (True!11877) (RightBrace!5938) (RightBracket!5938) (Colon!5938) (Null!5938) (Comma!5938) (LeftBracket!5938) (False!11877) (LeftBrace!5938) (ImaginaryLiteralValue!5938 (text!42012 List!38383)) (StringLiteralValue!17814 (value!183123 List!38383)) (EOFValue!5938 (value!183124 List!38383)) (IdentValue!5938 (value!183125 List!38383)) (DelimiterValue!11877 (value!183126 List!38383)) (DedentValue!5938 (value!183127 List!38383)) (NewLineValue!5938 (value!183128 List!38383)) (IntegerValue!17814 (value!183129 (_ BitVec 32)) (text!42013 List!38383)) (IntegerValue!17815 (value!183130 Int) (text!42014 List!38383)) (Times!5938) (Or!5938) (Equal!5938) (Minus!5938) (Broken!29694 (value!183131 List!38383)) (And!5938) (Div!5938) (LessEqual!5938) (Mod!5938) (Concat!16405) (Not!5938) (Plus!5938) (SpaceValue!5938 (value!183132 List!38383)) (IntegerValue!17816 (value!183133 Int) (text!42015 List!38383)) (StringLiteralValue!17815 (text!42016 List!38383)) (FloatLiteralValue!11877 (text!42017 List!38383)) (BytesLiteralValue!5938 (value!183134 List!38383)) (CommentValue!11877 (value!183135 List!38383)) (StringLiteralValue!17816 (value!183136 List!38383)) (ErrorTokenValue!5938 (msg!5999 List!38383)) )
))
(declare-datatypes ((C!21120 0))(
  ( (C!21121 (val!12608 Int)) )
))
(declare-datatypes ((Regex!10467 0))(
  ( (ElementMatch!10467 (c!628204 C!21120)) (Concat!16406 (regOne!21446 Regex!10467) (regTwo!21446 Regex!10467)) (EmptyExpr!10467) (Star!10467 (reg!10796 Regex!10467)) (EmptyLang!10467) (Union!10467 (regOne!21447 Regex!10467) (regTwo!21447 Regex!10467)) )
))
(declare-datatypes ((String!43024 0))(
  ( (String!43025 (value!183137 String)) )
))
(declare-datatypes ((List!38384 0))(
  ( (Nil!38260) (Cons!38260 (h!43680 C!21120) (t!295247 List!38384)) )
))
(declare-datatypes ((IArray!23351 0))(
  ( (IArray!23352 (innerList!11733 List!38384)) )
))
(declare-datatypes ((Conc!11673 0))(
  ( (Node!11673 (left!29865 Conc!11673) (right!30195 Conc!11673) (csize!23576 Int) (cheight!11884 Int)) (Leaf!18138 (xs!14875 IArray!23351) (csize!23577 Int)) (Empty!11673) )
))
(declare-datatypes ((BalanceConc!22960 0))(
  ( (BalanceConc!22961 (c!628205 Conc!11673)) )
))
(declare-datatypes ((TokenValueInjection!11304 0))(
  ( (TokenValueInjection!11305 (toValue!8000 Int) (toChars!7859 Int)) )
))
(declare-datatypes ((Rule!11216 0))(
  ( (Rule!11217 (regex!5708 Regex!10467) (tag!6438 String!43024) (isSeparator!5708 Bool) (transformation!5708 TokenValueInjection!11304)) )
))
(declare-datatypes ((Token!10782 0))(
  ( (Token!10783 (value!183138 TokenValue!5938) (rule!8480 Rule!11216) (size!29192 Int) (originalCharacters!6422 List!38384)) )
))
(declare-datatypes ((tuple2!38132 0))(
  ( (tuple2!38133 (_1!22200 Token!10782) (_2!22200 List!38384)) )
))
(declare-fun lt!1256045 () tuple2!38132)

(declare-fun lt!1256048 () Rule!11216)

(assert (=> b!3631348 (= e!2247798 (= (rule!8480 (_1!22200 lt!1256045)) lt!1256048))))

(declare-fun res!1470534 () Bool)

(declare-fun e!2247815 () Bool)

(assert (=> start!338546 (=> (not res!1470534) (not e!2247815))))

(declare-datatypes ((LexerInterface!5297 0))(
  ( (LexerInterfaceExt!5294 (__x!24094 Int)) (Lexer!5295) )
))
(declare-fun thiss!23823 () LexerInterface!5297)

(get-info :version)

(assert (=> start!338546 (= res!1470534 ((_ is Lexer!5295) thiss!23823))))

(assert (=> start!338546 e!2247815))

(declare-fun e!2247816 () Bool)

(assert (=> start!338546 e!2247816))

(declare-fun e!2247812 () Bool)

(assert (=> start!338546 e!2247812))

(assert (=> start!338546 true))

(declare-fun token!511 () Token!10782)

(declare-fun e!2247817 () Bool)

(declare-fun inv!51682 (Token!10782) Bool)

(assert (=> start!338546 (and (inv!51682 token!511) e!2247817)))

(declare-fun e!2247805 () Bool)

(assert (=> start!338546 e!2247805))

(declare-fun e!2247799 () Bool)

(assert (=> start!338546 e!2247799))

(declare-fun b!3631349 () Bool)

(declare-fun res!1470520 () Bool)

(assert (=> b!3631349 (=> (not res!1470520) (not e!2247815))))

(declare-datatypes ((List!38385 0))(
  ( (Nil!38261) (Cons!38261 (h!43681 Rule!11216) (t!295248 List!38385)) )
))
(declare-fun rules!3307 () List!38385)

(declare-fun isEmpty!22632 (List!38385) Bool)

(assert (=> b!3631349 (= res!1470520 (not (isEmpty!22632 rules!3307)))))

(declare-fun b!3631350 () Bool)

(declare-fun res!1470537 () Bool)

(declare-fun e!2247821 () Bool)

(assert (=> b!3631350 (=> res!1470537 e!2247821)))

(declare-fun suffix!1395 () List!38384)

(declare-fun isEmpty!22633 (List!38384) Bool)

(assert (=> b!3631350 (= res!1470537 (isEmpty!22633 suffix!1395))))

(declare-fun b!3631351 () Bool)

(declare-fun res!1470524 () Bool)

(assert (=> b!3631351 (=> (not res!1470524) (not e!2247815))))

(declare-fun rule!403 () Rule!11216)

(declare-fun contains!7481 (List!38385 Rule!11216) Bool)

(assert (=> b!3631351 (= res!1470524 (contains!7481 rules!3307 rule!403))))

(declare-fun b!3631352 () Bool)

(declare-fun e!2247809 () Bool)

(declare-fun e!2247807 () Bool)

(assert (=> b!3631352 (= e!2247809 e!2247807)))

(declare-fun res!1470532 () Bool)

(assert (=> b!3631352 (=> res!1470532 e!2247807)))

(declare-datatypes ((Option!8044 0))(
  ( (None!8043) (Some!8043 (v!37835 tuple2!38132)) )
))
(declare-fun lt!1256034 () Option!8044)

(declare-fun lt!1256036 () BalanceConc!22960)

(declare-fun lt!1256050 () List!38384)

(declare-fun apply!9210 (TokenValueInjection!11304 BalanceConc!22960) TokenValue!5938)

(declare-fun size!29193 (BalanceConc!22960) Int)

(assert (=> b!3631352 (= res!1470532 (not (= lt!1256034 (Some!8043 (tuple2!38133 (Token!10783 (apply!9210 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036) (rule!8480 (_1!22200 lt!1256045)) (size!29193 lt!1256036) lt!1256050) (_2!22200 lt!1256045))))))))

(declare-datatypes ((Unit!55076 0))(
  ( (Unit!55077) )
))
(declare-fun lt!1256047 () Unit!55076)

(declare-fun lemmaCharactersSize!753 (Token!10782) Unit!55076)

(assert (=> b!3631352 (= lt!1256047 (lemmaCharactersSize!753 (_1!22200 lt!1256045)))))

(declare-fun lt!1256046 () Unit!55076)

(declare-fun lemmaEqSameImage!891 (TokenValueInjection!11304 BalanceConc!22960 BalanceConc!22960) Unit!55076)

(declare-fun seqFromList!4257 (List!38384) BalanceConc!22960)

(assert (=> b!3631352 (= lt!1256046 (lemmaEqSameImage!891 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036 (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045)))))))

(declare-fun lt!1256041 () Unit!55076)

(declare-fun lemmaSemiInverse!1457 (TokenValueInjection!11304 BalanceConc!22960) Unit!55076)

(assert (=> b!3631352 (= lt!1256041 (lemmaSemiInverse!1457 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036))))

(declare-fun b!3631353 () Bool)

(declare-fun res!1470528 () Bool)

(declare-fun e!2247803 () Bool)

(assert (=> b!3631353 (=> (not res!1470528) (not e!2247803))))

(declare-fun lt!1256044 () tuple2!38132)

(assert (=> b!3631353 (= res!1470528 (isEmpty!22633 (_2!22200 lt!1256044)))))

(declare-fun e!2247804 () Bool)

(declare-fun b!3631354 () Bool)

(declare-fun e!2247808 () Bool)

(declare-fun tp!1108640 () Bool)

(declare-fun inv!51679 (String!43024) Bool)

(declare-fun inv!51683 (TokenValueInjection!11304) Bool)

(assert (=> b!3631354 (= e!2247804 (and tp!1108640 (inv!51679 (tag!6438 (h!43681 rules!3307))) (inv!51683 (transformation!5708 (h!43681 rules!3307))) e!2247808))))

(declare-fun tp!1108647 () Bool)

(declare-fun e!2247822 () Bool)

(declare-fun b!3631355 () Bool)

(declare-fun inv!21 (TokenValue!5938) Bool)

(assert (=> b!3631355 (= e!2247817 (and (inv!21 (value!183138 token!511)) e!2247822 tp!1108647))))

(declare-fun b!3631356 () Bool)

(declare-fun e!2247814 () Bool)

(assert (=> b!3631356 (= e!2247814 e!2247809)))

(declare-fun res!1470522 () Bool)

(assert (=> b!3631356 (=> res!1470522 e!2247809)))

(declare-fun lt!1256049 () List!38384)

(declare-fun isPrefix!3071 (List!38384 List!38384) Bool)

(assert (=> b!3631356 (= res!1470522 (not (isPrefix!3071 lt!1256050 lt!1256049)))))

(declare-fun ++!9524 (List!38384 List!38384) List!38384)

(assert (=> b!3631356 (isPrefix!3071 lt!1256050 (++!9524 lt!1256050 (_2!22200 lt!1256045)))))

(declare-fun lt!1256038 () Unit!55076)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1990 (List!38384 List!38384) Unit!55076)

(assert (=> b!3631356 (= lt!1256038 (lemmaConcatTwoListThenFirstIsPrefix!1990 lt!1256050 (_2!22200 lt!1256045)))))

(declare-fun list!14142 (BalanceConc!22960) List!38384)

(assert (=> b!3631356 (= lt!1256050 (list!14142 lt!1256036))))

(declare-fun charsOf!3722 (Token!10782) BalanceConc!22960)

(assert (=> b!3631356 (= lt!1256036 (charsOf!3722 (_1!22200 lt!1256045)))))

(declare-fun e!2247813 () Bool)

(assert (=> b!3631356 e!2247813))

(declare-fun res!1470519 () Bool)

(assert (=> b!3631356 (=> (not res!1470519) (not e!2247813))))

(declare-datatypes ((Option!8045 0))(
  ( (None!8044) (Some!8044 (v!37836 Rule!11216)) )
))
(declare-fun lt!1256039 () Option!8045)

(declare-fun isDefined!6276 (Option!8045) Bool)

(assert (=> b!3631356 (= res!1470519 (isDefined!6276 lt!1256039))))

(declare-fun getRuleFromTag!1312 (LexerInterface!5297 List!38385 String!43024) Option!8045)

(assert (=> b!3631356 (= lt!1256039 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))))

(declare-fun lt!1256035 () Unit!55076)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1312 (LexerInterface!5297 List!38385 List!38384 Token!10782) Unit!55076)

(assert (=> b!3631356 (= lt!1256035 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1312 thiss!23823 rules!3307 lt!1256049 (_1!22200 lt!1256045)))))

(declare-fun get!12508 (Option!8044) tuple2!38132)

(assert (=> b!3631356 (= lt!1256045 (get!12508 lt!1256034))))

(declare-fun lt!1256040 () List!38384)

(declare-fun lt!1256043 () Unit!55076)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!975 (LexerInterface!5297 List!38385 List!38384 List!38384) Unit!55076)

(assert (=> b!3631356 (= lt!1256043 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!975 thiss!23823 rules!3307 lt!1256040 suffix!1395))))

(declare-fun maxPrefix!2831 (LexerInterface!5297 List!38385 List!38384) Option!8044)

(assert (=> b!3631356 (= lt!1256034 (maxPrefix!2831 thiss!23823 rules!3307 lt!1256049))))

(assert (=> b!3631356 (isPrefix!3071 lt!1256040 lt!1256049)))

(declare-fun lt!1256042 () Unit!55076)

(assert (=> b!3631356 (= lt!1256042 (lemmaConcatTwoListThenFirstIsPrefix!1990 lt!1256040 suffix!1395))))

(assert (=> b!3631356 (= lt!1256049 (++!9524 lt!1256040 suffix!1395))))

(declare-fun b!3631357 () Bool)

(declare-fun res!1470536 () Bool)

(assert (=> b!3631357 (=> (not res!1470536) (not e!2247815))))

(declare-fun anOtherTypeRule!33 () Rule!11216)

(assert (=> b!3631357 (= res!1470536 (not (= (isSeparator!5708 anOtherTypeRule!33) (isSeparator!5708 rule!403))))))

(declare-fun b!3631358 () Bool)

(assert (=> b!3631358 (= e!2247821 e!2247814)))

(declare-fun res!1470533 () Bool)

(assert (=> b!3631358 (=> res!1470533 e!2247814)))

(declare-fun lt!1256037 () C!21120)

(declare-fun contains!7482 (List!38384 C!21120) Bool)

(declare-fun usedCharacters!920 (Regex!10467) List!38384)

(assert (=> b!3631358 (= res!1470533 (contains!7482 (usedCharacters!920 (regex!5708 rule!403)) lt!1256037))))

(declare-fun head!7688 (List!38384) C!21120)

(assert (=> b!3631358 (= lt!1256037 (head!7688 suffix!1395))))

(declare-fun b!3631359 () Bool)

(declare-fun res!1470521 () Bool)

(assert (=> b!3631359 (=> (not res!1470521) (not e!2247815))))

(assert (=> b!3631359 (= res!1470521 (contains!7481 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3631360 () Bool)

(declare-fun tp!1108650 () Bool)

(assert (=> b!3631360 (= e!2247816 (and e!2247804 tp!1108650))))

(declare-fun b!3631361 () Bool)

(declare-fun tp_is_empty!18017 () Bool)

(declare-fun tp!1108653 () Bool)

(assert (=> b!3631361 (= e!2247812 (and tp_is_empty!18017 tp!1108653))))

(declare-fun b!3631362 () Bool)

(declare-fun e!2247820 () Bool)

(assert (=> b!3631362 (= e!2247815 e!2247820)))

(declare-fun res!1470538 () Bool)

(assert (=> b!3631362 (=> (not res!1470538) (not e!2247820))))

(declare-fun lt!1256033 () Option!8044)

(declare-fun isDefined!6277 (Option!8044) Bool)

(assert (=> b!3631362 (= res!1470538 (isDefined!6277 lt!1256033))))

(assert (=> b!3631362 (= lt!1256033 (maxPrefix!2831 thiss!23823 rules!3307 lt!1256040))))

(assert (=> b!3631362 (= lt!1256040 (list!14142 (charsOf!3722 token!511)))))

(declare-fun e!2247811 () Bool)

(declare-fun b!3631363 () Bool)

(declare-fun tp!1108642 () Bool)

(assert (=> b!3631363 (= e!2247799 (and tp!1108642 (inv!51679 (tag!6438 anOtherTypeRule!33)) (inv!51683 (transformation!5708 anOtherTypeRule!33)) e!2247811))))

(assert (=> b!3631364 (= e!2247811 (and tp!1108648 tp!1108643))))

(declare-fun e!2247819 () Bool)

(assert (=> b!3631365 (= e!2247819 (and tp!1108651 tp!1108645))))

(declare-fun b!3631366 () Bool)

(assert (=> b!3631366 (= e!2247813 e!2247798)))

(declare-fun res!1470531 () Bool)

(assert (=> b!3631366 (=> (not res!1470531) (not e!2247798))))

(declare-fun matchR!5036 (Regex!10467 List!38384) Bool)

(assert (=> b!3631366 (= res!1470531 (matchR!5036 (regex!5708 lt!1256048) (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))))))

(declare-fun get!12509 (Option!8045) Rule!11216)

(assert (=> b!3631366 (= lt!1256048 (get!12509 lt!1256039))))

(assert (=> b!3631367 (= e!2247808 (and tp!1108652 tp!1108646))))

(declare-fun e!2247806 () Bool)

(assert (=> b!3631368 (= e!2247806 (and tp!1108641 tp!1108654))))

(declare-fun b!3631369 () Bool)

(declare-fun res!1470523 () Bool)

(assert (=> b!3631369 (=> res!1470523 e!2247814)))

(declare-fun sepAndNonSepRulesDisjointChars!1876 (List!38385 List!38385) Bool)

(assert (=> b!3631369 (= res!1470523 (not (sepAndNonSepRulesDisjointChars!1876 rules!3307 rules!3307)))))

(declare-fun b!3631370 () Bool)

(assert (=> b!3631370 (= e!2247820 e!2247803)))

(declare-fun res!1470529 () Bool)

(assert (=> b!3631370 (=> (not res!1470529) (not e!2247803))))

(assert (=> b!3631370 (= res!1470529 (= (_1!22200 lt!1256044) token!511))))

(assert (=> b!3631370 (= lt!1256044 (get!12508 lt!1256033))))

(declare-fun b!3631371 () Bool)

(assert (=> b!3631371 (= e!2247807 (contains!7481 rules!3307 (rule!8480 (_1!22200 lt!1256045))))))

(declare-fun b!3631372 () Bool)

(declare-fun res!1470525 () Bool)

(assert (=> b!3631372 (=> (not res!1470525) (not e!2247815))))

(declare-fun rulesInvariant!4694 (LexerInterface!5297 List!38385) Bool)

(assert (=> b!3631372 (= res!1470525 (rulesInvariant!4694 thiss!23823 rules!3307))))

(declare-fun b!3631373 () Bool)

(declare-fun res!1470526 () Bool)

(assert (=> b!3631373 (=> (not res!1470526) (not e!2247803))))

(assert (=> b!3631373 (= res!1470526 (= (rule!8480 token!511) rule!403))))

(declare-fun b!3631374 () Bool)

(declare-fun tp!1108644 () Bool)

(assert (=> b!3631374 (= e!2247822 (and tp!1108644 (inv!51679 (tag!6438 (rule!8480 token!511))) (inv!51683 (transformation!5708 (rule!8480 token!511))) e!2247819))))

(declare-fun b!3631375 () Bool)

(declare-fun res!1470530 () Bool)

(assert (=> b!3631375 (=> res!1470530 e!2247814)))

(assert (=> b!3631375 (= res!1470530 (not (contains!7482 (usedCharacters!920 (regex!5708 anOtherTypeRule!33)) lt!1256037)))))

(declare-fun b!3631376 () Bool)

(declare-fun res!1470527 () Bool)

(assert (=> b!3631376 (=> res!1470527 e!2247809)))

(assert (=> b!3631376 (= res!1470527 (not (matchR!5036 (regex!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256050)))))

(declare-fun b!3631377 () Bool)

(declare-fun tp!1108649 () Bool)

(assert (=> b!3631377 (= e!2247805 (and tp!1108649 (inv!51679 (tag!6438 rule!403)) (inv!51683 (transformation!5708 rule!403)) e!2247806))))

(declare-fun b!3631378 () Bool)

(assert (=> b!3631378 (= e!2247803 (not e!2247821))))

(declare-fun res!1470535 () Bool)

(assert (=> b!3631378 (=> res!1470535 e!2247821)))

(assert (=> b!3631378 (= res!1470535 (not (matchR!5036 (regex!5708 rule!403) lt!1256040)))))

(declare-fun ruleValid!1972 (LexerInterface!5297 Rule!11216) Bool)

(assert (=> b!3631378 (ruleValid!1972 thiss!23823 rule!403)))

(declare-fun lt!1256032 () Unit!55076)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1126 (LexerInterface!5297 Rule!11216 List!38385) Unit!55076)

(assert (=> b!3631378 (= lt!1256032 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1126 thiss!23823 rule!403 rules!3307))))

(assert (= (and start!338546 res!1470534) b!3631349))

(assert (= (and b!3631349 res!1470520) b!3631372))

(assert (= (and b!3631372 res!1470525) b!3631351))

(assert (= (and b!3631351 res!1470524) b!3631359))

(assert (= (and b!3631359 res!1470521) b!3631357))

(assert (= (and b!3631357 res!1470536) b!3631362))

(assert (= (and b!3631362 res!1470538) b!3631370))

(assert (= (and b!3631370 res!1470529) b!3631353))

(assert (= (and b!3631353 res!1470528) b!3631373))

(assert (= (and b!3631373 res!1470526) b!3631378))

(assert (= (and b!3631378 (not res!1470535)) b!3631350))

(assert (= (and b!3631350 (not res!1470537)) b!3631358))

(assert (= (and b!3631358 (not res!1470533)) b!3631375))

(assert (= (and b!3631375 (not res!1470530)) b!3631369))

(assert (= (and b!3631369 (not res!1470523)) b!3631356))

(assert (= (and b!3631356 res!1470519) b!3631366))

(assert (= (and b!3631366 res!1470531) b!3631348))

(assert (= (and b!3631356 (not res!1470522)) b!3631376))

(assert (= (and b!3631376 (not res!1470527)) b!3631352))

(assert (= (and b!3631352 (not res!1470532)) b!3631371))

(assert (= b!3631354 b!3631367))

(assert (= b!3631360 b!3631354))

(assert (= (and start!338546 ((_ is Cons!38261) rules!3307)) b!3631360))

(assert (= (and start!338546 ((_ is Cons!38260) suffix!1395)) b!3631361))

(assert (= b!3631374 b!3631365))

(assert (= b!3631355 b!3631374))

(assert (= start!338546 b!3631355))

(assert (= b!3631377 b!3631368))

(assert (= start!338546 b!3631377))

(assert (= b!3631363 b!3631364))

(assert (= start!338546 b!3631363))

(declare-fun m!4132945 () Bool)

(assert (=> b!3631350 m!4132945))

(declare-fun m!4132947 () Bool)

(assert (=> b!3631356 m!4132947))

(declare-fun m!4132949 () Bool)

(assert (=> b!3631356 m!4132949))

(declare-fun m!4132951 () Bool)

(assert (=> b!3631356 m!4132951))

(declare-fun m!4132953 () Bool)

(assert (=> b!3631356 m!4132953))

(declare-fun m!4132955 () Bool)

(assert (=> b!3631356 m!4132955))

(declare-fun m!4132957 () Bool)

(assert (=> b!3631356 m!4132957))

(declare-fun m!4132959 () Bool)

(assert (=> b!3631356 m!4132959))

(declare-fun m!4132961 () Bool)

(assert (=> b!3631356 m!4132961))

(assert (=> b!3631356 m!4132953))

(declare-fun m!4132963 () Bool)

(assert (=> b!3631356 m!4132963))

(declare-fun m!4132965 () Bool)

(assert (=> b!3631356 m!4132965))

(declare-fun m!4132967 () Bool)

(assert (=> b!3631356 m!4132967))

(declare-fun m!4132969 () Bool)

(assert (=> b!3631356 m!4132969))

(declare-fun m!4132971 () Bool)

(assert (=> b!3631356 m!4132971))

(declare-fun m!4132973 () Bool)

(assert (=> b!3631356 m!4132973))

(declare-fun m!4132975 () Bool)

(assert (=> b!3631356 m!4132975))

(declare-fun m!4132977 () Bool)

(assert (=> b!3631372 m!4132977))

(declare-fun m!4132979 () Bool)

(assert (=> start!338546 m!4132979))

(declare-fun m!4132981 () Bool)

(assert (=> b!3631362 m!4132981))

(declare-fun m!4132983 () Bool)

(assert (=> b!3631362 m!4132983))

(declare-fun m!4132985 () Bool)

(assert (=> b!3631362 m!4132985))

(assert (=> b!3631362 m!4132985))

(declare-fun m!4132987 () Bool)

(assert (=> b!3631362 m!4132987))

(declare-fun m!4132989 () Bool)

(assert (=> b!3631359 m!4132989))

(declare-fun m!4132991 () Bool)

(assert (=> b!3631363 m!4132991))

(declare-fun m!4132993 () Bool)

(assert (=> b!3631363 m!4132993))

(declare-fun m!4132995 () Bool)

(assert (=> b!3631378 m!4132995))

(declare-fun m!4132997 () Bool)

(assert (=> b!3631378 m!4132997))

(declare-fun m!4132999 () Bool)

(assert (=> b!3631378 m!4132999))

(declare-fun m!4133001 () Bool)

(assert (=> b!3631349 m!4133001))

(assert (=> b!3631366 m!4132971))

(assert (=> b!3631366 m!4132971))

(declare-fun m!4133003 () Bool)

(assert (=> b!3631366 m!4133003))

(assert (=> b!3631366 m!4133003))

(declare-fun m!4133005 () Bool)

(assert (=> b!3631366 m!4133005))

(declare-fun m!4133007 () Bool)

(assert (=> b!3631366 m!4133007))

(declare-fun m!4133009 () Bool)

(assert (=> b!3631377 m!4133009))

(declare-fun m!4133011 () Bool)

(assert (=> b!3631377 m!4133011))

(declare-fun m!4133013 () Bool)

(assert (=> b!3631375 m!4133013))

(assert (=> b!3631375 m!4133013))

(declare-fun m!4133015 () Bool)

(assert (=> b!3631375 m!4133015))

(declare-fun m!4133017 () Bool)

(assert (=> b!3631352 m!4133017))

(declare-fun m!4133019 () Bool)

(assert (=> b!3631352 m!4133019))

(declare-fun m!4133021 () Bool)

(assert (=> b!3631352 m!4133021))

(declare-fun m!4133023 () Bool)

(assert (=> b!3631352 m!4133023))

(declare-fun m!4133025 () Bool)

(assert (=> b!3631352 m!4133025))

(assert (=> b!3631352 m!4133019))

(declare-fun m!4133027 () Bool)

(assert (=> b!3631352 m!4133027))

(declare-fun m!4133029 () Bool)

(assert (=> b!3631369 m!4133029))

(declare-fun m!4133031 () Bool)

(assert (=> b!3631376 m!4133031))

(declare-fun m!4133033 () Bool)

(assert (=> b!3631354 m!4133033))

(declare-fun m!4133035 () Bool)

(assert (=> b!3631354 m!4133035))

(declare-fun m!4133037 () Bool)

(assert (=> b!3631370 m!4133037))

(declare-fun m!4133039 () Bool)

(assert (=> b!3631351 m!4133039))

(declare-fun m!4133041 () Bool)

(assert (=> b!3631358 m!4133041))

(assert (=> b!3631358 m!4133041))

(declare-fun m!4133043 () Bool)

(assert (=> b!3631358 m!4133043))

(declare-fun m!4133045 () Bool)

(assert (=> b!3631358 m!4133045))

(declare-fun m!4133047 () Bool)

(assert (=> b!3631371 m!4133047))

(declare-fun m!4133049 () Bool)

(assert (=> b!3631374 m!4133049))

(declare-fun m!4133051 () Bool)

(assert (=> b!3631374 m!4133051))

(declare-fun m!4133053 () Bool)

(assert (=> b!3631355 m!4133053))

(declare-fun m!4133055 () Bool)

(assert (=> b!3631353 m!4133055))

(check-sat (not b!3631375) (not b_next!95691) (not b!3631376) (not b!3631351) b_and!266535 (not start!338546) (not b_next!95689) (not b!3631354) (not b_next!95683) (not b!3631353) (not b!3631370) b_and!266531 b_and!266529 (not b!3631362) (not b!3631363) (not b!3631371) (not b_next!95693) b_and!266533 b_and!266525 (not b_next!95695) (not b!3631352) (not b!3631360) tp_is_empty!18017 (not b!3631372) (not b_next!95681) (not b!3631359) (not b!3631378) (not b_next!95685) (not b!3631366) (not b!3631374) (not b!3631350) (not b!3631377) (not b!3631361) b_and!266527 b_and!266523 (not b!3631356) (not b!3631369) (not b_next!95687) b_and!266537 (not b!3631355) (not b!3631349) (not b!3631358))
(check-sat (not b_next!95691) (not b_next!95681) (not b_next!95685) b_and!266535 (not b_next!95689) (not b_next!95683) b_and!266527 b_and!266523 b_and!266531 b_and!266529 (not b_next!95687) b_and!266537 (not b_next!95693) b_and!266533 b_and!266525 (not b_next!95695))
(get-model)

(declare-fun d!1068157 () Bool)

(declare-fun lt!1256079 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5486 (List!38385) (InoxSet Rule!11216))

(assert (=> d!1068157 (= lt!1256079 (select (content!5486 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2247914 () Bool)

(assert (=> d!1068157 (= lt!1256079 e!2247914)))

(declare-fun res!1470636 () Bool)

(assert (=> d!1068157 (=> (not res!1470636) (not e!2247914))))

(assert (=> d!1068157 (= res!1470636 ((_ is Cons!38261) rules!3307))))

(assert (=> d!1068157 (= (contains!7481 rules!3307 anOtherTypeRule!33) lt!1256079)))

(declare-fun b!3631535 () Bool)

(declare-fun e!2247913 () Bool)

(assert (=> b!3631535 (= e!2247914 e!2247913)))

(declare-fun res!1470635 () Bool)

(assert (=> b!3631535 (=> res!1470635 e!2247913)))

(assert (=> b!3631535 (= res!1470635 (= (h!43681 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3631536 () Bool)

(assert (=> b!3631536 (= e!2247913 (contains!7481 (t!295248 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1068157 res!1470636) b!3631535))

(assert (= (and b!3631535 (not res!1470635)) b!3631536))

(declare-fun m!4133159 () Bool)

(assert (=> d!1068157 m!4133159))

(declare-fun m!4133161 () Bool)

(assert (=> d!1068157 m!4133161))

(declare-fun m!4133163 () Bool)

(assert (=> b!3631536 m!4133163))

(assert (=> b!3631359 d!1068157))

(declare-fun d!1068159 () Bool)

(assert (=> d!1068159 (= (get!12508 lt!1256033) (v!37835 lt!1256033))))

(assert (=> b!3631370 d!1068159))

(declare-fun d!1068161 () Bool)

(assert (=> d!1068161 (= (isEmpty!22632 rules!3307) ((_ is Nil!38261) rules!3307))))

(assert (=> b!3631349 d!1068161))

(declare-fun d!1068163 () Bool)

(declare-fun lt!1256080 () Bool)

(assert (=> d!1068163 (= lt!1256080 (select (content!5486 rules!3307) (rule!8480 (_1!22200 lt!1256045))))))

(declare-fun e!2247916 () Bool)

(assert (=> d!1068163 (= lt!1256080 e!2247916)))

(declare-fun res!1470638 () Bool)

(assert (=> d!1068163 (=> (not res!1470638) (not e!2247916))))

(assert (=> d!1068163 (= res!1470638 ((_ is Cons!38261) rules!3307))))

(assert (=> d!1068163 (= (contains!7481 rules!3307 (rule!8480 (_1!22200 lt!1256045))) lt!1256080)))

(declare-fun b!3631537 () Bool)

(declare-fun e!2247915 () Bool)

(assert (=> b!3631537 (= e!2247916 e!2247915)))

(declare-fun res!1470637 () Bool)

(assert (=> b!3631537 (=> res!1470637 e!2247915)))

(assert (=> b!3631537 (= res!1470637 (= (h!43681 rules!3307) (rule!8480 (_1!22200 lt!1256045))))))

(declare-fun b!3631538 () Bool)

(assert (=> b!3631538 (= e!2247915 (contains!7481 (t!295248 rules!3307) (rule!8480 (_1!22200 lt!1256045))))))

(assert (= (and d!1068163 res!1470638) b!3631537))

(assert (= (and b!3631537 (not res!1470637)) b!3631538))

(assert (=> d!1068163 m!4133159))

(declare-fun m!4133165 () Bool)

(assert (=> d!1068163 m!4133165))

(declare-fun m!4133167 () Bool)

(assert (=> b!3631538 m!4133167))

(assert (=> b!3631371 d!1068163))

(declare-fun d!1068165 () Bool)

(assert (=> d!1068165 (= (isEmpty!22633 suffix!1395) ((_ is Nil!38260) suffix!1395))))

(assert (=> b!3631350 d!1068165))

(declare-fun d!1068167 () Bool)

(declare-fun res!1470654 () Bool)

(declare-fun e!2247928 () Bool)

(assert (=> d!1068167 (=> (not res!1470654) (not e!2247928))))

(declare-fun rulesValid!2180 (LexerInterface!5297 List!38385) Bool)

(assert (=> d!1068167 (= res!1470654 (rulesValid!2180 thiss!23823 rules!3307))))

(assert (=> d!1068167 (= (rulesInvariant!4694 thiss!23823 rules!3307) e!2247928)))

(declare-fun b!3631556 () Bool)

(declare-datatypes ((List!38387 0))(
  ( (Nil!38263) (Cons!38263 (h!43683 String!43024) (t!295350 List!38387)) )
))
(declare-fun noDuplicateTag!2176 (LexerInterface!5297 List!38385 List!38387) Bool)

(assert (=> b!3631556 (= e!2247928 (noDuplicateTag!2176 thiss!23823 rules!3307 Nil!38263))))

(assert (= (and d!1068167 res!1470654) b!3631556))

(declare-fun m!4133211 () Bool)

(assert (=> d!1068167 m!4133211))

(declare-fun m!4133213 () Bool)

(assert (=> b!3631556 m!4133213))

(assert (=> b!3631372 d!1068167))

(declare-fun d!1068179 () Bool)

(declare-fun lt!1256088 () Bool)

(assert (=> d!1068179 (= lt!1256088 (select (content!5486 rules!3307) rule!403))))

(declare-fun e!2247930 () Bool)

(assert (=> d!1068179 (= lt!1256088 e!2247930)))

(declare-fun res!1470656 () Bool)

(assert (=> d!1068179 (=> (not res!1470656) (not e!2247930))))

(assert (=> d!1068179 (= res!1470656 ((_ is Cons!38261) rules!3307))))

(assert (=> d!1068179 (= (contains!7481 rules!3307 rule!403) lt!1256088)))

(declare-fun b!3631557 () Bool)

(declare-fun e!2247929 () Bool)

(assert (=> b!3631557 (= e!2247930 e!2247929)))

(declare-fun res!1470655 () Bool)

(assert (=> b!3631557 (=> res!1470655 e!2247929)))

(assert (=> b!3631557 (= res!1470655 (= (h!43681 rules!3307) rule!403))))

(declare-fun b!3631558 () Bool)

(assert (=> b!3631558 (= e!2247929 (contains!7481 (t!295248 rules!3307) rule!403))))

(assert (= (and d!1068179 res!1470656) b!3631557))

(assert (= (and b!3631557 (not res!1470655)) b!3631558))

(assert (=> d!1068179 m!4133159))

(declare-fun m!4133219 () Bool)

(assert (=> d!1068179 m!4133219))

(declare-fun m!4133221 () Bool)

(assert (=> b!3631558 m!4133221))

(assert (=> b!3631351 d!1068179))

(declare-fun d!1068183 () Bool)

(declare-fun isEmpty!22635 (Option!8044) Bool)

(assert (=> d!1068183 (= (isDefined!6277 lt!1256033) (not (isEmpty!22635 lt!1256033)))))

(declare-fun bs!571674 () Bool)

(assert (= bs!571674 d!1068183))

(declare-fun m!4133225 () Bool)

(assert (=> bs!571674 m!4133225))

(assert (=> b!3631362 d!1068183))

(declare-fun b!3631581 () Bool)

(declare-fun res!1470674 () Bool)

(declare-fun e!2247943 () Bool)

(assert (=> b!3631581 (=> (not res!1470674) (not e!2247943))))

(declare-fun lt!1256101 () Option!8044)

(assert (=> b!3631581 (= res!1470674 (= (value!183138 (_1!22200 (get!12508 lt!1256101))) (apply!9210 (transformation!5708 (rule!8480 (_1!22200 (get!12508 lt!1256101)))) (seqFromList!4257 (originalCharacters!6422 (_1!22200 (get!12508 lt!1256101)))))))))

(declare-fun b!3631583 () Bool)

(declare-fun res!1470676 () Bool)

(assert (=> b!3631583 (=> (not res!1470676) (not e!2247943))))

(assert (=> b!3631583 (= res!1470676 (matchR!5036 (regex!5708 (rule!8480 (_1!22200 (get!12508 lt!1256101)))) (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256101))))))))

(declare-fun call!262664 () Option!8044)

(declare-fun bm!262659 () Bool)

(declare-fun maxPrefixOneRule!1969 (LexerInterface!5297 Rule!11216 List!38384) Option!8044)

(assert (=> bm!262659 (= call!262664 (maxPrefixOneRule!1969 thiss!23823 (h!43681 rules!3307) lt!1256040))))

(declare-fun b!3631584 () Bool)

(declare-fun res!1470673 () Bool)

(assert (=> b!3631584 (=> (not res!1470673) (not e!2247943))))

(assert (=> b!3631584 (= res!1470673 (= (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256101)))) (originalCharacters!6422 (_1!22200 (get!12508 lt!1256101)))))))

(declare-fun b!3631585 () Bool)

(declare-fun e!2247942 () Option!8044)

(assert (=> b!3631585 (= e!2247942 call!262664)))

(declare-fun b!3631582 () Bool)

(declare-fun res!1470679 () Bool)

(assert (=> b!3631582 (=> (not res!1470679) (not e!2247943))))

(declare-fun size!29196 (List!38384) Int)

(assert (=> b!3631582 (= res!1470679 (< (size!29196 (_2!22200 (get!12508 lt!1256101))) (size!29196 lt!1256040)))))

(declare-fun d!1068185 () Bool)

(declare-fun e!2247944 () Bool)

(assert (=> d!1068185 e!2247944))

(declare-fun res!1470675 () Bool)

(assert (=> d!1068185 (=> res!1470675 e!2247944)))

(assert (=> d!1068185 (= res!1470675 (isEmpty!22635 lt!1256101))))

(assert (=> d!1068185 (= lt!1256101 e!2247942)))

(declare-fun c!628242 () Bool)

(assert (=> d!1068185 (= c!628242 (and ((_ is Cons!38261) rules!3307) ((_ is Nil!38261) (t!295248 rules!3307))))))

(declare-fun lt!1256105 () Unit!55076)

(declare-fun lt!1256102 () Unit!55076)

(assert (=> d!1068185 (= lt!1256105 lt!1256102)))

(assert (=> d!1068185 (isPrefix!3071 lt!1256040 lt!1256040)))

(declare-fun lemmaIsPrefixRefl!1944 (List!38384 List!38384) Unit!55076)

(assert (=> d!1068185 (= lt!1256102 (lemmaIsPrefixRefl!1944 lt!1256040 lt!1256040))))

(declare-fun rulesValidInductive!2009 (LexerInterface!5297 List!38385) Bool)

(assert (=> d!1068185 (rulesValidInductive!2009 thiss!23823 rules!3307)))

(assert (=> d!1068185 (= (maxPrefix!2831 thiss!23823 rules!3307 lt!1256040) lt!1256101)))

(declare-fun b!3631586 () Bool)

(declare-fun res!1470678 () Bool)

(assert (=> b!3631586 (=> (not res!1470678) (not e!2247943))))

(assert (=> b!3631586 (= res!1470678 (= (++!9524 (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256101)))) (_2!22200 (get!12508 lt!1256101))) lt!1256040))))

(declare-fun b!3631587 () Bool)

(declare-fun lt!1256103 () Option!8044)

(declare-fun lt!1256104 () Option!8044)

(assert (=> b!3631587 (= e!2247942 (ite (and ((_ is None!8043) lt!1256103) ((_ is None!8043) lt!1256104)) None!8043 (ite ((_ is None!8043) lt!1256104) lt!1256103 (ite ((_ is None!8043) lt!1256103) lt!1256104 (ite (>= (size!29192 (_1!22200 (v!37835 lt!1256103))) (size!29192 (_1!22200 (v!37835 lt!1256104)))) lt!1256103 lt!1256104)))))))

(assert (=> b!3631587 (= lt!1256103 call!262664)))

(assert (=> b!3631587 (= lt!1256104 (maxPrefix!2831 thiss!23823 (t!295248 rules!3307) lt!1256040))))

(declare-fun b!3631588 () Bool)

(assert (=> b!3631588 (= e!2247943 (contains!7481 rules!3307 (rule!8480 (_1!22200 (get!12508 lt!1256101)))))))

(declare-fun b!3631589 () Bool)

(assert (=> b!3631589 (= e!2247944 e!2247943)))

(declare-fun res!1470677 () Bool)

(assert (=> b!3631589 (=> (not res!1470677) (not e!2247943))))

(assert (=> b!3631589 (= res!1470677 (isDefined!6277 lt!1256101))))

(assert (= (and d!1068185 c!628242) b!3631585))

(assert (= (and d!1068185 (not c!628242)) b!3631587))

(assert (= (or b!3631585 b!3631587) bm!262659))

(assert (= (and d!1068185 (not res!1470675)) b!3631589))

(assert (= (and b!3631589 res!1470677) b!3631584))

(assert (= (and b!3631584 res!1470673) b!3631582))

(assert (= (and b!3631582 res!1470679) b!3631586))

(assert (= (and b!3631586 res!1470678) b!3631581))

(assert (= (and b!3631581 res!1470674) b!3631583))

(assert (= (and b!3631583 res!1470676) b!3631588))

(declare-fun m!4133229 () Bool)

(assert (=> b!3631582 m!4133229))

(declare-fun m!4133231 () Bool)

(assert (=> b!3631582 m!4133231))

(declare-fun m!4133233 () Bool)

(assert (=> b!3631582 m!4133233))

(assert (=> b!3631584 m!4133229))

(declare-fun m!4133235 () Bool)

(assert (=> b!3631584 m!4133235))

(assert (=> b!3631584 m!4133235))

(declare-fun m!4133237 () Bool)

(assert (=> b!3631584 m!4133237))

(assert (=> b!3631588 m!4133229))

(declare-fun m!4133239 () Bool)

(assert (=> b!3631588 m!4133239))

(declare-fun m!4133241 () Bool)

(assert (=> bm!262659 m!4133241))

(declare-fun m!4133243 () Bool)

(assert (=> b!3631587 m!4133243))

(declare-fun m!4133245 () Bool)

(assert (=> d!1068185 m!4133245))

(declare-fun m!4133247 () Bool)

(assert (=> d!1068185 m!4133247))

(declare-fun m!4133249 () Bool)

(assert (=> d!1068185 m!4133249))

(declare-fun m!4133251 () Bool)

(assert (=> d!1068185 m!4133251))

(assert (=> b!3631581 m!4133229))

(declare-fun m!4133253 () Bool)

(assert (=> b!3631581 m!4133253))

(assert (=> b!3631581 m!4133253))

(declare-fun m!4133255 () Bool)

(assert (=> b!3631581 m!4133255))

(assert (=> b!3631583 m!4133229))

(assert (=> b!3631583 m!4133235))

(assert (=> b!3631583 m!4133235))

(assert (=> b!3631583 m!4133237))

(assert (=> b!3631583 m!4133237))

(declare-fun m!4133257 () Bool)

(assert (=> b!3631583 m!4133257))

(assert (=> b!3631586 m!4133229))

(assert (=> b!3631586 m!4133235))

(assert (=> b!3631586 m!4133235))

(assert (=> b!3631586 m!4133237))

(assert (=> b!3631586 m!4133237))

(declare-fun m!4133259 () Bool)

(assert (=> b!3631586 m!4133259))

(declare-fun m!4133261 () Bool)

(assert (=> b!3631589 m!4133261))

(assert (=> b!3631362 d!1068185))

(declare-fun d!1068189 () Bool)

(declare-fun list!14144 (Conc!11673) List!38384)

(assert (=> d!1068189 (= (list!14142 (charsOf!3722 token!511)) (list!14144 (c!628205 (charsOf!3722 token!511))))))

(declare-fun bs!571675 () Bool)

(assert (= bs!571675 d!1068189))

(declare-fun m!4133263 () Bool)

(assert (=> bs!571675 m!4133263))

(assert (=> b!3631362 d!1068189))

(declare-fun d!1068191 () Bool)

(declare-fun lt!1256108 () BalanceConc!22960)

(assert (=> d!1068191 (= (list!14142 lt!1256108) (originalCharacters!6422 token!511))))

(declare-fun dynLambda!16584 (Int TokenValue!5938) BalanceConc!22960)

(assert (=> d!1068191 (= lt!1256108 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (value!183138 token!511)))))

(assert (=> d!1068191 (= (charsOf!3722 token!511) lt!1256108)))

(declare-fun b_lambda!107515 () Bool)

(assert (=> (not b_lambda!107515) (not d!1068191)))

(declare-fun t!295274 () Bool)

(declare-fun tb!208645 () Bool)

(assert (=> (and b!3631365 (= (toChars!7859 (transformation!5708 (rule!8480 token!511))) (toChars!7859 (transformation!5708 (rule!8480 token!511)))) t!295274) tb!208645))

(declare-fun b!3631594 () Bool)

(declare-fun e!2247947 () Bool)

(declare-fun tp!1108661 () Bool)

(declare-fun inv!51686 (Conc!11673) Bool)

(assert (=> b!3631594 (= e!2247947 (and (inv!51686 (c!628205 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (value!183138 token!511)))) tp!1108661))))

(declare-fun result!254170 () Bool)

(declare-fun inv!51687 (BalanceConc!22960) Bool)

(assert (=> tb!208645 (= result!254170 (and (inv!51687 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (value!183138 token!511))) e!2247947))))

(assert (= tb!208645 b!3631594))

(declare-fun m!4133265 () Bool)

(assert (=> b!3631594 m!4133265))

(declare-fun m!4133267 () Bool)

(assert (=> tb!208645 m!4133267))

(assert (=> d!1068191 t!295274))

(declare-fun b_and!266571 () Bool)

(assert (= b_and!266525 (and (=> t!295274 result!254170) b_and!266571)))

(declare-fun tb!208647 () Bool)

(declare-fun t!295276 () Bool)

(assert (=> (and b!3631367 (= (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toChars!7859 (transformation!5708 (rule!8480 token!511)))) t!295276) tb!208647))

(declare-fun result!254174 () Bool)

(assert (= result!254174 result!254170))

(assert (=> d!1068191 t!295276))

(declare-fun b_and!266573 () Bool)

(assert (= b_and!266529 (and (=> t!295276 result!254174) b_and!266573)))

(declare-fun tb!208649 () Bool)

(declare-fun t!295278 () Bool)

(assert (=> (and b!3631368 (= (toChars!7859 (transformation!5708 rule!403)) (toChars!7859 (transformation!5708 (rule!8480 token!511)))) t!295278) tb!208649))

(declare-fun result!254176 () Bool)

(assert (= result!254176 result!254170))

(assert (=> d!1068191 t!295278))

(declare-fun b_and!266575 () Bool)

(assert (= b_and!266533 (and (=> t!295278 result!254176) b_and!266575)))

(declare-fun tb!208651 () Bool)

(declare-fun t!295280 () Bool)

(assert (=> (and b!3631364 (= (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toChars!7859 (transformation!5708 (rule!8480 token!511)))) t!295280) tb!208651))

(declare-fun result!254178 () Bool)

(assert (= result!254178 result!254170))

(assert (=> d!1068191 t!295280))

(declare-fun b_and!266577 () Bool)

(assert (= b_and!266537 (and (=> t!295280 result!254178) b_and!266577)))

(declare-fun m!4133269 () Bool)

(assert (=> d!1068191 m!4133269))

(declare-fun m!4133271 () Bool)

(assert (=> d!1068191 m!4133271))

(assert (=> b!3631362 d!1068191))

(declare-fun d!1068193 () Bool)

(declare-fun fromListB!1959 (List!38384) BalanceConc!22960)

(assert (=> d!1068193 (= (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045))) (fromListB!1959 (originalCharacters!6422 (_1!22200 lt!1256045))))))

(declare-fun bs!571676 () Bool)

(assert (= bs!571676 d!1068193))

(declare-fun m!4133273 () Bool)

(assert (=> bs!571676 m!4133273))

(assert (=> b!3631352 d!1068193))

(declare-fun d!1068195 () Bool)

(assert (=> d!1068195 (= (size!29192 (_1!22200 lt!1256045)) (size!29196 (originalCharacters!6422 (_1!22200 lt!1256045))))))

(declare-fun Unit!55079 () Unit!55076)

(assert (=> d!1068195 (= (lemmaCharactersSize!753 (_1!22200 lt!1256045)) Unit!55079)))

(declare-fun bs!571677 () Bool)

(assert (= bs!571677 d!1068195))

(declare-fun m!4133275 () Bool)

(assert (=> bs!571677 m!4133275))

(assert (=> b!3631352 d!1068195))

(declare-fun d!1068197 () Bool)

(declare-fun dynLambda!16585 (Int BalanceConc!22960) TokenValue!5938)

(assert (=> d!1068197 (= (apply!9210 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036) (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036))))

(declare-fun b_lambda!107517 () Bool)

(assert (=> (not b_lambda!107517) (not d!1068197)))

(declare-fun t!295282 () Bool)

(declare-fun tb!208653 () Bool)

(assert (=> (and b!3631365 (= (toValue!8000 (transformation!5708 (rule!8480 token!511))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295282) tb!208653))

(declare-fun result!254180 () Bool)

(assert (=> tb!208653 (= result!254180 (inv!21 (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036)))))

(declare-fun m!4133277 () Bool)

(assert (=> tb!208653 m!4133277))

(assert (=> d!1068197 t!295282))

(declare-fun b_and!266579 () Bool)

(assert (= b_and!266523 (and (=> t!295282 result!254180) b_and!266579)))

(declare-fun tb!208655 () Bool)

(declare-fun t!295284 () Bool)

(assert (=> (and b!3631367 (= (toValue!8000 (transformation!5708 (h!43681 rules!3307))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295284) tb!208655))

(declare-fun result!254184 () Bool)

(assert (= result!254184 result!254180))

(assert (=> d!1068197 t!295284))

(declare-fun b_and!266581 () Bool)

(assert (= b_and!266527 (and (=> t!295284 result!254184) b_and!266581)))

(declare-fun t!295286 () Bool)

(declare-fun tb!208657 () Bool)

(assert (=> (and b!3631368 (= (toValue!8000 (transformation!5708 rule!403)) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295286) tb!208657))

(declare-fun result!254186 () Bool)

(assert (= result!254186 result!254180))

(assert (=> d!1068197 t!295286))

(declare-fun b_and!266583 () Bool)

(assert (= b_and!266531 (and (=> t!295286 result!254186) b_and!266583)))

(declare-fun t!295288 () Bool)

(declare-fun tb!208659 () Bool)

(assert (=> (and b!3631364 (= (toValue!8000 (transformation!5708 anOtherTypeRule!33)) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295288) tb!208659))

(declare-fun result!254188 () Bool)

(assert (= result!254188 result!254180))

(assert (=> d!1068197 t!295288))

(declare-fun b_and!266585 () Bool)

(assert (= b_and!266535 (and (=> t!295288 result!254188) b_and!266585)))

(declare-fun m!4133279 () Bool)

(assert (=> d!1068197 m!4133279))

(assert (=> b!3631352 d!1068197))

(declare-fun d!1068199 () Bool)

(declare-fun lt!1256111 () Int)

(assert (=> d!1068199 (= lt!1256111 (size!29196 (list!14142 lt!1256036)))))

(declare-fun size!29197 (Conc!11673) Int)

(assert (=> d!1068199 (= lt!1256111 (size!29197 (c!628205 lt!1256036)))))

(assert (=> d!1068199 (= (size!29193 lt!1256036) lt!1256111)))

(declare-fun bs!571678 () Bool)

(assert (= bs!571678 d!1068199))

(assert (=> bs!571678 m!4132947))

(assert (=> bs!571678 m!4132947))

(declare-fun m!4133281 () Bool)

(assert (=> bs!571678 m!4133281))

(declare-fun m!4133283 () Bool)

(assert (=> bs!571678 m!4133283))

(assert (=> b!3631352 d!1068199))

(declare-fun b!3631648 () Bool)

(declare-fun e!2247984 () Bool)

(assert (=> b!3631648 (= e!2247984 true)))

(declare-fun d!1068201 () Bool)

(assert (=> d!1068201 e!2247984))

(assert (= d!1068201 b!3631648))

(declare-fun order!20941 () Int)

(declare-fun lambda!124278 () Int)

(declare-fun order!20939 () Int)

(declare-fun dynLambda!16586 (Int Int) Int)

(declare-fun dynLambda!16587 (Int Int) Int)

(assert (=> b!3631648 (< (dynLambda!16586 order!20939 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) (dynLambda!16587 order!20941 lambda!124278))))

(declare-fun order!20943 () Int)

(declare-fun dynLambda!16588 (Int Int) Int)

(assert (=> b!3631648 (< (dynLambda!16588 order!20943 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) (dynLambda!16587 order!20941 lambda!124278))))

(assert (=> d!1068201 (= (list!14142 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036))) (list!14142 lt!1256036))))

(declare-fun lt!1256134 () Unit!55076)

(declare-fun ForallOf!680 (Int BalanceConc!22960) Unit!55076)

(assert (=> d!1068201 (= lt!1256134 (ForallOf!680 lambda!124278 lt!1256036))))

(assert (=> d!1068201 (= (lemmaSemiInverse!1457 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036) lt!1256134)))

(declare-fun b_lambda!107527 () Bool)

(assert (=> (not b_lambda!107527) (not d!1068201)))

(declare-fun tb!208677 () Bool)

(declare-fun t!295306 () Bool)

(assert (=> (and b!3631365 (= (toChars!7859 (transformation!5708 (rule!8480 token!511))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295306) tb!208677))

(declare-fun e!2247985 () Bool)

(declare-fun b!3631649 () Bool)

(declare-fun tp!1108663 () Bool)

(assert (=> b!3631649 (= e!2247985 (and (inv!51686 (c!628205 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036)))) tp!1108663))))

(declare-fun result!254206 () Bool)

(assert (=> tb!208677 (= result!254206 (and (inv!51687 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036))) e!2247985))))

(assert (= tb!208677 b!3631649))

(declare-fun m!4133359 () Bool)

(assert (=> b!3631649 m!4133359))

(declare-fun m!4133361 () Bool)

(assert (=> tb!208677 m!4133361))

(assert (=> d!1068201 t!295306))

(declare-fun b_and!266619 () Bool)

(assert (= b_and!266571 (and (=> t!295306 result!254206) b_and!266619)))

(declare-fun t!295308 () Bool)

(declare-fun tb!208679 () Bool)

(assert (=> (and b!3631367 (= (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295308) tb!208679))

(declare-fun result!254208 () Bool)

(assert (= result!254208 result!254206))

(assert (=> d!1068201 t!295308))

(declare-fun b_and!266621 () Bool)

(assert (= b_and!266573 (and (=> t!295308 result!254208) b_and!266621)))

(declare-fun tb!208681 () Bool)

(declare-fun t!295310 () Bool)

(assert (=> (and b!3631368 (= (toChars!7859 (transformation!5708 rule!403)) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295310) tb!208681))

(declare-fun result!254210 () Bool)

(assert (= result!254210 result!254206))

(assert (=> d!1068201 t!295310))

(declare-fun b_and!266623 () Bool)

(assert (= b_and!266575 (and (=> t!295310 result!254210) b_and!266623)))

(declare-fun t!295312 () Bool)

(declare-fun tb!208683 () Bool)

(assert (=> (and b!3631364 (= (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295312) tb!208683))

(declare-fun result!254212 () Bool)

(assert (= result!254212 result!254206))

(assert (=> d!1068201 t!295312))

(declare-fun b_and!266625 () Bool)

(assert (= b_and!266577 (and (=> t!295312 result!254212) b_and!266625)))

(declare-fun b_lambda!107529 () Bool)

(assert (=> (not b_lambda!107529) (not d!1068201)))

(assert (=> d!1068201 t!295282))

(declare-fun b_and!266627 () Bool)

(assert (= b_and!266579 (and (=> t!295282 result!254180) b_and!266627)))

(assert (=> d!1068201 t!295284))

(declare-fun b_and!266629 () Bool)

(assert (= b_and!266581 (and (=> t!295284 result!254184) b_and!266629)))

(assert (=> d!1068201 t!295286))

(declare-fun b_and!266631 () Bool)

(assert (= b_and!266583 (and (=> t!295286 result!254186) b_and!266631)))

(assert (=> d!1068201 t!295288))

(declare-fun b_and!266633 () Bool)

(assert (= b_and!266585 (and (=> t!295288 result!254188) b_and!266633)))

(assert (=> d!1068201 m!4133279))

(assert (=> d!1068201 m!4133279))

(declare-fun m!4133363 () Bool)

(assert (=> d!1068201 m!4133363))

(assert (=> d!1068201 m!4133363))

(declare-fun m!4133365 () Bool)

(assert (=> d!1068201 m!4133365))

(declare-fun m!4133367 () Bool)

(assert (=> d!1068201 m!4133367))

(assert (=> d!1068201 m!4132947))

(assert (=> b!3631352 d!1068201))

(declare-fun b!3631656 () Bool)

(declare-fun e!2247990 () Bool)

(assert (=> b!3631656 (= e!2247990 true)))

(declare-fun d!1068225 () Bool)

(assert (=> d!1068225 e!2247990))

(assert (= d!1068225 b!3631656))

(declare-fun lambda!124281 () Int)

(declare-fun order!20945 () Int)

(declare-fun dynLambda!16589 (Int Int) Int)

(assert (=> b!3631656 (< (dynLambda!16586 order!20939 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) (dynLambda!16589 order!20945 lambda!124281))))

(assert (=> b!3631656 (< (dynLambda!16588 order!20943 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) (dynLambda!16589 order!20945 lambda!124281))))

(assert (=> d!1068225 (= (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) lt!1256036) (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045)))))))

(declare-fun lt!1256137 () Unit!55076)

(declare-fun Forall2of!338 (Int BalanceConc!22960 BalanceConc!22960) Unit!55076)

(assert (=> d!1068225 (= lt!1256137 (Forall2of!338 lambda!124281 lt!1256036 (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045)))))))

(assert (=> d!1068225 (= (list!14142 lt!1256036) (list!14142 (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045)))))))

(assert (=> d!1068225 (= (lemmaEqSameImage!891 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256036 (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045)))) lt!1256137)))

(declare-fun b_lambda!107531 () Bool)

(assert (=> (not b_lambda!107531) (not d!1068225)))

(assert (=> d!1068225 t!295282))

(declare-fun b_and!266635 () Bool)

(assert (= b_and!266627 (and (=> t!295282 result!254180) b_and!266635)))

(assert (=> d!1068225 t!295284))

(declare-fun b_and!266637 () Bool)

(assert (= b_and!266629 (and (=> t!295284 result!254184) b_and!266637)))

(assert (=> d!1068225 t!295286))

(declare-fun b_and!266639 () Bool)

(assert (= b_and!266631 (and (=> t!295286 result!254186) b_and!266639)))

(assert (=> d!1068225 t!295288))

(declare-fun b_and!266641 () Bool)

(assert (= b_and!266633 (and (=> t!295288 result!254188) b_and!266641)))

(declare-fun b_lambda!107533 () Bool)

(assert (=> (not b_lambda!107533) (not d!1068225)))

(declare-fun t!295314 () Bool)

(declare-fun tb!208685 () Bool)

(assert (=> (and b!3631365 (= (toValue!8000 (transformation!5708 (rule!8480 token!511))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295314) tb!208685))

(declare-fun result!254214 () Bool)

(assert (=> tb!208685 (= result!254214 (inv!21 (dynLambda!16585 (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (seqFromList!4257 (originalCharacters!6422 (_1!22200 lt!1256045))))))))

(declare-fun m!4133369 () Bool)

(assert (=> tb!208685 m!4133369))

(assert (=> d!1068225 t!295314))

(declare-fun b_and!266643 () Bool)

(assert (= b_and!266635 (and (=> t!295314 result!254214) b_and!266643)))

(declare-fun tb!208687 () Bool)

(declare-fun t!295316 () Bool)

(assert (=> (and b!3631367 (= (toValue!8000 (transformation!5708 (h!43681 rules!3307))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295316) tb!208687))

(declare-fun result!254216 () Bool)

(assert (= result!254216 result!254214))

(assert (=> d!1068225 t!295316))

(declare-fun b_and!266645 () Bool)

(assert (= b_and!266637 (and (=> t!295316 result!254216) b_and!266645)))

(declare-fun t!295318 () Bool)

(declare-fun tb!208689 () Bool)

(assert (=> (and b!3631368 (= (toValue!8000 (transformation!5708 rule!403)) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295318) tb!208689))

(declare-fun result!254218 () Bool)

(assert (= result!254218 result!254214))

(assert (=> d!1068225 t!295318))

(declare-fun b_and!266647 () Bool)

(assert (= b_and!266639 (and (=> t!295318 result!254218) b_and!266647)))

(declare-fun tb!208691 () Bool)

(declare-fun t!295320 () Bool)

(assert (=> (and b!3631364 (= (toValue!8000 (transformation!5708 anOtherTypeRule!33)) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295320) tb!208691))

(declare-fun result!254220 () Bool)

(assert (= result!254220 result!254214))

(assert (=> d!1068225 t!295320))

(declare-fun b_and!266649 () Bool)

(assert (= b_and!266641 (and (=> t!295320 result!254220) b_and!266649)))

(assert (=> d!1068225 m!4132947))

(assert (=> d!1068225 m!4133019))

(declare-fun m!4133371 () Bool)

(assert (=> d!1068225 m!4133371))

(assert (=> d!1068225 m!4133279))

(assert (=> d!1068225 m!4133019))

(declare-fun m!4133373 () Bool)

(assert (=> d!1068225 m!4133373))

(assert (=> d!1068225 m!4133019))

(declare-fun m!4133375 () Bool)

(assert (=> d!1068225 m!4133375))

(assert (=> b!3631352 d!1068225))

(declare-fun d!1068227 () Bool)

(assert (=> d!1068227 (= (inv!51679 (tag!6438 anOtherTypeRule!33)) (= (mod (str.len (value!183137 (tag!6438 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3631363 d!1068227))

(declare-fun d!1068229 () Bool)

(declare-fun res!1470714 () Bool)

(declare-fun e!2247994 () Bool)

(assert (=> d!1068229 (=> (not res!1470714) (not e!2247994))))

(declare-fun semiInverseModEq!2423 (Int Int) Bool)

(assert (=> d!1068229 (= res!1470714 (semiInverseModEq!2423 (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toValue!8000 (transformation!5708 anOtherTypeRule!33))))))

(assert (=> d!1068229 (= (inv!51683 (transformation!5708 anOtherTypeRule!33)) e!2247994)))

(declare-fun b!3631659 () Bool)

(declare-fun equivClasses!2322 (Int Int) Bool)

(assert (=> b!3631659 (= e!2247994 (equivClasses!2322 (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toValue!8000 (transformation!5708 anOtherTypeRule!33))))))

(assert (= (and d!1068229 res!1470714) b!3631659))

(declare-fun m!4133377 () Bool)

(assert (=> d!1068229 m!4133377))

(declare-fun m!4133379 () Bool)

(assert (=> b!3631659 m!4133379))

(assert (=> b!3631363 d!1068229))

(declare-fun d!1068231 () Bool)

(assert (=> d!1068231 (= (inv!51679 (tag!6438 (rule!8480 token!511))) (= (mod (str.len (value!183137 (tag!6438 (rule!8480 token!511)))) 2) 0))))

(assert (=> b!3631374 d!1068231))

(declare-fun d!1068233 () Bool)

(declare-fun res!1470715 () Bool)

(declare-fun e!2247995 () Bool)

(assert (=> d!1068233 (=> (not res!1470715) (not e!2247995))))

(assert (=> d!1068233 (= res!1470715 (semiInverseModEq!2423 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (toValue!8000 (transformation!5708 (rule!8480 token!511)))))))

(assert (=> d!1068233 (= (inv!51683 (transformation!5708 (rule!8480 token!511))) e!2247995)))

(declare-fun b!3631660 () Bool)

(assert (=> b!3631660 (= e!2247995 (equivClasses!2322 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (toValue!8000 (transformation!5708 (rule!8480 token!511)))))))

(assert (= (and d!1068233 res!1470715) b!3631660))

(declare-fun m!4133381 () Bool)

(assert (=> d!1068233 m!4133381))

(declare-fun m!4133383 () Bool)

(assert (=> b!3631660 m!4133383))

(assert (=> b!3631374 d!1068233))

(declare-fun d!1068235 () Bool)

(assert (=> d!1068235 (= (isEmpty!22633 (_2!22200 lt!1256044)) ((_ is Nil!38260) (_2!22200 lt!1256044)))))

(assert (=> b!3631353 d!1068235))

(declare-fun d!1068237 () Bool)

(declare-fun lt!1256140 () Bool)

(declare-fun content!5487 (List!38384) (InoxSet C!21120))

(assert (=> d!1068237 (= lt!1256140 (select (content!5487 (usedCharacters!920 (regex!5708 anOtherTypeRule!33))) lt!1256037))))

(declare-fun e!2248001 () Bool)

(assert (=> d!1068237 (= lt!1256140 e!2248001)))

(declare-fun res!1470720 () Bool)

(assert (=> d!1068237 (=> (not res!1470720) (not e!2248001))))

(assert (=> d!1068237 (= res!1470720 ((_ is Cons!38260) (usedCharacters!920 (regex!5708 anOtherTypeRule!33))))))

(assert (=> d!1068237 (= (contains!7482 (usedCharacters!920 (regex!5708 anOtherTypeRule!33)) lt!1256037) lt!1256140)))

(declare-fun b!3631665 () Bool)

(declare-fun e!2248000 () Bool)

(assert (=> b!3631665 (= e!2248001 e!2248000)))

(declare-fun res!1470721 () Bool)

(assert (=> b!3631665 (=> res!1470721 e!2248000)))

(assert (=> b!3631665 (= res!1470721 (= (h!43680 (usedCharacters!920 (regex!5708 anOtherTypeRule!33))) lt!1256037))))

(declare-fun b!3631666 () Bool)

(assert (=> b!3631666 (= e!2248000 (contains!7482 (t!295247 (usedCharacters!920 (regex!5708 anOtherTypeRule!33))) lt!1256037))))

(assert (= (and d!1068237 res!1470720) b!3631665))

(assert (= (and b!3631665 (not res!1470721)) b!3631666))

(assert (=> d!1068237 m!4133013))

(declare-fun m!4133385 () Bool)

(assert (=> d!1068237 m!4133385))

(declare-fun m!4133387 () Bool)

(assert (=> d!1068237 m!4133387))

(declare-fun m!4133389 () Bool)

(assert (=> b!3631666 m!4133389))

(assert (=> b!3631375 d!1068237))

(declare-fun b!3631683 () Bool)

(declare-fun e!2248012 () List!38384)

(declare-fun e!2248010 () List!38384)

(assert (=> b!3631683 (= e!2248012 e!2248010)))

(declare-fun c!628257 () Bool)

(assert (=> b!3631683 (= c!628257 ((_ is Union!10467) (regex!5708 anOtherTypeRule!33)))))

(declare-fun b!3631684 () Bool)

(declare-fun e!2248013 () List!38384)

(declare-fun e!2248011 () List!38384)

(assert (=> b!3631684 (= e!2248013 e!2248011)))

(declare-fun c!628255 () Bool)

(assert (=> b!3631684 (= c!628255 ((_ is ElementMatch!10467) (regex!5708 anOtherTypeRule!33)))))

(declare-fun call!262676 () List!38384)

(declare-fun call!262674 () List!38384)

(declare-fun bm!262669 () Bool)

(declare-fun call!262675 () List!38384)

(assert (=> bm!262669 (= call!262674 (++!9524 (ite c!628257 call!262676 call!262675) (ite c!628257 call!262675 call!262676)))))

(declare-fun b!3631685 () Bool)

(assert (=> b!3631685 (= e!2248010 call!262674)))

(declare-fun b!3631686 () Bool)

(declare-fun c!628258 () Bool)

(assert (=> b!3631686 (= c!628258 ((_ is Star!10467) (regex!5708 anOtherTypeRule!33)))))

(assert (=> b!3631686 (= e!2248011 e!2248012)))

(declare-fun b!3631687 () Bool)

(declare-fun call!262673 () List!38384)

(assert (=> b!3631687 (= e!2248012 call!262673)))

(declare-fun bm!262670 () Bool)

(assert (=> bm!262670 (= call!262676 call!262673)))

(declare-fun d!1068239 () Bool)

(declare-fun c!628256 () Bool)

(assert (=> d!1068239 (= c!628256 (or ((_ is EmptyExpr!10467) (regex!5708 anOtherTypeRule!33)) ((_ is EmptyLang!10467) (regex!5708 anOtherTypeRule!33))))))

(assert (=> d!1068239 (= (usedCharacters!920 (regex!5708 anOtherTypeRule!33)) e!2248013)))

(declare-fun bm!262668 () Bool)

(assert (=> bm!262668 (= call!262673 (usedCharacters!920 (ite c!628258 (reg!10796 (regex!5708 anOtherTypeRule!33)) (ite c!628257 (regOne!21447 (regex!5708 anOtherTypeRule!33)) (regTwo!21446 (regex!5708 anOtherTypeRule!33))))))))

(declare-fun b!3631688 () Bool)

(assert (=> b!3631688 (= e!2248011 (Cons!38260 (c!628204 (regex!5708 anOtherTypeRule!33)) Nil!38260))))

(declare-fun bm!262671 () Bool)

(assert (=> bm!262671 (= call!262675 (usedCharacters!920 (ite c!628257 (regTwo!21447 (regex!5708 anOtherTypeRule!33)) (regOne!21446 (regex!5708 anOtherTypeRule!33)))))))

(declare-fun b!3631689 () Bool)

(assert (=> b!3631689 (= e!2248013 Nil!38260)))

(declare-fun b!3631690 () Bool)

(assert (=> b!3631690 (= e!2248010 call!262674)))

(assert (= (and d!1068239 c!628256) b!3631689))

(assert (= (and d!1068239 (not c!628256)) b!3631684))

(assert (= (and b!3631684 c!628255) b!3631688))

(assert (= (and b!3631684 (not c!628255)) b!3631686))

(assert (= (and b!3631686 c!628258) b!3631687))

(assert (= (and b!3631686 (not c!628258)) b!3631683))

(assert (= (and b!3631683 c!628257) b!3631690))

(assert (= (and b!3631683 (not c!628257)) b!3631685))

(assert (= (or b!3631690 b!3631685) bm!262670))

(assert (= (or b!3631690 b!3631685) bm!262671))

(assert (= (or b!3631690 b!3631685) bm!262669))

(assert (= (or b!3631687 bm!262670) bm!262668))

(declare-fun m!4133391 () Bool)

(assert (=> bm!262669 m!4133391))

(declare-fun m!4133393 () Bool)

(assert (=> bm!262668 m!4133393))

(declare-fun m!4133395 () Bool)

(assert (=> bm!262671 m!4133395))

(assert (=> b!3631375 d!1068239))

(declare-fun d!1068241 () Bool)

(assert (=> d!1068241 (= (inv!51679 (tag!6438 (h!43681 rules!3307))) (= (mod (str.len (value!183137 (tag!6438 (h!43681 rules!3307)))) 2) 0))))

(assert (=> b!3631354 d!1068241))

(declare-fun d!1068243 () Bool)

(declare-fun res!1470722 () Bool)

(declare-fun e!2248014 () Bool)

(assert (=> d!1068243 (=> (not res!1470722) (not e!2248014))))

(assert (=> d!1068243 (= res!1470722 (semiInverseModEq!2423 (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toValue!8000 (transformation!5708 (h!43681 rules!3307)))))))

(assert (=> d!1068243 (= (inv!51683 (transformation!5708 (h!43681 rules!3307))) e!2248014)))

(declare-fun b!3631691 () Bool)

(assert (=> b!3631691 (= e!2248014 (equivClasses!2322 (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toValue!8000 (transformation!5708 (h!43681 rules!3307)))))))

(assert (= (and d!1068243 res!1470722) b!3631691))

(declare-fun m!4133397 () Bool)

(assert (=> d!1068243 m!4133397))

(declare-fun m!4133399 () Bool)

(assert (=> b!3631691 m!4133399))

(assert (=> b!3631354 d!1068243))

(declare-fun d!1068245 () Bool)

(declare-fun res!1470727 () Bool)

(declare-fun e!2248017 () Bool)

(assert (=> d!1068245 (=> (not res!1470727) (not e!2248017))))

(assert (=> d!1068245 (= res!1470727 (not (isEmpty!22633 (originalCharacters!6422 token!511))))))

(assert (=> d!1068245 (= (inv!51682 token!511) e!2248017)))

(declare-fun b!3631696 () Bool)

(declare-fun res!1470728 () Bool)

(assert (=> b!3631696 (=> (not res!1470728) (not e!2248017))))

(assert (=> b!3631696 (= res!1470728 (= (originalCharacters!6422 token!511) (list!14142 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 token!511))) (value!183138 token!511)))))))

(declare-fun b!3631697 () Bool)

(assert (=> b!3631697 (= e!2248017 (= (size!29192 token!511) (size!29196 (originalCharacters!6422 token!511))))))

(assert (= (and d!1068245 res!1470727) b!3631696))

(assert (= (and b!3631696 res!1470728) b!3631697))

(declare-fun b_lambda!107535 () Bool)

(assert (=> (not b_lambda!107535) (not b!3631696)))

(assert (=> b!3631696 t!295274))

(declare-fun b_and!266651 () Bool)

(assert (= b_and!266619 (and (=> t!295274 result!254170) b_and!266651)))

(assert (=> b!3631696 t!295276))

(declare-fun b_and!266653 () Bool)

(assert (= b_and!266621 (and (=> t!295276 result!254174) b_and!266653)))

(assert (=> b!3631696 t!295278))

(declare-fun b_and!266655 () Bool)

(assert (= b_and!266623 (and (=> t!295278 result!254176) b_and!266655)))

(assert (=> b!3631696 t!295280))

(declare-fun b_and!266657 () Bool)

(assert (= b_and!266625 (and (=> t!295280 result!254178) b_and!266657)))

(declare-fun m!4133401 () Bool)

(assert (=> d!1068245 m!4133401))

(assert (=> b!3631696 m!4133271))

(assert (=> b!3631696 m!4133271))

(declare-fun m!4133403 () Bool)

(assert (=> b!3631696 m!4133403))

(declare-fun m!4133405 () Bool)

(assert (=> b!3631697 m!4133405))

(assert (=> start!338546 d!1068245))

(declare-fun b!3631734 () Bool)

(declare-fun res!1470749 () Bool)

(declare-fun e!2248039 () Bool)

(assert (=> b!3631734 (=> res!1470749 e!2248039)))

(assert (=> b!3631734 (= res!1470749 (not ((_ is ElementMatch!10467) (regex!5708 (rule!8480 (_1!22200 lt!1256045))))))))

(declare-fun e!2248041 () Bool)

(assert (=> b!3631734 (= e!2248041 e!2248039)))

(declare-fun bm!262674 () Bool)

(declare-fun call!262679 () Bool)

(assert (=> bm!262674 (= call!262679 (isEmpty!22633 lt!1256050))))

(declare-fun b!3631735 () Bool)

(declare-fun res!1470754 () Bool)

(declare-fun e!2248037 () Bool)

(assert (=> b!3631735 (=> res!1470754 e!2248037)))

(declare-fun tail!5621 (List!38384) List!38384)

(assert (=> b!3631735 (= res!1470754 (not (isEmpty!22633 (tail!5621 lt!1256050))))))

(declare-fun b!3631736 () Bool)

(declare-fun res!1470756 () Bool)

(assert (=> b!3631736 (=> res!1470756 e!2248039)))

(declare-fun e!2248038 () Bool)

(assert (=> b!3631736 (= res!1470756 e!2248038)))

(declare-fun res!1470753 () Bool)

(assert (=> b!3631736 (=> (not res!1470753) (not e!2248038))))

(declare-fun lt!1256177 () Bool)

(assert (=> b!3631736 (= res!1470753 lt!1256177)))

(declare-fun b!3631738 () Bool)

(declare-fun e!2248040 () Bool)

(assert (=> b!3631738 (= e!2248040 e!2248041)))

(declare-fun c!628268 () Bool)

(assert (=> b!3631738 (= c!628268 ((_ is EmptyLang!10467) (regex!5708 (rule!8480 (_1!22200 lt!1256045)))))))

(declare-fun b!3631739 () Bool)

(declare-fun e!2248042 () Bool)

(assert (=> b!3631739 (= e!2248039 e!2248042)))

(declare-fun res!1470755 () Bool)

(assert (=> b!3631739 (=> (not res!1470755) (not e!2248042))))

(assert (=> b!3631739 (= res!1470755 (not lt!1256177))))

(declare-fun b!3631740 () Bool)

(assert (=> b!3631740 (= e!2248040 (= lt!1256177 call!262679))))

(declare-fun b!3631741 () Bool)

(declare-fun e!2248036 () Bool)

(declare-fun nullable!3623 (Regex!10467) Bool)

(assert (=> b!3631741 (= e!2248036 (nullable!3623 (regex!5708 (rule!8480 (_1!22200 lt!1256045)))))))

(declare-fun b!3631742 () Bool)

(declare-fun res!1470750 () Bool)

(assert (=> b!3631742 (=> (not res!1470750) (not e!2248038))))

(assert (=> b!3631742 (= res!1470750 (not call!262679))))

(declare-fun b!3631743 () Bool)

(assert (=> b!3631743 (= e!2248042 e!2248037)))

(declare-fun res!1470751 () Bool)

(assert (=> b!3631743 (=> res!1470751 e!2248037)))

(assert (=> b!3631743 (= res!1470751 call!262679)))

(declare-fun b!3631744 () Bool)

(declare-fun derivativeStep!3172 (Regex!10467 C!21120) Regex!10467)

(assert (=> b!3631744 (= e!2248036 (matchR!5036 (derivativeStep!3172 (regex!5708 (rule!8480 (_1!22200 lt!1256045))) (head!7688 lt!1256050)) (tail!5621 lt!1256050)))))

(declare-fun b!3631745 () Bool)

(assert (=> b!3631745 (= e!2248041 (not lt!1256177))))

(declare-fun d!1068247 () Bool)

(assert (=> d!1068247 e!2248040))

(declare-fun c!628267 () Bool)

(assert (=> d!1068247 (= c!628267 ((_ is EmptyExpr!10467) (regex!5708 (rule!8480 (_1!22200 lt!1256045)))))))

(assert (=> d!1068247 (= lt!1256177 e!2248036)))

(declare-fun c!628269 () Bool)

(assert (=> d!1068247 (= c!628269 (isEmpty!22633 lt!1256050))))

(declare-fun validRegex!4785 (Regex!10467) Bool)

(assert (=> d!1068247 (validRegex!4785 (regex!5708 (rule!8480 (_1!22200 lt!1256045))))))

(assert (=> d!1068247 (= (matchR!5036 (regex!5708 (rule!8480 (_1!22200 lt!1256045))) lt!1256050) lt!1256177)))

(declare-fun b!3631737 () Bool)

(assert (=> b!3631737 (= e!2248037 (not (= (head!7688 lt!1256050) (c!628204 (regex!5708 (rule!8480 (_1!22200 lt!1256045)))))))))

(declare-fun b!3631746 () Bool)

(assert (=> b!3631746 (= e!2248038 (= (head!7688 lt!1256050) (c!628204 (regex!5708 (rule!8480 (_1!22200 lt!1256045))))))))

(declare-fun b!3631747 () Bool)

(declare-fun res!1470752 () Bool)

(assert (=> b!3631747 (=> (not res!1470752) (not e!2248038))))

(assert (=> b!3631747 (= res!1470752 (isEmpty!22633 (tail!5621 lt!1256050)))))

(assert (= (and d!1068247 c!628269) b!3631741))

(assert (= (and d!1068247 (not c!628269)) b!3631744))

(assert (= (and d!1068247 c!628267) b!3631740))

(assert (= (and d!1068247 (not c!628267)) b!3631738))

(assert (= (and b!3631738 c!628268) b!3631745))

(assert (= (and b!3631738 (not c!628268)) b!3631734))

(assert (= (and b!3631734 (not res!1470749)) b!3631736))

(assert (= (and b!3631736 res!1470753) b!3631742))

(assert (= (and b!3631742 res!1470750) b!3631747))

(assert (= (and b!3631747 res!1470752) b!3631746))

(assert (= (and b!3631736 (not res!1470756)) b!3631739))

(assert (= (and b!3631739 res!1470755) b!3631743))

(assert (= (and b!3631743 (not res!1470751)) b!3631735))

(assert (= (and b!3631735 (not res!1470754)) b!3631737))

(assert (= (or b!3631740 b!3631742 b!3631743) bm!262674))

(declare-fun m!4133407 () Bool)

(assert (=> b!3631735 m!4133407))

(assert (=> b!3631735 m!4133407))

(declare-fun m!4133409 () Bool)

(assert (=> b!3631735 m!4133409))

(declare-fun m!4133411 () Bool)

(assert (=> b!3631737 m!4133411))

(assert (=> b!3631747 m!4133407))

(assert (=> b!3631747 m!4133407))

(assert (=> b!3631747 m!4133409))

(assert (=> b!3631746 m!4133411))

(declare-fun m!4133413 () Bool)

(assert (=> bm!262674 m!4133413))

(assert (=> d!1068247 m!4133413))

(declare-fun m!4133415 () Bool)

(assert (=> d!1068247 m!4133415))

(assert (=> b!3631744 m!4133411))

(assert (=> b!3631744 m!4133411))

(declare-fun m!4133417 () Bool)

(assert (=> b!3631744 m!4133417))

(assert (=> b!3631744 m!4133407))

(assert (=> b!3631744 m!4133417))

(assert (=> b!3631744 m!4133407))

(declare-fun m!4133419 () Bool)

(assert (=> b!3631744 m!4133419))

(declare-fun m!4133421 () Bool)

(assert (=> b!3631741 m!4133421))

(assert (=> b!3631376 d!1068247))

(declare-fun b!3631762 () Bool)

(declare-fun e!2248051 () Bool)

(declare-fun inv!17 (TokenValue!5938) Bool)

(assert (=> b!3631762 (= e!2248051 (inv!17 (value!183138 token!511)))))

(declare-fun b!3631763 () Bool)

(declare-fun res!1470761 () Bool)

(declare-fun e!2248053 () Bool)

(assert (=> b!3631763 (=> res!1470761 e!2248053)))

(assert (=> b!3631763 (= res!1470761 (not ((_ is IntegerValue!17816) (value!183138 token!511))))))

(assert (=> b!3631763 (= e!2248051 e!2248053)))

(declare-fun d!1068249 () Bool)

(declare-fun c!628276 () Bool)

(assert (=> d!1068249 (= c!628276 ((_ is IntegerValue!17814) (value!183138 token!511)))))

(declare-fun e!2248052 () Bool)

(assert (=> d!1068249 (= (inv!21 (value!183138 token!511)) e!2248052)))

(declare-fun b!3631764 () Bool)

(declare-fun inv!15 (TokenValue!5938) Bool)

(assert (=> b!3631764 (= e!2248053 (inv!15 (value!183138 token!511)))))

(declare-fun b!3631765 () Bool)

(declare-fun inv!16 (TokenValue!5938) Bool)

(assert (=> b!3631765 (= e!2248052 (inv!16 (value!183138 token!511)))))

(declare-fun b!3631766 () Bool)

(assert (=> b!3631766 (= e!2248052 e!2248051)))

(declare-fun c!628275 () Bool)

(assert (=> b!3631766 (= c!628275 ((_ is IntegerValue!17815) (value!183138 token!511)))))

(assert (= (and d!1068249 c!628276) b!3631765))

(assert (= (and d!1068249 (not c!628276)) b!3631766))

(assert (= (and b!3631766 c!628275) b!3631762))

(assert (= (and b!3631766 (not c!628275)) b!3631763))

(assert (= (and b!3631763 (not res!1470761)) b!3631764))

(declare-fun m!4133473 () Bool)

(assert (=> b!3631762 m!4133473))

(declare-fun m!4133475 () Bool)

(assert (=> b!3631764 m!4133475))

(declare-fun m!4133477 () Bool)

(assert (=> b!3631765 m!4133477))

(assert (=> b!3631355 d!1068249))

(declare-fun b!3631771 () Bool)

(declare-fun res!1470764 () Bool)

(declare-fun e!2248059 () Bool)

(assert (=> b!3631771 (=> res!1470764 e!2248059)))

(assert (=> b!3631771 (= res!1470764 (not ((_ is ElementMatch!10467) (regex!5708 lt!1256048))))))

(declare-fun e!2248061 () Bool)

(assert (=> b!3631771 (= e!2248061 e!2248059)))

(declare-fun bm!262675 () Bool)

(declare-fun call!262680 () Bool)

(assert (=> bm!262675 (= call!262680 (isEmpty!22633 (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))))))

(declare-fun b!3631772 () Bool)

(declare-fun res!1470769 () Bool)

(declare-fun e!2248057 () Bool)

(assert (=> b!3631772 (=> res!1470769 e!2248057)))

(assert (=> b!3631772 (= res!1470769 (not (isEmpty!22633 (tail!5621 (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))))))))

(declare-fun b!3631773 () Bool)

(declare-fun res!1470771 () Bool)

(assert (=> b!3631773 (=> res!1470771 e!2248059)))

(declare-fun e!2248058 () Bool)

(assert (=> b!3631773 (= res!1470771 e!2248058)))

(declare-fun res!1470768 () Bool)

(assert (=> b!3631773 (=> (not res!1470768) (not e!2248058))))

(declare-fun lt!1256196 () Bool)

(assert (=> b!3631773 (= res!1470768 lt!1256196)))

(declare-fun b!3631775 () Bool)

(declare-fun e!2248060 () Bool)

(assert (=> b!3631775 (= e!2248060 e!2248061)))

(declare-fun c!628279 () Bool)

(assert (=> b!3631775 (= c!628279 ((_ is EmptyLang!10467) (regex!5708 lt!1256048)))))

(declare-fun b!3631776 () Bool)

(declare-fun e!2248062 () Bool)

(assert (=> b!3631776 (= e!2248059 e!2248062)))

(declare-fun res!1470770 () Bool)

(assert (=> b!3631776 (=> (not res!1470770) (not e!2248062))))

(assert (=> b!3631776 (= res!1470770 (not lt!1256196))))

(declare-fun b!3631777 () Bool)

(assert (=> b!3631777 (= e!2248060 (= lt!1256196 call!262680))))

(declare-fun b!3631778 () Bool)

(declare-fun e!2248056 () Bool)

(assert (=> b!3631778 (= e!2248056 (nullable!3623 (regex!5708 lt!1256048)))))

(declare-fun b!3631779 () Bool)

(declare-fun res!1470765 () Bool)

(assert (=> b!3631779 (=> (not res!1470765) (not e!2248058))))

(assert (=> b!3631779 (= res!1470765 (not call!262680))))

(declare-fun b!3631780 () Bool)

(assert (=> b!3631780 (= e!2248062 e!2248057)))

(declare-fun res!1470766 () Bool)

(assert (=> b!3631780 (=> res!1470766 e!2248057)))

(assert (=> b!3631780 (= res!1470766 call!262680)))

(declare-fun b!3631781 () Bool)

(assert (=> b!3631781 (= e!2248056 (matchR!5036 (derivativeStep!3172 (regex!5708 lt!1256048) (head!7688 (list!14142 (charsOf!3722 (_1!22200 lt!1256045))))) (tail!5621 (list!14142 (charsOf!3722 (_1!22200 lt!1256045))))))))

(declare-fun b!3631782 () Bool)

(assert (=> b!3631782 (= e!2248061 (not lt!1256196))))

(declare-fun d!1068255 () Bool)

(assert (=> d!1068255 e!2248060))

(declare-fun c!628278 () Bool)

(assert (=> d!1068255 (= c!628278 ((_ is EmptyExpr!10467) (regex!5708 lt!1256048)))))

(assert (=> d!1068255 (= lt!1256196 e!2248056)))

(declare-fun c!628280 () Bool)

(assert (=> d!1068255 (= c!628280 (isEmpty!22633 (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))))))

(assert (=> d!1068255 (validRegex!4785 (regex!5708 lt!1256048))))

(assert (=> d!1068255 (= (matchR!5036 (regex!5708 lt!1256048) (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))) lt!1256196)))

(declare-fun b!3631774 () Bool)

(assert (=> b!3631774 (= e!2248057 (not (= (head!7688 (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))) (c!628204 (regex!5708 lt!1256048)))))))

(declare-fun b!3631783 () Bool)

(assert (=> b!3631783 (= e!2248058 (= (head!7688 (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))) (c!628204 (regex!5708 lt!1256048))))))

(declare-fun b!3631784 () Bool)

(declare-fun res!1470767 () Bool)

(assert (=> b!3631784 (=> (not res!1470767) (not e!2248058))))

(assert (=> b!3631784 (= res!1470767 (isEmpty!22633 (tail!5621 (list!14142 (charsOf!3722 (_1!22200 lt!1256045))))))))

(assert (= (and d!1068255 c!628280) b!3631778))

(assert (= (and d!1068255 (not c!628280)) b!3631781))

(assert (= (and d!1068255 c!628278) b!3631777))

(assert (= (and d!1068255 (not c!628278)) b!3631775))

(assert (= (and b!3631775 c!628279) b!3631782))

(assert (= (and b!3631775 (not c!628279)) b!3631771))

(assert (= (and b!3631771 (not res!1470764)) b!3631773))

(assert (= (and b!3631773 res!1470768) b!3631779))

(assert (= (and b!3631779 res!1470765) b!3631784))

(assert (= (and b!3631784 res!1470767) b!3631783))

(assert (= (and b!3631773 (not res!1470771)) b!3631776))

(assert (= (and b!3631776 res!1470770) b!3631780))

(assert (= (and b!3631780 (not res!1470766)) b!3631772))

(assert (= (and b!3631772 (not res!1470769)) b!3631774))

(assert (= (or b!3631777 b!3631779 b!3631780) bm!262675))

(assert (=> b!3631772 m!4133003))

(declare-fun m!4133495 () Bool)

(assert (=> b!3631772 m!4133495))

(assert (=> b!3631772 m!4133495))

(declare-fun m!4133497 () Bool)

(assert (=> b!3631772 m!4133497))

(assert (=> b!3631774 m!4133003))

(declare-fun m!4133499 () Bool)

(assert (=> b!3631774 m!4133499))

(assert (=> b!3631784 m!4133003))

(assert (=> b!3631784 m!4133495))

(assert (=> b!3631784 m!4133495))

(assert (=> b!3631784 m!4133497))

(assert (=> b!3631783 m!4133003))

(assert (=> b!3631783 m!4133499))

(assert (=> bm!262675 m!4133003))

(declare-fun m!4133503 () Bool)

(assert (=> bm!262675 m!4133503))

(assert (=> d!1068255 m!4133003))

(assert (=> d!1068255 m!4133503))

(declare-fun m!4133505 () Bool)

(assert (=> d!1068255 m!4133505))

(assert (=> b!3631781 m!4133003))

(assert (=> b!3631781 m!4133499))

(assert (=> b!3631781 m!4133499))

(declare-fun m!4133507 () Bool)

(assert (=> b!3631781 m!4133507))

(assert (=> b!3631781 m!4133003))

(assert (=> b!3631781 m!4133495))

(assert (=> b!3631781 m!4133507))

(assert (=> b!3631781 m!4133495))

(declare-fun m!4133509 () Bool)

(assert (=> b!3631781 m!4133509))

(declare-fun m!4133511 () Bool)

(assert (=> b!3631778 m!4133511))

(assert (=> b!3631366 d!1068255))

(declare-fun d!1068265 () Bool)

(assert (=> d!1068265 (= (list!14142 (charsOf!3722 (_1!22200 lt!1256045))) (list!14144 (c!628205 (charsOf!3722 (_1!22200 lt!1256045)))))))

(declare-fun bs!571686 () Bool)

(assert (= bs!571686 d!1068265))

(declare-fun m!4133513 () Bool)

(assert (=> bs!571686 m!4133513))

(assert (=> b!3631366 d!1068265))

(declare-fun d!1068267 () Bool)

(declare-fun lt!1256199 () BalanceConc!22960)

(assert (=> d!1068267 (= (list!14142 lt!1256199) (originalCharacters!6422 (_1!22200 lt!1256045)))))

(assert (=> d!1068267 (= lt!1256199 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (value!183138 (_1!22200 lt!1256045))))))

(assert (=> d!1068267 (= (charsOf!3722 (_1!22200 lt!1256045)) lt!1256199)))

(declare-fun b_lambda!107537 () Bool)

(assert (=> (not b_lambda!107537) (not d!1068267)))

(declare-fun t!295322 () Bool)

(declare-fun tb!208693 () Bool)

(assert (=> (and b!3631365 (= (toChars!7859 (transformation!5708 (rule!8480 token!511))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295322) tb!208693))

(declare-fun b!3631789 () Bool)

(declare-fun e!2248066 () Bool)

(declare-fun tp!1108664 () Bool)

(assert (=> b!3631789 (= e!2248066 (and (inv!51686 (c!628205 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (value!183138 (_1!22200 lt!1256045))))) tp!1108664))))

(declare-fun result!254222 () Bool)

(assert (=> tb!208693 (= result!254222 (and (inv!51687 (dynLambda!16584 (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045)))) (value!183138 (_1!22200 lt!1256045)))) e!2248066))))

(assert (= tb!208693 b!3631789))

(declare-fun m!4133515 () Bool)

(assert (=> b!3631789 m!4133515))

(declare-fun m!4133517 () Bool)

(assert (=> tb!208693 m!4133517))

(assert (=> d!1068267 t!295322))

(declare-fun b_and!266659 () Bool)

(assert (= b_and!266651 (and (=> t!295322 result!254222) b_and!266659)))

(declare-fun t!295324 () Bool)

(declare-fun tb!208695 () Bool)

(assert (=> (and b!3631367 (= (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295324) tb!208695))

(declare-fun result!254224 () Bool)

(assert (= result!254224 result!254222))

(assert (=> d!1068267 t!295324))

(declare-fun b_and!266661 () Bool)

(assert (= b_and!266653 (and (=> t!295324 result!254224) b_and!266661)))

(declare-fun t!295326 () Bool)

(declare-fun tb!208697 () Bool)

(assert (=> (and b!3631368 (= (toChars!7859 (transformation!5708 rule!403)) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295326) tb!208697))

(declare-fun result!254226 () Bool)

(assert (= result!254226 result!254222))

(assert (=> d!1068267 t!295326))

(declare-fun b_and!266663 () Bool)

(assert (= b_and!266655 (and (=> t!295326 result!254226) b_and!266663)))

(declare-fun t!295328 () Bool)

(declare-fun tb!208699 () Bool)

(assert (=> (and b!3631364 (= (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295328) tb!208699))

(declare-fun result!254228 () Bool)

(assert (= result!254228 result!254222))

(assert (=> d!1068267 t!295328))

(declare-fun b_and!266665 () Bool)

(assert (= b_and!266657 (and (=> t!295328 result!254228) b_and!266665)))

(declare-fun m!4133519 () Bool)

(assert (=> d!1068267 m!4133519))

(declare-fun m!4133521 () Bool)

(assert (=> d!1068267 m!4133521))

(assert (=> b!3631366 d!1068267))

(declare-fun d!1068269 () Bool)

(assert (=> d!1068269 (= (get!12509 lt!1256039) (v!37836 lt!1256039))))

(assert (=> b!3631366 d!1068269))

(declare-fun d!1068271 () Bool)

(assert (=> d!1068271 (= (inv!51679 (tag!6438 rule!403)) (= (mod (str.len (value!183137 (tag!6438 rule!403))) 2) 0))))

(assert (=> b!3631377 d!1068271))

(declare-fun d!1068273 () Bool)

(declare-fun res!1470776 () Bool)

(declare-fun e!2248067 () Bool)

(assert (=> d!1068273 (=> (not res!1470776) (not e!2248067))))

(assert (=> d!1068273 (= res!1470776 (semiInverseModEq!2423 (toChars!7859 (transformation!5708 rule!403)) (toValue!8000 (transformation!5708 rule!403))))))

(assert (=> d!1068273 (= (inv!51683 (transformation!5708 rule!403)) e!2248067)))

(declare-fun b!3631790 () Bool)

(assert (=> b!3631790 (= e!2248067 (equivClasses!2322 (toChars!7859 (transformation!5708 rule!403)) (toValue!8000 (transformation!5708 rule!403))))))

(assert (= (and d!1068273 res!1470776) b!3631790))

(declare-fun m!4133523 () Bool)

(assert (=> d!1068273 m!4133523))

(declare-fun m!4133525 () Bool)

(assert (=> b!3631790 m!4133525))

(assert (=> b!3631377 d!1068273))

(declare-fun d!1068275 () Bool)

(declare-fun isEmpty!22637 (Option!8045) Bool)

(assert (=> d!1068275 (= (isDefined!6276 lt!1256039) (not (isEmpty!22637 lt!1256039)))))

(declare-fun bs!571687 () Bool)

(assert (= bs!571687 d!1068275))

(declare-fun m!4133527 () Bool)

(assert (=> bs!571687 m!4133527))

(assert (=> b!3631356 d!1068275))

(assert (=> b!3631356 d!1068267))

(declare-fun b!3631807 () Bool)

(declare-fun e!2248076 () List!38384)

(assert (=> b!3631807 (= e!2248076 (_2!22200 lt!1256045))))

(declare-fun d!1068277 () Bool)

(declare-fun e!2248077 () Bool)

(assert (=> d!1068277 e!2248077))

(declare-fun res!1470782 () Bool)

(assert (=> d!1068277 (=> (not res!1470782) (not e!2248077))))

(declare-fun lt!1256208 () List!38384)

(assert (=> d!1068277 (= res!1470782 (= (content!5487 lt!1256208) ((_ map or) (content!5487 lt!1256050) (content!5487 (_2!22200 lt!1256045)))))))

(assert (=> d!1068277 (= lt!1256208 e!2248076)))

(declare-fun c!628287 () Bool)

(assert (=> d!1068277 (= c!628287 ((_ is Nil!38260) lt!1256050))))

(assert (=> d!1068277 (= (++!9524 lt!1256050 (_2!22200 lt!1256045)) lt!1256208)))

(declare-fun b!3631810 () Bool)

(assert (=> b!3631810 (= e!2248077 (or (not (= (_2!22200 lt!1256045) Nil!38260)) (= lt!1256208 lt!1256050)))))

(declare-fun b!3631809 () Bool)

(declare-fun res!1470781 () Bool)

(assert (=> b!3631809 (=> (not res!1470781) (not e!2248077))))

(assert (=> b!3631809 (= res!1470781 (= (size!29196 lt!1256208) (+ (size!29196 lt!1256050) (size!29196 (_2!22200 lt!1256045)))))))

(declare-fun b!3631808 () Bool)

(assert (=> b!3631808 (= e!2248076 (Cons!38260 (h!43680 lt!1256050) (++!9524 (t!295247 lt!1256050) (_2!22200 lt!1256045))))))

(assert (= (and d!1068277 c!628287) b!3631807))

(assert (= (and d!1068277 (not c!628287)) b!3631808))

(assert (= (and d!1068277 res!1470782) b!3631809))

(assert (= (and b!3631809 res!1470781) b!3631810))

(declare-fun m!4133529 () Bool)

(assert (=> d!1068277 m!4133529))

(declare-fun m!4133531 () Bool)

(assert (=> d!1068277 m!4133531))

(declare-fun m!4133533 () Bool)

(assert (=> d!1068277 m!4133533))

(declare-fun m!4133535 () Bool)

(assert (=> b!3631809 m!4133535))

(declare-fun m!4133537 () Bool)

(assert (=> b!3631809 m!4133537))

(declare-fun m!4133539 () Bool)

(assert (=> b!3631809 m!4133539))

(declare-fun m!4133541 () Bool)

(assert (=> b!3631808 m!4133541))

(assert (=> b!3631356 d!1068277))

(declare-fun d!1068279 () Bool)

(assert (=> d!1068279 (isPrefix!3071 lt!1256050 (++!9524 lt!1256050 (_2!22200 lt!1256045)))))

(declare-fun lt!1256211 () Unit!55076)

(declare-fun choose!21330 (List!38384 List!38384) Unit!55076)

(assert (=> d!1068279 (= lt!1256211 (choose!21330 lt!1256050 (_2!22200 lt!1256045)))))

(assert (=> d!1068279 (= (lemmaConcatTwoListThenFirstIsPrefix!1990 lt!1256050 (_2!22200 lt!1256045)) lt!1256211)))

(declare-fun bs!571688 () Bool)

(assert (= bs!571688 d!1068279))

(assert (=> bs!571688 m!4132953))

(assert (=> bs!571688 m!4132953))

(assert (=> bs!571688 m!4132955))

(declare-fun m!4133543 () Bool)

(assert (=> bs!571688 m!4133543))

(assert (=> b!3631356 d!1068279))

(declare-fun b!3631840 () Bool)

(declare-fun e!2248096 () Bool)

(assert (=> b!3631840 (= e!2248096 (isPrefix!3071 (tail!5621 lt!1256050) (tail!5621 (++!9524 lt!1256050 (_2!22200 lt!1256045)))))))

(declare-fun d!1068281 () Bool)

(declare-fun e!2248097 () Bool)

(assert (=> d!1068281 e!2248097))

(declare-fun res!1470807 () Bool)

(assert (=> d!1068281 (=> res!1470807 e!2248097)))

(declare-fun lt!1256222 () Bool)

(assert (=> d!1068281 (= res!1470807 (not lt!1256222))))

(declare-fun e!2248095 () Bool)

(assert (=> d!1068281 (= lt!1256222 e!2248095)))

(declare-fun res!1470804 () Bool)

(assert (=> d!1068281 (=> res!1470804 e!2248095)))

(assert (=> d!1068281 (= res!1470804 ((_ is Nil!38260) lt!1256050))))

(assert (=> d!1068281 (= (isPrefix!3071 lt!1256050 (++!9524 lt!1256050 (_2!22200 lt!1256045))) lt!1256222)))

(declare-fun b!3631839 () Bool)

(declare-fun res!1470805 () Bool)

(assert (=> b!3631839 (=> (not res!1470805) (not e!2248096))))

(assert (=> b!3631839 (= res!1470805 (= (head!7688 lt!1256050) (head!7688 (++!9524 lt!1256050 (_2!22200 lt!1256045)))))))

(declare-fun b!3631838 () Bool)

(assert (=> b!3631838 (= e!2248095 e!2248096)))

(declare-fun res!1470806 () Bool)

(assert (=> b!3631838 (=> (not res!1470806) (not e!2248096))))

(assert (=> b!3631838 (= res!1470806 (not ((_ is Nil!38260) (++!9524 lt!1256050 (_2!22200 lt!1256045)))))))

(declare-fun b!3631841 () Bool)

(assert (=> b!3631841 (= e!2248097 (>= (size!29196 (++!9524 lt!1256050 (_2!22200 lt!1256045))) (size!29196 lt!1256050)))))

(assert (= (and d!1068281 (not res!1470804)) b!3631838))

(assert (= (and b!3631838 res!1470806) b!3631839))

(assert (= (and b!3631839 res!1470805) b!3631840))

(assert (= (and d!1068281 (not res!1470807)) b!3631841))

(assert (=> b!3631840 m!4133407))

(assert (=> b!3631840 m!4132953))

(declare-fun m!4133587 () Bool)

(assert (=> b!3631840 m!4133587))

(assert (=> b!3631840 m!4133407))

(assert (=> b!3631840 m!4133587))

(declare-fun m!4133589 () Bool)

(assert (=> b!3631840 m!4133589))

(assert (=> b!3631839 m!4133411))

(assert (=> b!3631839 m!4132953))

(declare-fun m!4133591 () Bool)

(assert (=> b!3631839 m!4133591))

(assert (=> b!3631841 m!4132953))

(declare-fun m!4133593 () Bool)

(assert (=> b!3631841 m!4133593))

(assert (=> b!3631841 m!4133537))

(assert (=> b!3631356 d!1068281))

(declare-fun d!1068287 () Bool)

(assert (=> d!1068287 (= (list!14142 lt!1256036) (list!14144 (c!628205 lt!1256036)))))

(declare-fun bs!571689 () Bool)

(assert (= bs!571689 d!1068287))

(declare-fun m!4133595 () Bool)

(assert (=> bs!571689 m!4133595))

(assert (=> b!3631356 d!1068287))

(declare-fun b!3631922 () Bool)

(declare-fun e!2248140 () Unit!55076)

(declare-fun Unit!55082 () Unit!55076)

(assert (=> b!3631922 (= e!2248140 Unit!55082)))

(declare-fun d!1068289 () Bool)

(assert (=> d!1068289 (isDefined!6277 (maxPrefix!2831 thiss!23823 rules!3307 (++!9524 lt!1256040 suffix!1395)))))

(declare-fun lt!1256263 () Unit!55076)

(assert (=> d!1068289 (= lt!1256263 e!2248140)))

(declare-fun c!628300 () Bool)

(assert (=> d!1068289 (= c!628300 (isEmpty!22635 (maxPrefix!2831 thiss!23823 rules!3307 (++!9524 lt!1256040 suffix!1395))))))

(declare-fun lt!1256271 () Unit!55076)

(declare-fun lt!1256262 () Unit!55076)

(assert (=> d!1068289 (= lt!1256271 lt!1256262)))

(declare-fun e!2248139 () Bool)

(assert (=> d!1068289 e!2248139))

(declare-fun res!1470824 () Bool)

(assert (=> d!1068289 (=> (not res!1470824) (not e!2248139))))

(declare-fun lt!1256274 () Token!10782)

(assert (=> d!1068289 (= res!1470824 (isDefined!6276 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 lt!1256274)))))))

(assert (=> d!1068289 (= lt!1256262 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1312 thiss!23823 rules!3307 lt!1256040 lt!1256274))))

(declare-fun lt!1256270 () Unit!55076)

(declare-fun lt!1256266 () Unit!55076)

(assert (=> d!1068289 (= lt!1256270 lt!1256266)))

(declare-fun lt!1256265 () List!38384)

(assert (=> d!1068289 (isPrefix!3071 lt!1256265 (++!9524 lt!1256040 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!474 (List!38384 List!38384 List!38384) Unit!55076)

(assert (=> d!1068289 (= lt!1256266 (lemmaPrefixStaysPrefixWhenAddingToSuffix!474 lt!1256265 lt!1256040 suffix!1395))))

(assert (=> d!1068289 (= lt!1256265 (list!14142 (charsOf!3722 lt!1256274)))))

(declare-fun lt!1256273 () Unit!55076)

(declare-fun lt!1256268 () Unit!55076)

(assert (=> d!1068289 (= lt!1256273 lt!1256268)))

(declare-fun lt!1256261 () List!38384)

(declare-fun lt!1256267 () List!38384)

(assert (=> d!1068289 (isPrefix!3071 lt!1256261 (++!9524 lt!1256261 lt!1256267))))

(assert (=> d!1068289 (= lt!1256268 (lemmaConcatTwoListThenFirstIsPrefix!1990 lt!1256261 lt!1256267))))

(assert (=> d!1068289 (= lt!1256267 (_2!22200 (get!12508 (maxPrefix!2831 thiss!23823 rules!3307 lt!1256040))))))

(assert (=> d!1068289 (= lt!1256261 (list!14142 (charsOf!3722 lt!1256274)))))

(declare-datatypes ((List!38389 0))(
  ( (Nil!38265) (Cons!38265 (h!43685 Token!10782) (t!295352 List!38389)) )
))
(declare-fun head!7690 (List!38389) Token!10782)

(declare-datatypes ((IArray!23355 0))(
  ( (IArray!23356 (innerList!11735 List!38389)) )
))
(declare-datatypes ((Conc!11675 0))(
  ( (Node!11675 (left!29871 Conc!11675) (right!30201 Conc!11675) (csize!23580 Int) (cheight!11886 Int)) (Leaf!18140 (xs!14877 IArray!23355) (csize!23581 Int)) (Empty!11675) )
))
(declare-datatypes ((BalanceConc!22964 0))(
  ( (BalanceConc!22965 (c!628317 Conc!11675)) )
))
(declare-fun list!14146 (BalanceConc!22964) List!38389)

(declare-datatypes ((tuple2!38136 0))(
  ( (tuple2!38137 (_1!22202 BalanceConc!22964) (_2!22202 BalanceConc!22960)) )
))
(declare-fun lex!2506 (LexerInterface!5297 List!38385 BalanceConc!22960) tuple2!38136)

(assert (=> d!1068289 (= lt!1256274 (head!7690 (list!14146 (_1!22202 (lex!2506 thiss!23823 rules!3307 (seqFromList!4257 lt!1256040))))))))

(assert (=> d!1068289 (not (isEmpty!22632 rules!3307))))

(assert (=> d!1068289 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!975 thiss!23823 rules!3307 lt!1256040 suffix!1395) lt!1256263)))

(declare-fun b!3631921 () Bool)

(declare-fun Unit!55083 () Unit!55076)

(assert (=> b!3631921 (= e!2248140 Unit!55083)))

(declare-fun lt!1256264 () List!38384)

(assert (=> b!3631921 (= lt!1256264 (++!9524 lt!1256040 suffix!1395))))

(declare-fun lt!1256275 () Unit!55076)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!510 (LexerInterface!5297 Rule!11216 List!38385 List!38384) Unit!55076)

(assert (=> b!3631921 (= lt!1256275 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!510 thiss!23823 (rule!8480 lt!1256274) rules!3307 lt!1256264))))

(assert (=> b!3631921 (isEmpty!22635 (maxPrefixOneRule!1969 thiss!23823 (rule!8480 lt!1256274) lt!1256264))))

(declare-fun lt!1256276 () Unit!55076)

(assert (=> b!3631921 (= lt!1256276 lt!1256275)))

(declare-fun lt!1256269 () List!38384)

(assert (=> b!3631921 (= lt!1256269 (list!14142 (charsOf!3722 lt!1256274)))))

(declare-fun lt!1256260 () Unit!55076)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!498 (LexerInterface!5297 Rule!11216 List!38384 List!38384) Unit!55076)

(assert (=> b!3631921 (= lt!1256260 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!498 thiss!23823 (rule!8480 lt!1256274) lt!1256269 (++!9524 lt!1256040 suffix!1395)))))

(assert (=> b!3631921 (not (matchR!5036 (regex!5708 (rule!8480 lt!1256274)) lt!1256269))))

(declare-fun lt!1256272 () Unit!55076)

(assert (=> b!3631921 (= lt!1256272 lt!1256260)))

(assert (=> b!3631921 false))

(declare-fun b!3631920 () Bool)

(assert (=> b!3631920 (= e!2248139 (= (rule!8480 lt!1256274) (get!12509 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 lt!1256274))))))))

(declare-fun b!3631919 () Bool)

(declare-fun res!1470825 () Bool)

(assert (=> b!3631919 (=> (not res!1470825) (not e!2248139))))

(assert (=> b!3631919 (= res!1470825 (matchR!5036 (regex!5708 (get!12509 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 lt!1256274))))) (list!14142 (charsOf!3722 lt!1256274))))))

(assert (= (and d!1068289 res!1470824) b!3631919))

(assert (= (and b!3631919 res!1470825) b!3631920))

(assert (= (and d!1068289 c!628300) b!3631921))

(assert (= (and d!1068289 (not c!628300)) b!3631922))

(assert (=> d!1068289 m!4132983))

(declare-fun m!4133629 () Bool)

(assert (=> d!1068289 m!4133629))

(declare-fun m!4133631 () Bool)

(assert (=> d!1068289 m!4133631))

(declare-fun m!4133633 () Bool)

(assert (=> d!1068289 m!4133633))

(declare-fun m!4133635 () Bool)

(assert (=> d!1068289 m!4133635))

(assert (=> d!1068289 m!4133629))

(declare-fun m!4133637 () Bool)

(assert (=> d!1068289 m!4133637))

(assert (=> d!1068289 m!4132983))

(declare-fun m!4133639 () Bool)

(assert (=> d!1068289 m!4133639))

(assert (=> d!1068289 m!4132961))

(assert (=> d!1068289 m!4133629))

(declare-fun m!4133641 () Bool)

(assert (=> d!1068289 m!4133641))

(assert (=> d!1068289 m!4132961))

(declare-fun m!4133643 () Bool)

(assert (=> d!1068289 m!4133643))

(declare-fun m!4133645 () Bool)

(assert (=> d!1068289 m!4133645))

(assert (=> d!1068289 m!4133633))

(declare-fun m!4133647 () Bool)

(assert (=> d!1068289 m!4133647))

(declare-fun m!4133649 () Bool)

(assert (=> d!1068289 m!4133649))

(assert (=> d!1068289 m!4133001))

(declare-fun m!4133651 () Bool)

(assert (=> d!1068289 m!4133651))

(assert (=> d!1068289 m!4132961))

(declare-fun m!4133653 () Bool)

(assert (=> d!1068289 m!4133653))

(assert (=> d!1068289 m!4133641))

(declare-fun m!4133655 () Bool)

(assert (=> d!1068289 m!4133655))

(declare-fun m!4133657 () Bool)

(assert (=> d!1068289 m!4133657))

(declare-fun m!4133659 () Bool)

(assert (=> d!1068289 m!4133659))

(declare-fun m!4133661 () Bool)

(assert (=> d!1068289 m!4133661))

(assert (=> d!1068289 m!4133661))

(declare-fun m!4133663 () Bool)

(assert (=> d!1068289 m!4133663))

(assert (=> d!1068289 m!4133657))

(assert (=> d!1068289 m!4133647))

(declare-fun m!4133665 () Bool)

(assert (=> b!3631921 m!4133665))

(declare-fun m!4133667 () Bool)

(assert (=> b!3631921 m!4133667))

(assert (=> b!3631921 m!4133633))

(assert (=> b!3631921 m!4133635))

(declare-fun m!4133669 () Bool)

(assert (=> b!3631921 m!4133669))

(assert (=> b!3631921 m!4132961))

(assert (=> b!3631921 m!4132961))

(declare-fun m!4133671 () Bool)

(assert (=> b!3631921 m!4133671))

(declare-fun m!4133673 () Bool)

(assert (=> b!3631921 m!4133673))

(assert (=> b!3631921 m!4133633))

(assert (=> b!3631921 m!4133665))

(assert (=> b!3631920 m!4133641))

(assert (=> b!3631920 m!4133641))

(declare-fun m!4133675 () Bool)

(assert (=> b!3631920 m!4133675))

(assert (=> b!3631919 m!4133633))

(assert (=> b!3631919 m!4133635))

(assert (=> b!3631919 m!4133635))

(declare-fun m!4133677 () Bool)

(assert (=> b!3631919 m!4133677))

(assert (=> b!3631919 m!4133641))

(assert (=> b!3631919 m!4133633))

(assert (=> b!3631919 m!4133641))

(assert (=> b!3631919 m!4133675))

(assert (=> b!3631356 d!1068289))

(declare-fun b!3631925 () Bool)

(declare-fun e!2248142 () Bool)

(assert (=> b!3631925 (= e!2248142 (isPrefix!3071 (tail!5621 lt!1256040) (tail!5621 lt!1256049)))))

(declare-fun d!1068297 () Bool)

(declare-fun e!2248143 () Bool)

(assert (=> d!1068297 e!2248143))

(declare-fun res!1470829 () Bool)

(assert (=> d!1068297 (=> res!1470829 e!2248143)))

(declare-fun lt!1256277 () Bool)

(assert (=> d!1068297 (= res!1470829 (not lt!1256277))))

(declare-fun e!2248141 () Bool)

(assert (=> d!1068297 (= lt!1256277 e!2248141)))

(declare-fun res!1470826 () Bool)

(assert (=> d!1068297 (=> res!1470826 e!2248141)))

(assert (=> d!1068297 (= res!1470826 ((_ is Nil!38260) lt!1256040))))

(assert (=> d!1068297 (= (isPrefix!3071 lt!1256040 lt!1256049) lt!1256277)))

(declare-fun b!3631924 () Bool)

(declare-fun res!1470827 () Bool)

(assert (=> b!3631924 (=> (not res!1470827) (not e!2248142))))

(assert (=> b!3631924 (= res!1470827 (= (head!7688 lt!1256040) (head!7688 lt!1256049)))))

(declare-fun b!3631923 () Bool)

(assert (=> b!3631923 (= e!2248141 e!2248142)))

(declare-fun res!1470828 () Bool)

(assert (=> b!3631923 (=> (not res!1470828) (not e!2248142))))

(assert (=> b!3631923 (= res!1470828 (not ((_ is Nil!38260) lt!1256049)))))

(declare-fun b!3631926 () Bool)

(assert (=> b!3631926 (= e!2248143 (>= (size!29196 lt!1256049) (size!29196 lt!1256040)))))

(assert (= (and d!1068297 (not res!1470826)) b!3631923))

(assert (= (and b!3631923 res!1470828) b!3631924))

(assert (= (and b!3631924 res!1470827) b!3631925))

(assert (= (and d!1068297 (not res!1470829)) b!3631926))

(declare-fun m!4133679 () Bool)

(assert (=> b!3631925 m!4133679))

(declare-fun m!4133681 () Bool)

(assert (=> b!3631925 m!4133681))

(assert (=> b!3631925 m!4133679))

(assert (=> b!3631925 m!4133681))

(declare-fun m!4133683 () Bool)

(assert (=> b!3631925 m!4133683))

(declare-fun m!4133685 () Bool)

(assert (=> b!3631924 m!4133685))

(declare-fun m!4133687 () Bool)

(assert (=> b!3631924 m!4133687))

(declare-fun m!4133689 () Bool)

(assert (=> b!3631926 m!4133689))

(assert (=> b!3631926 m!4133233))

(assert (=> b!3631356 d!1068297))

(declare-fun d!1068299 () Bool)

(assert (=> d!1068299 (isPrefix!3071 lt!1256040 (++!9524 lt!1256040 suffix!1395))))

(declare-fun lt!1256278 () Unit!55076)

(assert (=> d!1068299 (= lt!1256278 (choose!21330 lt!1256040 suffix!1395))))

(assert (=> d!1068299 (= (lemmaConcatTwoListThenFirstIsPrefix!1990 lt!1256040 suffix!1395) lt!1256278)))

(declare-fun bs!571690 () Bool)

(assert (= bs!571690 d!1068299))

(assert (=> bs!571690 m!4132961))

(assert (=> bs!571690 m!4132961))

(declare-fun m!4133691 () Bool)

(assert (=> bs!571690 m!4133691))

(declare-fun m!4133693 () Bool)

(assert (=> bs!571690 m!4133693))

(assert (=> b!3631356 d!1068299))

(declare-fun b!3631927 () Bool)

(declare-fun e!2248144 () List!38384)

(assert (=> b!3631927 (= e!2248144 suffix!1395)))

(declare-fun d!1068301 () Bool)

(declare-fun e!2248145 () Bool)

(assert (=> d!1068301 e!2248145))

(declare-fun res!1470831 () Bool)

(assert (=> d!1068301 (=> (not res!1470831) (not e!2248145))))

(declare-fun lt!1256279 () List!38384)

(assert (=> d!1068301 (= res!1470831 (= (content!5487 lt!1256279) ((_ map or) (content!5487 lt!1256040) (content!5487 suffix!1395))))))

(assert (=> d!1068301 (= lt!1256279 e!2248144)))

(declare-fun c!628301 () Bool)

(assert (=> d!1068301 (= c!628301 ((_ is Nil!38260) lt!1256040))))

(assert (=> d!1068301 (= (++!9524 lt!1256040 suffix!1395) lt!1256279)))

(declare-fun b!3631930 () Bool)

(assert (=> b!3631930 (= e!2248145 (or (not (= suffix!1395 Nil!38260)) (= lt!1256279 lt!1256040)))))

(declare-fun b!3631929 () Bool)

(declare-fun res!1470830 () Bool)

(assert (=> b!3631929 (=> (not res!1470830) (not e!2248145))))

(assert (=> b!3631929 (= res!1470830 (= (size!29196 lt!1256279) (+ (size!29196 lt!1256040) (size!29196 suffix!1395))))))

(declare-fun b!3631928 () Bool)

(assert (=> b!3631928 (= e!2248144 (Cons!38260 (h!43680 lt!1256040) (++!9524 (t!295247 lt!1256040) suffix!1395)))))

(assert (= (and d!1068301 c!628301) b!3631927))

(assert (= (and d!1068301 (not c!628301)) b!3631928))

(assert (= (and d!1068301 res!1470831) b!3631929))

(assert (= (and b!3631929 res!1470830) b!3631930))

(declare-fun m!4133695 () Bool)

(assert (=> d!1068301 m!4133695))

(declare-fun m!4133697 () Bool)

(assert (=> d!1068301 m!4133697))

(declare-fun m!4133699 () Bool)

(assert (=> d!1068301 m!4133699))

(declare-fun m!4133701 () Bool)

(assert (=> b!3631929 m!4133701))

(assert (=> b!3631929 m!4133233))

(declare-fun m!4133703 () Bool)

(assert (=> b!3631929 m!4133703))

(declare-fun m!4133705 () Bool)

(assert (=> b!3631928 m!4133705))

(assert (=> b!3631356 d!1068301))

(declare-fun b!3631931 () Bool)

(declare-fun res!1470833 () Bool)

(declare-fun e!2248147 () Bool)

(assert (=> b!3631931 (=> (not res!1470833) (not e!2248147))))

(declare-fun lt!1256280 () Option!8044)

(assert (=> b!3631931 (= res!1470833 (= (value!183138 (_1!22200 (get!12508 lt!1256280))) (apply!9210 (transformation!5708 (rule!8480 (_1!22200 (get!12508 lt!1256280)))) (seqFromList!4257 (originalCharacters!6422 (_1!22200 (get!12508 lt!1256280)))))))))

(declare-fun b!3631933 () Bool)

(declare-fun res!1470835 () Bool)

(assert (=> b!3631933 (=> (not res!1470835) (not e!2248147))))

(assert (=> b!3631933 (= res!1470835 (matchR!5036 (regex!5708 (rule!8480 (_1!22200 (get!12508 lt!1256280)))) (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256280))))))))

(declare-fun call!262687 () Option!8044)

(declare-fun bm!262682 () Bool)

(assert (=> bm!262682 (= call!262687 (maxPrefixOneRule!1969 thiss!23823 (h!43681 rules!3307) lt!1256049))))

(declare-fun b!3631934 () Bool)

(declare-fun res!1470832 () Bool)

(assert (=> b!3631934 (=> (not res!1470832) (not e!2248147))))

(assert (=> b!3631934 (= res!1470832 (= (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256280)))) (originalCharacters!6422 (_1!22200 (get!12508 lt!1256280)))))))

(declare-fun b!3631935 () Bool)

(declare-fun e!2248146 () Option!8044)

(assert (=> b!3631935 (= e!2248146 call!262687)))

(declare-fun b!3631932 () Bool)

(declare-fun res!1470838 () Bool)

(assert (=> b!3631932 (=> (not res!1470838) (not e!2248147))))

(assert (=> b!3631932 (= res!1470838 (< (size!29196 (_2!22200 (get!12508 lt!1256280))) (size!29196 lt!1256049)))))

(declare-fun d!1068303 () Bool)

(declare-fun e!2248148 () Bool)

(assert (=> d!1068303 e!2248148))

(declare-fun res!1470834 () Bool)

(assert (=> d!1068303 (=> res!1470834 e!2248148)))

(assert (=> d!1068303 (= res!1470834 (isEmpty!22635 lt!1256280))))

(assert (=> d!1068303 (= lt!1256280 e!2248146)))

(declare-fun c!628302 () Bool)

(assert (=> d!1068303 (= c!628302 (and ((_ is Cons!38261) rules!3307) ((_ is Nil!38261) (t!295248 rules!3307))))))

(declare-fun lt!1256284 () Unit!55076)

(declare-fun lt!1256281 () Unit!55076)

(assert (=> d!1068303 (= lt!1256284 lt!1256281)))

(assert (=> d!1068303 (isPrefix!3071 lt!1256049 lt!1256049)))

(assert (=> d!1068303 (= lt!1256281 (lemmaIsPrefixRefl!1944 lt!1256049 lt!1256049))))

(assert (=> d!1068303 (rulesValidInductive!2009 thiss!23823 rules!3307)))

(assert (=> d!1068303 (= (maxPrefix!2831 thiss!23823 rules!3307 lt!1256049) lt!1256280)))

(declare-fun b!3631936 () Bool)

(declare-fun res!1470837 () Bool)

(assert (=> b!3631936 (=> (not res!1470837) (not e!2248147))))

(assert (=> b!3631936 (= res!1470837 (= (++!9524 (list!14142 (charsOf!3722 (_1!22200 (get!12508 lt!1256280)))) (_2!22200 (get!12508 lt!1256280))) lt!1256049))))

(declare-fun b!3631937 () Bool)

(declare-fun lt!1256282 () Option!8044)

(declare-fun lt!1256283 () Option!8044)

(assert (=> b!3631937 (= e!2248146 (ite (and ((_ is None!8043) lt!1256282) ((_ is None!8043) lt!1256283)) None!8043 (ite ((_ is None!8043) lt!1256283) lt!1256282 (ite ((_ is None!8043) lt!1256282) lt!1256283 (ite (>= (size!29192 (_1!22200 (v!37835 lt!1256282))) (size!29192 (_1!22200 (v!37835 lt!1256283)))) lt!1256282 lt!1256283)))))))

(assert (=> b!3631937 (= lt!1256282 call!262687)))

(assert (=> b!3631937 (= lt!1256283 (maxPrefix!2831 thiss!23823 (t!295248 rules!3307) lt!1256049))))

(declare-fun b!3631938 () Bool)

(assert (=> b!3631938 (= e!2248147 (contains!7481 rules!3307 (rule!8480 (_1!22200 (get!12508 lt!1256280)))))))

(declare-fun b!3631939 () Bool)

(assert (=> b!3631939 (= e!2248148 e!2248147)))

(declare-fun res!1470836 () Bool)

(assert (=> b!3631939 (=> (not res!1470836) (not e!2248147))))

(assert (=> b!3631939 (= res!1470836 (isDefined!6277 lt!1256280))))

(assert (= (and d!1068303 c!628302) b!3631935))

(assert (= (and d!1068303 (not c!628302)) b!3631937))

(assert (= (or b!3631935 b!3631937) bm!262682))

(assert (= (and d!1068303 (not res!1470834)) b!3631939))

(assert (= (and b!3631939 res!1470836) b!3631934))

(assert (= (and b!3631934 res!1470832) b!3631932))

(assert (= (and b!3631932 res!1470838) b!3631936))

(assert (= (and b!3631936 res!1470837) b!3631931))

(assert (= (and b!3631931 res!1470833) b!3631933))

(assert (= (and b!3631933 res!1470835) b!3631938))

(declare-fun m!4133707 () Bool)

(assert (=> b!3631932 m!4133707))

(declare-fun m!4133709 () Bool)

(assert (=> b!3631932 m!4133709))

(assert (=> b!3631932 m!4133689))

(assert (=> b!3631934 m!4133707))

(declare-fun m!4133711 () Bool)

(assert (=> b!3631934 m!4133711))

(assert (=> b!3631934 m!4133711))

(declare-fun m!4133713 () Bool)

(assert (=> b!3631934 m!4133713))

(assert (=> b!3631938 m!4133707))

(declare-fun m!4133715 () Bool)

(assert (=> b!3631938 m!4133715))

(declare-fun m!4133717 () Bool)

(assert (=> bm!262682 m!4133717))

(declare-fun m!4133719 () Bool)

(assert (=> b!3631937 m!4133719))

(declare-fun m!4133721 () Bool)

(assert (=> d!1068303 m!4133721))

(declare-fun m!4133723 () Bool)

(assert (=> d!1068303 m!4133723))

(declare-fun m!4133725 () Bool)

(assert (=> d!1068303 m!4133725))

(assert (=> d!1068303 m!4133251))

(assert (=> b!3631931 m!4133707))

(declare-fun m!4133727 () Bool)

(assert (=> b!3631931 m!4133727))

(assert (=> b!3631931 m!4133727))

(declare-fun m!4133729 () Bool)

(assert (=> b!3631931 m!4133729))

(assert (=> b!3631933 m!4133707))

(assert (=> b!3631933 m!4133711))

(assert (=> b!3631933 m!4133711))

(assert (=> b!3631933 m!4133713))

(assert (=> b!3631933 m!4133713))

(declare-fun m!4133731 () Bool)

(assert (=> b!3631933 m!4133731))

(assert (=> b!3631936 m!4133707))

(assert (=> b!3631936 m!4133711))

(assert (=> b!3631936 m!4133711))

(assert (=> b!3631936 m!4133713))

(assert (=> b!3631936 m!4133713))

(declare-fun m!4133733 () Bool)

(assert (=> b!3631936 m!4133733))

(declare-fun m!4133735 () Bool)

(assert (=> b!3631939 m!4133735))

(assert (=> b!3631356 d!1068303))

(declare-fun b!3631952 () Bool)

(declare-fun e!2248160 () Option!8045)

(assert (=> b!3631952 (= e!2248160 (Some!8044 (h!43681 rules!3307)))))

(declare-fun b!3631953 () Bool)

(declare-fun e!2248157 () Bool)

(declare-fun lt!1256291 () Option!8045)

(assert (=> b!3631953 (= e!2248157 (= (tag!6438 (get!12509 lt!1256291)) (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))))

(declare-fun b!3631954 () Bool)

(declare-fun lt!1256292 () Unit!55076)

(declare-fun lt!1256293 () Unit!55076)

(assert (=> b!3631954 (= lt!1256292 lt!1256293)))

(assert (=> b!3631954 (rulesInvariant!4694 thiss!23823 (t!295248 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!553 (LexerInterface!5297 Rule!11216 List!38385) Unit!55076)

(assert (=> b!3631954 (= lt!1256293 (lemmaInvariantOnRulesThenOnTail!553 thiss!23823 (h!43681 rules!3307) (t!295248 rules!3307)))))

(declare-fun e!2248158 () Option!8045)

(assert (=> b!3631954 (= e!2248158 (getRuleFromTag!1312 thiss!23823 (t!295248 rules!3307) (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))))

(declare-fun b!3631955 () Bool)

(assert (=> b!3631955 (= e!2248158 None!8044)))

(declare-fun b!3631956 () Bool)

(declare-fun e!2248159 () Bool)

(assert (=> b!3631956 (= e!2248159 e!2248157)))

(declare-fun res!1470843 () Bool)

(assert (=> b!3631956 (=> (not res!1470843) (not e!2248157))))

(assert (=> b!3631956 (= res!1470843 (contains!7481 rules!3307 (get!12509 lt!1256291)))))

(declare-fun b!3631957 () Bool)

(assert (=> b!3631957 (= e!2248160 e!2248158)))

(declare-fun c!628308 () Bool)

(assert (=> b!3631957 (= c!628308 (and ((_ is Cons!38261) rules!3307) (not (= (tag!6438 (h!43681 rules!3307)) (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))))))

(declare-fun d!1068305 () Bool)

(assert (=> d!1068305 e!2248159))

(declare-fun res!1470844 () Bool)

(assert (=> d!1068305 (=> res!1470844 e!2248159)))

(assert (=> d!1068305 (= res!1470844 (isEmpty!22637 lt!1256291))))

(assert (=> d!1068305 (= lt!1256291 e!2248160)))

(declare-fun c!628307 () Bool)

(assert (=> d!1068305 (= c!628307 (and ((_ is Cons!38261) rules!3307) (= (tag!6438 (h!43681 rules!3307)) (tag!6438 (rule!8480 (_1!22200 lt!1256045))))))))

(assert (=> d!1068305 (rulesInvariant!4694 thiss!23823 rules!3307)))

(assert (=> d!1068305 (= (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 (_1!22200 lt!1256045)))) lt!1256291)))

(assert (= (and d!1068305 c!628307) b!3631952))

(assert (= (and d!1068305 (not c!628307)) b!3631957))

(assert (= (and b!3631957 c!628308) b!3631954))

(assert (= (and b!3631957 (not c!628308)) b!3631955))

(assert (= (and d!1068305 (not res!1470844)) b!3631956))

(assert (= (and b!3631956 res!1470843) b!3631953))

(declare-fun m!4133737 () Bool)

(assert (=> b!3631953 m!4133737))

(declare-fun m!4133739 () Bool)

(assert (=> b!3631954 m!4133739))

(declare-fun m!4133741 () Bool)

(assert (=> b!3631954 m!4133741))

(declare-fun m!4133743 () Bool)

(assert (=> b!3631954 m!4133743))

(assert (=> b!3631956 m!4133737))

(assert (=> b!3631956 m!4133737))

(declare-fun m!4133745 () Bool)

(assert (=> b!3631956 m!4133745))

(declare-fun m!4133747 () Bool)

(assert (=> d!1068305 m!4133747))

(assert (=> d!1068305 m!4132977))

(assert (=> b!3631356 d!1068305))

(declare-fun d!1068307 () Bool)

(assert (=> d!1068307 (= (get!12508 lt!1256034) (v!37835 lt!1256034))))

(assert (=> b!3631356 d!1068307))

(declare-fun b!3631960 () Bool)

(declare-fun e!2248162 () Bool)

(assert (=> b!3631960 (= e!2248162 (isPrefix!3071 (tail!5621 lt!1256050) (tail!5621 lt!1256049)))))

(declare-fun d!1068309 () Bool)

(declare-fun e!2248163 () Bool)

(assert (=> d!1068309 e!2248163))

(declare-fun res!1470848 () Bool)

(assert (=> d!1068309 (=> res!1470848 e!2248163)))

(declare-fun lt!1256294 () Bool)

(assert (=> d!1068309 (= res!1470848 (not lt!1256294))))

(declare-fun e!2248161 () Bool)

(assert (=> d!1068309 (= lt!1256294 e!2248161)))

(declare-fun res!1470845 () Bool)

(assert (=> d!1068309 (=> res!1470845 e!2248161)))

(assert (=> d!1068309 (= res!1470845 ((_ is Nil!38260) lt!1256050))))

(assert (=> d!1068309 (= (isPrefix!3071 lt!1256050 lt!1256049) lt!1256294)))

(declare-fun b!3631959 () Bool)

(declare-fun res!1470846 () Bool)

(assert (=> b!3631959 (=> (not res!1470846) (not e!2248162))))

(assert (=> b!3631959 (= res!1470846 (= (head!7688 lt!1256050) (head!7688 lt!1256049)))))

(declare-fun b!3631958 () Bool)

(assert (=> b!3631958 (= e!2248161 e!2248162)))

(declare-fun res!1470847 () Bool)

(assert (=> b!3631958 (=> (not res!1470847) (not e!2248162))))

(assert (=> b!3631958 (= res!1470847 (not ((_ is Nil!38260) lt!1256049)))))

(declare-fun b!3631961 () Bool)

(assert (=> b!3631961 (= e!2248163 (>= (size!29196 lt!1256049) (size!29196 lt!1256050)))))

(assert (= (and d!1068309 (not res!1470845)) b!3631958))

(assert (= (and b!3631958 res!1470847) b!3631959))

(assert (= (and b!3631959 res!1470846) b!3631960))

(assert (= (and d!1068309 (not res!1470848)) b!3631961))

(assert (=> b!3631960 m!4133407))

(assert (=> b!3631960 m!4133681))

(assert (=> b!3631960 m!4133407))

(assert (=> b!3631960 m!4133681))

(declare-fun m!4133749 () Bool)

(assert (=> b!3631960 m!4133749))

(assert (=> b!3631959 m!4133411))

(assert (=> b!3631959 m!4133687))

(assert (=> b!3631961 m!4133689))

(assert (=> b!3631961 m!4133537))

(assert (=> b!3631356 d!1068309))

(declare-fun d!1068311 () Bool)

(declare-fun e!2248166 () Bool)

(assert (=> d!1068311 e!2248166))

(declare-fun res!1470853 () Bool)

(assert (=> d!1068311 (=> (not res!1470853) (not e!2248166))))

(assert (=> d!1068311 (= res!1470853 (isDefined!6276 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 (_1!22200 lt!1256045))))))))

(declare-fun lt!1256297 () Unit!55076)

(declare-fun choose!21331 (LexerInterface!5297 List!38385 List!38384 Token!10782) Unit!55076)

(assert (=> d!1068311 (= lt!1256297 (choose!21331 thiss!23823 rules!3307 lt!1256049 (_1!22200 lt!1256045)))))

(assert (=> d!1068311 (rulesInvariant!4694 thiss!23823 rules!3307)))

(assert (=> d!1068311 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1312 thiss!23823 rules!3307 lt!1256049 (_1!22200 lt!1256045)) lt!1256297)))

(declare-fun b!3631966 () Bool)

(declare-fun res!1470854 () Bool)

(assert (=> b!3631966 (=> (not res!1470854) (not e!2248166))))

(assert (=> b!3631966 (= res!1470854 (matchR!5036 (regex!5708 (get!12509 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))) (list!14142 (charsOf!3722 (_1!22200 lt!1256045)))))))

(declare-fun b!3631967 () Bool)

(assert (=> b!3631967 (= e!2248166 (= (rule!8480 (_1!22200 lt!1256045)) (get!12509 (getRuleFromTag!1312 thiss!23823 rules!3307 (tag!6438 (rule!8480 (_1!22200 lt!1256045)))))))))

(assert (= (and d!1068311 res!1470853) b!3631966))

(assert (= (and b!3631966 res!1470854) b!3631967))

(assert (=> d!1068311 m!4132967))

(assert (=> d!1068311 m!4132967))

(declare-fun m!4133751 () Bool)

(assert (=> d!1068311 m!4133751))

(declare-fun m!4133753 () Bool)

(assert (=> d!1068311 m!4133753))

(assert (=> d!1068311 m!4132977))

(assert (=> b!3631966 m!4133003))

(declare-fun m!4133755 () Bool)

(assert (=> b!3631966 m!4133755))

(assert (=> b!3631966 m!4132971))

(assert (=> b!3631966 m!4132967))

(assert (=> b!3631966 m!4132971))

(assert (=> b!3631966 m!4133003))

(assert (=> b!3631966 m!4132967))

(declare-fun m!4133757 () Bool)

(assert (=> b!3631966 m!4133757))

(assert (=> b!3631967 m!4132967))

(assert (=> b!3631967 m!4132967))

(assert (=> b!3631967 m!4133757))

(assert (=> b!3631356 d!1068311))

(declare-fun b!3631968 () Bool)

(declare-fun res!1470855 () Bool)

(declare-fun e!2248170 () Bool)

(assert (=> b!3631968 (=> res!1470855 e!2248170)))

(assert (=> b!3631968 (= res!1470855 (not ((_ is ElementMatch!10467) (regex!5708 rule!403))))))

(declare-fun e!2248172 () Bool)

(assert (=> b!3631968 (= e!2248172 e!2248170)))

(declare-fun bm!262683 () Bool)

(declare-fun call!262688 () Bool)

(assert (=> bm!262683 (= call!262688 (isEmpty!22633 lt!1256040))))

(declare-fun b!3631969 () Bool)

(declare-fun res!1470860 () Bool)

(declare-fun e!2248168 () Bool)

(assert (=> b!3631969 (=> res!1470860 e!2248168)))

(assert (=> b!3631969 (= res!1470860 (not (isEmpty!22633 (tail!5621 lt!1256040))))))

(declare-fun b!3631970 () Bool)

(declare-fun res!1470862 () Bool)

(assert (=> b!3631970 (=> res!1470862 e!2248170)))

(declare-fun e!2248169 () Bool)

(assert (=> b!3631970 (= res!1470862 e!2248169)))

(declare-fun res!1470859 () Bool)

(assert (=> b!3631970 (=> (not res!1470859) (not e!2248169))))

(declare-fun lt!1256298 () Bool)

(assert (=> b!3631970 (= res!1470859 lt!1256298)))

(declare-fun b!3631972 () Bool)

(declare-fun e!2248171 () Bool)

(assert (=> b!3631972 (= e!2248171 e!2248172)))

(declare-fun c!628310 () Bool)

(assert (=> b!3631972 (= c!628310 ((_ is EmptyLang!10467) (regex!5708 rule!403)))))

(declare-fun b!3631973 () Bool)

(declare-fun e!2248173 () Bool)

(assert (=> b!3631973 (= e!2248170 e!2248173)))

(declare-fun res!1470861 () Bool)

(assert (=> b!3631973 (=> (not res!1470861) (not e!2248173))))

(assert (=> b!3631973 (= res!1470861 (not lt!1256298))))

(declare-fun b!3631974 () Bool)

(assert (=> b!3631974 (= e!2248171 (= lt!1256298 call!262688))))

(declare-fun b!3631975 () Bool)

(declare-fun e!2248167 () Bool)

(assert (=> b!3631975 (= e!2248167 (nullable!3623 (regex!5708 rule!403)))))

(declare-fun b!3631976 () Bool)

(declare-fun res!1470856 () Bool)

(assert (=> b!3631976 (=> (not res!1470856) (not e!2248169))))

(assert (=> b!3631976 (= res!1470856 (not call!262688))))

(declare-fun b!3631977 () Bool)

(assert (=> b!3631977 (= e!2248173 e!2248168)))

(declare-fun res!1470857 () Bool)

(assert (=> b!3631977 (=> res!1470857 e!2248168)))

(assert (=> b!3631977 (= res!1470857 call!262688)))

(declare-fun b!3631978 () Bool)

(assert (=> b!3631978 (= e!2248167 (matchR!5036 (derivativeStep!3172 (regex!5708 rule!403) (head!7688 lt!1256040)) (tail!5621 lt!1256040)))))

(declare-fun b!3631979 () Bool)

(assert (=> b!3631979 (= e!2248172 (not lt!1256298))))

(declare-fun d!1068313 () Bool)

(assert (=> d!1068313 e!2248171))

(declare-fun c!628309 () Bool)

(assert (=> d!1068313 (= c!628309 ((_ is EmptyExpr!10467) (regex!5708 rule!403)))))

(assert (=> d!1068313 (= lt!1256298 e!2248167)))

(declare-fun c!628311 () Bool)

(assert (=> d!1068313 (= c!628311 (isEmpty!22633 lt!1256040))))

(assert (=> d!1068313 (validRegex!4785 (regex!5708 rule!403))))

(assert (=> d!1068313 (= (matchR!5036 (regex!5708 rule!403) lt!1256040) lt!1256298)))

(declare-fun b!3631971 () Bool)

(assert (=> b!3631971 (= e!2248168 (not (= (head!7688 lt!1256040) (c!628204 (regex!5708 rule!403)))))))

(declare-fun b!3631980 () Bool)

(assert (=> b!3631980 (= e!2248169 (= (head!7688 lt!1256040) (c!628204 (regex!5708 rule!403))))))

(declare-fun b!3631981 () Bool)

(declare-fun res!1470858 () Bool)

(assert (=> b!3631981 (=> (not res!1470858) (not e!2248169))))

(assert (=> b!3631981 (= res!1470858 (isEmpty!22633 (tail!5621 lt!1256040)))))

(assert (= (and d!1068313 c!628311) b!3631975))

(assert (= (and d!1068313 (not c!628311)) b!3631978))

(assert (= (and d!1068313 c!628309) b!3631974))

(assert (= (and d!1068313 (not c!628309)) b!3631972))

(assert (= (and b!3631972 c!628310) b!3631979))

(assert (= (and b!3631972 (not c!628310)) b!3631968))

(assert (= (and b!3631968 (not res!1470855)) b!3631970))

(assert (= (and b!3631970 res!1470859) b!3631976))

(assert (= (and b!3631976 res!1470856) b!3631981))

(assert (= (and b!3631981 res!1470858) b!3631980))

(assert (= (and b!3631970 (not res!1470862)) b!3631973))

(assert (= (and b!3631973 res!1470861) b!3631977))

(assert (= (and b!3631977 (not res!1470857)) b!3631969))

(assert (= (and b!3631969 (not res!1470860)) b!3631971))

(assert (= (or b!3631974 b!3631976 b!3631977) bm!262683))

(assert (=> b!3631969 m!4133679))

(assert (=> b!3631969 m!4133679))

(declare-fun m!4133759 () Bool)

(assert (=> b!3631969 m!4133759))

(assert (=> b!3631971 m!4133685))

(assert (=> b!3631981 m!4133679))

(assert (=> b!3631981 m!4133679))

(assert (=> b!3631981 m!4133759))

(assert (=> b!3631980 m!4133685))

(declare-fun m!4133761 () Bool)

(assert (=> bm!262683 m!4133761))

(assert (=> d!1068313 m!4133761))

(declare-fun m!4133763 () Bool)

(assert (=> d!1068313 m!4133763))

(assert (=> b!3631978 m!4133685))

(assert (=> b!3631978 m!4133685))

(declare-fun m!4133765 () Bool)

(assert (=> b!3631978 m!4133765))

(assert (=> b!3631978 m!4133679))

(assert (=> b!3631978 m!4133765))

(assert (=> b!3631978 m!4133679))

(declare-fun m!4133767 () Bool)

(assert (=> b!3631978 m!4133767))

(declare-fun m!4133769 () Bool)

(assert (=> b!3631975 m!4133769))

(assert (=> b!3631378 d!1068313))

(declare-fun d!1068315 () Bool)

(declare-fun res!1470867 () Bool)

(declare-fun e!2248176 () Bool)

(assert (=> d!1068315 (=> (not res!1470867) (not e!2248176))))

(assert (=> d!1068315 (= res!1470867 (validRegex!4785 (regex!5708 rule!403)))))

(assert (=> d!1068315 (= (ruleValid!1972 thiss!23823 rule!403) e!2248176)))

(declare-fun b!3631986 () Bool)

(declare-fun res!1470868 () Bool)

(assert (=> b!3631986 (=> (not res!1470868) (not e!2248176))))

(assert (=> b!3631986 (= res!1470868 (not (nullable!3623 (regex!5708 rule!403))))))

(declare-fun b!3631987 () Bool)

(assert (=> b!3631987 (= e!2248176 (not (= (tag!6438 rule!403) (String!43025 ""))))))

(assert (= (and d!1068315 res!1470867) b!3631986))

(assert (= (and b!3631986 res!1470868) b!3631987))

(assert (=> d!1068315 m!4133763))

(assert (=> b!3631986 m!4133769))

(assert (=> b!3631378 d!1068315))

(declare-fun d!1068317 () Bool)

(assert (=> d!1068317 (ruleValid!1972 thiss!23823 rule!403)))

(declare-fun lt!1256301 () Unit!55076)

(declare-fun choose!21332 (LexerInterface!5297 Rule!11216 List!38385) Unit!55076)

(assert (=> d!1068317 (= lt!1256301 (choose!21332 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1068317 (contains!7481 rules!3307 rule!403)))

(assert (=> d!1068317 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1126 thiss!23823 rule!403 rules!3307) lt!1256301)))

(declare-fun bs!571691 () Bool)

(assert (= bs!571691 d!1068317))

(assert (=> bs!571691 m!4132997))

(declare-fun m!4133771 () Bool)

(assert (=> bs!571691 m!4133771))

(assert (=> bs!571691 m!4133039))

(assert (=> b!3631378 d!1068317))

(declare-fun d!1068319 () Bool)

(declare-fun lt!1256302 () Bool)

(assert (=> d!1068319 (= lt!1256302 (select (content!5487 (usedCharacters!920 (regex!5708 rule!403))) lt!1256037))))

(declare-fun e!2248178 () Bool)

(assert (=> d!1068319 (= lt!1256302 e!2248178)))

(declare-fun res!1470869 () Bool)

(assert (=> d!1068319 (=> (not res!1470869) (not e!2248178))))

(assert (=> d!1068319 (= res!1470869 ((_ is Cons!38260) (usedCharacters!920 (regex!5708 rule!403))))))

(assert (=> d!1068319 (= (contains!7482 (usedCharacters!920 (regex!5708 rule!403)) lt!1256037) lt!1256302)))

(declare-fun b!3631988 () Bool)

(declare-fun e!2248177 () Bool)

(assert (=> b!3631988 (= e!2248178 e!2248177)))

(declare-fun res!1470870 () Bool)

(assert (=> b!3631988 (=> res!1470870 e!2248177)))

(assert (=> b!3631988 (= res!1470870 (= (h!43680 (usedCharacters!920 (regex!5708 rule!403))) lt!1256037))))

(declare-fun b!3631989 () Bool)

(assert (=> b!3631989 (= e!2248177 (contains!7482 (t!295247 (usedCharacters!920 (regex!5708 rule!403))) lt!1256037))))

(assert (= (and d!1068319 res!1470869) b!3631988))

(assert (= (and b!3631988 (not res!1470870)) b!3631989))

(assert (=> d!1068319 m!4133041))

(declare-fun m!4133773 () Bool)

(assert (=> d!1068319 m!4133773))

(declare-fun m!4133775 () Bool)

(assert (=> d!1068319 m!4133775))

(declare-fun m!4133777 () Bool)

(assert (=> b!3631989 m!4133777))

(assert (=> b!3631358 d!1068319))

(declare-fun b!3631990 () Bool)

(declare-fun e!2248181 () List!38384)

(declare-fun e!2248179 () List!38384)

(assert (=> b!3631990 (= e!2248181 e!2248179)))

(declare-fun c!628314 () Bool)

(assert (=> b!3631990 (= c!628314 ((_ is Union!10467) (regex!5708 rule!403)))))

(declare-fun b!3631991 () Bool)

(declare-fun e!2248182 () List!38384)

(declare-fun e!2248180 () List!38384)

(assert (=> b!3631991 (= e!2248182 e!2248180)))

(declare-fun c!628312 () Bool)

(assert (=> b!3631991 (= c!628312 ((_ is ElementMatch!10467) (regex!5708 rule!403)))))

(declare-fun call!262691 () List!38384)

(declare-fun call!262692 () List!38384)

(declare-fun call!262690 () List!38384)

(declare-fun bm!262685 () Bool)

(assert (=> bm!262685 (= call!262690 (++!9524 (ite c!628314 call!262692 call!262691) (ite c!628314 call!262691 call!262692)))))

(declare-fun b!3631992 () Bool)

(assert (=> b!3631992 (= e!2248179 call!262690)))

(declare-fun b!3631993 () Bool)

(declare-fun c!628315 () Bool)

(assert (=> b!3631993 (= c!628315 ((_ is Star!10467) (regex!5708 rule!403)))))

(assert (=> b!3631993 (= e!2248180 e!2248181)))

(declare-fun b!3631994 () Bool)

(declare-fun call!262689 () List!38384)

(assert (=> b!3631994 (= e!2248181 call!262689)))

(declare-fun bm!262686 () Bool)

(assert (=> bm!262686 (= call!262692 call!262689)))

(declare-fun d!1068321 () Bool)

(declare-fun c!628313 () Bool)

(assert (=> d!1068321 (= c!628313 (or ((_ is EmptyExpr!10467) (regex!5708 rule!403)) ((_ is EmptyLang!10467) (regex!5708 rule!403))))))

(assert (=> d!1068321 (= (usedCharacters!920 (regex!5708 rule!403)) e!2248182)))

(declare-fun bm!262684 () Bool)

(assert (=> bm!262684 (= call!262689 (usedCharacters!920 (ite c!628315 (reg!10796 (regex!5708 rule!403)) (ite c!628314 (regOne!21447 (regex!5708 rule!403)) (regTwo!21446 (regex!5708 rule!403))))))))

(declare-fun b!3631995 () Bool)

(assert (=> b!3631995 (= e!2248180 (Cons!38260 (c!628204 (regex!5708 rule!403)) Nil!38260))))

(declare-fun bm!262687 () Bool)

(assert (=> bm!262687 (= call!262691 (usedCharacters!920 (ite c!628314 (regTwo!21447 (regex!5708 rule!403)) (regOne!21446 (regex!5708 rule!403)))))))

(declare-fun b!3631996 () Bool)

(assert (=> b!3631996 (= e!2248182 Nil!38260)))

(declare-fun b!3631997 () Bool)

(assert (=> b!3631997 (= e!2248179 call!262690)))

(assert (= (and d!1068321 c!628313) b!3631996))

(assert (= (and d!1068321 (not c!628313)) b!3631991))

(assert (= (and b!3631991 c!628312) b!3631995))

(assert (= (and b!3631991 (not c!628312)) b!3631993))

(assert (= (and b!3631993 c!628315) b!3631994))

(assert (= (and b!3631993 (not c!628315)) b!3631990))

(assert (= (and b!3631990 c!628314) b!3631997))

(assert (= (and b!3631990 (not c!628314)) b!3631992))

(assert (= (or b!3631997 b!3631992) bm!262686))

(assert (= (or b!3631997 b!3631992) bm!262687))

(assert (= (or b!3631997 b!3631992) bm!262685))

(assert (= (or b!3631994 bm!262686) bm!262684))

(declare-fun m!4133779 () Bool)

(assert (=> bm!262685 m!4133779))

(declare-fun m!4133781 () Bool)

(assert (=> bm!262684 m!4133781))

(declare-fun m!4133783 () Bool)

(assert (=> bm!262687 m!4133783))

(assert (=> b!3631358 d!1068321))

(declare-fun d!1068323 () Bool)

(assert (=> d!1068323 (= (head!7688 suffix!1395) (h!43680 suffix!1395))))

(assert (=> b!3631358 d!1068323))

(declare-fun d!1068325 () Bool)

(declare-fun res!1470875 () Bool)

(declare-fun e!2248187 () Bool)

(assert (=> d!1068325 (=> res!1470875 e!2248187)))

(assert (=> d!1068325 (= res!1470875 (not ((_ is Cons!38261) rules!3307)))))

(assert (=> d!1068325 (= (sepAndNonSepRulesDisjointChars!1876 rules!3307 rules!3307) e!2248187)))

(declare-fun b!3632002 () Bool)

(declare-fun e!2248188 () Bool)

(assert (=> b!3632002 (= e!2248187 e!2248188)))

(declare-fun res!1470876 () Bool)

(assert (=> b!3632002 (=> (not res!1470876) (not e!2248188))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!847 (Rule!11216 List!38385) Bool)

(assert (=> b!3632002 (= res!1470876 (ruleDisjointCharsFromAllFromOtherType!847 (h!43681 rules!3307) rules!3307))))

(declare-fun b!3632003 () Bool)

(assert (=> b!3632003 (= e!2248188 (sepAndNonSepRulesDisjointChars!1876 rules!3307 (t!295248 rules!3307)))))

(assert (= (and d!1068325 (not res!1470875)) b!3632002))

(assert (= (and b!3632002 res!1470876) b!3632003))

(declare-fun m!4133785 () Bool)

(assert (=> b!3632002 m!4133785))

(declare-fun m!4133787 () Bool)

(assert (=> b!3632003 m!4133787))

(assert (=> b!3631369 d!1068325))

(declare-fun b!3632015 () Bool)

(declare-fun e!2248191 () Bool)

(declare-fun tp!1108724 () Bool)

(declare-fun tp!1108723 () Bool)

(assert (=> b!3632015 (= e!2248191 (and tp!1108724 tp!1108723))))

(declare-fun b!3632014 () Bool)

(assert (=> b!3632014 (= e!2248191 tp_is_empty!18017)))

(assert (=> b!3631354 (= tp!1108640 e!2248191)))

(declare-fun b!3632017 () Bool)

(declare-fun tp!1108725 () Bool)

(declare-fun tp!1108721 () Bool)

(assert (=> b!3632017 (= e!2248191 (and tp!1108725 tp!1108721))))

(declare-fun b!3632016 () Bool)

(declare-fun tp!1108722 () Bool)

(assert (=> b!3632016 (= e!2248191 tp!1108722)))

(assert (= (and b!3631354 ((_ is ElementMatch!10467) (regex!5708 (h!43681 rules!3307)))) b!3632014))

(assert (= (and b!3631354 ((_ is Concat!16406) (regex!5708 (h!43681 rules!3307)))) b!3632015))

(assert (= (and b!3631354 ((_ is Star!10467) (regex!5708 (h!43681 rules!3307)))) b!3632016))

(assert (= (and b!3631354 ((_ is Union!10467) (regex!5708 (h!43681 rules!3307)))) b!3632017))

(declare-fun b!3632028 () Bool)

(declare-fun b_free!94997 () Bool)

(declare-fun b_next!95701 () Bool)

(assert (=> b!3632028 (= b_free!94997 (not b_next!95701))))

(declare-fun t!295341 () Bool)

(declare-fun tb!208711 () Bool)

(assert (=> (and b!3632028 (= (toValue!8000 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295341) tb!208711))

(declare-fun result!254250 () Bool)

(assert (= result!254250 result!254180))

(assert (=> d!1068197 t!295341))

(assert (=> d!1068201 t!295341))

(assert (=> d!1068225 t!295341))

(declare-fun tb!208713 () Bool)

(declare-fun t!295343 () Bool)

(assert (=> (and b!3632028 (= (toValue!8000 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toValue!8000 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295343) tb!208713))

(declare-fun result!254252 () Bool)

(assert (= result!254252 result!254214))

(assert (=> d!1068225 t!295343))

(declare-fun b_and!266671 () Bool)

(declare-fun tp!1108735 () Bool)

(assert (=> b!3632028 (= tp!1108735 (and (=> t!295341 result!254250) (=> t!295343 result!254252) b_and!266671))))

(declare-fun b_free!94999 () Bool)

(declare-fun b_next!95703 () Bool)

(assert (=> b!3632028 (= b_free!94999 (not b_next!95703))))

(declare-fun tb!208715 () Bool)

(declare-fun t!295345 () Bool)

(assert (=> (and b!3632028 (= (toChars!7859 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toChars!7859 (transformation!5708 (rule!8480 token!511)))) t!295345) tb!208715))

(declare-fun result!254254 () Bool)

(assert (= result!254254 result!254170))

(assert (=> d!1068191 t!295345))

(declare-fun t!295347 () Bool)

(declare-fun tb!208717 () Bool)

(assert (=> (and b!3632028 (= (toChars!7859 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295347) tb!208717))

(declare-fun result!254256 () Bool)

(assert (= result!254256 result!254206))

(assert (=> d!1068201 t!295347))

(assert (=> b!3631696 t!295345))

(declare-fun t!295349 () Bool)

(declare-fun tb!208719 () Bool)

(assert (=> (and b!3632028 (= (toChars!7859 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toChars!7859 (transformation!5708 (rule!8480 (_1!22200 lt!1256045))))) t!295349) tb!208719))

(declare-fun result!254258 () Bool)

(assert (= result!254258 result!254222))

(assert (=> d!1068267 t!295349))

(declare-fun tp!1108736 () Bool)

(declare-fun b_and!266673 () Bool)

(assert (=> b!3632028 (= tp!1108736 (and (=> t!295345 result!254254) (=> t!295347 result!254256) (=> t!295349 result!254258) b_and!266673))))

(declare-fun e!2248202 () Bool)

(assert (=> b!3632028 (= e!2248202 (and tp!1108735 tp!1108736))))

(declare-fun tp!1108734 () Bool)

(declare-fun b!3632027 () Bool)

(declare-fun e!2248201 () Bool)

(assert (=> b!3632027 (= e!2248201 (and tp!1108734 (inv!51679 (tag!6438 (h!43681 (t!295248 rules!3307)))) (inv!51683 (transformation!5708 (h!43681 (t!295248 rules!3307)))) e!2248202))))

(declare-fun b!3632026 () Bool)

(declare-fun e!2248203 () Bool)

(declare-fun tp!1108737 () Bool)

(assert (=> b!3632026 (= e!2248203 (and e!2248201 tp!1108737))))

(assert (=> b!3631360 (= tp!1108650 e!2248203)))

(assert (= b!3632027 b!3632028))

(assert (= b!3632026 b!3632027))

(assert (= (and b!3631360 ((_ is Cons!38261) (t!295248 rules!3307))) b!3632026))

(declare-fun m!4133789 () Bool)

(assert (=> b!3632027 m!4133789))

(declare-fun m!4133791 () Bool)

(assert (=> b!3632027 m!4133791))

(declare-fun b!3632033 () Bool)

(declare-fun e!2248206 () Bool)

(declare-fun tp!1108740 () Bool)

(assert (=> b!3632033 (= e!2248206 (and tp_is_empty!18017 tp!1108740))))

(assert (=> b!3631355 (= tp!1108647 e!2248206)))

(assert (= (and b!3631355 ((_ is Cons!38260) (originalCharacters!6422 token!511))) b!3632033))

(declare-fun b!3632035 () Bool)

(declare-fun e!2248207 () Bool)

(declare-fun tp!1108744 () Bool)

(declare-fun tp!1108743 () Bool)

(assert (=> b!3632035 (= e!2248207 (and tp!1108744 tp!1108743))))

(declare-fun b!3632034 () Bool)

(assert (=> b!3632034 (= e!2248207 tp_is_empty!18017)))

(assert (=> b!3631377 (= tp!1108649 e!2248207)))

(declare-fun b!3632037 () Bool)

(declare-fun tp!1108745 () Bool)

(declare-fun tp!1108741 () Bool)

(assert (=> b!3632037 (= e!2248207 (and tp!1108745 tp!1108741))))

(declare-fun b!3632036 () Bool)

(declare-fun tp!1108742 () Bool)

(assert (=> b!3632036 (= e!2248207 tp!1108742)))

(assert (= (and b!3631377 ((_ is ElementMatch!10467) (regex!5708 rule!403))) b!3632034))

(assert (= (and b!3631377 ((_ is Concat!16406) (regex!5708 rule!403))) b!3632035))

(assert (= (and b!3631377 ((_ is Star!10467) (regex!5708 rule!403))) b!3632036))

(assert (= (and b!3631377 ((_ is Union!10467) (regex!5708 rule!403))) b!3632037))

(declare-fun b!3632038 () Bool)

(declare-fun e!2248208 () Bool)

(declare-fun tp!1108746 () Bool)

(assert (=> b!3632038 (= e!2248208 (and tp_is_empty!18017 tp!1108746))))

(assert (=> b!3631361 (= tp!1108653 e!2248208)))

(assert (= (and b!3631361 ((_ is Cons!38260) (t!295247 suffix!1395))) b!3632038))

(declare-fun b!3632040 () Bool)

(declare-fun e!2248209 () Bool)

(declare-fun tp!1108750 () Bool)

(declare-fun tp!1108749 () Bool)

(assert (=> b!3632040 (= e!2248209 (and tp!1108750 tp!1108749))))

(declare-fun b!3632039 () Bool)

(assert (=> b!3632039 (= e!2248209 tp_is_empty!18017)))

(assert (=> b!3631363 (= tp!1108642 e!2248209)))

(declare-fun b!3632042 () Bool)

(declare-fun tp!1108751 () Bool)

(declare-fun tp!1108747 () Bool)

(assert (=> b!3632042 (= e!2248209 (and tp!1108751 tp!1108747))))

(declare-fun b!3632041 () Bool)

(declare-fun tp!1108748 () Bool)

(assert (=> b!3632041 (= e!2248209 tp!1108748)))

(assert (= (and b!3631363 ((_ is ElementMatch!10467) (regex!5708 anOtherTypeRule!33))) b!3632039))

(assert (= (and b!3631363 ((_ is Concat!16406) (regex!5708 anOtherTypeRule!33))) b!3632040))

(assert (= (and b!3631363 ((_ is Star!10467) (regex!5708 anOtherTypeRule!33))) b!3632041))

(assert (= (and b!3631363 ((_ is Union!10467) (regex!5708 anOtherTypeRule!33))) b!3632042))

(declare-fun b!3632044 () Bool)

(declare-fun e!2248210 () Bool)

(declare-fun tp!1108755 () Bool)

(declare-fun tp!1108754 () Bool)

(assert (=> b!3632044 (= e!2248210 (and tp!1108755 tp!1108754))))

(declare-fun b!3632043 () Bool)

(assert (=> b!3632043 (= e!2248210 tp_is_empty!18017)))

(assert (=> b!3631374 (= tp!1108644 e!2248210)))

(declare-fun b!3632046 () Bool)

(declare-fun tp!1108756 () Bool)

(declare-fun tp!1108752 () Bool)

(assert (=> b!3632046 (= e!2248210 (and tp!1108756 tp!1108752))))

(declare-fun b!3632045 () Bool)

(declare-fun tp!1108753 () Bool)

(assert (=> b!3632045 (= e!2248210 tp!1108753)))

(assert (= (and b!3631374 ((_ is ElementMatch!10467) (regex!5708 (rule!8480 token!511)))) b!3632043))

(assert (= (and b!3631374 ((_ is Concat!16406) (regex!5708 (rule!8480 token!511)))) b!3632044))

(assert (= (and b!3631374 ((_ is Star!10467) (regex!5708 (rule!8480 token!511)))) b!3632045))

(assert (= (and b!3631374 ((_ is Union!10467) (regex!5708 (rule!8480 token!511)))) b!3632046))

(declare-fun b_lambda!107543 () Bool)

(assert (= b_lambda!107535 (or (and b!3631367 b_free!94983 (= (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631364 b_free!94991 (= (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631365 b_free!94979) (and b!3632028 b_free!94999 (= (toChars!7859 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631368 b_free!94987 (= (toChars!7859 (transformation!5708 rule!403)) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) b_lambda!107543)))

(declare-fun b_lambda!107545 () Bool)

(assert (= b_lambda!107515 (or (and b!3631367 b_free!94983 (= (toChars!7859 (transformation!5708 (h!43681 rules!3307))) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631364 b_free!94991 (= (toChars!7859 (transformation!5708 anOtherTypeRule!33)) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631365 b_free!94979) (and b!3632028 b_free!94999 (= (toChars!7859 (transformation!5708 (h!43681 (t!295248 rules!3307)))) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) (and b!3631368 b_free!94987 (= (toChars!7859 (transformation!5708 rule!403)) (toChars!7859 (transformation!5708 (rule!8480 token!511))))) b_lambda!107545)))

(check-sat (not b!3631765) (not d!1068255) (not b!3632017) (not b!3632046) (not b_lambda!107529) (not b!3632045) (not d!1068319) (not b!3632041) (not b_lambda!107537) (not bm!262671) (not d!1068243) (not b!3631936) (not d!1068313) (not b!3631924) (not d!1068265) (not d!1068279) (not b_next!95693) (not b!3631932) (not d!1068273) b_and!266645 (not b!3632003) (not b!3631808) (not b!3631959) (not b!3631735) (not b!3631934) (not b!3631746) (not b!3631966) (not b!3632044) (not b_next!95691) (not b!3631556) (not b!3631586) (not bm!262669) (not b_lambda!107533) b_and!266671 (not b!3632015) (not bm!262685) (not bm!262687) (not b!3631929) (not b!3631960) (not b!3631956) (not b_next!95695) b_and!266649 (not b!3631928) (not tb!208685) (not d!1068287) (not b_next!95681) tp_is_empty!18017 (not b_next!95685) (not b!3631841) (not b!3631939) (not b!3631774) (not b!3631937) (not tb!208677) b_and!266647 (not tb!208645) (not b!3631772) (not b_lambda!107543) (not b!3631809) (not tb!208693) (not d!1068157) (not b!3631582) (not b!3631697) (not b!3631691) (not b!3631969) (not b!3631584) (not b!3631933) (not b!3631790) (not bm!262674) (not bm!262682) (not d!1068185) (not b!3632037) (not b_next!95703) (not b!3631954) b_and!266673 b_and!266661 (not d!1068163) (not d!1068183) (not bm!262675) (not b!3632016) (not b!3631781) (not b!3631926) b_and!266659 (not b_next!95701) (not b!3631747) (not d!1068179) (not b_lambda!107545) (not b!3631919) (not b!3631961) (not b_next!95689) (not b!3631784) (not b!3632027) (not b_lambda!107527) (not b!3631840) (not b!3631589) b_and!266643 (not b!3631536) (not b!3631971) (not b!3631789) (not b!3631583) (not d!1068247) (not b!3631649) (not d!1068317) b_and!266665 (not bm!262683) (not b!3632040) (not b!3631783) (not d!1068201) (not d!1068303) (not d!1068189) (not d!1068199) (not b!3631980) (not b_next!95683) (not b!3631981) (not d!1068305) (not d!1068191) (not d!1068301) (not b!3631696) (not b!3631659) (not d!1068167) (not d!1068193) (not b!3631931) (not b!3631921) (not b!3632002) (not b!3631744) (not b!3631581) (not d!1068299) (not d!1068237) (not bm!262659) (not b!3632026) (not b!3632036) (not b_lambda!107517) (not d!1068267) (not bm!262668) (not tb!208653) (not b!3632038) (not b!3631594) (not b!3632042) (not b!3631967) b_and!266663 (not d!1068195) (not d!1068315) (not b!3631558) (not d!1068245) (not b!3631920) (not b!3631778) (not b!3631588) (not d!1068311) (not b!3631986) (not b!3631925) (not b!3631587) (not b!3631666) (not b!3631764) (not d!1068289) (not d!1068277) (not b!3632033) (not d!1068229) (not b!3631989) (not bm!262684) (not b!3631953) (not b!3631978) (not d!1068225) (not b!3631660) (not b!3632035) (not b_next!95687) (not b!3631762) (not d!1068233) (not d!1068275) (not b!3631839) (not b!3631741) (not b_lambda!107531) (not b!3631737) (not b!3631975) (not b!3631538) (not b!3631938))
(check-sat (not b_next!95695) (not b_next!95685) b_and!266647 (not b_next!95703) (not b_next!95689) b_and!266643 b_and!266665 (not b_next!95683) b_and!266663 (not b_next!95687) (not b_next!95693) b_and!266645 (not b_next!95691) b_and!266671 b_and!266649 (not b_next!95681) b_and!266673 b_and!266661 b_and!266659 (not b_next!95701))
