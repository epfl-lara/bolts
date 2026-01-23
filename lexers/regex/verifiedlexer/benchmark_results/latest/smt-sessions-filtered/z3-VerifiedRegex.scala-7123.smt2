; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!377796 () Bool)

(assert start!377796)

(declare-fun b!4011777 () Bool)

(declare-fun b_free!111609 () Bool)

(declare-fun b_next!112313 () Bool)

(assert (=> b!4011777 (= b_free!111609 (not b_next!112313))))

(declare-fun tp!1220440 () Bool)

(declare-fun b_and!308183 () Bool)

(assert (=> b!4011777 (= tp!1220440 b_and!308183)))

(declare-fun b_free!111611 () Bool)

(declare-fun b_next!112315 () Bool)

(assert (=> b!4011777 (= b_free!111611 (not b_next!112315))))

(declare-fun tp!1220439 () Bool)

(declare-fun b_and!308185 () Bool)

(assert (=> b!4011777 (= tp!1220439 b_and!308185)))

(declare-fun b!4011768 () Bool)

(declare-fun b_free!111613 () Bool)

(declare-fun b_next!112317 () Bool)

(assert (=> b!4011768 (= b_free!111613 (not b_next!112317))))

(declare-fun tp!1220443 () Bool)

(declare-fun b_and!308187 () Bool)

(assert (=> b!4011768 (= tp!1220443 b_and!308187)))

(declare-fun b_free!111615 () Bool)

(declare-fun b_next!112319 () Bool)

(assert (=> b!4011768 (= b_free!111615 (not b_next!112319))))

(declare-fun tp!1220437 () Bool)

(declare-fun b_and!308189 () Bool)

(assert (=> b!4011768 (= tp!1220437 b_and!308189)))

(declare-fun b!4011747 () Bool)

(declare-fun e!2488115 () Bool)

(declare-datatypes ((C!23664 0))(
  ( (C!23665 (val!13926 Int)) )
))
(declare-datatypes ((List!43068 0))(
  ( (Nil!42944) (Cons!42944 (h!48364 C!23664) (t!332999 List!43068)) )
))
(declare-fun lt!1421057 () List!43068)

(declare-fun lt!1421025 () List!43068)

(assert (=> b!4011747 (= e!2488115 (= lt!1421057 lt!1421025))))

(declare-fun b!4011748 () Bool)

(declare-fun e!2488108 () Bool)

(declare-fun e!2488102 () Bool)

(assert (=> b!4011748 (= e!2488108 e!2488102)))

(declare-fun res!1630901 () Bool)

(assert (=> b!4011748 (=> (not res!1630901) (not e!2488102))))

(declare-fun lt!1421020 () List!43068)

(assert (=> b!4011748 (= res!1630901 (= lt!1421020 lt!1421025))))

(declare-fun prefix!494 () List!43068)

(declare-fun newSuffix!27 () List!43068)

(declare-fun ++!11236 (List!43068 List!43068) List!43068)

(assert (=> b!4011748 (= lt!1421025 (++!11236 prefix!494 newSuffix!27))))

(declare-fun lt!1421037 () List!43068)

(declare-fun newSuffixResult!27 () List!43068)

(assert (=> b!4011748 (= lt!1421020 (++!11236 lt!1421037 newSuffixResult!27))))

(declare-datatypes ((IArray!26095 0))(
  ( (IArray!26096 (innerList!13105 List!43068)) )
))
(declare-datatypes ((Conc!13045 0))(
  ( (Node!13045 (left!32392 Conc!13045) (right!32722 Conc!13045) (csize!26320 Int) (cheight!13256 Int)) (Leaf!20169 (xs!16351 IArray!26095) (csize!26321 Int)) (Empty!13045) )
))
(declare-datatypes ((BalanceConc!25684 0))(
  ( (BalanceConc!25685 (c!693562 Conc!13045)) )
))
(declare-datatypes ((List!43069 0))(
  ( (Nil!42945) (Cons!42945 (h!48365 (_ BitVec 16)) (t!333000 List!43069)) )
))
(declare-datatypes ((TokenValue!7064 0))(
  ( (FloatLiteralValue!14128 (text!49893 List!43069)) (TokenValueExt!7063 (__x!26345 Int)) (Broken!35320 (value!215377 List!43069)) (Object!7187) (End!7064) (Def!7064) (Underscore!7064) (Match!7064) (Else!7064) (Error!7064) (Case!7064) (If!7064) (Extends!7064) (Abstract!7064) (Class!7064) (Val!7064) (DelimiterValue!14128 (del!7124 List!43069)) (KeywordValue!7070 (value!215378 List!43069)) (CommentValue!14128 (value!215379 List!43069)) (WhitespaceValue!14128 (value!215380 List!43069)) (IndentationValue!7064 (value!215381 List!43069)) (String!49037) (Int32!7064) (Broken!35321 (value!215382 List!43069)) (Boolean!7065) (Unit!61969) (OperatorValue!7067 (op!7124 List!43069)) (IdentifierValue!14128 (value!215383 List!43069)) (IdentifierValue!14129 (value!215384 List!43069)) (WhitespaceValue!14129 (value!215385 List!43069)) (True!14128) (False!14128) (Broken!35322 (value!215386 List!43069)) (Broken!35323 (value!215387 List!43069)) (True!14129) (RightBrace!7064) (RightBracket!7064) (Colon!7064) (Null!7064) (Comma!7064) (LeftBracket!7064) (False!14129) (LeftBrace!7064) (ImaginaryLiteralValue!7064 (text!49894 List!43069)) (StringLiteralValue!21192 (value!215388 List!43069)) (EOFValue!7064 (value!215389 List!43069)) (IdentValue!7064 (value!215390 List!43069)) (DelimiterValue!14129 (value!215391 List!43069)) (DedentValue!7064 (value!215392 List!43069)) (NewLineValue!7064 (value!215393 List!43069)) (IntegerValue!21192 (value!215394 (_ BitVec 32)) (text!49895 List!43069)) (IntegerValue!21193 (value!215395 Int) (text!49896 List!43069)) (Times!7064) (Or!7064) (Equal!7064) (Minus!7064) (Broken!35324 (value!215396 List!43069)) (And!7064) (Div!7064) (LessEqual!7064) (Mod!7064) (Concat!18803) (Not!7064) (Plus!7064) (SpaceValue!7064 (value!215397 List!43069)) (IntegerValue!21194 (value!215398 Int) (text!49897 List!43069)) (StringLiteralValue!21193 (text!49898 List!43069)) (FloatLiteralValue!14129 (text!49899 List!43069)) (BytesLiteralValue!7064 (value!215399 List!43069)) (CommentValue!14129 (value!215400 List!43069)) (StringLiteralValue!21194 (value!215401 List!43069)) (ErrorTokenValue!7064 (msg!7125 List!43069)) )
))
(declare-datatypes ((Regex!11739 0))(
  ( (ElementMatch!11739 (c!693563 C!23664)) (Concat!18804 (regOne!23990 Regex!11739) (regTwo!23990 Regex!11739)) (EmptyExpr!11739) (Star!11739 (reg!12068 Regex!11739)) (EmptyLang!11739) (Union!11739 (regOne!23991 Regex!11739) (regTwo!23991 Regex!11739)) )
))
(declare-datatypes ((String!49038 0))(
  ( (String!49039 (value!215402 String)) )
))
(declare-datatypes ((TokenValueInjection!13556 0))(
  ( (TokenValueInjection!13557 (toValue!9338 Int) (toChars!9197 Int)) )
))
(declare-datatypes ((Rule!13468 0))(
  ( (Rule!13469 (regex!6834 Regex!11739) (tag!7694 String!49038) (isSeparator!6834 Bool) (transformation!6834 TokenValueInjection!13556)) )
))
(declare-datatypes ((Token!12806 0))(
  ( (Token!12807 (value!215403 TokenValue!7064) (rule!9878 Rule!13468) (size!32109 Int) (originalCharacters!7434 List!43068)) )
))
(declare-fun token!484 () Token!12806)

(declare-fun b!4011749 () Bool)

(declare-fun e!2488118 () Bool)

(declare-fun e!2488123 () Bool)

(declare-fun tp!1220434 () Bool)

(declare-fun inv!21 (TokenValue!7064) Bool)

(assert (=> b!4011749 (= e!2488123 (and (inv!21 (value!215403 token!484)) e!2488118 tp!1220434))))

(declare-fun b!4011750 () Bool)

(declare-fun e!2488127 () Bool)

(declare-fun tp_is_empty!20449 () Bool)

(declare-fun tp!1220444 () Bool)

(assert (=> b!4011750 (= e!2488127 (and tp_is_empty!20449 tp!1220444))))

(declare-fun b!4011751 () Bool)

(declare-fun res!1630895 () Bool)

(declare-fun e!2488111 () Bool)

(assert (=> b!4011751 (=> (not res!1630895) (not e!2488111))))

(declare-datatypes ((List!43070 0))(
  ( (Nil!42946) (Cons!42946 (h!48366 Rule!13468) (t!333001 List!43070)) )
))
(declare-fun rules!2999 () List!43070)

(declare-fun isEmpty!25650 (List!43070) Bool)

(assert (=> b!4011751 (= res!1630895 (not (isEmpty!25650 rules!2999)))))

(declare-fun b!4011752 () Bool)

(declare-fun e!2488124 () Bool)

(declare-fun e!2488105 () Bool)

(declare-fun tp!1220432 () Bool)

(assert (=> b!4011752 (= e!2488124 (and e!2488105 tp!1220432))))

(declare-fun b!4011753 () Bool)

(declare-fun e!2488120 () Bool)

(assert (=> b!4011753 (= e!2488102 e!2488120)))

(declare-fun res!1630894 () Bool)

(assert (=> b!4011753 (=> (not res!1630894) (not e!2488120))))

(declare-fun lt!1421016 () List!43068)

(declare-datatypes ((LexerInterface!6423 0))(
  ( (LexerInterfaceExt!6420 (__x!26346 Int)) (Lexer!6421) )
))
(declare-fun thiss!21717 () LexerInterface!6423)

(declare-datatypes ((tuple2!42090 0))(
  ( (tuple2!42091 (_1!24179 Token!12806) (_2!24179 List!43068)) )
))
(declare-datatypes ((Option!9248 0))(
  ( (None!9247) (Some!9247 (v!39615 tuple2!42090)) )
))
(declare-fun lt!1421019 () Option!9248)

(declare-fun maxPrefix!3721 (LexerInterface!6423 List!43070 List!43068) Option!9248)

(assert (=> b!4011753 (= res!1630894 (= (maxPrefix!3721 thiss!21717 rules!2999 lt!1421016) lt!1421019))))

(declare-fun lt!1421038 () tuple2!42090)

(assert (=> b!4011753 (= lt!1421019 (Some!9247 lt!1421038))))

(declare-fun suffixResult!105 () List!43068)

(assert (=> b!4011753 (= lt!1421038 (tuple2!42091 token!484 suffixResult!105))))

(declare-fun suffix!1299 () List!43068)

(assert (=> b!4011753 (= lt!1421016 (++!11236 prefix!494 suffix!1299))))

(declare-fun b!4011754 () Bool)

(declare-fun e!2488113 () Bool)

(declare-fun e!2488109 () Bool)

(assert (=> b!4011754 (= e!2488113 e!2488109)))

(declare-fun res!1630883 () Bool)

(assert (=> b!4011754 (=> res!1630883 e!2488109)))

(declare-fun lt!1421036 () Option!9248)

(assert (=> b!4011754 (= res!1630883 (not (= lt!1421036 lt!1421019)))))

(declare-fun lt!1421053 () Token!12806)

(assert (=> b!4011754 (= lt!1421036 (Some!9247 (tuple2!42091 lt!1421053 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2741 (LexerInterface!6423 Rule!13468 List!43068) Option!9248)

(assert (=> b!4011754 (= lt!1421036 (maxPrefixOneRule!2741 thiss!21717 (rule!9878 token!484) lt!1421016))))

(declare-fun lt!1421034 () TokenValue!7064)

(declare-fun lt!1421029 () Int)

(assert (=> b!4011754 (= lt!1421053 (Token!12807 lt!1421034 (rule!9878 token!484) lt!1421029 lt!1421037))))

(declare-fun apply!10031 (TokenValueInjection!13556 BalanceConc!25684) TokenValue!7064)

(declare-fun seqFromList!5059 (List!43068) BalanceConc!25684)

(assert (=> b!4011754 (= lt!1421034 (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 lt!1421037)))))

(declare-datatypes ((Unit!61970 0))(
  ( (Unit!61971) )
))
(declare-fun lt!1421033 () Unit!61970)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1559 (LexerInterface!6423 List!43070 List!43068 List!43068 List!43068 Rule!13468) Unit!61970)

(assert (=> b!4011754 (= lt!1421033 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1559 thiss!21717 rules!2999 lt!1421037 lt!1421016 suffixResult!105 (rule!9878 token!484)))))

(declare-fun lt!1421061 () List!43068)

(assert (=> b!4011754 (= lt!1421061 suffixResult!105)))

(declare-fun lt!1421021 () Unit!61970)

(declare-fun lemmaSamePrefixThenSameSuffix!2092 (List!43068 List!43068 List!43068 List!43068 List!43068) Unit!61970)

(assert (=> b!4011754 (= lt!1421021 (lemmaSamePrefixThenSameSuffix!2092 lt!1421037 lt!1421061 lt!1421037 suffixResult!105 lt!1421016))))

(declare-fun lt!1421043 () List!43068)

(declare-fun isPrefix!3921 (List!43068 List!43068) Bool)

(assert (=> b!4011754 (isPrefix!3921 lt!1421037 lt!1421043)))

(declare-fun lt!1421040 () Unit!61970)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2762 (List!43068 List!43068) Unit!61970)

(assert (=> b!4011754 (= lt!1421040 (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 lt!1421061))))

(declare-fun res!1630889 () Bool)

(assert (=> start!377796 (=> (not res!1630889) (not e!2488111))))

(get-info :version)

(assert (=> start!377796 (= res!1630889 ((_ is Lexer!6421) thiss!21717))))

(assert (=> start!377796 e!2488111))

(declare-fun e!2488114 () Bool)

(assert (=> start!377796 e!2488114))

(declare-fun inv!57359 (Token!12806) Bool)

(assert (=> start!377796 (and (inv!57359 token!484) e!2488123)))

(declare-fun e!2488098 () Bool)

(assert (=> start!377796 e!2488098))

(declare-fun e!2488103 () Bool)

(assert (=> start!377796 e!2488103))

(declare-fun e!2488125 () Bool)

(assert (=> start!377796 e!2488125))

(assert (=> start!377796 true))

(assert (=> start!377796 e!2488124))

(assert (=> start!377796 e!2488127))

(declare-fun b!4011755 () Bool)

(declare-fun e!2488122 () Bool)

(assert (=> b!4011755 (= e!2488122 (and (= (size!32109 token!484) lt!1421029) (= (originalCharacters!7434 token!484) lt!1421037)))))

(declare-fun b!4011756 () Bool)

(declare-fun e!2488126 () Bool)

(declare-fun e!2488106 () Bool)

(assert (=> b!4011756 (= e!2488126 e!2488106)))

(declare-fun res!1630887 () Bool)

(assert (=> b!4011756 (=> res!1630887 e!2488106)))

(assert (=> b!4011756 (= res!1630887 (not (isPrefix!3921 lt!1421037 lt!1421016)))))

(assert (=> b!4011756 (isPrefix!3921 prefix!494 lt!1421016)))

(declare-fun lt!1421055 () Unit!61970)

(assert (=> b!4011756 (= lt!1421055 (lemmaConcatTwoListThenFirstIsPrefix!2762 prefix!494 suffix!1299))))

(declare-fun lt!1421060 () List!43068)

(assert (=> b!4011756 (isPrefix!3921 lt!1421037 lt!1421060)))

(declare-fun lt!1421048 () Unit!61970)

(assert (=> b!4011756 (= lt!1421048 (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 suffixResult!105))))

(declare-fun b!4011757 () Bool)

(declare-fun e!2488117 () Bool)

(declare-fun e!2488099 () Bool)

(assert (=> b!4011757 (= e!2488117 e!2488099)))

(declare-fun res!1630886 () Bool)

(assert (=> b!4011757 (=> res!1630886 e!2488099)))

(declare-fun lt!1421035 () List!43068)

(assert (=> b!4011757 (= res!1630886 (not (= lt!1421035 lt!1421016)))))

(declare-fun lt!1421039 () List!43068)

(assert (=> b!4011757 (= lt!1421035 (++!11236 prefix!494 lt!1421039))))

(declare-fun lt!1421018 () List!43068)

(assert (=> b!4011757 (= lt!1421035 (++!11236 lt!1421025 lt!1421018))))

(declare-fun lt!1421041 () Unit!61970)

(declare-fun lemmaConcatAssociativity!2546 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> b!4011757 (= lt!1421041 (lemmaConcatAssociativity!2546 prefix!494 newSuffix!27 lt!1421018))))

(declare-fun b!4011758 () Bool)

(assert (=> b!4011758 (= e!2488099 e!2488115)))

(declare-fun res!1630903 () Bool)

(assert (=> b!4011758 (=> res!1630903 e!2488115)))

(declare-fun lt!1421058 () List!43068)

(assert (=> b!4011758 (= res!1630903 (not (isPrefix!3921 lt!1421058 lt!1421016)))))

(assert (=> b!4011758 (isPrefix!3921 lt!1421058 lt!1421035)))

(declare-fun lt!1421065 () Unit!61970)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!734 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> b!4011758 (= lt!1421065 (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421058 lt!1421025 lt!1421018))))

(declare-fun b!4011759 () Bool)

(declare-fun res!1630888 () Bool)

(assert (=> b!4011759 (=> (not res!1630888) (not e!2488111))))

(assert (=> b!4011759 (= res!1630888 (isPrefix!3921 newSuffix!27 suffix!1299))))

(declare-fun b!4011760 () Bool)

(assert (=> b!4011760 (= e!2488120 (not e!2488126))))

(declare-fun res!1630882 () Bool)

(assert (=> b!4011760 (=> res!1630882 e!2488126)))

(assert (=> b!4011760 (= res!1630882 (not (= lt!1421060 lt!1421016)))))

(assert (=> b!4011760 (= lt!1421060 (++!11236 lt!1421037 suffixResult!105))))

(declare-fun lt!1421022 () Unit!61970)

(declare-fun lemmaInv!1049 (TokenValueInjection!13556) Unit!61970)

(assert (=> b!4011760 (= lt!1421022 (lemmaInv!1049 (transformation!6834 (rule!9878 token!484))))))

(declare-fun ruleValid!2766 (LexerInterface!6423 Rule!13468) Bool)

(assert (=> b!4011760 (ruleValid!2766 thiss!21717 (rule!9878 token!484))))

(declare-fun lt!1421046 () Unit!61970)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1840 (LexerInterface!6423 Rule!13468 List!43070) Unit!61970)

(assert (=> b!4011760 (= lt!1421046 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1840 thiss!21717 (rule!9878 token!484) rules!2999))))

(declare-fun b!4011761 () Bool)

(declare-fun e!2488107 () Bool)

(declare-fun e!2488110 () Bool)

(assert (=> b!4011761 (= e!2488107 e!2488110)))

(declare-fun res!1630881 () Bool)

(assert (=> b!4011761 (=> res!1630881 e!2488110)))

(declare-fun lt!1421049 () Option!9248)

(declare-fun lt!1421042 () Option!9248)

(assert (=> b!4011761 (= res!1630881 (not (= lt!1421049 (Some!9247 (v!39615 lt!1421042)))))))

(assert (=> b!4011761 (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 newSuffixResult!27))))

(declare-fun lt!1421031 () Unit!61970)

(assert (=> b!4011761 (= lt!1421031 (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421058 newSuffixResult!27))))

(assert (=> b!4011761 (isPrefix!3921 lt!1421058 lt!1421057)))

(assert (=> b!4011761 (= lt!1421057 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))

(declare-fun lt!1421051 () Unit!61970)

(assert (=> b!4011761 (= lt!1421051 (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))

(declare-fun lt!1421026 () TokenValue!7064)

(declare-fun lt!1421028 () Int)

(assert (=> b!4011761 (= lt!1421049 (Some!9247 (tuple2!42091 (Token!12807 lt!1421026 (rule!9878 (_1!24179 (v!39615 lt!1421042))) lt!1421028 lt!1421058) (_2!24179 (v!39615 lt!1421042)))))))

(assert (=> b!4011761 (= lt!1421049 (maxPrefixOneRule!2741 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) lt!1421025))))

(declare-fun size!32110 (List!43068) Int)

(assert (=> b!4011761 (= lt!1421028 (size!32110 lt!1421058))))

(assert (=> b!4011761 (= lt!1421026 (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 lt!1421058)))))

(declare-fun lt!1421063 () Unit!61970)

(assert (=> b!4011761 (= lt!1421063 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1559 thiss!21717 rules!2999 lt!1421058 lt!1421025 (_2!24179 (v!39615 lt!1421042)) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun list!15960 (BalanceConc!25684) List!43068)

(declare-fun charsOf!4650 (Token!12806) BalanceConc!25684)

(assert (=> b!4011761 (= lt!1421058 (list!15960 (charsOf!4650 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun lt!1421059 () Unit!61970)

(assert (=> b!4011761 (= lt!1421059 (lemmaInv!1049 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> b!4011761 (ruleValid!2766 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))

(declare-fun lt!1421050 () Unit!61970)

(assert (=> b!4011761 (= lt!1421050 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1840 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) rules!2999))))

(declare-fun lt!1421064 () Unit!61970)

(declare-fun lemmaCharactersSize!1393 (Token!12806) Unit!61970)

(assert (=> b!4011761 (= lt!1421064 (lemmaCharactersSize!1393 token!484))))

(declare-fun lt!1421015 () Unit!61970)

(assert (=> b!4011761 (= lt!1421015 (lemmaCharactersSize!1393 (_1!24179 (v!39615 lt!1421042))))))

(declare-fun b!4011762 () Bool)

(declare-fun res!1630890 () Bool)

(assert (=> b!4011762 (=> (not res!1630890) (not e!2488111))))

(assert (=> b!4011762 (= res!1630890 (>= (size!32110 suffix!1299) (size!32110 newSuffix!27)))))

(declare-fun b!4011763 () Bool)

(declare-fun tp!1220441 () Bool)

(assert (=> b!4011763 (= e!2488125 (and tp_is_empty!20449 tp!1220441))))

(declare-fun b!4011764 () Bool)

(declare-fun tp!1220435 () Bool)

(assert (=> b!4011764 (= e!2488114 (and tp_is_empty!20449 tp!1220435))))

(declare-fun b!4011765 () Bool)

(assert (=> b!4011765 (= e!2488110 e!2488117)))

(declare-fun res!1630902 () Bool)

(assert (=> b!4011765 (=> res!1630902 e!2488117)))

(assert (=> b!4011765 (= res!1630902 (not (= lt!1421039 suffix!1299)))))

(assert (=> b!4011765 (= lt!1421039 (++!11236 newSuffix!27 lt!1421018))))

(declare-fun getSuffix!2346 (List!43068 List!43068) List!43068)

(assert (=> b!4011765 (= lt!1421018 (getSuffix!2346 suffix!1299 newSuffix!27))))

(declare-fun b!4011766 () Bool)

(declare-fun res!1630898 () Bool)

(assert (=> b!4011766 (=> (not res!1630898) (not e!2488122))))

(assert (=> b!4011766 (= res!1630898 (= (value!215403 token!484) lt!1421034))))

(declare-fun b!4011767 () Bool)

(declare-fun tp!1220436 () Bool)

(assert (=> b!4011767 (= e!2488098 (and tp_is_empty!20449 tp!1220436))))

(declare-fun e!2488128 () Bool)

(assert (=> b!4011768 (= e!2488128 (and tp!1220443 tp!1220437))))

(declare-fun b!4011769 () Bool)

(assert (=> b!4011769 (= e!2488111 e!2488108)))

(declare-fun res!1630884 () Bool)

(assert (=> b!4011769 (=> (not res!1630884) (not e!2488108))))

(declare-fun lt!1421062 () Int)

(assert (=> b!4011769 (= res!1630884 (>= lt!1421062 lt!1421029))))

(assert (=> b!4011769 (= lt!1421029 (size!32110 lt!1421037))))

(assert (=> b!4011769 (= lt!1421062 (size!32110 prefix!494))))

(assert (=> b!4011769 (= lt!1421037 (list!15960 (charsOf!4650 token!484)))))

(declare-fun e!2488101 () Bool)

(declare-fun tp!1220442 () Bool)

(declare-fun b!4011770 () Bool)

(declare-fun inv!57356 (String!49038) Bool)

(declare-fun inv!57360 (TokenValueInjection!13556) Bool)

(assert (=> b!4011770 (= e!2488105 (and tp!1220442 (inv!57356 (tag!7694 (h!48366 rules!2999))) (inv!57360 (transformation!6834 (h!48366 rules!2999))) e!2488101))))

(declare-fun b!4011771 () Bool)

(declare-fun res!1630892 () Bool)

(assert (=> b!4011771 (=> (not res!1630892) (not e!2488111))))

(declare-fun rulesInvariant!5766 (LexerInterface!6423 List!43070) Bool)

(assert (=> b!4011771 (= res!1630892 (rulesInvariant!5766 thiss!21717 rules!2999))))

(declare-fun b!4011772 () Bool)

(declare-fun res!1630897 () Bool)

(assert (=> b!4011772 (=> (not res!1630897) (not e!2488122))))

(assert (=> b!4011772 (= res!1630897 (= (size!32109 token!484) (size!32110 (originalCharacters!7434 token!484))))))

(declare-fun b!4011773 () Bool)

(declare-fun e!2488104 () Bool)

(assert (=> b!4011773 (= e!2488106 e!2488104)))

(declare-fun res!1630885 () Bool)

(assert (=> b!4011773 (=> res!1630885 e!2488104)))

(declare-fun lt!1421030 () List!43068)

(assert (=> b!4011773 (= res!1630885 (not (= lt!1421030 prefix!494)))))

(declare-fun lt!1421023 () List!43068)

(assert (=> b!4011773 (= lt!1421030 (++!11236 lt!1421037 lt!1421023))))

(assert (=> b!4011773 (= lt!1421023 (getSuffix!2346 prefix!494 lt!1421037))))

(assert (=> b!4011773 (isPrefix!3921 lt!1421037 prefix!494)))

(declare-fun lt!1421056 () Unit!61970)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!493 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> b!4011773 (= lt!1421056 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!493 prefix!494 lt!1421037 lt!1421016))))

(declare-fun b!4011774 () Bool)

(assert (=> b!4011774 (= e!2488104 e!2488113)))

(declare-fun res!1630893 () Bool)

(assert (=> b!4011774 (=> res!1630893 e!2488113)))

(declare-fun lt!1421017 () List!43068)

(assert (=> b!4011774 (= res!1630893 (or (not (= lt!1421016 lt!1421017)) (not (= lt!1421016 lt!1421043))))))

(assert (=> b!4011774 (= lt!1421017 lt!1421043)))

(assert (=> b!4011774 (= lt!1421043 (++!11236 lt!1421037 lt!1421061))))

(assert (=> b!4011774 (= lt!1421017 (++!11236 lt!1421030 suffix!1299))))

(assert (=> b!4011774 (= lt!1421061 (++!11236 lt!1421023 suffix!1299))))

(declare-fun lt!1421044 () Unit!61970)

(assert (=> b!4011774 (= lt!1421044 (lemmaConcatAssociativity!2546 lt!1421037 lt!1421023 suffix!1299))))

(declare-fun b!4011775 () Bool)

(declare-fun tp!1220433 () Bool)

(assert (=> b!4011775 (= e!2488118 (and tp!1220433 (inv!57356 (tag!7694 (rule!9878 token!484))) (inv!57360 (transformation!6834 (rule!9878 token!484))) e!2488128))))

(declare-fun b!4011776 () Bool)

(declare-fun e!2488100 () Bool)

(assert (=> b!4011776 (= e!2488109 e!2488100)))

(declare-fun res!1630891 () Bool)

(assert (=> b!4011776 (=> res!1630891 e!2488100)))

(declare-fun matchR!5700 (Regex!11739 List!43068) Bool)

(assert (=> b!4011776 (= res!1630891 (not (matchR!5700 (regex!6834 (rule!9878 token!484)) lt!1421037)))))

(assert (=> b!4011776 (isPrefix!3921 lt!1421037 lt!1421025)))

(declare-fun lt!1421047 () Unit!61970)

(assert (=> b!4011776 (= lt!1421047 (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421037 prefix!494 newSuffix!27))))

(declare-fun lt!1421027 () Unit!61970)

(assert (=> b!4011776 (= lt!1421027 (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421037 prefix!494 suffix!1299))))

(assert (=> b!4011777 (= e!2488101 (and tp!1220440 tp!1220439))))

(declare-fun b!4011778 () Bool)

(declare-fun tp!1220438 () Bool)

(assert (=> b!4011778 (= e!2488103 (and tp_is_empty!20449 tp!1220438))))

(declare-fun b!4011779 () Bool)

(declare-fun e!2488119 () Bool)

(assert (=> b!4011779 (= e!2488100 e!2488119)))

(declare-fun res!1630896 () Bool)

(assert (=> b!4011779 (=> res!1630896 e!2488119)))

(declare-fun lt!1421052 () List!43068)

(assert (=> b!4011779 (= res!1630896 (not (= lt!1421052 lt!1421016)))))

(declare-fun lt!1421045 () List!43068)

(assert (=> b!4011779 (= lt!1421052 (++!11236 lt!1421037 lt!1421045))))

(assert (=> b!4011779 (= lt!1421045 (getSuffix!2346 lt!1421016 lt!1421037))))

(assert (=> b!4011779 e!2488122))

(declare-fun res!1630900 () Bool)

(assert (=> b!4011779 (=> (not res!1630900) (not e!2488122))))

(assert (=> b!4011779 (= res!1630900 (isPrefix!3921 lt!1421016 lt!1421016))))

(declare-fun lt!1421024 () Unit!61970)

(declare-fun lemmaIsPrefixRefl!2497 (List!43068 List!43068) Unit!61970)

(assert (=> b!4011779 (= lt!1421024 (lemmaIsPrefixRefl!2497 lt!1421016 lt!1421016))))

(declare-fun b!4011780 () Bool)

(assert (=> b!4011780 (= e!2488119 e!2488107)))

(declare-fun res!1630899 () Bool)

(assert (=> b!4011780 (=> res!1630899 e!2488107)))

(assert (=> b!4011780 (= res!1630899 (not ((_ is Some!9247) lt!1421042)))))

(assert (=> b!4011780 (= lt!1421042 (maxPrefix!3721 thiss!21717 rules!2999 lt!1421025))))

(assert (=> b!4011780 (and (= suffixResult!105 lt!1421045) (= lt!1421038 (tuple2!42091 lt!1421053 lt!1421045)))))

(declare-fun lt!1421032 () Unit!61970)

(assert (=> b!4011780 (= lt!1421032 (lemmaSamePrefixThenSameSuffix!2092 lt!1421037 suffixResult!105 lt!1421037 lt!1421045 lt!1421016))))

(assert (=> b!4011780 (isPrefix!3921 lt!1421037 lt!1421052)))

(declare-fun lt!1421054 () Unit!61970)

(assert (=> b!4011780 (= lt!1421054 (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 lt!1421045))))

(assert (= (and start!377796 res!1630889) b!4011751))

(assert (= (and b!4011751 res!1630895) b!4011771))

(assert (= (and b!4011771 res!1630892) b!4011762))

(assert (= (and b!4011762 res!1630890) b!4011759))

(assert (= (and b!4011759 res!1630888) b!4011769))

(assert (= (and b!4011769 res!1630884) b!4011748))

(assert (= (and b!4011748 res!1630901) b!4011753))

(assert (= (and b!4011753 res!1630894) b!4011760))

(assert (= (and b!4011760 (not res!1630882)) b!4011756))

(assert (= (and b!4011756 (not res!1630887)) b!4011773))

(assert (= (and b!4011773 (not res!1630885)) b!4011774))

(assert (= (and b!4011774 (not res!1630893)) b!4011754))

(assert (= (and b!4011754 (not res!1630883)) b!4011776))

(assert (= (and b!4011776 (not res!1630891)) b!4011779))

(assert (= (and b!4011779 res!1630900) b!4011766))

(assert (= (and b!4011766 res!1630898) b!4011772))

(assert (= (and b!4011772 res!1630897) b!4011755))

(assert (= (and b!4011779 (not res!1630896)) b!4011780))

(assert (= (and b!4011780 (not res!1630899)) b!4011761))

(assert (= (and b!4011761 (not res!1630881)) b!4011765))

(assert (= (and b!4011765 (not res!1630902)) b!4011757))

(assert (= (and b!4011757 (not res!1630886)) b!4011758))

(assert (= (and b!4011758 (not res!1630903)) b!4011747))

(assert (= (and start!377796 ((_ is Cons!42944) prefix!494)) b!4011764))

(assert (= b!4011775 b!4011768))

(assert (= b!4011749 b!4011775))

(assert (= start!377796 b!4011749))

(assert (= (and start!377796 ((_ is Cons!42944) suffixResult!105)) b!4011767))

(assert (= (and start!377796 ((_ is Cons!42944) suffix!1299)) b!4011778))

(assert (= (and start!377796 ((_ is Cons!42944) newSuffix!27)) b!4011763))

(assert (= b!4011770 b!4011777))

(assert (= b!4011752 b!4011770))

(assert (= (and start!377796 ((_ is Cons!42946) rules!2999)) b!4011752))

(assert (= (and start!377796 ((_ is Cons!42944) newSuffixResult!27)) b!4011750))

(declare-fun m!4597385 () Bool)

(assert (=> b!4011759 m!4597385))

(declare-fun m!4597387 () Bool)

(assert (=> start!377796 m!4597387))

(declare-fun m!4597389 () Bool)

(assert (=> b!4011771 m!4597389))

(declare-fun m!4597391 () Bool)

(assert (=> b!4011757 m!4597391))

(declare-fun m!4597393 () Bool)

(assert (=> b!4011757 m!4597393))

(declare-fun m!4597395 () Bool)

(assert (=> b!4011757 m!4597395))

(declare-fun m!4597397 () Bool)

(assert (=> b!4011770 m!4597397))

(declare-fun m!4597399 () Bool)

(assert (=> b!4011770 m!4597399))

(declare-fun m!4597401 () Bool)

(assert (=> b!4011765 m!4597401))

(declare-fun m!4597403 () Bool)

(assert (=> b!4011765 m!4597403))

(declare-fun m!4597405 () Bool)

(assert (=> b!4011760 m!4597405))

(declare-fun m!4597407 () Bool)

(assert (=> b!4011760 m!4597407))

(declare-fun m!4597409 () Bool)

(assert (=> b!4011760 m!4597409))

(declare-fun m!4597411 () Bool)

(assert (=> b!4011760 m!4597411))

(declare-fun m!4597413 () Bool)

(assert (=> b!4011779 m!4597413))

(declare-fun m!4597415 () Bool)

(assert (=> b!4011779 m!4597415))

(declare-fun m!4597417 () Bool)

(assert (=> b!4011779 m!4597417))

(declare-fun m!4597419 () Bool)

(assert (=> b!4011779 m!4597419))

(declare-fun m!4597421 () Bool)

(assert (=> b!4011769 m!4597421))

(declare-fun m!4597423 () Bool)

(assert (=> b!4011769 m!4597423))

(declare-fun m!4597425 () Bool)

(assert (=> b!4011769 m!4597425))

(assert (=> b!4011769 m!4597425))

(declare-fun m!4597427 () Bool)

(assert (=> b!4011769 m!4597427))

(declare-fun m!4597429 () Bool)

(assert (=> b!4011761 m!4597429))

(declare-fun m!4597431 () Bool)

(assert (=> b!4011761 m!4597431))

(declare-fun m!4597433 () Bool)

(assert (=> b!4011761 m!4597433))

(declare-fun m!4597435 () Bool)

(assert (=> b!4011761 m!4597435))

(declare-fun m!4597437 () Bool)

(assert (=> b!4011761 m!4597437))

(assert (=> b!4011761 m!4597435))

(declare-fun m!4597439 () Bool)

(assert (=> b!4011761 m!4597439))

(declare-fun m!4597441 () Bool)

(assert (=> b!4011761 m!4597441))

(declare-fun m!4597443 () Bool)

(assert (=> b!4011761 m!4597443))

(declare-fun m!4597445 () Bool)

(assert (=> b!4011761 m!4597445))

(declare-fun m!4597447 () Bool)

(assert (=> b!4011761 m!4597447))

(declare-fun m!4597449 () Bool)

(assert (=> b!4011761 m!4597449))

(declare-fun m!4597451 () Bool)

(assert (=> b!4011761 m!4597451))

(declare-fun m!4597453 () Bool)

(assert (=> b!4011761 m!4597453))

(declare-fun m!4597455 () Bool)

(assert (=> b!4011761 m!4597455))

(declare-fun m!4597457 () Bool)

(assert (=> b!4011761 m!4597457))

(declare-fun m!4597459 () Bool)

(assert (=> b!4011761 m!4597459))

(declare-fun m!4597461 () Bool)

(assert (=> b!4011761 m!4597461))

(assert (=> b!4011761 m!4597447))

(assert (=> b!4011761 m!4597443))

(declare-fun m!4597463 () Bool)

(assert (=> b!4011761 m!4597463))

(declare-fun m!4597465 () Bool)

(assert (=> b!4011754 m!4597465))

(declare-fun m!4597467 () Bool)

(assert (=> b!4011754 m!4597467))

(declare-fun m!4597469 () Bool)

(assert (=> b!4011754 m!4597469))

(assert (=> b!4011754 m!4597469))

(declare-fun m!4597471 () Bool)

(assert (=> b!4011754 m!4597471))

(declare-fun m!4597473 () Bool)

(assert (=> b!4011754 m!4597473))

(declare-fun m!4597475 () Bool)

(assert (=> b!4011754 m!4597475))

(declare-fun m!4597477 () Bool)

(assert (=> b!4011754 m!4597477))

(declare-fun m!4597479 () Bool)

(assert (=> b!4011753 m!4597479))

(declare-fun m!4597481 () Bool)

(assert (=> b!4011753 m!4597481))

(declare-fun m!4597483 () Bool)

(assert (=> b!4011749 m!4597483))

(declare-fun m!4597485 () Bool)

(assert (=> b!4011751 m!4597485))

(declare-fun m!4597487 () Bool)

(assert (=> b!4011772 m!4597487))

(declare-fun m!4597489 () Bool)

(assert (=> b!4011774 m!4597489))

(declare-fun m!4597491 () Bool)

(assert (=> b!4011774 m!4597491))

(declare-fun m!4597493 () Bool)

(assert (=> b!4011774 m!4597493))

(declare-fun m!4597495 () Bool)

(assert (=> b!4011774 m!4597495))

(declare-fun m!4597497 () Bool)

(assert (=> b!4011780 m!4597497))

(declare-fun m!4597499 () Bool)

(assert (=> b!4011780 m!4597499))

(declare-fun m!4597501 () Bool)

(assert (=> b!4011780 m!4597501))

(declare-fun m!4597503 () Bool)

(assert (=> b!4011780 m!4597503))

(declare-fun m!4597505 () Bool)

(assert (=> b!4011758 m!4597505))

(declare-fun m!4597507 () Bool)

(assert (=> b!4011758 m!4597507))

(declare-fun m!4597509 () Bool)

(assert (=> b!4011758 m!4597509))

(declare-fun m!4597511 () Bool)

(assert (=> b!4011748 m!4597511))

(declare-fun m!4597513 () Bool)

(assert (=> b!4011748 m!4597513))

(declare-fun m!4597515 () Bool)

(assert (=> b!4011775 m!4597515))

(declare-fun m!4597517 () Bool)

(assert (=> b!4011775 m!4597517))

(declare-fun m!4597519 () Bool)

(assert (=> b!4011756 m!4597519))

(declare-fun m!4597521 () Bool)

(assert (=> b!4011756 m!4597521))

(declare-fun m!4597523 () Bool)

(assert (=> b!4011756 m!4597523))

(declare-fun m!4597525 () Bool)

(assert (=> b!4011756 m!4597525))

(declare-fun m!4597527 () Bool)

(assert (=> b!4011756 m!4597527))

(declare-fun m!4597529 () Bool)

(assert (=> b!4011773 m!4597529))

(declare-fun m!4597531 () Bool)

(assert (=> b!4011773 m!4597531))

(declare-fun m!4597533 () Bool)

(assert (=> b!4011773 m!4597533))

(declare-fun m!4597535 () Bool)

(assert (=> b!4011773 m!4597535))

(declare-fun m!4597537 () Bool)

(assert (=> b!4011776 m!4597537))

(declare-fun m!4597539 () Bool)

(assert (=> b!4011776 m!4597539))

(declare-fun m!4597541 () Bool)

(assert (=> b!4011776 m!4597541))

(declare-fun m!4597543 () Bool)

(assert (=> b!4011776 m!4597543))

(declare-fun m!4597545 () Bool)

(assert (=> b!4011762 m!4597545))

(declare-fun m!4597547 () Bool)

(assert (=> b!4011762 m!4597547))

(check-sat (not b!4011762) (not b!4011757) (not start!377796) (not b!4011767) (not b!4011764) (not b_next!112319) b_and!308185 (not b!4011773) (not b!4011751) tp_is_empty!20449 (not b!4011770) (not b!4011759) (not b!4011765) (not b_next!112315) (not b!4011774) b_and!308187 (not b!4011763) (not b!4011769) (not b!4011749) b_and!308189 (not b!4011754) (not b_next!112313) (not b!4011772) (not b_next!112317) (not b!4011750) (not b!4011748) (not b!4011771) (not b!4011778) b_and!308183 (not b!4011752) (not b!4011776) (not b!4011775) (not b!4011761) (not b!4011780) (not b!4011753) (not b!4011756) (not b!4011760) (not b!4011758) (not b!4011779))
(check-sat b_and!308187 b_and!308189 (not b_next!112313) (not b_next!112319) (not b_next!112317) b_and!308185 b_and!308183 (not b_next!112315))
(get-model)

(declare-fun b!4011903 () Bool)

(declare-fun e!2488195 () List!43068)

(assert (=> b!4011903 (= e!2488195 lt!1421039)))

(declare-fun lt!1421116 () List!43068)

(declare-fun e!2488194 () Bool)

(declare-fun b!4011906 () Bool)

(assert (=> b!4011906 (= e!2488194 (or (not (= lt!1421039 Nil!42944)) (= lt!1421116 prefix!494)))))

(declare-fun b!4011904 () Bool)

(assert (=> b!4011904 (= e!2488195 (Cons!42944 (h!48364 prefix!494) (++!11236 (t!332999 prefix!494) lt!1421039)))))

(declare-fun b!4011905 () Bool)

(declare-fun res!1630988 () Bool)

(assert (=> b!4011905 (=> (not res!1630988) (not e!2488194))))

(assert (=> b!4011905 (= res!1630988 (= (size!32110 lt!1421116) (+ (size!32110 prefix!494) (size!32110 lt!1421039))))))

(declare-fun d!1187370 () Bool)

(assert (=> d!1187370 e!2488194))

(declare-fun res!1630987 () Bool)

(assert (=> d!1187370 (=> (not res!1630987) (not e!2488194))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6512 (List!43068) (InoxSet C!23664))

(assert (=> d!1187370 (= res!1630987 (= (content!6512 lt!1421116) ((_ map or) (content!6512 prefix!494) (content!6512 lt!1421039))))))

(assert (=> d!1187370 (= lt!1421116 e!2488195)))

(declare-fun c!693585 () Bool)

(assert (=> d!1187370 (= c!693585 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187370 (= (++!11236 prefix!494 lt!1421039) lt!1421116)))

(assert (= (and d!1187370 c!693585) b!4011903))

(assert (= (and d!1187370 (not c!693585)) b!4011904))

(assert (= (and d!1187370 res!1630987) b!4011905))

(assert (= (and b!4011905 res!1630988) b!4011906))

(declare-fun m!4597741 () Bool)

(assert (=> b!4011904 m!4597741))

(declare-fun m!4597743 () Bool)

(assert (=> b!4011905 m!4597743))

(assert (=> b!4011905 m!4597423))

(declare-fun m!4597745 () Bool)

(assert (=> b!4011905 m!4597745))

(declare-fun m!4597747 () Bool)

(assert (=> d!1187370 m!4597747))

(declare-fun m!4597751 () Bool)

(assert (=> d!1187370 m!4597751))

(declare-fun m!4597753 () Bool)

(assert (=> d!1187370 m!4597753))

(assert (=> b!4011757 d!1187370))

(declare-fun b!4011919 () Bool)

(declare-fun e!2488203 () List!43068)

(assert (=> b!4011919 (= e!2488203 lt!1421018)))

(declare-fun e!2488202 () Bool)

(declare-fun lt!1421121 () List!43068)

(declare-fun b!4011922 () Bool)

(assert (=> b!4011922 (= e!2488202 (or (not (= lt!1421018 Nil!42944)) (= lt!1421121 lt!1421025)))))

(declare-fun b!4011920 () Bool)

(assert (=> b!4011920 (= e!2488203 (Cons!42944 (h!48364 lt!1421025) (++!11236 (t!332999 lt!1421025) lt!1421018)))))

(declare-fun b!4011921 () Bool)

(declare-fun res!1630996 () Bool)

(assert (=> b!4011921 (=> (not res!1630996) (not e!2488202))))

(assert (=> b!4011921 (= res!1630996 (= (size!32110 lt!1421121) (+ (size!32110 lt!1421025) (size!32110 lt!1421018))))))

(declare-fun d!1187392 () Bool)

(assert (=> d!1187392 e!2488202))

(declare-fun res!1630995 () Bool)

(assert (=> d!1187392 (=> (not res!1630995) (not e!2488202))))

(assert (=> d!1187392 (= res!1630995 (= (content!6512 lt!1421121) ((_ map or) (content!6512 lt!1421025) (content!6512 lt!1421018))))))

(assert (=> d!1187392 (= lt!1421121 e!2488203)))

(declare-fun c!693589 () Bool)

(assert (=> d!1187392 (= c!693589 ((_ is Nil!42944) lt!1421025))))

(assert (=> d!1187392 (= (++!11236 lt!1421025 lt!1421018) lt!1421121)))

(assert (= (and d!1187392 c!693589) b!4011919))

(assert (= (and d!1187392 (not c!693589)) b!4011920))

(assert (= (and d!1187392 res!1630995) b!4011921))

(assert (= (and b!4011921 res!1630996) b!4011922))

(declare-fun m!4597777 () Bool)

(assert (=> b!4011920 m!4597777))

(declare-fun m!4597779 () Bool)

(assert (=> b!4011921 m!4597779))

(declare-fun m!4597781 () Bool)

(assert (=> b!4011921 m!4597781))

(declare-fun m!4597783 () Bool)

(assert (=> b!4011921 m!4597783))

(declare-fun m!4597785 () Bool)

(assert (=> d!1187392 m!4597785))

(declare-fun m!4597787 () Bool)

(assert (=> d!1187392 m!4597787))

(declare-fun m!4597789 () Bool)

(assert (=> d!1187392 m!4597789))

(assert (=> b!4011757 d!1187392))

(declare-fun d!1187400 () Bool)

(assert (=> d!1187400 (= (++!11236 (++!11236 prefix!494 newSuffix!27) lt!1421018) (++!11236 prefix!494 (++!11236 newSuffix!27 lt!1421018)))))

(declare-fun lt!1421129 () Unit!61970)

(declare-fun choose!24240 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> d!1187400 (= lt!1421129 (choose!24240 prefix!494 newSuffix!27 lt!1421018))))

(assert (=> d!1187400 (= (lemmaConcatAssociativity!2546 prefix!494 newSuffix!27 lt!1421018) lt!1421129)))

(declare-fun bs!589373 () Bool)

(assert (= bs!589373 d!1187400))

(assert (=> bs!589373 m!4597401))

(assert (=> bs!589373 m!4597401))

(declare-fun m!4597805 () Bool)

(assert (=> bs!589373 m!4597805))

(assert (=> bs!589373 m!4597511))

(assert (=> bs!589373 m!4597511))

(declare-fun m!4597807 () Bool)

(assert (=> bs!589373 m!4597807))

(declare-fun m!4597809 () Bool)

(assert (=> bs!589373 m!4597809))

(assert (=> b!4011757 d!1187400))

(declare-fun b!4011929 () Bool)

(declare-fun e!2488209 () List!43068)

(assert (=> b!4011929 (= e!2488209 lt!1421045)))

(declare-fun lt!1421131 () List!43068)

(declare-fun e!2488208 () Bool)

(declare-fun b!4011932 () Bool)

(assert (=> b!4011932 (= e!2488208 (or (not (= lt!1421045 Nil!42944)) (= lt!1421131 lt!1421037)))))

(declare-fun b!4011930 () Bool)

(assert (=> b!4011930 (= e!2488209 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) lt!1421045)))))

(declare-fun b!4011931 () Bool)

(declare-fun res!1631002 () Bool)

(assert (=> b!4011931 (=> (not res!1631002) (not e!2488208))))

(assert (=> b!4011931 (= res!1631002 (= (size!32110 lt!1421131) (+ (size!32110 lt!1421037) (size!32110 lt!1421045))))))

(declare-fun d!1187414 () Bool)

(assert (=> d!1187414 e!2488208))

(declare-fun res!1631001 () Bool)

(assert (=> d!1187414 (=> (not res!1631001) (not e!2488208))))

(assert (=> d!1187414 (= res!1631001 (= (content!6512 lt!1421131) ((_ map or) (content!6512 lt!1421037) (content!6512 lt!1421045))))))

(assert (=> d!1187414 (= lt!1421131 e!2488209)))

(declare-fun c!693591 () Bool)

(assert (=> d!1187414 (= c!693591 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187414 (= (++!11236 lt!1421037 lt!1421045) lt!1421131)))

(assert (= (and d!1187414 c!693591) b!4011929))

(assert (= (and d!1187414 (not c!693591)) b!4011930))

(assert (= (and d!1187414 res!1631001) b!4011931))

(assert (= (and b!4011931 res!1631002) b!4011932))

(declare-fun m!4597811 () Bool)

(assert (=> b!4011930 m!4597811))

(declare-fun m!4597813 () Bool)

(assert (=> b!4011931 m!4597813))

(assert (=> b!4011931 m!4597421))

(declare-fun m!4597815 () Bool)

(assert (=> b!4011931 m!4597815))

(declare-fun m!4597817 () Bool)

(assert (=> d!1187414 m!4597817))

(declare-fun m!4597819 () Bool)

(assert (=> d!1187414 m!4597819))

(declare-fun m!4597821 () Bool)

(assert (=> d!1187414 m!4597821))

(assert (=> b!4011779 d!1187414))

(declare-fun d!1187416 () Bool)

(declare-fun lt!1421134 () List!43068)

(assert (=> d!1187416 (= (++!11236 lt!1421037 lt!1421134) lt!1421016)))

(declare-fun e!2488212 () List!43068)

(assert (=> d!1187416 (= lt!1421134 e!2488212)))

(declare-fun c!693594 () Bool)

(assert (=> d!1187416 (= c!693594 ((_ is Cons!42944) lt!1421037))))

(assert (=> d!1187416 (>= (size!32110 lt!1421016) (size!32110 lt!1421037))))

(assert (=> d!1187416 (= (getSuffix!2346 lt!1421016 lt!1421037) lt!1421134)))

(declare-fun b!4011937 () Bool)

(declare-fun tail!6251 (List!43068) List!43068)

(assert (=> b!4011937 (= e!2488212 (getSuffix!2346 (tail!6251 lt!1421016) (t!332999 lt!1421037)))))

(declare-fun b!4011938 () Bool)

(assert (=> b!4011938 (= e!2488212 lt!1421016)))

(assert (= (and d!1187416 c!693594) b!4011937))

(assert (= (and d!1187416 (not c!693594)) b!4011938))

(declare-fun m!4597823 () Bool)

(assert (=> d!1187416 m!4597823))

(declare-fun m!4597825 () Bool)

(assert (=> d!1187416 m!4597825))

(assert (=> d!1187416 m!4597421))

(declare-fun m!4597827 () Bool)

(assert (=> b!4011937 m!4597827))

(assert (=> b!4011937 m!4597827))

(declare-fun m!4597829 () Bool)

(assert (=> b!4011937 m!4597829))

(assert (=> b!4011779 d!1187416))

(declare-fun d!1187418 () Bool)

(declare-fun e!2488221 () Bool)

(assert (=> d!1187418 e!2488221))

(declare-fun res!1631013 () Bool)

(assert (=> d!1187418 (=> res!1631013 e!2488221)))

(declare-fun lt!1421137 () Bool)

(assert (=> d!1187418 (= res!1631013 (not lt!1421137))))

(declare-fun e!2488219 () Bool)

(assert (=> d!1187418 (= lt!1421137 e!2488219)))

(declare-fun res!1631011 () Bool)

(assert (=> d!1187418 (=> res!1631011 e!2488219)))

(assert (=> d!1187418 (= res!1631011 ((_ is Nil!42944) lt!1421016))))

(assert (=> d!1187418 (= (isPrefix!3921 lt!1421016 lt!1421016) lt!1421137)))

(declare-fun b!4011948 () Bool)

(declare-fun res!1631014 () Bool)

(declare-fun e!2488220 () Bool)

(assert (=> b!4011948 (=> (not res!1631014) (not e!2488220))))

(declare-fun head!8519 (List!43068) C!23664)

(assert (=> b!4011948 (= res!1631014 (= (head!8519 lt!1421016) (head!8519 lt!1421016)))))

(declare-fun b!4011949 () Bool)

(assert (=> b!4011949 (= e!2488220 (isPrefix!3921 (tail!6251 lt!1421016) (tail!6251 lt!1421016)))))

(declare-fun b!4011947 () Bool)

(assert (=> b!4011947 (= e!2488219 e!2488220)))

(declare-fun res!1631012 () Bool)

(assert (=> b!4011947 (=> (not res!1631012) (not e!2488220))))

(assert (=> b!4011947 (= res!1631012 (not ((_ is Nil!42944) lt!1421016)))))

(declare-fun b!4011950 () Bool)

(assert (=> b!4011950 (= e!2488221 (>= (size!32110 lt!1421016) (size!32110 lt!1421016)))))

(assert (= (and d!1187418 (not res!1631011)) b!4011947))

(assert (= (and b!4011947 res!1631012) b!4011948))

(assert (= (and b!4011948 res!1631014) b!4011949))

(assert (= (and d!1187418 (not res!1631013)) b!4011950))

(declare-fun m!4597831 () Bool)

(assert (=> b!4011948 m!4597831))

(assert (=> b!4011948 m!4597831))

(assert (=> b!4011949 m!4597827))

(assert (=> b!4011949 m!4597827))

(assert (=> b!4011949 m!4597827))

(assert (=> b!4011949 m!4597827))

(declare-fun m!4597833 () Bool)

(assert (=> b!4011949 m!4597833))

(assert (=> b!4011950 m!4597825))

(assert (=> b!4011950 m!4597825))

(assert (=> b!4011779 d!1187418))

(declare-fun d!1187420 () Bool)

(assert (=> d!1187420 (isPrefix!3921 lt!1421016 lt!1421016)))

(declare-fun lt!1421140 () Unit!61970)

(declare-fun choose!24241 (List!43068 List!43068) Unit!61970)

(assert (=> d!1187420 (= lt!1421140 (choose!24241 lt!1421016 lt!1421016))))

(assert (=> d!1187420 (= (lemmaIsPrefixRefl!2497 lt!1421016 lt!1421016) lt!1421140)))

(declare-fun bs!589374 () Bool)

(assert (= bs!589374 d!1187420))

(assert (=> bs!589374 m!4597417))

(declare-fun m!4597835 () Bool)

(assert (=> bs!589374 m!4597835))

(assert (=> b!4011779 d!1187420))

(declare-fun d!1187422 () Bool)

(declare-fun e!2488224 () Bool)

(assert (=> d!1187422 e!2488224))

(declare-fun res!1631017 () Bool)

(assert (=> d!1187422 (=> res!1631017 e!2488224)))

(declare-fun lt!1421141 () Bool)

(assert (=> d!1187422 (= res!1631017 (not lt!1421141))))

(declare-fun e!2488222 () Bool)

(assert (=> d!1187422 (= lt!1421141 e!2488222)))

(declare-fun res!1631015 () Bool)

(assert (=> d!1187422 (=> res!1631015 e!2488222)))

(assert (=> d!1187422 (= res!1631015 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187422 (= (isPrefix!3921 lt!1421037 lt!1421016) lt!1421141)))

(declare-fun b!4011952 () Bool)

(declare-fun res!1631018 () Bool)

(declare-fun e!2488223 () Bool)

(assert (=> b!4011952 (=> (not res!1631018) (not e!2488223))))

(assert (=> b!4011952 (= res!1631018 (= (head!8519 lt!1421037) (head!8519 lt!1421016)))))

(declare-fun b!4011953 () Bool)

(assert (=> b!4011953 (= e!2488223 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421016)))))

(declare-fun b!4011951 () Bool)

(assert (=> b!4011951 (= e!2488222 e!2488223)))

(declare-fun res!1631016 () Bool)

(assert (=> b!4011951 (=> (not res!1631016) (not e!2488223))))

(assert (=> b!4011951 (= res!1631016 (not ((_ is Nil!42944) lt!1421016)))))

(declare-fun b!4011954 () Bool)

(assert (=> b!4011954 (= e!2488224 (>= (size!32110 lt!1421016) (size!32110 lt!1421037)))))

(assert (= (and d!1187422 (not res!1631015)) b!4011951))

(assert (= (and b!4011951 res!1631016) b!4011952))

(assert (= (and b!4011952 res!1631018) b!4011953))

(assert (= (and d!1187422 (not res!1631017)) b!4011954))

(declare-fun m!4597837 () Bool)

(assert (=> b!4011952 m!4597837))

(assert (=> b!4011952 m!4597831))

(declare-fun m!4597839 () Bool)

(assert (=> b!4011953 m!4597839))

(assert (=> b!4011953 m!4597827))

(assert (=> b!4011953 m!4597839))

(assert (=> b!4011953 m!4597827))

(declare-fun m!4597841 () Bool)

(assert (=> b!4011953 m!4597841))

(assert (=> b!4011954 m!4597825))

(assert (=> b!4011954 m!4597421))

(assert (=> b!4011756 d!1187422))

(declare-fun d!1187424 () Bool)

(assert (=> d!1187424 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 suffixResult!105))))

(declare-fun lt!1421144 () Unit!61970)

(declare-fun choose!24242 (List!43068 List!43068) Unit!61970)

(assert (=> d!1187424 (= lt!1421144 (choose!24242 lt!1421037 suffixResult!105))))

(assert (=> d!1187424 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 suffixResult!105) lt!1421144)))

(declare-fun bs!589375 () Bool)

(assert (= bs!589375 d!1187424))

(assert (=> bs!589375 m!4597405))

(assert (=> bs!589375 m!4597405))

(declare-fun m!4597843 () Bool)

(assert (=> bs!589375 m!4597843))

(declare-fun m!4597845 () Bool)

(assert (=> bs!589375 m!4597845))

(assert (=> b!4011756 d!1187424))

(declare-fun d!1187426 () Bool)

(declare-fun e!2488227 () Bool)

(assert (=> d!1187426 e!2488227))

(declare-fun res!1631021 () Bool)

(assert (=> d!1187426 (=> res!1631021 e!2488227)))

(declare-fun lt!1421145 () Bool)

(assert (=> d!1187426 (= res!1631021 (not lt!1421145))))

(declare-fun e!2488225 () Bool)

(assert (=> d!1187426 (= lt!1421145 e!2488225)))

(declare-fun res!1631019 () Bool)

(assert (=> d!1187426 (=> res!1631019 e!2488225)))

(assert (=> d!1187426 (= res!1631019 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187426 (= (isPrefix!3921 lt!1421037 lt!1421060) lt!1421145)))

(declare-fun b!4011956 () Bool)

(declare-fun res!1631022 () Bool)

(declare-fun e!2488226 () Bool)

(assert (=> b!4011956 (=> (not res!1631022) (not e!2488226))))

(assert (=> b!4011956 (= res!1631022 (= (head!8519 lt!1421037) (head!8519 lt!1421060)))))

(declare-fun b!4011957 () Bool)

(assert (=> b!4011957 (= e!2488226 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421060)))))

(declare-fun b!4011955 () Bool)

(assert (=> b!4011955 (= e!2488225 e!2488226)))

(declare-fun res!1631020 () Bool)

(assert (=> b!4011955 (=> (not res!1631020) (not e!2488226))))

(assert (=> b!4011955 (= res!1631020 (not ((_ is Nil!42944) lt!1421060)))))

(declare-fun b!4011958 () Bool)

(assert (=> b!4011958 (= e!2488227 (>= (size!32110 lt!1421060) (size!32110 lt!1421037)))))

(assert (= (and d!1187426 (not res!1631019)) b!4011955))

(assert (= (and b!4011955 res!1631020) b!4011956))

(assert (= (and b!4011956 res!1631022) b!4011957))

(assert (= (and d!1187426 (not res!1631021)) b!4011958))

(assert (=> b!4011956 m!4597837))

(declare-fun m!4597847 () Bool)

(assert (=> b!4011956 m!4597847))

(assert (=> b!4011957 m!4597839))

(declare-fun m!4597849 () Bool)

(assert (=> b!4011957 m!4597849))

(assert (=> b!4011957 m!4597839))

(assert (=> b!4011957 m!4597849))

(declare-fun m!4597851 () Bool)

(assert (=> b!4011957 m!4597851))

(declare-fun m!4597853 () Bool)

(assert (=> b!4011958 m!4597853))

(assert (=> b!4011958 m!4597421))

(assert (=> b!4011756 d!1187426))

(declare-fun d!1187428 () Bool)

(declare-fun e!2488230 () Bool)

(assert (=> d!1187428 e!2488230))

(declare-fun res!1631025 () Bool)

(assert (=> d!1187428 (=> res!1631025 e!2488230)))

(declare-fun lt!1421146 () Bool)

(assert (=> d!1187428 (= res!1631025 (not lt!1421146))))

(declare-fun e!2488228 () Bool)

(assert (=> d!1187428 (= lt!1421146 e!2488228)))

(declare-fun res!1631023 () Bool)

(assert (=> d!1187428 (=> res!1631023 e!2488228)))

(assert (=> d!1187428 (= res!1631023 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187428 (= (isPrefix!3921 prefix!494 lt!1421016) lt!1421146)))

(declare-fun b!4011960 () Bool)

(declare-fun res!1631026 () Bool)

(declare-fun e!2488229 () Bool)

(assert (=> b!4011960 (=> (not res!1631026) (not e!2488229))))

(assert (=> b!4011960 (= res!1631026 (= (head!8519 prefix!494) (head!8519 lt!1421016)))))

(declare-fun b!4011961 () Bool)

(assert (=> b!4011961 (= e!2488229 (isPrefix!3921 (tail!6251 prefix!494) (tail!6251 lt!1421016)))))

(declare-fun b!4011959 () Bool)

(assert (=> b!4011959 (= e!2488228 e!2488229)))

(declare-fun res!1631024 () Bool)

(assert (=> b!4011959 (=> (not res!1631024) (not e!2488229))))

(assert (=> b!4011959 (= res!1631024 (not ((_ is Nil!42944) lt!1421016)))))

(declare-fun b!4011962 () Bool)

(assert (=> b!4011962 (= e!2488230 (>= (size!32110 lt!1421016) (size!32110 prefix!494)))))

(assert (= (and d!1187428 (not res!1631023)) b!4011959))

(assert (= (and b!4011959 res!1631024) b!4011960))

(assert (= (and b!4011960 res!1631026) b!4011961))

(assert (= (and d!1187428 (not res!1631025)) b!4011962))

(declare-fun m!4597855 () Bool)

(assert (=> b!4011960 m!4597855))

(assert (=> b!4011960 m!4597831))

(declare-fun m!4597857 () Bool)

(assert (=> b!4011961 m!4597857))

(assert (=> b!4011961 m!4597827))

(assert (=> b!4011961 m!4597857))

(assert (=> b!4011961 m!4597827))

(declare-fun m!4597859 () Bool)

(assert (=> b!4011961 m!4597859))

(assert (=> b!4011962 m!4597825))

(assert (=> b!4011962 m!4597423))

(assert (=> b!4011756 d!1187428))

(declare-fun d!1187430 () Bool)

(assert (=> d!1187430 (isPrefix!3921 prefix!494 (++!11236 prefix!494 suffix!1299))))

(declare-fun lt!1421147 () Unit!61970)

(assert (=> d!1187430 (= lt!1421147 (choose!24242 prefix!494 suffix!1299))))

(assert (=> d!1187430 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 prefix!494 suffix!1299) lt!1421147)))

(declare-fun bs!589376 () Bool)

(assert (= bs!589376 d!1187430))

(assert (=> bs!589376 m!4597481))

(assert (=> bs!589376 m!4597481))

(declare-fun m!4597861 () Bool)

(assert (=> bs!589376 m!4597861))

(declare-fun m!4597863 () Bool)

(assert (=> bs!589376 m!4597863))

(assert (=> b!4011756 d!1187430))

(declare-fun b!4011963 () Bool)

(declare-fun e!2488232 () List!43068)

(assert (=> b!4011963 (= e!2488232 suffixResult!105)))

(declare-fun e!2488231 () Bool)

(declare-fun lt!1421148 () List!43068)

(declare-fun b!4011966 () Bool)

(assert (=> b!4011966 (= e!2488231 (or (not (= suffixResult!105 Nil!42944)) (= lt!1421148 lt!1421037)))))

(declare-fun b!4011964 () Bool)

(assert (=> b!4011964 (= e!2488232 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) suffixResult!105)))))

(declare-fun b!4011965 () Bool)

(declare-fun res!1631028 () Bool)

(assert (=> b!4011965 (=> (not res!1631028) (not e!2488231))))

(assert (=> b!4011965 (= res!1631028 (= (size!32110 lt!1421148) (+ (size!32110 lt!1421037) (size!32110 suffixResult!105))))))

(declare-fun d!1187432 () Bool)

(assert (=> d!1187432 e!2488231))

(declare-fun res!1631027 () Bool)

(assert (=> d!1187432 (=> (not res!1631027) (not e!2488231))))

(assert (=> d!1187432 (= res!1631027 (= (content!6512 lt!1421148) ((_ map or) (content!6512 lt!1421037) (content!6512 suffixResult!105))))))

(assert (=> d!1187432 (= lt!1421148 e!2488232)))

(declare-fun c!693595 () Bool)

(assert (=> d!1187432 (= c!693595 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187432 (= (++!11236 lt!1421037 suffixResult!105) lt!1421148)))

(assert (= (and d!1187432 c!693595) b!4011963))

(assert (= (and d!1187432 (not c!693595)) b!4011964))

(assert (= (and d!1187432 res!1631027) b!4011965))

(assert (= (and b!4011965 res!1631028) b!4011966))

(declare-fun m!4597865 () Bool)

(assert (=> b!4011964 m!4597865))

(declare-fun m!4597867 () Bool)

(assert (=> b!4011965 m!4597867))

(assert (=> b!4011965 m!4597421))

(declare-fun m!4597869 () Bool)

(assert (=> b!4011965 m!4597869))

(declare-fun m!4597871 () Bool)

(assert (=> d!1187432 m!4597871))

(assert (=> d!1187432 m!4597819))

(declare-fun m!4597873 () Bool)

(assert (=> d!1187432 m!4597873))

(assert (=> b!4011760 d!1187432))

(declare-fun d!1187434 () Bool)

(declare-fun e!2488235 () Bool)

(assert (=> d!1187434 e!2488235))

(declare-fun res!1631031 () Bool)

(assert (=> d!1187434 (=> (not res!1631031) (not e!2488235))))

(declare-fun semiInverseModEq!2925 (Int Int) Bool)

(assert (=> d!1187434 (= res!1631031 (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))))))

(declare-fun Unit!61975 () Unit!61970)

(assert (=> d!1187434 (= (lemmaInv!1049 (transformation!6834 (rule!9878 token!484))) Unit!61975)))

(declare-fun b!4011969 () Bool)

(declare-fun equivClasses!2824 (Int Int) Bool)

(assert (=> b!4011969 (= e!2488235 (equivClasses!2824 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))))))

(assert (= (and d!1187434 res!1631031) b!4011969))

(declare-fun m!4597875 () Bool)

(assert (=> d!1187434 m!4597875))

(declare-fun m!4597877 () Bool)

(assert (=> b!4011969 m!4597877))

(assert (=> b!4011760 d!1187434))

(declare-fun d!1187436 () Bool)

(declare-fun res!1631036 () Bool)

(declare-fun e!2488238 () Bool)

(assert (=> d!1187436 (=> (not res!1631036) (not e!2488238))))

(declare-fun validRegex!5317 (Regex!11739) Bool)

(assert (=> d!1187436 (= res!1631036 (validRegex!5317 (regex!6834 (rule!9878 token!484))))))

(assert (=> d!1187436 (= (ruleValid!2766 thiss!21717 (rule!9878 token!484)) e!2488238)))

(declare-fun b!4011974 () Bool)

(declare-fun res!1631037 () Bool)

(assert (=> b!4011974 (=> (not res!1631037) (not e!2488238))))

(declare-fun nullable!4117 (Regex!11739) Bool)

(assert (=> b!4011974 (= res!1631037 (not (nullable!4117 (regex!6834 (rule!9878 token!484)))))))

(declare-fun b!4011975 () Bool)

(assert (=> b!4011975 (= e!2488238 (not (= (tag!7694 (rule!9878 token!484)) (String!49039 ""))))))

(assert (= (and d!1187436 res!1631036) b!4011974))

(assert (= (and b!4011974 res!1631037) b!4011975))

(declare-fun m!4597879 () Bool)

(assert (=> d!1187436 m!4597879))

(declare-fun m!4597881 () Bool)

(assert (=> b!4011974 m!4597881))

(assert (=> b!4011760 d!1187436))

(declare-fun d!1187438 () Bool)

(assert (=> d!1187438 (ruleValid!2766 thiss!21717 (rule!9878 token!484))))

(declare-fun lt!1421161 () Unit!61970)

(declare-fun choose!24243 (LexerInterface!6423 Rule!13468 List!43070) Unit!61970)

(assert (=> d!1187438 (= lt!1421161 (choose!24243 thiss!21717 (rule!9878 token!484) rules!2999))))

(declare-fun contains!8536 (List!43070 Rule!13468) Bool)

(assert (=> d!1187438 (contains!8536 rules!2999 (rule!9878 token!484))))

(assert (=> d!1187438 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1840 thiss!21717 (rule!9878 token!484) rules!2999) lt!1421161)))

(declare-fun bs!589377 () Bool)

(assert (= bs!589377 d!1187438))

(assert (=> bs!589377 m!4597409))

(declare-fun m!4597883 () Bool)

(assert (=> bs!589377 m!4597883))

(declare-fun m!4597885 () Bool)

(assert (=> bs!589377 m!4597885))

(assert (=> b!4011760 d!1187438))

(declare-fun d!1187440 () Bool)

(declare-fun e!2488249 () Bool)

(assert (=> d!1187440 e!2488249))

(declare-fun res!1631054 () Bool)

(assert (=> d!1187440 (=> res!1631054 e!2488249)))

(declare-fun lt!1421162 () Bool)

(assert (=> d!1187440 (= res!1631054 (not lt!1421162))))

(declare-fun e!2488247 () Bool)

(assert (=> d!1187440 (= lt!1421162 e!2488247)))

(declare-fun res!1631052 () Bool)

(assert (=> d!1187440 (=> res!1631052 e!2488247)))

(assert (=> d!1187440 (= res!1631052 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187440 (= (isPrefix!3921 lt!1421058 lt!1421016) lt!1421162)))

(declare-fun b!4011995 () Bool)

(declare-fun res!1631055 () Bool)

(declare-fun e!2488248 () Bool)

(assert (=> b!4011995 (=> (not res!1631055) (not e!2488248))))

(assert (=> b!4011995 (= res!1631055 (= (head!8519 lt!1421058) (head!8519 lt!1421016)))))

(declare-fun b!4011996 () Bool)

(assert (=> b!4011996 (= e!2488248 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421016)))))

(declare-fun b!4011994 () Bool)

(assert (=> b!4011994 (= e!2488247 e!2488248)))

(declare-fun res!1631053 () Bool)

(assert (=> b!4011994 (=> (not res!1631053) (not e!2488248))))

(assert (=> b!4011994 (= res!1631053 (not ((_ is Nil!42944) lt!1421016)))))

(declare-fun b!4011997 () Bool)

(assert (=> b!4011997 (= e!2488249 (>= (size!32110 lt!1421016) (size!32110 lt!1421058)))))

(assert (= (and d!1187440 (not res!1631052)) b!4011994))

(assert (= (and b!4011994 res!1631053) b!4011995))

(assert (= (and b!4011995 res!1631055) b!4011996))

(assert (= (and d!1187440 (not res!1631054)) b!4011997))

(declare-fun m!4597887 () Bool)

(assert (=> b!4011995 m!4597887))

(assert (=> b!4011995 m!4597831))

(declare-fun m!4597889 () Bool)

(assert (=> b!4011996 m!4597889))

(assert (=> b!4011996 m!4597827))

(assert (=> b!4011996 m!4597889))

(assert (=> b!4011996 m!4597827))

(declare-fun m!4597891 () Bool)

(assert (=> b!4011996 m!4597891))

(assert (=> b!4011997 m!4597825))

(assert (=> b!4011997 m!4597463))

(assert (=> b!4011758 d!1187440))

(declare-fun d!1187442 () Bool)

(declare-fun e!2488252 () Bool)

(assert (=> d!1187442 e!2488252))

(declare-fun res!1631058 () Bool)

(assert (=> d!1187442 (=> res!1631058 e!2488252)))

(declare-fun lt!1421163 () Bool)

(assert (=> d!1187442 (= res!1631058 (not lt!1421163))))

(declare-fun e!2488250 () Bool)

(assert (=> d!1187442 (= lt!1421163 e!2488250)))

(declare-fun res!1631056 () Bool)

(assert (=> d!1187442 (=> res!1631056 e!2488250)))

(assert (=> d!1187442 (= res!1631056 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187442 (= (isPrefix!3921 lt!1421058 lt!1421035) lt!1421163)))

(declare-fun b!4011999 () Bool)

(declare-fun res!1631059 () Bool)

(declare-fun e!2488251 () Bool)

(assert (=> b!4011999 (=> (not res!1631059) (not e!2488251))))

(assert (=> b!4011999 (= res!1631059 (= (head!8519 lt!1421058) (head!8519 lt!1421035)))))

(declare-fun b!4012000 () Bool)

(assert (=> b!4012000 (= e!2488251 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421035)))))

(declare-fun b!4011998 () Bool)

(assert (=> b!4011998 (= e!2488250 e!2488251)))

(declare-fun res!1631057 () Bool)

(assert (=> b!4011998 (=> (not res!1631057) (not e!2488251))))

(assert (=> b!4011998 (= res!1631057 (not ((_ is Nil!42944) lt!1421035)))))

(declare-fun b!4012001 () Bool)

(assert (=> b!4012001 (= e!2488252 (>= (size!32110 lt!1421035) (size!32110 lt!1421058)))))

(assert (= (and d!1187442 (not res!1631056)) b!4011998))

(assert (= (and b!4011998 res!1631057) b!4011999))

(assert (= (and b!4011999 res!1631059) b!4012000))

(assert (= (and d!1187442 (not res!1631058)) b!4012001))

(assert (=> b!4011999 m!4597887))

(declare-fun m!4597893 () Bool)

(assert (=> b!4011999 m!4597893))

(assert (=> b!4012000 m!4597889))

(declare-fun m!4597895 () Bool)

(assert (=> b!4012000 m!4597895))

(assert (=> b!4012000 m!4597889))

(assert (=> b!4012000 m!4597895))

(declare-fun m!4597897 () Bool)

(assert (=> b!4012000 m!4597897))

(declare-fun m!4597899 () Bool)

(assert (=> b!4012001 m!4597899))

(assert (=> b!4012001 m!4597463))

(assert (=> b!4011758 d!1187442))

(declare-fun d!1187444 () Bool)

(assert (=> d!1187444 (isPrefix!3921 lt!1421058 (++!11236 lt!1421025 lt!1421018))))

(declare-fun lt!1421166 () Unit!61970)

(declare-fun choose!24245 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> d!1187444 (= lt!1421166 (choose!24245 lt!1421058 lt!1421025 lt!1421018))))

(assert (=> d!1187444 (isPrefix!3921 lt!1421058 lt!1421025)))

(assert (=> d!1187444 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421058 lt!1421025 lt!1421018) lt!1421166)))

(declare-fun bs!589378 () Bool)

(assert (= bs!589378 d!1187444))

(assert (=> bs!589378 m!4597393))

(assert (=> bs!589378 m!4597393))

(declare-fun m!4597901 () Bool)

(assert (=> bs!589378 m!4597901))

(declare-fun m!4597903 () Bool)

(assert (=> bs!589378 m!4597903))

(declare-fun m!4597905 () Bool)

(assert (=> bs!589378 m!4597905))

(assert (=> b!4011758 d!1187444))

(declare-fun d!1187446 () Bool)

(declare-fun e!2488255 () Bool)

(assert (=> d!1187446 e!2488255))

(declare-fun res!1631062 () Bool)

(assert (=> d!1187446 (=> res!1631062 e!2488255)))

(declare-fun lt!1421167 () Bool)

(assert (=> d!1187446 (= res!1631062 (not lt!1421167))))

(declare-fun e!2488253 () Bool)

(assert (=> d!1187446 (= lt!1421167 e!2488253)))

(declare-fun res!1631060 () Bool)

(assert (=> d!1187446 (=> res!1631060 e!2488253)))

(assert (=> d!1187446 (= res!1631060 ((_ is Nil!42944) newSuffix!27))))

(assert (=> d!1187446 (= (isPrefix!3921 newSuffix!27 suffix!1299) lt!1421167)))

(declare-fun b!4012003 () Bool)

(declare-fun res!1631063 () Bool)

(declare-fun e!2488254 () Bool)

(assert (=> b!4012003 (=> (not res!1631063) (not e!2488254))))

(assert (=> b!4012003 (= res!1631063 (= (head!8519 newSuffix!27) (head!8519 suffix!1299)))))

(declare-fun b!4012004 () Bool)

(assert (=> b!4012004 (= e!2488254 (isPrefix!3921 (tail!6251 newSuffix!27) (tail!6251 suffix!1299)))))

(declare-fun b!4012002 () Bool)

(assert (=> b!4012002 (= e!2488253 e!2488254)))

(declare-fun res!1631061 () Bool)

(assert (=> b!4012002 (=> (not res!1631061) (not e!2488254))))

(assert (=> b!4012002 (= res!1631061 (not ((_ is Nil!42944) suffix!1299)))))

(declare-fun b!4012005 () Bool)

(assert (=> b!4012005 (= e!2488255 (>= (size!32110 suffix!1299) (size!32110 newSuffix!27)))))

(assert (= (and d!1187446 (not res!1631060)) b!4012002))

(assert (= (and b!4012002 res!1631061) b!4012003))

(assert (= (and b!4012003 res!1631063) b!4012004))

(assert (= (and d!1187446 (not res!1631062)) b!4012005))

(declare-fun m!4597907 () Bool)

(assert (=> b!4012003 m!4597907))

(declare-fun m!4597909 () Bool)

(assert (=> b!4012003 m!4597909))

(declare-fun m!4597911 () Bool)

(assert (=> b!4012004 m!4597911))

(declare-fun m!4597913 () Bool)

(assert (=> b!4012004 m!4597913))

(assert (=> b!4012004 m!4597911))

(assert (=> b!4012004 m!4597913))

(declare-fun m!4597915 () Bool)

(assert (=> b!4012004 m!4597915))

(assert (=> b!4012005 m!4597545))

(assert (=> b!4012005 m!4597547))

(assert (=> b!4011759 d!1187446))

(declare-fun b!4012063 () Bool)

(declare-fun res!1631109 () Bool)

(declare-fun e!2488288 () Bool)

(assert (=> b!4012063 (=> (not res!1631109) (not e!2488288))))

(declare-fun lt!1421199 () Option!9248)

(declare-fun get!14111 (Option!9248) tuple2!42090)

(assert (=> b!4012063 (= res!1631109 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199)))))))

(declare-fun b!4012064 () Bool)

(declare-fun res!1631111 () Bool)

(assert (=> b!4012064 (=> (not res!1631111) (not e!2488288))))

(assert (=> b!4012064 (= res!1631111 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))) (_2!24179 (get!14111 lt!1421199))) lt!1421025))))

(declare-fun b!4012065 () Bool)

(declare-fun res!1631108 () Bool)

(assert (=> b!4012065 (=> (not res!1631108) (not e!2488288))))

(assert (=> b!4012065 (= res!1631108 (< (size!32110 (_2!24179 (get!14111 lt!1421199))) (size!32110 lt!1421025)))))

(declare-fun b!4012066 () Bool)

(declare-fun res!1631112 () Bool)

(assert (=> b!4012066 (=> (not res!1631112) (not e!2488288))))

(assert (=> b!4012066 (= res!1631112 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun d!1187448 () Bool)

(declare-fun e!2488290 () Bool)

(assert (=> d!1187448 e!2488290))

(declare-fun res!1631107 () Bool)

(assert (=> d!1187448 (=> res!1631107 e!2488290)))

(declare-fun isEmpty!25653 (Option!9248) Bool)

(assert (=> d!1187448 (= res!1631107 (isEmpty!25653 lt!1421199))))

(declare-fun e!2488289 () Option!9248)

(assert (=> d!1187448 (= lt!1421199 e!2488289)))

(declare-fun c!693604 () Bool)

(assert (=> d!1187448 (= c!693604 (and ((_ is Cons!42946) rules!2999) ((_ is Nil!42946) (t!333001 rules!2999))))))

(declare-fun lt!1421200 () Unit!61970)

(declare-fun lt!1421203 () Unit!61970)

(assert (=> d!1187448 (= lt!1421200 lt!1421203)))

(assert (=> d!1187448 (isPrefix!3921 lt!1421025 lt!1421025)))

(assert (=> d!1187448 (= lt!1421203 (lemmaIsPrefixRefl!2497 lt!1421025 lt!1421025))))

(declare-fun rulesValidInductive!2491 (LexerInterface!6423 List!43070) Bool)

(assert (=> d!1187448 (rulesValidInductive!2491 thiss!21717 rules!2999)))

(assert (=> d!1187448 (= (maxPrefix!3721 thiss!21717 rules!2999 lt!1421025) lt!1421199)))

(declare-fun b!4012067 () Bool)

(declare-fun res!1631106 () Bool)

(assert (=> b!4012067 (=> (not res!1631106) (not e!2488288))))

(assert (=> b!4012067 (= res!1631106 (= (value!215403 (_1!24179 (get!14111 lt!1421199))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun b!4012068 () Bool)

(declare-fun call!286388 () Option!9248)

(assert (=> b!4012068 (= e!2488289 call!286388)))

(declare-fun b!4012069 () Bool)

(assert (=> b!4012069 (= e!2488288 (contains!8536 rules!2999 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))

(declare-fun b!4012070 () Bool)

(assert (=> b!4012070 (= e!2488290 e!2488288)))

(declare-fun res!1631110 () Bool)

(assert (=> b!4012070 (=> (not res!1631110) (not e!2488288))))

(declare-fun isDefined!7070 (Option!9248) Bool)

(assert (=> b!4012070 (= res!1631110 (isDefined!7070 lt!1421199))))

(declare-fun bm!286383 () Bool)

(assert (=> bm!286383 (= call!286388 (maxPrefixOneRule!2741 thiss!21717 (h!48366 rules!2999) lt!1421025))))

(declare-fun b!4012071 () Bool)

(declare-fun lt!1421201 () Option!9248)

(declare-fun lt!1421202 () Option!9248)

(assert (=> b!4012071 (= e!2488289 (ite (and ((_ is None!9247) lt!1421201) ((_ is None!9247) lt!1421202)) None!9247 (ite ((_ is None!9247) lt!1421202) lt!1421201 (ite ((_ is None!9247) lt!1421201) lt!1421202 (ite (>= (size!32109 (_1!24179 (v!39615 lt!1421201))) (size!32109 (_1!24179 (v!39615 lt!1421202)))) lt!1421201 lt!1421202)))))))

(assert (=> b!4012071 (= lt!1421201 call!286388)))

(assert (=> b!4012071 (= lt!1421202 (maxPrefix!3721 thiss!21717 (t!333001 rules!2999) lt!1421025))))

(assert (= (and d!1187448 c!693604) b!4012068))

(assert (= (and d!1187448 (not c!693604)) b!4012071))

(assert (= (or b!4012068 b!4012071) bm!286383))

(assert (= (and d!1187448 (not res!1631107)) b!4012070))

(assert (= (and b!4012070 res!1631110) b!4012063))

(assert (= (and b!4012063 res!1631109) b!4012065))

(assert (= (and b!4012065 res!1631108) b!4012064))

(assert (= (and b!4012064 res!1631111) b!4012067))

(assert (= (and b!4012067 res!1631106) b!4012066))

(assert (= (and b!4012066 res!1631112) b!4012069))

(declare-fun m!4598049 () Bool)

(assert (=> b!4012066 m!4598049))

(declare-fun m!4598051 () Bool)

(assert (=> b!4012066 m!4598051))

(assert (=> b!4012066 m!4598051))

(declare-fun m!4598053 () Bool)

(assert (=> b!4012066 m!4598053))

(assert (=> b!4012066 m!4598053))

(declare-fun m!4598055 () Bool)

(assert (=> b!4012066 m!4598055))

(assert (=> b!4012067 m!4598049))

(declare-fun m!4598057 () Bool)

(assert (=> b!4012067 m!4598057))

(assert (=> b!4012067 m!4598057))

(declare-fun m!4598059 () Bool)

(assert (=> b!4012067 m!4598059))

(declare-fun m!4598061 () Bool)

(assert (=> d!1187448 m!4598061))

(declare-fun m!4598063 () Bool)

(assert (=> d!1187448 m!4598063))

(declare-fun m!4598065 () Bool)

(assert (=> d!1187448 m!4598065))

(declare-fun m!4598067 () Bool)

(assert (=> d!1187448 m!4598067))

(declare-fun m!4598069 () Bool)

(assert (=> bm!286383 m!4598069))

(assert (=> b!4012064 m!4598049))

(assert (=> b!4012064 m!4598051))

(assert (=> b!4012064 m!4598051))

(assert (=> b!4012064 m!4598053))

(assert (=> b!4012064 m!4598053))

(declare-fun m!4598071 () Bool)

(assert (=> b!4012064 m!4598071))

(assert (=> b!4012069 m!4598049))

(declare-fun m!4598073 () Bool)

(assert (=> b!4012069 m!4598073))

(declare-fun m!4598075 () Bool)

(assert (=> b!4012070 m!4598075))

(assert (=> b!4012065 m!4598049))

(declare-fun m!4598077 () Bool)

(assert (=> b!4012065 m!4598077))

(assert (=> b!4012065 m!4597781))

(declare-fun m!4598079 () Bool)

(assert (=> b!4012071 m!4598079))

(assert (=> b!4012063 m!4598049))

(assert (=> b!4012063 m!4598051))

(assert (=> b!4012063 m!4598051))

(assert (=> b!4012063 m!4598053))

(assert (=> b!4011780 d!1187448))

(declare-fun d!1187488 () Bool)

(assert (=> d!1187488 (= suffixResult!105 lt!1421045)))

(declare-fun lt!1421214 () Unit!61970)

(declare-fun choose!24247 (List!43068 List!43068 List!43068 List!43068 List!43068) Unit!61970)

(assert (=> d!1187488 (= lt!1421214 (choose!24247 lt!1421037 suffixResult!105 lt!1421037 lt!1421045 lt!1421016))))

(assert (=> d!1187488 (isPrefix!3921 lt!1421037 lt!1421016)))

(assert (=> d!1187488 (= (lemmaSamePrefixThenSameSuffix!2092 lt!1421037 suffixResult!105 lt!1421037 lt!1421045 lt!1421016) lt!1421214)))

(declare-fun bs!589387 () Bool)

(assert (= bs!589387 d!1187488))

(declare-fun m!4598127 () Bool)

(assert (=> bs!589387 m!4598127))

(assert (=> bs!589387 m!4597525))

(assert (=> b!4011780 d!1187488))

(declare-fun d!1187498 () Bool)

(declare-fun e!2488301 () Bool)

(assert (=> d!1187498 e!2488301))

(declare-fun res!1631127 () Bool)

(assert (=> d!1187498 (=> res!1631127 e!2488301)))

(declare-fun lt!1421215 () Bool)

(assert (=> d!1187498 (= res!1631127 (not lt!1421215))))

(declare-fun e!2488299 () Bool)

(assert (=> d!1187498 (= lt!1421215 e!2488299)))

(declare-fun res!1631125 () Bool)

(assert (=> d!1187498 (=> res!1631125 e!2488299)))

(assert (=> d!1187498 (= res!1631125 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187498 (= (isPrefix!3921 lt!1421037 lt!1421052) lt!1421215)))

(declare-fun b!4012087 () Bool)

(declare-fun res!1631128 () Bool)

(declare-fun e!2488300 () Bool)

(assert (=> b!4012087 (=> (not res!1631128) (not e!2488300))))

(assert (=> b!4012087 (= res!1631128 (= (head!8519 lt!1421037) (head!8519 lt!1421052)))))

(declare-fun b!4012088 () Bool)

(assert (=> b!4012088 (= e!2488300 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421052)))))

(declare-fun b!4012086 () Bool)

(assert (=> b!4012086 (= e!2488299 e!2488300)))

(declare-fun res!1631126 () Bool)

(assert (=> b!4012086 (=> (not res!1631126) (not e!2488300))))

(assert (=> b!4012086 (= res!1631126 (not ((_ is Nil!42944) lt!1421052)))))

(declare-fun b!4012089 () Bool)

(assert (=> b!4012089 (= e!2488301 (>= (size!32110 lt!1421052) (size!32110 lt!1421037)))))

(assert (= (and d!1187498 (not res!1631125)) b!4012086))

(assert (= (and b!4012086 res!1631126) b!4012087))

(assert (= (and b!4012087 res!1631128) b!4012088))

(assert (= (and d!1187498 (not res!1631127)) b!4012089))

(assert (=> b!4012087 m!4597837))

(declare-fun m!4598129 () Bool)

(assert (=> b!4012087 m!4598129))

(assert (=> b!4012088 m!4597839))

(declare-fun m!4598131 () Bool)

(assert (=> b!4012088 m!4598131))

(assert (=> b!4012088 m!4597839))

(assert (=> b!4012088 m!4598131))

(declare-fun m!4598133 () Bool)

(assert (=> b!4012088 m!4598133))

(declare-fun m!4598135 () Bool)

(assert (=> b!4012089 m!4598135))

(assert (=> b!4012089 m!4597421))

(assert (=> b!4011780 d!1187498))

(declare-fun d!1187500 () Bool)

(assert (=> d!1187500 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421045))))

(declare-fun lt!1421216 () Unit!61970)

(assert (=> d!1187500 (= lt!1421216 (choose!24242 lt!1421037 lt!1421045))))

(assert (=> d!1187500 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 lt!1421045) lt!1421216)))

(declare-fun bs!589388 () Bool)

(assert (= bs!589388 d!1187500))

(assert (=> bs!589388 m!4597413))

(assert (=> bs!589388 m!4597413))

(declare-fun m!4598137 () Bool)

(assert (=> bs!589388 m!4598137))

(declare-fun m!4598139 () Bool)

(assert (=> bs!589388 m!4598139))

(assert (=> b!4011780 d!1187500))

(declare-fun d!1187502 () Bool)

(declare-fun lt!1421219 () Int)

(assert (=> d!1187502 (>= lt!1421219 0)))

(declare-fun e!2488310 () Int)

(assert (=> d!1187502 (= lt!1421219 e!2488310)))

(declare-fun c!693612 () Bool)

(assert (=> d!1187502 (= c!693612 ((_ is Nil!42944) suffix!1299))))

(assert (=> d!1187502 (= (size!32110 suffix!1299) lt!1421219)))

(declare-fun b!4012104 () Bool)

(assert (=> b!4012104 (= e!2488310 0)))

(declare-fun b!4012105 () Bool)

(assert (=> b!4012105 (= e!2488310 (+ 1 (size!32110 (t!332999 suffix!1299))))))

(assert (= (and d!1187502 c!693612) b!4012104))

(assert (= (and d!1187502 (not c!693612)) b!4012105))

(declare-fun m!4598141 () Bool)

(assert (=> b!4012105 m!4598141))

(assert (=> b!4011762 d!1187502))

(declare-fun d!1187504 () Bool)

(declare-fun lt!1421220 () Int)

(assert (=> d!1187504 (>= lt!1421220 0)))

(declare-fun e!2488311 () Int)

(assert (=> d!1187504 (= lt!1421220 e!2488311)))

(declare-fun c!693613 () Bool)

(assert (=> d!1187504 (= c!693613 ((_ is Nil!42944) newSuffix!27))))

(assert (=> d!1187504 (= (size!32110 newSuffix!27) lt!1421220)))

(declare-fun b!4012106 () Bool)

(assert (=> b!4012106 (= e!2488311 0)))

(declare-fun b!4012107 () Bool)

(assert (=> b!4012107 (= e!2488311 (+ 1 (size!32110 (t!332999 newSuffix!27))))))

(assert (= (and d!1187504 c!693613) b!4012106))

(assert (= (and d!1187504 (not c!693613)) b!4012107))

(declare-fun m!4598143 () Bool)

(assert (=> b!4012107 m!4598143))

(assert (=> b!4011762 d!1187504))

(declare-fun d!1187506 () Bool)

(declare-fun res!1631132 () Bool)

(declare-fun e!2488315 () Bool)

(assert (=> d!1187506 (=> (not res!1631132) (not e!2488315))))

(assert (=> d!1187506 (= res!1631132 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1187506 (= (ruleValid!2766 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) e!2488315)))

(declare-fun b!4012113 () Bool)

(declare-fun res!1631133 () Bool)

(assert (=> b!4012113 (=> (not res!1631133) (not e!2488315))))

(assert (=> b!4012113 (= res!1631133 (not (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun b!4012114 () Bool)

(assert (=> b!4012114 (= e!2488315 (not (= (tag!7694 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (String!49039 ""))))))

(assert (= (and d!1187506 res!1631132) b!4012113))

(assert (= (and b!4012113 res!1631133) b!4012114))

(declare-fun m!4598151 () Bool)

(assert (=> d!1187506 m!4598151))

(declare-fun m!4598153 () Bool)

(assert (=> b!4012113 m!4598153))

(assert (=> b!4011761 d!1187506))

(declare-fun d!1187510 () Bool)

(assert (=> d!1187510 (ruleValid!2766 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))

(declare-fun lt!1421221 () Unit!61970)

(assert (=> d!1187510 (= lt!1421221 (choose!24243 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) rules!2999))))

(assert (=> d!1187510 (contains!8536 rules!2999 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))

(assert (=> d!1187510 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1840 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) rules!2999) lt!1421221)))

(declare-fun bs!589389 () Bool)

(assert (= bs!589389 d!1187510))

(assert (=> bs!589389 m!4597437))

(declare-fun m!4598155 () Bool)

(assert (=> bs!589389 m!4598155))

(declare-fun m!4598157 () Bool)

(assert (=> bs!589389 m!4598157))

(assert (=> b!4011761 d!1187510))

(declare-fun d!1187512 () Bool)

(declare-fun e!2488316 () Bool)

(assert (=> d!1187512 e!2488316))

(declare-fun res!1631134 () Bool)

(assert (=> d!1187512 (=> (not res!1631134) (not e!2488316))))

(assert (=> d!1187512 (= res!1631134 (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun Unit!61976 () Unit!61970)

(assert (=> d!1187512 (= (lemmaInv!1049 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) Unit!61976)))

(declare-fun b!4012115 () Bool)

(assert (=> b!4012115 (= e!2488316 (equivClasses!2824 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(assert (= (and d!1187512 res!1631134) b!4012115))

(declare-fun m!4598159 () Bool)

(assert (=> d!1187512 m!4598159))

(declare-fun m!4598161 () Bool)

(assert (=> b!4012115 m!4598161))

(assert (=> b!4011761 d!1187512))

(declare-fun d!1187516 () Bool)

(declare-fun fromListB!2316 (List!43068) BalanceConc!25684)

(assert (=> d!1187516 (= (seqFromList!5059 lt!1421058) (fromListB!2316 lt!1421058))))

(declare-fun bs!589390 () Bool)

(assert (= bs!589390 d!1187516))

(declare-fun m!4598163 () Bool)

(assert (=> bs!589390 m!4598163))

(assert (=> b!4011761 d!1187516))

(declare-fun d!1187518 () Bool)

(declare-fun lt!1421222 () Int)

(assert (=> d!1187518 (>= lt!1421222 0)))

(declare-fun e!2488317 () Int)

(assert (=> d!1187518 (= lt!1421222 e!2488317)))

(declare-fun c!693616 () Bool)

(assert (=> d!1187518 (= c!693616 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187518 (= (size!32110 lt!1421058) lt!1421222)))

(declare-fun b!4012116 () Bool)

(assert (=> b!4012116 (= e!2488317 0)))

(declare-fun b!4012117 () Bool)

(assert (=> b!4012117 (= e!2488317 (+ 1 (size!32110 (t!332999 lt!1421058))))))

(assert (= (and d!1187518 c!693616) b!4012116))

(assert (= (and d!1187518 (not c!693616)) b!4012117))

(declare-fun m!4598165 () Bool)

(assert (=> b!4012117 m!4598165))

(assert (=> b!4011761 d!1187518))

(declare-fun d!1187520 () Bool)

(assert (=> d!1187520 (= (size!32109 token!484) (size!32110 (originalCharacters!7434 token!484)))))

(declare-fun Unit!61977 () Unit!61970)

(assert (=> d!1187520 (= (lemmaCharactersSize!1393 token!484) Unit!61977)))

(declare-fun bs!589391 () Bool)

(assert (= bs!589391 d!1187520))

(assert (=> bs!589391 m!4597487))

(assert (=> b!4011761 d!1187520))

(declare-fun b!4012118 () Bool)

(declare-fun e!2488319 () List!43068)

(assert (=> b!4012118 (= e!2488319 (_2!24179 (v!39615 lt!1421042)))))

(declare-fun lt!1421223 () List!43068)

(declare-fun b!4012121 () Bool)

(declare-fun e!2488318 () Bool)

(assert (=> b!4012121 (= e!2488318 (or (not (= (_2!24179 (v!39615 lt!1421042)) Nil!42944)) (= lt!1421223 lt!1421058)))))

(declare-fun b!4012119 () Bool)

(assert (=> b!4012119 (= e!2488319 (Cons!42944 (h!48364 lt!1421058) (++!11236 (t!332999 lt!1421058) (_2!24179 (v!39615 lt!1421042)))))))

(declare-fun b!4012120 () Bool)

(declare-fun res!1631136 () Bool)

(assert (=> b!4012120 (=> (not res!1631136) (not e!2488318))))

(assert (=> b!4012120 (= res!1631136 (= (size!32110 lt!1421223) (+ (size!32110 lt!1421058) (size!32110 (_2!24179 (v!39615 lt!1421042))))))))

(declare-fun d!1187522 () Bool)

(assert (=> d!1187522 e!2488318))

(declare-fun res!1631135 () Bool)

(assert (=> d!1187522 (=> (not res!1631135) (not e!2488318))))

(assert (=> d!1187522 (= res!1631135 (= (content!6512 lt!1421223) ((_ map or) (content!6512 lt!1421058) (content!6512 (_2!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1187522 (= lt!1421223 e!2488319)))

(declare-fun c!693617 () Bool)

(assert (=> d!1187522 (= c!693617 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187522 (= (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))) lt!1421223)))

(assert (= (and d!1187522 c!693617) b!4012118))

(assert (= (and d!1187522 (not c!693617)) b!4012119))

(assert (= (and d!1187522 res!1631135) b!4012120))

(assert (= (and b!4012120 res!1631136) b!4012121))

(declare-fun m!4598167 () Bool)

(assert (=> b!4012119 m!4598167))

(declare-fun m!4598169 () Bool)

(assert (=> b!4012120 m!4598169))

(assert (=> b!4012120 m!4597463))

(declare-fun m!4598171 () Bool)

(assert (=> b!4012120 m!4598171))

(declare-fun m!4598173 () Bool)

(assert (=> d!1187522 m!4598173))

(declare-fun m!4598175 () Bool)

(assert (=> d!1187522 m!4598175))

(declare-fun m!4598177 () Bool)

(assert (=> d!1187522 m!4598177))

(assert (=> b!4011761 d!1187522))

(declare-fun d!1187524 () Bool)

(assert (=> d!1187524 (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))

(declare-fun lt!1421224 () Unit!61970)

(assert (=> d!1187524 (= lt!1421224 (choose!24242 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))

(assert (=> d!1187524 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421058 (_2!24179 (v!39615 lt!1421042))) lt!1421224)))

(declare-fun bs!589392 () Bool)

(assert (= bs!589392 d!1187524))

(assert (=> bs!589392 m!4597441))

(assert (=> bs!589392 m!4597441))

(declare-fun m!4598179 () Bool)

(assert (=> bs!589392 m!4598179))

(declare-fun m!4598181 () Bool)

(assert (=> bs!589392 m!4598181))

(assert (=> b!4011761 d!1187524))

(declare-fun d!1187526 () Bool)

(declare-fun list!15962 (Conc!13045) List!43068)

(assert (=> d!1187526 (= (list!15960 (charsOf!4650 (_1!24179 (v!39615 lt!1421042)))) (list!15962 (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun bs!589393 () Bool)

(assert (= bs!589393 d!1187526))

(declare-fun m!4598183 () Bool)

(assert (=> bs!589393 m!4598183))

(assert (=> b!4011761 d!1187526))

(declare-fun d!1187528 () Bool)

(assert (=> d!1187528 (= (size!32109 (_1!24179 (v!39615 lt!1421042))) (size!32110 (originalCharacters!7434 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun Unit!61978 () Unit!61970)

(assert (=> d!1187528 (= (lemmaCharactersSize!1393 (_1!24179 (v!39615 lt!1421042))) Unit!61978)))

(declare-fun bs!589394 () Bool)

(assert (= bs!589394 d!1187528))

(declare-fun m!4598185 () Bool)

(assert (=> bs!589394 m!4598185))

(assert (=> b!4011761 d!1187528))

(declare-fun b!4012126 () Bool)

(declare-fun e!2488323 () List!43068)

(assert (=> b!4012126 (= e!2488323 newSuffixResult!27)))

(declare-fun b!4012129 () Bool)

(declare-fun lt!1421227 () List!43068)

(declare-fun e!2488322 () Bool)

(assert (=> b!4012129 (= e!2488322 (or (not (= newSuffixResult!27 Nil!42944)) (= lt!1421227 lt!1421058)))))

(declare-fun b!4012127 () Bool)

(assert (=> b!4012127 (= e!2488323 (Cons!42944 (h!48364 lt!1421058) (++!11236 (t!332999 lt!1421058) newSuffixResult!27)))))

(declare-fun b!4012128 () Bool)

(declare-fun res!1631138 () Bool)

(assert (=> b!4012128 (=> (not res!1631138) (not e!2488322))))

(assert (=> b!4012128 (= res!1631138 (= (size!32110 lt!1421227) (+ (size!32110 lt!1421058) (size!32110 newSuffixResult!27))))))

(declare-fun d!1187530 () Bool)

(assert (=> d!1187530 e!2488322))

(declare-fun res!1631137 () Bool)

(assert (=> d!1187530 (=> (not res!1631137) (not e!2488322))))

(assert (=> d!1187530 (= res!1631137 (= (content!6512 lt!1421227) ((_ map or) (content!6512 lt!1421058) (content!6512 newSuffixResult!27))))))

(assert (=> d!1187530 (= lt!1421227 e!2488323)))

(declare-fun c!693620 () Bool)

(assert (=> d!1187530 (= c!693620 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187530 (= (++!11236 lt!1421058 newSuffixResult!27) lt!1421227)))

(assert (= (and d!1187530 c!693620) b!4012126))

(assert (= (and d!1187530 (not c!693620)) b!4012127))

(assert (= (and d!1187530 res!1631137) b!4012128))

(assert (= (and b!4012128 res!1631138) b!4012129))

(declare-fun m!4598187 () Bool)

(assert (=> b!4012127 m!4598187))

(declare-fun m!4598189 () Bool)

(assert (=> b!4012128 m!4598189))

(assert (=> b!4012128 m!4597463))

(declare-fun m!4598191 () Bool)

(assert (=> b!4012128 m!4598191))

(declare-fun m!4598193 () Bool)

(assert (=> d!1187530 m!4598193))

(assert (=> d!1187530 m!4598175))

(declare-fun m!4598195 () Bool)

(assert (=> d!1187530 m!4598195))

(assert (=> b!4011761 d!1187530))

(declare-fun d!1187532 () Bool)

(declare-fun e!2488332 () Bool)

(assert (=> d!1187532 e!2488332))

(declare-fun res!1631145 () Bool)

(assert (=> d!1187532 (=> res!1631145 e!2488332)))

(declare-fun lt!1421228 () Bool)

(assert (=> d!1187532 (= res!1631145 (not lt!1421228))))

(declare-fun e!2488330 () Bool)

(assert (=> d!1187532 (= lt!1421228 e!2488330)))

(declare-fun res!1631143 () Bool)

(assert (=> d!1187532 (=> res!1631143 e!2488330)))

(assert (=> d!1187532 (= res!1631143 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187532 (= (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 newSuffixResult!27)) lt!1421228)))

(declare-fun b!4012141 () Bool)

(declare-fun res!1631146 () Bool)

(declare-fun e!2488331 () Bool)

(assert (=> b!4012141 (=> (not res!1631146) (not e!2488331))))

(assert (=> b!4012141 (= res!1631146 (= (head!8519 lt!1421058) (head!8519 (++!11236 lt!1421058 newSuffixResult!27))))))

(declare-fun b!4012142 () Bool)

(assert (=> b!4012142 (= e!2488331 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 (++!11236 lt!1421058 newSuffixResult!27))))))

(declare-fun b!4012140 () Bool)

(assert (=> b!4012140 (= e!2488330 e!2488331)))

(declare-fun res!1631144 () Bool)

(assert (=> b!4012140 (=> (not res!1631144) (not e!2488331))))

(assert (=> b!4012140 (= res!1631144 (not ((_ is Nil!42944) (++!11236 lt!1421058 newSuffixResult!27))))))

(declare-fun b!4012143 () Bool)

(assert (=> b!4012143 (= e!2488332 (>= (size!32110 (++!11236 lt!1421058 newSuffixResult!27)) (size!32110 lt!1421058)))))

(assert (= (and d!1187532 (not res!1631143)) b!4012140))

(assert (= (and b!4012140 res!1631144) b!4012141))

(assert (= (and b!4012141 res!1631146) b!4012142))

(assert (= (and d!1187532 (not res!1631145)) b!4012143))

(assert (=> b!4012141 m!4597887))

(assert (=> b!4012141 m!4597447))

(declare-fun m!4598197 () Bool)

(assert (=> b!4012141 m!4598197))

(assert (=> b!4012142 m!4597889))

(assert (=> b!4012142 m!4597447))

(declare-fun m!4598199 () Bool)

(assert (=> b!4012142 m!4598199))

(assert (=> b!4012142 m!4597889))

(assert (=> b!4012142 m!4598199))

(declare-fun m!4598201 () Bool)

(assert (=> b!4012142 m!4598201))

(assert (=> b!4012143 m!4597447))

(declare-fun m!4598203 () Bool)

(assert (=> b!4012143 m!4598203))

(assert (=> b!4012143 m!4597463))

(assert (=> b!4011761 d!1187532))

(declare-fun b!4012281 () Bool)

(declare-fun e!2488411 () Option!9248)

(declare-datatypes ((tuple2!42094 0))(
  ( (tuple2!42095 (_1!24181 List!43068) (_2!24181 List!43068)) )
))
(declare-fun lt!1421269 () tuple2!42094)

(declare-fun size!32112 (BalanceConc!25684) Int)

(assert (=> b!4012281 (= e!2488411 (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 (_1!24181 lt!1421269))) (rule!9878 (_1!24179 (v!39615 lt!1421042))) (size!32112 (seqFromList!5059 (_1!24181 lt!1421269))) (_1!24181 lt!1421269)) (_2!24181 lt!1421269))))))

(declare-fun lt!1421270 () Unit!61970)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1332 (Regex!11739 List!43068) Unit!61970)

(assert (=> b!4012281 (= lt!1421270 (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421025))))

(declare-fun res!1631224 () Bool)

(declare-fun isEmpty!25654 (List!43068) Bool)

(declare-fun findLongestMatchInner!1359 (Regex!11739 List!43068 Int List!43068 List!43068 Int) tuple2!42094)

(assert (=> b!4012281 (= res!1631224 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(declare-fun e!2488412 () Bool)

(assert (=> b!4012281 (=> res!1631224 e!2488412)))

(assert (=> b!4012281 e!2488412))

(declare-fun lt!1421267 () Unit!61970)

(assert (=> b!4012281 (= lt!1421267 lt!1421270)))

(declare-fun lt!1421268 () Unit!61970)

(declare-fun lemmaSemiInverse!1879 (TokenValueInjection!13556 BalanceConc!25684) Unit!61970)

(assert (=> b!4012281 (= lt!1421268 (lemmaSemiInverse!1879 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 (_1!24181 lt!1421269))))))

(declare-fun b!4012282 () Bool)

(declare-fun res!1631223 () Bool)

(declare-fun e!2488410 () Bool)

(assert (=> b!4012282 (=> (not res!1631223) (not e!2488410))))

(declare-fun lt!1421266 () Option!9248)

(assert (=> b!4012282 (= res!1631223 (< (size!32110 (_2!24179 (get!14111 lt!1421266))) (size!32110 lt!1421025)))))

(declare-fun b!4012283 () Bool)

(declare-fun e!2488409 () Bool)

(assert (=> b!4012283 (= e!2488409 e!2488410)))

(declare-fun res!1631222 () Bool)

(assert (=> b!4012283 (=> (not res!1631222) (not e!2488410))))

(assert (=> b!4012283 (= res!1631222 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))

(declare-fun b!4012285 () Bool)

(assert (=> b!4012285 (= e!2488411 None!9247)))

(declare-fun b!4012286 () Bool)

(declare-fun res!1631221 () Bool)

(assert (=> b!4012286 (=> (not res!1631221) (not e!2488410))))

(assert (=> b!4012286 (= res!1631221 (= (value!215403 (_1!24179 (get!14111 lt!1421266))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))))))))

(declare-fun b!4012287 () Bool)

(declare-fun res!1631220 () Bool)

(assert (=> b!4012287 (=> (not res!1631220) (not e!2488410))))

(assert (=> b!4012287 (= res!1631220 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))) (_2!24179 (get!14111 lt!1421266))) lt!1421025))))

(declare-fun b!4012288 () Bool)

(declare-fun res!1631225 () Bool)

(assert (=> b!4012288 (=> (not res!1631225) (not e!2488410))))

(assert (=> b!4012288 (= res!1631225 (= (rule!9878 (_1!24179 (get!14111 lt!1421266))) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun b!4012289 () Bool)

(assert (=> b!4012289 (= e!2488410 (= (size!32109 (_1!24179 (get!14111 lt!1421266))) (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266))))))))

(declare-fun d!1187534 () Bool)

(assert (=> d!1187534 e!2488409))

(declare-fun res!1631219 () Bool)

(assert (=> d!1187534 (=> res!1631219 e!2488409)))

(assert (=> d!1187534 (= res!1631219 (isEmpty!25653 lt!1421266))))

(assert (=> d!1187534 (= lt!1421266 e!2488411)))

(declare-fun c!693637 () Bool)

(assert (=> d!1187534 (= c!693637 (isEmpty!25654 (_1!24181 lt!1421269)))))

(declare-fun findLongestMatch!1272 (Regex!11739 List!43068) tuple2!42094)

(assert (=> d!1187534 (= lt!1421269 (findLongestMatch!1272 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421025))))

(assert (=> d!1187534 (ruleValid!2766 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))

(assert (=> d!1187534 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) lt!1421025) lt!1421266)))

(declare-fun b!4012284 () Bool)

(assert (=> b!4012284 (= e!2488412 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(assert (= (and d!1187534 c!693637) b!4012285))

(assert (= (and d!1187534 (not c!693637)) b!4012281))

(assert (= (and b!4012281 (not res!1631224)) b!4012284))

(assert (= (and d!1187534 (not res!1631219)) b!4012283))

(assert (= (and b!4012283 res!1631222) b!4012287))

(assert (= (and b!4012287 res!1631220) b!4012282))

(assert (= (and b!4012282 res!1631223) b!4012288))

(assert (= (and b!4012288 res!1631225) b!4012286))

(assert (= (and b!4012286 res!1631221) b!4012289))

(declare-fun m!4598329 () Bool)

(assert (=> b!4012287 m!4598329))

(declare-fun m!4598331 () Bool)

(assert (=> b!4012287 m!4598331))

(assert (=> b!4012287 m!4598331))

(declare-fun m!4598333 () Bool)

(assert (=> b!4012287 m!4598333))

(assert (=> b!4012287 m!4598333))

(declare-fun m!4598335 () Bool)

(assert (=> b!4012287 m!4598335))

(assert (=> b!4012288 m!4598329))

(declare-fun m!4598337 () Bool)

(assert (=> d!1187534 m!4598337))

(declare-fun m!4598339 () Bool)

(assert (=> d!1187534 m!4598339))

(declare-fun m!4598341 () Bool)

(assert (=> d!1187534 m!4598341))

(assert (=> d!1187534 m!4597437))

(assert (=> b!4012289 m!4598329))

(declare-fun m!4598343 () Bool)

(assert (=> b!4012289 m!4598343))

(assert (=> b!4012286 m!4598329))

(declare-fun m!4598345 () Bool)

(assert (=> b!4012286 m!4598345))

(assert (=> b!4012286 m!4598345))

(declare-fun m!4598347 () Bool)

(assert (=> b!4012286 m!4598347))

(declare-fun m!4598349 () Bool)

(assert (=> b!4012284 m!4598349))

(assert (=> b!4012284 m!4597781))

(assert (=> b!4012284 m!4598349))

(assert (=> b!4012284 m!4597781))

(declare-fun m!4598351 () Bool)

(assert (=> b!4012284 m!4598351))

(declare-fun m!4598353 () Bool)

(assert (=> b!4012284 m!4598353))

(assert (=> b!4012283 m!4598329))

(assert (=> b!4012283 m!4598331))

(assert (=> b!4012283 m!4598331))

(assert (=> b!4012283 m!4598333))

(assert (=> b!4012283 m!4598333))

(declare-fun m!4598355 () Bool)

(assert (=> b!4012283 m!4598355))

(assert (=> b!4012282 m!4598329))

(declare-fun m!4598357 () Bool)

(assert (=> b!4012282 m!4598357))

(assert (=> b!4012282 m!4597781))

(assert (=> b!4012281 m!4598349))

(assert (=> b!4012281 m!4597781))

(assert (=> b!4012281 m!4598351))

(declare-fun m!4598359 () Bool)

(assert (=> b!4012281 m!4598359))

(declare-fun m!4598361 () Bool)

(assert (=> b!4012281 m!4598361))

(declare-fun m!4598363 () Bool)

(assert (=> b!4012281 m!4598363))

(assert (=> b!4012281 m!4597781))

(assert (=> b!4012281 m!4598361))

(declare-fun m!4598365 () Bool)

(assert (=> b!4012281 m!4598365))

(assert (=> b!4012281 m!4598361))

(declare-fun m!4598367 () Bool)

(assert (=> b!4012281 m!4598367))

(assert (=> b!4012281 m!4598349))

(assert (=> b!4012281 m!4598361))

(declare-fun m!4598369 () Bool)

(assert (=> b!4012281 m!4598369))

(assert (=> b!4011761 d!1187534))

(declare-fun d!1187582 () Bool)

(declare-fun e!2488415 () Bool)

(assert (=> d!1187582 e!2488415))

(declare-fun res!1631228 () Bool)

(assert (=> d!1187582 (=> res!1631228 e!2488415)))

(declare-fun lt!1421271 () Bool)

(assert (=> d!1187582 (= res!1631228 (not lt!1421271))))

(declare-fun e!2488413 () Bool)

(assert (=> d!1187582 (= lt!1421271 e!2488413)))

(declare-fun res!1631226 () Bool)

(assert (=> d!1187582 (=> res!1631226 e!2488413)))

(assert (=> d!1187582 (= res!1631226 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1187582 (= (isPrefix!3921 lt!1421058 lt!1421057) lt!1421271)))

(declare-fun b!4012291 () Bool)

(declare-fun res!1631229 () Bool)

(declare-fun e!2488414 () Bool)

(assert (=> b!4012291 (=> (not res!1631229) (not e!2488414))))

(assert (=> b!4012291 (= res!1631229 (= (head!8519 lt!1421058) (head!8519 lt!1421057)))))

(declare-fun b!4012292 () Bool)

(assert (=> b!4012292 (= e!2488414 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421057)))))

(declare-fun b!4012290 () Bool)

(assert (=> b!4012290 (= e!2488413 e!2488414)))

(declare-fun res!1631227 () Bool)

(assert (=> b!4012290 (=> (not res!1631227) (not e!2488414))))

(assert (=> b!4012290 (= res!1631227 (not ((_ is Nil!42944) lt!1421057)))))

(declare-fun b!4012293 () Bool)

(assert (=> b!4012293 (= e!2488415 (>= (size!32110 lt!1421057) (size!32110 lt!1421058)))))

(assert (= (and d!1187582 (not res!1631226)) b!4012290))

(assert (= (and b!4012290 res!1631227) b!4012291))

(assert (= (and b!4012291 res!1631229) b!4012292))

(assert (= (and d!1187582 (not res!1631228)) b!4012293))

(assert (=> b!4012291 m!4597887))

(declare-fun m!4598371 () Bool)

(assert (=> b!4012291 m!4598371))

(assert (=> b!4012292 m!4597889))

(declare-fun m!4598373 () Bool)

(assert (=> b!4012292 m!4598373))

(assert (=> b!4012292 m!4597889))

(assert (=> b!4012292 m!4598373))

(declare-fun m!4598375 () Bool)

(assert (=> b!4012292 m!4598375))

(declare-fun m!4598377 () Bool)

(assert (=> b!4012293 m!4598377))

(assert (=> b!4012293 m!4597463))

(assert (=> b!4011761 d!1187582))

(declare-fun d!1187584 () Bool)

(assert (=> d!1187584 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) lt!1421025) (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 lt!1421058)) (rule!9878 (_1!24179 (v!39615 lt!1421042))) (size!32110 lt!1421058) lt!1421058) (_2!24179 (v!39615 lt!1421042)))))))

(declare-fun lt!1421274 () Unit!61970)

(declare-fun choose!24249 (LexerInterface!6423 List!43070 List!43068 List!43068 List!43068 Rule!13468) Unit!61970)

(assert (=> d!1187584 (= lt!1421274 (choose!24249 thiss!21717 rules!2999 lt!1421058 lt!1421025 (_2!24179 (v!39615 lt!1421042)) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1187584 (not (isEmpty!25650 rules!2999))))

(assert (=> d!1187584 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1559 thiss!21717 rules!2999 lt!1421058 lt!1421025 (_2!24179 (v!39615 lt!1421042)) (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421274)))

(declare-fun bs!589402 () Bool)

(assert (= bs!589402 d!1187584))

(declare-fun m!4598379 () Bool)

(assert (=> bs!589402 m!4598379))

(assert (=> bs!589402 m!4597435))

(assert (=> bs!589402 m!4597455))

(assert (=> bs!589402 m!4597485))

(assert (=> bs!589402 m!4597463))

(assert (=> bs!589402 m!4597435))

(assert (=> bs!589402 m!4597439))

(assert (=> b!4011761 d!1187584))

(declare-fun d!1187586 () Bool)

(assert (=> d!1187586 (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 newSuffixResult!27))))

(declare-fun lt!1421275 () Unit!61970)

(assert (=> d!1187586 (= lt!1421275 (choose!24242 lt!1421058 newSuffixResult!27))))

(assert (=> d!1187586 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421058 newSuffixResult!27) lt!1421275)))

(declare-fun bs!589403 () Bool)

(assert (= bs!589403 d!1187586))

(assert (=> bs!589403 m!4597447))

(assert (=> bs!589403 m!4597447))

(assert (=> bs!589403 m!4597449))

(declare-fun m!4598381 () Bool)

(assert (=> bs!589403 m!4598381))

(assert (=> b!4011761 d!1187586))

(declare-fun d!1187588 () Bool)

(declare-fun dynLambda!18215 (Int BalanceConc!25684) TokenValue!7064)

(assert (=> d!1187588 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 lt!1421058)) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058)))))

(declare-fun b_lambda!117067 () Bool)

(assert (=> (not b_lambda!117067) (not d!1187588)))

(declare-fun t!333028 () Bool)

(declare-fun tb!241209 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333028) tb!241209))

(declare-fun result!292352 () Bool)

(assert (=> tb!241209 (= result!292352 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(declare-fun m!4598383 () Bool)

(assert (=> tb!241209 m!4598383))

(assert (=> d!1187588 t!333028))

(declare-fun b_and!308215 () Bool)

(assert (= b_and!308183 (and (=> t!333028 result!292352) b_and!308215)))

(declare-fun t!333030 () Bool)

(declare-fun tb!241211 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333030) tb!241211))

(declare-fun result!292356 () Bool)

(assert (= result!292356 result!292352))

(assert (=> d!1187588 t!333030))

(declare-fun b_and!308217 () Bool)

(assert (= b_and!308187 (and (=> t!333030 result!292356) b_and!308217)))

(assert (=> d!1187588 m!4597435))

(declare-fun m!4598385 () Bool)

(assert (=> d!1187588 m!4598385))

(assert (=> b!4011761 d!1187588))

(declare-fun d!1187590 () Bool)

(declare-fun lt!1421278 () BalanceConc!25684)

(assert (=> d!1187590 (= (list!15960 lt!1421278) (originalCharacters!7434 (_1!24179 (v!39615 lt!1421042))))))

(declare-fun dynLambda!18216 (Int TokenValue!7064) BalanceConc!25684)

(assert (=> d!1187590 (= lt!1421278 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1187590 (= (charsOf!4650 (_1!24179 (v!39615 lt!1421042))) lt!1421278)))

(declare-fun b_lambda!117069 () Bool)

(assert (=> (not b_lambda!117069) (not d!1187590)))

(declare-fun t!333032 () Bool)

(declare-fun tb!241213 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333032) tb!241213))

(declare-fun b!4012300 () Bool)

(declare-fun e!2488421 () Bool)

(declare-fun tp!1220491 () Bool)

(declare-fun inv!57363 (Conc!13045) Bool)

(assert (=> b!4012300 (= e!2488421 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))) tp!1220491))))

(declare-fun result!292358 () Bool)

(declare-fun inv!57364 (BalanceConc!25684) Bool)

(assert (=> tb!241213 (= result!292358 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))) e!2488421))))

(assert (= tb!241213 b!4012300))

(declare-fun m!4598387 () Bool)

(assert (=> b!4012300 m!4598387))

(declare-fun m!4598389 () Bool)

(assert (=> tb!241213 m!4598389))

(assert (=> d!1187590 t!333032))

(declare-fun b_and!308219 () Bool)

(assert (= b_and!308185 (and (=> t!333032 result!292358) b_and!308219)))

(declare-fun t!333034 () Bool)

(declare-fun tb!241215 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333034) tb!241215))

(declare-fun result!292362 () Bool)

(assert (= result!292362 result!292358))

(assert (=> d!1187590 t!333034))

(declare-fun b_and!308221 () Bool)

(assert (= b_and!308189 (and (=> t!333034 result!292362) b_and!308221)))

(declare-fun m!4598391 () Bool)

(assert (=> d!1187590 m!4598391))

(declare-fun m!4598393 () Bool)

(assert (=> d!1187590 m!4598393))

(assert (=> b!4011761 d!1187590))

(declare-fun b!4012301 () Bool)

(declare-fun e!2488423 () List!43068)

(assert (=> b!4012301 (= e!2488423 lt!1421018)))

(declare-fun e!2488422 () Bool)

(declare-fun lt!1421279 () List!43068)

(declare-fun b!4012304 () Bool)

(assert (=> b!4012304 (= e!2488422 (or (not (= lt!1421018 Nil!42944)) (= lt!1421279 newSuffix!27)))))

(declare-fun b!4012302 () Bool)

(assert (=> b!4012302 (= e!2488423 (Cons!42944 (h!48364 newSuffix!27) (++!11236 (t!332999 newSuffix!27) lt!1421018)))))

(declare-fun b!4012303 () Bool)

(declare-fun res!1631231 () Bool)

(assert (=> b!4012303 (=> (not res!1631231) (not e!2488422))))

(assert (=> b!4012303 (= res!1631231 (= (size!32110 lt!1421279) (+ (size!32110 newSuffix!27) (size!32110 lt!1421018))))))

(declare-fun d!1187592 () Bool)

(assert (=> d!1187592 e!2488422))

(declare-fun res!1631230 () Bool)

(assert (=> d!1187592 (=> (not res!1631230) (not e!2488422))))

(assert (=> d!1187592 (= res!1631230 (= (content!6512 lt!1421279) ((_ map or) (content!6512 newSuffix!27) (content!6512 lt!1421018))))))

(assert (=> d!1187592 (= lt!1421279 e!2488423)))

(declare-fun c!693638 () Bool)

(assert (=> d!1187592 (= c!693638 ((_ is Nil!42944) newSuffix!27))))

(assert (=> d!1187592 (= (++!11236 newSuffix!27 lt!1421018) lt!1421279)))

(assert (= (and d!1187592 c!693638) b!4012301))

(assert (= (and d!1187592 (not c!693638)) b!4012302))

(assert (= (and d!1187592 res!1631230) b!4012303))

(assert (= (and b!4012303 res!1631231) b!4012304))

(declare-fun m!4598395 () Bool)

(assert (=> b!4012302 m!4598395))

(declare-fun m!4598397 () Bool)

(assert (=> b!4012303 m!4598397))

(assert (=> b!4012303 m!4597547))

(assert (=> b!4012303 m!4597783))

(declare-fun m!4598399 () Bool)

(assert (=> d!1187592 m!4598399))

(declare-fun m!4598401 () Bool)

(assert (=> d!1187592 m!4598401))

(assert (=> d!1187592 m!4597789))

(assert (=> b!4011765 d!1187592))

(declare-fun d!1187594 () Bool)

(declare-fun lt!1421280 () List!43068)

(assert (=> d!1187594 (= (++!11236 newSuffix!27 lt!1421280) suffix!1299)))

(declare-fun e!2488424 () List!43068)

(assert (=> d!1187594 (= lt!1421280 e!2488424)))

(declare-fun c!693639 () Bool)

(assert (=> d!1187594 (= c!693639 ((_ is Cons!42944) newSuffix!27))))

(assert (=> d!1187594 (>= (size!32110 suffix!1299) (size!32110 newSuffix!27))))

(assert (=> d!1187594 (= (getSuffix!2346 suffix!1299 newSuffix!27) lt!1421280)))

(declare-fun b!4012305 () Bool)

(assert (=> b!4012305 (= e!2488424 (getSuffix!2346 (tail!6251 suffix!1299) (t!332999 newSuffix!27)))))

(declare-fun b!4012306 () Bool)

(assert (=> b!4012306 (= e!2488424 suffix!1299)))

(assert (= (and d!1187594 c!693639) b!4012305))

(assert (= (and d!1187594 (not c!693639)) b!4012306))

(declare-fun m!4598403 () Bool)

(assert (=> d!1187594 m!4598403))

(assert (=> d!1187594 m!4597545))

(assert (=> d!1187594 m!4597547))

(assert (=> b!4012305 m!4597913))

(assert (=> b!4012305 m!4597913))

(declare-fun m!4598405 () Bool)

(assert (=> b!4012305 m!4598405))

(assert (=> b!4011765 d!1187594))

(declare-fun b!4012317 () Bool)

(declare-fun res!1631234 () Bool)

(declare-fun e!2488431 () Bool)

(assert (=> b!4012317 (=> res!1631234 e!2488431)))

(assert (=> b!4012317 (= res!1631234 (not ((_ is IntegerValue!21194) (value!215403 token!484))))))

(declare-fun e!2488432 () Bool)

(assert (=> b!4012317 (= e!2488432 e!2488431)))

(declare-fun b!4012318 () Bool)

(declare-fun inv!17 (TokenValue!7064) Bool)

(assert (=> b!4012318 (= e!2488432 (inv!17 (value!215403 token!484)))))

(declare-fun b!4012319 () Bool)

(declare-fun e!2488433 () Bool)

(assert (=> b!4012319 (= e!2488433 e!2488432)))

(declare-fun c!693645 () Bool)

(assert (=> b!4012319 (= c!693645 ((_ is IntegerValue!21193) (value!215403 token!484)))))

(declare-fun d!1187596 () Bool)

(declare-fun c!693644 () Bool)

(assert (=> d!1187596 (= c!693644 ((_ is IntegerValue!21192) (value!215403 token!484)))))

(assert (=> d!1187596 (= (inv!21 (value!215403 token!484)) e!2488433)))

(declare-fun b!4012320 () Bool)

(declare-fun inv!15 (TokenValue!7064) Bool)

(assert (=> b!4012320 (= e!2488431 (inv!15 (value!215403 token!484)))))

(declare-fun b!4012321 () Bool)

(declare-fun inv!16 (TokenValue!7064) Bool)

(assert (=> b!4012321 (= e!2488433 (inv!16 (value!215403 token!484)))))

(assert (= (and d!1187596 c!693644) b!4012321))

(assert (= (and d!1187596 (not c!693644)) b!4012319))

(assert (= (and b!4012319 c!693645) b!4012318))

(assert (= (and b!4012319 (not c!693645)) b!4012317))

(assert (= (and b!4012317 (not res!1631234)) b!4012320))

(declare-fun m!4598407 () Bool)

(assert (=> b!4012318 m!4598407))

(declare-fun m!4598409 () Bool)

(assert (=> b!4012320 m!4598409))

(declare-fun m!4598411 () Bool)

(assert (=> b!4012321 m!4598411))

(assert (=> b!4011749 d!1187596))

(declare-fun d!1187598 () Bool)

(assert (=> d!1187598 (= (inv!57356 (tag!7694 (h!48366 rules!2999))) (= (mod (str.len (value!215402 (tag!7694 (h!48366 rules!2999)))) 2) 0))))

(assert (=> b!4011770 d!1187598))

(declare-fun d!1187600 () Bool)

(declare-fun res!1631237 () Bool)

(declare-fun e!2488436 () Bool)

(assert (=> d!1187600 (=> (not res!1631237) (not e!2488436))))

(assert (=> d!1187600 (= res!1631237 (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (h!48366 rules!2999)))))))

(assert (=> d!1187600 (= (inv!57360 (transformation!6834 (h!48366 rules!2999))) e!2488436)))

(declare-fun b!4012324 () Bool)

(assert (=> b!4012324 (= e!2488436 (equivClasses!2824 (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (h!48366 rules!2999)))))))

(assert (= (and d!1187600 res!1631237) b!4012324))

(declare-fun m!4598413 () Bool)

(assert (=> d!1187600 m!4598413))

(declare-fun m!4598415 () Bool)

(assert (=> b!4012324 m!4598415))

(assert (=> b!4011770 d!1187600))

(declare-fun d!1187602 () Bool)

(declare-fun res!1631240 () Bool)

(declare-fun e!2488439 () Bool)

(assert (=> d!1187602 (=> (not res!1631240) (not e!2488439))))

(declare-fun rulesValid!2659 (LexerInterface!6423 List!43070) Bool)

(assert (=> d!1187602 (= res!1631240 (rulesValid!2659 thiss!21717 rules!2999))))

(assert (=> d!1187602 (= (rulesInvariant!5766 thiss!21717 rules!2999) e!2488439)))

(declare-fun b!4012327 () Bool)

(declare-datatypes ((List!43072 0))(
  ( (Nil!42948) (Cons!42948 (h!48368 String!49038) (t!333051 List!43072)) )
))
(declare-fun noDuplicateTag!2660 (LexerInterface!6423 List!43070 List!43072) Bool)

(assert (=> b!4012327 (= e!2488439 (noDuplicateTag!2660 thiss!21717 rules!2999 Nil!42948))))

(assert (= (and d!1187602 res!1631240) b!4012327))

(declare-fun m!4598417 () Bool)

(assert (=> d!1187602 m!4598417))

(declare-fun m!4598419 () Bool)

(assert (=> b!4012327 m!4598419))

(assert (=> b!4011771 d!1187602))

(declare-fun d!1187604 () Bool)

(declare-fun lt!1421281 () Int)

(assert (=> d!1187604 (>= lt!1421281 0)))

(declare-fun e!2488440 () Int)

(assert (=> d!1187604 (= lt!1421281 e!2488440)))

(declare-fun c!693646 () Bool)

(assert (=> d!1187604 (= c!693646 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187604 (= (size!32110 lt!1421037) lt!1421281)))

(declare-fun b!4012328 () Bool)

(assert (=> b!4012328 (= e!2488440 0)))

(declare-fun b!4012329 () Bool)

(assert (=> b!4012329 (= e!2488440 (+ 1 (size!32110 (t!332999 lt!1421037))))))

(assert (= (and d!1187604 c!693646) b!4012328))

(assert (= (and d!1187604 (not c!693646)) b!4012329))

(declare-fun m!4598421 () Bool)

(assert (=> b!4012329 m!4598421))

(assert (=> b!4011769 d!1187604))

(declare-fun d!1187606 () Bool)

(declare-fun lt!1421282 () Int)

(assert (=> d!1187606 (>= lt!1421282 0)))

(declare-fun e!2488441 () Int)

(assert (=> d!1187606 (= lt!1421282 e!2488441)))

(declare-fun c!693647 () Bool)

(assert (=> d!1187606 (= c!693647 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187606 (= (size!32110 prefix!494) lt!1421282)))

(declare-fun b!4012330 () Bool)

(assert (=> b!4012330 (= e!2488441 0)))

(declare-fun b!4012331 () Bool)

(assert (=> b!4012331 (= e!2488441 (+ 1 (size!32110 (t!332999 prefix!494))))))

(assert (= (and d!1187606 c!693647) b!4012330))

(assert (= (and d!1187606 (not c!693647)) b!4012331))

(declare-fun m!4598423 () Bool)

(assert (=> b!4012331 m!4598423))

(assert (=> b!4011769 d!1187606))

(declare-fun d!1187608 () Bool)

(assert (=> d!1187608 (= (list!15960 (charsOf!4650 token!484)) (list!15962 (c!693562 (charsOf!4650 token!484))))))

(declare-fun bs!589404 () Bool)

(assert (= bs!589404 d!1187608))

(declare-fun m!4598425 () Bool)

(assert (=> bs!589404 m!4598425))

(assert (=> b!4011769 d!1187608))

(declare-fun d!1187610 () Bool)

(declare-fun lt!1421283 () BalanceConc!25684)

(assert (=> d!1187610 (= (list!15960 lt!1421283) (originalCharacters!7434 token!484))))

(assert (=> d!1187610 (= lt!1421283 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))

(assert (=> d!1187610 (= (charsOf!4650 token!484) lt!1421283)))

(declare-fun b_lambda!117071 () Bool)

(assert (=> (not b_lambda!117071) (not d!1187610)))

(declare-fun t!333036 () Bool)

(declare-fun tb!241217 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333036) tb!241217))

(declare-fun b!4012332 () Bool)

(declare-fun e!2488442 () Bool)

(declare-fun tp!1220492 () Bool)

(assert (=> b!4012332 (= e!2488442 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))) tp!1220492))))

(declare-fun result!292364 () Bool)

(assert (=> tb!241217 (= result!292364 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))) e!2488442))))

(assert (= tb!241217 b!4012332))

(declare-fun m!4598427 () Bool)

(assert (=> b!4012332 m!4598427))

(declare-fun m!4598429 () Bool)

(assert (=> tb!241217 m!4598429))

(assert (=> d!1187610 t!333036))

(declare-fun b_and!308223 () Bool)

(assert (= b_and!308219 (and (=> t!333036 result!292364) b_and!308223)))

(declare-fun t!333038 () Bool)

(declare-fun tb!241219 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333038) tb!241219))

(declare-fun result!292366 () Bool)

(assert (= result!292366 result!292364))

(assert (=> d!1187610 t!333038))

(declare-fun b_and!308225 () Bool)

(assert (= b_and!308221 (and (=> t!333038 result!292366) b_and!308225)))

(declare-fun m!4598431 () Bool)

(assert (=> d!1187610 m!4598431))

(declare-fun m!4598433 () Bool)

(assert (=> d!1187610 m!4598433))

(assert (=> b!4011769 d!1187610))

(declare-fun d!1187612 () Bool)

(declare-fun res!1631245 () Bool)

(declare-fun e!2488445 () Bool)

(assert (=> d!1187612 (=> (not res!1631245) (not e!2488445))))

(assert (=> d!1187612 (= res!1631245 (not (isEmpty!25654 (originalCharacters!7434 token!484))))))

(assert (=> d!1187612 (= (inv!57359 token!484) e!2488445)))

(declare-fun b!4012337 () Bool)

(declare-fun res!1631246 () Bool)

(assert (=> b!4012337 (=> (not res!1631246) (not e!2488445))))

(assert (=> b!4012337 (= res!1631246 (= (originalCharacters!7434 token!484) (list!15960 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(declare-fun b!4012338 () Bool)

(assert (=> b!4012338 (= e!2488445 (= (size!32109 token!484) (size!32110 (originalCharacters!7434 token!484))))))

(assert (= (and d!1187612 res!1631245) b!4012337))

(assert (= (and b!4012337 res!1631246) b!4012338))

(declare-fun b_lambda!117073 () Bool)

(assert (=> (not b_lambda!117073) (not b!4012337)))

(assert (=> b!4012337 t!333036))

(declare-fun b_and!308227 () Bool)

(assert (= b_and!308223 (and (=> t!333036 result!292364) b_and!308227)))

(assert (=> b!4012337 t!333038))

(declare-fun b_and!308229 () Bool)

(assert (= b_and!308225 (and (=> t!333038 result!292366) b_and!308229)))

(declare-fun m!4598435 () Bool)

(assert (=> d!1187612 m!4598435))

(assert (=> b!4012337 m!4598433))

(assert (=> b!4012337 m!4598433))

(declare-fun m!4598437 () Bool)

(assert (=> b!4012337 m!4598437))

(assert (=> b!4012338 m!4597487))

(assert (=> start!377796 d!1187612))

(declare-fun b!4012339 () Bool)

(declare-fun e!2488447 () List!43068)

(assert (=> b!4012339 (= e!2488447 newSuffix!27)))

(declare-fun e!2488446 () Bool)

(declare-fun lt!1421284 () List!43068)

(declare-fun b!4012342 () Bool)

(assert (=> b!4012342 (= e!2488446 (or (not (= newSuffix!27 Nil!42944)) (= lt!1421284 prefix!494)))))

(declare-fun b!4012340 () Bool)

(assert (=> b!4012340 (= e!2488447 (Cons!42944 (h!48364 prefix!494) (++!11236 (t!332999 prefix!494) newSuffix!27)))))

(declare-fun b!4012341 () Bool)

(declare-fun res!1631248 () Bool)

(assert (=> b!4012341 (=> (not res!1631248) (not e!2488446))))

(assert (=> b!4012341 (= res!1631248 (= (size!32110 lt!1421284) (+ (size!32110 prefix!494) (size!32110 newSuffix!27))))))

(declare-fun d!1187614 () Bool)

(assert (=> d!1187614 e!2488446))

(declare-fun res!1631247 () Bool)

(assert (=> d!1187614 (=> (not res!1631247) (not e!2488446))))

(assert (=> d!1187614 (= res!1631247 (= (content!6512 lt!1421284) ((_ map or) (content!6512 prefix!494) (content!6512 newSuffix!27))))))

(assert (=> d!1187614 (= lt!1421284 e!2488447)))

(declare-fun c!693648 () Bool)

(assert (=> d!1187614 (= c!693648 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187614 (= (++!11236 prefix!494 newSuffix!27) lt!1421284)))

(assert (= (and d!1187614 c!693648) b!4012339))

(assert (= (and d!1187614 (not c!693648)) b!4012340))

(assert (= (and d!1187614 res!1631247) b!4012341))

(assert (= (and b!4012341 res!1631248) b!4012342))

(declare-fun m!4598439 () Bool)

(assert (=> b!4012340 m!4598439))

(declare-fun m!4598441 () Bool)

(assert (=> b!4012341 m!4598441))

(assert (=> b!4012341 m!4597423))

(assert (=> b!4012341 m!4597547))

(declare-fun m!4598443 () Bool)

(assert (=> d!1187614 m!4598443))

(assert (=> d!1187614 m!4597751))

(assert (=> d!1187614 m!4598401))

(assert (=> b!4011748 d!1187614))

(declare-fun b!4012343 () Bool)

(declare-fun e!2488449 () List!43068)

(assert (=> b!4012343 (= e!2488449 newSuffixResult!27)))

(declare-fun e!2488448 () Bool)

(declare-fun b!4012346 () Bool)

(declare-fun lt!1421285 () List!43068)

(assert (=> b!4012346 (= e!2488448 (or (not (= newSuffixResult!27 Nil!42944)) (= lt!1421285 lt!1421037)))))

(declare-fun b!4012344 () Bool)

(assert (=> b!4012344 (= e!2488449 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) newSuffixResult!27)))))

(declare-fun b!4012345 () Bool)

(declare-fun res!1631250 () Bool)

(assert (=> b!4012345 (=> (not res!1631250) (not e!2488448))))

(assert (=> b!4012345 (= res!1631250 (= (size!32110 lt!1421285) (+ (size!32110 lt!1421037) (size!32110 newSuffixResult!27))))))

(declare-fun d!1187616 () Bool)

(assert (=> d!1187616 e!2488448))

(declare-fun res!1631249 () Bool)

(assert (=> d!1187616 (=> (not res!1631249) (not e!2488448))))

(assert (=> d!1187616 (= res!1631249 (= (content!6512 lt!1421285) ((_ map or) (content!6512 lt!1421037) (content!6512 newSuffixResult!27))))))

(assert (=> d!1187616 (= lt!1421285 e!2488449)))

(declare-fun c!693649 () Bool)

(assert (=> d!1187616 (= c!693649 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187616 (= (++!11236 lt!1421037 newSuffixResult!27) lt!1421285)))

(assert (= (and d!1187616 c!693649) b!4012343))

(assert (= (and d!1187616 (not c!693649)) b!4012344))

(assert (= (and d!1187616 res!1631249) b!4012345))

(assert (= (and b!4012345 res!1631250) b!4012346))

(declare-fun m!4598445 () Bool)

(assert (=> b!4012344 m!4598445))

(declare-fun m!4598447 () Bool)

(assert (=> b!4012345 m!4598447))

(assert (=> b!4012345 m!4597421))

(assert (=> b!4012345 m!4598191))

(declare-fun m!4598449 () Bool)

(assert (=> d!1187616 m!4598449))

(assert (=> d!1187616 m!4597819))

(assert (=> d!1187616 m!4598195))

(assert (=> b!4011748 d!1187616))

(declare-fun b!4012347 () Bool)

(declare-fun e!2488451 () List!43068)

(assert (=> b!4012347 (= e!2488451 lt!1421023)))

(declare-fun b!4012350 () Bool)

(declare-fun e!2488450 () Bool)

(declare-fun lt!1421286 () List!43068)

(assert (=> b!4012350 (= e!2488450 (or (not (= lt!1421023 Nil!42944)) (= lt!1421286 lt!1421037)))))

(declare-fun b!4012348 () Bool)

(assert (=> b!4012348 (= e!2488451 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) lt!1421023)))))

(declare-fun b!4012349 () Bool)

(declare-fun res!1631252 () Bool)

(assert (=> b!4012349 (=> (not res!1631252) (not e!2488450))))

(assert (=> b!4012349 (= res!1631252 (= (size!32110 lt!1421286) (+ (size!32110 lt!1421037) (size!32110 lt!1421023))))))

(declare-fun d!1187618 () Bool)

(assert (=> d!1187618 e!2488450))

(declare-fun res!1631251 () Bool)

(assert (=> d!1187618 (=> (not res!1631251) (not e!2488450))))

(assert (=> d!1187618 (= res!1631251 (= (content!6512 lt!1421286) ((_ map or) (content!6512 lt!1421037) (content!6512 lt!1421023))))))

(assert (=> d!1187618 (= lt!1421286 e!2488451)))

(declare-fun c!693650 () Bool)

(assert (=> d!1187618 (= c!693650 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187618 (= (++!11236 lt!1421037 lt!1421023) lt!1421286)))

(assert (= (and d!1187618 c!693650) b!4012347))

(assert (= (and d!1187618 (not c!693650)) b!4012348))

(assert (= (and d!1187618 res!1631251) b!4012349))

(assert (= (and b!4012349 res!1631252) b!4012350))

(declare-fun m!4598451 () Bool)

(assert (=> b!4012348 m!4598451))

(declare-fun m!4598453 () Bool)

(assert (=> b!4012349 m!4598453))

(assert (=> b!4012349 m!4597421))

(declare-fun m!4598455 () Bool)

(assert (=> b!4012349 m!4598455))

(declare-fun m!4598457 () Bool)

(assert (=> d!1187618 m!4598457))

(assert (=> d!1187618 m!4597819))

(declare-fun m!4598459 () Bool)

(assert (=> d!1187618 m!4598459))

(assert (=> b!4011773 d!1187618))

(declare-fun d!1187620 () Bool)

(declare-fun lt!1421287 () List!43068)

(assert (=> d!1187620 (= (++!11236 lt!1421037 lt!1421287) prefix!494)))

(declare-fun e!2488452 () List!43068)

(assert (=> d!1187620 (= lt!1421287 e!2488452)))

(declare-fun c!693651 () Bool)

(assert (=> d!1187620 (= c!693651 ((_ is Cons!42944) lt!1421037))))

(assert (=> d!1187620 (>= (size!32110 prefix!494) (size!32110 lt!1421037))))

(assert (=> d!1187620 (= (getSuffix!2346 prefix!494 lt!1421037) lt!1421287)))

(declare-fun b!4012351 () Bool)

(assert (=> b!4012351 (= e!2488452 (getSuffix!2346 (tail!6251 prefix!494) (t!332999 lt!1421037)))))

(declare-fun b!4012352 () Bool)

(assert (=> b!4012352 (= e!2488452 prefix!494)))

(assert (= (and d!1187620 c!693651) b!4012351))

(assert (= (and d!1187620 (not c!693651)) b!4012352))

(declare-fun m!4598461 () Bool)

(assert (=> d!1187620 m!4598461))

(assert (=> d!1187620 m!4597423))

(assert (=> d!1187620 m!4597421))

(assert (=> b!4012351 m!4597857))

(assert (=> b!4012351 m!4597857))

(declare-fun m!4598463 () Bool)

(assert (=> b!4012351 m!4598463))

(assert (=> b!4011773 d!1187620))

(declare-fun d!1187622 () Bool)

(declare-fun e!2488455 () Bool)

(assert (=> d!1187622 e!2488455))

(declare-fun res!1631255 () Bool)

(assert (=> d!1187622 (=> res!1631255 e!2488455)))

(declare-fun lt!1421288 () Bool)

(assert (=> d!1187622 (= res!1631255 (not lt!1421288))))

(declare-fun e!2488453 () Bool)

(assert (=> d!1187622 (= lt!1421288 e!2488453)))

(declare-fun res!1631253 () Bool)

(assert (=> d!1187622 (=> res!1631253 e!2488453)))

(assert (=> d!1187622 (= res!1631253 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187622 (= (isPrefix!3921 lt!1421037 prefix!494) lt!1421288)))

(declare-fun b!4012354 () Bool)

(declare-fun res!1631256 () Bool)

(declare-fun e!2488454 () Bool)

(assert (=> b!4012354 (=> (not res!1631256) (not e!2488454))))

(assert (=> b!4012354 (= res!1631256 (= (head!8519 lt!1421037) (head!8519 prefix!494)))))

(declare-fun b!4012355 () Bool)

(assert (=> b!4012355 (= e!2488454 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 prefix!494)))))

(declare-fun b!4012353 () Bool)

(assert (=> b!4012353 (= e!2488453 e!2488454)))

(declare-fun res!1631254 () Bool)

(assert (=> b!4012353 (=> (not res!1631254) (not e!2488454))))

(assert (=> b!4012353 (= res!1631254 (not ((_ is Nil!42944) prefix!494)))))

(declare-fun b!4012356 () Bool)

(assert (=> b!4012356 (= e!2488455 (>= (size!32110 prefix!494) (size!32110 lt!1421037)))))

(assert (= (and d!1187622 (not res!1631253)) b!4012353))

(assert (= (and b!4012353 res!1631254) b!4012354))

(assert (= (and b!4012354 res!1631256) b!4012355))

(assert (= (and d!1187622 (not res!1631255)) b!4012356))

(assert (=> b!4012354 m!4597837))

(assert (=> b!4012354 m!4597855))

(assert (=> b!4012355 m!4597839))

(assert (=> b!4012355 m!4597857))

(assert (=> b!4012355 m!4597839))

(assert (=> b!4012355 m!4597857))

(declare-fun m!4598465 () Bool)

(assert (=> b!4012355 m!4598465))

(assert (=> b!4012356 m!4597423))

(assert (=> b!4012356 m!4597421))

(assert (=> b!4011773 d!1187622))

(declare-fun d!1187624 () Bool)

(assert (=> d!1187624 (isPrefix!3921 lt!1421037 prefix!494)))

(declare-fun lt!1421291 () Unit!61970)

(declare-fun choose!24250 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> d!1187624 (= lt!1421291 (choose!24250 prefix!494 lt!1421037 lt!1421016))))

(assert (=> d!1187624 (isPrefix!3921 prefix!494 lt!1421016)))

(assert (=> d!1187624 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!493 prefix!494 lt!1421037 lt!1421016) lt!1421291)))

(declare-fun bs!589405 () Bool)

(assert (= bs!589405 d!1187624))

(assert (=> bs!589405 m!4597533))

(declare-fun m!4598467 () Bool)

(assert (=> bs!589405 m!4598467))

(assert (=> bs!589405 m!4597519))

(assert (=> b!4011773 d!1187624))

(declare-fun d!1187626 () Bool)

(assert (=> d!1187626 (= (isEmpty!25650 rules!2999) ((_ is Nil!42946) rules!2999))))

(assert (=> b!4011751 d!1187626))

(declare-fun d!1187628 () Bool)

(declare-fun lt!1421292 () Int)

(assert (=> d!1187628 (>= lt!1421292 0)))

(declare-fun e!2488456 () Int)

(assert (=> d!1187628 (= lt!1421292 e!2488456)))

(declare-fun c!693652 () Bool)

(assert (=> d!1187628 (= c!693652 ((_ is Nil!42944) (originalCharacters!7434 token!484)))))

(assert (=> d!1187628 (= (size!32110 (originalCharacters!7434 token!484)) lt!1421292)))

(declare-fun b!4012357 () Bool)

(assert (=> b!4012357 (= e!2488456 0)))

(declare-fun b!4012358 () Bool)

(assert (=> b!4012358 (= e!2488456 (+ 1 (size!32110 (t!332999 (originalCharacters!7434 token!484)))))))

(assert (= (and d!1187628 c!693652) b!4012357))

(assert (= (and d!1187628 (not c!693652)) b!4012358))

(declare-fun m!4598469 () Bool)

(assert (=> b!4012358 m!4598469))

(assert (=> b!4011772 d!1187628))

(declare-fun b!4012359 () Bool)

(declare-fun e!2488459 () Option!9248)

(declare-fun lt!1421296 () tuple2!42094)

(assert (=> b!4012359 (= e!2488459 (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 (_1!24181 lt!1421296))) (rule!9878 token!484) (size!32112 (seqFromList!5059 (_1!24181 lt!1421296))) (_1!24181 lt!1421296)) (_2!24181 lt!1421296))))))

(declare-fun lt!1421297 () Unit!61970)

(assert (=> b!4012359 (= lt!1421297 (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (rule!9878 token!484)) lt!1421016))))

(declare-fun res!1631262 () Bool)

(assert (=> b!4012359 (= res!1631262 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(declare-fun e!2488460 () Bool)

(assert (=> b!4012359 (=> res!1631262 e!2488460)))

(assert (=> b!4012359 e!2488460))

(declare-fun lt!1421294 () Unit!61970)

(assert (=> b!4012359 (= lt!1421294 lt!1421297)))

(declare-fun lt!1421295 () Unit!61970)

(assert (=> b!4012359 (= lt!1421295 (lemmaSemiInverse!1879 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 (_1!24181 lt!1421296))))))

(declare-fun b!4012360 () Bool)

(declare-fun res!1631261 () Bool)

(declare-fun e!2488458 () Bool)

(assert (=> b!4012360 (=> (not res!1631261) (not e!2488458))))

(declare-fun lt!1421293 () Option!9248)

(assert (=> b!4012360 (= res!1631261 (< (size!32110 (_2!24179 (get!14111 lt!1421293))) (size!32110 lt!1421016)))))

(declare-fun b!4012361 () Bool)

(declare-fun e!2488457 () Bool)

(assert (=> b!4012361 (= e!2488457 e!2488458)))

(declare-fun res!1631260 () Bool)

(assert (=> b!4012361 (=> (not res!1631260) (not e!2488458))))

(assert (=> b!4012361 (= res!1631260 (matchR!5700 (regex!6834 (rule!9878 token!484)) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))

(declare-fun b!4012363 () Bool)

(assert (=> b!4012363 (= e!2488459 None!9247)))

(declare-fun b!4012364 () Bool)

(declare-fun res!1631259 () Bool)

(assert (=> b!4012364 (=> (not res!1631259) (not e!2488458))))

(assert (=> b!4012364 (= res!1631259 (= (value!215403 (_1!24179 (get!14111 lt!1421293))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))))))))

(declare-fun b!4012365 () Bool)

(declare-fun res!1631258 () Bool)

(assert (=> b!4012365 (=> (not res!1631258) (not e!2488458))))

(assert (=> b!4012365 (= res!1631258 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))) (_2!24179 (get!14111 lt!1421293))) lt!1421016))))

(declare-fun b!4012366 () Bool)

(declare-fun res!1631263 () Bool)

(assert (=> b!4012366 (=> (not res!1631263) (not e!2488458))))

(assert (=> b!4012366 (= res!1631263 (= (rule!9878 (_1!24179 (get!14111 lt!1421293))) (rule!9878 token!484)))))

(declare-fun b!4012367 () Bool)

(assert (=> b!4012367 (= e!2488458 (= (size!32109 (_1!24179 (get!14111 lt!1421293))) (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293))))))))

(declare-fun d!1187630 () Bool)

(assert (=> d!1187630 e!2488457))

(declare-fun res!1631257 () Bool)

(assert (=> d!1187630 (=> res!1631257 e!2488457)))

(assert (=> d!1187630 (= res!1631257 (isEmpty!25653 lt!1421293))))

(assert (=> d!1187630 (= lt!1421293 e!2488459)))

(declare-fun c!693653 () Bool)

(assert (=> d!1187630 (= c!693653 (isEmpty!25654 (_1!24181 lt!1421296)))))

(assert (=> d!1187630 (= lt!1421296 (findLongestMatch!1272 (regex!6834 (rule!9878 token!484)) lt!1421016))))

(assert (=> d!1187630 (ruleValid!2766 thiss!21717 (rule!9878 token!484))))

(assert (=> d!1187630 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 token!484) lt!1421016) lt!1421293)))

(declare-fun b!4012362 () Bool)

(assert (=> b!4012362 (= e!2488460 (matchR!5700 (regex!6834 (rule!9878 token!484)) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(assert (= (and d!1187630 c!693653) b!4012363))

(assert (= (and d!1187630 (not c!693653)) b!4012359))

(assert (= (and b!4012359 (not res!1631262)) b!4012362))

(assert (= (and d!1187630 (not res!1631257)) b!4012361))

(assert (= (and b!4012361 res!1631260) b!4012365))

(assert (= (and b!4012365 res!1631258) b!4012360))

(assert (= (and b!4012360 res!1631261) b!4012366))

(assert (= (and b!4012366 res!1631263) b!4012364))

(assert (= (and b!4012364 res!1631259) b!4012367))

(declare-fun m!4598471 () Bool)

(assert (=> b!4012365 m!4598471))

(declare-fun m!4598473 () Bool)

(assert (=> b!4012365 m!4598473))

(assert (=> b!4012365 m!4598473))

(declare-fun m!4598475 () Bool)

(assert (=> b!4012365 m!4598475))

(assert (=> b!4012365 m!4598475))

(declare-fun m!4598477 () Bool)

(assert (=> b!4012365 m!4598477))

(assert (=> b!4012366 m!4598471))

(declare-fun m!4598479 () Bool)

(assert (=> d!1187630 m!4598479))

(declare-fun m!4598481 () Bool)

(assert (=> d!1187630 m!4598481))

(declare-fun m!4598483 () Bool)

(assert (=> d!1187630 m!4598483))

(assert (=> d!1187630 m!4597409))

(assert (=> b!4012367 m!4598471))

(declare-fun m!4598485 () Bool)

(assert (=> b!4012367 m!4598485))

(assert (=> b!4012364 m!4598471))

(declare-fun m!4598487 () Bool)

(assert (=> b!4012364 m!4598487))

(assert (=> b!4012364 m!4598487))

(declare-fun m!4598489 () Bool)

(assert (=> b!4012364 m!4598489))

(assert (=> b!4012362 m!4598349))

(assert (=> b!4012362 m!4597825))

(assert (=> b!4012362 m!4598349))

(assert (=> b!4012362 m!4597825))

(declare-fun m!4598491 () Bool)

(assert (=> b!4012362 m!4598491))

(declare-fun m!4598493 () Bool)

(assert (=> b!4012362 m!4598493))

(assert (=> b!4012361 m!4598471))

(assert (=> b!4012361 m!4598473))

(assert (=> b!4012361 m!4598473))

(assert (=> b!4012361 m!4598475))

(assert (=> b!4012361 m!4598475))

(declare-fun m!4598495 () Bool)

(assert (=> b!4012361 m!4598495))

(assert (=> b!4012360 m!4598471))

(declare-fun m!4598497 () Bool)

(assert (=> b!4012360 m!4598497))

(assert (=> b!4012360 m!4597825))

(assert (=> b!4012359 m!4598349))

(assert (=> b!4012359 m!4597825))

(assert (=> b!4012359 m!4598491))

(declare-fun m!4598499 () Bool)

(assert (=> b!4012359 m!4598499))

(declare-fun m!4598501 () Bool)

(assert (=> b!4012359 m!4598501))

(declare-fun m!4598503 () Bool)

(assert (=> b!4012359 m!4598503))

(assert (=> b!4012359 m!4597825))

(assert (=> b!4012359 m!4598501))

(declare-fun m!4598505 () Bool)

(assert (=> b!4012359 m!4598505))

(assert (=> b!4012359 m!4598501))

(declare-fun m!4598507 () Bool)

(assert (=> b!4012359 m!4598507))

(assert (=> b!4012359 m!4598349))

(assert (=> b!4012359 m!4598501))

(declare-fun m!4598509 () Bool)

(assert (=> b!4012359 m!4598509))

(assert (=> b!4011754 d!1187630))

(declare-fun d!1187632 () Bool)

(declare-fun e!2488463 () Bool)

(assert (=> d!1187632 e!2488463))

(declare-fun res!1631266 () Bool)

(assert (=> d!1187632 (=> res!1631266 e!2488463)))

(declare-fun lt!1421298 () Bool)

(assert (=> d!1187632 (= res!1631266 (not lt!1421298))))

(declare-fun e!2488461 () Bool)

(assert (=> d!1187632 (= lt!1421298 e!2488461)))

(declare-fun res!1631264 () Bool)

(assert (=> d!1187632 (=> res!1631264 e!2488461)))

(assert (=> d!1187632 (= res!1631264 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187632 (= (isPrefix!3921 lt!1421037 lt!1421043) lt!1421298)))

(declare-fun b!4012369 () Bool)

(declare-fun res!1631267 () Bool)

(declare-fun e!2488462 () Bool)

(assert (=> b!4012369 (=> (not res!1631267) (not e!2488462))))

(assert (=> b!4012369 (= res!1631267 (= (head!8519 lt!1421037) (head!8519 lt!1421043)))))

(declare-fun b!4012370 () Bool)

(assert (=> b!4012370 (= e!2488462 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421043)))))

(declare-fun b!4012368 () Bool)

(assert (=> b!4012368 (= e!2488461 e!2488462)))

(declare-fun res!1631265 () Bool)

(assert (=> b!4012368 (=> (not res!1631265) (not e!2488462))))

(assert (=> b!4012368 (= res!1631265 (not ((_ is Nil!42944) lt!1421043)))))

(declare-fun b!4012371 () Bool)

(assert (=> b!4012371 (= e!2488463 (>= (size!32110 lt!1421043) (size!32110 lt!1421037)))))

(assert (= (and d!1187632 (not res!1631264)) b!4012368))

(assert (= (and b!4012368 res!1631265) b!4012369))

(assert (= (and b!4012369 res!1631267) b!4012370))

(assert (= (and d!1187632 (not res!1631266)) b!4012371))

(assert (=> b!4012369 m!4597837))

(declare-fun m!4598511 () Bool)

(assert (=> b!4012369 m!4598511))

(assert (=> b!4012370 m!4597839))

(declare-fun m!4598513 () Bool)

(assert (=> b!4012370 m!4598513))

(assert (=> b!4012370 m!4597839))

(assert (=> b!4012370 m!4598513))

(declare-fun m!4598515 () Bool)

(assert (=> b!4012370 m!4598515))

(declare-fun m!4598517 () Bool)

(assert (=> b!4012371 m!4598517))

(assert (=> b!4012371 m!4597421))

(assert (=> b!4011754 d!1187632))

(declare-fun d!1187634 () Bool)

(assert (=> d!1187634 (= lt!1421061 suffixResult!105)))

(declare-fun lt!1421299 () Unit!61970)

(assert (=> d!1187634 (= lt!1421299 (choose!24247 lt!1421037 lt!1421061 lt!1421037 suffixResult!105 lt!1421016))))

(assert (=> d!1187634 (isPrefix!3921 lt!1421037 lt!1421016)))

(assert (=> d!1187634 (= (lemmaSamePrefixThenSameSuffix!2092 lt!1421037 lt!1421061 lt!1421037 suffixResult!105 lt!1421016) lt!1421299)))

(declare-fun bs!589406 () Bool)

(assert (= bs!589406 d!1187634))

(declare-fun m!4598519 () Bool)

(assert (=> bs!589406 m!4598519))

(assert (=> bs!589406 m!4597525))

(assert (=> b!4011754 d!1187634))

(declare-fun d!1187636 () Bool)

(assert (=> d!1187636 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421061))))

(declare-fun lt!1421300 () Unit!61970)

(assert (=> d!1187636 (= lt!1421300 (choose!24242 lt!1421037 lt!1421061))))

(assert (=> d!1187636 (= (lemmaConcatTwoListThenFirstIsPrefix!2762 lt!1421037 lt!1421061) lt!1421300)))

(declare-fun bs!589407 () Bool)

(assert (= bs!589407 d!1187636))

(assert (=> bs!589407 m!4597489))

(assert (=> bs!589407 m!4597489))

(declare-fun m!4598521 () Bool)

(assert (=> bs!589407 m!4598521))

(declare-fun m!4598523 () Bool)

(assert (=> bs!589407 m!4598523))

(assert (=> b!4011754 d!1187636))

(declare-fun d!1187638 () Bool)

(assert (=> d!1187638 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 token!484) lt!1421016) (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 lt!1421037)) (rule!9878 token!484) (size!32110 lt!1421037) lt!1421037) suffixResult!105)))))

(declare-fun lt!1421301 () Unit!61970)

(assert (=> d!1187638 (= lt!1421301 (choose!24249 thiss!21717 rules!2999 lt!1421037 lt!1421016 suffixResult!105 (rule!9878 token!484)))))

(assert (=> d!1187638 (not (isEmpty!25650 rules!2999))))

(assert (=> d!1187638 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1559 thiss!21717 rules!2999 lt!1421037 lt!1421016 suffixResult!105 (rule!9878 token!484)) lt!1421301)))

(declare-fun bs!589408 () Bool)

(assert (= bs!589408 d!1187638))

(declare-fun m!4598525 () Bool)

(assert (=> bs!589408 m!4598525))

(assert (=> bs!589408 m!4597469))

(assert (=> bs!589408 m!4597473))

(assert (=> bs!589408 m!4597485))

(assert (=> bs!589408 m!4597421))

(assert (=> bs!589408 m!4597469))

(assert (=> bs!589408 m!4597471))

(assert (=> b!4011754 d!1187638))

(declare-fun d!1187640 () Bool)

(assert (=> d!1187640 (= (seqFromList!5059 lt!1421037) (fromListB!2316 lt!1421037))))

(declare-fun bs!589409 () Bool)

(assert (= bs!589409 d!1187640))

(declare-fun m!4598527 () Bool)

(assert (=> bs!589409 m!4598527))

(assert (=> b!4011754 d!1187640))

(declare-fun d!1187642 () Bool)

(assert (=> d!1187642 (= (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 lt!1421037)) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037)))))

(declare-fun b_lambda!117075 () Bool)

(assert (=> (not b_lambda!117075) (not d!1187642)))

(declare-fun t!333040 () Bool)

(declare-fun tb!241221 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333040) tb!241221))

(declare-fun result!292368 () Bool)

(assert (=> tb!241221 (= result!292368 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(declare-fun m!4598529 () Bool)

(assert (=> tb!241221 m!4598529))

(assert (=> d!1187642 t!333040))

(declare-fun b_and!308231 () Bool)

(assert (= b_and!308215 (and (=> t!333040 result!292368) b_and!308231)))

(declare-fun t!333042 () Bool)

(declare-fun tb!241223 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333042) tb!241223))

(declare-fun result!292370 () Bool)

(assert (= result!292370 result!292368))

(assert (=> d!1187642 t!333042))

(declare-fun b_and!308233 () Bool)

(assert (= b_and!308217 (and (=> t!333042 result!292370) b_and!308233)))

(assert (=> d!1187642 m!4597469))

(declare-fun m!4598531 () Bool)

(assert (=> d!1187642 m!4598531))

(assert (=> b!4011754 d!1187642))

(declare-fun b!4012400 () Bool)

(declare-fun e!2488479 () Bool)

(assert (=> b!4012400 (= e!2488479 (nullable!4117 (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4012401 () Bool)

(declare-fun e!2488482 () Bool)

(declare-fun lt!1421304 () Bool)

(assert (=> b!4012401 (= e!2488482 (not lt!1421304))))

(declare-fun b!4012402 () Bool)

(declare-fun e!2488483 () Bool)

(declare-fun call!286395 () Bool)

(assert (=> b!4012402 (= e!2488483 (= lt!1421304 call!286395))))

(declare-fun b!4012403 () Bool)

(declare-fun e!2488484 () Bool)

(declare-fun e!2488485 () Bool)

(assert (=> b!4012403 (= e!2488484 e!2488485)))

(declare-fun res!1631288 () Bool)

(assert (=> b!4012403 (=> (not res!1631288) (not e!2488485))))

(assert (=> b!4012403 (= res!1631288 (not lt!1421304))))

(declare-fun b!4012404 () Bool)

(declare-fun res!1631285 () Bool)

(declare-fun e!2488480 () Bool)

(assert (=> b!4012404 (=> (not res!1631285) (not e!2488480))))

(assert (=> b!4012404 (= res!1631285 (isEmpty!25654 (tail!6251 lt!1421037)))))

(declare-fun b!4012405 () Bool)

(declare-fun res!1631287 () Bool)

(assert (=> b!4012405 (=> res!1631287 e!2488484)))

(assert (=> b!4012405 (= res!1631287 e!2488480)))

(declare-fun res!1631286 () Bool)

(assert (=> b!4012405 (=> (not res!1631286) (not e!2488480))))

(assert (=> b!4012405 (= res!1631286 lt!1421304)))

(declare-fun b!4012406 () Bool)

(assert (=> b!4012406 (= e!2488480 (= (head!8519 lt!1421037) (c!693563 (regex!6834 (rule!9878 token!484)))))))

(declare-fun b!4012407 () Bool)

(declare-fun res!1631290 () Bool)

(assert (=> b!4012407 (=> res!1631290 e!2488484)))

(assert (=> b!4012407 (= res!1631290 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484)))))))

(assert (=> b!4012407 (= e!2488482 e!2488484)))

(declare-fun b!4012408 () Bool)

(declare-fun res!1631284 () Bool)

(declare-fun e!2488481 () Bool)

(assert (=> b!4012408 (=> res!1631284 e!2488481)))

(assert (=> b!4012408 (= res!1631284 (not (isEmpty!25654 (tail!6251 lt!1421037))))))

(declare-fun b!4012409 () Bool)

(assert (=> b!4012409 (= e!2488483 e!2488482)))

(declare-fun c!693662 () Bool)

(assert (=> b!4012409 (= c!693662 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun d!1187644 () Bool)

(assert (=> d!1187644 e!2488483))

(declare-fun c!693660 () Bool)

(assert (=> d!1187644 (= c!693660 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 token!484))))))

(assert (=> d!1187644 (= lt!1421304 e!2488479)))

(declare-fun c!693661 () Bool)

(assert (=> d!1187644 (= c!693661 (isEmpty!25654 lt!1421037))))

(assert (=> d!1187644 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1187644 (= (matchR!5700 (regex!6834 (rule!9878 token!484)) lt!1421037) lt!1421304)))

(declare-fun b!4012410 () Bool)

(declare-fun derivativeStep!3527 (Regex!11739 C!23664) Regex!11739)

(assert (=> b!4012410 (= e!2488479 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)) (tail!6251 lt!1421037)))))

(declare-fun bm!286390 () Bool)

(assert (=> bm!286390 (= call!286395 (isEmpty!25654 lt!1421037))))

(declare-fun b!4012411 () Bool)

(declare-fun res!1631291 () Bool)

(assert (=> b!4012411 (=> (not res!1631291) (not e!2488480))))

(assert (=> b!4012411 (= res!1631291 (not call!286395))))

(declare-fun b!4012412 () Bool)

(assert (=> b!4012412 (= e!2488481 (not (= (head!8519 lt!1421037) (c!693563 (regex!6834 (rule!9878 token!484))))))))

(declare-fun b!4012413 () Bool)

(assert (=> b!4012413 (= e!2488485 e!2488481)))

(declare-fun res!1631289 () Bool)

(assert (=> b!4012413 (=> res!1631289 e!2488481)))

(assert (=> b!4012413 (= res!1631289 call!286395)))

(assert (= (and d!1187644 c!693661) b!4012400))

(assert (= (and d!1187644 (not c!693661)) b!4012410))

(assert (= (and d!1187644 c!693660) b!4012402))

(assert (= (and d!1187644 (not c!693660)) b!4012409))

(assert (= (and b!4012409 c!693662) b!4012401))

(assert (= (and b!4012409 (not c!693662)) b!4012407))

(assert (= (and b!4012407 (not res!1631290)) b!4012405))

(assert (= (and b!4012405 res!1631286) b!4012411))

(assert (= (and b!4012411 res!1631291) b!4012404))

(assert (= (and b!4012404 res!1631285) b!4012406))

(assert (= (and b!4012405 (not res!1631287)) b!4012403))

(assert (= (and b!4012403 res!1631288) b!4012413))

(assert (= (and b!4012413 (not res!1631289)) b!4012408))

(assert (= (and b!4012408 (not res!1631284)) b!4012412))

(assert (= (or b!4012402 b!4012411 b!4012413) bm!286390))

(assert (=> b!4012412 m!4597837))

(declare-fun m!4598533 () Bool)

(assert (=> bm!286390 m!4598533))

(assert (=> b!4012408 m!4597839))

(assert (=> b!4012408 m!4597839))

(declare-fun m!4598535 () Bool)

(assert (=> b!4012408 m!4598535))

(assert (=> b!4012406 m!4597837))

(assert (=> b!4012400 m!4597881))

(assert (=> b!4012404 m!4597839))

(assert (=> b!4012404 m!4597839))

(assert (=> b!4012404 m!4598535))

(assert (=> b!4012410 m!4597837))

(assert (=> b!4012410 m!4597837))

(declare-fun m!4598537 () Bool)

(assert (=> b!4012410 m!4598537))

(assert (=> b!4012410 m!4597839))

(assert (=> b!4012410 m!4598537))

(assert (=> b!4012410 m!4597839))

(declare-fun m!4598539 () Bool)

(assert (=> b!4012410 m!4598539))

(assert (=> d!1187644 m!4598533))

(assert (=> d!1187644 m!4597879))

(assert (=> b!4011776 d!1187644))

(declare-fun d!1187646 () Bool)

(declare-fun e!2488488 () Bool)

(assert (=> d!1187646 e!2488488))

(declare-fun res!1631294 () Bool)

(assert (=> d!1187646 (=> res!1631294 e!2488488)))

(declare-fun lt!1421305 () Bool)

(assert (=> d!1187646 (= res!1631294 (not lt!1421305))))

(declare-fun e!2488486 () Bool)

(assert (=> d!1187646 (= lt!1421305 e!2488486)))

(declare-fun res!1631292 () Bool)

(assert (=> d!1187646 (=> res!1631292 e!2488486)))

(assert (=> d!1187646 (= res!1631292 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187646 (= (isPrefix!3921 lt!1421037 lt!1421025) lt!1421305)))

(declare-fun b!4012415 () Bool)

(declare-fun res!1631295 () Bool)

(declare-fun e!2488487 () Bool)

(assert (=> b!4012415 (=> (not res!1631295) (not e!2488487))))

(assert (=> b!4012415 (= res!1631295 (= (head!8519 lt!1421037) (head!8519 lt!1421025)))))

(declare-fun b!4012416 () Bool)

(assert (=> b!4012416 (= e!2488487 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421025)))))

(declare-fun b!4012414 () Bool)

(assert (=> b!4012414 (= e!2488486 e!2488487)))

(declare-fun res!1631293 () Bool)

(assert (=> b!4012414 (=> (not res!1631293) (not e!2488487))))

(assert (=> b!4012414 (= res!1631293 (not ((_ is Nil!42944) lt!1421025)))))

(declare-fun b!4012417 () Bool)

(assert (=> b!4012417 (= e!2488488 (>= (size!32110 lt!1421025) (size!32110 lt!1421037)))))

(assert (= (and d!1187646 (not res!1631292)) b!4012414))

(assert (= (and b!4012414 res!1631293) b!4012415))

(assert (= (and b!4012415 res!1631295) b!4012416))

(assert (= (and d!1187646 (not res!1631294)) b!4012417))

(assert (=> b!4012415 m!4597837))

(declare-fun m!4598541 () Bool)

(assert (=> b!4012415 m!4598541))

(assert (=> b!4012416 m!4597839))

(declare-fun m!4598543 () Bool)

(assert (=> b!4012416 m!4598543))

(assert (=> b!4012416 m!4597839))

(assert (=> b!4012416 m!4598543))

(declare-fun m!4598545 () Bool)

(assert (=> b!4012416 m!4598545))

(assert (=> b!4012417 m!4597781))

(assert (=> b!4012417 m!4597421))

(assert (=> b!4011776 d!1187646))

(declare-fun d!1187648 () Bool)

(assert (=> d!1187648 (isPrefix!3921 lt!1421037 (++!11236 prefix!494 newSuffix!27))))

(declare-fun lt!1421306 () Unit!61970)

(assert (=> d!1187648 (= lt!1421306 (choose!24245 lt!1421037 prefix!494 newSuffix!27))))

(assert (=> d!1187648 (isPrefix!3921 lt!1421037 prefix!494)))

(assert (=> d!1187648 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421037 prefix!494 newSuffix!27) lt!1421306)))

(declare-fun bs!589410 () Bool)

(assert (= bs!589410 d!1187648))

(assert (=> bs!589410 m!4597511))

(assert (=> bs!589410 m!4597511))

(declare-fun m!4598547 () Bool)

(assert (=> bs!589410 m!4598547))

(declare-fun m!4598549 () Bool)

(assert (=> bs!589410 m!4598549))

(assert (=> bs!589410 m!4597533))

(assert (=> b!4011776 d!1187648))

(declare-fun d!1187650 () Bool)

(assert (=> d!1187650 (isPrefix!3921 lt!1421037 (++!11236 prefix!494 suffix!1299))))

(declare-fun lt!1421307 () Unit!61970)

(assert (=> d!1187650 (= lt!1421307 (choose!24245 lt!1421037 prefix!494 suffix!1299))))

(assert (=> d!1187650 (isPrefix!3921 lt!1421037 prefix!494)))

(assert (=> d!1187650 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!734 lt!1421037 prefix!494 suffix!1299) lt!1421307)))

(declare-fun bs!589411 () Bool)

(assert (= bs!589411 d!1187650))

(assert (=> bs!589411 m!4597481))

(assert (=> bs!589411 m!4597481))

(declare-fun m!4598551 () Bool)

(assert (=> bs!589411 m!4598551))

(declare-fun m!4598553 () Bool)

(assert (=> bs!589411 m!4598553))

(assert (=> bs!589411 m!4597533))

(assert (=> b!4011776 d!1187650))

(declare-fun b!4012418 () Bool)

(declare-fun res!1631299 () Bool)

(declare-fun e!2488489 () Bool)

(assert (=> b!4012418 (=> (not res!1631299) (not e!2488489))))

(declare-fun lt!1421308 () Option!9248)

(assert (=> b!4012418 (= res!1631299 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308)))))))

(declare-fun b!4012419 () Bool)

(declare-fun res!1631301 () Bool)

(assert (=> b!4012419 (=> (not res!1631301) (not e!2488489))))

(assert (=> b!4012419 (= res!1631301 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))) (_2!24179 (get!14111 lt!1421308))) lt!1421016))))

(declare-fun b!4012420 () Bool)

(declare-fun res!1631298 () Bool)

(assert (=> b!4012420 (=> (not res!1631298) (not e!2488489))))

(assert (=> b!4012420 (= res!1631298 (< (size!32110 (_2!24179 (get!14111 lt!1421308))) (size!32110 lt!1421016)))))

(declare-fun b!4012421 () Bool)

(declare-fun res!1631302 () Bool)

(assert (=> b!4012421 (=> (not res!1631302) (not e!2488489))))

(assert (=> b!4012421 (= res!1631302 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun d!1187652 () Bool)

(declare-fun e!2488491 () Bool)

(assert (=> d!1187652 e!2488491))

(declare-fun res!1631297 () Bool)

(assert (=> d!1187652 (=> res!1631297 e!2488491)))

(assert (=> d!1187652 (= res!1631297 (isEmpty!25653 lt!1421308))))

(declare-fun e!2488490 () Option!9248)

(assert (=> d!1187652 (= lt!1421308 e!2488490)))

(declare-fun c!693663 () Bool)

(assert (=> d!1187652 (= c!693663 (and ((_ is Cons!42946) rules!2999) ((_ is Nil!42946) (t!333001 rules!2999))))))

(declare-fun lt!1421309 () Unit!61970)

(declare-fun lt!1421312 () Unit!61970)

(assert (=> d!1187652 (= lt!1421309 lt!1421312)))

(assert (=> d!1187652 (isPrefix!3921 lt!1421016 lt!1421016)))

(assert (=> d!1187652 (= lt!1421312 (lemmaIsPrefixRefl!2497 lt!1421016 lt!1421016))))

(assert (=> d!1187652 (rulesValidInductive!2491 thiss!21717 rules!2999)))

(assert (=> d!1187652 (= (maxPrefix!3721 thiss!21717 rules!2999 lt!1421016) lt!1421308)))

(declare-fun b!4012422 () Bool)

(declare-fun res!1631296 () Bool)

(assert (=> b!4012422 (=> (not res!1631296) (not e!2488489))))

(assert (=> b!4012422 (= res!1631296 (= (value!215403 (_1!24179 (get!14111 lt!1421308))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun b!4012423 () Bool)

(declare-fun call!286396 () Option!9248)

(assert (=> b!4012423 (= e!2488490 call!286396)))

(declare-fun b!4012424 () Bool)

(assert (=> b!4012424 (= e!2488489 (contains!8536 rules!2999 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))

(declare-fun b!4012425 () Bool)

(assert (=> b!4012425 (= e!2488491 e!2488489)))

(declare-fun res!1631300 () Bool)

(assert (=> b!4012425 (=> (not res!1631300) (not e!2488489))))

(assert (=> b!4012425 (= res!1631300 (isDefined!7070 lt!1421308))))

(declare-fun bm!286391 () Bool)

(assert (=> bm!286391 (= call!286396 (maxPrefixOneRule!2741 thiss!21717 (h!48366 rules!2999) lt!1421016))))

(declare-fun b!4012426 () Bool)

(declare-fun lt!1421310 () Option!9248)

(declare-fun lt!1421311 () Option!9248)

(assert (=> b!4012426 (= e!2488490 (ite (and ((_ is None!9247) lt!1421310) ((_ is None!9247) lt!1421311)) None!9247 (ite ((_ is None!9247) lt!1421311) lt!1421310 (ite ((_ is None!9247) lt!1421310) lt!1421311 (ite (>= (size!32109 (_1!24179 (v!39615 lt!1421310))) (size!32109 (_1!24179 (v!39615 lt!1421311)))) lt!1421310 lt!1421311)))))))

(assert (=> b!4012426 (= lt!1421310 call!286396)))

(assert (=> b!4012426 (= lt!1421311 (maxPrefix!3721 thiss!21717 (t!333001 rules!2999) lt!1421016))))

(assert (= (and d!1187652 c!693663) b!4012423))

(assert (= (and d!1187652 (not c!693663)) b!4012426))

(assert (= (or b!4012423 b!4012426) bm!286391))

(assert (= (and d!1187652 (not res!1631297)) b!4012425))

(assert (= (and b!4012425 res!1631300) b!4012418))

(assert (= (and b!4012418 res!1631299) b!4012420))

(assert (= (and b!4012420 res!1631298) b!4012419))

(assert (= (and b!4012419 res!1631301) b!4012422))

(assert (= (and b!4012422 res!1631296) b!4012421))

(assert (= (and b!4012421 res!1631302) b!4012424))

(declare-fun m!4598555 () Bool)

(assert (=> b!4012421 m!4598555))

(declare-fun m!4598557 () Bool)

(assert (=> b!4012421 m!4598557))

(assert (=> b!4012421 m!4598557))

(declare-fun m!4598559 () Bool)

(assert (=> b!4012421 m!4598559))

(assert (=> b!4012421 m!4598559))

(declare-fun m!4598561 () Bool)

(assert (=> b!4012421 m!4598561))

(assert (=> b!4012422 m!4598555))

(declare-fun m!4598563 () Bool)

(assert (=> b!4012422 m!4598563))

(assert (=> b!4012422 m!4598563))

(declare-fun m!4598565 () Bool)

(assert (=> b!4012422 m!4598565))

(declare-fun m!4598567 () Bool)

(assert (=> d!1187652 m!4598567))

(assert (=> d!1187652 m!4597417))

(assert (=> d!1187652 m!4597419))

(assert (=> d!1187652 m!4598067))

(declare-fun m!4598569 () Bool)

(assert (=> bm!286391 m!4598569))

(assert (=> b!4012419 m!4598555))

(assert (=> b!4012419 m!4598557))

(assert (=> b!4012419 m!4598557))

(assert (=> b!4012419 m!4598559))

(assert (=> b!4012419 m!4598559))

(declare-fun m!4598571 () Bool)

(assert (=> b!4012419 m!4598571))

(assert (=> b!4012424 m!4598555))

(declare-fun m!4598573 () Bool)

(assert (=> b!4012424 m!4598573))

(declare-fun m!4598575 () Bool)

(assert (=> b!4012425 m!4598575))

(assert (=> b!4012420 m!4598555))

(declare-fun m!4598577 () Bool)

(assert (=> b!4012420 m!4598577))

(assert (=> b!4012420 m!4597825))

(declare-fun m!4598579 () Bool)

(assert (=> b!4012426 m!4598579))

(assert (=> b!4012418 m!4598555))

(assert (=> b!4012418 m!4598557))

(assert (=> b!4012418 m!4598557))

(assert (=> b!4012418 m!4598559))

(assert (=> b!4011753 d!1187652))

(declare-fun b!4012427 () Bool)

(declare-fun e!2488493 () List!43068)

(assert (=> b!4012427 (= e!2488493 suffix!1299)))

(declare-fun b!4012430 () Bool)

(declare-fun e!2488492 () Bool)

(declare-fun lt!1421313 () List!43068)

(assert (=> b!4012430 (= e!2488492 (or (not (= suffix!1299 Nil!42944)) (= lt!1421313 prefix!494)))))

(declare-fun b!4012428 () Bool)

(assert (=> b!4012428 (= e!2488493 (Cons!42944 (h!48364 prefix!494) (++!11236 (t!332999 prefix!494) suffix!1299)))))

(declare-fun b!4012429 () Bool)

(declare-fun res!1631304 () Bool)

(assert (=> b!4012429 (=> (not res!1631304) (not e!2488492))))

(assert (=> b!4012429 (= res!1631304 (= (size!32110 lt!1421313) (+ (size!32110 prefix!494) (size!32110 suffix!1299))))))

(declare-fun d!1187654 () Bool)

(assert (=> d!1187654 e!2488492))

(declare-fun res!1631303 () Bool)

(assert (=> d!1187654 (=> (not res!1631303) (not e!2488492))))

(assert (=> d!1187654 (= res!1631303 (= (content!6512 lt!1421313) ((_ map or) (content!6512 prefix!494) (content!6512 suffix!1299))))))

(assert (=> d!1187654 (= lt!1421313 e!2488493)))

(declare-fun c!693664 () Bool)

(assert (=> d!1187654 (= c!693664 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187654 (= (++!11236 prefix!494 suffix!1299) lt!1421313)))

(assert (= (and d!1187654 c!693664) b!4012427))

(assert (= (and d!1187654 (not c!693664)) b!4012428))

(assert (= (and d!1187654 res!1631303) b!4012429))

(assert (= (and b!4012429 res!1631304) b!4012430))

(declare-fun m!4598581 () Bool)

(assert (=> b!4012428 m!4598581))

(declare-fun m!4598583 () Bool)

(assert (=> b!4012429 m!4598583))

(assert (=> b!4012429 m!4597423))

(assert (=> b!4012429 m!4597545))

(declare-fun m!4598585 () Bool)

(assert (=> d!1187654 m!4598585))

(assert (=> d!1187654 m!4597751))

(declare-fun m!4598587 () Bool)

(assert (=> d!1187654 m!4598587))

(assert (=> b!4011753 d!1187654))

(declare-fun b!4012431 () Bool)

(declare-fun e!2488495 () List!43068)

(assert (=> b!4012431 (= e!2488495 lt!1421061)))

(declare-fun b!4012434 () Bool)

(declare-fun lt!1421314 () List!43068)

(declare-fun e!2488494 () Bool)

(assert (=> b!4012434 (= e!2488494 (or (not (= lt!1421061 Nil!42944)) (= lt!1421314 lt!1421037)))))

(declare-fun b!4012432 () Bool)

(assert (=> b!4012432 (= e!2488495 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) lt!1421061)))))

(declare-fun b!4012433 () Bool)

(declare-fun res!1631306 () Bool)

(assert (=> b!4012433 (=> (not res!1631306) (not e!2488494))))

(assert (=> b!4012433 (= res!1631306 (= (size!32110 lt!1421314) (+ (size!32110 lt!1421037) (size!32110 lt!1421061))))))

(declare-fun d!1187656 () Bool)

(assert (=> d!1187656 e!2488494))

(declare-fun res!1631305 () Bool)

(assert (=> d!1187656 (=> (not res!1631305) (not e!2488494))))

(assert (=> d!1187656 (= res!1631305 (= (content!6512 lt!1421314) ((_ map or) (content!6512 lt!1421037) (content!6512 lt!1421061))))))

(assert (=> d!1187656 (= lt!1421314 e!2488495)))

(declare-fun c!693665 () Bool)

(assert (=> d!1187656 (= c!693665 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187656 (= (++!11236 lt!1421037 lt!1421061) lt!1421314)))

(assert (= (and d!1187656 c!693665) b!4012431))

(assert (= (and d!1187656 (not c!693665)) b!4012432))

(assert (= (and d!1187656 res!1631305) b!4012433))

(assert (= (and b!4012433 res!1631306) b!4012434))

(declare-fun m!4598589 () Bool)

(assert (=> b!4012432 m!4598589))

(declare-fun m!4598591 () Bool)

(assert (=> b!4012433 m!4598591))

(assert (=> b!4012433 m!4597421))

(declare-fun m!4598593 () Bool)

(assert (=> b!4012433 m!4598593))

(declare-fun m!4598595 () Bool)

(assert (=> d!1187656 m!4598595))

(assert (=> d!1187656 m!4597819))

(declare-fun m!4598597 () Bool)

(assert (=> d!1187656 m!4598597))

(assert (=> b!4011774 d!1187656))

(declare-fun b!4012435 () Bool)

(declare-fun e!2488497 () List!43068)

(assert (=> b!4012435 (= e!2488497 suffix!1299)))

(declare-fun lt!1421315 () List!43068)

(declare-fun e!2488496 () Bool)

(declare-fun b!4012438 () Bool)

(assert (=> b!4012438 (= e!2488496 (or (not (= suffix!1299 Nil!42944)) (= lt!1421315 lt!1421030)))))

(declare-fun b!4012436 () Bool)

(assert (=> b!4012436 (= e!2488497 (Cons!42944 (h!48364 lt!1421030) (++!11236 (t!332999 lt!1421030) suffix!1299)))))

(declare-fun b!4012437 () Bool)

(declare-fun res!1631308 () Bool)

(assert (=> b!4012437 (=> (not res!1631308) (not e!2488496))))

(assert (=> b!4012437 (= res!1631308 (= (size!32110 lt!1421315) (+ (size!32110 lt!1421030) (size!32110 suffix!1299))))))

(declare-fun d!1187658 () Bool)

(assert (=> d!1187658 e!2488496))

(declare-fun res!1631307 () Bool)

(assert (=> d!1187658 (=> (not res!1631307) (not e!2488496))))

(assert (=> d!1187658 (= res!1631307 (= (content!6512 lt!1421315) ((_ map or) (content!6512 lt!1421030) (content!6512 suffix!1299))))))

(assert (=> d!1187658 (= lt!1421315 e!2488497)))

(declare-fun c!693666 () Bool)

(assert (=> d!1187658 (= c!693666 ((_ is Nil!42944) lt!1421030))))

(assert (=> d!1187658 (= (++!11236 lt!1421030 suffix!1299) lt!1421315)))

(assert (= (and d!1187658 c!693666) b!4012435))

(assert (= (and d!1187658 (not c!693666)) b!4012436))

(assert (= (and d!1187658 res!1631307) b!4012437))

(assert (= (and b!4012437 res!1631308) b!4012438))

(declare-fun m!4598599 () Bool)

(assert (=> b!4012436 m!4598599))

(declare-fun m!4598601 () Bool)

(assert (=> b!4012437 m!4598601))

(declare-fun m!4598603 () Bool)

(assert (=> b!4012437 m!4598603))

(assert (=> b!4012437 m!4597545))

(declare-fun m!4598605 () Bool)

(assert (=> d!1187658 m!4598605))

(declare-fun m!4598607 () Bool)

(assert (=> d!1187658 m!4598607))

(assert (=> d!1187658 m!4598587))

(assert (=> b!4011774 d!1187658))

(declare-fun b!4012439 () Bool)

(declare-fun e!2488499 () List!43068)

(assert (=> b!4012439 (= e!2488499 suffix!1299)))

(declare-fun lt!1421316 () List!43068)

(declare-fun e!2488498 () Bool)

(declare-fun b!4012442 () Bool)

(assert (=> b!4012442 (= e!2488498 (or (not (= suffix!1299 Nil!42944)) (= lt!1421316 lt!1421023)))))

(declare-fun b!4012440 () Bool)

(assert (=> b!4012440 (= e!2488499 (Cons!42944 (h!48364 lt!1421023) (++!11236 (t!332999 lt!1421023) suffix!1299)))))

(declare-fun b!4012441 () Bool)

(declare-fun res!1631310 () Bool)

(assert (=> b!4012441 (=> (not res!1631310) (not e!2488498))))

(assert (=> b!4012441 (= res!1631310 (= (size!32110 lt!1421316) (+ (size!32110 lt!1421023) (size!32110 suffix!1299))))))

(declare-fun d!1187660 () Bool)

(assert (=> d!1187660 e!2488498))

(declare-fun res!1631309 () Bool)

(assert (=> d!1187660 (=> (not res!1631309) (not e!2488498))))

(assert (=> d!1187660 (= res!1631309 (= (content!6512 lt!1421316) ((_ map or) (content!6512 lt!1421023) (content!6512 suffix!1299))))))

(assert (=> d!1187660 (= lt!1421316 e!2488499)))

(declare-fun c!693667 () Bool)

(assert (=> d!1187660 (= c!693667 ((_ is Nil!42944) lt!1421023))))

(assert (=> d!1187660 (= (++!11236 lt!1421023 suffix!1299) lt!1421316)))

(assert (= (and d!1187660 c!693667) b!4012439))

(assert (= (and d!1187660 (not c!693667)) b!4012440))

(assert (= (and d!1187660 res!1631309) b!4012441))

(assert (= (and b!4012441 res!1631310) b!4012442))

(declare-fun m!4598609 () Bool)

(assert (=> b!4012440 m!4598609))

(declare-fun m!4598611 () Bool)

(assert (=> b!4012441 m!4598611))

(assert (=> b!4012441 m!4598455))

(assert (=> b!4012441 m!4597545))

(declare-fun m!4598613 () Bool)

(assert (=> d!1187660 m!4598613))

(assert (=> d!1187660 m!4598459))

(assert (=> d!1187660 m!4598587))

(assert (=> b!4011774 d!1187660))

(declare-fun d!1187662 () Bool)

(assert (=> d!1187662 (= (++!11236 (++!11236 lt!1421037 lt!1421023) suffix!1299) (++!11236 lt!1421037 (++!11236 lt!1421023 suffix!1299)))))

(declare-fun lt!1421317 () Unit!61970)

(assert (=> d!1187662 (= lt!1421317 (choose!24240 lt!1421037 lt!1421023 suffix!1299))))

(assert (=> d!1187662 (= (lemmaConcatAssociativity!2546 lt!1421037 lt!1421023 suffix!1299) lt!1421317)))

(declare-fun bs!589412 () Bool)

(assert (= bs!589412 d!1187662))

(assert (=> bs!589412 m!4597493))

(assert (=> bs!589412 m!4597493))

(declare-fun m!4598615 () Bool)

(assert (=> bs!589412 m!4598615))

(assert (=> bs!589412 m!4597529))

(assert (=> bs!589412 m!4597529))

(declare-fun m!4598617 () Bool)

(assert (=> bs!589412 m!4598617))

(declare-fun m!4598619 () Bool)

(assert (=> bs!589412 m!4598619))

(assert (=> b!4011774 d!1187662))

(declare-fun d!1187664 () Bool)

(assert (=> d!1187664 (= (inv!57356 (tag!7694 (rule!9878 token!484))) (= (mod (str.len (value!215402 (tag!7694 (rule!9878 token!484)))) 2) 0))))

(assert (=> b!4011775 d!1187664))

(declare-fun d!1187666 () Bool)

(declare-fun res!1631311 () Bool)

(declare-fun e!2488500 () Bool)

(assert (=> d!1187666 (=> (not res!1631311) (not e!2488500))))

(assert (=> d!1187666 (= res!1631311 (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))))))

(assert (=> d!1187666 (= (inv!57360 (transformation!6834 (rule!9878 token!484))) e!2488500)))

(declare-fun b!4012443 () Bool)

(assert (=> b!4012443 (= e!2488500 (equivClasses!2824 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))))))

(assert (= (and d!1187666 res!1631311) b!4012443))

(assert (=> d!1187666 m!4597875))

(assert (=> b!4012443 m!4597877))

(assert (=> b!4011775 d!1187666))

(declare-fun b!4012448 () Bool)

(declare-fun e!2488503 () Bool)

(declare-fun tp!1220495 () Bool)

(assert (=> b!4012448 (= e!2488503 (and tp_is_empty!20449 tp!1220495))))

(assert (=> b!4011778 (= tp!1220438 e!2488503)))

(assert (= (and b!4011778 ((_ is Cons!42944) (t!332999 suffix!1299))) b!4012448))

(declare-fun b!4012449 () Bool)

(declare-fun e!2488504 () Bool)

(declare-fun tp!1220496 () Bool)

(assert (=> b!4012449 (= e!2488504 (and tp_is_empty!20449 tp!1220496))))

(assert (=> b!4011763 (= tp!1220441 e!2488504)))

(assert (= (and b!4011763 ((_ is Cons!42944) (t!332999 newSuffix!27))) b!4012449))

(declare-fun b!4012460 () Bool)

(declare-fun b_free!111621 () Bool)

(declare-fun b_next!112325 () Bool)

(assert (=> b!4012460 (= b_free!111621 (not b_next!112325))))

(declare-fun tb!241225 () Bool)

(declare-fun t!333044 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333044) tb!241225))

(declare-fun result!292376 () Bool)

(assert (= result!292376 result!292352))

(assert (=> d!1187588 t!333044))

(declare-fun t!333046 () Bool)

(declare-fun tb!241227 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333046) tb!241227))

(declare-fun result!292378 () Bool)

(assert (= result!292378 result!292368))

(assert (=> d!1187642 t!333046))

(declare-fun b_and!308235 () Bool)

(declare-fun tp!1220508 () Bool)

(assert (=> b!4012460 (= tp!1220508 (and (=> t!333044 result!292376) (=> t!333046 result!292378) b_and!308235))))

(declare-fun b_free!111623 () Bool)

(declare-fun b_next!112327 () Bool)

(assert (=> b!4012460 (= b_free!111623 (not b_next!112327))))

(declare-fun t!333048 () Bool)

(declare-fun tb!241229 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333048) tb!241229))

(declare-fun result!292380 () Bool)

(assert (= result!292380 result!292358))

(assert (=> d!1187590 t!333048))

(declare-fun tb!241231 () Bool)

(declare-fun t!333050 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333050) tb!241231))

(declare-fun result!292382 () Bool)

(assert (= result!292382 result!292364))

(assert (=> d!1187610 t!333050))

(assert (=> b!4012337 t!333050))

(declare-fun b_and!308237 () Bool)

(declare-fun tp!1220505 () Bool)

(assert (=> b!4012460 (= tp!1220505 (and (=> t!333048 result!292380) (=> t!333050 result!292382) b_and!308237))))

(declare-fun e!2488514 () Bool)

(assert (=> b!4012460 (= e!2488514 (and tp!1220508 tp!1220505))))

(declare-fun tp!1220507 () Bool)

(declare-fun e!2488513 () Bool)

(declare-fun b!4012459 () Bool)

(assert (=> b!4012459 (= e!2488513 (and tp!1220507 (inv!57356 (tag!7694 (h!48366 (t!333001 rules!2999)))) (inv!57360 (transformation!6834 (h!48366 (t!333001 rules!2999)))) e!2488514))))

(declare-fun b!4012458 () Bool)

(declare-fun e!2488516 () Bool)

(declare-fun tp!1220506 () Bool)

(assert (=> b!4012458 (= e!2488516 (and e!2488513 tp!1220506))))

(assert (=> b!4011752 (= tp!1220432 e!2488516)))

(assert (= b!4012459 b!4012460))

(assert (= b!4012458 b!4012459))

(assert (= (and b!4011752 ((_ is Cons!42946) (t!333001 rules!2999))) b!4012458))

(declare-fun m!4598621 () Bool)

(assert (=> b!4012459 m!4598621))

(declare-fun m!4598623 () Bool)

(assert (=> b!4012459 m!4598623))

(declare-fun b!4012461 () Bool)

(declare-fun e!2488517 () Bool)

(declare-fun tp!1220509 () Bool)

(assert (=> b!4012461 (= e!2488517 (and tp_is_empty!20449 tp!1220509))))

(assert (=> b!4011750 (= tp!1220444 e!2488517)))

(assert (= (and b!4011750 ((_ is Cons!42944) (t!332999 newSuffixResult!27))) b!4012461))

(declare-fun b!4012462 () Bool)

(declare-fun e!2488518 () Bool)

(declare-fun tp!1220510 () Bool)

(assert (=> b!4012462 (= e!2488518 (and tp_is_empty!20449 tp!1220510))))

(assert (=> b!4011767 (= tp!1220436 e!2488518)))

(assert (= (and b!4011767 ((_ is Cons!42944) (t!332999 suffixResult!105))) b!4012462))

(declare-fun b!4012463 () Bool)

(declare-fun e!2488519 () Bool)

(declare-fun tp!1220511 () Bool)

(assert (=> b!4012463 (= e!2488519 (and tp_is_empty!20449 tp!1220511))))

(assert (=> b!4011749 (= tp!1220434 e!2488519)))

(assert (= (and b!4011749 ((_ is Cons!42944) (originalCharacters!7434 token!484))) b!4012463))

(declare-fun b!4012477 () Bool)

(declare-fun e!2488522 () Bool)

(declare-fun tp!1220525 () Bool)

(declare-fun tp!1220522 () Bool)

(assert (=> b!4012477 (= e!2488522 (and tp!1220525 tp!1220522))))

(declare-fun b!4012476 () Bool)

(declare-fun tp!1220524 () Bool)

(assert (=> b!4012476 (= e!2488522 tp!1220524)))

(assert (=> b!4011770 (= tp!1220442 e!2488522)))

(declare-fun b!4012475 () Bool)

(declare-fun tp!1220523 () Bool)

(declare-fun tp!1220526 () Bool)

(assert (=> b!4012475 (= e!2488522 (and tp!1220523 tp!1220526))))

(declare-fun b!4012474 () Bool)

(assert (=> b!4012474 (= e!2488522 tp_is_empty!20449)))

(assert (= (and b!4011770 ((_ is ElementMatch!11739) (regex!6834 (h!48366 rules!2999)))) b!4012474))

(assert (= (and b!4011770 ((_ is Concat!18804) (regex!6834 (h!48366 rules!2999)))) b!4012475))

(assert (= (and b!4011770 ((_ is Star!11739) (regex!6834 (h!48366 rules!2999)))) b!4012476))

(assert (= (and b!4011770 ((_ is Union!11739) (regex!6834 (h!48366 rules!2999)))) b!4012477))

(declare-fun b!4012481 () Bool)

(declare-fun e!2488523 () Bool)

(declare-fun tp!1220530 () Bool)

(declare-fun tp!1220527 () Bool)

(assert (=> b!4012481 (= e!2488523 (and tp!1220530 tp!1220527))))

(declare-fun b!4012480 () Bool)

(declare-fun tp!1220529 () Bool)

(assert (=> b!4012480 (= e!2488523 tp!1220529)))

(assert (=> b!4011775 (= tp!1220433 e!2488523)))

(declare-fun b!4012479 () Bool)

(declare-fun tp!1220528 () Bool)

(declare-fun tp!1220531 () Bool)

(assert (=> b!4012479 (= e!2488523 (and tp!1220528 tp!1220531))))

(declare-fun b!4012478 () Bool)

(assert (=> b!4012478 (= e!2488523 tp_is_empty!20449)))

(assert (= (and b!4011775 ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484)))) b!4012478))

(assert (= (and b!4011775 ((_ is Concat!18804) (regex!6834 (rule!9878 token!484)))) b!4012479))

(assert (= (and b!4011775 ((_ is Star!11739) (regex!6834 (rule!9878 token!484)))) b!4012480))

(assert (= (and b!4011775 ((_ is Union!11739) (regex!6834 (rule!9878 token!484)))) b!4012481))

(declare-fun b!4012482 () Bool)

(declare-fun e!2488524 () Bool)

(declare-fun tp!1220532 () Bool)

(assert (=> b!4012482 (= e!2488524 (and tp_is_empty!20449 tp!1220532))))

(assert (=> b!4011764 (= tp!1220435 e!2488524)))

(assert (= (and b!4011764 ((_ is Cons!42944) (t!332999 prefix!494))) b!4012482))

(declare-fun b_lambda!117077 () Bool)

(assert (= b_lambda!117075 (or (and b!4011777 b_free!111609 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111613) (and b!4012460 b_free!111621 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) b_lambda!117077)))

(declare-fun b_lambda!117079 () Bool)

(assert (= b_lambda!117073 (or (and b!4011777 b_free!111611 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111615) (and b!4012460 b_free!111623 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) b_lambda!117079)))

(declare-fun b_lambda!117081 () Bool)

(assert (= b_lambda!117071 (or (and b!4011777 b_free!111611 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111615) (and b!4012460 b_free!111623 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) b_lambda!117081)))

(check-sat (not d!1187620) (not b!4012354) (not b!4012362) (not d!1187534) (not b!4012331) (not b!4011961) (not b_lambda!117069) (not b!4012417) (not b!4012418) (not b!4011949) (not b!4012337) (not tb!241209) (not b!4012480) (not b!4012428) (not d!1187630) (not b!4012065) (not d!1187524) (not b!4012341) (not b!4011960) (not d!1187530) (not b_next!112325) (not d!1187392) (not b!4012089) (not b!4012305) (not d!1187436) (not b_lambda!117079) (not b!4012481) (not b!4011937) (not tb!241213) (not bm!286390) (not b!4012069) (not d!1187600) (not b!4012365) (not b!4011950) (not b!4012448) (not b!4012432) (not d!1187416) (not d!1187616) (not b!4011948) (not b!4012107) (not b!4012005) (not b!4012324) (not b!4012318) (not b!4012421) (not b!4012120) (not b!4012127) (not b!4011995) (not b_lambda!117081) b_and!308233 (not d!1187594) (not b!4012286) (not b!4011996) (not b!4012367) (not d!1187510) (not d!1187610) (not d!1187654) (not b!4012141) (not d!1187414) (not d!1187650) (not b!4012358) (not b!4011921) (not b!4012426) (not b!4012441) (not d!1187516) (not d!1187584) (not b!4012119) (not d!1187424) b_and!308237 (not b!4012143) b_and!308235 (not b!4012370) (not b!4012351) (not d!1187640) (not b!4012289) (not b!4012064) (not b!4012348) (not b!4012117) (not b_next!112313) (not d!1187652) (not b!4012371) (not d!1187432) (not d!1187658) (not b!4012476) (not tb!241221) (not b!4012369) (not d!1187488) (not b!4012443) (not d!1187370) (not b!4012400) (not b!4012462) (not b!4011997) (not b!4012284) (not b!4012440) (not b!4011962) (not d!1187612) (not b!4012142) (not b!4012461) (not b!4012406) (not d!1187634) (not b!4012338) (not d!1187526) (not b!4012113) (not d!1187434) (not d!1187638) (not b!4011964) (not b_next!112319) (not b!4012458) (not b_next!112317) (not b_lambda!117077) (not b!4012355) (not b!4012479) (not b!4012282) (not b!4012345) (not b!4012429) (not b!4012288) (not b!4012433) (not d!1187448) b_and!308229 (not b!4011974) (not b!4012088) (not b!4012361) (not b!4012412) (not b!4011920) (not b!4012327) (not b!4012283) (not d!1187590) (not d!1187512) (not d!1187444) (not b!4012303) (not b!4012001) (not d!1187400) (not b!4011956) (not b!4012000) (not b!4011958) (not d!1187618) (not d!1187506) (not b!4012070) (not d!1187644) (not bm!286391) tp_is_empty!20449 (not b!4012067) (not b!4011952) (not b!4012320) (not tb!241217) (not d!1187586) (not b!4012344) (not b!4011930) (not b!4012087) (not b!4012477) b_and!308227 (not b!4012419) (not b!4012321) (not d!1187648) (not b!4012300) (not b!4011954) (not b!4012329) (not b!4012420) (not b!4011953) (not b!4011957) (not d!1187608) (not d!1187662) (not b_lambda!117067) (not d!1187420) (not b!4012004) (not b!4012356) (not b!4012437) (not b!4012408) (not b!4012292) (not d!1187528) (not b!4012349) (not d!1187500) (not d!1187520) (not b!4011969) (not b!4012364) (not d!1187656) (not b!4012003) (not b!4012424) (not b!4012359) (not b!4012422) (not bm!286383) (not b!4012459) (not b!4012366) (not d!1187624) (not b!4012287) (not b!4012425) (not b!4012360) (not b!4012128) (not b!4012482) (not b!4012105) (not d!1187602) (not b!4011904) (not b!4012436) (not b!4012302) (not b!4011931) (not b!4012063) (not d!1187666) (not b_next!112327) (not b!4012332) (not b!4012281) (not b!4012066) b_and!308231 (not b!4012340) (not d!1187592) (not b!4012291) (not b!4012463) (not d!1187430) (not b!4012404) (not b!4012071) (not d!1187636) (not b!4012449) (not d!1187522) (not b!4012410) (not d!1187438) (not d!1187660) (not b!4011999) (not d!1187614) (not b!4012415) (not b_next!112315) (not b!4012416) (not b!4012293) (not b!4012475) (not b!4011965) (not b!4012115) (not b!4011905))
(check-sat (not b_next!112325) b_and!308233 b_and!308237 b_and!308235 (not b_next!112313) (not b_next!112319) (not b_next!112317) b_and!308229 b_and!308227 (not b_next!112327) b_and!308231 (not b_next!112315))
(get-model)

(assert (=> b!4012338 d!1187628))

(declare-fun b!4012547 () Bool)

(declare-fun e!2488563 () Bool)

(assert (=> b!4012547 (= e!2488563 (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun b!4012548 () Bool)

(declare-fun e!2488566 () Bool)

(declare-fun lt!1421337 () Bool)

(assert (=> b!4012548 (= e!2488566 (not lt!1421337))))

(declare-fun b!4012549 () Bool)

(declare-fun e!2488567 () Bool)

(declare-fun call!286397 () Bool)

(assert (=> b!4012549 (= e!2488567 (= lt!1421337 call!286397))))

(declare-fun b!4012550 () Bool)

(declare-fun e!2488568 () Bool)

(declare-fun e!2488569 () Bool)

(assert (=> b!4012550 (= e!2488568 e!2488569)))

(declare-fun res!1631344 () Bool)

(assert (=> b!4012550 (=> (not res!1631344) (not e!2488569))))

(assert (=> b!4012550 (= res!1631344 (not lt!1421337))))

(declare-fun b!4012551 () Bool)

(declare-fun res!1631341 () Bool)

(declare-fun e!2488564 () Bool)

(assert (=> b!4012551 (=> (not res!1631341) (not e!2488564))))

(assert (=> b!4012551 (= res!1631341 (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun b!4012552 () Bool)

(declare-fun res!1631343 () Bool)

(assert (=> b!4012552 (=> res!1631343 e!2488568)))

(assert (=> b!4012552 (= res!1631343 e!2488564)))

(declare-fun res!1631342 () Bool)

(assert (=> b!4012552 (=> (not res!1631342) (not e!2488564))))

(assert (=> b!4012552 (= res!1631342 lt!1421337)))

(declare-fun b!4012553 () Bool)

(assert (=> b!4012553 (= e!2488564 (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun b!4012554 () Bool)

(declare-fun res!1631346 () Bool)

(assert (=> b!4012554 (=> res!1631346 e!2488568)))

(assert (=> b!4012554 (= res!1631346 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))))

(assert (=> b!4012554 (= e!2488566 e!2488568)))

(declare-fun b!4012555 () Bool)

(declare-fun res!1631340 () Bool)

(declare-fun e!2488565 () Bool)

(assert (=> b!4012555 (=> res!1631340 e!2488565)))

(assert (=> b!4012555 (= res!1631340 (not (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))))

(declare-fun b!4012556 () Bool)

(assert (=> b!4012556 (= e!2488567 e!2488566)))

(declare-fun c!693688 () Bool)

(assert (=> b!4012556 (= c!693688 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun d!1187726 () Bool)

(assert (=> d!1187726 e!2488567))

(declare-fun c!693686 () Bool)

(assert (=> d!1187726 (= c!693686 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))))))

(assert (=> d!1187726 (= lt!1421337 e!2488563)))

(declare-fun c!693687 () Bool)

(assert (=> d!1187726 (= c!693687 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))

(assert (=> d!1187726 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))

(assert (=> d!1187726 (= (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) lt!1421337)))

(declare-fun b!4012557 () Bool)

(assert (=> b!4012557 (= e!2488563 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))))) (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun bm!286392 () Bool)

(assert (=> bm!286392 (= call!286397 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun b!4012558 () Bool)

(declare-fun res!1631347 () Bool)

(assert (=> b!4012558 (=> (not res!1631347) (not e!2488564))))

(assert (=> b!4012558 (= res!1631347 (not call!286397))))

(declare-fun b!4012559 () Bool)

(assert (=> b!4012559 (= e!2488565 (not (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))))))))

(declare-fun b!4012560 () Bool)

(assert (=> b!4012560 (= e!2488569 e!2488565)))

(declare-fun res!1631345 () Bool)

(assert (=> b!4012560 (=> res!1631345 e!2488565)))

(assert (=> b!4012560 (= res!1631345 call!286397)))

(assert (= (and d!1187726 c!693687) b!4012547))

(assert (= (and d!1187726 (not c!693687)) b!4012557))

(assert (= (and d!1187726 c!693686) b!4012549))

(assert (= (and d!1187726 (not c!693686)) b!4012556))

(assert (= (and b!4012556 c!693688) b!4012548))

(assert (= (and b!4012556 (not c!693688)) b!4012554))

(assert (= (and b!4012554 (not res!1631346)) b!4012552))

(assert (= (and b!4012552 res!1631342) b!4012558))

(assert (= (and b!4012558 res!1631347) b!4012551))

(assert (= (and b!4012551 res!1631341) b!4012553))

(assert (= (and b!4012552 (not res!1631343)) b!4012550))

(assert (= (and b!4012550 res!1631344) b!4012560))

(assert (= (and b!4012560 (not res!1631345)) b!4012555))

(assert (= (and b!4012555 (not res!1631340)) b!4012559))

(assert (= (or b!4012549 b!4012558 b!4012560) bm!286392))

(assert (=> b!4012559 m!4598053))

(declare-fun m!4598745 () Bool)

(assert (=> b!4012559 m!4598745))

(assert (=> bm!286392 m!4598053))

(declare-fun m!4598747 () Bool)

(assert (=> bm!286392 m!4598747))

(assert (=> b!4012555 m!4598053))

(declare-fun m!4598749 () Bool)

(assert (=> b!4012555 m!4598749))

(assert (=> b!4012555 m!4598749))

(declare-fun m!4598751 () Bool)

(assert (=> b!4012555 m!4598751))

(assert (=> b!4012553 m!4598053))

(assert (=> b!4012553 m!4598745))

(declare-fun m!4598753 () Bool)

(assert (=> b!4012547 m!4598753))

(assert (=> b!4012551 m!4598053))

(assert (=> b!4012551 m!4598749))

(assert (=> b!4012551 m!4598749))

(assert (=> b!4012551 m!4598751))

(assert (=> b!4012557 m!4598053))

(assert (=> b!4012557 m!4598745))

(assert (=> b!4012557 m!4598745))

(declare-fun m!4598755 () Bool)

(assert (=> b!4012557 m!4598755))

(assert (=> b!4012557 m!4598053))

(assert (=> b!4012557 m!4598749))

(assert (=> b!4012557 m!4598755))

(assert (=> b!4012557 m!4598749))

(declare-fun m!4598757 () Bool)

(assert (=> b!4012557 m!4598757))

(assert (=> d!1187726 m!4598053))

(assert (=> d!1187726 m!4598747))

(declare-fun m!4598759 () Bool)

(assert (=> d!1187726 m!4598759))

(assert (=> b!4012066 d!1187726))

(declare-fun d!1187728 () Bool)

(assert (=> d!1187728 (= (get!14111 lt!1421199) (v!39615 lt!1421199))))

(assert (=> b!4012066 d!1187728))

(declare-fun d!1187730 () Bool)

(assert (=> d!1187730 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))) (list!15962 (c!693562 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun bs!589417 () Bool)

(assert (= bs!589417 d!1187730))

(declare-fun m!4598761 () Bool)

(assert (=> bs!589417 m!4598761))

(assert (=> b!4012066 d!1187730))

(declare-fun d!1187732 () Bool)

(declare-fun lt!1421338 () BalanceConc!25684)

(assert (=> d!1187732 (= (list!15960 lt!1421338) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199))))))

(assert (=> d!1187732 (= lt!1421338 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))) (value!215403 (_1!24179 (get!14111 lt!1421199)))))))

(assert (=> d!1187732 (= (charsOf!4650 (_1!24179 (get!14111 lt!1421199))) lt!1421338)))

(declare-fun b_lambda!117083 () Bool)

(assert (=> (not b_lambda!117083) (not d!1187732)))

(declare-fun tb!241233 () Bool)

(declare-fun t!333053 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333053) tb!241233))

(declare-fun b!4012561 () Bool)

(declare-fun e!2488570 () Bool)

(declare-fun tp!1220533 () Bool)

(assert (=> b!4012561 (= e!2488570 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))) (value!215403 (_1!24179 (get!14111 lt!1421199)))))) tp!1220533))))

(declare-fun result!292386 () Bool)

(assert (=> tb!241233 (= result!292386 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))) (value!215403 (_1!24179 (get!14111 lt!1421199))))) e!2488570))))

(assert (= tb!241233 b!4012561))

(declare-fun m!4598763 () Bool)

(assert (=> b!4012561 m!4598763))

(declare-fun m!4598765 () Bool)

(assert (=> tb!241233 m!4598765))

(assert (=> d!1187732 t!333053))

(declare-fun b_and!308239 () Bool)

(assert (= b_and!308227 (and (=> t!333053 result!292386) b_and!308239)))

(declare-fun tb!241235 () Bool)

(declare-fun t!333055 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333055) tb!241235))

(declare-fun result!292388 () Bool)

(assert (= result!292388 result!292386))

(assert (=> d!1187732 t!333055))

(declare-fun b_and!308241 () Bool)

(assert (= b_and!308229 (and (=> t!333055 result!292388) b_and!308241)))

(declare-fun t!333057 () Bool)

(declare-fun tb!241237 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333057) tb!241237))

(declare-fun result!292390 () Bool)

(assert (= result!292390 result!292386))

(assert (=> d!1187732 t!333057))

(declare-fun b_and!308243 () Bool)

(assert (= b_and!308237 (and (=> t!333057 result!292390) b_and!308243)))

(declare-fun m!4598767 () Bool)

(assert (=> d!1187732 m!4598767))

(declare-fun m!4598769 () Bool)

(assert (=> d!1187732 m!4598769))

(assert (=> b!4012066 d!1187732))

(declare-fun bm!286399 () Bool)

(declare-fun call!286406 () Bool)

(declare-fun call!286404 () Bool)

(assert (=> bm!286399 (= call!286406 call!286404)))

(declare-fun b!4012580 () Bool)

(declare-fun e!2488591 () Bool)

(declare-fun call!286405 () Bool)

(assert (=> b!4012580 (= e!2488591 call!286405)))

(declare-fun b!4012581 () Bool)

(declare-fun res!1631358 () Bool)

(declare-fun e!2488588 () Bool)

(assert (=> b!4012581 (=> res!1631358 e!2488588)))

(assert (=> b!4012581 (= res!1631358 (not ((_ is Concat!18804) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun e!2488590 () Bool)

(assert (=> b!4012581 (= e!2488590 e!2488588)))

(declare-fun bm!286401 () Bool)

(declare-fun c!693693 () Bool)

(assert (=> bm!286401 (= call!286405 (validRegex!5317 (ite c!693693 (regTwo!23991 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (regTwo!23990 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))))

(declare-fun b!4012582 () Bool)

(declare-fun e!2488585 () Bool)

(assert (=> b!4012582 (= e!2488588 e!2488585)))

(declare-fun res!1631362 () Bool)

(assert (=> b!4012582 (=> (not res!1631362) (not e!2488585))))

(assert (=> b!4012582 (= res!1631362 call!286406)))

(declare-fun b!4012583 () Bool)

(assert (=> b!4012583 (= e!2488585 call!286405)))

(declare-fun b!4012584 () Bool)

(declare-fun res!1631360 () Bool)

(assert (=> b!4012584 (=> (not res!1631360) (not e!2488591))))

(assert (=> b!4012584 (= res!1631360 call!286406)))

(assert (=> b!4012584 (= e!2488590 e!2488591)))

(declare-fun b!4012585 () Bool)

(declare-fun e!2488589 () Bool)

(assert (=> b!4012585 (= e!2488589 e!2488590)))

(assert (=> b!4012585 (= c!693693 ((_ is Union!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4012586 () Bool)

(declare-fun e!2488586 () Bool)

(assert (=> b!4012586 (= e!2488586 e!2488589)))

(declare-fun c!693694 () Bool)

(assert (=> b!4012586 (= c!693694 ((_ is Star!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun d!1187734 () Bool)

(declare-fun res!1631361 () Bool)

(assert (=> d!1187734 (=> res!1631361 e!2488586)))

(assert (=> d!1187734 (= res!1631361 ((_ is ElementMatch!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1187734 (= (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) e!2488586)))

(declare-fun bm!286400 () Bool)

(assert (=> bm!286400 (= call!286404 (validRegex!5317 (ite c!693694 (reg!12068 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (ite c!693693 (regOne!23991 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (regOne!23990 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))))

(declare-fun b!4012587 () Bool)

(declare-fun e!2488587 () Bool)

(assert (=> b!4012587 (= e!2488587 call!286404)))

(declare-fun b!4012588 () Bool)

(assert (=> b!4012588 (= e!2488589 e!2488587)))

(declare-fun res!1631359 () Bool)

(assert (=> b!4012588 (= res!1631359 (not (nullable!4117 (reg!12068 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))))

(assert (=> b!4012588 (=> (not res!1631359) (not e!2488587))))

(assert (= (and d!1187734 (not res!1631361)) b!4012586))

(assert (= (and b!4012586 c!693694) b!4012588))

(assert (= (and b!4012586 (not c!693694)) b!4012585))

(assert (= (and b!4012588 res!1631359) b!4012587))

(assert (= (and b!4012585 c!693693) b!4012584))

(assert (= (and b!4012585 (not c!693693)) b!4012581))

(assert (= (and b!4012584 res!1631360) b!4012580))

(assert (= (and b!4012581 (not res!1631358)) b!4012582))

(assert (= (and b!4012582 res!1631362) b!4012583))

(assert (= (or b!4012580 b!4012583) bm!286401))

(assert (= (or b!4012584 b!4012582) bm!286399))

(assert (= (or b!4012587 bm!286399) bm!286400))

(declare-fun m!4598771 () Bool)

(assert (=> bm!286401 m!4598771))

(declare-fun m!4598773 () Bool)

(assert (=> bm!286400 m!4598773))

(declare-fun m!4598775 () Bool)

(assert (=> b!4012588 m!4598775))

(assert (=> d!1187506 d!1187734))

(declare-fun d!1187736 () Bool)

(declare-fun lt!1421339 () Int)

(assert (=> d!1187736 (>= lt!1421339 0)))

(declare-fun e!2488592 () Int)

(assert (=> d!1187736 (= lt!1421339 e!2488592)))

(declare-fun c!693695 () Bool)

(assert (=> d!1187736 (= c!693695 ((_ is Nil!42944) (t!332999 prefix!494)))))

(assert (=> d!1187736 (= (size!32110 (t!332999 prefix!494)) lt!1421339)))

(declare-fun b!4012589 () Bool)

(assert (=> b!4012589 (= e!2488592 0)))

(declare-fun b!4012590 () Bool)

(assert (=> b!4012590 (= e!2488592 (+ 1 (size!32110 (t!332999 (t!332999 prefix!494)))))))

(assert (= (and d!1187736 c!693695) b!4012589))

(assert (= (and d!1187736 (not c!693695)) b!4012590))

(declare-fun m!4598777 () Bool)

(assert (=> b!4012590 m!4598777))

(assert (=> b!4012331 d!1187736))

(declare-fun d!1187738 () Bool)

(declare-fun c!693698 () Bool)

(assert (=> d!1187738 (= c!693698 ((_ is Nil!42944) lt!1421314))))

(declare-fun e!2488595 () (InoxSet C!23664))

(assert (=> d!1187738 (= (content!6512 lt!1421314) e!2488595)))

(declare-fun b!4012595 () Bool)

(assert (=> b!4012595 (= e!2488595 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012596 () Bool)

(assert (=> b!4012596 (= e!2488595 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421314) true) (content!6512 (t!332999 lt!1421314))))))

(assert (= (and d!1187738 c!693698) b!4012595))

(assert (= (and d!1187738 (not c!693698)) b!4012596))

(declare-fun m!4598779 () Bool)

(assert (=> b!4012596 m!4598779))

(declare-fun m!4598781 () Bool)

(assert (=> b!4012596 m!4598781))

(assert (=> d!1187656 d!1187738))

(declare-fun d!1187740 () Bool)

(declare-fun c!693699 () Bool)

(assert (=> d!1187740 (= c!693699 ((_ is Nil!42944) lt!1421037))))

(declare-fun e!2488596 () (InoxSet C!23664))

(assert (=> d!1187740 (= (content!6512 lt!1421037) e!2488596)))

(declare-fun b!4012597 () Bool)

(assert (=> b!4012597 (= e!2488596 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012598 () Bool)

(assert (=> b!4012598 (= e!2488596 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421037) true) (content!6512 (t!332999 lt!1421037))))))

(assert (= (and d!1187740 c!693699) b!4012597))

(assert (= (and d!1187740 (not c!693699)) b!4012598))

(declare-fun m!4598783 () Bool)

(assert (=> b!4012598 m!4598783))

(declare-fun m!4598785 () Bool)

(assert (=> b!4012598 m!4598785))

(assert (=> d!1187656 d!1187740))

(declare-fun d!1187742 () Bool)

(declare-fun c!693700 () Bool)

(assert (=> d!1187742 (= c!693700 ((_ is Nil!42944) lt!1421061))))

(declare-fun e!2488597 () (InoxSet C!23664))

(assert (=> d!1187742 (= (content!6512 lt!1421061) e!2488597)))

(declare-fun b!4012599 () Bool)

(assert (=> b!4012599 (= e!2488597 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012600 () Bool)

(assert (=> b!4012600 (= e!2488597 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421061) true) (content!6512 (t!332999 lt!1421061))))))

(assert (= (and d!1187742 c!693700) b!4012599))

(assert (= (and d!1187742 (not c!693700)) b!4012600))

(declare-fun m!4598787 () Bool)

(assert (=> b!4012600 m!4598787))

(declare-fun m!4598789 () Bool)

(assert (=> b!4012600 m!4598789))

(assert (=> d!1187656 d!1187742))

(declare-fun d!1187744 () Bool)

(declare-fun e!2488600 () Bool)

(assert (=> d!1187744 e!2488600))

(declare-fun res!1631365 () Bool)

(assert (=> d!1187744 (=> res!1631365 e!2488600)))

(declare-fun lt!1421340 () Bool)

(assert (=> d!1187744 (= res!1631365 (not lt!1421340))))

(declare-fun e!2488598 () Bool)

(assert (=> d!1187744 (= lt!1421340 e!2488598)))

(declare-fun res!1631363 () Bool)

(assert (=> d!1187744 (=> res!1631363 e!2488598)))

(assert (=> d!1187744 (= res!1631363 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1187744 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 prefix!494)) lt!1421340)))

(declare-fun b!4012602 () Bool)

(declare-fun res!1631366 () Bool)

(declare-fun e!2488599 () Bool)

(assert (=> b!4012602 (=> (not res!1631366) (not e!2488599))))

(assert (=> b!4012602 (= res!1631366 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 prefix!494))))))

(declare-fun b!4012603 () Bool)

(assert (=> b!4012603 (= e!2488599 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 prefix!494))))))

(declare-fun b!4012601 () Bool)

(assert (=> b!4012601 (= e!2488598 e!2488599)))

(declare-fun res!1631364 () Bool)

(assert (=> b!4012601 (=> (not res!1631364) (not e!2488599))))

(assert (=> b!4012601 (= res!1631364 (not ((_ is Nil!42944) (tail!6251 prefix!494))))))

(declare-fun b!4012604 () Bool)

(assert (=> b!4012604 (= e!2488600 (>= (size!32110 (tail!6251 prefix!494)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1187744 (not res!1631363)) b!4012601))

(assert (= (and b!4012601 res!1631364) b!4012602))

(assert (= (and b!4012602 res!1631366) b!4012603))

(assert (= (and d!1187744 (not res!1631365)) b!4012604))

(assert (=> b!4012602 m!4597839))

(declare-fun m!4598791 () Bool)

(assert (=> b!4012602 m!4598791))

(assert (=> b!4012602 m!4597857))

(declare-fun m!4598793 () Bool)

(assert (=> b!4012602 m!4598793))

(assert (=> b!4012603 m!4597839))

(declare-fun m!4598795 () Bool)

(assert (=> b!4012603 m!4598795))

(assert (=> b!4012603 m!4597857))

(declare-fun m!4598797 () Bool)

(assert (=> b!4012603 m!4598797))

(assert (=> b!4012603 m!4598795))

(assert (=> b!4012603 m!4598797))

(declare-fun m!4598799 () Bool)

(assert (=> b!4012603 m!4598799))

(assert (=> b!4012604 m!4597857))

(declare-fun m!4598801 () Bool)

(assert (=> b!4012604 m!4598801))

(assert (=> b!4012604 m!4597839))

(declare-fun m!4598803 () Bool)

(assert (=> b!4012604 m!4598803))

(assert (=> b!4012355 d!1187744))

(declare-fun d!1187746 () Bool)

(assert (=> d!1187746 (= (tail!6251 lt!1421037) (t!332999 lt!1421037))))

(assert (=> b!4012355 d!1187746))

(declare-fun d!1187748 () Bool)

(assert (=> d!1187748 (= (tail!6251 prefix!494) (t!332999 prefix!494))))

(assert (=> b!4012355 d!1187748))

(declare-fun d!1187750 () Bool)

(declare-fun nullableFct!1149 (Regex!11739) Bool)

(assert (=> d!1187750 (= (nullable!4117 (regex!6834 (rule!9878 token!484))) (nullableFct!1149 (regex!6834 (rule!9878 token!484))))))

(declare-fun bs!589418 () Bool)

(assert (= bs!589418 d!1187750))

(declare-fun m!4598805 () Bool)

(assert (=> bs!589418 m!4598805))

(assert (=> b!4011974 d!1187750))

(declare-fun b!4012605 () Bool)

(declare-fun e!2488601 () Bool)

(assert (=> b!4012605 (= e!2488601 (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4012606 () Bool)

(declare-fun e!2488604 () Bool)

(declare-fun lt!1421341 () Bool)

(assert (=> b!4012606 (= e!2488604 (not lt!1421341))))

(declare-fun b!4012607 () Bool)

(declare-fun e!2488605 () Bool)

(declare-fun call!286407 () Bool)

(assert (=> b!4012607 (= e!2488605 (= lt!1421341 call!286407))))

(declare-fun b!4012608 () Bool)

(declare-fun e!2488606 () Bool)

(declare-fun e!2488607 () Bool)

(assert (=> b!4012608 (= e!2488606 e!2488607)))

(declare-fun res!1631371 () Bool)

(assert (=> b!4012608 (=> (not res!1631371) (not e!2488607))))

(assert (=> b!4012608 (= res!1631371 (not lt!1421341))))

(declare-fun b!4012609 () Bool)

(declare-fun res!1631368 () Bool)

(declare-fun e!2488602 () Bool)

(assert (=> b!4012609 (=> (not res!1631368) (not e!2488602))))

(assert (=> b!4012609 (= res!1631368 (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))))))))

(declare-fun b!4012610 () Bool)

(declare-fun res!1631370 () Bool)

(assert (=> b!4012610 (=> res!1631370 e!2488606)))

(assert (=> b!4012610 (= res!1631370 e!2488602)))

(declare-fun res!1631369 () Bool)

(assert (=> b!4012610 (=> (not res!1631369) (not e!2488602))))

(assert (=> b!4012610 (= res!1631369 lt!1421341)))

(declare-fun b!4012611 () Bool)

(assert (=> b!4012611 (= e!2488602 (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun b!4012612 () Bool)

(declare-fun res!1631373 () Bool)

(assert (=> b!4012612 (=> res!1631373 e!2488606)))

(assert (=> b!4012612 (= res!1631373 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(assert (=> b!4012612 (= e!2488604 e!2488606)))

(declare-fun b!4012613 () Bool)

(declare-fun res!1631367 () Bool)

(declare-fun e!2488603 () Bool)

(assert (=> b!4012613 (=> res!1631367 e!2488603)))

(assert (=> b!4012613 (= res!1631367 (not (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))))

(declare-fun b!4012614 () Bool)

(assert (=> b!4012614 (= e!2488605 e!2488604)))

(declare-fun c!693703 () Bool)

(assert (=> b!4012614 (= c!693703 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun d!1187752 () Bool)

(assert (=> d!1187752 e!2488605))

(declare-fun c!693701 () Bool)

(assert (=> d!1187752 (= c!693701 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1187752 (= lt!1421341 e!2488601)))

(declare-fun c!693702 () Bool)

(assert (=> d!1187752 (= c!693702 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))

(assert (=> d!1187752 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1187752 (= (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) lt!1421341)))

(declare-fun b!4012615 () Bool)

(assert (=> b!4012615 (= e!2488601 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))))) (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))))))))

(declare-fun bm!286402 () Bool)

(assert (=> bm!286402 (= call!286407 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))

(declare-fun b!4012616 () Bool)

(declare-fun res!1631374 () Bool)

(assert (=> b!4012616 (=> (not res!1631374) (not e!2488602))))

(assert (=> b!4012616 (= res!1631374 (not call!286407))))

(declare-fun b!4012617 () Bool)

(assert (=> b!4012617 (= e!2488603 (not (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))))

(declare-fun b!4012618 () Bool)

(assert (=> b!4012618 (= e!2488607 e!2488603)))

(declare-fun res!1631372 () Bool)

(assert (=> b!4012618 (=> res!1631372 e!2488603)))

(assert (=> b!4012618 (= res!1631372 call!286407)))

(assert (= (and d!1187752 c!693702) b!4012605))

(assert (= (and d!1187752 (not c!693702)) b!4012615))

(assert (= (and d!1187752 c!693701) b!4012607))

(assert (= (and d!1187752 (not c!693701)) b!4012614))

(assert (= (and b!4012614 c!693703) b!4012606))

(assert (= (and b!4012614 (not c!693703)) b!4012612))

(assert (= (and b!4012612 (not res!1631373)) b!4012610))

(assert (= (and b!4012610 res!1631369) b!4012616))

(assert (= (and b!4012616 res!1631374) b!4012609))

(assert (= (and b!4012609 res!1631368) b!4012611))

(assert (= (and b!4012610 (not res!1631370)) b!4012608))

(assert (= (and b!4012608 res!1631371) b!4012618))

(assert (= (and b!4012618 (not res!1631372)) b!4012613))

(assert (= (and b!4012613 (not res!1631367)) b!4012617))

(assert (= (or b!4012607 b!4012616 b!4012618) bm!286402))

(assert (=> b!4012617 m!4598333))

(declare-fun m!4598807 () Bool)

(assert (=> b!4012617 m!4598807))

(assert (=> bm!286402 m!4598333))

(declare-fun m!4598809 () Bool)

(assert (=> bm!286402 m!4598809))

(assert (=> b!4012613 m!4598333))

(declare-fun m!4598811 () Bool)

(assert (=> b!4012613 m!4598811))

(assert (=> b!4012613 m!4598811))

(declare-fun m!4598813 () Bool)

(assert (=> b!4012613 m!4598813))

(assert (=> b!4012611 m!4598333))

(assert (=> b!4012611 m!4598807))

(assert (=> b!4012605 m!4598153))

(assert (=> b!4012609 m!4598333))

(assert (=> b!4012609 m!4598811))

(assert (=> b!4012609 m!4598811))

(assert (=> b!4012609 m!4598813))

(assert (=> b!4012615 m!4598333))

(assert (=> b!4012615 m!4598807))

(assert (=> b!4012615 m!4598807))

(declare-fun m!4598815 () Bool)

(assert (=> b!4012615 m!4598815))

(assert (=> b!4012615 m!4598333))

(assert (=> b!4012615 m!4598811))

(assert (=> b!4012615 m!4598815))

(assert (=> b!4012615 m!4598811))

(declare-fun m!4598817 () Bool)

(assert (=> b!4012615 m!4598817))

(assert (=> d!1187752 m!4598333))

(assert (=> d!1187752 m!4598809))

(assert (=> d!1187752 m!4598151))

(assert (=> b!4012283 d!1187752))

(declare-fun d!1187754 () Bool)

(assert (=> d!1187754 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))) (list!15962 (c!693562 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))

(declare-fun bs!589419 () Bool)

(assert (= bs!589419 d!1187754))

(declare-fun m!4598819 () Bool)

(assert (=> bs!589419 m!4598819))

(assert (=> b!4012283 d!1187754))

(declare-fun d!1187756 () Bool)

(declare-fun lt!1421342 () BalanceConc!25684)

(assert (=> d!1187756 (= (list!15960 lt!1421342) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266))))))

(assert (=> d!1187756 (= lt!1421342 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266))))) (value!215403 (_1!24179 (get!14111 lt!1421266)))))))

(assert (=> d!1187756 (= (charsOf!4650 (_1!24179 (get!14111 lt!1421266))) lt!1421342)))

(declare-fun b_lambda!117085 () Bool)

(assert (=> (not b_lambda!117085) (not d!1187756)))

(declare-fun t!333059 () Bool)

(declare-fun tb!241239 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333059) tb!241239))

(declare-fun b!4012619 () Bool)

(declare-fun e!2488608 () Bool)

(declare-fun tp!1220534 () Bool)

(assert (=> b!4012619 (= e!2488608 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266))))) (value!215403 (_1!24179 (get!14111 lt!1421266)))))) tp!1220534))))

(declare-fun result!292392 () Bool)

(assert (=> tb!241239 (= result!292392 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266))))) (value!215403 (_1!24179 (get!14111 lt!1421266))))) e!2488608))))

(assert (= tb!241239 b!4012619))

(declare-fun m!4598821 () Bool)

(assert (=> b!4012619 m!4598821))

(declare-fun m!4598823 () Bool)

(assert (=> tb!241239 m!4598823))

(assert (=> d!1187756 t!333059))

(declare-fun b_and!308245 () Bool)

(assert (= b_and!308239 (and (=> t!333059 result!292392) b_and!308245)))

(declare-fun tb!241241 () Bool)

(declare-fun t!333061 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333061) tb!241241))

(declare-fun result!292394 () Bool)

(assert (= result!292394 result!292392))

(assert (=> d!1187756 t!333061))

(declare-fun b_and!308247 () Bool)

(assert (= b_and!308241 (and (=> t!333061 result!292394) b_and!308247)))

(declare-fun tb!241243 () Bool)

(declare-fun t!333063 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333063) tb!241243))

(declare-fun result!292396 () Bool)

(assert (= result!292396 result!292392))

(assert (=> d!1187756 t!333063))

(declare-fun b_and!308249 () Bool)

(assert (= b_and!308243 (and (=> t!333063 result!292396) b_and!308249)))

(declare-fun m!4598825 () Bool)

(assert (=> d!1187756 m!4598825))

(declare-fun m!4598827 () Bool)

(assert (=> d!1187756 m!4598827))

(assert (=> b!4012283 d!1187756))

(declare-fun d!1187758 () Bool)

(assert (=> d!1187758 (= (get!14111 lt!1421266) (v!39615 lt!1421266))))

(assert (=> b!4012283 d!1187758))

(declare-fun d!1187760 () Bool)

(declare-fun lt!1421343 () Int)

(assert (=> d!1187760 (>= lt!1421343 0)))

(declare-fun e!2488609 () Int)

(assert (=> d!1187760 (= lt!1421343 e!2488609)))

(declare-fun c!693704 () Bool)

(assert (=> d!1187760 (= c!693704 ((_ is Nil!42944) lt!1421279))))

(assert (=> d!1187760 (= (size!32110 lt!1421279) lt!1421343)))

(declare-fun b!4012620 () Bool)

(assert (=> b!4012620 (= e!2488609 0)))

(declare-fun b!4012621 () Bool)

(assert (=> b!4012621 (= e!2488609 (+ 1 (size!32110 (t!332999 lt!1421279))))))

(assert (= (and d!1187760 c!693704) b!4012620))

(assert (= (and d!1187760 (not c!693704)) b!4012621))

(declare-fun m!4598829 () Bool)

(assert (=> b!4012621 m!4598829))

(assert (=> b!4012303 d!1187760))

(assert (=> b!4012303 d!1187504))

(declare-fun d!1187762 () Bool)

(declare-fun lt!1421344 () Int)

(assert (=> d!1187762 (>= lt!1421344 0)))

(declare-fun e!2488610 () Int)

(assert (=> d!1187762 (= lt!1421344 e!2488610)))

(declare-fun c!693705 () Bool)

(assert (=> d!1187762 (= c!693705 ((_ is Nil!42944) lt!1421018))))

(assert (=> d!1187762 (= (size!32110 lt!1421018) lt!1421344)))

(declare-fun b!4012622 () Bool)

(assert (=> b!4012622 (= e!2488610 0)))

(declare-fun b!4012623 () Bool)

(assert (=> b!4012623 (= e!2488610 (+ 1 (size!32110 (t!332999 lt!1421018))))))

(assert (= (and d!1187762 c!693705) b!4012622))

(assert (= (and d!1187762 (not c!693705)) b!4012623))

(declare-fun m!4598831 () Bool)

(assert (=> b!4012623 m!4598831))

(assert (=> b!4012303 d!1187762))

(declare-fun d!1187764 () Bool)

(assert (=> d!1187764 (= (head!8519 lt!1421058) (h!48364 lt!1421058))))

(assert (=> b!4011999 d!1187764))

(declare-fun d!1187766 () Bool)

(assert (=> d!1187766 (= (head!8519 lt!1421035) (h!48364 lt!1421035))))

(assert (=> b!4011999 d!1187766))

(declare-fun d!1187768 () Bool)

(declare-fun c!693706 () Bool)

(assert (=> d!1187768 (= c!693706 ((_ is Nil!42944) lt!1421148))))

(declare-fun e!2488611 () (InoxSet C!23664))

(assert (=> d!1187768 (= (content!6512 lt!1421148) e!2488611)))

(declare-fun b!4012624 () Bool)

(assert (=> b!4012624 (= e!2488611 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012625 () Bool)

(assert (=> b!4012625 (= e!2488611 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421148) true) (content!6512 (t!332999 lt!1421148))))))

(assert (= (and d!1187768 c!693706) b!4012624))

(assert (= (and d!1187768 (not c!693706)) b!4012625))

(declare-fun m!4598833 () Bool)

(assert (=> b!4012625 m!4598833))

(declare-fun m!4598835 () Bool)

(assert (=> b!4012625 m!4598835))

(assert (=> d!1187432 d!1187768))

(assert (=> d!1187432 d!1187740))

(declare-fun d!1187770 () Bool)

(declare-fun c!693707 () Bool)

(assert (=> d!1187770 (= c!693707 ((_ is Nil!42944) suffixResult!105))))

(declare-fun e!2488612 () (InoxSet C!23664))

(assert (=> d!1187770 (= (content!6512 suffixResult!105) e!2488612)))

(declare-fun b!4012626 () Bool)

(assert (=> b!4012626 (= e!2488612 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012627 () Bool)

(assert (=> b!4012627 (= e!2488612 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 suffixResult!105) true) (content!6512 (t!332999 suffixResult!105))))))

(assert (= (and d!1187770 c!693707) b!4012626))

(assert (= (and d!1187770 (not c!693707)) b!4012627))

(declare-fun m!4598837 () Bool)

(assert (=> b!4012627 m!4598837))

(declare-fun m!4598839 () Bool)

(assert (=> b!4012627 m!4598839))

(assert (=> d!1187432 d!1187770))

(declare-fun d!1187772 () Bool)

(assert (=> d!1187772 (= (head!8519 lt!1421037) (h!48364 lt!1421037))))

(assert (=> b!4012369 d!1187772))

(declare-fun d!1187774 () Bool)

(assert (=> d!1187774 (= (head!8519 lt!1421043) (h!48364 lt!1421043))))

(assert (=> b!4012369 d!1187774))

(declare-fun d!1187776 () Bool)

(declare-fun e!2488615 () Bool)

(assert (=> d!1187776 e!2488615))

(declare-fun res!1631377 () Bool)

(assert (=> d!1187776 (=> res!1631377 e!2488615)))

(declare-fun lt!1421345 () Bool)

(assert (=> d!1187776 (= res!1631377 (not lt!1421345))))

(declare-fun e!2488613 () Bool)

(assert (=> d!1187776 (= lt!1421345 e!2488613)))

(declare-fun res!1631375 () Bool)

(assert (=> d!1187776 (=> res!1631375 e!2488613)))

(assert (=> d!1187776 (= res!1631375 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1187776 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421025)) lt!1421345)))

(declare-fun b!4012629 () Bool)

(declare-fun res!1631378 () Bool)

(declare-fun e!2488614 () Bool)

(assert (=> b!4012629 (=> (not res!1631378) (not e!2488614))))

(assert (=> b!4012629 (= res!1631378 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 lt!1421025))))))

(declare-fun b!4012630 () Bool)

(assert (=> b!4012630 (= e!2488614 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 lt!1421025))))))

(declare-fun b!4012628 () Bool)

(assert (=> b!4012628 (= e!2488613 e!2488614)))

(declare-fun res!1631376 () Bool)

(assert (=> b!4012628 (=> (not res!1631376) (not e!2488614))))

(assert (=> b!4012628 (= res!1631376 (not ((_ is Nil!42944) (tail!6251 lt!1421025))))))

(declare-fun b!4012631 () Bool)

(assert (=> b!4012631 (= e!2488615 (>= (size!32110 (tail!6251 lt!1421025)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1187776 (not res!1631375)) b!4012628))

(assert (= (and b!4012628 res!1631376) b!4012629))

(assert (= (and b!4012629 res!1631378) b!4012630))

(assert (= (and d!1187776 (not res!1631377)) b!4012631))

(assert (=> b!4012629 m!4597839))

(assert (=> b!4012629 m!4598791))

(assert (=> b!4012629 m!4598543))

(declare-fun m!4598841 () Bool)

(assert (=> b!4012629 m!4598841))

(assert (=> b!4012630 m!4597839))

(assert (=> b!4012630 m!4598795))

(assert (=> b!4012630 m!4598543))

(declare-fun m!4598843 () Bool)

(assert (=> b!4012630 m!4598843))

(assert (=> b!4012630 m!4598795))

(assert (=> b!4012630 m!4598843))

(declare-fun m!4598845 () Bool)

(assert (=> b!4012630 m!4598845))

(assert (=> b!4012631 m!4598543))

(declare-fun m!4598847 () Bool)

(assert (=> b!4012631 m!4598847))

(assert (=> b!4012631 m!4597839))

(assert (=> b!4012631 m!4598803))

(assert (=> b!4012416 d!1187776))

(assert (=> b!4012416 d!1187746))

(declare-fun d!1187778 () Bool)

(assert (=> d!1187778 (= (tail!6251 lt!1421025) (t!332999 lt!1421025))))

(assert (=> b!4012416 d!1187778))

(declare-fun d!1187780 () Bool)

(assert (=> d!1187780 (= (list!15960 lt!1421278) (list!15962 (c!693562 lt!1421278)))))

(declare-fun bs!589420 () Bool)

(assert (= bs!589420 d!1187780))

(declare-fun m!4598849 () Bool)

(assert (=> bs!589420 m!4598849))

(assert (=> d!1187590 d!1187780))

(declare-fun d!1187782 () Bool)

(declare-fun lt!1421346 () Int)

(assert (=> d!1187782 (>= lt!1421346 0)))

(declare-fun e!2488616 () Int)

(assert (=> d!1187782 (= lt!1421346 e!2488616)))

(declare-fun c!693708 () Bool)

(assert (=> d!1187782 (= c!693708 ((_ is Nil!42944) lt!1421314))))

(assert (=> d!1187782 (= (size!32110 lt!1421314) lt!1421346)))

(declare-fun b!4012632 () Bool)

(assert (=> b!4012632 (= e!2488616 0)))

(declare-fun b!4012633 () Bool)

(assert (=> b!4012633 (= e!2488616 (+ 1 (size!32110 (t!332999 lt!1421314))))))

(assert (= (and d!1187782 c!693708) b!4012632))

(assert (= (and d!1187782 (not c!693708)) b!4012633))

(declare-fun m!4598851 () Bool)

(assert (=> b!4012633 m!4598851))

(assert (=> b!4012433 d!1187782))

(assert (=> b!4012433 d!1187604))

(declare-fun d!1187784 () Bool)

(declare-fun lt!1421347 () Int)

(assert (=> d!1187784 (>= lt!1421347 0)))

(declare-fun e!2488617 () Int)

(assert (=> d!1187784 (= lt!1421347 e!2488617)))

(declare-fun c!693709 () Bool)

(assert (=> d!1187784 (= c!693709 ((_ is Nil!42944) lt!1421061))))

(assert (=> d!1187784 (= (size!32110 lt!1421061) lt!1421347)))

(declare-fun b!4012634 () Bool)

(assert (=> b!4012634 (= e!2488617 0)))

(declare-fun b!4012635 () Bool)

(assert (=> b!4012635 (= e!2488617 (+ 1 (size!32110 (t!332999 lt!1421061))))))

(assert (= (and d!1187784 c!693709) b!4012634))

(assert (= (and d!1187784 (not c!693709)) b!4012635))

(declare-fun m!4598853 () Bool)

(assert (=> b!4012635 m!4598853))

(assert (=> b!4012433 d!1187784))

(declare-fun d!1187786 () Bool)

(assert (=> d!1187786 true))

(declare-fun lt!1421422 () Bool)

(assert (=> d!1187786 (= lt!1421422 (rulesValidInductive!2491 thiss!21717 rules!2999))))

(declare-fun lambda!127050 () Int)

(declare-fun forall!8351 (List!43070 Int) Bool)

(assert (=> d!1187786 (= lt!1421422 (forall!8351 rules!2999 lambda!127050))))

(assert (=> d!1187786 (= (rulesValid!2659 thiss!21717 rules!2999) lt!1421422)))

(declare-fun bs!589427 () Bool)

(assert (= bs!589427 d!1187786))

(assert (=> bs!589427 m!4598067))

(declare-fun m!4598915 () Bool)

(assert (=> bs!589427 m!4598915))

(assert (=> d!1187602 d!1187786))

(declare-fun d!1187824 () Bool)

(assert (=> d!1187824 (= (isEmpty!25653 lt!1421308) (not ((_ is Some!9247) lt!1421308)))))

(assert (=> d!1187652 d!1187824))

(assert (=> d!1187652 d!1187418))

(assert (=> d!1187652 d!1187420))

(declare-fun bs!589428 () Bool)

(declare-fun d!1187826 () Bool)

(assert (= bs!589428 (and d!1187826 d!1187786)))

(declare-fun lambda!127053 () Int)

(assert (=> bs!589428 (= lambda!127053 lambda!127050)))

(assert (=> d!1187826 true))

(declare-fun lt!1421425 () Bool)

(assert (=> d!1187826 (= lt!1421425 (forall!8351 rules!2999 lambda!127053))))

(declare-fun e!2488678 () Bool)

(assert (=> d!1187826 (= lt!1421425 e!2488678)))

(declare-fun res!1631411 () Bool)

(assert (=> d!1187826 (=> res!1631411 e!2488678)))

(assert (=> d!1187826 (= res!1631411 (not ((_ is Cons!42946) rules!2999)))))

(assert (=> d!1187826 (= (rulesValidInductive!2491 thiss!21717 rules!2999) lt!1421425)))

(declare-fun b!4012728 () Bool)

(declare-fun e!2488677 () Bool)

(assert (=> b!4012728 (= e!2488678 e!2488677)))

(declare-fun res!1631412 () Bool)

(assert (=> b!4012728 (=> (not res!1631412) (not e!2488677))))

(assert (=> b!4012728 (= res!1631412 (ruleValid!2766 thiss!21717 (h!48366 rules!2999)))))

(declare-fun b!4012729 () Bool)

(assert (=> b!4012729 (= e!2488677 (rulesValidInductive!2491 thiss!21717 (t!333001 rules!2999)))))

(assert (= (and d!1187826 (not res!1631411)) b!4012728))

(assert (= (and b!4012728 res!1631412) b!4012729))

(declare-fun m!4598917 () Bool)

(assert (=> d!1187826 m!4598917))

(declare-fun m!4598919 () Bool)

(assert (=> b!4012728 m!4598919))

(declare-fun m!4598921 () Bool)

(assert (=> b!4012729 m!4598921))

(assert (=> d!1187652 d!1187826))

(declare-fun d!1187828 () Bool)

(declare-fun e!2488681 () Bool)

(assert (=> d!1187828 e!2488681))

(declare-fun res!1631415 () Bool)

(assert (=> d!1187828 (=> res!1631415 e!2488681)))

(declare-fun lt!1421426 () Bool)

(assert (=> d!1187828 (= res!1631415 (not lt!1421426))))

(declare-fun e!2488679 () Bool)

(assert (=> d!1187828 (= lt!1421426 e!2488679)))

(declare-fun res!1631413 () Bool)

(assert (=> d!1187828 (=> res!1631413 e!2488679)))

(assert (=> d!1187828 (= res!1631413 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187828 (= (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421045)) lt!1421426)))

(declare-fun b!4012731 () Bool)

(declare-fun res!1631416 () Bool)

(declare-fun e!2488680 () Bool)

(assert (=> b!4012731 (=> (not res!1631416) (not e!2488680))))

(assert (=> b!4012731 (= res!1631416 (= (head!8519 lt!1421037) (head!8519 (++!11236 lt!1421037 lt!1421045))))))

(declare-fun b!4012732 () Bool)

(assert (=> b!4012732 (= e!2488680 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 (++!11236 lt!1421037 lt!1421045))))))

(declare-fun b!4012730 () Bool)

(assert (=> b!4012730 (= e!2488679 e!2488680)))

(declare-fun res!1631414 () Bool)

(assert (=> b!4012730 (=> (not res!1631414) (not e!2488680))))

(assert (=> b!4012730 (= res!1631414 (not ((_ is Nil!42944) (++!11236 lt!1421037 lt!1421045))))))

(declare-fun b!4012733 () Bool)

(assert (=> b!4012733 (= e!2488681 (>= (size!32110 (++!11236 lt!1421037 lt!1421045)) (size!32110 lt!1421037)))))

(assert (= (and d!1187828 (not res!1631413)) b!4012730))

(assert (= (and b!4012730 res!1631414) b!4012731))

(assert (= (and b!4012731 res!1631416) b!4012732))

(assert (= (and d!1187828 (not res!1631415)) b!4012733))

(assert (=> b!4012731 m!4597837))

(assert (=> b!4012731 m!4597413))

(declare-fun m!4598923 () Bool)

(assert (=> b!4012731 m!4598923))

(assert (=> b!4012732 m!4597839))

(assert (=> b!4012732 m!4597413))

(declare-fun m!4598925 () Bool)

(assert (=> b!4012732 m!4598925))

(assert (=> b!4012732 m!4597839))

(assert (=> b!4012732 m!4598925))

(declare-fun m!4598927 () Bool)

(assert (=> b!4012732 m!4598927))

(assert (=> b!4012733 m!4597413))

(declare-fun m!4598929 () Bool)

(assert (=> b!4012733 m!4598929))

(assert (=> b!4012733 m!4597421))

(assert (=> d!1187500 d!1187828))

(assert (=> d!1187500 d!1187414))

(declare-fun d!1187830 () Bool)

(assert (=> d!1187830 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421045))))

(assert (=> d!1187830 true))

(declare-fun _$46!1660 () Unit!61970)

(assert (=> d!1187830 (= (choose!24242 lt!1421037 lt!1421045) _$46!1660)))

(declare-fun bs!589429 () Bool)

(assert (= bs!589429 d!1187830))

(assert (=> bs!589429 m!4597413))

(assert (=> bs!589429 m!4597413))

(assert (=> bs!589429 m!4598137))

(assert (=> d!1187500 d!1187830))

(declare-fun d!1187832 () Bool)

(assert (=> d!1187832 (= (list!15960 lt!1421283) (list!15962 (c!693562 lt!1421283)))))

(declare-fun bs!589430 () Bool)

(assert (= bs!589430 d!1187832))

(declare-fun m!4598931 () Bool)

(assert (=> bs!589430 m!4598931))

(assert (=> d!1187610 d!1187832))

(declare-fun d!1187834 () Bool)

(declare-fun lt!1421427 () Int)

(assert (=> d!1187834 (>= lt!1421427 0)))

(declare-fun e!2488682 () Int)

(assert (=> d!1187834 (= lt!1421427 e!2488682)))

(declare-fun c!693735 () Bool)

(assert (=> d!1187834 (= c!693735 ((_ is Nil!42944) (_2!24179 (get!14111 lt!1421293))))))

(assert (=> d!1187834 (= (size!32110 (_2!24179 (get!14111 lt!1421293))) lt!1421427)))

(declare-fun b!4012734 () Bool)

(assert (=> b!4012734 (= e!2488682 0)))

(declare-fun b!4012735 () Bool)

(assert (=> b!4012735 (= e!2488682 (+ 1 (size!32110 (t!332999 (_2!24179 (get!14111 lt!1421293))))))))

(assert (= (and d!1187834 c!693735) b!4012734))

(assert (= (and d!1187834 (not c!693735)) b!4012735))

(declare-fun m!4598933 () Bool)

(assert (=> b!4012735 m!4598933))

(assert (=> b!4012360 d!1187834))

(declare-fun d!1187836 () Bool)

(assert (=> d!1187836 (= (get!14111 lt!1421293) (v!39615 lt!1421293))))

(assert (=> b!4012360 d!1187836))

(declare-fun d!1187838 () Bool)

(declare-fun lt!1421428 () Int)

(assert (=> d!1187838 (>= lt!1421428 0)))

(declare-fun e!2488683 () Int)

(assert (=> d!1187838 (= lt!1421428 e!2488683)))

(declare-fun c!693736 () Bool)

(assert (=> d!1187838 (= c!693736 ((_ is Nil!42944) lt!1421016))))

(assert (=> d!1187838 (= (size!32110 lt!1421016) lt!1421428)))

(declare-fun b!4012736 () Bool)

(assert (=> b!4012736 (= e!2488683 0)))

(declare-fun b!4012737 () Bool)

(assert (=> b!4012737 (= e!2488683 (+ 1 (size!32110 (t!332999 lt!1421016))))))

(assert (= (and d!1187838 c!693736) b!4012736))

(assert (= (and d!1187838 (not c!693736)) b!4012737))

(declare-fun m!4598935 () Bool)

(assert (=> b!4012737 m!4598935))

(assert (=> b!4012360 d!1187838))

(declare-fun d!1187840 () Bool)

(declare-fun e!2488686 () Bool)

(assert (=> d!1187840 e!2488686))

(declare-fun res!1631419 () Bool)

(assert (=> d!1187840 (=> res!1631419 e!2488686)))

(declare-fun lt!1421429 () Bool)

(assert (=> d!1187840 (= res!1631419 (not lt!1421429))))

(declare-fun e!2488684 () Bool)

(assert (=> d!1187840 (= lt!1421429 e!2488684)))

(declare-fun res!1631417 () Bool)

(assert (=> d!1187840 (=> res!1631417 e!2488684)))

(assert (=> d!1187840 (= res!1631417 ((_ is Nil!42944) (tail!6251 prefix!494)))))

(assert (=> d!1187840 (= (isPrefix!3921 (tail!6251 prefix!494) (tail!6251 lt!1421016)) lt!1421429)))

(declare-fun b!4012739 () Bool)

(declare-fun res!1631420 () Bool)

(declare-fun e!2488685 () Bool)

(assert (=> b!4012739 (=> (not res!1631420) (not e!2488685))))

(assert (=> b!4012739 (= res!1631420 (= (head!8519 (tail!6251 prefix!494)) (head!8519 (tail!6251 lt!1421016))))))

(declare-fun b!4012740 () Bool)

(assert (=> b!4012740 (= e!2488685 (isPrefix!3921 (tail!6251 (tail!6251 prefix!494)) (tail!6251 (tail!6251 lt!1421016))))))

(declare-fun b!4012738 () Bool)

(assert (=> b!4012738 (= e!2488684 e!2488685)))

(declare-fun res!1631418 () Bool)

(assert (=> b!4012738 (=> (not res!1631418) (not e!2488685))))

(assert (=> b!4012738 (= res!1631418 (not ((_ is Nil!42944) (tail!6251 lt!1421016))))))

(declare-fun b!4012741 () Bool)

(assert (=> b!4012741 (= e!2488686 (>= (size!32110 (tail!6251 lt!1421016)) (size!32110 (tail!6251 prefix!494))))))

(assert (= (and d!1187840 (not res!1631417)) b!4012738))

(assert (= (and b!4012738 res!1631418) b!4012739))

(assert (= (and b!4012739 res!1631420) b!4012740))

(assert (= (and d!1187840 (not res!1631419)) b!4012741))

(assert (=> b!4012739 m!4597857))

(assert (=> b!4012739 m!4598793))

(assert (=> b!4012739 m!4597827))

(declare-fun m!4598937 () Bool)

(assert (=> b!4012739 m!4598937))

(assert (=> b!4012740 m!4597857))

(assert (=> b!4012740 m!4598797))

(assert (=> b!4012740 m!4597827))

(declare-fun m!4598939 () Bool)

(assert (=> b!4012740 m!4598939))

(assert (=> b!4012740 m!4598797))

(assert (=> b!4012740 m!4598939))

(declare-fun m!4598941 () Bool)

(assert (=> b!4012740 m!4598941))

(assert (=> b!4012741 m!4597827))

(declare-fun m!4598943 () Bool)

(assert (=> b!4012741 m!4598943))

(assert (=> b!4012741 m!4597857))

(assert (=> b!4012741 m!4598801))

(assert (=> b!4011961 d!1187840))

(assert (=> b!4011961 d!1187748))

(declare-fun d!1187842 () Bool)

(assert (=> d!1187842 (= (tail!6251 lt!1421016) (t!332999 lt!1421016))))

(assert (=> b!4011961 d!1187842))

(declare-fun b!4012742 () Bool)

(declare-fun e!2488688 () List!43068)

(assert (=> b!4012742 (= e!2488688 suffixResult!105)))

(declare-fun lt!1421430 () List!43068)

(declare-fun b!4012745 () Bool)

(declare-fun e!2488687 () Bool)

(assert (=> b!4012745 (= e!2488687 (or (not (= suffixResult!105 Nil!42944)) (= lt!1421430 (t!332999 lt!1421037))))))

(declare-fun b!4012743 () Bool)

(assert (=> b!4012743 (= e!2488688 (Cons!42944 (h!48364 (t!332999 lt!1421037)) (++!11236 (t!332999 (t!332999 lt!1421037)) suffixResult!105)))))

(declare-fun b!4012744 () Bool)

(declare-fun res!1631422 () Bool)

(assert (=> b!4012744 (=> (not res!1631422) (not e!2488687))))

(assert (=> b!4012744 (= res!1631422 (= (size!32110 lt!1421430) (+ (size!32110 (t!332999 lt!1421037)) (size!32110 suffixResult!105))))))

(declare-fun d!1187844 () Bool)

(assert (=> d!1187844 e!2488687))

(declare-fun res!1631421 () Bool)

(assert (=> d!1187844 (=> (not res!1631421) (not e!2488687))))

(assert (=> d!1187844 (= res!1631421 (= (content!6512 lt!1421430) ((_ map or) (content!6512 (t!332999 lt!1421037)) (content!6512 suffixResult!105))))))

(assert (=> d!1187844 (= lt!1421430 e!2488688)))

(declare-fun c!693737 () Bool)

(assert (=> d!1187844 (= c!693737 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1187844 (= (++!11236 (t!332999 lt!1421037) suffixResult!105) lt!1421430)))

(assert (= (and d!1187844 c!693737) b!4012742))

(assert (= (and d!1187844 (not c!693737)) b!4012743))

(assert (= (and d!1187844 res!1631421) b!4012744))

(assert (= (and b!4012744 res!1631422) b!4012745))

(declare-fun m!4598945 () Bool)

(assert (=> b!4012743 m!4598945))

(declare-fun m!4598947 () Bool)

(assert (=> b!4012744 m!4598947))

(assert (=> b!4012744 m!4598421))

(assert (=> b!4012744 m!4597869))

(declare-fun m!4598949 () Bool)

(assert (=> d!1187844 m!4598949))

(assert (=> d!1187844 m!4598785))

(assert (=> d!1187844 m!4597873))

(assert (=> b!4011964 d!1187844))

(declare-fun d!1187846 () Bool)

(assert (=> d!1187846 (= (isDefined!7070 lt!1421308) (not (isEmpty!25653 lt!1421308)))))

(declare-fun bs!589431 () Bool)

(assert (= bs!589431 d!1187846))

(assert (=> bs!589431 m!4598567))

(assert (=> b!4012425 d!1187846))

(declare-fun d!1187848 () Bool)

(declare-fun c!693744 () Bool)

(assert (=> d!1187848 (= c!693744 ((_ is Nil!42944) lt!1421116))))

(declare-fun e!2488697 () (InoxSet C!23664))

(assert (=> d!1187848 (= (content!6512 lt!1421116) e!2488697)))

(declare-fun b!4012760 () Bool)

(assert (=> b!4012760 (= e!2488697 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012761 () Bool)

(assert (=> b!4012761 (= e!2488697 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421116) true) (content!6512 (t!332999 lt!1421116))))))

(assert (= (and d!1187848 c!693744) b!4012760))

(assert (= (and d!1187848 (not c!693744)) b!4012761))

(declare-fun m!4598951 () Bool)

(assert (=> b!4012761 m!4598951))

(declare-fun m!4598953 () Bool)

(assert (=> b!4012761 m!4598953))

(assert (=> d!1187370 d!1187848))

(declare-fun d!1187850 () Bool)

(declare-fun c!693745 () Bool)

(assert (=> d!1187850 (= c!693745 ((_ is Nil!42944) prefix!494))))

(declare-fun e!2488698 () (InoxSet C!23664))

(assert (=> d!1187850 (= (content!6512 prefix!494) e!2488698)))

(declare-fun b!4012762 () Bool)

(assert (=> b!4012762 (= e!2488698 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012763 () Bool)

(assert (=> b!4012763 (= e!2488698 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 prefix!494) true) (content!6512 (t!332999 prefix!494))))))

(assert (= (and d!1187850 c!693745) b!4012762))

(assert (= (and d!1187850 (not c!693745)) b!4012763))

(declare-fun m!4598955 () Bool)

(assert (=> b!4012763 m!4598955))

(declare-fun m!4598957 () Bool)

(assert (=> b!4012763 m!4598957))

(assert (=> d!1187370 d!1187850))

(declare-fun d!1187852 () Bool)

(declare-fun c!693746 () Bool)

(assert (=> d!1187852 (= c!693746 ((_ is Nil!42944) lt!1421039))))

(declare-fun e!2488699 () (InoxSet C!23664))

(assert (=> d!1187852 (= (content!6512 lt!1421039) e!2488699)))

(declare-fun b!4012764 () Bool)

(assert (=> b!4012764 (= e!2488699 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4012765 () Bool)

(assert (=> b!4012765 (= e!2488699 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421039) true) (content!6512 (t!332999 lt!1421039))))))

(assert (= (and d!1187852 c!693746) b!4012764))

(assert (= (and d!1187852 (not c!693746)) b!4012765))

(declare-fun m!4598959 () Bool)

(assert (=> b!4012765 m!4598959))

(declare-fun m!4598961 () Bool)

(assert (=> b!4012765 m!4598961))

(assert (=> d!1187370 d!1187852))

(declare-fun d!1187854 () Bool)

(declare-fun lt!1421459 () Int)

(assert (=> d!1187854 (>= lt!1421459 0)))

(declare-fun e!2488700 () Int)

(assert (=> d!1187854 (= lt!1421459 e!2488700)))

(declare-fun c!693747 () Bool)

(assert (=> d!1187854 (= c!693747 ((_ is Nil!42944) (t!332999 suffix!1299)))))

(assert (=> d!1187854 (= (size!32110 (t!332999 suffix!1299)) lt!1421459)))

(declare-fun b!4012766 () Bool)

(assert (=> b!4012766 (= e!2488700 0)))

(declare-fun b!4012767 () Bool)

(assert (=> b!4012767 (= e!2488700 (+ 1 (size!32110 (t!332999 (t!332999 suffix!1299)))))))

(assert (= (and d!1187854 c!693747) b!4012766))

(assert (= (and d!1187854 (not c!693747)) b!4012767))

(declare-fun m!4598963 () Bool)

(assert (=> b!4012767 m!4598963))

(assert (=> b!4012105 d!1187854))

(declare-fun d!1187856 () Bool)

(declare-fun e!2488703 () Bool)

(assert (=> d!1187856 e!2488703))

(declare-fun res!1631427 () Bool)

(assert (=> d!1187856 (=> res!1631427 e!2488703)))

(declare-fun lt!1421460 () Bool)

(assert (=> d!1187856 (= res!1631427 (not lt!1421460))))

(declare-fun e!2488701 () Bool)

(assert (=> d!1187856 (= lt!1421460 e!2488701)))

(declare-fun res!1631425 () Bool)

(assert (=> d!1187856 (=> res!1631425 e!2488701)))

(assert (=> d!1187856 (= res!1631425 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1187856 (= (isPrefix!3921 prefix!494 (++!11236 prefix!494 suffix!1299)) lt!1421460)))

(declare-fun b!4012769 () Bool)

(declare-fun res!1631428 () Bool)

(declare-fun e!2488702 () Bool)

(assert (=> b!4012769 (=> (not res!1631428) (not e!2488702))))

(assert (=> b!4012769 (= res!1631428 (= (head!8519 prefix!494) (head!8519 (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012770 () Bool)

(assert (=> b!4012770 (= e!2488702 (isPrefix!3921 (tail!6251 prefix!494) (tail!6251 (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012768 () Bool)

(assert (=> b!4012768 (= e!2488701 e!2488702)))

(declare-fun res!1631426 () Bool)

(assert (=> b!4012768 (=> (not res!1631426) (not e!2488702))))

(assert (=> b!4012768 (= res!1631426 (not ((_ is Nil!42944) (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012771 () Bool)

(assert (=> b!4012771 (= e!2488703 (>= (size!32110 (++!11236 prefix!494 suffix!1299)) (size!32110 prefix!494)))))

(assert (= (and d!1187856 (not res!1631425)) b!4012768))

(assert (= (and b!4012768 res!1631426) b!4012769))

(assert (= (and b!4012769 res!1631428) b!4012770))

(assert (= (and d!1187856 (not res!1631427)) b!4012771))

(assert (=> b!4012769 m!4597855))

(assert (=> b!4012769 m!4597481))

(declare-fun m!4598965 () Bool)

(assert (=> b!4012769 m!4598965))

(assert (=> b!4012770 m!4597857))

(assert (=> b!4012770 m!4597481))

(declare-fun m!4598967 () Bool)

(assert (=> b!4012770 m!4598967))

(assert (=> b!4012770 m!4597857))

(assert (=> b!4012770 m!4598967))

(declare-fun m!4598969 () Bool)

(assert (=> b!4012770 m!4598969))

(assert (=> b!4012771 m!4597481))

(declare-fun m!4598971 () Bool)

(assert (=> b!4012771 m!4598971))

(assert (=> b!4012771 m!4597423))

(assert (=> d!1187430 d!1187856))

(assert (=> d!1187430 d!1187654))

(declare-fun d!1187858 () Bool)

(assert (=> d!1187858 (isPrefix!3921 prefix!494 (++!11236 prefix!494 suffix!1299))))

(assert (=> d!1187858 true))

(declare-fun _$46!1661 () Unit!61970)

(assert (=> d!1187858 (= (choose!24242 prefix!494 suffix!1299) _$46!1661)))

(declare-fun bs!589432 () Bool)

(assert (= bs!589432 d!1187858))

(assert (=> bs!589432 m!4597481))

(assert (=> bs!589432 m!4597481))

(assert (=> bs!589432 m!4597861))

(assert (=> d!1187430 d!1187858))

(assert (=> b!4012291 d!1187764))

(declare-fun d!1187860 () Bool)

(assert (=> d!1187860 (= (head!8519 lt!1421057) (h!48364 lt!1421057))))

(assert (=> b!4012291 d!1187860))

(declare-fun d!1187862 () Bool)

(assert (=> d!1187862 true))

(declare-fun order!22503 () Int)

(declare-fun lambda!127056 () Int)

(declare-fun order!22501 () Int)

(declare-fun dynLambda!18220 (Int Int) Int)

(declare-fun dynLambda!18221 (Int Int) Int)

(assert (=> d!1187862 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (dynLambda!18221 order!22503 lambda!127056))))

(declare-fun Forall2!1072 (Int) Bool)

(assert (=> d!1187862 (= (equivClasses!2824 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (Forall2!1072 lambda!127056))))

(declare-fun bs!589434 () Bool)

(assert (= bs!589434 d!1187862))

(declare-fun m!4599047 () Bool)

(assert (=> bs!589434 m!4599047))

(assert (=> b!4011969 d!1187862))

(declare-fun d!1187874 () Bool)

(declare-fun charsToBigInt!0 (List!43069 Int) Int)

(assert (=> d!1187874 (= (inv!15 (value!215403 token!484)) (= (charsToBigInt!0 (text!49897 (value!215403 token!484)) 0) (value!215398 (value!215403 token!484))))))

(declare-fun bs!589435 () Bool)

(assert (= bs!589435 d!1187874))

(declare-fun m!4599083 () Bool)

(assert (=> bs!589435 m!4599083))

(assert (=> b!4012320 d!1187874))

(assert (=> b!4012067 d!1187728))

(declare-fun d!1187894 () Bool)

(assert (=> d!1187894 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199))))))))

(declare-fun b_lambda!117095 () Bool)

(assert (=> (not b_lambda!117095) (not d!1187894)))

(declare-fun tb!241263 () Bool)

(declare-fun t!333083 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333083) tb!241263))

(declare-fun result!292416 () Bool)

(assert (=> tb!241263 (= result!292416 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun m!4599097 () Bool)

(assert (=> tb!241263 m!4599097))

(assert (=> d!1187894 t!333083))

(declare-fun b_and!308275 () Bool)

(assert (= b_and!308231 (and (=> t!333083 result!292416) b_and!308275)))

(declare-fun t!333085 () Bool)

(declare-fun tb!241265 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333085) tb!241265))

(declare-fun result!292418 () Bool)

(assert (= result!292418 result!292416))

(assert (=> d!1187894 t!333085))

(declare-fun b_and!308277 () Bool)

(assert (= b_and!308233 (and (=> t!333085 result!292418) b_and!308277)))

(declare-fun tb!241267 () Bool)

(declare-fun t!333087 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333087) tb!241267))

(declare-fun result!292420 () Bool)

(assert (= result!292420 result!292416))

(assert (=> d!1187894 t!333087))

(declare-fun b_and!308279 () Bool)

(assert (= b_and!308235 (and (=> t!333087 result!292420) b_and!308279)))

(assert (=> d!1187894 m!4598057))

(declare-fun m!4599099 () Bool)

(assert (=> d!1187894 m!4599099))

(assert (=> b!4012067 d!1187894))

(declare-fun d!1187904 () Bool)

(assert (=> d!1187904 (= (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199)))) (fromListB!2316 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421199)))))))

(declare-fun bs!589436 () Bool)

(assert (= bs!589436 d!1187904))

(declare-fun m!4599101 () Bool)

(assert (=> bs!589436 m!4599101))

(assert (=> b!4012067 d!1187904))

(declare-fun d!1187906 () Bool)

(declare-fun e!2488731 () Bool)

(assert (=> d!1187906 e!2488731))

(declare-fun res!1631450 () Bool)

(assert (=> d!1187906 (=> res!1631450 e!2488731)))

(declare-fun lt!1421467 () Bool)

(assert (=> d!1187906 (= res!1631450 (not lt!1421467))))

(declare-fun e!2488729 () Bool)

(assert (=> d!1187906 (= lt!1421467 e!2488729)))

(declare-fun res!1631448 () Bool)

(assert (=> d!1187906 (=> res!1631448 e!2488729)))

(assert (=> d!1187906 (= res!1631448 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187906 (= (isPrefix!3921 lt!1421037 (++!11236 prefix!494 suffix!1299)) lt!1421467)))

(declare-fun b!4012817 () Bool)

(declare-fun res!1631451 () Bool)

(declare-fun e!2488730 () Bool)

(assert (=> b!4012817 (=> (not res!1631451) (not e!2488730))))

(assert (=> b!4012817 (= res!1631451 (= (head!8519 lt!1421037) (head!8519 (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012818 () Bool)

(assert (=> b!4012818 (= e!2488730 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012816 () Bool)

(assert (=> b!4012816 (= e!2488729 e!2488730)))

(declare-fun res!1631449 () Bool)

(assert (=> b!4012816 (=> (not res!1631449) (not e!2488730))))

(assert (=> b!4012816 (= res!1631449 (not ((_ is Nil!42944) (++!11236 prefix!494 suffix!1299))))))

(declare-fun b!4012819 () Bool)

(assert (=> b!4012819 (= e!2488731 (>= (size!32110 (++!11236 prefix!494 suffix!1299)) (size!32110 lt!1421037)))))

(assert (= (and d!1187906 (not res!1631448)) b!4012816))

(assert (= (and b!4012816 res!1631449) b!4012817))

(assert (= (and b!4012817 res!1631451) b!4012818))

(assert (= (and d!1187906 (not res!1631450)) b!4012819))

(assert (=> b!4012817 m!4597837))

(assert (=> b!4012817 m!4597481))

(assert (=> b!4012817 m!4598965))

(assert (=> b!4012818 m!4597839))

(assert (=> b!4012818 m!4597481))

(assert (=> b!4012818 m!4598967))

(assert (=> b!4012818 m!4597839))

(assert (=> b!4012818 m!4598967))

(declare-fun m!4599103 () Bool)

(assert (=> b!4012818 m!4599103))

(assert (=> b!4012819 m!4597481))

(assert (=> b!4012819 m!4598971))

(assert (=> b!4012819 m!4597421))

(assert (=> d!1187650 d!1187906))

(assert (=> d!1187650 d!1187654))

(declare-fun d!1187908 () Bool)

(assert (=> d!1187908 (isPrefix!3921 lt!1421037 (++!11236 prefix!494 suffix!1299))))

(assert (=> d!1187908 true))

(declare-fun _$58!536 () Unit!61970)

(assert (=> d!1187908 (= (choose!24245 lt!1421037 prefix!494 suffix!1299) _$58!536)))

(declare-fun bs!589437 () Bool)

(assert (= bs!589437 d!1187908))

(assert (=> bs!589437 m!4597481))

(assert (=> bs!589437 m!4597481))

(assert (=> bs!589437 m!4598551))

(assert (=> d!1187650 d!1187908))

(assert (=> d!1187650 d!1187622))

(declare-fun d!1187910 () Bool)

(declare-fun e!2488736 () Bool)

(assert (=> d!1187910 e!2488736))

(declare-fun res!1631456 () Bool)

(assert (=> d!1187910 (=> res!1631456 e!2488736)))

(declare-fun lt!1421470 () Bool)

(assert (=> d!1187910 (= res!1631456 (not lt!1421470))))

(declare-fun e!2488734 () Bool)

(assert (=> d!1187910 (= lt!1421470 e!2488734)))

(declare-fun res!1631454 () Bool)

(assert (=> d!1187910 (=> res!1631454 e!2488734)))

(assert (=> d!1187910 (= res!1631454 ((_ is Nil!42944) (tail!6251 lt!1421058)))))

(assert (=> d!1187910 (= (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421035)) lt!1421470)))

(declare-fun b!4012823 () Bool)

(declare-fun res!1631457 () Bool)

(declare-fun e!2488735 () Bool)

(assert (=> b!4012823 (=> (not res!1631457) (not e!2488735))))

(assert (=> b!4012823 (= res!1631457 (= (head!8519 (tail!6251 lt!1421058)) (head!8519 (tail!6251 lt!1421035))))))

(declare-fun b!4012824 () Bool)

(assert (=> b!4012824 (= e!2488735 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421058)) (tail!6251 (tail!6251 lt!1421035))))))

(declare-fun b!4012822 () Bool)

(assert (=> b!4012822 (= e!2488734 e!2488735)))

(declare-fun res!1631455 () Bool)

(assert (=> b!4012822 (=> (not res!1631455) (not e!2488735))))

(assert (=> b!4012822 (= res!1631455 (not ((_ is Nil!42944) (tail!6251 lt!1421035))))))

(declare-fun b!4012825 () Bool)

(assert (=> b!4012825 (= e!2488736 (>= (size!32110 (tail!6251 lt!1421035)) (size!32110 (tail!6251 lt!1421058))))))

(assert (= (and d!1187910 (not res!1631454)) b!4012822))

(assert (= (and b!4012822 res!1631455) b!4012823))

(assert (= (and b!4012823 res!1631457) b!4012824))

(assert (= (and d!1187910 (not res!1631456)) b!4012825))

(assert (=> b!4012823 m!4597889))

(declare-fun m!4599105 () Bool)

(assert (=> b!4012823 m!4599105))

(assert (=> b!4012823 m!4597895))

(declare-fun m!4599107 () Bool)

(assert (=> b!4012823 m!4599107))

(assert (=> b!4012824 m!4597889))

(declare-fun m!4599109 () Bool)

(assert (=> b!4012824 m!4599109))

(assert (=> b!4012824 m!4597895))

(declare-fun m!4599111 () Bool)

(assert (=> b!4012824 m!4599111))

(assert (=> b!4012824 m!4599109))

(assert (=> b!4012824 m!4599111))

(declare-fun m!4599113 () Bool)

(assert (=> b!4012824 m!4599113))

(assert (=> b!4012825 m!4597895))

(declare-fun m!4599115 () Bool)

(assert (=> b!4012825 m!4599115))

(assert (=> b!4012825 m!4597889))

(declare-fun m!4599117 () Bool)

(assert (=> b!4012825 m!4599117))

(assert (=> b!4012000 d!1187910))

(declare-fun d!1187912 () Bool)

(assert (=> d!1187912 (= (tail!6251 lt!1421058) (t!332999 lt!1421058))))

(assert (=> b!4012000 d!1187912))

(declare-fun d!1187914 () Bool)

(assert (=> d!1187914 (= (tail!6251 lt!1421035) (t!332999 lt!1421035))))

(assert (=> b!4012000 d!1187914))

(assert (=> b!4012356 d!1187606))

(assert (=> b!4012356 d!1187604))

(declare-fun b!4012827 () Bool)

(declare-fun e!2488737 () Bool)

(assert (=> b!4012827 (= e!2488737 (nullable!4117 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037))))))

(declare-fun b!4012828 () Bool)

(declare-fun e!2488740 () Bool)

(declare-fun lt!1421471 () Bool)

(assert (=> b!4012828 (= e!2488740 (not lt!1421471))))

(declare-fun b!4012829 () Bool)

(declare-fun e!2488742 () Bool)

(declare-fun call!286442 () Bool)

(assert (=> b!4012829 (= e!2488742 (= lt!1421471 call!286442))))

(declare-fun b!4012830 () Bool)

(declare-fun e!2488743 () Bool)

(declare-fun e!2488744 () Bool)

(assert (=> b!4012830 (= e!2488743 e!2488744)))

(declare-fun res!1631462 () Bool)

(assert (=> b!4012830 (=> (not res!1631462) (not e!2488744))))

(assert (=> b!4012830 (= res!1631462 (not lt!1421471))))

(declare-fun b!4012831 () Bool)

(declare-fun res!1631459 () Bool)

(declare-fun e!2488738 () Bool)

(assert (=> b!4012831 (=> (not res!1631459) (not e!2488738))))

(assert (=> b!4012831 (= res!1631459 (isEmpty!25654 (tail!6251 (tail!6251 lt!1421037))))))

(declare-fun b!4012832 () Bool)

(declare-fun res!1631461 () Bool)

(assert (=> b!4012832 (=> res!1631461 e!2488743)))

(assert (=> b!4012832 (= res!1631461 e!2488738)))

(declare-fun res!1631460 () Bool)

(assert (=> b!4012832 (=> (not res!1631460) (not e!2488738))))

(assert (=> b!4012832 (= res!1631460 lt!1421471)))

(declare-fun b!4012833 () Bool)

(assert (=> b!4012833 (= e!2488738 (= (head!8519 (tail!6251 lt!1421037)) (c!693563 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)))))))

(declare-fun b!4012834 () Bool)

(declare-fun res!1631465 () Bool)

(assert (=> b!4012834 (=> res!1631465 e!2488743)))

(assert (=> b!4012834 (= res!1631465 (not ((_ is ElementMatch!11739) (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)))))))

(assert (=> b!4012834 (= e!2488740 e!2488743)))

(declare-fun b!4012835 () Bool)

(declare-fun res!1631458 () Bool)

(declare-fun e!2488739 () Bool)

(assert (=> b!4012835 (=> res!1631458 e!2488739)))

(assert (=> b!4012835 (= res!1631458 (not (isEmpty!25654 (tail!6251 (tail!6251 lt!1421037)))))))

(declare-fun b!4012836 () Bool)

(assert (=> b!4012836 (= e!2488742 e!2488740)))

(declare-fun c!693762 () Bool)

(assert (=> b!4012836 (= c!693762 ((_ is EmptyLang!11739) (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037))))))

(declare-fun d!1187916 () Bool)

(assert (=> d!1187916 e!2488742))

(declare-fun c!693760 () Bool)

(assert (=> d!1187916 (= c!693760 ((_ is EmptyExpr!11739) (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037))))))

(assert (=> d!1187916 (= lt!1421471 e!2488737)))

(declare-fun c!693761 () Bool)

(assert (=> d!1187916 (= c!693761 (isEmpty!25654 (tail!6251 lt!1421037)))))

(assert (=> d!1187916 (validRegex!5317 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)))))

(assert (=> d!1187916 (= (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)) (tail!6251 lt!1421037)) lt!1421471)))

(declare-fun b!4012837 () Bool)

(assert (=> b!4012837 (= e!2488737 (matchR!5700 (derivativeStep!3527 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)) (head!8519 (tail!6251 lt!1421037))) (tail!6251 (tail!6251 lt!1421037))))))

(declare-fun bm!286437 () Bool)

(assert (=> bm!286437 (= call!286442 (isEmpty!25654 (tail!6251 lt!1421037)))))

(declare-fun b!4012838 () Bool)

(declare-fun res!1631466 () Bool)

(assert (=> b!4012838 (=> (not res!1631466) (not e!2488738))))

(assert (=> b!4012838 (= res!1631466 (not call!286442))))

(declare-fun b!4012839 () Bool)

(assert (=> b!4012839 (= e!2488739 (not (= (head!8519 (tail!6251 lt!1421037)) (c!693563 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037))))))))

(declare-fun b!4012840 () Bool)

(assert (=> b!4012840 (= e!2488744 e!2488739)))

(declare-fun res!1631463 () Bool)

(assert (=> b!4012840 (=> res!1631463 e!2488739)))

(assert (=> b!4012840 (= res!1631463 call!286442)))

(assert (= (and d!1187916 c!693761) b!4012827))

(assert (= (and d!1187916 (not c!693761)) b!4012837))

(assert (= (and d!1187916 c!693760) b!4012829))

(assert (= (and d!1187916 (not c!693760)) b!4012836))

(assert (= (and b!4012836 c!693762) b!4012828))

(assert (= (and b!4012836 (not c!693762)) b!4012834))

(assert (= (and b!4012834 (not res!1631465)) b!4012832))

(assert (= (and b!4012832 res!1631460) b!4012838))

(assert (= (and b!4012838 res!1631466) b!4012831))

(assert (= (and b!4012831 res!1631459) b!4012833))

(assert (= (and b!4012832 (not res!1631461)) b!4012830))

(assert (= (and b!4012830 res!1631462) b!4012840))

(assert (= (and b!4012840 (not res!1631463)) b!4012835))

(assert (= (and b!4012835 (not res!1631458)) b!4012839))

(assert (= (or b!4012829 b!4012838 b!4012840) bm!286437))

(assert (=> b!4012839 m!4597839))

(assert (=> b!4012839 m!4598791))

(assert (=> bm!286437 m!4597839))

(assert (=> bm!286437 m!4598535))

(assert (=> b!4012835 m!4597839))

(assert (=> b!4012835 m!4598795))

(assert (=> b!4012835 m!4598795))

(declare-fun m!4599127 () Bool)

(assert (=> b!4012835 m!4599127))

(assert (=> b!4012833 m!4597839))

(assert (=> b!4012833 m!4598791))

(assert (=> b!4012827 m!4598537))

(declare-fun m!4599129 () Bool)

(assert (=> b!4012827 m!4599129))

(assert (=> b!4012831 m!4597839))

(assert (=> b!4012831 m!4598795))

(assert (=> b!4012831 m!4598795))

(assert (=> b!4012831 m!4599127))

(assert (=> b!4012837 m!4597839))

(assert (=> b!4012837 m!4598791))

(assert (=> b!4012837 m!4598537))

(assert (=> b!4012837 m!4598791))

(declare-fun m!4599131 () Bool)

(assert (=> b!4012837 m!4599131))

(assert (=> b!4012837 m!4597839))

(assert (=> b!4012837 m!4598795))

(assert (=> b!4012837 m!4599131))

(assert (=> b!4012837 m!4598795))

(declare-fun m!4599133 () Bool)

(assert (=> b!4012837 m!4599133))

(assert (=> d!1187916 m!4597839))

(assert (=> d!1187916 m!4598535))

(assert (=> d!1187916 m!4598537))

(declare-fun m!4599135 () Bool)

(assert (=> d!1187916 m!4599135))

(assert (=> b!4012410 d!1187916))

(declare-fun b!4012910 () Bool)

(declare-fun e!2488785 () Regex!11739)

(declare-fun e!2488784 () Regex!11739)

(assert (=> b!4012910 (= e!2488785 e!2488784)))

(declare-fun c!693793 () Bool)

(assert (=> b!4012910 (= c!693793 ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4012911 () Bool)

(declare-fun e!2488787 () Regex!11739)

(declare-fun call!286455 () Regex!11739)

(declare-fun call!286453 () Regex!11739)

(assert (=> b!4012911 (= e!2488787 (Union!11739 call!286455 call!286453))))

(declare-fun d!1187922 () Bool)

(declare-fun lt!1421482 () Regex!11739)

(assert (=> d!1187922 (validRegex!5317 lt!1421482)))

(assert (=> d!1187922 (= lt!1421482 e!2488785)))

(declare-fun c!693790 () Bool)

(assert (=> d!1187922 (= c!693790 (or ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 token!484))) ((_ is EmptyLang!11739) (regex!6834 (rule!9878 token!484)))))))

(assert (=> d!1187922 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1187922 (= (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 lt!1421037)) lt!1421482)))

(declare-fun b!4012912 () Bool)

(declare-fun e!2488783 () Regex!11739)

(declare-fun call!286454 () Regex!11739)

(assert (=> b!4012912 (= e!2488783 (Concat!18804 call!286454 (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4012913 () Bool)

(declare-fun c!693791 () Bool)

(assert (=> b!4012913 (= c!693791 ((_ is Union!11739) (regex!6834 (rule!9878 token!484))))))

(assert (=> b!4012913 (= e!2488784 e!2488787)))

(declare-fun b!4012914 () Bool)

(assert (=> b!4012914 (= e!2488785 EmptyLang!11739)))

(declare-fun bm!286447 () Bool)

(declare-fun call!286452 () Regex!11739)

(assert (=> bm!286447 (= call!286452 call!286454)))

(declare-fun b!4012915 () Bool)

(declare-fun e!2488786 () Regex!11739)

(assert (=> b!4012915 (= e!2488786 (Union!11739 (Concat!18804 call!286452 (regTwo!23990 (regex!6834 (rule!9878 token!484)))) EmptyLang!11739))))

(declare-fun b!4012916 () Bool)

(assert (=> b!4012916 (= e!2488786 (Union!11739 (Concat!18804 call!286452 (regTwo!23990 (regex!6834 (rule!9878 token!484)))) call!286453))))

(declare-fun bm!286448 () Bool)

(assert (=> bm!286448 (= call!286454 call!286455)))

(declare-fun b!4012917 () Bool)

(assert (=> b!4012917 (= e!2488787 e!2488783)))

(declare-fun c!693792 () Bool)

(assert (=> b!4012917 (= c!693792 ((_ is Star!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4012918 () Bool)

(declare-fun c!693789 () Bool)

(assert (=> b!4012918 (= c!693789 (nullable!4117 (regOne!23990 (regex!6834 (rule!9878 token!484)))))))

(assert (=> b!4012918 (= e!2488783 e!2488786)))

(declare-fun b!4012919 () Bool)

(assert (=> b!4012919 (= e!2488784 (ite (= (head!8519 lt!1421037) (c!693563 (regex!6834 (rule!9878 token!484)))) EmptyExpr!11739 EmptyLang!11739))))

(declare-fun bm!286449 () Bool)

(assert (=> bm!286449 (= call!286455 (derivativeStep!3527 (ite c!693791 (regOne!23991 (regex!6834 (rule!9878 token!484))) (ite c!693792 (reg!12068 (regex!6834 (rule!9878 token!484))) (regOne!23990 (regex!6834 (rule!9878 token!484))))) (head!8519 lt!1421037)))))

(declare-fun bm!286450 () Bool)

(assert (=> bm!286450 (= call!286453 (derivativeStep!3527 (ite c!693791 (regTwo!23991 (regex!6834 (rule!9878 token!484))) (regTwo!23990 (regex!6834 (rule!9878 token!484)))) (head!8519 lt!1421037)))))

(assert (= (and d!1187922 c!693790) b!4012914))

(assert (= (and d!1187922 (not c!693790)) b!4012910))

(assert (= (and b!4012910 c!693793) b!4012919))

(assert (= (and b!4012910 (not c!693793)) b!4012913))

(assert (= (and b!4012913 c!693791) b!4012911))

(assert (= (and b!4012913 (not c!693791)) b!4012917))

(assert (= (and b!4012917 c!693792) b!4012912))

(assert (= (and b!4012917 (not c!693792)) b!4012918))

(assert (= (and b!4012918 c!693789) b!4012916))

(assert (= (and b!4012918 (not c!693789)) b!4012915))

(assert (= (or b!4012916 b!4012915) bm!286447))

(assert (= (or b!4012912 bm!286447) bm!286448))

(assert (= (or b!4012911 bm!286448) bm!286449))

(assert (= (or b!4012911 b!4012916) bm!286450))

(declare-fun m!4599221 () Bool)

(assert (=> d!1187922 m!4599221))

(assert (=> d!1187922 m!4597879))

(declare-fun m!4599223 () Bool)

(assert (=> b!4012918 m!4599223))

(assert (=> bm!286449 m!4597837))

(declare-fun m!4599225 () Bool)

(assert (=> bm!286449 m!4599225))

(assert (=> bm!286450 m!4597837))

(declare-fun m!4599227 () Bool)

(assert (=> bm!286450 m!4599227))

(assert (=> b!4012410 d!1187922))

(assert (=> b!4012410 d!1187772))

(assert (=> b!4012410 d!1187746))

(declare-fun b!4012922 () Bool)

(declare-fun e!2488790 () Bool)

(assert (=> b!4012922 (= e!2488790 (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4012923 () Bool)

(declare-fun e!2488793 () Bool)

(declare-fun lt!1421483 () Bool)

(assert (=> b!4012923 (= e!2488793 (not lt!1421483))))

(declare-fun b!4012924 () Bool)

(declare-fun e!2488794 () Bool)

(declare-fun call!286456 () Bool)

(assert (=> b!4012924 (= e!2488794 (= lt!1421483 call!286456))))

(declare-fun b!4012925 () Bool)

(declare-fun e!2488795 () Bool)

(declare-fun e!2488796 () Bool)

(assert (=> b!4012925 (= e!2488795 e!2488796)))

(declare-fun res!1631490 () Bool)

(assert (=> b!4012925 (=> (not res!1631490) (not e!2488796))))

(assert (=> b!4012925 (= res!1631490 (not lt!1421483))))

(declare-fun b!4012926 () Bool)

(declare-fun res!1631487 () Bool)

(declare-fun e!2488791 () Bool)

(assert (=> b!4012926 (=> (not res!1631487) (not e!2488791))))

(assert (=> b!4012926 (= res!1631487 (isEmpty!25654 (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025))))))))

(declare-fun b!4012927 () Bool)

(declare-fun res!1631489 () Bool)

(assert (=> b!4012927 (=> res!1631489 e!2488795)))

(assert (=> b!4012927 (= res!1631489 e!2488791)))

(declare-fun res!1631488 () Bool)

(assert (=> b!4012927 (=> (not res!1631488) (not e!2488791))))

(assert (=> b!4012927 (= res!1631488 lt!1421483)))

(declare-fun b!4012928 () Bool)

(assert (=> b!4012928 (= e!2488791 (= (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun b!4012929 () Bool)

(declare-fun res!1631492 () Bool)

(assert (=> b!4012929 (=> res!1631492 e!2488795)))

(assert (=> b!4012929 (= res!1631492 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))))

(assert (=> b!4012929 (= e!2488793 e!2488795)))

(declare-fun b!4012930 () Bool)

(declare-fun res!1631486 () Bool)

(declare-fun e!2488792 () Bool)

(assert (=> b!4012930 (=> res!1631486 e!2488792)))

(assert (=> b!4012930 (= res!1631486 (not (isEmpty!25654 (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))))

(declare-fun b!4012931 () Bool)

(assert (=> b!4012931 (= e!2488794 e!2488793)))

(declare-fun c!693796 () Bool)

(assert (=> b!4012931 (= c!693796 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun d!1187964 () Bool)

(assert (=> d!1187964 e!2488794))

(declare-fun c!693794 () Bool)

(assert (=> d!1187964 (= c!693794 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1187964 (= lt!1421483 e!2488790)))

(declare-fun c!693795 () Bool)

(assert (=> d!1187964 (= c!693795 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(assert (=> d!1187964 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1187964 (= (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))) lt!1421483)))

(declare-fun b!4012932 () Bool)

(assert (=> b!4012932 (= e!2488790 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025))))) (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025))))))))

(declare-fun bm!286451 () Bool)

(assert (=> bm!286451 (= call!286456 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(declare-fun b!4012933 () Bool)

(declare-fun res!1631493 () Bool)

(assert (=> b!4012933 (=> (not res!1631493) (not e!2488791))))

(assert (=> b!4012933 (= res!1631493 (not call!286456))))

(declare-fun b!4012934 () Bool)

(assert (=> b!4012934 (= e!2488792 (not (= (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))))

(declare-fun b!4012935 () Bool)

(assert (=> b!4012935 (= e!2488796 e!2488792)))

(declare-fun res!1631491 () Bool)

(assert (=> b!4012935 (=> res!1631491 e!2488792)))

(assert (=> b!4012935 (= res!1631491 call!286456)))

(assert (= (and d!1187964 c!693795) b!4012922))

(assert (= (and d!1187964 (not c!693795)) b!4012932))

(assert (= (and d!1187964 c!693794) b!4012924))

(assert (= (and d!1187964 (not c!693794)) b!4012931))

(assert (= (and b!4012931 c!693796) b!4012923))

(assert (= (and b!4012931 (not c!693796)) b!4012929))

(assert (= (and b!4012929 (not res!1631492)) b!4012927))

(assert (= (and b!4012927 res!1631488) b!4012933))

(assert (= (and b!4012933 res!1631493) b!4012926))

(assert (= (and b!4012926 res!1631487) b!4012928))

(assert (= (and b!4012927 (not res!1631489)) b!4012925))

(assert (= (and b!4012925 res!1631490) b!4012935))

(assert (= (and b!4012935 (not res!1631491)) b!4012930))

(assert (= (and b!4012930 (not res!1631486)) b!4012934))

(assert (= (or b!4012924 b!4012933 b!4012935) bm!286451))

(declare-fun m!4599231 () Bool)

(assert (=> b!4012934 m!4599231))

(assert (=> bm!286451 m!4598365))

(declare-fun m!4599233 () Bool)

(assert (=> b!4012930 m!4599233))

(assert (=> b!4012930 m!4599233))

(declare-fun m!4599235 () Bool)

(assert (=> b!4012930 m!4599235))

(assert (=> b!4012928 m!4599231))

(assert (=> b!4012922 m!4598153))

(assert (=> b!4012926 m!4599233))

(assert (=> b!4012926 m!4599233))

(assert (=> b!4012926 m!4599235))

(assert (=> b!4012932 m!4599231))

(assert (=> b!4012932 m!4599231))

(declare-fun m!4599239 () Bool)

(assert (=> b!4012932 m!4599239))

(assert (=> b!4012932 m!4599233))

(assert (=> b!4012932 m!4599239))

(assert (=> b!4012932 m!4599233))

(declare-fun m!4599247 () Bool)

(assert (=> b!4012932 m!4599247))

(assert (=> d!1187964 m!4598365))

(assert (=> d!1187964 m!4598151))

(assert (=> b!4012284 d!1187964))

(declare-fun b!4013209 () Bool)

(declare-fun e!2488956 () Unit!61970)

(declare-fun Unit!61983 () Unit!61970)

(assert (=> b!4013209 (= e!2488956 Unit!61983)))

(declare-fun b!4013210 () Bool)

(declare-fun e!2488960 () tuple2!42094)

(assert (=> b!4013210 (= e!2488960 (tuple2!42095 Nil!42944 lt!1421025))))

(declare-fun b!4013211 () Bool)

(declare-fun lt!1421666 () tuple2!42094)

(assert (=> b!4013211 (= e!2488960 lt!1421666)))

(declare-fun b!4013212 () Bool)

(declare-fun e!2488961 () Bool)

(declare-fun lt!1421664 () tuple2!42094)

(assert (=> b!4013212 (= e!2488961 (>= (size!32110 (_1!24181 lt!1421664)) (size!32110 Nil!42944)))))

(declare-fun b!4013213 () Bool)

(declare-fun e!2488957 () tuple2!42094)

(declare-fun call!286507 () tuple2!42094)

(assert (=> b!4013213 (= e!2488957 call!286507)))

(declare-fun b!4013214 () Bool)

(declare-fun c!693877 () Bool)

(declare-fun call!286504 () Bool)

(assert (=> b!4013214 (= c!693877 call!286504)))

(declare-fun lt!1421649 () Unit!61970)

(declare-fun lt!1421654 () Unit!61970)

(assert (=> b!4013214 (= lt!1421649 lt!1421654)))

(assert (=> b!4013214 (= lt!1421025 Nil!42944)))

(declare-fun call!286506 () Unit!61970)

(assert (=> b!4013214 (= lt!1421654 call!286506)))

(declare-fun lt!1421675 () Unit!61970)

(declare-fun lt!1421655 () Unit!61970)

(assert (=> b!4013214 (= lt!1421675 lt!1421655)))

(declare-fun call!286505 () Bool)

(assert (=> b!4013214 call!286505))

(declare-fun call!286503 () Unit!61970)

(assert (=> b!4013214 (= lt!1421655 call!286503)))

(declare-fun e!2488955 () tuple2!42094)

(declare-fun e!2488958 () tuple2!42094)

(assert (=> b!4013214 (= e!2488955 e!2488958)))

(declare-fun b!4013215 () Bool)

(assert (=> b!4013215 (= e!2488957 e!2488960)))

(assert (=> b!4013215 (= lt!1421666 call!286507)))

(declare-fun c!693879 () Bool)

(assert (=> b!4013215 (= c!693879 (isEmpty!25654 (_1!24181 lt!1421666)))))

(declare-fun bm!286496 () Bool)

(declare-fun call!286500 () C!23664)

(assert (=> bm!286496 (= call!286500 (head!8519 lt!1421025))))

(declare-fun d!1187970 () Bool)

(declare-fun e!2488959 () Bool)

(assert (=> d!1187970 e!2488959))

(declare-fun res!1631600 () Bool)

(assert (=> d!1187970 (=> (not res!1631600) (not e!2488959))))

(assert (=> d!1187970 (= res!1631600 (= (++!11236 (_1!24181 lt!1421664) (_2!24181 lt!1421664)) lt!1421025))))

(declare-fun e!2488954 () tuple2!42094)

(assert (=> d!1187970 (= lt!1421664 e!2488954)))

(declare-fun c!693881 () Bool)

(declare-fun lostCause!999 (Regex!11739) Bool)

(assert (=> d!1187970 (= c!693881 (lostCause!999 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun lt!1421659 () Unit!61970)

(declare-fun Unit!61984 () Unit!61970)

(assert (=> d!1187970 (= lt!1421659 Unit!61984)))

(assert (=> d!1187970 (= (getSuffix!2346 lt!1421025 Nil!42944) lt!1421025)))

(declare-fun lt!1421657 () Unit!61970)

(declare-fun lt!1421668 () Unit!61970)

(assert (=> d!1187970 (= lt!1421657 lt!1421668)))

(declare-fun lt!1421665 () List!43068)

(assert (=> d!1187970 (= lt!1421025 lt!1421665)))

(assert (=> d!1187970 (= lt!1421668 (lemmaSamePrefixThenSameSuffix!2092 Nil!42944 lt!1421025 Nil!42944 lt!1421665 lt!1421025))))

(assert (=> d!1187970 (= lt!1421665 (getSuffix!2346 lt!1421025 Nil!42944))))

(declare-fun lt!1421663 () Unit!61970)

(declare-fun lt!1421656 () Unit!61970)

(assert (=> d!1187970 (= lt!1421663 lt!1421656)))

(assert (=> d!1187970 (isPrefix!3921 Nil!42944 (++!11236 Nil!42944 lt!1421025))))

(assert (=> d!1187970 (= lt!1421656 (lemmaConcatTwoListThenFirstIsPrefix!2762 Nil!42944 lt!1421025))))

(assert (=> d!1187970 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1187970 (= (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)) lt!1421664)))

(declare-fun bm!286495 () Bool)

(assert (=> bm!286495 (= call!286503 (lemmaIsPrefixRefl!2497 lt!1421025 lt!1421025))))

(declare-fun bm!286497 () Bool)

(assert (=> bm!286497 (= call!286505 (isPrefix!3921 lt!1421025 lt!1421025))))

(declare-fun lt!1421670 () List!43068)

(declare-fun call!286502 () List!43068)

(declare-fun call!286501 () Regex!11739)

(declare-fun bm!286498 () Bool)

(assert (=> bm!286498 (= call!286507 (findLongestMatchInner!1359 call!286501 lt!1421670 (+ (size!32110 Nil!42944) 1) call!286502 lt!1421025 (size!32110 lt!1421025)))))

(declare-fun b!4013216 () Bool)

(declare-fun Unit!61985 () Unit!61970)

(assert (=> b!4013216 (= e!2488956 Unit!61985)))

(declare-fun lt!1421658 () Unit!61970)

(assert (=> b!4013216 (= lt!1421658 call!286503)))

(assert (=> b!4013216 call!286505))

(declare-fun lt!1421662 () Unit!61970)

(assert (=> b!4013216 (= lt!1421662 lt!1421658)))

(declare-fun lt!1421671 () Unit!61970)

(assert (=> b!4013216 (= lt!1421671 call!286506)))

(assert (=> b!4013216 (= lt!1421025 Nil!42944)))

(declare-fun lt!1421652 () Unit!61970)

(assert (=> b!4013216 (= lt!1421652 lt!1421671)))

(assert (=> b!4013216 false))

(declare-fun bm!286499 () Bool)

(assert (=> bm!286499 (= call!286502 (tail!6251 lt!1421025))))

(declare-fun bm!286500 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!901 (List!43068 List!43068 List!43068) Unit!61970)

(assert (=> bm!286500 (= call!286506 (lemmaIsPrefixSameLengthThenSameList!901 lt!1421025 Nil!42944 lt!1421025))))

(declare-fun b!4013217 () Bool)

(declare-fun c!693878 () Bool)

(assert (=> b!4013217 (= c!693878 call!286504)))

(declare-fun lt!1421651 () Unit!61970)

(declare-fun lt!1421660 () Unit!61970)

(assert (=> b!4013217 (= lt!1421651 lt!1421660)))

(declare-fun lt!1421667 () C!23664)

(declare-fun lt!1421674 () List!43068)

(assert (=> b!4013217 (= (++!11236 (++!11236 Nil!42944 (Cons!42944 lt!1421667 Nil!42944)) lt!1421674) lt!1421025)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1243 (List!43068 C!23664 List!43068 List!43068) Unit!61970)

(assert (=> b!4013217 (= lt!1421660 (lemmaMoveElementToOtherListKeepsConcatEq!1243 Nil!42944 lt!1421667 lt!1421674 lt!1421025))))

(assert (=> b!4013217 (= lt!1421674 (tail!6251 lt!1421025))))

(assert (=> b!4013217 (= lt!1421667 (head!8519 lt!1421025))))

(declare-fun lt!1421661 () Unit!61970)

(declare-fun lt!1421669 () Unit!61970)

(assert (=> b!4013217 (= lt!1421661 lt!1421669)))

(assert (=> b!4013217 (isPrefix!3921 (++!11236 Nil!42944 (Cons!42944 (head!8519 (getSuffix!2346 lt!1421025 Nil!42944)) Nil!42944)) lt!1421025)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!625 (List!43068 List!43068) Unit!61970)

(assert (=> b!4013217 (= lt!1421669 (lemmaAddHeadSuffixToPrefixStillPrefix!625 Nil!42944 lt!1421025))))

(declare-fun lt!1421672 () Unit!61970)

(declare-fun lt!1421673 () Unit!61970)

(assert (=> b!4013217 (= lt!1421672 lt!1421673)))

(assert (=> b!4013217 (= lt!1421673 (lemmaAddHeadSuffixToPrefixStillPrefix!625 Nil!42944 lt!1421025))))

(assert (=> b!4013217 (= lt!1421670 (++!11236 Nil!42944 (Cons!42944 (head!8519 lt!1421025) Nil!42944)))))

(declare-fun lt!1421676 () Unit!61970)

(assert (=> b!4013217 (= lt!1421676 e!2488956)))

(declare-fun c!693880 () Bool)

(assert (=> b!4013217 (= c!693880 (= (size!32110 Nil!42944) (size!32110 lt!1421025)))))

(declare-fun lt!1421653 () Unit!61970)

(declare-fun lt!1421650 () Unit!61970)

(assert (=> b!4013217 (= lt!1421653 lt!1421650)))

(assert (=> b!4013217 (<= (size!32110 Nil!42944) (size!32110 lt!1421025))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!433 (List!43068 List!43068) Unit!61970)

(assert (=> b!4013217 (= lt!1421650 (lemmaIsPrefixThenSmallerEqSize!433 Nil!42944 lt!1421025))))

(assert (=> b!4013217 (= e!2488955 e!2488957)))

(declare-fun b!4013218 () Bool)

(assert (=> b!4013218 (= e!2488954 e!2488955)))

(declare-fun c!693882 () Bool)

(assert (=> b!4013218 (= c!693882 (= (size!32110 Nil!42944) (size!32110 lt!1421025)))))

(declare-fun bm!286501 () Bool)

(assert (=> bm!286501 (= call!286501 (derivativeStep!3527 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) call!286500))))

(declare-fun b!4013219 () Bool)

(assert (=> b!4013219 (= e!2488954 (tuple2!42095 Nil!42944 lt!1421025))))

(declare-fun b!4013220 () Bool)

(assert (=> b!4013220 (= e!2488958 (tuple2!42095 Nil!42944 lt!1421025))))

(declare-fun b!4013221 () Bool)

(assert (=> b!4013221 (= e!2488958 (tuple2!42095 Nil!42944 Nil!42944))))

(declare-fun bm!286502 () Bool)

(assert (=> bm!286502 (= call!286504 (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4013222 () Bool)

(assert (=> b!4013222 (= e!2488959 e!2488961)))

(declare-fun res!1631599 () Bool)

(assert (=> b!4013222 (=> res!1631599 e!2488961)))

(assert (=> b!4013222 (= res!1631599 (isEmpty!25654 (_1!24181 lt!1421664)))))

(assert (= (and d!1187970 c!693881) b!4013219))

(assert (= (and d!1187970 (not c!693881)) b!4013218))

(assert (= (and b!4013218 c!693882) b!4013214))

(assert (= (and b!4013218 (not c!693882)) b!4013217))

(assert (= (and b!4013214 c!693877) b!4013221))

(assert (= (and b!4013214 (not c!693877)) b!4013220))

(assert (= (and b!4013217 c!693880) b!4013216))

(assert (= (and b!4013217 (not c!693880)) b!4013209))

(assert (= (and b!4013217 c!693878) b!4013215))

(assert (= (and b!4013217 (not c!693878)) b!4013213))

(assert (= (and b!4013215 c!693879) b!4013210))

(assert (= (and b!4013215 (not c!693879)) b!4013211))

(assert (= (or b!4013215 b!4013213) bm!286496))

(assert (= (or b!4013215 b!4013213) bm!286499))

(assert (= (or b!4013215 b!4013213) bm!286501))

(assert (= (or b!4013215 b!4013213) bm!286498))

(assert (= (or b!4013214 b!4013216) bm!286497))

(assert (= (or b!4013214 b!4013217) bm!286502))

(assert (= (or b!4013214 b!4013216) bm!286500))

(assert (= (or b!4013214 b!4013216) bm!286495))

(assert (= (and d!1187970 res!1631600) b!4013222))

(assert (= (and b!4013222 (not res!1631599)) b!4013212))

(assert (=> d!1187970 m!4598151))

(declare-fun m!4599677 () Bool)

(assert (=> d!1187970 m!4599677))

(declare-fun m!4599679 () Bool)

(assert (=> d!1187970 m!4599679))

(assert (=> d!1187970 m!4599677))

(declare-fun m!4599683 () Bool)

(assert (=> d!1187970 m!4599683))

(declare-fun m!4599685 () Bool)

(assert (=> d!1187970 m!4599685))

(declare-fun m!4599687 () Bool)

(assert (=> d!1187970 m!4599687))

(declare-fun m!4599689 () Bool)

(assert (=> d!1187970 m!4599689))

(declare-fun m!4599691 () Bool)

(assert (=> d!1187970 m!4599691))

(assert (=> bm!286497 m!4598063))

(assert (=> bm!286498 m!4597781))

(declare-fun m!4599695 () Bool)

(assert (=> bm!286498 m!4599695))

(declare-fun m!4599697 () Bool)

(assert (=> b!4013215 m!4599697))

(declare-fun m!4599699 () Bool)

(assert (=> bm!286500 m!4599699))

(assert (=> bm!286499 m!4598543))

(assert (=> bm!286502 m!4598153))

(declare-fun m!4599701 () Bool)

(assert (=> b!4013217 m!4599701))

(assert (=> b!4013217 m!4598541))

(declare-fun m!4599703 () Bool)

(assert (=> b!4013217 m!4599703))

(declare-fun m!4599707 () Bool)

(assert (=> b!4013217 m!4599707))

(declare-fun m!4599709 () Bool)

(assert (=> b!4013217 m!4599709))

(declare-fun m!4599711 () Bool)

(assert (=> b!4013217 m!4599711))

(declare-fun m!4599713 () Bool)

(assert (=> b!4013217 m!4599713))

(assert (=> b!4013217 m!4599711))

(assert (=> b!4013217 m!4599701))

(declare-fun m!4599717 () Bool)

(assert (=> b!4013217 m!4599717))

(assert (=> b!4013217 m!4599687))

(declare-fun m!4599719 () Bool)

(assert (=> b!4013217 m!4599719))

(declare-fun m!4599721 () Bool)

(assert (=> b!4013217 m!4599721))

(assert (=> b!4013217 m!4597781))

(assert (=> b!4013217 m!4599687))

(assert (=> b!4013217 m!4598349))

(assert (=> b!4013217 m!4598543))

(declare-fun m!4599723 () Bool)

(assert (=> b!4013222 m!4599723))

(assert (=> bm!286495 m!4598065))

(declare-fun m!4599725 () Bool)

(assert (=> b!4013212 m!4599725))

(assert (=> b!4013212 m!4598349))

(declare-fun m!4599731 () Bool)

(assert (=> bm!286501 m!4599731))

(assert (=> bm!286496 m!4598541))

(assert (=> b!4012284 d!1187970))

(declare-fun d!1188170 () Bool)

(declare-fun lt!1421683 () Int)

(assert (=> d!1188170 (>= lt!1421683 0)))

(declare-fun e!2488973 () Int)

(assert (=> d!1188170 (= lt!1421683 e!2488973)))

(declare-fun c!693890 () Bool)

(assert (=> d!1188170 (= c!693890 ((_ is Nil!42944) Nil!42944))))

(assert (=> d!1188170 (= (size!32110 Nil!42944) lt!1421683)))

(declare-fun b!4013243 () Bool)

(assert (=> b!4013243 (= e!2488973 0)))

(declare-fun b!4013244 () Bool)

(assert (=> b!4013244 (= e!2488973 (+ 1 (size!32110 (t!332999 Nil!42944))))))

(assert (= (and d!1188170 c!693890) b!4013243))

(assert (= (and d!1188170 (not c!693890)) b!4013244))

(declare-fun m!4599733 () Bool)

(assert (=> b!4013244 m!4599733))

(assert (=> b!4012284 d!1188170))

(declare-fun d!1188172 () Bool)

(declare-fun lt!1421684 () Int)

(assert (=> d!1188172 (>= lt!1421684 0)))

(declare-fun e!2488974 () Int)

(assert (=> d!1188172 (= lt!1421684 e!2488974)))

(declare-fun c!693891 () Bool)

(assert (=> d!1188172 (= c!693891 ((_ is Nil!42944) lt!1421025))))

(assert (=> d!1188172 (= (size!32110 lt!1421025) lt!1421684)))

(declare-fun b!4013245 () Bool)

(assert (=> b!4013245 (= e!2488974 0)))

(declare-fun b!4013246 () Bool)

(assert (=> b!4013246 (= e!2488974 (+ 1 (size!32110 (t!332999 lt!1421025))))))

(assert (= (and d!1188172 c!693891) b!4013245))

(assert (= (and d!1188172 (not c!693891)) b!4013246))

(declare-fun m!4599735 () Bool)

(assert (=> b!4013246 m!4599735))

(assert (=> b!4012284 d!1188172))

(declare-fun d!1188174 () Bool)

(declare-fun lt!1421685 () Int)

(assert (=> d!1188174 (>= lt!1421685 0)))

(declare-fun e!2488975 () Int)

(assert (=> d!1188174 (= lt!1421685 e!2488975)))

(declare-fun c!693892 () Bool)

(assert (=> d!1188174 (= c!693892 ((_ is Nil!42944) (t!332999 newSuffix!27)))))

(assert (=> d!1188174 (= (size!32110 (t!332999 newSuffix!27)) lt!1421685)))

(declare-fun b!4013247 () Bool)

(assert (=> b!4013247 (= e!2488975 0)))

(declare-fun b!4013248 () Bool)

(assert (=> b!4013248 (= e!2488975 (+ 1 (size!32110 (t!332999 (t!332999 newSuffix!27)))))))

(assert (= (and d!1188174 c!693892) b!4013247))

(assert (= (and d!1188174 (not c!693892)) b!4013248))

(declare-fun m!4599737 () Bool)

(assert (=> b!4013248 m!4599737))

(assert (=> b!4012107 d!1188174))

(declare-fun b!4013249 () Bool)

(declare-fun res!1631607 () Bool)

(declare-fun e!2488976 () Bool)

(assert (=> b!4013249 (=> res!1631607 e!2488976)))

(assert (=> b!4013249 (= res!1631607 (not ((_ is IntegerValue!21194) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037)))))))

(declare-fun e!2488977 () Bool)

(assert (=> b!4013249 (= e!2488977 e!2488976)))

(declare-fun b!4013250 () Bool)

(assert (=> b!4013250 (= e!2488977 (inv!17 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(declare-fun b!4013251 () Bool)

(declare-fun e!2488978 () Bool)

(assert (=> b!4013251 (= e!2488978 e!2488977)))

(declare-fun c!693894 () Bool)

(assert (=> b!4013251 (= c!693894 ((_ is IntegerValue!21193) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(declare-fun d!1188176 () Bool)

(declare-fun c!693893 () Bool)

(assert (=> d!1188176 (= c!693893 ((_ is IntegerValue!21192) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(assert (=> d!1188176 (= (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))) e!2488978)))

(declare-fun b!4013252 () Bool)

(assert (=> b!4013252 (= e!2488976 (inv!15 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(declare-fun b!4013253 () Bool)

(assert (=> b!4013253 (= e!2488978 (inv!16 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 lt!1421037))))))

(assert (= (and d!1188176 c!693893) b!4013253))

(assert (= (and d!1188176 (not c!693893)) b!4013251))

(assert (= (and b!4013251 c!693894) b!4013250))

(assert (= (and b!4013251 (not c!693894)) b!4013249))

(assert (= (and b!4013249 (not res!1631607)) b!4013252))

(declare-fun m!4599739 () Bool)

(assert (=> b!4013250 m!4599739))

(declare-fun m!4599741 () Bool)

(assert (=> b!4013252 m!4599741))

(declare-fun m!4599743 () Bool)

(assert (=> b!4013253 m!4599743))

(assert (=> tb!241221 d!1188176))

(declare-fun d!1188178 () Bool)

(assert (=> d!1188178 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))) (list!15962 (c!693562 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun bs!589469 () Bool)

(assert (= bs!589469 d!1188178))

(declare-fun m!4599745 () Bool)

(assert (=> bs!589469 m!4599745))

(assert (=> b!4012418 d!1188178))

(declare-fun d!1188180 () Bool)

(declare-fun lt!1421686 () BalanceConc!25684)

(assert (=> d!1188180 (= (list!15960 lt!1421686) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308))))))

(assert (=> d!1188180 (= lt!1421686 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))) (value!215403 (_1!24179 (get!14111 lt!1421308)))))))

(assert (=> d!1188180 (= (charsOf!4650 (_1!24179 (get!14111 lt!1421308))) lt!1421686)))

(declare-fun b_lambda!117111 () Bool)

(assert (=> (not b_lambda!117111) (not d!1188180)))

(declare-fun tb!241305 () Bool)

(declare-fun t!333126 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333126) tb!241305))

(declare-fun b!4013254 () Bool)

(declare-fun e!2488979 () Bool)

(declare-fun tp!1220540 () Bool)

(assert (=> b!4013254 (= e!2488979 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))) (value!215403 (_1!24179 (get!14111 lt!1421308)))))) tp!1220540))))

(declare-fun result!292458 () Bool)

(assert (=> tb!241305 (= result!292458 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))) (value!215403 (_1!24179 (get!14111 lt!1421308))))) e!2488979))))

(assert (= tb!241305 b!4013254))

(declare-fun m!4599747 () Bool)

(assert (=> b!4013254 m!4599747))

(declare-fun m!4599749 () Bool)

(assert (=> tb!241305 m!4599749))

(assert (=> d!1188180 t!333126))

(declare-fun b_and!308323 () Bool)

(assert (= b_and!308245 (and (=> t!333126 result!292458) b_and!308323)))

(declare-fun tb!241307 () Bool)

(declare-fun t!333128 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333128) tb!241307))

(declare-fun result!292460 () Bool)

(assert (= result!292460 result!292458))

(assert (=> d!1188180 t!333128))

(declare-fun b_and!308325 () Bool)

(assert (= b_and!308247 (and (=> t!333128 result!292460) b_and!308325)))

(declare-fun t!333130 () Bool)

(declare-fun tb!241309 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333130) tb!241309))

(declare-fun result!292462 () Bool)

(assert (= result!292462 result!292458))

(assert (=> d!1188180 t!333130))

(declare-fun b_and!308327 () Bool)

(assert (= b_and!308249 (and (=> t!333130 result!292462) b_and!308327)))

(declare-fun m!4599751 () Bool)

(assert (=> d!1188180 m!4599751))

(declare-fun m!4599753 () Bool)

(assert (=> d!1188180 m!4599753))

(assert (=> b!4012418 d!1188180))

(declare-fun d!1188182 () Bool)

(assert (=> d!1188182 (= (get!14111 lt!1421308) (v!39615 lt!1421308))))

(assert (=> b!4012418 d!1188182))

(declare-fun d!1188184 () Bool)

(declare-fun e!2488982 () Bool)

(assert (=> d!1188184 e!2488982))

(declare-fun res!1631610 () Bool)

(assert (=> d!1188184 (=> res!1631610 e!2488982)))

(declare-fun lt!1421687 () Bool)

(assert (=> d!1188184 (= res!1631610 (not lt!1421687))))

(declare-fun e!2488980 () Bool)

(assert (=> d!1188184 (= lt!1421687 e!2488980)))

(declare-fun res!1631608 () Bool)

(assert (=> d!1188184 (=> res!1631608 e!2488980)))

(assert (=> d!1188184 (= res!1631608 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1188184 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421043)) lt!1421687)))

(declare-fun b!4013256 () Bool)

(declare-fun res!1631611 () Bool)

(declare-fun e!2488981 () Bool)

(assert (=> b!4013256 (=> (not res!1631611) (not e!2488981))))

(assert (=> b!4013256 (= res!1631611 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 lt!1421043))))))

(declare-fun b!4013257 () Bool)

(assert (=> b!4013257 (= e!2488981 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 lt!1421043))))))

(declare-fun b!4013255 () Bool)

(assert (=> b!4013255 (= e!2488980 e!2488981)))

(declare-fun res!1631609 () Bool)

(assert (=> b!4013255 (=> (not res!1631609) (not e!2488981))))

(assert (=> b!4013255 (= res!1631609 (not ((_ is Nil!42944) (tail!6251 lt!1421043))))))

(declare-fun b!4013258 () Bool)

(assert (=> b!4013258 (= e!2488982 (>= (size!32110 (tail!6251 lt!1421043)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1188184 (not res!1631608)) b!4013255))

(assert (= (and b!4013255 res!1631609) b!4013256))

(assert (= (and b!4013256 res!1631611) b!4013257))

(assert (= (and d!1188184 (not res!1631610)) b!4013258))

(assert (=> b!4013256 m!4597839))

(assert (=> b!4013256 m!4598791))

(assert (=> b!4013256 m!4598513))

(declare-fun m!4599755 () Bool)

(assert (=> b!4013256 m!4599755))

(assert (=> b!4013257 m!4597839))

(assert (=> b!4013257 m!4598795))

(assert (=> b!4013257 m!4598513))

(declare-fun m!4599757 () Bool)

(assert (=> b!4013257 m!4599757))

(assert (=> b!4013257 m!4598795))

(assert (=> b!4013257 m!4599757))

(declare-fun m!4599759 () Bool)

(assert (=> b!4013257 m!4599759))

(assert (=> b!4013258 m!4598513))

(declare-fun m!4599761 () Bool)

(assert (=> b!4013258 m!4599761))

(assert (=> b!4013258 m!4597839))

(assert (=> b!4013258 m!4598803))

(assert (=> b!4012370 d!1188184))

(assert (=> b!4012370 d!1187746))

(declare-fun d!1188186 () Bool)

(assert (=> d!1188186 (= (tail!6251 lt!1421043) (t!332999 lt!1421043))))

(assert (=> b!4012370 d!1188186))

(assert (=> b!4012417 d!1188172))

(assert (=> b!4012417 d!1187604))

(declare-fun b!4013259 () Bool)

(declare-fun e!2488984 () List!43068)

(assert (=> b!4013259 (= e!2488984 suffix!1299)))

(declare-fun b!4013262 () Bool)

(declare-fun e!2488983 () Bool)

(declare-fun lt!1421688 () List!43068)

(assert (=> b!4013262 (= e!2488983 (or (not (= suffix!1299 Nil!42944)) (= lt!1421688 (t!332999 lt!1421023))))))

(declare-fun b!4013260 () Bool)

(assert (=> b!4013260 (= e!2488984 (Cons!42944 (h!48364 (t!332999 lt!1421023)) (++!11236 (t!332999 (t!332999 lt!1421023)) suffix!1299)))))

(declare-fun b!4013261 () Bool)

(declare-fun res!1631613 () Bool)

(assert (=> b!4013261 (=> (not res!1631613) (not e!2488983))))

(assert (=> b!4013261 (= res!1631613 (= (size!32110 lt!1421688) (+ (size!32110 (t!332999 lt!1421023)) (size!32110 suffix!1299))))))

(declare-fun d!1188188 () Bool)

(assert (=> d!1188188 e!2488983))

(declare-fun res!1631612 () Bool)

(assert (=> d!1188188 (=> (not res!1631612) (not e!2488983))))

(assert (=> d!1188188 (= res!1631612 (= (content!6512 lt!1421688) ((_ map or) (content!6512 (t!332999 lt!1421023)) (content!6512 suffix!1299))))))

(assert (=> d!1188188 (= lt!1421688 e!2488984)))

(declare-fun c!693895 () Bool)

(assert (=> d!1188188 (= c!693895 ((_ is Nil!42944) (t!332999 lt!1421023)))))

(assert (=> d!1188188 (= (++!11236 (t!332999 lt!1421023) suffix!1299) lt!1421688)))

(assert (= (and d!1188188 c!693895) b!4013259))

(assert (= (and d!1188188 (not c!693895)) b!4013260))

(assert (= (and d!1188188 res!1631612) b!4013261))

(assert (= (and b!4013261 res!1631613) b!4013262))

(declare-fun m!4599763 () Bool)

(assert (=> b!4013260 m!4599763))

(declare-fun m!4599765 () Bool)

(assert (=> b!4013261 m!4599765))

(declare-fun m!4599767 () Bool)

(assert (=> b!4013261 m!4599767))

(assert (=> b!4013261 m!4597545))

(declare-fun m!4599769 () Bool)

(assert (=> d!1188188 m!4599769))

(declare-fun m!4599771 () Bool)

(assert (=> d!1188188 m!4599771))

(assert (=> d!1188188 m!4598587))

(assert (=> b!4012440 d!1188188))

(assert (=> d!1187638 d!1187604))

(assert (=> d!1187638 d!1187626))

(assert (=> d!1187638 d!1187630))

(assert (=> d!1187638 d!1187642))

(assert (=> d!1187638 d!1187640))

(declare-fun d!1188190 () Bool)

(assert (=> d!1188190 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 token!484) lt!1421016) (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 lt!1421037)) (rule!9878 token!484) (size!32110 lt!1421037) lt!1421037) suffixResult!105)))))

(assert (=> d!1188190 true))

(declare-fun _$59!655 () Unit!61970)

(assert (=> d!1188190 (= (choose!24249 thiss!21717 rules!2999 lt!1421037 lt!1421016 suffixResult!105 (rule!9878 token!484)) _$59!655)))

(declare-fun bs!589473 () Bool)

(assert (= bs!589473 d!1188190))

(assert (=> bs!589473 m!4597473))

(assert (=> bs!589473 m!4597469))

(assert (=> bs!589473 m!4597469))

(assert (=> bs!589473 m!4597471))

(assert (=> bs!589473 m!4597421))

(assert (=> d!1187638 d!1188190))

(assert (=> b!4011962 d!1187838))

(assert (=> b!4011962 d!1187606))

(declare-fun b!4013282 () Bool)

(declare-fun e!2488999 () Bool)

(assert (=> b!4013282 (= e!2488999 (nullable!4117 (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4013283 () Bool)

(declare-fun e!2489002 () Bool)

(declare-fun lt!1421693 () Bool)

(assert (=> b!4013283 (= e!2489002 (not lt!1421693))))

(declare-fun b!4013284 () Bool)

(declare-fun e!2489003 () Bool)

(declare-fun call!286508 () Bool)

(assert (=> b!4013284 (= e!2489003 (= lt!1421693 call!286508))))

(declare-fun b!4013285 () Bool)

(declare-fun e!2489004 () Bool)

(declare-fun e!2489005 () Bool)

(assert (=> b!4013285 (= e!2489004 e!2489005)))

(declare-fun res!1631631 () Bool)

(assert (=> b!4013285 (=> (not res!1631631) (not e!2489005))))

(assert (=> b!4013285 (= res!1631631 (not lt!1421693))))

(declare-fun b!4013286 () Bool)

(declare-fun res!1631628 () Bool)

(declare-fun e!2489000 () Bool)

(assert (=> b!4013286 (=> (not res!1631628) (not e!2489000))))

(assert (=> b!4013286 (= res!1631628 (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))))))))

(declare-fun b!4013287 () Bool)

(declare-fun res!1631630 () Bool)

(assert (=> b!4013287 (=> res!1631630 e!2489004)))

(assert (=> b!4013287 (= res!1631630 e!2489000)))

(declare-fun res!1631629 () Bool)

(assert (=> b!4013287 (=> (not res!1631629) (not e!2489000))))

(assert (=> b!4013287 (= res!1631629 lt!1421693)))

(declare-fun b!4013288 () Bool)

(assert (=> b!4013288 (= e!2489000 (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (c!693563 (regex!6834 (rule!9878 token!484)))))))

(declare-fun b!4013289 () Bool)

(declare-fun res!1631633 () Bool)

(assert (=> b!4013289 (=> res!1631633 e!2489004)))

(assert (=> b!4013289 (= res!1631633 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484)))))))

(assert (=> b!4013289 (= e!2489002 e!2489004)))

(declare-fun b!4013290 () Bool)

(declare-fun res!1631627 () Bool)

(declare-fun e!2489001 () Bool)

(assert (=> b!4013290 (=> res!1631627 e!2489001)))

(assert (=> b!4013290 (= res!1631627 (not (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))))

(declare-fun b!4013291 () Bool)

(assert (=> b!4013291 (= e!2489003 e!2489002)))

(declare-fun c!693901 () Bool)

(assert (=> b!4013291 (= c!693901 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun d!1188210 () Bool)

(assert (=> d!1188210 e!2489003))

(declare-fun c!693899 () Bool)

(assert (=> d!1188210 (= c!693899 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 token!484))))))

(assert (=> d!1188210 (= lt!1421693 e!2488999)))

(declare-fun c!693900 () Bool)

(assert (=> d!1188210 (= c!693900 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))

(assert (=> d!1188210 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1188210 (= (matchR!5700 (regex!6834 (rule!9878 token!484)) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) lt!1421693)))

(declare-fun b!4013292 () Bool)

(assert (=> b!4013292 (= e!2488999 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))))) (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))))))))

(declare-fun bm!286503 () Bool)

(assert (=> bm!286503 (= call!286508 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))

(declare-fun b!4013293 () Bool)

(declare-fun res!1631634 () Bool)

(assert (=> b!4013293 (=> (not res!1631634) (not e!2489000))))

(assert (=> b!4013293 (= res!1631634 (not call!286508))))

(declare-fun b!4013294 () Bool)

(assert (=> b!4013294 (= e!2489001 (not (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (c!693563 (regex!6834 (rule!9878 token!484))))))))

(declare-fun b!4013295 () Bool)

(assert (=> b!4013295 (= e!2489005 e!2489001)))

(declare-fun res!1631632 () Bool)

(assert (=> b!4013295 (=> res!1631632 e!2489001)))

(assert (=> b!4013295 (= res!1631632 call!286508)))

(assert (= (and d!1188210 c!693900) b!4013282))

(assert (= (and d!1188210 (not c!693900)) b!4013292))

(assert (= (and d!1188210 c!693899) b!4013284))

(assert (= (and d!1188210 (not c!693899)) b!4013291))

(assert (= (and b!4013291 c!693901) b!4013283))

(assert (= (and b!4013291 (not c!693901)) b!4013289))

(assert (= (and b!4013289 (not res!1631633)) b!4013287))

(assert (= (and b!4013287 res!1631629) b!4013293))

(assert (= (and b!4013293 res!1631634) b!4013286))

(assert (= (and b!4013286 res!1631628) b!4013288))

(assert (= (and b!4013287 (not res!1631630)) b!4013285))

(assert (= (and b!4013285 res!1631631) b!4013295))

(assert (= (and b!4013295 (not res!1631632)) b!4013290))

(assert (= (and b!4013290 (not res!1631627)) b!4013294))

(assert (= (or b!4013284 b!4013293 b!4013295) bm!286503))

(assert (=> b!4013294 m!4598475))

(declare-fun m!4599807 () Bool)

(assert (=> b!4013294 m!4599807))

(assert (=> bm!286503 m!4598475))

(declare-fun m!4599809 () Bool)

(assert (=> bm!286503 m!4599809))

(assert (=> b!4013290 m!4598475))

(declare-fun m!4599811 () Bool)

(assert (=> b!4013290 m!4599811))

(assert (=> b!4013290 m!4599811))

(declare-fun m!4599813 () Bool)

(assert (=> b!4013290 m!4599813))

(assert (=> b!4013288 m!4598475))

(assert (=> b!4013288 m!4599807))

(assert (=> b!4013282 m!4597881))

(assert (=> b!4013286 m!4598475))

(assert (=> b!4013286 m!4599811))

(assert (=> b!4013286 m!4599811))

(assert (=> b!4013286 m!4599813))

(assert (=> b!4013292 m!4598475))

(assert (=> b!4013292 m!4599807))

(assert (=> b!4013292 m!4599807))

(declare-fun m!4599815 () Bool)

(assert (=> b!4013292 m!4599815))

(assert (=> b!4013292 m!4598475))

(assert (=> b!4013292 m!4599811))

(assert (=> b!4013292 m!4599815))

(assert (=> b!4013292 m!4599811))

(declare-fun m!4599817 () Bool)

(assert (=> b!4013292 m!4599817))

(assert (=> d!1188210 m!4598475))

(assert (=> d!1188210 m!4599809))

(assert (=> d!1188210 m!4597879))

(assert (=> b!4012361 d!1188210))

(declare-fun d!1188216 () Bool)

(assert (=> d!1188216 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))) (list!15962 (c!693562 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))

(declare-fun bs!589474 () Bool)

(assert (= bs!589474 d!1188216))

(declare-fun m!4599819 () Bool)

(assert (=> bs!589474 m!4599819))

(assert (=> b!4012361 d!1188216))

(declare-fun d!1188218 () Bool)

(declare-fun lt!1421699 () BalanceConc!25684)

(assert (=> d!1188218 (= (list!15960 lt!1421699) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293))))))

(assert (=> d!1188218 (= lt!1421699 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293))))) (value!215403 (_1!24179 (get!14111 lt!1421293)))))))

(assert (=> d!1188218 (= (charsOf!4650 (_1!24179 (get!14111 lt!1421293))) lt!1421699)))

(declare-fun b_lambda!117115 () Bool)

(assert (=> (not b_lambda!117115) (not d!1188218)))

(declare-fun tb!241317 () Bool)

(declare-fun t!333138 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333138) tb!241317))

(declare-fun b!4013305 () Bool)

(declare-fun e!2489010 () Bool)

(declare-fun tp!1220541 () Bool)

(assert (=> b!4013305 (= e!2489010 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293))))) (value!215403 (_1!24179 (get!14111 lt!1421293)))))) tp!1220541))))

(declare-fun result!292470 () Bool)

(assert (=> tb!241317 (= result!292470 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293))))) (value!215403 (_1!24179 (get!14111 lt!1421293))))) e!2489010))))

(assert (= tb!241317 b!4013305))

(declare-fun m!4599835 () Bool)

(assert (=> b!4013305 m!4599835))

(declare-fun m!4599839 () Bool)

(assert (=> tb!241317 m!4599839))

(assert (=> d!1188218 t!333138))

(declare-fun b_and!308335 () Bool)

(assert (= b_and!308323 (and (=> t!333138 result!292470) b_and!308335)))

(declare-fun tb!241319 () Bool)

(declare-fun t!333140 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333140) tb!241319))

(declare-fun result!292472 () Bool)

(assert (= result!292472 result!292470))

(assert (=> d!1188218 t!333140))

(declare-fun b_and!308337 () Bool)

(assert (= b_and!308325 (and (=> t!333140 result!292472) b_and!308337)))

(declare-fun t!333142 () Bool)

(declare-fun tb!241321 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333142) tb!241321))

(declare-fun result!292474 () Bool)

(assert (= result!292474 result!292470))

(assert (=> d!1188218 t!333142))

(declare-fun b_and!308339 () Bool)

(assert (= b_and!308327 (and (=> t!333142 result!292474) b_and!308339)))

(declare-fun m!4599849 () Bool)

(assert (=> d!1188218 m!4599849))

(declare-fun m!4599853 () Bool)

(assert (=> d!1188218 m!4599853))

(assert (=> b!4012361 d!1188218))

(assert (=> b!4012361 d!1187836))

(assert (=> b!4012443 d!1187862))

(declare-fun d!1188220 () Bool)

(declare-fun lt!1421700 () Int)

(assert (=> d!1188220 (>= lt!1421700 0)))

(declare-fun e!2489011 () Int)

(assert (=> d!1188220 (= lt!1421700 e!2489011)))

(declare-fun c!693903 () Bool)

(assert (=> d!1188220 (= c!693903 ((_ is Nil!42944) lt!1421148))))

(assert (=> d!1188220 (= (size!32110 lt!1421148) lt!1421700)))

(declare-fun b!4013306 () Bool)

(assert (=> b!4013306 (= e!2489011 0)))

(declare-fun b!4013307 () Bool)

(assert (=> b!4013307 (= e!2489011 (+ 1 (size!32110 (t!332999 lt!1421148))))))

(assert (= (and d!1188220 c!693903) b!4013306))

(assert (= (and d!1188220 (not c!693903)) b!4013307))

(declare-fun m!4599861 () Bool)

(assert (=> b!4013307 m!4599861))

(assert (=> b!4011965 d!1188220))

(assert (=> b!4011965 d!1187604))

(declare-fun d!1188222 () Bool)

(declare-fun lt!1421701 () Int)

(assert (=> d!1188222 (>= lt!1421701 0)))

(declare-fun e!2489012 () Int)

(assert (=> d!1188222 (= lt!1421701 e!2489012)))

(declare-fun c!693904 () Bool)

(assert (=> d!1188222 (= c!693904 ((_ is Nil!42944) suffixResult!105))))

(assert (=> d!1188222 (= (size!32110 suffixResult!105) lt!1421701)))

(declare-fun b!4013308 () Bool)

(assert (=> b!4013308 (= e!2489012 0)))

(declare-fun b!4013309 () Bool)

(assert (=> b!4013309 (= e!2489012 (+ 1 (size!32110 (t!332999 suffixResult!105))))))

(assert (= (and d!1188222 c!693904) b!4013308))

(assert (= (and d!1188222 (not c!693904)) b!4013309))

(declare-fun m!4599865 () Bool)

(assert (=> b!4013309 m!4599865))

(assert (=> b!4011965 d!1188222))

(declare-fun b!4013310 () Bool)

(declare-fun e!2489015 () Option!9248)

(declare-fun lt!1421705 () tuple2!42094)

(assert (=> b!4013310 (= e!2489015 (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (h!48366 rules!2999)) (seqFromList!5059 (_1!24181 lt!1421705))) (h!48366 rules!2999) (size!32112 (seqFromList!5059 (_1!24181 lt!1421705))) (_1!24181 lt!1421705)) (_2!24181 lt!1421705))))))

(declare-fun lt!1421706 () Unit!61970)

(assert (=> b!4013310 (= lt!1421706 (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (h!48366 rules!2999)) lt!1421016))))

(declare-fun res!1631647 () Bool)

(assert (=> b!4013310 (= res!1631647 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (h!48366 rules!2999)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(declare-fun e!2489016 () Bool)

(assert (=> b!4013310 (=> res!1631647 e!2489016)))

(assert (=> b!4013310 e!2489016))

(declare-fun lt!1421703 () Unit!61970)

(assert (=> b!4013310 (= lt!1421703 lt!1421706)))

(declare-fun lt!1421704 () Unit!61970)

(assert (=> b!4013310 (= lt!1421704 (lemmaSemiInverse!1879 (transformation!6834 (h!48366 rules!2999)) (seqFromList!5059 (_1!24181 lt!1421705))))))

(declare-fun b!4013311 () Bool)

(declare-fun res!1631646 () Bool)

(declare-fun e!2489014 () Bool)

(assert (=> b!4013311 (=> (not res!1631646) (not e!2489014))))

(declare-fun lt!1421702 () Option!9248)

(assert (=> b!4013311 (= res!1631646 (< (size!32110 (_2!24179 (get!14111 lt!1421702))) (size!32110 lt!1421016)))))

(declare-fun b!4013312 () Bool)

(declare-fun e!2489013 () Bool)

(assert (=> b!4013312 (= e!2489013 e!2489014)))

(declare-fun res!1631645 () Bool)

(assert (=> b!4013312 (=> (not res!1631645) (not e!2489014))))

(assert (=> b!4013312 (= res!1631645 (matchR!5700 (regex!6834 (h!48366 rules!2999)) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421702))))))))

(declare-fun b!4013314 () Bool)

(assert (=> b!4013314 (= e!2489015 None!9247)))

(declare-fun b!4013315 () Bool)

(declare-fun res!1631644 () Bool)

(assert (=> b!4013315 (=> (not res!1631644) (not e!2489014))))

(assert (=> b!4013315 (= res!1631644 (= (value!215403 (_1!24179 (get!14111 lt!1421702))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421702)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421702)))))))))

(declare-fun b!4013316 () Bool)

(declare-fun res!1631643 () Bool)

(assert (=> b!4013316 (=> (not res!1631643) (not e!2489014))))

(assert (=> b!4013316 (= res!1631643 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421702)))) (_2!24179 (get!14111 lt!1421702))) lt!1421016))))

(declare-fun b!4013317 () Bool)

(declare-fun res!1631648 () Bool)

(assert (=> b!4013317 (=> (not res!1631648) (not e!2489014))))

(assert (=> b!4013317 (= res!1631648 (= (rule!9878 (_1!24179 (get!14111 lt!1421702))) (h!48366 rules!2999)))))

(declare-fun b!4013318 () Bool)

(assert (=> b!4013318 (= e!2489014 (= (size!32109 (_1!24179 (get!14111 lt!1421702))) (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421702))))))))

(declare-fun d!1188224 () Bool)

(assert (=> d!1188224 e!2489013))

(declare-fun res!1631642 () Bool)

(assert (=> d!1188224 (=> res!1631642 e!2489013)))

(assert (=> d!1188224 (= res!1631642 (isEmpty!25653 lt!1421702))))

(assert (=> d!1188224 (= lt!1421702 e!2489015)))

(declare-fun c!693905 () Bool)

(assert (=> d!1188224 (= c!693905 (isEmpty!25654 (_1!24181 lt!1421705)))))

(assert (=> d!1188224 (= lt!1421705 (findLongestMatch!1272 (regex!6834 (h!48366 rules!2999)) lt!1421016))))

(assert (=> d!1188224 (ruleValid!2766 thiss!21717 (h!48366 rules!2999))))

(assert (=> d!1188224 (= (maxPrefixOneRule!2741 thiss!21717 (h!48366 rules!2999) lt!1421016) lt!1421702)))

(declare-fun b!4013313 () Bool)

(assert (=> b!4013313 (= e!2489016 (matchR!5700 (regex!6834 (h!48366 rules!2999)) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (h!48366 rules!2999)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(assert (= (and d!1188224 c!693905) b!4013314))

(assert (= (and d!1188224 (not c!693905)) b!4013310))

(assert (= (and b!4013310 (not res!1631647)) b!4013313))

(assert (= (and d!1188224 (not res!1631642)) b!4013312))

(assert (= (and b!4013312 res!1631645) b!4013316))

(assert (= (and b!4013316 res!1631643) b!4013311))

(assert (= (and b!4013311 res!1631646) b!4013317))

(assert (= (and b!4013317 res!1631648) b!4013315))

(assert (= (and b!4013315 res!1631644) b!4013318))

(declare-fun m!4599879 () Bool)

(assert (=> b!4013316 m!4599879))

(declare-fun m!4599881 () Bool)

(assert (=> b!4013316 m!4599881))

(assert (=> b!4013316 m!4599881))

(declare-fun m!4599883 () Bool)

(assert (=> b!4013316 m!4599883))

(assert (=> b!4013316 m!4599883))

(declare-fun m!4599885 () Bool)

(assert (=> b!4013316 m!4599885))

(assert (=> b!4013317 m!4599879))

(declare-fun m!4599887 () Bool)

(assert (=> d!1188224 m!4599887))

(declare-fun m!4599889 () Bool)

(assert (=> d!1188224 m!4599889))

(declare-fun m!4599891 () Bool)

(assert (=> d!1188224 m!4599891))

(assert (=> d!1188224 m!4598919))

(assert (=> b!4013318 m!4599879))

(declare-fun m!4599893 () Bool)

(assert (=> b!4013318 m!4599893))

(assert (=> b!4013315 m!4599879))

(declare-fun m!4599895 () Bool)

(assert (=> b!4013315 m!4599895))

(assert (=> b!4013315 m!4599895))

(declare-fun m!4599897 () Bool)

(assert (=> b!4013315 m!4599897))

(assert (=> b!4013313 m!4598349))

(assert (=> b!4013313 m!4597825))

(assert (=> b!4013313 m!4598349))

(assert (=> b!4013313 m!4597825))

(declare-fun m!4599903 () Bool)

(assert (=> b!4013313 m!4599903))

(declare-fun m!4599907 () Bool)

(assert (=> b!4013313 m!4599907))

(assert (=> b!4013312 m!4599879))

(assert (=> b!4013312 m!4599881))

(assert (=> b!4013312 m!4599881))

(assert (=> b!4013312 m!4599883))

(assert (=> b!4013312 m!4599883))

(declare-fun m!4599911 () Bool)

(assert (=> b!4013312 m!4599911))

(assert (=> b!4013311 m!4599879))

(declare-fun m!4599915 () Bool)

(assert (=> b!4013311 m!4599915))

(assert (=> b!4013311 m!4597825))

(assert (=> b!4013310 m!4598349))

(assert (=> b!4013310 m!4597825))

(assert (=> b!4013310 m!4599903))

(declare-fun m!4599919 () Bool)

(assert (=> b!4013310 m!4599919))

(declare-fun m!4599923 () Bool)

(assert (=> b!4013310 m!4599923))

(declare-fun m!4599927 () Bool)

(assert (=> b!4013310 m!4599927))

(assert (=> b!4013310 m!4597825))

(assert (=> b!4013310 m!4599923))

(declare-fun m!4599929 () Bool)

(assert (=> b!4013310 m!4599929))

(assert (=> b!4013310 m!4599923))

(declare-fun m!4599931 () Bool)

(assert (=> b!4013310 m!4599931))

(assert (=> b!4013310 m!4598349))

(assert (=> b!4013310 m!4599923))

(declare-fun m!4599934 () Bool)

(assert (=> b!4013310 m!4599934))

(assert (=> bm!286391 d!1188224))

(declare-fun d!1188230 () Bool)

(declare-fun e!2489024 () Bool)

(assert (=> d!1188230 e!2489024))

(declare-fun res!1631660 () Bool)

(assert (=> d!1188230 (=> res!1631660 e!2489024)))

(declare-fun lt!1421713 () Bool)

(assert (=> d!1188230 (= res!1631660 (not lt!1421713))))

(declare-fun e!2489022 () Bool)

(assert (=> d!1188230 (= lt!1421713 e!2489022)))

(declare-fun res!1631658 () Bool)

(assert (=> d!1188230 (=> res!1631658 e!2489022)))

(assert (=> d!1188230 (= res!1631658 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188230 (= (isPrefix!3921 lt!1421037 (++!11236 prefix!494 newSuffix!27)) lt!1421713)))

(declare-fun b!4013333 () Bool)

(declare-fun res!1631661 () Bool)

(declare-fun e!2489023 () Bool)

(assert (=> b!4013333 (=> (not res!1631661) (not e!2489023))))

(assert (=> b!4013333 (= res!1631661 (= (head!8519 lt!1421037) (head!8519 (++!11236 prefix!494 newSuffix!27))))))

(declare-fun b!4013334 () Bool)

(assert (=> b!4013334 (= e!2489023 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 (++!11236 prefix!494 newSuffix!27))))))

(declare-fun b!4013332 () Bool)

(assert (=> b!4013332 (= e!2489022 e!2489023)))

(declare-fun res!1631659 () Bool)

(assert (=> b!4013332 (=> (not res!1631659) (not e!2489023))))

(assert (=> b!4013332 (= res!1631659 (not ((_ is Nil!42944) (++!11236 prefix!494 newSuffix!27))))))

(declare-fun b!4013335 () Bool)

(assert (=> b!4013335 (= e!2489024 (>= (size!32110 (++!11236 prefix!494 newSuffix!27)) (size!32110 lt!1421037)))))

(assert (= (and d!1188230 (not res!1631658)) b!4013332))

(assert (= (and b!4013332 res!1631659) b!4013333))

(assert (= (and b!4013333 res!1631661) b!4013334))

(assert (= (and d!1188230 (not res!1631660)) b!4013335))

(assert (=> b!4013333 m!4597837))

(assert (=> b!4013333 m!4597511))

(declare-fun m!4599947 () Bool)

(assert (=> b!4013333 m!4599947))

(assert (=> b!4013334 m!4597839))

(assert (=> b!4013334 m!4597511))

(declare-fun m!4599949 () Bool)

(assert (=> b!4013334 m!4599949))

(assert (=> b!4013334 m!4597839))

(assert (=> b!4013334 m!4599949))

(declare-fun m!4599951 () Bool)

(assert (=> b!4013334 m!4599951))

(assert (=> b!4013335 m!4597511))

(declare-fun m!4599953 () Bool)

(assert (=> b!4013335 m!4599953))

(assert (=> b!4013335 m!4597421))

(assert (=> d!1187648 d!1188230))

(assert (=> d!1187648 d!1187614))

(declare-fun d!1188236 () Bool)

(assert (=> d!1188236 (isPrefix!3921 lt!1421037 (++!11236 prefix!494 newSuffix!27))))

(assert (=> d!1188236 true))

(declare-fun _$58!538 () Unit!61970)

(assert (=> d!1188236 (= (choose!24245 lt!1421037 prefix!494 newSuffix!27) _$58!538)))

(declare-fun bs!589476 () Bool)

(assert (= bs!589476 d!1188236))

(assert (=> bs!589476 m!4597511))

(assert (=> bs!589476 m!4597511))

(assert (=> bs!589476 m!4598547))

(assert (=> d!1187648 d!1188236))

(assert (=> d!1187648 d!1187622))

(assert (=> b!4012366 d!1187836))

(declare-fun d!1188242 () Bool)

(declare-fun lt!1421717 () List!43068)

(assert (=> d!1188242 (= (++!11236 (t!332999 newSuffix!27) lt!1421717) (tail!6251 suffix!1299))))

(declare-fun e!2489028 () List!43068)

(assert (=> d!1188242 (= lt!1421717 e!2489028)))

(declare-fun c!693911 () Bool)

(assert (=> d!1188242 (= c!693911 ((_ is Cons!42944) (t!332999 newSuffix!27)))))

(assert (=> d!1188242 (>= (size!32110 (tail!6251 suffix!1299)) (size!32110 (t!332999 newSuffix!27)))))

(assert (=> d!1188242 (= (getSuffix!2346 (tail!6251 suffix!1299) (t!332999 newSuffix!27)) lt!1421717)))

(declare-fun b!4013342 () Bool)

(assert (=> b!4013342 (= e!2489028 (getSuffix!2346 (tail!6251 (tail!6251 suffix!1299)) (t!332999 (t!332999 newSuffix!27))))))

(declare-fun b!4013343 () Bool)

(assert (=> b!4013343 (= e!2489028 (tail!6251 suffix!1299))))

(assert (= (and d!1188242 c!693911) b!4013342))

(assert (= (and d!1188242 (not c!693911)) b!4013343))

(declare-fun m!4599959 () Bool)

(assert (=> d!1188242 m!4599959))

(assert (=> d!1188242 m!4597913))

(declare-fun m!4599961 () Bool)

(assert (=> d!1188242 m!4599961))

(assert (=> d!1188242 m!4598143))

(assert (=> b!4013342 m!4597913))

(declare-fun m!4599965 () Bool)

(assert (=> b!4013342 m!4599965))

(assert (=> b!4013342 m!4599965))

(declare-fun m!4599967 () Bool)

(assert (=> b!4013342 m!4599967))

(assert (=> b!4012305 d!1188242))

(declare-fun d!1188248 () Bool)

(assert (=> d!1188248 (= (tail!6251 suffix!1299) (t!332999 suffix!1299))))

(assert (=> b!4012305 d!1188248))

(declare-fun d!1188250 () Bool)

(declare-fun e!2489033 () Bool)

(assert (=> d!1188250 e!2489033))

(declare-fun res!1631664 () Bool)

(assert (=> d!1188250 (=> res!1631664 e!2489033)))

(declare-fun lt!1421720 () Bool)

(assert (=> d!1188250 (= res!1631664 (not lt!1421720))))

(declare-fun e!2489031 () Bool)

(assert (=> d!1188250 (= lt!1421720 e!2489031)))

(declare-fun res!1631662 () Bool)

(assert (=> d!1188250 (=> res!1631662 e!2489031)))

(assert (=> d!1188250 (= res!1631662 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1188250 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421052)) lt!1421720)))

(declare-fun b!4013349 () Bool)

(declare-fun res!1631665 () Bool)

(declare-fun e!2489032 () Bool)

(assert (=> b!4013349 (=> (not res!1631665) (not e!2489032))))

(assert (=> b!4013349 (= res!1631665 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 lt!1421052))))))

(declare-fun b!4013350 () Bool)

(assert (=> b!4013350 (= e!2489032 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 lt!1421052))))))

(declare-fun b!4013348 () Bool)

(assert (=> b!4013348 (= e!2489031 e!2489032)))

(declare-fun res!1631663 () Bool)

(assert (=> b!4013348 (=> (not res!1631663) (not e!2489032))))

(assert (=> b!4013348 (= res!1631663 (not ((_ is Nil!42944) (tail!6251 lt!1421052))))))

(declare-fun b!4013351 () Bool)

(assert (=> b!4013351 (= e!2489033 (>= (size!32110 (tail!6251 lt!1421052)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1188250 (not res!1631662)) b!4013348))

(assert (= (and b!4013348 res!1631663) b!4013349))

(assert (= (and b!4013349 res!1631665) b!4013350))

(assert (= (and d!1188250 (not res!1631664)) b!4013351))

(assert (=> b!4013349 m!4597839))

(assert (=> b!4013349 m!4598791))

(assert (=> b!4013349 m!4598131))

(declare-fun m!4599971 () Bool)

(assert (=> b!4013349 m!4599971))

(assert (=> b!4013350 m!4597839))

(assert (=> b!4013350 m!4598795))

(assert (=> b!4013350 m!4598131))

(declare-fun m!4599975 () Bool)

(assert (=> b!4013350 m!4599975))

(assert (=> b!4013350 m!4598795))

(assert (=> b!4013350 m!4599975))

(declare-fun m!4599977 () Bool)

(assert (=> b!4013350 m!4599977))

(assert (=> b!4013351 m!4598131))

(declare-fun m!4599979 () Bool)

(assert (=> b!4013351 m!4599979))

(assert (=> b!4013351 m!4597839))

(assert (=> b!4013351 m!4598803))

(assert (=> b!4012088 d!1188250))

(assert (=> b!4012088 d!1187746))

(declare-fun d!1188258 () Bool)

(assert (=> d!1188258 (= (tail!6251 lt!1421052) (t!332999 lt!1421052))))

(assert (=> b!4012088 d!1188258))

(declare-fun b!4013354 () Bool)

(declare-fun e!2489036 () List!43068)

(assert (=> b!4013354 (= e!2489036 (_2!24179 (get!14111 lt!1421199)))))

(declare-fun b!4013357 () Bool)

(declare-fun e!2489035 () Bool)

(declare-fun lt!1421722 () List!43068)

(assert (=> b!4013357 (= e!2489035 (or (not (= (_2!24179 (get!14111 lt!1421199)) Nil!42944)) (= lt!1421722 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))))))))

(declare-fun b!4013355 () Bool)

(assert (=> b!4013355 (= e!2489036 (Cons!42944 (h!48364 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (++!11236 (t!332999 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (_2!24179 (get!14111 lt!1421199)))))))

(declare-fun b!4013356 () Bool)

(declare-fun res!1631667 () Bool)

(assert (=> b!4013356 (=> (not res!1631667) (not e!2489035))))

(assert (=> b!4013356 (= res!1631667 (= (size!32110 lt!1421722) (+ (size!32110 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (size!32110 (_2!24179 (get!14111 lt!1421199))))))))

(declare-fun d!1188260 () Bool)

(assert (=> d!1188260 e!2489035))

(declare-fun res!1631666 () Bool)

(assert (=> d!1188260 (=> (not res!1631666) (not e!2489035))))

(assert (=> d!1188260 (= res!1631666 (= (content!6512 lt!1421722) ((_ map or) (content!6512 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))) (content!6512 (_2!24179 (get!14111 lt!1421199))))))))

(assert (=> d!1188260 (= lt!1421722 e!2489036)))

(declare-fun c!693915 () Bool)

(assert (=> d!1188260 (= c!693915 ((_ is Nil!42944) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199))))))))

(assert (=> d!1188260 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421199)))) (_2!24179 (get!14111 lt!1421199))) lt!1421722)))

(assert (= (and d!1188260 c!693915) b!4013354))

(assert (= (and d!1188260 (not c!693915)) b!4013355))

(assert (= (and d!1188260 res!1631666) b!4013356))

(assert (= (and b!4013356 res!1631667) b!4013357))

(declare-fun m!4599981 () Bool)

(assert (=> b!4013355 m!4599981))

(declare-fun m!4599985 () Bool)

(assert (=> b!4013356 m!4599985))

(assert (=> b!4013356 m!4598053))

(declare-fun m!4599987 () Bool)

(assert (=> b!4013356 m!4599987))

(assert (=> b!4013356 m!4598077))

(declare-fun m!4599989 () Bool)

(assert (=> d!1188260 m!4599989))

(assert (=> d!1188260 m!4598053))

(declare-fun m!4599991 () Bool)

(assert (=> d!1188260 m!4599991))

(declare-fun m!4599993 () Bool)

(assert (=> d!1188260 m!4599993))

(assert (=> b!4012064 d!1188260))

(assert (=> b!4012064 d!1187730))

(assert (=> b!4012064 d!1187732))

(assert (=> b!4012064 d!1187728))

(declare-fun d!1188264 () Bool)

(declare-fun e!2489059 () Bool)

(assert (=> d!1188264 e!2489059))

(declare-fun res!1631686 () Bool)

(assert (=> d!1188264 (=> res!1631686 e!2489059)))

(assert (=> d!1188264 (= res!1631686 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(declare-fun lt!1421734 () Unit!61970)

(declare-fun choose!24252 (Regex!11739 List!43068) Unit!61970)

(assert (=> d!1188264 (= lt!1421734 (choose!24252 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421025))))

(assert (=> d!1188264 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1188264 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421025) lt!1421734)))

(declare-fun b!4013392 () Bool)

(assert (=> b!4013392 (= e!2489059 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(assert (= (and d!1188264 (not res!1631686)) b!4013392))

(assert (=> d!1188264 m!4598349))

(assert (=> d!1188264 m!4597781))

(assert (=> d!1188264 m!4598351))

(assert (=> d!1188264 m!4598151))

(assert (=> d!1188264 m!4597781))

(assert (=> d!1188264 m!4598365))

(declare-fun m!4600061 () Bool)

(assert (=> d!1188264 m!4600061))

(assert (=> d!1188264 m!4598349))

(assert (=> b!4013392 m!4598349))

(assert (=> b!4013392 m!4597781))

(assert (=> b!4013392 m!4598349))

(assert (=> b!4013392 m!4597781))

(assert (=> b!4013392 m!4598351))

(assert (=> b!4013392 m!4598353))

(assert (=> b!4012281 d!1188264))

(assert (=> b!4012281 d!1187970))

(assert (=> b!4012281 d!1188172))

(declare-fun b!4013418 () Bool)

(declare-fun e!2489074 () Bool)

(assert (=> b!4013418 (= e!2489074 true)))

(declare-fun d!1188302 () Bool)

(assert (=> d!1188302 e!2489074))

(assert (= d!1188302 b!4013418))

(declare-fun lambda!127073 () Int)

(declare-fun order!22507 () Int)

(declare-fun dynLambda!18223 (Int Int) Int)

(assert (=> b!4013418 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (dynLambda!18223 order!22507 lambda!127073))))

(declare-fun order!22509 () Int)

(declare-fun dynLambda!18224 (Int Int) Int)

(assert (=> b!4013418 (< (dynLambda!18224 order!22509 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (dynLambda!18223 order!22507 lambda!127073))))

(assert (=> d!1188302 (= (list!15960 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 (_1!24181 lt!1421269))))) (list!15960 (seqFromList!5059 (_1!24181 lt!1421269))))))

(declare-fun lt!1421743 () Unit!61970)

(declare-fun ForallOf!809 (Int BalanceConc!25684) Unit!61970)

(assert (=> d!1188302 (= lt!1421743 (ForallOf!809 lambda!127073 (seqFromList!5059 (_1!24181 lt!1421269))))))

(assert (=> d!1188302 (= (lemmaSemiInverse!1879 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 (_1!24181 lt!1421269))) lt!1421743)))

(declare-fun b_lambda!117121 () Bool)

(assert (=> (not b_lambda!117121) (not d!1188302)))

(declare-fun tb!241335 () Bool)

(declare-fun t!333156 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333156) tb!241335))

(declare-fun tp!1220543 () Bool)

(declare-fun b!4013433 () Bool)

(declare-fun e!2489082 () Bool)

(assert (=> b!4013433 (= e!2489082 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 (_1!24181 lt!1421269)))))) tp!1220543))))

(declare-fun result!292488 () Bool)

(assert (=> tb!241335 (= result!292488 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 (_1!24181 lt!1421269))))) e!2489082))))

(assert (= tb!241335 b!4013433))

(declare-fun m!4600103 () Bool)

(assert (=> b!4013433 m!4600103))

(declare-fun m!4600105 () Bool)

(assert (=> tb!241335 m!4600105))

(assert (=> d!1188302 t!333156))

(declare-fun b_and!308353 () Bool)

(assert (= b_and!308335 (and (=> t!333156 result!292488) b_and!308353)))

(declare-fun t!333158 () Bool)

(declare-fun tb!241337 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333158) tb!241337))

(declare-fun result!292490 () Bool)

(assert (= result!292490 result!292488))

(assert (=> d!1188302 t!333158))

(declare-fun b_and!308355 () Bool)

(assert (= b_and!308337 (and (=> t!333158 result!292490) b_and!308355)))

(declare-fun t!333160 () Bool)

(declare-fun tb!241339 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333160) tb!241339))

(declare-fun result!292492 () Bool)

(assert (= result!292492 result!292488))

(assert (=> d!1188302 t!333160))

(declare-fun b_and!308357 () Bool)

(assert (= b_and!308339 (and (=> t!333160 result!292492) b_and!308357)))

(declare-fun b_lambda!117123 () Bool)

(assert (=> (not b_lambda!117123) (not d!1188302)))

(declare-fun tb!241341 () Bool)

(declare-fun t!333162 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333162) tb!241341))

(declare-fun result!292494 () Bool)

(assert (=> tb!241341 (= result!292494 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 (_1!24181 lt!1421269)))))))

(declare-fun m!4600115 () Bool)

(assert (=> tb!241341 m!4600115))

(assert (=> d!1188302 t!333162))

(declare-fun b_and!308359 () Bool)

(assert (= b_and!308275 (and (=> t!333162 result!292494) b_and!308359)))

(declare-fun tb!241343 () Bool)

(declare-fun t!333164 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333164) tb!241343))

(declare-fun result!292496 () Bool)

(assert (= result!292496 result!292494))

(assert (=> d!1188302 t!333164))

(declare-fun b_and!308361 () Bool)

(assert (= b_and!308277 (and (=> t!333164 result!292496) b_and!308361)))

(declare-fun tb!241345 () Bool)

(declare-fun t!333166 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333166) tb!241345))

(declare-fun result!292498 () Bool)

(assert (= result!292498 result!292494))

(assert (=> d!1188302 t!333166))

(declare-fun b_and!308363 () Bool)

(assert (= b_and!308279 (and (=> t!333166 result!292498) b_and!308363)))

(assert (=> d!1188302 m!4598361))

(declare-fun m!4600119 () Bool)

(assert (=> d!1188302 m!4600119))

(declare-fun m!4600121 () Bool)

(assert (=> d!1188302 m!4600121))

(declare-fun m!4600123 () Bool)

(assert (=> d!1188302 m!4600123))

(assert (=> d!1188302 m!4600123))

(declare-fun m!4600125 () Bool)

(assert (=> d!1188302 m!4600125))

(assert (=> d!1188302 m!4598361))

(declare-fun m!4600127 () Bool)

(assert (=> d!1188302 m!4600127))

(assert (=> d!1188302 m!4598361))

(assert (=> d!1188302 m!4600121))

(assert (=> b!4012281 d!1188302))

(declare-fun d!1188318 () Bool)

(assert (=> d!1188318 (= (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))) ((_ is Nil!42944) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(assert (=> b!4012281 d!1188318))

(declare-fun d!1188322 () Bool)

(declare-fun lt!1421752 () Int)

(assert (=> d!1188322 (= lt!1421752 (size!32110 (list!15960 (seqFromList!5059 (_1!24181 lt!1421269)))))))

(declare-fun size!32114 (Conc!13045) Int)

(assert (=> d!1188322 (= lt!1421752 (size!32114 (c!693562 (seqFromList!5059 (_1!24181 lt!1421269)))))))

(assert (=> d!1188322 (= (size!32112 (seqFromList!5059 (_1!24181 lt!1421269))) lt!1421752)))

(declare-fun bs!589492 () Bool)

(assert (= bs!589492 d!1188322))

(assert (=> bs!589492 m!4598361))

(assert (=> bs!589492 m!4600127))

(assert (=> bs!589492 m!4600127))

(declare-fun m!4600159 () Bool)

(assert (=> bs!589492 m!4600159))

(declare-fun m!4600161 () Bool)

(assert (=> bs!589492 m!4600161))

(assert (=> b!4012281 d!1188322))

(assert (=> b!4012281 d!1188170))

(declare-fun d!1188336 () Bool)

(assert (=> d!1188336 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 (_1!24181 lt!1421269))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 (_1!24181 lt!1421269))))))

(declare-fun b_lambda!117125 () Bool)

(assert (=> (not b_lambda!117125) (not d!1188336)))

(assert (=> d!1188336 t!333162))

(declare-fun b_and!308365 () Bool)

(assert (= b_and!308359 (and (=> t!333162 result!292494) b_and!308365)))

(assert (=> d!1188336 t!333164))

(declare-fun b_and!308367 () Bool)

(assert (= b_and!308361 (and (=> t!333164 result!292496) b_and!308367)))

(assert (=> d!1188336 t!333166))

(declare-fun b_and!308369 () Bool)

(assert (= b_and!308363 (and (=> t!333166 result!292498) b_and!308369)))

(assert (=> d!1188336 m!4598361))

(assert (=> d!1188336 m!4600121))

(assert (=> b!4012281 d!1188336))

(declare-fun d!1188340 () Bool)

(assert (=> d!1188340 (= (seqFromList!5059 (_1!24181 lt!1421269)) (fromListB!2316 (_1!24181 lt!1421269)))))

(declare-fun bs!589493 () Bool)

(assert (= bs!589493 d!1188340))

(declare-fun m!4600171 () Bool)

(assert (=> bs!589493 m!4600171))

(assert (=> b!4012281 d!1188340))

(declare-fun d!1188344 () Bool)

(declare-fun c!693936 () Bool)

(assert (=> d!1188344 (= c!693936 ((_ is Nil!42944) lt!1421286))))

(declare-fun e!2489097 () (InoxSet C!23664))

(assert (=> d!1188344 (= (content!6512 lt!1421286) e!2489097)))

(declare-fun b!4013455 () Bool)

(assert (=> b!4013455 (= e!2489097 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013456 () Bool)

(assert (=> b!4013456 (= e!2489097 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421286) true) (content!6512 (t!332999 lt!1421286))))))

(assert (= (and d!1188344 c!693936) b!4013455))

(assert (= (and d!1188344 (not c!693936)) b!4013456))

(declare-fun m!4600175 () Bool)

(assert (=> b!4013456 m!4600175))

(declare-fun m!4600177 () Bool)

(assert (=> b!4013456 m!4600177))

(assert (=> d!1187618 d!1188344))

(assert (=> d!1187618 d!1187740))

(declare-fun d!1188348 () Bool)

(declare-fun c!693937 () Bool)

(assert (=> d!1188348 (= c!693937 ((_ is Nil!42944) lt!1421023))))

(declare-fun e!2489098 () (InoxSet C!23664))

(assert (=> d!1188348 (= (content!6512 lt!1421023) e!2489098)))

(declare-fun b!4013457 () Bool)

(assert (=> b!4013457 (= e!2489098 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013458 () Bool)

(assert (=> b!4013458 (= e!2489098 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421023) true) (content!6512 (t!332999 lt!1421023))))))

(assert (= (and d!1188348 c!693937) b!4013457))

(assert (= (and d!1188348 (not c!693937)) b!4013458))

(declare-fun m!4600179 () Bool)

(assert (=> b!4013458 m!4600179))

(assert (=> b!4013458 m!4599771))

(assert (=> d!1187618 d!1188348))

(declare-fun d!1188350 () Bool)

(declare-fun e!2489101 () Bool)

(assert (=> d!1188350 e!2489101))

(declare-fun res!1631722 () Bool)

(assert (=> d!1188350 (=> res!1631722 e!2489101)))

(declare-fun lt!1421753 () Bool)

(assert (=> d!1188350 (= res!1631722 (not lt!1421753))))

(declare-fun e!2489099 () Bool)

(assert (=> d!1188350 (= lt!1421753 e!2489099)))

(declare-fun res!1631720 () Bool)

(assert (=> d!1188350 (=> res!1631720 e!2489099)))

(assert (=> d!1188350 (= res!1631720 ((_ is Nil!42944) (tail!6251 newSuffix!27)))))

(assert (=> d!1188350 (= (isPrefix!3921 (tail!6251 newSuffix!27) (tail!6251 suffix!1299)) lt!1421753)))

(declare-fun b!4013460 () Bool)

(declare-fun res!1631723 () Bool)

(declare-fun e!2489100 () Bool)

(assert (=> b!4013460 (=> (not res!1631723) (not e!2489100))))

(assert (=> b!4013460 (= res!1631723 (= (head!8519 (tail!6251 newSuffix!27)) (head!8519 (tail!6251 suffix!1299))))))

(declare-fun b!4013461 () Bool)

(assert (=> b!4013461 (= e!2489100 (isPrefix!3921 (tail!6251 (tail!6251 newSuffix!27)) (tail!6251 (tail!6251 suffix!1299))))))

(declare-fun b!4013459 () Bool)

(assert (=> b!4013459 (= e!2489099 e!2489100)))

(declare-fun res!1631721 () Bool)

(assert (=> b!4013459 (=> (not res!1631721) (not e!2489100))))

(assert (=> b!4013459 (= res!1631721 (not ((_ is Nil!42944) (tail!6251 suffix!1299))))))

(declare-fun b!4013462 () Bool)

(assert (=> b!4013462 (= e!2489101 (>= (size!32110 (tail!6251 suffix!1299)) (size!32110 (tail!6251 newSuffix!27))))))

(assert (= (and d!1188350 (not res!1631720)) b!4013459))

(assert (= (and b!4013459 res!1631721) b!4013460))

(assert (= (and b!4013460 res!1631723) b!4013461))

(assert (= (and d!1188350 (not res!1631722)) b!4013462))

(assert (=> b!4013460 m!4597911))

(declare-fun m!4600181 () Bool)

(assert (=> b!4013460 m!4600181))

(assert (=> b!4013460 m!4597913))

(declare-fun m!4600183 () Bool)

(assert (=> b!4013460 m!4600183))

(assert (=> b!4013461 m!4597911))

(declare-fun m!4600185 () Bool)

(assert (=> b!4013461 m!4600185))

(assert (=> b!4013461 m!4597913))

(assert (=> b!4013461 m!4599965))

(assert (=> b!4013461 m!4600185))

(assert (=> b!4013461 m!4599965))

(declare-fun m!4600187 () Bool)

(assert (=> b!4013461 m!4600187))

(assert (=> b!4013462 m!4597913))

(assert (=> b!4013462 m!4599961))

(assert (=> b!4013462 m!4597911))

(declare-fun m!4600189 () Bool)

(assert (=> b!4013462 m!4600189))

(assert (=> b!4012004 d!1188350))

(declare-fun d!1188352 () Bool)

(assert (=> d!1188352 (= (tail!6251 newSuffix!27) (t!332999 newSuffix!27))))

(assert (=> b!4012004 d!1188352))

(assert (=> b!4012004 d!1188248))

(declare-fun d!1188354 () Bool)

(declare-fun lt!1421754 () Int)

(assert (=> d!1188354 (>= lt!1421754 0)))

(declare-fun e!2489102 () Int)

(assert (=> d!1188354 (= lt!1421754 e!2489102)))

(declare-fun c!693938 () Bool)

(assert (=> d!1188354 (= c!693938 ((_ is Nil!42944) lt!1421227))))

(assert (=> d!1188354 (= (size!32110 lt!1421227) lt!1421754)))

(declare-fun b!4013463 () Bool)

(assert (=> b!4013463 (= e!2489102 0)))

(declare-fun b!4013464 () Bool)

(assert (=> b!4013464 (= e!2489102 (+ 1 (size!32110 (t!332999 lt!1421227))))))

(assert (= (and d!1188354 c!693938) b!4013463))

(assert (= (and d!1188354 (not c!693938)) b!4013464))

(declare-fun m!4600191 () Bool)

(assert (=> b!4013464 m!4600191))

(assert (=> b!4012128 d!1188354))

(assert (=> b!4012128 d!1187518))

(declare-fun d!1188356 () Bool)

(declare-fun lt!1421755 () Int)

(assert (=> d!1188356 (>= lt!1421755 0)))

(declare-fun e!2489103 () Int)

(assert (=> d!1188356 (= lt!1421755 e!2489103)))

(declare-fun c!693939 () Bool)

(assert (=> d!1188356 (= c!693939 ((_ is Nil!42944) newSuffixResult!27))))

(assert (=> d!1188356 (= (size!32110 newSuffixResult!27) lt!1421755)))

(declare-fun b!4013465 () Bool)

(assert (=> b!4013465 (= e!2489103 0)))

(declare-fun b!4013466 () Bool)

(assert (=> b!4013466 (= e!2489103 (+ 1 (size!32110 (t!332999 newSuffixResult!27))))))

(assert (= (and d!1188356 c!693939) b!4013465))

(assert (= (and d!1188356 (not c!693939)) b!4013466))

(declare-fun m!4600193 () Bool)

(assert (=> b!4013466 m!4600193))

(assert (=> b!4012128 d!1188356))

(assert (=> d!1187438 d!1187436))

(declare-fun d!1188358 () Bool)

(assert (=> d!1188358 (ruleValid!2766 thiss!21717 (rule!9878 token!484))))

(assert (=> d!1188358 true))

(declare-fun _$65!1449 () Unit!61970)

(assert (=> d!1188358 (= (choose!24243 thiss!21717 (rule!9878 token!484) rules!2999) _$65!1449)))

(declare-fun bs!589495 () Bool)

(assert (= bs!589495 d!1188358))

(assert (=> bs!589495 m!4597409))

(assert (=> d!1187438 d!1188358))

(declare-fun d!1188362 () Bool)

(declare-fun lt!1421761 () Bool)

(declare-fun content!6514 (List!43070) (InoxSet Rule!13468))

(assert (=> d!1188362 (= lt!1421761 (select (content!6514 rules!2999) (rule!9878 token!484)))))

(declare-fun e!2489116 () Bool)

(assert (=> d!1188362 (= lt!1421761 e!2489116)))

(declare-fun res!1631733 () Bool)

(assert (=> d!1188362 (=> (not res!1631733) (not e!2489116))))

(assert (=> d!1188362 (= res!1631733 ((_ is Cons!42946) rules!2999))))

(assert (=> d!1188362 (= (contains!8536 rules!2999 (rule!9878 token!484)) lt!1421761)))

(declare-fun b!4013484 () Bool)

(declare-fun e!2489117 () Bool)

(assert (=> b!4013484 (= e!2489116 e!2489117)))

(declare-fun res!1631734 () Bool)

(assert (=> b!4013484 (=> res!1631734 e!2489117)))

(assert (=> b!4013484 (= res!1631734 (= (h!48366 rules!2999) (rule!9878 token!484)))))

(declare-fun b!4013485 () Bool)

(assert (=> b!4013485 (= e!2489117 (contains!8536 (t!333001 rules!2999) (rule!9878 token!484)))))

(assert (= (and d!1188362 res!1631733) b!4013484))

(assert (= (and b!4013484 (not res!1631734)) b!4013485))

(declare-fun m!4600215 () Bool)

(assert (=> d!1188362 m!4600215))

(declare-fun m!4600217 () Bool)

(assert (=> d!1188362 m!4600217))

(declare-fun m!4600219 () Bool)

(assert (=> b!4013485 m!4600219))

(assert (=> d!1187438 d!1188362))

(declare-fun d!1188382 () Bool)

(declare-fun lt!1421763 () List!43068)

(assert (=> d!1188382 (= (++!11236 (t!332999 lt!1421037) lt!1421763) (tail!6251 prefix!494))))

(declare-fun e!2489119 () List!43068)

(assert (=> d!1188382 (= lt!1421763 e!2489119)))

(declare-fun c!693945 () Bool)

(assert (=> d!1188382 (= c!693945 ((_ is Cons!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188382 (>= (size!32110 (tail!6251 prefix!494)) (size!32110 (t!332999 lt!1421037)))))

(assert (=> d!1188382 (= (getSuffix!2346 (tail!6251 prefix!494) (t!332999 lt!1421037)) lt!1421763)))

(declare-fun b!4013488 () Bool)

(assert (=> b!4013488 (= e!2489119 (getSuffix!2346 (tail!6251 (tail!6251 prefix!494)) (t!332999 (t!332999 lt!1421037))))))

(declare-fun b!4013489 () Bool)

(assert (=> b!4013489 (= e!2489119 (tail!6251 prefix!494))))

(assert (= (and d!1188382 c!693945) b!4013488))

(assert (= (and d!1188382 (not c!693945)) b!4013489))

(declare-fun m!4600223 () Bool)

(assert (=> d!1188382 m!4600223))

(assert (=> d!1188382 m!4597857))

(assert (=> d!1188382 m!4598801))

(assert (=> d!1188382 m!4598421))

(assert (=> b!4013488 m!4597857))

(assert (=> b!4013488 m!4598797))

(assert (=> b!4013488 m!4598797))

(declare-fun m!4600225 () Bool)

(assert (=> b!4013488 m!4600225))

(assert (=> b!4012351 d!1188382))

(assert (=> b!4012351 d!1187748))

(assert (=> b!4011997 d!1187838))

(assert (=> b!4011997 d!1187518))

(declare-fun d!1188388 () Bool)

(declare-fun e!2489123 () Bool)

(assert (=> d!1188388 e!2489123))

(declare-fun res!1631737 () Bool)

(assert (=> d!1188388 (=> res!1631737 e!2489123)))

(declare-fun lt!1421765 () Bool)

(assert (=> d!1188388 (= res!1631737 (not lt!1421765))))

(declare-fun e!2489121 () Bool)

(assert (=> d!1188388 (= lt!1421765 e!2489121)))

(declare-fun res!1631735 () Bool)

(assert (=> d!1188388 (=> res!1631735 e!2489121)))

(assert (=> d!1188388 (= res!1631735 ((_ is Nil!42944) (tail!6251 lt!1421016)))))

(assert (=> d!1188388 (= (isPrefix!3921 (tail!6251 lt!1421016) (tail!6251 lt!1421016)) lt!1421765)))

(declare-fun b!4013493 () Bool)

(declare-fun res!1631738 () Bool)

(declare-fun e!2489122 () Bool)

(assert (=> b!4013493 (=> (not res!1631738) (not e!2489122))))

(assert (=> b!4013493 (= res!1631738 (= (head!8519 (tail!6251 lt!1421016)) (head!8519 (tail!6251 lt!1421016))))))

(declare-fun b!4013494 () Bool)

(assert (=> b!4013494 (= e!2489122 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421016)) (tail!6251 (tail!6251 lt!1421016))))))

(declare-fun b!4013492 () Bool)

(assert (=> b!4013492 (= e!2489121 e!2489122)))

(declare-fun res!1631736 () Bool)

(assert (=> b!4013492 (=> (not res!1631736) (not e!2489122))))

(assert (=> b!4013492 (= res!1631736 (not ((_ is Nil!42944) (tail!6251 lt!1421016))))))

(declare-fun b!4013495 () Bool)

(assert (=> b!4013495 (= e!2489123 (>= (size!32110 (tail!6251 lt!1421016)) (size!32110 (tail!6251 lt!1421016))))))

(assert (= (and d!1188388 (not res!1631735)) b!4013492))

(assert (= (and b!4013492 res!1631736) b!4013493))

(assert (= (and b!4013493 res!1631738) b!4013494))

(assert (= (and d!1188388 (not res!1631737)) b!4013495))

(assert (=> b!4013493 m!4597827))

(assert (=> b!4013493 m!4598937))

(assert (=> b!4013493 m!4597827))

(assert (=> b!4013493 m!4598937))

(assert (=> b!4013494 m!4597827))

(assert (=> b!4013494 m!4598939))

(assert (=> b!4013494 m!4597827))

(assert (=> b!4013494 m!4598939))

(assert (=> b!4013494 m!4598939))

(assert (=> b!4013494 m!4598939))

(declare-fun m!4600229 () Bool)

(assert (=> b!4013494 m!4600229))

(assert (=> b!4013495 m!4597827))

(assert (=> b!4013495 m!4598943))

(assert (=> b!4013495 m!4597827))

(assert (=> b!4013495 m!4598943))

(assert (=> b!4011949 d!1188388))

(assert (=> b!4011949 d!1187842))

(declare-fun d!1188392 () Bool)

(declare-fun lt!1421766 () Int)

(assert (=> d!1188392 (>= lt!1421766 0)))

(declare-fun e!2489124 () Int)

(assert (=> d!1188392 (= lt!1421766 e!2489124)))

(declare-fun c!693947 () Bool)

(assert (=> d!1188392 (= c!693947 ((_ is Nil!42944) lt!1421286))))

(assert (=> d!1188392 (= (size!32110 lt!1421286) lt!1421766)))

(declare-fun b!4013496 () Bool)

(assert (=> b!4013496 (= e!2489124 0)))

(declare-fun b!4013497 () Bool)

(assert (=> b!4013497 (= e!2489124 (+ 1 (size!32110 (t!332999 lt!1421286))))))

(assert (= (and d!1188392 c!693947) b!4013496))

(assert (= (and d!1188392 (not c!693947)) b!4013497))

(declare-fun m!4600231 () Bool)

(assert (=> b!4013497 m!4600231))

(assert (=> b!4012349 d!1188392))

(assert (=> b!4012349 d!1187604))

(declare-fun d!1188396 () Bool)

(declare-fun lt!1421768 () Int)

(assert (=> d!1188396 (>= lt!1421768 0)))

(declare-fun e!2489126 () Int)

(assert (=> d!1188396 (= lt!1421768 e!2489126)))

(declare-fun c!693949 () Bool)

(assert (=> d!1188396 (= c!693949 ((_ is Nil!42944) lt!1421023))))

(assert (=> d!1188396 (= (size!32110 lt!1421023) lt!1421768)))

(declare-fun b!4013500 () Bool)

(assert (=> b!4013500 (= e!2489126 0)))

(declare-fun b!4013501 () Bool)

(assert (=> b!4013501 (= e!2489126 (+ 1 (size!32110 (t!332999 lt!1421023))))))

(assert (= (and d!1188396 c!693949) b!4013500))

(assert (= (and d!1188396 (not c!693949)) b!4013501))

(assert (=> b!4013501 m!4599767))

(assert (=> b!4012349 d!1188396))

(declare-fun bs!589499 () Bool)

(declare-fun d!1188398 () Bool)

(assert (= bs!589499 (and d!1188398 d!1188302)))

(declare-fun lambda!127076 () Int)

(assert (=> bs!589499 (= (and (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (= lambda!127076 lambda!127073))))

(assert (=> d!1188398 true))

(assert (=> d!1188398 (< (dynLambda!18224 order!22509 (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (dynLambda!18223 order!22507 lambda!127076))))

(assert (=> d!1188398 true))

(assert (=> d!1188398 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (dynLambda!18223 order!22507 lambda!127076))))

(declare-fun Forall!1473 (Int) Bool)

(assert (=> d!1188398 (= (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (Forall!1473 lambda!127076))))

(declare-fun bs!589500 () Bool)

(assert (= bs!589500 d!1188398))

(declare-fun m!4600261 () Bool)

(assert (=> bs!589500 m!4600261))

(assert (=> d!1187666 d!1188398))

(declare-fun d!1188410 () Bool)

(declare-fun lt!1421774 () Int)

(assert (=> d!1188410 (>= lt!1421774 0)))

(declare-fun e!2489138 () Int)

(assert (=> d!1188410 (= lt!1421774 e!2489138)))

(declare-fun c!693954 () Bool)

(assert (=> d!1188410 (= c!693954 ((_ is Nil!42944) (++!11236 lt!1421058 newSuffixResult!27)))))

(assert (=> d!1188410 (= (size!32110 (++!11236 lt!1421058 newSuffixResult!27)) lt!1421774)))

(declare-fun b!4013530 () Bool)

(assert (=> b!4013530 (= e!2489138 0)))

(declare-fun b!4013531 () Bool)

(assert (=> b!4013531 (= e!2489138 (+ 1 (size!32110 (t!332999 (++!11236 lt!1421058 newSuffixResult!27)))))))

(assert (= (and d!1188410 c!693954) b!4013530))

(assert (= (and d!1188410 (not c!693954)) b!4013531))

(declare-fun m!4600263 () Bool)

(assert (=> b!4013531 m!4600263))

(assert (=> b!4012143 d!1188410))

(assert (=> b!4012143 d!1187518))

(declare-fun d!1188412 () Bool)

(assert (=> d!1188412 (= (isEmpty!25653 lt!1421293) (not ((_ is Some!9247) lt!1421293)))))

(assert (=> d!1187630 d!1188412))

(declare-fun d!1188414 () Bool)

(assert (=> d!1188414 (= (isEmpty!25654 (_1!24181 lt!1421296)) ((_ is Nil!42944) (_1!24181 lt!1421296)))))

(assert (=> d!1187630 d!1188414))

(declare-fun d!1188416 () Bool)

(declare-fun lt!1421795 () tuple2!42094)

(assert (=> d!1188416 (= (++!11236 (_1!24181 lt!1421795) (_2!24181 lt!1421795)) lt!1421016)))

(declare-fun sizeTr!262 (List!43068 Int) Int)

(assert (=> d!1188416 (= lt!1421795 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 0 lt!1421016 lt!1421016 (sizeTr!262 lt!1421016 0)))))

(declare-fun lt!1421796 () Unit!61970)

(declare-fun lt!1421798 () Unit!61970)

(assert (=> d!1188416 (= lt!1421796 lt!1421798)))

(declare-fun lt!1421794 () List!43068)

(declare-fun lt!1421792 () Int)

(assert (=> d!1188416 (= (sizeTr!262 lt!1421794 lt!1421792) (+ (size!32110 lt!1421794) lt!1421792))))

(declare-fun lemmaSizeTrEqualsSize!261 (List!43068 Int) Unit!61970)

(assert (=> d!1188416 (= lt!1421798 (lemmaSizeTrEqualsSize!261 lt!1421794 lt!1421792))))

(assert (=> d!1188416 (= lt!1421792 0)))

(assert (=> d!1188416 (= lt!1421794 Nil!42944)))

(declare-fun lt!1421793 () Unit!61970)

(declare-fun lt!1421797 () Unit!61970)

(assert (=> d!1188416 (= lt!1421793 lt!1421797)))

(declare-fun lt!1421791 () Int)

(assert (=> d!1188416 (= (sizeTr!262 lt!1421016 lt!1421791) (+ (size!32110 lt!1421016) lt!1421791))))

(assert (=> d!1188416 (= lt!1421797 (lemmaSizeTrEqualsSize!261 lt!1421016 lt!1421791))))

(assert (=> d!1188416 (= lt!1421791 0)))

(assert (=> d!1188416 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1188416 (= (findLongestMatch!1272 (regex!6834 (rule!9878 token!484)) lt!1421016) lt!1421795)))

(declare-fun bs!589501 () Bool)

(assert (= bs!589501 d!1188416))

(declare-fun m!4600281 () Bool)

(assert (=> bs!589501 m!4600281))

(assert (=> bs!589501 m!4597825))

(declare-fun m!4600283 () Bool)

(assert (=> bs!589501 m!4600283))

(declare-fun m!4600285 () Bool)

(assert (=> bs!589501 m!4600285))

(declare-fun m!4600287 () Bool)

(assert (=> bs!589501 m!4600287))

(assert (=> bs!589501 m!4597879))

(declare-fun m!4600289 () Bool)

(assert (=> bs!589501 m!4600289))

(declare-fun m!4600291 () Bool)

(assert (=> bs!589501 m!4600291))

(assert (=> bs!589501 m!4600291))

(declare-fun m!4600293 () Bool)

(assert (=> bs!589501 m!4600293))

(declare-fun m!4600295 () Bool)

(assert (=> bs!589501 m!4600295))

(assert (=> d!1187630 d!1188416))

(assert (=> d!1187630 d!1187436))

(declare-fun b!4013591 () Bool)

(declare-fun e!2489167 () List!43068)

(assert (=> b!4013591 (= e!2489167 lt!1421045)))

(declare-fun b!4013594 () Bool)

(declare-fun e!2489166 () Bool)

(declare-fun lt!1421799 () List!43068)

(assert (=> b!4013594 (= e!2489166 (or (not (= lt!1421045 Nil!42944)) (= lt!1421799 (t!332999 lt!1421037))))))

(declare-fun b!4013592 () Bool)

(assert (=> b!4013592 (= e!2489167 (Cons!42944 (h!48364 (t!332999 lt!1421037)) (++!11236 (t!332999 (t!332999 lt!1421037)) lt!1421045)))))

(declare-fun b!4013593 () Bool)

(declare-fun res!1631748 () Bool)

(assert (=> b!4013593 (=> (not res!1631748) (not e!2489166))))

(assert (=> b!4013593 (= res!1631748 (= (size!32110 lt!1421799) (+ (size!32110 (t!332999 lt!1421037)) (size!32110 lt!1421045))))))

(declare-fun d!1188418 () Bool)

(assert (=> d!1188418 e!2489166))

(declare-fun res!1631747 () Bool)

(assert (=> d!1188418 (=> (not res!1631747) (not e!2489166))))

(assert (=> d!1188418 (= res!1631747 (= (content!6512 lt!1421799) ((_ map or) (content!6512 (t!332999 lt!1421037)) (content!6512 lt!1421045))))))

(assert (=> d!1188418 (= lt!1421799 e!2489167)))

(declare-fun c!693955 () Bool)

(assert (=> d!1188418 (= c!693955 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188418 (= (++!11236 (t!332999 lt!1421037) lt!1421045) lt!1421799)))

(assert (= (and d!1188418 c!693955) b!4013591))

(assert (= (and d!1188418 (not c!693955)) b!4013592))

(assert (= (and d!1188418 res!1631747) b!4013593))

(assert (= (and b!4013593 res!1631748) b!4013594))

(declare-fun m!4600297 () Bool)

(assert (=> b!4013592 m!4600297))

(declare-fun m!4600299 () Bool)

(assert (=> b!4013593 m!4600299))

(assert (=> b!4013593 m!4598421))

(assert (=> b!4013593 m!4597815))

(declare-fun m!4600301 () Bool)

(assert (=> d!1188418 m!4600301))

(assert (=> d!1188418 m!4598785))

(assert (=> d!1188418 m!4597821))

(assert (=> b!4011930 d!1188418))

(declare-fun d!1188420 () Bool)

(declare-fun isBalanced!3663 (Conc!13045) Bool)

(assert (=> d!1188420 (= (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))) (isBalanced!3663 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(declare-fun bs!589502 () Bool)

(assert (= bs!589502 d!1188420))

(declare-fun m!4600303 () Bool)

(assert (=> bs!589502 m!4600303))

(assert (=> tb!241217 d!1188420))

(declare-fun d!1188422 () Bool)

(declare-fun e!2489170 () Bool)

(assert (=> d!1188422 e!2489170))

(declare-fun res!1631751 () Bool)

(assert (=> d!1188422 (=> (not res!1631751) (not e!2489170))))

(declare-fun lt!1421802 () BalanceConc!25684)

(assert (=> d!1188422 (= res!1631751 (= (list!15960 lt!1421802) lt!1421037))))

(declare-fun fromList!845 (List!43068) Conc!13045)

(assert (=> d!1188422 (= lt!1421802 (BalanceConc!25685 (fromList!845 lt!1421037)))))

(assert (=> d!1188422 (= (fromListB!2316 lt!1421037) lt!1421802)))

(declare-fun b!4013597 () Bool)

(assert (=> b!4013597 (= e!2489170 (isBalanced!3663 (fromList!845 lt!1421037)))))

(assert (= (and d!1188422 res!1631751) b!4013597))

(declare-fun m!4600305 () Bool)

(assert (=> d!1188422 m!4600305))

(declare-fun m!4600307 () Bool)

(assert (=> d!1188422 m!4600307))

(assert (=> b!4013597 m!4600307))

(assert (=> b!4013597 m!4600307))

(declare-fun m!4600309 () Bool)

(assert (=> b!4013597 m!4600309))

(assert (=> d!1187640 d!1188422))

(declare-fun d!1188424 () Bool)

(assert (=> d!1188424 (= (list!15960 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))) (list!15962 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(declare-fun bs!589503 () Bool)

(assert (= bs!589503 d!1188424))

(declare-fun m!4600311 () Bool)

(assert (=> bs!589503 m!4600311))

(assert (=> b!4012337 d!1188424))

(declare-fun d!1188426 () Bool)

(declare-fun charsToBigInt!1 (List!43069) Int)

(assert (=> d!1188426 (= (inv!17 (value!215403 token!484)) (= (charsToBigInt!1 (text!49896 (value!215403 token!484))) (value!215395 (value!215403 token!484))))))

(declare-fun bs!589504 () Bool)

(assert (= bs!589504 d!1188426))

(declare-fun m!4600313 () Bool)

(assert (=> bs!589504 m!4600313))

(assert (=> b!4012318 d!1188426))

(assert (=> b!4012367 d!1187836))

(declare-fun d!1188428 () Bool)

(declare-fun lt!1421803 () Int)

(assert (=> d!1188428 (>= lt!1421803 0)))

(declare-fun e!2489171 () Int)

(assert (=> d!1188428 (= lt!1421803 e!2489171)))

(declare-fun c!693957 () Bool)

(assert (=> d!1188428 (= c!693957 ((_ is Nil!42944) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))))))

(assert (=> d!1188428 (= (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))) lt!1421803)))

(declare-fun b!4013598 () Bool)

(assert (=> b!4013598 (= e!2489171 0)))

(declare-fun b!4013599 () Bool)

(assert (=> b!4013599 (= e!2489171 (+ 1 (size!32110 (t!332999 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))))))))

(assert (= (and d!1188428 c!693957) b!4013598))

(assert (= (and d!1188428 (not c!693957)) b!4013599))

(declare-fun m!4600315 () Bool)

(assert (=> b!4013599 m!4600315))

(assert (=> b!4012367 d!1188428))

(declare-fun d!1188430 () Bool)

(declare-fun lt!1421804 () Int)

(assert (=> d!1188430 (>= lt!1421804 0)))

(declare-fun e!2489172 () Int)

(assert (=> d!1188430 (= lt!1421804 e!2489172)))

(declare-fun c!693958 () Bool)

(assert (=> d!1188430 (= c!693958 ((_ is Nil!42944) (_2!24179 (get!14111 lt!1421199))))))

(assert (=> d!1188430 (= (size!32110 (_2!24179 (get!14111 lt!1421199))) lt!1421804)))

(declare-fun b!4013600 () Bool)

(assert (=> b!4013600 (= e!2489172 0)))

(declare-fun b!4013601 () Bool)

(assert (=> b!4013601 (= e!2489172 (+ 1 (size!32110 (t!332999 (_2!24179 (get!14111 lt!1421199))))))))

(assert (= (and d!1188430 c!693958) b!4013600))

(assert (= (and d!1188430 (not c!693958)) b!4013601))

(declare-fun m!4600317 () Bool)

(assert (=> b!4013601 m!4600317))

(assert (=> b!4012065 d!1188430))

(assert (=> b!4012065 d!1187728))

(assert (=> b!4012065 d!1188172))

(declare-fun d!1188432 () Bool)

(declare-fun e!2489173 () Bool)

(assert (=> d!1188432 e!2489173))

(declare-fun res!1631752 () Bool)

(assert (=> d!1188432 (=> (not res!1631752) (not e!2489173))))

(declare-fun lt!1421805 () BalanceConc!25684)

(assert (=> d!1188432 (= res!1631752 (= (list!15960 lt!1421805) lt!1421058))))

(assert (=> d!1188432 (= lt!1421805 (BalanceConc!25685 (fromList!845 lt!1421058)))))

(assert (=> d!1188432 (= (fromListB!2316 lt!1421058) lt!1421805)))

(declare-fun b!4013602 () Bool)

(assert (=> b!4013602 (= e!2489173 (isBalanced!3663 (fromList!845 lt!1421058)))))

(assert (= (and d!1188432 res!1631752) b!4013602))

(declare-fun m!4600319 () Bool)

(assert (=> d!1188432 m!4600319))

(declare-fun m!4600321 () Bool)

(assert (=> d!1188432 m!4600321))

(assert (=> b!4013602 m!4600321))

(assert (=> b!4013602 m!4600321))

(declare-fun m!4600323 () Bool)

(assert (=> b!4013602 m!4600323))

(assert (=> d!1187516 d!1188432))

(declare-fun d!1188434 () Bool)

(declare-fun lt!1421806 () Int)

(assert (=> d!1188434 (>= lt!1421806 0)))

(declare-fun e!2489174 () Int)

(assert (=> d!1188434 (= lt!1421806 e!2489174)))

(declare-fun c!693959 () Bool)

(assert (=> d!1188434 (= c!693959 ((_ is Nil!42944) lt!1421052))))

(assert (=> d!1188434 (= (size!32110 lt!1421052) lt!1421806)))

(declare-fun b!4013603 () Bool)

(assert (=> b!4013603 (= e!2489174 0)))

(declare-fun b!4013604 () Bool)

(assert (=> b!4013604 (= e!2489174 (+ 1 (size!32110 (t!332999 lt!1421052))))))

(assert (= (and d!1188434 c!693959) b!4013603))

(assert (= (and d!1188434 (not c!693959)) b!4013604))

(declare-fun m!4600325 () Bool)

(assert (=> b!4013604 m!4600325))

(assert (=> b!4012089 d!1188434))

(assert (=> b!4012089 d!1187604))

(declare-fun d!1188436 () Bool)

(assert (=> d!1188436 (= (isEmpty!25654 (originalCharacters!7434 token!484)) ((_ is Nil!42944) (originalCharacters!7434 token!484)))))

(assert (=> d!1187612 d!1188436))

(declare-fun d!1188438 () Bool)

(declare-fun lt!1421807 () Int)

(assert (=> d!1188438 (>= lt!1421807 0)))

(declare-fun e!2489175 () Int)

(assert (=> d!1188438 (= lt!1421807 e!2489175)))

(declare-fun c!693960 () Bool)

(assert (=> d!1188438 (= c!693960 ((_ is Nil!42944) (_2!24179 (get!14111 lt!1421266))))))

(assert (=> d!1188438 (= (size!32110 (_2!24179 (get!14111 lt!1421266))) lt!1421807)))

(declare-fun b!4013605 () Bool)

(assert (=> b!4013605 (= e!2489175 0)))

(declare-fun b!4013606 () Bool)

(assert (=> b!4013606 (= e!2489175 (+ 1 (size!32110 (t!332999 (_2!24179 (get!14111 lt!1421266))))))))

(assert (= (and d!1188438 c!693960) b!4013605))

(assert (= (and d!1188438 (not c!693960)) b!4013606))

(declare-fun m!4600327 () Bool)

(assert (=> b!4013606 m!4600327))

(assert (=> b!4012282 d!1188438))

(assert (=> b!4012282 d!1187758))

(assert (=> b!4012282 d!1188172))

(declare-fun d!1188440 () Bool)

(assert (=> d!1188440 (= (isEmpty!25654 (tail!6251 lt!1421037)) ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> b!4012408 d!1188440))

(assert (=> b!4012408 d!1187746))

(assert (=> b!4012354 d!1187772))

(declare-fun d!1188442 () Bool)

(assert (=> d!1188442 (= (head!8519 prefix!494) (h!48364 prefix!494))))

(assert (=> b!4012354 d!1188442))

(assert (=> b!4012005 d!1187502))

(assert (=> b!4012005 d!1187504))

(declare-fun b!4013607 () Bool)

(declare-fun e!2489177 () List!43068)

(assert (=> b!4013607 (= e!2489177 lt!1421018)))

(declare-fun e!2489176 () Bool)

(declare-fun b!4013610 () Bool)

(declare-fun lt!1421808 () List!43068)

(assert (=> b!4013610 (= e!2489176 (or (not (= lt!1421018 Nil!42944)) (= lt!1421808 (t!332999 newSuffix!27))))))

(declare-fun b!4013608 () Bool)

(assert (=> b!4013608 (= e!2489177 (Cons!42944 (h!48364 (t!332999 newSuffix!27)) (++!11236 (t!332999 (t!332999 newSuffix!27)) lt!1421018)))))

(declare-fun b!4013609 () Bool)

(declare-fun res!1631754 () Bool)

(assert (=> b!4013609 (=> (not res!1631754) (not e!2489176))))

(assert (=> b!4013609 (= res!1631754 (= (size!32110 lt!1421808) (+ (size!32110 (t!332999 newSuffix!27)) (size!32110 lt!1421018))))))

(declare-fun d!1188444 () Bool)

(assert (=> d!1188444 e!2489176))

(declare-fun res!1631753 () Bool)

(assert (=> d!1188444 (=> (not res!1631753) (not e!2489176))))

(assert (=> d!1188444 (= res!1631753 (= (content!6512 lt!1421808) ((_ map or) (content!6512 (t!332999 newSuffix!27)) (content!6512 lt!1421018))))))

(assert (=> d!1188444 (= lt!1421808 e!2489177)))

(declare-fun c!693961 () Bool)

(assert (=> d!1188444 (= c!693961 ((_ is Nil!42944) (t!332999 newSuffix!27)))))

(assert (=> d!1188444 (= (++!11236 (t!332999 newSuffix!27) lt!1421018) lt!1421808)))

(assert (= (and d!1188444 c!693961) b!4013607))

(assert (= (and d!1188444 (not c!693961)) b!4013608))

(assert (= (and d!1188444 res!1631753) b!4013609))

(assert (= (and b!4013609 res!1631754) b!4013610))

(declare-fun m!4600329 () Bool)

(assert (=> b!4013608 m!4600329))

(declare-fun m!4600331 () Bool)

(assert (=> b!4013609 m!4600331))

(assert (=> b!4013609 m!4598143))

(assert (=> b!4013609 m!4597783))

(declare-fun m!4600333 () Bool)

(assert (=> d!1188444 m!4600333))

(declare-fun m!4600335 () Bool)

(assert (=> d!1188444 m!4600335))

(assert (=> d!1188444 m!4597789))

(assert (=> b!4012302 d!1188444))

(declare-fun bm!286507 () Bool)

(declare-fun call!286514 () Bool)

(declare-fun call!286512 () Bool)

(assert (=> bm!286507 (= call!286514 call!286512)))

(declare-fun b!4013611 () Bool)

(declare-fun e!2489184 () Bool)

(declare-fun call!286513 () Bool)

(assert (=> b!4013611 (= e!2489184 call!286513)))

(declare-fun b!4013612 () Bool)

(declare-fun res!1631755 () Bool)

(declare-fun e!2489181 () Bool)

(assert (=> b!4013612 (=> res!1631755 e!2489181)))

(assert (=> b!4013612 (= res!1631755 (not ((_ is Concat!18804) (regex!6834 (rule!9878 token!484)))))))

(declare-fun e!2489183 () Bool)

(assert (=> b!4013612 (= e!2489183 e!2489181)))

(declare-fun bm!286509 () Bool)

(declare-fun c!693962 () Bool)

(assert (=> bm!286509 (= call!286513 (validRegex!5317 (ite c!693962 (regTwo!23991 (regex!6834 (rule!9878 token!484))) (regTwo!23990 (regex!6834 (rule!9878 token!484))))))))

(declare-fun b!4013613 () Bool)

(declare-fun e!2489178 () Bool)

(assert (=> b!4013613 (= e!2489181 e!2489178)))

(declare-fun res!1631759 () Bool)

(assert (=> b!4013613 (=> (not res!1631759) (not e!2489178))))

(assert (=> b!4013613 (= res!1631759 call!286514)))

(declare-fun b!4013614 () Bool)

(assert (=> b!4013614 (= e!2489178 call!286513)))

(declare-fun b!4013615 () Bool)

(declare-fun res!1631757 () Bool)

(assert (=> b!4013615 (=> (not res!1631757) (not e!2489184))))

(assert (=> b!4013615 (= res!1631757 call!286514)))

(assert (=> b!4013615 (= e!2489183 e!2489184)))

(declare-fun b!4013616 () Bool)

(declare-fun e!2489182 () Bool)

(assert (=> b!4013616 (= e!2489182 e!2489183)))

(assert (=> b!4013616 (= c!693962 ((_ is Union!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4013617 () Bool)

(declare-fun e!2489179 () Bool)

(assert (=> b!4013617 (= e!2489179 e!2489182)))

(declare-fun c!693963 () Bool)

(assert (=> b!4013617 (= c!693963 ((_ is Star!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun d!1188446 () Bool)

(declare-fun res!1631758 () Bool)

(assert (=> d!1188446 (=> res!1631758 e!2489179)))

(assert (=> d!1188446 (= res!1631758 ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484))))))

(assert (=> d!1188446 (= (validRegex!5317 (regex!6834 (rule!9878 token!484))) e!2489179)))

(declare-fun bm!286508 () Bool)

(assert (=> bm!286508 (= call!286512 (validRegex!5317 (ite c!693963 (reg!12068 (regex!6834 (rule!9878 token!484))) (ite c!693962 (regOne!23991 (regex!6834 (rule!9878 token!484))) (regOne!23990 (regex!6834 (rule!9878 token!484)))))))))

(declare-fun b!4013618 () Bool)

(declare-fun e!2489180 () Bool)

(assert (=> b!4013618 (= e!2489180 call!286512)))

(declare-fun b!4013619 () Bool)

(assert (=> b!4013619 (= e!2489182 e!2489180)))

(declare-fun res!1631756 () Bool)

(assert (=> b!4013619 (= res!1631756 (not (nullable!4117 (reg!12068 (regex!6834 (rule!9878 token!484))))))))

(assert (=> b!4013619 (=> (not res!1631756) (not e!2489180))))

(assert (= (and d!1188446 (not res!1631758)) b!4013617))

(assert (= (and b!4013617 c!693963) b!4013619))

(assert (= (and b!4013617 (not c!693963)) b!4013616))

(assert (= (and b!4013619 res!1631756) b!4013618))

(assert (= (and b!4013616 c!693962) b!4013615))

(assert (= (and b!4013616 (not c!693962)) b!4013612))

(assert (= (and b!4013615 res!1631757) b!4013611))

(assert (= (and b!4013612 (not res!1631755)) b!4013613))

(assert (= (and b!4013613 res!1631759) b!4013614))

(assert (= (or b!4013611 b!4013614) bm!286509))

(assert (= (or b!4013615 b!4013613) bm!286507))

(assert (= (or b!4013618 bm!286507) bm!286508))

(declare-fun m!4600337 () Bool)

(assert (=> bm!286509 m!4600337))

(declare-fun m!4600339 () Bool)

(assert (=> bm!286508 m!4600339))

(declare-fun m!4600341 () Bool)

(assert (=> b!4013619 m!4600341))

(assert (=> d!1187436 d!1188446))

(declare-fun b!4013620 () Bool)

(declare-fun res!1631760 () Bool)

(declare-fun e!2489185 () Bool)

(assert (=> b!4013620 (=> res!1631760 e!2489185)))

(assert (=> b!4013620 (= res!1631760 (not ((_ is IntegerValue!21194) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058)))))))

(declare-fun e!2489186 () Bool)

(assert (=> b!4013620 (= e!2489186 e!2489185)))

(declare-fun b!4013621 () Bool)

(assert (=> b!4013621 (= e!2489186 (inv!17 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(declare-fun b!4013622 () Bool)

(declare-fun e!2489187 () Bool)

(assert (=> b!4013622 (= e!2489187 e!2489186)))

(declare-fun c!693965 () Bool)

(assert (=> b!4013622 (= c!693965 ((_ is IntegerValue!21193) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(declare-fun d!1188448 () Bool)

(declare-fun c!693964 () Bool)

(assert (=> d!1188448 (= c!693964 ((_ is IntegerValue!21192) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(assert (=> d!1188448 (= (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))) e!2489187)))

(declare-fun b!4013623 () Bool)

(assert (=> b!4013623 (= e!2489185 (inv!15 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(declare-fun b!4013624 () Bool)

(assert (=> b!4013624 (= e!2489187 (inv!16 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (seqFromList!5059 lt!1421058))))))

(assert (= (and d!1188448 c!693964) b!4013624))

(assert (= (and d!1188448 (not c!693964)) b!4013622))

(assert (= (and b!4013622 c!693965) b!4013621))

(assert (= (and b!4013622 (not c!693965)) b!4013620))

(assert (= (and b!4013620 (not res!1631760)) b!4013623))

(declare-fun m!4600343 () Bool)

(assert (=> b!4013621 m!4600343))

(declare-fun m!4600345 () Bool)

(assert (=> b!4013623 m!4600345))

(declare-fun m!4600347 () Bool)

(assert (=> b!4013624 m!4600347))

(assert (=> tb!241209 d!1188448))

(declare-fun d!1188450 () Bool)

(declare-fun lt!1421809 () List!43068)

(assert (=> d!1188450 (= (++!11236 (t!332999 lt!1421037) lt!1421809) (tail!6251 lt!1421016))))

(declare-fun e!2489188 () List!43068)

(assert (=> d!1188450 (= lt!1421809 e!2489188)))

(declare-fun c!693966 () Bool)

(assert (=> d!1188450 (= c!693966 ((_ is Cons!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188450 (>= (size!32110 (tail!6251 lt!1421016)) (size!32110 (t!332999 lt!1421037)))))

(assert (=> d!1188450 (= (getSuffix!2346 (tail!6251 lt!1421016) (t!332999 lt!1421037)) lt!1421809)))

(declare-fun b!4013625 () Bool)

(assert (=> b!4013625 (= e!2489188 (getSuffix!2346 (tail!6251 (tail!6251 lt!1421016)) (t!332999 (t!332999 lt!1421037))))))

(declare-fun b!4013626 () Bool)

(assert (=> b!4013626 (= e!2489188 (tail!6251 lt!1421016))))

(assert (= (and d!1188450 c!693966) b!4013625))

(assert (= (and d!1188450 (not c!693966)) b!4013626))

(declare-fun m!4600349 () Bool)

(assert (=> d!1188450 m!4600349))

(assert (=> d!1188450 m!4597827))

(assert (=> d!1188450 m!4598943))

(assert (=> d!1188450 m!4598421))

(assert (=> b!4013625 m!4597827))

(assert (=> b!4013625 m!4598939))

(assert (=> b!4013625 m!4598939))

(declare-fun m!4600351 () Bool)

(assert (=> b!4013625 m!4600351))

(assert (=> b!4011937 d!1188450))

(assert (=> b!4011937 d!1187842))

(declare-fun d!1188452 () Bool)

(assert (=> d!1188452 (= (inv!57356 (tag!7694 (h!48366 (t!333001 rules!2999)))) (= (mod (str.len (value!215402 (tag!7694 (h!48366 (t!333001 rules!2999))))) 2) 0))))

(assert (=> b!4012459 d!1188452))

(declare-fun d!1188454 () Bool)

(declare-fun res!1631761 () Bool)

(declare-fun e!2489189 () Bool)

(assert (=> d!1188454 (=> (not res!1631761) (not e!2489189))))

(assert (=> d!1188454 (= res!1631761 (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999))))))))

(assert (=> d!1188454 (= (inv!57360 (transformation!6834 (h!48366 (t!333001 rules!2999)))) e!2489189)))

(declare-fun b!4013627 () Bool)

(assert (=> b!4013627 (= e!2489189 (equivClasses!2824 (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999))))))))

(assert (= (and d!1188454 res!1631761) b!4013627))

(declare-fun m!4600353 () Bool)

(assert (=> d!1188454 m!4600353))

(declare-fun m!4600355 () Bool)

(assert (=> b!4013627 m!4600355))

(assert (=> b!4012459 d!1188454))

(declare-fun d!1188456 () Bool)

(declare-fun c!693967 () Bool)

(assert (=> d!1188456 (= c!693967 ((_ is Nil!42944) lt!1421131))))

(declare-fun e!2489190 () (InoxSet C!23664))

(assert (=> d!1188456 (= (content!6512 lt!1421131) e!2489190)))

(declare-fun b!4013628 () Bool)

(assert (=> b!4013628 (= e!2489190 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013629 () Bool)

(assert (=> b!4013629 (= e!2489190 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421131) true) (content!6512 (t!332999 lt!1421131))))))

(assert (= (and d!1188456 c!693967) b!4013628))

(assert (= (and d!1188456 (not c!693967)) b!4013629))

(declare-fun m!4600357 () Bool)

(assert (=> b!4013629 m!4600357))

(declare-fun m!4600359 () Bool)

(assert (=> b!4013629 m!4600359))

(assert (=> d!1187414 d!1188456))

(assert (=> d!1187414 d!1187740))

(declare-fun d!1188458 () Bool)

(declare-fun c!693968 () Bool)

(assert (=> d!1188458 (= c!693968 ((_ is Nil!42944) lt!1421045))))

(declare-fun e!2489191 () (InoxSet C!23664))

(assert (=> d!1188458 (= (content!6512 lt!1421045) e!2489191)))

(declare-fun b!4013630 () Bool)

(assert (=> b!4013630 (= e!2489191 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013631 () Bool)

(assert (=> b!4013631 (= e!2489191 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421045) true) (content!6512 (t!332999 lt!1421045))))))

(assert (= (and d!1188458 c!693968) b!4013630))

(assert (= (and d!1188458 (not c!693968)) b!4013631))

(declare-fun m!4600361 () Bool)

(assert (=> b!4013631 m!4600361))

(declare-fun m!4600363 () Bool)

(assert (=> b!4013631 m!4600363))

(assert (=> d!1187414 d!1188458))

(assert (=> b!4012415 d!1187772))

(declare-fun d!1188460 () Bool)

(assert (=> d!1188460 (= (head!8519 lt!1421025) (h!48364 lt!1421025))))

(assert (=> b!4012415 d!1188460))

(declare-fun b!4013632 () Bool)

(declare-fun e!2489193 () List!43068)

(assert (=> b!4013632 (= e!2489193 lt!1421061)))

(declare-fun lt!1421810 () List!43068)

(declare-fun e!2489192 () Bool)

(declare-fun b!4013635 () Bool)

(assert (=> b!4013635 (= e!2489192 (or (not (= lt!1421061 Nil!42944)) (= lt!1421810 (t!332999 lt!1421037))))))

(declare-fun b!4013633 () Bool)

(assert (=> b!4013633 (= e!2489193 (Cons!42944 (h!48364 (t!332999 lt!1421037)) (++!11236 (t!332999 (t!332999 lt!1421037)) lt!1421061)))))

(declare-fun b!4013634 () Bool)

(declare-fun res!1631763 () Bool)

(assert (=> b!4013634 (=> (not res!1631763) (not e!2489192))))

(assert (=> b!4013634 (= res!1631763 (= (size!32110 lt!1421810) (+ (size!32110 (t!332999 lt!1421037)) (size!32110 lt!1421061))))))

(declare-fun d!1188462 () Bool)

(assert (=> d!1188462 e!2489192))

(declare-fun res!1631762 () Bool)

(assert (=> d!1188462 (=> (not res!1631762) (not e!2489192))))

(assert (=> d!1188462 (= res!1631762 (= (content!6512 lt!1421810) ((_ map or) (content!6512 (t!332999 lt!1421037)) (content!6512 lt!1421061))))))

(assert (=> d!1188462 (= lt!1421810 e!2489193)))

(declare-fun c!693969 () Bool)

(assert (=> d!1188462 (= c!693969 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188462 (= (++!11236 (t!332999 lt!1421037) lt!1421061) lt!1421810)))

(assert (= (and d!1188462 c!693969) b!4013632))

(assert (= (and d!1188462 (not c!693969)) b!4013633))

(assert (= (and d!1188462 res!1631762) b!4013634))

(assert (= (and b!4013634 res!1631763) b!4013635))

(declare-fun m!4600365 () Bool)

(assert (=> b!4013633 m!4600365))

(declare-fun m!4600367 () Bool)

(assert (=> b!4013634 m!4600367))

(assert (=> b!4013634 m!4598421))

(assert (=> b!4013634 m!4598593))

(declare-fun m!4600369 () Bool)

(assert (=> d!1188462 m!4600369))

(assert (=> d!1188462 m!4598785))

(assert (=> d!1188462 m!4598597))

(assert (=> b!4012432 d!1188462))

(assert (=> b!4011960 d!1188442))

(declare-fun d!1188464 () Bool)

(assert (=> d!1188464 (= (head!8519 lt!1421016) (h!48364 lt!1421016))))

(assert (=> b!4011960 d!1188464))

(assert (=> d!1187586 d!1187532))

(assert (=> d!1187586 d!1187530))

(declare-fun d!1188466 () Bool)

(assert (=> d!1188466 (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 newSuffixResult!27))))

(assert (=> d!1188466 true))

(declare-fun _$46!1670 () Unit!61970)

(assert (=> d!1188466 (= (choose!24242 lt!1421058 newSuffixResult!27) _$46!1670)))

(declare-fun bs!589505 () Bool)

(assert (= bs!589505 d!1188466))

(assert (=> bs!589505 m!4597447))

(assert (=> bs!589505 m!4597447))

(assert (=> bs!589505 m!4597449))

(assert (=> d!1187586 d!1188466))

(declare-fun d!1188468 () Bool)

(declare-fun e!2489194 () Bool)

(assert (=> d!1188468 e!2489194))

(declare-fun res!1631764 () Bool)

(assert (=> d!1188468 (=> res!1631764 e!2489194)))

(assert (=> d!1188468 (= res!1631764 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(declare-fun lt!1421811 () Unit!61970)

(assert (=> d!1188468 (= lt!1421811 (choose!24252 (regex!6834 (rule!9878 token!484)) lt!1421016))))

(assert (=> d!1188468 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1188468 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (rule!9878 token!484)) lt!1421016) lt!1421811)))

(declare-fun b!4013636 () Bool)

(assert (=> b!4013636 (= e!2489194 (matchR!5700 (regex!6834 (rule!9878 token!484)) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(assert (= (and d!1188468 (not res!1631764)) b!4013636))

(assert (=> d!1188468 m!4598349))

(assert (=> d!1188468 m!4597825))

(assert (=> d!1188468 m!4598491))

(assert (=> d!1188468 m!4597879))

(assert (=> d!1188468 m!4597825))

(assert (=> d!1188468 m!4598505))

(declare-fun m!4600371 () Bool)

(assert (=> d!1188468 m!4600371))

(assert (=> d!1188468 m!4598349))

(assert (=> b!4013636 m!4598349))

(assert (=> b!4013636 m!4597825))

(assert (=> b!4013636 m!4598349))

(assert (=> b!4013636 m!4597825))

(assert (=> b!4013636 m!4598491))

(assert (=> b!4013636 m!4598493))

(assert (=> b!4012359 d!1188468))

(declare-fun d!1188470 () Bool)

(assert (=> d!1188470 (= (seqFromList!5059 (_1!24181 lt!1421296)) (fromListB!2316 (_1!24181 lt!1421296)))))

(declare-fun bs!589506 () Bool)

(assert (= bs!589506 d!1188470))

(declare-fun m!4600373 () Bool)

(assert (=> bs!589506 m!4600373))

(assert (=> b!4012359 d!1188470))

(declare-fun b!4013637 () Bool)

(declare-fun e!2489197 () Unit!61970)

(declare-fun Unit!61989 () Unit!61970)

(assert (=> b!4013637 (= e!2489197 Unit!61989)))

(declare-fun b!4013638 () Bool)

(declare-fun e!2489201 () tuple2!42094)

(assert (=> b!4013638 (= e!2489201 (tuple2!42095 Nil!42944 lt!1421016))))

(declare-fun b!4013639 () Bool)

(declare-fun lt!1421829 () tuple2!42094)

(assert (=> b!4013639 (= e!2489201 lt!1421829)))

(declare-fun b!4013640 () Bool)

(declare-fun e!2489202 () Bool)

(declare-fun lt!1421827 () tuple2!42094)

(assert (=> b!4013640 (= e!2489202 (>= (size!32110 (_1!24181 lt!1421827)) (size!32110 Nil!42944)))))

(declare-fun b!4013641 () Bool)

(declare-fun e!2489198 () tuple2!42094)

(declare-fun call!286522 () tuple2!42094)

(assert (=> b!4013641 (= e!2489198 call!286522)))

(declare-fun b!4013642 () Bool)

(declare-fun c!693970 () Bool)

(declare-fun call!286519 () Bool)

(assert (=> b!4013642 (= c!693970 call!286519)))

(declare-fun lt!1421812 () Unit!61970)

(declare-fun lt!1421817 () Unit!61970)

(assert (=> b!4013642 (= lt!1421812 lt!1421817)))

(assert (=> b!4013642 (= lt!1421016 Nil!42944)))

(declare-fun call!286521 () Unit!61970)

(assert (=> b!4013642 (= lt!1421817 call!286521)))

(declare-fun lt!1421838 () Unit!61970)

(declare-fun lt!1421818 () Unit!61970)

(assert (=> b!4013642 (= lt!1421838 lt!1421818)))

(declare-fun call!286520 () Bool)

(assert (=> b!4013642 call!286520))

(declare-fun call!286518 () Unit!61970)

(assert (=> b!4013642 (= lt!1421818 call!286518)))

(declare-fun e!2489196 () tuple2!42094)

(declare-fun e!2489199 () tuple2!42094)

(assert (=> b!4013642 (= e!2489196 e!2489199)))

(declare-fun b!4013643 () Bool)

(assert (=> b!4013643 (= e!2489198 e!2489201)))

(assert (=> b!4013643 (= lt!1421829 call!286522)))

(declare-fun c!693972 () Bool)

(assert (=> b!4013643 (= c!693972 (isEmpty!25654 (_1!24181 lt!1421829)))))

(declare-fun bm!286511 () Bool)

(declare-fun call!286515 () C!23664)

(assert (=> bm!286511 (= call!286515 (head!8519 lt!1421016))))

(declare-fun d!1188472 () Bool)

(declare-fun e!2489200 () Bool)

(assert (=> d!1188472 e!2489200))

(declare-fun res!1631766 () Bool)

(assert (=> d!1188472 (=> (not res!1631766) (not e!2489200))))

(assert (=> d!1188472 (= res!1631766 (= (++!11236 (_1!24181 lt!1421827) (_2!24181 lt!1421827)) lt!1421016))))

(declare-fun e!2489195 () tuple2!42094)

(assert (=> d!1188472 (= lt!1421827 e!2489195)))

(declare-fun c!693974 () Bool)

(assert (=> d!1188472 (= c!693974 (lostCause!999 (regex!6834 (rule!9878 token!484))))))

(declare-fun lt!1421822 () Unit!61970)

(declare-fun Unit!61990 () Unit!61970)

(assert (=> d!1188472 (= lt!1421822 Unit!61990)))

(assert (=> d!1188472 (= (getSuffix!2346 lt!1421016 Nil!42944) lt!1421016)))

(declare-fun lt!1421820 () Unit!61970)

(declare-fun lt!1421831 () Unit!61970)

(assert (=> d!1188472 (= lt!1421820 lt!1421831)))

(declare-fun lt!1421828 () List!43068)

(assert (=> d!1188472 (= lt!1421016 lt!1421828)))

(assert (=> d!1188472 (= lt!1421831 (lemmaSamePrefixThenSameSuffix!2092 Nil!42944 lt!1421016 Nil!42944 lt!1421828 lt!1421016))))

(assert (=> d!1188472 (= lt!1421828 (getSuffix!2346 lt!1421016 Nil!42944))))

(declare-fun lt!1421826 () Unit!61970)

(declare-fun lt!1421819 () Unit!61970)

(assert (=> d!1188472 (= lt!1421826 lt!1421819)))

(assert (=> d!1188472 (isPrefix!3921 Nil!42944 (++!11236 Nil!42944 lt!1421016))))

(assert (=> d!1188472 (= lt!1421819 (lemmaConcatTwoListThenFirstIsPrefix!2762 Nil!42944 lt!1421016))))

(assert (=> d!1188472 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1188472 (= (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)) lt!1421827)))

(declare-fun bm!286510 () Bool)

(assert (=> bm!286510 (= call!286518 (lemmaIsPrefixRefl!2497 lt!1421016 lt!1421016))))

(declare-fun bm!286512 () Bool)

(assert (=> bm!286512 (= call!286520 (isPrefix!3921 lt!1421016 lt!1421016))))

(declare-fun bm!286513 () Bool)

(declare-fun lt!1421833 () List!43068)

(declare-fun call!286517 () List!43068)

(declare-fun call!286516 () Regex!11739)

(assert (=> bm!286513 (= call!286522 (findLongestMatchInner!1359 call!286516 lt!1421833 (+ (size!32110 Nil!42944) 1) call!286517 lt!1421016 (size!32110 lt!1421016)))))

(declare-fun b!4013644 () Bool)

(declare-fun Unit!61991 () Unit!61970)

(assert (=> b!4013644 (= e!2489197 Unit!61991)))

(declare-fun lt!1421821 () Unit!61970)

(assert (=> b!4013644 (= lt!1421821 call!286518)))

(assert (=> b!4013644 call!286520))

(declare-fun lt!1421825 () Unit!61970)

(assert (=> b!4013644 (= lt!1421825 lt!1421821)))

(declare-fun lt!1421834 () Unit!61970)

(assert (=> b!4013644 (= lt!1421834 call!286521)))

(assert (=> b!4013644 (= lt!1421016 Nil!42944)))

(declare-fun lt!1421815 () Unit!61970)

(assert (=> b!4013644 (= lt!1421815 lt!1421834)))

(assert (=> b!4013644 false))

(declare-fun bm!286514 () Bool)

(assert (=> bm!286514 (= call!286517 (tail!6251 lt!1421016))))

(declare-fun bm!286515 () Bool)

(assert (=> bm!286515 (= call!286521 (lemmaIsPrefixSameLengthThenSameList!901 lt!1421016 Nil!42944 lt!1421016))))

(declare-fun b!4013645 () Bool)

(declare-fun c!693971 () Bool)

(assert (=> b!4013645 (= c!693971 call!286519)))

(declare-fun lt!1421814 () Unit!61970)

(declare-fun lt!1421823 () Unit!61970)

(assert (=> b!4013645 (= lt!1421814 lt!1421823)))

(declare-fun lt!1421830 () C!23664)

(declare-fun lt!1421837 () List!43068)

(assert (=> b!4013645 (= (++!11236 (++!11236 Nil!42944 (Cons!42944 lt!1421830 Nil!42944)) lt!1421837) lt!1421016)))

(assert (=> b!4013645 (= lt!1421823 (lemmaMoveElementToOtherListKeepsConcatEq!1243 Nil!42944 lt!1421830 lt!1421837 lt!1421016))))

(assert (=> b!4013645 (= lt!1421837 (tail!6251 lt!1421016))))

(assert (=> b!4013645 (= lt!1421830 (head!8519 lt!1421016))))

(declare-fun lt!1421824 () Unit!61970)

(declare-fun lt!1421832 () Unit!61970)

(assert (=> b!4013645 (= lt!1421824 lt!1421832)))

(assert (=> b!4013645 (isPrefix!3921 (++!11236 Nil!42944 (Cons!42944 (head!8519 (getSuffix!2346 lt!1421016 Nil!42944)) Nil!42944)) lt!1421016)))

(assert (=> b!4013645 (= lt!1421832 (lemmaAddHeadSuffixToPrefixStillPrefix!625 Nil!42944 lt!1421016))))

(declare-fun lt!1421835 () Unit!61970)

(declare-fun lt!1421836 () Unit!61970)

(assert (=> b!4013645 (= lt!1421835 lt!1421836)))

(assert (=> b!4013645 (= lt!1421836 (lemmaAddHeadSuffixToPrefixStillPrefix!625 Nil!42944 lt!1421016))))

(assert (=> b!4013645 (= lt!1421833 (++!11236 Nil!42944 (Cons!42944 (head!8519 lt!1421016) Nil!42944)))))

(declare-fun lt!1421839 () Unit!61970)

(assert (=> b!4013645 (= lt!1421839 e!2489197)))

(declare-fun c!693973 () Bool)

(assert (=> b!4013645 (= c!693973 (= (size!32110 Nil!42944) (size!32110 lt!1421016)))))

(declare-fun lt!1421816 () Unit!61970)

(declare-fun lt!1421813 () Unit!61970)

(assert (=> b!4013645 (= lt!1421816 lt!1421813)))

(assert (=> b!4013645 (<= (size!32110 Nil!42944) (size!32110 lt!1421016))))

(assert (=> b!4013645 (= lt!1421813 (lemmaIsPrefixThenSmallerEqSize!433 Nil!42944 lt!1421016))))

(assert (=> b!4013645 (= e!2489196 e!2489198)))

(declare-fun b!4013646 () Bool)

(assert (=> b!4013646 (= e!2489195 e!2489196)))

(declare-fun c!693975 () Bool)

(assert (=> b!4013646 (= c!693975 (= (size!32110 Nil!42944) (size!32110 lt!1421016)))))

(declare-fun bm!286516 () Bool)

(assert (=> bm!286516 (= call!286516 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) call!286515))))

(declare-fun b!4013647 () Bool)

(assert (=> b!4013647 (= e!2489195 (tuple2!42095 Nil!42944 lt!1421016))))

(declare-fun b!4013648 () Bool)

(assert (=> b!4013648 (= e!2489199 (tuple2!42095 Nil!42944 lt!1421016))))

(declare-fun b!4013649 () Bool)

(assert (=> b!4013649 (= e!2489199 (tuple2!42095 Nil!42944 Nil!42944))))

(declare-fun bm!286517 () Bool)

(assert (=> bm!286517 (= call!286519 (nullable!4117 (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4013650 () Bool)

(assert (=> b!4013650 (= e!2489200 e!2489202)))

(declare-fun res!1631765 () Bool)

(assert (=> b!4013650 (=> res!1631765 e!2489202)))

(assert (=> b!4013650 (= res!1631765 (isEmpty!25654 (_1!24181 lt!1421827)))))

(assert (= (and d!1188472 c!693974) b!4013647))

(assert (= (and d!1188472 (not c!693974)) b!4013646))

(assert (= (and b!4013646 c!693975) b!4013642))

(assert (= (and b!4013646 (not c!693975)) b!4013645))

(assert (= (and b!4013642 c!693970) b!4013649))

(assert (= (and b!4013642 (not c!693970)) b!4013648))

(assert (= (and b!4013645 c!693973) b!4013644))

(assert (= (and b!4013645 (not c!693973)) b!4013637))

(assert (= (and b!4013645 c!693971) b!4013643))

(assert (= (and b!4013645 (not c!693971)) b!4013641))

(assert (= (and b!4013643 c!693972) b!4013638))

(assert (= (and b!4013643 (not c!693972)) b!4013639))

(assert (= (or b!4013643 b!4013641) bm!286511))

(assert (= (or b!4013643 b!4013641) bm!286514))

(assert (= (or b!4013643 b!4013641) bm!286516))

(assert (= (or b!4013643 b!4013641) bm!286513))

(assert (= (or b!4013642 b!4013644) bm!286512))

(assert (= (or b!4013642 b!4013645) bm!286517))

(assert (= (or b!4013642 b!4013644) bm!286515))

(assert (= (or b!4013642 b!4013644) bm!286510))

(assert (= (and d!1188472 res!1631766) b!4013650))

(assert (= (and b!4013650 (not res!1631765)) b!4013640))

(assert (=> d!1188472 m!4597879))

(declare-fun m!4600375 () Bool)

(assert (=> d!1188472 m!4600375))

(declare-fun m!4600377 () Bool)

(assert (=> d!1188472 m!4600377))

(assert (=> d!1188472 m!4600375))

(declare-fun m!4600379 () Bool)

(assert (=> d!1188472 m!4600379))

(declare-fun m!4600381 () Bool)

(assert (=> d!1188472 m!4600381))

(declare-fun m!4600383 () Bool)

(assert (=> d!1188472 m!4600383))

(declare-fun m!4600385 () Bool)

(assert (=> d!1188472 m!4600385))

(declare-fun m!4600387 () Bool)

(assert (=> d!1188472 m!4600387))

(assert (=> bm!286512 m!4597417))

(assert (=> bm!286513 m!4597825))

(declare-fun m!4600389 () Bool)

(assert (=> bm!286513 m!4600389))

(declare-fun m!4600391 () Bool)

(assert (=> b!4013643 m!4600391))

(declare-fun m!4600393 () Bool)

(assert (=> bm!286515 m!4600393))

(assert (=> bm!286514 m!4597827))

(assert (=> bm!286517 m!4597881))

(declare-fun m!4600395 () Bool)

(assert (=> b!4013645 m!4600395))

(assert (=> b!4013645 m!4597831))

(declare-fun m!4600397 () Bool)

(assert (=> b!4013645 m!4600397))

(declare-fun m!4600399 () Bool)

(assert (=> b!4013645 m!4600399))

(declare-fun m!4600401 () Bool)

(assert (=> b!4013645 m!4600401))

(declare-fun m!4600403 () Bool)

(assert (=> b!4013645 m!4600403))

(declare-fun m!4600405 () Bool)

(assert (=> b!4013645 m!4600405))

(assert (=> b!4013645 m!4600403))

(assert (=> b!4013645 m!4600395))

(declare-fun m!4600407 () Bool)

(assert (=> b!4013645 m!4600407))

(assert (=> b!4013645 m!4600383))

(declare-fun m!4600409 () Bool)

(assert (=> b!4013645 m!4600409))

(declare-fun m!4600411 () Bool)

(assert (=> b!4013645 m!4600411))

(assert (=> b!4013645 m!4597825))

(assert (=> b!4013645 m!4600383))

(assert (=> b!4013645 m!4598349))

(assert (=> b!4013645 m!4597827))

(declare-fun m!4600413 () Bool)

(assert (=> b!4013650 m!4600413))

(assert (=> bm!286510 m!4597419))

(declare-fun m!4600415 () Bool)

(assert (=> b!4013640 m!4600415))

(assert (=> b!4013640 m!4598349))

(declare-fun m!4600417 () Bool)

(assert (=> bm!286516 m!4600417))

(assert (=> bm!286511 m!4597831))

(assert (=> b!4012359 d!1188472))

(assert (=> b!4012359 d!1187838))

(declare-fun d!1188474 () Bool)

(assert (=> d!1188474 (= (apply!10031 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 (_1!24181 lt!1421296))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 (_1!24181 lt!1421296))))))

(declare-fun b_lambda!117137 () Bool)

(assert (=> (not b_lambda!117137) (not d!1188474)))

(declare-fun t!333200 () Bool)

(declare-fun tb!241379 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333200) tb!241379))

(declare-fun result!292534 () Bool)

(assert (=> tb!241379 (= result!292534 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 (_1!24181 lt!1421296)))))))

(declare-fun m!4600419 () Bool)

(assert (=> tb!241379 m!4600419))

(assert (=> d!1188474 t!333200))

(declare-fun b_and!308375 () Bool)

(assert (= b_and!308365 (and (=> t!333200 result!292534) b_and!308375)))

(declare-fun t!333202 () Bool)

(declare-fun tb!241381 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333202) tb!241381))

(declare-fun result!292536 () Bool)

(assert (= result!292536 result!292534))

(assert (=> d!1188474 t!333202))

(declare-fun b_and!308377 () Bool)

(assert (= b_and!308367 (and (=> t!333202 result!292536) b_and!308377)))

(declare-fun tb!241383 () Bool)

(declare-fun t!333204 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333204) tb!241383))

(declare-fun result!292538 () Bool)

(assert (= result!292538 result!292534))

(assert (=> d!1188474 t!333204))

(declare-fun b_and!308379 () Bool)

(assert (= b_and!308369 (and (=> t!333204 result!292538) b_and!308379)))

(assert (=> d!1188474 m!4598501))

(declare-fun m!4600421 () Bool)

(assert (=> d!1188474 m!4600421))

(assert (=> b!4012359 d!1188474))

(declare-fun d!1188476 () Bool)

(declare-fun lt!1421840 () Int)

(assert (=> d!1188476 (= lt!1421840 (size!32110 (list!15960 (seqFromList!5059 (_1!24181 lt!1421296)))))))

(assert (=> d!1188476 (= lt!1421840 (size!32114 (c!693562 (seqFromList!5059 (_1!24181 lt!1421296)))))))

(assert (=> d!1188476 (= (size!32112 (seqFromList!5059 (_1!24181 lt!1421296))) lt!1421840)))

(declare-fun bs!589507 () Bool)

(assert (= bs!589507 d!1188476))

(assert (=> bs!589507 m!4598501))

(declare-fun m!4600423 () Bool)

(assert (=> bs!589507 m!4600423))

(assert (=> bs!589507 m!4600423))

(declare-fun m!4600425 () Bool)

(assert (=> bs!589507 m!4600425))

(declare-fun m!4600427 () Bool)

(assert (=> bs!589507 m!4600427))

(assert (=> b!4012359 d!1188476))

(assert (=> b!4012359 d!1188170))

(declare-fun d!1188478 () Bool)

(assert (=> d!1188478 (= (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))) ((_ is Nil!42944) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(assert (=> b!4012359 d!1188478))

(declare-fun bs!589508 () Bool)

(declare-fun d!1188480 () Bool)

(assert (= bs!589508 (and d!1188480 d!1188302)))

(declare-fun lambda!127077 () Int)

(assert (=> bs!589508 (= (and (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (= lambda!127077 lambda!127073))))

(declare-fun bs!589509 () Bool)

(assert (= bs!589509 (and d!1188480 d!1188398)))

(assert (=> bs!589509 (= lambda!127077 lambda!127076)))

(declare-fun b!4013651 () Bool)

(declare-fun e!2489204 () Bool)

(assert (=> b!4013651 (= e!2489204 true)))

(assert (=> d!1188480 e!2489204))

(assert (= d!1188480 b!4013651))

(assert (=> b!4013651 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (dynLambda!18223 order!22507 lambda!127077))))

(assert (=> b!4013651 (< (dynLambda!18224 order!22509 (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (dynLambda!18223 order!22507 lambda!127077))))

(assert (=> d!1188480 (= (list!15960 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 (_1!24181 lt!1421296))))) (list!15960 (seqFromList!5059 (_1!24181 lt!1421296))))))

(declare-fun lt!1421841 () Unit!61970)

(assert (=> d!1188480 (= lt!1421841 (ForallOf!809 lambda!127077 (seqFromList!5059 (_1!24181 lt!1421296))))))

(assert (=> d!1188480 (= (lemmaSemiInverse!1879 (transformation!6834 (rule!9878 token!484)) (seqFromList!5059 (_1!24181 lt!1421296))) lt!1421841)))

(declare-fun b_lambda!117139 () Bool)

(assert (=> (not b_lambda!117139) (not d!1188480)))

(declare-fun tb!241385 () Bool)

(declare-fun t!333206 () Bool)

(assert (=> (and b!4011777 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333206) tb!241385))

(declare-fun e!2489205 () Bool)

(declare-fun b!4013652 () Bool)

(declare-fun tp!1220621 () Bool)

(assert (=> b!4013652 (= e!2489205 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 (_1!24181 lt!1421296)))))) tp!1220621))))

(declare-fun result!292540 () Bool)

(assert (=> tb!241385 (= result!292540 (and (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 token!484))) (seqFromList!5059 (_1!24181 lt!1421296))))) e!2489205))))

(assert (= tb!241385 b!4013652))

(declare-fun m!4600429 () Bool)

(assert (=> b!4013652 m!4600429))

(declare-fun m!4600431 () Bool)

(assert (=> tb!241385 m!4600431))

(assert (=> d!1188480 t!333206))

(declare-fun b_and!308381 () Bool)

(assert (= b_and!308353 (and (=> t!333206 result!292540) b_and!308381)))

(declare-fun t!333208 () Bool)

(declare-fun tb!241387 () Bool)

(assert (=> (and b!4011768 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333208) tb!241387))

(declare-fun result!292542 () Bool)

(assert (= result!292542 result!292540))

(assert (=> d!1188480 t!333208))

(declare-fun b_and!308383 () Bool)

(assert (= b_and!308355 (and (=> t!333208 result!292542) b_and!308383)))

(declare-fun tb!241389 () Bool)

(declare-fun t!333210 () Bool)

(assert (=> (and b!4012460 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333210) tb!241389))

(declare-fun result!292544 () Bool)

(assert (= result!292544 result!292540))

(assert (=> d!1188480 t!333210))

(declare-fun b_and!308385 () Bool)

(assert (= b_and!308357 (and (=> t!333210 result!292544) b_and!308385)))

(declare-fun b_lambda!117141 () Bool)

(assert (=> (not b_lambda!117141) (not d!1188480)))

(assert (=> d!1188480 t!333200))

(declare-fun b_and!308387 () Bool)

(assert (= b_and!308375 (and (=> t!333200 result!292534) b_and!308387)))

(assert (=> d!1188480 t!333202))

(declare-fun b_and!308389 () Bool)

(assert (= b_and!308377 (and (=> t!333202 result!292536) b_and!308389)))

(assert (=> d!1188480 t!333204))

(declare-fun b_and!308391 () Bool)

(assert (= b_and!308379 (and (=> t!333204 result!292538) b_and!308391)))

(assert (=> d!1188480 m!4598501))

(declare-fun m!4600433 () Bool)

(assert (=> d!1188480 m!4600433))

(assert (=> d!1188480 m!4600421))

(declare-fun m!4600435 () Bool)

(assert (=> d!1188480 m!4600435))

(assert (=> d!1188480 m!4600435))

(declare-fun m!4600437 () Bool)

(assert (=> d!1188480 m!4600437))

(assert (=> d!1188480 m!4598501))

(assert (=> d!1188480 m!4600423))

(assert (=> d!1188480 m!4598501))

(assert (=> d!1188480 m!4600421))

(assert (=> b!4012359 d!1188480))

(declare-fun d!1188482 () Bool)

(declare-fun lt!1421842 () Int)

(assert (=> d!1188482 (>= lt!1421842 0)))

(declare-fun e!2489206 () Int)

(assert (=> d!1188482 (= lt!1421842 e!2489206)))

(declare-fun c!693976 () Bool)

(assert (=> d!1188482 (= c!693976 ((_ is Nil!42944) lt!1421131))))

(assert (=> d!1188482 (= (size!32110 lt!1421131) lt!1421842)))

(declare-fun b!4013653 () Bool)

(assert (=> b!4013653 (= e!2489206 0)))

(declare-fun b!4013654 () Bool)

(assert (=> b!4013654 (= e!2489206 (+ 1 (size!32110 (t!332999 lt!1421131))))))

(assert (= (and d!1188482 c!693976) b!4013653))

(assert (= (and d!1188482 (not c!693976)) b!4013654))

(declare-fun m!4600439 () Bool)

(assert (=> b!4013654 m!4600439))

(assert (=> b!4011931 d!1188482))

(assert (=> b!4011931 d!1187604))

(declare-fun d!1188484 () Bool)

(declare-fun lt!1421843 () Int)

(assert (=> d!1188484 (>= lt!1421843 0)))

(declare-fun e!2489207 () Int)

(assert (=> d!1188484 (= lt!1421843 e!2489207)))

(declare-fun c!693977 () Bool)

(assert (=> d!1188484 (= c!693977 ((_ is Nil!42944) lt!1421045))))

(assert (=> d!1188484 (= (size!32110 lt!1421045) lt!1421843)))

(declare-fun b!4013655 () Bool)

(assert (=> b!4013655 (= e!2489207 0)))

(declare-fun b!4013656 () Bool)

(assert (=> b!4013656 (= e!2489207 (+ 1 (size!32110 (t!332999 lt!1421045))))))

(assert (= (and d!1188484 c!693977) b!4013655))

(assert (= (and d!1188484 (not c!693977)) b!4013656))

(declare-fun m!4600441 () Bool)

(assert (=> b!4013656 m!4600441))

(assert (=> b!4011931 d!1188484))

(declare-fun bs!589510 () Bool)

(declare-fun d!1188486 () Bool)

(assert (= bs!589510 (and d!1188486 d!1187862)))

(declare-fun lambda!127078 () Int)

(assert (=> bs!589510 (= (= (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (= lambda!127078 lambda!127056))))

(assert (=> d!1188486 true))

(assert (=> d!1188486 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (dynLambda!18221 order!22503 lambda!127078))))

(assert (=> d!1188486 (= (equivClasses!2824 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (Forall2!1072 lambda!127078))))

(declare-fun bs!589511 () Bool)

(assert (= bs!589511 d!1188486))

(declare-fun m!4600443 () Bool)

(assert (=> bs!589511 m!4600443))

(assert (=> b!4012115 d!1188486))

(declare-fun d!1188488 () Bool)

(declare-fun c!693978 () Bool)

(assert (=> d!1188488 (= c!693978 ((_ is Nil!42944) lt!1421121))))

(declare-fun e!2489208 () (InoxSet C!23664))

(assert (=> d!1188488 (= (content!6512 lt!1421121) e!2489208)))

(declare-fun b!4013657 () Bool)

(assert (=> b!4013657 (= e!2489208 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013658 () Bool)

(assert (=> b!4013658 (= e!2489208 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421121) true) (content!6512 (t!332999 lt!1421121))))))

(assert (= (and d!1188488 c!693978) b!4013657))

(assert (= (and d!1188488 (not c!693978)) b!4013658))

(declare-fun m!4600445 () Bool)

(assert (=> b!4013658 m!4600445))

(declare-fun m!4600447 () Bool)

(assert (=> b!4013658 m!4600447))

(assert (=> d!1187392 d!1188488))

(declare-fun d!1188490 () Bool)

(declare-fun c!693979 () Bool)

(assert (=> d!1188490 (= c!693979 ((_ is Nil!42944) lt!1421025))))

(declare-fun e!2489209 () (InoxSet C!23664))

(assert (=> d!1188490 (= (content!6512 lt!1421025) e!2489209)))

(declare-fun b!4013659 () Bool)

(assert (=> b!4013659 (= e!2489209 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013660 () Bool)

(assert (=> b!4013660 (= e!2489209 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421025) true) (content!6512 (t!332999 lt!1421025))))))

(assert (= (and d!1188490 c!693979) b!4013659))

(assert (= (and d!1188490 (not c!693979)) b!4013660))

(declare-fun m!4600449 () Bool)

(assert (=> b!4013660 m!4600449))

(declare-fun m!4600451 () Bool)

(assert (=> b!4013660 m!4600451))

(assert (=> d!1187392 d!1188490))

(declare-fun d!1188492 () Bool)

(declare-fun c!693980 () Bool)

(assert (=> d!1188492 (= c!693980 ((_ is Nil!42944) lt!1421018))))

(declare-fun e!2489210 () (InoxSet C!23664))

(assert (=> d!1188492 (= (content!6512 lt!1421018) e!2489210)))

(declare-fun b!4013661 () Bool)

(assert (=> b!4013661 (= e!2489210 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013662 () Bool)

(assert (=> b!4013662 (= e!2489210 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421018) true) (content!6512 (t!332999 lt!1421018))))))

(assert (= (and d!1188492 c!693980) b!4013661))

(assert (= (and d!1188492 (not c!693980)) b!4013662))

(declare-fun m!4600453 () Bool)

(assert (=> b!4013662 m!4600453))

(declare-fun m!4600455 () Bool)

(assert (=> b!4013662 m!4600455))

(assert (=> d!1187392 d!1188492))

(declare-fun d!1188494 () Bool)

(declare-fun lt!1421844 () Int)

(assert (=> d!1188494 (>= lt!1421844 0)))

(declare-fun e!2489211 () Int)

(assert (=> d!1188494 (= lt!1421844 e!2489211)))

(declare-fun c!693981 () Bool)

(assert (=> d!1188494 (= c!693981 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188494 (= (size!32110 (t!332999 lt!1421037)) lt!1421844)))

(declare-fun b!4013663 () Bool)

(assert (=> b!4013663 (= e!2489211 0)))

(declare-fun b!4013664 () Bool)

(assert (=> b!4013664 (= e!2489211 (+ 1 (size!32110 (t!332999 (t!332999 lt!1421037)))))))

(assert (= (and d!1188494 c!693981) b!4013663))

(assert (= (and d!1188494 (not c!693981)) b!4013664))

(declare-fun m!4600457 () Bool)

(assert (=> b!4013664 m!4600457))

(assert (=> b!4012329 d!1188494))

(assert (=> b!4011950 d!1187838))

(declare-fun d!1188496 () Bool)

(declare-fun lt!1421845 () Bool)

(assert (=> d!1188496 (= lt!1421845 (select (content!6514 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))

(declare-fun e!2489212 () Bool)

(assert (=> d!1188496 (= lt!1421845 e!2489212)))

(declare-fun res!1631767 () Bool)

(assert (=> d!1188496 (=> (not res!1631767) (not e!2489212))))

(assert (=> d!1188496 (= res!1631767 ((_ is Cons!42946) rules!2999))))

(assert (=> d!1188496 (= (contains!8536 rules!2999 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) lt!1421845)))

(declare-fun b!4013665 () Bool)

(declare-fun e!2489213 () Bool)

(assert (=> b!4013665 (= e!2489212 e!2489213)))

(declare-fun res!1631768 () Bool)

(assert (=> b!4013665 (=> res!1631768 e!2489213)))

(assert (=> b!4013665 (= res!1631768 (= (h!48366 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))

(declare-fun b!4013666 () Bool)

(assert (=> b!4013666 (= e!2489213 (contains!8536 (t!333001 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))

(assert (= (and d!1188496 res!1631767) b!4013665))

(assert (= (and b!4013665 (not res!1631768)) b!4013666))

(assert (=> d!1188496 m!4600215))

(declare-fun m!4600459 () Bool)

(assert (=> d!1188496 m!4600459))

(declare-fun m!4600461 () Bool)

(assert (=> b!4013666 m!4600461))

(assert (=> b!4012424 d!1188496))

(assert (=> b!4012424 d!1188182))

(assert (=> d!1187520 d!1187628))

(assert (=> b!4012400 d!1187750))

(declare-fun bs!589512 () Bool)

(declare-fun d!1188498 () Bool)

(assert (= bs!589512 (and d!1188498 d!1188302)))

(declare-fun lambda!127079 () Int)

(assert (=> bs!589512 (= (and (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (= lambda!127079 lambda!127073))))

(declare-fun bs!589513 () Bool)

(assert (= bs!589513 (and d!1188498 d!1188398)))

(assert (=> bs!589513 (= (and (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (= lambda!127079 lambda!127076))))

(declare-fun bs!589514 () Bool)

(assert (= bs!589514 (and d!1188498 d!1188480)))

(assert (=> bs!589514 (= (and (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (= lambda!127079 lambda!127077))))

(assert (=> d!1188498 true))

(assert (=> d!1188498 (< (dynLambda!18224 order!22509 (toChars!9197 (transformation!6834 (h!48366 rules!2999)))) (dynLambda!18223 order!22507 lambda!127079))))

(assert (=> d!1188498 true))

(assert (=> d!1188498 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (h!48366 rules!2999)))) (dynLambda!18223 order!22507 lambda!127079))))

(assert (=> d!1188498 (= (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (h!48366 rules!2999)))) (Forall!1473 lambda!127079))))

(declare-fun bs!589515 () Bool)

(assert (= bs!589515 d!1188498))

(declare-fun m!4600463 () Bool)

(assert (=> bs!589515 m!4600463))

(assert (=> d!1187600 d!1188498))

(declare-fun d!1188500 () Bool)

(declare-fun c!693982 () Bool)

(assert (=> d!1188500 (= c!693982 ((_ is Nil!42944) lt!1421279))))

(declare-fun e!2489214 () (InoxSet C!23664))

(assert (=> d!1188500 (= (content!6512 lt!1421279) e!2489214)))

(declare-fun b!4013667 () Bool)

(assert (=> b!4013667 (= e!2489214 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013668 () Bool)

(assert (=> b!4013668 (= e!2489214 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421279) true) (content!6512 (t!332999 lt!1421279))))))

(assert (= (and d!1188500 c!693982) b!4013667))

(assert (= (and d!1188500 (not c!693982)) b!4013668))

(declare-fun m!4600465 () Bool)

(assert (=> b!4013668 m!4600465))

(declare-fun m!4600467 () Bool)

(assert (=> b!4013668 m!4600467))

(assert (=> d!1187592 d!1188500))

(declare-fun d!1188502 () Bool)

(declare-fun c!693983 () Bool)

(assert (=> d!1188502 (= c!693983 ((_ is Nil!42944) newSuffix!27))))

(declare-fun e!2489215 () (InoxSet C!23664))

(assert (=> d!1188502 (= (content!6512 newSuffix!27) e!2489215)))

(declare-fun b!4013669 () Bool)

(assert (=> b!4013669 (= e!2489215 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013670 () Bool)

(assert (=> b!4013670 (= e!2489215 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 newSuffix!27) true) (content!6512 (t!332999 newSuffix!27))))))

(assert (= (and d!1188502 c!693983) b!4013669))

(assert (= (and d!1188502 (not c!693983)) b!4013670))

(declare-fun m!4600469 () Bool)

(assert (=> b!4013670 m!4600469))

(assert (=> b!4013670 m!4600335))

(assert (=> d!1187592 d!1188502))

(assert (=> d!1187592 d!1188492))

(declare-fun d!1188504 () Bool)

(declare-fun lt!1421846 () Int)

(assert (=> d!1188504 (>= lt!1421846 0)))

(declare-fun e!2489216 () Int)

(assert (=> d!1188504 (= lt!1421846 e!2489216)))

(declare-fun c!693984 () Bool)

(assert (=> d!1188504 (= c!693984 ((_ is Nil!42944) lt!1421284))))

(assert (=> d!1188504 (= (size!32110 lt!1421284) lt!1421846)))

(declare-fun b!4013671 () Bool)

(assert (=> b!4013671 (= e!2489216 0)))

(declare-fun b!4013672 () Bool)

(assert (=> b!4013672 (= e!2489216 (+ 1 (size!32110 (t!332999 lt!1421284))))))

(assert (= (and d!1188504 c!693984) b!4013671))

(assert (= (and d!1188504 (not c!693984)) b!4013672))

(declare-fun m!4600471 () Bool)

(assert (=> b!4013672 m!4600471))

(assert (=> b!4012341 d!1188504))

(assert (=> b!4012341 d!1187606))

(assert (=> b!4012341 d!1187504))

(declare-fun d!1188506 () Bool)

(declare-fun c!693987 () Bool)

(assert (=> d!1188506 (= c!693987 ((_ is Node!13045) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun e!2489221 () Bool)

(assert (=> d!1188506 (= (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))) e!2489221)))

(declare-fun b!4013679 () Bool)

(declare-fun inv!57367 (Conc!13045) Bool)

(assert (=> b!4013679 (= e!2489221 (inv!57367 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun b!4013680 () Bool)

(declare-fun e!2489222 () Bool)

(assert (=> b!4013680 (= e!2489221 e!2489222)))

(declare-fun res!1631771 () Bool)

(assert (=> b!4013680 (= res!1631771 (not ((_ is Leaf!20169) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))))))

(assert (=> b!4013680 (=> res!1631771 e!2489222)))

(declare-fun b!4013681 () Bool)

(declare-fun inv!57368 (Conc!13045) Bool)

(assert (=> b!4013681 (= e!2489222 (inv!57368 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))))))

(assert (= (and d!1188506 c!693987) b!4013679))

(assert (= (and d!1188506 (not c!693987)) b!4013680))

(assert (= (and b!4013680 (not res!1631771)) b!4013681))

(declare-fun m!4600473 () Bool)

(assert (=> b!4013679 m!4600473))

(declare-fun m!4600475 () Bool)

(assert (=> b!4013681 m!4600475))

(assert (=> b!4012300 d!1188506))

(declare-fun d!1188508 () Bool)

(assert (=> d!1188508 (= lt!1421061 suffixResult!105)))

(assert (=> d!1188508 true))

(declare-fun _$63!1052 () Unit!61970)

(assert (=> d!1188508 (= (choose!24247 lt!1421037 lt!1421061 lt!1421037 suffixResult!105 lt!1421016) _$63!1052)))

(assert (=> d!1187634 d!1188508))

(assert (=> d!1187634 d!1187422))

(assert (=> b!4011954 d!1187838))

(assert (=> b!4011954 d!1187604))

(declare-fun d!1188510 () Bool)

(assert (=> d!1188510 (= (inv!57364 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))) (isBalanced!3663 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun bs!589516 () Bool)

(assert (= bs!589516 d!1188510))

(declare-fun m!4600477 () Bool)

(assert (=> bs!589516 m!4600477))

(assert (=> tb!241213 d!1188510))

(declare-fun d!1188512 () Bool)

(declare-fun c!693988 () Bool)

(assert (=> d!1188512 (= c!693988 ((_ is Node!13045) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(declare-fun e!2489223 () Bool)

(assert (=> d!1188512 (= (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))) e!2489223)))

(declare-fun b!4013682 () Bool)

(assert (=> b!4013682 (= e!2489223 (inv!57367 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(declare-fun b!4013683 () Bool)

(declare-fun e!2489224 () Bool)

(assert (=> b!4013683 (= e!2489223 e!2489224)))

(declare-fun res!1631772 () Bool)

(assert (=> b!4013683 (= res!1631772 (not ((_ is Leaf!20169) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))))))

(assert (=> b!4013683 (=> res!1631772 e!2489224)))

(declare-fun b!4013684 () Bool)

(assert (=> b!4013684 (= e!2489224 (inv!57368 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))))))

(assert (= (and d!1188512 c!693988) b!4013682))

(assert (= (and d!1188512 (not c!693988)) b!4013683))

(assert (= (and b!4013683 (not res!1631772)) b!4013684))

(declare-fun m!4600479 () Bool)

(assert (=> b!4013682 m!4600479))

(declare-fun m!4600481 () Bool)

(assert (=> b!4013684 m!4600481))

(assert (=> b!4012332 d!1188512))

(declare-fun d!1188514 () Bool)

(declare-fun e!2489227 () Bool)

(assert (=> d!1188514 e!2489227))

(declare-fun res!1631775 () Bool)

(assert (=> d!1188514 (=> res!1631775 e!2489227)))

(declare-fun lt!1421847 () Bool)

(assert (=> d!1188514 (= res!1631775 (not lt!1421847))))

(declare-fun e!2489225 () Bool)

(assert (=> d!1188514 (= lt!1421847 e!2489225)))

(declare-fun res!1631773 () Bool)

(assert (=> d!1188514 (=> res!1631773 e!2489225)))

(assert (=> d!1188514 (= res!1631773 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1188514 (= (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042)))) lt!1421847)))

(declare-fun b!4013686 () Bool)

(declare-fun res!1631776 () Bool)

(declare-fun e!2489226 () Bool)

(assert (=> b!4013686 (=> (not res!1631776) (not e!2489226))))

(assert (=> b!4013686 (= res!1631776 (= (head!8519 lt!1421058) (head!8519 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4013687 () Bool)

(assert (=> b!4013687 (= e!2489226 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4013685 () Bool)

(assert (=> b!4013685 (= e!2489225 e!2489226)))

(declare-fun res!1631774 () Bool)

(assert (=> b!4013685 (=> (not res!1631774) (not e!2489226))))

(assert (=> b!4013685 (= res!1631774 (not ((_ is Nil!42944) (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))))

(declare-fun b!4013688 () Bool)

(assert (=> b!4013688 (= e!2489227 (>= (size!32110 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042)))) (size!32110 lt!1421058)))))

(assert (= (and d!1188514 (not res!1631773)) b!4013685))

(assert (= (and b!4013685 res!1631774) b!4013686))

(assert (= (and b!4013686 res!1631776) b!4013687))

(assert (= (and d!1188514 (not res!1631775)) b!4013688))

(assert (=> b!4013686 m!4597887))

(assert (=> b!4013686 m!4597441))

(declare-fun m!4600483 () Bool)

(assert (=> b!4013686 m!4600483))

(assert (=> b!4013687 m!4597889))

(assert (=> b!4013687 m!4597441))

(declare-fun m!4600485 () Bool)

(assert (=> b!4013687 m!4600485))

(assert (=> b!4013687 m!4597889))

(assert (=> b!4013687 m!4600485))

(declare-fun m!4600487 () Bool)

(assert (=> b!4013687 m!4600487))

(assert (=> b!4013688 m!4597441))

(declare-fun m!4600489 () Bool)

(assert (=> b!4013688 m!4600489))

(assert (=> b!4013688 m!4597463))

(assert (=> d!1187524 d!1188514))

(assert (=> d!1187524 d!1187522))

(declare-fun d!1188516 () Bool)

(assert (=> d!1188516 (isPrefix!3921 lt!1421058 (++!11236 lt!1421058 (_2!24179 (v!39615 lt!1421042))))))

(assert (=> d!1188516 true))

(declare-fun _$46!1671 () Unit!61970)

(assert (=> d!1188516 (= (choose!24242 lt!1421058 (_2!24179 (v!39615 lt!1421042))) _$46!1671)))

(declare-fun bs!589517 () Bool)

(assert (= bs!589517 d!1188516))

(assert (=> bs!589517 m!4597441))

(assert (=> bs!589517 m!4597441))

(assert (=> bs!589517 m!4598179))

(assert (=> d!1187524 d!1188516))

(declare-fun d!1188518 () Bool)

(assert (=> d!1188518 (= (isDefined!7070 lt!1421199) (not (isEmpty!25653 lt!1421199)))))

(declare-fun bs!589518 () Bool)

(assert (= bs!589518 d!1188518))

(assert (=> bs!589518 m!4598061))

(assert (=> b!4012070 d!1188518))

(declare-fun d!1188520 () Bool)

(assert (=> d!1188520 (= (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (nullableFct!1149 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))))

(declare-fun bs!589519 () Bool)

(assert (= bs!589519 d!1188520))

(declare-fun m!4600491 () Bool)

(assert (=> bs!589519 m!4600491))

(assert (=> b!4012113 d!1188520))

(declare-fun b!4013700 () Bool)

(declare-fun e!2489233 () List!43068)

(assert (=> b!4013700 (= e!2489233 (++!11236 (list!15962 (left!32392 (c!693562 (charsOf!4650 token!484)))) (list!15962 (right!32722 (c!693562 (charsOf!4650 token!484))))))))

(declare-fun b!4013699 () Bool)

(declare-fun list!15964 (IArray!26095) List!43068)

(assert (=> b!4013699 (= e!2489233 (list!15964 (xs!16351 (c!693562 (charsOf!4650 token!484)))))))

(declare-fun b!4013697 () Bool)

(declare-fun e!2489232 () List!43068)

(assert (=> b!4013697 (= e!2489232 Nil!42944)))

(declare-fun d!1188522 () Bool)

(declare-fun c!693993 () Bool)

(assert (=> d!1188522 (= c!693993 ((_ is Empty!13045) (c!693562 (charsOf!4650 token!484))))))

(assert (=> d!1188522 (= (list!15962 (c!693562 (charsOf!4650 token!484))) e!2489232)))

(declare-fun b!4013698 () Bool)

(assert (=> b!4013698 (= e!2489232 e!2489233)))

(declare-fun c!693994 () Bool)

(assert (=> b!4013698 (= c!693994 ((_ is Leaf!20169) (c!693562 (charsOf!4650 token!484))))))

(assert (= (and d!1188522 c!693993) b!4013697))

(assert (= (and d!1188522 (not c!693993)) b!4013698))

(assert (= (and b!4013698 c!693994) b!4013699))

(assert (= (and b!4013698 (not c!693994)) b!4013700))

(declare-fun m!4600493 () Bool)

(assert (=> b!4013700 m!4600493))

(declare-fun m!4600495 () Bool)

(assert (=> b!4013700 m!4600495))

(assert (=> b!4013700 m!4600493))

(assert (=> b!4013700 m!4600495))

(declare-fun m!4600497 () Bool)

(assert (=> b!4013700 m!4600497))

(declare-fun m!4600499 () Bool)

(assert (=> b!4013699 m!4600499))

(assert (=> d!1187608 d!1188522))

(declare-fun bs!589520 () Bool)

(declare-fun d!1188524 () Bool)

(assert (= bs!589520 (and d!1188524 d!1188302)))

(declare-fun lambda!127080 () Int)

(assert (=> bs!589520 (= lambda!127080 lambda!127073)))

(declare-fun bs!589521 () Bool)

(assert (= bs!589521 (and d!1188524 d!1188398)))

(assert (=> bs!589521 (= (and (= (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (= (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (= lambda!127080 lambda!127076))))

(declare-fun bs!589522 () Bool)

(assert (= bs!589522 (and d!1188524 d!1188480)))

(assert (=> bs!589522 (= (and (= (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) (= (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (= lambda!127080 lambda!127077))))

(declare-fun bs!589523 () Bool)

(assert (= bs!589523 (and d!1188524 d!1188498)))

(assert (=> bs!589523 (= (and (= (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toChars!9197 (transformation!6834 (h!48366 rules!2999)))) (= (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (h!48366 rules!2999))))) (= lambda!127080 lambda!127079))))

(assert (=> d!1188524 true))

(assert (=> d!1188524 (< (dynLambda!18224 order!22509 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (dynLambda!18223 order!22507 lambda!127080))))

(assert (=> d!1188524 true))

(assert (=> d!1188524 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (dynLambda!18223 order!22507 lambda!127080))))

(assert (=> d!1188524 (= (semiInverseModEq!2925 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (Forall!1473 lambda!127080))))

(declare-fun bs!589524 () Bool)

(assert (= bs!589524 d!1188524))

(declare-fun m!4600501 () Bool)

(assert (=> bs!589524 m!4600501))

(assert (=> d!1187512 d!1188524))

(assert (=> d!1187624 d!1187622))

(declare-fun d!1188526 () Bool)

(assert (=> d!1188526 (isPrefix!3921 lt!1421037 prefix!494)))

(assert (=> d!1188526 true))

(declare-fun _$69!244 () Unit!61970)

(assert (=> d!1188526 (= (choose!24250 prefix!494 lt!1421037 lt!1421016) _$69!244)))

(declare-fun bs!589525 () Bool)

(assert (= bs!589525 d!1188526))

(assert (=> bs!589525 m!4597533))

(assert (=> d!1187624 d!1188526))

(assert (=> d!1187624 d!1187428))

(declare-fun b!4013701 () Bool)

(declare-fun e!2489235 () List!43068)

(assert (=> b!4013701 (= e!2489235 (_2!24179 (v!39615 lt!1421042)))))

(declare-fun b!4013704 () Bool)

(declare-fun lt!1421848 () List!43068)

(declare-fun e!2489234 () Bool)

(assert (=> b!4013704 (= e!2489234 (or (not (= (_2!24179 (v!39615 lt!1421042)) Nil!42944)) (= lt!1421848 (t!332999 lt!1421058))))))

(declare-fun b!4013702 () Bool)

(assert (=> b!4013702 (= e!2489235 (Cons!42944 (h!48364 (t!332999 lt!1421058)) (++!11236 (t!332999 (t!332999 lt!1421058)) (_2!24179 (v!39615 lt!1421042)))))))

(declare-fun b!4013703 () Bool)

(declare-fun res!1631778 () Bool)

(assert (=> b!4013703 (=> (not res!1631778) (not e!2489234))))

(assert (=> b!4013703 (= res!1631778 (= (size!32110 lt!1421848) (+ (size!32110 (t!332999 lt!1421058)) (size!32110 (_2!24179 (v!39615 lt!1421042))))))))

(declare-fun d!1188528 () Bool)

(assert (=> d!1188528 e!2489234))

(declare-fun res!1631777 () Bool)

(assert (=> d!1188528 (=> (not res!1631777) (not e!2489234))))

(assert (=> d!1188528 (= res!1631777 (= (content!6512 lt!1421848) ((_ map or) (content!6512 (t!332999 lt!1421058)) (content!6512 (_2!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1188528 (= lt!1421848 e!2489235)))

(declare-fun c!693995 () Bool)

(assert (=> d!1188528 (= c!693995 ((_ is Nil!42944) (t!332999 lt!1421058)))))

(assert (=> d!1188528 (= (++!11236 (t!332999 lt!1421058) (_2!24179 (v!39615 lt!1421042))) lt!1421848)))

(assert (= (and d!1188528 c!693995) b!4013701))

(assert (= (and d!1188528 (not c!693995)) b!4013702))

(assert (= (and d!1188528 res!1631777) b!4013703))

(assert (= (and b!4013703 res!1631778) b!4013704))

(declare-fun m!4600503 () Bool)

(assert (=> b!4013702 m!4600503))

(declare-fun m!4600505 () Bool)

(assert (=> b!4013703 m!4600505))

(assert (=> b!4013703 m!4598165))

(assert (=> b!4013703 m!4598171))

(declare-fun m!4600507 () Bool)

(assert (=> d!1188528 m!4600507))

(declare-fun m!4600509 () Bool)

(assert (=> d!1188528 m!4600509))

(assert (=> d!1188528 m!4598177))

(assert (=> b!4012119 d!1188528))

(assert (=> b!4012288 d!1187758))

(declare-fun d!1188530 () Bool)

(assert (=> d!1188530 (= (isEmpty!25653 lt!1421266) (not ((_ is Some!9247) lt!1421266)))))

(assert (=> d!1187534 d!1188530))

(declare-fun d!1188532 () Bool)

(assert (=> d!1188532 (= (isEmpty!25654 (_1!24181 lt!1421269)) ((_ is Nil!42944) (_1!24181 lt!1421269)))))

(assert (=> d!1187534 d!1188532))

(declare-fun d!1188534 () Bool)

(declare-fun lt!1421853 () tuple2!42094)

(assert (=> d!1188534 (= (++!11236 (_1!24181 lt!1421853) (_2!24181 lt!1421853)) lt!1421025)))

(assert (=> d!1188534 (= lt!1421853 (findLongestMatchInner!1359 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) Nil!42944 0 lt!1421025 lt!1421025 (sizeTr!262 lt!1421025 0)))))

(declare-fun lt!1421854 () Unit!61970)

(declare-fun lt!1421856 () Unit!61970)

(assert (=> d!1188534 (= lt!1421854 lt!1421856)))

(declare-fun lt!1421852 () List!43068)

(declare-fun lt!1421850 () Int)

(assert (=> d!1188534 (= (sizeTr!262 lt!1421852 lt!1421850) (+ (size!32110 lt!1421852) lt!1421850))))

(assert (=> d!1188534 (= lt!1421856 (lemmaSizeTrEqualsSize!261 lt!1421852 lt!1421850))))

(assert (=> d!1188534 (= lt!1421850 0)))

(assert (=> d!1188534 (= lt!1421852 Nil!42944)))

(declare-fun lt!1421851 () Unit!61970)

(declare-fun lt!1421855 () Unit!61970)

(assert (=> d!1188534 (= lt!1421851 lt!1421855)))

(declare-fun lt!1421849 () Int)

(assert (=> d!1188534 (= (sizeTr!262 lt!1421025 lt!1421849) (+ (size!32110 lt!1421025) lt!1421849))))

(assert (=> d!1188534 (= lt!1421855 (lemmaSizeTrEqualsSize!261 lt!1421025 lt!1421849))))

(assert (=> d!1188534 (= lt!1421849 0)))

(assert (=> d!1188534 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1188534 (= (findLongestMatch!1272 (regex!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421025) lt!1421853)))

(declare-fun bs!589526 () Bool)

(assert (= bs!589526 d!1188534))

(declare-fun m!4600511 () Bool)

(assert (=> bs!589526 m!4600511))

(assert (=> bs!589526 m!4597781))

(declare-fun m!4600513 () Bool)

(assert (=> bs!589526 m!4600513))

(declare-fun m!4600515 () Bool)

(assert (=> bs!589526 m!4600515))

(declare-fun m!4600517 () Bool)

(assert (=> bs!589526 m!4600517))

(assert (=> bs!589526 m!4598151))

(declare-fun m!4600519 () Bool)

(assert (=> bs!589526 m!4600519))

(declare-fun m!4600521 () Bool)

(assert (=> bs!589526 m!4600521))

(assert (=> bs!589526 m!4600521))

(declare-fun m!4600523 () Bool)

(assert (=> bs!589526 m!4600523))

(declare-fun m!4600525 () Bool)

(assert (=> bs!589526 m!4600525))

(assert (=> d!1187534 d!1188534))

(assert (=> d!1187534 d!1187506))

(declare-fun b!4013705 () Bool)

(declare-fun e!2489237 () List!43068)

(assert (=> b!4013705 (= e!2489237 suffix!1299)))

(declare-fun b!4013708 () Bool)

(declare-fun e!2489236 () Bool)

(declare-fun lt!1421857 () List!43068)

(assert (=> b!4013708 (= e!2489236 (or (not (= suffix!1299 Nil!42944)) (= lt!1421857 (t!332999 lt!1421030))))))

(declare-fun b!4013706 () Bool)

(assert (=> b!4013706 (= e!2489237 (Cons!42944 (h!48364 (t!332999 lt!1421030)) (++!11236 (t!332999 (t!332999 lt!1421030)) suffix!1299)))))

(declare-fun b!4013707 () Bool)

(declare-fun res!1631780 () Bool)

(assert (=> b!4013707 (=> (not res!1631780) (not e!2489236))))

(assert (=> b!4013707 (= res!1631780 (= (size!32110 lt!1421857) (+ (size!32110 (t!332999 lt!1421030)) (size!32110 suffix!1299))))))

(declare-fun d!1188536 () Bool)

(assert (=> d!1188536 e!2489236))

(declare-fun res!1631779 () Bool)

(assert (=> d!1188536 (=> (not res!1631779) (not e!2489236))))

(assert (=> d!1188536 (= res!1631779 (= (content!6512 lt!1421857) ((_ map or) (content!6512 (t!332999 lt!1421030)) (content!6512 suffix!1299))))))

(assert (=> d!1188536 (= lt!1421857 e!2489237)))

(declare-fun c!693996 () Bool)

(assert (=> d!1188536 (= c!693996 ((_ is Nil!42944) (t!332999 lt!1421030)))))

(assert (=> d!1188536 (= (++!11236 (t!332999 lt!1421030) suffix!1299) lt!1421857)))

(assert (= (and d!1188536 c!693996) b!4013705))

(assert (= (and d!1188536 (not c!693996)) b!4013706))

(assert (= (and d!1188536 res!1631779) b!4013707))

(assert (= (and b!4013707 res!1631780) b!4013708))

(declare-fun m!4600527 () Bool)

(assert (=> b!4013706 m!4600527))

(declare-fun m!4600529 () Bool)

(assert (=> b!4013707 m!4600529))

(declare-fun m!4600531 () Bool)

(assert (=> b!4013707 m!4600531))

(assert (=> b!4013707 m!4597545))

(declare-fun m!4600533 () Bool)

(assert (=> d!1188536 m!4600533))

(declare-fun m!4600535 () Bool)

(assert (=> d!1188536 m!4600535))

(assert (=> d!1188536 m!4598587))

(assert (=> b!4012436 d!1188536))

(declare-fun b!4013709 () Bool)

(declare-fun e!2489239 () List!43068)

(assert (=> b!4013709 (= e!2489239 suffix!1299)))

(declare-fun b!4013712 () Bool)

(declare-fun lt!1421858 () List!43068)

(declare-fun e!2489238 () Bool)

(assert (=> b!4013712 (= e!2489238 (or (not (= suffix!1299 Nil!42944)) (= lt!1421858 (t!332999 prefix!494))))))

(declare-fun b!4013710 () Bool)

(assert (=> b!4013710 (= e!2489239 (Cons!42944 (h!48364 (t!332999 prefix!494)) (++!11236 (t!332999 (t!332999 prefix!494)) suffix!1299)))))

(declare-fun b!4013711 () Bool)

(declare-fun res!1631782 () Bool)

(assert (=> b!4013711 (=> (not res!1631782) (not e!2489238))))

(assert (=> b!4013711 (= res!1631782 (= (size!32110 lt!1421858) (+ (size!32110 (t!332999 prefix!494)) (size!32110 suffix!1299))))))

(declare-fun d!1188538 () Bool)

(assert (=> d!1188538 e!2489238))

(declare-fun res!1631781 () Bool)

(assert (=> d!1188538 (=> (not res!1631781) (not e!2489238))))

(assert (=> d!1188538 (= res!1631781 (= (content!6512 lt!1421858) ((_ map or) (content!6512 (t!332999 prefix!494)) (content!6512 suffix!1299))))))

(assert (=> d!1188538 (= lt!1421858 e!2489239)))

(declare-fun c!693997 () Bool)

(assert (=> d!1188538 (= c!693997 ((_ is Nil!42944) (t!332999 prefix!494)))))

(assert (=> d!1188538 (= (++!11236 (t!332999 prefix!494) suffix!1299) lt!1421858)))

(assert (= (and d!1188538 c!693997) b!4013709))

(assert (= (and d!1188538 (not c!693997)) b!4013710))

(assert (= (and d!1188538 res!1631781) b!4013711))

(assert (= (and b!4013711 res!1631782) b!4013712))

(declare-fun m!4600537 () Bool)

(assert (=> b!4013710 m!4600537))

(declare-fun m!4600539 () Bool)

(assert (=> b!4013711 m!4600539))

(assert (=> b!4013711 m!4598423))

(assert (=> b!4013711 m!4597545))

(declare-fun m!4600541 () Bool)

(assert (=> d!1188538 m!4600541))

(assert (=> d!1188538 m!4598957))

(assert (=> d!1188538 m!4598587))

(assert (=> b!4012428 d!1188538))

(declare-fun d!1188540 () Bool)

(assert (=> d!1188540 (= (maxPrefixOneRule!2741 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) lt!1421025) (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) (seqFromList!5059 lt!1421058)) (rule!9878 (_1!24179 (v!39615 lt!1421042))) (size!32110 lt!1421058) lt!1421058) (_2!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1188540 true))

(declare-fun _$59!657 () Unit!61970)

(assert (=> d!1188540 (= (choose!24249 thiss!21717 rules!2999 lt!1421058 lt!1421025 (_2!24179 (v!39615 lt!1421042)) (rule!9878 (_1!24179 (v!39615 lt!1421042)))) _$59!657)))

(declare-fun bs!589527 () Bool)

(assert (= bs!589527 d!1188540))

(assert (=> bs!589527 m!4597455))

(assert (=> bs!589527 m!4597435))

(assert (=> bs!589527 m!4597435))

(assert (=> bs!589527 m!4597439))

(assert (=> bs!589527 m!4597463))

(assert (=> d!1187584 d!1188540))

(assert (=> d!1187584 d!1187516))

(assert (=> d!1187584 d!1187518))

(assert (=> d!1187584 d!1187626))

(assert (=> d!1187584 d!1187534))

(assert (=> d!1187584 d!1187588))

(declare-fun b!4013713 () Bool)

(declare-fun e!2489240 () Bool)

(assert (=> b!4013713 (= e!2489240 (nullable!4117 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun b!4013714 () Bool)

(declare-fun e!2489243 () Bool)

(declare-fun lt!1421859 () Bool)

(assert (=> b!4013714 (= e!2489243 (not lt!1421859))))

(declare-fun b!4013715 () Bool)

(declare-fun e!2489244 () Bool)

(declare-fun call!286523 () Bool)

(assert (=> b!4013715 (= e!2489244 (= lt!1421859 call!286523))))

(declare-fun b!4013716 () Bool)

(declare-fun e!2489245 () Bool)

(declare-fun e!2489246 () Bool)

(assert (=> b!4013716 (= e!2489245 e!2489246)))

(declare-fun res!1631787 () Bool)

(assert (=> b!4013716 (=> (not res!1631787) (not e!2489246))))

(assert (=> b!4013716 (= res!1631787 (not lt!1421859))))

(declare-fun b!4013717 () Bool)

(declare-fun res!1631784 () Bool)

(declare-fun e!2489241 () Bool)

(assert (=> b!4013717 (=> (not res!1631784) (not e!2489241))))

(assert (=> b!4013717 (= res!1631784 (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun b!4013718 () Bool)

(declare-fun res!1631786 () Bool)

(assert (=> b!4013718 (=> res!1631786 e!2489245)))

(assert (=> b!4013718 (= res!1631786 e!2489241)))

(declare-fun res!1631785 () Bool)

(assert (=> b!4013718 (=> (not res!1631785) (not e!2489241))))

(assert (=> b!4013718 (= res!1631785 lt!1421859)))

(declare-fun b!4013719 () Bool)

(assert (=> b!4013719 (= e!2489241 (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun b!4013720 () Bool)

(declare-fun res!1631789 () Bool)

(assert (=> b!4013720 (=> res!1631789 e!2489245)))

(assert (=> b!4013720 (= res!1631789 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))))

(assert (=> b!4013720 (= e!2489243 e!2489245)))

(declare-fun b!4013721 () Bool)

(declare-fun res!1631783 () Bool)

(declare-fun e!2489242 () Bool)

(assert (=> b!4013721 (=> res!1631783 e!2489242)))

(assert (=> b!4013721 (= res!1631783 (not (isEmpty!25654 (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))))

(declare-fun b!4013722 () Bool)

(assert (=> b!4013722 (= e!2489244 e!2489243)))

(declare-fun c!694000 () Bool)

(assert (=> b!4013722 (= c!694000 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun d!1188542 () Bool)

(assert (=> d!1188542 e!2489244))

(declare-fun c!693998 () Bool)

(assert (=> d!1188542 (= c!693998 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))))))

(assert (=> d!1188542 (= lt!1421859 e!2489240)))

(declare-fun c!693999 () Bool)

(assert (=> d!1188542 (= c!693999 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))

(assert (=> d!1188542 (validRegex!5317 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))))

(assert (=> d!1188542 (= (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) lt!1421859)))

(declare-fun b!4013723 () Bool)

(assert (=> b!4013723 (= e!2489240 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))))) (tail!6251 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun bm!286518 () Bool)

(assert (=> bm!286518 (= call!286523 (isEmpty!25654 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun b!4013724 () Bool)

(declare-fun res!1631790 () Bool)

(assert (=> b!4013724 (=> (not res!1631790) (not e!2489241))))

(assert (=> b!4013724 (= res!1631790 (not call!286523))))

(declare-fun b!4013725 () Bool)

(assert (=> b!4013725 (= e!2489242 (not (= (head!8519 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (c!693563 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))))))))

(declare-fun b!4013726 () Bool)

(assert (=> b!4013726 (= e!2489246 e!2489242)))

(declare-fun res!1631788 () Bool)

(assert (=> b!4013726 (=> res!1631788 e!2489242)))

(assert (=> b!4013726 (= res!1631788 call!286523)))

(assert (= (and d!1188542 c!693999) b!4013713))

(assert (= (and d!1188542 (not c!693999)) b!4013723))

(assert (= (and d!1188542 c!693998) b!4013715))

(assert (= (and d!1188542 (not c!693998)) b!4013722))

(assert (= (and b!4013722 c!694000) b!4013714))

(assert (= (and b!4013722 (not c!694000)) b!4013720))

(assert (= (and b!4013720 (not res!1631789)) b!4013718))

(assert (= (and b!4013718 res!1631785) b!4013724))

(assert (= (and b!4013724 res!1631790) b!4013717))

(assert (= (and b!4013717 res!1631784) b!4013719))

(assert (= (and b!4013718 (not res!1631786)) b!4013716))

(assert (= (and b!4013716 res!1631787) b!4013726))

(assert (= (and b!4013726 (not res!1631788)) b!4013721))

(assert (= (and b!4013721 (not res!1631783)) b!4013725))

(assert (= (or b!4013715 b!4013724 b!4013726) bm!286518))

(assert (=> b!4013725 m!4598559))

(declare-fun m!4600543 () Bool)

(assert (=> b!4013725 m!4600543))

(assert (=> bm!286518 m!4598559))

(declare-fun m!4600545 () Bool)

(assert (=> bm!286518 m!4600545))

(assert (=> b!4013721 m!4598559))

(declare-fun m!4600547 () Bool)

(assert (=> b!4013721 m!4600547))

(assert (=> b!4013721 m!4600547))

(declare-fun m!4600549 () Bool)

(assert (=> b!4013721 m!4600549))

(assert (=> b!4013719 m!4598559))

(assert (=> b!4013719 m!4600543))

(declare-fun m!4600551 () Bool)

(assert (=> b!4013713 m!4600551))

(assert (=> b!4013717 m!4598559))

(assert (=> b!4013717 m!4600547))

(assert (=> b!4013717 m!4600547))

(assert (=> b!4013717 m!4600549))

(assert (=> b!4013723 m!4598559))

(assert (=> b!4013723 m!4600543))

(assert (=> b!4013723 m!4600543))

(declare-fun m!4600553 () Bool)

(assert (=> b!4013723 m!4600553))

(assert (=> b!4013723 m!4598559))

(assert (=> b!4013723 m!4600547))

(assert (=> b!4013723 m!4600553))

(assert (=> b!4013723 m!4600547))

(declare-fun m!4600555 () Bool)

(assert (=> b!4013723 m!4600555))

(assert (=> d!1188542 m!4598559))

(assert (=> d!1188542 m!4600545))

(declare-fun m!4600557 () Bool)

(assert (=> d!1188542 m!4600557))

(assert (=> b!4012421 d!1188542))

(assert (=> b!4012421 d!1188182))

(assert (=> b!4012421 d!1188178))

(assert (=> b!4012421 d!1188180))

(declare-fun d!1188544 () Bool)

(declare-fun lt!1421860 () Int)

(assert (=> d!1188544 (>= lt!1421860 0)))

(declare-fun e!2489247 () Int)

(assert (=> d!1188544 (= lt!1421860 e!2489247)))

(declare-fun c!694001 () Bool)

(assert (=> d!1188544 (= c!694001 ((_ is Nil!42944) lt!1421060))))

(assert (=> d!1188544 (= (size!32110 lt!1421060) lt!1421860)))

(declare-fun b!4013727 () Bool)

(assert (=> b!4013727 (= e!2489247 0)))

(declare-fun b!4013728 () Bool)

(assert (=> b!4013728 (= e!2489247 (+ 1 (size!32110 (t!332999 lt!1421060))))))

(assert (= (and d!1188544 c!694001) b!4013727))

(assert (= (and d!1188544 (not c!694001)) b!4013728))

(declare-fun m!4600559 () Bool)

(assert (=> b!4013728 m!4600559))

(assert (=> b!4011958 d!1188544))

(assert (=> b!4011958 d!1187604))

(declare-fun b!4013729 () Bool)

(declare-fun e!2489249 () List!43068)

(assert (=> b!4013729 (= e!2489249 newSuffixResult!27)))

(declare-fun b!4013732 () Bool)

(declare-fun e!2489248 () Bool)

(declare-fun lt!1421861 () List!43068)

(assert (=> b!4013732 (= e!2489248 (or (not (= newSuffixResult!27 Nil!42944)) (= lt!1421861 (t!332999 lt!1421037))))))

(declare-fun b!4013730 () Bool)

(assert (=> b!4013730 (= e!2489249 (Cons!42944 (h!48364 (t!332999 lt!1421037)) (++!11236 (t!332999 (t!332999 lt!1421037)) newSuffixResult!27)))))

(declare-fun b!4013731 () Bool)

(declare-fun res!1631792 () Bool)

(assert (=> b!4013731 (=> (not res!1631792) (not e!2489248))))

(assert (=> b!4013731 (= res!1631792 (= (size!32110 lt!1421861) (+ (size!32110 (t!332999 lt!1421037)) (size!32110 newSuffixResult!27))))))

(declare-fun d!1188546 () Bool)

(assert (=> d!1188546 e!2489248))

(declare-fun res!1631791 () Bool)

(assert (=> d!1188546 (=> (not res!1631791) (not e!2489248))))

(assert (=> d!1188546 (= res!1631791 (= (content!6512 lt!1421861) ((_ map or) (content!6512 (t!332999 lt!1421037)) (content!6512 newSuffixResult!27))))))

(assert (=> d!1188546 (= lt!1421861 e!2489249)))

(declare-fun c!694002 () Bool)

(assert (=> d!1188546 (= c!694002 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188546 (= (++!11236 (t!332999 lt!1421037) newSuffixResult!27) lt!1421861)))

(assert (= (and d!1188546 c!694002) b!4013729))

(assert (= (and d!1188546 (not c!694002)) b!4013730))

(assert (= (and d!1188546 res!1631791) b!4013731))

(assert (= (and b!4013731 res!1631792) b!4013732))

(declare-fun m!4600561 () Bool)

(assert (=> b!4013730 m!4600561))

(declare-fun m!4600563 () Bool)

(assert (=> b!4013731 m!4600563))

(assert (=> b!4013731 m!4598421))

(assert (=> b!4013731 m!4598191))

(declare-fun m!4600565 () Bool)

(assert (=> d!1188546 m!4600565))

(assert (=> d!1188546 m!4598785))

(assert (=> d!1188546 m!4598195))

(assert (=> b!4012344 d!1188546))

(assert (=> b!4012364 d!1187836))

(declare-fun d!1188548 () Bool)

(assert (=> d!1188548 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293))))))))

(declare-fun b_lambda!117143 () Bool)

(assert (=> (not b_lambda!117143) (not d!1188548)))

(declare-fun t!333213 () Bool)

(declare-fun tb!241391 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333213) tb!241391))

(declare-fun result!292546 () Bool)

(assert (=> tb!241391 (= result!292546 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))))))))

(declare-fun m!4600567 () Bool)

(assert (=> tb!241391 m!4600567))

(assert (=> d!1188548 t!333213))

(declare-fun b_and!308393 () Bool)

(assert (= b_and!308387 (and (=> t!333213 result!292546) b_and!308393)))

(declare-fun t!333215 () Bool)

(declare-fun tb!241393 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333215) tb!241393))

(declare-fun result!292548 () Bool)

(assert (= result!292548 result!292546))

(assert (=> d!1188548 t!333215))

(declare-fun b_and!308395 () Bool)

(assert (= b_and!308389 (and (=> t!333215 result!292548) b_and!308395)))

(declare-fun t!333217 () Bool)

(declare-fun tb!241395 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333217) tb!241395))

(declare-fun result!292550 () Bool)

(assert (= result!292550 result!292546))

(assert (=> d!1188548 t!333217))

(declare-fun b_and!308397 () Bool)

(assert (= b_and!308391 (and (=> t!333217 result!292550) b_and!308397)))

(assert (=> d!1188548 m!4598487))

(declare-fun m!4600569 () Bool)

(assert (=> d!1188548 m!4600569))

(assert (=> b!4012364 d!1188548))

(declare-fun d!1188550 () Bool)

(assert (=> d!1188550 (= (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))) (fromListB!2316 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421293)))))))

(declare-fun bs!589528 () Bool)

(assert (= bs!589528 d!1188550))

(declare-fun m!4600571 () Bool)

(assert (=> bs!589528 m!4600571))

(assert (=> b!4012364 d!1188550))

(assert (=> d!1187420 d!1187418))

(declare-fun d!1188552 () Bool)

(assert (=> d!1188552 (isPrefix!3921 lt!1421016 lt!1421016)))

(assert (=> d!1188552 true))

(declare-fun _$45!1955 () Unit!61970)

(assert (=> d!1188552 (= (choose!24241 lt!1421016 lt!1421016) _$45!1955)))

(declare-fun bs!589529 () Bool)

(assert (= bs!589529 d!1188552))

(assert (=> bs!589529 m!4597417))

(assert (=> d!1187420 d!1188552))

(assert (=> b!4012063 d!1187730))

(assert (=> b!4012063 d!1187732))

(assert (=> b!4012063 d!1187728))

(assert (=> b!4012087 d!1187772))

(declare-fun d!1188554 () Bool)

(assert (=> d!1188554 (= (head!8519 lt!1421052) (h!48364 lt!1421052))))

(assert (=> b!4012087 d!1188554))

(assert (=> b!4012406 d!1187772))

(declare-fun d!1188556 () Bool)

(assert (=> d!1188556 (= (head!8519 newSuffix!27) (h!48364 newSuffix!27))))

(assert (=> b!4012003 d!1188556))

(declare-fun d!1188558 () Bool)

(assert (=> d!1188558 (= (head!8519 suffix!1299) (h!48364 suffix!1299))))

(assert (=> b!4012003 d!1188558))

(declare-fun d!1188560 () Bool)

(declare-fun c!694003 () Bool)

(assert (=> d!1188560 (= c!694003 ((_ is Nil!42944) lt!1421223))))

(declare-fun e!2489251 () (InoxSet C!23664))

(assert (=> d!1188560 (= (content!6512 lt!1421223) e!2489251)))

(declare-fun b!4013733 () Bool)

(assert (=> b!4013733 (= e!2489251 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013734 () Bool)

(assert (=> b!4013734 (= e!2489251 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421223) true) (content!6512 (t!332999 lt!1421223))))))

(assert (= (and d!1188560 c!694003) b!4013733))

(assert (= (and d!1188560 (not c!694003)) b!4013734))

(declare-fun m!4600573 () Bool)

(assert (=> b!4013734 m!4600573))

(declare-fun m!4600575 () Bool)

(assert (=> b!4013734 m!4600575))

(assert (=> d!1187522 d!1188560))

(declare-fun d!1188562 () Bool)

(declare-fun c!694004 () Bool)

(assert (=> d!1188562 (= c!694004 ((_ is Nil!42944) lt!1421058))))

(declare-fun e!2489252 () (InoxSet C!23664))

(assert (=> d!1188562 (= (content!6512 lt!1421058) e!2489252)))

(declare-fun b!4013735 () Bool)

(assert (=> b!4013735 (= e!2489252 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013736 () Bool)

(assert (=> b!4013736 (= e!2489252 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421058) true) (content!6512 (t!332999 lt!1421058))))))

(assert (= (and d!1188562 c!694004) b!4013735))

(assert (= (and d!1188562 (not c!694004)) b!4013736))

(declare-fun m!4600577 () Bool)

(assert (=> b!4013736 m!4600577))

(assert (=> b!4013736 m!4600509))

(assert (=> d!1187522 d!1188562))

(declare-fun d!1188564 () Bool)

(declare-fun c!694005 () Bool)

(assert (=> d!1188564 (= c!694005 ((_ is Nil!42944) (_2!24179 (v!39615 lt!1421042))))))

(declare-fun e!2489253 () (InoxSet C!23664))

(assert (=> d!1188564 (= (content!6512 (_2!24179 (v!39615 lt!1421042))) e!2489253)))

(declare-fun b!4013737 () Bool)

(assert (=> b!4013737 (= e!2489253 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013738 () Bool)

(assert (=> b!4013738 (= e!2489253 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 (_2!24179 (v!39615 lt!1421042))) true) (content!6512 (t!332999 (_2!24179 (v!39615 lt!1421042))))))))

(assert (= (and d!1188564 c!694005) b!4013737))

(assert (= (and d!1188564 (not c!694005)) b!4013738))

(declare-fun m!4600579 () Bool)

(assert (=> b!4013738 m!4600579))

(declare-fun m!4600581 () Bool)

(assert (=> b!4013738 m!4600581))

(assert (=> d!1187522 d!1188564))

(declare-fun d!1188566 () Bool)

(assert (=> d!1188566 (= suffixResult!105 lt!1421045)))

(assert (=> d!1188566 true))

(declare-fun _$63!1053 () Unit!61970)

(assert (=> d!1188566 (= (choose!24247 lt!1421037 suffixResult!105 lt!1421037 lt!1421045 lt!1421016) _$63!1053)))

(assert (=> d!1187488 d!1188566))

(assert (=> d!1187488 d!1187422))

(declare-fun d!1188568 () Bool)

(declare-fun c!694006 () Bool)

(assert (=> d!1188568 (= c!694006 ((_ is Nil!42944) lt!1421315))))

(declare-fun e!2489254 () (InoxSet C!23664))

(assert (=> d!1188568 (= (content!6512 lt!1421315) e!2489254)))

(declare-fun b!4013739 () Bool)

(assert (=> b!4013739 (= e!2489254 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013740 () Bool)

(assert (=> b!4013740 (= e!2489254 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421315) true) (content!6512 (t!332999 lt!1421315))))))

(assert (= (and d!1188568 c!694006) b!4013739))

(assert (= (and d!1188568 (not c!694006)) b!4013740))

(declare-fun m!4600583 () Bool)

(assert (=> b!4013740 m!4600583))

(declare-fun m!4600585 () Bool)

(assert (=> b!4013740 m!4600585))

(assert (=> d!1187658 d!1188568))

(declare-fun d!1188570 () Bool)

(declare-fun c!694007 () Bool)

(assert (=> d!1188570 (= c!694007 ((_ is Nil!42944) lt!1421030))))

(declare-fun e!2489255 () (InoxSet C!23664))

(assert (=> d!1188570 (= (content!6512 lt!1421030) e!2489255)))

(declare-fun b!4013741 () Bool)

(assert (=> b!4013741 (= e!2489255 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013742 () Bool)

(assert (=> b!4013742 (= e!2489255 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421030) true) (content!6512 (t!332999 lt!1421030))))))

(assert (= (and d!1188570 c!694007) b!4013741))

(assert (= (and d!1188570 (not c!694007)) b!4013742))

(declare-fun m!4600587 () Bool)

(assert (=> b!4013742 m!4600587))

(assert (=> b!4013742 m!4600535))

(assert (=> d!1187658 d!1188570))

(declare-fun d!1188572 () Bool)

(declare-fun c!694008 () Bool)

(assert (=> d!1188572 (= c!694008 ((_ is Nil!42944) suffix!1299))))

(declare-fun e!2489256 () (InoxSet C!23664))

(assert (=> d!1188572 (= (content!6512 suffix!1299) e!2489256)))

(declare-fun b!4013743 () Bool)

(assert (=> b!4013743 (= e!2489256 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013744 () Bool)

(assert (=> b!4013744 (= e!2489256 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 suffix!1299) true) (content!6512 (t!332999 suffix!1299))))))

(assert (= (and d!1188572 c!694008) b!4013743))

(assert (= (and d!1188572 (not c!694008)) b!4013744))

(declare-fun m!4600589 () Bool)

(assert (=> b!4013744 m!4600589))

(declare-fun m!4600591 () Bool)

(assert (=> b!4013744 m!4600591))

(assert (=> d!1187658 d!1188572))

(declare-fun d!1188574 () Bool)

(declare-fun res!1631797 () Bool)

(declare-fun e!2489261 () Bool)

(assert (=> d!1188574 (=> res!1631797 e!2489261)))

(assert (=> d!1188574 (= res!1631797 ((_ is Nil!42946) rules!2999))))

(assert (=> d!1188574 (= (noDuplicateTag!2660 thiss!21717 rules!2999 Nil!42948) e!2489261)))

(declare-fun b!4013749 () Bool)

(declare-fun e!2489262 () Bool)

(assert (=> b!4013749 (= e!2489261 e!2489262)))

(declare-fun res!1631798 () Bool)

(assert (=> b!4013749 (=> (not res!1631798) (not e!2489262))))

(declare-fun contains!8538 (List!43072 String!49038) Bool)

(assert (=> b!4013749 (= res!1631798 (not (contains!8538 Nil!42948 (tag!7694 (h!48366 rules!2999)))))))

(declare-fun b!4013750 () Bool)

(assert (=> b!4013750 (= e!2489262 (noDuplicateTag!2660 thiss!21717 (t!333001 rules!2999) (Cons!42948 (tag!7694 (h!48366 rules!2999)) Nil!42948)))))

(assert (= (and d!1188574 (not res!1631797)) b!4013749))

(assert (= (and b!4013749 res!1631798) b!4013750))

(declare-fun m!4600593 () Bool)

(assert (=> b!4013749 m!4600593))

(declare-fun m!4600595 () Bool)

(assert (=> b!4013750 m!4600595))

(assert (=> b!4012327 d!1188574))

(declare-fun b!4013751 () Bool)

(declare-fun e!2489264 () List!43068)

(assert (=> b!4013751 (= e!2489264 newSuffixResult!27)))

(declare-fun b!4013754 () Bool)

(declare-fun e!2489263 () Bool)

(declare-fun lt!1421862 () List!43068)

(assert (=> b!4013754 (= e!2489263 (or (not (= newSuffixResult!27 Nil!42944)) (= lt!1421862 (t!332999 lt!1421058))))))

(declare-fun b!4013752 () Bool)

(assert (=> b!4013752 (= e!2489264 (Cons!42944 (h!48364 (t!332999 lt!1421058)) (++!11236 (t!332999 (t!332999 lt!1421058)) newSuffixResult!27)))))

(declare-fun b!4013753 () Bool)

(declare-fun res!1631800 () Bool)

(assert (=> b!4013753 (=> (not res!1631800) (not e!2489263))))

(assert (=> b!4013753 (= res!1631800 (= (size!32110 lt!1421862) (+ (size!32110 (t!332999 lt!1421058)) (size!32110 newSuffixResult!27))))))

(declare-fun d!1188576 () Bool)

(assert (=> d!1188576 e!2489263))

(declare-fun res!1631799 () Bool)

(assert (=> d!1188576 (=> (not res!1631799) (not e!2489263))))

(assert (=> d!1188576 (= res!1631799 (= (content!6512 lt!1421862) ((_ map or) (content!6512 (t!332999 lt!1421058)) (content!6512 newSuffixResult!27))))))

(assert (=> d!1188576 (= lt!1421862 e!2489264)))

(declare-fun c!694009 () Bool)

(assert (=> d!1188576 (= c!694009 ((_ is Nil!42944) (t!332999 lt!1421058)))))

(assert (=> d!1188576 (= (++!11236 (t!332999 lt!1421058) newSuffixResult!27) lt!1421862)))

(assert (= (and d!1188576 c!694009) b!4013751))

(assert (= (and d!1188576 (not c!694009)) b!4013752))

(assert (= (and d!1188576 res!1631799) b!4013753))

(assert (= (and b!4013753 res!1631800) b!4013754))

(declare-fun m!4600597 () Bool)

(assert (=> b!4013752 m!4600597))

(declare-fun m!4600599 () Bool)

(assert (=> b!4013753 m!4600599))

(assert (=> b!4013753 m!4598165))

(assert (=> b!4013753 m!4598191))

(declare-fun m!4600601 () Bool)

(assert (=> d!1188576 m!4600601))

(assert (=> d!1188576 m!4600509))

(assert (=> d!1188576 m!4598195))

(assert (=> b!4012127 d!1188576))

(declare-fun d!1188578 () Bool)

(declare-fun c!694010 () Bool)

(assert (=> d!1188578 (= c!694010 ((_ is Nil!42944) lt!1421313))))

(declare-fun e!2489265 () (InoxSet C!23664))

(assert (=> d!1188578 (= (content!6512 lt!1421313) e!2489265)))

(declare-fun b!4013755 () Bool)

(assert (=> b!4013755 (= e!2489265 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013756 () Bool)

(assert (=> b!4013756 (= e!2489265 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421313) true) (content!6512 (t!332999 lt!1421313))))))

(assert (= (and d!1188578 c!694010) b!4013755))

(assert (= (and d!1188578 (not c!694010)) b!4013756))

(declare-fun m!4600603 () Bool)

(assert (=> b!4013756 m!4600603))

(declare-fun m!4600605 () Bool)

(assert (=> b!4013756 m!4600605))

(assert (=> d!1187654 d!1188578))

(assert (=> d!1187654 d!1187850))

(assert (=> d!1187654 d!1188572))

(assert (=> b!4011995 d!1187764))

(assert (=> b!4011995 d!1188464))

(declare-fun b!4013757 () Bool)

(declare-fun e!2489267 () List!43068)

(assert (=> b!4013757 (= e!2489267 lt!1421039)))

(declare-fun e!2489266 () Bool)

(declare-fun lt!1421863 () List!43068)

(declare-fun b!4013760 () Bool)

(assert (=> b!4013760 (= e!2489266 (or (not (= lt!1421039 Nil!42944)) (= lt!1421863 (t!332999 prefix!494))))))

(declare-fun b!4013758 () Bool)

(assert (=> b!4013758 (= e!2489267 (Cons!42944 (h!48364 (t!332999 prefix!494)) (++!11236 (t!332999 (t!332999 prefix!494)) lt!1421039)))))

(declare-fun b!4013759 () Bool)

(declare-fun res!1631802 () Bool)

(assert (=> b!4013759 (=> (not res!1631802) (not e!2489266))))

(assert (=> b!4013759 (= res!1631802 (= (size!32110 lt!1421863) (+ (size!32110 (t!332999 prefix!494)) (size!32110 lt!1421039))))))

(declare-fun d!1188580 () Bool)

(assert (=> d!1188580 e!2489266))

(declare-fun res!1631801 () Bool)

(assert (=> d!1188580 (=> (not res!1631801) (not e!2489266))))

(assert (=> d!1188580 (= res!1631801 (= (content!6512 lt!1421863) ((_ map or) (content!6512 (t!332999 prefix!494)) (content!6512 lt!1421039))))))

(assert (=> d!1188580 (= lt!1421863 e!2489267)))

(declare-fun c!694011 () Bool)

(assert (=> d!1188580 (= c!694011 ((_ is Nil!42944) (t!332999 prefix!494)))))

(assert (=> d!1188580 (= (++!11236 (t!332999 prefix!494) lt!1421039) lt!1421863)))

(assert (= (and d!1188580 c!694011) b!4013757))

(assert (= (and d!1188580 (not c!694011)) b!4013758))

(assert (= (and d!1188580 res!1631801) b!4013759))

(assert (= (and b!4013759 res!1631802) b!4013760))

(declare-fun m!4600607 () Bool)

(assert (=> b!4013758 m!4600607))

(declare-fun m!4600609 () Bool)

(assert (=> b!4013759 m!4600609))

(assert (=> b!4013759 m!4598423))

(assert (=> b!4013759 m!4597745))

(declare-fun m!4600611 () Bool)

(assert (=> d!1188580 m!4600611))

(assert (=> d!1188580 m!4598957))

(assert (=> d!1188580 m!4597753))

(assert (=> b!4011904 d!1188580))

(declare-fun b!4013761 () Bool)

(declare-fun e!2489270 () Option!9248)

(declare-fun lt!1421867 () tuple2!42094)

(assert (=> b!4013761 (= e!2489270 (Some!9247 (tuple2!42091 (Token!12807 (apply!10031 (transformation!6834 (h!48366 rules!2999)) (seqFromList!5059 (_1!24181 lt!1421867))) (h!48366 rules!2999) (size!32112 (seqFromList!5059 (_1!24181 lt!1421867))) (_1!24181 lt!1421867)) (_2!24181 lt!1421867))))))

(declare-fun lt!1421868 () Unit!61970)

(assert (=> b!4013761 (= lt!1421868 (longestMatchIsAcceptedByMatchOrIsEmpty!1332 (regex!6834 (h!48366 rules!2999)) lt!1421025))))

(declare-fun res!1631808 () Bool)

(assert (=> b!4013761 (= res!1631808 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (h!48366 rules!2999)) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(declare-fun e!2489271 () Bool)

(assert (=> b!4013761 (=> res!1631808 e!2489271)))

(assert (=> b!4013761 e!2489271))

(declare-fun lt!1421865 () Unit!61970)

(assert (=> b!4013761 (= lt!1421865 lt!1421868)))

(declare-fun lt!1421866 () Unit!61970)

(assert (=> b!4013761 (= lt!1421866 (lemmaSemiInverse!1879 (transformation!6834 (h!48366 rules!2999)) (seqFromList!5059 (_1!24181 lt!1421867))))))

(declare-fun b!4013762 () Bool)

(declare-fun res!1631807 () Bool)

(declare-fun e!2489269 () Bool)

(assert (=> b!4013762 (=> (not res!1631807) (not e!2489269))))

(declare-fun lt!1421864 () Option!9248)

(assert (=> b!4013762 (= res!1631807 (< (size!32110 (_2!24179 (get!14111 lt!1421864))) (size!32110 lt!1421025)))))

(declare-fun b!4013763 () Bool)

(declare-fun e!2489268 () Bool)

(assert (=> b!4013763 (= e!2489268 e!2489269)))

(declare-fun res!1631806 () Bool)

(assert (=> b!4013763 (=> (not res!1631806) (not e!2489269))))

(assert (=> b!4013763 (= res!1631806 (matchR!5700 (regex!6834 (h!48366 rules!2999)) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421864))))))))

(declare-fun b!4013765 () Bool)

(assert (=> b!4013765 (= e!2489270 None!9247)))

(declare-fun b!4013766 () Bool)

(declare-fun res!1631805 () Bool)

(assert (=> b!4013766 (=> (not res!1631805) (not e!2489269))))

(assert (=> b!4013766 (= res!1631805 (= (value!215403 (_1!24179 (get!14111 lt!1421864))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421864)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421864)))))))))

(declare-fun b!4013767 () Bool)

(declare-fun res!1631804 () Bool)

(assert (=> b!4013767 (=> (not res!1631804) (not e!2489269))))

(assert (=> b!4013767 (= res!1631804 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421864)))) (_2!24179 (get!14111 lt!1421864))) lt!1421025))))

(declare-fun b!4013768 () Bool)

(declare-fun res!1631809 () Bool)

(assert (=> b!4013768 (=> (not res!1631809) (not e!2489269))))

(assert (=> b!4013768 (= res!1631809 (= (rule!9878 (_1!24179 (get!14111 lt!1421864))) (h!48366 rules!2999)))))

(declare-fun b!4013769 () Bool)

(assert (=> b!4013769 (= e!2489269 (= (size!32109 (_1!24179 (get!14111 lt!1421864))) (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421864))))))))

(declare-fun d!1188582 () Bool)

(assert (=> d!1188582 e!2489268))

(declare-fun res!1631803 () Bool)

(assert (=> d!1188582 (=> res!1631803 e!2489268)))

(assert (=> d!1188582 (= res!1631803 (isEmpty!25653 lt!1421864))))

(assert (=> d!1188582 (= lt!1421864 e!2489270)))

(declare-fun c!694012 () Bool)

(assert (=> d!1188582 (= c!694012 (isEmpty!25654 (_1!24181 lt!1421867)))))

(assert (=> d!1188582 (= lt!1421867 (findLongestMatch!1272 (regex!6834 (h!48366 rules!2999)) lt!1421025))))

(assert (=> d!1188582 (ruleValid!2766 thiss!21717 (h!48366 rules!2999))))

(assert (=> d!1188582 (= (maxPrefixOneRule!2741 thiss!21717 (h!48366 rules!2999) lt!1421025) lt!1421864)))

(declare-fun b!4013764 () Bool)

(assert (=> b!4013764 (= e!2489271 (matchR!5700 (regex!6834 (h!48366 rules!2999)) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (h!48366 rules!2999)) Nil!42944 (size!32110 Nil!42944) lt!1421025 lt!1421025 (size!32110 lt!1421025)))))))

(assert (= (and d!1188582 c!694012) b!4013765))

(assert (= (and d!1188582 (not c!694012)) b!4013761))

(assert (= (and b!4013761 (not res!1631808)) b!4013764))

(assert (= (and d!1188582 (not res!1631803)) b!4013763))

(assert (= (and b!4013763 res!1631806) b!4013767))

(assert (= (and b!4013767 res!1631804) b!4013762))

(assert (= (and b!4013762 res!1631807) b!4013768))

(assert (= (and b!4013768 res!1631809) b!4013766))

(assert (= (and b!4013766 res!1631805) b!4013769))

(declare-fun m!4600613 () Bool)

(assert (=> b!4013767 m!4600613))

(declare-fun m!4600615 () Bool)

(assert (=> b!4013767 m!4600615))

(assert (=> b!4013767 m!4600615))

(declare-fun m!4600617 () Bool)

(assert (=> b!4013767 m!4600617))

(assert (=> b!4013767 m!4600617))

(declare-fun m!4600619 () Bool)

(assert (=> b!4013767 m!4600619))

(assert (=> b!4013768 m!4600613))

(declare-fun m!4600621 () Bool)

(assert (=> d!1188582 m!4600621))

(declare-fun m!4600623 () Bool)

(assert (=> d!1188582 m!4600623))

(declare-fun m!4600625 () Bool)

(assert (=> d!1188582 m!4600625))

(assert (=> d!1188582 m!4598919))

(assert (=> b!4013769 m!4600613))

(declare-fun m!4600627 () Bool)

(assert (=> b!4013769 m!4600627))

(assert (=> b!4013766 m!4600613))

(declare-fun m!4600629 () Bool)

(assert (=> b!4013766 m!4600629))

(assert (=> b!4013766 m!4600629))

(declare-fun m!4600631 () Bool)

(assert (=> b!4013766 m!4600631))

(assert (=> b!4013764 m!4598349))

(assert (=> b!4013764 m!4597781))

(assert (=> b!4013764 m!4598349))

(assert (=> b!4013764 m!4597781))

(declare-fun m!4600633 () Bool)

(assert (=> b!4013764 m!4600633))

(declare-fun m!4600635 () Bool)

(assert (=> b!4013764 m!4600635))

(assert (=> b!4013763 m!4600613))

(assert (=> b!4013763 m!4600615))

(assert (=> b!4013763 m!4600615))

(assert (=> b!4013763 m!4600617))

(assert (=> b!4013763 m!4600617))

(declare-fun m!4600637 () Bool)

(assert (=> b!4013763 m!4600637))

(assert (=> b!4013762 m!4600613))

(declare-fun m!4600639 () Bool)

(assert (=> b!4013762 m!4600639))

(assert (=> b!4013762 m!4597781))

(assert (=> b!4013761 m!4598349))

(assert (=> b!4013761 m!4597781))

(assert (=> b!4013761 m!4600633))

(declare-fun m!4600641 () Bool)

(assert (=> b!4013761 m!4600641))

(declare-fun m!4600643 () Bool)

(assert (=> b!4013761 m!4600643))

(declare-fun m!4600645 () Bool)

(assert (=> b!4013761 m!4600645))

(assert (=> b!4013761 m!4597781))

(assert (=> b!4013761 m!4600643))

(declare-fun m!4600647 () Bool)

(assert (=> b!4013761 m!4600647))

(assert (=> b!4013761 m!4600643))

(declare-fun m!4600649 () Bool)

(assert (=> b!4013761 m!4600649))

(assert (=> b!4013761 m!4598349))

(assert (=> b!4013761 m!4600643))

(declare-fun m!4600651 () Bool)

(assert (=> b!4013761 m!4600651))

(assert (=> bm!286383 d!1188582))

(declare-fun d!1188584 () Bool)

(declare-fun c!694013 () Bool)

(assert (=> d!1188584 (= c!694013 ((_ is Nil!42944) lt!1421285))))

(declare-fun e!2489272 () (InoxSet C!23664))

(assert (=> d!1188584 (= (content!6512 lt!1421285) e!2489272)))

(declare-fun b!4013770 () Bool)

(assert (=> b!4013770 (= e!2489272 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013771 () Bool)

(assert (=> b!4013771 (= e!2489272 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421285) true) (content!6512 (t!332999 lt!1421285))))))

(assert (= (and d!1188584 c!694013) b!4013770))

(assert (= (and d!1188584 (not c!694013)) b!4013771))

(declare-fun m!4600653 () Bool)

(assert (=> b!4013771 m!4600653))

(declare-fun m!4600655 () Bool)

(assert (=> b!4013771 m!4600655))

(assert (=> d!1187616 d!1188584))

(assert (=> d!1187616 d!1187740))

(declare-fun d!1188586 () Bool)

(declare-fun c!694014 () Bool)

(assert (=> d!1188586 (= c!694014 ((_ is Nil!42944) newSuffixResult!27))))

(declare-fun e!2489273 () (InoxSet C!23664))

(assert (=> d!1188586 (= (content!6512 newSuffixResult!27) e!2489273)))

(declare-fun b!4013772 () Bool)

(assert (=> b!4013772 (= e!2489273 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013773 () Bool)

(assert (=> b!4013773 (= e!2489273 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 newSuffixResult!27) true) (content!6512 (t!332999 newSuffixResult!27))))))

(assert (= (and d!1188586 c!694014) b!4013772))

(assert (= (and d!1188586 (not c!694014)) b!4013773))

(declare-fun m!4600657 () Bool)

(assert (=> b!4013773 m!4600657))

(declare-fun m!4600659 () Bool)

(assert (=> b!4013773 m!4600659))

(assert (=> d!1187616 d!1188586))

(declare-fun d!1188588 () Bool)

(assert (=> d!1188588 (= (isEmpty!25654 lt!1421037) ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1187644 d!1188588))

(assert (=> d!1187644 d!1188446))

(assert (=> d!1187434 d!1188398))

(declare-fun b!4013774 () Bool)

(declare-fun res!1631813 () Bool)

(declare-fun e!2489274 () Bool)

(assert (=> b!4013774 (=> (not res!1631813) (not e!2489274))))

(declare-fun lt!1421869 () Option!9248)

(assert (=> b!4013774 (= res!1631813 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421869)))) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421869)))))))

(declare-fun b!4013775 () Bool)

(declare-fun res!1631815 () Bool)

(assert (=> b!4013775 (=> (not res!1631815) (not e!2489274))))

(assert (=> b!4013775 (= res!1631815 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421869)))) (_2!24179 (get!14111 lt!1421869))) lt!1421025))))

(declare-fun b!4013776 () Bool)

(declare-fun res!1631812 () Bool)

(assert (=> b!4013776 (=> (not res!1631812) (not e!2489274))))

(assert (=> b!4013776 (= res!1631812 (< (size!32110 (_2!24179 (get!14111 lt!1421869))) (size!32110 lt!1421025)))))

(declare-fun b!4013777 () Bool)

(declare-fun res!1631816 () Bool)

(assert (=> b!4013777 (=> (not res!1631816) (not e!2489274))))

(assert (=> b!4013777 (= res!1631816 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421869)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421869))))))))

(declare-fun d!1188590 () Bool)

(declare-fun e!2489276 () Bool)

(assert (=> d!1188590 e!2489276))

(declare-fun res!1631811 () Bool)

(assert (=> d!1188590 (=> res!1631811 e!2489276)))

(assert (=> d!1188590 (= res!1631811 (isEmpty!25653 lt!1421869))))

(declare-fun e!2489275 () Option!9248)

(assert (=> d!1188590 (= lt!1421869 e!2489275)))

(declare-fun c!694015 () Bool)

(assert (=> d!1188590 (= c!694015 (and ((_ is Cons!42946) (t!333001 rules!2999)) ((_ is Nil!42946) (t!333001 (t!333001 rules!2999)))))))

(declare-fun lt!1421870 () Unit!61970)

(declare-fun lt!1421873 () Unit!61970)

(assert (=> d!1188590 (= lt!1421870 lt!1421873)))

(assert (=> d!1188590 (isPrefix!3921 lt!1421025 lt!1421025)))

(assert (=> d!1188590 (= lt!1421873 (lemmaIsPrefixRefl!2497 lt!1421025 lt!1421025))))

(assert (=> d!1188590 (rulesValidInductive!2491 thiss!21717 (t!333001 rules!2999))))

(assert (=> d!1188590 (= (maxPrefix!3721 thiss!21717 (t!333001 rules!2999) lt!1421025) lt!1421869)))

(declare-fun b!4013778 () Bool)

(declare-fun res!1631810 () Bool)

(assert (=> b!4013778 (=> (not res!1631810) (not e!2489274))))

(assert (=> b!4013778 (= res!1631810 (= (value!215403 (_1!24179 (get!14111 lt!1421869))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421869)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421869)))))))))

(declare-fun b!4013779 () Bool)

(declare-fun call!286524 () Option!9248)

(assert (=> b!4013779 (= e!2489275 call!286524)))

(declare-fun b!4013780 () Bool)

(assert (=> b!4013780 (= e!2489274 (contains!8536 (t!333001 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421869)))))))

(declare-fun b!4013781 () Bool)

(assert (=> b!4013781 (= e!2489276 e!2489274)))

(declare-fun res!1631814 () Bool)

(assert (=> b!4013781 (=> (not res!1631814) (not e!2489274))))

(assert (=> b!4013781 (= res!1631814 (isDefined!7070 lt!1421869))))

(declare-fun bm!286519 () Bool)

(assert (=> bm!286519 (= call!286524 (maxPrefixOneRule!2741 thiss!21717 (h!48366 (t!333001 rules!2999)) lt!1421025))))

(declare-fun b!4013782 () Bool)

(declare-fun lt!1421871 () Option!9248)

(declare-fun lt!1421872 () Option!9248)

(assert (=> b!4013782 (= e!2489275 (ite (and ((_ is None!9247) lt!1421871) ((_ is None!9247) lt!1421872)) None!9247 (ite ((_ is None!9247) lt!1421872) lt!1421871 (ite ((_ is None!9247) lt!1421871) lt!1421872 (ite (>= (size!32109 (_1!24179 (v!39615 lt!1421871))) (size!32109 (_1!24179 (v!39615 lt!1421872)))) lt!1421871 lt!1421872)))))))

(assert (=> b!4013782 (= lt!1421871 call!286524)))

(assert (=> b!4013782 (= lt!1421872 (maxPrefix!3721 thiss!21717 (t!333001 (t!333001 rules!2999)) lt!1421025))))

(assert (= (and d!1188590 c!694015) b!4013779))

(assert (= (and d!1188590 (not c!694015)) b!4013782))

(assert (= (or b!4013779 b!4013782) bm!286519))

(assert (= (and d!1188590 (not res!1631811)) b!4013781))

(assert (= (and b!4013781 res!1631814) b!4013774))

(assert (= (and b!4013774 res!1631813) b!4013776))

(assert (= (and b!4013776 res!1631812) b!4013775))

(assert (= (and b!4013775 res!1631815) b!4013778))

(assert (= (and b!4013778 res!1631810) b!4013777))

(assert (= (and b!4013777 res!1631816) b!4013780))

(declare-fun m!4600661 () Bool)

(assert (=> b!4013777 m!4600661))

(declare-fun m!4600663 () Bool)

(assert (=> b!4013777 m!4600663))

(assert (=> b!4013777 m!4600663))

(declare-fun m!4600665 () Bool)

(assert (=> b!4013777 m!4600665))

(assert (=> b!4013777 m!4600665))

(declare-fun m!4600667 () Bool)

(assert (=> b!4013777 m!4600667))

(assert (=> b!4013778 m!4600661))

(declare-fun m!4600669 () Bool)

(assert (=> b!4013778 m!4600669))

(assert (=> b!4013778 m!4600669))

(declare-fun m!4600671 () Bool)

(assert (=> b!4013778 m!4600671))

(declare-fun m!4600673 () Bool)

(assert (=> d!1188590 m!4600673))

(assert (=> d!1188590 m!4598063))

(assert (=> d!1188590 m!4598065))

(assert (=> d!1188590 m!4598921))

(declare-fun m!4600675 () Bool)

(assert (=> bm!286519 m!4600675))

(assert (=> b!4013775 m!4600661))

(assert (=> b!4013775 m!4600663))

(assert (=> b!4013775 m!4600663))

(assert (=> b!4013775 m!4600665))

(assert (=> b!4013775 m!4600665))

(declare-fun m!4600677 () Bool)

(assert (=> b!4013775 m!4600677))

(assert (=> b!4013780 m!4600661))

(declare-fun m!4600679 () Bool)

(assert (=> b!4013780 m!4600679))

(declare-fun m!4600681 () Bool)

(assert (=> b!4013781 m!4600681))

(assert (=> b!4013776 m!4600661))

(declare-fun m!4600683 () Bool)

(assert (=> b!4013776 m!4600683))

(assert (=> b!4013776 m!4597781))

(declare-fun m!4600685 () Bool)

(assert (=> b!4013782 m!4600685))

(assert (=> b!4013774 m!4600661))

(assert (=> b!4013774 m!4600663))

(assert (=> b!4013774 m!4600663))

(assert (=> b!4013774 m!4600665))

(assert (=> b!4012071 d!1188590))

(declare-fun d!1188592 () Bool)

(declare-fun e!2489279 () Bool)

(assert (=> d!1188592 e!2489279))

(declare-fun res!1631819 () Bool)

(assert (=> d!1188592 (=> res!1631819 e!2489279)))

(declare-fun lt!1421874 () Bool)

(assert (=> d!1188592 (= res!1631819 (not lt!1421874))))

(declare-fun e!2489277 () Bool)

(assert (=> d!1188592 (= lt!1421874 e!2489277)))

(declare-fun res!1631817 () Bool)

(assert (=> d!1188592 (=> res!1631817 e!2489277)))

(assert (=> d!1188592 (= res!1631817 ((_ is Nil!42944) (tail!6251 lt!1421058)))))

(assert (=> d!1188592 (= (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421016)) lt!1421874)))

(declare-fun b!4013784 () Bool)

(declare-fun res!1631820 () Bool)

(declare-fun e!2489278 () Bool)

(assert (=> b!4013784 (=> (not res!1631820) (not e!2489278))))

(assert (=> b!4013784 (= res!1631820 (= (head!8519 (tail!6251 lt!1421058)) (head!8519 (tail!6251 lt!1421016))))))

(declare-fun b!4013785 () Bool)

(assert (=> b!4013785 (= e!2489278 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421058)) (tail!6251 (tail!6251 lt!1421016))))))

(declare-fun b!4013783 () Bool)

(assert (=> b!4013783 (= e!2489277 e!2489278)))

(declare-fun res!1631818 () Bool)

(assert (=> b!4013783 (=> (not res!1631818) (not e!2489278))))

(assert (=> b!4013783 (= res!1631818 (not ((_ is Nil!42944) (tail!6251 lt!1421016))))))

(declare-fun b!4013786 () Bool)

(assert (=> b!4013786 (= e!2489279 (>= (size!32110 (tail!6251 lt!1421016)) (size!32110 (tail!6251 lt!1421058))))))

(assert (= (and d!1188592 (not res!1631817)) b!4013783))

(assert (= (and b!4013783 res!1631818) b!4013784))

(assert (= (and b!4013784 res!1631820) b!4013785))

(assert (= (and d!1188592 (not res!1631819)) b!4013786))

(assert (=> b!4013784 m!4597889))

(assert (=> b!4013784 m!4599105))

(assert (=> b!4013784 m!4597827))

(assert (=> b!4013784 m!4598937))

(assert (=> b!4013785 m!4597889))

(assert (=> b!4013785 m!4599109))

(assert (=> b!4013785 m!4597827))

(assert (=> b!4013785 m!4598939))

(assert (=> b!4013785 m!4599109))

(assert (=> b!4013785 m!4598939))

(declare-fun m!4600687 () Bool)

(assert (=> b!4013785 m!4600687))

(assert (=> b!4013786 m!4597827))

(assert (=> b!4013786 m!4598943))

(assert (=> b!4013786 m!4597889))

(assert (=> b!4013786 m!4599117))

(assert (=> b!4011996 d!1188592))

(assert (=> b!4011996 d!1187912))

(assert (=> b!4011996 d!1187842))

(assert (=> b!4012289 d!1187758))

(declare-fun d!1188594 () Bool)

(declare-fun lt!1421875 () Int)

(assert (=> d!1188594 (>= lt!1421875 0)))

(declare-fun e!2489280 () Int)

(assert (=> d!1188594 (= lt!1421875 e!2489280)))

(declare-fun c!694016 () Bool)

(assert (=> d!1188594 (= c!694016 ((_ is Nil!42944) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))))))

(assert (=> d!1188594 (= (size!32110 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))) lt!1421875)))

(declare-fun b!4013787 () Bool)

(assert (=> b!4013787 (= e!2489280 0)))

(declare-fun b!4013788 () Bool)

(assert (=> b!4013788 (= e!2489280 (+ 1 (size!32110 (t!332999 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))))))))

(assert (= (and d!1188594 c!694016) b!4013787))

(assert (= (and d!1188594 (not c!694016)) b!4013788))

(declare-fun m!4600689 () Bool)

(assert (=> b!4013788 m!4600689))

(assert (=> b!4012289 d!1188594))

(declare-fun d!1188596 () Bool)

(declare-fun lt!1421876 () Int)

(assert (=> d!1188596 (>= lt!1421876 0)))

(declare-fun e!2489281 () Int)

(assert (=> d!1188596 (= lt!1421876 e!2489281)))

(declare-fun c!694017 () Bool)

(assert (=> d!1188596 (= c!694017 ((_ is Nil!42944) lt!1421116))))

(assert (=> d!1188596 (= (size!32110 lt!1421116) lt!1421876)))

(declare-fun b!4013789 () Bool)

(assert (=> b!4013789 (= e!2489281 0)))

(declare-fun b!4013790 () Bool)

(assert (=> b!4013790 (= e!2489281 (+ 1 (size!32110 (t!332999 lt!1421116))))))

(assert (= (and d!1188596 c!694017) b!4013789))

(assert (= (and d!1188596 (not c!694017)) b!4013790))

(declare-fun m!4600691 () Bool)

(assert (=> b!4013790 m!4600691))

(assert (=> b!4011905 d!1188596))

(assert (=> b!4011905 d!1187606))

(declare-fun d!1188598 () Bool)

(declare-fun lt!1421877 () Int)

(assert (=> d!1188598 (>= lt!1421877 0)))

(declare-fun e!2489282 () Int)

(assert (=> d!1188598 (= lt!1421877 e!2489282)))

(declare-fun c!694018 () Bool)

(assert (=> d!1188598 (= c!694018 ((_ is Nil!42944) lt!1421039))))

(assert (=> d!1188598 (= (size!32110 lt!1421039) lt!1421877)))

(declare-fun b!4013791 () Bool)

(assert (=> b!4013791 (= e!2489282 0)))

(declare-fun b!4013792 () Bool)

(assert (=> b!4013792 (= e!2489282 (+ 1 (size!32110 (t!332999 lt!1421039))))))

(assert (= (and d!1188598 c!694018) b!4013791))

(assert (= (and d!1188598 (not c!694018)) b!4013792))

(declare-fun m!4600693 () Bool)

(assert (=> b!4013792 m!4600693))

(assert (=> b!4011905 d!1188598))

(declare-fun b!4013793 () Bool)

(declare-fun e!2489284 () List!43068)

(assert (=> b!4013793 (= e!2489284 lt!1421134)))

(declare-fun b!4013796 () Bool)

(declare-fun e!2489283 () Bool)

(declare-fun lt!1421878 () List!43068)

(assert (=> b!4013796 (= e!2489283 (or (not (= lt!1421134 Nil!42944)) (= lt!1421878 lt!1421037)))))

(declare-fun b!4013794 () Bool)

(assert (=> b!4013794 (= e!2489284 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) lt!1421134)))))

(declare-fun b!4013795 () Bool)

(declare-fun res!1631822 () Bool)

(assert (=> b!4013795 (=> (not res!1631822) (not e!2489283))))

(assert (=> b!4013795 (= res!1631822 (= (size!32110 lt!1421878) (+ (size!32110 lt!1421037) (size!32110 lt!1421134))))))

(declare-fun d!1188600 () Bool)

(assert (=> d!1188600 e!2489283))

(declare-fun res!1631821 () Bool)

(assert (=> d!1188600 (=> (not res!1631821) (not e!2489283))))

(assert (=> d!1188600 (= res!1631821 (= (content!6512 lt!1421878) ((_ map or) (content!6512 lt!1421037) (content!6512 lt!1421134))))))

(assert (=> d!1188600 (= lt!1421878 e!2489284)))

(declare-fun c!694019 () Bool)

(assert (=> d!1188600 (= c!694019 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188600 (= (++!11236 lt!1421037 lt!1421134) lt!1421878)))

(assert (= (and d!1188600 c!694019) b!4013793))

(assert (= (and d!1188600 (not c!694019)) b!4013794))

(assert (= (and d!1188600 res!1631821) b!4013795))

(assert (= (and b!4013795 res!1631822) b!4013796))

(declare-fun m!4600695 () Bool)

(assert (=> b!4013794 m!4600695))

(declare-fun m!4600697 () Bool)

(assert (=> b!4013795 m!4600697))

(assert (=> b!4013795 m!4597421))

(declare-fun m!4600699 () Bool)

(assert (=> b!4013795 m!4600699))

(declare-fun m!4600701 () Bool)

(assert (=> d!1188600 m!4600701))

(assert (=> d!1188600 m!4597819))

(declare-fun m!4600703 () Bool)

(assert (=> d!1188600 m!4600703))

(assert (=> d!1187416 d!1188600))

(assert (=> d!1187416 d!1187838))

(assert (=> d!1187416 d!1187604))

(assert (=> b!4011948 d!1188464))

(declare-fun b!4013797 () Bool)

(declare-fun e!2489286 () List!43068)

(assert (=> b!4013797 (= e!2489286 lt!1421023)))

(declare-fun b!4013800 () Bool)

(declare-fun lt!1421879 () List!43068)

(declare-fun e!2489285 () Bool)

(assert (=> b!4013800 (= e!2489285 (or (not (= lt!1421023 Nil!42944)) (= lt!1421879 (t!332999 lt!1421037))))))

(declare-fun b!4013798 () Bool)

(assert (=> b!4013798 (= e!2489286 (Cons!42944 (h!48364 (t!332999 lt!1421037)) (++!11236 (t!332999 (t!332999 lt!1421037)) lt!1421023)))))

(declare-fun b!4013799 () Bool)

(declare-fun res!1631824 () Bool)

(assert (=> b!4013799 (=> (not res!1631824) (not e!2489285))))

(assert (=> b!4013799 (= res!1631824 (= (size!32110 lt!1421879) (+ (size!32110 (t!332999 lt!1421037)) (size!32110 lt!1421023))))))

(declare-fun d!1188602 () Bool)

(assert (=> d!1188602 e!2489285))

(declare-fun res!1631823 () Bool)

(assert (=> d!1188602 (=> (not res!1631823) (not e!2489285))))

(assert (=> d!1188602 (= res!1631823 (= (content!6512 lt!1421879) ((_ map or) (content!6512 (t!332999 lt!1421037)) (content!6512 lt!1421023))))))

(assert (=> d!1188602 (= lt!1421879 e!2489286)))

(declare-fun c!694020 () Bool)

(assert (=> d!1188602 (= c!694020 ((_ is Nil!42944) (t!332999 lt!1421037)))))

(assert (=> d!1188602 (= (++!11236 (t!332999 lt!1421037) lt!1421023) lt!1421879)))

(assert (= (and d!1188602 c!694020) b!4013797))

(assert (= (and d!1188602 (not c!694020)) b!4013798))

(assert (= (and d!1188602 res!1631823) b!4013799))

(assert (= (and b!4013799 res!1631824) b!4013800))

(declare-fun m!4600705 () Bool)

(assert (=> b!4013798 m!4600705))

(declare-fun m!4600707 () Bool)

(assert (=> b!4013799 m!4600707))

(assert (=> b!4013799 m!4598421))

(assert (=> b!4013799 m!4598455))

(declare-fun m!4600709 () Bool)

(assert (=> d!1188602 m!4600709))

(assert (=> d!1188602 m!4598785))

(assert (=> d!1188602 m!4598459))

(assert (=> b!4012348 d!1188602))

(declare-fun d!1188604 () Bool)

(declare-fun lt!1421880 () Int)

(assert (=> d!1188604 (>= lt!1421880 0)))

(declare-fun e!2489287 () Int)

(assert (=> d!1188604 (= lt!1421880 e!2489287)))

(declare-fun c!694021 () Bool)

(assert (=> d!1188604 (= c!694021 ((_ is Nil!42944) lt!1421223))))

(assert (=> d!1188604 (= (size!32110 lt!1421223) lt!1421880)))

(declare-fun b!4013801 () Bool)

(assert (=> b!4013801 (= e!2489287 0)))

(declare-fun b!4013802 () Bool)

(assert (=> b!4013802 (= e!2489287 (+ 1 (size!32110 (t!332999 lt!1421223))))))

(assert (= (and d!1188604 c!694021) b!4013801))

(assert (= (and d!1188604 (not c!694021)) b!4013802))

(declare-fun m!4600711 () Bool)

(assert (=> b!4013802 m!4600711))

(assert (=> b!4012120 d!1188604))

(assert (=> b!4012120 d!1187518))

(declare-fun d!1188606 () Bool)

(declare-fun lt!1421881 () Int)

(assert (=> d!1188606 (>= lt!1421881 0)))

(declare-fun e!2489288 () Int)

(assert (=> d!1188606 (= lt!1421881 e!2489288)))

(declare-fun c!694022 () Bool)

(assert (=> d!1188606 (= c!694022 ((_ is Nil!42944) (_2!24179 (v!39615 lt!1421042))))))

(assert (=> d!1188606 (= (size!32110 (_2!24179 (v!39615 lt!1421042))) lt!1421881)))

(declare-fun b!4013803 () Bool)

(assert (=> b!4013803 (= e!2489288 0)))

(declare-fun b!4013804 () Bool)

(assert (=> b!4013804 (= e!2489288 (+ 1 (size!32110 (t!332999 (_2!24179 (v!39615 lt!1421042))))))))

(assert (= (and d!1188606 c!694022) b!4013803))

(assert (= (and d!1188606 (not c!694022)) b!4013804))

(declare-fun m!4600713 () Bool)

(assert (=> b!4013804 m!4600713))

(assert (=> b!4012120 d!1188606))

(declare-fun d!1188608 () Bool)

(declare-fun e!2489291 () Bool)

(assert (=> d!1188608 e!2489291))

(declare-fun res!1631827 () Bool)

(assert (=> d!1188608 (=> res!1631827 e!2489291)))

(declare-fun lt!1421882 () Bool)

(assert (=> d!1188608 (= res!1631827 (not lt!1421882))))

(declare-fun e!2489289 () Bool)

(assert (=> d!1188608 (= lt!1421882 e!2489289)))

(declare-fun res!1631825 () Bool)

(assert (=> d!1188608 (=> res!1631825 e!2489289)))

(assert (=> d!1188608 (= res!1631825 ((_ is Nil!42944) (tail!6251 lt!1421058)))))

(assert (=> d!1188608 (= (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 (++!11236 lt!1421058 newSuffixResult!27))) lt!1421882)))

(declare-fun b!4013806 () Bool)

(declare-fun res!1631828 () Bool)

(declare-fun e!2489290 () Bool)

(assert (=> b!4013806 (=> (not res!1631828) (not e!2489290))))

(assert (=> b!4013806 (= res!1631828 (= (head!8519 (tail!6251 lt!1421058)) (head!8519 (tail!6251 (++!11236 lt!1421058 newSuffixResult!27)))))))

(declare-fun b!4013807 () Bool)

(assert (=> b!4013807 (= e!2489290 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421058)) (tail!6251 (tail!6251 (++!11236 lt!1421058 newSuffixResult!27)))))))

(declare-fun b!4013805 () Bool)

(assert (=> b!4013805 (= e!2489289 e!2489290)))

(declare-fun res!1631826 () Bool)

(assert (=> b!4013805 (=> (not res!1631826) (not e!2489290))))

(assert (=> b!4013805 (= res!1631826 (not ((_ is Nil!42944) (tail!6251 (++!11236 lt!1421058 newSuffixResult!27)))))))

(declare-fun b!4013808 () Bool)

(assert (=> b!4013808 (= e!2489291 (>= (size!32110 (tail!6251 (++!11236 lt!1421058 newSuffixResult!27))) (size!32110 (tail!6251 lt!1421058))))))

(assert (= (and d!1188608 (not res!1631825)) b!4013805))

(assert (= (and b!4013805 res!1631826) b!4013806))

(assert (= (and b!4013806 res!1631828) b!4013807))

(assert (= (and d!1188608 (not res!1631827)) b!4013808))

(assert (=> b!4013806 m!4597889))

(assert (=> b!4013806 m!4599105))

(assert (=> b!4013806 m!4598199))

(declare-fun m!4600715 () Bool)

(assert (=> b!4013806 m!4600715))

(assert (=> b!4013807 m!4597889))

(assert (=> b!4013807 m!4599109))

(assert (=> b!4013807 m!4598199))

(declare-fun m!4600717 () Bool)

(assert (=> b!4013807 m!4600717))

(assert (=> b!4013807 m!4599109))

(assert (=> b!4013807 m!4600717))

(declare-fun m!4600719 () Bool)

(assert (=> b!4013807 m!4600719))

(assert (=> b!4013808 m!4598199))

(declare-fun m!4600721 () Bool)

(assert (=> b!4013808 m!4600721))

(assert (=> b!4013808 m!4597889))

(assert (=> b!4013808 m!4599117))

(assert (=> b!4012142 d!1188608))

(assert (=> b!4012142 d!1187912))

(declare-fun d!1188610 () Bool)

(assert (=> d!1188610 (= (tail!6251 (++!11236 lt!1421058 newSuffixResult!27)) (t!332999 (++!11236 lt!1421058 newSuffixResult!27)))))

(assert (=> b!4012142 d!1188610))

(declare-fun d!1188612 () Bool)

(declare-fun lt!1421883 () Int)

(assert (=> d!1188612 (>= lt!1421883 0)))

(declare-fun e!2489292 () Int)

(assert (=> d!1188612 (= lt!1421883 e!2489292)))

(declare-fun c!694023 () Bool)

(assert (=> d!1188612 (= c!694023 ((_ is Nil!42944) lt!1421315))))

(assert (=> d!1188612 (= (size!32110 lt!1421315) lt!1421883)))

(declare-fun b!4013809 () Bool)

(assert (=> b!4013809 (= e!2489292 0)))

(declare-fun b!4013810 () Bool)

(assert (=> b!4013810 (= e!2489292 (+ 1 (size!32110 (t!332999 lt!1421315))))))

(assert (= (and d!1188612 c!694023) b!4013809))

(assert (= (and d!1188612 (not c!694023)) b!4013810))

(declare-fun m!4600723 () Bool)

(assert (=> b!4013810 m!4600723))

(assert (=> b!4012437 d!1188612))

(declare-fun d!1188614 () Bool)

(declare-fun lt!1421884 () Int)

(assert (=> d!1188614 (>= lt!1421884 0)))

(declare-fun e!2489293 () Int)

(assert (=> d!1188614 (= lt!1421884 e!2489293)))

(declare-fun c!694024 () Bool)

(assert (=> d!1188614 (= c!694024 ((_ is Nil!42944) lt!1421030))))

(assert (=> d!1188614 (= (size!32110 lt!1421030) lt!1421884)))

(declare-fun b!4013811 () Bool)

(assert (=> b!4013811 (= e!2489293 0)))

(declare-fun b!4013812 () Bool)

(assert (=> b!4013812 (= e!2489293 (+ 1 (size!32110 (t!332999 lt!1421030))))))

(assert (= (and d!1188614 c!694024) b!4013811))

(assert (= (and d!1188614 (not c!694024)) b!4013812))

(assert (=> b!4013812 m!4600531))

(assert (=> b!4012437 d!1188614))

(assert (=> b!4012437 d!1187502))

(declare-fun d!1188616 () Bool)

(declare-fun lt!1421885 () Int)

(assert (=> d!1188616 (>= lt!1421885 0)))

(declare-fun e!2489294 () Int)

(assert (=> d!1188616 (= lt!1421885 e!2489294)))

(declare-fun c!694025 () Bool)

(assert (=> d!1188616 (= c!694025 ((_ is Nil!42944) lt!1421313))))

(assert (=> d!1188616 (= (size!32110 lt!1421313) lt!1421885)))

(declare-fun b!4013813 () Bool)

(assert (=> b!4013813 (= e!2489294 0)))

(declare-fun b!4013814 () Bool)

(assert (=> b!4013814 (= e!2489294 (+ 1 (size!32110 (t!332999 lt!1421313))))))

(assert (= (and d!1188616 c!694025) b!4013813))

(assert (= (and d!1188616 (not c!694025)) b!4013814))

(declare-fun m!4600725 () Bool)

(assert (=> b!4013814 m!4600725))

(assert (=> b!4012429 d!1188616))

(assert (=> b!4012429 d!1187606))

(assert (=> b!4012429 d!1187502))

(assert (=> b!4012422 d!1188182))

(declare-fun d!1188618 () Bool)

(assert (=> d!1188618 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308))))))))

(declare-fun b_lambda!117145 () Bool)

(assert (=> (not b_lambda!117145) (not d!1188618)))

(declare-fun t!333219 () Bool)

(declare-fun tb!241397 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333219) tb!241397))

(declare-fun result!292552 () Bool)

(assert (=> tb!241397 (= result!292552 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun m!4600727 () Bool)

(assert (=> tb!241397 m!4600727))

(assert (=> d!1188618 t!333219))

(declare-fun b_and!308399 () Bool)

(assert (= b_and!308393 (and (=> t!333219 result!292552) b_and!308399)))

(declare-fun t!333221 () Bool)

(declare-fun tb!241399 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333221) tb!241399))

(declare-fun result!292554 () Bool)

(assert (= result!292554 result!292552))

(assert (=> d!1188618 t!333221))

(declare-fun b_and!308401 () Bool)

(assert (= b_and!308395 (and (=> t!333221 result!292554) b_and!308401)))

(declare-fun tb!241401 () Bool)

(declare-fun t!333223 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333223) tb!241401))

(declare-fun result!292556 () Bool)

(assert (= result!292556 result!292552))

(assert (=> d!1188618 t!333223))

(declare-fun b_and!308403 () Bool)

(assert (= b_and!308397 (and (=> t!333223 result!292556) b_and!308403)))

(assert (=> d!1188618 m!4598563))

(declare-fun m!4600729 () Bool)

(assert (=> d!1188618 m!4600729))

(assert (=> b!4012422 d!1188618))

(declare-fun d!1188620 () Bool)

(assert (=> d!1188620 (= (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308)))) (fromListB!2316 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421308)))))))

(declare-fun bs!589530 () Bool)

(assert (= bs!589530 d!1188620))

(declare-fun m!4600731 () Bool)

(assert (=> bs!589530 m!4600731))

(assert (=> b!4012422 d!1188620))

(declare-fun d!1188622 () Bool)

(declare-fun lt!1421886 () Int)

(assert (=> d!1188622 (>= lt!1421886 0)))

(declare-fun e!2489296 () Int)

(assert (=> d!1188622 (= lt!1421886 e!2489296)))

(declare-fun c!694026 () Bool)

(assert (=> d!1188622 (= c!694026 ((_ is Nil!42944) lt!1421285))))

(assert (=> d!1188622 (= (size!32110 lt!1421285) lt!1421886)))

(declare-fun b!4013815 () Bool)

(assert (=> b!4013815 (= e!2489296 0)))

(declare-fun b!4013816 () Bool)

(assert (=> b!4013816 (= e!2489296 (+ 1 (size!32110 (t!332999 lt!1421285))))))

(assert (= (and d!1188622 c!694026) b!4013815))

(assert (= (and d!1188622 (not c!694026)) b!4013816))

(declare-fun m!4600733 () Bool)

(assert (=> b!4013816 m!4600733))

(assert (=> b!4012345 d!1188622))

(assert (=> b!4012345 d!1187604))

(assert (=> b!4012345 d!1188356))

(declare-fun d!1188624 () Bool)

(declare-fun c!694027 () Bool)

(assert (=> d!1188624 (= c!694027 ((_ is Nil!42944) lt!1421227))))

(declare-fun e!2489297 () (InoxSet C!23664))

(assert (=> d!1188624 (= (content!6512 lt!1421227) e!2489297)))

(declare-fun b!4013817 () Bool)

(assert (=> b!4013817 (= e!2489297 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013818 () Bool)

(assert (=> b!4013818 (= e!2489297 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421227) true) (content!6512 (t!332999 lt!1421227))))))

(assert (= (and d!1188624 c!694027) b!4013817))

(assert (= (and d!1188624 (not c!694027)) b!4013818))

(declare-fun m!4600735 () Bool)

(assert (=> b!4013818 m!4600735))

(declare-fun m!4600737 () Bool)

(assert (=> b!4013818 m!4600737))

(assert (=> d!1187530 d!1188624))

(assert (=> d!1187530 d!1188562))

(assert (=> d!1187530 d!1188586))

(declare-fun b!4013819 () Bool)

(declare-fun e!2489299 () List!43068)

(assert (=> b!4013819 (= e!2489299 (_2!24179 (get!14111 lt!1421293)))))

(declare-fun b!4013822 () Bool)

(declare-fun e!2489298 () Bool)

(declare-fun lt!1421887 () List!43068)

(assert (=> b!4013822 (= e!2489298 (or (not (= (_2!24179 (get!14111 lt!1421293)) Nil!42944)) (= lt!1421887 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))))))))

(declare-fun b!4013820 () Bool)

(assert (=> b!4013820 (= e!2489299 (Cons!42944 (h!48364 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (++!11236 (t!332999 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (_2!24179 (get!14111 lt!1421293)))))))

(declare-fun b!4013821 () Bool)

(declare-fun res!1631830 () Bool)

(assert (=> b!4013821 (=> (not res!1631830) (not e!2489298))))

(assert (=> b!4013821 (= res!1631830 (= (size!32110 lt!1421887) (+ (size!32110 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (size!32110 (_2!24179 (get!14111 lt!1421293))))))))

(declare-fun d!1188626 () Bool)

(assert (=> d!1188626 e!2489298))

(declare-fun res!1631829 () Bool)

(assert (=> d!1188626 (=> (not res!1631829) (not e!2489298))))

(assert (=> d!1188626 (= res!1631829 (= (content!6512 lt!1421887) ((_ map or) (content!6512 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))) (content!6512 (_2!24179 (get!14111 lt!1421293))))))))

(assert (=> d!1188626 (= lt!1421887 e!2489299)))

(declare-fun c!694028 () Bool)

(assert (=> d!1188626 (= c!694028 ((_ is Nil!42944) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293))))))))

(assert (=> d!1188626 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421293)))) (_2!24179 (get!14111 lt!1421293))) lt!1421887)))

(assert (= (and d!1188626 c!694028) b!4013819))

(assert (= (and d!1188626 (not c!694028)) b!4013820))

(assert (= (and d!1188626 res!1631829) b!4013821))

(assert (= (and b!4013821 res!1631830) b!4013822))

(declare-fun m!4600739 () Bool)

(assert (=> b!4013820 m!4600739))

(declare-fun m!4600741 () Bool)

(assert (=> b!4013821 m!4600741))

(assert (=> b!4013821 m!4598475))

(declare-fun m!4600743 () Bool)

(assert (=> b!4013821 m!4600743))

(assert (=> b!4013821 m!4598497))

(declare-fun m!4600745 () Bool)

(assert (=> d!1188626 m!4600745))

(assert (=> d!1188626 m!4598475))

(declare-fun m!4600747 () Bool)

(assert (=> d!1188626 m!4600747))

(declare-fun m!4600749 () Bool)

(assert (=> d!1188626 m!4600749))

(assert (=> b!4012365 d!1188626))

(assert (=> b!4012365 d!1188216))

(assert (=> b!4012365 d!1188218))

(assert (=> b!4012365 d!1187836))

(declare-fun b!4013823 () Bool)

(declare-fun res!1631834 () Bool)

(declare-fun e!2489300 () Bool)

(assert (=> b!4013823 (=> (not res!1631834) (not e!2489300))))

(declare-fun lt!1421888 () Option!9248)

(assert (=> b!4013823 (= res!1631834 (= (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421888)))) (originalCharacters!7434 (_1!24179 (get!14111 lt!1421888)))))))

(declare-fun b!4013824 () Bool)

(declare-fun res!1631836 () Bool)

(assert (=> b!4013824 (=> (not res!1631836) (not e!2489300))))

(assert (=> b!4013824 (= res!1631836 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421888)))) (_2!24179 (get!14111 lt!1421888))) lt!1421016))))

(declare-fun b!4013825 () Bool)

(declare-fun res!1631833 () Bool)

(assert (=> b!4013825 (=> (not res!1631833) (not e!2489300))))

(assert (=> b!4013825 (= res!1631833 (< (size!32110 (_2!24179 (get!14111 lt!1421888))) (size!32110 lt!1421016)))))

(declare-fun b!4013826 () Bool)

(declare-fun res!1631837 () Bool)

(assert (=> b!4013826 (=> (not res!1631837) (not e!2489300))))

(assert (=> b!4013826 (= res!1631837 (matchR!5700 (regex!6834 (rule!9878 (_1!24179 (get!14111 lt!1421888)))) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421888))))))))

(declare-fun d!1188628 () Bool)

(declare-fun e!2489302 () Bool)

(assert (=> d!1188628 e!2489302))

(declare-fun res!1631832 () Bool)

(assert (=> d!1188628 (=> res!1631832 e!2489302)))

(assert (=> d!1188628 (= res!1631832 (isEmpty!25653 lt!1421888))))

(declare-fun e!2489301 () Option!9248)

(assert (=> d!1188628 (= lt!1421888 e!2489301)))

(declare-fun c!694029 () Bool)

(assert (=> d!1188628 (= c!694029 (and ((_ is Cons!42946) (t!333001 rules!2999)) ((_ is Nil!42946) (t!333001 (t!333001 rules!2999)))))))

(declare-fun lt!1421889 () Unit!61970)

(declare-fun lt!1421892 () Unit!61970)

(assert (=> d!1188628 (= lt!1421889 lt!1421892)))

(assert (=> d!1188628 (isPrefix!3921 lt!1421016 lt!1421016)))

(assert (=> d!1188628 (= lt!1421892 (lemmaIsPrefixRefl!2497 lt!1421016 lt!1421016))))

(assert (=> d!1188628 (rulesValidInductive!2491 thiss!21717 (t!333001 rules!2999))))

(assert (=> d!1188628 (= (maxPrefix!3721 thiss!21717 (t!333001 rules!2999) lt!1421016) lt!1421888)))

(declare-fun b!4013827 () Bool)

(declare-fun res!1631831 () Bool)

(assert (=> b!4013827 (=> (not res!1631831) (not e!2489300))))

(assert (=> b!4013827 (= res!1631831 (= (value!215403 (_1!24179 (get!14111 lt!1421888))) (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421888)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421888)))))))))

(declare-fun b!4013828 () Bool)

(declare-fun call!286525 () Option!9248)

(assert (=> b!4013828 (= e!2489301 call!286525)))

(declare-fun b!4013829 () Bool)

(assert (=> b!4013829 (= e!2489300 (contains!8536 (t!333001 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421888)))))))

(declare-fun b!4013830 () Bool)

(assert (=> b!4013830 (= e!2489302 e!2489300)))

(declare-fun res!1631835 () Bool)

(assert (=> b!4013830 (=> (not res!1631835) (not e!2489300))))

(assert (=> b!4013830 (= res!1631835 (isDefined!7070 lt!1421888))))

(declare-fun bm!286520 () Bool)

(assert (=> bm!286520 (= call!286525 (maxPrefixOneRule!2741 thiss!21717 (h!48366 (t!333001 rules!2999)) lt!1421016))))

(declare-fun b!4013831 () Bool)

(declare-fun lt!1421890 () Option!9248)

(declare-fun lt!1421891 () Option!9248)

(assert (=> b!4013831 (= e!2489301 (ite (and ((_ is None!9247) lt!1421890) ((_ is None!9247) lt!1421891)) None!9247 (ite ((_ is None!9247) lt!1421891) lt!1421890 (ite ((_ is None!9247) lt!1421890) lt!1421891 (ite (>= (size!32109 (_1!24179 (v!39615 lt!1421890))) (size!32109 (_1!24179 (v!39615 lt!1421891)))) lt!1421890 lt!1421891)))))))

(assert (=> b!4013831 (= lt!1421890 call!286525)))

(assert (=> b!4013831 (= lt!1421891 (maxPrefix!3721 thiss!21717 (t!333001 (t!333001 rules!2999)) lt!1421016))))

(assert (= (and d!1188628 c!694029) b!4013828))

(assert (= (and d!1188628 (not c!694029)) b!4013831))

(assert (= (or b!4013828 b!4013831) bm!286520))

(assert (= (and d!1188628 (not res!1631832)) b!4013830))

(assert (= (and b!4013830 res!1631835) b!4013823))

(assert (= (and b!4013823 res!1631834) b!4013825))

(assert (= (and b!4013825 res!1631833) b!4013824))

(assert (= (and b!4013824 res!1631836) b!4013827))

(assert (= (and b!4013827 res!1631831) b!4013826))

(assert (= (and b!4013826 res!1631837) b!4013829))

(declare-fun m!4600751 () Bool)

(assert (=> b!4013826 m!4600751))

(declare-fun m!4600753 () Bool)

(assert (=> b!4013826 m!4600753))

(assert (=> b!4013826 m!4600753))

(declare-fun m!4600755 () Bool)

(assert (=> b!4013826 m!4600755))

(assert (=> b!4013826 m!4600755))

(declare-fun m!4600757 () Bool)

(assert (=> b!4013826 m!4600757))

(assert (=> b!4013827 m!4600751))

(declare-fun m!4600759 () Bool)

(assert (=> b!4013827 m!4600759))

(assert (=> b!4013827 m!4600759))

(declare-fun m!4600761 () Bool)

(assert (=> b!4013827 m!4600761))

(declare-fun m!4600763 () Bool)

(assert (=> d!1188628 m!4600763))

(assert (=> d!1188628 m!4597417))

(assert (=> d!1188628 m!4597419))

(assert (=> d!1188628 m!4598921))

(declare-fun m!4600765 () Bool)

(assert (=> bm!286520 m!4600765))

(assert (=> b!4013824 m!4600751))

(assert (=> b!4013824 m!4600753))

(assert (=> b!4013824 m!4600753))

(assert (=> b!4013824 m!4600755))

(assert (=> b!4013824 m!4600755))

(declare-fun m!4600767 () Bool)

(assert (=> b!4013824 m!4600767))

(assert (=> b!4013829 m!4600751))

(declare-fun m!4600769 () Bool)

(assert (=> b!4013829 m!4600769))

(declare-fun m!4600771 () Bool)

(assert (=> b!4013830 m!4600771))

(assert (=> b!4013825 m!4600751))

(declare-fun m!4600773 () Bool)

(assert (=> b!4013825 m!4600773))

(assert (=> b!4013825 m!4597825))

(declare-fun m!4600775 () Bool)

(assert (=> b!4013831 m!4600775))

(assert (=> b!4013823 m!4600751))

(assert (=> b!4013823 m!4600753))

(assert (=> b!4013823 m!4600753))

(assert (=> b!4013823 m!4600755))

(assert (=> b!4012426 d!1188628))

(assert (=> b!4011952 d!1187772))

(assert (=> b!4011952 d!1188464))

(assert (=> d!1187510 d!1187506))

(declare-fun d!1188630 () Bool)

(assert (=> d!1188630 (ruleValid!2766 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))

(assert (=> d!1188630 true))

(declare-fun _$65!1450 () Unit!61970)

(assert (=> d!1188630 (= (choose!24243 thiss!21717 (rule!9878 (_1!24179 (v!39615 lt!1421042))) rules!2999) _$65!1450)))

(declare-fun bs!589531 () Bool)

(assert (= bs!589531 d!1188630))

(assert (=> bs!589531 m!4597437))

(assert (=> d!1187510 d!1188630))

(declare-fun d!1188632 () Bool)

(declare-fun lt!1421893 () Bool)

(assert (=> d!1188632 (= lt!1421893 (select (content!6514 rules!2999) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun e!2489303 () Bool)

(assert (=> d!1188632 (= lt!1421893 e!2489303)))

(declare-fun res!1631838 () Bool)

(assert (=> d!1188632 (=> (not res!1631838) (not e!2489303))))

(assert (=> d!1188632 (= res!1631838 ((_ is Cons!42946) rules!2999))))

(assert (=> d!1188632 (= (contains!8536 rules!2999 (rule!9878 (_1!24179 (v!39615 lt!1421042)))) lt!1421893)))

(declare-fun b!4013832 () Bool)

(declare-fun e!2489304 () Bool)

(assert (=> b!4013832 (= e!2489303 e!2489304)))

(declare-fun res!1631839 () Bool)

(assert (=> b!4013832 (=> res!1631839 e!2489304)))

(assert (=> b!4013832 (= res!1631839 (= (h!48366 rules!2999) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(declare-fun b!4013833 () Bool)

(assert (=> b!4013833 (= e!2489304 (contains!8536 (t!333001 rules!2999) (rule!9878 (_1!24179 (v!39615 lt!1421042)))))))

(assert (= (and d!1188632 res!1631838) b!4013832))

(assert (= (and b!4013832 (not res!1631839)) b!4013833))

(assert (=> d!1188632 m!4600215))

(declare-fun m!4600777 () Bool)

(assert (=> d!1188632 m!4600777))

(declare-fun m!4600779 () Bool)

(assert (=> b!4013833 m!4600779))

(assert (=> d!1187510 d!1188632))

(declare-fun d!1188634 () Bool)

(declare-fun charsToInt!0 (List!43069) (_ BitVec 32))

(assert (=> d!1188634 (= (inv!16 (value!215403 token!484)) (= (charsToInt!0 (text!49895 (value!215403 token!484))) (value!215394 (value!215403 token!484))))))

(declare-fun bs!589532 () Bool)

(assert (= bs!589532 d!1188634))

(declare-fun m!4600781 () Bool)

(assert (=> bs!589532 m!4600781))

(assert (=> b!4012321 d!1188634))

(declare-fun d!1188636 () Bool)

(declare-fun e!2489307 () Bool)

(assert (=> d!1188636 e!2489307))

(declare-fun res!1631842 () Bool)

(assert (=> d!1188636 (=> res!1631842 e!2489307)))

(declare-fun lt!1421894 () Bool)

(assert (=> d!1188636 (= res!1631842 (not lt!1421894))))

(declare-fun e!2489305 () Bool)

(assert (=> d!1188636 (= lt!1421894 e!2489305)))

(declare-fun res!1631840 () Bool)

(assert (=> d!1188636 (=> res!1631840 e!2489305)))

(assert (=> d!1188636 (= res!1631840 ((_ is Nil!42944) (tail!6251 lt!1421058)))))

(assert (=> d!1188636 (= (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421057)) lt!1421894)))

(declare-fun b!4013835 () Bool)

(declare-fun res!1631843 () Bool)

(declare-fun e!2489306 () Bool)

(assert (=> b!4013835 (=> (not res!1631843) (not e!2489306))))

(assert (=> b!4013835 (= res!1631843 (= (head!8519 (tail!6251 lt!1421058)) (head!8519 (tail!6251 lt!1421057))))))

(declare-fun b!4013836 () Bool)

(assert (=> b!4013836 (= e!2489306 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421058)) (tail!6251 (tail!6251 lt!1421057))))))

(declare-fun b!4013834 () Bool)

(assert (=> b!4013834 (= e!2489305 e!2489306)))

(declare-fun res!1631841 () Bool)

(assert (=> b!4013834 (=> (not res!1631841) (not e!2489306))))

(assert (=> b!4013834 (= res!1631841 (not ((_ is Nil!42944) (tail!6251 lt!1421057))))))

(declare-fun b!4013837 () Bool)

(assert (=> b!4013837 (= e!2489307 (>= (size!32110 (tail!6251 lt!1421057)) (size!32110 (tail!6251 lt!1421058))))))

(assert (= (and d!1188636 (not res!1631840)) b!4013834))

(assert (= (and b!4013834 res!1631841) b!4013835))

(assert (= (and b!4013835 res!1631843) b!4013836))

(assert (= (and d!1188636 (not res!1631842)) b!4013837))

(assert (=> b!4013835 m!4597889))

(assert (=> b!4013835 m!4599105))

(assert (=> b!4013835 m!4598373))

(declare-fun m!4600783 () Bool)

(assert (=> b!4013835 m!4600783))

(assert (=> b!4013836 m!4597889))

(assert (=> b!4013836 m!4599109))

(assert (=> b!4013836 m!4598373))

(declare-fun m!4600785 () Bool)

(assert (=> b!4013836 m!4600785))

(assert (=> b!4013836 m!4599109))

(assert (=> b!4013836 m!4600785))

(declare-fun m!4600787 () Bool)

(assert (=> b!4013836 m!4600787))

(assert (=> b!4013837 m!4598373))

(declare-fun m!4600789 () Bool)

(assert (=> b!4013837 m!4600789))

(assert (=> b!4013837 m!4597889))

(assert (=> b!4013837 m!4599117))

(assert (=> b!4012292 d!1188636))

(assert (=> b!4012292 d!1187912))

(declare-fun d!1188638 () Bool)

(assert (=> d!1188638 (= (tail!6251 lt!1421057) (t!332999 lt!1421057))))

(assert (=> b!4012292 d!1188638))

(declare-fun d!1188640 () Bool)

(declare-fun c!694030 () Bool)

(assert (=> d!1188640 (= c!694030 ((_ is Nil!42944) lt!1421316))))

(declare-fun e!2489308 () (InoxSet C!23664))

(assert (=> d!1188640 (= (content!6512 lt!1421316) e!2489308)))

(declare-fun b!4013838 () Bool)

(assert (=> b!4013838 (= e!2489308 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013839 () Bool)

(assert (=> b!4013839 (= e!2489308 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421316) true) (content!6512 (t!332999 lt!1421316))))))

(assert (= (and d!1188640 c!694030) b!4013838))

(assert (= (and d!1188640 (not c!694030)) b!4013839))

(declare-fun m!4600791 () Bool)

(assert (=> b!4013839 m!4600791))

(declare-fun m!4600793 () Bool)

(assert (=> b!4013839 m!4600793))

(assert (=> d!1187660 d!1188640))

(assert (=> d!1187660 d!1188348))

(assert (=> d!1187660 d!1188572))

(declare-fun d!1188642 () Bool)

(declare-fun e!2489311 () Bool)

(assert (=> d!1188642 e!2489311))

(declare-fun res!1631846 () Bool)

(assert (=> d!1188642 (=> res!1631846 e!2489311)))

(declare-fun lt!1421895 () Bool)

(assert (=> d!1188642 (= res!1631846 (not lt!1421895))))

(declare-fun e!2489309 () Bool)

(assert (=> d!1188642 (= lt!1421895 e!2489309)))

(declare-fun res!1631844 () Bool)

(assert (=> d!1188642 (=> res!1631844 e!2489309)))

(assert (=> d!1188642 (= res!1631844 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188642 (= (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421061)) lt!1421895)))

(declare-fun b!4013841 () Bool)

(declare-fun res!1631847 () Bool)

(declare-fun e!2489310 () Bool)

(assert (=> b!4013841 (=> (not res!1631847) (not e!2489310))))

(assert (=> b!4013841 (= res!1631847 (= (head!8519 lt!1421037) (head!8519 (++!11236 lt!1421037 lt!1421061))))))

(declare-fun b!4013842 () Bool)

(assert (=> b!4013842 (= e!2489310 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 (++!11236 lt!1421037 lt!1421061))))))

(declare-fun b!4013840 () Bool)

(assert (=> b!4013840 (= e!2489309 e!2489310)))

(declare-fun res!1631845 () Bool)

(assert (=> b!4013840 (=> (not res!1631845) (not e!2489310))))

(assert (=> b!4013840 (= res!1631845 (not ((_ is Nil!42944) (++!11236 lt!1421037 lt!1421061))))))

(declare-fun b!4013843 () Bool)

(assert (=> b!4013843 (= e!2489311 (>= (size!32110 (++!11236 lt!1421037 lt!1421061)) (size!32110 lt!1421037)))))

(assert (= (and d!1188642 (not res!1631844)) b!4013840))

(assert (= (and b!4013840 res!1631845) b!4013841))

(assert (= (and b!4013841 res!1631847) b!4013842))

(assert (= (and d!1188642 (not res!1631846)) b!4013843))

(assert (=> b!4013841 m!4597837))

(assert (=> b!4013841 m!4597489))

(declare-fun m!4600795 () Bool)

(assert (=> b!4013841 m!4600795))

(assert (=> b!4013842 m!4597839))

(assert (=> b!4013842 m!4597489))

(declare-fun m!4600797 () Bool)

(assert (=> b!4013842 m!4600797))

(assert (=> b!4013842 m!4597839))

(assert (=> b!4013842 m!4600797))

(declare-fun m!4600799 () Bool)

(assert (=> b!4013842 m!4600799))

(assert (=> b!4013843 m!4597489))

(declare-fun m!4600801 () Bool)

(assert (=> b!4013843 m!4600801))

(assert (=> b!4013843 m!4597421))

(assert (=> d!1187636 d!1188642))

(assert (=> d!1187636 d!1187656))

(declare-fun d!1188644 () Bool)

(assert (=> d!1188644 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 lt!1421061))))

(assert (=> d!1188644 true))

(declare-fun _$46!1672 () Unit!61970)

(assert (=> d!1188644 (= (choose!24242 lt!1421037 lt!1421061) _$46!1672)))

(declare-fun bs!589533 () Bool)

(assert (= bs!589533 d!1188644))

(assert (=> bs!589533 m!4597489))

(assert (=> bs!589533 m!4597489))

(assert (=> bs!589533 m!4598521))

(assert (=> d!1187636 d!1188644))

(declare-fun d!1188646 () Bool)

(declare-fun lt!1421896 () Int)

(assert (=> d!1188646 (>= lt!1421896 0)))

(declare-fun e!2489312 () Int)

(assert (=> d!1188646 (= lt!1421896 e!2489312)))

(declare-fun c!694031 () Bool)

(assert (=> d!1188646 (= c!694031 ((_ is Nil!42944) lt!1421035))))

(assert (=> d!1188646 (= (size!32110 lt!1421035) lt!1421896)))

(declare-fun b!4013844 () Bool)

(assert (=> b!4013844 (= e!2489312 0)))

(declare-fun b!4013845 () Bool)

(assert (=> b!4013845 (= e!2489312 (+ 1 (size!32110 (t!332999 lt!1421035))))))

(assert (= (and d!1188646 c!694031) b!4013844))

(assert (= (and d!1188646 (not c!694031)) b!4013845))

(declare-fun m!4600803 () Bool)

(assert (=> b!4013845 m!4600803))

(assert (=> b!4012001 d!1188646))

(assert (=> b!4012001 d!1187518))

(assert (=> bm!286390 d!1188588))

(assert (=> b!4012141 d!1187764))

(declare-fun d!1188648 () Bool)

(assert (=> d!1188648 (= (head!8519 (++!11236 lt!1421058 newSuffixResult!27)) (h!48364 (++!11236 lt!1421058 newSuffixResult!27)))))

(assert (=> b!4012141 d!1188648))

(declare-fun d!1188650 () Bool)

(declare-fun lt!1421897 () Int)

(assert (=> d!1188650 (>= lt!1421897 0)))

(declare-fun e!2489313 () Int)

(assert (=> d!1188650 (= lt!1421897 e!2489313)))

(declare-fun c!694032 () Bool)

(assert (=> d!1188650 (= c!694032 ((_ is Nil!42944) lt!1421043))))

(assert (=> d!1188650 (= (size!32110 lt!1421043) lt!1421897)))

(declare-fun b!4013846 () Bool)

(assert (=> b!4013846 (= e!2489313 0)))

(declare-fun b!4013847 () Bool)

(assert (=> b!4013847 (= e!2489313 (+ 1 (size!32110 (t!332999 lt!1421043))))))

(assert (= (and d!1188650 c!694032) b!4013846))

(assert (= (and d!1188650 (not c!694032)) b!4013847))

(declare-fun m!4600805 () Bool)

(assert (=> b!4013847 m!4600805))

(assert (=> b!4012371 d!1188650))

(assert (=> b!4012371 d!1187604))

(assert (=> b!4011956 d!1187772))

(declare-fun d!1188652 () Bool)

(assert (=> d!1188652 (= (head!8519 lt!1421060) (h!48364 lt!1421060))))

(assert (=> b!4011956 d!1188652))

(declare-fun b!4013848 () Bool)

(declare-fun e!2489315 () List!43068)

(assert (=> b!4013848 (= e!2489315 lt!1421018)))

(declare-fun e!2489314 () Bool)

(declare-fun b!4013851 () Bool)

(declare-fun lt!1421898 () List!43068)

(assert (=> b!4013851 (= e!2489314 (or (not (= lt!1421018 Nil!42944)) (= lt!1421898 (t!332999 lt!1421025))))))

(declare-fun b!4013849 () Bool)

(assert (=> b!4013849 (= e!2489315 (Cons!42944 (h!48364 (t!332999 lt!1421025)) (++!11236 (t!332999 (t!332999 lt!1421025)) lt!1421018)))))

(declare-fun b!4013850 () Bool)

(declare-fun res!1631849 () Bool)

(assert (=> b!4013850 (=> (not res!1631849) (not e!2489314))))

(assert (=> b!4013850 (= res!1631849 (= (size!32110 lt!1421898) (+ (size!32110 (t!332999 lt!1421025)) (size!32110 lt!1421018))))))

(declare-fun d!1188654 () Bool)

(assert (=> d!1188654 e!2489314))

(declare-fun res!1631848 () Bool)

(assert (=> d!1188654 (=> (not res!1631848) (not e!2489314))))

(assert (=> d!1188654 (= res!1631848 (= (content!6512 lt!1421898) ((_ map or) (content!6512 (t!332999 lt!1421025)) (content!6512 lt!1421018))))))

(assert (=> d!1188654 (= lt!1421898 e!2489315)))

(declare-fun c!694033 () Bool)

(assert (=> d!1188654 (= c!694033 ((_ is Nil!42944) (t!332999 lt!1421025)))))

(assert (=> d!1188654 (= (++!11236 (t!332999 lt!1421025) lt!1421018) lt!1421898)))

(assert (= (and d!1188654 c!694033) b!4013848))

(assert (= (and d!1188654 (not c!694033)) b!4013849))

(assert (= (and d!1188654 res!1631848) b!4013850))

(assert (= (and b!4013850 res!1631849) b!4013851))

(declare-fun m!4600807 () Bool)

(assert (=> b!4013849 m!4600807))

(declare-fun m!4600809 () Bool)

(assert (=> b!4013850 m!4600809))

(assert (=> b!4013850 m!4599735))

(assert (=> b!4013850 m!4597783))

(declare-fun m!4600811 () Bool)

(assert (=> d!1188654 m!4600811))

(assert (=> d!1188654 m!4600451))

(assert (=> d!1188654 m!4597789))

(assert (=> b!4011920 d!1188654))

(declare-fun d!1188656 () Bool)

(declare-fun lt!1421899 () Int)

(assert (=> d!1188656 (>= lt!1421899 0)))

(declare-fun e!2489316 () Int)

(assert (=> d!1188656 (= lt!1421899 e!2489316)))

(declare-fun c!694034 () Bool)

(assert (=> d!1188656 (= c!694034 ((_ is Nil!42944) (t!332999 (originalCharacters!7434 token!484))))))

(assert (=> d!1188656 (= (size!32110 (t!332999 (originalCharacters!7434 token!484))) lt!1421899)))

(declare-fun b!4013852 () Bool)

(assert (=> b!4013852 (= e!2489316 0)))

(declare-fun b!4013853 () Bool)

(assert (=> b!4013853 (= e!2489316 (+ 1 (size!32110 (t!332999 (t!332999 (originalCharacters!7434 token!484))))))))

(assert (= (and d!1188656 c!694034) b!4013852))

(assert (= (and d!1188656 (not c!694034)) b!4013853))

(declare-fun m!4600813 () Bool)

(assert (=> b!4013853 m!4600813))

(assert (=> b!4012358 d!1188656))

(declare-fun b!4013854 () Bool)

(declare-fun e!2489318 () List!43068)

(assert (=> b!4013854 (= e!2489318 (_2!24179 (get!14111 lt!1421308)))))

(declare-fun b!4013857 () Bool)

(declare-fun e!2489317 () Bool)

(declare-fun lt!1421900 () List!43068)

(assert (=> b!4013857 (= e!2489317 (or (not (= (_2!24179 (get!14111 lt!1421308)) Nil!42944)) (= lt!1421900 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))))))))

(declare-fun b!4013855 () Bool)

(assert (=> b!4013855 (= e!2489318 (Cons!42944 (h!48364 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (++!11236 (t!332999 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (_2!24179 (get!14111 lt!1421308)))))))

(declare-fun b!4013856 () Bool)

(declare-fun res!1631851 () Bool)

(assert (=> b!4013856 (=> (not res!1631851) (not e!2489317))))

(assert (=> b!4013856 (= res!1631851 (= (size!32110 lt!1421900) (+ (size!32110 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (size!32110 (_2!24179 (get!14111 lt!1421308))))))))

(declare-fun d!1188658 () Bool)

(assert (=> d!1188658 e!2489317))

(declare-fun res!1631850 () Bool)

(assert (=> d!1188658 (=> (not res!1631850) (not e!2489317))))

(assert (=> d!1188658 (= res!1631850 (= (content!6512 lt!1421900) ((_ map or) (content!6512 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))) (content!6512 (_2!24179 (get!14111 lt!1421308))))))))

(assert (=> d!1188658 (= lt!1421900 e!2489318)))

(declare-fun c!694035 () Bool)

(assert (=> d!1188658 (= c!694035 ((_ is Nil!42944) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308))))))))

(assert (=> d!1188658 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421308)))) (_2!24179 (get!14111 lt!1421308))) lt!1421900)))

(assert (= (and d!1188658 c!694035) b!4013854))

(assert (= (and d!1188658 (not c!694035)) b!4013855))

(assert (= (and d!1188658 res!1631850) b!4013856))

(assert (= (and b!4013856 res!1631851) b!4013857))

(declare-fun m!4600815 () Bool)

(assert (=> b!4013855 m!4600815))

(declare-fun m!4600817 () Bool)

(assert (=> b!4013856 m!4600817))

(assert (=> b!4013856 m!4598559))

(declare-fun m!4600819 () Bool)

(assert (=> b!4013856 m!4600819))

(assert (=> b!4013856 m!4598577))

(declare-fun m!4600821 () Bool)

(assert (=> d!1188658 m!4600821))

(assert (=> d!1188658 m!4598559))

(declare-fun m!4600823 () Bool)

(assert (=> d!1188658 m!4600823))

(declare-fun m!4600825 () Bool)

(assert (=> d!1188658 m!4600825))

(assert (=> b!4012419 d!1188658))

(assert (=> b!4012419 d!1188178))

(assert (=> b!4012419 d!1188180))

(assert (=> b!4012419 d!1188182))

(declare-fun d!1188660 () Bool)

(declare-fun lt!1421901 () Int)

(assert (=> d!1188660 (>= lt!1421901 0)))

(declare-fun e!2489319 () Int)

(assert (=> d!1188660 (= lt!1421901 e!2489319)))

(declare-fun c!694036 () Bool)

(assert (=> d!1188660 (= c!694036 ((_ is Nil!42944) lt!1421316))))

(assert (=> d!1188660 (= (size!32110 lt!1421316) lt!1421901)))

(declare-fun b!4013858 () Bool)

(assert (=> b!4013858 (= e!2489319 0)))

(declare-fun b!4013859 () Bool)

(assert (=> b!4013859 (= e!2489319 (+ 1 (size!32110 (t!332999 lt!1421316))))))

(assert (= (and d!1188660 c!694036) b!4013858))

(assert (= (and d!1188660 (not c!694036)) b!4013859))

(declare-fun m!4600827 () Bool)

(assert (=> b!4013859 m!4600827))

(assert (=> b!4012441 d!1188660))

(assert (=> b!4012441 d!1188396))

(assert (=> b!4012441 d!1187502))

(declare-fun b!4013860 () Bool)

(declare-fun e!2489320 () Bool)

(assert (=> b!4013860 (= e!2489320 (nullable!4117 (regex!6834 (rule!9878 token!484))))))

(declare-fun b!4013861 () Bool)

(declare-fun e!2489323 () Bool)

(declare-fun lt!1421902 () Bool)

(assert (=> b!4013861 (= e!2489323 (not lt!1421902))))

(declare-fun b!4013862 () Bool)

(declare-fun e!2489324 () Bool)

(declare-fun call!286526 () Bool)

(assert (=> b!4013862 (= e!2489324 (= lt!1421902 call!286526))))

(declare-fun b!4013863 () Bool)

(declare-fun e!2489325 () Bool)

(declare-fun e!2489326 () Bool)

(assert (=> b!4013863 (= e!2489325 e!2489326)))

(declare-fun res!1631856 () Bool)

(assert (=> b!4013863 (=> (not res!1631856) (not e!2489326))))

(assert (=> b!4013863 (= res!1631856 (not lt!1421902))))

(declare-fun b!4013864 () Bool)

(declare-fun res!1631853 () Bool)

(declare-fun e!2489321 () Bool)

(assert (=> b!4013864 (=> (not res!1631853) (not e!2489321))))

(assert (=> b!4013864 (= res!1631853 (isEmpty!25654 (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016))))))))

(declare-fun b!4013865 () Bool)

(declare-fun res!1631855 () Bool)

(assert (=> b!4013865 (=> res!1631855 e!2489325)))

(assert (=> b!4013865 (= res!1631855 e!2489321)))

(declare-fun res!1631854 () Bool)

(assert (=> b!4013865 (=> (not res!1631854) (not e!2489321))))

(assert (=> b!4013865 (= res!1631854 lt!1421902)))

(declare-fun b!4013866 () Bool)

(assert (=> b!4013866 (= e!2489321 (= (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))) (c!693563 (regex!6834 (rule!9878 token!484)))))))

(declare-fun b!4013867 () Bool)

(declare-fun res!1631858 () Bool)

(assert (=> b!4013867 (=> res!1631858 e!2489325)))

(assert (=> b!4013867 (= res!1631858 (not ((_ is ElementMatch!11739) (regex!6834 (rule!9878 token!484)))))))

(assert (=> b!4013867 (= e!2489323 e!2489325)))

(declare-fun b!4013868 () Bool)

(declare-fun res!1631852 () Bool)

(declare-fun e!2489322 () Bool)

(assert (=> b!4013868 (=> res!1631852 e!2489322)))

(assert (=> b!4013868 (= res!1631852 (not (isEmpty!25654 (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))))

(declare-fun b!4013869 () Bool)

(assert (=> b!4013869 (= e!2489324 e!2489323)))

(declare-fun c!694039 () Bool)

(assert (=> b!4013869 (= c!694039 ((_ is EmptyLang!11739) (regex!6834 (rule!9878 token!484))))))

(declare-fun d!1188662 () Bool)

(assert (=> d!1188662 e!2489324))

(declare-fun c!694037 () Bool)

(assert (=> d!1188662 (= c!694037 ((_ is EmptyExpr!11739) (regex!6834 (rule!9878 token!484))))))

(assert (=> d!1188662 (= lt!1421902 e!2489320)))

(declare-fun c!694038 () Bool)

(assert (=> d!1188662 (= c!694038 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(assert (=> d!1188662 (validRegex!5317 (regex!6834 (rule!9878 token!484)))))

(assert (=> d!1188662 (= (matchR!5700 (regex!6834 (rule!9878 token!484)) (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))) lt!1421902)))

(declare-fun b!4013870 () Bool)

(assert (=> b!4013870 (= e!2489320 (matchR!5700 (derivativeStep!3527 (regex!6834 (rule!9878 token!484)) (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016))))) (tail!6251 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016))))))))

(declare-fun bm!286521 () Bool)

(assert (=> bm!286521 (= call!286526 (isEmpty!25654 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))))))

(declare-fun b!4013871 () Bool)

(declare-fun res!1631859 () Bool)

(assert (=> b!4013871 (=> (not res!1631859) (not e!2489321))))

(assert (=> b!4013871 (= res!1631859 (not call!286526))))

(declare-fun b!4013872 () Bool)

(assert (=> b!4013872 (= e!2489322 (not (= (head!8519 (_1!24181 (findLongestMatchInner!1359 (regex!6834 (rule!9878 token!484)) Nil!42944 (size!32110 Nil!42944) lt!1421016 lt!1421016 (size!32110 lt!1421016)))) (c!693563 (regex!6834 (rule!9878 token!484))))))))

(declare-fun b!4013873 () Bool)

(assert (=> b!4013873 (= e!2489326 e!2489322)))

(declare-fun res!1631857 () Bool)

(assert (=> b!4013873 (=> res!1631857 e!2489322)))

(assert (=> b!4013873 (= res!1631857 call!286526)))

(assert (= (and d!1188662 c!694038) b!4013860))

(assert (= (and d!1188662 (not c!694038)) b!4013870))

(assert (= (and d!1188662 c!694037) b!4013862))

(assert (= (and d!1188662 (not c!694037)) b!4013869))

(assert (= (and b!4013869 c!694039) b!4013861))

(assert (= (and b!4013869 (not c!694039)) b!4013867))

(assert (= (and b!4013867 (not res!1631858)) b!4013865))

(assert (= (and b!4013865 res!1631854) b!4013871))

(assert (= (and b!4013871 res!1631859) b!4013864))

(assert (= (and b!4013864 res!1631853) b!4013866))

(assert (= (and b!4013865 (not res!1631855)) b!4013863))

(assert (= (and b!4013863 res!1631856) b!4013873))

(assert (= (and b!4013873 (not res!1631857)) b!4013868))

(assert (= (and b!4013868 (not res!1631852)) b!4013872))

(assert (= (or b!4013862 b!4013871 b!4013873) bm!286521))

(declare-fun m!4600829 () Bool)

(assert (=> b!4013872 m!4600829))

(assert (=> bm!286521 m!4598505))

(declare-fun m!4600831 () Bool)

(assert (=> b!4013868 m!4600831))

(assert (=> b!4013868 m!4600831))

(declare-fun m!4600833 () Bool)

(assert (=> b!4013868 m!4600833))

(assert (=> b!4013866 m!4600829))

(assert (=> b!4013860 m!4597881))

(assert (=> b!4013864 m!4600831))

(assert (=> b!4013864 m!4600831))

(assert (=> b!4013864 m!4600833))

(assert (=> b!4013870 m!4600829))

(assert (=> b!4013870 m!4600829))

(declare-fun m!4600835 () Bool)

(assert (=> b!4013870 m!4600835))

(assert (=> b!4013870 m!4600831))

(assert (=> b!4013870 m!4600835))

(assert (=> b!4013870 m!4600831))

(declare-fun m!4600837 () Bool)

(assert (=> b!4013870 m!4600837))

(assert (=> d!1188662 m!4598505))

(assert (=> d!1188662 m!4597879))

(assert (=> b!4012362 d!1188662))

(assert (=> b!4012362 d!1188472))

(assert (=> b!4012362 d!1188170))

(assert (=> b!4012362 d!1187838))

(declare-fun b!4013874 () Bool)

(declare-fun e!2489328 () List!43068)

(assert (=> b!4013874 (= e!2489328 lt!1421280)))

(declare-fun b!4013877 () Bool)

(declare-fun lt!1421903 () List!43068)

(declare-fun e!2489327 () Bool)

(assert (=> b!4013877 (= e!2489327 (or (not (= lt!1421280 Nil!42944)) (= lt!1421903 newSuffix!27)))))

(declare-fun b!4013875 () Bool)

(assert (=> b!4013875 (= e!2489328 (Cons!42944 (h!48364 newSuffix!27) (++!11236 (t!332999 newSuffix!27) lt!1421280)))))

(declare-fun b!4013876 () Bool)

(declare-fun res!1631861 () Bool)

(assert (=> b!4013876 (=> (not res!1631861) (not e!2489327))))

(assert (=> b!4013876 (= res!1631861 (= (size!32110 lt!1421903) (+ (size!32110 newSuffix!27) (size!32110 lt!1421280))))))

(declare-fun d!1188664 () Bool)

(assert (=> d!1188664 e!2489327))

(declare-fun res!1631860 () Bool)

(assert (=> d!1188664 (=> (not res!1631860) (not e!2489327))))

(assert (=> d!1188664 (= res!1631860 (= (content!6512 lt!1421903) ((_ map or) (content!6512 newSuffix!27) (content!6512 lt!1421280))))))

(assert (=> d!1188664 (= lt!1421903 e!2489328)))

(declare-fun c!694040 () Bool)

(assert (=> d!1188664 (= c!694040 ((_ is Nil!42944) newSuffix!27))))

(assert (=> d!1188664 (= (++!11236 newSuffix!27 lt!1421280) lt!1421903)))

(assert (= (and d!1188664 c!694040) b!4013874))

(assert (= (and d!1188664 (not c!694040)) b!4013875))

(assert (= (and d!1188664 res!1631860) b!4013876))

(assert (= (and b!4013876 res!1631861) b!4013877))

(declare-fun m!4600839 () Bool)

(assert (=> b!4013875 m!4600839))

(declare-fun m!4600841 () Bool)

(assert (=> b!4013876 m!4600841))

(assert (=> b!4013876 m!4597547))

(declare-fun m!4600843 () Bool)

(assert (=> b!4013876 m!4600843))

(declare-fun m!4600845 () Bool)

(assert (=> d!1188664 m!4600845))

(assert (=> d!1188664 m!4598401))

(declare-fun m!4600847 () Bool)

(assert (=> d!1188664 m!4600847))

(assert (=> d!1187594 d!1188664))

(assert (=> d!1187594 d!1187502))

(assert (=> d!1187594 d!1187504))

(declare-fun d!1188666 () Bool)

(assert (=> d!1188666 (= (isEmpty!25653 lt!1421199) (not ((_ is Some!9247) lt!1421199)))))

(assert (=> d!1187448 d!1188666))

(declare-fun d!1188668 () Bool)

(declare-fun e!2489331 () Bool)

(assert (=> d!1188668 e!2489331))

(declare-fun res!1631864 () Bool)

(assert (=> d!1188668 (=> res!1631864 e!2489331)))

(declare-fun lt!1421904 () Bool)

(assert (=> d!1188668 (= res!1631864 (not lt!1421904))))

(declare-fun e!2489329 () Bool)

(assert (=> d!1188668 (= lt!1421904 e!2489329)))

(declare-fun res!1631862 () Bool)

(assert (=> d!1188668 (=> res!1631862 e!2489329)))

(assert (=> d!1188668 (= res!1631862 ((_ is Nil!42944) lt!1421025))))

(assert (=> d!1188668 (= (isPrefix!3921 lt!1421025 lt!1421025) lt!1421904)))

(declare-fun b!4013879 () Bool)

(declare-fun res!1631865 () Bool)

(declare-fun e!2489330 () Bool)

(assert (=> b!4013879 (=> (not res!1631865) (not e!2489330))))

(assert (=> b!4013879 (= res!1631865 (= (head!8519 lt!1421025) (head!8519 lt!1421025)))))

(declare-fun b!4013880 () Bool)

(assert (=> b!4013880 (= e!2489330 (isPrefix!3921 (tail!6251 lt!1421025) (tail!6251 lt!1421025)))))

(declare-fun b!4013878 () Bool)

(assert (=> b!4013878 (= e!2489329 e!2489330)))

(declare-fun res!1631863 () Bool)

(assert (=> b!4013878 (=> (not res!1631863) (not e!2489330))))

(assert (=> b!4013878 (= res!1631863 (not ((_ is Nil!42944) lt!1421025)))))

(declare-fun b!4013881 () Bool)

(assert (=> b!4013881 (= e!2489331 (>= (size!32110 lt!1421025) (size!32110 lt!1421025)))))

(assert (= (and d!1188668 (not res!1631862)) b!4013878))

(assert (= (and b!4013878 res!1631863) b!4013879))

(assert (= (and b!4013879 res!1631865) b!4013880))

(assert (= (and d!1188668 (not res!1631864)) b!4013881))

(assert (=> b!4013879 m!4598541))

(assert (=> b!4013879 m!4598541))

(assert (=> b!4013880 m!4598543))

(assert (=> b!4013880 m!4598543))

(assert (=> b!4013880 m!4598543))

(assert (=> b!4013880 m!4598543))

(declare-fun m!4600849 () Bool)

(assert (=> b!4013880 m!4600849))

(assert (=> b!4013881 m!4597781))

(assert (=> b!4013881 m!4597781))

(assert (=> d!1187448 d!1188668))

(declare-fun d!1188670 () Bool)

(assert (=> d!1188670 (isPrefix!3921 lt!1421025 lt!1421025)))

(declare-fun lt!1421905 () Unit!61970)

(assert (=> d!1188670 (= lt!1421905 (choose!24241 lt!1421025 lt!1421025))))

(assert (=> d!1188670 (= (lemmaIsPrefixRefl!2497 lt!1421025 lt!1421025) lt!1421905)))

(declare-fun bs!589534 () Bool)

(assert (= bs!589534 d!1188670))

(assert (=> bs!589534 m!4598063))

(declare-fun m!4600851 () Bool)

(assert (=> bs!589534 m!4600851))

(assert (=> d!1187448 d!1188670))

(assert (=> d!1187448 d!1187826))

(assert (=> b!4012404 d!1188440))

(assert (=> b!4012404 d!1187746))

(assert (=> d!1187662 d!1187618))

(assert (=> d!1187662 d!1187660))

(declare-fun b!4013882 () Bool)

(declare-fun e!2489333 () List!43068)

(assert (=> b!4013882 (= e!2489333 suffix!1299)))

(declare-fun b!4013885 () Bool)

(declare-fun e!2489332 () Bool)

(declare-fun lt!1421906 () List!43068)

(assert (=> b!4013885 (= e!2489332 (or (not (= suffix!1299 Nil!42944)) (= lt!1421906 (++!11236 lt!1421037 lt!1421023))))))

(declare-fun b!4013883 () Bool)

(assert (=> b!4013883 (= e!2489333 (Cons!42944 (h!48364 (++!11236 lt!1421037 lt!1421023)) (++!11236 (t!332999 (++!11236 lt!1421037 lt!1421023)) suffix!1299)))))

(declare-fun b!4013884 () Bool)

(declare-fun res!1631867 () Bool)

(assert (=> b!4013884 (=> (not res!1631867) (not e!2489332))))

(assert (=> b!4013884 (= res!1631867 (= (size!32110 lt!1421906) (+ (size!32110 (++!11236 lt!1421037 lt!1421023)) (size!32110 suffix!1299))))))

(declare-fun d!1188672 () Bool)

(assert (=> d!1188672 e!2489332))

(declare-fun res!1631866 () Bool)

(assert (=> d!1188672 (=> (not res!1631866) (not e!2489332))))

(assert (=> d!1188672 (= res!1631866 (= (content!6512 lt!1421906) ((_ map or) (content!6512 (++!11236 lt!1421037 lt!1421023)) (content!6512 suffix!1299))))))

(assert (=> d!1188672 (= lt!1421906 e!2489333)))

(declare-fun c!694041 () Bool)

(assert (=> d!1188672 (= c!694041 ((_ is Nil!42944) (++!11236 lt!1421037 lt!1421023)))))

(assert (=> d!1188672 (= (++!11236 (++!11236 lt!1421037 lt!1421023) suffix!1299) lt!1421906)))

(assert (= (and d!1188672 c!694041) b!4013882))

(assert (= (and d!1188672 (not c!694041)) b!4013883))

(assert (= (and d!1188672 res!1631866) b!4013884))

(assert (= (and b!4013884 res!1631867) b!4013885))

(declare-fun m!4600853 () Bool)

(assert (=> b!4013883 m!4600853))

(declare-fun m!4600855 () Bool)

(assert (=> b!4013884 m!4600855))

(assert (=> b!4013884 m!4597529))

(declare-fun m!4600857 () Bool)

(assert (=> b!4013884 m!4600857))

(assert (=> b!4013884 m!4597545))

(declare-fun m!4600859 () Bool)

(assert (=> d!1188672 m!4600859))

(assert (=> d!1188672 m!4597529))

(declare-fun m!4600861 () Bool)

(assert (=> d!1188672 m!4600861))

(assert (=> d!1188672 m!4598587))

(assert (=> d!1187662 d!1188672))

(declare-fun d!1188674 () Bool)

(assert (=> d!1188674 (= (++!11236 (++!11236 lt!1421037 lt!1421023) suffix!1299) (++!11236 lt!1421037 (++!11236 lt!1421023 suffix!1299)))))

(assert (=> d!1188674 true))

(declare-fun _$52!2265 () Unit!61970)

(assert (=> d!1188674 (= (choose!24240 lt!1421037 lt!1421023 suffix!1299) _$52!2265)))

(declare-fun bs!589535 () Bool)

(assert (= bs!589535 d!1188674))

(assert (=> bs!589535 m!4597529))

(assert (=> bs!589535 m!4597529))

(assert (=> bs!589535 m!4598617))

(assert (=> bs!589535 m!4597493))

(assert (=> bs!589535 m!4597493))

(assert (=> bs!589535 m!4598615))

(assert (=> d!1187662 d!1188674))

(declare-fun b!4013886 () Bool)

(declare-fun e!2489335 () List!43068)

(assert (=> b!4013886 (= e!2489335 (++!11236 lt!1421023 suffix!1299))))

(declare-fun lt!1421907 () List!43068)

(declare-fun e!2489334 () Bool)

(declare-fun b!4013889 () Bool)

(assert (=> b!4013889 (= e!2489334 (or (not (= (++!11236 lt!1421023 suffix!1299) Nil!42944)) (= lt!1421907 lt!1421037)))))

(declare-fun b!4013887 () Bool)

(assert (=> b!4013887 (= e!2489335 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) (++!11236 lt!1421023 suffix!1299))))))

(declare-fun b!4013888 () Bool)

(declare-fun res!1631869 () Bool)

(assert (=> b!4013888 (=> (not res!1631869) (not e!2489334))))

(assert (=> b!4013888 (= res!1631869 (= (size!32110 lt!1421907) (+ (size!32110 lt!1421037) (size!32110 (++!11236 lt!1421023 suffix!1299)))))))

(declare-fun d!1188676 () Bool)

(assert (=> d!1188676 e!2489334))

(declare-fun res!1631868 () Bool)

(assert (=> d!1188676 (=> (not res!1631868) (not e!2489334))))

(assert (=> d!1188676 (= res!1631868 (= (content!6512 lt!1421907) ((_ map or) (content!6512 lt!1421037) (content!6512 (++!11236 lt!1421023 suffix!1299)))))))

(assert (=> d!1188676 (= lt!1421907 e!2489335)))

(declare-fun c!694042 () Bool)

(assert (=> d!1188676 (= c!694042 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188676 (= (++!11236 lt!1421037 (++!11236 lt!1421023 suffix!1299)) lt!1421907)))

(assert (= (and d!1188676 c!694042) b!4013886))

(assert (= (and d!1188676 (not c!694042)) b!4013887))

(assert (= (and d!1188676 res!1631868) b!4013888))

(assert (= (and b!4013888 res!1631869) b!4013889))

(assert (=> b!4013887 m!4597493))

(declare-fun m!4600863 () Bool)

(assert (=> b!4013887 m!4600863))

(declare-fun m!4600865 () Bool)

(assert (=> b!4013888 m!4600865))

(assert (=> b!4013888 m!4597421))

(assert (=> b!4013888 m!4597493))

(declare-fun m!4600867 () Bool)

(assert (=> b!4013888 m!4600867))

(declare-fun m!4600869 () Bool)

(assert (=> d!1188676 m!4600869))

(assert (=> d!1188676 m!4597819))

(assert (=> d!1188676 m!4597493))

(declare-fun m!4600871 () Bool)

(assert (=> d!1188676 m!4600871))

(assert (=> d!1187662 d!1188676))

(declare-fun d!1188678 () Bool)

(declare-fun e!2489338 () Bool)

(assert (=> d!1188678 e!2489338))

(declare-fun res!1631872 () Bool)

(assert (=> d!1188678 (=> res!1631872 e!2489338)))

(declare-fun lt!1421908 () Bool)

(assert (=> d!1188678 (= res!1631872 (not lt!1421908))))

(declare-fun e!2489336 () Bool)

(assert (=> d!1188678 (= lt!1421908 e!2489336)))

(declare-fun res!1631870 () Bool)

(assert (=> d!1188678 (=> res!1631870 e!2489336)))

(assert (=> d!1188678 (= res!1631870 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1188678 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421016)) lt!1421908)))

(declare-fun b!4013891 () Bool)

(declare-fun res!1631873 () Bool)

(declare-fun e!2489337 () Bool)

(assert (=> b!4013891 (=> (not res!1631873) (not e!2489337))))

(assert (=> b!4013891 (= res!1631873 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 lt!1421016))))))

(declare-fun b!4013892 () Bool)

(assert (=> b!4013892 (= e!2489337 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 lt!1421016))))))

(declare-fun b!4013890 () Bool)

(assert (=> b!4013890 (= e!2489336 e!2489337)))

(declare-fun res!1631871 () Bool)

(assert (=> b!4013890 (=> (not res!1631871) (not e!2489337))))

(assert (=> b!4013890 (= res!1631871 (not ((_ is Nil!42944) (tail!6251 lt!1421016))))))

(declare-fun b!4013893 () Bool)

(assert (=> b!4013893 (= e!2489338 (>= (size!32110 (tail!6251 lt!1421016)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1188678 (not res!1631870)) b!4013890))

(assert (= (and b!4013890 res!1631871) b!4013891))

(assert (= (and b!4013891 res!1631873) b!4013892))

(assert (= (and d!1188678 (not res!1631872)) b!4013893))

(assert (=> b!4013891 m!4597839))

(assert (=> b!4013891 m!4598791))

(assert (=> b!4013891 m!4597827))

(assert (=> b!4013891 m!4598937))

(assert (=> b!4013892 m!4597839))

(assert (=> b!4013892 m!4598795))

(assert (=> b!4013892 m!4597827))

(assert (=> b!4013892 m!4598939))

(assert (=> b!4013892 m!4598795))

(assert (=> b!4013892 m!4598939))

(declare-fun m!4600873 () Bool)

(assert (=> b!4013892 m!4600873))

(assert (=> b!4013893 m!4597827))

(assert (=> b!4013893 m!4598943))

(assert (=> b!4013893 m!4597839))

(assert (=> b!4013893 m!4598803))

(assert (=> b!4011953 d!1188678))

(assert (=> b!4011953 d!1187746))

(assert (=> b!4011953 d!1187842))

(declare-fun d!1188680 () Bool)

(declare-fun lt!1421909 () Int)

(assert (=> d!1188680 (>= lt!1421909 0)))

(declare-fun e!2489339 () Int)

(assert (=> d!1188680 (= lt!1421909 e!2489339)))

(declare-fun c!694043 () Bool)

(assert (=> d!1188680 (= c!694043 ((_ is Nil!42944) lt!1421057))))

(assert (=> d!1188680 (= (size!32110 lt!1421057) lt!1421909)))

(declare-fun b!4013894 () Bool)

(assert (=> b!4013894 (= e!2489339 0)))

(declare-fun b!4013895 () Bool)

(assert (=> b!4013895 (= e!2489339 (+ 1 (size!32110 (t!332999 lt!1421057))))))

(assert (= (and d!1188680 c!694043) b!4013894))

(assert (= (and d!1188680 (not c!694043)) b!4013895))

(declare-fun m!4600875 () Bool)

(assert (=> b!4013895 m!4600875))

(assert (=> b!4012293 d!1188680))

(assert (=> b!4012293 d!1187518))

(declare-fun d!1188682 () Bool)

(declare-fun lt!1421910 () Bool)

(assert (=> d!1188682 (= lt!1421910 (select (content!6514 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))

(declare-fun e!2489340 () Bool)

(assert (=> d!1188682 (= lt!1421910 e!2489340)))

(declare-fun res!1631874 () Bool)

(assert (=> d!1188682 (=> (not res!1631874) (not e!2489340))))

(assert (=> d!1188682 (= res!1631874 ((_ is Cons!42946) rules!2999))))

(assert (=> d!1188682 (= (contains!8536 rules!2999 (rule!9878 (_1!24179 (get!14111 lt!1421199)))) lt!1421910)))

(declare-fun b!4013896 () Bool)

(declare-fun e!2489341 () Bool)

(assert (=> b!4013896 (= e!2489340 e!2489341)))

(declare-fun res!1631875 () Bool)

(assert (=> b!4013896 (=> res!1631875 e!2489341)))

(assert (=> b!4013896 (= res!1631875 (= (h!48366 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))

(declare-fun b!4013897 () Bool)

(assert (=> b!4013897 (= e!2489341 (contains!8536 (t!333001 rules!2999) (rule!9878 (_1!24179 (get!14111 lt!1421199)))))))

(assert (= (and d!1188682 res!1631874) b!4013896))

(assert (= (and b!4013896 (not res!1631875)) b!4013897))

(assert (=> d!1188682 m!4600215))

(declare-fun m!4600877 () Bool)

(assert (=> d!1188682 m!4600877))

(declare-fun m!4600879 () Bool)

(assert (=> b!4013897 m!4600879))

(assert (=> b!4012069 d!1188682))

(assert (=> b!4012069 d!1187728))

(declare-fun b!4013898 () Bool)

(declare-fun e!2489343 () List!43068)

(assert (=> b!4013898 (= e!2489343 lt!1421287)))

(declare-fun lt!1421911 () List!43068)

(declare-fun b!4013901 () Bool)

(declare-fun e!2489342 () Bool)

(assert (=> b!4013901 (= e!2489342 (or (not (= lt!1421287 Nil!42944)) (= lt!1421911 lt!1421037)))))

(declare-fun b!4013899 () Bool)

(assert (=> b!4013899 (= e!2489343 (Cons!42944 (h!48364 lt!1421037) (++!11236 (t!332999 lt!1421037) lt!1421287)))))

(declare-fun b!4013900 () Bool)

(declare-fun res!1631877 () Bool)

(assert (=> b!4013900 (=> (not res!1631877) (not e!2489342))))

(assert (=> b!4013900 (= res!1631877 (= (size!32110 lt!1421911) (+ (size!32110 lt!1421037) (size!32110 lt!1421287))))))

(declare-fun d!1188684 () Bool)

(assert (=> d!1188684 e!2489342))

(declare-fun res!1631876 () Bool)

(assert (=> d!1188684 (=> (not res!1631876) (not e!2489342))))

(assert (=> d!1188684 (= res!1631876 (= (content!6512 lt!1421911) ((_ map or) (content!6512 lt!1421037) (content!6512 lt!1421287))))))

(assert (=> d!1188684 (= lt!1421911 e!2489343)))

(declare-fun c!694044 () Bool)

(assert (=> d!1188684 (= c!694044 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188684 (= (++!11236 lt!1421037 lt!1421287) lt!1421911)))

(assert (= (and d!1188684 c!694044) b!4013898))

(assert (= (and d!1188684 (not c!694044)) b!4013899))

(assert (= (and d!1188684 res!1631876) b!4013900))

(assert (= (and b!4013900 res!1631877) b!4013901))

(declare-fun m!4600881 () Bool)

(assert (=> b!4013899 m!4600881))

(declare-fun m!4600883 () Bool)

(assert (=> b!4013900 m!4600883))

(assert (=> b!4013900 m!4597421))

(declare-fun m!4600885 () Bool)

(assert (=> b!4013900 m!4600885))

(declare-fun m!4600887 () Bool)

(assert (=> d!1188684 m!4600887))

(assert (=> d!1188684 m!4597819))

(declare-fun m!4600889 () Bool)

(assert (=> d!1188684 m!4600889))

(assert (=> d!1187620 d!1188684))

(assert (=> d!1187620 d!1187606))

(assert (=> d!1187620 d!1187604))

(assert (=> d!1187400 d!1187592))

(declare-fun b!4013902 () Bool)

(declare-fun e!2489345 () List!43068)

(assert (=> b!4013902 (= e!2489345 lt!1421018)))

(declare-fun lt!1421912 () List!43068)

(declare-fun b!4013905 () Bool)

(declare-fun e!2489344 () Bool)

(assert (=> b!4013905 (= e!2489344 (or (not (= lt!1421018 Nil!42944)) (= lt!1421912 (++!11236 prefix!494 newSuffix!27))))))

(declare-fun b!4013903 () Bool)

(assert (=> b!4013903 (= e!2489345 (Cons!42944 (h!48364 (++!11236 prefix!494 newSuffix!27)) (++!11236 (t!332999 (++!11236 prefix!494 newSuffix!27)) lt!1421018)))))

(declare-fun b!4013904 () Bool)

(declare-fun res!1631879 () Bool)

(assert (=> b!4013904 (=> (not res!1631879) (not e!2489344))))

(assert (=> b!4013904 (= res!1631879 (= (size!32110 lt!1421912) (+ (size!32110 (++!11236 prefix!494 newSuffix!27)) (size!32110 lt!1421018))))))

(declare-fun d!1188686 () Bool)

(assert (=> d!1188686 e!2489344))

(declare-fun res!1631878 () Bool)

(assert (=> d!1188686 (=> (not res!1631878) (not e!2489344))))

(assert (=> d!1188686 (= res!1631878 (= (content!6512 lt!1421912) ((_ map or) (content!6512 (++!11236 prefix!494 newSuffix!27)) (content!6512 lt!1421018))))))

(assert (=> d!1188686 (= lt!1421912 e!2489345)))

(declare-fun c!694045 () Bool)

(assert (=> d!1188686 (= c!694045 ((_ is Nil!42944) (++!11236 prefix!494 newSuffix!27)))))

(assert (=> d!1188686 (= (++!11236 (++!11236 prefix!494 newSuffix!27) lt!1421018) lt!1421912)))

(assert (= (and d!1188686 c!694045) b!4013902))

(assert (= (and d!1188686 (not c!694045)) b!4013903))

(assert (= (and d!1188686 res!1631878) b!4013904))

(assert (= (and b!4013904 res!1631879) b!4013905))

(declare-fun m!4600891 () Bool)

(assert (=> b!4013903 m!4600891))

(declare-fun m!4600893 () Bool)

(assert (=> b!4013904 m!4600893))

(assert (=> b!4013904 m!4597511))

(assert (=> b!4013904 m!4599953))

(assert (=> b!4013904 m!4597783))

(declare-fun m!4600895 () Bool)

(assert (=> d!1188686 m!4600895))

(assert (=> d!1188686 m!4597511))

(declare-fun m!4600897 () Bool)

(assert (=> d!1188686 m!4600897))

(assert (=> d!1188686 m!4597789))

(assert (=> d!1187400 d!1188686))

(declare-fun b!4013906 () Bool)

(declare-fun e!2489347 () List!43068)

(assert (=> b!4013906 (= e!2489347 (++!11236 newSuffix!27 lt!1421018))))

(declare-fun b!4013909 () Bool)

(declare-fun e!2489346 () Bool)

(declare-fun lt!1421913 () List!43068)

(assert (=> b!4013909 (= e!2489346 (or (not (= (++!11236 newSuffix!27 lt!1421018) Nil!42944)) (= lt!1421913 prefix!494)))))

(declare-fun b!4013907 () Bool)

(assert (=> b!4013907 (= e!2489347 (Cons!42944 (h!48364 prefix!494) (++!11236 (t!332999 prefix!494) (++!11236 newSuffix!27 lt!1421018))))))

(declare-fun b!4013908 () Bool)

(declare-fun res!1631881 () Bool)

(assert (=> b!4013908 (=> (not res!1631881) (not e!2489346))))

(assert (=> b!4013908 (= res!1631881 (= (size!32110 lt!1421913) (+ (size!32110 prefix!494) (size!32110 (++!11236 newSuffix!27 lt!1421018)))))))

(declare-fun d!1188688 () Bool)

(assert (=> d!1188688 e!2489346))

(declare-fun res!1631880 () Bool)

(assert (=> d!1188688 (=> (not res!1631880) (not e!2489346))))

(assert (=> d!1188688 (= res!1631880 (= (content!6512 lt!1421913) ((_ map or) (content!6512 prefix!494) (content!6512 (++!11236 newSuffix!27 lt!1421018)))))))

(assert (=> d!1188688 (= lt!1421913 e!2489347)))

(declare-fun c!694046 () Bool)

(assert (=> d!1188688 (= c!694046 ((_ is Nil!42944) prefix!494))))

(assert (=> d!1188688 (= (++!11236 prefix!494 (++!11236 newSuffix!27 lt!1421018)) lt!1421913)))

(assert (= (and d!1188688 c!694046) b!4013906))

(assert (= (and d!1188688 (not c!694046)) b!4013907))

(assert (= (and d!1188688 res!1631880) b!4013908))

(assert (= (and b!4013908 res!1631881) b!4013909))

(assert (=> b!4013907 m!4597401))

(declare-fun m!4600899 () Bool)

(assert (=> b!4013907 m!4600899))

(declare-fun m!4600901 () Bool)

(assert (=> b!4013908 m!4600901))

(assert (=> b!4013908 m!4597423))

(assert (=> b!4013908 m!4597401))

(declare-fun m!4600903 () Bool)

(assert (=> b!4013908 m!4600903))

(declare-fun m!4600905 () Bool)

(assert (=> d!1188688 m!4600905))

(assert (=> d!1188688 m!4597751))

(assert (=> d!1188688 m!4597401))

(declare-fun m!4600907 () Bool)

(assert (=> d!1188688 m!4600907))

(assert (=> d!1187400 d!1188688))

(assert (=> d!1187400 d!1187614))

(declare-fun d!1188690 () Bool)

(assert (=> d!1188690 (= (++!11236 (++!11236 prefix!494 newSuffix!27) lt!1421018) (++!11236 prefix!494 (++!11236 newSuffix!27 lt!1421018)))))

(assert (=> d!1188690 true))

(declare-fun _$52!2266 () Unit!61970)

(assert (=> d!1188690 (= (choose!24240 prefix!494 newSuffix!27 lt!1421018) _$52!2266)))

(declare-fun bs!589536 () Bool)

(assert (= bs!589536 d!1188690))

(assert (=> bs!589536 m!4597511))

(assert (=> bs!589536 m!4597511))

(assert (=> bs!589536 m!4597807))

(assert (=> bs!589536 m!4597401))

(assert (=> bs!589536 m!4597401))

(assert (=> bs!589536 m!4597805))

(assert (=> d!1187400 d!1188690))

(assert (=> b!4012286 d!1187758))

(declare-fun d!1188692 () Bool)

(assert (=> d!1188692 (= (apply!10031 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266))))) (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266))))))))

(declare-fun b_lambda!117147 () Bool)

(assert (=> (not b_lambda!117147) (not d!1188692)))

(declare-fun tb!241403 () Bool)

(declare-fun t!333225 () Bool)

(assert (=> (and b!4011777 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333225) tb!241403))

(declare-fun result!292558 () Bool)

(assert (=> tb!241403 (= result!292558 (inv!21 (dynLambda!18215 (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266))))) (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))))))))

(declare-fun m!4600909 () Bool)

(assert (=> tb!241403 m!4600909))

(assert (=> d!1188692 t!333225))

(declare-fun b_and!308405 () Bool)

(assert (= b_and!308399 (and (=> t!333225 result!292558) b_and!308405)))

(declare-fun t!333227 () Bool)

(declare-fun tb!241405 () Bool)

(assert (=> (and b!4011768 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333227) tb!241405))

(declare-fun result!292560 () Bool)

(assert (= result!292560 result!292558))

(assert (=> d!1188692 t!333227))

(declare-fun b_and!308407 () Bool)

(assert (= b_and!308401 (and (=> t!333227 result!292560) b_and!308407)))

(declare-fun tb!241407 () Bool)

(declare-fun t!333229 () Bool)

(assert (=> (and b!4012460 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333229) tb!241407))

(declare-fun result!292562 () Bool)

(assert (= result!292562 result!292558))

(assert (=> d!1188692 t!333229))

(declare-fun b_and!308409 () Bool)

(assert (= b_and!308403 (and (=> t!333229 result!292562) b_and!308409)))

(assert (=> d!1188692 m!4598345))

(declare-fun m!4600911 () Bool)

(assert (=> d!1188692 m!4600911))

(assert (=> b!4012286 d!1188692))

(declare-fun d!1188694 () Bool)

(assert (=> d!1188694 (= (seqFromList!5059 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))) (fromListB!2316 (originalCharacters!7434 (_1!24179 (get!14111 lt!1421266)))))))

(declare-fun bs!589537 () Bool)

(assert (= bs!589537 d!1188694))

(declare-fun m!4600913 () Bool)

(assert (=> bs!589537 m!4600913))

(assert (=> b!4012286 d!1188694))

(declare-fun d!1188696 () Bool)

(declare-fun lt!1421914 () Int)

(assert (=> d!1188696 (>= lt!1421914 0)))

(declare-fun e!2489349 () Int)

(assert (=> d!1188696 (= lt!1421914 e!2489349)))

(declare-fun c!694047 () Bool)

(assert (=> d!1188696 (= c!694047 ((_ is Nil!42944) (originalCharacters!7434 (_1!24179 (v!39615 lt!1421042)))))))

(assert (=> d!1188696 (= (size!32110 (originalCharacters!7434 (_1!24179 (v!39615 lt!1421042)))) lt!1421914)))

(declare-fun b!4013910 () Bool)

(assert (=> b!4013910 (= e!2489349 0)))

(declare-fun b!4013911 () Bool)

(assert (=> b!4013911 (= e!2489349 (+ 1 (size!32110 (t!332999 (originalCharacters!7434 (_1!24179 (v!39615 lt!1421042)))))))))

(assert (= (and d!1188696 c!694047) b!4013910))

(assert (= (and d!1188696 (not c!694047)) b!4013911))

(declare-fun m!4600915 () Bool)

(assert (=> b!4013911 m!4600915))

(assert (=> d!1187528 d!1188696))

(declare-fun bs!589538 () Bool)

(declare-fun d!1188698 () Bool)

(assert (= bs!589538 (and d!1188698 d!1187862)))

(declare-fun lambda!127081 () Int)

(assert (=> bs!589538 (= (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) (= lambda!127081 lambda!127056))))

(declare-fun bs!589539 () Bool)

(assert (= bs!589539 (and d!1188698 d!1188486)))

(assert (=> bs!589539 (= (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) (= lambda!127081 lambda!127078))))

(assert (=> d!1188698 true))

(assert (=> d!1188698 (< (dynLambda!18220 order!22501 (toValue!9338 (transformation!6834 (h!48366 rules!2999)))) (dynLambda!18221 order!22503 lambda!127081))))

(assert (=> d!1188698 (= (equivClasses!2824 (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (h!48366 rules!2999)))) (Forall2!1072 lambda!127081))))

(declare-fun bs!589540 () Bool)

(assert (= bs!589540 d!1188698))

(declare-fun m!4600917 () Bool)

(assert (=> bs!589540 m!4600917))

(assert (=> b!4012324 d!1188698))

(declare-fun d!1188700 () Bool)

(declare-fun e!2489352 () Bool)

(assert (=> d!1188700 e!2489352))

(declare-fun res!1631884 () Bool)

(assert (=> d!1188700 (=> res!1631884 e!2489352)))

(declare-fun lt!1421915 () Bool)

(assert (=> d!1188700 (= res!1631884 (not lt!1421915))))

(declare-fun e!2489350 () Bool)

(assert (=> d!1188700 (= lt!1421915 e!2489350)))

(declare-fun res!1631882 () Bool)

(assert (=> d!1188700 (=> res!1631882 e!2489350)))

(assert (=> d!1188700 (= res!1631882 ((_ is Nil!42944) lt!1421037))))

(assert (=> d!1188700 (= (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 suffixResult!105)) lt!1421915)))

(declare-fun b!4013913 () Bool)

(declare-fun res!1631885 () Bool)

(declare-fun e!2489351 () Bool)

(assert (=> b!4013913 (=> (not res!1631885) (not e!2489351))))

(assert (=> b!4013913 (= res!1631885 (= (head!8519 lt!1421037) (head!8519 (++!11236 lt!1421037 suffixResult!105))))))

(declare-fun b!4013914 () Bool)

(assert (=> b!4013914 (= e!2489351 (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 (++!11236 lt!1421037 suffixResult!105))))))

(declare-fun b!4013912 () Bool)

(assert (=> b!4013912 (= e!2489350 e!2489351)))

(declare-fun res!1631883 () Bool)

(assert (=> b!4013912 (=> (not res!1631883) (not e!2489351))))

(assert (=> b!4013912 (= res!1631883 (not ((_ is Nil!42944) (++!11236 lt!1421037 suffixResult!105))))))

(declare-fun b!4013915 () Bool)

(assert (=> b!4013915 (= e!2489352 (>= (size!32110 (++!11236 lt!1421037 suffixResult!105)) (size!32110 lt!1421037)))))

(assert (= (and d!1188700 (not res!1631882)) b!4013912))

(assert (= (and b!4013912 res!1631883) b!4013913))

(assert (= (and b!4013913 res!1631885) b!4013914))

(assert (= (and d!1188700 (not res!1631884)) b!4013915))

(assert (=> b!4013913 m!4597837))

(assert (=> b!4013913 m!4597405))

(declare-fun m!4600919 () Bool)

(assert (=> b!4013913 m!4600919))

(assert (=> b!4013914 m!4597839))

(assert (=> b!4013914 m!4597405))

(declare-fun m!4600921 () Bool)

(assert (=> b!4013914 m!4600921))

(assert (=> b!4013914 m!4597839))

(assert (=> b!4013914 m!4600921))

(declare-fun m!4600923 () Bool)

(assert (=> b!4013914 m!4600923))

(assert (=> b!4013915 m!4597405))

(declare-fun m!4600925 () Bool)

(assert (=> b!4013915 m!4600925))

(assert (=> b!4013915 m!4597421))

(assert (=> d!1187424 d!1188700))

(assert (=> d!1187424 d!1187432))

(declare-fun d!1188702 () Bool)

(assert (=> d!1188702 (isPrefix!3921 lt!1421037 (++!11236 lt!1421037 suffixResult!105))))

(assert (=> d!1188702 true))

(declare-fun _$46!1673 () Unit!61970)

(assert (=> d!1188702 (= (choose!24242 lt!1421037 suffixResult!105) _$46!1673)))

(declare-fun bs!589541 () Bool)

(assert (= bs!589541 d!1188702))

(assert (=> bs!589541 m!4597405))

(assert (=> bs!589541 m!4597405))

(assert (=> bs!589541 m!4597843))

(assert (=> d!1187424 d!1188702))

(declare-fun b!4013916 () Bool)

(declare-fun e!2489354 () List!43068)

(assert (=> b!4013916 (= e!2489354 (_2!24179 (get!14111 lt!1421266)))))

(declare-fun b!4013919 () Bool)

(declare-fun e!2489353 () Bool)

(declare-fun lt!1421916 () List!43068)

(assert (=> b!4013919 (= e!2489353 (or (not (= (_2!24179 (get!14111 lt!1421266)) Nil!42944)) (= lt!1421916 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))))))))

(declare-fun b!4013917 () Bool)

(assert (=> b!4013917 (= e!2489354 (Cons!42944 (h!48364 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (++!11236 (t!332999 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (_2!24179 (get!14111 lt!1421266)))))))

(declare-fun b!4013918 () Bool)

(declare-fun res!1631887 () Bool)

(assert (=> b!4013918 (=> (not res!1631887) (not e!2489353))))

(assert (=> b!4013918 (= res!1631887 (= (size!32110 lt!1421916) (+ (size!32110 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (size!32110 (_2!24179 (get!14111 lt!1421266))))))))

(declare-fun d!1188704 () Bool)

(assert (=> d!1188704 e!2489353))

(declare-fun res!1631886 () Bool)

(assert (=> d!1188704 (=> (not res!1631886) (not e!2489353))))

(assert (=> d!1188704 (= res!1631886 (= (content!6512 lt!1421916) ((_ map or) (content!6512 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))) (content!6512 (_2!24179 (get!14111 lt!1421266))))))))

(assert (=> d!1188704 (= lt!1421916 e!2489354)))

(declare-fun c!694048 () Bool)

(assert (=> d!1188704 (= c!694048 ((_ is Nil!42944) (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266))))))))

(assert (=> d!1188704 (= (++!11236 (list!15960 (charsOf!4650 (_1!24179 (get!14111 lt!1421266)))) (_2!24179 (get!14111 lt!1421266))) lt!1421916)))

(assert (= (and d!1188704 c!694048) b!4013916))

(assert (= (and d!1188704 (not c!694048)) b!4013917))

(assert (= (and d!1188704 res!1631886) b!4013918))

(assert (= (and b!4013918 res!1631887) b!4013919))

(declare-fun m!4600927 () Bool)

(assert (=> b!4013917 m!4600927))

(declare-fun m!4600929 () Bool)

(assert (=> b!4013918 m!4600929))

(assert (=> b!4013918 m!4598333))

(declare-fun m!4600931 () Bool)

(assert (=> b!4013918 m!4600931))

(assert (=> b!4013918 m!4598357))

(declare-fun m!4600933 () Bool)

(assert (=> d!1188704 m!4600933))

(assert (=> d!1188704 m!4598333))

(declare-fun m!4600935 () Bool)

(assert (=> d!1188704 m!4600935))

(declare-fun m!4600937 () Bool)

(assert (=> d!1188704 m!4600937))

(assert (=> b!4012287 d!1188704))

(assert (=> b!4012287 d!1187754))

(assert (=> b!4012287 d!1187756))

(assert (=> b!4012287 d!1187758))

(assert (=> b!4012412 d!1187772))

(declare-fun d!1188706 () Bool)

(declare-fun c!694049 () Bool)

(assert (=> d!1188706 (= c!694049 ((_ is Nil!42944) lt!1421284))))

(declare-fun e!2489355 () (InoxSet C!23664))

(assert (=> d!1188706 (= (content!6512 lt!1421284) e!2489355)))

(declare-fun b!4013920 () Bool)

(assert (=> b!4013920 (= e!2489355 ((as const (Array C!23664 Bool)) false))))

(declare-fun b!4013921 () Bool)

(assert (=> b!4013921 (= e!2489355 ((_ map or) (store ((as const (Array C!23664 Bool)) false) (h!48364 lt!1421284) true) (content!6512 (t!332999 lt!1421284))))))

(assert (= (and d!1188706 c!694049) b!4013920))

(assert (= (and d!1188706 (not c!694049)) b!4013921))

(declare-fun m!4600939 () Bool)

(assert (=> b!4013921 m!4600939))

(declare-fun m!4600941 () Bool)

(assert (=> b!4013921 m!4600941))

(assert (=> d!1187614 d!1188706))

(assert (=> d!1187614 d!1187850))

(assert (=> d!1187614 d!1188502))

(declare-fun d!1188708 () Bool)

(declare-fun lt!1421917 () Int)

(assert (=> d!1188708 (>= lt!1421917 0)))

(declare-fun e!2489356 () Int)

(assert (=> d!1188708 (= lt!1421917 e!2489356)))

(declare-fun c!694050 () Bool)

(assert (=> d!1188708 (= c!694050 ((_ is Nil!42944) (_2!24179 (get!14111 lt!1421308))))))

(assert (=> d!1188708 (= (size!32110 (_2!24179 (get!14111 lt!1421308))) lt!1421917)))

(declare-fun b!4013922 () Bool)

(assert (=> b!4013922 (= e!2489356 0)))

(declare-fun b!4013923 () Bool)

(assert (=> b!4013923 (= e!2489356 (+ 1 (size!32110 (t!332999 (_2!24179 (get!14111 lt!1421308))))))))

(assert (= (and d!1188708 c!694050) b!4013922))

(assert (= (and d!1188708 (not c!694050)) b!4013923))

(declare-fun m!4600943 () Bool)

(assert (=> b!4013923 m!4600943))

(assert (=> b!4012420 d!1188708))

(assert (=> b!4012420 d!1188182))

(assert (=> b!4012420 d!1187838))

(declare-fun d!1188710 () Bool)

(declare-fun e!2489359 () Bool)

(assert (=> d!1188710 e!2489359))

(declare-fun res!1631890 () Bool)

(assert (=> d!1188710 (=> res!1631890 e!2489359)))

(declare-fun lt!1421918 () Bool)

(assert (=> d!1188710 (= res!1631890 (not lt!1421918))))

(declare-fun e!2489357 () Bool)

(assert (=> d!1188710 (= lt!1421918 e!2489357)))

(declare-fun res!1631888 () Bool)

(assert (=> d!1188710 (=> res!1631888 e!2489357)))

(assert (=> d!1188710 (= res!1631888 ((_ is Nil!42944) (tail!6251 lt!1421037)))))

(assert (=> d!1188710 (= (isPrefix!3921 (tail!6251 lt!1421037) (tail!6251 lt!1421060)) lt!1421918)))

(declare-fun b!4013925 () Bool)

(declare-fun res!1631891 () Bool)

(declare-fun e!2489358 () Bool)

(assert (=> b!4013925 (=> (not res!1631891) (not e!2489358))))

(assert (=> b!4013925 (= res!1631891 (= (head!8519 (tail!6251 lt!1421037)) (head!8519 (tail!6251 lt!1421060))))))

(declare-fun b!4013926 () Bool)

(assert (=> b!4013926 (= e!2489358 (isPrefix!3921 (tail!6251 (tail!6251 lt!1421037)) (tail!6251 (tail!6251 lt!1421060))))))

(declare-fun b!4013924 () Bool)

(assert (=> b!4013924 (= e!2489357 e!2489358)))

(declare-fun res!1631889 () Bool)

(assert (=> b!4013924 (=> (not res!1631889) (not e!2489358))))

(assert (=> b!4013924 (= res!1631889 (not ((_ is Nil!42944) (tail!6251 lt!1421060))))))

(declare-fun b!4013927 () Bool)

(assert (=> b!4013927 (= e!2489359 (>= (size!32110 (tail!6251 lt!1421060)) (size!32110 (tail!6251 lt!1421037))))))

(assert (= (and d!1188710 (not res!1631888)) b!4013924))

(assert (= (and b!4013924 res!1631889) b!4013925))

(assert (= (and b!4013925 res!1631891) b!4013926))

(assert (= (and d!1188710 (not res!1631890)) b!4013927))

(assert (=> b!4013925 m!4597839))

(assert (=> b!4013925 m!4598791))

(assert (=> b!4013925 m!4597849))

(declare-fun m!4600945 () Bool)

(assert (=> b!4013925 m!4600945))

(assert (=> b!4013926 m!4597839))

(assert (=> b!4013926 m!4598795))

(assert (=> b!4013926 m!4597849))

(declare-fun m!4600947 () Bool)

(assert (=> b!4013926 m!4600947))

(assert (=> b!4013926 m!4598795))

(assert (=> b!4013926 m!4600947))

(declare-fun m!4600949 () Bool)

(assert (=> b!4013926 m!4600949))

(assert (=> b!4013927 m!4597849))

(declare-fun m!4600951 () Bool)

(assert (=> b!4013927 m!4600951))

(assert (=> b!4013927 m!4597839))

(assert (=> b!4013927 m!4598803))

(assert (=> b!4011957 d!1188710))

(assert (=> b!4011957 d!1187746))

(declare-fun d!1188712 () Bool)

(assert (=> d!1188712 (= (tail!6251 lt!1421060) (t!332999 lt!1421060))))

(assert (=> b!4011957 d!1188712))

(declare-fun d!1188714 () Bool)

(declare-fun lt!1421919 () Int)

(assert (=> d!1188714 (>= lt!1421919 0)))

(declare-fun e!2489360 () Int)

(assert (=> d!1188714 (= lt!1421919 e!2489360)))

(declare-fun c!694051 () Bool)

(assert (=> d!1188714 (= c!694051 ((_ is Nil!42944) (t!332999 lt!1421058)))))

(assert (=> d!1188714 (= (size!32110 (t!332999 lt!1421058)) lt!1421919)))

(declare-fun b!4013928 () Bool)

(assert (=> b!4013928 (= e!2489360 0)))

(declare-fun b!4013929 () Bool)

(assert (=> b!4013929 (= e!2489360 (+ 1 (size!32110 (t!332999 (t!332999 lt!1421058)))))))

(assert (= (and d!1188714 c!694051) b!4013928))

(assert (= (and d!1188714 (not c!694051)) b!4013929))

(declare-fun m!4600953 () Bool)

(assert (=> b!4013929 m!4600953))

(assert (=> b!4012117 d!1188714))

(declare-fun b!4013933 () Bool)

(declare-fun e!2489362 () List!43068)

(assert (=> b!4013933 (= e!2489362 (++!11236 (list!15962 (left!32392 (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042)))))) (list!15962 (right!32722 (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042))))))))))

(declare-fun b!4013932 () Bool)

(assert (=> b!4013932 (= e!2489362 (list!15964 (xs!16351 (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042)))))))))

(declare-fun b!4013930 () Bool)

(declare-fun e!2489361 () List!43068)

(assert (=> b!4013930 (= e!2489361 Nil!42944)))

(declare-fun d!1188716 () Bool)

(declare-fun c!694052 () Bool)

(assert (=> d!1188716 (= c!694052 ((_ is Empty!13045) (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042))))))))

(assert (=> d!1188716 (= (list!15962 (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042))))) e!2489361)))

(declare-fun b!4013931 () Bool)

(assert (=> b!4013931 (= e!2489361 e!2489362)))

(declare-fun c!694053 () Bool)

(assert (=> b!4013931 (= c!694053 ((_ is Leaf!20169) (c!693562 (charsOf!4650 (_1!24179 (v!39615 lt!1421042))))))))

(assert (= (and d!1188716 c!694052) b!4013930))

(assert (= (and d!1188716 (not c!694052)) b!4013931))

(assert (= (and b!4013931 c!694053) b!4013932))

(assert (= (and b!4013931 (not c!694053)) b!4013933))

(declare-fun m!4600955 () Bool)

(assert (=> b!4013933 m!4600955))

(declare-fun m!4600957 () Bool)

(assert (=> b!4013933 m!4600957))

(assert (=> b!4013933 m!4600955))

(assert (=> b!4013933 m!4600957))

(declare-fun m!4600959 () Bool)

(assert (=> b!4013933 m!4600959))

(declare-fun m!4600961 () Bool)

(assert (=> b!4013932 m!4600961))

(assert (=> d!1187526 d!1188716))

(declare-fun d!1188718 () Bool)

(declare-fun lt!1421920 () Int)

(assert (=> d!1188718 (>= lt!1421920 0)))

(declare-fun e!2489363 () Int)

(assert (=> d!1188718 (= lt!1421920 e!2489363)))

(declare-fun c!694054 () Bool)

(assert (=> d!1188718 (= c!694054 ((_ is Nil!42944) lt!1421121))))

(assert (=> d!1188718 (= (size!32110 lt!1421121) lt!1421920)))

(declare-fun b!4013934 () Bool)

(assert (=> b!4013934 (= e!2489363 0)))

(declare-fun b!4013935 () Bool)

(assert (=> b!4013935 (= e!2489363 (+ 1 (size!32110 (t!332999 lt!1421121))))))

(assert (= (and d!1188718 c!694054) b!4013934))

(assert (= (and d!1188718 (not c!694054)) b!4013935))

(declare-fun m!4600963 () Bool)

(assert (=> b!4013935 m!4600963))

(assert (=> b!4011921 d!1188718))

(assert (=> b!4011921 d!1188172))

(assert (=> b!4011921 d!1187762))

(declare-fun d!1188720 () Bool)

(declare-fun e!2489366 () Bool)

(assert (=> d!1188720 e!2489366))

(declare-fun res!1631894 () Bool)

(assert (=> d!1188720 (=> res!1631894 e!2489366)))

(declare-fun lt!1421921 () Bool)

(assert (=> d!1188720 (= res!1631894 (not lt!1421921))))

(declare-fun e!2489364 () Bool)

(assert (=> d!1188720 (= lt!1421921 e!2489364)))

(declare-fun res!1631892 () Bool)

(assert (=> d!1188720 (=> res!1631892 e!2489364)))

(assert (=> d!1188720 (= res!1631892 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1188720 (= (isPrefix!3921 lt!1421058 (++!11236 lt!1421025 lt!1421018)) lt!1421921)))

(declare-fun b!4013937 () Bool)

(declare-fun res!1631895 () Bool)

(declare-fun e!2489365 () Bool)

(assert (=> b!4013937 (=> (not res!1631895) (not e!2489365))))

(assert (=> b!4013937 (= res!1631895 (= (head!8519 lt!1421058) (head!8519 (++!11236 lt!1421025 lt!1421018))))))

(declare-fun b!4013938 () Bool)

(assert (=> b!4013938 (= e!2489365 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 (++!11236 lt!1421025 lt!1421018))))))

(declare-fun b!4013936 () Bool)

(assert (=> b!4013936 (= e!2489364 e!2489365)))

(declare-fun res!1631893 () Bool)

(assert (=> b!4013936 (=> (not res!1631893) (not e!2489365))))

(assert (=> b!4013936 (= res!1631893 (not ((_ is Nil!42944) (++!11236 lt!1421025 lt!1421018))))))

(declare-fun b!4013939 () Bool)

(assert (=> b!4013939 (= e!2489366 (>= (size!32110 (++!11236 lt!1421025 lt!1421018)) (size!32110 lt!1421058)))))

(assert (= (and d!1188720 (not res!1631892)) b!4013936))

(assert (= (and b!4013936 res!1631893) b!4013937))

(assert (= (and b!4013937 res!1631895) b!4013938))

(assert (= (and d!1188720 (not res!1631894)) b!4013939))

(assert (=> b!4013937 m!4597887))

(assert (=> b!4013937 m!4597393))

(declare-fun m!4600965 () Bool)

(assert (=> b!4013937 m!4600965))

(assert (=> b!4013938 m!4597889))

(assert (=> b!4013938 m!4597393))

(declare-fun m!4600967 () Bool)

(assert (=> b!4013938 m!4600967))

(assert (=> b!4013938 m!4597889))

(assert (=> b!4013938 m!4600967))

(declare-fun m!4600969 () Bool)

(assert (=> b!4013938 m!4600969))

(assert (=> b!4013939 m!4597393))

(declare-fun m!4600971 () Bool)

(assert (=> b!4013939 m!4600971))

(assert (=> b!4013939 m!4597463))

(assert (=> d!1187444 d!1188720))

(assert (=> d!1187444 d!1187392))

(declare-fun d!1188722 () Bool)

(assert (=> d!1188722 (isPrefix!3921 lt!1421058 (++!11236 lt!1421025 lt!1421018))))

(assert (=> d!1188722 true))

(declare-fun _$58!540 () Unit!61970)

(assert (=> d!1188722 (= (choose!24245 lt!1421058 lt!1421025 lt!1421018) _$58!540)))

(declare-fun bs!589542 () Bool)

(assert (= bs!589542 d!1188722))

(assert (=> bs!589542 m!4597393))

(assert (=> bs!589542 m!4597393))

(assert (=> bs!589542 m!4597901))

(assert (=> d!1187444 d!1188722))

(declare-fun d!1188724 () Bool)

(declare-fun e!2489369 () Bool)

(assert (=> d!1188724 e!2489369))

(declare-fun res!1631898 () Bool)

(assert (=> d!1188724 (=> res!1631898 e!2489369)))

(declare-fun lt!1421922 () Bool)

(assert (=> d!1188724 (= res!1631898 (not lt!1421922))))

(declare-fun e!2489367 () Bool)

(assert (=> d!1188724 (= lt!1421922 e!2489367)))

(declare-fun res!1631896 () Bool)

(assert (=> d!1188724 (=> res!1631896 e!2489367)))

(assert (=> d!1188724 (= res!1631896 ((_ is Nil!42944) lt!1421058))))

(assert (=> d!1188724 (= (isPrefix!3921 lt!1421058 lt!1421025) lt!1421922)))

(declare-fun b!4013941 () Bool)

(declare-fun res!1631899 () Bool)

(declare-fun e!2489368 () Bool)

(assert (=> b!4013941 (=> (not res!1631899) (not e!2489368))))

(assert (=> b!4013941 (= res!1631899 (= (head!8519 lt!1421058) (head!8519 lt!1421025)))))

(declare-fun b!4013942 () Bool)

(assert (=> b!4013942 (= e!2489368 (isPrefix!3921 (tail!6251 lt!1421058) (tail!6251 lt!1421025)))))

(declare-fun b!4013940 () Bool)

(assert (=> b!4013940 (= e!2489367 e!2489368)))

(declare-fun res!1631897 () Bool)

(assert (=> b!4013940 (=> (not res!1631897) (not e!2489368))))

(assert (=> b!4013940 (= res!1631897 (not ((_ is Nil!42944) lt!1421025)))))

(declare-fun b!4013943 () Bool)

(assert (=> b!4013943 (= e!2489369 (>= (size!32110 lt!1421025) (size!32110 lt!1421058)))))

(assert (= (and d!1188724 (not res!1631896)) b!4013940))

(assert (= (and b!4013940 res!1631897) b!4013941))

(assert (= (and b!4013941 res!1631899) b!4013942))

(assert (= (and d!1188724 (not res!1631898)) b!4013943))

(assert (=> b!4013941 m!4597887))

(assert (=> b!4013941 m!4598541))

(assert (=> b!4013942 m!4597889))

(assert (=> b!4013942 m!4598543))

(assert (=> b!4013942 m!4597889))

(assert (=> b!4013942 m!4598543))

(declare-fun m!4600973 () Bool)

(assert (=> b!4013942 m!4600973))

(assert (=> b!4013943 m!4597781))

(assert (=> b!4013943 m!4597463))

(assert (=> d!1187444 d!1188724))

(declare-fun b!4013944 () Bool)

(declare-fun e!2489371 () List!43068)

(assert (=> b!4013944 (= e!2489371 newSuffix!27)))

(declare-fun lt!1421923 () List!43068)

(declare-fun e!2489370 () Bool)

(declare-fun b!4013947 () Bool)

(assert (=> b!4013947 (= e!2489370 (or (not (= newSuffix!27 Nil!42944)) (= lt!1421923 (t!332999 prefix!494))))))

(declare-fun b!4013945 () Bool)

(assert (=> b!4013945 (= e!2489371 (Cons!42944 (h!48364 (t!332999 prefix!494)) (++!11236 (t!332999 (t!332999 prefix!494)) newSuffix!27)))))

(declare-fun b!4013946 () Bool)

(declare-fun res!1631901 () Bool)

(assert (=> b!4013946 (=> (not res!1631901) (not e!2489370))))

(assert (=> b!4013946 (= res!1631901 (= (size!32110 lt!1421923) (+ (size!32110 (t!332999 prefix!494)) (size!32110 newSuffix!27))))))

(declare-fun d!1188726 () Bool)

(assert (=> d!1188726 e!2489370))

(declare-fun res!1631900 () Bool)

(assert (=> d!1188726 (=> (not res!1631900) (not e!2489370))))

(assert (=> d!1188726 (= res!1631900 (= (content!6512 lt!1421923) ((_ map or) (content!6512 (t!332999 prefix!494)) (content!6512 newSuffix!27))))))

(assert (=> d!1188726 (= lt!1421923 e!2489371)))

(declare-fun c!694055 () Bool)

(assert (=> d!1188726 (= c!694055 ((_ is Nil!42944) (t!332999 prefix!494)))))

(assert (=> d!1188726 (= (++!11236 (t!332999 prefix!494) newSuffix!27) lt!1421923)))

(assert (= (and d!1188726 c!694055) b!4013944))

(assert (= (and d!1188726 (not c!694055)) b!4013945))

(assert (= (and d!1188726 res!1631900) b!4013946))

(assert (= (and b!4013946 res!1631901) b!4013947))

(declare-fun m!4600975 () Bool)

(assert (=> b!4013945 m!4600975))

(declare-fun m!4600977 () Bool)

(assert (=> b!4013946 m!4600977))

(assert (=> b!4013946 m!4598423))

(assert (=> b!4013946 m!4597547))

(declare-fun m!4600979 () Bool)

(assert (=> d!1188726 m!4600979))

(assert (=> d!1188726 m!4598957))

(assert (=> d!1188726 m!4598401))

(assert (=> b!4012340 d!1188726))

(declare-fun b!4013951 () Bool)

(declare-fun e!2489372 () Bool)

(declare-fun tp!1220625 () Bool)

(declare-fun tp!1220622 () Bool)

(assert (=> b!4013951 (= e!2489372 (and tp!1220625 tp!1220622))))

(declare-fun b!4013950 () Bool)

(declare-fun tp!1220624 () Bool)

(assert (=> b!4013950 (= e!2489372 tp!1220624)))

(assert (=> b!4012477 (= tp!1220525 e!2489372)))

(declare-fun b!4013949 () Bool)

(declare-fun tp!1220623 () Bool)

(declare-fun tp!1220626 () Bool)

(assert (=> b!4013949 (= e!2489372 (and tp!1220623 tp!1220626))))

(declare-fun b!4013948 () Bool)

(assert (=> b!4013948 (= e!2489372 tp_is_empty!20449)))

(assert (= (and b!4012477 ((_ is ElementMatch!11739) (regOne!23991 (regex!6834 (h!48366 rules!2999))))) b!4013948))

(assert (= (and b!4012477 ((_ is Concat!18804) (regOne!23991 (regex!6834 (h!48366 rules!2999))))) b!4013949))

(assert (= (and b!4012477 ((_ is Star!11739) (regOne!23991 (regex!6834 (h!48366 rules!2999))))) b!4013950))

(assert (= (and b!4012477 ((_ is Union!11739) (regOne!23991 (regex!6834 (h!48366 rules!2999))))) b!4013951))

(declare-fun b!4013955 () Bool)

(declare-fun e!2489373 () Bool)

(declare-fun tp!1220630 () Bool)

(declare-fun tp!1220627 () Bool)

(assert (=> b!4013955 (= e!2489373 (and tp!1220630 tp!1220627))))

(declare-fun b!4013954 () Bool)

(declare-fun tp!1220629 () Bool)

(assert (=> b!4013954 (= e!2489373 tp!1220629)))

(assert (=> b!4012477 (= tp!1220522 e!2489373)))

(declare-fun b!4013953 () Bool)

(declare-fun tp!1220628 () Bool)

(declare-fun tp!1220631 () Bool)

(assert (=> b!4013953 (= e!2489373 (and tp!1220628 tp!1220631))))

(declare-fun b!4013952 () Bool)

(assert (=> b!4013952 (= e!2489373 tp_is_empty!20449)))

(assert (= (and b!4012477 ((_ is ElementMatch!11739) (regTwo!23991 (regex!6834 (h!48366 rules!2999))))) b!4013952))

(assert (= (and b!4012477 ((_ is Concat!18804) (regTwo!23991 (regex!6834 (h!48366 rules!2999))))) b!4013953))

(assert (= (and b!4012477 ((_ is Star!11739) (regTwo!23991 (regex!6834 (h!48366 rules!2999))))) b!4013954))

(assert (= (and b!4012477 ((_ is Union!11739) (regTwo!23991 (regex!6834 (h!48366 rules!2999))))) b!4013955))

(declare-fun b!4013956 () Bool)

(declare-fun e!2489374 () Bool)

(declare-fun tp!1220632 () Bool)

(assert (=> b!4013956 (= e!2489374 (and tp_is_empty!20449 tp!1220632))))

(assert (=> b!4012461 (= tp!1220509 e!2489374)))

(assert (= (and b!4012461 ((_ is Cons!42944) (t!332999 (t!332999 newSuffixResult!27)))) b!4013956))

(declare-fun tp!1220641 () Bool)

(declare-fun b!4013965 () Bool)

(declare-fun e!2489380 () Bool)

(declare-fun tp!1220639 () Bool)

(assert (=> b!4013965 (= e!2489380 (and (inv!57363 (left!32392 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))) tp!1220639 (inv!57363 (right!32722 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))) tp!1220641))))

(declare-fun b!4013967 () Bool)

(declare-fun e!2489379 () Bool)

(declare-fun tp!1220640 () Bool)

(assert (=> b!4013967 (= e!2489379 tp!1220640)))

(declare-fun b!4013966 () Bool)

(declare-fun inv!57370 (IArray!26095) Bool)

(assert (=> b!4013966 (= e!2489380 (and (inv!57370 (xs!16351 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))) e!2489379))))

(assert (=> b!4012300 (= tp!1220491 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042)))))) e!2489380))))

(assert (= (and b!4012300 ((_ is Node!13045) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))) b!4013965))

(assert (= b!4013966 b!4013967))

(assert (= (and b!4012300 ((_ is Leaf!20169) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))) (value!215403 (_1!24179 (v!39615 lt!1421042))))))) b!4013966))

(declare-fun m!4600981 () Bool)

(assert (=> b!4013965 m!4600981))

(declare-fun m!4600983 () Bool)

(assert (=> b!4013965 m!4600983))

(declare-fun m!4600985 () Bool)

(assert (=> b!4013966 m!4600985))

(assert (=> b!4012300 m!4598387))

(declare-fun b!4013968 () Bool)

(declare-fun e!2489381 () Bool)

(declare-fun tp!1220642 () Bool)

(assert (=> b!4013968 (= e!2489381 (and tp_is_empty!20449 tp!1220642))))

(assert (=> b!4012448 (= tp!1220495 e!2489381)))

(assert (= (and b!4012448 ((_ is Cons!42944) (t!332999 (t!332999 suffix!1299)))) b!4013968))

(declare-fun b!4013969 () Bool)

(declare-fun e!2489382 () Bool)

(declare-fun tp!1220643 () Bool)

(assert (=> b!4013969 (= e!2489382 (and tp_is_empty!20449 tp!1220643))))

(assert (=> b!4012482 (= tp!1220532 e!2489382)))

(assert (= (and b!4012482 ((_ is Cons!42944) (t!332999 (t!332999 prefix!494)))) b!4013969))

(declare-fun b!4013970 () Bool)

(declare-fun e!2489383 () Bool)

(declare-fun tp!1220644 () Bool)

(assert (=> b!4013970 (= e!2489383 (and tp_is_empty!20449 tp!1220644))))

(assert (=> b!4012449 (= tp!1220496 e!2489383)))

(assert (= (and b!4012449 ((_ is Cons!42944) (t!332999 (t!332999 newSuffix!27)))) b!4013970))

(declare-fun b!4013971 () Bool)

(declare-fun e!2489384 () Bool)

(declare-fun tp!1220645 () Bool)

(assert (=> b!4013971 (= e!2489384 (and tp_is_empty!20449 tp!1220645))))

(assert (=> b!4012462 (= tp!1220510 e!2489384)))

(assert (= (and b!4012462 ((_ is Cons!42944) (t!332999 (t!332999 suffixResult!105)))) b!4013971))

(declare-fun tp!1220648 () Bool)

(declare-fun e!2489386 () Bool)

(declare-fun b!4013972 () Bool)

(declare-fun tp!1220646 () Bool)

(assert (=> b!4013972 (= e!2489386 (and (inv!57363 (left!32392 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))) tp!1220646 (inv!57363 (right!32722 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))) tp!1220648))))

(declare-fun b!4013974 () Bool)

(declare-fun e!2489385 () Bool)

(declare-fun tp!1220647 () Bool)

(assert (=> b!4013974 (= e!2489385 tp!1220647)))

(declare-fun b!4013973 () Bool)

(assert (=> b!4013973 (= e!2489386 (and (inv!57370 (xs!16351 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))) e!2489385))))

(assert (=> b!4012332 (= tp!1220492 (and (inv!57363 (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484)))) e!2489386))))

(assert (= (and b!4012332 ((_ is Node!13045) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))) b!4013972))

(assert (= b!4013973 b!4013974))

(assert (= (and b!4012332 ((_ is Leaf!20169) (c!693562 (dynLambda!18216 (toChars!9197 (transformation!6834 (rule!9878 token!484))) (value!215403 token!484))))) b!4013973))

(declare-fun m!4600987 () Bool)

(assert (=> b!4013972 m!4600987))

(declare-fun m!4600989 () Bool)

(assert (=> b!4013972 m!4600989))

(declare-fun m!4600991 () Bool)

(assert (=> b!4013973 m!4600991))

(assert (=> b!4012332 m!4598427))

(declare-fun b!4013975 () Bool)

(declare-fun e!2489387 () Bool)

(declare-fun tp!1220649 () Bool)

(assert (=> b!4013975 (= e!2489387 (and tp_is_empty!20449 tp!1220649))))

(assert (=> b!4012463 (= tp!1220511 e!2489387)))

(assert (= (and b!4012463 ((_ is Cons!42944) (t!332999 (originalCharacters!7434 token!484)))) b!4013975))

(declare-fun b!4013979 () Bool)

(declare-fun e!2489388 () Bool)

(declare-fun tp!1220653 () Bool)

(declare-fun tp!1220650 () Bool)

(assert (=> b!4013979 (= e!2489388 (and tp!1220653 tp!1220650))))

(declare-fun b!4013978 () Bool)

(declare-fun tp!1220652 () Bool)

(assert (=> b!4013978 (= e!2489388 tp!1220652)))

(assert (=> b!4012479 (= tp!1220528 e!2489388)))

(declare-fun b!4013977 () Bool)

(declare-fun tp!1220651 () Bool)

(declare-fun tp!1220654 () Bool)

(assert (=> b!4013977 (= e!2489388 (and tp!1220651 tp!1220654))))

(declare-fun b!4013976 () Bool)

(assert (=> b!4013976 (= e!2489388 tp_is_empty!20449)))

(assert (= (and b!4012479 ((_ is ElementMatch!11739) (regOne!23990 (regex!6834 (rule!9878 token!484))))) b!4013976))

(assert (= (and b!4012479 ((_ is Concat!18804) (regOne!23990 (regex!6834 (rule!9878 token!484))))) b!4013977))

(assert (= (and b!4012479 ((_ is Star!11739) (regOne!23990 (regex!6834 (rule!9878 token!484))))) b!4013978))

(assert (= (and b!4012479 ((_ is Union!11739) (regOne!23990 (regex!6834 (rule!9878 token!484))))) b!4013979))

(declare-fun b!4013983 () Bool)

(declare-fun e!2489389 () Bool)

(declare-fun tp!1220658 () Bool)

(declare-fun tp!1220655 () Bool)

(assert (=> b!4013983 (= e!2489389 (and tp!1220658 tp!1220655))))

(declare-fun b!4013982 () Bool)

(declare-fun tp!1220657 () Bool)

(assert (=> b!4013982 (= e!2489389 tp!1220657)))

(assert (=> b!4012479 (= tp!1220531 e!2489389)))

(declare-fun b!4013981 () Bool)

(declare-fun tp!1220656 () Bool)

(declare-fun tp!1220659 () Bool)

(assert (=> b!4013981 (= e!2489389 (and tp!1220656 tp!1220659))))

(declare-fun b!4013980 () Bool)

(assert (=> b!4013980 (= e!2489389 tp_is_empty!20449)))

(assert (= (and b!4012479 ((_ is ElementMatch!11739) (regTwo!23990 (regex!6834 (rule!9878 token!484))))) b!4013980))

(assert (= (and b!4012479 ((_ is Concat!18804) (regTwo!23990 (regex!6834 (rule!9878 token!484))))) b!4013981))

(assert (= (and b!4012479 ((_ is Star!11739) (regTwo!23990 (regex!6834 (rule!9878 token!484))))) b!4013982))

(assert (= (and b!4012479 ((_ is Union!11739) (regTwo!23990 (regex!6834 (rule!9878 token!484))))) b!4013983))

(declare-fun b!4013987 () Bool)

(declare-fun e!2489390 () Bool)

(declare-fun tp!1220663 () Bool)

(declare-fun tp!1220660 () Bool)

(assert (=> b!4013987 (= e!2489390 (and tp!1220663 tp!1220660))))

(declare-fun b!4013986 () Bool)

(declare-fun tp!1220662 () Bool)

(assert (=> b!4013986 (= e!2489390 tp!1220662)))

(assert (=> b!4012475 (= tp!1220523 e!2489390)))

(declare-fun b!4013985 () Bool)

(declare-fun tp!1220661 () Bool)

(declare-fun tp!1220664 () Bool)

(assert (=> b!4013985 (= e!2489390 (and tp!1220661 tp!1220664))))

(declare-fun b!4013984 () Bool)

(assert (=> b!4013984 (= e!2489390 tp_is_empty!20449)))

(assert (= (and b!4012475 ((_ is ElementMatch!11739) (regOne!23990 (regex!6834 (h!48366 rules!2999))))) b!4013984))

(assert (= (and b!4012475 ((_ is Concat!18804) (regOne!23990 (regex!6834 (h!48366 rules!2999))))) b!4013985))

(assert (= (and b!4012475 ((_ is Star!11739) (regOne!23990 (regex!6834 (h!48366 rules!2999))))) b!4013986))

(assert (= (and b!4012475 ((_ is Union!11739) (regOne!23990 (regex!6834 (h!48366 rules!2999))))) b!4013987))

(declare-fun b!4013991 () Bool)

(declare-fun e!2489391 () Bool)

(declare-fun tp!1220668 () Bool)

(declare-fun tp!1220665 () Bool)

(assert (=> b!4013991 (= e!2489391 (and tp!1220668 tp!1220665))))

(declare-fun b!4013990 () Bool)

(declare-fun tp!1220667 () Bool)

(assert (=> b!4013990 (= e!2489391 tp!1220667)))

(assert (=> b!4012475 (= tp!1220526 e!2489391)))

(declare-fun b!4013989 () Bool)

(declare-fun tp!1220666 () Bool)

(declare-fun tp!1220669 () Bool)

(assert (=> b!4013989 (= e!2489391 (and tp!1220666 tp!1220669))))

(declare-fun b!4013988 () Bool)

(assert (=> b!4013988 (= e!2489391 tp_is_empty!20449)))

(assert (= (and b!4012475 ((_ is ElementMatch!11739) (regTwo!23990 (regex!6834 (h!48366 rules!2999))))) b!4013988))

(assert (= (and b!4012475 ((_ is Concat!18804) (regTwo!23990 (regex!6834 (h!48366 rules!2999))))) b!4013989))

(assert (= (and b!4012475 ((_ is Star!11739) (regTwo!23990 (regex!6834 (h!48366 rules!2999))))) b!4013990))

(assert (= (and b!4012475 ((_ is Union!11739) (regTwo!23990 (regex!6834 (h!48366 rules!2999))))) b!4013991))

(declare-fun b!4013994 () Bool)

(declare-fun b_free!111629 () Bool)

(declare-fun b_next!112333 () Bool)

(assert (=> b!4013994 (= b_free!111629 (not b_next!112333))))

(declare-fun t!333231 () Bool)

(declare-fun tb!241409 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333231) tb!241409))

(declare-fun result!292566 () Bool)

(assert (= result!292566 result!292534))

(assert (=> d!1188474 t!333231))

(declare-fun t!333233 () Bool)

(declare-fun tb!241411 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333233) tb!241411))

(declare-fun result!292568 () Bool)

(assert (= result!292568 result!292352))

(assert (=> d!1187588 t!333233))

(declare-fun tb!241413 () Bool)

(declare-fun t!333235 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 token!484)))) t!333235) tb!241413))

(declare-fun result!292570 () Bool)

(assert (= result!292570 result!292368))

(assert (=> d!1187642 t!333235))

(declare-fun tb!241415 () Bool)

(declare-fun t!333237 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333237) tb!241415))

(declare-fun result!292572 () Bool)

(assert (= result!292572 result!292494))

(assert (=> d!1188336 t!333237))

(declare-fun tb!241417 () Bool)

(declare-fun t!333239 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333239) tb!241417))

(declare-fun result!292574 () Bool)

(assert (= result!292574 result!292546))

(assert (=> d!1188548 t!333239))

(declare-fun tb!241419 () Bool)

(declare-fun t!333241 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333241) tb!241419))

(declare-fun result!292576 () Bool)

(assert (= result!292576 result!292558))

(assert (=> d!1188692 t!333241))

(assert (=> d!1188480 t!333231))

(declare-fun t!333243 () Bool)

(declare-fun tb!241421 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333243) tb!241421))

(declare-fun result!292578 () Bool)

(assert (= result!292578 result!292416))

(assert (=> d!1187894 t!333243))

(assert (=> d!1188302 t!333237))

(declare-fun tb!241423 () Bool)

(declare-fun t!333245 () Bool)

(assert (=> (and b!4013994 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333245) tb!241423))

(declare-fun result!292580 () Bool)

(assert (= result!292580 result!292552))

(assert (=> d!1188618 t!333245))

(declare-fun b_and!308411 () Bool)

(declare-fun tp!1220673 () Bool)

(assert (=> b!4013994 (= tp!1220673 (and (=> t!333237 result!292572) (=> t!333241 result!292576) (=> t!333245 result!292580) (=> t!333243 result!292578) (=> t!333235 result!292570) (=> t!333233 result!292568) (=> t!333231 result!292566) (=> t!333239 result!292574) b_and!308411))))

(declare-fun b_free!111631 () Bool)

(declare-fun b_next!112335 () Bool)

(assert (=> b!4013994 (= b_free!111631 (not b_next!112335))))

(declare-fun t!333247 () Bool)

(declare-fun tb!241425 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333247) tb!241425))

(declare-fun result!292582 () Bool)

(assert (= result!292582 result!292540))

(assert (=> d!1188480 t!333247))

(declare-fun t!333249 () Bool)

(declare-fun tb!241427 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421308)))))) t!333249) tb!241427))

(declare-fun result!292584 () Bool)

(assert (= result!292584 result!292458))

(assert (=> d!1188180 t!333249))

(declare-fun t!333251 () Bool)

(declare-fun tb!241429 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 token!484)))) t!333251) tb!241429))

(declare-fun result!292586 () Bool)

(assert (= result!292586 result!292364))

(assert (=> d!1187610 t!333251))

(assert (=> b!4012337 t!333251))

(declare-fun t!333253 () Bool)

(declare-fun tb!241431 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421293)))))) t!333253) tb!241431))

(declare-fun result!292588 () Bool)

(assert (= result!292588 result!292470))

(assert (=> d!1188218 t!333253))

(declare-fun tb!241433 () Bool)

(declare-fun t!333255 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421266)))))) t!333255) tb!241433))

(declare-fun result!292590 () Bool)

(assert (= result!292590 result!292392))

(assert (=> d!1187756 t!333255))

(declare-fun tb!241435 () Bool)

(declare-fun t!333257 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333257) tb!241435))

(declare-fun result!292592 () Bool)

(assert (= result!292592 result!292488))

(assert (=> d!1188302 t!333257))

(declare-fun tb!241437 () Bool)

(declare-fun t!333259 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042)))))) t!333259) tb!241437))

(declare-fun result!292594 () Bool)

(assert (= result!292594 result!292358))

(assert (=> d!1187590 t!333259))

(declare-fun t!333261 () Bool)

(declare-fun tb!241439 () Bool)

(assert (=> (and b!4013994 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (get!14111 lt!1421199)))))) t!333261) tb!241439))

(declare-fun result!292596 () Bool)

(assert (= result!292596 result!292386))

(assert (=> d!1187732 t!333261))

(declare-fun tp!1220670 () Bool)

(declare-fun b_and!308413 () Bool)

(assert (=> b!4013994 (= tp!1220670 (and (=> t!333253 result!292588) (=> t!333249 result!292584) (=> t!333251 result!292586) (=> t!333247 result!292582) (=> t!333255 result!292590) (=> t!333259 result!292594) (=> t!333257 result!292592) (=> t!333261 result!292596) b_and!308413))))

(declare-fun e!2489393 () Bool)

(assert (=> b!4013994 (= e!2489393 (and tp!1220673 tp!1220670))))

(declare-fun b!4013993 () Bool)

(declare-fun e!2489392 () Bool)

(declare-fun tp!1220672 () Bool)

(assert (=> b!4013993 (= e!2489392 (and tp!1220672 (inv!57356 (tag!7694 (h!48366 (t!333001 (t!333001 rules!2999))))) (inv!57360 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) e!2489393))))

(declare-fun b!4013992 () Bool)

(declare-fun e!2489395 () Bool)

(declare-fun tp!1220671 () Bool)

(assert (=> b!4013992 (= e!2489395 (and e!2489392 tp!1220671))))

(assert (=> b!4012458 (= tp!1220506 e!2489395)))

(assert (= b!4013993 b!4013994))

(assert (= b!4013992 b!4013993))

(assert (= (and b!4012458 ((_ is Cons!42946) (t!333001 (t!333001 rules!2999)))) b!4013992))

(declare-fun m!4600993 () Bool)

(assert (=> b!4013993 m!4600993))

(declare-fun m!4600995 () Bool)

(assert (=> b!4013993 m!4600995))

(declare-fun b!4013998 () Bool)

(declare-fun e!2489396 () Bool)

(declare-fun tp!1220677 () Bool)

(declare-fun tp!1220674 () Bool)

(assert (=> b!4013998 (= e!2489396 (and tp!1220677 tp!1220674))))

(declare-fun b!4013997 () Bool)

(declare-fun tp!1220676 () Bool)

(assert (=> b!4013997 (= e!2489396 tp!1220676)))

(assert (=> b!4012480 (= tp!1220529 e!2489396)))

(declare-fun b!4013996 () Bool)

(declare-fun tp!1220675 () Bool)

(declare-fun tp!1220678 () Bool)

(assert (=> b!4013996 (= e!2489396 (and tp!1220675 tp!1220678))))

(declare-fun b!4013995 () Bool)

(assert (=> b!4013995 (= e!2489396 tp_is_empty!20449)))

(assert (= (and b!4012480 ((_ is ElementMatch!11739) (reg!12068 (regex!6834 (rule!9878 token!484))))) b!4013995))

(assert (= (and b!4012480 ((_ is Concat!18804) (reg!12068 (regex!6834 (rule!9878 token!484))))) b!4013996))

(assert (= (and b!4012480 ((_ is Star!11739) (reg!12068 (regex!6834 (rule!9878 token!484))))) b!4013997))

(assert (= (and b!4012480 ((_ is Union!11739) (reg!12068 (regex!6834 (rule!9878 token!484))))) b!4013998))

(declare-fun b!4014002 () Bool)

(declare-fun e!2489397 () Bool)

(declare-fun tp!1220682 () Bool)

(declare-fun tp!1220679 () Bool)

(assert (=> b!4014002 (= e!2489397 (and tp!1220682 tp!1220679))))

(declare-fun b!4014001 () Bool)

(declare-fun tp!1220681 () Bool)

(assert (=> b!4014001 (= e!2489397 tp!1220681)))

(assert (=> b!4012459 (= tp!1220507 e!2489397)))

(declare-fun b!4014000 () Bool)

(declare-fun tp!1220680 () Bool)

(declare-fun tp!1220683 () Bool)

(assert (=> b!4014000 (= e!2489397 (and tp!1220680 tp!1220683))))

(declare-fun b!4013999 () Bool)

(assert (=> b!4013999 (= e!2489397 tp_is_empty!20449)))

(assert (= (and b!4012459 ((_ is ElementMatch!11739) (regex!6834 (h!48366 (t!333001 rules!2999))))) b!4013999))

(assert (= (and b!4012459 ((_ is Concat!18804) (regex!6834 (h!48366 (t!333001 rules!2999))))) b!4014000))

(assert (= (and b!4012459 ((_ is Star!11739) (regex!6834 (h!48366 (t!333001 rules!2999))))) b!4014001))

(assert (= (and b!4012459 ((_ is Union!11739) (regex!6834 (h!48366 (t!333001 rules!2999))))) b!4014002))

(declare-fun b!4014006 () Bool)

(declare-fun e!2489398 () Bool)

(declare-fun tp!1220687 () Bool)

(declare-fun tp!1220684 () Bool)

(assert (=> b!4014006 (= e!2489398 (and tp!1220687 tp!1220684))))

(declare-fun b!4014005 () Bool)

(declare-fun tp!1220686 () Bool)

(assert (=> b!4014005 (= e!2489398 tp!1220686)))

(assert (=> b!4012481 (= tp!1220530 e!2489398)))

(declare-fun b!4014004 () Bool)

(declare-fun tp!1220685 () Bool)

(declare-fun tp!1220688 () Bool)

(assert (=> b!4014004 (= e!2489398 (and tp!1220685 tp!1220688))))

(declare-fun b!4014003 () Bool)

(assert (=> b!4014003 (= e!2489398 tp_is_empty!20449)))

(assert (= (and b!4012481 ((_ is ElementMatch!11739) (regOne!23991 (regex!6834 (rule!9878 token!484))))) b!4014003))

(assert (= (and b!4012481 ((_ is Concat!18804) (regOne!23991 (regex!6834 (rule!9878 token!484))))) b!4014004))

(assert (= (and b!4012481 ((_ is Star!11739) (regOne!23991 (regex!6834 (rule!9878 token!484))))) b!4014005))

(assert (= (and b!4012481 ((_ is Union!11739) (regOne!23991 (regex!6834 (rule!9878 token!484))))) b!4014006))

(declare-fun b!4014010 () Bool)

(declare-fun e!2489399 () Bool)

(declare-fun tp!1220692 () Bool)

(declare-fun tp!1220689 () Bool)

(assert (=> b!4014010 (= e!2489399 (and tp!1220692 tp!1220689))))

(declare-fun b!4014009 () Bool)

(declare-fun tp!1220691 () Bool)

(assert (=> b!4014009 (= e!2489399 tp!1220691)))

(assert (=> b!4012481 (= tp!1220527 e!2489399)))

(declare-fun b!4014008 () Bool)

(declare-fun tp!1220690 () Bool)

(declare-fun tp!1220693 () Bool)

(assert (=> b!4014008 (= e!2489399 (and tp!1220690 tp!1220693))))

(declare-fun b!4014007 () Bool)

(assert (=> b!4014007 (= e!2489399 tp_is_empty!20449)))

(assert (= (and b!4012481 ((_ is ElementMatch!11739) (regTwo!23991 (regex!6834 (rule!9878 token!484))))) b!4014007))

(assert (= (and b!4012481 ((_ is Concat!18804) (regTwo!23991 (regex!6834 (rule!9878 token!484))))) b!4014008))

(assert (= (and b!4012481 ((_ is Star!11739) (regTwo!23991 (regex!6834 (rule!9878 token!484))))) b!4014009))

(assert (= (and b!4012481 ((_ is Union!11739) (regTwo!23991 (regex!6834 (rule!9878 token!484))))) b!4014010))

(declare-fun b!4014014 () Bool)

(declare-fun e!2489400 () Bool)

(declare-fun tp!1220697 () Bool)

(declare-fun tp!1220694 () Bool)

(assert (=> b!4014014 (= e!2489400 (and tp!1220697 tp!1220694))))

(declare-fun b!4014013 () Bool)

(declare-fun tp!1220696 () Bool)

(assert (=> b!4014013 (= e!2489400 tp!1220696)))

(assert (=> b!4012476 (= tp!1220524 e!2489400)))

(declare-fun b!4014012 () Bool)

(declare-fun tp!1220695 () Bool)

(declare-fun tp!1220698 () Bool)

(assert (=> b!4014012 (= e!2489400 (and tp!1220695 tp!1220698))))

(declare-fun b!4014011 () Bool)

(assert (=> b!4014011 (= e!2489400 tp_is_empty!20449)))

(assert (= (and b!4012476 ((_ is ElementMatch!11739) (reg!12068 (regex!6834 (h!48366 rules!2999))))) b!4014011))

(assert (= (and b!4012476 ((_ is Concat!18804) (reg!12068 (regex!6834 (h!48366 rules!2999))))) b!4014012))

(assert (= (and b!4012476 ((_ is Star!11739) (reg!12068 (regex!6834 (h!48366 rules!2999))))) b!4014013))

(assert (= (and b!4012476 ((_ is Union!11739) (reg!12068 (regex!6834 (h!48366 rules!2999))))) b!4014014))

(declare-fun b_lambda!117149 () Bool)

(assert (= b_lambda!117067 (or (and b!4011777 b_free!111609 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4011768 b_free!111613 (= (toValue!9338 (transformation!6834 (rule!9878 token!484))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4012460 b_free!111621 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4013994 b_free!111629 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) b_lambda!117149)))

(declare-fun b_lambda!117151 () Bool)

(assert (= b_lambda!117141 (or (and b!4011777 b_free!111609 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111613) (and b!4012460 b_free!111621 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (and b!4013994 b_free!111629 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) b_lambda!117151)))

(declare-fun b_lambda!117153 () Bool)

(assert (= b_lambda!117137 (or (and b!4011777 b_free!111609 (= (toValue!9338 (transformation!6834 (h!48366 rules!2999))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111613) (and b!4012460 b_free!111621 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) (and b!4013994 b_free!111629 (= (toValue!9338 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toValue!9338 (transformation!6834 (rule!9878 token!484))))) b_lambda!117153)))

(declare-fun b_lambda!117155 () Bool)

(assert (= b_lambda!117069 (or (and b!4011777 b_free!111611 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4011768 b_free!111615 (= (toChars!9197 (transformation!6834 (rule!9878 token!484))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4012460 b_free!111623 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) (and b!4013994 b_free!111631 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 (_1!24179 (v!39615 lt!1421042))))))) b_lambda!117155)))

(declare-fun b_lambda!117157 () Bool)

(assert (= b_lambda!117139 (or (and b!4011777 b_free!111611 (= (toChars!9197 (transformation!6834 (h!48366 rules!2999))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) (and b!4011768 b_free!111615) (and b!4012460 b_free!111623 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 rules!2999)))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) (and b!4013994 b_free!111631 (= (toChars!9197 (transformation!6834 (h!48366 (t!333001 (t!333001 rules!2999))))) (toChars!9197 (transformation!6834 (rule!9878 token!484))))) b_lambda!117157)))

(check-sat b_and!308385 (not d!1187916) (not d!1188224) (not b!4013624) (not b!4013887) (not b!4012728) (not b!4013978) (not bm!286514) (not d!1187908) (not d!1188524) (not b!4013826) (not b!4013864) (not bm!286517) (not b!4013818) (not d!1188242) (not b!4013645) (not b!4012588) (not b!4013601) (not b!4013730) (not b!4014005) (not b!4013785) (not d!1187922) (not b!4013872) (not b!4013392) (not b!4012818) (not b!4012839) (not d!1188694) (not b!4013700) (not b!4013292) (not b!4013900) (not b!4013950) (not b!4013466) (not b!4013935) (not b!4013914) (not b!4012731) (not b!4013949) (not b!4012625) (not b_next!112325) (not b!4012735) (not b!4014008) (not d!1188470) (not tb!241379) (not b!4013953) (not b!4013495) (not b!4013252) b_and!308411 (not bm!286401) (not d!1188704) (not b!4012922) (not d!1188216) (not b!4013833) (not b!4013973) (not b!4013845) (not b!4013849) (not b_lambda!117079) (not b!4013774) (not b!4013967) (not b!4012630) (not b!4013892) (not b!4012729) (not b!4013246) (not d!1187756) (not b!4013682) (not b!4013719) (not b!4013769) (not b!4013623) (not d!1188416) (not b!4013312) (not b_lambda!117157) (not d!1188426) (not bm!286502) (not b!4012737) (not b!4013531) (not b!4013825) (not b!4014009) (not b!4013317) (not bm!286400) (not b!4013702) (not b!4013897) (not b!4013993) (not bm!286450) (not b!4013212) (not d!1187964) (not b!4013725) (not d!1188684) (not d!1188534) (not d!1187858) (not b!4013790) (not b!4013992) (not b!4013668) (not b!4013911) (not d!1188486) (not b!4013820) (not b!4012837) (not b!4013942) (not d!1188542) (not b!4013766) (not b!4012633) (not b_lambda!117123) (not d!1188432) (not b!4013799) (not b!4013904) (not b_lambda!117081) (not tb!241403) (not b!4013764) (not b!4012596) (not d!1188476) (not d!1188520) (not b_lambda!117155) (not tb!241397) b_and!308381 (not b_lambda!117147) (not b!4013609) (not d!1188526) (not b!4013621) (not d!1188218) (not b!4013310) (not bm!286449) (not d!1187832) (not b!4013721) b_and!308407 (not b!4013827) (not b!4013917) (not d!1188190) (not d!1187904) (not d!1188630) (not b!4013342) (not b!4013921) (not bm!286518) (not d!1187754) (not d!1188468) (not d!1188450) (not b!4013836) (not d!1188620) (not b_lambda!117151) (not b!4013256) (not b!4013859) (not bm!286516) (not b!4012635) (not b!4013780) (not d!1187730) (not b!4012615) (not b!4013979) (not b_lambda!117111) (not bm!286501) (not b!4012603) (not d!1188358) (not d!1188510) (not b!4012769) (not d!1188340) (not b!4012547) (not b!4013830) (not b!4013456) (not b!4012823) (not b!4013941) (not b!4013643) (not b!4013977) (not b!4013744) (not b!4013870) (not b!4013937) (not b!4012602) (not b!4013634) (not d!1188726) (not b!4013672) (not d!1188676) (not b_next!112313) (not b!4012631) (not d!1188180) (not b!4013998) (not d!1188602) (not b!4014002) (not b!4013985) (not b!4012819) (not b!4013756) (not b!4013855) (not b!4012557) (not tb!241317) (not b!4013260) (not b!4013763) (not bm!286451) (not b!4012590) (not b!4013879) (not d!1188540) (not b!4013915) (not d!1188698) (not b!4013884) (not bm!286437) (not b!4013816) (not b!4013294) (not b!4013788) (not b!4012825) (not d!1187846) (not b!4013842) (not b!4012739) (not b!4013349) (not b!4013599) (not tb!241341) (not b!4013954) (not d!1188546) (not bm!286499) (not b!4013983) (not b!4013823) (not d!1188654) (not b!4013679) (not b!4013753) (not tb!241239) (not b!4013462) (not bm!286515) (not b!4013606) (not bm!286392) (not b_lambda!117153) (not b!4013311) (not b!4013699) (not b!4012732) (not b!4014014) (not b!4013215) (not b!4013923) (not bm!286495) (not b!4013875) (not b!4013802) (not b!4012621) (not b!4013433) (not b!4013636) (not d!1188576) (not d!1188480) (not b!4013918) (not b_next!112319) (not b!4013939) (not b!4012617) (not b!4013946) (not b!4013258) (not b!4013997) (not b!4013707) (not b!4013318) (not b!4013313) (not b_next!112317) (not b_lambda!117085) (not b!4013261) (not b!4013749) (not bm!286498) (not d!1187786) (not b!4012609) (not b_lambda!117077) (not b!4013592) (not b!4013307) (not b!4013856) (not b!4013761) (not b!4013217) (not b!4013305) b_and!308413 (not b!4013881) (not bm!286503) (not b!4013355) (not b!4012835) (not b!4013706) (not b!4014004) (not d!1188722) (not d!1188644) (not b!4013966) (not b!4013925) (not b!4012930) (not b!4013688) (not b!4014012) (not b!4013684) (not b!4013938) (not d!1188466) (not b!4013986) (not b!4012553) (not b!4012629) (not b!4012934) (not d!1188682) (not b!4013927) (not bm!286519) (not d!1188302) (not d!1187830) b_and!308405 (not d!1188536) (not b!4013990) (not b!4013222) (not b!4013784) (not b!4012833) (not b!4013288) (not b!4013315) (not b!4013831) (not b!4013703) (not tb!241233) (not d!1188260) (not b!4013972) (not b!4013943) (not b!4013955) (not b!4013812) (not d!1188632) (not b!4013497) (not d!1188672) (not d!1188552) (not b!4012561) (not b!4012627) (not b!4012932) (not d!1188580) (not b!4013640) (not d!1188670) (not b!4013860) (not b!4013460) (not b!4013777) (not b!4013759) (not d!1188422) (not b!4013335) (not b!4013248) (not bm!286512) (not b!4013602) (not b!4013652) (not d!1188550) (not b!4013837) (not b!4012741) (not b!4013631) (not b_lambda!117145) (not d!1187752) (not b!4013913) (not b!4014000) (not bm!286508) (not b!4013987) (not b!4013907) (not b!4013738) (not b!4013982) (not b!4012928) (not d!1188688) (not b!4013731) (not bm!286402) (not d!1187726) (not d!1187780) (not d!1187732) (not b!4013666) (not b!4013933) (not b!4013762) (not d!1187844) (not b!4012743) tp_is_empty!20449 (not d!1188418) (not b!4012733) (not tb!241263) (not b!4013841) (not b!4013711) b_and!308383 (not b!4013981) (not b!4013945) (not b!4013494) (not b!4012604) (not d!1188498) (not b!4013778) (not b!4013806) (not d!1187970) (not b!4012623) (not b!4013464) (not b!4013792) (not b!4013625) (not b!4013254) (not b!4012767) (not b!4013713) (not b!4013968) (not d!1187750) (not b!4013868) (not b!4014010) (not b!4013650) (not b!4013839) (not b!4013951) (not b!4012605) (not b_lambda!117115) (not b!4013996) (not b!4013880) (not d!1188264) (not b!4013853) (not bm!286521) (not b!4012831) (not b!4013656) (not b_lambda!117083) (not b!4013824) (not b!4013971) (not b!4012926) (not b!4013804) (not b!4013282) (not b!4013290) (not b!4013850) (not b!4014013) (not d!1188690) (not b!4012559) (not b!4013926) (not b_lambda!117121) (not bm!286497) (not b!4013740) (not b!4013767) (not d!1188664) (not b!4013250) (not b!4013798) (not d!1188628) (not b!4014006) (not b!4013929) (not b!4013458) (not b!4012300) (not b!4013350) (not d!1188600) (not b!4013768) (not b!4013710) (not d!1188518) (not d!1188658) (not b!4013485) (not b!4013493) (not b!4013786) (not b!4012619) (not b!4013883) (not b!4013257) (not d!1188322) (not b_next!112333) (not b!4013773) (not d!1187826) (not d!1188462) (not b!4012611) (not b!4013891) (not bm!286509) (not b!4012763) (not b!4013734) (not d!1188496) (not tb!241305) (not b!4012555) (not b_lambda!117143) (not b!4013687) (not d!1188662) (not b!4013835) (not b!4013956) (not bm!286500) (not b!4013969) (not b!4013461) (not b!4012598) (not d!1188420) (not b!4012613) (not b!4013899) (not b!4013244) (not b!4012817) (not b!4013970) (not d!1188674) (not d!1188590) (not b!4013597) (not b!4013742) (not b!4012824) (not b!4013662) (not b!4012771) (not b!4013888) (not b!4013775) (not b!4012765) (not d!1188210) (not b!4013903) (not b!4012740) (not b!4013794) (not bm!286496) (not bm!286511) (not d!1188538) (not b!4013808) (not b_lambda!117095) (not d!1188702) (not d!1188528) (not b!4012918) (not b!4013758) (not b!4013333) (not b!4013847) (not b!4013501) (not b!4013771) (not b!4013795) (not d!1188398) (not b!4013664) (not b!4013752) (not b!4013608) (not d!1188236) (not b!4013810) (not d!1188686) (not bm!286510) (not b!4013866) (not b!4013619) (not b!4012744) (not b!4013736) (not b!4013681) (not b!4013750) (not b_next!112327) (not b!4013781) (not b!4012332) (not b!4013723) (not b!4013309) (not b!4013658) (not d!1187874) (not b!4013821) (not b!4012551) (not b!4013316) (not b!4013627) (not b!4013908) (not b!4013893) (not d!1188444) (not b!4012827) (not b!4013776) (not b!4012600) (not b!4013629) (not b!4013829) (not b!4013686) (not b!4013351) (not b!4013593) b_and!308409 (not d!1188188) (not d!1188626) (not b!4013975) (not b!4013334) (not b!4014001) (not b!4012770) (not b!4013807) (not b!4012761) (not b_lambda!117125) (not b!4013604) (not d!1188178) (not b!4013717) (not d!1188472) (not d!1188634) (not b!4013974) (not b!4013488) (not b!4013991) (not b!4013782) (not b!4013814) (not tb!241385) (not bm!286513) (not d!1188424) (not tb!241335) (not b!4013670) (not b!4013989) (not b!4013895) (not b_lambda!117149) (not b!4013633) (not d!1188362) (not b!4013965) (not b!4013660) (not tb!241391) (not d!1188382) (not b!4013286) (not b!4013876) (not b!4013728) (not b!4013932) (not d!1187862) (not b_next!112315) (not bm!286520) (not d!1188454) (not d!1188582) (not d!1188516) (not b!4013253) (not b_next!112335) (not b!4013843) (not b!4013654) (not b!4013356))
(check-sat b_and!308385 (not b_next!112313) (not b_next!112319) (not b_next!112317) b_and!308413 b_and!308405 b_and!308383 (not b_next!112333) (not b_next!112327) b_and!308409 (not b_next!112325) b_and!308411 b_and!308381 b_and!308407 (not b_next!112315) (not b_next!112335))
