; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376784 () Bool)

(assert start!376784)

(declare-fun b!4003294 () Bool)

(declare-fun b_free!111337 () Bool)

(declare-fun b_next!112041 () Bool)

(assert (=> b!4003294 (= b_free!111337 (not b_next!112041))))

(declare-fun tp!1218510 () Bool)

(declare-fun b_and!307423 () Bool)

(assert (=> b!4003294 (= tp!1218510 b_and!307423)))

(declare-fun b_free!111339 () Bool)

(declare-fun b_next!112043 () Bool)

(assert (=> b!4003294 (= b_free!111339 (not b_next!112043))))

(declare-fun tp!1218512 () Bool)

(declare-fun b_and!307425 () Bool)

(assert (=> b!4003294 (= tp!1218512 b_and!307425)))

(declare-fun b!4003286 () Bool)

(declare-fun b_free!111341 () Bool)

(declare-fun b_next!112045 () Bool)

(assert (=> b!4003286 (= b_free!111341 (not b_next!112045))))

(declare-fun tp!1218519 () Bool)

(declare-fun b_and!307427 () Bool)

(assert (=> b!4003286 (= tp!1218519 b_and!307427)))

(declare-fun b_free!111343 () Bool)

(declare-fun b_next!112047 () Bool)

(assert (=> b!4003286 (= b_free!111343 (not b_next!112047))))

(declare-fun tp!1218517 () Bool)

(declare-fun b_and!307429 () Bool)

(assert (=> b!4003286 (= tp!1218517 b_and!307429)))

(declare-fun b!4003275 () Bool)

(declare-fun e!2482551 () Bool)

(assert (=> b!4003275 (= e!2482551 true)))

(declare-datatypes ((C!23612 0))(
  ( (C!23613 (val!13900 Int)) )
))
(declare-datatypes ((List!42980 0))(
  ( (Nil!42856) (Cons!42856 (h!48276 C!23612) (t!332321 List!42980)) )
))
(declare-fun suffix!1299 () List!42980)

(declare-fun lt!1415811 () List!42980)

(declare-fun lt!1415813 () List!42980)

(declare-fun lt!1415814 () List!42980)

(declare-fun ++!11210 (List!42980 List!42980) List!42980)

(assert (=> b!4003275 (= (++!11210 lt!1415814 suffix!1299) (++!11210 lt!1415813 (++!11210 lt!1415811 suffix!1299)))))

(declare-datatypes ((Unit!61845 0))(
  ( (Unit!61846) )
))
(declare-fun lt!1415812 () Unit!61845)

(declare-fun lemmaConcatAssociativity!2520 (List!42980 List!42980 List!42980) Unit!61845)

(assert (=> b!4003275 (= lt!1415812 (lemmaConcatAssociativity!2520 lt!1415813 lt!1415811 suffix!1299))))

(declare-fun b!4003276 () Bool)

(declare-fun e!2482547 () Bool)

(declare-fun e!2482541 () Bool)

(assert (=> b!4003276 (= e!2482547 e!2482541)))

(declare-fun res!1626681 () Bool)

(assert (=> b!4003276 (=> (not res!1626681) (not e!2482541))))

(declare-fun lt!1415808 () List!42980)

(declare-datatypes ((IArray!26043 0))(
  ( (IArray!26044 (innerList!13079 List!42980)) )
))
(declare-datatypes ((Conc!13019 0))(
  ( (Node!13019 (left!32341 Conc!13019) (right!32671 Conc!13019) (csize!26268 Int) (cheight!13230 Int)) (Leaf!20130 (xs!16325 IArray!26043) (csize!26269 Int)) (Empty!13019) )
))
(declare-datatypes ((BalanceConc!25632 0))(
  ( (BalanceConc!25633 (c!692236 Conc!13019)) )
))
(declare-datatypes ((List!42981 0))(
  ( (Nil!42857) (Cons!42857 (h!48277 (_ BitVec 16)) (t!332322 List!42981)) )
))
(declare-datatypes ((TokenValue!7038 0))(
  ( (FloatLiteralValue!14076 (text!49711 List!42981)) (TokenValueExt!7037 (__x!26293 Int)) (Broken!35190 (value!214636 List!42981)) (Object!7161) (End!7038) (Def!7038) (Underscore!7038) (Match!7038) (Else!7038) (Error!7038) (Case!7038) (If!7038) (Extends!7038) (Abstract!7038) (Class!7038) (Val!7038) (DelimiterValue!14076 (del!7098 List!42981)) (KeywordValue!7044 (value!214637 List!42981)) (CommentValue!14076 (value!214638 List!42981)) (WhitespaceValue!14076 (value!214639 List!42981)) (IndentationValue!7038 (value!214640 List!42981)) (String!48907) (Int32!7038) (Broken!35191 (value!214641 List!42981)) (Boolean!7039) (Unit!61847) (OperatorValue!7041 (op!7098 List!42981)) (IdentifierValue!14076 (value!214642 List!42981)) (IdentifierValue!14077 (value!214643 List!42981)) (WhitespaceValue!14077 (value!214644 List!42981)) (True!14076) (False!14076) (Broken!35192 (value!214645 List!42981)) (Broken!35193 (value!214646 List!42981)) (True!14077) (RightBrace!7038) (RightBracket!7038) (Colon!7038) (Null!7038) (Comma!7038) (LeftBracket!7038) (False!14077) (LeftBrace!7038) (ImaginaryLiteralValue!7038 (text!49712 List!42981)) (StringLiteralValue!21114 (value!214647 List!42981)) (EOFValue!7038 (value!214648 List!42981)) (IdentValue!7038 (value!214649 List!42981)) (DelimiterValue!14077 (value!214650 List!42981)) (DedentValue!7038 (value!214651 List!42981)) (NewLineValue!7038 (value!214652 List!42981)) (IntegerValue!21114 (value!214653 (_ BitVec 32)) (text!49713 List!42981)) (IntegerValue!21115 (value!214654 Int) (text!49714 List!42981)) (Times!7038) (Or!7038) (Equal!7038) (Minus!7038) (Broken!35194 (value!214655 List!42981)) (And!7038) (Div!7038) (LessEqual!7038) (Mod!7038) (Concat!18751) (Not!7038) (Plus!7038) (SpaceValue!7038 (value!214656 List!42981)) (IntegerValue!21116 (value!214657 Int) (text!49715 List!42981)) (StringLiteralValue!21115 (text!49716 List!42981)) (FloatLiteralValue!14077 (text!49717 List!42981)) (BytesLiteralValue!7038 (value!214658 List!42981)) (CommentValue!14077 (value!214659 List!42981)) (StringLiteralValue!21116 (value!214660 List!42981)) (ErrorTokenValue!7038 (msg!7099 List!42981)) )
))
(declare-datatypes ((Regex!11713 0))(
  ( (ElementMatch!11713 (c!692237 C!23612)) (Concat!18752 (regOne!23938 Regex!11713) (regTwo!23938 Regex!11713)) (EmptyExpr!11713) (Star!11713 (reg!12042 Regex!11713)) (EmptyLang!11713) (Union!11713 (regOne!23939 Regex!11713) (regTwo!23939 Regex!11713)) )
))
(declare-datatypes ((String!48908 0))(
  ( (String!48909 (value!214661 String)) )
))
(declare-datatypes ((TokenValueInjection!13504 0))(
  ( (TokenValueInjection!13505 (toValue!9300 Int) (toChars!9159 Int)) )
))
(declare-datatypes ((Rule!13416 0))(
  ( (Rule!13417 (regex!6808 Regex!11713) (tag!7668 String!48908) (isSeparator!6808 Bool) (transformation!6808 TokenValueInjection!13504)) )
))
(declare-datatypes ((Token!12754 0))(
  ( (Token!12755 (value!214662 TokenValue!7038) (rule!9842 Rule!13416) (size!32041 Int) (originalCharacters!7408 List!42980)) )
))
(declare-fun token!484 () Token!12754)

(declare-fun suffixResult!105 () List!42980)

(declare-datatypes ((LexerInterface!6397 0))(
  ( (LexerInterfaceExt!6394 (__x!26294 Int)) (Lexer!6395) )
))
(declare-fun thiss!21717 () LexerInterface!6397)

(declare-datatypes ((List!42982 0))(
  ( (Nil!42858) (Cons!42858 (h!48278 Rule!13416) (t!332323 List!42982)) )
))
(declare-fun rules!2999 () List!42982)

(declare-datatypes ((tuple2!42018 0))(
  ( (tuple2!42019 (_1!24143 Token!12754) (_2!24143 List!42980)) )
))
(declare-datatypes ((Option!9222 0))(
  ( (None!9221) (Some!9221 (v!39583 tuple2!42018)) )
))
(declare-fun maxPrefix!3695 (LexerInterface!6397 List!42982 List!42980) Option!9222)

(assert (=> b!4003276 (= res!1626681 (= (maxPrefix!3695 thiss!21717 rules!2999 lt!1415808) (Some!9221 (tuple2!42019 token!484 suffixResult!105))))))

(declare-fun prefix!494 () List!42980)

(assert (=> b!4003276 (= lt!1415808 (++!11210 prefix!494 suffix!1299))))

(declare-fun res!1626673 () Bool)

(declare-fun e!2482554 () Bool)

(assert (=> start!376784 (=> (not res!1626673) (not e!2482554))))

(get-info :version)

(assert (=> start!376784 (= res!1626673 ((_ is Lexer!6395) thiss!21717))))

(assert (=> start!376784 e!2482554))

(declare-fun e!2482543 () Bool)

(assert (=> start!376784 e!2482543))

(declare-fun e!2482550 () Bool)

(declare-fun inv!57230 (Token!12754) Bool)

(assert (=> start!376784 (and (inv!57230 token!484) e!2482550)))

(declare-fun e!2482545 () Bool)

(assert (=> start!376784 e!2482545))

(declare-fun e!2482540 () Bool)

(assert (=> start!376784 e!2482540))

(declare-fun e!2482535 () Bool)

(assert (=> start!376784 e!2482535))

(assert (=> start!376784 true))

(declare-fun e!2482542 () Bool)

(assert (=> start!376784 e!2482542))

(declare-fun e!2482536 () Bool)

(assert (=> start!376784 e!2482536))

(declare-fun e!2482544 () Bool)

(declare-fun b!4003277 () Bool)

(declare-fun e!2482537 () Bool)

(declare-fun tp!1218522 () Bool)

(declare-fun inv!57227 (String!48908) Bool)

(declare-fun inv!57231 (TokenValueInjection!13504) Bool)

(assert (=> b!4003277 (= e!2482537 (and tp!1218522 (inv!57227 (tag!7668 (rule!9842 token!484))) (inv!57231 (transformation!6808 (rule!9842 token!484))) e!2482544))))

(declare-fun b!4003278 () Bool)

(declare-fun tp_is_empty!20397 () Bool)

(declare-fun tp!1218516 () Bool)

(assert (=> b!4003278 (= e!2482536 (and tp_is_empty!20397 tp!1218516))))

(declare-fun b!4003279 () Bool)

(declare-fun tp!1218514 () Bool)

(assert (=> b!4003279 (= e!2482535 (and tp_is_empty!20397 tp!1218514))))

(declare-fun b!4003280 () Bool)

(declare-fun res!1626677 () Bool)

(assert (=> b!4003280 (=> (not res!1626677) (not e!2482554))))

(declare-fun newSuffix!27 () List!42980)

(declare-fun isPrefix!3895 (List!42980 List!42980) Bool)

(assert (=> b!4003280 (= res!1626677 (isPrefix!3895 newSuffix!27 suffix!1299))))

(declare-fun b!4003281 () Bool)

(declare-fun res!1626682 () Bool)

(assert (=> b!4003281 (=> (not res!1626682) (not e!2482554))))

(declare-fun isEmpty!25604 (List!42982) Bool)

(assert (=> b!4003281 (= res!1626682 (not (isEmpty!25604 rules!2999)))))

(declare-fun b!4003282 () Bool)

(declare-fun e!2482553 () Bool)

(declare-fun e!2482552 () Bool)

(assert (=> b!4003282 (= e!2482553 e!2482552)))

(declare-fun res!1626676 () Bool)

(assert (=> b!4003282 (=> res!1626676 e!2482552)))

(assert (=> b!4003282 (= res!1626676 (not (isPrefix!3895 lt!1415813 lt!1415808)))))

(assert (=> b!4003282 (isPrefix!3895 prefix!494 lt!1415808)))

(declare-fun lt!1415817 () Unit!61845)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2736 (List!42980 List!42980) Unit!61845)

(assert (=> b!4003282 (= lt!1415817 (lemmaConcatTwoListThenFirstIsPrefix!2736 prefix!494 suffix!1299))))

(declare-fun lt!1415807 () List!42980)

(assert (=> b!4003282 (isPrefix!3895 lt!1415813 lt!1415807)))

(declare-fun lt!1415816 () Unit!61845)

(assert (=> b!4003282 (= lt!1415816 (lemmaConcatTwoListThenFirstIsPrefix!2736 lt!1415813 suffixResult!105))))

(declare-fun b!4003283 () Bool)

(declare-fun res!1626675 () Bool)

(assert (=> b!4003283 (=> (not res!1626675) (not e!2482554))))

(declare-fun size!32042 (List!42980) Int)

(assert (=> b!4003283 (= res!1626675 (>= (size!32042 suffix!1299) (size!32042 newSuffix!27)))))

(declare-fun b!4003284 () Bool)

(declare-fun res!1626680 () Bool)

(assert (=> b!4003284 (=> (not res!1626680) (not e!2482547))))

(declare-fun newSuffixResult!27 () List!42980)

(assert (=> b!4003284 (= res!1626680 (= (++!11210 lt!1415813 newSuffixResult!27) (++!11210 prefix!494 newSuffix!27)))))

(declare-fun b!4003285 () Bool)

(declare-fun e!2482538 () Bool)

(declare-fun tp!1218520 () Bool)

(assert (=> b!4003285 (= e!2482542 (and e!2482538 tp!1218520))))

(declare-fun e!2482549 () Bool)

(assert (=> b!4003286 (= e!2482549 (and tp!1218519 tp!1218517))))

(declare-fun b!4003287 () Bool)

(assert (=> b!4003287 (= e!2482552 e!2482551)))

(declare-fun res!1626674 () Bool)

(assert (=> b!4003287 (=> res!1626674 e!2482551)))

(assert (=> b!4003287 (= res!1626674 (not (= lt!1415814 prefix!494)))))

(assert (=> b!4003287 (= lt!1415814 (++!11210 lt!1415813 lt!1415811))))

(declare-fun getSuffix!2320 (List!42980 List!42980) List!42980)

(assert (=> b!4003287 (= lt!1415811 (getSuffix!2320 prefix!494 lt!1415813))))

(assert (=> b!4003287 (isPrefix!3895 lt!1415813 prefix!494)))

(declare-fun lt!1415810 () Unit!61845)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!467 (List!42980 List!42980 List!42980) Unit!61845)

(assert (=> b!4003287 (= lt!1415810 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!467 prefix!494 lt!1415813 lt!1415808))))

(declare-fun b!4003288 () Bool)

(assert (=> b!4003288 (= e!2482554 e!2482547)))

(declare-fun res!1626678 () Bool)

(assert (=> b!4003288 (=> (not res!1626678) (not e!2482547))))

(assert (=> b!4003288 (= res!1626678 (>= (size!32042 prefix!494) (size!32042 lt!1415813)))))

(declare-fun list!15918 (BalanceConc!25632) List!42980)

(declare-fun charsOf!4624 (Token!12754) BalanceConc!25632)

(assert (=> b!4003288 (= lt!1415813 (list!15918 (charsOf!4624 token!484)))))

(declare-fun b!4003289 () Bool)

(declare-fun tp!1218521 () Bool)

(assert (=> b!4003289 (= e!2482540 (and tp_is_empty!20397 tp!1218521))))

(declare-fun b!4003290 () Bool)

(declare-fun res!1626683 () Bool)

(assert (=> b!4003290 (=> (not res!1626683) (not e!2482554))))

(declare-fun rulesInvariant!5740 (LexerInterface!6397 List!42982) Bool)

(assert (=> b!4003290 (= res!1626683 (rulesInvariant!5740 thiss!21717 rules!2999))))

(declare-fun b!4003291 () Bool)

(assert (=> b!4003291 (= e!2482541 (not e!2482553))))

(declare-fun res!1626679 () Bool)

(assert (=> b!4003291 (=> res!1626679 e!2482553)))

(assert (=> b!4003291 (= res!1626679 (not (= lt!1415807 lt!1415808)))))

(assert (=> b!4003291 (= lt!1415807 (++!11210 lt!1415813 suffixResult!105))))

(declare-fun lt!1415809 () Unit!61845)

(declare-fun lemmaInv!1023 (TokenValueInjection!13504) Unit!61845)

(assert (=> b!4003291 (= lt!1415809 (lemmaInv!1023 (transformation!6808 (rule!9842 token!484))))))

(declare-fun ruleValid!2740 (LexerInterface!6397 Rule!13416) Bool)

(assert (=> b!4003291 (ruleValid!2740 thiss!21717 (rule!9842 token!484))))

(declare-fun lt!1415815 () Unit!61845)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1814 (LexerInterface!6397 Rule!13416 List!42982) Unit!61845)

(assert (=> b!4003291 (= lt!1415815 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1814 thiss!21717 (rule!9842 token!484) rules!2999))))

(declare-fun b!4003292 () Bool)

(declare-fun tp!1218515 () Bool)

(assert (=> b!4003292 (= e!2482545 (and tp_is_empty!20397 tp!1218515))))

(declare-fun b!4003293 () Bool)

(declare-fun tp!1218511 () Bool)

(assert (=> b!4003293 (= e!2482538 (and tp!1218511 (inv!57227 (tag!7668 (h!48278 rules!2999))) (inv!57231 (transformation!6808 (h!48278 rules!2999))) e!2482549))))

(assert (=> b!4003294 (= e!2482544 (and tp!1218510 tp!1218512))))

(declare-fun b!4003295 () Bool)

(declare-fun tp!1218518 () Bool)

(assert (=> b!4003295 (= e!2482543 (and tp_is_empty!20397 tp!1218518))))

(declare-fun b!4003296 () Bool)

(declare-fun tp!1218513 () Bool)

(declare-fun inv!21 (TokenValue!7038) Bool)

(assert (=> b!4003296 (= e!2482550 (and (inv!21 (value!214662 token!484)) e!2482537 tp!1218513))))

(assert (= (and start!376784 res!1626673) b!4003281))

(assert (= (and b!4003281 res!1626682) b!4003290))

(assert (= (and b!4003290 res!1626683) b!4003283))

(assert (= (and b!4003283 res!1626675) b!4003280))

(assert (= (and b!4003280 res!1626677) b!4003288))

(assert (= (and b!4003288 res!1626678) b!4003284))

(assert (= (and b!4003284 res!1626680) b!4003276))

(assert (= (and b!4003276 res!1626681) b!4003291))

(assert (= (and b!4003291 (not res!1626679)) b!4003282))

(assert (= (and b!4003282 (not res!1626676)) b!4003287))

(assert (= (and b!4003287 (not res!1626674)) b!4003275))

(assert (= (and start!376784 ((_ is Cons!42856) prefix!494)) b!4003295))

(assert (= b!4003277 b!4003294))

(assert (= b!4003296 b!4003277))

(assert (= start!376784 b!4003296))

(assert (= (and start!376784 ((_ is Cons!42856) suffixResult!105)) b!4003292))

(assert (= (and start!376784 ((_ is Cons!42856) suffix!1299)) b!4003289))

(assert (= (and start!376784 ((_ is Cons!42856) newSuffix!27)) b!4003279))

(assert (= b!4003293 b!4003286))

(assert (= b!4003285 b!4003293))

(assert (= (and start!376784 ((_ is Cons!42858) rules!2999)) b!4003285))

(assert (= (and start!376784 ((_ is Cons!42856) newSuffixResult!27)) b!4003278))

(declare-fun m!4585717 () Bool)

(assert (=> b!4003284 m!4585717))

(declare-fun m!4585719 () Bool)

(assert (=> b!4003284 m!4585719))

(declare-fun m!4585721 () Bool)

(assert (=> b!4003277 m!4585721))

(declare-fun m!4585723 () Bool)

(assert (=> b!4003277 m!4585723))

(declare-fun m!4585725 () Bool)

(assert (=> b!4003293 m!4585725))

(declare-fun m!4585727 () Bool)

(assert (=> b!4003293 m!4585727))

(declare-fun m!4585729 () Bool)

(assert (=> start!376784 m!4585729))

(declare-fun m!4585731 () Bool)

(assert (=> b!4003283 m!4585731))

(declare-fun m!4585733 () Bool)

(assert (=> b!4003283 m!4585733))

(declare-fun m!4585735 () Bool)

(assert (=> b!4003296 m!4585735))

(declare-fun m!4585737 () Bool)

(assert (=> b!4003275 m!4585737))

(declare-fun m!4585739 () Bool)

(assert (=> b!4003275 m!4585739))

(assert (=> b!4003275 m!4585739))

(declare-fun m!4585741 () Bool)

(assert (=> b!4003275 m!4585741))

(declare-fun m!4585743 () Bool)

(assert (=> b!4003275 m!4585743))

(declare-fun m!4585745 () Bool)

(assert (=> b!4003288 m!4585745))

(declare-fun m!4585747 () Bool)

(assert (=> b!4003288 m!4585747))

(declare-fun m!4585749 () Bool)

(assert (=> b!4003288 m!4585749))

(assert (=> b!4003288 m!4585749))

(declare-fun m!4585751 () Bool)

(assert (=> b!4003288 m!4585751))

(declare-fun m!4585753 () Bool)

(assert (=> b!4003281 m!4585753))

(declare-fun m!4585755 () Bool)

(assert (=> b!4003287 m!4585755))

(declare-fun m!4585757 () Bool)

(assert (=> b!4003287 m!4585757))

(declare-fun m!4585759 () Bool)

(assert (=> b!4003287 m!4585759))

(declare-fun m!4585761 () Bool)

(assert (=> b!4003287 m!4585761))

(declare-fun m!4585763 () Bool)

(assert (=> b!4003290 m!4585763))

(declare-fun m!4585765 () Bool)

(assert (=> b!4003276 m!4585765))

(declare-fun m!4585767 () Bool)

(assert (=> b!4003276 m!4585767))

(declare-fun m!4585769 () Bool)

(assert (=> b!4003282 m!4585769))

(declare-fun m!4585771 () Bool)

(assert (=> b!4003282 m!4585771))

(declare-fun m!4585773 () Bool)

(assert (=> b!4003282 m!4585773))

(declare-fun m!4585775 () Bool)

(assert (=> b!4003282 m!4585775))

(declare-fun m!4585777 () Bool)

(assert (=> b!4003282 m!4585777))

(declare-fun m!4585779 () Bool)

(assert (=> b!4003291 m!4585779))

(declare-fun m!4585781 () Bool)

(assert (=> b!4003291 m!4585781))

(declare-fun m!4585783 () Bool)

(assert (=> b!4003291 m!4585783))

(declare-fun m!4585785 () Bool)

(assert (=> b!4003291 m!4585785))

(declare-fun m!4585787 () Bool)

(assert (=> b!4003280 m!4585787))

(check-sat (not b!4003287) (not b!4003275) (not b!4003278) (not b!4003277) (not b!4003289) (not start!376784) (not b!4003276) (not b!4003293) (not b!4003292) b_and!307429 (not b!4003290) (not b!4003281) (not b!4003283) (not b!4003296) (not b!4003295) b_and!307423 (not b!4003280) (not b!4003282) b_and!307427 b_and!307425 (not b!4003284) (not b_next!112045) (not b_next!112047) (not b!4003285) tp_is_empty!20397 (not b!4003279) (not b!4003288) (not b_next!112043) (not b!4003291) (not b_next!112041))
(check-sat b_and!307429 b_and!307423 (not b_next!112047) (not b_next!112043) (not b_next!112041) b_and!307427 b_and!307425 (not b_next!112045))
