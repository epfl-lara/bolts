; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169574 () Bool)

(assert start!169574)

(declare-fun b!1726803 () Bool)

(declare-fun b_free!47139 () Bool)

(declare-fun b_next!47843 () Bool)

(assert (=> b!1726803 (= b_free!47139 (not b_next!47843))))

(declare-fun tp!492633 () Bool)

(declare-fun b_and!126759 () Bool)

(assert (=> b!1726803 (= tp!492633 b_and!126759)))

(declare-fun b_free!47141 () Bool)

(declare-fun b_next!47845 () Bool)

(assert (=> b!1726803 (= b_free!47141 (not b_next!47845))))

(declare-fun tp!492629 () Bool)

(declare-fun b_and!126761 () Bool)

(assert (=> b!1726803 (= tp!492629 b_and!126761)))

(declare-fun b!1726792 () Bool)

(declare-fun b_free!47143 () Bool)

(declare-fun b_next!47847 () Bool)

(assert (=> b!1726792 (= b_free!47143 (not b_next!47847))))

(declare-fun tp!492630 () Bool)

(declare-fun b_and!126763 () Bool)

(assert (=> b!1726792 (= tp!492630 b_and!126763)))

(declare-fun b_free!47145 () Bool)

(declare-fun b_next!47849 () Bool)

(assert (=> b!1726792 (= b_free!47145 (not b_next!47849))))

(declare-fun tp!492632 () Bool)

(declare-fun b_and!126765 () Bool)

(assert (=> b!1726792 (= tp!492632 b_and!126765)))

(declare-fun b!1726801 () Bool)

(declare-fun b_free!47147 () Bool)

(declare-fun b_next!47851 () Bool)

(assert (=> b!1726801 (= b_free!47147 (not b_next!47851))))

(declare-fun tp!492625 () Bool)

(declare-fun b_and!126767 () Bool)

(assert (=> b!1726801 (= tp!492625 b_and!126767)))

(declare-fun b_free!47149 () Bool)

(declare-fun b_next!47853 () Bool)

(assert (=> b!1726801 (= b_free!47149 (not b_next!47853))))

(declare-fun tp!492636 () Bool)

(declare-fun b_and!126769 () Bool)

(assert (=> b!1726801 (= tp!492636 b_and!126769)))

(declare-fun b!1726820 () Bool)

(declare-fun e!1104591 () Bool)

(assert (=> b!1726820 (= e!1104591 true)))

(declare-fun b!1726819 () Bool)

(declare-fun e!1104590 () Bool)

(assert (=> b!1726819 (= e!1104590 e!1104591)))

(declare-fun b!1726818 () Bool)

(declare-fun e!1104589 () Bool)

(assert (=> b!1726818 (= e!1104589 e!1104590)))

(declare-fun b!1726794 () Bool)

(assert (=> b!1726794 e!1104589))

(assert (= b!1726819 b!1726820))

(assert (= b!1726818 b!1726819))

(assert (= b!1726794 b!1726818))

(declare-fun order!11593 () Int)

(declare-fun lambda!69266 () Int)

(declare-fun order!11591 () Int)

(declare-datatypes ((C!9536 0))(
  ( (C!9537 (val!5364 Int)) )
))
(declare-datatypes ((List!18984 0))(
  ( (Nil!18914) (Cons!18914 (h!24315 C!9536) (t!160175 List!18984)) )
))
(declare-datatypes ((Regex!4681 0))(
  ( (ElementMatch!4681 (c!282330 C!9536)) (Concat!8124 (regOne!9874 Regex!4681) (regTwo!9874 Regex!4681)) (EmptyExpr!4681) (Star!4681 (reg!5010 Regex!4681)) (EmptyLang!4681) (Union!4681 (regOne!9875 Regex!4681) (regTwo!9875 Regex!4681)) )
))
(declare-datatypes ((String!21546 0))(
  ( (String!21547 (value!105207 String)) )
))
(declare-datatypes ((List!18985 0))(
  ( (Nil!18915) (Cons!18915 (h!24316 (_ BitVec 16)) (t!160176 List!18985)) )
))
(declare-datatypes ((TokenValue!3443 0))(
  ( (FloatLiteralValue!6886 (text!24546 List!18985)) (TokenValueExt!3442 (__x!12188 Int)) (Broken!17215 (value!105208 List!18985)) (Object!3512) (End!3443) (Def!3443) (Underscore!3443) (Match!3443) (Else!3443) (Error!3443) (Case!3443) (If!3443) (Extends!3443) (Abstract!3443) (Class!3443) (Val!3443) (DelimiterValue!6886 (del!3503 List!18985)) (KeywordValue!3449 (value!105209 List!18985)) (CommentValue!6886 (value!105210 List!18985)) (WhitespaceValue!6886 (value!105211 List!18985)) (IndentationValue!3443 (value!105212 List!18985)) (String!21548) (Int32!3443) (Broken!17216 (value!105213 List!18985)) (Boolean!3444) (Unit!32764) (OperatorValue!3446 (op!3503 List!18985)) (IdentifierValue!6886 (value!105214 List!18985)) (IdentifierValue!6887 (value!105215 List!18985)) (WhitespaceValue!6887 (value!105216 List!18985)) (True!6886) (False!6886) (Broken!17217 (value!105217 List!18985)) (Broken!17218 (value!105218 List!18985)) (True!6887) (RightBrace!3443) (RightBracket!3443) (Colon!3443) (Null!3443) (Comma!3443) (LeftBracket!3443) (False!6887) (LeftBrace!3443) (ImaginaryLiteralValue!3443 (text!24547 List!18985)) (StringLiteralValue!10329 (value!105219 List!18985)) (EOFValue!3443 (value!105220 List!18985)) (IdentValue!3443 (value!105221 List!18985)) (DelimiterValue!6887 (value!105222 List!18985)) (DedentValue!3443 (value!105223 List!18985)) (NewLineValue!3443 (value!105224 List!18985)) (IntegerValue!10329 (value!105225 (_ BitVec 32)) (text!24548 List!18985)) (IntegerValue!10330 (value!105226 Int) (text!24549 List!18985)) (Times!3443) (Or!3443) (Equal!3443) (Minus!3443) (Broken!17219 (value!105227 List!18985)) (And!3443) (Div!3443) (LessEqual!3443) (Mod!3443) (Concat!8125) (Not!3443) (Plus!3443) (SpaceValue!3443 (value!105228 List!18985)) (IntegerValue!10331 (value!105229 Int) (text!24550 List!18985)) (StringLiteralValue!10330 (text!24551 List!18985)) (FloatLiteralValue!6887 (text!24552 List!18985)) (BytesLiteralValue!3443 (value!105230 List!18985)) (CommentValue!6887 (value!105231 List!18985)) (StringLiteralValue!10331 (value!105232 List!18985)) (ErrorTokenValue!3443 (msg!3504 List!18985)) )
))
(declare-datatypes ((IArray!12587 0))(
  ( (IArray!12588 (innerList!6351 List!18984)) )
))
(declare-datatypes ((Conc!6291 0))(
  ( (Node!6291 (left!15097 Conc!6291) (right!15427 Conc!6291) (csize!12812 Int) (cheight!6502 Int)) (Leaf!9188 (xs!9167 IArray!12587) (csize!12813 Int)) (Empty!6291) )
))
(declare-datatypes ((BalanceConc!12526 0))(
  ( (BalanceConc!12527 (c!282331 Conc!6291)) )
))
(declare-datatypes ((TokenValueInjection!6546 0))(
  ( (TokenValueInjection!6547 (toValue!4860 Int) (toChars!4719 Int)) )
))
(declare-datatypes ((Rule!6506 0))(
  ( (Rule!6507 (regex!3353 Regex!4681) (tag!3673 String!21546) (isSeparator!3353 Bool) (transformation!3353 TokenValueInjection!6546)) )
))
(declare-datatypes ((Token!6272 0))(
  ( (Token!6273 (value!105233 TokenValue!3443) (rule!5319 Rule!6506) (size!15026 Int) (originalCharacters!4167 List!18984)) )
))
(declare-datatypes ((tuple2!18602 0))(
  ( (tuple2!18603 (_1!10703 Token!6272) (_2!10703 List!18984)) )
))
(declare-fun lt!661398 () tuple2!18602)

(declare-fun dynLambda!8762 (Int Int) Int)

(declare-fun dynLambda!8763 (Int Int) Int)

(assert (=> b!1726820 (< (dynLambda!8762 order!11591 (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) (dynLambda!8763 order!11593 lambda!69266))))

(declare-fun order!11595 () Int)

(declare-fun dynLambda!8764 (Int Int) Int)

(assert (=> b!1726820 (< (dynLambda!8764 order!11595 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) (dynLambda!8763 order!11593 lambda!69266))))

(declare-fun b!1726780 () Bool)

(declare-fun res!775151 () Bool)

(declare-fun e!1104580 () Bool)

(assert (=> b!1726780 (=> (not res!775151) (not e!1104580))))

(declare-fun lt!661412 () tuple2!18602)

(declare-fun isEmpty!11897 (List!18984) Bool)

(assert (=> b!1726780 (= res!775151 (isEmpty!11897 (_2!10703 lt!661412)))))

(declare-fun b!1726781 () Bool)

(declare-fun e!1104577 () Bool)

(declare-fun lt!661419 () Rule!6506)

(assert (=> b!1726781 (= e!1104577 (= (rule!5319 (_1!10703 lt!661398)) lt!661419))))

(declare-fun e!1104560 () Bool)

(declare-fun b!1726782 () Bool)

(declare-fun tp!492635 () Bool)

(declare-datatypes ((List!18986 0))(
  ( (Nil!18916) (Cons!18916 (h!24317 Rule!6506) (t!160177 List!18986)) )
))
(declare-fun rules!3447 () List!18986)

(declare-fun e!1104578 () Bool)

(declare-fun inv!24441 (String!21546) Bool)

(declare-fun inv!24446 (TokenValueInjection!6546) Bool)

(assert (=> b!1726782 (= e!1104578 (and tp!492635 (inv!24441 (tag!3673 (h!24317 rules!3447))) (inv!24446 (transformation!3353 (h!24317 rules!3447))) e!1104560))))

(declare-fun b!1726783 () Bool)

(declare-fun e!1104564 () Bool)

(declare-fun e!1104575 () Bool)

(assert (=> b!1726783 (= e!1104564 e!1104575)))

(declare-fun res!775144 () Bool)

(assert (=> b!1726783 (=> res!775144 e!1104575)))

(declare-fun lt!661400 () List!18984)

(declare-fun lt!661418 () BalanceConc!12526)

(declare-fun list!7646 (BalanceConc!12526) List!18984)

(declare-fun dynLambda!8765 (Int TokenValue!3443) BalanceConc!12526)

(declare-fun dynLambda!8766 (Int BalanceConc!12526) TokenValue!3443)

(assert (=> b!1726783 (= res!775144 (not (= (list!7646 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (dynLambda!8766 (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) lt!661418))) lt!661400)))))

(declare-datatypes ((Unit!32765 0))(
  ( (Unit!32766) )
))
(declare-fun lt!661411 () Unit!32765)

(declare-fun lemmaSemiInverse!499 (TokenValueInjection!6546 BalanceConc!12526) Unit!32765)

(assert (=> b!1726783 (= lt!661411 (lemmaSemiInverse!499 (transformation!3353 (rule!5319 (_1!10703 lt!661398))) lt!661418))))

(declare-fun b!1726784 () Bool)

(declare-fun e!1104565 () Bool)

(declare-fun e!1104579 () Bool)

(assert (=> b!1726784 (= e!1104565 e!1104579)))

(declare-fun res!775150 () Bool)

(assert (=> b!1726784 (=> res!775150 e!1104579)))

(declare-fun lt!661399 () List!18984)

(declare-fun isPrefix!1594 (List!18984 List!18984) Bool)

(assert (=> b!1726784 (= res!775150 (not (isPrefix!1594 lt!661400 lt!661399)))))

(declare-fun ++!5178 (List!18984 List!18984) List!18984)

(assert (=> b!1726784 (isPrefix!1594 lt!661400 (++!5178 lt!661400 (_2!10703 lt!661398)))))

(declare-fun lt!661424 () Unit!32765)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1104 (List!18984 List!18984) Unit!32765)

(assert (=> b!1726784 (= lt!661424 (lemmaConcatTwoListThenFirstIsPrefix!1104 lt!661400 (_2!10703 lt!661398)))))

(assert (=> b!1726784 (= lt!661400 (list!7646 lt!661418))))

(declare-fun charsOf!2002 (Token!6272) BalanceConc!12526)

(assert (=> b!1726784 (= lt!661418 (charsOf!2002 (_1!10703 lt!661398)))))

(declare-fun e!1104572 () Bool)

(assert (=> b!1726784 e!1104572))

(declare-fun res!775147 () Bool)

(assert (=> b!1726784 (=> (not res!775147) (not e!1104572))))

(declare-datatypes ((Option!3730 0))(
  ( (None!3729) (Some!3729 (v!25142 Rule!6506)) )
))
(declare-fun lt!661402 () Option!3730)

(declare-fun isDefined!3073 (Option!3730) Bool)

(assert (=> b!1726784 (= res!775147 (isDefined!3073 lt!661402))))

(declare-datatypes ((LexerInterface!2982 0))(
  ( (LexerInterfaceExt!2979 (__x!12189 Int)) (Lexer!2980) )
))
(declare-fun thiss!24550 () LexerInterface!2982)

(declare-fun getRuleFromTag!403 (LexerInterface!2982 List!18986 String!21546) Option!3730)

(assert (=> b!1726784 (= lt!661402 (getRuleFromTag!403 thiss!24550 rules!3447 (tag!3673 (rule!5319 (_1!10703 lt!661398)))))))

(declare-fun lt!661405 () Unit!32765)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!403 (LexerInterface!2982 List!18986 List!18984 Token!6272) Unit!32765)

(assert (=> b!1726784 (= lt!661405 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!403 thiss!24550 rules!3447 lt!661399 (_1!10703 lt!661398)))))

(declare-datatypes ((Option!3731 0))(
  ( (None!3730) (Some!3730 (v!25143 tuple2!18602)) )
))
(declare-fun lt!661426 () Option!3731)

(declare-fun get!5624 (Option!3731) tuple2!18602)

(assert (=> b!1726784 (= lt!661398 (get!5624 lt!661426))))

(declare-fun suffix!1421 () List!18984)

(declare-fun lt!661401 () List!18984)

(declare-fun lt!661421 () Unit!32765)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!506 (LexerInterface!2982 List!18986 List!18984 List!18984) Unit!32765)

(assert (=> b!1726784 (= lt!661421 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!506 thiss!24550 rules!3447 lt!661401 suffix!1421))))

(declare-fun maxPrefix!1536 (LexerInterface!2982 List!18986 List!18984) Option!3731)

(assert (=> b!1726784 (= lt!661426 (maxPrefix!1536 thiss!24550 rules!3447 lt!661399))))

(assert (=> b!1726784 (isPrefix!1594 lt!661401 lt!661399)))

(declare-fun lt!661409 () Unit!32765)

(assert (=> b!1726784 (= lt!661409 (lemmaConcatTwoListThenFirstIsPrefix!1104 lt!661401 suffix!1421))))

(assert (=> b!1726784 (= lt!661399 (++!5178 lt!661401 suffix!1421))))

(declare-fun b!1726785 () Bool)

(declare-fun e!1104561 () Bool)

(declare-fun e!1104557 () Bool)

(assert (=> b!1726785 (= e!1104561 e!1104557)))

(declare-fun res!775156 () Bool)

(assert (=> b!1726785 (=> res!775156 e!1104557)))

(declare-fun lt!661394 () Int)

(declare-fun lt!661403 () BalanceConc!12526)

(declare-fun size!15027 (BalanceConc!12526) Int)

(assert (=> b!1726785 (= res!775156 (<= lt!661394 (size!15027 lt!661403)))))

(declare-fun lt!661423 () Regex!4681)

(declare-fun matchR!2155 (Regex!4681 List!18984) Bool)

(assert (=> b!1726785 (matchR!2155 lt!661423 lt!661401)))

(declare-fun lt!661410 () Unit!32765)

(declare-fun rule!422 () Rule!6506)

(declare-fun token!523 () Token!6272)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!102 (LexerInterface!2982 List!18986 List!18984 Token!6272 Rule!6506 List!18984) Unit!32765)

(assert (=> b!1726785 (= lt!661410 (lemmaMaxPrefixThenMatchesRulesRegex!102 thiss!24550 rules!3447 lt!661401 token!523 rule!422 Nil!18914))))

(declare-fun b!1726786 () Bool)

(declare-fun e!1104558 () Bool)

(declare-fun e!1104570 () Bool)

(declare-fun tp!492634 () Bool)

(declare-fun inv!21 (TokenValue!3443) Bool)

(assert (=> b!1726786 (= e!1104558 (and (inv!21 (value!105233 token!523)) e!1104570 tp!492634))))

(declare-fun b!1726787 () Bool)

(declare-fun e!1104563 () Bool)

(declare-fun tp!492628 () Bool)

(assert (=> b!1726787 (= e!1104563 (and e!1104578 tp!492628))))

(declare-fun b!1726788 () Bool)

(assert (=> b!1726788 (= e!1104572 e!1104577)))

(declare-fun res!775145 () Bool)

(assert (=> b!1726788 (=> (not res!775145) (not e!1104577))))

(assert (=> b!1726788 (= res!775145 (matchR!2155 (regex!3353 lt!661419) (list!7646 (charsOf!2002 (_1!10703 lt!661398)))))))

(declare-fun get!5625 (Option!3730) Rule!6506)

(assert (=> b!1726788 (= lt!661419 (get!5625 lt!661402))))

(declare-fun b!1726789 () Bool)

(declare-fun e!1104559 () Bool)

(assert (=> b!1726789 (= e!1104580 (not e!1104559))))

(declare-fun res!775146 () Bool)

(assert (=> b!1726789 (=> res!775146 e!1104559)))

(assert (=> b!1726789 (= res!775146 (not (matchR!2155 (regex!3353 rule!422) lt!661401)))))

(declare-fun ruleValid!852 (LexerInterface!2982 Rule!6506) Bool)

(assert (=> b!1726789 (ruleValid!852 thiss!24550 rule!422)))

(declare-fun lt!661422 () Unit!32765)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!376 (LexerInterface!2982 Rule!6506 List!18986) Unit!32765)

(assert (=> b!1726789 (= lt!661422 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!376 thiss!24550 rule!422 rules!3447))))

(declare-fun res!775160 () Bool)

(declare-fun e!1104568 () Bool)

(assert (=> start!169574 (=> (not res!775160) (not e!1104568))))

(get-info :version)

(assert (=> start!169574 (= res!775160 ((_ is Lexer!2980) thiss!24550))))

(assert (=> start!169574 e!1104568))

(declare-fun e!1104562 () Bool)

(assert (=> start!169574 e!1104562))

(declare-fun e!1104566 () Bool)

(assert (=> start!169574 e!1104566))

(assert (=> start!169574 true))

(declare-fun inv!24447 (Token!6272) Bool)

(assert (=> start!169574 (and (inv!24447 token!523) e!1104558)))

(assert (=> start!169574 e!1104563))

(declare-fun b!1726790 () Bool)

(declare-fun res!775148 () Bool)

(assert (=> b!1726790 (=> (not res!775148) (not e!1104568))))

(declare-fun contains!3375 (List!18986 Rule!6506) Bool)

(assert (=> b!1726790 (= res!775148 (contains!3375 rules!3447 rule!422))))

(declare-fun b!1726791 () Bool)

(declare-fun e!1104581 () Bool)

(assert (=> b!1726791 (= e!1104575 e!1104581)))

(declare-fun res!775149 () Bool)

(assert (=> b!1726791 (=> res!775149 e!1104581)))

(declare-fun lt!661406 () TokenValue!3443)

(assert (=> b!1726791 (= res!775149 (not (= lt!661426 (Some!3730 (tuple2!18603 (Token!6273 lt!661406 (rule!5319 (_1!10703 lt!661398)) lt!661394 lt!661400) (_2!10703 lt!661398))))))))

(assert (=> b!1726791 (= lt!661394 (size!15027 lt!661418))))

(declare-fun apply!5158 (TokenValueInjection!6546 BalanceConc!12526) TokenValue!3443)

(assert (=> b!1726791 (= lt!661406 (apply!5158 (transformation!3353 (rule!5319 (_1!10703 lt!661398))) lt!661418))))

(declare-fun lt!661416 () Unit!32765)

(declare-fun lemmaCharactersSize!425 (Token!6272) Unit!32765)

(assert (=> b!1726791 (= lt!661416 (lemmaCharactersSize!425 (_1!10703 lt!661398)))))

(declare-fun lt!661404 () Unit!32765)

(declare-fun lemmaEqSameImage!278 (TokenValueInjection!6546 BalanceConc!12526 BalanceConc!12526) Unit!32765)

(declare-fun seqFromList!2327 (List!18984) BalanceConc!12526)

(assert (=> b!1726791 (= lt!661404 (lemmaEqSameImage!278 (transformation!3353 (rule!5319 (_1!10703 lt!661398))) lt!661418 (seqFromList!2327 (originalCharacters!4167 (_1!10703 lt!661398)))))))

(declare-fun e!1104573 () Bool)

(assert (=> b!1726792 (= e!1104573 (and tp!492630 tp!492632))))

(declare-fun b!1726793 () Bool)

(declare-fun res!775158 () Bool)

(assert (=> b!1726793 (=> (not res!775158) (not e!1104568))))

(declare-fun rulesInvariant!2651 (LexerInterface!2982 List!18986) Bool)

(assert (=> b!1726793 (= res!775158 (rulesInvariant!2651 thiss!24550 rules!3447))))

(assert (=> b!1726794 (= e!1104579 e!1104564)))

(declare-fun res!775155 () Bool)

(assert (=> b!1726794 (=> res!775155 e!1104564)))

(declare-fun Forall!728 (Int) Bool)

(assert (=> b!1726794 (= res!775155 (not (Forall!728 lambda!69266)))))

(declare-fun lt!661396 () Unit!32765)

(declare-fun lemmaInv!560 (TokenValueInjection!6546) Unit!32765)

(assert (=> b!1726794 (= lt!661396 (lemmaInv!560 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))))))

(declare-fun b!1726795 () Bool)

(declare-fun e!1104571 () Bool)

(assert (=> b!1726795 (= e!1104568 e!1104571)))

(declare-fun res!775157 () Bool)

(assert (=> b!1726795 (=> (not res!775157) (not e!1104571))))

(declare-fun lt!661395 () Option!3731)

(declare-fun isDefined!3074 (Option!3731) Bool)

(assert (=> b!1726795 (= res!775157 (isDefined!3074 lt!661395))))

(assert (=> b!1726795 (= lt!661395 (maxPrefix!1536 thiss!24550 rules!3447 lt!661401))))

(assert (=> b!1726795 (= lt!661401 (list!7646 lt!661403))))

(assert (=> b!1726795 (= lt!661403 (charsOf!2002 token!523))))

(declare-fun b!1726796 () Bool)

(assert (=> b!1726796 (= e!1104571 e!1104580)))

(declare-fun res!775159 () Bool)

(assert (=> b!1726796 (=> (not res!775159) (not e!1104580))))

(assert (=> b!1726796 (= res!775159 (= (_1!10703 lt!661412) token!523))))

(assert (=> b!1726796 (= lt!661412 (get!5624 lt!661395))))

(declare-fun b!1726797 () Bool)

(declare-fun res!775153 () Bool)

(assert (=> b!1726797 (=> res!775153 e!1104579)))

(assert (=> b!1726797 (= res!775153 (not (matchR!2155 (regex!3353 (rule!5319 (_1!10703 lt!661398))) lt!661400)))))

(declare-fun b!1726798 () Bool)

(declare-fun res!775161 () Bool)

(assert (=> b!1726798 (=> (not res!775161) (not e!1104568))))

(declare-fun isEmpty!11898 (List!18986) Bool)

(assert (=> b!1726798 (= res!775161 (not (isEmpty!11898 rules!3447)))))

(declare-fun b!1726799 () Bool)

(assert (=> b!1726799 (= e!1104557 true)))

(declare-fun lt!661407 () Int)

(declare-fun size!15028 (List!18984) Int)

(assert (=> b!1726799 (= lt!661407 (size!15028 lt!661401))))

(declare-fun lt!661420 () Int)

(assert (=> b!1726799 (= lt!661420 (size!15028 lt!661399))))

(assert (=> b!1726799 (matchR!2155 lt!661423 lt!661400)))

(declare-fun lt!661425 () Unit!32765)

(assert (=> b!1726799 (= lt!661425 (lemmaMaxPrefixThenMatchesRulesRegex!102 thiss!24550 rules!3447 lt!661399 (_1!10703 lt!661398) (rule!5319 (_1!10703 lt!661398)) (_2!10703 lt!661398)))))

(declare-fun b!1726800 () Bool)

(declare-fun res!775163 () Bool)

(assert (=> b!1726800 (=> res!775163 e!1104575)))

(assert (=> b!1726800 (= res!775163 (not (= lt!661418 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (value!105233 (_1!10703 lt!661398))))))))

(declare-fun e!1104582 () Bool)

(assert (=> b!1726801 (= e!1104582 (and tp!492625 tp!492636))))

(declare-fun b!1726802 () Bool)

(declare-fun res!775152 () Bool)

(assert (=> b!1726802 (=> res!775152 e!1104559)))

(assert (=> b!1726802 (= res!775152 (isEmpty!11897 suffix!1421))))

(assert (=> b!1726803 (= e!1104560 (and tp!492633 tp!492629))))

(declare-fun tp!492631 () Bool)

(declare-fun b!1726804 () Bool)

(assert (=> b!1726804 (= e!1104570 (and tp!492631 (inv!24441 (tag!3673 (rule!5319 token!523))) (inv!24446 (transformation!3353 (rule!5319 token!523))) e!1104573))))

(declare-fun b!1726805 () Bool)

(declare-fun tp_is_empty!7605 () Bool)

(declare-fun tp!492626 () Bool)

(assert (=> b!1726805 (= e!1104562 (and tp_is_empty!7605 tp!492626))))

(declare-fun b!1726806 () Bool)

(declare-fun tp!492627 () Bool)

(assert (=> b!1726806 (= e!1104566 (and tp!492627 (inv!24441 (tag!3673 rule!422)) (inv!24446 (transformation!3353 rule!422)) e!1104582))))

(declare-fun b!1726807 () Bool)

(declare-fun res!775164 () Bool)

(assert (=> b!1726807 (=> (not res!775164) (not e!1104580))))

(assert (=> b!1726807 (= res!775164 (= (rule!5319 token!523) rule!422))))

(declare-fun b!1726808 () Bool)

(assert (=> b!1726808 (= e!1104559 e!1104565)))

(declare-fun res!775154 () Bool)

(assert (=> b!1726808 (=> res!775154 e!1104565)))

(declare-fun prefixMatch!566 (Regex!4681 List!18984) Bool)

(declare-fun head!3916 (List!18984) C!9536)

(assert (=> b!1726808 (= res!775154 (prefixMatch!566 lt!661423 (++!5178 lt!661401 (Cons!18914 (head!3916 suffix!1421) Nil!18914))))))

(declare-fun rulesRegex!711 (LexerInterface!2982 List!18986) Regex!4681)

(assert (=> b!1726808 (= lt!661423 (rulesRegex!711 thiss!24550 rules!3447))))

(declare-fun b!1726809 () Bool)

(assert (=> b!1726809 (= e!1104581 e!1104561)))

(declare-fun res!775162 () Bool)

(assert (=> b!1726809 (=> res!775162 e!1104561)))

(declare-fun lt!661414 () List!18984)

(declare-fun lt!661413 () Option!3731)

(assert (=> b!1726809 (= res!775162 (or (not (= lt!661414 (_2!10703 lt!661398))) (not (= lt!661413 (Some!3730 (tuple2!18603 (_1!10703 lt!661398) lt!661414))))))))

(assert (=> b!1726809 (= (_2!10703 lt!661398) lt!661414)))

(declare-fun lt!661417 () Unit!32765)

(declare-fun lemmaSamePrefixThenSameSuffix!738 (List!18984 List!18984 List!18984 List!18984 List!18984) Unit!32765)

(assert (=> b!1726809 (= lt!661417 (lemmaSamePrefixThenSameSuffix!738 lt!661400 (_2!10703 lt!661398) lt!661400 lt!661414 lt!661399))))

(declare-fun getSuffix!788 (List!18984 List!18984) List!18984)

(assert (=> b!1726809 (= lt!661414 (getSuffix!788 lt!661399 lt!661400))))

(declare-fun lt!661408 () TokenValue!3443)

(declare-fun lt!661415 () Int)

(assert (=> b!1726809 (= lt!661413 (Some!3730 (tuple2!18603 (Token!6273 lt!661408 (rule!5319 (_1!10703 lt!661398)) lt!661415 lt!661400) (_2!10703 lt!661398))))))

(declare-fun maxPrefixOneRule!912 (LexerInterface!2982 Rule!6506 List!18984) Option!3731)

(assert (=> b!1726809 (= lt!661413 (maxPrefixOneRule!912 thiss!24550 (rule!5319 (_1!10703 lt!661398)) lt!661399))))

(assert (=> b!1726809 (= lt!661415 (size!15028 lt!661400))))

(assert (=> b!1726809 (= lt!661408 (apply!5158 (transformation!3353 (rule!5319 (_1!10703 lt!661398))) (seqFromList!2327 lt!661400)))))

(declare-fun lt!661397 () Unit!32765)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!311 (LexerInterface!2982 List!18986 List!18984 List!18984 List!18984 Rule!6506) Unit!32765)

(assert (=> b!1726809 (= lt!661397 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!311 thiss!24550 rules!3447 lt!661400 lt!661399 (_2!10703 lt!661398) (rule!5319 (_1!10703 lt!661398))))))

(assert (= (and start!169574 res!775160) b!1726798))

(assert (= (and b!1726798 res!775161) b!1726793))

(assert (= (and b!1726793 res!775158) b!1726790))

(assert (= (and b!1726790 res!775148) b!1726795))

(assert (= (and b!1726795 res!775157) b!1726796))

(assert (= (and b!1726796 res!775159) b!1726780))

(assert (= (and b!1726780 res!775151) b!1726807))

(assert (= (and b!1726807 res!775164) b!1726789))

(assert (= (and b!1726789 (not res!775146)) b!1726802))

(assert (= (and b!1726802 (not res!775152)) b!1726808))

(assert (= (and b!1726808 (not res!775154)) b!1726784))

(assert (= (and b!1726784 res!775147) b!1726788))

(assert (= (and b!1726788 res!775145) b!1726781))

(assert (= (and b!1726784 (not res!775150)) b!1726797))

(assert (= (and b!1726797 (not res!775153)) b!1726794))

(assert (= (and b!1726794 (not res!775155)) b!1726783))

(assert (= (and b!1726783 (not res!775144)) b!1726800))

(assert (= (and b!1726800 (not res!775163)) b!1726791))

(assert (= (and b!1726791 (not res!775149)) b!1726809))

(assert (= (and b!1726809 (not res!775162)) b!1726785))

(assert (= (and b!1726785 (not res!775156)) b!1726799))

(assert (= (and start!169574 ((_ is Cons!18914) suffix!1421)) b!1726805))

(assert (= b!1726806 b!1726801))

(assert (= start!169574 b!1726806))

(assert (= b!1726804 b!1726792))

(assert (= b!1726786 b!1726804))

(assert (= start!169574 b!1726786))

(assert (= b!1726782 b!1726803))

(assert (= b!1726787 b!1726782))

(assert (= (and start!169574 ((_ is Cons!18916) rules!3447)) b!1726787))

(declare-fun b_lambda!54955 () Bool)

(assert (=> (not b_lambda!54955) (not b!1726783)))

(declare-fun t!160158 () Bool)

(declare-fun tb!102609 () Bool)

(assert (=> (and b!1726803 (= (toChars!4719 (transformation!3353 (h!24317 rules!3447))) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160158) tb!102609))

(declare-fun b!1726825 () Bool)

(declare-fun e!1104594 () Bool)

(declare-fun tp!492639 () Bool)

(declare-fun inv!24448 (Conc!6291) Bool)

(assert (=> b!1726825 (= e!1104594 (and (inv!24448 (c!282331 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (dynLambda!8766 (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) lt!661418)))) tp!492639))))

(declare-fun result!123356 () Bool)

(declare-fun inv!24449 (BalanceConc!12526) Bool)

(assert (=> tb!102609 (= result!123356 (and (inv!24449 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (dynLambda!8766 (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) lt!661418))) e!1104594))))

(assert (= tb!102609 b!1726825))

(declare-fun m!2133683 () Bool)

(assert (=> b!1726825 m!2133683))

(declare-fun m!2133685 () Bool)

(assert (=> tb!102609 m!2133685))

(assert (=> b!1726783 t!160158))

(declare-fun b_and!126771 () Bool)

(assert (= b_and!126761 (and (=> t!160158 result!123356) b_and!126771)))

(declare-fun tb!102611 () Bool)

(declare-fun t!160160 () Bool)

(assert (=> (and b!1726792 (= (toChars!4719 (transformation!3353 (rule!5319 token!523))) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160160) tb!102611))

(declare-fun result!123360 () Bool)

(assert (= result!123360 result!123356))

(assert (=> b!1726783 t!160160))

(declare-fun b_and!126773 () Bool)

(assert (= b_and!126765 (and (=> t!160160 result!123360) b_and!126773)))

(declare-fun tb!102613 () Bool)

(declare-fun t!160162 () Bool)

(assert (=> (and b!1726801 (= (toChars!4719 (transformation!3353 rule!422)) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160162) tb!102613))

(declare-fun result!123362 () Bool)

(assert (= result!123362 result!123356))

(assert (=> b!1726783 t!160162))

(declare-fun b_and!126775 () Bool)

(assert (= b_and!126769 (and (=> t!160162 result!123362) b_and!126775)))

(declare-fun b_lambda!54957 () Bool)

(assert (=> (not b_lambda!54957) (not b!1726783)))

(declare-fun tb!102615 () Bool)

(declare-fun t!160164 () Bool)

(assert (=> (and b!1726803 (= (toValue!4860 (transformation!3353 (h!24317 rules!3447))) (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160164) tb!102615))

(declare-fun result!123364 () Bool)

(assert (=> tb!102615 (= result!123364 (inv!21 (dynLambda!8766 (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) lt!661418)))))

(declare-fun m!2133687 () Bool)

(assert (=> tb!102615 m!2133687))

(assert (=> b!1726783 t!160164))

(declare-fun b_and!126777 () Bool)

(assert (= b_and!126759 (and (=> t!160164 result!123364) b_and!126777)))

(declare-fun t!160166 () Bool)

(declare-fun tb!102617 () Bool)

(assert (=> (and b!1726792 (= (toValue!4860 (transformation!3353 (rule!5319 token!523))) (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160166) tb!102617))

(declare-fun result!123368 () Bool)

(assert (= result!123368 result!123364))

(assert (=> b!1726783 t!160166))

(declare-fun b_and!126779 () Bool)

(assert (= b_and!126763 (and (=> t!160166 result!123368) b_and!126779)))

(declare-fun t!160168 () Bool)

(declare-fun tb!102619 () Bool)

(assert (=> (and b!1726801 (= (toValue!4860 (transformation!3353 rule!422)) (toValue!4860 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160168) tb!102619))

(declare-fun result!123370 () Bool)

(assert (= result!123370 result!123364))

(assert (=> b!1726783 t!160168))

(declare-fun b_and!126781 () Bool)

(assert (= b_and!126767 (and (=> t!160168 result!123370) b_and!126781)))

(declare-fun b_lambda!54959 () Bool)

(assert (=> (not b_lambda!54959) (not b!1726800)))

(declare-fun t!160170 () Bool)

(declare-fun tb!102621 () Bool)

(assert (=> (and b!1726803 (= (toChars!4719 (transformation!3353 (h!24317 rules!3447))) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160170) tb!102621))

(declare-fun b!1726828 () Bool)

(declare-fun e!1104598 () Bool)

(declare-fun tp!492640 () Bool)

(assert (=> b!1726828 (= e!1104598 (and (inv!24448 (c!282331 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (value!105233 (_1!10703 lt!661398))))) tp!492640))))

(declare-fun result!123372 () Bool)

(assert (=> tb!102621 (= result!123372 (and (inv!24449 (dynLambda!8765 (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398)))) (value!105233 (_1!10703 lt!661398)))) e!1104598))))

(assert (= tb!102621 b!1726828))

(declare-fun m!2133689 () Bool)

(assert (=> b!1726828 m!2133689))

(declare-fun m!2133691 () Bool)

(assert (=> tb!102621 m!2133691))

(assert (=> b!1726800 t!160170))

(declare-fun b_and!126783 () Bool)

(assert (= b_and!126771 (and (=> t!160170 result!123372) b_and!126783)))

(declare-fun t!160172 () Bool)

(declare-fun tb!102623 () Bool)

(assert (=> (and b!1726792 (= (toChars!4719 (transformation!3353 (rule!5319 token!523))) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160172) tb!102623))

(declare-fun result!123374 () Bool)

(assert (= result!123374 result!123372))

(assert (=> b!1726800 t!160172))

(declare-fun b_and!126785 () Bool)

(assert (= b_and!126773 (and (=> t!160172 result!123374) b_and!126785)))

(declare-fun tb!102625 () Bool)

(declare-fun t!160174 () Bool)

(assert (=> (and b!1726801 (= (toChars!4719 (transformation!3353 rule!422)) (toChars!4719 (transformation!3353 (rule!5319 (_1!10703 lt!661398))))) t!160174) tb!102625))

(declare-fun result!123376 () Bool)

(assert (= result!123376 result!123372))

(assert (=> b!1726800 t!160174))

(declare-fun b_and!126787 () Bool)

(assert (= b_and!126775 (and (=> t!160174 result!123376) b_and!126787)))

(declare-fun m!2133693 () Bool)

(assert (=> b!1726794 m!2133693))

(declare-fun m!2133695 () Bool)

(assert (=> b!1726794 m!2133695))

(declare-fun m!2133697 () Bool)

(assert (=> b!1726798 m!2133697))

(declare-fun m!2133699 () Bool)

(assert (=> b!1726797 m!2133699))

(declare-fun m!2133701 () Bool)

(assert (=> start!169574 m!2133701))

(declare-fun m!2133703 () Bool)

(assert (=> b!1726809 m!2133703))

(declare-fun m!2133705 () Bool)

(assert (=> b!1726809 m!2133705))

(declare-fun m!2133707 () Bool)

(assert (=> b!1726809 m!2133707))

(declare-fun m!2133709 () Bool)

(assert (=> b!1726809 m!2133709))

(declare-fun m!2133711 () Bool)

(assert (=> b!1726809 m!2133711))

(declare-fun m!2133713 () Bool)

(assert (=> b!1726809 m!2133713))

(declare-fun m!2133715 () Bool)

(assert (=> b!1726809 m!2133715))

(assert (=> b!1726809 m!2133707))

(declare-fun m!2133717 () Bool)

(assert (=> b!1726808 m!2133717))

(declare-fun m!2133719 () Bool)

(assert (=> b!1726808 m!2133719))

(assert (=> b!1726808 m!2133719))

(declare-fun m!2133721 () Bool)

(assert (=> b!1726808 m!2133721))

(declare-fun m!2133723 () Bool)

(assert (=> b!1726808 m!2133723))

(declare-fun m!2133725 () Bool)

(assert (=> b!1726788 m!2133725))

(assert (=> b!1726788 m!2133725))

(declare-fun m!2133727 () Bool)

(assert (=> b!1726788 m!2133727))

(assert (=> b!1726788 m!2133727))

(declare-fun m!2133729 () Bool)

(assert (=> b!1726788 m!2133729))

(declare-fun m!2133731 () Bool)

(assert (=> b!1726788 m!2133731))

(declare-fun m!2133733 () Bool)

(assert (=> b!1726795 m!2133733))

(declare-fun m!2133735 () Bool)

(assert (=> b!1726795 m!2133735))

(declare-fun m!2133737 () Bool)

(assert (=> b!1726795 m!2133737))

(declare-fun m!2133739 () Bool)

(assert (=> b!1726795 m!2133739))

(declare-fun m!2133741 () Bool)

(assert (=> b!1726782 m!2133741))

(declare-fun m!2133743 () Bool)

(assert (=> b!1726782 m!2133743))

(declare-fun m!2133745 () Bool)

(assert (=> b!1726790 m!2133745))

(declare-fun m!2133747 () Bool)

(assert (=> b!1726799 m!2133747))

(declare-fun m!2133749 () Bool)

(assert (=> b!1726799 m!2133749))

(declare-fun m!2133751 () Bool)

(assert (=> b!1726799 m!2133751))

(declare-fun m!2133753 () Bool)

(assert (=> b!1726799 m!2133753))

(declare-fun m!2133755 () Bool)

(assert (=> b!1726806 m!2133755))

(declare-fun m!2133757 () Bool)

(assert (=> b!1726806 m!2133757))

(declare-fun m!2133759 () Bool)

(assert (=> b!1726796 m!2133759))

(declare-fun m!2133761 () Bool)

(assert (=> b!1726793 m!2133761))

(declare-fun m!2133763 () Bool)

(assert (=> b!1726789 m!2133763))

(declare-fun m!2133765 () Bool)

(assert (=> b!1726789 m!2133765))

(declare-fun m!2133767 () Bool)

(assert (=> b!1726789 m!2133767))

(declare-fun m!2133769 () Bool)

(assert (=> b!1726784 m!2133769))

(declare-fun m!2133771 () Bool)

(assert (=> b!1726784 m!2133771))

(declare-fun m!2133773 () Bool)

(assert (=> b!1726784 m!2133773))

(declare-fun m!2133775 () Bool)

(assert (=> b!1726784 m!2133775))

(declare-fun m!2133777 () Bool)

(assert (=> b!1726784 m!2133777))

(declare-fun m!2133779 () Bool)

(assert (=> b!1726784 m!2133779))

(declare-fun m!2133781 () Bool)

(assert (=> b!1726784 m!2133781))

(declare-fun m!2133783 () Bool)

(assert (=> b!1726784 m!2133783))

(assert (=> b!1726784 m!2133769))

(declare-fun m!2133785 () Bool)

(assert (=> b!1726784 m!2133785))

(declare-fun m!2133787 () Bool)

(assert (=> b!1726784 m!2133787))

(declare-fun m!2133789 () Bool)

(assert (=> b!1726784 m!2133789))

(declare-fun m!2133791 () Bool)

(assert (=> b!1726784 m!2133791))

(declare-fun m!2133793 () Bool)

(assert (=> b!1726784 m!2133793))

(assert (=> b!1726784 m!2133725))

(declare-fun m!2133795 () Bool)

(assert (=> b!1726784 m!2133795))

(declare-fun m!2133797 () Bool)

(assert (=> b!1726804 m!2133797))

(declare-fun m!2133799 () Bool)

(assert (=> b!1726804 m!2133799))

(declare-fun m!2133801 () Bool)

(assert (=> b!1726783 m!2133801))

(assert (=> b!1726783 m!2133801))

(declare-fun m!2133803 () Bool)

(assert (=> b!1726783 m!2133803))

(assert (=> b!1726783 m!2133803))

(declare-fun m!2133805 () Bool)

(assert (=> b!1726783 m!2133805))

(declare-fun m!2133807 () Bool)

(assert (=> b!1726783 m!2133807))

(declare-fun m!2133809 () Bool)

(assert (=> b!1726780 m!2133809))

(declare-fun m!2133811 () Bool)

(assert (=> b!1726791 m!2133811))

(declare-fun m!2133813 () Bool)

(assert (=> b!1726791 m!2133813))

(declare-fun m!2133815 () Bool)

(assert (=> b!1726791 m!2133815))

(declare-fun m!2133817 () Bool)

(assert (=> b!1726791 m!2133817))

(assert (=> b!1726791 m!2133811))

(declare-fun m!2133819 () Bool)

(assert (=> b!1726791 m!2133819))

(declare-fun m!2133821 () Bool)

(assert (=> b!1726785 m!2133821))

(declare-fun m!2133823 () Bool)

(assert (=> b!1726785 m!2133823))

(declare-fun m!2133825 () Bool)

(assert (=> b!1726785 m!2133825))

(declare-fun m!2133827 () Bool)

(assert (=> b!1726786 m!2133827))

(declare-fun m!2133829 () Bool)

(assert (=> b!1726802 m!2133829))

(declare-fun m!2133831 () Bool)

(assert (=> b!1726800 m!2133831))

(check-sat b_and!126781 (not b!1726782) b_and!126777 (not b!1726786) (not b!1726788) (not b!1726825) (not b!1726793) b_and!126787 b_and!126785 (not b!1726790) tp_is_empty!7605 (not b_next!47853) (not b!1726794) (not b!1726785) (not b!1726799) (not b!1726789) b_and!126779 (not b!1726828) (not b_next!47849) b_and!126783 (not b!1726805) (not tb!102615) (not b!1726802) (not b!1726783) (not b!1726797) (not b!1726809) (not b_next!47847) (not b!1726798) (not b!1726787) (not b_lambda!54955) (not tb!102609) (not b!1726796) (not start!169574) (not b_next!47843) (not b_lambda!54959) (not b!1726808) (not b_next!47845) (not b_next!47851) (not b!1726791) (not b!1726804) (not b!1726806) (not tb!102621) (not b!1726780) (not b!1726784) (not b!1726795) (not b_lambda!54957))
(check-sat (not b_next!47853) b_and!126781 b_and!126777 b_and!126787 (not b_next!47847) b_and!126785 (not b_next!47843) b_and!126779 (not b_next!47849) b_and!126783 (not b_next!47845) (not b_next!47851))
