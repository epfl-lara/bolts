; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398114 () Bool)

(assert start!398114)

(declare-fun b!4175612 () Bool)

(declare-fun b_free!121103 () Bool)

(declare-fun b_next!121807 () Bool)

(assert (=> b!4175612 (= b_free!121103 (not b_next!121807))))

(declare-fun tp!1276044 () Bool)

(declare-fun b_and!326333 () Bool)

(assert (=> b!4175612 (= tp!1276044 b_and!326333)))

(declare-fun b_free!121105 () Bool)

(declare-fun b_next!121809 () Bool)

(assert (=> b!4175612 (= b_free!121105 (not b_next!121809))))

(declare-fun tp!1276047 () Bool)

(declare-fun b_and!326335 () Bool)

(assert (=> b!4175612 (= tp!1276047 b_and!326335)))

(declare-fun b!4175632 () Bool)

(declare-fun b_free!121107 () Bool)

(declare-fun b_next!121811 () Bool)

(assert (=> b!4175632 (= b_free!121107 (not b_next!121811))))

(declare-fun tp!1276046 () Bool)

(declare-fun b_and!326337 () Bool)

(assert (=> b!4175632 (= tp!1276046 b_and!326337)))

(declare-fun b_free!121109 () Bool)

(declare-fun b_next!121813 () Bool)

(assert (=> b!4175632 (= b_free!121109 (not b_next!121813))))

(declare-fun tp!1276042 () Bool)

(declare-fun b_and!326339 () Bool)

(assert (=> b!4175632 (= tp!1276042 b_and!326339)))

(declare-fun b!4175626 () Bool)

(declare-fun b_free!121111 () Bool)

(declare-fun b_next!121815 () Bool)

(assert (=> b!4175626 (= b_free!121111 (not b_next!121815))))

(declare-fun tp!1276037 () Bool)

(declare-fun b_and!326341 () Bool)

(assert (=> b!4175626 (= tp!1276037 b_and!326341)))

(declare-fun b_free!121113 () Bool)

(declare-fun b_next!121817 () Bool)

(assert (=> b!4175626 (= b_free!121113 (not b_next!121817))))

(declare-fun tp!1276041 () Bool)

(declare-fun b_and!326343 () Bool)

(assert (=> b!4175626 (= tp!1276041 b_and!326343)))

(declare-fun b!4175610 () Bool)

(declare-fun e!2592326 () Bool)

(declare-fun tp_is_empty!21989 () Bool)

(declare-fun tp!1276039 () Bool)

(assert (=> b!4175610 (= e!2592326 (and tp_is_empty!21989 tp!1276039))))

(declare-fun b!4175611 () Bool)

(declare-fun res!1711554 () Bool)

(declare-fun e!2592320 () Bool)

(assert (=> b!4175611 (=> res!1711554 e!2592320)))

(declare-datatypes ((LexerInterface!7201 0))(
  ( (LexerInterfaceExt!7198 (__x!27897 Int)) (Lexer!7199) )
))
(declare-fun thiss!25986 () LexerInterface!7201)

(declare-datatypes ((List!45927 0))(
  ( (Nil!45803) (Cons!45803 (h!51223 (_ BitVec 16)) (t!344686 List!45927)) )
))
(declare-datatypes ((TokenValue!7838 0))(
  ( (FloatLiteralValue!15676 (text!55311 List!45927)) (TokenValueExt!7837 (__x!27898 Int)) (Broken!39190 (value!237334 List!45927)) (Object!7961) (End!7838) (Def!7838) (Underscore!7838) (Match!7838) (Else!7838) (Error!7838) (Case!7838) (If!7838) (Extends!7838) (Abstract!7838) (Class!7838) (Val!7838) (DelimiterValue!15676 (del!7898 List!45927)) (KeywordValue!7844 (value!237335 List!45927)) (CommentValue!15676 (value!237336 List!45927)) (WhitespaceValue!15676 (value!237337 List!45927)) (IndentationValue!7838 (value!237338 List!45927)) (String!53055) (Int32!7838) (Broken!39191 (value!237339 List!45927)) (Boolean!7839) (Unit!64868) (OperatorValue!7841 (op!7898 List!45927)) (IdentifierValue!15676 (value!237340 List!45927)) (IdentifierValue!15677 (value!237341 List!45927)) (WhitespaceValue!15677 (value!237342 List!45927)) (True!15676) (False!15676) (Broken!39192 (value!237343 List!45927)) (Broken!39193 (value!237344 List!45927)) (True!15677) (RightBrace!7838) (RightBracket!7838) (Colon!7838) (Null!7838) (Comma!7838) (LeftBracket!7838) (False!15677) (LeftBrace!7838) (ImaginaryLiteralValue!7838 (text!55312 List!45927)) (StringLiteralValue!23514 (value!237345 List!45927)) (EOFValue!7838 (value!237346 List!45927)) (IdentValue!7838 (value!237347 List!45927)) (DelimiterValue!15677 (value!237348 List!45927)) (DedentValue!7838 (value!237349 List!45927)) (NewLineValue!7838 (value!237350 List!45927)) (IntegerValue!23514 (value!237351 (_ BitVec 32)) (text!55313 List!45927)) (IntegerValue!23515 (value!237352 Int) (text!55314 List!45927)) (Times!7838) (Or!7838) (Equal!7838) (Minus!7838) (Broken!39194 (value!237353 List!45927)) (And!7838) (Div!7838) (LessEqual!7838) (Mod!7838) (Concat!20351) (Not!7838) (Plus!7838) (SpaceValue!7838 (value!237354 List!45927)) (IntegerValue!23516 (value!237355 Int) (text!55315 List!45927)) (StringLiteralValue!23515 (text!55316 List!45927)) (FloatLiteralValue!15677 (text!55317 List!45927)) (BytesLiteralValue!7838 (value!237356 List!45927)) (CommentValue!15677 (value!237357 List!45927)) (StringLiteralValue!23516 (value!237358 List!45927)) (ErrorTokenValue!7838 (msg!7899 List!45927)) )
))
(declare-datatypes ((C!25216 0))(
  ( (C!25217 (val!14770 Int)) )
))
(declare-datatypes ((Regex!12513 0))(
  ( (ElementMatch!12513 (c!713376 C!25216)) (Concat!20352 (regOne!25538 Regex!12513) (regTwo!25538 Regex!12513)) (EmptyExpr!12513) (Star!12513 (reg!12842 Regex!12513)) (EmptyLang!12513) (Union!12513 (regOne!25539 Regex!12513) (regTwo!25539 Regex!12513)) )
))
(declare-datatypes ((String!53056 0))(
  ( (String!53057 (value!237359 String)) )
))
(declare-datatypes ((List!45928 0))(
  ( (Nil!45804) (Cons!45804 (h!51224 C!25216) (t!344687 List!45928)) )
))
(declare-datatypes ((IArray!27643 0))(
  ( (IArray!27644 (innerList!13879 List!45928)) )
))
(declare-datatypes ((Conc!13819 0))(
  ( (Node!13819 (left!34129 Conc!13819) (right!34459 Conc!13819) (csize!27868 Int) (cheight!14030 Int)) (Leaf!21366 (xs!17125 IArray!27643) (csize!27869 Int)) (Empty!13819) )
))
(declare-datatypes ((BalanceConc!27232 0))(
  ( (BalanceConc!27233 (c!713377 Conc!13819)) )
))
(declare-datatypes ((TokenValueInjection!15104 0))(
  ( (TokenValueInjection!15105 (toValue!10292 Int) (toChars!10151 Int)) )
))
(declare-datatypes ((Rule!15016 0))(
  ( (Rule!15017 (regex!7608 Regex!12513) (tag!8472 String!53056) (isSeparator!7608 Bool) (transformation!7608 TokenValueInjection!15104)) )
))
(declare-datatypes ((Token!13930 0))(
  ( (Token!13931 (value!237360 TokenValue!7838) (rule!10662 Rule!15016) (size!33619 Int) (originalCharacters!7996 List!45928)) )
))
(declare-datatypes ((tuple2!43642 0))(
  ( (tuple2!43643 (_1!24955 Token!13930) (_2!24955 List!45928)) )
))
(declare-datatypes ((Option!9804 0))(
  ( (None!9803) (Some!9803 (v!40603 tuple2!43642)) )
))
(declare-fun lt!1486904 () Option!9804)

(declare-datatypes ((List!45929 0))(
  ( (Nil!45805) (Cons!45805 (h!51225 Rule!15016) (t!344688 List!45929)) )
))
(declare-fun rules!3843 () List!45929)

(declare-fun input!3342 () List!45928)

(declare-fun maxPrefix!4253 (LexerInterface!7201 List!45929 List!45928) Option!9804)

(assert (=> b!4175611 (= res!1711554 (not (= (maxPrefix!4253 thiss!25986 rules!3843 input!3342) lt!1486904)))))

(declare-fun res!1711546 () Bool)

(declare-fun e!2592331 () Bool)

(assert (=> start!398114 (=> (not res!1711546) (not e!2592331))))

(get-info :version)

(assert (=> start!398114 (= res!1711546 ((_ is Lexer!7199) thiss!25986))))

(assert (=> start!398114 e!2592331))

(assert (=> start!398114 true))

(declare-fun e!2592322 () Bool)

(assert (=> start!398114 e!2592322))

(declare-fun e!2592321 () Bool)

(assert (=> start!398114 e!2592321))

(declare-fun e!2592325 () Bool)

(assert (=> start!398114 e!2592325))

(assert (=> start!398114 e!2592326))

(declare-fun e!2592329 () Bool)

(assert (=> start!398114 e!2592329))

(declare-fun e!2592336 () Bool)

(assert (=> start!398114 e!2592336))

(declare-fun e!2592328 () Bool)

(assert (=> b!4175612 (= e!2592328 (and tp!1276044 tp!1276047))))

(declare-fun b!4175613 () Bool)

(declare-fun res!1711557 () Bool)

(assert (=> b!4175613 (=> (not res!1711557) (not e!2592331))))

(declare-fun r!4142 () Rule!15016)

(declare-fun contains!9411 (List!45929 Rule!15016) Bool)

(assert (=> b!4175613 (= res!1711557 (contains!9411 rules!3843 r!4142))))

(declare-fun b!4175614 () Bool)

(declare-fun res!1711551 () Bool)

(assert (=> b!4175614 (=> (not res!1711551) (not e!2592331))))

(declare-fun validRegex!5630 (Regex!12513) Bool)

(assert (=> b!4175614 (= res!1711551 (validRegex!5630 (regex!7608 r!4142)))))

(declare-fun b!4175615 () Bool)

(declare-fun res!1711547 () Bool)

(assert (=> b!4175615 (=> res!1711547 e!2592320)))

(declare-fun rBis!167 () Rule!15016)

(declare-fun ruleValid!3326 (LexerInterface!7201 Rule!15016) Bool)

(assert (=> b!4175615 (= res!1711547 (not (ruleValid!3326 thiss!25986 rBis!167)))))

(declare-fun b!4175616 () Bool)

(declare-fun res!1711548 () Bool)

(assert (=> b!4175616 (=> (not res!1711548) (not e!2592331))))

(assert (=> b!4175616 (= res!1711548 (contains!9411 rules!3843 rBis!167))))

(declare-fun b!4175617 () Bool)

(declare-fun res!1711553 () Bool)

(assert (=> b!4175617 (=> (not res!1711553) (not e!2592331))))

(declare-fun p!2959 () List!45928)

(declare-fun matchR!6252 (Regex!12513 List!45928) Bool)

(assert (=> b!4175617 (= res!1711553 (matchR!6252 (regex!7608 r!4142) p!2959))))

(declare-fun b!4175618 () Bool)

(declare-fun res!1711549 () Bool)

(assert (=> b!4175618 (=> (not res!1711549) (not e!2592331))))

(declare-fun isEmpty!27094 (List!45929) Bool)

(assert (=> b!4175618 (= res!1711549 (not (isEmpty!27094 rules!3843)))))

(declare-fun b!4175619 () Bool)

(declare-fun e!2592337 () Bool)

(assert (=> b!4175619 (= e!2592331 (not e!2592337))))

(declare-fun res!1711550 () Bool)

(assert (=> b!4175619 (=> res!1711550 e!2592337)))

(declare-fun maxPrefixOneRule!3212 (LexerInterface!7201 Rule!15016 List!45928) Option!9804)

(assert (=> b!4175619 (= res!1711550 (not (= (maxPrefixOneRule!3212 thiss!25986 r!4142 input!3342) lt!1486904)))))

(declare-fun lt!1486910 () Token!13930)

(declare-fun lt!1486897 () List!45928)

(assert (=> b!4175619 (= lt!1486904 (Some!9803 (tuple2!43643 lt!1486910 lt!1486897)))))

(declare-fun getSuffix!2760 (List!45928 List!45928) List!45928)

(assert (=> b!4175619 (= lt!1486897 (getSuffix!2760 input!3342 p!2959))))

(declare-fun lt!1486905 () TokenValue!7838)

(declare-fun lt!1486898 () Int)

(assert (=> b!4175619 (= lt!1486910 (Token!13931 lt!1486905 r!4142 lt!1486898 p!2959))))

(declare-fun size!33620 (List!45928) Int)

(assert (=> b!4175619 (= lt!1486898 (size!33620 p!2959))))

(declare-fun lt!1486899 () BalanceConc!27232)

(declare-fun apply!10573 (TokenValueInjection!15104 BalanceConc!27232) TokenValue!7838)

(assert (=> b!4175619 (= lt!1486905 (apply!10573 (transformation!7608 r!4142) lt!1486899))))

(declare-fun isPrefix!4465 (List!45928 List!45928) Bool)

(assert (=> b!4175619 (isPrefix!4465 input!3342 input!3342)))

(declare-datatypes ((Unit!64869 0))(
  ( (Unit!64870) )
))
(declare-fun lt!1486907 () Unit!64869)

(declare-fun lemmaIsPrefixRefl!2894 (List!45928 List!45928) Unit!64869)

(assert (=> b!4175619 (= lt!1486907 (lemmaIsPrefixRefl!2894 input!3342 input!3342))))

(declare-fun lt!1486906 () Unit!64869)

(declare-fun lemmaSemiInverse!2374 (TokenValueInjection!15104 BalanceConc!27232) Unit!64869)

(assert (=> b!4175619 (= lt!1486906 (lemmaSemiInverse!2374 (transformation!7608 r!4142) lt!1486899))))

(declare-fun seqFromList!5633 (List!45928) BalanceConc!27232)

(assert (=> b!4175619 (= lt!1486899 (seqFromList!5633 p!2959))))

(declare-fun b!4175620 () Bool)

(declare-fun e!2592333 () Bool)

(declare-fun e!2592335 () Bool)

(assert (=> b!4175620 (= e!2592333 e!2592335)))

(declare-fun res!1711559 () Bool)

(assert (=> b!4175620 (=> res!1711559 e!2592335)))

(declare-fun lt!1486902 () List!45928)

(declare-fun pBis!107 () List!45928)

(assert (=> b!4175620 (= res!1711559 (not (= lt!1486902 pBis!107)))))

(declare-fun lt!1486901 () tuple2!43642)

(declare-fun ++!11686 (List!45928 List!45928) List!45928)

(assert (=> b!4175620 (isPrefix!4465 lt!1486902 (++!11686 lt!1486902 (_2!24955 lt!1486901)))))

(declare-fun lt!1486903 () Unit!64869)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2972 (List!45928 List!45928) Unit!64869)

(assert (=> b!4175620 (= lt!1486903 (lemmaConcatTwoListThenFirstIsPrefix!2972 lt!1486902 (_2!24955 lt!1486901)))))

(declare-fun list!16543 (BalanceConc!27232) List!45928)

(declare-fun charsOf!5049 (Token!13930) BalanceConc!27232)

(assert (=> b!4175620 (= lt!1486902 (list!16543 (charsOf!5049 (_1!24955 lt!1486901))))))

(declare-fun lt!1486912 () Option!9804)

(declare-fun get!14877 (Option!9804) tuple2!43642)

(assert (=> b!4175620 (= lt!1486901 (get!14877 lt!1486912))))

(declare-fun b!4175621 () Bool)

(declare-fun e!2592332 () Bool)

(assert (=> b!4175621 (= e!2592332 (validRegex!5630 (regex!7608 rBis!167)))))

(declare-fun tp!1276043 () Bool)

(declare-fun b!4175622 () Bool)

(declare-fun e!2592334 () Bool)

(declare-fun inv!60329 (String!53056) Bool)

(declare-fun inv!60331 (TokenValueInjection!15104) Bool)

(assert (=> b!4175622 (= e!2592321 (and tp!1276043 (inv!60329 (tag!8472 r!4142)) (inv!60331 (transformation!7608 r!4142)) e!2592334))))

(declare-fun b!4175623 () Bool)

(declare-fun res!1711560 () Bool)

(assert (=> b!4175623 (=> (not res!1711560) (not e!2592331))))

(assert (=> b!4175623 (= res!1711560 (ruleValid!3326 thiss!25986 r!4142))))

(declare-fun b!4175624 () Bool)

(declare-fun e!2592324 () Bool)

(declare-fun tp!1276048 () Bool)

(assert (=> b!4175624 (= e!2592325 (and e!2592324 tp!1276048))))

(declare-fun b!4175625 () Bool)

(assert (=> b!4175625 (= e!2592335 e!2592332)))

(declare-fun res!1711552 () Bool)

(assert (=> b!4175625 (=> res!1711552 e!2592332)))

(assert (=> b!4175625 (= res!1711552 (matchR!6252 (regex!7608 rBis!167) pBis!107))))

(assert (=> b!4175625 false))

(declare-fun lt!1486911 () Unit!64869)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!14 (LexerInterface!7201 List!45929 List!45928 Token!13930 List!45928 List!45928 List!45928 List!45928 Rule!15016 Token!13930) Unit!64869)

(assert (=> b!4175625 (= lt!1486911 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!14 thiss!25986 rules!3843 p!2959 lt!1486910 input!3342 lt!1486897 pBis!107 (_2!24955 lt!1486901) rBis!167 (_1!24955 lt!1486901)))))

(assert (=> b!4175626 (= e!2592334 (and tp!1276037 tp!1276041))))

(declare-fun tp!1276036 () Bool)

(declare-fun b!4175627 () Bool)

(assert (=> b!4175627 (= e!2592324 (and tp!1276036 (inv!60329 (tag!8472 (h!51225 rules!3843))) (inv!60331 (transformation!7608 (h!51225 rules!3843))) e!2592328))))

(declare-fun b!4175628 () Bool)

(declare-fun tp!1276038 () Bool)

(assert (=> b!4175628 (= e!2592336 (and tp_is_empty!21989 tp!1276038))))

(declare-fun b!4175629 () Bool)

(declare-fun res!1711562 () Bool)

(assert (=> b!4175629 (=> (not res!1711562) (not e!2592331))))

(assert (=> b!4175629 (= res!1711562 (isPrefix!4465 p!2959 input!3342))))

(declare-fun b!4175630 () Bool)

(declare-fun res!1711561 () Bool)

(assert (=> b!4175630 (=> (not res!1711561) (not e!2592331))))

(assert (=> b!4175630 (= res!1711561 (isPrefix!4465 pBis!107 input!3342))))

(declare-fun b!4175631 () Bool)

(declare-fun tp!1276045 () Bool)

(assert (=> b!4175631 (= e!2592329 (and tp_is_empty!21989 tp!1276045))))

(declare-fun e!2592338 () Bool)

(assert (=> b!4175632 (= e!2592338 (and tp!1276046 tp!1276042))))

(declare-fun b!4175633 () Bool)

(assert (=> b!4175633 (= e!2592337 e!2592320)))

(declare-fun res!1711555 () Bool)

(assert (=> b!4175633 (=> res!1711555 e!2592320)))

(declare-fun lt!1486908 () Int)

(assert (=> b!4175633 (= res!1711555 (<= lt!1486908 lt!1486898))))

(assert (=> b!4175633 (= lt!1486908 (size!33620 pBis!107))))

(declare-fun b!4175634 () Bool)

(assert (=> b!4175634 (= e!2592320 e!2592333)))

(declare-fun res!1711556 () Bool)

(assert (=> b!4175634 (=> res!1711556 e!2592333)))

(declare-fun isEmpty!27095 (Option!9804) Bool)

(assert (=> b!4175634 (= res!1711556 (isEmpty!27095 lt!1486912))))

(assert (=> b!4175634 (= lt!1486912 (maxPrefixOneRule!3212 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1486909 () Unit!64869)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2340 (LexerInterface!7201 Rule!15016 List!45929) Unit!64869)

(assert (=> b!4175634 (= lt!1486909 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2340 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175634 (<= lt!1486908 (size!33620 input!3342))))

(declare-fun lt!1486900 () Unit!64869)

(declare-fun lemmaIsPrefixThenSmallerEqSize!497 (List!45928 List!45928) Unit!64869)

(assert (=> b!4175634 (= lt!1486900 (lemmaIsPrefixThenSmallerEqSize!497 pBis!107 input!3342))))

(declare-fun b!4175635 () Bool)

(declare-fun res!1711558 () Bool)

(assert (=> b!4175635 (=> (not res!1711558) (not e!2592331))))

(declare-fun rulesInvariant!6414 (LexerInterface!7201 List!45929) Bool)

(assert (=> b!4175635 (= res!1711558 (rulesInvariant!6414 thiss!25986 rules!3843))))

(declare-fun tp!1276040 () Bool)

(declare-fun b!4175636 () Bool)

(assert (=> b!4175636 (= e!2592322 (and tp!1276040 (inv!60329 (tag!8472 rBis!167)) (inv!60331 (transformation!7608 rBis!167)) e!2592338))))

(assert (= (and start!398114 res!1711546) b!4175629))

(assert (= (and b!4175629 res!1711562) b!4175630))

(assert (= (and b!4175630 res!1711561) b!4175618))

(assert (= (and b!4175618 res!1711549) b!4175635))

(assert (= (and b!4175635 res!1711558) b!4175613))

(assert (= (and b!4175613 res!1711557) b!4175616))

(assert (= (and b!4175616 res!1711548) b!4175614))

(assert (= (and b!4175614 res!1711551) b!4175617))

(assert (= (and b!4175617 res!1711553) b!4175623))

(assert (= (and b!4175623 res!1711560) b!4175619))

(assert (= (and b!4175619 (not res!1711550)) b!4175633))

(assert (= (and b!4175633 (not res!1711555)) b!4175615))

(assert (= (and b!4175615 (not res!1711547)) b!4175611))

(assert (= (and b!4175611 (not res!1711554)) b!4175634))

(assert (= (and b!4175634 (not res!1711556)) b!4175620))

(assert (= (and b!4175620 (not res!1711559)) b!4175625))

(assert (= (and b!4175625 (not res!1711552)) b!4175621))

(assert (= b!4175636 b!4175632))

(assert (= start!398114 b!4175636))

(assert (= b!4175622 b!4175626))

(assert (= start!398114 b!4175622))

(assert (= b!4175627 b!4175612))

(assert (= b!4175624 b!4175627))

(assert (= (and start!398114 ((_ is Cons!45805) rules!3843)) b!4175624))

(assert (= (and start!398114 ((_ is Cons!45804) input!3342)) b!4175610))

(assert (= (and start!398114 ((_ is Cons!45804) pBis!107)) b!4175631))

(assert (= (and start!398114 ((_ is Cons!45804) p!2959)) b!4175628))

(declare-fun m!4765331 () Bool)

(assert (=> b!4175630 m!4765331))

(declare-fun m!4765333 () Bool)

(assert (=> b!4175636 m!4765333))

(declare-fun m!4765335 () Bool)

(assert (=> b!4175636 m!4765335))

(declare-fun m!4765337 () Bool)

(assert (=> b!4175629 m!4765337))

(declare-fun m!4765339 () Bool)

(assert (=> b!4175621 m!4765339))

(declare-fun m!4765341 () Bool)

(assert (=> b!4175611 m!4765341))

(declare-fun m!4765343 () Bool)

(assert (=> b!4175619 m!4765343))

(declare-fun m!4765345 () Bool)

(assert (=> b!4175619 m!4765345))

(declare-fun m!4765347 () Bool)

(assert (=> b!4175619 m!4765347))

(declare-fun m!4765349 () Bool)

(assert (=> b!4175619 m!4765349))

(declare-fun m!4765351 () Bool)

(assert (=> b!4175619 m!4765351))

(declare-fun m!4765353 () Bool)

(assert (=> b!4175619 m!4765353))

(declare-fun m!4765355 () Bool)

(assert (=> b!4175619 m!4765355))

(declare-fun m!4765357 () Bool)

(assert (=> b!4175619 m!4765357))

(declare-fun m!4765359 () Bool)

(assert (=> b!4175618 m!4765359))

(declare-fun m!4765361 () Bool)

(assert (=> b!4175615 m!4765361))

(declare-fun m!4765363 () Bool)

(assert (=> b!4175635 m!4765363))

(declare-fun m!4765365 () Bool)

(assert (=> b!4175620 m!4765365))

(declare-fun m!4765367 () Bool)

(assert (=> b!4175620 m!4765367))

(declare-fun m!4765369 () Bool)

(assert (=> b!4175620 m!4765369))

(declare-fun m!4765371 () Bool)

(assert (=> b!4175620 m!4765371))

(declare-fun m!4765373 () Bool)

(assert (=> b!4175620 m!4765373))

(assert (=> b!4175620 m!4765367))

(declare-fun m!4765375 () Bool)

(assert (=> b!4175620 m!4765375))

(assert (=> b!4175620 m!4765371))

(declare-fun m!4765377 () Bool)

(assert (=> b!4175625 m!4765377))

(declare-fun m!4765379 () Bool)

(assert (=> b!4175625 m!4765379))

(declare-fun m!4765381 () Bool)

(assert (=> b!4175627 m!4765381))

(declare-fun m!4765383 () Bool)

(assert (=> b!4175627 m!4765383))

(declare-fun m!4765385 () Bool)

(assert (=> b!4175614 m!4765385))

(declare-fun m!4765387 () Bool)

(assert (=> b!4175617 m!4765387))

(declare-fun m!4765389 () Bool)

(assert (=> b!4175613 m!4765389))

(declare-fun m!4765391 () Bool)

(assert (=> b!4175616 m!4765391))

(declare-fun m!4765393 () Bool)

(assert (=> b!4175623 m!4765393))

(declare-fun m!4765395 () Bool)

(assert (=> b!4175622 m!4765395))

(declare-fun m!4765397 () Bool)

(assert (=> b!4175622 m!4765397))

(declare-fun m!4765399 () Bool)

(assert (=> b!4175634 m!4765399))

(declare-fun m!4765401 () Bool)

(assert (=> b!4175634 m!4765401))

(declare-fun m!4765403 () Bool)

(assert (=> b!4175634 m!4765403))

(declare-fun m!4765405 () Bool)

(assert (=> b!4175634 m!4765405))

(declare-fun m!4765407 () Bool)

(assert (=> b!4175634 m!4765407))

(declare-fun m!4765409 () Bool)

(assert (=> b!4175633 m!4765409))

(check-sat (not b!4175627) b_and!326339 (not b!4175618) (not b!4175614) (not b!4175636) (not b!4175630) (not b!4175629) (not b!4175621) b_and!326335 (not b_next!121807) (not b!4175633) (not b!4175613) (not b!4175617) (not b_next!121811) (not b_next!121815) b_and!326343 (not b!4175623) (not b!4175622) b_and!326333 (not b!4175619) (not b!4175616) (not b!4175631) (not b!4175615) (not b!4175634) tp_is_empty!21989 (not b_next!121813) (not b!4175628) (not b!4175625) b_and!326341 (not b!4175610) (not b!4175635) (not b_next!121809) (not b_next!121817) (not b!4175611) b_and!326337 (not b!4175624) (not b!4175620))
(check-sat b_and!326339 b_and!326343 b_and!326333 (not b_next!121813) b_and!326341 (not b_next!121809) b_and!326335 (not b_next!121807) (not b_next!121811) (not b_next!121815) (not b_next!121817) b_and!326337)
