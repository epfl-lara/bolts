; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250412 () Bool)

(assert start!250412)

(declare-fun b!2585577 () Bool)

(declare-fun b_free!72853 () Bool)

(declare-fun b_next!73557 () Bool)

(assert (=> b!2585577 (= b_free!72853 (not b_next!73557))))

(declare-fun tp!820857 () Bool)

(declare-fun b_and!189531 () Bool)

(assert (=> b!2585577 (= tp!820857 b_and!189531)))

(declare-fun b_free!72855 () Bool)

(declare-fun b_next!73559 () Bool)

(assert (=> b!2585577 (= b_free!72855 (not b_next!73559))))

(declare-fun tp!820851 () Bool)

(declare-fun b_and!189533 () Bool)

(assert (=> b!2585577 (= tp!820851 b_and!189533)))

(declare-fun b!2585586 () Bool)

(declare-fun b_free!72857 () Bool)

(declare-fun b_next!73561 () Bool)

(assert (=> b!2585586 (= b_free!72857 (not b_next!73561))))

(declare-fun tp!820860 () Bool)

(declare-fun b_and!189535 () Bool)

(assert (=> b!2585586 (= tp!820860 b_and!189535)))

(declare-fun b_free!72859 () Bool)

(declare-fun b_next!73563 () Bool)

(assert (=> b!2585586 (= b_free!72859 (not b_next!73563))))

(declare-fun tp!820866 () Bool)

(declare-fun b_and!189537 () Bool)

(assert (=> b!2585586 (= tp!820866 b_and!189537)))

(declare-fun b!2585595 () Bool)

(declare-fun b_free!72861 () Bool)

(declare-fun b_next!73565 () Bool)

(assert (=> b!2585595 (= b_free!72861 (not b_next!73565))))

(declare-fun tp!820855 () Bool)

(declare-fun b_and!189539 () Bool)

(assert (=> b!2585595 (= tp!820855 b_and!189539)))

(declare-fun b_free!72863 () Bool)

(declare-fun b_next!73567 () Bool)

(assert (=> b!2585595 (= b_free!72863 (not b_next!73567))))

(declare-fun tp!820865 () Bool)

(declare-fun b_and!189541 () Bool)

(assert (=> b!2585595 (= tp!820865 b_and!189541)))

(declare-fun b!2585578 () Bool)

(declare-fun b_free!72865 () Bool)

(declare-fun b_next!73569 () Bool)

(assert (=> b!2585578 (= b_free!72865 (not b_next!73569))))

(declare-fun tp!820850 () Bool)

(declare-fun b_and!189543 () Bool)

(assert (=> b!2585578 (= tp!820850 b_and!189543)))

(declare-fun b_free!72867 () Bool)

(declare-fun b_next!73571 () Bool)

(assert (=> b!2585578 (= b_free!72867 (not b_next!73571))))

(declare-fun tp!820854 () Bool)

(declare-fun b_and!189545 () Bool)

(assert (=> b!2585578 (= tp!820854 b_and!189545)))

(declare-fun b!2585574 () Bool)

(declare-fun e!1631396 () Bool)

(declare-datatypes ((List!29864 0))(
  ( (Nil!29764) (Cons!29764 (h!35184 (_ BitVec 16)) (t!212229 List!29864)) )
))
(declare-datatypes ((TokenValue!4743 0))(
  ( (FloatLiteralValue!9486 (text!33646 List!29864)) (TokenValueExt!4742 (__x!19319 Int)) (Broken!23715 (value!146070 List!29864)) (Object!4842) (End!4743) (Def!4743) (Underscore!4743) (Match!4743) (Else!4743) (Error!4743) (Case!4743) (If!4743) (Extends!4743) (Abstract!4743) (Class!4743) (Val!4743) (DelimiterValue!9486 (del!4803 List!29864)) (KeywordValue!4749 (value!146071 List!29864)) (CommentValue!9486 (value!146072 List!29864)) (WhitespaceValue!9486 (value!146073 List!29864)) (IndentationValue!4743 (value!146074 List!29864)) (String!33122) (Int32!4743) (Broken!23716 (value!146075 List!29864)) (Boolean!4744) (Unit!43599) (OperatorValue!4746 (op!4803 List!29864)) (IdentifierValue!9486 (value!146076 List!29864)) (IdentifierValue!9487 (value!146077 List!29864)) (WhitespaceValue!9487 (value!146078 List!29864)) (True!9486) (False!9486) (Broken!23717 (value!146079 List!29864)) (Broken!23718 (value!146080 List!29864)) (True!9487) (RightBrace!4743) (RightBracket!4743) (Colon!4743) (Null!4743) (Comma!4743) (LeftBracket!4743) (False!9487) (LeftBrace!4743) (ImaginaryLiteralValue!4743 (text!33647 List!29864)) (StringLiteralValue!14229 (value!146081 List!29864)) (EOFValue!4743 (value!146082 List!29864)) (IdentValue!4743 (value!146083 List!29864)) (DelimiterValue!9487 (value!146084 List!29864)) (DedentValue!4743 (value!146085 List!29864)) (NewLineValue!4743 (value!146086 List!29864)) (IntegerValue!14229 (value!146087 (_ BitVec 32)) (text!33648 List!29864)) (IntegerValue!14230 (value!146088 Int) (text!33649 List!29864)) (Times!4743) (Or!4743) (Equal!4743) (Minus!4743) (Broken!23719 (value!146089 List!29864)) (And!4743) (Div!4743) (LessEqual!4743) (Mod!4743) (Concat!12408) (Not!4743) (Plus!4743) (SpaceValue!4743 (value!146090 List!29864)) (IntegerValue!14231 (value!146091 Int) (text!33650 List!29864)) (StringLiteralValue!14230 (text!33651 List!29864)) (FloatLiteralValue!9487 (text!33652 List!29864)) (BytesLiteralValue!4743 (value!146092 List!29864)) (CommentValue!9487 (value!146093 List!29864)) (StringLiteralValue!14231 (value!146094 List!29864)) (ErrorTokenValue!4743 (msg!4804 List!29864)) )
))
(declare-datatypes ((C!15488 0))(
  ( (C!15489 (val!9440 Int)) )
))
(declare-datatypes ((List!29865 0))(
  ( (Nil!29765) (Cons!29765 (h!35185 C!15488) (t!212230 List!29865)) )
))
(declare-datatypes ((IArray!18579 0))(
  ( (IArray!18580 (innerList!9347 List!29865)) )
))
(declare-datatypes ((Conc!9287 0))(
  ( (Node!9287 (left!22688 Conc!9287) (right!23018 Conc!9287) (csize!18804 Int) (cheight!9498 Int)) (Leaf!14169 (xs!12271 IArray!18579) (csize!18805 Int)) (Empty!9287) )
))
(declare-datatypes ((BalanceConc!18188 0))(
  ( (BalanceConc!18189 (c!416819 Conc!9287)) )
))
(declare-datatypes ((TokenValueInjection!8926 0))(
  ( (TokenValueInjection!8927 (toValue!6411 Int) (toChars!6270 Int)) )
))
(declare-datatypes ((Regex!7665 0))(
  ( (ElementMatch!7665 (c!416820 C!15488)) (Concat!12409 (regOne!15842 Regex!7665) (regTwo!15842 Regex!7665)) (EmptyExpr!7665) (Star!7665 (reg!7994 Regex!7665)) (EmptyLang!7665) (Union!7665 (regOne!15843 Regex!7665) (regTwo!15843 Regex!7665)) )
))
(declare-datatypes ((String!33123 0))(
  ( (String!33124 (value!146095 String)) )
))
(declare-datatypes ((Rule!8842 0))(
  ( (Rule!8843 (regex!4521 Regex!7665) (tag!5011 String!33123) (isSeparator!4521 Bool) (transformation!4521 TokenValueInjection!8926)) )
))
(declare-datatypes ((Token!8512 0))(
  ( (Token!8513 (value!146096 TokenValue!4743) (rule!6887 Rule!8842) (size!23077 Int) (originalCharacters!5287 List!29865)) )
))
(declare-fun token!562 () Token!8512)

(declare-fun tp!820853 () Bool)

(declare-fun e!1631399 () Bool)

(declare-fun inv!21 (TokenValue!4743) Bool)

(assert (=> b!2585574 (= e!1631399 (and (inv!21 (value!146096 token!562)) e!1631396 tp!820853))))

(declare-fun b!2585575 () Bool)

(declare-fun e!1631410 () Bool)

(declare-fun tp_is_empty!13225 () Bool)

(declare-fun tp!820856 () Bool)

(assert (=> b!2585575 (= e!1631410 (and tp_is_empty!13225 tp!820856))))

(declare-fun b!2585576 () Bool)

(declare-fun res!1087381 () Bool)

(declare-fun e!1631400 () Bool)

(assert (=> b!2585576 (=> (not res!1087381) (not e!1631400))))

(declare-datatypes ((List!29866 0))(
  ( (Nil!29766) (Cons!29766 (h!35186 Rule!8842) (t!212231 List!29866)) )
))
(declare-fun rules!4580 () List!29866)

(declare-fun isEmpty!17109 (List!29866) Bool)

(assert (=> b!2585576 (= res!1087381 (not (isEmpty!17109 rules!4580)))))

(declare-fun e!1631394 () Bool)

(assert (=> b!2585577 (= e!1631394 (and tp!820857 tp!820851))))

(declare-fun e!1631406 () Bool)

(assert (=> b!2585578 (= e!1631406 (and tp!820850 tp!820854))))

(declare-fun rs!798 () List!29866)

(declare-fun b!2585579 () Bool)

(declare-fun tp!820859 () Bool)

(declare-fun e!1631393 () Bool)

(declare-fun inv!40193 (String!33123) Bool)

(declare-fun inv!40196 (TokenValueInjection!8926) Bool)

(assert (=> b!2585579 (= e!1631393 (and tp!820859 (inv!40193 (tag!5011 (h!35186 rs!798))) (inv!40196 (transformation!4521 (h!35186 rs!798))) e!1631406))))

(declare-fun b!2585580 () Bool)

(declare-fun res!1087388 () Bool)

(assert (=> b!2585580 (=> (not res!1087388) (not e!1631400))))

(declare-fun rule!570 () Rule!8842)

(assert (=> b!2585580 (= res!1087388 (= (rule!6887 token!562) rule!570))))

(declare-fun b!2585581 () Bool)

(declare-fun res!1087385 () Bool)

(assert (=> b!2585581 (=> (not res!1087385) (not e!1631400))))

(declare-fun e!1631407 () Bool)

(assert (=> b!2585581 (= res!1087385 e!1631407)))

(declare-fun res!1087383 () Bool)

(assert (=> b!2585581 (=> (not res!1087383) (not e!1631407))))

(declare-fun input!3654 () List!29865)

(declare-fun suffix!1684 () List!29865)

(declare-fun lt!909247 () List!29865)

(declare-fun ++!7311 (List!29865 List!29865) List!29865)

(assert (=> b!2585581 (= res!1087383 (= input!3654 (++!7311 lt!909247 suffix!1684)))))

(declare-fun list!11253 (BalanceConc!18188) List!29865)

(declare-fun charsOf!2850 (Token!8512) BalanceConc!18188)

(assert (=> b!2585581 (= lt!909247 (list!11253 (charsOf!2850 token!562)))))

(declare-fun b!2585582 () Bool)

(declare-fun e!1631403 () Bool)

(declare-fun e!1631398 () Bool)

(declare-fun tp!820858 () Bool)

(assert (=> b!2585582 (= e!1631403 (and e!1631398 tp!820858))))

(declare-fun tp!820861 () Bool)

(declare-fun b!2585583 () Bool)

(assert (=> b!2585583 (= e!1631398 (and tp!820861 (inv!40193 (tag!5011 (h!35186 rules!4580))) (inv!40196 (transformation!4521 (h!35186 rules!4580))) e!1631394))))

(declare-fun b!2585584 () Bool)

(declare-fun res!1087382 () Bool)

(assert (=> b!2585584 (=> (not res!1087382) (not e!1631400))))

(declare-datatypes ((LexerInterface!4118 0))(
  ( (LexerInterfaceExt!4115 (__x!19320 Int)) (Lexer!4116) )
))
(declare-fun thiss!28211 () LexerInterface!4118)

(declare-fun rulesInvariant!3618 (LexerInterface!4118 List!29866) Bool)

(assert (=> b!2585584 (= res!1087382 (rulesInvariant!3618 thiss!28211 rules!4580))))

(declare-fun res!1087380 () Bool)

(assert (=> start!250412 (=> (not res!1087380) (not e!1631400))))

(get-info :version)

(assert (=> start!250412 (= res!1087380 ((_ is Lexer!4116) thiss!28211))))

(assert (=> start!250412 e!1631400))

(assert (=> start!250412 e!1631403))

(assert (=> start!250412 true))

(declare-fun e!1631408 () Bool)

(assert (=> start!250412 e!1631408))

(declare-fun inv!40197 (Token!8512) Bool)

(assert (=> start!250412 (and (inv!40197 token!562) e!1631399)))

(assert (=> start!250412 e!1631410))

(declare-fun e!1631395 () Bool)

(assert (=> start!250412 e!1631395))

(declare-fun e!1631409 () Bool)

(assert (=> start!250412 e!1631409))

(declare-fun b!2585573 () Bool)

(declare-fun tp!820852 () Bool)

(assert (=> b!2585573 (= e!1631408 (and tp_is_empty!13225 tp!820852))))

(declare-fun b!2585585 () Bool)

(declare-fun res!1087384 () Bool)

(assert (=> b!2585585 (=> (not res!1087384) (not e!1631400))))

(declare-datatypes ((tuple2!29718 0))(
  ( (tuple2!29719 (_1!17401 Token!8512) (_2!17401 List!29865)) )
))
(declare-datatypes ((Option!5936 0))(
  ( (None!5935) (Some!5935 (v!32038 tuple2!29718)) )
))
(declare-fun maxPrefix!2290 (LexerInterface!4118 List!29866 List!29865) Option!5936)

(assert (=> b!2585585 (= res!1087384 (= (maxPrefix!2290 thiss!28211 rules!4580 input!3654) (Some!5935 (tuple2!29719 token!562 suffix!1684))))))

(declare-fun e!1631413 () Bool)

(assert (=> b!2585586 (= e!1631413 (and tp!820860 tp!820866))))

(declare-fun b!2585587 () Bool)

(declare-fun res!1087389 () Bool)

(assert (=> b!2585587 (=> (not res!1087389) (not e!1631400))))

(declare-fun contains!5325 (List!29866 Rule!8842) Bool)

(assert (=> b!2585587 (= res!1087389 (contains!5325 rules!4580 rule!570))))

(declare-fun b!2585588 () Bool)

(declare-fun e!1631397 () Bool)

(assert (=> b!2585588 (= e!1631400 (not e!1631397))))

(declare-fun res!1087387 () Bool)

(assert (=> b!2585588 (=> res!1087387 e!1631397)))

(declare-fun lt!909242 () Option!5936)

(assert (=> b!2585588 (= res!1087387 (not (= lt!909242 (Some!5935 (tuple2!29719 token!562 suffix!1684)))))))

(declare-fun lt!909246 () List!29865)

(declare-fun lt!909244 () TokenValue!4743)

(declare-fun lt!909243 () Int)

(assert (=> b!2585588 (= lt!909242 (Some!5935 (tuple2!29719 (Token!8513 lt!909244 rule!570 lt!909243 lt!909246) suffix!1684)))))

(declare-fun maxPrefixOneRule!1456 (LexerInterface!4118 Rule!8842 List!29865) Option!5936)

(assert (=> b!2585588 (= lt!909242 (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654))))

(declare-fun size!23078 (List!29865) Int)

(assert (=> b!2585588 (= lt!909243 (size!23078 lt!909246))))

(declare-fun apply!7026 (TokenValueInjection!8926 BalanceConc!18188) TokenValue!4743)

(declare-fun seqFromList!3161 (List!29865) BalanceConc!18188)

(assert (=> b!2585588 (= lt!909244 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909246)))))

(declare-datatypes ((Unit!43600 0))(
  ( (Unit!43601) )
))
(declare-fun lt!909245 () Unit!43600)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 (LexerInterface!4118 List!29866 List!29865 List!29865 List!29865 Rule!8842) Unit!43600)

(assert (=> b!2585588 (= lt!909245 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909246 input!3654 suffix!1684 rule!570))))

(assert (=> b!2585588 (= lt!909246 (list!11253 (charsOf!2850 token!562)))))

(declare-fun b!2585589 () Bool)

(declare-fun tp!820864 () Bool)

(declare-fun e!1631402 () Bool)

(assert (=> b!2585589 (= e!1631396 (and tp!820864 (inv!40193 (tag!5011 (rule!6887 token!562))) (inv!40196 (transformation!4521 (rule!6887 token!562))) e!1631402))))

(declare-fun b!2585590 () Bool)

(declare-fun res!1087378 () Bool)

(assert (=> b!2585590 (=> res!1087378 e!1631397)))

(declare-fun rulesValid!1693 (LexerInterface!4118 List!29866) Bool)

(assert (=> b!2585590 (= res!1087378 (not (rulesValid!1693 thiss!28211 rs!798)))))

(declare-fun lambda!95783 () Int)

(declare-fun lambda!95784 () Int)

(declare-fun b!2585591 () Bool)

(declare-datatypes ((List!29867 0))(
  ( (Nil!29767) (Cons!29767 (h!35187 Regex!7665) (t!212232 List!29867)) )
))
(declare-fun forall!6065 (List!29867 Int) Bool)

(declare-fun map!6607 (List!29866 Int) List!29867)

(assert (=> b!2585591 (= e!1631397 (forall!6065 (map!6607 rs!798 lambda!95783) lambda!95784))))

(declare-fun lt!909240 () Unit!43600)

(declare-fun lemma!560 (List!29865 Rule!8842 List!29866 List!29865 LexerInterface!4118 Token!8512 List!29866) Unit!43600)

(assert (=> b!2585591 (= lt!909240 (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 rs!798)))))

(declare-fun b!2585592 () Bool)

(declare-fun matchR!3598 (Regex!7665 List!29865) Bool)

(assert (=> b!2585592 (= e!1631407 (not (not (matchR!3598 (regex!4521 rule!570) lt!909247))))))

(declare-fun ruleValid!1527 (LexerInterface!4118 Rule!8842) Bool)

(assert (=> b!2585592 (ruleValid!1527 thiss!28211 rule!570)))

(declare-fun lt!909241 () Unit!43600)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!920 (LexerInterface!4118 Rule!8842 List!29866) Unit!43600)

(assert (=> b!2585592 (= lt!909241 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!920 thiss!28211 rule!570 rules!4580))))

(declare-fun tp!820862 () Bool)

(declare-fun b!2585593 () Bool)

(assert (=> b!2585593 (= e!1631409 (and tp!820862 (inv!40193 (tag!5011 rule!570)) (inv!40196 (transformation!4521 rule!570)) e!1631413))))

(declare-fun b!2585594 () Bool)

(declare-fun tp!820863 () Bool)

(assert (=> b!2585594 (= e!1631395 (and e!1631393 tp!820863))))

(assert (=> b!2585595 (= e!1631402 (and tp!820855 tp!820865))))

(declare-fun b!2585596 () Bool)

(declare-fun res!1087379 () Bool)

(assert (=> b!2585596 (=> res!1087379 e!1631397)))

(assert (=> b!2585596 (= res!1087379 (not (matchR!3598 (regex!4521 rule!570) lt!909246)))))

(declare-fun b!2585597 () Bool)

(declare-fun res!1087386 () Bool)

(assert (=> b!2585597 (=> res!1087386 e!1631397)))

(assert (=> b!2585597 (= res!1087386 ((_ is Nil!29766) rs!798))))

(assert (= (and start!250412 res!1087380) b!2585576))

(assert (= (and b!2585576 res!1087381) b!2585584))

(assert (= (and b!2585584 res!1087382) b!2585587))

(assert (= (and b!2585587 res!1087389) b!2585585))

(assert (= (and b!2585585 res!1087384) b!2585580))

(assert (= (and b!2585580 res!1087388) b!2585581))

(assert (= (and b!2585581 res!1087383) b!2585592))

(assert (= (and b!2585581 res!1087385) b!2585588))

(assert (= (and b!2585588 (not res!1087387)) b!2585596))

(assert (= (and b!2585596 (not res!1087379)) b!2585590))

(assert (= (and b!2585590 (not res!1087378)) b!2585597))

(assert (= (and b!2585597 (not res!1087386)) b!2585591))

(assert (= b!2585583 b!2585577))

(assert (= b!2585582 b!2585583))

(assert (= (and start!250412 ((_ is Cons!29766) rules!4580)) b!2585582))

(assert (= (and start!250412 ((_ is Cons!29765) input!3654)) b!2585573))

(assert (= b!2585589 b!2585595))

(assert (= b!2585574 b!2585589))

(assert (= start!250412 b!2585574))

(assert (= (and start!250412 ((_ is Cons!29765) suffix!1684)) b!2585575))

(assert (= b!2585579 b!2585578))

(assert (= b!2585594 b!2585579))

(assert (= (and start!250412 ((_ is Cons!29766) rs!798)) b!2585594))

(assert (= b!2585593 b!2585586))

(assert (= start!250412 b!2585593))

(declare-fun m!2921681 () Bool)

(assert (=> b!2585581 m!2921681))

(declare-fun m!2921683 () Bool)

(assert (=> b!2585581 m!2921683))

(assert (=> b!2585581 m!2921683))

(declare-fun m!2921685 () Bool)

(assert (=> b!2585581 m!2921685))

(declare-fun m!2921687 () Bool)

(assert (=> b!2585576 m!2921687))

(declare-fun m!2921689 () Bool)

(assert (=> b!2585590 m!2921689))

(declare-fun m!2921691 () Bool)

(assert (=> b!2585596 m!2921691))

(declare-fun m!2921693 () Bool)

(assert (=> b!2585579 m!2921693))

(declare-fun m!2921695 () Bool)

(assert (=> b!2585579 m!2921695))

(declare-fun m!2921697 () Bool)

(assert (=> b!2585574 m!2921697))

(declare-fun m!2921699 () Bool)

(assert (=> b!2585589 m!2921699))

(declare-fun m!2921701 () Bool)

(assert (=> b!2585589 m!2921701))

(declare-fun m!2921703 () Bool)

(assert (=> b!2585583 m!2921703))

(declare-fun m!2921705 () Bool)

(assert (=> b!2585583 m!2921705))

(declare-fun m!2921707 () Bool)

(assert (=> b!2585587 m!2921707))

(declare-fun m!2921709 () Bool)

(assert (=> b!2585585 m!2921709))

(declare-fun m!2921711 () Bool)

(assert (=> b!2585591 m!2921711))

(assert (=> b!2585591 m!2921711))

(declare-fun m!2921713 () Bool)

(assert (=> b!2585591 m!2921713))

(declare-fun m!2921715 () Bool)

(assert (=> b!2585591 m!2921715))

(declare-fun m!2921717 () Bool)

(assert (=> b!2585584 m!2921717))

(assert (=> b!2585588 m!2921683))

(assert (=> b!2585588 m!2921685))

(declare-fun m!2921719 () Bool)

(assert (=> b!2585588 m!2921719))

(declare-fun m!2921721 () Bool)

(assert (=> b!2585588 m!2921721))

(assert (=> b!2585588 m!2921683))

(declare-fun m!2921723 () Bool)

(assert (=> b!2585588 m!2921723))

(declare-fun m!2921725 () Bool)

(assert (=> b!2585588 m!2921725))

(assert (=> b!2585588 m!2921719))

(declare-fun m!2921727 () Bool)

(assert (=> b!2585588 m!2921727))

(declare-fun m!2921729 () Bool)

(assert (=> b!2585592 m!2921729))

(declare-fun m!2921731 () Bool)

(assert (=> b!2585592 m!2921731))

(declare-fun m!2921733 () Bool)

(assert (=> b!2585592 m!2921733))

(declare-fun m!2921735 () Bool)

(assert (=> b!2585593 m!2921735))

(declare-fun m!2921737 () Bool)

(assert (=> b!2585593 m!2921737))

(declare-fun m!2921739 () Bool)

(assert (=> start!250412 m!2921739))

(check-sat (not b!2585575) (not b_next!73569) (not b_next!73571) (not b!2585576) b_and!189537 (not start!250412) (not b_next!73563) (not b!2585579) (not b!2585593) tp_is_empty!13225 (not b!2585594) (not b!2585585) b_and!189543 (not b!2585574) b_and!189545 (not b!2585590) b_and!189541 b_and!189535 (not b!2585591) (not b_next!73567) (not b!2585573) (not b!2585588) (not b!2585596) (not b_next!73561) (not b!2585584) (not b!2585589) (not b!2585582) (not b_next!73565) b_and!189539 (not b_next!73559) (not b!2585592) b_and!189531 (not b_next!73557) (not b!2585587) b_and!189533 (not b!2585583) (not b!2585581))
(check-sat (not b_next!73569) (not b_next!73571) b_and!189537 (not b_next!73567) (not b_next!73563) b_and!189543 b_and!189545 b_and!189541 b_and!189535 b_and!189533 (not b_next!73561) (not b_next!73565) b_and!189539 (not b_next!73559) b_and!189531 (not b_next!73557))
(get-model)

(declare-fun d!732078 () Bool)

(declare-fun list!11254 (Conc!9287) List!29865)

(assert (=> d!732078 (= (list!11253 (charsOf!2850 token!562)) (list!11254 (c!416819 (charsOf!2850 token!562))))))

(declare-fun bs!471689 () Bool)

(assert (= bs!471689 d!732078))

(declare-fun m!2921741 () Bool)

(assert (=> bs!471689 m!2921741))

(assert (=> b!2585588 d!732078))

(declare-fun b!2585683 () Bool)

(declare-fun e!1631460 () Bool)

(declare-fun lt!909268 () Option!5936)

(declare-fun get!9380 (Option!5936) tuple2!29718)

(assert (=> b!2585683 (= e!1631460 (= (size!23077 (_1!17401 (get!9380 lt!909268))) (size!23078 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun b!2585684 () Bool)

(declare-fun e!1631461 () Bool)

(declare-datatypes ((tuple2!29720 0))(
  ( (tuple2!29721 (_1!17402 List!29865) (_2!17402 List!29865)) )
))
(declare-fun findLongestMatchInner!756 (Regex!7665 List!29865 Int List!29865 List!29865 Int) tuple2!29720)

(assert (=> b!2585684 (= e!1631461 (matchR!3598 (regex!4521 rule!570) (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun b!2585685 () Bool)

(declare-fun e!1631458 () Bool)

(assert (=> b!2585685 (= e!1631458 e!1631460)))

(declare-fun res!1087452 () Bool)

(assert (=> b!2585685 (=> (not res!1087452) (not e!1631460))))

(assert (=> b!2585685 (= res!1087452 (matchR!3598 (regex!4521 rule!570) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun b!2585686 () Bool)

(declare-fun res!1087449 () Bool)

(assert (=> b!2585686 (=> (not res!1087449) (not e!1631460))))

(assert (=> b!2585686 (= res!1087449 (= (value!146096 (_1!17401 (get!9380 lt!909268))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2585687 () Bool)

(declare-fun res!1087451 () Bool)

(assert (=> b!2585687 (=> (not res!1087451) (not e!1631460))))

(assert (=> b!2585687 (= res!1087451 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))) (_2!17401 (get!9380 lt!909268))) input!3654))))

(declare-fun b!2585688 () Bool)

(declare-fun res!1087450 () Bool)

(assert (=> b!2585688 (=> (not res!1087450) (not e!1631460))))

(assert (=> b!2585688 (= res!1087450 (< (size!23078 (_2!17401 (get!9380 lt!909268))) (size!23078 input!3654)))))

(declare-fun b!2585689 () Bool)

(declare-fun e!1631459 () Option!5936)

(declare-fun lt!909270 () tuple2!29720)

(declare-fun size!23079 (BalanceConc!18188) Int)

(assert (=> b!2585689 (= e!1631459 (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 (_1!17402 lt!909270))) rule!570 (size!23079 (seqFromList!3161 (_1!17402 lt!909270))) (_1!17402 lt!909270)) (_2!17402 lt!909270))))))

(declare-fun lt!909267 () Unit!43600)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!729 (Regex!7665 List!29865) Unit!43600)

(assert (=> b!2585689 (= lt!909267 (longestMatchIsAcceptedByMatchOrIsEmpty!729 (regex!4521 rule!570) input!3654))))

(declare-fun res!1087453 () Bool)

(declare-fun isEmpty!17110 (List!29865) Bool)

(assert (=> b!2585689 (= res!1087453 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2585689 (=> res!1087453 e!1631461)))

(assert (=> b!2585689 e!1631461))

(declare-fun lt!909269 () Unit!43600)

(assert (=> b!2585689 (= lt!909269 lt!909267)))

(declare-fun lt!909271 () Unit!43600)

(declare-fun lemmaSemiInverse!1107 (TokenValueInjection!8926 BalanceConc!18188) Unit!43600)

(assert (=> b!2585689 (= lt!909271 (lemmaSemiInverse!1107 (transformation!4521 rule!570) (seqFromList!3161 (_1!17402 lt!909270))))))

(declare-fun d!732080 () Bool)

(assert (=> d!732080 e!1631458))

(declare-fun res!1087454 () Bool)

(assert (=> d!732080 (=> res!1087454 e!1631458)))

(declare-fun isEmpty!17111 (Option!5936) Bool)

(assert (=> d!732080 (= res!1087454 (isEmpty!17111 lt!909268))))

(assert (=> d!732080 (= lt!909268 e!1631459)))

(declare-fun c!416835 () Bool)

(assert (=> d!732080 (= c!416835 (isEmpty!17110 (_1!17402 lt!909270)))))

(declare-fun findLongestMatch!685 (Regex!7665 List!29865) tuple2!29720)

(assert (=> d!732080 (= lt!909270 (findLongestMatch!685 (regex!4521 rule!570) input!3654))))

(assert (=> d!732080 (ruleValid!1527 thiss!28211 rule!570)))

(assert (=> d!732080 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) lt!909268)))

(declare-fun b!2585690 () Bool)

(assert (=> b!2585690 (= e!1631459 None!5935)))

(declare-fun b!2585691 () Bool)

(declare-fun res!1087448 () Bool)

(assert (=> b!2585691 (=> (not res!1087448) (not e!1631460))))

(assert (=> b!2585691 (= res!1087448 (= (rule!6887 (_1!17401 (get!9380 lt!909268))) rule!570))))

(assert (= (and d!732080 c!416835) b!2585690))

(assert (= (and d!732080 (not c!416835)) b!2585689))

(assert (= (and b!2585689 (not res!1087453)) b!2585684))

(assert (= (and d!732080 (not res!1087454)) b!2585685))

(assert (= (and b!2585685 res!1087452) b!2585687))

(assert (= (and b!2585687 res!1087451) b!2585688))

(assert (= (and b!2585688 res!1087450) b!2585691))

(assert (= (and b!2585691 res!1087448) b!2585686))

(assert (= (and b!2585686 res!1087449) b!2585683))

(declare-fun m!2921789 () Bool)

(assert (=> b!2585688 m!2921789))

(declare-fun m!2921791 () Bool)

(assert (=> b!2585688 m!2921791))

(declare-fun m!2921793 () Bool)

(assert (=> b!2585688 m!2921793))

(declare-fun m!2921795 () Bool)

(assert (=> d!732080 m!2921795))

(declare-fun m!2921797 () Bool)

(assert (=> d!732080 m!2921797))

(declare-fun m!2921799 () Bool)

(assert (=> d!732080 m!2921799))

(assert (=> d!732080 m!2921731))

(declare-fun m!2921801 () Bool)

(assert (=> b!2585684 m!2921801))

(assert (=> b!2585684 m!2921793))

(assert (=> b!2585684 m!2921801))

(assert (=> b!2585684 m!2921793))

(declare-fun m!2921803 () Bool)

(assert (=> b!2585684 m!2921803))

(declare-fun m!2921805 () Bool)

(assert (=> b!2585684 m!2921805))

(assert (=> b!2585691 m!2921789))

(assert (=> b!2585686 m!2921789))

(declare-fun m!2921807 () Bool)

(assert (=> b!2585686 m!2921807))

(assert (=> b!2585686 m!2921807))

(declare-fun m!2921809 () Bool)

(assert (=> b!2585686 m!2921809))

(assert (=> b!2585685 m!2921789))

(declare-fun m!2921811 () Bool)

(assert (=> b!2585685 m!2921811))

(assert (=> b!2585685 m!2921811))

(declare-fun m!2921813 () Bool)

(assert (=> b!2585685 m!2921813))

(assert (=> b!2585685 m!2921813))

(declare-fun m!2921815 () Bool)

(assert (=> b!2585685 m!2921815))

(assert (=> b!2585683 m!2921789))

(declare-fun m!2921817 () Bool)

(assert (=> b!2585683 m!2921817))

(assert (=> b!2585687 m!2921789))

(assert (=> b!2585687 m!2921811))

(assert (=> b!2585687 m!2921811))

(assert (=> b!2585687 m!2921813))

(assert (=> b!2585687 m!2921813))

(declare-fun m!2921819 () Bool)

(assert (=> b!2585687 m!2921819))

(declare-fun m!2921821 () Bool)

(assert (=> b!2585689 m!2921821))

(declare-fun m!2921823 () Bool)

(assert (=> b!2585689 m!2921823))

(assert (=> b!2585689 m!2921801))

(assert (=> b!2585689 m!2921793))

(assert (=> b!2585689 m!2921803))

(assert (=> b!2585689 m!2921821))

(declare-fun m!2921825 () Bool)

(assert (=> b!2585689 m!2921825))

(assert (=> b!2585689 m!2921821))

(declare-fun m!2921827 () Bool)

(assert (=> b!2585689 m!2921827))

(assert (=> b!2585689 m!2921801))

(assert (=> b!2585689 m!2921793))

(declare-fun m!2921829 () Bool)

(assert (=> b!2585689 m!2921829))

(assert (=> b!2585689 m!2921821))

(declare-fun m!2921831 () Bool)

(assert (=> b!2585689 m!2921831))

(assert (=> b!2585588 d!732080))

(declare-fun d!732096 () Bool)

(assert (=> d!732096 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909246)) rule!570 (size!23078 lt!909246) lt!909246) suffix!1684)))))

(declare-fun lt!909289 () Unit!43600)

(declare-fun choose!15238 (LexerInterface!4118 List!29866 List!29865 List!29865 List!29865 Rule!8842) Unit!43600)

(assert (=> d!732096 (= lt!909289 (choose!15238 thiss!28211 rules!4580 lt!909246 input!3654 suffix!1684 rule!570))))

(assert (=> d!732096 (not (isEmpty!17109 rules!4580))))

(assert (=> d!732096 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909246 input!3654 suffix!1684 rule!570) lt!909289)))

(declare-fun bs!471692 () Bool)

(assert (= bs!471692 d!732096))

(assert (=> bs!471692 m!2921719))

(assert (=> bs!471692 m!2921725))

(assert (=> bs!471692 m!2921687))

(assert (=> bs!471692 m!2921723))

(assert (=> bs!471692 m!2921719))

(assert (=> bs!471692 m!2921721))

(declare-fun m!2921857 () Bool)

(assert (=> bs!471692 m!2921857))

(assert (=> b!2585588 d!732096))

(declare-fun d!732108 () Bool)

(declare-fun lt!909292 () Int)

(assert (=> d!732108 (>= lt!909292 0)))

(declare-fun e!1631471 () Int)

(assert (=> d!732108 (= lt!909292 e!1631471)))

(declare-fun c!416841 () Bool)

(assert (=> d!732108 (= c!416841 ((_ is Nil!29765) lt!909246))))

(assert (=> d!732108 (= (size!23078 lt!909246) lt!909292)))

(declare-fun b!2585706 () Bool)

(assert (=> b!2585706 (= e!1631471 0)))

(declare-fun b!2585707 () Bool)

(assert (=> b!2585707 (= e!1631471 (+ 1 (size!23078 (t!212230 lt!909246))))))

(assert (= (and d!732108 c!416841) b!2585706))

(assert (= (and d!732108 (not c!416841)) b!2585707))

(declare-fun m!2921859 () Bool)

(assert (=> b!2585707 m!2921859))

(assert (=> b!2585588 d!732108))

(declare-fun d!732110 () Bool)

(declare-fun fromListB!1430 (List!29865) BalanceConc!18188)

(assert (=> d!732110 (= (seqFromList!3161 lt!909246) (fromListB!1430 lt!909246))))

(declare-fun bs!471693 () Bool)

(assert (= bs!471693 d!732110))

(declare-fun m!2921861 () Bool)

(assert (=> bs!471693 m!2921861))

(assert (=> b!2585588 d!732110))

(declare-fun d!732112 () Bool)

(declare-fun dynLambda!12580 (Int BalanceConc!18188) TokenValue!4743)

(assert (=> d!732112 (= (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909246)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))))

(declare-fun b_lambda!76781 () Bool)

(assert (=> (not b_lambda!76781) (not d!732112)))

(declare-fun t!212242 () Bool)

(declare-fun tb!140849 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570))) t!212242) tb!140849))

(declare-fun result!175114 () Bool)

(assert (=> tb!140849 (= result!175114 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun m!2921863 () Bool)

(assert (=> tb!140849 m!2921863))

(assert (=> d!732112 t!212242))

(declare-fun b_and!189555 () Bool)

(assert (= b_and!189531 (and (=> t!212242 result!175114) b_and!189555)))

(declare-fun t!212244 () Bool)

(declare-fun tb!140851 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) t!212244) tb!140851))

(declare-fun result!175118 () Bool)

(assert (= result!175118 result!175114))

(assert (=> d!732112 t!212244))

(declare-fun b_and!189557 () Bool)

(assert (= b_and!189535 (and (=> t!212244 result!175118) b_and!189557)))

(declare-fun tb!140853 () Bool)

(declare-fun t!212246 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570))) t!212246) tb!140853))

(declare-fun result!175120 () Bool)

(assert (= result!175120 result!175114))

(assert (=> d!732112 t!212246))

(declare-fun b_and!189559 () Bool)

(assert (= b_and!189539 (and (=> t!212246 result!175120) b_and!189559)))

(declare-fun tb!140855 () Bool)

(declare-fun t!212248 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570))) t!212248) tb!140855))

(declare-fun result!175122 () Bool)

(assert (= result!175122 result!175114))

(assert (=> d!732112 t!212248))

(declare-fun b_and!189561 () Bool)

(assert (= b_and!189543 (and (=> t!212248 result!175122) b_and!189561)))

(assert (=> d!732112 m!2921719))

(declare-fun m!2921865 () Bool)

(assert (=> d!732112 m!2921865))

(assert (=> b!2585588 d!732112))

(declare-fun d!732114 () Bool)

(declare-fun lt!909295 () BalanceConc!18188)

(assert (=> d!732114 (= (list!11253 lt!909295) (originalCharacters!5287 token!562))))

(declare-fun dynLambda!12582 (Int TokenValue!4743) BalanceConc!18188)

(assert (=> d!732114 (= lt!909295 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))

(assert (=> d!732114 (= (charsOf!2850 token!562) lt!909295)))

(declare-fun b_lambda!76783 () Bool)

(assert (=> (not b_lambda!76783) (not d!732114)))

(declare-fun t!212250 () Bool)

(declare-fun tb!140857 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212250) tb!140857))

(declare-fun b!2585714 () Bool)

(declare-fun e!1631477 () Bool)

(declare-fun tp!820872 () Bool)

(declare-fun inv!40200 (Conc!9287) Bool)

(assert (=> b!2585714 (= e!1631477 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) tp!820872))))

(declare-fun result!175124 () Bool)

(declare-fun inv!40201 (BalanceConc!18188) Bool)

(assert (=> tb!140857 (= result!175124 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))) e!1631477))))

(assert (= tb!140857 b!2585714))

(declare-fun m!2921867 () Bool)

(assert (=> b!2585714 m!2921867))

(declare-fun m!2921869 () Bool)

(assert (=> tb!140857 m!2921869))

(assert (=> d!732114 t!212250))

(declare-fun b_and!189563 () Bool)

(assert (= b_and!189533 (and (=> t!212250 result!175124) b_and!189563)))

(declare-fun tb!140859 () Bool)

(declare-fun t!212252 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212252) tb!140859))

(declare-fun result!175128 () Bool)

(assert (= result!175128 result!175124))

(assert (=> d!732114 t!212252))

(declare-fun b_and!189565 () Bool)

(assert (= b_and!189537 (and (=> t!212252 result!175128) b_and!189565)))

(declare-fun t!212254 () Bool)

(declare-fun tb!140861 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212254) tb!140861))

(declare-fun result!175130 () Bool)

(assert (= result!175130 result!175124))

(assert (=> d!732114 t!212254))

(declare-fun b_and!189567 () Bool)

(assert (= b_and!189541 (and (=> t!212254 result!175130) b_and!189567)))

(declare-fun tb!140863 () Bool)

(declare-fun t!212256 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212256) tb!140863))

(declare-fun result!175132 () Bool)

(assert (= result!175132 result!175124))

(assert (=> d!732114 t!212256))

(declare-fun b_and!189569 () Bool)

(assert (= b_and!189545 (and (=> t!212256 result!175132) b_and!189569)))

(declare-fun m!2921871 () Bool)

(assert (=> d!732114 m!2921871))

(declare-fun m!2921873 () Bool)

(assert (=> d!732114 m!2921873))

(assert (=> b!2585588 d!732114))

(declare-fun d!732116 () Bool)

(declare-fun lt!909298 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4113 (List!29866) (InoxSet Rule!8842))

(assert (=> d!732116 (= lt!909298 (select (content!4113 rules!4580) rule!570))))

(declare-fun e!1631482 () Bool)

(assert (=> d!732116 (= lt!909298 e!1631482)))

(declare-fun res!1087463 () Bool)

(assert (=> d!732116 (=> (not res!1087463) (not e!1631482))))

(assert (=> d!732116 (= res!1087463 ((_ is Cons!29766) rules!4580))))

(assert (=> d!732116 (= (contains!5325 rules!4580 rule!570) lt!909298)))

(declare-fun b!2585719 () Bool)

(declare-fun e!1631483 () Bool)

(assert (=> b!2585719 (= e!1631482 e!1631483)))

(declare-fun res!1087464 () Bool)

(assert (=> b!2585719 (=> res!1087464 e!1631483)))

(assert (=> b!2585719 (= res!1087464 (= (h!35186 rules!4580) rule!570))))

(declare-fun b!2585720 () Bool)

(assert (=> b!2585720 (= e!1631483 (contains!5325 (t!212231 rules!4580) rule!570))))

(assert (= (and d!732116 res!1087463) b!2585719))

(assert (= (and b!2585719 (not res!1087464)) b!2585720))

(declare-fun m!2921875 () Bool)

(assert (=> d!732116 m!2921875))

(declare-fun m!2921877 () Bool)

(assert (=> d!732116 m!2921877))

(declare-fun m!2921879 () Bool)

(assert (=> b!2585720 m!2921879))

(assert (=> b!2585587 d!732116))

(declare-fun d!732118 () Bool)

(assert (=> d!732118 (= (inv!40193 (tag!5011 (rule!6887 token!562))) (= (mod (str.len (value!146095 (tag!5011 (rule!6887 token!562)))) 2) 0))))

(assert (=> b!2585589 d!732118))

(declare-fun d!732120 () Bool)

(declare-fun res!1087467 () Bool)

(declare-fun e!1631486 () Bool)

(assert (=> d!732120 (=> (not res!1087467) (not e!1631486))))

(declare-fun semiInverseModEq!1889 (Int Int) Bool)

(assert (=> d!732120 (= res!1087467 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))))))

(assert (=> d!732120 (= (inv!40196 (transformation!4521 (rule!6887 token!562))) e!1631486)))

(declare-fun b!2585723 () Bool)

(declare-fun equivClasses!1790 (Int Int) Bool)

(assert (=> b!2585723 (= e!1631486 (equivClasses!1790 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))))))

(assert (= (and d!732120 res!1087467) b!2585723))

(declare-fun m!2921881 () Bool)

(assert (=> d!732120 m!2921881))

(declare-fun m!2921883 () Bool)

(assert (=> b!2585723 m!2921883))

(assert (=> b!2585589 d!732120))

(declare-fun d!732122 () Bool)

(assert (=> d!732122 true))

(declare-fun lt!909301 () Bool)

(declare-fun rulesValidInductive!1595 (LexerInterface!4118 List!29866) Bool)

(assert (=> d!732122 (= lt!909301 (rulesValidInductive!1595 thiss!28211 rs!798))))

(declare-fun lambda!95796 () Int)

(declare-fun forall!6067 (List!29866 Int) Bool)

(assert (=> d!732122 (= lt!909301 (forall!6067 rs!798 lambda!95796))))

(assert (=> d!732122 (= (rulesValid!1693 thiss!28211 rs!798) lt!909301)))

(declare-fun bs!471694 () Bool)

(assert (= bs!471694 d!732122))

(declare-fun m!2921885 () Bool)

(assert (=> bs!471694 m!2921885))

(declare-fun m!2921887 () Bool)

(assert (=> bs!471694 m!2921887))

(assert (=> b!2585590 d!732122))

(declare-fun d!732124 () Bool)

(assert (=> d!732124 (= (inv!40193 (tag!5011 (h!35186 rs!798))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 rs!798)))) 2) 0))))

(assert (=> b!2585579 d!732124))

(declare-fun d!732126 () Bool)

(declare-fun res!1087468 () Bool)

(declare-fun e!1631488 () Bool)

(assert (=> d!732126 (=> (not res!1087468) (not e!1631488))))

(assert (=> d!732126 (= res!1087468 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))))))

(assert (=> d!732126 (= (inv!40196 (transformation!4521 (h!35186 rs!798))) e!1631488)))

(declare-fun b!2585730 () Bool)

(assert (=> b!2585730 (= e!1631488 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))))))

(assert (= (and d!732126 res!1087468) b!2585730))

(declare-fun m!2921889 () Bool)

(assert (=> d!732126 m!2921889))

(declare-fun m!2921891 () Bool)

(assert (=> b!2585730 m!2921891))

(assert (=> b!2585579 d!732126))

(declare-fun b!2585782 () Bool)

(declare-fun e!1631516 () Bool)

(declare-fun lt!909319 () Bool)

(assert (=> b!2585782 (= e!1631516 (not lt!909319))))

(declare-fun d!732128 () Bool)

(declare-fun e!1631517 () Bool)

(assert (=> d!732128 e!1631517))

(declare-fun c!416852 () Bool)

(assert (=> d!732128 (= c!416852 ((_ is EmptyExpr!7665) (regex!4521 rule!570)))))

(declare-fun e!1631511 () Bool)

(assert (=> d!732128 (= lt!909319 e!1631511)))

(declare-fun c!416851 () Bool)

(assert (=> d!732128 (= c!416851 (isEmpty!17110 lt!909247))))

(declare-fun validRegex!3279 (Regex!7665) Bool)

(assert (=> d!732128 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732128 (= (matchR!3598 (regex!4521 rule!570) lt!909247) lt!909319)))

(declare-fun b!2585783 () Bool)

(declare-fun res!1087513 () Bool)

(declare-fun e!1631514 () Bool)

(assert (=> b!2585783 (=> (not res!1087513) (not e!1631514))))

(declare-fun tail!4135 (List!29865) List!29865)

(assert (=> b!2585783 (= res!1087513 (isEmpty!17110 (tail!4135 lt!909247)))))

(declare-fun b!2585784 () Bool)

(declare-fun derivativeStep!2222 (Regex!7665 C!15488) Regex!7665)

(declare-fun head!5862 (List!29865) C!15488)

(assert (=> b!2585784 (= e!1631511 (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (tail!4135 lt!909247)))))

(declare-fun b!2585785 () Bool)

(declare-fun res!1087506 () Bool)

(assert (=> b!2585785 (=> (not res!1087506) (not e!1631514))))

(declare-fun call!166951 () Bool)

(assert (=> b!2585785 (= res!1087506 (not call!166951))))

(declare-fun b!2585786 () Bool)

(assert (=> b!2585786 (= e!1631517 (= lt!909319 call!166951))))

(declare-fun b!2585787 () Bool)

(declare-fun res!1087512 () Bool)

(declare-fun e!1631513 () Bool)

(assert (=> b!2585787 (=> res!1087512 e!1631513)))

(assert (=> b!2585787 (= res!1087512 (not (isEmpty!17110 (tail!4135 lt!909247))))))

(declare-fun b!2585788 () Bool)

(declare-fun res!1087508 () Bool)

(declare-fun e!1631515 () Bool)

(assert (=> b!2585788 (=> res!1087508 e!1631515)))

(assert (=> b!2585788 (= res!1087508 e!1631514)))

(declare-fun res!1087511 () Bool)

(assert (=> b!2585788 (=> (not res!1087511) (not e!1631514))))

(assert (=> b!2585788 (= res!1087511 lt!909319)))

(declare-fun b!2585789 () Bool)

(declare-fun e!1631512 () Bool)

(assert (=> b!2585789 (= e!1631515 e!1631512)))

(declare-fun res!1087510 () Bool)

(assert (=> b!2585789 (=> (not res!1087510) (not e!1631512))))

(assert (=> b!2585789 (= res!1087510 (not lt!909319))))

(declare-fun b!2585790 () Bool)

(declare-fun res!1087509 () Bool)

(assert (=> b!2585790 (=> res!1087509 e!1631515)))

(assert (=> b!2585790 (= res!1087509 (not ((_ is ElementMatch!7665) (regex!4521 rule!570))))))

(assert (=> b!2585790 (= e!1631516 e!1631515)))

(declare-fun b!2585791 () Bool)

(assert (=> b!2585791 (= e!1631514 (= (head!5862 lt!909247) (c!416820 (regex!4521 rule!570))))))

(declare-fun b!2585792 () Bool)

(declare-fun nullable!2570 (Regex!7665) Bool)

(assert (=> b!2585792 (= e!1631511 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun b!2585793 () Bool)

(assert (=> b!2585793 (= e!1631517 e!1631516)))

(declare-fun c!416853 () Bool)

(assert (=> b!2585793 (= c!416853 ((_ is EmptyLang!7665) (regex!4521 rule!570)))))

(declare-fun b!2585794 () Bool)

(assert (=> b!2585794 (= e!1631513 (not (= (head!5862 lt!909247) (c!416820 (regex!4521 rule!570)))))))

(declare-fun bm!166946 () Bool)

(assert (=> bm!166946 (= call!166951 (isEmpty!17110 lt!909247))))

(declare-fun b!2585795 () Bool)

(assert (=> b!2585795 (= e!1631512 e!1631513)))

(declare-fun res!1087507 () Bool)

(assert (=> b!2585795 (=> res!1087507 e!1631513)))

(assert (=> b!2585795 (= res!1087507 call!166951)))

(assert (= (and d!732128 c!416851) b!2585792))

(assert (= (and d!732128 (not c!416851)) b!2585784))

(assert (= (and d!732128 c!416852) b!2585786))

(assert (= (and d!732128 (not c!416852)) b!2585793))

(assert (= (and b!2585793 c!416853) b!2585782))

(assert (= (and b!2585793 (not c!416853)) b!2585790))

(assert (= (and b!2585790 (not res!1087509)) b!2585788))

(assert (= (and b!2585788 res!1087511) b!2585785))

(assert (= (and b!2585785 res!1087506) b!2585783))

(assert (= (and b!2585783 res!1087513) b!2585791))

(assert (= (and b!2585788 (not res!1087508)) b!2585789))

(assert (= (and b!2585789 res!1087510) b!2585795))

(assert (= (and b!2585795 (not res!1087507)) b!2585787))

(assert (= (and b!2585787 (not res!1087512)) b!2585794))

(assert (= (or b!2585786 b!2585785 b!2585795) bm!166946))

(declare-fun m!2921927 () Bool)

(assert (=> bm!166946 m!2921927))

(declare-fun m!2921929 () Bool)

(assert (=> b!2585784 m!2921929))

(assert (=> b!2585784 m!2921929))

(declare-fun m!2921931 () Bool)

(assert (=> b!2585784 m!2921931))

(declare-fun m!2921933 () Bool)

(assert (=> b!2585784 m!2921933))

(assert (=> b!2585784 m!2921931))

(assert (=> b!2585784 m!2921933))

(declare-fun m!2921935 () Bool)

(assert (=> b!2585784 m!2921935))

(assert (=> b!2585791 m!2921929))

(assert (=> b!2585783 m!2921933))

(assert (=> b!2585783 m!2921933))

(declare-fun m!2921937 () Bool)

(assert (=> b!2585783 m!2921937))

(assert (=> b!2585794 m!2921929))

(assert (=> d!732128 m!2921927))

(declare-fun m!2921939 () Bool)

(assert (=> d!732128 m!2921939))

(assert (=> b!2585787 m!2921933))

(assert (=> b!2585787 m!2921933))

(assert (=> b!2585787 m!2921937))

(declare-fun m!2921941 () Bool)

(assert (=> b!2585792 m!2921941))

(assert (=> b!2585592 d!732128))

(declare-fun d!732132 () Bool)

(declare-fun res!1087518 () Bool)

(declare-fun e!1631520 () Bool)

(assert (=> d!732132 (=> (not res!1087518) (not e!1631520))))

(assert (=> d!732132 (= res!1087518 (validRegex!3279 (regex!4521 rule!570)))))

(assert (=> d!732132 (= (ruleValid!1527 thiss!28211 rule!570) e!1631520)))

(declare-fun b!2585800 () Bool)

(declare-fun res!1087519 () Bool)

(assert (=> b!2585800 (=> (not res!1087519) (not e!1631520))))

(assert (=> b!2585800 (= res!1087519 (not (nullable!2570 (regex!4521 rule!570))))))

(declare-fun b!2585801 () Bool)

(assert (=> b!2585801 (= e!1631520 (not (= (tag!5011 rule!570) (String!33124 ""))))))

(assert (= (and d!732132 res!1087518) b!2585800))

(assert (= (and b!2585800 res!1087519) b!2585801))

(assert (=> d!732132 m!2921939))

(assert (=> b!2585800 m!2921941))

(assert (=> b!2585592 d!732132))

(declare-fun d!732134 () Bool)

(assert (=> d!732134 (ruleValid!1527 thiss!28211 rule!570)))

(declare-fun lt!909322 () Unit!43600)

(declare-fun choose!15239 (LexerInterface!4118 Rule!8842 List!29866) Unit!43600)

(assert (=> d!732134 (= lt!909322 (choose!15239 thiss!28211 rule!570 rules!4580))))

(assert (=> d!732134 (contains!5325 rules!4580 rule!570)))

(assert (=> d!732134 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!920 thiss!28211 rule!570 rules!4580) lt!909322)))

(declare-fun bs!471695 () Bool)

(assert (= bs!471695 d!732134))

(assert (=> bs!471695 m!2921731))

(declare-fun m!2921943 () Bool)

(assert (=> bs!471695 m!2921943))

(assert (=> bs!471695 m!2921707))

(assert (=> b!2585592 d!732134))

(declare-fun b!2585810 () Bool)

(declare-fun e!1631525 () List!29865)

(assert (=> b!2585810 (= e!1631525 suffix!1684)))

(declare-fun d!732136 () Bool)

(declare-fun e!1631526 () Bool)

(assert (=> d!732136 e!1631526))

(declare-fun res!1087524 () Bool)

(assert (=> d!732136 (=> (not res!1087524) (not e!1631526))))

(declare-fun lt!909327 () List!29865)

(declare-fun content!4114 (List!29865) (InoxSet C!15488))

(assert (=> d!732136 (= res!1087524 (= (content!4114 lt!909327) ((_ map or) (content!4114 lt!909247) (content!4114 suffix!1684))))))

(assert (=> d!732136 (= lt!909327 e!1631525)))

(declare-fun c!416856 () Bool)

(assert (=> d!732136 (= c!416856 ((_ is Nil!29765) lt!909247))))

(assert (=> d!732136 (= (++!7311 lt!909247 suffix!1684) lt!909327)))

(declare-fun b!2585811 () Bool)

(assert (=> b!2585811 (= e!1631525 (Cons!29765 (h!35185 lt!909247) (++!7311 (t!212230 lt!909247) suffix!1684)))))

(declare-fun b!2585812 () Bool)

(declare-fun res!1087525 () Bool)

(assert (=> b!2585812 (=> (not res!1087525) (not e!1631526))))

(assert (=> b!2585812 (= res!1087525 (= (size!23078 lt!909327) (+ (size!23078 lt!909247) (size!23078 suffix!1684))))))

(declare-fun b!2585813 () Bool)

(assert (=> b!2585813 (= e!1631526 (or (not (= suffix!1684 Nil!29765)) (= lt!909327 lt!909247)))))

(assert (= (and d!732136 c!416856) b!2585810))

(assert (= (and d!732136 (not c!416856)) b!2585811))

(assert (= (and d!732136 res!1087524) b!2585812))

(assert (= (and b!2585812 res!1087525) b!2585813))

(declare-fun m!2921945 () Bool)

(assert (=> d!732136 m!2921945))

(declare-fun m!2921947 () Bool)

(assert (=> d!732136 m!2921947))

(declare-fun m!2921949 () Bool)

(assert (=> d!732136 m!2921949))

(declare-fun m!2921951 () Bool)

(assert (=> b!2585811 m!2921951))

(declare-fun m!2921953 () Bool)

(assert (=> b!2585812 m!2921953))

(declare-fun m!2921955 () Bool)

(assert (=> b!2585812 m!2921955))

(declare-fun m!2921957 () Bool)

(assert (=> b!2585812 m!2921957))

(assert (=> b!2585581 d!732136))

(assert (=> b!2585581 d!732078))

(assert (=> b!2585581 d!732114))

(declare-fun d!732138 () Bool)

(declare-fun res!1087530 () Bool)

(declare-fun e!1631531 () Bool)

(assert (=> d!732138 (=> res!1087530 e!1631531)))

(assert (=> d!732138 (= res!1087530 ((_ is Nil!29767) (map!6607 rs!798 lambda!95783)))))

(assert (=> d!732138 (= (forall!6065 (map!6607 rs!798 lambda!95783) lambda!95784) e!1631531)))

(declare-fun b!2585818 () Bool)

(declare-fun e!1631532 () Bool)

(assert (=> b!2585818 (= e!1631531 e!1631532)))

(declare-fun res!1087531 () Bool)

(assert (=> b!2585818 (=> (not res!1087531) (not e!1631532))))

(declare-fun dynLambda!12585 (Int Regex!7665) Bool)

(assert (=> b!2585818 (= res!1087531 (dynLambda!12585 lambda!95784 (h!35187 (map!6607 rs!798 lambda!95783))))))

(declare-fun b!2585819 () Bool)

(assert (=> b!2585819 (= e!1631532 (forall!6065 (t!212232 (map!6607 rs!798 lambda!95783)) lambda!95784))))

(assert (= (and d!732138 (not res!1087530)) b!2585818))

(assert (= (and b!2585818 res!1087531) b!2585819))

(declare-fun b_lambda!76785 () Bool)

(assert (=> (not b_lambda!76785) (not b!2585818)))

(declare-fun m!2921963 () Bool)

(assert (=> b!2585818 m!2921963))

(declare-fun m!2921965 () Bool)

(assert (=> b!2585819 m!2921965))

(assert (=> b!2585591 d!732138))

(declare-fun d!732144 () Bool)

(declare-fun lt!909331 () List!29867)

(declare-fun size!23082 (List!29867) Int)

(declare-fun size!23083 (List!29866) Int)

(assert (=> d!732144 (= (size!23082 lt!909331) (size!23083 rs!798))))

(declare-fun e!1631535 () List!29867)

(assert (=> d!732144 (= lt!909331 e!1631535)))

(declare-fun c!416859 () Bool)

(assert (=> d!732144 (= c!416859 ((_ is Nil!29766) rs!798))))

(assert (=> d!732144 (= (map!6607 rs!798 lambda!95783) lt!909331)))

(declare-fun b!2585824 () Bool)

(assert (=> b!2585824 (= e!1631535 Nil!29767)))

(declare-fun b!2585825 () Bool)

(declare-fun $colon$colon!544 (List!29867 Regex!7665) List!29867)

(declare-fun dynLambda!12586 (Int Rule!8842) Regex!7665)

(assert (=> b!2585825 (= e!1631535 ($colon$colon!544 (map!6607 (t!212231 rs!798) lambda!95783) (dynLambda!12586 lambda!95783 (h!35186 rs!798))))))

(assert (= (and d!732144 c!416859) b!2585824))

(assert (= (and d!732144 (not c!416859)) b!2585825))

(declare-fun b_lambda!76787 () Bool)

(assert (=> (not b_lambda!76787) (not b!2585825)))

(declare-fun m!2921967 () Bool)

(assert (=> d!732144 m!2921967))

(declare-fun m!2921969 () Bool)

(assert (=> d!732144 m!2921969))

(declare-fun m!2921971 () Bool)

(assert (=> b!2585825 m!2921971))

(declare-fun m!2921973 () Bool)

(assert (=> b!2585825 m!2921973))

(assert (=> b!2585825 m!2921971))

(assert (=> b!2585825 m!2921973))

(declare-fun m!2921975 () Bool)

(assert (=> b!2585825 m!2921975))

(assert (=> b!2585591 d!732144))

(declare-fun bs!471698 () Bool)

(declare-fun d!732146 () Bool)

(assert (= bs!471698 (and d!732146 b!2585591)))

(declare-fun lambda!95801 () Int)

(assert (=> bs!471698 (= lambda!95801 lambda!95783)))

(declare-fun lambda!95802 () Int)

(assert (=> bs!471698 (= lambda!95802 lambda!95784)))

(assert (=> d!732146 (forall!6065 (map!6607 (t!212231 rs!798) lambda!95801) lambda!95802)))

(declare-fun lt!909346 () Unit!43600)

(declare-fun e!1631538 () Unit!43600)

(assert (=> d!732146 (= lt!909346 e!1631538)))

(declare-fun c!416862 () Bool)

(assert (=> d!732146 (= c!416862 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!732146 (rulesValid!1693 thiss!28211 (t!212231 rs!798))))

(declare-fun lt!909345 () Unit!43600)

(declare-fun lt!909342 () Unit!43600)

(assert (=> d!732146 (= lt!909345 lt!909342)))

(declare-fun lt!909343 () List!29865)

(assert (=> d!732146 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909343)) rule!570 (size!23078 lt!909343) lt!909343) suffix!1684)))))

(assert (=> d!732146 (= lt!909342 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909343 input!3654 suffix!1684 rule!570))))

(assert (=> d!732146 (= lt!909343 (list!11253 (charsOf!2850 token!562)))))

(assert (=> d!732146 (= (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 rs!798)) lt!909346)))

(declare-fun b!2585830 () Bool)

(declare-fun Unit!43604 () Unit!43600)

(assert (=> b!2585830 (= e!1631538 Unit!43604)))

(declare-fun b!2585831 () Bool)

(declare-fun Unit!43605 () Unit!43600)

(assert (=> b!2585831 (= e!1631538 Unit!43605)))

(declare-fun lt!909344 () Unit!43600)

(assert (=> b!2585831 (= lt!909344 (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 (t!212231 rs!798))))))

(assert (= (and d!732146 c!416862) b!2585830))

(assert (= (and d!732146 (not c!416862)) b!2585831))

(assert (=> d!732146 m!2921723))

(assert (=> d!732146 m!2921683))

(assert (=> d!732146 m!2921685))

(declare-fun m!2921977 () Bool)

(assert (=> d!732146 m!2921977))

(declare-fun m!2921979 () Bool)

(assert (=> d!732146 m!2921979))

(declare-fun m!2921981 () Bool)

(assert (=> d!732146 m!2921981))

(declare-fun m!2921983 () Bool)

(assert (=> d!732146 m!2921983))

(declare-fun m!2921985 () Bool)

(assert (=> d!732146 m!2921985))

(assert (=> d!732146 m!2921981))

(declare-fun m!2921987 () Bool)

(assert (=> d!732146 m!2921987))

(assert (=> d!732146 m!2921977))

(declare-fun m!2921989 () Bool)

(assert (=> d!732146 m!2921989))

(assert (=> d!732146 m!2921683))

(declare-fun m!2921991 () Bool)

(assert (=> b!2585831 m!2921991))

(assert (=> b!2585591 d!732146))

(declare-fun d!732148 () Bool)

(assert (=> d!732148 (= (inv!40193 (tag!5011 rule!570)) (= (mod (str.len (value!146095 (tag!5011 rule!570))) 2) 0))))

(assert (=> b!2585593 d!732148))

(declare-fun d!732150 () Bool)

(declare-fun res!1087532 () Bool)

(declare-fun e!1631539 () Bool)

(assert (=> d!732150 (=> (not res!1087532) (not e!1631539))))

(assert (=> d!732150 (= res!1087532 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))))))

(assert (=> d!732150 (= (inv!40196 (transformation!4521 rule!570)) e!1631539)))

(declare-fun b!2585832 () Bool)

(assert (=> b!2585832 (= e!1631539 (equivClasses!1790 (toChars!6270 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))))))

(assert (= (and d!732150 res!1087532) b!2585832))

(declare-fun m!2921993 () Bool)

(assert (=> d!732150 m!2921993))

(declare-fun m!2921995 () Bool)

(assert (=> b!2585832 m!2921995))

(assert (=> b!2585593 d!732150))

(declare-fun d!732152 () Bool)

(declare-fun res!1087535 () Bool)

(declare-fun e!1631542 () Bool)

(assert (=> d!732152 (=> (not res!1087535) (not e!1631542))))

(assert (=> d!732152 (= res!1087535 (rulesValid!1693 thiss!28211 rules!4580))))

(assert (=> d!732152 (= (rulesInvariant!3618 thiss!28211 rules!4580) e!1631542)))

(declare-fun b!2585835 () Bool)

(declare-datatypes ((List!29868 0))(
  ( (Nil!29768) (Cons!29768 (h!35188 String!33123) (t!212281 List!29868)) )
))
(declare-fun noDuplicateTag!1690 (LexerInterface!4118 List!29866 List!29868) Bool)

(assert (=> b!2585835 (= e!1631542 (noDuplicateTag!1690 thiss!28211 rules!4580 Nil!29768))))

(assert (= (and d!732152 res!1087535) b!2585835))

(declare-fun m!2921997 () Bool)

(assert (=> d!732152 m!2921997))

(declare-fun m!2921999 () Bool)

(assert (=> b!2585835 m!2921999))

(assert (=> b!2585584 d!732152))

(declare-fun d!732154 () Bool)

(assert (=> d!732154 (= (inv!40193 (tag!5011 (h!35186 rules!4580))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 rules!4580)))) 2) 0))))

(assert (=> b!2585583 d!732154))

(declare-fun d!732156 () Bool)

(declare-fun res!1087536 () Bool)

(declare-fun e!1631543 () Bool)

(assert (=> d!732156 (=> (not res!1087536) (not e!1631543))))

(assert (=> d!732156 (= res!1087536 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))))))

(assert (=> d!732156 (= (inv!40196 (transformation!4521 (h!35186 rules!4580))) e!1631543)))

(declare-fun b!2585836 () Bool)

(assert (=> b!2585836 (= e!1631543 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))))))

(assert (= (and d!732156 res!1087536) b!2585836))

(declare-fun m!2922001 () Bool)

(assert (=> d!732156 m!2922001))

(declare-fun m!2922003 () Bool)

(assert (=> b!2585836 m!2922003))

(assert (=> b!2585583 d!732156))

(declare-fun b!2585837 () Bool)

(declare-fun e!1631549 () Bool)

(declare-fun lt!909347 () Bool)

(assert (=> b!2585837 (= e!1631549 (not lt!909347))))

(declare-fun d!732158 () Bool)

(declare-fun e!1631550 () Bool)

(assert (=> d!732158 e!1631550))

(declare-fun c!416864 () Bool)

(assert (=> d!732158 (= c!416864 ((_ is EmptyExpr!7665) (regex!4521 rule!570)))))

(declare-fun e!1631544 () Bool)

(assert (=> d!732158 (= lt!909347 e!1631544)))

(declare-fun c!416863 () Bool)

(assert (=> d!732158 (= c!416863 (isEmpty!17110 lt!909246))))

(assert (=> d!732158 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732158 (= (matchR!3598 (regex!4521 rule!570) lt!909246) lt!909347)))

(declare-fun b!2585838 () Bool)

(declare-fun res!1087544 () Bool)

(declare-fun e!1631547 () Bool)

(assert (=> b!2585838 (=> (not res!1087544) (not e!1631547))))

(assert (=> b!2585838 (= res!1087544 (isEmpty!17110 (tail!4135 lt!909246)))))

(declare-fun b!2585839 () Bool)

(assert (=> b!2585839 (= e!1631544 (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (tail!4135 lt!909246)))))

(declare-fun b!2585840 () Bool)

(declare-fun res!1087537 () Bool)

(assert (=> b!2585840 (=> (not res!1087537) (not e!1631547))))

(declare-fun call!166952 () Bool)

(assert (=> b!2585840 (= res!1087537 (not call!166952))))

(declare-fun b!2585841 () Bool)

(assert (=> b!2585841 (= e!1631550 (= lt!909347 call!166952))))

(declare-fun b!2585842 () Bool)

(declare-fun res!1087543 () Bool)

(declare-fun e!1631546 () Bool)

(assert (=> b!2585842 (=> res!1087543 e!1631546)))

(assert (=> b!2585842 (= res!1087543 (not (isEmpty!17110 (tail!4135 lt!909246))))))

(declare-fun b!2585843 () Bool)

(declare-fun res!1087539 () Bool)

(declare-fun e!1631548 () Bool)

(assert (=> b!2585843 (=> res!1087539 e!1631548)))

(assert (=> b!2585843 (= res!1087539 e!1631547)))

(declare-fun res!1087542 () Bool)

(assert (=> b!2585843 (=> (not res!1087542) (not e!1631547))))

(assert (=> b!2585843 (= res!1087542 lt!909347)))

(declare-fun b!2585844 () Bool)

(declare-fun e!1631545 () Bool)

(assert (=> b!2585844 (= e!1631548 e!1631545)))

(declare-fun res!1087541 () Bool)

(assert (=> b!2585844 (=> (not res!1087541) (not e!1631545))))

(assert (=> b!2585844 (= res!1087541 (not lt!909347))))

(declare-fun b!2585845 () Bool)

(declare-fun res!1087540 () Bool)

(assert (=> b!2585845 (=> res!1087540 e!1631548)))

(assert (=> b!2585845 (= res!1087540 (not ((_ is ElementMatch!7665) (regex!4521 rule!570))))))

(assert (=> b!2585845 (= e!1631549 e!1631548)))

(declare-fun b!2585846 () Bool)

(assert (=> b!2585846 (= e!1631547 (= (head!5862 lt!909246) (c!416820 (regex!4521 rule!570))))))

(declare-fun b!2585847 () Bool)

(assert (=> b!2585847 (= e!1631544 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun b!2585848 () Bool)

(assert (=> b!2585848 (= e!1631550 e!1631549)))

(declare-fun c!416865 () Bool)

(assert (=> b!2585848 (= c!416865 ((_ is EmptyLang!7665) (regex!4521 rule!570)))))

(declare-fun b!2585849 () Bool)

(assert (=> b!2585849 (= e!1631546 (not (= (head!5862 lt!909246) (c!416820 (regex!4521 rule!570)))))))

(declare-fun bm!166947 () Bool)

(assert (=> bm!166947 (= call!166952 (isEmpty!17110 lt!909246))))

(declare-fun b!2585850 () Bool)

(assert (=> b!2585850 (= e!1631545 e!1631546)))

(declare-fun res!1087538 () Bool)

(assert (=> b!2585850 (=> res!1087538 e!1631546)))

(assert (=> b!2585850 (= res!1087538 call!166952)))

(assert (= (and d!732158 c!416863) b!2585847))

(assert (= (and d!732158 (not c!416863)) b!2585839))

(assert (= (and d!732158 c!416864) b!2585841))

(assert (= (and d!732158 (not c!416864)) b!2585848))

(assert (= (and b!2585848 c!416865) b!2585837))

(assert (= (and b!2585848 (not c!416865)) b!2585845))

(assert (= (and b!2585845 (not res!1087540)) b!2585843))

(assert (= (and b!2585843 res!1087542) b!2585840))

(assert (= (and b!2585840 res!1087537) b!2585838))

(assert (= (and b!2585838 res!1087544) b!2585846))

(assert (= (and b!2585843 (not res!1087539)) b!2585844))

(assert (= (and b!2585844 res!1087541) b!2585850))

(assert (= (and b!2585850 (not res!1087538)) b!2585842))

(assert (= (and b!2585842 (not res!1087543)) b!2585849))

(assert (= (or b!2585841 b!2585840 b!2585850) bm!166947))

(declare-fun m!2922005 () Bool)

(assert (=> bm!166947 m!2922005))

(declare-fun m!2922007 () Bool)

(assert (=> b!2585839 m!2922007))

(assert (=> b!2585839 m!2922007))

(declare-fun m!2922009 () Bool)

(assert (=> b!2585839 m!2922009))

(declare-fun m!2922011 () Bool)

(assert (=> b!2585839 m!2922011))

(assert (=> b!2585839 m!2922009))

(assert (=> b!2585839 m!2922011))

(declare-fun m!2922013 () Bool)

(assert (=> b!2585839 m!2922013))

(assert (=> b!2585846 m!2922007))

(assert (=> b!2585838 m!2922011))

(assert (=> b!2585838 m!2922011))

(declare-fun m!2922015 () Bool)

(assert (=> b!2585838 m!2922015))

(assert (=> b!2585849 m!2922007))

(assert (=> d!732158 m!2922005))

(assert (=> d!732158 m!2921939))

(assert (=> b!2585842 m!2922011))

(assert (=> b!2585842 m!2922011))

(assert (=> b!2585842 m!2922015))

(assert (=> b!2585847 m!2921941))

(assert (=> b!2585596 d!732158))

(declare-fun d!732160 () Bool)

(declare-fun res!1087549 () Bool)

(declare-fun e!1631553 () Bool)

(assert (=> d!732160 (=> (not res!1087549) (not e!1631553))))

(assert (=> d!732160 (= res!1087549 (not (isEmpty!17110 (originalCharacters!5287 token!562))))))

(assert (=> d!732160 (= (inv!40197 token!562) e!1631553)))

(declare-fun b!2585855 () Bool)

(declare-fun res!1087550 () Bool)

(assert (=> b!2585855 (=> (not res!1087550) (not e!1631553))))

(assert (=> b!2585855 (= res!1087550 (= (originalCharacters!5287 token!562) (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun b!2585856 () Bool)

(assert (=> b!2585856 (= e!1631553 (= (size!23077 token!562) (size!23078 (originalCharacters!5287 token!562))))))

(assert (= (and d!732160 res!1087549) b!2585855))

(assert (= (and b!2585855 res!1087550) b!2585856))

(declare-fun b_lambda!76789 () Bool)

(assert (=> (not b_lambda!76789) (not b!2585855)))

(assert (=> b!2585855 t!212250))

(declare-fun b_and!189571 () Bool)

(assert (= b_and!189563 (and (=> t!212250 result!175124) b_and!189571)))

(assert (=> b!2585855 t!212252))

(declare-fun b_and!189573 () Bool)

(assert (= b_and!189565 (and (=> t!212252 result!175128) b_and!189573)))

(assert (=> b!2585855 t!212254))

(declare-fun b_and!189575 () Bool)

(assert (= b_and!189567 (and (=> t!212254 result!175130) b_and!189575)))

(assert (=> b!2585855 t!212256))

(declare-fun b_and!189577 () Bool)

(assert (= b_and!189569 (and (=> t!212256 result!175132) b_and!189577)))

(declare-fun m!2922017 () Bool)

(assert (=> d!732160 m!2922017))

(assert (=> b!2585855 m!2921873))

(assert (=> b!2585855 m!2921873))

(declare-fun m!2922019 () Bool)

(assert (=> b!2585855 m!2922019))

(declare-fun m!2922021 () Bool)

(assert (=> b!2585856 m!2922021))

(assert (=> start!250412 d!732160))

(declare-fun b!2585910 () Bool)

(declare-fun e!1631578 () Bool)

(declare-fun lt!909381 () Option!5936)

(assert (=> b!2585910 (= e!1631578 (contains!5325 rules!4580 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun b!2585911 () Bool)

(declare-fun e!1631579 () Option!5936)

(declare-fun call!166955 () Option!5936)

(assert (=> b!2585911 (= e!1631579 call!166955)))

(declare-fun b!2585912 () Bool)

(declare-fun lt!909379 () Option!5936)

(declare-fun lt!909382 () Option!5936)

(assert (=> b!2585912 (= e!1631579 (ite (and ((_ is None!5935) lt!909379) ((_ is None!5935) lt!909382)) None!5935 (ite ((_ is None!5935) lt!909382) lt!909379 (ite ((_ is None!5935) lt!909379) lt!909382 (ite (>= (size!23077 (_1!17401 (v!32038 lt!909379))) (size!23077 (_1!17401 (v!32038 lt!909382)))) lt!909379 lt!909382)))))))

(assert (=> b!2585912 (= lt!909379 call!166955)))

(assert (=> b!2585912 (= lt!909382 (maxPrefix!2290 thiss!28211 (t!212231 rules!4580) input!3654))))

(declare-fun b!2585913 () Bool)

(declare-fun res!1087588 () Bool)

(assert (=> b!2585913 (=> (not res!1087588) (not e!1631578))))

(assert (=> b!2585913 (= res!1087588 (< (size!23078 (_2!17401 (get!9380 lt!909381))) (size!23078 input!3654)))))

(declare-fun bm!166950 () Bool)

(assert (=> bm!166950 (= call!166955 (maxPrefixOneRule!1456 thiss!28211 (h!35186 rules!4580) input!3654))))

(declare-fun d!732162 () Bool)

(declare-fun e!1631580 () Bool)

(assert (=> d!732162 e!1631580))

(declare-fun res!1087590 () Bool)

(assert (=> d!732162 (=> res!1087590 e!1631580)))

(assert (=> d!732162 (= res!1087590 (isEmpty!17111 lt!909381))))

(assert (=> d!732162 (= lt!909381 e!1631579)))

(declare-fun c!416874 () Bool)

(assert (=> d!732162 (= c!416874 (and ((_ is Cons!29766) rules!4580) ((_ is Nil!29766) (t!212231 rules!4580))))))

(declare-fun lt!909380 () Unit!43600)

(declare-fun lt!909383 () Unit!43600)

(assert (=> d!732162 (= lt!909380 lt!909383)))

(declare-fun isPrefix!2421 (List!29865 List!29865) Bool)

(assert (=> d!732162 (isPrefix!2421 input!3654 input!3654)))

(declare-fun lemmaIsPrefixRefl!1547 (List!29865 List!29865) Unit!43600)

(assert (=> d!732162 (= lt!909383 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(assert (=> d!732162 (rulesValidInductive!1595 thiss!28211 rules!4580)))

(assert (=> d!732162 (= (maxPrefix!2290 thiss!28211 rules!4580 input!3654) lt!909381)))

(declare-fun b!2585914 () Bool)

(declare-fun res!1087591 () Bool)

(assert (=> b!2585914 (=> (not res!1087591) (not e!1631578))))

(assert (=> b!2585914 (= res!1087591 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))) (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun b!2585915 () Bool)

(assert (=> b!2585915 (= e!1631580 e!1631578)))

(declare-fun res!1087587 () Bool)

(assert (=> b!2585915 (=> (not res!1087587) (not e!1631578))))

(declare-fun isDefined!4756 (Option!5936) Bool)

(assert (=> b!2585915 (= res!1087587 (isDefined!4756 lt!909381))))

(declare-fun b!2585916 () Bool)

(declare-fun res!1087589 () Bool)

(assert (=> b!2585916 (=> (not res!1087589) (not e!1631578))))

(assert (=> b!2585916 (= res!1087589 (matchR!3598 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2585917 () Bool)

(declare-fun res!1087592 () Bool)

(assert (=> b!2585917 (=> (not res!1087592) (not e!1631578))))

(assert (=> b!2585917 (= res!1087592 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))) (_2!17401 (get!9380 lt!909381))) input!3654))))

(declare-fun b!2585918 () Bool)

(declare-fun res!1087586 () Bool)

(assert (=> b!2585918 (=> (not res!1087586) (not e!1631578))))

(assert (=> b!2585918 (= res!1087586 (= (value!146096 (_1!17401 (get!9380 lt!909381))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(assert (= (and d!732162 c!416874) b!2585911))

(assert (= (and d!732162 (not c!416874)) b!2585912))

(assert (= (or b!2585911 b!2585912) bm!166950))

(assert (= (and d!732162 (not res!1087590)) b!2585915))

(assert (= (and b!2585915 res!1087587) b!2585914))

(assert (= (and b!2585914 res!1087591) b!2585913))

(assert (= (and b!2585913 res!1087588) b!2585917))

(assert (= (and b!2585917 res!1087592) b!2585918))

(assert (= (and b!2585918 res!1087586) b!2585916))

(assert (= (and b!2585916 res!1087589) b!2585910))

(declare-fun m!2922075 () Bool)

(assert (=> b!2585916 m!2922075))

(declare-fun m!2922077 () Bool)

(assert (=> b!2585916 m!2922077))

(assert (=> b!2585916 m!2922077))

(declare-fun m!2922079 () Bool)

(assert (=> b!2585916 m!2922079))

(assert (=> b!2585916 m!2922079))

(declare-fun m!2922081 () Bool)

(assert (=> b!2585916 m!2922081))

(assert (=> b!2585918 m!2922075))

(declare-fun m!2922083 () Bool)

(assert (=> b!2585918 m!2922083))

(assert (=> b!2585918 m!2922083))

(declare-fun m!2922085 () Bool)

(assert (=> b!2585918 m!2922085))

(declare-fun m!2922087 () Bool)

(assert (=> d!732162 m!2922087))

(declare-fun m!2922089 () Bool)

(assert (=> d!732162 m!2922089))

(declare-fun m!2922091 () Bool)

(assert (=> d!732162 m!2922091))

(declare-fun m!2922093 () Bool)

(assert (=> d!732162 m!2922093))

(declare-fun m!2922095 () Bool)

(assert (=> b!2585915 m!2922095))

(assert (=> b!2585917 m!2922075))

(assert (=> b!2585917 m!2922077))

(assert (=> b!2585917 m!2922077))

(assert (=> b!2585917 m!2922079))

(assert (=> b!2585917 m!2922079))

(declare-fun m!2922097 () Bool)

(assert (=> b!2585917 m!2922097))

(assert (=> b!2585914 m!2922075))

(assert (=> b!2585914 m!2922077))

(assert (=> b!2585914 m!2922077))

(assert (=> b!2585914 m!2922079))

(assert (=> b!2585913 m!2922075))

(declare-fun m!2922101 () Bool)

(assert (=> b!2585913 m!2922101))

(assert (=> b!2585913 m!2921793))

(declare-fun m!2922105 () Bool)

(assert (=> b!2585912 m!2922105))

(declare-fun m!2922107 () Bool)

(assert (=> bm!166950 m!2922107))

(assert (=> b!2585910 m!2922075))

(declare-fun m!2922109 () Bool)

(assert (=> b!2585910 m!2922109))

(assert (=> b!2585585 d!732162))

(declare-fun b!2585940 () Bool)

(declare-fun e!1631595 () Bool)

(declare-fun inv!15 (TokenValue!4743) Bool)

(assert (=> b!2585940 (= e!1631595 (inv!15 (value!146096 token!562)))))

(declare-fun d!732176 () Bool)

(declare-fun c!416881 () Bool)

(assert (=> d!732176 (= c!416881 ((_ is IntegerValue!14229) (value!146096 token!562)))))

(declare-fun e!1631594 () Bool)

(assert (=> d!732176 (= (inv!21 (value!146096 token!562)) e!1631594)))

(declare-fun b!2585941 () Bool)

(declare-fun inv!16 (TokenValue!4743) Bool)

(assert (=> b!2585941 (= e!1631594 (inv!16 (value!146096 token!562)))))

(declare-fun b!2585942 () Bool)

(declare-fun e!1631596 () Bool)

(assert (=> b!2585942 (= e!1631594 e!1631596)))

(declare-fun c!416882 () Bool)

(assert (=> b!2585942 (= c!416882 ((_ is IntegerValue!14230) (value!146096 token!562)))))

(declare-fun b!2585943 () Bool)

(declare-fun inv!17 (TokenValue!4743) Bool)

(assert (=> b!2585943 (= e!1631596 (inv!17 (value!146096 token!562)))))

(declare-fun b!2585944 () Bool)

(declare-fun res!1087602 () Bool)

(assert (=> b!2585944 (=> res!1087602 e!1631595)))

(assert (=> b!2585944 (= res!1087602 (not ((_ is IntegerValue!14231) (value!146096 token!562))))))

(assert (=> b!2585944 (= e!1631596 e!1631595)))

(assert (= (and d!732176 c!416881) b!2585941))

(assert (= (and d!732176 (not c!416881)) b!2585942))

(assert (= (and b!2585942 c!416882) b!2585943))

(assert (= (and b!2585942 (not c!416882)) b!2585944))

(assert (= (and b!2585944 (not res!1087602)) b!2585940))

(declare-fun m!2922111 () Bool)

(assert (=> b!2585940 m!2922111))

(declare-fun m!2922113 () Bool)

(assert (=> b!2585941 m!2922113))

(declare-fun m!2922115 () Bool)

(assert (=> b!2585943 m!2922115))

(assert (=> b!2585574 d!732176))

(declare-fun d!732178 () Bool)

(assert (=> d!732178 (= (isEmpty!17109 rules!4580) ((_ is Nil!29766) rules!4580))))

(assert (=> b!2585576 d!732178))

(declare-fun b!2585960 () Bool)

(declare-fun e!1631601 () Bool)

(declare-fun tp!820887 () Bool)

(declare-fun tp!820883 () Bool)

(assert (=> b!2585960 (= e!1631601 (and tp!820887 tp!820883))))

(declare-fun b!2585962 () Bool)

(declare-fun tp!820885 () Bool)

(declare-fun tp!820886 () Bool)

(assert (=> b!2585962 (= e!1631601 (and tp!820885 tp!820886))))

(declare-fun b!2585959 () Bool)

(assert (=> b!2585959 (= e!1631601 tp_is_empty!13225)))

(declare-fun b!2585961 () Bool)

(declare-fun tp!820884 () Bool)

(assert (=> b!2585961 (= e!1631601 tp!820884)))

(assert (=> b!2585593 (= tp!820862 e!1631601)))

(assert (= (and b!2585593 ((_ is ElementMatch!7665) (regex!4521 rule!570))) b!2585959))

(assert (= (and b!2585593 ((_ is Concat!12409) (regex!4521 rule!570))) b!2585960))

(assert (= (and b!2585593 ((_ is Star!7665) (regex!4521 rule!570))) b!2585961))

(assert (= (and b!2585593 ((_ is Union!7665) (regex!4521 rule!570))) b!2585962))

(declare-fun b!2585983 () Bool)

(declare-fun b_free!72869 () Bool)

(declare-fun b_next!73573 () Bool)

(assert (=> b!2585983 (= b_free!72869 (not b_next!73573))))

(declare-fun t!212266 () Bool)

(declare-fun tb!140873 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570))) t!212266) tb!140873))

(declare-fun result!175148 () Bool)

(assert (= result!175148 result!175114))

(assert (=> d!732112 t!212266))

(declare-fun tp!820899 () Bool)

(declare-fun b_and!189595 () Bool)

(assert (=> b!2585983 (= tp!820899 (and (=> t!212266 result!175148) b_and!189595))))

(declare-fun b_free!72871 () Bool)

(declare-fun b_next!73575 () Bool)

(assert (=> b!2585983 (= b_free!72871 (not b_next!73575))))

(declare-fun tb!140875 () Bool)

(declare-fun t!212268 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212268) tb!140875))

(declare-fun result!175150 () Bool)

(assert (= result!175150 result!175124))

(assert (=> d!732114 t!212268))

(assert (=> b!2585855 t!212268))

(declare-fun tp!820896 () Bool)

(declare-fun b_and!189597 () Bool)

(assert (=> b!2585983 (= tp!820896 (and (=> t!212268 result!175150) b_and!189597))))

(declare-fun e!1631619 () Bool)

(assert (=> b!2585983 (= e!1631619 (and tp!820899 tp!820896))))

(declare-fun b!2585982 () Bool)

(declare-fun tp!820897 () Bool)

(declare-fun e!1631617 () Bool)

(assert (=> b!2585982 (= e!1631617 (and tp!820897 (inv!40193 (tag!5011 (h!35186 (t!212231 rules!4580)))) (inv!40196 (transformation!4521 (h!35186 (t!212231 rules!4580)))) e!1631619))))

(declare-fun b!2585981 () Bool)

(declare-fun e!1631618 () Bool)

(declare-fun tp!820898 () Bool)

(assert (=> b!2585981 (= e!1631618 (and e!1631617 tp!820898))))

(assert (=> b!2585582 (= tp!820858 e!1631618)))

(assert (= b!2585982 b!2585983))

(assert (= b!2585981 b!2585982))

(assert (= (and b!2585582 ((_ is Cons!29766) (t!212231 rules!4580))) b!2585981))

(declare-fun m!2922131 () Bool)

(assert (=> b!2585982 m!2922131))

(declare-fun m!2922133 () Bool)

(assert (=> b!2585982 m!2922133))

(declare-fun b!2585993 () Bool)

(declare-fun e!1631625 () Bool)

(declare-fun tp!820902 () Bool)

(assert (=> b!2585993 (= e!1631625 (and tp_is_empty!13225 tp!820902))))

(assert (=> b!2585573 (= tp!820852 e!1631625)))

(assert (= (and b!2585573 ((_ is Cons!29765) (t!212230 input!3654))) b!2585993))

(declare-fun b!2585995 () Bool)

(declare-fun e!1631626 () Bool)

(declare-fun tp!820907 () Bool)

(declare-fun tp!820903 () Bool)

(assert (=> b!2585995 (= e!1631626 (and tp!820907 tp!820903))))

(declare-fun b!2585997 () Bool)

(declare-fun tp!820905 () Bool)

(declare-fun tp!820906 () Bool)

(assert (=> b!2585997 (= e!1631626 (and tp!820905 tp!820906))))

(declare-fun b!2585994 () Bool)

(assert (=> b!2585994 (= e!1631626 tp_is_empty!13225)))

(declare-fun b!2585996 () Bool)

(declare-fun tp!820904 () Bool)

(assert (=> b!2585996 (= e!1631626 tp!820904)))

(assert (=> b!2585589 (= tp!820864 e!1631626)))

(assert (= (and b!2585589 ((_ is ElementMatch!7665) (regex!4521 (rule!6887 token!562)))) b!2585994))

(assert (= (and b!2585589 ((_ is Concat!12409) (regex!4521 (rule!6887 token!562)))) b!2585995))

(assert (= (and b!2585589 ((_ is Star!7665) (regex!4521 (rule!6887 token!562)))) b!2585996))

(assert (= (and b!2585589 ((_ is Union!7665) (regex!4521 (rule!6887 token!562)))) b!2585997))

(declare-fun b!2586000 () Bool)

(declare-fun b_free!72873 () Bool)

(declare-fun b_next!73577 () Bool)

(assert (=> b!2586000 (= b_free!72873 (not b_next!73577))))

(declare-fun tb!140877 () Bool)

(declare-fun t!212270 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570))) t!212270) tb!140877))

(declare-fun result!175154 () Bool)

(assert (= result!175154 result!175114))

(assert (=> d!732112 t!212270))

(declare-fun b_and!189599 () Bool)

(declare-fun tp!820911 () Bool)

(assert (=> b!2586000 (= tp!820911 (and (=> t!212270 result!175154) b_and!189599))))

(declare-fun b_free!72875 () Bool)

(declare-fun b_next!73579 () Bool)

(assert (=> b!2586000 (= b_free!72875 (not b_next!73579))))

(declare-fun t!212272 () Bool)

(declare-fun tb!140879 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212272) tb!140879))

(declare-fun result!175156 () Bool)

(assert (= result!175156 result!175124))

(assert (=> d!732114 t!212272))

(assert (=> b!2585855 t!212272))

(declare-fun b_and!189601 () Bool)

(declare-fun tp!820908 () Bool)

(assert (=> b!2586000 (= tp!820908 (and (=> t!212272 result!175156) b_and!189601))))

(declare-fun e!1631630 () Bool)

(assert (=> b!2586000 (= e!1631630 (and tp!820911 tp!820908))))

(declare-fun b!2585999 () Bool)

(declare-fun e!1631628 () Bool)

(declare-fun tp!820909 () Bool)

(assert (=> b!2585999 (= e!1631628 (and tp!820909 (inv!40193 (tag!5011 (h!35186 (t!212231 rs!798)))) (inv!40196 (transformation!4521 (h!35186 (t!212231 rs!798)))) e!1631630))))

(declare-fun b!2585998 () Bool)

(declare-fun e!1631629 () Bool)

(declare-fun tp!820910 () Bool)

(assert (=> b!2585998 (= e!1631629 (and e!1631628 tp!820910))))

(assert (=> b!2585594 (= tp!820863 e!1631629)))

(assert (= b!2585999 b!2586000))

(assert (= b!2585998 b!2585999))

(assert (= (and b!2585594 ((_ is Cons!29766) (t!212231 rs!798))) b!2585998))

(declare-fun m!2922141 () Bool)

(assert (=> b!2585999 m!2922141))

(declare-fun m!2922143 () Bool)

(assert (=> b!2585999 m!2922143))

(declare-fun b!2586002 () Bool)

(declare-fun e!1631631 () Bool)

(declare-fun tp!820916 () Bool)

(declare-fun tp!820912 () Bool)

(assert (=> b!2586002 (= e!1631631 (and tp!820916 tp!820912))))

(declare-fun b!2586004 () Bool)

(declare-fun tp!820914 () Bool)

(declare-fun tp!820915 () Bool)

(assert (=> b!2586004 (= e!1631631 (and tp!820914 tp!820915))))

(declare-fun b!2586001 () Bool)

(assert (=> b!2586001 (= e!1631631 tp_is_empty!13225)))

(declare-fun b!2586003 () Bool)

(declare-fun tp!820913 () Bool)

(assert (=> b!2586003 (= e!1631631 tp!820913)))

(assert (=> b!2585583 (= tp!820861 e!1631631)))

(assert (= (and b!2585583 ((_ is ElementMatch!7665) (regex!4521 (h!35186 rules!4580)))) b!2586001))

(assert (= (and b!2585583 ((_ is Concat!12409) (regex!4521 (h!35186 rules!4580)))) b!2586002))

(assert (= (and b!2585583 ((_ is Star!7665) (regex!4521 (h!35186 rules!4580)))) b!2586003))

(assert (= (and b!2585583 ((_ is Union!7665) (regex!4521 (h!35186 rules!4580)))) b!2586004))

(declare-fun b!2586007 () Bool)

(declare-fun e!1631634 () Bool)

(declare-fun tp!820917 () Bool)

(assert (=> b!2586007 (= e!1631634 (and tp_is_empty!13225 tp!820917))))

(assert (=> b!2585574 (= tp!820853 e!1631634)))

(assert (= (and b!2585574 ((_ is Cons!29765) (originalCharacters!5287 token!562))) b!2586007))

(declare-fun b!2586011 () Bool)

(declare-fun e!1631637 () Bool)

(declare-fun tp!820922 () Bool)

(declare-fun tp!820918 () Bool)

(assert (=> b!2586011 (= e!1631637 (and tp!820922 tp!820918))))

(declare-fun b!2586013 () Bool)

(declare-fun tp!820920 () Bool)

(declare-fun tp!820921 () Bool)

(assert (=> b!2586013 (= e!1631637 (and tp!820920 tp!820921))))

(declare-fun b!2586010 () Bool)

(assert (=> b!2586010 (= e!1631637 tp_is_empty!13225)))

(declare-fun b!2586012 () Bool)

(declare-fun tp!820919 () Bool)

(assert (=> b!2586012 (= e!1631637 tp!820919)))

(assert (=> b!2585579 (= tp!820859 e!1631637)))

(assert (= (and b!2585579 ((_ is ElementMatch!7665) (regex!4521 (h!35186 rs!798)))) b!2586010))

(assert (= (and b!2585579 ((_ is Concat!12409) (regex!4521 (h!35186 rs!798)))) b!2586011))

(assert (= (and b!2585579 ((_ is Star!7665) (regex!4521 (h!35186 rs!798)))) b!2586012))

(assert (= (and b!2585579 ((_ is Union!7665) (regex!4521 (h!35186 rs!798)))) b!2586013))

(declare-fun b!2586014 () Bool)

(declare-fun e!1631638 () Bool)

(declare-fun tp!820923 () Bool)

(assert (=> b!2586014 (= e!1631638 (and tp_is_empty!13225 tp!820923))))

(assert (=> b!2585575 (= tp!820856 e!1631638)))

(assert (= (and b!2585575 ((_ is Cons!29765) (t!212230 suffix!1684))) b!2586014))

(declare-fun b_lambda!76795 () Bool)

(assert (= b_lambda!76785 (or b!2585591 b_lambda!76795)))

(declare-fun bs!471700 () Bool)

(declare-fun d!732184 () Bool)

(assert (= bs!471700 (and d!732184 b!2585591)))

(assert (=> bs!471700 (= (dynLambda!12585 lambda!95784 (h!35187 (map!6607 rs!798 lambda!95783))) (validRegex!3279 (h!35187 (map!6607 rs!798 lambda!95783))))))

(declare-fun m!2922145 () Bool)

(assert (=> bs!471700 m!2922145))

(assert (=> b!2585818 d!732184))

(declare-fun b_lambda!76797 () Bool)

(assert (= b_lambda!76789 (or (and b!2585577 b_free!72855 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585586 b_free!72859 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585595 b_free!72863) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) b_lambda!76797)))

(declare-fun b_lambda!76799 () Bool)

(assert (= b_lambda!76783 (or (and b!2585577 b_free!72855 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585586 b_free!72859 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2585595 b_free!72863) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) b_lambda!76799)))

(declare-fun b_lambda!76801 () Bool)

(assert (= b_lambda!76787 (or b!2585591 b_lambda!76801)))

(declare-fun bs!471701 () Bool)

(declare-fun d!732186 () Bool)

(assert (= bs!471701 (and d!732186 b!2585591)))

(assert (=> bs!471701 (= (dynLambda!12586 lambda!95783 (h!35186 rs!798)) (regex!4521 (h!35186 rs!798)))))

(assert (=> b!2585825 d!732186))

(declare-fun b_lambda!76803 () Bool)

(assert (= b_lambda!76781 (or (and b!2585586 b_free!72857) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76803)))

(check-sat (not b!2585832) b_and!189559 b_and!189599 (not b_next!73569) (not b!2585686) (not b!2585787) (not b!2585993) (not d!732152) (not b_next!73571) (not b_next!73579) b_and!189557 (not d!732128) (not b!2586013) (not b!2585784) (not b!2585849) (not b!2586012) (not b_next!73567) (not b!2585714) b_and!189577 b_and!189555 b_and!189561 (not bm!166950) b_and!189571 (not d!732080) (not b!2585981) (not b!2586014) (not b_lambda!76795) (not b!2585689) (not b!2585684) (not b!2585825) (not d!732144) (not b_next!73563) (not b!2585800) b_and!189601 (not bm!166947) (not b!2585812) (not b!2585846) (not b!2585794) tp_is_empty!13225 (not b!2585842) (not d!732156) (not d!732096) (not b!2585997) (not b!2585996) (not b_next!73577) (not d!732160) (not b!2585792) b_and!189573 (not b!2585918) (not b!2585943) (not b!2585835) (not d!732158) (not b!2585962) (not b!2586011) (not b!2585960) (not b!2585691) (not b!2585723) (not b!2585811) (not b!2585998) (not bm!166946) (not b_next!73575) (not b!2585941) (not b_lambda!76797) (not b_next!73573) (not b!2585999) (not b!2585913) b_and!189595 (not b!2585683) (not b!2585940) (not b_lambda!76799) (not b!2585961) (not d!732132) (not b!2586003) (not b!2585831) (not b!2586004) (not b!2585916) (not d!732136) (not bs!471700) (not b!2585912) (not b!2585688) (not d!732116) (not d!732162) (not b!2585910) (not b_lambda!76801) (not d!732114) (not b!2585982) (not d!732078) (not tb!140849) (not d!732120) (not b!2585687) (not b!2585914) (not b!2585856) (not b!2585791) (not tb!140857) (not b!2586002) (not b!2585855) (not b!2585847) (not d!732134) (not d!732150) (not b!2585838) (not b!2585730) (not b_next!73561) (not b!2585839) (not b!2585917) (not d!732126) (not b_lambda!76803) (not b!2585995) (not d!732146) (not d!732110) (not b_next!73565) b_and!189575 (not b_next!73559) (not b_next!73557) (not b!2585819) (not b!2585685) (not b!2585836) (not b!2586007) b_and!189597 (not b!2585707) (not b!2585915) (not d!732122) (not b!2585783) (not b!2585720))
(check-sat b_and!189557 (not b_next!73567) (not b_next!73563) b_and!189601 (not b_next!73575) (not b_next!73573) b_and!189595 b_and!189559 b_and!189597 b_and!189599 (not b_next!73569) (not b_next!73571) (not b_next!73579) b_and!189571 b_and!189577 b_and!189555 b_and!189561 (not b_next!73577) b_and!189573 (not b_next!73561) (not b_next!73565) b_and!189575 (not b_next!73559) (not b_next!73557))
(get-model)

(declare-fun d!732206 () Bool)

(assert (=> d!732206 (= (head!5862 lt!909247) (h!35185 lt!909247))))

(assert (=> b!2585794 d!732206))

(declare-fun d!732208 () Bool)

(assert (=> d!732208 (= (isEmpty!17111 lt!909268) (not ((_ is Some!5935) lt!909268)))))

(assert (=> d!732080 d!732208))

(declare-fun d!732210 () Bool)

(assert (=> d!732210 (= (isEmpty!17110 (_1!17402 lt!909270)) ((_ is Nil!29765) (_1!17402 lt!909270)))))

(assert (=> d!732080 d!732210))

(declare-fun d!732212 () Bool)

(declare-fun lt!909415 () tuple2!29720)

(assert (=> d!732212 (= (++!7311 (_1!17402 lt!909415) (_2!17402 lt!909415)) input!3654)))

(declare-fun sizeTr!139 (List!29865 Int) Int)

(assert (=> d!732212 (= lt!909415 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 0 input!3654 input!3654 (sizeTr!139 input!3654 0)))))

(declare-fun lt!909416 () Unit!43600)

(declare-fun lt!909411 () Unit!43600)

(assert (=> d!732212 (= lt!909416 lt!909411)))

(declare-fun lt!909410 () List!29865)

(declare-fun lt!909417 () Int)

(assert (=> d!732212 (= (sizeTr!139 lt!909410 lt!909417) (+ (size!23078 lt!909410) lt!909417))))

(declare-fun lemmaSizeTrEqualsSize!138 (List!29865 Int) Unit!43600)

(assert (=> d!732212 (= lt!909411 (lemmaSizeTrEqualsSize!138 lt!909410 lt!909417))))

(assert (=> d!732212 (= lt!909417 0)))

(assert (=> d!732212 (= lt!909410 Nil!29765)))

(declare-fun lt!909412 () Unit!43600)

(declare-fun lt!909413 () Unit!43600)

(assert (=> d!732212 (= lt!909412 lt!909413)))

(declare-fun lt!909414 () Int)

(assert (=> d!732212 (= (sizeTr!139 input!3654 lt!909414) (+ (size!23078 input!3654) lt!909414))))

(assert (=> d!732212 (= lt!909413 (lemmaSizeTrEqualsSize!138 input!3654 lt!909414))))

(assert (=> d!732212 (= lt!909414 0)))

(assert (=> d!732212 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732212 (= (findLongestMatch!685 (regex!4521 rule!570) input!3654) lt!909415)))

(declare-fun bs!471705 () Bool)

(assert (= bs!471705 d!732212))

(assert (=> bs!471705 m!2921939))

(declare-fun m!2922185 () Bool)

(assert (=> bs!471705 m!2922185))

(declare-fun m!2922187 () Bool)

(assert (=> bs!471705 m!2922187))

(declare-fun m!2922189 () Bool)

(assert (=> bs!471705 m!2922189))

(declare-fun m!2922191 () Bool)

(assert (=> bs!471705 m!2922191))

(declare-fun m!2922193 () Bool)

(assert (=> bs!471705 m!2922193))

(declare-fun m!2922195 () Bool)

(assert (=> bs!471705 m!2922195))

(assert (=> bs!471705 m!2922189))

(assert (=> bs!471705 m!2921793))

(declare-fun m!2922197 () Bool)

(assert (=> bs!471705 m!2922197))

(declare-fun m!2922199 () Bool)

(assert (=> bs!471705 m!2922199))

(assert (=> d!732080 d!732212))

(assert (=> d!732080 d!732132))

(declare-fun bs!471706 () Bool)

(declare-fun d!732214 () Bool)

(assert (= bs!471706 (and d!732214 b!2585591)))

(declare-fun lambda!95803 () Int)

(assert (=> bs!471706 (= lambda!95803 lambda!95783)))

(declare-fun bs!471707 () Bool)

(assert (= bs!471707 (and d!732214 d!732146)))

(assert (=> bs!471707 (= lambda!95803 lambda!95801)))

(declare-fun lambda!95804 () Int)

(assert (=> bs!471706 (= lambda!95804 lambda!95784)))

(assert (=> bs!471707 (= lambda!95804 lambda!95802)))

(assert (=> d!732214 (forall!6065 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803) lambda!95804)))

(declare-fun lt!909422 () Unit!43600)

(declare-fun e!1631680 () Unit!43600)

(assert (=> d!732214 (= lt!909422 e!1631680)))

(declare-fun c!416893 () Bool)

(assert (=> d!732214 (= c!416893 ((_ is Nil!29766) (t!212231 (t!212231 rs!798))))))

(assert (=> d!732214 (rulesValid!1693 thiss!28211 (t!212231 (t!212231 rs!798)))))

(declare-fun lt!909421 () Unit!43600)

(declare-fun lt!909418 () Unit!43600)

(assert (=> d!732214 (= lt!909421 lt!909418)))

(declare-fun lt!909419 () List!29865)

(assert (=> d!732214 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909419)) rule!570 (size!23078 lt!909419) lt!909419) suffix!1684)))))

(assert (=> d!732214 (= lt!909418 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909419 input!3654 suffix!1684 rule!570))))

(assert (=> d!732214 (= lt!909419 (list!11253 (charsOf!2850 token!562)))))

(assert (=> d!732214 (= (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 (t!212231 rs!798))) lt!909422)))

(declare-fun b!2586086 () Bool)

(declare-fun Unit!43606 () Unit!43600)

(assert (=> b!2586086 (= e!1631680 Unit!43606)))

(declare-fun b!2586087 () Bool)

(declare-fun Unit!43607 () Unit!43600)

(assert (=> b!2586087 (= e!1631680 Unit!43607)))

(declare-fun lt!909420 () Unit!43600)

(assert (=> b!2586087 (= lt!909420 (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 (t!212231 (t!212231 rs!798)))))))

(assert (= (and d!732214 c!416893) b!2586086))

(assert (= (and d!732214 (not c!416893)) b!2586087))

(assert (=> d!732214 m!2921723))

(assert (=> d!732214 m!2921683))

(assert (=> d!732214 m!2921685))

(declare-fun m!2922201 () Bool)

(assert (=> d!732214 m!2922201))

(declare-fun m!2922203 () Bool)

(assert (=> d!732214 m!2922203))

(declare-fun m!2922205 () Bool)

(assert (=> d!732214 m!2922205))

(declare-fun m!2922207 () Bool)

(assert (=> d!732214 m!2922207))

(declare-fun m!2922209 () Bool)

(assert (=> d!732214 m!2922209))

(assert (=> d!732214 m!2922205))

(declare-fun m!2922211 () Bool)

(assert (=> d!732214 m!2922211))

(assert (=> d!732214 m!2922201))

(declare-fun m!2922213 () Bool)

(assert (=> d!732214 m!2922213))

(assert (=> d!732214 m!2921683))

(declare-fun m!2922215 () Bool)

(assert (=> b!2586087 m!2922215))

(assert (=> b!2585831 d!732214))

(declare-fun d!732216 () Bool)

(assert (=> d!732216 (= (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))) (list!11254 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun bs!471708 () Bool)

(assert (= bs!471708 d!732216))

(declare-fun m!2922217 () Bool)

(assert (=> bs!471708 m!2922217))

(assert (=> b!2585855 d!732216))

(declare-fun d!732218 () Bool)

(assert (=> d!732218 true))

(declare-fun lambda!95807 () Int)

(declare-fun order!15843 () Int)

(declare-fun order!15841 () Int)

(declare-fun dynLambda!12588 (Int Int) Int)

(declare-fun dynLambda!12589 (Int Int) Int)

(assert (=> d!732218 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 rule!570))) (dynLambda!12589 order!15843 lambda!95807))))

(assert (=> d!732218 true))

(declare-fun order!15845 () Int)

(declare-fun dynLambda!12590 (Int Int) Int)

(assert (=> d!732218 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 rule!570))) (dynLambda!12589 order!15843 lambda!95807))))

(declare-fun Forall!1167 (Int) Bool)

(assert (=> d!732218 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) (Forall!1167 lambda!95807))))

(declare-fun bs!471709 () Bool)

(assert (= bs!471709 d!732218))

(declare-fun m!2922219 () Bool)

(assert (=> bs!471709 m!2922219))

(assert (=> d!732150 d!732218))

(declare-fun b!2586092 () Bool)

(declare-fun e!1631681 () Bool)

(declare-fun lt!909425 () Option!5936)

(assert (=> b!2586092 (= e!1631681 (contains!5325 (t!212231 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909425)))))))

(declare-fun b!2586093 () Bool)

(declare-fun e!1631682 () Option!5936)

(declare-fun call!166957 () Option!5936)

(assert (=> b!2586093 (= e!1631682 call!166957)))

(declare-fun b!2586094 () Bool)

(declare-fun lt!909423 () Option!5936)

(declare-fun lt!909426 () Option!5936)

(assert (=> b!2586094 (= e!1631682 (ite (and ((_ is None!5935) lt!909423) ((_ is None!5935) lt!909426)) None!5935 (ite ((_ is None!5935) lt!909426) lt!909423 (ite ((_ is None!5935) lt!909423) lt!909426 (ite (>= (size!23077 (_1!17401 (v!32038 lt!909423))) (size!23077 (_1!17401 (v!32038 lt!909426)))) lt!909423 lt!909426)))))))

(assert (=> b!2586094 (= lt!909423 call!166957)))

(assert (=> b!2586094 (= lt!909426 (maxPrefix!2290 thiss!28211 (t!212231 (t!212231 rules!4580)) input!3654))))

(declare-fun b!2586095 () Bool)

(declare-fun res!1087632 () Bool)

(assert (=> b!2586095 (=> (not res!1087632) (not e!1631681))))

(assert (=> b!2586095 (= res!1087632 (< (size!23078 (_2!17401 (get!9380 lt!909425))) (size!23078 input!3654)))))

(declare-fun bm!166952 () Bool)

(assert (=> bm!166952 (= call!166957 (maxPrefixOneRule!1456 thiss!28211 (h!35186 (t!212231 rules!4580)) input!3654))))

(declare-fun d!732220 () Bool)

(declare-fun e!1631683 () Bool)

(assert (=> d!732220 e!1631683))

(declare-fun res!1087634 () Bool)

(assert (=> d!732220 (=> res!1087634 e!1631683)))

(assert (=> d!732220 (= res!1087634 (isEmpty!17111 lt!909425))))

(assert (=> d!732220 (= lt!909425 e!1631682)))

(declare-fun c!416894 () Bool)

(assert (=> d!732220 (= c!416894 (and ((_ is Cons!29766) (t!212231 rules!4580)) ((_ is Nil!29766) (t!212231 (t!212231 rules!4580)))))))

(declare-fun lt!909424 () Unit!43600)

(declare-fun lt!909427 () Unit!43600)

(assert (=> d!732220 (= lt!909424 lt!909427)))

(assert (=> d!732220 (isPrefix!2421 input!3654 input!3654)))

(assert (=> d!732220 (= lt!909427 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(assert (=> d!732220 (rulesValidInductive!1595 thiss!28211 (t!212231 rules!4580))))

(assert (=> d!732220 (= (maxPrefix!2290 thiss!28211 (t!212231 rules!4580) input!3654) lt!909425)))

(declare-fun b!2586096 () Bool)

(declare-fun res!1087635 () Bool)

(assert (=> b!2586096 (=> (not res!1087635) (not e!1631681))))

(assert (=> b!2586096 (= res!1087635 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))) (originalCharacters!5287 (_1!17401 (get!9380 lt!909425)))))))

(declare-fun b!2586097 () Bool)

(assert (=> b!2586097 (= e!1631683 e!1631681)))

(declare-fun res!1087631 () Bool)

(assert (=> b!2586097 (=> (not res!1087631) (not e!1631681))))

(assert (=> b!2586097 (= res!1087631 (isDefined!4756 lt!909425))))

(declare-fun b!2586098 () Bool)

(declare-fun res!1087633 () Bool)

(assert (=> b!2586098 (=> (not res!1087633) (not e!1631681))))

(assert (=> b!2586098 (= res!1087633 (matchR!3598 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun b!2586099 () Bool)

(declare-fun res!1087636 () Bool)

(assert (=> b!2586099 (=> (not res!1087636) (not e!1631681))))

(assert (=> b!2586099 (= res!1087636 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))) (_2!17401 (get!9380 lt!909425))) input!3654))))

(declare-fun b!2586100 () Bool)

(declare-fun res!1087630 () Bool)

(assert (=> b!2586100 (=> (not res!1087630) (not e!1631681))))

(assert (=> b!2586100 (= res!1087630 (= (value!146096 (_1!17401 (get!9380 lt!909425))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425)))))))))

(assert (= (and d!732220 c!416894) b!2586093))

(assert (= (and d!732220 (not c!416894)) b!2586094))

(assert (= (or b!2586093 b!2586094) bm!166952))

(assert (= (and d!732220 (not res!1087634)) b!2586097))

(assert (= (and b!2586097 res!1087631) b!2586096))

(assert (= (and b!2586096 res!1087635) b!2586095))

(assert (= (and b!2586095 res!1087632) b!2586099))

(assert (= (and b!2586099 res!1087636) b!2586100))

(assert (= (and b!2586100 res!1087630) b!2586098))

(assert (= (and b!2586098 res!1087633) b!2586092))

(declare-fun m!2922221 () Bool)

(assert (=> b!2586098 m!2922221))

(declare-fun m!2922223 () Bool)

(assert (=> b!2586098 m!2922223))

(assert (=> b!2586098 m!2922223))

(declare-fun m!2922225 () Bool)

(assert (=> b!2586098 m!2922225))

(assert (=> b!2586098 m!2922225))

(declare-fun m!2922227 () Bool)

(assert (=> b!2586098 m!2922227))

(assert (=> b!2586100 m!2922221))

(declare-fun m!2922229 () Bool)

(assert (=> b!2586100 m!2922229))

(assert (=> b!2586100 m!2922229))

(declare-fun m!2922231 () Bool)

(assert (=> b!2586100 m!2922231))

(declare-fun m!2922233 () Bool)

(assert (=> d!732220 m!2922233))

(assert (=> d!732220 m!2922089))

(assert (=> d!732220 m!2922091))

(declare-fun m!2922235 () Bool)

(assert (=> d!732220 m!2922235))

(declare-fun m!2922237 () Bool)

(assert (=> b!2586097 m!2922237))

(assert (=> b!2586099 m!2922221))

(assert (=> b!2586099 m!2922223))

(assert (=> b!2586099 m!2922223))

(assert (=> b!2586099 m!2922225))

(assert (=> b!2586099 m!2922225))

(declare-fun m!2922239 () Bool)

(assert (=> b!2586099 m!2922239))

(assert (=> b!2586096 m!2922221))

(assert (=> b!2586096 m!2922223))

(assert (=> b!2586096 m!2922223))

(assert (=> b!2586096 m!2922225))

(assert (=> b!2586095 m!2922221))

(declare-fun m!2922241 () Bool)

(assert (=> b!2586095 m!2922241))

(assert (=> b!2586095 m!2921793))

(declare-fun m!2922243 () Bool)

(assert (=> b!2586094 m!2922243))

(declare-fun m!2922245 () Bool)

(assert (=> bm!166952 m!2922245))

(assert (=> b!2586092 m!2922221))

(declare-fun m!2922247 () Bool)

(assert (=> b!2586092 m!2922247))

(assert (=> b!2585912 d!732220))

(declare-fun d!732222 () Bool)

(assert (=> d!732222 (= (isEmpty!17110 (tail!4135 lt!909246)) ((_ is Nil!29765) (tail!4135 lt!909246)))))

(assert (=> b!2585842 d!732222))

(declare-fun d!732224 () Bool)

(assert (=> d!732224 (= (tail!4135 lt!909246) (t!212230 lt!909246))))

(assert (=> b!2585842 d!732224))

(declare-fun b!2586101 () Bool)

(declare-fun e!1631686 () Bool)

(declare-fun lt!909429 () Option!5936)

(assert (=> b!2586101 (= e!1631686 (= (size!23077 (_1!17401 (get!9380 lt!909429))) (size!23078 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429))))))))

(declare-fun b!2586102 () Bool)

(declare-fun e!1631687 () Bool)

(assert (=> b!2586102 (= e!1631687 (matchR!3598 (regex!4521 (h!35186 rules!4580)) (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun b!2586103 () Bool)

(declare-fun e!1631684 () Bool)

(assert (=> b!2586103 (= e!1631684 e!1631686)))

(declare-fun res!1087641 () Bool)

(assert (=> b!2586103 (=> (not res!1087641) (not e!1631686))))

(assert (=> b!2586103 (= res!1087641 (matchR!3598 (regex!4521 (h!35186 rules!4580)) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))

(declare-fun b!2586104 () Bool)

(declare-fun res!1087638 () Bool)

(assert (=> b!2586104 (=> (not res!1087638) (not e!1631686))))

(assert (=> b!2586104 (= res!1087638 (= (value!146096 (_1!17401 (get!9380 lt!909429))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))))))))

(declare-fun b!2586105 () Bool)

(declare-fun res!1087640 () Bool)

(assert (=> b!2586105 (=> (not res!1087640) (not e!1631686))))

(assert (=> b!2586105 (= res!1087640 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))) (_2!17401 (get!9380 lt!909429))) input!3654))))

(declare-fun b!2586106 () Bool)

(declare-fun res!1087639 () Bool)

(assert (=> b!2586106 (=> (not res!1087639) (not e!1631686))))

(assert (=> b!2586106 (= res!1087639 (< (size!23078 (_2!17401 (get!9380 lt!909429))) (size!23078 input!3654)))))

(declare-fun b!2586107 () Bool)

(declare-fun e!1631685 () Option!5936)

(declare-fun lt!909431 () tuple2!29720)

(assert (=> b!2586107 (= e!1631685 (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 (h!35186 rules!4580)) (seqFromList!3161 (_1!17402 lt!909431))) (h!35186 rules!4580) (size!23079 (seqFromList!3161 (_1!17402 lt!909431))) (_1!17402 lt!909431)) (_2!17402 lt!909431))))))

(declare-fun lt!909428 () Unit!43600)

(assert (=> b!2586107 (= lt!909428 (longestMatchIsAcceptedByMatchOrIsEmpty!729 (regex!4521 (h!35186 rules!4580)) input!3654))))

(declare-fun res!1087642 () Bool)

(assert (=> b!2586107 (= res!1087642 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2586107 (=> res!1087642 e!1631687)))

(assert (=> b!2586107 e!1631687))

(declare-fun lt!909430 () Unit!43600)

(assert (=> b!2586107 (= lt!909430 lt!909428)))

(declare-fun lt!909432 () Unit!43600)

(assert (=> b!2586107 (= lt!909432 (lemmaSemiInverse!1107 (transformation!4521 (h!35186 rules!4580)) (seqFromList!3161 (_1!17402 lt!909431))))))

(declare-fun d!732226 () Bool)

(assert (=> d!732226 e!1631684))

(declare-fun res!1087643 () Bool)

(assert (=> d!732226 (=> res!1087643 e!1631684)))

(assert (=> d!732226 (= res!1087643 (isEmpty!17111 lt!909429))))

(assert (=> d!732226 (= lt!909429 e!1631685)))

(declare-fun c!416895 () Bool)

(assert (=> d!732226 (= c!416895 (isEmpty!17110 (_1!17402 lt!909431)))))

(assert (=> d!732226 (= lt!909431 (findLongestMatch!685 (regex!4521 (h!35186 rules!4580)) input!3654))))

(assert (=> d!732226 (ruleValid!1527 thiss!28211 (h!35186 rules!4580))))

(assert (=> d!732226 (= (maxPrefixOneRule!1456 thiss!28211 (h!35186 rules!4580) input!3654) lt!909429)))

(declare-fun b!2586108 () Bool)

(assert (=> b!2586108 (= e!1631685 None!5935)))

(declare-fun b!2586109 () Bool)

(declare-fun res!1087637 () Bool)

(assert (=> b!2586109 (=> (not res!1087637) (not e!1631686))))

(assert (=> b!2586109 (= res!1087637 (= (rule!6887 (_1!17401 (get!9380 lt!909429))) (h!35186 rules!4580)))))

(assert (= (and d!732226 c!416895) b!2586108))

(assert (= (and d!732226 (not c!416895)) b!2586107))

(assert (= (and b!2586107 (not res!1087642)) b!2586102))

(assert (= (and d!732226 (not res!1087643)) b!2586103))

(assert (= (and b!2586103 res!1087641) b!2586105))

(assert (= (and b!2586105 res!1087640) b!2586106))

(assert (= (and b!2586106 res!1087639) b!2586109))

(assert (= (and b!2586109 res!1087637) b!2586104))

(assert (= (and b!2586104 res!1087638) b!2586101))

(declare-fun m!2922249 () Bool)

(assert (=> b!2586106 m!2922249))

(declare-fun m!2922251 () Bool)

(assert (=> b!2586106 m!2922251))

(assert (=> b!2586106 m!2921793))

(declare-fun m!2922253 () Bool)

(assert (=> d!732226 m!2922253))

(declare-fun m!2922255 () Bool)

(assert (=> d!732226 m!2922255))

(declare-fun m!2922257 () Bool)

(assert (=> d!732226 m!2922257))

(declare-fun m!2922259 () Bool)

(assert (=> d!732226 m!2922259))

(assert (=> b!2586102 m!2921801))

(assert (=> b!2586102 m!2921793))

(assert (=> b!2586102 m!2921801))

(assert (=> b!2586102 m!2921793))

(declare-fun m!2922261 () Bool)

(assert (=> b!2586102 m!2922261))

(declare-fun m!2922263 () Bool)

(assert (=> b!2586102 m!2922263))

(assert (=> b!2586109 m!2922249))

(assert (=> b!2586104 m!2922249))

(declare-fun m!2922265 () Bool)

(assert (=> b!2586104 m!2922265))

(assert (=> b!2586104 m!2922265))

(declare-fun m!2922267 () Bool)

(assert (=> b!2586104 m!2922267))

(assert (=> b!2586103 m!2922249))

(declare-fun m!2922269 () Bool)

(assert (=> b!2586103 m!2922269))

(assert (=> b!2586103 m!2922269))

(declare-fun m!2922271 () Bool)

(assert (=> b!2586103 m!2922271))

(assert (=> b!2586103 m!2922271))

(declare-fun m!2922273 () Bool)

(assert (=> b!2586103 m!2922273))

(assert (=> b!2586101 m!2922249))

(declare-fun m!2922275 () Bool)

(assert (=> b!2586101 m!2922275))

(assert (=> b!2586105 m!2922249))

(assert (=> b!2586105 m!2922269))

(assert (=> b!2586105 m!2922269))

(assert (=> b!2586105 m!2922271))

(assert (=> b!2586105 m!2922271))

(declare-fun m!2922277 () Bool)

(assert (=> b!2586105 m!2922277))

(declare-fun m!2922279 () Bool)

(assert (=> b!2586107 m!2922279))

(declare-fun m!2922281 () Bool)

(assert (=> b!2586107 m!2922281))

(assert (=> b!2586107 m!2921801))

(assert (=> b!2586107 m!2921793))

(assert (=> b!2586107 m!2922261))

(assert (=> b!2586107 m!2922279))

(declare-fun m!2922283 () Bool)

(assert (=> b!2586107 m!2922283))

(assert (=> b!2586107 m!2922279))

(declare-fun m!2922285 () Bool)

(assert (=> b!2586107 m!2922285))

(assert (=> b!2586107 m!2921801))

(assert (=> b!2586107 m!2921793))

(declare-fun m!2922287 () Bool)

(assert (=> b!2586107 m!2922287))

(assert (=> b!2586107 m!2922279))

(declare-fun m!2922289 () Bool)

(assert (=> b!2586107 m!2922289))

(assert (=> bm!166950 d!732226))

(declare-fun d!732228 () Bool)

(assert (=> d!732228 (= (isEmpty!17110 (originalCharacters!5287 token!562)) ((_ is Nil!29765) (originalCharacters!5287 token!562)))))

(assert (=> d!732160 d!732228))

(declare-fun d!732230 () Bool)

(declare-fun nullableFct!788 (Regex!7665) Bool)

(assert (=> d!732230 (= (nullable!2570 (regex!4521 rule!570)) (nullableFct!788 (regex!4521 rule!570)))))

(declare-fun bs!471710 () Bool)

(assert (= bs!471710 d!732230))

(declare-fun m!2922291 () Bool)

(assert (=> bs!471710 m!2922291))

(assert (=> b!2585800 d!732230))

(declare-fun d!732232 () Bool)

(assert (=> d!732232 (= (get!9380 lt!909268) (v!32038 lt!909268))))

(assert (=> b!2585686 d!732232))

(declare-fun d!732234 () Bool)

(assert (=> d!732234 (= (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun b_lambda!76815 () Bool)

(assert (=> (not b_lambda!76815) (not d!732234)))

(declare-fun tb!140889 () Bool)

(declare-fun t!212284 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212284) tb!140889))

(declare-fun result!175172 () Bool)

(assert (=> tb!140889 (= result!175172 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun m!2922293 () Bool)

(assert (=> tb!140889 m!2922293))

(assert (=> d!732234 t!212284))

(declare-fun b_and!189611 () Bool)

(assert (= b_and!189559 (and (=> t!212284 result!175172) b_and!189611)))

(declare-fun tb!140891 () Bool)

(declare-fun t!212286 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212286) tb!140891))

(declare-fun result!175174 () Bool)

(assert (= result!175174 result!175172))

(assert (=> d!732234 t!212286))

(declare-fun b_and!189613 () Bool)

(assert (= b_and!189561 (and (=> t!212286 result!175174) b_and!189613)))

(declare-fun tb!140893 () Bool)

(declare-fun t!212288 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212288) tb!140893))

(declare-fun result!175176 () Bool)

(assert (= result!175176 result!175172))

(assert (=> d!732234 t!212288))

(declare-fun b_and!189615 () Bool)

(assert (= b_and!189599 (and (=> t!212288 result!175176) b_and!189615)))

(declare-fun tb!140895 () Bool)

(declare-fun t!212290 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212290) tb!140895))

(declare-fun result!175178 () Bool)

(assert (= result!175178 result!175172))

(assert (=> d!732234 t!212290))

(declare-fun b_and!189617 () Bool)

(assert (= b_and!189595 (and (=> t!212290 result!175178) b_and!189617)))

(declare-fun t!212292 () Bool)

(declare-fun tb!140897 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212292) tb!140897))

(declare-fun result!175180 () Bool)

(assert (= result!175180 result!175172))

(assert (=> d!732234 t!212292))

(declare-fun b_and!189619 () Bool)

(assert (= b_and!189555 (and (=> t!212292 result!175180) b_and!189619)))

(declare-fun tb!140899 () Bool)

(declare-fun t!212294 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212294) tb!140899))

(declare-fun result!175182 () Bool)

(assert (= result!175182 result!175172))

(assert (=> d!732234 t!212294))

(declare-fun b_and!189621 () Bool)

(assert (= b_and!189557 (and (=> t!212294 result!175182) b_and!189621)))

(assert (=> d!732234 m!2921807))

(declare-fun m!2922295 () Bool)

(assert (=> d!732234 m!2922295))

(assert (=> b!2585686 d!732234))

(declare-fun d!732236 () Bool)

(assert (=> d!732236 (= (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))) (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))

(declare-fun bs!471711 () Bool)

(assert (= bs!471711 d!732236))

(declare-fun m!2922297 () Bool)

(assert (=> bs!471711 m!2922297))

(assert (=> b!2585686 d!732236))

(declare-fun d!732238 () Bool)

(declare-fun charsToInt!0 (List!29864) (_ BitVec 32))

(assert (=> d!732238 (= (inv!16 (value!146096 token!562)) (= (charsToInt!0 (text!33648 (value!146096 token!562))) (value!146087 (value!146096 token!562))))))

(declare-fun bs!471712 () Bool)

(assert (= bs!471712 d!732238))

(declare-fun m!2922299 () Bool)

(assert (=> bs!471712 m!2922299))

(assert (=> b!2585941 d!732238))

(declare-fun d!732240 () Bool)

(declare-fun lt!909433 () Int)

(assert (=> d!732240 (>= lt!909433 0)))

(declare-fun e!1631689 () Int)

(assert (=> d!732240 (= lt!909433 e!1631689)))

(declare-fun c!416896 () Bool)

(assert (=> d!732240 (= c!416896 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909268))))))

(assert (=> d!732240 (= (size!23078 (_2!17401 (get!9380 lt!909268))) lt!909433)))

(declare-fun b!2586110 () Bool)

(assert (=> b!2586110 (= e!1631689 0)))

(declare-fun b!2586111 () Bool)

(assert (=> b!2586111 (= e!1631689 (+ 1 (size!23078 (t!212230 (_2!17401 (get!9380 lt!909268))))))))

(assert (= (and d!732240 c!416896) b!2586110))

(assert (= (and d!732240 (not c!416896)) b!2586111))

(declare-fun m!2922301 () Bool)

(assert (=> b!2586111 m!2922301))

(assert (=> b!2585688 d!732240))

(assert (=> b!2585688 d!732232))

(declare-fun d!732242 () Bool)

(declare-fun lt!909434 () Int)

(assert (=> d!732242 (>= lt!909434 0)))

(declare-fun e!1631690 () Int)

(assert (=> d!732242 (= lt!909434 e!1631690)))

(declare-fun c!416897 () Bool)

(assert (=> d!732242 (= c!416897 ((_ is Nil!29765) input!3654))))

(assert (=> d!732242 (= (size!23078 input!3654) lt!909434)))

(declare-fun b!2586112 () Bool)

(assert (=> b!2586112 (= e!1631690 0)))

(declare-fun b!2586113 () Bool)

(assert (=> b!2586113 (= e!1631690 (+ 1 (size!23078 (t!212230 input!3654))))))

(assert (= (and d!732242 c!416897) b!2586112))

(assert (= (and d!732242 (not c!416897)) b!2586113))

(declare-fun m!2922303 () Bool)

(assert (=> b!2586113 m!2922303))

(assert (=> b!2585688 d!732242))

(assert (=> b!2585792 d!732230))

(declare-fun d!732244 () Bool)

(assert (=> d!732244 (= (isEmpty!17111 lt!909381) (not ((_ is Some!5935) lt!909381)))))

(assert (=> d!732162 d!732244))

(declare-fun b!2586123 () Bool)

(declare-fun res!1087654 () Bool)

(declare-fun e!1631699 () Bool)

(assert (=> b!2586123 (=> (not res!1087654) (not e!1631699))))

(assert (=> b!2586123 (= res!1087654 (= (head!5862 input!3654) (head!5862 input!3654)))))

(declare-fun b!2586125 () Bool)

(declare-fun e!1631698 () Bool)

(assert (=> b!2586125 (= e!1631698 (>= (size!23078 input!3654) (size!23078 input!3654)))))

(declare-fun b!2586124 () Bool)

(assert (=> b!2586124 (= e!1631699 (isPrefix!2421 (tail!4135 input!3654) (tail!4135 input!3654)))))

(declare-fun b!2586122 () Bool)

(declare-fun e!1631697 () Bool)

(assert (=> b!2586122 (= e!1631697 e!1631699)))

(declare-fun res!1087652 () Bool)

(assert (=> b!2586122 (=> (not res!1087652) (not e!1631699))))

(assert (=> b!2586122 (= res!1087652 (not ((_ is Nil!29765) input!3654)))))

(declare-fun d!732246 () Bool)

(assert (=> d!732246 e!1631698))

(declare-fun res!1087653 () Bool)

(assert (=> d!732246 (=> res!1087653 e!1631698)))

(declare-fun lt!909437 () Bool)

(assert (=> d!732246 (= res!1087653 (not lt!909437))))

(assert (=> d!732246 (= lt!909437 e!1631697)))

(declare-fun res!1087655 () Bool)

(assert (=> d!732246 (=> res!1087655 e!1631697)))

(assert (=> d!732246 (= res!1087655 ((_ is Nil!29765) input!3654))))

(assert (=> d!732246 (= (isPrefix!2421 input!3654 input!3654) lt!909437)))

(assert (= (and d!732246 (not res!1087655)) b!2586122))

(assert (= (and b!2586122 res!1087652) b!2586123))

(assert (= (and b!2586123 res!1087654) b!2586124))

(assert (= (and d!732246 (not res!1087653)) b!2586125))

(declare-fun m!2922305 () Bool)

(assert (=> b!2586123 m!2922305))

(assert (=> b!2586123 m!2922305))

(assert (=> b!2586125 m!2921793))

(assert (=> b!2586125 m!2921793))

(declare-fun m!2922307 () Bool)

(assert (=> b!2586124 m!2922307))

(assert (=> b!2586124 m!2922307))

(assert (=> b!2586124 m!2922307))

(assert (=> b!2586124 m!2922307))

(declare-fun m!2922309 () Bool)

(assert (=> b!2586124 m!2922309))

(assert (=> d!732162 d!732246))

(declare-fun d!732248 () Bool)

(assert (=> d!732248 (isPrefix!2421 input!3654 input!3654)))

(declare-fun lt!909440 () Unit!43600)

(declare-fun choose!15242 (List!29865 List!29865) Unit!43600)

(assert (=> d!732248 (= lt!909440 (choose!15242 input!3654 input!3654))))

(assert (=> d!732248 (= (lemmaIsPrefixRefl!1547 input!3654 input!3654) lt!909440)))

(declare-fun bs!471713 () Bool)

(assert (= bs!471713 d!732248))

(assert (=> bs!471713 m!2922089))

(declare-fun m!2922311 () Bool)

(assert (=> bs!471713 m!2922311))

(assert (=> d!732162 d!732248))

(declare-fun bs!471714 () Bool)

(declare-fun d!732250 () Bool)

(assert (= bs!471714 (and d!732250 d!732122)))

(declare-fun lambda!95810 () Int)

(assert (=> bs!471714 (= lambda!95810 lambda!95796)))

(assert (=> d!732250 true))

(declare-fun lt!909443 () Bool)

(assert (=> d!732250 (= lt!909443 (forall!6067 rules!4580 lambda!95810))))

(declare-fun e!1631704 () Bool)

(assert (=> d!732250 (= lt!909443 e!1631704)))

(declare-fun res!1087661 () Bool)

(assert (=> d!732250 (=> res!1087661 e!1631704)))

(assert (=> d!732250 (= res!1087661 (not ((_ is Cons!29766) rules!4580)))))

(assert (=> d!732250 (= (rulesValidInductive!1595 thiss!28211 rules!4580) lt!909443)))

(declare-fun b!2586130 () Bool)

(declare-fun e!1631705 () Bool)

(assert (=> b!2586130 (= e!1631704 e!1631705)))

(declare-fun res!1087660 () Bool)

(assert (=> b!2586130 (=> (not res!1087660) (not e!1631705))))

(assert (=> b!2586130 (= res!1087660 (ruleValid!1527 thiss!28211 (h!35186 rules!4580)))))

(declare-fun b!2586131 () Bool)

(assert (=> b!2586131 (= e!1631705 (rulesValidInductive!1595 thiss!28211 (t!212231 rules!4580)))))

(assert (= (and d!732250 (not res!1087661)) b!2586130))

(assert (= (and b!2586130 res!1087660) b!2586131))

(declare-fun m!2922313 () Bool)

(assert (=> d!732250 m!2922313))

(assert (=> b!2586130 m!2922259))

(assert (=> b!2586131 m!2922235))

(assert (=> d!732162 d!732250))

(declare-fun d!732254 () Bool)

(declare-fun lt!909444 () Bool)

(assert (=> d!732254 (= lt!909444 (select (content!4113 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun e!1631706 () Bool)

(assert (=> d!732254 (= lt!909444 e!1631706)))

(declare-fun res!1087662 () Bool)

(assert (=> d!732254 (=> (not res!1087662) (not e!1631706))))

(assert (=> d!732254 (= res!1087662 ((_ is Cons!29766) rules!4580))))

(assert (=> d!732254 (= (contains!5325 rules!4580 (rule!6887 (_1!17401 (get!9380 lt!909381)))) lt!909444)))

(declare-fun b!2586132 () Bool)

(declare-fun e!1631707 () Bool)

(assert (=> b!2586132 (= e!1631706 e!1631707)))

(declare-fun res!1087663 () Bool)

(assert (=> b!2586132 (=> res!1087663 e!1631707)))

(assert (=> b!2586132 (= res!1087663 (= (h!35186 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun b!2586133 () Bool)

(assert (=> b!2586133 (= e!1631707 (contains!5325 (t!212231 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(assert (= (and d!732254 res!1087662) b!2586132))

(assert (= (and b!2586132 (not res!1087663)) b!2586133))

(assert (=> d!732254 m!2921875))

(declare-fun m!2922315 () Bool)

(assert (=> d!732254 m!2922315))

(declare-fun m!2922317 () Bool)

(assert (=> b!2586133 m!2922317))

(assert (=> b!2585910 d!732254))

(declare-fun d!732256 () Bool)

(assert (=> d!732256 (= (get!9380 lt!909381) (v!32038 lt!909381))))

(assert (=> b!2585910 d!732256))

(declare-fun d!732258 () Bool)

(declare-fun charsToBigInt!1 (List!29864) Int)

(assert (=> d!732258 (= (inv!17 (value!146096 token!562)) (= (charsToBigInt!1 (text!33649 (value!146096 token!562))) (value!146088 (value!146096 token!562))))))

(declare-fun bs!471715 () Bool)

(assert (= bs!471715 d!732258))

(declare-fun m!2922321 () Bool)

(assert (=> bs!471715 m!2922321))

(assert (=> b!2585943 d!732258))

(declare-fun d!732260 () Bool)

(assert (=> d!732260 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909343)) rule!570 (size!23078 lt!909343) lt!909343) suffix!1684)))))

(declare-fun lt!909445 () Unit!43600)

(assert (=> d!732260 (= lt!909445 (choose!15238 thiss!28211 rules!4580 lt!909343 input!3654 suffix!1684 rule!570))))

(assert (=> d!732260 (not (isEmpty!17109 rules!4580))))

(assert (=> d!732260 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909343 input!3654 suffix!1684 rule!570) lt!909445)))

(declare-fun bs!471717 () Bool)

(assert (= bs!471717 d!732260))

(assert (=> bs!471717 m!2921977))

(assert (=> bs!471717 m!2921985))

(assert (=> bs!471717 m!2921687))

(assert (=> bs!471717 m!2921723))

(assert (=> bs!471717 m!2921977))

(assert (=> bs!471717 m!2921979))

(declare-fun m!2922323 () Bool)

(assert (=> bs!471717 m!2922323))

(assert (=> d!732146 d!732260))

(declare-fun d!732264 () Bool)

(declare-fun lt!909446 () List!29867)

(assert (=> d!732264 (= (size!23082 lt!909446) (size!23083 (t!212231 rs!798)))))

(declare-fun e!1631708 () List!29867)

(assert (=> d!732264 (= lt!909446 e!1631708)))

(declare-fun c!416898 () Bool)

(assert (=> d!732264 (= c!416898 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!732264 (= (map!6607 (t!212231 rs!798) lambda!95801) lt!909446)))

(declare-fun b!2586134 () Bool)

(assert (=> b!2586134 (= e!1631708 Nil!29767)))

(declare-fun b!2586135 () Bool)

(assert (=> b!2586135 (= e!1631708 ($colon$colon!544 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95801) (dynLambda!12586 lambda!95801 (h!35186 (t!212231 rs!798)))))))

(assert (= (and d!732264 c!416898) b!2586134))

(assert (= (and d!732264 (not c!416898)) b!2586135))

(declare-fun b_lambda!76817 () Bool)

(assert (=> (not b_lambda!76817) (not b!2586135)))

(declare-fun m!2922325 () Bool)

(assert (=> d!732264 m!2922325))

(declare-fun m!2922327 () Bool)

(assert (=> d!732264 m!2922327))

(declare-fun m!2922329 () Bool)

(assert (=> b!2586135 m!2922329))

(declare-fun m!2922331 () Bool)

(assert (=> b!2586135 m!2922331))

(assert (=> b!2586135 m!2922329))

(assert (=> b!2586135 m!2922331))

(declare-fun m!2922333 () Bool)

(assert (=> b!2586135 m!2922333))

(assert (=> d!732146 d!732264))

(assert (=> d!732146 d!732078))

(assert (=> d!732146 d!732080))

(declare-fun d!732268 () Bool)

(declare-fun lt!909447 () Int)

(assert (=> d!732268 (>= lt!909447 0)))

(declare-fun e!1631709 () Int)

(assert (=> d!732268 (= lt!909447 e!1631709)))

(declare-fun c!416899 () Bool)

(assert (=> d!732268 (= c!416899 ((_ is Nil!29765) lt!909343))))

(assert (=> d!732268 (= (size!23078 lt!909343) lt!909447)))

(declare-fun b!2586136 () Bool)

(assert (=> b!2586136 (= e!1631709 0)))

(declare-fun b!2586137 () Bool)

(assert (=> b!2586137 (= e!1631709 (+ 1 (size!23078 (t!212230 lt!909343))))))

(assert (= (and d!732268 c!416899) b!2586136))

(assert (= (and d!732268 (not c!416899)) b!2586137))

(declare-fun m!2922335 () Bool)

(assert (=> b!2586137 m!2922335))

(assert (=> d!732146 d!732268))

(assert (=> d!732146 d!732114))

(declare-fun d!732272 () Bool)

(assert (=> d!732272 (= (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909343)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343)))))

(declare-fun b_lambda!76819 () Bool)

(assert (=> (not b_lambda!76819) (not d!732272)))

(declare-fun tb!140901 () Bool)

(declare-fun t!212296 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570))) t!212296) tb!140901))

(declare-fun result!175184 () Bool)

(assert (=> tb!140901 (= result!175184 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun m!2922341 () Bool)

(assert (=> tb!140901 m!2922341))

(assert (=> d!732272 t!212296))

(declare-fun b_and!189623 () Bool)

(assert (= b_and!189613 (and (=> t!212296 result!175184) b_and!189623)))

(declare-fun t!212298 () Bool)

(declare-fun tb!140903 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) t!212298) tb!140903))

(declare-fun result!175186 () Bool)

(assert (= result!175186 result!175184))

(assert (=> d!732272 t!212298))

(declare-fun b_and!189625 () Bool)

(assert (= b_and!189621 (and (=> t!212298 result!175186) b_and!189625)))

(declare-fun t!212300 () Bool)

(declare-fun tb!140905 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570))) t!212300) tb!140905))

(declare-fun result!175188 () Bool)

(assert (= result!175188 result!175184))

(assert (=> d!732272 t!212300))

(declare-fun b_and!189627 () Bool)

(assert (= b_and!189617 (and (=> t!212300 result!175188) b_and!189627)))

(declare-fun t!212302 () Bool)

(declare-fun tb!140907 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570))) t!212302) tb!140907))

(declare-fun result!175190 () Bool)

(assert (= result!175190 result!175184))

(assert (=> d!732272 t!212302))

(declare-fun b_and!189629 () Bool)

(assert (= b_and!189619 (and (=> t!212302 result!175190) b_and!189629)))

(declare-fun t!212304 () Bool)

(declare-fun tb!140909 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570))) t!212304) tb!140909))

(declare-fun result!175192 () Bool)

(assert (= result!175192 result!175184))

(assert (=> d!732272 t!212304))

(declare-fun b_and!189631 () Bool)

(assert (= b_and!189611 (and (=> t!212304 result!175192) b_and!189631)))

(declare-fun tb!140911 () Bool)

(declare-fun t!212306 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570))) t!212306) tb!140911))

(declare-fun result!175194 () Bool)

(assert (= result!175194 result!175184))

(assert (=> d!732272 t!212306))

(declare-fun b_and!189633 () Bool)

(assert (= b_and!189615 (and (=> t!212306 result!175194) b_and!189633)))

(assert (=> d!732272 m!2921977))

(declare-fun m!2922345 () Bool)

(assert (=> d!732272 m!2922345))

(assert (=> d!732146 d!732272))

(declare-fun d!732276 () Bool)

(assert (=> d!732276 (= (seqFromList!3161 lt!909343) (fromListB!1430 lt!909343))))

(declare-fun bs!471718 () Bool)

(assert (= bs!471718 d!732276))

(declare-fun m!2922349 () Bool)

(assert (=> bs!471718 m!2922349))

(assert (=> d!732146 d!732276))

(declare-fun bs!471719 () Bool)

(declare-fun d!732278 () Bool)

(assert (= bs!471719 (and d!732278 d!732122)))

(declare-fun lambda!95811 () Int)

(assert (=> bs!471719 (= lambda!95811 lambda!95796)))

(declare-fun bs!471720 () Bool)

(assert (= bs!471720 (and d!732278 d!732250)))

(assert (=> bs!471720 (= lambda!95811 lambda!95810)))

(assert (=> d!732278 true))

(declare-fun lt!909448 () Bool)

(assert (=> d!732278 (= lt!909448 (rulesValidInductive!1595 thiss!28211 (t!212231 rs!798)))))

(assert (=> d!732278 (= lt!909448 (forall!6067 (t!212231 rs!798) lambda!95811))))

(assert (=> d!732278 (= (rulesValid!1693 thiss!28211 (t!212231 rs!798)) lt!909448)))

(declare-fun bs!471722 () Bool)

(assert (= bs!471722 d!732278))

(declare-fun m!2922351 () Bool)

(assert (=> bs!471722 m!2922351))

(declare-fun m!2922353 () Bool)

(assert (=> bs!471722 m!2922353))

(assert (=> d!732146 d!732278))

(declare-fun d!732282 () Bool)

(declare-fun res!1087667 () Bool)

(declare-fun e!1631714 () Bool)

(assert (=> d!732282 (=> res!1087667 e!1631714)))

(assert (=> d!732282 (= res!1087667 ((_ is Nil!29767) (map!6607 (t!212231 rs!798) lambda!95801)))))

(assert (=> d!732282 (= (forall!6065 (map!6607 (t!212231 rs!798) lambda!95801) lambda!95802) e!1631714)))

(declare-fun b!2586141 () Bool)

(declare-fun e!1631715 () Bool)

(assert (=> b!2586141 (= e!1631714 e!1631715)))

(declare-fun res!1087668 () Bool)

(assert (=> b!2586141 (=> (not res!1087668) (not e!1631715))))

(assert (=> b!2586141 (= res!1087668 (dynLambda!12585 lambda!95802 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))

(declare-fun b!2586142 () Bool)

(assert (=> b!2586142 (= e!1631715 (forall!6065 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801)) lambda!95802))))

(assert (= (and d!732282 (not res!1087667)) b!2586141))

(assert (= (and b!2586141 res!1087668) b!2586142))

(declare-fun b_lambda!76823 () Bool)

(assert (=> (not b_lambda!76823) (not b!2586141)))

(declare-fun m!2922359 () Bool)

(assert (=> b!2586141 m!2922359))

(declare-fun m!2922361 () Bool)

(assert (=> b!2586142 m!2922361))

(assert (=> d!732146 d!732282))

(assert (=> b!2585838 d!732222))

(assert (=> b!2585838 d!732224))

(declare-fun bs!471725 () Bool)

(declare-fun d!732286 () Bool)

(assert (= bs!471725 (and d!732286 d!732218)))

(declare-fun lambda!95813 () Int)

(assert (=> bs!471725 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95813 lambda!95807))))

(assert (=> d!732286 true))

(assert (=> d!732286 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (dynLambda!12589 order!15843 lambda!95813))))

(assert (=> d!732286 true))

(assert (=> d!732286 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (dynLambda!12589 order!15843 lambda!95813))))

(assert (=> d!732286 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (Forall!1167 lambda!95813))))

(declare-fun bs!471726 () Bool)

(assert (= bs!471726 d!732286))

(declare-fun m!2922365 () Bool)

(assert (=> bs!471726 m!2922365))

(assert (=> d!732156 d!732286))

(declare-fun b!2586145 () Bool)

(declare-fun e!1631722 () Bool)

(declare-fun lt!909452 () Bool)

(assert (=> b!2586145 (= e!1631722 (not lt!909452))))

(declare-fun d!732288 () Bool)

(declare-fun e!1631723 () Bool)

(assert (=> d!732288 e!1631723))

(declare-fun c!416902 () Bool)

(assert (=> d!732288 (= c!416902 ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun e!1631717 () Bool)

(assert (=> d!732288 (= lt!909452 e!1631717)))

(declare-fun c!416901 () Bool)

(assert (=> d!732288 (= c!416901 (isEmpty!17110 (tail!4135 lt!909247)))))

(assert (=> d!732288 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))

(assert (=> d!732288 (= (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (tail!4135 lt!909247)) lt!909452)))

(declare-fun b!2586146 () Bool)

(declare-fun res!1087676 () Bool)

(declare-fun e!1631720 () Bool)

(assert (=> b!2586146 (=> (not res!1087676) (not e!1631720))))

(assert (=> b!2586146 (= res!1087676 (isEmpty!17110 (tail!4135 (tail!4135 lt!909247))))))

(declare-fun b!2586147 () Bool)

(assert (=> b!2586147 (= e!1631717 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))) (tail!4135 (tail!4135 lt!909247))))))

(declare-fun b!2586148 () Bool)

(declare-fun res!1087669 () Bool)

(assert (=> b!2586148 (=> (not res!1087669) (not e!1631720))))

(declare-fun call!166958 () Bool)

(assert (=> b!2586148 (= res!1087669 (not call!166958))))

(declare-fun b!2586149 () Bool)

(assert (=> b!2586149 (= e!1631723 (= lt!909452 call!166958))))

(declare-fun b!2586150 () Bool)

(declare-fun res!1087675 () Bool)

(declare-fun e!1631719 () Bool)

(assert (=> b!2586150 (=> res!1087675 e!1631719)))

(assert (=> b!2586150 (= res!1087675 (not (isEmpty!17110 (tail!4135 (tail!4135 lt!909247)))))))

(declare-fun b!2586151 () Bool)

(declare-fun res!1087671 () Bool)

(declare-fun e!1631721 () Bool)

(assert (=> b!2586151 (=> res!1087671 e!1631721)))

(assert (=> b!2586151 (= res!1087671 e!1631720)))

(declare-fun res!1087674 () Bool)

(assert (=> b!2586151 (=> (not res!1087674) (not e!1631720))))

(assert (=> b!2586151 (= res!1087674 lt!909452)))

(declare-fun b!2586152 () Bool)

(declare-fun e!1631718 () Bool)

(assert (=> b!2586152 (= e!1631721 e!1631718)))

(declare-fun res!1087673 () Bool)

(assert (=> b!2586152 (=> (not res!1087673) (not e!1631718))))

(assert (=> b!2586152 (= res!1087673 (not lt!909452))))

(declare-fun b!2586153 () Bool)

(declare-fun res!1087672 () Bool)

(assert (=> b!2586153 (=> res!1087672 e!1631721)))

(assert (=> b!2586153 (= res!1087672 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))

(assert (=> b!2586153 (= e!1631722 e!1631721)))

(declare-fun b!2586154 () Bool)

(assert (=> b!2586154 (= e!1631720 (= (head!5862 (tail!4135 lt!909247)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))

(declare-fun b!2586155 () Bool)

(assert (=> b!2586155 (= e!1631717 (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun b!2586156 () Bool)

(assert (=> b!2586156 (= e!1631723 e!1631722)))

(declare-fun c!416903 () Bool)

(assert (=> b!2586156 (= c!416903 ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun b!2586157 () Bool)

(assert (=> b!2586157 (= e!1631719 (not (= (head!5862 (tail!4135 lt!909247)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))))

(declare-fun bm!166953 () Bool)

(assert (=> bm!166953 (= call!166958 (isEmpty!17110 (tail!4135 lt!909247)))))

(declare-fun b!2586158 () Bool)

(assert (=> b!2586158 (= e!1631718 e!1631719)))

(declare-fun res!1087670 () Bool)

(assert (=> b!2586158 (=> res!1087670 e!1631719)))

(assert (=> b!2586158 (= res!1087670 call!166958)))

(assert (= (and d!732288 c!416901) b!2586155))

(assert (= (and d!732288 (not c!416901)) b!2586147))

(assert (= (and d!732288 c!416902) b!2586149))

(assert (= (and d!732288 (not c!416902)) b!2586156))

(assert (= (and b!2586156 c!416903) b!2586145))

(assert (= (and b!2586156 (not c!416903)) b!2586153))

(assert (= (and b!2586153 (not res!1087672)) b!2586151))

(assert (= (and b!2586151 res!1087674) b!2586148))

(assert (= (and b!2586148 res!1087669) b!2586146))

(assert (= (and b!2586146 res!1087676) b!2586154))

(assert (= (and b!2586151 (not res!1087671)) b!2586152))

(assert (= (and b!2586152 res!1087673) b!2586158))

(assert (= (and b!2586158 (not res!1087670)) b!2586150))

(assert (= (and b!2586150 (not res!1087675)) b!2586157))

(assert (= (or b!2586149 b!2586148 b!2586158) bm!166953))

(assert (=> bm!166953 m!2921933))

(assert (=> bm!166953 m!2921937))

(assert (=> b!2586147 m!2921933))

(declare-fun m!2922369 () Bool)

(assert (=> b!2586147 m!2922369))

(assert (=> b!2586147 m!2921931))

(assert (=> b!2586147 m!2922369))

(declare-fun m!2922371 () Bool)

(assert (=> b!2586147 m!2922371))

(assert (=> b!2586147 m!2921933))

(declare-fun m!2922373 () Bool)

(assert (=> b!2586147 m!2922373))

(assert (=> b!2586147 m!2922371))

(assert (=> b!2586147 m!2922373))

(declare-fun m!2922375 () Bool)

(assert (=> b!2586147 m!2922375))

(assert (=> b!2586154 m!2921933))

(assert (=> b!2586154 m!2922369))

(assert (=> b!2586146 m!2921933))

(assert (=> b!2586146 m!2922373))

(assert (=> b!2586146 m!2922373))

(declare-fun m!2922377 () Bool)

(assert (=> b!2586146 m!2922377))

(assert (=> b!2586157 m!2921933))

(assert (=> b!2586157 m!2922369))

(assert (=> d!732288 m!2921933))

(assert (=> d!732288 m!2921937))

(assert (=> d!732288 m!2921931))

(declare-fun m!2922379 () Bool)

(assert (=> d!732288 m!2922379))

(assert (=> b!2586150 m!2921933))

(assert (=> b!2586150 m!2922373))

(assert (=> b!2586150 m!2922373))

(assert (=> b!2586150 m!2922377))

(assert (=> b!2586155 m!2921931))

(declare-fun m!2922382 () Bool)

(assert (=> b!2586155 m!2922382))

(assert (=> b!2585784 d!732288))

(declare-fun call!166970 () Regex!7665)

(declare-fun bm!166962 () Bool)

(declare-fun c!416918 () Bool)

(assert (=> bm!166962 (= call!166970 (derivativeStep!2222 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 lt!909247)))))

(declare-fun bm!166963 () Bool)

(declare-fun call!166969 () Regex!7665)

(declare-fun call!166967 () Regex!7665)

(assert (=> bm!166963 (= call!166969 call!166967)))

(declare-fun c!416919 () Bool)

(declare-fun bm!166964 () Bool)

(declare-fun call!166968 () Regex!7665)

(declare-fun c!416921 () Bool)

(assert (=> bm!166964 (= call!166968 (derivativeStep!2222 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909247)))))

(declare-fun b!2586185 () Bool)

(declare-fun e!1631743 () Regex!7665)

(assert (=> b!2586185 (= e!1631743 (ite (= (head!5862 lt!909247) (c!416820 (regex!4521 rule!570))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732294 () Bool)

(declare-fun lt!909456 () Regex!7665)

(assert (=> d!732294 (validRegex!3279 lt!909456)))

(declare-fun e!1631741 () Regex!7665)

(assert (=> d!732294 (= lt!909456 e!1631741)))

(declare-fun c!416917 () Bool)

(assert (=> d!732294 (= c!416917 (or ((_ is EmptyExpr!7665) (regex!4521 rule!570)) ((_ is EmptyLang!7665) (regex!4521 rule!570))))))

(assert (=> d!732294 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732294 (= (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) lt!909456)))

(declare-fun b!2586186 () Bool)

(assert (=> b!2586186 (= e!1631741 EmptyLang!7665)))

(declare-fun b!2586187 () Bool)

(assert (=> b!2586187 (= c!416918 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun e!1631742 () Regex!7665)

(assert (=> b!2586187 (= e!1631743 e!1631742)))

(declare-fun b!2586188 () Bool)

(declare-fun e!1631739 () Regex!7665)

(assert (=> b!2586188 (= e!1631742 e!1631739)))

(assert (=> b!2586188 (= c!416919 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2586189 () Bool)

(declare-fun e!1631740 () Regex!7665)

(assert (=> b!2586189 (= e!1631740 (Union!7665 (Concat!12409 call!166969 (regTwo!15842 (regex!4521 rule!570))) EmptyLang!7665))))

(declare-fun b!2586190 () Bool)

(assert (=> b!2586190 (= c!416921 (nullable!2570 (regOne!15842 (regex!4521 rule!570))))))

(assert (=> b!2586190 (= e!1631739 e!1631740)))

(declare-fun b!2586191 () Bool)

(assert (=> b!2586191 (= e!1631741 e!1631743)))

(declare-fun c!416920 () Bool)

(assert (=> b!2586191 (= c!416920 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(declare-fun b!2586192 () Bool)

(assert (=> b!2586192 (= e!1631742 (Union!7665 call!166968 call!166970))))

(declare-fun bm!166965 () Bool)

(assert (=> bm!166965 (= call!166967 call!166968)))

(declare-fun b!2586193 () Bool)

(assert (=> b!2586193 (= e!1631740 (Union!7665 (Concat!12409 call!166970 (regTwo!15842 (regex!4521 rule!570))) call!166969))))

(declare-fun b!2586194 () Bool)

(assert (=> b!2586194 (= e!1631739 (Concat!12409 call!166967 (regex!4521 rule!570)))))

(assert (= (and d!732294 c!416917) b!2586186))

(assert (= (and d!732294 (not c!416917)) b!2586191))

(assert (= (and b!2586191 c!416920) b!2586185))

(assert (= (and b!2586191 (not c!416920)) b!2586187))

(assert (= (and b!2586187 c!416918) b!2586192))

(assert (= (and b!2586187 (not c!416918)) b!2586188))

(assert (= (and b!2586188 c!416919) b!2586194))

(assert (= (and b!2586188 (not c!416919)) b!2586190))

(assert (= (and b!2586190 c!416921) b!2586193))

(assert (= (and b!2586190 (not c!416921)) b!2586189))

(assert (= (or b!2586193 b!2586189) bm!166963))

(assert (= (or b!2586194 bm!166963) bm!166965))

(assert (= (or b!2586192 b!2586193) bm!166962))

(assert (= (or b!2586192 bm!166965) bm!166964))

(assert (=> bm!166962 m!2921929))

(declare-fun m!2922405 () Bool)

(assert (=> bm!166962 m!2922405))

(assert (=> bm!166964 m!2921929))

(declare-fun m!2922407 () Bool)

(assert (=> bm!166964 m!2922407))

(declare-fun m!2922409 () Bool)

(assert (=> d!732294 m!2922409))

(assert (=> d!732294 m!2921939))

(declare-fun m!2922411 () Bool)

(assert (=> b!2586190 m!2922411))

(assert (=> b!2585784 d!732294))

(assert (=> b!2585784 d!732206))

(declare-fun d!732312 () Bool)

(assert (=> d!732312 (= (tail!4135 lt!909247) (t!212230 lt!909247))))

(assert (=> b!2585784 d!732312))

(declare-fun bs!471729 () Bool)

(declare-fun d!732314 () Bool)

(assert (= bs!471729 (and d!732314 d!732122)))

(declare-fun lambda!95814 () Int)

(assert (=> bs!471729 (= lambda!95814 lambda!95796)))

(declare-fun bs!471730 () Bool)

(assert (= bs!471730 (and d!732314 d!732250)))

(assert (=> bs!471730 (= lambda!95814 lambda!95810)))

(declare-fun bs!471731 () Bool)

(assert (= bs!471731 (and d!732314 d!732278)))

(assert (=> bs!471731 (= lambda!95814 lambda!95811)))

(assert (=> d!732314 true))

(declare-fun lt!909457 () Bool)

(assert (=> d!732314 (= lt!909457 (rulesValidInductive!1595 thiss!28211 rules!4580))))

(assert (=> d!732314 (= lt!909457 (forall!6067 rules!4580 lambda!95814))))

(assert (=> d!732314 (= (rulesValid!1693 thiss!28211 rules!4580) lt!909457)))

(declare-fun bs!471732 () Bool)

(assert (= bs!471732 d!732314))

(assert (=> bs!471732 m!2922093))

(declare-fun m!2922417 () Bool)

(assert (=> bs!471732 m!2922417))

(assert (=> d!732152 d!732314))

(declare-fun d!732318 () Bool)

(declare-fun lt!909458 () Int)

(assert (=> d!732318 (>= lt!909458 0)))

(declare-fun e!1631745 () Int)

(assert (=> d!732318 (= lt!909458 e!1631745)))

(declare-fun c!416923 () Bool)

(assert (=> d!732318 (= c!416923 ((_ is Nil!29765) lt!909327))))

(assert (=> d!732318 (= (size!23078 lt!909327) lt!909458)))

(declare-fun b!2586197 () Bool)

(assert (=> b!2586197 (= e!1631745 0)))

(declare-fun b!2586198 () Bool)

(assert (=> b!2586198 (= e!1631745 (+ 1 (size!23078 (t!212230 lt!909327))))))

(assert (= (and d!732318 c!416923) b!2586197))

(assert (= (and d!732318 (not c!416923)) b!2586198))

(declare-fun m!2922419 () Bool)

(assert (=> b!2586198 m!2922419))

(assert (=> b!2585812 d!732318))

(declare-fun d!732320 () Bool)

(declare-fun lt!909459 () Int)

(assert (=> d!732320 (>= lt!909459 0)))

(declare-fun e!1631746 () Int)

(assert (=> d!732320 (= lt!909459 e!1631746)))

(declare-fun c!416924 () Bool)

(assert (=> d!732320 (= c!416924 ((_ is Nil!29765) lt!909247))))

(assert (=> d!732320 (= (size!23078 lt!909247) lt!909459)))

(declare-fun b!2586199 () Bool)

(assert (=> b!2586199 (= e!1631746 0)))

(declare-fun b!2586200 () Bool)

(assert (=> b!2586200 (= e!1631746 (+ 1 (size!23078 (t!212230 lt!909247))))))

(assert (= (and d!732320 c!416924) b!2586199))

(assert (= (and d!732320 (not c!416924)) b!2586200))

(declare-fun m!2922421 () Bool)

(assert (=> b!2586200 m!2922421))

(assert (=> b!2585812 d!732320))

(declare-fun d!732322 () Bool)

(declare-fun lt!909460 () Int)

(assert (=> d!732322 (>= lt!909460 0)))

(declare-fun e!1631747 () Int)

(assert (=> d!732322 (= lt!909460 e!1631747)))

(declare-fun c!416925 () Bool)

(assert (=> d!732322 (= c!416925 ((_ is Nil!29765) suffix!1684))))

(assert (=> d!732322 (= (size!23078 suffix!1684) lt!909460)))

(declare-fun b!2586201 () Bool)

(assert (=> b!2586201 (= e!1631747 0)))

(declare-fun b!2586202 () Bool)

(assert (=> b!2586202 (= e!1631747 (+ 1 (size!23078 (t!212230 suffix!1684))))))

(assert (= (and d!732322 c!416925) b!2586201))

(assert (= (and d!732322 (not c!416925)) b!2586202))

(declare-fun m!2922423 () Bool)

(assert (=> b!2586202 m!2922423))

(assert (=> b!2585812 d!732322))

(declare-fun b!2586212 () Bool)

(declare-fun e!1631752 () List!29865)

(declare-fun e!1631753 () List!29865)

(assert (=> b!2586212 (= e!1631752 e!1631753)))

(declare-fun c!416931 () Bool)

(assert (=> b!2586212 (= c!416931 ((_ is Leaf!14169) (c!416819 (charsOf!2850 token!562))))))

(declare-fun d!732324 () Bool)

(declare-fun c!416930 () Bool)

(assert (=> d!732324 (= c!416930 ((_ is Empty!9287) (c!416819 (charsOf!2850 token!562))))))

(assert (=> d!732324 (= (list!11254 (c!416819 (charsOf!2850 token!562))) e!1631752)))

(declare-fun b!2586213 () Bool)

(declare-fun list!11256 (IArray!18579) List!29865)

(assert (=> b!2586213 (= e!1631753 (list!11256 (xs!12271 (c!416819 (charsOf!2850 token!562)))))))

(declare-fun b!2586211 () Bool)

(assert (=> b!2586211 (= e!1631752 Nil!29765)))

(declare-fun b!2586214 () Bool)

(assert (=> b!2586214 (= e!1631753 (++!7311 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562)))) (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562))))))))

(assert (= (and d!732324 c!416930) b!2586211))

(assert (= (and d!732324 (not c!416930)) b!2586212))

(assert (= (and b!2586212 c!416931) b!2586213))

(assert (= (and b!2586212 (not c!416931)) b!2586214))

(declare-fun m!2922425 () Bool)

(assert (=> b!2586213 m!2922425))

(declare-fun m!2922427 () Bool)

(assert (=> b!2586214 m!2922427))

(declare-fun m!2922429 () Bool)

(assert (=> b!2586214 m!2922429))

(assert (=> b!2586214 m!2922427))

(assert (=> b!2586214 m!2922429))

(declare-fun m!2922431 () Bool)

(assert (=> b!2586214 m!2922431))

(assert (=> d!732078 d!732324))

(declare-fun b!2586215 () Bool)

(declare-fun e!1631759 () Bool)

(declare-fun lt!909461 () Bool)

(assert (=> b!2586215 (= e!1631759 (not lt!909461))))

(declare-fun d!732326 () Bool)

(declare-fun e!1631760 () Bool)

(assert (=> d!732326 e!1631760))

(declare-fun c!416933 () Bool)

(assert (=> d!732326 (= c!416933 ((_ is EmptyExpr!7665) (regex!4521 rule!570)))))

(declare-fun e!1631754 () Bool)

(assert (=> d!732326 (= lt!909461 e!1631754)))

(declare-fun c!416932 () Bool)

(assert (=> d!732326 (= c!416932 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> d!732326 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732326 (= (matchR!3598 (regex!4521 rule!570) (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) lt!909461)))

(declare-fun b!2586216 () Bool)

(declare-fun res!1087684 () Bool)

(declare-fun e!1631757 () Bool)

(assert (=> b!2586216 (=> (not res!1087684) (not e!1631757))))

(assert (=> b!2586216 (= res!1087684 (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2586217 () Bool)

(assert (=> b!2586217 (= e!1631754 (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2586218 () Bool)

(declare-fun res!1087677 () Bool)

(assert (=> b!2586218 (=> (not res!1087677) (not e!1631757))))

(declare-fun call!166971 () Bool)

(assert (=> b!2586218 (= res!1087677 (not call!166971))))

(declare-fun b!2586219 () Bool)

(assert (=> b!2586219 (= e!1631760 (= lt!909461 call!166971))))

(declare-fun b!2586220 () Bool)

(declare-fun res!1087683 () Bool)

(declare-fun e!1631756 () Bool)

(assert (=> b!2586220 (=> res!1087683 e!1631756)))

(assert (=> b!2586220 (= res!1087683 (not (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2586221 () Bool)

(declare-fun res!1087679 () Bool)

(declare-fun e!1631758 () Bool)

(assert (=> b!2586221 (=> res!1087679 e!1631758)))

(assert (=> b!2586221 (= res!1087679 e!1631757)))

(declare-fun res!1087682 () Bool)

(assert (=> b!2586221 (=> (not res!1087682) (not e!1631757))))

(assert (=> b!2586221 (= res!1087682 lt!909461)))

(declare-fun b!2586222 () Bool)

(declare-fun e!1631755 () Bool)

(assert (=> b!2586222 (= e!1631758 e!1631755)))

(declare-fun res!1087681 () Bool)

(assert (=> b!2586222 (=> (not res!1087681) (not e!1631755))))

(assert (=> b!2586222 (= res!1087681 (not lt!909461))))

(declare-fun b!2586223 () Bool)

(declare-fun res!1087680 () Bool)

(assert (=> b!2586223 (=> res!1087680 e!1631758)))

(assert (=> b!2586223 (= res!1087680 (not ((_ is ElementMatch!7665) (regex!4521 rule!570))))))

(assert (=> b!2586223 (= e!1631759 e!1631758)))

(declare-fun b!2586224 () Bool)

(assert (=> b!2586224 (= e!1631757 (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (c!416820 (regex!4521 rule!570))))))

(declare-fun b!2586225 () Bool)

(assert (=> b!2586225 (= e!1631754 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun b!2586226 () Bool)

(assert (=> b!2586226 (= e!1631760 e!1631759)))

(declare-fun c!416934 () Bool)

(assert (=> b!2586226 (= c!416934 ((_ is EmptyLang!7665) (regex!4521 rule!570)))))

(declare-fun b!2586227 () Bool)

(assert (=> b!2586227 (= e!1631756 (not (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (c!416820 (regex!4521 rule!570)))))))

(declare-fun bm!166966 () Bool)

(assert (=> bm!166966 (= call!166971 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun b!2586228 () Bool)

(assert (=> b!2586228 (= e!1631755 e!1631756)))

(declare-fun res!1087678 () Bool)

(assert (=> b!2586228 (=> res!1087678 e!1631756)))

(assert (=> b!2586228 (= res!1087678 call!166971)))

(assert (= (and d!732326 c!416932) b!2586225))

(assert (= (and d!732326 (not c!416932)) b!2586217))

(assert (= (and d!732326 c!416933) b!2586219))

(assert (= (and d!732326 (not c!416933)) b!2586226))

(assert (= (and b!2586226 c!416934) b!2586215))

(assert (= (and b!2586226 (not c!416934)) b!2586223))

(assert (= (and b!2586223 (not res!1087680)) b!2586221))

(assert (= (and b!2586221 res!1087682) b!2586218))

(assert (= (and b!2586218 res!1087677) b!2586216))

(assert (= (and b!2586216 res!1087684) b!2586224))

(assert (= (and b!2586221 (not res!1087679)) b!2586222))

(assert (= (and b!2586222 res!1087681) b!2586228))

(assert (= (and b!2586228 (not res!1087678)) b!2586220))

(assert (= (and b!2586220 (not res!1087683)) b!2586227))

(assert (= (or b!2586219 b!2586218 b!2586228) bm!166966))

(assert (=> bm!166966 m!2921823))

(declare-fun m!2922433 () Bool)

(assert (=> b!2586217 m!2922433))

(assert (=> b!2586217 m!2922433))

(declare-fun m!2922435 () Bool)

(assert (=> b!2586217 m!2922435))

(declare-fun m!2922437 () Bool)

(assert (=> b!2586217 m!2922437))

(assert (=> b!2586217 m!2922435))

(assert (=> b!2586217 m!2922437))

(declare-fun m!2922439 () Bool)

(assert (=> b!2586217 m!2922439))

(assert (=> b!2586224 m!2922433))

(assert (=> b!2586216 m!2922437))

(assert (=> b!2586216 m!2922437))

(declare-fun m!2922441 () Bool)

(assert (=> b!2586216 m!2922441))

(assert (=> b!2586227 m!2922433))

(assert (=> d!732326 m!2921823))

(assert (=> d!732326 m!2921939))

(assert (=> b!2586220 m!2922437))

(assert (=> b!2586220 m!2922437))

(assert (=> b!2586220 m!2922441))

(assert (=> b!2586225 m!2921941))

(assert (=> b!2585684 d!732326))

(declare-fun b!2586423 () Bool)

(declare-fun e!1631878 () tuple2!29720)

(declare-fun e!1631873 () tuple2!29720)

(assert (=> b!2586423 (= e!1631878 e!1631873)))

(declare-fun lt!909562 () tuple2!29720)

(declare-fun call!167011 () tuple2!29720)

(assert (=> b!2586423 (= lt!909562 call!167011)))

(declare-fun c!417003 () Bool)

(assert (=> b!2586423 (= c!417003 (isEmpty!17110 (_1!17402 lt!909562)))))

(declare-fun b!2586424 () Bool)

(declare-fun e!1631879 () tuple2!29720)

(assert (=> b!2586424 (= e!1631879 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2586425 () Bool)

(declare-fun c!417005 () Bool)

(declare-fun call!167018 () Bool)

(assert (=> b!2586425 (= c!417005 call!167018)))

(declare-fun lt!909553 () Unit!43600)

(declare-fun lt!909566 () Unit!43600)

(assert (=> b!2586425 (= lt!909553 lt!909566)))

(assert (=> b!2586425 (= input!3654 Nil!29765)))

(declare-fun call!167012 () Unit!43600)

(assert (=> b!2586425 (= lt!909566 call!167012)))

(declare-fun lt!909552 () Unit!43600)

(declare-fun lt!909559 () Unit!43600)

(assert (=> b!2586425 (= lt!909552 lt!909559)))

(declare-fun call!167015 () Bool)

(assert (=> b!2586425 call!167015))

(declare-fun call!167013 () Unit!43600)

(assert (=> b!2586425 (= lt!909559 call!167013)))

(declare-fun e!1631877 () tuple2!29720)

(declare-fun e!1631874 () tuple2!29720)

(assert (=> b!2586425 (= e!1631877 e!1631874)))

(declare-fun b!2586426 () Bool)

(declare-fun e!1631875 () Unit!43600)

(declare-fun Unit!43608 () Unit!43600)

(assert (=> b!2586426 (= e!1631875 Unit!43608)))

(declare-fun b!2586427 () Bool)

(assert (=> b!2586427 (= e!1631878 call!167011)))

(declare-fun bm!167006 () Bool)

(assert (=> bm!167006 (= call!167018 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun bm!167007 () Bool)

(declare-fun call!167016 () C!15488)

(assert (=> bm!167007 (= call!167016 (head!5862 input!3654))))

(declare-fun call!167017 () Regex!7665)

(declare-fun lt!909551 () List!29865)

(declare-fun call!167014 () List!29865)

(declare-fun bm!167008 () Bool)

(assert (=> bm!167008 (= call!167011 (findLongestMatchInner!756 call!167017 lt!909551 (+ (size!23078 Nil!29765) 1) call!167014 input!3654 (size!23078 input!3654)))))

(declare-fun bm!167009 () Bool)

(assert (=> bm!167009 (= call!167015 (isPrefix!2421 input!3654 input!3654))))

(declare-fun bm!167010 () Bool)

(assert (=> bm!167010 (= call!167017 (derivativeStep!2222 (regex!4521 rule!570) call!167016))))

(declare-fun b!2586428 () Bool)

(declare-fun e!1631872 () Bool)

(declare-fun lt!909550 () tuple2!29720)

(assert (=> b!2586428 (= e!1631872 (>= (size!23078 (_1!17402 lt!909550)) (size!23078 Nil!29765)))))

(declare-fun bm!167011 () Bool)

(assert (=> bm!167011 (= call!167013 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(declare-fun b!2586429 () Bool)

(declare-fun Unit!43609 () Unit!43600)

(assert (=> b!2586429 (= e!1631875 Unit!43609)))

(declare-fun lt!909560 () Unit!43600)

(assert (=> b!2586429 (= lt!909560 call!167013)))

(assert (=> b!2586429 call!167015))

(declare-fun lt!909563 () Unit!43600)

(assert (=> b!2586429 (= lt!909563 lt!909560)))

(declare-fun lt!909547 () Unit!43600)

(assert (=> b!2586429 (= lt!909547 call!167012)))

(assert (=> b!2586429 (= input!3654 Nil!29765)))

(declare-fun lt!909557 () Unit!43600)

(assert (=> b!2586429 (= lt!909557 lt!909547)))

(assert (=> b!2586429 false))

(declare-fun b!2586422 () Bool)

(assert (=> b!2586422 (= e!1631873 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun d!732328 () Bool)

(declare-fun e!1631876 () Bool)

(assert (=> d!732328 e!1631876))

(declare-fun res!1087740 () Bool)

(assert (=> d!732328 (=> (not res!1087740) (not e!1631876))))

(assert (=> d!732328 (= res!1087740 (= (++!7311 (_1!17402 lt!909550) (_2!17402 lt!909550)) input!3654))))

(assert (=> d!732328 (= lt!909550 e!1631879)))

(declare-fun c!417004 () Bool)

(declare-fun lostCause!697 (Regex!7665) Bool)

(assert (=> d!732328 (= c!417004 (lostCause!697 (regex!4521 rule!570)))))

(declare-fun lt!909558 () Unit!43600)

(declare-fun Unit!43610 () Unit!43600)

(assert (=> d!732328 (= lt!909558 Unit!43610)))

(declare-fun getSuffix!1185 (List!29865 List!29865) List!29865)

(assert (=> d!732328 (= (getSuffix!1185 input!3654 Nil!29765) input!3654)))

(declare-fun lt!909561 () Unit!43600)

(declare-fun lt!909545 () Unit!43600)

(assert (=> d!732328 (= lt!909561 lt!909545)))

(declare-fun lt!909564 () List!29865)

(assert (=> d!732328 (= input!3654 lt!909564)))

(declare-fun lemmaSamePrefixThenSameSuffix!1087 (List!29865 List!29865 List!29865 List!29865 List!29865) Unit!43600)

(assert (=> d!732328 (= lt!909545 (lemmaSamePrefixThenSameSuffix!1087 Nil!29765 input!3654 Nil!29765 lt!909564 input!3654))))

(assert (=> d!732328 (= lt!909564 (getSuffix!1185 input!3654 Nil!29765))))

(declare-fun lt!909565 () Unit!43600)

(declare-fun lt!909572 () Unit!43600)

(assert (=> d!732328 (= lt!909565 lt!909572)))

(assert (=> d!732328 (isPrefix!2421 Nil!29765 (++!7311 Nil!29765 input!3654))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1599 (List!29865 List!29865) Unit!43600)

(assert (=> d!732328 (= lt!909572 (lemmaConcatTwoListThenFirstIsPrefix!1599 Nil!29765 input!3654))))

(assert (=> d!732328 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732328 (= (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)) lt!909550)))

(declare-fun b!2586430 () Bool)

(assert (=> b!2586430 (= e!1631879 e!1631877)))

(declare-fun c!417006 () Bool)

(assert (=> b!2586430 (= c!417006 (= (size!23078 Nil!29765) (size!23078 input!3654)))))

(declare-fun bm!167012 () Bool)

(assert (=> bm!167012 (= call!167014 (tail!4135 input!3654))))

(declare-fun b!2586431 () Bool)

(declare-fun c!417001 () Bool)

(assert (=> b!2586431 (= c!417001 call!167018)))

(declare-fun lt!909569 () Unit!43600)

(declare-fun lt!909567 () Unit!43600)

(assert (=> b!2586431 (= lt!909569 lt!909567)))

(declare-fun lt!909555 () C!15488)

(declare-fun lt!909571 () List!29865)

(assert (=> b!2586431 (= (++!7311 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765)) lt!909571) input!3654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!816 (List!29865 C!15488 List!29865 List!29865) Unit!43600)

(assert (=> b!2586431 (= lt!909567 (lemmaMoveElementToOtherListKeepsConcatEq!816 Nil!29765 lt!909555 lt!909571 input!3654))))

(assert (=> b!2586431 (= lt!909571 (tail!4135 input!3654))))

(assert (=> b!2586431 (= lt!909555 (head!5862 input!3654))))

(declare-fun lt!909548 () Unit!43600)

(declare-fun lt!909554 () Unit!43600)

(assert (=> b!2586431 (= lt!909548 lt!909554)))

(assert (=> b!2586431 (isPrefix!2421 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) input!3654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!404 (List!29865 List!29865) Unit!43600)

(assert (=> b!2586431 (= lt!909554 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(declare-fun lt!909556 () Unit!43600)

(declare-fun lt!909568 () Unit!43600)

(assert (=> b!2586431 (= lt!909556 lt!909568)))

(assert (=> b!2586431 (= lt!909568 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(assert (=> b!2586431 (= lt!909551 (++!7311 Nil!29765 (Cons!29765 (head!5862 input!3654) Nil!29765)))))

(declare-fun lt!909549 () Unit!43600)

(assert (=> b!2586431 (= lt!909549 e!1631875)))

(declare-fun c!417002 () Bool)

(assert (=> b!2586431 (= c!417002 (= (size!23078 Nil!29765) (size!23078 input!3654)))))

(declare-fun lt!909570 () Unit!43600)

(declare-fun lt!909546 () Unit!43600)

(assert (=> b!2586431 (= lt!909570 lt!909546)))

(assert (=> b!2586431 (<= (size!23078 Nil!29765) (size!23078 input!3654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!207 (List!29865 List!29865) Unit!43600)

(assert (=> b!2586431 (= lt!909546 (lemmaIsPrefixThenSmallerEqSize!207 Nil!29765 input!3654))))

(assert (=> b!2586431 (= e!1631877 e!1631878)))

(declare-fun b!2586432 () Bool)

(assert (=> b!2586432 (= e!1631876 e!1631872)))

(declare-fun res!1087741 () Bool)

(assert (=> b!2586432 (=> res!1087741 e!1631872)))

(assert (=> b!2586432 (= res!1087741 (isEmpty!17110 (_1!17402 lt!909550)))))

(declare-fun b!2586433 () Bool)

(assert (=> b!2586433 (= e!1631874 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2586434 () Bool)

(assert (=> b!2586434 (= e!1631874 (tuple2!29721 Nil!29765 Nil!29765))))

(declare-fun b!2586435 () Bool)

(assert (=> b!2586435 (= e!1631873 lt!909562)))

(declare-fun bm!167013 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!406 (List!29865 List!29865 List!29865) Unit!43600)

(assert (=> bm!167013 (= call!167012 (lemmaIsPrefixSameLengthThenSameList!406 input!3654 Nil!29765 input!3654))))

(assert (= (and d!732328 c!417004) b!2586424))

(assert (= (and d!732328 (not c!417004)) b!2586430))

(assert (= (and b!2586430 c!417006) b!2586425))

(assert (= (and b!2586430 (not c!417006)) b!2586431))

(assert (= (and b!2586425 c!417005) b!2586434))

(assert (= (and b!2586425 (not c!417005)) b!2586433))

(assert (= (and b!2586431 c!417002) b!2586429))

(assert (= (and b!2586431 (not c!417002)) b!2586426))

(assert (= (and b!2586431 c!417001) b!2586423))

(assert (= (and b!2586431 (not c!417001)) b!2586427))

(assert (= (and b!2586423 c!417003) b!2586422))

(assert (= (and b!2586423 (not c!417003)) b!2586435))

(assert (= (or b!2586423 b!2586427) bm!167012))

(assert (= (or b!2586423 b!2586427) bm!167007))

(assert (= (or b!2586423 b!2586427) bm!167010))

(assert (= (or b!2586423 b!2586427) bm!167008))

(assert (= (or b!2586425 b!2586429) bm!167009))

(assert (= (or b!2586425 b!2586431) bm!167006))

(assert (= (or b!2586425 b!2586429) bm!167013))

(assert (= (or b!2586425 b!2586429) bm!167011))

(assert (= (and d!732328 res!1087740) b!2586432))

(assert (= (and b!2586432 (not res!1087741)) b!2586428))

(assert (=> bm!167012 m!2922307))

(assert (=> b!2586431 m!2921801))

(declare-fun m!2922627 () Bool)

(assert (=> b!2586431 m!2922627))

(declare-fun m!2922629 () Bool)

(assert (=> b!2586431 m!2922629))

(assert (=> b!2586431 m!2921793))

(declare-fun m!2922631 () Bool)

(assert (=> b!2586431 m!2922631))

(assert (=> b!2586431 m!2922307))

(declare-fun m!2922633 () Bool)

(assert (=> b!2586431 m!2922633))

(declare-fun m!2922635 () Bool)

(assert (=> b!2586431 m!2922635))

(declare-fun m!2922637 () Bool)

(assert (=> b!2586431 m!2922637))

(assert (=> b!2586431 m!2922305))

(assert (=> b!2586431 m!2922627))

(declare-fun m!2922639 () Bool)

(assert (=> b!2586431 m!2922639))

(assert (=> b!2586431 m!2922633))

(declare-fun m!2922641 () Bool)

(assert (=> b!2586431 m!2922641))

(declare-fun m!2922645 () Bool)

(assert (=> b!2586431 m!2922645))

(assert (=> b!2586431 m!2922637))

(declare-fun m!2922647 () Bool)

(assert (=> b!2586431 m!2922647))

(assert (=> bm!167009 m!2922089))

(declare-fun m!2922649 () Bool)

(assert (=> b!2586432 m!2922649))

(assert (=> bm!167008 m!2921793))

(declare-fun m!2922651 () Bool)

(assert (=> bm!167008 m!2922651))

(declare-fun m!2922653 () Bool)

(assert (=> bm!167010 m!2922653))

(declare-fun m!2922655 () Bool)

(assert (=> bm!167013 m!2922655))

(declare-fun m!2922657 () Bool)

(assert (=> d!732328 m!2922657))

(assert (=> d!732328 m!2921939))

(declare-fun m!2922659 () Bool)

(assert (=> d!732328 m!2922659))

(declare-fun m!2922661 () Bool)

(assert (=> d!732328 m!2922661))

(declare-fun m!2922663 () Bool)

(assert (=> d!732328 m!2922663))

(declare-fun m!2922665 () Bool)

(assert (=> d!732328 m!2922665))

(assert (=> d!732328 m!2922637))

(assert (=> d!732328 m!2922657))

(declare-fun m!2922667 () Bool)

(assert (=> d!732328 m!2922667))

(assert (=> bm!167006 m!2921941))

(assert (=> bm!167011 m!2922091))

(declare-fun m!2922669 () Bool)

(assert (=> b!2586428 m!2922669))

(assert (=> b!2586428 m!2921801))

(assert (=> bm!167007 m!2922305))

(declare-fun m!2922671 () Bool)

(assert (=> b!2586423 m!2922671))

(assert (=> b!2585684 d!732328))

(declare-fun d!732410 () Bool)

(declare-fun lt!909576 () Int)

(assert (=> d!732410 (>= lt!909576 0)))

(declare-fun e!1631881 () Int)

(assert (=> d!732410 (= lt!909576 e!1631881)))

(declare-fun c!417007 () Bool)

(assert (=> d!732410 (= c!417007 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!732410 (= (size!23078 Nil!29765) lt!909576)))

(declare-fun b!2586436 () Bool)

(assert (=> b!2586436 (= e!1631881 0)))

(declare-fun b!2586437 () Bool)

(assert (=> b!2586437 (= e!1631881 (+ 1 (size!23078 (t!212230 Nil!29765))))))

(assert (= (and d!732410 c!417007) b!2586436))

(assert (= (and d!732410 (not c!417007)) b!2586437))

(declare-fun m!2922675 () Bool)

(assert (=> b!2586437 m!2922675))

(assert (=> b!2585684 d!732410))

(assert (=> b!2585684 d!732242))

(declare-fun d!732414 () Bool)

(assert (=> d!732414 true))

(declare-fun order!15855 () Int)

(declare-fun lambda!95828 () Int)

(declare-fun dynLambda!12593 (Int Int) Int)

(assert (=> d!732414 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 rule!570))) (dynLambda!12593 order!15855 lambda!95828))))

(declare-fun Forall2!767 (Int) Bool)

(assert (=> d!732414 (= (equivClasses!1790 (toChars!6270 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) (Forall2!767 lambda!95828))))

(declare-fun bs!471746 () Bool)

(assert (= bs!471746 d!732414))

(declare-fun m!2922677 () Bool)

(assert (=> bs!471746 m!2922677))

(assert (=> b!2585832 d!732414))

(declare-fun b!2586446 () Bool)

(declare-fun e!1631891 () Bool)

(declare-fun lt!909580 () Bool)

(assert (=> b!2586446 (= e!1631891 (not lt!909580))))

(declare-fun d!732416 () Bool)

(declare-fun e!1631892 () Bool)

(assert (=> d!732416 e!1631892))

(declare-fun c!417010 () Bool)

(assert (=> d!732416 (= c!417010 ((_ is EmptyExpr!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun e!1631886 () Bool)

(assert (=> d!732416 (= lt!909580 e!1631886)))

(declare-fun c!417009 () Bool)

(assert (=> d!732416 (= c!417009 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!732416 (validRegex!3279 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(assert (=> d!732416 (= (matchR!3598 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) lt!909580)))

(declare-fun b!2586447 () Bool)

(declare-fun res!1087751 () Bool)

(declare-fun e!1631889 () Bool)

(assert (=> b!2586447 (=> (not res!1087751) (not e!1631889))))

(assert (=> b!2586447 (= res!1087751 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2586448 () Bool)

(assert (=> b!2586448 (= e!1631886 (matchR!3598 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2586449 () Bool)

(declare-fun res!1087744 () Bool)

(assert (=> b!2586449 (=> (not res!1087744) (not e!1631889))))

(declare-fun call!167019 () Bool)

(assert (=> b!2586449 (= res!1087744 (not call!167019))))

(declare-fun b!2586450 () Bool)

(assert (=> b!2586450 (= e!1631892 (= lt!909580 call!167019))))

(declare-fun b!2586451 () Bool)

(declare-fun res!1087750 () Bool)

(declare-fun e!1631888 () Bool)

(assert (=> b!2586451 (=> res!1087750 e!1631888)))

(assert (=> b!2586451 (= res!1087750 (not (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2586452 () Bool)

(declare-fun res!1087746 () Bool)

(declare-fun e!1631890 () Bool)

(assert (=> b!2586452 (=> res!1087746 e!1631890)))

(assert (=> b!2586452 (= res!1087746 e!1631889)))

(declare-fun res!1087749 () Bool)

(assert (=> b!2586452 (=> (not res!1087749) (not e!1631889))))

(assert (=> b!2586452 (= res!1087749 lt!909580)))

(declare-fun b!2586453 () Bool)

(declare-fun e!1631887 () Bool)

(assert (=> b!2586453 (= e!1631890 e!1631887)))

(declare-fun res!1087748 () Bool)

(assert (=> b!2586453 (=> (not res!1087748) (not e!1631887))))

(assert (=> b!2586453 (= res!1087748 (not lt!909580))))

(declare-fun b!2586454 () Bool)

(declare-fun res!1087747 () Bool)

(assert (=> b!2586454 (=> res!1087747 e!1631890)))

(assert (=> b!2586454 (= res!1087747 (not ((_ is ElementMatch!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> b!2586454 (= e!1631891 e!1631890)))

(declare-fun b!2586455 () Bool)

(assert (=> b!2586455 (= e!1631889 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (c!416820 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2586456 () Bool)

(assert (=> b!2586456 (= e!1631886 (nullable!2570 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2586457 () Bool)

(assert (=> b!2586457 (= e!1631892 e!1631891)))

(declare-fun c!417011 () Bool)

(assert (=> b!2586457 (= c!417011 ((_ is EmptyLang!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2586458 () Bool)

(assert (=> b!2586458 (= e!1631888 (not (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (c!416820 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun bm!167014 () Bool)

(assert (=> bm!167014 (= call!167019 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2586459 () Bool)

(assert (=> b!2586459 (= e!1631887 e!1631888)))

(declare-fun res!1087745 () Bool)

(assert (=> b!2586459 (=> res!1087745 e!1631888)))

(assert (=> b!2586459 (= res!1087745 call!167019)))

(assert (= (and d!732416 c!417009) b!2586456))

(assert (= (and d!732416 (not c!417009)) b!2586448))

(assert (= (and d!732416 c!417010) b!2586450))

(assert (= (and d!732416 (not c!417010)) b!2586457))

(assert (= (and b!2586457 c!417011) b!2586446))

(assert (= (and b!2586457 (not c!417011)) b!2586454))

(assert (= (and b!2586454 (not res!1087747)) b!2586452))

(assert (= (and b!2586452 res!1087749) b!2586449))

(assert (= (and b!2586449 res!1087744) b!2586447))

(assert (= (and b!2586447 res!1087751) b!2586455))

(assert (= (and b!2586452 (not res!1087746)) b!2586453))

(assert (= (and b!2586453 res!1087748) b!2586459))

(assert (= (and b!2586459 (not res!1087745)) b!2586451))

(assert (= (and b!2586451 (not res!1087750)) b!2586458))

(assert (= (or b!2586450 b!2586449 b!2586459) bm!167014))

(assert (=> bm!167014 m!2922079))

(declare-fun m!2922679 () Bool)

(assert (=> bm!167014 m!2922679))

(assert (=> b!2586448 m!2922079))

(declare-fun m!2922681 () Bool)

(assert (=> b!2586448 m!2922681))

(assert (=> b!2586448 m!2922681))

(declare-fun m!2922683 () Bool)

(assert (=> b!2586448 m!2922683))

(assert (=> b!2586448 m!2922079))

(declare-fun m!2922685 () Bool)

(assert (=> b!2586448 m!2922685))

(assert (=> b!2586448 m!2922683))

(assert (=> b!2586448 m!2922685))

(declare-fun m!2922687 () Bool)

(assert (=> b!2586448 m!2922687))

(assert (=> b!2586455 m!2922079))

(assert (=> b!2586455 m!2922681))

(assert (=> b!2586447 m!2922079))

(assert (=> b!2586447 m!2922685))

(assert (=> b!2586447 m!2922685))

(declare-fun m!2922691 () Bool)

(assert (=> b!2586447 m!2922691))

(assert (=> b!2586458 m!2922079))

(assert (=> b!2586458 m!2922681))

(assert (=> d!732416 m!2922079))

(assert (=> d!732416 m!2922679))

(declare-fun m!2922695 () Bool)

(assert (=> d!732416 m!2922695))

(assert (=> b!2586451 m!2922079))

(assert (=> b!2586451 m!2922685))

(assert (=> b!2586451 m!2922685))

(assert (=> b!2586451 m!2922691))

(declare-fun m!2922697 () Bool)

(assert (=> b!2586456 m!2922697))

(assert (=> b!2585916 d!732416))

(assert (=> b!2585916 d!732256))

(declare-fun d!732418 () Bool)

(assert (=> d!732418 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))) (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun bs!471749 () Bool)

(assert (= bs!471749 d!732418))

(declare-fun m!2922699 () Bool)

(assert (=> bs!471749 m!2922699))

(assert (=> b!2585916 d!732418))

(declare-fun d!732420 () Bool)

(declare-fun lt!909581 () BalanceConc!18188)

(assert (=> d!732420 (= (list!11253 lt!909581) (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))))

(assert (=> d!732420 (= lt!909581 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))))

(assert (=> d!732420 (= (charsOf!2850 (_1!17401 (get!9380 lt!909381))) lt!909581)))

(declare-fun b_lambda!76845 () Bool)

(assert (=> (not b_lambda!76845) (not d!732420)))

(declare-fun tb!140985 () Bool)

(declare-fun t!212383 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212383) tb!140985))

(declare-fun b!2586462 () Bool)

(declare-fun e!1631895 () Bool)

(declare-fun tp!820978 () Bool)

(assert (=> b!2586462 (= e!1631895 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))) tp!820978))))

(declare-fun result!175268 () Bool)

(assert (=> tb!140985 (= result!175268 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))) e!1631895))))

(assert (= tb!140985 b!2586462))

(declare-fun m!2922707 () Bool)

(assert (=> b!2586462 m!2922707))

(declare-fun m!2922709 () Bool)

(assert (=> tb!140985 m!2922709))

(assert (=> d!732420 t!212383))

(declare-fun b_and!189719 () Bool)

(assert (= b_and!189571 (and (=> t!212383 result!175268) b_and!189719)))

(declare-fun t!212385 () Bool)

(declare-fun tb!140987 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212385) tb!140987))

(declare-fun result!175270 () Bool)

(assert (= result!175270 result!175268))

(assert (=> d!732420 t!212385))

(declare-fun b_and!189721 () Bool)

(assert (= b_and!189597 (and (=> t!212385 result!175270) b_and!189721)))

(declare-fun t!212387 () Bool)

(declare-fun tb!140989 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212387) tb!140989))

(declare-fun result!175272 () Bool)

(assert (= result!175272 result!175268))

(assert (=> d!732420 t!212387))

(declare-fun b_and!189723 () Bool)

(assert (= b_and!189573 (and (=> t!212387 result!175272) b_and!189723)))

(declare-fun t!212389 () Bool)

(declare-fun tb!140991 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212389) tb!140991))

(declare-fun result!175274 () Bool)

(assert (= result!175274 result!175268))

(assert (=> d!732420 t!212389))

(declare-fun b_and!189725 () Bool)

(assert (= b_and!189577 (and (=> t!212389 result!175274) b_and!189725)))

(declare-fun tb!140993 () Bool)

(declare-fun t!212391 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212391) tb!140993))

(declare-fun result!175276 () Bool)

(assert (= result!175276 result!175268))

(assert (=> d!732420 t!212391))

(declare-fun b_and!189727 () Bool)

(assert (= b_and!189601 (and (=> t!212391 result!175276) b_and!189727)))

(declare-fun t!212393 () Bool)

(declare-fun tb!140995 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212393) tb!140995))

(declare-fun result!175278 () Bool)

(assert (= result!175278 result!175268))

(assert (=> d!732420 t!212393))

(declare-fun b_and!189729 () Bool)

(assert (= b_and!189575 (and (=> t!212393 result!175278) b_and!189729)))

(declare-fun m!2922711 () Bool)

(assert (=> d!732420 m!2922711))

(declare-fun m!2922713 () Bool)

(assert (=> d!732420 m!2922713))

(assert (=> b!2585916 d!732420))

(declare-fun d!732424 () Bool)

(assert (=> d!732424 (= ($colon$colon!544 (map!6607 (t!212231 rs!798) lambda!95783) (dynLambda!12586 lambda!95783 (h!35186 rs!798))) (Cons!29767 (dynLambda!12586 lambda!95783 (h!35186 rs!798)) (map!6607 (t!212231 rs!798) lambda!95783)))))

(assert (=> b!2585825 d!732424))

(declare-fun d!732426 () Bool)

(declare-fun lt!909582 () List!29867)

(assert (=> d!732426 (= (size!23082 lt!909582) (size!23083 (t!212231 rs!798)))))

(declare-fun e!1631896 () List!29867)

(assert (=> d!732426 (= lt!909582 e!1631896)))

(declare-fun c!417012 () Bool)

(assert (=> d!732426 (= c!417012 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!732426 (= (map!6607 (t!212231 rs!798) lambda!95783) lt!909582)))

(declare-fun b!2586463 () Bool)

(assert (=> b!2586463 (= e!1631896 Nil!29767)))

(declare-fun b!2586464 () Bool)

(assert (=> b!2586464 (= e!1631896 ($colon$colon!544 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95783) (dynLambda!12586 lambda!95783 (h!35186 (t!212231 rs!798)))))))

(assert (= (and d!732426 c!417012) b!2586463))

(assert (= (and d!732426 (not c!417012)) b!2586464))

(declare-fun b_lambda!76847 () Bool)

(assert (=> (not b_lambda!76847) (not b!2586464)))

(declare-fun m!2922715 () Bool)

(assert (=> d!732426 m!2922715))

(assert (=> d!732426 m!2922327))

(declare-fun m!2922717 () Bool)

(assert (=> b!2586464 m!2922717))

(declare-fun m!2922719 () Bool)

(assert (=> b!2586464 m!2922719))

(assert (=> b!2586464 m!2922717))

(assert (=> b!2586464 m!2922719))

(declare-fun m!2922721 () Bool)

(assert (=> b!2586464 m!2922721))

(assert (=> b!2585825 d!732426))

(assert (=> b!2585847 d!732230))

(declare-fun d!732428 () Bool)

(declare-fun lt!909585 () Int)

(assert (=> d!732428 (>= lt!909585 0)))

(declare-fun e!1631899 () Int)

(assert (=> d!732428 (= lt!909585 e!1631899)))

(declare-fun c!417015 () Bool)

(assert (=> d!732428 (= c!417015 ((_ is Nil!29767) lt!909331))))

(assert (=> d!732428 (= (size!23082 lt!909331) lt!909585)))

(declare-fun b!2586469 () Bool)

(assert (=> b!2586469 (= e!1631899 0)))

(declare-fun b!2586470 () Bool)

(assert (=> b!2586470 (= e!1631899 (+ 1 (size!23082 (t!212232 lt!909331))))))

(assert (= (and d!732428 c!417015) b!2586469))

(assert (= (and d!732428 (not c!417015)) b!2586470))

(declare-fun m!2922723 () Bool)

(assert (=> b!2586470 m!2922723))

(assert (=> d!732144 d!732428))

(declare-fun d!732430 () Bool)

(declare-fun lt!909588 () Int)

(assert (=> d!732430 (>= lt!909588 0)))

(declare-fun e!1631902 () Int)

(assert (=> d!732430 (= lt!909588 e!1631902)))

(declare-fun c!417018 () Bool)

(assert (=> d!732430 (= c!417018 ((_ is Nil!29766) rs!798))))

(assert (=> d!732430 (= (size!23083 rs!798) lt!909588)))

(declare-fun b!2586475 () Bool)

(assert (=> b!2586475 (= e!1631902 0)))

(declare-fun b!2586476 () Bool)

(assert (=> b!2586476 (= e!1631902 (+ 1 (size!23083 (t!212231 rs!798))))))

(assert (= (and d!732430 c!417018) b!2586475))

(assert (= (and d!732430 (not c!417018)) b!2586476))

(assert (=> b!2586476 m!2922327))

(assert (=> d!732144 d!732430))

(assert (=> b!2585918 d!732256))

(declare-fun d!732432 () Bool)

(assert (=> d!732432 (= (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b_lambda!76849 () Bool)

(assert (=> (not b_lambda!76849) (not d!732432)))

(declare-fun tb!140997 () Bool)

(declare-fun t!212396 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212396) tb!140997))

(declare-fun result!175280 () Bool)

(assert (=> tb!140997 (= result!175280 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun m!2922725 () Bool)

(assert (=> tb!140997 m!2922725))

(assert (=> d!732432 t!212396))

(declare-fun b_and!189731 () Bool)

(assert (= b_and!189627 (and (=> t!212396 result!175280) b_and!189731)))

(declare-fun t!212398 () Bool)

(declare-fun tb!140999 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212398) tb!140999))

(declare-fun result!175282 () Bool)

(assert (= result!175282 result!175280))

(assert (=> d!732432 t!212398))

(declare-fun b_and!189733 () Bool)

(assert (= b_and!189623 (and (=> t!212398 result!175282) b_and!189733)))

(declare-fun t!212400 () Bool)

(declare-fun tb!141001 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212400) tb!141001))

(declare-fun result!175284 () Bool)

(assert (= result!175284 result!175280))

(assert (=> d!732432 t!212400))

(declare-fun b_and!189735 () Bool)

(assert (= b_and!189625 (and (=> t!212400 result!175284) b_and!189735)))

(declare-fun t!212402 () Bool)

(declare-fun tb!141003 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212402) tb!141003))

(declare-fun result!175286 () Bool)

(assert (= result!175286 result!175280))

(assert (=> d!732432 t!212402))

(declare-fun b_and!189737 () Bool)

(assert (= b_and!189633 (and (=> t!212402 result!175286) b_and!189737)))

(declare-fun t!212404 () Bool)

(declare-fun tb!141005 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212404) tb!141005))

(declare-fun result!175288 () Bool)

(assert (= result!175288 result!175280))

(assert (=> d!732432 t!212404))

(declare-fun b_and!189739 () Bool)

(assert (= b_and!189631 (and (=> t!212404 result!175288) b_and!189739)))

(declare-fun tb!141007 () Bool)

(declare-fun t!212406 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212406) tb!141007))

(declare-fun result!175290 () Bool)

(assert (= result!175290 result!175280))

(assert (=> d!732432 t!212406))

(declare-fun b_and!189741 () Bool)

(assert (= b_and!189629 (and (=> t!212406 result!175290) b_and!189741)))

(assert (=> d!732432 m!2922083))

(declare-fun m!2922727 () Bool)

(assert (=> d!732432 m!2922727))

(assert (=> b!2585918 d!732432))

(declare-fun d!732434 () Bool)

(assert (=> d!732434 (= (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))) (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun bs!471750 () Bool)

(assert (= bs!471750 d!732434))

(declare-fun m!2922729 () Bool)

(assert (=> bs!471750 m!2922729))

(assert (=> b!2585918 d!732434))

(declare-fun d!732436 () Bool)

(assert (=> d!732436 (= (inv!40193 (tag!5011 (h!35186 (t!212231 rules!4580)))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 (t!212231 rules!4580))))) 2) 0))))

(assert (=> b!2585982 d!732436))

(declare-fun d!732438 () Bool)

(declare-fun res!1087754 () Bool)

(declare-fun e!1631906 () Bool)

(assert (=> d!732438 (=> (not res!1087754) (not e!1631906))))

(assert (=> d!732438 (= res!1087754 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))))))

(assert (=> d!732438 (= (inv!40196 (transformation!4521 (h!35186 (t!212231 rules!4580)))) e!1631906)))

(declare-fun b!2586479 () Bool)

(assert (=> b!2586479 (= e!1631906 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))))))

(assert (= (and d!732438 res!1087754) b!2586479))

(declare-fun m!2922731 () Bool)

(assert (=> d!732438 m!2922731))

(declare-fun m!2922733 () Bool)

(assert (=> b!2586479 m!2922733))

(assert (=> b!2585982 d!732438))

(declare-fun b!2586480 () Bool)

(declare-fun e!1631908 () Bool)

(assert (=> b!2586480 (= e!1631908 (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun d!732440 () Bool)

(declare-fun c!417019 () Bool)

(assert (=> d!732440 (= c!417019 ((_ is IntegerValue!14229) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun e!1631907 () Bool)

(assert (=> d!732440 (= (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))) e!1631907)))

(declare-fun b!2586481 () Bool)

(assert (=> b!2586481 (= e!1631907 (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun b!2586482 () Bool)

(declare-fun e!1631909 () Bool)

(assert (=> b!2586482 (= e!1631907 e!1631909)))

(declare-fun c!417020 () Bool)

(assert (=> b!2586482 (= c!417020 ((_ is IntegerValue!14230) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun b!2586483 () Bool)

(assert (=> b!2586483 (= e!1631909 (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))))))

(declare-fun b!2586484 () Bool)

(declare-fun res!1087755 () Bool)

(assert (=> b!2586484 (=> res!1087755 e!1631908)))

(assert (=> b!2586484 (= res!1087755 (not ((_ is IntegerValue!14231) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))))))

(assert (=> b!2586484 (= e!1631909 e!1631908)))

(assert (= (and d!732440 c!417019) b!2586481))

(assert (= (and d!732440 (not c!417019)) b!2586482))

(assert (= (and b!2586482 c!417020) b!2586483))

(assert (= (and b!2586482 (not c!417020)) b!2586484))

(assert (= (and b!2586484 (not res!1087755)) b!2586480))

(declare-fun m!2922735 () Bool)

(assert (=> b!2586480 m!2922735))

(declare-fun m!2922737 () Bool)

(assert (=> b!2586481 m!2922737))

(declare-fun m!2922739 () Bool)

(assert (=> b!2586483 m!2922739))

(assert (=> tb!140849 d!732440))

(declare-fun d!732442 () Bool)

(assert (=> d!732442 (= (head!5862 lt!909246) (h!35185 lt!909246))))

(assert (=> b!2585849 d!732442))

(declare-fun b!2586486 () Bool)

(declare-fun e!1631916 () Bool)

(declare-fun lt!909592 () Bool)

(assert (=> b!2586486 (= e!1631916 (not lt!909592))))

(declare-fun d!732444 () Bool)

(declare-fun e!1631917 () Bool)

(assert (=> d!732444 e!1631917))

(declare-fun c!417022 () Bool)

(assert (=> d!732444 (= c!417022 ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun e!1631911 () Bool)

(assert (=> d!732444 (= lt!909592 e!1631911)))

(declare-fun c!417021 () Bool)

(assert (=> d!732444 (= c!417021 (isEmpty!17110 (tail!4135 lt!909246)))))

(assert (=> d!732444 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))

(assert (=> d!732444 (= (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (tail!4135 lt!909246)) lt!909592)))

(declare-fun b!2586487 () Bool)

(declare-fun res!1087764 () Bool)

(declare-fun e!1631914 () Bool)

(assert (=> b!2586487 (=> (not res!1087764) (not e!1631914))))

(assert (=> b!2586487 (= res!1087764 (isEmpty!17110 (tail!4135 (tail!4135 lt!909246))))))

(declare-fun b!2586488 () Bool)

(assert (=> b!2586488 (= e!1631911 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))) (tail!4135 (tail!4135 lt!909246))))))

(declare-fun b!2586489 () Bool)

(declare-fun res!1087757 () Bool)

(assert (=> b!2586489 (=> (not res!1087757) (not e!1631914))))

(declare-fun call!167020 () Bool)

(assert (=> b!2586489 (= res!1087757 (not call!167020))))

(declare-fun b!2586490 () Bool)

(assert (=> b!2586490 (= e!1631917 (= lt!909592 call!167020))))

(declare-fun b!2586491 () Bool)

(declare-fun res!1087763 () Bool)

(declare-fun e!1631913 () Bool)

(assert (=> b!2586491 (=> res!1087763 e!1631913)))

(assert (=> b!2586491 (= res!1087763 (not (isEmpty!17110 (tail!4135 (tail!4135 lt!909246)))))))

(declare-fun b!2586492 () Bool)

(declare-fun res!1087759 () Bool)

(declare-fun e!1631915 () Bool)

(assert (=> b!2586492 (=> res!1087759 e!1631915)))

(assert (=> b!2586492 (= res!1087759 e!1631914)))

(declare-fun res!1087762 () Bool)

(assert (=> b!2586492 (=> (not res!1087762) (not e!1631914))))

(assert (=> b!2586492 (= res!1087762 lt!909592)))

(declare-fun b!2586493 () Bool)

(declare-fun e!1631912 () Bool)

(assert (=> b!2586493 (= e!1631915 e!1631912)))

(declare-fun res!1087761 () Bool)

(assert (=> b!2586493 (=> (not res!1087761) (not e!1631912))))

(assert (=> b!2586493 (= res!1087761 (not lt!909592))))

(declare-fun b!2586494 () Bool)

(declare-fun res!1087760 () Bool)

(assert (=> b!2586494 (=> res!1087760 e!1631915)))

(assert (=> b!2586494 (= res!1087760 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))

(assert (=> b!2586494 (= e!1631916 e!1631915)))

(declare-fun b!2586495 () Bool)

(assert (=> b!2586495 (= e!1631914 (= (head!5862 (tail!4135 lt!909246)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))

(declare-fun b!2586496 () Bool)

(assert (=> b!2586496 (= e!1631911 (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun b!2586497 () Bool)

(assert (=> b!2586497 (= e!1631917 e!1631916)))

(declare-fun c!417023 () Bool)

(assert (=> b!2586497 (= c!417023 ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun b!2586498 () Bool)

(assert (=> b!2586498 (= e!1631913 (not (= (head!5862 (tail!4135 lt!909246)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))))

(declare-fun bm!167015 () Bool)

(assert (=> bm!167015 (= call!167020 (isEmpty!17110 (tail!4135 lt!909246)))))

(declare-fun b!2586499 () Bool)

(assert (=> b!2586499 (= e!1631912 e!1631913)))

(declare-fun res!1087758 () Bool)

(assert (=> b!2586499 (=> res!1087758 e!1631913)))

(assert (=> b!2586499 (= res!1087758 call!167020)))

(assert (= (and d!732444 c!417021) b!2586496))

(assert (= (and d!732444 (not c!417021)) b!2586488))

(assert (= (and d!732444 c!417022) b!2586490))

(assert (= (and d!732444 (not c!417022)) b!2586497))

(assert (= (and b!2586497 c!417023) b!2586486))

(assert (= (and b!2586497 (not c!417023)) b!2586494))

(assert (= (and b!2586494 (not res!1087760)) b!2586492))

(assert (= (and b!2586492 res!1087762) b!2586489))

(assert (= (and b!2586489 res!1087757) b!2586487))

(assert (= (and b!2586487 res!1087764) b!2586495))

(assert (= (and b!2586492 (not res!1087759)) b!2586493))

(assert (= (and b!2586493 res!1087761) b!2586499))

(assert (= (and b!2586499 (not res!1087758)) b!2586491))

(assert (= (and b!2586491 (not res!1087763)) b!2586498))

(assert (= (or b!2586490 b!2586489 b!2586499) bm!167015))

(assert (=> bm!167015 m!2922011))

(assert (=> bm!167015 m!2922015))

(assert (=> b!2586488 m!2922011))

(declare-fun m!2922743 () Bool)

(assert (=> b!2586488 m!2922743))

(assert (=> b!2586488 m!2922009))

(assert (=> b!2586488 m!2922743))

(declare-fun m!2922745 () Bool)

(assert (=> b!2586488 m!2922745))

(assert (=> b!2586488 m!2922011))

(declare-fun m!2922747 () Bool)

(assert (=> b!2586488 m!2922747))

(assert (=> b!2586488 m!2922745))

(assert (=> b!2586488 m!2922747))

(declare-fun m!2922751 () Bool)

(assert (=> b!2586488 m!2922751))

(assert (=> b!2586495 m!2922011))

(assert (=> b!2586495 m!2922743))

(assert (=> b!2586487 m!2922011))

(assert (=> b!2586487 m!2922747))

(assert (=> b!2586487 m!2922747))

(declare-fun m!2922753 () Bool)

(assert (=> b!2586487 m!2922753))

(assert (=> b!2586498 m!2922011))

(assert (=> b!2586498 m!2922743))

(assert (=> d!732444 m!2922011))

(assert (=> d!732444 m!2922015))

(assert (=> d!732444 m!2922009))

(declare-fun m!2922755 () Bool)

(assert (=> d!732444 m!2922755))

(assert (=> b!2586491 m!2922011))

(assert (=> b!2586491 m!2922747))

(assert (=> b!2586491 m!2922747))

(assert (=> b!2586491 m!2922753))

(assert (=> b!2586496 m!2922009))

(declare-fun m!2922757 () Bool)

(assert (=> b!2586496 m!2922757))

(assert (=> b!2585839 d!732444))

(declare-fun bm!167016 () Bool)

(declare-fun c!417026 () Bool)

(declare-fun call!167024 () Regex!7665)

(assert (=> bm!167016 (= call!167024 (derivativeStep!2222 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 lt!909246)))))

(declare-fun bm!167017 () Bool)

(declare-fun call!167023 () Regex!7665)

(declare-fun call!167021 () Regex!7665)

(assert (=> bm!167017 (= call!167023 call!167021)))

(declare-fun bm!167018 () Bool)

(declare-fun c!417027 () Bool)

(declare-fun call!167022 () Regex!7665)

(declare-fun c!417029 () Bool)

(assert (=> bm!167018 (= call!167022 (derivativeStep!2222 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909246)))))

(declare-fun b!2586502 () Bool)

(declare-fun e!1631923 () Regex!7665)

(assert (=> b!2586502 (= e!1631923 (ite (= (head!5862 lt!909246) (c!416820 (regex!4521 rule!570))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732450 () Bool)

(declare-fun lt!909594 () Regex!7665)

(assert (=> d!732450 (validRegex!3279 lt!909594)))

(declare-fun e!1631921 () Regex!7665)

(assert (=> d!732450 (= lt!909594 e!1631921)))

(declare-fun c!417025 () Bool)

(assert (=> d!732450 (= c!417025 (or ((_ is EmptyExpr!7665) (regex!4521 rule!570)) ((_ is EmptyLang!7665) (regex!4521 rule!570))))))

(assert (=> d!732450 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732450 (= (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) lt!909594)))

(declare-fun b!2586503 () Bool)

(assert (=> b!2586503 (= e!1631921 EmptyLang!7665)))

(declare-fun b!2586504 () Bool)

(assert (=> b!2586504 (= c!417026 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun e!1631922 () Regex!7665)

(assert (=> b!2586504 (= e!1631923 e!1631922)))

(declare-fun b!2586505 () Bool)

(declare-fun e!1631919 () Regex!7665)

(assert (=> b!2586505 (= e!1631922 e!1631919)))

(assert (=> b!2586505 (= c!417027 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2586506 () Bool)

(declare-fun e!1631920 () Regex!7665)

(assert (=> b!2586506 (= e!1631920 (Union!7665 (Concat!12409 call!167023 (regTwo!15842 (regex!4521 rule!570))) EmptyLang!7665))))

(declare-fun b!2586507 () Bool)

(assert (=> b!2586507 (= c!417029 (nullable!2570 (regOne!15842 (regex!4521 rule!570))))))

(assert (=> b!2586507 (= e!1631919 e!1631920)))

(declare-fun b!2586508 () Bool)

(assert (=> b!2586508 (= e!1631921 e!1631923)))

(declare-fun c!417028 () Bool)

(assert (=> b!2586508 (= c!417028 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(declare-fun b!2586509 () Bool)

(assert (=> b!2586509 (= e!1631922 (Union!7665 call!167022 call!167024))))

(declare-fun bm!167019 () Bool)

(assert (=> bm!167019 (= call!167021 call!167022)))

(declare-fun b!2586510 () Bool)

(assert (=> b!2586510 (= e!1631920 (Union!7665 (Concat!12409 call!167024 (regTwo!15842 (regex!4521 rule!570))) call!167023))))

(declare-fun b!2586511 () Bool)

(assert (=> b!2586511 (= e!1631919 (Concat!12409 call!167021 (regex!4521 rule!570)))))

(assert (= (and d!732450 c!417025) b!2586503))

(assert (= (and d!732450 (not c!417025)) b!2586508))

(assert (= (and b!2586508 c!417028) b!2586502))

(assert (= (and b!2586508 (not c!417028)) b!2586504))

(assert (= (and b!2586504 c!417026) b!2586509))

(assert (= (and b!2586504 (not c!417026)) b!2586505))

(assert (= (and b!2586505 c!417027) b!2586511))

(assert (= (and b!2586505 (not c!417027)) b!2586507))

(assert (= (and b!2586507 c!417029) b!2586510))

(assert (= (and b!2586507 (not c!417029)) b!2586506))

(assert (= (or b!2586510 b!2586506) bm!167017))

(assert (= (or b!2586511 bm!167017) bm!167019))

(assert (= (or b!2586509 b!2586510) bm!167016))

(assert (= (or b!2586509 bm!167019) bm!167018))

(assert (=> bm!167016 m!2922007))

(declare-fun m!2922759 () Bool)

(assert (=> bm!167016 m!2922759))

(assert (=> bm!167018 m!2922007))

(declare-fun m!2922761 () Bool)

(assert (=> bm!167018 m!2922761))

(declare-fun m!2922763 () Bool)

(assert (=> d!732450 m!2922763))

(assert (=> d!732450 m!2921939))

(assert (=> b!2586507 m!2922411))

(assert (=> b!2585839 d!732450))

(assert (=> b!2585839 d!732442))

(assert (=> b!2585839 d!732224))

(declare-fun d!732452 () Bool)

(declare-fun res!1087765 () Bool)

(declare-fun e!1631924 () Bool)

(assert (=> d!732452 (=> res!1087765 e!1631924)))

(assert (=> d!732452 (= res!1087765 ((_ is Nil!29767) (t!212232 (map!6607 rs!798 lambda!95783))))))

(assert (=> d!732452 (= (forall!6065 (t!212232 (map!6607 rs!798 lambda!95783)) lambda!95784) e!1631924)))

(declare-fun b!2586512 () Bool)

(declare-fun e!1631925 () Bool)

(assert (=> b!2586512 (= e!1631924 e!1631925)))

(declare-fun res!1087766 () Bool)

(assert (=> b!2586512 (=> (not res!1087766) (not e!1631925))))

(assert (=> b!2586512 (= res!1087766 (dynLambda!12585 lambda!95784 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(declare-fun b!2586513 () Bool)

(assert (=> b!2586513 (= e!1631925 (forall!6065 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783))) lambda!95784))))

(assert (= (and d!732452 (not res!1087765)) b!2586512))

(assert (= (and b!2586512 res!1087766) b!2586513))

(declare-fun b_lambda!76851 () Bool)

(assert (=> (not b_lambda!76851) (not b!2586512)))

(declare-fun m!2922765 () Bool)

(assert (=> b!2586512 m!2922765))

(declare-fun m!2922767 () Bool)

(assert (=> b!2586513 m!2922767))

(assert (=> b!2585819 d!732452))

(declare-fun d!732454 () Bool)

(declare-fun lt!909595 () Int)

(assert (=> d!732454 (>= lt!909595 0)))

(declare-fun e!1631926 () Int)

(assert (=> d!732454 (= lt!909595 e!1631926)))

(declare-fun c!417030 () Bool)

(assert (=> d!732454 (= c!417030 ((_ is Nil!29765) (originalCharacters!5287 token!562)))))

(assert (=> d!732454 (= (size!23078 (originalCharacters!5287 token!562)) lt!909595)))

(declare-fun b!2586514 () Bool)

(assert (=> b!2586514 (= e!1631926 0)))

(declare-fun b!2586515 () Bool)

(assert (=> b!2586515 (= e!1631926 (+ 1 (size!23078 (t!212230 (originalCharacters!5287 token!562)))))))

(assert (= (and d!732454 c!417030) b!2586514))

(assert (= (and d!732454 (not c!417030)) b!2586515))

(declare-fun m!2922769 () Bool)

(assert (=> b!2586515 m!2922769))

(assert (=> b!2585856 d!732454))

(declare-fun d!732456 () Bool)

(assert (=> d!732456 (= (isEmpty!17110 lt!909247) ((_ is Nil!29765) lt!909247))))

(assert (=> bm!166946 d!732456))

(assert (=> b!2585691 d!732232))

(declare-fun d!732458 () Bool)

(declare-fun isBalanced!2834 (Conc!9287) Bool)

(assert (=> d!732458 (= (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))) (isBalanced!2834 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun bs!471751 () Bool)

(assert (= bs!471751 d!732458))

(declare-fun m!2922771 () Bool)

(assert (=> bs!471751 m!2922771))

(assert (=> tb!140857 d!732458))

(declare-fun d!732460 () Bool)

(declare-fun res!1087771 () Bool)

(declare-fun e!1631931 () Bool)

(assert (=> d!732460 (=> res!1087771 e!1631931)))

(assert (=> d!732460 (= res!1087771 ((_ is Nil!29766) rules!4580))))

(assert (=> d!732460 (= (noDuplicateTag!1690 thiss!28211 rules!4580 Nil!29768) e!1631931)))

(declare-fun b!2586520 () Bool)

(declare-fun e!1631932 () Bool)

(assert (=> b!2586520 (= e!1631931 e!1631932)))

(declare-fun res!1087772 () Bool)

(assert (=> b!2586520 (=> (not res!1087772) (not e!1631932))))

(declare-fun contains!5327 (List!29868 String!33123) Bool)

(assert (=> b!2586520 (= res!1087772 (not (contains!5327 Nil!29768 (tag!5011 (h!35186 rules!4580)))))))

(declare-fun b!2586521 () Bool)

(assert (=> b!2586521 (= e!1631932 (noDuplicateTag!1690 thiss!28211 (t!212231 rules!4580) (Cons!29768 (tag!5011 (h!35186 rules!4580)) Nil!29768)))))

(assert (= (and d!732460 (not res!1087771)) b!2586520))

(assert (= (and b!2586520 res!1087772) b!2586521))

(declare-fun m!2922773 () Bool)

(assert (=> b!2586520 m!2922773))

(declare-fun m!2922775 () Bool)

(assert (=> b!2586521 m!2922775))

(assert (=> b!2585835 d!732460))

(declare-fun d!732462 () Bool)

(declare-fun lt!909596 () Int)

(assert (=> d!732462 (>= lt!909596 0)))

(declare-fun e!1631933 () Int)

(assert (=> d!732462 (= lt!909596 e!1631933)))

(declare-fun c!417031 () Bool)

(assert (=> d!732462 (= c!417031 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909381))))))

(assert (=> d!732462 (= (size!23078 (_2!17401 (get!9380 lt!909381))) lt!909596)))

(declare-fun b!2586522 () Bool)

(assert (=> b!2586522 (= e!1631933 0)))

(declare-fun b!2586523 () Bool)

(assert (=> b!2586523 (= e!1631933 (+ 1 (size!23078 (t!212230 (_2!17401 (get!9380 lt!909381))))))))

(assert (= (and d!732462 c!417031) b!2586522))

(assert (= (and d!732462 (not c!417031)) b!2586523))

(declare-fun m!2922777 () Bool)

(assert (=> b!2586523 m!2922777))

(assert (=> b!2585913 d!732462))

(assert (=> b!2585913 d!732256))

(assert (=> b!2585913 d!732242))

(declare-fun bs!471752 () Bool)

(declare-fun d!732464 () Bool)

(assert (= bs!471752 (and d!732464 d!732122)))

(declare-fun lambda!95830 () Int)

(assert (=> bs!471752 (= lambda!95830 lambda!95796)))

(declare-fun bs!471753 () Bool)

(assert (= bs!471753 (and d!732464 d!732250)))

(assert (=> bs!471753 (= lambda!95830 lambda!95810)))

(declare-fun bs!471754 () Bool)

(assert (= bs!471754 (and d!732464 d!732278)))

(assert (=> bs!471754 (= lambda!95830 lambda!95811)))

(declare-fun bs!471755 () Bool)

(assert (= bs!471755 (and d!732464 d!732314)))

(assert (=> bs!471755 (= lambda!95830 lambda!95814)))

(assert (=> d!732464 true))

(declare-fun lt!909597 () Bool)

(assert (=> d!732464 (= lt!909597 (forall!6067 rs!798 lambda!95830))))

(declare-fun e!1631934 () Bool)

(assert (=> d!732464 (= lt!909597 e!1631934)))

(declare-fun res!1087774 () Bool)

(assert (=> d!732464 (=> res!1087774 e!1631934)))

(assert (=> d!732464 (= res!1087774 (not ((_ is Cons!29766) rs!798)))))

(assert (=> d!732464 (= (rulesValidInductive!1595 thiss!28211 rs!798) lt!909597)))

(declare-fun b!2586524 () Bool)

(declare-fun e!1631935 () Bool)

(assert (=> b!2586524 (= e!1631934 e!1631935)))

(declare-fun res!1087773 () Bool)

(assert (=> b!2586524 (=> (not res!1087773) (not e!1631935))))

(assert (=> b!2586524 (= res!1087773 (ruleValid!1527 thiss!28211 (h!35186 rs!798)))))

(declare-fun b!2586525 () Bool)

(assert (=> b!2586525 (= e!1631935 (rulesValidInductive!1595 thiss!28211 (t!212231 rs!798)))))

(assert (= (and d!732464 (not res!1087774)) b!2586524))

(assert (= (and b!2586524 res!1087773) b!2586525))

(declare-fun m!2922779 () Bool)

(assert (=> d!732464 m!2922779))

(declare-fun m!2922781 () Bool)

(assert (=> b!2586524 m!2922781))

(assert (=> b!2586525 m!2922351))

(assert (=> d!732122 d!732464))

(declare-fun d!732466 () Bool)

(declare-fun res!1087779 () Bool)

(declare-fun e!1631940 () Bool)

(assert (=> d!732466 (=> res!1087779 e!1631940)))

(assert (=> d!732466 (= res!1087779 ((_ is Nil!29766) rs!798))))

(assert (=> d!732466 (= (forall!6067 rs!798 lambda!95796) e!1631940)))

(declare-fun b!2586530 () Bool)

(declare-fun e!1631941 () Bool)

(assert (=> b!2586530 (= e!1631940 e!1631941)))

(declare-fun res!1087780 () Bool)

(assert (=> b!2586530 (=> (not res!1087780) (not e!1631941))))

(declare-fun dynLambda!12596 (Int Rule!8842) Bool)

(assert (=> b!2586530 (= res!1087780 (dynLambda!12596 lambda!95796 (h!35186 rs!798)))))

(declare-fun b!2586531 () Bool)

(assert (=> b!2586531 (= e!1631941 (forall!6067 (t!212231 rs!798) lambda!95796))))

(assert (= (and d!732466 (not res!1087779)) b!2586530))

(assert (= (and b!2586530 res!1087780) b!2586531))

(declare-fun b_lambda!76853 () Bool)

(assert (=> (not b_lambda!76853) (not b!2586530)))

(declare-fun m!2922783 () Bool)

(assert (=> b!2586530 m!2922783))

(declare-fun m!2922785 () Bool)

(assert (=> b!2586531 m!2922785))

(assert (=> d!732122 d!732466))

(assert (=> d!732096 d!732178))

(assert (=> d!732096 d!732080))

(assert (=> d!732096 d!732112))

(declare-fun d!732468 () Bool)

(assert (=> d!732468 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909246)) rule!570 (size!23078 lt!909246) lt!909246) suffix!1684)))))

(assert (=> d!732468 true))

(declare-fun _$59!344 () Unit!43600)

(assert (=> d!732468 (= (choose!15238 thiss!28211 rules!4580 lt!909246 input!3654 suffix!1684 rule!570) _$59!344)))

(declare-fun bs!471756 () Bool)

(assert (= bs!471756 d!732468))

(assert (=> bs!471756 m!2921723))

(assert (=> bs!471756 m!2921719))

(assert (=> bs!471756 m!2921719))

(assert (=> bs!471756 m!2921721))

(assert (=> bs!471756 m!2921725))

(assert (=> d!732096 d!732468))

(assert (=> d!732096 d!732108))

(assert (=> d!732096 d!732110))

(assert (=> b!2585914 d!732418))

(assert (=> b!2585914 d!732420))

(assert (=> b!2585914 d!732256))

(declare-fun b!2586532 () Bool)

(declare-fun e!1631947 () Bool)

(declare-fun lt!909598 () Bool)

(assert (=> b!2586532 (= e!1631947 (not lt!909598))))

(declare-fun d!732470 () Bool)

(declare-fun e!1631948 () Bool)

(assert (=> d!732470 e!1631948))

(declare-fun c!417033 () Bool)

(assert (=> d!732470 (= c!417033 ((_ is EmptyExpr!7665) (regex!4521 rule!570)))))

(declare-fun e!1631942 () Bool)

(assert (=> d!732470 (= lt!909598 e!1631942)))

(declare-fun c!417032 () Bool)

(assert (=> d!732470 (= c!417032 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!732470 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732470 (= (matchR!3598 (regex!4521 rule!570) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) lt!909598)))

(declare-fun b!2586533 () Bool)

(declare-fun res!1087788 () Bool)

(declare-fun e!1631945 () Bool)

(assert (=> b!2586533 (=> (not res!1087788) (not e!1631945))))

(assert (=> b!2586533 (= res!1087788 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2586534 () Bool)

(assert (=> b!2586534 (= e!1631942 (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2586535 () Bool)

(declare-fun res!1087781 () Bool)

(assert (=> b!2586535 (=> (not res!1087781) (not e!1631945))))

(declare-fun call!167025 () Bool)

(assert (=> b!2586535 (= res!1087781 (not call!167025))))

(declare-fun b!2586536 () Bool)

(assert (=> b!2586536 (= e!1631948 (= lt!909598 call!167025))))

(declare-fun b!2586537 () Bool)

(declare-fun res!1087787 () Bool)

(declare-fun e!1631944 () Bool)

(assert (=> b!2586537 (=> res!1087787 e!1631944)))

(assert (=> b!2586537 (= res!1087787 (not (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun b!2586538 () Bool)

(declare-fun res!1087783 () Bool)

(declare-fun e!1631946 () Bool)

(assert (=> b!2586538 (=> res!1087783 e!1631946)))

(assert (=> b!2586538 (= res!1087783 e!1631945)))

(declare-fun res!1087786 () Bool)

(assert (=> b!2586538 (=> (not res!1087786) (not e!1631945))))

(assert (=> b!2586538 (= res!1087786 lt!909598)))

(declare-fun b!2586539 () Bool)

(declare-fun e!1631943 () Bool)

(assert (=> b!2586539 (= e!1631946 e!1631943)))

(declare-fun res!1087785 () Bool)

(assert (=> b!2586539 (=> (not res!1087785) (not e!1631943))))

(assert (=> b!2586539 (= res!1087785 (not lt!909598))))

(declare-fun b!2586540 () Bool)

(declare-fun res!1087784 () Bool)

(assert (=> b!2586540 (=> res!1087784 e!1631946)))

(assert (=> b!2586540 (= res!1087784 (not ((_ is ElementMatch!7665) (regex!4521 rule!570))))))

(assert (=> b!2586540 (= e!1631947 e!1631946)))

(declare-fun b!2586541 () Bool)

(assert (=> b!2586541 (= e!1631945 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (c!416820 (regex!4521 rule!570))))))

(declare-fun b!2586542 () Bool)

(assert (=> b!2586542 (= e!1631942 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun b!2586543 () Bool)

(assert (=> b!2586543 (= e!1631948 e!1631947)))

(declare-fun c!417034 () Bool)

(assert (=> b!2586543 (= c!417034 ((_ is EmptyLang!7665) (regex!4521 rule!570)))))

(declare-fun b!2586544 () Bool)

(assert (=> b!2586544 (= e!1631944 (not (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (c!416820 (regex!4521 rule!570)))))))

(declare-fun bm!167020 () Bool)

(assert (=> bm!167020 (= call!167025 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun b!2586545 () Bool)

(assert (=> b!2586545 (= e!1631943 e!1631944)))

(declare-fun res!1087782 () Bool)

(assert (=> b!2586545 (=> res!1087782 e!1631944)))

(assert (=> b!2586545 (= res!1087782 call!167025)))

(assert (= (and d!732470 c!417032) b!2586542))

(assert (= (and d!732470 (not c!417032)) b!2586534))

(assert (= (and d!732470 c!417033) b!2586536))

(assert (= (and d!732470 (not c!417033)) b!2586543))

(assert (= (and b!2586543 c!417034) b!2586532))

(assert (= (and b!2586543 (not c!417034)) b!2586540))

(assert (= (and b!2586540 (not res!1087784)) b!2586538))

(assert (= (and b!2586538 res!1087786) b!2586535))

(assert (= (and b!2586535 res!1087781) b!2586533))

(assert (= (and b!2586533 res!1087788) b!2586541))

(assert (= (and b!2586538 (not res!1087783)) b!2586539))

(assert (= (and b!2586539 res!1087785) b!2586545))

(assert (= (and b!2586545 (not res!1087782)) b!2586537))

(assert (= (and b!2586537 (not res!1087787)) b!2586544))

(assert (= (or b!2586536 b!2586535 b!2586545) bm!167020))

(assert (=> bm!167020 m!2921813))

(declare-fun m!2922787 () Bool)

(assert (=> bm!167020 m!2922787))

(assert (=> b!2586534 m!2921813))

(declare-fun m!2922789 () Bool)

(assert (=> b!2586534 m!2922789))

(assert (=> b!2586534 m!2922789))

(declare-fun m!2922791 () Bool)

(assert (=> b!2586534 m!2922791))

(assert (=> b!2586534 m!2921813))

(declare-fun m!2922793 () Bool)

(assert (=> b!2586534 m!2922793))

(assert (=> b!2586534 m!2922791))

(assert (=> b!2586534 m!2922793))

(declare-fun m!2922795 () Bool)

(assert (=> b!2586534 m!2922795))

(assert (=> b!2586541 m!2921813))

(assert (=> b!2586541 m!2922789))

(assert (=> b!2586533 m!2921813))

(assert (=> b!2586533 m!2922793))

(assert (=> b!2586533 m!2922793))

(declare-fun m!2922797 () Bool)

(assert (=> b!2586533 m!2922797))

(assert (=> b!2586544 m!2921813))

(assert (=> b!2586544 m!2922789))

(assert (=> d!732470 m!2921813))

(assert (=> d!732470 m!2922787))

(assert (=> d!732470 m!2921939))

(assert (=> b!2586537 m!2921813))

(assert (=> b!2586537 m!2922793))

(assert (=> b!2586537 m!2922793))

(assert (=> b!2586537 m!2922797))

(assert (=> b!2586542 m!2921941))

(assert (=> b!2585685 d!732470))

(declare-fun d!732472 () Bool)

(assert (=> d!732472 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))) (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun bs!471757 () Bool)

(assert (= bs!471757 d!732472))

(declare-fun m!2922799 () Bool)

(assert (=> bs!471757 m!2922799))

(assert (=> b!2585685 d!732472))

(declare-fun d!732474 () Bool)

(declare-fun lt!909599 () BalanceConc!18188)

(assert (=> d!732474 (= (list!11253 lt!909599) (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))

(assert (=> d!732474 (= lt!909599 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))))

(assert (=> d!732474 (= (charsOf!2850 (_1!17401 (get!9380 lt!909268))) lt!909599)))

(declare-fun b_lambda!76855 () Bool)

(assert (=> (not b_lambda!76855) (not d!732474)))

(declare-fun tb!141009 () Bool)

(declare-fun t!212408 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212408) tb!141009))

(declare-fun b!2586546 () Bool)

(declare-fun e!1631949 () Bool)

(declare-fun tp!820979 () Bool)

(assert (=> b!2586546 (= e!1631949 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))) tp!820979))))

(declare-fun result!175292 () Bool)

(assert (=> tb!141009 (= result!175292 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))) e!1631949))))

(assert (= tb!141009 b!2586546))

(declare-fun m!2922801 () Bool)

(assert (=> b!2586546 m!2922801))

(declare-fun m!2922803 () Bool)

(assert (=> tb!141009 m!2922803))

(assert (=> d!732474 t!212408))

(declare-fun b_and!189743 () Bool)

(assert (= b_and!189721 (and (=> t!212408 result!175292) b_and!189743)))

(declare-fun t!212410 () Bool)

(declare-fun tb!141011 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212410) tb!141011))

(declare-fun result!175294 () Bool)

(assert (= result!175294 result!175292))

(assert (=> d!732474 t!212410))

(declare-fun b_and!189745 () Bool)

(assert (= b_and!189723 (and (=> t!212410 result!175294) b_and!189745)))

(declare-fun t!212412 () Bool)

(declare-fun tb!141013 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212412) tb!141013))

(declare-fun result!175296 () Bool)

(assert (= result!175296 result!175292))

(assert (=> d!732474 t!212412))

(declare-fun b_and!189747 () Bool)

(assert (= b_and!189729 (and (=> t!212412 result!175296) b_and!189747)))

(declare-fun tb!141015 () Bool)

(declare-fun t!212414 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212414) tb!141015))

(declare-fun result!175298 () Bool)

(assert (= result!175298 result!175292))

(assert (=> d!732474 t!212414))

(declare-fun b_and!189749 () Bool)

(assert (= b_and!189727 (and (=> t!212414 result!175298) b_and!189749)))

(declare-fun t!212416 () Bool)

(declare-fun tb!141017 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212416) tb!141017))

(declare-fun result!175300 () Bool)

(assert (= result!175300 result!175292))

(assert (=> d!732474 t!212416))

(declare-fun b_and!189751 () Bool)

(assert (= b_and!189725 (and (=> t!212416 result!175300) b_and!189751)))

(declare-fun t!212418 () Bool)

(declare-fun tb!141019 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212418) tb!141019))

(declare-fun result!175302 () Bool)

(assert (= result!175302 result!175292))

(assert (=> d!732474 t!212418))

(declare-fun b_and!189753 () Bool)

(assert (= b_and!189719 (and (=> t!212418 result!175302) b_and!189753)))

(declare-fun m!2922805 () Bool)

(assert (=> d!732474 m!2922805))

(declare-fun m!2922807 () Bool)

(assert (=> d!732474 m!2922807))

(assert (=> b!2585685 d!732474))

(assert (=> b!2585685 d!732232))

(declare-fun bs!471758 () Bool)

(declare-fun d!732476 () Bool)

(assert (= bs!471758 (and d!732476 d!732414)))

(declare-fun lambda!95831 () Int)

(assert (=> bs!471758 (= (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570))) (= lambda!95831 lambda!95828))))

(assert (=> d!732476 true))

(assert (=> d!732476 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (dynLambda!12593 order!15855 lambda!95831))))

(assert (=> d!732476 (= (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (Forall2!767 lambda!95831))))

(declare-fun bs!471759 () Bool)

(assert (= bs!471759 d!732476))

(declare-fun m!2922809 () Bool)

(assert (=> bs!471759 m!2922809))

(assert (=> b!2585730 d!732476))

(declare-fun d!732478 () Bool)

(declare-fun c!417037 () Bool)

(assert (=> d!732478 (= c!417037 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun e!1631954 () Bool)

(assert (=> d!732478 (= (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1631954)))

(declare-fun b!2586553 () Bool)

(declare-fun inv!40202 (Conc!9287) Bool)

(assert (=> b!2586553 (= e!1631954 (inv!40202 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun b!2586554 () Bool)

(declare-fun e!1631955 () Bool)

(assert (=> b!2586554 (= e!1631954 e!1631955)))

(declare-fun res!1087791 () Bool)

(assert (=> b!2586554 (= res!1087791 (not ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (=> b!2586554 (=> res!1087791 e!1631955)))

(declare-fun b!2586555 () Bool)

(declare-fun inv!40203 (Conc!9287) Bool)

(assert (=> b!2586555 (= e!1631955 (inv!40203 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(assert (= (and d!732478 c!417037) b!2586553))

(assert (= (and d!732478 (not c!417037)) b!2586554))

(assert (= (and b!2586554 (not res!1087791)) b!2586555))

(declare-fun m!2922811 () Bool)

(assert (=> b!2586553 m!2922811))

(declare-fun m!2922813 () Bool)

(assert (=> b!2586555 m!2922813))

(assert (=> b!2585714 d!732478))

(declare-fun d!732480 () Bool)

(declare-fun charsToBigInt!0 (List!29864 Int) Int)

(assert (=> d!732480 (= (inv!15 (value!146096 token!562)) (= (charsToBigInt!0 (text!33650 (value!146096 token!562)) 0) (value!146091 (value!146096 token!562))))))

(declare-fun bs!471760 () Bool)

(assert (= bs!471760 d!732480))

(declare-fun m!2922815 () Bool)

(assert (=> bs!471760 m!2922815))

(assert (=> b!2585940 d!732480))

(assert (=> b!2585791 d!732206))

(declare-fun b!2586556 () Bool)

(declare-fun e!1631956 () List!29865)

(assert (=> b!2586556 (= e!1631956 (_2!17401 (get!9380 lt!909268)))))

(declare-fun d!732482 () Bool)

(declare-fun e!1631957 () Bool)

(assert (=> d!732482 e!1631957))

(declare-fun res!1087792 () Bool)

(assert (=> d!732482 (=> (not res!1087792) (not e!1631957))))

(declare-fun lt!909600 () List!29865)

(assert (=> d!732482 (= res!1087792 (= (content!4114 lt!909600) ((_ map or) (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (content!4114 (_2!17401 (get!9380 lt!909268))))))))

(assert (=> d!732482 (= lt!909600 e!1631956)))

(declare-fun c!417038 () Bool)

(assert (=> d!732482 (= c!417038 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!732482 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))) (_2!17401 (get!9380 lt!909268))) lt!909600)))

(declare-fun b!2586557 () Bool)

(assert (=> b!2586557 (= e!1631956 (Cons!29765 (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (_2!17401 (get!9380 lt!909268)))))))

(declare-fun b!2586558 () Bool)

(declare-fun res!1087793 () Bool)

(assert (=> b!2586558 (=> (not res!1087793) (not e!1631957))))

(assert (=> b!2586558 (= res!1087793 (= (size!23078 lt!909600) (+ (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (size!23078 (_2!17401 (get!9380 lt!909268))))))))

(declare-fun b!2586559 () Bool)

(assert (=> b!2586559 (= e!1631957 (or (not (= (_2!17401 (get!9380 lt!909268)) Nil!29765)) (= lt!909600 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(assert (= (and d!732482 c!417038) b!2586556))

(assert (= (and d!732482 (not c!417038)) b!2586557))

(assert (= (and d!732482 res!1087792) b!2586558))

(assert (= (and b!2586558 res!1087793) b!2586559))

(declare-fun m!2922817 () Bool)

(assert (=> d!732482 m!2922817))

(assert (=> d!732482 m!2921813))

(declare-fun m!2922819 () Bool)

(assert (=> d!732482 m!2922819))

(declare-fun m!2922821 () Bool)

(assert (=> d!732482 m!2922821))

(declare-fun m!2922823 () Bool)

(assert (=> b!2586557 m!2922823))

(declare-fun m!2922825 () Bool)

(assert (=> b!2586558 m!2922825))

(assert (=> b!2586558 m!2921813))

(declare-fun m!2922827 () Bool)

(assert (=> b!2586558 m!2922827))

(assert (=> b!2586558 m!2921791))

(assert (=> b!2585687 d!732482))

(assert (=> b!2585687 d!732472))

(assert (=> b!2585687 d!732474))

(assert (=> b!2585687 d!732232))

(declare-fun bs!471761 () Bool)

(declare-fun d!732484 () Bool)

(assert (= bs!471761 (and d!732484 d!732414)))

(declare-fun lambda!95832 () Int)

(assert (=> bs!471761 (= (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570))) (= lambda!95832 lambda!95828))))

(declare-fun bs!471762 () Bool)

(assert (= bs!471762 (and d!732484 d!732476)))

(assert (=> bs!471762 (= (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (= lambda!95832 lambda!95831))))

(assert (=> d!732484 true))

(assert (=> d!732484 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (dynLambda!12593 order!15855 lambda!95832))))

(assert (=> d!732484 (= (equivClasses!1790 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (Forall2!767 lambda!95832))))

(declare-fun bs!471763 () Bool)

(assert (= bs!471763 d!732484))

(declare-fun m!2922829 () Bool)

(assert (=> bs!471763 m!2922829))

(assert (=> b!2585723 d!732484))

(declare-fun d!732486 () Bool)

(assert (=> d!732486 (= (seqFromList!3161 (_1!17402 lt!909270)) (fromListB!1430 (_1!17402 lt!909270)))))

(declare-fun bs!471764 () Bool)

(assert (= bs!471764 d!732486))

(declare-fun m!2922831 () Bool)

(assert (=> bs!471764 m!2922831))

(assert (=> b!2585689 d!732486))

(declare-fun d!732488 () Bool)

(declare-fun lt!909603 () Int)

(assert (=> d!732488 (= lt!909603 (size!23078 (list!11253 (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun size!23086 (Conc!9287) Int)

(assert (=> d!732488 (= lt!909603 (size!23086 (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))))))

(assert (=> d!732488 (= (size!23079 (seqFromList!3161 (_1!17402 lt!909270))) lt!909603)))

(declare-fun bs!471765 () Bool)

(assert (= bs!471765 d!732488))

(assert (=> bs!471765 m!2921821))

(declare-fun m!2922833 () Bool)

(assert (=> bs!471765 m!2922833))

(assert (=> bs!471765 m!2922833))

(declare-fun m!2922835 () Bool)

(assert (=> bs!471765 m!2922835))

(declare-fun m!2922837 () Bool)

(assert (=> bs!471765 m!2922837))

(assert (=> b!2585689 d!732488))

(declare-fun d!732490 () Bool)

(assert (=> d!732490 (= (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) ((_ is Nil!29765) (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2585689 d!732490))

(assert (=> b!2585689 d!732242))

(declare-fun bs!471766 () Bool)

(declare-fun d!732492 () Bool)

(assert (= bs!471766 (and d!732492 d!732218)))

(declare-fun lambda!95835 () Int)

(assert (=> bs!471766 (= lambda!95835 lambda!95807)))

(declare-fun bs!471767 () Bool)

(assert (= bs!471767 (and d!732492 d!732286)))

(assert (=> bs!471767 (= (and (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (= lambda!95835 lambda!95813))))

(declare-fun b!2586564 () Bool)

(declare-fun e!1631960 () Bool)

(assert (=> b!2586564 (= e!1631960 true)))

(assert (=> d!732492 e!1631960))

(assert (= d!732492 b!2586564))

(assert (=> b!2586564 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 rule!570))) (dynLambda!12589 order!15843 lambda!95835))))

(assert (=> b!2586564 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 rule!570))) (dynLambda!12589 order!15843 lambda!95835))))

(assert (=> d!732492 (= (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))) (list!11253 (seqFromList!3161 (_1!17402 lt!909270))))))

(declare-fun lt!909606 () Unit!43600)

(declare-fun ForallOf!507 (Int BalanceConc!18188) Unit!43600)

(assert (=> d!732492 (= lt!909606 (ForallOf!507 lambda!95835 (seqFromList!3161 (_1!17402 lt!909270))))))

(assert (=> d!732492 (= (lemmaSemiInverse!1107 (transformation!4521 rule!570) (seqFromList!3161 (_1!17402 lt!909270))) lt!909606)))

(declare-fun b_lambda!76857 () Bool)

(assert (=> (not b_lambda!76857) (not d!732492)))

(declare-fun tb!141021 () Bool)

(declare-fun t!212420 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 rule!570))) t!212420) tb!141021))

(declare-fun tp!820980 () Bool)

(declare-fun e!1631961 () Bool)

(declare-fun b!2586565 () Bool)

(assert (=> b!2586565 (= e!1631961 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))) tp!820980))))

(declare-fun result!175304 () Bool)

(assert (=> tb!141021 (= result!175304 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))) e!1631961))))

(assert (= tb!141021 b!2586565))

(declare-fun m!2922839 () Bool)

(assert (=> b!2586565 m!2922839))

(declare-fun m!2922841 () Bool)

(assert (=> tb!141021 m!2922841))

(assert (=> d!732492 t!212420))

(declare-fun b_and!189755 () Bool)

(assert (= b_and!189751 (and (=> t!212420 result!175304) b_and!189755)))

(declare-fun tb!141023 () Bool)

(declare-fun t!212422 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 rule!570))) t!212422) tb!141023))

(declare-fun result!175306 () Bool)

(assert (= result!175306 result!175304))

(assert (=> d!732492 t!212422))

(declare-fun b_and!189757 () Bool)

(assert (= b_and!189747 (and (=> t!212422 result!175306) b_and!189757)))

(declare-fun t!212424 () Bool)

(declare-fun tb!141025 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 rule!570))) t!212424) tb!141025))

(declare-fun result!175308 () Bool)

(assert (= result!175308 result!175304))

(assert (=> d!732492 t!212424))

(declare-fun b_and!189759 () Bool)

(assert (= b_and!189749 (and (=> t!212424 result!175308) b_and!189759)))

(declare-fun t!212426 () Bool)

(declare-fun tb!141027 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 rule!570))) t!212426) tb!141027))

(declare-fun result!175310 () Bool)

(assert (= result!175310 result!175304))

(assert (=> d!732492 t!212426))

(declare-fun b_and!189761 () Bool)

(assert (= b_and!189743 (and (=> t!212426 result!175310) b_and!189761)))

(declare-fun t!212428 () Bool)

(declare-fun tb!141029 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 rule!570))) t!212428) tb!141029))

(declare-fun result!175312 () Bool)

(assert (= result!175312 result!175304))

(assert (=> d!732492 t!212428))

(declare-fun b_and!189763 () Bool)

(assert (= b_and!189753 (and (=> t!212428 result!175312) b_and!189763)))

(declare-fun t!212430 () Bool)

(declare-fun tb!141031 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 rule!570))) t!212430) tb!141031))

(declare-fun result!175314 () Bool)

(assert (= result!175314 result!175304))

(assert (=> d!732492 t!212430))

(declare-fun b_and!189765 () Bool)

(assert (= b_and!189745 (and (=> t!212430 result!175314) b_and!189765)))

(declare-fun b_lambda!76859 () Bool)

(assert (=> (not b_lambda!76859) (not d!732492)))

(declare-fun t!212432 () Bool)

(declare-fun tb!141033 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570))) t!212432) tb!141033))

(declare-fun result!175316 () Bool)

(assert (=> tb!141033 (= result!175316 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun m!2922843 () Bool)

(assert (=> tb!141033 m!2922843))

(assert (=> d!732492 t!212432))

(declare-fun b_and!189767 () Bool)

(assert (= b_and!189739 (and (=> t!212432 result!175316) b_and!189767)))

(declare-fun t!212434 () Bool)

(declare-fun tb!141035 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570))) t!212434) tb!141035))

(declare-fun result!175318 () Bool)

(assert (= result!175318 result!175316))

(assert (=> d!732492 t!212434))

(declare-fun b_and!189769 () Bool)

(assert (= b_and!189733 (and (=> t!212434 result!175318) b_and!189769)))

(declare-fun t!212436 () Bool)

(declare-fun tb!141037 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) t!212436) tb!141037))

(declare-fun result!175320 () Bool)

(assert (= result!175320 result!175316))

(assert (=> d!732492 t!212436))

(declare-fun b_and!189771 () Bool)

(assert (= b_and!189735 (and (=> t!212436 result!175320) b_and!189771)))

(declare-fun tb!141039 () Bool)

(declare-fun t!212438 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570))) t!212438) tb!141039))

(declare-fun result!175322 () Bool)

(assert (= result!175322 result!175316))

(assert (=> d!732492 t!212438))

(declare-fun b_and!189773 () Bool)

(assert (= b_and!189737 (and (=> t!212438 result!175322) b_and!189773)))

(declare-fun t!212440 () Bool)

(declare-fun tb!141041 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570))) t!212440) tb!141041))

(declare-fun result!175324 () Bool)

(assert (= result!175324 result!175316))

(assert (=> d!732492 t!212440))

(declare-fun b_and!189775 () Bool)

(assert (= b_and!189731 (and (=> t!212440 result!175324) b_and!189775)))

(declare-fun t!212442 () Bool)

(declare-fun tb!141043 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570))) t!212442) tb!141043))

(declare-fun result!175326 () Bool)

(assert (= result!175326 result!175316))

(assert (=> d!732492 t!212442))

(declare-fun b_and!189777 () Bool)

(assert (= b_and!189741 (and (=> t!212442 result!175326) b_and!189777)))

(assert (=> d!732492 m!2921821))

(declare-fun m!2922845 () Bool)

(assert (=> d!732492 m!2922845))

(assert (=> d!732492 m!2921821))

(assert (=> d!732492 m!2922833))

(assert (=> d!732492 m!2921821))

(declare-fun m!2922847 () Bool)

(assert (=> d!732492 m!2922847))

(assert (=> d!732492 m!2922845))

(declare-fun m!2922849 () Bool)

(assert (=> d!732492 m!2922849))

(assert (=> d!732492 m!2922849))

(declare-fun m!2922851 () Bool)

(assert (=> d!732492 m!2922851))

(assert (=> b!2585689 d!732492))

(declare-fun d!732494 () Bool)

(assert (=> d!732494 (= (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 (_1!17402 lt!909270))) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))

(declare-fun b_lambda!76861 () Bool)

(assert (=> (not b_lambda!76861) (not d!732494)))

(assert (=> d!732494 t!212438))

(declare-fun b_and!189779 () Bool)

(assert (= b_and!189773 (and (=> t!212438 result!175322) b_and!189779)))

(assert (=> d!732494 t!212440))

(declare-fun b_and!189781 () Bool)

(assert (= b_and!189775 (and (=> t!212440 result!175324) b_and!189781)))

(assert (=> d!732494 t!212432))

(declare-fun b_and!189783 () Bool)

(assert (= b_and!189767 (and (=> t!212432 result!175316) b_and!189783)))

(assert (=> d!732494 t!212442))

(declare-fun b_and!189785 () Bool)

(assert (= b_and!189777 (and (=> t!212442 result!175326) b_and!189785)))

(assert (=> d!732494 t!212434))

(declare-fun b_and!189787 () Bool)

(assert (= b_and!189769 (and (=> t!212434 result!175318) b_and!189787)))

(assert (=> d!732494 t!212436))

(declare-fun b_and!189789 () Bool)

(assert (= b_and!189771 (and (=> t!212436 result!175320) b_and!189789)))

(assert (=> d!732494 m!2921821))

(assert (=> d!732494 m!2922845))

(assert (=> b!2585689 d!732494))

(declare-fun d!732496 () Bool)

(declare-fun e!1631965 () Bool)

(assert (=> d!732496 e!1631965))

(declare-fun res!1087796 () Bool)

(assert (=> d!732496 (=> res!1087796 e!1631965)))

(assert (=> d!732496 (= res!1087796 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun lt!909609 () Unit!43600)

(declare-fun choose!15245 (Regex!7665 List!29865) Unit!43600)

(assert (=> d!732496 (= lt!909609 (choose!15245 (regex!4521 rule!570) input!3654))))

(assert (=> d!732496 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732496 (= (longestMatchIsAcceptedByMatchOrIsEmpty!729 (regex!4521 rule!570) input!3654) lt!909609)))

(declare-fun b!2586568 () Bool)

(assert (=> b!2586568 (= e!1631965 (matchR!3598 (regex!4521 rule!570) (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (= (and d!732496 (not res!1087796)) b!2586568))

(assert (=> d!732496 m!2921939))

(assert (=> d!732496 m!2921801))

(assert (=> d!732496 m!2921801))

(assert (=> d!732496 m!2921793))

(assert (=> d!732496 m!2921803))

(assert (=> d!732496 m!2921823))

(declare-fun m!2922853 () Bool)

(assert (=> d!732496 m!2922853))

(assert (=> d!732496 m!2921793))

(assert (=> b!2586568 m!2921801))

(assert (=> b!2586568 m!2921793))

(assert (=> b!2586568 m!2921801))

(assert (=> b!2586568 m!2921793))

(assert (=> b!2586568 m!2921803))

(assert (=> b!2586568 m!2921805))

(assert (=> b!2585689 d!732496))

(assert (=> b!2585689 d!732410))

(assert (=> b!2585689 d!732328))

(declare-fun b!2586603 () Bool)

(declare-fun e!1631992 () Bool)

(declare-fun call!167034 () Bool)

(assert (=> b!2586603 (= e!1631992 call!167034)))

(declare-fun d!732498 () Bool)

(declare-fun res!1087811 () Bool)

(declare-fun e!1631988 () Bool)

(assert (=> d!732498 (=> res!1087811 e!1631988)))

(assert (=> d!732498 (= res!1087811 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(assert (=> d!732498 (= (validRegex!3279 (regex!4521 rule!570)) e!1631988)))

(declare-fun bm!167027 () Bool)

(declare-fun call!167032 () Bool)

(declare-fun call!167033 () Bool)

(assert (=> bm!167027 (= call!167032 call!167033)))

(declare-fun b!2586604 () Bool)

(declare-fun e!1631990 () Bool)

(declare-fun e!1631994 () Bool)

(assert (=> b!2586604 (= e!1631990 e!1631994)))

(declare-fun res!1087810 () Bool)

(assert (=> b!2586604 (=> (not res!1087810) (not e!1631994))))

(assert (=> b!2586604 (= res!1087810 call!167032)))

(declare-fun c!417053 () Bool)

(declare-fun c!417052 () Bool)

(declare-fun bm!167028 () Bool)

(assert (=> bm!167028 (= call!167033 (validRegex!3279 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(declare-fun b!2586605 () Bool)

(declare-fun res!1087807 () Bool)

(assert (=> b!2586605 (=> (not res!1087807) (not e!1631992))))

(assert (=> b!2586605 (= res!1087807 call!167032)))

(declare-fun e!1631991 () Bool)

(assert (=> b!2586605 (= e!1631991 e!1631992)))

(declare-fun b!2586606 () Bool)

(assert (=> b!2586606 (= e!1631994 call!167034)))

(declare-fun b!2586607 () Bool)

(declare-fun res!1087808 () Bool)

(assert (=> b!2586607 (=> res!1087808 e!1631990)))

(assert (=> b!2586607 (= res!1087808 (not ((_ is Concat!12409) (regex!4521 rule!570))))))

(assert (=> b!2586607 (= e!1631991 e!1631990)))

(declare-fun b!2586608 () Bool)

(declare-fun e!1631989 () Bool)

(assert (=> b!2586608 (= e!1631989 e!1631991)))

(assert (=> b!2586608 (= c!417052 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun bm!167029 () Bool)

(assert (=> bm!167029 (= call!167034 (validRegex!3279 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))

(declare-fun b!2586609 () Bool)

(assert (=> b!2586609 (= e!1631988 e!1631989)))

(assert (=> b!2586609 (= c!417053 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2586610 () Bool)

(declare-fun e!1631993 () Bool)

(assert (=> b!2586610 (= e!1631993 call!167033)))

(declare-fun b!2586611 () Bool)

(assert (=> b!2586611 (= e!1631989 e!1631993)))

(declare-fun res!1087809 () Bool)

(assert (=> b!2586611 (= res!1087809 (not (nullable!2570 (reg!7994 (regex!4521 rule!570)))))))

(assert (=> b!2586611 (=> (not res!1087809) (not e!1631993))))

(assert (= (and d!732498 (not res!1087811)) b!2586609))

(assert (= (and b!2586609 c!417053) b!2586611))

(assert (= (and b!2586609 (not c!417053)) b!2586608))

(assert (= (and b!2586611 res!1087809) b!2586610))

(assert (= (and b!2586608 c!417052) b!2586605))

(assert (= (and b!2586608 (not c!417052)) b!2586607))

(assert (= (and b!2586605 res!1087807) b!2586603))

(assert (= (and b!2586607 (not res!1087808)) b!2586604))

(assert (= (and b!2586604 res!1087810) b!2586606))

(assert (= (or b!2586605 b!2586604) bm!167027))

(assert (= (or b!2586603 b!2586606) bm!167029))

(assert (= (or b!2586610 bm!167027) bm!167028))

(declare-fun m!2922855 () Bool)

(assert (=> bm!167028 m!2922855))

(declare-fun m!2922857 () Bool)

(assert (=> bm!167029 m!2922857))

(declare-fun m!2922859 () Bool)

(assert (=> b!2586611 m!2922859))

(assert (=> d!732132 d!732498))

(assert (=> d!732134 d!732132))

(declare-fun d!732500 () Bool)

(assert (=> d!732500 (ruleValid!1527 thiss!28211 rule!570)))

(assert (=> d!732500 true))

(declare-fun _$65!1211 () Unit!43600)

(assert (=> d!732500 (= (choose!15239 thiss!28211 rule!570 rules!4580) _$65!1211)))

(declare-fun bs!471768 () Bool)

(assert (= bs!471768 d!732500))

(assert (=> bs!471768 m!2921731))

(assert (=> d!732134 d!732500))

(assert (=> d!732134 d!732116))

(declare-fun d!732502 () Bool)

(assert (=> d!732502 (= (isEmpty!17110 lt!909246) ((_ is Nil!29765) lt!909246))))

(assert (=> d!732158 d!732502))

(assert (=> d!732158 d!732498))

(declare-fun b!2586620 () Bool)

(declare-fun e!1631999 () List!29865)

(assert (=> b!2586620 (= e!1631999 suffix!1684)))

(declare-fun d!732504 () Bool)

(declare-fun e!1632000 () Bool)

(assert (=> d!732504 e!1632000))

(declare-fun res!1087812 () Bool)

(assert (=> d!732504 (=> (not res!1087812) (not e!1632000))))

(declare-fun lt!909666 () List!29865)

(assert (=> d!732504 (= res!1087812 (= (content!4114 lt!909666) ((_ map or) (content!4114 (t!212230 lt!909247)) (content!4114 suffix!1684))))))

(assert (=> d!732504 (= lt!909666 e!1631999)))

(declare-fun c!417058 () Bool)

(assert (=> d!732504 (= c!417058 ((_ is Nil!29765) (t!212230 lt!909247)))))

(assert (=> d!732504 (= (++!7311 (t!212230 lt!909247) suffix!1684) lt!909666)))

(declare-fun b!2586621 () Bool)

(assert (=> b!2586621 (= e!1631999 (Cons!29765 (h!35185 (t!212230 lt!909247)) (++!7311 (t!212230 (t!212230 lt!909247)) suffix!1684)))))

(declare-fun b!2586622 () Bool)

(declare-fun res!1087813 () Bool)

(assert (=> b!2586622 (=> (not res!1087813) (not e!1632000))))

(assert (=> b!2586622 (= res!1087813 (= (size!23078 lt!909666) (+ (size!23078 (t!212230 lt!909247)) (size!23078 suffix!1684))))))

(declare-fun b!2586623 () Bool)

(assert (=> b!2586623 (= e!1632000 (or (not (= suffix!1684 Nil!29765)) (= lt!909666 (t!212230 lt!909247))))))

(assert (= (and d!732504 c!417058) b!2586620))

(assert (= (and d!732504 (not c!417058)) b!2586621))

(assert (= (and d!732504 res!1087812) b!2586622))

(assert (= (and b!2586622 res!1087813) b!2586623))

(declare-fun m!2922861 () Bool)

(assert (=> d!732504 m!2922861))

(declare-fun m!2922863 () Bool)

(assert (=> d!732504 m!2922863))

(assert (=> d!732504 m!2921949))

(declare-fun m!2922865 () Bool)

(assert (=> b!2586621 m!2922865))

(declare-fun m!2922867 () Bool)

(assert (=> b!2586622 m!2922867))

(assert (=> b!2586622 m!2922421))

(assert (=> b!2586622 m!2921957))

(assert (=> b!2585811 d!732504))

(declare-fun d!732506 () Bool)

(declare-fun c!417061 () Bool)

(assert (=> d!732506 (= c!417061 ((_ is Nil!29766) rules!4580))))

(declare-fun e!1632003 () (InoxSet Rule!8842))

(assert (=> d!732506 (= (content!4113 rules!4580) e!1632003)))

(declare-fun b!2586628 () Bool)

(assert (=> b!2586628 (= e!1632003 ((as const (Array Rule!8842 Bool)) false))))

(declare-fun b!2586629 () Bool)

(assert (=> b!2586629 (= e!1632003 ((_ map or) (store ((as const (Array Rule!8842 Bool)) false) (h!35186 rules!4580) true) (content!4113 (t!212231 rules!4580))))))

(assert (= (and d!732506 c!417061) b!2586628))

(assert (= (and d!732506 (not c!417061)) b!2586629))

(declare-fun m!2922869 () Bool)

(assert (=> b!2586629 m!2922869))

(declare-fun m!2922871 () Bool)

(assert (=> b!2586629 m!2922871))

(assert (=> d!732116 d!732506))

(declare-fun d!732508 () Bool)

(assert (=> d!732508 (= (isEmpty!17110 (tail!4135 lt!909247)) ((_ is Nil!29765) (tail!4135 lt!909247)))))

(assert (=> b!2585783 d!732508))

(assert (=> b!2585783 d!732312))

(declare-fun d!732510 () Bool)

(assert (=> d!732510 (= (list!11253 lt!909295) (list!11254 (c!416819 lt!909295)))))

(declare-fun bs!471769 () Bool)

(assert (= bs!471769 d!732510))

(declare-fun m!2922873 () Bool)

(assert (=> bs!471769 m!2922873))

(assert (=> d!732114 d!732510))

(declare-fun d!732512 () Bool)

(declare-fun c!417064 () Bool)

(assert (=> d!732512 (= c!417064 ((_ is Nil!29765) lt!909327))))

(declare-fun e!1632006 () (InoxSet C!15488))

(assert (=> d!732512 (= (content!4114 lt!909327) e!1632006)))

(declare-fun b!2586634 () Bool)

(assert (=> b!2586634 (= e!1632006 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2586635 () Bool)

(assert (=> b!2586635 (= e!1632006 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 lt!909327) true) (content!4114 (t!212230 lt!909327))))))

(assert (= (and d!732512 c!417064) b!2586634))

(assert (= (and d!732512 (not c!417064)) b!2586635))

(declare-fun m!2922875 () Bool)

(assert (=> b!2586635 m!2922875))

(declare-fun m!2922877 () Bool)

(assert (=> b!2586635 m!2922877))

(assert (=> d!732136 d!732512))

(declare-fun d!732514 () Bool)

(declare-fun c!417065 () Bool)

(assert (=> d!732514 (= c!417065 ((_ is Nil!29765) lt!909247))))

(declare-fun e!1632011 () (InoxSet C!15488))

(assert (=> d!732514 (= (content!4114 lt!909247) e!1632011)))

(declare-fun b!2586640 () Bool)

(assert (=> b!2586640 (= e!1632011 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2586641 () Bool)

(assert (=> b!2586641 (= e!1632011 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 lt!909247) true) (content!4114 (t!212230 lt!909247))))))

(assert (= (and d!732514 c!417065) b!2586640))

(assert (= (and d!732514 (not c!417065)) b!2586641))

(declare-fun m!2922879 () Bool)

(assert (=> b!2586641 m!2922879))

(assert (=> b!2586641 m!2922863))

(assert (=> d!732136 d!732514))

(declare-fun d!732516 () Bool)

(declare-fun c!417066 () Bool)

(assert (=> d!732516 (= c!417066 ((_ is Nil!29765) suffix!1684))))

(declare-fun e!1632012 () (InoxSet C!15488))

(assert (=> d!732516 (= (content!4114 suffix!1684) e!1632012)))

(declare-fun b!2586642 () Bool)

(assert (=> b!2586642 (= e!1632012 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2586643 () Bool)

(assert (=> b!2586643 (= e!1632012 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 suffix!1684) true) (content!4114 (t!212230 suffix!1684))))))

(assert (= (and d!732516 c!417066) b!2586642))

(assert (= (and d!732516 (not c!417066)) b!2586643))

(declare-fun m!2922881 () Bool)

(assert (=> b!2586643 m!2922881))

(declare-fun m!2922883 () Bool)

(assert (=> b!2586643 m!2922883))

(assert (=> d!732136 d!732516))

(assert (=> bm!166947 d!732502))

(declare-fun d!732518 () Bool)

(declare-fun e!1632015 () Bool)

(assert (=> d!732518 e!1632015))

(declare-fun res!1087820 () Bool)

(assert (=> d!732518 (=> (not res!1087820) (not e!1632015))))

(declare-fun lt!909669 () BalanceConc!18188)

(assert (=> d!732518 (= res!1087820 (= (list!11253 lt!909669) lt!909246))))

(declare-fun fromList!562 (List!29865) Conc!9287)

(assert (=> d!732518 (= lt!909669 (BalanceConc!18189 (fromList!562 lt!909246)))))

(assert (=> d!732518 (= (fromListB!1430 lt!909246) lt!909669)))

(declare-fun b!2586646 () Bool)

(assert (=> b!2586646 (= e!1632015 (isBalanced!2834 (fromList!562 lt!909246)))))

(assert (= (and d!732518 res!1087820) b!2586646))

(declare-fun m!2922885 () Bool)

(assert (=> d!732518 m!2922885))

(declare-fun m!2922887 () Bool)

(assert (=> d!732518 m!2922887))

(assert (=> b!2586646 m!2922887))

(assert (=> b!2586646 m!2922887))

(declare-fun m!2922889 () Bool)

(assert (=> b!2586646 m!2922889))

(assert (=> d!732110 d!732518))

(declare-fun bs!471770 () Bool)

(declare-fun d!732520 () Bool)

(assert (= bs!471770 (and d!732520 d!732414)))

(declare-fun lambda!95836 () Int)

(assert (=> bs!471770 (= (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570))) (= lambda!95836 lambda!95828))))

(declare-fun bs!471771 () Bool)

(assert (= bs!471771 (and d!732520 d!732476)))

(assert (=> bs!471771 (= (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (= lambda!95836 lambda!95831))))

(declare-fun bs!471772 () Bool)

(assert (= bs!471772 (and d!732520 d!732484)))

(assert (=> bs!471772 (= (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (= lambda!95836 lambda!95832))))

(assert (=> d!732520 true))

(assert (=> d!732520 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (dynLambda!12593 order!15855 lambda!95836))))

(assert (=> d!732520 (= (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (Forall2!767 lambda!95836))))

(declare-fun bs!471773 () Bool)

(assert (= bs!471773 d!732520))

(declare-fun m!2922891 () Bool)

(assert (=> bs!471773 m!2922891))

(assert (=> b!2585836 d!732520))

(declare-fun d!732522 () Bool)

(declare-fun lt!909670 () Bool)

(assert (=> d!732522 (= lt!909670 (select (content!4113 (t!212231 rules!4580)) rule!570))))

(declare-fun e!1632016 () Bool)

(assert (=> d!732522 (= lt!909670 e!1632016)))

(declare-fun res!1087821 () Bool)

(assert (=> d!732522 (=> (not res!1087821) (not e!1632016))))

(assert (=> d!732522 (= res!1087821 ((_ is Cons!29766) (t!212231 rules!4580)))))

(assert (=> d!732522 (= (contains!5325 (t!212231 rules!4580) rule!570) lt!909670)))

(declare-fun b!2586647 () Bool)

(declare-fun e!1632017 () Bool)

(assert (=> b!2586647 (= e!1632016 e!1632017)))

(declare-fun res!1087822 () Bool)

(assert (=> b!2586647 (=> res!1087822 e!1632017)))

(assert (=> b!2586647 (= res!1087822 (= (h!35186 (t!212231 rules!4580)) rule!570))))

(declare-fun b!2586648 () Bool)

(assert (=> b!2586648 (= e!1632017 (contains!5325 (t!212231 (t!212231 rules!4580)) rule!570))))

(assert (= (and d!732522 res!1087821) b!2586647))

(assert (= (and b!2586647 (not res!1087822)) b!2586648))

(assert (=> d!732522 m!2922871))

(declare-fun m!2922893 () Bool)

(assert (=> d!732522 m!2922893))

(declare-fun m!2922895 () Bool)

(assert (=> b!2586648 m!2922895))

(assert (=> b!2585720 d!732522))

(assert (=> b!2585787 d!732508))

(assert (=> b!2585787 d!732312))

(assert (=> b!2585683 d!732232))

(declare-fun d!732524 () Bool)

(declare-fun lt!909671 () Int)

(assert (=> d!732524 (>= lt!909671 0)))

(declare-fun e!1632018 () Int)

(assert (=> d!732524 (= lt!909671 e!1632018)))

(declare-fun c!417068 () Bool)

(assert (=> d!732524 (= c!417068 ((_ is Nil!29765) (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))

(assert (=> d!732524 (= (size!23078 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))) lt!909671)))

(declare-fun b!2586649 () Bool)

(assert (=> b!2586649 (= e!1632018 0)))

(declare-fun b!2586650 () Bool)

(assert (=> b!2586650 (= e!1632018 (+ 1 (size!23078 (t!212230 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(assert (= (and d!732524 c!417068) b!2586649))

(assert (= (and d!732524 (not c!417068)) b!2586650))

(declare-fun m!2922897 () Bool)

(assert (=> b!2586650 m!2922897))

(assert (=> b!2585683 d!732524))

(declare-fun d!732526 () Bool)

(assert (=> d!732526 (= (inv!40193 (tag!5011 (h!35186 (t!212231 rs!798)))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 (t!212231 rs!798))))) 2) 0))))

(assert (=> b!2585999 d!732526))

(declare-fun d!732528 () Bool)

(declare-fun res!1087823 () Bool)

(declare-fun e!1632019 () Bool)

(assert (=> d!732528 (=> (not res!1087823) (not e!1632019))))

(assert (=> d!732528 (= res!1087823 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))))))

(assert (=> d!732528 (= (inv!40196 (transformation!4521 (h!35186 (t!212231 rs!798)))) e!1632019)))

(declare-fun b!2586651 () Bool)

(assert (=> b!2586651 (= e!1632019 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))))))

(assert (= (and d!732528 res!1087823) b!2586651))

(declare-fun m!2922899 () Bool)

(assert (=> d!732528 m!2922899))

(declare-fun m!2922901 () Bool)

(assert (=> b!2586651 m!2922901))

(assert (=> b!2585999 d!732528))

(declare-fun d!732530 () Bool)

(assert (=> d!732530 (= (isDefined!4756 lt!909381) (not (isEmpty!17111 lt!909381)))))

(declare-fun bs!471774 () Bool)

(assert (= bs!471774 d!732530))

(assert (=> bs!471774 m!2922087))

(assert (=> b!2585915 d!732530))

(assert (=> d!732128 d!732456))

(assert (=> d!732128 d!732498))

(declare-fun b!2586652 () Bool)

(declare-fun e!1632024 () Bool)

(declare-fun call!167053 () Bool)

(assert (=> b!2586652 (= e!1632024 call!167053)))

(declare-fun d!732532 () Bool)

(declare-fun res!1087828 () Bool)

(declare-fun e!1632020 () Bool)

(assert (=> d!732532 (=> res!1087828 e!1632020)))

(assert (=> d!732532 (= res!1087828 ((_ is ElementMatch!7665) (h!35187 (map!6607 rs!798 lambda!95783))))))

(assert (=> d!732532 (= (validRegex!3279 (h!35187 (map!6607 rs!798 lambda!95783))) e!1632020)))

(declare-fun bm!167046 () Bool)

(declare-fun call!167051 () Bool)

(declare-fun call!167052 () Bool)

(assert (=> bm!167046 (= call!167051 call!167052)))

(declare-fun b!2586653 () Bool)

(declare-fun e!1632022 () Bool)

(declare-fun e!1632026 () Bool)

(assert (=> b!2586653 (= e!1632022 e!1632026)))

(declare-fun res!1087827 () Bool)

(assert (=> b!2586653 (=> (not res!1087827) (not e!1632026))))

(assert (=> b!2586653 (= res!1087827 call!167051)))

(declare-fun c!417070 () Bool)

(declare-fun bm!167047 () Bool)

(declare-fun c!417069 () Bool)

(assert (=> bm!167047 (= call!167052 (validRegex!3279 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))

(declare-fun b!2586654 () Bool)

(declare-fun res!1087824 () Bool)

(assert (=> b!2586654 (=> (not res!1087824) (not e!1632024))))

(assert (=> b!2586654 (= res!1087824 call!167051)))

(declare-fun e!1632023 () Bool)

(assert (=> b!2586654 (= e!1632023 e!1632024)))

(declare-fun b!2586655 () Bool)

(assert (=> b!2586655 (= e!1632026 call!167053)))

(declare-fun b!2586656 () Bool)

(declare-fun res!1087825 () Bool)

(assert (=> b!2586656 (=> res!1087825 e!1632022)))

(assert (=> b!2586656 (= res!1087825 (not ((_ is Concat!12409) (h!35187 (map!6607 rs!798 lambda!95783)))))))

(assert (=> b!2586656 (= e!1632023 e!1632022)))

(declare-fun b!2586657 () Bool)

(declare-fun e!1632021 () Bool)

(assert (=> b!2586657 (= e!1632021 e!1632023)))

(assert (=> b!2586657 (= c!417069 ((_ is Union!7665) (h!35187 (map!6607 rs!798 lambda!95783))))))

(declare-fun bm!167048 () Bool)

(assert (=> bm!167048 (= call!167053 (validRegex!3279 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))

(declare-fun b!2586658 () Bool)

(assert (=> b!2586658 (= e!1632020 e!1632021)))

(assert (=> b!2586658 (= c!417070 ((_ is Star!7665) (h!35187 (map!6607 rs!798 lambda!95783))))))

(declare-fun b!2586659 () Bool)

(declare-fun e!1632025 () Bool)

(assert (=> b!2586659 (= e!1632025 call!167052)))

(declare-fun b!2586660 () Bool)

(assert (=> b!2586660 (= e!1632021 e!1632025)))

(declare-fun res!1087826 () Bool)

(assert (=> b!2586660 (= res!1087826 (not (nullable!2570 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))))))))

(assert (=> b!2586660 (=> (not res!1087826) (not e!1632025))))

(assert (= (and d!732532 (not res!1087828)) b!2586658))

(assert (= (and b!2586658 c!417070) b!2586660))

(assert (= (and b!2586658 (not c!417070)) b!2586657))

(assert (= (and b!2586660 res!1087826) b!2586659))

(assert (= (and b!2586657 c!417069) b!2586654))

(assert (= (and b!2586657 (not c!417069)) b!2586656))

(assert (= (and b!2586654 res!1087824) b!2586652))

(assert (= (and b!2586656 (not res!1087825)) b!2586653))

(assert (= (and b!2586653 res!1087827) b!2586655))

(assert (= (or b!2586654 b!2586653) bm!167046))

(assert (= (or b!2586652 b!2586655) bm!167048))

(assert (= (or b!2586659 bm!167046) bm!167047))

(declare-fun m!2922903 () Bool)

(assert (=> bm!167047 m!2922903))

(declare-fun m!2922905 () Bool)

(assert (=> bm!167048 m!2922905))

(declare-fun m!2922907 () Bool)

(assert (=> b!2586660 m!2922907))

(assert (=> bs!471700 d!732532))

(declare-fun bs!471775 () Bool)

(declare-fun d!732534 () Bool)

(assert (= bs!471775 (and d!732534 d!732218)))

(declare-fun lambda!95837 () Int)

(assert (=> bs!471775 (= (and (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95837 lambda!95807))))

(declare-fun bs!471776 () Bool)

(assert (= bs!471776 (and d!732534 d!732286)))

(assert (=> bs!471776 (= (and (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (= lambda!95837 lambda!95813))))

(declare-fun bs!471777 () Bool)

(assert (= bs!471777 (and d!732534 d!732492)))

(assert (=> bs!471777 (= (and (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95837 lambda!95835))))

(assert (=> d!732534 true))

(assert (=> d!732534 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (rule!6887 token!562)))) (dynLambda!12589 order!15843 lambda!95837))))

(assert (=> d!732534 true))

(assert (=> d!732534 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (dynLambda!12589 order!15843 lambda!95837))))

(assert (=> d!732534 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (Forall!1167 lambda!95837))))

(declare-fun bs!471778 () Bool)

(assert (= bs!471778 d!732534))

(declare-fun m!2922909 () Bool)

(assert (=> bs!471778 m!2922909))

(assert (=> d!732120 d!732534))

(assert (=> b!2585846 d!732442))

(declare-fun b!2586675 () Bool)

(declare-fun e!1632035 () List!29865)

(assert (=> b!2586675 (= e!1632035 (_2!17401 (get!9380 lt!909381)))))

(declare-fun d!732536 () Bool)

(declare-fun e!1632036 () Bool)

(assert (=> d!732536 e!1632036))

(declare-fun res!1087831 () Bool)

(assert (=> d!732536 (=> (not res!1087831) (not e!1632036))))

(declare-fun lt!909700 () List!29865)

(assert (=> d!732536 (= res!1087831 (= (content!4114 lt!909700) ((_ map or) (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (content!4114 (_2!17401 (get!9380 lt!909381))))))))

(assert (=> d!732536 (= lt!909700 e!1632035)))

(declare-fun c!417077 () Bool)

(assert (=> d!732536 (= c!417077 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!732536 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))) (_2!17401 (get!9380 lt!909381))) lt!909700)))

(declare-fun b!2586676 () Bool)

(assert (=> b!2586676 (= e!1632035 (Cons!29765 (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (_2!17401 (get!9380 lt!909381)))))))

(declare-fun b!2586677 () Bool)

(declare-fun res!1087832 () Bool)

(assert (=> b!2586677 (=> (not res!1087832) (not e!1632036))))

(assert (=> b!2586677 (= res!1087832 (= (size!23078 lt!909700) (+ (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (size!23078 (_2!17401 (get!9380 lt!909381))))))))

(declare-fun b!2586678 () Bool)

(assert (=> b!2586678 (= e!1632036 (or (not (= (_2!17401 (get!9380 lt!909381)) Nil!29765)) (= lt!909700 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(assert (= (and d!732536 c!417077) b!2586675))

(assert (= (and d!732536 (not c!417077)) b!2586676))

(assert (= (and d!732536 res!1087831) b!2586677))

(assert (= (and b!2586677 res!1087832) b!2586678))

(declare-fun m!2922911 () Bool)

(assert (=> d!732536 m!2922911))

(assert (=> d!732536 m!2922079))

(declare-fun m!2922913 () Bool)

(assert (=> d!732536 m!2922913))

(declare-fun m!2922915 () Bool)

(assert (=> d!732536 m!2922915))

(declare-fun m!2922917 () Bool)

(assert (=> b!2586676 m!2922917))

(declare-fun m!2922919 () Bool)

(assert (=> b!2586677 m!2922919))

(assert (=> b!2586677 m!2922079))

(declare-fun m!2922921 () Bool)

(assert (=> b!2586677 m!2922921))

(assert (=> b!2586677 m!2922101))

(assert (=> b!2585917 d!732536))

(assert (=> b!2585917 d!732418))

(assert (=> b!2585917 d!732420))

(assert (=> b!2585917 d!732256))

(declare-fun bs!471779 () Bool)

(declare-fun d!732538 () Bool)

(assert (= bs!471779 (and d!732538 d!732218)))

(declare-fun lambda!95838 () Int)

(assert (=> bs!471779 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95838 lambda!95807))))

(declare-fun bs!471780 () Bool)

(assert (= bs!471780 (and d!732538 d!732286)))

(assert (=> bs!471780 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (= lambda!95838 lambda!95813))))

(declare-fun bs!471781 () Bool)

(assert (= bs!471781 (and d!732538 d!732492)))

(assert (=> bs!471781 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95838 lambda!95835))))

(declare-fun bs!471782 () Bool)

(assert (= bs!471782 (and d!732538 d!732534)))

(assert (=> bs!471782 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 token!562))))) (= lambda!95838 lambda!95837))))

(assert (=> d!732538 true))

(assert (=> d!732538 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (h!35186 rs!798)))) (dynLambda!12589 order!15843 lambda!95838))))

(assert (=> d!732538 true))

(assert (=> d!732538 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (dynLambda!12589 order!15843 lambda!95838))))

(assert (=> d!732538 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (Forall!1167 lambda!95838))))

(declare-fun bs!471783 () Bool)

(assert (= bs!471783 d!732538))

(declare-fun m!2922965 () Bool)

(assert (=> bs!471783 m!2922965))

(assert (=> d!732126 d!732538))

(declare-fun d!732540 () Bool)

(declare-fun lt!909701 () Int)

(assert (=> d!732540 (>= lt!909701 0)))

(declare-fun e!1632037 () Int)

(assert (=> d!732540 (= lt!909701 e!1632037)))

(declare-fun c!417078 () Bool)

(assert (=> d!732540 (= c!417078 ((_ is Nil!29765) (t!212230 lt!909246)))))

(assert (=> d!732540 (= (size!23078 (t!212230 lt!909246)) lt!909701)))

(declare-fun b!2586679 () Bool)

(assert (=> b!2586679 (= e!1632037 0)))

(declare-fun b!2586680 () Bool)

(assert (=> b!2586680 (= e!1632037 (+ 1 (size!23078 (t!212230 (t!212230 lt!909246)))))))

(assert (= (and d!732540 c!417078) b!2586679))

(assert (= (and d!732540 (not c!417078)) b!2586680))

(declare-fun m!2922973 () Bool)

(assert (=> b!2586680 m!2922973))

(assert (=> b!2585707 d!732540))

(declare-fun b!2586682 () Bool)

(declare-fun e!1632038 () Bool)

(declare-fun tp!820985 () Bool)

(declare-fun tp!820981 () Bool)

(assert (=> b!2586682 (= e!1632038 (and tp!820985 tp!820981))))

(declare-fun b!2586684 () Bool)

(declare-fun tp!820983 () Bool)

(declare-fun tp!820984 () Bool)

(assert (=> b!2586684 (= e!1632038 (and tp!820983 tp!820984))))

(declare-fun b!2586681 () Bool)

(assert (=> b!2586681 (= e!1632038 tp_is_empty!13225)))

(declare-fun b!2586683 () Bool)

(declare-fun tp!820982 () Bool)

(assert (=> b!2586683 (= e!1632038 tp!820982)))

(assert (=> b!2586002 (= tp!820916 e!1632038)))

(assert (= (and b!2586002 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 (h!35186 rules!4580))))) b!2586681))

(assert (= (and b!2586002 ((_ is Concat!12409) (regOne!15842 (regex!4521 (h!35186 rules!4580))))) b!2586682))

(assert (= (and b!2586002 ((_ is Star!7665) (regOne!15842 (regex!4521 (h!35186 rules!4580))))) b!2586683))

(assert (= (and b!2586002 ((_ is Union!7665) (regOne!15842 (regex!4521 (h!35186 rules!4580))))) b!2586684))

(declare-fun b!2586686 () Bool)

(declare-fun e!1632039 () Bool)

(declare-fun tp!820990 () Bool)

(declare-fun tp!820986 () Bool)

(assert (=> b!2586686 (= e!1632039 (and tp!820990 tp!820986))))

(declare-fun b!2586688 () Bool)

(declare-fun tp!820988 () Bool)

(declare-fun tp!820989 () Bool)

(assert (=> b!2586688 (= e!1632039 (and tp!820988 tp!820989))))

(declare-fun b!2586685 () Bool)

(assert (=> b!2586685 (= e!1632039 tp_is_empty!13225)))

(declare-fun b!2586687 () Bool)

(declare-fun tp!820987 () Bool)

(assert (=> b!2586687 (= e!1632039 tp!820987)))

(assert (=> b!2586002 (= tp!820912 e!1632039)))

(assert (= (and b!2586002 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 (h!35186 rules!4580))))) b!2586685))

(assert (= (and b!2586002 ((_ is Concat!12409) (regTwo!15842 (regex!4521 (h!35186 rules!4580))))) b!2586686))

(assert (= (and b!2586002 ((_ is Star!7665) (regTwo!15842 (regex!4521 (h!35186 rules!4580))))) b!2586687))

(assert (= (and b!2586002 ((_ is Union!7665) (regTwo!15842 (regex!4521 (h!35186 rules!4580))))) b!2586688))

(declare-fun b!2586690 () Bool)

(declare-fun e!1632040 () Bool)

(declare-fun tp!820995 () Bool)

(declare-fun tp!820991 () Bool)

(assert (=> b!2586690 (= e!1632040 (and tp!820995 tp!820991))))

(declare-fun b!2586692 () Bool)

(declare-fun tp!820993 () Bool)

(declare-fun tp!820994 () Bool)

(assert (=> b!2586692 (= e!1632040 (and tp!820993 tp!820994))))

(declare-fun b!2586689 () Bool)

(assert (=> b!2586689 (= e!1632040 tp_is_empty!13225)))

(declare-fun b!2586691 () Bool)

(declare-fun tp!820992 () Bool)

(assert (=> b!2586691 (= e!1632040 tp!820992)))

(assert (=> b!2586012 (= tp!820919 e!1632040)))

(assert (= (and b!2586012 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 (h!35186 rs!798))))) b!2586689))

(assert (= (and b!2586012 ((_ is Concat!12409) (reg!7994 (regex!4521 (h!35186 rs!798))))) b!2586690))

(assert (= (and b!2586012 ((_ is Star!7665) (reg!7994 (regex!4521 (h!35186 rs!798))))) b!2586691))

(assert (= (and b!2586012 ((_ is Union!7665) (reg!7994 (regex!4521 (h!35186 rs!798))))) b!2586692))

(declare-fun b!2586694 () Bool)

(declare-fun e!1632041 () Bool)

(declare-fun tp!821000 () Bool)

(declare-fun tp!820996 () Bool)

(assert (=> b!2586694 (= e!1632041 (and tp!821000 tp!820996))))

(declare-fun b!2586696 () Bool)

(declare-fun tp!820998 () Bool)

(declare-fun tp!820999 () Bool)

(assert (=> b!2586696 (= e!1632041 (and tp!820998 tp!820999))))

(declare-fun b!2586693 () Bool)

(assert (=> b!2586693 (= e!1632041 tp_is_empty!13225)))

(declare-fun b!2586695 () Bool)

(declare-fun tp!820997 () Bool)

(assert (=> b!2586695 (= e!1632041 tp!820997)))

(assert (=> b!2586003 (= tp!820913 e!1632041)))

(assert (= (and b!2586003 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 (h!35186 rules!4580))))) b!2586693))

(assert (= (and b!2586003 ((_ is Concat!12409) (reg!7994 (regex!4521 (h!35186 rules!4580))))) b!2586694))

(assert (= (and b!2586003 ((_ is Star!7665) (reg!7994 (regex!4521 (h!35186 rules!4580))))) b!2586695))

(assert (= (and b!2586003 ((_ is Union!7665) (reg!7994 (regex!4521 (h!35186 rules!4580))))) b!2586696))

(declare-fun b!2586698 () Bool)

(declare-fun e!1632042 () Bool)

(declare-fun tp!821005 () Bool)

(declare-fun tp!821001 () Bool)

(assert (=> b!2586698 (= e!1632042 (and tp!821005 tp!821001))))

(declare-fun b!2586700 () Bool)

(declare-fun tp!821003 () Bool)

(declare-fun tp!821004 () Bool)

(assert (=> b!2586700 (= e!1632042 (and tp!821003 tp!821004))))

(declare-fun b!2586697 () Bool)

(assert (=> b!2586697 (= e!1632042 tp_is_empty!13225)))

(declare-fun b!2586699 () Bool)

(declare-fun tp!821002 () Bool)

(assert (=> b!2586699 (= e!1632042 tp!821002)))

(assert (=> b!2586013 (= tp!820920 e!1632042)))

(assert (= (and b!2586013 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 (h!35186 rs!798))))) b!2586697))

(assert (= (and b!2586013 ((_ is Concat!12409) (regOne!15843 (regex!4521 (h!35186 rs!798))))) b!2586698))

(assert (= (and b!2586013 ((_ is Star!7665) (regOne!15843 (regex!4521 (h!35186 rs!798))))) b!2586699))

(assert (= (and b!2586013 ((_ is Union!7665) (regOne!15843 (regex!4521 (h!35186 rs!798))))) b!2586700))

(declare-fun b!2586702 () Bool)

(declare-fun e!1632043 () Bool)

(declare-fun tp!821010 () Bool)

(declare-fun tp!821006 () Bool)

(assert (=> b!2586702 (= e!1632043 (and tp!821010 tp!821006))))

(declare-fun b!2586704 () Bool)

(declare-fun tp!821008 () Bool)

(declare-fun tp!821009 () Bool)

(assert (=> b!2586704 (= e!1632043 (and tp!821008 tp!821009))))

(declare-fun b!2586701 () Bool)

(assert (=> b!2586701 (= e!1632043 tp_is_empty!13225)))

(declare-fun b!2586703 () Bool)

(declare-fun tp!821007 () Bool)

(assert (=> b!2586703 (= e!1632043 tp!821007)))

(assert (=> b!2586013 (= tp!820921 e!1632043)))

(assert (= (and b!2586013 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 (h!35186 rs!798))))) b!2586701))

(assert (= (and b!2586013 ((_ is Concat!12409) (regTwo!15843 (regex!4521 (h!35186 rs!798))))) b!2586702))

(assert (= (and b!2586013 ((_ is Star!7665) (regTwo!15843 (regex!4521 (h!35186 rs!798))))) b!2586703))

(assert (= (and b!2586013 ((_ is Union!7665) (regTwo!15843 (regex!4521 (h!35186 rs!798))))) b!2586704))

(declare-fun b!2586706 () Bool)

(declare-fun e!1632044 () Bool)

(declare-fun tp!821015 () Bool)

(declare-fun tp!821011 () Bool)

(assert (=> b!2586706 (= e!1632044 (and tp!821015 tp!821011))))

(declare-fun b!2586708 () Bool)

(declare-fun tp!821013 () Bool)

(declare-fun tp!821014 () Bool)

(assert (=> b!2586708 (= e!1632044 (and tp!821013 tp!821014))))

(declare-fun b!2586705 () Bool)

(assert (=> b!2586705 (= e!1632044 tp_is_empty!13225)))

(declare-fun b!2586707 () Bool)

(declare-fun tp!821012 () Bool)

(assert (=> b!2586707 (= e!1632044 tp!821012)))

(assert (=> b!2586004 (= tp!820914 e!1632044)))

(assert (= (and b!2586004 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 (h!35186 rules!4580))))) b!2586705))

(assert (= (and b!2586004 ((_ is Concat!12409) (regOne!15843 (regex!4521 (h!35186 rules!4580))))) b!2586706))

(assert (= (and b!2586004 ((_ is Star!7665) (regOne!15843 (regex!4521 (h!35186 rules!4580))))) b!2586707))

(assert (= (and b!2586004 ((_ is Union!7665) (regOne!15843 (regex!4521 (h!35186 rules!4580))))) b!2586708))

(declare-fun b!2586710 () Bool)

(declare-fun e!1632045 () Bool)

(declare-fun tp!821020 () Bool)

(declare-fun tp!821016 () Bool)

(assert (=> b!2586710 (= e!1632045 (and tp!821020 tp!821016))))

(declare-fun b!2586712 () Bool)

(declare-fun tp!821018 () Bool)

(declare-fun tp!821019 () Bool)

(assert (=> b!2586712 (= e!1632045 (and tp!821018 tp!821019))))

(declare-fun b!2586709 () Bool)

(assert (=> b!2586709 (= e!1632045 tp_is_empty!13225)))

(declare-fun b!2586711 () Bool)

(declare-fun tp!821017 () Bool)

(assert (=> b!2586711 (= e!1632045 tp!821017)))

(assert (=> b!2586004 (= tp!820915 e!1632045)))

(assert (= (and b!2586004 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 (h!35186 rules!4580))))) b!2586709))

(assert (= (and b!2586004 ((_ is Concat!12409) (regTwo!15843 (regex!4521 (h!35186 rules!4580))))) b!2586710))

(assert (= (and b!2586004 ((_ is Star!7665) (regTwo!15843 (regex!4521 (h!35186 rules!4580))))) b!2586711))

(assert (= (and b!2586004 ((_ is Union!7665) (regTwo!15843 (regex!4521 (h!35186 rules!4580))))) b!2586712))

(declare-fun b!2586714 () Bool)

(declare-fun e!1632046 () Bool)

(declare-fun tp!821025 () Bool)

(declare-fun tp!821021 () Bool)

(assert (=> b!2586714 (= e!1632046 (and tp!821025 tp!821021))))

(declare-fun b!2586716 () Bool)

(declare-fun tp!821023 () Bool)

(declare-fun tp!821024 () Bool)

(assert (=> b!2586716 (= e!1632046 (and tp!821023 tp!821024))))

(declare-fun b!2586713 () Bool)

(assert (=> b!2586713 (= e!1632046 tp_is_empty!13225)))

(declare-fun b!2586715 () Bool)

(declare-fun tp!821022 () Bool)

(assert (=> b!2586715 (= e!1632046 tp!821022)))

(assert (=> b!2585995 (= tp!820907 e!1632046)))

(assert (= (and b!2585995 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 (rule!6887 token!562))))) b!2586713))

(assert (= (and b!2585995 ((_ is Concat!12409) (regOne!15842 (regex!4521 (rule!6887 token!562))))) b!2586714))

(assert (= (and b!2585995 ((_ is Star!7665) (regOne!15842 (regex!4521 (rule!6887 token!562))))) b!2586715))

(assert (= (and b!2585995 ((_ is Union!7665) (regOne!15842 (regex!4521 (rule!6887 token!562))))) b!2586716))

(declare-fun b!2586718 () Bool)

(declare-fun e!1632047 () Bool)

(declare-fun tp!821030 () Bool)

(declare-fun tp!821026 () Bool)

(assert (=> b!2586718 (= e!1632047 (and tp!821030 tp!821026))))

(declare-fun b!2586720 () Bool)

(declare-fun tp!821028 () Bool)

(declare-fun tp!821029 () Bool)

(assert (=> b!2586720 (= e!1632047 (and tp!821028 tp!821029))))

(declare-fun b!2586717 () Bool)

(assert (=> b!2586717 (= e!1632047 tp_is_empty!13225)))

(declare-fun b!2586719 () Bool)

(declare-fun tp!821027 () Bool)

(assert (=> b!2586719 (= e!1632047 tp!821027)))

(assert (=> b!2585995 (= tp!820903 e!1632047)))

(assert (= (and b!2585995 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 (rule!6887 token!562))))) b!2586717))

(assert (= (and b!2585995 ((_ is Concat!12409) (regTwo!15842 (regex!4521 (rule!6887 token!562))))) b!2586718))

(assert (= (and b!2585995 ((_ is Star!7665) (regTwo!15842 (regex!4521 (rule!6887 token!562))))) b!2586719))

(assert (= (and b!2585995 ((_ is Union!7665) (regTwo!15842 (regex!4521 (rule!6887 token!562))))) b!2586720))

(declare-fun b!2586721 () Bool)

(declare-fun e!1632048 () Bool)

(declare-fun tp!821031 () Bool)

(assert (=> b!2586721 (= e!1632048 (and tp_is_empty!13225 tp!821031))))

(assert (=> b!2586014 (= tp!820923 e!1632048)))

(assert (= (and b!2586014 ((_ is Cons!29765) (t!212230 (t!212230 suffix!1684)))) b!2586721))

(declare-fun b!2586724 () Bool)

(declare-fun b_free!72885 () Bool)

(declare-fun b_next!73589 () Bool)

(assert (=> b!2586724 (= b_free!72885 (not b_next!73589))))

(declare-fun tb!141045 () Bool)

(declare-fun t!212444 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570))) t!212444) tb!141045))

(declare-fun result!175328 () Bool)

(assert (= result!175328 result!175316))

(assert (=> d!732492 t!212444))

(declare-fun tb!141047 () Bool)

(declare-fun t!212446 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212446) tb!141047))

(declare-fun result!175330 () Bool)

(assert (= result!175330 result!175280))

(assert (=> d!732432 t!212446))

(assert (=> d!732494 t!212444))

(declare-fun tb!141049 () Bool)

(declare-fun t!212448 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570))) t!212448) tb!141049))

(declare-fun result!175332 () Bool)

(assert (= result!175332 result!175114))

(assert (=> d!732112 t!212448))

(declare-fun t!212450 () Bool)

(declare-fun tb!141051 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570))) t!212450) tb!141051))

(declare-fun result!175334 () Bool)

(assert (= result!175334 result!175184))

(assert (=> d!732272 t!212450))

(declare-fun tb!141053 () Bool)

(declare-fun t!212452 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212452) tb!141053))

(declare-fun result!175336 () Bool)

(assert (= result!175336 result!175172))

(assert (=> d!732234 t!212452))

(declare-fun tp!821035 () Bool)

(declare-fun b_and!189791 () Bool)

(assert (=> b!2586724 (= tp!821035 (and (=> t!212452 result!175336) (=> t!212446 result!175330) (=> t!212450 result!175334) (=> t!212448 result!175332) (=> t!212444 result!175328) b_and!189791))))

(declare-fun b_free!72887 () Bool)

(declare-fun b_next!73591 () Bool)

(assert (=> b!2586724 (= b_free!72887 (not b_next!73591))))

(declare-fun tb!141055 () Bool)

(declare-fun t!212454 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212454) tb!141055))

(declare-fun result!175338 () Bool)

(assert (= result!175338 result!175292))

(assert (=> d!732474 t!212454))

(declare-fun t!212456 () Bool)

(declare-fun tb!141057 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 rule!570))) t!212456) tb!141057))

(declare-fun result!175340 () Bool)

(assert (= result!175340 result!175304))

(assert (=> d!732492 t!212456))

(declare-fun t!212458 () Bool)

(declare-fun tb!141059 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212458) tb!141059))

(declare-fun result!175342 () Bool)

(assert (= result!175342 result!175268))

(assert (=> d!732420 t!212458))

(declare-fun tb!141061 () Bool)

(declare-fun t!212460 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212460) tb!141061))

(declare-fun result!175344 () Bool)

(assert (= result!175344 result!175124))

(assert (=> b!2585855 t!212460))

(assert (=> d!732114 t!212460))

(declare-fun b_and!189793 () Bool)

(declare-fun tp!821032 () Bool)

(assert (=> b!2586724 (= tp!821032 (and (=> t!212460 result!175344) (=> t!212458 result!175342) (=> t!212454 result!175338) (=> t!212456 result!175340) b_and!189793))))

(declare-fun e!1632052 () Bool)

(assert (=> b!2586724 (= e!1632052 (and tp!821035 tp!821032))))

(declare-fun e!1632050 () Bool)

(declare-fun b!2586723 () Bool)

(declare-fun tp!821033 () Bool)

(assert (=> b!2586723 (= e!1632050 (and tp!821033 (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 rs!798))))) (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) e!1632052))))

(declare-fun b!2586722 () Bool)

(declare-fun e!1632051 () Bool)

(declare-fun tp!821034 () Bool)

(assert (=> b!2586722 (= e!1632051 (and e!1632050 tp!821034))))

(assert (=> b!2585998 (= tp!820910 e!1632051)))

(assert (= b!2586723 b!2586724))

(assert (= b!2586722 b!2586723))

(assert (= (and b!2585998 ((_ is Cons!29766) (t!212231 (t!212231 rs!798)))) b!2586722))

(declare-fun m!2922975 () Bool)

(assert (=> b!2586723 m!2922975))

(declare-fun m!2922977 () Bool)

(assert (=> b!2586723 m!2922977))

(declare-fun b!2586726 () Bool)

(declare-fun e!1632053 () Bool)

(declare-fun tp!821040 () Bool)

(declare-fun tp!821036 () Bool)

(assert (=> b!2586726 (= e!1632053 (and tp!821040 tp!821036))))

(declare-fun b!2586728 () Bool)

(declare-fun tp!821038 () Bool)

(declare-fun tp!821039 () Bool)

(assert (=> b!2586728 (= e!1632053 (and tp!821038 tp!821039))))

(declare-fun b!2586725 () Bool)

(assert (=> b!2586725 (= e!1632053 tp_is_empty!13225)))

(declare-fun b!2586727 () Bool)

(declare-fun tp!821037 () Bool)

(assert (=> b!2586727 (= e!1632053 tp!821037)))

(assert (=> b!2585999 (= tp!820909 e!1632053)))

(assert (= (and b!2585999 ((_ is ElementMatch!7665) (regex!4521 (h!35186 (t!212231 rs!798))))) b!2586725))

(assert (= (and b!2585999 ((_ is Concat!12409) (regex!4521 (h!35186 (t!212231 rs!798))))) b!2586726))

(assert (= (and b!2585999 ((_ is Star!7665) (regex!4521 (h!35186 (t!212231 rs!798))))) b!2586727))

(assert (= (and b!2585999 ((_ is Union!7665) (regex!4521 (h!35186 (t!212231 rs!798))))) b!2586728))

(declare-fun b!2586730 () Bool)

(declare-fun e!1632054 () Bool)

(declare-fun tp!821045 () Bool)

(declare-fun tp!821041 () Bool)

(assert (=> b!2586730 (= e!1632054 (and tp!821045 tp!821041))))

(declare-fun b!2586732 () Bool)

(declare-fun tp!821043 () Bool)

(declare-fun tp!821044 () Bool)

(assert (=> b!2586732 (= e!1632054 (and tp!821043 tp!821044))))

(declare-fun b!2586729 () Bool)

(assert (=> b!2586729 (= e!1632054 tp_is_empty!13225)))

(declare-fun b!2586731 () Bool)

(declare-fun tp!821042 () Bool)

(assert (=> b!2586731 (= e!1632054 tp!821042)))

(assert (=> b!2585996 (= tp!820904 e!1632054)))

(assert (= (and b!2585996 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 (rule!6887 token!562))))) b!2586729))

(assert (= (and b!2585996 ((_ is Concat!12409) (reg!7994 (regex!4521 (rule!6887 token!562))))) b!2586730))

(assert (= (and b!2585996 ((_ is Star!7665) (reg!7994 (regex!4521 (rule!6887 token!562))))) b!2586731))

(assert (= (and b!2585996 ((_ is Union!7665) (reg!7994 (regex!4521 (rule!6887 token!562))))) b!2586732))

(declare-fun b!2586734 () Bool)

(declare-fun e!1632055 () Bool)

(declare-fun tp!821050 () Bool)

(declare-fun tp!821046 () Bool)

(assert (=> b!2586734 (= e!1632055 (and tp!821050 tp!821046))))

(declare-fun b!2586736 () Bool)

(declare-fun tp!821048 () Bool)

(declare-fun tp!821049 () Bool)

(assert (=> b!2586736 (= e!1632055 (and tp!821048 tp!821049))))

(declare-fun b!2586733 () Bool)

(assert (=> b!2586733 (= e!1632055 tp_is_empty!13225)))

(declare-fun b!2586735 () Bool)

(declare-fun tp!821047 () Bool)

(assert (=> b!2586735 (= e!1632055 tp!821047)))

(assert (=> b!2585997 (= tp!820905 e!1632055)))

(assert (= (and b!2585997 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 (rule!6887 token!562))))) b!2586733))

(assert (= (and b!2585997 ((_ is Concat!12409) (regOne!15843 (regex!4521 (rule!6887 token!562))))) b!2586734))

(assert (= (and b!2585997 ((_ is Star!7665) (regOne!15843 (regex!4521 (rule!6887 token!562))))) b!2586735))

(assert (= (and b!2585997 ((_ is Union!7665) (regOne!15843 (regex!4521 (rule!6887 token!562))))) b!2586736))

(declare-fun b!2586738 () Bool)

(declare-fun e!1632056 () Bool)

(declare-fun tp!821055 () Bool)

(declare-fun tp!821051 () Bool)

(assert (=> b!2586738 (= e!1632056 (and tp!821055 tp!821051))))

(declare-fun b!2586740 () Bool)

(declare-fun tp!821053 () Bool)

(declare-fun tp!821054 () Bool)

(assert (=> b!2586740 (= e!1632056 (and tp!821053 tp!821054))))

(declare-fun b!2586737 () Bool)

(assert (=> b!2586737 (= e!1632056 tp_is_empty!13225)))

(declare-fun b!2586739 () Bool)

(declare-fun tp!821052 () Bool)

(assert (=> b!2586739 (= e!1632056 tp!821052)))

(assert (=> b!2585997 (= tp!820906 e!1632056)))

(assert (= (and b!2585997 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 (rule!6887 token!562))))) b!2586737))

(assert (= (and b!2585997 ((_ is Concat!12409) (regTwo!15843 (regex!4521 (rule!6887 token!562))))) b!2586738))

(assert (= (and b!2585997 ((_ is Star!7665) (regTwo!15843 (regex!4521 (rule!6887 token!562))))) b!2586739))

(assert (= (and b!2585997 ((_ is Union!7665) (regTwo!15843 (regex!4521 (rule!6887 token!562))))) b!2586740))

(declare-fun b!2586749 () Bool)

(declare-fun tp!821063 () Bool)

(declare-fun e!1632062 () Bool)

(declare-fun tp!821064 () Bool)

(assert (=> b!2586749 (= e!1632062 (and (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) tp!821064 (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) tp!821063))))

(declare-fun b!2586751 () Bool)

(declare-fun e!1632061 () Bool)

(declare-fun tp!821062 () Bool)

(assert (=> b!2586751 (= e!1632061 tp!821062)))

(declare-fun b!2586750 () Bool)

(declare-fun inv!40206 (IArray!18579) Bool)

(assert (=> b!2586750 (= e!1632062 (and (inv!40206 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) e!1632061))))

(assert (=> b!2585714 (= tp!820872 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1632062))))

(assert (= (and b!2585714 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) b!2586749))

(assert (= b!2586750 b!2586751))

(assert (= (and b!2585714 ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) b!2586750))

(declare-fun m!2922979 () Bool)

(assert (=> b!2586749 m!2922979))

(declare-fun m!2922981 () Bool)

(assert (=> b!2586749 m!2922981))

(declare-fun m!2922983 () Bool)

(assert (=> b!2586750 m!2922983))

(assert (=> b!2585714 m!2921867))

(declare-fun b!2586752 () Bool)

(declare-fun e!1632063 () Bool)

(declare-fun tp!821065 () Bool)

(assert (=> b!2586752 (= e!1632063 (and tp_is_empty!13225 tp!821065))))

(assert (=> b!2586007 (= tp!820917 e!1632063)))

(assert (= (and b!2586007 ((_ is Cons!29765) (t!212230 (originalCharacters!5287 token!562)))) b!2586752))

(declare-fun b!2586755 () Bool)

(declare-fun b_free!72889 () Bool)

(declare-fun b_next!73593 () Bool)

(assert (=> b!2586755 (= b_free!72889 (not b_next!73593))))

(declare-fun t!212462 () Bool)

(declare-fun tb!141063 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570))) t!212462) tb!141063))

(declare-fun result!175348 () Bool)

(assert (= result!175348 result!175316))

(assert (=> d!732492 t!212462))

(declare-fun t!212464 () Bool)

(declare-fun tb!141065 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212464) tb!141065))

(declare-fun result!175350 () Bool)

(assert (= result!175350 result!175280))

(assert (=> d!732432 t!212464))

(assert (=> d!732494 t!212462))

(declare-fun tb!141067 () Bool)

(declare-fun t!212466 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570))) t!212466) tb!141067))

(declare-fun result!175352 () Bool)

(assert (= result!175352 result!175114))

(assert (=> d!732112 t!212466))

(declare-fun tb!141069 () Bool)

(declare-fun t!212468 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570))) t!212468) tb!141069))

(declare-fun result!175354 () Bool)

(assert (= result!175354 result!175184))

(assert (=> d!732272 t!212468))

(declare-fun t!212470 () Bool)

(declare-fun tb!141071 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212470) tb!141071))

(declare-fun result!175356 () Bool)

(assert (= result!175356 result!175172))

(assert (=> d!732234 t!212470))

(declare-fun tp!821069 () Bool)

(declare-fun b_and!189795 () Bool)

(assert (=> b!2586755 (= tp!821069 (and (=> t!212468 result!175354) (=> t!212464 result!175350) (=> t!212470 result!175356) (=> t!212466 result!175352) (=> t!212462 result!175348) b_and!189795))))

(declare-fun b_free!72891 () Bool)

(declare-fun b_next!73595 () Bool)

(assert (=> b!2586755 (= b_free!72891 (not b_next!73595))))

(declare-fun t!212472 () Bool)

(declare-fun tb!141073 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212472) tb!141073))

(declare-fun result!175358 () Bool)

(assert (= result!175358 result!175292))

(assert (=> d!732474 t!212472))

(declare-fun t!212474 () Bool)

(declare-fun tb!141075 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 rule!570))) t!212474) tb!141075))

(declare-fun result!175360 () Bool)

(assert (= result!175360 result!175304))

(assert (=> d!732492 t!212474))

(declare-fun tb!141077 () Bool)

(declare-fun t!212476 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212476) tb!141077))

(declare-fun result!175362 () Bool)

(assert (= result!175362 result!175268))

(assert (=> d!732420 t!212476))

(declare-fun t!212478 () Bool)

(declare-fun tb!141079 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212478) tb!141079))

(declare-fun result!175364 () Bool)

(assert (= result!175364 result!175124))

(assert (=> b!2585855 t!212478))

(assert (=> d!732114 t!212478))

(declare-fun b_and!189797 () Bool)

(declare-fun tp!821066 () Bool)

(assert (=> b!2586755 (= tp!821066 (and (=> t!212478 result!175364) (=> t!212472 result!175358) (=> t!212474 result!175360) (=> t!212476 result!175362) b_and!189797))))

(declare-fun e!1632067 () Bool)

(assert (=> b!2586755 (= e!1632067 (and tp!821069 tp!821066))))

(declare-fun b!2586754 () Bool)

(declare-fun tp!821067 () Bool)

(declare-fun e!1632065 () Bool)

(assert (=> b!2586754 (= e!1632065 (and tp!821067 (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 rules!4580))))) (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) e!1632067))))

(declare-fun b!2586753 () Bool)

(declare-fun e!1632066 () Bool)

(declare-fun tp!821068 () Bool)

(assert (=> b!2586753 (= e!1632066 (and e!1632065 tp!821068))))

(assert (=> b!2585981 (= tp!820898 e!1632066)))

(assert (= b!2586754 b!2586755))

(assert (= b!2586753 b!2586754))

(assert (= (and b!2585981 ((_ is Cons!29766) (t!212231 (t!212231 rules!4580)))) b!2586753))

(declare-fun m!2922985 () Bool)

(assert (=> b!2586754 m!2922985))

(declare-fun m!2922987 () Bool)

(assert (=> b!2586754 m!2922987))

(declare-fun b!2586756 () Bool)

(declare-fun e!1632068 () Bool)

(declare-fun tp!821070 () Bool)

(assert (=> b!2586756 (= e!1632068 (and tp_is_empty!13225 tp!821070))))

(assert (=> b!2585993 (= tp!820902 e!1632068)))

(assert (= (and b!2585993 ((_ is Cons!29765) (t!212230 (t!212230 input!3654)))) b!2586756))

(declare-fun b!2586758 () Bool)

(declare-fun e!1632069 () Bool)

(declare-fun tp!821075 () Bool)

(declare-fun tp!821071 () Bool)

(assert (=> b!2586758 (= e!1632069 (and tp!821075 tp!821071))))

(declare-fun b!2586760 () Bool)

(declare-fun tp!821073 () Bool)

(declare-fun tp!821074 () Bool)

(assert (=> b!2586760 (= e!1632069 (and tp!821073 tp!821074))))

(declare-fun b!2586757 () Bool)

(assert (=> b!2586757 (= e!1632069 tp_is_empty!13225)))

(declare-fun b!2586759 () Bool)

(declare-fun tp!821072 () Bool)

(assert (=> b!2586759 (= e!1632069 tp!821072)))

(assert (=> b!2585960 (= tp!820887 e!1632069)))

(assert (= (and b!2585960 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 rule!570)))) b!2586757))

(assert (= (and b!2585960 ((_ is Concat!12409) (regOne!15842 (regex!4521 rule!570)))) b!2586758))

(assert (= (and b!2585960 ((_ is Star!7665) (regOne!15842 (regex!4521 rule!570)))) b!2586759))

(assert (= (and b!2585960 ((_ is Union!7665) (regOne!15842 (regex!4521 rule!570)))) b!2586760))

(declare-fun b!2586762 () Bool)

(declare-fun e!1632070 () Bool)

(declare-fun tp!821080 () Bool)

(declare-fun tp!821076 () Bool)

(assert (=> b!2586762 (= e!1632070 (and tp!821080 tp!821076))))

(declare-fun b!2586764 () Bool)

(declare-fun tp!821078 () Bool)

(declare-fun tp!821079 () Bool)

(assert (=> b!2586764 (= e!1632070 (and tp!821078 tp!821079))))

(declare-fun b!2586761 () Bool)

(assert (=> b!2586761 (= e!1632070 tp_is_empty!13225)))

(declare-fun b!2586763 () Bool)

(declare-fun tp!821077 () Bool)

(assert (=> b!2586763 (= e!1632070 tp!821077)))

(assert (=> b!2585960 (= tp!820883 e!1632070)))

(assert (= (and b!2585960 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 rule!570)))) b!2586761))

(assert (= (and b!2585960 ((_ is Concat!12409) (regTwo!15842 (regex!4521 rule!570)))) b!2586762))

(assert (= (and b!2585960 ((_ is Star!7665) (regTwo!15842 (regex!4521 rule!570)))) b!2586763))

(assert (= (and b!2585960 ((_ is Union!7665) (regTwo!15842 (regex!4521 rule!570)))) b!2586764))

(declare-fun b!2586766 () Bool)

(declare-fun e!1632071 () Bool)

(declare-fun tp!821085 () Bool)

(declare-fun tp!821081 () Bool)

(assert (=> b!2586766 (= e!1632071 (and tp!821085 tp!821081))))

(declare-fun b!2586768 () Bool)

(declare-fun tp!821083 () Bool)

(declare-fun tp!821084 () Bool)

(assert (=> b!2586768 (= e!1632071 (and tp!821083 tp!821084))))

(declare-fun b!2586765 () Bool)

(assert (=> b!2586765 (= e!1632071 tp_is_empty!13225)))

(declare-fun b!2586767 () Bool)

(declare-fun tp!821082 () Bool)

(assert (=> b!2586767 (= e!1632071 tp!821082)))

(assert (=> b!2585982 (= tp!820897 e!1632071)))

(assert (= (and b!2585982 ((_ is ElementMatch!7665) (regex!4521 (h!35186 (t!212231 rules!4580))))) b!2586765))

(assert (= (and b!2585982 ((_ is Concat!12409) (regex!4521 (h!35186 (t!212231 rules!4580))))) b!2586766))

(assert (= (and b!2585982 ((_ is Star!7665) (regex!4521 (h!35186 (t!212231 rules!4580))))) b!2586767))

(assert (= (and b!2585982 ((_ is Union!7665) (regex!4521 (h!35186 (t!212231 rules!4580))))) b!2586768))

(declare-fun b!2586770 () Bool)

(declare-fun e!1632072 () Bool)

(declare-fun tp!821090 () Bool)

(declare-fun tp!821086 () Bool)

(assert (=> b!2586770 (= e!1632072 (and tp!821090 tp!821086))))

(declare-fun b!2586772 () Bool)

(declare-fun tp!821088 () Bool)

(declare-fun tp!821089 () Bool)

(assert (=> b!2586772 (= e!1632072 (and tp!821088 tp!821089))))

(declare-fun b!2586769 () Bool)

(assert (=> b!2586769 (= e!1632072 tp_is_empty!13225)))

(declare-fun b!2586771 () Bool)

(declare-fun tp!821087 () Bool)

(assert (=> b!2586771 (= e!1632072 tp!821087)))

(assert (=> b!2585961 (= tp!820884 e!1632072)))

(assert (= (and b!2585961 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 rule!570)))) b!2586769))

(assert (= (and b!2585961 ((_ is Concat!12409) (reg!7994 (regex!4521 rule!570)))) b!2586770))

(assert (= (and b!2585961 ((_ is Star!7665) (reg!7994 (regex!4521 rule!570)))) b!2586771))

(assert (= (and b!2585961 ((_ is Union!7665) (reg!7994 (regex!4521 rule!570)))) b!2586772))

(declare-fun b!2586774 () Bool)

(declare-fun e!1632073 () Bool)

(declare-fun tp!821095 () Bool)

(declare-fun tp!821091 () Bool)

(assert (=> b!2586774 (= e!1632073 (and tp!821095 tp!821091))))

(declare-fun b!2586776 () Bool)

(declare-fun tp!821093 () Bool)

(declare-fun tp!821094 () Bool)

(assert (=> b!2586776 (= e!1632073 (and tp!821093 tp!821094))))

(declare-fun b!2586773 () Bool)

(assert (=> b!2586773 (= e!1632073 tp_is_empty!13225)))

(declare-fun b!2586775 () Bool)

(declare-fun tp!821092 () Bool)

(assert (=> b!2586775 (= e!1632073 tp!821092)))

(assert (=> b!2585962 (= tp!820885 e!1632073)))

(assert (= (and b!2585962 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 rule!570)))) b!2586773))

(assert (= (and b!2585962 ((_ is Concat!12409) (regOne!15843 (regex!4521 rule!570)))) b!2586774))

(assert (= (and b!2585962 ((_ is Star!7665) (regOne!15843 (regex!4521 rule!570)))) b!2586775))

(assert (= (and b!2585962 ((_ is Union!7665) (regOne!15843 (regex!4521 rule!570)))) b!2586776))

(declare-fun b!2586778 () Bool)

(declare-fun e!1632074 () Bool)

(declare-fun tp!821100 () Bool)

(declare-fun tp!821096 () Bool)

(assert (=> b!2586778 (= e!1632074 (and tp!821100 tp!821096))))

(declare-fun b!2586780 () Bool)

(declare-fun tp!821098 () Bool)

(declare-fun tp!821099 () Bool)

(assert (=> b!2586780 (= e!1632074 (and tp!821098 tp!821099))))

(declare-fun b!2586777 () Bool)

(assert (=> b!2586777 (= e!1632074 tp_is_empty!13225)))

(declare-fun b!2586779 () Bool)

(declare-fun tp!821097 () Bool)

(assert (=> b!2586779 (= e!1632074 tp!821097)))

(assert (=> b!2585962 (= tp!820886 e!1632074)))

(assert (= (and b!2585962 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 rule!570)))) b!2586777))

(assert (= (and b!2585962 ((_ is Concat!12409) (regTwo!15843 (regex!4521 rule!570)))) b!2586778))

(assert (= (and b!2585962 ((_ is Star!7665) (regTwo!15843 (regex!4521 rule!570)))) b!2586779))

(assert (= (and b!2585962 ((_ is Union!7665) (regTwo!15843 (regex!4521 rule!570)))) b!2586780))

(declare-fun b!2586782 () Bool)

(declare-fun e!1632075 () Bool)

(declare-fun tp!821105 () Bool)

(declare-fun tp!821101 () Bool)

(assert (=> b!2586782 (= e!1632075 (and tp!821105 tp!821101))))

(declare-fun b!2586784 () Bool)

(declare-fun tp!821103 () Bool)

(declare-fun tp!821104 () Bool)

(assert (=> b!2586784 (= e!1632075 (and tp!821103 tp!821104))))

(declare-fun b!2586781 () Bool)

(assert (=> b!2586781 (= e!1632075 tp_is_empty!13225)))

(declare-fun b!2586783 () Bool)

(declare-fun tp!821102 () Bool)

(assert (=> b!2586783 (= e!1632075 tp!821102)))

(assert (=> b!2586011 (= tp!820922 e!1632075)))

(assert (= (and b!2586011 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 (h!35186 rs!798))))) b!2586781))

(assert (= (and b!2586011 ((_ is Concat!12409) (regOne!15842 (regex!4521 (h!35186 rs!798))))) b!2586782))

(assert (= (and b!2586011 ((_ is Star!7665) (regOne!15842 (regex!4521 (h!35186 rs!798))))) b!2586783))

(assert (= (and b!2586011 ((_ is Union!7665) (regOne!15842 (regex!4521 (h!35186 rs!798))))) b!2586784))

(declare-fun b!2586786 () Bool)

(declare-fun e!1632076 () Bool)

(declare-fun tp!821110 () Bool)

(declare-fun tp!821106 () Bool)

(assert (=> b!2586786 (= e!1632076 (and tp!821110 tp!821106))))

(declare-fun b!2586788 () Bool)

(declare-fun tp!821108 () Bool)

(declare-fun tp!821109 () Bool)

(assert (=> b!2586788 (= e!1632076 (and tp!821108 tp!821109))))

(declare-fun b!2586785 () Bool)

(assert (=> b!2586785 (= e!1632076 tp_is_empty!13225)))

(declare-fun b!2586787 () Bool)

(declare-fun tp!821107 () Bool)

(assert (=> b!2586787 (= e!1632076 tp!821107)))

(assert (=> b!2586011 (= tp!820918 e!1632076)))

(assert (= (and b!2586011 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 (h!35186 rs!798))))) b!2586785))

(assert (= (and b!2586011 ((_ is Concat!12409) (regTwo!15842 (regex!4521 (h!35186 rs!798))))) b!2586786))

(assert (= (and b!2586011 ((_ is Star!7665) (regTwo!15842 (regex!4521 (h!35186 rs!798))))) b!2586787))

(assert (= (and b!2586011 ((_ is Union!7665) (regTwo!15842 (regex!4521 (h!35186 rs!798))))) b!2586788))

(declare-fun b_lambda!76863 () Bool)

(assert (= b_lambda!76853 (or d!732122 b_lambda!76863)))

(declare-fun bs!471785 () Bool)

(declare-fun d!732546 () Bool)

(assert (= bs!471785 (and d!732546 d!732122)))

(assert (=> bs!471785 (= (dynLambda!12596 lambda!95796 (h!35186 rs!798)) (ruleValid!1527 thiss!28211 (h!35186 rs!798)))))

(assert (=> bs!471785 m!2922781))

(assert (=> b!2586530 d!732546))

(declare-fun b_lambda!76865 () Bool)

(assert (= b_lambda!76859 (or (and b!2585586 b_free!72857) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76865)))

(declare-fun b_lambda!76867 () Bool)

(assert (= b_lambda!76823 (or d!732146 b_lambda!76867)))

(declare-fun bs!471786 () Bool)

(declare-fun d!732548 () Bool)

(assert (= bs!471786 (and d!732548 d!732146)))

(assert (=> bs!471786 (= (dynLambda!12585 lambda!95802 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))) (validRegex!3279 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))

(declare-fun m!2922989 () Bool)

(assert (=> bs!471786 m!2922989))

(assert (=> b!2586141 d!732548))

(declare-fun b_lambda!76869 () Bool)

(assert (= b_lambda!76817 (or d!732146 b_lambda!76869)))

(declare-fun bs!471787 () Bool)

(declare-fun d!732550 () Bool)

(assert (= bs!471787 (and d!732550 d!732146)))

(assert (=> bs!471787 (= (dynLambda!12586 lambda!95801 (h!35186 (t!212231 rs!798))) (regex!4521 (h!35186 (t!212231 rs!798))))))

(assert (=> b!2586135 d!732550))

(declare-fun b_lambda!76871 () Bool)

(assert (= b_lambda!76857 (or (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2585595 b_free!72863 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2585577 b_free!72855 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 rule!570)))) (and b!2585586 b_free!72859) (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 rule!570)))) b_lambda!76871)))

(declare-fun b_lambda!76873 () Bool)

(assert (= b_lambda!76851 (or b!2585591 b_lambda!76873)))

(declare-fun bs!471788 () Bool)

(declare-fun d!732552 () Bool)

(assert (= bs!471788 (and d!732552 b!2585591)))

(assert (=> bs!471788 (= (dynLambda!12585 lambda!95784 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))) (validRegex!3279 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(declare-fun m!2922991 () Bool)

(assert (=> bs!471788 m!2922991))

(assert (=> b!2586512 d!732552))

(declare-fun b_lambda!76875 () Bool)

(assert (= b_lambda!76861 (or (and b!2585586 b_free!72857) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76875)))

(declare-fun b_lambda!76877 () Bool)

(assert (= b_lambda!76847 (or b!2585591 b_lambda!76877)))

(declare-fun bs!471790 () Bool)

(declare-fun d!732554 () Bool)

(assert (= bs!471790 (and d!732554 b!2585591)))

(assert (=> bs!471790 (= (dynLambda!12586 lambda!95783 (h!35186 (t!212231 rs!798))) (regex!4521 (h!35186 (t!212231 rs!798))))))

(assert (=> b!2586464 d!732554))

(declare-fun b_lambda!76879 () Bool)

(assert (= b_lambda!76819 (or (and b!2585586 b_free!72857) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76879)))

(check-sat (not b!2586651) (not d!732288) (not b!2586544) (not b!2586456) b_and!189793 (not d!732458) b_and!189785 (not b!2586752) (not b!2586448) (not b_lambda!76877) (not bm!167013) (not d!732538) (not b!2586751) (not bm!167028) (not b_lambda!76871) (not b!2586646) (not b!2586216) (not d!732518) (not d!732420) (not d!732536) (not b!2586694) (not bm!167009) (not b_next!73569) (not b!2586716) b_and!189779 (not b!2586780) (not b!2586768) (not d!732326) (not d!732438) (not b!2586104) (not b_next!73571) (not b_next!73579) (not b!2586557) (not d!732472) (not b!2586728) (not b!2586731) b_and!189759 (not b_lambda!76875) (not bm!167015) (not bs!471788) (not bm!167048) (not b!2586224) (not b!2586227) (not tb!141033) (not b!2586558) (not b!2586214) (not d!732488) (not b!2586635) (not b!2586470) (not bm!166953) (not bm!167014) (not b!2586097) (not b!2586692) (not b!2586099) (not b!2586157) (not b!2586125) (not b!2586763) (not tb!140985) (not b_lambda!76873) (not b!2586683) b_and!189757 (not b!2586432) (not b!2586142) (not b!2586696) (not b!2586565) (not b!2586758) (not b_next!73567) (not b!2586520) (not b!2585714) (not b!2586423) (not b!2586680) (not bm!166952) (not d!732236) (not b!2586703) (not d!732480) (not b!2586488) (not b!2586762) (not d!732212) b_and!189763 (not b!2586726) (not d!732258) (not b!2586154) (not d!732226) (not b!2586150) (not d!732220) (not b!2586101) (not b_next!73593) (not b!2586779) (not b_lambda!76795) (not b!2586770) (not b!2586738) (not b!2586491) (not b!2586458) (not d!732238) (not b!2586146) (not b!2586131) (not b!2586754) b_and!189783 (not b!2586103) (not b!2586481) (not b!2586684) (not b!2586476) (not b!2586537) (not b_next!73563) (not b!2586106) (not d!732248) (not b_next!73595) (not b!2586462) (not b!2586111) (not b!2586107) (not b!2586622) (not b!2586714) (not d!732474) (not b!2586771) (not b!2586113) (not b!2586202) (not b!2586706) (not b!2586447) (not b!2586087) (not b!2586629) (not b!2586534) (not b_lambda!76867) (not b!2586715) (not bm!166966) (not d!732416) (not b!2586732) (not b!2586524) (not d!732496) (not b_next!73591) (not b!2586155) tp_is_empty!13225 (not b_lambda!76845) (not b!2586736) (not b!2586727) (not b_lambda!76863) b_and!189795 (not b!2586710) (not d!732276) (not d!732328) (not b!2586217) (not b!2586451) (not b!2586704) (not d!732230) (not b_next!73577) b_and!189797 (not b!2586700) (not b!2586130) (not d!732218) (not b!2586774) (not bs!471786) (not b!2586712) (not bm!167016) (not tb!140997) (not b!2586686) (not b!2586096) (not d!732510) (not tb!141009) (not b!2586787) (not b!2586200) (not b!2586147) (not b_next!73575) (not b!2586759) (not b!2586109) (not b!2586480) (not b!2586531) (not b!2586498) (not d!732470) (not d!732482) b_and!189787 (not b!2586776) (not b!2586515) (not bm!167047) (not b!2586479) (not b!2586778) (not b!2586702) (not b!2586718) (not b!2586767) (not d!732426) (not d!732476) (not b!2586720) (not b!2586764) (not b_lambda!76797) (not b_next!73573) (not b!2586690) (not b!2586660) (not d!732434) (not b!2586784) (not b!2586739) (not b!2586699) (not b!2586695) (not b!2586541) (not d!732278) (not d!732216) (not b!2586123) (not b!2586553) (not b!2586105) (not bm!167020) (not b!2586740) (not b!2586691) (not b_lambda!76799) (not b!2586711) (not bm!167018) (not bm!167029) b_and!189789 (not b!2586611) (not b!2586095) (not b!2586555) (not tb!141021) b_and!189761 (not d!732450) (not b!2586507) (not d!732286) (not d!732530) (not d!732294) (not b!2586708) (not b!2586100) (not b!2586750) (not d!732314) (not d!732534) (not d!732500) (not b!2586723) (not b!2586437) (not b_lambda!76801) (not d!732520) (not d!732486) (not b!2586092) (not b!2586137) (not d!732484) (not b!2586483) (not tb!140901) (not b!2586766) (not d!732464) (not d!732444) (not b!2586568) (not b_lambda!76849) (not bm!166964) (not b!2586756) (not b!2586133) (not d!732418) (not b!2586455) b_and!189791 (not d!732214) (not b!2586124) (not bm!166962) (not b!2586487) (not b!2586650) (not bm!167006) (not bs!471785) (not b!2586698) (not b!2586135) (not d!732414) (not d!732260) (not b!2586722) (not tb!140889) (not bm!167011) (not b!2586521) (not b!2586621) (not d!732522) (not d!732504) (not b!2586735) (not b!2586721) (not b!2586783) (not b!2586431) (not b!2586513) (not b!2586753) (not b!2586213) (not bm!167012) (not b!2586775) (not b!2586464) (not b!2586760) (not b_lambda!76869) (not b_lambda!76815) b_and!189755 (not b!2586094) (not b!2586533) (not b!2586688) (not b!2586546) (not b!2586682) (not b!2586198) (not b!2586102) (not b!2586676) (not b!2586734) (not d!732528) (not b_next!73561) (not b!2586225) (not b_next!73589) (not d!732250) (not b!2586687) (not b_lambda!76803) (not b!2586730) (not b!2586749) (not b!2586542) (not b_next!73565) (not bm!167010) (not d!732264) (not b!2586677) (not b!2586428) (not b!2586786) b_and!189765 (not b!2586523) (not b_next!73559) (not b!2586719) (not b_next!73557) (not b_lambda!76855) (not b!2586707) (not b!2586496) (not d!732492) (not b!2586190) (not b!2586648) (not b_lambda!76865) (not bm!167008) (not b!2586525) (not d!732468) (not b!2586220) (not b!2586098) b_and!189781 (not bm!167007) (not b!2586772) (not b!2586495) (not b!2586643) (not b!2586782) (not b_lambda!76879) (not b!2586641) (not d!732254) (not b!2586788))
(check-sat (not b_next!73569) b_and!189759 b_and!189757 (not b_next!73567) b_and!189763 (not b_next!73593) (not b_next!73591) b_and!189795 (not b_next!73573) b_and!189789 b_and!189761 b_and!189791 b_and!189755 b_and!189781 b_and!189793 b_and!189785 b_and!189779 (not b_next!73571) (not b_next!73579) b_and!189783 (not b_next!73563) (not b_next!73595) b_and!189797 (not b_next!73577) b_and!189787 (not b_next!73575) (not b_next!73561) (not b_next!73589) (not b_next!73565) b_and!189765 (not b_next!73559) (not b_next!73557))
(get-model)

(declare-fun d!732650 () Bool)

(assert (=> d!732650 (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (h!35185 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2586224 d!732650))

(declare-fun call!167076 () Regex!7665)

(declare-fun c!417108 () Bool)

(declare-fun bm!167068 () Bool)

(assert (=> bm!167068 (= call!167076 (derivativeStep!2222 (ite c!417108 (regTwo!15843 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (regOne!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909246)))))

(declare-fun bm!167069 () Bool)

(declare-fun call!167075 () Regex!7665)

(declare-fun call!167073 () Regex!7665)

(assert (=> bm!167069 (= call!167075 call!167073)))

(declare-fun c!417111 () Bool)

(declare-fun bm!167070 () Bool)

(declare-fun call!167074 () Regex!7665)

(declare-fun c!417109 () Bool)

(assert (=> bm!167070 (= call!167074 (derivativeStep!2222 (ite c!417108 (regOne!15843 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (ite c!417109 (reg!7994 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (ite c!417111 (regTwo!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (regOne!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) (head!5862 lt!909246)))))

(declare-fun e!1632202 () Regex!7665)

(declare-fun b!2587030 () Bool)

(assert (=> b!2587030 (= e!1632202 (ite (= (head!5862 lt!909246) (c!416820 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732652 () Bool)

(declare-fun lt!909760 () Regex!7665)

(assert (=> d!732652 (validRegex!3279 lt!909760)))

(declare-fun e!1632200 () Regex!7665)

(assert (=> d!732652 (= lt!909760 e!1632200)))

(declare-fun c!417107 () Bool)

(assert (=> d!732652 (= c!417107 (or ((_ is EmptyExpr!7665) (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) ((_ is EmptyLang!7665) (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> d!732652 (validRegex!3279 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))

(assert (=> d!732652 (= (derivativeStep!2222 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 lt!909246)) lt!909760)))

(declare-fun b!2587031 () Bool)

(assert (=> b!2587031 (= e!1632200 EmptyLang!7665)))

(declare-fun b!2587032 () Bool)

(assert (=> b!2587032 (= c!417108 ((_ is Union!7665) (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun e!1632201 () Regex!7665)

(assert (=> b!2587032 (= e!1632202 e!1632201)))

(declare-fun b!2587033 () Bool)

(declare-fun e!1632198 () Regex!7665)

(assert (=> b!2587033 (= e!1632201 e!1632198)))

(assert (=> b!2587033 (= c!417109 ((_ is Star!7665) (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587034 () Bool)

(declare-fun e!1632199 () Regex!7665)

(assert (=> b!2587034 (= e!1632199 (Union!7665 (Concat!12409 call!167075 (regTwo!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) EmptyLang!7665))))

(declare-fun b!2587035 () Bool)

(assert (=> b!2587035 (= c!417111 (nullable!2570 (regOne!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> b!2587035 (= e!1632198 e!1632199)))

(declare-fun b!2587036 () Bool)

(assert (=> b!2587036 (= e!1632200 e!1632202)))

(declare-fun c!417110 () Bool)

(assert (=> b!2587036 (= c!417110 ((_ is ElementMatch!7665) (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587037 () Bool)

(assert (=> b!2587037 (= e!1632201 (Union!7665 call!167074 call!167076))))

(declare-fun bm!167071 () Bool)

(assert (=> bm!167071 (= call!167073 call!167074)))

(declare-fun b!2587038 () Bool)

(assert (=> b!2587038 (= e!1632199 (Union!7665 (Concat!12409 call!167076 (regTwo!15842 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) call!167075))))

(declare-fun b!2587039 () Bool)

(assert (=> b!2587039 (= e!1632198 (Concat!12409 call!167073 (ite c!417026 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(assert (= (and d!732652 c!417107) b!2587031))

(assert (= (and d!732652 (not c!417107)) b!2587036))

(assert (= (and b!2587036 c!417110) b!2587030))

(assert (= (and b!2587036 (not c!417110)) b!2587032))

(assert (= (and b!2587032 c!417108) b!2587037))

(assert (= (and b!2587032 (not c!417108)) b!2587033))

(assert (= (and b!2587033 c!417109) b!2587039))

(assert (= (and b!2587033 (not c!417109)) b!2587035))

(assert (= (and b!2587035 c!417111) b!2587038))

(assert (= (and b!2587035 (not c!417111)) b!2587034))

(assert (= (or b!2587038 b!2587034) bm!167069))

(assert (= (or b!2587039 bm!167069) bm!167071))

(assert (= (or b!2587037 b!2587038) bm!167068))

(assert (= (or b!2587037 bm!167071) bm!167070))

(assert (=> bm!167068 m!2922007))

(declare-fun m!2923213 () Bool)

(assert (=> bm!167068 m!2923213))

(assert (=> bm!167070 m!2922007))

(declare-fun m!2923215 () Bool)

(assert (=> bm!167070 m!2923215))

(declare-fun m!2923217 () Bool)

(assert (=> d!732652 m!2923217))

(declare-fun m!2923219 () Bool)

(assert (=> d!732652 m!2923219))

(declare-fun m!2923221 () Bool)

(assert (=> b!2587035 m!2923221))

(assert (=> bm!167016 d!732652))

(declare-fun d!732654 () Bool)

(declare-fun c!417112 () Bool)

(assert (=> d!732654 (= c!417112 ((_ is Nil!29765) (t!212230 lt!909327)))))

(declare-fun e!1632203 () (InoxSet C!15488))

(assert (=> d!732654 (= (content!4114 (t!212230 lt!909327)) e!1632203)))

(declare-fun b!2587040 () Bool)

(assert (=> b!2587040 (= e!1632203 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587041 () Bool)

(assert (=> b!2587041 (= e!1632203 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (t!212230 lt!909327)) true) (content!4114 (t!212230 (t!212230 lt!909327)))))))

(assert (= (and d!732654 c!417112) b!2587040))

(assert (= (and d!732654 (not c!417112)) b!2587041))

(declare-fun m!2923223 () Bool)

(assert (=> b!2587041 m!2923223))

(declare-fun m!2923225 () Bool)

(assert (=> b!2587041 m!2923225))

(assert (=> b!2586635 d!732654))

(declare-fun d!732656 () Bool)

(declare-fun lt!909761 () Int)

(assert (=> d!732656 (>= lt!909761 0)))

(declare-fun e!1632204 () Int)

(assert (=> d!732656 (= lt!909761 e!1632204)))

(declare-fun c!417113 () Bool)

(assert (=> d!732656 (= c!417113 ((_ is Nil!29765) (t!212230 (_2!17401 (get!9380 lt!909268)))))))

(assert (=> d!732656 (= (size!23078 (t!212230 (_2!17401 (get!9380 lt!909268)))) lt!909761)))

(declare-fun b!2587042 () Bool)

(assert (=> b!2587042 (= e!1632204 0)))

(declare-fun b!2587043 () Bool)

(assert (=> b!2587043 (= e!1632204 (+ 1 (size!23078 (t!212230 (t!212230 (_2!17401 (get!9380 lt!909268)))))))))

(assert (= (and d!732656 c!417113) b!2587042))

(assert (= (and d!732656 (not c!417113)) b!2587043))

(declare-fun m!2923227 () Bool)

(assert (=> b!2587043 m!2923227))

(assert (=> b!2586111 d!732656))

(declare-fun d!732658 () Bool)

(assert (=> d!732658 (= input!3654 Nil!29765)))

(declare-fun lt!909764 () Unit!43600)

(declare-fun choose!15246 (List!29865 List!29865 List!29865) Unit!43600)

(assert (=> d!732658 (= lt!909764 (choose!15246 input!3654 Nil!29765 input!3654))))

(assert (=> d!732658 (isPrefix!2421 input!3654 input!3654)))

(assert (=> d!732658 (= (lemmaIsPrefixSameLengthThenSameList!406 input!3654 Nil!29765 input!3654) lt!909764)))

(declare-fun bs!471831 () Bool)

(assert (= bs!471831 d!732658))

(declare-fun m!2923229 () Bool)

(assert (=> bs!471831 m!2923229))

(assert (=> bs!471831 m!2922089))

(assert (=> bm!167013 d!732658))

(declare-fun d!732660 () Bool)

(declare-fun res!1087910 () Bool)

(declare-fun e!1632205 () Bool)

(assert (=> d!732660 (=> res!1087910 e!1632205)))

(assert (=> d!732660 (= res!1087910 ((_ is Nil!29766) rs!798))))

(assert (=> d!732660 (= (forall!6067 rs!798 lambda!95830) e!1632205)))

(declare-fun b!2587044 () Bool)

(declare-fun e!1632206 () Bool)

(assert (=> b!2587044 (= e!1632205 e!1632206)))

(declare-fun res!1087911 () Bool)

(assert (=> b!2587044 (=> (not res!1087911) (not e!1632206))))

(assert (=> b!2587044 (= res!1087911 (dynLambda!12596 lambda!95830 (h!35186 rs!798)))))

(declare-fun b!2587045 () Bool)

(assert (=> b!2587045 (= e!1632206 (forall!6067 (t!212231 rs!798) lambda!95830))))

(assert (= (and d!732660 (not res!1087910)) b!2587044))

(assert (= (and b!2587044 res!1087911) b!2587045))

(declare-fun b_lambda!76903 () Bool)

(assert (=> (not b_lambda!76903) (not b!2587044)))

(declare-fun m!2923231 () Bool)

(assert (=> b!2587044 m!2923231))

(declare-fun m!2923233 () Bool)

(assert (=> b!2587045 m!2923233))

(assert (=> d!732464 d!732660))

(declare-fun b!2587046 () Bool)

(declare-fun e!1632211 () Bool)

(declare-fun call!167079 () Bool)

(assert (=> b!2587046 (= e!1632211 call!167079)))

(declare-fun d!732662 () Bool)

(declare-fun res!1087916 () Bool)

(declare-fun e!1632207 () Bool)

(assert (=> d!732662 (=> res!1087916 e!1632207)))

(assert (=> d!732662 (= res!1087916 ((_ is ElementMatch!7665) (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))

(assert (=> d!732662 (= (validRegex!3279 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))) e!1632207)))

(declare-fun bm!167072 () Bool)

(declare-fun call!167077 () Bool)

(declare-fun call!167078 () Bool)

(assert (=> bm!167072 (= call!167077 call!167078)))

(declare-fun b!2587047 () Bool)

(declare-fun e!1632209 () Bool)

(declare-fun e!1632213 () Bool)

(assert (=> b!2587047 (= e!1632209 e!1632213)))

(declare-fun res!1087915 () Bool)

(assert (=> b!2587047 (=> (not res!1087915) (not e!1632213))))

(assert (=> b!2587047 (= res!1087915 call!167077)))

(declare-fun bm!167073 () Bool)

(declare-fun c!417115 () Bool)

(declare-fun c!417114 () Bool)

(assert (=> bm!167073 (= call!167078 (validRegex!3279 (ite c!417115 (reg!7994 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))) (ite c!417114 (regOne!15843 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))) (regOne!15842 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))))

(declare-fun b!2587048 () Bool)

(declare-fun res!1087912 () Bool)

(assert (=> b!2587048 (=> (not res!1087912) (not e!1632211))))

(assert (=> b!2587048 (= res!1087912 call!167077)))

(declare-fun e!1632210 () Bool)

(assert (=> b!2587048 (= e!1632210 e!1632211)))

(declare-fun b!2587049 () Bool)

(assert (=> b!2587049 (= e!1632213 call!167079)))

(declare-fun b!2587050 () Bool)

(declare-fun res!1087913 () Bool)

(assert (=> b!2587050 (=> res!1087913 e!1632209)))

(assert (=> b!2587050 (= res!1087913 (not ((_ is Concat!12409) (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))

(assert (=> b!2587050 (= e!1632210 e!1632209)))

(declare-fun b!2587051 () Bool)

(declare-fun e!1632208 () Bool)

(assert (=> b!2587051 (= e!1632208 e!1632210)))

(assert (=> b!2587051 (= c!417114 ((_ is Union!7665) (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))

(declare-fun bm!167074 () Bool)

(assert (=> bm!167074 (= call!167079 (validRegex!3279 (ite c!417114 (regTwo!15843 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))) (regTwo!15842 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))))

(declare-fun b!2587052 () Bool)

(assert (=> b!2587052 (= e!1632207 e!1632208)))

(assert (=> b!2587052 (= c!417115 ((_ is Star!7665) (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))

(declare-fun b!2587053 () Bool)

(declare-fun e!1632212 () Bool)

(assert (=> b!2587053 (= e!1632212 call!167078)))

(declare-fun b!2587054 () Bool)

(assert (=> b!2587054 (= e!1632208 e!1632212)))

(declare-fun res!1087914 () Bool)

(assert (=> b!2587054 (= res!1087914 (not (nullable!2570 (reg!7994 (ite c!417069 (regTwo!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regTwo!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))))

(assert (=> b!2587054 (=> (not res!1087914) (not e!1632212))))

(assert (= (and d!732662 (not res!1087916)) b!2587052))

(assert (= (and b!2587052 c!417115) b!2587054))

(assert (= (and b!2587052 (not c!417115)) b!2587051))

(assert (= (and b!2587054 res!1087914) b!2587053))

(assert (= (and b!2587051 c!417114) b!2587048))

(assert (= (and b!2587051 (not c!417114)) b!2587050))

(assert (= (and b!2587048 res!1087912) b!2587046))

(assert (= (and b!2587050 (not res!1087913)) b!2587047))

(assert (= (and b!2587047 res!1087915) b!2587049))

(assert (= (or b!2587048 b!2587047) bm!167072))

(assert (= (or b!2587046 b!2587049) bm!167074))

(assert (= (or b!2587053 bm!167072) bm!167073))

(declare-fun m!2923235 () Bool)

(assert (=> bm!167073 m!2923235))

(declare-fun m!2923237 () Bool)

(assert (=> bm!167074 m!2923237))

(declare-fun m!2923239 () Bool)

(assert (=> b!2587054 m!2923239))

(assert (=> bm!167048 d!732662))

(declare-fun d!732664 () Bool)

(assert (=> d!732664 (= (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) ((_ is Nil!29765) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(assert (=> b!2586533 d!732664))

(declare-fun d!732666 () Bool)

(assert (=> d!732666 (= (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> b!2586533 d!732666))

(declare-fun d!732668 () Bool)

(declare-fun lt!909765 () Bool)

(assert (=> d!732668 (= lt!909765 (select (content!4113 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909425)))))))

(declare-fun e!1632214 () Bool)

(assert (=> d!732668 (= lt!909765 e!1632214)))

(declare-fun res!1087917 () Bool)

(assert (=> d!732668 (=> (not res!1087917) (not e!1632214))))

(assert (=> d!732668 (= res!1087917 ((_ is Cons!29766) (t!212231 rules!4580)))))

(assert (=> d!732668 (= (contains!5325 (t!212231 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909425)))) lt!909765)))

(declare-fun b!2587055 () Bool)

(declare-fun e!1632215 () Bool)

(assert (=> b!2587055 (= e!1632214 e!1632215)))

(declare-fun res!1087918 () Bool)

(assert (=> b!2587055 (=> res!1087918 e!1632215)))

(assert (=> b!2587055 (= res!1087918 (= (h!35186 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909425)))))))

(declare-fun b!2587056 () Bool)

(assert (=> b!2587056 (= e!1632215 (contains!5325 (t!212231 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909425)))))))

(assert (= (and d!732668 res!1087917) b!2587055))

(assert (= (and b!2587055 (not res!1087918)) b!2587056))

(assert (=> d!732668 m!2922871))

(declare-fun m!2923241 () Bool)

(assert (=> d!732668 m!2923241))

(declare-fun m!2923243 () Bool)

(assert (=> b!2587056 m!2923243))

(assert (=> b!2586092 d!732668))

(declare-fun d!732670 () Bool)

(assert (=> d!732670 (= (get!9380 lt!909425) (v!32038 lt!909425))))

(assert (=> b!2586092 d!732670))

(declare-fun d!732672 () Bool)

(declare-fun res!1087919 () Bool)

(declare-fun e!1632216 () Bool)

(assert (=> d!732672 (=> (not res!1087919) (not e!1632216))))

(assert (=> d!732672 (= res!1087919 (validRegex!3279 (regex!4521 (h!35186 rs!798))))))

(assert (=> d!732672 (= (ruleValid!1527 thiss!28211 (h!35186 rs!798)) e!1632216)))

(declare-fun b!2587057 () Bool)

(declare-fun res!1087920 () Bool)

(assert (=> b!2587057 (=> (not res!1087920) (not e!1632216))))

(assert (=> b!2587057 (= res!1087920 (not (nullable!2570 (regex!4521 (h!35186 rs!798)))))))

(declare-fun b!2587058 () Bool)

(assert (=> b!2587058 (= e!1632216 (not (= (tag!5011 (h!35186 rs!798)) (String!33124 ""))))))

(assert (= (and d!732672 res!1087919) b!2587057))

(assert (= (and b!2587057 res!1087920) b!2587058))

(declare-fun m!2923245 () Bool)

(assert (=> d!732672 m!2923245))

(declare-fun m!2923247 () Bool)

(assert (=> b!2587057 m!2923247))

(assert (=> bs!471785 d!732672))

(declare-fun d!732674 () Bool)

(declare-fun lt!909768 () Bool)

(declare-fun content!4117 (List!29868) (InoxSet String!33123))

(assert (=> d!732674 (= lt!909768 (select (content!4117 Nil!29768) (tag!5011 (h!35186 rules!4580))))))

(declare-fun e!1632222 () Bool)

(assert (=> d!732674 (= lt!909768 e!1632222)))

(declare-fun res!1087925 () Bool)

(assert (=> d!732674 (=> (not res!1087925) (not e!1632222))))

(assert (=> d!732674 (= res!1087925 ((_ is Cons!29768) Nil!29768))))

(assert (=> d!732674 (= (contains!5327 Nil!29768 (tag!5011 (h!35186 rules!4580))) lt!909768)))

(declare-fun b!2587063 () Bool)

(declare-fun e!1632221 () Bool)

(assert (=> b!2587063 (= e!1632222 e!1632221)))

(declare-fun res!1087926 () Bool)

(assert (=> b!2587063 (=> res!1087926 e!1632221)))

(assert (=> b!2587063 (= res!1087926 (= (h!35188 Nil!29768) (tag!5011 (h!35186 rules!4580))))))

(declare-fun b!2587064 () Bool)

(assert (=> b!2587064 (= e!1632221 (contains!5327 (t!212281 Nil!29768) (tag!5011 (h!35186 rules!4580))))))

(assert (= (and d!732674 res!1087925) b!2587063))

(assert (= (and b!2587063 (not res!1087926)) b!2587064))

(declare-fun m!2923249 () Bool)

(assert (=> d!732674 m!2923249))

(declare-fun m!2923251 () Bool)

(assert (=> d!732674 m!2923251))

(declare-fun m!2923253 () Bool)

(assert (=> b!2587064 m!2923253))

(assert (=> b!2586520 d!732674))

(declare-fun d!732676 () Bool)

(declare-fun choose!15247 (Int) Bool)

(assert (=> d!732676 (= (Forall!1167 lambda!95807) (choose!15247 lambda!95807))))

(declare-fun bs!471832 () Bool)

(assert (= bs!471832 d!732676))

(declare-fun m!2923255 () Bool)

(assert (=> bs!471832 m!2923255))

(assert (=> d!732218 d!732676))

(declare-fun d!732678 () Bool)

(declare-fun lt!909769 () Bool)

(assert (=> d!732678 (= lt!909769 (select (content!4113 (t!212231 (t!212231 rules!4580))) rule!570))))

(declare-fun e!1632223 () Bool)

(assert (=> d!732678 (= lt!909769 e!1632223)))

(declare-fun res!1087927 () Bool)

(assert (=> d!732678 (=> (not res!1087927) (not e!1632223))))

(assert (=> d!732678 (= res!1087927 ((_ is Cons!29766) (t!212231 (t!212231 rules!4580))))))

(assert (=> d!732678 (= (contains!5325 (t!212231 (t!212231 rules!4580)) rule!570) lt!909769)))

(declare-fun b!2587065 () Bool)

(declare-fun e!1632224 () Bool)

(assert (=> b!2587065 (= e!1632223 e!1632224)))

(declare-fun res!1087928 () Bool)

(assert (=> b!2587065 (=> res!1087928 e!1632224)))

(assert (=> b!2587065 (= res!1087928 (= (h!35186 (t!212231 (t!212231 rules!4580))) rule!570))))

(declare-fun b!2587066 () Bool)

(assert (=> b!2587066 (= e!1632224 (contains!5325 (t!212231 (t!212231 (t!212231 rules!4580))) rule!570))))

(assert (= (and d!732678 res!1087927) b!2587065))

(assert (= (and b!2587065 (not res!1087928)) b!2587066))

(declare-fun m!2923257 () Bool)

(assert (=> d!732678 m!2923257))

(declare-fun m!2923259 () Bool)

(assert (=> d!732678 m!2923259))

(declare-fun m!2923261 () Bool)

(assert (=> b!2587066 m!2923261))

(assert (=> b!2586648 d!732678))

(declare-fun d!732680 () Bool)

(assert (=> d!732680 (= (head!5862 (tail!4135 lt!909247)) (h!35185 (tail!4135 lt!909247)))))

(assert (=> b!2586154 d!732680))

(declare-fun d!732682 () Bool)

(assert (=> d!732682 (= (nullable!2570 (regOne!15842 (regex!4521 rule!570))) (nullableFct!788 (regOne!15842 (regex!4521 rule!570))))))

(declare-fun bs!471833 () Bool)

(assert (= bs!471833 d!732682))

(declare-fun m!2923263 () Bool)

(assert (=> bs!471833 m!2923263))

(assert (=> b!2586190 d!732682))

(declare-fun b!2587067 () Bool)

(declare-fun e!1632226 () Bool)

(assert (=> b!2587067 (= e!1632226 (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun d!732684 () Bool)

(declare-fun c!417116 () Bool)

(assert (=> d!732684 (= c!417116 ((_ is IntegerValue!14229) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun e!1632225 () Bool)

(assert (=> d!732684 (= (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))) e!1632225)))

(declare-fun b!2587068 () Bool)

(assert (=> b!2587068 (= e!1632225 (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587069 () Bool)

(declare-fun e!1632227 () Bool)

(assert (=> b!2587069 (= e!1632225 e!1632227)))

(declare-fun c!417117 () Bool)

(assert (=> b!2587069 (= c!417117 ((_ is IntegerValue!14230) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587070 () Bool)

(assert (=> b!2587070 (= e!1632227 (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587071 () Bool)

(declare-fun res!1087929 () Bool)

(assert (=> b!2587071 (=> res!1087929 e!1632226)))

(assert (=> b!2587071 (= res!1087929 (not ((_ is IntegerValue!14231) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))))))))

(assert (=> b!2587071 (= e!1632227 e!1632226)))

(assert (= (and d!732684 c!417116) b!2587068))

(assert (= (and d!732684 (not c!417116)) b!2587069))

(assert (= (and b!2587069 c!417117) b!2587070))

(assert (= (and b!2587069 (not c!417117)) b!2587071))

(assert (= (and b!2587071 (not res!1087929)) b!2587067))

(declare-fun m!2923265 () Bool)

(assert (=> b!2587067 m!2923265))

(declare-fun m!2923267 () Bool)

(assert (=> b!2587068 m!2923267))

(declare-fun m!2923269 () Bool)

(assert (=> b!2587070 m!2923269))

(assert (=> tb!140997 d!732684))

(declare-fun d!732686 () Bool)

(declare-fun lt!909770 () Int)

(assert (=> d!732686 (>= lt!909770 0)))

(declare-fun e!1632228 () Int)

(assert (=> d!732686 (= lt!909770 e!1632228)))

(declare-fun c!417118 () Bool)

(assert (=> d!732686 (= c!417118 ((_ is Nil!29765) (t!212230 lt!909327)))))

(assert (=> d!732686 (= (size!23078 (t!212230 lt!909327)) lt!909770)))

(declare-fun b!2587072 () Bool)

(assert (=> b!2587072 (= e!1632228 0)))

(declare-fun b!2587073 () Bool)

(assert (=> b!2587073 (= e!1632228 (+ 1 (size!23078 (t!212230 (t!212230 lt!909327)))))))

(assert (= (and d!732686 c!417118) b!2587072))

(assert (= (and d!732686 (not c!417118)) b!2587073))

(declare-fun m!2923271 () Bool)

(assert (=> b!2587073 m!2923271))

(assert (=> b!2586198 d!732686))

(assert (=> b!2586100 d!732670))

(declare-fun d!732688 () Bool)

(assert (=> d!732688 (= (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425))))) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun b_lambda!76905 () Bool)

(assert (=> (not b_lambda!76905) (not d!732688)))

(declare-fun t!212528 () Bool)

(declare-fun tb!141129 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212528) tb!141129))

(declare-fun result!175416 () Bool)

(assert (=> tb!141129 (= result!175416 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425)))))))))

(declare-fun m!2923273 () Bool)

(assert (=> tb!141129 m!2923273))

(assert (=> d!732688 t!212528))

(declare-fun b_and!189819 () Bool)

(assert (= b_and!189779 (and (=> t!212528 result!175416) b_and!189819)))

(declare-fun t!212530 () Bool)

(declare-fun tb!141131 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212530) tb!141131))

(declare-fun result!175418 () Bool)

(assert (= result!175418 result!175416))

(assert (=> d!732688 t!212530))

(declare-fun b_and!189821 () Bool)

(assert (= b_and!189785 (and (=> t!212530 result!175418) b_and!189821)))

(declare-fun t!212532 () Bool)

(declare-fun tb!141133 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212532) tb!141133))

(declare-fun result!175420 () Bool)

(assert (= result!175420 result!175416))

(assert (=> d!732688 t!212532))

(declare-fun b_and!189823 () Bool)

(assert (= b_and!189795 (and (=> t!212532 result!175420) b_and!189823)))

(declare-fun tb!141135 () Bool)

(declare-fun t!212534 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212534) tb!141135))

(declare-fun result!175422 () Bool)

(assert (= result!175422 result!175416))

(assert (=> d!732688 t!212534))

(declare-fun b_and!189825 () Bool)

(assert (= b_and!189791 (and (=> t!212534 result!175422) b_and!189825)))

(declare-fun tb!141137 () Bool)

(declare-fun t!212536 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212536) tb!141137))

(declare-fun result!175424 () Bool)

(assert (= result!175424 result!175416))

(assert (=> d!732688 t!212536))

(declare-fun b_and!189827 () Bool)

(assert (= b_and!189787 (and (=> t!212536 result!175424) b_and!189827)))

(declare-fun t!212538 () Bool)

(declare-fun tb!141139 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212538) tb!141139))

(declare-fun result!175426 () Bool)

(assert (= result!175426 result!175416))

(assert (=> d!732688 t!212538))

(declare-fun b_and!189829 () Bool)

(assert (= b_and!189789 (and (=> t!212538 result!175426) b_and!189829)))

(declare-fun t!212540 () Bool)

(declare-fun tb!141141 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212540) tb!141141))

(declare-fun result!175428 () Bool)

(assert (= result!175428 result!175416))

(assert (=> d!732688 t!212540))

(declare-fun b_and!189831 () Bool)

(assert (= b_and!189781 (and (=> t!212540 result!175428) b_and!189831)))

(declare-fun t!212542 () Bool)

(declare-fun tb!141143 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212542) tb!141143))

(declare-fun result!175430 () Bool)

(assert (= result!175430 result!175416))

(assert (=> d!732688 t!212542))

(declare-fun b_and!189833 () Bool)

(assert (= b_and!189783 (and (=> t!212542 result!175430) b_and!189833)))

(assert (=> d!732688 m!2922229))

(declare-fun m!2923275 () Bool)

(assert (=> d!732688 m!2923275))

(assert (=> b!2586100 d!732688))

(declare-fun d!732690 () Bool)

(assert (=> d!732690 (= (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425)))) (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909425)))))))

(declare-fun bs!471834 () Bool)

(assert (= bs!471834 d!732690))

(declare-fun m!2923277 () Bool)

(assert (=> bs!471834 m!2923277))

(assert (=> b!2586100 d!732690))

(declare-fun d!732692 () Bool)

(assert (=> d!732692 (= (Forall!1167 lambda!95838) (choose!15247 lambda!95838))))

(declare-fun bs!471835 () Bool)

(assert (= bs!471835 d!732692))

(declare-fun m!2923279 () Bool)

(assert (=> bs!471835 m!2923279))

(assert (=> d!732538 d!732692))

(declare-fun d!732694 () Bool)

(assert (=> d!732694 (= (head!5862 (tail!4135 lt!909246)) (h!35185 (tail!4135 lt!909246)))))

(assert (=> b!2586495 d!732694))

(declare-fun b!2587074 () Bool)

(declare-fun e!1632231 () Bool)

(assert (=> b!2587074 (= e!1632231 (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun d!732696 () Bool)

(declare-fun c!417119 () Bool)

(assert (=> d!732696 (= c!417119 ((_ is IntegerValue!14229) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun e!1632230 () Bool)

(assert (=> d!732696 (= (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))) e!1632230)))

(declare-fun b!2587075 () Bool)

(assert (=> b!2587075 (= e!1632230 (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun b!2587076 () Bool)

(declare-fun e!1632232 () Bool)

(assert (=> b!2587076 (= e!1632230 e!1632232)))

(declare-fun c!417120 () Bool)

(assert (=> b!2587076 (= c!417120 ((_ is IntegerValue!14230) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun b!2587077 () Bool)

(assert (=> b!2587077 (= e!1632232 (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun b!2587078 () Bool)

(declare-fun res!1087930 () Bool)

(assert (=> b!2587078 (=> res!1087930 e!1632231)))

(assert (=> b!2587078 (= res!1087930 (not ((_ is IntegerValue!14231) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))))

(assert (=> b!2587078 (= e!1632232 e!1632231)))

(assert (= (and d!732696 c!417119) b!2587075))

(assert (= (and d!732696 (not c!417119)) b!2587076))

(assert (= (and b!2587076 c!417120) b!2587077))

(assert (= (and b!2587076 (not c!417120)) b!2587078))

(assert (= (and b!2587078 (not res!1087930)) b!2587074))

(declare-fun m!2923281 () Bool)

(assert (=> b!2587074 m!2923281))

(declare-fun m!2923283 () Bool)

(assert (=> b!2587075 m!2923283))

(declare-fun m!2923285 () Bool)

(assert (=> b!2587077 m!2923285))

(assert (=> tb!141033 d!732696))

(declare-fun d!732698 () Bool)

(assert (=> d!732698 (= (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) ((_ is Nil!29765) (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(assert (=> b!2586216 d!732698))

(declare-fun d!732700 () Bool)

(assert (=> d!732700 (= (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (t!212230 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2586216 d!732700))

(assert (=> b!2586542 d!732230))

(declare-fun d!732702 () Bool)

(declare-fun c!417121 () Bool)

(assert (=> d!732702 (= c!417121 ((_ is Node!9287) (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun e!1632233 () Bool)

(assert (=> d!732702 (= (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) e!1632233)))

(declare-fun b!2587079 () Bool)

(assert (=> b!2587079 (= e!1632233 (inv!40202 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun b!2587080 () Bool)

(declare-fun e!1632234 () Bool)

(assert (=> b!2587080 (= e!1632233 e!1632234)))

(declare-fun res!1087931 () Bool)

(assert (=> b!2587080 (= res!1087931 (not ((_ is Leaf!14169) (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))))

(assert (=> b!2587080 (=> res!1087931 e!1632234)))

(declare-fun b!2587081 () Bool)

(assert (=> b!2587081 (= e!1632234 (inv!40203 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (= (and d!732702 c!417121) b!2587079))

(assert (= (and d!732702 (not c!417121)) b!2587080))

(assert (= (and b!2587080 (not res!1087931)) b!2587081))

(declare-fun m!2923287 () Bool)

(assert (=> b!2587079 m!2923287))

(declare-fun m!2923289 () Bool)

(assert (=> b!2587081 m!2923289))

(assert (=> b!2586749 d!732702))

(declare-fun d!732704 () Bool)

(declare-fun c!417122 () Bool)

(assert (=> d!732704 (= c!417122 ((_ is Node!9287) (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun e!1632235 () Bool)

(assert (=> d!732704 (= (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) e!1632235)))

(declare-fun b!2587082 () Bool)

(assert (=> b!2587082 (= e!1632235 (inv!40202 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun b!2587083 () Bool)

(declare-fun e!1632236 () Bool)

(assert (=> b!2587083 (= e!1632235 e!1632236)))

(declare-fun res!1087932 () Bool)

(assert (=> b!2587083 (= res!1087932 (not ((_ is Leaf!14169) (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))))

(assert (=> b!2587083 (=> res!1087932 e!1632236)))

(declare-fun b!2587084 () Bool)

(assert (=> b!2587084 (= e!1632236 (inv!40203 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (= (and d!732704 c!417122) b!2587082))

(assert (= (and d!732704 (not c!417122)) b!2587083))

(assert (= (and b!2587083 (not res!1087932)) b!2587084))

(declare-fun m!2923291 () Bool)

(assert (=> b!2587082 m!2923291))

(declare-fun m!2923293 () Bool)

(assert (=> b!2587084 m!2923293))

(assert (=> b!2586749 d!732704))

(declare-fun d!732706 () Bool)

(assert (=> d!732706 (= (get!9380 lt!909429) (v!32038 lt!909429))))

(assert (=> b!2586109 d!732706))

(declare-fun d!732708 () Bool)

(declare-fun e!1632237 () Bool)

(assert (=> d!732708 e!1632237))

(declare-fun res!1087933 () Bool)

(assert (=> d!732708 (=> (not res!1087933) (not e!1632237))))

(declare-fun lt!909771 () BalanceConc!18188)

(assert (=> d!732708 (= res!1087933 (= (list!11253 lt!909771) lt!909343))))

(assert (=> d!732708 (= lt!909771 (BalanceConc!18189 (fromList!562 lt!909343)))))

(assert (=> d!732708 (= (fromListB!1430 lt!909343) lt!909771)))

(declare-fun b!2587085 () Bool)

(assert (=> b!2587085 (= e!1632237 (isBalanced!2834 (fromList!562 lt!909343)))))

(assert (= (and d!732708 res!1087933) b!2587085))

(declare-fun m!2923295 () Bool)

(assert (=> d!732708 m!2923295))

(declare-fun m!2923297 () Bool)

(assert (=> d!732708 m!2923297))

(assert (=> b!2587085 m!2923297))

(assert (=> b!2587085 m!2923297))

(declare-fun m!2923299 () Bool)

(assert (=> b!2587085 m!2923299))

(assert (=> d!732276 d!732708))

(assert (=> b!2586225 d!732230))

(declare-fun d!732710 () Bool)

(assert (=> d!732710 (= (isEmpty!17110 (tail!4135 (tail!4135 lt!909247))) ((_ is Nil!29765) (tail!4135 (tail!4135 lt!909247))))))

(assert (=> b!2586146 d!732710))

(declare-fun d!732712 () Bool)

(assert (=> d!732712 (= (tail!4135 (tail!4135 lt!909247)) (t!212230 (tail!4135 lt!909247)))))

(assert (=> b!2586146 d!732712))

(declare-fun bm!167075 () Bool)

(declare-fun call!167083 () Regex!7665)

(declare-fun c!417124 () Bool)

(assert (=> bm!167075 (= call!167083 (derivativeStep!2222 (ite c!417124 (regTwo!15843 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (regOne!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909247)))))

(declare-fun bm!167076 () Bool)

(declare-fun call!167082 () Regex!7665)

(declare-fun call!167080 () Regex!7665)

(assert (=> bm!167076 (= call!167082 call!167080)))

(declare-fun c!417127 () Bool)

(declare-fun c!417125 () Bool)

(declare-fun call!167081 () Regex!7665)

(declare-fun bm!167077 () Bool)

(assert (=> bm!167077 (= call!167081 (derivativeStep!2222 (ite c!417124 (regOne!15843 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (ite c!417125 (reg!7994 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (ite c!417127 (regTwo!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) (regOne!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) (head!5862 lt!909247)))))

(declare-fun b!2587086 () Bool)

(declare-fun e!1632242 () Regex!7665)

(assert (=> b!2587086 (= e!1632242 (ite (= (head!5862 lt!909247) (c!416820 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732714 () Bool)

(declare-fun lt!909772 () Regex!7665)

(assert (=> d!732714 (validRegex!3279 lt!909772)))

(declare-fun e!1632240 () Regex!7665)

(assert (=> d!732714 (= lt!909772 e!1632240)))

(declare-fun c!417123 () Bool)

(assert (=> d!732714 (= c!417123 (or ((_ is EmptyExpr!7665) (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))) ((_ is EmptyLang!7665) (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> d!732714 (validRegex!3279 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))

(assert (=> d!732714 (= (derivativeStep!2222 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 lt!909247)) lt!909772)))

(declare-fun b!2587087 () Bool)

(assert (=> b!2587087 (= e!1632240 EmptyLang!7665)))

(declare-fun b!2587088 () Bool)

(assert (=> b!2587088 (= c!417124 ((_ is Union!7665) (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun e!1632241 () Regex!7665)

(assert (=> b!2587088 (= e!1632242 e!1632241)))

(declare-fun b!2587089 () Bool)

(declare-fun e!1632238 () Regex!7665)

(assert (=> b!2587089 (= e!1632241 e!1632238)))

(assert (=> b!2587089 (= c!417125 ((_ is Star!7665) (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun e!1632239 () Regex!7665)

(declare-fun b!2587090 () Bool)

(assert (=> b!2587090 (= e!1632239 (Union!7665 (Concat!12409 call!167082 (regTwo!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) EmptyLang!7665))))

(declare-fun b!2587091 () Bool)

(assert (=> b!2587091 (= c!417127 (nullable!2570 (regOne!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> b!2587091 (= e!1632238 e!1632239)))

(declare-fun b!2587092 () Bool)

(assert (=> b!2587092 (= e!1632240 e!1632242)))

(declare-fun c!417126 () Bool)

(assert (=> b!2587092 (= c!417126 ((_ is ElementMatch!7665) (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587093 () Bool)

(assert (=> b!2587093 (= e!1632241 (Union!7665 call!167081 call!167083))))

(declare-fun bm!167078 () Bool)

(assert (=> bm!167078 (= call!167080 call!167081)))

(declare-fun b!2587094 () Bool)

(assert (=> b!2587094 (= e!1632239 (Union!7665 (Concat!12409 call!167083 (regTwo!15842 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) call!167082))))

(declare-fun b!2587095 () Bool)

(assert (=> b!2587095 (= e!1632238 (Concat!12409 call!167080 (ite c!416918 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(assert (= (and d!732714 c!417123) b!2587087))

(assert (= (and d!732714 (not c!417123)) b!2587092))

(assert (= (and b!2587092 c!417126) b!2587086))

(assert (= (and b!2587092 (not c!417126)) b!2587088))

(assert (= (and b!2587088 c!417124) b!2587093))

(assert (= (and b!2587088 (not c!417124)) b!2587089))

(assert (= (and b!2587089 c!417125) b!2587095))

(assert (= (and b!2587089 (not c!417125)) b!2587091))

(assert (= (and b!2587091 c!417127) b!2587094))

(assert (= (and b!2587091 (not c!417127)) b!2587090))

(assert (= (or b!2587094 b!2587090) bm!167076))

(assert (= (or b!2587095 bm!167076) bm!167078))

(assert (= (or b!2587093 b!2587094) bm!167075))

(assert (= (or b!2587093 bm!167078) bm!167077))

(assert (=> bm!167075 m!2921929))

(declare-fun m!2923301 () Bool)

(assert (=> bm!167075 m!2923301))

(assert (=> bm!167077 m!2921929))

(declare-fun m!2923303 () Bool)

(assert (=> bm!167077 m!2923303))

(declare-fun m!2923305 () Bool)

(assert (=> d!732714 m!2923305))

(declare-fun m!2923307 () Bool)

(assert (=> d!732714 m!2923307))

(declare-fun m!2923309 () Bool)

(assert (=> b!2587091 m!2923309))

(assert (=> bm!166962 d!732714))

(assert (=> b!2586101 d!732706))

(declare-fun d!732716 () Bool)

(declare-fun lt!909773 () Int)

(assert (=> d!732716 (>= lt!909773 0)))

(declare-fun e!1632243 () Int)

(assert (=> d!732716 (= lt!909773 e!1632243)))

(declare-fun c!417128 () Bool)

(assert (=> d!732716 (= c!417128 ((_ is Nil!29765) (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))))))

(assert (=> d!732716 (= (size!23078 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))) lt!909773)))

(declare-fun b!2587096 () Bool)

(assert (=> b!2587096 (= e!1632243 0)))

(declare-fun b!2587097 () Bool)

(assert (=> b!2587097 (= e!1632243 (+ 1 (size!23078 (t!212230 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))))))))

(assert (= (and d!732716 c!417128) b!2587096))

(assert (= (and d!732716 (not c!417128)) b!2587097))

(declare-fun m!2923311 () Bool)

(assert (=> b!2587097 m!2923311))

(assert (=> b!2586101 d!732716))

(declare-fun d!732718 () Bool)

(declare-fun lt!909774 () Int)

(assert (=> d!732718 (>= lt!909774 0)))

(declare-fun e!1632244 () Int)

(assert (=> d!732718 (= lt!909774 e!1632244)))

(declare-fun c!417129 () Bool)

(assert (=> d!732718 (= c!417129 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!732718 (= (size!23083 (t!212231 rs!798)) lt!909774)))

(declare-fun b!2587098 () Bool)

(assert (=> b!2587098 (= e!1632244 0)))

(declare-fun b!2587099 () Bool)

(assert (=> b!2587099 (= e!1632244 (+ 1 (size!23083 (t!212231 (t!212231 rs!798)))))))

(assert (= (and d!732718 c!417129) b!2587098))

(assert (= (and d!732718 (not c!417129)) b!2587099))

(declare-fun m!2923313 () Bool)

(assert (=> b!2587099 m!2923313))

(assert (=> b!2586476 d!732718))

(declare-fun b!2587100 () Bool)

(declare-fun e!1632245 () List!29865)

(assert (=> b!2587100 (= e!1632245 (_2!17401 (get!9380 lt!909381)))))

(declare-fun d!732720 () Bool)

(declare-fun e!1632246 () Bool)

(assert (=> d!732720 e!1632246))

(declare-fun res!1087934 () Bool)

(assert (=> d!732720 (=> (not res!1087934) (not e!1632246))))

(declare-fun lt!909775 () List!29865)

(assert (=> d!732720 (= res!1087934 (= (content!4114 lt!909775) ((_ map or) (content!4114 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (content!4114 (_2!17401 (get!9380 lt!909381))))))))

(assert (=> d!732720 (= lt!909775 e!1632245)))

(declare-fun c!417130 () Bool)

(assert (=> d!732720 (= c!417130 ((_ is Nil!29765) (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> d!732720 (= (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (_2!17401 (get!9380 lt!909381))) lt!909775)))

(declare-fun b!2587101 () Bool)

(assert (=> b!2587101 (= e!1632245 (Cons!29765 (h!35185 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (++!7311 (t!212230 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (_2!17401 (get!9380 lt!909381)))))))

(declare-fun b!2587102 () Bool)

(declare-fun res!1087935 () Bool)

(assert (=> b!2587102 (=> (not res!1087935) (not e!1632246))))

(assert (=> b!2587102 (= res!1087935 (= (size!23078 lt!909775) (+ (size!23078 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (size!23078 (_2!17401 (get!9380 lt!909381))))))))

(declare-fun b!2587103 () Bool)

(assert (=> b!2587103 (= e!1632246 (or (not (= (_2!17401 (get!9380 lt!909381)) Nil!29765)) (= lt!909775 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(assert (= (and d!732720 c!417130) b!2587100))

(assert (= (and d!732720 (not c!417130)) b!2587101))

(assert (= (and d!732720 res!1087934) b!2587102))

(assert (= (and b!2587102 res!1087935) b!2587103))

(declare-fun m!2923315 () Bool)

(assert (=> d!732720 m!2923315))

(declare-fun m!2923317 () Bool)

(assert (=> d!732720 m!2923317))

(assert (=> d!732720 m!2922915))

(declare-fun m!2923319 () Bool)

(assert (=> b!2587101 m!2923319))

(declare-fun m!2923321 () Bool)

(assert (=> b!2587102 m!2923321))

(declare-fun m!2923323 () Bool)

(assert (=> b!2587102 m!2923323))

(assert (=> b!2587102 m!2922101))

(assert (=> b!2586676 d!732720))

(declare-fun d!732722 () Bool)

(assert (=> d!732722 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> b!2586458 d!732722))

(declare-fun d!732724 () Bool)

(assert (=> d!732724 (= (nullable!2570 (reg!7994 (regex!4521 rule!570))) (nullableFct!788 (reg!7994 (regex!4521 rule!570))))))

(declare-fun bs!471836 () Bool)

(assert (= bs!471836 d!732724))

(declare-fun m!2923325 () Bool)

(assert (=> bs!471836 m!2923325))

(assert (=> b!2586611 d!732724))

(assert (=> d!732500 d!732132))

(declare-fun d!732726 () Bool)

(assert (=> d!732726 (= (isEmpty!17110 (tail!4135 (tail!4135 lt!909246))) ((_ is Nil!29765) (tail!4135 (tail!4135 lt!909246))))))

(assert (=> b!2586487 d!732726))

(declare-fun d!732728 () Bool)

(assert (=> d!732728 (= (tail!4135 (tail!4135 lt!909246)) (t!212230 (tail!4135 lt!909246)))))

(assert (=> b!2586487 d!732728))

(declare-fun bs!471837 () Bool)

(declare-fun d!732730 () Bool)

(assert (= bs!471837 (and d!732730 d!732534)))

(declare-fun lambda!95849 () Int)

(assert (=> bs!471837 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 token!562))))) (= lambda!95849 lambda!95837))))

(declare-fun bs!471838 () Bool)

(assert (= bs!471838 (and d!732730 d!732286)))

(assert (=> bs!471838 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (= lambda!95849 lambda!95813))))

(declare-fun bs!471839 () Bool)

(assert (= bs!471839 (and d!732730 d!732538)))

(assert (=> bs!471839 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (h!35186 rs!798)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rs!798))))) (= lambda!95849 lambda!95838))))

(declare-fun bs!471840 () Bool)

(assert (= bs!471840 (and d!732730 d!732218)))

(assert (=> bs!471840 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95849 lambda!95807))))

(declare-fun bs!471841 () Bool)

(assert (= bs!471841 (and d!732730 d!732492)))

(assert (=> bs!471841 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95849 lambda!95835))))

(assert (=> d!732730 true))

(assert (=> d!732730 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798))))) (dynLambda!12589 order!15843 lambda!95849))))

(assert (=> d!732730 true))

(assert (=> d!732730 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))) (dynLambda!12589 order!15843 lambda!95849))))

(assert (=> d!732730 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))) (Forall!1167 lambda!95849))))

(declare-fun bs!471842 () Bool)

(assert (= bs!471842 d!732730))

(declare-fun m!2923327 () Bool)

(assert (=> bs!471842 m!2923327))

(assert (=> d!732528 d!732730))

(declare-fun b!2587104 () Bool)

(declare-fun e!1632252 () Bool)

(declare-fun lt!909776 () Bool)

(assert (=> b!2587104 (= e!1632252 (not lt!909776))))

(declare-fun d!732732 () Bool)

(declare-fun e!1632253 () Bool)

(assert (=> d!732732 e!1632253))

(declare-fun c!417132 () Bool)

(assert (=> d!732732 (= c!417132 ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun e!1632247 () Bool)

(assert (=> d!732732 (= lt!909776 e!1632247)))

(declare-fun c!417131 () Bool)

(assert (=> d!732732 (= c!417131 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(assert (=> d!732732 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(assert (=> d!732732 (= (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) lt!909776)))

(declare-fun b!2587105 () Bool)

(declare-fun res!1087943 () Bool)

(declare-fun e!1632250 () Bool)

(assert (=> b!2587105 (=> (not res!1087943) (not e!1632250))))

(assert (=> b!2587105 (= res!1087943 (isEmpty!17110 (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun b!2587106 () Bool)

(assert (=> b!2587106 (= e!1632247 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))) (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun b!2587107 () Bool)

(declare-fun res!1087936 () Bool)

(assert (=> b!2587107 (=> (not res!1087936) (not e!1632250))))

(declare-fun call!167084 () Bool)

(assert (=> b!2587107 (= res!1087936 (not call!167084))))

(declare-fun b!2587108 () Bool)

(assert (=> b!2587108 (= e!1632253 (= lt!909776 call!167084))))

(declare-fun b!2587109 () Bool)

(declare-fun res!1087942 () Bool)

(declare-fun e!1632249 () Bool)

(assert (=> b!2587109 (=> res!1087942 e!1632249)))

(assert (=> b!2587109 (= res!1087942 (not (isEmpty!17110 (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))))

(declare-fun b!2587110 () Bool)

(declare-fun res!1087938 () Bool)

(declare-fun e!1632251 () Bool)

(assert (=> b!2587110 (=> res!1087938 e!1632251)))

(assert (=> b!2587110 (= res!1087938 e!1632250)))

(declare-fun res!1087941 () Bool)

(assert (=> b!2587110 (=> (not res!1087941) (not e!1632250))))

(assert (=> b!2587110 (= res!1087941 lt!909776)))

(declare-fun b!2587111 () Bool)

(declare-fun e!1632248 () Bool)

(assert (=> b!2587111 (= e!1632251 e!1632248)))

(declare-fun res!1087940 () Bool)

(assert (=> b!2587111 (=> (not res!1087940) (not e!1632248))))

(assert (=> b!2587111 (= res!1087940 (not lt!909776))))

(declare-fun b!2587112 () Bool)

(declare-fun res!1087939 () Bool)

(assert (=> b!2587112 (=> res!1087939 e!1632251)))

(assert (=> b!2587112 (= res!1087939 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))))

(assert (=> b!2587112 (= e!1632252 e!1632251)))

(declare-fun b!2587113 () Bool)

(assert (=> b!2587113 (= e!1632250 (= (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))))

(declare-fun b!2587114 () Bool)

(assert (=> b!2587114 (= e!1632247 (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun b!2587115 () Bool)

(assert (=> b!2587115 (= e!1632253 e!1632252)))

(declare-fun c!417133 () Bool)

(assert (=> b!2587115 (= c!417133 ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(declare-fun b!2587116 () Bool)

(assert (=> b!2587116 (= e!1632249 (not (= (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))))

(declare-fun bm!167079 () Bool)

(assert (=> bm!167079 (= call!167084 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587117 () Bool)

(assert (=> b!2587117 (= e!1632248 e!1632249)))

(declare-fun res!1087937 () Bool)

(assert (=> b!2587117 (=> res!1087937 e!1632249)))

(assert (=> b!2587117 (= res!1087937 call!167084)))

(assert (= (and d!732732 c!417131) b!2587114))

(assert (= (and d!732732 (not c!417131)) b!2587106))

(assert (= (and d!732732 c!417132) b!2587108))

(assert (= (and d!732732 (not c!417132)) b!2587115))

(assert (= (and b!2587115 c!417133) b!2587104))

(assert (= (and b!2587115 (not c!417133)) b!2587112))

(assert (= (and b!2587112 (not res!1087939)) b!2587110))

(assert (= (and b!2587110 res!1087941) b!2587107))

(assert (= (and b!2587107 res!1087936) b!2587105))

(assert (= (and b!2587105 res!1087943) b!2587113))

(assert (= (and b!2587110 (not res!1087938)) b!2587111))

(assert (= (and b!2587111 res!1087940) b!2587117))

(assert (= (and b!2587117 (not res!1087937)) b!2587109))

(assert (= (and b!2587109 (not res!1087942)) b!2587116))

(assert (= (or b!2587108 b!2587107 b!2587117) bm!167079))

(assert (=> bm!167079 m!2922793))

(assert (=> bm!167079 m!2922797))

(assert (=> b!2587106 m!2922793))

(declare-fun m!2923329 () Bool)

(assert (=> b!2587106 m!2923329))

(assert (=> b!2587106 m!2922791))

(assert (=> b!2587106 m!2923329))

(declare-fun m!2923331 () Bool)

(assert (=> b!2587106 m!2923331))

(assert (=> b!2587106 m!2922793))

(declare-fun m!2923333 () Bool)

(assert (=> b!2587106 m!2923333))

(assert (=> b!2587106 m!2923331))

(assert (=> b!2587106 m!2923333))

(declare-fun m!2923335 () Bool)

(assert (=> b!2587106 m!2923335))

(assert (=> b!2587113 m!2922793))

(assert (=> b!2587113 m!2923329))

(assert (=> b!2587105 m!2922793))

(assert (=> b!2587105 m!2923333))

(assert (=> b!2587105 m!2923333))

(declare-fun m!2923337 () Bool)

(assert (=> b!2587105 m!2923337))

(assert (=> b!2587116 m!2922793))

(assert (=> b!2587116 m!2923329))

(assert (=> d!732732 m!2922793))

(assert (=> d!732732 m!2922797))

(assert (=> d!732732 m!2922791))

(declare-fun m!2923339 () Bool)

(assert (=> d!732732 m!2923339))

(assert (=> b!2587109 m!2922793))

(assert (=> b!2587109 m!2923333))

(assert (=> b!2587109 m!2923333))

(assert (=> b!2587109 m!2923337))

(assert (=> b!2587114 m!2922791))

(declare-fun m!2923341 () Bool)

(assert (=> b!2587114 m!2923341))

(assert (=> b!2586534 d!732732))

(declare-fun c!417135 () Bool)

(declare-fun bm!167080 () Bool)

(declare-fun call!167088 () Regex!7665)

(assert (=> bm!167080 (= call!167088 (derivativeStep!2222 (ite c!417135 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun bm!167081 () Bool)

(declare-fun call!167087 () Regex!7665)

(declare-fun call!167085 () Regex!7665)

(assert (=> bm!167081 (= call!167087 call!167085)))

(declare-fun c!417138 () Bool)

(declare-fun bm!167082 () Bool)

(declare-fun call!167086 () Regex!7665)

(declare-fun c!417136 () Bool)

(assert (=> bm!167082 (= call!167086 (derivativeStep!2222 (ite c!417135 (regOne!15843 (regex!4521 rule!570)) (ite c!417136 (reg!7994 (regex!4521 rule!570)) (ite c!417138 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587118 () Bool)

(declare-fun e!1632258 () Regex!7665)

(assert (=> b!2587118 (= e!1632258 (ite (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (c!416820 (regex!4521 rule!570))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732734 () Bool)

(declare-fun lt!909777 () Regex!7665)

(assert (=> d!732734 (validRegex!3279 lt!909777)))

(declare-fun e!1632256 () Regex!7665)

(assert (=> d!732734 (= lt!909777 e!1632256)))

(declare-fun c!417134 () Bool)

(assert (=> d!732734 (= c!417134 (or ((_ is EmptyExpr!7665) (regex!4521 rule!570)) ((_ is EmptyLang!7665) (regex!4521 rule!570))))))

(assert (=> d!732734 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732734 (= (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) lt!909777)))

(declare-fun b!2587119 () Bool)

(assert (=> b!2587119 (= e!1632256 EmptyLang!7665)))

(declare-fun b!2587120 () Bool)

(assert (=> b!2587120 (= c!417135 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun e!1632257 () Regex!7665)

(assert (=> b!2587120 (= e!1632258 e!1632257)))

(declare-fun b!2587121 () Bool)

(declare-fun e!1632254 () Regex!7665)

(assert (=> b!2587121 (= e!1632257 e!1632254)))

(assert (=> b!2587121 (= c!417136 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2587122 () Bool)

(declare-fun e!1632255 () Regex!7665)

(assert (=> b!2587122 (= e!1632255 (Union!7665 (Concat!12409 call!167087 (regTwo!15842 (regex!4521 rule!570))) EmptyLang!7665))))

(declare-fun b!2587123 () Bool)

(assert (=> b!2587123 (= c!417138 (nullable!2570 (regOne!15842 (regex!4521 rule!570))))))

(assert (=> b!2587123 (= e!1632254 e!1632255)))

(declare-fun b!2587124 () Bool)

(assert (=> b!2587124 (= e!1632256 e!1632258)))

(declare-fun c!417137 () Bool)

(assert (=> b!2587124 (= c!417137 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(declare-fun b!2587125 () Bool)

(assert (=> b!2587125 (= e!1632257 (Union!7665 call!167086 call!167088))))

(declare-fun bm!167083 () Bool)

(assert (=> bm!167083 (= call!167085 call!167086)))

(declare-fun b!2587126 () Bool)

(assert (=> b!2587126 (= e!1632255 (Union!7665 (Concat!12409 call!167088 (regTwo!15842 (regex!4521 rule!570))) call!167087))))

(declare-fun b!2587127 () Bool)

(assert (=> b!2587127 (= e!1632254 (Concat!12409 call!167085 (regex!4521 rule!570)))))

(assert (= (and d!732734 c!417134) b!2587119))

(assert (= (and d!732734 (not c!417134)) b!2587124))

(assert (= (and b!2587124 c!417137) b!2587118))

(assert (= (and b!2587124 (not c!417137)) b!2587120))

(assert (= (and b!2587120 c!417135) b!2587125))

(assert (= (and b!2587120 (not c!417135)) b!2587121))

(assert (= (and b!2587121 c!417136) b!2587127))

(assert (= (and b!2587121 (not c!417136)) b!2587123))

(assert (= (and b!2587123 c!417138) b!2587126))

(assert (= (and b!2587123 (not c!417138)) b!2587122))

(assert (= (or b!2587126 b!2587122) bm!167081))

(assert (= (or b!2587127 bm!167081) bm!167083))

(assert (= (or b!2587125 b!2587126) bm!167080))

(assert (= (or b!2587125 bm!167083) bm!167082))

(assert (=> bm!167080 m!2922789))

(declare-fun m!2923343 () Bool)

(assert (=> bm!167080 m!2923343))

(assert (=> bm!167082 m!2922789))

(declare-fun m!2923345 () Bool)

(assert (=> bm!167082 m!2923345))

(declare-fun m!2923347 () Bool)

(assert (=> d!732734 m!2923347))

(assert (=> d!732734 m!2921939))

(assert (=> b!2587123 m!2922411))

(assert (=> b!2586534 d!732734))

(declare-fun d!732736 () Bool)

(assert (=> d!732736 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> b!2586534 d!732736))

(assert (=> b!2586534 d!732666))

(declare-fun d!732738 () Bool)

(declare-fun lt!909778 () Int)

(assert (=> d!732738 (>= lt!909778 0)))

(declare-fun e!1632259 () Int)

(assert (=> d!732738 (= lt!909778 e!1632259)))

(declare-fun c!417139 () Bool)

(assert (=> d!732738 (= c!417139 ((_ is Nil!29765) (t!212230 input!3654)))))

(assert (=> d!732738 (= (size!23078 (t!212230 input!3654)) lt!909778)))

(declare-fun b!2587128 () Bool)

(assert (=> b!2587128 (= e!1632259 0)))

(declare-fun b!2587129 () Bool)

(assert (=> b!2587129 (= e!1632259 (+ 1 (size!23078 (t!212230 (t!212230 input!3654)))))))

(assert (= (and d!732738 c!417139) b!2587128))

(assert (= (and d!732738 (not c!417139)) b!2587129))

(declare-fun m!2923349 () Bool)

(assert (=> b!2587129 m!2923349))

(assert (=> b!2586113 d!732738))

(declare-fun d!732740 () Bool)

(declare-fun res!1087948 () Bool)

(declare-fun e!1632262 () Bool)

(assert (=> d!732740 (=> (not res!1087948) (not e!1632262))))

(assert (=> d!732740 (= res!1087948 (<= (size!23078 (list!11256 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) 512))))

(assert (=> d!732740 (= (inv!40203 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1632262)))

(declare-fun b!2587134 () Bool)

(declare-fun res!1087949 () Bool)

(assert (=> b!2587134 (=> (not res!1087949) (not e!1632262))))

(assert (=> b!2587134 (= res!1087949 (= (csize!18805 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) (size!23078 (list!11256 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))))

(declare-fun b!2587135 () Bool)

(assert (=> b!2587135 (= e!1632262 (and (> (csize!18805 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) 0) (<= (csize!18805 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) 512)))))

(assert (= (and d!732740 res!1087948) b!2587134))

(assert (= (and b!2587134 res!1087949) b!2587135))

(declare-fun m!2923351 () Bool)

(assert (=> d!732740 m!2923351))

(assert (=> d!732740 m!2923351))

(declare-fun m!2923353 () Bool)

(assert (=> d!732740 m!2923353))

(assert (=> b!2587134 m!2923351))

(assert (=> b!2587134 m!2923351))

(assert (=> b!2587134 m!2923353))

(assert (=> b!2586555 d!732740))

(declare-fun b!2587136 () Bool)

(declare-fun e!1632267 () Bool)

(declare-fun call!167091 () Bool)

(assert (=> b!2587136 (= e!1632267 call!167091)))

(declare-fun d!732742 () Bool)

(declare-fun res!1087954 () Bool)

(declare-fun e!1632263 () Bool)

(assert (=> d!732742 (=> res!1087954 e!1632263)))

(assert (=> d!732742 (= res!1087954 ((_ is ElementMatch!7665) lt!909594))))

(assert (=> d!732742 (= (validRegex!3279 lt!909594) e!1632263)))

(declare-fun bm!167084 () Bool)

(declare-fun call!167089 () Bool)

(declare-fun call!167090 () Bool)

(assert (=> bm!167084 (= call!167089 call!167090)))

(declare-fun b!2587137 () Bool)

(declare-fun e!1632265 () Bool)

(declare-fun e!1632269 () Bool)

(assert (=> b!2587137 (= e!1632265 e!1632269)))

(declare-fun res!1087953 () Bool)

(assert (=> b!2587137 (=> (not res!1087953) (not e!1632269))))

(assert (=> b!2587137 (= res!1087953 call!167089)))

(declare-fun c!417140 () Bool)

(declare-fun bm!167085 () Bool)

(declare-fun c!417141 () Bool)

(assert (=> bm!167085 (= call!167090 (validRegex!3279 (ite c!417141 (reg!7994 lt!909594) (ite c!417140 (regOne!15843 lt!909594) (regOne!15842 lt!909594)))))))

(declare-fun b!2587138 () Bool)

(declare-fun res!1087950 () Bool)

(assert (=> b!2587138 (=> (not res!1087950) (not e!1632267))))

(assert (=> b!2587138 (= res!1087950 call!167089)))

(declare-fun e!1632266 () Bool)

(assert (=> b!2587138 (= e!1632266 e!1632267)))

(declare-fun b!2587139 () Bool)

(assert (=> b!2587139 (= e!1632269 call!167091)))

(declare-fun b!2587140 () Bool)

(declare-fun res!1087951 () Bool)

(assert (=> b!2587140 (=> res!1087951 e!1632265)))

(assert (=> b!2587140 (= res!1087951 (not ((_ is Concat!12409) lt!909594)))))

(assert (=> b!2587140 (= e!1632266 e!1632265)))

(declare-fun b!2587141 () Bool)

(declare-fun e!1632264 () Bool)

(assert (=> b!2587141 (= e!1632264 e!1632266)))

(assert (=> b!2587141 (= c!417140 ((_ is Union!7665) lt!909594))))

(declare-fun bm!167086 () Bool)

(assert (=> bm!167086 (= call!167091 (validRegex!3279 (ite c!417140 (regTwo!15843 lt!909594) (regTwo!15842 lt!909594))))))

(declare-fun b!2587142 () Bool)

(assert (=> b!2587142 (= e!1632263 e!1632264)))

(assert (=> b!2587142 (= c!417141 ((_ is Star!7665) lt!909594))))

(declare-fun b!2587143 () Bool)

(declare-fun e!1632268 () Bool)

(assert (=> b!2587143 (= e!1632268 call!167090)))

(declare-fun b!2587144 () Bool)

(assert (=> b!2587144 (= e!1632264 e!1632268)))

(declare-fun res!1087952 () Bool)

(assert (=> b!2587144 (= res!1087952 (not (nullable!2570 (reg!7994 lt!909594))))))

(assert (=> b!2587144 (=> (not res!1087952) (not e!1632268))))

(assert (= (and d!732742 (not res!1087954)) b!2587142))

(assert (= (and b!2587142 c!417141) b!2587144))

(assert (= (and b!2587142 (not c!417141)) b!2587141))

(assert (= (and b!2587144 res!1087952) b!2587143))

(assert (= (and b!2587141 c!417140) b!2587138))

(assert (= (and b!2587141 (not c!417140)) b!2587140))

(assert (= (and b!2587138 res!1087950) b!2587136))

(assert (= (and b!2587140 (not res!1087951)) b!2587137))

(assert (= (and b!2587137 res!1087953) b!2587139))

(assert (= (or b!2587138 b!2587137) bm!167084))

(assert (= (or b!2587136 b!2587139) bm!167086))

(assert (= (or b!2587143 bm!167084) bm!167085))

(declare-fun m!2923355 () Bool)

(assert (=> bm!167085 m!2923355))

(declare-fun m!2923357 () Bool)

(assert (=> bm!167086 m!2923357))

(declare-fun m!2923359 () Bool)

(assert (=> b!2587144 m!2923359))

(assert (=> d!732450 d!732742))

(assert (=> d!732450 d!732498))

(declare-fun b!2587145 () Bool)

(declare-fun e!1632274 () Bool)

(declare-fun call!167094 () Bool)

(assert (=> b!2587145 (= e!1632274 call!167094)))

(declare-fun d!732744 () Bool)

(declare-fun res!1087959 () Bool)

(declare-fun e!1632270 () Bool)

(assert (=> d!732744 (=> res!1087959 e!1632270)))

(assert (=> d!732744 (= res!1087959 ((_ is ElementMatch!7665) (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> d!732744 (= (validRegex!3279 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) e!1632270)))

(declare-fun bm!167087 () Bool)

(declare-fun call!167092 () Bool)

(declare-fun call!167093 () Bool)

(assert (=> bm!167087 (= call!167092 call!167093)))

(declare-fun b!2587146 () Bool)

(declare-fun e!1632272 () Bool)

(declare-fun e!1632276 () Bool)

(assert (=> b!2587146 (= e!1632272 e!1632276)))

(declare-fun res!1087958 () Bool)

(assert (=> b!2587146 (=> (not res!1087958) (not e!1632276))))

(assert (=> b!2587146 (= res!1087958 call!167092)))

(declare-fun c!417142 () Bool)

(declare-fun c!417143 () Bool)

(declare-fun bm!167088 () Bool)

(assert (=> bm!167088 (= call!167093 (validRegex!3279 (ite c!417143 (reg!7994 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (ite c!417142 (regOne!15843 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (regOne!15842 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))))

(declare-fun b!2587147 () Bool)

(declare-fun res!1087955 () Bool)

(assert (=> b!2587147 (=> (not res!1087955) (not e!1632274))))

(assert (=> b!2587147 (= res!1087955 call!167092)))

(declare-fun e!1632273 () Bool)

(assert (=> b!2587147 (= e!1632273 e!1632274)))

(declare-fun b!2587148 () Bool)

(assert (=> b!2587148 (= e!1632276 call!167094)))

(declare-fun b!2587149 () Bool)

(declare-fun res!1087956 () Bool)

(assert (=> b!2587149 (=> res!1087956 e!1632272)))

(assert (=> b!2587149 (= res!1087956 (not ((_ is Concat!12409) (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(assert (=> b!2587149 (= e!1632273 e!1632272)))

(declare-fun b!2587150 () Bool)

(declare-fun e!1632271 () Bool)

(assert (=> b!2587150 (= e!1632271 e!1632273)))

(assert (=> b!2587150 (= c!417142 ((_ is Union!7665) (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(declare-fun bm!167089 () Bool)

(assert (=> bm!167089 (= call!167094 (validRegex!3279 (ite c!417142 (regTwo!15843 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (regTwo!15842 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(declare-fun b!2587151 () Bool)

(assert (=> b!2587151 (= e!1632270 e!1632271)))

(assert (=> b!2587151 (= c!417143 ((_ is Star!7665) (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(declare-fun b!2587152 () Bool)

(declare-fun e!1632275 () Bool)

(assert (=> b!2587152 (= e!1632275 call!167093)))

(declare-fun b!2587153 () Bool)

(assert (=> b!2587153 (= e!1632271 e!1632275)))

(declare-fun res!1087957 () Bool)

(assert (=> b!2587153 (= res!1087957 (not (nullable!2570 (reg!7994 (ite c!417053 (reg!7994 (regex!4521 rule!570)) (ite c!417052 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(assert (=> b!2587153 (=> (not res!1087957) (not e!1632275))))

(assert (= (and d!732744 (not res!1087959)) b!2587151))

(assert (= (and b!2587151 c!417143) b!2587153))

(assert (= (and b!2587151 (not c!417143)) b!2587150))

(assert (= (and b!2587153 res!1087957) b!2587152))

(assert (= (and b!2587150 c!417142) b!2587147))

(assert (= (and b!2587150 (not c!417142)) b!2587149))

(assert (= (and b!2587147 res!1087955) b!2587145))

(assert (= (and b!2587149 (not res!1087956)) b!2587146))

(assert (= (and b!2587146 res!1087958) b!2587148))

(assert (= (or b!2587147 b!2587146) bm!167087))

(assert (= (or b!2587145 b!2587148) bm!167089))

(assert (= (or b!2587152 bm!167087) bm!167088))

(declare-fun m!2923361 () Bool)

(assert (=> bm!167088 m!2923361))

(declare-fun m!2923363 () Bool)

(assert (=> bm!167089 m!2923363))

(declare-fun m!2923365 () Bool)

(assert (=> b!2587153 m!2923365))

(assert (=> bm!167028 d!732744))

(declare-fun b!2587155 () Bool)

(declare-fun e!1632277 () List!29865)

(declare-fun e!1632278 () List!29865)

(assert (=> b!2587155 (= e!1632277 e!1632278)))

(declare-fun c!417145 () Bool)

(assert (=> b!2587155 (= c!417145 ((_ is Leaf!14169) (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun d!732746 () Bool)

(declare-fun c!417144 () Bool)

(assert (=> d!732746 (= c!417144 ((_ is Empty!9287) (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!732746 (= (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) e!1632277)))

(declare-fun b!2587156 () Bool)

(assert (=> b!2587156 (= e!1632278 (list!11256 (xs!12271 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587154 () Bool)

(assert (=> b!2587154 (= e!1632277 Nil!29765)))

(declare-fun b!2587157 () Bool)

(assert (=> b!2587157 (= e!1632278 (++!7311 (list!11254 (left!22688 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (list!11254 (right!23018 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(assert (= (and d!732746 c!417144) b!2587154))

(assert (= (and d!732746 (not c!417144)) b!2587155))

(assert (= (and b!2587155 c!417145) b!2587156))

(assert (= (and b!2587155 (not c!417145)) b!2587157))

(declare-fun m!2923367 () Bool)

(assert (=> b!2587156 m!2923367))

(declare-fun m!2923369 () Bool)

(assert (=> b!2587157 m!2923369))

(declare-fun m!2923371 () Bool)

(assert (=> b!2587157 m!2923371))

(assert (=> b!2587157 m!2923369))

(assert (=> b!2587157 m!2923371))

(declare-fun m!2923373 () Bool)

(assert (=> b!2587157 m!2923373))

(assert (=> d!732472 d!732746))

(declare-fun d!732748 () Bool)

(assert (=> d!732748 (= (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (nullableFct!788 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun bs!471843 () Bool)

(assert (= bs!471843 d!732748))

(assert (=> bs!471843 m!2921931))

(declare-fun m!2923375 () Bool)

(assert (=> bs!471843 m!2923375))

(assert (=> b!2586155 d!732748))

(declare-fun d!732750 () Bool)

(assert (=> d!732750 (= (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))) (list!11254 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))))

(declare-fun bs!471844 () Bool)

(assert (= bs!471844 d!732750))

(declare-fun m!2923377 () Bool)

(assert (=> bs!471844 m!2923377))

(assert (=> d!732492 d!732750))

(declare-fun d!732752 () Bool)

(assert (=> d!732752 (= (list!11253 (seqFromList!3161 (_1!17402 lt!909270))) (list!11254 (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun bs!471845 () Bool)

(assert (= bs!471845 d!732752))

(declare-fun m!2923379 () Bool)

(assert (=> bs!471845 m!2923379))

(assert (=> d!732492 d!732752))

(declare-fun d!732754 () Bool)

(declare-fun dynLambda!12598 (Int BalanceConc!18188) Bool)

(assert (=> d!732754 (dynLambda!12598 lambda!95835 (seqFromList!3161 (_1!17402 lt!909270)))))

(declare-fun lt!909781 () Unit!43600)

(declare-fun choose!15248 (Int BalanceConc!18188) Unit!43600)

(assert (=> d!732754 (= lt!909781 (choose!15248 lambda!95835 (seqFromList!3161 (_1!17402 lt!909270))))))

(assert (=> d!732754 (Forall!1167 lambda!95835)))

(assert (=> d!732754 (= (ForallOf!507 lambda!95835 (seqFromList!3161 (_1!17402 lt!909270))) lt!909781)))

(declare-fun b_lambda!76907 () Bool)

(assert (=> (not b_lambda!76907) (not d!732754)))

(declare-fun bs!471846 () Bool)

(assert (= bs!471846 d!732754))

(assert (=> bs!471846 m!2921821))

(declare-fun m!2923381 () Bool)

(assert (=> bs!471846 m!2923381))

(assert (=> bs!471846 m!2921821))

(declare-fun m!2923383 () Bool)

(assert (=> bs!471846 m!2923383))

(declare-fun m!2923385 () Bool)

(assert (=> bs!471846 m!2923385))

(assert (=> d!732492 d!732754))

(assert (=> d!732214 d!732078))

(declare-fun d!732756 () Bool)

(declare-fun res!1087960 () Bool)

(declare-fun e!1632279 () Bool)

(assert (=> d!732756 (=> res!1087960 e!1632279)))

(assert (=> d!732756 (= res!1087960 ((_ is Nil!29767) (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803)))))

(assert (=> d!732756 (= (forall!6065 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803) lambda!95804) e!1632279)))

(declare-fun b!2587158 () Bool)

(declare-fun e!1632280 () Bool)

(assert (=> b!2587158 (= e!1632279 e!1632280)))

(declare-fun res!1087961 () Bool)

(assert (=> b!2587158 (=> (not res!1087961) (not e!1632280))))

(assert (=> b!2587158 (= res!1087961 (dynLambda!12585 lambda!95804 (h!35187 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803))))))

(declare-fun b!2587159 () Bool)

(assert (=> b!2587159 (= e!1632280 (forall!6065 (t!212232 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803)) lambda!95804))))

(assert (= (and d!732756 (not res!1087960)) b!2587158))

(assert (= (and b!2587158 res!1087961) b!2587159))

(declare-fun b_lambda!76909 () Bool)

(assert (=> (not b_lambda!76909) (not b!2587158)))

(declare-fun m!2923387 () Bool)

(assert (=> b!2587158 m!2923387))

(declare-fun m!2923389 () Bool)

(assert (=> b!2587159 m!2923389))

(assert (=> d!732214 d!732756))

(declare-fun d!732758 () Bool)

(declare-fun lt!909782 () List!29867)

(assert (=> d!732758 (= (size!23082 lt!909782) (size!23083 (t!212231 (t!212231 rs!798))))))

(declare-fun e!1632281 () List!29867)

(assert (=> d!732758 (= lt!909782 e!1632281)))

(declare-fun c!417146 () Bool)

(assert (=> d!732758 (= c!417146 ((_ is Nil!29766) (t!212231 (t!212231 rs!798))))))

(assert (=> d!732758 (= (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803) lt!909782)))

(declare-fun b!2587160 () Bool)

(assert (=> b!2587160 (= e!1632281 Nil!29767)))

(declare-fun b!2587161 () Bool)

(assert (=> b!2587161 (= e!1632281 ($colon$colon!544 (map!6607 (t!212231 (t!212231 (t!212231 rs!798))) lambda!95803) (dynLambda!12586 lambda!95803 (h!35186 (t!212231 (t!212231 rs!798))))))))

(assert (= (and d!732758 c!417146) b!2587160))

(assert (= (and d!732758 (not c!417146)) b!2587161))

(declare-fun b_lambda!76911 () Bool)

(assert (=> (not b_lambda!76911) (not b!2587161)))

(declare-fun m!2923391 () Bool)

(assert (=> d!732758 m!2923391))

(assert (=> d!732758 m!2923313))

(declare-fun m!2923393 () Bool)

(assert (=> b!2587161 m!2923393))

(declare-fun m!2923395 () Bool)

(assert (=> b!2587161 m!2923395))

(assert (=> b!2587161 m!2923393))

(assert (=> b!2587161 m!2923395))

(declare-fun m!2923397 () Bool)

(assert (=> b!2587161 m!2923397))

(assert (=> d!732214 d!732758))

(declare-fun d!732760 () Bool)

(assert (=> d!732760 (= (seqFromList!3161 lt!909419) (fromListB!1430 lt!909419))))

(declare-fun bs!471847 () Bool)

(assert (= bs!471847 d!732760))

(declare-fun m!2923399 () Bool)

(assert (=> bs!471847 m!2923399))

(assert (=> d!732214 d!732760))

(declare-fun d!732762 () Bool)

(assert (=> d!732762 (= (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909419)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909419)))))

(declare-fun b_lambda!76913 () Bool)

(assert (=> (not b_lambda!76913) (not d!732762)))

(declare-fun t!212544 () Bool)

(declare-fun tb!141145 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570))) t!212544) tb!141145))

(declare-fun result!175432 () Bool)

(assert (=> tb!141145 (= result!175432 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909419))))))

(declare-fun m!2923401 () Bool)

(assert (=> tb!141145 m!2923401))

(assert (=> d!732762 t!212544))

(declare-fun b_and!189835 () Bool)

(assert (= b_and!189827 (and (=> t!212544 result!175432) b_and!189835)))

(declare-fun t!212546 () Bool)

(declare-fun tb!141147 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570))) t!212546) tb!141147))

(declare-fun result!175434 () Bool)

(assert (= result!175434 result!175432))

(assert (=> d!732762 t!212546))

(declare-fun b_and!189837 () Bool)

(assert (= b_and!189823 (and (=> t!212546 result!175434) b_and!189837)))

(declare-fun t!212548 () Bool)

(declare-fun tb!141149 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570))) t!212548) tb!141149))

(declare-fun result!175436 () Bool)

(assert (= result!175436 result!175432))

(assert (=> d!732762 t!212548))

(declare-fun b_and!189839 () Bool)

(assert (= b_and!189825 (and (=> t!212548 result!175436) b_and!189839)))

(declare-fun tb!141151 () Bool)

(declare-fun t!212550 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570))) t!212550) tb!141151))

(declare-fun result!175438 () Bool)

(assert (= result!175438 result!175432))

(assert (=> d!732762 t!212550))

(declare-fun b_and!189841 () Bool)

(assert (= b_and!189831 (and (=> t!212550 result!175438) b_and!189841)))

(declare-fun t!212552 () Bool)

(declare-fun tb!141153 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 rule!570))) t!212552) tb!141153))

(declare-fun result!175440 () Bool)

(assert (= result!175440 result!175432))

(assert (=> d!732762 t!212552))

(declare-fun b_and!189843 () Bool)

(assert (= b_and!189829 (and (=> t!212552 result!175440) b_and!189843)))

(declare-fun tb!141155 () Bool)

(declare-fun t!212554 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570))) t!212554) tb!141155))

(declare-fun result!175442 () Bool)

(assert (= result!175442 result!175432))

(assert (=> d!732762 t!212554))

(declare-fun b_and!189845 () Bool)

(assert (= b_and!189819 (and (=> t!212554 result!175442) b_and!189845)))

(declare-fun t!212556 () Bool)

(declare-fun tb!141157 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570))) t!212556) tb!141157))

(declare-fun result!175444 () Bool)

(assert (= result!175444 result!175432))

(assert (=> d!732762 t!212556))

(declare-fun b_and!189847 () Bool)

(assert (= b_and!189821 (and (=> t!212556 result!175444) b_and!189847)))

(declare-fun t!212558 () Bool)

(declare-fun tb!141159 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570))) t!212558) tb!141159))

(declare-fun result!175446 () Bool)

(assert (= result!175446 result!175432))

(assert (=> d!732762 t!212558))

(declare-fun b_and!189849 () Bool)

(assert (= b_and!189833 (and (=> t!212558 result!175446) b_and!189849)))

(assert (=> d!732762 m!2922201))

(declare-fun m!2923403 () Bool)

(assert (=> d!732762 m!2923403))

(assert (=> d!732214 d!732762))

(declare-fun bs!471848 () Bool)

(declare-fun d!732764 () Bool)

(assert (= bs!471848 (and d!732764 d!732278)))

(declare-fun lambda!95850 () Int)

(assert (=> bs!471848 (= lambda!95850 lambda!95811)))

(declare-fun bs!471849 () Bool)

(assert (= bs!471849 (and d!732764 d!732314)))

(assert (=> bs!471849 (= lambda!95850 lambda!95814)))

(declare-fun bs!471850 () Bool)

(assert (= bs!471850 (and d!732764 d!732122)))

(assert (=> bs!471850 (= lambda!95850 lambda!95796)))

(declare-fun bs!471851 () Bool)

(assert (= bs!471851 (and d!732764 d!732464)))

(assert (=> bs!471851 (= lambda!95850 lambda!95830)))

(declare-fun bs!471852 () Bool)

(assert (= bs!471852 (and d!732764 d!732250)))

(assert (=> bs!471852 (= lambda!95850 lambda!95810)))

(assert (=> d!732764 true))

(declare-fun lt!909783 () Bool)

(assert (=> d!732764 (= lt!909783 (rulesValidInductive!1595 thiss!28211 (t!212231 (t!212231 rs!798))))))

(assert (=> d!732764 (= lt!909783 (forall!6067 (t!212231 (t!212231 rs!798)) lambda!95850))))

(assert (=> d!732764 (= (rulesValid!1693 thiss!28211 (t!212231 (t!212231 rs!798))) lt!909783)))

(declare-fun bs!471853 () Bool)

(assert (= bs!471853 d!732764))

(declare-fun m!2923405 () Bool)

(assert (=> bs!471853 m!2923405))

(declare-fun m!2923407 () Bool)

(assert (=> bs!471853 m!2923407))

(assert (=> d!732214 d!732764))

(declare-fun d!732766 () Bool)

(declare-fun lt!909784 () Int)

(assert (=> d!732766 (>= lt!909784 0)))

(declare-fun e!1632283 () Int)

(assert (=> d!732766 (= lt!909784 e!1632283)))

(declare-fun c!417147 () Bool)

(assert (=> d!732766 (= c!417147 ((_ is Nil!29765) lt!909419))))

(assert (=> d!732766 (= (size!23078 lt!909419) lt!909784)))

(declare-fun b!2587162 () Bool)

(assert (=> b!2587162 (= e!1632283 0)))

(declare-fun b!2587163 () Bool)

(assert (=> b!2587163 (= e!1632283 (+ 1 (size!23078 (t!212230 lt!909419))))))

(assert (= (and d!732766 c!417147) b!2587162))

(assert (= (and d!732766 (not c!417147)) b!2587163))

(declare-fun m!2923409 () Bool)

(assert (=> b!2587163 m!2923409))

(assert (=> d!732214 d!732766))

(assert (=> d!732214 d!732080))

(declare-fun d!732768 () Bool)

(assert (=> d!732768 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909419)) rule!570 (size!23078 lt!909419) lt!909419) suffix!1684)))))

(declare-fun lt!909785 () Unit!43600)

(assert (=> d!732768 (= lt!909785 (choose!15238 thiss!28211 rules!4580 lt!909419 input!3654 suffix!1684 rule!570))))

(assert (=> d!732768 (not (isEmpty!17109 rules!4580))))

(assert (=> d!732768 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909419 input!3654 suffix!1684 rule!570) lt!909785)))

(declare-fun bs!471854 () Bool)

(assert (= bs!471854 d!732768))

(assert (=> bs!471854 m!2922201))

(assert (=> bs!471854 m!2922209))

(assert (=> bs!471854 m!2921687))

(assert (=> bs!471854 m!2921723))

(assert (=> bs!471854 m!2922201))

(assert (=> bs!471854 m!2922203))

(declare-fun m!2923411 () Bool)

(assert (=> bs!471854 m!2923411))

(assert (=> d!732214 d!732768))

(assert (=> d!732214 d!732114))

(declare-fun b!2587164 () Bool)

(declare-fun e!1632289 () Bool)

(declare-fun lt!909786 () Bool)

(assert (=> b!2587164 (= e!1632289 (not lt!909786))))

(declare-fun d!732770 () Bool)

(declare-fun e!1632290 () Bool)

(assert (=> d!732770 e!1632290))

(declare-fun c!417149 () Bool)

(assert (=> d!732770 (= c!417149 ((_ is EmptyExpr!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246)))))))

(declare-fun e!1632284 () Bool)

(assert (=> d!732770 (= lt!909786 e!1632284)))

(declare-fun c!417148 () Bool)

(assert (=> d!732770 (= c!417148 (isEmpty!17110 (tail!4135 (tail!4135 lt!909246))))))

(assert (=> d!732770 (validRegex!3279 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))))))

(assert (=> d!732770 (= (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))) (tail!4135 (tail!4135 lt!909246))) lt!909786)))

(declare-fun b!2587165 () Bool)

(declare-fun res!1087969 () Bool)

(declare-fun e!1632287 () Bool)

(assert (=> b!2587165 (=> (not res!1087969) (not e!1632287))))

(assert (=> b!2587165 (= res!1087969 (isEmpty!17110 (tail!4135 (tail!4135 (tail!4135 lt!909246)))))))

(declare-fun b!2587166 () Bool)

(assert (=> b!2587166 (= e!1632284 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))) (head!5862 (tail!4135 (tail!4135 lt!909246)))) (tail!4135 (tail!4135 (tail!4135 lt!909246)))))))

(declare-fun b!2587167 () Bool)

(declare-fun res!1087962 () Bool)

(assert (=> b!2587167 (=> (not res!1087962) (not e!1632287))))

(declare-fun call!167095 () Bool)

(assert (=> b!2587167 (= res!1087962 (not call!167095))))

(declare-fun b!2587168 () Bool)

(assert (=> b!2587168 (= e!1632290 (= lt!909786 call!167095))))

(declare-fun b!2587169 () Bool)

(declare-fun res!1087968 () Bool)

(declare-fun e!1632286 () Bool)

(assert (=> b!2587169 (=> res!1087968 e!1632286)))

(assert (=> b!2587169 (= res!1087968 (not (isEmpty!17110 (tail!4135 (tail!4135 (tail!4135 lt!909246))))))))

(declare-fun b!2587170 () Bool)

(declare-fun res!1087964 () Bool)

(declare-fun e!1632288 () Bool)

(assert (=> b!2587170 (=> res!1087964 e!1632288)))

(assert (=> b!2587170 (= res!1087964 e!1632287)))

(declare-fun res!1087967 () Bool)

(assert (=> b!2587170 (=> (not res!1087967) (not e!1632287))))

(assert (=> b!2587170 (= res!1087967 lt!909786)))

(declare-fun b!2587171 () Bool)

(declare-fun e!1632285 () Bool)

(assert (=> b!2587171 (= e!1632288 e!1632285)))

(declare-fun res!1087966 () Bool)

(assert (=> b!2587171 (=> (not res!1087966) (not e!1632285))))

(assert (=> b!2587171 (= res!1087966 (not lt!909786))))

(declare-fun b!2587172 () Bool)

(declare-fun res!1087965 () Bool)

(assert (=> b!2587172 (=> res!1087965 e!1632288)))

(assert (=> b!2587172 (= res!1087965 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))))))))

(assert (=> b!2587172 (= e!1632289 e!1632288)))

(declare-fun b!2587173 () Bool)

(assert (=> b!2587173 (= e!1632287 (= (head!5862 (tail!4135 (tail!4135 lt!909246))) (c!416820 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))))))))

(declare-fun b!2587174 () Bool)

(assert (=> b!2587174 (= e!1632284 (nullable!2570 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246)))))))

(declare-fun b!2587175 () Bool)

(assert (=> b!2587175 (= e!1632290 e!1632289)))

(declare-fun c!417150 () Bool)

(assert (=> b!2587175 (= c!417150 ((_ is EmptyLang!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246)))))))

(declare-fun b!2587176 () Bool)

(assert (=> b!2587176 (= e!1632286 (not (= (head!5862 (tail!4135 (tail!4135 lt!909246))) (c!416820 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246)))))))))

(declare-fun bm!167090 () Bool)

(assert (=> bm!167090 (= call!167095 (isEmpty!17110 (tail!4135 (tail!4135 lt!909246))))))

(declare-fun b!2587177 () Bool)

(assert (=> b!2587177 (= e!1632285 e!1632286)))

(declare-fun res!1087963 () Bool)

(assert (=> b!2587177 (=> res!1087963 e!1632286)))

(assert (=> b!2587177 (= res!1087963 call!167095)))

(assert (= (and d!732770 c!417148) b!2587174))

(assert (= (and d!732770 (not c!417148)) b!2587166))

(assert (= (and d!732770 c!417149) b!2587168))

(assert (= (and d!732770 (not c!417149)) b!2587175))

(assert (= (and b!2587175 c!417150) b!2587164))

(assert (= (and b!2587175 (not c!417150)) b!2587172))

(assert (= (and b!2587172 (not res!1087965)) b!2587170))

(assert (= (and b!2587170 res!1087967) b!2587167))

(assert (= (and b!2587167 res!1087962) b!2587165))

(assert (= (and b!2587165 res!1087969) b!2587173))

(assert (= (and b!2587170 (not res!1087964)) b!2587171))

(assert (= (and b!2587171 res!1087966) b!2587177))

(assert (= (and b!2587177 (not res!1087963)) b!2587169))

(assert (= (and b!2587169 (not res!1087968)) b!2587176))

(assert (= (or b!2587168 b!2587167 b!2587177) bm!167090))

(assert (=> bm!167090 m!2922747))

(assert (=> bm!167090 m!2922753))

(assert (=> b!2587166 m!2922747))

(declare-fun m!2923413 () Bool)

(assert (=> b!2587166 m!2923413))

(assert (=> b!2587166 m!2922745))

(assert (=> b!2587166 m!2923413))

(declare-fun m!2923415 () Bool)

(assert (=> b!2587166 m!2923415))

(assert (=> b!2587166 m!2922747))

(declare-fun m!2923417 () Bool)

(assert (=> b!2587166 m!2923417))

(assert (=> b!2587166 m!2923415))

(assert (=> b!2587166 m!2923417))

(declare-fun m!2923419 () Bool)

(assert (=> b!2587166 m!2923419))

(assert (=> b!2587173 m!2922747))

(assert (=> b!2587173 m!2923413))

(assert (=> b!2587165 m!2922747))

(assert (=> b!2587165 m!2923417))

(assert (=> b!2587165 m!2923417))

(declare-fun m!2923421 () Bool)

(assert (=> b!2587165 m!2923421))

(assert (=> b!2587176 m!2922747))

(assert (=> b!2587176 m!2923413))

(assert (=> d!732770 m!2922747))

(assert (=> d!732770 m!2922753))

(assert (=> d!732770 m!2922745))

(declare-fun m!2923423 () Bool)

(assert (=> d!732770 m!2923423))

(assert (=> b!2587169 m!2922747))

(assert (=> b!2587169 m!2923417))

(assert (=> b!2587169 m!2923417))

(assert (=> b!2587169 m!2923421))

(assert (=> b!2587174 m!2922745))

(declare-fun m!2923425 () Bool)

(assert (=> b!2587174 m!2923425))

(assert (=> b!2586488 d!732770))

(declare-fun bm!167091 () Bool)

(declare-fun c!417152 () Bool)

(declare-fun call!167099 () Regex!7665)

(assert (=> bm!167091 (= call!167099 (derivativeStep!2222 (ite c!417152 (regTwo!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))) (head!5862 (tail!4135 lt!909246))))))

(declare-fun bm!167092 () Bool)

(declare-fun call!167098 () Regex!7665)

(declare-fun call!167096 () Regex!7665)

(assert (=> bm!167092 (= call!167098 call!167096)))

(declare-fun call!167097 () Regex!7665)

(declare-fun c!417153 () Bool)

(declare-fun bm!167093 () Bool)

(declare-fun c!417155 () Bool)

(assert (=> bm!167093 (= call!167097 (derivativeStep!2222 (ite c!417152 (regOne!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (ite c!417153 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (ite c!417155 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))) (head!5862 (tail!4135 lt!909246))))))

(declare-fun b!2587178 () Bool)

(declare-fun e!1632295 () Regex!7665)

(assert (=> b!2587178 (= e!1632295 (ite (= (head!5862 (tail!4135 lt!909246)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732772 () Bool)

(declare-fun lt!909787 () Regex!7665)

(assert (=> d!732772 (validRegex!3279 lt!909787)))

(declare-fun e!1632293 () Regex!7665)

(assert (=> d!732772 (= lt!909787 e!1632293)))

(declare-fun c!417151 () Bool)

(assert (=> d!732772 (= c!417151 (or ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))

(assert (=> d!732772 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))

(assert (=> d!732772 (= (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)) (head!5862 (tail!4135 lt!909246))) lt!909787)))

(declare-fun b!2587179 () Bool)

(assert (=> b!2587179 (= e!1632293 EmptyLang!7665)))

(declare-fun b!2587180 () Bool)

(assert (=> b!2587180 (= c!417152 ((_ is Union!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun e!1632294 () Regex!7665)

(assert (=> b!2587180 (= e!1632295 e!1632294)))

(declare-fun b!2587181 () Bool)

(declare-fun e!1632291 () Regex!7665)

(assert (=> b!2587181 (= e!1632294 e!1632291)))

(assert (=> b!2587181 (= c!417153 ((_ is Star!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun e!1632292 () Regex!7665)

(declare-fun b!2587182 () Bool)

(assert (=> b!2587182 (= e!1632292 (Union!7665 (Concat!12409 call!167098 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))) EmptyLang!7665))))

(declare-fun b!2587183 () Bool)

(assert (=> b!2587183 (= c!417155 (nullable!2570 (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))

(assert (=> b!2587183 (= e!1632291 e!1632292)))

(declare-fun b!2587184 () Bool)

(assert (=> b!2587184 (= e!1632293 e!1632295)))

(declare-fun c!417154 () Bool)

(assert (=> b!2587184 (= c!417154 ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun b!2587185 () Bool)

(assert (=> b!2587185 (= e!1632294 (Union!7665 call!167097 call!167099))))

(declare-fun bm!167094 () Bool)

(assert (=> bm!167094 (= call!167096 call!167097)))

(declare-fun b!2587186 () Bool)

(assert (=> b!2587186 (= e!1632292 (Union!7665 (Concat!12409 call!167099 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))) call!167098))))

(declare-fun b!2587187 () Bool)

(assert (=> b!2587187 (= e!1632291 (Concat!12409 call!167096 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(assert (= (and d!732772 c!417151) b!2587179))

(assert (= (and d!732772 (not c!417151)) b!2587184))

(assert (= (and b!2587184 c!417154) b!2587178))

(assert (= (and b!2587184 (not c!417154)) b!2587180))

(assert (= (and b!2587180 c!417152) b!2587185))

(assert (= (and b!2587180 (not c!417152)) b!2587181))

(assert (= (and b!2587181 c!417153) b!2587187))

(assert (= (and b!2587181 (not c!417153)) b!2587183))

(assert (= (and b!2587183 c!417155) b!2587186))

(assert (= (and b!2587183 (not c!417155)) b!2587182))

(assert (= (or b!2587186 b!2587182) bm!167092))

(assert (= (or b!2587187 bm!167092) bm!167094))

(assert (= (or b!2587185 b!2587186) bm!167091))

(assert (= (or b!2587185 bm!167094) bm!167093))

(assert (=> bm!167091 m!2922743))

(declare-fun m!2923427 () Bool)

(assert (=> bm!167091 m!2923427))

(assert (=> bm!167093 m!2922743))

(declare-fun m!2923429 () Bool)

(assert (=> bm!167093 m!2923429))

(declare-fun m!2923431 () Bool)

(assert (=> d!732772 m!2923431))

(assert (=> d!732772 m!2922009))

(assert (=> d!732772 m!2922755))

(declare-fun m!2923433 () Bool)

(assert (=> b!2587183 m!2923433))

(assert (=> b!2586488 d!732772))

(assert (=> b!2586488 d!732694))

(assert (=> b!2586488 d!732728))

(declare-fun b!2587200 () Bool)

(declare-fun e!1632300 () Bool)

(declare-fun isEmpty!17114 (Conc!9287) Bool)

(assert (=> b!2587200 (= e!1632300 (not (isEmpty!17114 (right!23018 (fromList!562 lt!909246)))))))

(declare-fun b!2587201 () Bool)

(declare-fun e!1632301 () Bool)

(assert (=> b!2587201 (= e!1632301 e!1632300)))

(declare-fun res!1087983 () Bool)

(assert (=> b!2587201 (=> (not res!1087983) (not e!1632300))))

(declare-fun height!1347 (Conc!9287) Int)

(assert (=> b!2587201 (= res!1087983 (<= (- 1) (- (height!1347 (left!22688 (fromList!562 lt!909246))) (height!1347 (right!23018 (fromList!562 lt!909246))))))))

(declare-fun d!732774 () Bool)

(declare-fun res!1087985 () Bool)

(assert (=> d!732774 (=> res!1087985 e!1632301)))

(assert (=> d!732774 (= res!1087985 (not ((_ is Node!9287) (fromList!562 lt!909246))))))

(assert (=> d!732774 (= (isBalanced!2834 (fromList!562 lt!909246)) e!1632301)))

(declare-fun b!2587202 () Bool)

(declare-fun res!1087982 () Bool)

(assert (=> b!2587202 (=> (not res!1087982) (not e!1632300))))

(assert (=> b!2587202 (= res!1087982 (<= (- (height!1347 (left!22688 (fromList!562 lt!909246))) (height!1347 (right!23018 (fromList!562 lt!909246)))) 1))))

(declare-fun b!2587203 () Bool)

(declare-fun res!1087987 () Bool)

(assert (=> b!2587203 (=> (not res!1087987) (not e!1632300))))

(assert (=> b!2587203 (= res!1087987 (not (isEmpty!17114 (left!22688 (fromList!562 lt!909246)))))))

(declare-fun b!2587204 () Bool)

(declare-fun res!1087986 () Bool)

(assert (=> b!2587204 (=> (not res!1087986) (not e!1632300))))

(assert (=> b!2587204 (= res!1087986 (isBalanced!2834 (left!22688 (fromList!562 lt!909246))))))

(declare-fun b!2587205 () Bool)

(declare-fun res!1087984 () Bool)

(assert (=> b!2587205 (=> (not res!1087984) (not e!1632300))))

(assert (=> b!2587205 (= res!1087984 (isBalanced!2834 (right!23018 (fromList!562 lt!909246))))))

(assert (= (and d!732774 (not res!1087985)) b!2587201))

(assert (= (and b!2587201 res!1087983) b!2587202))

(assert (= (and b!2587202 res!1087982) b!2587204))

(assert (= (and b!2587204 res!1087986) b!2587205))

(assert (= (and b!2587205 res!1087984) b!2587203))

(assert (= (and b!2587203 res!1087987) b!2587200))

(declare-fun m!2923435 () Bool)

(assert (=> b!2587203 m!2923435))

(declare-fun m!2923437 () Bool)

(assert (=> b!2587201 m!2923437))

(declare-fun m!2923439 () Bool)

(assert (=> b!2587201 m!2923439))

(declare-fun m!2923441 () Bool)

(assert (=> b!2587200 m!2923441))

(declare-fun m!2923443 () Bool)

(assert (=> b!2587204 m!2923443))

(declare-fun m!2923445 () Bool)

(assert (=> b!2587205 m!2923445))

(assert (=> b!2587202 m!2923437))

(assert (=> b!2587202 m!2923439))

(assert (=> b!2586646 d!732774))

(declare-fun d!732776 () Bool)

(declare-fun e!1632304 () Bool)

(assert (=> d!732776 e!1632304))

(declare-fun res!1087990 () Bool)

(assert (=> d!732776 (=> (not res!1087990) (not e!1632304))))

(declare-fun lt!909790 () Conc!9287)

(assert (=> d!732776 (= res!1087990 (= (list!11254 lt!909790) lt!909246))))

(declare-fun choose!15250 (List!29865) Conc!9287)

(assert (=> d!732776 (= lt!909790 (choose!15250 lt!909246))))

(assert (=> d!732776 (= (fromList!562 lt!909246) lt!909790)))

(declare-fun b!2587208 () Bool)

(assert (=> b!2587208 (= e!1632304 (isBalanced!2834 lt!909790))))

(assert (= (and d!732776 res!1087990) b!2587208))

(declare-fun m!2923447 () Bool)

(assert (=> d!732776 m!2923447))

(declare-fun m!2923449 () Bool)

(assert (=> d!732776 m!2923449))

(declare-fun m!2923451 () Bool)

(assert (=> b!2587208 m!2923451))

(assert (=> b!2586646 d!732776))

(declare-fun d!732778 () Bool)

(declare-fun lt!909791 () Int)

(assert (=> d!732778 (>= lt!909791 0)))

(declare-fun e!1632305 () Int)

(assert (=> d!732778 (= lt!909791 e!1632305)))

(declare-fun c!417156 () Bool)

(assert (=> d!732778 (= c!417156 ((_ is Nil!29765) (t!212230 lt!909247)))))

(assert (=> d!732778 (= (size!23078 (t!212230 lt!909247)) lt!909791)))

(declare-fun b!2587209 () Bool)

(assert (=> b!2587209 (= e!1632305 0)))

(declare-fun b!2587210 () Bool)

(assert (=> b!2587210 (= e!1632305 (+ 1 (size!23078 (t!212230 (t!212230 lt!909247)))))))

(assert (= (and d!732778 c!417156) b!2587209))

(assert (= (and d!732778 (not c!417156)) b!2587210))

(declare-fun m!2923453 () Bool)

(assert (=> b!2587210 m!2923453))

(assert (=> b!2586200 d!732778))

(assert (=> d!732530 d!732244))

(declare-fun d!732780 () Bool)

(assert (=> d!732780 (= (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (nullableFct!788 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun bs!471855 () Bool)

(assert (= bs!471855 d!732780))

(assert (=> bs!471855 m!2922009))

(declare-fun m!2923455 () Bool)

(assert (=> bs!471855 m!2923455))

(assert (=> b!2586496 d!732780))

(declare-fun d!732782 () Bool)

(declare-fun choose!15251 (Int) Bool)

(assert (=> d!732782 (= (Forall2!767 lambda!95836) (choose!15251 lambda!95836))))

(declare-fun bs!471856 () Bool)

(assert (= bs!471856 d!732782))

(declare-fun m!2923457 () Bool)

(assert (=> bs!471856 m!2923457))

(assert (=> d!732520 d!732782))

(declare-fun d!732784 () Bool)

(assert (=> d!732784 (= (inv!40206 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (<= (size!23078 (innerList!9347 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) 2147483647))))

(declare-fun bs!471857 () Bool)

(assert (= bs!471857 d!732784))

(declare-fun m!2923459 () Bool)

(assert (=> bs!471857 m!2923459))

(assert (=> b!2586750 d!732784))

(declare-fun b!2587211 () Bool)

(declare-fun e!1632311 () Bool)

(declare-fun lt!909792 () Bool)

(assert (=> b!2587211 (= e!1632311 (not lt!909792))))

(declare-fun d!732786 () Bool)

(declare-fun e!1632312 () Bool)

(assert (=> d!732786 e!1632312))

(declare-fun c!417158 () Bool)

(assert (=> d!732786 (= c!417158 ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun e!1632306 () Bool)

(assert (=> d!732786 (= lt!909792 e!1632306)))

(declare-fun c!417157 () Bool)

(assert (=> d!732786 (= c!417157 (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(assert (=> d!732786 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(assert (=> d!732786 (= (matchR!3598 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) lt!909792)))

(declare-fun b!2587212 () Bool)

(declare-fun res!1087998 () Bool)

(declare-fun e!1632309 () Bool)

(assert (=> b!2587212 (=> (not res!1087998) (not e!1632309))))

(assert (=> b!2587212 (= res!1087998 (isEmpty!17110 (tail!4135 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2587213 () Bool)

(assert (=> b!2587213 (= e!1632306 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (head!5862 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))) (tail!4135 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2587214 () Bool)

(declare-fun res!1087991 () Bool)

(assert (=> b!2587214 (=> (not res!1087991) (not e!1632309))))

(declare-fun call!167100 () Bool)

(assert (=> b!2587214 (= res!1087991 (not call!167100))))

(declare-fun b!2587215 () Bool)

(assert (=> b!2587215 (= e!1632312 (= lt!909792 call!167100))))

(declare-fun b!2587216 () Bool)

(declare-fun res!1087997 () Bool)

(declare-fun e!1632308 () Bool)

(assert (=> b!2587216 (=> res!1087997 e!1632308)))

(assert (=> b!2587216 (= res!1087997 (not (isEmpty!17110 (tail!4135 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))))

(declare-fun b!2587217 () Bool)

(declare-fun res!1087993 () Bool)

(declare-fun e!1632310 () Bool)

(assert (=> b!2587217 (=> res!1087993 e!1632310)))

(assert (=> b!2587217 (= res!1087993 e!1632309)))

(declare-fun res!1087996 () Bool)

(assert (=> b!2587217 (=> (not res!1087996) (not e!1632309))))

(assert (=> b!2587217 (= res!1087996 lt!909792)))

(declare-fun b!2587218 () Bool)

(declare-fun e!1632307 () Bool)

(assert (=> b!2587218 (= e!1632310 e!1632307)))

(declare-fun res!1087995 () Bool)

(assert (=> b!2587218 (=> (not res!1087995) (not e!1632307))))

(assert (=> b!2587218 (= res!1087995 (not lt!909792))))

(declare-fun b!2587219 () Bool)

(declare-fun res!1087994 () Bool)

(assert (=> b!2587219 (=> res!1087994 e!1632310)))

(assert (=> b!2587219 (= res!1087994 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))))

(assert (=> b!2587219 (= e!1632311 e!1632310)))

(declare-fun b!2587220 () Bool)

(assert (=> b!2587220 (= e!1632309 (= (head!5862 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))))

(declare-fun b!2587221 () Bool)

(assert (=> b!2587221 (= e!1632306 (nullable!2570 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2587222 () Bool)

(assert (=> b!2587222 (= e!1632312 e!1632311)))

(declare-fun c!417159 () Bool)

(assert (=> b!2587222 (= c!417159 ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2587223 () Bool)

(assert (=> b!2587223 (= e!1632308 (not (= (head!5862 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))))

(declare-fun bm!167095 () Bool)

(assert (=> bm!167095 (= call!167100 (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2587224 () Bool)

(assert (=> b!2587224 (= e!1632307 e!1632308)))

(declare-fun res!1087992 () Bool)

(assert (=> b!2587224 (=> res!1087992 e!1632308)))

(assert (=> b!2587224 (= res!1087992 call!167100)))

(assert (= (and d!732786 c!417157) b!2587221))

(assert (= (and d!732786 (not c!417157)) b!2587213))

(assert (= (and d!732786 c!417158) b!2587215))

(assert (= (and d!732786 (not c!417158)) b!2587222))

(assert (= (and b!2587222 c!417159) b!2587211))

(assert (= (and b!2587222 (not c!417159)) b!2587219))

(assert (= (and b!2587219 (not res!1087994)) b!2587217))

(assert (= (and b!2587217 res!1087996) b!2587214))

(assert (= (and b!2587214 res!1087991) b!2587212))

(assert (= (and b!2587212 res!1087998) b!2587220))

(assert (= (and b!2587217 (not res!1087993)) b!2587218))

(assert (= (and b!2587218 res!1087995) b!2587224))

(assert (= (and b!2587224 (not res!1087992)) b!2587216))

(assert (= (and b!2587216 (not res!1087997)) b!2587223))

(assert (= (or b!2587215 b!2587214 b!2587224) bm!167095))

(assert (=> bm!167095 m!2922437))

(assert (=> bm!167095 m!2922441))

(assert (=> b!2587213 m!2922437))

(declare-fun m!2923461 () Bool)

(assert (=> b!2587213 m!2923461))

(assert (=> b!2587213 m!2922435))

(assert (=> b!2587213 m!2923461))

(declare-fun m!2923463 () Bool)

(assert (=> b!2587213 m!2923463))

(assert (=> b!2587213 m!2922437))

(declare-fun m!2923465 () Bool)

(assert (=> b!2587213 m!2923465))

(assert (=> b!2587213 m!2923463))

(assert (=> b!2587213 m!2923465))

(declare-fun m!2923467 () Bool)

(assert (=> b!2587213 m!2923467))

(assert (=> b!2587220 m!2922437))

(assert (=> b!2587220 m!2923461))

(assert (=> b!2587212 m!2922437))

(assert (=> b!2587212 m!2923465))

(assert (=> b!2587212 m!2923465))

(declare-fun m!2923469 () Bool)

(assert (=> b!2587212 m!2923469))

(assert (=> b!2587223 m!2922437))

(assert (=> b!2587223 m!2923461))

(assert (=> d!732786 m!2922437))

(assert (=> d!732786 m!2922441))

(assert (=> d!732786 m!2922435))

(declare-fun m!2923471 () Bool)

(assert (=> d!732786 m!2923471))

(assert (=> b!2587216 m!2922437))

(assert (=> b!2587216 m!2923465))

(assert (=> b!2587216 m!2923465))

(assert (=> b!2587216 m!2923469))

(assert (=> b!2587221 m!2922435))

(declare-fun m!2923473 () Bool)

(assert (=> b!2587221 m!2923473))

(assert (=> b!2586217 d!732786))

(declare-fun bm!167096 () Bool)

(declare-fun call!167104 () Regex!7665)

(declare-fun c!417161 () Bool)

(assert (=> bm!167096 (= call!167104 (derivativeStep!2222 (ite c!417161 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun bm!167097 () Bool)

(declare-fun call!167103 () Regex!7665)

(declare-fun call!167101 () Regex!7665)

(assert (=> bm!167097 (= call!167103 call!167101)))

(declare-fun c!417162 () Bool)

(declare-fun call!167102 () Regex!7665)

(declare-fun bm!167098 () Bool)

(declare-fun c!417164 () Bool)

(assert (=> bm!167098 (= call!167102 (derivativeStep!2222 (ite c!417161 (regOne!15843 (regex!4521 rule!570)) (ite c!417162 (reg!7994 (regex!4521 rule!570)) (ite c!417164 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2587225 () Bool)

(declare-fun e!1632317 () Regex!7665)

(assert (=> b!2587225 (= e!1632317 (ite (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (c!416820 (regex!4521 rule!570))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732788 () Bool)

(declare-fun lt!909793 () Regex!7665)

(assert (=> d!732788 (validRegex!3279 lt!909793)))

(declare-fun e!1632315 () Regex!7665)

(assert (=> d!732788 (= lt!909793 e!1632315)))

(declare-fun c!417160 () Bool)

(assert (=> d!732788 (= c!417160 (or ((_ is EmptyExpr!7665) (regex!4521 rule!570)) ((_ is EmptyLang!7665) (regex!4521 rule!570))))))

(assert (=> d!732788 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!732788 (= (derivativeStep!2222 (regex!4521 rule!570) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) lt!909793)))

(declare-fun b!2587226 () Bool)

(assert (=> b!2587226 (= e!1632315 EmptyLang!7665)))

(declare-fun b!2587227 () Bool)

(assert (=> b!2587227 (= c!417161 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun e!1632316 () Regex!7665)

(assert (=> b!2587227 (= e!1632317 e!1632316)))

(declare-fun b!2587228 () Bool)

(declare-fun e!1632313 () Regex!7665)

(assert (=> b!2587228 (= e!1632316 e!1632313)))

(assert (=> b!2587228 (= c!417162 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2587229 () Bool)

(declare-fun e!1632314 () Regex!7665)

(assert (=> b!2587229 (= e!1632314 (Union!7665 (Concat!12409 call!167103 (regTwo!15842 (regex!4521 rule!570))) EmptyLang!7665))))

(declare-fun b!2587230 () Bool)

(assert (=> b!2587230 (= c!417164 (nullable!2570 (regOne!15842 (regex!4521 rule!570))))))

(assert (=> b!2587230 (= e!1632313 e!1632314)))

(declare-fun b!2587231 () Bool)

(assert (=> b!2587231 (= e!1632315 e!1632317)))

(declare-fun c!417163 () Bool)

(assert (=> b!2587231 (= c!417163 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(declare-fun b!2587232 () Bool)

(assert (=> b!2587232 (= e!1632316 (Union!7665 call!167102 call!167104))))

(declare-fun bm!167099 () Bool)

(assert (=> bm!167099 (= call!167101 call!167102)))

(declare-fun b!2587233 () Bool)

(assert (=> b!2587233 (= e!1632314 (Union!7665 (Concat!12409 call!167104 (regTwo!15842 (regex!4521 rule!570))) call!167103))))

(declare-fun b!2587234 () Bool)

(assert (=> b!2587234 (= e!1632313 (Concat!12409 call!167101 (regex!4521 rule!570)))))

(assert (= (and d!732788 c!417160) b!2587226))

(assert (= (and d!732788 (not c!417160)) b!2587231))

(assert (= (and b!2587231 c!417163) b!2587225))

(assert (= (and b!2587231 (not c!417163)) b!2587227))

(assert (= (and b!2587227 c!417161) b!2587232))

(assert (= (and b!2587227 (not c!417161)) b!2587228))

(assert (= (and b!2587228 c!417162) b!2587234))

(assert (= (and b!2587228 (not c!417162)) b!2587230))

(assert (= (and b!2587230 c!417164) b!2587233))

(assert (= (and b!2587230 (not c!417164)) b!2587229))

(assert (= (or b!2587233 b!2587229) bm!167097))

(assert (= (or b!2587234 bm!167097) bm!167099))

(assert (= (or b!2587232 b!2587233) bm!167096))

(assert (= (or b!2587232 bm!167099) bm!167098))

(assert (=> bm!167096 m!2922433))

(declare-fun m!2923475 () Bool)

(assert (=> bm!167096 m!2923475))

(assert (=> bm!167098 m!2922433))

(declare-fun m!2923477 () Bool)

(assert (=> bm!167098 m!2923477))

(declare-fun m!2923479 () Bool)

(assert (=> d!732788 m!2923479))

(assert (=> d!732788 m!2921939))

(assert (=> b!2587230 m!2922411))

(assert (=> b!2586217 d!732788))

(assert (=> b!2586217 d!732650))

(assert (=> b!2586217 d!732700))

(declare-fun d!732790 () Bool)

(declare-fun lt!909794 () Int)

(assert (=> d!732790 (>= lt!909794 0)))

(declare-fun e!1632318 () Int)

(assert (=> d!732790 (= lt!909794 e!1632318)))

(declare-fun c!417165 () Bool)

(assert (=> d!732790 (= c!417165 ((_ is Nil!29765) (list!11253 (seqFromList!3161 (_1!17402 lt!909270)))))))

(assert (=> d!732790 (= (size!23078 (list!11253 (seqFromList!3161 (_1!17402 lt!909270)))) lt!909794)))

(declare-fun b!2587235 () Bool)

(assert (=> b!2587235 (= e!1632318 0)))

(declare-fun b!2587236 () Bool)

(assert (=> b!2587236 (= e!1632318 (+ 1 (size!23078 (t!212230 (list!11253 (seqFromList!3161 (_1!17402 lt!909270)))))))))

(assert (= (and d!732790 c!417165) b!2587235))

(assert (= (and d!732790 (not c!417165)) b!2587236))

(declare-fun m!2923481 () Bool)

(assert (=> b!2587236 m!2923481))

(assert (=> d!732488 d!732790))

(assert (=> d!732488 d!732752))

(declare-fun d!732792 () Bool)

(declare-fun lt!909797 () Int)

(assert (=> d!732792 (= lt!909797 (size!23078 (list!11254 (c!416819 (seqFromList!3161 (_1!17402 lt!909270))))))))

(assert (=> d!732792 (= lt!909797 (ite ((_ is Empty!9287) (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))) 0 (ite ((_ is Leaf!14169) (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))) (csize!18805 (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))) (csize!18804 (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))))))))

(assert (=> d!732792 (= (size!23086 (c!416819 (seqFromList!3161 (_1!17402 lt!909270)))) lt!909797)))

(declare-fun bs!471858 () Bool)

(assert (= bs!471858 d!732792))

(assert (=> bs!471858 m!2923379))

(assert (=> bs!471858 m!2923379))

(declare-fun m!2923483 () Bool)

(assert (=> bs!471858 m!2923483))

(assert (=> d!732488 d!732792))

(declare-fun d!732794 () Bool)

(declare-fun c!417166 () Bool)

(assert (=> d!732794 (= c!417166 ((_ is Nil!29765) lt!909700))))

(declare-fun e!1632319 () (InoxSet C!15488))

(assert (=> d!732794 (= (content!4114 lt!909700) e!1632319)))

(declare-fun b!2587237 () Bool)

(assert (=> b!2587237 (= e!1632319 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587238 () Bool)

(assert (=> b!2587238 (= e!1632319 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 lt!909700) true) (content!4114 (t!212230 lt!909700))))))

(assert (= (and d!732794 c!417166) b!2587237))

(assert (= (and d!732794 (not c!417166)) b!2587238))

(declare-fun m!2923485 () Bool)

(assert (=> b!2587238 m!2923485))

(declare-fun m!2923487 () Bool)

(assert (=> b!2587238 m!2923487))

(assert (=> d!732536 d!732794))

(declare-fun d!732796 () Bool)

(declare-fun c!417167 () Bool)

(assert (=> d!732796 (= c!417167 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun e!1632320 () (InoxSet C!15488))

(assert (=> d!732796 (= (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) e!1632320)))

(declare-fun b!2587239 () Bool)

(assert (=> b!2587239 (= e!1632320 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587240 () Bool)

(assert (=> b!2587240 (= e!1632320 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) true) (content!4114 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(assert (= (and d!732796 c!417167) b!2587239))

(assert (= (and d!732796 (not c!417167)) b!2587240))

(declare-fun m!2923489 () Bool)

(assert (=> b!2587240 m!2923489))

(assert (=> b!2587240 m!2923317))

(assert (=> d!732536 d!732796))

(declare-fun d!732798 () Bool)

(declare-fun c!417168 () Bool)

(assert (=> d!732798 (= c!417168 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909381))))))

(declare-fun e!1632321 () (InoxSet C!15488))

(assert (=> d!732798 (= (content!4114 (_2!17401 (get!9380 lt!909381))) e!1632321)))

(declare-fun b!2587241 () Bool)

(assert (=> b!2587241 (= e!1632321 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587242 () Bool)

(assert (=> b!2587242 (= e!1632321 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (_2!17401 (get!9380 lt!909381))) true) (content!4114 (t!212230 (_2!17401 (get!9380 lt!909381))))))))

(assert (= (and d!732798 c!417168) b!2587241))

(assert (= (and d!732798 (not c!417168)) b!2587242))

(declare-fun m!2923491 () Bool)

(assert (=> b!2587242 m!2923491))

(declare-fun m!2923493 () Bool)

(assert (=> b!2587242 m!2923493))

(assert (=> d!732536 d!732798))

(assert (=> bm!167006 d!732230))

(declare-fun d!732800 () Bool)

(declare-fun res!1087999 () Bool)

(declare-fun e!1632322 () Bool)

(assert (=> d!732800 (=> res!1087999 e!1632322)))

(assert (=> d!732800 (= res!1087999 ((_ is Nil!29766) (t!212231 rules!4580)))))

(assert (=> d!732800 (= (noDuplicateTag!1690 thiss!28211 (t!212231 rules!4580) (Cons!29768 (tag!5011 (h!35186 rules!4580)) Nil!29768)) e!1632322)))

(declare-fun b!2587243 () Bool)

(declare-fun e!1632323 () Bool)

(assert (=> b!2587243 (= e!1632322 e!1632323)))

(declare-fun res!1088000 () Bool)

(assert (=> b!2587243 (=> (not res!1088000) (not e!1632323))))

(assert (=> b!2587243 (= res!1088000 (not (contains!5327 (Cons!29768 (tag!5011 (h!35186 rules!4580)) Nil!29768) (tag!5011 (h!35186 (t!212231 rules!4580))))))))

(declare-fun b!2587244 () Bool)

(assert (=> b!2587244 (= e!1632323 (noDuplicateTag!1690 thiss!28211 (t!212231 (t!212231 rules!4580)) (Cons!29768 (tag!5011 (h!35186 (t!212231 rules!4580))) (Cons!29768 (tag!5011 (h!35186 rules!4580)) Nil!29768))))))

(assert (= (and d!732800 (not res!1087999)) b!2587243))

(assert (= (and b!2587243 res!1088000) b!2587244))

(declare-fun m!2923495 () Bool)

(assert (=> b!2587243 m!2923495))

(declare-fun m!2923497 () Bool)

(assert (=> b!2587244 m!2923497))

(assert (=> b!2586521 d!732800))

(declare-fun b!2587245 () Bool)

(declare-fun e!1632324 () Bool)

(declare-fun lt!909800 () Option!5936)

(assert (=> b!2587245 (= e!1632324 (contains!5325 (t!212231 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909800)))))))

(declare-fun b!2587246 () Bool)

(declare-fun e!1632325 () Option!5936)

(declare-fun call!167105 () Option!5936)

(assert (=> b!2587246 (= e!1632325 call!167105)))

(declare-fun b!2587247 () Bool)

(declare-fun lt!909798 () Option!5936)

(declare-fun lt!909801 () Option!5936)

(assert (=> b!2587247 (= e!1632325 (ite (and ((_ is None!5935) lt!909798) ((_ is None!5935) lt!909801)) None!5935 (ite ((_ is None!5935) lt!909801) lt!909798 (ite ((_ is None!5935) lt!909798) lt!909801 (ite (>= (size!23077 (_1!17401 (v!32038 lt!909798))) (size!23077 (_1!17401 (v!32038 lt!909801)))) lt!909798 lt!909801)))))))

(assert (=> b!2587247 (= lt!909798 call!167105)))

(assert (=> b!2587247 (= lt!909801 (maxPrefix!2290 thiss!28211 (t!212231 (t!212231 (t!212231 rules!4580))) input!3654))))

(declare-fun b!2587248 () Bool)

(declare-fun res!1088003 () Bool)

(assert (=> b!2587248 (=> (not res!1088003) (not e!1632324))))

(assert (=> b!2587248 (= res!1088003 (< (size!23078 (_2!17401 (get!9380 lt!909800))) (size!23078 input!3654)))))

(declare-fun bm!167100 () Bool)

(assert (=> bm!167100 (= call!167105 (maxPrefixOneRule!1456 thiss!28211 (h!35186 (t!212231 (t!212231 rules!4580))) input!3654))))

(declare-fun d!732802 () Bool)

(declare-fun e!1632326 () Bool)

(assert (=> d!732802 e!1632326))

(declare-fun res!1088005 () Bool)

(assert (=> d!732802 (=> res!1088005 e!1632326)))

(assert (=> d!732802 (= res!1088005 (isEmpty!17111 lt!909800))))

(assert (=> d!732802 (= lt!909800 e!1632325)))

(declare-fun c!417169 () Bool)

(assert (=> d!732802 (= c!417169 (and ((_ is Cons!29766) (t!212231 (t!212231 rules!4580))) ((_ is Nil!29766) (t!212231 (t!212231 (t!212231 rules!4580))))))))

(declare-fun lt!909799 () Unit!43600)

(declare-fun lt!909802 () Unit!43600)

(assert (=> d!732802 (= lt!909799 lt!909802)))

(assert (=> d!732802 (isPrefix!2421 input!3654 input!3654)))

(assert (=> d!732802 (= lt!909802 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(assert (=> d!732802 (rulesValidInductive!1595 thiss!28211 (t!212231 (t!212231 rules!4580)))))

(assert (=> d!732802 (= (maxPrefix!2290 thiss!28211 (t!212231 (t!212231 rules!4580)) input!3654) lt!909800)))

(declare-fun b!2587249 () Bool)

(declare-fun res!1088006 () Bool)

(assert (=> b!2587249 (=> (not res!1088006) (not e!1632324))))

(assert (=> b!2587249 (= res!1088006 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909800)))) (originalCharacters!5287 (_1!17401 (get!9380 lt!909800)))))))

(declare-fun b!2587250 () Bool)

(assert (=> b!2587250 (= e!1632326 e!1632324)))

(declare-fun res!1088002 () Bool)

(assert (=> b!2587250 (=> (not res!1088002) (not e!1632324))))

(assert (=> b!2587250 (= res!1088002 (isDefined!4756 lt!909800))))

(declare-fun b!2587251 () Bool)

(declare-fun res!1088004 () Bool)

(assert (=> b!2587251 (=> (not res!1088004) (not e!1632324))))

(assert (=> b!2587251 (= res!1088004 (matchR!3598 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909800)))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909800))))))))

(declare-fun b!2587252 () Bool)

(declare-fun res!1088007 () Bool)

(assert (=> b!2587252 (=> (not res!1088007) (not e!1632324))))

(assert (=> b!2587252 (= res!1088007 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909800)))) (_2!17401 (get!9380 lt!909800))) input!3654))))

(declare-fun b!2587253 () Bool)

(declare-fun res!1088001 () Bool)

(assert (=> b!2587253 (=> (not res!1088001) (not e!1632324))))

(assert (=> b!2587253 (= res!1088001 (= (value!146096 (_1!17401 (get!9380 lt!909800))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909800)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909800)))))))))

(assert (= (and d!732802 c!417169) b!2587246))

(assert (= (and d!732802 (not c!417169)) b!2587247))

(assert (= (or b!2587246 b!2587247) bm!167100))

(assert (= (and d!732802 (not res!1088005)) b!2587250))

(assert (= (and b!2587250 res!1088002) b!2587249))

(assert (= (and b!2587249 res!1088006) b!2587248))

(assert (= (and b!2587248 res!1088003) b!2587252))

(assert (= (and b!2587252 res!1088007) b!2587253))

(assert (= (and b!2587253 res!1088001) b!2587251))

(assert (= (and b!2587251 res!1088004) b!2587245))

(declare-fun m!2923499 () Bool)

(assert (=> b!2587251 m!2923499))

(declare-fun m!2923501 () Bool)

(assert (=> b!2587251 m!2923501))

(assert (=> b!2587251 m!2923501))

(declare-fun m!2923503 () Bool)

(assert (=> b!2587251 m!2923503))

(assert (=> b!2587251 m!2923503))

(declare-fun m!2923505 () Bool)

(assert (=> b!2587251 m!2923505))

(assert (=> b!2587253 m!2923499))

(declare-fun m!2923507 () Bool)

(assert (=> b!2587253 m!2923507))

(assert (=> b!2587253 m!2923507))

(declare-fun m!2923509 () Bool)

(assert (=> b!2587253 m!2923509))

(declare-fun m!2923511 () Bool)

(assert (=> d!732802 m!2923511))

(assert (=> d!732802 m!2922089))

(assert (=> d!732802 m!2922091))

(declare-fun m!2923513 () Bool)

(assert (=> d!732802 m!2923513))

(declare-fun m!2923515 () Bool)

(assert (=> b!2587250 m!2923515))

(assert (=> b!2587252 m!2923499))

(assert (=> b!2587252 m!2923501))

(assert (=> b!2587252 m!2923501))

(assert (=> b!2587252 m!2923503))

(assert (=> b!2587252 m!2923503))

(declare-fun m!2923517 () Bool)

(assert (=> b!2587252 m!2923517))

(assert (=> b!2587249 m!2923499))

(assert (=> b!2587249 m!2923501))

(assert (=> b!2587249 m!2923501))

(assert (=> b!2587249 m!2923503))

(assert (=> b!2587248 m!2923499))

(declare-fun m!2923519 () Bool)

(assert (=> b!2587248 m!2923519))

(assert (=> b!2587248 m!2921793))

(declare-fun m!2923521 () Bool)

(assert (=> b!2587247 m!2923521))

(declare-fun m!2923523 () Bool)

(assert (=> bm!167100 m!2923523))

(assert (=> b!2587245 m!2923499))

(declare-fun m!2923525 () Bool)

(assert (=> b!2587245 m!2923525))

(assert (=> b!2586094 d!732802))

(declare-fun d!732804 () Bool)

(assert (=> d!732804 (= (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> bm!167014 d!732804))

(declare-fun b!2587254 () Bool)

(declare-fun e!1632332 () Bool)

(declare-fun lt!909803 () Bool)

(assert (=> b!2587254 (= e!1632332 (not lt!909803))))

(declare-fun d!732806 () Bool)

(declare-fun e!1632333 () Bool)

(assert (=> d!732806 e!1632333))

(declare-fun c!417171 () Bool)

(assert (=> d!732806 (= c!417171 ((_ is EmptyExpr!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247)))))))

(declare-fun e!1632327 () Bool)

(assert (=> d!732806 (= lt!909803 e!1632327)))

(declare-fun c!417170 () Bool)

(assert (=> d!732806 (= c!417170 (isEmpty!17110 (tail!4135 (tail!4135 lt!909247))))))

(assert (=> d!732806 (validRegex!3279 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))))))

(assert (=> d!732806 (= (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))) (tail!4135 (tail!4135 lt!909247))) lt!909803)))

(declare-fun b!2587255 () Bool)

(declare-fun res!1088015 () Bool)

(declare-fun e!1632330 () Bool)

(assert (=> b!2587255 (=> (not res!1088015) (not e!1632330))))

(assert (=> b!2587255 (= res!1088015 (isEmpty!17110 (tail!4135 (tail!4135 (tail!4135 lt!909247)))))))

(declare-fun b!2587256 () Bool)

(assert (=> b!2587256 (= e!1632327 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))) (head!5862 (tail!4135 (tail!4135 lt!909247)))) (tail!4135 (tail!4135 (tail!4135 lt!909247)))))))

(declare-fun b!2587257 () Bool)

(declare-fun res!1088008 () Bool)

(assert (=> b!2587257 (=> (not res!1088008) (not e!1632330))))

(declare-fun call!167106 () Bool)

(assert (=> b!2587257 (= res!1088008 (not call!167106))))

(declare-fun b!2587258 () Bool)

(assert (=> b!2587258 (= e!1632333 (= lt!909803 call!167106))))

(declare-fun b!2587259 () Bool)

(declare-fun res!1088014 () Bool)

(declare-fun e!1632329 () Bool)

(assert (=> b!2587259 (=> res!1088014 e!1632329)))

(assert (=> b!2587259 (= res!1088014 (not (isEmpty!17110 (tail!4135 (tail!4135 (tail!4135 lt!909247))))))))

(declare-fun b!2587260 () Bool)

(declare-fun res!1088010 () Bool)

(declare-fun e!1632331 () Bool)

(assert (=> b!2587260 (=> res!1088010 e!1632331)))

(assert (=> b!2587260 (= res!1088010 e!1632330)))

(declare-fun res!1088013 () Bool)

(assert (=> b!2587260 (=> (not res!1088013) (not e!1632330))))

(assert (=> b!2587260 (= res!1088013 lt!909803)))

(declare-fun b!2587261 () Bool)

(declare-fun e!1632328 () Bool)

(assert (=> b!2587261 (= e!1632331 e!1632328)))

(declare-fun res!1088012 () Bool)

(assert (=> b!2587261 (=> (not res!1088012) (not e!1632328))))

(assert (=> b!2587261 (= res!1088012 (not lt!909803))))

(declare-fun b!2587262 () Bool)

(declare-fun res!1088011 () Bool)

(assert (=> b!2587262 (=> res!1088011 e!1632331)))

(assert (=> b!2587262 (= res!1088011 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))))))))

(assert (=> b!2587262 (= e!1632332 e!1632331)))

(declare-fun b!2587263 () Bool)

(assert (=> b!2587263 (= e!1632330 (= (head!5862 (tail!4135 (tail!4135 lt!909247))) (c!416820 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))))))))

(declare-fun b!2587264 () Bool)

(assert (=> b!2587264 (= e!1632327 (nullable!2570 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247)))))))

(declare-fun b!2587265 () Bool)

(assert (=> b!2587265 (= e!1632333 e!1632332)))

(declare-fun c!417172 () Bool)

(assert (=> b!2587265 (= c!417172 ((_ is EmptyLang!7665) (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247)))))))

(declare-fun b!2587266 () Bool)

(assert (=> b!2587266 (= e!1632329 (not (= (head!5862 (tail!4135 (tail!4135 lt!909247))) (c!416820 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247)))))))))

(declare-fun bm!167101 () Bool)

(assert (=> bm!167101 (= call!167106 (isEmpty!17110 (tail!4135 (tail!4135 lt!909247))))))

(declare-fun b!2587267 () Bool)

(assert (=> b!2587267 (= e!1632328 e!1632329)))

(declare-fun res!1088009 () Bool)

(assert (=> b!2587267 (=> res!1088009 e!1632329)))

(assert (=> b!2587267 (= res!1088009 call!167106)))

(assert (= (and d!732806 c!417170) b!2587264))

(assert (= (and d!732806 (not c!417170)) b!2587256))

(assert (= (and d!732806 c!417171) b!2587258))

(assert (= (and d!732806 (not c!417171)) b!2587265))

(assert (= (and b!2587265 c!417172) b!2587254))

(assert (= (and b!2587265 (not c!417172)) b!2587262))

(assert (= (and b!2587262 (not res!1088011)) b!2587260))

(assert (= (and b!2587260 res!1088013) b!2587257))

(assert (= (and b!2587257 res!1088008) b!2587255))

(assert (= (and b!2587255 res!1088015) b!2587263))

(assert (= (and b!2587260 (not res!1088010)) b!2587261))

(assert (= (and b!2587261 res!1088012) b!2587267))

(assert (= (and b!2587267 (not res!1088009)) b!2587259))

(assert (= (and b!2587259 (not res!1088014)) b!2587266))

(assert (= (or b!2587258 b!2587257 b!2587267) bm!167101))

(assert (=> bm!167101 m!2922373))

(assert (=> bm!167101 m!2922377))

(assert (=> b!2587256 m!2922373))

(declare-fun m!2923527 () Bool)

(assert (=> b!2587256 m!2923527))

(assert (=> b!2587256 m!2922371))

(assert (=> b!2587256 m!2923527))

(declare-fun m!2923529 () Bool)

(assert (=> b!2587256 m!2923529))

(assert (=> b!2587256 m!2922373))

(declare-fun m!2923531 () Bool)

(assert (=> b!2587256 m!2923531))

(assert (=> b!2587256 m!2923529))

(assert (=> b!2587256 m!2923531))

(declare-fun m!2923533 () Bool)

(assert (=> b!2587256 m!2923533))

(assert (=> b!2587263 m!2922373))

(assert (=> b!2587263 m!2923527))

(assert (=> b!2587255 m!2922373))

(assert (=> b!2587255 m!2923531))

(assert (=> b!2587255 m!2923531))

(declare-fun m!2923535 () Bool)

(assert (=> b!2587255 m!2923535))

(assert (=> b!2587266 m!2922373))

(assert (=> b!2587266 m!2923527))

(assert (=> d!732806 m!2922373))

(assert (=> d!732806 m!2922377))

(assert (=> d!732806 m!2922371))

(declare-fun m!2923537 () Bool)

(assert (=> d!732806 m!2923537))

(assert (=> b!2587259 m!2922373))

(assert (=> b!2587259 m!2923531))

(assert (=> b!2587259 m!2923531))

(assert (=> b!2587259 m!2923535))

(assert (=> b!2587264 m!2922371))

(declare-fun m!2923539 () Bool)

(assert (=> b!2587264 m!2923539))

(assert (=> b!2586147 d!732806))

(declare-fun c!417174 () Bool)

(declare-fun bm!167102 () Bool)

(declare-fun call!167110 () Regex!7665)

(assert (=> bm!167102 (= call!167110 (derivativeStep!2222 (ite c!417174 (regTwo!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))) (head!5862 (tail!4135 lt!909247))))))

(declare-fun bm!167103 () Bool)

(declare-fun call!167109 () Regex!7665)

(declare-fun call!167107 () Regex!7665)

(assert (=> bm!167103 (= call!167109 call!167107)))

(declare-fun c!417175 () Bool)

(declare-fun call!167108 () Regex!7665)

(declare-fun bm!167104 () Bool)

(declare-fun c!417177 () Bool)

(assert (=> bm!167104 (= call!167108 (derivativeStep!2222 (ite c!417174 (regOne!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (ite c!417175 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (ite c!417177 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))) (head!5862 (tail!4135 lt!909247))))))

(declare-fun b!2587268 () Bool)

(declare-fun e!1632338 () Regex!7665)

(assert (=> b!2587268 (= e!1632338 (ite (= (head!5862 (tail!4135 lt!909247)) (c!416820 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732808 () Bool)

(declare-fun lt!909804 () Regex!7665)

(assert (=> d!732808 (validRegex!3279 lt!909804)))

(declare-fun e!1632336 () Regex!7665)

(assert (=> d!732808 (= lt!909804 e!1632336)))

(declare-fun c!417173 () Bool)

(assert (=> d!732808 (= c!417173 (or ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))

(assert (=> d!732808 (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))

(assert (=> d!732808 (= (derivativeStep!2222 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)) (head!5862 (tail!4135 lt!909247))) lt!909804)))

(declare-fun b!2587269 () Bool)

(assert (=> b!2587269 (= e!1632336 EmptyLang!7665)))

(declare-fun b!2587270 () Bool)

(assert (=> b!2587270 (= c!417174 ((_ is Union!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun e!1632337 () Regex!7665)

(assert (=> b!2587270 (= e!1632338 e!1632337)))

(declare-fun b!2587271 () Bool)

(declare-fun e!1632334 () Regex!7665)

(assert (=> b!2587271 (= e!1632337 e!1632334)))

(assert (=> b!2587271 (= c!417175 ((_ is Star!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun e!1632335 () Regex!7665)

(declare-fun b!2587272 () Bool)

(assert (=> b!2587272 (= e!1632335 (Union!7665 (Concat!12409 call!167109 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))) EmptyLang!7665))))

(declare-fun b!2587273 () Bool)

(assert (=> b!2587273 (= c!417177 (nullable!2570 (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))

(assert (=> b!2587273 (= e!1632334 e!1632335)))

(declare-fun b!2587274 () Bool)

(assert (=> b!2587274 (= e!1632336 e!1632338)))

(declare-fun c!417176 () Bool)

(assert (=> b!2587274 (= c!417176 ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun b!2587275 () Bool)

(assert (=> b!2587275 (= e!1632337 (Union!7665 call!167108 call!167110))))

(declare-fun bm!167105 () Bool)

(assert (=> bm!167105 (= call!167107 call!167108)))

(declare-fun b!2587276 () Bool)

(assert (=> b!2587276 (= e!1632335 (Union!7665 (Concat!12409 call!167110 (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))) call!167109))))

(declare-fun b!2587277 () Bool)

(assert (=> b!2587277 (= e!1632334 (Concat!12409 call!167107 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(assert (= (and d!732808 c!417173) b!2587269))

(assert (= (and d!732808 (not c!417173)) b!2587274))

(assert (= (and b!2587274 c!417176) b!2587268))

(assert (= (and b!2587274 (not c!417176)) b!2587270))

(assert (= (and b!2587270 c!417174) b!2587275))

(assert (= (and b!2587270 (not c!417174)) b!2587271))

(assert (= (and b!2587271 c!417175) b!2587277))

(assert (= (and b!2587271 (not c!417175)) b!2587273))

(assert (= (and b!2587273 c!417177) b!2587276))

(assert (= (and b!2587273 (not c!417177)) b!2587272))

(assert (= (or b!2587276 b!2587272) bm!167103))

(assert (= (or b!2587277 bm!167103) bm!167105))

(assert (= (or b!2587275 b!2587276) bm!167102))

(assert (= (or b!2587275 bm!167105) bm!167104))

(assert (=> bm!167102 m!2922369))

(declare-fun m!2923541 () Bool)

(assert (=> bm!167102 m!2923541))

(assert (=> bm!167104 m!2922369))

(declare-fun m!2923543 () Bool)

(assert (=> bm!167104 m!2923543))

(declare-fun m!2923545 () Bool)

(assert (=> d!732808 m!2923545))

(assert (=> d!732808 m!2921931))

(assert (=> d!732808 m!2922379))

(declare-fun m!2923547 () Bool)

(assert (=> b!2587273 m!2923547))

(assert (=> b!2586147 d!732808))

(assert (=> b!2586147 d!732680))

(assert (=> b!2586147 d!732712))

(declare-fun d!732810 () Bool)

(declare-fun lt!909805 () Int)

(assert (=> d!732810 (>= lt!909805 0)))

(declare-fun e!1632339 () Int)

(assert (=> d!732810 (= lt!909805 e!1632339)))

(declare-fun c!417178 () Bool)

(assert (=> d!732810 (= c!417178 ((_ is Nil!29765) lt!909700))))

(assert (=> d!732810 (= (size!23078 lt!909700) lt!909805)))

(declare-fun b!2587278 () Bool)

(assert (=> b!2587278 (= e!1632339 0)))

(declare-fun b!2587279 () Bool)

(assert (=> b!2587279 (= e!1632339 (+ 1 (size!23078 (t!212230 lt!909700))))))

(assert (= (and d!732810 c!417178) b!2587278))

(assert (= (and d!732810 (not c!417178)) b!2587279))

(declare-fun m!2923549 () Bool)

(assert (=> b!2587279 m!2923549))

(assert (=> b!2586677 d!732810))

(declare-fun d!732812 () Bool)

(declare-fun lt!909806 () Int)

(assert (=> d!732812 (>= lt!909806 0)))

(declare-fun e!1632340 () Int)

(assert (=> d!732812 (= lt!909806 e!1632340)))

(declare-fun c!417179 () Bool)

(assert (=> d!732812 (= c!417179 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!732812 (= (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) lt!909806)))

(declare-fun b!2587280 () Bool)

(assert (=> b!2587280 (= e!1632340 0)))

(declare-fun b!2587281 () Bool)

(assert (=> b!2587281 (= e!1632340 (+ 1 (size!23078 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(assert (= (and d!732812 c!417179) b!2587280))

(assert (= (and d!732812 (not c!417179)) b!2587281))

(assert (=> b!2587281 m!2923323))

(assert (=> b!2586677 d!732812))

(assert (=> b!2586677 d!732462))

(declare-fun d!732814 () Bool)

(assert (=> d!732814 (= (tail!4135 input!3654) (t!212230 input!3654))))

(assert (=> bm!167012 d!732814))

(declare-fun bs!471859 () Bool)

(declare-fun d!732816 () Bool)

(assert (= bs!471859 (and d!732816 b!2585591)))

(declare-fun lambda!95851 () Int)

(assert (=> bs!471859 (= lambda!95851 lambda!95783)))

(declare-fun bs!471860 () Bool)

(assert (= bs!471860 (and d!732816 d!732146)))

(assert (=> bs!471860 (= lambda!95851 lambda!95801)))

(declare-fun bs!471861 () Bool)

(assert (= bs!471861 (and d!732816 d!732214)))

(assert (=> bs!471861 (= lambda!95851 lambda!95803)))

(declare-fun lambda!95852 () Int)

(assert (=> bs!471859 (= lambda!95852 lambda!95784)))

(assert (=> bs!471860 (= lambda!95852 lambda!95802)))

(assert (=> bs!471861 (= lambda!95852 lambda!95804)))

(assert (=> d!732816 (forall!6065 (map!6607 (t!212231 (t!212231 (t!212231 rs!798))) lambda!95851) lambda!95852)))

(declare-fun lt!909811 () Unit!43600)

(declare-fun e!1632341 () Unit!43600)

(assert (=> d!732816 (= lt!909811 e!1632341)))

(declare-fun c!417180 () Bool)

(assert (=> d!732816 (= c!417180 ((_ is Nil!29766) (t!212231 (t!212231 (t!212231 rs!798)))))))

(assert (=> d!732816 (rulesValid!1693 thiss!28211 (t!212231 (t!212231 (t!212231 rs!798))))))

(declare-fun lt!909810 () Unit!43600)

(declare-fun lt!909807 () Unit!43600)

(assert (=> d!732816 (= lt!909810 lt!909807)))

(declare-fun lt!909808 () List!29865)

(assert (=> d!732816 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909808)) rule!570 (size!23078 lt!909808) lt!909808) suffix!1684)))))

(assert (=> d!732816 (= lt!909807 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!619 thiss!28211 rules!4580 lt!909808 input!3654 suffix!1684 rule!570))))

(assert (=> d!732816 (= lt!909808 (list!11253 (charsOf!2850 token!562)))))

(assert (=> d!732816 (= (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 (t!212231 (t!212231 rs!798)))) lt!909811)))

(declare-fun b!2587282 () Bool)

(declare-fun Unit!43616 () Unit!43600)

(assert (=> b!2587282 (= e!1632341 Unit!43616)))

(declare-fun b!2587283 () Bool)

(declare-fun Unit!43617 () Unit!43600)

(assert (=> b!2587283 (= e!1632341 Unit!43617)))

(declare-fun lt!909809 () Unit!43600)

(assert (=> b!2587283 (= lt!909809 (lemma!560 input!3654 rule!570 rules!4580 suffix!1684 thiss!28211 token!562 (t!212231 (t!212231 (t!212231 (t!212231 rs!798))))))))

(assert (= (and d!732816 c!417180) b!2587282))

(assert (= (and d!732816 (not c!417180)) b!2587283))

(assert (=> d!732816 m!2921723))

(assert (=> d!732816 m!2921683))

(assert (=> d!732816 m!2921685))

(declare-fun m!2923551 () Bool)

(assert (=> d!732816 m!2923551))

(declare-fun m!2923553 () Bool)

(assert (=> d!732816 m!2923553))

(declare-fun m!2923555 () Bool)

(assert (=> d!732816 m!2923555))

(declare-fun m!2923557 () Bool)

(assert (=> d!732816 m!2923557))

(declare-fun m!2923559 () Bool)

(assert (=> d!732816 m!2923559))

(assert (=> d!732816 m!2923555))

(declare-fun m!2923561 () Bool)

(assert (=> d!732816 m!2923561))

(assert (=> d!732816 m!2923551))

(declare-fun m!2923563 () Bool)

(assert (=> d!732816 m!2923563))

(assert (=> d!732816 m!2921683))

(declare-fun m!2923565 () Bool)

(assert (=> b!2587283 m!2923565))

(assert (=> b!2586087 d!732816))

(declare-fun d!732818 () Bool)

(assert (=> d!732818 (= (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))) (isBalanced!2834 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))))

(declare-fun bs!471862 () Bool)

(assert (= bs!471862 d!732818))

(declare-fun m!2923567 () Bool)

(assert (=> bs!471862 m!2923567))

(assert (=> tb!141021 d!732818))

(declare-fun b!2587284 () Bool)

(declare-fun e!1632347 () Bool)

(declare-fun lt!909812 () Bool)

(assert (=> b!2587284 (= e!1632347 (not lt!909812))))

(declare-fun d!732820 () Bool)

(declare-fun e!1632348 () Bool)

(assert (=> d!732820 e!1632348))

(declare-fun c!417182 () Bool)

(assert (=> d!732820 (= c!417182 ((_ is EmptyExpr!7665) (regex!4521 (h!35186 rules!4580))))))

(declare-fun e!1632342 () Bool)

(assert (=> d!732820 (= lt!909812 e!1632342)))

(declare-fun c!417181 () Bool)

(assert (=> d!732820 (= c!417181 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> d!732820 (validRegex!3279 (regex!4521 (h!35186 rules!4580)))))

(assert (=> d!732820 (= (matchR!3598 (regex!4521 (h!35186 rules!4580)) (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) lt!909812)))

(declare-fun b!2587285 () Bool)

(declare-fun res!1088023 () Bool)

(declare-fun e!1632345 () Bool)

(assert (=> b!2587285 (=> (not res!1088023) (not e!1632345))))

(assert (=> b!2587285 (= res!1088023 (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2587286 () Bool)

(assert (=> b!2587286 (= e!1632342 (matchR!3598 (derivativeStep!2222 (regex!4521 (h!35186 rules!4580)) (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))) (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654))))))))

(declare-fun b!2587287 () Bool)

(declare-fun res!1088016 () Bool)

(assert (=> b!2587287 (=> (not res!1088016) (not e!1632345))))

(declare-fun call!167111 () Bool)

(assert (=> b!2587287 (= res!1088016 (not call!167111))))

(declare-fun b!2587288 () Bool)

(assert (=> b!2587288 (= e!1632348 (= lt!909812 call!167111))))

(declare-fun b!2587289 () Bool)

(declare-fun res!1088022 () Bool)

(declare-fun e!1632344 () Bool)

(assert (=> b!2587289 (=> res!1088022 e!1632344)))

(assert (=> b!2587289 (= res!1088022 (not (isEmpty!17110 (tail!4135 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))))

(declare-fun b!2587290 () Bool)

(declare-fun res!1088018 () Bool)

(declare-fun e!1632346 () Bool)

(assert (=> b!2587290 (=> res!1088018 e!1632346)))

(assert (=> b!2587290 (= res!1088018 e!1632345)))

(declare-fun res!1088021 () Bool)

(assert (=> b!2587290 (=> (not res!1088021) (not e!1632345))))

(assert (=> b!2587290 (= res!1088021 lt!909812)))

(declare-fun b!2587291 () Bool)

(declare-fun e!1632343 () Bool)

(assert (=> b!2587291 (= e!1632346 e!1632343)))

(declare-fun res!1088020 () Bool)

(assert (=> b!2587291 (=> (not res!1088020) (not e!1632343))))

(assert (=> b!2587291 (= res!1088020 (not lt!909812))))

(declare-fun b!2587292 () Bool)

(declare-fun res!1088019 () Bool)

(assert (=> b!2587292 (=> res!1088019 e!1632346)))

(assert (=> b!2587292 (= res!1088019 (not ((_ is ElementMatch!7665) (regex!4521 (h!35186 rules!4580)))))))

(assert (=> b!2587292 (= e!1632347 e!1632346)))

(declare-fun b!2587293 () Bool)

(assert (=> b!2587293 (= e!1632345 (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (c!416820 (regex!4521 (h!35186 rules!4580)))))))

(declare-fun b!2587294 () Bool)

(assert (=> b!2587294 (= e!1632342 (nullable!2570 (regex!4521 (h!35186 rules!4580))))))

(declare-fun b!2587295 () Bool)

(assert (=> b!2587295 (= e!1632348 e!1632347)))

(declare-fun c!417183 () Bool)

(assert (=> b!2587295 (= c!417183 ((_ is EmptyLang!7665) (regex!4521 (h!35186 rules!4580))))))

(declare-fun b!2587296 () Bool)

(assert (=> b!2587296 (= e!1632344 (not (= (head!5862 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) (c!416820 (regex!4521 (h!35186 rules!4580))))))))

(declare-fun bm!167106 () Bool)

(assert (=> bm!167106 (= call!167111 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun b!2587297 () Bool)

(assert (=> b!2587297 (= e!1632343 e!1632344)))

(declare-fun res!1088017 () Bool)

(assert (=> b!2587297 (=> res!1088017 e!1632344)))

(assert (=> b!2587297 (= res!1088017 call!167111)))

(assert (= (and d!732820 c!417181) b!2587294))

(assert (= (and d!732820 (not c!417181)) b!2587286))

(assert (= (and d!732820 c!417182) b!2587288))

(assert (= (and d!732820 (not c!417182)) b!2587295))

(assert (= (and b!2587295 c!417183) b!2587284))

(assert (= (and b!2587295 (not c!417183)) b!2587292))

(assert (= (and b!2587292 (not res!1088019)) b!2587290))

(assert (= (and b!2587290 res!1088021) b!2587287))

(assert (= (and b!2587287 res!1088016) b!2587285))

(assert (= (and b!2587285 res!1088023) b!2587293))

(assert (= (and b!2587290 (not res!1088018)) b!2587291))

(assert (= (and b!2587291 res!1088020) b!2587297))

(assert (= (and b!2587297 (not res!1088017)) b!2587289))

(assert (= (and b!2587289 (not res!1088022)) b!2587296))

(assert (= (or b!2587288 b!2587287 b!2587297) bm!167106))

(assert (=> bm!167106 m!2922281))

(declare-fun m!2923569 () Bool)

(assert (=> b!2587286 m!2923569))

(assert (=> b!2587286 m!2923569))

(declare-fun m!2923571 () Bool)

(assert (=> b!2587286 m!2923571))

(declare-fun m!2923573 () Bool)

(assert (=> b!2587286 m!2923573))

(assert (=> b!2587286 m!2923571))

(assert (=> b!2587286 m!2923573))

(declare-fun m!2923575 () Bool)

(assert (=> b!2587286 m!2923575))

(assert (=> b!2587293 m!2923569))

(assert (=> b!2587285 m!2923573))

(assert (=> b!2587285 m!2923573))

(declare-fun m!2923577 () Bool)

(assert (=> b!2587285 m!2923577))

(assert (=> b!2587296 m!2923569))

(assert (=> d!732820 m!2922281))

(declare-fun m!2923579 () Bool)

(assert (=> d!732820 m!2923579))

(assert (=> b!2587289 m!2923573))

(assert (=> b!2587289 m!2923573))

(assert (=> b!2587289 m!2923577))

(declare-fun m!2923581 () Bool)

(assert (=> b!2587294 m!2923581))

(assert (=> b!2586102 d!732820))

(declare-fun b!2587299 () Bool)

(declare-fun e!1632355 () tuple2!29720)

(declare-fun e!1632350 () tuple2!29720)

(assert (=> b!2587299 (= e!1632355 e!1632350)))

(declare-fun lt!909830 () tuple2!29720)

(declare-fun call!167112 () tuple2!29720)

(assert (=> b!2587299 (= lt!909830 call!167112)))

(declare-fun c!417186 () Bool)

(assert (=> b!2587299 (= c!417186 (isEmpty!17110 (_1!17402 lt!909830)))))

(declare-fun b!2587300 () Bool)

(declare-fun e!1632356 () tuple2!29720)

(assert (=> b!2587300 (= e!1632356 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587301 () Bool)

(declare-fun c!417188 () Bool)

(declare-fun call!167119 () Bool)

(assert (=> b!2587301 (= c!417188 call!167119)))

(declare-fun lt!909821 () Unit!43600)

(declare-fun lt!909834 () Unit!43600)

(assert (=> b!2587301 (= lt!909821 lt!909834)))

(assert (=> b!2587301 (= input!3654 Nil!29765)))

(declare-fun call!167113 () Unit!43600)

(assert (=> b!2587301 (= lt!909834 call!167113)))

(declare-fun lt!909820 () Unit!43600)

(declare-fun lt!909827 () Unit!43600)

(assert (=> b!2587301 (= lt!909820 lt!909827)))

(declare-fun call!167116 () Bool)

(assert (=> b!2587301 call!167116))

(declare-fun call!167114 () Unit!43600)

(assert (=> b!2587301 (= lt!909827 call!167114)))

(declare-fun e!1632354 () tuple2!29720)

(declare-fun e!1632351 () tuple2!29720)

(assert (=> b!2587301 (= e!1632354 e!1632351)))

(declare-fun b!2587302 () Bool)

(declare-fun e!1632352 () Unit!43600)

(declare-fun Unit!43618 () Unit!43600)

(assert (=> b!2587302 (= e!1632352 Unit!43618)))

(declare-fun b!2587303 () Bool)

(assert (=> b!2587303 (= e!1632355 call!167112)))

(declare-fun bm!167107 () Bool)

(assert (=> bm!167107 (= call!167119 (nullable!2570 (regex!4521 (h!35186 rules!4580))))))

(declare-fun bm!167108 () Bool)

(declare-fun call!167117 () C!15488)

(assert (=> bm!167108 (= call!167117 (head!5862 input!3654))))

(declare-fun bm!167109 () Bool)

(declare-fun call!167115 () List!29865)

(declare-fun call!167118 () Regex!7665)

(declare-fun lt!909819 () List!29865)

(assert (=> bm!167109 (= call!167112 (findLongestMatchInner!756 call!167118 lt!909819 (+ (size!23078 Nil!29765) 1) call!167115 input!3654 (size!23078 input!3654)))))

(declare-fun bm!167110 () Bool)

(assert (=> bm!167110 (= call!167116 (isPrefix!2421 input!3654 input!3654))))

(declare-fun bm!167111 () Bool)

(assert (=> bm!167111 (= call!167118 (derivativeStep!2222 (regex!4521 (h!35186 rules!4580)) call!167117))))

(declare-fun b!2587304 () Bool)

(declare-fun e!1632349 () Bool)

(declare-fun lt!909818 () tuple2!29720)

(assert (=> b!2587304 (= e!1632349 (>= (size!23078 (_1!17402 lt!909818)) (size!23078 Nil!29765)))))

(declare-fun bm!167112 () Bool)

(assert (=> bm!167112 (= call!167114 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(declare-fun b!2587305 () Bool)

(declare-fun Unit!43619 () Unit!43600)

(assert (=> b!2587305 (= e!1632352 Unit!43619)))

(declare-fun lt!909828 () Unit!43600)

(assert (=> b!2587305 (= lt!909828 call!167114)))

(assert (=> b!2587305 call!167116))

(declare-fun lt!909831 () Unit!43600)

(assert (=> b!2587305 (= lt!909831 lt!909828)))

(declare-fun lt!909815 () Unit!43600)

(assert (=> b!2587305 (= lt!909815 call!167113)))

(assert (=> b!2587305 (= input!3654 Nil!29765)))

(declare-fun lt!909825 () Unit!43600)

(assert (=> b!2587305 (= lt!909825 lt!909815)))

(assert (=> b!2587305 false))

(declare-fun b!2587298 () Bool)

(assert (=> b!2587298 (= e!1632350 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun d!732822 () Bool)

(declare-fun e!1632353 () Bool)

(assert (=> d!732822 e!1632353))

(declare-fun res!1088024 () Bool)

(assert (=> d!732822 (=> (not res!1088024) (not e!1632353))))

(assert (=> d!732822 (= res!1088024 (= (++!7311 (_1!17402 lt!909818) (_2!17402 lt!909818)) input!3654))))

(assert (=> d!732822 (= lt!909818 e!1632356)))

(declare-fun c!417187 () Bool)

(assert (=> d!732822 (= c!417187 (lostCause!697 (regex!4521 (h!35186 rules!4580))))))

(declare-fun lt!909826 () Unit!43600)

(declare-fun Unit!43620 () Unit!43600)

(assert (=> d!732822 (= lt!909826 Unit!43620)))

(assert (=> d!732822 (= (getSuffix!1185 input!3654 Nil!29765) input!3654)))

(declare-fun lt!909829 () Unit!43600)

(declare-fun lt!909813 () Unit!43600)

(assert (=> d!732822 (= lt!909829 lt!909813)))

(declare-fun lt!909832 () List!29865)

(assert (=> d!732822 (= input!3654 lt!909832)))

(assert (=> d!732822 (= lt!909813 (lemmaSamePrefixThenSameSuffix!1087 Nil!29765 input!3654 Nil!29765 lt!909832 input!3654))))

(assert (=> d!732822 (= lt!909832 (getSuffix!1185 input!3654 Nil!29765))))

(declare-fun lt!909833 () Unit!43600)

(declare-fun lt!909840 () Unit!43600)

(assert (=> d!732822 (= lt!909833 lt!909840)))

(assert (=> d!732822 (isPrefix!2421 Nil!29765 (++!7311 Nil!29765 input!3654))))

(assert (=> d!732822 (= lt!909840 (lemmaConcatTwoListThenFirstIsPrefix!1599 Nil!29765 input!3654))))

(assert (=> d!732822 (validRegex!3279 (regex!4521 (h!35186 rules!4580)))))

(assert (=> d!732822 (= (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)) lt!909818)))

(declare-fun b!2587306 () Bool)

(assert (=> b!2587306 (= e!1632356 e!1632354)))

(declare-fun c!417189 () Bool)

(assert (=> b!2587306 (= c!417189 (= (size!23078 Nil!29765) (size!23078 input!3654)))))

(declare-fun bm!167113 () Bool)

(assert (=> bm!167113 (= call!167115 (tail!4135 input!3654))))

(declare-fun b!2587307 () Bool)

(declare-fun c!417184 () Bool)

(assert (=> b!2587307 (= c!417184 call!167119)))

(declare-fun lt!909837 () Unit!43600)

(declare-fun lt!909835 () Unit!43600)

(assert (=> b!2587307 (= lt!909837 lt!909835)))

(declare-fun lt!909823 () C!15488)

(declare-fun lt!909839 () List!29865)

(assert (=> b!2587307 (= (++!7311 (++!7311 Nil!29765 (Cons!29765 lt!909823 Nil!29765)) lt!909839) input!3654)))

(assert (=> b!2587307 (= lt!909835 (lemmaMoveElementToOtherListKeepsConcatEq!816 Nil!29765 lt!909823 lt!909839 input!3654))))

(assert (=> b!2587307 (= lt!909839 (tail!4135 input!3654))))

(assert (=> b!2587307 (= lt!909823 (head!5862 input!3654))))

(declare-fun lt!909816 () Unit!43600)

(declare-fun lt!909822 () Unit!43600)

(assert (=> b!2587307 (= lt!909816 lt!909822)))

(assert (=> b!2587307 (isPrefix!2421 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) input!3654)))

(assert (=> b!2587307 (= lt!909822 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(declare-fun lt!909824 () Unit!43600)

(declare-fun lt!909836 () Unit!43600)

(assert (=> b!2587307 (= lt!909824 lt!909836)))

(assert (=> b!2587307 (= lt!909836 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(assert (=> b!2587307 (= lt!909819 (++!7311 Nil!29765 (Cons!29765 (head!5862 input!3654) Nil!29765)))))

(declare-fun lt!909817 () Unit!43600)

(assert (=> b!2587307 (= lt!909817 e!1632352)))

(declare-fun c!417185 () Bool)

(assert (=> b!2587307 (= c!417185 (= (size!23078 Nil!29765) (size!23078 input!3654)))))

(declare-fun lt!909838 () Unit!43600)

(declare-fun lt!909814 () Unit!43600)

(assert (=> b!2587307 (= lt!909838 lt!909814)))

(assert (=> b!2587307 (<= (size!23078 Nil!29765) (size!23078 input!3654))))

(assert (=> b!2587307 (= lt!909814 (lemmaIsPrefixThenSmallerEqSize!207 Nil!29765 input!3654))))

(assert (=> b!2587307 (= e!1632354 e!1632355)))

(declare-fun b!2587308 () Bool)

(assert (=> b!2587308 (= e!1632353 e!1632349)))

(declare-fun res!1088025 () Bool)

(assert (=> b!2587308 (=> res!1088025 e!1632349)))

(assert (=> b!2587308 (= res!1088025 (isEmpty!17110 (_1!17402 lt!909818)))))

(declare-fun b!2587309 () Bool)

(assert (=> b!2587309 (= e!1632351 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587310 () Bool)

(assert (=> b!2587310 (= e!1632351 (tuple2!29721 Nil!29765 Nil!29765))))

(declare-fun b!2587311 () Bool)

(assert (=> b!2587311 (= e!1632350 lt!909830)))

(declare-fun bm!167114 () Bool)

(assert (=> bm!167114 (= call!167113 (lemmaIsPrefixSameLengthThenSameList!406 input!3654 Nil!29765 input!3654))))

(assert (= (and d!732822 c!417187) b!2587300))

(assert (= (and d!732822 (not c!417187)) b!2587306))

(assert (= (and b!2587306 c!417189) b!2587301))

(assert (= (and b!2587306 (not c!417189)) b!2587307))

(assert (= (and b!2587301 c!417188) b!2587310))

(assert (= (and b!2587301 (not c!417188)) b!2587309))

(assert (= (and b!2587307 c!417185) b!2587305))

(assert (= (and b!2587307 (not c!417185)) b!2587302))

(assert (= (and b!2587307 c!417184) b!2587299))

(assert (= (and b!2587307 (not c!417184)) b!2587303))

(assert (= (and b!2587299 c!417186) b!2587298))

(assert (= (and b!2587299 (not c!417186)) b!2587311))

(assert (= (or b!2587299 b!2587303) bm!167113))

(assert (= (or b!2587299 b!2587303) bm!167108))

(assert (= (or b!2587299 b!2587303) bm!167111))

(assert (= (or b!2587299 b!2587303) bm!167109))

(assert (= (or b!2587301 b!2587305) bm!167110))

(assert (= (or b!2587301 b!2587307) bm!167107))

(assert (= (or b!2587301 b!2587305) bm!167114))

(assert (= (or b!2587301 b!2587305) bm!167112))

(assert (= (and d!732822 res!1088024) b!2587308))

(assert (= (and b!2587308 (not res!1088025)) b!2587304))

(assert (=> bm!167113 m!2922307))

(assert (=> b!2587307 m!2921801))

(assert (=> b!2587307 m!2922627))

(assert (=> b!2587307 m!2922629))

(assert (=> b!2587307 m!2921793))

(assert (=> b!2587307 m!2922631))

(assert (=> b!2587307 m!2922307))

(declare-fun m!2923583 () Bool)

(assert (=> b!2587307 m!2923583))

(assert (=> b!2587307 m!2922635))

(assert (=> b!2587307 m!2922637))

(assert (=> b!2587307 m!2922305))

(assert (=> b!2587307 m!2922627))

(assert (=> b!2587307 m!2922639))

(assert (=> b!2587307 m!2923583))

(declare-fun m!2923585 () Bool)

(assert (=> b!2587307 m!2923585))

(declare-fun m!2923587 () Bool)

(assert (=> b!2587307 m!2923587))

(assert (=> b!2587307 m!2922637))

(assert (=> b!2587307 m!2922647))

(assert (=> bm!167110 m!2922089))

(declare-fun m!2923589 () Bool)

(assert (=> b!2587308 m!2923589))

(assert (=> bm!167109 m!2921793))

(declare-fun m!2923591 () Bool)

(assert (=> bm!167109 m!2923591))

(declare-fun m!2923593 () Bool)

(assert (=> bm!167111 m!2923593))

(assert (=> bm!167114 m!2922655))

(assert (=> d!732822 m!2922657))

(assert (=> d!732822 m!2923579))

(assert (=> d!732822 m!2922659))

(declare-fun m!2923595 () Bool)

(assert (=> d!732822 m!2923595))

(declare-fun m!2923597 () Bool)

(assert (=> d!732822 m!2923597))

(declare-fun m!2923599 () Bool)

(assert (=> d!732822 m!2923599))

(assert (=> d!732822 m!2922637))

(assert (=> d!732822 m!2922657))

(assert (=> d!732822 m!2922667))

(assert (=> bm!167107 m!2923581))

(assert (=> bm!167112 m!2922091))

(declare-fun m!2923601 () Bool)

(assert (=> b!2587304 m!2923601))

(assert (=> b!2587304 m!2921801))

(assert (=> bm!167108 m!2922305))

(declare-fun m!2923603 () Bool)

(assert (=> b!2587299 m!2923603))

(assert (=> b!2586102 d!732822))

(assert (=> b!2586102 d!732410))

(assert (=> b!2586102 d!732242))

(declare-fun d!732824 () Bool)

(declare-fun res!1088026 () Bool)

(declare-fun e!1632357 () Bool)

(assert (=> d!732824 (=> res!1088026 e!1632357)))

(assert (=> d!732824 (= res!1088026 ((_ is Nil!29767) (t!212232 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(assert (=> d!732824 (= (forall!6065 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783))) lambda!95784) e!1632357)))

(declare-fun b!2587312 () Bool)

(declare-fun e!1632358 () Bool)

(assert (=> b!2587312 (= e!1632357 e!1632358)))

(declare-fun res!1088027 () Bool)

(assert (=> b!2587312 (=> (not res!1088027) (not e!1632358))))

(assert (=> b!2587312 (= res!1088027 (dynLambda!12585 lambda!95784 (h!35187 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783))))))))

(declare-fun b!2587313 () Bool)

(assert (=> b!2587313 (= e!1632358 (forall!6065 (t!212232 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783)))) lambda!95784))))

(assert (= (and d!732824 (not res!1088026)) b!2587312))

(assert (= (and b!2587312 res!1088027) b!2587313))

(declare-fun b_lambda!76915 () Bool)

(assert (=> (not b_lambda!76915) (not b!2587312)))

(declare-fun m!2923605 () Bool)

(assert (=> b!2587312 m!2923605))

(declare-fun m!2923607 () Bool)

(assert (=> b!2587313 m!2923607))

(assert (=> b!2586513 d!732824))

(declare-fun d!732826 () Bool)

(declare-fun c!417190 () Bool)

(assert (=> d!732826 (= c!417190 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun e!1632359 () Bool)

(assert (=> d!732826 (= (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))) e!1632359)))

(declare-fun b!2587314 () Bool)

(assert (=> b!2587314 (= e!1632359 (inv!40202 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587315 () Bool)

(declare-fun e!1632360 () Bool)

(assert (=> b!2587315 (= e!1632359 e!1632360)))

(declare-fun res!1088028 () Bool)

(assert (=> b!2587315 (= res!1088028 (not ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))))))

(assert (=> b!2587315 (=> res!1088028 e!1632360)))

(declare-fun b!2587316 () Bool)

(assert (=> b!2587316 (= e!1632360 (inv!40203 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))))))

(assert (= (and d!732826 c!417190) b!2587314))

(assert (= (and d!732826 (not c!417190)) b!2587315))

(assert (= (and b!2587315 (not res!1088028)) b!2587316))

(declare-fun m!2923609 () Bool)

(assert (=> b!2587314 m!2923609))

(declare-fun m!2923611 () Bool)

(assert (=> b!2587316 m!2923611))

(assert (=> b!2586546 d!732826))

(declare-fun d!732828 () Bool)

(declare-fun lt!909841 () Int)

(assert (=> d!732828 (>= lt!909841 0)))

(declare-fun e!1632361 () Int)

(assert (=> d!732828 (= lt!909841 e!1632361)))

(declare-fun c!417191 () Bool)

(assert (=> d!732828 (= c!417191 ((_ is Nil!29765) (t!212230 suffix!1684)))))

(assert (=> d!732828 (= (size!23078 (t!212230 suffix!1684)) lt!909841)))

(declare-fun b!2587317 () Bool)

(assert (=> b!2587317 (= e!1632361 0)))

(declare-fun b!2587318 () Bool)

(assert (=> b!2587318 (= e!1632361 (+ 1 (size!23078 (t!212230 (t!212230 suffix!1684)))))))

(assert (= (and d!732828 c!417191) b!2587317))

(assert (= (and d!732828 (not c!417191)) b!2587318))

(declare-fun m!2923613 () Bool)

(assert (=> b!2587318 m!2923613))

(assert (=> b!2586202 d!732828))

(declare-fun d!732830 () Bool)

(declare-fun c!417192 () Bool)

(assert (=> d!732830 (= c!417192 ((_ is Nil!29766) (t!212231 rules!4580)))))

(declare-fun e!1632362 () (InoxSet Rule!8842))

(assert (=> d!732830 (= (content!4113 (t!212231 rules!4580)) e!1632362)))

(declare-fun b!2587319 () Bool)

(assert (=> b!2587319 (= e!1632362 ((as const (Array Rule!8842 Bool)) false))))

(declare-fun b!2587320 () Bool)

(assert (=> b!2587320 (= e!1632362 ((_ map or) (store ((as const (Array Rule!8842 Bool)) false) (h!35186 (t!212231 rules!4580)) true) (content!4113 (t!212231 (t!212231 rules!4580)))))))

(assert (= (and d!732830 c!417192) b!2587319))

(assert (= (and d!732830 (not c!417192)) b!2587320))

(declare-fun m!2923615 () Bool)

(assert (=> b!2587320 m!2923615))

(assert (=> b!2587320 m!2923257))

(assert (=> d!732522 d!732830))

(declare-fun call!167123 () Regex!7665)

(declare-fun bm!167115 () Bool)

(declare-fun c!417194 () Bool)

(assert (=> bm!167115 (= call!167123 (derivativeStep!2222 (ite c!417194 (regTwo!15843 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (regOne!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) (head!5862 lt!909246)))))

(declare-fun bm!167116 () Bool)

(declare-fun call!167122 () Regex!7665)

(declare-fun call!167120 () Regex!7665)

(assert (=> bm!167116 (= call!167122 call!167120)))

(declare-fun c!417195 () Bool)

(declare-fun bm!167117 () Bool)

(declare-fun c!417197 () Bool)

(declare-fun call!167121 () Regex!7665)

(assert (=> bm!167117 (= call!167121 (derivativeStep!2222 (ite c!417194 (regOne!15843 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (ite c!417195 (reg!7994 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (ite c!417197 (regTwo!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (regOne!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))) (head!5862 lt!909246)))))

(declare-fun e!1632367 () Regex!7665)

(declare-fun b!2587321 () Bool)

(assert (=> b!2587321 (= e!1632367 (ite (= (head!5862 lt!909246) (c!416820 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732832 () Bool)

(declare-fun lt!909842 () Regex!7665)

(assert (=> d!732832 (validRegex!3279 lt!909842)))

(declare-fun e!1632365 () Regex!7665)

(assert (=> d!732832 (= lt!909842 e!1632365)))

(declare-fun c!417193 () Bool)

(assert (=> d!732832 (= c!417193 (or ((_ is EmptyExpr!7665) (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) ((_ is EmptyLang!7665) (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(assert (=> d!732832 (validRegex!3279 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> d!732832 (= (derivativeStep!2222 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909246)) lt!909842)))

(declare-fun b!2587322 () Bool)

(assert (=> b!2587322 (= e!1632365 EmptyLang!7665)))

(declare-fun b!2587323 () Bool)

(assert (=> b!2587323 (= c!417194 ((_ is Union!7665) (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun e!1632366 () Regex!7665)

(assert (=> b!2587323 (= e!1632367 e!1632366)))

(declare-fun b!2587324 () Bool)

(declare-fun e!1632363 () Regex!7665)

(assert (=> b!2587324 (= e!1632366 e!1632363)))

(assert (=> b!2587324 (= c!417195 ((_ is Star!7665) (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun b!2587325 () Bool)

(declare-fun e!1632364 () Regex!7665)

(assert (=> b!2587325 (= e!1632364 (Union!7665 (Concat!12409 call!167122 (regTwo!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) EmptyLang!7665))))

(declare-fun b!2587326 () Bool)

(assert (=> b!2587326 (= c!417197 (nullable!2570 (regOne!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(assert (=> b!2587326 (= e!1632363 e!1632364)))

(declare-fun b!2587327 () Bool)

(assert (=> b!2587327 (= e!1632365 e!1632367)))

(declare-fun c!417196 () Bool)

(assert (=> b!2587327 (= c!417196 ((_ is ElementMatch!7665) (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun b!2587328 () Bool)

(assert (=> b!2587328 (= e!1632366 (Union!7665 call!167121 call!167123))))

(declare-fun bm!167118 () Bool)

(assert (=> bm!167118 (= call!167120 call!167121)))

(declare-fun b!2587329 () Bool)

(assert (=> b!2587329 (= e!1632364 (Union!7665 (Concat!12409 call!167123 (regTwo!15842 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) call!167122))))

(declare-fun b!2587330 () Bool)

(assert (=> b!2587330 (= e!1632363 (Concat!12409 call!167120 (ite c!417026 (regOne!15843 (regex!4521 rule!570)) (ite c!417027 (reg!7994 (regex!4521 rule!570)) (ite c!417029 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(assert (= (and d!732832 c!417193) b!2587322))

(assert (= (and d!732832 (not c!417193)) b!2587327))

(assert (= (and b!2587327 c!417196) b!2587321))

(assert (= (and b!2587327 (not c!417196)) b!2587323))

(assert (= (and b!2587323 c!417194) b!2587328))

(assert (= (and b!2587323 (not c!417194)) b!2587324))

(assert (= (and b!2587324 c!417195) b!2587330))

(assert (= (and b!2587324 (not c!417195)) b!2587326))

(assert (= (and b!2587326 c!417197) b!2587329))

(assert (= (and b!2587326 (not c!417197)) b!2587325))

(assert (= (or b!2587329 b!2587325) bm!167116))

(assert (= (or b!2587330 bm!167116) bm!167118))

(assert (= (or b!2587328 b!2587329) bm!167115))

(assert (= (or b!2587328 bm!167118) bm!167117))

(assert (=> bm!167115 m!2922007))

(declare-fun m!2923617 () Bool)

(assert (=> bm!167115 m!2923617))

(assert (=> bm!167117 m!2922007))

(declare-fun m!2923619 () Bool)

(assert (=> bm!167117 m!2923619))

(declare-fun m!2923621 () Bool)

(assert (=> d!732832 m!2923621))

(declare-fun m!2923623 () Bool)

(assert (=> d!732832 m!2923623))

(declare-fun m!2923625 () Bool)

(assert (=> b!2587326 m!2923625))

(assert (=> bm!167018 d!732832))

(assert (=> d!732326 d!732490))

(assert (=> d!732326 d!732498))

(declare-fun d!732834 () Bool)

(declare-fun lt!909843 () Bool)

(assert (=> d!732834 (= lt!909843 (select (content!4113 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun e!1632368 () Bool)

(assert (=> d!732834 (= lt!909843 e!1632368)))

(declare-fun res!1088029 () Bool)

(assert (=> d!732834 (=> (not res!1088029) (not e!1632368))))

(assert (=> d!732834 (= res!1088029 ((_ is Cons!29766) (t!212231 rules!4580)))))

(assert (=> d!732834 (= (contains!5325 (t!212231 rules!4580) (rule!6887 (_1!17401 (get!9380 lt!909381)))) lt!909843)))

(declare-fun b!2587331 () Bool)

(declare-fun e!1632369 () Bool)

(assert (=> b!2587331 (= e!1632368 e!1632369)))

(declare-fun res!1088030 () Bool)

(assert (=> b!2587331 (=> res!1088030 e!1632369)))

(assert (=> b!2587331 (= res!1088030 (= (h!35186 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(declare-fun b!2587332 () Bool)

(assert (=> b!2587332 (= e!1632369 (contains!5325 (t!212231 (t!212231 rules!4580)) (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(assert (= (and d!732834 res!1088029) b!2587331))

(assert (= (and b!2587331 (not res!1088030)) b!2587332))

(assert (=> d!732834 m!2922871))

(declare-fun m!2923627 () Bool)

(assert (=> d!732834 m!2923627))

(declare-fun m!2923629 () Bool)

(assert (=> b!2587332 m!2923629))

(assert (=> b!2586133 d!732834))

(declare-fun d!732836 () Bool)

(assert (=> d!732836 (= (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))) (= (charsToBigInt!0 (text!33650 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))) 0) (value!146091 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))))))

(declare-fun bs!471863 () Bool)

(assert (= bs!471863 d!732836))

(declare-fun m!2923631 () Bool)

(assert (=> bs!471863 m!2923631))

(assert (=> b!2586480 d!732836))

(declare-fun d!732838 () Bool)

(declare-fun lt!909844 () Int)

(assert (=> d!732838 (>= lt!909844 0)))

(declare-fun e!1632370 () Int)

(assert (=> d!732838 (= lt!909844 e!1632370)))

(declare-fun c!417198 () Bool)

(assert (=> d!732838 (= c!417198 ((_ is Nil!29767) lt!909582))))

(assert (=> d!732838 (= (size!23082 lt!909582) lt!909844)))

(declare-fun b!2587333 () Bool)

(assert (=> b!2587333 (= e!1632370 0)))

(declare-fun b!2587334 () Bool)

(assert (=> b!2587334 (= e!1632370 (+ 1 (size!23082 (t!212232 lt!909582))))))

(assert (= (and d!732838 c!417198) b!2587333))

(assert (= (and d!732838 (not c!417198)) b!2587334))

(declare-fun m!2923633 () Bool)

(assert (=> b!2587334 m!2923633))

(assert (=> d!732426 d!732838))

(assert (=> d!732426 d!732718))

(declare-fun d!732840 () Bool)

(assert (=> d!732840 (= (nullable!2570 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783)))) (nullableFct!788 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783)))))))

(declare-fun bs!471864 () Bool)

(assert (= bs!471864 d!732840))

(declare-fun m!2923635 () Bool)

(assert (=> bs!471864 m!2923635))

(assert (=> b!2586660 d!732840))

(declare-fun d!732842 () Bool)

(assert (=> d!732842 (= (Forall2!767 lambda!95828) (choose!15251 lambda!95828))))

(declare-fun bs!471865 () Bool)

(assert (= bs!471865 d!732842))

(declare-fun m!2923637 () Bool)

(assert (=> bs!471865 m!2923637))

(assert (=> d!732414 d!732842))

(assert (=> b!2586544 d!732736))

(declare-fun d!732844 () Bool)

(assert (=> d!732844 (= (Forall!1167 lambda!95837) (choose!15247 lambda!95837))))

(declare-fun bs!471866 () Bool)

(assert (= bs!471866 d!732844))

(declare-fun m!2923639 () Bool)

(assert (=> bs!471866 m!2923639))

(assert (=> d!732534 d!732844))

(declare-fun d!732846 () Bool)

(assert (=> d!732846 (= (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) ((_ is Nil!29765) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> b!2586451 d!732846))

(declare-fun d!732848 () Bool)

(assert (=> d!732848 (= (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> b!2586451 d!732848))

(declare-fun d!732850 () Bool)

(assert (=> d!732850 (= (head!5862 input!3654) (h!35185 input!3654))))

(assert (=> bm!167007 d!732850))

(declare-fun d!732852 () Bool)

(assert (=> d!732852 (= (list!11253 lt!909669) (list!11254 (c!416819 lt!909669)))))

(declare-fun bs!471867 () Bool)

(assert (= bs!471867 d!732852))

(declare-fun m!2923641 () Bool)

(assert (=> bs!471867 m!2923641))

(assert (=> d!732518 d!732852))

(assert (=> d!732518 d!732776))

(declare-fun b!2587335 () Bool)

(declare-fun e!1632375 () Bool)

(declare-fun call!167126 () Bool)

(assert (=> b!2587335 (= e!1632375 call!167126)))

(declare-fun d!732854 () Bool)

(declare-fun res!1088035 () Bool)

(declare-fun e!1632371 () Bool)

(assert (=> d!732854 (=> res!1088035 e!1632371)))

(assert (=> d!732854 (= res!1088035 ((_ is ElementMatch!7665) lt!909456))))

(assert (=> d!732854 (= (validRegex!3279 lt!909456) e!1632371)))

(declare-fun bm!167119 () Bool)

(declare-fun call!167124 () Bool)

(declare-fun call!167125 () Bool)

(assert (=> bm!167119 (= call!167124 call!167125)))

(declare-fun b!2587336 () Bool)

(declare-fun e!1632373 () Bool)

(declare-fun e!1632377 () Bool)

(assert (=> b!2587336 (= e!1632373 e!1632377)))

(declare-fun res!1088034 () Bool)

(assert (=> b!2587336 (=> (not res!1088034) (not e!1632377))))

(assert (=> b!2587336 (= res!1088034 call!167124)))

(declare-fun c!417200 () Bool)

(declare-fun bm!167120 () Bool)

(declare-fun c!417199 () Bool)

(assert (=> bm!167120 (= call!167125 (validRegex!3279 (ite c!417200 (reg!7994 lt!909456) (ite c!417199 (regOne!15843 lt!909456) (regOne!15842 lt!909456)))))))

(declare-fun b!2587337 () Bool)

(declare-fun res!1088031 () Bool)

(assert (=> b!2587337 (=> (not res!1088031) (not e!1632375))))

(assert (=> b!2587337 (= res!1088031 call!167124)))

(declare-fun e!1632374 () Bool)

(assert (=> b!2587337 (= e!1632374 e!1632375)))

(declare-fun b!2587338 () Bool)

(assert (=> b!2587338 (= e!1632377 call!167126)))

(declare-fun b!2587339 () Bool)

(declare-fun res!1088032 () Bool)

(assert (=> b!2587339 (=> res!1088032 e!1632373)))

(assert (=> b!2587339 (= res!1088032 (not ((_ is Concat!12409) lt!909456)))))

(assert (=> b!2587339 (= e!1632374 e!1632373)))

(declare-fun b!2587340 () Bool)

(declare-fun e!1632372 () Bool)

(assert (=> b!2587340 (= e!1632372 e!1632374)))

(assert (=> b!2587340 (= c!417199 ((_ is Union!7665) lt!909456))))

(declare-fun bm!167121 () Bool)

(assert (=> bm!167121 (= call!167126 (validRegex!3279 (ite c!417199 (regTwo!15843 lt!909456) (regTwo!15842 lt!909456))))))

(declare-fun b!2587341 () Bool)

(assert (=> b!2587341 (= e!1632371 e!1632372)))

(assert (=> b!2587341 (= c!417200 ((_ is Star!7665) lt!909456))))

(declare-fun b!2587342 () Bool)

(declare-fun e!1632376 () Bool)

(assert (=> b!2587342 (= e!1632376 call!167125)))

(declare-fun b!2587343 () Bool)

(assert (=> b!2587343 (= e!1632372 e!1632376)))

(declare-fun res!1088033 () Bool)

(assert (=> b!2587343 (= res!1088033 (not (nullable!2570 (reg!7994 lt!909456))))))

(assert (=> b!2587343 (=> (not res!1088033) (not e!1632376))))

(assert (= (and d!732854 (not res!1088035)) b!2587341))

(assert (= (and b!2587341 c!417200) b!2587343))

(assert (= (and b!2587341 (not c!417200)) b!2587340))

(assert (= (and b!2587343 res!1088033) b!2587342))

(assert (= (and b!2587340 c!417199) b!2587337))

(assert (= (and b!2587340 (not c!417199)) b!2587339))

(assert (= (and b!2587337 res!1088031) b!2587335))

(assert (= (and b!2587339 (not res!1088032)) b!2587336))

(assert (= (and b!2587336 res!1088034) b!2587338))

(assert (= (or b!2587337 b!2587336) bm!167119))

(assert (= (or b!2587335 b!2587338) bm!167121))

(assert (= (or b!2587342 bm!167119) bm!167120))

(declare-fun m!2923643 () Bool)

(assert (=> bm!167120 m!2923643))

(declare-fun m!2923645 () Bool)

(assert (=> bm!167121 m!2923645))

(declare-fun m!2923647 () Bool)

(assert (=> b!2587343 m!2923647))

(assert (=> d!732294 d!732854))

(assert (=> d!732294 d!732498))

(declare-fun b!2587345 () Bool)

(declare-fun res!1088038 () Bool)

(declare-fun e!1632380 () Bool)

(assert (=> b!2587345 (=> (not res!1088038) (not e!1632380))))

(assert (=> b!2587345 (= res!1088038 (= (head!5862 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765))) (head!5862 input!3654)))))

(declare-fun b!2587347 () Bool)

(declare-fun e!1632379 () Bool)

(assert (=> b!2587347 (= e!1632379 (>= (size!23078 input!3654) (size!23078 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)))))))

(declare-fun b!2587346 () Bool)

(assert (=> b!2587346 (= e!1632380 (isPrefix!2421 (tail!4135 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765))) (tail!4135 input!3654)))))

(declare-fun b!2587344 () Bool)

(declare-fun e!1632378 () Bool)

(assert (=> b!2587344 (= e!1632378 e!1632380)))

(declare-fun res!1088036 () Bool)

(assert (=> b!2587344 (=> (not res!1088036) (not e!1632380))))

(assert (=> b!2587344 (= res!1088036 (not ((_ is Nil!29765) input!3654)))))

(declare-fun d!732856 () Bool)

(assert (=> d!732856 e!1632379))

(declare-fun res!1088037 () Bool)

(assert (=> d!732856 (=> res!1088037 e!1632379)))

(declare-fun lt!909845 () Bool)

(assert (=> d!732856 (= res!1088037 (not lt!909845))))

(assert (=> d!732856 (= lt!909845 e!1632378)))

(declare-fun res!1088039 () Bool)

(assert (=> d!732856 (=> res!1088039 e!1632378)))

(assert (=> d!732856 (= res!1088039 ((_ is Nil!29765) (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765))))))

(assert (=> d!732856 (= (isPrefix!2421 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) input!3654) lt!909845)))

(assert (= (and d!732856 (not res!1088039)) b!2587344))

(assert (= (and b!2587344 res!1088036) b!2587345))

(assert (= (and b!2587345 res!1088038) b!2587346))

(assert (= (and d!732856 (not res!1088037)) b!2587347))

(assert (=> b!2587345 m!2922627))

(declare-fun m!2923649 () Bool)

(assert (=> b!2587345 m!2923649))

(assert (=> b!2587345 m!2922305))

(assert (=> b!2587347 m!2921793))

(assert (=> b!2587347 m!2922627))

(declare-fun m!2923651 () Bool)

(assert (=> b!2587347 m!2923651))

(assert (=> b!2587346 m!2922627))

(declare-fun m!2923653 () Bool)

(assert (=> b!2587346 m!2923653))

(assert (=> b!2587346 m!2922307))

(assert (=> b!2587346 m!2923653))

(assert (=> b!2587346 m!2922307))

(declare-fun m!2923655 () Bool)

(assert (=> b!2587346 m!2923655))

(assert (=> b!2586431 d!732856))

(declare-fun b!2587348 () Bool)

(declare-fun e!1632381 () List!29865)

(assert (=> b!2587348 (= e!1632381 (Cons!29765 lt!909555 Nil!29765))))

(declare-fun d!732858 () Bool)

(declare-fun e!1632382 () Bool)

(assert (=> d!732858 e!1632382))

(declare-fun res!1088040 () Bool)

(assert (=> d!732858 (=> (not res!1088040) (not e!1632382))))

(declare-fun lt!909846 () List!29865)

(assert (=> d!732858 (= res!1088040 (= (content!4114 lt!909846) ((_ map or) (content!4114 Nil!29765) (content!4114 (Cons!29765 lt!909555 Nil!29765)))))))

(assert (=> d!732858 (= lt!909846 e!1632381)))

(declare-fun c!417201 () Bool)

(assert (=> d!732858 (= c!417201 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!732858 (= (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765)) lt!909846)))

(declare-fun b!2587349 () Bool)

(assert (=> b!2587349 (= e!1632381 (Cons!29765 (h!35185 Nil!29765) (++!7311 (t!212230 Nil!29765) (Cons!29765 lt!909555 Nil!29765))))))

(declare-fun b!2587350 () Bool)

(declare-fun res!1088041 () Bool)

(assert (=> b!2587350 (=> (not res!1088041) (not e!1632382))))

(assert (=> b!2587350 (= res!1088041 (= (size!23078 lt!909846) (+ (size!23078 Nil!29765) (size!23078 (Cons!29765 lt!909555 Nil!29765)))))))

(declare-fun b!2587351 () Bool)

(assert (=> b!2587351 (= e!1632382 (or (not (= (Cons!29765 lt!909555 Nil!29765) Nil!29765)) (= lt!909846 Nil!29765)))))

(assert (= (and d!732858 c!417201) b!2587348))

(assert (= (and d!732858 (not c!417201)) b!2587349))

(assert (= (and d!732858 res!1088040) b!2587350))

(assert (= (and b!2587350 res!1088041) b!2587351))

(declare-fun m!2923657 () Bool)

(assert (=> d!732858 m!2923657))

(declare-fun m!2923659 () Bool)

(assert (=> d!732858 m!2923659))

(declare-fun m!2923661 () Bool)

(assert (=> d!732858 m!2923661))

(declare-fun m!2923663 () Bool)

(assert (=> b!2587349 m!2923663))

(declare-fun m!2923665 () Bool)

(assert (=> b!2587350 m!2923665))

(assert (=> b!2587350 m!2921801))

(declare-fun m!2923667 () Bool)

(assert (=> b!2587350 m!2923667))

(assert (=> b!2586431 d!732858))

(declare-fun d!732860 () Bool)

(assert (=> d!732860 (= (++!7311 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765)) lt!909571) input!3654)))

(declare-fun lt!909849 () Unit!43600)

(declare-fun choose!15258 (List!29865 C!15488 List!29865 List!29865) Unit!43600)

(assert (=> d!732860 (= lt!909849 (choose!15258 Nil!29765 lt!909555 lt!909571 input!3654))))

(assert (=> d!732860 (= (++!7311 Nil!29765 (Cons!29765 lt!909555 lt!909571)) input!3654)))

(assert (=> d!732860 (= (lemmaMoveElementToOtherListKeepsConcatEq!816 Nil!29765 lt!909555 lt!909571 input!3654) lt!909849)))

(declare-fun bs!471868 () Bool)

(assert (= bs!471868 d!732860))

(assert (=> bs!471868 m!2922633))

(assert (=> bs!471868 m!2922633))

(assert (=> bs!471868 m!2922641))

(declare-fun m!2923669 () Bool)

(assert (=> bs!471868 m!2923669))

(declare-fun m!2923671 () Bool)

(assert (=> bs!471868 m!2923671))

(assert (=> b!2586431 d!732860))

(declare-fun b!2587352 () Bool)

(declare-fun e!1632383 () List!29865)

(assert (=> b!2587352 (= e!1632383 lt!909571)))

(declare-fun d!732862 () Bool)

(declare-fun e!1632384 () Bool)

(assert (=> d!732862 e!1632384))

(declare-fun res!1088042 () Bool)

(assert (=> d!732862 (=> (not res!1088042) (not e!1632384))))

(declare-fun lt!909850 () List!29865)

(assert (=> d!732862 (= res!1088042 (= (content!4114 lt!909850) ((_ map or) (content!4114 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765))) (content!4114 lt!909571))))))

(assert (=> d!732862 (= lt!909850 e!1632383)))

(declare-fun c!417202 () Bool)

(assert (=> d!732862 (= c!417202 ((_ is Nil!29765) (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765))))))

(assert (=> d!732862 (= (++!7311 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765)) lt!909571) lt!909850)))

(declare-fun b!2587353 () Bool)

(assert (=> b!2587353 (= e!1632383 (Cons!29765 (h!35185 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765))) (++!7311 (t!212230 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765))) lt!909571)))))

(declare-fun b!2587354 () Bool)

(declare-fun res!1088043 () Bool)

(assert (=> b!2587354 (=> (not res!1088043) (not e!1632384))))

(assert (=> b!2587354 (= res!1088043 (= (size!23078 lt!909850) (+ (size!23078 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765))) (size!23078 lt!909571))))))

(declare-fun b!2587355 () Bool)

(assert (=> b!2587355 (= e!1632384 (or (not (= lt!909571 Nil!29765)) (= lt!909850 (++!7311 Nil!29765 (Cons!29765 lt!909555 Nil!29765)))))))

(assert (= (and d!732862 c!417202) b!2587352))

(assert (= (and d!732862 (not c!417202)) b!2587353))

(assert (= (and d!732862 res!1088042) b!2587354))

(assert (= (and b!2587354 res!1088043) b!2587355))

(declare-fun m!2923673 () Bool)

(assert (=> d!732862 m!2923673))

(assert (=> d!732862 m!2922633))

(declare-fun m!2923675 () Bool)

(assert (=> d!732862 m!2923675))

(declare-fun m!2923677 () Bool)

(assert (=> d!732862 m!2923677))

(declare-fun m!2923679 () Bool)

(assert (=> b!2587353 m!2923679))

(declare-fun m!2923681 () Bool)

(assert (=> b!2587354 m!2923681))

(assert (=> b!2587354 m!2922633))

(declare-fun m!2923683 () Bool)

(assert (=> b!2587354 m!2923683))

(declare-fun m!2923685 () Bool)

(assert (=> b!2587354 m!2923685))

(assert (=> b!2586431 d!732862))

(assert (=> b!2586431 d!732242))

(assert (=> b!2586431 d!732814))

(declare-fun d!732864 () Bool)

(assert (=> d!732864 (<= (size!23078 Nil!29765) (size!23078 input!3654))))

(declare-fun lt!909853 () Unit!43600)

(declare-fun choose!15259 (List!29865 List!29865) Unit!43600)

(assert (=> d!732864 (= lt!909853 (choose!15259 Nil!29765 input!3654))))

(assert (=> d!732864 (isPrefix!2421 Nil!29765 input!3654)))

(assert (=> d!732864 (= (lemmaIsPrefixThenSmallerEqSize!207 Nil!29765 input!3654) lt!909853)))

(declare-fun bs!471869 () Bool)

(assert (= bs!471869 d!732864))

(assert (=> bs!471869 m!2921801))

(assert (=> bs!471869 m!2921793))

(declare-fun m!2923687 () Bool)

(assert (=> bs!471869 m!2923687))

(declare-fun m!2923689 () Bool)

(assert (=> bs!471869 m!2923689))

(assert (=> b!2586431 d!732864))

(declare-fun b!2587356 () Bool)

(declare-fun e!1632385 () List!29865)

(assert (=> b!2587356 (= e!1632385 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765))))

(declare-fun d!732866 () Bool)

(declare-fun e!1632386 () Bool)

(assert (=> d!732866 e!1632386))

(declare-fun res!1088044 () Bool)

(assert (=> d!732866 (=> (not res!1088044) (not e!1632386))))

(declare-fun lt!909854 () List!29865)

(assert (=> d!732866 (= res!1088044 (= (content!4114 lt!909854) ((_ map or) (content!4114 Nil!29765) (content!4114 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)))))))

(assert (=> d!732866 (= lt!909854 e!1632385)))

(declare-fun c!417203 () Bool)

(assert (=> d!732866 (= c!417203 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!732866 (= (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) lt!909854)))

(declare-fun b!2587357 () Bool)

(assert (=> b!2587357 (= e!1632385 (Cons!29765 (h!35185 Nil!29765) (++!7311 (t!212230 Nil!29765) (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765))))))

(declare-fun b!2587358 () Bool)

(declare-fun res!1088045 () Bool)

(assert (=> b!2587358 (=> (not res!1088045) (not e!1632386))))

(assert (=> b!2587358 (= res!1088045 (= (size!23078 lt!909854) (+ (size!23078 Nil!29765) (size!23078 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)))))))

(declare-fun b!2587359 () Bool)

(assert (=> b!2587359 (= e!1632386 (or (not (= (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765) Nil!29765)) (= lt!909854 Nil!29765)))))

(assert (= (and d!732866 c!417203) b!2587356))

(assert (= (and d!732866 (not c!417203)) b!2587357))

(assert (= (and d!732866 res!1088044) b!2587358))

(assert (= (and b!2587358 res!1088045) b!2587359))

(declare-fun m!2923691 () Bool)

(assert (=> d!732866 m!2923691))

(assert (=> d!732866 m!2923659))

(declare-fun m!2923693 () Bool)

(assert (=> d!732866 m!2923693))

(declare-fun m!2923695 () Bool)

(assert (=> b!2587357 m!2923695))

(declare-fun m!2923697 () Bool)

(assert (=> b!2587358 m!2923697))

(assert (=> b!2587358 m!2921801))

(declare-fun m!2923699 () Bool)

(assert (=> b!2587358 m!2923699))

(assert (=> b!2586431 d!732866))

(declare-fun d!732868 () Bool)

(assert (=> d!732868 (= (head!5862 (getSuffix!1185 input!3654 Nil!29765)) (h!35185 (getSuffix!1185 input!3654 Nil!29765)))))

(assert (=> b!2586431 d!732868))

(assert (=> b!2586431 d!732410))

(declare-fun b!2587360 () Bool)

(declare-fun e!1632387 () List!29865)

(assert (=> b!2587360 (= e!1632387 (Cons!29765 (head!5862 input!3654) Nil!29765))))

(declare-fun d!732870 () Bool)

(declare-fun e!1632388 () Bool)

(assert (=> d!732870 e!1632388))

(declare-fun res!1088046 () Bool)

(assert (=> d!732870 (=> (not res!1088046) (not e!1632388))))

(declare-fun lt!909855 () List!29865)

(assert (=> d!732870 (= res!1088046 (= (content!4114 lt!909855) ((_ map or) (content!4114 Nil!29765) (content!4114 (Cons!29765 (head!5862 input!3654) Nil!29765)))))))

(assert (=> d!732870 (= lt!909855 e!1632387)))

(declare-fun c!417204 () Bool)

(assert (=> d!732870 (= c!417204 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!732870 (= (++!7311 Nil!29765 (Cons!29765 (head!5862 input!3654) Nil!29765)) lt!909855)))

(declare-fun b!2587361 () Bool)

(assert (=> b!2587361 (= e!1632387 (Cons!29765 (h!35185 Nil!29765) (++!7311 (t!212230 Nil!29765) (Cons!29765 (head!5862 input!3654) Nil!29765))))))

(declare-fun b!2587362 () Bool)

(declare-fun res!1088047 () Bool)

(assert (=> b!2587362 (=> (not res!1088047) (not e!1632388))))

(assert (=> b!2587362 (= res!1088047 (= (size!23078 lt!909855) (+ (size!23078 Nil!29765) (size!23078 (Cons!29765 (head!5862 input!3654) Nil!29765)))))))

(declare-fun b!2587363 () Bool)

(assert (=> b!2587363 (= e!1632388 (or (not (= (Cons!29765 (head!5862 input!3654) Nil!29765) Nil!29765)) (= lt!909855 Nil!29765)))))

(assert (= (and d!732870 c!417204) b!2587360))

(assert (= (and d!732870 (not c!417204)) b!2587361))

(assert (= (and d!732870 res!1088046) b!2587362))

(assert (= (and b!2587362 res!1088047) b!2587363))

(declare-fun m!2923701 () Bool)

(assert (=> d!732870 m!2923701))

(assert (=> d!732870 m!2923659))

(declare-fun m!2923703 () Bool)

(assert (=> d!732870 m!2923703))

(declare-fun m!2923705 () Bool)

(assert (=> b!2587361 m!2923705))

(declare-fun m!2923707 () Bool)

(assert (=> b!2587362 m!2923707))

(assert (=> b!2587362 m!2921801))

(declare-fun m!2923709 () Bool)

(assert (=> b!2587362 m!2923709))

(assert (=> b!2586431 d!732870))

(declare-fun d!732872 () Bool)

(declare-fun lt!909858 () List!29865)

(assert (=> d!732872 (= (++!7311 Nil!29765 lt!909858) input!3654)))

(declare-fun e!1632391 () List!29865)

(assert (=> d!732872 (= lt!909858 e!1632391)))

(declare-fun c!417207 () Bool)

(assert (=> d!732872 (= c!417207 ((_ is Cons!29765) Nil!29765))))

(assert (=> d!732872 (>= (size!23078 input!3654) (size!23078 Nil!29765))))

(assert (=> d!732872 (= (getSuffix!1185 input!3654 Nil!29765) lt!909858)))

(declare-fun b!2587368 () Bool)

(assert (=> b!2587368 (= e!1632391 (getSuffix!1185 (tail!4135 input!3654) (t!212230 Nil!29765)))))

(declare-fun b!2587369 () Bool)

(assert (=> b!2587369 (= e!1632391 input!3654)))

(assert (= (and d!732872 c!417207) b!2587368))

(assert (= (and d!732872 (not c!417207)) b!2587369))

(declare-fun m!2923711 () Bool)

(assert (=> d!732872 m!2923711))

(assert (=> d!732872 m!2921793))

(assert (=> d!732872 m!2921801))

(assert (=> b!2587368 m!2922307))

(assert (=> b!2587368 m!2922307))

(declare-fun m!2923713 () Bool)

(assert (=> b!2587368 m!2923713))

(assert (=> b!2586431 d!732872))

(assert (=> b!2586431 d!732850))

(declare-fun d!732874 () Bool)

(assert (=> d!732874 (isPrefix!2421 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) input!3654)))

(declare-fun lt!909861 () Unit!43600)

(declare-fun choose!15260 (List!29865 List!29865) Unit!43600)

(assert (=> d!732874 (= lt!909861 (choose!15260 Nil!29765 input!3654))))

(assert (=> d!732874 (isPrefix!2421 Nil!29765 input!3654)))

(assert (=> d!732874 (= (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654) lt!909861)))

(declare-fun bs!471870 () Bool)

(assert (= bs!471870 d!732874))

(assert (=> bs!471870 m!2922627))

(assert (=> bs!471870 m!2922637))

(assert (=> bs!471870 m!2923689))

(declare-fun m!2923715 () Bool)

(assert (=> bs!471870 m!2923715))

(assert (=> bs!471870 m!2922627))

(assert (=> bs!471870 m!2922629))

(assert (=> bs!471870 m!2922637))

(assert (=> bs!471870 m!2922647))

(assert (=> b!2586431 d!732874))

(declare-fun d!732876 () Bool)

(assert (=> d!732876 (= (list!11253 lt!909581) (list!11254 (c!416819 lt!909581)))))

(declare-fun bs!471871 () Bool)

(assert (= bs!471871 d!732876))

(declare-fun m!2923717 () Bool)

(assert (=> bs!471871 m!2923717))

(assert (=> d!732420 d!732876))

(declare-fun d!732878 () Bool)

(declare-fun lt!909862 () Int)

(assert (=> d!732878 (>= lt!909862 0)))

(declare-fun e!1632392 () Int)

(assert (=> d!732878 (= lt!909862 e!1632392)))

(declare-fun c!417208 () Bool)

(assert (=> d!732878 (= c!417208 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909425))))))

(assert (=> d!732878 (= (size!23078 (_2!17401 (get!9380 lt!909425))) lt!909862)))

(declare-fun b!2587370 () Bool)

(assert (=> b!2587370 (= e!1632392 0)))

(declare-fun b!2587371 () Bool)

(assert (=> b!2587371 (= e!1632392 (+ 1 (size!23078 (t!212230 (_2!17401 (get!9380 lt!909425))))))))

(assert (= (and d!732878 c!417208) b!2587370))

(assert (= (and d!732878 (not c!417208)) b!2587371))

(declare-fun m!2923719 () Bool)

(assert (=> b!2587371 m!2923719))

(assert (=> b!2586095 d!732878))

(assert (=> b!2586095 d!732670))

(assert (=> b!2586095 d!732242))

(declare-fun b!2587372 () Bool)

(declare-fun e!1632394 () Bool)

(assert (=> b!2587372 (= e!1632394 (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun d!732880 () Bool)

(declare-fun c!417209 () Bool)

(assert (=> d!732880 (= c!417209 ((_ is IntegerValue!14229) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun e!1632393 () Bool)

(assert (=> d!732880 (= (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))) e!1632393)))

(declare-fun b!2587373 () Bool)

(assert (=> b!2587373 (= e!1632393 (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun b!2587374 () Bool)

(declare-fun e!1632395 () Bool)

(assert (=> b!2587374 (= e!1632393 e!1632395)))

(declare-fun c!417210 () Bool)

(assert (=> b!2587374 (= c!417210 ((_ is IntegerValue!14230) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun b!2587375 () Bool)

(assert (=> b!2587375 (= e!1632395 (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343))))))

(declare-fun b!2587376 () Bool)

(declare-fun res!1088048 () Bool)

(assert (=> b!2587376 (=> res!1088048 e!1632394)))

(assert (=> b!2587376 (= res!1088048 (not ((_ is IntegerValue!14231) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909343)))))))

(assert (=> b!2587376 (= e!1632395 e!1632394)))

(assert (= (and d!732880 c!417209) b!2587373))

(assert (= (and d!732880 (not c!417209)) b!2587374))

(assert (= (and b!2587374 c!417210) b!2587375))

(assert (= (and b!2587374 (not c!417210)) b!2587376))

(assert (= (and b!2587376 (not res!1088048)) b!2587372))

(declare-fun m!2923721 () Bool)

(assert (=> b!2587372 m!2923721))

(declare-fun m!2923723 () Bool)

(assert (=> b!2587373 m!2923723))

(declare-fun m!2923725 () Bool)

(assert (=> b!2587375 m!2923725))

(assert (=> tb!140901 d!732880))

(declare-fun b!2587377 () Bool)

(declare-fun e!1632400 () Bool)

(declare-fun call!167129 () Bool)

(assert (=> b!2587377 (= e!1632400 call!167129)))

(declare-fun d!732882 () Bool)

(declare-fun res!1088053 () Bool)

(declare-fun e!1632396 () Bool)

(assert (=> d!732882 (=> res!1088053 e!1632396)))

(assert (=> d!732882 (= res!1088053 ((_ is ElementMatch!7665) (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))

(assert (=> d!732882 (= (validRegex!3279 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))) e!1632396)))

(declare-fun bm!167122 () Bool)

(declare-fun call!167127 () Bool)

(declare-fun call!167128 () Bool)

(assert (=> bm!167122 (= call!167127 call!167128)))

(declare-fun b!2587378 () Bool)

(declare-fun e!1632398 () Bool)

(declare-fun e!1632402 () Bool)

(assert (=> b!2587378 (= e!1632398 e!1632402)))

(declare-fun res!1088052 () Bool)

(assert (=> b!2587378 (=> (not res!1088052) (not e!1632402))))

(assert (=> b!2587378 (= res!1088052 call!167127)))

(declare-fun bm!167123 () Bool)

(declare-fun c!417211 () Bool)

(declare-fun c!417212 () Bool)

(assert (=> bm!167123 (= call!167128 (validRegex!3279 (ite c!417212 (reg!7994 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))) (ite c!417211 (regOne!15843 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))) (regOne!15842 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))))))

(declare-fun b!2587379 () Bool)

(declare-fun res!1088049 () Bool)

(assert (=> b!2587379 (=> (not res!1088049) (not e!1632400))))

(assert (=> b!2587379 (= res!1088049 call!167127)))

(declare-fun e!1632399 () Bool)

(assert (=> b!2587379 (= e!1632399 e!1632400)))

(declare-fun b!2587380 () Bool)

(assert (=> b!2587380 (= e!1632402 call!167129)))

(declare-fun b!2587381 () Bool)

(declare-fun res!1088050 () Bool)

(assert (=> b!2587381 (=> res!1088050 e!1632398)))

(assert (=> b!2587381 (= res!1088050 (not ((_ is Concat!12409) (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783))))))))))

(assert (=> b!2587381 (= e!1632399 e!1632398)))

(declare-fun b!2587382 () Bool)

(declare-fun e!1632397 () Bool)

(assert (=> b!2587382 (= e!1632397 e!1632399)))

(assert (=> b!2587382 (= c!417211 ((_ is Union!7665) (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))

(declare-fun bm!167124 () Bool)

(assert (=> bm!167124 (= call!167129 (validRegex!3279 (ite c!417211 (regTwo!15843 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))) (regTwo!15842 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))))

(declare-fun b!2587383 () Bool)

(assert (=> b!2587383 (= e!1632396 e!1632397)))

(assert (=> b!2587383 (= c!417212 ((_ is Star!7665) (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))

(declare-fun b!2587384 () Bool)

(declare-fun e!1632401 () Bool)

(assert (=> b!2587384 (= e!1632401 call!167128)))

(declare-fun b!2587385 () Bool)

(assert (=> b!2587385 (= e!1632397 e!1632401)))

(declare-fun res!1088051 () Bool)

(assert (=> b!2587385 (= res!1088051 (not (nullable!2570 (reg!7994 (ite c!417070 (reg!7994 (h!35187 (map!6607 rs!798 lambda!95783))) (ite c!417069 (regOne!15843 (h!35187 (map!6607 rs!798 lambda!95783))) (regOne!15842 (h!35187 (map!6607 rs!798 lambda!95783)))))))))))

(assert (=> b!2587385 (=> (not res!1088051) (not e!1632401))))

(assert (= (and d!732882 (not res!1088053)) b!2587383))

(assert (= (and b!2587383 c!417212) b!2587385))

(assert (= (and b!2587383 (not c!417212)) b!2587382))

(assert (= (and b!2587385 res!1088051) b!2587384))

(assert (= (and b!2587382 c!417211) b!2587379))

(assert (= (and b!2587382 (not c!417211)) b!2587381))

(assert (= (and b!2587379 res!1088049) b!2587377))

(assert (= (and b!2587381 (not res!1088050)) b!2587378))

(assert (= (and b!2587378 res!1088052) b!2587380))

(assert (= (or b!2587379 b!2587378) bm!167122))

(assert (= (or b!2587377 b!2587380) bm!167124))

(assert (= (or b!2587384 bm!167122) bm!167123))

(declare-fun m!2923727 () Bool)

(assert (=> bm!167123 m!2923727))

(declare-fun m!2923729 () Bool)

(assert (=> bm!167124 m!2923729))

(declare-fun m!2923731 () Bool)

(assert (=> b!2587385 m!2923731))

(assert (=> bm!167047 d!732882))

(declare-fun d!732886 () Bool)

(declare-fun lt!909864 () Int)

(assert (=> d!732886 (>= lt!909864 0)))

(declare-fun e!1632404 () Int)

(assert (=> d!732886 (= lt!909864 e!1632404)))

(declare-fun c!417214 () Bool)

(assert (=> d!732886 (= c!417214 ((_ is Nil!29765) (t!212230 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!732886 (= (size!23078 (t!212230 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))) lt!909864)))

(declare-fun b!2587388 () Bool)

(assert (=> b!2587388 (= e!1632404 0)))

(declare-fun b!2587389 () Bool)

(assert (=> b!2587389 (= e!1632404 (+ 1 (size!23078 (t!212230 (t!212230 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))))

(assert (= (and d!732886 c!417214) b!2587388))

(assert (= (and d!732886 (not c!417214)) b!2587389))

(declare-fun m!2923733 () Bool)

(assert (=> b!2587389 m!2923733))

(assert (=> b!2586650 d!732886))

(declare-fun b!2587391 () Bool)

(declare-fun e!1632405 () List!29865)

(declare-fun e!1632406 () List!29865)

(assert (=> b!2587391 (= e!1632405 e!1632406)))

(declare-fun c!417216 () Bool)

(assert (=> b!2587391 (= c!417216 ((_ is Leaf!14169) (c!416819 lt!909295)))))

(declare-fun d!732888 () Bool)

(declare-fun c!417215 () Bool)

(assert (=> d!732888 (= c!417215 ((_ is Empty!9287) (c!416819 lt!909295)))))

(assert (=> d!732888 (= (list!11254 (c!416819 lt!909295)) e!1632405)))

(declare-fun b!2587392 () Bool)

(assert (=> b!2587392 (= e!1632406 (list!11256 (xs!12271 (c!416819 lt!909295))))))

(declare-fun b!2587390 () Bool)

(assert (=> b!2587390 (= e!1632405 Nil!29765)))

(declare-fun b!2587393 () Bool)

(assert (=> b!2587393 (= e!1632406 (++!7311 (list!11254 (left!22688 (c!416819 lt!909295))) (list!11254 (right!23018 (c!416819 lt!909295)))))))

(assert (= (and d!732888 c!417215) b!2587390))

(assert (= (and d!732888 (not c!417215)) b!2587391))

(assert (= (and b!2587391 c!417216) b!2587392))

(assert (= (and b!2587391 (not c!417216)) b!2587393))

(declare-fun m!2923735 () Bool)

(assert (=> b!2587392 m!2923735))

(declare-fun m!2923737 () Bool)

(assert (=> b!2587393 m!2923737))

(declare-fun m!2923739 () Bool)

(assert (=> b!2587393 m!2923739))

(assert (=> b!2587393 m!2923737))

(assert (=> b!2587393 m!2923739))

(declare-fun m!2923741 () Bool)

(assert (=> b!2587393 m!2923741))

(assert (=> d!732510 d!732888))

(declare-fun b!2587394 () Bool)

(declare-fun e!1632412 () Bool)

(declare-fun lt!909865 () Bool)

(assert (=> b!2587394 (= e!1632412 (not lt!909865))))

(declare-fun d!732890 () Bool)

(declare-fun e!1632413 () Bool)

(assert (=> d!732890 e!1632413))

(declare-fun c!417218 () Bool)

(assert (=> d!732890 (= c!417218 ((_ is EmptyExpr!7665) (regex!4521 (h!35186 rules!4580))))))

(declare-fun e!1632407 () Bool)

(assert (=> d!732890 (= lt!909865 e!1632407)))

(declare-fun c!417217 () Bool)

(assert (=> d!732890 (= c!417217 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))

(assert (=> d!732890 (validRegex!3279 (regex!4521 (h!35186 rules!4580)))))

(assert (=> d!732890 (= (matchR!3598 (regex!4521 (h!35186 rules!4580)) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) lt!909865)))

(declare-fun b!2587395 () Bool)

(declare-fun res!1088061 () Bool)

(declare-fun e!1632410 () Bool)

(assert (=> b!2587395 (=> (not res!1088061) (not e!1632410))))

(assert (=> b!2587395 (= res!1088061 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))))))))

(declare-fun b!2587396 () Bool)

(assert (=> b!2587396 (= e!1632407 (matchR!3598 (derivativeStep!2222 (regex!4521 (h!35186 rules!4580)) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))))))))

(declare-fun b!2587397 () Bool)

(declare-fun res!1088054 () Bool)

(assert (=> b!2587397 (=> (not res!1088054) (not e!1632410))))

(declare-fun call!167130 () Bool)

(assert (=> b!2587397 (= res!1088054 (not call!167130))))

(declare-fun b!2587398 () Bool)

(assert (=> b!2587398 (= e!1632413 (= lt!909865 call!167130))))

(declare-fun b!2587399 () Bool)

(declare-fun res!1088060 () Bool)

(declare-fun e!1632409 () Bool)

(assert (=> b!2587399 (=> res!1088060 e!1632409)))

(assert (=> b!2587399 (= res!1088060 (not (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))))

(declare-fun b!2587400 () Bool)

(declare-fun res!1088056 () Bool)

(declare-fun e!1632411 () Bool)

(assert (=> b!2587400 (=> res!1088056 e!1632411)))

(assert (=> b!2587400 (= res!1088056 e!1632410)))

(declare-fun res!1088059 () Bool)

(assert (=> b!2587400 (=> (not res!1088059) (not e!1632410))))

(assert (=> b!2587400 (= res!1088059 lt!909865)))

(declare-fun b!2587401 () Bool)

(declare-fun e!1632408 () Bool)

(assert (=> b!2587401 (= e!1632411 e!1632408)))

(declare-fun res!1088058 () Bool)

(assert (=> b!2587401 (=> (not res!1088058) (not e!1632408))))

(assert (=> b!2587401 (= res!1088058 (not lt!909865))))

(declare-fun b!2587402 () Bool)

(declare-fun res!1088057 () Bool)

(assert (=> b!2587402 (=> res!1088057 e!1632411)))

(assert (=> b!2587402 (= res!1088057 (not ((_ is ElementMatch!7665) (regex!4521 (h!35186 rules!4580)))))))

(assert (=> b!2587402 (= e!1632412 e!1632411)))

(declare-fun b!2587403 () Bool)

(assert (=> b!2587403 (= e!1632410 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (c!416820 (regex!4521 (h!35186 rules!4580)))))))

(declare-fun b!2587404 () Bool)

(assert (=> b!2587404 (= e!1632407 (nullable!2570 (regex!4521 (h!35186 rules!4580))))))

(declare-fun b!2587405 () Bool)

(assert (=> b!2587405 (= e!1632413 e!1632412)))

(declare-fun c!417219 () Bool)

(assert (=> b!2587405 (= c!417219 ((_ is EmptyLang!7665) (regex!4521 (h!35186 rules!4580))))))

(declare-fun b!2587406 () Bool)

(assert (=> b!2587406 (= e!1632409 (not (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (c!416820 (regex!4521 (h!35186 rules!4580))))))))

(declare-fun bm!167125 () Bool)

(assert (=> bm!167125 (= call!167130 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))

(declare-fun b!2587407 () Bool)

(assert (=> b!2587407 (= e!1632408 e!1632409)))

(declare-fun res!1088055 () Bool)

(assert (=> b!2587407 (=> res!1088055 e!1632409)))

(assert (=> b!2587407 (= res!1088055 call!167130)))

(assert (= (and d!732890 c!417217) b!2587404))

(assert (= (and d!732890 (not c!417217)) b!2587396))

(assert (= (and d!732890 c!417218) b!2587398))

(assert (= (and d!732890 (not c!417218)) b!2587405))

(assert (= (and b!2587405 c!417219) b!2587394))

(assert (= (and b!2587405 (not c!417219)) b!2587402))

(assert (= (and b!2587402 (not res!1088057)) b!2587400))

(assert (= (and b!2587400 res!1088059) b!2587397))

(assert (= (and b!2587397 res!1088054) b!2587395))

(assert (= (and b!2587395 res!1088061) b!2587403))

(assert (= (and b!2587400 (not res!1088056)) b!2587401))

(assert (= (and b!2587401 res!1088058) b!2587407))

(assert (= (and b!2587407 (not res!1088055)) b!2587399))

(assert (= (and b!2587399 (not res!1088060)) b!2587406))

(assert (= (or b!2587398 b!2587397 b!2587407) bm!167125))

(assert (=> bm!167125 m!2922271))

(declare-fun m!2923747 () Bool)

(assert (=> bm!167125 m!2923747))

(assert (=> b!2587396 m!2922271))

(declare-fun m!2923749 () Bool)

(assert (=> b!2587396 m!2923749))

(assert (=> b!2587396 m!2923749))

(declare-fun m!2923751 () Bool)

(assert (=> b!2587396 m!2923751))

(assert (=> b!2587396 m!2922271))

(declare-fun m!2923753 () Bool)

(assert (=> b!2587396 m!2923753))

(assert (=> b!2587396 m!2923751))

(assert (=> b!2587396 m!2923753))

(declare-fun m!2923755 () Bool)

(assert (=> b!2587396 m!2923755))

(assert (=> b!2587403 m!2922271))

(assert (=> b!2587403 m!2923749))

(assert (=> b!2587395 m!2922271))

(assert (=> b!2587395 m!2923753))

(assert (=> b!2587395 m!2923753))

(declare-fun m!2923757 () Bool)

(assert (=> b!2587395 m!2923757))

(assert (=> b!2587406 m!2922271))

(assert (=> b!2587406 m!2923749))

(assert (=> d!732890 m!2922271))

(assert (=> d!732890 m!2923747))

(assert (=> d!732890 m!2923579))

(assert (=> b!2587399 m!2922271))

(assert (=> b!2587399 m!2923753))

(assert (=> b!2587399 m!2923753))

(assert (=> b!2587399 m!2923757))

(assert (=> b!2587404 m!2923581))

(assert (=> b!2586103 d!732890))

(declare-fun d!732900 () Bool)

(assert (=> d!732900 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))) (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))

(declare-fun bs!471873 () Bool)

(assert (= bs!471873 d!732900))

(declare-fun m!2923763 () Bool)

(assert (=> bs!471873 m!2923763))

(assert (=> b!2586103 d!732900))

(declare-fun d!732902 () Bool)

(declare-fun lt!909866 () BalanceConc!18188)

(assert (=> d!732902 (= (list!11253 lt!909866) (originalCharacters!5287 (_1!17401 (get!9380 lt!909429))))))

(assert (=> d!732902 (= lt!909866 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429))))) (value!146096 (_1!17401 (get!9380 lt!909429)))))))

(assert (=> d!732902 (= (charsOf!2850 (_1!17401 (get!9380 lt!909429))) lt!909866)))

(declare-fun b_lambda!76917 () Bool)

(assert (=> (not b_lambda!76917) (not d!732902)))

(declare-fun t!212562 () Bool)

(declare-fun tb!141161 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212562) tb!141161))

(declare-fun b!2587419 () Bool)

(declare-fun e!1632422 () Bool)

(declare-fun tp!821241 () Bool)

(assert (=> b!2587419 (= e!1632422 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429))))) (value!146096 (_1!17401 (get!9380 lt!909429)))))) tp!821241))))

(declare-fun result!175448 () Bool)

(assert (=> tb!141161 (= result!175448 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429))))) (value!146096 (_1!17401 (get!9380 lt!909429))))) e!1632422))))

(assert (= tb!141161 b!2587419))

(declare-fun m!2923765 () Bool)

(assert (=> b!2587419 m!2923765))

(declare-fun m!2923767 () Bool)

(assert (=> tb!141161 m!2923767))

(assert (=> d!732902 t!212562))

(declare-fun b_and!189851 () Bool)

(assert (= b_and!189759 (and (=> t!212562 result!175448) b_and!189851)))

(declare-fun tb!141163 () Bool)

(declare-fun t!212564 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212564) tb!141163))

(declare-fun result!175450 () Bool)

(assert (= result!175450 result!175448))

(assert (=> d!732902 t!212564))

(declare-fun b_and!189853 () Bool)

(assert (= b_and!189797 (and (=> t!212564 result!175450) b_and!189853)))

(declare-fun t!212566 () Bool)

(declare-fun tb!141165 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212566) tb!141165))

(declare-fun result!175452 () Bool)

(assert (= result!175452 result!175448))

(assert (=> d!732902 t!212566))

(declare-fun b_and!189855 () Bool)

(assert (= b_and!189757 (and (=> t!212566 result!175452) b_and!189855)))

(declare-fun tb!141167 () Bool)

(declare-fun t!212568 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212568) tb!141167))

(declare-fun result!175454 () Bool)

(assert (= result!175454 result!175448))

(assert (=> d!732902 t!212568))

(declare-fun b_and!189857 () Bool)

(assert (= b_and!189793 (and (=> t!212568 result!175454) b_and!189857)))

(declare-fun t!212570 () Bool)

(declare-fun tb!141169 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212570) tb!141169))

(declare-fun result!175456 () Bool)

(assert (= result!175456 result!175448))

(assert (=> d!732902 t!212570))

(declare-fun b_and!189859 () Bool)

(assert (= b_and!189765 (and (=> t!212570 result!175456) b_and!189859)))

(declare-fun tb!141171 () Bool)

(declare-fun t!212572 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212572) tb!141171))

(declare-fun result!175458 () Bool)

(assert (= result!175458 result!175448))

(assert (=> d!732902 t!212572))

(declare-fun b_and!189861 () Bool)

(assert (= b_and!189755 (and (=> t!212572 result!175458) b_and!189861)))

(declare-fun t!212574 () Bool)

(declare-fun tb!141173 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212574) tb!141173))

(declare-fun result!175460 () Bool)

(assert (= result!175460 result!175448))

(assert (=> d!732902 t!212574))

(declare-fun b_and!189863 () Bool)

(assert (= b_and!189763 (and (=> t!212574 result!175460) b_and!189863)))

(declare-fun t!212576 () Bool)

(declare-fun tb!141175 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212576) tb!141175))

(declare-fun result!175462 () Bool)

(assert (= result!175462 result!175448))

(assert (=> d!732902 t!212576))

(declare-fun b_and!189865 () Bool)

(assert (= b_and!189761 (and (=> t!212576 result!175462) b_and!189865)))

(declare-fun m!2923769 () Bool)

(assert (=> d!732902 m!2923769))

(declare-fun m!2923771 () Bool)

(assert (=> d!732902 m!2923771))

(assert (=> b!2586103 d!732902))

(assert (=> b!2586103 d!732706))

(assert (=> b!2586123 d!732850))

(declare-fun d!732906 () Bool)

(assert (=> d!732906 (= (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!732470 d!732906))

(assert (=> d!732470 d!732498))

(assert (=> b!2585714 d!732478))

(assert (=> b!2586227 d!732650))

(declare-fun d!732908 () Bool)

(assert (=> d!732908 (= (Forall!1167 lambda!95813) (choose!15247 lambda!95813))))

(declare-fun bs!471874 () Bool)

(assert (= bs!471874 d!732908))

(declare-fun m!2923777 () Bool)

(assert (=> bs!471874 m!2923777))

(assert (=> d!732286 d!732908))

(declare-fun call!167137 () Regex!7665)

(declare-fun c!417223 () Bool)

(declare-fun bm!167129 () Bool)

(assert (=> bm!167129 (= call!167137 (derivativeStep!2222 (ite c!417223 (regTwo!15843 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (regOne!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) (head!5862 lt!909247)))))

(declare-fun bm!167130 () Bool)

(declare-fun call!167136 () Regex!7665)

(declare-fun call!167134 () Regex!7665)

(assert (=> bm!167130 (= call!167136 call!167134)))

(declare-fun call!167135 () Regex!7665)

(declare-fun c!417224 () Bool)

(declare-fun c!417226 () Bool)

(declare-fun bm!167131 () Bool)

(assert (=> bm!167131 (= call!167135 (derivativeStep!2222 (ite c!417223 (regOne!15843 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (ite c!417224 (reg!7994 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (ite c!417226 (regTwo!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) (regOne!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))) (head!5862 lt!909247)))))

(declare-fun b!2587420 () Bool)

(declare-fun e!1632427 () Regex!7665)

(assert (=> b!2587420 (= e!1632427 (ite (= (head!5862 lt!909247) (c!416820 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!732910 () Bool)

(declare-fun lt!909867 () Regex!7665)

(assert (=> d!732910 (validRegex!3279 lt!909867)))

(declare-fun e!1632425 () Regex!7665)

(assert (=> d!732910 (= lt!909867 e!1632425)))

(declare-fun c!417222 () Bool)

(assert (=> d!732910 (= c!417222 (or ((_ is EmptyExpr!7665) (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))) ((_ is EmptyLang!7665) (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(assert (=> d!732910 (validRegex!3279 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))

(assert (=> d!732910 (= (derivativeStep!2222 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) (head!5862 lt!909247)) lt!909867)))

(declare-fun b!2587421 () Bool)

(assert (=> b!2587421 (= e!1632425 EmptyLang!7665)))

(declare-fun b!2587422 () Bool)

(assert (=> b!2587422 (= c!417223 ((_ is Union!7665) (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun e!1632426 () Regex!7665)

(assert (=> b!2587422 (= e!1632427 e!1632426)))

(declare-fun b!2587423 () Bool)

(declare-fun e!1632423 () Regex!7665)

(assert (=> b!2587423 (= e!1632426 e!1632423)))

(assert (=> b!2587423 (= c!417224 ((_ is Star!7665) (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun e!1632424 () Regex!7665)

(declare-fun b!2587424 () Bool)

(assert (=> b!2587424 (= e!1632424 (Union!7665 (Concat!12409 call!167136 (regTwo!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) EmptyLang!7665))))

(declare-fun b!2587425 () Bool)

(assert (=> b!2587425 (= c!417226 (nullable!2570 (regOne!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))))))

(assert (=> b!2587425 (= e!1632423 e!1632424)))

(declare-fun b!2587426 () Bool)

(assert (=> b!2587426 (= e!1632425 e!1632427)))

(declare-fun c!417225 () Bool)

(assert (=> b!2587426 (= c!417225 ((_ is ElementMatch!7665) (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(declare-fun b!2587427 () Bool)

(assert (=> b!2587427 (= e!1632426 (Union!7665 call!167135 call!167137))))

(declare-fun bm!167132 () Bool)

(assert (=> bm!167132 (= call!167134 call!167135)))

(declare-fun b!2587428 () Bool)

(assert (=> b!2587428 (= e!1632424 (Union!7665 (Concat!12409 call!167137 (regTwo!15842 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))))) call!167136))))

(declare-fun b!2587429 () Bool)

(assert (=> b!2587429 (= e!1632423 (Concat!12409 call!167134 (ite c!416918 (regOne!15843 (regex!4521 rule!570)) (ite c!416919 (reg!7994 (regex!4521 rule!570)) (ite c!416921 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))))

(assert (= (and d!732910 c!417222) b!2587421))

(assert (= (and d!732910 (not c!417222)) b!2587426))

(assert (= (and b!2587426 c!417225) b!2587420))

(assert (= (and b!2587426 (not c!417225)) b!2587422))

(assert (= (and b!2587422 c!417223) b!2587427))

(assert (= (and b!2587422 (not c!417223)) b!2587423))

(assert (= (and b!2587423 c!417224) b!2587429))

(assert (= (and b!2587423 (not c!417224)) b!2587425))

(assert (= (and b!2587425 c!417226) b!2587428))

(assert (= (and b!2587425 (not c!417226)) b!2587424))

(assert (= (or b!2587428 b!2587424) bm!167130))

(assert (= (or b!2587429 bm!167130) bm!167132))

(assert (= (or b!2587427 b!2587428) bm!167129))

(assert (= (or b!2587427 bm!167132) bm!167131))

(assert (=> bm!167129 m!2921929))

(declare-fun m!2923781 () Bool)

(assert (=> bm!167129 m!2923781))

(assert (=> bm!167131 m!2921929))

(declare-fun m!2923785 () Bool)

(assert (=> bm!167131 m!2923785))

(declare-fun m!2923787 () Bool)

(assert (=> d!732910 m!2923787))

(declare-fun m!2923791 () Bool)

(assert (=> d!732910 m!2923791))

(declare-fun m!2923793 () Bool)

(assert (=> b!2587425 m!2923793))

(assert (=> bm!166964 d!732910))

(assert (=> b!2586157 d!732680))

(declare-fun d!732914 () Bool)

(assert (=> d!732914 (= (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))) (= (charsToInt!0 (text!33648 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))) (value!146087 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))))))

(declare-fun bs!471875 () Bool)

(assert (= bs!471875 d!732914))

(declare-fun m!2923797 () Bool)

(assert (=> bs!471875 m!2923797))

(assert (=> b!2586481 d!732914))

(assert (=> b!2586537 d!732664))

(assert (=> b!2586537 d!732666))

(declare-fun bs!471878 () Bool)

(declare-fun d!732918 () Bool)

(assert (= bs!471878 (and d!732918 d!732414)))

(declare-fun lambda!95853 () Int)

(assert (=> bs!471878 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570))) (= lambda!95853 lambda!95828))))

(declare-fun bs!471879 () Bool)

(assert (= bs!471879 (and d!732918 d!732476)))

(assert (=> bs!471879 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (= lambda!95853 lambda!95831))))

(declare-fun bs!471880 () Bool)

(assert (= bs!471880 (and d!732918 d!732484)))

(assert (=> bs!471880 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (= lambda!95853 lambda!95832))))

(declare-fun bs!471881 () Bool)

(assert (= bs!471881 (and d!732918 d!732520)))

(assert (=> bs!471881 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (= lambda!95853 lambda!95836))))

(assert (=> d!732918 true))

(assert (=> d!732918 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))) (dynLambda!12593 order!15855 lambda!95853))))

(assert (=> d!732918 (= (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))) (Forall2!767 lambda!95853))))

(declare-fun bs!471882 () Bool)

(assert (= bs!471882 d!732918))

(declare-fun m!2923803 () Bool)

(assert (=> bs!471882 m!2923803))

(assert (=> b!2586651 d!732918))

(declare-fun b!2587450 () Bool)

(declare-fun res!1088080 () Bool)

(declare-fun e!1632440 () Bool)

(assert (=> b!2587450 (=> (not res!1088080) (not e!1632440))))

(assert (=> b!2587450 (= res!1088080 (= (head!5862 (tail!4135 input!3654)) (head!5862 (tail!4135 input!3654))))))

(declare-fun b!2587452 () Bool)

(declare-fun e!1632439 () Bool)

(assert (=> b!2587452 (= e!1632439 (>= (size!23078 (tail!4135 input!3654)) (size!23078 (tail!4135 input!3654))))))

(declare-fun b!2587451 () Bool)

(assert (=> b!2587451 (= e!1632440 (isPrefix!2421 (tail!4135 (tail!4135 input!3654)) (tail!4135 (tail!4135 input!3654))))))

(declare-fun b!2587449 () Bool)

(declare-fun e!1632438 () Bool)

(assert (=> b!2587449 (= e!1632438 e!1632440)))

(declare-fun res!1088078 () Bool)

(assert (=> b!2587449 (=> (not res!1088078) (not e!1632440))))

(assert (=> b!2587449 (= res!1088078 (not ((_ is Nil!29765) (tail!4135 input!3654))))))

(declare-fun d!732924 () Bool)

(assert (=> d!732924 e!1632439))

(declare-fun res!1088079 () Bool)

(assert (=> d!732924 (=> res!1088079 e!1632439)))

(declare-fun lt!909869 () Bool)

(assert (=> d!732924 (= res!1088079 (not lt!909869))))

(assert (=> d!732924 (= lt!909869 e!1632438)))

(declare-fun res!1088081 () Bool)

(assert (=> d!732924 (=> res!1088081 e!1632438)))

(assert (=> d!732924 (= res!1088081 ((_ is Nil!29765) (tail!4135 input!3654)))))

(assert (=> d!732924 (= (isPrefix!2421 (tail!4135 input!3654) (tail!4135 input!3654)) lt!909869)))

(assert (= (and d!732924 (not res!1088081)) b!2587449))

(assert (= (and b!2587449 res!1088078) b!2587450))

(assert (= (and b!2587450 res!1088080) b!2587451))

(assert (= (and d!732924 (not res!1088079)) b!2587452))

(assert (=> b!2587450 m!2922307))

(declare-fun m!2923805 () Bool)

(assert (=> b!2587450 m!2923805))

(assert (=> b!2587450 m!2922307))

(assert (=> b!2587450 m!2923805))

(assert (=> b!2587452 m!2922307))

(declare-fun m!2923807 () Bool)

(assert (=> b!2587452 m!2923807))

(assert (=> b!2587452 m!2922307))

(assert (=> b!2587452 m!2923807))

(assert (=> b!2587451 m!2922307))

(declare-fun m!2923809 () Bool)

(assert (=> b!2587451 m!2923809))

(assert (=> b!2587451 m!2922307))

(assert (=> b!2587451 m!2923809))

(assert (=> b!2587451 m!2923809))

(assert (=> b!2587451 m!2923809))

(declare-fun m!2923811 () Bool)

(assert (=> b!2587451 m!2923811))

(assert (=> b!2586124 d!732924))

(assert (=> b!2586124 d!732814))

(assert (=> bm!167020 d!732906))

(assert (=> b!2586498 d!732694))

(declare-fun d!732926 () Bool)

(assert (=> d!732926 (= (Forall2!767 lambda!95831) (choose!15251 lambda!95831))))

(declare-fun bs!471883 () Bool)

(assert (= bs!471883 d!732926))

(declare-fun m!2923813 () Bool)

(assert (=> bs!471883 m!2923813))

(assert (=> d!732476 d!732926))

(declare-fun b!2587454 () Bool)

(declare-fun e!1632441 () List!29865)

(declare-fun e!1632442 () List!29865)

(assert (=> b!2587454 (= e!1632441 e!1632442)))

(declare-fun c!417233 () Bool)

(assert (=> b!2587454 (= c!417233 ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(declare-fun d!732928 () Bool)

(declare-fun c!417232 () Bool)

(assert (=> d!732928 (= c!417232 ((_ is Empty!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))

(assert (=> d!732928 (= (list!11254 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1632441)))

(declare-fun b!2587455 () Bool)

(assert (=> b!2587455 (= e!1632442 (list!11256 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun b!2587453 () Bool)

(assert (=> b!2587453 (= e!1632441 Nil!29765)))

(declare-fun b!2587456 () Bool)

(assert (=> b!2587456 (= e!1632442 (++!7311 (list!11254 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (list!11254 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))))

(assert (= (and d!732928 c!417232) b!2587453))

(assert (= (and d!732928 (not c!417232)) b!2587454))

(assert (= (and b!2587454 c!417233) b!2587455))

(assert (= (and b!2587454 (not c!417233)) b!2587456))

(assert (=> b!2587455 m!2923351))

(declare-fun m!2923815 () Bool)

(assert (=> b!2587456 m!2923815))

(declare-fun m!2923817 () Bool)

(assert (=> b!2587456 m!2923817))

(assert (=> b!2587456 m!2923815))

(assert (=> b!2587456 m!2923817))

(declare-fun m!2923819 () Bool)

(assert (=> b!2587456 m!2923819))

(assert (=> d!732216 d!732928))

(declare-fun bs!471884 () Bool)

(declare-fun d!732930 () Bool)

(assert (= bs!471884 (and d!732930 d!732534)))

(declare-fun lambda!95854 () Int)

(assert (=> bs!471884 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 token!562))))) (= lambda!95854 lambda!95837))))

(declare-fun bs!471885 () Bool)

(assert (= bs!471885 (and d!732930 d!732730)))

(assert (=> bs!471885 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798))))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))))) (= lambda!95854 lambda!95849))))

(declare-fun bs!471886 () Bool)

(assert (= bs!471886 (and d!732930 d!732286)))

(assert (=> bs!471886 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (= lambda!95854 lambda!95813))))

(declare-fun bs!471887 () Bool)

(assert (= bs!471887 (and d!732930 d!732538)))

(assert (=> bs!471887 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (h!35186 rs!798)))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rs!798))))) (= lambda!95854 lambda!95838))))

(declare-fun bs!471888 () Bool)

(assert (= bs!471888 (and d!732930 d!732218)))

(assert (=> bs!471888 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95854 lambda!95807))))

(declare-fun bs!471889 () Bool)

(assert (= bs!471889 (and d!732930 d!732492)))

(assert (=> bs!471889 (= (and (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95854 lambda!95835))))

(assert (=> d!732930 true))

(assert (=> d!732930 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (dynLambda!12589 order!15843 lambda!95854))))

(assert (=> d!732930 true))

(assert (=> d!732930 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (dynLambda!12589 order!15843 lambda!95854))))

(assert (=> d!732930 (= (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (Forall!1167 lambda!95854))))

(declare-fun bs!471890 () Bool)

(assert (= bs!471890 d!732930))

(declare-fun m!2923833 () Bool)

(assert (=> bs!471890 m!2923833))

(assert (=> d!732438 d!732930))

(declare-fun b!2587458 () Bool)

(declare-fun e!1632449 () tuple2!29720)

(declare-fun e!1632444 () tuple2!29720)

(assert (=> b!2587458 (= e!1632449 e!1632444)))

(declare-fun lt!909887 () tuple2!29720)

(declare-fun call!167139 () tuple2!29720)

(assert (=> b!2587458 (= lt!909887 call!167139)))

(declare-fun c!417236 () Bool)

(assert (=> b!2587458 (= c!417236 (isEmpty!17110 (_1!17402 lt!909887)))))

(declare-fun b!2587459 () Bool)

(declare-fun e!1632450 () tuple2!29720)

(assert (=> b!2587459 (= e!1632450 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587460 () Bool)

(declare-fun c!417238 () Bool)

(declare-fun call!167146 () Bool)

(assert (=> b!2587460 (= c!417238 call!167146)))

(declare-fun lt!909878 () Unit!43600)

(declare-fun lt!909891 () Unit!43600)

(assert (=> b!2587460 (= lt!909878 lt!909891)))

(assert (=> b!2587460 (= input!3654 lt!909551)))

(declare-fun call!167140 () Unit!43600)

(assert (=> b!2587460 (= lt!909891 call!167140)))

(declare-fun lt!909877 () Unit!43600)

(declare-fun lt!909884 () Unit!43600)

(assert (=> b!2587460 (= lt!909877 lt!909884)))

(declare-fun call!167143 () Bool)

(assert (=> b!2587460 call!167143))

(declare-fun call!167141 () Unit!43600)

(assert (=> b!2587460 (= lt!909884 call!167141)))

(declare-fun e!1632448 () tuple2!29720)

(declare-fun e!1632445 () tuple2!29720)

(assert (=> b!2587460 (= e!1632448 e!1632445)))

(declare-fun b!2587461 () Bool)

(declare-fun e!1632446 () Unit!43600)

(declare-fun Unit!43626 () Unit!43600)

(assert (=> b!2587461 (= e!1632446 Unit!43626)))

(declare-fun b!2587462 () Bool)

(assert (=> b!2587462 (= e!1632449 call!167139)))

(declare-fun bm!167134 () Bool)

(assert (=> bm!167134 (= call!167146 (nullable!2570 call!167017))))

(declare-fun bm!167135 () Bool)

(declare-fun call!167144 () C!15488)

(assert (=> bm!167135 (= call!167144 (head!5862 call!167014))))

(declare-fun lt!909876 () List!29865)

(declare-fun call!167145 () Regex!7665)

(declare-fun bm!167136 () Bool)

(declare-fun call!167142 () List!29865)

(assert (=> bm!167136 (= call!167139 (findLongestMatchInner!756 call!167145 lt!909876 (+ (size!23078 Nil!29765) 1 1) call!167142 input!3654 (size!23078 input!3654)))))

(declare-fun bm!167137 () Bool)

(assert (=> bm!167137 (= call!167143 (isPrefix!2421 input!3654 input!3654))))

(declare-fun bm!167138 () Bool)

(assert (=> bm!167138 (= call!167145 (derivativeStep!2222 call!167017 call!167144))))

(declare-fun b!2587463 () Bool)

(declare-fun e!1632443 () Bool)

(declare-fun lt!909875 () tuple2!29720)

(assert (=> b!2587463 (= e!1632443 (>= (size!23078 (_1!17402 lt!909875)) (size!23078 lt!909551)))))

(declare-fun bm!167139 () Bool)

(assert (=> bm!167139 (= call!167141 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(declare-fun b!2587464 () Bool)

(declare-fun Unit!43627 () Unit!43600)

(assert (=> b!2587464 (= e!1632446 Unit!43627)))

(declare-fun lt!909885 () Unit!43600)

(assert (=> b!2587464 (= lt!909885 call!167141)))

(assert (=> b!2587464 call!167143))

(declare-fun lt!909888 () Unit!43600)

(assert (=> b!2587464 (= lt!909888 lt!909885)))

(declare-fun lt!909872 () Unit!43600)

(assert (=> b!2587464 (= lt!909872 call!167140)))

(assert (=> b!2587464 (= input!3654 lt!909551)))

(declare-fun lt!909882 () Unit!43600)

(assert (=> b!2587464 (= lt!909882 lt!909872)))

(assert (=> b!2587464 false))

(declare-fun b!2587457 () Bool)

(assert (=> b!2587457 (= e!1632444 (tuple2!29721 lt!909551 call!167014))))

(declare-fun d!732932 () Bool)

(declare-fun e!1632447 () Bool)

(assert (=> d!732932 e!1632447))

(declare-fun res!1088082 () Bool)

(assert (=> d!732932 (=> (not res!1088082) (not e!1632447))))

(assert (=> d!732932 (= res!1088082 (= (++!7311 (_1!17402 lt!909875) (_2!17402 lt!909875)) input!3654))))

(assert (=> d!732932 (= lt!909875 e!1632450)))

(declare-fun c!417237 () Bool)

(assert (=> d!732932 (= c!417237 (lostCause!697 call!167017))))

(declare-fun lt!909883 () Unit!43600)

(declare-fun Unit!43628 () Unit!43600)

(assert (=> d!732932 (= lt!909883 Unit!43628)))

(assert (=> d!732932 (= (getSuffix!1185 input!3654 lt!909551) call!167014)))

(declare-fun lt!909886 () Unit!43600)

(declare-fun lt!909870 () Unit!43600)

(assert (=> d!732932 (= lt!909886 lt!909870)))

(declare-fun lt!909889 () List!29865)

(assert (=> d!732932 (= call!167014 lt!909889)))

(assert (=> d!732932 (= lt!909870 (lemmaSamePrefixThenSameSuffix!1087 lt!909551 call!167014 lt!909551 lt!909889 input!3654))))

(assert (=> d!732932 (= lt!909889 (getSuffix!1185 input!3654 lt!909551))))

(declare-fun lt!909890 () Unit!43600)

(declare-fun lt!909897 () Unit!43600)

(assert (=> d!732932 (= lt!909890 lt!909897)))

(assert (=> d!732932 (isPrefix!2421 lt!909551 (++!7311 lt!909551 call!167014))))

(assert (=> d!732932 (= lt!909897 (lemmaConcatTwoListThenFirstIsPrefix!1599 lt!909551 call!167014))))

(assert (=> d!732932 (validRegex!3279 call!167017)))

(assert (=> d!732932 (= (findLongestMatchInner!756 call!167017 lt!909551 (+ (size!23078 Nil!29765) 1) call!167014 input!3654 (size!23078 input!3654)) lt!909875)))

(declare-fun b!2587465 () Bool)

(assert (=> b!2587465 (= e!1632450 e!1632448)))

(declare-fun c!417239 () Bool)

(assert (=> b!2587465 (= c!417239 (= (+ (size!23078 Nil!29765) 1) (size!23078 input!3654)))))

(declare-fun bm!167140 () Bool)

(assert (=> bm!167140 (= call!167142 (tail!4135 call!167014))))

(declare-fun b!2587466 () Bool)

(declare-fun c!417234 () Bool)

(assert (=> b!2587466 (= c!417234 call!167146)))

(declare-fun lt!909894 () Unit!43600)

(declare-fun lt!909892 () Unit!43600)

(assert (=> b!2587466 (= lt!909894 lt!909892)))

(declare-fun lt!909896 () List!29865)

(declare-fun lt!909880 () C!15488)

(assert (=> b!2587466 (= (++!7311 (++!7311 lt!909551 (Cons!29765 lt!909880 Nil!29765)) lt!909896) input!3654)))

(assert (=> b!2587466 (= lt!909892 (lemmaMoveElementToOtherListKeepsConcatEq!816 lt!909551 lt!909880 lt!909896 input!3654))))

(assert (=> b!2587466 (= lt!909896 (tail!4135 call!167014))))

(assert (=> b!2587466 (= lt!909880 (head!5862 call!167014))))

(declare-fun lt!909873 () Unit!43600)

(declare-fun lt!909879 () Unit!43600)

(assert (=> b!2587466 (= lt!909873 lt!909879)))

(assert (=> b!2587466 (isPrefix!2421 (++!7311 lt!909551 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 lt!909551)) Nil!29765)) input!3654)))

(assert (=> b!2587466 (= lt!909879 (lemmaAddHeadSuffixToPrefixStillPrefix!404 lt!909551 input!3654))))

(declare-fun lt!909881 () Unit!43600)

(declare-fun lt!909893 () Unit!43600)

(assert (=> b!2587466 (= lt!909881 lt!909893)))

(assert (=> b!2587466 (= lt!909893 (lemmaAddHeadSuffixToPrefixStillPrefix!404 lt!909551 input!3654))))

(assert (=> b!2587466 (= lt!909876 (++!7311 lt!909551 (Cons!29765 (head!5862 call!167014) Nil!29765)))))

(declare-fun lt!909874 () Unit!43600)

(assert (=> b!2587466 (= lt!909874 e!1632446)))

(declare-fun c!417235 () Bool)

(assert (=> b!2587466 (= c!417235 (= (size!23078 lt!909551) (size!23078 input!3654)))))

(declare-fun lt!909895 () Unit!43600)

(declare-fun lt!909871 () Unit!43600)

(assert (=> b!2587466 (= lt!909895 lt!909871)))

(assert (=> b!2587466 (<= (size!23078 lt!909551) (size!23078 input!3654))))

(assert (=> b!2587466 (= lt!909871 (lemmaIsPrefixThenSmallerEqSize!207 lt!909551 input!3654))))

(assert (=> b!2587466 (= e!1632448 e!1632449)))

(declare-fun b!2587467 () Bool)

(assert (=> b!2587467 (= e!1632447 e!1632443)))

(declare-fun res!1088083 () Bool)

(assert (=> b!2587467 (=> res!1088083 e!1632443)))

(assert (=> b!2587467 (= res!1088083 (isEmpty!17110 (_1!17402 lt!909875)))))

(declare-fun b!2587468 () Bool)

(assert (=> b!2587468 (= e!1632445 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587469 () Bool)

(assert (=> b!2587469 (= e!1632445 (tuple2!29721 lt!909551 Nil!29765))))

(declare-fun b!2587470 () Bool)

(assert (=> b!2587470 (= e!1632444 lt!909887)))

(declare-fun bm!167141 () Bool)

(assert (=> bm!167141 (= call!167140 (lemmaIsPrefixSameLengthThenSameList!406 input!3654 lt!909551 input!3654))))

(assert (= (and d!732932 c!417237) b!2587459))

(assert (= (and d!732932 (not c!417237)) b!2587465))

(assert (= (and b!2587465 c!417239) b!2587460))

(assert (= (and b!2587465 (not c!417239)) b!2587466))

(assert (= (and b!2587460 c!417238) b!2587469))

(assert (= (and b!2587460 (not c!417238)) b!2587468))

(assert (= (and b!2587466 c!417235) b!2587464))

(assert (= (and b!2587466 (not c!417235)) b!2587461))

(assert (= (and b!2587466 c!417234) b!2587458))

(assert (= (and b!2587466 (not c!417234)) b!2587462))

(assert (= (and b!2587458 c!417236) b!2587457))

(assert (= (and b!2587458 (not c!417236)) b!2587470))

(assert (= (or b!2587458 b!2587462) bm!167140))

(assert (= (or b!2587458 b!2587462) bm!167135))

(assert (= (or b!2587458 b!2587462) bm!167138))

(assert (= (or b!2587458 b!2587462) bm!167136))

(assert (= (or b!2587460 b!2587464) bm!167137))

(assert (= (or b!2587460 b!2587466) bm!167134))

(assert (= (or b!2587460 b!2587464) bm!167141))

(assert (= (or b!2587460 b!2587464) bm!167139))

(assert (= (and d!732932 res!1088082) b!2587467))

(assert (= (and b!2587467 (not res!1088083)) b!2587463))

(declare-fun m!2923841 () Bool)

(assert (=> bm!167140 m!2923841))

(declare-fun m!2923843 () Bool)

(assert (=> b!2587466 m!2923843))

(declare-fun m!2923845 () Bool)

(assert (=> b!2587466 m!2923845))

(declare-fun m!2923847 () Bool)

(assert (=> b!2587466 m!2923847))

(assert (=> b!2587466 m!2921793))

(declare-fun m!2923849 () Bool)

(assert (=> b!2587466 m!2923849))

(assert (=> b!2587466 m!2923841))

(declare-fun m!2923851 () Bool)

(assert (=> b!2587466 m!2923851))

(declare-fun m!2923853 () Bool)

(assert (=> b!2587466 m!2923853))

(declare-fun m!2923855 () Bool)

(assert (=> b!2587466 m!2923855))

(declare-fun m!2923857 () Bool)

(assert (=> b!2587466 m!2923857))

(assert (=> b!2587466 m!2923845))

(declare-fun m!2923859 () Bool)

(assert (=> b!2587466 m!2923859))

(assert (=> b!2587466 m!2923851))

(declare-fun m!2923861 () Bool)

(assert (=> b!2587466 m!2923861))

(declare-fun m!2923863 () Bool)

(assert (=> b!2587466 m!2923863))

(assert (=> b!2587466 m!2923855))

(declare-fun m!2923865 () Bool)

(assert (=> b!2587466 m!2923865))

(assert (=> bm!167137 m!2922089))

(declare-fun m!2923867 () Bool)

(assert (=> b!2587467 m!2923867))

(assert (=> bm!167136 m!2921793))

(declare-fun m!2923869 () Bool)

(assert (=> bm!167136 m!2923869))

(declare-fun m!2923871 () Bool)

(assert (=> bm!167138 m!2923871))

(declare-fun m!2923873 () Bool)

(assert (=> bm!167141 m!2923873))

(declare-fun m!2923875 () Bool)

(assert (=> d!732932 m!2923875))

(declare-fun m!2923877 () Bool)

(assert (=> d!732932 m!2923877))

(declare-fun m!2923879 () Bool)

(assert (=> d!732932 m!2923879))

(declare-fun m!2923881 () Bool)

(assert (=> d!732932 m!2923881))

(declare-fun m!2923883 () Bool)

(assert (=> d!732932 m!2923883))

(declare-fun m!2923885 () Bool)

(assert (=> d!732932 m!2923885))

(assert (=> d!732932 m!2923855))

(assert (=> d!732932 m!2923875))

(declare-fun m!2923887 () Bool)

(assert (=> d!732932 m!2923887))

(declare-fun m!2923889 () Bool)

(assert (=> bm!167134 m!2923889))

(assert (=> bm!167139 m!2922091))

(declare-fun m!2923891 () Bool)

(assert (=> b!2587463 m!2923891))

(assert (=> b!2587463 m!2923843))

(assert (=> bm!167135 m!2923857))

(declare-fun m!2923895 () Bool)

(assert (=> b!2587458 m!2923895))

(assert (=> bm!167008 d!732932))

(declare-fun b!2587472 () Bool)

(declare-fun e!1632456 () Bool)

(declare-fun call!167149 () Bool)

(assert (=> b!2587472 (= e!1632456 call!167149)))

(declare-fun d!732938 () Bool)

(declare-fun res!1088088 () Bool)

(declare-fun e!1632452 () Bool)

(assert (=> d!732938 (=> res!1088088 e!1632452)))

(assert (=> d!732938 (= res!1088088 ((_ is ElementMatch!7665) (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))

(assert (=> d!732938 (= (validRegex!3279 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))) e!1632452)))

(declare-fun bm!167142 () Bool)

(declare-fun call!167147 () Bool)

(declare-fun call!167148 () Bool)

(assert (=> bm!167142 (= call!167147 call!167148)))

(declare-fun b!2587473 () Bool)

(declare-fun e!1632454 () Bool)

(declare-fun e!1632458 () Bool)

(assert (=> b!2587473 (= e!1632454 e!1632458)))

(declare-fun res!1088087 () Bool)

(assert (=> b!2587473 (=> (not res!1088087) (not e!1632458))))

(assert (=> b!2587473 (= res!1088087 call!167147)))

(declare-fun bm!167143 () Bool)

(declare-fun c!417241 () Bool)

(declare-fun c!417240 () Bool)

(assert (=> bm!167143 (= call!167148 (validRegex!3279 (ite c!417241 (reg!7994 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))) (ite c!417240 (regOne!15843 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))) (regOne!15842 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801)))))))))

(declare-fun b!2587474 () Bool)

(declare-fun res!1088084 () Bool)

(assert (=> b!2587474 (=> (not res!1088084) (not e!1632456))))

(assert (=> b!2587474 (= res!1088084 call!167147)))

(declare-fun e!1632455 () Bool)

(assert (=> b!2587474 (= e!1632455 e!1632456)))

(declare-fun b!2587475 () Bool)

(assert (=> b!2587475 (= e!1632458 call!167149)))

(declare-fun b!2587476 () Bool)

(declare-fun res!1088085 () Bool)

(assert (=> b!2587476 (=> res!1088085 e!1632454)))

(assert (=> b!2587476 (= res!1088085 (not ((_ is Concat!12409) (h!35187 (map!6607 (t!212231 rs!798) lambda!95801)))))))

(assert (=> b!2587476 (= e!1632455 e!1632454)))

(declare-fun b!2587477 () Bool)

(declare-fun e!1632453 () Bool)

(assert (=> b!2587477 (= e!1632453 e!1632455)))

(assert (=> b!2587477 (= c!417240 ((_ is Union!7665) (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))

(declare-fun bm!167144 () Bool)

(assert (=> bm!167144 (= call!167149 (validRegex!3279 (ite c!417240 (regTwo!15843 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))) (regTwo!15842 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))))

(declare-fun b!2587478 () Bool)

(assert (=> b!2587478 (= e!1632452 e!1632453)))

(assert (=> b!2587478 (= c!417241 ((_ is Star!7665) (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))

(declare-fun b!2587479 () Bool)

(declare-fun e!1632457 () Bool)

(assert (=> b!2587479 (= e!1632457 call!167148)))

(declare-fun b!2587480 () Bool)

(assert (=> b!2587480 (= e!1632453 e!1632457)))

(declare-fun res!1088086 () Bool)

(assert (=> b!2587480 (= res!1088086 (not (nullable!2570 (reg!7994 (h!35187 (map!6607 (t!212231 rs!798) lambda!95801))))))))

(assert (=> b!2587480 (=> (not res!1088086) (not e!1632457))))

(assert (= (and d!732938 (not res!1088088)) b!2587478))

(assert (= (and b!2587478 c!417241) b!2587480))

(assert (= (and b!2587478 (not c!417241)) b!2587477))

(assert (= (and b!2587480 res!1088086) b!2587479))

(assert (= (and b!2587477 c!417240) b!2587474))

(assert (= (and b!2587477 (not c!417240)) b!2587476))

(assert (= (and b!2587474 res!1088084) b!2587472))

(assert (= (and b!2587476 (not res!1088085)) b!2587473))

(assert (= (and b!2587473 res!1088087) b!2587475))

(assert (= (or b!2587474 b!2587473) bm!167142))

(assert (= (or b!2587472 b!2587475) bm!167144))

(assert (= (or b!2587479 bm!167142) bm!167143))

(declare-fun m!2923899 () Bool)

(assert (=> bm!167143 m!2923899))

(declare-fun m!2923901 () Bool)

(assert (=> bm!167144 m!2923901))

(declare-fun m!2923903 () Bool)

(assert (=> b!2587480 m!2923903))

(assert (=> bs!471786 d!732938))

(declare-fun d!732940 () Bool)

(declare-fun lt!909899 () Int)

(assert (=> d!732940 (>= lt!909899 0)))

(declare-fun e!1632459 () Int)

(assert (=> d!732940 (= lt!909899 e!1632459)))

(declare-fun c!417242 () Bool)

(assert (=> d!732940 (= c!417242 ((_ is Nil!29767) (t!212232 lt!909331)))))

(assert (=> d!732940 (= (size!23082 (t!212232 lt!909331)) lt!909899)))

(declare-fun b!2587481 () Bool)

(assert (=> b!2587481 (= e!1632459 0)))

(declare-fun b!2587482 () Bool)

(assert (=> b!2587482 (= e!1632459 (+ 1 (size!23082 (t!212232 (t!212232 lt!909331)))))))

(assert (= (and d!732940 c!417242) b!2587481))

(assert (= (and d!732940 (not c!417242)) b!2587482))

(declare-fun m!2923905 () Bool)

(assert (=> b!2587482 m!2923905))

(assert (=> b!2586470 d!732940))

(declare-fun b!2587483 () Bool)

(declare-fun e!1632462 () Bool)

(declare-fun lt!909901 () Option!5936)

(assert (=> b!2587483 (= e!1632462 (= (size!23077 (_1!17401 (get!9380 lt!909901))) (size!23078 (originalCharacters!5287 (_1!17401 (get!9380 lt!909901))))))))

(declare-fun b!2587484 () Bool)

(declare-fun e!1632463 () Bool)

(assert (=> b!2587484 (= e!1632463 (matchR!3598 (regex!4521 (h!35186 (t!212231 rules!4580))) (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 (t!212231 rules!4580))) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun b!2587485 () Bool)

(declare-fun e!1632460 () Bool)

(assert (=> b!2587485 (= e!1632460 e!1632462)))

(declare-fun res!1088093 () Bool)

(assert (=> b!2587485 (=> (not res!1088093) (not e!1632462))))

(assert (=> b!2587485 (= res!1088093 (matchR!3598 (regex!4521 (h!35186 (t!212231 rules!4580))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909901))))))))

(declare-fun b!2587486 () Bool)

(declare-fun res!1088090 () Bool)

(assert (=> b!2587486 (=> (not res!1088090) (not e!1632462))))

(assert (=> b!2587486 (= res!1088090 (= (value!146096 (_1!17401 (get!9380 lt!909901))) (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909901)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909901)))))))))

(declare-fun b!2587487 () Bool)

(declare-fun res!1088092 () Bool)

(assert (=> b!2587487 (=> (not res!1088092) (not e!1632462))))

(assert (=> b!2587487 (= res!1088092 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909901)))) (_2!17401 (get!9380 lt!909901))) input!3654))))

(declare-fun b!2587488 () Bool)

(declare-fun res!1088091 () Bool)

(assert (=> b!2587488 (=> (not res!1088091) (not e!1632462))))

(assert (=> b!2587488 (= res!1088091 (< (size!23078 (_2!17401 (get!9380 lt!909901))) (size!23078 input!3654)))))

(declare-fun b!2587489 () Bool)

(declare-fun e!1632461 () Option!5936)

(declare-fun lt!909903 () tuple2!29720)

(assert (=> b!2587489 (= e!1632461 (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 (h!35186 (t!212231 rules!4580))) (seqFromList!3161 (_1!17402 lt!909903))) (h!35186 (t!212231 rules!4580)) (size!23079 (seqFromList!3161 (_1!17402 lt!909903))) (_1!17402 lt!909903)) (_2!17402 lt!909903))))))

(declare-fun lt!909900 () Unit!43600)

(assert (=> b!2587489 (= lt!909900 (longestMatchIsAcceptedByMatchOrIsEmpty!729 (regex!4521 (h!35186 (t!212231 rules!4580))) input!3654))))

(declare-fun res!1088094 () Bool)

(assert (=> b!2587489 (= res!1088094 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 (t!212231 rules!4580))) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2587489 (=> res!1088094 e!1632463)))

(assert (=> b!2587489 e!1632463))

(declare-fun lt!909902 () Unit!43600)

(assert (=> b!2587489 (= lt!909902 lt!909900)))

(declare-fun lt!909904 () Unit!43600)

(assert (=> b!2587489 (= lt!909904 (lemmaSemiInverse!1107 (transformation!4521 (h!35186 (t!212231 rules!4580))) (seqFromList!3161 (_1!17402 lt!909903))))))

(declare-fun d!732942 () Bool)

(assert (=> d!732942 e!1632460))

(declare-fun res!1088095 () Bool)

(assert (=> d!732942 (=> res!1088095 e!1632460)))

(assert (=> d!732942 (= res!1088095 (isEmpty!17111 lt!909901))))

(assert (=> d!732942 (= lt!909901 e!1632461)))

(declare-fun c!417243 () Bool)

(assert (=> d!732942 (= c!417243 (isEmpty!17110 (_1!17402 lt!909903)))))

(assert (=> d!732942 (= lt!909903 (findLongestMatch!685 (regex!4521 (h!35186 (t!212231 rules!4580))) input!3654))))

(assert (=> d!732942 (ruleValid!1527 thiss!28211 (h!35186 (t!212231 rules!4580)))))

(assert (=> d!732942 (= (maxPrefixOneRule!1456 thiss!28211 (h!35186 (t!212231 rules!4580)) input!3654) lt!909901)))

(declare-fun b!2587490 () Bool)

(assert (=> b!2587490 (= e!1632461 None!5935)))

(declare-fun b!2587491 () Bool)

(declare-fun res!1088089 () Bool)

(assert (=> b!2587491 (=> (not res!1088089) (not e!1632462))))

(assert (=> b!2587491 (= res!1088089 (= (rule!6887 (_1!17401 (get!9380 lt!909901))) (h!35186 (t!212231 rules!4580))))))

(assert (= (and d!732942 c!417243) b!2587490))

(assert (= (and d!732942 (not c!417243)) b!2587489))

(assert (= (and b!2587489 (not res!1088094)) b!2587484))

(assert (= (and d!732942 (not res!1088095)) b!2587485))

(assert (= (and b!2587485 res!1088093) b!2587487))

(assert (= (and b!2587487 res!1088092) b!2587488))

(assert (= (and b!2587488 res!1088091) b!2587491))

(assert (= (and b!2587491 res!1088089) b!2587486))

(assert (= (and b!2587486 res!1088090) b!2587483))

(declare-fun m!2923915 () Bool)

(assert (=> b!2587488 m!2923915))

(declare-fun m!2923917 () Bool)

(assert (=> b!2587488 m!2923917))

(assert (=> b!2587488 m!2921793))

(declare-fun m!2923919 () Bool)

(assert (=> d!732942 m!2923919))

(declare-fun m!2923921 () Bool)

(assert (=> d!732942 m!2923921))

(declare-fun m!2923923 () Bool)

(assert (=> d!732942 m!2923923))

(declare-fun m!2923925 () Bool)

(assert (=> d!732942 m!2923925))

(assert (=> b!2587484 m!2921801))

(assert (=> b!2587484 m!2921793))

(assert (=> b!2587484 m!2921801))

(assert (=> b!2587484 m!2921793))

(declare-fun m!2923927 () Bool)

(assert (=> b!2587484 m!2923927))

(declare-fun m!2923931 () Bool)

(assert (=> b!2587484 m!2923931))

(assert (=> b!2587491 m!2923915))

(assert (=> b!2587486 m!2923915))

(declare-fun m!2923935 () Bool)

(assert (=> b!2587486 m!2923935))

(assert (=> b!2587486 m!2923935))

(declare-fun m!2923937 () Bool)

(assert (=> b!2587486 m!2923937))

(assert (=> b!2587485 m!2923915))

(declare-fun m!2923939 () Bool)

(assert (=> b!2587485 m!2923939))

(assert (=> b!2587485 m!2923939))

(declare-fun m!2923941 () Bool)

(assert (=> b!2587485 m!2923941))

(assert (=> b!2587485 m!2923941))

(declare-fun m!2923945 () Bool)

(assert (=> b!2587485 m!2923945))

(assert (=> b!2587483 m!2923915))

(declare-fun m!2923949 () Bool)

(assert (=> b!2587483 m!2923949))

(assert (=> b!2587487 m!2923915))

(assert (=> b!2587487 m!2923939))

(assert (=> b!2587487 m!2923939))

(assert (=> b!2587487 m!2923941))

(assert (=> b!2587487 m!2923941))

(declare-fun m!2923951 () Bool)

(assert (=> b!2587487 m!2923951))

(declare-fun m!2923953 () Bool)

(assert (=> b!2587489 m!2923953))

(declare-fun m!2923955 () Bool)

(assert (=> b!2587489 m!2923955))

(assert (=> b!2587489 m!2921801))

(assert (=> b!2587489 m!2921793))

(assert (=> b!2587489 m!2923927))

(assert (=> b!2587489 m!2923953))

(declare-fun m!2923957 () Bool)

(assert (=> b!2587489 m!2923957))

(assert (=> b!2587489 m!2923953))

(declare-fun m!2923959 () Bool)

(assert (=> b!2587489 m!2923959))

(assert (=> b!2587489 m!2921801))

(assert (=> b!2587489 m!2921793))

(declare-fun m!2923961 () Bool)

(assert (=> b!2587489 m!2923961))

(assert (=> b!2587489 m!2923953))

(declare-fun m!2923963 () Bool)

(assert (=> b!2587489 m!2923963))

(assert (=> bm!166952 d!732942))

(assert (=> bm!167015 d!732222))

(assert (=> b!2586104 d!732706))

(declare-fun d!732960 () Bool)

(assert (=> d!732960 (= (apply!7026 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429))))) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429))))))))

(declare-fun b_lambda!76921 () Bool)

(assert (=> (not b_lambda!76921) (not d!732960)))

(declare-fun t!212594 () Bool)

(declare-fun tb!141193 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212594) tb!141193))

(declare-fun result!175480 () Bool)

(assert (=> tb!141193 (= result!175480 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))))))))

(declare-fun m!2923965 () Bool)

(assert (=> tb!141193 m!2923965))

(assert (=> d!732960 t!212594))

(declare-fun b_and!189883 () Bool)

(assert (= b_and!189839 (and (=> t!212594 result!175480) b_and!189883)))

(declare-fun t!212596 () Bool)

(declare-fun tb!141195 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212596) tb!141195))

(declare-fun result!175482 () Bool)

(assert (= result!175482 result!175480))

(assert (=> d!732960 t!212596))

(declare-fun b_and!189885 () Bool)

(assert (= b_and!189845 (and (=> t!212596 result!175482) b_and!189885)))

(declare-fun t!212598 () Bool)

(declare-fun tb!141197 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212598) tb!141197))

(declare-fun result!175484 () Bool)

(assert (= result!175484 result!175480))

(assert (=> d!732960 t!212598))

(declare-fun b_and!189887 () Bool)

(assert (= b_and!189837 (and (=> t!212598 result!175484) b_and!189887)))

(declare-fun t!212600 () Bool)

(declare-fun tb!141199 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212600) tb!141199))

(declare-fun result!175486 () Bool)

(assert (= result!175486 result!175480))

(assert (=> d!732960 t!212600))

(declare-fun b_and!189889 () Bool)

(assert (= b_and!189835 (and (=> t!212600 result!175486) b_and!189889)))

(declare-fun t!212602 () Bool)

(declare-fun tb!141201 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212602) tb!141201))

(declare-fun result!175488 () Bool)

(assert (= result!175488 result!175480))

(assert (=> d!732960 t!212602))

(declare-fun b_and!189891 () Bool)

(assert (= b_and!189847 (and (=> t!212602 result!175488) b_and!189891)))

(declare-fun tb!141203 () Bool)

(declare-fun t!212604 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212604) tb!141203))

(declare-fun result!175490 () Bool)

(assert (= result!175490 result!175480))

(assert (=> d!732960 t!212604))

(declare-fun b_and!189893 () Bool)

(assert (= b_and!189843 (and (=> t!212604 result!175490) b_and!189893)))

(declare-fun tb!141205 () Bool)

(declare-fun t!212606 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212606) tb!141205))

(declare-fun result!175492 () Bool)

(assert (= result!175492 result!175480))

(assert (=> d!732960 t!212606))

(declare-fun b_and!189895 () Bool)

(assert (= b_and!189849 (and (=> t!212606 result!175492) b_and!189895)))

(declare-fun t!212608 () Bool)

(declare-fun tb!141207 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212608) tb!141207))

(declare-fun result!175494 () Bool)

(assert (= result!175494 result!175480))

(assert (=> d!732960 t!212608))

(declare-fun b_and!189897 () Bool)

(assert (= b_and!189841 (and (=> t!212608 result!175494) b_and!189897)))

(assert (=> d!732960 m!2922265))

(declare-fun m!2923975 () Bool)

(assert (=> d!732960 m!2923975))

(assert (=> b!2586104 d!732960))

(declare-fun d!732962 () Bool)

(assert (=> d!732962 (= (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))) (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909429)))))))

(declare-fun bs!471892 () Bool)

(assert (= bs!471892 d!732962))

(declare-fun m!2923979 () Bool)

(assert (=> bs!471892 m!2923979))

(assert (=> b!2586104 d!732962))

(assert (=> b!2586220 d!732698))

(assert (=> b!2586220 d!732700))

(declare-fun d!732964 () Bool)

(declare-fun choose!625 (List!29864) (_ BitVec 32))

(assert (=> d!732964 (= (charsToInt!0 (text!33648 (value!146096 token!562))) (choose!625 (text!33648 (value!146096 token!562))))))

(declare-fun bs!471893 () Bool)

(assert (= bs!471893 d!732964))

(declare-fun m!2923985 () Bool)

(assert (=> bs!471893 m!2923985))

(assert (=> d!732238 d!732964))

(assert (=> d!732444 d!732222))

(declare-fun b!2587511 () Bool)

(declare-fun e!1632479 () Bool)

(declare-fun call!167153 () Bool)

(assert (=> b!2587511 (= e!1632479 call!167153)))

(declare-fun d!732966 () Bool)

(declare-fun res!1088109 () Bool)

(declare-fun e!1632475 () Bool)

(assert (=> d!732966 (=> res!1088109 e!1632475)))

(assert (=> d!732966 (= res!1088109 ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(assert (=> d!732966 (= (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) e!1632475)))

(declare-fun bm!167146 () Bool)

(declare-fun call!167151 () Bool)

(declare-fun call!167152 () Bool)

(assert (=> bm!167146 (= call!167151 call!167152)))

(declare-fun b!2587512 () Bool)

(declare-fun e!1632477 () Bool)

(declare-fun e!1632481 () Bool)

(assert (=> b!2587512 (= e!1632477 e!1632481)))

(declare-fun res!1088108 () Bool)

(assert (=> b!2587512 (=> (not res!1088108) (not e!1632481))))

(assert (=> b!2587512 (= res!1088108 call!167151)))

(declare-fun c!417249 () Bool)

(declare-fun c!417250 () Bool)

(declare-fun bm!167147 () Bool)

(assert (=> bm!167147 (= call!167152 (validRegex!3279 (ite c!417250 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (ite c!417249 (regOne!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))))

(declare-fun b!2587513 () Bool)

(declare-fun res!1088105 () Bool)

(assert (=> b!2587513 (=> (not res!1088105) (not e!1632479))))

(assert (=> b!2587513 (= res!1088105 call!167151)))

(declare-fun e!1632478 () Bool)

(assert (=> b!2587513 (= e!1632478 e!1632479)))

(declare-fun b!2587514 () Bool)

(assert (=> b!2587514 (= e!1632481 call!167153)))

(declare-fun b!2587515 () Bool)

(declare-fun res!1088106 () Bool)

(assert (=> b!2587515 (=> res!1088106 e!1632477)))

(assert (=> b!2587515 (= res!1088106 (not ((_ is Concat!12409) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246)))))))

(assert (=> b!2587515 (= e!1632478 e!1632477)))

(declare-fun b!2587516 () Bool)

(declare-fun e!1632476 () Bool)

(assert (=> b!2587516 (= e!1632476 e!1632478)))

(assert (=> b!2587516 (= c!417249 ((_ is Union!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun bm!167148 () Bool)

(assert (=> bm!167148 (= call!167153 (validRegex!3279 (ite c!417249 (regTwo!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))) (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))))

(declare-fun b!2587517 () Bool)

(assert (=> b!2587517 (= e!1632475 e!1632476)))

(assert (=> b!2587517 (= c!417250 ((_ is Star!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))

(declare-fun b!2587518 () Bool)

(declare-fun e!1632480 () Bool)

(assert (=> b!2587518 (= e!1632480 call!167152)))

(declare-fun b!2587519 () Bool)

(assert (=> b!2587519 (= e!1632476 e!1632480)))

(declare-fun res!1088107 () Bool)

(assert (=> b!2587519 (= res!1088107 (not (nullable!2570 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909246))))))))

(assert (=> b!2587519 (=> (not res!1088107) (not e!1632480))))

(assert (= (and d!732966 (not res!1088109)) b!2587517))

(assert (= (and b!2587517 c!417250) b!2587519))

(assert (= (and b!2587517 (not c!417250)) b!2587516))

(assert (= (and b!2587519 res!1088107) b!2587518))

(assert (= (and b!2587516 c!417249) b!2587513))

(assert (= (and b!2587516 (not c!417249)) b!2587515))

(assert (= (and b!2587513 res!1088105) b!2587511))

(assert (= (and b!2587515 (not res!1088106)) b!2587512))

(assert (= (and b!2587512 res!1088108) b!2587514))

(assert (= (or b!2587513 b!2587512) bm!167146))

(assert (= (or b!2587511 b!2587514) bm!167148))

(assert (= (or b!2587518 bm!167146) bm!167147))

(declare-fun m!2923989 () Bool)

(assert (=> bm!167147 m!2923989))

(declare-fun m!2923993 () Bool)

(assert (=> bm!167148 m!2923993))

(declare-fun m!2923995 () Bool)

(assert (=> b!2587519 m!2923995))

(assert (=> d!732444 d!732966))

(assert (=> bm!166966 d!732490))

(declare-fun b!2587520 () Bool)

(declare-fun e!1632482 () Bool)

(assert (=> b!2587520 (= e!1632482 (not (isEmpty!17114 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))))

(declare-fun b!2587521 () Bool)

(declare-fun e!1632483 () Bool)

(assert (=> b!2587521 (= e!1632483 e!1632482)))

(declare-fun res!1088111 () Bool)

(assert (=> b!2587521 (=> (not res!1088111) (not e!1632482))))

(assert (=> b!2587521 (= res!1088111 (<= (- 1) (- (height!1347 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (height!1347 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))))

(declare-fun d!732972 () Bool)

(declare-fun res!1088113 () Bool)

(assert (=> d!732972 (=> res!1088113 e!1632483)))

(assert (=> d!732972 (= res!1088113 (not ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (=> d!732972 (= (isBalanced!2834 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1632483)))

(declare-fun b!2587522 () Bool)

(declare-fun res!1088110 () Bool)

(assert (=> b!2587522 (=> (not res!1088110) (not e!1632482))))

(assert (=> b!2587522 (= res!1088110 (<= (- (height!1347 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (height!1347 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) 1))))

(declare-fun b!2587523 () Bool)

(declare-fun res!1088115 () Bool)

(assert (=> b!2587523 (=> (not res!1088115) (not e!1632482))))

(assert (=> b!2587523 (= res!1088115 (not (isEmpty!17114 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))))))

(declare-fun b!2587524 () Bool)

(declare-fun res!1088114 () Bool)

(assert (=> b!2587524 (=> (not res!1088114) (not e!1632482))))

(assert (=> b!2587524 (= res!1088114 (isBalanced!2834 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(declare-fun b!2587525 () Bool)

(declare-fun res!1088112 () Bool)

(assert (=> b!2587525 (=> (not res!1088112) (not e!1632482))))

(assert (=> b!2587525 (= res!1088112 (isBalanced!2834 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (= (and d!732972 (not res!1088113)) b!2587521))

(assert (= (and b!2587521 res!1088111) b!2587522))

(assert (= (and b!2587522 res!1088110) b!2587524))

(assert (= (and b!2587524 res!1088114) b!2587525))

(assert (= (and b!2587525 res!1088112) b!2587523))

(assert (= (and b!2587523 res!1088115) b!2587520))

(declare-fun m!2923997 () Bool)

(assert (=> b!2587523 m!2923997))

(declare-fun m!2923999 () Bool)

(assert (=> b!2587521 m!2923999))

(declare-fun m!2924001 () Bool)

(assert (=> b!2587521 m!2924001))

(declare-fun m!2924003 () Bool)

(assert (=> b!2587520 m!2924003))

(declare-fun m!2924005 () Bool)

(assert (=> b!2587524 m!2924005))

(declare-fun m!2924007 () Bool)

(assert (=> b!2587525 m!2924007))

(assert (=> b!2587522 m!2923999))

(assert (=> b!2587522 m!2924001))

(assert (=> d!732458 d!732972))

(declare-fun d!732976 () Bool)

(assert (=> d!732976 (= (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 rs!798))))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 (t!212231 (t!212231 rs!798)))))) 2) 0))))

(assert (=> b!2586723 d!732976))

(declare-fun d!732978 () Bool)

(declare-fun res!1088116 () Bool)

(declare-fun e!1632484 () Bool)

(assert (=> d!732978 (=> (not res!1088116) (not e!1632484))))

(assert (=> d!732978 (= res!1088116 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798)))))))))

(assert (=> d!732978 (= (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) e!1632484)))

(declare-fun b!2587526 () Bool)

(assert (=> b!2587526 (= e!1632484 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798)))))))))

(assert (= (and d!732978 res!1088116) b!2587526))

(declare-fun m!2924009 () Bool)

(assert (=> d!732978 m!2924009))

(declare-fun m!2924011 () Bool)

(assert (=> b!2587526 m!2924011))

(assert (=> b!2586723 d!732978))

(assert (=> d!732254 d!732506))

(declare-fun d!732980 () Bool)

(assert (=> d!732980 (= (isEmpty!17110 (_1!17402 lt!909550)) ((_ is Nil!29765) (_1!17402 lt!909550)))))

(assert (=> b!2586432 d!732980))

(declare-fun b!2587528 () Bool)

(declare-fun e!1632490 () Bool)

(declare-fun call!167156 () Bool)

(assert (=> b!2587528 (= e!1632490 call!167156)))

(declare-fun d!732982 () Bool)

(declare-fun res!1088121 () Bool)

(declare-fun e!1632486 () Bool)

(assert (=> d!732982 (=> res!1088121 e!1632486)))

(assert (=> d!732982 (= res!1088121 ((_ is ElementMatch!7665) (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(assert (=> d!732982 (= (validRegex!3279 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))) e!1632486)))

(declare-fun bm!167149 () Bool)

(declare-fun call!167154 () Bool)

(declare-fun call!167155 () Bool)

(assert (=> bm!167149 (= call!167154 call!167155)))

(declare-fun b!2587529 () Bool)

(declare-fun e!1632488 () Bool)

(declare-fun e!1632492 () Bool)

(assert (=> b!2587529 (= e!1632488 e!1632492)))

(declare-fun res!1088120 () Bool)

(assert (=> b!2587529 (=> (not res!1088120) (not e!1632492))))

(assert (=> b!2587529 (= res!1088120 call!167154)))

(declare-fun bm!167150 () Bool)

(declare-fun c!417252 () Bool)

(declare-fun c!417251 () Bool)

(assert (=> bm!167150 (= call!167155 (validRegex!3279 (ite c!417252 (reg!7994 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))) (ite c!417251 (regOne!15843 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))) (regOne!15842 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783))))))))))

(declare-fun b!2587530 () Bool)

(declare-fun res!1088117 () Bool)

(assert (=> b!2587530 (=> (not res!1088117) (not e!1632490))))

(assert (=> b!2587530 (= res!1088117 call!167154)))

(declare-fun e!1632489 () Bool)

(assert (=> b!2587530 (= e!1632489 e!1632490)))

(declare-fun b!2587531 () Bool)

(assert (=> b!2587531 (= e!1632492 call!167156)))

(declare-fun b!2587532 () Bool)

(declare-fun res!1088118 () Bool)

(assert (=> b!2587532 (=> res!1088118 e!1632488)))

(assert (=> b!2587532 (= res!1088118 (not ((_ is Concat!12409) (h!35187 (t!212232 (map!6607 rs!798 lambda!95783))))))))

(assert (=> b!2587532 (= e!1632489 e!1632488)))

(declare-fun b!2587533 () Bool)

(declare-fun e!1632487 () Bool)

(assert (=> b!2587533 (= e!1632487 e!1632489)))

(assert (=> b!2587533 (= c!417251 ((_ is Union!7665) (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(declare-fun bm!167151 () Bool)

(assert (=> bm!167151 (= call!167156 (validRegex!3279 (ite c!417251 (regTwo!15843 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))) (regTwo!15842 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))))

(declare-fun b!2587534 () Bool)

(assert (=> b!2587534 (= e!1632486 e!1632487)))

(assert (=> b!2587534 (= c!417252 ((_ is Star!7665) (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))

(declare-fun b!2587535 () Bool)

(declare-fun e!1632491 () Bool)

(assert (=> b!2587535 (= e!1632491 call!167155)))

(declare-fun b!2587536 () Bool)

(assert (=> b!2587536 (= e!1632487 e!1632491)))

(declare-fun res!1088119 () Bool)

(assert (=> b!2587536 (= res!1088119 (not (nullable!2570 (reg!7994 (h!35187 (t!212232 (map!6607 rs!798 lambda!95783)))))))))

(assert (=> b!2587536 (=> (not res!1088119) (not e!1632491))))

(assert (= (and d!732982 (not res!1088121)) b!2587534))

(assert (= (and b!2587534 c!417252) b!2587536))

(assert (= (and b!2587534 (not c!417252)) b!2587533))

(assert (= (and b!2587536 res!1088119) b!2587535))

(assert (= (and b!2587533 c!417251) b!2587530))

(assert (= (and b!2587533 (not c!417251)) b!2587532))

(assert (= (and b!2587530 res!1088117) b!2587528))

(assert (= (and b!2587532 (not res!1088118)) b!2587529))

(assert (= (and b!2587529 res!1088120) b!2587531))

(assert (= (or b!2587530 b!2587529) bm!167149))

(assert (= (or b!2587528 b!2587531) bm!167151))

(assert (= (or b!2587535 bm!167149) bm!167150))

(declare-fun m!2924017 () Bool)

(assert (=> bm!167150 m!2924017))

(declare-fun m!2924019 () Bool)

(assert (=> bm!167151 m!2924019))

(declare-fun m!2924021 () Bool)

(assert (=> b!2587536 m!2924021))

(assert (=> bs!471788 d!732982))

(declare-fun d!732984 () Bool)

(assert (=> d!732984 (= ($colon$colon!544 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95801) (dynLambda!12586 lambda!95801 (h!35186 (t!212231 rs!798)))) (Cons!29767 (dynLambda!12586 lambda!95801 (h!35186 (t!212231 rs!798))) (map!6607 (t!212231 (t!212231 rs!798)) lambda!95801)))))

(assert (=> b!2586135 d!732984))

(declare-fun d!732986 () Bool)

(declare-fun lt!909907 () List!29867)

(assert (=> d!732986 (= (size!23082 lt!909907) (size!23083 (t!212231 (t!212231 rs!798))))))

(declare-fun e!1632493 () List!29867)

(assert (=> d!732986 (= lt!909907 e!1632493)))

(declare-fun c!417253 () Bool)

(assert (=> d!732986 (= c!417253 ((_ is Nil!29766) (t!212231 (t!212231 rs!798))))))

(assert (=> d!732986 (= (map!6607 (t!212231 (t!212231 rs!798)) lambda!95801) lt!909907)))

(declare-fun b!2587537 () Bool)

(assert (=> b!2587537 (= e!1632493 Nil!29767)))

(declare-fun b!2587538 () Bool)

(assert (=> b!2587538 (= e!1632493 ($colon$colon!544 (map!6607 (t!212231 (t!212231 (t!212231 rs!798))) lambda!95801) (dynLambda!12586 lambda!95801 (h!35186 (t!212231 (t!212231 rs!798))))))))

(assert (= (and d!732986 c!417253) b!2587537))

(assert (= (and d!732986 (not c!417253)) b!2587538))

(declare-fun b_lambda!76925 () Bool)

(assert (=> (not b_lambda!76925) (not b!2587538)))

(declare-fun m!2924023 () Bool)

(assert (=> d!732986 m!2924023))

(assert (=> d!732986 m!2923313))

(declare-fun m!2924025 () Bool)

(assert (=> b!2587538 m!2924025))

(declare-fun m!2924027 () Bool)

(assert (=> b!2587538 m!2924027))

(assert (=> b!2587538 m!2924025))

(assert (=> b!2587538 m!2924027))

(declare-fun m!2924029 () Bool)

(assert (=> b!2587538 m!2924029))

(assert (=> b!2586135 d!732986))

(declare-fun d!732988 () Bool)

(declare-fun lt!909908 () Int)

(assert (=> d!732988 (>= lt!909908 0)))

(declare-fun e!1632494 () Int)

(assert (=> d!732988 (= lt!909908 e!1632494)))

(declare-fun c!417254 () Bool)

(assert (=> d!732988 (= c!417254 ((_ is Nil!29765) (t!212230 (_2!17401 (get!9380 lt!909381)))))))

(assert (=> d!732988 (= (size!23078 (t!212230 (_2!17401 (get!9380 lt!909381)))) lt!909908)))

(declare-fun b!2587539 () Bool)

(assert (=> b!2587539 (= e!1632494 0)))

(declare-fun b!2587540 () Bool)

(assert (=> b!2587540 (= e!1632494 (+ 1 (size!23078 (t!212230 (t!212230 (_2!17401 (get!9380 lt!909381)))))))))

(assert (= (and d!732988 c!417254) b!2587539))

(assert (= (and d!732988 (not c!417254)) b!2587540))

(declare-fun m!2924034 () Bool)

(assert (=> b!2587540 m!2924034))

(assert (=> b!2586523 d!732988))

(assert (=> bm!166953 d!732508))

(assert (=> b!2586491 d!732726))

(assert (=> b!2586491 d!732728))

(declare-fun d!732990 () Bool)

(declare-fun res!1088133 () Bool)

(declare-fun e!1632509 () Bool)

(assert (=> d!732990 (=> res!1088133 e!1632509)))

(assert (=> d!732990 (= res!1088133 ((_ is EmptyExpr!7665) (regex!4521 rule!570)))))

(assert (=> d!732990 (= (nullableFct!788 (regex!4521 rule!570)) e!1632509)))

(declare-fun bm!167156 () Bool)

(declare-fun call!167161 () Bool)

(declare-fun c!417259 () Bool)

(assert (=> bm!167156 (= call!167161 (nullable!2570 (ite c!417259 (regOne!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587559 () Bool)

(declare-fun e!1632514 () Bool)

(assert (=> b!2587559 (= e!1632509 e!1632514)))

(declare-fun res!1088132 () Bool)

(assert (=> b!2587559 (=> (not res!1088132) (not e!1632514))))

(assert (=> b!2587559 (= res!1088132 (and (not ((_ is EmptyLang!7665) (regex!4521 rule!570))) (not ((_ is ElementMatch!7665) (regex!4521 rule!570)))))))

(declare-fun b!2587560 () Bool)

(declare-fun e!1632512 () Bool)

(assert (=> b!2587560 (= e!1632514 e!1632512)))

(declare-fun res!1088135 () Bool)

(assert (=> b!2587560 (=> res!1088135 e!1632512)))

(assert (=> b!2587560 (= res!1088135 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2587561 () Bool)

(declare-fun e!1632511 () Bool)

(declare-fun call!167162 () Bool)

(assert (=> b!2587561 (= e!1632511 call!167162)))

(declare-fun b!2587562 () Bool)

(declare-fun e!1632513 () Bool)

(assert (=> b!2587562 (= e!1632512 e!1632513)))

(assert (=> b!2587562 (= c!417259 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun b!2587563 () Bool)

(declare-fun e!1632510 () Bool)

(assert (=> b!2587563 (= e!1632513 e!1632510)))

(declare-fun res!1088136 () Bool)

(assert (=> b!2587563 (= res!1088136 call!167161)))

(assert (=> b!2587563 (=> (not res!1088136) (not e!1632510))))

(declare-fun bm!167157 () Bool)

(assert (=> bm!167157 (= call!167162 (nullable!2570 (ite c!417259 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587564 () Bool)

(assert (=> b!2587564 (= e!1632510 call!167162)))

(declare-fun b!2587565 () Bool)

(assert (=> b!2587565 (= e!1632513 e!1632511)))

(declare-fun res!1088134 () Bool)

(assert (=> b!2587565 (= res!1088134 call!167161)))

(assert (=> b!2587565 (=> res!1088134 e!1632511)))

(assert (= (and d!732990 (not res!1088133)) b!2587559))

(assert (= (and b!2587559 res!1088132) b!2587560))

(assert (= (and b!2587560 (not res!1088135)) b!2587562))

(assert (= (and b!2587562 c!417259) b!2587565))

(assert (= (and b!2587562 (not c!417259)) b!2587563))

(assert (= (and b!2587565 (not res!1088134)) b!2587561))

(assert (= (and b!2587563 res!1088136) b!2587564))

(assert (= (or b!2587565 b!2587563) bm!167156))

(assert (= (or b!2587561 b!2587564) bm!167157))

(declare-fun m!2924043 () Bool)

(assert (=> bm!167156 m!2924043))

(declare-fun m!2924047 () Bool)

(assert (=> bm!167157 m!2924047))

(assert (=> d!732230 d!732990))

(declare-fun d!733002 () Bool)

(declare-fun res!1088137 () Bool)

(declare-fun e!1632516 () Bool)

(assert (=> d!733002 (=> res!1088137 e!1632516)))

(assert (=> d!733002 (= res!1088137 ((_ is Nil!29767) (t!212232 (map!6607 (t!212231 rs!798) lambda!95801))))))

(assert (=> d!733002 (= (forall!6065 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801)) lambda!95802) e!1632516)))

(declare-fun b!2587568 () Bool)

(declare-fun e!1632517 () Bool)

(assert (=> b!2587568 (= e!1632516 e!1632517)))

(declare-fun res!1088138 () Bool)

(assert (=> b!2587568 (=> (not res!1088138) (not e!1632517))))

(assert (=> b!2587568 (= res!1088138 (dynLambda!12585 lambda!95802 (h!35187 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801)))))))

(declare-fun b!2587569 () Bool)

(assert (=> b!2587569 (= e!1632517 (forall!6065 (t!212232 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801))) lambda!95802))))

(assert (= (and d!733002 (not res!1088137)) b!2587568))

(assert (= (and b!2587568 res!1088138) b!2587569))

(declare-fun b_lambda!76927 () Bool)

(assert (=> (not b_lambda!76927) (not b!2587568)))

(declare-fun m!2924049 () Bool)

(assert (=> b!2587568 m!2924049))

(declare-fun m!2924051 () Bool)

(assert (=> b!2587569 m!2924051))

(assert (=> b!2586142 d!733002))

(assert (=> b!2586125 d!732242))

(declare-fun d!733004 () Bool)

(assert (=> d!733004 (= (isEmpty!17110 (_1!17402 lt!909562)) ((_ is Nil!29765) (_1!17402 lt!909562)))))

(assert (=> b!2586423 d!733004))

(declare-fun d!733006 () Bool)

(declare-fun c!417261 () Bool)

(assert (=> d!733006 (= c!417261 ((_ is Nil!29765) (t!212230 suffix!1684)))))

(declare-fun e!1632518 () (InoxSet C!15488))

(assert (=> d!733006 (= (content!4114 (t!212230 suffix!1684)) e!1632518)))

(declare-fun b!2587570 () Bool)

(assert (=> b!2587570 (= e!1632518 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587571 () Bool)

(assert (=> b!2587571 (= e!1632518 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (t!212230 suffix!1684)) true) (content!4114 (t!212230 (t!212230 suffix!1684)))))))

(assert (= (and d!733006 c!417261) b!2587570))

(assert (= (and d!733006 (not c!417261)) b!2587571))

(declare-fun m!2924053 () Bool)

(assert (=> b!2587571 m!2924053))

(declare-fun m!2924055 () Bool)

(assert (=> b!2587571 m!2924055))

(assert (=> b!2586643 d!733006))

(declare-fun d!733008 () Bool)

(declare-fun e!1632519 () Bool)

(assert (=> d!733008 e!1632519))

(declare-fun res!1088139 () Bool)

(assert (=> d!733008 (=> (not res!1088139) (not e!1632519))))

(declare-fun lt!909912 () BalanceConc!18188)

(assert (=> d!733008 (= res!1088139 (= (list!11253 lt!909912) (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))))))

(assert (=> d!733008 (= lt!909912 (BalanceConc!18189 (fromList!562 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!733008 (= (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381)))) lt!909912)))

(declare-fun b!2587572 () Bool)

(assert (=> b!2587572 (= e!1632519 (isBalanced!2834 (fromList!562 (originalCharacters!5287 (_1!17401 (get!9380 lt!909381))))))))

(assert (= (and d!733008 res!1088139) b!2587572))

(declare-fun m!2924057 () Bool)

(assert (=> d!733008 m!2924057))

(declare-fun m!2924059 () Bool)

(assert (=> d!733008 m!2924059))

(assert (=> b!2587572 m!2924059))

(assert (=> b!2587572 m!2924059))

(declare-fun m!2924061 () Bool)

(assert (=> b!2587572 m!2924061))

(assert (=> d!732434 d!733008))

(declare-fun d!733010 () Bool)

(declare-fun e!1632520 () Bool)

(assert (=> d!733010 e!1632520))

(declare-fun res!1088140 () Bool)

(assert (=> d!733010 (=> (not res!1088140) (not e!1632520))))

(declare-fun lt!909913 () BalanceConc!18188)

(assert (=> d!733010 (= res!1088140 (= (list!11253 lt!909913) (_1!17402 lt!909270)))))

(assert (=> d!733010 (= lt!909913 (BalanceConc!18189 (fromList!562 (_1!17402 lt!909270))))))

(assert (=> d!733010 (= (fromListB!1430 (_1!17402 lt!909270)) lt!909913)))

(declare-fun b!2587573 () Bool)

(assert (=> b!2587573 (= e!1632520 (isBalanced!2834 (fromList!562 (_1!17402 lt!909270))))))

(assert (= (and d!733010 res!1088140) b!2587573))

(declare-fun m!2924063 () Bool)

(assert (=> d!733010 m!2924063))

(declare-fun m!2924065 () Bool)

(assert (=> d!733010 m!2924065))

(assert (=> b!2587573 m!2924065))

(assert (=> b!2587573 m!2924065))

(declare-fun m!2924067 () Bool)

(assert (=> b!2587573 m!2924067))

(assert (=> d!732486 d!733010))

(declare-fun b!2587574 () Bool)

(declare-fun e!1632521 () List!29865)

(assert (=> b!2587574 (= e!1632521 (_2!17401 (get!9380 lt!909429)))))

(declare-fun d!733012 () Bool)

(declare-fun e!1632522 () Bool)

(assert (=> d!733012 e!1632522))

(declare-fun res!1088141 () Bool)

(assert (=> d!733012 (=> (not res!1088141) (not e!1632522))))

(declare-fun lt!909914 () List!29865)

(assert (=> d!733012 (= res!1088141 (= (content!4114 lt!909914) ((_ map or) (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (content!4114 (_2!17401 (get!9380 lt!909429))))))))

(assert (=> d!733012 (= lt!909914 e!1632521)))

(declare-fun c!417262 () Bool)

(assert (=> d!733012 (= c!417262 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))))))

(assert (=> d!733012 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))) (_2!17401 (get!9380 lt!909429))) lt!909914)))

(declare-fun b!2587575 () Bool)

(assert (=> b!2587575 (= e!1632521 (Cons!29765 (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (_2!17401 (get!9380 lt!909429)))))))

(declare-fun b!2587576 () Bool)

(declare-fun res!1088142 () Bool)

(assert (=> b!2587576 (=> (not res!1088142) (not e!1632522))))

(assert (=> b!2587576 (= res!1088142 (= (size!23078 lt!909914) (+ (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429))))) (size!23078 (_2!17401 (get!9380 lt!909429))))))))

(declare-fun b!2587577 () Bool)

(assert (=> b!2587577 (= e!1632522 (or (not (= (_2!17401 (get!9380 lt!909429)) Nil!29765)) (= lt!909914 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909429)))))))))

(assert (= (and d!733012 c!417262) b!2587574))

(assert (= (and d!733012 (not c!417262)) b!2587575))

(assert (= (and d!733012 res!1088141) b!2587576))

(assert (= (and b!2587576 res!1088142) b!2587577))

(declare-fun m!2924071 () Bool)

(assert (=> d!733012 m!2924071))

(assert (=> d!733012 m!2922271))

(declare-fun m!2924073 () Bool)

(assert (=> d!733012 m!2924073))

(declare-fun m!2924075 () Bool)

(assert (=> d!733012 m!2924075))

(declare-fun m!2924077 () Bool)

(assert (=> b!2587575 m!2924077))

(declare-fun m!2924079 () Bool)

(assert (=> b!2587576 m!2924079))

(assert (=> b!2587576 m!2922271))

(declare-fun m!2924081 () Bool)

(assert (=> b!2587576 m!2924081))

(assert (=> b!2587576 m!2922251))

(assert (=> b!2586105 d!733012))

(assert (=> b!2586105 d!732900))

(assert (=> b!2586105 d!732902))

(assert (=> b!2586105 d!732706))

(assert (=> d!732248 d!732246))

(declare-fun d!733016 () Bool)

(assert (=> d!733016 (isPrefix!2421 input!3654 input!3654)))

(assert (=> d!733016 true))

(declare-fun _$45!1577 () Unit!43600)

(assert (=> d!733016 (= (choose!15242 input!3654 input!3654) _$45!1577)))

(declare-fun bs!471902 () Bool)

(assert (= bs!471902 d!733016))

(assert (=> bs!471902 m!2922089))

(assert (=> d!732248 d!733016))

(assert (=> bm!167009 d!732246))

(declare-fun d!733018 () Bool)

(assert (=> d!733018 (= (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 rules!4580))))) (= (mod (str.len (value!146095 (tag!5011 (h!35186 (t!212231 (t!212231 rules!4580)))))) 2) 0))))

(assert (=> b!2586754 d!733018))

(declare-fun d!733020 () Bool)

(declare-fun res!1088148 () Bool)

(declare-fun e!1632530 () Bool)

(assert (=> d!733020 (=> (not res!1088148) (not e!1632530))))

(assert (=> d!733020 (= res!1088148 (semiInverseModEq!1889 (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))))))

(assert (=> d!733020 (= (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) e!1632530)))

(declare-fun b!2587587 () Bool)

(assert (=> b!2587587 (= e!1632530 (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))))))

(assert (= (and d!733020 res!1088148) b!2587587))

(declare-fun m!2924089 () Bool)

(assert (=> d!733020 m!2924089))

(declare-fun m!2924091 () Bool)

(assert (=> b!2587587 m!2924091))

(assert (=> b!2586754 d!733020))

(declare-fun d!733024 () Bool)

(declare-fun lt!909915 () Int)

(assert (=> d!733024 (>= lt!909915 0)))

(declare-fun e!1632531 () Int)

(assert (=> d!733024 (= lt!909915 e!1632531)))

(declare-fun c!417266 () Bool)

(assert (=> d!733024 (= c!417266 ((_ is Nil!29765) (t!212230 (t!212230 lt!909246))))))

(assert (=> d!733024 (= (size!23078 (t!212230 (t!212230 lt!909246))) lt!909915)))

(declare-fun b!2587588 () Bool)

(assert (=> b!2587588 (= e!1632531 0)))

(declare-fun b!2587589 () Bool)

(assert (=> b!2587589 (= e!1632531 (+ 1 (size!23078 (t!212230 (t!212230 (t!212230 lt!909246))))))))

(assert (= (and d!733024 c!417266) b!2587588))

(assert (= (and d!733024 (not c!417266)) b!2587589))

(declare-fun m!2924093 () Bool)

(assert (=> b!2587589 m!2924093))

(assert (=> b!2586680 d!733024))

(declare-fun b!2587600 () Bool)

(declare-fun e!1632537 () List!29865)

(assert (=> b!2587600 (= e!1632537 suffix!1684)))

(declare-fun d!733026 () Bool)

(declare-fun e!1632538 () Bool)

(assert (=> d!733026 e!1632538))

(declare-fun res!1088149 () Bool)

(assert (=> d!733026 (=> (not res!1088149) (not e!1632538))))

(declare-fun lt!909917 () List!29865)

(assert (=> d!733026 (= res!1088149 (= (content!4114 lt!909917) ((_ map or) (content!4114 (t!212230 (t!212230 lt!909247))) (content!4114 suffix!1684))))))

(assert (=> d!733026 (= lt!909917 e!1632537)))

(declare-fun c!417271 () Bool)

(assert (=> d!733026 (= c!417271 ((_ is Nil!29765) (t!212230 (t!212230 lt!909247))))))

(assert (=> d!733026 (= (++!7311 (t!212230 (t!212230 lt!909247)) suffix!1684) lt!909917)))

(declare-fun b!2587601 () Bool)

(assert (=> b!2587601 (= e!1632537 (Cons!29765 (h!35185 (t!212230 (t!212230 lt!909247))) (++!7311 (t!212230 (t!212230 (t!212230 lt!909247))) suffix!1684)))))

(declare-fun b!2587602 () Bool)

(declare-fun res!1088150 () Bool)

(assert (=> b!2587602 (=> (not res!1088150) (not e!1632538))))

(assert (=> b!2587602 (= res!1088150 (= (size!23078 lt!909917) (+ (size!23078 (t!212230 (t!212230 lt!909247))) (size!23078 suffix!1684))))))

(declare-fun b!2587603 () Bool)

(assert (=> b!2587603 (= e!1632538 (or (not (= suffix!1684 Nil!29765)) (= lt!909917 (t!212230 (t!212230 lt!909247)))))))

(assert (= (and d!733026 c!417271) b!2587600))

(assert (= (and d!733026 (not c!417271)) b!2587601))

(assert (= (and d!733026 res!1088149) b!2587602))

(assert (= (and b!2587602 res!1088150) b!2587603))

(declare-fun m!2924095 () Bool)

(assert (=> d!733026 m!2924095))

(declare-fun m!2924097 () Bool)

(assert (=> d!733026 m!2924097))

(assert (=> d!733026 m!2921949))

(declare-fun m!2924099 () Bool)

(assert (=> b!2587601 m!2924099))

(declare-fun m!2924101 () Bool)

(assert (=> b!2587602 m!2924101))

(assert (=> b!2587602 m!2923453))

(assert (=> b!2587602 m!2921957))

(assert (=> b!2586621 d!733026))

(declare-fun d!733028 () Bool)

(declare-fun c!417274 () Bool)

(assert (=> d!733028 (= c!417274 ((_ is Nil!29765) lt!909410))))

(declare-fun e!1632541 () Int)

(assert (=> d!733028 (= (sizeTr!139 lt!909410 lt!909417) e!1632541)))

(declare-fun b!2587608 () Bool)

(assert (=> b!2587608 (= e!1632541 lt!909417)))

(declare-fun b!2587609 () Bool)

(assert (=> b!2587609 (= e!1632541 (sizeTr!139 (t!212230 lt!909410) (+ lt!909417 1)))))

(assert (= (and d!733028 c!417274) b!2587608))

(assert (= (and d!733028 (not c!417274)) b!2587609))

(declare-fun m!2924109 () Bool)

(assert (=> b!2587609 m!2924109))

(assert (=> d!732212 d!733028))

(assert (=> d!732212 d!732242))

(declare-fun d!733032 () Bool)

(declare-fun c!417275 () Bool)

(assert (=> d!733032 (= c!417275 ((_ is Nil!29765) input!3654))))

(declare-fun e!1632542 () Int)

(assert (=> d!733032 (= (sizeTr!139 input!3654 0) e!1632542)))

(declare-fun b!2587610 () Bool)

(assert (=> b!2587610 (= e!1632542 0)))

(declare-fun b!2587611 () Bool)

(assert (=> b!2587611 (= e!1632542 (sizeTr!139 (t!212230 input!3654) (+ 0 1)))))

(assert (= (and d!733032 c!417275) b!2587610))

(assert (= (and d!733032 (not c!417275)) b!2587611))

(declare-fun m!2924111 () Bool)

(assert (=> b!2587611 m!2924111))

(assert (=> d!732212 d!733032))

(declare-fun d!733034 () Bool)

(declare-fun lt!909918 () Int)

(assert (=> d!733034 (>= lt!909918 0)))

(declare-fun e!1632543 () Int)

(assert (=> d!733034 (= lt!909918 e!1632543)))

(declare-fun c!417276 () Bool)

(assert (=> d!733034 (= c!417276 ((_ is Nil!29765) lt!909410))))

(assert (=> d!733034 (= (size!23078 lt!909410) lt!909918)))

(declare-fun b!2587612 () Bool)

(assert (=> b!2587612 (= e!1632543 0)))

(declare-fun b!2587613 () Bool)

(assert (=> b!2587613 (= e!1632543 (+ 1 (size!23078 (t!212230 lt!909410))))))

(assert (= (and d!733034 c!417276) b!2587612))

(assert (= (and d!733034 (not c!417276)) b!2587613))

(declare-fun m!2924113 () Bool)

(assert (=> b!2587613 m!2924113))

(assert (=> d!732212 d!733034))

(assert (=> d!732212 d!732498))

(declare-fun d!733036 () Bool)

(assert (=> d!733036 (= (sizeTr!139 lt!909410 lt!909417) (+ (size!23078 lt!909410) lt!909417))))

(declare-fun lt!909921 () Unit!43600)

(declare-fun choose!15264 (List!29865 Int) Unit!43600)

(assert (=> d!733036 (= lt!909921 (choose!15264 lt!909410 lt!909417))))

(assert (=> d!733036 (= (lemmaSizeTrEqualsSize!138 lt!909410 lt!909417) lt!909921)))

(declare-fun bs!471904 () Bool)

(assert (= bs!471904 d!733036))

(assert (=> bs!471904 m!2922185))

(assert (=> bs!471904 m!2922199))

(declare-fun m!2924121 () Bool)

(assert (=> bs!471904 m!2924121))

(assert (=> d!732212 d!733036))

(declare-fun d!733042 () Bool)

(assert (=> d!733042 (= (sizeTr!139 input!3654 lt!909414) (+ (size!23078 input!3654) lt!909414))))

(declare-fun lt!909922 () Unit!43600)

(assert (=> d!733042 (= lt!909922 (choose!15264 input!3654 lt!909414))))

(assert (=> d!733042 (= (lemmaSizeTrEqualsSize!138 input!3654 lt!909414) lt!909922)))

(declare-fun bs!471905 () Bool)

(assert (= bs!471905 d!733042))

(assert (=> bs!471905 m!2922187))

(assert (=> bs!471905 m!2921793))

(declare-fun m!2924123 () Bool)

(assert (=> bs!471905 m!2924123))

(assert (=> d!732212 d!733042))

(declare-fun d!733046 () Bool)

(declare-fun c!417280 () Bool)

(assert (=> d!733046 (= c!417280 ((_ is Nil!29765) input!3654))))

(declare-fun e!1632553 () Int)

(assert (=> d!733046 (= (sizeTr!139 input!3654 lt!909414) e!1632553)))

(declare-fun b!2587626 () Bool)

(assert (=> b!2587626 (= e!1632553 lt!909414)))

(declare-fun b!2587627 () Bool)

(assert (=> b!2587627 (= e!1632553 (sizeTr!139 (t!212230 input!3654) (+ lt!909414 1)))))

(assert (= (and d!733046 c!417280) b!2587626))

(assert (= (and d!733046 (not c!417280)) b!2587627))

(declare-fun m!2924125 () Bool)

(assert (=> b!2587627 m!2924125))

(assert (=> d!732212 d!733046))

(declare-fun b!2587629 () Bool)

(declare-fun e!1632560 () tuple2!29720)

(declare-fun e!1632555 () tuple2!29720)

(assert (=> b!2587629 (= e!1632560 e!1632555)))

(declare-fun lt!909940 () tuple2!29720)

(declare-fun call!167173 () tuple2!29720)

(assert (=> b!2587629 (= lt!909940 call!167173)))

(declare-fun c!417283 () Bool)

(assert (=> b!2587629 (= c!417283 (isEmpty!17110 (_1!17402 lt!909940)))))

(declare-fun b!2587630 () Bool)

(declare-fun e!1632561 () tuple2!29720)

(assert (=> b!2587630 (= e!1632561 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587631 () Bool)

(declare-fun c!417285 () Bool)

(declare-fun call!167180 () Bool)

(assert (=> b!2587631 (= c!417285 call!167180)))

(declare-fun lt!909931 () Unit!43600)

(declare-fun lt!909944 () Unit!43600)

(assert (=> b!2587631 (= lt!909931 lt!909944)))

(assert (=> b!2587631 (= input!3654 Nil!29765)))

(declare-fun call!167174 () Unit!43600)

(assert (=> b!2587631 (= lt!909944 call!167174)))

(declare-fun lt!909930 () Unit!43600)

(declare-fun lt!909937 () Unit!43600)

(assert (=> b!2587631 (= lt!909930 lt!909937)))

(declare-fun call!167177 () Bool)

(assert (=> b!2587631 call!167177))

(declare-fun call!167175 () Unit!43600)

(assert (=> b!2587631 (= lt!909937 call!167175)))

(declare-fun e!1632559 () tuple2!29720)

(declare-fun e!1632556 () tuple2!29720)

(assert (=> b!2587631 (= e!1632559 e!1632556)))

(declare-fun b!2587632 () Bool)

(declare-fun e!1632557 () Unit!43600)

(declare-fun Unit!43629 () Unit!43600)

(assert (=> b!2587632 (= e!1632557 Unit!43629)))

(declare-fun b!2587633 () Bool)

(assert (=> b!2587633 (= e!1632560 call!167173)))

(declare-fun bm!167168 () Bool)

(assert (=> bm!167168 (= call!167180 (nullable!2570 (regex!4521 rule!570)))))

(declare-fun bm!167169 () Bool)

(declare-fun call!167178 () C!15488)

(assert (=> bm!167169 (= call!167178 (head!5862 input!3654))))

(declare-fun lt!909929 () List!29865)

(declare-fun bm!167170 () Bool)

(declare-fun call!167179 () Regex!7665)

(declare-fun call!167176 () List!29865)

(assert (=> bm!167170 (= call!167173 (findLongestMatchInner!756 call!167179 lt!909929 (+ 0 1) call!167176 input!3654 (sizeTr!139 input!3654 0)))))

(declare-fun bm!167171 () Bool)

(assert (=> bm!167171 (= call!167177 (isPrefix!2421 input!3654 input!3654))))

(declare-fun bm!167172 () Bool)

(assert (=> bm!167172 (= call!167179 (derivativeStep!2222 (regex!4521 rule!570) call!167178))))

(declare-fun b!2587634 () Bool)

(declare-fun e!1632554 () Bool)

(declare-fun lt!909928 () tuple2!29720)

(assert (=> b!2587634 (= e!1632554 (>= (size!23078 (_1!17402 lt!909928)) (size!23078 Nil!29765)))))

(declare-fun bm!167173 () Bool)

(assert (=> bm!167173 (= call!167175 (lemmaIsPrefixRefl!1547 input!3654 input!3654))))

(declare-fun b!2587635 () Bool)

(declare-fun Unit!43630 () Unit!43600)

(assert (=> b!2587635 (= e!1632557 Unit!43630)))

(declare-fun lt!909938 () Unit!43600)

(assert (=> b!2587635 (= lt!909938 call!167175)))

(assert (=> b!2587635 call!167177))

(declare-fun lt!909941 () Unit!43600)

(assert (=> b!2587635 (= lt!909941 lt!909938)))

(declare-fun lt!909925 () Unit!43600)

(assert (=> b!2587635 (= lt!909925 call!167174)))

(assert (=> b!2587635 (= input!3654 Nil!29765)))

(declare-fun lt!909935 () Unit!43600)

(assert (=> b!2587635 (= lt!909935 lt!909925)))

(assert (=> b!2587635 false))

(declare-fun b!2587628 () Bool)

(assert (=> b!2587628 (= e!1632555 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun d!733048 () Bool)

(declare-fun e!1632558 () Bool)

(assert (=> d!733048 e!1632558))

(declare-fun res!1088157 () Bool)

(assert (=> d!733048 (=> (not res!1088157) (not e!1632558))))

(assert (=> d!733048 (= res!1088157 (= (++!7311 (_1!17402 lt!909928) (_2!17402 lt!909928)) input!3654))))

(assert (=> d!733048 (= lt!909928 e!1632561)))

(declare-fun c!417284 () Bool)

(assert (=> d!733048 (= c!417284 (lostCause!697 (regex!4521 rule!570)))))

(declare-fun lt!909936 () Unit!43600)

(declare-fun Unit!43631 () Unit!43600)

(assert (=> d!733048 (= lt!909936 Unit!43631)))

(assert (=> d!733048 (= (getSuffix!1185 input!3654 Nil!29765) input!3654)))

(declare-fun lt!909939 () Unit!43600)

(declare-fun lt!909923 () Unit!43600)

(assert (=> d!733048 (= lt!909939 lt!909923)))

(declare-fun lt!909942 () List!29865)

(assert (=> d!733048 (= input!3654 lt!909942)))

(assert (=> d!733048 (= lt!909923 (lemmaSamePrefixThenSameSuffix!1087 Nil!29765 input!3654 Nil!29765 lt!909942 input!3654))))

(assert (=> d!733048 (= lt!909942 (getSuffix!1185 input!3654 Nil!29765))))

(declare-fun lt!909943 () Unit!43600)

(declare-fun lt!909950 () Unit!43600)

(assert (=> d!733048 (= lt!909943 lt!909950)))

(assert (=> d!733048 (isPrefix!2421 Nil!29765 (++!7311 Nil!29765 input!3654))))

(assert (=> d!733048 (= lt!909950 (lemmaConcatTwoListThenFirstIsPrefix!1599 Nil!29765 input!3654))))

(assert (=> d!733048 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!733048 (= (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 0 input!3654 input!3654 (sizeTr!139 input!3654 0)) lt!909928)))

(declare-fun b!2587636 () Bool)

(assert (=> b!2587636 (= e!1632561 e!1632559)))

(declare-fun c!417286 () Bool)

(assert (=> b!2587636 (= c!417286 (= 0 (sizeTr!139 input!3654 0)))))

(declare-fun bm!167174 () Bool)

(assert (=> bm!167174 (= call!167176 (tail!4135 input!3654))))

(declare-fun b!2587637 () Bool)

(declare-fun c!417281 () Bool)

(assert (=> b!2587637 (= c!417281 call!167180)))

(declare-fun lt!909947 () Unit!43600)

(declare-fun lt!909945 () Unit!43600)

(assert (=> b!2587637 (= lt!909947 lt!909945)))

(declare-fun lt!909933 () C!15488)

(declare-fun lt!909949 () List!29865)

(assert (=> b!2587637 (= (++!7311 (++!7311 Nil!29765 (Cons!29765 lt!909933 Nil!29765)) lt!909949) input!3654)))

(assert (=> b!2587637 (= lt!909945 (lemmaMoveElementToOtherListKeepsConcatEq!816 Nil!29765 lt!909933 lt!909949 input!3654))))

(assert (=> b!2587637 (= lt!909949 (tail!4135 input!3654))))

(assert (=> b!2587637 (= lt!909933 (head!5862 input!3654))))

(declare-fun lt!909926 () Unit!43600)

(declare-fun lt!909932 () Unit!43600)

(assert (=> b!2587637 (= lt!909926 lt!909932)))

(assert (=> b!2587637 (isPrefix!2421 (++!7311 Nil!29765 (Cons!29765 (head!5862 (getSuffix!1185 input!3654 Nil!29765)) Nil!29765)) input!3654)))

(assert (=> b!2587637 (= lt!909932 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(declare-fun lt!909934 () Unit!43600)

(declare-fun lt!909946 () Unit!43600)

(assert (=> b!2587637 (= lt!909934 lt!909946)))

(assert (=> b!2587637 (= lt!909946 (lemmaAddHeadSuffixToPrefixStillPrefix!404 Nil!29765 input!3654))))

(assert (=> b!2587637 (= lt!909929 (++!7311 Nil!29765 (Cons!29765 (head!5862 input!3654) Nil!29765)))))

(declare-fun lt!909927 () Unit!43600)

(assert (=> b!2587637 (= lt!909927 e!1632557)))

(declare-fun c!417282 () Bool)

(assert (=> b!2587637 (= c!417282 (= (size!23078 Nil!29765) (size!23078 input!3654)))))

(declare-fun lt!909948 () Unit!43600)

(declare-fun lt!909924 () Unit!43600)

(assert (=> b!2587637 (= lt!909948 lt!909924)))

(assert (=> b!2587637 (<= (size!23078 Nil!29765) (size!23078 input!3654))))

(assert (=> b!2587637 (= lt!909924 (lemmaIsPrefixThenSmallerEqSize!207 Nil!29765 input!3654))))

(assert (=> b!2587637 (= e!1632559 e!1632560)))

(declare-fun b!2587638 () Bool)

(assert (=> b!2587638 (= e!1632558 e!1632554)))

(declare-fun res!1088158 () Bool)

(assert (=> b!2587638 (=> res!1088158 e!1632554)))

(assert (=> b!2587638 (= res!1088158 (isEmpty!17110 (_1!17402 lt!909928)))))

(declare-fun b!2587639 () Bool)

(assert (=> b!2587639 (= e!1632556 (tuple2!29721 Nil!29765 input!3654))))

(declare-fun b!2587640 () Bool)

(assert (=> b!2587640 (= e!1632556 (tuple2!29721 Nil!29765 Nil!29765))))

(declare-fun b!2587641 () Bool)

(assert (=> b!2587641 (= e!1632555 lt!909940)))

(declare-fun bm!167175 () Bool)

(assert (=> bm!167175 (= call!167174 (lemmaIsPrefixSameLengthThenSameList!406 input!3654 Nil!29765 input!3654))))

(assert (= (and d!733048 c!417284) b!2587630))

(assert (= (and d!733048 (not c!417284)) b!2587636))

(assert (= (and b!2587636 c!417286) b!2587631))

(assert (= (and b!2587636 (not c!417286)) b!2587637))

(assert (= (and b!2587631 c!417285) b!2587640))

(assert (= (and b!2587631 (not c!417285)) b!2587639))

(assert (= (and b!2587637 c!417282) b!2587635))

(assert (= (and b!2587637 (not c!417282)) b!2587632))

(assert (= (and b!2587637 c!417281) b!2587629))

(assert (= (and b!2587637 (not c!417281)) b!2587633))

(assert (= (and b!2587629 c!417283) b!2587628))

(assert (= (and b!2587629 (not c!417283)) b!2587641))

(assert (= (or b!2587629 b!2587633) bm!167174))

(assert (= (or b!2587629 b!2587633) bm!167169))

(assert (= (or b!2587629 b!2587633) bm!167172))

(assert (= (or b!2587629 b!2587633) bm!167170))

(assert (= (or b!2587631 b!2587635) bm!167171))

(assert (= (or b!2587631 b!2587637) bm!167168))

(assert (= (or b!2587631 b!2587635) bm!167175))

(assert (= (or b!2587631 b!2587635) bm!167173))

(assert (= (and d!733048 res!1088157) b!2587638))

(assert (= (and b!2587638 (not res!1088158)) b!2587634))

(assert (=> bm!167174 m!2922307))

(assert (=> b!2587637 m!2921801))

(assert (=> b!2587637 m!2922627))

(assert (=> b!2587637 m!2922629))

(assert (=> b!2587637 m!2921793))

(assert (=> b!2587637 m!2922631))

(assert (=> b!2587637 m!2922307))

(declare-fun m!2924133 () Bool)

(assert (=> b!2587637 m!2924133))

(assert (=> b!2587637 m!2922635))

(assert (=> b!2587637 m!2922637))

(assert (=> b!2587637 m!2922305))

(assert (=> b!2587637 m!2922627))

(assert (=> b!2587637 m!2922639))

(assert (=> b!2587637 m!2924133))

(declare-fun m!2924135 () Bool)

(assert (=> b!2587637 m!2924135))

(declare-fun m!2924137 () Bool)

(assert (=> b!2587637 m!2924137))

(assert (=> b!2587637 m!2922637))

(assert (=> b!2587637 m!2922647))

(assert (=> bm!167171 m!2922089))

(declare-fun m!2924139 () Bool)

(assert (=> b!2587638 m!2924139))

(assert (=> bm!167170 m!2922189))

(declare-fun m!2924141 () Bool)

(assert (=> bm!167170 m!2924141))

(declare-fun m!2924143 () Bool)

(assert (=> bm!167172 m!2924143))

(assert (=> bm!167175 m!2922655))

(assert (=> d!733048 m!2922657))

(assert (=> d!733048 m!2921939))

(assert (=> d!733048 m!2922659))

(declare-fun m!2924147 () Bool)

(assert (=> d!733048 m!2924147))

(assert (=> d!733048 m!2922663))

(declare-fun m!2924149 () Bool)

(assert (=> d!733048 m!2924149))

(assert (=> d!733048 m!2922637))

(assert (=> d!733048 m!2922657))

(assert (=> d!733048 m!2922667))

(assert (=> bm!167168 m!2921941))

(assert (=> bm!167173 m!2922091))

(declare-fun m!2924151 () Bool)

(assert (=> b!2587634 m!2924151))

(assert (=> b!2587634 m!2921801))

(assert (=> bm!167169 m!2922305))

(declare-fun m!2924155 () Bool)

(assert (=> b!2587629 m!2924155))

(assert (=> d!732212 d!733048))

(declare-fun b!2587646 () Bool)

(declare-fun e!1632565 () List!29865)

(assert (=> b!2587646 (= e!1632565 (_2!17402 lt!909415))))

(declare-fun d!733052 () Bool)

(declare-fun e!1632566 () Bool)

(assert (=> d!733052 e!1632566))

(declare-fun res!1088163 () Bool)

(assert (=> d!733052 (=> (not res!1088163) (not e!1632566))))

(declare-fun lt!909952 () List!29865)

(assert (=> d!733052 (= res!1088163 (= (content!4114 lt!909952) ((_ map or) (content!4114 (_1!17402 lt!909415)) (content!4114 (_2!17402 lt!909415)))))))

(assert (=> d!733052 (= lt!909952 e!1632565)))

(declare-fun c!417287 () Bool)

(assert (=> d!733052 (= c!417287 ((_ is Nil!29765) (_1!17402 lt!909415)))))

(assert (=> d!733052 (= (++!7311 (_1!17402 lt!909415) (_2!17402 lt!909415)) lt!909952)))

(declare-fun b!2587647 () Bool)

(assert (=> b!2587647 (= e!1632565 (Cons!29765 (h!35185 (_1!17402 lt!909415)) (++!7311 (t!212230 (_1!17402 lt!909415)) (_2!17402 lt!909415))))))

(declare-fun b!2587648 () Bool)

(declare-fun res!1088164 () Bool)

(assert (=> b!2587648 (=> (not res!1088164) (not e!1632566))))

(assert (=> b!2587648 (= res!1088164 (= (size!23078 lt!909952) (+ (size!23078 (_1!17402 lt!909415)) (size!23078 (_2!17402 lt!909415)))))))

(declare-fun b!2587649 () Bool)

(assert (=> b!2587649 (= e!1632566 (or (not (= (_2!17402 lt!909415) Nil!29765)) (= lt!909952 (_1!17402 lt!909415))))))

(assert (= (and d!733052 c!417287) b!2587646))

(assert (= (and d!733052 (not c!417287)) b!2587647))

(assert (= (and d!733052 res!1088163) b!2587648))

(assert (= (and b!2587648 res!1088164) b!2587649))

(declare-fun m!2924161 () Bool)

(assert (=> d!733052 m!2924161))

(declare-fun m!2924163 () Bool)

(assert (=> d!733052 m!2924163))

(declare-fun m!2924165 () Bool)

(assert (=> d!733052 m!2924165))

(declare-fun m!2924167 () Bool)

(assert (=> b!2587647 m!2924167))

(declare-fun m!2924169 () Bool)

(assert (=> b!2587648 m!2924169))

(declare-fun m!2924171 () Bool)

(assert (=> b!2587648 m!2924171))

(declare-fun m!2924173 () Bool)

(assert (=> b!2587648 m!2924173))

(assert (=> d!732212 d!733052))

(declare-fun d!733056 () Bool)

(declare-fun c!417289 () Bool)

(assert (=> d!733056 (= c!417289 ((_ is Nil!29765) (t!212230 lt!909247)))))

(declare-fun e!1632569 () (InoxSet C!15488))

(assert (=> d!733056 (= (content!4114 (t!212230 lt!909247)) e!1632569)))

(declare-fun b!2587654 () Bool)

(assert (=> b!2587654 (= e!1632569 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587655 () Bool)

(assert (=> b!2587655 (= e!1632569 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (t!212230 lt!909247)) true) (content!4114 (t!212230 (t!212230 lt!909247)))))))

(assert (= (and d!733056 c!417289) b!2587654))

(assert (= (and d!733056 (not c!417289)) b!2587655))

(declare-fun m!2924175 () Bool)

(assert (=> b!2587655 m!2924175))

(assert (=> b!2587655 m!2924097))

(assert (=> b!2586641 d!733056))

(declare-fun d!733058 () Bool)

(declare-fun choose!644 (List!29864) Int)

(assert (=> d!733058 (= (charsToBigInt!1 (text!33649 (value!146096 token!562))) (choose!644 (text!33649 (value!146096 token!562))))))

(declare-fun bs!471906 () Bool)

(assert (= bs!471906 d!733058))

(declare-fun m!2924181 () Bool)

(assert (=> bs!471906 m!2924181))

(assert (=> d!732258 d!733058))

(declare-fun d!733060 () Bool)

(assert (=> d!733060 (= (Forall2!767 lambda!95832) (choose!15251 lambda!95832))))

(declare-fun bs!471907 () Bool)

(assert (= bs!471907 d!733060))

(declare-fun m!2924189 () Bool)

(assert (=> bs!471907 m!2924189))

(assert (=> d!732484 d!733060))

(declare-fun d!733062 () Bool)

(assert (=> d!733062 (= (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))) (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun bs!471908 () Bool)

(assert (= bs!471908 d!733062))

(declare-fun m!2924195 () Bool)

(assert (=> bs!471908 m!2924195))

(assert (=> b!2586096 d!733062))

(declare-fun d!733066 () Bool)

(declare-fun lt!909954 () BalanceConc!18188)

(assert (=> d!733066 (= (list!11253 lt!909954) (originalCharacters!5287 (_1!17401 (get!9380 lt!909425))))))

(assert (=> d!733066 (= lt!909954 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))) (value!146096 (_1!17401 (get!9380 lt!909425)))))))

(assert (=> d!733066 (= (charsOf!2850 (_1!17401 (get!9380 lt!909425))) lt!909954)))

(declare-fun b_lambda!76929 () Bool)

(assert (=> (not b_lambda!76929) (not d!733066)))

(declare-fun t!212626 () Bool)

(declare-fun tb!141225 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212626) tb!141225))

(declare-fun b!2587660 () Bool)

(declare-fun e!1632572 () Bool)

(declare-fun tp!821244 () Bool)

(assert (=> b!2587660 (= e!1632572 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))) (value!146096 (_1!17401 (get!9380 lt!909425)))))) tp!821244))))

(declare-fun result!175512 () Bool)

(assert (=> tb!141225 (= result!175512 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))) (value!146096 (_1!17401 (get!9380 lt!909425))))) e!1632572))))

(assert (= tb!141225 b!2587660))

(declare-fun m!2924197 () Bool)

(assert (=> b!2587660 m!2924197))

(declare-fun m!2924199 () Bool)

(assert (=> tb!141225 m!2924199))

(assert (=> d!733066 t!212626))

(declare-fun b_and!189915 () Bool)

(assert (= b_and!189853 (and (=> t!212626 result!175512) b_and!189915)))

(declare-fun tb!141227 () Bool)

(declare-fun t!212628 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212628) tb!141227))

(declare-fun result!175514 () Bool)

(assert (= result!175514 result!175512))

(assert (=> d!733066 t!212628))

(declare-fun b_and!189917 () Bool)

(assert (= b_and!189857 (and (=> t!212628 result!175514) b_and!189917)))

(declare-fun tb!141229 () Bool)

(declare-fun t!212630 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212630) tb!141229))

(declare-fun result!175516 () Bool)

(assert (= result!175516 result!175512))

(assert (=> d!733066 t!212630))

(declare-fun b_and!189919 () Bool)

(assert (= b_and!189855 (and (=> t!212630 result!175516) b_and!189919)))

(declare-fun t!212632 () Bool)

(declare-fun tb!141231 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212632) tb!141231))

(declare-fun result!175518 () Bool)

(assert (= result!175518 result!175512))

(assert (=> d!733066 t!212632))

(declare-fun b_and!189921 () Bool)

(assert (= b_and!189851 (and (=> t!212632 result!175518) b_and!189921)))

(declare-fun t!212634 () Bool)

(declare-fun tb!141233 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212634) tb!141233))

(declare-fun result!175520 () Bool)

(assert (= result!175520 result!175512))

(assert (=> d!733066 t!212634))

(declare-fun b_and!189923 () Bool)

(assert (= b_and!189861 (and (=> t!212634 result!175520) b_and!189923)))

(declare-fun t!212636 () Bool)

(declare-fun tb!141235 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212636) tb!141235))

(declare-fun result!175522 () Bool)

(assert (= result!175522 result!175512))

(assert (=> d!733066 t!212636))

(declare-fun b_and!189925 () Bool)

(assert (= b_and!189865 (and (=> t!212636 result!175522) b_and!189925)))

(declare-fun tb!141237 () Bool)

(declare-fun t!212638 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212638) tb!141237))

(declare-fun result!175524 () Bool)

(assert (= result!175524 result!175512))

(assert (=> d!733066 t!212638))

(declare-fun b_and!189927 () Bool)

(assert (= b_and!189863 (and (=> t!212638 result!175524) b_and!189927)))

(declare-fun t!212640 () Bool)

(declare-fun tb!141239 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212640) tb!141239))

(declare-fun result!175526 () Bool)

(assert (= result!175526 result!175512))

(assert (=> d!733066 t!212640))

(declare-fun b_and!189929 () Bool)

(assert (= b_and!189859 (and (=> t!212640 result!175526) b_and!189929)))

(declare-fun m!2924213 () Bool)

(assert (=> d!733066 m!2924213))

(declare-fun m!2924215 () Bool)

(assert (=> d!733066 m!2924215))

(assert (=> b!2586096 d!733066))

(assert (=> b!2586096 d!732670))

(declare-fun b!2587662 () Bool)

(declare-fun e!1632573 () List!29865)

(declare-fun e!1632574 () List!29865)

(assert (=> b!2587662 (= e!1632573 e!1632574)))

(declare-fun c!417292 () Bool)

(assert (=> b!2587662 (= c!417292 ((_ is Leaf!14169) (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun d!733072 () Bool)

(declare-fun c!417291 () Bool)

(assert (=> d!733072 (= c!417291 ((_ is Empty!9287) (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!733072 (= (list!11254 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) e!1632573)))

(declare-fun b!2587663 () Bool)

(assert (=> b!2587663 (= e!1632574 (list!11256 (xs!12271 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587661 () Bool)

(assert (=> b!2587661 (= e!1632573 Nil!29765)))

(declare-fun b!2587664 () Bool)

(assert (=> b!2587664 (= e!1632574 (++!7311 (list!11254 (left!22688 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (list!11254 (right!23018 (c!416819 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(assert (= (and d!733072 c!417291) b!2587661))

(assert (= (and d!733072 (not c!417291)) b!2587662))

(assert (= (and b!2587662 c!417292) b!2587663))

(assert (= (and b!2587662 (not c!417292)) b!2587664))

(declare-fun m!2924217 () Bool)

(assert (=> b!2587663 m!2924217))

(declare-fun m!2924219 () Bool)

(assert (=> b!2587664 m!2924219))

(declare-fun m!2924221 () Bool)

(assert (=> b!2587664 m!2924221))

(assert (=> b!2587664 m!2924219))

(assert (=> b!2587664 m!2924221))

(declare-fun m!2924223 () Bool)

(assert (=> b!2587664 m!2924223))

(assert (=> d!732418 d!733072))

(assert (=> b!2586568 d!732326))

(assert (=> b!2586568 d!732328))

(assert (=> b!2586568 d!732410))

(assert (=> b!2586568 d!732242))

(declare-fun d!733074 () Bool)

(declare-fun lt!909956 () Int)

(assert (=> d!733074 (>= lt!909956 0)))

(declare-fun e!1632575 () Int)

(assert (=> d!733074 (= lt!909956 e!1632575)))

(declare-fun c!417293 () Bool)

(assert (=> d!733074 (= c!417293 ((_ is Nil!29765) (t!212230 lt!909343)))))

(assert (=> d!733074 (= (size!23078 (t!212230 lt!909343)) lt!909956)))

(declare-fun b!2587665 () Bool)

(assert (=> b!2587665 (= e!1632575 0)))

(declare-fun b!2587666 () Bool)

(assert (=> b!2587666 (= e!1632575 (+ 1 (size!23078 (t!212230 (t!212230 lt!909343)))))))

(assert (= (and d!733074 c!417293) b!2587665))

(assert (= (and d!733074 (not c!417293)) b!2587666))

(declare-fun m!2924225 () Bool)

(assert (=> b!2587666 m!2924225))

(assert (=> b!2586137 d!733074))

(declare-fun d!733076 () Bool)

(declare-fun c!417294 () Bool)

(assert (=> d!733076 (= c!417294 ((_ is Nil!29765) lt!909666))))

(declare-fun e!1632576 () (InoxSet C!15488))

(assert (=> d!733076 (= (content!4114 lt!909666) e!1632576)))

(declare-fun b!2587667 () Bool)

(assert (=> b!2587667 (= e!1632576 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587668 () Bool)

(assert (=> b!2587668 (= e!1632576 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 lt!909666) true) (content!4114 (t!212230 lt!909666))))))

(assert (= (and d!733076 c!417294) b!2587667))

(assert (= (and d!733076 (not c!417294)) b!2587668))

(declare-fun m!2924227 () Bool)

(assert (=> b!2587668 m!2924227))

(declare-fun m!2924229 () Bool)

(assert (=> b!2587668 m!2924229))

(assert (=> d!732504 d!733076))

(assert (=> d!732504 d!733056))

(assert (=> d!732504 d!732516))

(assert (=> b!2586150 d!732710))

(assert (=> b!2586150 d!732712))

(declare-fun d!733078 () Bool)

(assert (=> d!733078 (= (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))) (isBalanced!2834 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun bs!471909 () Bool)

(assert (= bs!471909 d!733078))

(declare-fun m!2924231 () Bool)

(assert (=> bs!471909 m!2924231))

(assert (=> tb!141009 d!733078))

(assert (=> d!732468 d!732080))

(assert (=> d!732468 d!732112))

(assert (=> d!732468 d!732110))

(assert (=> d!732468 d!732108))

(declare-fun d!733080 () Bool)

(assert (=> d!733080 (= (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246))) (= (charsToBigInt!1 (text!33649 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))) (value!146088 (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 lt!909246)))))))

(declare-fun bs!471910 () Bool)

(assert (= bs!471910 d!733080))

(declare-fun m!2924233 () Bool)

(assert (=> bs!471910 m!2924233))

(assert (=> b!2586483 d!733080))

(declare-fun d!733082 () Bool)

(declare-fun c!417295 () Bool)

(assert (=> d!733082 (= c!417295 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun e!1632577 () Bool)

(assert (=> d!733082 (= (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))) e!1632577)))

(declare-fun b!2587669 () Bool)

(assert (=> b!2587669 (= e!1632577 (inv!40202 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587670 () Bool)

(declare-fun e!1632578 () Bool)

(assert (=> b!2587670 (= e!1632577 e!1632578)))

(declare-fun res!1088169 () Bool)

(assert (=> b!2587670 (= res!1088169 (not ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))))))

(assert (=> b!2587670 (=> res!1088169 e!1632578)))

(declare-fun b!2587671 () Bool)

(assert (=> b!2587671 (= e!1632578 (inv!40203 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))))))

(assert (= (and d!733082 c!417295) b!2587669))

(assert (= (and d!733082 (not c!417295)) b!2587670))

(assert (= (and b!2587670 (not res!1088169)) b!2587671))

(declare-fun m!2924235 () Bool)

(assert (=> b!2587669 m!2924235))

(declare-fun m!2924237 () Bool)

(assert (=> b!2587671 m!2924237))

(assert (=> b!2586462 d!733082))

(declare-fun d!733084 () Bool)

(declare-fun res!1088170 () Bool)

(declare-fun e!1632579 () Bool)

(assert (=> d!733084 (=> (not res!1088170) (not e!1632579))))

(assert (=> d!733084 (= res!1088170 (validRegex!3279 (regex!4521 (h!35186 rules!4580))))))

(assert (=> d!733084 (= (ruleValid!1527 thiss!28211 (h!35186 rules!4580)) e!1632579)))

(declare-fun b!2587672 () Bool)

(declare-fun res!1088171 () Bool)

(assert (=> b!2587672 (=> (not res!1088171) (not e!1632579))))

(assert (=> b!2587672 (= res!1088171 (not (nullable!2570 (regex!4521 (h!35186 rules!4580)))))))

(declare-fun b!2587673 () Bool)

(assert (=> b!2587673 (= e!1632579 (not (= (tag!5011 (h!35186 rules!4580)) (String!33124 ""))))))

(assert (= (and d!733084 res!1088170) b!2587672))

(assert (= (and b!2587672 res!1088171) b!2587673))

(assert (=> d!733084 m!2923579))

(assert (=> b!2587672 m!2923581))

(assert (=> b!2586130 d!733084))

(declare-fun call!167184 () Regex!7665)

(declare-fun bm!167176 () Bool)

(declare-fun c!417297 () Bool)

(assert (=> bm!167176 (= call!167184 (derivativeStep!2222 (ite c!417297 (regTwo!15843 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))) call!167016))))

(declare-fun bm!167177 () Bool)

(declare-fun call!167183 () Regex!7665)

(declare-fun call!167181 () Regex!7665)

(assert (=> bm!167177 (= call!167183 call!167181)))

(declare-fun c!417298 () Bool)

(declare-fun c!417300 () Bool)

(declare-fun bm!167178 () Bool)

(declare-fun call!167182 () Regex!7665)

(assert (=> bm!167178 (= call!167182 (derivativeStep!2222 (ite c!417297 (regOne!15843 (regex!4521 rule!570)) (ite c!417298 (reg!7994 (regex!4521 rule!570)) (ite c!417300 (regTwo!15842 (regex!4521 rule!570)) (regOne!15842 (regex!4521 rule!570))))) call!167016))))

(declare-fun b!2587674 () Bool)

(declare-fun e!1632584 () Regex!7665)

(assert (=> b!2587674 (= e!1632584 (ite (= call!167016 (c!416820 (regex!4521 rule!570))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!733086 () Bool)

(declare-fun lt!909957 () Regex!7665)

(assert (=> d!733086 (validRegex!3279 lt!909957)))

(declare-fun e!1632582 () Regex!7665)

(assert (=> d!733086 (= lt!909957 e!1632582)))

(declare-fun c!417296 () Bool)

(assert (=> d!733086 (= c!417296 (or ((_ is EmptyExpr!7665) (regex!4521 rule!570)) ((_ is EmptyLang!7665) (regex!4521 rule!570))))))

(assert (=> d!733086 (validRegex!3279 (regex!4521 rule!570))))

(assert (=> d!733086 (= (derivativeStep!2222 (regex!4521 rule!570) call!167016) lt!909957)))

(declare-fun b!2587675 () Bool)

(assert (=> b!2587675 (= e!1632582 EmptyLang!7665)))

(declare-fun b!2587676 () Bool)

(assert (=> b!2587676 (= c!417297 ((_ is Union!7665) (regex!4521 rule!570)))))

(declare-fun e!1632583 () Regex!7665)

(assert (=> b!2587676 (= e!1632584 e!1632583)))

(declare-fun b!2587677 () Bool)

(declare-fun e!1632580 () Regex!7665)

(assert (=> b!2587677 (= e!1632583 e!1632580)))

(assert (=> b!2587677 (= c!417298 ((_ is Star!7665) (regex!4521 rule!570)))))

(declare-fun b!2587678 () Bool)

(declare-fun e!1632581 () Regex!7665)

(assert (=> b!2587678 (= e!1632581 (Union!7665 (Concat!12409 call!167183 (regTwo!15842 (regex!4521 rule!570))) EmptyLang!7665))))

(declare-fun b!2587679 () Bool)

(assert (=> b!2587679 (= c!417300 (nullable!2570 (regOne!15842 (regex!4521 rule!570))))))

(assert (=> b!2587679 (= e!1632580 e!1632581)))

(declare-fun b!2587680 () Bool)

(assert (=> b!2587680 (= e!1632582 e!1632584)))

(declare-fun c!417299 () Bool)

(assert (=> b!2587680 (= c!417299 ((_ is ElementMatch!7665) (regex!4521 rule!570)))))

(declare-fun b!2587681 () Bool)

(assert (=> b!2587681 (= e!1632583 (Union!7665 call!167182 call!167184))))

(declare-fun bm!167179 () Bool)

(assert (=> bm!167179 (= call!167181 call!167182)))

(declare-fun b!2587682 () Bool)

(assert (=> b!2587682 (= e!1632581 (Union!7665 (Concat!12409 call!167184 (regTwo!15842 (regex!4521 rule!570))) call!167183))))

(declare-fun b!2587683 () Bool)

(assert (=> b!2587683 (= e!1632580 (Concat!12409 call!167181 (regex!4521 rule!570)))))

(assert (= (and d!733086 c!417296) b!2587675))

(assert (= (and d!733086 (not c!417296)) b!2587680))

(assert (= (and b!2587680 c!417299) b!2587674))

(assert (= (and b!2587680 (not c!417299)) b!2587676))

(assert (= (and b!2587676 c!417297) b!2587681))

(assert (= (and b!2587676 (not c!417297)) b!2587677))

(assert (= (and b!2587677 c!417298) b!2587683))

(assert (= (and b!2587677 (not c!417298)) b!2587679))

(assert (= (and b!2587679 c!417300) b!2587682))

(assert (= (and b!2587679 (not c!417300)) b!2587678))

(assert (= (or b!2587682 b!2587678) bm!167177))

(assert (= (or b!2587683 bm!167177) bm!167179))

(assert (= (or b!2587681 b!2587682) bm!167176))

(assert (= (or b!2587681 bm!167179) bm!167178))

(declare-fun m!2924239 () Bool)

(assert (=> bm!167176 m!2924239))

(declare-fun m!2924241 () Bool)

(assert (=> bm!167178 m!2924241))

(declare-fun m!2924243 () Bool)

(assert (=> d!733086 m!2924243))

(assert (=> d!733086 m!2921939))

(assert (=> b!2587679 m!2922411))

(assert (=> bm!167010 d!733086))

(declare-fun d!733088 () Bool)

(declare-fun lt!909958 () Int)

(assert (=> d!733088 (>= lt!909958 0)))

(declare-fun e!1632585 () Int)

(assert (=> d!733088 (= lt!909958 e!1632585)))

(declare-fun c!417301 () Bool)

(assert (=> d!733088 (= c!417301 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909429))))))

(assert (=> d!733088 (= (size!23078 (_2!17401 (get!9380 lt!909429))) lt!909958)))

(declare-fun b!2587684 () Bool)

(assert (=> b!2587684 (= e!1632585 0)))

(declare-fun b!2587685 () Bool)

(assert (=> b!2587685 (= e!1632585 (+ 1 (size!23078 (t!212230 (_2!17401 (get!9380 lt!909429))))))))

(assert (= (and d!733088 c!417301) b!2587684))

(assert (= (and d!733088 (not c!417301)) b!2587685))

(declare-fun m!2924245 () Bool)

(assert (=> b!2587685 m!2924245))

(assert (=> b!2586106 d!733088))

(assert (=> b!2586106 d!732706))

(assert (=> b!2586106 d!732242))

(declare-fun d!733090 () Bool)

(declare-fun lt!909959 () Int)

(assert (=> d!733090 (>= lt!909959 0)))

(declare-fun e!1632586 () Int)

(assert (=> d!733090 (= lt!909959 e!1632586)))

(declare-fun c!417302 () Bool)

(assert (=> d!733090 (= c!417302 ((_ is Nil!29765) lt!909666))))

(assert (=> d!733090 (= (size!23078 lt!909666) lt!909959)))

(declare-fun b!2587686 () Bool)

(assert (=> b!2587686 (= e!1632586 0)))

(declare-fun b!2587687 () Bool)

(assert (=> b!2587687 (= e!1632586 (+ 1 (size!23078 (t!212230 lt!909666))))))

(assert (= (and d!733090 c!417302) b!2587686))

(assert (= (and d!733090 (not c!417302)) b!2587687))

(declare-fun m!2924247 () Bool)

(assert (=> b!2587687 m!2924247))

(assert (=> b!2586622 d!733090))

(assert (=> b!2586622 d!732778))

(assert (=> b!2586622 d!732322))

(assert (=> d!732288 d!732508))

(declare-fun b!2587688 () Bool)

(declare-fun e!1632591 () Bool)

(declare-fun call!167187 () Bool)

(assert (=> b!2587688 (= e!1632591 call!167187)))

(declare-fun d!733092 () Bool)

(declare-fun res!1088176 () Bool)

(declare-fun e!1632587 () Bool)

(assert (=> d!733092 (=> res!1088176 e!1632587)))

(assert (=> d!733092 (= res!1088176 ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(assert (=> d!733092 (= (validRegex!3279 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) e!1632587)))

(declare-fun bm!167180 () Bool)

(declare-fun call!167185 () Bool)

(declare-fun call!167186 () Bool)

(assert (=> bm!167180 (= call!167185 call!167186)))

(declare-fun b!2587689 () Bool)

(declare-fun e!1632589 () Bool)

(declare-fun e!1632593 () Bool)

(assert (=> b!2587689 (= e!1632589 e!1632593)))

(declare-fun res!1088175 () Bool)

(assert (=> b!2587689 (=> (not res!1088175) (not e!1632593))))

(assert (=> b!2587689 (= res!1088175 call!167185)))

(declare-fun c!417304 () Bool)

(declare-fun bm!167181 () Bool)

(declare-fun c!417303 () Bool)

(assert (=> bm!167181 (= call!167186 (validRegex!3279 (ite c!417304 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (ite c!417303 (regOne!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (regOne!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))))

(declare-fun b!2587690 () Bool)

(declare-fun res!1088172 () Bool)

(assert (=> b!2587690 (=> (not res!1088172) (not e!1632591))))

(assert (=> b!2587690 (= res!1088172 call!167185)))

(declare-fun e!1632590 () Bool)

(assert (=> b!2587690 (= e!1632590 e!1632591)))

(declare-fun b!2587691 () Bool)

(assert (=> b!2587691 (= e!1632593 call!167187)))

(declare-fun b!2587692 () Bool)

(declare-fun res!1088173 () Bool)

(assert (=> b!2587692 (=> res!1088173 e!1632589)))

(assert (=> b!2587692 (= res!1088173 (not ((_ is Concat!12409) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247)))))))

(assert (=> b!2587692 (= e!1632590 e!1632589)))

(declare-fun b!2587693 () Bool)

(declare-fun e!1632588 () Bool)

(assert (=> b!2587693 (= e!1632588 e!1632590)))

(assert (=> b!2587693 (= c!417303 ((_ is Union!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun bm!167182 () Bool)

(assert (=> bm!167182 (= call!167187 (validRegex!3279 (ite c!417303 (regTwo!15843 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))) (regTwo!15842 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))))

(declare-fun b!2587694 () Bool)

(assert (=> b!2587694 (= e!1632587 e!1632588)))

(assert (=> b!2587694 (= c!417304 ((_ is Star!7665) (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))

(declare-fun b!2587695 () Bool)

(declare-fun e!1632592 () Bool)

(assert (=> b!2587695 (= e!1632592 call!167186)))

(declare-fun b!2587696 () Bool)

(assert (=> b!2587696 (= e!1632588 e!1632592)))

(declare-fun res!1088174 () Bool)

(assert (=> b!2587696 (= res!1088174 (not (nullable!2570 (reg!7994 (derivativeStep!2222 (regex!4521 rule!570) (head!5862 lt!909247))))))))

(assert (=> b!2587696 (=> (not res!1088174) (not e!1632592))))

(assert (= (and d!733092 (not res!1088176)) b!2587694))

(assert (= (and b!2587694 c!417304) b!2587696))

(assert (= (and b!2587694 (not c!417304)) b!2587693))

(assert (= (and b!2587696 res!1088174) b!2587695))

(assert (= (and b!2587693 c!417303) b!2587690))

(assert (= (and b!2587693 (not c!417303)) b!2587692))

(assert (= (and b!2587690 res!1088172) b!2587688))

(assert (= (and b!2587692 (not res!1088173)) b!2587689))

(assert (= (and b!2587689 res!1088175) b!2587691))

(assert (= (or b!2587690 b!2587689) bm!167180))

(assert (= (or b!2587688 b!2587691) bm!167182))

(assert (= (or b!2587695 bm!167180) bm!167181))

(declare-fun m!2924249 () Bool)

(assert (=> bm!167181 m!2924249))

(declare-fun m!2924251 () Bool)

(assert (=> bm!167182 m!2924251))

(declare-fun m!2924253 () Bool)

(assert (=> b!2587696 m!2924253))

(assert (=> d!732288 d!733092))

(assert (=> b!2586524 d!732672))

(declare-fun d!733094 () Bool)

(assert (=> d!733094 (= (isEmpty!17111 lt!909425) (not ((_ is Some!5935) lt!909425)))))

(assert (=> d!732220 d!733094))

(assert (=> d!732220 d!732246))

(assert (=> d!732220 d!732248))

(declare-fun bs!471911 () Bool)

(declare-fun d!733096 () Bool)

(assert (= bs!471911 (and d!733096 d!732278)))

(declare-fun lambda!95856 () Int)

(assert (=> bs!471911 (= lambda!95856 lambda!95811)))

(declare-fun bs!471912 () Bool)

(assert (= bs!471912 (and d!733096 d!732122)))

(assert (=> bs!471912 (= lambda!95856 lambda!95796)))

(declare-fun bs!471913 () Bool)

(assert (= bs!471913 (and d!733096 d!732464)))

(assert (=> bs!471913 (= lambda!95856 lambda!95830)))

(declare-fun bs!471914 () Bool)

(assert (= bs!471914 (and d!733096 d!732250)))

(assert (=> bs!471914 (= lambda!95856 lambda!95810)))

(declare-fun bs!471915 () Bool)

(assert (= bs!471915 (and d!733096 d!732764)))

(assert (=> bs!471915 (= lambda!95856 lambda!95850)))

(declare-fun bs!471916 () Bool)

(assert (= bs!471916 (and d!733096 d!732314)))

(assert (=> bs!471916 (= lambda!95856 lambda!95814)))

(assert (=> d!733096 true))

(declare-fun lt!909962 () Bool)

(assert (=> d!733096 (= lt!909962 (forall!6067 (t!212231 rules!4580) lambda!95856))))

(declare-fun e!1632594 () Bool)

(assert (=> d!733096 (= lt!909962 e!1632594)))

(declare-fun res!1088178 () Bool)

(assert (=> d!733096 (=> res!1088178 e!1632594)))

(assert (=> d!733096 (= res!1088178 (not ((_ is Cons!29766) (t!212231 rules!4580))))))

(assert (=> d!733096 (= (rulesValidInductive!1595 thiss!28211 (t!212231 rules!4580)) lt!909962)))

(declare-fun b!2587697 () Bool)

(declare-fun e!1632595 () Bool)

(assert (=> b!2587697 (= e!1632594 e!1632595)))

(declare-fun res!1088177 () Bool)

(assert (=> b!2587697 (=> (not res!1088177) (not e!1632595))))

(assert (=> b!2587697 (= res!1088177 (ruleValid!1527 thiss!28211 (h!35186 (t!212231 rules!4580))))))

(declare-fun b!2587698 () Bool)

(assert (=> b!2587698 (= e!1632595 (rulesValidInductive!1595 thiss!28211 (t!212231 (t!212231 rules!4580))))))

(assert (= (and d!733096 (not res!1088178)) b!2587697))

(assert (= (and b!2587697 res!1088177) b!2587698))

(declare-fun m!2924255 () Bool)

(assert (=> d!733096 m!2924255))

(assert (=> b!2587697 m!2923925))

(assert (=> b!2587698 m!2923513))

(assert (=> d!732220 d!733096))

(declare-fun d!733098 () Bool)

(assert (=> d!733098 (= (list!11256 (xs!12271 (c!416819 (charsOf!2850 token!562)))) (innerList!9347 (xs!12271 (c!416819 (charsOf!2850 token!562)))))))

(assert (=> b!2586213 d!733098))

(declare-fun d!733102 () Bool)

(assert (=> d!733102 (= (isDefined!4756 lt!909425) (not (isEmpty!17111 lt!909425)))))

(declare-fun bs!471918 () Bool)

(assert (= bs!471918 d!733102))

(assert (=> bs!471918 m!2922233))

(assert (=> b!2586097 d!733102))

(assert (=> b!2586455 d!732722))

(assert (=> b!2586131 d!733096))

(declare-fun d!733104 () Bool)

(declare-fun lt!909964 () Int)

(assert (=> d!733104 (>= lt!909964 0)))

(declare-fun e!1632596 () Int)

(assert (=> d!733104 (= lt!909964 e!1632596)))

(declare-fun c!417305 () Bool)

(assert (=> d!733104 (= c!417305 ((_ is Nil!29765) (_1!17402 lt!909550)))))

(assert (=> d!733104 (= (size!23078 (_1!17402 lt!909550)) lt!909964)))

(declare-fun b!2587699 () Bool)

(assert (=> b!2587699 (= e!1632596 0)))

(declare-fun b!2587700 () Bool)

(assert (=> b!2587700 (= e!1632596 (+ 1 (size!23078 (t!212230 (_1!17402 lt!909550)))))))

(assert (= (and d!733104 c!417305) b!2587699))

(assert (= (and d!733104 (not c!417305)) b!2587700))

(declare-fun m!2924261 () Bool)

(assert (=> b!2587700 m!2924261))

(assert (=> b!2586428 d!733104))

(assert (=> b!2586428 d!732410))

(declare-fun d!733106 () Bool)

(declare-fun lt!909965 () Int)

(assert (=> d!733106 (>= lt!909965 0)))

(declare-fun e!1632597 () Int)

(assert (=> d!733106 (= lt!909965 e!1632597)))

(declare-fun c!417306 () Bool)

(assert (=> d!733106 (= c!417306 ((_ is Nil!29765) (t!212230 (originalCharacters!5287 token!562))))))

(assert (=> d!733106 (= (size!23078 (t!212230 (originalCharacters!5287 token!562))) lt!909965)))

(declare-fun b!2587701 () Bool)

(assert (=> b!2587701 (= e!1632597 0)))

(declare-fun b!2587702 () Bool)

(assert (=> b!2587702 (= e!1632597 (+ 1 (size!23078 (t!212230 (t!212230 (originalCharacters!5287 token!562))))))))

(assert (= (and d!733106 c!417306) b!2587701))

(assert (= (and d!733106 (not c!417306)) b!2587702))

(declare-fun m!2924263 () Bool)

(assert (=> b!2587702 m!2924263))

(assert (=> b!2586515 d!733106))

(declare-fun d!733108 () Bool)

(declare-fun c!417307 () Bool)

(assert (=> d!733108 (= c!417307 ((_ is Nil!29765) lt!909600))))

(declare-fun e!1632598 () (InoxSet C!15488))

(assert (=> d!733108 (= (content!4114 lt!909600) e!1632598)))

(declare-fun b!2587703 () Bool)

(assert (=> b!2587703 (= e!1632598 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587704 () Bool)

(assert (=> b!2587704 (= e!1632598 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 lt!909600) true) (content!4114 (t!212230 lt!909600))))))

(assert (= (and d!733108 c!417307) b!2587703))

(assert (= (and d!733108 (not c!417307)) b!2587704))

(declare-fun m!2924265 () Bool)

(assert (=> b!2587704 m!2924265))

(declare-fun m!2924267 () Bool)

(assert (=> b!2587704 m!2924267))

(assert (=> d!732482 d!733108))

(declare-fun d!733110 () Bool)

(declare-fun c!417308 () Bool)

(assert (=> d!733110 (= c!417308 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(declare-fun e!1632599 () (InoxSet C!15488))

(assert (=> d!733110 (= (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) e!1632599)))

(declare-fun b!2587705 () Bool)

(assert (=> b!2587705 (= e!1632599 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587706 () Bool)

(assert (=> b!2587706 (= e!1632599 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) true) (content!4114 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(assert (= (and d!733110 c!417308) b!2587705))

(assert (= (and d!733110 (not c!417308)) b!2587706))

(declare-fun m!2924269 () Bool)

(assert (=> b!2587706 m!2924269))

(declare-fun m!2924271 () Bool)

(assert (=> b!2587706 m!2924271))

(assert (=> d!732482 d!733110))

(declare-fun d!733112 () Bool)

(declare-fun c!417309 () Bool)

(assert (=> d!733112 (= c!417309 ((_ is Nil!29765) (_2!17401 (get!9380 lt!909268))))))

(declare-fun e!1632600 () (InoxSet C!15488))

(assert (=> d!733112 (= (content!4114 (_2!17401 (get!9380 lt!909268))) e!1632600)))

(declare-fun b!2587707 () Bool)

(assert (=> b!2587707 (= e!1632600 ((as const (Array C!15488 Bool)) false))))

(declare-fun b!2587708 () Bool)

(assert (=> b!2587708 (= e!1632600 ((_ map or) (store ((as const (Array C!15488 Bool)) false) (h!35185 (_2!17401 (get!9380 lt!909268))) true) (content!4114 (t!212230 (_2!17401 (get!9380 lt!909268))))))))

(assert (= (and d!733112 c!417309) b!2587707))

(assert (= (and d!733112 (not c!417309)) b!2587708))

(declare-fun m!2924273 () Bool)

(assert (=> b!2587708 m!2924273))

(declare-fun m!2924275 () Bool)

(assert (=> b!2587708 m!2924275))

(assert (=> d!732482 d!733112))

(assert (=> d!732416 d!732804))

(declare-fun b!2587709 () Bool)

(declare-fun e!1632605 () Bool)

(declare-fun call!167190 () Bool)

(assert (=> b!2587709 (= e!1632605 call!167190)))

(declare-fun d!733114 () Bool)

(declare-fun res!1088183 () Bool)

(declare-fun e!1632601 () Bool)

(assert (=> d!733114 (=> res!1088183 e!1632601)))

(assert (=> d!733114 (= res!1088183 ((_ is ElementMatch!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(assert (=> d!733114 (= (validRegex!3279 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) e!1632601)))

(declare-fun bm!167183 () Bool)

(declare-fun call!167188 () Bool)

(declare-fun call!167189 () Bool)

(assert (=> bm!167183 (= call!167188 call!167189)))

(declare-fun b!2587710 () Bool)

(declare-fun e!1632603 () Bool)

(declare-fun e!1632607 () Bool)

(assert (=> b!2587710 (= e!1632603 e!1632607)))

(declare-fun res!1088182 () Bool)

(assert (=> b!2587710 (=> (not res!1088182) (not e!1632607))))

(assert (=> b!2587710 (= res!1088182 call!167188)))

(declare-fun c!417311 () Bool)

(declare-fun bm!167184 () Bool)

(declare-fun c!417310 () Bool)

(assert (=> bm!167184 (= call!167189 (validRegex!3279 (ite c!417311 (reg!7994 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (ite c!417310 (regOne!15843 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (regOne!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))))

(declare-fun b!2587711 () Bool)

(declare-fun res!1088179 () Bool)

(assert (=> b!2587711 (=> (not res!1088179) (not e!1632605))))

(assert (=> b!2587711 (= res!1088179 call!167188)))

(declare-fun e!1632604 () Bool)

(assert (=> b!2587711 (= e!1632604 e!1632605)))

(declare-fun b!2587712 () Bool)

(assert (=> b!2587712 (= e!1632607 call!167190)))

(declare-fun b!2587713 () Bool)

(declare-fun res!1088180 () Bool)

(assert (=> b!2587713 (=> res!1088180 e!1632603)))

(assert (=> b!2587713 (= res!1088180 (not ((_ is Concat!12409) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> b!2587713 (= e!1632604 e!1632603)))

(declare-fun b!2587714 () Bool)

(declare-fun e!1632602 () Bool)

(assert (=> b!2587714 (= e!1632602 e!1632604)))

(assert (=> b!2587714 (= c!417310 ((_ is Union!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun bm!167185 () Bool)

(assert (=> bm!167185 (= call!167190 (validRegex!3279 (ite c!417310 (regTwo!15843 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (regTwo!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2587715 () Bool)

(assert (=> b!2587715 (= e!1632601 e!1632602)))

(assert (=> b!2587715 (= c!417311 ((_ is Star!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2587716 () Bool)

(declare-fun e!1632606 () Bool)

(assert (=> b!2587716 (= e!1632606 call!167189)))

(declare-fun b!2587717 () Bool)

(assert (=> b!2587717 (= e!1632602 e!1632606)))

(declare-fun res!1088181 () Bool)

(assert (=> b!2587717 (= res!1088181 (not (nullable!2570 (reg!7994 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))))

(assert (=> b!2587717 (=> (not res!1088181) (not e!1632606))))

(assert (= (and d!733114 (not res!1088183)) b!2587715))

(assert (= (and b!2587715 c!417311) b!2587717))

(assert (= (and b!2587715 (not c!417311)) b!2587714))

(assert (= (and b!2587717 res!1088181) b!2587716))

(assert (= (and b!2587714 c!417310) b!2587711))

(assert (= (and b!2587714 (not c!417310)) b!2587713))

(assert (= (and b!2587711 res!1088179) b!2587709))

(assert (= (and b!2587713 (not res!1088180)) b!2587710))

(assert (= (and b!2587710 res!1088182) b!2587712))

(assert (= (or b!2587711 b!2587710) bm!167183))

(assert (= (or b!2587709 b!2587712) bm!167185))

(assert (= (or b!2587716 bm!167183) bm!167184))

(declare-fun m!2924277 () Bool)

(assert (=> bm!167184 m!2924277))

(declare-fun m!2924279 () Bool)

(assert (=> bm!167185 m!2924279))

(declare-fun m!2924281 () Bool)

(assert (=> b!2587717 m!2924281))

(assert (=> d!732416 d!733114))

(declare-fun b!2587718 () Bool)

(declare-fun e!1632608 () List!29865)

(assert (=> b!2587718 (= e!1632608 (_2!17401 (get!9380 lt!909268)))))

(declare-fun d!733116 () Bool)

(declare-fun e!1632609 () Bool)

(assert (=> d!733116 e!1632609))

(declare-fun res!1088184 () Bool)

(assert (=> d!733116 (=> (not res!1088184) (not e!1632609))))

(declare-fun lt!909966 () List!29865)

(assert (=> d!733116 (= res!1088184 (= (content!4114 lt!909966) ((_ map or) (content!4114 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (content!4114 (_2!17401 (get!9380 lt!909268))))))))

(assert (=> d!733116 (= lt!909966 e!1632608)))

(declare-fun c!417312 () Bool)

(assert (=> d!733116 (= c!417312 ((_ is Nil!29765) (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))))))

(assert (=> d!733116 (= (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) (_2!17401 (get!9380 lt!909268))) lt!909966)))

(declare-fun b!2587719 () Bool)

(assert (=> b!2587719 (= e!1632608 (Cons!29765 (h!35185 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (++!7311 (t!212230 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (_2!17401 (get!9380 lt!909268)))))))

(declare-fun b!2587720 () Bool)

(declare-fun res!1088185 () Bool)

(assert (=> b!2587720 (=> (not res!1088185) (not e!1632609))))

(assert (=> b!2587720 (= res!1088185 (= (size!23078 lt!909966) (+ (size!23078 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268)))))) (size!23078 (_2!17401 (get!9380 lt!909268))))))))

(declare-fun b!2587721 () Bool)

(assert (=> b!2587721 (= e!1632609 (or (not (= (_2!17401 (get!9380 lt!909268)) Nil!29765)) (= lt!909966 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(assert (= (and d!733116 c!417312) b!2587718))

(assert (= (and d!733116 (not c!417312)) b!2587719))

(assert (= (and d!733116 res!1088184) b!2587720))

(assert (= (and b!2587720 res!1088185) b!2587721))

(declare-fun m!2924283 () Bool)

(assert (=> d!733116 m!2924283))

(assert (=> d!733116 m!2924271))

(assert (=> d!733116 m!2922821))

(declare-fun m!2924285 () Bool)

(assert (=> b!2587719 m!2924285))

(declare-fun m!2924287 () Bool)

(assert (=> b!2587720 m!2924287))

(declare-fun m!2924289 () Bool)

(assert (=> b!2587720 m!2924289))

(assert (=> b!2587720 m!2921791))

(assert (=> b!2586557 d!733116))

(declare-fun d!733118 () Bool)

(declare-fun res!1088186 () Bool)

(declare-fun e!1632610 () Bool)

(assert (=> d!733118 (=> res!1088186 e!1632610)))

(assert (=> d!733118 (= res!1088186 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!733118 (= (forall!6067 (t!212231 rs!798) lambda!95796) e!1632610)))

(declare-fun b!2587722 () Bool)

(declare-fun e!1632611 () Bool)

(assert (=> b!2587722 (= e!1632610 e!1632611)))

(declare-fun res!1088187 () Bool)

(assert (=> b!2587722 (=> (not res!1088187) (not e!1632611))))

(assert (=> b!2587722 (= res!1088187 (dynLambda!12596 lambda!95796 (h!35186 (t!212231 rs!798))))))

(declare-fun b!2587723 () Bool)

(assert (=> b!2587723 (= e!1632611 (forall!6067 (t!212231 (t!212231 rs!798)) lambda!95796))))

(assert (= (and d!733118 (not res!1088186)) b!2587722))

(assert (= (and b!2587722 res!1088187) b!2587723))

(declare-fun b_lambda!76931 () Bool)

(assert (=> (not b_lambda!76931) (not b!2587722)))

(declare-fun m!2924291 () Bool)

(assert (=> b!2587722 m!2924291))

(declare-fun m!2924293 () Bool)

(assert (=> b!2587723 m!2924293))

(assert (=> b!2586531 d!733118))

(declare-fun d!733120 () Bool)

(declare-fun e!1632620 () Bool)

(assert (=> d!733120 e!1632620))

(declare-fun res!1088194 () Bool)

(assert (=> d!733120 (=> res!1088194 e!1632620)))

(assert (=> d!733120 (= res!1088194 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> d!733120 true))

(declare-fun _$92!342 () Unit!43600)

(assert (=> d!733120 (= (choose!15245 (regex!4521 rule!570) input!3654) _$92!342)))

(declare-fun b!2587738 () Bool)

(assert (=> b!2587738 (= e!1632620 (matchR!3598 (regex!4521 rule!570) (_1!17402 (findLongestMatchInner!756 (regex!4521 rule!570) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (= (and d!733120 (not res!1088194)) b!2587738))

(assert (=> d!733120 m!2921801))

(assert (=> d!733120 m!2921793))

(assert (=> d!733120 m!2921801))

(assert (=> d!733120 m!2921793))

(assert (=> d!733120 m!2921803))

(assert (=> d!733120 m!2921823))

(assert (=> b!2587738 m!2921801))

(assert (=> b!2587738 m!2921793))

(assert (=> b!2587738 m!2921801))

(assert (=> b!2587738 m!2921793))

(assert (=> b!2587738 m!2921803))

(assert (=> b!2587738 m!2921805))

(assert (=> d!732496 d!733120))

(assert (=> d!732496 d!732490))

(assert (=> d!732496 d!732242))

(assert (=> d!732496 d!732498))

(assert (=> d!732496 d!732410))

(assert (=> d!732496 d!732328))

(declare-fun b!2587739 () Bool)

(declare-fun e!1632622 () Bool)

(assert (=> b!2587739 (= e!1632622 (inv!15 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun d!733130 () Bool)

(declare-fun c!417317 () Bool)

(assert (=> d!733130 (= c!417317 ((_ is IntegerValue!14229) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun e!1632621 () Bool)

(assert (=> d!733130 (= (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))) e!1632621)))

(declare-fun b!2587740 () Bool)

(assert (=> b!2587740 (= e!1632621 (inv!16 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587741 () Bool)

(declare-fun e!1632623 () Bool)

(assert (=> b!2587741 (= e!1632621 e!1632623)))

(declare-fun c!417318 () Bool)

(assert (=> b!2587741 (= c!417318 ((_ is IntegerValue!14230) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587742 () Bool)

(assert (=> b!2587742 (= e!1632623 (inv!17 (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))))

(declare-fun b!2587743 () Bool)

(declare-fun res!1088195 () Bool)

(assert (=> b!2587743 (=> res!1088195 e!1632622)))

(assert (=> b!2587743 (= res!1088195 (not ((_ is IntegerValue!14231) (dynLambda!12580 (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (seqFromList!3161 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))))

(assert (=> b!2587743 (= e!1632623 e!1632622)))

(assert (= (and d!733130 c!417317) b!2587740))

(assert (= (and d!733130 (not c!417317)) b!2587741))

(assert (= (and b!2587741 c!417318) b!2587742))

(assert (= (and b!2587741 (not c!417318)) b!2587743))

(assert (= (and b!2587743 (not res!1088195)) b!2587739))

(declare-fun m!2924319 () Bool)

(assert (=> b!2587739 m!2924319))

(declare-fun m!2924321 () Bool)

(assert (=> b!2587740 m!2924321))

(declare-fun m!2924323 () Bool)

(assert (=> b!2587742 m!2924323))

(assert (=> tb!140889 d!733130))

(declare-fun b!2587747 () Bool)

(declare-fun res!1088198 () Bool)

(declare-fun e!1632627 () Bool)

(assert (=> b!2587747 (=> (not res!1088198) (not e!1632627))))

(assert (=> b!2587747 (= res!1088198 (= (head!5862 Nil!29765) (head!5862 (++!7311 Nil!29765 input!3654))))))

(declare-fun b!2587749 () Bool)

(declare-fun e!1632626 () Bool)

(assert (=> b!2587749 (= e!1632626 (>= (size!23078 (++!7311 Nil!29765 input!3654)) (size!23078 Nil!29765)))))

(declare-fun b!2587748 () Bool)

(assert (=> b!2587748 (= e!1632627 (isPrefix!2421 (tail!4135 Nil!29765) (tail!4135 (++!7311 Nil!29765 input!3654))))))

(declare-fun b!2587746 () Bool)

(declare-fun e!1632625 () Bool)

(assert (=> b!2587746 (= e!1632625 e!1632627)))

(declare-fun res!1088196 () Bool)

(assert (=> b!2587746 (=> (not res!1088196) (not e!1632627))))

(assert (=> b!2587746 (= res!1088196 (not ((_ is Nil!29765) (++!7311 Nil!29765 input!3654))))))

(declare-fun d!733132 () Bool)

(assert (=> d!733132 e!1632626))

(declare-fun res!1088197 () Bool)

(assert (=> d!733132 (=> res!1088197 e!1632626)))

(declare-fun lt!909975 () Bool)

(assert (=> d!733132 (= res!1088197 (not lt!909975))))

(assert (=> d!733132 (= lt!909975 e!1632625)))

(declare-fun res!1088199 () Bool)

(assert (=> d!733132 (=> res!1088199 e!1632625)))

(assert (=> d!733132 (= res!1088199 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!733132 (= (isPrefix!2421 Nil!29765 (++!7311 Nil!29765 input!3654)) lt!909975)))

(assert (= (and d!733132 (not res!1088199)) b!2587746))

(assert (= (and b!2587746 res!1088196) b!2587747))

(assert (= (and b!2587747 res!1088198) b!2587748))

(assert (= (and d!733132 (not res!1088197)) b!2587749))

(declare-fun m!2924325 () Bool)

(assert (=> b!2587747 m!2924325))

(assert (=> b!2587747 m!2922657))

(declare-fun m!2924327 () Bool)

(assert (=> b!2587747 m!2924327))

(assert (=> b!2587749 m!2922657))

(declare-fun m!2924331 () Bool)

(assert (=> b!2587749 m!2924331))

(assert (=> b!2587749 m!2921801))

(declare-fun m!2924333 () Bool)

(assert (=> b!2587748 m!2924333))

(assert (=> b!2587748 m!2922657))

(declare-fun m!2924335 () Bool)

(assert (=> b!2587748 m!2924335))

(assert (=> b!2587748 m!2924333))

(assert (=> b!2587748 m!2924335))

(declare-fun m!2924337 () Bool)

(assert (=> b!2587748 m!2924337))

(assert (=> d!732328 d!733132))

(declare-fun b!2587750 () Bool)

(declare-fun e!1632628 () List!29865)

(assert (=> b!2587750 (= e!1632628 (_2!17402 lt!909550))))

(declare-fun d!733134 () Bool)

(declare-fun e!1632629 () Bool)

(assert (=> d!733134 e!1632629))

(declare-fun res!1088200 () Bool)

(assert (=> d!733134 (=> (not res!1088200) (not e!1632629))))

(declare-fun lt!909976 () List!29865)

(assert (=> d!733134 (= res!1088200 (= (content!4114 lt!909976) ((_ map or) (content!4114 (_1!17402 lt!909550)) (content!4114 (_2!17402 lt!909550)))))))

(assert (=> d!733134 (= lt!909976 e!1632628)))

(declare-fun c!417320 () Bool)

(assert (=> d!733134 (= c!417320 ((_ is Nil!29765) (_1!17402 lt!909550)))))

(assert (=> d!733134 (= (++!7311 (_1!17402 lt!909550) (_2!17402 lt!909550)) lt!909976)))

(declare-fun b!2587751 () Bool)

(assert (=> b!2587751 (= e!1632628 (Cons!29765 (h!35185 (_1!17402 lt!909550)) (++!7311 (t!212230 (_1!17402 lt!909550)) (_2!17402 lt!909550))))))

(declare-fun b!2587752 () Bool)

(declare-fun res!1088201 () Bool)

(assert (=> b!2587752 (=> (not res!1088201) (not e!1632629))))

(assert (=> b!2587752 (= res!1088201 (= (size!23078 lt!909976) (+ (size!23078 (_1!17402 lt!909550)) (size!23078 (_2!17402 lt!909550)))))))

(declare-fun b!2587753 () Bool)

(assert (=> b!2587753 (= e!1632629 (or (not (= (_2!17402 lt!909550) Nil!29765)) (= lt!909976 (_1!17402 lt!909550))))))

(assert (= (and d!733134 c!417320) b!2587750))

(assert (= (and d!733134 (not c!417320)) b!2587751))

(assert (= (and d!733134 res!1088200) b!2587752))

(assert (= (and b!2587752 res!1088201) b!2587753))

(declare-fun m!2924341 () Bool)

(assert (=> d!733134 m!2924341))

(declare-fun m!2924343 () Bool)

(assert (=> d!733134 m!2924343))

(declare-fun m!2924345 () Bool)

(assert (=> d!733134 m!2924345))

(declare-fun m!2924347 () Bool)

(assert (=> b!2587751 m!2924347))

(declare-fun m!2924349 () Bool)

(assert (=> b!2587752 m!2924349))

(assert (=> b!2587752 m!2922669))

(declare-fun m!2924351 () Bool)

(assert (=> b!2587752 m!2924351))

(assert (=> d!732328 d!733134))

(declare-fun d!733140 () Bool)

(declare-fun lostCauseFct!211 (Regex!7665) Bool)

(assert (=> d!733140 (= (lostCause!697 (regex!4521 rule!570)) (lostCauseFct!211 (regex!4521 rule!570)))))

(declare-fun bs!471920 () Bool)

(assert (= bs!471920 d!733140))

(declare-fun m!2924353 () Bool)

(assert (=> bs!471920 m!2924353))

(assert (=> d!732328 d!733140))

(assert (=> d!732328 d!732872))

(declare-fun b!2587754 () Bool)

(declare-fun e!1632630 () List!29865)

(assert (=> b!2587754 (= e!1632630 input!3654)))

(declare-fun d!733142 () Bool)

(declare-fun e!1632631 () Bool)

(assert (=> d!733142 e!1632631))

(declare-fun res!1088202 () Bool)

(assert (=> d!733142 (=> (not res!1088202) (not e!1632631))))

(declare-fun lt!909977 () List!29865)

(assert (=> d!733142 (= res!1088202 (= (content!4114 lt!909977) ((_ map or) (content!4114 Nil!29765) (content!4114 input!3654))))))

(assert (=> d!733142 (= lt!909977 e!1632630)))

(declare-fun c!417321 () Bool)

(assert (=> d!733142 (= c!417321 ((_ is Nil!29765) Nil!29765))))

(assert (=> d!733142 (= (++!7311 Nil!29765 input!3654) lt!909977)))

(declare-fun b!2587755 () Bool)

(assert (=> b!2587755 (= e!1632630 (Cons!29765 (h!35185 Nil!29765) (++!7311 (t!212230 Nil!29765) input!3654)))))

(declare-fun b!2587756 () Bool)

(declare-fun res!1088203 () Bool)

(assert (=> b!2587756 (=> (not res!1088203) (not e!1632631))))

(assert (=> b!2587756 (= res!1088203 (= (size!23078 lt!909977) (+ (size!23078 Nil!29765) (size!23078 input!3654))))))

(declare-fun b!2587757 () Bool)

(assert (=> b!2587757 (= e!1632631 (or (not (= input!3654 Nil!29765)) (= lt!909977 Nil!29765)))))

(assert (= (and d!733142 c!417321) b!2587754))

(assert (= (and d!733142 (not c!417321)) b!2587755))

(assert (= (and d!733142 res!1088202) b!2587756))

(assert (= (and b!2587756 res!1088203) b!2587757))

(declare-fun m!2924355 () Bool)

(assert (=> d!733142 m!2924355))

(assert (=> d!733142 m!2923659))

(declare-fun m!2924357 () Bool)

(assert (=> d!733142 m!2924357))

(declare-fun m!2924359 () Bool)

(assert (=> b!2587755 m!2924359))

(declare-fun m!2924361 () Bool)

(assert (=> b!2587756 m!2924361))

(assert (=> b!2587756 m!2921801))

(assert (=> b!2587756 m!2921793))

(assert (=> d!732328 d!733142))

(declare-fun d!733144 () Bool)

(assert (=> d!733144 (= input!3654 lt!909564)))

(declare-fun lt!909982 () Unit!43600)

(declare-fun choose!15266 (List!29865 List!29865 List!29865 List!29865 List!29865) Unit!43600)

(assert (=> d!733144 (= lt!909982 (choose!15266 Nil!29765 input!3654 Nil!29765 lt!909564 input!3654))))

(assert (=> d!733144 (isPrefix!2421 Nil!29765 input!3654)))

(assert (=> d!733144 (= (lemmaSamePrefixThenSameSuffix!1087 Nil!29765 input!3654 Nil!29765 lt!909564 input!3654) lt!909982)))

(declare-fun bs!471921 () Bool)

(assert (= bs!471921 d!733144))

(declare-fun m!2924363 () Bool)

(assert (=> bs!471921 m!2924363))

(assert (=> bs!471921 m!2923689))

(assert (=> d!732328 d!733144))

(declare-fun d!733146 () Bool)

(assert (=> d!733146 (isPrefix!2421 Nil!29765 (++!7311 Nil!29765 input!3654))))

(declare-fun lt!909986 () Unit!43600)

(declare-fun choose!15267 (List!29865 List!29865) Unit!43600)

(assert (=> d!733146 (= lt!909986 (choose!15267 Nil!29765 input!3654))))

(assert (=> d!733146 (= (lemmaConcatTwoListThenFirstIsPrefix!1599 Nil!29765 input!3654) lt!909986)))

(declare-fun bs!471923 () Bool)

(assert (= bs!471923 d!733146))

(assert (=> bs!471923 m!2922657))

(assert (=> bs!471923 m!2922657))

(assert (=> bs!471923 m!2922667))

(declare-fun m!2924367 () Bool)

(assert (=> bs!471923 m!2924367))

(assert (=> d!732328 d!733146))

(assert (=> d!732328 d!732498))

(assert (=> b!2586447 d!732846))

(assert (=> b!2586447 d!732848))

(declare-fun d!733150 () Bool)

(declare-fun c!417329 () Bool)

(assert (=> d!733150 (= c!417329 ((_ is Nil!29764) (text!33650 (value!146096 token!562))))))

(declare-fun e!1632639 () Int)

(assert (=> d!733150 (= (charsToBigInt!0 (text!33650 (value!146096 token!562)) 0) e!1632639)))

(declare-fun b!2587772 () Bool)

(assert (=> b!2587772 (= e!1632639 0)))

(declare-fun b!2587773 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2587773 (= e!1632639 (charsToBigInt!0 (t!212229 (text!33650 (value!146096 token!562))) (+ (* 0 10) (charToBigInt!0 (h!35184 (text!33650 (value!146096 token!562)))))))))

(assert (= (and d!733150 c!417329) b!2587772))

(assert (= (and d!733150 (not c!417329)) b!2587773))

(declare-fun m!2924379 () Bool)

(assert (=> b!2587773 m!2924379))

(declare-fun m!2924381 () Bool)

(assert (=> b!2587773 m!2924381))

(assert (=> d!732480 d!733150))

(assert (=> d!732314 d!732250))

(declare-fun d!733154 () Bool)

(declare-fun res!1088204 () Bool)

(declare-fun e!1632641 () Bool)

(assert (=> d!733154 (=> res!1088204 e!1632641)))

(assert (=> d!733154 (= res!1088204 ((_ is Nil!29766) rules!4580))))

(assert (=> d!733154 (= (forall!6067 rules!4580 lambda!95814) e!1632641)))

(declare-fun b!2587774 () Bool)

(declare-fun e!1632643 () Bool)

(assert (=> b!2587774 (= e!1632641 e!1632643)))

(declare-fun res!1088206 () Bool)

(assert (=> b!2587774 (=> (not res!1088206) (not e!1632643))))

(assert (=> b!2587774 (= res!1088206 (dynLambda!12596 lambda!95814 (h!35186 rules!4580)))))

(declare-fun b!2587775 () Bool)

(assert (=> b!2587775 (= e!1632643 (forall!6067 (t!212231 rules!4580) lambda!95814))))

(assert (= (and d!733154 (not res!1088204)) b!2587774))

(assert (= (and b!2587774 res!1088206) b!2587775))

(declare-fun b_lambda!76933 () Bool)

(assert (=> (not b_lambda!76933) (not b!2587774)))

(declare-fun m!2924383 () Bool)

(assert (=> b!2587774 m!2924383))

(declare-fun m!2924385 () Bool)

(assert (=> b!2587775 m!2924385))

(assert (=> d!732314 d!733154))

(declare-fun bs!471924 () Bool)

(declare-fun d!733156 () Bool)

(assert (= bs!471924 (and d!733156 d!732476)))

(declare-fun lambda!95857 () Int)

(assert (=> bs!471924 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rs!798)))) (= lambda!95857 lambda!95831))))

(declare-fun bs!471925 () Bool)

(assert (= bs!471925 (and d!733156 d!732484)))

(assert (=> bs!471925 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 token!562)))) (= lambda!95857 lambda!95832))))

(declare-fun bs!471926 () Bool)

(assert (= bs!471926 (and d!733156 d!732520)))

(assert (=> bs!471926 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (= lambda!95857 lambda!95836))))

(declare-fun bs!471927 () Bool)

(assert (= bs!471927 (and d!733156 d!732414)))

(assert (=> bs!471927 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570))) (= lambda!95857 lambda!95828))))

(declare-fun bs!471928 () Bool)

(assert (= bs!471928 (and d!733156 d!732918)))

(assert (=> bs!471928 (= (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798))))) (= lambda!95857 lambda!95853))))

(assert (=> d!733156 true))

(assert (=> d!733156 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (dynLambda!12593 order!15855 lambda!95857))))

(assert (=> d!733156 (= (equivClasses!1790 (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (Forall2!767 lambda!95857))))

(declare-fun bs!471929 () Bool)

(assert (= bs!471929 d!733156))

(declare-fun m!2924387 () Bool)

(assert (=> bs!471929 m!2924387))

(assert (=> b!2586479 d!733156))

(declare-fun d!733158 () Bool)

(assert (=> d!733158 (= (list!11253 lt!909599) (list!11254 (c!416819 lt!909599)))))

(declare-fun bs!471930 () Bool)

(assert (= bs!471930 d!733158))

(declare-fun m!2924389 () Bool)

(assert (=> bs!471930 m!2924389))

(assert (=> d!732474 d!733158))

(declare-fun b!2587790 () Bool)

(declare-fun e!1632653 () Bool)

(declare-fun call!167198 () Bool)

(assert (=> b!2587790 (= e!1632653 call!167198)))

(declare-fun d!733160 () Bool)

(declare-fun res!1088218 () Bool)

(declare-fun e!1632649 () Bool)

(assert (=> d!733160 (=> res!1088218 e!1632649)))

(assert (=> d!733160 (= res!1088218 ((_ is ElementMatch!7665) (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))

(assert (=> d!733160 (= (validRegex!3279 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))) e!1632649)))

(declare-fun bm!167191 () Bool)

(declare-fun call!167196 () Bool)

(declare-fun call!167197 () Bool)

(assert (=> bm!167191 (= call!167196 call!167197)))

(declare-fun b!2587791 () Bool)

(declare-fun e!1632651 () Bool)

(declare-fun e!1632655 () Bool)

(assert (=> b!2587791 (= e!1632651 e!1632655)))

(declare-fun res!1088217 () Bool)

(assert (=> b!2587791 (=> (not res!1088217) (not e!1632655))))

(assert (=> b!2587791 (= res!1088217 call!167196)))

(declare-fun c!417334 () Bool)

(declare-fun c!417333 () Bool)

(declare-fun bm!167192 () Bool)

(assert (=> bm!167192 (= call!167197 (validRegex!3279 (ite c!417334 (reg!7994 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))) (ite c!417333 (regOne!15843 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))) (regOne!15842 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570))))))))))

(declare-fun b!2587792 () Bool)

(declare-fun res!1088214 () Bool)

(assert (=> b!2587792 (=> (not res!1088214) (not e!1632653))))

(assert (=> b!2587792 (= res!1088214 call!167196)))

(declare-fun e!1632652 () Bool)

(assert (=> b!2587792 (= e!1632652 e!1632653)))

(declare-fun b!2587793 () Bool)

(assert (=> b!2587793 (= e!1632655 call!167198)))

(declare-fun b!2587794 () Bool)

(declare-fun res!1088215 () Bool)

(assert (=> b!2587794 (=> res!1088215 e!1632651)))

(assert (=> b!2587794 (= res!1088215 (not ((_ is Concat!12409) (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570))))))))

(assert (=> b!2587794 (= e!1632652 e!1632651)))

(declare-fun b!2587795 () Bool)

(declare-fun e!1632650 () Bool)

(assert (=> b!2587795 (= e!1632650 e!1632652)))

(assert (=> b!2587795 (= c!417333 ((_ is Union!7665) (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))

(declare-fun bm!167193 () Bool)

(assert (=> bm!167193 (= call!167198 (validRegex!3279 (ite c!417333 (regTwo!15843 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))) (regTwo!15842 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))))

(declare-fun b!2587796 () Bool)

(assert (=> b!2587796 (= e!1632649 e!1632650)))

(assert (=> b!2587796 (= c!417334 ((_ is Star!7665) (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))

(declare-fun b!2587797 () Bool)

(declare-fun e!1632654 () Bool)

(assert (=> b!2587797 (= e!1632654 call!167197)))

(declare-fun b!2587798 () Bool)

(assert (=> b!2587798 (= e!1632650 e!1632654)))

(declare-fun res!1088216 () Bool)

(assert (=> b!2587798 (= res!1088216 (not (nullable!2570 (reg!7994 (ite c!417052 (regTwo!15843 (regex!4521 rule!570)) (regTwo!15842 (regex!4521 rule!570)))))))))

(assert (=> b!2587798 (=> (not res!1088216) (not e!1632654))))

(assert (= (and d!733160 (not res!1088218)) b!2587796))

(assert (= (and b!2587796 c!417334) b!2587798))

(assert (= (and b!2587796 (not c!417334)) b!2587795))

(assert (= (and b!2587798 res!1088216) b!2587797))

(assert (= (and b!2587795 c!417333) b!2587792))

(assert (= (and b!2587795 (not c!417333)) b!2587794))

(assert (= (and b!2587792 res!1088214) b!2587790))

(assert (= (and b!2587794 (not res!1088215)) b!2587791))

(assert (= (and b!2587791 res!1088217) b!2587793))

(assert (= (or b!2587792 b!2587791) bm!167191))

(assert (= (or b!2587790 b!2587793) bm!167193))

(assert (= (or b!2587797 bm!167191) bm!167192))

(declare-fun m!2924399 () Bool)

(assert (=> bm!167192 m!2924399))

(declare-fun m!2924401 () Bool)

(assert (=> bm!167193 m!2924401))

(declare-fun m!2924403 () Bool)

(assert (=> b!2587798 m!2924403))

(assert (=> bm!167029 d!733160))

(declare-fun d!733162 () Bool)

(declare-fun e!1632656 () Bool)

(assert (=> d!733162 e!1632656))

(declare-fun res!1088219 () Bool)

(assert (=> d!733162 (=> res!1088219 e!1632656)))

(assert (=> d!733162 (= res!1088219 (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(declare-fun lt!909989 () Unit!43600)

(assert (=> d!733162 (= lt!909989 (choose!15245 (regex!4521 (h!35186 rules!4580)) input!3654))))

(assert (=> d!733162 (validRegex!3279 (regex!4521 (h!35186 rules!4580)))))

(assert (=> d!733162 (= (longestMatchIsAcceptedByMatchOrIsEmpty!729 (regex!4521 (h!35186 rules!4580)) input!3654) lt!909989)))

(declare-fun b!2587799 () Bool)

(assert (=> b!2587799 (= e!1632656 (matchR!3598 (regex!4521 (h!35186 rules!4580)) (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (= (and d!733162 (not res!1088219)) b!2587799))

(assert (=> d!733162 m!2923579))

(assert (=> d!733162 m!2921801))

(assert (=> d!733162 m!2921801))

(assert (=> d!733162 m!2921793))

(assert (=> d!733162 m!2922261))

(assert (=> d!733162 m!2922281))

(declare-fun m!2924409 () Bool)

(assert (=> d!733162 m!2924409))

(assert (=> d!733162 m!2921793))

(assert (=> b!2587799 m!2921801))

(assert (=> b!2587799 m!2921793))

(assert (=> b!2587799 m!2921801))

(assert (=> b!2587799 m!2921793))

(assert (=> b!2587799 m!2922261))

(assert (=> b!2587799 m!2922263))

(assert (=> b!2586107 d!733162))

(declare-fun d!733164 () Bool)

(declare-fun lt!909990 () Int)

(assert (=> d!733164 (= lt!909990 (size!23078 (list!11253 (seqFromList!3161 (_1!17402 lt!909431)))))))

(assert (=> d!733164 (= lt!909990 (size!23086 (c!416819 (seqFromList!3161 (_1!17402 lt!909431)))))))

(assert (=> d!733164 (= (size!23079 (seqFromList!3161 (_1!17402 lt!909431))) lt!909990)))

(declare-fun bs!471931 () Bool)

(assert (= bs!471931 d!733164))

(assert (=> bs!471931 m!2922279))

(declare-fun m!2924413 () Bool)

(assert (=> bs!471931 m!2924413))

(assert (=> bs!471931 m!2924413))

(declare-fun m!2924415 () Bool)

(assert (=> bs!471931 m!2924415))

(declare-fun m!2924417 () Bool)

(assert (=> bs!471931 m!2924417))

(assert (=> b!2586107 d!733164))

(declare-fun d!733166 () Bool)

(assert (=> d!733166 (= (apply!7026 (transformation!4521 (h!35186 rules!4580)) (seqFromList!3161 (_1!17402 lt!909431))) (dynLambda!12580 (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (seqFromList!3161 (_1!17402 lt!909431))))))

(declare-fun b_lambda!76935 () Bool)

(assert (=> (not b_lambda!76935) (not d!733166)))

(declare-fun t!212642 () Bool)

(declare-fun tb!141241 () Bool)

(assert (=> (and b!2585578 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212642) tb!141241))

(declare-fun result!175528 () Bool)

(assert (=> tb!141241 (= result!175528 (inv!21 (dynLambda!12580 (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (seqFromList!3161 (_1!17402 lt!909431)))))))

(declare-fun m!2924419 () Bool)

(assert (=> tb!141241 m!2924419))

(assert (=> d!733166 t!212642))

(declare-fun b_and!189931 () Bool)

(assert (= b_and!189889 (and (=> t!212642 result!175528) b_and!189931)))

(declare-fun t!212644 () Bool)

(declare-fun tb!141243 () Bool)

(assert (=> (and b!2585595 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212644) tb!141243))

(declare-fun result!175530 () Bool)

(assert (= result!175530 result!175528))

(assert (=> d!733166 t!212644))

(declare-fun b_and!189933 () Bool)

(assert (= b_and!189895 (and (=> t!212644 result!175530) b_and!189933)))

(declare-fun t!212646 () Bool)

(declare-fun tb!141245 () Bool)

(assert (=> (and b!2586000 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212646) tb!141245))

(declare-fun result!175532 () Bool)

(assert (= result!175532 result!175528))

(assert (=> d!733166 t!212646))

(declare-fun b_and!189935 () Bool)

(assert (= b_and!189885 (and (=> t!212646 result!175532) b_and!189935)))

(declare-fun t!212648 () Bool)

(declare-fun tb!141247 () Bool)

(assert (=> (and b!2585577 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212648) tb!141247))

(declare-fun result!175534 () Bool)

(assert (= result!175534 result!175528))

(assert (=> d!733166 t!212648))

(declare-fun b_and!189937 () Bool)

(assert (= b_and!189891 (and (=> t!212648 result!175534) b_and!189937)))

(declare-fun t!212650 () Bool)

(declare-fun tb!141249 () Bool)

(assert (=> (and b!2586755 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212650) tb!141249))

(declare-fun result!175536 () Bool)

(assert (= result!175536 result!175528))

(assert (=> d!733166 t!212650))

(declare-fun b_and!189939 () Bool)

(assert (= b_and!189887 (and (=> t!212650 result!175536) b_and!189939)))

(declare-fun tb!141251 () Bool)

(declare-fun t!212652 () Bool)

(assert (=> (and b!2585586 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212652) tb!141251))

(declare-fun result!175538 () Bool)

(assert (= result!175538 result!175528))

(assert (=> d!733166 t!212652))

(declare-fun b_and!189941 () Bool)

(assert (= b_and!189893 (and (=> t!212652 result!175538) b_and!189941)))

(declare-fun t!212654 () Bool)

(declare-fun tb!141253 () Bool)

(assert (=> (and b!2585983 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212654) tb!141253))

(declare-fun result!175540 () Bool)

(assert (= result!175540 result!175528))

(assert (=> d!733166 t!212654))

(declare-fun b_and!189943 () Bool)

(assert (= b_and!189897 (and (=> t!212654 result!175540) b_and!189943)))

(declare-fun t!212656 () Bool)

(declare-fun tb!141255 () Bool)

(assert (=> (and b!2586724 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212656) tb!141255))

(declare-fun result!175542 () Bool)

(assert (= result!175542 result!175528))

(assert (=> d!733166 t!212656))

(declare-fun b_and!189945 () Bool)

(assert (= b_and!189883 (and (=> t!212656 result!175542) b_and!189945)))

(assert (=> d!733166 m!2922279))

(declare-fun m!2924425 () Bool)

(assert (=> d!733166 m!2924425))

(assert (=> b!2586107 d!733166))

(declare-fun bs!471933 () Bool)

(declare-fun d!733170 () Bool)

(assert (= bs!471933 (and d!733170 d!732534)))

(declare-fun lambda!95858 () Int)

(assert (=> bs!471933 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 token!562))))) (= lambda!95858 lambda!95837))))

(declare-fun bs!471934 () Bool)

(assert (= bs!471934 (and d!733170 d!732730)))

(assert (=> bs!471934 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798))))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))))) (= lambda!95858 lambda!95849))))

(declare-fun bs!471935 () Bool)

(assert (= bs!471935 (and d!733170 d!732930)))

(assert (=> bs!471935 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580))))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))))) (= lambda!95858 lambda!95854))))

(declare-fun bs!471936 () Bool)

(assert (= bs!471936 (and d!733170 d!732286)))

(assert (=> bs!471936 (= lambda!95858 lambda!95813)))

(declare-fun bs!471937 () Bool)

(assert (= bs!471937 (and d!733170 d!732538)))

(assert (=> bs!471937 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (h!35186 rs!798)))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (h!35186 rs!798))))) (= lambda!95858 lambda!95838))))

(declare-fun bs!471938 () Bool)

(assert (= bs!471938 (and d!733170 d!732218)))

(assert (=> bs!471938 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95858 lambda!95807))))

(declare-fun bs!471939 () Bool)

(assert (= bs!471939 (and d!733170 d!732492)))

(assert (=> bs!471939 (= (and (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 rule!570))) (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (= lambda!95858 lambda!95835))))

(declare-fun b!2587810 () Bool)

(declare-fun e!1632663 () Bool)

(assert (=> b!2587810 (= e!1632663 true)))

(assert (=> d!733170 e!1632663))

(assert (= d!733170 b!2587810))

(assert (=> b!2587810 (< (dynLambda!12590 order!15845 (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) (dynLambda!12589 order!15843 lambda!95858))))

(assert (=> b!2587810 (< (dynLambda!12588 order!15841 (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) (dynLambda!12589 order!15843 lambda!95858))))

(assert (=> d!733170 (= (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (dynLambda!12580 (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (seqFromList!3161 (_1!17402 lt!909431))))) (list!11253 (seqFromList!3161 (_1!17402 lt!909431))))))

(declare-fun lt!909992 () Unit!43600)

(assert (=> d!733170 (= lt!909992 (ForallOf!507 lambda!95858 (seqFromList!3161 (_1!17402 lt!909431))))))

(assert (=> d!733170 (= (lemmaSemiInverse!1107 (transformation!4521 (h!35186 rules!4580)) (seqFromList!3161 (_1!17402 lt!909431))) lt!909992)))

(declare-fun b_lambda!76939 () Bool)

(assert (=> (not b_lambda!76939) (not d!733170)))

(declare-fun tb!141257 () Bool)

(declare-fun t!212658 () Bool)

(assert (=> (and b!2586724 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212658) tb!141257))

(declare-fun b!2587821 () Bool)

(declare-fun e!1632672 () Bool)

(declare-fun tp!821245 () Bool)

(assert (=> b!2587821 (= e!1632672 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (dynLambda!12580 (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (seqFromList!3161 (_1!17402 lt!909431)))))) tp!821245))))

(declare-fun result!175544 () Bool)

(assert (=> tb!141257 (= result!175544 (and (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (dynLambda!12580 (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (seqFromList!3161 (_1!17402 lt!909431))))) e!1632672))))

(assert (= tb!141257 b!2587821))

(declare-fun m!2924437 () Bool)

(assert (=> b!2587821 m!2924437))

(declare-fun m!2924439 () Bool)

(assert (=> tb!141257 m!2924439))

(assert (=> d!733170 t!212658))

(declare-fun b_and!189947 () Bool)

(assert (= b_and!189917 (and (=> t!212658 result!175544) b_and!189947)))

(declare-fun t!212660 () Bool)

(declare-fun tb!141259 () Bool)

(assert (=> (and b!2586755 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212660) tb!141259))

(declare-fun result!175546 () Bool)

(assert (= result!175546 result!175544))

(assert (=> d!733170 t!212660))

(declare-fun b_and!189949 () Bool)

(assert (= b_and!189915 (and (=> t!212660 result!175546) b_and!189949)))

(declare-fun tb!141261 () Bool)

(declare-fun t!212662 () Bool)

(assert (=> (and b!2586000 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212662) tb!141261))

(declare-fun result!175548 () Bool)

(assert (= result!175548 result!175544))

(assert (=> d!733170 t!212662))

(declare-fun b_and!189951 () Bool)

(assert (= b_and!189921 (and (=> t!212662 result!175548) b_and!189951)))

(declare-fun t!212664 () Bool)

(declare-fun tb!141263 () Bool)

(assert (=> (and b!2585577 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212664) tb!141263))

(declare-fun result!175550 () Bool)

(assert (= result!175550 result!175544))

(assert (=> d!733170 t!212664))

(declare-fun b_and!189953 () Bool)

(assert (= b_and!189927 (and (=> t!212664 result!175550) b_and!189953)))

(declare-fun tb!141265 () Bool)

(declare-fun t!212666 () Bool)

(assert (=> (and b!2585586 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212666) tb!141265))

(declare-fun result!175552 () Bool)

(assert (= result!175552 result!175544))

(assert (=> d!733170 t!212666))

(declare-fun b_and!189955 () Bool)

(assert (= b_and!189929 (and (=> t!212666 result!175552) b_and!189955)))

(declare-fun tb!141267 () Bool)

(declare-fun t!212668 () Bool)

(assert (=> (and b!2585578 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212668) tb!141267))

(declare-fun result!175554 () Bool)

(assert (= result!175554 result!175544))

(assert (=> d!733170 t!212668))

(declare-fun b_and!189957 () Bool)

(assert (= b_and!189923 (and (=> t!212668 result!175554) b_and!189957)))

(declare-fun t!212670 () Bool)

(declare-fun tb!141269 () Bool)

(assert (=> (and b!2585595 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212670) tb!141269))

(declare-fun result!175556 () Bool)

(assert (= result!175556 result!175544))

(assert (=> d!733170 t!212670))

(declare-fun b_and!189959 () Bool)

(assert (= b_and!189919 (and (=> t!212670 result!175556) b_and!189959)))

(declare-fun t!212672 () Bool)

(declare-fun tb!141271 () Bool)

(assert (=> (and b!2585983 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212672) tb!141271))

(declare-fun result!175558 () Bool)

(assert (= result!175558 result!175544))

(assert (=> d!733170 t!212672))

(declare-fun b_and!189961 () Bool)

(assert (= b_and!189925 (and (=> t!212672 result!175558) b_and!189961)))

(declare-fun b_lambda!76941 () Bool)

(assert (=> (not b_lambda!76941) (not d!733170)))

(assert (=> d!733170 t!212646))

(declare-fun b_and!189963 () Bool)

(assert (= b_and!189935 (and (=> t!212646 result!175532) b_and!189963)))

(assert (=> d!733170 t!212656))

(declare-fun b_and!189965 () Bool)

(assert (= b_and!189945 (and (=> t!212656 result!175542) b_and!189965)))

(assert (=> d!733170 t!212650))

(declare-fun b_and!189967 () Bool)

(assert (= b_and!189939 (and (=> t!212650 result!175536) b_and!189967)))

(assert (=> d!733170 t!212644))

(declare-fun b_and!189969 () Bool)

(assert (= b_and!189933 (and (=> t!212644 result!175530) b_and!189969)))

(assert (=> d!733170 t!212648))

(declare-fun b_and!189971 () Bool)

(assert (= b_and!189937 (and (=> t!212648 result!175534) b_and!189971)))

(assert (=> d!733170 t!212652))

(declare-fun b_and!189973 () Bool)

(assert (= b_and!189941 (and (=> t!212652 result!175538) b_and!189973)))

(assert (=> d!733170 t!212654))

(declare-fun b_and!189975 () Bool)

(assert (= b_and!189943 (and (=> t!212654 result!175540) b_and!189975)))

(assert (=> d!733170 t!212642))

(declare-fun b_and!189977 () Bool)

(assert (= b_and!189931 (and (=> t!212642 result!175528) b_and!189977)))

(assert (=> d!733170 m!2922279))

(assert (=> d!733170 m!2924425))

(assert (=> d!733170 m!2922279))

(assert (=> d!733170 m!2924413))

(assert (=> d!733170 m!2922279))

(declare-fun m!2924447 () Bool)

(assert (=> d!733170 m!2924447))

(assert (=> d!733170 m!2924425))

(declare-fun m!2924449 () Bool)

(assert (=> d!733170 m!2924449))

(assert (=> d!733170 m!2924449))

(declare-fun m!2924451 () Bool)

(assert (=> d!733170 m!2924451))

(assert (=> b!2586107 d!733170))

(assert (=> b!2586107 d!732242))

(assert (=> b!2586107 d!732822))

(declare-fun d!733184 () Bool)

(assert (=> d!733184 (= (seqFromList!3161 (_1!17402 lt!909431)) (fromListB!1430 (_1!17402 lt!909431)))))

(declare-fun bs!471940 () Bool)

(assert (= bs!471940 d!733184))

(declare-fun m!2924457 () Bool)

(assert (=> bs!471940 m!2924457))

(assert (=> b!2586107 d!733184))

(assert (=> b!2586107 d!732410))

(declare-fun d!733188 () Bool)

(assert (=> d!733188 (= (isEmpty!17110 (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))) ((_ is Nil!29765) (_1!17402 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 (size!23078 Nil!29765) input!3654 input!3654 (size!23078 input!3654)))))))

(assert (=> b!2586107 d!733188))

(declare-fun bs!471941 () Bool)

(declare-fun d!733190 () Bool)

(assert (= bs!471941 (and d!733190 d!732278)))

(declare-fun lambda!95859 () Int)

(assert (=> bs!471941 (= lambda!95859 lambda!95811)))

(declare-fun bs!471942 () Bool)

(assert (= bs!471942 (and d!733190 d!732122)))

(assert (=> bs!471942 (= lambda!95859 lambda!95796)))

(declare-fun bs!471943 () Bool)

(assert (= bs!471943 (and d!733190 d!732464)))

(assert (=> bs!471943 (= lambda!95859 lambda!95830)))

(declare-fun bs!471944 () Bool)

(assert (= bs!471944 (and d!733190 d!732764)))

(assert (=> bs!471944 (= lambda!95859 lambda!95850)))

(declare-fun bs!471945 () Bool)

(assert (= bs!471945 (and d!733190 d!732314)))

(assert (=> bs!471945 (= lambda!95859 lambda!95814)))

(declare-fun bs!471946 () Bool)

(assert (= bs!471946 (and d!733190 d!732250)))

(assert (=> bs!471946 (= lambda!95859 lambda!95810)))

(declare-fun bs!471947 () Bool)

(assert (= bs!471947 (and d!733190 d!733096)))

(assert (=> bs!471947 (= lambda!95859 lambda!95856)))

(assert (=> d!733190 true))

(declare-fun lt!909994 () Bool)

(assert (=> d!733190 (= lt!909994 (forall!6067 (t!212231 rs!798) lambda!95859))))

(declare-fun e!1632676 () Bool)

(assert (=> d!733190 (= lt!909994 e!1632676)))

(declare-fun res!1088226 () Bool)

(assert (=> d!733190 (=> res!1088226 e!1632676)))

(assert (=> d!733190 (= res!1088226 (not ((_ is Cons!29766) (t!212231 rs!798))))))

(assert (=> d!733190 (= (rulesValidInductive!1595 thiss!28211 (t!212231 rs!798)) lt!909994)))

(declare-fun b!2587829 () Bool)

(declare-fun e!1632677 () Bool)

(assert (=> b!2587829 (= e!1632676 e!1632677)))

(declare-fun res!1088225 () Bool)

(assert (=> b!2587829 (=> (not res!1088225) (not e!1632677))))

(assert (=> b!2587829 (= res!1088225 (ruleValid!1527 thiss!28211 (h!35186 (t!212231 rs!798))))))

(declare-fun b!2587830 () Bool)

(assert (=> b!2587830 (= e!1632677 (rulesValidInductive!1595 thiss!28211 (t!212231 (t!212231 rs!798))))))

(assert (= (and d!733190 (not res!1088226)) b!2587829))

(assert (= (and b!2587829 res!1088225) b!2587830))

(declare-fun m!2924467 () Bool)

(assert (=> d!733190 m!2924467))

(declare-fun m!2924469 () Bool)

(assert (=> b!2587829 m!2924469))

(assert (=> b!2587830 m!2923405))

(assert (=> b!2586525 d!733190))

(declare-fun b!2587835 () Bool)

(declare-fun e!1632680 () List!29865)

(assert (=> b!2587835 (= e!1632680 (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562)))))))

(declare-fun d!733194 () Bool)

(declare-fun e!1632681 () Bool)

(assert (=> d!733194 e!1632681))

(declare-fun res!1088227 () Bool)

(assert (=> d!733194 (=> (not res!1088227) (not e!1632681))))

(declare-fun lt!909995 () List!29865)

(assert (=> d!733194 (= res!1088227 (= (content!4114 lt!909995) ((_ map or) (content!4114 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562))))) (content!4114 (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562))))))))))

(assert (=> d!733194 (= lt!909995 e!1632680)))

(declare-fun c!417348 () Bool)

(assert (=> d!733194 (= c!417348 ((_ is Nil!29765) (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562))))))))

(assert (=> d!733194 (= (++!7311 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562)))) (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562))))) lt!909995)))

(declare-fun b!2587836 () Bool)

(assert (=> b!2587836 (= e!1632680 (Cons!29765 (h!35185 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562))))) (++!7311 (t!212230 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562))))) (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562)))))))))

(declare-fun b!2587837 () Bool)

(declare-fun res!1088228 () Bool)

(assert (=> b!2587837 (=> (not res!1088228) (not e!1632681))))

(assert (=> b!2587837 (= res!1088228 (= (size!23078 lt!909995) (+ (size!23078 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562))))) (size!23078 (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562))))))))))

(declare-fun b!2587838 () Bool)

(assert (=> b!2587838 (= e!1632681 (or (not (= (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562)))) Nil!29765)) (= lt!909995 (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562)))))))))

(assert (= (and d!733194 c!417348) b!2587835))

(assert (= (and d!733194 (not c!417348)) b!2587836))

(assert (= (and d!733194 res!1088227) b!2587837))

(assert (= (and b!2587837 res!1088228) b!2587838))

(declare-fun m!2924479 () Bool)

(assert (=> d!733194 m!2924479))

(assert (=> d!733194 m!2922427))

(declare-fun m!2924481 () Bool)

(assert (=> d!733194 m!2924481))

(assert (=> d!733194 m!2922429))

(declare-fun m!2924483 () Bool)

(assert (=> d!733194 m!2924483))

(assert (=> b!2587836 m!2922429))

(declare-fun m!2924485 () Bool)

(assert (=> b!2587836 m!2924485))

(declare-fun m!2924487 () Bool)

(assert (=> b!2587837 m!2924487))

(assert (=> b!2587837 m!2922427))

(declare-fun m!2924489 () Bool)

(assert (=> b!2587837 m!2924489))

(assert (=> b!2587837 m!2922429))

(declare-fun m!2924491 () Bool)

(assert (=> b!2587837 m!2924491))

(assert (=> b!2586214 d!733194))

(declare-fun b!2587840 () Bool)

(declare-fun e!1632682 () List!29865)

(declare-fun e!1632683 () List!29865)

(assert (=> b!2587840 (= e!1632682 e!1632683)))

(declare-fun c!417350 () Bool)

(assert (=> b!2587840 (= c!417350 ((_ is Leaf!14169) (left!22688 (c!416819 (charsOf!2850 token!562)))))))

(declare-fun d!733200 () Bool)

(declare-fun c!417349 () Bool)

(assert (=> d!733200 (= c!417349 ((_ is Empty!9287) (left!22688 (c!416819 (charsOf!2850 token!562)))))))

(assert (=> d!733200 (= (list!11254 (left!22688 (c!416819 (charsOf!2850 token!562)))) e!1632682)))

(declare-fun b!2587841 () Bool)

(assert (=> b!2587841 (= e!1632683 (list!11256 (xs!12271 (left!22688 (c!416819 (charsOf!2850 token!562))))))))

(declare-fun b!2587839 () Bool)

(assert (=> b!2587839 (= e!1632682 Nil!29765)))

(declare-fun b!2587842 () Bool)

(assert (=> b!2587842 (= e!1632683 (++!7311 (list!11254 (left!22688 (left!22688 (c!416819 (charsOf!2850 token!562))))) (list!11254 (right!23018 (left!22688 (c!416819 (charsOf!2850 token!562)))))))))

(assert (= (and d!733200 c!417349) b!2587839))

(assert (= (and d!733200 (not c!417349)) b!2587840))

(assert (= (and b!2587840 c!417350) b!2587841))

(assert (= (and b!2587840 (not c!417350)) b!2587842))

(declare-fun m!2924493 () Bool)

(assert (=> b!2587841 m!2924493))

(declare-fun m!2924495 () Bool)

(assert (=> b!2587842 m!2924495))

(declare-fun m!2924497 () Bool)

(assert (=> b!2587842 m!2924497))

(assert (=> b!2587842 m!2924495))

(assert (=> b!2587842 m!2924497))

(declare-fun m!2924499 () Bool)

(assert (=> b!2587842 m!2924499))

(assert (=> b!2586214 d!733200))

(declare-fun b!2587853 () Bool)

(declare-fun e!1632691 () List!29865)

(declare-fun e!1632692 () List!29865)

(assert (=> b!2587853 (= e!1632691 e!1632692)))

(declare-fun c!417354 () Bool)

(assert (=> b!2587853 (= c!417354 ((_ is Leaf!14169) (right!23018 (c!416819 (charsOf!2850 token!562)))))))

(declare-fun d!733204 () Bool)

(declare-fun c!417353 () Bool)

(assert (=> d!733204 (= c!417353 ((_ is Empty!9287) (right!23018 (c!416819 (charsOf!2850 token!562)))))))

(assert (=> d!733204 (= (list!11254 (right!23018 (c!416819 (charsOf!2850 token!562)))) e!1632691)))

(declare-fun b!2587854 () Bool)

(assert (=> b!2587854 (= e!1632692 (list!11256 (xs!12271 (right!23018 (c!416819 (charsOf!2850 token!562))))))))

(declare-fun b!2587852 () Bool)

(assert (=> b!2587852 (= e!1632691 Nil!29765)))

(declare-fun b!2587855 () Bool)

(assert (=> b!2587855 (= e!1632692 (++!7311 (list!11254 (left!22688 (right!23018 (c!416819 (charsOf!2850 token!562))))) (list!11254 (right!23018 (right!23018 (c!416819 (charsOf!2850 token!562)))))))))

(assert (= (and d!733204 c!417353) b!2587852))

(assert (= (and d!733204 (not c!417353)) b!2587853))

(assert (= (and b!2587853 c!417354) b!2587854))

(assert (= (and b!2587853 (not c!417354)) b!2587855))

(declare-fun m!2924501 () Bool)

(assert (=> b!2587854 m!2924501))

(declare-fun m!2924503 () Bool)

(assert (=> b!2587855 m!2924503))

(declare-fun m!2924505 () Bool)

(assert (=> b!2587855 m!2924505))

(assert (=> b!2587855 m!2924503))

(assert (=> b!2587855 m!2924505))

(declare-fun m!2924507 () Bool)

(assert (=> b!2587855 m!2924507))

(assert (=> b!2586214 d!733204))

(declare-fun d!733206 () Bool)

(declare-fun e!1632693 () Bool)

(assert (=> d!733206 e!1632693))

(declare-fun res!1088234 () Bool)

(assert (=> d!733206 (=> (not res!1088234) (not e!1632693))))

(declare-fun lt!909996 () BalanceConc!18188)

(assert (=> d!733206 (= res!1088234 (= (list!11253 lt!909996) (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))))))

(assert (=> d!733206 (= lt!909996 (BalanceConc!18189 (fromList!562 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!733206 (= (fromListB!1430 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268)))) lt!909996)))

(declare-fun b!2587856 () Bool)

(assert (=> b!2587856 (= e!1632693 (isBalanced!2834 (fromList!562 (originalCharacters!5287 (_1!17401 (get!9380 lt!909268))))))))

(assert (= (and d!733206 res!1088234) b!2587856))

(declare-fun m!2924509 () Bool)

(assert (=> d!733206 m!2924509))

(declare-fun m!2924511 () Bool)

(assert (=> d!733206 m!2924511))

(assert (=> b!2587856 m!2924511))

(assert (=> b!2587856 m!2924511))

(declare-fun m!2924513 () Bool)

(assert (=> b!2587856 m!2924513))

(assert (=> d!732236 d!733206))

(declare-fun d!733208 () Bool)

(assert (=> d!733208 (= (inv!40201 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))) (isBalanced!2834 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun bs!471948 () Bool)

(assert (= bs!471948 d!733208))

(declare-fun m!2924515 () Bool)

(assert (=> bs!471948 m!2924515))

(assert (=> tb!140985 d!733208))

(declare-fun d!733210 () Bool)

(assert (=> d!733210 (= (nullable!2570 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (nullableFct!788 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun bs!471949 () Bool)

(assert (= bs!471949 d!733210))

(declare-fun m!2924517 () Bool)

(assert (=> bs!471949 m!2924517))

(assert (=> b!2586456 d!733210))

(declare-fun d!733212 () Bool)

(declare-fun lt!909997 () Int)

(assert (=> d!733212 (>= lt!909997 0)))

(declare-fun e!1632694 () Int)

(assert (=> d!733212 (= lt!909997 e!1632694)))

(declare-fun c!417355 () Bool)

(assert (=> d!733212 (= c!417355 ((_ is Nil!29767) lt!909446))))

(assert (=> d!733212 (= (size!23082 lt!909446) lt!909997)))

(declare-fun b!2587857 () Bool)

(assert (=> b!2587857 (= e!1632694 0)))

(declare-fun b!2587858 () Bool)

(assert (=> b!2587858 (= e!1632694 (+ 1 (size!23082 (t!212232 lt!909446))))))

(assert (= (and d!733212 c!417355) b!2587857))

(assert (= (and d!733212 (not c!417355)) b!2587858))

(declare-fun m!2924519 () Bool)

(assert (=> b!2587858 m!2924519))

(assert (=> d!732264 d!733212))

(assert (=> d!732264 d!732718))

(assert (=> bm!167011 d!732248))

(declare-fun b!2587859 () Bool)

(declare-fun e!1632700 () Bool)

(declare-fun lt!909998 () Bool)

(assert (=> b!2587859 (= e!1632700 (not lt!909998))))

(declare-fun d!733214 () Bool)

(declare-fun e!1632701 () Bool)

(assert (=> d!733214 e!1632701))

(declare-fun c!417357 () Bool)

(assert (=> d!733214 (= c!417357 ((_ is EmptyExpr!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun e!1632695 () Bool)

(assert (=> d!733214 (= lt!909998 e!1632695)))

(declare-fun c!417356 () Bool)

(assert (=> d!733214 (= c!417356 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))

(assert (=> d!733214 (validRegex!3279 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))))

(assert (=> d!733214 (= (matchR!3598 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) lt!909998)))

(declare-fun b!2587860 () Bool)

(declare-fun res!1088242 () Bool)

(declare-fun e!1632698 () Bool)

(assert (=> b!2587860 (=> (not res!1088242) (not e!1632698))))

(assert (=> b!2587860 (= res!1088242 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))))))))

(declare-fun b!2587861 () Bool)

(assert (=> b!2587861 (= e!1632695 (matchR!3598 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))))))))

(declare-fun b!2587862 () Bool)

(declare-fun res!1088235 () Bool)

(assert (=> b!2587862 (=> (not res!1088235) (not e!1632698))))

(declare-fun call!167209 () Bool)

(assert (=> b!2587862 (= res!1088235 (not call!167209))))

(declare-fun b!2587863 () Bool)

(assert (=> b!2587863 (= e!1632701 (= lt!909998 call!167209))))

(declare-fun b!2587864 () Bool)

(declare-fun res!1088241 () Bool)

(declare-fun e!1632697 () Bool)

(assert (=> b!2587864 (=> res!1088241 e!1632697)))

(assert (=> b!2587864 (= res!1088241 (not (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))))

(declare-fun b!2587865 () Bool)

(declare-fun res!1088237 () Bool)

(declare-fun e!1632699 () Bool)

(assert (=> b!2587865 (=> res!1088237 e!1632699)))

(assert (=> b!2587865 (= res!1088237 e!1632698)))

(declare-fun res!1088240 () Bool)

(assert (=> b!2587865 (=> (not res!1088240) (not e!1632698))))

(assert (=> b!2587865 (= res!1088240 lt!909998)))

(declare-fun b!2587866 () Bool)

(declare-fun e!1632696 () Bool)

(assert (=> b!2587866 (= e!1632699 e!1632696)))

(declare-fun res!1088239 () Bool)

(assert (=> b!2587866 (=> (not res!1088239) (not e!1632696))))

(assert (=> b!2587866 (= res!1088239 (not lt!909998))))

(declare-fun b!2587867 () Bool)

(declare-fun res!1088238 () Bool)

(assert (=> b!2587867 (=> res!1088238 e!1632699)))

(assert (=> b!2587867 (= res!1088238 (not ((_ is ElementMatch!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))))))

(assert (=> b!2587867 (= e!1632700 e!1632699)))

(declare-fun b!2587868 () Bool)

(assert (=> b!2587868 (= e!1632698 (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (c!416820 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))))))

(declare-fun b!2587869 () Bool)

(assert (=> b!2587869 (= e!1632695 (nullable!2570 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun b!2587870 () Bool)

(assert (=> b!2587870 (= e!1632701 e!1632700)))

(declare-fun c!417358 () Bool)

(assert (=> b!2587870 (= c!417358 ((_ is EmptyLang!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun b!2587871 () Bool)

(assert (=> b!2587871 (= e!1632697 (not (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (c!416820 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909425))))))))))

(declare-fun bm!167204 () Bool)

(assert (=> bm!167204 (= call!167209 (isEmpty!17110 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))

(declare-fun b!2587872 () Bool)

(assert (=> b!2587872 (= e!1632696 e!1632697)))

(declare-fun res!1088236 () Bool)

(assert (=> b!2587872 (=> res!1088236 e!1632697)))

(assert (=> b!2587872 (= res!1088236 call!167209)))

(assert (= (and d!733214 c!417356) b!2587869))

(assert (= (and d!733214 (not c!417356)) b!2587861))

(assert (= (and d!733214 c!417357) b!2587863))

(assert (= (and d!733214 (not c!417357)) b!2587870))

(assert (= (and b!2587870 c!417358) b!2587859))

(assert (= (and b!2587870 (not c!417358)) b!2587867))

(assert (= (and b!2587867 (not res!1088238)) b!2587865))

(assert (= (and b!2587865 res!1088240) b!2587862))

(assert (= (and b!2587862 res!1088235) b!2587860))

(assert (= (and b!2587860 res!1088242) b!2587868))

(assert (= (and b!2587865 (not res!1088237)) b!2587866))

(assert (= (and b!2587866 res!1088239) b!2587872))

(assert (= (and b!2587872 (not res!1088236)) b!2587864))

(assert (= (and b!2587864 (not res!1088241)) b!2587871))

(assert (= (or b!2587863 b!2587862 b!2587872) bm!167204))

(assert (=> bm!167204 m!2922225))

(declare-fun m!2924529 () Bool)

(assert (=> bm!167204 m!2924529))

(assert (=> b!2587861 m!2922225))

(declare-fun m!2924531 () Bool)

(assert (=> b!2587861 m!2924531))

(assert (=> b!2587861 m!2924531))

(declare-fun m!2924533 () Bool)

(assert (=> b!2587861 m!2924533))

(assert (=> b!2587861 m!2922225))

(declare-fun m!2924535 () Bool)

(assert (=> b!2587861 m!2924535))

(assert (=> b!2587861 m!2924533))

(assert (=> b!2587861 m!2924535))

(declare-fun m!2924541 () Bool)

(assert (=> b!2587861 m!2924541))

(assert (=> b!2587868 m!2922225))

(assert (=> b!2587868 m!2924531))

(assert (=> b!2587860 m!2922225))

(assert (=> b!2587860 m!2924535))

(assert (=> b!2587860 m!2924535))

(declare-fun m!2924543 () Bool)

(assert (=> b!2587860 m!2924543))

(assert (=> b!2587871 m!2922225))

(assert (=> b!2587871 m!2924531))

(assert (=> d!733214 m!2922225))

(assert (=> d!733214 m!2924529))

(declare-fun m!2924545 () Bool)

(assert (=> d!733214 m!2924545))

(assert (=> b!2587864 m!2922225))

(assert (=> b!2587864 m!2924535))

(assert (=> b!2587864 m!2924535))

(assert (=> b!2587864 m!2924543))

(declare-fun m!2924547 () Bool)

(assert (=> b!2587869 m!2924547))

(assert (=> b!2586098 d!733214))

(assert (=> b!2586098 d!732670))

(assert (=> b!2586098 d!733062))

(assert (=> b!2586098 d!733066))

(declare-fun d!733222 () Bool)

(declare-fun lt!909999 () Int)

(assert (=> d!733222 (>= lt!909999 0)))

(declare-fun e!1632704 () Int)

(assert (=> d!733222 (= lt!909999 e!1632704)))

(declare-fun c!417361 () Bool)

(assert (=> d!733222 (= c!417361 ((_ is Nil!29765) lt!909600))))

(assert (=> d!733222 (= (size!23078 lt!909600) lt!909999)))

(declare-fun b!2587877 () Bool)

(assert (=> b!2587877 (= e!1632704 0)))

(declare-fun b!2587878 () Bool)

(assert (=> b!2587878 (= e!1632704 (+ 1 (size!23078 (t!212230 lt!909600))))))

(assert (= (and d!733222 c!417361) b!2587877))

(assert (= (and d!733222 (not c!417361)) b!2587878))

(declare-fun m!2924553 () Bool)

(assert (=> b!2587878 m!2924553))

(assert (=> b!2586558 d!733222))

(declare-fun d!733226 () Bool)

(declare-fun lt!910000 () Int)

(assert (=> d!733226 (>= lt!910000 0)))

(declare-fun e!1632706 () Int)

(assert (=> d!733226 (= lt!910000 e!1632706)))

(declare-fun c!417363 () Bool)

(assert (=> d!733226 (= c!417363 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))

(assert (=> d!733226 (= (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))) lt!910000)))

(declare-fun b!2587881 () Bool)

(assert (=> b!2587881 (= e!1632706 0)))

(declare-fun b!2587882 () Bool)

(assert (=> b!2587882 (= e!1632706 (+ 1 (size!23078 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909268))))))))))

(assert (= (and d!733226 c!417363) b!2587881))

(assert (= (and d!733226 (not c!417363)) b!2587882))

(assert (=> b!2587882 m!2924289))

(assert (=> b!2586558 d!733226))

(assert (=> b!2586558 d!732240))

(declare-fun d!733230 () Bool)

(declare-fun c!417365 () Bool)

(assert (=> d!733230 (= c!417365 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))))

(declare-fun e!1632710 () Bool)

(assert (=> d!733230 (= (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))) e!1632710)))

(declare-fun b!2587892 () Bool)

(assert (=> b!2587892 (= e!1632710 (inv!40202 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))))

(declare-fun b!2587893 () Bool)

(declare-fun e!1632711 () Bool)

(assert (=> b!2587893 (= e!1632710 e!1632711)))

(declare-fun res!1088250 () Bool)

(assert (=> b!2587893 (= res!1088250 (not ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))))))

(assert (=> b!2587893 (=> res!1088250 e!1632711)))

(declare-fun b!2587894 () Bool)

(assert (=> b!2587894 (= e!1632711 (inv!40203 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))))))

(assert (= (and d!733230 c!417365) b!2587892))

(assert (= (and d!733230 (not c!417365)) b!2587893))

(assert (= (and b!2587893 (not res!1088250)) b!2587894))

(declare-fun m!2924559 () Bool)

(assert (=> b!2587892 m!2924559))

(declare-fun m!2924561 () Bool)

(assert (=> b!2587894 m!2924561))

(assert (=> b!2586565 d!733230))

(declare-fun d!733232 () Bool)

(assert (not d!733232))

(assert (=> b!2586437 d!733232))

(declare-fun d!733234 () Bool)

(declare-fun res!1088257 () Bool)

(declare-fun e!1632714 () Bool)

(assert (=> d!733234 (=> (not res!1088257) (not e!1632714))))

(assert (=> d!733234 (= res!1088257 (= (csize!18804 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) (+ (size!23086 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (size!23086 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))))

(assert (=> d!733234 (= (inv!40202 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) e!1632714)))

(declare-fun b!2587901 () Bool)

(declare-fun res!1088258 () Bool)

(assert (=> b!2587901 (=> (not res!1088258) (not e!1632714))))

(assert (=> b!2587901 (= res!1088258 (and (not (= (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) Empty!9287)) (not (= (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) Empty!9287))))))

(declare-fun b!2587902 () Bool)

(declare-fun res!1088259 () Bool)

(assert (=> b!2587902 (=> (not res!1088259) (not e!1632714))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2587902 (= res!1088259 (= (cheight!9498 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))) (+ (max!0 (height!1347 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) (height!1347 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) 1)))))

(declare-fun b!2587903 () Bool)

(assert (=> b!2587903 (= e!1632714 (<= 0 (cheight!9498 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))))

(assert (= (and d!733234 res!1088257) b!2587901))

(assert (= (and b!2587901 res!1088258) b!2587902))

(assert (= (and b!2587902 res!1088259) b!2587903))

(declare-fun m!2924591 () Bool)

(assert (=> d!733234 m!2924591))

(declare-fun m!2924593 () Bool)

(assert (=> d!733234 m!2924593))

(assert (=> b!2587902 m!2923999))

(assert (=> b!2587902 m!2924001))

(assert (=> b!2587902 m!2923999))

(assert (=> b!2587902 m!2924001))

(declare-fun m!2924595 () Bool)

(assert (=> b!2587902 m!2924595))

(assert (=> b!2586553 d!733234))

(declare-fun b!2587913 () Bool)

(declare-fun e!1632727 () Bool)

(declare-fun lt!910006 () Bool)

(assert (=> b!2587913 (= e!1632727 (not lt!910006))))

(declare-fun d!733238 () Bool)

(declare-fun e!1632728 () Bool)

(assert (=> d!733238 e!1632728))

(declare-fun c!417369 () Bool)

(assert (=> d!733238 (= c!417369 ((_ is EmptyExpr!7665) (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun e!1632722 () Bool)

(assert (=> d!733238 (= lt!910006 e!1632722)))

(declare-fun c!417368 () Bool)

(assert (=> d!733238 (= c!417368 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> d!733238 (validRegex!3279 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> d!733238 (= (matchR!3598 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) lt!910006)))

(declare-fun b!2587914 () Bool)

(declare-fun res!1088272 () Bool)

(declare-fun e!1632725 () Bool)

(assert (=> b!2587914 (=> (not res!1088272) (not e!1632725))))

(assert (=> b!2587914 (= res!1088272 (isEmpty!17110 (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2587915 () Bool)

(assert (=> b!2587915 (= e!1632722 (matchR!3598 (derivativeStep!2222 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))) (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2587916 () Bool)

(declare-fun res!1088265 () Bool)

(assert (=> b!2587916 (=> (not res!1088265) (not e!1632725))))

(declare-fun call!167214 () Bool)

(assert (=> b!2587916 (= res!1088265 (not call!167214))))

(declare-fun b!2587917 () Bool)

(assert (=> b!2587917 (= e!1632728 (= lt!910006 call!167214))))

(declare-fun b!2587918 () Bool)

(declare-fun res!1088271 () Bool)

(declare-fun e!1632724 () Bool)

(assert (=> b!2587918 (=> res!1088271 e!1632724)))

(assert (=> b!2587918 (= res!1088271 (not (isEmpty!17110 (tail!4135 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))))

(declare-fun b!2587919 () Bool)

(declare-fun res!1088267 () Bool)

(declare-fun e!1632726 () Bool)

(assert (=> b!2587919 (=> res!1088267 e!1632726)))

(assert (=> b!2587919 (= res!1088267 e!1632725)))

(declare-fun res!1088270 () Bool)

(assert (=> b!2587919 (=> (not res!1088270) (not e!1632725))))

(assert (=> b!2587919 (= res!1088270 lt!910006)))

(declare-fun b!2587920 () Bool)

(declare-fun e!1632723 () Bool)

(assert (=> b!2587920 (= e!1632726 e!1632723)))

(declare-fun res!1088269 () Bool)

(assert (=> b!2587920 (=> (not res!1088269) (not e!1632723))))

(assert (=> b!2587920 (= res!1088269 (not lt!910006))))

(declare-fun b!2587921 () Bool)

(declare-fun res!1088268 () Bool)

(assert (=> b!2587921 (=> res!1088268 e!1632726)))

(assert (=> b!2587921 (= res!1088268 (not ((_ is ElementMatch!7665) (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))))

(assert (=> b!2587921 (= e!1632727 e!1632726)))

(declare-fun b!2587922 () Bool)

(assert (=> b!2587922 (= e!1632725 (= (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (c!416820 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))))

(declare-fun b!2587923 () Bool)

(assert (=> b!2587923 (= e!1632722 (nullable!2570 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2587924 () Bool)

(assert (=> b!2587924 (= e!1632728 e!1632727)))

(declare-fun c!417370 () Bool)

(assert (=> b!2587924 (= c!417370 ((_ is EmptyLang!7665) (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))

(declare-fun b!2587925 () Bool)

(assert (=> b!2587925 (= e!1632724 (not (= (head!5862 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) (c!416820 (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))))))))))

(declare-fun bm!167209 () Bool)

(assert (=> bm!167209 (= call!167214 (isEmpty!17110 (tail!4135 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587926 () Bool)

(assert (=> b!2587926 (= e!1632723 e!1632724)))

(declare-fun res!1088266 () Bool)

(assert (=> b!2587926 (=> res!1088266 e!1632724)))

(assert (=> b!2587926 (= res!1088266 call!167214)))

(assert (= (and d!733238 c!417368) b!2587923))

(assert (= (and d!733238 (not c!417368)) b!2587915))

(assert (= (and d!733238 c!417369) b!2587917))

(assert (= (and d!733238 (not c!417369)) b!2587924))

(assert (= (and b!2587924 c!417370) b!2587913))

(assert (= (and b!2587924 (not c!417370)) b!2587921))

(assert (= (and b!2587921 (not res!1088268)) b!2587919))

(assert (= (and b!2587919 res!1088270) b!2587916))

(assert (= (and b!2587916 res!1088265) b!2587914))

(assert (= (and b!2587914 res!1088272) b!2587922))

(assert (= (and b!2587919 (not res!1088267)) b!2587920))

(assert (= (and b!2587920 res!1088269) b!2587926))

(assert (= (and b!2587926 (not res!1088266)) b!2587918))

(assert (= (and b!2587918 (not res!1088271)) b!2587925))

(assert (= (or b!2587917 b!2587916 b!2587926) bm!167209))

(assert (=> bm!167209 m!2922685))

(assert (=> bm!167209 m!2922691))

(assert (=> b!2587915 m!2922685))

(declare-fun m!2924603 () Bool)

(assert (=> b!2587915 m!2924603))

(assert (=> b!2587915 m!2922683))

(assert (=> b!2587915 m!2924603))

(declare-fun m!2924605 () Bool)

(assert (=> b!2587915 m!2924605))

(assert (=> b!2587915 m!2922685))

(declare-fun m!2924609 () Bool)

(assert (=> b!2587915 m!2924609))

(assert (=> b!2587915 m!2924605))

(assert (=> b!2587915 m!2924609))

(declare-fun m!2924611 () Bool)

(assert (=> b!2587915 m!2924611))

(assert (=> b!2587922 m!2922685))

(assert (=> b!2587922 m!2924603))

(assert (=> b!2587914 m!2922685))

(assert (=> b!2587914 m!2924609))

(assert (=> b!2587914 m!2924609))

(declare-fun m!2924613 () Bool)

(assert (=> b!2587914 m!2924613))

(assert (=> b!2587925 m!2922685))

(assert (=> b!2587925 m!2924603))

(assert (=> d!733238 m!2922685))

(assert (=> d!733238 m!2922691))

(assert (=> d!733238 m!2922683))

(declare-fun m!2924615 () Bool)

(assert (=> d!733238 m!2924615))

(assert (=> b!2587918 m!2922685))

(assert (=> b!2587918 m!2924609))

(assert (=> b!2587918 m!2924609))

(assert (=> b!2587918 m!2924613))

(assert (=> b!2587923 m!2922683))

(declare-fun m!2924617 () Bool)

(assert (=> b!2587923 m!2924617))

(assert (=> b!2586448 d!733238))

(declare-fun bm!167210 () Bool)

(declare-fun call!167218 () Regex!7665)

(declare-fun c!417373 () Bool)

(assert (=> bm!167210 (= call!167218 (derivativeStep!2222 (ite c!417373 (regTwo!15843 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (regOne!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun bm!167211 () Bool)

(declare-fun call!167217 () Regex!7665)

(declare-fun call!167215 () Regex!7665)

(assert (=> bm!167211 (= call!167217 call!167215)))

(declare-fun c!417374 () Bool)

(declare-fun call!167216 () Regex!7665)

(declare-fun c!417376 () Bool)

(declare-fun bm!167212 () Bool)

(assert (=> bm!167212 (= call!167216 (derivativeStep!2222 (ite c!417373 (regOne!15843 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (ite c!417374 (reg!7994 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (ite c!417376 (regTwo!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (regOne!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))))))

(declare-fun b!2587929 () Bool)

(declare-fun e!1632734 () Regex!7665)

(assert (=> b!2587929 (= e!1632734 (ite (= (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381))))) (c!416820 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) EmptyExpr!7665 EmptyLang!7665))))

(declare-fun d!733244 () Bool)

(declare-fun lt!910009 () Regex!7665)

(assert (=> d!733244 (validRegex!3279 lt!910009)))

(declare-fun e!1632732 () Regex!7665)

(assert (=> d!733244 (= lt!910009 e!1632732)))

(declare-fun c!417372 () Bool)

(assert (=> d!733244 (= c!417372 (or ((_ is EmptyExpr!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) ((_ is EmptyLang!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> d!733244 (validRegex!3279 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))

(assert (=> d!733244 (= (derivativeStep!2222 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))) (head!5862 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909381)))))) lt!910009)))

(declare-fun b!2587930 () Bool)

(assert (=> b!2587930 (= e!1632732 EmptyLang!7665)))

(declare-fun b!2587931 () Bool)

(assert (=> b!2587931 (= c!417373 ((_ is Union!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun e!1632733 () Regex!7665)

(assert (=> b!2587931 (= e!1632734 e!1632733)))

(declare-fun b!2587932 () Bool)

(declare-fun e!1632730 () Regex!7665)

(assert (=> b!2587932 (= e!1632733 e!1632730)))

(assert (=> b!2587932 (= c!417374 ((_ is Star!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2587933 () Bool)

(declare-fun e!1632731 () Regex!7665)

(assert (=> b!2587933 (= e!1632731 (Union!7665 (Concat!12409 call!167217 (regTwo!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) EmptyLang!7665))))

(declare-fun b!2587934 () Bool)

(assert (=> b!2587934 (= c!417376 (nullable!2570 (regOne!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))))))

(assert (=> b!2587934 (= e!1632730 e!1632731)))

(declare-fun b!2587935 () Bool)

(assert (=> b!2587935 (= e!1632732 e!1632734)))

(declare-fun c!417375 () Bool)

(assert (=> b!2587935 (= c!417375 ((_ is ElementMatch!7665) (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(declare-fun b!2587936 () Bool)

(assert (=> b!2587936 (= e!1632733 (Union!7665 call!167216 call!167218))))

(declare-fun bm!167213 () Bool)

(assert (=> bm!167213 (= call!167215 call!167216)))

(declare-fun b!2587937 () Bool)

(assert (=> b!2587937 (= e!1632731 (Union!7665 (Concat!12409 call!167218 (regTwo!15842 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) call!167217))))

(declare-fun b!2587938 () Bool)

(assert (=> b!2587938 (= e!1632730 (Concat!12409 call!167215 (regex!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))))

(assert (= (and d!733244 c!417372) b!2587930))

(assert (= (and d!733244 (not c!417372)) b!2587935))

(assert (= (and b!2587935 c!417375) b!2587929))

(assert (= (and b!2587935 (not c!417375)) b!2587931))

(assert (= (and b!2587931 c!417373) b!2587936))

(assert (= (and b!2587931 (not c!417373)) b!2587932))

(assert (= (and b!2587932 c!417374) b!2587938))

(assert (= (and b!2587932 (not c!417374)) b!2587934))

(assert (= (and b!2587934 c!417376) b!2587937))

(assert (= (and b!2587934 (not c!417376)) b!2587933))

(assert (= (or b!2587937 b!2587933) bm!167211))

(assert (= (or b!2587938 bm!167211) bm!167213))

(assert (= (or b!2587936 b!2587937) bm!167210))

(assert (= (or b!2587936 bm!167213) bm!167212))

(assert (=> bm!167210 m!2922681))

(declare-fun m!2924623 () Bool)

(assert (=> bm!167210 m!2924623))

(assert (=> bm!167212 m!2922681))

(declare-fun m!2924625 () Bool)

(assert (=> bm!167212 m!2924625))

(declare-fun m!2924627 () Bool)

(assert (=> d!733244 m!2924627))

(assert (=> d!733244 m!2922695))

(declare-fun m!2924629 () Bool)

(assert (=> b!2587934 m!2924629))

(assert (=> b!2586448 d!733244))

(assert (=> b!2586448 d!732722))

(assert (=> b!2586448 d!732848))

(declare-fun d!733248 () Bool)

(assert (=> d!733248 (= ($colon$colon!544 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95783) (dynLambda!12586 lambda!95783 (h!35186 (t!212231 rs!798)))) (Cons!29767 (dynLambda!12586 lambda!95783 (h!35186 (t!212231 rs!798))) (map!6607 (t!212231 (t!212231 rs!798)) lambda!95783)))))

(assert (=> b!2586464 d!733248))

(declare-fun d!733250 () Bool)

(declare-fun lt!910010 () List!29867)

(assert (=> d!733250 (= (size!23082 lt!910010) (size!23083 (t!212231 (t!212231 rs!798))))))

(declare-fun e!1632735 () List!29867)

(assert (=> d!733250 (= lt!910010 e!1632735)))

(declare-fun c!417377 () Bool)

(assert (=> d!733250 (= c!417377 ((_ is Nil!29766) (t!212231 (t!212231 rs!798))))))

(assert (=> d!733250 (= (map!6607 (t!212231 (t!212231 rs!798)) lambda!95783) lt!910010)))

(declare-fun b!2587939 () Bool)

(assert (=> b!2587939 (= e!1632735 Nil!29767)))

(declare-fun b!2587940 () Bool)

(assert (=> b!2587940 (= e!1632735 ($colon$colon!544 (map!6607 (t!212231 (t!212231 (t!212231 rs!798))) lambda!95783) (dynLambda!12586 lambda!95783 (h!35186 (t!212231 (t!212231 rs!798))))))))

(assert (= (and d!733250 c!417377) b!2587939))

(assert (= (and d!733250 (not c!417377)) b!2587940))

(declare-fun b_lambda!76945 () Bool)

(assert (=> (not b_lambda!76945) (not b!2587940)))

(declare-fun m!2924631 () Bool)

(assert (=> d!733250 m!2924631))

(assert (=> d!733250 m!2923313))

(declare-fun m!2924633 () Bool)

(assert (=> b!2587940 m!2924633))

(declare-fun m!2924635 () Bool)

(assert (=> b!2587940 m!2924635))

(assert (=> b!2587940 m!2924633))

(assert (=> b!2587940 m!2924635))

(declare-fun m!2924637 () Bool)

(assert (=> b!2587940 m!2924637))

(assert (=> b!2586464 d!733250))

(assert (=> d!732260 d!732178))

(assert (=> d!732260 d!732080))

(assert (=> d!732260 d!732268))

(assert (=> d!732260 d!732272))

(assert (=> d!732260 d!732276))

(declare-fun d!733252 () Bool)

(assert (=> d!733252 (= (maxPrefixOneRule!1456 thiss!28211 rule!570 input!3654) (Some!5935 (tuple2!29719 (Token!8513 (apply!7026 (transformation!4521 rule!570) (seqFromList!3161 lt!909343)) rule!570 (size!23078 lt!909343) lt!909343) suffix!1684)))))

(assert (=> d!733252 true))

(declare-fun _$59!348 () Unit!43600)

(assert (=> d!733252 (= (choose!15238 thiss!28211 rules!4580 lt!909343 input!3654 suffix!1684 rule!570) _$59!348)))

(declare-fun bs!471957 () Bool)

(assert (= bs!471957 d!733252))

(assert (=> bs!471957 m!2921723))

(assert (=> bs!471957 m!2921977))

(assert (=> bs!471957 m!2921977))

(assert (=> bs!471957 m!2921979))

(assert (=> bs!471957 m!2921985))

(assert (=> d!732260 d!733252))

(assert (=> d!732278 d!733190))

(declare-fun d!733254 () Bool)

(declare-fun res!1088273 () Bool)

(declare-fun e!1632737 () Bool)

(assert (=> d!733254 (=> res!1088273 e!1632737)))

(assert (=> d!733254 (= res!1088273 ((_ is Nil!29766) (t!212231 rs!798)))))

(assert (=> d!733254 (= (forall!6067 (t!212231 rs!798) lambda!95811) e!1632737)))

(declare-fun b!2587941 () Bool)

(declare-fun e!1632738 () Bool)

(assert (=> b!2587941 (= e!1632737 e!1632738)))

(declare-fun res!1088274 () Bool)

(assert (=> b!2587941 (=> (not res!1088274) (not e!1632738))))

(assert (=> b!2587941 (= res!1088274 (dynLambda!12596 lambda!95811 (h!35186 (t!212231 rs!798))))))

(declare-fun b!2587942 () Bool)

(assert (=> b!2587942 (= e!1632738 (forall!6067 (t!212231 (t!212231 rs!798)) lambda!95811))))

(assert (= (and d!733254 (not res!1088273)) b!2587941))

(assert (= (and b!2587941 res!1088274) b!2587942))

(declare-fun b_lambda!76947 () Bool)

(assert (=> (not b_lambda!76947) (not b!2587941)))

(declare-fun m!2924641 () Bool)

(assert (=> b!2587941 m!2924641))

(declare-fun m!2924643 () Bool)

(assert (=> b!2587942 m!2924643))

(assert (=> d!732278 d!733254))

(assert (=> b!2586629 d!732830))

(declare-fun d!733256 () Bool)

(declare-fun res!1088275 () Bool)

(declare-fun e!1632739 () Bool)

(assert (=> d!733256 (=> res!1088275 e!1632739)))

(assert (=> d!733256 (= res!1088275 ((_ is Nil!29766) rules!4580))))

(assert (=> d!733256 (= (forall!6067 rules!4580 lambda!95810) e!1632739)))

(declare-fun b!2587943 () Bool)

(declare-fun e!1632740 () Bool)

(assert (=> b!2587943 (= e!1632739 e!1632740)))

(declare-fun res!1088276 () Bool)

(assert (=> b!2587943 (=> (not res!1088276) (not e!1632740))))

(assert (=> b!2587943 (= res!1088276 (dynLambda!12596 lambda!95810 (h!35186 rules!4580)))))

(declare-fun b!2587944 () Bool)

(assert (=> b!2587944 (= e!1632740 (forall!6067 (t!212231 rules!4580) lambda!95810))))

(assert (= (and d!733256 (not res!1088275)) b!2587943))

(assert (= (and b!2587943 res!1088276) b!2587944))

(declare-fun b_lambda!76949 () Bool)

(assert (=> (not b_lambda!76949) (not b!2587943)))

(declare-fun m!2924645 () Bool)

(assert (=> b!2587943 m!2924645))

(declare-fun m!2924647 () Bool)

(assert (=> b!2587944 m!2924647))

(assert (=> d!732250 d!733256))

(assert (=> b!2586507 d!732682))

(declare-fun d!733258 () Bool)

(assert (=> d!733258 (= (isEmpty!17111 lt!909429) (not ((_ is Some!5935) lt!909429)))))

(assert (=> d!732226 d!733258))

(declare-fun d!733260 () Bool)

(assert (=> d!733260 (= (isEmpty!17110 (_1!17402 lt!909431)) ((_ is Nil!29765) (_1!17402 lt!909431)))))

(assert (=> d!732226 d!733260))

(declare-fun d!733262 () Bool)

(declare-fun lt!910016 () tuple2!29720)

(assert (=> d!733262 (= (++!7311 (_1!17402 lt!910016) (_2!17402 lt!910016)) input!3654)))

(assert (=> d!733262 (= lt!910016 (findLongestMatchInner!756 (regex!4521 (h!35186 rules!4580)) Nil!29765 0 input!3654 input!3654 (sizeTr!139 input!3654 0)))))

(declare-fun lt!910017 () Unit!43600)

(declare-fun lt!910012 () Unit!43600)

(assert (=> d!733262 (= lt!910017 lt!910012)))

(declare-fun lt!910011 () List!29865)

(declare-fun lt!910018 () Int)

(assert (=> d!733262 (= (sizeTr!139 lt!910011 lt!910018) (+ (size!23078 lt!910011) lt!910018))))

(assert (=> d!733262 (= lt!910012 (lemmaSizeTrEqualsSize!138 lt!910011 lt!910018))))

(assert (=> d!733262 (= lt!910018 0)))

(assert (=> d!733262 (= lt!910011 Nil!29765)))

(declare-fun lt!910013 () Unit!43600)

(declare-fun lt!910014 () Unit!43600)

(assert (=> d!733262 (= lt!910013 lt!910014)))

(declare-fun lt!910015 () Int)

(assert (=> d!733262 (= (sizeTr!139 input!3654 lt!910015) (+ (size!23078 input!3654) lt!910015))))

(assert (=> d!733262 (= lt!910014 (lemmaSizeTrEqualsSize!138 input!3654 lt!910015))))

(assert (=> d!733262 (= lt!910015 0)))

(assert (=> d!733262 (validRegex!3279 (regex!4521 (h!35186 rules!4580)))))

(assert (=> d!733262 (= (findLongestMatch!685 (regex!4521 (h!35186 rules!4580)) input!3654) lt!910016)))

(declare-fun bs!471958 () Bool)

(assert (= bs!471958 d!733262))

(assert (=> bs!471958 m!2923579))

(declare-fun m!2924649 () Bool)

(assert (=> bs!471958 m!2924649))

(declare-fun m!2924651 () Bool)

(assert (=> bs!471958 m!2924651))

(assert (=> bs!471958 m!2922189))

(declare-fun m!2924653 () Bool)

(assert (=> bs!471958 m!2924653))

(declare-fun m!2924655 () Bool)

(assert (=> bs!471958 m!2924655))

(declare-fun m!2924657 () Bool)

(assert (=> bs!471958 m!2924657))

(assert (=> bs!471958 m!2922189))

(assert (=> bs!471958 m!2921793))

(declare-fun m!2924661 () Bool)

(assert (=> bs!471958 m!2924661))

(declare-fun m!2924663 () Bool)

(assert (=> bs!471958 m!2924663))

(assert (=> d!732226 d!733262))

(assert (=> d!732226 d!733084))

(declare-fun b!2587945 () Bool)

(declare-fun e!1632741 () List!29865)

(assert (=> b!2587945 (= e!1632741 (_2!17401 (get!9380 lt!909425)))))

(declare-fun d!733266 () Bool)

(declare-fun e!1632742 () Bool)

(assert (=> d!733266 e!1632742))

(declare-fun res!1088277 () Bool)

(assert (=> d!733266 (=> (not res!1088277) (not e!1632742))))

(declare-fun lt!910019 () List!29865)

(assert (=> d!733266 (= res!1088277 (= (content!4114 lt!910019) ((_ map or) (content!4114 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (content!4114 (_2!17401 (get!9380 lt!909425))))))))

(assert (=> d!733266 (= lt!910019 e!1632741)))

(declare-fun c!417378 () Bool)

(assert (=> d!733266 (= c!417378 ((_ is Nil!29765) (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))))))

(assert (=> d!733266 (= (++!7311 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))) (_2!17401 (get!9380 lt!909425))) lt!910019)))

(declare-fun b!2587946 () Bool)

(assert (=> b!2587946 (= e!1632741 (Cons!29765 (h!35185 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (++!7311 (t!212230 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (_2!17401 (get!9380 lt!909425)))))))

(declare-fun b!2587947 () Bool)

(declare-fun res!1088278 () Bool)

(assert (=> b!2587947 (=> (not res!1088278) (not e!1632742))))

(assert (=> b!2587947 (= res!1088278 (= (size!23078 lt!910019) (+ (size!23078 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425))))) (size!23078 (_2!17401 (get!9380 lt!909425))))))))

(declare-fun b!2587948 () Bool)

(assert (=> b!2587948 (= e!1632742 (or (not (= (_2!17401 (get!9380 lt!909425)) Nil!29765)) (= lt!910019 (list!11253 (charsOf!2850 (_1!17401 (get!9380 lt!909425)))))))))

(assert (= (and d!733266 c!417378) b!2587945))

(assert (= (and d!733266 (not c!417378)) b!2587946))

(assert (= (and d!733266 res!1088277) b!2587947))

(assert (= (and b!2587947 res!1088278) b!2587948))

(declare-fun m!2924665 () Bool)

(assert (=> d!733266 m!2924665))

(assert (=> d!733266 m!2922225))

(declare-fun m!2924667 () Bool)

(assert (=> d!733266 m!2924667))

(declare-fun m!2924669 () Bool)

(assert (=> d!733266 m!2924669))

(declare-fun m!2924671 () Bool)

(assert (=> b!2587946 m!2924671))

(declare-fun m!2924673 () Bool)

(assert (=> b!2587947 m!2924673))

(assert (=> b!2587947 m!2922225))

(declare-fun m!2924675 () Bool)

(assert (=> b!2587947 m!2924675))

(assert (=> b!2587947 m!2922241))

(assert (=> b!2586099 d!733266))

(assert (=> b!2586099 d!733062))

(assert (=> b!2586099 d!733066))

(assert (=> b!2586099 d!732670))

(assert (=> b!2586541 d!732736))

(declare-fun b!2587952 () Bool)

(declare-fun e!1632745 () Bool)

(declare-fun tp!821250 () Bool)

(declare-fun tp!821246 () Bool)

(assert (=> b!2587952 (= e!1632745 (and tp!821250 tp!821246))))

(declare-fun b!2587954 () Bool)

(declare-fun tp!821248 () Bool)

(declare-fun tp!821249 () Bool)

(assert (=> b!2587954 (= e!1632745 (and tp!821248 tp!821249))))

(declare-fun b!2587951 () Bool)

(assert (=> b!2587951 (= e!1632745 tp_is_empty!13225)))

(declare-fun b!2587953 () Bool)

(declare-fun tp!821247 () Bool)

(assert (=> b!2587953 (= e!1632745 tp!821247)))

(assert (=> b!2586776 (= tp!821093 e!1632745)))

(assert (= (and b!2586776 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587951))

(assert (= (and b!2586776 ((_ is Concat!12409) (regOne!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587952))

(assert (= (and b!2586776 ((_ is Star!7665) (regOne!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587953))

(assert (= (and b!2586776 ((_ is Union!7665) (regOne!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587954))

(declare-fun b!2587956 () Bool)

(declare-fun e!1632746 () Bool)

(declare-fun tp!821255 () Bool)

(declare-fun tp!821251 () Bool)

(assert (=> b!2587956 (= e!1632746 (and tp!821255 tp!821251))))

(declare-fun b!2587958 () Bool)

(declare-fun tp!821253 () Bool)

(declare-fun tp!821254 () Bool)

(assert (=> b!2587958 (= e!1632746 (and tp!821253 tp!821254))))

(declare-fun b!2587955 () Bool)

(assert (=> b!2587955 (= e!1632746 tp_is_empty!13225)))

(declare-fun b!2587957 () Bool)

(declare-fun tp!821252 () Bool)

(assert (=> b!2587957 (= e!1632746 tp!821252)))

(assert (=> b!2586776 (= tp!821094 e!1632746)))

(assert (= (and b!2586776 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587955))

(assert (= (and b!2586776 ((_ is Concat!12409) (regTwo!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587956))

(assert (= (and b!2586776 ((_ is Star!7665) (regTwo!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587957))

(assert (= (and b!2586776 ((_ is Union!7665) (regTwo!15843 (regOne!15843 (regex!4521 rule!570))))) b!2587958))

(declare-fun b!2587960 () Bool)

(declare-fun e!1632747 () Bool)

(declare-fun tp!821260 () Bool)

(declare-fun tp!821256 () Bool)

(assert (=> b!2587960 (= e!1632747 (and tp!821260 tp!821256))))

(declare-fun b!2587962 () Bool)

(declare-fun tp!821258 () Bool)

(declare-fun tp!821259 () Bool)

(assert (=> b!2587962 (= e!1632747 (and tp!821258 tp!821259))))

(declare-fun b!2587959 () Bool)

(assert (=> b!2587959 (= e!1632747 tp_is_empty!13225)))

(declare-fun b!2587961 () Bool)

(declare-fun tp!821257 () Bool)

(assert (=> b!2587961 (= e!1632747 tp!821257)))

(assert (=> b!2586771 (= tp!821087 e!1632747)))

(assert (= (and b!2586771 ((_ is ElementMatch!7665) (reg!7994 (reg!7994 (regex!4521 rule!570))))) b!2587959))

(assert (= (and b!2586771 ((_ is Concat!12409) (reg!7994 (reg!7994 (regex!4521 rule!570))))) b!2587960))

(assert (= (and b!2586771 ((_ is Star!7665) (reg!7994 (reg!7994 (regex!4521 rule!570))))) b!2587961))

(assert (= (and b!2586771 ((_ is Union!7665) (reg!7994 (reg!7994 (regex!4521 rule!570))))) b!2587962))

(declare-fun b!2587966 () Bool)

(declare-fun e!1632749 () Bool)

(declare-fun tp!821265 () Bool)

(declare-fun tp!821261 () Bool)

(assert (=> b!2587966 (= e!1632749 (and tp!821265 tp!821261))))

(declare-fun b!2587968 () Bool)

(declare-fun tp!821263 () Bool)

(declare-fun tp!821264 () Bool)

(assert (=> b!2587968 (= e!1632749 (and tp!821263 tp!821264))))

(declare-fun b!2587965 () Bool)

(assert (=> b!2587965 (= e!1632749 tp_is_empty!13225)))

(declare-fun b!2587967 () Bool)

(declare-fun tp!821262 () Bool)

(assert (=> b!2587967 (= e!1632749 tp!821262)))

(assert (=> b!2586762 (= tp!821080 e!1632749)))

(assert (= (and b!2586762 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587965))

(assert (= (and b!2586762 ((_ is Concat!12409) (regOne!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587966))

(assert (= (and b!2586762 ((_ is Star!7665) (regOne!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587967))

(assert (= (and b!2586762 ((_ is Union!7665) (regOne!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587968))

(declare-fun b!2587970 () Bool)

(declare-fun e!1632750 () Bool)

(declare-fun tp!821270 () Bool)

(declare-fun tp!821266 () Bool)

(assert (=> b!2587970 (= e!1632750 (and tp!821270 tp!821266))))

(declare-fun b!2587972 () Bool)

(declare-fun tp!821268 () Bool)

(declare-fun tp!821269 () Bool)

(assert (=> b!2587972 (= e!1632750 (and tp!821268 tp!821269))))

(declare-fun b!2587969 () Bool)

(assert (=> b!2587969 (= e!1632750 tp_is_empty!13225)))

(declare-fun b!2587971 () Bool)

(declare-fun tp!821267 () Bool)

(assert (=> b!2587971 (= e!1632750 tp!821267)))

(assert (=> b!2586762 (= tp!821076 e!1632750)))

(assert (= (and b!2586762 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587969))

(assert (= (and b!2586762 ((_ is Concat!12409) (regTwo!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587970))

(assert (= (and b!2586762 ((_ is Star!7665) (regTwo!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587971))

(assert (= (and b!2586762 ((_ is Union!7665) (regTwo!15842 (regTwo!15842 (regex!4521 rule!570))))) b!2587972))

(declare-fun b!2587974 () Bool)

(declare-fun e!1632751 () Bool)

(declare-fun tp!821275 () Bool)

(declare-fun tp!821271 () Bool)

(assert (=> b!2587974 (= e!1632751 (and tp!821275 tp!821271))))

(declare-fun b!2587976 () Bool)

(declare-fun tp!821273 () Bool)

(declare-fun tp!821274 () Bool)

(assert (=> b!2587976 (= e!1632751 (and tp!821273 tp!821274))))

(declare-fun b!2587973 () Bool)

(assert (=> b!2587973 (= e!1632751 tp_is_empty!13225)))

(declare-fun b!2587975 () Bool)

(declare-fun tp!821272 () Bool)

(assert (=> b!2587975 (= e!1632751 tp!821272)))

(assert (=> b!2586714 (= tp!821025 e!1632751)))

(assert (= (and b!2586714 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587973))

(assert (= (and b!2586714 ((_ is Concat!12409) (regOne!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587974))

(assert (= (and b!2586714 ((_ is Star!7665) (regOne!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587975))

(assert (= (and b!2586714 ((_ is Union!7665) (regOne!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587976))

(declare-fun b!2587980 () Bool)

(declare-fun e!1632753 () Bool)

(declare-fun tp!821280 () Bool)

(declare-fun tp!821276 () Bool)

(assert (=> b!2587980 (= e!1632753 (and tp!821280 tp!821276))))

(declare-fun b!2587982 () Bool)

(declare-fun tp!821278 () Bool)

(declare-fun tp!821279 () Bool)

(assert (=> b!2587982 (= e!1632753 (and tp!821278 tp!821279))))

(declare-fun b!2587979 () Bool)

(assert (=> b!2587979 (= e!1632753 tp_is_empty!13225)))

(declare-fun b!2587981 () Bool)

(declare-fun tp!821277 () Bool)

(assert (=> b!2587981 (= e!1632753 tp!821277)))

(assert (=> b!2586714 (= tp!821021 e!1632753)))

(assert (= (and b!2586714 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587979))

(assert (= (and b!2586714 ((_ is Concat!12409) (regTwo!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587980))

(assert (= (and b!2586714 ((_ is Star!7665) (regTwo!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587981))

(assert (= (and b!2586714 ((_ is Union!7665) (regTwo!15842 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2587982))

(declare-fun b!2587984 () Bool)

(declare-fun e!1632754 () Bool)

(declare-fun tp!821285 () Bool)

(declare-fun tp!821281 () Bool)

(assert (=> b!2587984 (= e!1632754 (and tp!821285 tp!821281))))

(declare-fun b!2587986 () Bool)

(declare-fun tp!821283 () Bool)

(declare-fun tp!821284 () Bool)

(assert (=> b!2587986 (= e!1632754 (and tp!821283 tp!821284))))

(declare-fun b!2587983 () Bool)

(assert (=> b!2587983 (= e!1632754 tp_is_empty!13225)))

(declare-fun b!2587985 () Bool)

(declare-fun tp!821282 () Bool)

(assert (=> b!2587985 (= e!1632754 tp!821282)))

(assert (=> b!2586736 (= tp!821048 e!1632754)))

(assert (= (and b!2586736 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587983))

(assert (= (and b!2586736 ((_ is Concat!12409) (regOne!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587984))

(assert (= (and b!2586736 ((_ is Star!7665) (regOne!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587985))

(assert (= (and b!2586736 ((_ is Union!7665) (regOne!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587986))

(declare-fun b!2587988 () Bool)

(declare-fun e!1632755 () Bool)

(declare-fun tp!821290 () Bool)

(declare-fun tp!821286 () Bool)

(assert (=> b!2587988 (= e!1632755 (and tp!821290 tp!821286))))

(declare-fun b!2587990 () Bool)

(declare-fun tp!821288 () Bool)

(declare-fun tp!821289 () Bool)

(assert (=> b!2587990 (= e!1632755 (and tp!821288 tp!821289))))

(declare-fun b!2587987 () Bool)

(assert (=> b!2587987 (= e!1632755 tp_is_empty!13225)))

(declare-fun b!2587989 () Bool)

(declare-fun tp!821287 () Bool)

(assert (=> b!2587989 (= e!1632755 tp!821287)))

(assert (=> b!2586736 (= tp!821049 e!1632755)))

(assert (= (and b!2586736 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587987))

(assert (= (and b!2586736 ((_ is Concat!12409) (regTwo!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587988))

(assert (= (and b!2586736 ((_ is Star!7665) (regTwo!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587989))

(assert (= (and b!2586736 ((_ is Union!7665) (regTwo!15843 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2587990))

(declare-fun b!2587992 () Bool)

(declare-fun e!1632756 () Bool)

(declare-fun tp!821295 () Bool)

(declare-fun tp!821291 () Bool)

(assert (=> b!2587992 (= e!1632756 (and tp!821295 tp!821291))))

(declare-fun b!2587994 () Bool)

(declare-fun tp!821293 () Bool)

(declare-fun tp!821294 () Bool)

(assert (=> b!2587994 (= e!1632756 (and tp!821293 tp!821294))))

(declare-fun b!2587991 () Bool)

(assert (=> b!2587991 (= e!1632756 tp_is_empty!13225)))

(declare-fun b!2587993 () Bool)

(declare-fun tp!821292 () Bool)

(assert (=> b!2587993 (= e!1632756 tp!821292)))

(assert (=> b!2586727 (= tp!821037 e!1632756)))

(assert (= (and b!2586727 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2587991))

(assert (= (and b!2586727 ((_ is Concat!12409) (reg!7994 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2587992))

(assert (= (and b!2586727 ((_ is Star!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2587993))

(assert (= (and b!2586727 ((_ is Union!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2587994))

(declare-fun b!2587996 () Bool)

(declare-fun e!1632757 () Bool)

(declare-fun tp!821300 () Bool)

(declare-fun tp!821296 () Bool)

(assert (=> b!2587996 (= e!1632757 (and tp!821300 tp!821296))))

(declare-fun b!2587998 () Bool)

(declare-fun tp!821298 () Bool)

(declare-fun tp!821299 () Bool)

(assert (=> b!2587998 (= e!1632757 (and tp!821298 tp!821299))))

(declare-fun b!2587995 () Bool)

(assert (=> b!2587995 (= e!1632757 tp_is_empty!13225)))

(declare-fun b!2587997 () Bool)

(declare-fun tp!821297 () Bool)

(assert (=> b!2587997 (= e!1632757 tp!821297)))

(assert (=> b!2586783 (= tp!821102 e!1632757)))

(assert (= (and b!2586783 ((_ is ElementMatch!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2587995))

(assert (= (and b!2586783 ((_ is Concat!12409) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2587996))

(assert (= (and b!2586783 ((_ is Star!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2587997))

(assert (= (and b!2586783 ((_ is Union!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2587998))

(declare-fun b!2588000 () Bool)

(declare-fun e!1632758 () Bool)

(declare-fun tp!821305 () Bool)

(declare-fun tp!821301 () Bool)

(assert (=> b!2588000 (= e!1632758 (and tp!821305 tp!821301))))

(declare-fun b!2588002 () Bool)

(declare-fun tp!821303 () Bool)

(declare-fun tp!821304 () Bool)

(assert (=> b!2588002 (= e!1632758 (and tp!821303 tp!821304))))

(declare-fun b!2587999 () Bool)

(assert (=> b!2587999 (= e!1632758 tp_is_empty!13225)))

(declare-fun b!2588001 () Bool)

(declare-fun tp!821302 () Bool)

(assert (=> b!2588001 (= e!1632758 tp!821302)))

(assert (=> b!2586774 (= tp!821095 e!1632758)))

(assert (= (and b!2586774 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15843 (regex!4521 rule!570))))) b!2587999))

(assert (= (and b!2586774 ((_ is Concat!12409) (regOne!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588000))

(assert (= (and b!2586774 ((_ is Star!7665) (regOne!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588001))

(assert (= (and b!2586774 ((_ is Union!7665) (regOne!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588002))

(declare-fun b!2588006 () Bool)

(declare-fun e!1632760 () Bool)

(declare-fun tp!821310 () Bool)

(declare-fun tp!821306 () Bool)

(assert (=> b!2588006 (= e!1632760 (and tp!821310 tp!821306))))

(declare-fun b!2588008 () Bool)

(declare-fun tp!821308 () Bool)

(declare-fun tp!821309 () Bool)

(assert (=> b!2588008 (= e!1632760 (and tp!821308 tp!821309))))

(declare-fun b!2588005 () Bool)

(assert (=> b!2588005 (= e!1632760 tp_is_empty!13225)))

(declare-fun b!2588007 () Bool)

(declare-fun tp!821307 () Bool)

(assert (=> b!2588007 (= e!1632760 tp!821307)))

(assert (=> b!2586774 (= tp!821091 e!1632760)))

(assert (= (and b!2586774 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588005))

(assert (= (and b!2586774 ((_ is Concat!12409) (regTwo!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588006))

(assert (= (and b!2586774 ((_ is Star!7665) (regTwo!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588007))

(assert (= (and b!2586774 ((_ is Union!7665) (regTwo!15842 (regOne!15843 (regex!4521 rule!570))))) b!2588008))

(declare-fun b!2588010 () Bool)

(declare-fun e!1632761 () Bool)

(declare-fun tp!821315 () Bool)

(declare-fun tp!821311 () Bool)

(assert (=> b!2588010 (= e!1632761 (and tp!821315 tp!821311))))

(declare-fun b!2588012 () Bool)

(declare-fun tp!821313 () Bool)

(declare-fun tp!821314 () Bool)

(assert (=> b!2588012 (= e!1632761 (and tp!821313 tp!821314))))

(declare-fun b!2588009 () Bool)

(assert (=> b!2588009 (= e!1632761 tp_is_empty!13225)))

(declare-fun b!2588011 () Bool)

(declare-fun tp!821312 () Bool)

(assert (=> b!2588011 (= e!1632761 tp!821312)))

(assert (=> b!2586738 (= tp!821055 e!1632761)))

(assert (= (and b!2586738 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588009))

(assert (= (and b!2586738 ((_ is Concat!12409) (regOne!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588010))

(assert (= (and b!2586738 ((_ is Star!7665) (regOne!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588011))

(assert (= (and b!2586738 ((_ is Union!7665) (regOne!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588012))

(declare-fun b!2588014 () Bool)

(declare-fun e!1632762 () Bool)

(declare-fun tp!821320 () Bool)

(declare-fun tp!821316 () Bool)

(assert (=> b!2588014 (= e!1632762 (and tp!821320 tp!821316))))

(declare-fun b!2588016 () Bool)

(declare-fun tp!821318 () Bool)

(declare-fun tp!821319 () Bool)

(assert (=> b!2588016 (= e!1632762 (and tp!821318 tp!821319))))

(declare-fun b!2588013 () Bool)

(assert (=> b!2588013 (= e!1632762 tp_is_empty!13225)))

(declare-fun b!2588015 () Bool)

(declare-fun tp!821317 () Bool)

(assert (=> b!2588015 (= e!1632762 tp!821317)))

(assert (=> b!2586738 (= tp!821051 e!1632762)))

(assert (= (and b!2586738 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588013))

(assert (= (and b!2586738 ((_ is Concat!12409) (regTwo!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588014))

(assert (= (and b!2586738 ((_ is Star!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588015))

(assert (= (and b!2586738 ((_ is Union!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588016))

(declare-fun tp!821322 () Bool)

(declare-fun e!1632764 () Bool)

(declare-fun tp!821323 () Bool)

(declare-fun b!2588017 () Bool)

(assert (=> b!2588017 (= e!1632764 (and (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))) tp!821323 (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))) tp!821322))))

(declare-fun b!2588019 () Bool)

(declare-fun e!1632763 () Bool)

(declare-fun tp!821321 () Bool)

(assert (=> b!2588019 (= e!1632763 tp!821321)))

(declare-fun b!2588018 () Bool)

(assert (=> b!2588018 (= e!1632764 (and (inv!40206 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))) e!1632763))))

(assert (=> b!2586546 (= tp!820979 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268)))))) e!1632764))))

(assert (= (and b!2586546 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))) b!2588017))

(assert (= b!2588018 b!2588019))

(assert (= (and b!2586546 ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))) (value!146096 (_1!17401 (get!9380 lt!909268))))))) b!2588018))

(declare-fun m!2924699 () Bool)

(assert (=> b!2588017 m!2924699))

(declare-fun m!2924701 () Bool)

(assert (=> b!2588017 m!2924701))

(declare-fun m!2924703 () Bool)

(assert (=> b!2588018 m!2924703))

(assert (=> b!2586546 m!2922801))

(declare-fun b!2588021 () Bool)

(declare-fun e!1632765 () Bool)

(declare-fun tp!821328 () Bool)

(declare-fun tp!821324 () Bool)

(assert (=> b!2588021 (= e!1632765 (and tp!821328 tp!821324))))

(declare-fun b!2588023 () Bool)

(declare-fun tp!821326 () Bool)

(declare-fun tp!821327 () Bool)

(assert (=> b!2588023 (= e!1632765 (and tp!821326 tp!821327))))

(declare-fun b!2588020 () Bool)

(assert (=> b!2588020 (= e!1632765 tp_is_empty!13225)))

(declare-fun b!2588022 () Bool)

(declare-fun tp!821325 () Bool)

(assert (=> b!2588022 (= e!1632765 tp!821325)))

(assert (=> b!2586787 (= tp!821107 e!1632765)))

(assert (= (and b!2586787 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588020))

(assert (= (and b!2586787 ((_ is Concat!12409) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588021))

(assert (= (and b!2586787 ((_ is Star!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588022))

(assert (= (and b!2586787 ((_ is Union!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588023))

(declare-fun b!2588025 () Bool)

(declare-fun e!1632766 () Bool)

(declare-fun tp!821333 () Bool)

(declare-fun tp!821329 () Bool)

(assert (=> b!2588025 (= e!1632766 (and tp!821333 tp!821329))))

(declare-fun b!2588027 () Bool)

(declare-fun tp!821331 () Bool)

(declare-fun tp!821332 () Bool)

(assert (=> b!2588027 (= e!1632766 (and tp!821331 tp!821332))))

(declare-fun b!2588024 () Bool)

(assert (=> b!2588024 (= e!1632766 tp_is_empty!13225)))

(declare-fun b!2588026 () Bool)

(declare-fun tp!821330 () Bool)

(assert (=> b!2588026 (= e!1632766 tp!821330)))

(assert (=> b!2586700 (= tp!821003 e!1632766)))

(assert (= (and b!2586700 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588024))

(assert (= (and b!2586700 ((_ is Concat!12409) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588025))

(assert (= (and b!2586700 ((_ is Star!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588026))

(assert (= (and b!2586700 ((_ is Union!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588027))

(declare-fun b!2588029 () Bool)

(declare-fun e!1632767 () Bool)

(declare-fun tp!821338 () Bool)

(declare-fun tp!821334 () Bool)

(assert (=> b!2588029 (= e!1632767 (and tp!821338 tp!821334))))

(declare-fun b!2588031 () Bool)

(declare-fun tp!821336 () Bool)

(declare-fun tp!821337 () Bool)

(assert (=> b!2588031 (= e!1632767 (and tp!821336 tp!821337))))

(declare-fun b!2588028 () Bool)

(assert (=> b!2588028 (= e!1632767 tp_is_empty!13225)))

(declare-fun b!2588030 () Bool)

(declare-fun tp!821335 () Bool)

(assert (=> b!2588030 (= e!1632767 tp!821335)))

(assert (=> b!2586700 (= tp!821004 e!1632767)))

(assert (= (and b!2586700 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588028))

(assert (= (and b!2586700 ((_ is Concat!12409) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588029))

(assert (= (and b!2586700 ((_ is Star!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588030))

(assert (= (and b!2586700 ((_ is Union!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588031))

(declare-fun b!2588033 () Bool)

(declare-fun e!1632768 () Bool)

(declare-fun tp!821343 () Bool)

(declare-fun tp!821339 () Bool)

(assert (=> b!2588033 (= e!1632768 (and tp!821343 tp!821339))))

(declare-fun b!2588035 () Bool)

(declare-fun tp!821341 () Bool)

(declare-fun tp!821342 () Bool)

(assert (=> b!2588035 (= e!1632768 (and tp!821341 tp!821342))))

(declare-fun b!2588032 () Bool)

(assert (=> b!2588032 (= e!1632768 tp_is_empty!13225)))

(declare-fun b!2588034 () Bool)

(declare-fun tp!821340 () Bool)

(assert (=> b!2588034 (= e!1632768 tp!821340)))

(assert (=> b!2586691 (= tp!820992 e!1632768)))

(assert (= (and b!2586691 ((_ is ElementMatch!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588032))

(assert (= (and b!2586691 ((_ is Concat!12409) (reg!7994 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588033))

(assert (= (and b!2586691 ((_ is Star!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588034))

(assert (= (and b!2586691 ((_ is Union!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588035))

(declare-fun b!2588037 () Bool)

(declare-fun e!1632769 () Bool)

(declare-fun tp!821348 () Bool)

(declare-fun tp!821344 () Bool)

(assert (=> b!2588037 (= e!1632769 (and tp!821348 tp!821344))))

(declare-fun b!2588039 () Bool)

(declare-fun tp!821346 () Bool)

(declare-fun tp!821347 () Bool)

(assert (=> b!2588039 (= e!1632769 (and tp!821346 tp!821347))))

(declare-fun b!2588036 () Bool)

(assert (=> b!2588036 (= e!1632769 tp_is_empty!13225)))

(declare-fun b!2588038 () Bool)

(declare-fun tp!821345 () Bool)

(assert (=> b!2588038 (= e!1632769 tp!821345)))

(assert (=> b!2586682 (= tp!820985 e!1632769)))

(assert (= (and b!2586682 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588036))

(assert (= (and b!2586682 ((_ is Concat!12409) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588037))

(assert (= (and b!2586682 ((_ is Star!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588038))

(assert (= (and b!2586682 ((_ is Union!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588039))

(declare-fun b!2588041 () Bool)

(declare-fun e!1632770 () Bool)

(declare-fun tp!821353 () Bool)

(declare-fun tp!821349 () Bool)

(assert (=> b!2588041 (= e!1632770 (and tp!821353 tp!821349))))

(declare-fun b!2588043 () Bool)

(declare-fun tp!821351 () Bool)

(declare-fun tp!821352 () Bool)

(assert (=> b!2588043 (= e!1632770 (and tp!821351 tp!821352))))

(declare-fun b!2588040 () Bool)

(assert (=> b!2588040 (= e!1632770 tp_is_empty!13225)))

(declare-fun b!2588042 () Bool)

(declare-fun tp!821350 () Bool)

(assert (=> b!2588042 (= e!1632770 tp!821350)))

(assert (=> b!2586682 (= tp!820981 e!1632770)))

(assert (= (and b!2586682 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588040))

(assert (= (and b!2586682 ((_ is Concat!12409) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588041))

(assert (= (and b!2586682 ((_ is Star!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588042))

(assert (= (and b!2586682 ((_ is Union!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588043))

(declare-fun b!2588045 () Bool)

(declare-fun e!1632771 () Bool)

(declare-fun tp!821358 () Bool)

(declare-fun tp!821354 () Bool)

(assert (=> b!2588045 (= e!1632771 (and tp!821358 tp!821354))))

(declare-fun b!2588047 () Bool)

(declare-fun tp!821356 () Bool)

(declare-fun tp!821357 () Bool)

(assert (=> b!2588047 (= e!1632771 (and tp!821356 tp!821357))))

(declare-fun b!2588044 () Bool)

(assert (=> b!2588044 (= e!1632771 tp_is_empty!13225)))

(declare-fun b!2588046 () Bool)

(declare-fun tp!821355 () Bool)

(assert (=> b!2588046 (= e!1632771 tp!821355)))

(assert (=> b!2586723 (= tp!821033 e!1632771)))

(assert (= (and b!2586723 ((_ is ElementMatch!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))) b!2588044))

(assert (= (and b!2586723 ((_ is Concat!12409) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))) b!2588045))

(assert (= (and b!2586723 ((_ is Star!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))) b!2588046))

(assert (= (and b!2586723 ((_ is Union!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))) b!2588047))

(declare-fun b!2588049 () Bool)

(declare-fun e!1632772 () Bool)

(declare-fun tp!821363 () Bool)

(declare-fun tp!821359 () Bool)

(assert (=> b!2588049 (= e!1632772 (and tp!821363 tp!821359))))

(declare-fun b!2588051 () Bool)

(declare-fun tp!821361 () Bool)

(declare-fun tp!821362 () Bool)

(assert (=> b!2588051 (= e!1632772 (and tp!821361 tp!821362))))

(declare-fun b!2588048 () Bool)

(assert (=> b!2588048 (= e!1632772 tp_is_empty!13225)))

(declare-fun b!2588050 () Bool)

(declare-fun tp!821360 () Bool)

(assert (=> b!2588050 (= e!1632772 tp!821360)))

(assert (=> b!2586764 (= tp!821078 e!1632772)))

(assert (= (and b!2586764 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588048))

(assert (= (and b!2586764 ((_ is Concat!12409) (regOne!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588049))

(assert (= (and b!2586764 ((_ is Star!7665) (regOne!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588050))

(assert (= (and b!2586764 ((_ is Union!7665) (regOne!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588051))

(declare-fun b!2588053 () Bool)

(declare-fun e!1632773 () Bool)

(declare-fun tp!821368 () Bool)

(declare-fun tp!821364 () Bool)

(assert (=> b!2588053 (= e!1632773 (and tp!821368 tp!821364))))

(declare-fun b!2588055 () Bool)

(declare-fun tp!821366 () Bool)

(declare-fun tp!821367 () Bool)

(assert (=> b!2588055 (= e!1632773 (and tp!821366 tp!821367))))

(declare-fun b!2588052 () Bool)

(assert (=> b!2588052 (= e!1632773 tp_is_empty!13225)))

(declare-fun b!2588054 () Bool)

(declare-fun tp!821365 () Bool)

(assert (=> b!2588054 (= e!1632773 tp!821365)))

(assert (=> b!2586764 (= tp!821079 e!1632773)))

(assert (= (and b!2586764 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588052))

(assert (= (and b!2586764 ((_ is Concat!12409) (regTwo!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588053))

(assert (= (and b!2586764 ((_ is Star!7665) (regTwo!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588054))

(assert (= (and b!2586764 ((_ is Union!7665) (regTwo!15843 (regTwo!15842 (regex!4521 rule!570))))) b!2588055))

(declare-fun b!2588057 () Bool)

(declare-fun e!1632774 () Bool)

(declare-fun tp!821373 () Bool)

(declare-fun tp!821369 () Bool)

(assert (=> b!2588057 (= e!1632774 (and tp!821373 tp!821369))))

(declare-fun b!2588059 () Bool)

(declare-fun tp!821371 () Bool)

(declare-fun tp!821372 () Bool)

(assert (=> b!2588059 (= e!1632774 (and tp!821371 tp!821372))))

(declare-fun b!2588056 () Bool)

(assert (=> b!2588056 (= e!1632774 tp_is_empty!13225)))

(declare-fun b!2588058 () Bool)

(declare-fun tp!821370 () Bool)

(assert (=> b!2588058 (= e!1632774 tp!821370)))

(assert (=> b!2586716 (= tp!821023 e!1632774)))

(assert (= (and b!2586716 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588056))

(assert (= (and b!2586716 ((_ is Concat!12409) (regOne!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588057))

(assert (= (and b!2586716 ((_ is Star!7665) (regOne!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588058))

(assert (= (and b!2586716 ((_ is Union!7665) (regOne!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588059))

(declare-fun b!2588061 () Bool)

(declare-fun e!1632775 () Bool)

(declare-fun tp!821378 () Bool)

(declare-fun tp!821374 () Bool)

(assert (=> b!2588061 (= e!1632775 (and tp!821378 tp!821374))))

(declare-fun b!2588063 () Bool)

(declare-fun tp!821376 () Bool)

(declare-fun tp!821377 () Bool)

(assert (=> b!2588063 (= e!1632775 (and tp!821376 tp!821377))))

(declare-fun b!2588060 () Bool)

(assert (=> b!2588060 (= e!1632775 tp_is_empty!13225)))

(declare-fun b!2588062 () Bool)

(declare-fun tp!821375 () Bool)

(assert (=> b!2588062 (= e!1632775 tp!821375)))

(assert (=> b!2586716 (= tp!821024 e!1632775)))

(assert (= (and b!2586716 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588060))

(assert (= (and b!2586716 ((_ is Concat!12409) (regTwo!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588061))

(assert (= (and b!2586716 ((_ is Star!7665) (regTwo!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588062))

(assert (= (and b!2586716 ((_ is Union!7665) (regTwo!15843 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588063))

(declare-fun b!2588065 () Bool)

(declare-fun e!1632776 () Bool)

(declare-fun tp!821383 () Bool)

(declare-fun tp!821379 () Bool)

(assert (=> b!2588065 (= e!1632776 (and tp!821383 tp!821379))))

(declare-fun b!2588067 () Bool)

(declare-fun tp!821381 () Bool)

(declare-fun tp!821382 () Bool)

(assert (=> b!2588067 (= e!1632776 (and tp!821381 tp!821382))))

(declare-fun b!2588064 () Bool)

(assert (=> b!2588064 (= e!1632776 tp_is_empty!13225)))

(declare-fun b!2588066 () Bool)

(declare-fun tp!821380 () Bool)

(assert (=> b!2588066 (= e!1632776 tp!821380)))

(assert (=> b!2586707 (= tp!821012 e!1632776)))

(assert (= (and b!2586707 ((_ is ElementMatch!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588064))

(assert (= (and b!2586707 ((_ is Concat!12409) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588065))

(assert (= (and b!2586707 ((_ is Star!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588066))

(assert (= (and b!2586707 ((_ is Union!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588067))

(declare-fun b!2588069 () Bool)

(declare-fun e!1632777 () Bool)

(declare-fun tp!821388 () Bool)

(declare-fun tp!821384 () Bool)

(assert (=> b!2588069 (= e!1632777 (and tp!821388 tp!821384))))

(declare-fun b!2588071 () Bool)

(declare-fun tp!821386 () Bool)

(declare-fun tp!821387 () Bool)

(assert (=> b!2588071 (= e!1632777 (and tp!821386 tp!821387))))

(declare-fun b!2588068 () Bool)

(assert (=> b!2588068 (= e!1632777 tp_is_empty!13225)))

(declare-fun b!2588070 () Bool)

(declare-fun tp!821385 () Bool)

(assert (=> b!2588070 (= e!1632777 tp!821385)))

(assert (=> b!2586698 (= tp!821005 e!1632777)))

(assert (= (and b!2586698 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588068))

(assert (= (and b!2586698 ((_ is Concat!12409) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588069))

(assert (= (and b!2586698 ((_ is Star!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588070))

(assert (= (and b!2586698 ((_ is Union!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588071))

(declare-fun b!2588073 () Bool)

(declare-fun e!1632778 () Bool)

(declare-fun tp!821393 () Bool)

(declare-fun tp!821389 () Bool)

(assert (=> b!2588073 (= e!1632778 (and tp!821393 tp!821389))))

(declare-fun b!2588075 () Bool)

(declare-fun tp!821391 () Bool)

(declare-fun tp!821392 () Bool)

(assert (=> b!2588075 (= e!1632778 (and tp!821391 tp!821392))))

(declare-fun b!2588072 () Bool)

(assert (=> b!2588072 (= e!1632778 tp_is_empty!13225)))

(declare-fun b!2588074 () Bool)

(declare-fun tp!821390 () Bool)

(assert (=> b!2588074 (= e!1632778 tp!821390)))

(assert (=> b!2586698 (= tp!821001 e!1632778)))

(assert (= (and b!2586698 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588072))

(assert (= (and b!2586698 ((_ is Concat!12409) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588073))

(assert (= (and b!2586698 ((_ is Star!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588074))

(assert (= (and b!2586698 ((_ is Union!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588075))

(declare-fun b!2588077 () Bool)

(declare-fun e!1632779 () Bool)

(declare-fun tp!821398 () Bool)

(declare-fun tp!821394 () Bool)

(assert (=> b!2588077 (= e!1632779 (and tp!821398 tp!821394))))

(declare-fun b!2588079 () Bool)

(declare-fun tp!821396 () Bool)

(declare-fun tp!821397 () Bool)

(assert (=> b!2588079 (= e!1632779 (and tp!821396 tp!821397))))

(declare-fun b!2588076 () Bool)

(assert (=> b!2588076 (= e!1632779 tp_is_empty!13225)))

(declare-fun b!2588078 () Bool)

(declare-fun tp!821395 () Bool)

(assert (=> b!2588078 (= e!1632779 tp!821395)))

(assert (=> b!2586719 (= tp!821027 e!1632779)))

(assert (= (and b!2586719 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588076))

(assert (= (and b!2586719 ((_ is Concat!12409) (reg!7994 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588077))

(assert (= (and b!2586719 ((_ is Star!7665) (reg!7994 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588078))

(assert (= (and b!2586719 ((_ is Union!7665) (reg!7994 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588079))

(declare-fun b!2588081 () Bool)

(declare-fun e!1632780 () Bool)

(declare-fun tp!821403 () Bool)

(declare-fun tp!821399 () Bool)

(assert (=> b!2588081 (= e!1632780 (and tp!821403 tp!821399))))

(declare-fun b!2588083 () Bool)

(declare-fun tp!821401 () Bool)

(declare-fun tp!821402 () Bool)

(assert (=> b!2588083 (= e!1632780 (and tp!821401 tp!821402))))

(declare-fun b!2588080 () Bool)

(assert (=> b!2588080 (= e!1632780 tp_is_empty!13225)))

(declare-fun b!2588082 () Bool)

(declare-fun tp!821400 () Bool)

(assert (=> b!2588082 (= e!1632780 tp!821400)))

(assert (=> b!2586758 (= tp!821075 e!1632780)))

(assert (= (and b!2586758 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588080))

(assert (= (and b!2586758 ((_ is Concat!12409) (regOne!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588081))

(assert (= (and b!2586758 ((_ is Star!7665) (regOne!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588082))

(assert (= (and b!2586758 ((_ is Union!7665) (regOne!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588083))

(declare-fun b!2588085 () Bool)

(declare-fun e!1632781 () Bool)

(declare-fun tp!821408 () Bool)

(declare-fun tp!821404 () Bool)

(assert (=> b!2588085 (= e!1632781 (and tp!821408 tp!821404))))

(declare-fun b!2588087 () Bool)

(declare-fun tp!821406 () Bool)

(declare-fun tp!821407 () Bool)

(assert (=> b!2588087 (= e!1632781 (and tp!821406 tp!821407))))

(declare-fun b!2588084 () Bool)

(assert (=> b!2588084 (= e!1632781 tp_is_empty!13225)))

(declare-fun b!2588086 () Bool)

(declare-fun tp!821405 () Bool)

(assert (=> b!2588086 (= e!1632781 tp!821405)))

(assert (=> b!2586758 (= tp!821071 e!1632781)))

(assert (= (and b!2586758 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588084))

(assert (= (and b!2586758 ((_ is Concat!12409) (regTwo!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588085))

(assert (= (and b!2586758 ((_ is Star!7665) (regTwo!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588086))

(assert (= (and b!2586758 ((_ is Union!7665) (regTwo!15842 (regOne!15842 (regex!4521 rule!570))))) b!2588087))

(declare-fun b!2588089 () Bool)

(declare-fun e!1632782 () Bool)

(declare-fun tp!821413 () Bool)

(declare-fun tp!821409 () Bool)

(assert (=> b!2588089 (= e!1632782 (and tp!821413 tp!821409))))

(declare-fun b!2588091 () Bool)

(declare-fun tp!821411 () Bool)

(declare-fun tp!821412 () Bool)

(assert (=> b!2588091 (= e!1632782 (and tp!821411 tp!821412))))

(declare-fun b!2588088 () Bool)

(assert (=> b!2588088 (= e!1632782 tp_is_empty!13225)))

(declare-fun b!2588090 () Bool)

(declare-fun tp!821410 () Bool)

(assert (=> b!2588090 (= e!1632782 tp!821410)))

(assert (=> b!2586710 (= tp!821020 e!1632782)))

(assert (= (and b!2586710 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588088))

(assert (= (and b!2586710 ((_ is Concat!12409) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588089))

(assert (= (and b!2586710 ((_ is Star!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588090))

(assert (= (and b!2586710 ((_ is Union!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588091))

(declare-fun b!2588093 () Bool)

(declare-fun e!1632783 () Bool)

(declare-fun tp!821418 () Bool)

(declare-fun tp!821414 () Bool)

(assert (=> b!2588093 (= e!1632783 (and tp!821418 tp!821414))))

(declare-fun b!2588095 () Bool)

(declare-fun tp!821416 () Bool)

(declare-fun tp!821417 () Bool)

(assert (=> b!2588095 (= e!1632783 (and tp!821416 tp!821417))))

(declare-fun b!2588092 () Bool)

(assert (=> b!2588092 (= e!1632783 tp_is_empty!13225)))

(declare-fun b!2588094 () Bool)

(declare-fun tp!821415 () Bool)

(assert (=> b!2588094 (= e!1632783 tp!821415)))

(assert (=> b!2586710 (= tp!821016 e!1632783)))

(assert (= (and b!2586710 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588092))

(assert (= (and b!2586710 ((_ is Concat!12409) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588093))

(assert (= (and b!2586710 ((_ is Star!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588094))

(assert (= (and b!2586710 ((_ is Union!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588095))

(declare-fun b!2588097 () Bool)

(declare-fun e!1632784 () Bool)

(declare-fun tp!821423 () Bool)

(declare-fun tp!821419 () Bool)

(assert (=> b!2588097 (= e!1632784 (and tp!821423 tp!821419))))

(declare-fun b!2588099 () Bool)

(declare-fun tp!821421 () Bool)

(declare-fun tp!821422 () Bool)

(assert (=> b!2588099 (= e!1632784 (and tp!821421 tp!821422))))

(declare-fun b!2588096 () Bool)

(assert (=> b!2588096 (= e!1632784 tp_is_empty!13225)))

(declare-fun b!2588098 () Bool)

(declare-fun tp!821420 () Bool)

(assert (=> b!2588098 (= e!1632784 tp!821420)))

(assert (=> b!2586767 (= tp!821082 e!1632784)))

(assert (= (and b!2586767 ((_ is ElementMatch!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588096))

(assert (= (and b!2586767 ((_ is Concat!12409) (reg!7994 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588097))

(assert (= (and b!2586767 ((_ is Star!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588098))

(assert (= (and b!2586767 ((_ is Union!7665) (reg!7994 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588099))

(declare-fun b!2588101 () Bool)

(declare-fun e!1632785 () Bool)

(declare-fun tp!821428 () Bool)

(declare-fun tp!821424 () Bool)

(assert (=> b!2588101 (= e!1632785 (and tp!821428 tp!821424))))

(declare-fun b!2588103 () Bool)

(declare-fun tp!821426 () Bool)

(declare-fun tp!821427 () Bool)

(assert (=> b!2588103 (= e!1632785 (and tp!821426 tp!821427))))

(declare-fun b!2588100 () Bool)

(assert (=> b!2588100 (= e!1632785 tp_is_empty!13225)))

(declare-fun b!2588102 () Bool)

(declare-fun tp!821425 () Bool)

(assert (=> b!2588102 (= e!1632785 tp!821425)))

(assert (=> b!2586732 (= tp!821043 e!1632785)))

(assert (= (and b!2586732 ((_ is ElementMatch!7665) (regOne!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588100))

(assert (= (and b!2586732 ((_ is Concat!12409) (regOne!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588101))

(assert (= (and b!2586732 ((_ is Star!7665) (regOne!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588102))

(assert (= (and b!2586732 ((_ is Union!7665) (regOne!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588103))

(declare-fun b!2588105 () Bool)

(declare-fun e!1632786 () Bool)

(declare-fun tp!821433 () Bool)

(declare-fun tp!821429 () Bool)

(assert (=> b!2588105 (= e!1632786 (and tp!821433 tp!821429))))

(declare-fun b!2588107 () Bool)

(declare-fun tp!821431 () Bool)

(declare-fun tp!821432 () Bool)

(assert (=> b!2588107 (= e!1632786 (and tp!821431 tp!821432))))

(declare-fun b!2588104 () Bool)

(assert (=> b!2588104 (= e!1632786 tp_is_empty!13225)))

(declare-fun b!2588106 () Bool)

(declare-fun tp!821430 () Bool)

(assert (=> b!2588106 (= e!1632786 tp!821430)))

(assert (=> b!2586732 (= tp!821044 e!1632786)))

(assert (= (and b!2586732 ((_ is ElementMatch!7665) (regTwo!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588104))

(assert (= (and b!2586732 ((_ is Concat!12409) (regTwo!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588105))

(assert (= (and b!2586732 ((_ is Star!7665) (regTwo!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588106))

(assert (= (and b!2586732 ((_ is Union!7665) (regTwo!15843 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588107))

(declare-fun b!2588109 () Bool)

(declare-fun e!1632787 () Bool)

(declare-fun tp!821438 () Bool)

(declare-fun tp!821434 () Bool)

(assert (=> b!2588109 (= e!1632787 (and tp!821438 tp!821434))))

(declare-fun b!2588111 () Bool)

(declare-fun tp!821436 () Bool)

(declare-fun tp!821437 () Bool)

(assert (=> b!2588111 (= e!1632787 (and tp!821436 tp!821437))))

(declare-fun b!2588108 () Bool)

(assert (=> b!2588108 (= e!1632787 tp_is_empty!13225)))

(declare-fun b!2588110 () Bool)

(declare-fun tp!821435 () Bool)

(assert (=> b!2588110 (= e!1632787 tp!821435)))

(assert (=> b!2586739 (= tp!821052 e!1632787)))

(assert (= (and b!2586739 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588108))

(assert (= (and b!2586739 ((_ is Concat!12409) (reg!7994 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588109))

(assert (= (and b!2586739 ((_ is Star!7665) (reg!7994 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588110))

(assert (= (and b!2586739 ((_ is Union!7665) (reg!7994 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588111))

(declare-fun b!2588113 () Bool)

(declare-fun e!1632788 () Bool)

(declare-fun tp!821443 () Bool)

(declare-fun tp!821439 () Bool)

(assert (=> b!2588113 (= e!1632788 (and tp!821443 tp!821439))))

(declare-fun b!2588115 () Bool)

(declare-fun tp!821441 () Bool)

(declare-fun tp!821442 () Bool)

(assert (=> b!2588115 (= e!1632788 (and tp!821441 tp!821442))))

(declare-fun b!2588112 () Bool)

(assert (=> b!2588112 (= e!1632788 tp_is_empty!13225)))

(declare-fun b!2588114 () Bool)

(declare-fun tp!821440 () Bool)

(assert (=> b!2588114 (= e!1632788 tp!821440)))

(assert (=> b!2586730 (= tp!821045 e!1632788)))

(assert (= (and b!2586730 ((_ is ElementMatch!7665) (regOne!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588112))

(assert (= (and b!2586730 ((_ is Concat!12409) (regOne!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588113))

(assert (= (and b!2586730 ((_ is Star!7665) (regOne!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588114))

(assert (= (and b!2586730 ((_ is Union!7665) (regOne!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588115))

(declare-fun b!2588117 () Bool)

(declare-fun e!1632789 () Bool)

(declare-fun tp!821448 () Bool)

(declare-fun tp!821444 () Bool)

(assert (=> b!2588117 (= e!1632789 (and tp!821448 tp!821444))))

(declare-fun b!2588119 () Bool)

(declare-fun tp!821446 () Bool)

(declare-fun tp!821447 () Bool)

(assert (=> b!2588119 (= e!1632789 (and tp!821446 tp!821447))))

(declare-fun b!2588116 () Bool)

(assert (=> b!2588116 (= e!1632789 tp_is_empty!13225)))

(declare-fun b!2588118 () Bool)

(declare-fun tp!821445 () Bool)

(assert (=> b!2588118 (= e!1632789 tp!821445)))

(assert (=> b!2586730 (= tp!821041 e!1632789)))

(assert (= (and b!2586730 ((_ is ElementMatch!7665) (regTwo!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588116))

(assert (= (and b!2586730 ((_ is Concat!12409) (regTwo!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588117))

(assert (= (and b!2586730 ((_ is Star!7665) (regTwo!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588118))

(assert (= (and b!2586730 ((_ is Union!7665) (regTwo!15842 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588119))

(declare-fun b!2588121 () Bool)

(declare-fun e!1632790 () Bool)

(declare-fun tp!821453 () Bool)

(declare-fun tp!821449 () Bool)

(assert (=> b!2588121 (= e!1632790 (and tp!821453 tp!821449))))

(declare-fun b!2588123 () Bool)

(declare-fun tp!821451 () Bool)

(declare-fun tp!821452 () Bool)

(assert (=> b!2588123 (= e!1632790 (and tp!821451 tp!821452))))

(declare-fun b!2588120 () Bool)

(assert (=> b!2588120 (= e!1632790 tp_is_empty!13225)))

(declare-fun b!2588122 () Bool)

(declare-fun tp!821450 () Bool)

(assert (=> b!2588122 (= e!1632790 tp!821450)))

(assert (=> b!2586788 (= tp!821108 e!1632790)))

(assert (= (and b!2586788 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588120))

(assert (= (and b!2586788 ((_ is Concat!12409) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588121))

(assert (= (and b!2586788 ((_ is Star!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588122))

(assert (= (and b!2586788 ((_ is Union!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588123))

(declare-fun b!2588125 () Bool)

(declare-fun e!1632791 () Bool)

(declare-fun tp!821458 () Bool)

(declare-fun tp!821454 () Bool)

(assert (=> b!2588125 (= e!1632791 (and tp!821458 tp!821454))))

(declare-fun b!2588127 () Bool)

(declare-fun tp!821456 () Bool)

(declare-fun tp!821457 () Bool)

(assert (=> b!2588127 (= e!1632791 (and tp!821456 tp!821457))))

(declare-fun b!2588124 () Bool)

(assert (=> b!2588124 (= e!1632791 tp_is_empty!13225)))

(declare-fun b!2588126 () Bool)

(declare-fun tp!821455 () Bool)

(assert (=> b!2588126 (= e!1632791 tp!821455)))

(assert (=> b!2586788 (= tp!821109 e!1632791)))

(assert (= (and b!2586788 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588124))

(assert (= (and b!2586788 ((_ is Concat!12409) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588125))

(assert (= (and b!2586788 ((_ is Star!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588126))

(assert (= (and b!2586788 ((_ is Union!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588127))

(declare-fun b!2588129 () Bool)

(declare-fun e!1632792 () Bool)

(declare-fun tp!821463 () Bool)

(declare-fun tp!821459 () Bool)

(assert (=> b!2588129 (= e!1632792 (and tp!821463 tp!821459))))

(declare-fun b!2588131 () Bool)

(declare-fun tp!821461 () Bool)

(declare-fun tp!821462 () Bool)

(assert (=> b!2588131 (= e!1632792 (and tp!821461 tp!821462))))

(declare-fun b!2588128 () Bool)

(assert (=> b!2588128 (= e!1632792 tp_is_empty!13225)))

(declare-fun b!2588130 () Bool)

(declare-fun tp!821460 () Bool)

(assert (=> b!2588130 (= e!1632792 tp!821460)))

(assert (=> b!2586779 (= tp!821097 e!1632792)))

(assert (= (and b!2586779 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15843 (regex!4521 rule!570))))) b!2588128))

(assert (= (and b!2586779 ((_ is Concat!12409) (reg!7994 (regTwo!15843 (regex!4521 rule!570))))) b!2588129))

(assert (= (and b!2586779 ((_ is Star!7665) (reg!7994 (regTwo!15843 (regex!4521 rule!570))))) b!2588130))

(assert (= (and b!2586779 ((_ is Union!7665) (reg!7994 (regTwo!15843 (regex!4521 rule!570))))) b!2588131))

(declare-fun b!2588133 () Bool)

(declare-fun e!1632793 () Bool)

(declare-fun tp!821468 () Bool)

(declare-fun tp!821464 () Bool)

(assert (=> b!2588133 (= e!1632793 (and tp!821468 tp!821464))))

(declare-fun b!2588135 () Bool)

(declare-fun tp!821466 () Bool)

(declare-fun tp!821467 () Bool)

(assert (=> b!2588135 (= e!1632793 (and tp!821466 tp!821467))))

(declare-fun b!2588132 () Bool)

(assert (=> b!2588132 (= e!1632793 tp_is_empty!13225)))

(declare-fun b!2588134 () Bool)

(declare-fun tp!821465 () Bool)

(assert (=> b!2588134 (= e!1632793 tp!821465)))

(assert (=> b!2586687 (= tp!820987 e!1632793)))

(assert (= (and b!2586687 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588132))

(assert (= (and b!2586687 ((_ is Concat!12409) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588133))

(assert (= (and b!2586687 ((_ is Star!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588134))

(assert (= (and b!2586687 ((_ is Union!7665) (reg!7994 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588135))

(declare-fun b!2588136 () Bool)

(declare-fun e!1632794 () Bool)

(declare-fun tp!821469 () Bool)

(assert (=> b!2588136 (= e!1632794 (and tp_is_empty!13225 tp!821469))))

(assert (=> b!2586751 (= tp!821062 e!1632794)))

(assert (= (and b!2586751 ((_ is Cons!29765) (innerList!9347 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))))) b!2588136))

(declare-fun b!2588138 () Bool)

(declare-fun e!1632795 () Bool)

(declare-fun tp!821474 () Bool)

(declare-fun tp!821470 () Bool)

(assert (=> b!2588138 (= e!1632795 (and tp!821474 tp!821470))))

(declare-fun b!2588140 () Bool)

(declare-fun tp!821472 () Bool)

(declare-fun tp!821473 () Bool)

(assert (=> b!2588140 (= e!1632795 (and tp!821472 tp!821473))))

(declare-fun b!2588137 () Bool)

(assert (=> b!2588137 (= e!1632795 tp_is_empty!13225)))

(declare-fun b!2588139 () Bool)

(declare-fun tp!821471 () Bool)

(assert (=> b!2588139 (= e!1632795 tp!821471)))

(assert (=> b!2586734 (= tp!821050 e!1632795)))

(assert (= (and b!2586734 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588137))

(assert (= (and b!2586734 ((_ is Concat!12409) (regOne!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588138))

(assert (= (and b!2586734 ((_ is Star!7665) (regOne!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588139))

(assert (= (and b!2586734 ((_ is Union!7665) (regOne!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588140))

(declare-fun b!2588142 () Bool)

(declare-fun e!1632796 () Bool)

(declare-fun tp!821479 () Bool)

(declare-fun tp!821475 () Bool)

(assert (=> b!2588142 (= e!1632796 (and tp!821479 tp!821475))))

(declare-fun b!2588144 () Bool)

(declare-fun tp!821477 () Bool)

(declare-fun tp!821478 () Bool)

(assert (=> b!2588144 (= e!1632796 (and tp!821477 tp!821478))))

(declare-fun b!2588141 () Bool)

(assert (=> b!2588141 (= e!1632796 tp_is_empty!13225)))

(declare-fun b!2588143 () Bool)

(declare-fun tp!821476 () Bool)

(assert (=> b!2588143 (= e!1632796 tp!821476)))

(assert (=> b!2586734 (= tp!821046 e!1632796)))

(assert (= (and b!2586734 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588141))

(assert (= (and b!2586734 ((_ is Concat!12409) (regTwo!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588142))

(assert (= (and b!2586734 ((_ is Star!7665) (regTwo!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588143))

(assert (= (and b!2586734 ((_ is Union!7665) (regTwo!15842 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588144))

(declare-fun b!2588145 () Bool)

(declare-fun e!1632797 () Bool)

(declare-fun tp!821480 () Bool)

(assert (=> b!2588145 (= e!1632797 (and tp_is_empty!13225 tp!821480))))

(assert (=> b!2586721 (= tp!821031 e!1632797)))

(assert (= (and b!2586721 ((_ is Cons!29765) (t!212230 (t!212230 (t!212230 suffix!1684))))) b!2588145))

(declare-fun b!2588147 () Bool)

(declare-fun e!1632798 () Bool)

(declare-fun tp!821485 () Bool)

(declare-fun tp!821481 () Bool)

(assert (=> b!2588147 (= e!1632798 (and tp!821485 tp!821481))))

(declare-fun b!2588149 () Bool)

(declare-fun tp!821483 () Bool)

(declare-fun tp!821484 () Bool)

(assert (=> b!2588149 (= e!1632798 (and tp!821483 tp!821484))))

(declare-fun b!2588146 () Bool)

(assert (=> b!2588146 (= e!1632798 tp_is_empty!13225)))

(declare-fun b!2588148 () Bool)

(declare-fun tp!821482 () Bool)

(assert (=> b!2588148 (= e!1632798 tp!821482)))

(assert (=> b!2586696 (= tp!820998 e!1632798)))

(assert (= (and b!2586696 ((_ is ElementMatch!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588146))

(assert (= (and b!2586696 ((_ is Concat!12409) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588147))

(assert (= (and b!2586696 ((_ is Star!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588148))

(assert (= (and b!2586696 ((_ is Union!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588149))

(declare-fun b!2588151 () Bool)

(declare-fun e!1632799 () Bool)

(declare-fun tp!821490 () Bool)

(declare-fun tp!821486 () Bool)

(assert (=> b!2588151 (= e!1632799 (and tp!821490 tp!821486))))

(declare-fun b!2588153 () Bool)

(declare-fun tp!821488 () Bool)

(declare-fun tp!821489 () Bool)

(assert (=> b!2588153 (= e!1632799 (and tp!821488 tp!821489))))

(declare-fun b!2588150 () Bool)

(assert (=> b!2588150 (= e!1632799 tp_is_empty!13225)))

(declare-fun b!2588152 () Bool)

(declare-fun tp!821487 () Bool)

(assert (=> b!2588152 (= e!1632799 tp!821487)))

(assert (=> b!2586696 (= tp!820999 e!1632799)))

(assert (= (and b!2586696 ((_ is ElementMatch!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588150))

(assert (= (and b!2586696 ((_ is Concat!12409) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588151))

(assert (= (and b!2586696 ((_ is Star!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588152))

(assert (= (and b!2586696 ((_ is Union!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588153))

(declare-fun b!2588155 () Bool)

(declare-fun e!1632800 () Bool)

(declare-fun tp!821495 () Bool)

(declare-fun tp!821491 () Bool)

(assert (=> b!2588155 (= e!1632800 (and tp!821495 tp!821491))))

(declare-fun b!2588157 () Bool)

(declare-fun tp!821493 () Bool)

(declare-fun tp!821494 () Bool)

(assert (=> b!2588157 (= e!1632800 (and tp!821493 tp!821494))))

(declare-fun b!2588154 () Bool)

(assert (=> b!2588154 (= e!1632800 tp_is_empty!13225)))

(declare-fun b!2588156 () Bool)

(declare-fun tp!821492 () Bool)

(assert (=> b!2588156 (= e!1632800 tp!821492)))

(assert (=> b!2586703 (= tp!821007 e!1632800)))

(assert (= (and b!2586703 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588154))

(assert (= (and b!2586703 ((_ is Concat!12409) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588155))

(assert (= (and b!2586703 ((_ is Star!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588156))

(assert (= (and b!2586703 ((_ is Union!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588157))

(declare-fun b!2588159 () Bool)

(declare-fun e!1632801 () Bool)

(declare-fun tp!821500 () Bool)

(declare-fun tp!821496 () Bool)

(assert (=> b!2588159 (= e!1632801 (and tp!821500 tp!821496))))

(declare-fun b!2588161 () Bool)

(declare-fun tp!821498 () Bool)

(declare-fun tp!821499 () Bool)

(assert (=> b!2588161 (= e!1632801 (and tp!821498 tp!821499))))

(declare-fun b!2588158 () Bool)

(assert (=> b!2588158 (= e!1632801 tp_is_empty!13225)))

(declare-fun b!2588160 () Bool)

(declare-fun tp!821497 () Bool)

(assert (=> b!2588160 (= e!1632801 tp!821497)))

(assert (=> b!2586694 (= tp!821000 e!1632801)))

(assert (= (and b!2586694 ((_ is ElementMatch!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588158))

(assert (= (and b!2586694 ((_ is Concat!12409) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588159))

(assert (= (and b!2586694 ((_ is Star!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588160))

(assert (= (and b!2586694 ((_ is Union!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588161))

(declare-fun b!2588163 () Bool)

(declare-fun e!1632802 () Bool)

(declare-fun tp!821505 () Bool)

(declare-fun tp!821501 () Bool)

(assert (=> b!2588163 (= e!1632802 (and tp!821505 tp!821501))))

(declare-fun b!2588165 () Bool)

(declare-fun tp!821503 () Bool)

(declare-fun tp!821504 () Bool)

(assert (=> b!2588165 (= e!1632802 (and tp!821503 tp!821504))))

(declare-fun b!2588162 () Bool)

(assert (=> b!2588162 (= e!1632802 tp_is_empty!13225)))

(declare-fun b!2588164 () Bool)

(declare-fun tp!821502 () Bool)

(assert (=> b!2588164 (= e!1632802 tp!821502)))

(assert (=> b!2586694 (= tp!820996 e!1632802)))

(assert (= (and b!2586694 ((_ is ElementMatch!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588162))

(assert (= (and b!2586694 ((_ is Concat!12409) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588163))

(assert (= (and b!2586694 ((_ is Star!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588164))

(assert (= (and b!2586694 ((_ is Union!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588165))

(declare-fun b!2588167 () Bool)

(declare-fun e!1632803 () Bool)

(declare-fun tp!821510 () Bool)

(declare-fun tp!821506 () Bool)

(assert (=> b!2588167 (= e!1632803 (and tp!821510 tp!821506))))

(declare-fun b!2588169 () Bool)

(declare-fun tp!821508 () Bool)

(declare-fun tp!821509 () Bool)

(assert (=> b!2588169 (= e!1632803 (and tp!821508 tp!821509))))

(declare-fun b!2588166 () Bool)

(assert (=> b!2588166 (= e!1632803 tp_is_empty!13225)))

(declare-fun b!2588168 () Bool)

(declare-fun tp!821507 () Bool)

(assert (=> b!2588168 (= e!1632803 tp!821507)))

(assert (=> b!2586754 (= tp!821067 e!1632803)))

(assert (= (and b!2586754 ((_ is ElementMatch!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))) b!2588166))

(assert (= (and b!2586754 ((_ is Concat!12409) (regex!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))) b!2588167))

(assert (= (and b!2586754 ((_ is Star!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))) b!2588168))

(assert (= (and b!2586754 ((_ is Union!7665) (regex!4521 (h!35186 (t!212231 (t!212231 rules!4580)))))) b!2588169))

(declare-fun e!1632805 () Bool)

(declare-fun b!2588170 () Bool)

(declare-fun tp!821513 () Bool)

(declare-fun tp!821512 () Bool)

(assert (=> b!2588170 (= e!1632805 (and (inv!40200 (left!22688 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) tp!821513 (inv!40200 (right!23018 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) tp!821512))))

(declare-fun b!2588172 () Bool)

(declare-fun e!1632804 () Bool)

(declare-fun tp!821511 () Bool)

(assert (=> b!2588172 (= e!1632804 tp!821511)))

(declare-fun b!2588171 () Bool)

(assert (=> b!2588171 (= e!1632805 (and (inv!40206 (xs!12271 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) e!1632804))))

(assert (=> b!2586749 (= tp!821064 (and (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) e!1632805))))

(assert (= (and b!2586749 ((_ is Node!9287) (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) b!2588170))

(assert (= b!2588171 b!2588172))

(assert (= (and b!2586749 ((_ is Leaf!14169) (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) b!2588171))

(declare-fun m!2924709 () Bool)

(assert (=> b!2588170 m!2924709))

(declare-fun m!2924711 () Bool)

(assert (=> b!2588170 m!2924711))

(declare-fun m!2924713 () Bool)

(assert (=> b!2588171 m!2924713))

(assert (=> b!2586749 m!2922979))

(declare-fun b!2588173 () Bool)

(declare-fun e!1632807 () Bool)

(declare-fun tp!821515 () Bool)

(declare-fun tp!821516 () Bool)

(assert (=> b!2588173 (= e!1632807 (and (inv!40200 (left!22688 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) tp!821516 (inv!40200 (right!23018 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) tp!821515))))

(declare-fun b!2588175 () Bool)

(declare-fun e!1632806 () Bool)

(declare-fun tp!821514 () Bool)

(assert (=> b!2588175 (= e!1632806 tp!821514)))

(declare-fun b!2588174 () Bool)

(assert (=> b!2588174 (= e!1632807 (and (inv!40206 (xs!12271 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) e!1632806))))

(assert (=> b!2586749 (= tp!821063 (and (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562))))) e!1632807))))

(assert (= (and b!2586749 ((_ is Node!9287) (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) b!2588173))

(assert (= b!2588174 b!2588175))

(assert (= (and b!2586749 ((_ is Leaf!14169) (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 token!562))) (value!146096 token!562)))))) b!2588174))

(declare-fun m!2924715 () Bool)

(assert (=> b!2588173 m!2924715))

(declare-fun m!2924717 () Bool)

(assert (=> b!2588173 m!2924717))

(declare-fun m!2924721 () Bool)

(assert (=> b!2588174 m!2924721))

(assert (=> b!2586749 m!2922981))

(declare-fun b!2588177 () Bool)

(declare-fun e!1632808 () Bool)

(declare-fun tp!821521 () Bool)

(declare-fun tp!821517 () Bool)

(assert (=> b!2588177 (= e!1632808 (and tp!821521 tp!821517))))

(declare-fun b!2588179 () Bool)

(declare-fun tp!821519 () Bool)

(declare-fun tp!821520 () Bool)

(assert (=> b!2588179 (= e!1632808 (and tp!821519 tp!821520))))

(declare-fun b!2588176 () Bool)

(assert (=> b!2588176 (= e!1632808 tp_is_empty!13225)))

(declare-fun b!2588178 () Bool)

(declare-fun tp!821518 () Bool)

(assert (=> b!2588178 (= e!1632808 tp!821518)))

(assert (=> b!2586760 (= tp!821073 e!1632808)))

(assert (= (and b!2586760 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588176))

(assert (= (and b!2586760 ((_ is Concat!12409) (regOne!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588177))

(assert (= (and b!2586760 ((_ is Star!7665) (regOne!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588178))

(assert (= (and b!2586760 ((_ is Union!7665) (regOne!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588179))

(declare-fun b!2588185 () Bool)

(declare-fun e!1632811 () Bool)

(declare-fun tp!821526 () Bool)

(declare-fun tp!821522 () Bool)

(assert (=> b!2588185 (= e!1632811 (and tp!821526 tp!821522))))

(declare-fun b!2588187 () Bool)

(declare-fun tp!821524 () Bool)

(declare-fun tp!821525 () Bool)

(assert (=> b!2588187 (= e!1632811 (and tp!821524 tp!821525))))

(declare-fun b!2588184 () Bool)

(assert (=> b!2588184 (= e!1632811 tp_is_empty!13225)))

(declare-fun b!2588186 () Bool)

(declare-fun tp!821523 () Bool)

(assert (=> b!2588186 (= e!1632811 tp!821523)))

(assert (=> b!2586760 (= tp!821074 e!1632811)))

(assert (= (and b!2586760 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588184))

(assert (= (and b!2586760 ((_ is Concat!12409) (regTwo!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588185))

(assert (= (and b!2586760 ((_ is Star!7665) (regTwo!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588186))

(assert (= (and b!2586760 ((_ is Union!7665) (regTwo!15843 (regOne!15842 (regex!4521 rule!570))))) b!2588187))

(declare-fun b!2588189 () Bool)

(declare-fun e!1632812 () Bool)

(declare-fun tp!821531 () Bool)

(declare-fun tp!821527 () Bool)

(assert (=> b!2588189 (= e!1632812 (and tp!821531 tp!821527))))

(declare-fun b!2588191 () Bool)

(declare-fun tp!821529 () Bool)

(declare-fun tp!821530 () Bool)

(assert (=> b!2588191 (= e!1632812 (and tp!821529 tp!821530))))

(declare-fun b!2588188 () Bool)

(assert (=> b!2588188 (= e!1632812 tp_is_empty!13225)))

(declare-fun b!2588190 () Bool)

(declare-fun tp!821528 () Bool)

(assert (=> b!2588190 (= e!1632812 tp!821528)))

(assert (=> b!2586712 (= tp!821018 e!1632812)))

(assert (= (and b!2586712 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588188))

(assert (= (and b!2586712 ((_ is Concat!12409) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588189))

(assert (= (and b!2586712 ((_ is Star!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588190))

(assert (= (and b!2586712 ((_ is Union!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588191))

(declare-fun b!2588193 () Bool)

(declare-fun e!1632813 () Bool)

(declare-fun tp!821536 () Bool)

(declare-fun tp!821532 () Bool)

(assert (=> b!2588193 (= e!1632813 (and tp!821536 tp!821532))))

(declare-fun b!2588195 () Bool)

(declare-fun tp!821534 () Bool)

(declare-fun tp!821535 () Bool)

(assert (=> b!2588195 (= e!1632813 (and tp!821534 tp!821535))))

(declare-fun b!2588192 () Bool)

(assert (=> b!2588192 (= e!1632813 tp_is_empty!13225)))

(declare-fun b!2588194 () Bool)

(declare-fun tp!821533 () Bool)

(assert (=> b!2588194 (= e!1632813 tp!821533)))

(assert (=> b!2586712 (= tp!821019 e!1632813)))

(assert (= (and b!2586712 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588192))

(assert (= (and b!2586712 ((_ is Concat!12409) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588193))

(assert (= (and b!2586712 ((_ is Star!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588194))

(assert (= (and b!2586712 ((_ is Union!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588195))

(declare-fun b!2588201 () Bool)

(declare-fun e!1632816 () Bool)

(declare-fun tp!821541 () Bool)

(declare-fun tp!821537 () Bool)

(assert (=> b!2588201 (= e!1632816 (and tp!821541 tp!821537))))

(declare-fun b!2588203 () Bool)

(declare-fun tp!821539 () Bool)

(declare-fun tp!821540 () Bool)

(assert (=> b!2588203 (= e!1632816 (and tp!821539 tp!821540))))

(declare-fun b!2588200 () Bool)

(assert (=> b!2588200 (= e!1632816 tp_is_empty!13225)))

(declare-fun b!2588202 () Bool)

(declare-fun tp!821538 () Bool)

(assert (=> b!2588202 (= e!1632816 tp!821538)))

(assert (=> b!2586772 (= tp!821088 e!1632816)))

(assert (= (and b!2586772 ((_ is ElementMatch!7665) (regOne!15843 (reg!7994 (regex!4521 rule!570))))) b!2588200))

(assert (= (and b!2586772 ((_ is Concat!12409) (regOne!15843 (reg!7994 (regex!4521 rule!570))))) b!2588201))

(assert (= (and b!2586772 ((_ is Star!7665) (regOne!15843 (reg!7994 (regex!4521 rule!570))))) b!2588202))

(assert (= (and b!2586772 ((_ is Union!7665) (regOne!15843 (reg!7994 (regex!4521 rule!570))))) b!2588203))

(declare-fun b!2588205 () Bool)

(declare-fun e!1632817 () Bool)

(declare-fun tp!821546 () Bool)

(declare-fun tp!821542 () Bool)

(assert (=> b!2588205 (= e!1632817 (and tp!821546 tp!821542))))

(declare-fun b!2588207 () Bool)

(declare-fun tp!821544 () Bool)

(declare-fun tp!821545 () Bool)

(assert (=> b!2588207 (= e!1632817 (and tp!821544 tp!821545))))

(declare-fun b!2588204 () Bool)

(assert (=> b!2588204 (= e!1632817 tp_is_empty!13225)))

(declare-fun b!2588206 () Bool)

(declare-fun tp!821543 () Bool)

(assert (=> b!2588206 (= e!1632817 tp!821543)))

(assert (=> b!2586772 (= tp!821089 e!1632817)))

(assert (= (and b!2586772 ((_ is ElementMatch!7665) (regTwo!15843 (reg!7994 (regex!4521 rule!570))))) b!2588204))

(assert (= (and b!2586772 ((_ is Concat!12409) (regTwo!15843 (reg!7994 (regex!4521 rule!570))))) b!2588205))

(assert (= (and b!2586772 ((_ is Star!7665) (regTwo!15843 (reg!7994 (regex!4521 rule!570))))) b!2588206))

(assert (= (and b!2586772 ((_ is Union!7665) (regTwo!15843 (reg!7994 (regex!4521 rule!570))))) b!2588207))

(declare-fun b!2588209 () Bool)

(declare-fun e!1632818 () Bool)

(declare-fun tp!821551 () Bool)

(declare-fun tp!821547 () Bool)

(assert (=> b!2588209 (= e!1632818 (and tp!821551 tp!821547))))

(declare-fun b!2588211 () Bool)

(declare-fun tp!821549 () Bool)

(declare-fun tp!821550 () Bool)

(assert (=> b!2588211 (= e!1632818 (and tp!821549 tp!821550))))

(declare-fun b!2588208 () Bool)

(assert (=> b!2588208 (= e!1632818 tp_is_empty!13225)))

(declare-fun b!2588210 () Bool)

(declare-fun tp!821548 () Bool)

(assert (=> b!2588210 (= e!1632818 tp!821548)))

(assert (=> b!2586763 (= tp!821077 e!1632818)))

(assert (= (and b!2586763 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15842 (regex!4521 rule!570))))) b!2588208))

(assert (= (and b!2586763 ((_ is Concat!12409) (reg!7994 (regTwo!15842 (regex!4521 rule!570))))) b!2588209))

(assert (= (and b!2586763 ((_ is Star!7665) (reg!7994 (regTwo!15842 (regex!4521 rule!570))))) b!2588210))

(assert (= (and b!2586763 ((_ is Union!7665) (reg!7994 (regTwo!15842 (regex!4521 rule!570))))) b!2588211))

(declare-fun b!2588217 () Bool)

(declare-fun e!1632822 () Bool)

(declare-fun tp!821556 () Bool)

(declare-fun tp!821552 () Bool)

(assert (=> b!2588217 (= e!1632822 (and tp!821556 tp!821552))))

(declare-fun b!2588219 () Bool)

(declare-fun tp!821554 () Bool)

(declare-fun tp!821555 () Bool)

(assert (=> b!2588219 (= e!1632822 (and tp!821554 tp!821555))))

(declare-fun b!2588216 () Bool)

(assert (=> b!2588216 (= e!1632822 tp_is_empty!13225)))

(declare-fun b!2588218 () Bool)

(declare-fun tp!821553 () Bool)

(assert (=> b!2588218 (= e!1632822 tp!821553)))

(assert (=> b!2586715 (= tp!821022 e!1632822)))

(assert (= (and b!2586715 ((_ is ElementMatch!7665) (reg!7994 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588216))

(assert (= (and b!2586715 ((_ is Concat!12409) (reg!7994 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588217))

(assert (= (and b!2586715 ((_ is Star!7665) (reg!7994 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588218))

(assert (= (and b!2586715 ((_ is Union!7665) (reg!7994 (regOne!15842 (regex!4521 (rule!6887 token!562)))))) b!2588219))

(declare-fun b!2588221 () Bool)

(declare-fun e!1632823 () Bool)

(declare-fun tp!821561 () Bool)

(declare-fun tp!821557 () Bool)

(assert (=> b!2588221 (= e!1632823 (and tp!821561 tp!821557))))

(declare-fun b!2588223 () Bool)

(declare-fun tp!821559 () Bool)

(declare-fun tp!821560 () Bool)

(assert (=> b!2588223 (= e!1632823 (and tp!821559 tp!821560))))

(declare-fun b!2588220 () Bool)

(assert (=> b!2588220 (= e!1632823 tp_is_empty!13225)))

(declare-fun b!2588222 () Bool)

(declare-fun tp!821558 () Bool)

(assert (=> b!2588222 (= e!1632823 tp!821558)))

(assert (=> b!2586706 (= tp!821015 e!1632823)))

(assert (= (and b!2586706 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588220))

(assert (= (and b!2586706 ((_ is Concat!12409) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588221))

(assert (= (and b!2586706 ((_ is Star!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588222))

(assert (= (and b!2586706 ((_ is Union!7665) (regOne!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588223))

(declare-fun b!2588225 () Bool)

(declare-fun e!1632824 () Bool)

(declare-fun tp!821566 () Bool)

(declare-fun tp!821562 () Bool)

(assert (=> b!2588225 (= e!1632824 (and tp!821566 tp!821562))))

(declare-fun b!2588227 () Bool)

(declare-fun tp!821564 () Bool)

(declare-fun tp!821565 () Bool)

(assert (=> b!2588227 (= e!1632824 (and tp!821564 tp!821565))))

(declare-fun b!2588224 () Bool)

(assert (=> b!2588224 (= e!1632824 tp_is_empty!13225)))

(declare-fun b!2588226 () Bool)

(declare-fun tp!821563 () Bool)

(assert (=> b!2588226 (= e!1632824 tp!821563)))

(assert (=> b!2586706 (= tp!821011 e!1632824)))

(assert (= (and b!2586706 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588224))

(assert (= (and b!2586706 ((_ is Concat!12409) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588225))

(assert (= (and b!2586706 ((_ is Star!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588226))

(assert (= (and b!2586706 ((_ is Union!7665) (regTwo!15842 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588227))

(declare-fun b!2588229 () Bool)

(declare-fun e!1632825 () Bool)

(declare-fun tp!821571 () Bool)

(declare-fun tp!821567 () Bool)

(assert (=> b!2588229 (= e!1632825 (and tp!821571 tp!821567))))

(declare-fun b!2588231 () Bool)

(declare-fun tp!821569 () Bool)

(declare-fun tp!821570 () Bool)

(assert (=> b!2588231 (= e!1632825 (and tp!821569 tp!821570))))

(declare-fun b!2588228 () Bool)

(assert (=> b!2588228 (= e!1632825 tp_is_empty!13225)))

(declare-fun b!2588230 () Bool)

(declare-fun tp!821568 () Bool)

(assert (=> b!2588230 (= e!1632825 tp!821568)))

(assert (=> b!2586728 (= tp!821038 e!1632825)))

(assert (= (and b!2586728 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588228))

(assert (= (and b!2586728 ((_ is Concat!12409) (regOne!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588229))

(assert (= (and b!2586728 ((_ is Star!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588230))

(assert (= (and b!2586728 ((_ is Union!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588231))

(declare-fun b!2588233 () Bool)

(declare-fun e!1632826 () Bool)

(declare-fun tp!821576 () Bool)

(declare-fun tp!821572 () Bool)

(assert (=> b!2588233 (= e!1632826 (and tp!821576 tp!821572))))

(declare-fun b!2588235 () Bool)

(declare-fun tp!821574 () Bool)

(declare-fun tp!821575 () Bool)

(assert (=> b!2588235 (= e!1632826 (and tp!821574 tp!821575))))

(declare-fun b!2588232 () Bool)

(assert (=> b!2588232 (= e!1632826 tp_is_empty!13225)))

(declare-fun b!2588234 () Bool)

(declare-fun tp!821573 () Bool)

(assert (=> b!2588234 (= e!1632826 tp!821573)))

(assert (=> b!2586728 (= tp!821039 e!1632826)))

(assert (= (and b!2586728 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588232))

(assert (= (and b!2586728 ((_ is Concat!12409) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588233))

(assert (= (and b!2586728 ((_ is Star!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588234))

(assert (= (and b!2586728 ((_ is Union!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588235))

(declare-fun b!2588237 () Bool)

(declare-fun e!1632827 () Bool)

(declare-fun tp!821581 () Bool)

(declare-fun tp!821577 () Bool)

(assert (=> b!2588237 (= e!1632827 (and tp!821581 tp!821577))))

(declare-fun b!2588239 () Bool)

(declare-fun tp!821579 () Bool)

(declare-fun tp!821580 () Bool)

(assert (=> b!2588239 (= e!1632827 (and tp!821579 tp!821580))))

(declare-fun b!2588236 () Bool)

(assert (=> b!2588236 (= e!1632827 tp_is_empty!13225)))

(declare-fun b!2588238 () Bool)

(declare-fun tp!821578 () Bool)

(assert (=> b!2588238 (= e!1632827 tp!821578)))

(assert (=> b!2586784 (= tp!821103 e!1632827)))

(assert (= (and b!2586784 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588236))

(assert (= (and b!2586784 ((_ is Concat!12409) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588237))

(assert (= (and b!2586784 ((_ is Star!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588238))

(assert (= (and b!2586784 ((_ is Union!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588239))

(declare-fun b!2588241 () Bool)

(declare-fun e!1632828 () Bool)

(declare-fun tp!821586 () Bool)

(declare-fun tp!821582 () Bool)

(assert (=> b!2588241 (= e!1632828 (and tp!821586 tp!821582))))

(declare-fun b!2588243 () Bool)

(declare-fun tp!821584 () Bool)

(declare-fun tp!821585 () Bool)

(assert (=> b!2588243 (= e!1632828 (and tp!821584 tp!821585))))

(declare-fun b!2588240 () Bool)

(assert (=> b!2588240 (= e!1632828 tp_is_empty!13225)))

(declare-fun b!2588242 () Bool)

(declare-fun tp!821583 () Bool)

(assert (=> b!2588242 (= e!1632828 tp!821583)))

(assert (=> b!2586784 (= tp!821104 e!1632828)))

(assert (= (and b!2586784 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588240))

(assert (= (and b!2586784 ((_ is Concat!12409) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588241))

(assert (= (and b!2586784 ((_ is Star!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588242))

(assert (= (and b!2586784 ((_ is Union!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588243))

(declare-fun b!2588245 () Bool)

(declare-fun e!1632829 () Bool)

(declare-fun tp!821591 () Bool)

(declare-fun tp!821587 () Bool)

(assert (=> b!2588245 (= e!1632829 (and tp!821591 tp!821587))))

(declare-fun b!2588247 () Bool)

(declare-fun tp!821589 () Bool)

(declare-fun tp!821590 () Bool)

(assert (=> b!2588247 (= e!1632829 (and tp!821589 tp!821590))))

(declare-fun b!2588244 () Bool)

(assert (=> b!2588244 (= e!1632829 tp_is_empty!13225)))

(declare-fun b!2588246 () Bool)

(declare-fun tp!821588 () Bool)

(assert (=> b!2588246 (= e!1632829 tp!821588)))

(assert (=> b!2586775 (= tp!821092 e!1632829)))

(assert (= (and b!2586775 ((_ is ElementMatch!7665) (reg!7994 (regOne!15843 (regex!4521 rule!570))))) b!2588244))

(assert (= (and b!2586775 ((_ is Concat!12409) (reg!7994 (regOne!15843 (regex!4521 rule!570))))) b!2588245))

(assert (= (and b!2586775 ((_ is Star!7665) (reg!7994 (regOne!15843 (regex!4521 rule!570))))) b!2588246))

(assert (= (and b!2586775 ((_ is Union!7665) (reg!7994 (regOne!15843 (regex!4521 rule!570))))) b!2588247))

(declare-fun b!2588249 () Bool)

(declare-fun e!1632830 () Bool)

(declare-fun tp!821596 () Bool)

(declare-fun tp!821592 () Bool)

(assert (=> b!2588249 (= e!1632830 (and tp!821596 tp!821592))))

(declare-fun b!2588251 () Bool)

(declare-fun tp!821594 () Bool)

(declare-fun tp!821595 () Bool)

(assert (=> b!2588251 (= e!1632830 (and tp!821594 tp!821595))))

(declare-fun b!2588248 () Bool)

(assert (=> b!2588248 (= e!1632830 tp_is_empty!13225)))

(declare-fun b!2588250 () Bool)

(declare-fun tp!821593 () Bool)

(assert (=> b!2588250 (= e!1632830 tp!821593)))

(assert (=> b!2586770 (= tp!821090 e!1632830)))

(assert (= (and b!2586770 ((_ is ElementMatch!7665) (regOne!15842 (reg!7994 (regex!4521 rule!570))))) b!2588248))

(assert (= (and b!2586770 ((_ is Concat!12409) (regOne!15842 (reg!7994 (regex!4521 rule!570))))) b!2588249))

(assert (= (and b!2586770 ((_ is Star!7665) (regOne!15842 (reg!7994 (regex!4521 rule!570))))) b!2588250))

(assert (= (and b!2586770 ((_ is Union!7665) (regOne!15842 (reg!7994 (regex!4521 rule!570))))) b!2588251))

(declare-fun b!2588253 () Bool)

(declare-fun e!1632831 () Bool)

(declare-fun tp!821601 () Bool)

(declare-fun tp!821597 () Bool)

(assert (=> b!2588253 (= e!1632831 (and tp!821601 tp!821597))))

(declare-fun b!2588255 () Bool)

(declare-fun tp!821599 () Bool)

(declare-fun tp!821600 () Bool)

(assert (=> b!2588255 (= e!1632831 (and tp!821599 tp!821600))))

(declare-fun b!2588252 () Bool)

(assert (=> b!2588252 (= e!1632831 tp_is_empty!13225)))

(declare-fun b!2588254 () Bool)

(declare-fun tp!821598 () Bool)

(assert (=> b!2588254 (= e!1632831 tp!821598)))

(assert (=> b!2586770 (= tp!821086 e!1632831)))

(assert (= (and b!2586770 ((_ is ElementMatch!7665) (regTwo!15842 (reg!7994 (regex!4521 rule!570))))) b!2588252))

(assert (= (and b!2586770 ((_ is Concat!12409) (regTwo!15842 (reg!7994 (regex!4521 rule!570))))) b!2588253))

(assert (= (and b!2586770 ((_ is Star!7665) (regTwo!15842 (reg!7994 (regex!4521 rule!570))))) b!2588254))

(assert (= (and b!2586770 ((_ is Union!7665) (regTwo!15842 (reg!7994 (regex!4521 rule!570))))) b!2588255))

(declare-fun b!2588257 () Bool)

(declare-fun e!1632832 () Bool)

(declare-fun tp!821606 () Bool)

(declare-fun tp!821602 () Bool)

(assert (=> b!2588257 (= e!1632832 (and tp!821606 tp!821602))))

(declare-fun b!2588259 () Bool)

(declare-fun tp!821604 () Bool)

(declare-fun tp!821605 () Bool)

(assert (=> b!2588259 (= e!1632832 (and tp!821604 tp!821605))))

(declare-fun b!2588256 () Bool)

(assert (=> b!2588256 (= e!1632832 tp_is_empty!13225)))

(declare-fun b!2588258 () Bool)

(declare-fun tp!821603 () Bool)

(assert (=> b!2588258 (= e!1632832 tp!821603)))

(assert (=> b!2586735 (= tp!821047 e!1632832)))

(assert (= (and b!2586735 ((_ is ElementMatch!7665) (reg!7994 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588256))

(assert (= (and b!2586735 ((_ is Concat!12409) (reg!7994 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588257))

(assert (= (and b!2586735 ((_ is Star!7665) (reg!7994 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588258))

(assert (= (and b!2586735 ((_ is Union!7665) (reg!7994 (regOne!15843 (regex!4521 (rule!6887 token!562)))))) b!2588259))

(declare-fun b!2588261 () Bool)

(declare-fun e!1632833 () Bool)

(declare-fun tp!821611 () Bool)

(declare-fun tp!821607 () Bool)

(assert (=> b!2588261 (= e!1632833 (and tp!821611 tp!821607))))

(declare-fun b!2588263 () Bool)

(declare-fun tp!821609 () Bool)

(declare-fun tp!821610 () Bool)

(assert (=> b!2588263 (= e!1632833 (and tp!821609 tp!821610))))

(declare-fun b!2588260 () Bool)

(assert (=> b!2588260 (= e!1632833 tp_is_empty!13225)))

(declare-fun b!2588262 () Bool)

(declare-fun tp!821608 () Bool)

(assert (=> b!2588262 (= e!1632833 tp!821608)))

(assert (=> b!2586726 (= tp!821040 e!1632833)))

(assert (= (and b!2586726 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588260))

(assert (= (and b!2586726 ((_ is Concat!12409) (regOne!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588261))

(assert (= (and b!2586726 ((_ is Star!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588262))

(assert (= (and b!2586726 ((_ is Union!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588263))

(declare-fun b!2588265 () Bool)

(declare-fun e!1632834 () Bool)

(declare-fun tp!821616 () Bool)

(declare-fun tp!821612 () Bool)

(assert (=> b!2588265 (= e!1632834 (and tp!821616 tp!821612))))

(declare-fun b!2588267 () Bool)

(declare-fun tp!821614 () Bool)

(declare-fun tp!821615 () Bool)

(assert (=> b!2588267 (= e!1632834 (and tp!821614 tp!821615))))

(declare-fun b!2588264 () Bool)

(assert (=> b!2588264 (= e!1632834 tp_is_empty!13225)))

(declare-fun b!2588266 () Bool)

(declare-fun tp!821613 () Bool)

(assert (=> b!2588266 (= e!1632834 tp!821613)))

(assert (=> b!2586726 (= tp!821036 e!1632834)))

(assert (= (and b!2586726 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588264))

(assert (= (and b!2586726 ((_ is Concat!12409) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588265))

(assert (= (and b!2586726 ((_ is Star!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588266))

(assert (= (and b!2586726 ((_ is Union!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rs!798)))))) b!2588267))

(declare-fun b!2588273 () Bool)

(declare-fun e!1632837 () Bool)

(declare-fun tp!821621 () Bool)

(declare-fun tp!821617 () Bool)

(assert (=> b!2588273 (= e!1632837 (and tp!821621 tp!821617))))

(declare-fun b!2588275 () Bool)

(declare-fun tp!821619 () Bool)

(declare-fun tp!821620 () Bool)

(assert (=> b!2588275 (= e!1632837 (and tp!821619 tp!821620))))

(declare-fun b!2588272 () Bool)

(assert (=> b!2588272 (= e!1632837 tp_is_empty!13225)))

(declare-fun b!2588274 () Bool)

(declare-fun tp!821618 () Bool)

(assert (=> b!2588274 (= e!1632837 tp!821618)))

(assert (=> b!2586786 (= tp!821110 e!1632837)))

(assert (= (and b!2586786 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588272))

(assert (= (and b!2586786 ((_ is Concat!12409) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588273))

(assert (= (and b!2586786 ((_ is Star!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588274))

(assert (= (and b!2586786 ((_ is Union!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588275))

(declare-fun b!2588277 () Bool)

(declare-fun e!1632838 () Bool)

(declare-fun tp!821626 () Bool)

(declare-fun tp!821622 () Bool)

(assert (=> b!2588277 (= e!1632838 (and tp!821626 tp!821622))))

(declare-fun b!2588279 () Bool)

(declare-fun tp!821624 () Bool)

(declare-fun tp!821625 () Bool)

(assert (=> b!2588279 (= e!1632838 (and tp!821624 tp!821625))))

(declare-fun b!2588276 () Bool)

(assert (=> b!2588276 (= e!1632838 tp_is_empty!13225)))

(declare-fun b!2588278 () Bool)

(declare-fun tp!821623 () Bool)

(assert (=> b!2588278 (= e!1632838 tp!821623)))

(assert (=> b!2586786 (= tp!821106 e!1632838)))

(assert (= (and b!2586786 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588276))

(assert (= (and b!2586786 ((_ is Concat!12409) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588277))

(assert (= (and b!2586786 ((_ is Star!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588278))

(assert (= (and b!2586786 ((_ is Union!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rs!798)))))) b!2588279))

(declare-fun b!2588281 () Bool)

(declare-fun e!1632839 () Bool)

(declare-fun tp!821631 () Bool)

(declare-fun tp!821627 () Bool)

(assert (=> b!2588281 (= e!1632839 (and tp!821631 tp!821627))))

(declare-fun b!2588283 () Bool)

(declare-fun tp!821629 () Bool)

(declare-fun tp!821630 () Bool)

(assert (=> b!2588283 (= e!1632839 (and tp!821629 tp!821630))))

(declare-fun b!2588280 () Bool)

(assert (=> b!2588280 (= e!1632839 tp_is_empty!13225)))

(declare-fun b!2588282 () Bool)

(declare-fun tp!821628 () Bool)

(assert (=> b!2588282 (= e!1632839 tp!821628)))

(assert (=> b!2586692 (= tp!820993 e!1632839)))

(assert (= (and b!2586692 ((_ is ElementMatch!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588280))

(assert (= (and b!2586692 ((_ is Concat!12409) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588281))

(assert (= (and b!2586692 ((_ is Star!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588282))

(assert (= (and b!2586692 ((_ is Union!7665) (regOne!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588283))

(declare-fun b!2588285 () Bool)

(declare-fun e!1632840 () Bool)

(declare-fun tp!821636 () Bool)

(declare-fun tp!821632 () Bool)

(assert (=> b!2588285 (= e!1632840 (and tp!821636 tp!821632))))

(declare-fun b!2588287 () Bool)

(declare-fun tp!821634 () Bool)

(declare-fun tp!821635 () Bool)

(assert (=> b!2588287 (= e!1632840 (and tp!821634 tp!821635))))

(declare-fun b!2588284 () Bool)

(assert (=> b!2588284 (= e!1632840 tp_is_empty!13225)))

(declare-fun b!2588286 () Bool)

(declare-fun tp!821633 () Bool)

(assert (=> b!2588286 (= e!1632840 tp!821633)))

(assert (=> b!2586692 (= tp!820994 e!1632840)))

(assert (= (and b!2586692 ((_ is ElementMatch!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588284))

(assert (= (and b!2586692 ((_ is Concat!12409) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588285))

(assert (= (and b!2586692 ((_ is Star!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588286))

(assert (= (and b!2586692 ((_ is Union!7665) (regTwo!15843 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588287))

(declare-fun b!2588293 () Bool)

(declare-fun e!1632843 () Bool)

(declare-fun tp!821641 () Bool)

(declare-fun tp!821637 () Bool)

(assert (=> b!2588293 (= e!1632843 (and tp!821641 tp!821637))))

(declare-fun b!2588295 () Bool)

(declare-fun tp!821639 () Bool)

(declare-fun tp!821640 () Bool)

(assert (=> b!2588295 (= e!1632843 (and tp!821639 tp!821640))))

(declare-fun b!2588292 () Bool)

(assert (=> b!2588292 (= e!1632843 tp_is_empty!13225)))

(declare-fun b!2588294 () Bool)

(declare-fun tp!821638 () Bool)

(assert (=> b!2588294 (= e!1632843 tp!821638)))

(assert (=> b!2586683 (= tp!820982 e!1632843)))

(assert (= (and b!2586683 ((_ is ElementMatch!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588292))

(assert (= (and b!2586683 ((_ is Concat!12409) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588293))

(assert (= (and b!2586683 ((_ is Star!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588294))

(assert (= (and b!2586683 ((_ is Union!7665) (reg!7994 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588295))

(declare-fun tp!821644 () Bool)

(declare-fun b!2588296 () Bool)

(declare-fun e!1632845 () Bool)

(declare-fun tp!821643 () Bool)

(assert (=> b!2588296 (= e!1632845 (and (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))) tp!821644 (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))) tp!821643))))

(declare-fun b!2588298 () Bool)

(declare-fun e!1632844 () Bool)

(declare-fun tp!821642 () Bool)

(assert (=> b!2588298 (= e!1632844 tp!821642)))

(declare-fun b!2588297 () Bool)

(assert (=> b!2588297 (= e!1632845 (and (inv!40206 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))) e!1632844))))

(assert (=> b!2586565 (= tp!820980 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270)))))) e!1632845))))

(assert (= (and b!2586565 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))) b!2588296))

(assert (= b!2588297 b!2588298))

(assert (= (and b!2586565 ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))))) b!2588297))

(declare-fun m!2924775 () Bool)

(assert (=> b!2588296 m!2924775))

(declare-fun m!2924777 () Bool)

(assert (=> b!2588296 m!2924777))

(declare-fun m!2924779 () Bool)

(assert (=> b!2588297 m!2924779))

(assert (=> b!2586565 m!2922839))

(declare-fun b!2588299 () Bool)

(declare-fun e!1632846 () Bool)

(declare-fun tp!821645 () Bool)

(assert (=> b!2588299 (= e!1632846 (and tp_is_empty!13225 tp!821645))))

(assert (=> b!2586752 (= tp!821065 e!1632846)))

(assert (= (and b!2586752 ((_ is Cons!29765) (t!212230 (t!212230 (originalCharacters!5287 token!562))))) b!2588299))

(declare-fun b!2588300 () Bool)

(declare-fun e!1632847 () Bool)

(declare-fun tp!821646 () Bool)

(assert (=> b!2588300 (= e!1632847 (and tp_is_empty!13225 tp!821646))))

(assert (=> b!2586756 (= tp!821070 e!1632847)))

(assert (= (and b!2586756 ((_ is Cons!29765) (t!212230 (t!212230 (t!212230 input!3654))))) b!2588300))

(declare-fun b!2588302 () Bool)

(declare-fun e!1632848 () Bool)

(declare-fun tp!821651 () Bool)

(declare-fun tp!821647 () Bool)

(assert (=> b!2588302 (= e!1632848 (and tp!821651 tp!821647))))

(declare-fun b!2588304 () Bool)

(declare-fun tp!821649 () Bool)

(declare-fun tp!821650 () Bool)

(assert (=> b!2588304 (= e!1632848 (and tp!821649 tp!821650))))

(declare-fun b!2588301 () Bool)

(assert (=> b!2588301 (= e!1632848 tp_is_empty!13225)))

(declare-fun b!2588303 () Bool)

(declare-fun tp!821648 () Bool)

(assert (=> b!2588303 (= e!1632848 tp!821648)))

(assert (=> b!2586708 (= tp!821013 e!1632848)))

(assert (= (and b!2586708 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588301))

(assert (= (and b!2586708 ((_ is Concat!12409) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588302))

(assert (= (and b!2586708 ((_ is Star!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588303))

(assert (= (and b!2586708 ((_ is Union!7665) (regOne!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588304))

(declare-fun b!2588306 () Bool)

(declare-fun e!1632849 () Bool)

(declare-fun tp!821656 () Bool)

(declare-fun tp!821652 () Bool)

(assert (=> b!2588306 (= e!1632849 (and tp!821656 tp!821652))))

(declare-fun b!2588308 () Bool)

(declare-fun tp!821654 () Bool)

(declare-fun tp!821655 () Bool)

(assert (=> b!2588308 (= e!1632849 (and tp!821654 tp!821655))))

(declare-fun b!2588305 () Bool)

(assert (=> b!2588305 (= e!1632849 tp_is_empty!13225)))

(declare-fun b!2588307 () Bool)

(declare-fun tp!821653 () Bool)

(assert (=> b!2588307 (= e!1632849 tp!821653)))

(assert (=> b!2586708 (= tp!821014 e!1632849)))

(assert (= (and b!2586708 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588305))

(assert (= (and b!2586708 ((_ is Concat!12409) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588306))

(assert (= (and b!2586708 ((_ is Star!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588307))

(assert (= (and b!2586708 ((_ is Union!7665) (regTwo!15843 (regOne!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588308))

(declare-fun b!2588312 () Bool)

(declare-fun e!1632851 () Bool)

(declare-fun tp!821661 () Bool)

(declare-fun tp!821657 () Bool)

(assert (=> b!2588312 (= e!1632851 (and tp!821661 tp!821657))))

(declare-fun b!2588314 () Bool)

(declare-fun tp!821659 () Bool)

(declare-fun tp!821660 () Bool)

(assert (=> b!2588314 (= e!1632851 (and tp!821659 tp!821660))))

(declare-fun b!2588311 () Bool)

(assert (=> b!2588311 (= e!1632851 tp_is_empty!13225)))

(declare-fun b!2588313 () Bool)

(declare-fun tp!821658 () Bool)

(assert (=> b!2588313 (= e!1632851 tp!821658)))

(assert (=> b!2586699 (= tp!821002 e!1632851)))

(assert (= (and b!2586699 ((_ is ElementMatch!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588311))

(assert (= (and b!2586699 ((_ is Concat!12409) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588312))

(assert (= (and b!2586699 ((_ is Star!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588313))

(assert (= (and b!2586699 ((_ is Union!7665) (reg!7994 (regOne!15843 (regex!4521 (h!35186 rs!798)))))) b!2588314))

(declare-fun b!2588316 () Bool)

(declare-fun e!1632852 () Bool)

(declare-fun tp!821666 () Bool)

(declare-fun tp!821662 () Bool)

(assert (=> b!2588316 (= e!1632852 (and tp!821666 tp!821662))))

(declare-fun b!2588318 () Bool)

(declare-fun tp!821664 () Bool)

(declare-fun tp!821665 () Bool)

(assert (=> b!2588318 (= e!1632852 (and tp!821664 tp!821665))))

(declare-fun b!2588315 () Bool)

(assert (=> b!2588315 (= e!1632852 tp_is_empty!13225)))

(declare-fun b!2588317 () Bool)

(declare-fun tp!821663 () Bool)

(assert (=> b!2588317 (= e!1632852 tp!821663)))

(assert (=> b!2586690 (= tp!820995 e!1632852)))

(assert (= (and b!2586690 ((_ is ElementMatch!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588315))

(assert (= (and b!2586690 ((_ is Concat!12409) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588316))

(assert (= (and b!2586690 ((_ is Star!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588317))

(assert (= (and b!2586690 ((_ is Union!7665) (regOne!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588318))

(declare-fun b!2588322 () Bool)

(declare-fun e!1632855 () Bool)

(declare-fun tp!821671 () Bool)

(declare-fun tp!821667 () Bool)

(assert (=> b!2588322 (= e!1632855 (and tp!821671 tp!821667))))

(declare-fun b!2588324 () Bool)

(declare-fun tp!821669 () Bool)

(declare-fun tp!821670 () Bool)

(assert (=> b!2588324 (= e!1632855 (and tp!821669 tp!821670))))

(declare-fun b!2588321 () Bool)

(assert (=> b!2588321 (= e!1632855 tp_is_empty!13225)))

(declare-fun b!2588323 () Bool)

(declare-fun tp!821668 () Bool)

(assert (=> b!2588323 (= e!1632855 tp!821668)))

(assert (=> b!2586690 (= tp!820991 e!1632855)))

(assert (= (and b!2586690 ((_ is ElementMatch!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588321))

(assert (= (and b!2586690 ((_ is Concat!12409) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588322))

(assert (= (and b!2586690 ((_ is Star!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588323))

(assert (= (and b!2586690 ((_ is Union!7665) (regTwo!15842 (reg!7994 (regex!4521 (h!35186 rs!798)))))) b!2588324))

(declare-fun b!2588327 () Bool)

(declare-fun b_free!72901 () Bool)

(declare-fun b_next!73605 () Bool)

(assert (=> b!2588327 (= b_free!72901 (not b_next!73605))))

(declare-fun t!212691 () Bool)

(declare-fun tb!141289 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570))) t!212691) tb!141289))

(declare-fun result!175576 () Bool)

(assert (= result!175576 result!175316))

(assert (=> d!732492 t!212691))

(declare-fun t!212693 () Bool)

(declare-fun tb!141291 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212693) tb!141291))

(declare-fun result!175578 () Bool)

(assert (= result!175578 result!175280))

(assert (=> d!732432 t!212693))

(declare-fun tb!141293 () Bool)

(declare-fun t!212695 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570))) t!212695) tb!141293))

(declare-fun result!175580 () Bool)

(assert (= result!175580 result!175432))

(assert (=> d!732762 t!212695))

(assert (=> d!732494 t!212691))

(declare-fun tb!141295 () Bool)

(declare-fun t!212697 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212697) tb!141295))

(declare-fun result!175582 () Bool)

(assert (= result!175582 result!175416))

(assert (=> d!732688 t!212697))

(declare-fun tb!141297 () Bool)

(declare-fun t!212699 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212699) tb!141297))

(declare-fun result!175584 () Bool)

(assert (= result!175584 result!175480))

(assert (=> d!732960 t!212699))

(declare-fun tb!141299 () Bool)

(declare-fun t!212701 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570))) t!212701) tb!141299))

(declare-fun result!175586 () Bool)

(assert (= result!175586 result!175114))

(assert (=> d!732112 t!212701))

(declare-fun t!212703 () Bool)

(declare-fun tb!141301 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212703) tb!141301))

(declare-fun result!175588 () Bool)

(assert (= result!175588 result!175528))

(assert (=> d!733170 t!212703))

(declare-fun t!212705 () Bool)

(declare-fun tb!141303 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570))) t!212705) tb!141303))

(declare-fun result!175590 () Bool)

(assert (= result!175590 result!175184))

(assert (=> d!732272 t!212705))

(assert (=> d!733166 t!212703))

(declare-fun t!212707 () Bool)

(declare-fun tb!141305 () Bool)

(assert (=> (and b!2588327 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212707) tb!141305))

(declare-fun result!175592 () Bool)

(assert (= result!175592 result!175172))

(assert (=> d!732234 t!212707))

(declare-fun tp!821675 () Bool)

(declare-fun b_and!189995 () Bool)

(assert (=> b!2588327 (= tp!821675 (and (=> t!212693 result!175578) (=> t!212699 result!175584) (=> t!212701 result!175586) (=> t!212705 result!175590) (=> t!212707 result!175592) (=> t!212691 result!175576) (=> t!212695 result!175580) (=> t!212703 result!175588) (=> t!212697 result!175582) b_and!189995))))

(declare-fun b_free!72903 () Bool)

(declare-fun b_next!73607 () Bool)

(assert (=> b!2588327 (= b_free!72903 (not b_next!73607))))

(declare-fun t!212709 () Bool)

(declare-fun tb!141307 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212709) tb!141307))

(declare-fun result!175594 () Bool)

(assert (= result!175594 result!175292))

(assert (=> d!732474 t!212709))

(declare-fun t!212711 () Bool)

(declare-fun tb!141309 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212711) tb!141309))

(declare-fun result!175596 () Bool)

(assert (= result!175596 result!175512))

(assert (=> d!733066 t!212711))

(declare-fun t!212713 () Bool)

(declare-fun tb!141311 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 rule!570))) t!212713) tb!141311))

(declare-fun result!175598 () Bool)

(assert (= result!175598 result!175304))

(assert (=> d!732492 t!212713))

(declare-fun tb!141313 () Bool)

(declare-fun t!212715 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212715) tb!141313))

(declare-fun result!175600 () Bool)

(assert (= result!175600 result!175268))

(assert (=> d!732420 t!212715))

(declare-fun tb!141315 () Bool)

(declare-fun t!212717 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212717) tb!141315))

(declare-fun result!175602 () Bool)

(assert (= result!175602 result!175544))

(assert (=> d!733170 t!212717))

(declare-fun t!212719 () Bool)

(declare-fun tb!141317 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212719) tb!141317))

(declare-fun result!175604 () Bool)

(assert (= result!175604 result!175124))

(assert (=> b!2585855 t!212719))

(declare-fun tb!141319 () Bool)

(declare-fun t!212721 () Bool)

(assert (=> (and b!2588327 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212721) tb!141319))

(declare-fun result!175606 () Bool)

(assert (= result!175606 result!175448))

(assert (=> d!732902 t!212721))

(assert (=> d!732114 t!212719))

(declare-fun tp!821672 () Bool)

(declare-fun b_and!189997 () Bool)

(assert (=> b!2588327 (= tp!821672 (and (=> t!212709 result!175594) (=> t!212719 result!175604) (=> t!212711 result!175596) (=> t!212717 result!175602) (=> t!212721 result!175606) (=> t!212713 result!175598) (=> t!212715 result!175600) b_and!189997))))

(declare-fun e!1632859 () Bool)

(assert (=> b!2588327 (= e!1632859 (and tp!821675 tp!821672))))

(declare-fun tp!821673 () Bool)

(declare-fun e!1632857 () Bool)

(declare-fun b!2588326 () Bool)

(assert (=> b!2588326 (= e!1632857 (and tp!821673 (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) e!1632859))))

(declare-fun b!2588325 () Bool)

(declare-fun e!1632858 () Bool)

(declare-fun tp!821674 () Bool)

(assert (=> b!2588325 (= e!1632858 (and e!1632857 tp!821674))))

(assert (=> b!2586722 (= tp!821034 e!1632858)))

(assert (= b!2588326 b!2588327))

(assert (= b!2588325 b!2588326))

(assert (= (and b!2586722 ((_ is Cons!29766) (t!212231 (t!212231 (t!212231 rs!798))))) b!2588325))

(declare-fun m!2924791 () Bool)

(assert (=> b!2588326 m!2924791))

(declare-fun m!2924793 () Bool)

(assert (=> b!2588326 m!2924793))

(declare-fun b!2588332 () Bool)

(declare-fun e!1632862 () Bool)

(declare-fun tp!821680 () Bool)

(declare-fun tp!821676 () Bool)

(assert (=> b!2588332 (= e!1632862 (and tp!821680 tp!821676))))

(declare-fun b!2588334 () Bool)

(declare-fun tp!821678 () Bool)

(declare-fun tp!821679 () Bool)

(assert (=> b!2588334 (= e!1632862 (and tp!821678 tp!821679))))

(declare-fun b!2588331 () Bool)

(assert (=> b!2588331 (= e!1632862 tp_is_empty!13225)))

(declare-fun b!2588333 () Bool)

(declare-fun tp!821677 () Bool)

(assert (=> b!2588333 (= e!1632862 tp!821677)))

(assert (=> b!2586768 (= tp!821083 e!1632862)))

(assert (= (and b!2586768 ((_ is ElementMatch!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588331))

(assert (= (and b!2586768 ((_ is Concat!12409) (regOne!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588332))

(assert (= (and b!2586768 ((_ is Star!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588333))

(assert (= (and b!2586768 ((_ is Union!7665) (regOne!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588334))

(declare-fun b!2588336 () Bool)

(declare-fun e!1632863 () Bool)

(declare-fun tp!821685 () Bool)

(declare-fun tp!821681 () Bool)

(assert (=> b!2588336 (= e!1632863 (and tp!821685 tp!821681))))

(declare-fun b!2588338 () Bool)

(declare-fun tp!821683 () Bool)

(declare-fun tp!821684 () Bool)

(assert (=> b!2588338 (= e!1632863 (and tp!821683 tp!821684))))

(declare-fun b!2588335 () Bool)

(assert (=> b!2588335 (= e!1632863 tp_is_empty!13225)))

(declare-fun b!2588337 () Bool)

(declare-fun tp!821682 () Bool)

(assert (=> b!2588337 (= e!1632863 tp!821682)))

(assert (=> b!2586768 (= tp!821084 e!1632863)))

(assert (= (and b!2586768 ((_ is ElementMatch!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588335))

(assert (= (and b!2586768 ((_ is Concat!12409) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588336))

(assert (= (and b!2586768 ((_ is Star!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588337))

(assert (= (and b!2586768 ((_ is Union!7665) (regTwo!15843 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588338))

(declare-fun b!2588340 () Bool)

(declare-fun e!1632864 () Bool)

(declare-fun tp!821690 () Bool)

(declare-fun tp!821686 () Bool)

(assert (=> b!2588340 (= e!1632864 (and tp!821690 tp!821686))))

(declare-fun b!2588342 () Bool)

(declare-fun tp!821688 () Bool)

(declare-fun tp!821689 () Bool)

(assert (=> b!2588342 (= e!1632864 (and tp!821688 tp!821689))))

(declare-fun b!2588339 () Bool)

(assert (=> b!2588339 (= e!1632864 tp_is_empty!13225)))

(declare-fun b!2588341 () Bool)

(declare-fun tp!821687 () Bool)

(assert (=> b!2588341 (= e!1632864 tp!821687)))

(assert (=> b!2586720 (= tp!821028 e!1632864)))

(assert (= (and b!2586720 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588339))

(assert (= (and b!2586720 ((_ is Concat!12409) (regOne!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588340))

(assert (= (and b!2586720 ((_ is Star!7665) (regOne!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588341))

(assert (= (and b!2586720 ((_ is Union!7665) (regOne!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588342))

(declare-fun b!2588344 () Bool)

(declare-fun e!1632865 () Bool)

(declare-fun tp!821695 () Bool)

(declare-fun tp!821691 () Bool)

(assert (=> b!2588344 (= e!1632865 (and tp!821695 tp!821691))))

(declare-fun b!2588346 () Bool)

(declare-fun tp!821693 () Bool)

(declare-fun tp!821694 () Bool)

(assert (=> b!2588346 (= e!1632865 (and tp!821693 tp!821694))))

(declare-fun b!2588343 () Bool)

(assert (=> b!2588343 (= e!1632865 tp_is_empty!13225)))

(declare-fun b!2588345 () Bool)

(declare-fun tp!821692 () Bool)

(assert (=> b!2588345 (= e!1632865 tp!821692)))

(assert (=> b!2586720 (= tp!821029 e!1632865)))

(assert (= (and b!2586720 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588343))

(assert (= (and b!2586720 ((_ is Concat!12409) (regTwo!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588344))

(assert (= (and b!2586720 ((_ is Star!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588345))

(assert (= (and b!2586720 ((_ is Union!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588346))

(declare-fun b!2588348 () Bool)

(declare-fun e!1632866 () Bool)

(declare-fun tp!821700 () Bool)

(declare-fun tp!821696 () Bool)

(assert (=> b!2588348 (= e!1632866 (and tp!821700 tp!821696))))

(declare-fun b!2588350 () Bool)

(declare-fun tp!821698 () Bool)

(declare-fun tp!821699 () Bool)

(assert (=> b!2588350 (= e!1632866 (and tp!821698 tp!821699))))

(declare-fun b!2588347 () Bool)

(assert (=> b!2588347 (= e!1632866 tp_is_empty!13225)))

(declare-fun b!2588349 () Bool)

(declare-fun tp!821697 () Bool)

(assert (=> b!2588349 (= e!1632866 tp!821697)))

(assert (=> b!2586759 (= tp!821072 e!1632866)))

(assert (= (and b!2586759 ((_ is ElementMatch!7665) (reg!7994 (regOne!15842 (regex!4521 rule!570))))) b!2588347))

(assert (= (and b!2586759 ((_ is Concat!12409) (reg!7994 (regOne!15842 (regex!4521 rule!570))))) b!2588348))

(assert (= (and b!2586759 ((_ is Star!7665) (reg!7994 (regOne!15842 (regex!4521 rule!570))))) b!2588349))

(assert (= (and b!2586759 ((_ is Union!7665) (reg!7994 (regOne!15842 (regex!4521 rule!570))))) b!2588350))

(declare-fun b!2588352 () Bool)

(declare-fun e!1632867 () Bool)

(declare-fun tp!821705 () Bool)

(declare-fun tp!821701 () Bool)

(assert (=> b!2588352 (= e!1632867 (and tp!821705 tp!821701))))

(declare-fun b!2588354 () Bool)

(declare-fun tp!821703 () Bool)

(declare-fun tp!821704 () Bool)

(assert (=> b!2588354 (= e!1632867 (and tp!821703 tp!821704))))

(declare-fun b!2588351 () Bool)

(assert (=> b!2588351 (= e!1632867 tp_is_empty!13225)))

(declare-fun b!2588353 () Bool)

(declare-fun tp!821702 () Bool)

(assert (=> b!2588353 (= e!1632867 tp!821702)))

(assert (=> b!2586766 (= tp!821085 e!1632867)))

(assert (= (and b!2586766 ((_ is ElementMatch!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588351))

(assert (= (and b!2586766 ((_ is Concat!12409) (regOne!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588352))

(assert (= (and b!2586766 ((_ is Star!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588353))

(assert (= (and b!2586766 ((_ is Union!7665) (regOne!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588354))

(declare-fun b!2588356 () Bool)

(declare-fun e!1632868 () Bool)

(declare-fun tp!821710 () Bool)

(declare-fun tp!821706 () Bool)

(assert (=> b!2588356 (= e!1632868 (and tp!821710 tp!821706))))

(declare-fun b!2588358 () Bool)

(declare-fun tp!821708 () Bool)

(declare-fun tp!821709 () Bool)

(assert (=> b!2588358 (= e!1632868 (and tp!821708 tp!821709))))

(declare-fun b!2588355 () Bool)

(assert (=> b!2588355 (= e!1632868 tp_is_empty!13225)))

(declare-fun b!2588357 () Bool)

(declare-fun tp!821707 () Bool)

(assert (=> b!2588357 (= e!1632868 tp!821707)))

(assert (=> b!2586766 (= tp!821081 e!1632868)))

(assert (= (and b!2586766 ((_ is ElementMatch!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588355))

(assert (= (and b!2586766 ((_ is Concat!12409) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588356))

(assert (= (and b!2586766 ((_ is Star!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588357))

(assert (= (and b!2586766 ((_ is Union!7665) (regTwo!15842 (regex!4521 (h!35186 (t!212231 rules!4580)))))) b!2588358))

(declare-fun b!2588361 () Bool)

(declare-fun e!1632871 () Bool)

(declare-fun tp!821715 () Bool)

(declare-fun tp!821711 () Bool)

(assert (=> b!2588361 (= e!1632871 (and tp!821715 tp!821711))))

(declare-fun b!2588364 () Bool)

(declare-fun tp!821713 () Bool)

(declare-fun tp!821714 () Bool)

(assert (=> b!2588364 (= e!1632871 (and tp!821713 tp!821714))))

(declare-fun b!2588359 () Bool)

(assert (=> b!2588359 (= e!1632871 tp_is_empty!13225)))

(declare-fun b!2588363 () Bool)

(declare-fun tp!821712 () Bool)

(assert (=> b!2588363 (= e!1632871 tp!821712)))

(assert (=> b!2586718 (= tp!821030 e!1632871)))

(assert (= (and b!2586718 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588359))

(assert (= (and b!2586718 ((_ is Concat!12409) (regOne!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588361))

(assert (= (and b!2586718 ((_ is Star!7665) (regOne!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588363))

(assert (= (and b!2586718 ((_ is Union!7665) (regOne!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588364))

(declare-fun b!2588368 () Bool)

(declare-fun e!1632874 () Bool)

(declare-fun tp!821720 () Bool)

(declare-fun tp!821716 () Bool)

(assert (=> b!2588368 (= e!1632874 (and tp!821720 tp!821716))))

(declare-fun b!2588370 () Bool)

(declare-fun tp!821718 () Bool)

(declare-fun tp!821719 () Bool)

(assert (=> b!2588370 (= e!1632874 (and tp!821718 tp!821719))))

(declare-fun b!2588367 () Bool)

(assert (=> b!2588367 (= e!1632874 tp_is_empty!13225)))

(declare-fun b!2588369 () Bool)

(declare-fun tp!821717 () Bool)

(assert (=> b!2588369 (= e!1632874 tp!821717)))

(assert (=> b!2586718 (= tp!821026 e!1632874)))

(assert (= (and b!2586718 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588367))

(assert (= (and b!2586718 ((_ is Concat!12409) (regTwo!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588368))

(assert (= (and b!2586718 ((_ is Star!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588369))

(assert (= (and b!2586718 ((_ is Union!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (rule!6887 token!562)))))) b!2588370))

(declare-fun b!2588380 () Bool)

(declare-fun e!1632875 () Bool)

(declare-fun tp!821725 () Bool)

(declare-fun tp!821721 () Bool)

(assert (=> b!2588380 (= e!1632875 (and tp!821725 tp!821721))))

(declare-fun b!2588382 () Bool)

(declare-fun tp!821723 () Bool)

(declare-fun tp!821724 () Bool)

(assert (=> b!2588382 (= e!1632875 (and tp!821723 tp!821724))))

(declare-fun b!2588379 () Bool)

(assert (=> b!2588379 (= e!1632875 tp_is_empty!13225)))

(declare-fun b!2588381 () Bool)

(declare-fun tp!821722 () Bool)

(assert (=> b!2588381 (= e!1632875 tp!821722)))

(assert (=> b!2586731 (= tp!821042 e!1632875)))

(assert (= (and b!2586731 ((_ is ElementMatch!7665) (reg!7994 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588379))

(assert (= (and b!2586731 ((_ is Concat!12409) (reg!7994 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588380))

(assert (= (and b!2586731 ((_ is Star!7665) (reg!7994 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588381))

(assert (= (and b!2586731 ((_ is Union!7665) (reg!7994 (reg!7994 (regex!4521 (rule!6887 token!562)))))) b!2588382))

(declare-fun b!2588384 () Bool)

(declare-fun e!1632876 () Bool)

(declare-fun tp!821730 () Bool)

(declare-fun tp!821726 () Bool)

(assert (=> b!2588384 (= e!1632876 (and tp!821730 tp!821726))))

(declare-fun b!2588386 () Bool)

(declare-fun tp!821728 () Bool)

(declare-fun tp!821729 () Bool)

(assert (=> b!2588386 (= e!1632876 (and tp!821728 tp!821729))))

(declare-fun b!2588383 () Bool)

(assert (=> b!2588383 (= e!1632876 tp_is_empty!13225)))

(declare-fun b!2588385 () Bool)

(declare-fun tp!821727 () Bool)

(assert (=> b!2588385 (= e!1632876 tp!821727)))

(assert (=> b!2586780 (= tp!821098 e!1632876)))

(assert (= (and b!2586780 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588383))

(assert (= (and b!2586780 ((_ is Concat!12409) (regOne!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588384))

(assert (= (and b!2586780 ((_ is Star!7665) (regOne!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588385))

(assert (= (and b!2586780 ((_ is Union!7665) (regOne!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588386))

(declare-fun b!2588388 () Bool)

(declare-fun e!1632877 () Bool)

(declare-fun tp!821735 () Bool)

(declare-fun tp!821731 () Bool)

(assert (=> b!2588388 (= e!1632877 (and tp!821735 tp!821731))))

(declare-fun b!2588390 () Bool)

(declare-fun tp!821733 () Bool)

(declare-fun tp!821734 () Bool)

(assert (=> b!2588390 (= e!1632877 (and tp!821733 tp!821734))))

(declare-fun b!2588387 () Bool)

(assert (=> b!2588387 (= e!1632877 tp_is_empty!13225)))

(declare-fun b!2588389 () Bool)

(declare-fun tp!821732 () Bool)

(assert (=> b!2588389 (= e!1632877 tp!821732)))

(assert (=> b!2586780 (= tp!821099 e!1632877)))

(assert (= (and b!2586780 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588387))

(assert (= (and b!2586780 ((_ is Concat!12409) (regTwo!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588388))

(assert (= (and b!2586780 ((_ is Star!7665) (regTwo!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588389))

(assert (= (and b!2586780 ((_ is Union!7665) (regTwo!15843 (regTwo!15843 (regex!4521 rule!570))))) b!2588390))

(declare-fun b!2588392 () Bool)

(declare-fun e!1632878 () Bool)

(declare-fun tp!821740 () Bool)

(declare-fun tp!821736 () Bool)

(assert (=> b!2588392 (= e!1632878 (and tp!821740 tp!821736))))

(declare-fun b!2588394 () Bool)

(declare-fun tp!821738 () Bool)

(declare-fun tp!821739 () Bool)

(assert (=> b!2588394 (= e!1632878 (and tp!821738 tp!821739))))

(declare-fun b!2588391 () Bool)

(assert (=> b!2588391 (= e!1632878 tp_is_empty!13225)))

(declare-fun b!2588393 () Bool)

(declare-fun tp!821737 () Bool)

(assert (=> b!2588393 (= e!1632878 tp!821737)))

(assert (=> b!2586778 (= tp!821100 e!1632878)))

(assert (= (and b!2586778 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588391))

(assert (= (and b!2586778 ((_ is Concat!12409) (regOne!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588392))

(assert (= (and b!2586778 ((_ is Star!7665) (regOne!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588393))

(assert (= (and b!2586778 ((_ is Union!7665) (regOne!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588394))

(declare-fun b!2588396 () Bool)

(declare-fun e!1632879 () Bool)

(declare-fun tp!821745 () Bool)

(declare-fun tp!821741 () Bool)

(assert (=> b!2588396 (= e!1632879 (and tp!821745 tp!821741))))

(declare-fun b!2588398 () Bool)

(declare-fun tp!821743 () Bool)

(declare-fun tp!821744 () Bool)

(assert (=> b!2588398 (= e!1632879 (and tp!821743 tp!821744))))

(declare-fun b!2588395 () Bool)

(assert (=> b!2588395 (= e!1632879 tp_is_empty!13225)))

(declare-fun b!2588397 () Bool)

(declare-fun tp!821742 () Bool)

(assert (=> b!2588397 (= e!1632879 tp!821742)))

(assert (=> b!2586778 (= tp!821096 e!1632879)))

(assert (= (and b!2586778 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588395))

(assert (= (and b!2586778 ((_ is Concat!12409) (regTwo!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588396))

(assert (= (and b!2586778 ((_ is Star!7665) (regTwo!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588397))

(assert (= (and b!2586778 ((_ is Union!7665) (regTwo!15842 (regTwo!15843 (regex!4521 rule!570))))) b!2588398))

(declare-fun b!2588399 () Bool)

(declare-fun tp!821747 () Bool)

(declare-fun e!1632881 () Bool)

(declare-fun tp!821748 () Bool)

(assert (=> b!2588399 (= e!1632881 (and (inv!40200 (left!22688 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))) tp!821748 (inv!40200 (right!23018 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))) tp!821747))))

(declare-fun b!2588401 () Bool)

(declare-fun e!1632880 () Bool)

(declare-fun tp!821746 () Bool)

(assert (=> b!2588401 (= e!1632880 tp!821746)))

(declare-fun b!2588400 () Bool)

(assert (=> b!2588400 (= e!1632881 (and (inv!40206 (xs!12271 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))) e!1632880))))

(assert (=> b!2586462 (= tp!820978 (and (inv!40200 (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381)))))) e!1632881))))

(assert (= (and b!2586462 ((_ is Node!9287) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))) b!2588399))

(assert (= b!2588400 b!2588401))

(assert (= (and b!2586462 ((_ is Leaf!14169) (c!416819 (dynLambda!12582 (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))) (value!146096 (_1!17401 (get!9380 lt!909381))))))) b!2588400))

(declare-fun m!2924795 () Bool)

(assert (=> b!2588399 m!2924795))

(declare-fun m!2924797 () Bool)

(assert (=> b!2588399 m!2924797))

(declare-fun m!2924799 () Bool)

(assert (=> b!2588400 m!2924799))

(assert (=> b!2586462 m!2922707))

(declare-fun b!2588403 () Bool)

(declare-fun e!1632882 () Bool)

(declare-fun tp!821753 () Bool)

(declare-fun tp!821749 () Bool)

(assert (=> b!2588403 (= e!1632882 (and tp!821753 tp!821749))))

(declare-fun b!2588405 () Bool)

(declare-fun tp!821751 () Bool)

(declare-fun tp!821752 () Bool)

(assert (=> b!2588405 (= e!1632882 (and tp!821751 tp!821752))))

(declare-fun b!2588402 () Bool)

(assert (=> b!2588402 (= e!1632882 tp_is_empty!13225)))

(declare-fun b!2588404 () Bool)

(declare-fun tp!821750 () Bool)

(assert (=> b!2588404 (= e!1632882 tp!821750)))

(assert (=> b!2586684 (= tp!820983 e!1632882)))

(assert (= (and b!2586684 ((_ is ElementMatch!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588402))

(assert (= (and b!2586684 ((_ is Concat!12409) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588403))

(assert (= (and b!2586684 ((_ is Star!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588404))

(assert (= (and b!2586684 ((_ is Union!7665) (regOne!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588405))

(declare-fun b!2588407 () Bool)

(declare-fun e!1632883 () Bool)

(declare-fun tp!821758 () Bool)

(declare-fun tp!821754 () Bool)

(assert (=> b!2588407 (= e!1632883 (and tp!821758 tp!821754))))

(declare-fun b!2588409 () Bool)

(declare-fun tp!821756 () Bool)

(declare-fun tp!821757 () Bool)

(assert (=> b!2588409 (= e!1632883 (and tp!821756 tp!821757))))

(declare-fun b!2588406 () Bool)

(assert (=> b!2588406 (= e!1632883 tp_is_empty!13225)))

(declare-fun b!2588408 () Bool)

(declare-fun tp!821755 () Bool)

(assert (=> b!2588408 (= e!1632883 tp!821755)))

(assert (=> b!2586684 (= tp!820984 e!1632883)))

(assert (= (and b!2586684 ((_ is ElementMatch!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588406))

(assert (= (and b!2586684 ((_ is Concat!12409) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588407))

(assert (= (and b!2586684 ((_ is Star!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588408))

(assert (= (and b!2586684 ((_ is Union!7665) (regTwo!15843 (regOne!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588409))

(declare-fun b!2588411 () Bool)

(declare-fun e!1632884 () Bool)

(declare-fun tp!821763 () Bool)

(declare-fun tp!821759 () Bool)

(assert (=> b!2588411 (= e!1632884 (and tp!821763 tp!821759))))

(declare-fun b!2588413 () Bool)

(declare-fun tp!821761 () Bool)

(declare-fun tp!821762 () Bool)

(assert (=> b!2588413 (= e!1632884 (and tp!821761 tp!821762))))

(declare-fun b!2588410 () Bool)

(assert (=> b!2588410 (= e!1632884 tp_is_empty!13225)))

(declare-fun b!2588412 () Bool)

(declare-fun tp!821760 () Bool)

(assert (=> b!2588412 (= e!1632884 tp!821760)))

(assert (=> b!2586740 (= tp!821053 e!1632884)))

(assert (= (and b!2586740 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588410))

(assert (= (and b!2586740 ((_ is Concat!12409) (regOne!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588411))

(assert (= (and b!2586740 ((_ is Star!7665) (regOne!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588412))

(assert (= (and b!2586740 ((_ is Union!7665) (regOne!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588413))

(declare-fun b!2588415 () Bool)

(declare-fun e!1632885 () Bool)

(declare-fun tp!821768 () Bool)

(declare-fun tp!821764 () Bool)

(assert (=> b!2588415 (= e!1632885 (and tp!821768 tp!821764))))

(declare-fun b!2588417 () Bool)

(declare-fun tp!821766 () Bool)

(declare-fun tp!821767 () Bool)

(assert (=> b!2588417 (= e!1632885 (and tp!821766 tp!821767))))

(declare-fun b!2588414 () Bool)

(assert (=> b!2588414 (= e!1632885 tp_is_empty!13225)))

(declare-fun b!2588416 () Bool)

(declare-fun tp!821765 () Bool)

(assert (=> b!2588416 (= e!1632885 tp!821765)))

(assert (=> b!2586740 (= tp!821054 e!1632885)))

(assert (= (and b!2586740 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588414))

(assert (= (and b!2586740 ((_ is Concat!12409) (regTwo!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588415))

(assert (= (and b!2586740 ((_ is Star!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588416))

(assert (= (and b!2586740 ((_ is Union!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (rule!6887 token!562)))))) b!2588417))

(declare-fun b!2588419 () Bool)

(declare-fun e!1632886 () Bool)

(declare-fun tp!821773 () Bool)

(declare-fun tp!821769 () Bool)

(assert (=> b!2588419 (= e!1632886 (and tp!821773 tp!821769))))

(declare-fun b!2588421 () Bool)

(declare-fun tp!821771 () Bool)

(declare-fun tp!821772 () Bool)

(assert (=> b!2588421 (= e!1632886 (and tp!821771 tp!821772))))

(declare-fun b!2588418 () Bool)

(assert (=> b!2588418 (= e!1632886 tp_is_empty!13225)))

(declare-fun b!2588420 () Bool)

(declare-fun tp!821770 () Bool)

(assert (=> b!2588420 (= e!1632886 tp!821770)))

(assert (=> b!2586782 (= tp!821105 e!1632886)))

(assert (= (and b!2586782 ((_ is ElementMatch!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588418))

(assert (= (and b!2586782 ((_ is Concat!12409) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588419))

(assert (= (and b!2586782 ((_ is Star!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588420))

(assert (= (and b!2586782 ((_ is Union!7665) (regOne!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588421))

(declare-fun b!2588429 () Bool)

(declare-fun e!1632889 () Bool)

(declare-fun tp!821778 () Bool)

(declare-fun tp!821774 () Bool)

(assert (=> b!2588429 (= e!1632889 (and tp!821778 tp!821774))))

(declare-fun b!2588431 () Bool)

(declare-fun tp!821776 () Bool)

(declare-fun tp!821777 () Bool)

(assert (=> b!2588431 (= e!1632889 (and tp!821776 tp!821777))))

(declare-fun b!2588428 () Bool)

(assert (=> b!2588428 (= e!1632889 tp_is_empty!13225)))

(declare-fun b!2588430 () Bool)

(declare-fun tp!821775 () Bool)

(assert (=> b!2588430 (= e!1632889 tp!821775)))

(assert (=> b!2586782 (= tp!821101 e!1632889)))

(assert (= (and b!2586782 ((_ is ElementMatch!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588428))

(assert (= (and b!2586782 ((_ is Concat!12409) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588429))

(assert (= (and b!2586782 ((_ is Star!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588430))

(assert (= (and b!2586782 ((_ is Union!7665) (regTwo!15842 (regOne!15842 (regex!4521 (h!35186 rs!798)))))) b!2588431))

(declare-fun b!2588433 () Bool)

(declare-fun e!1632890 () Bool)

(declare-fun tp!821783 () Bool)

(declare-fun tp!821779 () Bool)

(assert (=> b!2588433 (= e!1632890 (and tp!821783 tp!821779))))

(declare-fun b!2588435 () Bool)

(declare-fun tp!821781 () Bool)

(declare-fun tp!821782 () Bool)

(assert (=> b!2588435 (= e!1632890 (and tp!821781 tp!821782))))

(declare-fun b!2588432 () Bool)

(assert (=> b!2588432 (= e!1632890 tp_is_empty!13225)))

(declare-fun b!2588434 () Bool)

(declare-fun tp!821780 () Bool)

(assert (=> b!2588434 (= e!1632890 tp!821780)))

(assert (=> b!2586688 (= tp!820988 e!1632890)))

(assert (= (and b!2586688 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588432))

(assert (= (and b!2586688 ((_ is Concat!12409) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588433))

(assert (= (and b!2586688 ((_ is Star!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588434))

(assert (= (and b!2586688 ((_ is Union!7665) (regOne!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588435))

(declare-fun b!2588437 () Bool)

(declare-fun e!1632891 () Bool)

(declare-fun tp!821788 () Bool)

(declare-fun tp!821784 () Bool)

(assert (=> b!2588437 (= e!1632891 (and tp!821788 tp!821784))))

(declare-fun b!2588439 () Bool)

(declare-fun tp!821786 () Bool)

(declare-fun tp!821787 () Bool)

(assert (=> b!2588439 (= e!1632891 (and tp!821786 tp!821787))))

(declare-fun b!2588436 () Bool)

(assert (=> b!2588436 (= e!1632891 tp_is_empty!13225)))

(declare-fun b!2588438 () Bool)

(declare-fun tp!821785 () Bool)

(assert (=> b!2588438 (= e!1632891 tp!821785)))

(assert (=> b!2586688 (= tp!820989 e!1632891)))

(assert (= (and b!2586688 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588436))

(assert (= (and b!2586688 ((_ is Concat!12409) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588437))

(assert (= (and b!2586688 ((_ is Star!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588438))

(assert (= (and b!2586688 ((_ is Union!7665) (regTwo!15843 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588439))

(declare-fun b!2588441 () Bool)

(declare-fun e!1632892 () Bool)

(declare-fun tp!821793 () Bool)

(declare-fun tp!821789 () Bool)

(assert (=> b!2588441 (= e!1632892 (and tp!821793 tp!821789))))

(declare-fun b!2588443 () Bool)

(declare-fun tp!821791 () Bool)

(declare-fun tp!821792 () Bool)

(assert (=> b!2588443 (= e!1632892 (and tp!821791 tp!821792))))

(declare-fun b!2588440 () Bool)

(assert (=> b!2588440 (= e!1632892 tp_is_empty!13225)))

(declare-fun b!2588442 () Bool)

(declare-fun tp!821790 () Bool)

(assert (=> b!2588442 (= e!1632892 tp!821790)))

(assert (=> b!2586695 (= tp!820997 e!1632892)))

(assert (= (and b!2586695 ((_ is ElementMatch!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588440))

(assert (= (and b!2586695 ((_ is Concat!12409) (reg!7994 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588441))

(assert (= (and b!2586695 ((_ is Star!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588442))

(assert (= (and b!2586695 ((_ is Union!7665) (reg!7994 (reg!7994 (regex!4521 (h!35186 rules!4580)))))) b!2588443))

(declare-fun b!2588445 () Bool)

(declare-fun e!1632893 () Bool)

(declare-fun tp!821798 () Bool)

(declare-fun tp!821794 () Bool)

(assert (=> b!2588445 (= e!1632893 (and tp!821798 tp!821794))))

(declare-fun b!2588447 () Bool)

(declare-fun tp!821796 () Bool)

(declare-fun tp!821797 () Bool)

(assert (=> b!2588447 (= e!1632893 (and tp!821796 tp!821797))))

(declare-fun b!2588444 () Bool)

(assert (=> b!2588444 (= e!1632893 tp_is_empty!13225)))

(declare-fun b!2588446 () Bool)

(declare-fun tp!821795 () Bool)

(assert (=> b!2588446 (= e!1632893 tp!821795)))

(assert (=> b!2586686 (= tp!820990 e!1632893)))

(assert (= (and b!2586686 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588444))

(assert (= (and b!2586686 ((_ is Concat!12409) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588445))

(assert (= (and b!2586686 ((_ is Star!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588446))

(assert (= (and b!2586686 ((_ is Union!7665) (regOne!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588447))

(declare-fun b!2588451 () Bool)

(declare-fun e!1632896 () Bool)

(declare-fun tp!821803 () Bool)

(declare-fun tp!821799 () Bool)

(assert (=> b!2588451 (= e!1632896 (and tp!821803 tp!821799))))

(declare-fun b!2588453 () Bool)

(declare-fun tp!821801 () Bool)

(declare-fun tp!821802 () Bool)

(assert (=> b!2588453 (= e!1632896 (and tp!821801 tp!821802))))

(declare-fun b!2588450 () Bool)

(assert (=> b!2588450 (= e!1632896 tp_is_empty!13225)))

(declare-fun b!2588452 () Bool)

(declare-fun tp!821800 () Bool)

(assert (=> b!2588452 (= e!1632896 tp!821800)))

(assert (=> b!2586686 (= tp!820986 e!1632896)))

(assert (= (and b!2586686 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588450))

(assert (= (and b!2586686 ((_ is Concat!12409) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588451))

(assert (= (and b!2586686 ((_ is Star!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588452))

(assert (= (and b!2586686 ((_ is Union!7665) (regTwo!15842 (regTwo!15842 (regex!4521 (h!35186 rules!4580)))))) b!2588453))

(declare-fun b!2588455 () Bool)

(declare-fun e!1632897 () Bool)

(declare-fun tp!821808 () Bool)

(declare-fun tp!821804 () Bool)

(assert (=> b!2588455 (= e!1632897 (and tp!821808 tp!821804))))

(declare-fun b!2588457 () Bool)

(declare-fun tp!821806 () Bool)

(declare-fun tp!821807 () Bool)

(assert (=> b!2588457 (= e!1632897 (and tp!821806 tp!821807))))

(declare-fun b!2588454 () Bool)

(assert (=> b!2588454 (= e!1632897 tp_is_empty!13225)))

(declare-fun b!2588456 () Bool)

(declare-fun tp!821805 () Bool)

(assert (=> b!2588456 (= e!1632897 tp!821805)))

(assert (=> b!2586704 (= tp!821008 e!1632897)))

(assert (= (and b!2586704 ((_ is ElementMatch!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588454))

(assert (= (and b!2586704 ((_ is Concat!12409) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588455))

(assert (= (and b!2586704 ((_ is Star!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588456))

(assert (= (and b!2586704 ((_ is Union!7665) (regOne!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588457))

(declare-fun b!2588459 () Bool)

(declare-fun e!1632898 () Bool)

(declare-fun tp!821813 () Bool)

(declare-fun tp!821809 () Bool)

(assert (=> b!2588459 (= e!1632898 (and tp!821813 tp!821809))))

(declare-fun b!2588461 () Bool)

(declare-fun tp!821811 () Bool)

(declare-fun tp!821812 () Bool)

(assert (=> b!2588461 (= e!1632898 (and tp!821811 tp!821812))))

(declare-fun b!2588458 () Bool)

(assert (=> b!2588458 (= e!1632898 tp_is_empty!13225)))

(declare-fun b!2588460 () Bool)

(declare-fun tp!821810 () Bool)

(assert (=> b!2588460 (= e!1632898 tp!821810)))

(assert (=> b!2586704 (= tp!821009 e!1632898)))

(assert (= (and b!2586704 ((_ is ElementMatch!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588458))

(assert (= (and b!2586704 ((_ is Concat!12409) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588459))

(assert (= (and b!2586704 ((_ is Star!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588460))

(assert (= (and b!2586704 ((_ is Union!7665) (regTwo!15843 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588461))

(declare-fun b!2588465 () Bool)

(declare-fun e!1632901 () Bool)

(declare-fun tp!821818 () Bool)

(declare-fun tp!821814 () Bool)

(assert (=> b!2588465 (= e!1632901 (and tp!821818 tp!821814))))

(declare-fun b!2588467 () Bool)

(declare-fun tp!821816 () Bool)

(declare-fun tp!821817 () Bool)

(assert (=> b!2588467 (= e!1632901 (and tp!821816 tp!821817))))

(declare-fun b!2588464 () Bool)

(assert (=> b!2588464 (= e!1632901 tp_is_empty!13225)))

(declare-fun b!2588466 () Bool)

(declare-fun tp!821815 () Bool)

(assert (=> b!2588466 (= e!1632901 tp!821815)))

(assert (=> b!2586711 (= tp!821017 e!1632901)))

(assert (= (and b!2586711 ((_ is ElementMatch!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588464))

(assert (= (and b!2586711 ((_ is Concat!12409) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588465))

(assert (= (and b!2586711 ((_ is Star!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588466))

(assert (= (and b!2586711 ((_ is Union!7665) (reg!7994 (regTwo!15843 (regex!4521 (h!35186 rules!4580)))))) b!2588467))

(declare-fun b!2588469 () Bool)

(declare-fun e!1632902 () Bool)

(declare-fun tp!821823 () Bool)

(declare-fun tp!821819 () Bool)

(assert (=> b!2588469 (= e!1632902 (and tp!821823 tp!821819))))

(declare-fun b!2588471 () Bool)

(declare-fun tp!821821 () Bool)

(declare-fun tp!821822 () Bool)

(assert (=> b!2588471 (= e!1632902 (and tp!821821 tp!821822))))

(declare-fun b!2588468 () Bool)

(assert (=> b!2588468 (= e!1632902 tp_is_empty!13225)))

(declare-fun b!2588470 () Bool)

(declare-fun tp!821820 () Bool)

(assert (=> b!2588470 (= e!1632902 tp!821820)))

(assert (=> b!2586702 (= tp!821010 e!1632902)))

(assert (= (and b!2586702 ((_ is ElementMatch!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588468))

(assert (= (and b!2586702 ((_ is Concat!12409) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588469))

(assert (= (and b!2586702 ((_ is Star!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588470))

(assert (= (and b!2586702 ((_ is Union!7665) (regOne!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588471))

(declare-fun b!2588473 () Bool)

(declare-fun e!1632903 () Bool)

(declare-fun tp!821828 () Bool)

(declare-fun tp!821824 () Bool)

(assert (=> b!2588473 (= e!1632903 (and tp!821828 tp!821824))))

(declare-fun b!2588477 () Bool)

(declare-fun tp!821826 () Bool)

(declare-fun tp!821827 () Bool)

(assert (=> b!2588477 (= e!1632903 (and tp!821826 tp!821827))))

(declare-fun b!2588472 () Bool)

(assert (=> b!2588472 (= e!1632903 tp_is_empty!13225)))

(declare-fun b!2588475 () Bool)

(declare-fun tp!821825 () Bool)

(assert (=> b!2588475 (= e!1632903 tp!821825)))

(assert (=> b!2586702 (= tp!821006 e!1632903)))

(assert (= (and b!2586702 ((_ is ElementMatch!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588472))

(assert (= (and b!2586702 ((_ is Concat!12409) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588473))

(assert (= (and b!2586702 ((_ is Star!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588475))

(assert (= (and b!2586702 ((_ is Union!7665) (regTwo!15842 (regTwo!15843 (regex!4521 (h!35186 rs!798)))))) b!2588477))

(declare-fun b!2588480 () Bool)

(declare-fun b_free!72905 () Bool)

(declare-fun b_next!73609 () Bool)

(assert (=> b!2588480 (= b_free!72905 (not b_next!73609))))

(declare-fun tb!141321 () Bool)

(declare-fun t!212724 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570))) t!212724) tb!141321))

(declare-fun result!175608 () Bool)

(assert (= result!175608 result!175316))

(assert (=> d!732492 t!212724))

(declare-fun t!212726 () Bool)

(declare-fun tb!141323 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212726) tb!141323))

(declare-fun result!175610 () Bool)

(assert (= result!175610 result!175280))

(assert (=> d!732432 t!212726))

(declare-fun t!212728 () Bool)

(declare-fun tb!141325 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570))) t!212728) tb!141325))

(declare-fun result!175612 () Bool)

(assert (= result!175612 result!175432))

(assert (=> d!732762 t!212728))

(assert (=> d!732494 t!212724))

(declare-fun tb!141327 () Bool)

(declare-fun t!212730 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212730) tb!141327))

(declare-fun result!175614 () Bool)

(assert (= result!175614 result!175416))

(assert (=> d!732688 t!212730))

(declare-fun t!212732 () Bool)

(declare-fun tb!141329 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212732) tb!141329))

(declare-fun result!175616 () Bool)

(assert (= result!175616 result!175480))

(assert (=> d!732960 t!212732))

(declare-fun t!212734 () Bool)

(declare-fun tb!141331 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570))) t!212734) tb!141331))

(declare-fun result!175618 () Bool)

(assert (= result!175618 result!175114))

(assert (=> d!732112 t!212734))

(declare-fun t!212736 () Bool)

(declare-fun tb!141333 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580)))) t!212736) tb!141333))

(declare-fun result!175620 () Bool)

(assert (= result!175620 result!175528))

(assert (=> d!733170 t!212736))

(declare-fun tb!141335 () Bool)

(declare-fun t!212738 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570))) t!212738) tb!141335))

(declare-fun result!175622 () Bool)

(assert (= result!175622 result!175184))

(assert (=> d!732272 t!212738))

(assert (=> d!733166 t!212736))

(declare-fun tb!141337 () Bool)

(declare-fun t!212740 () Bool)

(assert (=> (and b!2588480 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212740) tb!141337))

(declare-fun result!175624 () Bool)

(assert (= result!175624 result!175172))

(assert (=> d!732234 t!212740))

(declare-fun tp!821832 () Bool)

(declare-fun b_and!189999 () Bool)

(assert (=> b!2588480 (= tp!821832 (and (=> t!212740 result!175624) (=> t!212724 result!175608) (=> t!212726 result!175610) (=> t!212730 result!175614) (=> t!212738 result!175622) (=> t!212732 result!175616) (=> t!212734 result!175618) (=> t!212728 result!175612) (=> t!212736 result!175620) b_and!189999))))

(declare-fun b_free!72907 () Bool)

(declare-fun b_next!73611 () Bool)

(assert (=> b!2588480 (= b_free!72907 (not b_next!73611))))

(declare-fun tb!141339 () Bool)

(declare-fun t!212742 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268)))))) t!212742) tb!141339))

(declare-fun result!175626 () Bool)

(assert (= result!175626 result!175292))

(assert (=> d!732474 t!212742))

(declare-fun t!212744 () Bool)

(declare-fun tb!141341 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909425)))))) t!212744) tb!141341))

(declare-fun result!175628 () Bool)

(assert (= result!175628 result!175512))

(assert (=> d!733066 t!212744))

(declare-fun t!212746 () Bool)

(declare-fun tb!141343 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 rule!570))) t!212746) tb!141343))

(declare-fun result!175630 () Bool)

(assert (= result!175630 result!175304))

(assert (=> d!732492 t!212746))

(declare-fun t!212748 () Bool)

(declare-fun tb!141345 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381)))))) t!212748) tb!141345))

(declare-fun result!175632 () Bool)

(assert (= result!175632 result!175268))

(assert (=> d!732420 t!212748))

(declare-fun t!212750 () Bool)

(declare-fun tb!141347 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580)))) t!212750) tb!141347))

(declare-fun result!175634 () Bool)

(assert (= result!175634 result!175544))

(assert (=> d!733170 t!212750))

(declare-fun tb!141349 () Bool)

(declare-fun t!212752 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562)))) t!212752) tb!141349))

(declare-fun result!175636 () Bool)

(assert (= result!175636 result!175124))

(assert (=> b!2585855 t!212752))

(declare-fun tb!141351 () Bool)

(declare-fun t!212754 () Bool)

(assert (=> (and b!2588480 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909429)))))) t!212754) tb!141351))

(declare-fun result!175638 () Bool)

(assert (= result!175638 result!175448))

(assert (=> d!732902 t!212754))

(assert (=> d!732114 t!212752))

(declare-fun b_and!190001 () Bool)

(declare-fun tp!821829 () Bool)

(assert (=> b!2588480 (= tp!821829 (and (=> t!212742 result!175626) (=> t!212744 result!175628) (=> t!212748 result!175632) (=> t!212754 result!175638) (=> t!212750 result!175634) (=> t!212746 result!175630) (=> t!212752 result!175636) b_and!190001))))

(declare-fun e!1632908 () Bool)

(assert (=> b!2588480 (= e!1632908 (and tp!821832 tp!821829))))

(declare-fun b!2588479 () Bool)

(declare-fun tp!821830 () Bool)

(declare-fun e!1632906 () Bool)

(assert (=> b!2588479 (= e!1632906 (and tp!821830 (inv!40193 (tag!5011 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (inv!40196 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) e!1632908))))

(declare-fun b!2588478 () Bool)

(declare-fun e!1632907 () Bool)

(declare-fun tp!821831 () Bool)

(assert (=> b!2588478 (= e!1632907 (and e!1632906 tp!821831))))

(assert (=> b!2586753 (= tp!821068 e!1632907)))

(assert (= b!2588479 b!2588480))

(assert (= b!2588478 b!2588479))

(assert (= (and b!2586753 ((_ is Cons!29766) (t!212231 (t!212231 (t!212231 rules!4580))))) b!2588478))

(declare-fun m!2924841 () Bool)

(assert (=> b!2588479 m!2924841))

(declare-fun m!2924843 () Bool)

(assert (=> b!2588479 m!2924843))

(declare-fun b_lambda!76959 () Bool)

(assert (= b_lambda!76941 (or (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585577 b_free!72853) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585586 b_free!72857 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) b_lambda!76959)))

(declare-fun b_lambda!76961 () Bool)

(assert (= b_lambda!76849 (or (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585586 b_free!72857 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) b_lambda!76961)))

(declare-fun b_lambda!76963 () Bool)

(assert (= b_lambda!76845 (or (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585577 b_free!72855 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2588327 b_free!72903 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585595 b_free!72863 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2588480 b_free!72907 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585586 b_free!72859 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909381))))))) b_lambda!76963)))

(declare-fun b_lambda!76965 () Bool)

(assert (= b_lambda!76909 (or d!732214 b_lambda!76965)))

(declare-fun bs!471972 () Bool)

(declare-fun d!733326 () Bool)

(assert (= bs!471972 (and d!733326 d!732214)))

(assert (=> bs!471972 (= (dynLambda!12585 lambda!95804 (h!35187 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803))) (validRegex!3279 (h!35187 (map!6607 (t!212231 (t!212231 rs!798)) lambda!95803))))))

(declare-fun m!2924845 () Bool)

(assert (=> bs!471972 m!2924845))

(assert (=> b!2587158 d!733326))

(declare-fun b_lambda!76967 () Bool)

(assert (= b_lambda!76903 (or d!732464 b_lambda!76967)))

(declare-fun bs!471973 () Bool)

(declare-fun d!733328 () Bool)

(assert (= bs!471973 (and d!733328 d!732464)))

(assert (=> bs!471973 (= (dynLambda!12596 lambda!95830 (h!35186 rs!798)) (ruleValid!1527 thiss!28211 (h!35186 rs!798)))))

(assert (=> bs!471973 m!2922781))

(assert (=> b!2587044 d!733328))

(declare-fun b_lambda!76969 () Bool)

(assert (= b_lambda!76911 (or d!732214 b_lambda!76969)))

(declare-fun bs!471974 () Bool)

(declare-fun d!733330 () Bool)

(assert (= bs!471974 (and d!733330 d!732214)))

(assert (=> bs!471974 (= (dynLambda!12586 lambda!95803 (h!35186 (t!212231 (t!212231 rs!798)))) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))))

(assert (=> b!2587161 d!733330))

(declare-fun b_lambda!76971 () Bool)

(assert (= b_lambda!76799 (or (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2588327 b_free!72903 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2588480 b_free!72907 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) b_lambda!76971)))

(declare-fun b_lambda!76973 () Bool)

(assert (= b_lambda!76925 (or d!732146 b_lambda!76973)))

(declare-fun bs!471975 () Bool)

(declare-fun d!733332 () Bool)

(assert (= bs!471975 (and d!733332 d!732146)))

(assert (=> bs!471975 (= (dynLambda!12586 lambda!95801 (h!35186 (t!212231 (t!212231 rs!798)))) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))))

(assert (=> b!2587538 d!733332))

(declare-fun b_lambda!76975 () Bool)

(assert (= b_lambda!76945 (or b!2585591 b_lambda!76975)))

(declare-fun bs!471976 () Bool)

(declare-fun d!733334 () Bool)

(assert (= bs!471976 (and d!733334 b!2585591)))

(assert (=> bs!471976 (= (dynLambda!12586 lambda!95783 (h!35186 (t!212231 (t!212231 rs!798)))) (regex!4521 (h!35186 (t!212231 (t!212231 rs!798)))))))

(assert (=> b!2587940 d!733334))

(declare-fun b_lambda!76977 () Bool)

(assert (= b_lambda!76939 (or (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2588480 b_free!72907 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2585595 b_free!72863 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2588327 b_free!72903 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2585586 b_free!72859 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (h!35186 rules!4580))))) (and b!2585577 b_free!72855) b_lambda!76977)))

(declare-fun b_lambda!76979 () Bool)

(assert (= b_lambda!76907 (or d!732492 b_lambda!76979)))

(declare-fun bs!471977 () Bool)

(declare-fun d!733336 () Bool)

(assert (= bs!471977 (and d!733336 d!732492)))

(assert (=> bs!471977 (= (dynLambda!12598 lambda!95835 (seqFromList!3161 (_1!17402 lt!909270))) (= (list!11253 (dynLambda!12582 (toChars!6270 (transformation!4521 rule!570)) (dynLambda!12580 (toValue!6411 (transformation!4521 rule!570)) (seqFromList!3161 (_1!17402 lt!909270))))) (list!11253 (seqFromList!3161 (_1!17402 lt!909270)))))))

(declare-fun b_lambda!77005 () Bool)

(assert (=> (not b_lambda!77005) (not bs!471977)))

(assert (=> bs!471977 t!212430))

(declare-fun b_and!190003 () Bool)

(assert (= b_and!189955 (and (=> t!212430 result!175314) b_and!190003)))

(assert (=> bs!471977 t!212746))

(declare-fun b_and!190005 () Bool)

(assert (= b_and!190001 (and (=> t!212746 result!175630) b_and!190005)))

(assert (=> bs!471977 t!212424))

(declare-fun b_and!190007 () Bool)

(assert (= b_and!189951 (and (=> t!212424 result!175308) b_and!190007)))

(assert (=> bs!471977 t!212713))

(declare-fun b_and!190009 () Bool)

(assert (= b_and!189997 (and (=> t!212713 result!175598) b_and!190009)))

(assert (=> bs!471977 t!212474))

(declare-fun b_and!190011 () Bool)

(assert (= b_and!189949 (and (=> t!212474 result!175360) b_and!190011)))

(assert (=> bs!471977 t!212456))

(declare-fun b_and!190013 () Bool)

(assert (= b_and!189947 (and (=> t!212456 result!175340) b_and!190013)))

(assert (=> bs!471977 t!212428))

(declare-fun b_and!190015 () Bool)

(assert (= b_and!189953 (and (=> t!212428 result!175312) b_and!190015)))

(assert (=> bs!471977 t!212426))

(declare-fun b_and!190017 () Bool)

(assert (= b_and!189961 (and (=> t!212426 result!175310) b_and!190017)))

(assert (=> bs!471977 t!212422))

(declare-fun b_and!190019 () Bool)

(assert (= b_and!189959 (and (=> t!212422 result!175306) b_and!190019)))

(assert (=> bs!471977 t!212420))

(declare-fun b_and!190021 () Bool)

(assert (= b_and!189957 (and (=> t!212420 result!175304) b_and!190021)))

(declare-fun b_lambda!77007 () Bool)

(assert (=> (not b_lambda!77007) (not bs!471977)))

(assert (=> bs!471977 t!212444))

(declare-fun b_and!190023 () Bool)

(assert (= b_and!189965 (and (=> t!212444 result!175328) b_and!190023)))

(assert (=> bs!471977 t!212691))

(declare-fun b_and!190025 () Bool)

(assert (= b_and!189995 (and (=> t!212691 result!175576) b_and!190025)))

(assert (=> bs!471977 t!212442))

(declare-fun b_and!190027 () Bool)

(assert (= b_and!189971 (and (=> t!212442 result!175326) b_and!190027)))

(assert (=> bs!471977 t!212724))

(declare-fun b_and!190029 () Bool)

(assert (= b_and!189999 (and (=> t!212724 result!175608) b_and!190029)))

(assert (=> bs!471977 t!212434))

(declare-fun b_and!190031 () Bool)

(assert (= b_and!189977 (and (=> t!212434 result!175318) b_and!190031)))

(assert (=> bs!471977 t!212432))

(declare-fun b_and!190033 () Bool)

(assert (= b_and!189969 (and (=> t!212432 result!175316) b_and!190033)))

(assert (=> bs!471977 t!212440))

(declare-fun b_and!190035 () Bool)

(assert (= b_and!189975 (and (=> t!212440 result!175324) b_and!190035)))

(assert (=> bs!471977 t!212462))

(declare-fun b_and!190037 () Bool)

(assert (= b_and!189967 (and (=> t!212462 result!175348) b_and!190037)))

(assert (=> bs!471977 t!212438))

(declare-fun b_and!190039 () Bool)

(assert (= b_and!189963 (and (=> t!212438 result!175322) b_and!190039)))

(assert (=> bs!471977 t!212436))

(declare-fun b_and!190041 () Bool)

(assert (= b_and!189973 (and (=> t!212436 result!175320) b_and!190041)))

(assert (=> bs!471977 m!2922849))

(assert (=> bs!471977 m!2922851))

(assert (=> bs!471977 m!2921821))

(assert (=> bs!471977 m!2922833))

(assert (=> bs!471977 m!2921821))

(assert (=> bs!471977 m!2922845))

(assert (=> bs!471977 m!2922845))

(assert (=> bs!471977 m!2922849))

(assert (=> d!732754 d!733336))

(declare-fun b_lambda!76981 () Bool)

(assert (= b_lambda!76797 (or (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2588327 b_free!72903 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) (and b!2588480 b_free!72907 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 token!562))))) b_lambda!76981)))

(declare-fun b_lambda!76983 () Bool)

(assert (= b_lambda!76949 (or d!732250 b_lambda!76983)))

(declare-fun bs!471978 () Bool)

(declare-fun d!733344 () Bool)

(assert (= bs!471978 (and d!733344 d!732250)))

(assert (=> bs!471978 (= (dynLambda!12596 lambda!95810 (h!35186 rules!4580)) (ruleValid!1527 thiss!28211 (h!35186 rules!4580)))))

(assert (=> bs!471978 m!2922259))

(assert (=> b!2587943 d!733344))

(declare-fun b_lambda!76985 () Bool)

(assert (= b_lambda!76913 (or (and b!2585586 b_free!72857) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76985)))

(declare-fun b_lambda!76987 () Bool)

(assert (= b_lambda!76933 (or d!732314 b_lambda!76987)))

(declare-fun bs!471979 () Bool)

(declare-fun d!733346 () Bool)

(assert (= bs!471979 (and d!733346 d!732314)))

(assert (=> bs!471979 (= (dynLambda!12596 lambda!95814 (h!35186 rules!4580)) (ruleValid!1527 thiss!28211 (h!35186 rules!4580)))))

(assert (=> bs!471979 m!2922259))

(assert (=> b!2587774 d!733346))

(declare-fun b_lambda!76989 () Bool)

(assert (= b_lambda!76815 (or (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585577 b_free!72853 (= (toValue!6411 (transformation!4521 (h!35186 rules!4580))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585586 b_free!72857 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) b_lambda!76989)))

(declare-fun b_lambda!76991 () Bool)

(assert (= b_lambda!76927 (or d!732146 b_lambda!76991)))

(declare-fun bs!471980 () Bool)

(declare-fun d!733348 () Bool)

(assert (= bs!471980 (and d!733348 d!732146)))

(assert (=> bs!471980 (= (dynLambda!12585 lambda!95802 (h!35187 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801)))) (validRegex!3279 (h!35187 (t!212232 (map!6607 (t!212231 rs!798) lambda!95801)))))))

(declare-fun m!2924871 () Bool)

(assert (=> bs!471980 m!2924871))

(assert (=> b!2587568 d!733348))

(declare-fun b_lambda!76993 () Bool)

(assert (= b_lambda!76803 (or (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 rule!570)))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 rule!570)))) b_lambda!76993)))

(declare-fun b_lambda!76995 () Bool)

(assert (= b_lambda!76855 (or (and b!2586755 b_free!72891 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2586724 b_free!72887 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2588480 b_free!72907 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2586000 b_free!72875 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585586 b_free!72859 (= (toChars!6270 (transformation!4521 rule!570)) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585578 b_free!72867 (= (toChars!6270 (transformation!4521 (h!35186 rs!798))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585595 b_free!72863 (= (toChars!6270 (transformation!4521 (rule!6887 token!562))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2588327 b_free!72903 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585577 b_free!72855 (= (toChars!6270 (transformation!4521 (h!35186 rules!4580))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) (and b!2585983 b_free!72871 (= (toChars!6270 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toChars!6270 (transformation!4521 (rule!6887 (_1!17401 (get!9380 lt!909268))))))) b_lambda!76995)))

(declare-fun b_lambda!76997 () Bool)

(assert (= b_lambda!76931 (or d!732122 b_lambda!76997)))

(declare-fun bs!471982 () Bool)

(declare-fun d!733350 () Bool)

(assert (= bs!471982 (and d!733350 d!732122)))

(assert (=> bs!471982 (= (dynLambda!12596 lambda!95796 (h!35186 (t!212231 rs!798))) (ruleValid!1527 thiss!28211 (h!35186 (t!212231 rs!798))))))

(assert (=> bs!471982 m!2924469))

(assert (=> b!2587722 d!733350))

(declare-fun b_lambda!76999 () Bool)

(assert (= b_lambda!76915 (or b!2585591 b_lambda!76999)))

(declare-fun bs!471984 () Bool)

(declare-fun d!733352 () Bool)

(assert (= bs!471984 (and d!733352 b!2585591)))

(assert (=> bs!471984 (= (dynLambda!12585 lambda!95784 (h!35187 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783))))) (validRegex!3279 (h!35187 (t!212232 (t!212232 (map!6607 rs!798 lambda!95783))))))))

(declare-fun m!2924873 () Bool)

(assert (=> bs!471984 m!2924873))

(assert (=> b!2587312 d!733352))

(declare-fun b_lambda!77001 () Bool)

(assert (= b_lambda!76935 (or (and b!2586724 b_free!72885 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rs!798))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585983 b_free!72869 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rules!4580)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2588327 b_free!72901 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rs!798)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2586755 b_free!72889 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 rules!4580))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585577 b_free!72853) (and b!2585578 b_free!72865 (= (toValue!6411 (transformation!4521 (h!35186 rs!798))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585595 b_free!72861 (= (toValue!6411 (transformation!4521 (rule!6887 token!562))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2588480 b_free!72905 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 (t!212231 (t!212231 rules!4580)))))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2586000 b_free!72873 (= (toValue!6411 (transformation!4521 (h!35186 (t!212231 rs!798)))) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) (and b!2585586 b_free!72857 (= (toValue!6411 (transformation!4521 rule!570)) (toValue!6411 (transformation!4521 (h!35186 rules!4580))))) b_lambda!77001)))

(declare-fun b_lambda!77003 () Bool)

(assert (= b_lambda!76947 (or d!732278 b_lambda!77003)))

(declare-fun bs!471987 () Bool)

(declare-fun d!733354 () Bool)

(assert (= bs!471987 (and d!733354 d!732278)))

(assert (=> bs!471987 (= (dynLambda!12596 lambda!95811 (h!35186 (t!212231 rs!798))) (ruleValid!1527 thiss!28211 (h!35186 (t!212231 rs!798))))))

(assert (=> bs!471987 m!2924469))

(assert (=> b!2587941 d!733354))

(check-sat (not b!2587307) (not bm!167121) (not b!2588065) (not b!2588035) (not b!2588175) (not b_lambda!76965) (not b!2587279) (not b!2587368) (not b!2588265) (not d!732820) (not b!2587523) (not b!2588230) (not b!2587720) (not b_lambda!76877) (not b!2588416) (not b!2588246) (not b!2588127) (not b!2587102) (not b!2587525) (not d!732780) (not b!2588313) (not b_lambda!76967) (not d!732864) (not b!2587868) (not d!732986) (not b!2587452) (not b!2588447) (not b!2587205) (not d!733036) (not b!2587975) b_and!190009 (not b!2588234) (not b!2588348) (not bm!167139) (not d!732770) (not b!2588118) (not b!2588293) (not b!2588173) (not d!732818) (not b!2587854) (not b!2588133) (not b!2587638) (not b!2588255) (not d!733162) (not b!2588157) (not b!2588189) (not b_lambda!76871) (not b!2587717) (not b!2588398) (not b!2588227) (not b!2587161) (not b!2588023) (not b!2587066) (not b_next!73569) (not b!2588046) (not d!733156) (not b!2588370) (not b!2587892) (not b!2587956) (not b!2587097) (not b!2587998) (not b!2588186) (not bm!167135) (not b!2588185) (not b!2588296) (not b!2588417) (not b!2587671) (not b!2587320) (not b!2588145) (not b!2588159) b_and!190013 (not bm!167210) (not b!2587666) (not bs!471977) (not d!732930) (not b!2587571) (not b!2587798) (not b!2588453) (not b!2588459) (not d!732890) (not b!2588300) (not bm!167144) (not b!2587296) (not b!2588170) (not b_next!73611) (not b!2587308) (not b!2588042) (not b_next!73571) (not b_next!73579) (not d!732908) (not b!2588041) (not bs!471972) (not b!2588094) (not bs!471987) (not b!2588225) (not bm!167068) (not b!2587957) (not b!2588429) (not b!2588396) (not b!2588115) (not b!2587491) (not b!2587169) (not b!2588066) (not bm!167117) (not b_lambda!76875) (not b!2587613) (not d!732740) (not d!732806) (not b!2588109) (not d!733164) (not d!733234) (not d!732858) (not b!2588312) (not b!2587687) (not d!732910) (not b!2588218) (not b!2588308) (not b!2588323) (not b!2588404) (not b!2587242) (not b!2587399) (not bm!167184) (not b!2588286) (not b!2588274) (not b!2588356) (not bm!167176) (not d!733102) (not bm!167156) (not b!2588469) (not b!2587245) (not d!732822) (not b!2587085) (not d!732734) (not d!732782) (not b!2587054) (not bm!167212) (not tb!141193) (not b!2588277) (not b!2588194) (not b!2588325) (not b!2588334) (not b!2588153) (not bs!471980) (not b!2588421) (not b!2588233) (not b!2587672) (not b!2588059) (not b!2587293) (not d!733048) (not b!2587395) (not b!2588245) (not b!2588222) (not b!2588131) (not b!2588475) (not b!2587611) (not b!2587961) (not b!2588461) (not b!2587536) (not b!2587968) (not b!2587350) (not b!2587332) (not tb!141129) (not bm!167134) (not b!2588397) (not b_lambda!76873) (not d!733096) (not tb!141161) (not b!2588211) (not b!2588266) (not b!2588361) (not d!733184) (not b!2588438) (not b!2587752) (not b!2588350) (not b!2588419) (not b!2587698) (not b!2588369) (not b!2587419) (not b!2588202) (not b!2587708) (not b!2587361) (not b!2588455) (not d!732918) (not b!2588105) (not b!2587648) (not b!2587425) (not b!2588195) (not b!2587244) (not d!733078) (not b!2588333) (not b!2588302) (not d!732692) (not bm!167098) (not b!2586565) (not b!2588201) (not d!732668) (not b!2588338) (not b!2587403) (not b!2588086) (not b!2587664) (not b!2588121) (not b!2588259) (not b!2587994) (not b!2588380) (not b!2588352) (not b!2588357) (not b!2587201) b_and!190023 (not b!2588169) (not b!2588167) (not d!733012) (not b!2588039) (not b_next!73567) b_and!190035 (not b!2587952) (not b!2587748) (not d!733170) (not d!732852) (not b!2588257) (not b!2588226) (not b!2588026) (not d!732768) (not b!2587056) b_and!190019 (not b!2588282) (not b!2588456) (not b!2588130) (not tb!141241) (not b!2588340) (not b!2587485) (not b!2588322) (not b!2587575) (not b!2587247) (not b!2588142) (not b!2587669) (not d!733238) (not d!732676) (not b!2587985) (not b!2588278) (not bm!167209) (not b!2587299) (not b!2588062) (not b!2588018) (not b!2587289) (not b_next!73593) (not b!2587756) (not b!2588326) (not b!2587540) (not bm!167108) (not b!2588439) (not bm!167174) (not b!2587451) (not b!2588075) (not b!2588119) (not b!2587739) (not b!2588470) (not b!2587829) (not b!2588237) (not b!2587940) (not b!2588006) (not b!2588415) (not b!2587045) b_and!190039 (not b!2587993) (not b_lambda!76795) (not b!2588407) (not b_lambda!76905) (not d!732978) (not b!2587144) (not b!2588007) b_and!190033 (not bm!167120) (not d!732750) b_and!190031 (not b!2588451) (not b!2588368) (not b!2588298) (not b!2587101) (not b!2587483) (not b!2588385) (not bm!167086) (not b!2587655) (not b!2588384) (not b!2588031) (not b!2588420) (not b!2588247) (not b!2587248) (not b!2587073) (not b!2587990) (not b!2587203) (not b!2588466) (not b!2588095) (not d!732926) (not b!2587972) (not b!2588000) (not b!2588342) (not b_next!73563) (not b!2587773) (not b!2587166) (not b!2588073) (not b_lambda!76977) (not b!2586462) (not b!2587396) (not b!2587345) (not d!732802) (not b!2587821) (not bm!167172) (not b!2588168) (not b!2588287) (not b!2587099) (not b_lambda!76959) (not bm!167073) (not d!732862) (not b_next!73595) (not b!2588106) (not b!2588152) (not b!2588478) (not b!2587273) (not b!2588093) (not b!2588354) (not b!2587923) (not b!2587519) (not d!733262) (not b_lambda!77007) (not b!2587264) (not b!2588190) (not bm!167151) (not b!2588281) (not bm!167096) (not d!732674) (not b!2588408) (not b!2588217) (not bm!167111) (not d!733244) (not b!2588452) (not b!2587799) (not b!2588135) (not b!2587221) (not bm!167110) (not b!2587986) (not b!2587982) (not b!2587343) (not b!2587174) (not b!2588437) (not b_lambda!76981) (not b!2588151) (not b!2587204) (not b!2587538) (not bm!167095) (not d!732840) (not b_lambda!76987) (not b!2587250) (not b!2587871) (not b!2587354) (not bs!471982) (not b!2588102) (not b!2587702) (not b!2588219) (not b_lambda!76995) (not d!732678) (not b!2587856) (not b!2587947) (not bm!167169) (not b_lambda!76867) (not b!2588058) (not b!2588209) (not b!2588074) (not b!2587706) (not b!2587068) (not b_lambda!76991) (not b!2587576) (not b!2587392) (not b!2588126) (not bm!167106) (not bm!167114) (not b!2587663) (not b_lambda!76921) (not b!2588136) (not b!2587458) (not b_next!73607) (not b!2587463) (not b_next!73591) (not b!2588055) (not b!2587134) (not b!2587989) (not b!2587860) (not bm!167070) (not d!732816) (not bm!167113) (not b!2588037) (not b!2588103) (not b!2588113) (not b!2588205) b_and!190037 (not b!2588107) (not b_lambda!76863) (not b!2587173) (not d!732792) (not b!2587373) (not b!2588160) (not b!2587988) (not b!2588279) (not d!732690) tp_is_empty!13225 (not b!2588123) (not b!2587589) (not d!733008) b_and!190021 (not b!2588392) (not b!2587238) (not b!2587742) (not b!2588070) (not b!2588029) (not b!2588083) (not b!2587526) (not d!732964) (not b!2588364) (not b!2588101) b_and!190005 (not b!2588241) (not d!732764) (not d!732788) (not b!2588263) (not bm!167124) (not b!2587569) (not b!2588434) (not b!2588253) (not b!2588441) (not b_lambda!77001) (not b!2588411) (not b!2587043) (not d!732870) (not bm!167102) (not bm!167077) (not b!2587230) (not b!2587075) (not b!2588285) (not b!2588345) (not b!2588078) (not b_next!73577) (not b!2587573) (not b!2587878) (not b!2588134) (not bm!167138) (not b!2587236) (not b!2588401) (not b!2588089) (not d!732714) (not d!732942) (not d!732834) (not bm!167178) (not bm!167185) (not b!2587202) b_and!190015 (not b!2587918) (not d!732748) (not bm!167101) (not d!733060) (not b!2587266) (not bm!167088) (not b!2588238) (not b!2587697) (not b!2588147) (not b!2588231) (not b!2588381) (not d!732832) (not b!2588465) (not d!732842) (not bm!167173) (not b!2587524) (not b_next!73575) (not bm!167141) (not b!2588193) (not b!2587942) (not d!732860) (not b!2587738) (not b!2587240) (not bs!471979) (not b!2588034) (not b!2587385) (not b!2588479) (not bm!167168) (not b!2587719) (not d!732752) (not b!2588431) (not b!2587751) (not bm!167140) b_and!190027 (not b!2588243) (not b!2588045) (not b!2588261) (not d!732902) b_and!190011 (not b!2587960) (not b!2587954) (not b!2587249) (not b!2587450) (not b!2588346) (not b!2588413) (not b!2587953) (not b!2588435) (not b!2588149) (not d!733142) (not b!2587996) (not b!2587316) (not d!733266) (not b!2587455) (not b_lambda!76929) (not b!2587313) (not b!2588349) (not d!733058) (not b!2588409) (not b!2588250) (not b!2588400) (not b!2588164) (not b!2588138) (not b!2588258) (not b!2588002) (not b!2588473) (not b!2587314) (not b!2588163) (not b!2588235) (not d!733208) (not b!2588140) (not b!2587216) (not b!2588389) (not b!2587106) (not b_next!73573) (not b_lambda!76979) (not b!2588017) (not b_lambda!76997) (not b!2588097) (not b!2588206) (not b!2588386) (not b!2588063) (not d!732836) (not b!2587334) (not d!733190) (not b!2587393) (not b!2588242) (not b_lambda!76975) (not b!2587749) (not b_lambda!76969) (not bm!167100) (not b!2588144) (not b!2588171) (not b!2587837) (not bm!167157) (not b!2588317) (not b!2588179) (not b!2588049) (not b!2587153) (not b!2587082) (not b!2588011) (not b!2587165) (not b!2588207) (not bm!167123) (not d!732720) (not d!732914) (not b!2587971) (not b!2588229) (not b!2588295) (not b!2588203) (not b_lambda!76999) (not b!2587079) (not b!2587251) (not b!2587259) (not b!2587243) (not b!2588324) (not b!2587967) (not b!2588403) (not b!2587609) (not b!2587358) (not d!733140) (not b!2588069) (not b!2587281) (not b!2587958) (not b!2587213) (not bm!167136) (not b!2587070) (not bs!471984) (not b!2587679) (not b!2587740) (not b!2587944) (not b!2587647) (not b!2588156) (not b!2587934) (not b!2587984) (not b!2588143) (not d!733116) (not d!732784) (not d!732866) (not b!2588091) (not b!2588299) (not bm!167204) (not b!2588336) (not b!2588344) (not b!2588015) (not b_lambda!76973) (not b!2588155) (not b!2588099) b_and!190017 (not d!732708) (not d!732758) (not b!2587294) (not b_lambda!76989) (not b!2587156) (not b!2588111) (not b!2587482) (not b!2587105) (not tb!141145) (not b!2587362) (not b!2588467) (not b!2588027) (not b!2588239) (not b!2587357) (not bm!167107) (not bm!167109) (not b_lambda!77003) (not b_lambda!76983) (not b!2587263) (not b!2587375) (not d!733146) (not d!732754) (not b!2587696) (not b!2588249) (not b!2587041) (not d!732876) (not b!2587627) (not b_next!73609) (not b!2587587) (not b!2587864) (not bm!167075) (not b!2588306) (not b!2587406) (not bm!167147) (not b!2588033) (not b!2588393) (not b_lambda!76801) (not b!2587487) (not b!2588025) (not b!2588148) (not bm!167125) (not b!2587326) (not b_lambda!76993) (not d!733144) (not b!2587157) (not b!2588273) (not b!2588382) (not b!2587488) (not bm!167091) (not b!2588304) (not d!732724) (not d!732962) (not d!733086) (not b!2587480) (not b!2587255) (not b!2588038) (not b!2588082) (not b!2588399) (not b!2588012) (not b!2587183) (not b!2587915) (not b!2588174) (not bm!167115) (not d!733206) (not b!2588294) (not b!2587992) (not bm!167193) (not b!2587602) b_and!190025 (not b!2588019) (not bm!167148) (not b!2587114) (not d!732900) (not d!732872) (not b!2587902) (not b!2588081) (not b!2588125) (not b!2587283) (not d!732932) (not d!733062) (not b!2587962) (not b!2588090) (not d!732772) (not d!733066) (not b!2588016) (not b!2587775) (not d!733134) (not b!2588353) (not b!2588363) b_and!190029 (not b!2587286) (not b!2587159) (not b!2588110) (not b!2587700) (not d!733210) (not b!2587668) b_and!190041 (not b!2588471) (not b!2587634) (not tb!141225) (not d!732760) (not b!2587067) (not b!2587057) (not b!2588303) (not d!733080) (not b!2587489) (not b!2588388) (not bm!167090) (not bm!167112) (not b!2588460) (not b!2587841) (not b!2587304) (not d!733214) (not bm!167129) (not b!2588430) (not d!733158) (not b!2587353) (not b!2587882) (not b!2588443) (not b!2588457) (not d!732730) (not b!2587861) (not tb!141257) (not d!733194) (not b!2587176) (not b!2588191) (not b!2588043) (not d!732672) (not d!732652) (not b!2587723) (not b!2587123) (not bm!167089) (not b!2588098) (not b!2588077) (not bm!167137) (not bm!167170) (not b!2587404) (not b!2587601) (not b!2588262) (not b!2587200) (not b_lambda!76869) (not b!2588442) (not d!733252) (not b!2588030) (not b!2587572) (not b!2587520) (not d!733020) (not bm!167175) (not b!2587064) (not b!2587755) (not b!2588051) (not b!2587521) (not bm!167104) (not b!2587914) (not b!2586546) (not b!2588161) (not b!2587894) (not d!733016) (not d!732844) (not b!2588221) (not d!732682) (not b!2587210) (not b!2587747) (not b!2587467) (not b!2587842) (not b!2588014) (not b!2588061) (not b!2587869) (not b!2587389) (not bm!167079) (not d!733250) (not b_next!73605) (not b!2587946) (not b!2587318) (not bm!167074) (not b!2587997) (not b!2588341) (not b!2587084) (not b!2588187) (not d!732808) (not b!2586749) (not b_next!73565) (not b!2588071) (not d!733010) b_and!190003 (not b_next!73561) (not b!2587081) (not b!2588251) (not b!2588050) (not b!2588445) (not b!2588390) (not b!2587220) (not b_next!73589) (not bm!167182) (not b!2588283) (not b!2588210) (not b!2588316) (not b_lambda!76917) (not b_lambda!76985) (not b_lambda!76971) (not b!2588223) (not b!2588318) (not b!2587129) (not b!2588433) (not b!2587522) (not b!2587456) (not b!2587208) (not b!2587858) (not b!2588307) (not b_lambda!76961) (not b!2588114) (not d!733120) b_and!190007 (not b!2587252) (not d!733042) (not d!733052) (not b!2587116) (not b!2587970) (not b!2587980) (not b!2588010) (not b!2587486) (not bm!167171) (not b!2587349) (not bm!167082) (not b!2588405) (not b!2588165) (not d!732732) (not b_next!73559) (not d!733026) (not b!2587113) (not b!2587256) (not b!2588446) (not b!2587285) (not b!2587074) (not b_next!73557) (not b!2588067) (not b!2588054) (not bm!167080) (not d!733084) (not b!2588047) (not bs!471978) (not b!2587109) (not b!2587629) (not b!2587922) (not b!2587253) (not b!2588085) (not b!2587976) (not b!2587704) (not d!732874) (not b!2588122) (not b!2588057) (not b!2588477) (not b_lambda!77005) (not b!2587836) (not b_lambda!76865) (not b!2588177) (not b!2588139) (not b!2588394) (not b!2587925) (not b!2587035) (not b!2587372) (not b!2587091) (not b!2587660) (not d!732786) (not b!2588117) (not b!2587966) (not b!2588079) (not b!2587077) (not b!2587371) (not b!2588332) (not bm!167093) (not b!2587484) (not b!2588358) (not bs!471973) (not b!2588172) (not b!2588178) (not b!2588008) (not b_lambda!76963) (not b!2587466) (not b!2587347) (not b!2588275) (not b!2587346) (not b!2588297) (not bm!167181) (not b!2587223) (not b!2588001) (not b!2588412) (not bm!167131) (not b!2587830) (not b!2588053) (not b!2587163) (not b!2588129) (not b!2588337) (not bm!167150) (not b!2587685) (not bm!167143) (not b!2587974) (not d!732776) (not b_lambda!76879) (not b!2588267) (not b!2588087) (not b!2588021) (not b!2587212) (not bm!167192) (not b!2587637) (not b!2588254) (not b!2587855) (not b!2588314) (not b!2587981) (not d!732658) (not bm!167085) (not b!2588022))
(check-sat b_and!190009 (not b_next!73569) b_and!190019 b_and!190031 b_and!190015 b_and!190011 (not b_next!73573) b_and!190017 (not b_next!73609) b_and!190025 (not b_next!73611) b_and!190013 (not b_next!73571) (not b_next!73579) b_and!190023 (not b_next!73567) b_and!190035 (not b_next!73593) b_and!190039 b_and!190033 (not b_next!73563) (not b_next!73595) (not b_next!73607) (not b_next!73591) b_and!190037 b_and!190021 b_and!190005 (not b_next!73577) (not b_next!73575) b_and!190027 b_and!190029 b_and!190041 (not b_next!73605) (not b_next!73589) (not b_next!73565) b_and!190003 (not b_next!73561) b_and!190007 (not b_next!73559) (not b_next!73557))
