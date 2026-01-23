; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192248 () Bool)

(assert start!192248)

(declare-fun b!1918160 () Bool)

(declare-fun b_free!54529 () Bool)

(declare-fun b_next!55233 () Bool)

(assert (=> b!1918160 (= b_free!54529 (not b_next!55233))))

(declare-fun tp!547615 () Bool)

(declare-fun b_and!149735 () Bool)

(assert (=> b!1918160 (= tp!547615 b_and!149735)))

(declare-fun b_free!54531 () Bool)

(declare-fun b_next!55235 () Bool)

(assert (=> b!1918160 (= b_free!54531 (not b_next!55235))))

(declare-fun tp!547609 () Bool)

(declare-fun b_and!149737 () Bool)

(assert (=> b!1918160 (= tp!547609 b_and!149737)))

(declare-fun b!1918159 () Bool)

(declare-fun b_free!54533 () Bool)

(declare-fun b_next!55237 () Bool)

(assert (=> b!1918159 (= b_free!54533 (not b_next!55237))))

(declare-fun tp!547619 () Bool)

(declare-fun b_and!149739 () Bool)

(assert (=> b!1918159 (= tp!547619 b_and!149739)))

(declare-fun b_free!54535 () Bool)

(declare-fun b_next!55239 () Bool)

(assert (=> b!1918159 (= b_free!54535 (not b_next!55239))))

(declare-fun tp!547610 () Bool)

(declare-fun b_and!149741 () Bool)

(assert (=> b!1918159 (= tp!547610 b_and!149741)))

(declare-fun b!1918168 () Bool)

(declare-fun b_free!54537 () Bool)

(declare-fun b_next!55241 () Bool)

(assert (=> b!1918168 (= b_free!54537 (not b_next!55241))))

(declare-fun tp!547618 () Bool)

(declare-fun b_and!149743 () Bool)

(assert (=> b!1918168 (= tp!547618 b_and!149743)))

(declare-fun b_free!54539 () Bool)

(declare-fun b_next!55243 () Bool)

(assert (=> b!1918168 (= b_free!54539 (not b_next!55243))))

(declare-fun tp!547614 () Bool)

(declare-fun b_and!149745 () Bool)

(assert (=> b!1918168 (= tp!547614 b_and!149745)))

(declare-fun e!1225733 () Bool)

(assert (=> b!1918159 (= e!1225733 (and tp!547619 tp!547610))))

(declare-fun e!1225732 () Bool)

(assert (=> b!1918160 (= e!1225732 (and tp!547615 tp!547609))))

(declare-fun b!1918161 () Bool)

(declare-fun res!857586 () Bool)

(declare-fun e!1225728 () Bool)

(assert (=> b!1918161 (=> (not res!857586) (not e!1225728))))

(declare-datatypes ((List!21812 0))(
  ( (Nil!21730) (Cons!21730 (h!27131 (_ BitVec 16)) (t!178605 List!21812)) )
))
(declare-datatypes ((TokenValue!4022 0))(
  ( (FloatLiteralValue!8044 (text!28599 List!21812)) (TokenValueExt!4021 (__x!13542 Int)) (Broken!20110 (value!122316 List!21812)) (Object!4103) (End!4022) (Def!4022) (Underscore!4022) (Match!4022) (Else!4022) (Error!4022) (Case!4022) (If!4022) (Extends!4022) (Abstract!4022) (Class!4022) (Val!4022) (DelimiterValue!8044 (del!4082 List!21812)) (KeywordValue!4028 (value!122317 List!21812)) (CommentValue!8044 (value!122318 List!21812)) (WhitespaceValue!8044 (value!122319 List!21812)) (IndentationValue!4022 (value!122320 List!21812)) (String!25227) (Int32!4022) (Broken!20111 (value!122321 List!21812)) (Boolean!4023) (Unit!36117) (OperatorValue!4025 (op!4082 List!21812)) (IdentifierValue!8044 (value!122322 List!21812)) (IdentifierValue!8045 (value!122323 List!21812)) (WhitespaceValue!8045 (value!122324 List!21812)) (True!8044) (False!8044) (Broken!20112 (value!122325 List!21812)) (Broken!20113 (value!122326 List!21812)) (True!8045) (RightBrace!4022) (RightBracket!4022) (Colon!4022) (Null!4022) (Comma!4022) (LeftBracket!4022) (False!8045) (LeftBrace!4022) (ImaginaryLiteralValue!4022 (text!28600 List!21812)) (StringLiteralValue!12066 (value!122327 List!21812)) (EOFValue!4022 (value!122328 List!21812)) (IdentValue!4022 (value!122329 List!21812)) (DelimiterValue!8045 (value!122330 List!21812)) (DedentValue!4022 (value!122331 List!21812)) (NewLineValue!4022 (value!122332 List!21812)) (IntegerValue!12066 (value!122333 (_ BitVec 32)) (text!28601 List!21812)) (IntegerValue!12067 (value!122334 Int) (text!28602 List!21812)) (Times!4022) (Or!4022) (Equal!4022) (Minus!4022) (Broken!20114 (value!122335 List!21812)) (And!4022) (Div!4022) (LessEqual!4022) (Mod!4022) (Concat!9333) (Not!4022) (Plus!4022) (SpaceValue!4022 (value!122336 List!21812)) (IntegerValue!12068 (value!122337 Int) (text!28603 List!21812)) (StringLiteralValue!12067 (text!28604 List!21812)) (FloatLiteralValue!8045 (text!28605 List!21812)) (BytesLiteralValue!4022 (value!122338 List!21812)) (CommentValue!8045 (value!122339 List!21812)) (StringLiteralValue!12068 (value!122340 List!21812)) (ErrorTokenValue!4022 (msg!4083 List!21812)) )
))
(declare-datatypes ((String!25228 0))(
  ( (String!25229 (value!122341 String)) )
))
(declare-datatypes ((C!10768 0))(
  ( (C!10769 (val!6336 Int)) )
))
(declare-datatypes ((List!21813 0))(
  ( (Nil!21731) (Cons!21731 (h!27132 C!10768) (t!178606 List!21813)) )
))
(declare-datatypes ((Regex!5311 0))(
  ( (ElementMatch!5311 (c!312083 C!10768)) (Concat!9334 (regOne!11134 Regex!5311) (regTwo!11134 Regex!5311)) (EmptyExpr!5311) (Star!5311 (reg!5640 Regex!5311)) (EmptyLang!5311) (Union!5311 (regOne!11135 Regex!5311) (regTwo!11135 Regex!5311)) )
))
(declare-datatypes ((IArray!14523 0))(
  ( (IArray!14524 (innerList!7319 List!21813)) )
))
(declare-datatypes ((Conc!7259 0))(
  ( (Node!7259 (left!17336 Conc!7259) (right!17666 Conc!7259) (csize!14748 Int) (cheight!7470 Int)) (Leaf!10665 (xs!10153 IArray!14523) (csize!14749 Int)) (Empty!7259) )
))
(declare-datatypes ((BalanceConc!14334 0))(
  ( (BalanceConc!14335 (c!312084 Conc!7259)) )
))
(declare-datatypes ((TokenValueInjection!7628 0))(
  ( (TokenValueInjection!7629 (toValue!5515 Int) (toChars!5374 Int)) )
))
(declare-datatypes ((Rule!7572 0))(
  ( (Rule!7573 (regex!3886 Regex!5311) (tag!4326 String!25228) (isSeparator!3886 Bool) (transformation!3886 TokenValueInjection!7628)) )
))
(declare-datatypes ((Token!7324 0))(
  ( (Token!7325 (value!122342 TokenValue!4022) (rule!6089 Rule!7572) (size!17032 Int) (originalCharacters!4693 List!21813)) )
))
(declare-fun separatorToken!354 () Token!7324)

(assert (=> b!1918161 (= res!857586 (isSeparator!3886 (rule!6089 separatorToken!354)))))

(declare-fun tp!547620 () Bool)

(declare-fun e!1225731 () Bool)

(declare-fun e!1225724 () Bool)

(declare-fun b!1918162 () Bool)

(declare-datatypes ((List!21814 0))(
  ( (Nil!21732) (Cons!21732 (h!27133 Token!7324) (t!178607 List!21814)) )
))
(declare-fun tokens!598 () List!21814)

(declare-fun inv!28819 (Token!7324) Bool)

(assert (=> b!1918162 (= e!1225724 (and (inv!28819 (h!27133 tokens!598)) e!1225731 tp!547620))))

(declare-fun b!1918163 () Bool)

(declare-fun e!1225721 () Bool)

(declare-fun lt!735557 () Rule!7572)

(assert (=> b!1918163 (= e!1225721 (= (rule!6089 separatorToken!354) lt!735557))))

(declare-fun res!857594 () Bool)

(assert (=> start!192248 (=> (not res!857594) (not e!1225728))))

(declare-datatypes ((LexerInterface!3499 0))(
  ( (LexerInterfaceExt!3496 (__x!13543 Int)) (Lexer!3497) )
))
(declare-fun thiss!23328 () LexerInterface!3499)

(get-info :version)

(assert (=> start!192248 (= res!857594 ((_ is Lexer!3497) thiss!23328))))

(assert (=> start!192248 e!1225728))

(assert (=> start!192248 true))

(declare-fun e!1225729 () Bool)

(assert (=> start!192248 e!1225729))

(assert (=> start!192248 e!1225724))

(declare-fun e!1225718 () Bool)

(assert (=> start!192248 (and (inv!28819 separatorToken!354) e!1225718)))

(declare-fun b!1918164 () Bool)

(declare-fun res!857589 () Bool)

(assert (=> b!1918164 (=> (not res!857589) (not e!1225728))))

(declare-fun lambda!74861 () Int)

(declare-fun forall!4582 (List!21814 Int) Bool)

(assert (=> b!1918164 (= res!857589 (forall!4582 tokens!598 lambda!74861))))

(declare-fun e!1225734 () Bool)

(declare-fun b!1918165 () Bool)

(declare-datatypes ((List!21815 0))(
  ( (Nil!21733) (Cons!21733 (h!27134 Rule!7572) (t!178608 List!21815)) )
))
(declare-fun rules!3198 () List!21815)

(declare-fun tp!547613 () Bool)

(declare-fun inv!28816 (String!25228) Bool)

(declare-fun inv!28820 (TokenValueInjection!7628) Bool)

(assert (=> b!1918165 (= e!1225734 (and tp!547613 (inv!28816 (tag!4326 (h!27134 rules!3198))) (inv!28820 (transformation!3886 (h!27134 rules!3198))) e!1225733))))

(declare-fun b!1918166 () Bool)

(declare-fun e!1225717 () Bool)

(declare-fun e!1225738 () Bool)

(assert (=> b!1918166 (= e!1225717 e!1225738)))

(declare-fun res!857593 () Bool)

(assert (=> b!1918166 (=> (not res!857593) (not e!1225738))))

(declare-fun lt!735561 () Rule!7572)

(declare-fun lt!735554 () List!21813)

(declare-fun matchR!2597 (Regex!5311 List!21813) Bool)

(assert (=> b!1918166 (= res!857593 (matchR!2597 (regex!3886 lt!735561) lt!735554))))

(declare-datatypes ((Option!4477 0))(
  ( (None!4476) (Some!4476 (v!26549 Rule!7572)) )
))
(declare-fun lt!735564 () Option!4477)

(declare-fun get!6827 (Option!4477) Rule!7572)

(assert (=> b!1918166 (= lt!735561 (get!6827 lt!735564))))

(declare-fun b!1918167 () Bool)

(declare-fun res!857587 () Bool)

(assert (=> b!1918167 (=> (not res!857587) (not e!1225728))))

(declare-fun rulesProduceIndividualToken!1671 (LexerInterface!3499 List!21815 Token!7324) Bool)

(assert (=> b!1918167 (= res!857587 (rulesProduceIndividualToken!1671 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1225725 () Bool)

(assert (=> b!1918168 (= e!1225725 (and tp!547618 tp!547614))))

(declare-fun b!1918169 () Bool)

(declare-fun res!857598 () Bool)

(assert (=> b!1918169 (=> (not res!857598) (not e!1225728))))

(declare-fun sepAndNonSepRulesDisjointChars!984 (List!21815 List!21815) Bool)

(assert (=> b!1918169 (= res!857598 (sepAndNonSepRulesDisjointChars!984 rules!3198 rules!3198))))

(declare-fun b!1918170 () Bool)

(declare-fun res!857592 () Bool)

(declare-fun e!1225726 () Bool)

(assert (=> b!1918170 (=> res!857592 e!1225726)))

(declare-fun isEmpty!13377 (List!21814) Bool)

(assert (=> b!1918170 (= res!857592 (isEmpty!13377 tokens!598))))

(declare-fun b!1918171 () Bool)

(declare-fun res!857591 () Bool)

(assert (=> b!1918171 (=> (not res!857591) (not e!1225728))))

(declare-fun rulesProduceEachTokenIndividuallyList!1230 (LexerInterface!3499 List!21815 List!21814) Bool)

(assert (=> b!1918171 (= res!857591 (rulesProduceEachTokenIndividuallyList!1230 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1918172 () Bool)

(declare-fun res!857584 () Bool)

(assert (=> b!1918172 (=> (not res!857584) (not e!1225728))))

(assert (=> b!1918172 (= res!857584 ((_ is Cons!21732) tokens!598))))

(declare-fun b!1918173 () Bool)

(assert (=> b!1918173 (= e!1225728 (not e!1225726))))

(declare-fun res!857585 () Bool)

(assert (=> b!1918173 (=> res!857585 e!1225726)))

(declare-fun lt!735558 () Bool)

(declare-datatypes ((tuple2!20436 0))(
  ( (tuple2!20437 (_1!11687 Token!7324) (_2!11687 List!21813)) )
))
(declare-datatypes ((Option!4478 0))(
  ( (None!4477) (Some!4477 (v!26550 tuple2!20436)) )
))
(declare-fun lt!735555 () Option!4478)

(assert (=> b!1918173 (= res!857585 (or (and (not lt!735558) (= (_1!11687 (v!26550 lt!735555)) (h!27133 tokens!598))) (and (not lt!735558) (not (= (_1!11687 (v!26550 lt!735555)) (h!27133 tokens!598)))) ((_ is None!4477) lt!735555)))))

(assert (=> b!1918173 (= lt!735558 (not ((_ is Some!4477) lt!735555)))))

(declare-fun maxPrefix!1945 (LexerInterface!3499 List!21815 List!21813) Option!4478)

(declare-fun ++!5841 (List!21813 List!21813) List!21813)

(declare-fun printWithSeparatorTokenWhenNeededList!542 (LexerInterface!3499 List!21815 List!21814 Token!7324) List!21813)

(assert (=> b!1918173 (= lt!735555 (maxPrefix!1945 thiss!23328 rules!3198 (++!5841 lt!735554 (printWithSeparatorTokenWhenNeededList!542 thiss!23328 rules!3198 (t!178607 tokens!598) separatorToken!354))))))

(assert (=> b!1918173 e!1225717))

(declare-fun res!857595 () Bool)

(assert (=> b!1918173 (=> (not res!857595) (not e!1225717))))

(declare-fun isDefined!3775 (Option!4477) Bool)

(assert (=> b!1918173 (= res!857595 (isDefined!3775 lt!735564))))

(declare-fun getRuleFromTag!729 (LexerInterface!3499 List!21815 String!25228) Option!4477)

(assert (=> b!1918173 (= lt!735564 (getRuleFromTag!729 thiss!23328 rules!3198 (tag!4326 (rule!6089 (h!27133 tokens!598)))))))

(declare-datatypes ((Unit!36118 0))(
  ( (Unit!36119) )
))
(declare-fun lt!735560 () Unit!36118)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!729 (LexerInterface!3499 List!21815 List!21813 Token!7324) Unit!36118)

(assert (=> b!1918173 (= lt!735560 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!729 thiss!23328 rules!3198 lt!735554 (h!27133 tokens!598)))))

(declare-fun e!1225735 () Bool)

(assert (=> b!1918173 e!1225735))

(declare-fun res!857596 () Bool)

(assert (=> b!1918173 (=> (not res!857596) (not e!1225735))))

(declare-fun lt!735550 () Option!4478)

(declare-fun isDefined!3776 (Option!4478) Bool)

(assert (=> b!1918173 (= res!857596 (isDefined!3776 lt!735550))))

(assert (=> b!1918173 (= lt!735550 (maxPrefix!1945 thiss!23328 rules!3198 lt!735554))))

(declare-fun lt!735562 () BalanceConc!14334)

(declare-fun list!8818 (BalanceConc!14334) List!21813)

(assert (=> b!1918173 (= lt!735554 (list!8818 lt!735562))))

(declare-fun e!1225736 () Bool)

(assert (=> b!1918173 e!1225736))

(declare-fun res!857588 () Bool)

(assert (=> b!1918173 (=> (not res!857588) (not e!1225736))))

(declare-fun lt!735556 () Option!4477)

(assert (=> b!1918173 (= res!857588 (isDefined!3775 lt!735556))))

(assert (=> b!1918173 (= lt!735556 (getRuleFromTag!729 thiss!23328 rules!3198 (tag!4326 (rule!6089 separatorToken!354))))))

(declare-fun lt!735551 () List!21813)

(declare-fun lt!735563 () Unit!36118)

(assert (=> b!1918173 (= lt!735563 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!729 thiss!23328 rules!3198 lt!735551 separatorToken!354))))

(declare-fun charsOf!2442 (Token!7324) BalanceConc!14334)

(assert (=> b!1918173 (= lt!735551 (list!8818 (charsOf!2442 separatorToken!354)))))

(declare-fun lt!735552 () Unit!36118)

(declare-fun lemmaEqSameImage!594 (TokenValueInjection!7628 BalanceConc!14334 BalanceConc!14334) Unit!36118)

(declare-fun seqFromList!2758 (List!21813) BalanceConc!14334)

(assert (=> b!1918173 (= lt!735552 (lemmaEqSameImage!594 (transformation!3886 (rule!6089 (h!27133 tokens!598))) lt!735562 (seqFromList!2758 (originalCharacters!4693 (h!27133 tokens!598)))))))

(declare-fun lt!735559 () Unit!36118)

(declare-fun lemmaSemiInverse!865 (TokenValueInjection!7628 BalanceConc!14334) Unit!36118)

(assert (=> b!1918173 (= lt!735559 (lemmaSemiInverse!865 (transformation!3886 (rule!6089 (h!27133 tokens!598))) lt!735562))))

(assert (=> b!1918173 (= lt!735562 (charsOf!2442 (h!27133 tokens!598)))))

(declare-fun b!1918174 () Bool)

(assert (=> b!1918174 (= e!1225738 (= (rule!6089 (h!27133 tokens!598)) lt!735561))))

(declare-fun b!1918175 () Bool)

(declare-fun res!857583 () Bool)

(assert (=> b!1918175 (=> (not res!857583) (not e!1225728))))

(declare-fun isEmpty!13378 (List!21815) Bool)

(assert (=> b!1918175 (= res!857583 (not (isEmpty!13378 rules!3198)))))

(declare-fun tp!547616 () Bool)

(declare-fun e!1225722 () Bool)

(declare-fun b!1918176 () Bool)

(assert (=> b!1918176 (= e!1225722 (and tp!547616 (inv!28816 (tag!4326 (rule!6089 separatorToken!354))) (inv!28820 (transformation!3886 (rule!6089 separatorToken!354))) e!1225732))))

(declare-fun b!1918177 () Bool)

(assert (=> b!1918177 (= e!1225736 e!1225721)))

(declare-fun res!857597 () Bool)

(assert (=> b!1918177 (=> (not res!857597) (not e!1225721))))

(assert (=> b!1918177 (= res!857597 (matchR!2597 (regex!3886 lt!735557) lt!735551))))

(assert (=> b!1918177 (= lt!735557 (get!6827 lt!735556))))

(declare-fun b!1918178 () Bool)

(declare-fun get!6828 (Option!4478) tuple2!20436)

(assert (=> b!1918178 (= e!1225735 (= (_1!11687 (get!6828 lt!735550)) (h!27133 tokens!598)))))

(declare-fun b!1918179 () Bool)

(declare-fun res!857590 () Bool)

(assert (=> b!1918179 (=> (not res!857590) (not e!1225728))))

(declare-fun rulesInvariant!3106 (LexerInterface!3499 List!21815) Bool)

(assert (=> b!1918179 (= res!857590 (rulesInvariant!3106 thiss!23328 rules!3198))))

(declare-fun e!1225730 () Bool)

(declare-fun tp!547617 () Bool)

(declare-fun b!1918180 () Bool)

(assert (=> b!1918180 (= e!1225730 (and tp!547617 (inv!28816 (tag!4326 (rule!6089 (h!27133 tokens!598)))) (inv!28820 (transformation!3886 (rule!6089 (h!27133 tokens!598)))) e!1225725))))

(declare-fun tp!547612 () Bool)

(declare-fun b!1918181 () Bool)

(declare-fun inv!21 (TokenValue!4022) Bool)

(assert (=> b!1918181 (= e!1225718 (and (inv!21 (value!122342 separatorToken!354)) e!1225722 tp!547612))))

(declare-fun b!1918182 () Bool)

(declare-fun tp!547611 () Bool)

(assert (=> b!1918182 (= e!1225729 (and e!1225734 tp!547611))))

(declare-fun b!1918183 () Bool)

(declare-fun tp!547608 () Bool)

(assert (=> b!1918183 (= e!1225731 (and (inv!21 (value!122342 (h!27133 tokens!598))) e!1225730 tp!547608))))

(declare-fun b!1918184 () Bool)

(assert (=> b!1918184 (= e!1225726 true)))

(declare-fun lt!735553 () List!21813)

(assert (=> b!1918184 (= lt!735553 (printWithSeparatorTokenWhenNeededList!542 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(assert (= (and start!192248 res!857594) b!1918175))

(assert (= (and b!1918175 res!857583) b!1918179))

(assert (= (and b!1918179 res!857590) b!1918171))

(assert (= (and b!1918171 res!857591) b!1918167))

(assert (= (and b!1918167 res!857587) b!1918161))

(assert (= (and b!1918161 res!857586) b!1918164))

(assert (= (and b!1918164 res!857589) b!1918169))

(assert (= (and b!1918169 res!857598) b!1918172))

(assert (= (and b!1918172 res!857584) b!1918173))

(assert (= (and b!1918173 res!857588) b!1918177))

(assert (= (and b!1918177 res!857597) b!1918163))

(assert (= (and b!1918173 res!857596) b!1918178))

(assert (= (and b!1918173 res!857595) b!1918166))

(assert (= (and b!1918166 res!857593) b!1918174))

(assert (= (and b!1918173 (not res!857585)) b!1918170))

(assert (= (and b!1918170 (not res!857592)) b!1918184))

(assert (= b!1918165 b!1918159))

(assert (= b!1918182 b!1918165))

(assert (= (and start!192248 ((_ is Cons!21733) rules!3198)) b!1918182))

(assert (= b!1918180 b!1918168))

(assert (= b!1918183 b!1918180))

(assert (= b!1918162 b!1918183))

(assert (= (and start!192248 ((_ is Cons!21732) tokens!598)) b!1918162))

(assert (= b!1918176 b!1918160))

(assert (= b!1918181 b!1918176))

(assert (= start!192248 b!1918181))

(declare-fun m!2353537 () Bool)

(assert (=> b!1918177 m!2353537))

(declare-fun m!2353539 () Bool)

(assert (=> b!1918177 m!2353539))

(declare-fun m!2353541 () Bool)

(assert (=> b!1918164 m!2353541))

(declare-fun m!2353543 () Bool)

(assert (=> b!1918169 m!2353543))

(declare-fun m!2353545 () Bool)

(assert (=> b!1918176 m!2353545))

(declare-fun m!2353547 () Bool)

(assert (=> b!1918176 m!2353547))

(declare-fun m!2353549 () Bool)

(assert (=> b!1918183 m!2353549))

(declare-fun m!2353551 () Bool)

(assert (=> b!1918162 m!2353551))

(declare-fun m!2353553 () Bool)

(assert (=> b!1918171 m!2353553))

(declare-fun m!2353555 () Bool)

(assert (=> b!1918170 m!2353555))

(declare-fun m!2353557 () Bool)

(assert (=> b!1918179 m!2353557))

(declare-fun m!2353559 () Bool)

(assert (=> b!1918181 m!2353559))

(declare-fun m!2353561 () Bool)

(assert (=> b!1918178 m!2353561))

(declare-fun m!2353563 () Bool)

(assert (=> b!1918180 m!2353563))

(declare-fun m!2353565 () Bool)

(assert (=> b!1918180 m!2353565))

(declare-fun m!2353567 () Bool)

(assert (=> b!1918166 m!2353567))

(declare-fun m!2353569 () Bool)

(assert (=> b!1918166 m!2353569))

(declare-fun m!2353571 () Bool)

(assert (=> start!192248 m!2353571))

(declare-fun m!2353573 () Bool)

(assert (=> b!1918167 m!2353573))

(declare-fun m!2353575 () Bool)

(assert (=> b!1918175 m!2353575))

(declare-fun m!2353577 () Bool)

(assert (=> b!1918184 m!2353577))

(declare-fun m!2353579 () Bool)

(assert (=> b!1918165 m!2353579))

(declare-fun m!2353581 () Bool)

(assert (=> b!1918165 m!2353581))

(declare-fun m!2353583 () Bool)

(assert (=> b!1918173 m!2353583))

(declare-fun m!2353585 () Bool)

(assert (=> b!1918173 m!2353585))

(declare-fun m!2353587 () Bool)

(assert (=> b!1918173 m!2353587))

(declare-fun m!2353589 () Bool)

(assert (=> b!1918173 m!2353589))

(declare-fun m!2353591 () Bool)

(assert (=> b!1918173 m!2353591))

(assert (=> b!1918173 m!2353587))

(declare-fun m!2353593 () Bool)

(assert (=> b!1918173 m!2353593))

(assert (=> b!1918173 m!2353585))

(declare-fun m!2353595 () Bool)

(assert (=> b!1918173 m!2353595))

(declare-fun m!2353597 () Bool)

(assert (=> b!1918173 m!2353597))

(assert (=> b!1918173 m!2353593))

(declare-fun m!2353599 () Bool)

(assert (=> b!1918173 m!2353599))

(assert (=> b!1918173 m!2353589))

(declare-fun m!2353601 () Bool)

(assert (=> b!1918173 m!2353601))

(declare-fun m!2353603 () Bool)

(assert (=> b!1918173 m!2353603))

(declare-fun m!2353605 () Bool)

(assert (=> b!1918173 m!2353605))

(declare-fun m!2353607 () Bool)

(assert (=> b!1918173 m!2353607))

(declare-fun m!2353609 () Bool)

(assert (=> b!1918173 m!2353609))

(declare-fun m!2353611 () Bool)

(assert (=> b!1918173 m!2353611))

(declare-fun m!2353613 () Bool)

(assert (=> b!1918173 m!2353613))

(declare-fun m!2353615 () Bool)

(assert (=> b!1918173 m!2353615))

(declare-fun m!2353617 () Bool)

(assert (=> b!1918173 m!2353617))

(check-sat (not b!1918170) (not b!1918169) (not b_next!55239) (not b!1918183) (not b!1918162) (not b_next!55233) (not b!1918166) (not b!1918182) (not b_next!55241) b_and!149735 b_and!149743 (not b!1918179) (not b!1918164) (not b_next!55235) (not b!1918173) (not b!1918167) b_and!149739 (not b!1918171) (not b!1918165) (not b!1918181) (not b!1918176) (not b!1918175) b_and!149741 (not b_next!55237) (not b!1918184) b_and!149737 (not start!192248) (not b!1918178) (not b_next!55243) (not b!1918177) (not b!1918180) b_and!149745)
(check-sat (not b_next!55239) b_and!149743 (not b_next!55235) b_and!149739 (not b_next!55233) b_and!149741 (not b_next!55237) b_and!149737 (not b_next!55243) b_and!149745 (not b_next!55241) b_and!149735)
