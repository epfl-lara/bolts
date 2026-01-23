; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398110 () Bool)

(assert start!398110)

(declare-fun b!4175474 () Bool)

(declare-fun b_free!121079 () Bool)

(declare-fun b_next!121783 () Bool)

(assert (=> b!4175474 (= b_free!121079 (not b_next!121783))))

(declare-fun tp!1275970 () Bool)

(declare-fun b_and!326309 () Bool)

(assert (=> b!4175474 (= tp!1275970 b_and!326309)))

(declare-fun b_free!121081 () Bool)

(declare-fun b_next!121785 () Bool)

(assert (=> b!4175474 (= b_free!121081 (not b_next!121785))))

(declare-fun tp!1275968 () Bool)

(declare-fun b_and!326311 () Bool)

(assert (=> b!4175474 (= tp!1275968 b_and!326311)))

(declare-fun b!4175471 () Bool)

(declare-fun b_free!121083 () Bool)

(declare-fun b_next!121787 () Bool)

(assert (=> b!4175471 (= b_free!121083 (not b_next!121787))))

(declare-fun tp!1275961 () Bool)

(declare-fun b_and!326313 () Bool)

(assert (=> b!4175471 (= tp!1275961 b_and!326313)))

(declare-fun b_free!121085 () Bool)

(declare-fun b_next!121789 () Bool)

(assert (=> b!4175471 (= b_free!121085 (not b_next!121789))))

(declare-fun tp!1275963 () Bool)

(declare-fun b_and!326315 () Bool)

(assert (=> b!4175471 (= tp!1275963 b_and!326315)))

(declare-fun b!4175462 () Bool)

(declare-fun b_free!121087 () Bool)

(declare-fun b_next!121791 () Bool)

(assert (=> b!4175462 (= b_free!121087 (not b_next!121791))))

(declare-fun tp!1275967 () Bool)

(declare-fun b_and!326317 () Bool)

(assert (=> b!4175462 (= tp!1275967 b_and!326317)))

(declare-fun b_free!121089 () Bool)

(declare-fun b_next!121793 () Bool)

(assert (=> b!4175462 (= b_free!121089 (not b_next!121793))))

(declare-fun tp!1275966 () Bool)

(declare-fun b_and!326319 () Bool)

(assert (=> b!4175462 (= tp!1275966 b_and!326319)))

(declare-fun e!2592224 () Bool)

(declare-fun e!2592216 () Bool)

(declare-fun b!4175449 () Bool)

(declare-datatypes ((List!45921 0))(
  ( (Nil!45797) (Cons!45797 (h!51217 (_ BitVec 16)) (t!344680 List!45921)) )
))
(declare-datatypes ((TokenValue!7836 0))(
  ( (FloatLiteralValue!15672 (text!55297 List!45921)) (TokenValueExt!7835 (__x!27893 Int)) (Broken!39180 (value!237277 List!45921)) (Object!7959) (End!7836) (Def!7836) (Underscore!7836) (Match!7836) (Else!7836) (Error!7836) (Case!7836) (If!7836) (Extends!7836) (Abstract!7836) (Class!7836) (Val!7836) (DelimiterValue!15672 (del!7896 List!45921)) (KeywordValue!7842 (value!237278 List!45921)) (CommentValue!15672 (value!237279 List!45921)) (WhitespaceValue!15672 (value!237280 List!45921)) (IndentationValue!7836 (value!237281 List!45921)) (String!53045) (Int32!7836) (Broken!39181 (value!237282 List!45921)) (Boolean!7837) (Unit!64862) (OperatorValue!7839 (op!7896 List!45921)) (IdentifierValue!15672 (value!237283 List!45921)) (IdentifierValue!15673 (value!237284 List!45921)) (WhitespaceValue!15673 (value!237285 List!45921)) (True!15672) (False!15672) (Broken!39182 (value!237286 List!45921)) (Broken!39183 (value!237287 List!45921)) (True!15673) (RightBrace!7836) (RightBracket!7836) (Colon!7836) (Null!7836) (Comma!7836) (LeftBracket!7836) (False!15673) (LeftBrace!7836) (ImaginaryLiteralValue!7836 (text!55298 List!45921)) (StringLiteralValue!23508 (value!237288 List!45921)) (EOFValue!7836 (value!237289 List!45921)) (IdentValue!7836 (value!237290 List!45921)) (DelimiterValue!15673 (value!237291 List!45921)) (DedentValue!7836 (value!237292 List!45921)) (NewLineValue!7836 (value!237293 List!45921)) (IntegerValue!23508 (value!237294 (_ BitVec 32)) (text!55299 List!45921)) (IntegerValue!23509 (value!237295 Int) (text!55300 List!45921)) (Times!7836) (Or!7836) (Equal!7836) (Minus!7836) (Broken!39184 (value!237296 List!45921)) (And!7836) (Div!7836) (LessEqual!7836) (Mod!7836) (Concat!20347) (Not!7836) (Plus!7836) (SpaceValue!7836 (value!237297 List!45921)) (IntegerValue!23510 (value!237298 Int) (text!55301 List!45921)) (StringLiteralValue!23509 (text!55302 List!45921)) (FloatLiteralValue!15673 (text!55303 List!45921)) (BytesLiteralValue!7836 (value!237299 List!45921)) (CommentValue!15673 (value!237300 List!45921)) (StringLiteralValue!23510 (value!237301 List!45921)) (ErrorTokenValue!7836 (msg!7897 List!45921)) )
))
(declare-datatypes ((C!25212 0))(
  ( (C!25213 (val!14768 Int)) )
))
(declare-datatypes ((List!45922 0))(
  ( (Nil!45798) (Cons!45798 (h!51218 C!25212) (t!344681 List!45922)) )
))
(declare-datatypes ((IArray!27639 0))(
  ( (IArray!27640 (innerList!13877 List!45922)) )
))
(declare-datatypes ((Conc!13817 0))(
  ( (Node!13817 (left!34126 Conc!13817) (right!34456 Conc!13817) (csize!27864 Int) (cheight!14028 Int)) (Leaf!21363 (xs!17123 IArray!27639) (csize!27865 Int)) (Empty!13817) )
))
(declare-datatypes ((BalanceConc!27228 0))(
  ( (BalanceConc!27229 (c!713370 Conc!13817)) )
))
(declare-datatypes ((Regex!12511 0))(
  ( (ElementMatch!12511 (c!713371 C!25212)) (Concat!20348 (regOne!25534 Regex!12511) (regTwo!25534 Regex!12511)) (EmptyExpr!12511) (Star!12511 (reg!12840 Regex!12511)) (EmptyLang!12511) (Union!12511 (regOne!25535 Regex!12511) (regTwo!25535 Regex!12511)) )
))
(declare-datatypes ((String!53046 0))(
  ( (String!53047 (value!237302 String)) )
))
(declare-datatypes ((TokenValueInjection!15100 0))(
  ( (TokenValueInjection!15101 (toValue!10290 Int) (toChars!10149 Int)) )
))
(declare-datatypes ((Rule!15012 0))(
  ( (Rule!15013 (regex!7606 Regex!12511) (tag!8470 String!53046) (isSeparator!7606 Bool) (transformation!7606 TokenValueInjection!15100)) )
))
(declare-fun rBis!167 () Rule!15012)

(declare-fun tp!1275964 () Bool)

(declare-fun inv!60324 (String!53046) Bool)

(declare-fun inv!60326 (TokenValueInjection!15100) Bool)

(assert (=> b!4175449 (= e!2592224 (and tp!1275964 (inv!60324 (tag!8470 rBis!167)) (inv!60326 (transformation!7606 rBis!167)) e!2592216))))

(declare-fun b!4175450 () Bool)

(declare-fun e!2592209 () Bool)

(declare-fun validRegex!5628 (Regex!12511) Bool)

(assert (=> b!4175450 (= e!2592209 (validRegex!5628 (regex!7606 rBis!167)))))

(assert (=> b!4175450 false))

(declare-fun lt!1486804 () List!45922)

(declare-datatypes ((Token!13926 0))(
  ( (Token!13927 (value!237303 TokenValue!7836) (rule!10660 Rule!15012) (size!33615 Int) (originalCharacters!7994 List!45922)) )
))
(declare-datatypes ((tuple2!43638 0))(
  ( (tuple2!43639 (_1!24953 Token!13926) (_2!24953 List!45922)) )
))
(declare-fun lt!1486813 () tuple2!43638)

(declare-datatypes ((LexerInterface!7199 0))(
  ( (LexerInterfaceExt!7196 (__x!27894 Int)) (Lexer!7197) )
))
(declare-fun thiss!25986 () LexerInterface!7199)

(declare-fun lt!1486807 () Token!13926)

(declare-datatypes ((Unit!64863 0))(
  ( (Unit!64864) )
))
(declare-fun lt!1486816 () Unit!64863)

(declare-datatypes ((List!45923 0))(
  ( (Nil!45799) (Cons!45799 (h!51219 Rule!15012) (t!344682 List!45923)) )
))
(declare-fun rules!3843 () List!45923)

(declare-fun input!3342 () List!45922)

(declare-fun pBis!107 () List!45922)

(declare-fun p!2959 () List!45922)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!12 (LexerInterface!7199 List!45923 List!45922 Token!13926 List!45922 List!45922 List!45922 List!45922 Rule!15012 Token!13926) Unit!64863)

(assert (=> b!4175450 (= lt!1486816 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!12 thiss!25986 rules!3843 p!2959 lt!1486807 input!3342 lt!1486804 pBis!107 (_2!24953 lt!1486813) rBis!167 (_1!24953 lt!1486813)))))

(declare-fun b!4175451 () Bool)

(declare-fun e!2592213 () Bool)

(assert (=> b!4175451 (= e!2592213 e!2592209)))

(declare-fun res!1711460 () Bool)

(assert (=> b!4175451 (=> res!1711460 e!2592209)))

(declare-fun lt!1486808 () List!45922)

(assert (=> b!4175451 (= res!1711460 (not (= lt!1486808 pBis!107)))))

(declare-fun isPrefix!4463 (List!45922 List!45922) Bool)

(declare-fun ++!11684 (List!45922 List!45922) List!45922)

(assert (=> b!4175451 (isPrefix!4463 lt!1486808 (++!11684 lt!1486808 (_2!24953 lt!1486813)))))

(declare-fun lt!1486812 () Unit!64863)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2970 (List!45922 List!45922) Unit!64863)

(assert (=> b!4175451 (= lt!1486812 (lemmaConcatTwoListThenFirstIsPrefix!2970 lt!1486808 (_2!24953 lt!1486813)))))

(declare-fun list!16541 (BalanceConc!27228) List!45922)

(declare-fun charsOf!5047 (Token!13926) BalanceConc!27228)

(assert (=> b!4175451 (= lt!1486808 (list!16541 (charsOf!5047 (_1!24953 lt!1486813))))))

(declare-datatypes ((Option!9802 0))(
  ( (None!9801) (Some!9801 (v!40601 tuple2!43638)) )
))
(declare-fun lt!1486815 () Option!9802)

(declare-fun get!14874 (Option!9802) tuple2!43638)

(assert (=> b!4175451 (= lt!1486813 (get!14874 lt!1486815))))

(declare-fun b!4175452 () Bool)

(declare-fun res!1711455 () Bool)

(declare-fun e!2592208 () Bool)

(assert (=> b!4175452 (=> (not res!1711455) (not e!2592208))))

(declare-fun contains!9409 (List!45923 Rule!15012) Bool)

(assert (=> b!4175452 (= res!1711455 (contains!9409 rules!3843 rBis!167))))

(declare-fun b!4175453 () Bool)

(declare-fun res!1711447 () Bool)

(assert (=> b!4175453 (=> (not res!1711447) (not e!2592208))))

(declare-fun r!4142 () Rule!15012)

(declare-fun ruleValid!3324 (LexerInterface!7199 Rule!15012) Bool)

(assert (=> b!4175453 (= res!1711447 (ruleValid!3324 thiss!25986 r!4142))))

(declare-fun b!4175454 () Bool)

(declare-fun res!1711454 () Bool)

(assert (=> b!4175454 (=> (not res!1711454) (not e!2592208))))

(assert (=> b!4175454 (= res!1711454 (validRegex!5628 (regex!7606 r!4142)))))

(declare-fun b!4175455 () Bool)

(declare-fun e!2592215 () Bool)

(declare-fun e!2592214 () Bool)

(assert (=> b!4175455 (= e!2592215 e!2592214)))

(declare-fun res!1711456 () Bool)

(assert (=> b!4175455 (=> res!1711456 e!2592214)))

(declare-fun lt!1486811 () Int)

(declare-fun lt!1486809 () Int)

(assert (=> b!4175455 (= res!1711456 (<= lt!1486811 lt!1486809))))

(declare-fun size!33616 (List!45922) Int)

(assert (=> b!4175455 (= lt!1486811 (size!33616 pBis!107))))

(declare-fun res!1711450 () Bool)

(assert (=> start!398110 (=> (not res!1711450) (not e!2592208))))

(get-info :version)

(assert (=> start!398110 (= res!1711450 ((_ is Lexer!7197) thiss!25986))))

(assert (=> start!398110 e!2592208))

(assert (=> start!398110 true))

(assert (=> start!398110 e!2592224))

(declare-fun e!2592207 () Bool)

(assert (=> start!398110 e!2592207))

(declare-fun e!2592211 () Bool)

(assert (=> start!398110 e!2592211))

(declare-fun e!2592217 () Bool)

(assert (=> start!398110 e!2592217))

(declare-fun e!2592219 () Bool)

(assert (=> start!398110 e!2592219))

(declare-fun e!2592222 () Bool)

(assert (=> start!398110 e!2592222))

(declare-fun b!4175456 () Bool)

(declare-fun res!1711453 () Bool)

(assert (=> b!4175456 (=> (not res!1711453) (not e!2592208))))

(declare-fun matchR!6250 (Regex!12511 List!45922) Bool)

(assert (=> b!4175456 (= res!1711453 (matchR!6250 (regex!7606 r!4142) p!2959))))

(declare-fun b!4175457 () Bool)

(declare-fun tp_is_empty!21985 () Bool)

(declare-fun tp!1275969 () Bool)

(assert (=> b!4175457 (= e!2592217 (and tp_is_empty!21985 tp!1275969))))

(declare-fun tp!1275962 () Bool)

(declare-fun e!2592212 () Bool)

(declare-fun e!2592220 () Bool)

(declare-fun b!4175458 () Bool)

(assert (=> b!4175458 (= e!2592220 (and tp!1275962 (inv!60324 (tag!8470 (h!51219 rules!3843))) (inv!60326 (transformation!7606 (h!51219 rules!3843))) e!2592212))))

(declare-fun b!4175459 () Bool)

(declare-fun tp!1275960 () Bool)

(assert (=> b!4175459 (= e!2592222 (and tp_is_empty!21985 tp!1275960))))

(declare-fun b!4175460 () Bool)

(declare-fun tp!1275959 () Bool)

(assert (=> b!4175460 (= e!2592211 (and e!2592220 tp!1275959))))

(declare-fun b!4175461 () Bool)

(assert (=> b!4175461 (= e!2592214 e!2592213)))

(declare-fun res!1711452 () Bool)

(assert (=> b!4175461 (=> res!1711452 e!2592213)))

(declare-fun isEmpty!27090 (Option!9802) Bool)

(assert (=> b!4175461 (= res!1711452 (isEmpty!27090 lt!1486815))))

(declare-fun maxPrefixOneRule!3210 (LexerInterface!7199 Rule!15012 List!45922) Option!9802)

(assert (=> b!4175461 (= lt!1486815 (maxPrefixOneRule!3210 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1486803 () Unit!64863)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2338 (LexerInterface!7199 Rule!15012 List!45923) Unit!64863)

(assert (=> b!4175461 (= lt!1486803 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2338 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4175461 (<= lt!1486811 (size!33616 input!3342))))

(declare-fun lt!1486814 () Unit!64863)

(declare-fun lemmaIsPrefixThenSmallerEqSize!495 (List!45922 List!45922) Unit!64863)

(assert (=> b!4175461 (= lt!1486814 (lemmaIsPrefixThenSmallerEqSize!495 pBis!107 input!3342))))

(assert (=> b!4175462 (= e!2592212 (and tp!1275967 tp!1275966))))

(declare-fun b!4175463 () Bool)

(declare-fun res!1711446 () Bool)

(assert (=> b!4175463 (=> res!1711446 e!2592214)))

(assert (=> b!4175463 (= res!1711446 (not (ruleValid!3324 thiss!25986 rBis!167)))))

(declare-fun tp!1275965 () Bool)

(declare-fun b!4175464 () Bool)

(declare-fun e!2592221 () Bool)

(assert (=> b!4175464 (= e!2592207 (and tp!1275965 (inv!60324 (tag!8470 r!4142)) (inv!60326 (transformation!7606 r!4142)) e!2592221))))

(declare-fun b!4175465 () Bool)

(declare-fun res!1711448 () Bool)

(assert (=> b!4175465 (=> (not res!1711448) (not e!2592208))))

(declare-fun rulesInvariant!6412 (LexerInterface!7199 List!45923) Bool)

(assert (=> b!4175465 (= res!1711448 (rulesInvariant!6412 thiss!25986 rules!3843))))

(declare-fun b!4175466 () Bool)

(declare-fun res!1711458 () Bool)

(assert (=> b!4175466 (=> (not res!1711458) (not e!2592208))))

(assert (=> b!4175466 (= res!1711458 (isPrefix!4463 pBis!107 input!3342))))

(declare-fun b!4175467 () Bool)

(declare-fun res!1711451 () Bool)

(assert (=> b!4175467 (=> (not res!1711451) (not e!2592208))))

(assert (=> b!4175467 (= res!1711451 (contains!9409 rules!3843 r!4142))))

(declare-fun b!4175468 () Bool)

(declare-fun res!1711449 () Bool)

(assert (=> b!4175468 (=> (not res!1711449) (not e!2592208))))

(declare-fun isEmpty!27091 (List!45923) Bool)

(assert (=> b!4175468 (= res!1711449 (not (isEmpty!27091 rules!3843)))))

(declare-fun b!4175469 () Bool)

(assert (=> b!4175469 (= e!2592208 (not e!2592215))))

(declare-fun res!1711457 () Bool)

(assert (=> b!4175469 (=> res!1711457 e!2592215)))

(declare-fun lt!1486805 () Option!9802)

(assert (=> b!4175469 (= res!1711457 (not (= (maxPrefixOneRule!3210 thiss!25986 r!4142 input!3342) lt!1486805)))))

(assert (=> b!4175469 (= lt!1486805 (Some!9801 (tuple2!43639 lt!1486807 lt!1486804)))))

(declare-fun getSuffix!2758 (List!45922 List!45922) List!45922)

(assert (=> b!4175469 (= lt!1486804 (getSuffix!2758 input!3342 p!2959))))

(declare-fun lt!1486801 () TokenValue!7836)

(assert (=> b!4175469 (= lt!1486807 (Token!13927 lt!1486801 r!4142 lt!1486809 p!2959))))

(assert (=> b!4175469 (= lt!1486809 (size!33616 p!2959))))

(declare-fun lt!1486802 () BalanceConc!27228)

(declare-fun apply!10571 (TokenValueInjection!15100 BalanceConc!27228) TokenValue!7836)

(assert (=> b!4175469 (= lt!1486801 (apply!10571 (transformation!7606 r!4142) lt!1486802))))

(assert (=> b!4175469 (isPrefix!4463 input!3342 input!3342)))

(declare-fun lt!1486806 () Unit!64863)

(declare-fun lemmaIsPrefixRefl!2892 (List!45922 List!45922) Unit!64863)

(assert (=> b!4175469 (= lt!1486806 (lemmaIsPrefixRefl!2892 input!3342 input!3342))))

(declare-fun lt!1486810 () Unit!64863)

(declare-fun lemmaSemiInverse!2372 (TokenValueInjection!15100 BalanceConc!27228) Unit!64863)

(assert (=> b!4175469 (= lt!1486810 (lemmaSemiInverse!2372 (transformation!7606 r!4142) lt!1486802))))

(declare-fun seqFromList!5631 (List!45922) BalanceConc!27228)

(assert (=> b!4175469 (= lt!1486802 (seqFromList!5631 p!2959))))

(declare-fun b!4175470 () Bool)

(declare-fun res!1711445 () Bool)

(assert (=> b!4175470 (=> res!1711445 e!2592214)))

(declare-fun maxPrefix!4251 (LexerInterface!7199 List!45923 List!45922) Option!9802)

(assert (=> b!4175470 (= res!1711445 (not (= (maxPrefix!4251 thiss!25986 rules!3843 input!3342) lt!1486805)))))

(assert (=> b!4175471 (= e!2592216 (and tp!1275961 tp!1275963))))

(declare-fun b!4175472 () Bool)

(declare-fun tp!1275958 () Bool)

(assert (=> b!4175472 (= e!2592219 (and tp_is_empty!21985 tp!1275958))))

(declare-fun b!4175473 () Bool)

(declare-fun res!1711459 () Bool)

(assert (=> b!4175473 (=> (not res!1711459) (not e!2592208))))

(assert (=> b!4175473 (= res!1711459 (isPrefix!4463 p!2959 input!3342))))

(assert (=> b!4175474 (= e!2592221 (and tp!1275970 tp!1275968))))

(assert (= (and start!398110 res!1711450) b!4175473))

(assert (= (and b!4175473 res!1711459) b!4175466))

(assert (= (and b!4175466 res!1711458) b!4175468))

(assert (= (and b!4175468 res!1711449) b!4175465))

(assert (= (and b!4175465 res!1711448) b!4175467))

(assert (= (and b!4175467 res!1711451) b!4175452))

(assert (= (and b!4175452 res!1711455) b!4175454))

(assert (= (and b!4175454 res!1711454) b!4175456))

(assert (= (and b!4175456 res!1711453) b!4175453))

(assert (= (and b!4175453 res!1711447) b!4175469))

(assert (= (and b!4175469 (not res!1711457)) b!4175455))

(assert (= (and b!4175455 (not res!1711456)) b!4175463))

(assert (= (and b!4175463 (not res!1711446)) b!4175470))

(assert (= (and b!4175470 (not res!1711445)) b!4175461))

(assert (= (and b!4175461 (not res!1711452)) b!4175451))

(assert (= (and b!4175451 (not res!1711460)) b!4175450))

(assert (= b!4175449 b!4175471))

(assert (= start!398110 b!4175449))

(assert (= b!4175464 b!4175474))

(assert (= start!398110 b!4175464))

(assert (= b!4175458 b!4175462))

(assert (= b!4175460 b!4175458))

(assert (= (and start!398110 ((_ is Cons!45799) rules!3843)) b!4175460))

(assert (= (and start!398110 ((_ is Cons!45798) input!3342)) b!4175457))

(assert (= (and start!398110 ((_ is Cons!45798) pBis!107)) b!4175472))

(assert (= (and start!398110 ((_ is Cons!45798) p!2959)) b!4175459))

(declare-fun m!4765173 () Bool)

(assert (=> b!4175461 m!4765173))

(declare-fun m!4765175 () Bool)

(assert (=> b!4175461 m!4765175))

(declare-fun m!4765177 () Bool)

(assert (=> b!4175461 m!4765177))

(declare-fun m!4765179 () Bool)

(assert (=> b!4175461 m!4765179))

(declare-fun m!4765181 () Bool)

(assert (=> b!4175461 m!4765181))

(declare-fun m!4765183 () Bool)

(assert (=> b!4175451 m!4765183))

(declare-fun m!4765185 () Bool)

(assert (=> b!4175451 m!4765185))

(declare-fun m!4765187 () Bool)

(assert (=> b!4175451 m!4765187))

(declare-fun m!4765189 () Bool)

(assert (=> b!4175451 m!4765189))

(declare-fun m!4765191 () Bool)

(assert (=> b!4175451 m!4765191))

(assert (=> b!4175451 m!4765183))

(assert (=> b!4175451 m!4765187))

(declare-fun m!4765193 () Bool)

(assert (=> b!4175451 m!4765193))

(declare-fun m!4765195 () Bool)

(assert (=> b!4175458 m!4765195))

(declare-fun m!4765197 () Bool)

(assert (=> b!4175458 m!4765197))

(declare-fun m!4765199 () Bool)

(assert (=> b!4175466 m!4765199))

(declare-fun m!4765201 () Bool)

(assert (=> b!4175455 m!4765201))

(declare-fun m!4765203 () Bool)

(assert (=> b!4175454 m!4765203))

(declare-fun m!4765205 () Bool)

(assert (=> b!4175473 m!4765205))

(declare-fun m!4765207 () Bool)

(assert (=> b!4175469 m!4765207))

(declare-fun m!4765209 () Bool)

(assert (=> b!4175469 m!4765209))

(declare-fun m!4765211 () Bool)

(assert (=> b!4175469 m!4765211))

(declare-fun m!4765213 () Bool)

(assert (=> b!4175469 m!4765213))

(declare-fun m!4765215 () Bool)

(assert (=> b!4175469 m!4765215))

(declare-fun m!4765217 () Bool)

(assert (=> b!4175469 m!4765217))

(declare-fun m!4765219 () Bool)

(assert (=> b!4175469 m!4765219))

(declare-fun m!4765221 () Bool)

(assert (=> b!4175469 m!4765221))

(declare-fun m!4765223 () Bool)

(assert (=> b!4175452 m!4765223))

(declare-fun m!4765225 () Bool)

(assert (=> b!4175464 m!4765225))

(declare-fun m!4765227 () Bool)

(assert (=> b!4175464 m!4765227))

(declare-fun m!4765229 () Bool)

(assert (=> b!4175470 m!4765229))

(declare-fun m!4765231 () Bool)

(assert (=> b!4175467 m!4765231))

(declare-fun m!4765233 () Bool)

(assert (=> b!4175463 m!4765233))

(declare-fun m!4765235 () Bool)

(assert (=> b!4175450 m!4765235))

(declare-fun m!4765237 () Bool)

(assert (=> b!4175450 m!4765237))

(declare-fun m!4765239 () Bool)

(assert (=> b!4175449 m!4765239))

(declare-fun m!4765241 () Bool)

(assert (=> b!4175449 m!4765241))

(declare-fun m!4765243 () Bool)

(assert (=> b!4175468 m!4765243))

(declare-fun m!4765245 () Bool)

(assert (=> b!4175465 m!4765245))

(declare-fun m!4765247 () Bool)

(assert (=> b!4175456 m!4765247))

(declare-fun m!4765249 () Bool)

(assert (=> b!4175453 m!4765249))

(check-sat (not b!4175456) b_and!326311 (not b!4175473) (not b!4175465) tp_is_empty!21985 b_and!326313 (not b!4175460) (not b!4175470) (not b!4175449) (not b!4175453) (not b!4175461) (not b!4175452) (not b!4175459) (not b!4175466) (not b!4175450) (not b_next!121783) b_and!326319 (not b_next!121793) (not b!4175463) (not b!4175464) b_and!326315 (not b!4175472) b_and!326309 (not b_next!121785) (not b!4175451) (not b_next!121789) (not b!4175458) (not b!4175455) (not b!4175469) (not b_next!121791) (not b!4175457) (not b!4175468) (not b_next!121787) b_and!326317 (not b!4175467) (not b!4175454))
(check-sat (not b_next!121793) (not b_next!121785) b_and!326311 (not b_next!121789) b_and!326313 (not b_next!121791) (not b_next!121787) b_and!326317 (not b_next!121783) b_and!326319 b_and!326315 b_and!326309)
