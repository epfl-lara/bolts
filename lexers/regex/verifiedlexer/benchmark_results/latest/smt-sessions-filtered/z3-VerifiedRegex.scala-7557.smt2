; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398478 () Bool)

(assert start!398478)

(declare-fun b!4179187 () Bool)

(declare-fun b_free!121391 () Bool)

(declare-fun b_next!122095 () Bool)

(assert (=> b!4179187 (= b_free!121391 (not b_next!122095))))

(declare-fun tp!1277176 () Bool)

(declare-fun b_and!326765 () Bool)

(assert (=> b!4179187 (= tp!1277176 b_and!326765)))

(declare-fun b_free!121393 () Bool)

(declare-fun b_next!122097 () Bool)

(assert (=> b!4179187 (= b_free!121393 (not b_next!122097))))

(declare-fun tp!1277177 () Bool)

(declare-fun b_and!326767 () Bool)

(assert (=> b!4179187 (= tp!1277177 b_and!326767)))

(declare-fun b!4179203 () Bool)

(declare-fun b_free!121395 () Bool)

(declare-fun b_next!122099 () Bool)

(assert (=> b!4179203 (= b_free!121395 (not b_next!122099))))

(declare-fun tp!1277171 () Bool)

(declare-fun b_and!326769 () Bool)

(assert (=> b!4179203 (= tp!1277171 b_and!326769)))

(declare-fun b_free!121397 () Bool)

(declare-fun b_next!122101 () Bool)

(assert (=> b!4179203 (= b_free!121397 (not b_next!122101))))

(declare-fun tp!1277181 () Bool)

(declare-fun b_and!326771 () Bool)

(assert (=> b!4179203 (= tp!1277181 b_and!326771)))

(declare-fun b!4179188 () Bool)

(declare-fun b_free!121399 () Bool)

(declare-fun b_next!122103 () Bool)

(assert (=> b!4179188 (= b_free!121399 (not b_next!122103))))

(declare-fun tp!1277178 () Bool)

(declare-fun b_and!326773 () Bool)

(assert (=> b!4179188 (= tp!1277178 b_and!326773)))

(declare-fun b_free!121401 () Bool)

(declare-fun b_next!122105 () Bool)

(assert (=> b!4179188 (= b_free!121401 (not b_next!122105))))

(declare-fun tp!1277175 () Bool)

(declare-fun b_and!326775 () Bool)

(assert (=> b!4179188 (= tp!1277175 b_and!326775)))

(declare-fun b!4179177 () Bool)

(declare-fun res!1713680 () Bool)

(declare-fun e!2594570 () Bool)

(assert (=> b!4179177 (=> (not res!1713680) (not e!2594570))))

(declare-datatypes ((List!45999 0))(
  ( (Nil!45875) (Cons!45875 (h!51295 (_ BitVec 16)) (t!344904 List!45999)) )
))
(declare-datatypes ((TokenValue!7860 0))(
  ( (FloatLiteralValue!15720 (text!55465 List!45999)) (TokenValueExt!7859 (__x!27941 Int)) (Broken!39300 (value!237961 List!45999)) (Object!7983) (End!7860) (Def!7860) (Underscore!7860) (Match!7860) (Else!7860) (Error!7860) (Case!7860) (If!7860) (Extends!7860) (Abstract!7860) (Class!7860) (Val!7860) (DelimiterValue!15720 (del!7920 List!45999)) (KeywordValue!7866 (value!237962 List!45999)) (CommentValue!15720 (value!237963 List!45999)) (WhitespaceValue!15720 (value!237964 List!45999)) (IndentationValue!7860 (value!237965 List!45999)) (String!53165) (Int32!7860) (Broken!39301 (value!237966 List!45999)) (Boolean!7861) (Unit!64960) (OperatorValue!7863 (op!7920 List!45999)) (IdentifierValue!15720 (value!237967 List!45999)) (IdentifierValue!15721 (value!237968 List!45999)) (WhitespaceValue!15721 (value!237969 List!45999)) (True!15720) (False!15720) (Broken!39302 (value!237970 List!45999)) (Broken!39303 (value!237971 List!45999)) (True!15721) (RightBrace!7860) (RightBracket!7860) (Colon!7860) (Null!7860) (Comma!7860) (LeftBracket!7860) (False!15721) (LeftBrace!7860) (ImaginaryLiteralValue!7860 (text!55466 List!45999)) (StringLiteralValue!23580 (value!237972 List!45999)) (EOFValue!7860 (value!237973 List!45999)) (IdentValue!7860 (value!237974 List!45999)) (DelimiterValue!15721 (value!237975 List!45999)) (DedentValue!7860 (value!237976 List!45999)) (NewLineValue!7860 (value!237977 List!45999)) (IntegerValue!23580 (value!237978 (_ BitVec 32)) (text!55467 List!45999)) (IntegerValue!23581 (value!237979 Int) (text!55468 List!45999)) (Times!7860) (Or!7860) (Equal!7860) (Minus!7860) (Broken!39304 (value!237980 List!45999)) (And!7860) (Div!7860) (LessEqual!7860) (Mod!7860) (Concat!20395) (Not!7860) (Plus!7860) (SpaceValue!7860 (value!237981 List!45999)) (IntegerValue!23582 (value!237982 Int) (text!55469 List!45999)) (StringLiteralValue!23581 (text!55470 List!45999)) (FloatLiteralValue!15721 (text!55471 List!45999)) (BytesLiteralValue!7860 (value!237983 List!45999)) (CommentValue!15721 (value!237984 List!45999)) (StringLiteralValue!23582 (value!237985 List!45999)) (ErrorTokenValue!7860 (msg!7921 List!45999)) )
))
(declare-datatypes ((C!25260 0))(
  ( (C!25261 (val!14792 Int)) )
))
(declare-datatypes ((List!46000 0))(
  ( (Nil!45876) (Cons!45876 (h!51296 C!25260) (t!344905 List!46000)) )
))
(declare-datatypes ((IArray!27687 0))(
  ( (IArray!27688 (innerList!13901 List!46000)) )
))
(declare-datatypes ((Conc!13841 0))(
  ( (Node!13841 (left!34174 Conc!13841) (right!34504 Conc!13841) (csize!27912 Int) (cheight!14052 Int)) (Leaf!21399 (xs!17147 IArray!27687) (csize!27913 Int)) (Empty!13841) )
))
(declare-datatypes ((BalanceConc!27276 0))(
  ( (BalanceConc!27277 (c!713700 Conc!13841)) )
))
(declare-datatypes ((Regex!12535 0))(
  ( (ElementMatch!12535 (c!713701 C!25260)) (Concat!20396 (regOne!25582 Regex!12535) (regTwo!25582 Regex!12535)) (EmptyExpr!12535) (Star!12535 (reg!12864 Regex!12535)) (EmptyLang!12535) (Union!12535 (regOne!25583 Regex!12535) (regTwo!25583 Regex!12535)) )
))
(declare-datatypes ((String!53166 0))(
  ( (String!53167 (value!237986 String)) )
))
(declare-datatypes ((TokenValueInjection!15148 0))(
  ( (TokenValueInjection!15149 (toValue!10314 Int) (toChars!10173 Int)) )
))
(declare-datatypes ((Rule!15060 0))(
  ( (Rule!15061 (regex!7630 Regex!12535) (tag!8494 String!53166) (isSeparator!7630 Bool) (transformation!7630 TokenValueInjection!15148)) )
))
(declare-fun r!4142 () Rule!15060)

(declare-fun p!2959 () List!46000)

(declare-fun matchR!6274 (Regex!12535 List!46000) Bool)

(assert (=> b!4179177 (= res!1713680 (matchR!6274 (regex!7630 r!4142) p!2959))))

(declare-fun b!4179178 () Bool)

(declare-fun e!2594581 () Bool)

(declare-fun tp_is_empty!22033 () Bool)

(declare-fun tp!1277173 () Bool)

(assert (=> b!4179178 (= e!2594581 (and tp_is_empty!22033 tp!1277173))))

(declare-fun b!4179180 () Bool)

(declare-fun res!1713664 () Bool)

(assert (=> b!4179180 (=> (not res!1713664) (not e!2594570))))

(declare-fun input!3342 () List!46000)

(declare-fun isPrefix!4487 (List!46000 List!46000) Bool)

(assert (=> b!4179180 (= res!1713664 (isPrefix!4487 p!2959 input!3342))))

(declare-fun b!4179181 () Bool)

(declare-fun res!1713669 () Bool)

(declare-fun e!2594580 () Bool)

(assert (=> b!4179181 (=> res!1713669 e!2594580)))

(declare-datatypes ((LexerInterface!7223 0))(
  ( (LexerInterfaceExt!7220 (__x!27942 Int)) (Lexer!7221) )
))
(declare-fun thiss!25986 () LexerInterface!7223)

(declare-fun rBis!167 () Rule!15060)

(declare-fun ruleValid!3348 (LexerInterface!7223 Rule!15060) Bool)

(assert (=> b!4179181 (= res!1713669 (not (ruleValid!3348 thiss!25986 rBis!167)))))

(declare-fun b!4179182 () Bool)

(declare-fun res!1713675 () Bool)

(assert (=> b!4179182 (=> (not res!1713675) (not e!2594570))))

(declare-fun pBis!107 () List!46000)

(assert (=> b!4179182 (= res!1713675 (isPrefix!4487 pBis!107 input!3342))))

(declare-fun b!4179183 () Bool)

(declare-fun e!2594563 () Bool)

(declare-fun tp!1277182 () Bool)

(assert (=> b!4179183 (= e!2594563 (and tp_is_empty!22033 tp!1277182))))

(declare-fun b!4179184 () Bool)

(declare-fun e!2594578 () Bool)

(assert (=> b!4179184 (= e!2594570 (not e!2594578))))

(declare-fun res!1713670 () Bool)

(assert (=> b!4179184 (=> res!1713670 e!2594578)))

(declare-datatypes ((Token!13974 0))(
  ( (Token!13975 (value!237987 TokenValue!7860) (rule!10690 Rule!15060) (size!33690 Int) (originalCharacters!8018 List!46000)) )
))
(declare-datatypes ((tuple2!43698 0))(
  ( (tuple2!43699 (_1!24983 Token!13974) (_2!24983 List!46000)) )
))
(declare-datatypes ((Option!9826 0))(
  ( (None!9825) (Some!9825 (v!40631 tuple2!43698)) )
))
(declare-fun lt!1488540 () Option!9826)

(declare-fun maxPrefixOneRule!3234 (LexerInterface!7223 Rule!15060 List!46000) Option!9826)

(assert (=> b!4179184 (= res!1713670 (not (= (maxPrefixOneRule!3234 thiss!25986 r!4142 input!3342) lt!1488540)))))

(declare-fun lt!1488549 () Token!13974)

(declare-fun lt!1488538 () List!46000)

(assert (=> b!4179184 (= lt!1488540 (Some!9825 (tuple2!43699 lt!1488549 lt!1488538)))))

(declare-fun getSuffix!2782 (List!46000 List!46000) List!46000)

(assert (=> b!4179184 (= lt!1488538 (getSuffix!2782 input!3342 p!2959))))

(declare-fun lt!1488558 () TokenValue!7860)

(declare-fun lt!1488555 () Int)

(assert (=> b!4179184 (= lt!1488549 (Token!13975 lt!1488558 r!4142 lt!1488555 p!2959))))

(declare-fun size!33691 (List!46000) Int)

(assert (=> b!4179184 (= lt!1488555 (size!33691 p!2959))))

(declare-fun lt!1488548 () BalanceConc!27276)

(declare-fun apply!10595 (TokenValueInjection!15148 BalanceConc!27276) TokenValue!7860)

(assert (=> b!4179184 (= lt!1488558 (apply!10595 (transformation!7630 r!4142) lt!1488548))))

(assert (=> b!4179184 (isPrefix!4487 input!3342 input!3342)))

(declare-datatypes ((Unit!64961 0))(
  ( (Unit!64962) )
))
(declare-fun lt!1488557 () Unit!64961)

(declare-fun lemmaIsPrefixRefl!2916 (List!46000 List!46000) Unit!64961)

(assert (=> b!4179184 (= lt!1488557 (lemmaIsPrefixRefl!2916 input!3342 input!3342))))

(declare-fun lt!1488550 () Unit!64961)

(declare-fun lemmaSemiInverse!2396 (TokenValueInjection!15148 BalanceConc!27276) Unit!64961)

(assert (=> b!4179184 (= lt!1488550 (lemmaSemiInverse!2396 (transformation!7630 r!4142) lt!1488548))))

(declare-fun seqFromList!5655 (List!46000) BalanceConc!27276)

(assert (=> b!4179184 (= lt!1488548 (seqFromList!5655 p!2959))))

(declare-fun b!4179185 () Bool)

(declare-fun res!1713671 () Bool)

(assert (=> b!4179185 (=> res!1713671 e!2594580)))

(declare-datatypes ((List!46001 0))(
  ( (Nil!45877) (Cons!45877 (h!51297 Rule!15060) (t!344906 List!46001)) )
))
(declare-fun rules!3843 () List!46001)

(declare-fun maxPrefix!4275 (LexerInterface!7223 List!46001 List!46000) Option!9826)

(assert (=> b!4179185 (= res!1713671 (not (= (maxPrefix!4275 thiss!25986 rules!3843 input!3342) lt!1488540)))))

(declare-fun b!4179186 () Bool)

(declare-fun res!1713673 () Bool)

(assert (=> b!4179186 (=> (not res!1713673) (not e!2594570))))

(declare-fun validRegex!5652 (Regex!12535) Bool)

(assert (=> b!4179186 (= res!1713673 (validRegex!5652 (regex!7630 r!4142)))))

(declare-fun e!2594567 () Bool)

(assert (=> b!4179187 (= e!2594567 (and tp!1277176 tp!1277177))))

(declare-fun e!2594566 () Bool)

(declare-fun tp!1277174 () Bool)

(declare-fun e!2594564 () Bool)

(declare-fun b!4179179 () Bool)

(declare-fun inv!60396 (String!53166) Bool)

(declare-fun inv!60398 (TokenValueInjection!15148) Bool)

(assert (=> b!4179179 (= e!2594564 (and tp!1277174 (inv!60396 (tag!8494 rBis!167)) (inv!60398 (transformation!7630 rBis!167)) e!2594566))))

(declare-fun res!1713677 () Bool)

(assert (=> start!398478 (=> (not res!1713677) (not e!2594570))))

(get-info :version)

(assert (=> start!398478 (= res!1713677 ((_ is Lexer!7221) thiss!25986))))

(assert (=> start!398478 e!2594570))

(assert (=> start!398478 true))

(assert (=> start!398478 e!2594564))

(declare-fun e!2594577 () Bool)

(assert (=> start!398478 e!2594577))

(declare-fun e!2594574 () Bool)

(assert (=> start!398478 e!2594574))

(declare-fun e!2594571 () Bool)

(assert (=> start!398478 e!2594571))

(assert (=> start!398478 e!2594563))

(assert (=> start!398478 e!2594581))

(assert (=> b!4179188 (= e!2594566 (and tp!1277178 tp!1277175))))

(declare-fun b!4179189 () Bool)

(declare-fun tp!1277170 () Bool)

(assert (=> b!4179189 (= e!2594571 (and tp_is_empty!22033 tp!1277170))))

(declare-fun b!4179190 () Bool)

(declare-fun e!2594582 () Bool)

(declare-fun e!2594576 () Bool)

(assert (=> b!4179190 (= e!2594582 e!2594576)))

(declare-fun res!1713666 () Bool)

(assert (=> b!4179190 (=> res!1713666 e!2594576)))

(declare-fun lt!1488545 () Int)

(declare-fun lt!1488554 () Int)

(assert (=> b!4179190 (= res!1713666 (< lt!1488545 lt!1488554))))

(declare-fun lt!1488556 () BalanceConc!27276)

(declare-fun size!33692 (BalanceConc!27276) Int)

(assert (=> b!4179190 (= lt!1488545 (size!33692 lt!1488556))))

(declare-fun b!4179191 () Bool)

(declare-fun e!2594575 () Bool)

(assert (=> b!4179191 (= e!2594575 true)))

(declare-fun lt!1488547 () Int)

(assert (=> b!4179191 (<= lt!1488547 lt!1488555)))

(declare-fun lt!1488541 () tuple2!43698)

(declare-fun lt!1488543 () Unit!64961)

(declare-fun lt!1488546 () List!46000)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!20 (LexerInterface!7223 List!46001 List!46000 Token!13974 List!46000 List!46000 List!46000 List!46000 Rule!15060 Token!13974) Unit!64961)

(assert (=> b!4179191 (= lt!1488543 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!20 thiss!25986 rules!3843 p!2959 lt!1488549 input!3342 lt!1488538 lt!1488546 (_2!24983 lt!1488541) rBis!167 (_1!24983 lt!1488541)))))

(declare-fun b!4179192 () Bool)

(declare-fun e!2594579 () Unit!64961)

(declare-fun Unit!64963 () Unit!64961)

(assert (=> b!4179192 (= e!2594579 Unit!64963)))

(declare-fun lt!1488553 () Unit!64961)

(declare-fun lemmaIsPrefixSameLengthThenSameList!995 (List!46000 List!46000 List!46000) Unit!64961)

(assert (=> b!4179192 (= lt!1488553 (lemmaIsPrefixSameLengthThenSameList!995 pBis!107 lt!1488546 input!3342))))

(assert (=> b!4179192 false))

(declare-fun b!4179193 () Bool)

(assert (=> b!4179193 (= e!2594578 e!2594580)))

(declare-fun res!1713665 () Bool)

(assert (=> b!4179193 (=> res!1713665 e!2594580)))

(assert (=> b!4179193 (= res!1713665 (<= lt!1488554 lt!1488555))))

(assert (=> b!4179193 (= lt!1488554 (size!33691 pBis!107))))

(declare-fun b!4179194 () Bool)

(declare-fun e!2594572 () Bool)

(assert (=> b!4179194 (= e!2594572 e!2594582)))

(declare-fun res!1713679 () Bool)

(assert (=> b!4179194 (=> res!1713679 e!2594582)))

(assert (=> b!4179194 (= res!1713679 (= lt!1488546 pBis!107))))

(declare-fun ++!11708 (List!46000 List!46000) List!46000)

(assert (=> b!4179194 (isPrefix!4487 lt!1488546 (++!11708 lt!1488546 (_2!24983 lt!1488541)))))

(declare-fun lt!1488552 () Unit!64961)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2994 (List!46000 List!46000) Unit!64961)

(assert (=> b!4179194 (= lt!1488552 (lemmaConcatTwoListThenFirstIsPrefix!2994 lt!1488546 (_2!24983 lt!1488541)))))

(declare-fun list!16571 (BalanceConc!27276) List!46000)

(assert (=> b!4179194 (= lt!1488546 (list!16571 lt!1488556))))

(declare-fun charsOf!5071 (Token!13974) BalanceConc!27276)

(assert (=> b!4179194 (= lt!1488556 (charsOf!5071 (_1!24983 lt!1488541)))))

(declare-fun lt!1488539 () Option!9826)

(declare-fun get!14910 (Option!9826) tuple2!43698)

(assert (=> b!4179194 (= lt!1488541 (get!14910 lt!1488539))))

(declare-fun e!2594569 () Bool)

(declare-fun e!2594562 () Bool)

(declare-fun tp!1277172 () Bool)

(declare-fun b!4179195 () Bool)

(assert (=> b!4179195 (= e!2594569 (and tp!1277172 (inv!60396 (tag!8494 (h!51297 rules!3843))) (inv!60398 (transformation!7630 (h!51297 rules!3843))) e!2594562))))

(declare-fun b!4179196 () Bool)

(declare-fun res!1713678 () Bool)

(assert (=> b!4179196 (=> (not res!1713678) (not e!2594570))))

(declare-fun contains!9433 (List!46001 Rule!15060) Bool)

(assert (=> b!4179196 (= res!1713678 (contains!9433 rules!3843 rBis!167))))

(declare-fun b!4179197 () Bool)

(declare-fun res!1713674 () Bool)

(assert (=> b!4179197 (=> (not res!1713674) (not e!2594570))))

(declare-fun rulesInvariant!6436 (LexerInterface!7223 List!46001) Bool)

(assert (=> b!4179197 (= res!1713674 (rulesInvariant!6436 thiss!25986 rules!3843))))

(declare-fun b!4179198 () Bool)

(declare-fun res!1713663 () Bool)

(assert (=> b!4179198 (=> (not res!1713663) (not e!2594570))))

(declare-fun isEmpty!27144 (List!46001) Bool)

(assert (=> b!4179198 (= res!1713663 (not (isEmpty!27144 rules!3843)))))

(declare-fun b!4179199 () Bool)

(declare-fun res!1713676 () Bool)

(assert (=> b!4179199 (=> (not res!1713676) (not e!2594570))))

(assert (=> b!4179199 (= res!1713676 (contains!9433 rules!3843 r!4142))))

(declare-fun tp!1277179 () Bool)

(declare-fun b!4179200 () Bool)

(assert (=> b!4179200 (= e!2594577 (and tp!1277179 (inv!60396 (tag!8494 r!4142)) (inv!60398 (transformation!7630 r!4142)) e!2594567))))

(declare-fun b!4179201 () Bool)

(declare-fun tp!1277180 () Bool)

(assert (=> b!4179201 (= e!2594574 (and e!2594569 tp!1277180))))

(declare-fun b!4179202 () Bool)

(assert (=> b!4179202 (= e!2594576 e!2594575)))

(declare-fun res!1713667 () Bool)

(assert (=> b!4179202 (=> res!1713667 e!2594575)))

(assert (=> b!4179202 (= res!1713667 (>= lt!1488554 lt!1488545))))

(declare-fun lt!1488544 () Unit!64961)

(assert (=> b!4179202 (= lt!1488544 e!2594579)))

(declare-fun c!713699 () Bool)

(assert (=> b!4179202 (= c!713699 (= lt!1488554 lt!1488547))))

(assert (=> b!4179202 (= lt!1488547 (size!33691 lt!1488546))))

(assert (=> b!4179203 (= e!2594562 (and tp!1277171 tp!1277181))))

(declare-fun b!4179204 () Bool)

(declare-fun Unit!64964 () Unit!64961)

(assert (=> b!4179204 (= e!2594579 Unit!64964)))

(declare-fun b!4179205 () Bool)

(assert (=> b!4179205 (= e!2594580 e!2594572)))

(declare-fun res!1713672 () Bool)

(assert (=> b!4179205 (=> res!1713672 e!2594572)))

(declare-fun isEmpty!27145 (Option!9826) Bool)

(assert (=> b!4179205 (= res!1713672 (isEmpty!27145 lt!1488539))))

(assert (=> b!4179205 (= lt!1488539 (maxPrefixOneRule!3234 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1488551 () Unit!64961)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2362 (LexerInterface!7223 Rule!15060 List!46001) Unit!64961)

(assert (=> b!4179205 (= lt!1488551 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2362 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4179205 (<= lt!1488554 (size!33691 input!3342))))

(declare-fun lt!1488542 () Unit!64961)

(declare-fun lemmaIsPrefixThenSmallerEqSize!519 (List!46000 List!46000) Unit!64961)

(assert (=> b!4179205 (= lt!1488542 (lemmaIsPrefixThenSmallerEqSize!519 pBis!107 input!3342))))

(declare-fun b!4179206 () Bool)

(declare-fun res!1713668 () Bool)

(assert (=> b!4179206 (=> (not res!1713668) (not e!2594570))))

(assert (=> b!4179206 (= res!1713668 (ruleValid!3348 thiss!25986 r!4142))))

(assert (= (and start!398478 res!1713677) b!4179180))

(assert (= (and b!4179180 res!1713664) b!4179182))

(assert (= (and b!4179182 res!1713675) b!4179198))

(assert (= (and b!4179198 res!1713663) b!4179197))

(assert (= (and b!4179197 res!1713674) b!4179199))

(assert (= (and b!4179199 res!1713676) b!4179196))

(assert (= (and b!4179196 res!1713678) b!4179186))

(assert (= (and b!4179186 res!1713673) b!4179177))

(assert (= (and b!4179177 res!1713680) b!4179206))

(assert (= (and b!4179206 res!1713668) b!4179184))

(assert (= (and b!4179184 (not res!1713670)) b!4179193))

(assert (= (and b!4179193 (not res!1713665)) b!4179181))

(assert (= (and b!4179181 (not res!1713669)) b!4179185))

(assert (= (and b!4179185 (not res!1713671)) b!4179205))

(assert (= (and b!4179205 (not res!1713672)) b!4179194))

(assert (= (and b!4179194 (not res!1713679)) b!4179190))

(assert (= (and b!4179190 (not res!1713666)) b!4179202))

(assert (= (and b!4179202 c!713699) b!4179192))

(assert (= (and b!4179202 (not c!713699)) b!4179204))

(assert (= (and b!4179202 (not res!1713667)) b!4179191))

(assert (= b!4179179 b!4179188))

(assert (= start!398478 b!4179179))

(assert (= b!4179200 b!4179187))

(assert (= start!398478 b!4179200))

(assert (= b!4179195 b!4179203))

(assert (= b!4179201 b!4179195))

(assert (= (and start!398478 ((_ is Cons!45877) rules!3843)) b!4179201))

(assert (= (and start!398478 ((_ is Cons!45876) input!3342)) b!4179189))

(assert (= (and start!398478 ((_ is Cons!45876) pBis!107)) b!4179183))

(assert (= (and start!398478 ((_ is Cons!45876) p!2959)) b!4179178))

(declare-fun m!4768697 () Bool)

(assert (=> b!4179181 m!4768697))

(declare-fun m!4768699 () Bool)

(assert (=> b!4179199 m!4768699))

(declare-fun m!4768701 () Bool)

(assert (=> b!4179190 m!4768701))

(declare-fun m!4768703 () Bool)

(assert (=> b!4179179 m!4768703))

(declare-fun m!4768705 () Bool)

(assert (=> b!4179179 m!4768705))

(declare-fun m!4768707 () Bool)

(assert (=> b!4179185 m!4768707))

(declare-fun m!4768709 () Bool)

(assert (=> b!4179206 m!4768709))

(declare-fun m!4768711 () Bool)

(assert (=> b!4179205 m!4768711))

(declare-fun m!4768713 () Bool)

(assert (=> b!4179205 m!4768713))

(declare-fun m!4768715 () Bool)

(assert (=> b!4179205 m!4768715))

(declare-fun m!4768717 () Bool)

(assert (=> b!4179205 m!4768717))

(declare-fun m!4768719 () Bool)

(assert (=> b!4179205 m!4768719))

(declare-fun m!4768721 () Bool)

(assert (=> b!4179198 m!4768721))

(declare-fun m!4768723 () Bool)

(assert (=> b!4179194 m!4768723))

(declare-fun m!4768725 () Bool)

(assert (=> b!4179194 m!4768725))

(declare-fun m!4768727 () Bool)

(assert (=> b!4179194 m!4768727))

(declare-fun m!4768729 () Bool)

(assert (=> b!4179194 m!4768729))

(assert (=> b!4179194 m!4768727))

(declare-fun m!4768731 () Bool)

(assert (=> b!4179194 m!4768731))

(declare-fun m!4768733 () Bool)

(assert (=> b!4179194 m!4768733))

(declare-fun m!4768735 () Bool)

(assert (=> b!4179197 m!4768735))

(declare-fun m!4768737 () Bool)

(assert (=> b!4179186 m!4768737))

(declare-fun m!4768739 () Bool)

(assert (=> b!4179177 m!4768739))

(declare-fun m!4768741 () Bool)

(assert (=> b!4179191 m!4768741))

(declare-fun m!4768743 () Bool)

(assert (=> b!4179195 m!4768743))

(declare-fun m!4768745 () Bool)

(assert (=> b!4179195 m!4768745))

(declare-fun m!4768747 () Bool)

(assert (=> b!4179196 m!4768747))

(declare-fun m!4768749 () Bool)

(assert (=> b!4179200 m!4768749))

(declare-fun m!4768751 () Bool)

(assert (=> b!4179200 m!4768751))

(declare-fun m!4768753 () Bool)

(assert (=> b!4179182 m!4768753))

(declare-fun m!4768755 () Bool)

(assert (=> b!4179193 m!4768755))

(declare-fun m!4768757 () Bool)

(assert (=> b!4179202 m!4768757))

(declare-fun m!4768759 () Bool)

(assert (=> b!4179184 m!4768759))

(declare-fun m!4768761 () Bool)

(assert (=> b!4179184 m!4768761))

(declare-fun m!4768763 () Bool)

(assert (=> b!4179184 m!4768763))

(declare-fun m!4768765 () Bool)

(assert (=> b!4179184 m!4768765))

(declare-fun m!4768767 () Bool)

(assert (=> b!4179184 m!4768767))

(declare-fun m!4768769 () Bool)

(assert (=> b!4179184 m!4768769))

(declare-fun m!4768771 () Bool)

(assert (=> b!4179184 m!4768771))

(declare-fun m!4768773 () Bool)

(assert (=> b!4179184 m!4768773))

(declare-fun m!4768775 () Bool)

(assert (=> b!4179192 m!4768775))

(declare-fun m!4768777 () Bool)

(assert (=> b!4179180 m!4768777))

(check-sat (not b!4179198) (not b!4179185) (not b!4179177) (not b!4179195) (not b_next!122101) (not b!4179180) (not b!4179179) (not b_next!122097) (not b!4179201) (not b!4179194) (not b!4179199) (not b!4179196) (not b!4179181) (not b_next!122095) (not b!4179178) (not b_next!122099) b_and!326775 (not b!4179184) b_and!326771 b_and!326773 (not b!4179189) (not b_next!122105) (not b!4179206) (not b!4179182) tp_is_empty!22033 (not b_next!122103) (not b!4179193) b_and!326765 (not b!4179197) (not b!4179202) (not b!4179190) (not b!4179192) (not b!4179191) (not b!4179186) b_and!326767 b_and!326769 (not b!4179205) (not b!4179183) (not b!4179200))
(check-sat (not b_next!122095) (not b_next!122101) (not b_next!122099) b_and!326775 (not b_next!122105) (not b_next!122097) (not b_next!122103) b_and!326765 b_and!326767 b_and!326769 b_and!326771 b_and!326773)
