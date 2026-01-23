; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104986 () Bool)

(assert start!104986)

(declare-fun b!1184549 () Bool)

(declare-fun b_free!28413 () Bool)

(declare-fun b_next!29117 () Bool)

(assert (=> b!1184549 (= b_free!28413 (not b_next!29117))))

(declare-fun tp!337698 () Bool)

(declare-fun b_and!81461 () Bool)

(assert (=> b!1184549 (= tp!337698 b_and!81461)))

(declare-fun b_free!28415 () Bool)

(declare-fun b_next!29119 () Bool)

(assert (=> b!1184549 (= b_free!28415 (not b_next!29119))))

(declare-fun tp!337697 () Bool)

(declare-fun b_and!81463 () Bool)

(assert (=> b!1184549 (= tp!337697 b_and!81463)))

(declare-fun b!1184553 () Bool)

(declare-fun b_free!28417 () Bool)

(declare-fun b_next!29121 () Bool)

(assert (=> b!1184553 (= b_free!28417 (not b_next!29121))))

(declare-fun tp!337695 () Bool)

(declare-fun b_and!81465 () Bool)

(assert (=> b!1184553 (= tp!337695 b_and!81465)))

(declare-fun b_free!28419 () Bool)

(declare-fun b_next!29123 () Bool)

(assert (=> b!1184553 (= b_free!28419 (not b_next!29123))))

(declare-fun tp!337702 () Bool)

(declare-fun b_and!81467 () Bool)

(assert (=> b!1184553 (= tp!337702 b_and!81467)))

(declare-fun b!1184569 () Bool)

(declare-fun e!760789 () Bool)

(assert (=> b!1184569 (= e!760789 true)))

(declare-fun b!1184568 () Bool)

(declare-fun e!760788 () Bool)

(assert (=> b!1184568 (= e!760788 e!760789)))

(declare-fun b!1184567 () Bool)

(declare-fun e!760787 () Bool)

(assert (=> b!1184567 (= e!760787 e!760788)))

(declare-fun b!1184544 () Bool)

(assert (=> b!1184544 e!760787))

(assert (= b!1184568 b!1184569))

(assert (= b!1184567 b!1184568))

(declare-datatypes ((C!7008 0))(
  ( (C!7009 (val!3800 Int)) )
))
(declare-datatypes ((List!11894 0))(
  ( (Nil!11870) (Cons!11870 (h!17271 C!7008) (t!111730 List!11894)) )
))
(declare-datatypes ((IArray!7781 0))(
  ( (IArray!7782 (innerList!3948 List!11894)) )
))
(declare-datatypes ((Conc!3888 0))(
  ( (Node!3888 (left!10339 Conc!3888) (right!10669 Conc!3888) (csize!8006 Int) (cheight!4099 Int)) (Leaf!5956 (xs!6593 IArray!7781) (csize!8007 Int)) (Empty!3888) )
))
(declare-datatypes ((List!11895 0))(
  ( (Nil!11871) (Cons!11871 (h!17272 (_ BitVec 16)) (t!111731 List!11895)) )
))
(declare-datatypes ((BalanceConc!7798 0))(
  ( (BalanceConc!7799 (c!197023 Conc!3888)) )
))
(declare-datatypes ((TokenValue!2141 0))(
  ( (FloatLiteralValue!4282 (text!15432 List!11895)) (TokenValueExt!2140 (__x!7993 Int)) (Broken!10705 (value!67168 List!11895)) (Object!2164) (End!2141) (Def!2141) (Underscore!2141) (Match!2141) (Else!2141) (Error!2141) (Case!2141) (If!2141) (Extends!2141) (Abstract!2141) (Class!2141) (Val!2141) (DelimiterValue!4282 (del!2201 List!11895)) (KeywordValue!2147 (value!67169 List!11895)) (CommentValue!4282 (value!67170 List!11895)) (WhitespaceValue!4282 (value!67171 List!11895)) (IndentationValue!2141 (value!67172 List!11895)) (String!14372) (Int32!2141) (Broken!10706 (value!67173 List!11895)) (Boolean!2142) (Unit!18193) (OperatorValue!2144 (op!2201 List!11895)) (IdentifierValue!4282 (value!67174 List!11895)) (IdentifierValue!4283 (value!67175 List!11895)) (WhitespaceValue!4283 (value!67176 List!11895)) (True!4282) (False!4282) (Broken!10707 (value!67177 List!11895)) (Broken!10708 (value!67178 List!11895)) (True!4283) (RightBrace!2141) (RightBracket!2141) (Colon!2141) (Null!2141) (Comma!2141) (LeftBracket!2141) (False!4283) (LeftBrace!2141) (ImaginaryLiteralValue!2141 (text!15433 List!11895)) (StringLiteralValue!6423 (value!67179 List!11895)) (EOFValue!2141 (value!67180 List!11895)) (IdentValue!2141 (value!67181 List!11895)) (DelimiterValue!4283 (value!67182 List!11895)) (DedentValue!2141 (value!67183 List!11895)) (NewLineValue!2141 (value!67184 List!11895)) (IntegerValue!6423 (value!67185 (_ BitVec 32)) (text!15434 List!11895)) (IntegerValue!6424 (value!67186 Int) (text!15435 List!11895)) (Times!2141) (Or!2141) (Equal!2141) (Minus!2141) (Broken!10709 (value!67187 List!11895)) (And!2141) (Div!2141) (LessEqual!2141) (Mod!2141) (Concat!5486) (Not!2141) (Plus!2141) (SpaceValue!2141 (value!67188 List!11895)) (IntegerValue!6425 (value!67189 Int) (text!15436 List!11895)) (StringLiteralValue!6424 (text!15437 List!11895)) (FloatLiteralValue!4283 (text!15438 List!11895)) (BytesLiteralValue!2141 (value!67190 List!11895)) (CommentValue!4283 (value!67191 List!11895)) (StringLiteralValue!6425 (value!67192 List!11895)) (ErrorTokenValue!2141 (msg!2202 List!11895)) )
))
(declare-datatypes ((Regex!3345 0))(
  ( (ElementMatch!3345 (c!197024 C!7008)) (Concat!5487 (regOne!7202 Regex!3345) (regTwo!7202 Regex!3345)) (EmptyExpr!3345) (Star!3345 (reg!3674 Regex!3345)) (EmptyLang!3345) (Union!3345 (regOne!7203 Regex!3345) (regTwo!7203 Regex!3345)) )
))
(declare-datatypes ((String!14373 0))(
  ( (String!14374 (value!67193 String)) )
))
(declare-datatypes ((TokenValueInjection!3982 0))(
  ( (TokenValueInjection!3983 (toValue!3188 Int) (toChars!3047 Int)) )
))
(declare-datatypes ((Rule!3950 0))(
  ( (Rule!3951 (regex!2075 Regex!3345) (tag!2337 String!14373) (isSeparator!2075 Bool) (transformation!2075 TokenValueInjection!3982)) )
))
(declare-datatypes ((List!11896 0))(
  ( (Nil!11872) (Cons!11872 (h!17273 Rule!3950) (t!111732 List!11896)) )
))
(declare-fun rules!4386 () List!11896)

(get-info :version)

(assert (= (and b!1184544 ((_ is Cons!11872) rules!4386)) b!1184567))

(declare-fun order!7365 () Int)

(declare-fun lambda!48815 () Int)

(declare-fun order!7367 () Int)

(declare-fun dynLambda!5284 (Int Int) Int)

(declare-fun dynLambda!5285 (Int Int) Int)

(assert (=> b!1184569 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48815))))

(declare-fun order!7369 () Int)

(declare-fun dynLambda!5286 (Int Int) Int)

(assert (=> b!1184569 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48815))))

(declare-fun b!1184538 () Bool)

(declare-fun res!535402 () Bool)

(declare-fun e!760779 () Bool)

(assert (=> b!1184538 (=> (not res!535402) (not e!760779))))

(declare-datatypes ((Token!3812 0))(
  ( (Token!3813 (value!67194 TokenValue!2141) (rule!3496 Rule!3950) (size!9355 Int) (originalCharacters!2629 List!11894)) )
))
(declare-datatypes ((List!11897 0))(
  ( (Nil!11873) (Cons!11873 (h!17274 Token!3812) (t!111733 List!11897)) )
))
(declare-fun l!6534 () List!11897)

(declare-datatypes ((LexerInterface!1770 0))(
  ( (LexerInterfaceExt!1767 (__x!7994 Int)) (Lexer!1768) )
))
(declare-fun thiss!27592 () LexerInterface!1770)

(declare-fun rulesProduceEachTokenIndividuallyList!636 (LexerInterface!1770 List!11896 List!11897) Bool)

(assert (=> b!1184538 (= res!535402 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1184539 () Bool)

(declare-fun res!535393 () Bool)

(assert (=> b!1184539 (=> (not res!535393) (not e!760779))))

(assert (=> b!1184539 (= res!535393 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 l!6534)))))

(declare-fun b!1184540 () Bool)

(declare-fun e!760770 () Bool)

(declare-fun e!760774 () Bool)

(declare-fun tp!337696 () Bool)

(assert (=> b!1184540 (= e!760770 (and e!760774 tp!337696))))

(declare-fun b!1184541 () Bool)

(declare-fun e!760766 () Bool)

(declare-fun e!760767 () Bool)

(assert (=> b!1184541 (= e!760766 e!760767)))

(declare-fun res!535394 () Bool)

(assert (=> b!1184541 (=> (not res!535394) (not e!760767))))

(declare-fun lt!407598 () List!11897)

(declare-fun rulesProduceIndividualToken!799 (LexerInterface!1770 List!11896 Token!3812) Bool)

(assert (=> b!1184541 (= res!535394 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407598)))))

(declare-fun b!1184542 () Bool)

(declare-fun res!535391 () Bool)

(assert (=> b!1184542 (=> (not res!535391) (not e!760779))))

(declare-fun i!1621 () Int)

(assert (=> b!1184542 (= res!535391 (and (not ((_ is Nil!11873) l!6534)) (> i!1621 0)))))

(declare-fun lt!407601 () List!11897)

(declare-fun b!1184543 () Bool)

(declare-fun e!760778 () Bool)

(assert (=> b!1184543 (= e!760778 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407601)))))

(declare-fun e!760771 () Bool)

(assert (=> b!1184544 (= e!760779 (not e!760771))))

(declare-fun res!535401 () Bool)

(assert (=> b!1184544 (=> res!535401 e!760771)))

(declare-fun lt!407599 () Bool)

(assert (=> b!1184544 (= res!535401 (not lt!407599))))

(declare-fun forall!3142 (List!11897 Int) Bool)

(assert (=> b!1184544 (forall!3142 lt!407598 lambda!48815)))

(declare-datatypes ((Unit!18194 0))(
  ( (Unit!18195) )
))
(declare-fun lt!407596 () Unit!18194)

(declare-fun lemmaForallSubseq!193 (List!11897 List!11897 Int) Unit!18194)

(assert (=> b!1184544 (= lt!407596 (lemmaForallSubseq!193 lt!407598 l!6534 lambda!48815))))

(declare-fun subseq!329 (List!11897 List!11897) Bool)

(assert (=> b!1184544 (subseq!329 lt!407598 l!6534)))

(declare-fun lt!407595 () Unit!18194)

(declare-fun lemmaDropSubseq!92 (List!11897 Int) Unit!18194)

(assert (=> b!1184544 (= lt!407595 (lemmaDropSubseq!92 l!6534 i!1621))))

(assert (=> b!1184544 (= lt!407599 e!760766)))

(declare-fun res!535392 () Bool)

(assert (=> b!1184544 (=> res!535392 e!760766)))

(assert (=> b!1184544 (= res!535392 (not ((_ is Cons!11873) lt!407598)))))

(assert (=> b!1184544 (= lt!407599 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 lt!407598))))

(declare-fun drop!553 (List!11897 Int) List!11897)

(assert (=> b!1184544 (= lt!407598 (drop!553 l!6534 i!1621))))

(declare-fun e!760765 () Bool)

(assert (=> b!1184544 e!760765))

(declare-fun res!535399 () Bool)

(assert (=> b!1184544 (=> (not res!535399) (not e!760765))))

(assert (=> b!1184544 (= res!535399 (forall!3142 lt!407601 lambda!48815))))

(declare-fun lt!407600 () Unit!18194)

(assert (=> b!1184544 (= lt!407600 (lemmaForallSubseq!193 lt!407601 (t!111733 l!6534) lambda!48815))))

(assert (=> b!1184544 (subseq!329 lt!407601 (t!111733 l!6534))))

(declare-fun lt!407597 () Unit!18194)

(assert (=> b!1184544 (= lt!407597 (lemmaDropSubseq!92 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun e!760775 () Bool)

(assert (=> b!1184544 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 lt!407601) e!760775)))

(declare-fun res!535397 () Bool)

(assert (=> b!1184544 (=> res!535397 e!760775)))

(assert (=> b!1184544 (= res!535397 (not ((_ is Cons!11873) lt!407601)))))

(assert (=> b!1184544 (= lt!407601 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun lt!407602 () Unit!18194)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!68 (LexerInterface!1770 List!11897 Int List!11896) Unit!18194)

(assert (=> b!1184544 (= lt!407602 (tokensListTwoByTwoPredicateSeparableTokensDropList!68 thiss!27592 (t!111733 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1184545 () Bool)

(declare-fun res!535395 () Bool)

(assert (=> b!1184545 (=> (not res!535395) (not e!760779))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!164 (LexerInterface!1770 List!11897 List!11896) Bool)

(assert (=> b!1184545 (= res!535395 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (t!111733 l!6534) rules!4386))))

(declare-fun b!1184546 () Bool)

(assert (=> b!1184546 (= e!760767 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407598)))))

(declare-fun tp!337701 () Bool)

(declare-fun b!1184547 () Bool)

(declare-fun e!760764 () Bool)

(declare-fun inv!15690 (String!14373) Bool)

(declare-fun inv!15693 (TokenValueInjection!3982) Bool)

(assert (=> b!1184547 (= e!760774 (and tp!337701 (inv!15690 (tag!2337 (h!17273 rules!4386))) (inv!15693 (transformation!2075 (h!17273 rules!4386))) e!760764))))

(declare-fun b!1184548 () Bool)

(declare-datatypes ((IArray!7783 0))(
  ( (IArray!7784 (innerList!3949 List!11897)) )
))
(declare-datatypes ((Conc!3889 0))(
  ( (Node!3889 (left!10340 Conc!3889) (right!10670 Conc!3889) (csize!8008 Int) (cheight!4100 Int)) (Leaf!5957 (xs!6594 IArray!7783) (csize!8009 Int)) (Empty!3889) )
))
(declare-datatypes ((BalanceConc!7800 0))(
  ( (BalanceConc!7801 (c!197025 Conc!3889)) )
))
(declare-fun rulesProduceEachTokenIndividually!770 (LexerInterface!1770 List!11896 BalanceConc!7800) Bool)

(declare-fun seqFromList!1536 (List!11897) BalanceConc!7800)

(assert (=> b!1184548 (= e!760771 (rulesProduceEachTokenIndividually!770 thiss!27592 rules!4386 (seqFromList!1536 lt!407598)))))

(assert (=> b!1184549 (= e!760764 (and tp!337698 tp!337697))))

(declare-fun b!1184550 () Bool)

(declare-fun res!535398 () Bool)

(assert (=> b!1184550 (=> (not res!535398) (not e!760779))))

(declare-fun rulesInvariant!1644 (LexerInterface!1770 List!11896) Bool)

(assert (=> b!1184550 (= res!535398 (rulesInvariant!1644 thiss!27592 rules!4386))))

(declare-fun b!1184551 () Bool)

(declare-fun res!535403 () Bool)

(assert (=> b!1184551 (=> (not res!535403) (not e!760779))))

(assert (=> b!1184551 (= res!535403 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1184552 () Bool)

(assert (=> b!1184552 (= e!760775 e!760778)))

(declare-fun res!535390 () Bool)

(assert (=> b!1184552 (=> (not res!535390) (not e!760778))))

(assert (=> b!1184552 (= res!535390 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601)))))

(declare-fun e!760768 () Bool)

(assert (=> b!1184553 (= e!760768 (and tp!337695 tp!337702))))

(declare-fun res!535396 () Bool)

(assert (=> start!104986 (=> (not res!535396) (not e!760779))))

(assert (=> start!104986 (= res!535396 ((_ is Lexer!1768) thiss!27592))))

(assert (=> start!104986 e!760779))

(assert (=> start!104986 true))

(assert (=> start!104986 e!760770))

(declare-fun e!760780 () Bool)

(assert (=> start!104986 e!760780))

(declare-fun b!1184554 () Bool)

(declare-fun res!535400 () Bool)

(assert (=> b!1184554 (=> (not res!535400) (not e!760779))))

(declare-fun isEmpty!7144 (List!11896) Bool)

(assert (=> b!1184554 (= res!535400 (not (isEmpty!7144 rules!4386)))))

(declare-fun b!1184555 () Bool)

(declare-fun e!760772 () Bool)

(declare-fun tp!337699 () Bool)

(assert (=> b!1184555 (= e!760772 (and tp!337699 (inv!15690 (tag!2337 (rule!3496 (h!17274 l!6534)))) (inv!15693 (transformation!2075 (rule!3496 (h!17274 l!6534)))) e!760768))))

(declare-fun tp!337694 () Bool)

(declare-fun e!760769 () Bool)

(declare-fun b!1184556 () Bool)

(declare-fun inv!15694 (Token!3812) Bool)

(assert (=> b!1184556 (= e!760780 (and (inv!15694 (h!17274 l!6534)) e!760769 tp!337694))))

(declare-fun b!1184557 () Bool)

(assert (=> b!1184557 (= e!760765 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 lt!407601 rules!4386))))

(declare-fun tp!337700 () Bool)

(declare-fun b!1184558 () Bool)

(declare-fun inv!21 (TokenValue!2141) Bool)

(assert (=> b!1184558 (= e!760769 (and (inv!21 (value!67194 (h!17274 l!6534))) e!760772 tp!337700))))

(assert (= (and start!104986 res!535396) b!1184554))

(assert (= (and b!1184554 res!535400) b!1184550))

(assert (= (and b!1184550 res!535398) b!1184538))

(assert (= (and b!1184538 res!535402) b!1184551))

(assert (= (and b!1184551 res!535403) b!1184542))

(assert (= (and b!1184542 res!535391) b!1184539))

(assert (= (and b!1184539 res!535393) b!1184545))

(assert (= (and b!1184545 res!535395) b!1184544))

(assert (= (and b!1184544 (not res!535397)) b!1184552))

(assert (= (and b!1184552 res!535390) b!1184543))

(assert (= (and b!1184544 res!535399) b!1184557))

(assert (= (and b!1184544 (not res!535392)) b!1184541))

(assert (= (and b!1184541 res!535394) b!1184546))

(assert (= (and b!1184544 (not res!535401)) b!1184548))

(assert (= b!1184547 b!1184549))

(assert (= b!1184540 b!1184547))

(assert (= (and start!104986 ((_ is Cons!11872) rules!4386)) b!1184540))

(assert (= b!1184555 b!1184553))

(assert (= b!1184558 b!1184555))

(assert (= b!1184556 b!1184558))

(assert (= (and start!104986 ((_ is Cons!11873) l!6534)) b!1184556))

(declare-fun m!1360281 () Bool)

(assert (=> b!1184558 m!1360281))

(declare-fun m!1360283 () Bool)

(assert (=> b!1184555 m!1360283))

(declare-fun m!1360285 () Bool)

(assert (=> b!1184555 m!1360285))

(declare-fun m!1360287 () Bool)

(assert (=> b!1184541 m!1360287))

(declare-fun m!1360289 () Bool)

(assert (=> b!1184550 m!1360289))

(declare-fun m!1360291 () Bool)

(assert (=> b!1184556 m!1360291))

(declare-fun m!1360293 () Bool)

(assert (=> b!1184547 m!1360293))

(declare-fun m!1360295 () Bool)

(assert (=> b!1184547 m!1360295))

(declare-fun m!1360297 () Bool)

(assert (=> b!1184548 m!1360297))

(assert (=> b!1184548 m!1360297))

(declare-fun m!1360299 () Bool)

(assert (=> b!1184548 m!1360299))

(declare-fun m!1360301 () Bool)

(assert (=> b!1184557 m!1360301))

(declare-fun m!1360303 () Bool)

(assert (=> b!1184538 m!1360303))

(declare-fun m!1360305 () Bool)

(assert (=> b!1184543 m!1360305))

(declare-fun m!1360307 () Bool)

(assert (=> b!1184551 m!1360307))

(declare-fun m!1360309 () Bool)

(assert (=> b!1184552 m!1360309))

(declare-fun m!1360311 () Bool)

(assert (=> b!1184546 m!1360311))

(declare-fun m!1360313 () Bool)

(assert (=> b!1184545 m!1360313))

(declare-fun m!1360315 () Bool)

(assert (=> b!1184539 m!1360315))

(declare-fun m!1360317 () Bool)

(assert (=> b!1184544 m!1360317))

(declare-fun m!1360319 () Bool)

(assert (=> b!1184544 m!1360319))

(declare-fun m!1360321 () Bool)

(assert (=> b!1184544 m!1360321))

(declare-fun m!1360323 () Bool)

(assert (=> b!1184544 m!1360323))

(declare-fun m!1360325 () Bool)

(assert (=> b!1184544 m!1360325))

(declare-fun m!1360327 () Bool)

(assert (=> b!1184544 m!1360327))

(declare-fun m!1360329 () Bool)

(assert (=> b!1184544 m!1360329))

(declare-fun m!1360331 () Bool)

(assert (=> b!1184544 m!1360331))

(declare-fun m!1360333 () Bool)

(assert (=> b!1184544 m!1360333))

(declare-fun m!1360335 () Bool)

(assert (=> b!1184544 m!1360335))

(declare-fun m!1360337 () Bool)

(assert (=> b!1184544 m!1360337))

(declare-fun m!1360339 () Bool)

(assert (=> b!1184544 m!1360339))

(declare-fun m!1360341 () Bool)

(assert (=> b!1184544 m!1360341))

(declare-fun m!1360343 () Bool)

(assert (=> b!1184554 m!1360343))

(check-sat (not b!1184552) (not b!1184541) (not b!1184554) (not b!1184548) (not b_next!29121) (not b_next!29123) (not b!1184558) (not b!1184538) (not b!1184547) b_and!81463 (not b!1184555) (not b_next!29119) (not b!1184545) (not b!1184551) (not b!1184550) (not b_next!29117) (not b!1184567) b_and!81465 (not b!1184557) (not b!1184546) (not b!1184539) (not b!1184544) b_and!81467 (not b!1184556) (not b!1184543) b_and!81461 (not b!1184540))
(check-sat (not b_next!29119) (not b_next!29117) b_and!81465 (not b_next!29121) b_and!81467 b_and!81461 (not b_next!29123) b_and!81463)
(get-model)

(declare-fun d!338730 () Bool)

(declare-fun res!535436 () Bool)

(declare-fun e!760821 () Bool)

(assert (=> d!338730 (=> res!535436 e!760821)))

(assert (=> d!338730 (= res!535436 (or (not ((_ is Cons!11873) (t!111733 l!6534))) (not ((_ is Cons!11873) (t!111733 (t!111733 l!6534))))))))

(assert (=> d!338730 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (t!111733 l!6534) rules!4386) e!760821)))

(declare-fun b!1184607 () Bool)

(declare-fun e!760820 () Bool)

(assert (=> b!1184607 (= e!760821 e!760820)))

(declare-fun res!535437 () Bool)

(assert (=> b!1184607 (=> (not res!535437) (not e!760820))))

(declare-fun separableTokensPredicate!158 (LexerInterface!1770 Token!3812 Token!3812 List!11896) Bool)

(assert (=> b!1184607 (= res!535437 (separableTokensPredicate!158 thiss!27592 (h!17274 (t!111733 l!6534)) (h!17274 (t!111733 (t!111733 l!6534))) rules!4386))))

(declare-fun lt!407652 () Unit!18194)

(declare-fun Unit!18202 () Unit!18194)

(assert (=> b!1184607 (= lt!407652 Unit!18202)))

(declare-fun size!9359 (BalanceConc!7798) Int)

(declare-fun charsOf!1096 (Token!3812) BalanceConc!7798)

(assert (=> b!1184607 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534))))) 0)))

(declare-fun lt!407651 () Unit!18194)

(declare-fun Unit!18203 () Unit!18194)

(assert (=> b!1184607 (= lt!407651 Unit!18203)))

(assert (=> b!1184607 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 l!6534))))))

(declare-fun lt!407649 () Unit!18194)

(declare-fun Unit!18204 () Unit!18194)

(assert (=> b!1184607 (= lt!407649 Unit!18204)))

(assert (=> b!1184607 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(declare-fun lt!407650 () Unit!18194)

(declare-fun lt!407654 () Unit!18194)

(assert (=> b!1184607 (= lt!407650 lt!407654)))

(assert (=> b!1184607 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 l!6534))))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 (LexerInterface!1770 List!11896 List!11897 Token!3812) Unit!18194)

(assert (=> b!1184607 (= lt!407654 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 (t!111733 l!6534)))))))

(declare-fun lt!407648 () Unit!18194)

(declare-fun lt!407653 () Unit!18194)

(assert (=> b!1184607 (= lt!407648 lt!407653)))

(assert (=> b!1184607 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(assert (=> b!1184607 (= lt!407653 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1184608 () Bool)

(assert (=> b!1184608 (= e!760820 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))) rules!4386))))

(assert (= (and d!338730 (not res!535436)) b!1184607))

(assert (= (and b!1184607 res!535437) b!1184608))

(declare-fun m!1360393 () Bool)

(assert (=> b!1184607 m!1360393))

(declare-fun m!1360395 () Bool)

(assert (=> b!1184607 m!1360395))

(declare-fun m!1360397 () Bool)

(assert (=> b!1184607 m!1360397))

(declare-fun m!1360399 () Bool)

(assert (=> b!1184607 m!1360399))

(assert (=> b!1184607 m!1360399))

(declare-fun m!1360401 () Bool)

(assert (=> b!1184607 m!1360401))

(declare-fun m!1360403 () Bool)

(assert (=> b!1184607 m!1360403))

(declare-fun m!1360405 () Bool)

(assert (=> b!1184607 m!1360405))

(declare-fun m!1360407 () Bool)

(assert (=> b!1184608 m!1360407))

(assert (=> b!1184545 d!338730))

(declare-fun d!338744 () Bool)

(declare-fun res!535442 () Bool)

(declare-fun e!760824 () Bool)

(assert (=> d!338744 (=> (not res!535442) (not e!760824))))

(declare-fun isEmpty!7147 (List!11894) Bool)

(assert (=> d!338744 (= res!535442 (not (isEmpty!7147 (originalCharacters!2629 (h!17274 l!6534)))))))

(assert (=> d!338744 (= (inv!15694 (h!17274 l!6534)) e!760824)))

(declare-fun b!1184613 () Bool)

(declare-fun res!535443 () Bool)

(assert (=> b!1184613 (=> (not res!535443) (not e!760824))))

(declare-fun list!4361 (BalanceConc!7798) List!11894)

(declare-fun dynLambda!5289 (Int TokenValue!2141) BalanceConc!7798)

(assert (=> b!1184613 (= res!535443 (= (originalCharacters!2629 (h!17274 l!6534)) (list!4361 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(declare-fun b!1184614 () Bool)

(declare-fun size!9360 (List!11894) Int)

(assert (=> b!1184614 (= e!760824 (= (size!9355 (h!17274 l!6534)) (size!9360 (originalCharacters!2629 (h!17274 l!6534)))))))

(assert (= (and d!338744 res!535442) b!1184613))

(assert (= (and b!1184613 res!535443) b!1184614))

(declare-fun b_lambda!35445 () Bool)

(assert (=> (not b_lambda!35445) (not b!1184613)))

(declare-fun t!111741 () Bool)

(declare-fun tb!66225 () Bool)

(assert (=> (and b!1184549 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111741) tb!66225))

(declare-fun b!1184619 () Bool)

(declare-fun e!760827 () Bool)

(declare-fun tp!337708 () Bool)

(declare-fun inv!15697 (Conc!3888) Bool)

(assert (=> b!1184619 (= e!760827 (and (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))) tp!337708))))

(declare-fun result!79508 () Bool)

(declare-fun inv!15698 (BalanceConc!7798) Bool)

(assert (=> tb!66225 (= result!79508 (and (inv!15698 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))) e!760827))))

(assert (= tb!66225 b!1184619))

(declare-fun m!1360409 () Bool)

(assert (=> b!1184619 m!1360409))

(declare-fun m!1360411 () Bool)

(assert (=> tb!66225 m!1360411))

(assert (=> b!1184613 t!111741))

(declare-fun b_and!81473 () Bool)

(assert (= b_and!81463 (and (=> t!111741 result!79508) b_and!81473)))

(declare-fun t!111743 () Bool)

(declare-fun tb!66227 () Bool)

(assert (=> (and b!1184553 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111743) tb!66227))

(declare-fun result!79512 () Bool)

(assert (= result!79512 result!79508))

(assert (=> b!1184613 t!111743))

(declare-fun b_and!81475 () Bool)

(assert (= b_and!81467 (and (=> t!111743 result!79512) b_and!81475)))

(declare-fun m!1360413 () Bool)

(assert (=> d!338744 m!1360413))

(declare-fun m!1360415 () Bool)

(assert (=> b!1184613 m!1360415))

(assert (=> b!1184613 m!1360415))

(declare-fun m!1360417 () Bool)

(assert (=> b!1184613 m!1360417))

(declare-fun m!1360419 () Bool)

(assert (=> b!1184614 m!1360419))

(assert (=> b!1184556 d!338744))

(declare-fun d!338746 () Bool)

(declare-fun res!535444 () Bool)

(declare-fun e!760829 () Bool)

(assert (=> d!338746 (=> res!535444 e!760829)))

(assert (=> d!338746 (= res!535444 (or (not ((_ is Cons!11873) lt!407601)) (not ((_ is Cons!11873) (t!111733 lt!407601)))))))

(assert (=> d!338746 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 lt!407601 rules!4386) e!760829)))

(declare-fun b!1184620 () Bool)

(declare-fun e!760828 () Bool)

(assert (=> b!1184620 (= e!760829 e!760828)))

(declare-fun res!535445 () Bool)

(assert (=> b!1184620 (=> (not res!535445) (not e!760828))))

(assert (=> b!1184620 (= res!535445 (separableTokensPredicate!158 thiss!27592 (h!17274 lt!407601) (h!17274 (t!111733 lt!407601)) rules!4386))))

(declare-fun lt!407659 () Unit!18194)

(declare-fun Unit!18205 () Unit!18194)

(assert (=> b!1184620 (= lt!407659 Unit!18205)))

(assert (=> b!1184620 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 lt!407601)))) 0)))

(declare-fun lt!407658 () Unit!18194)

(declare-fun Unit!18206 () Unit!18194)

(assert (=> b!1184620 (= lt!407658 Unit!18206)))

(assert (=> b!1184620 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601)))))

(declare-fun lt!407656 () Unit!18194)

(declare-fun Unit!18207 () Unit!18194)

(assert (=> b!1184620 (= lt!407656 Unit!18207)))

(assert (=> b!1184620 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601))))

(declare-fun lt!407657 () Unit!18194)

(declare-fun lt!407661 () Unit!18194)

(assert (=> b!1184620 (= lt!407657 lt!407661)))

(assert (=> b!1184620 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601)))))

(assert (=> b!1184620 (= lt!407661 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 lt!407601 (h!17274 (t!111733 lt!407601))))))

(declare-fun lt!407655 () Unit!18194)

(declare-fun lt!407660 () Unit!18194)

(assert (=> b!1184620 (= lt!407655 lt!407660)))

(assert (=> b!1184620 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601))))

(assert (=> b!1184620 (= lt!407660 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 lt!407601 (h!17274 lt!407601)))))

(declare-fun b!1184621 () Bool)

(assert (=> b!1184621 (= e!760828 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))) rules!4386))))

(assert (= (and d!338746 (not res!535444)) b!1184620))

(assert (= (and b!1184620 res!535445) b!1184621))

(assert (=> b!1184620 m!1360309))

(declare-fun m!1360421 () Bool)

(assert (=> b!1184620 m!1360421))

(declare-fun m!1360423 () Bool)

(assert (=> b!1184620 m!1360423))

(declare-fun m!1360425 () Bool)

(assert (=> b!1184620 m!1360425))

(assert (=> b!1184620 m!1360425))

(declare-fun m!1360427 () Bool)

(assert (=> b!1184620 m!1360427))

(declare-fun m!1360429 () Bool)

(assert (=> b!1184620 m!1360429))

(declare-fun m!1360431 () Bool)

(assert (=> b!1184620 m!1360431))

(declare-fun m!1360433 () Bool)

(assert (=> b!1184621 m!1360433))

(assert (=> b!1184557 d!338746))

(declare-fun bs!287244 () Bool)

(declare-fun d!338748 () Bool)

(assert (= bs!287244 (and d!338748 b!1184544)))

(declare-fun lambda!48826 () Int)

(assert (=> bs!287244 (= (= thiss!27592 Lexer!1768) (= lambda!48826 lambda!48815))))

(declare-fun b!1184636 () Bool)

(declare-fun e!760844 () Bool)

(assert (=> b!1184636 (= e!760844 true)))

(declare-fun b!1184635 () Bool)

(declare-fun e!760843 () Bool)

(assert (=> b!1184635 (= e!760843 e!760844)))

(declare-fun b!1184634 () Bool)

(declare-fun e!760842 () Bool)

(assert (=> b!1184634 (= e!760842 e!760843)))

(assert (=> d!338748 e!760842))

(assert (= b!1184635 b!1184636))

(assert (= b!1184634 b!1184635))

(assert (= (and d!338748 ((_ is Cons!11872) rules!4386)) b!1184634))

(assert (=> b!1184636 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48826))))

(assert (=> b!1184636 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48826))))

(assert (=> d!338748 true))

(declare-fun lt!407667 () Bool)

(assert (=> d!338748 (= lt!407667 (forall!3142 (t!111733 lt!407598) lambda!48826))))

(declare-fun e!760841 () Bool)

(assert (=> d!338748 (= lt!407667 e!760841)))

(declare-fun res!535453 () Bool)

(assert (=> d!338748 (=> res!535453 e!760841)))

(assert (=> d!338748 (= res!535453 (not ((_ is Cons!11873) (t!111733 lt!407598))))))

(assert (=> d!338748 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338748 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407598)) lt!407667)))

(declare-fun b!1184632 () Bool)

(declare-fun e!760840 () Bool)

(assert (=> b!1184632 (= e!760841 e!760840)))

(declare-fun res!535454 () Bool)

(assert (=> b!1184632 (=> (not res!535454) (not e!760840))))

(assert (=> b!1184632 (= res!535454 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407598))))))

(declare-fun b!1184633 () Bool)

(assert (=> b!1184633 (= e!760840 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 lt!407598))))))

(assert (= (and d!338748 (not res!535453)) b!1184632))

(assert (= (and b!1184632 res!535454) b!1184633))

(declare-fun m!1360445 () Bool)

(assert (=> d!338748 m!1360445))

(assert (=> d!338748 m!1360343))

(declare-fun m!1360447 () Bool)

(assert (=> b!1184632 m!1360447))

(declare-fun m!1360449 () Bool)

(assert (=> b!1184633 m!1360449))

(assert (=> b!1184546 d!338748))

(declare-fun d!338754 () Bool)

(assert (=> d!338754 (= (inv!15690 (tag!2337 (h!17273 rules!4386))) (= (mod (str.len (value!67193 (tag!2337 (h!17273 rules!4386)))) 2) 0))))

(assert (=> b!1184547 d!338754))

(declare-fun d!338756 () Bool)

(declare-fun res!535457 () Bool)

(declare-fun e!760847 () Bool)

(assert (=> d!338756 (=> (not res!535457) (not e!760847))))

(declare-fun semiInverseModEq!746 (Int Int) Bool)

(assert (=> d!338756 (= res!535457 (semiInverseModEq!746 (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toValue!3188 (transformation!2075 (h!17273 rules!4386)))))))

(assert (=> d!338756 (= (inv!15693 (transformation!2075 (h!17273 rules!4386))) e!760847)))

(declare-fun b!1184641 () Bool)

(declare-fun equivClasses!713 (Int Int) Bool)

(assert (=> b!1184641 (= e!760847 (equivClasses!713 (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toValue!3188 (transformation!2075 (h!17273 rules!4386)))))))

(assert (= (and d!338756 res!535457) b!1184641))

(declare-fun m!1360451 () Bool)

(assert (=> d!338756 m!1360451))

(declare-fun m!1360453 () Bool)

(assert (=> b!1184641 m!1360453))

(assert (=> b!1184547 d!338756))

(declare-fun b!1184652 () Bool)

(declare-fun e!760854 () Bool)

(declare-fun e!760856 () Bool)

(assert (=> b!1184652 (= e!760854 e!760856)))

(declare-fun c!197030 () Bool)

(assert (=> b!1184652 (= c!197030 ((_ is IntegerValue!6424) (value!67194 (h!17274 l!6534))))))

(declare-fun b!1184654 () Bool)

(declare-fun inv!16 (TokenValue!2141) Bool)

(assert (=> b!1184654 (= e!760854 (inv!16 (value!67194 (h!17274 l!6534))))))

(declare-fun b!1184655 () Bool)

(declare-fun inv!17 (TokenValue!2141) Bool)

(assert (=> b!1184655 (= e!760856 (inv!17 (value!67194 (h!17274 l!6534))))))

(declare-fun b!1184656 () Bool)

(declare-fun e!760855 () Bool)

(declare-fun inv!15 (TokenValue!2141) Bool)

(assert (=> b!1184656 (= e!760855 (inv!15 (value!67194 (h!17274 l!6534))))))

(declare-fun b!1184653 () Bool)

(declare-fun res!535460 () Bool)

(assert (=> b!1184653 (=> res!535460 e!760855)))

(assert (=> b!1184653 (= res!535460 (not ((_ is IntegerValue!6425) (value!67194 (h!17274 l!6534)))))))

(assert (=> b!1184653 (= e!760856 e!760855)))

(declare-fun d!338758 () Bool)

(declare-fun c!197031 () Bool)

(assert (=> d!338758 (= c!197031 ((_ is IntegerValue!6423) (value!67194 (h!17274 l!6534))))))

(assert (=> d!338758 (= (inv!21 (value!67194 (h!17274 l!6534))) e!760854)))

(assert (= (and d!338758 c!197031) b!1184654))

(assert (= (and d!338758 (not c!197031)) b!1184652))

(assert (= (and b!1184652 c!197030) b!1184655))

(assert (= (and b!1184652 (not c!197030)) b!1184653))

(assert (= (and b!1184653 (not res!535460)) b!1184656))

(declare-fun m!1360455 () Bool)

(assert (=> b!1184654 m!1360455))

(declare-fun m!1360457 () Bool)

(assert (=> b!1184655 m!1360457))

(declare-fun m!1360459 () Bool)

(assert (=> b!1184656 m!1360459))

(assert (=> b!1184558 d!338758))

(declare-fun bs!287267 () Bool)

(declare-fun d!338760 () Bool)

(assert (= bs!287267 (and d!338760 b!1184544)))

(declare-fun lambda!48835 () Int)

(assert (=> bs!287267 (= (= thiss!27592 Lexer!1768) (= lambda!48835 lambda!48815))))

(declare-fun bs!287268 () Bool)

(assert (= bs!287268 (and d!338760 d!338748)))

(assert (=> bs!287268 (= lambda!48835 lambda!48826)))

(declare-fun b!1184715 () Bool)

(declare-fun e!760912 () Bool)

(assert (=> b!1184715 (= e!760912 true)))

(declare-fun b!1184714 () Bool)

(declare-fun e!760911 () Bool)

(assert (=> b!1184714 (= e!760911 e!760912)))

(declare-fun b!1184713 () Bool)

(declare-fun e!760910 () Bool)

(assert (=> b!1184713 (= e!760910 e!760911)))

(assert (=> d!338760 e!760910))

(assert (= b!1184714 b!1184715))

(assert (= b!1184713 b!1184714))

(assert (= (and d!338760 ((_ is Cons!11872) rules!4386)) b!1184713))

(assert (=> b!1184715 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48835))))

(assert (=> b!1184715 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48835))))

(assert (=> d!338760 true))

(declare-fun e!760909 () Bool)

(assert (=> d!338760 e!760909))

(declare-fun res!535504 () Bool)

(assert (=> d!338760 (=> (not res!535504) (not e!760909))))

(declare-fun lt!407688 () Bool)

(declare-fun list!4362 (BalanceConc!7800) List!11897)

(assert (=> d!338760 (= res!535504 (= lt!407688 (forall!3142 (list!4362 (seqFromList!1536 lt!407598)) lambda!48835)))))

(declare-fun forall!3144 (BalanceConc!7800 Int) Bool)

(assert (=> d!338760 (= lt!407688 (forall!3144 (seqFromList!1536 lt!407598) lambda!48835))))

(assert (=> d!338760 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338760 (= (rulesProduceEachTokenIndividually!770 thiss!27592 rules!4386 (seqFromList!1536 lt!407598)) lt!407688)))

(declare-fun b!1184712 () Bool)

(assert (=> b!1184712 (= e!760909 (= lt!407688 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (list!4362 (seqFromList!1536 lt!407598)))))))

(assert (= (and d!338760 res!535504) b!1184712))

(assert (=> d!338760 m!1360297))

(declare-fun m!1360525 () Bool)

(assert (=> d!338760 m!1360525))

(assert (=> d!338760 m!1360525))

(declare-fun m!1360527 () Bool)

(assert (=> d!338760 m!1360527))

(assert (=> d!338760 m!1360297))

(declare-fun m!1360529 () Bool)

(assert (=> d!338760 m!1360529))

(assert (=> d!338760 m!1360343))

(assert (=> b!1184712 m!1360297))

(assert (=> b!1184712 m!1360525))

(assert (=> b!1184712 m!1360525))

(declare-fun m!1360531 () Bool)

(assert (=> b!1184712 m!1360531))

(assert (=> b!1184548 d!338760))

(declare-fun d!338790 () Bool)

(declare-fun fromListB!683 (List!11897) BalanceConc!7800)

(assert (=> d!338790 (= (seqFromList!1536 lt!407598) (fromListB!683 lt!407598))))

(declare-fun bs!287269 () Bool)

(assert (= bs!287269 d!338790))

(declare-fun m!1360533 () Bool)

(assert (=> bs!287269 m!1360533))

(assert (=> b!1184548 d!338790))

(declare-fun bs!287270 () Bool)

(declare-fun d!338792 () Bool)

(assert (= bs!287270 (and d!338792 b!1184544)))

(declare-fun lambda!48836 () Int)

(assert (=> bs!287270 (= (= thiss!27592 Lexer!1768) (= lambda!48836 lambda!48815))))

(declare-fun bs!287271 () Bool)

(assert (= bs!287271 (and d!338792 d!338748)))

(assert (=> bs!287271 (= lambda!48836 lambda!48826)))

(declare-fun bs!287272 () Bool)

(assert (= bs!287272 (and d!338792 d!338760)))

(assert (=> bs!287272 (= lambda!48836 lambda!48835)))

(declare-fun b!1184720 () Bool)

(declare-fun e!760917 () Bool)

(assert (=> b!1184720 (= e!760917 true)))

(declare-fun b!1184719 () Bool)

(declare-fun e!760916 () Bool)

(assert (=> b!1184719 (= e!760916 e!760917)))

(declare-fun b!1184718 () Bool)

(declare-fun e!760915 () Bool)

(assert (=> b!1184718 (= e!760915 e!760916)))

(assert (=> d!338792 e!760915))

(assert (= b!1184719 b!1184720))

(assert (= b!1184718 b!1184719))

(assert (= (and d!338792 ((_ is Cons!11872) rules!4386)) b!1184718))

(assert (=> b!1184720 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48836))))

(assert (=> b!1184720 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48836))))

(assert (=> d!338792 true))

(declare-fun lt!407689 () Bool)

(assert (=> d!338792 (= lt!407689 (forall!3142 l!6534 lambda!48836))))

(declare-fun e!760914 () Bool)

(assert (=> d!338792 (= lt!407689 e!760914)))

(declare-fun res!535505 () Bool)

(assert (=> d!338792 (=> res!535505 e!760914)))

(assert (=> d!338792 (= res!535505 (not ((_ is Cons!11873) l!6534)))))

(assert (=> d!338792 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338792 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 l!6534) lt!407689)))

(declare-fun b!1184716 () Bool)

(declare-fun e!760913 () Bool)

(assert (=> b!1184716 (= e!760914 e!760913)))

(declare-fun res!535506 () Bool)

(assert (=> b!1184716 (=> (not res!535506) (not e!760913))))

(assert (=> b!1184716 (= res!535506 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534)))))

(declare-fun b!1184717 () Bool)

(assert (=> b!1184717 (= e!760913 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 l!6534)))))

(assert (= (and d!338792 (not res!535505)) b!1184716))

(assert (= (and b!1184716 res!535506) b!1184717))

(declare-fun m!1360535 () Bool)

(assert (=> d!338792 m!1360535))

(assert (=> d!338792 m!1360343))

(declare-fun m!1360537 () Bool)

(assert (=> b!1184716 m!1360537))

(assert (=> b!1184717 m!1360315))

(assert (=> b!1184538 d!338792))

(declare-fun bs!287273 () Bool)

(declare-fun d!338794 () Bool)

(assert (= bs!287273 (and d!338794 b!1184544)))

(declare-fun lambda!48837 () Int)

(assert (=> bs!287273 (= (= thiss!27592 Lexer!1768) (= lambda!48837 lambda!48815))))

(declare-fun bs!287274 () Bool)

(assert (= bs!287274 (and d!338794 d!338748)))

(assert (=> bs!287274 (= lambda!48837 lambda!48826)))

(declare-fun bs!287275 () Bool)

(assert (= bs!287275 (and d!338794 d!338760)))

(assert (=> bs!287275 (= lambda!48837 lambda!48835)))

(declare-fun bs!287276 () Bool)

(assert (= bs!287276 (and d!338794 d!338792)))

(assert (=> bs!287276 (= lambda!48837 lambda!48836)))

(declare-fun b!1184725 () Bool)

(declare-fun e!760922 () Bool)

(assert (=> b!1184725 (= e!760922 true)))

(declare-fun b!1184724 () Bool)

(declare-fun e!760921 () Bool)

(assert (=> b!1184724 (= e!760921 e!760922)))

(declare-fun b!1184723 () Bool)

(declare-fun e!760920 () Bool)

(assert (=> b!1184723 (= e!760920 e!760921)))

(assert (=> d!338794 e!760920))

(assert (= b!1184724 b!1184725))

(assert (= b!1184723 b!1184724))

(assert (= (and d!338794 ((_ is Cons!11872) rules!4386)) b!1184723))

(assert (=> b!1184725 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48837))))

(assert (=> b!1184725 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48837))))

(assert (=> d!338794 true))

(declare-fun lt!407690 () Bool)

(assert (=> d!338794 (= lt!407690 (forall!3142 (t!111733 l!6534) lambda!48837))))

(declare-fun e!760919 () Bool)

(assert (=> d!338794 (= lt!407690 e!760919)))

(declare-fun res!535507 () Bool)

(assert (=> d!338794 (=> res!535507 e!760919)))

(assert (=> d!338794 (= res!535507 (not ((_ is Cons!11873) (t!111733 l!6534))))))

(assert (=> d!338794 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338794 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 l!6534)) lt!407690)))

(declare-fun b!1184721 () Bool)

(declare-fun e!760918 () Bool)

(assert (=> b!1184721 (= e!760919 e!760918)))

(declare-fun res!535508 () Bool)

(assert (=> b!1184721 (=> (not res!535508) (not e!760918))))

(assert (=> b!1184721 (= res!535508 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534))))))

(declare-fun b!1184722 () Bool)

(assert (=> b!1184722 (= e!760918 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 l!6534))))))

(assert (= (and d!338794 (not res!535507)) b!1184721))

(assert (= (and b!1184721 res!535508) b!1184722))

(declare-fun m!1360539 () Bool)

(assert (=> d!338794 m!1360539))

(assert (=> d!338794 m!1360343))

(assert (=> b!1184721 m!1360393))

(declare-fun m!1360541 () Bool)

(assert (=> b!1184722 m!1360541))

(assert (=> b!1184539 d!338794))

(declare-fun d!338796 () Bool)

(declare-fun res!535511 () Bool)

(declare-fun e!760925 () Bool)

(assert (=> d!338796 (=> (not res!535511) (not e!760925))))

(declare-fun rulesValid!735 (LexerInterface!1770 List!11896) Bool)

(assert (=> d!338796 (= res!535511 (rulesValid!735 thiss!27592 rules!4386))))

(assert (=> d!338796 (= (rulesInvariant!1644 thiss!27592 rules!4386) e!760925)))

(declare-fun b!1184728 () Bool)

(declare-datatypes ((List!11899 0))(
  ( (Nil!11875) (Cons!11875 (h!17276 String!14373) (t!111769 List!11899)) )
))
(declare-fun noDuplicateTag!735 (LexerInterface!1770 List!11896 List!11899) Bool)

(assert (=> b!1184728 (= e!760925 (noDuplicateTag!735 thiss!27592 rules!4386 Nil!11875))))

(assert (= (and d!338796 res!535511) b!1184728))

(declare-fun m!1360543 () Bool)

(assert (=> d!338796 m!1360543))

(declare-fun m!1360545 () Bool)

(assert (=> b!1184728 m!1360545))

(assert (=> b!1184550 d!338796))

(declare-fun d!338798 () Bool)

(declare-fun res!535512 () Bool)

(declare-fun e!760927 () Bool)

(assert (=> d!338798 (=> res!535512 e!760927)))

(assert (=> d!338798 (= res!535512 (or (not ((_ is Cons!11873) l!6534)) (not ((_ is Cons!11873) (t!111733 l!6534)))))))

(assert (=> d!338798 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 l!6534 rules!4386) e!760927)))

(declare-fun b!1184729 () Bool)

(declare-fun e!760926 () Bool)

(assert (=> b!1184729 (= e!760927 e!760926)))

(declare-fun res!535513 () Bool)

(assert (=> b!1184729 (=> (not res!535513) (not e!760926))))

(assert (=> b!1184729 (= res!535513 (separableTokensPredicate!158 thiss!27592 (h!17274 l!6534) (h!17274 (t!111733 l!6534)) rules!4386))))

(declare-fun lt!407695 () Unit!18194)

(declare-fun Unit!18211 () Unit!18194)

(assert (=> b!1184729 (= lt!407695 Unit!18211)))

(assert (=> b!1184729 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 l!6534)))) 0)))

(declare-fun lt!407694 () Unit!18194)

(declare-fun Unit!18212 () Unit!18194)

(assert (=> b!1184729 (= lt!407694 Unit!18212)))

(assert (=> b!1184729 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(declare-fun lt!407692 () Unit!18194)

(declare-fun Unit!18213 () Unit!18194)

(assert (=> b!1184729 (= lt!407692 Unit!18213)))

(assert (=> b!1184729 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534))))

(declare-fun lt!407693 () Unit!18194)

(declare-fun lt!407697 () Unit!18194)

(assert (=> b!1184729 (= lt!407693 lt!407697)))

(assert (=> b!1184729 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(assert (=> b!1184729 (= lt!407697 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 l!6534 (h!17274 (t!111733 l!6534))))))

(declare-fun lt!407691 () Unit!18194)

(declare-fun lt!407696 () Unit!18194)

(assert (=> b!1184729 (= lt!407691 lt!407696)))

(assert (=> b!1184729 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534))))

(assert (=> b!1184729 (= lt!407696 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 l!6534 (h!17274 l!6534)))))

(declare-fun b!1184730 () Bool)

(assert (=> b!1184730 (= e!760926 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))) rules!4386))))

(assert (= (and d!338798 (not res!535512)) b!1184729))

(assert (= (and b!1184729 res!535513) b!1184730))

(assert (=> b!1184729 m!1360537))

(declare-fun m!1360547 () Bool)

(assert (=> b!1184729 m!1360547))

(declare-fun m!1360549 () Bool)

(assert (=> b!1184729 m!1360549))

(declare-fun m!1360551 () Bool)

(assert (=> b!1184729 m!1360551))

(assert (=> b!1184729 m!1360551))

(declare-fun m!1360553 () Bool)

(assert (=> b!1184729 m!1360553))

(assert (=> b!1184729 m!1360393))

(declare-fun m!1360555 () Bool)

(assert (=> b!1184729 m!1360555))

(declare-fun m!1360557 () Bool)

(assert (=> b!1184730 m!1360557))

(assert (=> b!1184551 d!338798))

(declare-fun d!338800 () Bool)

(declare-fun lt!407703 () Bool)

(declare-fun e!760932 () Bool)

(assert (=> d!338800 (= lt!407703 e!760932)))

(declare-fun res!535522 () Bool)

(assert (=> d!338800 (=> (not res!535522) (not e!760932))))

(declare-datatypes ((tuple2!12104 0))(
  ( (tuple2!12105 (_1!6899 BalanceConc!7800) (_2!6899 BalanceConc!7798)) )
))
(declare-fun lex!736 (LexerInterface!1770 List!11896 BalanceConc!7798) tuple2!12104)

(declare-fun print!673 (LexerInterface!1770 BalanceConc!7800) BalanceConc!7798)

(declare-fun singletonSeq!719 (Token!3812) BalanceConc!7800)

(assert (=> d!338800 (= res!535522 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))) (list!4362 (singletonSeq!719 (h!17274 lt!407598)))))))

(declare-fun e!760933 () Bool)

(assert (=> d!338800 (= lt!407703 e!760933)))

(declare-fun res!535520 () Bool)

(assert (=> d!338800 (=> (not res!535520) (not e!760933))))

(declare-fun lt!407702 () tuple2!12104)

(declare-fun size!9362 (BalanceConc!7800) Int)

(assert (=> d!338800 (= res!535520 (= (size!9362 (_1!6899 lt!407702)) 1))))

(assert (=> d!338800 (= lt!407702 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))))

(assert (=> d!338800 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338800 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407598)) lt!407703)))

(declare-fun b!1184737 () Bool)

(declare-fun res!535521 () Bool)

(assert (=> b!1184737 (=> (not res!535521) (not e!760933))))

(declare-fun apply!2586 (BalanceConc!7800 Int) Token!3812)

(assert (=> b!1184737 (= res!535521 (= (apply!2586 (_1!6899 lt!407702) 0) (h!17274 lt!407598)))))

(declare-fun b!1184738 () Bool)

(declare-fun isEmpty!7148 (BalanceConc!7798) Bool)

(assert (=> b!1184738 (= e!760933 (isEmpty!7148 (_2!6899 lt!407702)))))

(declare-fun b!1184739 () Bool)

(assert (=> b!1184739 (= e!760932 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))))))

(assert (= (and d!338800 res!535520) b!1184737))

(assert (= (and b!1184737 res!535521) b!1184738))

(assert (= (and d!338800 res!535522) b!1184739))

(declare-fun m!1360559 () Bool)

(assert (=> d!338800 m!1360559))

(declare-fun m!1360561 () Bool)

(assert (=> d!338800 m!1360561))

(declare-fun m!1360563 () Bool)

(assert (=> d!338800 m!1360563))

(declare-fun m!1360565 () Bool)

(assert (=> d!338800 m!1360565))

(assert (=> d!338800 m!1360563))

(assert (=> d!338800 m!1360559))

(assert (=> d!338800 m!1360563))

(declare-fun m!1360567 () Bool)

(assert (=> d!338800 m!1360567))

(assert (=> d!338800 m!1360343))

(declare-fun m!1360569 () Bool)

(assert (=> d!338800 m!1360569))

(declare-fun m!1360571 () Bool)

(assert (=> b!1184737 m!1360571))

(declare-fun m!1360573 () Bool)

(assert (=> b!1184738 m!1360573))

(assert (=> b!1184739 m!1360563))

(assert (=> b!1184739 m!1360563))

(assert (=> b!1184739 m!1360559))

(assert (=> b!1184739 m!1360559))

(assert (=> b!1184739 m!1360561))

(declare-fun m!1360575 () Bool)

(assert (=> b!1184739 m!1360575))

(assert (=> b!1184541 d!338800))

(declare-fun d!338802 () Bool)

(declare-fun lt!407705 () Bool)

(declare-fun e!760934 () Bool)

(assert (=> d!338802 (= lt!407705 e!760934)))

(declare-fun res!535525 () Bool)

(assert (=> d!338802 (=> (not res!535525) (not e!760934))))

(assert (=> d!338802 (= res!535525 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))) (list!4362 (singletonSeq!719 (h!17274 lt!407601)))))))

(declare-fun e!760935 () Bool)

(assert (=> d!338802 (= lt!407705 e!760935)))

(declare-fun res!535523 () Bool)

(assert (=> d!338802 (=> (not res!535523) (not e!760935))))

(declare-fun lt!407704 () tuple2!12104)

(assert (=> d!338802 (= res!535523 (= (size!9362 (_1!6899 lt!407704)) 1))))

(assert (=> d!338802 (= lt!407704 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))))

(assert (=> d!338802 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338802 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601)) lt!407705)))

(declare-fun b!1184740 () Bool)

(declare-fun res!535524 () Bool)

(assert (=> b!1184740 (=> (not res!535524) (not e!760935))))

(assert (=> b!1184740 (= res!535524 (= (apply!2586 (_1!6899 lt!407704) 0) (h!17274 lt!407601)))))

(declare-fun b!1184741 () Bool)

(assert (=> b!1184741 (= e!760935 (isEmpty!7148 (_2!6899 lt!407704)))))

(declare-fun b!1184742 () Bool)

(assert (=> b!1184742 (= e!760934 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))))))

(assert (= (and d!338802 res!535523) b!1184740))

(assert (= (and b!1184740 res!535524) b!1184741))

(assert (= (and d!338802 res!535525) b!1184742))

(declare-fun m!1360577 () Bool)

(assert (=> d!338802 m!1360577))

(declare-fun m!1360579 () Bool)

(assert (=> d!338802 m!1360579))

(declare-fun m!1360581 () Bool)

(assert (=> d!338802 m!1360581))

(declare-fun m!1360583 () Bool)

(assert (=> d!338802 m!1360583))

(assert (=> d!338802 m!1360581))

(assert (=> d!338802 m!1360577))

(assert (=> d!338802 m!1360581))

(declare-fun m!1360585 () Bool)

(assert (=> d!338802 m!1360585))

(assert (=> d!338802 m!1360343))

(declare-fun m!1360587 () Bool)

(assert (=> d!338802 m!1360587))

(declare-fun m!1360589 () Bool)

(assert (=> b!1184740 m!1360589))

(declare-fun m!1360591 () Bool)

(assert (=> b!1184741 m!1360591))

(assert (=> b!1184742 m!1360581))

(assert (=> b!1184742 m!1360581))

(assert (=> b!1184742 m!1360577))

(assert (=> b!1184742 m!1360577))

(assert (=> b!1184742 m!1360579))

(declare-fun m!1360593 () Bool)

(assert (=> b!1184742 m!1360593))

(assert (=> b!1184552 d!338802))

(declare-fun bs!287277 () Bool)

(declare-fun d!338804 () Bool)

(assert (= bs!287277 (and d!338804 d!338748)))

(declare-fun lambda!48838 () Int)

(assert (=> bs!287277 (= lambda!48838 lambda!48826)))

(declare-fun bs!287278 () Bool)

(assert (= bs!287278 (and d!338804 d!338760)))

(assert (=> bs!287278 (= lambda!48838 lambda!48835)))

(declare-fun bs!287279 () Bool)

(assert (= bs!287279 (and d!338804 d!338794)))

(assert (=> bs!287279 (= lambda!48838 lambda!48837)))

(declare-fun bs!287280 () Bool)

(assert (= bs!287280 (and d!338804 b!1184544)))

(assert (=> bs!287280 (= (= thiss!27592 Lexer!1768) (= lambda!48838 lambda!48815))))

(declare-fun bs!287281 () Bool)

(assert (= bs!287281 (and d!338804 d!338792)))

(assert (=> bs!287281 (= lambda!48838 lambda!48836)))

(declare-fun b!1184747 () Bool)

(declare-fun e!760940 () Bool)

(assert (=> b!1184747 (= e!760940 true)))

(declare-fun b!1184746 () Bool)

(declare-fun e!760939 () Bool)

(assert (=> b!1184746 (= e!760939 e!760940)))

(declare-fun b!1184745 () Bool)

(declare-fun e!760938 () Bool)

(assert (=> b!1184745 (= e!760938 e!760939)))

(assert (=> d!338804 e!760938))

(assert (= b!1184746 b!1184747))

(assert (= b!1184745 b!1184746))

(assert (= (and d!338804 ((_ is Cons!11872) rules!4386)) b!1184745))

(assert (=> b!1184747 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48838))))

(assert (=> b!1184747 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48838))))

(assert (=> d!338804 true))

(declare-fun lt!407706 () Bool)

(assert (=> d!338804 (= lt!407706 (forall!3142 (t!111733 lt!407601) lambda!48838))))

(declare-fun e!760937 () Bool)

(assert (=> d!338804 (= lt!407706 e!760937)))

(declare-fun res!535526 () Bool)

(assert (=> d!338804 (=> res!535526 e!760937)))

(assert (=> d!338804 (= res!535526 (not ((_ is Cons!11873) (t!111733 lt!407601))))))

(assert (=> d!338804 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338804 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407601)) lt!407706)))

(declare-fun b!1184743 () Bool)

(declare-fun e!760936 () Bool)

(assert (=> b!1184743 (= e!760937 e!760936)))

(declare-fun res!535527 () Bool)

(assert (=> b!1184743 (=> (not res!535527) (not e!760936))))

(assert (=> b!1184743 (= res!535527 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601))))))

(declare-fun b!1184744 () Bool)

(assert (=> b!1184744 (= e!760936 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 lt!407601))))))

(assert (= (and d!338804 (not res!535526)) b!1184743))

(assert (= (and b!1184743 res!535527) b!1184744))

(declare-fun m!1360595 () Bool)

(assert (=> d!338804 m!1360595))

(assert (=> d!338804 m!1360343))

(assert (=> b!1184743 m!1360429))

(declare-fun m!1360597 () Bool)

(assert (=> b!1184744 m!1360597))

(assert (=> b!1184543 d!338804))

(declare-fun d!338806 () Bool)

(assert (=> d!338806 (= (isEmpty!7144 rules!4386) ((_ is Nil!11872) rules!4386))))

(assert (=> b!1184554 d!338806))

(declare-fun d!338808 () Bool)

(assert (=> d!338808 (= (inv!15690 (tag!2337 (rule!3496 (h!17274 l!6534)))) (= (mod (str.len (value!67193 (tag!2337 (rule!3496 (h!17274 l!6534))))) 2) 0))))

(assert (=> b!1184555 d!338808))

(declare-fun d!338810 () Bool)

(declare-fun res!535528 () Bool)

(declare-fun e!760941 () Bool)

(assert (=> d!338810 (=> (not res!535528) (not e!760941))))

(assert (=> d!338810 (= res!535528 (semiInverseModEq!746 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))))))

(assert (=> d!338810 (= (inv!15693 (transformation!2075 (rule!3496 (h!17274 l!6534)))) e!760941)))

(declare-fun b!1184748 () Bool)

(assert (=> b!1184748 (= e!760941 (equivClasses!713 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))))))

(assert (= (and d!338810 res!535528) b!1184748))

(declare-fun m!1360599 () Bool)

(assert (=> d!338810 m!1360599))

(declare-fun m!1360601 () Bool)

(assert (=> b!1184748 m!1360601))

(assert (=> b!1184555 d!338810))

(declare-fun d!338812 () Bool)

(assert (=> d!338812 (subseq!329 (drop!553 l!6534 i!1621) l!6534)))

(declare-fun lt!407709 () Unit!18194)

(declare-fun choose!7665 (List!11897 Int) Unit!18194)

(assert (=> d!338812 (= lt!407709 (choose!7665 l!6534 i!1621))))

(assert (=> d!338812 (= (lemmaDropSubseq!92 l!6534 i!1621) lt!407709)))

(declare-fun bs!287282 () Bool)

(assert (= bs!287282 d!338812))

(assert (=> bs!287282 m!1360317))

(assert (=> bs!287282 m!1360317))

(declare-fun m!1360603 () Bool)

(assert (=> bs!287282 m!1360603))

(declare-fun m!1360605 () Bool)

(assert (=> bs!287282 m!1360605))

(assert (=> b!1184544 d!338812))

(declare-fun d!338814 () Bool)

(assert (=> d!338814 (forall!3142 lt!407598 lambda!48815)))

(declare-fun lt!407724 () Unit!18194)

(declare-fun choose!7666 (List!11897 List!11897 Int) Unit!18194)

(assert (=> d!338814 (= lt!407724 (choose!7666 lt!407598 l!6534 lambda!48815))))

(assert (=> d!338814 (forall!3142 l!6534 lambda!48815)))

(assert (=> d!338814 (= (lemmaForallSubseq!193 lt!407598 l!6534 lambda!48815) lt!407724)))

(declare-fun bs!287283 () Bool)

(assert (= bs!287283 d!338814))

(assert (=> bs!287283 m!1360327))

(declare-fun m!1360607 () Bool)

(assert (=> bs!287283 m!1360607))

(declare-fun m!1360609 () Bool)

(assert (=> bs!287283 m!1360609))

(assert (=> b!1184544 d!338814))

(declare-fun bs!287284 () Bool)

(declare-fun d!338816 () Bool)

(assert (= bs!287284 (and d!338816 d!338760)))

(declare-fun lambda!48839 () Int)

(assert (=> bs!287284 (= lambda!48839 lambda!48835)))

(declare-fun bs!287285 () Bool)

(assert (= bs!287285 (and d!338816 d!338794)))

(assert (=> bs!287285 (= lambda!48839 lambda!48837)))

(declare-fun bs!287286 () Bool)

(assert (= bs!287286 (and d!338816 b!1184544)))

(assert (=> bs!287286 (= (= thiss!27592 Lexer!1768) (= lambda!48839 lambda!48815))))

(declare-fun bs!287287 () Bool)

(assert (= bs!287287 (and d!338816 d!338792)))

(assert (=> bs!287287 (= lambda!48839 lambda!48836)))

(declare-fun bs!287288 () Bool)

(assert (= bs!287288 (and d!338816 d!338748)))

(assert (=> bs!287288 (= lambda!48839 lambda!48826)))

(declare-fun bs!287289 () Bool)

(assert (= bs!287289 (and d!338816 d!338804)))

(assert (=> bs!287289 (= lambda!48839 lambda!48838)))

(declare-fun b!1184759 () Bool)

(declare-fun e!760952 () Bool)

(assert (=> b!1184759 (= e!760952 true)))

(declare-fun b!1184758 () Bool)

(declare-fun e!760951 () Bool)

(assert (=> b!1184758 (= e!760951 e!760952)))

(declare-fun b!1184757 () Bool)

(declare-fun e!760950 () Bool)

(assert (=> b!1184757 (= e!760950 e!760951)))

(assert (=> d!338816 e!760950))

(assert (= b!1184758 b!1184759))

(assert (= b!1184757 b!1184758))

(assert (= (and d!338816 ((_ is Cons!11872) rules!4386)) b!1184757))

(assert (=> b!1184759 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48839))))

(assert (=> b!1184759 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48839))))

(assert (=> d!338816 true))

(declare-fun lt!407725 () Bool)

(assert (=> d!338816 (= lt!407725 (forall!3142 lt!407598 lambda!48839))))

(declare-fun e!760949 () Bool)

(assert (=> d!338816 (= lt!407725 e!760949)))

(declare-fun res!535535 () Bool)

(assert (=> d!338816 (=> res!535535 e!760949)))

(assert (=> d!338816 (= res!535535 (not ((_ is Cons!11873) lt!407598)))))

(assert (=> d!338816 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338816 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 lt!407598) lt!407725)))

(declare-fun b!1184755 () Bool)

(declare-fun e!760948 () Bool)

(assert (=> b!1184755 (= e!760949 e!760948)))

(declare-fun res!535536 () Bool)

(assert (=> b!1184755 (=> (not res!535536) (not e!760948))))

(assert (=> b!1184755 (= res!535536 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407598)))))

(declare-fun b!1184756 () Bool)

(assert (=> b!1184756 (= e!760948 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407598)))))

(assert (= (and d!338816 (not res!535535)) b!1184755))

(assert (= (and b!1184755 res!535536) b!1184756))

(declare-fun m!1360611 () Bool)

(assert (=> d!338816 m!1360611))

(assert (=> d!338816 m!1360343))

(assert (=> b!1184755 m!1360287))

(assert (=> b!1184756 m!1360311))

(assert (=> b!1184544 d!338816))

(declare-fun d!338818 () Bool)

(assert (=> d!338818 (forall!3142 lt!407601 lambda!48815)))

(declare-fun lt!407728 () Unit!18194)

(assert (=> d!338818 (= lt!407728 (choose!7666 lt!407601 (t!111733 l!6534) lambda!48815))))

(assert (=> d!338818 (forall!3142 (t!111733 l!6534) lambda!48815)))

(assert (=> d!338818 (= (lemmaForallSubseq!193 lt!407601 (t!111733 l!6534) lambda!48815) lt!407728)))

(declare-fun bs!287290 () Bool)

(assert (= bs!287290 d!338818))

(assert (=> bs!287290 m!1360323))

(declare-fun m!1360613 () Bool)

(assert (=> bs!287290 m!1360613))

(declare-fun m!1360615 () Bool)

(assert (=> bs!287290 m!1360615))

(assert (=> b!1184544 d!338818))

(declare-fun d!338820 () Bool)

(declare-fun res!535543 () Bool)

(declare-fun e!760959 () Bool)

(assert (=> d!338820 (=> res!535543 e!760959)))

(assert (=> d!338820 (= res!535543 ((_ is Nil!11873) lt!407601))))

(assert (=> d!338820 (= (forall!3142 lt!407601 lambda!48815) e!760959)))

(declare-fun b!1184766 () Bool)

(declare-fun e!760960 () Bool)

(assert (=> b!1184766 (= e!760959 e!760960)))

(declare-fun res!535544 () Bool)

(assert (=> b!1184766 (=> (not res!535544) (not e!760960))))

(declare-fun dynLambda!5290 (Int Token!3812) Bool)

(assert (=> b!1184766 (= res!535544 (dynLambda!5290 lambda!48815 (h!17274 lt!407601)))))

(declare-fun b!1184767 () Bool)

(assert (=> b!1184767 (= e!760960 (forall!3142 (t!111733 lt!407601) lambda!48815))))

(assert (= (and d!338820 (not res!535543)) b!1184766))

(assert (= (and b!1184766 res!535544) b!1184767))

(declare-fun b_lambda!35451 () Bool)

(assert (=> (not b_lambda!35451) (not b!1184766)))

(declare-fun m!1360617 () Bool)

(assert (=> b!1184766 m!1360617))

(declare-fun m!1360619 () Bool)

(assert (=> b!1184767 m!1360619))

(assert (=> b!1184544 d!338820))

(declare-fun d!338822 () Bool)

(declare-fun res!535545 () Bool)

(declare-fun e!760961 () Bool)

(assert (=> d!338822 (=> res!535545 e!760961)))

(assert (=> d!338822 (= res!535545 ((_ is Nil!11873) lt!407598))))

(assert (=> d!338822 (= (forall!3142 lt!407598 lambda!48815) e!760961)))

(declare-fun b!1184768 () Bool)

(declare-fun e!760962 () Bool)

(assert (=> b!1184768 (= e!760961 e!760962)))

(declare-fun res!535546 () Bool)

(assert (=> b!1184768 (=> (not res!535546) (not e!760962))))

(assert (=> b!1184768 (= res!535546 (dynLambda!5290 lambda!48815 (h!17274 lt!407598)))))

(declare-fun b!1184769 () Bool)

(assert (=> b!1184769 (= e!760962 (forall!3142 (t!111733 lt!407598) lambda!48815))))

(assert (= (and d!338822 (not res!535545)) b!1184768))

(assert (= (and b!1184768 res!535546) b!1184769))

(declare-fun b_lambda!35453 () Bool)

(assert (=> (not b_lambda!35453) (not b!1184768)))

(declare-fun m!1360621 () Bool)

(assert (=> b!1184768 m!1360621))

(declare-fun m!1360623 () Bool)

(assert (=> b!1184769 m!1360623))

(assert (=> b!1184544 d!338822))

(declare-fun b!1184787 () Bool)

(declare-fun e!760980 () Bool)

(assert (=> b!1184787 (= e!760980 (subseq!329 (t!111733 lt!407601) (t!111733 (t!111733 l!6534))))))

(declare-fun b!1184786 () Bool)

(declare-fun e!760981 () Bool)

(declare-fun e!760979 () Bool)

(assert (=> b!1184786 (= e!760981 e!760979)))

(declare-fun res!535561 () Bool)

(assert (=> b!1184786 (=> res!535561 e!760979)))

(assert (=> b!1184786 (= res!535561 e!760980)))

(declare-fun res!535560 () Bool)

(assert (=> b!1184786 (=> (not res!535560) (not e!760980))))

(assert (=> b!1184786 (= res!535560 (= (h!17274 lt!407601) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1184785 () Bool)

(declare-fun e!760978 () Bool)

(assert (=> b!1184785 (= e!760978 e!760981)))

(declare-fun res!535559 () Bool)

(assert (=> b!1184785 (=> (not res!535559) (not e!760981))))

(assert (=> b!1184785 (= res!535559 ((_ is Cons!11873) (t!111733 l!6534)))))

(declare-fun d!338824 () Bool)

(declare-fun res!535562 () Bool)

(assert (=> d!338824 (=> res!535562 e!760978)))

(assert (=> d!338824 (= res!535562 ((_ is Nil!11873) lt!407601))))

(assert (=> d!338824 (= (subseq!329 lt!407601 (t!111733 l!6534)) e!760978)))

(declare-fun b!1184788 () Bool)

(assert (=> b!1184788 (= e!760979 (subseq!329 lt!407601 (t!111733 (t!111733 l!6534))))))

(assert (= (and d!338824 (not res!535562)) b!1184785))

(assert (= (and b!1184785 res!535559) b!1184786))

(assert (= (and b!1184786 res!535560) b!1184787))

(assert (= (and b!1184786 (not res!535561)) b!1184788))

(declare-fun m!1360643 () Bool)

(assert (=> b!1184787 m!1360643))

(declare-fun m!1360645 () Bool)

(assert (=> b!1184788 m!1360645))

(assert (=> b!1184544 d!338824))

(declare-fun d!338828 () Bool)

(assert (=> d!338828 (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 l!6534))))

(declare-fun lt!407736 () Unit!18194)

(assert (=> d!338828 (= lt!407736 (choose!7665 (t!111733 l!6534) (- i!1621 1)))))

(assert (=> d!338828 (= (lemmaDropSubseq!92 (t!111733 l!6534) (- i!1621 1)) lt!407736)))

(declare-fun bs!287298 () Bool)

(assert (= bs!287298 d!338828))

(assert (=> bs!287298 m!1360341))

(assert (=> bs!287298 m!1360341))

(declare-fun m!1360647 () Bool)

(assert (=> bs!287298 m!1360647))

(declare-fun m!1360649 () Bool)

(assert (=> bs!287298 m!1360649))

(assert (=> b!1184544 d!338828))

(declare-fun b!1184791 () Bool)

(declare-fun e!760984 () Bool)

(assert (=> b!1184791 (= e!760984 (subseq!329 (t!111733 lt!407598) (t!111733 l!6534)))))

(declare-fun b!1184790 () Bool)

(declare-fun e!760985 () Bool)

(declare-fun e!760983 () Bool)

(assert (=> b!1184790 (= e!760985 e!760983)))

(declare-fun res!535565 () Bool)

(assert (=> b!1184790 (=> res!535565 e!760983)))

(assert (=> b!1184790 (= res!535565 e!760984)))

(declare-fun res!535564 () Bool)

(assert (=> b!1184790 (=> (not res!535564) (not e!760984))))

(assert (=> b!1184790 (= res!535564 (= (h!17274 lt!407598) (h!17274 l!6534)))))

(declare-fun b!1184789 () Bool)

(declare-fun e!760982 () Bool)

(assert (=> b!1184789 (= e!760982 e!760985)))

(declare-fun res!535563 () Bool)

(assert (=> b!1184789 (=> (not res!535563) (not e!760985))))

(assert (=> b!1184789 (= res!535563 ((_ is Cons!11873) l!6534))))

(declare-fun d!338830 () Bool)

(declare-fun res!535566 () Bool)

(assert (=> d!338830 (=> res!535566 e!760982)))

(assert (=> d!338830 (= res!535566 ((_ is Nil!11873) lt!407598))))

(assert (=> d!338830 (= (subseq!329 lt!407598 l!6534) e!760982)))

(declare-fun b!1184792 () Bool)

(assert (=> b!1184792 (= e!760983 (subseq!329 lt!407598 (t!111733 l!6534)))))

(assert (= (and d!338830 (not res!535566)) b!1184789))

(assert (= (and b!1184789 res!535563) b!1184790))

(assert (= (and b!1184790 res!535564) b!1184791))

(assert (= (and b!1184790 (not res!535565)) b!1184792))

(declare-fun m!1360651 () Bool)

(assert (=> b!1184791 m!1360651))

(declare-fun m!1360653 () Bool)

(assert (=> b!1184792 m!1360653))

(assert (=> b!1184544 d!338830))

(declare-fun bs!287299 () Bool)

(declare-fun d!338832 () Bool)

(assert (= bs!287299 (and d!338832 d!338760)))

(declare-fun lambda!48843 () Int)

(assert (=> bs!287299 (= lambda!48843 lambda!48835)))

(declare-fun bs!287300 () Bool)

(assert (= bs!287300 (and d!338832 d!338816)))

(assert (=> bs!287300 (= lambda!48843 lambda!48839)))

(declare-fun bs!287301 () Bool)

(assert (= bs!287301 (and d!338832 d!338794)))

(assert (=> bs!287301 (= lambda!48843 lambda!48837)))

(declare-fun bs!287302 () Bool)

(assert (= bs!287302 (and d!338832 b!1184544)))

(assert (=> bs!287302 (= (= thiss!27592 Lexer!1768) (= lambda!48843 lambda!48815))))

(declare-fun bs!287303 () Bool)

(assert (= bs!287303 (and d!338832 d!338792)))

(assert (=> bs!287303 (= lambda!48843 lambda!48836)))

(declare-fun bs!287304 () Bool)

(assert (= bs!287304 (and d!338832 d!338748)))

(assert (=> bs!287304 (= lambda!48843 lambda!48826)))

(declare-fun bs!287305 () Bool)

(assert (= bs!287305 (and d!338832 d!338804)))

(assert (=> bs!287305 (= lambda!48843 lambda!48838)))

(declare-fun b!1184797 () Bool)

(declare-fun e!760990 () Bool)

(assert (=> b!1184797 (= e!760990 true)))

(declare-fun b!1184796 () Bool)

(declare-fun e!760989 () Bool)

(assert (=> b!1184796 (= e!760989 e!760990)))

(declare-fun b!1184795 () Bool)

(declare-fun e!760988 () Bool)

(assert (=> b!1184795 (= e!760988 e!760989)))

(assert (=> d!338832 e!760988))

(assert (= b!1184796 b!1184797))

(assert (= b!1184795 b!1184796))

(assert (= (and d!338832 ((_ is Cons!11872) rules!4386)) b!1184795))

(assert (=> b!1184797 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48843))))

(assert (=> b!1184797 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48843))))

(assert (=> d!338832 true))

(declare-fun lt!407737 () Bool)

(assert (=> d!338832 (= lt!407737 (forall!3142 lt!407601 lambda!48843))))

(declare-fun e!760987 () Bool)

(assert (=> d!338832 (= lt!407737 e!760987)))

(declare-fun res!535567 () Bool)

(assert (=> d!338832 (=> res!535567 e!760987)))

(assert (=> d!338832 (= res!535567 (not ((_ is Cons!11873) lt!407601)))))

(assert (=> d!338832 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338832 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 lt!407601) lt!407737)))

(declare-fun b!1184793 () Bool)

(declare-fun e!760986 () Bool)

(assert (=> b!1184793 (= e!760987 e!760986)))

(declare-fun res!535568 () Bool)

(assert (=> b!1184793 (=> (not res!535568) (not e!760986))))

(assert (=> b!1184793 (= res!535568 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601)))))

(declare-fun b!1184794 () Bool)

(assert (=> b!1184794 (= e!760986 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407601)))))

(assert (= (and d!338832 (not res!535567)) b!1184793))

(assert (= (and b!1184793 res!535568) b!1184794))

(declare-fun m!1360655 () Bool)

(assert (=> d!338832 m!1360655))

(assert (=> d!338832 m!1360343))

(assert (=> b!1184793 m!1360309))

(assert (=> b!1184794 m!1360305))

(assert (=> b!1184544 d!338832))

(declare-fun bs!287316 () Bool)

(declare-fun b!1184924 () Bool)

(assert (= bs!287316 (and b!1184924 d!338760)))

(declare-fun lambda!48847 () Int)

(assert (=> bs!287316 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48835))))

(declare-fun bs!287317 () Bool)

(assert (= bs!287317 (and b!1184924 d!338816)))

(assert (=> bs!287317 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48839))))

(declare-fun bs!287318 () Bool)

(assert (= bs!287318 (and b!1184924 d!338794)))

(assert (=> bs!287318 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48837))))

(declare-fun bs!287319 () Bool)

(assert (= bs!287319 (and b!1184924 b!1184544)))

(assert (=> bs!287319 (= lambda!48847 lambda!48815)))

(declare-fun bs!287320 () Bool)

(assert (= bs!287320 (and b!1184924 d!338792)))

(assert (=> bs!287320 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48836))))

(declare-fun bs!287321 () Bool)

(assert (= bs!287321 (and b!1184924 d!338832)))

(assert (=> bs!287321 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48843))))

(declare-fun bs!287322 () Bool)

(assert (= bs!287322 (and b!1184924 d!338748)))

(assert (=> bs!287322 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48826))))

(declare-fun bs!287323 () Bool)

(assert (= bs!287323 (and b!1184924 d!338804)))

(assert (=> bs!287323 (= (= Lexer!1768 thiss!27592) (= lambda!48847 lambda!48838))))

(declare-fun b!1184928 () Bool)

(declare-fun e!761087 () Bool)

(assert (=> b!1184928 (= e!761087 true)))

(declare-fun b!1184927 () Bool)

(declare-fun e!761086 () Bool)

(assert (=> b!1184927 (= e!761086 e!761087)))

(declare-fun b!1184926 () Bool)

(declare-fun e!761085 () Bool)

(assert (=> b!1184926 (= e!761085 e!761086)))

(assert (=> b!1184924 e!761085))

(assert (= b!1184927 b!1184928))

(assert (= b!1184926 b!1184927))

(assert (= (and b!1184924 ((_ is Cons!11872) rules!4386)) b!1184926))

(assert (=> b!1184928 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48847))))

(assert (=> b!1184928 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48847))))

(declare-fun b!1184922 () Bool)

(declare-fun e!761082 () Bool)

(declare-fun e!761084 () Bool)

(assert (=> b!1184922 (= e!761082 e!761084)))

(declare-fun res!535598 () Bool)

(assert (=> b!1184922 (=> (not res!535598) (not e!761084))))

(declare-fun lt!407766 () List!11897)

(assert (=> b!1184922 (= res!535598 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407766)))))

(declare-fun d!338834 () Bool)

(declare-fun e!761083 () Bool)

(assert (=> d!338834 e!761083))

(declare-fun res!535595 () Bool)

(assert (=> d!338834 (=> (not res!535595) (not e!761083))))

(assert (=> d!338834 (= res!535595 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (drop!553 (t!111733 l!6534) (- i!1621 1))) e!761082))))

(declare-fun res!535597 () Bool)

(assert (=> d!338834 (=> res!535597 e!761082)))

(assert (=> d!338834 (= res!535597 (not ((_ is Cons!11873) lt!407766)))))

(assert (=> d!338834 (= lt!407766 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun lt!407768 () Unit!18194)

(declare-fun choose!7667 (LexerInterface!1770 List!11897 Int List!11896) Unit!18194)

(assert (=> d!338834 (= lt!407768 (choose!7667 thiss!27592 (t!111733 l!6534) (- i!1621 1) rules!4386))))

(assert (=> d!338834 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338834 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!68 thiss!27592 (t!111733 l!6534) (- i!1621 1) rules!4386) lt!407768)))

(declare-fun b!1184925 () Bool)

(declare-fun e!761081 () Bool)

(declare-fun lt!407769 () List!11897)

(assert (=> b!1184925 (= e!761081 (subseq!329 lt!407769 (t!111733 l!6534)))))

(declare-fun b!1184923 () Bool)

(assert (=> b!1184923 (= e!761084 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407766)))))

(assert (=> b!1184924 (= e!761083 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (drop!553 (t!111733 l!6534) (- i!1621 1)) rules!4386))))

(declare-fun lt!407771 () Unit!18194)

(declare-fun lt!407772 () Unit!18194)

(assert (=> b!1184924 (= lt!407771 lt!407772)))

(assert (=> b!1184924 (forall!3142 lt!407769 lambda!48847)))

(assert (=> b!1184924 (= lt!407772 (lemmaForallSubseq!193 lt!407769 (t!111733 l!6534) lambda!48847))))

(assert (=> b!1184924 e!761081))

(declare-fun res!535596 () Bool)

(assert (=> b!1184924 (=> (not res!535596) (not e!761081))))

(assert (=> b!1184924 (= res!535596 (forall!3142 (t!111733 l!6534) lambda!48847))))

(assert (=> b!1184924 (= lt!407769 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun lt!407770 () Unit!18194)

(declare-fun lt!407767 () Unit!18194)

(assert (=> b!1184924 (= lt!407770 lt!407767)))

(assert (=> b!1184924 (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 l!6534))))

(assert (=> b!1184924 (= lt!407767 (lemmaDropSubseq!92 (t!111733 l!6534) (- i!1621 1)))))

(assert (= (and d!338834 (not res!535597)) b!1184922))

(assert (= (and b!1184922 res!535598) b!1184923))

(assert (= (and d!338834 res!535595) b!1184924))

(assert (= (and b!1184924 res!535596) b!1184925))

(declare-fun m!1360741 () Bool)

(assert (=> b!1184922 m!1360741))

(declare-fun m!1360743 () Bool)

(assert (=> b!1184925 m!1360743))

(assert (=> b!1184924 m!1360325))

(declare-fun m!1360745 () Bool)

(assert (=> b!1184924 m!1360745))

(assert (=> b!1184924 m!1360341))

(declare-fun m!1360747 () Bool)

(assert (=> b!1184924 m!1360747))

(assert (=> b!1184924 m!1360341))

(assert (=> b!1184924 m!1360647))

(assert (=> b!1184924 m!1360341))

(declare-fun m!1360749 () Bool)

(assert (=> b!1184924 m!1360749))

(declare-fun m!1360751 () Bool)

(assert (=> b!1184924 m!1360751))

(declare-fun m!1360753 () Bool)

(assert (=> b!1184923 m!1360753))

(assert (=> d!338834 m!1360341))

(assert (=> d!338834 m!1360341))

(declare-fun m!1360755 () Bool)

(assert (=> d!338834 m!1360755))

(declare-fun m!1360757 () Bool)

(assert (=> d!338834 m!1360757))

(assert (=> d!338834 m!1360343))

(assert (=> b!1184544 d!338834))

(declare-fun d!338858 () Bool)

(declare-fun e!761101 () Bool)

(assert (=> d!338858 e!761101))

(declare-fun res!535601 () Bool)

(assert (=> d!338858 (=> (not res!535601) (not e!761101))))

(declare-fun lt!407775 () List!11897)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1642 (List!11897) (InoxSet Token!3812))

(assert (=> d!338858 (= res!535601 (= ((_ map implies) (content!1642 lt!407775) (content!1642 l!6534)) ((as const (InoxSet Token!3812)) true)))))

(declare-fun e!761102 () List!11897)

(assert (=> d!338858 (= lt!407775 e!761102)))

(declare-fun c!197063 () Bool)

(assert (=> d!338858 (= c!197063 ((_ is Nil!11873) l!6534))))

(assert (=> d!338858 (= (drop!553 l!6534 i!1621) lt!407775)))

(declare-fun b!1184947 () Bool)

(declare-fun e!761098 () Int)

(declare-fun call!82619 () Int)

(assert (=> b!1184947 (= e!761098 (- call!82619 i!1621))))

(declare-fun bm!82614 () Bool)

(declare-fun size!9363 (List!11897) Int)

(assert (=> bm!82614 (= call!82619 (size!9363 l!6534))))

(declare-fun b!1184948 () Bool)

(declare-fun e!761099 () List!11897)

(assert (=> b!1184948 (= e!761099 l!6534)))

(declare-fun b!1184949 () Bool)

(declare-fun e!761100 () Int)

(assert (=> b!1184949 (= e!761100 call!82619)))

(declare-fun b!1184950 () Bool)

(assert (=> b!1184950 (= e!761098 0)))

(declare-fun b!1184951 () Bool)

(assert (=> b!1184951 (= e!761102 e!761099)))

(declare-fun c!197064 () Bool)

(assert (=> b!1184951 (= c!197064 (<= i!1621 0))))

(declare-fun b!1184952 () Bool)

(assert (=> b!1184952 (= e!761102 Nil!11873)))

(declare-fun b!1184953 () Bool)

(assert (=> b!1184953 (= e!761099 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun b!1184954 () Bool)

(assert (=> b!1184954 (= e!761100 e!761098)))

(declare-fun c!197065 () Bool)

(assert (=> b!1184954 (= c!197065 (>= i!1621 call!82619))))

(declare-fun b!1184955 () Bool)

(assert (=> b!1184955 (= e!761101 (= (size!9363 lt!407775) e!761100))))

(declare-fun c!197062 () Bool)

(assert (=> b!1184955 (= c!197062 (<= i!1621 0))))

(assert (= (and d!338858 c!197063) b!1184952))

(assert (= (and d!338858 (not c!197063)) b!1184951))

(assert (= (and b!1184951 c!197064) b!1184948))

(assert (= (and b!1184951 (not c!197064)) b!1184953))

(assert (= (and d!338858 res!535601) b!1184955))

(assert (= (and b!1184955 c!197062) b!1184949))

(assert (= (and b!1184955 (not c!197062)) b!1184954))

(assert (= (and b!1184954 c!197065) b!1184950))

(assert (= (and b!1184954 (not c!197065)) b!1184947))

(assert (= (or b!1184949 b!1184954 b!1184947) bm!82614))

(declare-fun m!1360759 () Bool)

(assert (=> d!338858 m!1360759))

(declare-fun m!1360761 () Bool)

(assert (=> d!338858 m!1360761))

(declare-fun m!1360763 () Bool)

(assert (=> bm!82614 m!1360763))

(assert (=> b!1184953 m!1360341))

(declare-fun m!1360765 () Bool)

(assert (=> b!1184955 m!1360765))

(assert (=> b!1184544 d!338858))

(declare-fun d!338860 () Bool)

(declare-fun e!761106 () Bool)

(assert (=> d!338860 e!761106))

(declare-fun res!535602 () Bool)

(assert (=> d!338860 (=> (not res!535602) (not e!761106))))

(declare-fun lt!407776 () List!11897)

(assert (=> d!338860 (= res!535602 (= ((_ map implies) (content!1642 lt!407776) (content!1642 (t!111733 l!6534))) ((as const (InoxSet Token!3812)) true)))))

(declare-fun e!761107 () List!11897)

(assert (=> d!338860 (= lt!407776 e!761107)))

(declare-fun c!197067 () Bool)

(assert (=> d!338860 (= c!197067 ((_ is Nil!11873) (t!111733 l!6534)))))

(assert (=> d!338860 (= (drop!553 (t!111733 l!6534) (- i!1621 1)) lt!407776)))

(declare-fun b!1184956 () Bool)

(declare-fun e!761103 () Int)

(declare-fun call!82620 () Int)

(assert (=> b!1184956 (= e!761103 (- call!82620 (- i!1621 1)))))

(declare-fun bm!82615 () Bool)

(assert (=> bm!82615 (= call!82620 (size!9363 (t!111733 l!6534)))))

(declare-fun b!1184957 () Bool)

(declare-fun e!761104 () List!11897)

(assert (=> b!1184957 (= e!761104 (t!111733 l!6534))))

(declare-fun b!1184958 () Bool)

(declare-fun e!761105 () Int)

(assert (=> b!1184958 (= e!761105 call!82620)))

(declare-fun b!1184959 () Bool)

(assert (=> b!1184959 (= e!761103 0)))

(declare-fun b!1184960 () Bool)

(assert (=> b!1184960 (= e!761107 e!761104)))

(declare-fun c!197068 () Bool)

(assert (=> b!1184960 (= c!197068 (<= (- i!1621 1) 0))))

(declare-fun b!1184961 () Bool)

(assert (=> b!1184961 (= e!761107 Nil!11873)))

(declare-fun b!1184962 () Bool)

(assert (=> b!1184962 (= e!761104 (drop!553 (t!111733 (t!111733 l!6534)) (- (- i!1621 1) 1)))))

(declare-fun b!1184963 () Bool)

(assert (=> b!1184963 (= e!761105 e!761103)))

(declare-fun c!197069 () Bool)

(assert (=> b!1184963 (= c!197069 (>= (- i!1621 1) call!82620))))

(declare-fun b!1184964 () Bool)

(assert (=> b!1184964 (= e!761106 (= (size!9363 lt!407776) e!761105))))

(declare-fun c!197066 () Bool)

(assert (=> b!1184964 (= c!197066 (<= (- i!1621 1) 0))))

(assert (= (and d!338860 c!197067) b!1184961))

(assert (= (and d!338860 (not c!197067)) b!1184960))

(assert (= (and b!1184960 c!197068) b!1184957))

(assert (= (and b!1184960 (not c!197068)) b!1184962))

(assert (= (and d!338860 res!535602) b!1184964))

(assert (= (and b!1184964 c!197066) b!1184958))

(assert (= (and b!1184964 (not c!197066)) b!1184963))

(assert (= (and b!1184963 c!197069) b!1184959))

(assert (= (and b!1184963 (not c!197069)) b!1184956))

(assert (= (or b!1184958 b!1184963 b!1184956) bm!82615))

(declare-fun m!1360767 () Bool)

(assert (=> d!338860 m!1360767))

(declare-fun m!1360769 () Bool)

(assert (=> d!338860 m!1360769))

(declare-fun m!1360771 () Bool)

(assert (=> bm!82615 m!1360771))

(declare-fun m!1360773 () Bool)

(assert (=> b!1184962 m!1360773))

(declare-fun m!1360775 () Bool)

(assert (=> b!1184964 m!1360775))

(assert (=> b!1184544 d!338860))

(declare-fun b!1184978 () Bool)

(declare-fun b_free!28429 () Bool)

(declare-fun b_next!29133 () Bool)

(assert (=> b!1184978 (= b_free!28429 (not b_next!29133))))

(declare-fun tp!337770 () Bool)

(declare-fun b_and!81485 () Bool)

(assert (=> b!1184978 (= tp!337770 b_and!81485)))

(declare-fun b_free!28431 () Bool)

(declare-fun b_next!29135 () Bool)

(assert (=> b!1184978 (= b_free!28431 (not b_next!29135))))

(declare-fun t!111766 () Bool)

(declare-fun tb!66233 () Bool)

(assert (=> (and b!1184978 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111766) tb!66233))

(declare-fun result!79528 () Bool)

(assert (= result!79528 result!79508))

(assert (=> b!1184613 t!111766))

(declare-fun b_and!81487 () Bool)

(declare-fun tp!337771 () Bool)

(assert (=> b!1184978 (= tp!337771 (and (=> t!111766 result!79528) b_and!81487))))

(declare-fun b!1184975 () Bool)

(declare-fun tp!337773 () Bool)

(declare-fun e!761120 () Bool)

(declare-fun e!761124 () Bool)

(assert (=> b!1184975 (= e!761120 (and (inv!15694 (h!17274 (t!111733 l!6534))) e!761124 tp!337773))))

(declare-fun tp!337769 () Bool)

(declare-fun b!1184976 () Bool)

(declare-fun e!761125 () Bool)

(assert (=> b!1184976 (= e!761124 (and (inv!21 (value!67194 (h!17274 (t!111733 l!6534)))) e!761125 tp!337769))))

(declare-fun e!761122 () Bool)

(assert (=> b!1184978 (= e!761122 (and tp!337770 tp!337771))))

(declare-fun b!1184977 () Bool)

(declare-fun tp!337772 () Bool)

(assert (=> b!1184977 (= e!761125 (and tp!337772 (inv!15690 (tag!2337 (rule!3496 (h!17274 (t!111733 l!6534))))) (inv!15693 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) e!761122))))

(assert (=> b!1184556 (= tp!337694 e!761120)))

(assert (= b!1184977 b!1184978))

(assert (= b!1184976 b!1184977))

(assert (= b!1184975 b!1184976))

(assert (= (and b!1184556 ((_ is Cons!11873) (t!111733 l!6534))) b!1184975))

(declare-fun m!1360777 () Bool)

(assert (=> b!1184975 m!1360777))

(declare-fun m!1360779 () Bool)

(assert (=> b!1184976 m!1360779))

(declare-fun m!1360781 () Bool)

(assert (=> b!1184977 m!1360781))

(declare-fun m!1360783 () Bool)

(assert (=> b!1184977 m!1360783))

(declare-fun b!1184981 () Bool)

(declare-fun e!761128 () Bool)

(assert (=> b!1184981 (= e!761128 true)))

(declare-fun b!1184980 () Bool)

(declare-fun e!761127 () Bool)

(assert (=> b!1184980 (= e!761127 e!761128)))

(declare-fun b!1184979 () Bool)

(declare-fun e!761126 () Bool)

(assert (=> b!1184979 (= e!761126 e!761127)))

(assert (=> b!1184567 e!761126))

(assert (= b!1184980 b!1184981))

(assert (= b!1184979 b!1184980))

(assert (= (and b!1184567 ((_ is Cons!11872) (t!111732 rules!4386))) b!1184979))

(assert (=> b!1184981 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48815))))

(assert (=> b!1184981 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48815))))

(declare-fun b!1184994 () Bool)

(declare-fun e!761131 () Bool)

(declare-fun tp!337786 () Bool)

(assert (=> b!1184994 (= e!761131 tp!337786)))

(declare-fun b!1184993 () Bool)

(declare-fun tp!337785 () Bool)

(declare-fun tp!337787 () Bool)

(assert (=> b!1184993 (= e!761131 (and tp!337785 tp!337787))))

(assert (=> b!1184547 (= tp!337701 e!761131)))

(declare-fun b!1184992 () Bool)

(declare-fun tp_is_empty!5823 () Bool)

(assert (=> b!1184992 (= e!761131 tp_is_empty!5823)))

(declare-fun b!1184995 () Bool)

(declare-fun tp!337788 () Bool)

(declare-fun tp!337784 () Bool)

(assert (=> b!1184995 (= e!761131 (and tp!337788 tp!337784))))

(assert (= (and b!1184547 ((_ is ElementMatch!3345) (regex!2075 (h!17273 rules!4386)))) b!1184992))

(assert (= (and b!1184547 ((_ is Concat!5487) (regex!2075 (h!17273 rules!4386)))) b!1184993))

(assert (= (and b!1184547 ((_ is Star!3345) (regex!2075 (h!17273 rules!4386)))) b!1184994))

(assert (= (and b!1184547 ((_ is Union!3345) (regex!2075 (h!17273 rules!4386)))) b!1184995))

(declare-fun b!1185000 () Bool)

(declare-fun e!761134 () Bool)

(declare-fun tp!337791 () Bool)

(assert (=> b!1185000 (= e!761134 (and tp_is_empty!5823 tp!337791))))

(assert (=> b!1184558 (= tp!337700 e!761134)))

(assert (= (and b!1184558 ((_ is Cons!11870) (originalCharacters!2629 (h!17274 l!6534)))) b!1185000))

(declare-fun b!1185011 () Bool)

(declare-fun b_free!28433 () Bool)

(declare-fun b_next!29137 () Bool)

(assert (=> b!1185011 (= b_free!28433 (not b_next!29137))))

(declare-fun tp!337801 () Bool)

(declare-fun b_and!81489 () Bool)

(assert (=> b!1185011 (= tp!337801 b_and!81489)))

(declare-fun b_free!28435 () Bool)

(declare-fun b_next!29139 () Bool)

(assert (=> b!1185011 (= b_free!28435 (not b_next!29139))))

(declare-fun tb!66235 () Bool)

(declare-fun t!111768 () Bool)

(assert (=> (and b!1185011 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111768) tb!66235))

(declare-fun result!79536 () Bool)

(assert (= result!79536 result!79508))

(assert (=> b!1184613 t!111768))

(declare-fun b_and!81491 () Bool)

(declare-fun tp!337803 () Bool)

(assert (=> b!1185011 (= tp!337803 (and (=> t!111768 result!79536) b_and!81491))))

(declare-fun e!761143 () Bool)

(assert (=> b!1185011 (= e!761143 (and tp!337801 tp!337803))))

(declare-fun b!1185010 () Bool)

(declare-fun tp!337802 () Bool)

(declare-fun e!761146 () Bool)

(assert (=> b!1185010 (= e!761146 (and tp!337802 (inv!15690 (tag!2337 (h!17273 (t!111732 rules!4386)))) (inv!15693 (transformation!2075 (h!17273 (t!111732 rules!4386)))) e!761143))))

(declare-fun b!1185009 () Bool)

(declare-fun e!761145 () Bool)

(declare-fun tp!337800 () Bool)

(assert (=> b!1185009 (= e!761145 (and e!761146 tp!337800))))

(assert (=> b!1184540 (= tp!337696 e!761145)))

(assert (= b!1185010 b!1185011))

(assert (= b!1185009 b!1185010))

(assert (= (and b!1184540 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185009))

(declare-fun m!1360785 () Bool)

(assert (=> b!1185010 m!1360785))

(declare-fun m!1360787 () Bool)

(assert (=> b!1185010 m!1360787))

(declare-fun b!1185014 () Bool)

(declare-fun e!761147 () Bool)

(declare-fun tp!337806 () Bool)

(assert (=> b!1185014 (= e!761147 tp!337806)))

(declare-fun b!1185013 () Bool)

(declare-fun tp!337805 () Bool)

(declare-fun tp!337807 () Bool)

(assert (=> b!1185013 (= e!761147 (and tp!337805 tp!337807))))

(assert (=> b!1184555 (= tp!337699 e!761147)))

(declare-fun b!1185012 () Bool)

(assert (=> b!1185012 (= e!761147 tp_is_empty!5823)))

(declare-fun b!1185015 () Bool)

(declare-fun tp!337808 () Bool)

(declare-fun tp!337804 () Bool)

(assert (=> b!1185015 (= e!761147 (and tp!337808 tp!337804))))

(assert (= (and b!1184555 ((_ is ElementMatch!3345) (regex!2075 (rule!3496 (h!17274 l!6534))))) b!1185012))

(assert (= (and b!1184555 ((_ is Concat!5487) (regex!2075 (rule!3496 (h!17274 l!6534))))) b!1185013))

(assert (= (and b!1184555 ((_ is Star!3345) (regex!2075 (rule!3496 (h!17274 l!6534))))) b!1185014))

(assert (= (and b!1184555 ((_ is Union!3345) (regex!2075 (rule!3496 (h!17274 l!6534))))) b!1185015))

(declare-fun b_lambda!35461 () Bool)

(assert (= b_lambda!35445 (or (and b!1184549 b_free!28415 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))))) (and b!1184553 b_free!28419) (and b!1184978 b_free!28431 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))))) (and b!1185011 b_free!28435 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))))) b_lambda!35461)))

(declare-fun b_lambda!35463 () Bool)

(assert (= b_lambda!35451 (or b!1184544 b_lambda!35463)))

(declare-fun bs!287324 () Bool)

(declare-fun d!338862 () Bool)

(assert (= bs!287324 (and d!338862 b!1184544)))

(assert (=> bs!287324 (= (dynLambda!5290 lambda!48815 (h!17274 lt!407601)) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 lt!407601)))))

(declare-fun m!1360789 () Bool)

(assert (=> bs!287324 m!1360789))

(assert (=> b!1184766 d!338862))

(declare-fun b_lambda!35465 () Bool)

(assert (= b_lambda!35453 (or b!1184544 b_lambda!35465)))

(declare-fun bs!287325 () Bool)

(declare-fun d!338864 () Bool)

(assert (= bs!287325 (and d!338864 b!1184544)))

(assert (=> bs!287325 (= (dynLambda!5290 lambda!48815 (h!17274 lt!407598)) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 lt!407598)))))

(declare-fun m!1360791 () Bool)

(assert (=> bs!287325 m!1360791))

(assert (=> b!1184768 d!338864))

(check-sat (not b!1184743) (not d!338812) (not b!1185000) (not bs!287325) b_and!81487 (not b!1184955) (not b_next!29119) (not d!338834) (not d!338748) (not d!338796) (not b!1184722) (not b!1184995) (not b!1184718) (not b_next!29137) (not d!338858) (not d!338802) (not bm!82615) (not d!338794) b_and!81473 (not b!1184788) (not d!338816) (not b!1184745) (not b!1185015) (not d!338860) (not b!1184738) (not b!1185010) (not d!338810) (not b!1184655) (not b!1184739) (not b!1184742) (not b!1184979) (not b!1184632) (not b!1184926) (not b!1184756) (not bm!82614) (not b_next!29135) (not d!338756) (not b!1184729) (not b!1184994) (not b!1185013) b_and!81489 (not b!1184744) (not b_next!29133) (not d!338744) (not b!1184740) (not b_next!29117) (not b!1184737) (not tb!66225) b_and!81491 (not d!338814) (not b!1184741) (not b!1184607) (not b!1184922) (not b!1184755) (not b!1184767) (not b!1184621) (not b!1184656) (not b!1184976) (not b!1184769) b_and!81485 (not b!1184757) tp_is_empty!5823 (not d!338760) b_and!81465 (not b!1184654) (not b!1184713) (not b!1184716) (not d!338800) (not b!1184993) (not b!1184792) (not b!1184923) (not d!338828) (not d!338832) (not b!1184748) (not b!1184721) (not b_next!29121) (not b!1184620) (not b!1184619) (not b!1184962) (not d!338792) (not b!1184787) (not b_lambda!35463) (not b!1184712) (not b!1184608) (not b!1184641) (not b!1184634) (not b!1184728) (not b!1184793) (not b!1184633) (not b!1184723) (not b!1184730) b_and!81461 (not b_lambda!35465) (not b!1184925) (not b!1184975) (not b_next!29139) (not b!1185014) (not b_next!29123) (not b!1184924) (not b_lambda!35461) (not b!1184613) (not d!338804) (not b!1184791) (not b!1184964) (not b!1184795) (not d!338790) (not b!1185009) (not d!338818) (not b!1184794) (not b!1184614) (not bs!287324) (not b!1184953) (not b!1184977) b_and!81475 (not b!1184717))
(check-sat b_and!81487 (not b_next!29119) (not b_next!29135) b_and!81489 (not b_next!29133) (not b_next!29121) (not b_next!29123) b_and!81475 (not b_next!29137) b_and!81473 (not b_next!29117) b_and!81491 b_and!81485 b_and!81465 (not b_next!29139) b_and!81461)
(get-model)

(declare-fun d!338886 () Bool)

(declare-fun res!535628 () Bool)

(declare-fun e!761168 () Bool)

(assert (=> d!338886 (=> res!535628 e!761168)))

(assert (=> d!338886 (= res!535628 ((_ is Nil!11873) (t!111733 l!6534)))))

(assert (=> d!338886 (= (forall!3142 (t!111733 l!6534) lambda!48837) e!761168)))

(declare-fun b!1185037 () Bool)

(declare-fun e!761169 () Bool)

(assert (=> b!1185037 (= e!761168 e!761169)))

(declare-fun res!535629 () Bool)

(assert (=> b!1185037 (=> (not res!535629) (not e!761169))))

(assert (=> b!1185037 (= res!535629 (dynLambda!5290 lambda!48837 (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185038 () Bool)

(assert (=> b!1185038 (= e!761169 (forall!3142 (t!111733 (t!111733 l!6534)) lambda!48837))))

(assert (= (and d!338886 (not res!535628)) b!1185037))

(assert (= (and b!1185037 res!535629) b!1185038))

(declare-fun b_lambda!35473 () Bool)

(assert (=> (not b_lambda!35473) (not b!1185037)))

(declare-fun m!1360849 () Bool)

(assert (=> b!1185037 m!1360849))

(declare-fun m!1360851 () Bool)

(assert (=> b!1185038 m!1360851))

(assert (=> d!338794 d!338886))

(assert (=> d!338794 d!338806))

(declare-fun d!338888 () Bool)

(declare-fun lt!407789 () Int)

(assert (=> d!338888 (= lt!407789 (size!9360 (list!4361 (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534)))))))))

(declare-fun size!9364 (Conc!3888) Int)

(assert (=> d!338888 (= lt!407789 (size!9364 (c!197023 (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534)))))))))

(assert (=> d!338888 (= (size!9359 (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534))))) lt!407789)))

(declare-fun bs!287328 () Bool)

(assert (= bs!287328 d!338888))

(assert (=> bs!287328 m!1360399))

(declare-fun m!1360853 () Bool)

(assert (=> bs!287328 m!1360853))

(assert (=> bs!287328 m!1360853))

(declare-fun m!1360855 () Bool)

(assert (=> bs!287328 m!1360855))

(declare-fun m!1360857 () Bool)

(assert (=> bs!287328 m!1360857))

(assert (=> b!1184607 d!338888))

(declare-fun d!338890 () Bool)

(declare-fun lt!407791 () Bool)

(declare-fun e!761170 () Bool)

(assert (=> d!338890 (= lt!407791 e!761170)))

(declare-fun res!535632 () Bool)

(assert (=> d!338890 (=> (not res!535632) (not e!761170))))

(assert (=> d!338890 (= res!535632 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 (t!111733 l!6534)))))))) (list!4362 (singletonSeq!719 (h!17274 (t!111733 (t!111733 l!6534)))))))))

(declare-fun e!761171 () Bool)

(assert (=> d!338890 (= lt!407791 e!761171)))

(declare-fun res!535630 () Bool)

(assert (=> d!338890 (=> (not res!535630) (not e!761171))))

(declare-fun lt!407790 () tuple2!12104)

(assert (=> d!338890 (= res!535630 (= (size!9362 (_1!6899 lt!407790)) 1))))

(assert (=> d!338890 (= lt!407790 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 (t!111733 l!6534)))))))))

(assert (=> d!338890 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338890 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 l!6534)))) lt!407791)))

(declare-fun b!1185039 () Bool)

(declare-fun res!535631 () Bool)

(assert (=> b!1185039 (=> (not res!535631) (not e!761171))))

(assert (=> b!1185039 (= res!535631 (= (apply!2586 (_1!6899 lt!407790) 0) (h!17274 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185040 () Bool)

(assert (=> b!1185040 (= e!761171 (isEmpty!7148 (_2!6899 lt!407790)))))

(declare-fun b!1185041 () Bool)

(assert (=> b!1185041 (= e!761170 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 (t!111733 l!6534)))))))))))

(assert (= (and d!338890 res!535630) b!1185039))

(assert (= (and b!1185039 res!535631) b!1185040))

(assert (= (and d!338890 res!535632) b!1185041))

(declare-fun m!1360859 () Bool)

(assert (=> d!338890 m!1360859))

(declare-fun m!1360861 () Bool)

(assert (=> d!338890 m!1360861))

(declare-fun m!1360863 () Bool)

(assert (=> d!338890 m!1360863))

(declare-fun m!1360865 () Bool)

(assert (=> d!338890 m!1360865))

(assert (=> d!338890 m!1360863))

(assert (=> d!338890 m!1360859))

(assert (=> d!338890 m!1360863))

(declare-fun m!1360867 () Bool)

(assert (=> d!338890 m!1360867))

(assert (=> d!338890 m!1360343))

(declare-fun m!1360869 () Bool)

(assert (=> d!338890 m!1360869))

(declare-fun m!1360871 () Bool)

(assert (=> b!1185039 m!1360871))

(declare-fun m!1360873 () Bool)

(assert (=> b!1185040 m!1360873))

(assert (=> b!1185041 m!1360863))

(assert (=> b!1185041 m!1360863))

(assert (=> b!1185041 m!1360859))

(assert (=> b!1185041 m!1360859))

(assert (=> b!1185041 m!1360861))

(declare-fun m!1360875 () Bool)

(assert (=> b!1185041 m!1360875))

(assert (=> b!1184607 d!338890))

(declare-fun d!338892 () Bool)

(declare-fun lt!407793 () Bool)

(declare-fun e!761174 () Bool)

(assert (=> d!338892 (= lt!407793 e!761174)))

(declare-fun res!535637 () Bool)

(assert (=> d!338892 (=> (not res!535637) (not e!761174))))

(assert (=> d!338892 (= res!535637 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 l!6534))))))) (list!4362 (singletonSeq!719 (h!17274 (t!111733 l!6534))))))))

(declare-fun e!761175 () Bool)

(assert (=> d!338892 (= lt!407793 e!761175)))

(declare-fun res!535635 () Bool)

(assert (=> d!338892 (=> (not res!535635) (not e!761175))))

(declare-fun lt!407792 () tuple2!12104)

(assert (=> d!338892 (= res!535635 (= (size!9362 (_1!6899 lt!407792)) 1))))

(assert (=> d!338892 (= lt!407792 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 l!6534))))))))

(assert (=> d!338892 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338892 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534))) lt!407793)))

(declare-fun b!1185044 () Bool)

(declare-fun res!535636 () Bool)

(assert (=> b!1185044 (=> (not res!535636) (not e!761175))))

(assert (=> b!1185044 (= res!535636 (= (apply!2586 (_1!6899 lt!407792) 0) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185045 () Bool)

(assert (=> b!1185045 (= e!761175 (isEmpty!7148 (_2!6899 lt!407792)))))

(declare-fun b!1185046 () Bool)

(assert (=> b!1185046 (= e!761174 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 l!6534))))))))))

(assert (= (and d!338892 res!535635) b!1185044))

(assert (= (and b!1185044 res!535636) b!1185045))

(assert (= (and d!338892 res!535637) b!1185046))

(declare-fun m!1360877 () Bool)

(assert (=> d!338892 m!1360877))

(declare-fun m!1360879 () Bool)

(assert (=> d!338892 m!1360879))

(declare-fun m!1360881 () Bool)

(assert (=> d!338892 m!1360881))

(declare-fun m!1360883 () Bool)

(assert (=> d!338892 m!1360883))

(assert (=> d!338892 m!1360881))

(assert (=> d!338892 m!1360877))

(assert (=> d!338892 m!1360881))

(declare-fun m!1360885 () Bool)

(assert (=> d!338892 m!1360885))

(assert (=> d!338892 m!1360343))

(declare-fun m!1360887 () Bool)

(assert (=> d!338892 m!1360887))

(declare-fun m!1360889 () Bool)

(assert (=> b!1185044 m!1360889))

(declare-fun m!1360891 () Bool)

(assert (=> b!1185045 m!1360891))

(assert (=> b!1185046 m!1360881))

(assert (=> b!1185046 m!1360881))

(assert (=> b!1185046 m!1360877))

(assert (=> b!1185046 m!1360877))

(assert (=> b!1185046 m!1360879))

(declare-fun m!1360893 () Bool)

(assert (=> b!1185046 m!1360893))

(assert (=> b!1184607 d!338892))

(declare-fun d!338894 () Bool)

(assert (=> d!338894 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 l!6534))))))

(declare-fun lt!407805 () Unit!18194)

(declare-fun choose!7668 (LexerInterface!1770 List!11896 List!11897 Token!3812) Unit!18194)

(assert (=> d!338894 (= lt!407805 (choose!7668 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 (t!111733 l!6534)))))))

(assert (=> d!338894 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338894 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 (t!111733 l!6534)))) lt!407805)))

(declare-fun bs!287335 () Bool)

(assert (= bs!287335 d!338894))

(assert (=> bs!287335 m!1360403))

(declare-fun m!1360929 () Bool)

(assert (=> bs!287335 m!1360929))

(assert (=> bs!287335 m!1360343))

(assert (=> b!1184607 d!338894))

(declare-fun d!338918 () Bool)

(declare-fun lt!407808 () BalanceConc!7798)

(assert (=> d!338918 (= (list!4361 lt!407808) (originalCharacters!2629 (h!17274 (t!111733 (t!111733 l!6534)))))))

(assert (=> d!338918 (= lt!407808 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (value!67194 (h!17274 (t!111733 (t!111733 l!6534))))))))

(assert (=> d!338918 (= (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534)))) lt!407808)))

(declare-fun b_lambda!35475 () Bool)

(assert (=> (not b_lambda!35475) (not d!338918)))

(declare-fun tb!66237 () Bool)

(declare-fun t!111773 () Bool)

(assert (=> (and b!1184549 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111773) tb!66237))

(declare-fun b!1185070 () Bool)

(declare-fun e!761192 () Bool)

(declare-fun tp!337809 () Bool)

(assert (=> b!1185070 (= e!761192 (and (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (value!67194 (h!17274 (t!111733 (t!111733 l!6534))))))) tp!337809))))

(declare-fun result!79538 () Bool)

(assert (=> tb!66237 (= result!79538 (and (inv!15698 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (value!67194 (h!17274 (t!111733 (t!111733 l!6534)))))) e!761192))))

(assert (= tb!66237 b!1185070))

(declare-fun m!1360931 () Bool)

(assert (=> b!1185070 m!1360931))

(declare-fun m!1360933 () Bool)

(assert (=> tb!66237 m!1360933))

(assert (=> d!338918 t!111773))

(declare-fun b_and!81493 () Bool)

(assert (= b_and!81473 (and (=> t!111773 result!79538) b_and!81493)))

(declare-fun t!111775 () Bool)

(declare-fun tb!66239 () Bool)

(assert (=> (and b!1184553 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111775) tb!66239))

(declare-fun result!79540 () Bool)

(assert (= result!79540 result!79538))

(assert (=> d!338918 t!111775))

(declare-fun b_and!81495 () Bool)

(assert (= b_and!81475 (and (=> t!111775 result!79540) b_and!81495)))

(declare-fun t!111777 () Bool)

(declare-fun tb!66241 () Bool)

(assert (=> (and b!1184978 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111777) tb!66241))

(declare-fun result!79542 () Bool)

(assert (= result!79542 result!79538))

(assert (=> d!338918 t!111777))

(declare-fun b_and!81497 () Bool)

(assert (= b_and!81487 (and (=> t!111777 result!79542) b_and!81497)))

(declare-fun tb!66243 () Bool)

(declare-fun t!111779 () Bool)

(assert (=> (and b!1185011 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111779) tb!66243))

(declare-fun result!79544 () Bool)

(assert (= result!79544 result!79538))

(assert (=> d!338918 t!111779))

(declare-fun b_and!81499 () Bool)

(assert (= b_and!81491 (and (=> t!111779 result!79544) b_and!81499)))

(declare-fun m!1360935 () Bool)

(assert (=> d!338918 m!1360935))

(declare-fun m!1360937 () Bool)

(assert (=> d!338918 m!1360937))

(assert (=> b!1184607 d!338918))

(declare-fun d!338920 () Bool)

(declare-fun prefixMatchZipperSequence!114 (Regex!3345 BalanceConc!7798) Bool)

(declare-fun rulesRegex!85 (LexerInterface!1770 List!11896) Regex!3345)

(declare-fun ++!3027 (BalanceConc!7798 BalanceConc!7798) BalanceConc!7798)

(declare-fun singletonSeq!720 (C!7008) BalanceConc!7798)

(declare-fun apply!2587 (BalanceConc!7798 Int) C!7008)

(assert (=> d!338920 (= (separableTokensPredicate!158 thiss!27592 (h!17274 (t!111733 l!6534)) (h!17274 (t!111733 (t!111733 l!6534))) rules!4386) (not (prefixMatchZipperSequence!114 (rulesRegex!85 thiss!27592 rules!4386) (++!3027 (charsOf!1096 (h!17274 (t!111733 l!6534))) (singletonSeq!720 (apply!2587 (charsOf!1096 (h!17274 (t!111733 (t!111733 l!6534)))) 0))))))))

(declare-fun bs!287336 () Bool)

(assert (= bs!287336 d!338920))

(assert (=> bs!287336 m!1360551))

(declare-fun m!1360939 () Bool)

(assert (=> bs!287336 m!1360939))

(declare-fun m!1360941 () Bool)

(assert (=> bs!287336 m!1360941))

(declare-fun m!1360943 () Bool)

(assert (=> bs!287336 m!1360943))

(declare-fun m!1360945 () Bool)

(assert (=> bs!287336 m!1360945))

(declare-fun m!1360947 () Bool)

(assert (=> bs!287336 m!1360947))

(assert (=> bs!287336 m!1360943))

(assert (=> bs!287336 m!1360399))

(assert (=> bs!287336 m!1360939))

(assert (=> bs!287336 m!1360551))

(assert (=> bs!287336 m!1360941))

(assert (=> bs!287336 m!1360945))

(assert (=> bs!287336 m!1360399))

(assert (=> b!1184607 d!338920))

(declare-fun d!338922 () Bool)

(assert (=> d!338922 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(declare-fun lt!407809 () Unit!18194)

(assert (=> d!338922 (= lt!407809 (choose!7668 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 l!6534))))))

(assert (=> d!338922 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338922 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (t!111733 l!6534) (h!17274 (t!111733 l!6534))) lt!407809)))

(declare-fun bs!287337 () Bool)

(assert (= bs!287337 d!338922))

(assert (=> bs!287337 m!1360393))

(declare-fun m!1360949 () Bool)

(assert (=> bs!287337 m!1360949))

(assert (=> bs!287337 m!1360343))

(assert (=> b!1184607 d!338922))

(declare-fun d!338924 () Bool)

(declare-fun c!197077 () Bool)

(assert (=> d!338924 (= c!197077 ((_ is Nil!11873) lt!407775))))

(declare-fun e!761195 () (InoxSet Token!3812))

(assert (=> d!338924 (= (content!1642 lt!407775) e!761195)))

(declare-fun b!1185075 () Bool)

(assert (=> b!1185075 (= e!761195 ((as const (Array Token!3812 Bool)) false))))

(declare-fun b!1185076 () Bool)

(assert (=> b!1185076 (= e!761195 ((_ map or) (store ((as const (Array Token!3812 Bool)) false) (h!17274 lt!407775) true) (content!1642 (t!111733 lt!407775))))))

(assert (= (and d!338924 c!197077) b!1185075))

(assert (= (and d!338924 (not c!197077)) b!1185076))

(declare-fun m!1360951 () Bool)

(assert (=> b!1185076 m!1360951))

(declare-fun m!1360953 () Bool)

(assert (=> b!1185076 m!1360953))

(assert (=> d!338858 d!338924))

(declare-fun d!338926 () Bool)

(declare-fun c!197078 () Bool)

(assert (=> d!338926 (= c!197078 ((_ is Nil!11873) l!6534))))

(declare-fun e!761196 () (InoxSet Token!3812))

(assert (=> d!338926 (= (content!1642 l!6534) e!761196)))

(declare-fun b!1185077 () Bool)

(assert (=> b!1185077 (= e!761196 ((as const (Array Token!3812 Bool)) false))))

(declare-fun b!1185078 () Bool)

(assert (=> b!1185078 (= e!761196 ((_ map or) (store ((as const (Array Token!3812 Bool)) false) (h!17274 l!6534) true) (content!1642 (t!111733 l!6534))))))

(assert (= (and d!338926 c!197078) b!1185077))

(assert (= (and d!338926 (not c!197078)) b!1185078))

(declare-fun m!1360955 () Bool)

(assert (=> b!1185078 m!1360955))

(assert (=> b!1185078 m!1360769))

(assert (=> d!338858 d!338926))

(declare-fun b!1185081 () Bool)

(declare-fun e!761199 () Bool)

(assert (=> b!1185081 (= e!761199 (subseq!329 (t!111733 (t!111733 lt!407601)) (t!111733 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185080 () Bool)

(declare-fun e!761200 () Bool)

(declare-fun e!761198 () Bool)

(assert (=> b!1185080 (= e!761200 e!761198)))

(declare-fun res!535651 () Bool)

(assert (=> b!1185080 (=> res!535651 e!761198)))

(assert (=> b!1185080 (= res!535651 e!761199)))

(declare-fun res!535650 () Bool)

(assert (=> b!1185080 (=> (not res!535650) (not e!761199))))

(assert (=> b!1185080 (= res!535650 (= (h!17274 (t!111733 lt!407601)) (h!17274 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185079 () Bool)

(declare-fun e!761197 () Bool)

(assert (=> b!1185079 (= e!761197 e!761200)))

(declare-fun res!535649 () Bool)

(assert (=> b!1185079 (=> (not res!535649) (not e!761200))))

(assert (=> b!1185079 (= res!535649 ((_ is Cons!11873) (t!111733 (t!111733 l!6534))))))

(declare-fun d!338928 () Bool)

(declare-fun res!535652 () Bool)

(assert (=> d!338928 (=> res!535652 e!761197)))

(assert (=> d!338928 (= res!535652 ((_ is Nil!11873) (t!111733 lt!407601)))))

(assert (=> d!338928 (= (subseq!329 (t!111733 lt!407601) (t!111733 (t!111733 l!6534))) e!761197)))

(declare-fun b!1185082 () Bool)

(assert (=> b!1185082 (= e!761198 (subseq!329 (t!111733 lt!407601) (t!111733 (t!111733 (t!111733 l!6534)))))))

(assert (= (and d!338928 (not res!535652)) b!1185079))

(assert (= (and b!1185079 res!535649) b!1185080))

(assert (= (and b!1185080 res!535650) b!1185081))

(assert (= (and b!1185080 (not res!535651)) b!1185082))

(declare-fun m!1360957 () Bool)

(assert (=> b!1185081 m!1360957))

(declare-fun m!1360959 () Bool)

(assert (=> b!1185082 m!1360959))

(assert (=> b!1184787 d!338928))

(declare-fun d!338930 () Bool)

(declare-fun charsToBigInt!1 (List!11895) Int)

(assert (=> d!338930 (= (inv!17 (value!67194 (h!17274 l!6534))) (= (charsToBigInt!1 (text!15435 (value!67194 (h!17274 l!6534)))) (value!67186 (value!67194 (h!17274 l!6534)))))))

(declare-fun bs!287338 () Bool)

(assert (= bs!287338 d!338930))

(declare-fun m!1360961 () Bool)

(assert (=> bs!287338 m!1360961))

(assert (=> b!1184655 d!338930))

(declare-fun d!338932 () Bool)

(declare-fun lt!407811 () Bool)

(declare-fun e!761201 () Bool)

(assert (=> d!338932 (= lt!407811 e!761201)))

(declare-fun res!535655 () Bool)

(assert (=> d!338932 (=> (not res!535655) (not e!761201))))

(assert (=> d!338932 (= res!535655 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 l!6534)))))) (list!4362 (singletonSeq!719 (h!17274 l!6534)))))))

(declare-fun e!761202 () Bool)

(assert (=> d!338932 (= lt!407811 e!761202)))

(declare-fun res!535653 () Bool)

(assert (=> d!338932 (=> (not res!535653) (not e!761202))))

(declare-fun lt!407810 () tuple2!12104)

(assert (=> d!338932 (= res!535653 (= (size!9362 (_1!6899 lt!407810)) 1))))

(assert (=> d!338932 (= lt!407810 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 l!6534)))))))

(assert (=> d!338932 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338932 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534)) lt!407811)))

(declare-fun b!1185083 () Bool)

(declare-fun res!535654 () Bool)

(assert (=> b!1185083 (=> (not res!535654) (not e!761202))))

(assert (=> b!1185083 (= res!535654 (= (apply!2586 (_1!6899 lt!407810) 0) (h!17274 l!6534)))))

(declare-fun b!1185084 () Bool)

(assert (=> b!1185084 (= e!761202 (isEmpty!7148 (_2!6899 lt!407810)))))

(declare-fun b!1185085 () Bool)

(assert (=> b!1185085 (= e!761201 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 l!6534)))))))))

(assert (= (and d!338932 res!535653) b!1185083))

(assert (= (and b!1185083 res!535654) b!1185084))

(assert (= (and d!338932 res!535655) b!1185085))

(declare-fun m!1360963 () Bool)

(assert (=> d!338932 m!1360963))

(declare-fun m!1360965 () Bool)

(assert (=> d!338932 m!1360965))

(declare-fun m!1360967 () Bool)

(assert (=> d!338932 m!1360967))

(declare-fun m!1360969 () Bool)

(assert (=> d!338932 m!1360969))

(assert (=> d!338932 m!1360967))

(assert (=> d!338932 m!1360963))

(assert (=> d!338932 m!1360967))

(declare-fun m!1360971 () Bool)

(assert (=> d!338932 m!1360971))

(assert (=> d!338932 m!1360343))

(declare-fun m!1360973 () Bool)

(assert (=> d!338932 m!1360973))

(declare-fun m!1360975 () Bool)

(assert (=> b!1185083 m!1360975))

(declare-fun m!1360977 () Bool)

(assert (=> b!1185084 m!1360977))

(assert (=> b!1185085 m!1360967))

(assert (=> b!1185085 m!1360967))

(assert (=> b!1185085 m!1360963))

(assert (=> b!1185085 m!1360963))

(assert (=> b!1185085 m!1360965))

(declare-fun m!1360979 () Bool)

(assert (=> b!1185085 m!1360979))

(assert (=> b!1184716 d!338932))

(assert (=> d!338814 d!338822))

(declare-fun d!338934 () Bool)

(assert (=> d!338934 (forall!3142 lt!407598 lambda!48815)))

(assert (=> d!338934 true))

(declare-fun _$37!340 () Unit!18194)

(assert (=> d!338934 (= (choose!7666 lt!407598 l!6534 lambda!48815) _$37!340)))

(declare-fun bs!287339 () Bool)

(assert (= bs!287339 d!338934))

(assert (=> bs!287339 m!1360327))

(assert (=> d!338814 d!338934))

(declare-fun d!338936 () Bool)

(declare-fun res!535660 () Bool)

(declare-fun e!761209 () Bool)

(assert (=> d!338936 (=> res!535660 e!761209)))

(assert (=> d!338936 (= res!535660 ((_ is Nil!11873) l!6534))))

(assert (=> d!338936 (= (forall!3142 l!6534 lambda!48815) e!761209)))

(declare-fun b!1185092 () Bool)

(declare-fun e!761210 () Bool)

(assert (=> b!1185092 (= e!761209 e!761210)))

(declare-fun res!535661 () Bool)

(assert (=> b!1185092 (=> (not res!535661) (not e!761210))))

(assert (=> b!1185092 (= res!535661 (dynLambda!5290 lambda!48815 (h!17274 l!6534)))))

(declare-fun b!1185093 () Bool)

(assert (=> b!1185093 (= e!761210 (forall!3142 (t!111733 l!6534) lambda!48815))))

(assert (= (and d!338936 (not res!535660)) b!1185092))

(assert (= (and b!1185092 res!535661) b!1185093))

(declare-fun b_lambda!35477 () Bool)

(assert (=> (not b_lambda!35477) (not b!1185092)))

(declare-fun m!1360981 () Bool)

(assert (=> b!1185092 m!1360981))

(assert (=> b!1185093 m!1360615))

(assert (=> d!338814 d!338936))

(declare-fun d!338938 () Bool)

(declare-fun lt!407816 () Int)

(assert (=> d!338938 (>= lt!407816 0)))

(declare-fun e!761213 () Int)

(assert (=> d!338938 (= lt!407816 e!761213)))

(declare-fun c!197083 () Bool)

(assert (=> d!338938 (= c!197083 ((_ is Nil!11873) (t!111733 l!6534)))))

(assert (=> d!338938 (= (size!9363 (t!111733 l!6534)) lt!407816)))

(declare-fun b!1185102 () Bool)

(assert (=> b!1185102 (= e!761213 0)))

(declare-fun b!1185103 () Bool)

(assert (=> b!1185103 (= e!761213 (+ 1 (size!9363 (t!111733 (t!111733 l!6534)))))))

(assert (= (and d!338938 c!197083) b!1185102))

(assert (= (and d!338938 (not c!197083)) b!1185103))

(declare-fun m!1360983 () Bool)

(assert (=> b!1185103 m!1360983))

(assert (=> bm!82615 d!338938))

(declare-fun d!338940 () Bool)

(assert (=> d!338940 true))

(declare-fun lambda!48853 () Int)

(declare-fun order!7373 () Int)

(declare-fun dynLambda!5292 (Int Int) Int)

(assert (=> d!338940 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (dynLambda!5292 order!7373 lambda!48853))))

(assert (=> d!338940 true))

(assert (=> d!338940 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (dynLambda!5292 order!7373 lambda!48853))))

(declare-fun Forall!447 (Int) Bool)

(assert (=> d!338940 (= (semiInverseModEq!746 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (Forall!447 lambda!48853))))

(declare-fun bs!287340 () Bool)

(assert (= bs!287340 d!338940))

(declare-fun m!1361003 () Bool)

(assert (=> bs!287340 m!1361003))

(assert (=> d!338810 d!338940))

(declare-fun d!338944 () Bool)

(declare-fun lt!407820 () Token!3812)

(declare-fun apply!2590 (List!11897 Int) Token!3812)

(assert (=> d!338944 (= lt!407820 (apply!2590 (list!4362 (_1!6899 lt!407702)) 0))))

(declare-fun apply!2591 (Conc!3889 Int) Token!3812)

(assert (=> d!338944 (= lt!407820 (apply!2591 (c!197025 (_1!6899 lt!407702)) 0))))

(declare-fun e!761219 () Bool)

(assert (=> d!338944 e!761219))

(declare-fun res!535669 () Bool)

(assert (=> d!338944 (=> (not res!535669) (not e!761219))))

(assert (=> d!338944 (= res!535669 (<= 0 0))))

(assert (=> d!338944 (= (apply!2586 (_1!6899 lt!407702) 0) lt!407820)))

(declare-fun b!1185115 () Bool)

(assert (=> b!1185115 (= e!761219 (< 0 (size!9362 (_1!6899 lt!407702))))))

(assert (= (and d!338944 res!535669) b!1185115))

(declare-fun m!1361005 () Bool)

(assert (=> d!338944 m!1361005))

(assert (=> d!338944 m!1361005))

(declare-fun m!1361007 () Bool)

(assert (=> d!338944 m!1361007))

(declare-fun m!1361009 () Bool)

(assert (=> d!338944 m!1361009))

(assert (=> b!1185115 m!1360567))

(assert (=> b!1184737 d!338944))

(declare-fun b!1185118 () Bool)

(declare-fun e!761222 () Bool)

(assert (=> b!1185118 (= e!761222 (subseq!329 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1))) (t!111733 (t!111733 l!6534))))))

(declare-fun b!1185117 () Bool)

(declare-fun e!761223 () Bool)

(declare-fun e!761221 () Bool)

(assert (=> b!1185117 (= e!761223 e!761221)))

(declare-fun res!535672 () Bool)

(assert (=> b!1185117 (=> res!535672 e!761221)))

(assert (=> b!1185117 (= res!535672 e!761222)))

(declare-fun res!535671 () Bool)

(assert (=> b!1185117 (=> (not res!535671) (not e!761222))))

(assert (=> b!1185117 (= res!535671 (= (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1))) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185116 () Bool)

(declare-fun e!761220 () Bool)

(assert (=> b!1185116 (= e!761220 e!761223)))

(declare-fun res!535670 () Bool)

(assert (=> b!1185116 (=> (not res!535670) (not e!761223))))

(assert (=> b!1185116 (= res!535670 ((_ is Cons!11873) (t!111733 l!6534)))))

(declare-fun d!338946 () Bool)

(declare-fun res!535673 () Bool)

(assert (=> d!338946 (=> res!535673 e!761220)))

(assert (=> d!338946 (= res!535673 ((_ is Nil!11873) (drop!553 (t!111733 l!6534) (- i!1621 1))))))

(assert (=> d!338946 (= (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 l!6534)) e!761220)))

(declare-fun b!1185119 () Bool)

(assert (=> b!1185119 (= e!761221 (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 (t!111733 l!6534))))))

(assert (= (and d!338946 (not res!535673)) b!1185116))

(assert (= (and b!1185116 res!535670) b!1185117))

(assert (= (and b!1185117 res!535671) b!1185118))

(assert (= (and b!1185117 (not res!535672)) b!1185119))

(declare-fun m!1361011 () Bool)

(assert (=> b!1185118 m!1361011))

(assert (=> b!1185119 m!1360341))

(declare-fun m!1361013 () Bool)

(assert (=> b!1185119 m!1361013))

(assert (=> b!1184924 d!338946))

(declare-fun d!338948 () Bool)

(declare-fun res!535674 () Bool)

(declare-fun e!761225 () Bool)

(assert (=> d!338948 (=> res!535674 e!761225)))

(assert (=> d!338948 (= res!535674 (or (not ((_ is Cons!11873) (drop!553 (t!111733 l!6534) (- i!1621 1)))) (not ((_ is Cons!11873) (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))))

(assert (=> d!338948 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (drop!553 (t!111733 l!6534) (- i!1621 1)) rules!4386) e!761225)))

(declare-fun b!1185120 () Bool)

(declare-fun e!761224 () Bool)

(assert (=> b!1185120 (= e!761225 e!761224)))

(declare-fun res!535675 () Bool)

(assert (=> b!1185120 (=> (not res!535675) (not e!761224))))

(assert (=> b!1185120 (= res!535675 (separableTokensPredicate!158 thiss!27592 (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1))) (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))) rules!4386))))

(declare-fun lt!407825 () Unit!18194)

(declare-fun Unit!18217 () Unit!18194)

(assert (=> b!1185120 (= lt!407825 Unit!18217)))

(assert (=> b!1185120 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))))) 0)))

(declare-fun lt!407824 () Unit!18194)

(declare-fun Unit!18218 () Unit!18194)

(assert (=> b!1185120 (= lt!407824 Unit!18218)))

(assert (=> b!1185120 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(declare-fun lt!407822 () Unit!18194)

(declare-fun Unit!18219 () Unit!18194)

(assert (=> b!1185120 (= lt!407822 Unit!18219)))

(assert (=> b!1185120 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1))))))

(declare-fun lt!407823 () Unit!18194)

(declare-fun lt!407827 () Unit!18194)

(assert (=> b!1185120 (= lt!407823 lt!407827)))

(assert (=> b!1185120 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(assert (=> b!1185120 (= lt!407827 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (drop!553 (t!111733 l!6534) (- i!1621 1)) (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1))))))))

(declare-fun lt!407821 () Unit!18194)

(declare-fun lt!407826 () Unit!18194)

(assert (=> b!1185120 (= lt!407821 lt!407826)))

(assert (=> b!1185120 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1))))))

(assert (=> b!1185120 (= lt!407826 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (drop!553 (t!111733 l!6534) (- i!1621 1)) (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(declare-fun b!1185121 () Bool)

(assert (=> b!1185121 (= e!761224 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))) (t!111733 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1))))) rules!4386))))

(assert (= (and d!338948 (not res!535674)) b!1185120))

(assert (= (and b!1185120 res!535675) b!1185121))

(declare-fun m!1361015 () Bool)

(assert (=> b!1185120 m!1361015))

(assert (=> b!1185120 m!1360341))

(declare-fun m!1361017 () Bool)

(assert (=> b!1185120 m!1361017))

(declare-fun m!1361019 () Bool)

(assert (=> b!1185120 m!1361019))

(declare-fun m!1361021 () Bool)

(assert (=> b!1185120 m!1361021))

(assert (=> b!1185120 m!1361021))

(declare-fun m!1361023 () Bool)

(assert (=> b!1185120 m!1361023))

(declare-fun m!1361025 () Bool)

(assert (=> b!1185120 m!1361025))

(assert (=> b!1185120 m!1360341))

(declare-fun m!1361027 () Bool)

(assert (=> b!1185120 m!1361027))

(declare-fun m!1361029 () Bool)

(assert (=> b!1185121 m!1361029))

(assert (=> b!1184924 d!338948))

(declare-fun d!338950 () Bool)

(assert (=> d!338950 (forall!3142 lt!407769 lambda!48847)))

(declare-fun lt!407828 () Unit!18194)

(assert (=> d!338950 (= lt!407828 (choose!7666 lt!407769 (t!111733 l!6534) lambda!48847))))

(assert (=> d!338950 (forall!3142 (t!111733 l!6534) lambda!48847)))

(assert (=> d!338950 (= (lemmaForallSubseq!193 lt!407769 (t!111733 l!6534) lambda!48847) lt!407828)))

(declare-fun bs!287341 () Bool)

(assert (= bs!287341 d!338950))

(assert (=> bs!287341 m!1360747))

(declare-fun m!1361031 () Bool)

(assert (=> bs!287341 m!1361031))

(assert (=> bs!287341 m!1360751))

(assert (=> b!1184924 d!338950))

(declare-fun d!338952 () Bool)

(declare-fun res!535676 () Bool)

(declare-fun e!761226 () Bool)

(assert (=> d!338952 (=> res!535676 e!761226)))

(assert (=> d!338952 (= res!535676 ((_ is Nil!11873) (t!111733 l!6534)))))

(assert (=> d!338952 (= (forall!3142 (t!111733 l!6534) lambda!48847) e!761226)))

(declare-fun b!1185122 () Bool)

(declare-fun e!761227 () Bool)

(assert (=> b!1185122 (= e!761226 e!761227)))

(declare-fun res!535677 () Bool)

(assert (=> b!1185122 (=> (not res!535677) (not e!761227))))

(assert (=> b!1185122 (= res!535677 (dynLambda!5290 lambda!48847 (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185123 () Bool)

(assert (=> b!1185123 (= e!761227 (forall!3142 (t!111733 (t!111733 l!6534)) lambda!48847))))

(assert (= (and d!338952 (not res!535676)) b!1185122))

(assert (= (and b!1185122 res!535677) b!1185123))

(declare-fun b_lambda!35479 () Bool)

(assert (=> (not b_lambda!35479) (not b!1185122)))

(declare-fun m!1361033 () Bool)

(assert (=> b!1185122 m!1361033))

(declare-fun m!1361035 () Bool)

(assert (=> b!1185123 m!1361035))

(assert (=> b!1184924 d!338952))

(assert (=> b!1184924 d!338860))

(declare-fun d!338954 () Bool)

(declare-fun res!535678 () Bool)

(declare-fun e!761228 () Bool)

(assert (=> d!338954 (=> res!535678 e!761228)))

(assert (=> d!338954 (= res!535678 ((_ is Nil!11873) lt!407769))))

(assert (=> d!338954 (= (forall!3142 lt!407769 lambda!48847) e!761228)))

(declare-fun b!1185124 () Bool)

(declare-fun e!761229 () Bool)

(assert (=> b!1185124 (= e!761228 e!761229)))

(declare-fun res!535679 () Bool)

(assert (=> b!1185124 (=> (not res!535679) (not e!761229))))

(assert (=> b!1185124 (= res!535679 (dynLambda!5290 lambda!48847 (h!17274 lt!407769)))))

(declare-fun b!1185125 () Bool)

(assert (=> b!1185125 (= e!761229 (forall!3142 (t!111733 lt!407769) lambda!48847))))

(assert (= (and d!338954 (not res!535678)) b!1185124))

(assert (= (and b!1185124 res!535679) b!1185125))

(declare-fun b_lambda!35481 () Bool)

(assert (=> (not b_lambda!35481) (not b!1185124)))

(declare-fun m!1361037 () Bool)

(assert (=> b!1185124 m!1361037))

(declare-fun m!1361039 () Bool)

(assert (=> b!1185125 m!1361039))

(assert (=> b!1184924 d!338954))

(assert (=> b!1184924 d!338828))

(declare-fun d!338956 () Bool)

(assert (=> d!338956 (= (isEmpty!7147 (originalCharacters!2629 (h!17274 l!6534))) ((_ is Nil!11870) (originalCharacters!2629 (h!17274 l!6534))))))

(assert (=> d!338744 d!338956))

(declare-fun d!338960 () Bool)

(declare-fun res!535680 () Bool)

(declare-fun e!761230 () Bool)

(assert (=> d!338960 (=> res!535680 e!761230)))

(assert (=> d!338960 (= res!535680 ((_ is Nil!11873) l!6534))))

(assert (=> d!338960 (= (forall!3142 l!6534 lambda!48836) e!761230)))

(declare-fun b!1185126 () Bool)

(declare-fun e!761231 () Bool)

(assert (=> b!1185126 (= e!761230 e!761231)))

(declare-fun res!535681 () Bool)

(assert (=> b!1185126 (=> (not res!535681) (not e!761231))))

(assert (=> b!1185126 (= res!535681 (dynLambda!5290 lambda!48836 (h!17274 l!6534)))))

(declare-fun b!1185127 () Bool)

(assert (=> b!1185127 (= e!761231 (forall!3142 (t!111733 l!6534) lambda!48836))))

(assert (= (and d!338960 (not res!535680)) b!1185126))

(assert (= (and b!1185126 res!535681) b!1185127))

(declare-fun b_lambda!35483 () Bool)

(assert (=> (not b_lambda!35483) (not b!1185126)))

(declare-fun m!1361047 () Bool)

(assert (=> b!1185126 m!1361047))

(declare-fun m!1361049 () Bool)

(assert (=> b!1185127 m!1361049))

(assert (=> d!338792 d!338960))

(assert (=> d!338792 d!338806))

(declare-fun lt!407837 () Bool)

(declare-fun d!338962 () Bool)

(assert (=> d!338962 (= lt!407837 (isEmpty!7147 (list!4361 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))))

(declare-fun isEmpty!7150 (Conc!3888) Bool)

(assert (=> d!338962 (= lt!407837 (isEmpty!7150 (c!197023 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))))

(assert (=> d!338962 (= (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))) lt!407837)))

(declare-fun bs!287344 () Bool)

(assert (= bs!287344 d!338962))

(declare-fun m!1361057 () Bool)

(assert (=> bs!287344 m!1361057))

(assert (=> bs!287344 m!1361057))

(declare-fun m!1361063 () Bool)

(assert (=> bs!287344 m!1361063))

(declare-fun m!1361065 () Bool)

(assert (=> bs!287344 m!1361065))

(assert (=> b!1184739 d!338962))

(declare-fun b!1185153 () Bool)

(declare-fun e!761252 () Bool)

(declare-fun lt!407857 () tuple2!12104)

(declare-fun isEmpty!7151 (BalanceConc!7800) Bool)

(assert (=> b!1185153 (= e!761252 (not (isEmpty!7151 (_1!6899 lt!407857))))))

(declare-fun b!1185154 () Bool)

(declare-fun e!761250 () Bool)

(assert (=> b!1185154 (= e!761250 e!761252)))

(declare-fun res!535703 () Bool)

(assert (=> b!1185154 (= res!535703 (< (size!9359 (_2!6899 lt!407857)) (size!9359 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))

(assert (=> b!1185154 (=> (not res!535703) (not e!761252))))

(declare-fun b!1185155 () Bool)

(declare-fun res!535704 () Bool)

(declare-fun e!761251 () Bool)

(assert (=> b!1185155 (=> (not res!535704) (not e!761251))))

(declare-datatypes ((tuple2!12108 0))(
  ( (tuple2!12109 (_1!6901 List!11897) (_2!6901 List!11894)) )
))
(declare-fun lexList!422 (LexerInterface!1770 List!11896 List!11894) tuple2!12108)

(assert (=> b!1185155 (= res!535704 (= (list!4362 (_1!6899 lt!407857)) (_1!6901 (lexList!422 thiss!27592 rules!4386 (list!4361 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))))

(declare-fun d!338968 () Bool)

(assert (=> d!338968 e!761251))

(declare-fun res!535705 () Bool)

(assert (=> d!338968 (=> (not res!535705) (not e!761251))))

(assert (=> d!338968 (= res!535705 e!761250)))

(declare-fun c!197087 () Bool)

(assert (=> d!338968 (= c!197087 (> (size!9362 (_1!6899 lt!407857)) 0))))

(declare-fun lexTailRecV2!329 (LexerInterface!1770 List!11896 BalanceConc!7798 BalanceConc!7798 BalanceConc!7798 BalanceConc!7800) tuple2!12104)

(assert (=> d!338968 (= lt!407857 (lexTailRecV2!329 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))) (BalanceConc!7799 Empty!3888) (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))) (BalanceConc!7801 Empty!3889)))))

(assert (=> d!338968 (= (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))) lt!407857)))

(declare-fun b!1185156 () Bool)

(assert (=> b!1185156 (= e!761251 (= (list!4361 (_2!6899 lt!407857)) (_2!6901 (lexList!422 thiss!27592 rules!4386 (list!4361 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))))

(declare-fun b!1185157 () Bool)

(assert (=> b!1185157 (= e!761250 (= (_2!6899 lt!407857) (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))))

(assert (= (and d!338968 c!197087) b!1185154))

(assert (= (and d!338968 (not c!197087)) b!1185157))

(assert (= (and b!1185154 res!535703) b!1185153))

(assert (= (and d!338968 res!535705) b!1185155))

(assert (= (and b!1185155 res!535704) b!1185156))

(declare-fun m!1361141 () Bool)

(assert (=> b!1185154 m!1361141))

(assert (=> b!1185154 m!1360559))

(declare-fun m!1361143 () Bool)

(assert (=> b!1185154 m!1361143))

(declare-fun m!1361145 () Bool)

(assert (=> d!338968 m!1361145))

(assert (=> d!338968 m!1360559))

(assert (=> d!338968 m!1360559))

(declare-fun m!1361147 () Bool)

(assert (=> d!338968 m!1361147))

(declare-fun m!1361149 () Bool)

(assert (=> b!1185155 m!1361149))

(assert (=> b!1185155 m!1360559))

(declare-fun m!1361151 () Bool)

(assert (=> b!1185155 m!1361151))

(assert (=> b!1185155 m!1361151))

(declare-fun m!1361153 () Bool)

(assert (=> b!1185155 m!1361153))

(declare-fun m!1361155 () Bool)

(assert (=> b!1185153 m!1361155))

(declare-fun m!1361157 () Bool)

(assert (=> b!1185156 m!1361157))

(assert (=> b!1185156 m!1360559))

(assert (=> b!1185156 m!1361151))

(assert (=> b!1185156 m!1361151))

(assert (=> b!1185156 m!1361153))

(assert (=> b!1184739 d!338968))

(declare-fun d!338984 () Bool)

(declare-fun lt!407863 () BalanceConc!7798)

(declare-fun printList!522 (LexerInterface!1770 List!11897) List!11894)

(assert (=> d!338984 (= (list!4361 lt!407863) (printList!522 thiss!27592 (list!4362 (singletonSeq!719 (h!17274 lt!407598)))))))

(declare-fun printTailRec!504 (LexerInterface!1770 BalanceConc!7800 Int BalanceConc!7798) BalanceConc!7798)

(assert (=> d!338984 (= lt!407863 (printTailRec!504 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)) 0 (BalanceConc!7799 Empty!3888)))))

(assert (=> d!338984 (= (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))) lt!407863)))

(declare-fun bs!287347 () Bool)

(assert (= bs!287347 d!338984))

(declare-fun m!1361167 () Bool)

(assert (=> bs!287347 m!1361167))

(assert (=> bs!287347 m!1360563))

(assert (=> bs!287347 m!1360565))

(assert (=> bs!287347 m!1360565))

(declare-fun m!1361169 () Bool)

(assert (=> bs!287347 m!1361169))

(assert (=> bs!287347 m!1360563))

(declare-fun m!1361171 () Bool)

(assert (=> bs!287347 m!1361171))

(assert (=> b!1184739 d!338984))

(declare-fun d!338988 () Bool)

(declare-fun e!761256 () Bool)

(assert (=> d!338988 e!761256))

(declare-fun res!535708 () Bool)

(assert (=> d!338988 (=> (not res!535708) (not e!761256))))

(declare-fun lt!407866 () BalanceConc!7800)

(assert (=> d!338988 (= res!535708 (= (list!4362 lt!407866) (Cons!11873 (h!17274 lt!407598) Nil!11873)))))

(declare-fun singleton!312 (Token!3812) BalanceConc!7800)

(assert (=> d!338988 (= lt!407866 (singleton!312 (h!17274 lt!407598)))))

(assert (=> d!338988 (= (singletonSeq!719 (h!17274 lt!407598)) lt!407866)))

(declare-fun b!1185161 () Bool)

(declare-fun isBalanced!1106 (Conc!3889) Bool)

(assert (=> b!1185161 (= e!761256 (isBalanced!1106 (c!197025 lt!407866)))))

(assert (= (and d!338988 res!535708) b!1185161))

(declare-fun m!1361173 () Bool)

(assert (=> d!338988 m!1361173))

(declare-fun m!1361175 () Bool)

(assert (=> d!338988 m!1361175))

(declare-fun m!1361177 () Bool)

(assert (=> b!1185161 m!1361177))

(assert (=> b!1184739 d!338988))

(declare-fun b!1185164 () Bool)

(declare-fun e!761259 () Bool)

(assert (=> b!1185164 (= e!761259 (subseq!329 (t!111733 lt!407598) (t!111733 (t!111733 l!6534))))))

(declare-fun b!1185163 () Bool)

(declare-fun e!761260 () Bool)

(declare-fun e!761258 () Bool)

(assert (=> b!1185163 (= e!761260 e!761258)))

(declare-fun res!535711 () Bool)

(assert (=> b!1185163 (=> res!535711 e!761258)))

(assert (=> b!1185163 (= res!535711 e!761259)))

(declare-fun res!535710 () Bool)

(assert (=> b!1185163 (=> (not res!535710) (not e!761259))))

(assert (=> b!1185163 (= res!535710 (= (h!17274 lt!407598) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185162 () Bool)

(declare-fun e!761257 () Bool)

(assert (=> b!1185162 (= e!761257 e!761260)))

(declare-fun res!535709 () Bool)

(assert (=> b!1185162 (=> (not res!535709) (not e!761260))))

(assert (=> b!1185162 (= res!535709 ((_ is Cons!11873) (t!111733 l!6534)))))

(declare-fun d!338990 () Bool)

(declare-fun res!535712 () Bool)

(assert (=> d!338990 (=> res!535712 e!761257)))

(assert (=> d!338990 (= res!535712 ((_ is Nil!11873) lt!407598))))

(assert (=> d!338990 (= (subseq!329 lt!407598 (t!111733 l!6534)) e!761257)))

(declare-fun b!1185165 () Bool)

(assert (=> b!1185165 (= e!761258 (subseq!329 lt!407598 (t!111733 (t!111733 l!6534))))))

(assert (= (and d!338990 (not res!535712)) b!1185162))

(assert (= (and b!1185162 res!535709) b!1185163))

(assert (= (and b!1185163 res!535710) b!1185164))

(assert (= (and b!1185163 (not res!535711)) b!1185165))

(declare-fun m!1361179 () Bool)

(assert (=> b!1185164 m!1361179))

(declare-fun m!1361181 () Bool)

(assert (=> b!1185165 m!1361181))

(assert (=> b!1184792 d!338990))

(declare-fun d!338992 () Bool)

(declare-fun lt!407868 () Bool)

(declare-fun e!761261 () Bool)

(assert (=> d!338992 (= lt!407868 e!761261)))

(declare-fun res!535715 () Bool)

(assert (=> d!338992 (=> (not res!535715) (not e!761261))))

(assert (=> d!338992 (= res!535715 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407766)))))) (list!4362 (singletonSeq!719 (h!17274 lt!407766)))))))

(declare-fun e!761262 () Bool)

(assert (=> d!338992 (= lt!407868 e!761262)))

(declare-fun res!535713 () Bool)

(assert (=> d!338992 (=> (not res!535713) (not e!761262))))

(declare-fun lt!407867 () tuple2!12104)

(assert (=> d!338992 (= res!535713 (= (size!9362 (_1!6899 lt!407867)) 1))))

(assert (=> d!338992 (= lt!407867 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407766)))))))

(assert (=> d!338992 (not (isEmpty!7144 rules!4386))))

(assert (=> d!338992 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407766)) lt!407868)))

(declare-fun b!1185166 () Bool)

(declare-fun res!535714 () Bool)

(assert (=> b!1185166 (=> (not res!535714) (not e!761262))))

(assert (=> b!1185166 (= res!535714 (= (apply!2586 (_1!6899 lt!407867) 0) (h!17274 lt!407766)))))

(declare-fun b!1185167 () Bool)

(assert (=> b!1185167 (= e!761262 (isEmpty!7148 (_2!6899 lt!407867)))))

(declare-fun b!1185168 () Bool)

(assert (=> b!1185168 (= e!761261 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407766)))))))))

(assert (= (and d!338992 res!535713) b!1185166))

(assert (= (and b!1185166 res!535714) b!1185167))

(assert (= (and d!338992 res!535715) b!1185168))

(declare-fun m!1361183 () Bool)

(assert (=> d!338992 m!1361183))

(declare-fun m!1361185 () Bool)

(assert (=> d!338992 m!1361185))

(declare-fun m!1361187 () Bool)

(assert (=> d!338992 m!1361187))

(declare-fun m!1361189 () Bool)

(assert (=> d!338992 m!1361189))

(assert (=> d!338992 m!1361187))

(assert (=> d!338992 m!1361183))

(assert (=> d!338992 m!1361187))

(declare-fun m!1361191 () Bool)

(assert (=> d!338992 m!1361191))

(assert (=> d!338992 m!1360343))

(declare-fun m!1361193 () Bool)

(assert (=> d!338992 m!1361193))

(declare-fun m!1361195 () Bool)

(assert (=> b!1185166 m!1361195))

(declare-fun m!1361197 () Bool)

(assert (=> b!1185167 m!1361197))

(assert (=> b!1185168 m!1361187))

(assert (=> b!1185168 m!1361187))

(assert (=> b!1185168 m!1361183))

(assert (=> b!1185168 m!1361183))

(assert (=> b!1185168 m!1361185))

(declare-fun m!1361199 () Bool)

(assert (=> b!1185168 m!1361199))

(assert (=> b!1184922 d!338992))

(declare-fun d!338994 () Bool)

(declare-fun e!761265 () Bool)

(assert (=> d!338994 e!761265))

(declare-fun res!535718 () Bool)

(assert (=> d!338994 (=> (not res!535718) (not e!761265))))

(declare-fun lt!407871 () BalanceConc!7800)

(assert (=> d!338994 (= res!535718 (= (list!4362 lt!407871) lt!407598))))

(declare-fun fromList!323 (List!11897) Conc!3889)

(assert (=> d!338994 (= lt!407871 (BalanceConc!7801 (fromList!323 lt!407598)))))

(assert (=> d!338994 (= (fromListB!683 lt!407598) lt!407871)))

(declare-fun b!1185171 () Bool)

(assert (=> b!1185171 (= e!761265 (isBalanced!1106 (fromList!323 lt!407598)))))

(assert (= (and d!338994 res!535718) b!1185171))

(declare-fun m!1361201 () Bool)

(assert (=> d!338994 m!1361201))

(declare-fun m!1361203 () Bool)

(assert (=> d!338994 m!1361203))

(assert (=> b!1185171 m!1361203))

(assert (=> b!1185171 m!1361203))

(declare-fun m!1361205 () Bool)

(assert (=> b!1185171 m!1361205))

(assert (=> d!338790 d!338994))

(declare-fun d!338996 () Bool)

(assert (=> d!338996 (= (inv!15690 (tag!2337 (rule!3496 (h!17274 (t!111733 l!6534))))) (= (mod (str.len (value!67193 (tag!2337 (rule!3496 (h!17274 (t!111733 l!6534)))))) 2) 0))))

(assert (=> b!1184977 d!338996))

(declare-fun d!338998 () Bool)

(declare-fun res!535719 () Bool)

(declare-fun e!761266 () Bool)

(assert (=> d!338998 (=> (not res!535719) (not e!761266))))

(assert (=> d!338998 (= res!535719 (semiInverseModEq!746 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))))))

(assert (=> d!338998 (= (inv!15693 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) e!761266)))

(declare-fun b!1185172 () Bool)

(assert (=> b!1185172 (= e!761266 (equivClasses!713 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))))))

(assert (= (and d!338998 res!535719) b!1185172))

(declare-fun m!1361207 () Bool)

(assert (=> d!338998 m!1361207))

(declare-fun m!1361209 () Bool)

(assert (=> b!1185172 m!1361209))

(assert (=> b!1184977 d!338998))

(declare-fun d!339000 () Bool)

(declare-fun res!535720 () Bool)

(declare-fun e!761268 () Bool)

(assert (=> d!339000 (=> res!535720 e!761268)))

(assert (=> d!339000 (= res!535720 (or (not ((_ is Cons!11873) (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))) (not ((_ is Cons!11873) (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))))))))

(assert (=> d!339000 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))) rules!4386) e!761268)))

(declare-fun b!1185173 () Bool)

(declare-fun e!761267 () Bool)

(assert (=> b!1185173 (= e!761268 e!761267)))

(declare-fun res!535721 () Bool)

(assert (=> b!1185173 (=> (not res!535721) (not e!761267))))

(assert (=> b!1185173 (= res!535721 (separableTokensPredicate!158 thiss!27592 (h!17274 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601)))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))) rules!4386))))

(declare-fun lt!407876 () Unit!18194)

(declare-fun Unit!18223 () Unit!18194)

(assert (=> b!1185173 (= lt!407876 Unit!18223)))

(assert (=> b!1185173 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))))) 0)))

(declare-fun lt!407875 () Unit!18194)

(declare-fun Unit!18224 () Unit!18194)

(assert (=> b!1185173 (= lt!407875 Unit!18224)))

(assert (=> b!1185173 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))))))

(declare-fun lt!407873 () Unit!18194)

(declare-fun Unit!18225 () Unit!18194)

(assert (=> b!1185173 (= lt!407873 Unit!18225)))

(assert (=> b!1185173 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601)))))))

(declare-fun lt!407874 () Unit!18194)

(declare-fun lt!407878 () Unit!18194)

(assert (=> b!1185173 (= lt!407874 lt!407878)))

(assert (=> b!1185173 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))))))

(assert (=> b!1185173 (= lt!407878 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601)))))))))

(declare-fun lt!407872 () Unit!18194)

(declare-fun lt!407877 () Unit!18194)

(assert (=> b!1185173 (= lt!407872 lt!407877)))

(assert (=> b!1185173 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601)))))))

(assert (=> b!1185173 (= lt!407877 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))) (h!17274 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))))))

(declare-fun b!1185174 () Bool)

(assert (=> b!1185174 (= e!761267 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601))))) (t!111733 (t!111733 (Cons!11873 (h!17274 (t!111733 lt!407601)) (t!111733 (t!111733 lt!407601)))))) rules!4386))))

(assert (= (and d!339000 (not res!535720)) b!1185173))

(assert (= (and b!1185173 res!535721) b!1185174))

(declare-fun m!1361211 () Bool)

(assert (=> b!1185173 m!1361211))

(declare-fun m!1361213 () Bool)

(assert (=> b!1185173 m!1361213))

(declare-fun m!1361215 () Bool)

(assert (=> b!1185173 m!1361215))

(declare-fun m!1361217 () Bool)

(assert (=> b!1185173 m!1361217))

(assert (=> b!1185173 m!1361217))

(declare-fun m!1361219 () Bool)

(assert (=> b!1185173 m!1361219))

(declare-fun m!1361221 () Bool)

(assert (=> b!1185173 m!1361221))

(declare-fun m!1361223 () Bool)

(assert (=> b!1185173 m!1361223))

(declare-fun m!1361225 () Bool)

(assert (=> b!1185174 m!1361225))

(assert (=> b!1184621 d!339000))

(declare-fun d!339002 () Bool)

(assert (=> d!339002 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534)))))

(declare-fun lt!407879 () Unit!18194)

(assert (=> d!339002 (= lt!407879 (choose!7668 thiss!27592 rules!4386 l!6534 (h!17274 (t!111733 l!6534))))))

(assert (=> d!339002 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339002 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 l!6534 (h!17274 (t!111733 l!6534))) lt!407879)))

(declare-fun bs!287348 () Bool)

(assert (= bs!287348 d!339002))

(assert (=> bs!287348 m!1360393))

(declare-fun m!1361227 () Bool)

(assert (=> bs!287348 m!1361227))

(assert (=> bs!287348 m!1360343))

(assert (=> b!1184729 d!339002))

(declare-fun d!339004 () Bool)

(assert (=> d!339004 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534))))

(declare-fun lt!407880 () Unit!18194)

(assert (=> d!339004 (= lt!407880 (choose!7668 thiss!27592 rules!4386 l!6534 (h!17274 l!6534)))))

(assert (=> d!339004 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339004 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 l!6534 (h!17274 l!6534)) lt!407880)))

(declare-fun bs!287349 () Bool)

(assert (= bs!287349 d!339004))

(assert (=> bs!287349 m!1360537))

(declare-fun m!1361229 () Bool)

(assert (=> bs!287349 m!1361229))

(assert (=> bs!287349 m!1360343))

(assert (=> b!1184729 d!339004))

(assert (=> b!1184729 d!338932))

(assert (=> b!1184729 d!338892))

(declare-fun d!339006 () Bool)

(declare-fun lt!407881 () BalanceConc!7798)

(assert (=> d!339006 (= (list!4361 lt!407881) (originalCharacters!2629 (h!17274 (t!111733 l!6534))))))

(assert (=> d!339006 (= lt!407881 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (value!67194 (h!17274 (t!111733 l!6534)))))))

(assert (=> d!339006 (= (charsOf!1096 (h!17274 (t!111733 l!6534))) lt!407881)))

(declare-fun b_lambda!35491 () Bool)

(assert (=> (not b_lambda!35491) (not d!339006)))

(declare-fun t!111791 () Bool)

(declare-fun tb!66253 () Bool)

(assert (=> (and b!1184549 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111791) tb!66253))

(declare-fun b!1185175 () Bool)

(declare-fun e!761269 () Bool)

(declare-fun tp!337811 () Bool)

(assert (=> b!1185175 (= e!761269 (and (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (value!67194 (h!17274 (t!111733 l!6534)))))) tp!337811))))

(declare-fun result!79554 () Bool)

(assert (=> tb!66253 (= result!79554 (and (inv!15698 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (value!67194 (h!17274 (t!111733 l!6534))))) e!761269))))

(assert (= tb!66253 b!1185175))

(declare-fun m!1361243 () Bool)

(assert (=> b!1185175 m!1361243))

(declare-fun m!1361245 () Bool)

(assert (=> tb!66253 m!1361245))

(assert (=> d!339006 t!111791))

(declare-fun b_and!81509 () Bool)

(assert (= b_and!81493 (and (=> t!111791 result!79554) b_and!81509)))

(declare-fun t!111793 () Bool)

(declare-fun tb!66255 () Bool)

(assert (=> (and b!1184553 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111793) tb!66255))

(declare-fun result!79556 () Bool)

(assert (= result!79556 result!79554))

(assert (=> d!339006 t!111793))

(declare-fun b_and!81511 () Bool)

(assert (= b_and!81495 (and (=> t!111793 result!79556) b_and!81511)))

(declare-fun t!111795 () Bool)

(declare-fun tb!66257 () Bool)

(assert (=> (and b!1184978 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111795) tb!66257))

(declare-fun result!79558 () Bool)

(assert (= result!79558 result!79554))

(assert (=> d!339006 t!111795))

(declare-fun b_and!81513 () Bool)

(assert (= b_and!81497 (and (=> t!111795 result!79558) b_and!81513)))

(declare-fun t!111797 () Bool)

(declare-fun tb!66259 () Bool)

(assert (=> (and b!1185011 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111797) tb!66259))

(declare-fun result!79560 () Bool)

(assert (= result!79560 result!79554))

(assert (=> d!339006 t!111797))

(declare-fun b_and!81515 () Bool)

(assert (= b_and!81499 (and (=> t!111797 result!79560) b_and!81515)))

(declare-fun m!1361247 () Bool)

(assert (=> d!339006 m!1361247))

(declare-fun m!1361249 () Bool)

(assert (=> d!339006 m!1361249))

(assert (=> b!1184729 d!339006))

(declare-fun d!339010 () Bool)

(assert (=> d!339010 (= (separableTokensPredicate!158 thiss!27592 (h!17274 l!6534) (h!17274 (t!111733 l!6534)) rules!4386) (not (prefixMatchZipperSequence!114 (rulesRegex!85 thiss!27592 rules!4386) (++!3027 (charsOf!1096 (h!17274 l!6534)) (singletonSeq!720 (apply!2587 (charsOf!1096 (h!17274 (t!111733 l!6534))) 0))))))))

(declare-fun bs!287351 () Bool)

(assert (= bs!287351 d!339010))

(declare-fun m!1361251 () Bool)

(assert (=> bs!287351 m!1361251))

(declare-fun m!1361253 () Bool)

(assert (=> bs!287351 m!1361253))

(declare-fun m!1361255 () Bool)

(assert (=> bs!287351 m!1361255))

(assert (=> bs!287351 m!1360943))

(declare-fun m!1361257 () Bool)

(assert (=> bs!287351 m!1361257))

(declare-fun m!1361259 () Bool)

(assert (=> bs!287351 m!1361259))

(assert (=> bs!287351 m!1360943))

(assert (=> bs!287351 m!1360551))

(assert (=> bs!287351 m!1361253))

(assert (=> bs!287351 m!1361251))

(assert (=> bs!287351 m!1361255))

(assert (=> bs!287351 m!1361257))

(assert (=> bs!287351 m!1360551))

(assert (=> b!1184729 d!339010))

(declare-fun d!339012 () Bool)

(declare-fun lt!407882 () Int)

(assert (=> d!339012 (= lt!407882 (size!9360 (list!4361 (charsOf!1096 (h!17274 (t!111733 l!6534))))))))

(assert (=> d!339012 (= lt!407882 (size!9364 (c!197023 (charsOf!1096 (h!17274 (t!111733 l!6534))))))))

(assert (=> d!339012 (= (size!9359 (charsOf!1096 (h!17274 (t!111733 l!6534)))) lt!407882)))

(declare-fun bs!287352 () Bool)

(assert (= bs!287352 d!339012))

(assert (=> bs!287352 m!1360551))

(declare-fun m!1361261 () Bool)

(assert (=> bs!287352 m!1361261))

(assert (=> bs!287352 m!1361261))

(declare-fun m!1361263 () Bool)

(assert (=> bs!287352 m!1361263))

(declare-fun m!1361265 () Bool)

(assert (=> bs!287352 m!1361265))

(assert (=> b!1184729 d!339012))

(declare-fun bs!287354 () Bool)

(declare-fun d!339014 () Bool)

(assert (= bs!287354 (and d!339014 d!338760)))

(declare-fun lambda!48854 () Int)

(assert (=> bs!287354 (= lambda!48854 lambda!48835)))

(declare-fun bs!287355 () Bool)

(assert (= bs!287355 (and d!339014 d!338816)))

(assert (=> bs!287355 (= lambda!48854 lambda!48839)))

(declare-fun bs!287356 () Bool)

(assert (= bs!287356 (and d!339014 d!338794)))

(assert (=> bs!287356 (= lambda!48854 lambda!48837)))

(declare-fun bs!287357 () Bool)

(assert (= bs!287357 (and d!339014 b!1184544)))

(assert (=> bs!287357 (= (= thiss!27592 Lexer!1768) (= lambda!48854 lambda!48815))))

(declare-fun bs!287358 () Bool)

(assert (= bs!287358 (and d!339014 b!1184924)))

(assert (=> bs!287358 (= (= thiss!27592 Lexer!1768) (= lambda!48854 lambda!48847))))

(declare-fun bs!287359 () Bool)

(assert (= bs!287359 (and d!339014 d!338792)))

(assert (=> bs!287359 (= lambda!48854 lambda!48836)))

(declare-fun bs!287360 () Bool)

(assert (= bs!287360 (and d!339014 d!338832)))

(assert (=> bs!287360 (= lambda!48854 lambda!48843)))

(declare-fun bs!287361 () Bool)

(assert (= bs!287361 (and d!339014 d!338748)))

(assert (=> bs!287361 (= lambda!48854 lambda!48826)))

(declare-fun bs!287362 () Bool)

(assert (= bs!287362 (and d!339014 d!338804)))

(assert (=> bs!287362 (= lambda!48854 lambda!48838)))

(declare-fun b!1185180 () Bool)

(declare-fun e!761274 () Bool)

(assert (=> b!1185180 (= e!761274 true)))

(declare-fun b!1185179 () Bool)

(declare-fun e!761273 () Bool)

(assert (=> b!1185179 (= e!761273 e!761274)))

(declare-fun b!1185178 () Bool)

(declare-fun e!761272 () Bool)

(assert (=> b!1185178 (= e!761272 e!761273)))

(assert (=> d!339014 e!761272))

(assert (= b!1185179 b!1185180))

(assert (= b!1185178 b!1185179))

(assert (= (and d!339014 ((_ is Cons!11872) rules!4386)) b!1185178))

(assert (=> b!1185180 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48854))))

(assert (=> b!1185180 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48854))))

(assert (=> d!339014 true))

(declare-fun lt!407885 () Bool)

(assert (=> d!339014 (= lt!407885 (forall!3142 (t!111733 (t!111733 lt!407601)) lambda!48854))))

(declare-fun e!761271 () Bool)

(assert (=> d!339014 (= lt!407885 e!761271)))

(declare-fun res!535722 () Bool)

(assert (=> d!339014 (=> res!535722 e!761271)))

(assert (=> d!339014 (= res!535722 (not ((_ is Cons!11873) (t!111733 (t!111733 lt!407601)))))))

(assert (=> d!339014 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339014 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 lt!407601))) lt!407885)))

(declare-fun b!1185176 () Bool)

(declare-fun e!761270 () Bool)

(assert (=> b!1185176 (= e!761271 e!761270)))

(declare-fun res!535723 () Bool)

(assert (=> b!1185176 (=> (not res!535723) (not e!761270))))

(assert (=> b!1185176 (= res!535723 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 lt!407601)))))))

(declare-fun b!1185177 () Bool)

(assert (=> b!1185177 (= e!761270 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 (t!111733 lt!407601)))))))

(assert (= (and d!339014 (not res!535722)) b!1185176))

(assert (= (and b!1185176 res!535723) b!1185177))

(declare-fun m!1361281 () Bool)

(assert (=> d!339014 m!1361281))

(assert (=> d!339014 m!1360343))

(declare-fun m!1361283 () Bool)

(assert (=> b!1185176 m!1361283))

(declare-fun m!1361285 () Bool)

(assert (=> b!1185177 m!1361285))

(assert (=> b!1184744 d!339014))

(assert (=> b!1184755 d!338800))

(declare-fun d!339022 () Bool)

(declare-fun res!535732 () Bool)

(declare-fun e!761283 () Bool)

(assert (=> d!339022 (=> res!535732 e!761283)))

(assert (=> d!339022 (= res!535732 ((_ is Nil!11873) (list!4362 (seqFromList!1536 lt!407598))))))

(assert (=> d!339022 (= (forall!3142 (list!4362 (seqFromList!1536 lt!407598)) lambda!48835) e!761283)))

(declare-fun b!1185189 () Bool)

(declare-fun e!761284 () Bool)

(assert (=> b!1185189 (= e!761283 e!761284)))

(declare-fun res!535733 () Bool)

(assert (=> b!1185189 (=> (not res!535733) (not e!761284))))

(assert (=> b!1185189 (= res!535733 (dynLambda!5290 lambda!48835 (h!17274 (list!4362 (seqFromList!1536 lt!407598)))))))

(declare-fun b!1185190 () Bool)

(assert (=> b!1185190 (= e!761284 (forall!3142 (t!111733 (list!4362 (seqFromList!1536 lt!407598))) lambda!48835))))

(assert (= (and d!339022 (not res!535732)) b!1185189))

(assert (= (and b!1185189 res!535733) b!1185190))

(declare-fun b_lambda!35495 () Bool)

(assert (=> (not b_lambda!35495) (not b!1185189)))

(declare-fun m!1361287 () Bool)

(assert (=> b!1185189 m!1361287))

(declare-fun m!1361289 () Bool)

(assert (=> b!1185190 m!1361289))

(assert (=> d!338760 d!339022))

(declare-fun d!339024 () Bool)

(declare-fun list!4364 (Conc!3889) List!11897)

(assert (=> d!339024 (= (list!4362 (seqFromList!1536 lt!407598)) (list!4364 (c!197025 (seqFromList!1536 lt!407598))))))

(declare-fun bs!287363 () Bool)

(assert (= bs!287363 d!339024))

(declare-fun m!1361307 () Bool)

(assert (=> bs!287363 m!1361307))

(assert (=> d!338760 d!339024))

(declare-fun d!339028 () Bool)

(declare-fun lt!407901 () Bool)

(assert (=> d!339028 (= lt!407901 (forall!3142 (list!4362 (seqFromList!1536 lt!407598)) lambda!48835))))

(declare-fun forall!3145 (Conc!3889 Int) Bool)

(assert (=> d!339028 (= lt!407901 (forall!3145 (c!197025 (seqFromList!1536 lt!407598)) lambda!48835))))

(assert (=> d!339028 (= (forall!3144 (seqFromList!1536 lt!407598) lambda!48835) lt!407901)))

(declare-fun bs!287364 () Bool)

(assert (= bs!287364 d!339028))

(assert (=> bs!287364 m!1360297))

(assert (=> bs!287364 m!1360525))

(assert (=> bs!287364 m!1360525))

(assert (=> bs!287364 m!1360527))

(declare-fun m!1361329 () Bool)

(assert (=> bs!287364 m!1361329))

(assert (=> d!338760 d!339028))

(assert (=> d!338760 d!338806))

(declare-fun d!339034 () Bool)

(declare-fun res!535737 () Bool)

(declare-fun e!761290 () Bool)

(assert (=> d!339034 (=> (not res!535737) (not e!761290))))

(assert (=> d!339034 (= res!535737 (not (isEmpty!7147 (originalCharacters!2629 (h!17274 (t!111733 l!6534))))))))

(assert (=> d!339034 (= (inv!15694 (h!17274 (t!111733 l!6534))) e!761290)))

(declare-fun b!1185200 () Bool)

(declare-fun res!535738 () Bool)

(assert (=> b!1185200 (=> (not res!535738) (not e!761290))))

(assert (=> b!1185200 (= res!535738 (= (originalCharacters!2629 (h!17274 (t!111733 l!6534))) (list!4361 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (value!67194 (h!17274 (t!111733 l!6534)))))))))

(declare-fun b!1185201 () Bool)

(assert (=> b!1185201 (= e!761290 (= (size!9355 (h!17274 (t!111733 l!6534))) (size!9360 (originalCharacters!2629 (h!17274 (t!111733 l!6534))))))))

(assert (= (and d!339034 res!535737) b!1185200))

(assert (= (and b!1185200 res!535738) b!1185201))

(declare-fun b_lambda!35497 () Bool)

(assert (=> (not b_lambda!35497) (not b!1185200)))

(assert (=> b!1185200 t!111791))

(declare-fun b_and!81517 () Bool)

(assert (= b_and!81509 (and (=> t!111791 result!79554) b_and!81517)))

(assert (=> b!1185200 t!111793))

(declare-fun b_and!81519 () Bool)

(assert (= b_and!81511 (and (=> t!111793 result!79556) b_and!81519)))

(assert (=> b!1185200 t!111795))

(declare-fun b_and!81521 () Bool)

(assert (= b_and!81513 (and (=> t!111795 result!79558) b_and!81521)))

(assert (=> b!1185200 t!111797))

(declare-fun b_and!81523 () Bool)

(assert (= b_and!81515 (and (=> t!111797 result!79560) b_and!81523)))

(declare-fun m!1361331 () Bool)

(assert (=> d!339034 m!1361331))

(assert (=> b!1185200 m!1361249))

(assert (=> b!1185200 m!1361249))

(declare-fun m!1361335 () Bool)

(assert (=> b!1185200 m!1361335))

(declare-fun m!1361339 () Bool)

(assert (=> b!1185201 m!1361339))

(assert (=> b!1184975 d!339034))

(declare-fun d!339036 () Bool)

(declare-fun list!4365 (Conc!3888) List!11894)

(assert (=> d!339036 (= (list!4361 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))) (list!4365 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(declare-fun bs!287365 () Bool)

(assert (= bs!287365 d!339036))

(declare-fun m!1361357 () Bool)

(assert (=> bs!287365 m!1361357))

(assert (=> b!1184613 d!339036))

(declare-fun d!339042 () Bool)

(declare-fun lt!407910 () Token!3812)

(assert (=> d!339042 (= lt!407910 (apply!2590 (list!4362 (_1!6899 lt!407704)) 0))))

(assert (=> d!339042 (= lt!407910 (apply!2591 (c!197025 (_1!6899 lt!407704)) 0))))

(declare-fun e!761302 () Bool)

(assert (=> d!339042 e!761302))

(declare-fun res!535746 () Bool)

(assert (=> d!339042 (=> (not res!535746) (not e!761302))))

(assert (=> d!339042 (= res!535746 (<= 0 0))))

(assert (=> d!339042 (= (apply!2586 (_1!6899 lt!407704) 0) lt!407910)))

(declare-fun b!1185217 () Bool)

(assert (=> b!1185217 (= e!761302 (< 0 (size!9362 (_1!6899 lt!407704))))))

(assert (= (and d!339042 res!535746) b!1185217))

(declare-fun m!1361369 () Bool)

(assert (=> d!339042 m!1361369))

(assert (=> d!339042 m!1361369))

(declare-fun m!1361371 () Bool)

(assert (=> d!339042 m!1361371))

(declare-fun m!1361373 () Bool)

(assert (=> d!339042 m!1361373))

(assert (=> b!1185217 m!1360585))

(assert (=> b!1184740 d!339042))

(declare-fun d!339046 () Bool)

(declare-fun charsToBigInt!0 (List!11895 Int) Int)

(assert (=> d!339046 (= (inv!15 (value!67194 (h!17274 l!6534))) (= (charsToBigInt!0 (text!15436 (value!67194 (h!17274 l!6534))) 0) (value!67189 (value!67194 (h!17274 l!6534)))))))

(declare-fun bs!287366 () Bool)

(assert (= bs!287366 d!339046))

(declare-fun m!1361375 () Bool)

(assert (=> bs!287366 m!1361375))

(assert (=> b!1184656 d!339046))

(assert (=> b!1184717 d!338794))

(declare-fun d!339048 () Bool)

(assert (=> d!339048 true))

(declare-fun lambda!48857 () Int)

(declare-fun order!7375 () Int)

(declare-fun dynLambda!5293 (Int Int) Int)

(assert (=> d!339048 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5293 order!7375 lambda!48857))))

(declare-fun Forall2!358 (Int) Bool)

(assert (=> d!339048 (= (equivClasses!713 (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (Forall2!358 lambda!48857))))

(declare-fun bs!287368 () Bool)

(assert (= bs!287368 d!339048))

(declare-fun m!1361401 () Bool)

(assert (=> bs!287368 m!1361401))

(assert (=> b!1184641 d!339048))

(assert (=> d!338800 d!338968))

(declare-fun d!339056 () Bool)

(assert (=> d!339056 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598)))))) (list!4364 (c!197025 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407598))))))))))

(declare-fun bs!287369 () Bool)

(assert (= bs!287369 d!339056))

(declare-fun m!1361403 () Bool)

(assert (=> bs!287369 m!1361403))

(assert (=> d!338800 d!339056))

(assert (=> d!338800 d!338988))

(assert (=> d!338800 d!338984))

(declare-fun d!339058 () Bool)

(assert (=> d!339058 (= (list!4362 (singletonSeq!719 (h!17274 lt!407598))) (list!4364 (c!197025 (singletonSeq!719 (h!17274 lt!407598)))))))

(declare-fun bs!287370 () Bool)

(assert (= bs!287370 d!339058))

(declare-fun m!1361405 () Bool)

(assert (=> bs!287370 m!1361405))

(assert (=> d!338800 d!339058))

(declare-fun d!339060 () Bool)

(declare-fun lt!407915 () Int)

(assert (=> d!339060 (= lt!407915 (size!9363 (list!4362 (_1!6899 lt!407702))))))

(declare-fun size!9367 (Conc!3889) Int)

(assert (=> d!339060 (= lt!407915 (size!9367 (c!197025 (_1!6899 lt!407702))))))

(assert (=> d!339060 (= (size!9362 (_1!6899 lt!407702)) lt!407915)))

(declare-fun bs!287371 () Bool)

(assert (= bs!287371 d!339060))

(assert (=> bs!287371 m!1361005))

(assert (=> bs!287371 m!1361005))

(declare-fun m!1361407 () Bool)

(assert (=> bs!287371 m!1361407))

(declare-fun m!1361409 () Bool)

(assert (=> bs!287371 m!1361409))

(assert (=> d!338800 d!339060))

(assert (=> d!338800 d!338806))

(assert (=> b!1184794 d!338804))

(declare-fun bs!287373 () Bool)

(declare-fun d!339062 () Bool)

(assert (= bs!287373 (and d!339062 d!338760)))

(declare-fun lambda!48861 () Int)

(assert (=> bs!287373 (= lambda!48861 lambda!48835)))

(declare-fun bs!287374 () Bool)

(assert (= bs!287374 (and d!339062 d!338816)))

(assert (=> bs!287374 (= lambda!48861 lambda!48839)))

(declare-fun bs!287375 () Bool)

(assert (= bs!287375 (and d!339062 d!338794)))

(assert (=> bs!287375 (= lambda!48861 lambda!48837)))

(declare-fun bs!287376 () Bool)

(assert (= bs!287376 (and d!339062 d!339014)))

(assert (=> bs!287376 (= lambda!48861 lambda!48854)))

(declare-fun bs!287377 () Bool)

(assert (= bs!287377 (and d!339062 b!1184544)))

(assert (=> bs!287377 (= (= thiss!27592 Lexer!1768) (= lambda!48861 lambda!48815))))

(declare-fun bs!287378 () Bool)

(assert (= bs!287378 (and d!339062 b!1184924)))

(assert (=> bs!287378 (= (= thiss!27592 Lexer!1768) (= lambda!48861 lambda!48847))))

(declare-fun bs!287379 () Bool)

(assert (= bs!287379 (and d!339062 d!338792)))

(assert (=> bs!287379 (= lambda!48861 lambda!48836)))

(declare-fun bs!287380 () Bool)

(assert (= bs!287380 (and d!339062 d!338832)))

(assert (=> bs!287380 (= lambda!48861 lambda!48843)))

(declare-fun bs!287381 () Bool)

(assert (= bs!287381 (and d!339062 d!338748)))

(assert (=> bs!287381 (= lambda!48861 lambda!48826)))

(declare-fun bs!287382 () Bool)

(assert (= bs!287382 (and d!339062 d!338804)))

(assert (=> bs!287382 (= lambda!48861 lambda!48838)))

(declare-fun b!1185242 () Bool)

(declare-fun e!761317 () Bool)

(assert (=> b!1185242 (= e!761317 true)))

(declare-fun b!1185241 () Bool)

(declare-fun e!761316 () Bool)

(assert (=> b!1185241 (= e!761316 e!761317)))

(declare-fun b!1185240 () Bool)

(declare-fun e!761315 () Bool)

(assert (=> b!1185240 (= e!761315 e!761316)))

(assert (=> d!339062 e!761315))

(assert (= b!1185241 b!1185242))

(assert (= b!1185240 b!1185241))

(assert (= (and d!339062 ((_ is Cons!11872) rules!4386)) b!1185240))

(assert (=> b!1185242 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48861))))

(assert (=> b!1185242 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48861))))

(assert (=> d!339062 true))

(declare-fun lt!407916 () Bool)

(assert (=> d!339062 (= lt!407916 (forall!3142 (t!111733 (t!111733 l!6534)) lambda!48861))))

(declare-fun e!761314 () Bool)

(assert (=> d!339062 (= lt!407916 e!761314)))

(declare-fun res!535755 () Bool)

(assert (=> d!339062 (=> res!535755 e!761314)))

(assert (=> d!339062 (= res!535755 (not ((_ is Cons!11873) (t!111733 (t!111733 l!6534)))))))

(assert (=> d!339062 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339062 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 l!6534))) lt!407916)))

(declare-fun b!1185236 () Bool)

(declare-fun e!761313 () Bool)

(assert (=> b!1185236 (= e!761314 e!761313)))

(declare-fun res!535756 () Bool)

(assert (=> b!1185236 (=> (not res!535756) (not e!761313))))

(assert (=> b!1185236 (= res!535756 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185237 () Bool)

(assert (=> b!1185237 (= e!761313 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 (t!111733 l!6534)))))))

(assert (= (and d!339062 (not res!535755)) b!1185236))

(assert (= (and b!1185236 res!535756) b!1185237))

(declare-fun m!1361413 () Bool)

(assert (=> d!339062 m!1361413))

(assert (=> d!339062 m!1360343))

(assert (=> b!1185236 m!1360403))

(declare-fun m!1361415 () Bool)

(assert (=> b!1185237 m!1361415))

(assert (=> b!1184722 d!339062))

(declare-fun d!339066 () Bool)

(declare-fun lt!407917 () Bool)

(assert (=> d!339066 (= lt!407917 (isEmpty!7147 (list!4361 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))))

(assert (=> d!339066 (= lt!407917 (isEmpty!7150 (c!197023 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))))

(assert (=> d!339066 (= (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))) lt!407917)))

(declare-fun bs!287383 () Bool)

(assert (= bs!287383 d!339066))

(declare-fun m!1361417 () Bool)

(assert (=> bs!287383 m!1361417))

(assert (=> bs!287383 m!1361417))

(declare-fun m!1361419 () Bool)

(assert (=> bs!287383 m!1361419))

(declare-fun m!1361421 () Bool)

(assert (=> bs!287383 m!1361421))

(assert (=> b!1184742 d!339066))

(declare-fun b!1185243 () Bool)

(declare-fun e!761320 () Bool)

(declare-fun lt!407918 () tuple2!12104)

(assert (=> b!1185243 (= e!761320 (not (isEmpty!7151 (_1!6899 lt!407918))))))

(declare-fun b!1185244 () Bool)

(declare-fun e!761318 () Bool)

(assert (=> b!1185244 (= e!761318 e!761320)))

(declare-fun res!535757 () Bool)

(assert (=> b!1185244 (= res!535757 (< (size!9359 (_2!6899 lt!407918)) (size!9359 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))

(assert (=> b!1185244 (=> (not res!535757) (not e!761320))))

(declare-fun b!1185245 () Bool)

(declare-fun res!535758 () Bool)

(declare-fun e!761319 () Bool)

(assert (=> b!1185245 (=> (not res!535758) (not e!761319))))

(assert (=> b!1185245 (= res!535758 (= (list!4362 (_1!6899 lt!407918)) (_1!6901 (lexList!422 thiss!27592 rules!4386 (list!4361 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))))

(declare-fun d!339068 () Bool)

(assert (=> d!339068 e!761319))

(declare-fun res!535759 () Bool)

(assert (=> d!339068 (=> (not res!535759) (not e!761319))))

(assert (=> d!339068 (= res!535759 e!761318)))

(declare-fun c!197099 () Bool)

(assert (=> d!339068 (= c!197099 (> (size!9362 (_1!6899 lt!407918)) 0))))

(assert (=> d!339068 (= lt!407918 (lexTailRecV2!329 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))) (BalanceConc!7799 Empty!3888) (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))) (BalanceConc!7801 Empty!3889)))))

(assert (=> d!339068 (= (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))) lt!407918)))

(declare-fun b!1185246 () Bool)

(assert (=> b!1185246 (= e!761319 (= (list!4361 (_2!6899 lt!407918)) (_2!6901 (lexList!422 thiss!27592 rules!4386 (list!4361 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))))

(declare-fun b!1185247 () Bool)

(assert (=> b!1185247 (= e!761318 (= (_2!6899 lt!407918) (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))))

(assert (= (and d!339068 c!197099) b!1185244))

(assert (= (and d!339068 (not c!197099)) b!1185247))

(assert (= (and b!1185244 res!535757) b!1185243))

(assert (= (and d!339068 res!535759) b!1185245))

(assert (= (and b!1185245 res!535758) b!1185246))

(declare-fun m!1361425 () Bool)

(assert (=> b!1185244 m!1361425))

(assert (=> b!1185244 m!1360577))

(declare-fun m!1361427 () Bool)

(assert (=> b!1185244 m!1361427))

(declare-fun m!1361431 () Bool)

(assert (=> d!339068 m!1361431))

(assert (=> d!339068 m!1360577))

(assert (=> d!339068 m!1360577))

(declare-fun m!1361435 () Bool)

(assert (=> d!339068 m!1361435))

(declare-fun m!1361437 () Bool)

(assert (=> b!1185245 m!1361437))

(assert (=> b!1185245 m!1360577))

(declare-fun m!1361439 () Bool)

(assert (=> b!1185245 m!1361439))

(assert (=> b!1185245 m!1361439))

(declare-fun m!1361441 () Bool)

(assert (=> b!1185245 m!1361441))

(declare-fun m!1361443 () Bool)

(assert (=> b!1185243 m!1361443))

(declare-fun m!1361445 () Bool)

(assert (=> b!1185246 m!1361445))

(assert (=> b!1185246 m!1360577))

(assert (=> b!1185246 m!1361439))

(assert (=> b!1185246 m!1361439))

(assert (=> b!1185246 m!1361441))

(assert (=> b!1184742 d!339068))

(declare-fun d!339074 () Bool)

(declare-fun lt!407920 () BalanceConc!7798)

(assert (=> d!339074 (= (list!4361 lt!407920) (printList!522 thiss!27592 (list!4362 (singletonSeq!719 (h!17274 lt!407601)))))))

(assert (=> d!339074 (= lt!407920 (printTailRec!504 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)) 0 (BalanceConc!7799 Empty!3888)))))

(assert (=> d!339074 (= (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))) lt!407920)))

(declare-fun bs!287385 () Bool)

(assert (= bs!287385 d!339074))

(declare-fun m!1361447 () Bool)

(assert (=> bs!287385 m!1361447))

(assert (=> bs!287385 m!1360581))

(assert (=> bs!287385 m!1360583))

(assert (=> bs!287385 m!1360583))

(declare-fun m!1361449 () Bool)

(assert (=> bs!287385 m!1361449))

(assert (=> bs!287385 m!1360581))

(declare-fun m!1361451 () Bool)

(assert (=> bs!287385 m!1361451))

(assert (=> b!1184742 d!339074))

(declare-fun d!339076 () Bool)

(declare-fun e!761328 () Bool)

(assert (=> d!339076 e!761328))

(declare-fun res!535764 () Bool)

(assert (=> d!339076 (=> (not res!535764) (not e!761328))))

(declare-fun lt!407921 () BalanceConc!7800)

(assert (=> d!339076 (= res!535764 (= (list!4362 lt!407921) (Cons!11873 (h!17274 lt!407601) Nil!11873)))))

(assert (=> d!339076 (= lt!407921 (singleton!312 (h!17274 lt!407601)))))

(assert (=> d!339076 (= (singletonSeq!719 (h!17274 lt!407601)) lt!407921)))

(declare-fun b!1185255 () Bool)

(assert (=> b!1185255 (= e!761328 (isBalanced!1106 (c!197025 lt!407921)))))

(assert (= (and d!339076 res!535764) b!1185255))

(declare-fun m!1361453 () Bool)

(assert (=> d!339076 m!1361453))

(declare-fun m!1361455 () Bool)

(assert (=> d!339076 m!1361455))

(declare-fun m!1361457 () Bool)

(assert (=> b!1185255 m!1361457))

(assert (=> b!1184742 d!339076))

(declare-fun d!339078 () Bool)

(declare-fun res!535765 () Bool)

(declare-fun e!761329 () Bool)

(assert (=> d!339078 (=> res!535765 e!761329)))

(assert (=> d!339078 (= res!535765 ((_ is Nil!11873) lt!407598))))

(assert (=> d!339078 (= (forall!3142 lt!407598 lambda!48839) e!761329)))

(declare-fun b!1185256 () Bool)

(declare-fun e!761330 () Bool)

(assert (=> b!1185256 (= e!761329 e!761330)))

(declare-fun res!535766 () Bool)

(assert (=> b!1185256 (=> (not res!535766) (not e!761330))))

(assert (=> b!1185256 (= res!535766 (dynLambda!5290 lambda!48839 (h!17274 lt!407598)))))

(declare-fun b!1185257 () Bool)

(assert (=> b!1185257 (= e!761330 (forall!3142 (t!111733 lt!407598) lambda!48839))))

(assert (= (and d!339078 (not res!535765)) b!1185256))

(assert (= (and b!1185256 res!535766) b!1185257))

(declare-fun b_lambda!35501 () Bool)

(assert (=> (not b_lambda!35501) (not b!1185256)))

(declare-fun m!1361459 () Bool)

(assert (=> b!1185256 m!1361459))

(declare-fun m!1361461 () Bool)

(assert (=> b!1185257 m!1361461))

(assert (=> d!338816 d!339078))

(assert (=> d!338816 d!338806))

(declare-fun d!339080 () Bool)

(declare-fun c!197100 () Bool)

(assert (=> d!339080 (= c!197100 ((_ is Nil!11873) lt!407776))))

(declare-fun e!761331 () (InoxSet Token!3812))

(assert (=> d!339080 (= (content!1642 lt!407776) e!761331)))

(declare-fun b!1185258 () Bool)

(assert (=> b!1185258 (= e!761331 ((as const (Array Token!3812 Bool)) false))))

(declare-fun b!1185259 () Bool)

(assert (=> b!1185259 (= e!761331 ((_ map or) (store ((as const (Array Token!3812 Bool)) false) (h!17274 lt!407776) true) (content!1642 (t!111733 lt!407776))))))

(assert (= (and d!339080 c!197100) b!1185258))

(assert (= (and d!339080 (not c!197100)) b!1185259))

(declare-fun m!1361463 () Bool)

(assert (=> b!1185259 m!1361463))

(declare-fun m!1361465 () Bool)

(assert (=> b!1185259 m!1361465))

(assert (=> d!338860 d!339080))

(declare-fun d!339082 () Bool)

(declare-fun c!197101 () Bool)

(assert (=> d!339082 (= c!197101 ((_ is Nil!11873) (t!111733 l!6534)))))

(declare-fun e!761332 () (InoxSet Token!3812))

(assert (=> d!339082 (= (content!1642 (t!111733 l!6534)) e!761332)))

(declare-fun b!1185260 () Bool)

(assert (=> b!1185260 (= e!761332 ((as const (Array Token!3812 Bool)) false))))

(declare-fun b!1185261 () Bool)

(assert (=> b!1185261 (= e!761332 ((_ map or) (store ((as const (Array Token!3812 Bool)) false) (h!17274 (t!111733 l!6534)) true) (content!1642 (t!111733 (t!111733 l!6534)))))))

(assert (= (and d!339082 c!197101) b!1185260))

(assert (= (and d!339082 (not c!197101)) b!1185261))

(declare-fun m!1361467 () Bool)

(assert (=> b!1185261 m!1361467))

(declare-fun m!1361469 () Bool)

(assert (=> b!1185261 m!1361469))

(assert (=> d!338860 d!339082))

(declare-fun d!339084 () Bool)

(declare-fun lt!407923 () Bool)

(declare-fun e!761333 () Bool)

(assert (=> d!339084 (= lt!407923 e!761333)))

(declare-fun res!535769 () Bool)

(assert (=> d!339084 (=> (not res!535769) (not e!761333))))

(assert (=> d!339084 (= res!535769 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407598))))))) (list!4362 (singletonSeq!719 (h!17274 (t!111733 lt!407598))))))))

(declare-fun e!761334 () Bool)

(assert (=> d!339084 (= lt!407923 e!761334)))

(declare-fun res!535767 () Bool)

(assert (=> d!339084 (=> (not res!535767) (not e!761334))))

(declare-fun lt!407922 () tuple2!12104)

(assert (=> d!339084 (= res!535767 (= (size!9362 (_1!6899 lt!407922)) 1))))

(assert (=> d!339084 (= lt!407922 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407598))))))))

(assert (=> d!339084 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339084 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407598))) lt!407923)))

(declare-fun b!1185262 () Bool)

(declare-fun res!535768 () Bool)

(assert (=> b!1185262 (=> (not res!535768) (not e!761334))))

(assert (=> b!1185262 (= res!535768 (= (apply!2586 (_1!6899 lt!407922) 0) (h!17274 (t!111733 lt!407598))))))

(declare-fun b!1185263 () Bool)

(assert (=> b!1185263 (= e!761334 (isEmpty!7148 (_2!6899 lt!407922)))))

(declare-fun b!1185264 () Bool)

(assert (=> b!1185264 (= e!761333 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407598))))))))))

(assert (= (and d!339084 res!535767) b!1185262))

(assert (= (and b!1185262 res!535768) b!1185263))

(assert (= (and d!339084 res!535769) b!1185264))

(declare-fun m!1361475 () Bool)

(assert (=> d!339084 m!1361475))

(declare-fun m!1361477 () Bool)

(assert (=> d!339084 m!1361477))

(declare-fun m!1361479 () Bool)

(assert (=> d!339084 m!1361479))

(declare-fun m!1361481 () Bool)

(assert (=> d!339084 m!1361481))

(assert (=> d!339084 m!1361479))

(assert (=> d!339084 m!1361475))

(assert (=> d!339084 m!1361479))

(declare-fun m!1361483 () Bool)

(assert (=> d!339084 m!1361483))

(assert (=> d!339084 m!1360343))

(declare-fun m!1361485 () Bool)

(assert (=> d!339084 m!1361485))

(declare-fun m!1361487 () Bool)

(assert (=> b!1185262 m!1361487))

(declare-fun m!1361489 () Bool)

(assert (=> b!1185263 m!1361489))

(assert (=> b!1185264 m!1361479))

(assert (=> b!1185264 m!1361479))

(assert (=> b!1185264 m!1361475))

(assert (=> b!1185264 m!1361475))

(assert (=> b!1185264 m!1361477))

(declare-fun m!1361491 () Bool)

(assert (=> b!1185264 m!1361491))

(assert (=> b!1184632 d!339084))

(declare-fun bs!287395 () Bool)

(declare-fun d!339088 () Bool)

(assert (= bs!287395 (and d!339088 d!338760)))

(declare-fun lambda!48863 () Int)

(assert (=> bs!287395 (= lambda!48863 lambda!48835)))

(declare-fun bs!287396 () Bool)

(assert (= bs!287396 (and d!339088 d!338816)))

(assert (=> bs!287396 (= lambda!48863 lambda!48839)))

(declare-fun bs!287397 () Bool)

(assert (= bs!287397 (and d!339088 d!338794)))

(assert (=> bs!287397 (= lambda!48863 lambda!48837)))

(declare-fun bs!287398 () Bool)

(assert (= bs!287398 (and d!339088 d!339014)))

(assert (=> bs!287398 (= lambda!48863 lambda!48854)))

(declare-fun bs!287399 () Bool)

(assert (= bs!287399 (and d!339088 d!339062)))

(assert (=> bs!287399 (= lambda!48863 lambda!48861)))

(declare-fun bs!287400 () Bool)

(assert (= bs!287400 (and d!339088 b!1184544)))

(assert (=> bs!287400 (= (= thiss!27592 Lexer!1768) (= lambda!48863 lambda!48815))))

(declare-fun bs!287401 () Bool)

(assert (= bs!287401 (and d!339088 b!1184924)))

(assert (=> bs!287401 (= (= thiss!27592 Lexer!1768) (= lambda!48863 lambda!48847))))

(declare-fun bs!287402 () Bool)

(assert (= bs!287402 (and d!339088 d!338792)))

(assert (=> bs!287402 (= lambda!48863 lambda!48836)))

(declare-fun bs!287403 () Bool)

(assert (= bs!287403 (and d!339088 d!338832)))

(assert (=> bs!287403 (= lambda!48863 lambda!48843)))

(declare-fun bs!287404 () Bool)

(assert (= bs!287404 (and d!339088 d!338748)))

(assert (=> bs!287404 (= lambda!48863 lambda!48826)))

(declare-fun bs!287405 () Bool)

(assert (= bs!287405 (and d!339088 d!338804)))

(assert (=> bs!287405 (= lambda!48863 lambda!48838)))

(declare-fun b!1185269 () Bool)

(declare-fun e!761339 () Bool)

(assert (=> b!1185269 (= e!761339 true)))

(declare-fun b!1185268 () Bool)

(declare-fun e!761338 () Bool)

(assert (=> b!1185268 (= e!761338 e!761339)))

(declare-fun b!1185267 () Bool)

(declare-fun e!761337 () Bool)

(assert (=> b!1185267 (= e!761337 e!761338)))

(assert (=> d!339088 e!761337))

(assert (= b!1185268 b!1185269))

(assert (= b!1185267 b!1185268))

(assert (= (and d!339088 ((_ is Cons!11872) rules!4386)) b!1185267))

(assert (=> b!1185269 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48863))))

(assert (=> b!1185269 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48863))))

(assert (=> d!339088 true))

(declare-fun lt!407924 () Bool)

(assert (=> d!339088 (= lt!407924 (forall!3142 (drop!553 (t!111733 l!6534) (- i!1621 1)) lambda!48863))))

(declare-fun e!761336 () Bool)

(assert (=> d!339088 (= lt!407924 e!761336)))

(declare-fun res!535770 () Bool)

(assert (=> d!339088 (=> res!535770 e!761336)))

(assert (=> d!339088 (= res!535770 (not ((_ is Cons!11873) (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(assert (=> d!339088 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339088 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (drop!553 (t!111733 l!6534) (- i!1621 1))) lt!407924)))

(declare-fun b!1185265 () Bool)

(declare-fun e!761335 () Bool)

(assert (=> b!1185265 (= e!761336 e!761335)))

(declare-fun res!535771 () Bool)

(assert (=> b!1185265 (=> (not res!535771) (not e!761335))))

(assert (=> b!1185265 (= res!535771 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(declare-fun b!1185266 () Bool)

(assert (=> b!1185266 (= e!761335 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (drop!553 (t!111733 l!6534) (- i!1621 1)))))))

(assert (= (and d!339088 (not res!535770)) b!1185265))

(assert (= (and b!1185265 res!535771) b!1185266))

(assert (=> d!339088 m!1360341))

(declare-fun m!1361493 () Bool)

(assert (=> d!339088 m!1361493))

(assert (=> d!339088 m!1360343))

(assert (=> b!1185265 m!1361015))

(declare-fun m!1361495 () Bool)

(assert (=> b!1185266 m!1361495))

(assert (=> d!338834 d!339088))

(assert (=> d!338834 d!338860))

(declare-fun bs!287418 () Bool)

(declare-fun d!339090 () Bool)

(assert (= bs!287418 (and d!339090 d!338760)))

(declare-fun lambda!48870 () Int)

(assert (=> bs!287418 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48835))))

(declare-fun bs!287419 () Bool)

(assert (= bs!287419 (and d!339090 d!338816)))

(assert (=> bs!287419 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48839))))

(declare-fun bs!287420 () Bool)

(assert (= bs!287420 (and d!339090 d!338794)))

(assert (=> bs!287420 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48837))))

(declare-fun bs!287421 () Bool)

(assert (= bs!287421 (and d!339090 d!339014)))

(assert (=> bs!287421 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48854))))

(declare-fun bs!287422 () Bool)

(assert (= bs!287422 (and d!339090 d!339062)))

(assert (=> bs!287422 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48861))))

(declare-fun bs!287423 () Bool)

(assert (= bs!287423 (and d!339090 d!339088)))

(assert (=> bs!287423 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48863))))

(declare-fun bs!287424 () Bool)

(assert (= bs!287424 (and d!339090 b!1184544)))

(assert (=> bs!287424 (= lambda!48870 lambda!48815)))

(declare-fun bs!287425 () Bool)

(assert (= bs!287425 (and d!339090 b!1184924)))

(assert (=> bs!287425 (= lambda!48870 lambda!48847)))

(declare-fun bs!287426 () Bool)

(assert (= bs!287426 (and d!339090 d!338792)))

(assert (=> bs!287426 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48836))))

(declare-fun bs!287427 () Bool)

(assert (= bs!287427 (and d!339090 d!338832)))

(assert (=> bs!287427 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48843))))

(declare-fun bs!287428 () Bool)

(assert (= bs!287428 (and d!339090 d!338748)))

(assert (=> bs!287428 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48826))))

(declare-fun bs!287429 () Bool)

(assert (= bs!287429 (and d!339090 d!338804)))

(assert (=> bs!287429 (= (= Lexer!1768 thiss!27592) (= lambda!48870 lambda!48838))))

(declare-fun b!1185289 () Bool)

(declare-fun e!761359 () Bool)

(assert (=> b!1185289 (= e!761359 true)))

(declare-fun b!1185288 () Bool)

(declare-fun e!761358 () Bool)

(assert (=> b!1185288 (= e!761358 e!761359)))

(declare-fun b!1185287 () Bool)

(declare-fun e!761357 () Bool)

(assert (=> b!1185287 (= e!761357 e!761358)))

(assert (=> d!339090 e!761357))

(assert (= b!1185288 b!1185289))

(assert (= b!1185287 b!1185288))

(assert (= (and d!339090 ((_ is Cons!11872) rules!4386)) b!1185287))

(assert (=> b!1185289 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48870))))

(assert (=> b!1185289 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48870))))

(assert (=> d!339090 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (drop!553 (t!111733 l!6534) (- i!1621 1)) rules!4386)))

(declare-fun lt!407962 () Unit!18194)

(declare-fun lt!407964 () Unit!18194)

(assert (=> d!339090 (= lt!407962 lt!407964)))

(declare-fun lt!407960 () List!11897)

(assert (=> d!339090 (forall!3142 lt!407960 lambda!48870)))

(assert (=> d!339090 (= lt!407964 (lemmaForallSubseq!193 lt!407960 (t!111733 l!6534) lambda!48870))))

(assert (=> d!339090 (= lt!407960 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun lt!407965 () Unit!18194)

(declare-fun lt!407966 () Unit!18194)

(assert (=> d!339090 (= lt!407965 lt!407966)))

(assert (=> d!339090 (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 l!6534))))

(assert (=> d!339090 (= lt!407966 (lemmaDropSubseq!92 (t!111733 l!6534) (- i!1621 1)))))

(declare-fun lt!407963 () Unit!18194)

(declare-fun Unit!18233 () Unit!18194)

(assert (=> d!339090 (= lt!407963 Unit!18233)))

(declare-fun e!761356 () Bool)

(assert (=> d!339090 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (drop!553 (t!111733 l!6534) (- i!1621 1))) e!761356)))

(declare-fun res!535785 () Bool)

(assert (=> d!339090 (=> res!535785 e!761356)))

(declare-fun lt!407961 () List!11897)

(assert (=> d!339090 (= res!535785 (not ((_ is Cons!11873) lt!407961)))))

(assert (=> d!339090 (= lt!407961 (drop!553 (t!111733 l!6534) (- i!1621 1)))))

(assert (=> d!339090 true))

(declare-fun _$82!85 () Unit!18194)

(assert (=> d!339090 (= (choose!7667 thiss!27592 (t!111733 l!6534) (- i!1621 1) rules!4386) _$82!85)))

(declare-fun b!1185285 () Bool)

(declare-fun e!761355 () Bool)

(assert (=> b!1185285 (= e!761356 e!761355)))

(declare-fun res!535784 () Bool)

(assert (=> b!1185285 (=> (not res!535784) (not e!761355))))

(assert (=> b!1185285 (= res!535784 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407961)))))

(declare-fun b!1185286 () Bool)

(assert (=> b!1185286 (= e!761355 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407961)))))

(assert (= (and d!339090 (not res!535785)) b!1185285))

(assert (= (and b!1185285 res!535784) b!1185286))

(assert (=> d!339090 m!1360325))

(assert (=> d!339090 m!1360341))

(assert (=> d!339090 m!1360647))

(assert (=> d!339090 m!1360341))

(assert (=> d!339090 m!1360755))

(declare-fun m!1361513 () Bool)

(assert (=> d!339090 m!1361513))

(declare-fun m!1361517 () Bool)

(assert (=> d!339090 m!1361517))

(assert (=> d!339090 m!1360341))

(assert (=> d!339090 m!1360749))

(assert (=> d!339090 m!1360341))

(declare-fun m!1361521 () Bool)

(assert (=> b!1185285 m!1361521))

(declare-fun m!1361523 () Bool)

(assert (=> b!1185286 m!1361523))

(assert (=> d!338834 d!339090))

(assert (=> d!338834 d!338806))

(declare-fun bs!287431 () Bool)

(declare-fun d!339100 () Bool)

(assert (= bs!287431 (and d!339100 d!338760)))

(declare-fun lambda!48871 () Int)

(assert (=> bs!287431 (= lambda!48871 lambda!48835)))

(declare-fun bs!287432 () Bool)

(assert (= bs!287432 (and d!339100 d!338816)))

(assert (=> bs!287432 (= lambda!48871 lambda!48839)))

(declare-fun bs!287433 () Bool)

(assert (= bs!287433 (and d!339100 d!338794)))

(assert (=> bs!287433 (= lambda!48871 lambda!48837)))

(declare-fun bs!287435 () Bool)

(assert (= bs!287435 (and d!339100 d!339014)))

(assert (=> bs!287435 (= lambda!48871 lambda!48854)))

(declare-fun bs!287436 () Bool)

(assert (= bs!287436 (and d!339100 d!339062)))

(assert (=> bs!287436 (= lambda!48871 lambda!48861)))

(declare-fun bs!287437 () Bool)

(assert (= bs!287437 (and d!339100 d!339088)))

(assert (=> bs!287437 (= lambda!48871 lambda!48863)))

(declare-fun bs!287438 () Bool)

(assert (= bs!287438 (and d!339100 d!339090)))

(assert (=> bs!287438 (= (= thiss!27592 Lexer!1768) (= lambda!48871 lambda!48870))))

(declare-fun bs!287439 () Bool)

(assert (= bs!287439 (and d!339100 b!1184544)))

(assert (=> bs!287439 (= (= thiss!27592 Lexer!1768) (= lambda!48871 lambda!48815))))

(declare-fun bs!287440 () Bool)

(assert (= bs!287440 (and d!339100 b!1184924)))

(assert (=> bs!287440 (= (= thiss!27592 Lexer!1768) (= lambda!48871 lambda!48847))))

(declare-fun bs!287441 () Bool)

(assert (= bs!287441 (and d!339100 d!338792)))

(assert (=> bs!287441 (= lambda!48871 lambda!48836)))

(declare-fun bs!287442 () Bool)

(assert (= bs!287442 (and d!339100 d!338832)))

(assert (=> bs!287442 (= lambda!48871 lambda!48843)))

(declare-fun bs!287443 () Bool)

(assert (= bs!287443 (and d!339100 d!338748)))

(assert (=> bs!287443 (= lambda!48871 lambda!48826)))

(declare-fun bs!287444 () Bool)

(assert (= bs!287444 (and d!339100 d!338804)))

(assert (=> bs!287444 (= lambda!48871 lambda!48838)))

(declare-fun b!1185298 () Bool)

(declare-fun e!761368 () Bool)

(assert (=> b!1185298 (= e!761368 true)))

(declare-fun b!1185297 () Bool)

(declare-fun e!761367 () Bool)

(assert (=> b!1185297 (= e!761367 e!761368)))

(declare-fun b!1185296 () Bool)

(declare-fun e!761366 () Bool)

(assert (=> b!1185296 (= e!761366 e!761367)))

(assert (=> d!339100 e!761366))

(assert (= b!1185297 b!1185298))

(assert (= b!1185296 b!1185297))

(assert (= (and d!339100 ((_ is Cons!11872) rules!4386)) b!1185296))

(assert (=> b!1185298 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48871))))

(assert (=> b!1185298 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48871))))

(assert (=> d!339100 true))

(declare-fun lt!407970 () Bool)

(assert (=> d!339100 (= lt!407970 (forall!3142 (list!4362 (seqFromList!1536 lt!407598)) lambda!48871))))

(declare-fun e!761365 () Bool)

(assert (=> d!339100 (= lt!407970 e!761365)))

(declare-fun res!535790 () Bool)

(assert (=> d!339100 (=> res!535790 e!761365)))

(assert (=> d!339100 (= res!535790 (not ((_ is Cons!11873) (list!4362 (seqFromList!1536 lt!407598)))))))

(assert (=> d!339100 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339100 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (list!4362 (seqFromList!1536 lt!407598))) lt!407970)))

(declare-fun b!1185294 () Bool)

(declare-fun e!761364 () Bool)

(assert (=> b!1185294 (= e!761365 e!761364)))

(declare-fun res!535791 () Bool)

(assert (=> b!1185294 (=> (not res!535791) (not e!761364))))

(assert (=> b!1185294 (= res!535791 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (list!4362 (seqFromList!1536 lt!407598)))))))

(declare-fun b!1185295 () Bool)

(assert (=> b!1185295 (= e!761364 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (list!4362 (seqFromList!1536 lt!407598)))))))

(assert (= (and d!339100 (not res!535790)) b!1185294))

(assert (= (and b!1185294 res!535791) b!1185295))

(assert (=> d!339100 m!1360525))

(declare-fun m!1361535 () Bool)

(assert (=> d!339100 m!1361535))

(assert (=> d!339100 m!1360343))

(declare-fun m!1361537 () Bool)

(assert (=> b!1185294 m!1361537))

(declare-fun m!1361539 () Bool)

(assert (=> b!1185295 m!1361539))

(assert (=> b!1184712 d!339100))

(assert (=> b!1184712 d!339024))

(assert (=> d!338818 d!338820))

(declare-fun d!339108 () Bool)

(assert (=> d!339108 (forall!3142 lt!407601 lambda!48815)))

(assert (=> d!339108 true))

(declare-fun _$37!341 () Unit!18194)

(assert (=> d!339108 (= (choose!7666 lt!407601 (t!111733 l!6534) lambda!48815) _$37!341)))

(declare-fun bs!287445 () Bool)

(assert (= bs!287445 d!339108))

(assert (=> bs!287445 m!1360323))

(assert (=> d!338818 d!339108))

(declare-fun d!339110 () Bool)

(declare-fun res!535794 () Bool)

(declare-fun e!761371 () Bool)

(assert (=> d!339110 (=> res!535794 e!761371)))

(assert (=> d!339110 (= res!535794 ((_ is Nil!11873) (t!111733 l!6534)))))

(assert (=> d!339110 (= (forall!3142 (t!111733 l!6534) lambda!48815) e!761371)))

(declare-fun b!1185301 () Bool)

(declare-fun e!761372 () Bool)

(assert (=> b!1185301 (= e!761371 e!761372)))

(declare-fun res!535795 () Bool)

(assert (=> b!1185301 (=> (not res!535795) (not e!761372))))

(assert (=> b!1185301 (= res!535795 (dynLambda!5290 lambda!48815 (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185302 () Bool)

(assert (=> b!1185302 (= e!761372 (forall!3142 (t!111733 (t!111733 l!6534)) lambda!48815))))

(assert (= (and d!339110 (not res!535794)) b!1185301))

(assert (= (and b!1185301 res!535795) b!1185302))

(declare-fun b_lambda!35507 () Bool)

(assert (=> (not b_lambda!35507) (not b!1185301)))

(declare-fun m!1361541 () Bool)

(assert (=> b!1185301 m!1361541))

(declare-fun m!1361543 () Bool)

(assert (=> b!1185302 m!1361543))

(assert (=> d!338818 d!339110))

(declare-fun d!339112 () Bool)

(declare-fun isBalanced!1107 (Conc!3888) Bool)

(assert (=> d!339112 (= (inv!15698 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))) (isBalanced!1107 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(declare-fun bs!287447 () Bool)

(assert (= bs!287447 d!339112))

(declare-fun m!1361547 () Bool)

(assert (=> bs!287447 m!1361547))

(assert (=> tb!66225 d!339112))

(declare-fun d!339118 () Bool)

(declare-fun res!535798 () Bool)

(declare-fun e!761380 () Bool)

(assert (=> d!339118 (=> res!535798 e!761380)))

(assert (=> d!339118 (= res!535798 (or (not ((_ is Cons!11873) (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))) (not ((_ is Cons!11873) (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))))))))

(assert (=> d!339118 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))) rules!4386) e!761380)))

(declare-fun b!1185310 () Bool)

(declare-fun e!761379 () Bool)

(assert (=> b!1185310 (= e!761380 e!761379)))

(declare-fun res!535799 () Bool)

(assert (=> b!1185310 (=> (not res!535799) (not e!761379))))

(assert (=> b!1185310 (= res!535799 (separableTokensPredicate!158 thiss!27592 (h!17274 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534))))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))) rules!4386))))

(declare-fun lt!407980 () Unit!18194)

(declare-fun Unit!18234 () Unit!18194)

(assert (=> b!1185310 (= lt!407980 Unit!18234)))

(assert (=> b!1185310 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))))) 0)))

(declare-fun lt!407979 () Unit!18194)

(declare-fun Unit!18235 () Unit!18194)

(assert (=> b!1185310 (= lt!407979 Unit!18235)))

(assert (=> b!1185310 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))))))

(declare-fun lt!407977 () Unit!18194)

(declare-fun Unit!18236 () Unit!18194)

(assert (=> b!1185310 (= lt!407977 Unit!18236)))

(assert (=> b!1185310 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534))))))))

(declare-fun lt!407978 () Unit!18194)

(declare-fun lt!407982 () Unit!18194)

(assert (=> b!1185310 (= lt!407978 lt!407982)))

(assert (=> b!1185310 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))))))

(assert (=> b!1185310 (= lt!407982 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534))))))))))

(declare-fun lt!407976 () Unit!18194)

(declare-fun lt!407981 () Unit!18194)

(assert (=> b!1185310 (= lt!407976 lt!407981)))

(assert (=> b!1185310 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534))))))))

(assert (=> b!1185310 (= lt!407981 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))) (h!17274 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))))))

(declare-fun b!1185311 () Bool)

(assert (=> b!1185311 (= e!761379 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534)))))) (t!111733 (t!111733 (Cons!11873 (h!17274 (t!111733 (t!111733 l!6534))) (t!111733 (t!111733 (t!111733 l!6534))))))) rules!4386))))

(assert (= (and d!339118 (not res!535798)) b!1185310))

(assert (= (and b!1185310 res!535799) b!1185311))

(declare-fun m!1361549 () Bool)

(assert (=> b!1185310 m!1361549))

(declare-fun m!1361551 () Bool)

(assert (=> b!1185310 m!1361551))

(declare-fun m!1361553 () Bool)

(assert (=> b!1185310 m!1361553))

(declare-fun m!1361555 () Bool)

(assert (=> b!1185310 m!1361555))

(assert (=> b!1185310 m!1361555))

(declare-fun m!1361557 () Bool)

(assert (=> b!1185310 m!1361557))

(declare-fun m!1361559 () Bool)

(assert (=> b!1185310 m!1361559))

(declare-fun m!1361561 () Bool)

(assert (=> b!1185310 m!1361561))

(declare-fun m!1361565 () Bool)

(assert (=> b!1185311 m!1361565))

(assert (=> b!1184608 d!339118))

(declare-fun d!339120 () Bool)

(declare-fun res!535800 () Bool)

(declare-fun e!761381 () Bool)

(assert (=> d!339120 (=> res!535800 e!761381)))

(assert (=> d!339120 (= res!535800 ((_ is Nil!11873) (t!111733 lt!407598)))))

(assert (=> d!339120 (= (forall!3142 (t!111733 lt!407598) lambda!48815) e!761381)))

(declare-fun b!1185312 () Bool)

(declare-fun e!761382 () Bool)

(assert (=> b!1185312 (= e!761381 e!761382)))

(declare-fun res!535801 () Bool)

(assert (=> b!1185312 (=> (not res!535801) (not e!761382))))

(assert (=> b!1185312 (= res!535801 (dynLambda!5290 lambda!48815 (h!17274 (t!111733 lt!407598))))))

(declare-fun b!1185313 () Bool)

(assert (=> b!1185313 (= e!761382 (forall!3142 (t!111733 (t!111733 lt!407598)) lambda!48815))))

(assert (= (and d!339120 (not res!535800)) b!1185312))

(assert (= (and b!1185312 res!535801) b!1185313))

(declare-fun b_lambda!35509 () Bool)

(assert (=> (not b_lambda!35509) (not b!1185312)))

(declare-fun m!1361571 () Bool)

(assert (=> b!1185312 m!1361571))

(declare-fun m!1361573 () Bool)

(assert (=> b!1185313 m!1361573))

(assert (=> b!1184769 d!339120))

(declare-fun d!339126 () Bool)

(assert (=> d!339126 true))

(declare-fun lt!407988 () Bool)

(declare-fun rulesValidInductive!650 (LexerInterface!1770 List!11896) Bool)

(assert (=> d!339126 (= lt!407988 (rulesValidInductive!650 thiss!27592 rules!4386))))

(declare-fun lambda!48875 () Int)

(declare-fun forall!3147 (List!11896 Int) Bool)

(assert (=> d!339126 (= lt!407988 (forall!3147 rules!4386 lambda!48875))))

(assert (=> d!339126 (= (rulesValid!735 thiss!27592 rules!4386) lt!407988)))

(declare-fun bs!287460 () Bool)

(assert (= bs!287460 d!339126))

(declare-fun m!1361609 () Bool)

(assert (=> bs!287460 m!1361609))

(declare-fun m!1361611 () Bool)

(assert (=> bs!287460 m!1361611))

(assert (=> d!338796 d!339126))

(declare-fun b!1185326 () Bool)

(declare-fun e!761391 () Bool)

(assert (=> b!1185326 (= e!761391 (subseq!329 (t!111733 lt!407601) (t!111733 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185325 () Bool)

(declare-fun e!761392 () Bool)

(declare-fun e!761390 () Bool)

(assert (=> b!1185325 (= e!761392 e!761390)))

(declare-fun res!535812 () Bool)

(assert (=> b!1185325 (=> res!535812 e!761390)))

(assert (=> b!1185325 (= res!535812 e!761391)))

(declare-fun res!535811 () Bool)

(assert (=> b!1185325 (=> (not res!535811) (not e!761391))))

(assert (=> b!1185325 (= res!535811 (= (h!17274 lt!407601) (h!17274 (t!111733 (t!111733 l!6534)))))))

(declare-fun b!1185324 () Bool)

(declare-fun e!761389 () Bool)

(assert (=> b!1185324 (= e!761389 e!761392)))

(declare-fun res!535810 () Bool)

(assert (=> b!1185324 (=> (not res!535810) (not e!761392))))

(assert (=> b!1185324 (= res!535810 ((_ is Cons!11873) (t!111733 (t!111733 l!6534))))))

(declare-fun d!339138 () Bool)

(declare-fun res!535813 () Bool)

(assert (=> d!339138 (=> res!535813 e!761389)))

(assert (=> d!339138 (= res!535813 ((_ is Nil!11873) lt!407601))))

(assert (=> d!339138 (= (subseq!329 lt!407601 (t!111733 (t!111733 l!6534))) e!761389)))

(declare-fun b!1185327 () Bool)

(assert (=> b!1185327 (= e!761390 (subseq!329 lt!407601 (t!111733 (t!111733 (t!111733 l!6534)))))))

(assert (= (and d!339138 (not res!535813)) b!1185324))

(assert (= (and b!1185324 res!535810) b!1185325))

(assert (= (and b!1185325 res!535811) b!1185326))

(assert (= (and b!1185325 (not res!535812)) b!1185327))

(assert (=> b!1185326 m!1360959))

(declare-fun m!1361613 () Bool)

(assert (=> b!1185327 m!1361613))

(assert (=> b!1184788 d!339138))

(declare-fun d!339140 () Bool)

(declare-fun charsToInt!0 (List!11895) (_ BitVec 32))

(assert (=> d!339140 (= (inv!16 (value!67194 (h!17274 l!6534))) (= (charsToInt!0 (text!15434 (value!67194 (h!17274 l!6534)))) (value!67185 (value!67194 (h!17274 l!6534)))))))

(declare-fun bs!287466 () Bool)

(assert (= bs!287466 d!339140))

(declare-fun m!1361625 () Bool)

(assert (=> bs!287466 m!1361625))

(assert (=> b!1184654 d!339140))

(declare-fun b!1185333 () Bool)

(declare-fun e!761398 () Bool)

(assert (=> b!1185333 (= e!761398 (subseq!329 (t!111733 (drop!553 l!6534 i!1621)) (t!111733 l!6534)))))

(declare-fun b!1185332 () Bool)

(declare-fun e!761399 () Bool)

(declare-fun e!761397 () Bool)

(assert (=> b!1185332 (= e!761399 e!761397)))

(declare-fun res!535819 () Bool)

(assert (=> b!1185332 (=> res!535819 e!761397)))

(assert (=> b!1185332 (= res!535819 e!761398)))

(declare-fun res!535818 () Bool)

(assert (=> b!1185332 (=> (not res!535818) (not e!761398))))

(assert (=> b!1185332 (= res!535818 (= (h!17274 (drop!553 l!6534 i!1621)) (h!17274 l!6534)))))

(declare-fun b!1185331 () Bool)

(declare-fun e!761396 () Bool)

(assert (=> b!1185331 (= e!761396 e!761399)))

(declare-fun res!535817 () Bool)

(assert (=> b!1185331 (=> (not res!535817) (not e!761399))))

(assert (=> b!1185331 (= res!535817 ((_ is Cons!11873) l!6534))))

(declare-fun d!339152 () Bool)

(declare-fun res!535820 () Bool)

(assert (=> d!339152 (=> res!535820 e!761396)))

(assert (=> d!339152 (= res!535820 ((_ is Nil!11873) (drop!553 l!6534 i!1621)))))

(assert (=> d!339152 (= (subseq!329 (drop!553 l!6534 i!1621) l!6534) e!761396)))

(declare-fun b!1185334 () Bool)

(assert (=> b!1185334 (= e!761397 (subseq!329 (drop!553 l!6534 i!1621) (t!111733 l!6534)))))

(assert (= (and d!339152 (not res!535820)) b!1185331))

(assert (= (and b!1185331 res!535817) b!1185332))

(assert (= (and b!1185332 res!535818) b!1185333))

(assert (= (and b!1185332 (not res!535819)) b!1185334))

(declare-fun m!1361637 () Bool)

(assert (=> b!1185333 m!1361637))

(assert (=> b!1185334 m!1360317))

(declare-fun m!1361639 () Bool)

(assert (=> b!1185334 m!1361639))

(assert (=> d!338812 d!339152))

(assert (=> d!338812 d!338858))

(declare-fun d!339158 () Bool)

(assert (=> d!339158 (subseq!329 (drop!553 l!6534 i!1621) l!6534)))

(assert (=> d!339158 true))

(declare-fun _$26!184 () Unit!18194)

(assert (=> d!339158 (= (choose!7665 l!6534 i!1621) _$26!184)))

(declare-fun bs!287469 () Bool)

(assert (= bs!287469 d!339158))

(assert (=> bs!287469 m!1360317))

(assert (=> bs!287469 m!1360317))

(assert (=> bs!287469 m!1360603))

(assert (=> d!338812 d!339158))

(declare-fun d!339162 () Bool)

(declare-fun res!535828 () Bool)

(declare-fun e!761408 () Bool)

(assert (=> d!339162 (=> res!535828 e!761408)))

(assert (=> d!339162 (= res!535828 ((_ is Nil!11872) rules!4386))))

(assert (=> d!339162 (= (noDuplicateTag!735 thiss!27592 rules!4386 Nil!11875) e!761408)))

(declare-fun b!1185345 () Bool)

(declare-fun e!761409 () Bool)

(assert (=> b!1185345 (= e!761408 e!761409)))

(declare-fun res!535829 () Bool)

(assert (=> b!1185345 (=> (not res!535829) (not e!761409))))

(declare-fun contains!2020 (List!11899 String!14373) Bool)

(assert (=> b!1185345 (= res!535829 (not (contains!2020 Nil!11875 (tag!2337 (h!17273 rules!4386)))))))

(declare-fun b!1185346 () Bool)

(assert (=> b!1185346 (= e!761409 (noDuplicateTag!735 thiss!27592 (t!111732 rules!4386) (Cons!11875 (tag!2337 (h!17273 rules!4386)) Nil!11875)))))

(assert (= (and d!339162 (not res!535828)) b!1185345))

(assert (= (and b!1185345 res!535829) b!1185346))

(declare-fun m!1361693 () Bool)

(assert (=> b!1185345 m!1361693))

(declare-fun m!1361695 () Bool)

(assert (=> b!1185346 m!1361695))

(assert (=> b!1184728 d!339162))

(declare-fun d!339176 () Bool)

(assert (=> d!339176 (= (inv!15690 (tag!2337 (h!17273 (t!111732 rules!4386)))) (= (mod (str.len (value!67193 (tag!2337 (h!17273 (t!111732 rules!4386))))) 2) 0))))

(assert (=> b!1185010 d!339176))

(declare-fun d!339178 () Bool)

(declare-fun res!535830 () Bool)

(declare-fun e!761410 () Bool)

(assert (=> d!339178 (=> (not res!535830) (not e!761410))))

(assert (=> d!339178 (= res!535830 (semiInverseModEq!746 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))))))

(assert (=> d!339178 (= (inv!15693 (transformation!2075 (h!17273 (t!111732 rules!4386)))) e!761410)))

(declare-fun b!1185347 () Bool)

(assert (=> b!1185347 (= e!761410 (equivClasses!713 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))))))

(assert (= (and d!339178 res!535830) b!1185347))

(declare-fun m!1361697 () Bool)

(assert (=> d!339178 m!1361697))

(declare-fun m!1361699 () Bool)

(assert (=> b!1185347 m!1361699))

(assert (=> b!1185010 d!339178))

(declare-fun d!339180 () Bool)

(declare-fun lt!408003 () Int)

(assert (=> d!339180 (>= lt!408003 0)))

(declare-fun e!761416 () Int)

(assert (=> d!339180 (= lt!408003 e!761416)))

(declare-fun c!197106 () Bool)

(assert (=> d!339180 (= c!197106 ((_ is Nil!11870) (originalCharacters!2629 (h!17274 l!6534))))))

(assert (=> d!339180 (= (size!9360 (originalCharacters!2629 (h!17274 l!6534))) lt!408003)))

(declare-fun b!1185356 () Bool)

(assert (=> b!1185356 (= e!761416 0)))

(declare-fun b!1185357 () Bool)

(assert (=> b!1185357 (= e!761416 (+ 1 (size!9360 (t!111730 (originalCharacters!2629 (h!17274 l!6534))))))))

(assert (= (and d!339180 c!197106) b!1185356))

(assert (= (and d!339180 (not c!197106)) b!1185357))

(declare-fun m!1361721 () Bool)

(assert (=> b!1185357 m!1361721))

(assert (=> b!1184614 d!339180))

(declare-fun b!1185360 () Bool)

(declare-fun e!761419 () Bool)

(assert (=> b!1185360 (= e!761419 (subseq!329 (t!111733 lt!407769) (t!111733 (t!111733 l!6534))))))

(declare-fun b!1185359 () Bool)

(declare-fun e!761420 () Bool)

(declare-fun e!761418 () Bool)

(assert (=> b!1185359 (= e!761420 e!761418)))

(declare-fun res!535837 () Bool)

(assert (=> b!1185359 (=> res!535837 e!761418)))

(assert (=> b!1185359 (= res!535837 e!761419)))

(declare-fun res!535836 () Bool)

(assert (=> b!1185359 (=> (not res!535836) (not e!761419))))

(assert (=> b!1185359 (= res!535836 (= (h!17274 lt!407769) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185358 () Bool)

(declare-fun e!761417 () Bool)

(assert (=> b!1185358 (= e!761417 e!761420)))

(declare-fun res!535835 () Bool)

(assert (=> b!1185358 (=> (not res!535835) (not e!761420))))

(assert (=> b!1185358 (= res!535835 ((_ is Cons!11873) (t!111733 l!6534)))))

(declare-fun d!339188 () Bool)

(declare-fun res!535838 () Bool)

(assert (=> d!339188 (=> res!535838 e!761417)))

(assert (=> d!339188 (= res!535838 ((_ is Nil!11873) lt!407769))))

(assert (=> d!339188 (= (subseq!329 lt!407769 (t!111733 l!6534)) e!761417)))

(declare-fun b!1185361 () Bool)

(assert (=> b!1185361 (= e!761418 (subseq!329 lt!407769 (t!111733 (t!111733 l!6534))))))

(assert (= (and d!339188 (not res!535838)) b!1185358))

(assert (= (and b!1185358 res!535835) b!1185359))

(assert (= (and b!1185359 res!535836) b!1185360))

(assert (= (and b!1185359 (not res!535837)) b!1185361))

(declare-fun m!1361733 () Bool)

(assert (=> b!1185360 m!1361733))

(declare-fun m!1361735 () Bool)

(assert (=> b!1185361 m!1361735))

(assert (=> b!1184925 d!339188))

(declare-fun d!339192 () Bool)

(declare-fun lt!408006 () Bool)

(declare-fun e!761421 () Bool)

(assert (=> d!339192 (= lt!408006 e!761421)))

(declare-fun res!535841 () Bool)

(assert (=> d!339192 (=> (not res!535841) (not e!761421))))

(assert (=> d!339192 (= res!535841 (= (list!4362 (_1!6899 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407601)))))) (list!4362 (singletonSeq!719 (h!17274 lt!407601)))))))

(declare-fun e!761422 () Bool)

(assert (=> d!339192 (= lt!408006 e!761422)))

(declare-fun res!535839 () Bool)

(assert (=> d!339192 (=> (not res!535839) (not e!761422))))

(declare-fun lt!408005 () tuple2!12104)

(assert (=> d!339192 (= res!535839 (= (size!9362 (_1!6899 lt!408005)) 1))))

(assert (=> d!339192 (= lt!408005 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407601)))))))

(assert (=> d!339192 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339192 (= (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 lt!407601)) lt!408006)))

(declare-fun b!1185362 () Bool)

(declare-fun res!535840 () Bool)

(assert (=> b!1185362 (=> (not res!535840) (not e!761422))))

(assert (=> b!1185362 (= res!535840 (= (apply!2586 (_1!6899 lt!408005) 0) (h!17274 lt!407601)))))

(declare-fun b!1185363 () Bool)

(assert (=> b!1185363 (= e!761422 (isEmpty!7148 (_2!6899 lt!408005)))))

(declare-fun b!1185364 () Bool)

(assert (=> b!1185364 (= e!761421 (isEmpty!7148 (_2!6899 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407601)))))))))

(assert (= (and d!339192 res!535839) b!1185362))

(assert (= (and b!1185362 res!535840) b!1185363))

(assert (= (and d!339192 res!535841) b!1185364))

(declare-fun m!1361743 () Bool)

(assert (=> d!339192 m!1361743))

(declare-fun m!1361745 () Bool)

(assert (=> d!339192 m!1361745))

(assert (=> d!339192 m!1360581))

(assert (=> d!339192 m!1360583))

(assert (=> d!339192 m!1360581))

(assert (=> d!339192 m!1361743))

(assert (=> d!339192 m!1360581))

(declare-fun m!1361747 () Bool)

(assert (=> d!339192 m!1361747))

(assert (=> d!339192 m!1360343))

(declare-fun m!1361749 () Bool)

(assert (=> d!339192 m!1361749))

(declare-fun m!1361753 () Bool)

(assert (=> b!1185362 m!1361753))

(declare-fun m!1361755 () Bool)

(assert (=> b!1185363 m!1361755))

(assert (=> b!1185364 m!1360581))

(assert (=> b!1185364 m!1360581))

(assert (=> b!1185364 m!1361743))

(assert (=> b!1185364 m!1361743))

(assert (=> b!1185364 m!1361745))

(declare-fun m!1361759 () Bool)

(assert (=> b!1185364 m!1361759))

(assert (=> bs!287324 d!339192))

(declare-fun d!339198 () Bool)

(declare-fun c!197109 () Bool)

(assert (=> d!339198 (= c!197109 ((_ is Node!3888) (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(declare-fun e!761434 () Bool)

(assert (=> d!339198 (= (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))) e!761434)))

(declare-fun b!1185378 () Bool)

(declare-fun inv!15701 (Conc!3888) Bool)

(assert (=> b!1185378 (= e!761434 (inv!15701 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(declare-fun b!1185379 () Bool)

(declare-fun e!761435 () Bool)

(assert (=> b!1185379 (= e!761434 e!761435)))

(declare-fun res!535847 () Bool)

(assert (=> b!1185379 (= res!535847 (not ((_ is Leaf!5956) (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))))))

(assert (=> b!1185379 (=> res!535847 e!761435)))

(declare-fun b!1185380 () Bool)

(declare-fun inv!15702 (Conc!3888) Bool)

(assert (=> b!1185380 (= e!761435 (inv!15702 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))))))

(assert (= (and d!339198 c!197109) b!1185378))

(assert (= (and d!339198 (not c!197109)) b!1185379))

(assert (= (and b!1185379 (not res!535847)) b!1185380))

(declare-fun m!1361779 () Bool)

(assert (=> b!1185378 m!1361779))

(declare-fun m!1361781 () Bool)

(assert (=> b!1185380 m!1361781))

(assert (=> b!1184619 d!339198))

(declare-fun d!339210 () Bool)

(declare-fun lt!408010 () Int)

(assert (=> d!339210 (= lt!408010 (size!9363 (list!4362 (_1!6899 lt!407704))))))

(assert (=> d!339210 (= lt!408010 (size!9367 (c!197025 (_1!6899 lt!407704))))))

(assert (=> d!339210 (= (size!9362 (_1!6899 lt!407704)) lt!408010)))

(declare-fun bs!287491 () Bool)

(assert (= bs!287491 d!339210))

(assert (=> bs!287491 m!1361369))

(assert (=> bs!287491 m!1361369))

(declare-fun m!1361783 () Bool)

(assert (=> bs!287491 m!1361783))

(declare-fun m!1361785 () Bool)

(assert (=> bs!287491 m!1361785))

(assert (=> d!338802 d!339210))

(assert (=> d!338802 d!338806))

(assert (=> d!338802 d!339068))

(assert (=> d!338802 d!339076))

(declare-fun d!339212 () Bool)

(assert (=> d!339212 (= (list!4362 (singletonSeq!719 (h!17274 lt!407601))) (list!4364 (c!197025 (singletonSeq!719 (h!17274 lt!407601)))))))

(declare-fun bs!287492 () Bool)

(assert (= bs!287492 d!339212))

(declare-fun m!1361787 () Bool)

(assert (=> bs!287492 m!1361787))

(assert (=> d!338802 d!339212))

(assert (=> d!338802 d!339074))

(declare-fun d!339214 () Bool)

(assert (=> d!339214 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601)))))) (list!4364 (c!197025 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 lt!407601))))))))))

(declare-fun bs!287493 () Bool)

(assert (= bs!287493 d!339214))

(declare-fun m!1361789 () Bool)

(assert (=> bs!287493 m!1361789))

(assert (=> d!338802 d!339214))

(assert (=> d!338828 d!338946))

(assert (=> d!338828 d!338860))

(declare-fun d!339216 () Bool)

(assert (=> d!339216 (subseq!329 (drop!553 (t!111733 l!6534) (- i!1621 1)) (t!111733 l!6534))))

(assert (=> d!339216 true))

(declare-fun _$26!185 () Unit!18194)

(assert (=> d!339216 (= (choose!7665 (t!111733 l!6534) (- i!1621 1)) _$26!185)))

(declare-fun bs!287494 () Bool)

(assert (= bs!287494 d!339216))

(assert (=> bs!287494 m!1360341))

(assert (=> bs!287494 m!1360341))

(assert (=> bs!287494 m!1360647))

(assert (=> d!338828 d!339216))

(declare-fun d!339218 () Bool)

(declare-fun lt!408011 () Int)

(assert (=> d!339218 (>= lt!408011 0)))

(declare-fun e!761438 () Int)

(assert (=> d!339218 (= lt!408011 e!761438)))

(declare-fun c!197112 () Bool)

(assert (=> d!339218 (= c!197112 ((_ is Nil!11873) lt!407775))))

(assert (=> d!339218 (= (size!9363 lt!407775) lt!408011)))

(declare-fun b!1185385 () Bool)

(assert (=> b!1185385 (= e!761438 0)))

(declare-fun b!1185386 () Bool)

(assert (=> b!1185386 (= e!761438 (+ 1 (size!9363 (t!111733 lt!407775))))))

(assert (= (and d!339218 c!197112) b!1185385))

(assert (= (and d!339218 (not c!197112)) b!1185386))

(declare-fun m!1361791 () Bool)

(assert (=> b!1185386 m!1361791))

(assert (=> b!1184955 d!339218))

(declare-fun d!339220 () Bool)

(declare-fun lt!408012 () Bool)

(assert (=> d!339220 (= lt!408012 (isEmpty!7147 (list!4361 (_2!6899 lt!407702))))))

(assert (=> d!339220 (= lt!408012 (isEmpty!7150 (c!197023 (_2!6899 lt!407702))))))

(assert (=> d!339220 (= (isEmpty!7148 (_2!6899 lt!407702)) lt!408012)))

(declare-fun bs!287495 () Bool)

(assert (= bs!287495 d!339220))

(declare-fun m!1361793 () Bool)

(assert (=> bs!287495 m!1361793))

(assert (=> bs!287495 m!1361793))

(declare-fun m!1361795 () Bool)

(assert (=> bs!287495 m!1361795))

(declare-fun m!1361797 () Bool)

(assert (=> bs!287495 m!1361797))

(assert (=> b!1184738 d!339220))

(declare-fun bs!287496 () Bool)

(declare-fun d!339222 () Bool)

(assert (= bs!287496 (and d!339222 d!339100)))

(declare-fun lambda!48878 () Int)

(assert (=> bs!287496 (= lambda!48878 lambda!48871)))

(declare-fun bs!287497 () Bool)

(assert (= bs!287497 (and d!339222 d!338760)))

(assert (=> bs!287497 (= lambda!48878 lambda!48835)))

(declare-fun bs!287498 () Bool)

(assert (= bs!287498 (and d!339222 d!338816)))

(assert (=> bs!287498 (= lambda!48878 lambda!48839)))

(declare-fun bs!287499 () Bool)

(assert (= bs!287499 (and d!339222 d!338794)))

(assert (=> bs!287499 (= lambda!48878 lambda!48837)))

(declare-fun bs!287500 () Bool)

(assert (= bs!287500 (and d!339222 d!339014)))

(assert (=> bs!287500 (= lambda!48878 lambda!48854)))

(declare-fun bs!287501 () Bool)

(assert (= bs!287501 (and d!339222 d!339062)))

(assert (=> bs!287501 (= lambda!48878 lambda!48861)))

(declare-fun bs!287502 () Bool)

(assert (= bs!287502 (and d!339222 d!339088)))

(assert (=> bs!287502 (= lambda!48878 lambda!48863)))

(declare-fun bs!287503 () Bool)

(assert (= bs!287503 (and d!339222 d!339090)))

(assert (=> bs!287503 (= (= thiss!27592 Lexer!1768) (= lambda!48878 lambda!48870))))

(declare-fun bs!287504 () Bool)

(assert (= bs!287504 (and d!339222 b!1184544)))

(assert (=> bs!287504 (= (= thiss!27592 Lexer!1768) (= lambda!48878 lambda!48815))))

(declare-fun bs!287505 () Bool)

(assert (= bs!287505 (and d!339222 b!1184924)))

(assert (=> bs!287505 (= (= thiss!27592 Lexer!1768) (= lambda!48878 lambda!48847))))

(declare-fun bs!287506 () Bool)

(assert (= bs!287506 (and d!339222 d!338792)))

(assert (=> bs!287506 (= lambda!48878 lambda!48836)))

(declare-fun bs!287507 () Bool)

(assert (= bs!287507 (and d!339222 d!338832)))

(assert (=> bs!287507 (= lambda!48878 lambda!48843)))

(declare-fun bs!287508 () Bool)

(assert (= bs!287508 (and d!339222 d!338748)))

(assert (=> bs!287508 (= lambda!48878 lambda!48826)))

(declare-fun bs!287509 () Bool)

(assert (= bs!287509 (and d!339222 d!338804)))

(assert (=> bs!287509 (= lambda!48878 lambda!48838)))

(declare-fun b!1185395 () Bool)

(declare-fun e!761445 () Bool)

(assert (=> b!1185395 (= e!761445 true)))

(declare-fun b!1185394 () Bool)

(declare-fun e!761444 () Bool)

(assert (=> b!1185394 (= e!761444 e!761445)))

(declare-fun b!1185393 () Bool)

(declare-fun e!761443 () Bool)

(assert (=> b!1185393 (= e!761443 e!761444)))

(assert (=> d!339222 e!761443))

(assert (= b!1185394 b!1185395))

(assert (= b!1185393 b!1185394))

(assert (= (and d!339222 ((_ is Cons!11872) rules!4386)) b!1185393))

(assert (=> b!1185395 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48878))))

(assert (=> b!1185395 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48878))))

(assert (=> d!339222 true))

(declare-fun lt!408013 () Bool)

(assert (=> d!339222 (= lt!408013 (forall!3142 (t!111733 lt!407766) lambda!48878))))

(declare-fun e!761441 () Bool)

(assert (=> d!339222 (= lt!408013 e!761441)))

(declare-fun res!535848 () Bool)

(assert (=> d!339222 (=> res!535848 e!761441)))

(assert (=> d!339222 (= res!535848 (not ((_ is Cons!11873) (t!111733 lt!407766))))))

(assert (=> d!339222 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339222 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 lt!407766)) lt!408013)))

(declare-fun b!1185389 () Bool)

(declare-fun e!761440 () Bool)

(assert (=> b!1185389 (= e!761441 e!761440)))

(declare-fun res!535849 () Bool)

(assert (=> b!1185389 (=> (not res!535849) (not e!761440))))

(assert (=> b!1185389 (= res!535849 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407766))))))

(declare-fun b!1185390 () Bool)

(assert (=> b!1185390 (= e!761440 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 lt!407766))))))

(assert (= (and d!339222 (not res!535848)) b!1185389))

(assert (= (and b!1185389 res!535849) b!1185390))

(declare-fun m!1361805 () Bool)

(assert (=> d!339222 m!1361805))

(assert (=> d!339222 m!1360343))

(declare-fun m!1361807 () Bool)

(assert (=> b!1185389 m!1361807))

(declare-fun m!1361809 () Bool)

(assert (=> b!1185390 m!1361809))

(assert (=> b!1184923 d!339222))

(declare-fun bs!287510 () Bool)

(declare-fun d!339230 () Bool)

(assert (= bs!287510 (and d!339230 d!339048)))

(declare-fun lambda!48879 () Int)

(assert (=> bs!287510 (= (= (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (= lambda!48879 lambda!48857))))

(assert (=> d!339230 true))

(assert (=> d!339230 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (dynLambda!5293 order!7375 lambda!48879))))

(assert (=> d!339230 (= (equivClasses!713 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (Forall2!358 lambda!48879))))

(declare-fun bs!287511 () Bool)

(assert (= bs!287511 d!339230))

(declare-fun m!1361811 () Bool)

(assert (=> bs!287511 m!1361811))

(assert (=> b!1184748 d!339230))

(assert (=> b!1184953 d!338860))

(declare-fun b!1185400 () Bool)

(declare-fun e!761449 () Bool)

(assert (=> b!1185400 (= e!761449 (subseq!329 (t!111733 (t!111733 lt!407598)) (t!111733 (t!111733 l!6534))))))

(declare-fun b!1185399 () Bool)

(declare-fun e!761450 () Bool)

(declare-fun e!761448 () Bool)

(assert (=> b!1185399 (= e!761450 e!761448)))

(declare-fun res!535852 () Bool)

(assert (=> b!1185399 (=> res!535852 e!761448)))

(assert (=> b!1185399 (= res!535852 e!761449)))

(declare-fun res!535851 () Bool)

(assert (=> b!1185399 (=> (not res!535851) (not e!761449))))

(assert (=> b!1185399 (= res!535851 (= (h!17274 (t!111733 lt!407598)) (h!17274 (t!111733 l!6534))))))

(declare-fun b!1185398 () Bool)

(declare-fun e!761447 () Bool)

(assert (=> b!1185398 (= e!761447 e!761450)))

(declare-fun res!535850 () Bool)

(assert (=> b!1185398 (=> (not res!535850) (not e!761450))))

(assert (=> b!1185398 (= res!535850 ((_ is Cons!11873) (t!111733 l!6534)))))

(declare-fun d!339232 () Bool)

(declare-fun res!535853 () Bool)

(assert (=> d!339232 (=> res!535853 e!761447)))

(assert (=> d!339232 (= res!535853 ((_ is Nil!11873) (t!111733 lt!407598)))))

(assert (=> d!339232 (= (subseq!329 (t!111733 lt!407598) (t!111733 l!6534)) e!761447)))

(declare-fun b!1185401 () Bool)

(assert (=> b!1185401 (= e!761448 (subseq!329 (t!111733 lt!407598) (t!111733 (t!111733 l!6534))))))

(assert (= (and d!339232 (not res!535853)) b!1185398))

(assert (= (and b!1185398 res!535850) b!1185399))

(assert (= (and b!1185399 res!535851) b!1185400))

(assert (= (and b!1185399 (not res!535852)) b!1185401))

(declare-fun m!1361813 () Bool)

(assert (=> b!1185400 m!1361813))

(assert (=> b!1185401 m!1361179))

(assert (=> b!1184791 d!339232))

(declare-fun d!339234 () Bool)

(declare-fun lt!408018 () Bool)

(declare-fun e!761453 () Bool)

(assert (=> d!339234 (= lt!408018 e!761453)))

(declare-fun res!535858 () Bool)

(assert (=> d!339234 (=> (not res!535858) (not e!761453))))

(assert (=> d!339234 (= res!535858 (= (list!4362 (_1!6899 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407598)))))) (list!4362 (singletonSeq!719 (h!17274 lt!407598)))))))

(declare-fun e!761454 () Bool)

(assert (=> d!339234 (= lt!408018 e!761454)))

(declare-fun res!535856 () Bool)

(assert (=> d!339234 (=> (not res!535856) (not e!761454))))

(declare-fun lt!408017 () tuple2!12104)

(assert (=> d!339234 (= res!535856 (= (size!9362 (_1!6899 lt!408017)) 1))))

(assert (=> d!339234 (= lt!408017 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407598)))))))

(assert (=> d!339234 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339234 (= (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 lt!407598)) lt!408018)))

(declare-fun b!1185404 () Bool)

(declare-fun res!535857 () Bool)

(assert (=> b!1185404 (=> (not res!535857) (not e!761454))))

(assert (=> b!1185404 (= res!535857 (= (apply!2586 (_1!6899 lt!408017) 0) (h!17274 lt!407598)))))

(declare-fun b!1185405 () Bool)

(assert (=> b!1185405 (= e!761454 (isEmpty!7148 (_2!6899 lt!408017)))))

(declare-fun b!1185406 () Bool)

(assert (=> b!1185406 (= e!761453 (isEmpty!7148 (_2!6899 (lex!736 Lexer!1768 rules!4386 (print!673 Lexer!1768 (singletonSeq!719 (h!17274 lt!407598)))))))))

(assert (= (and d!339234 res!535856) b!1185404))

(assert (= (and b!1185404 res!535857) b!1185405))

(assert (= (and d!339234 res!535858) b!1185406))

(declare-fun m!1361821 () Bool)

(assert (=> d!339234 m!1361821))

(declare-fun m!1361823 () Bool)

(assert (=> d!339234 m!1361823))

(assert (=> d!339234 m!1360563))

(assert (=> d!339234 m!1360565))

(assert (=> d!339234 m!1360563))

(assert (=> d!339234 m!1361821))

(assert (=> d!339234 m!1360563))

(declare-fun m!1361825 () Bool)

(assert (=> d!339234 m!1361825))

(assert (=> d!339234 m!1360343))

(declare-fun m!1361827 () Bool)

(assert (=> d!339234 m!1361827))

(declare-fun m!1361829 () Bool)

(assert (=> b!1185404 m!1361829))

(declare-fun m!1361831 () Bool)

(assert (=> b!1185405 m!1361831))

(assert (=> b!1185406 m!1360563))

(assert (=> b!1185406 m!1360563))

(assert (=> b!1185406 m!1361821))

(assert (=> b!1185406 m!1361821))

(assert (=> b!1185406 m!1361823))

(declare-fun m!1361833 () Bool)

(assert (=> b!1185406 m!1361833))

(assert (=> bs!287325 d!339234))

(declare-fun d!339238 () Bool)

(declare-fun lt!408022 () Bool)

(declare-fun e!761461 () Bool)

(assert (=> d!339238 (= lt!408022 e!761461)))

(declare-fun res!535864 () Bool)

(assert (=> d!339238 (=> (not res!535864) (not e!761461))))

(assert (=> d!339238 (= res!535864 (= (list!4362 (_1!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407601))))))) (list!4362 (singletonSeq!719 (h!17274 (t!111733 lt!407601))))))))

(declare-fun e!761462 () Bool)

(assert (=> d!339238 (= lt!408022 e!761462)))

(declare-fun res!535862 () Bool)

(assert (=> d!339238 (=> (not res!535862) (not e!761462))))

(declare-fun lt!408021 () tuple2!12104)

(assert (=> d!339238 (= res!535862 (= (size!9362 (_1!6899 lt!408021)) 1))))

(assert (=> d!339238 (= lt!408021 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407601))))))))

(assert (=> d!339238 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339238 (= (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601))) lt!408022)))

(declare-fun b!1185413 () Bool)

(declare-fun res!535863 () Bool)

(assert (=> b!1185413 (=> (not res!535863) (not e!761462))))

(assert (=> b!1185413 (= res!535863 (= (apply!2586 (_1!6899 lt!408021) 0) (h!17274 (t!111733 lt!407601))))))

(declare-fun b!1185414 () Bool)

(assert (=> b!1185414 (= e!761462 (isEmpty!7148 (_2!6899 lt!408021)))))

(declare-fun b!1185415 () Bool)

(assert (=> b!1185415 (= e!761461 (isEmpty!7148 (_2!6899 (lex!736 thiss!27592 rules!4386 (print!673 thiss!27592 (singletonSeq!719 (h!17274 (t!111733 lt!407601))))))))))

(assert (= (and d!339238 res!535862) b!1185413))

(assert (= (and b!1185413 res!535863) b!1185414))

(assert (= (and d!339238 res!535864) b!1185415))

(declare-fun m!1361835 () Bool)

(assert (=> d!339238 m!1361835))

(declare-fun m!1361837 () Bool)

(assert (=> d!339238 m!1361837))

(declare-fun m!1361839 () Bool)

(assert (=> d!339238 m!1361839))

(declare-fun m!1361841 () Bool)

(assert (=> d!339238 m!1361841))

(assert (=> d!339238 m!1361839))

(assert (=> d!339238 m!1361835))

(assert (=> d!339238 m!1361839))

(declare-fun m!1361843 () Bool)

(assert (=> d!339238 m!1361843))

(assert (=> d!339238 m!1360343))

(declare-fun m!1361845 () Bool)

(assert (=> d!339238 m!1361845))

(declare-fun m!1361847 () Bool)

(assert (=> b!1185413 m!1361847))

(declare-fun m!1361849 () Bool)

(assert (=> b!1185414 m!1361849))

(assert (=> b!1185415 m!1361839))

(assert (=> b!1185415 m!1361839))

(assert (=> b!1185415 m!1361835))

(assert (=> b!1185415 m!1361835))

(assert (=> b!1185415 m!1361837))

(declare-fun m!1361851 () Bool)

(assert (=> b!1185415 m!1361851))

(assert (=> b!1184620 d!339238))

(declare-fun d!339240 () Bool)

(declare-fun lt!408023 () BalanceConc!7798)

(assert (=> d!339240 (= (list!4361 lt!408023) (originalCharacters!2629 (h!17274 (t!111733 lt!407601))))))

(assert (=> d!339240 (= lt!408023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601))))) (value!67194 (h!17274 (t!111733 lt!407601)))))))

(assert (=> d!339240 (= (charsOf!1096 (h!17274 (t!111733 lt!407601))) lt!408023)))

(declare-fun b_lambda!35521 () Bool)

(assert (=> (not b_lambda!35521) (not d!339240)))

(declare-fun t!111819 () Bool)

(declare-fun tb!66277 () Bool)

(assert (=> (and b!1184549 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111819) tb!66277))

(declare-fun b!1185416 () Bool)

(declare-fun e!761463 () Bool)

(declare-fun tp!337814 () Bool)

(assert (=> b!1185416 (= e!761463 (and (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601))))) (value!67194 (h!17274 (t!111733 lt!407601)))))) tp!337814))))

(declare-fun result!79578 () Bool)

(assert (=> tb!66277 (= result!79578 (and (inv!15698 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601))))) (value!67194 (h!17274 (t!111733 lt!407601))))) e!761463))))

(assert (= tb!66277 b!1185416))

(declare-fun m!1361859 () Bool)

(assert (=> b!1185416 m!1361859))

(declare-fun m!1361861 () Bool)

(assert (=> tb!66277 m!1361861))

(assert (=> d!339240 t!111819))

(declare-fun b_and!81549 () Bool)

(assert (= b_and!81517 (and (=> t!111819 result!79578) b_and!81549)))

(declare-fun tb!66279 () Bool)

(declare-fun t!111821 () Bool)

(assert (=> (and b!1184553 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111821) tb!66279))

(declare-fun result!79580 () Bool)

(assert (= result!79580 result!79578))

(assert (=> d!339240 t!111821))

(declare-fun b_and!81551 () Bool)

(assert (= b_and!81519 (and (=> t!111821 result!79580) b_and!81551)))

(declare-fun t!111823 () Bool)

(declare-fun tb!66281 () Bool)

(assert (=> (and b!1184978 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111823) tb!66281))

(declare-fun result!79582 () Bool)

(assert (= result!79582 result!79578))

(assert (=> d!339240 t!111823))

(declare-fun b_and!81553 () Bool)

(assert (= b_and!81521 (and (=> t!111823 result!79582) b_and!81553)))

(declare-fun t!111825 () Bool)

(declare-fun tb!66283 () Bool)

(assert (=> (and b!1185011 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111825) tb!66283))

(declare-fun result!79584 () Bool)

(assert (= result!79584 result!79578))

(assert (=> d!339240 t!111825))

(declare-fun b_and!81555 () Bool)

(assert (= b_and!81523 (and (=> t!111825 result!79584) b_and!81555)))

(declare-fun m!1361863 () Bool)

(assert (=> d!339240 m!1361863))

(declare-fun m!1361865 () Bool)

(assert (=> d!339240 m!1361865))

(assert (=> b!1184620 d!339240))

(declare-fun d!339244 () Bool)

(assert (=> d!339244 (= (separableTokensPredicate!158 thiss!27592 (h!17274 lt!407601) (h!17274 (t!111733 lt!407601)) rules!4386) (not (prefixMatchZipperSequence!114 (rulesRegex!85 thiss!27592 rules!4386) (++!3027 (charsOf!1096 (h!17274 lt!407601)) (singletonSeq!720 (apply!2587 (charsOf!1096 (h!17274 (t!111733 lt!407601))) 0))))))))

(declare-fun bs!287530 () Bool)

(assert (= bs!287530 d!339244))

(declare-fun m!1361867 () Bool)

(assert (=> bs!287530 m!1361867))

(declare-fun m!1361869 () Bool)

(assert (=> bs!287530 m!1361869))

(declare-fun m!1361871 () Bool)

(assert (=> bs!287530 m!1361871))

(assert (=> bs!287530 m!1360943))

(declare-fun m!1361873 () Bool)

(assert (=> bs!287530 m!1361873))

(declare-fun m!1361875 () Bool)

(assert (=> bs!287530 m!1361875))

(assert (=> bs!287530 m!1360943))

(assert (=> bs!287530 m!1360425))

(assert (=> bs!287530 m!1361869))

(assert (=> bs!287530 m!1361867))

(assert (=> bs!287530 m!1361871))

(assert (=> bs!287530 m!1361873))

(assert (=> bs!287530 m!1360425))

(assert (=> b!1184620 d!339244))

(declare-fun d!339246 () Bool)

(assert (=> d!339246 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601))))

(declare-fun lt!408025 () Unit!18194)

(assert (=> d!339246 (= lt!408025 (choose!7668 thiss!27592 rules!4386 lt!407601 (h!17274 lt!407601)))))

(assert (=> d!339246 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339246 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 lt!407601 (h!17274 lt!407601)) lt!408025)))

(declare-fun bs!287540 () Bool)

(assert (= bs!287540 d!339246))

(assert (=> bs!287540 m!1360309))

(declare-fun m!1361877 () Bool)

(assert (=> bs!287540 m!1361877))

(assert (=> bs!287540 m!1360343))

(assert (=> b!1184620 d!339246))

(declare-fun d!339248 () Bool)

(declare-fun lt!408026 () Int)

(assert (=> d!339248 (= lt!408026 (size!9360 (list!4361 (charsOf!1096 (h!17274 (t!111733 lt!407601))))))))

(assert (=> d!339248 (= lt!408026 (size!9364 (c!197023 (charsOf!1096 (h!17274 (t!111733 lt!407601))))))))

(assert (=> d!339248 (= (size!9359 (charsOf!1096 (h!17274 (t!111733 lt!407601)))) lt!408026)))

(declare-fun bs!287541 () Bool)

(assert (= bs!287541 d!339248))

(assert (=> bs!287541 m!1360425))

(declare-fun m!1361879 () Bool)

(assert (=> bs!287541 m!1361879))

(assert (=> bs!287541 m!1361879))

(declare-fun m!1361881 () Bool)

(assert (=> bs!287541 m!1361881))

(declare-fun m!1361883 () Bool)

(assert (=> bs!287541 m!1361883))

(assert (=> b!1184620 d!339248))

(assert (=> b!1184620 d!338802))

(declare-fun d!339250 () Bool)

(assert (=> d!339250 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601)))))

(declare-fun lt!408027 () Unit!18194)

(assert (=> d!339250 (= lt!408027 (choose!7668 thiss!27592 rules!4386 lt!407601 (h!17274 (t!111733 lt!407601))))))

(assert (=> d!339250 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339250 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 lt!407601 (h!17274 (t!111733 lt!407601))) lt!408027)))

(declare-fun bs!287542 () Bool)

(assert (= bs!287542 d!339250))

(assert (=> bs!287542 m!1360429))

(declare-fun m!1361891 () Bool)

(assert (=> bs!287542 m!1361891))

(assert (=> bs!287542 m!1360343))

(assert (=> b!1184620 d!339250))

(assert (=> b!1184743 d!339238))

(declare-fun b!1185426 () Bool)

(declare-fun e!761473 () Bool)

(declare-fun e!761475 () Bool)

(assert (=> b!1185426 (= e!761473 e!761475)))

(declare-fun c!197117 () Bool)

(assert (=> b!1185426 (= c!197117 ((_ is IntegerValue!6424) (value!67194 (h!17274 (t!111733 l!6534)))))))

(declare-fun b!1185428 () Bool)

(assert (=> b!1185428 (= e!761473 (inv!16 (value!67194 (h!17274 (t!111733 l!6534)))))))

(declare-fun b!1185429 () Bool)

(assert (=> b!1185429 (= e!761475 (inv!17 (value!67194 (h!17274 (t!111733 l!6534)))))))

(declare-fun b!1185430 () Bool)

(declare-fun e!761474 () Bool)

(assert (=> b!1185430 (= e!761474 (inv!15 (value!67194 (h!17274 (t!111733 l!6534)))))))

(declare-fun b!1185427 () Bool)

(declare-fun res!535871 () Bool)

(assert (=> b!1185427 (=> res!535871 e!761474)))

(assert (=> b!1185427 (= res!535871 (not ((_ is IntegerValue!6425) (value!67194 (h!17274 (t!111733 l!6534))))))))

(assert (=> b!1185427 (= e!761475 e!761474)))

(declare-fun d!339254 () Bool)

(declare-fun c!197118 () Bool)

(assert (=> d!339254 (= c!197118 ((_ is IntegerValue!6423) (value!67194 (h!17274 (t!111733 l!6534)))))))

(assert (=> d!339254 (= (inv!21 (value!67194 (h!17274 (t!111733 l!6534)))) e!761473)))

(assert (= (and d!339254 c!197118) b!1185428))

(assert (= (and d!339254 (not c!197118)) b!1185426))

(assert (= (and b!1185426 c!197117) b!1185429))

(assert (= (and b!1185426 (not c!197117)) b!1185427))

(assert (= (and b!1185427 (not res!535871)) b!1185430))

(declare-fun m!1361895 () Bool)

(assert (=> b!1185428 m!1361895))

(declare-fun m!1361897 () Bool)

(assert (=> b!1185429 m!1361897))

(declare-fun m!1361899 () Bool)

(assert (=> b!1185430 m!1361899))

(assert (=> b!1184976 d!339254))

(declare-fun d!339258 () Bool)

(declare-fun res!535874 () Bool)

(declare-fun e!761479 () Bool)

(assert (=> d!339258 (=> res!535874 e!761479)))

(assert (=> d!339258 (= res!535874 (or (not ((_ is Cons!11873) (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))) (not ((_ is Cons!11873) (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))))))))

(assert (=> d!339258 (= (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))) rules!4386) e!761479)))

(declare-fun b!1185433 () Bool)

(declare-fun e!761478 () Bool)

(assert (=> b!1185433 (= e!761479 e!761478)))

(declare-fun res!535875 () Bool)

(assert (=> b!1185433 (=> (not res!535875) (not e!761478))))

(assert (=> b!1185433 (= res!535875 (separableTokensPredicate!158 thiss!27592 (h!17274 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534)))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))) rules!4386))))

(declare-fun lt!408033 () Unit!18194)

(declare-fun Unit!18237 () Unit!18194)

(assert (=> b!1185433 (= lt!408033 Unit!18237)))

(assert (=> b!1185433 (> (size!9359 (charsOf!1096 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))))) 0)))

(declare-fun lt!408032 () Unit!18194)

(declare-fun Unit!18238 () Unit!18194)

(assert (=> b!1185433 (= lt!408032 Unit!18238)))

(assert (=> b!1185433 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))))))

(declare-fun lt!408030 () Unit!18194)

(declare-fun Unit!18239 () Unit!18194)

(assert (=> b!1185433 (= lt!408030 Unit!18239)))

(assert (=> b!1185433 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534)))))))

(declare-fun lt!408031 () Unit!18194)

(declare-fun lt!408035 () Unit!18194)

(assert (=> b!1185433 (= lt!408031 lt!408035)))

(assert (=> b!1185433 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))))))

(assert (=> b!1185433 (= lt!408035 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))) (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534)))))))))

(declare-fun lt!408029 () Unit!18194)

(declare-fun lt!408034 () Unit!18194)

(assert (=> b!1185433 (= lt!408029 lt!408034)))

(assert (=> b!1185433 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534)))))))

(assert (=> b!1185433 (= lt!408034 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!317 thiss!27592 rules!4386 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))) (h!17274 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))))))

(declare-fun b!1185434 () Bool)

(assert (=> b!1185434 (= e!761478 (tokensListTwoByTwoPredicateSeparableList!164 thiss!27592 (Cons!11873 (h!17274 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534))))) (t!111733 (t!111733 (Cons!11873 (h!17274 (t!111733 l!6534)) (t!111733 (t!111733 l!6534)))))) rules!4386))))

(assert (= (and d!339258 (not res!535874)) b!1185433))

(assert (= (and b!1185433 res!535875) b!1185434))

(declare-fun m!1361901 () Bool)

(assert (=> b!1185433 m!1361901))

(declare-fun m!1361903 () Bool)

(assert (=> b!1185433 m!1361903))

(declare-fun m!1361905 () Bool)

(assert (=> b!1185433 m!1361905))

(declare-fun m!1361907 () Bool)

(assert (=> b!1185433 m!1361907))

(assert (=> b!1185433 m!1361907))

(declare-fun m!1361909 () Bool)

(assert (=> b!1185433 m!1361909))

(declare-fun m!1361911 () Bool)

(assert (=> b!1185433 m!1361911))

(declare-fun m!1361913 () Bool)

(assert (=> b!1185433 m!1361913))

(declare-fun m!1361915 () Bool)

(assert (=> b!1185434 m!1361915))

(assert (=> b!1184730 d!339258))

(declare-fun d!339260 () Bool)

(declare-fun res!535876 () Bool)

(declare-fun e!761483 () Bool)

(assert (=> d!339260 (=> res!535876 e!761483)))

(assert (=> d!339260 (= res!535876 ((_ is Nil!11873) lt!407601))))

(assert (=> d!339260 (= (forall!3142 lt!407601 lambda!48843) e!761483)))

(declare-fun b!1185438 () Bool)

(declare-fun e!761484 () Bool)

(assert (=> b!1185438 (= e!761483 e!761484)))

(declare-fun res!535877 () Bool)

(assert (=> b!1185438 (=> (not res!535877) (not e!761484))))

(assert (=> b!1185438 (= res!535877 (dynLambda!5290 lambda!48843 (h!17274 lt!407601)))))

(declare-fun b!1185439 () Bool)

(assert (=> b!1185439 (= e!761484 (forall!3142 (t!111733 lt!407601) lambda!48843))))

(assert (= (and d!339260 (not res!535876)) b!1185438))

(assert (= (and b!1185438 res!535877) b!1185439))

(declare-fun b_lambda!35523 () Bool)

(assert (=> (not b_lambda!35523) (not b!1185438)))

(declare-fun m!1361917 () Bool)

(assert (=> b!1185438 m!1361917))

(declare-fun m!1361919 () Bool)

(assert (=> b!1185439 m!1361919))

(assert (=> d!338832 d!339260))

(assert (=> d!338832 d!338806))

(assert (=> b!1184756 d!338748))

(declare-fun bs!287558 () Bool)

(declare-fun d!339262 () Bool)

(assert (= bs!287558 (and d!339262 d!338940)))

(declare-fun lambda!48883 () Int)

(assert (=> bs!287558 (= (and (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) (= (toValue!3188 (transformation!2075 (h!17273 rules!4386))) (toValue!3188 (transformation!2075 (rule!3496 (h!17274 l!6534)))))) (= lambda!48883 lambda!48853))))

(assert (=> d!339262 true))

(assert (=> d!339262 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5292 order!7373 lambda!48883))))

(assert (=> d!339262 true))

(assert (=> d!339262 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5292 order!7373 lambda!48883))))

(assert (=> d!339262 (= (semiInverseModEq!746 (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (Forall!447 lambda!48883))))

(declare-fun bs!287559 () Bool)

(assert (= bs!287559 d!339262))

(declare-fun m!1361931 () Bool)

(assert (=> bs!287559 m!1361931))

(assert (=> d!338756 d!339262))

(declare-fun d!339268 () Bool)

(declare-fun lt!408036 () Int)

(assert (=> d!339268 (>= lt!408036 0)))

(declare-fun e!761487 () Int)

(assert (=> d!339268 (= lt!408036 e!761487)))

(declare-fun c!197121 () Bool)

(assert (=> d!339268 (= c!197121 ((_ is Nil!11873) l!6534))))

(assert (=> d!339268 (= (size!9363 l!6534) lt!408036)))

(declare-fun b!1185444 () Bool)

(assert (=> b!1185444 (= e!761487 0)))

(declare-fun b!1185445 () Bool)

(assert (=> b!1185445 (= e!761487 (+ 1 (size!9363 (t!111733 l!6534))))))

(assert (= (and d!339268 c!197121) b!1185444))

(assert (= (and d!339268 (not c!197121)) b!1185445))

(assert (=> b!1185445 m!1360771))

(assert (=> bm!82614 d!339268))

(declare-fun d!339272 () Bool)

(declare-fun res!535878 () Bool)

(declare-fun e!761488 () Bool)

(assert (=> d!339272 (=> res!535878 e!761488)))

(assert (=> d!339272 (= res!535878 ((_ is Nil!11873) (t!111733 lt!407601)))))

(assert (=> d!339272 (= (forall!3142 (t!111733 lt!407601) lambda!48838) e!761488)))

(declare-fun b!1185446 () Bool)

(declare-fun e!761489 () Bool)

(assert (=> b!1185446 (= e!761488 e!761489)))

(declare-fun res!535879 () Bool)

(assert (=> b!1185446 (=> (not res!535879) (not e!761489))))

(assert (=> b!1185446 (= res!535879 (dynLambda!5290 lambda!48838 (h!17274 (t!111733 lt!407601))))))

(declare-fun b!1185447 () Bool)

(assert (=> b!1185447 (= e!761489 (forall!3142 (t!111733 (t!111733 lt!407601)) lambda!48838))))

(assert (= (and d!339272 (not res!535878)) b!1185446))

(assert (= (and b!1185446 res!535879) b!1185447))

(declare-fun b_lambda!35525 () Bool)

(assert (=> (not b_lambda!35525) (not b!1185446)))

(declare-fun m!1361935 () Bool)

(assert (=> b!1185446 m!1361935))

(declare-fun m!1361937 () Bool)

(assert (=> b!1185447 m!1361937))

(assert (=> d!338804 d!339272))

(assert (=> d!338804 d!338806))

(assert (=> b!1184721 d!338892))

(declare-fun d!339274 () Bool)

(declare-fun lt!408037 () Bool)

(assert (=> d!339274 (= lt!408037 (isEmpty!7147 (list!4361 (_2!6899 lt!407704))))))

(assert (=> d!339274 (= lt!408037 (isEmpty!7150 (c!197023 (_2!6899 lt!407704))))))

(assert (=> d!339274 (= (isEmpty!7148 (_2!6899 lt!407704)) lt!408037)))

(declare-fun bs!287560 () Bool)

(assert (= bs!287560 d!339274))

(declare-fun m!1361939 () Bool)

(assert (=> bs!287560 m!1361939))

(assert (=> bs!287560 m!1361939))

(declare-fun m!1361941 () Bool)

(assert (=> bs!287560 m!1361941))

(declare-fun m!1361945 () Bool)

(assert (=> bs!287560 m!1361945))

(assert (=> b!1184741 d!339274))

(declare-fun d!339278 () Bool)

(declare-fun res!535880 () Bool)

(declare-fun e!761490 () Bool)

(assert (=> d!339278 (=> res!535880 e!761490)))

(assert (=> d!339278 (= res!535880 ((_ is Nil!11873) (t!111733 lt!407598)))))

(assert (=> d!339278 (= (forall!3142 (t!111733 lt!407598) lambda!48826) e!761490)))

(declare-fun b!1185448 () Bool)

(declare-fun e!761491 () Bool)

(assert (=> b!1185448 (= e!761490 e!761491)))

(declare-fun res!535881 () Bool)

(assert (=> b!1185448 (=> (not res!535881) (not e!761491))))

(assert (=> b!1185448 (= res!535881 (dynLambda!5290 lambda!48826 (h!17274 (t!111733 lt!407598))))))

(declare-fun b!1185449 () Bool)

(assert (=> b!1185449 (= e!761491 (forall!3142 (t!111733 (t!111733 lt!407598)) lambda!48826))))

(assert (= (and d!339278 (not res!535880)) b!1185448))

(assert (= (and b!1185448 res!535881) b!1185449))

(declare-fun b_lambda!35527 () Bool)

(assert (=> (not b_lambda!35527) (not b!1185448)))

(declare-fun m!1361951 () Bool)

(assert (=> b!1185448 m!1361951))

(declare-fun m!1361953 () Bool)

(assert (=> b!1185449 m!1361953))

(assert (=> d!338748 d!339278))

(assert (=> d!338748 d!338806))

(assert (=> b!1184793 d!338802))

(declare-fun d!339282 () Bool)

(declare-fun lt!408039 () Int)

(assert (=> d!339282 (>= lt!408039 0)))

(declare-fun e!761494 () Int)

(assert (=> d!339282 (= lt!408039 e!761494)))

(declare-fun c!197122 () Bool)

(assert (=> d!339282 (= c!197122 ((_ is Nil!11873) lt!407776))))

(assert (=> d!339282 (= (size!9363 lt!407776) lt!408039)))

(declare-fun b!1185452 () Bool)

(assert (=> b!1185452 (= e!761494 0)))

(declare-fun b!1185453 () Bool)

(assert (=> b!1185453 (= e!761494 (+ 1 (size!9363 (t!111733 lt!407776))))))

(assert (= (and d!339282 c!197122) b!1185452))

(assert (= (and d!339282 (not c!197122)) b!1185453))

(declare-fun m!1361959 () Bool)

(assert (=> b!1185453 m!1361959))

(assert (=> b!1184964 d!339282))

(declare-fun d!339286 () Bool)

(declare-fun res!535884 () Bool)

(declare-fun e!761496 () Bool)

(assert (=> d!339286 (=> res!535884 e!761496)))

(assert (=> d!339286 (= res!535884 ((_ is Nil!11873) (t!111733 lt!407601)))))

(assert (=> d!339286 (= (forall!3142 (t!111733 lt!407601) lambda!48815) e!761496)))

(declare-fun b!1185456 () Bool)

(declare-fun e!761497 () Bool)

(assert (=> b!1185456 (= e!761496 e!761497)))

(declare-fun res!535885 () Bool)

(assert (=> b!1185456 (=> (not res!535885) (not e!761497))))

(assert (=> b!1185456 (= res!535885 (dynLambda!5290 lambda!48815 (h!17274 (t!111733 lt!407601))))))

(declare-fun b!1185457 () Bool)

(assert (=> b!1185457 (= e!761497 (forall!3142 (t!111733 (t!111733 lt!407601)) lambda!48815))))

(assert (= (and d!339286 (not res!535884)) b!1185456))

(assert (= (and b!1185456 res!535885) b!1185457))

(declare-fun b_lambda!35531 () Bool)

(assert (=> (not b_lambda!35531) (not b!1185456)))

(declare-fun m!1361963 () Bool)

(assert (=> b!1185456 m!1361963))

(declare-fun m!1361965 () Bool)

(assert (=> b!1185457 m!1361965))

(assert (=> b!1184767 d!339286))

(declare-fun bs!287562 () Bool)

(declare-fun d!339290 () Bool)

(assert (= bs!287562 (and d!339290 d!339100)))

(declare-fun lambda!48884 () Int)

(assert (=> bs!287562 (= lambda!48884 lambda!48871)))

(declare-fun bs!287563 () Bool)

(assert (= bs!287563 (and d!339290 d!338760)))

(assert (=> bs!287563 (= lambda!48884 lambda!48835)))

(declare-fun bs!287564 () Bool)

(assert (= bs!287564 (and d!339290 d!338816)))

(assert (=> bs!287564 (= lambda!48884 lambda!48839)))

(declare-fun bs!287565 () Bool)

(assert (= bs!287565 (and d!339290 d!338794)))

(assert (=> bs!287565 (= lambda!48884 lambda!48837)))

(declare-fun bs!287566 () Bool)

(assert (= bs!287566 (and d!339290 d!339014)))

(assert (=> bs!287566 (= lambda!48884 lambda!48854)))

(declare-fun bs!287567 () Bool)

(assert (= bs!287567 (and d!339290 d!339062)))

(assert (=> bs!287567 (= lambda!48884 lambda!48861)))

(declare-fun bs!287568 () Bool)

(assert (= bs!287568 (and d!339290 d!339088)))

(assert (=> bs!287568 (= lambda!48884 lambda!48863)))

(declare-fun bs!287569 () Bool)

(assert (= bs!287569 (and d!339290 d!339090)))

(assert (=> bs!287569 (= (= thiss!27592 Lexer!1768) (= lambda!48884 lambda!48870))))

(declare-fun bs!287570 () Bool)

(assert (= bs!287570 (and d!339290 b!1184924)))

(assert (=> bs!287570 (= (= thiss!27592 Lexer!1768) (= lambda!48884 lambda!48847))))

(declare-fun bs!287571 () Bool)

(assert (= bs!287571 (and d!339290 d!338792)))

(assert (=> bs!287571 (= lambda!48884 lambda!48836)))

(declare-fun bs!287572 () Bool)

(assert (= bs!287572 (and d!339290 d!338832)))

(assert (=> bs!287572 (= lambda!48884 lambda!48843)))

(declare-fun bs!287573 () Bool)

(assert (= bs!287573 (and d!339290 d!338748)))

(assert (=> bs!287573 (= lambda!48884 lambda!48826)))

(declare-fun bs!287574 () Bool)

(assert (= bs!287574 (and d!339290 d!338804)))

(assert (=> bs!287574 (= lambda!48884 lambda!48838)))

(declare-fun bs!287575 () Bool)

(assert (= bs!287575 (and d!339290 d!339222)))

(assert (=> bs!287575 (= lambda!48884 lambda!48878)))

(declare-fun bs!287576 () Bool)

(assert (= bs!287576 (and d!339290 b!1184544)))

(assert (=> bs!287576 (= (= thiss!27592 Lexer!1768) (= lambda!48884 lambda!48815))))

(declare-fun b!1185462 () Bool)

(declare-fun e!761502 () Bool)

(assert (=> b!1185462 (= e!761502 true)))

(declare-fun b!1185461 () Bool)

(declare-fun e!761501 () Bool)

(assert (=> b!1185461 (= e!761501 e!761502)))

(declare-fun b!1185460 () Bool)

(declare-fun e!761500 () Bool)

(assert (=> b!1185460 (= e!761500 e!761501)))

(assert (=> d!339290 e!761500))

(assert (= b!1185461 b!1185462))

(assert (= b!1185460 b!1185461))

(assert (= (and d!339290 ((_ is Cons!11872) rules!4386)) b!1185460))

(assert (=> b!1185462 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48884))))

(assert (=> b!1185462 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 rules!4386)))) (dynLambda!5285 order!7367 lambda!48884))))

(assert (=> d!339290 true))

(declare-fun lt!408041 () Bool)

(assert (=> d!339290 (= lt!408041 (forall!3142 (t!111733 (t!111733 lt!407598)) lambda!48884))))

(declare-fun e!761499 () Bool)

(assert (=> d!339290 (= lt!408041 e!761499)))

(declare-fun res!535886 () Bool)

(assert (=> d!339290 (=> res!535886 e!761499)))

(assert (=> d!339290 (= res!535886 (not ((_ is Cons!11873) (t!111733 (t!111733 lt!407598)))))))

(assert (=> d!339290 (not (isEmpty!7144 rules!4386))))

(assert (=> d!339290 (= (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 lt!407598))) lt!408041)))

(declare-fun b!1185458 () Bool)

(declare-fun e!761498 () Bool)

(assert (=> b!1185458 (= e!761499 e!761498)))

(declare-fun res!535887 () Bool)

(assert (=> b!1185458 (=> (not res!535887) (not e!761498))))

(assert (=> b!1185458 (= res!535887 (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 (t!111733 lt!407598)))))))

(declare-fun b!1185459 () Bool)

(assert (=> b!1185459 (= e!761498 (rulesProduceEachTokenIndividuallyList!636 thiss!27592 rules!4386 (t!111733 (t!111733 (t!111733 lt!407598)))))))

(assert (= (and d!339290 (not res!535886)) b!1185458))

(assert (= (and b!1185458 res!535887) b!1185459))

(declare-fun m!1361967 () Bool)

(assert (=> d!339290 m!1361967))

(assert (=> d!339290 m!1360343))

(declare-fun m!1361969 () Bool)

(assert (=> b!1185458 m!1361969))

(declare-fun m!1361971 () Bool)

(assert (=> b!1185459 m!1361971))

(assert (=> b!1184633 d!339290))

(declare-fun d!339292 () Bool)

(declare-fun e!761506 () Bool)

(assert (=> d!339292 e!761506))

(declare-fun res!535888 () Bool)

(assert (=> d!339292 (=> (not res!535888) (not e!761506))))

(declare-fun lt!408044 () List!11897)

(assert (=> d!339292 (= res!535888 (= ((_ map implies) (content!1642 lt!408044) (content!1642 (t!111733 (t!111733 l!6534)))) ((as const (InoxSet Token!3812)) true)))))

(declare-fun e!761507 () List!11897)

(assert (=> d!339292 (= lt!408044 e!761507)))

(declare-fun c!197125 () Bool)

(assert (=> d!339292 (= c!197125 ((_ is Nil!11873) (t!111733 (t!111733 l!6534))))))

(assert (=> d!339292 (= (drop!553 (t!111733 (t!111733 l!6534)) (- (- i!1621 1) 1)) lt!408044)))

(declare-fun b!1185463 () Bool)

(declare-fun e!761503 () Int)

(declare-fun call!82622 () Int)

(assert (=> b!1185463 (= e!761503 (- call!82622 (- (- i!1621 1) 1)))))

(declare-fun bm!82617 () Bool)

(assert (=> bm!82617 (= call!82622 (size!9363 (t!111733 (t!111733 l!6534))))))

(declare-fun b!1185464 () Bool)

(declare-fun e!761504 () List!11897)

(assert (=> b!1185464 (= e!761504 (t!111733 (t!111733 l!6534)))))

(declare-fun b!1185465 () Bool)

(declare-fun e!761505 () Int)

(assert (=> b!1185465 (= e!761505 call!82622)))

(declare-fun b!1185466 () Bool)

(assert (=> b!1185466 (= e!761503 0)))

(declare-fun b!1185467 () Bool)

(assert (=> b!1185467 (= e!761507 e!761504)))

(declare-fun c!197126 () Bool)

(assert (=> b!1185467 (= c!197126 (<= (- (- i!1621 1) 1) 0))))

(declare-fun b!1185468 () Bool)

(assert (=> b!1185468 (= e!761507 Nil!11873)))

(declare-fun b!1185469 () Bool)

(assert (=> b!1185469 (= e!761504 (drop!553 (t!111733 (t!111733 (t!111733 l!6534))) (- (- (- i!1621 1) 1) 1)))))

(declare-fun b!1185470 () Bool)

(assert (=> b!1185470 (= e!761505 e!761503)))

(declare-fun c!197127 () Bool)

(assert (=> b!1185470 (= c!197127 (>= (- (- i!1621 1) 1) call!82622))))

(declare-fun b!1185471 () Bool)

(assert (=> b!1185471 (= e!761506 (= (size!9363 lt!408044) e!761505))))

(declare-fun c!197124 () Bool)

(assert (=> b!1185471 (= c!197124 (<= (- (- i!1621 1) 1) 0))))

(assert (= (and d!339292 c!197125) b!1185468))

(assert (= (and d!339292 (not c!197125)) b!1185467))

(assert (= (and b!1185467 c!197126) b!1185464))

(assert (= (and b!1185467 (not c!197126)) b!1185469))

(assert (= (and d!339292 res!535888) b!1185471))

(assert (= (and b!1185471 c!197124) b!1185465))

(assert (= (and b!1185471 (not c!197124)) b!1185470))

(assert (= (and b!1185470 c!197127) b!1185466))

(assert (= (and b!1185470 (not c!197127)) b!1185463))

(assert (= (or b!1185465 b!1185470 b!1185463) bm!82617))

(declare-fun m!1361973 () Bool)

(assert (=> d!339292 m!1361973))

(assert (=> d!339292 m!1361469))

(assert (=> bm!82617 m!1360983))

(declare-fun m!1361977 () Bool)

(assert (=> b!1185469 m!1361977))

(declare-fun m!1361979 () Bool)

(assert (=> b!1185471 m!1361979))

(assert (=> b!1184962 d!339292))

(declare-fun b!1185476 () Bool)

(declare-fun e!761510 () Bool)

(assert (=> b!1185476 (= e!761510 true)))

(declare-fun b!1185475 () Bool)

(declare-fun e!761509 () Bool)

(assert (=> b!1185475 (= e!761509 e!761510)))

(declare-fun b!1185474 () Bool)

(declare-fun e!761508 () Bool)

(assert (=> b!1185474 (= e!761508 e!761509)))

(assert (=> b!1184795 e!761508))

(assert (= b!1185475 b!1185476))

(assert (= b!1185474 b!1185475))

(assert (= (and b!1184795 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185474))

(assert (=> b!1185476 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48843))))

(assert (=> b!1185476 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48843))))

(declare-fun b!1185481 () Bool)

(declare-fun e!761515 () Bool)

(assert (=> b!1185481 (= e!761515 true)))

(declare-fun b!1185480 () Bool)

(declare-fun e!761514 () Bool)

(assert (=> b!1185480 (= e!761514 e!761515)))

(declare-fun b!1185479 () Bool)

(declare-fun e!761513 () Bool)

(assert (=> b!1185479 (= e!761513 e!761514)))

(assert (=> b!1184979 e!761513))

(assert (= b!1185480 b!1185481))

(assert (= b!1185479 b!1185480))

(assert (= (and b!1184979 ((_ is Cons!11872) (t!111732 (t!111732 rules!4386)))) b!1185479))

(assert (=> b!1185481 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386)))))) (dynLambda!5285 order!7367 lambda!48815))))

(assert (=> b!1185481 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386)))))) (dynLambda!5285 order!7367 lambda!48815))))

(declare-fun b!1185484 () Bool)

(declare-fun e!761516 () Bool)

(declare-fun tp!337817 () Bool)

(assert (=> b!1185484 (= e!761516 tp!337817)))

(declare-fun b!1185483 () Bool)

(declare-fun tp!337816 () Bool)

(declare-fun tp!337818 () Bool)

(assert (=> b!1185483 (= e!761516 (and tp!337816 tp!337818))))

(assert (=> b!1185015 (= tp!337808 e!761516)))

(declare-fun b!1185482 () Bool)

(assert (=> b!1185482 (= e!761516 tp_is_empty!5823)))

(declare-fun b!1185485 () Bool)

(declare-fun tp!337819 () Bool)

(declare-fun tp!337815 () Bool)

(assert (=> b!1185485 (= e!761516 (and tp!337819 tp!337815))))

(assert (= (and b!1185015 ((_ is ElementMatch!3345) (regOne!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185482))

(assert (= (and b!1185015 ((_ is Concat!5487) (regOne!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185483))

(assert (= (and b!1185015 ((_ is Star!3345) (regOne!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185484))

(assert (= (and b!1185015 ((_ is Union!3345) (regOne!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185485))

(declare-fun b!1185488 () Bool)

(declare-fun e!761517 () Bool)

(declare-fun tp!337822 () Bool)

(assert (=> b!1185488 (= e!761517 tp!337822)))

(declare-fun b!1185487 () Bool)

(declare-fun tp!337821 () Bool)

(declare-fun tp!337823 () Bool)

(assert (=> b!1185487 (= e!761517 (and tp!337821 tp!337823))))

(assert (=> b!1185015 (= tp!337804 e!761517)))

(declare-fun b!1185486 () Bool)

(assert (=> b!1185486 (= e!761517 tp_is_empty!5823)))

(declare-fun b!1185489 () Bool)

(declare-fun tp!337824 () Bool)

(declare-fun tp!337820 () Bool)

(assert (=> b!1185489 (= e!761517 (and tp!337824 tp!337820))))

(assert (= (and b!1185015 ((_ is ElementMatch!3345) (regTwo!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185486))

(assert (= (and b!1185015 ((_ is Concat!5487) (regTwo!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185487))

(assert (= (and b!1185015 ((_ is Star!3345) (regTwo!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185488))

(assert (= (and b!1185015 ((_ is Union!3345) (regTwo!7203 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185489))

(declare-fun b!1185496 () Bool)

(declare-fun e!761522 () Bool)

(declare-fun tp!337827 () Bool)

(assert (=> b!1185496 (= e!761522 tp!337827)))

(declare-fun b!1185495 () Bool)

(declare-fun tp!337826 () Bool)

(declare-fun tp!337828 () Bool)

(assert (=> b!1185495 (= e!761522 (and tp!337826 tp!337828))))

(assert (=> b!1184995 (= tp!337788 e!761522)))

(declare-fun b!1185494 () Bool)

(assert (=> b!1185494 (= e!761522 tp_is_empty!5823)))

(declare-fun b!1185497 () Bool)

(declare-fun tp!337829 () Bool)

(declare-fun tp!337825 () Bool)

(assert (=> b!1185497 (= e!761522 (and tp!337829 tp!337825))))

(assert (= (and b!1184995 ((_ is ElementMatch!3345) (regOne!7203 (regex!2075 (h!17273 rules!4386))))) b!1185494))

(assert (= (and b!1184995 ((_ is Concat!5487) (regOne!7203 (regex!2075 (h!17273 rules!4386))))) b!1185495))

(assert (= (and b!1184995 ((_ is Star!3345) (regOne!7203 (regex!2075 (h!17273 rules!4386))))) b!1185496))

(assert (= (and b!1184995 ((_ is Union!3345) (regOne!7203 (regex!2075 (h!17273 rules!4386))))) b!1185497))

(declare-fun b!1185500 () Bool)

(declare-fun e!761523 () Bool)

(declare-fun tp!337832 () Bool)

(assert (=> b!1185500 (= e!761523 tp!337832)))

(declare-fun b!1185499 () Bool)

(declare-fun tp!337831 () Bool)

(declare-fun tp!337833 () Bool)

(assert (=> b!1185499 (= e!761523 (and tp!337831 tp!337833))))

(assert (=> b!1184995 (= tp!337784 e!761523)))

(declare-fun b!1185498 () Bool)

(assert (=> b!1185498 (= e!761523 tp_is_empty!5823)))

(declare-fun b!1185501 () Bool)

(declare-fun tp!337834 () Bool)

(declare-fun tp!337830 () Bool)

(assert (=> b!1185501 (= e!761523 (and tp!337834 tp!337830))))

(assert (= (and b!1184995 ((_ is ElementMatch!3345) (regTwo!7203 (regex!2075 (h!17273 rules!4386))))) b!1185498))

(assert (= (and b!1184995 ((_ is Concat!5487) (regTwo!7203 (regex!2075 (h!17273 rules!4386))))) b!1185499))

(assert (= (and b!1184995 ((_ is Star!3345) (regTwo!7203 (regex!2075 (h!17273 rules!4386))))) b!1185500))

(assert (= (and b!1184995 ((_ is Union!3345) (regTwo!7203 (regex!2075 (h!17273 rules!4386))))) b!1185501))

(declare-fun b!1185504 () Bool)

(declare-fun e!761524 () Bool)

(declare-fun tp!337837 () Bool)

(assert (=> b!1185504 (= e!761524 tp!337837)))

(declare-fun b!1185503 () Bool)

(declare-fun tp!337836 () Bool)

(declare-fun tp!337838 () Bool)

(assert (=> b!1185503 (= e!761524 (and tp!337836 tp!337838))))

(assert (=> b!1185010 (= tp!337802 e!761524)))

(declare-fun b!1185502 () Bool)

(assert (=> b!1185502 (= e!761524 tp_is_empty!5823)))

(declare-fun b!1185505 () Bool)

(declare-fun tp!337839 () Bool)

(declare-fun tp!337835 () Bool)

(assert (=> b!1185505 (= e!761524 (and tp!337839 tp!337835))))

(assert (= (and b!1185010 ((_ is ElementMatch!3345) (regex!2075 (h!17273 (t!111732 rules!4386))))) b!1185502))

(assert (= (and b!1185010 ((_ is Concat!5487) (regex!2075 (h!17273 (t!111732 rules!4386))))) b!1185503))

(assert (= (and b!1185010 ((_ is Star!3345) (regex!2075 (h!17273 (t!111732 rules!4386))))) b!1185504))

(assert (= (and b!1185010 ((_ is Union!3345) (regex!2075 (h!17273 (t!111732 rules!4386))))) b!1185505))

(declare-fun b!1185508 () Bool)

(declare-fun b_free!28437 () Bool)

(declare-fun b_next!29141 () Bool)

(assert (=> b!1185508 (= b_free!28437 (not b_next!29141))))

(declare-fun tp!337841 () Bool)

(declare-fun b_and!81557 () Bool)

(assert (=> b!1185508 (= tp!337841 b_and!81557)))

(declare-fun b_free!28439 () Bool)

(declare-fun b_next!29143 () Bool)

(assert (=> b!1185508 (= b_free!28439 (not b_next!29143))))

(declare-fun tb!66285 () Bool)

(declare-fun t!111827 () Bool)

(assert (=> (and b!1185508 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111827) tb!66285))

(declare-fun result!79586 () Bool)

(assert (= result!79586 result!79554))

(assert (=> d!339006 t!111827))

(declare-fun t!111829 () Bool)

(declare-fun tb!66287 () Bool)

(assert (=> (and b!1185508 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111829) tb!66287))

(declare-fun result!79588 () Bool)

(assert (= result!79588 result!79538))

(assert (=> d!338918 t!111829))

(assert (=> b!1185200 t!111827))

(declare-fun tb!66289 () Bool)

(declare-fun t!111831 () Bool)

(assert (=> (and b!1185508 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111831) tb!66289))

(declare-fun result!79590 () Bool)

(assert (= result!79590 result!79578))

(assert (=> d!339240 t!111831))

(declare-fun tb!66291 () Bool)

(declare-fun t!111833 () Bool)

(assert (=> (and b!1185508 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111833) tb!66291))

(declare-fun result!79592 () Bool)

(assert (= result!79592 result!79508))

(assert (=> b!1184613 t!111833))

(declare-fun tp!337843 () Bool)

(declare-fun b_and!81559 () Bool)

(assert (=> b!1185508 (= tp!337843 (and (=> t!111833 result!79592) (=> t!111829 result!79588) (=> t!111827 result!79586) (=> t!111831 result!79590) b_and!81559))))

(declare-fun e!761525 () Bool)

(assert (=> b!1185508 (= e!761525 (and tp!337841 tp!337843))))

(declare-fun b!1185507 () Bool)

(declare-fun tp!337842 () Bool)

(declare-fun e!761528 () Bool)

(assert (=> b!1185507 (= e!761528 (and tp!337842 (inv!15690 (tag!2337 (h!17273 (t!111732 (t!111732 rules!4386))))) (inv!15693 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) e!761525))))

(declare-fun b!1185506 () Bool)

(declare-fun e!761527 () Bool)

(declare-fun tp!337840 () Bool)

(assert (=> b!1185506 (= e!761527 (and e!761528 tp!337840))))

(assert (=> b!1185009 (= tp!337800 e!761527)))

(assert (= b!1185507 b!1185508))

(assert (= b!1185506 b!1185507))

(assert (= (and b!1185009 ((_ is Cons!11872) (t!111732 (t!111732 rules!4386)))) b!1185506))

(declare-fun m!1361993 () Bool)

(assert (=> b!1185507 m!1361993))

(declare-fun m!1361995 () Bool)

(assert (=> b!1185507 m!1361995))

(declare-fun b!1185523 () Bool)

(declare-fun e!761542 () Bool)

(assert (=> b!1185523 (= e!761542 true)))

(declare-fun b!1185522 () Bool)

(declare-fun e!761541 () Bool)

(assert (=> b!1185522 (= e!761541 e!761542)))

(declare-fun b!1185521 () Bool)

(declare-fun e!761540 () Bool)

(assert (=> b!1185521 (= e!761540 e!761541)))

(assert (=> b!1184745 e!761540))

(assert (= b!1185522 b!1185523))

(assert (= b!1185521 b!1185522))

(assert (= (and b!1184745 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185521))

(assert (=> b!1185523 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48838))))

(assert (=> b!1185523 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48838))))

(declare-fun e!761551 () Bool)

(declare-fun tp!337867 () Bool)

(declare-fun b!1185539 () Bool)

(declare-fun tp!337868 () Bool)

(assert (=> b!1185539 (= e!761551 (and (inv!15697 (left!10339 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))) tp!337867 (inv!15697 (right!10669 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))) tp!337868))))

(declare-fun b!1185541 () Bool)

(declare-fun e!761552 () Bool)

(declare-fun tp!337866 () Bool)

(assert (=> b!1185541 (= e!761552 tp!337866)))

(declare-fun b!1185540 () Bool)

(declare-fun inv!15703 (IArray!7781) Bool)

(assert (=> b!1185540 (= e!761551 (and (inv!15703 (xs!6593 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))) e!761552))))

(assert (=> b!1184619 (= tp!337708 (and (inv!15697 (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534))))) e!761551))))

(assert (= (and b!1184619 ((_ is Node!3888) (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))) b!1185539))

(assert (= b!1185540 b!1185541))

(assert (= (and b!1184619 ((_ is Leaf!5956) (c!197023 (dynLambda!5289 (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (value!67194 (h!17274 l!6534)))))) b!1185540))

(declare-fun m!1362005 () Bool)

(assert (=> b!1185539 m!1362005))

(declare-fun m!1362007 () Bool)

(assert (=> b!1185539 m!1362007))

(declare-fun m!1362009 () Bool)

(assert (=> b!1185540 m!1362009))

(assert (=> b!1184619 m!1360409))

(declare-fun b!1185552 () Bool)

(declare-fun e!761557 () Bool)

(assert (=> b!1185552 (= e!761557 true)))

(declare-fun b!1185551 () Bool)

(declare-fun e!761556 () Bool)

(assert (=> b!1185551 (= e!761556 e!761557)))

(declare-fun b!1185550 () Bool)

(declare-fun e!761555 () Bool)

(assert (=> b!1185550 (= e!761555 e!761556)))

(assert (=> b!1184757 e!761555))

(assert (= b!1185551 b!1185552))

(assert (= b!1185550 b!1185551))

(assert (= (and b!1184757 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185550))

(assert (=> b!1185552 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48839))))

(assert (=> b!1185552 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48839))))

(declare-fun b!1185558 () Bool)

(declare-fun e!761563 () Bool)

(assert (=> b!1185558 (= e!761563 true)))

(declare-fun b!1185557 () Bool)

(declare-fun e!761562 () Bool)

(assert (=> b!1185557 (= e!761562 e!761563)))

(declare-fun b!1185556 () Bool)

(declare-fun e!761561 () Bool)

(assert (=> b!1185556 (= e!761561 e!761562)))

(assert (=> b!1184718 e!761561))

(assert (= b!1185557 b!1185558))

(assert (= b!1185556 b!1185557))

(assert (= (and b!1184718 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185556))

(assert (=> b!1185558 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48836))))

(assert (=> b!1185558 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48836))))

(declare-fun b!1185563 () Bool)

(declare-fun e!761565 () Bool)

(declare-fun tp!337884 () Bool)

(assert (=> b!1185563 (= e!761565 (and tp_is_empty!5823 tp!337884))))

(assert (=> b!1185000 (= tp!337791 e!761565)))

(assert (= (and b!1185000 ((_ is Cons!11870) (t!111730 (originalCharacters!2629 (h!17274 l!6534))))) b!1185563))

(declare-fun b!1185566 () Bool)

(declare-fun e!761568 () Bool)

(assert (=> b!1185566 (= e!761568 true)))

(declare-fun b!1185565 () Bool)

(declare-fun e!761567 () Bool)

(assert (=> b!1185565 (= e!761567 e!761568)))

(declare-fun b!1185564 () Bool)

(declare-fun e!761566 () Bool)

(assert (=> b!1185564 (= e!761566 e!761567)))

(assert (=> b!1184926 e!761566))

(assert (= b!1185565 b!1185566))

(assert (= b!1185564 b!1185565))

(assert (= (and b!1184926 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185564))

(assert (=> b!1185566 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48847))))

(assert (=> b!1185566 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48847))))

(declare-fun b!1185573 () Bool)

(declare-fun e!761570 () Bool)

(declare-fun tp!337892 () Bool)

(assert (=> b!1185573 (= e!761570 tp!337892)))

(declare-fun b!1185572 () Bool)

(declare-fun tp!337891 () Bool)

(declare-fun tp!337893 () Bool)

(assert (=> b!1185572 (= e!761570 (and tp!337891 tp!337893))))

(assert (=> b!1184977 (= tp!337772 e!761570)))

(declare-fun b!1185571 () Bool)

(assert (=> b!1185571 (= e!761570 tp_is_empty!5823)))

(declare-fun b!1185574 () Bool)

(declare-fun tp!337894 () Bool)

(declare-fun tp!337890 () Bool)

(assert (=> b!1185574 (= e!761570 (and tp!337894 tp!337890))))

(assert (= (and b!1184977 ((_ is ElementMatch!3345) (regex!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) b!1185571))

(assert (= (and b!1184977 ((_ is Concat!5487) (regex!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) b!1185572))

(assert (= (and b!1184977 ((_ is Star!3345) (regex!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) b!1185573))

(assert (= (and b!1184977 ((_ is Union!3345) (regex!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) b!1185574))

(declare-fun b!1185580 () Bool)

(declare-fun e!761576 () Bool)

(assert (=> b!1185580 (= e!761576 true)))

(declare-fun b!1185579 () Bool)

(declare-fun e!761575 () Bool)

(assert (=> b!1185579 (= e!761575 e!761576)))

(declare-fun b!1185578 () Bool)

(declare-fun e!761574 () Bool)

(assert (=> b!1185578 (= e!761574 e!761575)))

(assert (=> b!1184723 e!761574))

(assert (= b!1185579 b!1185580))

(assert (= b!1185578 b!1185579))

(assert (= (and b!1184723 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185578))

(assert (=> b!1185580 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48837))))

(assert (=> b!1185580 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48837))))

(declare-fun b!1185584 () Bool)

(declare-fun e!761580 () Bool)

(declare-fun tp!337895 () Bool)

(assert (=> b!1185584 (= e!761580 (and tp_is_empty!5823 tp!337895))))

(assert (=> b!1184976 (= tp!337769 e!761580)))

(assert (= (and b!1184976 ((_ is Cons!11870) (originalCharacters!2629 (h!17274 (t!111733 l!6534))))) b!1185584))

(declare-fun b!1185592 () Bool)

(declare-fun b_free!28445 () Bool)

(declare-fun b_next!29149 () Bool)

(assert (=> b!1185592 (= b_free!28445 (not b_next!29149))))

(declare-fun tp!337902 () Bool)

(declare-fun b_and!81565 () Bool)

(assert (=> b!1185592 (= tp!337902 b_and!81565)))

(declare-fun b_free!28447 () Bool)

(declare-fun b_next!29151 () Bool)

(assert (=> b!1185592 (= b_free!28447 (not b_next!29151))))

(declare-fun t!111843 () Bool)

(declare-fun tb!66301 () Bool)

(assert (=> (and b!1185592 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534)))))) t!111843) tb!66301))

(declare-fun result!79604 () Bool)

(assert (= result!79604 result!79554))

(assert (=> d!339006 t!111843))

(declare-fun t!111845 () Bool)

(declare-fun tb!66303 () Bool)

(assert (=> (and b!1185592 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534))))))) t!111845) tb!66303))

(declare-fun result!79606 () Bool)

(assert (= result!79606 result!79538))

(assert (=> d!338918 t!111845))

(assert (=> b!1185200 t!111843))

(declare-fun t!111849 () Bool)

(declare-fun tb!66307 () Bool)

(assert (=> (and b!1185592 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 lt!407601)))))) t!111849) tb!66307))

(declare-fun result!79610 () Bool)

(assert (= result!79610 result!79578))

(assert (=> d!339240 t!111849))

(declare-fun t!111852 () Bool)

(declare-fun tb!66309 () Bool)

(assert (=> (and b!1185592 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534))))) t!111852) tb!66309))

(declare-fun result!79612 () Bool)

(assert (= result!79612 result!79508))

(assert (=> b!1184613 t!111852))

(declare-fun b_and!81567 () Bool)

(declare-fun tp!337903 () Bool)

(assert (=> b!1185592 (= tp!337903 (and (=> t!111852 result!79612) (=> t!111843 result!79604) (=> t!111849 result!79610) (=> t!111845 result!79606) b_and!81567))))

(declare-fun tp!337905 () Bool)

(declare-fun b!1185589 () Bool)

(declare-fun e!761586 () Bool)

(declare-fun e!761582 () Bool)

(assert (=> b!1185589 (= e!761582 (and (inv!15694 (h!17274 (t!111733 (t!111733 l!6534)))) e!761586 tp!337905))))

(declare-fun e!761587 () Bool)

(declare-fun b!1185590 () Bool)

(declare-fun tp!337901 () Bool)

(assert (=> b!1185590 (= e!761586 (and (inv!21 (value!67194 (h!17274 (t!111733 (t!111733 l!6534))))) e!761587 tp!337901))))

(declare-fun e!761584 () Bool)

(assert (=> b!1185592 (= e!761584 (and tp!337902 tp!337903))))

(declare-fun b!1185591 () Bool)

(declare-fun tp!337904 () Bool)

(assert (=> b!1185591 (= e!761587 (and tp!337904 (inv!15690 (tag!2337 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (inv!15693 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) e!761584))))

(assert (=> b!1184975 (= tp!337773 e!761582)))

(assert (= b!1185591 b!1185592))

(assert (= b!1185590 b!1185591))

(assert (= b!1185589 b!1185590))

(assert (= (and b!1184975 ((_ is Cons!11873) (t!111733 (t!111733 l!6534)))) b!1185589))

(declare-fun m!1362015 () Bool)

(assert (=> b!1185589 m!1362015))

(declare-fun m!1362017 () Bool)

(assert (=> b!1185590 m!1362017))

(declare-fun m!1362019 () Bool)

(assert (=> b!1185591 m!1362019))

(declare-fun m!1362021 () Bool)

(assert (=> b!1185591 m!1362021))

(declare-fun b!1185603 () Bool)

(declare-fun e!761597 () Bool)

(assert (=> b!1185603 (= e!761597 true)))

(declare-fun b!1185602 () Bool)

(declare-fun e!761596 () Bool)

(assert (=> b!1185602 (= e!761596 e!761597)))

(declare-fun b!1185601 () Bool)

(declare-fun e!761595 () Bool)

(assert (=> b!1185601 (= e!761595 e!761596)))

(assert (=> b!1184634 e!761595))

(assert (= b!1185602 b!1185603))

(assert (= b!1185601 b!1185602))

(assert (= (and b!1184634 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185601))

(assert (=> b!1185603 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48826))))

(assert (=> b!1185603 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48826))))

(declare-fun b!1185610 () Bool)

(declare-fun e!761602 () Bool)

(assert (=> b!1185610 (= e!761602 true)))

(declare-fun b!1185609 () Bool)

(declare-fun e!761601 () Bool)

(assert (=> b!1185609 (= e!761601 e!761602)))

(declare-fun b!1185608 () Bool)

(declare-fun e!761600 () Bool)

(assert (=> b!1185608 (= e!761600 e!761601)))

(assert (=> b!1184713 e!761600))

(assert (= b!1185609 b!1185610))

(assert (= b!1185608 b!1185609))

(assert (= (and b!1184713 ((_ is Cons!11872) (t!111732 rules!4386))) b!1185608))

(assert (=> b!1185610 (< (dynLambda!5284 order!7365 (toValue!3188 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48835))))

(assert (=> b!1185610 (< (dynLambda!5286 order!7369 (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386))))) (dynLambda!5285 order!7367 lambda!48835))))

(declare-fun b!1185613 () Bool)

(declare-fun e!761603 () Bool)

(declare-fun tp!337919 () Bool)

(assert (=> b!1185613 (= e!761603 tp!337919)))

(declare-fun b!1185612 () Bool)

(declare-fun tp!337918 () Bool)

(declare-fun tp!337920 () Bool)

(assert (=> b!1185612 (= e!761603 (and tp!337918 tp!337920))))

(assert (=> b!1185014 (= tp!337806 e!761603)))

(declare-fun b!1185611 () Bool)

(assert (=> b!1185611 (= e!761603 tp_is_empty!5823)))

(declare-fun b!1185614 () Bool)

(declare-fun tp!337921 () Bool)

(declare-fun tp!337917 () Bool)

(assert (=> b!1185614 (= e!761603 (and tp!337921 tp!337917))))

(assert (= (and b!1185014 ((_ is ElementMatch!3345) (reg!3674 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185611))

(assert (= (and b!1185014 ((_ is Concat!5487) (reg!3674 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185612))

(assert (= (and b!1185014 ((_ is Star!3345) (reg!3674 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185613))

(assert (= (and b!1185014 ((_ is Union!3345) (reg!3674 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185614))

(declare-fun b!1185617 () Bool)

(declare-fun e!761604 () Bool)

(declare-fun tp!337924 () Bool)

(assert (=> b!1185617 (= e!761604 tp!337924)))

(declare-fun b!1185616 () Bool)

(declare-fun tp!337923 () Bool)

(declare-fun tp!337925 () Bool)

(assert (=> b!1185616 (= e!761604 (and tp!337923 tp!337925))))

(assert (=> b!1184994 (= tp!337786 e!761604)))

(declare-fun b!1185615 () Bool)

(assert (=> b!1185615 (= e!761604 tp_is_empty!5823)))

(declare-fun b!1185618 () Bool)

(declare-fun tp!337926 () Bool)

(declare-fun tp!337922 () Bool)

(assert (=> b!1185618 (= e!761604 (and tp!337926 tp!337922))))

(assert (= (and b!1184994 ((_ is ElementMatch!3345) (reg!3674 (regex!2075 (h!17273 rules!4386))))) b!1185615))

(assert (= (and b!1184994 ((_ is Concat!5487) (reg!3674 (regex!2075 (h!17273 rules!4386))))) b!1185616))

(assert (= (and b!1184994 ((_ is Star!3345) (reg!3674 (regex!2075 (h!17273 rules!4386))))) b!1185617))

(assert (= (and b!1184994 ((_ is Union!3345) (reg!3674 (regex!2075 (h!17273 rules!4386))))) b!1185618))

(declare-fun b!1185621 () Bool)

(declare-fun e!761605 () Bool)

(declare-fun tp!337929 () Bool)

(assert (=> b!1185621 (= e!761605 tp!337929)))

(declare-fun b!1185620 () Bool)

(declare-fun tp!337928 () Bool)

(declare-fun tp!337930 () Bool)

(assert (=> b!1185620 (= e!761605 (and tp!337928 tp!337930))))

(assert (=> b!1185013 (= tp!337805 e!761605)))

(declare-fun b!1185619 () Bool)

(assert (=> b!1185619 (= e!761605 tp_is_empty!5823)))

(declare-fun b!1185622 () Bool)

(declare-fun tp!337931 () Bool)

(declare-fun tp!337927 () Bool)

(assert (=> b!1185622 (= e!761605 (and tp!337931 tp!337927))))

(assert (= (and b!1185013 ((_ is ElementMatch!3345) (regOne!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185619))

(assert (= (and b!1185013 ((_ is Concat!5487) (regOne!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185620))

(assert (= (and b!1185013 ((_ is Star!3345) (regOne!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185621))

(assert (= (and b!1185013 ((_ is Union!3345) (regOne!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185622))

(declare-fun b!1185625 () Bool)

(declare-fun e!761606 () Bool)

(declare-fun tp!337934 () Bool)

(assert (=> b!1185625 (= e!761606 tp!337934)))

(declare-fun b!1185624 () Bool)

(declare-fun tp!337933 () Bool)

(declare-fun tp!337935 () Bool)

(assert (=> b!1185624 (= e!761606 (and tp!337933 tp!337935))))

(assert (=> b!1185013 (= tp!337807 e!761606)))

(declare-fun b!1185623 () Bool)

(assert (=> b!1185623 (= e!761606 tp_is_empty!5823)))

(declare-fun b!1185626 () Bool)

(declare-fun tp!337936 () Bool)

(declare-fun tp!337932 () Bool)

(assert (=> b!1185626 (= e!761606 (and tp!337936 tp!337932))))

(assert (= (and b!1185013 ((_ is ElementMatch!3345) (regTwo!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185623))

(assert (= (and b!1185013 ((_ is Concat!5487) (regTwo!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185624))

(assert (= (and b!1185013 ((_ is Star!3345) (regTwo!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185625))

(assert (= (and b!1185013 ((_ is Union!3345) (regTwo!7202 (regex!2075 (rule!3496 (h!17274 l!6534)))))) b!1185626))

(declare-fun b!1185632 () Bool)

(declare-fun e!761609 () Bool)

(declare-fun tp!337942 () Bool)

(assert (=> b!1185632 (= e!761609 tp!337942)))

(declare-fun b!1185631 () Bool)

(declare-fun tp!337941 () Bool)

(declare-fun tp!337943 () Bool)

(assert (=> b!1185631 (= e!761609 (and tp!337941 tp!337943))))

(assert (=> b!1184993 (= tp!337785 e!761609)))

(declare-fun b!1185630 () Bool)

(assert (=> b!1185630 (= e!761609 tp_is_empty!5823)))

(declare-fun b!1185633 () Bool)

(declare-fun tp!337944 () Bool)

(declare-fun tp!337940 () Bool)

(assert (=> b!1185633 (= e!761609 (and tp!337944 tp!337940))))

(assert (= (and b!1184993 ((_ is ElementMatch!3345) (regOne!7202 (regex!2075 (h!17273 rules!4386))))) b!1185630))

(assert (= (and b!1184993 ((_ is Concat!5487) (regOne!7202 (regex!2075 (h!17273 rules!4386))))) b!1185631))

(assert (= (and b!1184993 ((_ is Star!3345) (regOne!7202 (regex!2075 (h!17273 rules!4386))))) b!1185632))

(assert (= (and b!1184993 ((_ is Union!3345) (regOne!7202 (regex!2075 (h!17273 rules!4386))))) b!1185633))

(declare-fun b!1185636 () Bool)

(declare-fun e!761610 () Bool)

(declare-fun tp!337947 () Bool)

(assert (=> b!1185636 (= e!761610 tp!337947)))

(declare-fun b!1185635 () Bool)

(declare-fun tp!337946 () Bool)

(declare-fun tp!337948 () Bool)

(assert (=> b!1185635 (= e!761610 (and tp!337946 tp!337948))))

(assert (=> b!1184993 (= tp!337787 e!761610)))

(declare-fun b!1185634 () Bool)

(assert (=> b!1185634 (= e!761610 tp_is_empty!5823)))

(declare-fun b!1185637 () Bool)

(declare-fun tp!337949 () Bool)

(declare-fun tp!337945 () Bool)

(assert (=> b!1185637 (= e!761610 (and tp!337949 tp!337945))))

(assert (= (and b!1184993 ((_ is ElementMatch!3345) (regTwo!7202 (regex!2075 (h!17273 rules!4386))))) b!1185634))

(assert (= (and b!1184993 ((_ is Concat!5487) (regTwo!7202 (regex!2075 (h!17273 rules!4386))))) b!1185635))

(assert (= (and b!1184993 ((_ is Star!3345) (regTwo!7202 (regex!2075 (h!17273 rules!4386))))) b!1185636))

(assert (= (and b!1184993 ((_ is Union!3345) (regTwo!7202 (regex!2075 (h!17273 rules!4386))))) b!1185637))

(declare-fun b_lambda!35535 () Bool)

(assert (= b_lambda!35525 (or d!338804 b_lambda!35535)))

(declare-fun bs!287580 () Bool)

(declare-fun d!339302 () Bool)

(assert (= bs!287580 (and d!339302 d!338804)))

(assert (=> bs!287580 (= (dynLambda!5290 lambda!48838 (h!17274 (t!111733 lt!407601))) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407601))))))

(assert (=> bs!287580 m!1360429))

(assert (=> b!1185446 d!339302))

(declare-fun b_lambda!35537 () Bool)

(assert (= b_lambda!35473 (or d!338794 b_lambda!35537)))

(declare-fun bs!287581 () Bool)

(declare-fun d!339304 () Bool)

(assert (= bs!287581 (and d!339304 d!338794)))

(assert (=> bs!287581 (= (dynLambda!5290 lambda!48837 (h!17274 (t!111733 l!6534))) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 l!6534))))))

(assert (=> bs!287581 m!1360393))

(assert (=> b!1185037 d!339304))

(declare-fun b_lambda!35539 () Bool)

(assert (= b_lambda!35523 (or d!338832 b_lambda!35539)))

(declare-fun bs!287582 () Bool)

(declare-fun d!339306 () Bool)

(assert (= bs!287582 (and d!339306 d!338832)))

(assert (=> bs!287582 (= (dynLambda!5290 lambda!48843 (h!17274 lt!407601)) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407601)))))

(assert (=> bs!287582 m!1360309))

(assert (=> b!1185438 d!339306))

(declare-fun b_lambda!35541 () Bool)

(assert (= b_lambda!35477 (or b!1184544 b_lambda!35541)))

(declare-fun bs!287583 () Bool)

(declare-fun d!339308 () Bool)

(assert (= bs!287583 (and d!339308 b!1184544)))

(assert (=> bs!287583 (= (dynLambda!5290 lambda!48815 (h!17274 l!6534)) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 l!6534)))))

(declare-fun m!1362029 () Bool)

(assert (=> bs!287583 m!1362029))

(assert (=> b!1185092 d!339308))

(declare-fun b_lambda!35543 () Bool)

(assert (= b_lambda!35483 (or d!338792 b_lambda!35543)))

(declare-fun bs!287584 () Bool)

(declare-fun d!339310 () Bool)

(assert (= bs!287584 (and d!339310 d!338792)))

(assert (=> bs!287584 (= (dynLambda!5290 lambda!48836 (h!17274 l!6534)) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 l!6534)))))

(assert (=> bs!287584 m!1360537))

(assert (=> b!1185126 d!339310))

(declare-fun b_lambda!35545 () Bool)

(assert (= b_lambda!35527 (or d!338748 b_lambda!35545)))

(declare-fun bs!287585 () Bool)

(declare-fun d!339312 () Bool)

(assert (= bs!287585 (and d!339312 d!338748)))

(assert (=> bs!287585 (= (dynLambda!5290 lambda!48826 (h!17274 (t!111733 lt!407598))) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (t!111733 lt!407598))))))

(assert (=> bs!287585 m!1360447))

(assert (=> b!1185448 d!339312))

(declare-fun b_lambda!35547 () Bool)

(assert (= b_lambda!35495 (or d!338760 b_lambda!35547)))

(declare-fun bs!287586 () Bool)

(declare-fun d!339314 () Bool)

(assert (= bs!287586 (and d!339314 d!338760)))

(assert (=> bs!287586 (= (dynLambda!5290 lambda!48835 (h!17274 (list!4362 (seqFromList!1536 lt!407598)))) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 (list!4362 (seqFromList!1536 lt!407598)))))))

(assert (=> bs!287586 m!1361537))

(assert (=> b!1185189 d!339314))

(declare-fun b_lambda!35549 () Bool)

(assert (= b_lambda!35497 (or (and b!1185508 b_free!28439 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1185011 b_free!28435 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184553 b_free!28419 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184978 b_free!28431) (and b!1185592 b_free!28447 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184549 b_free!28415 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) b_lambda!35549)))

(declare-fun b_lambda!35551 () Bool)

(assert (= b_lambda!35479 (or b!1184924 b_lambda!35551)))

(declare-fun bs!287587 () Bool)

(declare-fun d!339316 () Bool)

(assert (= bs!287587 (and d!339316 b!1184924)))

(assert (=> bs!287587 (= (dynLambda!5290 lambda!48847 (h!17274 (t!111733 l!6534))) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 (t!111733 l!6534))))))

(declare-fun m!1362031 () Bool)

(assert (=> bs!287587 m!1362031))

(assert (=> b!1185122 d!339316))

(declare-fun b_lambda!35553 () Bool)

(assert (= b_lambda!35507 (or b!1184544 b_lambda!35553)))

(declare-fun bs!287588 () Bool)

(declare-fun d!339318 () Bool)

(assert (= bs!287588 (and d!339318 b!1184544)))

(assert (=> bs!287588 (= (dynLambda!5290 lambda!48815 (h!17274 (t!111733 l!6534))) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 (t!111733 l!6534))))))

(assert (=> bs!287588 m!1362031))

(assert (=> b!1185301 d!339318))

(declare-fun b_lambda!35555 () Bool)

(assert (= b_lambda!35501 (or d!338816 b_lambda!35555)))

(declare-fun bs!287589 () Bool)

(declare-fun d!339320 () Bool)

(assert (= bs!287589 (and d!339320 d!338816)))

(assert (=> bs!287589 (= (dynLambda!5290 lambda!48839 (h!17274 lt!407598)) (rulesProduceIndividualToken!799 thiss!27592 rules!4386 (h!17274 lt!407598)))))

(assert (=> bs!287589 m!1360287))

(assert (=> b!1185256 d!339320))

(declare-fun b_lambda!35557 () Bool)

(assert (= b_lambda!35509 (or b!1184544 b_lambda!35557)))

(declare-fun bs!287590 () Bool)

(declare-fun d!339322 () Bool)

(assert (= bs!287590 (and d!339322 b!1184544)))

(assert (=> bs!287590 (= (dynLambda!5290 lambda!48815 (h!17274 (t!111733 lt!407598))) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 (t!111733 lt!407598))))))

(declare-fun m!1362033 () Bool)

(assert (=> bs!287590 m!1362033))

(assert (=> b!1185312 d!339322))

(declare-fun b_lambda!35559 () Bool)

(assert (= b_lambda!35481 (or b!1184924 b_lambda!35559)))

(declare-fun bs!287591 () Bool)

(declare-fun d!339324 () Bool)

(assert (= bs!287591 (and d!339324 b!1184924)))

(assert (=> bs!287591 (= (dynLambda!5290 lambda!48847 (h!17274 lt!407769)) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 lt!407769)))))

(declare-fun m!1362035 () Bool)

(assert (=> bs!287591 m!1362035))

(assert (=> b!1185124 d!339324))

(declare-fun b_lambda!35561 () Bool)

(assert (= b_lambda!35475 (or (and b!1184549 b_free!28415 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))))) (and b!1185592 b_free!28447) (and b!1185508 b_free!28439 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))))) (and b!1185011 b_free!28435 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))))) (and b!1184978 b_free!28431 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))))) (and b!1184553 b_free!28419 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))))) b_lambda!35561)))

(declare-fun b_lambda!35563 () Bool)

(assert (= b_lambda!35531 (or b!1184544 b_lambda!35563)))

(declare-fun bs!287592 () Bool)

(declare-fun d!339326 () Bool)

(assert (= bs!287592 (and d!339326 b!1184544)))

(assert (=> bs!287592 (= (dynLambda!5290 lambda!48815 (h!17274 (t!111733 lt!407601))) (rulesProduceIndividualToken!799 Lexer!1768 rules!4386 (h!17274 (t!111733 lt!407601))))))

(declare-fun m!1362037 () Bool)

(assert (=> bs!287592 m!1362037))

(assert (=> b!1185456 d!339326))

(declare-fun b_lambda!35565 () Bool)

(assert (= b_lambda!35491 (or (and b!1185508 b_free!28439 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 (t!111732 rules!4386))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1185011 b_free!28435 (= (toChars!3047 (transformation!2075 (h!17273 (t!111732 rules!4386)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184553 b_free!28419 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 l!6534)))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184978 b_free!28431) (and b!1185592 b_free!28447 (= (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 (t!111733 l!6534)))))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) (and b!1184549 b_free!28415 (= (toChars!3047 (transformation!2075 (h!17273 rules!4386))) (toChars!3047 (transformation!2075 (rule!3496 (h!17274 (t!111733 l!6534))))))) b_lambda!35565)))

(check-sat (not b!1185624) (not d!338922) (not d!339100) (not b_lambda!35549) (not b!1185267) (not b!1185393) (not d!339010) (not b!1185626) (not b!1185620) (not b!1185164) (not d!338962) (not b!1185633) (not d!338888) (not bs!287581) (not b_lambda!35565) (not b!1185500) (not d!339178) (not b!1185294) (not b!1185302) (not b!1185161) (not b!1185400) b_and!81555 (not b!1185479) (not b!1185364) (not d!339292) (not b_next!29119) (not b_next!29141) (not b!1185506) (not b!1185240) (not b!1185120) (not b!1185287) (not b!1185243) (not b!1185326) (not d!339036) (not b!1185457) (not b!1185082) (not b!1185573) (not b!1185405) (not d!339212) (not b!1185488) (not b!1185263) (not b_lambda!35559) (not b!1185327) (not d!339210) (not b_next!29143) (not d!339140) (not d!338988) (not d!339262) (not b!1185084) (not b!1185521) (not b!1185357) (not b!1185172) (not b_lambda!35545) (not d!339088) (not b_next!29137) (not b!1185501) (not b!1185445) (not b!1185173) (not b!1185046) (not d!339238) (not d!338930) (not b!1185285) (not d!339048) (not d!339192) (not b!1185115) (not b!1185217) (not b_lambda!35547) b_and!81567 (not b!1185200) (not b!1185361) (not b!1185123) (not bs!287586) (not b!1185255) (not d!339042) (not b!1185177) (not b!1185632) (not b!1185038) (not tb!66277) (not d!338894) (not b!1185345) b_and!81549 (not b!1185495) (not tb!66253) (not d!338920) (not b!1185121) (not b!1185125) (not d!338918) (not b!1185453) (not b!1185286) (not b!1185257) (not b_next!29135) (not b!1185572) (not b!1185168) (not b!1185578) (not b!1185174) (not b!1185401) (not b_next!29149) (not bs!287592) (not b!1185539) b_and!81489 (not b_lambda!35553) (not d!339002) (not b!1185262) (not d!339068) (not bs!287588) (not b_next!29133) (not b!1185178) (not b!1185540) (not b!1185622) (not b!1185156) (not b!1185261) b_and!81557 (not b!1185176) (not d!339250) (not b!1185428) (not b!1185474) (not b_next!29117) (not d!339028) (not b!1185608) (not d!339290) (not bs!287589) (not d!339060) (not d!339076) (not b!1185449) (not b!1185362) (not b!1185237) (not d!339246) (not b!1185631) (not b!1185081) (not b_lambda!35551) (not b!1185296) (not b!1185310) (not b_lambda!35561) (not b!1185413) (not b!1185346) (not d!339024) (not b!1185118) (not b!1185347) (not b!1185083) (not b!1185236) (not b_lambda!35535) (not d!339222) (not d!338992) (not b_lambda!35557) (not b!1185041) (not b!1185637) (not b!1185487) (not tb!66237) (not b!1185078) (not b!1185497) (not b!1185415) (not d!339012) b_and!81565 (not b!1185093) (not b!1185416) b_and!81485 (not b!1185166) (not b!1185434) (not b!1185504) (not b_lambda!35563) b_and!81465 (not b!1185311) (not b!1185550) tp_is_empty!5823 (not b!1185045) (not b!1185390) (not d!339056) (not d!339274) (not d!339066) (not b!1185039) (not b!1185489) (not b!1185404) (not b_lambda!35543) (not d!338994) (not d!339234) (not b!1185459) (not d!339046) (not b!1185175) (not b!1185499) (not b!1185389) (not bs!287580) (not b!1185625) (not d!339108) (not b!1185614) (not b_lambda!35539) (not b!1185040) (not bs!287584) (not b!1185484) (not b!1185333) (not b!1185507) (not d!339214) (not b!1185469) (not b_lambda!35541) (not d!339216) b_and!81553 (not b_next!29121) (not b!1184619) (not d!338998) (not d!338944) (not b!1185171) (not b!1185485) (not b!1185070) (not b!1185635) (not d!339126) (not d!339090) (not bs!287582) (not b!1185564) (not d!339112) (not b!1185295) (not b!1185621) (not b!1185119) (not b_lambda!35463) (not b!1185155) (not b!1185313) (not b!1185245) (not b_lambda!35521) (not b!1185386) (not b!1185153) (not b!1185360) (not d!338932) (not b!1185406) (not bs!287585) (not bs!287583) (not d!339230) (not b!1185246) (not d!339062) (not b!1185154) (not d!338890) (not b!1185613) (not b!1185190) (not bs!287587) (not b!1185591) (not b!1185496) (not b!1185617) (not b_next!29139) b_and!81461 b_and!81559 (not bs!287590) (not b!1185429) (not b!1185433) (not d!339074) (not b!1185447) (not b!1185244) (not b!1185503) (not b!1185264) (not b_lambda!35465) (not b!1185167) (not d!339240) (not b!1185378) (not b_lambda!35555) (not b!1185601) (not b_next!29123) (not d!339058) (not d!338892) (not b_lambda!35461) (not b!1185363) (not d!339220) (not d!338934) b_and!81551 (not b!1185259) (not bm!82617) (not b!1185430) (not b!1185563) (not d!338950) (not d!339248) (not b!1185439) (not d!339014) (not d!338984) (not d!338940) (not b!1185076) (not b!1185460) (not b_next!29151) (not b!1185618) (not b!1185265) (not d!339158) (not b!1185044) (not b!1185458) (not d!339034) (not d!338968) (not b!1185414) (not d!339004) (not b!1185584) (not b!1185471) (not b!1185201) (not d!339084) (not b!1185574) (not d!339006) (not b!1185541) (not b!1185380) (not b!1185483) (not b!1185334) (not b!1185165) (not b!1185589) (not b!1185103) (not bs!287591) (not b!1185612) (not d!339244) (not b!1185266) (not b_lambda!35537) (not b!1185590) (not b!1185616) (not b!1185085) (not b!1185127) (not b!1185636) (not b!1185556) (not b!1185505))
(check-sat b_and!81555 (not b_next!29143) (not b_next!29137) b_and!81567 b_and!81549 (not b_next!29135) (not b_next!29117) b_and!81565 (not b_next!29123) b_and!81551 (not b_next!29151) (not b_next!29119) (not b_next!29141) (not b_next!29149) b_and!81489 (not b_next!29133) b_and!81557 b_and!81485 b_and!81465 b_and!81553 (not b_next!29121) (not b_next!29139) b_and!81461 b_and!81559)
