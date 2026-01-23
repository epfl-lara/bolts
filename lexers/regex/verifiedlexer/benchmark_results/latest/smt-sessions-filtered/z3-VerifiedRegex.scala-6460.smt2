; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338190 () Bool)

(assert start!338190)

(declare-fun b!3628425 () Bool)

(declare-fun b_free!94825 () Bool)

(declare-fun b_next!95529 () Bool)

(assert (=> b!3628425 (= b_free!94825 (not b_next!95529))))

(declare-fun tp!1107823 () Bool)

(declare-fun b_and!265999 () Bool)

(assert (=> b!3628425 (= tp!1107823 b_and!265999)))

(declare-fun b_free!94827 () Bool)

(declare-fun b_next!95531 () Bool)

(assert (=> b!3628425 (= b_free!94827 (not b_next!95531))))

(declare-fun tp!1107829 () Bool)

(declare-fun b_and!266001 () Bool)

(assert (=> b!3628425 (= tp!1107829 b_and!266001)))

(declare-fun b!3628414 () Bool)

(declare-fun b_free!94829 () Bool)

(declare-fun b_next!95533 () Bool)

(assert (=> b!3628414 (= b_free!94829 (not b_next!95533))))

(declare-fun tp!1107825 () Bool)

(declare-fun b_and!266003 () Bool)

(assert (=> b!3628414 (= tp!1107825 b_and!266003)))

(declare-fun b_free!94831 () Bool)

(declare-fun b_next!95535 () Bool)

(assert (=> b!3628414 (= b_free!94831 (not b_next!95535))))

(declare-fun tp!1107834 () Bool)

(declare-fun b_and!266005 () Bool)

(assert (=> b!3628414 (= tp!1107834 b_and!266005)))

(declare-fun b!3628426 () Bool)

(declare-fun b_free!94833 () Bool)

(declare-fun b_next!95537 () Bool)

(assert (=> b!3628426 (= b_free!94833 (not b_next!95537))))

(declare-fun tp!1107828 () Bool)

(declare-fun b_and!266007 () Bool)

(assert (=> b!3628426 (= tp!1107828 b_and!266007)))

(declare-fun b_free!94835 () Bool)

(declare-fun b_next!95539 () Bool)

(assert (=> b!3628426 (= b_free!94835 (not b_next!95539))))

(declare-fun tp!1107836 () Bool)

(declare-fun b_and!266009 () Bool)

(assert (=> b!3628426 (= tp!1107836 b_and!266009)))

(declare-fun b!3628411 () Bool)

(declare-fun b_free!94837 () Bool)

(declare-fun b_next!95541 () Bool)

(assert (=> b!3628411 (= b_free!94837 (not b_next!95541))))

(declare-fun tp!1107830 () Bool)

(declare-fun b_and!266011 () Bool)

(assert (=> b!3628411 (= tp!1107830 b_and!266011)))

(declare-fun b_free!94839 () Bool)

(declare-fun b_next!95543 () Bool)

(assert (=> b!3628411 (= b_free!94839 (not b_next!95543))))

(declare-fun tp!1107826 () Bool)

(declare-fun b_and!266013 () Bool)

(assert (=> b!3628411 (= tp!1107826 b_and!266013)))

(declare-fun b!3628394 () Bool)

(declare-fun e!2245991 () Bool)

(declare-fun e!2246005 () Bool)

(assert (=> b!3628394 (= e!2245991 e!2246005)))

(declare-fun res!1469135 () Bool)

(assert (=> b!3628394 (=> res!1469135 e!2246005)))

(declare-datatypes ((List!38353 0))(
  ( (Nil!38229) (Cons!38229 (h!43649 (_ BitVec 16)) (t!294928 List!38353)) )
))
(declare-datatypes ((TokenValue!5930 0))(
  ( (FloatLiteralValue!11860 (text!41955 List!38353)) (TokenValueExt!5929 (__x!24077 Int)) (Broken!29650 (value!182884 List!38353)) (Object!6053) (End!5930) (Def!5930) (Underscore!5930) (Match!5930) (Else!5930) (Error!5930) (Case!5930) (If!5930) (Extends!5930) (Abstract!5930) (Class!5930) (Val!5930) (DelimiterValue!11860 (del!5990 List!38353)) (KeywordValue!5936 (value!182885 List!38353)) (CommentValue!11860 (value!182886 List!38353)) (WhitespaceValue!11860 (value!182887 List!38353)) (IndentationValue!5930 (value!182888 List!38353)) (String!42983) (Int32!5930) (Broken!29651 (value!182889 List!38353)) (Boolean!5931) (Unit!55034) (OperatorValue!5933 (op!5990 List!38353)) (IdentifierValue!11860 (value!182890 List!38353)) (IdentifierValue!11861 (value!182891 List!38353)) (WhitespaceValue!11861 (value!182892 List!38353)) (True!11860) (False!11860) (Broken!29652 (value!182893 List!38353)) (Broken!29653 (value!182894 List!38353)) (True!11861) (RightBrace!5930) (RightBracket!5930) (Colon!5930) (Null!5930) (Comma!5930) (LeftBracket!5930) (False!11861) (LeftBrace!5930) (ImaginaryLiteralValue!5930 (text!41956 List!38353)) (StringLiteralValue!17790 (value!182895 List!38353)) (EOFValue!5930 (value!182896 List!38353)) (IdentValue!5930 (value!182897 List!38353)) (DelimiterValue!11861 (value!182898 List!38353)) (DedentValue!5930 (value!182899 List!38353)) (NewLineValue!5930 (value!182900 List!38353)) (IntegerValue!17790 (value!182901 (_ BitVec 32)) (text!41957 List!38353)) (IntegerValue!17791 (value!182902 Int) (text!41958 List!38353)) (Times!5930) (Or!5930) (Equal!5930) (Minus!5930) (Broken!29654 (value!182903 List!38353)) (And!5930) (Div!5930) (LessEqual!5930) (Mod!5930) (Concat!16389) (Not!5930) (Plus!5930) (SpaceValue!5930 (value!182904 List!38353)) (IntegerValue!17792 (value!182905 Int) (text!41959 List!38353)) (StringLiteralValue!17791 (text!41960 List!38353)) (FloatLiteralValue!11861 (text!41961 List!38353)) (BytesLiteralValue!5930 (value!182906 List!38353)) (CommentValue!11861 (value!182907 List!38353)) (StringLiteralValue!17792 (value!182908 List!38353)) (ErrorTokenValue!5930 (msg!5991 List!38353)) )
))
(declare-datatypes ((C!21104 0))(
  ( (C!21105 (val!12600 Int)) )
))
(declare-datatypes ((Regex!10459 0))(
  ( (ElementMatch!10459 (c!627750 C!21104)) (Concat!16390 (regOne!21430 Regex!10459) (regTwo!21430 Regex!10459)) (EmptyExpr!10459) (Star!10459 (reg!10788 Regex!10459)) (EmptyLang!10459) (Union!10459 (regOne!21431 Regex!10459) (regTwo!21431 Regex!10459)) )
))
(declare-datatypes ((String!42984 0))(
  ( (String!42985 (value!182909 String)) )
))
(declare-datatypes ((List!38354 0))(
  ( (Nil!38230) (Cons!38230 (h!43650 C!21104) (t!294929 List!38354)) )
))
(declare-datatypes ((IArray!23331 0))(
  ( (IArray!23332 (innerList!11723 List!38354)) )
))
(declare-datatypes ((Conc!11663 0))(
  ( (Node!11663 (left!29843 Conc!11663) (right!30173 Conc!11663) (csize!23556 Int) (cheight!11874 Int)) (Leaf!18124 (xs!14865 IArray!23331) (csize!23557 Int)) (Empty!11663) )
))
(declare-datatypes ((BalanceConc!22940 0))(
  ( (BalanceConc!22941 (c!627751 Conc!11663)) )
))
(declare-datatypes ((TokenValueInjection!11288 0))(
  ( (TokenValueInjection!11289 (toValue!7988 Int) (toChars!7847 Int)) )
))
(declare-datatypes ((Rule!11200 0))(
  ( (Rule!11201 (regex!5700 Regex!10459) (tag!6428 String!42984) (isSeparator!5700 Bool) (transformation!5700 TokenValueInjection!11288)) )
))
(declare-datatypes ((Token!10766 0))(
  ( (Token!10767 (value!182910 TokenValue!5930) (rule!8470 Rule!11200) (size!29169 Int) (originalCharacters!6414 List!38354)) )
))
(declare-datatypes ((tuple2!38104 0))(
  ( (tuple2!38105 (_1!22186 Token!10766) (_2!22186 List!38354)) )
))
(declare-fun lt!1255105 () tuple2!38104)

(declare-fun token!511 () Token!10766)

(assert (=> b!3628394 (= res!1469135 (= (rule!8470 (_1!22186 lt!1255105)) (rule!8470 token!511)))))

(declare-fun lt!1255073 () List!38354)

(declare-fun lt!1255067 () List!38354)

(assert (=> b!3628394 (= lt!1255073 lt!1255067)))

(declare-fun lt!1255090 () List!38354)

(declare-datatypes ((Unit!55035 0))(
  ( (Unit!55036) )
))
(declare-fun lt!1255086 () Unit!55035)

(declare-fun lemmaIsPrefixSameLengthThenSameList!617 (List!38354 List!38354 List!38354) Unit!55035)

(assert (=> b!3628394 (= lt!1255086 (lemmaIsPrefixSameLengthThenSameList!617 lt!1255073 lt!1255067 lt!1255090))))

(declare-fun lt!1255066 () Unit!55035)

(declare-fun e!2246014 () Unit!55035)

(assert (=> b!3628394 (= lt!1255066 e!2246014)))

(declare-fun c!627749 () Bool)

(declare-fun lt!1255093 () Int)

(declare-fun lt!1255091 () Int)

(assert (=> b!3628394 (= c!627749 (< lt!1255093 lt!1255091))))

(declare-fun lt!1255100 () Unit!55035)

(declare-fun e!2246010 () Unit!55035)

(assert (=> b!3628394 (= lt!1255100 e!2246010)))

(declare-fun c!627747 () Bool)

(assert (=> b!3628394 (= c!627747 (> lt!1255093 lt!1255091))))

(declare-fun lt!1255062 () BalanceConc!22940)

(declare-fun size!29170 (BalanceConc!22940) Int)

(assert (=> b!3628394 (= lt!1255091 (size!29170 lt!1255062))))

(declare-fun lt!1255068 () Unit!55035)

(declare-fun e!2246007 () Unit!55035)

(assert (=> b!3628394 (= lt!1255068 e!2246007)))

(declare-fun c!627746 () Bool)

(declare-fun rule!403 () Rule!11200)

(assert (=> b!3628394 (= c!627746 (isSeparator!5700 rule!403))))

(declare-fun lt!1255096 () Unit!55035)

(declare-fun e!2245988 () Unit!55035)

(assert (=> b!3628394 (= lt!1255096 e!2245988)))

(declare-fun c!627743 () Bool)

(declare-fun lt!1255075 () List!38354)

(declare-fun lt!1255083 () C!21104)

(declare-fun contains!7465 (List!38354 C!21104) Bool)

(assert (=> b!3628394 (= c!627743 (not (contains!7465 lt!1255075 lt!1255083)))))

(declare-fun head!7680 (List!38354) C!21104)

(assert (=> b!3628394 (= lt!1255083 (head!7680 lt!1255073))))

(declare-fun b!3628395 () Bool)

(declare-fun e!2245987 () Bool)

(declare-fun e!2245995 () Bool)

(assert (=> b!3628395 (= e!2245987 (not e!2245995))))

(declare-fun res!1469149 () Bool)

(assert (=> b!3628395 (=> res!1469149 e!2245995)))

(declare-fun matchR!5028 (Regex!10459 List!38354) Bool)

(assert (=> b!3628395 (= res!1469149 (not (matchR!5028 (regex!5700 rule!403) lt!1255067)))))

(declare-datatypes ((LexerInterface!5289 0))(
  ( (LexerInterfaceExt!5286 (__x!24078 Int)) (Lexer!5287) )
))
(declare-fun thiss!23823 () LexerInterface!5289)

(declare-fun ruleValid!1965 (LexerInterface!5289 Rule!11200) Bool)

(assert (=> b!3628395 (ruleValid!1965 thiss!23823 rule!403)))

(declare-datatypes ((List!38355 0))(
  ( (Nil!38231) (Cons!38231 (h!43651 Rule!11200) (t!294930 List!38355)) )
))
(declare-fun rules!3307 () List!38355)

(declare-fun lt!1255064 () Unit!55035)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1120 (LexerInterface!5289 Rule!11200 List!38355) Unit!55035)

(assert (=> b!3628395 (= lt!1255064 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1120 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3628396 () Bool)

(declare-fun Unit!55037 () Unit!55035)

(assert (=> b!3628396 (= e!2245988 Unit!55037)))

(declare-fun b!3628397 () Bool)

(declare-fun res!1469145 () Bool)

(declare-fun e!2246002 () Bool)

(assert (=> b!3628397 (=> (not res!1469145) (not e!2246002))))

(declare-fun rulesInvariant!4686 (LexerInterface!5289 List!38355) Bool)

(assert (=> b!3628397 (= res!1469145 (rulesInvariant!4686 thiss!23823 rules!3307))))

(declare-fun b!3628398 () Bool)

(declare-fun e!2246011 () Bool)

(declare-fun e!2246003 () Bool)

(assert (=> b!3628398 (= e!2246011 e!2246003)))

(declare-fun res!1469133 () Bool)

(assert (=> b!3628398 (=> (not res!1469133) (not e!2246003))))

(declare-fun lt!1255097 () Rule!11200)

(declare-fun list!14124 (BalanceConc!22940) List!38354)

(declare-fun charsOf!3714 (Token!10766) BalanceConc!22940)

(assert (=> b!3628398 (= res!1469133 (matchR!5028 (regex!5700 lt!1255097) (list!14124 (charsOf!3714 (_1!22186 lt!1255105)))))))

(declare-datatypes ((Option!8030 0))(
  ( (None!8029) (Some!8029 (v!37815 Rule!11200)) )
))
(declare-fun lt!1255088 () Option!8030)

(declare-fun get!12490 (Option!8030) Rule!11200)

(assert (=> b!3628398 (= lt!1255097 (get!12490 lt!1255088))))

(declare-fun b!3628399 () Bool)

(declare-fun Unit!55038 () Unit!55035)

(assert (=> b!3628399 (= e!2246010 Unit!55038)))

(declare-fun tp!1107835 () Bool)

(declare-fun e!2245989 () Bool)

(declare-fun e!2246004 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11200)

(declare-fun b!3628400 () Bool)

(declare-fun inv!51638 (String!42984) Bool)

(declare-fun inv!51641 (TokenValueInjection!11288) Bool)

(assert (=> b!3628400 (= e!2245989 (and tp!1107835 (inv!51638 (tag!6428 anOtherTypeRule!33)) (inv!51641 (transformation!5700 anOtherTypeRule!33)) e!2246004))))

(declare-fun b!3628401 () Bool)

(assert (=> b!3628401 (= e!2246003 (= (rule!8470 (_1!22186 lt!1255105)) lt!1255097))))

(declare-fun b!3628402 () Bool)

(declare-fun res!1469144 () Bool)

(assert (=> b!3628402 (=> (not res!1469144) (not e!2246002))))

(declare-fun contains!7466 (List!38355 Rule!11200) Bool)

(assert (=> b!3628402 (= res!1469144 (contains!7466 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3628403 () Bool)

(declare-fun e!2245994 () Bool)

(declare-fun e!2246000 () Bool)

(assert (=> b!3628403 (= e!2245994 e!2246000)))

(declare-fun res!1469139 () Bool)

(assert (=> b!3628403 (=> res!1469139 e!2246000)))

(declare-fun isPrefix!3063 (List!38354 List!38354) Bool)

(assert (=> b!3628403 (= res!1469139 (not (isPrefix!3063 lt!1255073 lt!1255090)))))

(declare-fun ++!9516 (List!38354 List!38354) List!38354)

(assert (=> b!3628403 (isPrefix!3063 lt!1255073 (++!9516 lt!1255073 (_2!22186 lt!1255105)))))

(declare-fun lt!1255102 () Unit!55035)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1984 (List!38354 List!38354) Unit!55035)

(assert (=> b!3628403 (= lt!1255102 (lemmaConcatTwoListThenFirstIsPrefix!1984 lt!1255073 (_2!22186 lt!1255105)))))

(declare-fun lt!1255063 () BalanceConc!22940)

(assert (=> b!3628403 (= lt!1255073 (list!14124 lt!1255063))))

(assert (=> b!3628403 (= lt!1255063 (charsOf!3714 (_1!22186 lt!1255105)))))

(assert (=> b!3628403 e!2246011))

(declare-fun res!1469141 () Bool)

(assert (=> b!3628403 (=> (not res!1469141) (not e!2246011))))

(declare-fun isDefined!6262 (Option!8030) Bool)

(assert (=> b!3628403 (= res!1469141 (isDefined!6262 lt!1255088))))

(declare-fun getRuleFromTag!1306 (LexerInterface!5289 List!38355 String!42984) Option!8030)

(assert (=> b!3628403 (= lt!1255088 (getRuleFromTag!1306 thiss!23823 rules!3307 (tag!6428 (rule!8470 (_1!22186 lt!1255105)))))))

(declare-fun lt!1255106 () Unit!55035)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1306 (LexerInterface!5289 List!38355 List!38354 Token!10766) Unit!55035)

(assert (=> b!3628403 (= lt!1255106 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1306 thiss!23823 rules!3307 lt!1255090 (_1!22186 lt!1255105)))))

(declare-datatypes ((Option!8031 0))(
  ( (None!8030) (Some!8030 (v!37816 tuple2!38104)) )
))
(declare-fun lt!1255098 () Option!8031)

(declare-fun get!12491 (Option!8031) tuple2!38104)

(assert (=> b!3628403 (= lt!1255105 (get!12491 lt!1255098))))

(declare-fun lt!1255087 () Unit!55035)

(declare-fun suffix!1395 () List!38354)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!969 (LexerInterface!5289 List!38355 List!38354 List!38354) Unit!55035)

(assert (=> b!3628403 (= lt!1255087 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!969 thiss!23823 rules!3307 lt!1255067 suffix!1395))))

(declare-fun maxPrefix!2823 (LexerInterface!5289 List!38355 List!38354) Option!8031)

(assert (=> b!3628403 (= lt!1255098 (maxPrefix!2823 thiss!23823 rules!3307 lt!1255090))))

(assert (=> b!3628403 (isPrefix!3063 lt!1255067 lt!1255090)))

(declare-fun lt!1255065 () Unit!55035)

(assert (=> b!3628403 (= lt!1255065 (lemmaConcatTwoListThenFirstIsPrefix!1984 lt!1255067 suffix!1395))))

(assert (=> b!3628403 (= lt!1255090 (++!9516 lt!1255067 suffix!1395))))

(declare-fun b!3628404 () Bool)

(declare-fun res!1469148 () Bool)

(assert (=> b!3628404 (=> (not res!1469148) (not e!2245987))))

(declare-fun lt!1255104 () tuple2!38104)

(declare-fun isEmpty!22608 (List!38354) Bool)

(assert (=> b!3628404 (= res!1469148 (isEmpty!22608 (_2!22186 lt!1255104)))))

(declare-fun b!3628405 () Bool)

(declare-fun e!2246001 () Bool)

(declare-fun tp!1107831 () Bool)

(declare-fun e!2246015 () Bool)

(declare-fun inv!21 (TokenValue!5930) Bool)

(assert (=> b!3628405 (= e!2246001 (and (inv!21 (value!182910 token!511)) e!2246015 tp!1107831))))

(declare-fun lt!1255059 () C!21104)

(declare-fun call!262453 () Unit!55035)

(declare-fun bm!262446 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!672 (Regex!10459 List!38354 C!21104) Unit!55035)

(assert (=> bm!262446 (= call!262453 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!672 (regex!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255073 lt!1255059))))

(declare-fun b!3628393 () Bool)

(declare-fun e!2245990 () Unit!55035)

(assert (=> b!3628393 (= e!2246010 e!2245990)))

(declare-fun lt!1255078 () Unit!55035)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!58 (List!38354 List!38354 List!38354 List!38354) Unit!55035)

(assert (=> b!3628393 (= lt!1255078 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!58 lt!1255067 suffix!1395 lt!1255073 lt!1255090))))

(assert (=> b!3628393 (contains!7465 lt!1255073 lt!1255059)))

(declare-fun c!627748 () Bool)

(assert (=> b!3628393 (= c!627748 (isSeparator!5700 rule!403))))

(declare-fun res!1469150 () Bool)

(assert (=> start!338190 (=> (not res!1469150) (not e!2246002))))

(get-info :version)

(assert (=> start!338190 (= res!1469150 ((_ is Lexer!5287) thiss!23823))))

(assert (=> start!338190 e!2246002))

(declare-fun e!2246012 () Bool)

(assert (=> start!338190 e!2246012))

(declare-fun e!2245992 () Bool)

(assert (=> start!338190 e!2245992))

(assert (=> start!338190 true))

(declare-fun inv!51642 (Token!10766) Bool)

(assert (=> start!338190 (and (inv!51642 token!511) e!2246001)))

(declare-fun e!2245996 () Bool)

(assert (=> start!338190 e!2245996))

(assert (=> start!338190 e!2245989))

(declare-fun b!3628406 () Bool)

(declare-fun res!1469140 () Bool)

(assert (=> b!3628406 (=> res!1469140 e!2246005)))

(declare-fun getIndex!460 (List!38355 Rule!11200) Int)

(assert (=> b!3628406 (= res!1469140 (>= (getIndex!460 rules!3307 (rule!8470 (_1!22186 lt!1255105))) (getIndex!460 rules!3307 rule!403)))))

(declare-fun b!3628407 () Bool)

(declare-fun Unit!55039 () Unit!55035)

(assert (=> b!3628407 (= e!2245988 Unit!55039)))

(declare-fun lt!1255074 () Unit!55035)

(assert (=> b!3628407 (= lt!1255074 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!672 (regex!5700 rule!403) lt!1255067 lt!1255083))))

(assert (=> b!3628407 false))

(declare-fun b!3628408 () Bool)

(declare-fun e!2246018 () Unit!55035)

(declare-fun Unit!55040 () Unit!55035)

(assert (=> b!3628408 (= e!2246018 Unit!55040)))

(declare-fun b!3628409 () Bool)

(declare-fun e!2246017 () Bool)

(assert (=> b!3628409 (= e!2246017 e!2245987)))

(declare-fun res!1469132 () Bool)

(assert (=> b!3628409 (=> (not res!1469132) (not e!2245987))))

(assert (=> b!3628409 (= res!1469132 (= (_1!22186 lt!1255104) token!511))))

(declare-fun lt!1255103 () Option!8031)

(assert (=> b!3628409 (= lt!1255104 (get!12491 lt!1255103))))

(declare-fun b!3628410 () Bool)

(declare-fun e!2246013 () Unit!55035)

(declare-fun Unit!55041 () Unit!55035)

(assert (=> b!3628410 (= e!2246013 Unit!55041)))

(declare-fun e!2246006 () Bool)

(assert (=> b!3628411 (= e!2246006 (and tp!1107830 tp!1107826))))

(declare-fun b!3628412 () Bool)

(declare-fun e!2245998 () Bool)

(assert (=> b!3628412 (= e!2246000 e!2245998)))

(declare-fun res!1469153 () Bool)

(assert (=> b!3628412 (=> res!1469153 e!2245998)))

(declare-fun lt!1255072 () TokenValue!5930)

(assert (=> b!3628412 (= res!1469153 (not (= lt!1255098 (Some!8030 (tuple2!38105 (Token!10767 lt!1255072 (rule!8470 (_1!22186 lt!1255105)) lt!1255093 lt!1255073) (_2!22186 lt!1255105))))))))

(assert (=> b!3628412 (= lt!1255093 (size!29170 lt!1255063))))

(declare-fun apply!9202 (TokenValueInjection!11288 BalanceConc!22940) TokenValue!5930)

(assert (=> b!3628412 (= lt!1255072 (apply!9202 (transformation!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255063))))

(declare-fun lt!1255101 () Unit!55035)

(declare-fun lemmaCharactersSize!747 (Token!10766) Unit!55035)

(assert (=> b!3628412 (= lt!1255101 (lemmaCharactersSize!747 (_1!22186 lt!1255105)))))

(declare-fun lt!1255060 () Unit!55035)

(declare-fun lemmaEqSameImage!885 (TokenValueInjection!11288 BalanceConc!22940 BalanceConc!22940) Unit!55035)

(declare-fun seqFromList!4249 (List!38354) BalanceConc!22940)

(assert (=> b!3628412 (= lt!1255060 (lemmaEqSameImage!885 (transformation!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255063 (seqFromList!4249 (originalCharacters!6414 (_1!22186 lt!1255105)))))))

(declare-fun lt!1255071 () Unit!55035)

(declare-fun lemmaSemiInverse!1451 (TokenValueInjection!11288 BalanceConc!22940) Unit!55035)

(assert (=> b!3628412 (= lt!1255071 (lemmaSemiInverse!1451 (transformation!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255063))))

(declare-fun bm!262447 () Bool)

(declare-fun call!262451 () List!38354)

(declare-fun usedCharacters!914 (Regex!10459) List!38354)

(assert (=> bm!262447 (= call!262451 (usedCharacters!914 (regex!5700 (rule!8470 (_1!22186 lt!1255105)))))))

(declare-fun b!3628413 () Bool)

(assert (=> b!3628413 false))

(declare-fun lt!1255092 () Unit!55035)

(declare-fun call!262455 () Unit!55035)

(assert (=> b!3628413 (= lt!1255092 call!262455)))

(declare-fun call!262452 () Bool)

(assert (=> b!3628413 (not call!262452)))

(declare-fun lt!1255069 () Unit!55035)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!268 (LexerInterface!5289 List!38355 List!38355 Rule!11200 Rule!11200 C!21104) Unit!55035)

(assert (=> b!3628413 (= lt!1255069 (lemmaSepRuleNotContainsCharContainedInANonSepRule!268 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8470 (_1!22186 lt!1255105)) lt!1255083))))

(declare-fun Unit!55042 () Unit!55035)

(assert (=> b!3628413 (= e!2246013 Unit!55042)))

(assert (=> b!3628414 (= e!2246004 (and tp!1107825 tp!1107834))))

(declare-fun bm!262448 () Bool)

(declare-fun call!262456 () List!38354)

(assert (=> bm!262448 (= call!262456 (usedCharacters!914 (regex!5700 (rule!8470 (_1!22186 lt!1255105)))))))

(declare-fun b!3628415 () Bool)

(declare-fun Unit!55043 () Unit!55035)

(assert (=> b!3628415 (= e!2246014 Unit!55043)))

(declare-fun b!3628416 () Bool)

(assert (=> b!3628416 (= e!2246002 e!2246017)))

(declare-fun res!1469138 () Bool)

(assert (=> b!3628416 (=> (not res!1469138) (not e!2246017))))

(declare-fun isDefined!6263 (Option!8031) Bool)

(assert (=> b!3628416 (= res!1469138 (isDefined!6263 lt!1255103))))

(assert (=> b!3628416 (= lt!1255103 (maxPrefix!2823 thiss!23823 rules!3307 lt!1255067))))

(assert (=> b!3628416 (= lt!1255067 (list!14124 lt!1255062))))

(assert (=> b!3628416 (= lt!1255062 (charsOf!3714 token!511))))

(declare-fun b!3628417 () Bool)

(assert (=> b!3628417 false))

(declare-fun lt!1255077 () Unit!55035)

(assert (=> b!3628417 (= lt!1255077 call!262453)))

(declare-fun call!262454 () Bool)

(assert (=> b!3628417 (not call!262454)))

(declare-fun lt!1255081 () Unit!55035)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!386 (LexerInterface!5289 List!38355 List!38355 Rule!11200 Rule!11200 C!21104) Unit!55035)

(assert (=> b!3628417 (= lt!1255081 (lemmaNonSepRuleNotContainsCharContainedInASepRule!386 thiss!23823 rules!3307 rules!3307 (rule!8470 (_1!22186 lt!1255105)) anOtherTypeRule!33 lt!1255059))))

(declare-fun Unit!55044 () Unit!55035)

(assert (=> b!3628417 (= e!2245990 Unit!55044)))

(declare-fun b!3628418 () Bool)

(declare-fun res!1469137 () Bool)

(assert (=> b!3628418 (=> res!1469137 e!2246000)))

(assert (=> b!3628418 (= res!1469137 (not (matchR!5028 (regex!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255073)))))

(declare-fun e!2246016 () Bool)

(declare-fun b!3628419 () Bool)

(declare-fun tp!1107822 () Bool)

(declare-fun e!2246009 () Bool)

(assert (=> b!3628419 (= e!2246009 (and tp!1107822 (inv!51638 (tag!6428 (h!43651 rules!3307))) (inv!51641 (transformation!5700 (h!43651 rules!3307))) e!2246016))))

(declare-fun b!3628420 () Bool)

(assert (=> b!3628420 (= e!2245995 e!2245994)))

(declare-fun res!1469143 () Bool)

(assert (=> b!3628420 (=> res!1469143 e!2245994)))

(assert (=> b!3628420 (= res!1469143 (contains!7465 lt!1255075 lt!1255059))))

(assert (=> b!3628420 (= lt!1255059 (head!7680 suffix!1395))))

(assert (=> b!3628420 (= lt!1255075 (usedCharacters!914 (regex!5700 rule!403)))))

(declare-fun b!3628421 () Bool)

(declare-fun tp!1107833 () Bool)

(assert (=> b!3628421 (= e!2246015 (and tp!1107833 (inv!51638 (tag!6428 (rule!8470 token!511))) (inv!51641 (transformation!5700 (rule!8470 token!511))) e!2246006))))

(declare-fun b!3628422 () Bool)

(declare-fun res!1469147 () Bool)

(assert (=> b!3628422 (=> (not res!1469147) (not e!2246002))))

(assert (=> b!3628422 (= res!1469147 (not (= (isSeparator!5700 anOtherTypeRule!33) (isSeparator!5700 rule!403))))))

(declare-fun b!3628423 () Bool)

(assert (=> b!3628423 (= e!2246007 e!2246018)))

(declare-fun c!627745 () Bool)

(assert (=> b!3628423 (= c!627745 (not (isSeparator!5700 (rule!8470 (_1!22186 lt!1255105)))))))

(declare-fun b!3628424 () Bool)

(declare-fun res!1469136 () Bool)

(assert (=> b!3628424 (=> (not res!1469136) (not e!2245987))))

(assert (=> b!3628424 (= res!1469136 (= (rule!8470 token!511) rule!403))))

(assert (=> b!3628425 (= e!2246016 (and tp!1107823 tp!1107829))))

(declare-fun e!2245999 () Bool)

(assert (=> b!3628426 (= e!2245999 (and tp!1107828 tp!1107836))))

(declare-fun b!3628427 () Bool)

(assert (=> b!3628427 (= e!2246007 e!2246013)))

(declare-fun c!627744 () Bool)

(assert (=> b!3628427 (= c!627744 (isSeparator!5700 (rule!8470 (_1!22186 lt!1255105))))))

(declare-fun b!3628428 () Bool)

(declare-fun res!1469146 () Bool)

(assert (=> b!3628428 (=> res!1469146 e!2245994)))

(assert (=> b!3628428 (= res!1469146 (not (contains!7465 (usedCharacters!914 (regex!5700 anOtherTypeRule!33)) lt!1255059)))))

(declare-fun bm!262449 () Bool)

(assert (=> bm!262449 (= call!262454 (contains!7465 call!262451 lt!1255059))))

(declare-fun b!3628429 () Bool)

(assert (=> b!3628429 (= e!2245998 e!2245991)))

(declare-fun res!1469134 () Bool)

(assert (=> b!3628429 (=> res!1469134 e!2245991)))

(declare-fun lt!1255095 () Option!8031)

(declare-fun lt!1255099 () List!38354)

(assert (=> b!3628429 (= res!1469134 (or (not (= lt!1255099 (_2!22186 lt!1255105))) (not (= lt!1255095 (Some!8030 (tuple2!38105 (_1!22186 lt!1255105) lt!1255099))))))))

(assert (=> b!3628429 (= (_2!22186 lt!1255105) lt!1255099)))

(declare-fun lt!1255084 () Unit!55035)

(declare-fun lemmaSamePrefixThenSameSuffix!1410 (List!38354 List!38354 List!38354 List!38354 List!38354) Unit!55035)

(assert (=> b!3628429 (= lt!1255084 (lemmaSamePrefixThenSameSuffix!1410 lt!1255073 (_2!22186 lt!1255105) lt!1255073 lt!1255099 lt!1255090))))

(declare-fun getSuffix!1630 (List!38354 List!38354) List!38354)

(assert (=> b!3628429 (= lt!1255099 (getSuffix!1630 lt!1255090 lt!1255073))))

(declare-fun lt!1255070 () TokenValue!5930)

(declare-fun lt!1255085 () Int)

(assert (=> b!3628429 (= lt!1255095 (Some!8030 (tuple2!38105 (Token!10767 lt!1255070 (rule!8470 (_1!22186 lt!1255105)) lt!1255085 lt!1255073) (_2!22186 lt!1255105))))))

(declare-fun maxPrefixOneRule!1963 (LexerInterface!5289 Rule!11200 List!38354) Option!8031)

(assert (=> b!3628429 (= lt!1255095 (maxPrefixOneRule!1963 thiss!23823 (rule!8470 (_1!22186 lt!1255105)) lt!1255090))))

(declare-fun size!29171 (List!38354) Int)

(assert (=> b!3628429 (= lt!1255085 (size!29171 lt!1255073))))

(assert (=> b!3628429 (= lt!1255070 (apply!9202 (transformation!5700 (rule!8470 (_1!22186 lt!1255105))) (seqFromList!4249 lt!1255073)))))

(declare-fun lt!1255061 () Unit!55035)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1031 (LexerInterface!5289 List!38355 List!38354 List!38354 List!38354 Rule!11200) Unit!55035)

(assert (=> b!3628429 (= lt!1255061 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1031 thiss!23823 rules!3307 lt!1255073 lt!1255090 (_2!22186 lt!1255105) (rule!8470 (_1!22186 lt!1255105))))))

(declare-fun b!3628430 () Bool)

(declare-fun tp_is_empty!18001 () Bool)

(declare-fun tp!1107824 () Bool)

(assert (=> b!3628430 (= e!2245992 (and tp_is_empty!18001 tp!1107824))))

(declare-fun b!3628431 () Bool)

(declare-fun res!1469152 () Bool)

(assert (=> b!3628431 (=> res!1469152 e!2245995)))

(assert (=> b!3628431 (= res!1469152 (isEmpty!22608 suffix!1395))))

(declare-fun b!3628432 () Bool)

(declare-fun tp!1107827 () Bool)

(assert (=> b!3628432 (= e!2245996 (and tp!1107827 (inv!51638 (tag!6428 rule!403)) (inv!51641 (transformation!5700 rule!403)) e!2245999))))

(declare-fun bm!262450 () Bool)

(assert (=> bm!262450 (= call!262452 (contains!7465 call!262456 lt!1255083))))

(declare-fun b!3628433 () Bool)

(declare-fun tp!1107832 () Bool)

(assert (=> b!3628433 (= e!2246012 (and e!2246009 tp!1107832))))

(declare-fun b!3628434 () Bool)

(assert (=> b!3628434 false))

(declare-fun lt!1255089 () Unit!55035)

(assert (=> b!3628434 (= lt!1255089 call!262455)))

(assert (=> b!3628434 (not call!262452)))

(declare-fun lt!1255079 () Unit!55035)

(assert (=> b!3628434 (= lt!1255079 (lemmaNonSepRuleNotContainsCharContainedInASepRule!386 thiss!23823 rules!3307 rules!3307 (rule!8470 (_1!22186 lt!1255105)) rule!403 lt!1255083))))

(declare-fun Unit!55045 () Unit!55035)

(assert (=> b!3628434 (= e!2246018 Unit!55045)))

(declare-fun b!3628435 () Bool)

(declare-fun res!1469131 () Bool)

(assert (=> b!3628435 (=> (not res!1469131) (not e!2246002))))

(assert (=> b!3628435 (= res!1469131 (contains!7466 rules!3307 rule!403))))

(declare-fun bm!262451 () Bool)

(assert (=> bm!262451 (= call!262455 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!672 (regex!5700 (rule!8470 (_1!22186 lt!1255105))) lt!1255073 lt!1255083))))

(declare-fun b!3628436 () Bool)

(assert (=> b!3628436 false))

(declare-fun lt!1255080 () Unit!55035)

(assert (=> b!3628436 (= lt!1255080 call!262453)))

(assert (=> b!3628436 (not call!262454)))

(declare-fun lt!1255094 () Unit!55035)

(assert (=> b!3628436 (= lt!1255094 (lemmaSepRuleNotContainsCharContainedInANonSepRule!268 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8470 (_1!22186 lt!1255105)) lt!1255059))))

(declare-fun Unit!55046 () Unit!55035)

(assert (=> b!3628436 (= e!2245990 Unit!55046)))

(declare-fun b!3628437 () Bool)

(declare-fun Unit!55047 () Unit!55035)

(assert (=> b!3628437 (= e!2246014 Unit!55047)))

(declare-fun lt!1255076 () Unit!55035)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!328 (LexerInterface!5289 List!38355 Rule!11200 List!38354 List!38354 List!38354 Rule!11200) Unit!55035)

(assert (=> b!3628437 (= lt!1255076 (lemmaMaxPrefixOutputsMaxPrefix!328 thiss!23823 rules!3307 (rule!8470 (_1!22186 lt!1255105)) lt!1255073 lt!1255090 lt!1255067 rule!403))))

(assert (=> b!3628437 false))

(declare-fun b!3628438 () Bool)

(assert (=> b!3628438 (= e!2246005 true)))

(assert (=> b!3628438 (isEmpty!22608 (getSuffix!1630 lt!1255067 lt!1255067))))

(declare-fun lt!1255082 () Unit!55035)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!172 (List!38354) Unit!55035)

(assert (=> b!3628438 (= lt!1255082 (lemmaGetSuffixOnListWithItSelfIsEmpty!172 lt!1255067))))

(declare-fun b!3628439 () Bool)

(declare-fun res!1469142 () Bool)

(assert (=> b!3628439 (=> res!1469142 e!2245994)))

(declare-fun sepAndNonSepRulesDisjointChars!1870 (List!38355 List!38355) Bool)

(assert (=> b!3628439 (= res!1469142 (not (sepAndNonSepRulesDisjointChars!1870 rules!3307 rules!3307)))))

(declare-fun b!3628440 () Bool)

(declare-fun res!1469151 () Bool)

(assert (=> b!3628440 (=> (not res!1469151) (not e!2246002))))

(declare-fun isEmpty!22609 (List!38355) Bool)

(assert (=> b!3628440 (= res!1469151 (not (isEmpty!22609 rules!3307)))))

(assert (= (and start!338190 res!1469150) b!3628440))

(assert (= (and b!3628440 res!1469151) b!3628397))

(assert (= (and b!3628397 res!1469145) b!3628435))

(assert (= (and b!3628435 res!1469131) b!3628402))

(assert (= (and b!3628402 res!1469144) b!3628422))

(assert (= (and b!3628422 res!1469147) b!3628416))

(assert (= (and b!3628416 res!1469138) b!3628409))

(assert (= (and b!3628409 res!1469132) b!3628404))

(assert (= (and b!3628404 res!1469148) b!3628424))

(assert (= (and b!3628424 res!1469136) b!3628395))

(assert (= (and b!3628395 (not res!1469149)) b!3628431))

(assert (= (and b!3628431 (not res!1469152)) b!3628420))

(assert (= (and b!3628420 (not res!1469143)) b!3628428))

(assert (= (and b!3628428 (not res!1469146)) b!3628439))

(assert (= (and b!3628439 (not res!1469142)) b!3628403))

(assert (= (and b!3628403 res!1469141) b!3628398))

(assert (= (and b!3628398 res!1469133) b!3628401))

(assert (= (and b!3628403 (not res!1469139)) b!3628418))

(assert (= (and b!3628418 (not res!1469137)) b!3628412))

(assert (= (and b!3628412 (not res!1469153)) b!3628429))

(assert (= (and b!3628429 (not res!1469134)) b!3628394))

(assert (= (and b!3628394 c!627743) b!3628407))

(assert (= (and b!3628394 (not c!627743)) b!3628396))

(assert (= (and b!3628394 c!627746) b!3628423))

(assert (= (and b!3628394 (not c!627746)) b!3628427))

(assert (= (and b!3628423 c!627745) b!3628434))

(assert (= (and b!3628423 (not c!627745)) b!3628408))

(assert (= (and b!3628427 c!627744) b!3628413))

(assert (= (and b!3628427 (not c!627744)) b!3628410))

(assert (= (or b!3628434 b!3628413) bm!262451))

(assert (= (or b!3628434 b!3628413) bm!262448))

(assert (= (or b!3628434 b!3628413) bm!262450))

(assert (= (and b!3628394 c!627747) b!3628393))

(assert (= (and b!3628394 (not c!627747)) b!3628399))

(assert (= (and b!3628393 c!627748) b!3628436))

(assert (= (and b!3628393 (not c!627748)) b!3628417))

(assert (= (or b!3628436 b!3628417) bm!262446))

(assert (= (or b!3628436 b!3628417) bm!262447))

(assert (= (or b!3628436 b!3628417) bm!262449))

(assert (= (and b!3628394 c!627749) b!3628437))

(assert (= (and b!3628394 (not c!627749)) b!3628415))

(assert (= (and b!3628394 (not res!1469135)) b!3628406))

(assert (= (and b!3628406 (not res!1469140)) b!3628438))

(assert (= b!3628419 b!3628425))

(assert (= b!3628433 b!3628419))

(assert (= (and start!338190 ((_ is Cons!38231) rules!3307)) b!3628433))

(assert (= (and start!338190 ((_ is Cons!38230) suffix!1395)) b!3628430))

(assert (= b!3628421 b!3628411))

(assert (= b!3628405 b!3628421))

(assert (= start!338190 b!3628405))

(assert (= b!3628432 b!3628426))

(assert (= start!338190 b!3628432))

(assert (= b!3628400 b!3628414))

(assert (= start!338190 b!3628400))

(declare-fun m!4129397 () Bool)

(assert (=> b!3628416 m!4129397))

(declare-fun m!4129399 () Bool)

(assert (=> b!3628416 m!4129399))

(declare-fun m!4129401 () Bool)

(assert (=> b!3628416 m!4129401))

(declare-fun m!4129403 () Bool)

(assert (=> b!3628416 m!4129403))

(declare-fun m!4129405 () Bool)

(assert (=> b!3628398 m!4129405))

(assert (=> b!3628398 m!4129405))

(declare-fun m!4129407 () Bool)

(assert (=> b!3628398 m!4129407))

(assert (=> b!3628398 m!4129407))

(declare-fun m!4129409 () Bool)

(assert (=> b!3628398 m!4129409))

(declare-fun m!4129411 () Bool)

(assert (=> b!3628398 m!4129411))

(declare-fun m!4129413 () Bool)

(assert (=> b!3628418 m!4129413))

(declare-fun m!4129415 () Bool)

(assert (=> b!3628440 m!4129415))

(declare-fun m!4129417 () Bool)

(assert (=> b!3628394 m!4129417))

(declare-fun m!4129419 () Bool)

(assert (=> b!3628394 m!4129419))

(declare-fun m!4129421 () Bool)

(assert (=> b!3628394 m!4129421))

(declare-fun m!4129423 () Bool)

(assert (=> b!3628394 m!4129423))

(declare-fun m!4129425 () Bool)

(assert (=> b!3628435 m!4129425))

(declare-fun m!4129427 () Bool)

(assert (=> b!3628397 m!4129427))

(declare-fun m!4129429 () Bool)

(assert (=> b!3628406 m!4129429))

(declare-fun m!4129431 () Bool)

(assert (=> b!3628406 m!4129431))

(declare-fun m!4129433 () Bool)

(assert (=> b!3628429 m!4129433))

(declare-fun m!4129435 () Bool)

(assert (=> b!3628429 m!4129435))

(declare-fun m!4129437 () Bool)

(assert (=> b!3628429 m!4129437))

(assert (=> b!3628429 m!4129437))

(declare-fun m!4129439 () Bool)

(assert (=> b!3628429 m!4129439))

(declare-fun m!4129441 () Bool)

(assert (=> b!3628429 m!4129441))

(declare-fun m!4129443 () Bool)

(assert (=> b!3628429 m!4129443))

(declare-fun m!4129445 () Bool)

(assert (=> b!3628429 m!4129445))

(declare-fun m!4129447 () Bool)

(assert (=> b!3628393 m!4129447))

(declare-fun m!4129449 () Bool)

(assert (=> b!3628393 m!4129449))

(declare-fun m!4129451 () Bool)

(assert (=> b!3628413 m!4129451))

(declare-fun m!4129453 () Bool)

(assert (=> bm!262448 m!4129453))

(declare-fun m!4129455 () Bool)

(assert (=> bm!262446 m!4129455))

(declare-fun m!4129457 () Bool)

(assert (=> bm!262449 m!4129457))

(declare-fun m!4129459 () Bool)

(assert (=> bm!262450 m!4129459))

(declare-fun m!4129461 () Bool)

(assert (=> b!3628409 m!4129461))

(declare-fun m!4129463 () Bool)

(assert (=> b!3628436 m!4129463))

(declare-fun m!4129465 () Bool)

(assert (=> b!3628405 m!4129465))

(declare-fun m!4129467 () Bool)

(assert (=> start!338190 m!4129467))

(declare-fun m!4129469 () Bool)

(assert (=> b!3628432 m!4129469))

(declare-fun m!4129471 () Bool)

(assert (=> b!3628432 m!4129471))

(declare-fun m!4129473 () Bool)

(assert (=> b!3628438 m!4129473))

(assert (=> b!3628438 m!4129473))

(declare-fun m!4129475 () Bool)

(assert (=> b!3628438 m!4129475))

(declare-fun m!4129477 () Bool)

(assert (=> b!3628438 m!4129477))

(assert (=> bm!262447 m!4129453))

(declare-fun m!4129479 () Bool)

(assert (=> b!3628403 m!4129479))

(declare-fun m!4129481 () Bool)

(assert (=> b!3628403 m!4129481))

(declare-fun m!4129483 () Bool)

(assert (=> b!3628403 m!4129483))

(declare-fun m!4129485 () Bool)

(assert (=> b!3628403 m!4129485))

(declare-fun m!4129487 () Bool)

(assert (=> b!3628403 m!4129487))

(declare-fun m!4129489 () Bool)

(assert (=> b!3628403 m!4129489))

(declare-fun m!4129491 () Bool)

(assert (=> b!3628403 m!4129491))

(assert (=> b!3628403 m!4129405))

(declare-fun m!4129493 () Bool)

(assert (=> b!3628403 m!4129493))

(declare-fun m!4129495 () Bool)

(assert (=> b!3628403 m!4129495))

(declare-fun m!4129497 () Bool)

(assert (=> b!3628403 m!4129497))

(declare-fun m!4129499 () Bool)

(assert (=> b!3628403 m!4129499))

(declare-fun m!4129501 () Bool)

(assert (=> b!3628403 m!4129501))

(declare-fun m!4129503 () Bool)

(assert (=> b!3628403 m!4129503))

(assert (=> b!3628403 m!4129479))

(declare-fun m!4129505 () Bool)

(assert (=> b!3628403 m!4129505))

(declare-fun m!4129507 () Bool)

(assert (=> b!3628402 m!4129507))

(declare-fun m!4129509 () Bool)

(assert (=> b!3628434 m!4129509))

(declare-fun m!4129511 () Bool)

(assert (=> b!3628428 m!4129511))

(assert (=> b!3628428 m!4129511))

(declare-fun m!4129513 () Bool)

(assert (=> b!3628428 m!4129513))

(declare-fun m!4129515 () Bool)

(assert (=> b!3628412 m!4129515))

(declare-fun m!4129517 () Bool)

(assert (=> b!3628412 m!4129517))

(declare-fun m!4129519 () Bool)

(assert (=> b!3628412 m!4129519))

(declare-fun m!4129521 () Bool)

(assert (=> b!3628412 m!4129521))

(assert (=> b!3628412 m!4129519))

(declare-fun m!4129523 () Bool)

(assert (=> b!3628412 m!4129523))

(declare-fun m!4129525 () Bool)

(assert (=> b!3628412 m!4129525))

(declare-fun m!4129527 () Bool)

(assert (=> b!3628437 m!4129527))

(declare-fun m!4129529 () Bool)

(assert (=> b!3628417 m!4129529))

(declare-fun m!4129531 () Bool)

(assert (=> b!3628404 m!4129531))

(declare-fun m!4129533 () Bool)

(assert (=> b!3628395 m!4129533))

(declare-fun m!4129535 () Bool)

(assert (=> b!3628395 m!4129535))

(declare-fun m!4129537 () Bool)

(assert (=> b!3628395 m!4129537))

(declare-fun m!4129539 () Bool)

(assert (=> b!3628407 m!4129539))

(declare-fun m!4129541 () Bool)

(assert (=> b!3628421 m!4129541))

(declare-fun m!4129543 () Bool)

(assert (=> b!3628421 m!4129543))

(declare-fun m!4129545 () Bool)

(assert (=> b!3628420 m!4129545))

(declare-fun m!4129547 () Bool)

(assert (=> b!3628420 m!4129547))

(declare-fun m!4129549 () Bool)

(assert (=> b!3628420 m!4129549))

(declare-fun m!4129551 () Bool)

(assert (=> b!3628431 m!4129551))

(declare-fun m!4129553 () Bool)

(assert (=> b!3628439 m!4129553))

(declare-fun m!4129555 () Bool)

(assert (=> b!3628419 m!4129555))

(declare-fun m!4129557 () Bool)

(assert (=> b!3628419 m!4129557))

(declare-fun m!4129559 () Bool)

(assert (=> bm!262451 m!4129559))

(declare-fun m!4129561 () Bool)

(assert (=> b!3628400 m!4129561))

(declare-fun m!4129563 () Bool)

(assert (=> b!3628400 m!4129563))

(check-sat (not b!3628413) (not b!3628417) (not b!3628412) b_and!266001 b_and!266003 (not b_next!95541) (not b!3628393) (not b!3628394) (not bm!262446) (not b!3628416) (not b!3628429) (not b!3628438) b_and!266013 (not b!3628398) (not b!3628407) (not b!3628431) (not b!3628406) (not b!3628403) (not b!3628402) (not bm!262451) (not b!3628432) (not b_next!95533) (not b_next!95529) (not b_next!95543) b_and!266007 (not bm!262447) (not b_next!95537) (not b!3628409) (not b!3628418) (not bm!262448) (not b!3628437) b_and!266009 b_and!266005 (not b!3628419) (not b!3628400) (not b_next!95531) (not b!3628435) (not b!3628395) (not bm!262449) (not b!3628433) tp_is_empty!18001 b_and!265999 (not b!3628439) (not bm!262450) (not b!3628430) (not b!3628405) (not b!3628397) (not b_next!95539) (not b_next!95535) (not b!3628434) (not b!3628428) (not b!3628440) b_and!266011 (not b!3628436) (not b!3628421) (not start!338190) (not b!3628404) (not b!3628420))
(check-sat b_and!266001 b_and!266013 (not b_next!95533) b_and!266003 (not b_next!95537) b_and!266009 b_and!266005 (not b_next!95541) (not b_next!95531) b_and!265999 b_and!266011 (not b_next!95529) (not b_next!95543) b_and!266007 (not b_next!95539) (not b_next!95535))
