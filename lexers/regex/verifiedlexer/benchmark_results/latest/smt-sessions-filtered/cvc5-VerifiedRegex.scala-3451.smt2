; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!198306 () Bool)

(assert start!198306)

(declare-fun b!2015503 () Bool)

(declare-fun b_free!56301 () Bool)

(declare-fun b_next!57005 () Bool)

(assert (=> b!2015503 (= b_free!56301 (not b_next!57005))))

(declare-fun tp!600761 () Bool)

(declare-fun b_and!159617 () Bool)

(assert (=> b!2015503 (= tp!600761 b_and!159617)))

(declare-fun b_free!56303 () Bool)

(declare-fun b_next!57007 () Bool)

(assert (=> b!2015503 (= b_free!56303 (not b_next!57007))))

(declare-fun tp!600760 () Bool)

(declare-fun b_and!159619 () Bool)

(assert (=> b!2015503 (= tp!600760 b_and!159619)))

(declare-fun b!2015515 () Bool)

(declare-fun b_free!56305 () Bool)

(declare-fun b_next!57009 () Bool)

(assert (=> b!2015515 (= b_free!56305 (not b_next!57009))))

(declare-fun tp!600768 () Bool)

(declare-fun b_and!159621 () Bool)

(assert (=> b!2015515 (= tp!600768 b_and!159621)))

(declare-fun b_free!56307 () Bool)

(declare-fun b_next!57011 () Bool)

(assert (=> b!2015515 (= b_free!56307 (not b_next!57011))))

(declare-fun tp!600759 () Bool)

(declare-fun b_and!159623 () Bool)

(assert (=> b!2015515 (= tp!600759 b_and!159623)))

(declare-fun b!2015508 () Bool)

(declare-fun b_free!56309 () Bool)

(declare-fun b_next!57013 () Bool)

(assert (=> b!2015508 (= b_free!56309 (not b_next!57013))))

(declare-fun tp!600767 () Bool)

(declare-fun b_and!159625 () Bool)

(assert (=> b!2015508 (= tp!600767 b_and!159625)))

(declare-fun b_free!56311 () Bool)

(declare-fun b_next!57015 () Bool)

(assert (=> b!2015508 (= b_free!56311 (not b_next!57015))))

(declare-fun tp!600758 () Bool)

(declare-fun b_and!159627 () Bool)

(assert (=> b!2015508 (= tp!600758 b_and!159627)))

(declare-fun b!2015490 () Bool)

(declare-fun e!1273654 () Bool)

(declare-fun tp!600766 () Bool)

(declare-fun e!1273660 () Bool)

(declare-datatypes ((List!22222 0))(
  ( (Nil!22140) (Cons!22140 (h!27541 (_ BitVec 16)) (t!188275 List!22222)) )
))
(declare-datatypes ((TokenValue!4113 0))(
  ( (FloatLiteralValue!8226 (text!29236 List!22222)) (TokenValueExt!4112 (__x!13724 Int)) (Broken!20565 (value!124911 List!22222)) (Object!4194) (End!4113) (Def!4113) (Underscore!4113) (Match!4113) (Else!4113) (Error!4113) (Case!4113) (If!4113) (Extends!4113) (Abstract!4113) (Class!4113) (Val!4113) (DelimiterValue!8226 (del!4173 List!22222)) (KeywordValue!4119 (value!124912 List!22222)) (CommentValue!8226 (value!124913 List!22222)) (WhitespaceValue!8226 (value!124914 List!22222)) (IndentationValue!4113 (value!124915 List!22222)) (String!25684) (Int32!4113) (Broken!20566 (value!124916 List!22222)) (Boolean!4114) (Unit!36730) (OperatorValue!4116 (op!4173 List!22222)) (IdentifierValue!8226 (value!124917 List!22222)) (IdentifierValue!8227 (value!124918 List!22222)) (WhitespaceValue!8227 (value!124919 List!22222)) (True!8226) (False!8226) (Broken!20567 (value!124920 List!22222)) (Broken!20568 (value!124921 List!22222)) (True!8227) (RightBrace!4113) (RightBracket!4113) (Colon!4113) (Null!4113) (Comma!4113) (LeftBracket!4113) (False!8227) (LeftBrace!4113) (ImaginaryLiteralValue!4113 (text!29237 List!22222)) (StringLiteralValue!12339 (value!124922 List!22222)) (EOFValue!4113 (value!124923 List!22222)) (IdentValue!4113 (value!124924 List!22222)) (DelimiterValue!8227 (value!124925 List!22222)) (DedentValue!4113 (value!124926 List!22222)) (NewLineValue!4113 (value!124927 List!22222)) (IntegerValue!12339 (value!124928 (_ BitVec 32)) (text!29238 List!22222)) (IntegerValue!12340 (value!124929 Int) (text!29239 List!22222)) (Times!4113) (Or!4113) (Equal!4113) (Minus!4113) (Broken!20569 (value!124930 List!22222)) (And!4113) (Div!4113) (LessEqual!4113) (Mod!4113) (Concat!9515) (Not!4113) (Plus!4113) (SpaceValue!4113 (value!124931 List!22222)) (IntegerValue!12341 (value!124932 Int) (text!29240 List!22222)) (StringLiteralValue!12340 (text!29241 List!22222)) (FloatLiteralValue!8227 (text!29242 List!22222)) (BytesLiteralValue!4113 (value!124933 List!22222)) (CommentValue!8227 (value!124934 List!22222)) (StringLiteralValue!12341 (value!124935 List!22222)) (ErrorTokenValue!4113 (msg!4174 List!22222)) )
))
(declare-datatypes ((C!10950 0))(
  ( (C!10951 (val!6427 Int)) )
))
(declare-datatypes ((List!22223 0))(
  ( (Nil!22141) (Cons!22141 (h!27542 C!10950) (t!188276 List!22223)) )
))
(declare-datatypes ((Regex!5402 0))(
  ( (ElementMatch!5402 (c!325569 C!10950)) (Concat!9516 (regOne!11316 Regex!5402) (regTwo!11316 Regex!5402)) (EmptyExpr!5402) (Star!5402 (reg!5731 Regex!5402)) (EmptyLang!5402) (Union!5402 (regOne!11317 Regex!5402) (regTwo!11317 Regex!5402)) )
))
(declare-datatypes ((String!25685 0))(
  ( (String!25686 (value!124936 String)) )
))
(declare-datatypes ((IArray!14805 0))(
  ( (IArray!14806 (innerList!7460 List!22223)) )
))
(declare-datatypes ((Conc!7400 0))(
  ( (Node!7400 (left!17615 Conc!7400) (right!17945 Conc!7400) (csize!15030 Int) (cheight!7611 Int)) (Leaf!10852 (xs!10298 IArray!14805) (csize!15031 Int)) (Empty!7400) )
))
(declare-datatypes ((BalanceConc!14616 0))(
  ( (BalanceConc!14617 (c!325570 Conc!7400)) )
))
(declare-datatypes ((TokenValueInjection!7810 0))(
  ( (TokenValueInjection!7811 (toValue!5646 Int) (toChars!5505 Int)) )
))
(declare-datatypes ((Rule!7754 0))(
  ( (Rule!7755 (regex!3977 Regex!5402) (tag!4453 String!25685) (isSeparator!3977 Bool) (transformation!3977 TokenValueInjection!7810)) )
))
(declare-datatypes ((Token!7506 0))(
  ( (Token!7507 (value!124937 TokenValue!4113) (rule!6204 Rule!7754) (size!17297 Int) (originalCharacters!4784 List!22223)) )
))
(declare-datatypes ((List!22224 0))(
  ( (Nil!22142) (Cons!22142 (h!27543 Token!7506) (t!188277 List!22224)) )
))
(declare-fun tokens!598 () List!22224)

(declare-fun inv!29307 (String!25685) Bool)

(declare-fun inv!29310 (TokenValueInjection!7810) Bool)

(assert (=> b!2015490 (= e!1273654 (and tp!600766 (inv!29307 (tag!4453 (rule!6204 (h!27543 tokens!598)))) (inv!29310 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) e!1273660))))

(declare-fun b!2015491 () Bool)

(declare-fun res!884109 () Bool)

(declare-fun e!1273673 () Bool)

(assert (=> b!2015491 (=> (not res!884109) (not e!1273673))))

(assert (=> b!2015491 (= res!884109 (is-Cons!22142 tokens!598))))

(declare-fun b!2015492 () Bool)

(declare-fun res!884095 () Bool)

(assert (=> b!2015492 (=> (not res!884095) (not e!1273673))))

(declare-fun separatorToken!354 () Token!7506)

(declare-datatypes ((List!22225 0))(
  ( (Nil!22143) (Cons!22143 (h!27544 Rule!7754) (t!188278 List!22225)) )
))
(declare-fun rules!3198 () List!22225)

(declare-datatypes ((LexerInterface!3590 0))(
  ( (LexerInterfaceExt!3587 (__x!13725 Int)) (Lexer!3588) )
))
(declare-fun thiss!23328 () LexerInterface!3590)

(declare-fun rulesProduceIndividualToken!1762 (LexerInterface!3590 List!22225 Token!7506) Bool)

(assert (=> b!2015492 (= res!884095 (rulesProduceIndividualToken!1762 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun e!1273665 () Bool)

(declare-fun e!1273652 () Bool)

(declare-fun b!2015493 () Bool)

(declare-fun tp!600764 () Bool)

(declare-fun inv!29311 (Token!7506) Bool)

(assert (=> b!2015493 (= e!1273665 (and (inv!29311 (h!27543 tokens!598)) e!1273652 tp!600764))))

(declare-fun b!2015494 () Bool)

(declare-fun e!1273664 () Bool)

(assert (=> b!2015494 (= e!1273664 (not (isSeparator!3977 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun b!2015495 () Bool)

(declare-fun e!1273656 () Bool)

(assert (=> b!2015495 (= e!1273656 false)))

(declare-fun b!2015496 () Bool)

(declare-fun res!884093 () Bool)

(assert (=> b!2015496 (=> res!884093 e!1273664)))

(declare-fun lt!756823 () List!22223)

(declare-datatypes ((IArray!14807 0))(
  ( (IArray!14808 (innerList!7461 List!22224)) )
))
(declare-datatypes ((Conc!7401 0))(
  ( (Node!7401 (left!17616 Conc!7401) (right!17946 Conc!7401) (csize!15032 Int) (cheight!7612 Int)) (Leaf!10853 (xs!10299 IArray!14807) (csize!15033 Int)) (Empty!7401) )
))
(declare-datatypes ((BalanceConc!14618 0))(
  ( (BalanceConc!14619 (c!325571 Conc!7401)) )
))
(declare-fun isEmpty!13761 (BalanceConc!14618) Bool)

(declare-datatypes ((tuple2!20804 0))(
  ( (tuple2!20805 (_1!11871 BalanceConc!14618) (_2!11871 BalanceConc!14616)) )
))
(declare-fun lex!1606 (LexerInterface!3590 List!22225 BalanceConc!14616) tuple2!20804)

(declare-fun seqFromList!2831 (List!22223) BalanceConc!14616)

(assert (=> b!2015496 (= res!884093 (isEmpty!13761 (_1!11871 (lex!1606 thiss!23328 rules!3198 (seqFromList!2831 lt!756823)))))))

(declare-fun b!2015497 () Bool)

(declare-fun e!1273669 () Bool)

(assert (=> b!2015497 (= e!1273669 e!1273664)))

(declare-fun res!884101 () Bool)

(assert (=> b!2015497 (=> res!884101 e!1273664)))

(declare-fun lt!756818 () List!22223)

(declare-fun lt!756833 () List!22223)

(assert (=> b!2015497 (= res!884101 (or (not (= lt!756833 lt!756818)) (not (= lt!756818 lt!756823)) (not (= lt!756833 lt!756823))))))

(declare-fun printList!1109 (LexerInterface!3590 List!22224) List!22223)

(assert (=> b!2015497 (= lt!756818 (printList!1109 thiss!23328 (Cons!22142 (h!27543 tokens!598) Nil!22142)))))

(declare-fun lt!756825 () BalanceConc!14616)

(declare-fun list!9026 (BalanceConc!14616) List!22223)

(assert (=> b!2015497 (= lt!756833 (list!9026 lt!756825))))

(declare-fun lt!756835 () BalanceConc!14618)

(declare-fun printTailRec!1058 (LexerInterface!3590 BalanceConc!14618 Int BalanceConc!14616) BalanceConc!14616)

(assert (=> b!2015497 (= lt!756825 (printTailRec!1058 thiss!23328 lt!756835 0 (BalanceConc!14617 Empty!7400)))))

(declare-fun print!1552 (LexerInterface!3590 BalanceConc!14618) BalanceConc!14616)

(assert (=> b!2015497 (= lt!756825 (print!1552 thiss!23328 lt!756835))))

(declare-fun singletonSeq!1953 (Token!7506) BalanceConc!14618)

(assert (=> b!2015497 (= lt!756835 (singletonSeq!1953 (h!27543 tokens!598)))))

(declare-fun lt!756829 () C!10950)

(declare-fun contains!4065 (List!22223 C!10950) Bool)

(declare-fun usedCharacters!415 (Regex!5402) List!22223)

(assert (=> b!2015497 (not (contains!4065 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598)))) lt!756829))))

(declare-datatypes ((Unit!36731 0))(
  ( (Unit!36732) )
))
(declare-fun lt!756831 () Unit!36731)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!87 (LexerInterface!3590 List!22225 List!22225 Rule!7754 Rule!7754 C!10950) Unit!36731)

(assert (=> b!2015497 (= lt!756831 (lemmaNonSepRuleNotContainsCharContainedInASepRule!87 thiss!23328 rules!3198 rules!3198 (rule!6204 (h!27543 tokens!598)) (rule!6204 separatorToken!354) lt!756829))))

(declare-fun lt!756822 () Unit!36731)

(declare-fun e!1273651 () Unit!36731)

(assert (=> b!2015497 (= lt!756822 e!1273651)))

(declare-fun c!325568 () Bool)

(assert (=> b!2015497 (= c!325568 (not (contains!4065 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354))) lt!756829)))))

(declare-fun lt!756827 () List!22223)

(declare-fun head!4559 (List!22223) C!10950)

(assert (=> b!2015497 (= lt!756829 (head!4559 lt!756827))))

(declare-fun lt!756821 () List!22223)

(declare-fun ++!5976 (List!22223 List!22223) List!22223)

(assert (=> b!2015497 (= (++!5976 (++!5976 lt!756823 lt!756827) lt!756821) (++!5976 lt!756823 (++!5976 lt!756827 lt!756821)))))

(declare-fun lt!756832 () Unit!36731)

(declare-fun lemmaConcatAssociativity!1240 (List!22223 List!22223 List!22223) Unit!36731)

(assert (=> b!2015497 (= lt!756832 (lemmaConcatAssociativity!1240 lt!756823 lt!756827 lt!756821))))

(declare-fun b!2015498 () Bool)

(declare-fun e!1273653 () Bool)

(declare-fun lt!756824 () Rule!7754)

(assert (=> b!2015498 (= e!1273653 (= (rule!6204 separatorToken!354) lt!756824))))

(declare-fun tp!600757 () Bool)

(declare-fun b!2015499 () Bool)

(declare-fun inv!21 (TokenValue!4113) Bool)

(assert (=> b!2015499 (= e!1273652 (and (inv!21 (value!124937 (h!27543 tokens!598))) e!1273654 tp!600757))))

(declare-fun tp!600769 () Bool)

(declare-fun e!1273662 () Bool)

(declare-fun b!2015500 () Bool)

(declare-fun e!1273666 () Bool)

(assert (=> b!2015500 (= e!1273666 (and tp!600769 (inv!29307 (tag!4453 (rule!6204 separatorToken!354))) (inv!29310 (transformation!3977 (rule!6204 separatorToken!354))) e!1273662))))

(declare-fun b!2015501 () Bool)

(declare-fun res!884094 () Bool)

(assert (=> b!2015501 (=> (not res!884094) (not e!1273673))))

(declare-fun rulesProduceEachTokenIndividuallyList!1321 (LexerInterface!3590 List!22225 List!22224) Bool)

(assert (=> b!2015501 (= res!884094 (rulesProduceEachTokenIndividuallyList!1321 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2015502 () Bool)

(declare-fun res!884103 () Bool)

(assert (=> b!2015502 (=> (not res!884103) (not e!1273673))))

(declare-fun sepAndNonSepRulesDisjointChars!1075 (List!22225 List!22225) Bool)

(assert (=> b!2015502 (= res!884103 (sepAndNonSepRulesDisjointChars!1075 rules!3198 rules!3198))))

(declare-fun e!1273659 () Bool)

(assert (=> b!2015503 (= e!1273659 (and tp!600761 tp!600760))))

(declare-fun b!2015504 () Bool)

(declare-fun res!884091 () Bool)

(assert (=> b!2015504 (=> res!884091 e!1273664)))

(declare-fun contains!4066 (List!22225 Rule!7754) Bool)

(assert (=> b!2015504 (= res!884091 (not (contains!4066 rules!3198 (rule!6204 separatorToken!354))))))

(declare-fun b!2015505 () Bool)

(declare-fun e!1273668 () Bool)

(declare-fun e!1273672 () Bool)

(declare-fun tp!600763 () Bool)

(assert (=> b!2015505 (= e!1273668 (and e!1273672 tp!600763))))

(declare-fun b!2015489 () Bool)

(declare-fun res!884097 () Bool)

(assert (=> b!2015489 (=> res!884097 e!1273664)))

(assert (=> b!2015489 (= res!884097 (not (rulesProduceIndividualToken!1762 thiss!23328 rules!3198 (h!27543 tokens!598))))))

(declare-fun res!884105 () Bool)

(assert (=> start!198306 (=> (not res!884105) (not e!1273673))))

(assert (=> start!198306 (= res!884105 (is-Lexer!3588 thiss!23328))))

(assert (=> start!198306 e!1273673))

(assert (=> start!198306 true))

(assert (=> start!198306 e!1273668))

(assert (=> start!198306 e!1273665))

(declare-fun e!1273663 () Bool)

(assert (=> start!198306 (and (inv!29311 separatorToken!354) e!1273663)))

(declare-fun b!2015506 () Bool)

(declare-fun e!1273649 () Bool)

(assert (=> b!2015506 (= e!1273649 e!1273653)))

(declare-fun res!884106 () Bool)

(assert (=> b!2015506 (=> (not res!884106) (not e!1273653))))

(declare-fun matchR!2668 (Regex!5402 List!22223) Bool)

(assert (=> b!2015506 (= res!884106 (matchR!2668 (regex!3977 lt!756824) lt!756827))))

(declare-datatypes ((Option!4635 0))(
  ( (None!4634) (Some!4634 (v!26907 Rule!7754)) )
))
(declare-fun lt!756819 () Option!4635)

(declare-fun get!7015 (Option!4635) Rule!7754)

(assert (=> b!2015506 (= lt!756824 (get!7015 lt!756819))))

(declare-fun b!2015507 () Bool)

(declare-fun res!884099 () Bool)

(assert (=> b!2015507 (=> (not res!884099) (not e!1273673))))

(declare-fun rulesInvariant!3197 (LexerInterface!3590 List!22225) Bool)

(assert (=> b!2015507 (= res!884099 (rulesInvariant!3197 thiss!23328 rules!3198))))

(assert (=> b!2015508 (= e!1273660 (and tp!600767 tp!600758))))

(declare-fun b!2015509 () Bool)

(declare-fun tp!600762 () Bool)

(assert (=> b!2015509 (= e!1273663 (and (inv!21 (value!124937 separatorToken!354)) e!1273666 tp!600762))))

(declare-fun b!2015510 () Bool)

(declare-fun res!884104 () Bool)

(assert (=> b!2015510 (=> (not res!884104) (not e!1273673))))

(declare-fun lambda!76252 () Int)

(declare-fun forall!4705 (List!22224 Int) Bool)

(assert (=> b!2015510 (= res!884104 (forall!4705 tokens!598 lambda!76252))))

(declare-fun b!2015511 () Bool)

(declare-fun e!1273667 () Bool)

(declare-datatypes ((tuple2!20806 0))(
  ( (tuple2!20807 (_1!11872 Token!7506) (_2!11872 List!22223)) )
))
(declare-datatypes ((Option!4636 0))(
  ( (None!4635) (Some!4635 (v!26908 tuple2!20806)) )
))
(declare-fun lt!756837 () Option!4636)

(declare-fun get!7016 (Option!4636) tuple2!20806)

(assert (=> b!2015511 (= e!1273667 (= (_1!11872 (get!7016 lt!756837)) (h!27543 tokens!598)))))

(declare-fun b!2015512 () Bool)

(assert (=> b!2015512 (= e!1273673 (not e!1273669))))

(declare-fun res!884096 () Bool)

(assert (=> b!2015512 (=> res!884096 e!1273669)))

(declare-fun lt!756820 () Option!4636)

(declare-fun lt!756838 () Bool)

(assert (=> b!2015512 (= res!884096 (or (and (not lt!756838) (= (_1!11872 (v!26908 lt!756820)) (h!27543 tokens!598))) lt!756838 (= (_1!11872 (v!26908 lt!756820)) (h!27543 tokens!598))))))

(assert (=> b!2015512 (= lt!756838 (not (is-Some!4635 lt!756820)))))

(declare-fun maxPrefix!2026 (LexerInterface!3590 List!22225 List!22223) Option!4636)

(assert (=> b!2015512 (= lt!756820 (maxPrefix!2026 thiss!23328 rules!3198 (++!5976 lt!756823 lt!756821)))))

(declare-fun printWithSeparatorTokenWhenNeededList!619 (LexerInterface!3590 List!22225 List!22224 Token!7506) List!22223)

(assert (=> b!2015512 (= lt!756821 (printWithSeparatorTokenWhenNeededList!619 thiss!23328 rules!3198 (t!188277 tokens!598) separatorToken!354))))

(declare-fun e!1273661 () Bool)

(assert (=> b!2015512 e!1273661))

(declare-fun res!884092 () Bool)

(assert (=> b!2015512 (=> (not res!884092) (not e!1273661))))

(declare-fun lt!756826 () Option!4635)

(declare-fun isDefined!3923 (Option!4635) Bool)

(assert (=> b!2015512 (= res!884092 (isDefined!3923 lt!756826))))

(declare-fun getRuleFromTag!792 (LexerInterface!3590 List!22225 String!25685) Option!4635)

(assert (=> b!2015512 (= lt!756826 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun lt!756839 () Unit!36731)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!792 (LexerInterface!3590 List!22225 List!22223 Token!7506) Unit!36731)

(assert (=> b!2015512 (= lt!756839 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!792 thiss!23328 rules!3198 lt!756823 (h!27543 tokens!598)))))

(assert (=> b!2015512 e!1273667))

(declare-fun res!884102 () Bool)

(assert (=> b!2015512 (=> (not res!884102) (not e!1273667))))

(declare-fun isDefined!3924 (Option!4636) Bool)

(assert (=> b!2015512 (= res!884102 (isDefined!3924 lt!756837))))

(assert (=> b!2015512 (= lt!756837 (maxPrefix!2026 thiss!23328 rules!3198 lt!756823))))

(declare-fun lt!756834 () BalanceConc!14616)

(assert (=> b!2015512 (= lt!756823 (list!9026 lt!756834))))

(assert (=> b!2015512 e!1273649))

(declare-fun res!884110 () Bool)

(assert (=> b!2015512 (=> (not res!884110) (not e!1273649))))

(assert (=> b!2015512 (= res!884110 (isDefined!3923 lt!756819))))

(assert (=> b!2015512 (= lt!756819 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 separatorToken!354))))))

(declare-fun lt!756828 () Unit!36731)

(assert (=> b!2015512 (= lt!756828 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!792 thiss!23328 rules!3198 lt!756827 separatorToken!354))))

(declare-fun charsOf!2517 (Token!7506) BalanceConc!14616)

(assert (=> b!2015512 (= lt!756827 (list!9026 (charsOf!2517 separatorToken!354)))))

(declare-fun lt!756836 () Unit!36731)

(declare-fun lemmaEqSameImage!663 (TokenValueInjection!7810 BalanceConc!14616 BalanceConc!14616) Unit!36731)

(assert (=> b!2015512 (= lt!756836 (lemmaEqSameImage!663 (transformation!3977 (rule!6204 (h!27543 tokens!598))) lt!756834 (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598)))))))

(declare-fun lt!756830 () Unit!36731)

(declare-fun lemmaSemiInverse!934 (TokenValueInjection!7810 BalanceConc!14616) Unit!36731)

(assert (=> b!2015512 (= lt!756830 (lemmaSemiInverse!934 (transformation!3977 (rule!6204 (h!27543 tokens!598))) lt!756834))))

(assert (=> b!2015512 (= lt!756834 (charsOf!2517 (h!27543 tokens!598)))))

(declare-fun b!2015513 () Bool)

(declare-fun res!884090 () Bool)

(assert (=> b!2015513 (=> res!884090 e!1273664)))

(assert (=> b!2015513 (= res!884090 (not (contains!4066 rules!3198 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun b!2015514 () Bool)

(declare-fun res!884107 () Bool)

(assert (=> b!2015514 (=> (not res!884107) (not e!1273673))))

(declare-fun isEmpty!13762 (List!22225) Bool)

(assert (=> b!2015514 (= res!884107 (not (isEmpty!13762 rules!3198)))))

(assert (=> b!2015515 (= e!1273662 (and tp!600768 tp!600759))))

(declare-fun b!2015516 () Bool)

(declare-fun e!1273658 () Bool)

(assert (=> b!2015516 (= e!1273661 e!1273658)))

(declare-fun res!884098 () Bool)

(assert (=> b!2015516 (=> (not res!884098) (not e!1273658))))

(declare-fun lt!756840 () Rule!7754)

(assert (=> b!2015516 (= res!884098 (matchR!2668 (regex!3977 lt!756840) lt!756823))))

(assert (=> b!2015516 (= lt!756840 (get!7015 lt!756826))))

(declare-fun b!2015517 () Bool)

(declare-fun Unit!36733 () Unit!36731)

(assert (=> b!2015517 (= e!1273651 Unit!36733)))

(declare-fun b!2015518 () Bool)

(declare-fun res!884100 () Bool)

(assert (=> b!2015518 (=> (not res!884100) (not e!1273673))))

(assert (=> b!2015518 (= res!884100 (isSeparator!3977 (rule!6204 separatorToken!354)))))

(declare-fun b!2015519 () Bool)

(assert (=> b!2015519 (= e!1273658 (= (rule!6204 (h!27543 tokens!598)) lt!756840))))

(declare-fun tp!600765 () Bool)

(declare-fun b!2015520 () Bool)

(assert (=> b!2015520 (= e!1273672 (and tp!600765 (inv!29307 (tag!4453 (h!27544 rules!3198))) (inv!29310 (transformation!3977 (h!27544 rules!3198))) e!1273659))))

(declare-fun b!2015521 () Bool)

(declare-fun Unit!36734 () Unit!36731)

(assert (=> b!2015521 (= e!1273651 Unit!36734)))

(declare-fun lt!756817 () Unit!36731)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!303 (Regex!5402 List!22223 C!10950) Unit!36731)

(assert (=> b!2015521 (= lt!756817 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!303 (regex!3977 (rule!6204 separatorToken!354)) lt!756827 lt!756829))))

(declare-fun res!884108 () Bool)

(assert (=> b!2015521 (= res!884108 (not (matchR!2668 (regex!3977 (rule!6204 separatorToken!354)) lt!756827)))))

(assert (=> b!2015521 (=> (not res!884108) (not e!1273656))))

(assert (=> b!2015521 e!1273656))

(assert (= (and start!198306 res!884105) b!2015514))

(assert (= (and b!2015514 res!884107) b!2015507))

(assert (= (and b!2015507 res!884099) b!2015501))

(assert (= (and b!2015501 res!884094) b!2015492))

(assert (= (and b!2015492 res!884095) b!2015518))

(assert (= (and b!2015518 res!884100) b!2015510))

(assert (= (and b!2015510 res!884104) b!2015502))

(assert (= (and b!2015502 res!884103) b!2015491))

(assert (= (and b!2015491 res!884109) b!2015512))

(assert (= (and b!2015512 res!884110) b!2015506))

(assert (= (and b!2015506 res!884106) b!2015498))

(assert (= (and b!2015512 res!884102) b!2015511))

(assert (= (and b!2015512 res!884092) b!2015516))

(assert (= (and b!2015516 res!884098) b!2015519))

(assert (= (and b!2015512 (not res!884096)) b!2015497))

(assert (= (and b!2015497 c!325568) b!2015521))

(assert (= (and b!2015497 (not c!325568)) b!2015517))

(assert (= (and b!2015521 res!884108) b!2015495))

(assert (= (and b!2015497 (not res!884101)) b!2015489))

(assert (= (and b!2015489 (not res!884097)) b!2015496))

(assert (= (and b!2015496 (not res!884093)) b!2015513))

(assert (= (and b!2015513 (not res!884090)) b!2015504))

(assert (= (and b!2015504 (not res!884091)) b!2015494))

(assert (= b!2015520 b!2015503))

(assert (= b!2015505 b!2015520))

(assert (= (and start!198306 (is-Cons!22143 rules!3198)) b!2015505))

(assert (= b!2015490 b!2015508))

(assert (= b!2015499 b!2015490))

(assert (= b!2015493 b!2015499))

(assert (= (and start!198306 (is-Cons!22142 tokens!598)) b!2015493))

(assert (= b!2015500 b!2015515))

(assert (= b!2015509 b!2015500))

(assert (= start!198306 b!2015509))

(declare-fun m!2448755 () Bool)

(assert (=> b!2015507 m!2448755))

(declare-fun m!2448757 () Bool)

(assert (=> b!2015502 m!2448757))

(declare-fun m!2448759 () Bool)

(assert (=> b!2015512 m!2448759))

(declare-fun m!2448761 () Bool)

(assert (=> b!2015512 m!2448761))

(declare-fun m!2448763 () Bool)

(assert (=> b!2015512 m!2448763))

(assert (=> b!2015512 m!2448761))

(declare-fun m!2448765 () Bool)

(assert (=> b!2015512 m!2448765))

(declare-fun m!2448767 () Bool)

(assert (=> b!2015512 m!2448767))

(declare-fun m!2448769 () Bool)

(assert (=> b!2015512 m!2448769))

(declare-fun m!2448771 () Bool)

(assert (=> b!2015512 m!2448771))

(declare-fun m!2448773 () Bool)

(assert (=> b!2015512 m!2448773))

(declare-fun m!2448775 () Bool)

(assert (=> b!2015512 m!2448775))

(assert (=> b!2015512 m!2448775))

(declare-fun m!2448777 () Bool)

(assert (=> b!2015512 m!2448777))

(declare-fun m!2448779 () Bool)

(assert (=> b!2015512 m!2448779))

(declare-fun m!2448781 () Bool)

(assert (=> b!2015512 m!2448781))

(declare-fun m!2448783 () Bool)

(assert (=> b!2015512 m!2448783))

(assert (=> b!2015512 m!2448781))

(declare-fun m!2448785 () Bool)

(assert (=> b!2015512 m!2448785))

(declare-fun m!2448787 () Bool)

(assert (=> b!2015512 m!2448787))

(declare-fun m!2448789 () Bool)

(assert (=> b!2015512 m!2448789))

(declare-fun m!2448791 () Bool)

(assert (=> b!2015512 m!2448791))

(declare-fun m!2448793 () Bool)

(assert (=> b!2015512 m!2448793))

(declare-fun m!2448795 () Bool)

(assert (=> b!2015506 m!2448795))

(declare-fun m!2448797 () Bool)

(assert (=> b!2015506 m!2448797))

(declare-fun m!2448799 () Bool)

(assert (=> b!2015520 m!2448799))

(declare-fun m!2448801 () Bool)

(assert (=> b!2015520 m!2448801))

(declare-fun m!2448803 () Bool)

(assert (=> b!2015516 m!2448803))

(declare-fun m!2448805 () Bool)

(assert (=> b!2015516 m!2448805))

(declare-fun m!2448807 () Bool)

(assert (=> start!198306 m!2448807))

(declare-fun m!2448809 () Bool)

(assert (=> b!2015497 m!2448809))

(declare-fun m!2448811 () Bool)

(assert (=> b!2015497 m!2448811))

(declare-fun m!2448813 () Bool)

(assert (=> b!2015497 m!2448813))

(declare-fun m!2448815 () Bool)

(assert (=> b!2015497 m!2448815))

(declare-fun m!2448817 () Bool)

(assert (=> b!2015497 m!2448817))

(declare-fun m!2448819 () Bool)

(assert (=> b!2015497 m!2448819))

(declare-fun m!2448821 () Bool)

(assert (=> b!2015497 m!2448821))

(declare-fun m!2448823 () Bool)

(assert (=> b!2015497 m!2448823))

(declare-fun m!2448825 () Bool)

(assert (=> b!2015497 m!2448825))

(declare-fun m!2448827 () Bool)

(assert (=> b!2015497 m!2448827))

(declare-fun m!2448829 () Bool)

(assert (=> b!2015497 m!2448829))

(assert (=> b!2015497 m!2448823))

(declare-fun m!2448831 () Bool)

(assert (=> b!2015497 m!2448831))

(declare-fun m!2448833 () Bool)

(assert (=> b!2015497 m!2448833))

(assert (=> b!2015497 m!2448817))

(assert (=> b!2015497 m!2448811))

(assert (=> b!2015497 m!2448815))

(declare-fun m!2448835 () Bool)

(assert (=> b!2015497 m!2448835))

(declare-fun m!2448837 () Bool)

(assert (=> b!2015497 m!2448837))

(declare-fun m!2448839 () Bool)

(assert (=> b!2015497 m!2448839))

(declare-fun m!2448841 () Bool)

(assert (=> b!2015501 m!2448841))

(declare-fun m!2448843 () Bool)

(assert (=> b!2015493 m!2448843))

(declare-fun m!2448845 () Bool)

(assert (=> b!2015492 m!2448845))

(declare-fun m!2448847 () Bool)

(assert (=> b!2015504 m!2448847))

(declare-fun m!2448849 () Bool)

(assert (=> b!2015509 m!2448849))

(declare-fun m!2448851 () Bool)

(assert (=> b!2015489 m!2448851))

(declare-fun m!2448853 () Bool)

(assert (=> b!2015500 m!2448853))

(declare-fun m!2448855 () Bool)

(assert (=> b!2015500 m!2448855))

(declare-fun m!2448857 () Bool)

(assert (=> b!2015499 m!2448857))

(declare-fun m!2448859 () Bool)

(assert (=> b!2015510 m!2448859))

(declare-fun m!2448861 () Bool)

(assert (=> b!2015496 m!2448861))

(assert (=> b!2015496 m!2448861))

(declare-fun m!2448863 () Bool)

(assert (=> b!2015496 m!2448863))

(declare-fun m!2448865 () Bool)

(assert (=> b!2015496 m!2448865))

(declare-fun m!2448867 () Bool)

(assert (=> b!2015514 m!2448867))

(declare-fun m!2448869 () Bool)

(assert (=> b!2015513 m!2448869))

(declare-fun m!2448871 () Bool)

(assert (=> b!2015490 m!2448871))

(declare-fun m!2448873 () Bool)

(assert (=> b!2015490 m!2448873))

(declare-fun m!2448875 () Bool)

(assert (=> b!2015511 m!2448875))

(declare-fun m!2448877 () Bool)

(assert (=> b!2015521 m!2448877))

(declare-fun m!2448879 () Bool)

(assert (=> b!2015521 m!2448879))

(push 1)

(assert (not b!2015512))

(assert (not b_next!57007))

(assert (not b!2015500))

(assert (not b!2015493))

(assert (not b_next!57011))

(assert b_and!159623)

(assert b_and!159627)

(assert (not b!2015505))

(assert (not b!2015489))

(assert (not b!2015506))

(assert (not b!2015514))

(assert (not b!2015521))

(assert (not b!2015511))

(assert (not b_next!57013))

(assert (not b!2015510))

(assert (not b_next!57015))

(assert (not b!2015520))

(assert b_and!159625)

(assert (not b!2015504))

(assert (not b!2015490))

(assert (not b!2015509))

(assert (not b!2015502))

(assert b_and!159617)

(assert (not b!2015496))

(assert (not b!2015516))

(assert (not b_next!57005))

(assert (not b!2015497))

(assert (not b!2015499))

(assert (not b!2015513))

(assert (not b_next!57009))

(assert (not b!2015492))

(assert (not b!2015501))

(assert b_and!159619)

(assert (not start!198306))

(assert (not b!2015507))

(assert b_and!159621)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57007))

(assert (not b_next!57015))

(assert (not b_next!57011))

(assert b_and!159623)

(assert b_and!159627)

(assert b_and!159625)

(assert b_and!159617)

(assert (not b_next!57005))

(assert (not b_next!57009))

(assert (not b_next!57013))

(assert b_and!159619)

(assert b_and!159621)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!756915 () Bool)

(declare-fun d!615128 () Bool)

(declare-fun isEmpty!13765 (List!22224) Bool)

(declare-fun list!9028 (BalanceConc!14618) List!22224)

(assert (=> d!615128 (= lt!756915 (isEmpty!13765 (list!9028 (_1!11871 (lex!1606 thiss!23328 rules!3198 (seqFromList!2831 lt!756823))))))))

(declare-fun isEmpty!13766 (Conc!7401) Bool)

(assert (=> d!615128 (= lt!756915 (isEmpty!13766 (c!325571 (_1!11871 (lex!1606 thiss!23328 rules!3198 (seqFromList!2831 lt!756823))))))))

(assert (=> d!615128 (= (isEmpty!13761 (_1!11871 (lex!1606 thiss!23328 rules!3198 (seqFromList!2831 lt!756823)))) lt!756915)))

(declare-fun bs!419943 () Bool)

(assert (= bs!419943 d!615128))

(declare-fun m!2449007 () Bool)

(assert (=> bs!419943 m!2449007))

(assert (=> bs!419943 m!2449007))

(declare-fun m!2449009 () Bool)

(assert (=> bs!419943 m!2449009))

(declare-fun m!2449011 () Bool)

(assert (=> bs!419943 m!2449011))

(assert (=> b!2015496 d!615128))

(declare-fun b!2015631 () Bool)

(declare-fun e!1273756 () Bool)

(declare-fun lt!756918 () tuple2!20804)

(assert (=> b!2015631 (= e!1273756 (= (_2!11871 lt!756918) (seqFromList!2831 lt!756823)))))

(declare-fun d!615130 () Bool)

(declare-fun e!1273757 () Bool)

(assert (=> d!615130 e!1273757))

(declare-fun res!884191 () Bool)

(assert (=> d!615130 (=> (not res!884191) (not e!1273757))))

(assert (=> d!615130 (= res!884191 e!1273756)))

(declare-fun c!325581 () Bool)

(declare-fun size!17299 (BalanceConc!14618) Int)

(assert (=> d!615130 (= c!325581 (> (size!17299 (_1!11871 lt!756918)) 0))))

(declare-fun lexTailRecV2!695 (LexerInterface!3590 List!22225 BalanceConc!14616 BalanceConc!14616 BalanceConc!14616 BalanceConc!14618) tuple2!20804)

(assert (=> d!615130 (= lt!756918 (lexTailRecV2!695 thiss!23328 rules!3198 (seqFromList!2831 lt!756823) (BalanceConc!14617 Empty!7400) (seqFromList!2831 lt!756823) (BalanceConc!14619 Empty!7401)))))

(assert (=> d!615130 (= (lex!1606 thiss!23328 rules!3198 (seqFromList!2831 lt!756823)) lt!756918)))

(declare-fun b!2015632 () Bool)

(declare-datatypes ((tuple2!20812 0))(
  ( (tuple2!20813 (_1!11875 List!22224) (_2!11875 List!22223)) )
))
(declare-fun lexList!972 (LexerInterface!3590 List!22225 List!22223) tuple2!20812)

(assert (=> b!2015632 (= e!1273757 (= (list!9026 (_2!11871 lt!756918)) (_2!11875 (lexList!972 thiss!23328 rules!3198 (list!9026 (seqFromList!2831 lt!756823))))))))

(declare-fun b!2015633 () Bool)

(declare-fun e!1273755 () Bool)

(assert (=> b!2015633 (= e!1273756 e!1273755)))

(declare-fun res!884192 () Bool)

(declare-fun size!17300 (BalanceConc!14616) Int)

(assert (=> b!2015633 (= res!884192 (< (size!17300 (_2!11871 lt!756918)) (size!17300 (seqFromList!2831 lt!756823))))))

(assert (=> b!2015633 (=> (not res!884192) (not e!1273755))))

(declare-fun b!2015634 () Bool)

(declare-fun res!884190 () Bool)

(assert (=> b!2015634 (=> (not res!884190) (not e!1273757))))

(assert (=> b!2015634 (= res!884190 (= (list!9028 (_1!11871 lt!756918)) (_1!11875 (lexList!972 thiss!23328 rules!3198 (list!9026 (seqFromList!2831 lt!756823))))))))

(declare-fun b!2015635 () Bool)

(assert (=> b!2015635 (= e!1273755 (not (isEmpty!13761 (_1!11871 lt!756918))))))

(assert (= (and d!615130 c!325581) b!2015633))

(assert (= (and d!615130 (not c!325581)) b!2015631))

(assert (= (and b!2015633 res!884192) b!2015635))

(assert (= (and d!615130 res!884191) b!2015634))

(assert (= (and b!2015634 res!884190) b!2015632))

(declare-fun m!2449013 () Bool)

(assert (=> d!615130 m!2449013))

(assert (=> d!615130 m!2448861))

(assert (=> d!615130 m!2448861))

(declare-fun m!2449015 () Bool)

(assert (=> d!615130 m!2449015))

(declare-fun m!2449017 () Bool)

(assert (=> b!2015635 m!2449017))

(declare-fun m!2449019 () Bool)

(assert (=> b!2015634 m!2449019))

(assert (=> b!2015634 m!2448861))

(declare-fun m!2449021 () Bool)

(assert (=> b!2015634 m!2449021))

(assert (=> b!2015634 m!2449021))

(declare-fun m!2449023 () Bool)

(assert (=> b!2015634 m!2449023))

(declare-fun m!2449025 () Bool)

(assert (=> b!2015633 m!2449025))

(assert (=> b!2015633 m!2448861))

(declare-fun m!2449027 () Bool)

(assert (=> b!2015633 m!2449027))

(declare-fun m!2449029 () Bool)

(assert (=> b!2015632 m!2449029))

(assert (=> b!2015632 m!2448861))

(assert (=> b!2015632 m!2449021))

(assert (=> b!2015632 m!2449021))

(assert (=> b!2015632 m!2449023))

(assert (=> b!2015496 d!615130))

(declare-fun d!615134 () Bool)

(declare-fun fromListB!1271 (List!22223) BalanceConc!14616)

(assert (=> d!615134 (= (seqFromList!2831 lt!756823) (fromListB!1271 lt!756823))))

(declare-fun bs!419944 () Bool)

(assert (= bs!419944 d!615134))

(declare-fun m!2449031 () Bool)

(assert (=> bs!419944 m!2449031))

(assert (=> b!2015496 d!615134))

(declare-fun d!615136 () Bool)

(declare-fun res!884199 () Bool)

(declare-fun e!1273764 () Bool)

(assert (=> d!615136 (=> (not res!884199) (not e!1273764))))

(declare-fun rulesValid!1485 (LexerInterface!3590 List!22225) Bool)

(assert (=> d!615136 (= res!884199 (rulesValid!1485 thiss!23328 rules!3198))))

(assert (=> d!615136 (= (rulesInvariant!3197 thiss!23328 rules!3198) e!1273764)))

(declare-fun b!2015642 () Bool)

(declare-datatypes ((List!22230 0))(
  ( (Nil!22148) (Cons!22148 (h!27549 String!25685) (t!188374 List!22230)) )
))
(declare-fun noDuplicateTag!1483 (LexerInterface!3590 List!22225 List!22230) Bool)

(assert (=> b!2015642 (= e!1273764 (noDuplicateTag!1483 thiss!23328 rules!3198 Nil!22148))))

(assert (= (and d!615136 res!884199) b!2015642))

(declare-fun m!2449033 () Bool)

(assert (=> d!615136 m!2449033))

(declare-fun m!2449035 () Bool)

(assert (=> b!2015642 m!2449035))

(assert (=> b!2015507 d!615136))

(declare-fun d!615138 () Bool)

(declare-fun e!1273790 () Bool)

(assert (=> d!615138 e!1273790))

(declare-fun c!325588 () Bool)

(assert (=> d!615138 (= c!325588 (is-EmptyExpr!5402 (regex!3977 lt!756840)))))

(declare-fun lt!756924 () Bool)

(declare-fun e!1273785 () Bool)

(assert (=> d!615138 (= lt!756924 e!1273785)))

(declare-fun c!325589 () Bool)

(declare-fun isEmpty!13767 (List!22223) Bool)

(assert (=> d!615138 (= c!325589 (isEmpty!13767 lt!756823))))

(declare-fun validRegex!2168 (Regex!5402) Bool)

(assert (=> d!615138 (validRegex!2168 (regex!3977 lt!756840))))

(assert (=> d!615138 (= (matchR!2668 (regex!3977 lt!756840) lt!756823) lt!756924)))

(declare-fun b!2015676 () Bool)

(declare-fun e!1273789 () Bool)

(declare-fun e!1273787 () Bool)

(assert (=> b!2015676 (= e!1273789 e!1273787)))

(declare-fun res!884221 () Bool)

(assert (=> b!2015676 (=> (not res!884221) (not e!1273787))))

(assert (=> b!2015676 (= res!884221 (not lt!756924))))

(declare-fun b!2015677 () Bool)

(declare-fun nullable!1642 (Regex!5402) Bool)

(assert (=> b!2015677 (= e!1273785 (nullable!1642 (regex!3977 lt!756840)))))

(declare-fun b!2015678 () Bool)

(declare-fun derivativeStep!1401 (Regex!5402 C!10950) Regex!5402)

(declare-fun tail!3039 (List!22223) List!22223)

(assert (=> b!2015678 (= e!1273785 (matchR!2668 (derivativeStep!1401 (regex!3977 lt!756840) (head!4559 lt!756823)) (tail!3039 lt!756823)))))

(declare-fun b!2015679 () Bool)

(declare-fun call!123317 () Bool)

(assert (=> b!2015679 (= e!1273790 (= lt!756924 call!123317))))

(declare-fun b!2015680 () Bool)

(declare-fun res!884224 () Bool)

(assert (=> b!2015680 (=> res!884224 e!1273789)))

(declare-fun e!1273784 () Bool)

(assert (=> b!2015680 (= res!884224 e!1273784)))

(declare-fun res!884223 () Bool)

(assert (=> b!2015680 (=> (not res!884223) (not e!1273784))))

(assert (=> b!2015680 (= res!884223 lt!756924)))

(declare-fun b!2015681 () Bool)

(declare-fun e!1273788 () Bool)

(assert (=> b!2015681 (= e!1273788 (not (= (head!4559 lt!756823) (c!325569 (regex!3977 lt!756840)))))))

(declare-fun b!2015682 () Bool)

(assert (=> b!2015682 (= e!1273784 (= (head!4559 lt!756823) (c!325569 (regex!3977 lt!756840))))))

(declare-fun b!2015683 () Bool)

(declare-fun res!884228 () Bool)

(assert (=> b!2015683 (=> (not res!884228) (not e!1273784))))

(assert (=> b!2015683 (= res!884228 (not call!123317))))

(declare-fun bm!123312 () Bool)

(assert (=> bm!123312 (= call!123317 (isEmpty!13767 lt!756823))))

(declare-fun b!2015684 () Bool)

(declare-fun e!1273786 () Bool)

(assert (=> b!2015684 (= e!1273786 (not lt!756924))))

(declare-fun b!2015685 () Bool)

(declare-fun res!884225 () Bool)

(assert (=> b!2015685 (=> res!884225 e!1273789)))

(assert (=> b!2015685 (= res!884225 (not (is-ElementMatch!5402 (regex!3977 lt!756840))))))

(assert (=> b!2015685 (= e!1273786 e!1273789)))

(declare-fun b!2015686 () Bool)

(assert (=> b!2015686 (= e!1273790 e!1273786)))

(declare-fun c!325590 () Bool)

(assert (=> b!2015686 (= c!325590 (is-EmptyLang!5402 (regex!3977 lt!756840)))))

(declare-fun b!2015687 () Bool)

(declare-fun res!884222 () Bool)

(assert (=> b!2015687 (=> (not res!884222) (not e!1273784))))

(assert (=> b!2015687 (= res!884222 (isEmpty!13767 (tail!3039 lt!756823)))))

(declare-fun b!2015688 () Bool)

(declare-fun res!884227 () Bool)

(assert (=> b!2015688 (=> res!884227 e!1273788)))

(assert (=> b!2015688 (= res!884227 (not (isEmpty!13767 (tail!3039 lt!756823))))))

(declare-fun b!2015689 () Bool)

(assert (=> b!2015689 (= e!1273787 e!1273788)))

(declare-fun res!884226 () Bool)

(assert (=> b!2015689 (=> res!884226 e!1273788)))

(assert (=> b!2015689 (= res!884226 call!123317)))

(assert (= (and d!615138 c!325589) b!2015677))

(assert (= (and d!615138 (not c!325589)) b!2015678))

(assert (= (and d!615138 c!325588) b!2015679))

(assert (= (and d!615138 (not c!325588)) b!2015686))

(assert (= (and b!2015686 c!325590) b!2015684))

(assert (= (and b!2015686 (not c!325590)) b!2015685))

(assert (= (and b!2015685 (not res!884225)) b!2015680))

(assert (= (and b!2015680 res!884223) b!2015683))

(assert (= (and b!2015683 res!884228) b!2015687))

(assert (= (and b!2015687 res!884222) b!2015682))

(assert (= (and b!2015680 (not res!884224)) b!2015676))

(assert (= (and b!2015676 res!884221) b!2015689))

(assert (= (and b!2015689 (not res!884226)) b!2015688))

(assert (= (and b!2015688 (not res!884227)) b!2015681))

(assert (= (or b!2015679 b!2015683 b!2015689) bm!123312))

(declare-fun m!2449047 () Bool)

(assert (=> d!615138 m!2449047))

(declare-fun m!2449049 () Bool)

(assert (=> d!615138 m!2449049))

(declare-fun m!2449051 () Bool)

(assert (=> b!2015677 m!2449051))

(assert (=> bm!123312 m!2449047))

(declare-fun m!2449053 () Bool)

(assert (=> b!2015682 m!2449053))

(assert (=> b!2015681 m!2449053))

(declare-fun m!2449055 () Bool)

(assert (=> b!2015688 m!2449055))

(assert (=> b!2015688 m!2449055))

(declare-fun m!2449057 () Bool)

(assert (=> b!2015688 m!2449057))

(assert (=> b!2015678 m!2449053))

(assert (=> b!2015678 m!2449053))

(declare-fun m!2449059 () Bool)

(assert (=> b!2015678 m!2449059))

(assert (=> b!2015678 m!2449055))

(assert (=> b!2015678 m!2449059))

(assert (=> b!2015678 m!2449055))

(declare-fun m!2449061 () Bool)

(assert (=> b!2015678 m!2449061))

(assert (=> b!2015687 m!2449055))

(assert (=> b!2015687 m!2449055))

(assert (=> b!2015687 m!2449057))

(assert (=> b!2015516 d!615138))

(declare-fun d!615144 () Bool)

(assert (=> d!615144 (= (get!7015 lt!756826) (v!26907 lt!756826))))

(assert (=> b!2015516 d!615144))

(declare-fun d!615146 () Bool)

(declare-fun e!1273797 () Bool)

(assert (=> d!615146 e!1273797))

(declare-fun c!325591 () Bool)

(assert (=> d!615146 (= c!325591 (is-EmptyExpr!5402 (regex!3977 lt!756824)))))

(declare-fun lt!756925 () Bool)

(declare-fun e!1273792 () Bool)

(assert (=> d!615146 (= lt!756925 e!1273792)))

(declare-fun c!325592 () Bool)

(assert (=> d!615146 (= c!325592 (isEmpty!13767 lt!756827))))

(assert (=> d!615146 (validRegex!2168 (regex!3977 lt!756824))))

(assert (=> d!615146 (= (matchR!2668 (regex!3977 lt!756824) lt!756827) lt!756925)))

(declare-fun b!2015690 () Bool)

(declare-fun e!1273796 () Bool)

(declare-fun e!1273794 () Bool)

(assert (=> b!2015690 (= e!1273796 e!1273794)))

(declare-fun res!884229 () Bool)

(assert (=> b!2015690 (=> (not res!884229) (not e!1273794))))

(assert (=> b!2015690 (= res!884229 (not lt!756925))))

(declare-fun b!2015691 () Bool)

(assert (=> b!2015691 (= e!1273792 (nullable!1642 (regex!3977 lt!756824)))))

(declare-fun b!2015692 () Bool)

(assert (=> b!2015692 (= e!1273792 (matchR!2668 (derivativeStep!1401 (regex!3977 lt!756824) (head!4559 lt!756827)) (tail!3039 lt!756827)))))

(declare-fun b!2015693 () Bool)

(declare-fun call!123318 () Bool)

(assert (=> b!2015693 (= e!1273797 (= lt!756925 call!123318))))

(declare-fun b!2015694 () Bool)

(declare-fun res!884232 () Bool)

(assert (=> b!2015694 (=> res!884232 e!1273796)))

(declare-fun e!1273791 () Bool)

(assert (=> b!2015694 (= res!884232 e!1273791)))

(declare-fun res!884231 () Bool)

(assert (=> b!2015694 (=> (not res!884231) (not e!1273791))))

(assert (=> b!2015694 (= res!884231 lt!756925)))

(declare-fun b!2015695 () Bool)

(declare-fun e!1273795 () Bool)

(assert (=> b!2015695 (= e!1273795 (not (= (head!4559 lt!756827) (c!325569 (regex!3977 lt!756824)))))))

(declare-fun b!2015696 () Bool)

(assert (=> b!2015696 (= e!1273791 (= (head!4559 lt!756827) (c!325569 (regex!3977 lt!756824))))))

(declare-fun b!2015697 () Bool)

(declare-fun res!884236 () Bool)

(assert (=> b!2015697 (=> (not res!884236) (not e!1273791))))

(assert (=> b!2015697 (= res!884236 (not call!123318))))

(declare-fun bm!123313 () Bool)

(assert (=> bm!123313 (= call!123318 (isEmpty!13767 lt!756827))))

(declare-fun b!2015698 () Bool)

(declare-fun e!1273793 () Bool)

(assert (=> b!2015698 (= e!1273793 (not lt!756925))))

(declare-fun b!2015699 () Bool)

(declare-fun res!884233 () Bool)

(assert (=> b!2015699 (=> res!884233 e!1273796)))

(assert (=> b!2015699 (= res!884233 (not (is-ElementMatch!5402 (regex!3977 lt!756824))))))

(assert (=> b!2015699 (= e!1273793 e!1273796)))

(declare-fun b!2015700 () Bool)

(assert (=> b!2015700 (= e!1273797 e!1273793)))

(declare-fun c!325593 () Bool)

(assert (=> b!2015700 (= c!325593 (is-EmptyLang!5402 (regex!3977 lt!756824)))))

(declare-fun b!2015701 () Bool)

(declare-fun res!884230 () Bool)

(assert (=> b!2015701 (=> (not res!884230) (not e!1273791))))

(assert (=> b!2015701 (= res!884230 (isEmpty!13767 (tail!3039 lt!756827)))))

(declare-fun b!2015702 () Bool)

(declare-fun res!884235 () Bool)

(assert (=> b!2015702 (=> res!884235 e!1273795)))

(assert (=> b!2015702 (= res!884235 (not (isEmpty!13767 (tail!3039 lt!756827))))))

(declare-fun b!2015703 () Bool)

(assert (=> b!2015703 (= e!1273794 e!1273795)))

(declare-fun res!884234 () Bool)

(assert (=> b!2015703 (=> res!884234 e!1273795)))

(assert (=> b!2015703 (= res!884234 call!123318)))

(assert (= (and d!615146 c!325592) b!2015691))

(assert (= (and d!615146 (not c!325592)) b!2015692))

(assert (= (and d!615146 c!325591) b!2015693))

(assert (= (and d!615146 (not c!325591)) b!2015700))

(assert (= (and b!2015700 c!325593) b!2015698))

(assert (= (and b!2015700 (not c!325593)) b!2015699))

(assert (= (and b!2015699 (not res!884233)) b!2015694))

(assert (= (and b!2015694 res!884231) b!2015697))

(assert (= (and b!2015697 res!884236) b!2015701))

(assert (= (and b!2015701 res!884230) b!2015696))

(assert (= (and b!2015694 (not res!884232)) b!2015690))

(assert (= (and b!2015690 res!884229) b!2015703))

(assert (= (and b!2015703 (not res!884234)) b!2015702))

(assert (= (and b!2015702 (not res!884235)) b!2015695))

(assert (= (or b!2015693 b!2015697 b!2015703) bm!123313))

(declare-fun m!2449063 () Bool)

(assert (=> d!615146 m!2449063))

(declare-fun m!2449065 () Bool)

(assert (=> d!615146 m!2449065))

(declare-fun m!2449067 () Bool)

(assert (=> b!2015691 m!2449067))

(assert (=> bm!123313 m!2449063))

(assert (=> b!2015696 m!2448839))

(assert (=> b!2015695 m!2448839))

(declare-fun m!2449069 () Bool)

(assert (=> b!2015702 m!2449069))

(assert (=> b!2015702 m!2449069))

(declare-fun m!2449071 () Bool)

(assert (=> b!2015702 m!2449071))

(assert (=> b!2015692 m!2448839))

(assert (=> b!2015692 m!2448839))

(declare-fun m!2449073 () Bool)

(assert (=> b!2015692 m!2449073))

(assert (=> b!2015692 m!2449069))

(assert (=> b!2015692 m!2449073))

(assert (=> b!2015692 m!2449069))

(declare-fun m!2449075 () Bool)

(assert (=> b!2015692 m!2449075))

(assert (=> b!2015701 m!2449069))

(assert (=> b!2015701 m!2449069))

(assert (=> b!2015701 m!2449071))

(assert (=> b!2015506 d!615146))

(declare-fun d!615148 () Bool)

(assert (=> d!615148 (= (get!7015 lt!756819) (v!26907 lt!756819))))

(assert (=> b!2015506 d!615148))

(declare-fun d!615150 () Bool)

(declare-fun c!325598 () Bool)

(assert (=> d!615150 (= c!325598 (is-IntegerValue!12339 (value!124937 separatorToken!354)))))

(declare-fun e!1273805 () Bool)

(assert (=> d!615150 (= (inv!21 (value!124937 separatorToken!354)) e!1273805)))

(declare-fun b!2015714 () Bool)

(declare-fun e!1273804 () Bool)

(declare-fun inv!15 (TokenValue!4113) Bool)

(assert (=> b!2015714 (= e!1273804 (inv!15 (value!124937 separatorToken!354)))))

(declare-fun b!2015715 () Bool)

(declare-fun inv!16 (TokenValue!4113) Bool)

(assert (=> b!2015715 (= e!1273805 (inv!16 (value!124937 separatorToken!354)))))

(declare-fun b!2015716 () Bool)

(declare-fun e!1273806 () Bool)

(assert (=> b!2015716 (= e!1273805 e!1273806)))

(declare-fun c!325599 () Bool)

(assert (=> b!2015716 (= c!325599 (is-IntegerValue!12340 (value!124937 separatorToken!354)))))

(declare-fun b!2015717 () Bool)

(declare-fun res!884239 () Bool)

(assert (=> b!2015717 (=> res!884239 e!1273804)))

(assert (=> b!2015717 (= res!884239 (not (is-IntegerValue!12341 (value!124937 separatorToken!354))))))

(assert (=> b!2015717 (= e!1273806 e!1273804)))

(declare-fun b!2015718 () Bool)

(declare-fun inv!17 (TokenValue!4113) Bool)

(assert (=> b!2015718 (= e!1273806 (inv!17 (value!124937 separatorToken!354)))))

(assert (= (and d!615150 c!325598) b!2015715))

(assert (= (and d!615150 (not c!325598)) b!2015716))

(assert (= (and b!2015716 c!325599) b!2015718))

(assert (= (and b!2015716 (not c!325599)) b!2015717))

(assert (= (and b!2015717 (not res!884239)) b!2015714))

(declare-fun m!2449077 () Bool)

(assert (=> b!2015714 m!2449077))

(declare-fun m!2449079 () Bool)

(assert (=> b!2015715 m!2449079))

(declare-fun m!2449081 () Bool)

(assert (=> b!2015718 m!2449081))

(assert (=> b!2015509 d!615150))

(declare-fun d!615152 () Bool)

(assert (=> d!615152 (= (inv!29307 (tag!4453 (h!27544 rules!3198))) (= (mod (str.len (value!124936 (tag!4453 (h!27544 rules!3198)))) 2) 0))))

(assert (=> b!2015520 d!615152))

(declare-fun d!615154 () Bool)

(declare-fun res!884242 () Bool)

(declare-fun e!1273809 () Bool)

(assert (=> d!615154 (=> (not res!884242) (not e!1273809))))

(declare-fun semiInverseModEq!1598 (Int Int) Bool)

(assert (=> d!615154 (= res!884242 (semiInverseModEq!1598 (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (h!27544 rules!3198)))))))

(assert (=> d!615154 (= (inv!29310 (transformation!3977 (h!27544 rules!3198))) e!1273809)))

(declare-fun b!2015721 () Bool)

(declare-fun equivClasses!1525 (Int Int) Bool)

(assert (=> b!2015721 (= e!1273809 (equivClasses!1525 (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (h!27544 rules!3198)))))))

(assert (= (and d!615154 res!884242) b!2015721))

(declare-fun m!2449083 () Bool)

(assert (=> d!615154 m!2449083))

(declare-fun m!2449085 () Bool)

(assert (=> b!2015721 m!2449085))

(assert (=> b!2015520 d!615154))

(declare-fun d!615156 () Bool)

(declare-fun c!325600 () Bool)

(assert (=> d!615156 (= c!325600 (is-IntegerValue!12339 (value!124937 (h!27543 tokens!598))))))

(declare-fun e!1273811 () Bool)

(assert (=> d!615156 (= (inv!21 (value!124937 (h!27543 tokens!598))) e!1273811)))

(declare-fun b!2015722 () Bool)

(declare-fun e!1273810 () Bool)

(assert (=> b!2015722 (= e!1273810 (inv!15 (value!124937 (h!27543 tokens!598))))))

(declare-fun b!2015723 () Bool)

(assert (=> b!2015723 (= e!1273811 (inv!16 (value!124937 (h!27543 tokens!598))))))

(declare-fun b!2015724 () Bool)

(declare-fun e!1273812 () Bool)

(assert (=> b!2015724 (= e!1273811 e!1273812)))

(declare-fun c!325601 () Bool)

(assert (=> b!2015724 (= c!325601 (is-IntegerValue!12340 (value!124937 (h!27543 tokens!598))))))

(declare-fun b!2015725 () Bool)

(declare-fun res!884243 () Bool)

(assert (=> b!2015725 (=> res!884243 e!1273810)))

(assert (=> b!2015725 (= res!884243 (not (is-IntegerValue!12341 (value!124937 (h!27543 tokens!598)))))))

(assert (=> b!2015725 (= e!1273812 e!1273810)))

(declare-fun b!2015726 () Bool)

(assert (=> b!2015726 (= e!1273812 (inv!17 (value!124937 (h!27543 tokens!598))))))

(assert (= (and d!615156 c!325600) b!2015723))

(assert (= (and d!615156 (not c!325600)) b!2015724))

(assert (= (and b!2015724 c!325601) b!2015726))

(assert (= (and b!2015724 (not c!325601)) b!2015725))

(assert (= (and b!2015725 (not res!884243)) b!2015722))

(declare-fun m!2449087 () Bool)

(assert (=> b!2015722 m!2449087))

(declare-fun m!2449089 () Bool)

(assert (=> b!2015723 m!2449089))

(declare-fun m!2449091 () Bool)

(assert (=> b!2015726 m!2449091))

(assert (=> b!2015499 d!615156))

(declare-fun d!615158 () Bool)

(declare-fun res!884248 () Bool)

(declare-fun e!1273817 () Bool)

(assert (=> d!615158 (=> res!884248 e!1273817)))

(assert (=> d!615158 (= res!884248 (is-Nil!22142 tokens!598))))

(assert (=> d!615158 (= (forall!4705 tokens!598 lambda!76252) e!1273817)))

(declare-fun b!2015731 () Bool)

(declare-fun e!1273818 () Bool)

(assert (=> b!2015731 (= e!1273817 e!1273818)))

(declare-fun res!884249 () Bool)

(assert (=> b!2015731 (=> (not res!884249) (not e!1273818))))

(declare-fun dynLambda!10949 (Int Token!7506) Bool)

(assert (=> b!2015731 (= res!884249 (dynLambda!10949 lambda!76252 (h!27543 tokens!598)))))

(declare-fun b!2015732 () Bool)

(assert (=> b!2015732 (= e!1273818 (forall!4705 (t!188277 tokens!598) lambda!76252))))

(assert (= (and d!615158 (not res!884248)) b!2015731))

(assert (= (and b!2015731 res!884249) b!2015732))

(declare-fun b_lambda!67493 () Bool)

(assert (=> (not b_lambda!67493) (not b!2015731)))

(declare-fun m!2449093 () Bool)

(assert (=> b!2015731 m!2449093))

(declare-fun m!2449095 () Bool)

(assert (=> b!2015732 m!2449095))

(assert (=> b!2015510 d!615158))

(declare-fun d!615160 () Bool)

(declare-fun lt!756944 () BalanceConc!14616)

(declare-fun printListTailRec!478 (LexerInterface!3590 List!22224 List!22223) List!22223)

(declare-fun dropList!809 (BalanceConc!14618 Int) List!22224)

(assert (=> d!615160 (= (list!9026 lt!756944) (printListTailRec!478 thiss!23328 (dropList!809 lt!756835 0) (list!9026 (BalanceConc!14617 Empty!7400))))))

(declare-fun e!1273824 () BalanceConc!14616)

(assert (=> d!615160 (= lt!756944 e!1273824)))

(declare-fun c!325604 () Bool)

(assert (=> d!615160 (= c!325604 (>= 0 (size!17299 lt!756835)))))

(declare-fun e!1273823 () Bool)

(assert (=> d!615160 e!1273823))

(declare-fun res!884252 () Bool)

(assert (=> d!615160 (=> (not res!884252) (not e!1273823))))

(assert (=> d!615160 (= res!884252 (>= 0 0))))

(assert (=> d!615160 (= (printTailRec!1058 thiss!23328 lt!756835 0 (BalanceConc!14617 Empty!7400)) lt!756944)))

(declare-fun b!2015739 () Bool)

(assert (=> b!2015739 (= e!1273823 (<= 0 (size!17299 lt!756835)))))

(declare-fun b!2015740 () Bool)

(assert (=> b!2015740 (= e!1273824 (BalanceConc!14617 Empty!7400))))

(declare-fun b!2015741 () Bool)

(declare-fun ++!5978 (BalanceConc!14616 BalanceConc!14616) BalanceConc!14616)

(declare-fun apply!5812 (BalanceConc!14618 Int) Token!7506)

(assert (=> b!2015741 (= e!1273824 (printTailRec!1058 thiss!23328 lt!756835 (+ 0 1) (++!5978 (BalanceConc!14617 Empty!7400) (charsOf!2517 (apply!5812 lt!756835 0)))))))

(declare-fun lt!756943 () List!22224)

(assert (=> b!2015741 (= lt!756943 (list!9028 lt!756835))))

(declare-fun lt!756942 () Unit!36731)

(declare-fun lemmaDropApply!733 (List!22224 Int) Unit!36731)

(assert (=> b!2015741 (= lt!756942 (lemmaDropApply!733 lt!756943 0))))

(declare-fun head!4561 (List!22224) Token!7506)

(declare-fun drop!1108 (List!22224 Int) List!22224)

(declare-fun apply!5813 (List!22224 Int) Token!7506)

(assert (=> b!2015741 (= (head!4561 (drop!1108 lt!756943 0)) (apply!5813 lt!756943 0))))

(declare-fun lt!756945 () Unit!36731)

(assert (=> b!2015741 (= lt!756945 lt!756942)))

(declare-fun lt!756946 () List!22224)

(assert (=> b!2015741 (= lt!756946 (list!9028 lt!756835))))

(declare-fun lt!756941 () Unit!36731)

(declare-fun lemmaDropTail!709 (List!22224 Int) Unit!36731)

(assert (=> b!2015741 (= lt!756941 (lemmaDropTail!709 lt!756946 0))))

(declare-fun tail!3040 (List!22224) List!22224)

(assert (=> b!2015741 (= (tail!3040 (drop!1108 lt!756946 0)) (drop!1108 lt!756946 (+ 0 1)))))

(declare-fun lt!756940 () Unit!36731)

(assert (=> b!2015741 (= lt!756940 lt!756941)))

(assert (= (and d!615160 res!884252) b!2015739))

(assert (= (and d!615160 c!325604) b!2015740))

(assert (= (and d!615160 (not c!325604)) b!2015741))

(declare-fun m!2449097 () Bool)

(assert (=> d!615160 m!2449097))

(declare-fun m!2449099 () Bool)

(assert (=> d!615160 m!2449099))

(declare-fun m!2449101 () Bool)

(assert (=> d!615160 m!2449101))

(declare-fun m!2449103 () Bool)

(assert (=> d!615160 m!2449103))

(declare-fun m!2449105 () Bool)

(assert (=> d!615160 m!2449105))

(assert (=> d!615160 m!2449103))

(assert (=> d!615160 m!2449101))

(assert (=> b!2015739 m!2449099))

(declare-fun m!2449107 () Bool)

(assert (=> b!2015741 m!2449107))

(declare-fun m!2449109 () Bool)

(assert (=> b!2015741 m!2449109))

(declare-fun m!2449111 () Bool)

(assert (=> b!2015741 m!2449111))

(declare-fun m!2449113 () Bool)

(assert (=> b!2015741 m!2449113))

(declare-fun m!2449115 () Bool)

(assert (=> b!2015741 m!2449115))

(declare-fun m!2449117 () Bool)

(assert (=> b!2015741 m!2449117))

(declare-fun m!2449119 () Bool)

(assert (=> b!2015741 m!2449119))

(declare-fun m!2449121 () Bool)

(assert (=> b!2015741 m!2449121))

(declare-fun m!2449123 () Bool)

(assert (=> b!2015741 m!2449123))

(assert (=> b!2015741 m!2449107))

(assert (=> b!2015741 m!2449117))

(declare-fun m!2449125 () Bool)

(assert (=> b!2015741 m!2449125))

(declare-fun m!2449127 () Bool)

(assert (=> b!2015741 m!2449127))

(assert (=> b!2015741 m!2449113))

(declare-fun m!2449129 () Bool)

(assert (=> b!2015741 m!2449129))

(declare-fun m!2449131 () Bool)

(assert (=> b!2015741 m!2449131))

(assert (=> b!2015741 m!2449121))

(assert (=> b!2015741 m!2449127))

(assert (=> b!2015497 d!615160))

(declare-fun d!615162 () Bool)

(assert (=> d!615162 (not (contains!4065 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598)))) lt!756829))))

(declare-fun lt!756949 () Unit!36731)

(declare-fun choose!12279 (LexerInterface!3590 List!22225 List!22225 Rule!7754 Rule!7754 C!10950) Unit!36731)

(assert (=> d!615162 (= lt!756949 (choose!12279 thiss!23328 rules!3198 rules!3198 (rule!6204 (h!27543 tokens!598)) (rule!6204 separatorToken!354) lt!756829))))

(assert (=> d!615162 (rulesInvariant!3197 thiss!23328 rules!3198)))

(assert (=> d!615162 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!87 thiss!23328 rules!3198 rules!3198 (rule!6204 (h!27543 tokens!598)) (rule!6204 separatorToken!354) lt!756829) lt!756949)))

(declare-fun bs!419945 () Bool)

(assert (= bs!419945 d!615162))

(assert (=> bs!419945 m!2448815))

(assert (=> bs!419945 m!2448815))

(assert (=> bs!419945 m!2448835))

(declare-fun m!2449133 () Bool)

(assert (=> bs!419945 m!2449133))

(assert (=> bs!419945 m!2448755))

(assert (=> b!2015497 d!615162))

(declare-fun b!2015750 () Bool)

(declare-fun e!1273829 () List!22223)

(assert (=> b!2015750 (= e!1273829 lt!756827)))

(declare-fun b!2015751 () Bool)

(assert (=> b!2015751 (= e!1273829 (Cons!22141 (h!27542 lt!756823) (++!5976 (t!188276 lt!756823) lt!756827)))))

(declare-fun e!1273830 () Bool)

(declare-fun lt!756952 () List!22223)

(declare-fun b!2015753 () Bool)

(assert (=> b!2015753 (= e!1273830 (or (not (= lt!756827 Nil!22141)) (= lt!756952 lt!756823)))))

(declare-fun d!615164 () Bool)

(assert (=> d!615164 e!1273830))

(declare-fun res!884257 () Bool)

(assert (=> d!615164 (=> (not res!884257) (not e!1273830))))

(declare-fun content!3254 (List!22223) (Set C!10950))

(assert (=> d!615164 (= res!884257 (= (content!3254 lt!756952) (set.union (content!3254 lt!756823) (content!3254 lt!756827))))))

(assert (=> d!615164 (= lt!756952 e!1273829)))

(declare-fun c!325608 () Bool)

(assert (=> d!615164 (= c!325608 (is-Nil!22141 lt!756823))))

(assert (=> d!615164 (= (++!5976 lt!756823 lt!756827) lt!756952)))

(declare-fun b!2015752 () Bool)

(declare-fun res!884258 () Bool)

(assert (=> b!2015752 (=> (not res!884258) (not e!1273830))))

(declare-fun size!17301 (List!22223) Int)

(assert (=> b!2015752 (= res!884258 (= (size!17301 lt!756952) (+ (size!17301 lt!756823) (size!17301 lt!756827))))))

(assert (= (and d!615164 c!325608) b!2015750))

(assert (= (and d!615164 (not c!325608)) b!2015751))

(assert (= (and d!615164 res!884257) b!2015752))

(assert (= (and b!2015752 res!884258) b!2015753))

(declare-fun m!2449135 () Bool)

(assert (=> b!2015751 m!2449135))

(declare-fun m!2449137 () Bool)

(assert (=> d!615164 m!2449137))

(declare-fun m!2449139 () Bool)

(assert (=> d!615164 m!2449139))

(declare-fun m!2449141 () Bool)

(assert (=> d!615164 m!2449141))

(declare-fun m!2449143 () Bool)

(assert (=> b!2015752 m!2449143))

(declare-fun m!2449145 () Bool)

(assert (=> b!2015752 m!2449145))

(declare-fun m!2449147 () Bool)

(assert (=> b!2015752 m!2449147))

(assert (=> b!2015497 d!615164))

(declare-fun b!2015754 () Bool)

(declare-fun e!1273831 () List!22223)

(assert (=> b!2015754 (= e!1273831 (++!5976 lt!756827 lt!756821))))

(declare-fun b!2015755 () Bool)

(assert (=> b!2015755 (= e!1273831 (Cons!22141 (h!27542 lt!756823) (++!5976 (t!188276 lt!756823) (++!5976 lt!756827 lt!756821))))))

(declare-fun b!2015757 () Bool)

(declare-fun lt!756953 () List!22223)

(declare-fun e!1273832 () Bool)

(assert (=> b!2015757 (= e!1273832 (or (not (= (++!5976 lt!756827 lt!756821) Nil!22141)) (= lt!756953 lt!756823)))))

(declare-fun d!615166 () Bool)

(assert (=> d!615166 e!1273832))

(declare-fun res!884259 () Bool)

(assert (=> d!615166 (=> (not res!884259) (not e!1273832))))

(assert (=> d!615166 (= res!884259 (= (content!3254 lt!756953) (set.union (content!3254 lt!756823) (content!3254 (++!5976 lt!756827 lt!756821)))))))

(assert (=> d!615166 (= lt!756953 e!1273831)))

(declare-fun c!325609 () Bool)

(assert (=> d!615166 (= c!325609 (is-Nil!22141 lt!756823))))

(assert (=> d!615166 (= (++!5976 lt!756823 (++!5976 lt!756827 lt!756821)) lt!756953)))

(declare-fun b!2015756 () Bool)

(declare-fun res!884260 () Bool)

(assert (=> b!2015756 (=> (not res!884260) (not e!1273832))))

(assert (=> b!2015756 (= res!884260 (= (size!17301 lt!756953) (+ (size!17301 lt!756823) (size!17301 (++!5976 lt!756827 lt!756821)))))))

(assert (= (and d!615166 c!325609) b!2015754))

(assert (= (and d!615166 (not c!325609)) b!2015755))

(assert (= (and d!615166 res!884259) b!2015756))

(assert (= (and b!2015756 res!884260) b!2015757))

(assert (=> b!2015755 m!2448817))

(declare-fun m!2449149 () Bool)

(assert (=> b!2015755 m!2449149))

(declare-fun m!2449151 () Bool)

(assert (=> d!615166 m!2449151))

(assert (=> d!615166 m!2449139))

(assert (=> d!615166 m!2448817))

(declare-fun m!2449153 () Bool)

(assert (=> d!615166 m!2449153))

(declare-fun m!2449155 () Bool)

(assert (=> b!2015756 m!2449155))

(assert (=> b!2015756 m!2449145))

(assert (=> b!2015756 m!2448817))

(declare-fun m!2449157 () Bool)

(assert (=> b!2015756 m!2449157))

(assert (=> b!2015497 d!615166))

(declare-fun d!615168 () Bool)

(assert (=> d!615168 (= (head!4559 lt!756827) (h!27542 lt!756827))))

(assert (=> b!2015497 d!615168))

(declare-fun d!615170 () Bool)

(declare-fun lt!756956 () Bool)

(assert (=> d!615170 (= lt!756956 (set.member lt!756829 (content!3254 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598)))))))))

(declare-fun e!1273837 () Bool)

(assert (=> d!615170 (= lt!756956 e!1273837)))

(declare-fun res!884265 () Bool)

(assert (=> d!615170 (=> (not res!884265) (not e!1273837))))

(assert (=> d!615170 (= res!884265 (is-Cons!22141 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598))))))))

(assert (=> d!615170 (= (contains!4065 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598)))) lt!756829) lt!756956)))

(declare-fun b!2015762 () Bool)

(declare-fun e!1273838 () Bool)

(assert (=> b!2015762 (= e!1273837 e!1273838)))

(declare-fun res!884266 () Bool)

(assert (=> b!2015762 (=> res!884266 e!1273838)))

(assert (=> b!2015762 (= res!884266 (= (h!27542 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598))))) lt!756829))))

(declare-fun b!2015763 () Bool)

(assert (=> b!2015763 (= e!1273838 (contains!4065 (t!188276 (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598))))) lt!756829))))

(assert (= (and d!615170 res!884265) b!2015762))

(assert (= (and b!2015762 (not res!884266)) b!2015763))

(assert (=> d!615170 m!2448815))

(declare-fun m!2449159 () Bool)

(assert (=> d!615170 m!2449159))

(declare-fun m!2449161 () Bool)

(assert (=> d!615170 m!2449161))

(declare-fun m!2449163 () Bool)

(assert (=> b!2015763 m!2449163))

(assert (=> b!2015497 d!615170))

(declare-fun b!2015780 () Bool)

(declare-fun e!1273849 () List!22223)

(declare-fun e!1273848 () List!22223)

(assert (=> b!2015780 (= e!1273849 e!1273848)))

(declare-fun c!325619 () Bool)

(assert (=> b!2015780 (= c!325619 (is-Union!5402 (regex!3977 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun bm!123322 () Bool)

(declare-fun call!123330 () List!22223)

(assert (=> bm!123322 (= call!123330 (usedCharacters!415 (ite c!325619 (regOne!11317 (regex!3977 (rule!6204 (h!27543 tokens!598)))) (regTwo!11316 (regex!3977 (rule!6204 (h!27543 tokens!598)))))))))

(declare-fun b!2015781 () Bool)

(declare-fun e!1273850 () List!22223)

(assert (=> b!2015781 (= e!1273850 (Cons!22141 (c!325569 (regex!3977 (rule!6204 (h!27543 tokens!598)))) Nil!22141))))

(declare-fun b!2015782 () Bool)

(declare-fun e!1273847 () List!22223)

(assert (=> b!2015782 (= e!1273847 e!1273850)))

(declare-fun c!325618 () Bool)

(assert (=> b!2015782 (= c!325618 (is-ElementMatch!5402 (regex!3977 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun b!2015783 () Bool)

(declare-fun call!123329 () List!22223)

(assert (=> b!2015783 (= e!1273848 call!123329)))

(declare-fun bm!123323 () Bool)

(declare-fun call!123328 () List!22223)

(assert (=> bm!123323 (= call!123329 (++!5976 (ite c!325619 call!123330 call!123328) (ite c!325619 call!123328 call!123330)))))

(declare-fun b!2015784 () Bool)

(assert (=> b!2015784 (= e!1273847 Nil!22141)))

(declare-fun d!615172 () Bool)

(declare-fun c!325621 () Bool)

(assert (=> d!615172 (= c!325621 (or (is-EmptyExpr!5402 (regex!3977 (rule!6204 (h!27543 tokens!598)))) (is-EmptyLang!5402 (regex!3977 (rule!6204 (h!27543 tokens!598))))))))

(assert (=> d!615172 (= (usedCharacters!415 (regex!3977 (rule!6204 (h!27543 tokens!598)))) e!1273847)))

(declare-fun b!2015785 () Bool)

(assert (=> b!2015785 (= e!1273848 call!123329)))

(declare-fun b!2015786 () Bool)

(declare-fun call!123327 () List!22223)

(assert (=> b!2015786 (= e!1273849 call!123327)))

(declare-fun bm!123324 () Bool)

(declare-fun c!325620 () Bool)

(assert (=> bm!123324 (= call!123327 (usedCharacters!415 (ite c!325620 (reg!5731 (regex!3977 (rule!6204 (h!27543 tokens!598)))) (ite c!325619 (regTwo!11317 (regex!3977 (rule!6204 (h!27543 tokens!598)))) (regOne!11316 (regex!3977 (rule!6204 (h!27543 tokens!598))))))))))

(declare-fun b!2015787 () Bool)

(assert (=> b!2015787 (= c!325620 (is-Star!5402 (regex!3977 (rule!6204 (h!27543 tokens!598)))))))

(assert (=> b!2015787 (= e!1273850 e!1273849)))

(declare-fun bm!123325 () Bool)

(assert (=> bm!123325 (= call!123328 call!123327)))

(assert (= (and d!615172 c!325621) b!2015784))

(assert (= (and d!615172 (not c!325621)) b!2015782))

(assert (= (and b!2015782 c!325618) b!2015781))

(assert (= (and b!2015782 (not c!325618)) b!2015787))

(assert (= (and b!2015787 c!325620) b!2015786))

(assert (= (and b!2015787 (not c!325620)) b!2015780))

(assert (= (and b!2015780 c!325619) b!2015785))

(assert (= (and b!2015780 (not c!325619)) b!2015783))

(assert (= (or b!2015785 b!2015783) bm!123322))

(assert (= (or b!2015785 b!2015783) bm!123325))

(assert (= (or b!2015785 b!2015783) bm!123323))

(assert (= (or b!2015786 bm!123325) bm!123324))

(declare-fun m!2449165 () Bool)

(assert (=> bm!123322 m!2449165))

(declare-fun m!2449167 () Bool)

(assert (=> bm!123323 m!2449167))

(declare-fun m!2449169 () Bool)

(assert (=> bm!123324 m!2449169))

(assert (=> b!2015497 d!615172))

(declare-fun d!615174 () Bool)

(declare-fun e!1273853 () Bool)

(assert (=> d!615174 e!1273853))

(declare-fun res!884269 () Bool)

(assert (=> d!615174 (=> (not res!884269) (not e!1273853))))

(declare-fun lt!756959 () BalanceConc!14618)

(assert (=> d!615174 (= res!884269 (= (list!9028 lt!756959) (Cons!22142 (h!27543 tokens!598) Nil!22142)))))

(declare-fun singleton!873 (Token!7506) BalanceConc!14618)

(assert (=> d!615174 (= lt!756959 (singleton!873 (h!27543 tokens!598)))))

(assert (=> d!615174 (= (singletonSeq!1953 (h!27543 tokens!598)) lt!756959)))

(declare-fun b!2015790 () Bool)

(declare-fun isBalanced!2302 (Conc!7401) Bool)

(assert (=> b!2015790 (= e!1273853 (isBalanced!2302 (c!325571 lt!756959)))))

(assert (= (and d!615174 res!884269) b!2015790))

(declare-fun m!2449171 () Bool)

(assert (=> d!615174 m!2449171))

(declare-fun m!2449173 () Bool)

(assert (=> d!615174 m!2449173))

(declare-fun m!2449175 () Bool)

(assert (=> b!2015790 m!2449175))

(assert (=> b!2015497 d!615174))

(declare-fun d!615176 () Bool)

(declare-fun list!9029 (Conc!7400) List!22223)

(assert (=> d!615176 (= (list!9026 lt!756825) (list!9029 (c!325570 lt!756825)))))

(declare-fun bs!419946 () Bool)

(assert (= bs!419946 d!615176))

(declare-fun m!2449177 () Bool)

(assert (=> bs!419946 m!2449177))

(assert (=> b!2015497 d!615176))

(declare-fun d!615178 () Bool)

(declare-fun lt!756960 () Bool)

(assert (=> d!615178 (= lt!756960 (set.member lt!756829 (content!3254 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354))))))))

(declare-fun e!1273854 () Bool)

(assert (=> d!615178 (= lt!756960 e!1273854)))

(declare-fun res!884270 () Bool)

(assert (=> d!615178 (=> (not res!884270) (not e!1273854))))

(assert (=> d!615178 (= res!884270 (is-Cons!22141 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354)))))))

(assert (=> d!615178 (= (contains!4065 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354))) lt!756829) lt!756960)))

(declare-fun b!2015791 () Bool)

(declare-fun e!1273855 () Bool)

(assert (=> b!2015791 (= e!1273854 e!1273855)))

(declare-fun res!884271 () Bool)

(assert (=> b!2015791 (=> res!884271 e!1273855)))

(assert (=> b!2015791 (= res!884271 (= (h!27542 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354)))) lt!756829))))

(declare-fun b!2015792 () Bool)

(assert (=> b!2015792 (= e!1273855 (contains!4065 (t!188276 (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354)))) lt!756829))))

(assert (= (and d!615178 res!884270) b!2015791))

(assert (= (and b!2015791 (not res!884271)) b!2015792))

(assert (=> d!615178 m!2448823))

(declare-fun m!2449179 () Bool)

(assert (=> d!615178 m!2449179))

(declare-fun m!2449181 () Bool)

(assert (=> d!615178 m!2449181))

(declare-fun m!2449183 () Bool)

(assert (=> b!2015792 m!2449183))

(assert (=> b!2015497 d!615178))

(declare-fun b!2015793 () Bool)

(declare-fun e!1273856 () List!22223)

(assert (=> b!2015793 (= e!1273856 lt!756821)))

(declare-fun b!2015794 () Bool)

(assert (=> b!2015794 (= e!1273856 (Cons!22141 (h!27542 lt!756827) (++!5976 (t!188276 lt!756827) lt!756821)))))

(declare-fun b!2015796 () Bool)

(declare-fun e!1273857 () Bool)

(declare-fun lt!756961 () List!22223)

(assert (=> b!2015796 (= e!1273857 (or (not (= lt!756821 Nil!22141)) (= lt!756961 lt!756827)))))

(declare-fun d!615180 () Bool)

(assert (=> d!615180 e!1273857))

(declare-fun res!884272 () Bool)

(assert (=> d!615180 (=> (not res!884272) (not e!1273857))))

(assert (=> d!615180 (= res!884272 (= (content!3254 lt!756961) (set.union (content!3254 lt!756827) (content!3254 lt!756821))))))

(assert (=> d!615180 (= lt!756961 e!1273856)))

(declare-fun c!325622 () Bool)

(assert (=> d!615180 (= c!325622 (is-Nil!22141 lt!756827))))

(assert (=> d!615180 (= (++!5976 lt!756827 lt!756821) lt!756961)))

(declare-fun b!2015795 () Bool)

(declare-fun res!884273 () Bool)

(assert (=> b!2015795 (=> (not res!884273) (not e!1273857))))

(assert (=> b!2015795 (= res!884273 (= (size!17301 lt!756961) (+ (size!17301 lt!756827) (size!17301 lt!756821))))))

(assert (= (and d!615180 c!325622) b!2015793))

(assert (= (and d!615180 (not c!325622)) b!2015794))

(assert (= (and d!615180 res!884272) b!2015795))

(assert (= (and b!2015795 res!884273) b!2015796))

(declare-fun m!2449185 () Bool)

(assert (=> b!2015794 m!2449185))

(declare-fun m!2449187 () Bool)

(assert (=> d!615180 m!2449187))

(assert (=> d!615180 m!2449141))

(declare-fun m!2449189 () Bool)

(assert (=> d!615180 m!2449189))

(declare-fun m!2449191 () Bool)

(assert (=> b!2015795 m!2449191))

(assert (=> b!2015795 m!2449147))

(declare-fun m!2449193 () Bool)

(assert (=> b!2015795 m!2449193))

(assert (=> b!2015497 d!615180))

(declare-fun d!615182 () Bool)

(declare-fun c!325625 () Bool)

(assert (=> d!615182 (= c!325625 (is-Cons!22142 (Cons!22142 (h!27543 tokens!598) Nil!22142)))))

(declare-fun e!1273860 () List!22223)

(assert (=> d!615182 (= (printList!1109 thiss!23328 (Cons!22142 (h!27543 tokens!598) Nil!22142)) e!1273860)))

(declare-fun b!2015801 () Bool)

(assert (=> b!2015801 (= e!1273860 (++!5976 (list!9026 (charsOf!2517 (h!27543 (Cons!22142 (h!27543 tokens!598) Nil!22142)))) (printList!1109 thiss!23328 (t!188277 (Cons!22142 (h!27543 tokens!598) Nil!22142)))))))

(declare-fun b!2015802 () Bool)

(assert (=> b!2015802 (= e!1273860 Nil!22141)))

(assert (= (and d!615182 c!325625) b!2015801))

(assert (= (and d!615182 (not c!325625)) b!2015802))

(declare-fun m!2449195 () Bool)

(assert (=> b!2015801 m!2449195))

(assert (=> b!2015801 m!2449195))

(declare-fun m!2449197 () Bool)

(assert (=> b!2015801 m!2449197))

(declare-fun m!2449199 () Bool)

(assert (=> b!2015801 m!2449199))

(assert (=> b!2015801 m!2449197))

(assert (=> b!2015801 m!2449199))

(declare-fun m!2449201 () Bool)

(assert (=> b!2015801 m!2449201))

(assert (=> b!2015497 d!615182))

(declare-fun b!2015803 () Bool)

(declare-fun e!1273863 () List!22223)

(declare-fun e!1273862 () List!22223)

(assert (=> b!2015803 (= e!1273863 e!1273862)))

(declare-fun c!325627 () Bool)

(assert (=> b!2015803 (= c!325627 (is-Union!5402 (regex!3977 (rule!6204 separatorToken!354))))))

(declare-fun bm!123326 () Bool)

(declare-fun call!123334 () List!22223)

(assert (=> bm!123326 (= call!123334 (usedCharacters!415 (ite c!325627 (regOne!11317 (regex!3977 (rule!6204 separatorToken!354))) (regTwo!11316 (regex!3977 (rule!6204 separatorToken!354))))))))

(declare-fun b!2015804 () Bool)

(declare-fun e!1273864 () List!22223)

(assert (=> b!2015804 (= e!1273864 (Cons!22141 (c!325569 (regex!3977 (rule!6204 separatorToken!354))) Nil!22141))))

(declare-fun b!2015805 () Bool)

(declare-fun e!1273861 () List!22223)

(assert (=> b!2015805 (= e!1273861 e!1273864)))

(declare-fun c!325626 () Bool)

(assert (=> b!2015805 (= c!325626 (is-ElementMatch!5402 (regex!3977 (rule!6204 separatorToken!354))))))

(declare-fun b!2015806 () Bool)

(declare-fun call!123333 () List!22223)

(assert (=> b!2015806 (= e!1273862 call!123333)))

(declare-fun bm!123327 () Bool)

(declare-fun call!123332 () List!22223)

(assert (=> bm!123327 (= call!123333 (++!5976 (ite c!325627 call!123334 call!123332) (ite c!325627 call!123332 call!123334)))))

(declare-fun b!2015807 () Bool)

(assert (=> b!2015807 (= e!1273861 Nil!22141)))

(declare-fun d!615184 () Bool)

(declare-fun c!325629 () Bool)

(assert (=> d!615184 (= c!325629 (or (is-EmptyExpr!5402 (regex!3977 (rule!6204 separatorToken!354))) (is-EmptyLang!5402 (regex!3977 (rule!6204 separatorToken!354)))))))

(assert (=> d!615184 (= (usedCharacters!415 (regex!3977 (rule!6204 separatorToken!354))) e!1273861)))

(declare-fun b!2015808 () Bool)

(assert (=> b!2015808 (= e!1273862 call!123333)))

(declare-fun b!2015809 () Bool)

(declare-fun call!123331 () List!22223)

(assert (=> b!2015809 (= e!1273863 call!123331)))

(declare-fun c!325628 () Bool)

(declare-fun bm!123328 () Bool)

(assert (=> bm!123328 (= call!123331 (usedCharacters!415 (ite c!325628 (reg!5731 (regex!3977 (rule!6204 separatorToken!354))) (ite c!325627 (regTwo!11317 (regex!3977 (rule!6204 separatorToken!354))) (regOne!11316 (regex!3977 (rule!6204 separatorToken!354)))))))))

(declare-fun b!2015810 () Bool)

(assert (=> b!2015810 (= c!325628 (is-Star!5402 (regex!3977 (rule!6204 separatorToken!354))))))

(assert (=> b!2015810 (= e!1273864 e!1273863)))

(declare-fun bm!123329 () Bool)

(assert (=> bm!123329 (= call!123332 call!123331)))

(assert (= (and d!615184 c!325629) b!2015807))

(assert (= (and d!615184 (not c!325629)) b!2015805))

(assert (= (and b!2015805 c!325626) b!2015804))

(assert (= (and b!2015805 (not c!325626)) b!2015810))

(assert (= (and b!2015810 c!325628) b!2015809))

(assert (= (and b!2015810 (not c!325628)) b!2015803))

(assert (= (and b!2015803 c!325627) b!2015808))

(assert (= (and b!2015803 (not c!325627)) b!2015806))

(assert (= (or b!2015808 b!2015806) bm!123326))

(assert (= (or b!2015808 b!2015806) bm!123329))

(assert (= (or b!2015808 b!2015806) bm!123327))

(assert (= (or b!2015809 bm!123329) bm!123328))

(declare-fun m!2449203 () Bool)

(assert (=> bm!123326 m!2449203))

(declare-fun m!2449205 () Bool)

(assert (=> bm!123327 m!2449205))

(declare-fun m!2449207 () Bool)

(assert (=> bm!123328 m!2449207))

(assert (=> b!2015497 d!615184))

(declare-fun b!2015811 () Bool)

(declare-fun e!1273865 () List!22223)

(assert (=> b!2015811 (= e!1273865 lt!756821)))

(declare-fun b!2015812 () Bool)

(assert (=> b!2015812 (= e!1273865 (Cons!22141 (h!27542 (++!5976 lt!756823 lt!756827)) (++!5976 (t!188276 (++!5976 lt!756823 lt!756827)) lt!756821)))))

(declare-fun lt!756962 () List!22223)

(declare-fun e!1273866 () Bool)

(declare-fun b!2015814 () Bool)

(assert (=> b!2015814 (= e!1273866 (or (not (= lt!756821 Nil!22141)) (= lt!756962 (++!5976 lt!756823 lt!756827))))))

(declare-fun d!615186 () Bool)

(assert (=> d!615186 e!1273866))

(declare-fun res!884274 () Bool)

(assert (=> d!615186 (=> (not res!884274) (not e!1273866))))

(assert (=> d!615186 (= res!884274 (= (content!3254 lt!756962) (set.union (content!3254 (++!5976 lt!756823 lt!756827)) (content!3254 lt!756821))))))

(assert (=> d!615186 (= lt!756962 e!1273865)))

(declare-fun c!325630 () Bool)

(assert (=> d!615186 (= c!325630 (is-Nil!22141 (++!5976 lt!756823 lt!756827)))))

(assert (=> d!615186 (= (++!5976 (++!5976 lt!756823 lt!756827) lt!756821) lt!756962)))

(declare-fun b!2015813 () Bool)

(declare-fun res!884275 () Bool)

(assert (=> b!2015813 (=> (not res!884275) (not e!1273866))))

(assert (=> b!2015813 (= res!884275 (= (size!17301 lt!756962) (+ (size!17301 (++!5976 lt!756823 lt!756827)) (size!17301 lt!756821))))))

(assert (= (and d!615186 c!325630) b!2015811))

(assert (= (and d!615186 (not c!325630)) b!2015812))

(assert (= (and d!615186 res!884274) b!2015813))

(assert (= (and b!2015813 res!884275) b!2015814))

(declare-fun m!2449209 () Bool)

(assert (=> b!2015812 m!2449209))

(declare-fun m!2449211 () Bool)

(assert (=> d!615186 m!2449211))

(assert (=> d!615186 m!2448811))

(declare-fun m!2449213 () Bool)

(assert (=> d!615186 m!2449213))

(assert (=> d!615186 m!2449189))

(declare-fun m!2449215 () Bool)

(assert (=> b!2015813 m!2449215))

(assert (=> b!2015813 m!2448811))

(declare-fun m!2449217 () Bool)

(assert (=> b!2015813 m!2449217))

(assert (=> b!2015813 m!2449193))

(assert (=> b!2015497 d!615186))

(declare-fun d!615188 () Bool)

(assert (=> d!615188 (= (++!5976 (++!5976 lt!756823 lt!756827) lt!756821) (++!5976 lt!756823 (++!5976 lt!756827 lt!756821)))))

(declare-fun lt!756965 () Unit!36731)

(declare-fun choose!12280 (List!22223 List!22223 List!22223) Unit!36731)

(assert (=> d!615188 (= lt!756965 (choose!12280 lt!756823 lt!756827 lt!756821))))

(assert (=> d!615188 (= (lemmaConcatAssociativity!1240 lt!756823 lt!756827 lt!756821) lt!756965)))

(declare-fun bs!419947 () Bool)

(assert (= bs!419947 d!615188))

(assert (=> bs!419947 m!2448811))

(assert (=> bs!419947 m!2448813))

(declare-fun m!2449219 () Bool)

(assert (=> bs!419947 m!2449219))

(assert (=> bs!419947 m!2448817))

(assert (=> bs!419947 m!2448819))

(assert (=> bs!419947 m!2448817))

(assert (=> bs!419947 m!2448811))

(assert (=> b!2015497 d!615188))

(declare-fun d!615190 () Bool)

(declare-fun lt!756968 () BalanceConc!14616)

(assert (=> d!615190 (= (list!9026 lt!756968) (printList!1109 thiss!23328 (list!9028 lt!756835)))))

(assert (=> d!615190 (= lt!756968 (printTailRec!1058 thiss!23328 lt!756835 0 (BalanceConc!14617 Empty!7400)))))

(assert (=> d!615190 (= (print!1552 thiss!23328 lt!756835) lt!756968)))

(declare-fun bs!419948 () Bool)

(assert (= bs!419948 d!615190))

(declare-fun m!2449221 () Bool)

(assert (=> bs!419948 m!2449221))

(assert (=> bs!419948 m!2449111))

(assert (=> bs!419948 m!2449111))

(declare-fun m!2449223 () Bool)

(assert (=> bs!419948 m!2449223))

(assert (=> bs!419948 m!2448837))

(assert (=> b!2015497 d!615190))

(declare-fun bs!419949 () Bool)

(declare-fun d!615192 () Bool)

(assert (= bs!419949 (and d!615192 b!2015510)))

(declare-fun lambda!76258 () Int)

(assert (=> bs!419949 (not (= lambda!76258 lambda!76252))))

(declare-fun b!2015844 () Bool)

(declare-fun e!1273891 () Bool)

(assert (=> b!2015844 (= e!1273891 true)))

(declare-fun b!2015843 () Bool)

(declare-fun e!1273890 () Bool)

(assert (=> b!2015843 (= e!1273890 e!1273891)))

(declare-fun b!2015842 () Bool)

(declare-fun e!1273889 () Bool)

(assert (=> b!2015842 (= e!1273889 e!1273890)))

(assert (=> d!615192 e!1273889))

(assert (= b!2015843 b!2015844))

(assert (= b!2015842 b!2015843))

(assert (= (and d!615192 (is-Cons!22143 rules!3198)) b!2015842))

(declare-fun order!14113 () Int)

(declare-fun order!14115 () Int)

(declare-fun dynLambda!10950 (Int Int) Int)

(declare-fun dynLambda!10951 (Int Int) Int)

(assert (=> b!2015844 (< (dynLambda!10950 order!14113 (toValue!5646 (transformation!3977 (h!27544 rules!3198)))) (dynLambda!10951 order!14115 lambda!76258))))

(declare-fun order!14117 () Int)

(declare-fun dynLambda!10952 (Int Int) Int)

(assert (=> b!2015844 (< (dynLambda!10952 order!14117 (toChars!5505 (transformation!3977 (h!27544 rules!3198)))) (dynLambda!10951 order!14115 lambda!76258))))

(assert (=> d!615192 true))

(declare-fun lt!756979 () Bool)

(assert (=> d!615192 (= lt!756979 (forall!4705 tokens!598 lambda!76258))))

(declare-fun e!1273881 () Bool)

(assert (=> d!615192 (= lt!756979 e!1273881)))

(declare-fun res!884294 () Bool)

(assert (=> d!615192 (=> res!884294 e!1273881)))

(assert (=> d!615192 (= res!884294 (not (is-Cons!22142 tokens!598)))))

(assert (=> d!615192 (not (isEmpty!13762 rules!3198))))

(assert (=> d!615192 (= (rulesProduceEachTokenIndividuallyList!1321 thiss!23328 rules!3198 tokens!598) lt!756979)))

(declare-fun b!2015832 () Bool)

(declare-fun e!1273882 () Bool)

(assert (=> b!2015832 (= e!1273881 e!1273882)))

(declare-fun res!884293 () Bool)

(assert (=> b!2015832 (=> (not res!884293) (not e!1273882))))

(assert (=> b!2015832 (= res!884293 (rulesProduceIndividualToken!1762 thiss!23328 rules!3198 (h!27543 tokens!598)))))

(declare-fun b!2015833 () Bool)

(assert (=> b!2015833 (= e!1273882 (rulesProduceEachTokenIndividuallyList!1321 thiss!23328 rules!3198 (t!188277 tokens!598)))))

(assert (= (and d!615192 (not res!884294)) b!2015832))

(assert (= (and b!2015832 res!884293) b!2015833))

(declare-fun m!2449241 () Bool)

(assert (=> d!615192 m!2449241))

(assert (=> d!615192 m!2448867))

(assert (=> b!2015832 m!2448851))

(declare-fun m!2449243 () Bool)

(assert (=> b!2015833 m!2449243))

(assert (=> b!2015501 d!615192))

(declare-fun d!615196 () Bool)

(declare-fun e!1273894 () Bool)

(assert (=> d!615196 e!1273894))

(declare-fun res!884299 () Bool)

(assert (=> d!615196 (=> (not res!884299) (not e!1273894))))

(assert (=> d!615196 (= res!884299 (isDefined!3923 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 separatorToken!354)))))))

(declare-fun lt!756982 () Unit!36731)

(declare-fun choose!12281 (LexerInterface!3590 List!22225 List!22223 Token!7506) Unit!36731)

(assert (=> d!615196 (= lt!756982 (choose!12281 thiss!23328 rules!3198 lt!756827 separatorToken!354))))

(assert (=> d!615196 (rulesInvariant!3197 thiss!23328 rules!3198)))

(assert (=> d!615196 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!792 thiss!23328 rules!3198 lt!756827 separatorToken!354) lt!756982)))

(declare-fun b!2015851 () Bool)

(declare-fun res!884300 () Bool)

(assert (=> b!2015851 (=> (not res!884300) (not e!1273894))))

(assert (=> b!2015851 (= res!884300 (matchR!2668 (regex!3977 (get!7015 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 separatorToken!354))))) (list!9026 (charsOf!2517 separatorToken!354))))))

(declare-fun b!2015852 () Bool)

(assert (=> b!2015852 (= e!1273894 (= (rule!6204 separatorToken!354) (get!7015 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 separatorToken!354))))))))

(assert (= (and d!615196 res!884299) b!2015851))

(assert (= (and b!2015851 res!884300) b!2015852))

(assert (=> d!615196 m!2448771))

(assert (=> d!615196 m!2448771))

(declare-fun m!2449245 () Bool)

(assert (=> d!615196 m!2449245))

(declare-fun m!2449247 () Bool)

(assert (=> d!615196 m!2449247))

(assert (=> d!615196 m!2448755))

(assert (=> b!2015851 m!2448775))

(assert (=> b!2015851 m!2448777))

(assert (=> b!2015851 m!2448777))

(declare-fun m!2449249 () Bool)

(assert (=> b!2015851 m!2449249))

(assert (=> b!2015851 m!2448771))

(assert (=> b!2015851 m!2448775))

(assert (=> b!2015851 m!2448771))

(declare-fun m!2449251 () Bool)

(assert (=> b!2015851 m!2449251))

(assert (=> b!2015852 m!2448771))

(assert (=> b!2015852 m!2448771))

(assert (=> b!2015852 m!2449251))

(assert (=> b!2015512 d!615196))

(declare-fun b!2015871 () Bool)

(declare-fun e!1273902 () Bool)

(declare-fun lt!756995 () Option!4636)

(assert (=> b!2015871 (= e!1273902 (contains!4066 rules!3198 (rule!6204 (_1!11872 (get!7016 lt!756995)))))))

(declare-fun b!2015872 () Bool)

(declare-fun res!884318 () Bool)

(assert (=> b!2015872 (=> (not res!884318) (not e!1273902))))

(assert (=> b!2015872 (= res!884318 (= (++!5976 (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!756995)))) (_2!11872 (get!7016 lt!756995))) lt!756823))))

(declare-fun b!2015873 () Bool)

(declare-fun res!884315 () Bool)

(assert (=> b!2015873 (=> (not res!884315) (not e!1273902))))

(assert (=> b!2015873 (= res!884315 (= (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!756995)))) (originalCharacters!4784 (_1!11872 (get!7016 lt!756995)))))))

(declare-fun d!615198 () Bool)

(declare-fun e!1273903 () Bool)

(assert (=> d!615198 e!1273903))

(declare-fun res!884320 () Bool)

(assert (=> d!615198 (=> res!884320 e!1273903)))

(declare-fun isEmpty!13768 (Option!4636) Bool)

(assert (=> d!615198 (= res!884320 (isEmpty!13768 lt!756995))))

(declare-fun e!1273901 () Option!4636)

(assert (=> d!615198 (= lt!756995 e!1273901)))

(declare-fun c!325633 () Bool)

(assert (=> d!615198 (= c!325633 (and (is-Cons!22143 rules!3198) (is-Nil!22143 (t!188278 rules!3198))))))

(declare-fun lt!756993 () Unit!36731)

(declare-fun lt!756997 () Unit!36731)

(assert (=> d!615198 (= lt!756993 lt!756997)))

(declare-fun isPrefix!1974 (List!22223 List!22223) Bool)

(assert (=> d!615198 (isPrefix!1974 lt!756823 lt!756823)))

(declare-fun lemmaIsPrefixRefl!1292 (List!22223 List!22223) Unit!36731)

(assert (=> d!615198 (= lt!756997 (lemmaIsPrefixRefl!1292 lt!756823 lt!756823))))

(declare-fun rulesValidInductive!1373 (LexerInterface!3590 List!22225) Bool)

(assert (=> d!615198 (rulesValidInductive!1373 thiss!23328 rules!3198)))

(assert (=> d!615198 (= (maxPrefix!2026 thiss!23328 rules!3198 lt!756823) lt!756995)))

(declare-fun b!2015874 () Bool)

(declare-fun res!884321 () Bool)

(assert (=> b!2015874 (=> (not res!884321) (not e!1273902))))

(assert (=> b!2015874 (= res!884321 (matchR!2668 (regex!3977 (rule!6204 (_1!11872 (get!7016 lt!756995)))) (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!756995))))))))

(declare-fun b!2015875 () Bool)

(declare-fun call!123337 () Option!4636)

(assert (=> b!2015875 (= e!1273901 call!123337)))

(declare-fun b!2015876 () Bool)

(declare-fun res!884316 () Bool)

(assert (=> b!2015876 (=> (not res!884316) (not e!1273902))))

(declare-fun apply!5814 (TokenValueInjection!7810 BalanceConc!14616) TokenValue!4113)

(assert (=> b!2015876 (= res!884316 (= (value!124937 (_1!11872 (get!7016 lt!756995))) (apply!5814 (transformation!3977 (rule!6204 (_1!11872 (get!7016 lt!756995)))) (seqFromList!2831 (originalCharacters!4784 (_1!11872 (get!7016 lt!756995)))))))))

(declare-fun b!2015877 () Bool)

(declare-fun res!884319 () Bool)

(assert (=> b!2015877 (=> (not res!884319) (not e!1273902))))

(assert (=> b!2015877 (= res!884319 (< (size!17301 (_2!11872 (get!7016 lt!756995))) (size!17301 lt!756823)))))

(declare-fun b!2015878 () Bool)

(declare-fun lt!756996 () Option!4636)

(declare-fun lt!756994 () Option!4636)

(assert (=> b!2015878 (= e!1273901 (ite (and (is-None!4635 lt!756996) (is-None!4635 lt!756994)) None!4635 (ite (is-None!4635 lt!756994) lt!756996 (ite (is-None!4635 lt!756996) lt!756994 (ite (>= (size!17297 (_1!11872 (v!26908 lt!756996))) (size!17297 (_1!11872 (v!26908 lt!756994)))) lt!756996 lt!756994)))))))

(assert (=> b!2015878 (= lt!756996 call!123337)))

(assert (=> b!2015878 (= lt!756994 (maxPrefix!2026 thiss!23328 (t!188278 rules!3198) lt!756823))))

(declare-fun bm!123332 () Bool)

(declare-fun maxPrefixOneRule!1256 (LexerInterface!3590 Rule!7754 List!22223) Option!4636)

(assert (=> bm!123332 (= call!123337 (maxPrefixOneRule!1256 thiss!23328 (h!27544 rules!3198) lt!756823))))

(declare-fun b!2015879 () Bool)

(assert (=> b!2015879 (= e!1273903 e!1273902)))

(declare-fun res!884317 () Bool)

(assert (=> b!2015879 (=> (not res!884317) (not e!1273902))))

(assert (=> b!2015879 (= res!884317 (isDefined!3924 lt!756995))))

(assert (= (and d!615198 c!325633) b!2015875))

(assert (= (and d!615198 (not c!325633)) b!2015878))

(assert (= (or b!2015875 b!2015878) bm!123332))

(assert (= (and d!615198 (not res!884320)) b!2015879))

(assert (= (and b!2015879 res!884317) b!2015873))

(assert (= (and b!2015873 res!884315) b!2015877))

(assert (= (and b!2015877 res!884319) b!2015872))

(assert (= (and b!2015872 res!884318) b!2015876))

(assert (= (and b!2015876 res!884316) b!2015874))

(assert (= (and b!2015874 res!884321) b!2015871))

(declare-fun m!2449253 () Bool)

(assert (=> b!2015871 m!2449253))

(declare-fun m!2449255 () Bool)

(assert (=> b!2015871 m!2449255))

(assert (=> b!2015876 m!2449253))

(declare-fun m!2449257 () Bool)

(assert (=> b!2015876 m!2449257))

(assert (=> b!2015876 m!2449257))

(declare-fun m!2449259 () Bool)

(assert (=> b!2015876 m!2449259))

(declare-fun m!2449261 () Bool)

(assert (=> bm!123332 m!2449261))

(declare-fun m!2449263 () Bool)

(assert (=> b!2015878 m!2449263))

(assert (=> b!2015872 m!2449253))

(declare-fun m!2449265 () Bool)

(assert (=> b!2015872 m!2449265))

(assert (=> b!2015872 m!2449265))

(declare-fun m!2449267 () Bool)

(assert (=> b!2015872 m!2449267))

(assert (=> b!2015872 m!2449267))

(declare-fun m!2449269 () Bool)

(assert (=> b!2015872 m!2449269))

(declare-fun m!2449271 () Bool)

(assert (=> d!615198 m!2449271))

(declare-fun m!2449273 () Bool)

(assert (=> d!615198 m!2449273))

(declare-fun m!2449275 () Bool)

(assert (=> d!615198 m!2449275))

(declare-fun m!2449277 () Bool)

(assert (=> d!615198 m!2449277))

(assert (=> b!2015873 m!2449253))

(assert (=> b!2015873 m!2449265))

(assert (=> b!2015873 m!2449265))

(assert (=> b!2015873 m!2449267))

(assert (=> b!2015877 m!2449253))

(declare-fun m!2449279 () Bool)

(assert (=> b!2015877 m!2449279))

(assert (=> b!2015877 m!2449145))

(declare-fun m!2449281 () Bool)

(assert (=> b!2015879 m!2449281))

(assert (=> b!2015874 m!2449253))

(assert (=> b!2015874 m!2449265))

(assert (=> b!2015874 m!2449265))

(assert (=> b!2015874 m!2449267))

(assert (=> b!2015874 m!2449267))

(declare-fun m!2449283 () Bool)

(assert (=> b!2015874 m!2449283))

(assert (=> b!2015512 d!615198))

(declare-fun d!615200 () Bool)

(assert (=> d!615200 (= (isDefined!3924 lt!756837) (not (isEmpty!13768 lt!756837)))))

(declare-fun bs!419950 () Bool)

(assert (= bs!419950 d!615200))

(declare-fun m!2449285 () Bool)

(assert (=> bs!419950 m!2449285))

(assert (=> b!2015512 d!615200))

(declare-fun b!2015886 () Bool)

(declare-fun e!1273908 () Bool)

(assert (=> b!2015886 (= e!1273908 true)))

(declare-fun d!615202 () Bool)

(assert (=> d!615202 e!1273908))

(assert (= d!615202 b!2015886))

(declare-fun lambda!76261 () Int)

(declare-fun order!14119 () Int)

(declare-fun dynLambda!10953 (Int Int) Int)

(assert (=> b!2015886 (< (dynLambda!10950 order!14113 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) (dynLambda!10953 order!14119 lambda!76261))))

(assert (=> b!2015886 (< (dynLambda!10952 order!14117 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) (dynLambda!10953 order!14119 lambda!76261))))

(declare-fun dynLambda!10954 (Int BalanceConc!14616) TokenValue!4113)

(assert (=> d!615202 (= (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) lt!756834) (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598)))))))

(declare-fun lt!757000 () Unit!36731)

(declare-fun Forall2of!234 (Int BalanceConc!14616 BalanceConc!14616) Unit!36731)

(assert (=> d!615202 (= lt!757000 (Forall2of!234 lambda!76261 lt!756834 (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598)))))))

(assert (=> d!615202 (= (list!9026 lt!756834) (list!9026 (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598)))))))

(assert (=> d!615202 (= (lemmaEqSameImage!663 (transformation!3977 (rule!6204 (h!27543 tokens!598))) lt!756834 (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598)))) lt!757000)))

(declare-fun b_lambda!67495 () Bool)

(assert (=> (not b_lambda!67495) (not d!615202)))

(declare-fun t!188290 () Bool)

(declare-fun tb!126145 () Bool)

(assert (=> (and b!2015503 (= (toValue!5646 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188290) tb!126145))

(declare-fun result!151160 () Bool)

(assert (=> tb!126145 (= result!151160 (inv!21 (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) lt!756834)))))

(declare-fun m!2449287 () Bool)

(assert (=> tb!126145 m!2449287))

(assert (=> d!615202 t!188290))

(declare-fun b_and!159641 () Bool)

(assert (= b_and!159617 (and (=> t!188290 result!151160) b_and!159641)))

(declare-fun t!188292 () Bool)

(declare-fun tb!126147 () Bool)

(assert (=> (and b!2015515 (= (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188292) tb!126147))

(declare-fun result!151164 () Bool)

(assert (= result!151164 result!151160))

(assert (=> d!615202 t!188292))

(declare-fun b_and!159643 () Bool)

(assert (= b_and!159621 (and (=> t!188292 result!151164) b_and!159643)))

(declare-fun t!188294 () Bool)

(declare-fun tb!126149 () Bool)

(assert (=> (and b!2015508 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188294) tb!126149))

(declare-fun result!151166 () Bool)

(assert (= result!151166 result!151160))

(assert (=> d!615202 t!188294))

(declare-fun b_and!159645 () Bool)

(assert (= b_and!159625 (and (=> t!188294 result!151166) b_and!159645)))

(declare-fun b_lambda!67497 () Bool)

(assert (=> (not b_lambda!67497) (not d!615202)))

(declare-fun tb!126151 () Bool)

(declare-fun t!188296 () Bool)

(assert (=> (and b!2015503 (= (toValue!5646 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188296) tb!126151))

(declare-fun result!151168 () Bool)

(assert (=> tb!126151 (= result!151168 (inv!21 (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598))))))))

(declare-fun m!2449289 () Bool)

(assert (=> tb!126151 m!2449289))

(assert (=> d!615202 t!188296))

(declare-fun b_and!159647 () Bool)

(assert (= b_and!159641 (and (=> t!188296 result!151168) b_and!159647)))

(declare-fun tb!126153 () Bool)

(declare-fun t!188298 () Bool)

(assert (=> (and b!2015515 (= (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188298) tb!126153))

(declare-fun result!151170 () Bool)

(assert (= result!151170 result!151168))

(assert (=> d!615202 t!188298))

(declare-fun b_and!159649 () Bool)

(assert (= b_and!159643 (and (=> t!188298 result!151170) b_and!159649)))

(declare-fun t!188300 () Bool)

(declare-fun tb!126155 () Bool)

(assert (=> (and b!2015508 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188300) tb!126155))

(declare-fun result!151172 () Bool)

(assert (= result!151172 result!151168))

(assert (=> d!615202 t!188300))

(declare-fun b_and!159651 () Bool)

(assert (= b_and!159645 (and (=> t!188300 result!151172) b_and!159651)))

(assert (=> d!615202 m!2448783))

(assert (=> d!615202 m!2448761))

(declare-fun m!2449291 () Bool)

(assert (=> d!615202 m!2449291))

(declare-fun m!2449293 () Bool)

(assert (=> d!615202 m!2449293))

(assert (=> d!615202 m!2448761))

(declare-fun m!2449295 () Bool)

(assert (=> d!615202 m!2449295))

(assert (=> d!615202 m!2448761))

(declare-fun m!2449297 () Bool)

(assert (=> d!615202 m!2449297))

(assert (=> b!2015512 d!615202))

(declare-fun d!615204 () Bool)

(declare-fun e!1273913 () Bool)

(assert (=> d!615204 e!1273913))

(declare-fun res!884324 () Bool)

(assert (=> d!615204 (=> (not res!884324) (not e!1273913))))

(assert (=> d!615204 (= res!884324 (isDefined!3923 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 (h!27543 tokens!598))))))))

(declare-fun lt!757001 () Unit!36731)

(assert (=> d!615204 (= lt!757001 (choose!12281 thiss!23328 rules!3198 lt!756823 (h!27543 tokens!598)))))

(assert (=> d!615204 (rulesInvariant!3197 thiss!23328 rules!3198)))

(assert (=> d!615204 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!792 thiss!23328 rules!3198 lt!756823 (h!27543 tokens!598)) lt!757001)))

(declare-fun b!2015889 () Bool)

(declare-fun res!884325 () Bool)

(assert (=> b!2015889 (=> (not res!884325) (not e!1273913))))

(assert (=> b!2015889 (= res!884325 (matchR!2668 (regex!3977 (get!7015 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 (h!27543 tokens!598)))))) (list!9026 (charsOf!2517 (h!27543 tokens!598)))))))

(declare-fun b!2015890 () Bool)

(assert (=> b!2015890 (= e!1273913 (= (rule!6204 (h!27543 tokens!598)) (get!7015 (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 (h!27543 tokens!598)))))))))

(assert (= (and d!615204 res!884324) b!2015889))

(assert (= (and b!2015889 res!884325) b!2015890))

(assert (=> d!615204 m!2448779))

(assert (=> d!615204 m!2448779))

(declare-fun m!2449299 () Bool)

(assert (=> d!615204 m!2449299))

(declare-fun m!2449301 () Bool)

(assert (=> d!615204 m!2449301))

(assert (=> d!615204 m!2448755))

(assert (=> b!2015889 m!2448791))

(declare-fun m!2449303 () Bool)

(assert (=> b!2015889 m!2449303))

(assert (=> b!2015889 m!2449303))

(declare-fun m!2449305 () Bool)

(assert (=> b!2015889 m!2449305))

(assert (=> b!2015889 m!2448779))

(assert (=> b!2015889 m!2448791))

(assert (=> b!2015889 m!2448779))

(declare-fun m!2449307 () Bool)

(assert (=> b!2015889 m!2449307))

(assert (=> b!2015890 m!2448779))

(assert (=> b!2015890 m!2448779))

(assert (=> b!2015890 m!2449307))

(assert (=> b!2015512 d!615204))

(declare-fun bs!419955 () Bool)

(declare-fun b!2015966 () Bool)

(assert (= bs!419955 (and b!2015966 b!2015510)))

(declare-fun lambda!76270 () Int)

(assert (=> bs!419955 (not (= lambda!76270 lambda!76252))))

(declare-fun bs!419956 () Bool)

(assert (= bs!419956 (and b!2015966 d!615192)))

(assert (=> bs!419956 (= lambda!76270 lambda!76258)))

(declare-fun b!2015970 () Bool)

(declare-fun e!1273964 () Bool)

(assert (=> b!2015970 (= e!1273964 true)))

(declare-fun b!2015969 () Bool)

(declare-fun e!1273963 () Bool)

(assert (=> b!2015969 (= e!1273963 e!1273964)))

(declare-fun b!2015968 () Bool)

(declare-fun e!1273962 () Bool)

(assert (=> b!2015968 (= e!1273962 e!1273963)))

(assert (=> b!2015966 e!1273962))

(assert (= b!2015969 b!2015970))

(assert (= b!2015968 b!2015969))

(assert (= (and b!2015966 (is-Cons!22143 rules!3198)) b!2015968))

(assert (=> b!2015970 (< (dynLambda!10950 order!14113 (toValue!5646 (transformation!3977 (h!27544 rules!3198)))) (dynLambda!10951 order!14115 lambda!76270))))

(assert (=> b!2015970 (< (dynLambda!10952 order!14117 (toChars!5505 (transformation!3977 (h!27544 rules!3198)))) (dynLambda!10951 order!14115 lambda!76270))))

(assert (=> b!2015966 true))

(declare-fun b!2015960 () Bool)

(declare-fun e!1273958 () List!22223)

(assert (=> b!2015960 (= e!1273958 (list!9026 (charsOf!2517 (h!27543 (t!188277 tokens!598)))))))

(declare-fun b!2015961 () Bool)

(declare-fun e!1273959 () List!22223)

(declare-fun call!123350 () List!22223)

(declare-fun lt!757027 () List!22223)

(assert (=> b!2015961 (= e!1273959 (++!5976 call!123350 lt!757027))))

(declare-fun b!2015962 () Bool)

(declare-fun c!325649 () Bool)

(declare-fun lt!757030 () Option!4636)

(assert (=> b!2015962 (= c!325649 (and (is-Some!4635 lt!757030) (not (= (_1!11872 (v!26908 lt!757030)) (h!27543 (t!188277 tokens!598))))))))

(declare-fun e!1273960 () List!22223)

(assert (=> b!2015962 (= e!1273960 e!1273959)))

(declare-fun d!615206 () Bool)

(declare-fun c!325646 () Bool)

(assert (=> d!615206 (= c!325646 (is-Cons!22142 (t!188277 tokens!598)))))

(declare-fun e!1273961 () List!22223)

(assert (=> d!615206 (= (printWithSeparatorTokenWhenNeededList!619 thiss!23328 rules!3198 (t!188277 tokens!598) separatorToken!354) e!1273961)))

(declare-fun call!123349 () BalanceConc!14616)

(declare-fun c!325648 () Bool)

(declare-fun bm!123343 () Bool)

(assert (=> bm!123343 (= call!123349 (charsOf!2517 (ite c!325648 (h!27543 (t!188277 tokens!598)) (ite c!325649 separatorToken!354 (h!27543 (t!188277 tokens!598))))))))

(declare-fun bm!123344 () Bool)

(declare-fun call!123348 () List!22223)

(declare-fun call!123352 () List!22223)

(assert (=> bm!123344 (= call!123348 call!123352)))

(declare-fun bm!123345 () Bool)

(declare-fun call!123351 () BalanceConc!14616)

(assert (=> bm!123345 (= call!123351 call!123349)))

(declare-fun b!2015963 () Bool)

(assert (=> b!2015963 (= e!1273958 call!123352)))

(declare-fun bm!123346 () Bool)

(assert (=> bm!123346 (= call!123352 (list!9026 (ite c!325648 call!123349 call!123351)))))

(declare-fun b!2015964 () Bool)

(assert (=> b!2015964 (= e!1273960 call!123350)))

(declare-fun b!2015965 () Bool)

(assert (=> b!2015965 (= e!1273959 Nil!22141)))

(assert (=> b!2015965 (= (print!1552 thiss!23328 (singletonSeq!1953 (h!27543 (t!188277 tokens!598)))) (printTailRec!1058 thiss!23328 (singletonSeq!1953 (h!27543 (t!188277 tokens!598))) 0 (BalanceConc!14617 Empty!7400)))))

(declare-fun lt!757032 () Unit!36731)

(declare-fun Unit!36740 () Unit!36731)

(assert (=> b!2015965 (= lt!757032 Unit!36740)))

(declare-fun lt!757029 () Unit!36731)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!768 (LexerInterface!3590 List!22225 List!22223 List!22223) Unit!36731)

(assert (=> b!2015965 (= lt!757029 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!768 thiss!23328 rules!3198 call!123348 lt!757027))))

(assert (=> b!2015965 false))

(declare-fun lt!757028 () Unit!36731)

(declare-fun Unit!36741 () Unit!36731)

(assert (=> b!2015965 (= lt!757028 Unit!36741)))

(assert (=> b!2015966 (= e!1273961 e!1273960)))

(declare-fun lt!757031 () Unit!36731)

(declare-fun forallContained!737 (List!22224 Int Token!7506) Unit!36731)

(assert (=> b!2015966 (= lt!757031 (forallContained!737 (t!188277 tokens!598) lambda!76270 (h!27543 (t!188277 tokens!598))))))

(assert (=> b!2015966 (= lt!757027 (printWithSeparatorTokenWhenNeededList!619 thiss!23328 rules!3198 (t!188277 (t!188277 tokens!598)) separatorToken!354))))

(assert (=> b!2015966 (= lt!757030 (maxPrefix!2026 thiss!23328 rules!3198 (++!5976 (list!9026 (charsOf!2517 (h!27543 (t!188277 tokens!598)))) lt!757027)))))

(assert (=> b!2015966 (= c!325648 (and (is-Some!4635 lt!757030) (= (_1!11872 (v!26908 lt!757030)) (h!27543 (t!188277 tokens!598)))))))

(declare-fun bm!123347 () Bool)

(declare-fun c!325647 () Bool)

(assert (=> bm!123347 (= c!325647 c!325648)))

(assert (=> bm!123347 (= call!123350 (++!5976 e!1273958 (ite c!325648 lt!757027 call!123348)))))

(declare-fun b!2015967 () Bool)

(assert (=> b!2015967 (= e!1273961 Nil!22141)))

(assert (= (and d!615206 c!325646) b!2015966))

(assert (= (and d!615206 (not c!325646)) b!2015967))

(assert (= (and b!2015966 c!325648) b!2015964))

(assert (= (and b!2015966 (not c!325648)) b!2015962))

(assert (= (and b!2015962 c!325649) b!2015961))

(assert (= (and b!2015962 (not c!325649)) b!2015965))

(assert (= (or b!2015961 b!2015965) bm!123345))

(assert (= (or b!2015961 b!2015965) bm!123344))

(assert (= (or b!2015964 bm!123345) bm!123343))

(assert (= (or b!2015964 bm!123344) bm!123346))

(assert (= (or b!2015964 b!2015961) bm!123347))

(assert (= (and bm!123347 c!325647) b!2015963))

(assert (= (and bm!123347 (not c!325647)) b!2015960))

(declare-fun m!2449381 () Bool)

(assert (=> bm!123343 m!2449381))

(declare-fun m!2449383 () Bool)

(assert (=> b!2015960 m!2449383))

(assert (=> b!2015960 m!2449383))

(declare-fun m!2449385 () Bool)

(assert (=> b!2015960 m!2449385))

(declare-fun m!2449387 () Bool)

(assert (=> bm!123346 m!2449387))

(declare-fun m!2449389 () Bool)

(assert (=> bm!123347 m!2449389))

(declare-fun m!2449391 () Bool)

(assert (=> b!2015961 m!2449391))

(declare-fun m!2449393 () Bool)

(assert (=> b!2015965 m!2449393))

(assert (=> b!2015965 m!2449393))

(declare-fun m!2449395 () Bool)

(assert (=> b!2015965 m!2449395))

(assert (=> b!2015965 m!2449393))

(declare-fun m!2449397 () Bool)

(assert (=> b!2015965 m!2449397))

(declare-fun m!2449399 () Bool)

(assert (=> b!2015965 m!2449399))

(declare-fun m!2449401 () Bool)

(assert (=> b!2015966 m!2449401))

(declare-fun m!2449403 () Bool)

(assert (=> b!2015966 m!2449403))

(assert (=> b!2015966 m!2449385))

(assert (=> b!2015966 m!2449401))

(declare-fun m!2449405 () Bool)

(assert (=> b!2015966 m!2449405))

(assert (=> b!2015966 m!2449383))

(assert (=> b!2015966 m!2449385))

(declare-fun m!2449407 () Bool)

(assert (=> b!2015966 m!2449407))

(assert (=> b!2015966 m!2449383))

(assert (=> b!2015512 d!615206))

(declare-fun d!615232 () Bool)

(assert (=> d!615232 (= (list!9026 (charsOf!2517 separatorToken!354)) (list!9029 (c!325570 (charsOf!2517 separatorToken!354))))))

(declare-fun bs!419957 () Bool)

(assert (= bs!419957 d!615232))

(declare-fun m!2449409 () Bool)

(assert (=> bs!419957 m!2449409))

(assert (=> b!2015512 d!615232))

(declare-fun b!2015983 () Bool)

(declare-fun e!1273975 () Option!4635)

(assert (=> b!2015983 (= e!1273975 None!4634)))

(declare-fun b!2015984 () Bool)

(declare-fun lt!757039 () Unit!36731)

(declare-fun lt!757040 () Unit!36731)

(assert (=> b!2015984 (= lt!757039 lt!757040)))

(assert (=> b!2015984 (rulesInvariant!3197 thiss!23328 (t!188278 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!299 (LexerInterface!3590 Rule!7754 List!22225) Unit!36731)

(assert (=> b!2015984 (= lt!757040 (lemmaInvariantOnRulesThenOnTail!299 thiss!23328 (h!27544 rules!3198) (t!188278 rules!3198)))))

(assert (=> b!2015984 (= e!1273975 (getRuleFromTag!792 thiss!23328 (t!188278 rules!3198) (tag!4453 (rule!6204 separatorToken!354))))))

(declare-fun d!615234 () Bool)

(declare-fun e!1273976 () Bool)

(assert (=> d!615234 e!1273976))

(declare-fun res!884353 () Bool)

(assert (=> d!615234 (=> res!884353 e!1273976)))

(declare-fun lt!757041 () Option!4635)

(declare-fun isEmpty!13771 (Option!4635) Bool)

(assert (=> d!615234 (= res!884353 (isEmpty!13771 lt!757041))))

(declare-fun e!1273974 () Option!4635)

(assert (=> d!615234 (= lt!757041 e!1273974)))

(declare-fun c!325655 () Bool)

(assert (=> d!615234 (= c!325655 (and (is-Cons!22143 rules!3198) (= (tag!4453 (h!27544 rules!3198)) (tag!4453 (rule!6204 separatorToken!354)))))))

(assert (=> d!615234 (rulesInvariant!3197 thiss!23328 rules!3198)))

(assert (=> d!615234 (= (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 separatorToken!354))) lt!757041)))

(declare-fun b!2015985 () Bool)

(declare-fun e!1273973 () Bool)

(assert (=> b!2015985 (= e!1273976 e!1273973)))

(declare-fun res!884352 () Bool)

(assert (=> b!2015985 (=> (not res!884352) (not e!1273973))))

(assert (=> b!2015985 (= res!884352 (contains!4066 rules!3198 (get!7015 lt!757041)))))

(declare-fun b!2015986 () Bool)

(assert (=> b!2015986 (= e!1273974 (Some!4634 (h!27544 rules!3198)))))

(declare-fun b!2015987 () Bool)

(assert (=> b!2015987 (= e!1273973 (= (tag!4453 (get!7015 lt!757041)) (tag!4453 (rule!6204 separatorToken!354))))))

(declare-fun b!2015988 () Bool)

(assert (=> b!2015988 (= e!1273974 e!1273975)))

(declare-fun c!325654 () Bool)

(assert (=> b!2015988 (= c!325654 (and (is-Cons!22143 rules!3198) (not (= (tag!4453 (h!27544 rules!3198)) (tag!4453 (rule!6204 separatorToken!354))))))))

(assert (= (and d!615234 c!325655) b!2015986))

(assert (= (and d!615234 (not c!325655)) b!2015988))

(assert (= (and b!2015988 c!325654) b!2015984))

(assert (= (and b!2015988 (not c!325654)) b!2015983))

(assert (= (and d!615234 (not res!884353)) b!2015985))

(assert (= (and b!2015985 res!884352) b!2015987))

(declare-fun m!2449411 () Bool)

(assert (=> b!2015984 m!2449411))

(declare-fun m!2449413 () Bool)

(assert (=> b!2015984 m!2449413))

(declare-fun m!2449415 () Bool)

(assert (=> b!2015984 m!2449415))

(declare-fun m!2449417 () Bool)

(assert (=> d!615234 m!2449417))

(assert (=> d!615234 m!2448755))

(declare-fun m!2449419 () Bool)

(assert (=> b!2015985 m!2449419))

(assert (=> b!2015985 m!2449419))

(declare-fun m!2449421 () Bool)

(assert (=> b!2015985 m!2449421))

(assert (=> b!2015987 m!2449419))

(assert (=> b!2015512 d!615234))

(declare-fun b!2015989 () Bool)

(declare-fun e!1273979 () Option!4635)

(assert (=> b!2015989 (= e!1273979 None!4634)))

(declare-fun b!2015990 () Bool)

(declare-fun lt!757042 () Unit!36731)

(declare-fun lt!757043 () Unit!36731)

(assert (=> b!2015990 (= lt!757042 lt!757043)))

(assert (=> b!2015990 (rulesInvariant!3197 thiss!23328 (t!188278 rules!3198))))

(assert (=> b!2015990 (= lt!757043 (lemmaInvariantOnRulesThenOnTail!299 thiss!23328 (h!27544 rules!3198) (t!188278 rules!3198)))))

(assert (=> b!2015990 (= e!1273979 (getRuleFromTag!792 thiss!23328 (t!188278 rules!3198) (tag!4453 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun d!615236 () Bool)

(declare-fun e!1273980 () Bool)

(assert (=> d!615236 e!1273980))

(declare-fun res!884355 () Bool)

(assert (=> d!615236 (=> res!884355 e!1273980)))

(declare-fun lt!757044 () Option!4635)

(assert (=> d!615236 (= res!884355 (isEmpty!13771 lt!757044))))

(declare-fun e!1273978 () Option!4635)

(assert (=> d!615236 (= lt!757044 e!1273978)))

(declare-fun c!325657 () Bool)

(assert (=> d!615236 (= c!325657 (and (is-Cons!22143 rules!3198) (= (tag!4453 (h!27544 rules!3198)) (tag!4453 (rule!6204 (h!27543 tokens!598))))))))

(assert (=> d!615236 (rulesInvariant!3197 thiss!23328 rules!3198)))

(assert (=> d!615236 (= (getRuleFromTag!792 thiss!23328 rules!3198 (tag!4453 (rule!6204 (h!27543 tokens!598)))) lt!757044)))

(declare-fun b!2015991 () Bool)

(declare-fun e!1273977 () Bool)

(assert (=> b!2015991 (= e!1273980 e!1273977)))

(declare-fun res!884354 () Bool)

(assert (=> b!2015991 (=> (not res!884354) (not e!1273977))))

(assert (=> b!2015991 (= res!884354 (contains!4066 rules!3198 (get!7015 lt!757044)))))

(declare-fun b!2015992 () Bool)

(assert (=> b!2015992 (= e!1273978 (Some!4634 (h!27544 rules!3198)))))

(declare-fun b!2015993 () Bool)

(assert (=> b!2015993 (= e!1273977 (= (tag!4453 (get!7015 lt!757044)) (tag!4453 (rule!6204 (h!27543 tokens!598)))))))

(declare-fun b!2015994 () Bool)

(assert (=> b!2015994 (= e!1273978 e!1273979)))

(declare-fun c!325656 () Bool)

(assert (=> b!2015994 (= c!325656 (and (is-Cons!22143 rules!3198) (not (= (tag!4453 (h!27544 rules!3198)) (tag!4453 (rule!6204 (h!27543 tokens!598)))))))))

(assert (= (and d!615236 c!325657) b!2015992))

(assert (= (and d!615236 (not c!325657)) b!2015994))

(assert (= (and b!2015994 c!325656) b!2015990))

(assert (= (and b!2015994 (not c!325656)) b!2015989))

(assert (= (and d!615236 (not res!884355)) b!2015991))

(assert (= (and b!2015991 res!884354) b!2015993))

(assert (=> b!2015990 m!2449411))

(assert (=> b!2015990 m!2449413))

(declare-fun m!2449423 () Bool)

(assert (=> b!2015990 m!2449423))

(declare-fun m!2449425 () Bool)

(assert (=> d!615236 m!2449425))

(assert (=> d!615236 m!2448755))

(declare-fun m!2449427 () Bool)

(assert (=> b!2015991 m!2449427))

(assert (=> b!2015991 m!2449427))

(declare-fun m!2449429 () Bool)

(assert (=> b!2015991 m!2449429))

(assert (=> b!2015993 m!2449427))

(assert (=> b!2015512 d!615236))

(declare-fun d!615238 () Bool)

(assert (=> d!615238 (= (isDefined!3923 lt!756826) (not (isEmpty!13771 lt!756826)))))

(declare-fun bs!419958 () Bool)

(assert (= bs!419958 d!615238))

(declare-fun m!2449431 () Bool)

(assert (=> bs!419958 m!2449431))

(assert (=> b!2015512 d!615238))

(declare-fun b!2015995 () Bool)

(declare-fun e!1273981 () List!22223)

(assert (=> b!2015995 (= e!1273981 lt!756821)))

(declare-fun b!2015996 () Bool)

(assert (=> b!2015996 (= e!1273981 (Cons!22141 (h!27542 lt!756823) (++!5976 (t!188276 lt!756823) lt!756821)))))

(declare-fun e!1273982 () Bool)

(declare-fun b!2015998 () Bool)

(declare-fun lt!757045 () List!22223)

(assert (=> b!2015998 (= e!1273982 (or (not (= lt!756821 Nil!22141)) (= lt!757045 lt!756823)))))

(declare-fun d!615240 () Bool)

(assert (=> d!615240 e!1273982))

(declare-fun res!884356 () Bool)

(assert (=> d!615240 (=> (not res!884356) (not e!1273982))))

(assert (=> d!615240 (= res!884356 (= (content!3254 lt!757045) (set.union (content!3254 lt!756823) (content!3254 lt!756821))))))

(assert (=> d!615240 (= lt!757045 e!1273981)))

(declare-fun c!325658 () Bool)

(assert (=> d!615240 (= c!325658 (is-Nil!22141 lt!756823))))

(assert (=> d!615240 (= (++!5976 lt!756823 lt!756821) lt!757045)))

(declare-fun b!2015997 () Bool)

(declare-fun res!884357 () Bool)

(assert (=> b!2015997 (=> (not res!884357) (not e!1273982))))

(assert (=> b!2015997 (= res!884357 (= (size!17301 lt!757045) (+ (size!17301 lt!756823) (size!17301 lt!756821))))))

(assert (= (and d!615240 c!325658) b!2015995))

(assert (= (and d!615240 (not c!325658)) b!2015996))

(assert (= (and d!615240 res!884356) b!2015997))

(assert (= (and b!2015997 res!884357) b!2015998))

(declare-fun m!2449433 () Bool)

(assert (=> b!2015996 m!2449433))

(declare-fun m!2449435 () Bool)

(assert (=> d!615240 m!2449435))

(assert (=> d!615240 m!2449139))

(assert (=> d!615240 m!2449189))

(declare-fun m!2449437 () Bool)

(assert (=> b!2015997 m!2449437))

(assert (=> b!2015997 m!2449145))

(assert (=> b!2015997 m!2449193))

(assert (=> b!2015512 d!615240))

(declare-fun d!615242 () Bool)

(assert (=> d!615242 (= (isDefined!3923 lt!756819) (not (isEmpty!13771 lt!756819)))))

(declare-fun bs!419959 () Bool)

(assert (= bs!419959 d!615242))

(declare-fun m!2449439 () Bool)

(assert (=> bs!419959 m!2449439))

(assert (=> b!2015512 d!615242))

(declare-fun b!2015999 () Bool)

(declare-fun e!1273984 () Bool)

(declare-fun lt!757048 () Option!4636)

(assert (=> b!2015999 (= e!1273984 (contains!4066 rules!3198 (rule!6204 (_1!11872 (get!7016 lt!757048)))))))

(declare-fun b!2016000 () Bool)

(declare-fun res!884361 () Bool)

(assert (=> b!2016000 (=> (not res!884361) (not e!1273984))))

(assert (=> b!2016000 (= res!884361 (= (++!5976 (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!757048)))) (_2!11872 (get!7016 lt!757048))) (++!5976 lt!756823 lt!756821)))))

(declare-fun b!2016001 () Bool)

(declare-fun res!884358 () Bool)

(assert (=> b!2016001 (=> (not res!884358) (not e!1273984))))

(assert (=> b!2016001 (= res!884358 (= (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!757048)))) (originalCharacters!4784 (_1!11872 (get!7016 lt!757048)))))))

(declare-fun d!615244 () Bool)

(declare-fun e!1273985 () Bool)

(assert (=> d!615244 e!1273985))

(declare-fun res!884363 () Bool)

(assert (=> d!615244 (=> res!884363 e!1273985)))

(assert (=> d!615244 (= res!884363 (isEmpty!13768 lt!757048))))

(declare-fun e!1273983 () Option!4636)

(assert (=> d!615244 (= lt!757048 e!1273983)))

(declare-fun c!325659 () Bool)

(assert (=> d!615244 (= c!325659 (and (is-Cons!22143 rules!3198) (is-Nil!22143 (t!188278 rules!3198))))))

(declare-fun lt!757046 () Unit!36731)

(declare-fun lt!757050 () Unit!36731)

(assert (=> d!615244 (= lt!757046 lt!757050)))

(assert (=> d!615244 (isPrefix!1974 (++!5976 lt!756823 lt!756821) (++!5976 lt!756823 lt!756821))))

(assert (=> d!615244 (= lt!757050 (lemmaIsPrefixRefl!1292 (++!5976 lt!756823 lt!756821) (++!5976 lt!756823 lt!756821)))))

(assert (=> d!615244 (rulesValidInductive!1373 thiss!23328 rules!3198)))

(assert (=> d!615244 (= (maxPrefix!2026 thiss!23328 rules!3198 (++!5976 lt!756823 lt!756821)) lt!757048)))

(declare-fun b!2016002 () Bool)

(declare-fun res!884364 () Bool)

(assert (=> b!2016002 (=> (not res!884364) (not e!1273984))))

(assert (=> b!2016002 (= res!884364 (matchR!2668 (regex!3977 (rule!6204 (_1!11872 (get!7016 lt!757048)))) (list!9026 (charsOf!2517 (_1!11872 (get!7016 lt!757048))))))))

(declare-fun b!2016003 () Bool)

(declare-fun call!123353 () Option!4636)

(assert (=> b!2016003 (= e!1273983 call!123353)))

(declare-fun b!2016004 () Bool)

(declare-fun res!884359 () Bool)

(assert (=> b!2016004 (=> (not res!884359) (not e!1273984))))

(assert (=> b!2016004 (= res!884359 (= (value!124937 (_1!11872 (get!7016 lt!757048))) (apply!5814 (transformation!3977 (rule!6204 (_1!11872 (get!7016 lt!757048)))) (seqFromList!2831 (originalCharacters!4784 (_1!11872 (get!7016 lt!757048)))))))))

(declare-fun b!2016005 () Bool)

(declare-fun res!884362 () Bool)

(assert (=> b!2016005 (=> (not res!884362) (not e!1273984))))

(assert (=> b!2016005 (= res!884362 (< (size!17301 (_2!11872 (get!7016 lt!757048))) (size!17301 (++!5976 lt!756823 lt!756821))))))

(declare-fun b!2016006 () Bool)

(declare-fun lt!757049 () Option!4636)

(declare-fun lt!757047 () Option!4636)

(assert (=> b!2016006 (= e!1273983 (ite (and (is-None!4635 lt!757049) (is-None!4635 lt!757047)) None!4635 (ite (is-None!4635 lt!757047) lt!757049 (ite (is-None!4635 lt!757049) lt!757047 (ite (>= (size!17297 (_1!11872 (v!26908 lt!757049))) (size!17297 (_1!11872 (v!26908 lt!757047)))) lt!757049 lt!757047)))))))

(assert (=> b!2016006 (= lt!757049 call!123353)))

(assert (=> b!2016006 (= lt!757047 (maxPrefix!2026 thiss!23328 (t!188278 rules!3198) (++!5976 lt!756823 lt!756821)))))

(declare-fun bm!123348 () Bool)

(assert (=> bm!123348 (= call!123353 (maxPrefixOneRule!1256 thiss!23328 (h!27544 rules!3198) (++!5976 lt!756823 lt!756821)))))

(declare-fun b!2016007 () Bool)

(assert (=> b!2016007 (= e!1273985 e!1273984)))

(declare-fun res!884360 () Bool)

(assert (=> b!2016007 (=> (not res!884360) (not e!1273984))))

(assert (=> b!2016007 (= res!884360 (isDefined!3924 lt!757048))))

(assert (= (and d!615244 c!325659) b!2016003))

(assert (= (and d!615244 (not c!325659)) b!2016006))

(assert (= (or b!2016003 b!2016006) bm!123348))

(assert (= (and d!615244 (not res!884363)) b!2016007))

(assert (= (and b!2016007 res!884360) b!2016001))

(assert (= (and b!2016001 res!884358) b!2016005))

(assert (= (and b!2016005 res!884362) b!2016000))

(assert (= (and b!2016000 res!884361) b!2016004))

(assert (= (and b!2016004 res!884359) b!2016002))

(assert (= (and b!2016002 res!884364) b!2015999))

(declare-fun m!2449441 () Bool)

(assert (=> b!2015999 m!2449441))

(declare-fun m!2449443 () Bool)

(assert (=> b!2015999 m!2449443))

(assert (=> b!2016004 m!2449441))

(declare-fun m!2449445 () Bool)

(assert (=> b!2016004 m!2449445))

(assert (=> b!2016004 m!2449445))

(declare-fun m!2449447 () Bool)

(assert (=> b!2016004 m!2449447))

(assert (=> bm!123348 m!2448781))

(declare-fun m!2449449 () Bool)

(assert (=> bm!123348 m!2449449))

(assert (=> b!2016006 m!2448781))

(declare-fun m!2449451 () Bool)

(assert (=> b!2016006 m!2449451))

(assert (=> b!2016000 m!2449441))

(declare-fun m!2449453 () Bool)

(assert (=> b!2016000 m!2449453))

(assert (=> b!2016000 m!2449453))

(declare-fun m!2449455 () Bool)

(assert (=> b!2016000 m!2449455))

(assert (=> b!2016000 m!2449455))

(declare-fun m!2449457 () Bool)

(assert (=> b!2016000 m!2449457))

(declare-fun m!2449459 () Bool)

(assert (=> d!615244 m!2449459))

(assert (=> d!615244 m!2448781))

(assert (=> d!615244 m!2448781))

(declare-fun m!2449461 () Bool)

(assert (=> d!615244 m!2449461))

(assert (=> d!615244 m!2448781))

(assert (=> d!615244 m!2448781))

(declare-fun m!2449463 () Bool)

(assert (=> d!615244 m!2449463))

(assert (=> d!615244 m!2449277))

(assert (=> b!2016001 m!2449441))

(assert (=> b!2016001 m!2449453))

(assert (=> b!2016001 m!2449453))

(assert (=> b!2016001 m!2449455))

(assert (=> b!2016005 m!2449441))

(declare-fun m!2449465 () Bool)

(assert (=> b!2016005 m!2449465))

(assert (=> b!2016005 m!2448781))

(declare-fun m!2449467 () Bool)

(assert (=> b!2016005 m!2449467))

(declare-fun m!2449469 () Bool)

(assert (=> b!2016007 m!2449469))

(assert (=> b!2016002 m!2449441))

(assert (=> b!2016002 m!2449453))

(assert (=> b!2016002 m!2449453))

(assert (=> b!2016002 m!2449455))

(assert (=> b!2016002 m!2449455))

(declare-fun m!2449471 () Bool)

(assert (=> b!2016002 m!2449471))

(assert (=> b!2015512 d!615244))

(declare-fun d!615246 () Bool)

(assert (=> d!615246 (= (list!9026 lt!756834) (list!9029 (c!325570 lt!756834)))))

(declare-fun bs!419960 () Bool)

(assert (= bs!419960 d!615246))

(declare-fun m!2449473 () Bool)

(assert (=> bs!419960 m!2449473))

(assert (=> b!2015512 d!615246))

(declare-fun d!615248 () Bool)

(declare-fun lt!757053 () BalanceConc!14616)

(assert (=> d!615248 (= (list!9026 lt!757053) (originalCharacters!4784 (h!27543 tokens!598)))))

(declare-fun dynLambda!10961 (Int TokenValue!4113) BalanceConc!14616)

(assert (=> d!615248 (= lt!757053 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (value!124937 (h!27543 tokens!598))))))

(assert (=> d!615248 (= (charsOf!2517 (h!27543 tokens!598)) lt!757053)))

(declare-fun b_lambda!67503 () Bool)

(assert (=> (not b_lambda!67503) (not d!615248)))

(declare-fun t!188316 () Bool)

(declare-fun tb!126169 () Bool)

(assert (=> (and b!2015503 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188316) tb!126169))

(declare-fun b!2016012 () Bool)

(declare-fun e!1273988 () Bool)

(declare-fun tp!600814 () Bool)

(declare-fun inv!29316 (Conc!7400) Bool)

(assert (=> b!2016012 (= e!1273988 (and (inv!29316 (c!325570 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (value!124937 (h!27543 tokens!598))))) tp!600814))))

(declare-fun result!151190 () Bool)

(declare-fun inv!29317 (BalanceConc!14616) Bool)

(assert (=> tb!126169 (= result!151190 (and (inv!29317 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (value!124937 (h!27543 tokens!598)))) e!1273988))))

(assert (= tb!126169 b!2016012))

(declare-fun m!2449475 () Bool)

(assert (=> b!2016012 m!2449475))

(declare-fun m!2449477 () Bool)

(assert (=> tb!126169 m!2449477))

(assert (=> d!615248 t!188316))

(declare-fun b_and!159665 () Bool)

(assert (= b_and!159619 (and (=> t!188316 result!151190) b_and!159665)))

(declare-fun t!188318 () Bool)

(declare-fun tb!126171 () Bool)

(assert (=> (and b!2015515 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188318) tb!126171))

(declare-fun result!151194 () Bool)

(assert (= result!151194 result!151190))

(assert (=> d!615248 t!188318))

(declare-fun b_and!159667 () Bool)

(assert (= b_and!159623 (and (=> t!188318 result!151194) b_and!159667)))

(declare-fun t!188320 () Bool)

(declare-fun tb!126173 () Bool)

(assert (=> (and b!2015508 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188320) tb!126173))

(declare-fun result!151196 () Bool)

(assert (= result!151196 result!151190))

(assert (=> d!615248 t!188320))

(declare-fun b_and!159669 () Bool)

(assert (= b_and!159627 (and (=> t!188320 result!151196) b_and!159669)))

(declare-fun m!2449479 () Bool)

(assert (=> d!615248 m!2449479))

(declare-fun m!2449481 () Bool)

(assert (=> d!615248 m!2449481))

(assert (=> b!2015512 d!615248))

(declare-fun d!615250 () Bool)

(assert (=> d!615250 (= (seqFromList!2831 (originalCharacters!4784 (h!27543 tokens!598))) (fromListB!1271 (originalCharacters!4784 (h!27543 tokens!598))))))

(declare-fun bs!419961 () Bool)

(assert (= bs!419961 d!615250))

(declare-fun m!2449483 () Bool)

(assert (=> bs!419961 m!2449483))

(assert (=> b!2015512 d!615250))

(declare-fun b!2016029 () Bool)

(declare-fun e!1273997 () Bool)

(assert (=> b!2016029 (= e!1273997 true)))

(declare-fun d!615252 () Bool)

(assert (=> d!615252 e!1273997))

(assert (= d!615252 b!2016029))

(declare-fun lambda!76275 () Int)

(declare-fun order!14129 () Int)

(declare-fun dynLambda!10963 (Int Int) Int)

(assert (=> b!2016029 (< (dynLambda!10950 order!14113 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) (dynLambda!10963 order!14129 lambda!76275))))

(assert (=> b!2016029 (< (dynLambda!10952 order!14117 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) (dynLambda!10963 order!14129 lambda!76275))))

(assert (=> d!615252 (= (list!9026 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) lt!756834))) (list!9026 lt!756834))))

(declare-fun lt!757064 () Unit!36731)

(declare-fun ForallOf!439 (Int BalanceConc!14616) Unit!36731)

(assert (=> d!615252 (= lt!757064 (ForallOf!439 lambda!76275 lt!756834))))

(assert (=> d!615252 (= (lemmaSemiInverse!934 (transformation!3977 (rule!6204 (h!27543 tokens!598))) lt!756834) lt!757064)))

(declare-fun b_lambda!67505 () Bool)

(assert (=> (not b_lambda!67505) (not d!615252)))

(declare-fun tb!126175 () Bool)

(declare-fun t!188324 () Bool)

(assert (=> (and b!2015503 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188324) tb!126175))

(declare-fun tp!600815 () Bool)

(declare-fun e!1273998 () Bool)

(declare-fun b!2016030 () Bool)

(assert (=> b!2016030 (= e!1273998 (and (inv!29316 (c!325570 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) lt!756834)))) tp!600815))))

(declare-fun result!151198 () Bool)

(assert (=> tb!126175 (= result!151198 (and (inv!29317 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (dynLambda!10954 (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) lt!756834))) e!1273998))))

(assert (= tb!126175 b!2016030))

(declare-fun m!2449485 () Bool)

(assert (=> b!2016030 m!2449485))

(declare-fun m!2449487 () Bool)

(assert (=> tb!126175 m!2449487))

(assert (=> d!615252 t!188324))

(declare-fun b_and!159671 () Bool)

(assert (= b_and!159665 (and (=> t!188324 result!151198) b_and!159671)))

(declare-fun tb!126177 () Bool)

(declare-fun t!188326 () Bool)

(assert (=> (and b!2015515 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188326) tb!126177))

(declare-fun result!151200 () Bool)

(assert (= result!151200 result!151198))

(assert (=> d!615252 t!188326))

(declare-fun b_and!159673 () Bool)

(assert (= b_and!159667 (and (=> t!188326 result!151200) b_and!159673)))

(declare-fun t!188328 () Bool)

(declare-fun tb!126179 () Bool)

(assert (=> (and b!2015508 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188328) tb!126179))

(declare-fun result!151202 () Bool)

(assert (= result!151202 result!151198))

(assert (=> d!615252 t!188328))

(declare-fun b_and!159675 () Bool)

(assert (= b_and!159669 (and (=> t!188328 result!151202) b_and!159675)))

(declare-fun b_lambda!67507 () Bool)

(assert (=> (not b_lambda!67507) (not d!615252)))

(assert (=> d!615252 t!188290))

(declare-fun b_and!159677 () Bool)

(assert (= b_and!159647 (and (=> t!188290 result!151160) b_and!159677)))

(assert (=> d!615252 t!188292))

(declare-fun b_and!159679 () Bool)

(assert (= b_and!159649 (and (=> t!188292 result!151164) b_and!159679)))

(assert (=> d!615252 t!188294))

(declare-fun b_and!159681 () Bool)

(assert (= b_and!159651 (and (=> t!188294 result!151166) b_and!159681)))

(declare-fun m!2449489 () Bool)

(assert (=> d!615252 m!2449489))

(declare-fun m!2449491 () Bool)

(assert (=> d!615252 m!2449491))

(declare-fun m!2449493 () Bool)

(assert (=> d!615252 m!2449493))

(assert (=> d!615252 m!2449293))

(assert (=> d!615252 m!2449489))

(assert (=> d!615252 m!2448783))

(assert (=> d!615252 m!2449293))

(assert (=> b!2015512 d!615252))

(declare-fun d!615254 () Bool)

(declare-fun lt!757069 () BalanceConc!14616)

(assert (=> d!615254 (= (list!9026 lt!757069) (originalCharacters!4784 separatorToken!354))))

(assert (=> d!615254 (= lt!757069 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (value!124937 separatorToken!354)))))

(assert (=> d!615254 (= (charsOf!2517 separatorToken!354) lt!757069)))

(declare-fun b_lambda!67509 () Bool)

(assert (=> (not b_lambda!67509) (not d!615254)))

(declare-fun t!188330 () Bool)

(declare-fun tb!126181 () Bool)

(assert (=> (and b!2015503 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354)))) t!188330) tb!126181))

(declare-fun b!2016035 () Bool)

(declare-fun e!1274001 () Bool)

(declare-fun tp!600816 () Bool)

(assert (=> b!2016035 (= e!1274001 (and (inv!29316 (c!325570 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (value!124937 separatorToken!354)))) tp!600816))))

(declare-fun result!151204 () Bool)

(assert (=> tb!126181 (= result!151204 (and (inv!29317 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (value!124937 separatorToken!354))) e!1274001))))

(assert (= tb!126181 b!2016035))

(declare-fun m!2449495 () Bool)

(assert (=> b!2016035 m!2449495))

(declare-fun m!2449497 () Bool)

(assert (=> tb!126181 m!2449497))

(assert (=> d!615254 t!188330))

(declare-fun b_and!159683 () Bool)

(assert (= b_and!159671 (and (=> t!188330 result!151204) b_and!159683)))

(declare-fun t!188332 () Bool)

(declare-fun tb!126183 () Bool)

(assert (=> (and b!2015515 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354)))) t!188332) tb!126183))

(declare-fun result!151206 () Bool)

(assert (= result!151206 result!151204))

(assert (=> d!615254 t!188332))

(declare-fun b_and!159685 () Bool)

(assert (= b_and!159673 (and (=> t!188332 result!151206) b_and!159685)))

(declare-fun tb!126185 () Bool)

(declare-fun t!188334 () Bool)

(assert (=> (and b!2015508 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354)))) t!188334) tb!126185))

(declare-fun result!151208 () Bool)

(assert (= result!151208 result!151204))

(assert (=> d!615254 t!188334))

(declare-fun b_and!159687 () Bool)

(assert (= b_and!159675 (and (=> t!188334 result!151208) b_and!159687)))

(declare-fun m!2449499 () Bool)

(assert (=> d!615254 m!2449499))

(declare-fun m!2449501 () Bool)

(assert (=> d!615254 m!2449501))

(assert (=> b!2015512 d!615254))

(declare-fun d!615256 () Bool)

(declare-fun res!884369 () Bool)

(declare-fun e!1274006 () Bool)

(assert (=> d!615256 (=> res!884369 e!1274006)))

(assert (=> d!615256 (= res!884369 (not (is-Cons!22143 rules!3198)))))

(assert (=> d!615256 (= (sepAndNonSepRulesDisjointChars!1075 rules!3198 rules!3198) e!1274006)))

(declare-fun b!2016040 () Bool)

(declare-fun e!1274007 () Bool)

(assert (=> b!2016040 (= e!1274006 e!1274007)))

(declare-fun res!884370 () Bool)

(assert (=> b!2016040 (=> (not res!884370) (not e!1274007))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!482 (Rule!7754 List!22225) Bool)

(assert (=> b!2016040 (= res!884370 (ruleDisjointCharsFromAllFromOtherType!482 (h!27544 rules!3198) rules!3198))))

(declare-fun b!2016041 () Bool)

(assert (=> b!2016041 (= e!1274007 (sepAndNonSepRulesDisjointChars!1075 rules!3198 (t!188278 rules!3198)))))

(assert (= (and d!615256 (not res!884369)) b!2016040))

(assert (= (and b!2016040 res!884370) b!2016041))

(declare-fun m!2449503 () Bool)

(assert (=> b!2016040 m!2449503))

(declare-fun m!2449505 () Bool)

(assert (=> b!2016041 m!2449505))

(assert (=> b!2015502 d!615256))

(declare-fun d!615258 () Bool)

(declare-fun lt!757120 () Bool)

(declare-fun e!1274064 () Bool)

(assert (=> d!615258 (= lt!757120 e!1274064)))

(declare-fun res!884425 () Bool)

(assert (=> d!615258 (=> (not res!884425) (not e!1274064))))

(assert (=> d!615258 (= res!884425 (= (list!9028 (_1!11871 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 (h!27543 tokens!598)))))) (list!9028 (singletonSeq!1953 (h!27543 tokens!598)))))))

(declare-fun e!1274063 () Bool)

(assert (=> d!615258 (= lt!757120 e!1274063)))

(declare-fun res!884426 () Bool)

(assert (=> d!615258 (=> (not res!884426) (not e!1274063))))

(declare-fun lt!757121 () tuple2!20804)

(assert (=> d!615258 (= res!884426 (= (size!17299 (_1!11871 lt!757121)) 1))))

(assert (=> d!615258 (= lt!757121 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 (h!27543 tokens!598)))))))

(assert (=> d!615258 (not (isEmpty!13762 rules!3198))))

(assert (=> d!615258 (= (rulesProduceIndividualToken!1762 thiss!23328 rules!3198 (h!27543 tokens!598)) lt!757120)))

(declare-fun b!2016137 () Bool)

(declare-fun res!884424 () Bool)

(assert (=> b!2016137 (=> (not res!884424) (not e!1274063))))

(assert (=> b!2016137 (= res!884424 (= (apply!5812 (_1!11871 lt!757121) 0) (h!27543 tokens!598)))))

(declare-fun b!2016138 () Bool)

(declare-fun isEmpty!13773 (BalanceConc!14616) Bool)

(assert (=> b!2016138 (= e!1274063 (isEmpty!13773 (_2!11871 lt!757121)))))

(declare-fun b!2016139 () Bool)

(assert (=> b!2016139 (= e!1274064 (isEmpty!13773 (_2!11871 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 (h!27543 tokens!598)))))))))

(assert (= (and d!615258 res!884426) b!2016137))

(assert (= (and b!2016137 res!884424) b!2016138))

(assert (= (and d!615258 res!884425) b!2016139))

(assert (=> d!615258 m!2448827))

(declare-fun m!2449667 () Bool)

(assert (=> d!615258 m!2449667))

(declare-fun m!2449669 () Bool)

(assert (=> d!615258 m!2449669))

(assert (=> d!615258 m!2448827))

(declare-fun m!2449671 () Bool)

(assert (=> d!615258 m!2449671))

(assert (=> d!615258 m!2449671))

(declare-fun m!2449673 () Bool)

(assert (=> d!615258 m!2449673))

(declare-fun m!2449675 () Bool)

(assert (=> d!615258 m!2449675))

(assert (=> d!615258 m!2448827))

(assert (=> d!615258 m!2448867))

(declare-fun m!2449677 () Bool)

(assert (=> b!2016137 m!2449677))

(declare-fun m!2449679 () Bool)

(assert (=> b!2016138 m!2449679))

(assert (=> b!2016139 m!2448827))

(assert (=> b!2016139 m!2448827))

(assert (=> b!2016139 m!2449671))

(assert (=> b!2016139 m!2449671))

(assert (=> b!2016139 m!2449673))

(declare-fun m!2449681 () Bool)

(assert (=> b!2016139 m!2449681))

(assert (=> b!2015489 d!615258))

(declare-fun d!615290 () Bool)

(assert (=> d!615290 (not (matchR!2668 (regex!3977 (rule!6204 separatorToken!354)) lt!756827))))

(declare-fun lt!757126 () Unit!36731)

(declare-fun choose!12283 (Regex!5402 List!22223 C!10950) Unit!36731)

(assert (=> d!615290 (= lt!757126 (choose!12283 (regex!3977 (rule!6204 separatorToken!354)) lt!756827 lt!756829))))

(assert (=> d!615290 (validRegex!2168 (regex!3977 (rule!6204 separatorToken!354)))))

(assert (=> d!615290 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!303 (regex!3977 (rule!6204 separatorToken!354)) lt!756827 lt!756829) lt!757126)))

(declare-fun bs!419967 () Bool)

(assert (= bs!419967 d!615290))

(assert (=> bs!419967 m!2448879))

(declare-fun m!2449683 () Bool)

(assert (=> bs!419967 m!2449683))

(declare-fun m!2449685 () Bool)

(assert (=> bs!419967 m!2449685))

(assert (=> b!2015521 d!615290))

(declare-fun d!615292 () Bool)

(declare-fun e!1274085 () Bool)

(assert (=> d!615292 e!1274085))

(declare-fun c!325692 () Bool)

(assert (=> d!615292 (= c!325692 (is-EmptyExpr!5402 (regex!3977 (rule!6204 separatorToken!354))))))

(declare-fun lt!757127 () Bool)

(declare-fun e!1274080 () Bool)

(assert (=> d!615292 (= lt!757127 e!1274080)))

(declare-fun c!325693 () Bool)

(assert (=> d!615292 (= c!325693 (isEmpty!13767 lt!756827))))

(assert (=> d!615292 (validRegex!2168 (regex!3977 (rule!6204 separatorToken!354)))))

(assert (=> d!615292 (= (matchR!2668 (regex!3977 (rule!6204 separatorToken!354)) lt!756827) lt!757127)))

(declare-fun b!2016168 () Bool)

(declare-fun e!1274084 () Bool)

(declare-fun e!1274082 () Bool)

(assert (=> b!2016168 (= e!1274084 e!1274082)))

(declare-fun res!884443 () Bool)

(assert (=> b!2016168 (=> (not res!884443) (not e!1274082))))

(assert (=> b!2016168 (= res!884443 (not lt!757127))))

(declare-fun b!2016169 () Bool)

(assert (=> b!2016169 (= e!1274080 (nullable!1642 (regex!3977 (rule!6204 separatorToken!354))))))

(declare-fun b!2016170 () Bool)

(assert (=> b!2016170 (= e!1274080 (matchR!2668 (derivativeStep!1401 (regex!3977 (rule!6204 separatorToken!354)) (head!4559 lt!756827)) (tail!3039 lt!756827)))))

(declare-fun b!2016171 () Bool)

(declare-fun call!123375 () Bool)

(assert (=> b!2016171 (= e!1274085 (= lt!757127 call!123375))))

(declare-fun b!2016172 () Bool)

(declare-fun res!884446 () Bool)

(assert (=> b!2016172 (=> res!884446 e!1274084)))

(declare-fun e!1274079 () Bool)

(assert (=> b!2016172 (= res!884446 e!1274079)))

(declare-fun res!884445 () Bool)

(assert (=> b!2016172 (=> (not res!884445) (not e!1274079))))

(assert (=> b!2016172 (= res!884445 lt!757127)))

(declare-fun b!2016173 () Bool)

(declare-fun e!1274083 () Bool)

(assert (=> b!2016173 (= e!1274083 (not (= (head!4559 lt!756827) (c!325569 (regex!3977 (rule!6204 separatorToken!354))))))))

(declare-fun b!2016174 () Bool)

(assert (=> b!2016174 (= e!1274079 (= (head!4559 lt!756827) (c!325569 (regex!3977 (rule!6204 separatorToken!354)))))))

(declare-fun b!2016175 () Bool)

(declare-fun res!884450 () Bool)

(assert (=> b!2016175 (=> (not res!884450) (not e!1274079))))

(assert (=> b!2016175 (= res!884450 (not call!123375))))

(declare-fun bm!123370 () Bool)

(assert (=> bm!123370 (= call!123375 (isEmpty!13767 lt!756827))))

(declare-fun b!2016176 () Bool)

(declare-fun e!1274081 () Bool)

(assert (=> b!2016176 (= e!1274081 (not lt!757127))))

(declare-fun b!2016177 () Bool)

(declare-fun res!884447 () Bool)

(assert (=> b!2016177 (=> res!884447 e!1274084)))

(assert (=> b!2016177 (= res!884447 (not (is-ElementMatch!5402 (regex!3977 (rule!6204 separatorToken!354)))))))

(assert (=> b!2016177 (= e!1274081 e!1274084)))

(declare-fun b!2016178 () Bool)

(assert (=> b!2016178 (= e!1274085 e!1274081)))

(declare-fun c!325694 () Bool)

(assert (=> b!2016178 (= c!325694 (is-EmptyLang!5402 (regex!3977 (rule!6204 separatorToken!354))))))

(declare-fun b!2016179 () Bool)

(declare-fun res!884444 () Bool)

(assert (=> b!2016179 (=> (not res!884444) (not e!1274079))))

(assert (=> b!2016179 (= res!884444 (isEmpty!13767 (tail!3039 lt!756827)))))

(declare-fun b!2016180 () Bool)

(declare-fun res!884449 () Bool)

(assert (=> b!2016180 (=> res!884449 e!1274083)))

(assert (=> b!2016180 (= res!884449 (not (isEmpty!13767 (tail!3039 lt!756827))))))

(declare-fun b!2016181 () Bool)

(assert (=> b!2016181 (= e!1274082 e!1274083)))

(declare-fun res!884448 () Bool)

(assert (=> b!2016181 (=> res!884448 e!1274083)))

(assert (=> b!2016181 (= res!884448 call!123375)))

(assert (= (and d!615292 c!325693) b!2016169))

(assert (= (and d!615292 (not c!325693)) b!2016170))

(assert (= (and d!615292 c!325692) b!2016171))

(assert (= (and d!615292 (not c!325692)) b!2016178))

(assert (= (and b!2016178 c!325694) b!2016176))

(assert (= (and b!2016178 (not c!325694)) b!2016177))

(assert (= (and b!2016177 (not res!884447)) b!2016172))

(assert (= (and b!2016172 res!884445) b!2016175))

(assert (= (and b!2016175 res!884450) b!2016179))

(assert (= (and b!2016179 res!884444) b!2016174))

(assert (= (and b!2016172 (not res!884446)) b!2016168))

(assert (= (and b!2016168 res!884443) b!2016181))

(assert (= (and b!2016181 (not res!884448)) b!2016180))

(assert (= (and b!2016180 (not res!884449)) b!2016173))

(assert (= (or b!2016171 b!2016175 b!2016181) bm!123370))

(assert (=> d!615292 m!2449063))

(assert (=> d!615292 m!2449685))

(declare-fun m!2449687 () Bool)

(assert (=> b!2016169 m!2449687))

(assert (=> bm!123370 m!2449063))

(assert (=> b!2016174 m!2448839))

(assert (=> b!2016173 m!2448839))

(assert (=> b!2016180 m!2449069))

(assert (=> b!2016180 m!2449069))

(assert (=> b!2016180 m!2449071))

(assert (=> b!2016170 m!2448839))

(assert (=> b!2016170 m!2448839))

(declare-fun m!2449689 () Bool)

(assert (=> b!2016170 m!2449689))

(assert (=> b!2016170 m!2449069))

(assert (=> b!2016170 m!2449689))

(assert (=> b!2016170 m!2449069))

(declare-fun m!2449691 () Bool)

(assert (=> b!2016170 m!2449691))

(assert (=> b!2016179 m!2449069))

(assert (=> b!2016179 m!2449069))

(assert (=> b!2016179 m!2449071))

(assert (=> b!2015521 d!615292))

(declare-fun d!615294 () Bool)

(assert (=> d!615294 (= (inv!29307 (tag!4453 (rule!6204 separatorToken!354))) (= (mod (str.len (value!124936 (tag!4453 (rule!6204 separatorToken!354)))) 2) 0))))

(assert (=> b!2015500 d!615294))

(declare-fun d!615296 () Bool)

(declare-fun res!884451 () Bool)

(declare-fun e!1274086 () Bool)

(assert (=> d!615296 (=> (not res!884451) (not e!1274086))))

(assert (=> d!615296 (= res!884451 (semiInverseModEq!1598 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354)))))))

(assert (=> d!615296 (= (inv!29310 (transformation!3977 (rule!6204 separatorToken!354))) e!1274086)))

(declare-fun b!2016182 () Bool)

(assert (=> b!2016182 (= e!1274086 (equivClasses!1525 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354)))))))

(assert (= (and d!615296 res!884451) b!2016182))

(declare-fun m!2449693 () Bool)

(assert (=> d!615296 m!2449693))

(declare-fun m!2449695 () Bool)

(assert (=> b!2016182 m!2449695))

(assert (=> b!2015500 d!615296))

(declare-fun d!615298 () Bool)

(declare-fun res!884464 () Bool)

(declare-fun e!1274096 () Bool)

(assert (=> d!615298 (=> (not res!884464) (not e!1274096))))

(assert (=> d!615298 (= res!884464 (not (isEmpty!13767 (originalCharacters!4784 separatorToken!354))))))

(assert (=> d!615298 (= (inv!29311 separatorToken!354) e!1274096)))

(declare-fun b!2016201 () Bool)

(declare-fun res!884465 () Bool)

(assert (=> b!2016201 (=> (not res!884465) (not e!1274096))))

(assert (=> b!2016201 (= res!884465 (= (originalCharacters!4784 separatorToken!354) (list!9026 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (value!124937 separatorToken!354)))))))

(declare-fun b!2016202 () Bool)

(assert (=> b!2016202 (= e!1274096 (= (size!17297 separatorToken!354) (size!17301 (originalCharacters!4784 separatorToken!354))))))

(assert (= (and d!615298 res!884464) b!2016201))

(assert (= (and b!2016201 res!884465) b!2016202))

(declare-fun b_lambda!67521 () Bool)

(assert (=> (not b_lambda!67521) (not b!2016201)))

(assert (=> b!2016201 t!188330))

(declare-fun b_and!159713 () Bool)

(assert (= b_and!159683 (and (=> t!188330 result!151204) b_and!159713)))

(assert (=> b!2016201 t!188332))

(declare-fun b_and!159715 () Bool)

(assert (= b_and!159685 (and (=> t!188332 result!151206) b_and!159715)))

(assert (=> b!2016201 t!188334))

(declare-fun b_and!159717 () Bool)

(assert (= b_and!159687 (and (=> t!188334 result!151208) b_and!159717)))

(declare-fun m!2449711 () Bool)

(assert (=> d!615298 m!2449711))

(assert (=> b!2016201 m!2449501))

(assert (=> b!2016201 m!2449501))

(declare-fun m!2449713 () Bool)

(assert (=> b!2016201 m!2449713))

(declare-fun m!2449715 () Bool)

(assert (=> b!2016202 m!2449715))

(assert (=> start!198306 d!615298))

(declare-fun d!615304 () Bool)

(assert (=> d!615304 (= (get!7016 lt!756837) (v!26908 lt!756837))))

(assert (=> b!2015511 d!615304))

(declare-fun d!615306 () Bool)

(assert (=> d!615306 (= (inv!29307 (tag!4453 (rule!6204 (h!27543 tokens!598)))) (= (mod (str.len (value!124936 (tag!4453 (rule!6204 (h!27543 tokens!598))))) 2) 0))))

(assert (=> b!2015490 d!615306))

(declare-fun d!615308 () Bool)

(declare-fun res!884466 () Bool)

(declare-fun e!1274097 () Bool)

(assert (=> d!615308 (=> (not res!884466) (not e!1274097))))

(assert (=> d!615308 (= res!884466 (semiInverseModEq!1598 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))))))

(assert (=> d!615308 (= (inv!29310 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) e!1274097)))

(declare-fun b!2016203 () Bool)

(assert (=> b!2016203 (= e!1274097 (equivClasses!1525 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))))))

(assert (= (and d!615308 res!884466) b!2016203))

(declare-fun m!2449717 () Bool)

(assert (=> d!615308 m!2449717))

(declare-fun m!2449719 () Bool)

(assert (=> b!2016203 m!2449719))

(assert (=> b!2015490 d!615308))

(declare-fun d!615310 () Bool)

(declare-fun res!884467 () Bool)

(declare-fun e!1274098 () Bool)

(assert (=> d!615310 (=> (not res!884467) (not e!1274098))))

(assert (=> d!615310 (= res!884467 (not (isEmpty!13767 (originalCharacters!4784 (h!27543 tokens!598)))))))

(assert (=> d!615310 (= (inv!29311 (h!27543 tokens!598)) e!1274098)))

(declare-fun b!2016204 () Bool)

(declare-fun res!884468 () Bool)

(assert (=> b!2016204 (=> (not res!884468) (not e!1274098))))

(assert (=> b!2016204 (= res!884468 (= (originalCharacters!4784 (h!27543 tokens!598)) (list!9026 (dynLambda!10961 (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (value!124937 (h!27543 tokens!598))))))))

(declare-fun b!2016205 () Bool)

(assert (=> b!2016205 (= e!1274098 (= (size!17297 (h!27543 tokens!598)) (size!17301 (originalCharacters!4784 (h!27543 tokens!598)))))))

(assert (= (and d!615310 res!884467) b!2016204))

(assert (= (and b!2016204 res!884468) b!2016205))

(declare-fun b_lambda!67523 () Bool)

(assert (=> (not b_lambda!67523) (not b!2016204)))

(assert (=> b!2016204 t!188316))

(declare-fun b_and!159719 () Bool)

(assert (= b_and!159713 (and (=> t!188316 result!151190) b_and!159719)))

(assert (=> b!2016204 t!188318))

(declare-fun b_and!159721 () Bool)

(assert (= b_and!159715 (and (=> t!188318 result!151194) b_and!159721)))

(assert (=> b!2016204 t!188320))

(declare-fun b_and!159723 () Bool)

(assert (= b_and!159717 (and (=> t!188320 result!151196) b_and!159723)))

(declare-fun m!2449721 () Bool)

(assert (=> d!615310 m!2449721))

(assert (=> b!2016204 m!2449481))

(assert (=> b!2016204 m!2449481))

(declare-fun m!2449723 () Bool)

(assert (=> b!2016204 m!2449723))

(declare-fun m!2449725 () Bool)

(assert (=> b!2016205 m!2449725))

(assert (=> b!2015493 d!615310))

(declare-fun d!615312 () Bool)

(declare-fun lt!757131 () Bool)

(declare-fun content!3257 (List!22225) (Set Rule!7754))

(assert (=> d!615312 (= lt!757131 (set.member (rule!6204 separatorToken!354) (content!3257 rules!3198)))))

(declare-fun e!1274113 () Bool)

(assert (=> d!615312 (= lt!757131 e!1274113)))

(declare-fun res!884476 () Bool)

(assert (=> d!615312 (=> (not res!884476) (not e!1274113))))

(assert (=> d!615312 (= res!884476 (is-Cons!22143 rules!3198))))

(assert (=> d!615312 (= (contains!4066 rules!3198 (rule!6204 separatorToken!354)) lt!757131)))

(declare-fun b!2016225 () Bool)

(declare-fun e!1274112 () Bool)

(assert (=> b!2016225 (= e!1274113 e!1274112)))

(declare-fun res!884477 () Bool)

(assert (=> b!2016225 (=> res!884477 e!1274112)))

(assert (=> b!2016225 (= res!884477 (= (h!27544 rules!3198) (rule!6204 separatorToken!354)))))

(declare-fun b!2016226 () Bool)

(assert (=> b!2016226 (= e!1274112 (contains!4066 (t!188278 rules!3198) (rule!6204 separatorToken!354)))))

(assert (= (and d!615312 res!884476) b!2016225))

(assert (= (and b!2016225 (not res!884477)) b!2016226))

(declare-fun m!2449733 () Bool)

(assert (=> d!615312 m!2449733))

(declare-fun m!2449735 () Bool)

(assert (=> d!615312 m!2449735))

(declare-fun m!2449737 () Bool)

(assert (=> b!2016226 m!2449737))

(assert (=> b!2015504 d!615312))

(declare-fun d!615316 () Bool)

(declare-fun lt!757132 () Bool)

(assert (=> d!615316 (= lt!757132 (set.member (rule!6204 (h!27543 tokens!598)) (content!3257 rules!3198)))))

(declare-fun e!1274115 () Bool)

(assert (=> d!615316 (= lt!757132 e!1274115)))

(declare-fun res!884478 () Bool)

(assert (=> d!615316 (=> (not res!884478) (not e!1274115))))

(assert (=> d!615316 (= res!884478 (is-Cons!22143 rules!3198))))

(assert (=> d!615316 (= (contains!4066 rules!3198 (rule!6204 (h!27543 tokens!598))) lt!757132)))

(declare-fun b!2016227 () Bool)

(declare-fun e!1274114 () Bool)

(assert (=> b!2016227 (= e!1274115 e!1274114)))

(declare-fun res!884479 () Bool)

(assert (=> b!2016227 (=> res!884479 e!1274114)))

(assert (=> b!2016227 (= res!884479 (= (h!27544 rules!3198) (rule!6204 (h!27543 tokens!598))))))

(declare-fun b!2016228 () Bool)

(assert (=> b!2016228 (= e!1274114 (contains!4066 (t!188278 rules!3198) (rule!6204 (h!27543 tokens!598))))))

(assert (= (and d!615316 res!884478) b!2016227))

(assert (= (and b!2016227 (not res!884479)) b!2016228))

(assert (=> d!615316 m!2449733))

(declare-fun m!2449739 () Bool)

(assert (=> d!615316 m!2449739))

(declare-fun m!2449741 () Bool)

(assert (=> b!2016228 m!2449741))

(assert (=> b!2015513 d!615316))

(declare-fun d!615318 () Bool)

(declare-fun lt!757135 () Bool)

(declare-fun e!1274117 () Bool)

(assert (=> d!615318 (= lt!757135 e!1274117)))

(declare-fun res!884481 () Bool)

(assert (=> d!615318 (=> (not res!884481) (not e!1274117))))

(assert (=> d!615318 (= res!884481 (= (list!9028 (_1!11871 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 separatorToken!354))))) (list!9028 (singletonSeq!1953 separatorToken!354))))))

(declare-fun e!1274116 () Bool)

(assert (=> d!615318 (= lt!757135 e!1274116)))

(declare-fun res!884482 () Bool)

(assert (=> d!615318 (=> (not res!884482) (not e!1274116))))

(declare-fun lt!757136 () tuple2!20804)

(assert (=> d!615318 (= res!884482 (= (size!17299 (_1!11871 lt!757136)) 1))))

(assert (=> d!615318 (= lt!757136 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 separatorToken!354))))))

(assert (=> d!615318 (not (isEmpty!13762 rules!3198))))

(assert (=> d!615318 (= (rulesProduceIndividualToken!1762 thiss!23328 rules!3198 separatorToken!354) lt!757135)))

(declare-fun b!2016229 () Bool)

(declare-fun res!884480 () Bool)

(assert (=> b!2016229 (=> (not res!884480) (not e!1274116))))

(assert (=> b!2016229 (= res!884480 (= (apply!5812 (_1!11871 lt!757136) 0) separatorToken!354))))

(declare-fun b!2016230 () Bool)

(assert (=> b!2016230 (= e!1274116 (isEmpty!13773 (_2!11871 lt!757136)))))

(declare-fun b!2016231 () Bool)

(assert (=> b!2016231 (= e!1274117 (isEmpty!13773 (_2!11871 (lex!1606 thiss!23328 rules!3198 (print!1552 thiss!23328 (singletonSeq!1953 separatorToken!354))))))))

(assert (= (and d!615318 res!884482) b!2016229))

(assert (= (and b!2016229 res!884480) b!2016230))

(assert (= (and d!615318 res!884481) b!2016231))

(declare-fun m!2449749 () Bool)

(assert (=> d!615318 m!2449749))

(declare-fun m!2449751 () Bool)

(assert (=> d!615318 m!2449751))

(declare-fun m!2449753 () Bool)

(assert (=> d!615318 m!2449753))

(assert (=> d!615318 m!2449749))

(declare-fun m!2449755 () Bool)

(assert (=> d!615318 m!2449755))

(assert (=> d!615318 m!2449755))

(declare-fun m!2449757 () Bool)

(assert (=> d!615318 m!2449757))

(declare-fun m!2449759 () Bool)

(assert (=> d!615318 m!2449759))

(assert (=> d!615318 m!2449749))

(assert (=> d!615318 m!2448867))

(declare-fun m!2449761 () Bool)

(assert (=> b!2016229 m!2449761))

(declare-fun m!2449763 () Bool)

(assert (=> b!2016230 m!2449763))

(assert (=> b!2016231 m!2449749))

(assert (=> b!2016231 m!2449749))

(assert (=> b!2016231 m!2449755))

(assert (=> b!2016231 m!2449755))

(assert (=> b!2016231 m!2449757))

(declare-fun m!2449765 () Bool)

(assert (=> b!2016231 m!2449765))

(assert (=> b!2015492 d!615318))

(declare-fun d!615322 () Bool)

(assert (=> d!615322 (= (isEmpty!13762 rules!3198) (is-Nil!22143 rules!3198))))

(assert (=> b!2015514 d!615322))

(declare-fun b!2016242 () Bool)

(declare-fun b_free!56325 () Bool)

(declare-fun b_next!57029 () Bool)

(assert (=> b!2016242 (= b_free!56325 (not b_next!57029))))

(declare-fun t!188355 () Bool)

(declare-fun tb!126205 () Bool)

(assert (=> (and b!2016242 (= (toValue!5646 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188355) tb!126205))

(declare-fun result!151230 () Bool)

(assert (= result!151230 result!151160))

(assert (=> d!615202 t!188355))

(declare-fun tb!126207 () Bool)

(declare-fun t!188357 () Bool)

(assert (=> (and b!2016242 (= (toValue!5646 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188357) tb!126207))

(declare-fun result!151232 () Bool)

(assert (= result!151232 result!151168))

(assert (=> d!615202 t!188357))

(assert (=> d!615252 t!188355))

(declare-fun tp!600830 () Bool)

(declare-fun b_and!159725 () Bool)

(assert (=> b!2016242 (= tp!600830 (and (=> t!188355 result!151230) (=> t!188357 result!151232) b_and!159725))))

(declare-fun b_free!56327 () Bool)

(declare-fun b_next!57031 () Bool)

(assert (=> b!2016242 (= b_free!56327 (not b_next!57031))))

(declare-fun tb!126209 () Bool)

(declare-fun t!188359 () Bool)

(assert (=> (and b!2016242 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354)))) t!188359) tb!126209))

(declare-fun result!151234 () Bool)

(assert (= result!151234 result!151204))

(assert (=> d!615254 t!188359))

(declare-fun t!188361 () Bool)

(declare-fun tb!126211 () Bool)

(assert (=> (and b!2016242 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188361) tb!126211))

(declare-fun result!151236 () Bool)

(assert (= result!151236 result!151190))

(assert (=> b!2016204 t!188361))

(assert (=> b!2016201 t!188359))

(assert (=> d!615248 t!188361))

(declare-fun t!188363 () Bool)

(declare-fun tb!126213 () Bool)

(assert (=> (and b!2016242 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188363) tb!126213))

(declare-fun result!151238 () Bool)

(assert (= result!151238 result!151198))

(assert (=> d!615252 t!188363))

(declare-fun tp!600827 () Bool)

(declare-fun b_and!159727 () Bool)

(assert (=> b!2016242 (= tp!600827 (and (=> t!188359 result!151234) (=> t!188363 result!151238) (=> t!188361 result!151236) b_and!159727))))

(declare-fun e!1274127 () Bool)

(assert (=> b!2016242 (= e!1274127 (and tp!600830 tp!600827))))

(declare-fun tp!600828 () Bool)

(declare-fun e!1274128 () Bool)

(declare-fun b!2016241 () Bool)

(assert (=> b!2016241 (= e!1274128 (and tp!600828 (inv!29307 (tag!4453 (h!27544 (t!188278 rules!3198)))) (inv!29310 (transformation!3977 (h!27544 (t!188278 rules!3198)))) e!1274127))))

(declare-fun b!2016240 () Bool)

(declare-fun e!1274126 () Bool)

(declare-fun tp!600829 () Bool)

(assert (=> b!2016240 (= e!1274126 (and e!1274128 tp!600829))))

(assert (=> b!2015505 (= tp!600763 e!1274126)))

(assert (= b!2016241 b!2016242))

(assert (= b!2016240 b!2016241))

(assert (= (and b!2015505 (is-Cons!22143 (t!188278 rules!3198))) b!2016240))

(declare-fun m!2449767 () Bool)

(assert (=> b!2016241 m!2449767))

(declare-fun m!2449769 () Bool)

(assert (=> b!2016241 m!2449769))

(declare-fun b!2016247 () Bool)

(declare-fun e!1274132 () Bool)

(declare-fun tp_is_empty!9203 () Bool)

(declare-fun tp!600833 () Bool)

(assert (=> b!2016247 (= e!1274132 (and tp_is_empty!9203 tp!600833))))

(assert (=> b!2015509 (= tp!600762 e!1274132)))

(assert (= (and b!2015509 (is-Cons!22141 (originalCharacters!4784 separatorToken!354))) b!2016247))

(declare-fun b!2016259 () Bool)

(declare-fun e!1274135 () Bool)

(declare-fun tp!600847 () Bool)

(declare-fun tp!600848 () Bool)

(assert (=> b!2016259 (= e!1274135 (and tp!600847 tp!600848))))

(declare-fun b!2016260 () Bool)

(declare-fun tp!600844 () Bool)

(assert (=> b!2016260 (= e!1274135 tp!600844)))

(assert (=> b!2015520 (= tp!600765 e!1274135)))

(declare-fun b!2016258 () Bool)

(assert (=> b!2016258 (= e!1274135 tp_is_empty!9203)))

(declare-fun b!2016261 () Bool)

(declare-fun tp!600846 () Bool)

(declare-fun tp!600845 () Bool)

(assert (=> b!2016261 (= e!1274135 (and tp!600846 tp!600845))))

(assert (= (and b!2015520 (is-ElementMatch!5402 (regex!3977 (h!27544 rules!3198)))) b!2016258))

(assert (= (and b!2015520 (is-Concat!9516 (regex!3977 (h!27544 rules!3198)))) b!2016259))

(assert (= (and b!2015520 (is-Star!5402 (regex!3977 (h!27544 rules!3198)))) b!2016260))

(assert (= (and b!2015520 (is-Union!5402 (regex!3977 (h!27544 rules!3198)))) b!2016261))

(declare-fun b!2016262 () Bool)

(declare-fun e!1274136 () Bool)

(declare-fun tp!600849 () Bool)

(assert (=> b!2016262 (= e!1274136 (and tp_is_empty!9203 tp!600849))))

(assert (=> b!2015499 (= tp!600757 e!1274136)))

(assert (= (and b!2015499 (is-Cons!22141 (originalCharacters!4784 (h!27543 tokens!598)))) b!2016262))

(declare-fun b!2016264 () Bool)

(declare-fun e!1274137 () Bool)

(declare-fun tp!600853 () Bool)

(declare-fun tp!600854 () Bool)

(assert (=> b!2016264 (= e!1274137 (and tp!600853 tp!600854))))

(declare-fun b!2016265 () Bool)

(declare-fun tp!600850 () Bool)

(assert (=> b!2016265 (= e!1274137 tp!600850)))

(assert (=> b!2015500 (= tp!600769 e!1274137)))

(declare-fun b!2016263 () Bool)

(assert (=> b!2016263 (= e!1274137 tp_is_empty!9203)))

(declare-fun b!2016266 () Bool)

(declare-fun tp!600852 () Bool)

(declare-fun tp!600851 () Bool)

(assert (=> b!2016266 (= e!1274137 (and tp!600852 tp!600851))))

(assert (= (and b!2015500 (is-ElementMatch!5402 (regex!3977 (rule!6204 separatorToken!354)))) b!2016263))

(assert (= (and b!2015500 (is-Concat!9516 (regex!3977 (rule!6204 separatorToken!354)))) b!2016264))

(assert (= (and b!2015500 (is-Star!5402 (regex!3977 (rule!6204 separatorToken!354)))) b!2016265))

(assert (= (and b!2015500 (is-Union!5402 (regex!3977 (rule!6204 separatorToken!354)))) b!2016266))

(declare-fun b!2016268 () Bool)

(declare-fun e!1274138 () Bool)

(declare-fun tp!600858 () Bool)

(declare-fun tp!600859 () Bool)

(assert (=> b!2016268 (= e!1274138 (and tp!600858 tp!600859))))

(declare-fun b!2016269 () Bool)

(declare-fun tp!600855 () Bool)

(assert (=> b!2016269 (= e!1274138 tp!600855)))

(assert (=> b!2015490 (= tp!600766 e!1274138)))

(declare-fun b!2016267 () Bool)

(assert (=> b!2016267 (= e!1274138 tp_is_empty!9203)))

(declare-fun b!2016270 () Bool)

(declare-fun tp!600857 () Bool)

(declare-fun tp!600856 () Bool)

(assert (=> b!2016270 (= e!1274138 (and tp!600857 tp!600856))))

(assert (= (and b!2015490 (is-ElementMatch!5402 (regex!3977 (rule!6204 (h!27543 tokens!598))))) b!2016267))

(assert (= (and b!2015490 (is-Concat!9516 (regex!3977 (rule!6204 (h!27543 tokens!598))))) b!2016268))

(assert (= (and b!2015490 (is-Star!5402 (regex!3977 (rule!6204 (h!27543 tokens!598))))) b!2016269))

(assert (= (and b!2015490 (is-Union!5402 (regex!3977 (rule!6204 (h!27543 tokens!598))))) b!2016270))

(declare-fun b!2016284 () Bool)

(declare-fun b_free!56329 () Bool)

(declare-fun b_next!57033 () Bool)

(assert (=> b!2016284 (= b_free!56329 (not b_next!57033))))

(declare-fun t!188365 () Bool)

(declare-fun tb!126215 () Bool)

(assert (=> (and b!2016284 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188365) tb!126215))

(declare-fun result!151246 () Bool)

(assert (= result!151246 result!151160))

(assert (=> d!615202 t!188365))

(declare-fun t!188367 () Bool)

(declare-fun tb!126217 () Bool)

(assert (=> (and b!2016284 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188367) tb!126217))

(declare-fun result!151248 () Bool)

(assert (= result!151248 result!151168))

(assert (=> d!615202 t!188367))

(assert (=> d!615252 t!188365))

(declare-fun b_and!159729 () Bool)

(declare-fun tp!600870 () Bool)

(assert (=> b!2016284 (= tp!600870 (and (=> t!188365 result!151246) (=> t!188367 result!151248) b_and!159729))))

(declare-fun b_free!56331 () Bool)

(declare-fun b_next!57035 () Bool)

(assert (=> b!2016284 (= b_free!56331 (not b_next!57035))))

(declare-fun t!188369 () Bool)

(declare-fun tb!126219 () Bool)

(assert (=> (and b!2016284 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354)))) t!188369) tb!126219))

(declare-fun result!151250 () Bool)

(assert (= result!151250 result!151204))

(assert (=> d!615254 t!188369))

(declare-fun t!188371 () Bool)

(declare-fun tb!126221 () Bool)

(assert (=> (and b!2016284 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188371) tb!126221))

(declare-fun result!151252 () Bool)

(assert (= result!151252 result!151190))

(assert (=> b!2016204 t!188371))

(assert (=> b!2016201 t!188369))

(assert (=> d!615248 t!188371))

(declare-fun t!188373 () Bool)

(declare-fun tb!126223 () Bool)

(assert (=> (and b!2016284 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598))))) t!188373) tb!126223))

(declare-fun result!151254 () Bool)

(assert (= result!151254 result!151198))

(assert (=> d!615252 t!188373))

(declare-fun b_and!159731 () Bool)

(declare-fun tp!600874 () Bool)

(assert (=> b!2016284 (= tp!600874 (and (=> t!188373 result!151254) (=> t!188371 result!151252) (=> t!188369 result!151250) b_and!159731))))

(declare-fun b!2016283 () Bool)

(declare-fun e!1274152 () Bool)

(declare-fun tp!600873 () Bool)

(declare-fun e!1274155 () Bool)

(assert (=> b!2016283 (= e!1274155 (and tp!600873 (inv!29307 (tag!4453 (rule!6204 (h!27543 (t!188277 tokens!598))))) (inv!29310 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) e!1274152))))

(declare-fun e!1274151 () Bool)

(assert (=> b!2015493 (= tp!600764 e!1274151)))

(assert (=> b!2016284 (= e!1274152 (and tp!600870 tp!600874))))

(declare-fun e!1274154 () Bool)

(declare-fun b!2016281 () Bool)

(declare-fun tp!600871 () Bool)

(assert (=> b!2016281 (= e!1274151 (and (inv!29311 (h!27543 (t!188277 tokens!598))) e!1274154 tp!600871))))

(declare-fun tp!600872 () Bool)

(declare-fun b!2016282 () Bool)

(assert (=> b!2016282 (= e!1274154 (and (inv!21 (value!124937 (h!27543 (t!188277 tokens!598)))) e!1274155 tp!600872))))

(assert (= b!2016283 b!2016284))

(assert (= b!2016282 b!2016283))

(assert (= b!2016281 b!2016282))

(assert (= (and b!2015493 (is-Cons!22142 (t!188277 tokens!598))) b!2016281))

(declare-fun m!2449771 () Bool)

(assert (=> b!2016283 m!2449771))

(declare-fun m!2449773 () Bool)

(assert (=> b!2016283 m!2449773))

(declare-fun m!2449775 () Bool)

(assert (=> b!2016281 m!2449775))

(declare-fun m!2449777 () Bool)

(assert (=> b!2016282 m!2449777))

(declare-fun b_lambda!67525 () Bool)

(assert (= b_lambda!67509 (or (and b!2015508 b_free!56311 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2016284 b_free!56331 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2015515 b_free!56307) (and b!2016242 b_free!56327 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2015503 b_free!56303 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) b_lambda!67525)))

(declare-fun b_lambda!67527 () Bool)

(assert (= b_lambda!67507 (or (and b!2016284 b_free!56329 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56305 (= (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015503 b_free!56301 (= (toValue!5646 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56309) (and b!2016242 b_free!56325 (= (toValue!5646 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67527)))

(declare-fun b_lambda!67529 () Bool)

(assert (= b_lambda!67523 (or (and b!2015503 b_free!56303 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56311) (and b!2016242 b_free!56327 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2016284 b_free!56331 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56307 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67529)))

(declare-fun b_lambda!67531 () Bool)

(assert (= b_lambda!67493 (or b!2015510 b_lambda!67531)))

(declare-fun bs!419969 () Bool)

(declare-fun d!615324 () Bool)

(assert (= bs!419969 (and d!615324 b!2015510)))

(assert (=> bs!419969 (= (dynLambda!10949 lambda!76252 (h!27543 tokens!598)) (not (isSeparator!3977 (rule!6204 (h!27543 tokens!598)))))))

(assert (=> b!2015731 d!615324))

(declare-fun b_lambda!67533 () Bool)

(assert (= b_lambda!67521 (or (and b!2015508 b_free!56311 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2016284 b_free!56331 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2015515 b_free!56307) (and b!2016242 b_free!56327 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) (and b!2015503 b_free!56303 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))))) b_lambda!67533)))

(declare-fun b_lambda!67535 () Bool)

(assert (= b_lambda!67497 (or (and b!2016284 b_free!56329 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56305 (= (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015503 b_free!56301 (= (toValue!5646 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56309) (and b!2016242 b_free!56325 (= (toValue!5646 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67535)))

(declare-fun b_lambda!67537 () Bool)

(assert (= b_lambda!67505 (or (and b!2015503 b_free!56303 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56311) (and b!2016242 b_free!56327 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2016284 b_free!56331 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56307 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67537)))

(declare-fun b_lambda!67539 () Bool)

(assert (= b_lambda!67503 (or (and b!2015503 b_free!56303 (= (toChars!5505 (transformation!3977 (h!27544 rules!3198))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56311) (and b!2016242 b_free!56327 (= (toChars!5505 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2016284 b_free!56331 (= (toChars!5505 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56307 (= (toChars!5505 (transformation!3977 (rule!6204 separatorToken!354))) (toChars!5505 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67539)))

(declare-fun b_lambda!67541 () Bool)

(assert (= b_lambda!67495 (or (and b!2016284 b_free!56329 (= (toValue!5646 (transformation!3977 (rule!6204 (h!27543 (t!188277 tokens!598))))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015515 b_free!56305 (= (toValue!5646 (transformation!3977 (rule!6204 separatorToken!354))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015503 b_free!56301 (= (toValue!5646 (transformation!3977 (h!27544 rules!3198))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) (and b!2015508 b_free!56309) (and b!2016242 b_free!56325 (= (toValue!5646 (transformation!3977 (h!27544 (t!188278 rules!3198)))) (toValue!5646 (transformation!3977 (rule!6204 (h!27543 tokens!598)))))) b_lambda!67541)))

(push 1)

(assert (not b!2016170))

(assert b_and!159723)

(assert (not b!2015751))

(assert (not d!615292))

(assert (not b!2015715))

(assert b_and!159681)

(assert (not b_lambda!67537))

(assert (not b!2016012))

(assert (not b!2016204))

(assert (not b!2016269))

(assert (not d!615166))

(assert (not d!615250))

(assert b_and!159719)

(assert (not b!2015752))

(assert (not b_next!57007))

(assert (not bm!123324))

(assert (not b!2016282))

(assert (not tb!126169))

(assert (not b_next!57015))

(assert b_and!159731)

(assert (not tb!126175))

(assert (not d!615204))

(assert (not d!615196))

(assert (not d!615246))

(assert (not b!2015987))

(assert (not b_lambda!67533))

(assert (not d!615296))

(assert (not b!2016247))

(assert (not b!2016041))

(assert (not bm!123347))

(assert (not b!2015692))

(assert (not b!2015633))

(assert (not d!615138))

(assert (not b!2016179))

(assert (not b!2015726))

(assert (not b!2016035))

(assert (not b!2015632))

(assert (not b!2015985))

(assert (not d!615170))

(assert (not b!2015996))

(assert (not b!2015832))

(assert (not d!615198))

(assert (not b!2016001))

(assert (not b!2015879))

(assert (not b!2016004))

(assert (not b!2016283))

(assert (not b_lambda!67525))

(assert (not b!2015968))

(assert (not b!2016182))

(assert (not d!615290))

(assert (not d!615192))

(assert (not d!615316))

(assert (not b_next!57011))

(assert (not b!2016000))

(assert (not b!2016007))

(assert (not b!2015688))

(assert (not b!2016201))

(assert (not b!2015691))

(assert (not b!2016174))

(assert (not b!2016231))

(assert (not d!615178))

(assert (not d!615242))

(assert (not b!2016266))

(assert (not b!2015701))

(assert (not tb!126151))

(assert (not b!2015696))

(assert (not bm!123313))

(assert (not b!2015722))

(assert (not d!615258))

(assert (not d!615176))

(assert b_and!159679)

(assert (not bm!123327))

(assert (not b!2015961))

(assert (not b!2015999))

(assert (not b!2015682))

(assert (not b!2015890))

(assert (not d!615232))

(assert (not bm!123312))

(assert (not b!2016169))

(assert (not b!2015833))

(assert (not b!2016005))

(assert (not b!2015851))

(assert (not bm!123348))

(assert (not bm!123322))

(assert (not b!2015889))

(assert (not b!2015990))

(assert (not b!2016265))

(assert (not b!2015878))

(assert (not b!2016241))

(assert (not b!2015965))

(assert (not bm!123343))

(assert (not b!2015795))

(assert (not d!615254))

(assert (not d!615136))

(assert (not b!2016260))

(assert (not d!615248))

(assert (not d!615252))

(assert (not b!2015852))

(assert (not b_next!57029))

(assert (not b!2016137))

(assert (not d!615188))

(assert (not b_lambda!67535))

(assert (not b_next!57005))

(assert (not b!2015801))

(assert (not d!615134))

(assert (not d!615154))

(assert (not b!2016202))

(assert (not b!2016261))

(assert (not d!615238))

(assert (not b!2015695))

(assert (not b!2015871))

(assert (not b!2016281))

(assert (not tb!126181))

(assert (not b!2015842))

(assert (not b_next!57031))

(assert (not d!615180))

(assert tp_is_empty!9203)

(assert (not b_next!57035))

(assert (not d!615174))

(assert (not b!2015873))

(assert (not b!2015678))

(assert (not b_lambda!67529))

(assert (not b!2015984))

(assert (not b!2016240))

(assert (not b!2015960))

(assert (not tb!126145))

(assert (not b!2016259))

(assert (not b!2016270))

(assert (not d!615236))

(assert (not b!2015634))

(assert (not b_next!57033))

(assert (not b!2015790))

(assert (not b!2015723))

(assert (not b!2015681))

(assert (not b!2015877))

(assert (not d!615190))

(assert (not b_lambda!67527))

(assert (not b!2016040))

(assert (not b_lambda!67539))

(assert (not bm!123370))

(assert (not b!2016230))

(assert (not b!2016268))

(assert (not bm!123346))

(assert (not b!2016205))

(assert (not bm!123328))

(assert (not b!2016180))

(assert (not b_next!57009))

(assert (not bm!123326))

(assert (not b!2015763))

(assert (not b!2015635))

(assert (not b_next!57013))

(assert (not d!615164))

(assert b_and!159721)

(assert (not b!2015714))

(assert (not b!2015642))

(assert b_and!159729)

(assert (not b!2015874))

(assert (not d!615240))

(assert (not b!2016139))

(assert (not b!2015812))

(assert (not d!615202))

(assert b_and!159727)

(assert (not bm!123332))

(assert (not b!2016226))

(assert (not b!2015721))

(assert (not b!2016138))

(assert (not b!2016030))

(assert (not bm!123323))

(assert (not b!2016228))

(assert (not b!2016173))

(assert b_and!159677)

(assert (not b!2015739))

(assert (not b!2015876))

(assert (not b!2016203))

(assert (not b!2016262))

(assert (not b!2015991))

(assert (not d!615310))

(assert (not d!615234))

(assert (not b!2015677))

(assert (not d!615318))

(assert (not b!2015813))

(assert (not d!615244))

(assert (not b!2016006))

(assert (not b_lambda!67541))

(assert (not b!2015718))

(assert (not b!2015966))

(assert (not d!615128))

(assert (not d!615146))

(assert (not d!615308))

(assert (not b!2016229))

(assert (not b!2015702))

(assert (not b!2016264))

(assert (not b!2015755))

(assert b_and!159725)

(assert (not d!615162))

(assert (not d!615130))

(assert (not b!2015732))

(assert (not b!2015993))

(assert (not b!2015792))

(assert (not d!615160))

(assert (not b!2015687))

(assert (not b!2015756))

(assert (not b!2015794))

(assert (not b!2015997))

(assert (not d!615186))

(assert (not d!615200))

(assert (not d!615298))

(assert (not d!615312))

(assert (not b!2015872))

(assert (not b!2015741))

(assert (not b!2016002))

(assert (not b_lambda!67531))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!57011))

(assert b_and!159679)

(assert (not b_next!57029))

(assert (not b_next!57005))

(assert (not b_next!57033))

(assert (not b_next!57009))

(assert b_and!159725)

(assert b_and!159723)

(assert b_and!159681)

(assert (not b_next!57007))

(assert b_and!159719)

(assert (not b_next!57015))

(assert b_and!159731)

(assert (not b_next!57031))

(assert (not b_next!57035))

(assert (not b_next!57013))

(assert b_and!159721)

(assert b_and!159729)

(assert b_and!159727)

(assert b_and!159677)

(check-sat)

(pop 1)

