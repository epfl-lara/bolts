; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382308 () Bool)

(assert start!382308)

(declare-fun b!4054270 () Bool)

(declare-fun b_free!112825 () Bool)

(declare-fun b_next!113529 () Bool)

(assert (=> b!4054270 (= b_free!112825 (not b_next!113529))))

(declare-fun tp!1229084 () Bool)

(declare-fun b_and!311779 () Bool)

(assert (=> b!4054270 (= tp!1229084 b_and!311779)))

(declare-fun b_free!112827 () Bool)

(declare-fun b_next!113531 () Bool)

(assert (=> b!4054270 (= b_free!112827 (not b_next!113531))))

(declare-fun tp!1229079 () Bool)

(declare-fun b_and!311781 () Bool)

(assert (=> b!4054270 (= tp!1229079 b_and!311781)))

(declare-fun b!4054266 () Bool)

(declare-fun b_free!112829 () Bool)

(declare-fun b_next!113533 () Bool)

(assert (=> b!4054266 (= b_free!112829 (not b_next!113533))))

(declare-fun tp!1229076 () Bool)

(declare-fun b_and!311783 () Bool)

(assert (=> b!4054266 (= tp!1229076 b_and!311783)))

(declare-fun b_free!112831 () Bool)

(declare-fun b_next!113535 () Bool)

(assert (=> b!4054266 (= b_free!112831 (not b_next!113535))))

(declare-fun tp!1229078 () Bool)

(declare-fun b_and!311785 () Bool)

(assert (=> b!4054266 (= tp!1229078 b_and!311785)))

(declare-fun e!2515743 () Bool)

(assert (=> b!4054266 (= e!2515743 (and tp!1229076 tp!1229078))))

(declare-fun b!4054267 () Bool)

(declare-fun res!1652723 () Bool)

(declare-fun e!2515756 () Bool)

(assert (=> b!4054267 (=> (not res!1652723) (not e!2515756))))

(declare-datatypes ((C!23896 0))(
  ( (C!23897 (val!14042 Int)) )
))
(declare-datatypes ((List!43461 0))(
  ( (Nil!43337) (Cons!43337 (h!48757 C!23896) (t!336170 List!43461)) )
))
(declare-datatypes ((IArray!26327 0))(
  ( (IArray!26328 (innerList!13221 List!43461)) )
))
(declare-datatypes ((Conc!13161 0))(
  ( (Node!13161 (left!32626 Conc!13161) (right!32956 Conc!13161) (csize!26552 Int) (cheight!13372 Int)) (Leaf!20343 (xs!16467 IArray!26327) (csize!26553 Int)) (Empty!13161) )
))
(declare-datatypes ((BalanceConc!25916 0))(
  ( (BalanceConc!25917 (c!700300 Conc!13161)) )
))
(declare-datatypes ((List!43462 0))(
  ( (Nil!43338) (Cons!43338 (h!48758 (_ BitVec 16)) (t!336171 List!43462)) )
))
(declare-datatypes ((TokenValue!7180 0))(
  ( (FloatLiteralValue!14360 (text!50705 List!43462)) (TokenValueExt!7179 (__x!26577 Int)) (Broken!35900 (value!218683 List!43462)) (Object!7303) (End!7180) (Def!7180) (Underscore!7180) (Match!7180) (Else!7180) (Error!7180) (Case!7180) (If!7180) (Extends!7180) (Abstract!7180) (Class!7180) (Val!7180) (DelimiterValue!14360 (del!7240 List!43462)) (KeywordValue!7186 (value!218684 List!43462)) (CommentValue!14360 (value!218685 List!43462)) (WhitespaceValue!14360 (value!218686 List!43462)) (IndentationValue!7180 (value!218687 List!43462)) (String!49617) (Int32!7180) (Broken!35901 (value!218688 List!43462)) (Boolean!7181) (Unit!62662) (OperatorValue!7183 (op!7240 List!43462)) (IdentifierValue!14360 (value!218689 List!43462)) (IdentifierValue!14361 (value!218690 List!43462)) (WhitespaceValue!14361 (value!218691 List!43462)) (True!14360) (False!14360) (Broken!35902 (value!218692 List!43462)) (Broken!35903 (value!218693 List!43462)) (True!14361) (RightBrace!7180) (RightBracket!7180) (Colon!7180) (Null!7180) (Comma!7180) (LeftBracket!7180) (False!14361) (LeftBrace!7180) (ImaginaryLiteralValue!7180 (text!50706 List!43462)) (StringLiteralValue!21540 (value!218694 List!43462)) (EOFValue!7180 (value!218695 List!43462)) (IdentValue!7180 (value!218696 List!43462)) (DelimiterValue!14361 (value!218697 List!43462)) (DedentValue!7180 (value!218698 List!43462)) (NewLineValue!7180 (value!218699 List!43462)) (IntegerValue!21540 (value!218700 (_ BitVec 32)) (text!50707 List!43462)) (IntegerValue!21541 (value!218701 Int) (text!50708 List!43462)) (Times!7180) (Or!7180) (Equal!7180) (Minus!7180) (Broken!35904 (value!218702 List!43462)) (And!7180) (Div!7180) (LessEqual!7180) (Mod!7180) (Concat!19035) (Not!7180) (Plus!7180) (SpaceValue!7180 (value!218703 List!43462)) (IntegerValue!21542 (value!218704 Int) (text!50709 List!43462)) (StringLiteralValue!21541 (text!50710 List!43462)) (FloatLiteralValue!14361 (text!50711 List!43462)) (BytesLiteralValue!7180 (value!218705 List!43462)) (CommentValue!14361 (value!218706 List!43462)) (StringLiteralValue!21542 (value!218707 List!43462)) (ErrorTokenValue!7180 (msg!7241 List!43462)) )
))
(declare-datatypes ((Regex!11855 0))(
  ( (ElementMatch!11855 (c!700301 C!23896)) (Concat!19036 (regOne!24222 Regex!11855) (regTwo!24222 Regex!11855)) (EmptyExpr!11855) (Star!11855 (reg!12184 Regex!11855)) (EmptyLang!11855) (Union!11855 (regOne!24223 Regex!11855) (regTwo!24223 Regex!11855)) )
))
(declare-datatypes ((String!49618 0))(
  ( (String!49619 (value!218708 String)) )
))
(declare-datatypes ((TokenValueInjection!13788 0))(
  ( (TokenValueInjection!13789 (toValue!9506 Int) (toChars!9365 Int)) )
))
(declare-datatypes ((Rule!13700 0))(
  ( (Rule!13701 (regex!6950 Regex!11855) (tag!7810 String!49618) (isSeparator!6950 Bool) (transformation!6950 TokenValueInjection!13788)) )
))
(declare-datatypes ((List!43463 0))(
  ( (Nil!43339) (Cons!43339 (h!48759 Rule!13700) (t!336172 List!43463)) )
))
(declare-fun rules!2999 () List!43463)

(declare-fun isEmpty!25859 (List!43463) Bool)

(assert (=> b!4054267 (= res!1652723 (not (isEmpty!25859 rules!2999)))))

(declare-fun b!4054268 () Bool)

(declare-datatypes ((Unit!62663 0))(
  ( (Unit!62664) )
))
(declare-fun e!2515749 () Unit!62663)

(declare-fun Unit!62665 () Unit!62663)

(assert (=> b!4054268 (= e!2515749 Unit!62665)))

(declare-datatypes ((Token!13038 0))(
  ( (Token!13039 (value!218709 TokenValue!7180) (rule!10034 Rule!13700) (size!32401 Int) (originalCharacters!7550 List!43461)) )
))
(declare-fun token!484 () Token!13038)

(declare-datatypes ((tuple2!42402 0))(
  ( (tuple2!42403 (_1!24335 Token!13038) (_2!24335 List!43461)) )
))
(declare-datatypes ((Option!9364 0))(
  ( (None!9363) (Some!9363 (v!39775 tuple2!42402)) )
))
(declare-fun lt!1446515 () Option!9364)

(declare-fun lt!1446473 () List!43461)

(declare-fun lt!1446498 () Unit!62663)

(declare-fun lt!1446519 () List!43461)

(declare-datatypes ((LexerInterface!6539 0))(
  ( (LexerInterfaceExt!6536 (__x!26578 Int)) (Lexer!6537) )
))
(declare-fun thiss!21717 () LexerInterface!6539)

(declare-fun lt!1446487 () List!43461)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!476 (LexerInterface!6539 List!43463 Rule!13700 List!43461 List!43461 List!43461 Rule!13700) Unit!62663)

(assert (=> b!4054268 (= lt!1446498 (lemmaMaxPrefixOutputsMaxPrefix!476 thiss!21717 rules!2999 (rule!10034 token!484) lt!1446519 lt!1446473 lt!1446487 (rule!10034 (_1!24335 (v!39775 lt!1446515)))))))

(declare-fun res!1652719 () Bool)

(declare-fun matchR!5808 (Regex!11855 List!43461) Bool)

(assert (=> b!4054268 (= res!1652719 (not (matchR!5808 (regex!6950 (rule!10034 (_1!24335 (v!39775 lt!1446515)))) lt!1446487)))))

(declare-fun e!2515765 () Bool)

(assert (=> b!4054268 (=> (not res!1652719) (not e!2515765))))

(assert (=> b!4054268 e!2515765))

(declare-fun b!4054269 () Bool)

(declare-fun e!2515768 () Bool)

(declare-fun e!2515760 () Bool)

(assert (=> b!4054269 (= e!2515768 e!2515760)))

(declare-fun res!1652715 () Bool)

(assert (=> b!4054269 (=> res!1652715 e!2515760)))

(assert (=> b!4054269 (= res!1652715 (not (matchR!5808 (regex!6950 (rule!10034 token!484)) lt!1446519)))))

(declare-fun lt!1446499 () List!43461)

(declare-fun isPrefix!4037 (List!43461 List!43461) Bool)

(assert (=> b!4054269 (isPrefix!4037 lt!1446519 lt!1446499)))

(declare-fun prefix!494 () List!43461)

(declare-fun newSuffix!27 () List!43461)

(declare-fun lt!1446518 () Unit!62663)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!830 (List!43461 List!43461 List!43461) Unit!62663)

(assert (=> b!4054269 (= lt!1446518 (lemmaPrefixStaysPrefixWhenAddingToSuffix!830 lt!1446519 prefix!494 newSuffix!27))))

(declare-fun lt!1446490 () Unit!62663)

(declare-fun suffix!1299 () List!43461)

(assert (=> b!4054269 (= lt!1446490 (lemmaPrefixStaysPrefixWhenAddingToSuffix!830 lt!1446519 prefix!494 suffix!1299))))

(declare-fun e!2515733 () Bool)

(assert (=> b!4054270 (= e!2515733 (and tp!1229084 tp!1229079))))

(declare-fun tp!1229082 () Bool)

(declare-fun e!2515741 () Bool)

(declare-fun b!4054271 () Bool)

(declare-fun inv!57931 (String!49618) Bool)

(declare-fun inv!57934 (TokenValueInjection!13788) Bool)

(assert (=> b!4054271 (= e!2515741 (and tp!1229082 (inv!57931 (tag!7810 (rule!10034 token!484))) (inv!57934 (transformation!6950 (rule!10034 token!484))) e!2515743))))

(declare-fun res!1652724 () Bool)

(assert (=> start!382308 (=> (not res!1652724) (not e!2515756))))

(get-info :version)

(assert (=> start!382308 (= res!1652724 ((_ is Lexer!6537) thiss!21717))))

(assert (=> start!382308 e!2515756))

(declare-fun e!2515746 () Bool)

(assert (=> start!382308 e!2515746))

(declare-fun e!2515742 () Bool)

(declare-fun inv!57935 (Token!13038) Bool)

(assert (=> start!382308 (and (inv!57935 token!484) e!2515742)))

(declare-fun e!2515759 () Bool)

(assert (=> start!382308 e!2515759))

(declare-fun e!2515747 () Bool)

(assert (=> start!382308 e!2515747))

(declare-fun e!2515755 () Bool)

(assert (=> start!382308 e!2515755))

(assert (=> start!382308 true))

(declare-fun e!2515734 () Bool)

(assert (=> start!382308 e!2515734))

(declare-fun e!2515748 () Bool)

(assert (=> start!382308 e!2515748))

(declare-fun b!4054272 () Bool)

(declare-fun tp_is_empty!20681 () Bool)

(declare-fun tp!1229077 () Bool)

(assert (=> b!4054272 (= e!2515759 (and tp_is_empty!20681 tp!1229077))))

(declare-fun b!4054273 () Bool)

(declare-fun e!2515766 () Bool)

(declare-fun e!2515758 () Bool)

(assert (=> b!4054273 (= e!2515766 e!2515758)))

(declare-fun res!1652722 () Bool)

(assert (=> b!4054273 (=> res!1652722 e!2515758)))

(declare-fun lt!1446504 () List!43461)

(declare-fun lt!1446484 () List!43461)

(assert (=> b!4054273 (= res!1652722 (or (not (= lt!1446473 lt!1446504)) (not (= lt!1446473 lt!1446484))))))

(assert (=> b!4054273 (= lt!1446504 lt!1446484)))

(declare-fun lt!1446492 () List!43461)

(declare-fun ++!11352 (List!43461 List!43461) List!43461)

(assert (=> b!4054273 (= lt!1446484 (++!11352 lt!1446519 lt!1446492))))

(declare-fun lt!1446526 () List!43461)

(assert (=> b!4054273 (= lt!1446504 (++!11352 lt!1446526 suffix!1299))))

(declare-fun lt!1446488 () List!43461)

(assert (=> b!4054273 (= lt!1446492 (++!11352 lt!1446488 suffix!1299))))

(declare-fun lt!1446493 () Unit!62663)

(declare-fun lemmaConcatAssociativity!2654 (List!43461 List!43461 List!43461) Unit!62663)

(assert (=> b!4054273 (= lt!1446493 (lemmaConcatAssociativity!2654 lt!1446519 lt!1446488 suffix!1299))))

(declare-fun b!4054274 () Bool)

(declare-fun e!2515762 () Bool)

(assert (=> b!4054274 (= e!2515762 e!2515766)))

(declare-fun res!1652714 () Bool)

(assert (=> b!4054274 (=> res!1652714 e!2515766)))

(assert (=> b!4054274 (= res!1652714 (not (= lt!1446526 prefix!494)))))

(assert (=> b!4054274 (= lt!1446526 (++!11352 lt!1446519 lt!1446488))))

(declare-fun getSuffix!2454 (List!43461 List!43461) List!43461)

(assert (=> b!4054274 (= lt!1446488 (getSuffix!2454 prefix!494 lt!1446519))))

(assert (=> b!4054274 (isPrefix!4037 lt!1446519 prefix!494)))

(declare-fun lt!1446502 () Unit!62663)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!601 (List!43461 List!43461 List!43461) Unit!62663)

(assert (=> b!4054274 (= lt!1446502 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!601 prefix!494 lt!1446519 lt!1446473))))

(declare-fun b!4054275 () Bool)

(declare-fun res!1652712 () Bool)

(declare-fun e!2515739 () Bool)

(assert (=> b!4054275 (=> res!1652712 e!2515739)))

(declare-fun lt!1446522 () List!43461)

(assert (=> b!4054275 (= res!1652712 (not (= lt!1446522 lt!1446499)))))

(declare-fun b!4054276 () Bool)

(declare-fun Unit!62666 () Unit!62663)

(assert (=> b!4054276 (= e!2515749 Unit!62666)))

(declare-fun b!4054277 () Bool)

(declare-fun lt!1446495 () Int)

(declare-fun e!2515757 () Bool)

(assert (=> b!4054277 (= e!2515757 (and (= (size!32401 token!484) lt!1446495) (= (originalCharacters!7550 token!484) lt!1446519)))))

(declare-fun b!4054278 () Bool)

(declare-fun e!2515754 () Bool)

(assert (=> b!4054278 (= e!2515754 e!2515739)))

(declare-fun res!1652732 () Bool)

(assert (=> b!4054278 (=> res!1652732 e!2515739)))

(assert (=> b!4054278 (= res!1652732 (not (isPrefix!4037 lt!1446487 lt!1446473)))))

(declare-fun lt!1446479 () List!43461)

(assert (=> b!4054278 (isPrefix!4037 lt!1446487 lt!1446479)))

(declare-fun lt!1446527 () List!43461)

(declare-fun lt!1446483 () Unit!62663)

(assert (=> b!4054278 (= lt!1446483 (lemmaPrefixStaysPrefixWhenAddingToSuffix!830 lt!1446487 lt!1446499 lt!1446527))))

(declare-fun b!4054279 () Bool)

(declare-fun e!2515745 () Bool)

(declare-fun e!2515767 () Bool)

(assert (=> b!4054279 (= e!2515745 e!2515767)))

(declare-fun res!1652721 () Bool)

(assert (=> b!4054279 (=> res!1652721 e!2515767)))

(assert (=> b!4054279 (= res!1652721 (not ((_ is Some!9363) lt!1446515)))))

(declare-fun maxPrefix!3837 (LexerInterface!6539 List!43463 List!43461) Option!9364)

(assert (=> b!4054279 (= lt!1446515 (maxPrefix!3837 thiss!21717 rules!2999 lt!1446499))))

(declare-fun lt!1446514 () List!43461)

(declare-fun lt!1446476 () Token!13038)

(declare-fun lt!1446469 () tuple2!42402)

(declare-fun suffixResult!105 () List!43461)

(assert (=> b!4054279 (and (= suffixResult!105 lt!1446514) (= lt!1446469 (tuple2!42403 lt!1446476 lt!1446514)))))

(declare-fun lt!1446510 () Unit!62663)

(declare-fun lemmaSamePrefixThenSameSuffix!2198 (List!43461 List!43461 List!43461 List!43461 List!43461) Unit!62663)

(assert (=> b!4054279 (= lt!1446510 (lemmaSamePrefixThenSameSuffix!2198 lt!1446519 suffixResult!105 lt!1446519 lt!1446514 lt!1446473))))

(declare-fun lt!1446491 () List!43461)

(assert (=> b!4054279 (isPrefix!4037 lt!1446519 lt!1446491)))

(declare-fun lt!1446486 () Unit!62663)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2872 (List!43461 List!43461) Unit!62663)

(assert (=> b!4054279 (= lt!1446486 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446519 lt!1446514))))

(declare-fun b!4054280 () Bool)

(declare-fun res!1652735 () Bool)

(assert (=> b!4054280 (=> (not res!1652735) (not e!2515756))))

(declare-fun rulesInvariant!5882 (LexerInterface!6539 List!43463) Bool)

(assert (=> b!4054280 (= res!1652735 (rulesInvariant!5882 thiss!21717 rules!2999))))

(declare-fun b!4054281 () Bool)

(declare-fun e!2515737 () Bool)

(declare-fun e!2515751 () Bool)

(assert (=> b!4054281 (= e!2515737 (not e!2515751))))

(declare-fun res!1652716 () Bool)

(assert (=> b!4054281 (=> res!1652716 e!2515751)))

(declare-fun lt!1446470 () List!43461)

(assert (=> b!4054281 (= res!1652716 (not (= lt!1446470 lt!1446473)))))

(assert (=> b!4054281 (= lt!1446470 (++!11352 lt!1446519 suffixResult!105))))

(declare-fun lt!1446507 () Unit!62663)

(declare-fun lemmaInv!1159 (TokenValueInjection!13788) Unit!62663)

(assert (=> b!4054281 (= lt!1446507 (lemmaInv!1159 (transformation!6950 (rule!10034 token!484))))))

(declare-fun ruleValid!2880 (LexerInterface!6539 Rule!13700) Bool)

(assert (=> b!4054281 (ruleValid!2880 thiss!21717 (rule!10034 token!484))))

(declare-fun lt!1446511 () Unit!62663)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1950 (LexerInterface!6539 Rule!13700 List!43463) Unit!62663)

(assert (=> b!4054281 (= lt!1446511 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1950 thiss!21717 (rule!10034 token!484) rules!2999))))

(declare-fun b!4054282 () Bool)

(declare-fun tp!1229085 () Bool)

(assert (=> b!4054282 (= e!2515747 (and tp_is_empty!20681 tp!1229085))))

(declare-fun b!4054283 () Bool)

(assert (=> b!4054283 (= e!2515751 e!2515762)))

(declare-fun res!1652730 () Bool)

(assert (=> b!4054283 (=> res!1652730 e!2515762)))

(assert (=> b!4054283 (= res!1652730 (not (isPrefix!4037 lt!1446519 lt!1446473)))))

(assert (=> b!4054283 (isPrefix!4037 prefix!494 lt!1446473)))

(declare-fun lt!1446520 () Unit!62663)

(assert (=> b!4054283 (= lt!1446520 (lemmaConcatTwoListThenFirstIsPrefix!2872 prefix!494 suffix!1299))))

(assert (=> b!4054283 (isPrefix!4037 lt!1446519 lt!1446470)))

(declare-fun lt!1446506 () Unit!62663)

(assert (=> b!4054283 (= lt!1446506 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446519 suffixResult!105))))

(declare-fun b!4054284 () Bool)

(declare-fun e!2515744 () Bool)

(assert (=> b!4054284 (= e!2515756 e!2515744)))

(declare-fun res!1652725 () Bool)

(assert (=> b!4054284 (=> (not res!1652725) (not e!2515744))))

(declare-fun lt!1446496 () Int)

(assert (=> b!4054284 (= res!1652725 (>= lt!1446496 lt!1446495))))

(declare-fun size!32402 (List!43461) Int)

(assert (=> b!4054284 (= lt!1446495 (size!32402 lt!1446519))))

(assert (=> b!4054284 (= lt!1446496 (size!32402 prefix!494))))

(declare-fun list!16148 (BalanceConc!25916) List!43461)

(declare-fun charsOf!4766 (Token!13038) BalanceConc!25916)

(assert (=> b!4054284 (= lt!1446519 (list!16148 (charsOf!4766 token!484)))))

(declare-fun b!4054285 () Bool)

(declare-fun res!1652711 () Bool)

(assert (=> b!4054285 (=> (not res!1652711) (not e!2515756))))

(assert (=> b!4054285 (= res!1652711 (>= (size!32402 suffix!1299) (size!32402 newSuffix!27)))))

(declare-fun b!4054286 () Bool)

(declare-fun tp!1229086 () Bool)

(assert (=> b!4054286 (= e!2515755 (and tp_is_empty!20681 tp!1229086))))

(declare-fun b!4054287 () Bool)

(assert (=> b!4054287 (= e!2515758 e!2515768)))

(declare-fun res!1652717 () Bool)

(assert (=> b!4054287 (=> res!1652717 e!2515768)))

(declare-fun lt!1446497 () Option!9364)

(declare-fun lt!1446482 () Option!9364)

(assert (=> b!4054287 (= res!1652717 (not (= lt!1446497 lt!1446482)))))

(assert (=> b!4054287 (= lt!1446497 (Some!9363 (tuple2!42403 lt!1446476 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2849 (LexerInterface!6539 Rule!13700 List!43461) Option!9364)

(assert (=> b!4054287 (= lt!1446497 (maxPrefixOneRule!2849 thiss!21717 (rule!10034 token!484) lt!1446473))))

(declare-fun lt!1446489 () TokenValue!7180)

(assert (=> b!4054287 (= lt!1446476 (Token!13039 lt!1446489 (rule!10034 token!484) lt!1446495 lt!1446519))))

(declare-fun apply!10139 (TokenValueInjection!13788 BalanceConc!25916) TokenValue!7180)

(declare-fun seqFromList!5167 (List!43461) BalanceConc!25916)

(assert (=> b!4054287 (= lt!1446489 (apply!10139 (transformation!6950 (rule!10034 token!484)) (seqFromList!5167 lt!1446519)))))

(declare-fun lt!1446521 () Unit!62663)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1655 (LexerInterface!6539 List!43463 List!43461 List!43461 List!43461 Rule!13700) Unit!62663)

(assert (=> b!4054287 (= lt!1446521 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1655 thiss!21717 rules!2999 lt!1446519 lt!1446473 suffixResult!105 (rule!10034 token!484)))))

(assert (=> b!4054287 (= lt!1446492 suffixResult!105)))

(declare-fun lt!1446512 () Unit!62663)

(assert (=> b!4054287 (= lt!1446512 (lemmaSamePrefixThenSameSuffix!2198 lt!1446519 lt!1446492 lt!1446519 suffixResult!105 lt!1446473))))

(assert (=> b!4054287 (isPrefix!4037 lt!1446519 lt!1446484)))

(declare-fun lt!1446509 () Unit!62663)

(assert (=> b!4054287 (= lt!1446509 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446519 lt!1446492))))

(declare-fun b!4054288 () Bool)

(declare-fun res!1652733 () Bool)

(assert (=> b!4054288 (=> (not res!1652733) (not e!2515756))))

(assert (=> b!4054288 (= res!1652733 (isPrefix!4037 newSuffix!27 suffix!1299))))

(declare-fun b!4054289 () Bool)

(declare-fun tp!1229081 () Bool)

(assert (=> b!4054289 (= e!2515746 (and tp_is_empty!20681 tp!1229081))))

(declare-fun b!4054290 () Bool)

(assert (=> b!4054290 (= e!2515760 e!2515745)))

(declare-fun res!1652726 () Bool)

(assert (=> b!4054290 (=> res!1652726 e!2515745)))

(assert (=> b!4054290 (= res!1652726 (not (= lt!1446491 lt!1446473)))))

(assert (=> b!4054290 (= lt!1446491 (++!11352 lt!1446519 lt!1446514))))

(assert (=> b!4054290 (= lt!1446514 (getSuffix!2454 lt!1446473 lt!1446519))))

(assert (=> b!4054290 e!2515757))

(declare-fun res!1652727 () Bool)

(assert (=> b!4054290 (=> (not res!1652727) (not e!2515757))))

(assert (=> b!4054290 (= res!1652727 (isPrefix!4037 lt!1446473 lt!1446473))))

(declare-fun lt!1446471 () Unit!62663)

(declare-fun lemmaIsPrefixRefl!2604 (List!43461 List!43461) Unit!62663)

(assert (=> b!4054290 (= lt!1446471 (lemmaIsPrefixRefl!2604 lt!1446473 lt!1446473))))

(declare-fun b!4054291 () Bool)

(declare-fun e!2515736 () Bool)

(declare-fun lt!1446481 () Int)

(assert (=> b!4054291 (= e!2515736 (= lt!1446481 lt!1446495))))

(declare-fun b!4054292 () Bool)

(declare-fun e!2515763 () Bool)

(assert (=> b!4054292 (= e!2515763 e!2515754)))

(declare-fun res!1652718 () Bool)

(assert (=> b!4054292 (=> res!1652718 e!2515754)))

(assert (=> b!4054292 (= res!1652718 (not (= lt!1446479 lt!1446473)))))

(declare-fun lt!1446475 () List!43461)

(assert (=> b!4054292 (= lt!1446479 (++!11352 prefix!494 lt!1446475))))

(assert (=> b!4054292 (= lt!1446479 (++!11352 lt!1446499 lt!1446527))))

(declare-fun lt!1446517 () Unit!62663)

(assert (=> b!4054292 (= lt!1446517 (lemmaConcatAssociativity!2654 prefix!494 newSuffix!27 lt!1446527))))

(declare-fun b!4054293 () Bool)

(declare-fun e!2515761 () Bool)

(declare-fun tp!1229075 () Bool)

(assert (=> b!4054293 (= e!2515734 (and e!2515761 tp!1229075))))

(declare-fun b!4054294 () Bool)

(declare-fun res!1652709 () Bool)

(assert (=> b!4054294 (=> (not res!1652709) (not e!2515757))))

(assert (=> b!4054294 (= res!1652709 (= (size!32401 token!484) (size!32402 (originalCharacters!7550 token!484))))))

(declare-fun b!4054295 () Bool)

(declare-fun res!1652731 () Bool)

(assert (=> b!4054295 (=> res!1652731 e!2515736)))

(assert (=> b!4054295 (= res!1652731 (not (isPrefix!4037 lt!1446487 lt!1446499)))))

(declare-fun b!4054296 () Bool)

(declare-fun e!2515764 () Bool)

(assert (=> b!4054296 (= e!2515744 e!2515764)))

(declare-fun res!1652720 () Bool)

(assert (=> b!4054296 (=> (not res!1652720) (not e!2515764))))

(declare-fun lt!1446472 () List!43461)

(assert (=> b!4054296 (= res!1652720 (= lt!1446472 lt!1446499))))

(assert (=> b!4054296 (= lt!1446499 (++!11352 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43461)

(assert (=> b!4054296 (= lt!1446472 (++!11352 lt!1446519 newSuffixResult!27))))

(declare-fun b!4054297 () Bool)

(declare-fun e!2515738 () Bool)

(assert (=> b!4054297 (= e!2515767 e!2515738)))

(declare-fun res!1652728 () Bool)

(assert (=> b!4054297 (=> res!1652728 e!2515738)))

(declare-fun lt!1446480 () Option!9364)

(assert (=> b!4054297 (= res!1652728 (not (= lt!1446480 (Some!9363 (v!39775 lt!1446515)))))))

(assert (=> b!4054297 (isPrefix!4037 lt!1446487 (++!11352 lt!1446487 newSuffixResult!27))))

(declare-fun lt!1446525 () Unit!62663)

(assert (=> b!4054297 (= lt!1446525 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446487 newSuffixResult!27))))

(assert (=> b!4054297 (isPrefix!4037 lt!1446487 lt!1446522)))

(assert (=> b!4054297 (= lt!1446522 (++!11352 lt!1446487 (_2!24335 (v!39775 lt!1446515))))))

(declare-fun lt!1446477 () Unit!62663)

(assert (=> b!4054297 (= lt!1446477 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446487 (_2!24335 (v!39775 lt!1446515))))))

(declare-fun lt!1446500 () TokenValue!7180)

(assert (=> b!4054297 (= lt!1446480 (Some!9363 (tuple2!42403 (Token!13039 lt!1446500 (rule!10034 (_1!24335 (v!39775 lt!1446515))) lt!1446481 lt!1446487) (_2!24335 (v!39775 lt!1446515)))))))

(assert (=> b!4054297 (= lt!1446480 (maxPrefixOneRule!2849 thiss!21717 (rule!10034 (_1!24335 (v!39775 lt!1446515))) lt!1446499))))

(assert (=> b!4054297 (= lt!1446481 (size!32402 lt!1446487))))

(assert (=> b!4054297 (= lt!1446500 (apply!10139 (transformation!6950 (rule!10034 (_1!24335 (v!39775 lt!1446515)))) (seqFromList!5167 lt!1446487)))))

(declare-fun lt!1446508 () Unit!62663)

(assert (=> b!4054297 (= lt!1446508 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1655 thiss!21717 rules!2999 lt!1446487 lt!1446499 (_2!24335 (v!39775 lt!1446515)) (rule!10034 (_1!24335 (v!39775 lt!1446515)))))))

(assert (=> b!4054297 (= lt!1446487 (list!16148 (charsOf!4766 (_1!24335 (v!39775 lt!1446515)))))))

(declare-fun lt!1446494 () Unit!62663)

(assert (=> b!4054297 (= lt!1446494 (lemmaInv!1159 (transformation!6950 (rule!10034 (_1!24335 (v!39775 lt!1446515))))))))

(assert (=> b!4054297 (ruleValid!2880 thiss!21717 (rule!10034 (_1!24335 (v!39775 lt!1446515))))))

(declare-fun lt!1446523 () Unit!62663)

(assert (=> b!4054297 (= lt!1446523 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1950 thiss!21717 (rule!10034 (_1!24335 (v!39775 lt!1446515))) rules!2999))))

(declare-fun lt!1446485 () Unit!62663)

(declare-fun lemmaCharactersSize!1469 (Token!13038) Unit!62663)

(assert (=> b!4054297 (= lt!1446485 (lemmaCharactersSize!1469 token!484))))

(declare-fun lt!1446478 () Unit!62663)

(assert (=> b!4054297 (= lt!1446478 (lemmaCharactersSize!1469 (_1!24335 (v!39775 lt!1446515))))))

(declare-fun b!4054298 () Bool)

(declare-fun e!2515735 () Unit!62663)

(declare-fun Unit!62667 () Unit!62663)

(assert (=> b!4054298 (= e!2515735 Unit!62667)))

(declare-fun b!4054299 () Bool)

(declare-fun tp!1229080 () Bool)

(assert (=> b!4054299 (= e!2515748 (and tp_is_empty!20681 tp!1229080))))

(declare-fun b!4054300 () Bool)

(declare-fun tp!1229074 () Bool)

(declare-fun inv!21 (TokenValue!7180) Bool)

(assert (=> b!4054300 (= e!2515742 (and (inv!21 (value!218709 token!484)) e!2515741 tp!1229074))))

(declare-fun b!4054301 () Bool)

(assert (=> b!4054301 (= e!2515765 false)))

(declare-fun b!4054302 () Bool)

(declare-fun Unit!62668 () Unit!62663)

(assert (=> b!4054302 (= e!2515735 Unit!62668)))

(declare-fun lt!1446513 () Unit!62663)

(assert (=> b!4054302 (= lt!1446513 (lemmaMaxPrefixOutputsMaxPrefix!476 thiss!21717 rules!2999 (rule!10034 (_1!24335 (v!39775 lt!1446515))) lt!1446487 lt!1446499 lt!1446519 (rule!10034 token!484)))))

(assert (=> b!4054302 false))

(declare-fun b!4054303 () Bool)

(assert (=> b!4054303 (= e!2515764 e!2515737)))

(declare-fun res!1652713 () Bool)

(assert (=> b!4054303 (=> (not res!1652713) (not e!2515737))))

(assert (=> b!4054303 (= res!1652713 (= (maxPrefix!3837 thiss!21717 rules!2999 lt!1446473) lt!1446482))))

(assert (=> b!4054303 (= lt!1446482 (Some!9363 lt!1446469))))

(assert (=> b!4054303 (= lt!1446469 (tuple2!42403 token!484 suffixResult!105))))

(assert (=> b!4054303 (= lt!1446473 (++!11352 prefix!494 suffix!1299))))

(declare-fun b!4054304 () Bool)

(declare-fun res!1652729 () Bool)

(assert (=> b!4054304 (=> (not res!1652729) (not e!2515757))))

(assert (=> b!4054304 (= res!1652729 (= (value!218709 token!484) lt!1446489))))

(declare-fun b!4054305 () Bool)

(declare-fun e!2515753 () Bool)

(assert (=> b!4054305 (= e!2515753 e!2515736)))

(declare-fun res!1652710 () Bool)

(assert (=> b!4054305 (=> res!1652710 e!2515736)))

(assert (=> b!4054305 (= res!1652710 (not (= lt!1446495 lt!1446481)))))

(declare-fun lt!1446503 () Unit!62663)

(assert (=> b!4054305 (= lt!1446503 e!2515735)))

(declare-fun c!700299 () Bool)

(assert (=> b!4054305 (= c!700299 (< lt!1446481 lt!1446495))))

(declare-fun lt!1446524 () Unit!62663)

(assert (=> b!4054305 (= lt!1446524 e!2515749)))

(declare-fun c!700298 () Bool)

(assert (=> b!4054305 (= c!700298 (> lt!1446481 lt!1446495))))

(declare-fun lt!1446501 () List!43461)

(assert (=> b!4054305 (= (_2!24335 (v!39775 lt!1446515)) lt!1446501)))

(declare-fun lt!1446474 () Unit!62663)

(assert (=> b!4054305 (= lt!1446474 (lemmaSamePrefixThenSameSuffix!2198 lt!1446487 (_2!24335 (v!39775 lt!1446515)) lt!1446487 lt!1446501 lt!1446499))))

(declare-fun lt!1446505 () List!43461)

(assert (=> b!4054305 (isPrefix!4037 lt!1446487 lt!1446505)))

(declare-fun lt!1446516 () Unit!62663)

(assert (=> b!4054305 (= lt!1446516 (lemmaConcatTwoListThenFirstIsPrefix!2872 lt!1446487 lt!1446501))))

(declare-fun b!4054306 () Bool)

(assert (=> b!4054306 (= e!2515738 e!2515763)))

(declare-fun res!1652708 () Bool)

(assert (=> b!4054306 (=> res!1652708 e!2515763)))

(assert (=> b!4054306 (= res!1652708 (not (= lt!1446475 suffix!1299)))))

(assert (=> b!4054306 (= lt!1446475 (++!11352 newSuffix!27 lt!1446527))))

(assert (=> b!4054306 (= lt!1446527 (getSuffix!2454 suffix!1299 newSuffix!27))))

(declare-fun b!4054307 () Bool)

(declare-fun tp!1229083 () Bool)

(assert (=> b!4054307 (= e!2515761 (and tp!1229083 (inv!57931 (tag!7810 (h!48759 rules!2999))) (inv!57934 (transformation!6950 (h!48759 rules!2999))) e!2515733))))

(declare-fun b!4054308 () Bool)

(assert (=> b!4054308 (= e!2515739 e!2515753)))

(declare-fun res!1652734 () Bool)

(assert (=> b!4054308 (=> res!1652734 e!2515753)))

(assert (=> b!4054308 (= res!1652734 (not (= lt!1446505 lt!1446499)))))

(assert (=> b!4054308 (= lt!1446505 (++!11352 lt!1446487 lt!1446501))))

(assert (=> b!4054308 (= lt!1446501 (getSuffix!2454 lt!1446499 lt!1446487))))

(assert (= (and start!382308 res!1652724) b!4054267))

(assert (= (and b!4054267 res!1652723) b!4054280))

(assert (= (and b!4054280 res!1652735) b!4054285))

(assert (= (and b!4054285 res!1652711) b!4054288))

(assert (= (and b!4054288 res!1652733) b!4054284))

(assert (= (and b!4054284 res!1652725) b!4054296))

(assert (= (and b!4054296 res!1652720) b!4054303))

(assert (= (and b!4054303 res!1652713) b!4054281))

(assert (= (and b!4054281 (not res!1652716)) b!4054283))

(assert (= (and b!4054283 (not res!1652730)) b!4054274))

(assert (= (and b!4054274 (not res!1652714)) b!4054273))

(assert (= (and b!4054273 (not res!1652722)) b!4054287))

(assert (= (and b!4054287 (not res!1652717)) b!4054269))

(assert (= (and b!4054269 (not res!1652715)) b!4054290))

(assert (= (and b!4054290 res!1652727) b!4054304))

(assert (= (and b!4054304 res!1652729) b!4054294))

(assert (= (and b!4054294 res!1652709) b!4054277))

(assert (= (and b!4054290 (not res!1652726)) b!4054279))

(assert (= (and b!4054279 (not res!1652721)) b!4054297))

(assert (= (and b!4054297 (not res!1652728)) b!4054306))

(assert (= (and b!4054306 (not res!1652708)) b!4054292))

(assert (= (and b!4054292 (not res!1652718)) b!4054278))

(assert (= (and b!4054278 (not res!1652732)) b!4054275))

(assert (= (and b!4054275 (not res!1652712)) b!4054308))

(assert (= (and b!4054308 (not res!1652734)) b!4054305))

(assert (= (and b!4054305 c!700298) b!4054268))

(assert (= (and b!4054305 (not c!700298)) b!4054276))

(assert (= (and b!4054268 res!1652719) b!4054301))

(assert (= (and b!4054305 c!700299) b!4054302))

(assert (= (and b!4054305 (not c!700299)) b!4054298))

(assert (= (and b!4054305 (not res!1652710)) b!4054295))

(assert (= (and b!4054295 (not res!1652731)) b!4054291))

(assert (= (and start!382308 ((_ is Cons!43337) prefix!494)) b!4054289))

(assert (= b!4054271 b!4054266))

(assert (= b!4054300 b!4054271))

(assert (= start!382308 b!4054300))

(assert (= (and start!382308 ((_ is Cons!43337) suffixResult!105)) b!4054272))

(assert (= (and start!382308 ((_ is Cons!43337) suffix!1299)) b!4054282))

(assert (= (and start!382308 ((_ is Cons!43337) newSuffix!27)) b!4054286))

(assert (= b!4054307 b!4054270))

(assert (= b!4054293 b!4054307))

(assert (= (and start!382308 ((_ is Cons!43339) rules!2999)) b!4054293))

(assert (= (and start!382308 ((_ is Cons!43337) newSuffixResult!27)) b!4054299))

(declare-fun m!4656959 () Bool)

(assert (=> b!4054269 m!4656959))

(declare-fun m!4656961 () Bool)

(assert (=> b!4054269 m!4656961))

(declare-fun m!4656963 () Bool)

(assert (=> b!4054269 m!4656963))

(declare-fun m!4656965 () Bool)

(assert (=> b!4054269 m!4656965))

(declare-fun m!4656967 () Bool)

(assert (=> b!4054271 m!4656967))

(declare-fun m!4656969 () Bool)

(assert (=> b!4054271 m!4656969))

(declare-fun m!4656971 () Bool)

(assert (=> b!4054280 m!4656971))

(declare-fun m!4656973 () Bool)

(assert (=> b!4054306 m!4656973))

(declare-fun m!4656975 () Bool)

(assert (=> b!4054306 m!4656975))

(declare-fun m!4656977 () Bool)

(assert (=> b!4054267 m!4656977))

(declare-fun m!4656979 () Bool)

(assert (=> b!4054279 m!4656979))

(declare-fun m!4656981 () Bool)

(assert (=> b!4054279 m!4656981))

(declare-fun m!4656983 () Bool)

(assert (=> b!4054279 m!4656983))

(declare-fun m!4656985 () Bool)

(assert (=> b!4054279 m!4656985))

(declare-fun m!4656987 () Bool)

(assert (=> b!4054287 m!4656987))

(declare-fun m!4656989 () Bool)

(assert (=> b!4054287 m!4656989))

(declare-fun m!4656991 () Bool)

(assert (=> b!4054287 m!4656991))

(declare-fun m!4656993 () Bool)

(assert (=> b!4054287 m!4656993))

(assert (=> b!4054287 m!4656991))

(declare-fun m!4656995 () Bool)

(assert (=> b!4054287 m!4656995))

(declare-fun m!4656997 () Bool)

(assert (=> b!4054287 m!4656997))

(declare-fun m!4656999 () Bool)

(assert (=> b!4054287 m!4656999))

(declare-fun m!4657001 () Bool)

(assert (=> b!4054281 m!4657001))

(declare-fun m!4657003 () Bool)

(assert (=> b!4054281 m!4657003))

(declare-fun m!4657005 () Bool)

(assert (=> b!4054281 m!4657005))

(declare-fun m!4657007 () Bool)

(assert (=> b!4054281 m!4657007))

(declare-fun m!4657009 () Bool)

(assert (=> b!4054285 m!4657009))

(declare-fun m!4657011 () Bool)

(assert (=> b!4054285 m!4657011))

(declare-fun m!4657013 () Bool)

(assert (=> b!4054292 m!4657013))

(declare-fun m!4657015 () Bool)

(assert (=> b!4054292 m!4657015))

(declare-fun m!4657017 () Bool)

(assert (=> b!4054292 m!4657017))

(declare-fun m!4657019 () Bool)

(assert (=> b!4054294 m!4657019))

(declare-fun m!4657021 () Bool)

(assert (=> b!4054295 m!4657021))

(declare-fun m!4657023 () Bool)

(assert (=> b!4054300 m!4657023))

(declare-fun m!4657025 () Bool)

(assert (=> start!382308 m!4657025))

(declare-fun m!4657027 () Bool)

(assert (=> b!4054303 m!4657027))

(declare-fun m!4657029 () Bool)

(assert (=> b!4054303 m!4657029))

(declare-fun m!4657031 () Bool)

(assert (=> b!4054268 m!4657031))

(declare-fun m!4657033 () Bool)

(assert (=> b!4054268 m!4657033))

(declare-fun m!4657035 () Bool)

(assert (=> b!4054284 m!4657035))

(declare-fun m!4657037 () Bool)

(assert (=> b!4054284 m!4657037))

(declare-fun m!4657039 () Bool)

(assert (=> b!4054284 m!4657039))

(assert (=> b!4054284 m!4657039))

(declare-fun m!4657041 () Bool)

(assert (=> b!4054284 m!4657041))

(declare-fun m!4657043 () Bool)

(assert (=> b!4054307 m!4657043))

(declare-fun m!4657045 () Bool)

(assert (=> b!4054307 m!4657045))

(declare-fun m!4657047 () Bool)

(assert (=> b!4054302 m!4657047))

(declare-fun m!4657049 () Bool)

(assert (=> b!4054297 m!4657049))

(declare-fun m!4657051 () Bool)

(assert (=> b!4054297 m!4657051))

(declare-fun m!4657053 () Bool)

(assert (=> b!4054297 m!4657053))

(declare-fun m!4657055 () Bool)

(assert (=> b!4054297 m!4657055))

(declare-fun m!4657057 () Bool)

(assert (=> b!4054297 m!4657057))

(declare-fun m!4657059 () Bool)

(assert (=> b!4054297 m!4657059))

(declare-fun m!4657061 () Bool)

(assert (=> b!4054297 m!4657061))

(declare-fun m!4657063 () Bool)

(assert (=> b!4054297 m!4657063))

(declare-fun m!4657065 () Bool)

(assert (=> b!4054297 m!4657065))

(declare-fun m!4657067 () Bool)

(assert (=> b!4054297 m!4657067))

(declare-fun m!4657069 () Bool)

(assert (=> b!4054297 m!4657069))

(assert (=> b!4054297 m!4657063))

(declare-fun m!4657071 () Bool)

(assert (=> b!4054297 m!4657071))

(assert (=> b!4054297 m!4657053))

(declare-fun m!4657073 () Bool)

(assert (=> b!4054297 m!4657073))

(declare-fun m!4657075 () Bool)

(assert (=> b!4054297 m!4657075))

(declare-fun m!4657077 () Bool)

(assert (=> b!4054297 m!4657077))

(declare-fun m!4657079 () Bool)

(assert (=> b!4054297 m!4657079))

(declare-fun m!4657081 () Bool)

(assert (=> b!4054297 m!4657081))

(assert (=> b!4054297 m!4657065))

(declare-fun m!4657083 () Bool)

(assert (=> b!4054297 m!4657083))

(declare-fun m!4657085 () Bool)

(assert (=> b!4054296 m!4657085))

(declare-fun m!4657087 () Bool)

(assert (=> b!4054296 m!4657087))

(declare-fun m!4657089 () Bool)

(assert (=> b!4054274 m!4657089))

(declare-fun m!4657091 () Bool)

(assert (=> b!4054274 m!4657091))

(declare-fun m!4657093 () Bool)

(assert (=> b!4054274 m!4657093))

(declare-fun m!4657095 () Bool)

(assert (=> b!4054274 m!4657095))

(declare-fun m!4657097 () Bool)

(assert (=> b!4054305 m!4657097))

(declare-fun m!4657099 () Bool)

(assert (=> b!4054305 m!4657099))

(declare-fun m!4657101 () Bool)

(assert (=> b!4054305 m!4657101))

(declare-fun m!4657103 () Bool)

(assert (=> b!4054278 m!4657103))

(declare-fun m!4657105 () Bool)

(assert (=> b!4054278 m!4657105))

(declare-fun m!4657107 () Bool)

(assert (=> b!4054278 m!4657107))

(declare-fun m!4657109 () Bool)

(assert (=> b!4054283 m!4657109))

(declare-fun m!4657111 () Bool)

(assert (=> b!4054283 m!4657111))

(declare-fun m!4657113 () Bool)

(assert (=> b!4054283 m!4657113))

(declare-fun m!4657115 () Bool)

(assert (=> b!4054283 m!4657115))

(declare-fun m!4657117 () Bool)

(assert (=> b!4054283 m!4657117))

(declare-fun m!4657119 () Bool)

(assert (=> b!4054273 m!4657119))

(declare-fun m!4657121 () Bool)

(assert (=> b!4054273 m!4657121))

(declare-fun m!4657123 () Bool)

(assert (=> b!4054273 m!4657123))

(declare-fun m!4657125 () Bool)

(assert (=> b!4054273 m!4657125))

(declare-fun m!4657127 () Bool)

(assert (=> b!4054290 m!4657127))

(declare-fun m!4657129 () Bool)

(assert (=> b!4054290 m!4657129))

(declare-fun m!4657131 () Bool)

(assert (=> b!4054290 m!4657131))

(declare-fun m!4657133 () Bool)

(assert (=> b!4054290 m!4657133))

(declare-fun m!4657135 () Bool)

(assert (=> b!4054308 m!4657135))

(declare-fun m!4657137 () Bool)

(assert (=> b!4054308 m!4657137))

(declare-fun m!4657139 () Bool)

(assert (=> b!4054288 m!4657139))

(check-sat (not b!4054272) (not b!4054299) (not b!4054290) (not start!382308) (not b!4054279) (not b!4054296) (not b!4054274) (not b!4054281) (not b!4054294) (not b_next!113533) (not b!4054289) (not b!4054282) (not b!4054269) (not b!4054267) (not b!4054271) (not b!4054288) (not b_next!113529) (not b!4054268) (not b!4054287) (not b!4054293) (not b!4054295) (not b!4054306) (not b!4054307) tp_is_empty!20681 (not b!4054302) b_and!311781 (not b!4054284) (not b!4054300) (not b_next!113531) (not b!4054278) b_and!311779 b_and!311783 b_and!311785 (not b!4054280) (not b!4054297) (not b!4054273) (not b!4054292) (not b_next!113535) (not b!4054285) (not b!4054305) (not b!4054286) (not b!4054283) (not b!4054303) (not b!4054308))
(check-sat (not b_next!113533) (not b_next!113529) b_and!311781 (not b_next!113531) (not b_next!113535) b_and!311779 b_and!311783 b_and!311785)
