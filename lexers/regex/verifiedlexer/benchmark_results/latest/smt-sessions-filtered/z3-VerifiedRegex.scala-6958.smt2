; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368092 () Bool)

(assert start!368092)

(declare-fun b!3925724 () Bool)

(declare-fun b_free!107021 () Bool)

(declare-fun b_next!107725 () Bool)

(assert (=> b!3925724 (= b_free!107021 (not b_next!107725))))

(declare-fun tp!1195252 () Bool)

(declare-fun b_and!299375 () Bool)

(assert (=> b!3925724 (= tp!1195252 b_and!299375)))

(declare-fun b_free!107023 () Bool)

(declare-fun b_next!107727 () Bool)

(assert (=> b!3925724 (= b_free!107023 (not b_next!107727))))

(declare-fun tp!1195258 () Bool)

(declare-fun b_and!299377 () Bool)

(assert (=> b!3925724 (= tp!1195258 b_and!299377)))

(declare-fun b!3925720 () Bool)

(declare-fun b_free!107025 () Bool)

(declare-fun b_next!107729 () Bool)

(assert (=> b!3925720 (= b_free!107025 (not b_next!107729))))

(declare-fun tp!1195251 () Bool)

(declare-fun b_and!299379 () Bool)

(assert (=> b!3925720 (= tp!1195251 b_and!299379)))

(declare-fun b_free!107027 () Bool)

(declare-fun b_next!107731 () Bool)

(assert (=> b!3925720 (= b_free!107027 (not b_next!107731))))

(declare-fun tp!1195254 () Bool)

(declare-fun b_and!299381 () Bool)

(assert (=> b!3925720 (= tp!1195254 b_and!299381)))

(declare-fun b!3925736 () Bool)

(declare-fun b_free!107029 () Bool)

(declare-fun b_next!107733 () Bool)

(assert (=> b!3925736 (= b_free!107029 (not b_next!107733))))

(declare-fun tp!1195257 () Bool)

(declare-fun b_and!299383 () Bool)

(assert (=> b!3925736 (= tp!1195257 b_and!299383)))

(declare-fun b_free!107031 () Bool)

(declare-fun b_next!107735 () Bool)

(assert (=> b!3925736 (= b_free!107031 (not b_next!107735))))

(declare-fun tp!1195264 () Bool)

(declare-fun b_and!299385 () Bool)

(assert (=> b!3925736 (= tp!1195264 b_and!299385)))

(declare-fun b!3925710 () Bool)

(declare-fun e!2428279 () Bool)

(declare-fun e!2428254 () Bool)

(assert (=> b!3925710 (= e!2428279 e!2428254)))

(declare-fun res!1588194 () Bool)

(assert (=> b!3925710 (=> (not res!1588194) (not e!2428254))))

(declare-datatypes ((List!41805 0))(
  ( (Nil!41681) (Cons!41681 (h!47101 (_ BitVec 16)) (t!324940 List!41805)) )
))
(declare-datatypes ((TokenValue!6734 0))(
  ( (FloatLiteralValue!13468 (text!47583 List!41805)) (TokenValueExt!6733 (__x!25685 Int)) (Broken!33670 (value!205972 List!41805)) (Object!6857) (End!6734) (Def!6734) (Underscore!6734) (Match!6734) (Else!6734) (Error!6734) (Case!6734) (If!6734) (Extends!6734) (Abstract!6734) (Class!6734) (Val!6734) (DelimiterValue!13468 (del!6794 List!41805)) (KeywordValue!6740 (value!205973 List!41805)) (CommentValue!13468 (value!205974 List!41805)) (WhitespaceValue!13468 (value!205975 List!41805)) (IndentationValue!6734 (value!205976 List!41805)) (String!47387) (Int32!6734) (Broken!33671 (value!205977 List!41805)) (Boolean!6735) (Unit!59999) (OperatorValue!6737 (op!6794 List!41805)) (IdentifierValue!13468 (value!205978 List!41805)) (IdentifierValue!13469 (value!205979 List!41805)) (WhitespaceValue!13469 (value!205980 List!41805)) (True!13468) (False!13468) (Broken!33672 (value!205981 List!41805)) (Broken!33673 (value!205982 List!41805)) (True!13469) (RightBrace!6734) (RightBracket!6734) (Colon!6734) (Null!6734) (Comma!6734) (LeftBracket!6734) (False!13469) (LeftBrace!6734) (ImaginaryLiteralValue!6734 (text!47584 List!41805)) (StringLiteralValue!20202 (value!205983 List!41805)) (EOFValue!6734 (value!205984 List!41805)) (IdentValue!6734 (value!205985 List!41805)) (DelimiterValue!13469 (value!205986 List!41805)) (DedentValue!6734 (value!205987 List!41805)) (NewLineValue!6734 (value!205988 List!41805)) (IntegerValue!20202 (value!205989 (_ BitVec 32)) (text!47585 List!41805)) (IntegerValue!20203 (value!205990 Int) (text!47586 List!41805)) (Times!6734) (Or!6734) (Equal!6734) (Minus!6734) (Broken!33674 (value!205991 List!41805)) (And!6734) (Div!6734) (LessEqual!6734) (Mod!6734) (Concat!18143) (Not!6734) (Plus!6734) (SpaceValue!6734 (value!205992 List!41805)) (IntegerValue!20204 (value!205993 Int) (text!47587 List!41805)) (StringLiteralValue!20203 (text!47588 List!41805)) (FloatLiteralValue!13469 (text!47589 List!41805)) (BytesLiteralValue!6734 (value!205994 List!41805)) (CommentValue!13469 (value!205995 List!41805)) (StringLiteralValue!20204 (value!205996 List!41805)) (ErrorTokenValue!6734 (msg!6795 List!41805)) )
))
(declare-datatypes ((C!23004 0))(
  ( (C!23005 (val!13596 Int)) )
))
(declare-datatypes ((Regex!11409 0))(
  ( (ElementMatch!11409 (c!682082 C!23004)) (Concat!18144 (regOne!23330 Regex!11409) (regTwo!23330 Regex!11409)) (EmptyExpr!11409) (Star!11409 (reg!11738 Regex!11409)) (EmptyLang!11409) (Union!11409 (regOne!23331 Regex!11409) (regTwo!23331 Regex!11409)) )
))
(declare-datatypes ((String!47388 0))(
  ( (String!47389 (value!205997 String)) )
))
(declare-datatypes ((List!41806 0))(
  ( (Nil!41682) (Cons!41682 (h!47102 C!23004) (t!324941 List!41806)) )
))
(declare-datatypes ((IArray!25435 0))(
  ( (IArray!25436 (innerList!12775 List!41806)) )
))
(declare-datatypes ((Conc!12715 0))(
  ( (Node!12715 (left!31817 Conc!12715) (right!32147 Conc!12715) (csize!25660 Int) (cheight!12926 Int)) (Leaf!19674 (xs!16021 IArray!25435) (csize!25661 Int)) (Empty!12715) )
))
(declare-datatypes ((BalanceConc!25024 0))(
  ( (BalanceConc!25025 (c!682083 Conc!12715)) )
))
(declare-datatypes ((TokenValueInjection!12896 0))(
  ( (TokenValueInjection!12897 (toValue!8956 Int) (toChars!8815 Int)) )
))
(declare-datatypes ((Rule!12808 0))(
  ( (Rule!12809 (regex!6504 Regex!11409) (tag!7364 String!47388) (isSeparator!6504 Bool) (transformation!6504 TokenValueInjection!12896)) )
))
(declare-datatypes ((Token!12146 0))(
  ( (Token!12147 (value!205998 TokenValue!6734) (rule!9442 Rule!12808) (size!31273 Int) (originalCharacters!7104 List!41806)) )
))
(declare-datatypes ((List!41807 0))(
  ( (Nil!41683) (Cons!41683 (h!47103 Token!12146) (t!324942 List!41807)) )
))
(declare-datatypes ((tuple2!40950 0))(
  ( (tuple2!40951 (_1!23609 List!41807) (_2!23609 List!41806)) )
))
(declare-fun lt!1369966 () tuple2!40950)

(declare-datatypes ((LexerInterface!6093 0))(
  ( (LexerInterfaceExt!6090 (__x!25686 Int)) (Lexer!6091) )
))
(declare-fun thiss!20629 () LexerInterface!6093)

(declare-fun suffix!1176 () List!41806)

(declare-datatypes ((List!41808 0))(
  ( (Nil!41684) (Cons!41684 (h!47104 Rule!12808) (t!324943 List!41808)) )
))
(declare-fun rules!2768 () List!41808)

(declare-fun lexList!1861 (LexerInterface!6093 List!41808 List!41806) tuple2!40950)

(assert (=> b!3925710 (= res!1588194 (= (lexList!1861 thiss!20629 rules!2768 suffix!1176) lt!1369966))))

(declare-fun suffixTokens!72 () List!41807)

(declare-fun suffixResult!91 () List!41806)

(assert (=> b!3925710 (= lt!1369966 (tuple2!40951 suffixTokens!72 suffixResult!91))))

(declare-fun bm!284711 () Bool)

(declare-fun call!284716 () tuple2!40950)

(declare-datatypes ((tuple2!40952 0))(
  ( (tuple2!40953 (_1!23610 Token!12146) (_2!23610 List!41806)) )
))
(declare-fun lt!1369937 () tuple2!40952)

(assert (=> bm!284711 (= call!284716 (lexList!1861 thiss!20629 rules!2768 (_2!23610 lt!1369937)))))

(declare-fun b!3925711 () Bool)

(declare-datatypes ((Unit!60000 0))(
  ( (Unit!60001) )
))
(declare-fun e!2428251 () Unit!60000)

(declare-fun Unit!60002 () Unit!60000)

(assert (=> b!3925711 (= e!2428251 Unit!60002)))

(declare-fun lt!1369939 () Int)

(declare-fun lt!1369943 () List!41806)

(declare-fun size!31274 (List!41806) Int)

(assert (=> b!3925711 (= lt!1369939 (size!31274 lt!1369943))))

(declare-fun lt!1369951 () Unit!60000)

(declare-datatypes ((Option!8924 0))(
  ( (None!8923) (Some!8923 (v!39249 tuple2!40952)) )
))
(declare-fun lt!1369947 () Option!8924)

(declare-fun lt!1369940 () List!41806)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1335 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41806 Rule!12808) Unit!60000)

(assert (=> b!3925711 (= lt!1369951 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1335 thiss!20629 rules!2768 lt!1369940 lt!1369943 (_2!23610 (v!39249 lt!1369947)) (rule!9442 (_1!23610 (v!39249 lt!1369947)))))))

(declare-fun lt!1369957 () TokenValue!6734)

(declare-fun lt!1369946 () Int)

(declare-fun maxPrefixOneRule!2467 (LexerInterface!6093 Rule!12808 List!41806) Option!8924)

(assert (=> b!3925711 (= (maxPrefixOneRule!2467 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) lt!1369943) (Some!8923 (tuple2!40953 (Token!12147 lt!1369957 (rule!9442 (_1!23610 (v!39249 lt!1369947))) lt!1369946 lt!1369940) (_2!23610 (v!39249 lt!1369947)))))))

(declare-fun get!13776 (Option!8924) tuple2!40952)

(assert (=> b!3925711 (= lt!1369937 (get!13776 lt!1369947))))

(declare-fun c!682081 () Bool)

(declare-fun lt!1369941 () Int)

(assert (=> b!3925711 (= c!682081 (< (size!31274 (_2!23610 lt!1369937)) lt!1369941))))

(declare-fun lt!1369942 () Unit!60000)

(declare-fun e!2428247 () Unit!60000)

(assert (=> b!3925711 (= lt!1369942 e!2428247)))

(assert (=> b!3925711 false))

(declare-fun b!3925712 () Bool)

(declare-fun e!2428272 () Bool)

(declare-fun tp_is_empty!19789 () Bool)

(declare-fun tp!1195262 () Bool)

(assert (=> b!3925712 (= e!2428272 (and tp_is_empty!19789 tp!1195262))))

(declare-fun e!2428264 () Bool)

(declare-fun b!3925713 () Bool)

(declare-fun tp!1195263 () Bool)

(declare-fun e!2428259 () Bool)

(declare-fun inv!55872 (Token!12146) Bool)

(assert (=> b!3925713 (= e!2428264 (and (inv!55872 (h!47103 suffixTokens!72)) e!2428259 tp!1195263))))

(declare-fun b!3925714 () Bool)

(declare-fun e!2428246 () Bool)

(declare-fun e!2428267 () Bool)

(assert (=> b!3925714 (= e!2428246 e!2428267)))

(declare-fun res!1588183 () Bool)

(assert (=> b!3925714 (=> res!1588183 e!2428267)))

(declare-fun lt!1369962 () List!41806)

(declare-fun lt!1369928 () List!41806)

(assert (=> b!3925714 (= res!1588183 (or (not (= lt!1369928 lt!1369943)) (not (= lt!1369928 lt!1369962))))))

(declare-fun lt!1369934 () List!41806)

(declare-fun ++!10765 (List!41806 List!41806) List!41806)

(assert (=> b!3925714 (= lt!1369928 (++!10765 lt!1369934 suffix!1176))))

(declare-fun b!3925715 () Bool)

(declare-fun e!2428271 () Bool)

(declare-fun e!2428244 () Bool)

(assert (=> b!3925715 (= e!2428271 (not e!2428244))))

(declare-fun res!1588190 () Bool)

(assert (=> b!3925715 (=> res!1588190 e!2428244)))

(assert (=> b!3925715 (= res!1588190 (not (= lt!1369962 lt!1369943)))))

(declare-fun lt!1369948 () tuple2!40950)

(assert (=> b!3925715 (= lt!1369948 (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun lt!1369927 () List!41806)

(assert (=> b!3925715 (and (= (size!31273 (_1!23610 (v!39249 lt!1369947))) lt!1369946) (= (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947))) lt!1369940) (= (v!39249 lt!1369947) (tuple2!40953 (Token!12147 lt!1369957 (rule!9442 (_1!23610 (v!39249 lt!1369947))) lt!1369946 lt!1369940) lt!1369927)))))

(assert (=> b!3925715 (= lt!1369946 (size!31274 lt!1369940))))

(declare-fun e!2428260 () Bool)

(assert (=> b!3925715 e!2428260))

(declare-fun res!1588201 () Bool)

(assert (=> b!3925715 (=> (not res!1588201) (not e!2428260))))

(assert (=> b!3925715 (= res!1588201 (= (value!205998 (_1!23610 (v!39249 lt!1369947))) lt!1369957))))

(declare-fun apply!9743 (TokenValueInjection!12896 BalanceConc!25024) TokenValue!6734)

(declare-fun seqFromList!4771 (List!41806) BalanceConc!25024)

(assert (=> b!3925715 (= lt!1369957 (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (seqFromList!4771 lt!1369940)))))

(assert (=> b!3925715 (= (_2!23610 (v!39249 lt!1369947)) lt!1369927)))

(declare-fun lt!1369932 () Unit!60000)

(declare-fun lemmaSamePrefixThenSameSuffix!1820 (List!41806 List!41806 List!41806 List!41806 List!41806) Unit!60000)

(assert (=> b!3925715 (= lt!1369932 (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369927 lt!1369943))))

(declare-fun getSuffix!2054 (List!41806 List!41806) List!41806)

(assert (=> b!3925715 (= lt!1369927 (getSuffix!2054 lt!1369943 lt!1369940))))

(declare-fun isPrefix!3599 (List!41806 List!41806) Bool)

(assert (=> b!3925715 (isPrefix!3599 lt!1369940 lt!1369962)))

(assert (=> b!3925715 (= lt!1369962 (++!10765 lt!1369940 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun lt!1369944 () Unit!60000)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2462 (List!41806 List!41806) Unit!60000)

(assert (=> b!3925715 (= lt!1369944 (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369940 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun list!15487 (BalanceConc!25024) List!41806)

(declare-fun charsOf!4328 (Token!12146) BalanceConc!25024)

(assert (=> b!3925715 (= lt!1369940 (list!15487 (charsOf!4328 (_1!23610 (v!39249 lt!1369947)))))))

(declare-fun ruleValid!2452 (LexerInterface!6093 Rule!12808) Bool)

(assert (=> b!3925715 (ruleValid!2452 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))))))

(declare-fun lt!1369958 () Unit!60000)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1532 (LexerInterface!6093 Rule!12808 List!41808) Unit!60000)

(assert (=> b!3925715 (= lt!1369958 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1532 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) rules!2768))))

(declare-fun lt!1369931 () Unit!60000)

(declare-fun lemmaCharactersSize!1161 (Token!12146) Unit!60000)

(assert (=> b!3925715 (= lt!1369931 (lemmaCharactersSize!1161 (_1!23610 (v!39249 lt!1369947))))))

(declare-fun b!3925716 () Bool)

(declare-fun e!2428261 () Bool)

(declare-fun tp!1195260 () Bool)

(assert (=> b!3925716 (= e!2428261 (and tp_is_empty!19789 tp!1195260))))

(declare-fun b!3925717 () Bool)

(declare-fun e!2428253 () Bool)

(declare-fun e!2428248 () Bool)

(assert (=> b!3925717 (= e!2428253 e!2428248)))

(declare-fun res!1588196 () Bool)

(assert (=> b!3925717 (=> res!1588196 e!2428248)))

(declare-fun prefix!426 () List!41806)

(assert (=> b!3925717 (= res!1588196 (>= lt!1369946 (size!31274 prefix!426)))))

(assert (=> b!3925717 (isPrefix!3599 lt!1369940 prefix!426)))

(declare-fun lt!1369938 () Unit!60000)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!277 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> b!3925717 (= lt!1369938 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!277 prefix!426 lt!1369940 lt!1369943))))

(assert (=> b!3925717 (isPrefix!3599 prefix!426 lt!1369943)))

(declare-fun lt!1369961 () Unit!60000)

(assert (=> b!3925717 (= lt!1369961 (lemmaConcatTwoListThenFirstIsPrefix!2462 prefix!426 suffix!1176))))

(declare-fun b!3925718 () Bool)

(assert (=> b!3925718 (= e!2428260 (= (size!31273 (_1!23610 (v!39249 lt!1369947))) (size!31274 (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947))))))))

(declare-fun b!3925719 () Bool)

(declare-fun e!2428245 () Unit!60000)

(declare-fun Unit!60003 () Unit!60000)

(assert (=> b!3925719 (= e!2428245 Unit!60003)))

(declare-fun lt!1369953 () List!41807)

(declare-fun lt!1369964 () Unit!60000)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!104 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41807 List!41806 List!41807) Unit!60000)

(assert (=> b!3925719 (= lt!1369964 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!104 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91 lt!1369953))))

(declare-fun res!1588186 () Bool)

(declare-fun ++!10766 (List!41807 List!41807) List!41807)

(assert (=> b!3925719 (= res!1588186 (not (= call!284716 (tuple2!40951 (++!10766 lt!1369953 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2428249 () Bool)

(assert (=> b!3925719 (=> (not res!1588186) (not e!2428249))))

(assert (=> b!3925719 e!2428249))

(declare-fun e!2428276 () Bool)

(assert (=> b!3925720 (= e!2428276 (and tp!1195251 tp!1195254))))

(declare-fun b!3925721 () Bool)

(declare-fun res!1588199 () Bool)

(declare-fun e!2428280 () Bool)

(assert (=> b!3925721 (=> (not res!1588199) (not e!2428280))))

(declare-fun isEmpty!24836 (List!41808) Bool)

(assert (=> b!3925721 (= res!1588199 (not (isEmpty!24836 rules!2768)))))

(declare-fun b!3925722 () Bool)

(declare-fun prefixTokens!80 () List!41807)

(declare-fun e!2428277 () Bool)

(declare-fun tail!6049 (List!41807) List!41807)

(assert (=> b!3925722 (= e!2428277 (= lt!1369948 (tuple2!40951 (++!10766 (tail!6049 prefixTokens!80) suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1369960 () List!41806)

(declare-fun lt!1369929 () List!41806)

(assert (=> b!3925722 (isPrefix!3599 lt!1369960 lt!1369929)))

(declare-fun lt!1369954 () Unit!60000)

(assert (=> b!3925722 (= lt!1369954 (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369960 suffix!1176))))

(declare-fun b!3925723 () Bool)

(declare-fun e!2428274 () Bool)

(declare-fun e!2428266 () Bool)

(declare-fun tp!1195250 () Bool)

(declare-fun inv!21 (TokenValue!6734) Bool)

(assert (=> b!3925723 (= e!2428274 (and (inv!21 (value!205998 (h!47103 prefixTokens!80))) e!2428266 tp!1195250))))

(declare-fun e!2428273 () Bool)

(assert (=> b!3925724 (= e!2428273 (and tp!1195252 tp!1195258))))

(declare-fun res!1588197 () Bool)

(assert (=> start!368092 (=> (not res!1588197) (not e!2428280))))

(get-info :version)

(assert (=> start!368092 (= res!1588197 ((_ is Lexer!6091) thiss!20629))))

(assert (=> start!368092 e!2428280))

(assert (=> start!368092 e!2428261))

(assert (=> start!368092 true))

(declare-fun e!2428275 () Bool)

(assert (=> start!368092 e!2428275))

(declare-fun e!2428250 () Bool)

(assert (=> start!368092 e!2428250))

(declare-fun e!2428262 () Bool)

(assert (=> start!368092 e!2428262))

(assert (=> start!368092 e!2428264))

(assert (=> start!368092 e!2428272))

(declare-fun b!3925725 () Bool)

(declare-fun e!2428263 () Bool)

(assert (=> b!3925725 (= e!2428263 false)))

(declare-fun b!3925726 () Bool)

(declare-fun res!1588189 () Bool)

(assert (=> b!3925726 (=> res!1588189 e!2428244)))

(assert (=> b!3925726 (= res!1588189 (or (not (= lt!1369948 (tuple2!40951 (_1!23609 lt!1369948) (_2!23609 lt!1369948)))) (= (_2!23610 (v!39249 lt!1369947)) suffix!1176)))))

(declare-fun b!3925727 () Bool)

(declare-fun e!2428265 () Bool)

(declare-fun tp!1195259 () Bool)

(assert (=> b!3925727 (= e!2428250 (and e!2428265 tp!1195259))))

(declare-fun b!3925728 () Bool)

(declare-fun tp!1195261 () Bool)

(assert (=> b!3925728 (= e!2428275 (and tp_is_empty!19789 tp!1195261))))

(declare-fun b!3925729 () Bool)

(assert (=> b!3925729 (= e!2428244 e!2428253)))

(declare-fun res!1588182 () Bool)

(assert (=> b!3925729 (=> res!1588182 e!2428253)))

(declare-fun lt!1369952 () Int)

(assert (=> b!3925729 (= res!1588182 (<= lt!1369952 lt!1369941))))

(declare-fun lt!1369935 () Unit!60000)

(declare-fun e!2428258 () Unit!60000)

(assert (=> b!3925729 (= lt!1369935 e!2428258)))

(declare-fun c!682079 () Bool)

(assert (=> b!3925729 (= c!682079 (= lt!1369952 lt!1369941))))

(declare-fun lt!1369930 () Unit!60000)

(assert (=> b!3925729 (= lt!1369930 e!2428251)))

(declare-fun c!682080 () Bool)

(assert (=> b!3925729 (= c!682080 (< lt!1369952 lt!1369941))))

(assert (=> b!3925729 (= lt!1369941 (size!31274 suffix!1176))))

(assert (=> b!3925729 (= lt!1369952 (size!31274 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun b!3925730 () Bool)

(declare-fun tp!1195253 () Bool)

(assert (=> b!3925730 (= e!2428262 (and (inv!55872 (h!47103 prefixTokens!80)) e!2428274 tp!1195253))))

(declare-fun b!3925731 () Bool)

(declare-fun res!1588188 () Bool)

(assert (=> b!3925731 (=> (not res!1588188) (not e!2428280))))

(declare-fun isEmpty!24837 (List!41806) Bool)

(assert (=> b!3925731 (= res!1588188 (not (isEmpty!24837 prefix!426)))))

(declare-fun b!3925732 () Bool)

(assert (=> b!3925732 (= e!2428248 e!2428246)))

(declare-fun res!1588195 () Bool)

(assert (=> b!3925732 (=> res!1588195 e!2428246)))

(assert (=> b!3925732 (= res!1588195 (not (= lt!1369934 prefix!426)))))

(assert (=> b!3925732 (= lt!1369934 (++!10765 lt!1369940 lt!1369960))))

(assert (=> b!3925732 (= lt!1369960 (getSuffix!2054 prefix!426 lt!1369940))))

(declare-fun b!3925733 () Bool)

(declare-fun c!682078 () Bool)

(declare-fun isEmpty!24838 (List!41807) Bool)

(assert (=> b!3925733 (= c!682078 (isEmpty!24838 lt!1369953))))

(assert (=> b!3925733 (= lt!1369953 (tail!6049 prefixTokens!80))))

(assert (=> b!3925733 (= e!2428247 e!2428245)))

(declare-fun b!3925734 () Bool)

(declare-fun Unit!60004 () Unit!60000)

(assert (=> b!3925734 (= e!2428258 Unit!60004)))

(declare-fun lt!1369949 () Unit!60000)

(assert (=> b!3925734 (= lt!1369949 (lemmaConcatTwoListThenFirstIsPrefix!2462 prefix!426 suffix!1176))))

(assert (=> b!3925734 (isPrefix!3599 prefix!426 lt!1369943)))

(declare-fun lt!1369950 () Unit!60000)

(declare-fun lemmaIsPrefixSameLengthThenSameList!795 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> b!3925734 (= lt!1369950 (lemmaIsPrefixSameLengthThenSameList!795 lt!1369940 prefix!426 lt!1369943))))

(assert (=> b!3925734 (= lt!1369940 prefix!426)))

(declare-fun lt!1369967 () Unit!60000)

(assert (=> b!3925734 (= lt!1369967 (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) prefix!426 suffix!1176 lt!1369943))))

(assert (=> b!3925734 false))

(declare-fun b!3925735 () Bool)

(declare-fun Unit!60005 () Unit!60000)

(assert (=> b!3925735 (= e!2428251 Unit!60005)))

(declare-fun e!2428252 () Bool)

(assert (=> b!3925736 (= e!2428252 (and tp!1195257 tp!1195264))))

(declare-fun b!3925737 () Bool)

(declare-fun e!2428256 () Bool)

(assert (=> b!3925737 (= e!2428267 e!2428256)))

(declare-fun res!1588198 () Bool)

(assert (=> b!3925737 (=> res!1588198 e!2428256)))

(declare-fun lt!1369956 () List!41806)

(assert (=> b!3925737 (= res!1588198 (or (not (= lt!1369943 lt!1369928)) (not (= lt!1369943 lt!1369956)) (not (= lt!1369962 lt!1369956))))))

(assert (=> b!3925737 (= lt!1369928 lt!1369956)))

(assert (=> b!3925737 (= lt!1369956 (++!10765 lt!1369940 lt!1369929))))

(assert (=> b!3925737 (= lt!1369929 (++!10765 lt!1369960 suffix!1176))))

(declare-fun lt!1369963 () Unit!60000)

(declare-fun lemmaConcatAssociativity!2300 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> b!3925737 (= lt!1369963 (lemmaConcatAssociativity!2300 lt!1369940 lt!1369960 suffix!1176))))

(declare-fun b!3925738 () Bool)

(assert (=> b!3925738 (= e!2428254 e!2428271)))

(declare-fun res!1588200 () Bool)

(assert (=> b!3925738 (=> (not res!1588200) (not e!2428271))))

(assert (=> b!3925738 (= res!1588200 ((_ is Some!8923) lt!1369947))))

(declare-fun maxPrefix!3397 (LexerInterface!6093 List!41808 List!41806) Option!8924)

(assert (=> b!3925738 (= lt!1369947 (maxPrefix!3397 thiss!20629 rules!2768 lt!1369943))))

(declare-fun b!3925739 () Bool)

(declare-fun Unit!60006 () Unit!60000)

(assert (=> b!3925739 (= e!2428247 Unit!60006)))

(declare-fun b!3925740 () Bool)

(declare-fun res!1588192 () Bool)

(assert (=> b!3925740 (=> res!1588192 e!2428244)))

(declare-fun lt!1369933 () tuple2!40950)

(assert (=> b!3925740 (= res!1588192 (not (= lt!1369933 (tuple2!40951 (++!10766 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683) (_1!23609 lt!1369948)) (_2!23609 lt!1369948)))))))

(declare-fun b!3925741 () Bool)

(declare-fun res!1588184 () Bool)

(assert (=> b!3925741 (=> res!1588184 e!2428253)))

(declare-fun head!8323 (List!41807) Token!12146)

(assert (=> b!3925741 (= res!1588184 (not (= (head!8323 prefixTokens!80) (_1!23610 (v!39249 lt!1369947)))))))

(declare-fun b!3925742 () Bool)

(declare-fun e!2428255 () Bool)

(declare-fun tp!1195255 () Bool)

(declare-fun inv!55869 (String!47388) Bool)

(declare-fun inv!55873 (TokenValueInjection!12896) Bool)

(assert (=> b!3925742 (= e!2428255 (and tp!1195255 (inv!55869 (tag!7364 (rule!9442 (h!47103 suffixTokens!72)))) (inv!55873 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) e!2428273))))

(declare-fun b!3925743 () Bool)

(assert (=> b!3925743 (= e!2428280 e!2428279)))

(declare-fun res!1588191 () Bool)

(assert (=> b!3925743 (=> (not res!1588191) (not e!2428279))))

(declare-fun lt!1369959 () List!41807)

(assert (=> b!3925743 (= res!1588191 (= lt!1369933 (tuple2!40951 lt!1369959 suffixResult!91)))))

(assert (=> b!3925743 (= lt!1369933 (lexList!1861 thiss!20629 rules!2768 lt!1369943))))

(assert (=> b!3925743 (= lt!1369959 (++!10766 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3925743 (= lt!1369943 (++!10765 prefix!426 suffix!1176))))

(declare-fun b!3925744 () Bool)

(declare-fun res!1588193 () Bool)

(assert (=> b!3925744 (=> (not res!1588193) (not e!2428280))))

(assert (=> b!3925744 (= res!1588193 (not (isEmpty!24838 prefixTokens!80)))))

(declare-fun b!3925745 () Bool)

(declare-fun tp!1195266 () Bool)

(assert (=> b!3925745 (= e!2428259 (and (inv!21 (value!205998 (h!47103 suffixTokens!72))) e!2428255 tp!1195266))))

(declare-fun b!3925746 () Bool)

(assert (=> b!3925746 (= e!2428256 e!2428277)))

(declare-fun res!1588185 () Bool)

(assert (=> b!3925746 (=> res!1588185 e!2428277)))

(assert (=> b!3925746 (= res!1588185 (not (= lt!1369929 (_2!23610 (v!39249 lt!1369947)))))))

(assert (=> b!3925746 (= (_2!23610 (v!39249 lt!1369947)) lt!1369929)))

(declare-fun lt!1369955 () Unit!60000)

(assert (=> b!3925746 (= lt!1369955 (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369929 lt!1369943))))

(assert (=> b!3925746 (isPrefix!3599 lt!1369940 lt!1369956)))

(declare-fun lt!1369936 () Unit!60000)

(assert (=> b!3925746 (= lt!1369936 (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369940 lt!1369929))))

(declare-fun b!3925747 () Bool)

(declare-fun Unit!60007 () Unit!60000)

(assert (=> b!3925747 (= e!2428258 Unit!60007)))

(declare-fun b!3925748 () Bool)

(declare-fun Unit!60008 () Unit!60000)

(assert (=> b!3925748 (= e!2428245 Unit!60008)))

(declare-fun lt!1369945 () Unit!60000)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!552 (List!41806 List!41806 List!41806 List!41806) Unit!60000)

(assert (=> b!3925748 (= lt!1369945 (lemmaConcatSameAndSameSizesThenSameLists!552 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 (_2!23610 lt!1369937)))))

(assert (=> b!3925748 (= (_2!23610 (v!39249 lt!1369947)) (_2!23610 lt!1369937))))

(declare-fun lt!1369965 () Unit!60000)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!104 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41807 List!41806) Unit!60000)

(assert (=> b!3925748 (= lt!1369965 (lemmaLexWithSmallerInputCannotProduceSameResults!104 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91))))

(declare-fun res!1588181 () Bool)

(assert (=> b!3925748 (= res!1588181 (not (= call!284716 lt!1369966)))))

(assert (=> b!3925748 (=> (not res!1588181) (not e!2428263))))

(assert (=> b!3925748 e!2428263))

(declare-fun b!3925749 () Bool)

(declare-fun res!1588187 () Bool)

(assert (=> b!3925749 (=> (not res!1588187) (not e!2428280))))

(declare-fun rulesInvariant!5436 (LexerInterface!6093 List!41808) Bool)

(assert (=> b!3925749 (= res!1588187 (rulesInvariant!5436 thiss!20629 rules!2768))))

(declare-fun b!3925750 () Bool)

(declare-fun tp!1195256 () Bool)

(assert (=> b!3925750 (= e!2428266 (and tp!1195256 (inv!55869 (tag!7364 (rule!9442 (h!47103 prefixTokens!80)))) (inv!55873 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) e!2428252))))

(declare-fun b!3925751 () Bool)

(declare-fun tp!1195265 () Bool)

(assert (=> b!3925751 (= e!2428265 (and tp!1195265 (inv!55869 (tag!7364 (h!47104 rules!2768))) (inv!55873 (transformation!6504 (h!47104 rules!2768))) e!2428276))))

(declare-fun b!3925752 () Bool)

(assert (=> b!3925752 (= e!2428249 false)))

(assert (= (and start!368092 res!1588197) b!3925721))

(assert (= (and b!3925721 res!1588199) b!3925749))

(assert (= (and b!3925749 res!1588187) b!3925744))

(assert (= (and b!3925744 res!1588193) b!3925731))

(assert (= (and b!3925731 res!1588188) b!3925743))

(assert (= (and b!3925743 res!1588191) b!3925710))

(assert (= (and b!3925710 res!1588194) b!3925738))

(assert (= (and b!3925738 res!1588200) b!3925715))

(assert (= (and b!3925715 res!1588201) b!3925718))

(assert (= (and b!3925715 (not res!1588190)) b!3925740))

(assert (= (and b!3925740 (not res!1588192)) b!3925726))

(assert (= (and b!3925726 (not res!1588189)) b!3925729))

(assert (= (and b!3925729 c!682080) b!3925711))

(assert (= (and b!3925729 (not c!682080)) b!3925735))

(assert (= (and b!3925711 c!682081) b!3925733))

(assert (= (and b!3925711 (not c!682081)) b!3925739))

(assert (= (and b!3925733 c!682078) b!3925748))

(assert (= (and b!3925733 (not c!682078)) b!3925719))

(assert (= (and b!3925748 res!1588181) b!3925725))

(assert (= (and b!3925719 res!1588186) b!3925752))

(assert (= (or b!3925748 b!3925719) bm!284711))

(assert (= (and b!3925729 c!682079) b!3925734))

(assert (= (and b!3925729 (not c!682079)) b!3925747))

(assert (= (and b!3925729 (not res!1588182)) b!3925741))

(assert (= (and b!3925741 (not res!1588184)) b!3925717))

(assert (= (and b!3925717 (not res!1588196)) b!3925732))

(assert (= (and b!3925732 (not res!1588195)) b!3925714))

(assert (= (and b!3925714 (not res!1588183)) b!3925737))

(assert (= (and b!3925737 (not res!1588198)) b!3925746))

(assert (= (and b!3925746 (not res!1588185)) b!3925722))

(assert (= (and start!368092 ((_ is Cons!41682) suffixResult!91)) b!3925716))

(assert (= (and start!368092 ((_ is Cons!41682) suffix!1176)) b!3925728))

(assert (= b!3925751 b!3925720))

(assert (= b!3925727 b!3925751))

(assert (= (and start!368092 ((_ is Cons!41684) rules!2768)) b!3925727))

(assert (= b!3925750 b!3925736))

(assert (= b!3925723 b!3925750))

(assert (= b!3925730 b!3925723))

(assert (= (and start!368092 ((_ is Cons!41683) prefixTokens!80)) b!3925730))

(assert (= b!3925742 b!3925724))

(assert (= b!3925745 b!3925742))

(assert (= b!3925713 b!3925745))

(assert (= (and start!368092 ((_ is Cons!41683) suffixTokens!72)) b!3925713))

(assert (= (and start!368092 ((_ is Cons!41682) prefix!426)) b!3925712))

(declare-fun m!4489831 () Bool)

(assert (=> b!3925737 m!4489831))

(declare-fun m!4489833 () Bool)

(assert (=> b!3925737 m!4489833))

(declare-fun m!4489835 () Bool)

(assert (=> b!3925737 m!4489835))

(declare-fun m!4489837 () Bool)

(assert (=> b!3925711 m!4489837))

(declare-fun m!4489839 () Bool)

(assert (=> b!3925711 m!4489839))

(declare-fun m!4489841 () Bool)

(assert (=> b!3925711 m!4489841))

(declare-fun m!4489843 () Bool)

(assert (=> b!3925711 m!4489843))

(declare-fun m!4489845 () Bool)

(assert (=> b!3925711 m!4489845))

(declare-fun m!4489847 () Bool)

(assert (=> bm!284711 m!4489847))

(declare-fun m!4489849 () Bool)

(assert (=> b!3925717 m!4489849))

(declare-fun m!4489851 () Bool)

(assert (=> b!3925717 m!4489851))

(declare-fun m!4489853 () Bool)

(assert (=> b!3925717 m!4489853))

(declare-fun m!4489855 () Bool)

(assert (=> b!3925717 m!4489855))

(declare-fun m!4489857 () Bool)

(assert (=> b!3925717 m!4489857))

(declare-fun m!4489859 () Bool)

(assert (=> b!3925721 m!4489859))

(assert (=> b!3925734 m!4489857))

(assert (=> b!3925734 m!4489855))

(declare-fun m!4489861 () Bool)

(assert (=> b!3925734 m!4489861))

(declare-fun m!4489863 () Bool)

(assert (=> b!3925734 m!4489863))

(declare-fun m!4489865 () Bool)

(assert (=> b!3925738 m!4489865))

(declare-fun m!4489867 () Bool)

(assert (=> b!3925723 m!4489867))

(declare-fun m!4489869 () Bool)

(assert (=> b!3925710 m!4489869))

(declare-fun m!4489871 () Bool)

(assert (=> b!3925730 m!4489871))

(declare-fun m!4489873 () Bool)

(assert (=> b!3925714 m!4489873))

(declare-fun m!4489875 () Bool)

(assert (=> b!3925745 m!4489875))

(declare-fun m!4489877 () Bool)

(assert (=> b!3925741 m!4489877))

(declare-fun m!4489879 () Bool)

(assert (=> b!3925731 m!4489879))

(declare-fun m!4489881 () Bool)

(assert (=> b!3925740 m!4489881))

(declare-fun m!4489883 () Bool)

(assert (=> b!3925749 m!4489883))

(declare-fun m!4489885 () Bool)

(assert (=> b!3925746 m!4489885))

(declare-fun m!4489887 () Bool)

(assert (=> b!3925746 m!4489887))

(declare-fun m!4489889 () Bool)

(assert (=> b!3925746 m!4489889))

(declare-fun m!4489891 () Bool)

(assert (=> b!3925743 m!4489891))

(declare-fun m!4489893 () Bool)

(assert (=> b!3925743 m!4489893))

(declare-fun m!4489895 () Bool)

(assert (=> b!3925743 m!4489895))

(declare-fun m!4489897 () Bool)

(assert (=> b!3925744 m!4489897))

(declare-fun m!4489899 () Bool)

(assert (=> b!3925713 m!4489899))

(declare-fun m!4489901 () Bool)

(assert (=> b!3925715 m!4489901))

(declare-fun m!4489903 () Bool)

(assert (=> b!3925715 m!4489903))

(declare-fun m!4489905 () Bool)

(assert (=> b!3925715 m!4489905))

(declare-fun m!4489907 () Bool)

(assert (=> b!3925715 m!4489907))

(declare-fun m!4489909 () Bool)

(assert (=> b!3925715 m!4489909))

(declare-fun m!4489911 () Bool)

(assert (=> b!3925715 m!4489911))

(declare-fun m!4489913 () Bool)

(assert (=> b!3925715 m!4489913))

(declare-fun m!4489915 () Bool)

(assert (=> b!3925715 m!4489915))

(declare-fun m!4489917 () Bool)

(assert (=> b!3925715 m!4489917))

(declare-fun m!4489919 () Bool)

(assert (=> b!3925715 m!4489919))

(declare-fun m!4489921 () Bool)

(assert (=> b!3925715 m!4489921))

(assert (=> b!3925715 m!4489915))

(declare-fun m!4489923 () Bool)

(assert (=> b!3925715 m!4489923))

(declare-fun m!4489925 () Bool)

(assert (=> b!3925715 m!4489925))

(assert (=> b!3925715 m!4489901))

(declare-fun m!4489927 () Bool)

(assert (=> b!3925715 m!4489927))

(declare-fun m!4489929 () Bool)

(assert (=> b!3925748 m!4489929))

(declare-fun m!4489931 () Bool)

(assert (=> b!3925748 m!4489931))

(declare-fun m!4489933 () Bool)

(assert (=> b!3925718 m!4489933))

(declare-fun m!4489935 () Bool)

(assert (=> b!3925729 m!4489935))

(declare-fun m!4489937 () Bool)

(assert (=> b!3925729 m!4489937))

(declare-fun m!4489939 () Bool)

(assert (=> b!3925750 m!4489939))

(declare-fun m!4489941 () Bool)

(assert (=> b!3925750 m!4489941))

(declare-fun m!4489943 () Bool)

(assert (=> b!3925733 m!4489943))

(declare-fun m!4489945 () Bool)

(assert (=> b!3925733 m!4489945))

(assert (=> b!3925722 m!4489945))

(assert (=> b!3925722 m!4489945))

(declare-fun m!4489947 () Bool)

(assert (=> b!3925722 m!4489947))

(declare-fun m!4489949 () Bool)

(assert (=> b!3925722 m!4489949))

(declare-fun m!4489951 () Bool)

(assert (=> b!3925722 m!4489951))

(declare-fun m!4489953 () Bool)

(assert (=> b!3925732 m!4489953))

(declare-fun m!4489955 () Bool)

(assert (=> b!3925732 m!4489955))

(declare-fun m!4489957 () Bool)

(assert (=> b!3925719 m!4489957))

(declare-fun m!4489959 () Bool)

(assert (=> b!3925719 m!4489959))

(declare-fun m!4489961 () Bool)

(assert (=> b!3925742 m!4489961))

(declare-fun m!4489963 () Bool)

(assert (=> b!3925742 m!4489963))

(declare-fun m!4489965 () Bool)

(assert (=> b!3925751 m!4489965))

(declare-fun m!4489967 () Bool)

(assert (=> b!3925751 m!4489967))

(check-sat (not b!3925728) (not b_next!107735) b_and!299375 b_and!299381 b_and!299383 (not b!3925732) tp_is_empty!19789 (not b!3925715) (not b!3925722) (not b!3925741) (not b!3925729) (not b!3925731) (not b_next!107725) b_and!299379 b_and!299377 (not b_next!107727) (not b_next!107729) (not b!3925737) (not b!3925743) (not b!3925719) (not bm!284711) (not b!3925746) (not b!3925730) (not b!3925749) (not b!3925721) (not b!3925718) (not b!3925716) (not b!3925742) (not b!3925745) (not b!3925712) (not b_next!107733) (not b!3925740) b_and!299385 (not b_next!107731) (not b!3925717) (not b!3925710) (not b!3925751) (not b!3925750) (not b!3925748) (not b!3925734) (not b!3925714) (not b!3925713) (not b!3925727) (not b!3925711) (not b!3925723) (not b!3925738) (not b!3925744) (not b!3925733))
(check-sat (not b_next!107725) (not b_next!107735) b_and!299375 b_and!299381 b_and!299383 (not b_next!107733) b_and!299379 b_and!299377 (not b_next!107727) (not b_next!107729) b_and!299385 (not b_next!107731))
(get-model)

(declare-fun d!1163645 () Bool)

(declare-fun res!1588251 () Bool)

(declare-fun e!2428311 () Bool)

(assert (=> d!1163645 (=> (not res!1588251) (not e!2428311))))

(declare-fun rulesValid!2527 (LexerInterface!6093 List!41808) Bool)

(assert (=> d!1163645 (= res!1588251 (rulesValid!2527 thiss!20629 rules!2768))))

(assert (=> d!1163645 (= (rulesInvariant!5436 thiss!20629 rules!2768) e!2428311)))

(declare-fun b!3925805 () Bool)

(declare-datatypes ((List!41810 0))(
  ( (Nil!41686) (Cons!41686 (h!47106 String!47388) (t!325041 List!41810)) )
))
(declare-fun noDuplicateTag!2528 (LexerInterface!6093 List!41808 List!41810) Bool)

(assert (=> b!3925805 (= e!2428311 (noDuplicateTag!2528 thiss!20629 rules!2768 Nil!41686))))

(assert (= (and d!1163645 res!1588251) b!3925805))

(declare-fun m!4490039 () Bool)

(assert (=> d!1163645 m!4490039))

(declare-fun m!4490041 () Bool)

(assert (=> b!3925805 m!4490041))

(assert (=> b!3925749 d!1163645))

(declare-fun d!1163649 () Bool)

(assert (=> d!1163649 (= (inv!55869 (tag!7364 (rule!9442 (h!47103 prefixTokens!80)))) (= (mod (str.len (value!205997 (tag!7364 (rule!9442 (h!47103 prefixTokens!80))))) 2) 0))))

(assert (=> b!3925750 d!1163649))

(declare-fun d!1163651 () Bool)

(declare-fun res!1588258 () Bool)

(declare-fun e!2428326 () Bool)

(assert (=> d!1163651 (=> (not res!1588258) (not e!2428326))))

(declare-fun semiInverseModEq!2793 (Int Int) Bool)

(assert (=> d!1163651 (= res!1588258 (semiInverseModEq!2793 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toValue!8956 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))))))

(assert (=> d!1163651 (= (inv!55873 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) e!2428326)))

(declare-fun b!3925828 () Bool)

(declare-fun equivClasses!2692 (Int Int) Bool)

(assert (=> b!3925828 (= e!2428326 (equivClasses!2692 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toValue!8956 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))))))

(assert (= (and d!1163651 res!1588258) b!3925828))

(declare-fun m!4490057 () Bool)

(assert (=> d!1163651 m!4490057))

(declare-fun m!4490059 () Bool)

(assert (=> b!3925828 m!4490059))

(assert (=> b!3925750 d!1163651))

(declare-fun d!1163659 () Bool)

(assert (=> d!1163659 (and (= lt!1369940 lt!1369940) (= (_2!23610 (v!39249 lt!1369947)) (_2!23610 lt!1369937)))))

(declare-fun lt!1370003 () Unit!60000)

(declare-fun choose!23293 (List!41806 List!41806 List!41806 List!41806) Unit!60000)

(assert (=> d!1163659 (= lt!1370003 (choose!23293 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 (_2!23610 lt!1369937)))))

(assert (=> d!1163659 (= (++!10765 lt!1369940 (_2!23610 (v!39249 lt!1369947))) (++!10765 lt!1369940 (_2!23610 lt!1369937)))))

(assert (=> d!1163659 (= (lemmaConcatSameAndSameSizesThenSameLists!552 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 (_2!23610 lt!1369937)) lt!1370003)))

(declare-fun bs!585976 () Bool)

(assert (= bs!585976 d!1163659))

(declare-fun m!4490065 () Bool)

(assert (=> bs!585976 m!4490065))

(assert (=> bs!585976 m!4489909))

(declare-fun m!4490067 () Bool)

(assert (=> bs!585976 m!4490067))

(assert (=> b!3925748 d!1163659))

(declare-fun d!1163665 () Bool)

(assert (=> d!1163665 (not (= (lexList!1861 thiss!20629 rules!2768 (_2!23610 lt!1369937)) (tuple2!40951 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1370028 () Unit!60000)

(declare-fun choose!23294 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41807 List!41806) Unit!60000)

(assert (=> d!1163665 (= lt!1370028 (choose!23294 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91))))

(assert (=> d!1163665 (not (isEmpty!24836 rules!2768))))

(assert (=> d!1163665 (= (lemmaLexWithSmallerInputCannotProduceSameResults!104 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91) lt!1370028)))

(declare-fun bs!585979 () Bool)

(assert (= bs!585979 d!1163665))

(assert (=> bs!585979 m!4489847))

(declare-fun m!4490161 () Bool)

(assert (=> bs!585979 m!4490161))

(assert (=> bs!585979 m!4489859))

(assert (=> b!3925748 d!1163665))

(declare-fun b!3925925 () Bool)

(declare-fun e!2428386 () Bool)

(declare-fun inv!17 (TokenValue!6734) Bool)

(assert (=> b!3925925 (= e!2428386 (inv!17 (value!205998 (h!47103 suffixTokens!72))))))

(declare-fun b!3925926 () Bool)

(declare-fun res!1588294 () Bool)

(declare-fun e!2428384 () Bool)

(assert (=> b!3925926 (=> res!1588294 e!2428384)))

(assert (=> b!3925926 (= res!1588294 (not ((_ is IntegerValue!20204) (value!205998 (h!47103 suffixTokens!72)))))))

(assert (=> b!3925926 (= e!2428386 e!2428384)))

(declare-fun d!1163697 () Bool)

(declare-fun c!682126 () Bool)

(assert (=> d!1163697 (= c!682126 ((_ is IntegerValue!20202) (value!205998 (h!47103 suffixTokens!72))))))

(declare-fun e!2428385 () Bool)

(assert (=> d!1163697 (= (inv!21 (value!205998 (h!47103 suffixTokens!72))) e!2428385)))

(declare-fun b!3925927 () Bool)

(assert (=> b!3925927 (= e!2428385 e!2428386)))

(declare-fun c!682125 () Bool)

(assert (=> b!3925927 (= c!682125 ((_ is IntegerValue!20203) (value!205998 (h!47103 suffixTokens!72))))))

(declare-fun b!3925928 () Bool)

(declare-fun inv!16 (TokenValue!6734) Bool)

(assert (=> b!3925928 (= e!2428385 (inv!16 (value!205998 (h!47103 suffixTokens!72))))))

(declare-fun b!3925929 () Bool)

(declare-fun inv!15 (TokenValue!6734) Bool)

(assert (=> b!3925929 (= e!2428384 (inv!15 (value!205998 (h!47103 suffixTokens!72))))))

(assert (= (and d!1163697 c!682126) b!3925928))

(assert (= (and d!1163697 (not c!682126)) b!3925927))

(assert (= (and b!3925927 c!682125) b!3925925))

(assert (= (and b!3925927 (not c!682125)) b!3925926))

(assert (= (and b!3925926 (not res!1588294)) b!3925929))

(declare-fun m!4490207 () Bool)

(assert (=> b!3925925 m!4490207))

(declare-fun m!4490209 () Bool)

(assert (=> b!3925928 m!4490209))

(declare-fun m!4490211 () Bool)

(assert (=> b!3925929 m!4490211))

(assert (=> b!3925745 d!1163697))

(declare-fun d!1163717 () Bool)

(assert (=> d!1163717 (= (_2!23610 (v!39249 lt!1369947)) lt!1369929)))

(declare-fun lt!1370047 () Unit!60000)

(declare-fun choose!23295 (List!41806 List!41806 List!41806 List!41806 List!41806) Unit!60000)

(assert (=> d!1163717 (= lt!1370047 (choose!23295 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369929 lt!1369943))))

(assert (=> d!1163717 (isPrefix!3599 lt!1369940 lt!1369943)))

(assert (=> d!1163717 (= (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369929 lt!1369943) lt!1370047)))

(declare-fun bs!585985 () Bool)

(assert (= bs!585985 d!1163717))

(declare-fun m!4490237 () Bool)

(assert (=> bs!585985 m!4490237))

(declare-fun m!4490239 () Bool)

(assert (=> bs!585985 m!4490239))

(assert (=> b!3925746 d!1163717))

(declare-fun b!3925953 () Bool)

(declare-fun e!2428404 () Bool)

(declare-fun e!2428402 () Bool)

(assert (=> b!3925953 (= e!2428404 e!2428402)))

(declare-fun res!1588314 () Bool)

(assert (=> b!3925953 (=> (not res!1588314) (not e!2428402))))

(assert (=> b!3925953 (= res!1588314 (not ((_ is Nil!41682) lt!1369956)))))

(declare-fun b!3925955 () Bool)

(declare-fun tail!6051 (List!41806) List!41806)

(assert (=> b!3925955 (= e!2428402 (isPrefix!3599 (tail!6051 lt!1369940) (tail!6051 lt!1369956)))))

(declare-fun b!3925956 () Bool)

(declare-fun e!2428403 () Bool)

(assert (=> b!3925956 (= e!2428403 (>= (size!31274 lt!1369956) (size!31274 lt!1369940)))))

(declare-fun b!3925954 () Bool)

(declare-fun res!1588317 () Bool)

(assert (=> b!3925954 (=> (not res!1588317) (not e!2428402))))

(declare-fun head!8325 (List!41806) C!23004)

(assert (=> b!3925954 (= res!1588317 (= (head!8325 lt!1369940) (head!8325 lt!1369956)))))

(declare-fun d!1163727 () Bool)

(assert (=> d!1163727 e!2428403))

(declare-fun res!1588315 () Bool)

(assert (=> d!1163727 (=> res!1588315 e!2428403)))

(declare-fun lt!1370053 () Bool)

(assert (=> d!1163727 (= res!1588315 (not lt!1370053))))

(assert (=> d!1163727 (= lt!1370053 e!2428404)))

(declare-fun res!1588316 () Bool)

(assert (=> d!1163727 (=> res!1588316 e!2428404)))

(assert (=> d!1163727 (= res!1588316 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163727 (= (isPrefix!3599 lt!1369940 lt!1369956) lt!1370053)))

(assert (= (and d!1163727 (not res!1588316)) b!3925953))

(assert (= (and b!3925953 res!1588314) b!3925954))

(assert (= (and b!3925954 res!1588317) b!3925955))

(assert (= (and d!1163727 (not res!1588315)) b!3925956))

(declare-fun m!4490245 () Bool)

(assert (=> b!3925955 m!4490245))

(declare-fun m!4490247 () Bool)

(assert (=> b!3925955 m!4490247))

(assert (=> b!3925955 m!4490245))

(assert (=> b!3925955 m!4490247))

(declare-fun m!4490249 () Bool)

(assert (=> b!3925955 m!4490249))

(declare-fun m!4490251 () Bool)

(assert (=> b!3925956 m!4490251))

(assert (=> b!3925956 m!4489913))

(declare-fun m!4490253 () Bool)

(assert (=> b!3925954 m!4490253))

(declare-fun m!4490255 () Bool)

(assert (=> b!3925954 m!4490255))

(assert (=> b!3925746 d!1163727))

(declare-fun d!1163731 () Bool)

(assert (=> d!1163731 (isPrefix!3599 lt!1369940 (++!10765 lt!1369940 lt!1369929))))

(declare-fun lt!1370056 () Unit!60000)

(declare-fun choose!23296 (List!41806 List!41806) Unit!60000)

(assert (=> d!1163731 (= lt!1370056 (choose!23296 lt!1369940 lt!1369929))))

(assert (=> d!1163731 (= (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369940 lt!1369929) lt!1370056)))

(declare-fun bs!585987 () Bool)

(assert (= bs!585987 d!1163731))

(assert (=> bs!585987 m!4489831))

(assert (=> bs!585987 m!4489831))

(declare-fun m!4490257 () Bool)

(assert (=> bs!585987 m!4490257))

(declare-fun m!4490259 () Bool)

(assert (=> bs!585987 m!4490259))

(assert (=> b!3925746 d!1163731))

(declare-fun d!1163733 () Bool)

(assert (=> d!1163733 (= (isEmpty!24838 lt!1369953) ((_ is Nil!41683) lt!1369953))))

(assert (=> b!3925733 d!1163733))

(declare-fun d!1163737 () Bool)

(assert (=> d!1163737 (= (tail!6049 prefixTokens!80) (t!324942 prefixTokens!80))))

(assert (=> b!3925733 d!1163737))

(declare-fun d!1163741 () Bool)

(assert (=> d!1163741 (isPrefix!3599 prefix!426 (++!10765 prefix!426 suffix!1176))))

(declare-fun lt!1370062 () Unit!60000)

(assert (=> d!1163741 (= lt!1370062 (choose!23296 prefix!426 suffix!1176))))

(assert (=> d!1163741 (= (lemmaConcatTwoListThenFirstIsPrefix!2462 prefix!426 suffix!1176) lt!1370062)))

(declare-fun bs!585989 () Bool)

(assert (= bs!585989 d!1163741))

(assert (=> bs!585989 m!4489895))

(assert (=> bs!585989 m!4489895))

(declare-fun m!4490279 () Bool)

(assert (=> bs!585989 m!4490279))

(declare-fun m!4490281 () Bool)

(assert (=> bs!585989 m!4490281))

(assert (=> b!3925734 d!1163741))

(declare-fun b!3925965 () Bool)

(declare-fun e!2428411 () Bool)

(declare-fun e!2428409 () Bool)

(assert (=> b!3925965 (= e!2428411 e!2428409)))

(declare-fun res!1588322 () Bool)

(assert (=> b!3925965 (=> (not res!1588322) (not e!2428409))))

(assert (=> b!3925965 (= res!1588322 (not ((_ is Nil!41682) lt!1369943)))))

(declare-fun b!3925967 () Bool)

(assert (=> b!3925967 (= e!2428409 (isPrefix!3599 (tail!6051 prefix!426) (tail!6051 lt!1369943)))))

(declare-fun b!3925968 () Bool)

(declare-fun e!2428410 () Bool)

(assert (=> b!3925968 (= e!2428410 (>= (size!31274 lt!1369943) (size!31274 prefix!426)))))

(declare-fun b!3925966 () Bool)

(declare-fun res!1588325 () Bool)

(assert (=> b!3925966 (=> (not res!1588325) (not e!2428409))))

(assert (=> b!3925966 (= res!1588325 (= (head!8325 prefix!426) (head!8325 lt!1369943)))))

(declare-fun d!1163745 () Bool)

(assert (=> d!1163745 e!2428410))

(declare-fun res!1588323 () Bool)

(assert (=> d!1163745 (=> res!1588323 e!2428410)))

(declare-fun lt!1370063 () Bool)

(assert (=> d!1163745 (= res!1588323 (not lt!1370063))))

(assert (=> d!1163745 (= lt!1370063 e!2428411)))

(declare-fun res!1588324 () Bool)

(assert (=> d!1163745 (=> res!1588324 e!2428411)))

(assert (=> d!1163745 (= res!1588324 ((_ is Nil!41682) prefix!426))))

(assert (=> d!1163745 (= (isPrefix!3599 prefix!426 lt!1369943) lt!1370063)))

(assert (= (and d!1163745 (not res!1588324)) b!3925965))

(assert (= (and b!3925965 res!1588322) b!3925966))

(assert (= (and b!3925966 res!1588325) b!3925967))

(assert (= (and d!1163745 (not res!1588323)) b!3925968))

(declare-fun m!4490283 () Bool)

(assert (=> b!3925967 m!4490283))

(declare-fun m!4490285 () Bool)

(assert (=> b!3925967 m!4490285))

(assert (=> b!3925967 m!4490283))

(assert (=> b!3925967 m!4490285))

(declare-fun m!4490287 () Bool)

(assert (=> b!3925967 m!4490287))

(assert (=> b!3925968 m!4489839))

(assert (=> b!3925968 m!4489849))

(declare-fun m!4490289 () Bool)

(assert (=> b!3925966 m!4490289))

(declare-fun m!4490291 () Bool)

(assert (=> b!3925966 m!4490291))

(assert (=> b!3925734 d!1163745))

(declare-fun d!1163747 () Bool)

(assert (=> d!1163747 (= lt!1369940 prefix!426)))

(declare-fun lt!1370070 () Unit!60000)

(declare-fun choose!23299 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> d!1163747 (= lt!1370070 (choose!23299 lt!1369940 prefix!426 lt!1369943))))

(assert (=> d!1163747 (isPrefix!3599 lt!1369940 lt!1369943)))

(assert (=> d!1163747 (= (lemmaIsPrefixSameLengthThenSameList!795 lt!1369940 prefix!426 lt!1369943) lt!1370070)))

(declare-fun bs!585991 () Bool)

(assert (= bs!585991 d!1163747))

(declare-fun m!4490313 () Bool)

(assert (=> bs!585991 m!4490313))

(assert (=> bs!585991 m!4490239))

(assert (=> b!3925734 d!1163747))

(declare-fun d!1163757 () Bool)

(assert (=> d!1163757 (= (_2!23610 (v!39249 lt!1369947)) suffix!1176)))

(declare-fun lt!1370071 () Unit!60000)

(assert (=> d!1163757 (= lt!1370071 (choose!23295 lt!1369940 (_2!23610 (v!39249 lt!1369947)) prefix!426 suffix!1176 lt!1369943))))

(assert (=> d!1163757 (isPrefix!3599 lt!1369940 lt!1369943)))

(assert (=> d!1163757 (= (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) prefix!426 suffix!1176 lt!1369943) lt!1370071)))

(declare-fun bs!585992 () Bool)

(assert (= bs!585992 d!1163757))

(declare-fun m!4490315 () Bool)

(assert (=> bs!585992 m!4490315))

(assert (=> bs!585992 m!4490239))

(assert (=> b!3925734 d!1163757))

(declare-fun b!3925983 () Bool)

(declare-fun e!2428419 () List!41806)

(assert (=> b!3925983 (= e!2428419 (Cons!41682 (h!47102 lt!1369940) (++!10765 (t!324941 lt!1369940) lt!1369960)))))

(declare-fun e!2428420 () Bool)

(declare-fun lt!1370074 () List!41806)

(declare-fun b!3925985 () Bool)

(assert (=> b!3925985 (= e!2428420 (or (not (= lt!1369960 Nil!41682)) (= lt!1370074 lt!1369940)))))

(declare-fun b!3925984 () Bool)

(declare-fun res!1588333 () Bool)

(assert (=> b!3925984 (=> (not res!1588333) (not e!2428420))))

(assert (=> b!3925984 (= res!1588333 (= (size!31274 lt!1370074) (+ (size!31274 lt!1369940) (size!31274 lt!1369960))))))

(declare-fun d!1163759 () Bool)

(assert (=> d!1163759 e!2428420))

(declare-fun res!1588334 () Bool)

(assert (=> d!1163759 (=> (not res!1588334) (not e!2428420))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6271 (List!41806) (InoxSet C!23004))

(assert (=> d!1163759 (= res!1588334 (= (content!6271 lt!1370074) ((_ map or) (content!6271 lt!1369940) (content!6271 lt!1369960))))))

(assert (=> d!1163759 (= lt!1370074 e!2428419)))

(declare-fun c!682134 () Bool)

(assert (=> d!1163759 (= c!682134 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163759 (= (++!10765 lt!1369940 lt!1369960) lt!1370074)))

(declare-fun b!3925982 () Bool)

(assert (=> b!3925982 (= e!2428419 lt!1369960)))

(assert (= (and d!1163759 c!682134) b!3925982))

(assert (= (and d!1163759 (not c!682134)) b!3925983))

(assert (= (and d!1163759 res!1588334) b!3925984))

(assert (= (and b!3925984 res!1588333) b!3925985))

(declare-fun m!4490317 () Bool)

(assert (=> b!3925983 m!4490317))

(declare-fun m!4490319 () Bool)

(assert (=> b!3925984 m!4490319))

(assert (=> b!3925984 m!4489913))

(declare-fun m!4490321 () Bool)

(assert (=> b!3925984 m!4490321))

(declare-fun m!4490323 () Bool)

(assert (=> d!1163759 m!4490323))

(declare-fun m!4490325 () Bool)

(assert (=> d!1163759 m!4490325))

(declare-fun m!4490327 () Bool)

(assert (=> d!1163759 m!4490327))

(assert (=> b!3925732 d!1163759))

(declare-fun d!1163761 () Bool)

(declare-fun lt!1370084 () List!41806)

(assert (=> d!1163761 (= (++!10765 lt!1369940 lt!1370084) prefix!426)))

(declare-fun e!2428429 () List!41806)

(assert (=> d!1163761 (= lt!1370084 e!2428429)))

(declare-fun c!682140 () Bool)

(assert (=> d!1163761 (= c!682140 ((_ is Cons!41682) lt!1369940))))

(assert (=> d!1163761 (>= (size!31274 prefix!426) (size!31274 lt!1369940))))

(assert (=> d!1163761 (= (getSuffix!2054 prefix!426 lt!1369940) lt!1370084)))

(declare-fun b!3926000 () Bool)

(assert (=> b!3926000 (= e!2428429 (getSuffix!2054 (tail!6051 prefix!426) (t!324941 lt!1369940)))))

(declare-fun b!3926001 () Bool)

(assert (=> b!3926001 (= e!2428429 prefix!426)))

(assert (= (and d!1163761 c!682140) b!3926000))

(assert (= (and d!1163761 (not c!682140)) b!3926001))

(declare-fun m!4490347 () Bool)

(assert (=> d!1163761 m!4490347))

(assert (=> d!1163761 m!4489849))

(assert (=> d!1163761 m!4489913))

(assert (=> b!3926000 m!4490283))

(assert (=> b!3926000 m!4490283))

(declare-fun m!4490355 () Bool)

(assert (=> b!3926000 m!4490355))

(assert (=> b!3925732 d!1163761))

(declare-fun d!1163773 () Bool)

(declare-fun lt!1370091 () Int)

(assert (=> d!1163773 (>= lt!1370091 0)))

(declare-fun e!2428439 () Int)

(assert (=> d!1163773 (= lt!1370091 e!2428439)))

(declare-fun c!682147 () Bool)

(assert (=> d!1163773 (= c!682147 ((_ is Nil!41682) lt!1369943))))

(assert (=> d!1163773 (= (size!31274 lt!1369943) lt!1370091)))

(declare-fun b!3926020 () Bool)

(assert (=> b!3926020 (= e!2428439 0)))

(declare-fun b!3926021 () Bool)

(assert (=> b!3926021 (= e!2428439 (+ 1 (size!31274 (t!324941 lt!1369943))))))

(assert (= (and d!1163773 c!682147) b!3926020))

(assert (= (and d!1163773 (not c!682147)) b!3926021))

(declare-fun m!4490391 () Bool)

(assert (=> b!3926021 m!4490391))

(assert (=> b!3925711 d!1163773))

(declare-fun b!3926137 () Bool)

(declare-fun e!2428513 () Bool)

(declare-fun matchR!5474 (Regex!11409 List!41806) Bool)

(declare-datatypes ((tuple2!40956 0))(
  ( (tuple2!40957 (_1!23612 List!41806) (_2!23612 List!41806)) )
))
(declare-fun findLongestMatchInner!1254 (Regex!11409 List!41806 Int List!41806 List!41806 Int) tuple2!40956)

(assert (=> b!3926137 (= e!2428513 (matchR!5474 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (_1!23612 (findLongestMatchInner!1254 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) Nil!41682 (size!31274 Nil!41682) lt!1369943 lt!1369943 (size!31274 lt!1369943)))))))

(declare-fun b!3926138 () Bool)

(declare-fun e!2428515 () Bool)

(declare-fun e!2428512 () Bool)

(assert (=> b!3926138 (= e!2428515 e!2428512)))

(declare-fun res!1588389 () Bool)

(assert (=> b!3926138 (=> (not res!1588389) (not e!2428512))))

(declare-fun lt!1370132 () Option!8924)

(assert (=> b!3926138 (= res!1588389 (matchR!5474 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (list!15487 (charsOf!4328 (_1!23610 (get!13776 lt!1370132))))))))

(declare-fun b!3926139 () Bool)

(assert (=> b!3926139 (= e!2428512 (= (size!31273 (_1!23610 (get!13776 lt!1370132))) (size!31274 (originalCharacters!7104 (_1!23610 (get!13776 lt!1370132))))))))

(declare-fun d!1163783 () Bool)

(assert (=> d!1163783 e!2428515))

(declare-fun res!1588391 () Bool)

(assert (=> d!1163783 (=> res!1588391 e!2428515)))

(declare-fun isEmpty!24840 (Option!8924) Bool)

(assert (=> d!1163783 (= res!1588391 (isEmpty!24840 lt!1370132))))

(declare-fun e!2428514 () Option!8924)

(assert (=> d!1163783 (= lt!1370132 e!2428514)))

(declare-fun c!682154 () Bool)

(declare-fun lt!1370129 () tuple2!40956)

(assert (=> d!1163783 (= c!682154 (isEmpty!24837 (_1!23612 lt!1370129)))))

(declare-fun findLongestMatch!1167 (Regex!11409 List!41806) tuple2!40956)

(assert (=> d!1163783 (= lt!1370129 (findLongestMatch!1167 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) lt!1369943))))

(assert (=> d!1163783 (ruleValid!2452 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163783 (= (maxPrefixOneRule!2467 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) lt!1369943) lt!1370132)))

(declare-fun b!3926140 () Bool)

(declare-fun res!1588388 () Bool)

(assert (=> b!3926140 (=> (not res!1588388) (not e!2428512))))

(assert (=> b!3926140 (= res!1588388 (= (value!205998 (_1!23610 (get!13776 lt!1370132))) (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (get!13776 lt!1370132)))) (seqFromList!4771 (originalCharacters!7104 (_1!23610 (get!13776 lt!1370132)))))))))

(declare-fun b!3926141 () Bool)

(declare-fun res!1588392 () Bool)

(assert (=> b!3926141 (=> (not res!1588392) (not e!2428512))))

(assert (=> b!3926141 (= res!1588392 (= (rule!9442 (_1!23610 (get!13776 lt!1370132))) (rule!9442 (_1!23610 (v!39249 lt!1369947)))))))

(declare-fun b!3926142 () Bool)

(declare-fun res!1588390 () Bool)

(assert (=> b!3926142 (=> (not res!1588390) (not e!2428512))))

(assert (=> b!3926142 (= res!1588390 (= (++!10765 (list!15487 (charsOf!4328 (_1!23610 (get!13776 lt!1370132)))) (_2!23610 (get!13776 lt!1370132))) lt!1369943))))

(declare-fun b!3926143 () Bool)

(declare-fun size!31277 (BalanceConc!25024) Int)

(assert (=> b!3926143 (= e!2428514 (Some!8923 (tuple2!40953 (Token!12147 (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (seqFromList!4771 (_1!23612 lt!1370129))) (rule!9442 (_1!23610 (v!39249 lt!1369947))) (size!31277 (seqFromList!4771 (_1!23612 lt!1370129))) (_1!23612 lt!1370129)) (_2!23612 lt!1370129))))))

(declare-fun lt!1370131 () Unit!60000)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1227 (Regex!11409 List!41806) Unit!60000)

(assert (=> b!3926143 (= lt!1370131 (longestMatchIsAcceptedByMatchOrIsEmpty!1227 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) lt!1369943))))

(declare-fun res!1588393 () Bool)

(assert (=> b!3926143 (= res!1588393 (isEmpty!24837 (_1!23612 (findLongestMatchInner!1254 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) Nil!41682 (size!31274 Nil!41682) lt!1369943 lt!1369943 (size!31274 lt!1369943)))))))

(assert (=> b!3926143 (=> res!1588393 e!2428513)))

(assert (=> b!3926143 e!2428513))

(declare-fun lt!1370128 () Unit!60000)

(assert (=> b!3926143 (= lt!1370128 lt!1370131)))

(declare-fun lt!1370130 () Unit!60000)

(declare-fun lemmaSemiInverse!1760 (TokenValueInjection!12896 BalanceConc!25024) Unit!60000)

(assert (=> b!3926143 (= lt!1370130 (lemmaSemiInverse!1760 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (seqFromList!4771 (_1!23612 lt!1370129))))))

(declare-fun b!3926144 () Bool)

(assert (=> b!3926144 (= e!2428514 None!8923)))

(declare-fun b!3926145 () Bool)

(declare-fun res!1588394 () Bool)

(assert (=> b!3926145 (=> (not res!1588394) (not e!2428512))))

(assert (=> b!3926145 (= res!1588394 (< (size!31274 (_2!23610 (get!13776 lt!1370132))) (size!31274 lt!1369943)))))

(assert (= (and d!1163783 c!682154) b!3926144))

(assert (= (and d!1163783 (not c!682154)) b!3926143))

(assert (= (and b!3926143 (not res!1588393)) b!3926137))

(assert (= (and d!1163783 (not res!1588391)) b!3926138))

(assert (= (and b!3926138 res!1588389) b!3926142))

(assert (= (and b!3926142 res!1588390) b!3926145))

(assert (= (and b!3926145 res!1588394) b!3926141))

(assert (= (and b!3926141 res!1588392) b!3926140))

(assert (= (and b!3926140 res!1588388) b!3926139))

(declare-fun m!4490465 () Bool)

(assert (=> b!3926138 m!4490465))

(declare-fun m!4490467 () Bool)

(assert (=> b!3926138 m!4490467))

(assert (=> b!3926138 m!4490467))

(declare-fun m!4490469 () Bool)

(assert (=> b!3926138 m!4490469))

(assert (=> b!3926138 m!4490469))

(declare-fun m!4490471 () Bool)

(assert (=> b!3926138 m!4490471))

(declare-fun m!4490473 () Bool)

(assert (=> b!3926143 m!4490473))

(assert (=> b!3926143 m!4489839))

(declare-fun m!4490475 () Bool)

(assert (=> b!3926143 m!4490475))

(declare-fun m!4490477 () Bool)

(assert (=> b!3926143 m!4490477))

(assert (=> b!3926143 m!4490473))

(declare-fun m!4490479 () Bool)

(assert (=> b!3926143 m!4490479))

(declare-fun m!4490481 () Bool)

(assert (=> b!3926143 m!4490481))

(assert (=> b!3926143 m!4490479))

(assert (=> b!3926143 m!4490479))

(declare-fun m!4490483 () Bool)

(assert (=> b!3926143 m!4490483))

(assert (=> b!3926143 m!4489839))

(declare-fun m!4490485 () Bool)

(assert (=> b!3926143 m!4490485))

(assert (=> b!3926143 m!4490479))

(declare-fun m!4490487 () Bool)

(assert (=> b!3926143 m!4490487))

(assert (=> b!3926142 m!4490465))

(assert (=> b!3926142 m!4490467))

(assert (=> b!3926142 m!4490467))

(assert (=> b!3926142 m!4490469))

(assert (=> b!3926142 m!4490469))

(declare-fun m!4490489 () Bool)

(assert (=> b!3926142 m!4490489))

(assert (=> b!3926139 m!4490465))

(declare-fun m!4490491 () Bool)

(assert (=> b!3926139 m!4490491))

(declare-fun m!4490493 () Bool)

(assert (=> d!1163783 m!4490493))

(declare-fun m!4490495 () Bool)

(assert (=> d!1163783 m!4490495))

(declare-fun m!4490497 () Bool)

(assert (=> d!1163783 m!4490497))

(assert (=> d!1163783 m!4489905))

(assert (=> b!3926145 m!4490465))

(declare-fun m!4490499 () Bool)

(assert (=> b!3926145 m!4490499))

(assert (=> b!3926145 m!4489839))

(assert (=> b!3926140 m!4490465))

(declare-fun m!4490501 () Bool)

(assert (=> b!3926140 m!4490501))

(assert (=> b!3926140 m!4490501))

(declare-fun m!4490503 () Bool)

(assert (=> b!3926140 m!4490503))

(assert (=> b!3926137 m!4490473))

(assert (=> b!3926137 m!4489839))

(assert (=> b!3926137 m!4490473))

(assert (=> b!3926137 m!4489839))

(assert (=> b!3926137 m!4490475))

(declare-fun m!4490505 () Bool)

(assert (=> b!3926137 m!4490505))

(assert (=> b!3926141 m!4490465))

(assert (=> b!3925711 d!1163783))

(declare-fun d!1163799 () Bool)

(assert (=> d!1163799 (= (get!13776 lt!1369947) (v!39249 lt!1369947))))

(assert (=> b!3925711 d!1163799))

(declare-fun d!1163801 () Bool)

(assert (=> d!1163801 (= (maxPrefixOneRule!2467 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) lt!1369943) (Some!8923 (tuple2!40953 (Token!12147 (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (seqFromList!4771 lt!1369940)) (rule!9442 (_1!23610 (v!39249 lt!1369947))) (size!31274 lt!1369940) lt!1369940) (_2!23610 (v!39249 lt!1369947)))))))

(declare-fun lt!1370135 () Unit!60000)

(declare-fun choose!23302 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41806 Rule!12808) Unit!60000)

(assert (=> d!1163801 (= lt!1370135 (choose!23302 thiss!20629 rules!2768 lt!1369940 lt!1369943 (_2!23610 (v!39249 lt!1369947)) (rule!9442 (_1!23610 (v!39249 lt!1369947)))))))

(assert (=> d!1163801 (not (isEmpty!24836 rules!2768))))

(assert (=> d!1163801 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1335 thiss!20629 rules!2768 lt!1369940 lt!1369943 (_2!23610 (v!39249 lt!1369947)) (rule!9442 (_1!23610 (v!39249 lt!1369947)))) lt!1370135)))

(declare-fun bs!585998 () Bool)

(assert (= bs!585998 d!1163801))

(assert (=> bs!585998 m!4489915))

(assert (=> bs!585998 m!4489913))

(declare-fun m!4490507 () Bool)

(assert (=> bs!585998 m!4490507))

(assert (=> bs!585998 m!4489859))

(assert (=> bs!585998 m!4489915))

(assert (=> bs!585998 m!4489917))

(assert (=> bs!585998 m!4489845))

(assert (=> b!3925711 d!1163801))

(declare-fun d!1163803 () Bool)

(declare-fun lt!1370136 () Int)

(assert (=> d!1163803 (>= lt!1370136 0)))

(declare-fun e!2428516 () Int)

(assert (=> d!1163803 (= lt!1370136 e!2428516)))

(declare-fun c!682155 () Bool)

(assert (=> d!1163803 (= c!682155 ((_ is Nil!41682) (_2!23610 lt!1369937)))))

(assert (=> d!1163803 (= (size!31274 (_2!23610 lt!1369937)) lt!1370136)))

(declare-fun b!3926146 () Bool)

(assert (=> b!3926146 (= e!2428516 0)))

(declare-fun b!3926147 () Bool)

(assert (=> b!3926147 (= e!2428516 (+ 1 (size!31274 (t!324941 (_2!23610 lt!1369937)))))))

(assert (= (and d!1163803 c!682155) b!3926146))

(assert (= (and d!1163803 (not c!682155)) b!3926147))

(declare-fun m!4490509 () Bool)

(assert (=> b!3926147 m!4490509))

(assert (=> b!3925711 d!1163803))

(declare-fun b!3926158 () Bool)

(declare-fun e!2428523 () tuple2!40950)

(assert (=> b!3926158 (= e!2428523 (tuple2!40951 Nil!41683 suffix!1176))))

(declare-fun b!3926159 () Bool)

(declare-fun e!2428524 () Bool)

(declare-fun e!2428525 () Bool)

(assert (=> b!3926159 (= e!2428524 e!2428525)))

(declare-fun res!1588397 () Bool)

(declare-fun lt!1370144 () tuple2!40950)

(assert (=> b!3926159 (= res!1588397 (< (size!31274 (_2!23609 lt!1370144)) (size!31274 suffix!1176)))))

(assert (=> b!3926159 (=> (not res!1588397) (not e!2428525))))

(declare-fun d!1163805 () Bool)

(assert (=> d!1163805 e!2428524))

(declare-fun c!682161 () Bool)

(declare-fun size!31278 (List!41807) Int)

(assert (=> d!1163805 (= c!682161 (> (size!31278 (_1!23609 lt!1370144)) 0))))

(assert (=> d!1163805 (= lt!1370144 e!2428523)))

(declare-fun c!682160 () Bool)

(declare-fun lt!1370143 () Option!8924)

(assert (=> d!1163805 (= c!682160 ((_ is Some!8923) lt!1370143))))

(assert (=> d!1163805 (= lt!1370143 (maxPrefix!3397 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1163805 (= (lexList!1861 thiss!20629 rules!2768 suffix!1176) lt!1370144)))

(declare-fun b!3926160 () Bool)

(assert (=> b!3926160 (= e!2428524 (= (_2!23609 lt!1370144) suffix!1176))))

(declare-fun b!3926161 () Bool)

(declare-fun lt!1370145 () tuple2!40950)

(assert (=> b!3926161 (= e!2428523 (tuple2!40951 (Cons!41683 (_1!23610 (v!39249 lt!1370143)) (_1!23609 lt!1370145)) (_2!23609 lt!1370145)))))

(assert (=> b!3926161 (= lt!1370145 (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1370143))))))

(declare-fun b!3926162 () Bool)

(assert (=> b!3926162 (= e!2428525 (not (isEmpty!24838 (_1!23609 lt!1370144))))))

(assert (= (and d!1163805 c!682160) b!3926161))

(assert (= (and d!1163805 (not c!682160)) b!3926158))

(assert (= (and d!1163805 c!682161) b!3926159))

(assert (= (and d!1163805 (not c!682161)) b!3926160))

(assert (= (and b!3926159 res!1588397) b!3926162))

(declare-fun m!4490511 () Bool)

(assert (=> b!3926159 m!4490511))

(assert (=> b!3926159 m!4489935))

(declare-fun m!4490513 () Bool)

(assert (=> d!1163805 m!4490513))

(declare-fun m!4490515 () Bool)

(assert (=> d!1163805 m!4490515))

(declare-fun m!4490517 () Bool)

(assert (=> b!3926161 m!4490517))

(declare-fun m!4490519 () Bool)

(assert (=> b!3926162 m!4490519))

(assert (=> b!3925710 d!1163805))

(declare-fun d!1163807 () Bool)

(assert (=> d!1163807 (= (isEmpty!24837 prefix!426) ((_ is Nil!41682) prefix!426))))

(assert (=> b!3925731 d!1163807))

(declare-fun b!3926163 () Bool)

(declare-fun e!2428526 () tuple2!40950)

(assert (=> b!3926163 (= e!2428526 (tuple2!40951 Nil!41683 (_2!23610 lt!1369937)))))

(declare-fun b!3926164 () Bool)

(declare-fun e!2428527 () Bool)

(declare-fun e!2428528 () Bool)

(assert (=> b!3926164 (= e!2428527 e!2428528)))

(declare-fun res!1588398 () Bool)

(declare-fun lt!1370147 () tuple2!40950)

(assert (=> b!3926164 (= res!1588398 (< (size!31274 (_2!23609 lt!1370147)) (size!31274 (_2!23610 lt!1369937))))))

(assert (=> b!3926164 (=> (not res!1588398) (not e!2428528))))

(declare-fun d!1163809 () Bool)

(assert (=> d!1163809 e!2428527))

(declare-fun c!682163 () Bool)

(assert (=> d!1163809 (= c!682163 (> (size!31278 (_1!23609 lt!1370147)) 0))))

(assert (=> d!1163809 (= lt!1370147 e!2428526)))

(declare-fun c!682162 () Bool)

(declare-fun lt!1370146 () Option!8924)

(assert (=> d!1163809 (= c!682162 ((_ is Some!8923) lt!1370146))))

(assert (=> d!1163809 (= lt!1370146 (maxPrefix!3397 thiss!20629 rules!2768 (_2!23610 lt!1369937)))))

(assert (=> d!1163809 (= (lexList!1861 thiss!20629 rules!2768 (_2!23610 lt!1369937)) lt!1370147)))

(declare-fun b!3926165 () Bool)

(assert (=> b!3926165 (= e!2428527 (= (_2!23609 lt!1370147) (_2!23610 lt!1369937)))))

(declare-fun b!3926166 () Bool)

(declare-fun lt!1370148 () tuple2!40950)

(assert (=> b!3926166 (= e!2428526 (tuple2!40951 (Cons!41683 (_1!23610 (v!39249 lt!1370146)) (_1!23609 lt!1370148)) (_2!23609 lt!1370148)))))

(assert (=> b!3926166 (= lt!1370148 (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1370146))))))

(declare-fun b!3926167 () Bool)

(assert (=> b!3926167 (= e!2428528 (not (isEmpty!24838 (_1!23609 lt!1370147))))))

(assert (= (and d!1163809 c!682162) b!3926166))

(assert (= (and d!1163809 (not c!682162)) b!3926163))

(assert (= (and d!1163809 c!682163) b!3926164))

(assert (= (and d!1163809 (not c!682163)) b!3926165))

(assert (= (and b!3926164 res!1588398) b!3926167))

(declare-fun m!4490521 () Bool)

(assert (=> b!3926164 m!4490521))

(assert (=> b!3926164 m!4489841))

(declare-fun m!4490523 () Bool)

(assert (=> d!1163809 m!4490523))

(declare-fun m!4490525 () Bool)

(assert (=> d!1163809 m!4490525))

(declare-fun m!4490527 () Bool)

(assert (=> b!3926166 m!4490527))

(declare-fun m!4490529 () Bool)

(assert (=> b!3926167 m!4490529))

(assert (=> bm!284711 d!1163809))

(declare-fun d!1163811 () Bool)

(declare-fun lt!1370149 () Int)

(assert (=> d!1163811 (>= lt!1370149 0)))

(declare-fun e!2428529 () Int)

(assert (=> d!1163811 (= lt!1370149 e!2428529)))

(declare-fun c!682164 () Bool)

(assert (=> d!1163811 (= c!682164 ((_ is Nil!41682) suffix!1176))))

(assert (=> d!1163811 (= (size!31274 suffix!1176) lt!1370149)))

(declare-fun b!3926168 () Bool)

(assert (=> b!3926168 (= e!2428529 0)))

(declare-fun b!3926169 () Bool)

(assert (=> b!3926169 (= e!2428529 (+ 1 (size!31274 (t!324941 suffix!1176))))))

(assert (= (and d!1163811 c!682164) b!3926168))

(assert (= (and d!1163811 (not c!682164)) b!3926169))

(declare-fun m!4490531 () Bool)

(assert (=> b!3926169 m!4490531))

(assert (=> b!3925729 d!1163811))

(declare-fun d!1163813 () Bool)

(declare-fun lt!1370150 () Int)

(assert (=> d!1163813 (>= lt!1370150 0)))

(declare-fun e!2428530 () Int)

(assert (=> d!1163813 (= lt!1370150 e!2428530)))

(declare-fun c!682165 () Bool)

(assert (=> d!1163813 (= c!682165 ((_ is Nil!41682) (_2!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163813 (= (size!31274 (_2!23610 (v!39249 lt!1369947))) lt!1370150)))

(declare-fun b!3926170 () Bool)

(assert (=> b!3926170 (= e!2428530 0)))

(declare-fun b!3926171 () Bool)

(assert (=> b!3926171 (= e!2428530 (+ 1 (size!31274 (t!324941 (_2!23610 (v!39249 lt!1369947))))))))

(assert (= (and d!1163813 c!682165) b!3926170))

(assert (= (and d!1163813 (not c!682165)) b!3926171))

(declare-fun m!4490533 () Bool)

(assert (=> b!3926171 m!4490533))

(assert (=> b!3925729 d!1163813))

(declare-fun d!1163815 () Bool)

(assert (=> d!1163815 (= (inv!55869 (tag!7364 (h!47104 rules!2768))) (= (mod (str.len (value!205997 (tag!7364 (h!47104 rules!2768)))) 2) 0))))

(assert (=> b!3925751 d!1163815))

(declare-fun d!1163817 () Bool)

(declare-fun res!1588399 () Bool)

(declare-fun e!2428531 () Bool)

(assert (=> d!1163817 (=> (not res!1588399) (not e!2428531))))

(assert (=> d!1163817 (= res!1588399 (semiInverseModEq!2793 (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toValue!8956 (transformation!6504 (h!47104 rules!2768)))))))

(assert (=> d!1163817 (= (inv!55873 (transformation!6504 (h!47104 rules!2768))) e!2428531)))

(declare-fun b!3926172 () Bool)

(assert (=> b!3926172 (= e!2428531 (equivClasses!2692 (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toValue!8956 (transformation!6504 (h!47104 rules!2768)))))))

(assert (= (and d!1163817 res!1588399) b!3926172))

(declare-fun m!4490535 () Bool)

(assert (=> d!1163817 m!4490535))

(declare-fun m!4490537 () Bool)

(assert (=> b!3926172 m!4490537))

(assert (=> b!3925751 d!1163817))

(declare-fun d!1163819 () Bool)

(declare-fun res!1588404 () Bool)

(declare-fun e!2428534 () Bool)

(assert (=> d!1163819 (=> (not res!1588404) (not e!2428534))))

(assert (=> d!1163819 (= res!1588404 (not (isEmpty!24837 (originalCharacters!7104 (h!47103 prefixTokens!80)))))))

(assert (=> d!1163819 (= (inv!55872 (h!47103 prefixTokens!80)) e!2428534)))

(declare-fun b!3926177 () Bool)

(declare-fun res!1588405 () Bool)

(assert (=> b!3926177 (=> (not res!1588405) (not e!2428534))))

(declare-fun dynLambda!17865 (Int TokenValue!6734) BalanceConc!25024)

(assert (=> b!3926177 (= res!1588405 (= (originalCharacters!7104 (h!47103 prefixTokens!80)) (list!15487 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (value!205998 (h!47103 prefixTokens!80))))))))

(declare-fun b!3926178 () Bool)

(assert (=> b!3926178 (= e!2428534 (= (size!31273 (h!47103 prefixTokens!80)) (size!31274 (originalCharacters!7104 (h!47103 prefixTokens!80)))))))

(assert (= (and d!1163819 res!1588404) b!3926177))

(assert (= (and b!3926177 res!1588405) b!3926178))

(declare-fun b_lambda!114883 () Bool)

(assert (=> (not b_lambda!114883) (not b!3926177)))

(declare-fun tb!234461 () Bool)

(declare-fun t!324994 () Bool)

(assert (=> (and b!3925724 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!324994) tb!234461))

(declare-fun b!3926183 () Bool)

(declare-fun e!2428537 () Bool)

(declare-fun tp!1195338 () Bool)

(declare-fun inv!55876 (Conc!12715) Bool)

(assert (=> b!3926183 (= e!2428537 (and (inv!55876 (c!682083 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (value!205998 (h!47103 prefixTokens!80))))) tp!1195338))))

(declare-fun result!284122 () Bool)

(declare-fun inv!55877 (BalanceConc!25024) Bool)

(assert (=> tb!234461 (= result!284122 (and (inv!55877 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (value!205998 (h!47103 prefixTokens!80)))) e!2428537))))

(assert (= tb!234461 b!3926183))

(declare-fun m!4490539 () Bool)

(assert (=> b!3926183 m!4490539))

(declare-fun m!4490541 () Bool)

(assert (=> tb!234461 m!4490541))

(assert (=> b!3926177 t!324994))

(declare-fun b_and!299423 () Bool)

(assert (= b_and!299377 (and (=> t!324994 result!284122) b_and!299423)))

(declare-fun t!324996 () Bool)

(declare-fun tb!234463 () Bool)

(assert (=> (and b!3925720 (= (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!324996) tb!234463))

(declare-fun result!284126 () Bool)

(assert (= result!284126 result!284122))

(assert (=> b!3926177 t!324996))

(declare-fun b_and!299425 () Bool)

(assert (= b_and!299381 (and (=> t!324996 result!284126) b_and!299425)))

(declare-fun t!324998 () Bool)

(declare-fun tb!234465 () Bool)

(assert (=> (and b!3925736 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!324998) tb!234465))

(declare-fun result!284128 () Bool)

(assert (= result!284128 result!284122))

(assert (=> b!3926177 t!324998))

(declare-fun b_and!299427 () Bool)

(assert (= b_and!299385 (and (=> t!324998 result!284128) b_and!299427)))

(declare-fun m!4490543 () Bool)

(assert (=> d!1163819 m!4490543))

(declare-fun m!4490545 () Bool)

(assert (=> b!3926177 m!4490545))

(assert (=> b!3926177 m!4490545))

(declare-fun m!4490547 () Bool)

(assert (=> b!3926177 m!4490547))

(declare-fun m!4490549 () Bool)

(assert (=> b!3926178 m!4490549))

(assert (=> b!3925730 d!1163819))

(assert (=> b!3925717 d!1163745))

(declare-fun d!1163821 () Bool)

(assert (=> d!1163821 (isPrefix!3599 lt!1369940 prefix!426)))

(declare-fun lt!1370153 () Unit!60000)

(declare-fun choose!23304 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> d!1163821 (= lt!1370153 (choose!23304 prefix!426 lt!1369940 lt!1369943))))

(assert (=> d!1163821 (isPrefix!3599 prefix!426 lt!1369943)))

(assert (=> d!1163821 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!277 prefix!426 lt!1369940 lt!1369943) lt!1370153)))

(declare-fun bs!585999 () Bool)

(assert (= bs!585999 d!1163821))

(assert (=> bs!585999 m!4489851))

(declare-fun m!4490551 () Bool)

(assert (=> bs!585999 m!4490551))

(assert (=> bs!585999 m!4489855))

(assert (=> b!3925717 d!1163821))

(declare-fun d!1163823 () Bool)

(declare-fun lt!1370154 () Int)

(assert (=> d!1163823 (>= lt!1370154 0)))

(declare-fun e!2428538 () Int)

(assert (=> d!1163823 (= lt!1370154 e!2428538)))

(declare-fun c!682166 () Bool)

(assert (=> d!1163823 (= c!682166 ((_ is Nil!41682) prefix!426))))

(assert (=> d!1163823 (= (size!31274 prefix!426) lt!1370154)))

(declare-fun b!3926184 () Bool)

(assert (=> b!3926184 (= e!2428538 0)))

(declare-fun b!3926185 () Bool)

(assert (=> b!3926185 (= e!2428538 (+ 1 (size!31274 (t!324941 prefix!426))))))

(assert (= (and d!1163823 c!682166) b!3926184))

(assert (= (and d!1163823 (not c!682166)) b!3926185))

(declare-fun m!4490553 () Bool)

(assert (=> b!3926185 m!4490553))

(assert (=> b!3925717 d!1163823))

(assert (=> b!3925717 d!1163741))

(declare-fun b!3926186 () Bool)

(declare-fun e!2428541 () Bool)

(declare-fun e!2428539 () Bool)

(assert (=> b!3926186 (= e!2428541 e!2428539)))

(declare-fun res!1588406 () Bool)

(assert (=> b!3926186 (=> (not res!1588406) (not e!2428539))))

(assert (=> b!3926186 (= res!1588406 (not ((_ is Nil!41682) prefix!426)))))

(declare-fun b!3926188 () Bool)

(assert (=> b!3926188 (= e!2428539 (isPrefix!3599 (tail!6051 lt!1369940) (tail!6051 prefix!426)))))

(declare-fun b!3926189 () Bool)

(declare-fun e!2428540 () Bool)

(assert (=> b!3926189 (= e!2428540 (>= (size!31274 prefix!426) (size!31274 lt!1369940)))))

(declare-fun b!3926187 () Bool)

(declare-fun res!1588409 () Bool)

(assert (=> b!3926187 (=> (not res!1588409) (not e!2428539))))

(assert (=> b!3926187 (= res!1588409 (= (head!8325 lt!1369940) (head!8325 prefix!426)))))

(declare-fun d!1163825 () Bool)

(assert (=> d!1163825 e!2428540))

(declare-fun res!1588407 () Bool)

(assert (=> d!1163825 (=> res!1588407 e!2428540)))

(declare-fun lt!1370155 () Bool)

(assert (=> d!1163825 (= res!1588407 (not lt!1370155))))

(assert (=> d!1163825 (= lt!1370155 e!2428541)))

(declare-fun res!1588408 () Bool)

(assert (=> d!1163825 (=> res!1588408 e!2428541)))

(assert (=> d!1163825 (= res!1588408 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163825 (= (isPrefix!3599 lt!1369940 prefix!426) lt!1370155)))

(assert (= (and d!1163825 (not res!1588408)) b!3926186))

(assert (= (and b!3926186 res!1588406) b!3926187))

(assert (= (and b!3926187 res!1588409) b!3926188))

(assert (= (and d!1163825 (not res!1588407)) b!3926189))

(assert (=> b!3926188 m!4490245))

(assert (=> b!3926188 m!4490283))

(assert (=> b!3926188 m!4490245))

(assert (=> b!3926188 m!4490283))

(declare-fun m!4490555 () Bool)

(assert (=> b!3926188 m!4490555))

(assert (=> b!3926189 m!4489849))

(assert (=> b!3926189 m!4489913))

(assert (=> b!3926187 m!4490253))

(assert (=> b!3926187 m!4490289))

(assert (=> b!3925717 d!1163825))

(declare-fun d!1163827 () Bool)

(declare-fun lt!1370156 () Int)

(assert (=> d!1163827 (>= lt!1370156 0)))

(declare-fun e!2428542 () Int)

(assert (=> d!1163827 (= lt!1370156 e!2428542)))

(declare-fun c!682167 () Bool)

(assert (=> d!1163827 (= c!682167 ((_ is Nil!41682) (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947)))))))

(assert (=> d!1163827 (= (size!31274 (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947)))) lt!1370156)))

(declare-fun b!3926190 () Bool)

(assert (=> b!3926190 (= e!2428542 0)))

(declare-fun b!3926191 () Bool)

(assert (=> b!3926191 (= e!2428542 (+ 1 (size!31274 (t!324941 (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947)))))))))

(assert (= (and d!1163827 c!682167) b!3926190))

(assert (= (and d!1163827 (not c!682167)) b!3926191))

(declare-fun m!4490557 () Bool)

(assert (=> b!3926191 m!4490557))

(assert (=> b!3925718 d!1163827))

(declare-fun b!3926193 () Bool)

(declare-fun e!2428543 () List!41806)

(assert (=> b!3926193 (= e!2428543 (Cons!41682 (h!47102 lt!1369940) (++!10765 (t!324941 lt!1369940) lt!1369929)))))

(declare-fun b!3926195 () Bool)

(declare-fun lt!1370157 () List!41806)

(declare-fun e!2428544 () Bool)

(assert (=> b!3926195 (= e!2428544 (or (not (= lt!1369929 Nil!41682)) (= lt!1370157 lt!1369940)))))

(declare-fun b!3926194 () Bool)

(declare-fun res!1588410 () Bool)

(assert (=> b!3926194 (=> (not res!1588410) (not e!2428544))))

(assert (=> b!3926194 (= res!1588410 (= (size!31274 lt!1370157) (+ (size!31274 lt!1369940) (size!31274 lt!1369929))))))

(declare-fun d!1163829 () Bool)

(assert (=> d!1163829 e!2428544))

(declare-fun res!1588411 () Bool)

(assert (=> d!1163829 (=> (not res!1588411) (not e!2428544))))

(assert (=> d!1163829 (= res!1588411 (= (content!6271 lt!1370157) ((_ map or) (content!6271 lt!1369940) (content!6271 lt!1369929))))))

(assert (=> d!1163829 (= lt!1370157 e!2428543)))

(declare-fun c!682168 () Bool)

(assert (=> d!1163829 (= c!682168 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163829 (= (++!10765 lt!1369940 lt!1369929) lt!1370157)))

(declare-fun b!3926192 () Bool)

(assert (=> b!3926192 (= e!2428543 lt!1369929)))

(assert (= (and d!1163829 c!682168) b!3926192))

(assert (= (and d!1163829 (not c!682168)) b!3926193))

(assert (= (and d!1163829 res!1588411) b!3926194))

(assert (= (and b!3926194 res!1588410) b!3926195))

(declare-fun m!4490559 () Bool)

(assert (=> b!3926193 m!4490559))

(declare-fun m!4490561 () Bool)

(assert (=> b!3926194 m!4490561))

(assert (=> b!3926194 m!4489913))

(declare-fun m!4490563 () Bool)

(assert (=> b!3926194 m!4490563))

(declare-fun m!4490565 () Bool)

(assert (=> d!1163829 m!4490565))

(assert (=> d!1163829 m!4490325))

(declare-fun m!4490567 () Bool)

(assert (=> d!1163829 m!4490567))

(assert (=> b!3925737 d!1163829))

(declare-fun b!3926197 () Bool)

(declare-fun e!2428545 () List!41806)

(assert (=> b!3926197 (= e!2428545 (Cons!41682 (h!47102 lt!1369960) (++!10765 (t!324941 lt!1369960) suffix!1176)))))

(declare-fun e!2428546 () Bool)

(declare-fun lt!1370158 () List!41806)

(declare-fun b!3926199 () Bool)

(assert (=> b!3926199 (= e!2428546 (or (not (= suffix!1176 Nil!41682)) (= lt!1370158 lt!1369960)))))

(declare-fun b!3926198 () Bool)

(declare-fun res!1588412 () Bool)

(assert (=> b!3926198 (=> (not res!1588412) (not e!2428546))))

(assert (=> b!3926198 (= res!1588412 (= (size!31274 lt!1370158) (+ (size!31274 lt!1369960) (size!31274 suffix!1176))))))

(declare-fun d!1163831 () Bool)

(assert (=> d!1163831 e!2428546))

(declare-fun res!1588413 () Bool)

(assert (=> d!1163831 (=> (not res!1588413) (not e!2428546))))

(assert (=> d!1163831 (= res!1588413 (= (content!6271 lt!1370158) ((_ map or) (content!6271 lt!1369960) (content!6271 suffix!1176))))))

(assert (=> d!1163831 (= lt!1370158 e!2428545)))

(declare-fun c!682169 () Bool)

(assert (=> d!1163831 (= c!682169 ((_ is Nil!41682) lt!1369960))))

(assert (=> d!1163831 (= (++!10765 lt!1369960 suffix!1176) lt!1370158)))

(declare-fun b!3926196 () Bool)

(assert (=> b!3926196 (= e!2428545 suffix!1176)))

(assert (= (and d!1163831 c!682169) b!3926196))

(assert (= (and d!1163831 (not c!682169)) b!3926197))

(assert (= (and d!1163831 res!1588413) b!3926198))

(assert (= (and b!3926198 res!1588412) b!3926199))

(declare-fun m!4490569 () Bool)

(assert (=> b!3926197 m!4490569))

(declare-fun m!4490571 () Bool)

(assert (=> b!3926198 m!4490571))

(assert (=> b!3926198 m!4490321))

(assert (=> b!3926198 m!4489935))

(declare-fun m!4490573 () Bool)

(assert (=> d!1163831 m!4490573))

(assert (=> d!1163831 m!4490327))

(declare-fun m!4490575 () Bool)

(assert (=> d!1163831 m!4490575))

(assert (=> b!3925737 d!1163831))

(declare-fun d!1163833 () Bool)

(assert (=> d!1163833 (= (++!10765 (++!10765 lt!1369940 lt!1369960) suffix!1176) (++!10765 lt!1369940 (++!10765 lt!1369960 suffix!1176)))))

(declare-fun lt!1370161 () Unit!60000)

(declare-fun choose!23305 (List!41806 List!41806 List!41806) Unit!60000)

(assert (=> d!1163833 (= lt!1370161 (choose!23305 lt!1369940 lt!1369960 suffix!1176))))

(assert (=> d!1163833 (= (lemmaConcatAssociativity!2300 lt!1369940 lt!1369960 suffix!1176) lt!1370161)))

(declare-fun bs!586000 () Bool)

(assert (= bs!586000 d!1163833))

(assert (=> bs!586000 m!4489953))

(declare-fun m!4490577 () Bool)

(assert (=> bs!586000 m!4490577))

(assert (=> bs!586000 m!4489833))

(assert (=> bs!586000 m!4489953))

(assert (=> bs!586000 m!4489833))

(declare-fun m!4490579 () Bool)

(assert (=> bs!586000 m!4490579))

(declare-fun m!4490581 () Bool)

(assert (=> bs!586000 m!4490581))

(assert (=> b!3925737 d!1163833))

(declare-fun b!3926218 () Bool)

(declare-fun res!1588429 () Bool)

(declare-fun e!2428553 () Bool)

(assert (=> b!3926218 (=> (not res!1588429) (not e!2428553))))

(declare-fun lt!1370176 () Option!8924)

(assert (=> b!3926218 (= res!1588429 (= (value!205998 (_1!23610 (get!13776 lt!1370176))) (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (get!13776 lt!1370176)))) (seqFromList!4771 (originalCharacters!7104 (_1!23610 (get!13776 lt!1370176)))))))))

(declare-fun b!3926219 () Bool)

(declare-fun e!2428554 () Option!8924)

(declare-fun lt!1370173 () Option!8924)

(declare-fun lt!1370175 () Option!8924)

(assert (=> b!3926219 (= e!2428554 (ite (and ((_ is None!8923) lt!1370173) ((_ is None!8923) lt!1370175)) None!8923 (ite ((_ is None!8923) lt!1370175) lt!1370173 (ite ((_ is None!8923) lt!1370173) lt!1370175 (ite (>= (size!31273 (_1!23610 (v!39249 lt!1370173))) (size!31273 (_1!23610 (v!39249 lt!1370175)))) lt!1370173 lt!1370175)))))))

(declare-fun call!284722 () Option!8924)

(assert (=> b!3926219 (= lt!1370173 call!284722)))

(assert (=> b!3926219 (= lt!1370175 (maxPrefix!3397 thiss!20629 (t!324943 rules!2768) lt!1369943))))

(declare-fun d!1163835 () Bool)

(declare-fun e!2428555 () Bool)

(assert (=> d!1163835 e!2428555))

(declare-fun res!1588433 () Bool)

(assert (=> d!1163835 (=> res!1588433 e!2428555)))

(assert (=> d!1163835 (= res!1588433 (isEmpty!24840 lt!1370176))))

(assert (=> d!1163835 (= lt!1370176 e!2428554)))

(declare-fun c!682172 () Bool)

(assert (=> d!1163835 (= c!682172 (and ((_ is Cons!41684) rules!2768) ((_ is Nil!41684) (t!324943 rules!2768))))))

(declare-fun lt!1370174 () Unit!60000)

(declare-fun lt!1370172 () Unit!60000)

(assert (=> d!1163835 (= lt!1370174 lt!1370172)))

(assert (=> d!1163835 (isPrefix!3599 lt!1369943 lt!1369943)))

(declare-fun lemmaIsPrefixRefl!2272 (List!41806 List!41806) Unit!60000)

(assert (=> d!1163835 (= lt!1370172 (lemmaIsPrefixRefl!2272 lt!1369943 lt!1369943))))

(declare-fun rulesValidInductive!2342 (LexerInterface!6093 List!41808) Bool)

(assert (=> d!1163835 (rulesValidInductive!2342 thiss!20629 rules!2768)))

(assert (=> d!1163835 (= (maxPrefix!3397 thiss!20629 rules!2768 lt!1369943) lt!1370176)))

(declare-fun b!3926220 () Bool)

(assert (=> b!3926220 (= e!2428555 e!2428553)))

(declare-fun res!1588430 () Bool)

(assert (=> b!3926220 (=> (not res!1588430) (not e!2428553))))

(declare-fun isDefined!6941 (Option!8924) Bool)

(assert (=> b!3926220 (= res!1588430 (isDefined!6941 lt!1370176))))

(declare-fun b!3926221 () Bool)

(declare-fun res!1588428 () Bool)

(assert (=> b!3926221 (=> (not res!1588428) (not e!2428553))))

(assert (=> b!3926221 (= res!1588428 (matchR!5474 (regex!6504 (rule!9442 (_1!23610 (get!13776 lt!1370176)))) (list!15487 (charsOf!4328 (_1!23610 (get!13776 lt!1370176))))))))

(declare-fun b!3926222 () Bool)

(declare-fun res!1588431 () Bool)

(assert (=> b!3926222 (=> (not res!1588431) (not e!2428553))))

(assert (=> b!3926222 (= res!1588431 (< (size!31274 (_2!23610 (get!13776 lt!1370176))) (size!31274 lt!1369943)))))

(declare-fun b!3926223 () Bool)

(declare-fun res!1588434 () Bool)

(assert (=> b!3926223 (=> (not res!1588434) (not e!2428553))))

(assert (=> b!3926223 (= res!1588434 (= (list!15487 (charsOf!4328 (_1!23610 (get!13776 lt!1370176)))) (originalCharacters!7104 (_1!23610 (get!13776 lt!1370176)))))))

(declare-fun b!3926224 () Bool)

(declare-fun res!1588432 () Bool)

(assert (=> b!3926224 (=> (not res!1588432) (not e!2428553))))

(assert (=> b!3926224 (= res!1588432 (= (++!10765 (list!15487 (charsOf!4328 (_1!23610 (get!13776 lt!1370176)))) (_2!23610 (get!13776 lt!1370176))) lt!1369943))))

(declare-fun b!3926225 () Bool)

(assert (=> b!3926225 (= e!2428554 call!284722)))

(declare-fun bm!284717 () Bool)

(assert (=> bm!284717 (= call!284722 (maxPrefixOneRule!2467 thiss!20629 (h!47104 rules!2768) lt!1369943))))

(declare-fun b!3926226 () Bool)

(declare-fun contains!8357 (List!41808 Rule!12808) Bool)

(assert (=> b!3926226 (= e!2428553 (contains!8357 rules!2768 (rule!9442 (_1!23610 (get!13776 lt!1370176)))))))

(assert (= (and d!1163835 c!682172) b!3926225))

(assert (= (and d!1163835 (not c!682172)) b!3926219))

(assert (= (or b!3926225 b!3926219) bm!284717))

(assert (= (and d!1163835 (not res!1588433)) b!3926220))

(assert (= (and b!3926220 res!1588430) b!3926223))

(assert (= (and b!3926223 res!1588434) b!3926222))

(assert (= (and b!3926222 res!1588431) b!3926224))

(assert (= (and b!3926224 res!1588432) b!3926218))

(assert (= (and b!3926218 res!1588429) b!3926221))

(assert (= (and b!3926221 res!1588428) b!3926226))

(declare-fun m!4490583 () Bool)

(assert (=> b!3926218 m!4490583))

(declare-fun m!4490585 () Bool)

(assert (=> b!3926218 m!4490585))

(assert (=> b!3926218 m!4490585))

(declare-fun m!4490587 () Bool)

(assert (=> b!3926218 m!4490587))

(assert (=> b!3926222 m!4490583))

(declare-fun m!4490589 () Bool)

(assert (=> b!3926222 m!4490589))

(assert (=> b!3926222 m!4489839))

(assert (=> b!3926223 m!4490583))

(declare-fun m!4490591 () Bool)

(assert (=> b!3926223 m!4490591))

(assert (=> b!3926223 m!4490591))

(declare-fun m!4490593 () Bool)

(assert (=> b!3926223 m!4490593))

(declare-fun m!4490595 () Bool)

(assert (=> bm!284717 m!4490595))

(assert (=> b!3926226 m!4490583))

(declare-fun m!4490597 () Bool)

(assert (=> b!3926226 m!4490597))

(declare-fun m!4490599 () Bool)

(assert (=> b!3926219 m!4490599))

(assert (=> b!3926224 m!4490583))

(assert (=> b!3926224 m!4490591))

(assert (=> b!3926224 m!4490591))

(assert (=> b!3926224 m!4490593))

(assert (=> b!3926224 m!4490593))

(declare-fun m!4490601 () Bool)

(assert (=> b!3926224 m!4490601))

(declare-fun m!4490603 () Bool)

(assert (=> b!3926220 m!4490603))

(declare-fun m!4490605 () Bool)

(assert (=> d!1163835 m!4490605))

(declare-fun m!4490607 () Bool)

(assert (=> d!1163835 m!4490607))

(declare-fun m!4490609 () Bool)

(assert (=> d!1163835 m!4490609))

(declare-fun m!4490611 () Bool)

(assert (=> d!1163835 m!4490611))

(assert (=> b!3926221 m!4490583))

(assert (=> b!3926221 m!4490591))

(assert (=> b!3926221 m!4490591))

(assert (=> b!3926221 m!4490593))

(assert (=> b!3926221 m!4490593))

(declare-fun m!4490613 () Bool)

(assert (=> b!3926221 m!4490613))

(assert (=> b!3925738 d!1163835))

(declare-fun d!1163837 () Bool)

(declare-fun lt!1370177 () Int)

(assert (=> d!1163837 (>= lt!1370177 0)))

(declare-fun e!2428556 () Int)

(assert (=> d!1163837 (= lt!1370177 e!2428556)))

(declare-fun c!682173 () Bool)

(assert (=> d!1163837 (= c!682173 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163837 (= (size!31274 lt!1369940) lt!1370177)))

(declare-fun b!3926227 () Bool)

(assert (=> b!3926227 (= e!2428556 0)))

(declare-fun b!3926228 () Bool)

(assert (=> b!3926228 (= e!2428556 (+ 1 (size!31274 (t!324941 lt!1369940))))))

(assert (= (and d!1163837 c!682173) b!3926227))

(assert (= (and d!1163837 (not c!682173)) b!3926228))

(declare-fun m!4490615 () Bool)

(assert (=> b!3926228 m!4490615))

(assert (=> b!3925715 d!1163837))

(declare-fun d!1163839 () Bool)

(assert (=> d!1163839 (= (size!31273 (_1!23610 (v!39249 lt!1369947))) (size!31274 (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947)))))))

(declare-fun Unit!60010 () Unit!60000)

(assert (=> d!1163839 (= (lemmaCharactersSize!1161 (_1!23610 (v!39249 lt!1369947))) Unit!60010)))

(declare-fun bs!586001 () Bool)

(assert (= bs!586001 d!1163839))

(assert (=> bs!586001 m!4489933))

(assert (=> b!3925715 d!1163839))

(declare-fun b!3926229 () Bool)

(declare-fun e!2428559 () Bool)

(declare-fun e!2428557 () Bool)

(assert (=> b!3926229 (= e!2428559 e!2428557)))

(declare-fun res!1588435 () Bool)

(assert (=> b!3926229 (=> (not res!1588435) (not e!2428557))))

(assert (=> b!3926229 (= res!1588435 (not ((_ is Nil!41682) lt!1369962)))))

(declare-fun b!3926231 () Bool)

(assert (=> b!3926231 (= e!2428557 (isPrefix!3599 (tail!6051 lt!1369940) (tail!6051 lt!1369962)))))

(declare-fun b!3926232 () Bool)

(declare-fun e!2428558 () Bool)

(assert (=> b!3926232 (= e!2428558 (>= (size!31274 lt!1369962) (size!31274 lt!1369940)))))

(declare-fun b!3926230 () Bool)

(declare-fun res!1588438 () Bool)

(assert (=> b!3926230 (=> (not res!1588438) (not e!2428557))))

(assert (=> b!3926230 (= res!1588438 (= (head!8325 lt!1369940) (head!8325 lt!1369962)))))

(declare-fun d!1163841 () Bool)

(assert (=> d!1163841 e!2428558))

(declare-fun res!1588436 () Bool)

(assert (=> d!1163841 (=> res!1588436 e!2428558)))

(declare-fun lt!1370178 () Bool)

(assert (=> d!1163841 (= res!1588436 (not lt!1370178))))

(assert (=> d!1163841 (= lt!1370178 e!2428559)))

(declare-fun res!1588437 () Bool)

(assert (=> d!1163841 (=> res!1588437 e!2428559)))

(assert (=> d!1163841 (= res!1588437 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163841 (= (isPrefix!3599 lt!1369940 lt!1369962) lt!1370178)))

(assert (= (and d!1163841 (not res!1588437)) b!3926229))

(assert (= (and b!3926229 res!1588435) b!3926230))

(assert (= (and b!3926230 res!1588438) b!3926231))

(assert (= (and d!1163841 (not res!1588436)) b!3926232))

(assert (=> b!3926231 m!4490245))

(declare-fun m!4490617 () Bool)

(assert (=> b!3926231 m!4490617))

(assert (=> b!3926231 m!4490245))

(assert (=> b!3926231 m!4490617))

(declare-fun m!4490619 () Bool)

(assert (=> b!3926231 m!4490619))

(declare-fun m!4490621 () Bool)

(assert (=> b!3926232 m!4490621))

(assert (=> b!3926232 m!4489913))

(assert (=> b!3926230 m!4490253))

(declare-fun m!4490623 () Bool)

(assert (=> b!3926230 m!4490623))

(assert (=> b!3925715 d!1163841))

(declare-fun d!1163843 () Bool)

(declare-fun lt!1370179 () List!41806)

(assert (=> d!1163843 (= (++!10765 lt!1369940 lt!1370179) lt!1369943)))

(declare-fun e!2428560 () List!41806)

(assert (=> d!1163843 (= lt!1370179 e!2428560)))

(declare-fun c!682174 () Bool)

(assert (=> d!1163843 (= c!682174 ((_ is Cons!41682) lt!1369940))))

(assert (=> d!1163843 (>= (size!31274 lt!1369943) (size!31274 lt!1369940))))

(assert (=> d!1163843 (= (getSuffix!2054 lt!1369943 lt!1369940) lt!1370179)))

(declare-fun b!3926233 () Bool)

(assert (=> b!3926233 (= e!2428560 (getSuffix!2054 (tail!6051 lt!1369943) (t!324941 lt!1369940)))))

(declare-fun b!3926234 () Bool)

(assert (=> b!3926234 (= e!2428560 lt!1369943)))

(assert (= (and d!1163843 c!682174) b!3926233))

(assert (= (and d!1163843 (not c!682174)) b!3926234))

(declare-fun m!4490625 () Bool)

(assert (=> d!1163843 m!4490625))

(assert (=> d!1163843 m!4489839))

(assert (=> d!1163843 m!4489913))

(assert (=> b!3926233 m!4490285))

(assert (=> b!3926233 m!4490285))

(declare-fun m!4490627 () Bool)

(assert (=> b!3926233 m!4490627))

(assert (=> b!3925715 d!1163843))

(declare-fun b!3926235 () Bool)

(declare-fun e!2428561 () tuple2!40950)

(assert (=> b!3926235 (= e!2428561 (tuple2!40951 Nil!41683 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun b!3926236 () Bool)

(declare-fun e!2428562 () Bool)

(declare-fun e!2428563 () Bool)

(assert (=> b!3926236 (= e!2428562 e!2428563)))

(declare-fun res!1588439 () Bool)

(declare-fun lt!1370181 () tuple2!40950)

(assert (=> b!3926236 (= res!1588439 (< (size!31274 (_2!23609 lt!1370181)) (size!31274 (_2!23610 (v!39249 lt!1369947)))))))

(assert (=> b!3926236 (=> (not res!1588439) (not e!2428563))))

(declare-fun d!1163845 () Bool)

(assert (=> d!1163845 e!2428562))

(declare-fun c!682176 () Bool)

(assert (=> d!1163845 (= c!682176 (> (size!31278 (_1!23609 lt!1370181)) 0))))

(assert (=> d!1163845 (= lt!1370181 e!2428561)))

(declare-fun c!682175 () Bool)

(declare-fun lt!1370180 () Option!8924)

(assert (=> d!1163845 (= c!682175 ((_ is Some!8923) lt!1370180))))

(assert (=> d!1163845 (= lt!1370180 (maxPrefix!3397 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163845 (= (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1369947))) lt!1370181)))

(declare-fun b!3926237 () Bool)

(assert (=> b!3926237 (= e!2428562 (= (_2!23609 lt!1370181) (_2!23610 (v!39249 lt!1369947))))))

(declare-fun b!3926238 () Bool)

(declare-fun lt!1370182 () tuple2!40950)

(assert (=> b!3926238 (= e!2428561 (tuple2!40951 (Cons!41683 (_1!23610 (v!39249 lt!1370180)) (_1!23609 lt!1370182)) (_2!23609 lt!1370182)))))

(assert (=> b!3926238 (= lt!1370182 (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1370180))))))

(declare-fun b!3926239 () Bool)

(assert (=> b!3926239 (= e!2428563 (not (isEmpty!24838 (_1!23609 lt!1370181))))))

(assert (= (and d!1163845 c!682175) b!3926238))

(assert (= (and d!1163845 (not c!682175)) b!3926235))

(assert (= (and d!1163845 c!682176) b!3926236))

(assert (= (and d!1163845 (not c!682176)) b!3926237))

(assert (= (and b!3926236 res!1588439) b!3926239))

(declare-fun m!4490629 () Bool)

(assert (=> b!3926236 m!4490629))

(assert (=> b!3926236 m!4489937))

(declare-fun m!4490631 () Bool)

(assert (=> d!1163845 m!4490631))

(declare-fun m!4490633 () Bool)

(assert (=> d!1163845 m!4490633))

(declare-fun m!4490635 () Bool)

(assert (=> b!3926238 m!4490635))

(declare-fun m!4490637 () Bool)

(assert (=> b!3926239 m!4490637))

(assert (=> b!3925715 d!1163845))

(declare-fun d!1163847 () Bool)

(declare-fun list!15489 (Conc!12715) List!41806)

(assert (=> d!1163847 (= (list!15487 (charsOf!4328 (_1!23610 (v!39249 lt!1369947)))) (list!15489 (c!682083 (charsOf!4328 (_1!23610 (v!39249 lt!1369947))))))))

(declare-fun bs!586002 () Bool)

(assert (= bs!586002 d!1163847))

(declare-fun m!4490639 () Bool)

(assert (=> bs!586002 m!4490639))

(assert (=> b!3925715 d!1163847))

(declare-fun d!1163849 () Bool)

(assert (=> d!1163849 (isPrefix!3599 lt!1369940 (++!10765 lt!1369940 (_2!23610 (v!39249 lt!1369947))))))

(declare-fun lt!1370183 () Unit!60000)

(assert (=> d!1163849 (= lt!1370183 (choose!23296 lt!1369940 (_2!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163849 (= (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369940 (_2!23610 (v!39249 lt!1369947))) lt!1370183)))

(declare-fun bs!586003 () Bool)

(assert (= bs!586003 d!1163849))

(assert (=> bs!586003 m!4489909))

(assert (=> bs!586003 m!4489909))

(declare-fun m!4490641 () Bool)

(assert (=> bs!586003 m!4490641))

(declare-fun m!4490643 () Bool)

(assert (=> bs!586003 m!4490643))

(assert (=> b!3925715 d!1163849))

(declare-fun b!3926241 () Bool)

(declare-fun e!2428564 () List!41806)

(assert (=> b!3926241 (= e!2428564 (Cons!41682 (h!47102 lt!1369940) (++!10765 (t!324941 lt!1369940) (_2!23610 (v!39249 lt!1369947)))))))

(declare-fun lt!1370184 () List!41806)

(declare-fun e!2428565 () Bool)

(declare-fun b!3926243 () Bool)

(assert (=> b!3926243 (= e!2428565 (or (not (= (_2!23610 (v!39249 lt!1369947)) Nil!41682)) (= lt!1370184 lt!1369940)))))

(declare-fun b!3926242 () Bool)

(declare-fun res!1588440 () Bool)

(assert (=> b!3926242 (=> (not res!1588440) (not e!2428565))))

(assert (=> b!3926242 (= res!1588440 (= (size!31274 lt!1370184) (+ (size!31274 lt!1369940) (size!31274 (_2!23610 (v!39249 lt!1369947))))))))

(declare-fun d!1163851 () Bool)

(assert (=> d!1163851 e!2428565))

(declare-fun res!1588441 () Bool)

(assert (=> d!1163851 (=> (not res!1588441) (not e!2428565))))

(assert (=> d!1163851 (= res!1588441 (= (content!6271 lt!1370184) ((_ map or) (content!6271 lt!1369940) (content!6271 (_2!23610 (v!39249 lt!1369947))))))))

(assert (=> d!1163851 (= lt!1370184 e!2428564)))

(declare-fun c!682177 () Bool)

(assert (=> d!1163851 (= c!682177 ((_ is Nil!41682) lt!1369940))))

(assert (=> d!1163851 (= (++!10765 lt!1369940 (_2!23610 (v!39249 lt!1369947))) lt!1370184)))

(declare-fun b!3926240 () Bool)

(assert (=> b!3926240 (= e!2428564 (_2!23610 (v!39249 lt!1369947)))))

(assert (= (and d!1163851 c!682177) b!3926240))

(assert (= (and d!1163851 (not c!682177)) b!3926241))

(assert (= (and d!1163851 res!1588441) b!3926242))

(assert (= (and b!3926242 res!1588440) b!3926243))

(declare-fun m!4490645 () Bool)

(assert (=> b!3926241 m!4490645))

(declare-fun m!4490647 () Bool)

(assert (=> b!3926242 m!4490647))

(assert (=> b!3926242 m!4489913))

(assert (=> b!3926242 m!4489937))

(declare-fun m!4490649 () Bool)

(assert (=> d!1163851 m!4490649))

(assert (=> d!1163851 m!4490325))

(declare-fun m!4490651 () Bool)

(assert (=> d!1163851 m!4490651))

(assert (=> b!3925715 d!1163851))

(declare-fun d!1163853 () Bool)

(assert (=> d!1163853 (ruleValid!2452 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))))))

(declare-fun lt!1370187 () Unit!60000)

(declare-fun choose!23307 (LexerInterface!6093 Rule!12808 List!41808) Unit!60000)

(assert (=> d!1163853 (= lt!1370187 (choose!23307 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) rules!2768))))

(assert (=> d!1163853 (contains!8357 rules!2768 (rule!9442 (_1!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163853 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1532 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947))) rules!2768) lt!1370187)))

(declare-fun bs!586004 () Bool)

(assert (= bs!586004 d!1163853))

(assert (=> bs!586004 m!4489905))

(declare-fun m!4490653 () Bool)

(assert (=> bs!586004 m!4490653))

(declare-fun m!4490655 () Bool)

(assert (=> bs!586004 m!4490655))

(assert (=> b!3925715 d!1163853))

(declare-fun d!1163855 () Bool)

(assert (=> d!1163855 (= (_2!23610 (v!39249 lt!1369947)) lt!1369927)))

(declare-fun lt!1370188 () Unit!60000)

(assert (=> d!1163855 (= lt!1370188 (choose!23295 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369927 lt!1369943))))

(assert (=> d!1163855 (isPrefix!3599 lt!1369940 lt!1369943)))

(assert (=> d!1163855 (= (lemmaSamePrefixThenSameSuffix!1820 lt!1369940 (_2!23610 (v!39249 lt!1369947)) lt!1369940 lt!1369927 lt!1369943) lt!1370188)))

(declare-fun bs!586005 () Bool)

(assert (= bs!586005 d!1163855))

(declare-fun m!4490657 () Bool)

(assert (=> bs!586005 m!4490657))

(assert (=> bs!586005 m!4490239))

(assert (=> b!3925715 d!1163855))

(declare-fun d!1163857 () Bool)

(declare-fun fromListB!2202 (List!41806) BalanceConc!25024)

(assert (=> d!1163857 (= (seqFromList!4771 lt!1369940) (fromListB!2202 lt!1369940))))

(declare-fun bs!586006 () Bool)

(assert (= bs!586006 d!1163857))

(declare-fun m!4490659 () Bool)

(assert (=> bs!586006 m!4490659))

(assert (=> b!3925715 d!1163857))

(declare-fun d!1163859 () Bool)

(declare-fun dynLambda!17866 (Int BalanceConc!25024) TokenValue!6734)

(assert (=> d!1163859 (= (apply!9743 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (seqFromList!4771 lt!1369940)) (dynLambda!17866 (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))) (seqFromList!4771 lt!1369940)))))

(declare-fun b_lambda!114885 () Bool)

(assert (=> (not b_lambda!114885) (not d!1163859)))

(declare-fun t!325000 () Bool)

(declare-fun tb!234467 () Bool)

(assert (=> (and b!3925724 (= (toValue!8956 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325000) tb!234467))

(declare-fun result!284130 () Bool)

(assert (=> tb!234467 (= result!284130 (inv!21 (dynLambda!17866 (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))) (seqFromList!4771 lt!1369940))))))

(declare-fun m!4490661 () Bool)

(assert (=> tb!234467 m!4490661))

(assert (=> d!1163859 t!325000))

(declare-fun b_and!299429 () Bool)

(assert (= b_and!299375 (and (=> t!325000 result!284130) b_and!299429)))

(declare-fun t!325002 () Bool)

(declare-fun tb!234469 () Bool)

(assert (=> (and b!3925720 (= (toValue!8956 (transformation!6504 (h!47104 rules!2768))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325002) tb!234469))

(declare-fun result!284134 () Bool)

(assert (= result!284134 result!284130))

(assert (=> d!1163859 t!325002))

(declare-fun b_and!299431 () Bool)

(assert (= b_and!299379 (and (=> t!325002 result!284134) b_and!299431)))

(declare-fun t!325004 () Bool)

(declare-fun tb!234471 () Bool)

(assert (=> (and b!3925736 (= (toValue!8956 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325004) tb!234471))

(declare-fun result!284136 () Bool)

(assert (= result!284136 result!284130))

(assert (=> d!1163859 t!325004))

(declare-fun b_and!299433 () Bool)

(assert (= b_and!299383 (and (=> t!325004 result!284136) b_and!299433)))

(assert (=> d!1163859 m!4489915))

(declare-fun m!4490663 () Bool)

(assert (=> d!1163859 m!4490663))

(assert (=> b!3925715 d!1163859))

(declare-fun d!1163861 () Bool)

(declare-fun lt!1370191 () BalanceConc!25024)

(assert (=> d!1163861 (= (list!15487 lt!1370191) (originalCharacters!7104 (_1!23610 (v!39249 lt!1369947))))))

(assert (=> d!1163861 (= lt!1370191 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))) (value!205998 (_1!23610 (v!39249 lt!1369947)))))))

(assert (=> d!1163861 (= (charsOf!4328 (_1!23610 (v!39249 lt!1369947))) lt!1370191)))

(declare-fun b_lambda!114887 () Bool)

(assert (=> (not b_lambda!114887) (not d!1163861)))

(declare-fun t!325006 () Bool)

(declare-fun tb!234473 () Bool)

(assert (=> (and b!3925724 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325006) tb!234473))

(declare-fun b!3926246 () Bool)

(declare-fun e!2428569 () Bool)

(declare-fun tp!1195339 () Bool)

(assert (=> b!3926246 (= e!2428569 (and (inv!55876 (c!682083 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))) (value!205998 (_1!23610 (v!39249 lt!1369947)))))) tp!1195339))))

(declare-fun result!284138 () Bool)

(assert (=> tb!234473 (= result!284138 (and (inv!55877 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))) (value!205998 (_1!23610 (v!39249 lt!1369947))))) e!2428569))))

(assert (= tb!234473 b!3926246))

(declare-fun m!4490665 () Bool)

(assert (=> b!3926246 m!4490665))

(declare-fun m!4490667 () Bool)

(assert (=> tb!234473 m!4490667))

(assert (=> d!1163861 t!325006))

(declare-fun b_and!299435 () Bool)

(assert (= b_and!299423 (and (=> t!325006 result!284138) b_and!299435)))

(declare-fun t!325008 () Bool)

(declare-fun tb!234475 () Bool)

(assert (=> (and b!3925720 (= (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325008) tb!234475))

(declare-fun result!284140 () Bool)

(assert (= result!284140 result!284138))

(assert (=> d!1163861 t!325008))

(declare-fun b_and!299437 () Bool)

(assert (= b_and!299425 (and (=> t!325008 result!284140) b_and!299437)))

(declare-fun tb!234477 () Bool)

(declare-fun t!325010 () Bool)

(assert (=> (and b!3925736 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325010) tb!234477))

(declare-fun result!284142 () Bool)

(assert (= result!284142 result!284138))

(assert (=> d!1163861 t!325010))

(declare-fun b_and!299439 () Bool)

(assert (= b_and!299427 (and (=> t!325010 result!284142) b_and!299439)))

(declare-fun m!4490669 () Bool)

(assert (=> d!1163861 m!4490669))

(declare-fun m!4490671 () Bool)

(assert (=> d!1163861 m!4490671))

(assert (=> b!3925715 d!1163861))

(declare-fun d!1163863 () Bool)

(declare-fun res!1588446 () Bool)

(declare-fun e!2428572 () Bool)

(assert (=> d!1163863 (=> (not res!1588446) (not e!2428572))))

(declare-fun validRegex!5192 (Regex!11409) Bool)

(assert (=> d!1163863 (= res!1588446 (validRegex!5192 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947))))))))

(assert (=> d!1163863 (= (ruleValid!2452 thiss!20629 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) e!2428572)))

(declare-fun b!3926251 () Bool)

(declare-fun res!1588447 () Bool)

(assert (=> b!3926251 (=> (not res!1588447) (not e!2428572))))

(declare-fun nullable!3993 (Regex!11409) Bool)

(assert (=> b!3926251 (= res!1588447 (not (nullable!3993 (regex!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))))))

(declare-fun b!3926252 () Bool)

(assert (=> b!3926252 (= e!2428572 (not (= (tag!7364 (rule!9442 (_1!23610 (v!39249 lt!1369947)))) (String!47389 ""))))))

(assert (= (and d!1163863 res!1588446) b!3926251))

(assert (= (and b!3926251 res!1588447) b!3926252))

(declare-fun m!4490673 () Bool)

(assert (=> d!1163863 m!4490673))

(declare-fun m!4490675 () Bool)

(assert (=> b!3926251 m!4490675))

(assert (=> b!3925715 d!1163863))

(declare-fun d!1163865 () Bool)

(declare-fun res!1588448 () Bool)

(declare-fun e!2428573 () Bool)

(assert (=> d!1163865 (=> (not res!1588448) (not e!2428573))))

(assert (=> d!1163865 (= res!1588448 (not (isEmpty!24837 (originalCharacters!7104 (h!47103 suffixTokens!72)))))))

(assert (=> d!1163865 (= (inv!55872 (h!47103 suffixTokens!72)) e!2428573)))

(declare-fun b!3926253 () Bool)

(declare-fun res!1588449 () Bool)

(assert (=> b!3926253 (=> (not res!1588449) (not e!2428573))))

(assert (=> b!3926253 (= res!1588449 (= (originalCharacters!7104 (h!47103 suffixTokens!72)) (list!15487 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (value!205998 (h!47103 suffixTokens!72))))))))

(declare-fun b!3926254 () Bool)

(assert (=> b!3926254 (= e!2428573 (= (size!31273 (h!47103 suffixTokens!72)) (size!31274 (originalCharacters!7104 (h!47103 suffixTokens!72)))))))

(assert (= (and d!1163865 res!1588448) b!3926253))

(assert (= (and b!3926253 res!1588449) b!3926254))

(declare-fun b_lambda!114889 () Bool)

(assert (=> (not b_lambda!114889) (not b!3926253)))

(declare-fun t!325012 () Bool)

(declare-fun tb!234479 () Bool)

(assert (=> (and b!3925724 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325012) tb!234479))

(declare-fun b!3926255 () Bool)

(declare-fun e!2428574 () Bool)

(declare-fun tp!1195340 () Bool)

(assert (=> b!3926255 (= e!2428574 (and (inv!55876 (c!682083 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (value!205998 (h!47103 suffixTokens!72))))) tp!1195340))))

(declare-fun result!284144 () Bool)

(assert (=> tb!234479 (= result!284144 (and (inv!55877 (dynLambda!17865 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (value!205998 (h!47103 suffixTokens!72)))) e!2428574))))

(assert (= tb!234479 b!3926255))

(declare-fun m!4490677 () Bool)

(assert (=> b!3926255 m!4490677))

(declare-fun m!4490679 () Bool)

(assert (=> tb!234479 m!4490679))

(assert (=> b!3926253 t!325012))

(declare-fun b_and!299441 () Bool)

(assert (= b_and!299435 (and (=> t!325012 result!284144) b_and!299441)))

(declare-fun tb!234481 () Bool)

(declare-fun t!325014 () Bool)

(assert (=> (and b!3925720 (= (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325014) tb!234481))

(declare-fun result!284146 () Bool)

(assert (= result!284146 result!284144))

(assert (=> b!3926253 t!325014))

(declare-fun b_and!299443 () Bool)

(assert (= b_and!299437 (and (=> t!325014 result!284146) b_and!299443)))

(declare-fun t!325016 () Bool)

(declare-fun tb!234483 () Bool)

(assert (=> (and b!3925736 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325016) tb!234483))

(declare-fun result!284148 () Bool)

(assert (= result!284148 result!284144))

(assert (=> b!3926253 t!325016))

(declare-fun b_and!299445 () Bool)

(assert (= b_and!299439 (and (=> t!325016 result!284148) b_and!299445)))

(declare-fun m!4490681 () Bool)

(assert (=> d!1163865 m!4490681))

(declare-fun m!4490683 () Bool)

(assert (=> b!3926253 m!4490683))

(assert (=> b!3926253 m!4490683))

(declare-fun m!4490685 () Bool)

(assert (=> b!3926253 m!4490685))

(declare-fun m!4490687 () Bool)

(assert (=> b!3926254 m!4490687))

(assert (=> b!3925713 d!1163865))

(declare-fun b!3926257 () Bool)

(declare-fun e!2428575 () List!41806)

(assert (=> b!3926257 (= e!2428575 (Cons!41682 (h!47102 lt!1369934) (++!10765 (t!324941 lt!1369934) suffix!1176)))))

(declare-fun lt!1370192 () List!41806)

(declare-fun b!3926259 () Bool)

(declare-fun e!2428576 () Bool)

(assert (=> b!3926259 (= e!2428576 (or (not (= suffix!1176 Nil!41682)) (= lt!1370192 lt!1369934)))))

(declare-fun b!3926258 () Bool)

(declare-fun res!1588450 () Bool)

(assert (=> b!3926258 (=> (not res!1588450) (not e!2428576))))

(assert (=> b!3926258 (= res!1588450 (= (size!31274 lt!1370192) (+ (size!31274 lt!1369934) (size!31274 suffix!1176))))))

(declare-fun d!1163867 () Bool)

(assert (=> d!1163867 e!2428576))

(declare-fun res!1588451 () Bool)

(assert (=> d!1163867 (=> (not res!1588451) (not e!2428576))))

(assert (=> d!1163867 (= res!1588451 (= (content!6271 lt!1370192) ((_ map or) (content!6271 lt!1369934) (content!6271 suffix!1176))))))

(assert (=> d!1163867 (= lt!1370192 e!2428575)))

(declare-fun c!682178 () Bool)

(assert (=> d!1163867 (= c!682178 ((_ is Nil!41682) lt!1369934))))

(assert (=> d!1163867 (= (++!10765 lt!1369934 suffix!1176) lt!1370192)))

(declare-fun b!3926256 () Bool)

(assert (=> b!3926256 (= e!2428575 suffix!1176)))

(assert (= (and d!1163867 c!682178) b!3926256))

(assert (= (and d!1163867 (not c!682178)) b!3926257))

(assert (= (and d!1163867 res!1588451) b!3926258))

(assert (= (and b!3926258 res!1588450) b!3926259))

(declare-fun m!4490689 () Bool)

(assert (=> b!3926257 m!4490689))

(declare-fun m!4490691 () Bool)

(assert (=> b!3926258 m!4490691))

(declare-fun m!4490693 () Bool)

(assert (=> b!3926258 m!4490693))

(assert (=> b!3926258 m!4489935))

(declare-fun m!4490695 () Bool)

(assert (=> d!1163867 m!4490695))

(declare-fun m!4490697 () Bool)

(assert (=> d!1163867 m!4490697))

(assert (=> d!1163867 m!4490575))

(assert (=> b!3925714 d!1163867))

(declare-fun d!1163869 () Bool)

(assert (=> d!1163869 (= (isEmpty!24838 prefixTokens!80) ((_ is Nil!41683) prefixTokens!80))))

(assert (=> b!3925744 d!1163869))

(declare-fun b!3926260 () Bool)

(declare-fun e!2428579 () Bool)

(assert (=> b!3926260 (= e!2428579 (inv!17 (value!205998 (h!47103 prefixTokens!80))))))

(declare-fun b!3926261 () Bool)

(declare-fun res!1588452 () Bool)

(declare-fun e!2428577 () Bool)

(assert (=> b!3926261 (=> res!1588452 e!2428577)))

(assert (=> b!3926261 (= res!1588452 (not ((_ is IntegerValue!20204) (value!205998 (h!47103 prefixTokens!80)))))))

(assert (=> b!3926261 (= e!2428579 e!2428577)))

(declare-fun d!1163871 () Bool)

(declare-fun c!682180 () Bool)

(assert (=> d!1163871 (= c!682180 ((_ is IntegerValue!20202) (value!205998 (h!47103 prefixTokens!80))))))

(declare-fun e!2428578 () Bool)

(assert (=> d!1163871 (= (inv!21 (value!205998 (h!47103 prefixTokens!80))) e!2428578)))

(declare-fun b!3926262 () Bool)

(assert (=> b!3926262 (= e!2428578 e!2428579)))

(declare-fun c!682179 () Bool)

(assert (=> b!3926262 (= c!682179 ((_ is IntegerValue!20203) (value!205998 (h!47103 prefixTokens!80))))))

(declare-fun b!3926263 () Bool)

(assert (=> b!3926263 (= e!2428578 (inv!16 (value!205998 (h!47103 prefixTokens!80))))))

(declare-fun b!3926264 () Bool)

(assert (=> b!3926264 (= e!2428577 (inv!15 (value!205998 (h!47103 prefixTokens!80))))))

(assert (= (and d!1163871 c!682180) b!3926263))

(assert (= (and d!1163871 (not c!682180)) b!3926262))

(assert (= (and b!3926262 c!682179) b!3926260))

(assert (= (and b!3926262 (not c!682179)) b!3926261))

(assert (= (and b!3926261 (not res!1588452)) b!3926264))

(declare-fun m!4490699 () Bool)

(assert (=> b!3926260 m!4490699))

(declare-fun m!4490701 () Bool)

(assert (=> b!3926263 m!4490701))

(declare-fun m!4490703 () Bool)

(assert (=> b!3926264 m!4490703))

(assert (=> b!3925723 d!1163871))

(declare-fun d!1163873 () Bool)

(assert (=> d!1163873 (= (isEmpty!24836 rules!2768) ((_ is Nil!41684) rules!2768))))

(assert (=> b!3925721 d!1163873))

(declare-fun b!3926265 () Bool)

(declare-fun e!2428580 () tuple2!40950)

(assert (=> b!3926265 (= e!2428580 (tuple2!40951 Nil!41683 lt!1369943))))

(declare-fun b!3926266 () Bool)

(declare-fun e!2428581 () Bool)

(declare-fun e!2428582 () Bool)

(assert (=> b!3926266 (= e!2428581 e!2428582)))

(declare-fun res!1588453 () Bool)

(declare-fun lt!1370194 () tuple2!40950)

(assert (=> b!3926266 (= res!1588453 (< (size!31274 (_2!23609 lt!1370194)) (size!31274 lt!1369943)))))

(assert (=> b!3926266 (=> (not res!1588453) (not e!2428582))))

(declare-fun d!1163875 () Bool)

(assert (=> d!1163875 e!2428581))

(declare-fun c!682182 () Bool)

(assert (=> d!1163875 (= c!682182 (> (size!31278 (_1!23609 lt!1370194)) 0))))

(assert (=> d!1163875 (= lt!1370194 e!2428580)))

(declare-fun c!682181 () Bool)

(declare-fun lt!1370193 () Option!8924)

(assert (=> d!1163875 (= c!682181 ((_ is Some!8923) lt!1370193))))

(assert (=> d!1163875 (= lt!1370193 (maxPrefix!3397 thiss!20629 rules!2768 lt!1369943))))

(assert (=> d!1163875 (= (lexList!1861 thiss!20629 rules!2768 lt!1369943) lt!1370194)))

(declare-fun b!3926267 () Bool)

(assert (=> b!3926267 (= e!2428581 (= (_2!23609 lt!1370194) lt!1369943))))

(declare-fun b!3926268 () Bool)

(declare-fun lt!1370195 () tuple2!40950)

(assert (=> b!3926268 (= e!2428580 (tuple2!40951 (Cons!41683 (_1!23610 (v!39249 lt!1370193)) (_1!23609 lt!1370195)) (_2!23609 lt!1370195)))))

(assert (=> b!3926268 (= lt!1370195 (lexList!1861 thiss!20629 rules!2768 (_2!23610 (v!39249 lt!1370193))))))

(declare-fun b!3926269 () Bool)

(assert (=> b!3926269 (= e!2428582 (not (isEmpty!24838 (_1!23609 lt!1370194))))))

(assert (= (and d!1163875 c!682181) b!3926268))

(assert (= (and d!1163875 (not c!682181)) b!3926265))

(assert (= (and d!1163875 c!682182) b!3926266))

(assert (= (and d!1163875 (not c!682182)) b!3926267))

(assert (= (and b!3926266 res!1588453) b!3926269))

(declare-fun m!4490705 () Bool)

(assert (=> b!3926266 m!4490705))

(assert (=> b!3926266 m!4489839))

(declare-fun m!4490707 () Bool)

(assert (=> d!1163875 m!4490707))

(assert (=> d!1163875 m!4489865))

(declare-fun m!4490709 () Bool)

(assert (=> b!3926268 m!4490709))

(declare-fun m!4490711 () Bool)

(assert (=> b!3926269 m!4490711))

(assert (=> b!3925743 d!1163875))

(declare-fun b!3926280 () Bool)

(declare-fun res!1588459 () Bool)

(declare-fun e!2428588 () Bool)

(assert (=> b!3926280 (=> (not res!1588459) (not e!2428588))))

(declare-fun lt!1370198 () List!41807)

(assert (=> b!3926280 (= res!1588459 (= (size!31278 lt!1370198) (+ (size!31278 prefixTokens!80) (size!31278 suffixTokens!72))))))

(declare-fun b!3926279 () Bool)

(declare-fun e!2428587 () List!41807)

(assert (=> b!3926279 (= e!2428587 (Cons!41683 (h!47103 prefixTokens!80) (++!10766 (t!324942 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3926278 () Bool)

(assert (=> b!3926278 (= e!2428587 suffixTokens!72)))

(declare-fun d!1163877 () Bool)

(assert (=> d!1163877 e!2428588))

(declare-fun res!1588458 () Bool)

(assert (=> d!1163877 (=> (not res!1588458) (not e!2428588))))

(declare-fun content!6272 (List!41807) (InoxSet Token!12146))

(assert (=> d!1163877 (= res!1588458 (= (content!6272 lt!1370198) ((_ map or) (content!6272 prefixTokens!80) (content!6272 suffixTokens!72))))))

(assert (=> d!1163877 (= lt!1370198 e!2428587)))

(declare-fun c!682185 () Bool)

(assert (=> d!1163877 (= c!682185 ((_ is Nil!41683) prefixTokens!80))))

(assert (=> d!1163877 (= (++!10766 prefixTokens!80 suffixTokens!72) lt!1370198)))

(declare-fun b!3926281 () Bool)

(assert (=> b!3926281 (= e!2428588 (or (not (= suffixTokens!72 Nil!41683)) (= lt!1370198 prefixTokens!80)))))

(assert (= (and d!1163877 c!682185) b!3926278))

(assert (= (and d!1163877 (not c!682185)) b!3926279))

(assert (= (and d!1163877 res!1588458) b!3926280))

(assert (= (and b!3926280 res!1588459) b!3926281))

(declare-fun m!4490713 () Bool)

(assert (=> b!3926280 m!4490713))

(declare-fun m!4490715 () Bool)

(assert (=> b!3926280 m!4490715))

(declare-fun m!4490717 () Bool)

(assert (=> b!3926280 m!4490717))

(declare-fun m!4490719 () Bool)

(assert (=> b!3926279 m!4490719))

(declare-fun m!4490721 () Bool)

(assert (=> d!1163877 m!4490721))

(declare-fun m!4490723 () Bool)

(assert (=> d!1163877 m!4490723))

(declare-fun m!4490725 () Bool)

(assert (=> d!1163877 m!4490725))

(assert (=> b!3925743 d!1163877))

(declare-fun b!3926283 () Bool)

(declare-fun e!2428589 () List!41806)

(assert (=> b!3926283 (= e!2428589 (Cons!41682 (h!47102 prefix!426) (++!10765 (t!324941 prefix!426) suffix!1176)))))

(declare-fun b!3926285 () Bool)

(declare-fun e!2428590 () Bool)

(declare-fun lt!1370199 () List!41806)

(assert (=> b!3926285 (= e!2428590 (or (not (= suffix!1176 Nil!41682)) (= lt!1370199 prefix!426)))))

(declare-fun b!3926284 () Bool)

(declare-fun res!1588460 () Bool)

(assert (=> b!3926284 (=> (not res!1588460) (not e!2428590))))

(assert (=> b!3926284 (= res!1588460 (= (size!31274 lt!1370199) (+ (size!31274 prefix!426) (size!31274 suffix!1176))))))

(declare-fun d!1163879 () Bool)

(assert (=> d!1163879 e!2428590))

(declare-fun res!1588461 () Bool)

(assert (=> d!1163879 (=> (not res!1588461) (not e!2428590))))

(assert (=> d!1163879 (= res!1588461 (= (content!6271 lt!1370199) ((_ map or) (content!6271 prefix!426) (content!6271 suffix!1176))))))

(assert (=> d!1163879 (= lt!1370199 e!2428589)))

(declare-fun c!682186 () Bool)

(assert (=> d!1163879 (= c!682186 ((_ is Nil!41682) prefix!426))))

(assert (=> d!1163879 (= (++!10765 prefix!426 suffix!1176) lt!1370199)))

(declare-fun b!3926282 () Bool)

(assert (=> b!3926282 (= e!2428589 suffix!1176)))

(assert (= (and d!1163879 c!682186) b!3926282))

(assert (= (and d!1163879 (not c!682186)) b!3926283))

(assert (= (and d!1163879 res!1588461) b!3926284))

(assert (= (and b!3926284 res!1588460) b!3926285))

(declare-fun m!4490727 () Bool)

(assert (=> b!3926283 m!4490727))

(declare-fun m!4490729 () Bool)

(assert (=> b!3926284 m!4490729))

(assert (=> b!3926284 m!4489849))

(assert (=> b!3926284 m!4489935))

(declare-fun m!4490731 () Bool)

(assert (=> d!1163879 m!4490731))

(declare-fun m!4490733 () Bool)

(assert (=> d!1163879 m!4490733))

(assert (=> d!1163879 m!4490575))

(assert (=> b!3925743 d!1163879))

(declare-fun b!3926288 () Bool)

(declare-fun res!1588463 () Bool)

(declare-fun e!2428592 () Bool)

(assert (=> b!3926288 (=> (not res!1588463) (not e!2428592))))

(declare-fun lt!1370200 () List!41807)

(assert (=> b!3926288 (= res!1588463 (= (size!31278 lt!1370200) (+ (size!31278 (tail!6049 prefixTokens!80)) (size!31278 suffixTokens!72))))))

(declare-fun b!3926287 () Bool)

(declare-fun e!2428591 () List!41807)

(assert (=> b!3926287 (= e!2428591 (Cons!41683 (h!47103 (tail!6049 prefixTokens!80)) (++!10766 (t!324942 (tail!6049 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3926286 () Bool)

(assert (=> b!3926286 (= e!2428591 suffixTokens!72)))

(declare-fun d!1163881 () Bool)

(assert (=> d!1163881 e!2428592))

(declare-fun res!1588462 () Bool)

(assert (=> d!1163881 (=> (not res!1588462) (not e!2428592))))

(assert (=> d!1163881 (= res!1588462 (= (content!6272 lt!1370200) ((_ map or) (content!6272 (tail!6049 prefixTokens!80)) (content!6272 suffixTokens!72))))))

(assert (=> d!1163881 (= lt!1370200 e!2428591)))

(declare-fun c!682187 () Bool)

(assert (=> d!1163881 (= c!682187 ((_ is Nil!41683) (tail!6049 prefixTokens!80)))))

(assert (=> d!1163881 (= (++!10766 (tail!6049 prefixTokens!80) suffixTokens!72) lt!1370200)))

(declare-fun b!3926289 () Bool)

(assert (=> b!3926289 (= e!2428592 (or (not (= suffixTokens!72 Nil!41683)) (= lt!1370200 (tail!6049 prefixTokens!80))))))

(assert (= (and d!1163881 c!682187) b!3926286))

(assert (= (and d!1163881 (not c!682187)) b!3926287))

(assert (= (and d!1163881 res!1588462) b!3926288))

(assert (= (and b!3926288 res!1588463) b!3926289))

(declare-fun m!4490735 () Bool)

(assert (=> b!3926288 m!4490735))

(assert (=> b!3926288 m!4489945))

(declare-fun m!4490737 () Bool)

(assert (=> b!3926288 m!4490737))

(assert (=> b!3926288 m!4490717))

(declare-fun m!4490739 () Bool)

(assert (=> b!3926287 m!4490739))

(declare-fun m!4490741 () Bool)

(assert (=> d!1163881 m!4490741))

(assert (=> d!1163881 m!4489945))

(declare-fun m!4490743 () Bool)

(assert (=> d!1163881 m!4490743))

(assert (=> d!1163881 m!4490725))

(assert (=> b!3925722 d!1163881))

(assert (=> b!3925722 d!1163737))

(declare-fun b!3926290 () Bool)

(declare-fun e!2428595 () Bool)

(declare-fun e!2428593 () Bool)

(assert (=> b!3926290 (= e!2428595 e!2428593)))

(declare-fun res!1588464 () Bool)

(assert (=> b!3926290 (=> (not res!1588464) (not e!2428593))))

(assert (=> b!3926290 (= res!1588464 (not ((_ is Nil!41682) lt!1369929)))))

(declare-fun b!3926292 () Bool)

(assert (=> b!3926292 (= e!2428593 (isPrefix!3599 (tail!6051 lt!1369960) (tail!6051 lt!1369929)))))

(declare-fun b!3926293 () Bool)

(declare-fun e!2428594 () Bool)

(assert (=> b!3926293 (= e!2428594 (>= (size!31274 lt!1369929) (size!31274 lt!1369960)))))

(declare-fun b!3926291 () Bool)

(declare-fun res!1588467 () Bool)

(assert (=> b!3926291 (=> (not res!1588467) (not e!2428593))))

(assert (=> b!3926291 (= res!1588467 (= (head!8325 lt!1369960) (head!8325 lt!1369929)))))

(declare-fun d!1163883 () Bool)

(assert (=> d!1163883 e!2428594))

(declare-fun res!1588465 () Bool)

(assert (=> d!1163883 (=> res!1588465 e!2428594)))

(declare-fun lt!1370201 () Bool)

(assert (=> d!1163883 (= res!1588465 (not lt!1370201))))

(assert (=> d!1163883 (= lt!1370201 e!2428595)))

(declare-fun res!1588466 () Bool)

(assert (=> d!1163883 (=> res!1588466 e!2428595)))

(assert (=> d!1163883 (= res!1588466 ((_ is Nil!41682) lt!1369960))))

(assert (=> d!1163883 (= (isPrefix!3599 lt!1369960 lt!1369929) lt!1370201)))

(assert (= (and d!1163883 (not res!1588466)) b!3926290))

(assert (= (and b!3926290 res!1588464) b!3926291))

(assert (= (and b!3926291 res!1588467) b!3926292))

(assert (= (and d!1163883 (not res!1588465)) b!3926293))

(declare-fun m!4490745 () Bool)

(assert (=> b!3926292 m!4490745))

(declare-fun m!4490747 () Bool)

(assert (=> b!3926292 m!4490747))

(assert (=> b!3926292 m!4490745))

(assert (=> b!3926292 m!4490747))

(declare-fun m!4490749 () Bool)

(assert (=> b!3926292 m!4490749))

(assert (=> b!3926293 m!4490563))

(assert (=> b!3926293 m!4490321))

(declare-fun m!4490751 () Bool)

(assert (=> b!3926291 m!4490751))

(declare-fun m!4490753 () Bool)

(assert (=> b!3926291 m!4490753))

(assert (=> b!3925722 d!1163883))

(declare-fun d!1163885 () Bool)

(assert (=> d!1163885 (isPrefix!3599 lt!1369960 (++!10765 lt!1369960 suffix!1176))))

(declare-fun lt!1370202 () Unit!60000)

(assert (=> d!1163885 (= lt!1370202 (choose!23296 lt!1369960 suffix!1176))))

(assert (=> d!1163885 (= (lemmaConcatTwoListThenFirstIsPrefix!2462 lt!1369960 suffix!1176) lt!1370202)))

(declare-fun bs!586007 () Bool)

(assert (= bs!586007 d!1163885))

(assert (=> bs!586007 m!4489833))

(assert (=> bs!586007 m!4489833))

(declare-fun m!4490755 () Bool)

(assert (=> bs!586007 m!4490755))

(declare-fun m!4490757 () Bool)

(assert (=> bs!586007 m!4490757))

(assert (=> b!3925722 d!1163885))

(declare-fun d!1163887 () Bool)

(assert (=> d!1163887 (= (head!8323 prefixTokens!80) (h!47103 prefixTokens!80))))

(assert (=> b!3925741 d!1163887))

(declare-fun d!1163889 () Bool)

(assert (=> d!1163889 (= (inv!55869 (tag!7364 (rule!9442 (h!47103 suffixTokens!72)))) (= (mod (str.len (value!205997 (tag!7364 (rule!9442 (h!47103 suffixTokens!72))))) 2) 0))))

(assert (=> b!3925742 d!1163889))

(declare-fun d!1163891 () Bool)

(declare-fun res!1588468 () Bool)

(declare-fun e!2428596 () Bool)

(assert (=> d!1163891 (=> (not res!1588468) (not e!2428596))))

(assert (=> d!1163891 (= res!1588468 (semiInverseModEq!2793 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toValue!8956 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))))))

(assert (=> d!1163891 (= (inv!55873 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) e!2428596)))

(declare-fun b!3926294 () Bool)

(assert (=> b!3926294 (= e!2428596 (equivClasses!2692 (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toValue!8956 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))))))

(assert (= (and d!1163891 res!1588468) b!3926294))

(declare-fun m!4490759 () Bool)

(assert (=> d!1163891 m!4490759))

(declare-fun m!4490761 () Bool)

(assert (=> b!3926294 m!4490761))

(assert (=> b!3925742 d!1163891))

(declare-fun b!3926297 () Bool)

(declare-fun res!1588470 () Bool)

(declare-fun e!2428598 () Bool)

(assert (=> b!3926297 (=> (not res!1588470) (not e!2428598))))

(declare-fun lt!1370203 () List!41807)

(assert (=> b!3926297 (= res!1588470 (= (size!31278 lt!1370203) (+ (size!31278 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683)) (size!31278 (_1!23609 lt!1369948)))))))

(declare-fun b!3926296 () Bool)

(declare-fun e!2428597 () List!41807)

(assert (=> b!3926296 (= e!2428597 (Cons!41683 (h!47103 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683)) (++!10766 (t!324942 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683)) (_1!23609 lt!1369948))))))

(declare-fun b!3926295 () Bool)

(assert (=> b!3926295 (= e!2428597 (_1!23609 lt!1369948))))

(declare-fun d!1163893 () Bool)

(assert (=> d!1163893 e!2428598))

(declare-fun res!1588469 () Bool)

(assert (=> d!1163893 (=> (not res!1588469) (not e!2428598))))

(assert (=> d!1163893 (= res!1588469 (= (content!6272 lt!1370203) ((_ map or) (content!6272 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683)) (content!6272 (_1!23609 lt!1369948)))))))

(assert (=> d!1163893 (= lt!1370203 e!2428597)))

(declare-fun c!682188 () Bool)

(assert (=> d!1163893 (= c!682188 ((_ is Nil!41683) (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683)))))

(assert (=> d!1163893 (= (++!10766 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683) (_1!23609 lt!1369948)) lt!1370203)))

(declare-fun b!3926298 () Bool)

(assert (=> b!3926298 (= e!2428598 (or (not (= (_1!23609 lt!1369948) Nil!41683)) (= lt!1370203 (Cons!41683 (_1!23610 (v!39249 lt!1369947)) Nil!41683))))))

(assert (= (and d!1163893 c!682188) b!3926295))

(assert (= (and d!1163893 (not c!682188)) b!3926296))

(assert (= (and d!1163893 res!1588469) b!3926297))

(assert (= (and b!3926297 res!1588470) b!3926298))

(declare-fun m!4490763 () Bool)

(assert (=> b!3926297 m!4490763))

(declare-fun m!4490765 () Bool)

(assert (=> b!3926297 m!4490765))

(declare-fun m!4490767 () Bool)

(assert (=> b!3926297 m!4490767))

(declare-fun m!4490769 () Bool)

(assert (=> b!3926296 m!4490769))

(declare-fun m!4490771 () Bool)

(assert (=> d!1163893 m!4490771))

(declare-fun m!4490773 () Bool)

(assert (=> d!1163893 m!4490773))

(declare-fun m!4490775 () Bool)

(assert (=> d!1163893 m!4490775))

(assert (=> b!3925740 d!1163893))

(declare-fun d!1163895 () Bool)

(assert (=> d!1163895 (not (= (lexList!1861 thiss!20629 rules!2768 (_2!23610 lt!1369937)) (tuple2!40951 (++!10766 lt!1369953 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1370206 () Unit!60000)

(declare-fun choose!23308 (LexerInterface!6093 List!41808 List!41806 List!41806 List!41807 List!41806 List!41807) Unit!60000)

(assert (=> d!1163895 (= lt!1370206 (choose!23308 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91 lt!1369953))))

(assert (=> d!1163895 (not (isEmpty!24836 rules!2768))))

(assert (=> d!1163895 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!104 thiss!20629 rules!2768 suffix!1176 (_2!23610 lt!1369937) suffixTokens!72 suffixResult!91 lt!1369953) lt!1370206)))

(declare-fun bs!586008 () Bool)

(assert (= bs!586008 d!1163895))

(assert (=> bs!586008 m!4489847))

(assert (=> bs!586008 m!4489959))

(declare-fun m!4490777 () Bool)

(assert (=> bs!586008 m!4490777))

(assert (=> bs!586008 m!4489859))

(assert (=> b!3925719 d!1163895))

(declare-fun b!3926301 () Bool)

(declare-fun res!1588472 () Bool)

(declare-fun e!2428600 () Bool)

(assert (=> b!3926301 (=> (not res!1588472) (not e!2428600))))

(declare-fun lt!1370207 () List!41807)

(assert (=> b!3926301 (= res!1588472 (= (size!31278 lt!1370207) (+ (size!31278 lt!1369953) (size!31278 suffixTokens!72))))))

(declare-fun b!3926300 () Bool)

(declare-fun e!2428599 () List!41807)

(assert (=> b!3926300 (= e!2428599 (Cons!41683 (h!47103 lt!1369953) (++!10766 (t!324942 lt!1369953) suffixTokens!72)))))

(declare-fun b!3926299 () Bool)

(assert (=> b!3926299 (= e!2428599 suffixTokens!72)))

(declare-fun d!1163897 () Bool)

(assert (=> d!1163897 e!2428600))

(declare-fun res!1588471 () Bool)

(assert (=> d!1163897 (=> (not res!1588471) (not e!2428600))))

(assert (=> d!1163897 (= res!1588471 (= (content!6272 lt!1370207) ((_ map or) (content!6272 lt!1369953) (content!6272 suffixTokens!72))))))

(assert (=> d!1163897 (= lt!1370207 e!2428599)))

(declare-fun c!682189 () Bool)

(assert (=> d!1163897 (= c!682189 ((_ is Nil!41683) lt!1369953))))

(assert (=> d!1163897 (= (++!10766 lt!1369953 suffixTokens!72) lt!1370207)))

(declare-fun b!3926302 () Bool)

(assert (=> b!3926302 (= e!2428600 (or (not (= suffixTokens!72 Nil!41683)) (= lt!1370207 lt!1369953)))))

(assert (= (and d!1163897 c!682189) b!3926299))

(assert (= (and d!1163897 (not c!682189)) b!3926300))

(assert (= (and d!1163897 res!1588471) b!3926301))

(assert (= (and b!3926301 res!1588472) b!3926302))

(declare-fun m!4490779 () Bool)

(assert (=> b!3926301 m!4490779))

(declare-fun m!4490781 () Bool)

(assert (=> b!3926301 m!4490781))

(assert (=> b!3926301 m!4490717))

(declare-fun m!4490783 () Bool)

(assert (=> b!3926300 m!4490783))

(declare-fun m!4490785 () Bool)

(assert (=> d!1163897 m!4490785))

(declare-fun m!4490787 () Bool)

(assert (=> d!1163897 m!4490787))

(assert (=> d!1163897 m!4490725))

(assert (=> b!3925719 d!1163897))

(declare-fun b!3926307 () Bool)

(declare-fun e!2428603 () Bool)

(declare-fun tp!1195343 () Bool)

(assert (=> b!3926307 (= e!2428603 (and tp_is_empty!19789 tp!1195343))))

(assert (=> b!3925728 (= tp!1195261 e!2428603)))

(assert (= (and b!3925728 ((_ is Cons!41682) (t!324941 suffix!1176))) b!3926307))

(declare-fun e!2428606 () Bool)

(assert (=> b!3925750 (= tp!1195256 e!2428606)))

(declare-fun b!3926320 () Bool)

(declare-fun tp!1195356 () Bool)

(assert (=> b!3926320 (= e!2428606 tp!1195356)))

(declare-fun b!3926319 () Bool)

(declare-fun tp!1195358 () Bool)

(declare-fun tp!1195355 () Bool)

(assert (=> b!3926319 (= e!2428606 (and tp!1195358 tp!1195355))))

(declare-fun b!3926318 () Bool)

(assert (=> b!3926318 (= e!2428606 tp_is_empty!19789)))

(declare-fun b!3926321 () Bool)

(declare-fun tp!1195357 () Bool)

(declare-fun tp!1195354 () Bool)

(assert (=> b!3926321 (= e!2428606 (and tp!1195357 tp!1195354))))

(assert (= (and b!3925750 ((_ is ElementMatch!11409) (regex!6504 (rule!9442 (h!47103 prefixTokens!80))))) b!3926318))

(assert (= (and b!3925750 ((_ is Concat!18144) (regex!6504 (rule!9442 (h!47103 prefixTokens!80))))) b!3926319))

(assert (= (and b!3925750 ((_ is Star!11409) (regex!6504 (rule!9442 (h!47103 prefixTokens!80))))) b!3926320))

(assert (= (and b!3925750 ((_ is Union!11409) (regex!6504 (rule!9442 (h!47103 prefixTokens!80))))) b!3926321))

(declare-fun b!3926322 () Bool)

(declare-fun e!2428607 () Bool)

(declare-fun tp!1195359 () Bool)

(assert (=> b!3926322 (= e!2428607 (and tp_is_empty!19789 tp!1195359))))

(assert (=> b!3925716 (= tp!1195260 e!2428607)))

(assert (= (and b!3925716 ((_ is Cons!41682) (t!324941 suffixResult!91))) b!3926322))

(declare-fun b!3926333 () Bool)

(declare-fun b_free!107045 () Bool)

(declare-fun b_next!107749 () Bool)

(assert (=> b!3926333 (= b_free!107045 (not b_next!107749))))

(declare-fun tb!234485 () Bool)

(declare-fun t!325018 () Bool)

(assert (=> (and b!3926333 (= (toValue!8956 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325018) tb!234485))

(declare-fun result!284156 () Bool)

(assert (= result!284156 result!284130))

(assert (=> d!1163859 t!325018))

(declare-fun b_and!299447 () Bool)

(declare-fun tp!1195368 () Bool)

(assert (=> b!3926333 (= tp!1195368 (and (=> t!325018 result!284156) b_and!299447))))

(declare-fun b_free!107047 () Bool)

(declare-fun b_next!107751 () Bool)

(assert (=> b!3926333 (= b_free!107047 (not b_next!107751))))

(declare-fun t!325020 () Bool)

(declare-fun tb!234487 () Bool)

(assert (=> (and b!3926333 (= (toChars!8815 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!325020) tb!234487))

(declare-fun result!284158 () Bool)

(assert (= result!284158 result!284122))

(assert (=> b!3926177 t!325020))

(declare-fun tb!234489 () Bool)

(declare-fun t!325022 () Bool)

(assert (=> (and b!3926333 (= (toChars!8815 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325022) tb!234489))

(declare-fun result!284160 () Bool)

(assert (= result!284160 result!284138))

(assert (=> d!1163861 t!325022))

(declare-fun tb!234491 () Bool)

(declare-fun t!325024 () Bool)

(assert (=> (and b!3926333 (= (toChars!8815 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325024) tb!234491))

(declare-fun result!284162 () Bool)

(assert (= result!284162 result!284144))

(assert (=> b!3926253 t!325024))

(declare-fun tp!1195370 () Bool)

(declare-fun b_and!299449 () Bool)

(assert (=> b!3926333 (= tp!1195370 (and (=> t!325020 result!284158) (=> t!325022 result!284160) (=> t!325024 result!284162) b_and!299449))))

(declare-fun e!2428618 () Bool)

(assert (=> b!3926333 (= e!2428618 (and tp!1195368 tp!1195370))))

(declare-fun tp!1195371 () Bool)

(declare-fun e!2428617 () Bool)

(declare-fun b!3926332 () Bool)

(assert (=> b!3926332 (= e!2428617 (and tp!1195371 (inv!55869 (tag!7364 (h!47104 (t!324943 rules!2768)))) (inv!55873 (transformation!6504 (h!47104 (t!324943 rules!2768)))) e!2428618))))

(declare-fun b!3926331 () Bool)

(declare-fun e!2428616 () Bool)

(declare-fun tp!1195369 () Bool)

(assert (=> b!3926331 (= e!2428616 (and e!2428617 tp!1195369))))

(assert (=> b!3925727 (= tp!1195259 e!2428616)))

(assert (= b!3926332 b!3926333))

(assert (= b!3926331 b!3926332))

(assert (= (and b!3925727 ((_ is Cons!41684) (t!324943 rules!2768))) b!3926331))

(declare-fun m!4490789 () Bool)

(assert (=> b!3926332 m!4490789))

(declare-fun m!4490791 () Bool)

(assert (=> b!3926332 m!4490791))

(declare-fun b!3926347 () Bool)

(declare-fun b_free!107049 () Bool)

(declare-fun b_next!107753 () Bool)

(assert (=> b!3926347 (= b_free!107049 (not b_next!107753))))

(declare-fun t!325026 () Bool)

(declare-fun tb!234493 () Bool)

(assert (=> (and b!3926347 (= (toValue!8956 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325026) tb!234493))

(declare-fun result!284166 () Bool)

(assert (= result!284166 result!284130))

(assert (=> d!1163859 t!325026))

(declare-fun tp!1195385 () Bool)

(declare-fun b_and!299451 () Bool)

(assert (=> b!3926347 (= tp!1195385 (and (=> t!325026 result!284166) b_and!299451))))

(declare-fun b_free!107051 () Bool)

(declare-fun b_next!107755 () Bool)

(assert (=> b!3926347 (= b_free!107051 (not b_next!107755))))

(declare-fun t!325028 () Bool)

(declare-fun tb!234495 () Bool)

(assert (=> (and b!3926347 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!325028) tb!234495))

(declare-fun result!284168 () Bool)

(assert (= result!284168 result!284122))

(assert (=> b!3926177 t!325028))

(declare-fun t!325030 () Bool)

(declare-fun tb!234497 () Bool)

(assert (=> (and b!3926347 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325030) tb!234497))

(declare-fun result!284170 () Bool)

(assert (= result!284170 result!284138))

(assert (=> d!1163861 t!325030))

(declare-fun t!325032 () Bool)

(declare-fun tb!234499 () Bool)

(assert (=> (and b!3926347 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325032) tb!234499))

(declare-fun result!284172 () Bool)

(assert (= result!284172 result!284144))

(assert (=> b!3926253 t!325032))

(declare-fun b_and!299453 () Bool)

(declare-fun tp!1195382 () Bool)

(assert (=> b!3926347 (= tp!1195382 (and (=> t!325028 result!284168) (=> t!325030 result!284170) (=> t!325032 result!284172) b_and!299453))))

(declare-fun tp!1195383 () Bool)

(declare-fun e!2428634 () Bool)

(declare-fun e!2428632 () Bool)

(declare-fun b!3926346 () Bool)

(assert (=> b!3926346 (= e!2428632 (and tp!1195383 (inv!55869 (tag!7364 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (inv!55873 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) e!2428634))))

(declare-fun tp!1195386 () Bool)

(declare-fun b!3926345 () Bool)

(declare-fun e!2428636 () Bool)

(assert (=> b!3926345 (= e!2428636 (and (inv!21 (value!205998 (h!47103 (t!324942 suffixTokens!72)))) e!2428632 tp!1195386))))

(declare-fun e!2428637 () Bool)

(declare-fun b!3926344 () Bool)

(declare-fun tp!1195384 () Bool)

(assert (=> b!3926344 (= e!2428637 (and (inv!55872 (h!47103 (t!324942 suffixTokens!72))) e!2428636 tp!1195384))))

(assert (=> b!3925713 (= tp!1195263 e!2428637)))

(assert (=> b!3926347 (= e!2428634 (and tp!1195385 tp!1195382))))

(assert (= b!3926346 b!3926347))

(assert (= b!3926345 b!3926346))

(assert (= b!3926344 b!3926345))

(assert (= (and b!3925713 ((_ is Cons!41683) (t!324942 suffixTokens!72))) b!3926344))

(declare-fun m!4490793 () Bool)

(assert (=> b!3926346 m!4490793))

(declare-fun m!4490795 () Bool)

(assert (=> b!3926346 m!4490795))

(declare-fun m!4490797 () Bool)

(assert (=> b!3926345 m!4490797))

(declare-fun m!4490799 () Bool)

(assert (=> b!3926344 m!4490799))

(declare-fun b!3926348 () Bool)

(declare-fun e!2428638 () Bool)

(declare-fun tp!1195387 () Bool)

(assert (=> b!3926348 (= e!2428638 (and tp_is_empty!19789 tp!1195387))))

(assert (=> b!3925745 (= tp!1195266 e!2428638)))

(assert (= (and b!3925745 ((_ is Cons!41682) (originalCharacters!7104 (h!47103 suffixTokens!72)))) b!3926348))

(declare-fun b!3926349 () Bool)

(declare-fun e!2428639 () Bool)

(declare-fun tp!1195388 () Bool)

(assert (=> b!3926349 (= e!2428639 (and tp_is_empty!19789 tp!1195388))))

(assert (=> b!3925712 (= tp!1195262 e!2428639)))

(assert (= (and b!3925712 ((_ is Cons!41682) (t!324941 prefix!426))) b!3926349))

(declare-fun b!3926350 () Bool)

(declare-fun e!2428640 () Bool)

(declare-fun tp!1195389 () Bool)

(assert (=> b!3926350 (= e!2428640 (and tp_is_empty!19789 tp!1195389))))

(assert (=> b!3925723 (= tp!1195250 e!2428640)))

(assert (= (and b!3925723 ((_ is Cons!41682) (originalCharacters!7104 (h!47103 prefixTokens!80)))) b!3926350))

(declare-fun e!2428641 () Bool)

(assert (=> b!3925742 (= tp!1195255 e!2428641)))

(declare-fun b!3926353 () Bool)

(declare-fun tp!1195392 () Bool)

(assert (=> b!3926353 (= e!2428641 tp!1195392)))

(declare-fun b!3926352 () Bool)

(declare-fun tp!1195394 () Bool)

(declare-fun tp!1195391 () Bool)

(assert (=> b!3926352 (= e!2428641 (and tp!1195394 tp!1195391))))

(declare-fun b!3926351 () Bool)

(assert (=> b!3926351 (= e!2428641 tp_is_empty!19789)))

(declare-fun b!3926354 () Bool)

(declare-fun tp!1195393 () Bool)

(declare-fun tp!1195390 () Bool)

(assert (=> b!3926354 (= e!2428641 (and tp!1195393 tp!1195390))))

(assert (= (and b!3925742 ((_ is ElementMatch!11409) (regex!6504 (rule!9442 (h!47103 suffixTokens!72))))) b!3926351))

(assert (= (and b!3925742 ((_ is Concat!18144) (regex!6504 (rule!9442 (h!47103 suffixTokens!72))))) b!3926352))

(assert (= (and b!3925742 ((_ is Star!11409) (regex!6504 (rule!9442 (h!47103 suffixTokens!72))))) b!3926353))

(assert (= (and b!3925742 ((_ is Union!11409) (regex!6504 (rule!9442 (h!47103 suffixTokens!72))))) b!3926354))

(declare-fun e!2428642 () Bool)

(assert (=> b!3925751 (= tp!1195265 e!2428642)))

(declare-fun b!3926357 () Bool)

(declare-fun tp!1195397 () Bool)

(assert (=> b!3926357 (= e!2428642 tp!1195397)))

(declare-fun b!3926356 () Bool)

(declare-fun tp!1195399 () Bool)

(declare-fun tp!1195396 () Bool)

(assert (=> b!3926356 (= e!2428642 (and tp!1195399 tp!1195396))))

(declare-fun b!3926355 () Bool)

(assert (=> b!3926355 (= e!2428642 tp_is_empty!19789)))

(declare-fun b!3926358 () Bool)

(declare-fun tp!1195398 () Bool)

(declare-fun tp!1195395 () Bool)

(assert (=> b!3926358 (= e!2428642 (and tp!1195398 tp!1195395))))

(assert (= (and b!3925751 ((_ is ElementMatch!11409) (regex!6504 (h!47104 rules!2768)))) b!3926355))

(assert (= (and b!3925751 ((_ is Concat!18144) (regex!6504 (h!47104 rules!2768)))) b!3926356))

(assert (= (and b!3925751 ((_ is Star!11409) (regex!6504 (h!47104 rules!2768)))) b!3926357))

(assert (= (and b!3925751 ((_ is Union!11409) (regex!6504 (h!47104 rules!2768)))) b!3926358))

(declare-fun b!3926362 () Bool)

(declare-fun b_free!107053 () Bool)

(declare-fun b_next!107757 () Bool)

(assert (=> b!3926362 (= b_free!107053 (not b_next!107757))))

(declare-fun tb!234501 () Bool)

(declare-fun t!325034 () Bool)

(assert (=> (and b!3926362 (= (toValue!8956 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toValue!8956 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325034) tb!234501))

(declare-fun result!284174 () Bool)

(assert (= result!284174 result!284130))

(assert (=> d!1163859 t!325034))

(declare-fun b_and!299455 () Bool)

(declare-fun tp!1195403 () Bool)

(assert (=> b!3926362 (= tp!1195403 (and (=> t!325034 result!284174) b_and!299455))))

(declare-fun b_free!107055 () Bool)

(declare-fun b_next!107759 () Bool)

(assert (=> b!3926362 (= b_free!107055 (not b_next!107759))))

(declare-fun t!325036 () Bool)

(declare-fun tb!234503 () Bool)

(assert (=> (and b!3926362 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80))))) t!325036) tb!234503))

(declare-fun result!284176 () Bool)

(assert (= result!284176 result!284122))

(assert (=> b!3926177 t!325036))

(declare-fun t!325038 () Bool)

(declare-fun tb!234505 () Bool)

(assert (=> (and b!3926362 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toChars!8815 (transformation!6504 (rule!9442 (_1!23610 (v!39249 lt!1369947)))))) t!325038) tb!234505))

(declare-fun result!284178 () Bool)

(assert (= result!284178 result!284138))

(assert (=> d!1163861 t!325038))

(declare-fun tb!234507 () Bool)

(declare-fun t!325040 () Bool)

(assert (=> (and b!3926362 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72))))) t!325040) tb!234507))

(declare-fun result!284180 () Bool)

(assert (= result!284180 result!284144))

(assert (=> b!3926253 t!325040))

(declare-fun tp!1195400 () Bool)

(declare-fun b_and!299457 () Bool)

(assert (=> b!3926362 (= tp!1195400 (and (=> t!325036 result!284176) (=> t!325038 result!284178) (=> t!325040 result!284180) b_and!299457))))

(declare-fun e!2428643 () Bool)

(declare-fun e!2428645 () Bool)

(declare-fun b!3926361 () Bool)

(declare-fun tp!1195401 () Bool)

(assert (=> b!3926361 (= e!2428643 (and tp!1195401 (inv!55869 (tag!7364 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (inv!55873 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) e!2428645))))

(declare-fun tp!1195404 () Bool)

(declare-fun e!2428647 () Bool)

(declare-fun b!3926360 () Bool)

(assert (=> b!3926360 (= e!2428647 (and (inv!21 (value!205998 (h!47103 (t!324942 prefixTokens!80)))) e!2428643 tp!1195404))))

(declare-fun b!3926359 () Bool)

(declare-fun tp!1195402 () Bool)

(declare-fun e!2428648 () Bool)

(assert (=> b!3926359 (= e!2428648 (and (inv!55872 (h!47103 (t!324942 prefixTokens!80))) e!2428647 tp!1195402))))

(assert (=> b!3925730 (= tp!1195253 e!2428648)))

(assert (=> b!3926362 (= e!2428645 (and tp!1195403 tp!1195400))))

(assert (= b!3926361 b!3926362))

(assert (= b!3926360 b!3926361))

(assert (= b!3926359 b!3926360))

(assert (= (and b!3925730 ((_ is Cons!41683) (t!324942 prefixTokens!80))) b!3926359))

(declare-fun m!4490801 () Bool)

(assert (=> b!3926361 m!4490801))

(declare-fun m!4490803 () Bool)

(assert (=> b!3926361 m!4490803))

(declare-fun m!4490805 () Bool)

(assert (=> b!3926360 m!4490805))

(declare-fun m!4490807 () Bool)

(assert (=> b!3926359 m!4490807))

(declare-fun b_lambda!114891 () Bool)

(assert (= b_lambda!114889 (or (and b!3925720 b_free!107027 (= (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))))) (and b!3925724 b_free!107023) (and b!3926362 b_free!107055 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))))) (and b!3925736 b_free!107031 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))))) (and b!3926333 b_free!107047 (= (toChars!8815 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))))) (and b!3926347 b_free!107051 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))))) b_lambda!114891)))

(declare-fun b_lambda!114893 () Bool)

(assert (= b_lambda!114883 (or (and b!3925720 b_free!107027 (= (toChars!8815 (transformation!6504 (h!47104 rules!2768))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))))) (and b!3926362 b_free!107055 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 prefixTokens!80))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))))) (and b!3925736 b_free!107031) (and b!3926333 b_free!107047 (= (toChars!8815 (transformation!6504 (h!47104 (t!324943 rules!2768)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))))) (and b!3926347 b_free!107051 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 (t!324942 suffixTokens!72))))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))))) (and b!3925724 b_free!107023 (= (toChars!8815 (transformation!6504 (rule!9442 (h!47103 suffixTokens!72)))) (toChars!8815 (transformation!6504 (rule!9442 (h!47103 prefixTokens!80)))))) b_lambda!114893)))

(check-sat (not b!3926320) (not b!3926354) (not d!1163665) (not d!1163895) (not b!3926239) (not b_next!107725) (not d!1163835) (not b!3926172) (not d!1163783) (not b!3925967) (not b!3926246) (not b!3926188) (not b!3926251) (not b!3925925) (not b_next!107749) (not b!3926260) (not b!3926283) (not b!3926140) (not d!1163741) (not b!3926284) (not b!3926185) (not b!3926300) (not b!3926236) (not b_next!107757) (not b!3926345) (not b!3925805) (not b_next!107727) (not b_next!107729) b_and!299451 (not b!3925966) (not b!3926231) (not b!3926169) (not b!3926344) (not d!1163881) (not b_next!107735) (not d!1163731) (not d!1163849) (not d!1163819) (not b!3926230) (not b!3926255) b_and!299453 (not b!3926268) (not b!3926297) b_and!299443 (not b!3926221) (not d!1163891) (not b!3926264) (not d!1163865) (not b_lambda!114887) (not b!3926177) (not b!3926193) (not b!3926222) (not d!1163851) b_and!299445 (not b!3926232) (not b!3926233) (not d!1163879) (not b!3926356) (not d!1163659) (not b!3926183) b_and!299431 (not b!3926322) (not b!3925954) (not b!3926194) (not b_next!107753) (not b!3926350) (not b!3926224) (not d!1163717) (not b!3926332) b_and!299447 (not b!3926000) (not b!3926218) b_and!299433 (not b!3926220) (not b!3925928) (not b!3926178) (not b!3926189) (not b!3926198) (not b!3925984) (not b!3925956) (not b!3926145) (not b_next!107755) (not b!3926353) (not b!3926137) (not b!3926321) (not b!3926147) b_and!299449 (not b!3926219) (not b!3926287) (not b!3925968) (not b!3926358) (not d!1163853) (not d!1163855) (not b!3926171) (not b!3926167) (not b_lambda!114891) (not b!3926226) (not b_next!107733) (not b!3926357) (not d!1163757) (not d!1163885) (not b!3925828) (not b!3926346) (not d!1163833) (not b!3926279) (not d!1163801) (not b!3926159) (not d!1163857) (not b!3926352) (not d!1163875) (not d!1163809) (not b!3926162) (not b!3926021) (not b!3926331) (not d!1163759) b_and!299441 (not d!1163831) (not b!3926294) (not b!3926164) (not d!1163847) tp_is_empty!19789 (not b!3926307) (not b!3926263) (not b!3926242) (not d!1163821) (not b_next!107731) (not b!3926253) (not b!3926191) (not b!3926143) (not b!3926296) (not bm!284717) b_and!299455 (not b!3926293) (not b!3926141) (not b!3926254) (not b!3926288) (not b!3926280) (not b!3926161) (not tb!234473) (not d!1163839) (not d!1163867) (not b!3926166) (not b!3926359) (not d!1163651) (not b!3926349) (not d!1163845) (not b!3926360) (not d!1163829) (not b_lambda!114893) (not d!1163747) (not d!1163761) (not d!1163877) (not b_next!107759) (not b!3926257) (not d!1163843) (not b!3926223) (not b!3926238) (not d!1163893) (not d!1163645) (not d!1163863) (not d!1163861) (not b!3925929) (not b!3926348) (not b!3926138) (not b!3926301) b_and!299457 (not tb!234467) b_and!299429 (not b!3926266) (not b!3926291) (not b!3926319) (not tb!234479) (not b!3926269) (not d!1163817) (not b!3926292) (not b!3926258) (not b!3926241) (not b!3926197) (not b_lambda!114885) (not b_next!107751) (not b!3925955) (not d!1163805) (not b!3925983) (not d!1163897) (not b!3926361) (not b!3926187) (not b!3926228) (not tb!234461) (not b!3926139) (not b!3926142))
(check-sat (not b_next!107725) (not b_next!107749) (not b_next!107757) (not b_next!107735) b_and!299445 b_and!299431 (not b_next!107753) (not b_next!107755) b_and!299449 (not b_next!107733) b_and!299441 (not b_next!107731) b_and!299455 (not b_next!107759) (not b_next!107751) (not b_next!107727) (not b_next!107729) b_and!299451 b_and!299453 b_and!299443 b_and!299447 b_and!299433 b_and!299457 b_and!299429)
