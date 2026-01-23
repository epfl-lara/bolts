; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371588 () Bool)

(assert start!371588)

(declare-fun b!3952105 () Bool)

(declare-fun b_free!108665 () Bool)

(declare-fun b_next!109369 () Bool)

(assert (=> b!3952105 (= b_free!108665 (not b_next!109369))))

(declare-fun tp!1204035 () Bool)

(declare-fun b_and!302907 () Bool)

(assert (=> b!3952105 (= tp!1204035 b_and!302907)))

(declare-fun b_free!108667 () Bool)

(declare-fun b_next!109371 () Bool)

(assert (=> b!3952105 (= b_free!108667 (not b_next!109371))))

(declare-fun tp!1204034 () Bool)

(declare-fun b_and!302909 () Bool)

(assert (=> b!3952105 (= tp!1204034 b_and!302909)))

(declare-fun b!3952123 () Bool)

(declare-fun b_free!108669 () Bool)

(declare-fun b_next!109373 () Bool)

(assert (=> b!3952123 (= b_free!108669 (not b_next!109373))))

(declare-fun tp!1204025 () Bool)

(declare-fun b_and!302911 () Bool)

(assert (=> b!3952123 (= tp!1204025 b_and!302911)))

(declare-fun b_free!108671 () Bool)

(declare-fun b_next!109375 () Bool)

(assert (=> b!3952123 (= b_free!108671 (not b_next!109375))))

(declare-fun tp!1204033 () Bool)

(declare-fun b_and!302913 () Bool)

(assert (=> b!3952123 (= tp!1204033 b_and!302913)))

(declare-fun b!3952109 () Bool)

(declare-fun b_free!108673 () Bool)

(declare-fun b_next!109377 () Bool)

(assert (=> b!3952109 (= b_free!108673 (not b_next!109377))))

(declare-fun tp!1204041 () Bool)

(declare-fun b_and!302915 () Bool)

(assert (=> b!3952109 (= tp!1204041 b_and!302915)))

(declare-fun b_free!108675 () Bool)

(declare-fun b_next!109379 () Bool)

(assert (=> b!3952109 (= b_free!108675 (not b_next!109379))))

(declare-fun tp!1204032 () Bool)

(declare-fun b_and!302917 () Bool)

(assert (=> b!3952109 (= tp!1204032 b_and!302917)))

(declare-fun b!3952121 () Bool)

(declare-fun b_free!108677 () Bool)

(declare-fun b_next!109381 () Bool)

(assert (=> b!3952121 (= b_free!108677 (not b_next!109381))))

(declare-fun tp!1204039 () Bool)

(declare-fun b_and!302919 () Bool)

(assert (=> b!3952121 (= tp!1204039 b_and!302919)))

(declare-fun b_free!108679 () Bool)

(declare-fun b_next!109383 () Bool)

(assert (=> b!3952121 (= b_free!108679 (not b_next!109383))))

(declare-fun tp!1204028 () Bool)

(declare-fun b_and!302921 () Bool)

(assert (=> b!3952121 (= tp!1204028 b_and!302921)))

(declare-fun e!2446321 () Bool)

(assert (=> b!3952105 (= e!2446321 (and tp!1204035 tp!1204034))))

(declare-fun b!3952106 () Bool)

(declare-fun e!2446305 () Bool)

(declare-fun e!2446318 () Bool)

(assert (=> b!3952106 (= e!2446305 e!2446318)))

(declare-fun res!1599119 () Bool)

(assert (=> b!3952106 (=> res!1599119 e!2446318)))

(declare-datatypes ((List!42155 0))(
  ( (Nil!42031) (Cons!42031 (h!47451 (_ BitVec 16)) (t!328796 List!42155)) )
))
(declare-datatypes ((TokenValue!6810 0))(
  ( (FloatLiteralValue!13620 (text!48115 List!42155)) (TokenValueExt!6809 (__x!25837 Int)) (Broken!34050 (value!208138 List!42155)) (Object!6933) (End!6810) (Def!6810) (Underscore!6810) (Match!6810) (Else!6810) (Error!6810) (Case!6810) (If!6810) (Extends!6810) (Abstract!6810) (Class!6810) (Val!6810) (DelimiterValue!13620 (del!6870 List!42155)) (KeywordValue!6816 (value!208139 List!42155)) (CommentValue!13620 (value!208140 List!42155)) (WhitespaceValue!13620 (value!208141 List!42155)) (IndentationValue!6810 (value!208142 List!42155)) (String!47767) (Int32!6810) (Broken!34051 (value!208143 List!42155)) (Boolean!6811) (Unit!60541) (OperatorValue!6813 (op!6870 List!42155)) (IdentifierValue!13620 (value!208144 List!42155)) (IdentifierValue!13621 (value!208145 List!42155)) (WhitespaceValue!13621 (value!208146 List!42155)) (True!13620) (False!13620) (Broken!34052 (value!208147 List!42155)) (Broken!34053 (value!208148 List!42155)) (True!13621) (RightBrace!6810) (RightBracket!6810) (Colon!6810) (Null!6810) (Comma!6810) (LeftBracket!6810) (False!13621) (LeftBrace!6810) (ImaginaryLiteralValue!6810 (text!48116 List!42155)) (StringLiteralValue!20430 (value!208149 List!42155)) (EOFValue!6810 (value!208150 List!42155)) (IdentValue!6810 (value!208151 List!42155)) (DelimiterValue!13621 (value!208152 List!42155)) (DedentValue!6810 (value!208153 List!42155)) (NewLineValue!6810 (value!208154 List!42155)) (IntegerValue!20430 (value!208155 (_ BitVec 32)) (text!48117 List!42155)) (IntegerValue!20431 (value!208156 Int) (text!48118 List!42155)) (Times!6810) (Or!6810) (Equal!6810) (Minus!6810) (Broken!34054 (value!208157 List!42155)) (And!6810) (Div!6810) (LessEqual!6810) (Mod!6810) (Concat!18295) (Not!6810) (Plus!6810) (SpaceValue!6810 (value!208158 List!42155)) (IntegerValue!20432 (value!208159 Int) (text!48119 List!42155)) (StringLiteralValue!20431 (text!48120 List!42155)) (FloatLiteralValue!13621 (text!48121 List!42155)) (BytesLiteralValue!6810 (value!208160 List!42155)) (CommentValue!13621 (value!208161 List!42155)) (StringLiteralValue!20432 (value!208162 List!42155)) (ErrorTokenValue!6810 (msg!6871 List!42155)) )
))
(declare-datatypes ((C!23156 0))(
  ( (C!23157 (val!13672 Int)) )
))
(declare-datatypes ((Regex!11485 0))(
  ( (ElementMatch!11485 (c!686168 C!23156)) (Concat!18296 (regOne!23482 Regex!11485) (regTwo!23482 Regex!11485)) (EmptyExpr!11485) (Star!11485 (reg!11814 Regex!11485)) (EmptyLang!11485) (Union!11485 (regOne!23483 Regex!11485) (regTwo!23483 Regex!11485)) )
))
(declare-datatypes ((String!47768 0))(
  ( (String!47769 (value!208163 String)) )
))
(declare-datatypes ((List!42156 0))(
  ( (Nil!42032) (Cons!42032 (h!47452 C!23156) (t!328797 List!42156)) )
))
(declare-datatypes ((IArray!25587 0))(
  ( (IArray!25588 (innerList!12851 List!42156)) )
))
(declare-datatypes ((Conc!12791 0))(
  ( (Node!12791 (left!31959 Conc!12791) (right!32289 Conc!12791) (csize!25812 Int) (cheight!13002 Int)) (Leaf!19788 (xs!16097 IArray!25587) (csize!25813 Int)) (Empty!12791) )
))
(declare-datatypes ((BalanceConc!25176 0))(
  ( (BalanceConc!25177 (c!686169 Conc!12791)) )
))
(declare-datatypes ((TokenValueInjection!13048 0))(
  ( (TokenValueInjection!13049 (toValue!9056 Int) (toChars!8915 Int)) )
))
(declare-datatypes ((Rule!12960 0))(
  ( (Rule!12961 (regex!6580 Regex!11485) (tag!7440 String!47768) (isSeparator!6580 Bool) (transformation!6580 TokenValueInjection!13048)) )
))
(declare-datatypes ((Token!12298 0))(
  ( (Token!12299 (value!208164 TokenValue!6810) (rule!9550 Rule!12960) (size!31498 Int) (originalCharacters!7180 List!42156)) )
))
(declare-datatypes ((tuple2!41318 0))(
  ( (tuple2!41319 (_1!23793 Token!12298) (_2!23793 List!42156)) )
))
(declare-datatypes ((Option!9000 0))(
  ( (None!8999) (Some!8999 (v!39339 tuple2!41318)) )
))
(declare-fun lt!1381622 () Option!9000)

(declare-datatypes ((List!42157 0))(
  ( (Nil!42033) (Cons!42033 (h!47453 Token!12298) (t!328798 List!42157)) )
))
(declare-datatypes ((tuple2!41320 0))(
  ( (tuple2!41321 (_1!23794 List!42157) (_2!23794 List!42156)) )
))
(declare-fun lt!1381608 () tuple2!41320)

(declare-fun suffix!1176 () List!42156)

(declare-fun lt!1381610 () List!42157)

(declare-fun lt!1381613 () tuple2!41320)

(assert (=> b!3952106 (= res!1599119 (or (not (= lt!1381608 (tuple2!41321 lt!1381610 (_2!23794 lt!1381613)))) (not (= lt!1381613 (tuple2!41321 (_1!23794 lt!1381613) (_2!23794 lt!1381613)))) (not (= (_2!23793 (v!39339 lt!1381622)) suffix!1176))))))

(declare-fun lt!1381621 () List!42157)

(declare-fun ++!10917 (List!42157 List!42157) List!42157)

(assert (=> b!3952106 (= lt!1381610 (++!10917 lt!1381621 (_1!23794 lt!1381613)))))

(assert (=> b!3952106 (= lt!1381621 (Cons!42033 (_1!23793 (v!39339 lt!1381622)) Nil!42033))))

(declare-fun b!3952107 () Bool)

(declare-fun res!1599121 () Bool)

(declare-fun e!2446323 () Bool)

(assert (=> b!3952107 (=> (not res!1599121) (not e!2446323))))

(declare-fun prefix!426 () List!42156)

(declare-fun isEmpty!25108 (List!42156) Bool)

(assert (=> b!3952107 (= res!1599121 (not (isEmpty!25108 prefix!426)))))

(declare-fun b!3952108 () Bool)

(declare-fun e!2446322 () Bool)

(declare-fun e!2446300 () Bool)

(assert (=> b!3952108 (= e!2446322 e!2446300)))

(declare-fun res!1599114 () Bool)

(assert (=> b!3952108 (=> res!1599114 e!2446300)))

(declare-fun lt!1381618 () List!42156)

(declare-fun prefixTokens!80 () List!42157)

(declare-fun lt!1381607 () List!42157)

(assert (=> b!3952108 (= res!1599114 (or (not (= lt!1381607 (_1!23794 lt!1381608))) (not (= lt!1381607 lt!1381610)) (not (= prefixTokens!80 lt!1381621)) (not (= prefix!426 lt!1381618))))))

(assert (=> b!3952108 (= lt!1381618 prefix!426)))

(declare-datatypes ((Unit!60542 0))(
  ( (Unit!60543) )
))
(declare-fun lt!1381609 () Unit!60542)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!590 (List!42156 List!42156 List!42156 List!42156) Unit!60542)

(assert (=> b!3952108 (= lt!1381609 (lemmaConcatSameAndSameSizesThenSameLists!590 lt!1381618 (_2!23793 (v!39339 lt!1381622)) prefix!426 suffix!1176))))

(declare-fun e!2446314 () Bool)

(assert (=> b!3952109 (= e!2446314 (and tp!1204041 tp!1204032))))

(declare-fun b!3952110 () Bool)

(declare-fun res!1599115 () Bool)

(declare-fun e!2446315 () Bool)

(assert (=> b!3952110 (=> (not res!1599115) (not e!2446315))))

(declare-fun suffixResult!91 () List!42156)

(declare-datatypes ((LexerInterface!6169 0))(
  ( (LexerInterfaceExt!6166 (__x!25838 Int)) (Lexer!6167) )
))
(declare-fun thiss!20629 () LexerInterface!6169)

(declare-datatypes ((List!42158 0))(
  ( (Nil!42034) (Cons!42034 (h!47454 Rule!12960) (t!328799 List!42158)) )
))
(declare-fun rules!2768 () List!42158)

(declare-fun suffixTokens!72 () List!42157)

(declare-fun lexList!1937 (LexerInterface!6169 List!42158 List!42156) tuple2!41320)

(assert (=> b!3952110 (= res!1599115 (= (lexList!1937 thiss!20629 rules!2768 suffix!1176) (tuple2!41321 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1204037 () Bool)

(declare-fun b!3952111 () Bool)

(declare-fun e!2446296 () Bool)

(declare-fun e!2446312 () Bool)

(declare-fun inv!56257 (String!47768) Bool)

(declare-fun inv!56260 (TokenValueInjection!13048) Bool)

(assert (=> b!3952111 (= e!2446312 (and tp!1204037 (inv!56257 (tag!7440 (h!47454 rules!2768))) (inv!56260 (transformation!6580 (h!47454 rules!2768))) e!2446296))))

(declare-fun b!3952112 () Bool)

(declare-fun res!1599116 () Bool)

(assert (=> b!3952112 (=> res!1599116 e!2446300)))

(declare-fun size!31499 (List!42156) Int)

(assert (=> b!3952112 (= res!1599116 (< (size!31499 suffix!1176) (size!31499 Nil!42032)))))

(declare-fun b!3952113 () Bool)

(declare-fun e!2446309 () Option!9000)

(declare-fun call!285246 () Option!9000)

(assert (=> b!3952113 (= e!2446309 call!285246)))

(declare-fun b!3952114 () Bool)

(declare-fun e!2446299 () Bool)

(declare-fun tp_is_empty!19941 () Bool)

(declare-fun tp!1204038 () Bool)

(assert (=> b!3952114 (= e!2446299 (and tp_is_empty!19941 tp!1204038))))

(declare-fun b!3952115 () Bool)

(declare-fun res!1599110 () Bool)

(assert (=> b!3952115 (=> (not res!1599110) (not e!2446323))))

(declare-fun isEmpty!25109 (List!42157) Bool)

(assert (=> b!3952115 (= res!1599110 (not (isEmpty!25109 prefixTokens!80)))))

(declare-fun tp!1204044 () Bool)

(declare-fun b!3952116 () Bool)

(declare-fun err!4449 () Option!9000)

(declare-fun e!2446320 () Bool)

(declare-fun e!2446308 () Bool)

(declare-fun inv!21 (TokenValue!6810) Bool)

(assert (=> b!3952116 (= e!2446320 (and (inv!21 (value!208164 (_1!23793 (v!39339 err!4449)))) e!2446308 tp!1204044))))

(declare-fun b!3952117 () Bool)

(declare-fun res!1599120 () Bool)

(assert (=> b!3952117 (=> (not res!1599120) (not e!2446323))))

(declare-fun rulesInvariant!5512 (LexerInterface!6169 List!42158) Bool)

(assert (=> b!3952117 (= res!1599120 (rulesInvariant!5512 thiss!20629 rules!2768))))

(declare-fun b!3952118 () Bool)

(assert (=> b!3952118 (= e!2446323 e!2446315)))

(declare-fun res!1599109 () Bool)

(assert (=> b!3952118 (=> (not res!1599109) (not e!2446315))))

(assert (=> b!3952118 (= res!1599109 (= lt!1381608 (tuple2!41321 lt!1381607 suffixResult!91)))))

(declare-fun lt!1381614 () List!42156)

(assert (=> b!3952118 (= lt!1381608 (lexList!1937 thiss!20629 rules!2768 lt!1381614))))

(assert (=> b!3952118 (= lt!1381607 (++!10917 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10918 (List!42156 List!42156) List!42156)

(assert (=> b!3952118 (= lt!1381614 (++!10918 prefix!426 suffix!1176))))

(declare-fun b!3952119 () Bool)

(declare-fun e!2446317 () Bool)

(assert (=> b!3952119 (= e!2446317 (not e!2446305))))

(declare-fun res!1599108 () Bool)

(assert (=> b!3952119 (=> res!1599108 e!2446305)))

(declare-fun lt!1381604 () List!42156)

(assert (=> b!3952119 (= res!1599108 (not (= lt!1381604 lt!1381614)))))

(assert (=> b!3952119 (= lt!1381613 (lexList!1937 thiss!20629 rules!2768 (_2!23793 (v!39339 lt!1381622))))))

(declare-fun lt!1381623 () Int)

(declare-fun lt!1381615 () List!42156)

(declare-fun lt!1381611 () TokenValue!6810)

(assert (=> b!3952119 (and (= (size!31498 (_1!23793 (v!39339 lt!1381622))) lt!1381623) (= (originalCharacters!7180 (_1!23793 (v!39339 lt!1381622))) lt!1381618) (= (tuple2!41319 (_1!23793 (v!39339 lt!1381622)) (_2!23793 (v!39339 lt!1381622))) (tuple2!41319 (Token!12299 lt!1381611 (rule!9550 (_1!23793 (v!39339 lt!1381622))) lt!1381623 lt!1381618) lt!1381615)))))

(assert (=> b!3952119 (= lt!1381623 (size!31499 lt!1381618))))

(declare-fun e!2446319 () Bool)

(assert (=> b!3952119 e!2446319))

(declare-fun res!1599113 () Bool)

(assert (=> b!3952119 (=> (not res!1599113) (not e!2446319))))

(assert (=> b!3952119 (= res!1599113 (= (value!208164 (_1!23793 (v!39339 lt!1381622))) lt!1381611))))

(declare-fun apply!9811 (TokenValueInjection!13048 BalanceConc!25176) TokenValue!6810)

(declare-fun seqFromList!4839 (List!42156) BalanceConc!25176)

(assert (=> b!3952119 (= lt!1381611 (apply!9811 (transformation!6580 (rule!9550 (_1!23793 (v!39339 lt!1381622)))) (seqFromList!4839 lt!1381618)))))

(assert (=> b!3952119 (= (_2!23793 (v!39339 lt!1381622)) lt!1381615)))

(declare-fun lt!1381619 () Unit!60542)

(declare-fun lemmaSamePrefixThenSameSuffix!1878 (List!42156 List!42156 List!42156 List!42156 List!42156) Unit!60542)

(assert (=> b!3952119 (= lt!1381619 (lemmaSamePrefixThenSameSuffix!1878 lt!1381618 (_2!23793 (v!39339 lt!1381622)) lt!1381618 lt!1381615 lt!1381614))))

(declare-fun getSuffix!2120 (List!42156 List!42156) List!42156)

(assert (=> b!3952119 (= lt!1381615 (getSuffix!2120 lt!1381614 lt!1381618))))

(declare-fun isPrefix!3669 (List!42156 List!42156) Bool)

(assert (=> b!3952119 (isPrefix!3669 lt!1381618 lt!1381604)))

(assert (=> b!3952119 (= lt!1381604 (++!10918 lt!1381618 (_2!23793 (v!39339 lt!1381622))))))

(declare-fun lt!1381605 () Unit!60542)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2528 (List!42156 List!42156) Unit!60542)

(assert (=> b!3952119 (= lt!1381605 (lemmaConcatTwoListThenFirstIsPrefix!2528 lt!1381618 (_2!23793 (v!39339 lt!1381622))))))

(declare-fun list!15610 (BalanceConc!25176) List!42156)

(declare-fun charsOf!4398 (Token!12298) BalanceConc!25176)

(assert (=> b!3952119 (= lt!1381618 (list!15610 (charsOf!4398 (_1!23793 (v!39339 lt!1381622)))))))

(declare-fun ruleValid!2522 (LexerInterface!6169 Rule!12960) Bool)

(assert (=> b!3952119 (ruleValid!2522 thiss!20629 (rule!9550 (_1!23793 (v!39339 lt!1381622))))))

(declare-fun lt!1381612 () Unit!60542)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1598 (LexerInterface!6169 Rule!12960 List!42158) Unit!60542)

(assert (=> b!3952119 (= lt!1381612 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1598 thiss!20629 (rule!9550 (_1!23793 (v!39339 lt!1381622))) rules!2768))))

(declare-fun lt!1381617 () Unit!60542)

(declare-fun lemmaCharactersSize!1233 (Token!12298) Unit!60542)

(assert (=> b!3952119 (= lt!1381617 (lemmaCharactersSize!1233 (_1!23793 (v!39339 lt!1381622))))))

(declare-fun b!3952120 () Bool)

(declare-fun res!1599117 () Bool)

(assert (=> b!3952120 (=> res!1599117 e!2446300)))

(assert (=> b!3952120 (= res!1599117 (not (isPrefix!3669 Nil!42032 suffix!1176)))))

(declare-fun e!2446295 () Bool)

(assert (=> b!3952121 (= e!2446295 (and tp!1204039 tp!1204028))))

(declare-fun tp!1204023 () Bool)

(declare-fun b!3952122 () Bool)

(declare-fun e!2446301 () Bool)

(declare-fun e!2446325 () Bool)

(declare-fun inv!56261 (Token!12298) Bool)

(assert (=> b!3952122 (= e!2446301 (and (inv!56261 (h!47453 suffixTokens!72)) e!2446325 tp!1204023))))

(assert (=> b!3952123 (= e!2446296 (and tp!1204025 tp!1204033))))

(declare-fun tp!1204036 () Bool)

(declare-fun b!3952124 () Bool)

(declare-fun e!2446294 () Bool)

(assert (=> b!3952124 (= e!2446294 (and tp!1204036 (inv!56257 (tag!7440 (rule!9550 (h!47453 suffixTokens!72)))) (inv!56260 (transformation!6580 (rule!9550 (h!47453 suffixTokens!72)))) e!2446321))))

(declare-fun b!3952125 () Bool)

(declare-fun e!2446298 () Bool)

(declare-fun tp!1204024 () Bool)

(assert (=> b!3952125 (= e!2446298 (and tp_is_empty!19941 tp!1204024))))

(declare-fun bm!285241 () Bool)

(declare-fun maxPrefixOneRule!2527 (LexerInterface!6169 Rule!12960 List!42156) Option!9000)

(assert (=> bm!285241 (= call!285246 (maxPrefixOneRule!2527 thiss!20629 (h!47454 rules!2768) lt!1381614))))

(declare-fun b!3952126 () Bool)

(assert (=> b!3952126 (= e!2446319 (= (size!31498 (_1!23793 (v!39339 lt!1381622))) (size!31499 (originalCharacters!7180 (_1!23793 (v!39339 lt!1381622))))))))

(declare-fun b!3952127 () Bool)

(assert (=> b!3952127 (= e!2446315 e!2446317)))

(declare-fun res!1599122 () Bool)

(assert (=> b!3952127 (=> (not res!1599122) (not e!2446317))))

(get-info :version)

(assert (=> b!3952127 (= res!1599122 ((_ is Some!8999) lt!1381622))))

(declare-fun maxPrefix!3473 (LexerInterface!6169 List!42158 List!42156) Option!9000)

(assert (=> b!3952127 (= lt!1381622 (maxPrefix!3473 thiss!20629 rules!2768 lt!1381614))))

(declare-fun b!3952128 () Bool)

(declare-fun e!2446304 () Bool)

(declare-fun tp!1204031 () Bool)

(declare-fun e!2446302 () Bool)

(assert (=> b!3952128 (= e!2446302 (and (inv!56261 (h!47453 prefixTokens!80)) e!2446304 tp!1204031))))

(declare-fun b!3952129 () Bool)

(declare-fun tp!1204027 () Bool)

(assert (=> b!3952129 (= e!2446308 (and tp!1204027 (inv!56257 (tag!7440 (rule!9550 (_1!23793 (v!39339 err!4449))))) (inv!56260 (transformation!6580 (rule!9550 (_1!23793 (v!39339 err!4449))))) e!2446314))))

(declare-fun e!2446313 () Bool)

(declare-fun b!3952130 () Bool)

(declare-fun tp!1204040 () Bool)

(assert (=> b!3952130 (= e!2446304 (and (inv!21 (value!208164 (h!47453 prefixTokens!80))) e!2446313 tp!1204040))))

(declare-fun b!3952131 () Bool)

(declare-fun lt!1381606 () Option!9000)

(assert (=> b!3952131 (= lt!1381606 (maxPrefix!3473 thiss!20629 (t!328799 rules!2768) lt!1381614))))

(declare-fun lt!1381616 () Option!9000)

(assert (=> b!3952131 (= lt!1381616 call!285246)))

(declare-fun e!2446327 () Option!9000)

(assert (=> b!3952131 (= e!2446327 (ite (and ((_ is None!8999) lt!1381616) ((_ is None!8999) lt!1381606)) None!8999 (ite ((_ is None!8999) lt!1381606) lt!1381616 (ite ((_ is None!8999) lt!1381616) lt!1381606 (ite (>= (size!31498 (_1!23793 (v!39339 lt!1381616))) (size!31498 (_1!23793 (v!39339 lt!1381606)))) (Some!8999 (v!39339 lt!1381616)) lt!1381606)))))))

(declare-fun res!1599112 () Bool)

(assert (=> start!371588 (=> (not res!1599112) (not e!2446323))))

(assert (=> start!371588 (= res!1599112 ((_ is Lexer!6167) thiss!20629))))

(assert (=> start!371588 e!2446323))

(assert (=> start!371588 e!2446298))

(assert (=> start!371588 true))

(assert (=> start!371588 e!2446299))

(declare-fun e!2446293 () Bool)

(assert (=> start!371588 e!2446293))

(assert (=> start!371588 e!2446302))

(assert (=> start!371588 e!2446301))

(declare-fun e!2446297 () Bool)

(assert (=> start!371588 e!2446297))

(declare-fun b!3952132 () Bool)

(declare-fun res!1599107 () Bool)

(assert (=> b!3952132 (=> (not res!1599107) (not e!2446323))))

(declare-fun isEmpty!25110 (List!42158) Bool)

(assert (=> b!3952132 (= res!1599107 (not (isEmpty!25110 rules!2768)))))

(declare-fun tp!1204042 () Bool)

(declare-fun b!3952133 () Bool)

(declare-fun e!2446303 () Bool)

(assert (=> b!3952133 (= e!2446303 (and (inv!56261 (_1!23793 (v!39339 err!4449))) e!2446320 tp!1204042))))

(declare-fun b!3952134 () Bool)

(assert (=> b!3952134 true))

(assert (=> b!3952134 e!2446303))

(assert (=> b!3952134 (= e!2446327 err!4449)))

(declare-fun b!3952135 () Bool)

(assert (=> b!3952135 (= e!2446309 e!2446327)))

(declare-fun c!686167 () Bool)

(assert (=> b!3952135 (= c!686167 ((_ is Cons!42034) rules!2768))))

(declare-fun tp!1204026 () Bool)

(declare-fun b!3952136 () Bool)

(assert (=> b!3952136 (= e!2446313 (and tp!1204026 (inv!56257 (tag!7440 (rule!9550 (h!47453 prefixTokens!80)))) (inv!56260 (transformation!6580 (rule!9550 (h!47453 prefixTokens!80)))) e!2446295))))

(declare-fun b!3952137 () Bool)

(assert (=> b!3952137 (= e!2446300 (>= (size!31499 prefix!426) lt!1381623))))

(declare-fun b!3952138 () Bool)

(declare-fun tp!1204030 () Bool)

(assert (=> b!3952138 (= e!2446297 (and tp_is_empty!19941 tp!1204030))))

(declare-fun b!3952139 () Bool)

(declare-fun e!2446324 () Bool)

(assert (=> b!3952139 (= e!2446324 (= lt!1381622 e!2446309))))

(declare-fun c!686166 () Bool)

(assert (=> b!3952139 (= c!686166 (and ((_ is Cons!42034) rules!2768) ((_ is Nil!42034) (t!328799 rules!2768))))))

(declare-fun b!3952140 () Bool)

(assert (=> b!3952140 (= e!2446318 e!2446322)))

(declare-fun res!1599111 () Bool)

(assert (=> b!3952140 (=> res!1599111 e!2446322)))

(assert (=> b!3952140 (= res!1599111 (not (= lt!1381622 (Some!8999 (tuple2!41319 (_1!23793 (v!39339 lt!1381622)) (_2!23793 (v!39339 lt!1381622)))))))))

(assert (=> b!3952140 e!2446324))

(declare-fun res!1599118 () Bool)

(assert (=> b!3952140 (=> (not res!1599118) (not e!2446324))))

(assert (=> b!3952140 (= res!1599118 (isPrefix!3669 lt!1381614 lt!1381614))))

(declare-fun lt!1381620 () Unit!60542)

(declare-fun lemmaIsPrefixRefl!2320 (List!42156 List!42156) Unit!60542)

(assert (=> b!3952140 (= lt!1381620 (lemmaIsPrefixRefl!2320 lt!1381614 lt!1381614))))

(assert (=> b!3952140 (= lt!1381608 (tuple2!41321 (Cons!42033 (_1!23793 (v!39339 lt!1381622)) (_1!23794 lt!1381613)) (_2!23794 lt!1381613)))))

(declare-fun tp!1204029 () Bool)

(declare-fun b!3952141 () Bool)

(assert (=> b!3952141 (= e!2446325 (and (inv!21 (value!208164 (h!47453 suffixTokens!72))) e!2446294 tp!1204029))))

(declare-fun b!3952142 () Bool)

(declare-fun tp!1204043 () Bool)

(assert (=> b!3952142 (= e!2446293 (and e!2446312 tp!1204043))))

(assert (= (and start!371588 res!1599112) b!3952132))

(assert (= (and b!3952132 res!1599107) b!3952117))

(assert (= (and b!3952117 res!1599120) b!3952115))

(assert (= (and b!3952115 res!1599110) b!3952107))

(assert (= (and b!3952107 res!1599121) b!3952118))

(assert (= (and b!3952118 res!1599109) b!3952110))

(assert (= (and b!3952110 res!1599115) b!3952127))

(assert (= (and b!3952127 res!1599122) b!3952119))

(assert (= (and b!3952119 res!1599113) b!3952126))

(assert (= (and b!3952119 (not res!1599108)) b!3952106))

(assert (= (and b!3952106 (not res!1599119)) b!3952140))

(assert (= (and b!3952140 res!1599118) b!3952139))

(assert (= (and b!3952139 c!686166) b!3952113))

(assert (= (and b!3952139 (not c!686166)) b!3952135))

(assert (= (and b!3952135 c!686167) b!3952131))

(assert (= (and b!3952135 (not c!686167)) b!3952134))

(assert (= b!3952129 b!3952109))

(assert (= b!3952116 b!3952129))

(assert (= b!3952133 b!3952116))

(assert (= (and b!3952134 ((_ is Some!8999) err!4449)) b!3952133))

(assert (= (or b!3952113 b!3952131) bm!285241))

(assert (= (and b!3952140 (not res!1599111)) b!3952108))

(assert (= (and b!3952108 (not res!1599114)) b!3952120))

(assert (= (and b!3952120 (not res!1599117)) b!3952112))

(assert (= (and b!3952112 (not res!1599116)) b!3952137))

(assert (= (and start!371588 ((_ is Cons!42032) suffixResult!91)) b!3952125))

(assert (= (and start!371588 ((_ is Cons!42032) suffix!1176)) b!3952114))

(assert (= b!3952111 b!3952123))

(assert (= b!3952142 b!3952111))

(assert (= (and start!371588 ((_ is Cons!42034) rules!2768)) b!3952142))

(assert (= b!3952136 b!3952121))

(assert (= b!3952130 b!3952136))

(assert (= b!3952128 b!3952130))

(assert (= (and start!371588 ((_ is Cons!42033) prefixTokens!80)) b!3952128))

(assert (= b!3952124 b!3952105))

(assert (= b!3952141 b!3952124))

(assert (= b!3952122 b!3952141))

(assert (= (and start!371588 ((_ is Cons!42033) suffixTokens!72)) b!3952122))

(assert (= (and start!371588 ((_ is Cons!42032) prefix!426)) b!3952138))

(declare-fun m!4520981 () Bool)

(assert (=> b!3952106 m!4520981))

(declare-fun m!4520983 () Bool)

(assert (=> b!3952130 m!4520983))

(declare-fun m!4520985 () Bool)

(assert (=> b!3952112 m!4520985))

(declare-fun m!4520987 () Bool)

(assert (=> b!3952112 m!4520987))

(declare-fun m!4520989 () Bool)

(assert (=> b!3952111 m!4520989))

(declare-fun m!4520991 () Bool)

(assert (=> b!3952111 m!4520991))

(declare-fun m!4520993 () Bool)

(assert (=> b!3952119 m!4520993))

(declare-fun m!4520995 () Bool)

(assert (=> b!3952119 m!4520995))

(declare-fun m!4520997 () Bool)

(assert (=> b!3952119 m!4520997))

(declare-fun m!4520999 () Bool)

(assert (=> b!3952119 m!4520999))

(declare-fun m!4521001 () Bool)

(assert (=> b!3952119 m!4521001))

(declare-fun m!4521003 () Bool)

(assert (=> b!3952119 m!4521003))

(assert (=> b!3952119 m!4520995))

(declare-fun m!4521005 () Bool)

(assert (=> b!3952119 m!4521005))

(declare-fun m!4521007 () Bool)

(assert (=> b!3952119 m!4521007))

(declare-fun m!4521009 () Bool)

(assert (=> b!3952119 m!4521009))

(declare-fun m!4521011 () Bool)

(assert (=> b!3952119 m!4521011))

(declare-fun m!4521013 () Bool)

(assert (=> b!3952119 m!4521013))

(declare-fun m!4521015 () Bool)

(assert (=> b!3952119 m!4521015))

(declare-fun m!4521017 () Bool)

(assert (=> b!3952119 m!4521017))

(assert (=> b!3952119 m!4520997))

(declare-fun m!4521019 () Bool)

(assert (=> b!3952119 m!4521019))

(declare-fun m!4521021 () Bool)

(assert (=> b!3952140 m!4521021))

(declare-fun m!4521023 () Bool)

(assert (=> b!3952140 m!4521023))

(declare-fun m!4521025 () Bool)

(assert (=> b!3952128 m!4521025))

(declare-fun m!4521027 () Bool)

(assert (=> b!3952115 m!4521027))

(declare-fun m!4521029 () Bool)

(assert (=> b!3952110 m!4521029))

(declare-fun m!4521031 () Bool)

(assert (=> b!3952131 m!4521031))

(declare-fun m!4521033 () Bool)

(assert (=> b!3952137 m!4521033))

(declare-fun m!4521035 () Bool)

(assert (=> b!3952124 m!4521035))

(declare-fun m!4521037 () Bool)

(assert (=> b!3952124 m!4521037))

(declare-fun m!4521039 () Bool)

(assert (=> b!3952117 m!4521039))

(declare-fun m!4521041 () Bool)

(assert (=> b!3952141 m!4521041))

(declare-fun m!4521043 () Bool)

(assert (=> b!3952118 m!4521043))

(declare-fun m!4521045 () Bool)

(assert (=> b!3952118 m!4521045))

(declare-fun m!4521047 () Bool)

(assert (=> b!3952118 m!4521047))

(declare-fun m!4521049 () Bool)

(assert (=> b!3952122 m!4521049))

(declare-fun m!4521051 () Bool)

(assert (=> b!3952108 m!4521051))

(declare-fun m!4521053 () Bool)

(assert (=> b!3952107 m!4521053))

(declare-fun m!4521055 () Bool)

(assert (=> b!3952116 m!4521055))

(declare-fun m!4521057 () Bool)

(assert (=> bm!285241 m!4521057))

(declare-fun m!4521059 () Bool)

(assert (=> b!3952120 m!4521059))

(declare-fun m!4521061 () Bool)

(assert (=> b!3952129 m!4521061))

(declare-fun m!4521063 () Bool)

(assert (=> b!3952129 m!4521063))

(declare-fun m!4521065 () Bool)

(assert (=> b!3952136 m!4521065))

(declare-fun m!4521067 () Bool)

(assert (=> b!3952136 m!4521067))

(declare-fun m!4521069 () Bool)

(assert (=> b!3952126 m!4521069))

(declare-fun m!4521071 () Bool)

(assert (=> b!3952127 m!4521071))

(declare-fun m!4521073 () Bool)

(assert (=> b!3952133 m!4521073))

(declare-fun m!4521075 () Bool)

(assert (=> b!3952132 m!4521075))

(check-sat b_and!302911 b_and!302907 (not b!3952116) (not b!3952125) (not b_next!109371) (not b!3952120) (not b!3952115) (not b_next!109381) (not b_next!109377) (not b!3952124) (not b!3952108) (not b!3952128) (not b!3952132) (not b!3952117) (not b!3952136) (not b!3952141) b_and!302909 (not b_next!109369) (not b!3952137) (not b_next!109373) (not b!3952114) (not b!3952133) (not b_next!109375) (not b!3952122) (not b!3952111) (not b!3952142) b_and!302919 (not b!3952131) (not b_next!109379) (not b!3952118) (not b!3952107) b_and!302913 (not b!3952112) (not b!3952138) tp_is_empty!19941 (not b!3952119) (not b!3952106) (not bm!285241) (not b!3952130) (not b!3952126) (not b_next!109383) (not b!3952140) b_and!302917 (not b!3952110) (not b!3952127) b_and!302915 b_and!302921 (not b!3952129))
(check-sat b_and!302911 b_and!302907 (not b_next!109375) (not b_next!109371) b_and!302919 (not b_next!109379) b_and!302913 (not b_next!109383) b_and!302917 b_and!302915 b_and!302921 (not b_next!109381) (not b_next!109377) b_and!302909 (not b_next!109369) (not b_next!109373))
