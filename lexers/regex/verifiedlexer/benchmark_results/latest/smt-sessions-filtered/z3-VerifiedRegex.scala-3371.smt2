; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190752 () Bool)

(assert start!190752)

(declare-fun b!1902712 () Bool)

(declare-fun b_free!53569 () Bool)

(declare-fun b_next!54273 () Bool)

(assert (=> b!1902712 (= b_free!53569 (not b_next!54273))))

(declare-fun tp!543536 () Bool)

(declare-fun b_and!147443 () Bool)

(assert (=> b!1902712 (= tp!543536 b_and!147443)))

(declare-fun b_free!53571 () Bool)

(declare-fun b_next!54275 () Bool)

(assert (=> b!1902712 (= b_free!53571 (not b_next!54275))))

(declare-fun tp!543539 () Bool)

(declare-fun b_and!147445 () Bool)

(assert (=> b!1902712 (= tp!543539 b_and!147445)))

(declare-fun b!1902719 () Bool)

(declare-fun b_free!53573 () Bool)

(declare-fun b_next!54277 () Bool)

(assert (=> b!1902719 (= b_free!53573 (not b_next!54277))))

(declare-fun tp!543538 () Bool)

(declare-fun b_and!147447 () Bool)

(assert (=> b!1902719 (= tp!543538 b_and!147447)))

(declare-fun b_free!53575 () Bool)

(declare-fun b_next!54279 () Bool)

(assert (=> b!1902719 (= b_free!53575 (not b_next!54279))))

(declare-fun tp!543529 () Bool)

(declare-fun b_and!147449 () Bool)

(assert (=> b!1902719 (= tp!543529 b_and!147449)))

(declare-fun b!1902709 () Bool)

(declare-fun b_free!53577 () Bool)

(declare-fun b_next!54281 () Bool)

(assert (=> b!1902709 (= b_free!53577 (not b_next!54281))))

(declare-fun tp!543535 () Bool)

(declare-fun b_and!147451 () Bool)

(assert (=> b!1902709 (= tp!543535 b_and!147451)))

(declare-fun b_free!53579 () Bool)

(declare-fun b_next!54283 () Bool)

(assert (=> b!1902709 (= b_free!53579 (not b_next!54283))))

(declare-fun tp!543540 () Bool)

(declare-fun b_and!147453 () Bool)

(assert (=> b!1902709 (= tp!543540 b_and!147453)))

(declare-fun b!1902696 () Bool)

(declare-fun e!1215394 () Bool)

(declare-datatypes ((List!21528 0))(
  ( (Nil!21446) (Cons!21446 (h!26847 (_ BitVec 16)) (t!177019 List!21528)) )
))
(declare-datatypes ((TokenValue!3954 0))(
  ( (FloatLiteralValue!7908 (text!28123 List!21528)) (TokenValueExt!3953 (__x!13406 Int)) (Broken!19770 (value!120378 List!21528)) (Object!4035) (End!3954) (Def!3954) (Underscore!3954) (Match!3954) (Else!3954) (Error!3954) (Case!3954) (If!3954) (Extends!3954) (Abstract!3954) (Class!3954) (Val!3954) (DelimiterValue!7908 (del!4014 List!21528)) (KeywordValue!3960 (value!120379 List!21528)) (CommentValue!7908 (value!120380 List!21528)) (WhitespaceValue!7908 (value!120381 List!21528)) (IndentationValue!3954 (value!120382 List!21528)) (String!24887) (Int32!3954) (Broken!19771 (value!120383 List!21528)) (Boolean!3955) (Unit!35769) (OperatorValue!3957 (op!4014 List!21528)) (IdentifierValue!7908 (value!120384 List!21528)) (IdentifierValue!7909 (value!120385 List!21528)) (WhitespaceValue!7909 (value!120386 List!21528)) (True!7908) (False!7908) (Broken!19772 (value!120387 List!21528)) (Broken!19773 (value!120388 List!21528)) (True!7909) (RightBrace!3954) (RightBracket!3954) (Colon!3954) (Null!3954) (Comma!3954) (LeftBracket!3954) (False!7909) (LeftBrace!3954) (ImaginaryLiteralValue!3954 (text!28124 List!21528)) (StringLiteralValue!11862 (value!120389 List!21528)) (EOFValue!3954 (value!120390 List!21528)) (IdentValue!3954 (value!120391 List!21528)) (DelimiterValue!7909 (value!120392 List!21528)) (DedentValue!3954 (value!120393 List!21528)) (NewLineValue!3954 (value!120394 List!21528)) (IntegerValue!11862 (value!120395 (_ BitVec 32)) (text!28125 List!21528)) (IntegerValue!11863 (value!120396 Int) (text!28126 List!21528)) (Times!3954) (Or!3954) (Equal!3954) (Minus!3954) (Broken!19774 (value!120397 List!21528)) (And!3954) (Div!3954) (LessEqual!3954) (Mod!3954) (Concat!9197) (Not!3954) (Plus!3954) (SpaceValue!3954 (value!120398 List!21528)) (IntegerValue!11864 (value!120399 Int) (text!28127 List!21528)) (StringLiteralValue!11863 (text!28128 List!21528)) (FloatLiteralValue!7909 (text!28129 List!21528)) (BytesLiteralValue!3954 (value!120400 List!21528)) (CommentValue!7909 (value!120401 List!21528)) (StringLiteralValue!11864 (value!120402 List!21528)) (ErrorTokenValue!3954 (msg!4015 List!21528)) )
))
(declare-datatypes ((C!10632 0))(
  ( (C!10633 (val!6268 Int)) )
))
(declare-datatypes ((List!21529 0))(
  ( (Nil!21447) (Cons!21447 (h!26848 C!10632) (t!177020 List!21529)) )
))
(declare-datatypes ((Regex!5243 0))(
  ( (ElementMatch!5243 (c!309899 C!10632)) (Concat!9198 (regOne!10998 Regex!5243) (regTwo!10998 Regex!5243)) (EmptyExpr!5243) (Star!5243 (reg!5572 Regex!5243)) (EmptyLang!5243) (Union!5243 (regOne!10999 Regex!5243) (regTwo!10999 Regex!5243)) )
))
(declare-datatypes ((String!24888 0))(
  ( (String!24889 (value!120403 String)) )
))
(declare-datatypes ((IArray!14271 0))(
  ( (IArray!14272 (innerList!7193 List!21529)) )
))
(declare-datatypes ((Conc!7133 0))(
  ( (Node!7133 (left!17152 Conc!7133) (right!17482 Conc!7133) (csize!14496 Int) (cheight!7344 Int)) (Leaf!10505 (xs!10027 IArray!14271) (csize!14497 Int)) (Empty!7133) )
))
(declare-datatypes ((BalanceConc!14082 0))(
  ( (BalanceConc!14083 (c!309900 Conc!7133)) )
))
(declare-datatypes ((TokenValueInjection!7492 0))(
  ( (TokenValueInjection!7493 (toValue!5435 Int) (toChars!5294 Int)) )
))
(declare-datatypes ((Rule!7436 0))(
  ( (Rule!7437 (regex!3818 Regex!5243) (tag!4246 String!24888) (isSeparator!3818 Bool) (transformation!3818 TokenValueInjection!7492)) )
))
(declare-datatypes ((Token!7188 0))(
  ( (Token!7189 (value!120404 TokenValue!3954) (rule!6011 Rule!7436) (size!16916 Int) (originalCharacters!4625 List!21529)) )
))
(declare-datatypes ((tuple2!20180 0))(
  ( (tuple2!20181 (_1!11559 Token!7188) (_2!11559 List!21529)) )
))
(declare-datatypes ((Option!4341 0))(
  ( (None!4340) (Some!4340 (v!26369 tuple2!20180)) )
))
(declare-fun lt!727670 () Option!4341)

(declare-datatypes ((List!21530 0))(
  ( (Nil!21448) (Cons!21448 (h!26849 Token!7188) (t!177021 List!21530)) )
))
(declare-fun tokens!598 () List!21530)

(declare-fun get!6657 (Option!4341) tuple2!20180)

(assert (=> b!1902696 (= e!1215394 (= (_1!11559 (get!6657 lt!727670)) (h!26849 tokens!598)))))

(declare-fun b!1902697 () Bool)

(declare-fun tp!543530 () Bool)

(declare-fun e!1215391 () Bool)

(declare-fun e!1215403 () Bool)

(declare-fun inv!28539 (Token!7188) Bool)

(assert (=> b!1902697 (= e!1215403 (and (inv!28539 (h!26849 tokens!598)) e!1215391 tp!543530))))

(declare-fun b!1902698 () Bool)

(declare-fun e!1215408 () Bool)

(declare-fun e!1215405 () Bool)

(declare-fun tp!543532 () Bool)

(assert (=> b!1902698 (= e!1215408 (and e!1215405 tp!543532))))

(declare-fun b!1902699 () Bool)

(declare-fun res!849691 () Bool)

(declare-fun e!1215401 () Bool)

(assert (=> b!1902699 (=> (not res!849691) (not e!1215401))))

(get-info :version)

(assert (=> b!1902699 (= res!849691 ((_ is Cons!21448) tokens!598))))

(declare-fun b!1902700 () Bool)

(declare-fun res!849682 () Bool)

(declare-fun e!1215407 () Bool)

(assert (=> b!1902700 (=> res!849682 e!1215407)))

(declare-fun separatorToken!354 () Token!7188)

(declare-datatypes ((LexerInterface!3431 0))(
  ( (LexerInterfaceExt!3428 (__x!13407 Int)) (Lexer!3429) )
))
(declare-fun thiss!23328 () LexerInterface!3431)

(declare-datatypes ((List!21531 0))(
  ( (Nil!21449) (Cons!21449 (h!26850 Rule!7436) (t!177022 List!21531)) )
))
(declare-fun rules!3198 () List!21531)

(declare-fun isDefined!3639 (Option!4341) Bool)

(declare-fun maxPrefix!1877 (LexerInterface!3431 List!21531 List!21529) Option!4341)

(declare-fun printWithSeparatorTokenWhenNeededList!474 (LexerInterface!3431 List!21531 List!21530 Token!7188) List!21529)

(assert (=> b!1902700 (= res!849682 (not (isDefined!3639 (maxPrefix!1877 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!474 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1902701 () Bool)

(declare-fun res!849678 () Bool)

(assert (=> b!1902701 (=> (not res!849678) (not e!1215401))))

(declare-fun rulesProduceEachTokenIndividuallyList!1162 (LexerInterface!3431 List!21531 List!21530) Bool)

(assert (=> b!1902701 (= res!849678 (rulesProduceEachTokenIndividuallyList!1162 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1902702 () Bool)

(declare-fun e!1215404 () Bool)

(declare-fun e!1215409 () Bool)

(assert (=> b!1902702 (= e!1215404 e!1215409)))

(declare-fun res!849686 () Bool)

(assert (=> b!1902702 (=> (not res!849686) (not e!1215409))))

(declare-fun lt!727669 () Rule!7436)

(declare-fun lt!727671 () List!21529)

(declare-fun matchR!2529 (Regex!5243 List!21529) Bool)

(assert (=> b!1902702 (= res!849686 (matchR!2529 (regex!3818 lt!727669) lt!727671))))

(declare-datatypes ((Option!4342 0))(
  ( (None!4341) (Some!4341 (v!26370 Rule!7436)) )
))
(declare-fun lt!727675 () Option!4342)

(declare-fun get!6658 (Option!4342) Rule!7436)

(assert (=> b!1902702 (= lt!727669 (get!6658 lt!727675))))

(declare-fun res!849688 () Bool)

(assert (=> start!190752 (=> (not res!849688) (not e!1215401))))

(assert (=> start!190752 (= res!849688 ((_ is Lexer!3429) thiss!23328))))

(assert (=> start!190752 e!1215401))

(assert (=> start!190752 true))

(assert (=> start!190752 e!1215408))

(assert (=> start!190752 e!1215403))

(declare-fun e!1215396 () Bool)

(assert (=> start!190752 (and (inv!28539 separatorToken!354) e!1215396)))

(declare-fun b!1902703 () Bool)

(declare-fun res!849680 () Bool)

(assert (=> b!1902703 (=> (not res!849680) (not e!1215401))))

(declare-fun isEmpty!13159 (List!21531) Bool)

(assert (=> b!1902703 (= res!849680 (not (isEmpty!13159 rules!3198)))))

(declare-fun e!1215399 () Bool)

(declare-fun e!1215393 () Bool)

(declare-fun tp!543528 () Bool)

(declare-fun b!1902704 () Bool)

(declare-fun inv!28536 (String!24888) Bool)

(declare-fun inv!28540 (TokenValueInjection!7492) Bool)

(assert (=> b!1902704 (= e!1215399 (and tp!543528 (inv!28536 (tag!4246 (rule!6011 separatorToken!354))) (inv!28540 (transformation!3818 (rule!6011 separatorToken!354))) e!1215393))))

(declare-fun tp!543533 () Bool)

(declare-fun e!1215411 () Bool)

(declare-fun b!1902705 () Bool)

(assert (=> b!1902705 (= e!1215405 (and tp!543533 (inv!28536 (tag!4246 (h!26850 rules!3198))) (inv!28540 (transformation!3818 (h!26850 rules!3198))) e!1215411))))

(declare-fun b!1902706 () Bool)

(declare-fun e!1215406 () Bool)

(declare-fun e!1215410 () Bool)

(assert (=> b!1902706 (= e!1215406 e!1215410)))

(declare-fun res!849684 () Bool)

(assert (=> b!1902706 (=> (not res!849684) (not e!1215410))))

(declare-fun lt!727666 () Rule!7436)

(declare-fun lt!727677 () List!21529)

(assert (=> b!1902706 (= res!849684 (matchR!2529 (regex!3818 lt!727666) lt!727677))))

(declare-fun lt!727674 () Option!4342)

(assert (=> b!1902706 (= lt!727666 (get!6658 lt!727674))))

(declare-fun b!1902707 () Bool)

(assert (=> b!1902707 (= e!1215410 (= (rule!6011 (h!26849 tokens!598)) lt!727666))))

(declare-fun b!1902708 () Bool)

(declare-fun res!849692 () Bool)

(assert (=> b!1902708 (=> (not res!849692) (not e!1215401))))

(declare-fun lambda!74371 () Int)

(declare-fun forall!4502 (List!21530 Int) Bool)

(assert (=> b!1902708 (= res!849692 (forall!4502 tokens!598 lambda!74371))))

(assert (=> b!1902709 (= e!1215411 (and tp!543535 tp!543540))))

(declare-fun b!1902710 () Bool)

(declare-fun res!849676 () Bool)

(assert (=> b!1902710 (=> (not res!849676) (not e!1215401))))

(assert (=> b!1902710 (= res!849676 (isSeparator!3818 (rule!6011 separatorToken!354)))))

(declare-fun b!1902711 () Bool)

(assert (=> b!1902711 (= e!1215407 (not (= tokens!598 Nil!21448)))))

(declare-fun e!1215400 () Bool)

(assert (=> b!1902712 (= e!1215400 (and tp!543536 tp!543539))))

(declare-fun b!1902713 () Bool)

(declare-fun res!849689 () Bool)

(assert (=> b!1902713 (=> (not res!849689) (not e!1215401))))

(declare-fun rulesInvariant!3038 (LexerInterface!3431 List!21531) Bool)

(assert (=> b!1902713 (= res!849689 (rulesInvariant!3038 thiss!23328 rules!3198))))

(declare-fun b!1902714 () Bool)

(assert (=> b!1902714 (= e!1215409 (= (rule!6011 separatorToken!354) lt!727669))))

(declare-fun b!1902715 () Bool)

(declare-fun res!849685 () Bool)

(assert (=> b!1902715 (=> res!849685 e!1215407)))

(declare-fun isEmpty!13160 (List!21530) Bool)

(assert (=> b!1902715 (= res!849685 (isEmpty!13160 tokens!598))))

(declare-fun b!1902716 () Bool)

(declare-fun res!849690 () Bool)

(assert (=> b!1902716 (=> (not res!849690) (not e!1215401))))

(declare-fun rulesProduceIndividualToken!1603 (LexerInterface!3431 List!21531 Token!7188) Bool)

(assert (=> b!1902716 (= res!849690 (rulesProduceIndividualToken!1603 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1902717 () Bool)

(declare-fun res!849683 () Bool)

(assert (=> b!1902717 (=> (not res!849683) (not e!1215401))))

(declare-fun sepAndNonSepRulesDisjointChars!916 (List!21531 List!21531) Bool)

(assert (=> b!1902717 (= res!849683 (sepAndNonSepRulesDisjointChars!916 rules!3198 rules!3198))))

(declare-fun b!1902718 () Bool)

(assert (=> b!1902718 (= e!1215401 (not e!1215407))))

(declare-fun res!849687 () Bool)

(assert (=> b!1902718 (=> res!849687 e!1215407)))

(declare-fun lt!727676 () Option!4341)

(assert (=> b!1902718 (= res!849687 (or (not ((_ is Some!4340) lt!727676)) (not (= (_1!11559 (v!26369 lt!727676)) (h!26849 tokens!598)))))))

(declare-fun ++!5761 (List!21529 List!21529) List!21529)

(assert (=> b!1902718 (= lt!727676 (maxPrefix!1877 thiss!23328 rules!3198 (++!5761 lt!727677 (printWithSeparatorTokenWhenNeededList!474 thiss!23328 rules!3198 (t!177021 tokens!598) separatorToken!354))))))

(assert (=> b!1902718 e!1215406))

(declare-fun res!849681 () Bool)

(assert (=> b!1902718 (=> (not res!849681) (not e!1215406))))

(declare-fun isDefined!3640 (Option!4342) Bool)

(assert (=> b!1902718 (= res!849681 (isDefined!3640 lt!727674))))

(declare-fun getRuleFromTag!661 (LexerInterface!3431 List!21531 String!24888) Option!4342)

(assert (=> b!1902718 (= lt!727674 (getRuleFromTag!661 thiss!23328 rules!3198 (tag!4246 (rule!6011 (h!26849 tokens!598)))))))

(declare-datatypes ((Unit!35770 0))(
  ( (Unit!35771) )
))
(declare-fun lt!727668 () Unit!35770)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!661 (LexerInterface!3431 List!21531 List!21529 Token!7188) Unit!35770)

(assert (=> b!1902718 (= lt!727668 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!661 thiss!23328 rules!3198 lt!727677 (h!26849 tokens!598)))))

(assert (=> b!1902718 e!1215394))

(declare-fun res!849679 () Bool)

(assert (=> b!1902718 (=> (not res!849679) (not e!1215394))))

(assert (=> b!1902718 (= res!849679 (isDefined!3639 lt!727670))))

(assert (=> b!1902718 (= lt!727670 (maxPrefix!1877 thiss!23328 rules!3198 lt!727677))))

(declare-fun lt!727673 () BalanceConc!14082)

(declare-fun list!8714 (BalanceConc!14082) List!21529)

(assert (=> b!1902718 (= lt!727677 (list!8714 lt!727673))))

(assert (=> b!1902718 e!1215404))

(declare-fun res!849677 () Bool)

(assert (=> b!1902718 (=> (not res!849677) (not e!1215404))))

(assert (=> b!1902718 (= res!849677 (isDefined!3640 lt!727675))))

(assert (=> b!1902718 (= lt!727675 (getRuleFromTag!661 thiss!23328 rules!3198 (tag!4246 (rule!6011 separatorToken!354))))))

(declare-fun lt!727678 () Unit!35770)

(assert (=> b!1902718 (= lt!727678 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!661 thiss!23328 rules!3198 lt!727671 separatorToken!354))))

(declare-fun charsOf!2374 (Token!7188) BalanceConc!14082)

(assert (=> b!1902718 (= lt!727671 (list!8714 (charsOf!2374 separatorToken!354)))))

(declare-fun lt!727667 () Unit!35770)

(declare-fun lemmaEqSameImage!526 (TokenValueInjection!7492 BalanceConc!14082 BalanceConc!14082) Unit!35770)

(declare-fun seqFromList!2690 (List!21529) BalanceConc!14082)

(assert (=> b!1902718 (= lt!727667 (lemmaEqSameImage!526 (transformation!3818 (rule!6011 (h!26849 tokens!598))) lt!727673 (seqFromList!2690 (originalCharacters!4625 (h!26849 tokens!598)))))))

(declare-fun lt!727672 () Unit!35770)

(declare-fun lemmaSemiInverse!797 (TokenValueInjection!7492 BalanceConc!14082) Unit!35770)

(assert (=> b!1902718 (= lt!727672 (lemmaSemiInverse!797 (transformation!3818 (rule!6011 (h!26849 tokens!598))) lt!727673))))

(assert (=> b!1902718 (= lt!727673 (charsOf!2374 (h!26849 tokens!598)))))

(assert (=> b!1902719 (= e!1215393 (and tp!543538 tp!543529))))

(declare-fun tp!543531 () Bool)

(declare-fun b!1902720 () Bool)

(declare-fun e!1215395 () Bool)

(declare-fun inv!21 (TokenValue!3954) Bool)

(assert (=> b!1902720 (= e!1215391 (and (inv!21 (value!120404 (h!26849 tokens!598))) e!1215395 tp!543531))))

(declare-fun b!1902721 () Bool)

(declare-fun tp!543534 () Bool)

(assert (=> b!1902721 (= e!1215396 (and (inv!21 (value!120404 separatorToken!354)) e!1215399 tp!543534))))

(declare-fun b!1902722 () Bool)

(declare-fun tp!543537 () Bool)

(assert (=> b!1902722 (= e!1215395 (and tp!543537 (inv!28536 (tag!4246 (rule!6011 (h!26849 tokens!598)))) (inv!28540 (transformation!3818 (rule!6011 (h!26849 tokens!598)))) e!1215400))))

(assert (= (and start!190752 res!849688) b!1902703))

(assert (= (and b!1902703 res!849680) b!1902713))

(assert (= (and b!1902713 res!849689) b!1902701))

(assert (= (and b!1902701 res!849678) b!1902716))

(assert (= (and b!1902716 res!849690) b!1902710))

(assert (= (and b!1902710 res!849676) b!1902708))

(assert (= (and b!1902708 res!849692) b!1902717))

(assert (= (and b!1902717 res!849683) b!1902699))

(assert (= (and b!1902699 res!849691) b!1902718))

(assert (= (and b!1902718 res!849677) b!1902702))

(assert (= (and b!1902702 res!849686) b!1902714))

(assert (= (and b!1902718 res!849679) b!1902696))

(assert (= (and b!1902718 res!849681) b!1902706))

(assert (= (and b!1902706 res!849684) b!1902707))

(assert (= (and b!1902718 (not res!849687)) b!1902715))

(assert (= (and b!1902715 (not res!849685)) b!1902700))

(assert (= (and b!1902700 (not res!849682)) b!1902711))

(assert (= b!1902705 b!1902709))

(assert (= b!1902698 b!1902705))

(assert (= (and start!190752 ((_ is Cons!21449) rules!3198)) b!1902698))

(assert (= b!1902722 b!1902712))

(assert (= b!1902720 b!1902722))

(assert (= b!1902697 b!1902720))

(assert (= (and start!190752 ((_ is Cons!21448) tokens!598)) b!1902697))

(assert (= b!1902704 b!1902719))

(assert (= b!1902721 b!1902704))

(assert (= start!190752 b!1902721))

(declare-fun m!2333957 () Bool)

(assert (=> b!1902713 m!2333957))

(declare-fun m!2333959 () Bool)

(assert (=> b!1902701 m!2333959))

(declare-fun m!2333961 () Bool)

(assert (=> b!1902706 m!2333961))

(declare-fun m!2333963 () Bool)

(assert (=> b!1902706 m!2333963))

(declare-fun m!2333965 () Bool)

(assert (=> start!190752 m!2333965))

(declare-fun m!2333967 () Bool)

(assert (=> b!1902721 m!2333967))

(declare-fun m!2333969 () Bool)

(assert (=> b!1902700 m!2333969))

(assert (=> b!1902700 m!2333969))

(declare-fun m!2333971 () Bool)

(assert (=> b!1902700 m!2333971))

(assert (=> b!1902700 m!2333971))

(declare-fun m!2333973 () Bool)

(assert (=> b!1902700 m!2333973))

(declare-fun m!2333975 () Bool)

(assert (=> b!1902715 m!2333975))

(declare-fun m!2333977 () Bool)

(assert (=> b!1902718 m!2333977))

(declare-fun m!2333979 () Bool)

(assert (=> b!1902718 m!2333979))

(declare-fun m!2333981 () Bool)

(assert (=> b!1902718 m!2333981))

(declare-fun m!2333983 () Bool)

(assert (=> b!1902718 m!2333983))

(declare-fun m!2333985 () Bool)

(assert (=> b!1902718 m!2333985))

(declare-fun m!2333987 () Bool)

(assert (=> b!1902718 m!2333987))

(assert (=> b!1902718 m!2333979))

(declare-fun m!2333989 () Bool)

(assert (=> b!1902718 m!2333989))

(declare-fun m!2333991 () Bool)

(assert (=> b!1902718 m!2333991))

(declare-fun m!2333993 () Bool)

(assert (=> b!1902718 m!2333993))

(declare-fun m!2333995 () Bool)

(assert (=> b!1902718 m!2333995))

(assert (=> b!1902718 m!2333993))

(declare-fun m!2333997 () Bool)

(assert (=> b!1902718 m!2333997))

(declare-fun m!2333999 () Bool)

(assert (=> b!1902718 m!2333999))

(declare-fun m!2334001 () Bool)

(assert (=> b!1902718 m!2334001))

(declare-fun m!2334003 () Bool)

(assert (=> b!1902718 m!2334003))

(assert (=> b!1902718 m!2333983))

(declare-fun m!2334005 () Bool)

(assert (=> b!1902718 m!2334005))

(declare-fun m!2334007 () Bool)

(assert (=> b!1902718 m!2334007))

(declare-fun m!2334009 () Bool)

(assert (=> b!1902718 m!2334009))

(declare-fun m!2334011 () Bool)

(assert (=> b!1902718 m!2334011))

(assert (=> b!1902718 m!2334003))

(declare-fun m!2334013 () Bool)

(assert (=> b!1902704 m!2334013))

(declare-fun m!2334015 () Bool)

(assert (=> b!1902704 m!2334015))

(declare-fun m!2334017 () Bool)

(assert (=> b!1902720 m!2334017))

(declare-fun m!2334019 () Bool)

(assert (=> b!1902717 m!2334019))

(declare-fun m!2334021 () Bool)

(assert (=> b!1902696 m!2334021))

(declare-fun m!2334023 () Bool)

(assert (=> b!1902702 m!2334023))

(declare-fun m!2334025 () Bool)

(assert (=> b!1902702 m!2334025))

(declare-fun m!2334027 () Bool)

(assert (=> b!1902703 m!2334027))

(declare-fun m!2334029 () Bool)

(assert (=> b!1902722 m!2334029))

(declare-fun m!2334031 () Bool)

(assert (=> b!1902722 m!2334031))

(declare-fun m!2334033 () Bool)

(assert (=> b!1902708 m!2334033))

(declare-fun m!2334035 () Bool)

(assert (=> b!1902697 m!2334035))

(declare-fun m!2334037 () Bool)

(assert (=> b!1902716 m!2334037))

(declare-fun m!2334039 () Bool)

(assert (=> b!1902705 m!2334039))

(declare-fun m!2334041 () Bool)

(assert (=> b!1902705 m!2334041))

(check-sat (not b_next!54283) b_and!147451 (not b!1902713) (not b!1902700) (not b!1902705) (not b_next!54275) b_and!147445 b_and!147447 (not b!1902696) (not b_next!54279) (not b_next!54277) (not b!1902702) (not b!1902718) b_and!147443 (not start!190752) (not b!1902715) (not b!1902720) (not b!1902716) (not b_next!54273) (not b!1902703) b_and!147449 (not b_next!54281) (not b!1902717) (not b!1902721) (not b!1902697) (not b!1902722) (not b!1902708) (not b!1902701) (not b!1902704) (not b!1902706) (not b!1902698) b_and!147453)
(check-sat (not b_next!54283) b_and!147451 (not b_next!54273) (not b_next!54275) b_and!147445 b_and!147447 (not b_next!54279) (not b_next!54277) b_and!147453 b_and!147443 b_and!147449 (not b_next!54281))
