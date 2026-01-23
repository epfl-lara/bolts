; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!325600 () Bool)

(assert start!325600)

(declare-fun b!3503178 () Bool)

(declare-fun b_free!90485 () Bool)

(declare-fun b_next!91189 () Bool)

(assert (=> b!3503178 (= b_free!90485 (not b_next!91189))))

(declare-fun tp!1084490 () Bool)

(declare-fun b_and!248551 () Bool)

(assert (=> b!3503178 (= tp!1084490 b_and!248551)))

(declare-fun b_free!90487 () Bool)

(declare-fun b_next!91191 () Bool)

(assert (=> b!3503178 (= b_free!90487 (not b_next!91191))))

(declare-fun tp!1084484 () Bool)

(declare-fun b_and!248553 () Bool)

(assert (=> b!3503178 (= tp!1084484 b_and!248553)))

(declare-fun b!3503145 () Bool)

(declare-fun b_free!90489 () Bool)

(declare-fun b_next!91193 () Bool)

(assert (=> b!3503145 (= b_free!90489 (not b_next!91193))))

(declare-fun tp!1084493 () Bool)

(declare-fun b_and!248555 () Bool)

(assert (=> b!3503145 (= tp!1084493 b_and!248555)))

(declare-fun b_free!90491 () Bool)

(declare-fun b_next!91195 () Bool)

(assert (=> b!3503145 (= b_free!90491 (not b_next!91195))))

(declare-fun tp!1084481 () Bool)

(declare-fun b_and!248557 () Bool)

(assert (=> b!3503145 (= tp!1084481 b_and!248557)))

(declare-fun b!3503174 () Bool)

(declare-fun b_free!90493 () Bool)

(declare-fun b_next!91197 () Bool)

(assert (=> b!3503174 (= b_free!90493 (not b_next!91197))))

(declare-fun tp!1084486 () Bool)

(declare-fun b_and!248559 () Bool)

(assert (=> b!3503174 (= tp!1084486 b_and!248559)))

(declare-fun b_free!90495 () Bool)

(declare-fun b_next!91199 () Bool)

(assert (=> b!3503174 (= b_free!90495 (not b_next!91199))))

(declare-fun tp!1084485 () Bool)

(declare-fun b_and!248561 () Bool)

(assert (=> b!3503174 (= tp!1084485 b_and!248561)))

(declare-fun bs!563838 () Bool)

(declare-fun b!3503158 () Bool)

(declare-fun b!3503149 () Bool)

(assert (= bs!563838 (and b!3503158 b!3503149)))

(declare-fun lambda!122475 () Int)

(declare-fun lambda!122474 () Int)

(assert (=> bs!563838 (not (= lambda!122475 lambda!122474))))

(declare-fun b!3503192 () Bool)

(declare-fun e!2168937 () Bool)

(assert (=> b!3503192 (= e!2168937 true)))

(declare-fun b!3503191 () Bool)

(declare-fun e!2168936 () Bool)

(assert (=> b!3503191 (= e!2168936 e!2168937)))

(declare-fun b!3503190 () Bool)

(declare-fun e!2168935 () Bool)

(assert (=> b!3503190 (= e!2168935 e!2168936)))

(assert (=> b!3503158 e!2168935))

(assert (= b!3503191 b!3503192))

(assert (= b!3503190 b!3503191))

(declare-datatypes ((C!20634 0))(
  ( (C!20635 (val!12365 Int)) )
))
(declare-datatypes ((Regex!10224 0))(
  ( (ElementMatch!10224 (c!602585 C!20634)) (Concat!15919 (regOne!20960 Regex!10224) (regTwo!20960 Regex!10224)) (EmptyExpr!10224) (Star!10224 (reg!10553 Regex!10224)) (EmptyLang!10224) (Union!10224 (regOne!20961 Regex!10224) (regTwo!20961 Regex!10224)) )
))
(declare-datatypes ((List!37414 0))(
  ( (Nil!37290) (Cons!37290 (h!42710 (_ BitVec 16)) (t!279113 List!37414)) )
))
(declare-datatypes ((TokenValue!5695 0))(
  ( (FloatLiteralValue!11390 (text!40310 List!37414)) (TokenValueExt!5694 (__x!23607 Int)) (Broken!28475 (value!176188 List!37414)) (Object!5818) (End!5695) (Def!5695) (Underscore!5695) (Match!5695) (Else!5695) (Error!5695) (Case!5695) (If!5695) (Extends!5695) (Abstract!5695) (Class!5695) (Val!5695) (DelimiterValue!11390 (del!5755 List!37414)) (KeywordValue!5701 (value!176189 List!37414)) (CommentValue!11390 (value!176190 List!37414)) (WhitespaceValue!11390 (value!176191 List!37414)) (IndentationValue!5695 (value!176192 List!37414)) (String!41810) (Int32!5695) (Broken!28476 (value!176193 List!37414)) (Boolean!5696) (Unit!52854) (OperatorValue!5698 (op!5755 List!37414)) (IdentifierValue!11390 (value!176194 List!37414)) (IdentifierValue!11391 (value!176195 List!37414)) (WhitespaceValue!11391 (value!176196 List!37414)) (True!11390) (False!11390) (Broken!28477 (value!176197 List!37414)) (Broken!28478 (value!176198 List!37414)) (True!11391) (RightBrace!5695) (RightBracket!5695) (Colon!5695) (Null!5695) (Comma!5695) (LeftBracket!5695) (False!11391) (LeftBrace!5695) (ImaginaryLiteralValue!5695 (text!40311 List!37414)) (StringLiteralValue!17085 (value!176199 List!37414)) (EOFValue!5695 (value!176200 List!37414)) (IdentValue!5695 (value!176201 List!37414)) (DelimiterValue!11391 (value!176202 List!37414)) (DedentValue!5695 (value!176203 List!37414)) (NewLineValue!5695 (value!176204 List!37414)) (IntegerValue!17085 (value!176205 (_ BitVec 32)) (text!40312 List!37414)) (IntegerValue!17086 (value!176206 Int) (text!40313 List!37414)) (Times!5695) (Or!5695) (Equal!5695) (Minus!5695) (Broken!28479 (value!176207 List!37414)) (And!5695) (Div!5695) (LessEqual!5695) (Mod!5695) (Concat!15920) (Not!5695) (Plus!5695) (SpaceValue!5695 (value!176208 List!37414)) (IntegerValue!17087 (value!176209 Int) (text!40314 List!37414)) (StringLiteralValue!17086 (text!40315 List!37414)) (FloatLiteralValue!11391 (text!40316 List!37414)) (BytesLiteralValue!5695 (value!176210 List!37414)) (CommentValue!11391 (value!176211 List!37414)) (StringLiteralValue!17087 (value!176212 List!37414)) (ErrorTokenValue!5695 (msg!5756 List!37414)) )
))
(declare-datatypes ((List!37415 0))(
  ( (Nil!37291) (Cons!37291 (h!42711 C!20634) (t!279114 List!37415)) )
))
(declare-datatypes ((IArray!22615 0))(
  ( (IArray!22616 (innerList!11365 List!37415)) )
))
(declare-datatypes ((Conc!11305 0))(
  ( (Node!11305 (left!29118 Conc!11305) (right!29448 Conc!11305) (csize!22840 Int) (cheight!11516 Int)) (Leaf!17649 (xs!14491 IArray!22615) (csize!22841 Int)) (Empty!11305) )
))
(declare-datatypes ((BalanceConc!22224 0))(
  ( (BalanceConc!22225 (c!602586 Conc!11305)) )
))
(declare-datatypes ((String!41811 0))(
  ( (String!41812 (value!176213 String)) )
))
(declare-datatypes ((TokenValueInjection!10818 0))(
  ( (TokenValueInjection!10819 (toValue!7709 Int) (toChars!7568 Int)) )
))
(declare-datatypes ((Rule!10730 0))(
  ( (Rule!10731 (regex!5465 Regex!10224) (tag!6095 String!41811) (isSeparator!5465 Bool) (transformation!5465 TokenValueInjection!10818)) )
))
(declare-datatypes ((List!37416 0))(
  ( (Nil!37292) (Cons!37292 (h!42712 Rule!10730) (t!279115 List!37416)) )
))
(declare-fun rules!2135 () List!37416)

(assert (= (and b!3503158 (is-Cons!37292 rules!2135)) b!3503190))

(declare-fun order!19999 () Int)

(declare-fun order!20001 () Int)

(declare-fun dynLambda!15833 (Int Int) Int)

(declare-fun dynLambda!15834 (Int Int) Int)

(assert (=> b!3503192 (< (dynLambda!15833 order!19999 (toValue!7709 (transformation!5465 (h!42712 rules!2135)))) (dynLambda!15834 order!20001 lambda!122475))))

(declare-fun order!20003 () Int)

(declare-fun dynLambda!15835 (Int Int) Int)

(assert (=> b!3503192 (< (dynLambda!15835 order!20003 (toChars!7568 (transformation!5465 (h!42712 rules!2135)))) (dynLambda!15834 order!20001 lambda!122475))))

(assert (=> b!3503158 true))

(declare-fun b!3503141 () Bool)

(declare-fun e!2168907 () Bool)

(declare-fun e!2168910 () Bool)

(assert (=> b!3503141 (= e!2168907 e!2168910)))

(declare-fun res!1412890 () Bool)

(assert (=> b!3503141 (=> (not res!1412890) (not e!2168910))))

(declare-fun lt!1194328 () Rule!10730)

(declare-fun lt!1194330 () List!37415)

(declare-fun matchR!4808 (Regex!10224 List!37415) Bool)

(assert (=> b!3503141 (= res!1412890 (matchR!4808 (regex!5465 lt!1194328) lt!1194330))))

(declare-datatypes ((Option!7587 0))(
  ( (None!7586) (Some!7586 (v!37030 Rule!10730)) )
))
(declare-fun lt!1194347 () Option!7587)

(declare-fun get!11963 (Option!7587) Rule!10730)

(assert (=> b!3503141 (= lt!1194328 (get!11963 lt!1194347))))

(declare-fun tp!1084491 () Bool)

(declare-fun b!3503142 () Bool)

(declare-datatypes ((Token!10296 0))(
  ( (Token!10297 (value!176214 TokenValue!5695) (rule!8091 Rule!10730) (size!28348 Int) (originalCharacters!6179 List!37415)) )
))
(declare-datatypes ((List!37417 0))(
  ( (Nil!37293) (Cons!37293 (h!42713 Token!10296) (t!279116 List!37417)) )
))
(declare-fun tokens!494 () List!37417)

(declare-fun e!2168926 () Bool)

(declare-fun e!2168927 () Bool)

(declare-fun inv!50509 (Token!10296) Bool)

(assert (=> b!3503142 (= e!2168926 (and (inv!50509 (h!42713 tokens!494)) e!2168927 tp!1084491))))

(declare-fun b!3503143 () Bool)

(declare-fun e!2168905 () Bool)

(declare-fun e!2168912 () Bool)

(declare-fun tp!1084482 () Bool)

(assert (=> b!3503143 (= e!2168905 (and e!2168912 tp!1084482))))

(declare-fun b!3503144 () Bool)

(declare-fun e!2168898 () Bool)

(declare-fun separatorToken!241 () Token!10296)

(declare-fun lt!1194324 () Rule!10730)

(assert (=> b!3503144 (= e!2168898 (= (rule!8091 separatorToken!241) lt!1194324))))

(declare-fun tp!1084488 () Bool)

(declare-fun e!2168915 () Bool)

(declare-fun b!3503146 () Bool)

(declare-fun inv!21 (TokenValue!5695) Bool)

(assert (=> b!3503146 (= e!2168927 (and (inv!21 (value!176214 (h!42713 tokens!494))) e!2168915 tp!1084488))))

(declare-fun b!3503147 () Bool)

(declare-fun e!2168896 () Bool)

(declare-datatypes ((IArray!22617 0))(
  ( (IArray!22618 (innerList!11366 List!37417)) )
))
(declare-datatypes ((Conc!11306 0))(
  ( (Node!11306 (left!29119 Conc!11306) (right!29449 Conc!11306) (csize!22842 Int) (cheight!11517 Int)) (Leaf!17650 (xs!14492 IArray!22617) (csize!22843 Int)) (Empty!11306) )
))
(declare-datatypes ((BalanceConc!22226 0))(
  ( (BalanceConc!22227 (c!602587 Conc!11306)) )
))
(declare-datatypes ((tuple2!37092 0))(
  ( (tuple2!37093 (_1!21680 BalanceConc!22226) (_2!21680 BalanceConc!22224)) )
))
(declare-fun lt!1194336 () tuple2!37092)

(declare-fun isEmpty!21722 (BalanceConc!22224) Bool)

(assert (=> b!3503147 (= e!2168896 (isEmpty!21722 (_2!21680 lt!1194336)))))

(declare-fun b!3503148 () Bool)

(declare-fun res!1412873 () Bool)

(declare-fun e!2168924 () Bool)

(assert (=> b!3503148 (=> (not res!1412873) (not e!2168924))))

(declare-datatypes ((LexerInterface!5054 0))(
  ( (LexerInterfaceExt!5051 (__x!23608 Int)) (Lexer!5052) )
))
(declare-fun thiss!18206 () LexerInterface!5054)

(declare-fun rulesInvariant!4451 (LexerInterface!5054 List!37416) Bool)

(assert (=> b!3503148 (= res!1412873 (rulesInvariant!4451 thiss!18206 rules!2135))))

(declare-fun res!1412880 () Bool)

(assert (=> b!3503149 (=> (not res!1412880) (not e!2168924))))

(declare-fun forall!7998 (List!37417 Int) Bool)

(assert (=> b!3503149 (= res!1412880 (forall!7998 tokens!494 lambda!122474))))

(declare-fun b!3503150 () Bool)

(declare-fun res!1412888 () Bool)

(declare-fun e!2168918 () Bool)

(assert (=> b!3503150 (=> res!1412888 e!2168918)))

(declare-fun rulesProduceIndividualToken!2546 (LexerInterface!5054 List!37416 Token!10296) Bool)

(assert (=> b!3503150 (= res!1412888 (not (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 tokens!494))))))

(declare-fun b!3503151 () Bool)

(declare-datatypes ((Unit!52855 0))(
  ( (Unit!52856) )
))
(declare-fun e!2168900 () Unit!52855)

(declare-fun Unit!52857 () Unit!52855)

(assert (=> b!3503151 (= e!2168900 Unit!52857)))

(declare-fun b!3503152 () Bool)

(declare-fun res!1412886 () Bool)

(assert (=> b!3503152 (=> (not res!1412886) (not e!2168924))))

(assert (=> b!3503152 (= res!1412886 (and (not (is-Nil!37293 tokens!494)) (not (is-Nil!37293 (t!279116 tokens!494)))))))

(declare-fun e!2168917 () Bool)

(declare-fun e!2168895 () Bool)

(declare-fun tp!1084492 () Bool)

(declare-fun b!3503153 () Bool)

(declare-fun inv!50506 (String!41811) Bool)

(declare-fun inv!50510 (TokenValueInjection!10818) Bool)

(assert (=> b!3503153 (= e!2168895 (and tp!1084492 (inv!50506 (tag!6095 (rule!8091 separatorToken!241))) (inv!50510 (transformation!5465 (rule!8091 separatorToken!241))) e!2168917))))

(declare-fun b!3503154 () Bool)

(declare-fun res!1412887 () Bool)

(assert (=> b!3503154 (=> (not res!1412887) (not e!2168924))))

(assert (=> b!3503154 (= res!1412887 (isSeparator!5465 (rule!8091 separatorToken!241)))))

(declare-fun b!3503155 () Bool)

(declare-fun e!2168897 () Bool)

(declare-fun lt!1194341 () tuple2!37092)

(assert (=> b!3503155 (= e!2168897 (not (isEmpty!21722 (_2!21680 lt!1194341))))))

(declare-fun b!3503156 () Bool)

(assert (=> b!3503156 (= e!2168910 (= (rule!8091 (h!42713 tokens!494)) lt!1194328))))

(declare-fun b!3503157 () Bool)

(declare-fun e!2168903 () Bool)

(declare-fun tp!1084489 () Bool)

(assert (=> b!3503157 (= e!2168915 (and tp!1084489 (inv!50506 (tag!6095 (rule!8091 (h!42713 tokens!494)))) (inv!50510 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) e!2168903))))

(declare-fun e!2168899 () Bool)

(declare-fun e!2168923 () Bool)

(assert (=> b!3503158 (= e!2168899 e!2168923)))

(declare-fun res!1412893 () Bool)

(assert (=> b!3503158 (=> res!1412893 e!2168923)))

(declare-fun contains!6971 (List!37416 Rule!10730) Bool)

(assert (=> b!3503158 (= res!1412893 (not (contains!6971 rules!2135 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(declare-fun e!2168906 () Bool)

(assert (=> b!3503158 e!2168906))

(declare-fun res!1412870 () Bool)

(assert (=> b!3503158 (=> (not res!1412870) (not e!2168906))))

(declare-fun lt!1194307 () Option!7587)

(declare-fun isDefined!5849 (Option!7587) Bool)

(assert (=> b!3503158 (= res!1412870 (isDefined!5849 lt!1194307))))

(declare-fun getRuleFromTag!1108 (LexerInterface!5054 List!37416 String!41811) Option!7587)

(assert (=> b!3503158 (= lt!1194307 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(declare-fun lt!1194322 () Unit!52855)

(declare-fun lt!1194346 () List!37415)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 (LexerInterface!5054 List!37416 List!37415 Token!10296) Unit!52855)

(assert (=> b!3503158 (= lt!1194322 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194346 (h!42713 (t!279116 tokens!494))))))

(declare-fun lt!1194337 () Bool)

(assert (=> b!3503158 lt!1194337))

(declare-fun lt!1194332 () Unit!52855)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1043 (LexerInterface!5054 List!37416 List!37417 Token!10296) Unit!52855)

(assert (=> b!3503158 (= lt!1194332 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1043 thiss!18206 rules!2135 tokens!494 (h!42713 (t!279116 tokens!494))))))

(declare-fun lt!1194343 () List!37415)

(declare-fun lt!1194344 () List!37415)

(declare-datatypes ((tuple2!37094 0))(
  ( (tuple2!37095 (_1!21681 Token!10296) (_2!21681 List!37415)) )
))
(declare-datatypes ((Option!7588 0))(
  ( (None!7587) (Some!7587 (v!37031 tuple2!37094)) )
))
(declare-fun maxPrefix!2594 (LexerInterface!5054 List!37416 List!37415) Option!7588)

(assert (=> b!3503158 (= (maxPrefix!2594 thiss!18206 rules!2135 lt!1194343) (Some!7587 (tuple2!37095 (h!42713 tokens!494) lt!1194344)))))

(declare-fun lt!1194326 () Unit!52855)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!221 (LexerInterface!5054 List!37416 Token!10296 Rule!10730 List!37415 Rule!10730) Unit!52855)

(assert (=> b!3503158 (= lt!1194326 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!221 thiss!18206 rules!2135 (h!42713 tokens!494) (rule!8091 (h!42713 tokens!494)) lt!1194344 (rule!8091 separatorToken!241)))))

(declare-fun lt!1194335 () C!20634)

(declare-fun contains!6972 (List!37415 C!20634) Bool)

(declare-fun usedCharacters!699 (Regex!10224) List!37415)

(assert (=> b!3503158 (not (contains!6972 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494)))) lt!1194335))))

(declare-fun lt!1194309 () Unit!52855)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!265 (LexerInterface!5054 List!37416 List!37416 Rule!10730 Rule!10730 C!20634) Unit!52855)

(assert (=> b!3503158 (= lt!1194309 (lemmaNonSepRuleNotContainsCharContainedInASepRule!265 thiss!18206 rules!2135 rules!2135 (rule!8091 (h!42713 tokens!494)) (rule!8091 separatorToken!241) lt!1194335))))

(declare-fun lt!1194315 () Unit!52855)

(declare-fun forallContained!1412 (List!37417 Int Token!10296) Unit!52855)

(assert (=> b!3503158 (= lt!1194315 (forallContained!1412 tokens!494 lambda!122475 (h!42713 (t!279116 tokens!494))))))

(declare-fun lt!1194316 () Bool)

(assert (=> b!3503158 (= lt!1194337 (not lt!1194316))))

(assert (=> b!3503158 (= lt!1194337 (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 (t!279116 tokens!494))))))

(assert (=> b!3503158 (= lt!1194316 e!2168897)))

(declare-fun res!1412882 () Bool)

(assert (=> b!3503158 (=> res!1412882 e!2168897)))

(declare-fun size!28349 (BalanceConc!22226) Int)

(assert (=> b!3503158 (= res!1412882 (not (= (size!28349 (_1!21680 lt!1194341)) 1)))))

(declare-fun lt!1194311 () BalanceConc!22224)

(declare-fun lex!2380 (LexerInterface!5054 List!37416 BalanceConc!22224) tuple2!37092)

(assert (=> b!3503158 (= lt!1194341 (lex!2380 thiss!18206 rules!2135 lt!1194311))))

(declare-fun lt!1194334 () BalanceConc!22226)

(declare-fun printTailRec!1549 (LexerInterface!5054 BalanceConc!22226 Int BalanceConc!22224) BalanceConc!22224)

(assert (=> b!3503158 (= lt!1194311 (printTailRec!1549 thiss!18206 lt!1194334 0 (BalanceConc!22225 Empty!11305)))))

(declare-fun print!2119 (LexerInterface!5054 BalanceConc!22226) BalanceConc!22224)

(assert (=> b!3503158 (= lt!1194311 (print!2119 thiss!18206 lt!1194334))))

(declare-fun singletonSeq!2561 (Token!10296) BalanceConc!22226)

(assert (=> b!3503158 (= lt!1194334 (singletonSeq!2561 (h!42713 (t!279116 tokens!494))))))

(assert (=> b!3503158 e!2168896))

(declare-fun res!1412881 () Bool)

(assert (=> b!3503158 (=> (not res!1412881) (not e!2168896))))

(assert (=> b!3503158 (= res!1412881 (= (size!28349 (_1!21680 lt!1194336)) 1))))

(declare-fun lt!1194338 () BalanceConc!22224)

(assert (=> b!3503158 (= lt!1194336 (lex!2380 thiss!18206 rules!2135 lt!1194338))))

(declare-fun lt!1194348 () BalanceConc!22226)

(assert (=> b!3503158 (= lt!1194338 (printTailRec!1549 thiss!18206 lt!1194348 0 (BalanceConc!22225 Empty!11305)))))

(assert (=> b!3503158 (= lt!1194338 (print!2119 thiss!18206 lt!1194348))))

(assert (=> b!3503158 (= lt!1194348 (singletonSeq!2561 separatorToken!241))))

(declare-fun lt!1194340 () Unit!52855)

(assert (=> b!3503158 (= lt!1194340 e!2168900)))

(declare-fun c!602584 () Bool)

(assert (=> b!3503158 (= c!602584 (not (contains!6972 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241))) lt!1194335)))))

(declare-fun lt!1194333 () List!37415)

(declare-fun head!7366 (List!37415) C!20634)

(assert (=> b!3503158 (= lt!1194335 (head!7366 lt!1194333))))

(declare-fun e!2168921 () Bool)

(assert (=> b!3503158 e!2168921))

(declare-fun res!1412867 () Bool)

(assert (=> b!3503158 (=> (not res!1412867) (not e!2168921))))

(declare-fun lt!1194342 () Option!7587)

(assert (=> b!3503158 (= res!1412867 (isDefined!5849 lt!1194342))))

(assert (=> b!3503158 (= lt!1194342 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 separatorToken!241))))))

(declare-fun lt!1194319 () Unit!52855)

(assert (=> b!3503158 (= lt!1194319 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194333 separatorToken!241))))

(declare-fun lt!1194327 () BalanceConc!22224)

(declare-fun maxPrefixOneRule!1761 (LexerInterface!5054 Rule!10730 List!37415) Option!7588)

(declare-fun apply!8854 (TokenValueInjection!10818 BalanceConc!22224) TokenValue!5695)

(declare-fun size!28350 (List!37415) Int)

(assert (=> b!3503158 (= (maxPrefixOneRule!1761 thiss!18206 (rule!8091 (h!42713 tokens!494)) lt!1194330) (Some!7587 (tuple2!37095 (Token!10297 (apply!8854 (transformation!5465 (rule!8091 (h!42713 tokens!494))) lt!1194327) (rule!8091 (h!42713 tokens!494)) (size!28350 lt!1194330) lt!1194330) Nil!37291)))))

(declare-fun lt!1194312 () Unit!52855)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!854 (LexerInterface!5054 List!37416 List!37415 List!37415 List!37415 Rule!10730) Unit!52855)

(assert (=> b!3503158 (= lt!1194312 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!854 thiss!18206 rules!2135 lt!1194330 lt!1194330 Nil!37291 (rule!8091 (h!42713 tokens!494))))))

(assert (=> b!3503158 e!2168907))

(declare-fun res!1412876 () Bool)

(assert (=> b!3503158 (=> (not res!1412876) (not e!2168907))))

(assert (=> b!3503158 (= res!1412876 (isDefined!5849 lt!1194347))))

(assert (=> b!3503158 (= lt!1194347 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 tokens!494)))))))

(declare-fun lt!1194323 () Unit!52855)

(assert (=> b!3503158 (= lt!1194323 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194330 (h!42713 tokens!494)))))

(declare-fun lt!1194329 () Unit!52855)

(assert (=> b!3503158 (= lt!1194329 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1043 thiss!18206 rules!2135 tokens!494 (h!42713 tokens!494)))))

(declare-fun b!3503159 () Bool)

(declare-fun Unit!52858 () Unit!52855)

(assert (=> b!3503159 (= e!2168900 Unit!52858)))

(declare-fun lt!1194345 () Unit!52855)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!523 (Regex!10224 List!37415 C!20634) Unit!52855)

(assert (=> b!3503159 (= lt!1194345 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!523 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333 lt!1194335))))

(declare-fun res!1412868 () Bool)

(assert (=> b!3503159 (= res!1412868 (not (matchR!4808 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333)))))

(declare-fun e!2168902 () Bool)

(assert (=> b!3503159 (=> (not res!1412868) (not e!2168902))))

(assert (=> b!3503159 e!2168902))

(declare-fun b!3503160 () Bool)

(declare-fun res!1412869 () Bool)

(assert (=> b!3503160 (=> (not res!1412869) (not e!2168924))))

(declare-fun isEmpty!21723 (List!37416) Bool)

(assert (=> b!3503160 (= res!1412869 (not (isEmpty!21723 rules!2135)))))

(declare-fun b!3503161 () Bool)

(declare-fun e!2168925 () Bool)

(assert (=> b!3503161 (= e!2168924 (not e!2168925))))

(declare-fun res!1412891 () Bool)

(assert (=> b!3503161 (=> res!1412891 e!2168925)))

(declare-fun lt!1194308 () List!37415)

(declare-fun lt!1194318 () List!37415)

(assert (=> b!3503161 (= res!1412891 (not (= lt!1194308 lt!1194318)))))

(declare-fun printList!1602 (LexerInterface!5054 List!37417) List!37415)

(assert (=> b!3503161 (= lt!1194318 (printList!1602 thiss!18206 (Cons!37293 (h!42713 tokens!494) Nil!37293)))))

(declare-fun lt!1194320 () BalanceConc!22224)

(declare-fun list!13622 (BalanceConc!22224) List!37415)

(assert (=> b!3503161 (= lt!1194308 (list!13622 lt!1194320))))

(declare-fun lt!1194339 () BalanceConc!22226)

(assert (=> b!3503161 (= lt!1194320 (printTailRec!1549 thiss!18206 lt!1194339 0 (BalanceConc!22225 Empty!11305)))))

(assert (=> b!3503161 (= lt!1194320 (print!2119 thiss!18206 lt!1194339))))

(assert (=> b!3503161 (= lt!1194339 (singletonSeq!2561 (h!42713 tokens!494)))))

(declare-fun b!3503162 () Bool)

(declare-fun res!1412871 () Bool)

(assert (=> b!3503162 (=> res!1412871 e!2168897)))

(declare-fun apply!8855 (BalanceConc!22226 Int) Token!10296)

(assert (=> b!3503162 (= res!1412871 (not (= (apply!8855 (_1!21680 lt!1194341) 0) (h!42713 (t!279116 tokens!494)))))))

(declare-fun b!3503163 () Bool)

(declare-fun ++!9226 (List!37415 List!37415) List!37415)

(assert (=> b!3503163 (= e!2168923 (= lt!1194346 (++!9226 lt!1194346 Nil!37291)))))

(declare-fun b!3503164 () Bool)

(declare-fun e!2168908 () Bool)

(declare-fun e!2168916 () Bool)

(assert (=> b!3503164 (= e!2168908 e!2168916)))

(declare-fun res!1412875 () Bool)

(assert (=> b!3503164 (=> res!1412875 e!2168916)))

(declare-fun lt!1194321 () List!37415)

(declare-fun lt!1194310 () List!37415)

(assert (=> b!3503164 (= res!1412875 (not (= lt!1194321 lt!1194310)))))

(declare-fun lt!1194317 () List!37415)

(assert (=> b!3503164 (= lt!1194310 (++!9226 (++!9226 lt!1194330 lt!1194333) lt!1194317))))

(declare-fun b!3503165 () Bool)

(declare-fun tp!1084487 () Bool)

(declare-fun e!2168901 () Bool)

(assert (=> b!3503165 (= e!2168912 (and tp!1084487 (inv!50506 (tag!6095 (h!42712 rules!2135))) (inv!50510 (transformation!5465 (h!42712 rules!2135))) e!2168901))))

(declare-fun b!3503166 () Bool)

(declare-fun e!2168928 () Bool)

(assert (=> b!3503166 (= e!2168906 e!2168928)))

(declare-fun res!1412892 () Bool)

(assert (=> b!3503166 (=> (not res!1412892) (not e!2168928))))

(declare-fun lt!1194325 () Rule!10730)

(assert (=> b!3503166 (= res!1412892 (matchR!4808 (regex!5465 lt!1194325) lt!1194346))))

(assert (=> b!3503166 (= lt!1194325 (get!11963 lt!1194307))))

(declare-fun b!3503167 () Bool)

(declare-fun e!2168922 () Bool)

(assert (=> b!3503167 (= e!2168922 e!2168908)))

(declare-fun res!1412885 () Bool)

(assert (=> b!3503167 (=> res!1412885 e!2168908)))

(declare-fun printWithSeparatorTokenList!341 (LexerInterface!5054 List!37417 Token!10296) List!37415)

(assert (=> b!3503167 (= res!1412885 (not (= lt!1194317 (++!9226 (++!9226 lt!1194346 lt!1194333) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241)))))))

(declare-fun charsOf!3479 (Token!10296) BalanceConc!22224)

(assert (=> b!3503167 (= lt!1194346 (list!13622 (charsOf!3479 (h!42713 (t!279116 tokens!494)))))))

(assert (=> b!3503167 (= lt!1194344 (++!9226 lt!1194333 lt!1194317))))

(assert (=> b!3503167 (= lt!1194333 (list!13622 (charsOf!3479 separatorToken!241)))))

(assert (=> b!3503167 (= lt!1194317 (printWithSeparatorTokenList!341 thiss!18206 (t!279116 tokens!494) separatorToken!241))))

(assert (=> b!3503167 (= lt!1194321 (printWithSeparatorTokenList!341 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3503168 () Bool)

(declare-fun e!2168920 () Bool)

(assert (=> b!3503168 (= e!2168918 e!2168920)))

(declare-fun res!1412874 () Bool)

(assert (=> b!3503168 (=> res!1412874 e!2168920)))

(declare-fun isEmpty!21724 (BalanceConc!22226) Bool)

(assert (=> b!3503168 (= res!1412874 (isEmpty!21724 (_1!21680 (lex!2380 thiss!18206 rules!2135 lt!1194327))))))

(declare-fun seqFromList!3983 (List!37415) BalanceConc!22224)

(assert (=> b!3503168 (= lt!1194327 (seqFromList!3983 lt!1194330))))

(declare-fun b!3503169 () Bool)

(assert (=> b!3503169 (= e!2168921 e!2168898)))

(declare-fun res!1412889 () Bool)

(assert (=> b!3503169 (=> (not res!1412889) (not e!2168898))))

(assert (=> b!3503169 (= res!1412889 (matchR!4808 (regex!5465 lt!1194324) lt!1194333))))

(assert (=> b!3503169 (= lt!1194324 (get!11963 lt!1194342))))

(declare-fun b!3503170 () Bool)

(declare-fun res!1412894 () Bool)

(assert (=> b!3503170 (=> (not res!1412894) (not e!2168896))))

(assert (=> b!3503170 (= res!1412894 (= (apply!8855 (_1!21680 lt!1194336) 0) separatorToken!241))))

(declare-fun res!1412866 () Bool)

(assert (=> start!325600 (=> (not res!1412866) (not e!2168924))))

(assert (=> start!325600 (= res!1412866 (is-Lexer!5052 thiss!18206))))

(assert (=> start!325600 e!2168924))

(assert (=> start!325600 true))

(assert (=> start!325600 e!2168905))

(assert (=> start!325600 e!2168926))

(declare-fun e!2168904 () Bool)

(assert (=> start!325600 (and (inv!50509 separatorToken!241) e!2168904)))

(assert (=> b!3503145 (= e!2168917 (and tp!1084493 tp!1084481))))

(declare-fun tp!1084483 () Bool)

(declare-fun b!3503171 () Bool)

(assert (=> b!3503171 (= e!2168904 (and (inv!21 (value!176214 separatorToken!241)) e!2168895 tp!1084483))))

(declare-fun b!3503172 () Bool)

(assert (=> b!3503172 (= e!2168916 e!2168899)))

(declare-fun res!1412872 () Bool)

(assert (=> b!3503172 (=> res!1412872 e!2168899)))

(assert (=> b!3503172 (= res!1412872 (not (= lt!1194321 lt!1194343)))))

(assert (=> b!3503172 (= lt!1194310 lt!1194343)))

(assert (=> b!3503172 (= lt!1194343 (++!9226 lt!1194330 lt!1194344))))

(declare-fun lt!1194314 () Unit!52855)

(declare-fun lemmaConcatAssociativity!1993 (List!37415 List!37415 List!37415) Unit!52855)

(assert (=> b!3503172 (= lt!1194314 (lemmaConcatAssociativity!1993 lt!1194330 lt!1194333 lt!1194317))))

(declare-fun b!3503173 () Bool)

(assert (=> b!3503173 (= e!2168920 e!2168922)))

(declare-fun res!1412877 () Bool)

(assert (=> b!3503173 (=> res!1412877 e!2168922)))

(assert (=> b!3503173 (= res!1412877 (or (isSeparator!5465 (rule!8091 (h!42713 tokens!494))) (isSeparator!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(declare-fun lt!1194331 () Unit!52855)

(assert (=> b!3503173 (= lt!1194331 (forallContained!1412 tokens!494 lambda!122474 (h!42713 (t!279116 tokens!494))))))

(declare-fun lt!1194313 () Unit!52855)

(assert (=> b!3503173 (= lt!1194313 (forallContained!1412 tokens!494 lambda!122474 (h!42713 tokens!494)))))

(assert (=> b!3503174 (= e!2168903 (and tp!1084486 tp!1084485))))

(declare-fun b!3503175 () Bool)

(declare-fun res!1412884 () Bool)

(assert (=> b!3503175 (=> (not res!1412884) (not e!2168924))))

(assert (=> b!3503175 (= res!1412884 (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3503176 () Bool)

(assert (=> b!3503176 (= e!2168902 false)))

(declare-fun b!3503177 () Bool)

(declare-fun res!1412878 () Bool)

(assert (=> b!3503177 (=> (not res!1412878) (not e!2168924))))

(declare-fun sepAndNonSepRulesDisjointChars!1659 (List!37416 List!37416) Bool)

(assert (=> b!3503177 (= res!1412878 (sepAndNonSepRulesDisjointChars!1659 rules!2135 rules!2135))))

(assert (=> b!3503178 (= e!2168901 (and tp!1084490 tp!1084484))))

(declare-fun b!3503179 () Bool)

(declare-fun res!1412879 () Bool)

(assert (=> b!3503179 (=> (not res!1412879) (not e!2168924))))

(declare-fun rulesProduceEachTokenIndividually!1505 (LexerInterface!5054 List!37416 BalanceConc!22226) Bool)

(declare-fun seqFromList!3984 (List!37417) BalanceConc!22226)

(assert (=> b!3503179 (= res!1412879 (rulesProduceEachTokenIndividually!1505 thiss!18206 rules!2135 (seqFromList!3984 tokens!494)))))

(declare-fun b!3503180 () Bool)

(assert (=> b!3503180 (= e!2168928 (= (rule!8091 (h!42713 (t!279116 tokens!494))) lt!1194325))))

(declare-fun b!3503181 () Bool)

(assert (=> b!3503181 (= e!2168925 e!2168918)))

(declare-fun res!1412883 () Bool)

(assert (=> b!3503181 (=> res!1412883 e!2168918)))

(assert (=> b!3503181 (= res!1412883 (or (not (= lt!1194318 lt!1194330)) (not (= lt!1194308 lt!1194330))))))

(assert (=> b!3503181 (= lt!1194330 (list!13622 (charsOf!3479 (h!42713 tokens!494))))))

(assert (= (and start!325600 res!1412866) b!3503160))

(assert (= (and b!3503160 res!1412869) b!3503148))

(assert (= (and b!3503148 res!1412873) b!3503179))

(assert (= (and b!3503179 res!1412879) b!3503175))

(assert (= (and b!3503175 res!1412884) b!3503154))

(assert (= (and b!3503154 res!1412887) b!3503149))

(assert (= (and b!3503149 res!1412880) b!3503177))

(assert (= (and b!3503177 res!1412878) b!3503152))

(assert (= (and b!3503152 res!1412886) b!3503161))

(assert (= (and b!3503161 (not res!1412891)) b!3503181))

(assert (= (and b!3503181 (not res!1412883)) b!3503150))

(assert (= (and b!3503150 (not res!1412888)) b!3503168))

(assert (= (and b!3503168 (not res!1412874)) b!3503173))

(assert (= (and b!3503173 (not res!1412877)) b!3503167))

(assert (= (and b!3503167 (not res!1412885)) b!3503164))

(assert (= (and b!3503164 (not res!1412875)) b!3503172))

(assert (= (and b!3503172 (not res!1412872)) b!3503158))

(assert (= (and b!3503158 res!1412876) b!3503141))

(assert (= (and b!3503141 res!1412890) b!3503156))

(assert (= (and b!3503158 res!1412867) b!3503169))

(assert (= (and b!3503169 res!1412889) b!3503144))

(assert (= (and b!3503158 c!602584) b!3503159))

(assert (= (and b!3503158 (not c!602584)) b!3503151))

(assert (= (and b!3503159 res!1412868) b!3503176))

(assert (= (and b!3503158 res!1412881) b!3503170))

(assert (= (and b!3503170 res!1412894) b!3503147))

(assert (= (and b!3503158 (not res!1412882)) b!3503162))

(assert (= (and b!3503162 (not res!1412871)) b!3503155))

(assert (= (and b!3503158 res!1412870) b!3503166))

(assert (= (and b!3503166 res!1412892) b!3503180))

(assert (= (and b!3503158 (not res!1412893)) b!3503163))

(assert (= b!3503165 b!3503178))

(assert (= b!3503143 b!3503165))

(assert (= (and start!325600 (is-Cons!37292 rules!2135)) b!3503143))

(assert (= b!3503157 b!3503174))

(assert (= b!3503146 b!3503157))

(assert (= b!3503142 b!3503146))

(assert (= (and start!325600 (is-Cons!37293 tokens!494)) b!3503142))

(assert (= b!3503153 b!3503145))

(assert (= b!3503171 b!3503153))

(assert (= start!325600 b!3503171))

(declare-fun m!3939297 () Bool)

(assert (=> b!3503148 m!3939297))

(declare-fun m!3939299 () Bool)

(assert (=> b!3503181 m!3939299))

(assert (=> b!3503181 m!3939299))

(declare-fun m!3939301 () Bool)

(assert (=> b!3503181 m!3939301))

(declare-fun m!3939303 () Bool)

(assert (=> b!3503162 m!3939303))

(declare-fun m!3939305 () Bool)

(assert (=> b!3503142 m!3939305))

(declare-fun m!3939307 () Bool)

(assert (=> b!3503160 m!3939307))

(declare-fun m!3939309 () Bool)

(assert (=> b!3503157 m!3939309))

(declare-fun m!3939311 () Bool)

(assert (=> b!3503157 m!3939311))

(declare-fun m!3939313 () Bool)

(assert (=> b!3503166 m!3939313))

(declare-fun m!3939315 () Bool)

(assert (=> b!3503166 m!3939315))

(declare-fun m!3939317 () Bool)

(assert (=> b!3503168 m!3939317))

(declare-fun m!3939319 () Bool)

(assert (=> b!3503168 m!3939319))

(declare-fun m!3939321 () Bool)

(assert (=> b!3503168 m!3939321))

(declare-fun m!3939323 () Bool)

(assert (=> b!3503169 m!3939323))

(declare-fun m!3939325 () Bool)

(assert (=> b!3503169 m!3939325))

(declare-fun m!3939327 () Bool)

(assert (=> b!3503159 m!3939327))

(declare-fun m!3939329 () Bool)

(assert (=> b!3503159 m!3939329))

(declare-fun m!3939331 () Bool)

(assert (=> b!3503146 m!3939331))

(declare-fun m!3939333 () Bool)

(assert (=> b!3503175 m!3939333))

(declare-fun m!3939335 () Bool)

(assert (=> b!3503173 m!3939335))

(declare-fun m!3939337 () Bool)

(assert (=> b!3503173 m!3939337))

(declare-fun m!3939339 () Bool)

(assert (=> b!3503163 m!3939339))

(declare-fun m!3939341 () Bool)

(assert (=> b!3503141 m!3939341))

(declare-fun m!3939343 () Bool)

(assert (=> b!3503141 m!3939343))

(declare-fun m!3939345 () Bool)

(assert (=> b!3503150 m!3939345))

(declare-fun m!3939347 () Bool)

(assert (=> b!3503179 m!3939347))

(assert (=> b!3503179 m!3939347))

(declare-fun m!3939349 () Bool)

(assert (=> b!3503179 m!3939349))

(declare-fun m!3939351 () Bool)

(assert (=> b!3503149 m!3939351))

(declare-fun m!3939353 () Bool)

(assert (=> b!3503158 m!3939353))

(declare-fun m!3939355 () Bool)

(assert (=> b!3503158 m!3939355))

(declare-fun m!3939357 () Bool)

(assert (=> b!3503158 m!3939357))

(declare-fun m!3939359 () Bool)

(assert (=> b!3503158 m!3939359))

(assert (=> b!3503158 m!3939357))

(declare-fun m!3939361 () Bool)

(assert (=> b!3503158 m!3939361))

(declare-fun m!3939363 () Bool)

(assert (=> b!3503158 m!3939363))

(declare-fun m!3939365 () Bool)

(assert (=> b!3503158 m!3939365))

(declare-fun m!3939367 () Bool)

(assert (=> b!3503158 m!3939367))

(declare-fun m!3939369 () Bool)

(assert (=> b!3503158 m!3939369))

(declare-fun m!3939371 () Bool)

(assert (=> b!3503158 m!3939371))

(declare-fun m!3939373 () Bool)

(assert (=> b!3503158 m!3939373))

(declare-fun m!3939375 () Bool)

(assert (=> b!3503158 m!3939375))

(declare-fun m!3939377 () Bool)

(assert (=> b!3503158 m!3939377))

(assert (=> b!3503158 m!3939365))

(declare-fun m!3939379 () Bool)

(assert (=> b!3503158 m!3939379))

(declare-fun m!3939381 () Bool)

(assert (=> b!3503158 m!3939381))

(declare-fun m!3939383 () Bool)

(assert (=> b!3503158 m!3939383))

(declare-fun m!3939385 () Bool)

(assert (=> b!3503158 m!3939385))

(declare-fun m!3939387 () Bool)

(assert (=> b!3503158 m!3939387))

(declare-fun m!3939389 () Bool)

(assert (=> b!3503158 m!3939389))

(declare-fun m!3939391 () Bool)

(assert (=> b!3503158 m!3939391))

(declare-fun m!3939393 () Bool)

(assert (=> b!3503158 m!3939393))

(declare-fun m!3939395 () Bool)

(assert (=> b!3503158 m!3939395))

(declare-fun m!3939397 () Bool)

(assert (=> b!3503158 m!3939397))

(declare-fun m!3939399 () Bool)

(assert (=> b!3503158 m!3939399))

(declare-fun m!3939401 () Bool)

(assert (=> b!3503158 m!3939401))

(declare-fun m!3939403 () Bool)

(assert (=> b!3503158 m!3939403))

(declare-fun m!3939405 () Bool)

(assert (=> b!3503158 m!3939405))

(declare-fun m!3939407 () Bool)

(assert (=> b!3503158 m!3939407))

(declare-fun m!3939409 () Bool)

(assert (=> b!3503158 m!3939409))

(declare-fun m!3939411 () Bool)

(assert (=> b!3503158 m!3939411))

(declare-fun m!3939413 () Bool)

(assert (=> b!3503158 m!3939413))

(declare-fun m!3939415 () Bool)

(assert (=> b!3503158 m!3939415))

(declare-fun m!3939417 () Bool)

(assert (=> b!3503158 m!3939417))

(declare-fun m!3939419 () Bool)

(assert (=> b!3503158 m!3939419))

(declare-fun m!3939421 () Bool)

(assert (=> b!3503158 m!3939421))

(declare-fun m!3939423 () Bool)

(assert (=> b!3503158 m!3939423))

(declare-fun m!3939425 () Bool)

(assert (=> b!3503177 m!3939425))

(declare-fun m!3939427 () Bool)

(assert (=> b!3503165 m!3939427))

(declare-fun m!3939429 () Bool)

(assert (=> b!3503165 m!3939429))

(declare-fun m!3939431 () Bool)

(assert (=> b!3503171 m!3939431))

(declare-fun m!3939433 () Bool)

(assert (=> b!3503153 m!3939433))

(declare-fun m!3939435 () Bool)

(assert (=> b!3503153 m!3939435))

(declare-fun m!3939437 () Bool)

(assert (=> start!325600 m!3939437))

(declare-fun m!3939439 () Bool)

(assert (=> b!3503170 m!3939439))

(declare-fun m!3939441 () Bool)

(assert (=> b!3503147 m!3939441))

(declare-fun m!3939443 () Bool)

(assert (=> b!3503167 m!3939443))

(declare-fun m!3939445 () Bool)

(assert (=> b!3503167 m!3939445))

(declare-fun m!3939447 () Bool)

(assert (=> b!3503167 m!3939447))

(declare-fun m!3939449 () Bool)

(assert (=> b!3503167 m!3939449))

(declare-fun m!3939451 () Bool)

(assert (=> b!3503167 m!3939451))

(declare-fun m!3939453 () Bool)

(assert (=> b!3503167 m!3939453))

(assert (=> b!3503167 m!3939443))

(declare-fun m!3939455 () Bool)

(assert (=> b!3503167 m!3939455))

(declare-fun m!3939457 () Bool)

(assert (=> b!3503167 m!3939457))

(assert (=> b!3503167 m!3939445))

(declare-fun m!3939459 () Bool)

(assert (=> b!3503167 m!3939459))

(assert (=> b!3503167 m!3939451))

(assert (=> b!3503167 m!3939457))

(declare-fun m!3939461 () Bool)

(assert (=> b!3503167 m!3939461))

(declare-fun m!3939463 () Bool)

(assert (=> b!3503161 m!3939463))

(declare-fun m!3939465 () Bool)

(assert (=> b!3503161 m!3939465))

(declare-fun m!3939467 () Bool)

(assert (=> b!3503161 m!3939467))

(declare-fun m!3939469 () Bool)

(assert (=> b!3503161 m!3939469))

(declare-fun m!3939471 () Bool)

(assert (=> b!3503161 m!3939471))

(declare-fun m!3939473 () Bool)

(assert (=> b!3503172 m!3939473))

(declare-fun m!3939475 () Bool)

(assert (=> b!3503172 m!3939475))

(declare-fun m!3939477 () Bool)

(assert (=> b!3503155 m!3939477))

(declare-fun m!3939479 () Bool)

(assert (=> b!3503164 m!3939479))

(assert (=> b!3503164 m!3939479))

(declare-fun m!3939481 () Bool)

(assert (=> b!3503164 m!3939481))

(push 1)

(assert b_and!248561)

(assert b_and!248559)

(assert (not b!3503170))

(assert (not b_next!91191))

(assert (not b_next!91197))

(assert (not b!3503146))

(assert (not b_next!91193))

(assert (not b!3503175))

(assert b_and!248557)

(assert (not b!3503157))

(assert (not b!3503148))

(assert (not b!3503190))

(assert (not b!3503161))

(assert (not b!3503142))

(assert (not b!3503165))

(assert (not b!3503179))

(assert (not b_next!91199))

(assert (not b!3503153))

(assert (not b!3503160))

(assert b_and!248553)

(assert b_and!248551)

(assert (not b!3503181))

(assert (not b!3503164))

(assert (not b_next!91189))

(assert (not b!3503159))

(assert (not b!3503171))

(assert (not b_next!91195))

(assert (not b!3503141))

(assert (not b!3503143))

(assert (not b!3503150))

(assert (not b!3503162))

(assert (not b!3503147))

(assert (not b!3503168))

(assert (not b!3503169))

(assert (not b!3503166))

(assert (not b!3503158))

(assert (not start!325600))

(assert (not b!3503167))

(assert (not b!3503173))

(assert (not b!3503172))

(assert (not b!3503155))

(assert b_and!248555)

(assert (not b!3503177))

(assert (not b!3503149))

(assert (not b!3503163))

(check-sat)

(pop 1)

(push 1)

(assert b_and!248561)

(assert b_and!248559)

(assert (not b_next!91191))

(assert (not b_next!91197))

(assert (not b_next!91193))

(assert b_and!248551)

(assert b_and!248557)

(assert (not b_next!91189))

(assert (not b_next!91195))

(assert b_and!248555)

(assert (not b_next!91199))

(assert b_and!248553)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1017882 () Bool)

(declare-fun lt!1194477 () Bool)

(declare-fun isEmpty!21728 (List!37417) Bool)

(declare-fun list!13624 (BalanceConc!22226) List!37417)

(assert (=> d!1017882 (= lt!1194477 (isEmpty!21728 (list!13624 (_1!21680 (lex!2380 thiss!18206 rules!2135 lt!1194327)))))))

(declare-fun isEmpty!21729 (Conc!11306) Bool)

(assert (=> d!1017882 (= lt!1194477 (isEmpty!21729 (c!602587 (_1!21680 (lex!2380 thiss!18206 rules!2135 lt!1194327)))))))

(assert (=> d!1017882 (= (isEmpty!21724 (_1!21680 (lex!2380 thiss!18206 rules!2135 lt!1194327))) lt!1194477)))

(declare-fun bs!563840 () Bool)

(assert (= bs!563840 d!1017882))

(declare-fun m!3939669 () Bool)

(assert (=> bs!563840 m!3939669))

(assert (=> bs!563840 m!3939669))

(declare-fun m!3939671 () Bool)

(assert (=> bs!563840 m!3939671))

(declare-fun m!3939673 () Bool)

(assert (=> bs!563840 m!3939673))

(assert (=> b!3503168 d!1017882))

(declare-fun e!2169055 () Bool)

(declare-fun b!3503341 () Bool)

(declare-fun lt!1194480 () tuple2!37092)

(declare-datatypes ((tuple2!37100 0))(
  ( (tuple2!37101 (_1!21684 List!37417) (_2!21684 List!37415)) )
))
(declare-fun lexList!1469 (LexerInterface!5054 List!37416 List!37415) tuple2!37100)

(assert (=> b!3503341 (= e!2169055 (= (list!13622 (_2!21680 lt!1194480)) (_2!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194327)))))))

(declare-fun d!1017884 () Bool)

(assert (=> d!1017884 e!2169055))

(declare-fun res!1413000 () Bool)

(assert (=> d!1017884 (=> (not res!1413000) (not e!2169055))))

(declare-fun e!2169057 () Bool)

(assert (=> d!1017884 (= res!1413000 e!2169057)))

(declare-fun c!602597 () Bool)

(assert (=> d!1017884 (= c!602597 (> (size!28349 (_1!21680 lt!1194480)) 0))))

(declare-fun lexTailRecV2!1077 (LexerInterface!5054 List!37416 BalanceConc!22224 BalanceConc!22224 BalanceConc!22224 BalanceConc!22226) tuple2!37092)

(assert (=> d!1017884 (= lt!1194480 (lexTailRecV2!1077 thiss!18206 rules!2135 lt!1194327 (BalanceConc!22225 Empty!11305) lt!1194327 (BalanceConc!22227 Empty!11306)))))

(assert (=> d!1017884 (= (lex!2380 thiss!18206 rules!2135 lt!1194327) lt!1194480)))

(declare-fun b!3503342 () Bool)

(declare-fun e!2169056 () Bool)

(assert (=> b!3503342 (= e!2169057 e!2169056)))

(declare-fun res!1413001 () Bool)

(declare-fun size!28354 (BalanceConc!22224) Int)

(assert (=> b!3503342 (= res!1413001 (< (size!28354 (_2!21680 lt!1194480)) (size!28354 lt!1194327)))))

(assert (=> b!3503342 (=> (not res!1413001) (not e!2169056))))

(declare-fun b!3503343 () Bool)

(declare-fun res!1413002 () Bool)

(assert (=> b!3503343 (=> (not res!1413002) (not e!2169055))))

(assert (=> b!3503343 (= res!1413002 (= (list!13624 (_1!21680 lt!1194480)) (_1!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194327)))))))

(declare-fun b!3503344 () Bool)

(assert (=> b!3503344 (= e!2169057 (= (_2!21680 lt!1194480) lt!1194327))))

(declare-fun b!3503345 () Bool)

(assert (=> b!3503345 (= e!2169056 (not (isEmpty!21724 (_1!21680 lt!1194480))))))

(assert (= (and d!1017884 c!602597) b!3503342))

(assert (= (and d!1017884 (not c!602597)) b!3503344))

(assert (= (and b!3503342 res!1413001) b!3503345))

(assert (= (and d!1017884 res!1413000) b!3503343))

(assert (= (and b!3503343 res!1413002) b!3503341))

(declare-fun m!3939675 () Bool)

(assert (=> d!1017884 m!3939675))

(declare-fun m!3939677 () Bool)

(assert (=> d!1017884 m!3939677))

(declare-fun m!3939679 () Bool)

(assert (=> b!3503343 m!3939679))

(declare-fun m!3939681 () Bool)

(assert (=> b!3503343 m!3939681))

(assert (=> b!3503343 m!3939681))

(declare-fun m!3939683 () Bool)

(assert (=> b!3503343 m!3939683))

(declare-fun m!3939685 () Bool)

(assert (=> b!3503341 m!3939685))

(assert (=> b!3503341 m!3939681))

(assert (=> b!3503341 m!3939681))

(assert (=> b!3503341 m!3939683))

(declare-fun m!3939687 () Bool)

(assert (=> b!3503345 m!3939687))

(declare-fun m!3939689 () Bool)

(assert (=> b!3503342 m!3939689))

(declare-fun m!3939691 () Bool)

(assert (=> b!3503342 m!3939691))

(assert (=> b!3503168 d!1017884))

(declare-fun d!1017886 () Bool)

(declare-fun fromListB!1824 (List!37415) BalanceConc!22224)

(assert (=> d!1017886 (= (seqFromList!3983 lt!1194330) (fromListB!1824 lt!1194330))))

(declare-fun bs!563841 () Bool)

(assert (= bs!563841 d!1017886))

(declare-fun m!3939693 () Bool)

(assert (=> bs!563841 m!3939693))

(assert (=> b!3503168 d!1017886))

(declare-fun b!3503357 () Bool)

(declare-fun e!2169065 () Bool)

(declare-fun e!2169066 () Bool)

(assert (=> b!3503357 (= e!2169065 e!2169066)))

(declare-fun c!602602 () Bool)

(assert (=> b!3503357 (= c!602602 (is-IntegerValue!17086 (value!176214 (h!42713 tokens!494))))))

(declare-fun b!3503358 () Bool)

(declare-fun inv!17 (TokenValue!5695) Bool)

(assert (=> b!3503358 (= e!2169066 (inv!17 (value!176214 (h!42713 tokens!494))))))

(declare-fun b!3503359 () Bool)

(declare-fun inv!16 (TokenValue!5695) Bool)

(assert (=> b!3503359 (= e!2169065 (inv!16 (value!176214 (h!42713 tokens!494))))))

(declare-fun b!3503360 () Bool)

(declare-fun e!2169064 () Bool)

(declare-fun inv!15 (TokenValue!5695) Bool)

(assert (=> b!3503360 (= e!2169064 (inv!15 (value!176214 (h!42713 tokens!494))))))

(declare-fun d!1017888 () Bool)

(declare-fun c!602603 () Bool)

(assert (=> d!1017888 (= c!602603 (is-IntegerValue!17085 (value!176214 (h!42713 tokens!494))))))

(assert (=> d!1017888 (= (inv!21 (value!176214 (h!42713 tokens!494))) e!2169065)))

(declare-fun b!3503356 () Bool)

(declare-fun res!1413005 () Bool)

(assert (=> b!3503356 (=> res!1413005 e!2169064)))

(assert (=> b!3503356 (= res!1413005 (not (is-IntegerValue!17087 (value!176214 (h!42713 tokens!494)))))))

(assert (=> b!3503356 (= e!2169066 e!2169064)))

(assert (= (and d!1017888 c!602603) b!3503359))

(assert (= (and d!1017888 (not c!602603)) b!3503357))

(assert (= (and b!3503357 c!602602) b!3503358))

(assert (= (and b!3503357 (not c!602602)) b!3503356))

(assert (= (and b!3503356 (not res!1413005)) b!3503360))

(declare-fun m!3939695 () Bool)

(assert (=> b!3503358 m!3939695))

(declare-fun m!3939697 () Bool)

(assert (=> b!3503359 m!3939697))

(declare-fun m!3939699 () Bool)

(assert (=> b!3503360 m!3939699))

(assert (=> b!3503146 d!1017888))

(declare-fun d!1017890 () Bool)

(declare-fun c!602606 () Bool)

(assert (=> d!1017890 (= c!602606 (is-Cons!37293 tokens!494))))

(declare-fun e!2169069 () List!37415)

(assert (=> d!1017890 (= (printWithSeparatorTokenList!341 thiss!18206 tokens!494 separatorToken!241) e!2169069)))

(declare-fun b!3503365 () Bool)

(assert (=> b!3503365 (= e!2169069 (++!9226 (++!9226 (list!13622 (charsOf!3479 (h!42713 tokens!494))) (list!13622 (charsOf!3479 separatorToken!241))) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 tokens!494) separatorToken!241)))))

(declare-fun b!3503366 () Bool)

(assert (=> b!3503366 (= e!2169069 Nil!37291)))

(assert (= (and d!1017890 c!602606) b!3503365))

(assert (= (and d!1017890 (not c!602606)) b!3503366))

(assert (=> b!3503365 m!3939301))

(assert (=> b!3503365 m!3939459))

(declare-fun m!3939701 () Bool)

(assert (=> b!3503365 m!3939701))

(assert (=> b!3503365 m!3939701))

(assert (=> b!3503365 m!3939453))

(declare-fun m!3939703 () Bool)

(assert (=> b!3503365 m!3939703))

(assert (=> b!3503365 m!3939445))

(assert (=> b!3503365 m!3939453))

(assert (=> b!3503365 m!3939299))

(assert (=> b!3503365 m!3939299))

(assert (=> b!3503365 m!3939301))

(assert (=> b!3503365 m!3939445))

(assert (=> b!3503365 m!3939459))

(assert (=> b!3503167 d!1017890))

(declare-fun lt!1194483 () List!37415)

(declare-fun b!3503378 () Bool)

(declare-fun e!2169074 () Bool)

(assert (=> b!3503378 (= e!2169074 (or (not (= lt!1194333 Nil!37291)) (= lt!1194483 lt!1194346)))))

(declare-fun b!3503375 () Bool)

(declare-fun e!2169075 () List!37415)

(assert (=> b!3503375 (= e!2169075 lt!1194333)))

(declare-fun b!3503377 () Bool)

(declare-fun res!1413010 () Bool)

(assert (=> b!3503377 (=> (not res!1413010) (not e!2169074))))

(assert (=> b!3503377 (= res!1413010 (= (size!28350 lt!1194483) (+ (size!28350 lt!1194346) (size!28350 lt!1194333))))))

(declare-fun d!1017892 () Bool)

(assert (=> d!1017892 e!2169074))

(declare-fun res!1413011 () Bool)

(assert (=> d!1017892 (=> (not res!1413011) (not e!2169074))))

(declare-fun content!5242 (List!37415) (Set C!20634))

(assert (=> d!1017892 (= res!1413011 (= (content!5242 lt!1194483) (set.union (content!5242 lt!1194346) (content!5242 lt!1194333))))))

(assert (=> d!1017892 (= lt!1194483 e!2169075)))

(declare-fun c!602609 () Bool)

(assert (=> d!1017892 (= c!602609 (is-Nil!37291 lt!1194346))))

(assert (=> d!1017892 (= (++!9226 lt!1194346 lt!1194333) lt!1194483)))

(declare-fun b!3503376 () Bool)

(assert (=> b!3503376 (= e!2169075 (Cons!37291 (h!42711 lt!1194346) (++!9226 (t!279114 lt!1194346) lt!1194333)))))

(assert (= (and d!1017892 c!602609) b!3503375))

(assert (= (and d!1017892 (not c!602609)) b!3503376))

(assert (= (and d!1017892 res!1413011) b!3503377))

(assert (= (and b!3503377 res!1413010) b!3503378))

(declare-fun m!3939705 () Bool)

(assert (=> b!3503377 m!3939705))

(declare-fun m!3939707 () Bool)

(assert (=> b!3503377 m!3939707))

(declare-fun m!3939709 () Bool)

(assert (=> b!3503377 m!3939709))

(declare-fun m!3939711 () Bool)

(assert (=> d!1017892 m!3939711))

(declare-fun m!3939713 () Bool)

(assert (=> d!1017892 m!3939713))

(declare-fun m!3939715 () Bool)

(assert (=> d!1017892 m!3939715))

(declare-fun m!3939717 () Bool)

(assert (=> b!3503376 m!3939717))

(assert (=> b!3503167 d!1017892))

(declare-fun e!2169076 () Bool)

(declare-fun b!3503382 () Bool)

(declare-fun lt!1194484 () List!37415)

(assert (=> b!3503382 (= e!2169076 (or (not (= lt!1194317 Nil!37291)) (= lt!1194484 lt!1194333)))))

(declare-fun b!3503379 () Bool)

(declare-fun e!2169077 () List!37415)

(assert (=> b!3503379 (= e!2169077 lt!1194317)))

(declare-fun b!3503381 () Bool)

(declare-fun res!1413012 () Bool)

(assert (=> b!3503381 (=> (not res!1413012) (not e!2169076))))

(assert (=> b!3503381 (= res!1413012 (= (size!28350 lt!1194484) (+ (size!28350 lt!1194333) (size!28350 lt!1194317))))))

(declare-fun d!1017894 () Bool)

(assert (=> d!1017894 e!2169076))

(declare-fun res!1413013 () Bool)

(assert (=> d!1017894 (=> (not res!1413013) (not e!2169076))))

(assert (=> d!1017894 (= res!1413013 (= (content!5242 lt!1194484) (set.union (content!5242 lt!1194333) (content!5242 lt!1194317))))))

(assert (=> d!1017894 (= lt!1194484 e!2169077)))

(declare-fun c!602610 () Bool)

(assert (=> d!1017894 (= c!602610 (is-Nil!37291 lt!1194333))))

(assert (=> d!1017894 (= (++!9226 lt!1194333 lt!1194317) lt!1194484)))

(declare-fun b!3503380 () Bool)

(assert (=> b!3503380 (= e!2169077 (Cons!37291 (h!42711 lt!1194333) (++!9226 (t!279114 lt!1194333) lt!1194317)))))

(assert (= (and d!1017894 c!602610) b!3503379))

(assert (= (and d!1017894 (not c!602610)) b!3503380))

(assert (= (and d!1017894 res!1413013) b!3503381))

(assert (= (and b!3503381 res!1413012) b!3503382))

(declare-fun m!3939719 () Bool)

(assert (=> b!3503381 m!3939719))

(assert (=> b!3503381 m!3939709))

(declare-fun m!3939721 () Bool)

(assert (=> b!3503381 m!3939721))

(declare-fun m!3939723 () Bool)

(assert (=> d!1017894 m!3939723))

(assert (=> d!1017894 m!3939715))

(declare-fun m!3939725 () Bool)

(assert (=> d!1017894 m!3939725))

(declare-fun m!3939727 () Bool)

(assert (=> b!3503380 m!3939727))

(assert (=> b!3503167 d!1017894))

(declare-fun d!1017896 () Bool)

(declare-fun lt!1194487 () BalanceConc!22224)

(assert (=> d!1017896 (= (list!13622 lt!1194487) (originalCharacters!6179 separatorToken!241))))

(declare-fun dynLambda!15839 (Int TokenValue!5695) BalanceConc!22224)

(assert (=> d!1017896 (= lt!1194487 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (value!176214 separatorToken!241)))))

(assert (=> d!1017896 (= (charsOf!3479 separatorToken!241) lt!1194487)))

(declare-fun b_lambda!101803 () Bool)

(assert (=> (not b_lambda!101803) (not d!1017896)))

(declare-fun t!279128 () Bool)

(declare-fun tb!194263 () Bool)

(assert (=> (and b!3503178 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241)))) t!279128) tb!194263))

(declare-fun b!3503387 () Bool)

(declare-fun e!2169080 () Bool)

(declare-fun tp!1084535 () Bool)

(declare-fun inv!50513 (Conc!11305) Bool)

(assert (=> b!3503387 (= e!2169080 (and (inv!50513 (c!602586 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (value!176214 separatorToken!241)))) tp!1084535))))

(declare-fun result!238508 () Bool)

(declare-fun inv!50514 (BalanceConc!22224) Bool)

(assert (=> tb!194263 (= result!238508 (and (inv!50514 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (value!176214 separatorToken!241))) e!2169080))))

(assert (= tb!194263 b!3503387))

(declare-fun m!3939729 () Bool)

(assert (=> b!3503387 m!3939729))

(declare-fun m!3939731 () Bool)

(assert (=> tb!194263 m!3939731))

(assert (=> d!1017896 t!279128))

(declare-fun b_and!248575 () Bool)

(assert (= b_and!248553 (and (=> t!279128 result!238508) b_and!248575)))

(declare-fun t!279130 () Bool)

(declare-fun tb!194265 () Bool)

(assert (=> (and b!3503145 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241)))) t!279130) tb!194265))

(declare-fun result!238512 () Bool)

(assert (= result!238512 result!238508))

(assert (=> d!1017896 t!279130))

(declare-fun b_and!248577 () Bool)

(assert (= b_and!248557 (and (=> t!279130 result!238512) b_and!248577)))

(declare-fun tb!194267 () Bool)

(declare-fun t!279132 () Bool)

(assert (=> (and b!3503174 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241)))) t!279132) tb!194267))

(declare-fun result!238514 () Bool)

(assert (= result!238514 result!238508))

(assert (=> d!1017896 t!279132))

(declare-fun b_and!248579 () Bool)

(assert (= b_and!248561 (and (=> t!279132 result!238514) b_and!248579)))

(declare-fun m!3939733 () Bool)

(assert (=> d!1017896 m!3939733))

(declare-fun m!3939735 () Bool)

(assert (=> d!1017896 m!3939735))

(assert (=> b!3503167 d!1017896))

(declare-fun d!1017898 () Bool)

(declare-fun c!602611 () Bool)

(assert (=> d!1017898 (= c!602611 (is-Cons!37293 (t!279116 (t!279116 tokens!494))))))

(declare-fun e!2169081 () List!37415)

(assert (=> d!1017898 (= (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241) e!2169081)))

(declare-fun b!3503388 () Bool)

(assert (=> b!3503388 (= e!2169081 (++!9226 (++!9226 (list!13622 (charsOf!3479 (h!42713 (t!279116 (t!279116 tokens!494))))) (list!13622 (charsOf!3479 separatorToken!241))) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 (t!279116 tokens!494))) separatorToken!241)))))

(declare-fun b!3503389 () Bool)

(assert (=> b!3503389 (= e!2169081 Nil!37291)))

(assert (= (and d!1017898 c!602611) b!3503388))

(assert (= (and d!1017898 (not c!602611)) b!3503389))

(declare-fun m!3939737 () Bool)

(assert (=> b!3503388 m!3939737))

(assert (=> b!3503388 m!3939459))

(declare-fun m!3939739 () Bool)

(assert (=> b!3503388 m!3939739))

(assert (=> b!3503388 m!3939739))

(declare-fun m!3939741 () Bool)

(assert (=> b!3503388 m!3939741))

(declare-fun m!3939743 () Bool)

(assert (=> b!3503388 m!3939743))

(assert (=> b!3503388 m!3939445))

(assert (=> b!3503388 m!3939741))

(declare-fun m!3939745 () Bool)

(assert (=> b!3503388 m!3939745))

(assert (=> b!3503388 m!3939745))

(assert (=> b!3503388 m!3939737))

(assert (=> b!3503388 m!3939445))

(assert (=> b!3503388 m!3939459))

(assert (=> b!3503167 d!1017898))

(declare-fun d!1017900 () Bool)

(declare-fun c!602612 () Bool)

(assert (=> d!1017900 (= c!602612 (is-Cons!37293 (t!279116 tokens!494)))))

(declare-fun e!2169082 () List!37415)

(assert (=> d!1017900 (= (printWithSeparatorTokenList!341 thiss!18206 (t!279116 tokens!494) separatorToken!241) e!2169082)))

(declare-fun b!3503390 () Bool)

(assert (=> b!3503390 (= e!2169082 (++!9226 (++!9226 (list!13622 (charsOf!3479 (h!42713 (t!279116 tokens!494)))) (list!13622 (charsOf!3479 separatorToken!241))) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241)))))

(declare-fun b!3503391 () Bool)

(assert (=> b!3503391 (= e!2169082 Nil!37291)))

(assert (= (and d!1017900 c!602612) b!3503390))

(assert (= (and d!1017900 (not c!602612)) b!3503391))

(assert (=> b!3503390 m!3939455))

(assert (=> b!3503390 m!3939459))

(declare-fun m!3939747 () Bool)

(assert (=> b!3503390 m!3939747))

(assert (=> b!3503390 m!3939747))

(assert (=> b!3503390 m!3939457))

(declare-fun m!3939749 () Bool)

(assert (=> b!3503390 m!3939749))

(assert (=> b!3503390 m!3939445))

(assert (=> b!3503390 m!3939457))

(assert (=> b!3503390 m!3939443))

(assert (=> b!3503390 m!3939443))

(assert (=> b!3503390 m!3939455))

(assert (=> b!3503390 m!3939445))

(assert (=> b!3503390 m!3939459))

(assert (=> b!3503167 d!1017900))

(declare-fun d!1017902 () Bool)

(declare-fun list!13625 (Conc!11305) List!37415)

(assert (=> d!1017902 (= (list!13622 (charsOf!3479 (h!42713 (t!279116 tokens!494)))) (list!13625 (c!602586 (charsOf!3479 (h!42713 (t!279116 tokens!494))))))))

(declare-fun bs!563842 () Bool)

(assert (= bs!563842 d!1017902))

(declare-fun m!3939751 () Bool)

(assert (=> bs!563842 m!3939751))

(assert (=> b!3503167 d!1017902))

(declare-fun b!3503395 () Bool)

(declare-fun e!2169083 () Bool)

(declare-fun lt!1194488 () List!37415)

(assert (=> b!3503395 (= e!2169083 (or (not (= (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241) Nil!37291)) (= lt!1194488 (++!9226 lt!1194346 lt!1194333))))))

(declare-fun b!3503392 () Bool)

(declare-fun e!2169084 () List!37415)

(assert (=> b!3503392 (= e!2169084 (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241))))

(declare-fun b!3503394 () Bool)

(declare-fun res!1413014 () Bool)

(assert (=> b!3503394 (=> (not res!1413014) (not e!2169083))))

(assert (=> b!3503394 (= res!1413014 (= (size!28350 lt!1194488) (+ (size!28350 (++!9226 lt!1194346 lt!1194333)) (size!28350 (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241)))))))

(declare-fun d!1017904 () Bool)

(assert (=> d!1017904 e!2169083))

(declare-fun res!1413015 () Bool)

(assert (=> d!1017904 (=> (not res!1413015) (not e!2169083))))

(assert (=> d!1017904 (= res!1413015 (= (content!5242 lt!1194488) (set.union (content!5242 (++!9226 lt!1194346 lt!1194333)) (content!5242 (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241)))))))

(assert (=> d!1017904 (= lt!1194488 e!2169084)))

(declare-fun c!602613 () Bool)

(assert (=> d!1017904 (= c!602613 (is-Nil!37291 (++!9226 lt!1194346 lt!1194333)))))

(assert (=> d!1017904 (= (++!9226 (++!9226 lt!1194346 lt!1194333) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241)) lt!1194488)))

(declare-fun b!3503393 () Bool)

(assert (=> b!3503393 (= e!2169084 (Cons!37291 (h!42711 (++!9226 lt!1194346 lt!1194333)) (++!9226 (t!279114 (++!9226 lt!1194346 lt!1194333)) (printWithSeparatorTokenList!341 thiss!18206 (t!279116 (t!279116 tokens!494)) separatorToken!241))))))

(assert (= (and d!1017904 c!602613) b!3503392))

(assert (= (and d!1017904 (not c!602613)) b!3503393))

(assert (= (and d!1017904 res!1413015) b!3503394))

(assert (= (and b!3503394 res!1413014) b!3503395))

(declare-fun m!3939753 () Bool)

(assert (=> b!3503394 m!3939753))

(assert (=> b!3503394 m!3939451))

(declare-fun m!3939755 () Bool)

(assert (=> b!3503394 m!3939755))

(assert (=> b!3503394 m!3939457))

(declare-fun m!3939757 () Bool)

(assert (=> b!3503394 m!3939757))

(declare-fun m!3939759 () Bool)

(assert (=> d!1017904 m!3939759))

(assert (=> d!1017904 m!3939451))

(declare-fun m!3939761 () Bool)

(assert (=> d!1017904 m!3939761))

(assert (=> d!1017904 m!3939457))

(declare-fun m!3939763 () Bool)

(assert (=> d!1017904 m!3939763))

(assert (=> b!3503393 m!3939457))

(declare-fun m!3939765 () Bool)

(assert (=> b!3503393 m!3939765))

(assert (=> b!3503167 d!1017904))

(declare-fun d!1017906 () Bool)

(assert (=> d!1017906 (= (list!13622 (charsOf!3479 separatorToken!241)) (list!13625 (c!602586 (charsOf!3479 separatorToken!241))))))

(declare-fun bs!563843 () Bool)

(assert (= bs!563843 d!1017906))

(declare-fun m!3939767 () Bool)

(assert (=> bs!563843 m!3939767))

(assert (=> b!3503167 d!1017906))

(declare-fun d!1017908 () Bool)

(declare-fun lt!1194489 () BalanceConc!22224)

(assert (=> d!1017908 (= (list!13622 lt!1194489) (originalCharacters!6179 (h!42713 (t!279116 tokens!494))))))

(assert (=> d!1017908 (= lt!1194489 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (value!176214 (h!42713 (t!279116 tokens!494)))))))

(assert (=> d!1017908 (= (charsOf!3479 (h!42713 (t!279116 tokens!494))) lt!1194489)))

(declare-fun b_lambda!101805 () Bool)

(assert (=> (not b_lambda!101805) (not d!1017908)))

(declare-fun t!279134 () Bool)

(declare-fun tb!194269 () Bool)

(assert (=> (and b!3503178 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494)))))) t!279134) tb!194269))

(declare-fun b!3503396 () Bool)

(declare-fun e!2169085 () Bool)

(declare-fun tp!1084536 () Bool)

(assert (=> b!3503396 (= e!2169085 (and (inv!50513 (c!602586 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (value!176214 (h!42713 (t!279116 tokens!494)))))) tp!1084536))))

(declare-fun result!238516 () Bool)

(assert (=> tb!194269 (= result!238516 (and (inv!50514 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (value!176214 (h!42713 (t!279116 tokens!494))))) e!2169085))))

(assert (= tb!194269 b!3503396))

(declare-fun m!3939769 () Bool)

(assert (=> b!3503396 m!3939769))

(declare-fun m!3939771 () Bool)

(assert (=> tb!194269 m!3939771))

(assert (=> d!1017908 t!279134))

(declare-fun b_and!248581 () Bool)

(assert (= b_and!248575 (and (=> t!279134 result!238516) b_and!248581)))

(declare-fun tb!194271 () Bool)

(declare-fun t!279136 () Bool)

(assert (=> (and b!3503145 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494)))))) t!279136) tb!194271))

(declare-fun result!238518 () Bool)

(assert (= result!238518 result!238516))

(assert (=> d!1017908 t!279136))

(declare-fun b_and!248583 () Bool)

(assert (= b_and!248577 (and (=> t!279136 result!238518) b_and!248583)))

(declare-fun t!279138 () Bool)

(declare-fun tb!194273 () Bool)

(assert (=> (and b!3503174 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494)))))) t!279138) tb!194273))

(declare-fun result!238520 () Bool)

(assert (= result!238520 result!238516))

(assert (=> d!1017908 t!279138))

(declare-fun b_and!248585 () Bool)

(assert (= b_and!248579 (and (=> t!279138 result!238520) b_and!248585)))

(declare-fun m!3939773 () Bool)

(assert (=> d!1017908 m!3939773))

(declare-fun m!3939775 () Bool)

(assert (=> d!1017908 m!3939775))

(assert (=> b!3503167 d!1017908))

(declare-fun d!1017910 () Bool)

(declare-fun res!1413018 () Bool)

(declare-fun e!2169088 () Bool)

(assert (=> d!1017910 (=> (not res!1413018) (not e!2169088))))

(declare-fun rulesValid!2064 (LexerInterface!5054 List!37416) Bool)

(assert (=> d!1017910 (= res!1413018 (rulesValid!2064 thiss!18206 rules!2135))))

(assert (=> d!1017910 (= (rulesInvariant!4451 thiss!18206 rules!2135) e!2169088)))

(declare-fun b!3503399 () Bool)

(declare-datatypes ((List!37422 0))(
  ( (Nil!37298) (Cons!37298 (h!42718 String!41811) (t!279201 List!37422)) )
))
(declare-fun noDuplicateTag!2060 (LexerInterface!5054 List!37416 List!37422) Bool)

(assert (=> b!3503399 (= e!2169088 (noDuplicateTag!2060 thiss!18206 rules!2135 Nil!37298))))

(assert (= (and d!1017910 res!1413018) b!3503399))

(declare-fun m!3939777 () Bool)

(assert (=> d!1017910 m!3939777))

(declare-fun m!3939779 () Bool)

(assert (=> b!3503399 m!3939779))

(assert (=> b!3503148 d!1017910))

(declare-fun b!3503428 () Bool)

(declare-fun e!2169109 () Bool)

(declare-fun nullable!3509 (Regex!10224) Bool)

(assert (=> b!3503428 (= e!2169109 (nullable!3509 (regex!5465 lt!1194324)))))

(declare-fun b!3503429 () Bool)

(declare-fun e!2169105 () Bool)

(assert (=> b!3503429 (= e!2169105 (= (head!7366 lt!1194333) (c!602585 (regex!5465 lt!1194324))))))

(declare-fun b!3503430 () Bool)

(declare-fun e!2169104 () Bool)

(assert (=> b!3503430 (= e!2169104 (not (= (head!7366 lt!1194333) (c!602585 (regex!5465 lt!1194324)))))))

(declare-fun b!3503431 () Bool)

(declare-fun res!1413039 () Bool)

(assert (=> b!3503431 (=> (not res!1413039) (not e!2169105))))

(declare-fun call!252915 () Bool)

(assert (=> b!3503431 (= res!1413039 (not call!252915))))

(declare-fun b!3503432 () Bool)

(declare-fun e!2169106 () Bool)

(assert (=> b!3503432 (= e!2169106 e!2169104)))

(declare-fun res!1413042 () Bool)

(assert (=> b!3503432 (=> res!1413042 e!2169104)))

(assert (=> b!3503432 (= res!1413042 call!252915)))

(declare-fun b!3503433 () Bool)

(declare-fun res!1413035 () Bool)

(assert (=> b!3503433 (=> (not res!1413035) (not e!2169105))))

(declare-fun isEmpty!21730 (List!37415) Bool)

(declare-fun tail!5474 (List!37415) List!37415)

(assert (=> b!3503433 (= res!1413035 (isEmpty!21730 (tail!5474 lt!1194333)))))

(declare-fun d!1017912 () Bool)

(declare-fun e!2169107 () Bool)

(assert (=> d!1017912 e!2169107))

(declare-fun c!602620 () Bool)

(assert (=> d!1017912 (= c!602620 (is-EmptyExpr!10224 (regex!5465 lt!1194324)))))

(declare-fun lt!1194492 () Bool)

(assert (=> d!1017912 (= lt!1194492 e!2169109)))

(declare-fun c!602622 () Bool)

(assert (=> d!1017912 (= c!602622 (isEmpty!21730 lt!1194333))))

(declare-fun validRegex!4665 (Regex!10224) Bool)

(assert (=> d!1017912 (validRegex!4665 (regex!5465 lt!1194324))))

(assert (=> d!1017912 (= (matchR!4808 (regex!5465 lt!1194324) lt!1194333) lt!1194492)))

(declare-fun b!3503434 () Bool)

(declare-fun res!1413037 () Bool)

(assert (=> b!3503434 (=> res!1413037 e!2169104)))

(assert (=> b!3503434 (= res!1413037 (not (isEmpty!21730 (tail!5474 lt!1194333))))))

(declare-fun b!3503435 () Bool)

(declare-fun res!1413041 () Bool)

(declare-fun e!2169108 () Bool)

(assert (=> b!3503435 (=> res!1413041 e!2169108)))

(assert (=> b!3503435 (= res!1413041 e!2169105)))

(declare-fun res!1413036 () Bool)

(assert (=> b!3503435 (=> (not res!1413036) (not e!2169105))))

(assert (=> b!3503435 (= res!1413036 lt!1194492)))

(declare-fun b!3503436 () Bool)

(declare-fun derivativeStep!3062 (Regex!10224 C!20634) Regex!10224)

(assert (=> b!3503436 (= e!2169109 (matchR!4808 (derivativeStep!3062 (regex!5465 lt!1194324) (head!7366 lt!1194333)) (tail!5474 lt!1194333)))))

(declare-fun bm!252910 () Bool)

(assert (=> bm!252910 (= call!252915 (isEmpty!21730 lt!1194333))))

(declare-fun b!3503437 () Bool)

(assert (=> b!3503437 (= e!2169107 (= lt!1194492 call!252915))))

(declare-fun b!3503438 () Bool)

(declare-fun e!2169103 () Bool)

(assert (=> b!3503438 (= e!2169103 (not lt!1194492))))

(declare-fun b!3503439 () Bool)

(assert (=> b!3503439 (= e!2169108 e!2169106)))

(declare-fun res!1413040 () Bool)

(assert (=> b!3503439 (=> (not res!1413040) (not e!2169106))))

(assert (=> b!3503439 (= res!1413040 (not lt!1194492))))

(declare-fun b!3503440 () Bool)

(assert (=> b!3503440 (= e!2169107 e!2169103)))

(declare-fun c!602621 () Bool)

(assert (=> b!3503440 (= c!602621 (is-EmptyLang!10224 (regex!5465 lt!1194324)))))

(declare-fun b!3503441 () Bool)

(declare-fun res!1413038 () Bool)

(assert (=> b!3503441 (=> res!1413038 e!2169108)))

(assert (=> b!3503441 (= res!1413038 (not (is-ElementMatch!10224 (regex!5465 lt!1194324))))))

(assert (=> b!3503441 (= e!2169103 e!2169108)))

(assert (= (and d!1017912 c!602622) b!3503428))

(assert (= (and d!1017912 (not c!602622)) b!3503436))

(assert (= (and d!1017912 c!602620) b!3503437))

(assert (= (and d!1017912 (not c!602620)) b!3503440))

(assert (= (and b!3503440 c!602621) b!3503438))

(assert (= (and b!3503440 (not c!602621)) b!3503441))

(assert (= (and b!3503441 (not res!1413038)) b!3503435))

(assert (= (and b!3503435 res!1413036) b!3503431))

(assert (= (and b!3503431 res!1413039) b!3503433))

(assert (= (and b!3503433 res!1413035) b!3503429))

(assert (= (and b!3503435 (not res!1413041)) b!3503439))

(assert (= (and b!3503439 res!1413040) b!3503432))

(assert (= (and b!3503432 (not res!1413042)) b!3503434))

(assert (= (and b!3503434 (not res!1413037)) b!3503430))

(assert (= (or b!3503437 b!3503431 b!3503432) bm!252910))

(declare-fun m!3939781 () Bool)

(assert (=> bm!252910 m!3939781))

(assert (=> b!3503436 m!3939419))

(assert (=> b!3503436 m!3939419))

(declare-fun m!3939783 () Bool)

(assert (=> b!3503436 m!3939783))

(declare-fun m!3939785 () Bool)

(assert (=> b!3503436 m!3939785))

(assert (=> b!3503436 m!3939783))

(assert (=> b!3503436 m!3939785))

(declare-fun m!3939787 () Bool)

(assert (=> b!3503436 m!3939787))

(assert (=> b!3503430 m!3939419))

(declare-fun m!3939789 () Bool)

(assert (=> b!3503428 m!3939789))

(assert (=> b!3503429 m!3939419))

(assert (=> b!3503434 m!3939785))

(assert (=> b!3503434 m!3939785))

(declare-fun m!3939791 () Bool)

(assert (=> b!3503434 m!3939791))

(assert (=> d!1017912 m!3939781))

(declare-fun m!3939793 () Bool)

(assert (=> d!1017912 m!3939793))

(assert (=> b!3503433 m!3939785))

(assert (=> b!3503433 m!3939785))

(assert (=> b!3503433 m!3939791))

(assert (=> b!3503169 d!1017912))

(declare-fun d!1017916 () Bool)

(assert (=> d!1017916 (= (get!11963 lt!1194342) (v!37030 lt!1194342))))

(assert (=> b!3503169 d!1017916))

(declare-fun d!1017918 () Bool)

(declare-fun lt!1194498 () Bool)

(assert (=> d!1017918 (= lt!1194498 (isEmpty!21730 (list!13622 (_2!21680 lt!1194336))))))

(declare-fun isEmpty!21731 (Conc!11305) Bool)

(assert (=> d!1017918 (= lt!1194498 (isEmpty!21731 (c!602586 (_2!21680 lt!1194336))))))

(assert (=> d!1017918 (= (isEmpty!21722 (_2!21680 lt!1194336)) lt!1194498)))

(declare-fun bs!563845 () Bool)

(assert (= bs!563845 d!1017918))

(declare-fun m!3939801 () Bool)

(assert (=> bs!563845 m!3939801))

(assert (=> bs!563845 m!3939801))

(declare-fun m!3939803 () Bool)

(assert (=> bs!563845 m!3939803))

(declare-fun m!3939805 () Bool)

(assert (=> bs!563845 m!3939805))

(assert (=> b!3503147 d!1017918))

(declare-fun d!1017922 () Bool)

(assert (=> d!1017922 (= (inv!50506 (tag!6095 (h!42712 rules!2135))) (= (mod (str.len (value!176213 (tag!6095 (h!42712 rules!2135)))) 2) 0))))

(assert (=> b!3503165 d!1017922))

(declare-fun d!1017926 () Bool)

(declare-fun res!1413045 () Bool)

(declare-fun e!2169112 () Bool)

(assert (=> d!1017926 (=> (not res!1413045) (not e!2169112))))

(declare-fun semiInverseModEq!2304 (Int Int) Bool)

(assert (=> d!1017926 (= res!1413045 (semiInverseModEq!2304 (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toValue!7709 (transformation!5465 (h!42712 rules!2135)))))))

(assert (=> d!1017926 (= (inv!50510 (transformation!5465 (h!42712 rules!2135))) e!2169112)))

(declare-fun b!3503444 () Bool)

(declare-fun equivClasses!2203 (Int Int) Bool)

(assert (=> b!3503444 (= e!2169112 (equivClasses!2203 (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toValue!7709 (transformation!5465 (h!42712 rules!2135)))))))

(assert (= (and d!1017926 res!1413045) b!3503444))

(declare-fun m!3939807 () Bool)

(assert (=> d!1017926 m!3939807))

(declare-fun m!3939809 () Bool)

(assert (=> b!3503444 m!3939809))

(assert (=> b!3503165 d!1017926))

(declare-fun b!3503445 () Bool)

(declare-fun e!2169119 () Bool)

(assert (=> b!3503445 (= e!2169119 (nullable!3509 (regex!5465 lt!1194325)))))

(declare-fun b!3503446 () Bool)

(declare-fun e!2169115 () Bool)

(assert (=> b!3503446 (= e!2169115 (= (head!7366 lt!1194346) (c!602585 (regex!5465 lt!1194325))))))

(declare-fun b!3503447 () Bool)

(declare-fun e!2169114 () Bool)

(assert (=> b!3503447 (= e!2169114 (not (= (head!7366 lt!1194346) (c!602585 (regex!5465 lt!1194325)))))))

(declare-fun b!3503448 () Bool)

(declare-fun res!1413050 () Bool)

(assert (=> b!3503448 (=> (not res!1413050) (not e!2169115))))

(declare-fun call!252916 () Bool)

(assert (=> b!3503448 (= res!1413050 (not call!252916))))

(declare-fun b!3503449 () Bool)

(declare-fun e!2169116 () Bool)

(assert (=> b!3503449 (= e!2169116 e!2169114)))

(declare-fun res!1413053 () Bool)

(assert (=> b!3503449 (=> res!1413053 e!2169114)))

(assert (=> b!3503449 (= res!1413053 call!252916)))

(declare-fun b!3503450 () Bool)

(declare-fun res!1413046 () Bool)

(assert (=> b!3503450 (=> (not res!1413046) (not e!2169115))))

(assert (=> b!3503450 (= res!1413046 (isEmpty!21730 (tail!5474 lt!1194346)))))

(declare-fun d!1017928 () Bool)

(declare-fun e!2169117 () Bool)

(assert (=> d!1017928 e!2169117))

(declare-fun c!602623 () Bool)

(assert (=> d!1017928 (= c!602623 (is-EmptyExpr!10224 (regex!5465 lt!1194325)))))

(declare-fun lt!1194499 () Bool)

(assert (=> d!1017928 (= lt!1194499 e!2169119)))

(declare-fun c!602625 () Bool)

(assert (=> d!1017928 (= c!602625 (isEmpty!21730 lt!1194346))))

(assert (=> d!1017928 (validRegex!4665 (regex!5465 lt!1194325))))

(assert (=> d!1017928 (= (matchR!4808 (regex!5465 lt!1194325) lt!1194346) lt!1194499)))

(declare-fun b!3503451 () Bool)

(declare-fun res!1413048 () Bool)

(assert (=> b!3503451 (=> res!1413048 e!2169114)))

(assert (=> b!3503451 (= res!1413048 (not (isEmpty!21730 (tail!5474 lt!1194346))))))

(declare-fun b!3503452 () Bool)

(declare-fun res!1413052 () Bool)

(declare-fun e!2169118 () Bool)

(assert (=> b!3503452 (=> res!1413052 e!2169118)))

(assert (=> b!3503452 (= res!1413052 e!2169115)))

(declare-fun res!1413047 () Bool)

(assert (=> b!3503452 (=> (not res!1413047) (not e!2169115))))

(assert (=> b!3503452 (= res!1413047 lt!1194499)))

(declare-fun b!3503453 () Bool)

(assert (=> b!3503453 (= e!2169119 (matchR!4808 (derivativeStep!3062 (regex!5465 lt!1194325) (head!7366 lt!1194346)) (tail!5474 lt!1194346)))))

(declare-fun bm!252911 () Bool)

(assert (=> bm!252911 (= call!252916 (isEmpty!21730 lt!1194346))))

(declare-fun b!3503454 () Bool)

(assert (=> b!3503454 (= e!2169117 (= lt!1194499 call!252916))))

(declare-fun b!3503455 () Bool)

(declare-fun e!2169113 () Bool)

(assert (=> b!3503455 (= e!2169113 (not lt!1194499))))

(declare-fun b!3503456 () Bool)

(assert (=> b!3503456 (= e!2169118 e!2169116)))

(declare-fun res!1413051 () Bool)

(assert (=> b!3503456 (=> (not res!1413051) (not e!2169116))))

(assert (=> b!3503456 (= res!1413051 (not lt!1194499))))

(declare-fun b!3503457 () Bool)

(assert (=> b!3503457 (= e!2169117 e!2169113)))

(declare-fun c!602624 () Bool)

(assert (=> b!3503457 (= c!602624 (is-EmptyLang!10224 (regex!5465 lt!1194325)))))

(declare-fun b!3503458 () Bool)

(declare-fun res!1413049 () Bool)

(assert (=> b!3503458 (=> res!1413049 e!2169118)))

(assert (=> b!3503458 (= res!1413049 (not (is-ElementMatch!10224 (regex!5465 lt!1194325))))))

(assert (=> b!3503458 (= e!2169113 e!2169118)))

(assert (= (and d!1017928 c!602625) b!3503445))

(assert (= (and d!1017928 (not c!602625)) b!3503453))

(assert (= (and d!1017928 c!602623) b!3503454))

(assert (= (and d!1017928 (not c!602623)) b!3503457))

(assert (= (and b!3503457 c!602624) b!3503455))

(assert (= (and b!3503457 (not c!602624)) b!3503458))

(assert (= (and b!3503458 (not res!1413049)) b!3503452))

(assert (= (and b!3503452 res!1413047) b!3503448))

(assert (= (and b!3503448 res!1413050) b!3503450))

(assert (= (and b!3503450 res!1413046) b!3503446))

(assert (= (and b!3503452 (not res!1413052)) b!3503456))

(assert (= (and b!3503456 res!1413051) b!3503449))

(assert (= (and b!3503449 (not res!1413053)) b!3503451))

(assert (= (and b!3503451 (not res!1413048)) b!3503447))

(assert (= (or b!3503454 b!3503448 b!3503449) bm!252911))

(declare-fun m!3939811 () Bool)

(assert (=> bm!252911 m!3939811))

(declare-fun m!3939813 () Bool)

(assert (=> b!3503453 m!3939813))

(assert (=> b!3503453 m!3939813))

(declare-fun m!3939815 () Bool)

(assert (=> b!3503453 m!3939815))

(declare-fun m!3939817 () Bool)

(assert (=> b!3503453 m!3939817))

(assert (=> b!3503453 m!3939815))

(assert (=> b!3503453 m!3939817))

(declare-fun m!3939819 () Bool)

(assert (=> b!3503453 m!3939819))

(assert (=> b!3503447 m!3939813))

(declare-fun m!3939821 () Bool)

(assert (=> b!3503445 m!3939821))

(assert (=> b!3503446 m!3939813))

(assert (=> b!3503451 m!3939817))

(assert (=> b!3503451 m!3939817))

(declare-fun m!3939823 () Bool)

(assert (=> b!3503451 m!3939823))

(assert (=> d!1017928 m!3939811))

(declare-fun m!3939825 () Bool)

(assert (=> d!1017928 m!3939825))

(assert (=> b!3503450 m!3939817))

(assert (=> b!3503450 m!3939817))

(assert (=> b!3503450 m!3939823))

(assert (=> b!3503166 d!1017928))

(declare-fun d!1017930 () Bool)

(assert (=> d!1017930 (= (get!11963 lt!1194307) (v!37030 lt!1194307))))

(assert (=> b!3503166 d!1017930))

(declare-fun d!1017932 () Bool)

(declare-fun dynLambda!15840 (Int Token!10296) Bool)

(assert (=> d!1017932 (dynLambda!15840 lambda!122474 (h!42713 (t!279116 tokens!494)))))

(declare-fun lt!1194502 () Unit!52855)

(declare-fun choose!20315 (List!37417 Int Token!10296) Unit!52855)

(assert (=> d!1017932 (= lt!1194502 (choose!20315 tokens!494 lambda!122474 (h!42713 (t!279116 tokens!494))))))

(declare-fun e!2169125 () Bool)

(assert (=> d!1017932 e!2169125))

(declare-fun res!1413059 () Bool)

(assert (=> d!1017932 (=> (not res!1413059) (not e!2169125))))

(assert (=> d!1017932 (= res!1413059 (forall!7998 tokens!494 lambda!122474))))

(assert (=> d!1017932 (= (forallContained!1412 tokens!494 lambda!122474 (h!42713 (t!279116 tokens!494))) lt!1194502)))

(declare-fun b!3503464 () Bool)

(declare-fun contains!6975 (List!37417 Token!10296) Bool)

(assert (=> b!3503464 (= e!2169125 (contains!6975 tokens!494 (h!42713 (t!279116 tokens!494))))))

(assert (= (and d!1017932 res!1413059) b!3503464))

(declare-fun b_lambda!101807 () Bool)

(assert (=> (not b_lambda!101807) (not d!1017932)))

(declare-fun m!3939831 () Bool)

(assert (=> d!1017932 m!3939831))

(declare-fun m!3939833 () Bool)

(assert (=> d!1017932 m!3939833))

(assert (=> d!1017932 m!3939351))

(declare-fun m!3939835 () Bool)

(assert (=> b!3503464 m!3939835))

(assert (=> b!3503173 d!1017932))

(declare-fun d!1017936 () Bool)

(assert (=> d!1017936 (dynLambda!15840 lambda!122474 (h!42713 tokens!494))))

(declare-fun lt!1194503 () Unit!52855)

(assert (=> d!1017936 (= lt!1194503 (choose!20315 tokens!494 lambda!122474 (h!42713 tokens!494)))))

(declare-fun e!2169126 () Bool)

(assert (=> d!1017936 e!2169126))

(declare-fun res!1413060 () Bool)

(assert (=> d!1017936 (=> (not res!1413060) (not e!2169126))))

(assert (=> d!1017936 (= res!1413060 (forall!7998 tokens!494 lambda!122474))))

(assert (=> d!1017936 (= (forallContained!1412 tokens!494 lambda!122474 (h!42713 tokens!494)) lt!1194503)))

(declare-fun b!3503465 () Bool)

(assert (=> b!3503465 (= e!2169126 (contains!6975 tokens!494 (h!42713 tokens!494)))))

(assert (= (and d!1017936 res!1413060) b!3503465))

(declare-fun b_lambda!101809 () Bool)

(assert (=> (not b_lambda!101809) (not d!1017936)))

(declare-fun m!3939837 () Bool)

(assert (=> d!1017936 m!3939837))

(declare-fun m!3939839 () Bool)

(assert (=> d!1017936 m!3939839))

(assert (=> d!1017936 m!3939351))

(declare-fun m!3939841 () Bool)

(assert (=> b!3503465 m!3939841))

(assert (=> b!3503173 d!1017936))

(declare-fun d!1017938 () Bool)

(assert (=> d!1017938 (= (inv!50506 (tag!6095 (rule!8091 separatorToken!241))) (= (mod (str.len (value!176213 (tag!6095 (rule!8091 separatorToken!241)))) 2) 0))))

(assert (=> b!3503153 d!1017938))

(declare-fun d!1017940 () Bool)

(declare-fun res!1413061 () Bool)

(declare-fun e!2169127 () Bool)

(assert (=> d!1017940 (=> (not res!1413061) (not e!2169127))))

(assert (=> d!1017940 (= res!1413061 (semiInverseModEq!2304 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toValue!7709 (transformation!5465 (rule!8091 separatorToken!241)))))))

(assert (=> d!1017940 (= (inv!50510 (transformation!5465 (rule!8091 separatorToken!241))) e!2169127)))

(declare-fun b!3503466 () Bool)

(assert (=> b!3503466 (= e!2169127 (equivClasses!2203 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toValue!7709 (transformation!5465 (rule!8091 separatorToken!241)))))))

(assert (= (and d!1017940 res!1413061) b!3503466))

(declare-fun m!3939843 () Bool)

(assert (=> d!1017940 m!3939843))

(declare-fun m!3939845 () Bool)

(assert (=> b!3503466 m!3939845))

(assert (=> b!3503153 d!1017940))

(declare-fun d!1017942 () Bool)

(declare-fun res!1413066 () Bool)

(declare-fun e!2169132 () Bool)

(assert (=> d!1017942 (=> res!1413066 e!2169132)))

(assert (=> d!1017942 (= res!1413066 (is-Nil!37293 tokens!494))))

(assert (=> d!1017942 (= (forall!7998 tokens!494 lambda!122474) e!2169132)))

(declare-fun b!3503471 () Bool)

(declare-fun e!2169133 () Bool)

(assert (=> b!3503471 (= e!2169132 e!2169133)))

(declare-fun res!1413067 () Bool)

(assert (=> b!3503471 (=> (not res!1413067) (not e!2169133))))

(assert (=> b!3503471 (= res!1413067 (dynLambda!15840 lambda!122474 (h!42713 tokens!494)))))

(declare-fun b!3503472 () Bool)

(assert (=> b!3503472 (= e!2169133 (forall!7998 (t!279116 tokens!494) lambda!122474))))

(assert (= (and d!1017942 (not res!1413066)) b!3503471))

(assert (= (and b!3503471 res!1413067) b!3503472))

(declare-fun b_lambda!101811 () Bool)

(assert (=> (not b_lambda!101811) (not b!3503471)))

(assert (=> b!3503471 m!3939837))

(declare-fun m!3939847 () Bool)

(assert (=> b!3503472 m!3939847))

(assert (=> b!3503149 d!1017942))

(declare-fun d!1017944 () Bool)

(declare-fun lt!1194506 () Token!10296)

(declare-fun apply!8858 (List!37417 Int) Token!10296)

(assert (=> d!1017944 (= lt!1194506 (apply!8858 (list!13624 (_1!21680 lt!1194336)) 0))))

(declare-fun apply!8859 (Conc!11306 Int) Token!10296)

(assert (=> d!1017944 (= lt!1194506 (apply!8859 (c!602587 (_1!21680 lt!1194336)) 0))))

(declare-fun e!2169136 () Bool)

(assert (=> d!1017944 e!2169136))

(declare-fun res!1413070 () Bool)

(assert (=> d!1017944 (=> (not res!1413070) (not e!2169136))))

(assert (=> d!1017944 (= res!1413070 (<= 0 0))))

(assert (=> d!1017944 (= (apply!8855 (_1!21680 lt!1194336) 0) lt!1194506)))

(declare-fun b!3503475 () Bool)

(assert (=> b!3503475 (= e!2169136 (< 0 (size!28349 (_1!21680 lt!1194336))))))

(assert (= (and d!1017944 res!1413070) b!3503475))

(declare-fun m!3939849 () Bool)

(assert (=> d!1017944 m!3939849))

(assert (=> d!1017944 m!3939849))

(declare-fun m!3939851 () Bool)

(assert (=> d!1017944 m!3939851))

(declare-fun m!3939853 () Bool)

(assert (=> d!1017944 m!3939853))

(assert (=> b!3503475 m!3939421))

(assert (=> b!3503170 d!1017944))

(declare-fun lt!1194507 () List!37415)

(declare-fun e!2169137 () Bool)

(declare-fun b!3503479 () Bool)

(assert (=> b!3503479 (= e!2169137 (or (not (= lt!1194344 Nil!37291)) (= lt!1194507 lt!1194330)))))

(declare-fun b!3503476 () Bool)

(declare-fun e!2169138 () List!37415)

(assert (=> b!3503476 (= e!2169138 lt!1194344)))

(declare-fun b!3503478 () Bool)

(declare-fun res!1413071 () Bool)

(assert (=> b!3503478 (=> (not res!1413071) (not e!2169137))))

(assert (=> b!3503478 (= res!1413071 (= (size!28350 lt!1194507) (+ (size!28350 lt!1194330) (size!28350 lt!1194344))))))

(declare-fun d!1017946 () Bool)

(assert (=> d!1017946 e!2169137))

(declare-fun res!1413072 () Bool)

(assert (=> d!1017946 (=> (not res!1413072) (not e!2169137))))

(assert (=> d!1017946 (= res!1413072 (= (content!5242 lt!1194507) (set.union (content!5242 lt!1194330) (content!5242 lt!1194344))))))

(assert (=> d!1017946 (= lt!1194507 e!2169138)))

(declare-fun c!602626 () Bool)

(assert (=> d!1017946 (= c!602626 (is-Nil!37291 lt!1194330))))

(assert (=> d!1017946 (= (++!9226 lt!1194330 lt!1194344) lt!1194507)))

(declare-fun b!3503477 () Bool)

(assert (=> b!3503477 (= e!2169138 (Cons!37291 (h!42711 lt!1194330) (++!9226 (t!279114 lt!1194330) lt!1194344)))))

(assert (= (and d!1017946 c!602626) b!3503476))

(assert (= (and d!1017946 (not c!602626)) b!3503477))

(assert (= (and d!1017946 res!1413072) b!3503478))

(assert (= (and b!3503478 res!1413071) b!3503479))

(declare-fun m!3939855 () Bool)

(assert (=> b!3503478 m!3939855))

(assert (=> b!3503478 m!3939393))

(declare-fun m!3939857 () Bool)

(assert (=> b!3503478 m!3939857))

(declare-fun m!3939859 () Bool)

(assert (=> d!1017946 m!3939859))

(declare-fun m!3939861 () Bool)

(assert (=> d!1017946 m!3939861))

(declare-fun m!3939863 () Bool)

(assert (=> d!1017946 m!3939863))

(declare-fun m!3939865 () Bool)

(assert (=> b!3503477 m!3939865))

(assert (=> b!3503172 d!1017946))

(declare-fun d!1017948 () Bool)

(assert (=> d!1017948 (= (++!9226 (++!9226 lt!1194330 lt!1194333) lt!1194317) (++!9226 lt!1194330 (++!9226 lt!1194333 lt!1194317)))))

(declare-fun lt!1194510 () Unit!52855)

(declare-fun choose!20316 (List!37415 List!37415 List!37415) Unit!52855)

(assert (=> d!1017948 (= lt!1194510 (choose!20316 lt!1194330 lt!1194333 lt!1194317))))

(assert (=> d!1017948 (= (lemmaConcatAssociativity!1993 lt!1194330 lt!1194333 lt!1194317) lt!1194510)))

(declare-fun bs!563846 () Bool)

(assert (= bs!563846 d!1017948))

(assert (=> bs!563846 m!3939447))

(declare-fun m!3939867 () Bool)

(assert (=> bs!563846 m!3939867))

(assert (=> bs!563846 m!3939479))

(assert (=> bs!563846 m!3939481))

(assert (=> bs!563846 m!3939479))

(assert (=> bs!563846 m!3939447))

(declare-fun m!3939869 () Bool)

(assert (=> bs!563846 m!3939869))

(assert (=> b!3503172 d!1017948))

(declare-fun d!1017950 () Bool)

(declare-fun lt!1194518 () Bool)

(declare-fun e!2169164 () Bool)

(assert (=> d!1017950 (= lt!1194518 e!2169164)))

(declare-fun res!1413103 () Bool)

(assert (=> d!1017950 (=> (not res!1413103) (not e!2169164))))

(assert (=> d!1017950 (= res!1413103 (= (list!13624 (_1!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 tokens!494)))))) (list!13624 (singletonSeq!2561 (h!42713 tokens!494)))))))

(declare-fun e!2169165 () Bool)

(assert (=> d!1017950 (= lt!1194518 e!2169165)))

(declare-fun res!1413104 () Bool)

(assert (=> d!1017950 (=> (not res!1413104) (not e!2169165))))

(declare-fun lt!1194519 () tuple2!37092)

(assert (=> d!1017950 (= res!1413104 (= (size!28349 (_1!21680 lt!1194519)) 1))))

(assert (=> d!1017950 (= lt!1194519 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 tokens!494)))))))

(assert (=> d!1017950 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1017950 (= (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 tokens!494)) lt!1194518)))

(declare-fun b!3503528 () Bool)

(declare-fun res!1413105 () Bool)

(assert (=> b!3503528 (=> (not res!1413105) (not e!2169165))))

(assert (=> b!3503528 (= res!1413105 (= (apply!8855 (_1!21680 lt!1194519) 0) (h!42713 tokens!494)))))

(declare-fun b!3503529 () Bool)

(assert (=> b!3503529 (= e!2169165 (isEmpty!21722 (_2!21680 lt!1194519)))))

(declare-fun b!3503530 () Bool)

(assert (=> b!3503530 (= e!2169164 (isEmpty!21722 (_2!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 tokens!494)))))))))

(assert (= (and d!1017950 res!1413104) b!3503528))

(assert (= (and b!3503528 res!1413105) b!3503529))

(assert (= (and d!1017950 res!1413103) b!3503530))

(assert (=> d!1017950 m!3939465))

(declare-fun m!3939887 () Bool)

(assert (=> d!1017950 m!3939887))

(declare-fun m!3939889 () Bool)

(assert (=> d!1017950 m!3939889))

(assert (=> d!1017950 m!3939307))

(assert (=> d!1017950 m!3939465))

(declare-fun m!3939891 () Bool)

(assert (=> d!1017950 m!3939891))

(assert (=> d!1017950 m!3939891))

(declare-fun m!3939893 () Bool)

(assert (=> d!1017950 m!3939893))

(assert (=> d!1017950 m!3939465))

(declare-fun m!3939895 () Bool)

(assert (=> d!1017950 m!3939895))

(declare-fun m!3939897 () Bool)

(assert (=> b!3503528 m!3939897))

(declare-fun m!3939899 () Bool)

(assert (=> b!3503529 m!3939899))

(assert (=> b!3503530 m!3939465))

(assert (=> b!3503530 m!3939465))

(assert (=> b!3503530 m!3939891))

(assert (=> b!3503530 m!3939891))

(assert (=> b!3503530 m!3939893))

(declare-fun m!3939901 () Bool)

(assert (=> b!3503530 m!3939901))

(assert (=> b!3503150 d!1017950))

(declare-fun b!3503532 () Bool)

(declare-fun e!2169167 () Bool)

(declare-fun e!2169168 () Bool)

(assert (=> b!3503532 (= e!2169167 e!2169168)))

(declare-fun c!602636 () Bool)

(assert (=> b!3503532 (= c!602636 (is-IntegerValue!17086 (value!176214 separatorToken!241)))))

(declare-fun b!3503533 () Bool)

(assert (=> b!3503533 (= e!2169168 (inv!17 (value!176214 separatorToken!241)))))

(declare-fun b!3503534 () Bool)

(assert (=> b!3503534 (= e!2169167 (inv!16 (value!176214 separatorToken!241)))))

(declare-fun b!3503535 () Bool)

(declare-fun e!2169166 () Bool)

(assert (=> b!3503535 (= e!2169166 (inv!15 (value!176214 separatorToken!241)))))

(declare-fun d!1017956 () Bool)

(declare-fun c!602637 () Bool)

(assert (=> d!1017956 (= c!602637 (is-IntegerValue!17085 (value!176214 separatorToken!241)))))

(assert (=> d!1017956 (= (inv!21 (value!176214 separatorToken!241)) e!2169167)))

(declare-fun b!3503531 () Bool)

(declare-fun res!1413106 () Bool)

(assert (=> b!3503531 (=> res!1413106 e!2169166)))

(assert (=> b!3503531 (= res!1413106 (not (is-IntegerValue!17087 (value!176214 separatorToken!241))))))

(assert (=> b!3503531 (= e!2169168 e!2169166)))

(assert (= (and d!1017956 c!602637) b!3503534))

(assert (= (and d!1017956 (not c!602637)) b!3503532))

(assert (= (and b!3503532 c!602636) b!3503533))

(assert (= (and b!3503532 (not c!602636)) b!3503531))

(assert (= (and b!3503531 (not res!1413106)) b!3503535))

(declare-fun m!3939903 () Bool)

(assert (=> b!3503533 m!3939903))

(declare-fun m!3939905 () Bool)

(assert (=> b!3503534 m!3939905))

(declare-fun m!3939907 () Bool)

(assert (=> b!3503535 m!3939907))

(assert (=> b!3503171 d!1017956))

(declare-fun d!1017958 () Bool)

(assert (=> d!1017958 (= (inv!50506 (tag!6095 (rule!8091 (h!42713 tokens!494)))) (= (mod (str.len (value!176213 (tag!6095 (rule!8091 (h!42713 tokens!494))))) 2) 0))))

(assert (=> b!3503157 d!1017958))

(declare-fun d!1017960 () Bool)

(declare-fun res!1413107 () Bool)

(declare-fun e!2169169 () Bool)

(assert (=> d!1017960 (=> (not res!1413107) (not e!2169169))))

(assert (=> d!1017960 (= res!1413107 (semiInverseModEq!2304 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))))))

(assert (=> d!1017960 (= (inv!50510 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) e!2169169)))

(declare-fun b!3503536 () Bool)

(assert (=> b!3503536 (= e!2169169 (equivClasses!2203 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))))))

(assert (= (and d!1017960 res!1413107) b!3503536))

(declare-fun m!3939909 () Bool)

(assert (=> d!1017960 m!3939909))

(declare-fun m!3939911 () Bool)

(assert (=> b!3503536 m!3939911))

(assert (=> b!3503157 d!1017960))

(declare-fun d!1017962 () Bool)

(declare-fun lt!1194520 () Bool)

(declare-fun e!2169170 () Bool)

(assert (=> d!1017962 (= lt!1194520 e!2169170)))

(declare-fun res!1413108 () Bool)

(assert (=> d!1017962 (=> (not res!1413108) (not e!2169170))))

(assert (=> d!1017962 (= res!1413108 (= (list!13624 (_1!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 (t!279116 tokens!494))))))) (list!13624 (singletonSeq!2561 (h!42713 (t!279116 tokens!494))))))))

(declare-fun e!2169171 () Bool)

(assert (=> d!1017962 (= lt!1194520 e!2169171)))

(declare-fun res!1413109 () Bool)

(assert (=> d!1017962 (=> (not res!1413109) (not e!2169171))))

(declare-fun lt!1194521 () tuple2!37092)

(assert (=> d!1017962 (= res!1413109 (= (size!28349 (_1!21680 lt!1194521)) 1))))

(assert (=> d!1017962 (= lt!1194521 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 (t!279116 tokens!494))))))))

(assert (=> d!1017962 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1017962 (= (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 (t!279116 tokens!494))) lt!1194520)))

(declare-fun b!3503537 () Bool)

(declare-fun res!1413110 () Bool)

(assert (=> b!3503537 (=> (not res!1413110) (not e!2169171))))

(assert (=> b!3503537 (= res!1413110 (= (apply!8855 (_1!21680 lt!1194521) 0) (h!42713 (t!279116 tokens!494))))))

(declare-fun b!3503538 () Bool)

(assert (=> b!3503538 (= e!2169171 (isEmpty!21722 (_2!21680 lt!1194521)))))

(declare-fun b!3503539 () Bool)

(assert (=> b!3503539 (= e!2169170 (isEmpty!21722 (_2!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 (h!42713 (t!279116 tokens!494))))))))))

(assert (= (and d!1017962 res!1413109) b!3503537))

(assert (= (and b!3503537 res!1413110) b!3503538))

(assert (= (and d!1017962 res!1413108) b!3503539))

(assert (=> d!1017962 m!3939375))

(declare-fun m!3939913 () Bool)

(assert (=> d!1017962 m!3939913))

(declare-fun m!3939915 () Bool)

(assert (=> d!1017962 m!3939915))

(assert (=> d!1017962 m!3939307))

(assert (=> d!1017962 m!3939375))

(declare-fun m!3939917 () Bool)

(assert (=> d!1017962 m!3939917))

(assert (=> d!1017962 m!3939917))

(declare-fun m!3939919 () Bool)

(assert (=> d!1017962 m!3939919))

(assert (=> d!1017962 m!3939375))

(declare-fun m!3939921 () Bool)

(assert (=> d!1017962 m!3939921))

(declare-fun m!3939923 () Bool)

(assert (=> b!3503537 m!3939923))

(declare-fun m!3939925 () Bool)

(assert (=> b!3503538 m!3939925))

(assert (=> b!3503539 m!3939375))

(assert (=> b!3503539 m!3939375))

(assert (=> b!3503539 m!3939917))

(assert (=> b!3503539 m!3939917))

(assert (=> b!3503539 m!3939919))

(declare-fun m!3939927 () Bool)

(assert (=> b!3503539 m!3939927))

(assert (=> b!3503158 d!1017962))

(declare-fun d!1017964 () Bool)

(declare-fun lt!1194524 () Int)

(assert (=> d!1017964 (>= lt!1194524 0)))

(declare-fun e!2169174 () Int)

(assert (=> d!1017964 (= lt!1194524 e!2169174)))

(declare-fun c!602640 () Bool)

(assert (=> d!1017964 (= c!602640 (is-Nil!37291 lt!1194330))))

(assert (=> d!1017964 (= (size!28350 lt!1194330) lt!1194524)))

(declare-fun b!3503544 () Bool)

(assert (=> b!3503544 (= e!2169174 0)))

(declare-fun b!3503545 () Bool)

(assert (=> b!3503545 (= e!2169174 (+ 1 (size!28350 (t!279114 lt!1194330))))))

(assert (= (and d!1017964 c!602640) b!3503544))

(assert (= (and d!1017964 (not c!602640)) b!3503545))

(declare-fun m!3939929 () Bool)

(assert (=> b!3503545 m!3939929))

(assert (=> b!3503158 d!1017964))

(declare-fun d!1017966 () Bool)

(declare-fun lt!1194527 () Int)

(declare-fun size!28355 (List!37417) Int)

(assert (=> d!1017966 (= lt!1194527 (size!28355 (list!13624 (_1!21680 lt!1194336))))))

(declare-fun size!28356 (Conc!11306) Int)

(assert (=> d!1017966 (= lt!1194527 (size!28356 (c!602587 (_1!21680 lt!1194336))))))

(assert (=> d!1017966 (= (size!28349 (_1!21680 lt!1194336)) lt!1194527)))

(declare-fun bs!563847 () Bool)

(assert (= bs!563847 d!1017966))

(assert (=> bs!563847 m!3939849))

(assert (=> bs!563847 m!3939849))

(declare-fun m!3939931 () Bool)

(assert (=> bs!563847 m!3939931))

(declare-fun m!3939933 () Bool)

(assert (=> bs!563847 m!3939933))

(assert (=> b!3503158 d!1017966))

(declare-fun d!1017968 () Bool)

(assert (=> d!1017968 (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 (t!279116 tokens!494)))))

(declare-fun lt!1194550 () Unit!52855)

(declare-fun choose!20317 (LexerInterface!5054 List!37416 List!37417 Token!10296) Unit!52855)

(assert (=> d!1017968 (= lt!1194550 (choose!20317 thiss!18206 rules!2135 tokens!494 (h!42713 (t!279116 tokens!494))))))

(assert (=> d!1017968 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1017968 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1043 thiss!18206 rules!2135 tokens!494 (h!42713 (t!279116 tokens!494))) lt!1194550)))

(declare-fun bs!563851 () Bool)

(assert (= bs!563851 d!1017968))

(assert (=> bs!563851 m!3939395))

(declare-fun m!3940065 () Bool)

(assert (=> bs!563851 m!3940065))

(assert (=> bs!563851 m!3939307))

(assert (=> b!3503158 d!1017968))

(declare-fun d!1018006 () Bool)

(declare-fun e!2169221 () Bool)

(assert (=> d!1018006 e!2169221))

(declare-fun res!1413154 () Bool)

(assert (=> d!1018006 (=> (not res!1413154) (not e!2169221))))

(declare-fun lt!1194553 () BalanceConc!22226)

(assert (=> d!1018006 (= res!1413154 (= (list!13624 lt!1194553) (Cons!37293 separatorToken!241 Nil!37293)))))

(declare-fun singleton!1141 (Token!10296) BalanceConc!22226)

(assert (=> d!1018006 (= lt!1194553 (singleton!1141 separatorToken!241))))

(assert (=> d!1018006 (= (singletonSeq!2561 separatorToken!241) lt!1194553)))

(declare-fun b!3503619 () Bool)

(declare-fun isBalanced!3444 (Conc!11306) Bool)

(assert (=> b!3503619 (= e!2169221 (isBalanced!3444 (c!602587 lt!1194553)))))

(assert (= (and d!1018006 res!1413154) b!3503619))

(declare-fun m!3940067 () Bool)

(assert (=> d!1018006 m!3940067))

(declare-fun m!3940069 () Bool)

(assert (=> d!1018006 m!3940069))

(declare-fun m!3940071 () Bool)

(assert (=> b!3503619 m!3940071))

(assert (=> b!3503158 d!1018006))

(declare-fun b!3503632 () Bool)

(declare-fun lt!1194560 () Unit!52855)

(declare-fun lt!1194562 () Unit!52855)

(assert (=> b!3503632 (= lt!1194560 lt!1194562)))

(assert (=> b!3503632 (rulesInvariant!4451 thiss!18206 (t!279115 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!453 (LexerInterface!5054 Rule!10730 List!37416) Unit!52855)

(assert (=> b!3503632 (= lt!1194562 (lemmaInvariantOnRulesThenOnTail!453 thiss!18206 (h!42712 rules!2135) (t!279115 rules!2135)))))

(declare-fun e!2169231 () Option!7587)

(assert (=> b!3503632 (= e!2169231 (getRuleFromTag!1108 thiss!18206 (t!279115 rules!2135) (tag!6095 (rule!8091 separatorToken!241))))))

(declare-fun d!1018008 () Bool)

(declare-fun e!2169230 () Bool)

(assert (=> d!1018008 e!2169230))

(declare-fun res!1413159 () Bool)

(assert (=> d!1018008 (=> res!1413159 e!2169230)))

(declare-fun lt!1194561 () Option!7587)

(declare-fun isEmpty!21732 (Option!7587) Bool)

(assert (=> d!1018008 (= res!1413159 (isEmpty!21732 lt!1194561))))

(declare-fun e!2169232 () Option!7587)

(assert (=> d!1018008 (= lt!1194561 e!2169232)))

(declare-fun c!602657 () Bool)

(assert (=> d!1018008 (= c!602657 (and (is-Cons!37292 rules!2135) (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 separatorToken!241)))))))

(assert (=> d!1018008 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018008 (= (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 separatorToken!241))) lt!1194561)))

(declare-fun b!3503633 () Bool)

(assert (=> b!3503633 (= e!2169231 None!7586)))

(declare-fun b!3503634 () Bool)

(assert (=> b!3503634 (= e!2169232 e!2169231)))

(declare-fun c!602658 () Bool)

(assert (=> b!3503634 (= c!602658 (and (is-Cons!37292 rules!2135) (not (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 separatorToken!241))))))))

(declare-fun b!3503635 () Bool)

(declare-fun e!2169233 () Bool)

(assert (=> b!3503635 (= e!2169230 e!2169233)))

(declare-fun res!1413160 () Bool)

(assert (=> b!3503635 (=> (not res!1413160) (not e!2169233))))

(assert (=> b!3503635 (= res!1413160 (contains!6971 rules!2135 (get!11963 lt!1194561)))))

(declare-fun b!3503636 () Bool)

(assert (=> b!3503636 (= e!2169232 (Some!7586 (h!42712 rules!2135)))))

(declare-fun b!3503637 () Bool)

(assert (=> b!3503637 (= e!2169233 (= (tag!6095 (get!11963 lt!1194561)) (tag!6095 (rule!8091 separatorToken!241))))))

(assert (= (and d!1018008 c!602657) b!3503636))

(assert (= (and d!1018008 (not c!602657)) b!3503634))

(assert (= (and b!3503634 c!602658) b!3503632))

(assert (= (and b!3503634 (not c!602658)) b!3503633))

(assert (= (and d!1018008 (not res!1413159)) b!3503635))

(assert (= (and b!3503635 res!1413160) b!3503637))

(declare-fun m!3940073 () Bool)

(assert (=> b!3503632 m!3940073))

(declare-fun m!3940075 () Bool)

(assert (=> b!3503632 m!3940075))

(declare-fun m!3940077 () Bool)

(assert (=> b!3503632 m!3940077))

(declare-fun m!3940079 () Bool)

(assert (=> d!1018008 m!3940079))

(assert (=> d!1018008 m!3939297))

(declare-fun m!3940081 () Bool)

(assert (=> b!3503635 m!3940081))

(assert (=> b!3503635 m!3940081))

(declare-fun m!3940083 () Bool)

(assert (=> b!3503635 m!3940083))

(assert (=> b!3503637 m!3940081))

(assert (=> b!3503158 d!1018008))

(declare-fun d!1018010 () Bool)

(declare-fun dynLambda!15841 (Int BalanceConc!22224) TokenValue!5695)

(assert (=> d!1018010 (= (apply!8854 (transformation!5465 (rule!8091 (h!42713 tokens!494))) lt!1194327) (dynLambda!15841 (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) lt!1194327))))

(declare-fun b_lambda!101821 () Bool)

(assert (=> (not b_lambda!101821) (not d!1018010)))

(declare-fun tb!194287 () Bool)

(declare-fun t!279156 () Bool)

(assert (=> (and b!3503178 (= (toValue!7709 (transformation!5465 (h!42712 rules!2135))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279156) tb!194287))

(declare-fun result!238536 () Bool)

(assert (=> tb!194287 (= result!238536 (inv!21 (dynLambda!15841 (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) lt!1194327)))))

(declare-fun m!3940085 () Bool)

(assert (=> tb!194287 m!3940085))

(assert (=> d!1018010 t!279156))

(declare-fun b_and!248605 () Bool)

(assert (= b_and!248551 (and (=> t!279156 result!238536) b_and!248605)))

(declare-fun tb!194289 () Bool)

(declare-fun t!279158 () Bool)

(assert (=> (and b!3503145 (= (toValue!7709 (transformation!5465 (rule!8091 separatorToken!241))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279158) tb!194289))

(declare-fun result!238540 () Bool)

(assert (= result!238540 result!238536))

(assert (=> d!1018010 t!279158))

(declare-fun b_and!248607 () Bool)

(assert (= b_and!248555 (and (=> t!279158 result!238540) b_and!248607)))

(declare-fun t!279160 () Bool)

(declare-fun tb!194291 () Bool)

(assert (=> (and b!3503174 (= (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279160) tb!194291))

(declare-fun result!238542 () Bool)

(assert (= result!238542 result!238536))

(assert (=> d!1018010 t!279160))

(declare-fun b_and!248609 () Bool)

(assert (= b_and!248559 (and (=> t!279160 result!238542) b_and!248609)))

(declare-fun m!3940087 () Bool)

(assert (=> d!1018010 m!3940087))

(assert (=> b!3503158 d!1018010))

(declare-fun b!3503683 () Bool)

(declare-fun res!1413186 () Bool)

(declare-fun e!2169261 () Bool)

(assert (=> b!3503683 (=> (not res!1413186) (not e!2169261))))

(declare-fun lt!1194576 () Option!7588)

(declare-fun get!11965 (Option!7588) tuple2!37094)

(assert (=> b!3503683 (= res!1413186 (= (rule!8091 (_1!21681 (get!11965 lt!1194576))) (rule!8091 (h!42713 tokens!494))))))

(declare-fun b!3503684 () Bool)

(declare-fun e!2169262 () Bool)

(assert (=> b!3503684 (= e!2169262 e!2169261)))

(declare-fun res!1413187 () Bool)

(assert (=> b!3503684 (=> (not res!1413187) (not e!2169261))))

(assert (=> b!3503684 (= res!1413187 (matchR!4808 (regex!5465 (rule!8091 (h!42713 tokens!494))) (list!13622 (charsOf!3479 (_1!21681 (get!11965 lt!1194576))))))))

(declare-fun b!3503685 () Bool)

(declare-fun e!2169263 () Option!7588)

(assert (=> b!3503685 (= e!2169263 None!7587)))

(declare-fun b!3503686 () Bool)

(assert (=> b!3503686 (= e!2169261 (= (size!28348 (_1!21681 (get!11965 lt!1194576))) (size!28350 (originalCharacters!6179 (_1!21681 (get!11965 lt!1194576))))))))

(declare-fun b!3503687 () Bool)

(declare-fun res!1413190 () Bool)

(assert (=> b!3503687 (=> (not res!1413190) (not e!2169261))))

(assert (=> b!3503687 (= res!1413190 (= (++!9226 (list!13622 (charsOf!3479 (_1!21681 (get!11965 lt!1194576)))) (_2!21681 (get!11965 lt!1194576))) lt!1194330))))

(declare-fun d!1018012 () Bool)

(assert (=> d!1018012 e!2169262))

(declare-fun res!1413191 () Bool)

(assert (=> d!1018012 (=> res!1413191 e!2169262)))

(declare-fun isEmpty!21733 (Option!7588) Bool)

(assert (=> d!1018012 (= res!1413191 (isEmpty!21733 lt!1194576))))

(assert (=> d!1018012 (= lt!1194576 e!2169263)))

(declare-fun c!602668 () Bool)

(declare-datatypes ((tuple2!37102 0))(
  ( (tuple2!37103 (_1!21685 List!37415) (_2!21685 List!37415)) )
))
(declare-fun lt!1194578 () tuple2!37102)

(assert (=> d!1018012 (= c!602668 (isEmpty!21730 (_1!21685 lt!1194578)))))

(declare-fun findLongestMatch!845 (Regex!10224 List!37415) tuple2!37102)

(assert (=> d!1018012 (= lt!1194578 (findLongestMatch!845 (regex!5465 (rule!8091 (h!42713 tokens!494))) lt!1194330))))

(declare-fun ruleValid!1761 (LexerInterface!5054 Rule!10730) Bool)

(assert (=> d!1018012 (ruleValid!1761 thiss!18206 (rule!8091 (h!42713 tokens!494)))))

(assert (=> d!1018012 (= (maxPrefixOneRule!1761 thiss!18206 (rule!8091 (h!42713 tokens!494)) lt!1194330) lt!1194576)))

(declare-fun b!3503688 () Bool)

(declare-fun e!2169260 () Bool)

(declare-fun findLongestMatchInner!930 (Regex!10224 List!37415 Int List!37415 List!37415 Int) tuple2!37102)

(assert (=> b!3503688 (= e!2169260 (matchR!4808 (regex!5465 (rule!8091 (h!42713 tokens!494))) (_1!21685 (findLongestMatchInner!930 (regex!5465 (rule!8091 (h!42713 tokens!494))) Nil!37291 (size!28350 Nil!37291) lt!1194330 lt!1194330 (size!28350 lt!1194330)))))))

(declare-fun b!3503689 () Bool)

(declare-fun res!1413188 () Bool)

(assert (=> b!3503689 (=> (not res!1413188) (not e!2169261))))

(assert (=> b!3503689 (= res!1413188 (< (size!28350 (_2!21681 (get!11965 lt!1194576))) (size!28350 lt!1194330)))))

(declare-fun b!3503690 () Bool)

(assert (=> b!3503690 (= e!2169263 (Some!7587 (tuple2!37095 (Token!10297 (apply!8854 (transformation!5465 (rule!8091 (h!42713 tokens!494))) (seqFromList!3983 (_1!21685 lt!1194578))) (rule!8091 (h!42713 tokens!494)) (size!28354 (seqFromList!3983 (_1!21685 lt!1194578))) (_1!21685 lt!1194578)) (_2!21685 lt!1194578))))))

(declare-fun lt!1194580 () Unit!52855)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!903 (Regex!10224 List!37415) Unit!52855)

(assert (=> b!3503690 (= lt!1194580 (longestMatchIsAcceptedByMatchOrIsEmpty!903 (regex!5465 (rule!8091 (h!42713 tokens!494))) lt!1194330))))

(declare-fun res!1413189 () Bool)

(assert (=> b!3503690 (= res!1413189 (isEmpty!21730 (_1!21685 (findLongestMatchInner!930 (regex!5465 (rule!8091 (h!42713 tokens!494))) Nil!37291 (size!28350 Nil!37291) lt!1194330 lt!1194330 (size!28350 lt!1194330)))))))

(assert (=> b!3503690 (=> res!1413189 e!2169260)))

(assert (=> b!3503690 e!2169260))

(declare-fun lt!1194577 () Unit!52855)

(assert (=> b!3503690 (= lt!1194577 lt!1194580)))

(declare-fun lt!1194579 () Unit!52855)

(declare-fun lemmaSemiInverse!1280 (TokenValueInjection!10818 BalanceConc!22224) Unit!52855)

(assert (=> b!3503690 (= lt!1194579 (lemmaSemiInverse!1280 (transformation!5465 (rule!8091 (h!42713 tokens!494))) (seqFromList!3983 (_1!21685 lt!1194578))))))

(declare-fun b!3503691 () Bool)

(declare-fun res!1413192 () Bool)

(assert (=> b!3503691 (=> (not res!1413192) (not e!2169261))))

(assert (=> b!3503691 (= res!1413192 (= (value!176214 (_1!21681 (get!11965 lt!1194576))) (apply!8854 (transformation!5465 (rule!8091 (_1!21681 (get!11965 lt!1194576)))) (seqFromList!3983 (originalCharacters!6179 (_1!21681 (get!11965 lt!1194576)))))))))

(assert (= (and d!1018012 c!602668) b!3503685))

(assert (= (and d!1018012 (not c!602668)) b!3503690))

(assert (= (and b!3503690 (not res!1413189)) b!3503688))

(assert (= (and d!1018012 (not res!1413191)) b!3503684))

(assert (= (and b!3503684 res!1413187) b!3503687))

(assert (= (and b!3503687 res!1413190) b!3503689))

(assert (= (and b!3503689 res!1413188) b!3503683))

(assert (= (and b!3503683 res!1413186) b!3503691))

(assert (= (and b!3503691 res!1413192) b!3503686))

(declare-fun m!3940115 () Bool)

(assert (=> b!3503691 m!3940115))

(declare-fun m!3940117 () Bool)

(assert (=> b!3503691 m!3940117))

(assert (=> b!3503691 m!3940117))

(declare-fun m!3940119 () Bool)

(assert (=> b!3503691 m!3940119))

(assert (=> b!3503686 m!3940115))

(declare-fun m!3940121 () Bool)

(assert (=> b!3503686 m!3940121))

(declare-fun m!3940123 () Bool)

(assert (=> b!3503690 m!3940123))

(declare-fun m!3940125 () Bool)

(assert (=> b!3503690 m!3940125))

(declare-fun m!3940127 () Bool)

(assert (=> b!3503690 m!3940127))

(declare-fun m!3940129 () Bool)

(assert (=> b!3503690 m!3940129))

(assert (=> b!3503690 m!3939393))

(declare-fun m!3940131 () Bool)

(assert (=> b!3503690 m!3940131))

(assert (=> b!3503690 m!3939393))

(assert (=> b!3503690 m!3940125))

(declare-fun m!3940133 () Bool)

(assert (=> b!3503690 m!3940133))

(assert (=> b!3503690 m!3940125))

(declare-fun m!3940135 () Bool)

(assert (=> b!3503690 m!3940135))

(assert (=> b!3503690 m!3940125))

(assert (=> b!3503690 m!3940129))

(declare-fun m!3940137 () Bool)

(assert (=> b!3503690 m!3940137))

(assert (=> b!3503683 m!3940115))

(declare-fun m!3940139 () Bool)

(assert (=> d!1018012 m!3940139))

(declare-fun m!3940141 () Bool)

(assert (=> d!1018012 m!3940141))

(declare-fun m!3940143 () Bool)

(assert (=> d!1018012 m!3940143))

(declare-fun m!3940145 () Bool)

(assert (=> d!1018012 m!3940145))

(assert (=> b!3503687 m!3940115))

(declare-fun m!3940147 () Bool)

(assert (=> b!3503687 m!3940147))

(assert (=> b!3503687 m!3940147))

(declare-fun m!3940149 () Bool)

(assert (=> b!3503687 m!3940149))

(assert (=> b!3503687 m!3940149))

(declare-fun m!3940151 () Bool)

(assert (=> b!3503687 m!3940151))

(assert (=> b!3503689 m!3940115))

(declare-fun m!3940153 () Bool)

(assert (=> b!3503689 m!3940153))

(assert (=> b!3503689 m!3939393))

(assert (=> b!3503688 m!3940129))

(assert (=> b!3503688 m!3939393))

(assert (=> b!3503688 m!3940129))

(assert (=> b!3503688 m!3939393))

(assert (=> b!3503688 m!3940131))

(declare-fun m!3940155 () Bool)

(assert (=> b!3503688 m!3940155))

(assert (=> b!3503684 m!3940115))

(assert (=> b!3503684 m!3940147))

(assert (=> b!3503684 m!3940147))

(assert (=> b!3503684 m!3940149))

(assert (=> b!3503684 m!3940149))

(declare-fun m!3940157 () Bool)

(assert (=> b!3503684 m!3940157))

(assert (=> b!3503158 d!1018012))

(declare-fun d!1018020 () Bool)

(assert (=> d!1018020 (= (isDefined!5849 lt!1194342) (not (isEmpty!21732 lt!1194342)))))

(declare-fun bs!563853 () Bool)

(assert (= bs!563853 d!1018020))

(declare-fun m!3940159 () Bool)

(assert (=> bs!563853 m!3940159))

(assert (=> b!3503158 d!1018020))

(declare-fun d!1018022 () Bool)

(declare-fun e!2169286 () Bool)

(assert (=> d!1018022 e!2169286))

(declare-fun res!1413216 () Bool)

(assert (=> d!1018022 (=> (not res!1413216) (not e!2169286))))

(assert (=> d!1018022 (= res!1413216 (isDefined!5849 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494)))))))))

(declare-fun lt!1194593 () Unit!52855)

(declare-fun choose!20318 (LexerInterface!5054 List!37416 List!37415 Token!10296) Unit!52855)

(assert (=> d!1018022 (= lt!1194593 (choose!20318 thiss!18206 rules!2135 lt!1194346 (h!42713 (t!279116 tokens!494))))))

(assert (=> d!1018022 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018022 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194346 (h!42713 (t!279116 tokens!494))) lt!1194593)))

(declare-fun b!3503730 () Bool)

(declare-fun res!1413217 () Bool)

(assert (=> b!3503730 (=> (not res!1413217) (not e!2169286))))

(assert (=> b!3503730 (= res!1413217 (matchR!4808 (regex!5465 (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))) (list!13622 (charsOf!3479 (h!42713 (t!279116 tokens!494))))))))

(declare-fun b!3503731 () Bool)

(assert (=> b!3503731 (= e!2169286 (= (rule!8091 (h!42713 (t!279116 tokens!494))) (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))))))

(assert (= (and d!1018022 res!1413216) b!3503730))

(assert (= (and b!3503730 res!1413217) b!3503731))

(assert (=> d!1018022 m!3939409))

(assert (=> d!1018022 m!3939409))

(declare-fun m!3940223 () Bool)

(assert (=> d!1018022 m!3940223))

(declare-fun m!3940225 () Bool)

(assert (=> d!1018022 m!3940225))

(assert (=> d!1018022 m!3939297))

(assert (=> b!3503730 m!3939409))

(declare-fun m!3940227 () Bool)

(assert (=> b!3503730 m!3940227))

(assert (=> b!3503730 m!3939409))

(assert (=> b!3503730 m!3939443))

(assert (=> b!3503730 m!3939443))

(assert (=> b!3503730 m!3939455))

(assert (=> b!3503730 m!3939455))

(declare-fun m!3940229 () Bool)

(assert (=> b!3503730 m!3940229))

(assert (=> b!3503731 m!3939409))

(assert (=> b!3503731 m!3939409))

(assert (=> b!3503731 m!3940227))

(assert (=> b!3503158 d!1018022))

(declare-fun d!1018040 () Bool)

(assert (=> d!1018040 (= (head!7366 lt!1194333) (h!42711 lt!1194333))))

(assert (=> b!3503158 d!1018040))

(declare-fun bm!252925 () Bool)

(declare-fun call!252933 () List!37415)

(declare-fun c!602688 () Bool)

(assert (=> bm!252925 (= call!252933 (usedCharacters!699 (ite c!602688 (regTwo!20961 (regex!5465 (rule!8091 separatorToken!241))) (regOne!20960 (regex!5465 (rule!8091 separatorToken!241))))))))

(declare-fun b!3503765 () Bool)

(declare-fun c!602690 () Bool)

(assert (=> b!3503765 (= c!602690 (is-Star!10224 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun e!2169305 () List!37415)

(declare-fun e!2169306 () List!37415)

(assert (=> b!3503765 (= e!2169305 e!2169306)))

(declare-fun b!3503766 () Bool)

(declare-fun e!2169307 () List!37415)

(assert (=> b!3503766 (= e!2169307 Nil!37291)))

(declare-fun b!3503767 () Bool)

(assert (=> b!3503767 (= e!2169307 e!2169305)))

(declare-fun c!602689 () Bool)

(assert (=> b!3503767 (= c!602689 (is-ElementMatch!10224 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun call!252930 () List!37415)

(declare-fun bm!252926 () Bool)

(declare-fun call!252932 () List!37415)

(assert (=> bm!252926 (= call!252932 (++!9226 (ite c!602688 call!252930 call!252933) (ite c!602688 call!252933 call!252930)))))

(declare-fun b!3503768 () Bool)

(declare-fun e!2169308 () List!37415)

(assert (=> b!3503768 (= e!2169306 e!2169308)))

(assert (=> b!3503768 (= c!602688 (is-Union!10224 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun b!3503769 () Bool)

(assert (=> b!3503769 (= e!2169308 call!252932)))

(declare-fun bm!252927 () Bool)

(declare-fun call!252931 () List!37415)

(assert (=> bm!252927 (= call!252930 call!252931)))

(declare-fun d!1018042 () Bool)

(declare-fun c!602687 () Bool)

(assert (=> d!1018042 (= c!602687 (or (is-EmptyExpr!10224 (regex!5465 (rule!8091 separatorToken!241))) (is-EmptyLang!10224 (regex!5465 (rule!8091 separatorToken!241)))))))

(assert (=> d!1018042 (= (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241))) e!2169307)))

(declare-fun b!3503770 () Bool)

(assert (=> b!3503770 (= e!2169306 call!252931)))

(declare-fun b!3503771 () Bool)

(assert (=> b!3503771 (= e!2169305 (Cons!37291 (c!602585 (regex!5465 (rule!8091 separatorToken!241))) Nil!37291))))

(declare-fun b!3503772 () Bool)

(assert (=> b!3503772 (= e!2169308 call!252932)))

(declare-fun bm!252928 () Bool)

(assert (=> bm!252928 (= call!252931 (usedCharacters!699 (ite c!602690 (reg!10553 (regex!5465 (rule!8091 separatorToken!241))) (ite c!602688 (regOne!20961 (regex!5465 (rule!8091 separatorToken!241))) (regTwo!20960 (regex!5465 (rule!8091 separatorToken!241)))))))))

(assert (= (and d!1018042 c!602687) b!3503766))

(assert (= (and d!1018042 (not c!602687)) b!3503767))

(assert (= (and b!3503767 c!602689) b!3503771))

(assert (= (and b!3503767 (not c!602689)) b!3503765))

(assert (= (and b!3503765 c!602690) b!3503770))

(assert (= (and b!3503765 (not c!602690)) b!3503768))

(assert (= (and b!3503768 c!602688) b!3503769))

(assert (= (and b!3503768 (not c!602688)) b!3503772))

(assert (= (or b!3503769 b!3503772) bm!252925))

(assert (= (or b!3503769 b!3503772) bm!252927))

(assert (= (or b!3503769 b!3503772) bm!252926))

(assert (= (or b!3503770 bm!252927) bm!252928))

(declare-fun m!3940251 () Bool)

(assert (=> bm!252925 m!3940251))

(declare-fun m!3940253 () Bool)

(assert (=> bm!252926 m!3940253))

(declare-fun m!3940255 () Bool)

(assert (=> bm!252928 m!3940255))

(assert (=> b!3503158 d!1018042))

(declare-fun d!1018050 () Bool)

(declare-fun lt!1194603 () Bool)

(assert (=> d!1018050 (= lt!1194603 (set.member lt!1194335 (content!5242 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494)))))))))

(declare-fun e!2169313 () Bool)

(assert (=> d!1018050 (= lt!1194603 e!2169313)))

(declare-fun res!1413234 () Bool)

(assert (=> d!1018050 (=> (not res!1413234) (not e!2169313))))

(assert (=> d!1018050 (= res!1413234 (is-Cons!37291 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494))))))))

(assert (=> d!1018050 (= (contains!6972 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494)))) lt!1194335) lt!1194603)))

(declare-fun b!3503777 () Bool)

(declare-fun e!2169314 () Bool)

(assert (=> b!3503777 (= e!2169313 e!2169314)))

(declare-fun res!1413233 () Bool)

(assert (=> b!3503777 (=> res!1413233 e!2169314)))

(assert (=> b!3503777 (= res!1413233 (= (h!42711 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494))))) lt!1194335))))

(declare-fun b!3503778 () Bool)

(assert (=> b!3503778 (= e!2169314 (contains!6972 (t!279114 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494))))) lt!1194335))))

(assert (= (and d!1018050 res!1413234) b!3503777))

(assert (= (and b!3503777 (not res!1413233)) b!3503778))

(assert (=> d!1018050 m!3939365))

(declare-fun m!3940261 () Bool)

(assert (=> d!1018050 m!3940261))

(declare-fun m!3940263 () Bool)

(assert (=> d!1018050 m!3940263))

(declare-fun m!3940265 () Bool)

(assert (=> b!3503778 m!3940265))

(assert (=> b!3503158 d!1018050))

(declare-fun d!1018056 () Bool)

(declare-fun lt!1194604 () Int)

(assert (=> d!1018056 (= lt!1194604 (size!28355 (list!13624 (_1!21680 lt!1194341))))))

(assert (=> d!1018056 (= lt!1194604 (size!28356 (c!602587 (_1!21680 lt!1194341))))))

(assert (=> d!1018056 (= (size!28349 (_1!21680 lt!1194341)) lt!1194604)))

(declare-fun bs!563857 () Bool)

(assert (= bs!563857 d!1018056))

(declare-fun m!3940267 () Bool)

(assert (=> bs!563857 m!3940267))

(assert (=> bs!563857 m!3940267))

(declare-fun m!3940269 () Bool)

(assert (=> bs!563857 m!3940269))

(declare-fun m!3940271 () Bool)

(assert (=> bs!563857 m!3940271))

(assert (=> b!3503158 d!1018056))

(declare-fun b!3503797 () Bool)

(declare-fun res!1413255 () Bool)

(declare-fun e!2169321 () Bool)

(assert (=> b!3503797 (=> (not res!1413255) (not e!2169321))))

(declare-fun lt!1194617 () Option!7588)

(assert (=> b!3503797 (= res!1413255 (= (list!13622 (charsOf!3479 (_1!21681 (get!11965 lt!1194617)))) (originalCharacters!6179 (_1!21681 (get!11965 lt!1194617)))))))

(declare-fun b!3503798 () Bool)

(declare-fun res!1413253 () Bool)

(assert (=> b!3503798 (=> (not res!1413253) (not e!2169321))))

(assert (=> b!3503798 (= res!1413253 (= (value!176214 (_1!21681 (get!11965 lt!1194617))) (apply!8854 (transformation!5465 (rule!8091 (_1!21681 (get!11965 lt!1194617)))) (seqFromList!3983 (originalCharacters!6179 (_1!21681 (get!11965 lt!1194617)))))))))

(declare-fun b!3503799 () Bool)

(declare-fun e!2169322 () Option!7588)

(declare-fun call!252936 () Option!7588)

(assert (=> b!3503799 (= e!2169322 call!252936)))

(declare-fun b!3503800 () Bool)

(declare-fun res!1413249 () Bool)

(assert (=> b!3503800 (=> (not res!1413249) (not e!2169321))))

(assert (=> b!3503800 (= res!1413249 (< (size!28350 (_2!21681 (get!11965 lt!1194617))) (size!28350 lt!1194343)))))

(declare-fun d!1018058 () Bool)

(declare-fun e!2169323 () Bool)

(assert (=> d!1018058 e!2169323))

(declare-fun res!1413252 () Bool)

(assert (=> d!1018058 (=> res!1413252 e!2169323)))

(assert (=> d!1018058 (= res!1413252 (isEmpty!21733 lt!1194617))))

(assert (=> d!1018058 (= lt!1194617 e!2169322)))

(declare-fun c!602694 () Bool)

(assert (=> d!1018058 (= c!602694 (and (is-Cons!37292 rules!2135) (is-Nil!37292 (t!279115 rules!2135))))))

(declare-fun lt!1194619 () Unit!52855)

(declare-fun lt!1194618 () Unit!52855)

(assert (=> d!1018058 (= lt!1194619 lt!1194618)))

(declare-fun isPrefix!2865 (List!37415 List!37415) Bool)

(assert (=> d!1018058 (isPrefix!2865 lt!1194343 lt!1194343)))

(declare-fun lemmaIsPrefixRefl!1824 (List!37415 List!37415) Unit!52855)

(assert (=> d!1018058 (= lt!1194618 (lemmaIsPrefixRefl!1824 lt!1194343 lt!1194343))))

(declare-fun rulesValidInductive!1874 (LexerInterface!5054 List!37416) Bool)

(assert (=> d!1018058 (rulesValidInductive!1874 thiss!18206 rules!2135)))

(assert (=> d!1018058 (= (maxPrefix!2594 thiss!18206 rules!2135 lt!1194343) lt!1194617)))

(declare-fun bm!252931 () Bool)

(assert (=> bm!252931 (= call!252936 (maxPrefixOneRule!1761 thiss!18206 (h!42712 rules!2135) lt!1194343))))

(declare-fun b!3503801 () Bool)

(declare-fun res!1413250 () Bool)

(assert (=> b!3503801 (=> (not res!1413250) (not e!2169321))))

(assert (=> b!3503801 (= res!1413250 (matchR!4808 (regex!5465 (rule!8091 (_1!21681 (get!11965 lt!1194617)))) (list!13622 (charsOf!3479 (_1!21681 (get!11965 lt!1194617))))))))

(declare-fun b!3503802 () Bool)

(declare-fun res!1413251 () Bool)

(assert (=> b!3503802 (=> (not res!1413251) (not e!2169321))))

(assert (=> b!3503802 (= res!1413251 (= (++!9226 (list!13622 (charsOf!3479 (_1!21681 (get!11965 lt!1194617)))) (_2!21681 (get!11965 lt!1194617))) lt!1194343))))

(declare-fun b!3503803 () Bool)

(declare-fun lt!1194616 () Option!7588)

(declare-fun lt!1194615 () Option!7588)

(assert (=> b!3503803 (= e!2169322 (ite (and (is-None!7587 lt!1194616) (is-None!7587 lt!1194615)) None!7587 (ite (is-None!7587 lt!1194615) lt!1194616 (ite (is-None!7587 lt!1194616) lt!1194615 (ite (>= (size!28348 (_1!21681 (v!37031 lt!1194616))) (size!28348 (_1!21681 (v!37031 lt!1194615)))) lt!1194616 lt!1194615)))))))

(assert (=> b!3503803 (= lt!1194616 call!252936)))

(assert (=> b!3503803 (= lt!1194615 (maxPrefix!2594 thiss!18206 (t!279115 rules!2135) lt!1194343))))

(declare-fun b!3503804 () Bool)

(assert (=> b!3503804 (= e!2169321 (contains!6971 rules!2135 (rule!8091 (_1!21681 (get!11965 lt!1194617)))))))

(declare-fun b!3503805 () Bool)

(assert (=> b!3503805 (= e!2169323 e!2169321)))

(declare-fun res!1413254 () Bool)

(assert (=> b!3503805 (=> (not res!1413254) (not e!2169321))))

(declare-fun isDefined!5851 (Option!7588) Bool)

(assert (=> b!3503805 (= res!1413254 (isDefined!5851 lt!1194617))))

(assert (= (and d!1018058 c!602694) b!3503799))

(assert (= (and d!1018058 (not c!602694)) b!3503803))

(assert (= (or b!3503799 b!3503803) bm!252931))

(assert (= (and d!1018058 (not res!1413252)) b!3503805))

(assert (= (and b!3503805 res!1413254) b!3503797))

(assert (= (and b!3503797 res!1413255) b!3503800))

(assert (= (and b!3503800 res!1413249) b!3503802))

(assert (= (and b!3503802 res!1413251) b!3503798))

(assert (= (and b!3503798 res!1413253) b!3503801))

(assert (= (and b!3503801 res!1413250) b!3503804))

(declare-fun m!3940273 () Bool)

(assert (=> b!3503798 m!3940273))

(declare-fun m!3940275 () Bool)

(assert (=> b!3503798 m!3940275))

(assert (=> b!3503798 m!3940275))

(declare-fun m!3940277 () Bool)

(assert (=> b!3503798 m!3940277))

(assert (=> b!3503804 m!3940273))

(declare-fun m!3940279 () Bool)

(assert (=> b!3503804 m!3940279))

(declare-fun m!3940281 () Bool)

(assert (=> d!1018058 m!3940281))

(declare-fun m!3940283 () Bool)

(assert (=> d!1018058 m!3940283))

(declare-fun m!3940285 () Bool)

(assert (=> d!1018058 m!3940285))

(declare-fun m!3940287 () Bool)

(assert (=> d!1018058 m!3940287))

(declare-fun m!3940289 () Bool)

(assert (=> b!3503805 m!3940289))

(declare-fun m!3940291 () Bool)

(assert (=> bm!252931 m!3940291))

(assert (=> b!3503800 m!3940273))

(declare-fun m!3940293 () Bool)

(assert (=> b!3503800 m!3940293))

(declare-fun m!3940295 () Bool)

(assert (=> b!3503800 m!3940295))

(declare-fun m!3940297 () Bool)

(assert (=> b!3503803 m!3940297))

(assert (=> b!3503797 m!3940273))

(declare-fun m!3940299 () Bool)

(assert (=> b!3503797 m!3940299))

(assert (=> b!3503797 m!3940299))

(declare-fun m!3940301 () Bool)

(assert (=> b!3503797 m!3940301))

(assert (=> b!3503801 m!3940273))

(assert (=> b!3503801 m!3940299))

(assert (=> b!3503801 m!3940299))

(assert (=> b!3503801 m!3940301))

(assert (=> b!3503801 m!3940301))

(declare-fun m!3940303 () Bool)

(assert (=> b!3503801 m!3940303))

(assert (=> b!3503802 m!3940273))

(assert (=> b!3503802 m!3940299))

(assert (=> b!3503802 m!3940299))

(assert (=> b!3503802 m!3940301))

(assert (=> b!3503802 m!3940301))

(declare-fun m!3940305 () Bool)

(assert (=> b!3503802 m!3940305))

(assert (=> b!3503158 d!1018058))

(declare-fun d!1018060 () Bool)

(assert (=> d!1018060 (= (isDefined!5849 lt!1194347) (not (isEmpty!21732 lt!1194347)))))

(declare-fun bs!563858 () Bool)

(assert (= bs!563858 d!1018060))

(declare-fun m!3940307 () Bool)

(assert (=> bs!563858 m!3940307))

(assert (=> b!3503158 d!1018060))

(declare-fun d!1018062 () Bool)

(assert (=> d!1018062 (dynLambda!15840 lambda!122475 (h!42713 (t!279116 tokens!494)))))

(declare-fun lt!1194620 () Unit!52855)

(assert (=> d!1018062 (= lt!1194620 (choose!20315 tokens!494 lambda!122475 (h!42713 (t!279116 tokens!494))))))

(declare-fun e!2169324 () Bool)

(assert (=> d!1018062 e!2169324))

(declare-fun res!1413256 () Bool)

(assert (=> d!1018062 (=> (not res!1413256) (not e!2169324))))

(assert (=> d!1018062 (= res!1413256 (forall!7998 tokens!494 lambda!122475))))

(assert (=> d!1018062 (= (forallContained!1412 tokens!494 lambda!122475 (h!42713 (t!279116 tokens!494))) lt!1194620)))

(declare-fun b!3503806 () Bool)

(assert (=> b!3503806 (= e!2169324 (contains!6975 tokens!494 (h!42713 (t!279116 tokens!494))))))

(assert (= (and d!1018062 res!1413256) b!3503806))

(declare-fun b_lambda!101829 () Bool)

(assert (=> (not b_lambda!101829) (not d!1018062)))

(declare-fun m!3940309 () Bool)

(assert (=> d!1018062 m!3940309))

(declare-fun m!3940311 () Bool)

(assert (=> d!1018062 m!3940311))

(declare-fun m!3940313 () Bool)

(assert (=> d!1018062 m!3940313))

(assert (=> b!3503806 m!3939835))

(assert (=> b!3503158 d!1018062))

(declare-fun bm!252932 () Bool)

(declare-fun call!252940 () List!37415)

(declare-fun c!602696 () Bool)

(assert (=> bm!252932 (= call!252940 (usedCharacters!699 (ite c!602696 (regTwo!20961 (regex!5465 (rule!8091 (h!42713 tokens!494)))) (regOne!20960 (regex!5465 (rule!8091 (h!42713 tokens!494)))))))))

(declare-fun b!3503807 () Bool)

(declare-fun c!602698 () Bool)

(assert (=> b!3503807 (= c!602698 (is-Star!10224 (regex!5465 (rule!8091 (h!42713 tokens!494)))))))

(declare-fun e!2169325 () List!37415)

(declare-fun e!2169326 () List!37415)

(assert (=> b!3503807 (= e!2169325 e!2169326)))

(declare-fun b!3503808 () Bool)

(declare-fun e!2169327 () List!37415)

(assert (=> b!3503808 (= e!2169327 Nil!37291)))

(declare-fun b!3503809 () Bool)

(assert (=> b!3503809 (= e!2169327 e!2169325)))

(declare-fun c!602697 () Bool)

(assert (=> b!3503809 (= c!602697 (is-ElementMatch!10224 (regex!5465 (rule!8091 (h!42713 tokens!494)))))))

(declare-fun call!252939 () List!37415)

(declare-fun call!252937 () List!37415)

(declare-fun bm!252933 () Bool)

(assert (=> bm!252933 (= call!252939 (++!9226 (ite c!602696 call!252937 call!252940) (ite c!602696 call!252940 call!252937)))))

(declare-fun b!3503810 () Bool)

(declare-fun e!2169328 () List!37415)

(assert (=> b!3503810 (= e!2169326 e!2169328)))

(assert (=> b!3503810 (= c!602696 (is-Union!10224 (regex!5465 (rule!8091 (h!42713 tokens!494)))))))

(declare-fun b!3503811 () Bool)

(assert (=> b!3503811 (= e!2169328 call!252939)))

(declare-fun bm!252934 () Bool)

(declare-fun call!252938 () List!37415)

(assert (=> bm!252934 (= call!252937 call!252938)))

(declare-fun d!1018064 () Bool)

(declare-fun c!602695 () Bool)

(assert (=> d!1018064 (= c!602695 (or (is-EmptyExpr!10224 (regex!5465 (rule!8091 (h!42713 tokens!494)))) (is-EmptyLang!10224 (regex!5465 (rule!8091 (h!42713 tokens!494))))))))

(assert (=> d!1018064 (= (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494)))) e!2169327)))

(declare-fun b!3503812 () Bool)

(assert (=> b!3503812 (= e!2169326 call!252938)))

(declare-fun b!3503813 () Bool)

(assert (=> b!3503813 (= e!2169325 (Cons!37291 (c!602585 (regex!5465 (rule!8091 (h!42713 tokens!494)))) Nil!37291))))

(declare-fun b!3503814 () Bool)

(assert (=> b!3503814 (= e!2169328 call!252939)))

(declare-fun bm!252935 () Bool)

(assert (=> bm!252935 (= call!252938 (usedCharacters!699 (ite c!602698 (reg!10553 (regex!5465 (rule!8091 (h!42713 tokens!494)))) (ite c!602696 (regOne!20961 (regex!5465 (rule!8091 (h!42713 tokens!494)))) (regTwo!20960 (regex!5465 (rule!8091 (h!42713 tokens!494))))))))))

(assert (= (and d!1018064 c!602695) b!3503808))

(assert (= (and d!1018064 (not c!602695)) b!3503809))

(assert (= (and b!3503809 c!602697) b!3503813))

(assert (= (and b!3503809 (not c!602697)) b!3503807))

(assert (= (and b!3503807 c!602698) b!3503812))

(assert (= (and b!3503807 (not c!602698)) b!3503810))

(assert (= (and b!3503810 c!602696) b!3503811))

(assert (= (and b!3503810 (not c!602696)) b!3503814))

(assert (= (or b!3503811 b!3503814) bm!252932))

(assert (= (or b!3503811 b!3503814) bm!252934))

(assert (= (or b!3503811 b!3503814) bm!252933))

(assert (= (or b!3503812 bm!252934) bm!252935))

(declare-fun m!3940315 () Bool)

(assert (=> bm!252932 m!3940315))

(declare-fun m!3940317 () Bool)

(assert (=> bm!252933 m!3940317))

(declare-fun m!3940319 () Bool)

(assert (=> bm!252935 m!3940319))

(assert (=> b!3503158 d!1018064))

(declare-fun d!1018066 () Bool)

(assert (=> d!1018066 (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 tokens!494))))

(declare-fun lt!1194621 () Unit!52855)

(assert (=> d!1018066 (= lt!1194621 (choose!20317 thiss!18206 rules!2135 tokens!494 (h!42713 tokens!494)))))

(assert (=> d!1018066 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1018066 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1043 thiss!18206 rules!2135 tokens!494 (h!42713 tokens!494)) lt!1194621)))

(declare-fun bs!563859 () Bool)

(assert (= bs!563859 d!1018066))

(assert (=> bs!563859 m!3939345))

(declare-fun m!3940321 () Bool)

(assert (=> bs!563859 m!3940321))

(assert (=> bs!563859 m!3939307))

(assert (=> b!3503158 d!1018066))

(declare-fun lt!1194622 () tuple2!37092)

(declare-fun e!2169329 () Bool)

(declare-fun b!3503815 () Bool)

(assert (=> b!3503815 (= e!2169329 (= (list!13622 (_2!21680 lt!1194622)) (_2!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194338)))))))

(declare-fun d!1018068 () Bool)

(assert (=> d!1018068 e!2169329))

(declare-fun res!1413257 () Bool)

(assert (=> d!1018068 (=> (not res!1413257) (not e!2169329))))

(declare-fun e!2169331 () Bool)

(assert (=> d!1018068 (= res!1413257 e!2169331)))

(declare-fun c!602699 () Bool)

(assert (=> d!1018068 (= c!602699 (> (size!28349 (_1!21680 lt!1194622)) 0))))

(assert (=> d!1018068 (= lt!1194622 (lexTailRecV2!1077 thiss!18206 rules!2135 lt!1194338 (BalanceConc!22225 Empty!11305) lt!1194338 (BalanceConc!22227 Empty!11306)))))

(assert (=> d!1018068 (= (lex!2380 thiss!18206 rules!2135 lt!1194338) lt!1194622)))

(declare-fun b!3503816 () Bool)

(declare-fun e!2169330 () Bool)

(assert (=> b!3503816 (= e!2169331 e!2169330)))

(declare-fun res!1413258 () Bool)

(assert (=> b!3503816 (= res!1413258 (< (size!28354 (_2!21680 lt!1194622)) (size!28354 lt!1194338)))))

(assert (=> b!3503816 (=> (not res!1413258) (not e!2169330))))

(declare-fun b!3503817 () Bool)

(declare-fun res!1413259 () Bool)

(assert (=> b!3503817 (=> (not res!1413259) (not e!2169329))))

(assert (=> b!3503817 (= res!1413259 (= (list!13624 (_1!21680 lt!1194622)) (_1!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194338)))))))

(declare-fun b!3503818 () Bool)

(assert (=> b!3503818 (= e!2169331 (= (_2!21680 lt!1194622) lt!1194338))))

(declare-fun b!3503819 () Bool)

(assert (=> b!3503819 (= e!2169330 (not (isEmpty!21724 (_1!21680 lt!1194622))))))

(assert (= (and d!1018068 c!602699) b!3503816))

(assert (= (and d!1018068 (not c!602699)) b!3503818))

(assert (= (and b!3503816 res!1413258) b!3503819))

(assert (= (and d!1018068 res!1413257) b!3503817))

(assert (= (and b!3503817 res!1413259) b!3503815))

(declare-fun m!3940323 () Bool)

(assert (=> d!1018068 m!3940323))

(declare-fun m!3940325 () Bool)

(assert (=> d!1018068 m!3940325))

(declare-fun m!3940327 () Bool)

(assert (=> b!3503817 m!3940327))

(declare-fun m!3940329 () Bool)

(assert (=> b!3503817 m!3940329))

(assert (=> b!3503817 m!3940329))

(declare-fun m!3940331 () Bool)

(assert (=> b!3503817 m!3940331))

(declare-fun m!3940333 () Bool)

(assert (=> b!3503815 m!3940333))

(assert (=> b!3503815 m!3940329))

(assert (=> b!3503815 m!3940329))

(assert (=> b!3503815 m!3940331))

(declare-fun m!3940335 () Bool)

(assert (=> b!3503819 m!3940335))

(declare-fun m!3940337 () Bool)

(assert (=> b!3503816 m!3940337))

(declare-fun m!3940339 () Bool)

(assert (=> b!3503816 m!3940339))

(assert (=> b!3503158 d!1018068))

(declare-fun b!3503820 () Bool)

(declare-fun lt!1194623 () Unit!52855)

(declare-fun lt!1194625 () Unit!52855)

(assert (=> b!3503820 (= lt!1194623 lt!1194625)))

(assert (=> b!3503820 (rulesInvariant!4451 thiss!18206 (t!279115 rules!2135))))

(assert (=> b!3503820 (= lt!1194625 (lemmaInvariantOnRulesThenOnTail!453 thiss!18206 (h!42712 rules!2135) (t!279115 rules!2135)))))

(declare-fun e!2169333 () Option!7587)

(assert (=> b!3503820 (= e!2169333 (getRuleFromTag!1108 thiss!18206 (t!279115 rules!2135) (tag!6095 (rule!8091 (h!42713 tokens!494)))))))

(declare-fun d!1018070 () Bool)

(declare-fun e!2169332 () Bool)

(assert (=> d!1018070 e!2169332))

(declare-fun res!1413260 () Bool)

(assert (=> d!1018070 (=> res!1413260 e!2169332)))

(declare-fun lt!1194624 () Option!7587)

(assert (=> d!1018070 (= res!1413260 (isEmpty!21732 lt!1194624))))

(declare-fun e!2169334 () Option!7587)

(assert (=> d!1018070 (= lt!1194624 e!2169334)))

(declare-fun c!602700 () Bool)

(assert (=> d!1018070 (= c!602700 (and (is-Cons!37292 rules!2135) (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 (h!42713 tokens!494))))))))

(assert (=> d!1018070 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018070 (= (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 tokens!494)))) lt!1194624)))

(declare-fun b!3503821 () Bool)

(assert (=> b!3503821 (= e!2169333 None!7586)))

(declare-fun b!3503822 () Bool)

(assert (=> b!3503822 (= e!2169334 e!2169333)))

(declare-fun c!602701 () Bool)

(assert (=> b!3503822 (= c!602701 (and (is-Cons!37292 rules!2135) (not (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 (h!42713 tokens!494)))))))))

(declare-fun b!3503823 () Bool)

(declare-fun e!2169335 () Bool)

(assert (=> b!3503823 (= e!2169332 e!2169335)))

(declare-fun res!1413261 () Bool)

(assert (=> b!3503823 (=> (not res!1413261) (not e!2169335))))

(assert (=> b!3503823 (= res!1413261 (contains!6971 rules!2135 (get!11963 lt!1194624)))))

(declare-fun b!3503824 () Bool)

(assert (=> b!3503824 (= e!2169334 (Some!7586 (h!42712 rules!2135)))))

(declare-fun b!3503825 () Bool)

(assert (=> b!3503825 (= e!2169335 (= (tag!6095 (get!11963 lt!1194624)) (tag!6095 (rule!8091 (h!42713 tokens!494)))))))

(assert (= (and d!1018070 c!602700) b!3503824))

(assert (= (and d!1018070 (not c!602700)) b!3503822))

(assert (= (and b!3503822 c!602701) b!3503820))

(assert (= (and b!3503822 (not c!602701)) b!3503821))

(assert (= (and d!1018070 (not res!1413260)) b!3503823))

(assert (= (and b!3503823 res!1413261) b!3503825))

(assert (=> b!3503820 m!3940073))

(assert (=> b!3503820 m!3940075))

(declare-fun m!3940341 () Bool)

(assert (=> b!3503820 m!3940341))

(declare-fun m!3940343 () Bool)

(assert (=> d!1018070 m!3940343))

(assert (=> d!1018070 m!3939297))

(declare-fun m!3940345 () Bool)

(assert (=> b!3503823 m!3940345))

(assert (=> b!3503823 m!3940345))

(declare-fun m!3940347 () Bool)

(assert (=> b!3503823 m!3940347))

(assert (=> b!3503825 m!3940345))

(assert (=> b!3503158 d!1018070))

(declare-fun d!1018072 () Bool)

(assert (=> d!1018072 (= (maxPrefix!2594 thiss!18206 rules!2135 (++!9226 (list!13622 (charsOf!3479 (h!42713 tokens!494))) lt!1194344)) (Some!7587 (tuple2!37095 (h!42713 tokens!494) lt!1194344)))))

(declare-fun lt!1194628 () Unit!52855)

(declare-fun choose!20319 (LexerInterface!5054 List!37416 Token!10296 Rule!10730 List!37415 Rule!10730) Unit!52855)

(assert (=> d!1018072 (= lt!1194628 (choose!20319 thiss!18206 rules!2135 (h!42713 tokens!494) (rule!8091 (h!42713 tokens!494)) lt!1194344 (rule!8091 separatorToken!241)))))

(assert (=> d!1018072 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1018072 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!221 thiss!18206 rules!2135 (h!42713 tokens!494) (rule!8091 (h!42713 tokens!494)) lt!1194344 (rule!8091 separatorToken!241)) lt!1194628)))

(declare-fun bs!563860 () Bool)

(assert (= bs!563860 d!1018072))

(assert (=> bs!563860 m!3939301))

(declare-fun m!3940349 () Bool)

(assert (=> bs!563860 m!3940349))

(declare-fun m!3940351 () Bool)

(assert (=> bs!563860 m!3940351))

(assert (=> bs!563860 m!3940349))

(declare-fun m!3940353 () Bool)

(assert (=> bs!563860 m!3940353))

(assert (=> bs!563860 m!3939299))

(assert (=> bs!563860 m!3939307))

(assert (=> bs!563860 m!3939299))

(assert (=> bs!563860 m!3939301))

(assert (=> b!3503158 d!1018072))

(declare-fun d!1018074 () Bool)

(declare-fun lt!1194631 () BalanceConc!22224)

(assert (=> d!1018074 (= (list!13622 lt!1194631) (printList!1602 thiss!18206 (list!13624 lt!1194348)))))

(assert (=> d!1018074 (= lt!1194631 (printTailRec!1549 thiss!18206 lt!1194348 0 (BalanceConc!22225 Empty!11305)))))

(assert (=> d!1018074 (= (print!2119 thiss!18206 lt!1194348) lt!1194631)))

(declare-fun bs!563861 () Bool)

(assert (= bs!563861 d!1018074))

(declare-fun m!3940355 () Bool)

(assert (=> bs!563861 m!3940355))

(declare-fun m!3940357 () Bool)

(assert (=> bs!563861 m!3940357))

(assert (=> bs!563861 m!3940357))

(declare-fun m!3940359 () Bool)

(assert (=> bs!563861 m!3940359))

(assert (=> bs!563861 m!3939363))

(assert (=> b!3503158 d!1018074))

(declare-fun d!1018076 () Bool)

(declare-fun lt!1194632 () BalanceConc!22224)

(assert (=> d!1018076 (= (list!13622 lt!1194632) (printList!1602 thiss!18206 (list!13624 lt!1194334)))))

(assert (=> d!1018076 (= lt!1194632 (printTailRec!1549 thiss!18206 lt!1194334 0 (BalanceConc!22225 Empty!11305)))))

(assert (=> d!1018076 (= (print!2119 thiss!18206 lt!1194334) lt!1194632)))

(declare-fun bs!563862 () Bool)

(assert (= bs!563862 d!1018076))

(declare-fun m!3940361 () Bool)

(assert (=> bs!563862 m!3940361))

(declare-fun m!3940363 () Bool)

(assert (=> bs!563862 m!3940363))

(assert (=> bs!563862 m!3940363))

(declare-fun m!3940365 () Bool)

(assert (=> bs!563862 m!3940365))

(assert (=> bs!563862 m!3939353))

(assert (=> b!3503158 d!1018076))

(declare-fun d!1018078 () Bool)

(assert (=> d!1018078 (not (contains!6972 (usedCharacters!699 (regex!5465 (rule!8091 (h!42713 tokens!494)))) lt!1194335))))

(declare-fun lt!1194635 () Unit!52855)

(declare-fun choose!20320 (LexerInterface!5054 List!37416 List!37416 Rule!10730 Rule!10730 C!20634) Unit!52855)

(assert (=> d!1018078 (= lt!1194635 (choose!20320 thiss!18206 rules!2135 rules!2135 (rule!8091 (h!42713 tokens!494)) (rule!8091 separatorToken!241) lt!1194335))))

(assert (=> d!1018078 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018078 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!265 thiss!18206 rules!2135 rules!2135 (rule!8091 (h!42713 tokens!494)) (rule!8091 separatorToken!241) lt!1194335) lt!1194635)))

(declare-fun bs!563863 () Bool)

(assert (= bs!563863 d!1018078))

(assert (=> bs!563863 m!3939365))

(assert (=> bs!563863 m!3939365))

(assert (=> bs!563863 m!3939367))

(declare-fun m!3940367 () Bool)

(assert (=> bs!563863 m!3940367))

(assert (=> bs!563863 m!3939297))

(assert (=> b!3503158 d!1018078))

(declare-fun d!1018080 () Bool)

(declare-fun lt!1194638 () Bool)

(declare-fun content!5244 (List!37416) (Set Rule!10730))

(assert (=> d!1018080 (= lt!1194638 (set.member (rule!8091 (h!42713 (t!279116 tokens!494))) (content!5244 rules!2135)))))

(declare-fun e!2169341 () Bool)

(assert (=> d!1018080 (= lt!1194638 e!2169341)))

(declare-fun res!1413266 () Bool)

(assert (=> d!1018080 (=> (not res!1413266) (not e!2169341))))

(assert (=> d!1018080 (= res!1413266 (is-Cons!37292 rules!2135))))

(assert (=> d!1018080 (= (contains!6971 rules!2135 (rule!8091 (h!42713 (t!279116 tokens!494)))) lt!1194638)))

(declare-fun b!3503830 () Bool)

(declare-fun e!2169340 () Bool)

(assert (=> b!3503830 (= e!2169341 e!2169340)))

(declare-fun res!1413267 () Bool)

(assert (=> b!3503830 (=> res!1413267 e!2169340)))

(assert (=> b!3503830 (= res!1413267 (= (h!42712 rules!2135) (rule!8091 (h!42713 (t!279116 tokens!494)))))))

(declare-fun b!3503831 () Bool)

(assert (=> b!3503831 (= e!2169340 (contains!6971 (t!279115 rules!2135) (rule!8091 (h!42713 (t!279116 tokens!494)))))))

(assert (= (and d!1018080 res!1413266) b!3503830))

(assert (= (and b!3503830 (not res!1413267)) b!3503831))

(declare-fun m!3940369 () Bool)

(assert (=> d!1018080 m!3940369))

(declare-fun m!3940371 () Bool)

(assert (=> d!1018080 m!3940371))

(declare-fun m!3940373 () Bool)

(assert (=> b!3503831 m!3940373))

(assert (=> b!3503158 d!1018080))

(declare-fun d!1018082 () Bool)

(declare-fun lt!1194639 () Bool)

(assert (=> d!1018082 (= lt!1194639 (set.member lt!1194335 (content!5242 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241))))))))

(declare-fun e!2169342 () Bool)

(assert (=> d!1018082 (= lt!1194639 e!2169342)))

(declare-fun res!1413269 () Bool)

(assert (=> d!1018082 (=> (not res!1413269) (not e!2169342))))

(assert (=> d!1018082 (= res!1413269 (is-Cons!37291 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241)))))))

(assert (=> d!1018082 (= (contains!6972 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241))) lt!1194335) lt!1194639)))

(declare-fun b!3503832 () Bool)

(declare-fun e!2169343 () Bool)

(assert (=> b!3503832 (= e!2169342 e!2169343)))

(declare-fun res!1413268 () Bool)

(assert (=> b!3503832 (=> res!1413268 e!2169343)))

(assert (=> b!3503832 (= res!1413268 (= (h!42711 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241)))) lt!1194335))))

(declare-fun b!3503833 () Bool)

(assert (=> b!3503833 (= e!2169343 (contains!6972 (t!279114 (usedCharacters!699 (regex!5465 (rule!8091 separatorToken!241)))) lt!1194335))))

(assert (= (and d!1018082 res!1413269) b!3503832))

(assert (= (and b!3503832 (not res!1413268)) b!3503833))

(assert (=> d!1018082 m!3939357))

(declare-fun m!3940375 () Bool)

(assert (=> d!1018082 m!3940375))

(declare-fun m!3940377 () Bool)

(assert (=> d!1018082 m!3940377))

(declare-fun m!3940379 () Bool)

(assert (=> b!3503833 m!3940379))

(assert (=> b!3503158 d!1018082))

(declare-fun d!1018084 () Bool)

(declare-fun lt!1194673 () BalanceConc!22224)

(declare-fun printListTailRec!709 (LexerInterface!5054 List!37417 List!37415) List!37415)

(declare-fun dropList!1226 (BalanceConc!22226 Int) List!37417)

(assert (=> d!1018084 (= (list!13622 lt!1194673) (printListTailRec!709 thiss!18206 (dropList!1226 lt!1194348 0) (list!13622 (BalanceConc!22225 Empty!11305))))))

(declare-fun e!2169372 () BalanceConc!22224)

(assert (=> d!1018084 (= lt!1194673 e!2169372)))

(declare-fun c!602720 () Bool)

(assert (=> d!1018084 (= c!602720 (>= 0 (size!28349 lt!1194348)))))

(declare-fun e!2169371 () Bool)

(assert (=> d!1018084 e!2169371))

(declare-fun res!1413281 () Bool)

(assert (=> d!1018084 (=> (not res!1413281) (not e!2169371))))

(assert (=> d!1018084 (= res!1413281 (>= 0 0))))

(assert (=> d!1018084 (= (printTailRec!1549 thiss!18206 lt!1194348 0 (BalanceConc!22225 Empty!11305)) lt!1194673)))

(declare-fun b!3503879 () Bool)

(assert (=> b!3503879 (= e!2169371 (<= 0 (size!28349 lt!1194348)))))

(declare-fun b!3503880 () Bool)

(assert (=> b!3503880 (= e!2169372 (BalanceConc!22225 Empty!11305))))

(declare-fun b!3503881 () Bool)

(declare-fun ++!9228 (BalanceConc!22224 BalanceConc!22224) BalanceConc!22224)

(assert (=> b!3503881 (= e!2169372 (printTailRec!1549 thiss!18206 lt!1194348 (+ 0 1) (++!9228 (BalanceConc!22225 Empty!11305) (charsOf!3479 (apply!8855 lt!1194348 0)))))))

(declare-fun lt!1194672 () List!37417)

(assert (=> b!3503881 (= lt!1194672 (list!13624 lt!1194348))))

(declare-fun lt!1194676 () Unit!52855)

(declare-fun lemmaDropApply!1184 (List!37417 Int) Unit!52855)

(assert (=> b!3503881 (= lt!1194676 (lemmaDropApply!1184 lt!1194672 0))))

(declare-fun head!7368 (List!37417) Token!10296)

(declare-fun drop!2038 (List!37417 Int) List!37417)

(assert (=> b!3503881 (= (head!7368 (drop!2038 lt!1194672 0)) (apply!8858 lt!1194672 0))))

(declare-fun lt!1194671 () Unit!52855)

(assert (=> b!3503881 (= lt!1194671 lt!1194676)))

(declare-fun lt!1194674 () List!37417)

(assert (=> b!3503881 (= lt!1194674 (list!13624 lt!1194348))))

(declare-fun lt!1194670 () Unit!52855)

(declare-fun lemmaDropTail!1068 (List!37417 Int) Unit!52855)

(assert (=> b!3503881 (= lt!1194670 (lemmaDropTail!1068 lt!1194674 0))))

(declare-fun tail!5476 (List!37417) List!37417)

(assert (=> b!3503881 (= (tail!5476 (drop!2038 lt!1194674 0)) (drop!2038 lt!1194674 (+ 0 1)))))

(declare-fun lt!1194675 () Unit!52855)

(assert (=> b!3503881 (= lt!1194675 lt!1194670)))

(assert (= (and d!1018084 res!1413281) b!3503879))

(assert (= (and d!1018084 c!602720) b!3503880))

(assert (= (and d!1018084 (not c!602720)) b!3503881))

(declare-fun m!3940421 () Bool)

(assert (=> d!1018084 m!3940421))

(declare-fun m!3940423 () Bool)

(assert (=> d!1018084 m!3940423))

(declare-fun m!3940425 () Bool)

(assert (=> d!1018084 m!3940425))

(assert (=> d!1018084 m!3940421))

(declare-fun m!3940427 () Bool)

(assert (=> d!1018084 m!3940427))

(declare-fun m!3940429 () Bool)

(assert (=> d!1018084 m!3940429))

(assert (=> d!1018084 m!3940423))

(assert (=> b!3503879 m!3940429))

(assert (=> b!3503881 m!3940357))

(declare-fun m!3940431 () Bool)

(assert (=> b!3503881 m!3940431))

(declare-fun m!3940433 () Bool)

(assert (=> b!3503881 m!3940433))

(declare-fun m!3940435 () Bool)

(assert (=> b!3503881 m!3940435))

(assert (=> b!3503881 m!3940431))

(declare-fun m!3940437 () Bool)

(assert (=> b!3503881 m!3940437))

(assert (=> b!3503881 m!3940437))

(declare-fun m!3940439 () Bool)

(assert (=> b!3503881 m!3940439))

(declare-fun m!3940441 () Bool)

(assert (=> b!3503881 m!3940441))

(declare-fun m!3940443 () Bool)

(assert (=> b!3503881 m!3940443))

(assert (=> b!3503881 m!3940435))

(declare-fun m!3940445 () Bool)

(assert (=> b!3503881 m!3940445))

(declare-fun m!3940447 () Bool)

(assert (=> b!3503881 m!3940447))

(assert (=> b!3503881 m!3940439))

(declare-fun m!3940449 () Bool)

(assert (=> b!3503881 m!3940449))

(assert (=> b!3503881 m!3940443))

(declare-fun m!3940451 () Bool)

(assert (=> b!3503881 m!3940451))

(declare-fun m!3940453 () Bool)

(assert (=> b!3503881 m!3940453))

(assert (=> b!3503158 d!1018084))

(declare-fun d!1018096 () Bool)

(declare-fun e!2169377 () Bool)

(assert (=> d!1018096 e!2169377))

(declare-fun res!1413282 () Bool)

(assert (=> d!1018096 (=> (not res!1413282) (not e!2169377))))

(declare-fun lt!1194677 () BalanceConc!22226)

(assert (=> d!1018096 (= res!1413282 (= (list!13624 lt!1194677) (Cons!37293 (h!42713 (t!279116 tokens!494)) Nil!37293)))))

(assert (=> d!1018096 (= lt!1194677 (singleton!1141 (h!42713 (t!279116 tokens!494))))))

(assert (=> d!1018096 (= (singletonSeq!2561 (h!42713 (t!279116 tokens!494))) lt!1194677)))

(declare-fun b!3503890 () Bool)

(assert (=> b!3503890 (= e!2169377 (isBalanced!3444 (c!602587 lt!1194677)))))

(assert (= (and d!1018096 res!1413282) b!3503890))

(declare-fun m!3940455 () Bool)

(assert (=> d!1018096 m!3940455))

(declare-fun m!3940457 () Bool)

(assert (=> d!1018096 m!3940457))

(declare-fun m!3940459 () Bool)

(assert (=> b!3503890 m!3940459))

(assert (=> b!3503158 d!1018096))

(declare-fun d!1018098 () Bool)

(assert (=> d!1018098 (= (isDefined!5849 lt!1194307) (not (isEmpty!21732 lt!1194307)))))

(declare-fun bs!563867 () Bool)

(assert (= bs!563867 d!1018098))

(declare-fun m!3940463 () Bool)

(assert (=> bs!563867 m!3940463))

(assert (=> b!3503158 d!1018098))

(declare-fun d!1018100 () Bool)

(assert (=> d!1018100 (= (maxPrefixOneRule!1761 thiss!18206 (rule!8091 (h!42713 tokens!494)) lt!1194330) (Some!7587 (tuple2!37095 (Token!10297 (apply!8854 (transformation!5465 (rule!8091 (h!42713 tokens!494))) (seqFromList!3983 lt!1194330)) (rule!8091 (h!42713 tokens!494)) (size!28350 lt!1194330) lt!1194330) Nil!37291)))))

(declare-fun lt!1194680 () Unit!52855)

(declare-fun choose!20321 (LexerInterface!5054 List!37416 List!37415 List!37415 List!37415 Rule!10730) Unit!52855)

(assert (=> d!1018100 (= lt!1194680 (choose!20321 thiss!18206 rules!2135 lt!1194330 lt!1194330 Nil!37291 (rule!8091 (h!42713 tokens!494))))))

(assert (=> d!1018100 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1018100 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!854 thiss!18206 rules!2135 lt!1194330 lt!1194330 Nil!37291 (rule!8091 (h!42713 tokens!494))) lt!1194680)))

(declare-fun bs!563868 () Bool)

(assert (= bs!563868 d!1018100))

(assert (=> bs!563868 m!3939307))

(assert (=> bs!563868 m!3939321))

(declare-fun m!3940469 () Bool)

(assert (=> bs!563868 m!3940469))

(assert (=> bs!563868 m!3939393))

(declare-fun m!3940471 () Bool)

(assert (=> bs!563868 m!3940471))

(assert (=> bs!563868 m!3939405))

(assert (=> bs!563868 m!3939321))

(assert (=> b!3503158 d!1018100))

(declare-fun d!1018104 () Bool)

(declare-fun e!2169378 () Bool)

(assert (=> d!1018104 e!2169378))

(declare-fun res!1413283 () Bool)

(assert (=> d!1018104 (=> (not res!1413283) (not e!2169378))))

(assert (=> d!1018104 (= res!1413283 (isDefined!5849 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 tokens!494))))))))

(declare-fun lt!1194681 () Unit!52855)

(assert (=> d!1018104 (= lt!1194681 (choose!20318 thiss!18206 rules!2135 lt!1194330 (h!42713 tokens!494)))))

(assert (=> d!1018104 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018104 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194330 (h!42713 tokens!494)) lt!1194681)))

(declare-fun b!3503891 () Bool)

(declare-fun res!1413284 () Bool)

(assert (=> b!3503891 (=> (not res!1413284) (not e!2169378))))

(assert (=> b!3503891 (= res!1413284 (matchR!4808 (regex!5465 (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 tokens!494)))))) (list!13622 (charsOf!3479 (h!42713 tokens!494)))))))

(declare-fun b!3503892 () Bool)

(assert (=> b!3503892 (= e!2169378 (= (rule!8091 (h!42713 tokens!494)) (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 tokens!494)))))))))

(assert (= (and d!1018104 res!1413283) b!3503891))

(assert (= (and b!3503891 res!1413284) b!3503892))

(assert (=> d!1018104 m!3939359))

(assert (=> d!1018104 m!3939359))

(declare-fun m!3940473 () Bool)

(assert (=> d!1018104 m!3940473))

(declare-fun m!3940475 () Bool)

(assert (=> d!1018104 m!3940475))

(assert (=> d!1018104 m!3939297))

(assert (=> b!3503891 m!3939359))

(declare-fun m!3940477 () Bool)

(assert (=> b!3503891 m!3940477))

(assert (=> b!3503891 m!3939359))

(assert (=> b!3503891 m!3939299))

(assert (=> b!3503891 m!3939299))

(assert (=> b!3503891 m!3939301))

(assert (=> b!3503891 m!3939301))

(declare-fun m!3940479 () Bool)

(assert (=> b!3503891 m!3940479))

(assert (=> b!3503892 m!3939359))

(assert (=> b!3503892 m!3939359))

(assert (=> b!3503892 m!3940477))

(assert (=> b!3503158 d!1018104))

(declare-fun e!2169379 () Bool)

(declare-fun lt!1194684 () tuple2!37092)

(declare-fun b!3503893 () Bool)

(assert (=> b!3503893 (= e!2169379 (= (list!13622 (_2!21680 lt!1194684)) (_2!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194311)))))))

(declare-fun d!1018106 () Bool)

(assert (=> d!1018106 e!2169379))

(declare-fun res!1413285 () Bool)

(assert (=> d!1018106 (=> (not res!1413285) (not e!2169379))))

(declare-fun e!2169381 () Bool)

(assert (=> d!1018106 (= res!1413285 e!2169381)))

(declare-fun c!602725 () Bool)

(assert (=> d!1018106 (= c!602725 (> (size!28349 (_1!21680 lt!1194684)) 0))))

(assert (=> d!1018106 (= lt!1194684 (lexTailRecV2!1077 thiss!18206 rules!2135 lt!1194311 (BalanceConc!22225 Empty!11305) lt!1194311 (BalanceConc!22227 Empty!11306)))))

(assert (=> d!1018106 (= (lex!2380 thiss!18206 rules!2135 lt!1194311) lt!1194684)))

(declare-fun b!3503894 () Bool)

(declare-fun e!2169380 () Bool)

(assert (=> b!3503894 (= e!2169381 e!2169380)))

(declare-fun res!1413286 () Bool)

(assert (=> b!3503894 (= res!1413286 (< (size!28354 (_2!21680 lt!1194684)) (size!28354 lt!1194311)))))

(assert (=> b!3503894 (=> (not res!1413286) (not e!2169380))))

(declare-fun b!3503895 () Bool)

(declare-fun res!1413287 () Bool)

(assert (=> b!3503895 (=> (not res!1413287) (not e!2169379))))

(assert (=> b!3503895 (= res!1413287 (= (list!13624 (_1!21680 lt!1194684)) (_1!21684 (lexList!1469 thiss!18206 rules!2135 (list!13622 lt!1194311)))))))

(declare-fun b!3503896 () Bool)

(assert (=> b!3503896 (= e!2169381 (= (_2!21680 lt!1194684) lt!1194311))))

(declare-fun b!3503897 () Bool)

(assert (=> b!3503897 (= e!2169380 (not (isEmpty!21724 (_1!21680 lt!1194684))))))

(assert (= (and d!1018106 c!602725) b!3503894))

(assert (= (and d!1018106 (not c!602725)) b!3503896))

(assert (= (and b!3503894 res!1413286) b!3503897))

(assert (= (and d!1018106 res!1413285) b!3503895))

(assert (= (and b!3503895 res!1413287) b!3503893))

(declare-fun m!3940481 () Bool)

(assert (=> d!1018106 m!3940481))

(declare-fun m!3940483 () Bool)

(assert (=> d!1018106 m!3940483))

(declare-fun m!3940485 () Bool)

(assert (=> b!3503895 m!3940485))

(declare-fun m!3940487 () Bool)

(assert (=> b!3503895 m!3940487))

(assert (=> b!3503895 m!3940487))

(declare-fun m!3940489 () Bool)

(assert (=> b!3503895 m!3940489))

(declare-fun m!3940491 () Bool)

(assert (=> b!3503893 m!3940491))

(assert (=> b!3503893 m!3940487))

(assert (=> b!3503893 m!3940487))

(assert (=> b!3503893 m!3940489))

(declare-fun m!3940493 () Bool)

(assert (=> b!3503897 m!3940493))

(declare-fun m!3940495 () Bool)

(assert (=> b!3503894 m!3940495))

(declare-fun m!3940497 () Bool)

(assert (=> b!3503894 m!3940497))

(assert (=> b!3503158 d!1018106))

(declare-fun b!3503898 () Bool)

(declare-fun lt!1194686 () Unit!52855)

(declare-fun lt!1194688 () Unit!52855)

(assert (=> b!3503898 (= lt!1194686 lt!1194688)))

(assert (=> b!3503898 (rulesInvariant!4451 thiss!18206 (t!279115 rules!2135))))

(assert (=> b!3503898 (= lt!1194688 (lemmaInvariantOnRulesThenOnTail!453 thiss!18206 (h!42712 rules!2135) (t!279115 rules!2135)))))

(declare-fun e!2169383 () Option!7587)

(assert (=> b!3503898 (= e!2169383 (getRuleFromTag!1108 thiss!18206 (t!279115 rules!2135) (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(declare-fun d!1018108 () Bool)

(declare-fun e!2169382 () Bool)

(assert (=> d!1018108 e!2169382))

(declare-fun res!1413288 () Bool)

(assert (=> d!1018108 (=> res!1413288 e!2169382)))

(declare-fun lt!1194687 () Option!7587)

(assert (=> d!1018108 (= res!1413288 (isEmpty!21732 lt!1194687))))

(declare-fun e!2169384 () Option!7587)

(assert (=> d!1018108 (= lt!1194687 e!2169384)))

(declare-fun c!602726 () Bool)

(assert (=> d!1018108 (= c!602726 (and (is-Cons!37292 rules!2135) (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494)))))))))

(assert (=> d!1018108 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018108 (= (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))) lt!1194687)))

(declare-fun b!3503899 () Bool)

(assert (=> b!3503899 (= e!2169383 None!7586)))

(declare-fun b!3503900 () Bool)

(assert (=> b!3503900 (= e!2169384 e!2169383)))

(declare-fun c!602727 () Bool)

(assert (=> b!3503900 (= c!602727 (and (is-Cons!37292 rules!2135) (not (= (tag!6095 (h!42712 rules!2135)) (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))))))

(declare-fun b!3503901 () Bool)

(declare-fun e!2169385 () Bool)

(assert (=> b!3503901 (= e!2169382 e!2169385)))

(declare-fun res!1413289 () Bool)

(assert (=> b!3503901 (=> (not res!1413289) (not e!2169385))))

(assert (=> b!3503901 (= res!1413289 (contains!6971 rules!2135 (get!11963 lt!1194687)))))

(declare-fun b!3503902 () Bool)

(assert (=> b!3503902 (= e!2169384 (Some!7586 (h!42712 rules!2135)))))

(declare-fun b!3503903 () Bool)

(assert (=> b!3503903 (= e!2169385 (= (tag!6095 (get!11963 lt!1194687)) (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(assert (= (and d!1018108 c!602726) b!3503902))

(assert (= (and d!1018108 (not c!602726)) b!3503900))

(assert (= (and b!3503900 c!602727) b!3503898))

(assert (= (and b!3503900 (not c!602727)) b!3503899))

(assert (= (and d!1018108 (not res!1413288)) b!3503901))

(assert (= (and b!3503901 res!1413289) b!3503903))

(assert (=> b!3503898 m!3940073))

(assert (=> b!3503898 m!3940075))

(declare-fun m!3940505 () Bool)

(assert (=> b!3503898 m!3940505))

(declare-fun m!3940507 () Bool)

(assert (=> d!1018108 m!3940507))

(assert (=> d!1018108 m!3939297))

(declare-fun m!3940509 () Bool)

(assert (=> b!3503901 m!3940509))

(assert (=> b!3503901 m!3940509))

(declare-fun m!3940513 () Bool)

(assert (=> b!3503901 m!3940513))

(assert (=> b!3503903 m!3940509))

(assert (=> b!3503158 d!1018108))

(declare-fun d!1018114 () Bool)

(declare-fun e!2169387 () Bool)

(assert (=> d!1018114 e!2169387))

(declare-fun res!1413291 () Bool)

(assert (=> d!1018114 (=> (not res!1413291) (not e!2169387))))

(assert (=> d!1018114 (= res!1413291 (isDefined!5849 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 separatorToken!241)))))))

(declare-fun lt!1194690 () Unit!52855)

(assert (=> d!1018114 (= lt!1194690 (choose!20318 thiss!18206 rules!2135 lt!1194333 separatorToken!241))))

(assert (=> d!1018114 (rulesInvariant!4451 thiss!18206 rules!2135)))

(assert (=> d!1018114 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1108 thiss!18206 rules!2135 lt!1194333 separatorToken!241) lt!1194690)))

(declare-fun b!3503905 () Bool)

(declare-fun res!1413292 () Bool)

(assert (=> b!3503905 (=> (not res!1413292) (not e!2169387))))

(assert (=> b!3503905 (= res!1413292 (matchR!4808 (regex!5465 (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 separatorToken!241))))) (list!13622 (charsOf!3479 separatorToken!241))))))

(declare-fun b!3503906 () Bool)

(assert (=> b!3503906 (= e!2169387 (= (rule!8091 separatorToken!241) (get!11963 (getRuleFromTag!1108 thiss!18206 rules!2135 (tag!6095 (rule!8091 separatorToken!241))))))))

(assert (= (and d!1018114 res!1413291) b!3503905))

(assert (= (and b!3503905 res!1413292) b!3503906))

(assert (=> d!1018114 m!3939415))

(assert (=> d!1018114 m!3939415))

(declare-fun m!3940521 () Bool)

(assert (=> d!1018114 m!3940521))

(declare-fun m!3940523 () Bool)

(assert (=> d!1018114 m!3940523))

(assert (=> d!1018114 m!3939297))

(assert (=> b!3503905 m!3939415))

(declare-fun m!3940525 () Bool)

(assert (=> b!3503905 m!3940525))

(assert (=> b!3503905 m!3939415))

(assert (=> b!3503905 m!3939445))

(assert (=> b!3503905 m!3939445))

(assert (=> b!3503905 m!3939459))

(assert (=> b!3503905 m!3939459))

(declare-fun m!3940527 () Bool)

(assert (=> b!3503905 m!3940527))

(assert (=> b!3503906 m!3939415))

(assert (=> b!3503906 m!3939415))

(assert (=> b!3503906 m!3940525))

(assert (=> b!3503158 d!1018114))

(declare-fun d!1018118 () Bool)

(declare-fun lt!1194697 () BalanceConc!22224)

(assert (=> d!1018118 (= (list!13622 lt!1194697) (printListTailRec!709 thiss!18206 (dropList!1226 lt!1194334 0) (list!13622 (BalanceConc!22225 Empty!11305))))))

(declare-fun e!2169391 () BalanceConc!22224)

(assert (=> d!1018118 (= lt!1194697 e!2169391)))

(declare-fun c!602728 () Bool)

(assert (=> d!1018118 (= c!602728 (>= 0 (size!28349 lt!1194334)))))

(declare-fun e!2169390 () Bool)

(assert (=> d!1018118 e!2169390))

(declare-fun res!1413296 () Bool)

(assert (=> d!1018118 (=> (not res!1413296) (not e!2169390))))

(assert (=> d!1018118 (= res!1413296 (>= 0 0))))

(assert (=> d!1018118 (= (printTailRec!1549 thiss!18206 lt!1194334 0 (BalanceConc!22225 Empty!11305)) lt!1194697)))

(declare-fun b!3503910 () Bool)

(assert (=> b!3503910 (= e!2169390 (<= 0 (size!28349 lt!1194334)))))

(declare-fun b!3503911 () Bool)

(assert (=> b!3503911 (= e!2169391 (BalanceConc!22225 Empty!11305))))

(declare-fun b!3503912 () Bool)

(assert (=> b!3503912 (= e!2169391 (printTailRec!1549 thiss!18206 lt!1194334 (+ 0 1) (++!9228 (BalanceConc!22225 Empty!11305) (charsOf!3479 (apply!8855 lt!1194334 0)))))))

(declare-fun lt!1194696 () List!37417)

(assert (=> b!3503912 (= lt!1194696 (list!13624 lt!1194334))))

(declare-fun lt!1194700 () Unit!52855)

(assert (=> b!3503912 (= lt!1194700 (lemmaDropApply!1184 lt!1194696 0))))

(assert (=> b!3503912 (= (head!7368 (drop!2038 lt!1194696 0)) (apply!8858 lt!1194696 0))))

(declare-fun lt!1194695 () Unit!52855)

(assert (=> b!3503912 (= lt!1194695 lt!1194700)))

(declare-fun lt!1194698 () List!37417)

(assert (=> b!3503912 (= lt!1194698 (list!13624 lt!1194334))))

(declare-fun lt!1194694 () Unit!52855)

(assert (=> b!3503912 (= lt!1194694 (lemmaDropTail!1068 lt!1194698 0))))

(assert (=> b!3503912 (= (tail!5476 (drop!2038 lt!1194698 0)) (drop!2038 lt!1194698 (+ 0 1)))))

(declare-fun lt!1194699 () Unit!52855)

(assert (=> b!3503912 (= lt!1194699 lt!1194694)))

(assert (= (and d!1018118 res!1413296) b!3503910))

(assert (= (and d!1018118 c!602728) b!3503911))

(assert (= (and d!1018118 (not c!602728)) b!3503912))

(declare-fun m!3940545 () Bool)

(assert (=> d!1018118 m!3940545))

(assert (=> d!1018118 m!3940423))

(declare-fun m!3940547 () Bool)

(assert (=> d!1018118 m!3940547))

(assert (=> d!1018118 m!3940545))

(declare-fun m!3940549 () Bool)

(assert (=> d!1018118 m!3940549))

(declare-fun m!3940551 () Bool)

(assert (=> d!1018118 m!3940551))

(assert (=> d!1018118 m!3940423))

(assert (=> b!3503910 m!3940551))

(assert (=> b!3503912 m!3940363))

(declare-fun m!3940553 () Bool)

(assert (=> b!3503912 m!3940553))

(declare-fun m!3940555 () Bool)

(assert (=> b!3503912 m!3940555))

(declare-fun m!3940557 () Bool)

(assert (=> b!3503912 m!3940557))

(assert (=> b!3503912 m!3940553))

(declare-fun m!3940559 () Bool)

(assert (=> b!3503912 m!3940559))

(assert (=> b!3503912 m!3940559))

(declare-fun m!3940561 () Bool)

(assert (=> b!3503912 m!3940561))

(declare-fun m!3940563 () Bool)

(assert (=> b!3503912 m!3940563))

(declare-fun m!3940565 () Bool)

(assert (=> b!3503912 m!3940565))

(assert (=> b!3503912 m!3940557))

(declare-fun m!3940567 () Bool)

(assert (=> b!3503912 m!3940567))

(declare-fun m!3940569 () Bool)

(assert (=> b!3503912 m!3940569))

(assert (=> b!3503912 m!3940561))

(declare-fun m!3940571 () Bool)

(assert (=> b!3503912 m!3940571))

(assert (=> b!3503912 m!3940565))

(declare-fun m!3940573 () Bool)

(assert (=> b!3503912 m!3940573))

(declare-fun m!3940575 () Bool)

(assert (=> b!3503912 m!3940575))

(assert (=> b!3503158 d!1018118))

(declare-fun bs!563873 () Bool)

(declare-fun d!1018122 () Bool)

(assert (= bs!563873 (and d!1018122 b!3503149)))

(declare-fun lambda!122490 () Int)

(assert (=> bs!563873 (not (= lambda!122490 lambda!122474))))

(declare-fun bs!563874 () Bool)

(assert (= bs!563874 (and d!1018122 b!3503158)))

(assert (=> bs!563874 (= lambda!122490 lambda!122475)))

(declare-fun b!3503965 () Bool)

(declare-fun e!2169422 () Bool)

(assert (=> b!3503965 (= e!2169422 true)))

(declare-fun b!3503964 () Bool)

(declare-fun e!2169421 () Bool)

(assert (=> b!3503964 (= e!2169421 e!2169422)))

(declare-fun b!3503963 () Bool)

(declare-fun e!2169420 () Bool)

(assert (=> b!3503963 (= e!2169420 e!2169421)))

(assert (=> d!1018122 e!2169420))

(assert (= b!3503964 b!3503965))

(assert (= b!3503963 b!3503964))

(assert (= (and d!1018122 (is-Cons!37292 rules!2135)) b!3503963))

(assert (=> b!3503965 (< (dynLambda!15833 order!19999 (toValue!7709 (transformation!5465 (h!42712 rules!2135)))) (dynLambda!15834 order!20001 lambda!122490))))

(assert (=> b!3503965 (< (dynLambda!15835 order!20003 (toChars!7568 (transformation!5465 (h!42712 rules!2135)))) (dynLambda!15834 order!20001 lambda!122490))))

(assert (=> d!1018122 true))

(declare-fun e!2169419 () Bool)

(assert (=> d!1018122 e!2169419))

(declare-fun res!1413334 () Bool)

(assert (=> d!1018122 (=> (not res!1413334) (not e!2169419))))

(declare-fun lt!1194731 () Bool)

(assert (=> d!1018122 (= res!1413334 (= lt!1194731 (forall!7998 (list!13624 (seqFromList!3984 tokens!494)) lambda!122490)))))

(declare-fun forall!8000 (BalanceConc!22226 Int) Bool)

(assert (=> d!1018122 (= lt!1194731 (forall!8000 (seqFromList!3984 tokens!494) lambda!122490))))

(assert (=> d!1018122 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1018122 (= (rulesProduceEachTokenIndividually!1505 thiss!18206 rules!2135 (seqFromList!3984 tokens!494)) lt!1194731)))

(declare-fun b!3503962 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1876 (LexerInterface!5054 List!37416 List!37417) Bool)

(assert (=> b!3503962 (= e!2169419 (= lt!1194731 (rulesProduceEachTokenIndividuallyList!1876 thiss!18206 rules!2135 (list!13624 (seqFromList!3984 tokens!494)))))))

(assert (= (and d!1018122 res!1413334) b!3503962))

(assert (=> d!1018122 m!3939347))

(declare-fun m!3940665 () Bool)

(assert (=> d!1018122 m!3940665))

(assert (=> d!1018122 m!3940665))

(declare-fun m!3940667 () Bool)

(assert (=> d!1018122 m!3940667))

(assert (=> d!1018122 m!3939347))

(declare-fun m!3940669 () Bool)

(assert (=> d!1018122 m!3940669))

(assert (=> d!1018122 m!3939307))

(assert (=> b!3503962 m!3939347))

(assert (=> b!3503962 m!3940665))

(assert (=> b!3503962 m!3940665))

(declare-fun m!3940671 () Bool)

(assert (=> b!3503962 m!3940671))

(assert (=> b!3503179 d!1018122))

(declare-fun d!1018138 () Bool)

(declare-fun fromListB!1825 (List!37417) BalanceConc!22226)

(assert (=> d!1018138 (= (seqFromList!3984 tokens!494) (fromListB!1825 tokens!494))))

(declare-fun bs!563875 () Bool)

(assert (= bs!563875 d!1018138))

(declare-fun m!3940673 () Bool)

(assert (=> bs!563875 m!3940673))

(assert (=> b!3503179 d!1018138))

(declare-fun d!1018140 () Bool)

(declare-fun lt!1194732 () Bool)

(declare-fun e!2169423 () Bool)

(assert (=> d!1018140 (= lt!1194732 e!2169423)))

(declare-fun res!1413335 () Bool)

(assert (=> d!1018140 (=> (not res!1413335) (not e!2169423))))

(assert (=> d!1018140 (= res!1413335 (= (list!13624 (_1!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 separatorToken!241))))) (list!13624 (singletonSeq!2561 separatorToken!241))))))

(declare-fun e!2169424 () Bool)

(assert (=> d!1018140 (= lt!1194732 e!2169424)))

(declare-fun res!1413336 () Bool)

(assert (=> d!1018140 (=> (not res!1413336) (not e!2169424))))

(declare-fun lt!1194733 () tuple2!37092)

(assert (=> d!1018140 (= res!1413336 (= (size!28349 (_1!21680 lt!1194733)) 1))))

(assert (=> d!1018140 (= lt!1194733 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 separatorToken!241))))))

(assert (=> d!1018140 (not (isEmpty!21723 rules!2135))))

(assert (=> d!1018140 (= (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 separatorToken!241) lt!1194732)))

(declare-fun b!3503966 () Bool)

(declare-fun res!1413337 () Bool)

(assert (=> b!3503966 (=> (not res!1413337) (not e!2169424))))

(assert (=> b!3503966 (= res!1413337 (= (apply!8855 (_1!21680 lt!1194733) 0) separatorToken!241))))

(declare-fun b!3503967 () Bool)

(assert (=> b!3503967 (= e!2169424 (isEmpty!21722 (_2!21680 lt!1194733)))))

(declare-fun b!3503968 () Bool)

(assert (=> b!3503968 (= e!2169423 (isEmpty!21722 (_2!21680 (lex!2380 thiss!18206 rules!2135 (print!2119 thiss!18206 (singletonSeq!2561 separatorToken!241))))))))

(assert (= (and d!1018140 res!1413336) b!3503966))

(assert (= (and b!3503966 res!1413337) b!3503967))

(assert (= (and d!1018140 res!1413335) b!3503968))

(assert (=> d!1018140 m!3939391))

(declare-fun m!3940675 () Bool)

(assert (=> d!1018140 m!3940675))

(declare-fun m!3940677 () Bool)

(assert (=> d!1018140 m!3940677))

(assert (=> d!1018140 m!3939307))

(assert (=> d!1018140 m!3939391))

(declare-fun m!3940679 () Bool)

(assert (=> d!1018140 m!3940679))

(assert (=> d!1018140 m!3940679))

(declare-fun m!3940681 () Bool)

(assert (=> d!1018140 m!3940681))

(assert (=> d!1018140 m!3939391))

(declare-fun m!3940683 () Bool)

(assert (=> d!1018140 m!3940683))

(declare-fun m!3940685 () Bool)

(assert (=> b!3503966 m!3940685))

(declare-fun m!3940687 () Bool)

(assert (=> b!3503967 m!3940687))

(assert (=> b!3503968 m!3939391))

(assert (=> b!3503968 m!3939391))

(assert (=> b!3503968 m!3940679))

(assert (=> b!3503968 m!3940679))

(assert (=> b!3503968 m!3940681))

(declare-fun m!3940689 () Bool)

(assert (=> b!3503968 m!3940689))

(assert (=> b!3503175 d!1018140))

(declare-fun d!1018142 () Bool)

(declare-fun res!1413342 () Bool)

(declare-fun e!2169429 () Bool)

(assert (=> d!1018142 (=> res!1413342 e!2169429)))

(assert (=> d!1018142 (= res!1413342 (not (is-Cons!37292 rules!2135)))))

(assert (=> d!1018142 (= (sepAndNonSepRulesDisjointChars!1659 rules!2135 rules!2135) e!2169429)))

(declare-fun b!3503973 () Bool)

(declare-fun e!2169430 () Bool)

(assert (=> b!3503973 (= e!2169429 e!2169430)))

(declare-fun res!1413343 () Bool)

(assert (=> b!3503973 (=> (not res!1413343) (not e!2169430))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!741 (Rule!10730 List!37416) Bool)

(assert (=> b!3503973 (= res!1413343 (ruleDisjointCharsFromAllFromOtherType!741 (h!42712 rules!2135) rules!2135))))

(declare-fun b!3503974 () Bool)

(assert (=> b!3503974 (= e!2169430 (sepAndNonSepRulesDisjointChars!1659 rules!2135 (t!279115 rules!2135)))))

(assert (= (and d!1018142 (not res!1413342)) b!3503973))

(assert (= (and b!3503973 res!1413343) b!3503974))

(declare-fun m!3940691 () Bool)

(assert (=> b!3503973 m!3940691))

(declare-fun m!3940693 () Bool)

(assert (=> b!3503974 m!3940693))

(assert (=> b!3503177 d!1018142))

(declare-fun d!1018144 () Bool)

(declare-fun lt!1194734 () Bool)

(assert (=> d!1018144 (= lt!1194734 (isEmpty!21730 (list!13622 (_2!21680 lt!1194341))))))

(assert (=> d!1018144 (= lt!1194734 (isEmpty!21731 (c!602586 (_2!21680 lt!1194341))))))

(assert (=> d!1018144 (= (isEmpty!21722 (_2!21680 lt!1194341)) lt!1194734)))

(declare-fun bs!563876 () Bool)

(assert (= bs!563876 d!1018144))

(declare-fun m!3940695 () Bool)

(assert (=> bs!563876 m!3940695))

(assert (=> bs!563876 m!3940695))

(declare-fun m!3940697 () Bool)

(assert (=> bs!563876 m!3940697))

(declare-fun m!3940699 () Bool)

(assert (=> bs!563876 m!3940699))

(assert (=> b!3503155 d!1018144))

(declare-fun d!1018146 () Bool)

(declare-fun res!1413348 () Bool)

(declare-fun e!2169435 () Bool)

(assert (=> d!1018146 (=> (not res!1413348) (not e!2169435))))

(assert (=> d!1018146 (= res!1413348 (not (isEmpty!21730 (originalCharacters!6179 separatorToken!241))))))

(assert (=> d!1018146 (= (inv!50509 separatorToken!241) e!2169435)))

(declare-fun b!3503983 () Bool)

(declare-fun res!1413349 () Bool)

(assert (=> b!3503983 (=> (not res!1413349) (not e!2169435))))

(assert (=> b!3503983 (= res!1413349 (= (originalCharacters!6179 separatorToken!241) (list!13622 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (value!176214 separatorToken!241)))))))

(declare-fun b!3503984 () Bool)

(assert (=> b!3503984 (= e!2169435 (= (size!28348 separatorToken!241) (size!28350 (originalCharacters!6179 separatorToken!241))))))

(assert (= (and d!1018146 res!1413348) b!3503983))

(assert (= (and b!3503983 res!1413349) b!3503984))

(declare-fun b_lambda!101833 () Bool)

(assert (=> (not b_lambda!101833) (not b!3503983)))

(assert (=> b!3503983 t!279128))

(declare-fun b_and!248617 () Bool)

(assert (= b_and!248581 (and (=> t!279128 result!238508) b_and!248617)))

(assert (=> b!3503983 t!279130))

(declare-fun b_and!248619 () Bool)

(assert (= b_and!248583 (and (=> t!279130 result!238512) b_and!248619)))

(assert (=> b!3503983 t!279132))

(declare-fun b_and!248621 () Bool)

(assert (= b_and!248585 (and (=> t!279132 result!238514) b_and!248621)))

(declare-fun m!3940709 () Bool)

(assert (=> d!1018146 m!3940709))

(assert (=> b!3503983 m!3939735))

(assert (=> b!3503983 m!3939735))

(declare-fun m!3940711 () Bool)

(assert (=> b!3503983 m!3940711))

(declare-fun m!3940713 () Bool)

(assert (=> b!3503984 m!3940713))

(assert (=> start!325600 d!1018146))

(declare-fun b!3503987 () Bool)

(declare-fun e!2169443 () Bool)

(assert (=> b!3503987 (= e!2169443 (nullable!3509 (regex!5465 lt!1194328)))))

(declare-fun b!3503988 () Bool)

(declare-fun e!2169439 () Bool)

(assert (=> b!3503988 (= e!2169439 (= (head!7366 lt!1194330) (c!602585 (regex!5465 lt!1194328))))))

(declare-fun b!3503989 () Bool)

(declare-fun e!2169438 () Bool)

(assert (=> b!3503989 (= e!2169438 (not (= (head!7366 lt!1194330) (c!602585 (regex!5465 lt!1194328)))))))

(declare-fun b!3503990 () Bool)

(declare-fun res!1413354 () Bool)

(assert (=> b!3503990 (=> (not res!1413354) (not e!2169439))))

(declare-fun call!252953 () Bool)

(assert (=> b!3503990 (= res!1413354 (not call!252953))))

(declare-fun b!3503991 () Bool)

(declare-fun e!2169440 () Bool)

(assert (=> b!3503991 (= e!2169440 e!2169438)))

(declare-fun res!1413357 () Bool)

(assert (=> b!3503991 (=> res!1413357 e!2169438)))

(assert (=> b!3503991 (= res!1413357 call!252953)))

(declare-fun b!3503992 () Bool)

(declare-fun res!1413350 () Bool)

(assert (=> b!3503992 (=> (not res!1413350) (not e!2169439))))

(assert (=> b!3503992 (= res!1413350 (isEmpty!21730 (tail!5474 lt!1194330)))))

(declare-fun d!1018152 () Bool)

(declare-fun e!2169441 () Bool)

(assert (=> d!1018152 e!2169441))

(declare-fun c!602738 () Bool)

(assert (=> d!1018152 (= c!602738 (is-EmptyExpr!10224 (regex!5465 lt!1194328)))))

(declare-fun lt!1194741 () Bool)

(assert (=> d!1018152 (= lt!1194741 e!2169443)))

(declare-fun c!602740 () Bool)

(assert (=> d!1018152 (= c!602740 (isEmpty!21730 lt!1194330))))

(assert (=> d!1018152 (validRegex!4665 (regex!5465 lt!1194328))))

(assert (=> d!1018152 (= (matchR!4808 (regex!5465 lt!1194328) lt!1194330) lt!1194741)))

(declare-fun b!3503993 () Bool)

(declare-fun res!1413352 () Bool)

(assert (=> b!3503993 (=> res!1413352 e!2169438)))

(assert (=> b!3503993 (= res!1413352 (not (isEmpty!21730 (tail!5474 lt!1194330))))))

(declare-fun b!3503994 () Bool)

(declare-fun res!1413356 () Bool)

(declare-fun e!2169442 () Bool)

(assert (=> b!3503994 (=> res!1413356 e!2169442)))

(assert (=> b!3503994 (= res!1413356 e!2169439)))

(declare-fun res!1413351 () Bool)

(assert (=> b!3503994 (=> (not res!1413351) (not e!2169439))))

(assert (=> b!3503994 (= res!1413351 lt!1194741)))

(declare-fun b!3503995 () Bool)

(assert (=> b!3503995 (= e!2169443 (matchR!4808 (derivativeStep!3062 (regex!5465 lt!1194328) (head!7366 lt!1194330)) (tail!5474 lt!1194330)))))

(declare-fun bm!252948 () Bool)

(assert (=> bm!252948 (= call!252953 (isEmpty!21730 lt!1194330))))

(declare-fun b!3503996 () Bool)

(assert (=> b!3503996 (= e!2169441 (= lt!1194741 call!252953))))

(declare-fun b!3503997 () Bool)

(declare-fun e!2169437 () Bool)

(assert (=> b!3503997 (= e!2169437 (not lt!1194741))))

(declare-fun b!3503998 () Bool)

(assert (=> b!3503998 (= e!2169442 e!2169440)))

(declare-fun res!1413355 () Bool)

(assert (=> b!3503998 (=> (not res!1413355) (not e!2169440))))

(assert (=> b!3503998 (= res!1413355 (not lt!1194741))))

(declare-fun b!3503999 () Bool)

(assert (=> b!3503999 (= e!2169441 e!2169437)))

(declare-fun c!602739 () Bool)

(assert (=> b!3503999 (= c!602739 (is-EmptyLang!10224 (regex!5465 lt!1194328)))))

(declare-fun b!3504000 () Bool)

(declare-fun res!1413353 () Bool)

(assert (=> b!3504000 (=> res!1413353 e!2169442)))

(assert (=> b!3504000 (= res!1413353 (not (is-ElementMatch!10224 (regex!5465 lt!1194328))))))

(assert (=> b!3504000 (= e!2169437 e!2169442)))

(assert (= (and d!1018152 c!602740) b!3503987))

(assert (= (and d!1018152 (not c!602740)) b!3503995))

(assert (= (and d!1018152 c!602738) b!3503996))

(assert (= (and d!1018152 (not c!602738)) b!3503999))

(assert (= (and b!3503999 c!602739) b!3503997))

(assert (= (and b!3503999 (not c!602739)) b!3504000))

(assert (= (and b!3504000 (not res!1413353)) b!3503994))

(assert (= (and b!3503994 res!1413351) b!3503990))

(assert (= (and b!3503990 res!1413354) b!3503992))

(assert (= (and b!3503992 res!1413350) b!3503988))

(assert (= (and b!3503994 (not res!1413356)) b!3503998))

(assert (= (and b!3503998 res!1413355) b!3503991))

(assert (= (and b!3503991 (not res!1413357)) b!3503993))

(assert (= (and b!3503993 (not res!1413352)) b!3503989))

(assert (= (or b!3503996 b!3503990 b!3503991) bm!252948))

(declare-fun m!3940715 () Bool)

(assert (=> bm!252948 m!3940715))

(declare-fun m!3940717 () Bool)

(assert (=> b!3503995 m!3940717))

(assert (=> b!3503995 m!3940717))

(declare-fun m!3940719 () Bool)

(assert (=> b!3503995 m!3940719))

(declare-fun m!3940721 () Bool)

(assert (=> b!3503995 m!3940721))

(assert (=> b!3503995 m!3940719))

(assert (=> b!3503995 m!3940721))

(declare-fun m!3940723 () Bool)

(assert (=> b!3503995 m!3940723))

(assert (=> b!3503989 m!3940717))

(declare-fun m!3940725 () Bool)

(assert (=> b!3503987 m!3940725))

(assert (=> b!3503988 m!3940717))

(assert (=> b!3503993 m!3940721))

(assert (=> b!3503993 m!3940721))

(declare-fun m!3940727 () Bool)

(assert (=> b!3503993 m!3940727))

(assert (=> d!1018152 m!3940715))

(declare-fun m!3940729 () Bool)

(assert (=> d!1018152 m!3940729))

(assert (=> b!3503992 m!3940721))

(assert (=> b!3503992 m!3940721))

(assert (=> b!3503992 m!3940727))

(assert (=> b!3503141 d!1018152))

(declare-fun d!1018154 () Bool)

(assert (=> d!1018154 (= (get!11963 lt!1194347) (v!37030 lt!1194347))))

(assert (=> b!3503141 d!1018154))

(declare-fun d!1018156 () Bool)

(declare-fun lt!1194744 () Token!10296)

(assert (=> d!1018156 (= lt!1194744 (apply!8858 (list!13624 (_1!21680 lt!1194341)) 0))))

(assert (=> d!1018156 (= lt!1194744 (apply!8859 (c!602587 (_1!21680 lt!1194341)) 0))))

(declare-fun e!2169448 () Bool)

(assert (=> d!1018156 e!2169448))

(declare-fun res!1413362 () Bool)

(assert (=> d!1018156 (=> (not res!1413362) (not e!2169448))))

(assert (=> d!1018156 (= res!1413362 (<= 0 0))))

(assert (=> d!1018156 (= (apply!8855 (_1!21680 lt!1194341) 0) lt!1194744)))

(declare-fun b!3504005 () Bool)

(assert (=> b!3504005 (= e!2169448 (< 0 (size!28349 (_1!21680 lt!1194341))))))

(assert (= (and d!1018156 res!1413362) b!3504005))

(assert (=> d!1018156 m!3940267))

(assert (=> d!1018156 m!3940267))

(declare-fun m!3940731 () Bool)

(assert (=> d!1018156 m!3940731))

(declare-fun m!3940733 () Bool)

(assert (=> d!1018156 m!3940733))

(assert (=> b!3504005 m!3939417))

(assert (=> b!3503162 d!1018156))

(declare-fun e!2169451 () Bool)

(declare-fun lt!1194746 () List!37415)

(declare-fun b!3504011 () Bool)

(assert (=> b!3504011 (= e!2169451 (or (not (= lt!1194317 Nil!37291)) (= lt!1194746 (++!9226 lt!1194330 lt!1194333))))))

(declare-fun b!3504008 () Bool)

(declare-fun e!2169452 () List!37415)

(assert (=> b!3504008 (= e!2169452 lt!1194317)))

(declare-fun b!3504010 () Bool)

(declare-fun res!1413365 () Bool)

(assert (=> b!3504010 (=> (not res!1413365) (not e!2169451))))

(assert (=> b!3504010 (= res!1413365 (= (size!28350 lt!1194746) (+ (size!28350 (++!9226 lt!1194330 lt!1194333)) (size!28350 lt!1194317))))))

(declare-fun d!1018158 () Bool)

(assert (=> d!1018158 e!2169451))

(declare-fun res!1413366 () Bool)

(assert (=> d!1018158 (=> (not res!1413366) (not e!2169451))))

(assert (=> d!1018158 (= res!1413366 (= (content!5242 lt!1194746) (set.union (content!5242 (++!9226 lt!1194330 lt!1194333)) (content!5242 lt!1194317))))))

(assert (=> d!1018158 (= lt!1194746 e!2169452)))

(declare-fun c!602741 () Bool)

(assert (=> d!1018158 (= c!602741 (is-Nil!37291 (++!9226 lt!1194330 lt!1194333)))))

(assert (=> d!1018158 (= (++!9226 (++!9226 lt!1194330 lt!1194333) lt!1194317) lt!1194746)))

(declare-fun b!3504009 () Bool)

(assert (=> b!3504009 (= e!2169452 (Cons!37291 (h!42711 (++!9226 lt!1194330 lt!1194333)) (++!9226 (t!279114 (++!9226 lt!1194330 lt!1194333)) lt!1194317)))))

(assert (= (and d!1018158 c!602741) b!3504008))

(assert (= (and d!1018158 (not c!602741)) b!3504009))

(assert (= (and d!1018158 res!1413366) b!3504010))

(assert (= (and b!3504010 res!1413365) b!3504011))

(declare-fun m!3940741 () Bool)

(assert (=> b!3504010 m!3940741))

(assert (=> b!3504010 m!3939479))

(declare-fun m!3940743 () Bool)

(assert (=> b!3504010 m!3940743))

(assert (=> b!3504010 m!3939721))

(declare-fun m!3940745 () Bool)

(assert (=> d!1018158 m!3940745))

(assert (=> d!1018158 m!3939479))

(declare-fun m!3940747 () Bool)

(assert (=> d!1018158 m!3940747))

(assert (=> d!1018158 m!3939725))

(declare-fun m!3940749 () Bool)

(assert (=> b!3504009 m!3940749))

(assert (=> b!3503164 d!1018158))

(declare-fun e!2169453 () Bool)

(declare-fun lt!1194747 () List!37415)

(declare-fun b!3504015 () Bool)

(assert (=> b!3504015 (= e!2169453 (or (not (= lt!1194333 Nil!37291)) (= lt!1194747 lt!1194330)))))

(declare-fun b!3504012 () Bool)

(declare-fun e!2169454 () List!37415)

(assert (=> b!3504012 (= e!2169454 lt!1194333)))

(declare-fun b!3504014 () Bool)

(declare-fun res!1413367 () Bool)

(assert (=> b!3504014 (=> (not res!1413367) (not e!2169453))))

(assert (=> b!3504014 (= res!1413367 (= (size!28350 lt!1194747) (+ (size!28350 lt!1194330) (size!28350 lt!1194333))))))

(declare-fun d!1018162 () Bool)

(assert (=> d!1018162 e!2169453))

(declare-fun res!1413368 () Bool)

(assert (=> d!1018162 (=> (not res!1413368) (not e!2169453))))

(assert (=> d!1018162 (= res!1413368 (= (content!5242 lt!1194747) (set.union (content!5242 lt!1194330) (content!5242 lt!1194333))))))

(assert (=> d!1018162 (= lt!1194747 e!2169454)))

(declare-fun c!602742 () Bool)

(assert (=> d!1018162 (= c!602742 (is-Nil!37291 lt!1194330))))

(assert (=> d!1018162 (= (++!9226 lt!1194330 lt!1194333) lt!1194747)))

(declare-fun b!3504013 () Bool)

(assert (=> b!3504013 (= e!2169454 (Cons!37291 (h!42711 lt!1194330) (++!9226 (t!279114 lt!1194330) lt!1194333)))))

(assert (= (and d!1018162 c!602742) b!3504012))

(assert (= (and d!1018162 (not c!602742)) b!3504013))

(assert (= (and d!1018162 res!1413368) b!3504014))

(assert (= (and b!3504014 res!1413367) b!3504015))

(declare-fun m!3940751 () Bool)

(assert (=> b!3504014 m!3940751))

(assert (=> b!3504014 m!3939393))

(assert (=> b!3504014 m!3939709))

(declare-fun m!3940753 () Bool)

(assert (=> d!1018162 m!3940753))

(assert (=> d!1018162 m!3939861))

(assert (=> d!1018162 m!3939715))

(declare-fun m!3940755 () Bool)

(assert (=> b!3504013 m!3940755))

(assert (=> b!3503164 d!1018162))

(declare-fun d!1018164 () Bool)

(declare-fun res!1413369 () Bool)

(declare-fun e!2169455 () Bool)

(assert (=> d!1018164 (=> (not res!1413369) (not e!2169455))))

(assert (=> d!1018164 (= res!1413369 (not (isEmpty!21730 (originalCharacters!6179 (h!42713 tokens!494)))))))

(assert (=> d!1018164 (= (inv!50509 (h!42713 tokens!494)) e!2169455)))

(declare-fun b!3504016 () Bool)

(declare-fun res!1413370 () Bool)

(assert (=> b!3504016 (=> (not res!1413370) (not e!2169455))))

(assert (=> b!3504016 (= res!1413370 (= (originalCharacters!6179 (h!42713 tokens!494)) (list!13622 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (value!176214 (h!42713 tokens!494))))))))

(declare-fun b!3504017 () Bool)

(assert (=> b!3504017 (= e!2169455 (= (size!28348 (h!42713 tokens!494)) (size!28350 (originalCharacters!6179 (h!42713 tokens!494)))))))

(assert (= (and d!1018164 res!1413369) b!3504016))

(assert (= (and b!3504016 res!1413370) b!3504017))

(declare-fun b_lambda!101837 () Bool)

(assert (=> (not b_lambda!101837) (not b!3504016)))

(declare-fun t!279176 () Bool)

(declare-fun tb!194301 () Bool)

(assert (=> (and b!3503178 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279176) tb!194301))

(declare-fun b!3504020 () Bool)

(declare-fun e!2169458 () Bool)

(declare-fun tp!1084542 () Bool)

(assert (=> b!3504020 (= e!2169458 (and (inv!50513 (c!602586 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (value!176214 (h!42713 tokens!494))))) tp!1084542))))

(declare-fun result!238554 () Bool)

(assert (=> tb!194301 (= result!238554 (and (inv!50514 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (value!176214 (h!42713 tokens!494)))) e!2169458))))

(assert (= tb!194301 b!3504020))

(declare-fun m!3940759 () Bool)

(assert (=> b!3504020 m!3940759))

(declare-fun m!3940761 () Bool)

(assert (=> tb!194301 m!3940761))

(assert (=> b!3504016 t!279176))

(declare-fun b_and!248625 () Bool)

(assert (= b_and!248617 (and (=> t!279176 result!238554) b_and!248625)))

(declare-fun t!279180 () Bool)

(declare-fun tb!194305 () Bool)

(assert (=> (and b!3503145 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279180) tb!194305))

(declare-fun result!238558 () Bool)

(assert (= result!238558 result!238554))

(assert (=> b!3504016 t!279180))

(declare-fun b_and!248629 () Bool)

(assert (= b_and!248619 (and (=> t!279180 result!238558) b_and!248629)))

(declare-fun t!279184 () Bool)

(declare-fun tb!194309 () Bool)

(assert (=> (and b!3503174 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279184) tb!194309))

(declare-fun result!238562 () Bool)

(assert (= result!238562 result!238554))

(assert (=> b!3504016 t!279184))

(declare-fun b_and!248631 () Bool)

(assert (= b_and!248621 (and (=> t!279184 result!238562) b_and!248631)))

(declare-fun m!3940763 () Bool)

(assert (=> d!1018164 m!3940763))

(declare-fun m!3940765 () Bool)

(assert (=> b!3504016 m!3940765))

(assert (=> b!3504016 m!3940765))

(declare-fun m!3940767 () Bool)

(assert (=> b!3504016 m!3940767))

(declare-fun m!3940771 () Bool)

(assert (=> b!3504017 m!3940771))

(assert (=> b!3503142 d!1018164))

(declare-fun b!3504024 () Bool)

(declare-fun e!2169460 () Bool)

(declare-fun lt!1194748 () List!37415)

(assert (=> b!3504024 (= e!2169460 (or (not (= Nil!37291 Nil!37291)) (= lt!1194748 lt!1194346)))))

(declare-fun b!3504021 () Bool)

(declare-fun e!2169461 () List!37415)

(assert (=> b!3504021 (= e!2169461 Nil!37291)))

(declare-fun b!3504023 () Bool)

(declare-fun res!1413371 () Bool)

(assert (=> b!3504023 (=> (not res!1413371) (not e!2169460))))

(assert (=> b!3504023 (= res!1413371 (= (size!28350 lt!1194748) (+ (size!28350 lt!1194346) (size!28350 Nil!37291))))))

(declare-fun d!1018168 () Bool)

(assert (=> d!1018168 e!2169460))

(declare-fun res!1413372 () Bool)

(assert (=> d!1018168 (=> (not res!1413372) (not e!2169460))))

(assert (=> d!1018168 (= res!1413372 (= (content!5242 lt!1194748) (set.union (content!5242 lt!1194346) (content!5242 Nil!37291))))))

(assert (=> d!1018168 (= lt!1194748 e!2169461)))

(declare-fun c!602743 () Bool)

(assert (=> d!1018168 (= c!602743 (is-Nil!37291 lt!1194346))))

(assert (=> d!1018168 (= (++!9226 lt!1194346 Nil!37291) lt!1194748)))

(declare-fun b!3504022 () Bool)

(assert (=> b!3504022 (= e!2169461 (Cons!37291 (h!42711 lt!1194346) (++!9226 (t!279114 lt!1194346) Nil!37291)))))

(assert (= (and d!1018168 c!602743) b!3504021))

(assert (= (and d!1018168 (not c!602743)) b!3504022))

(assert (= (and d!1018168 res!1413372) b!3504023))

(assert (= (and b!3504023 res!1413371) b!3504024))

(declare-fun m!3940773 () Bool)

(assert (=> b!3504023 m!3940773))

(assert (=> b!3504023 m!3939707))

(assert (=> b!3504023 m!3940129))

(declare-fun m!3940775 () Bool)

(assert (=> d!1018168 m!3940775))

(assert (=> d!1018168 m!3939713))

(declare-fun m!3940777 () Bool)

(assert (=> d!1018168 m!3940777))

(declare-fun m!3940779 () Bool)

(assert (=> b!3504022 m!3940779))

(assert (=> b!3503163 d!1018168))

(declare-fun d!1018172 () Bool)

(assert (=> d!1018172 (= (isEmpty!21723 rules!2135) (is-Nil!37292 rules!2135))))

(assert (=> b!3503160 d!1018172))

(declare-fun d!1018174 () Bool)

(assert (=> d!1018174 (= (list!13622 (charsOf!3479 (h!42713 tokens!494))) (list!13625 (c!602586 (charsOf!3479 (h!42713 tokens!494)))))))

(declare-fun bs!563878 () Bool)

(assert (= bs!563878 d!1018174))

(declare-fun m!3940781 () Bool)

(assert (=> bs!563878 m!3940781))

(assert (=> b!3503181 d!1018174))

(declare-fun d!1018176 () Bool)

(declare-fun lt!1194749 () BalanceConc!22224)

(assert (=> d!1018176 (= (list!13622 lt!1194749) (originalCharacters!6179 (h!42713 tokens!494)))))

(assert (=> d!1018176 (= lt!1194749 (dynLambda!15839 (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (value!176214 (h!42713 tokens!494))))))

(assert (=> d!1018176 (= (charsOf!3479 (h!42713 tokens!494)) lt!1194749)))

(declare-fun b_lambda!101839 () Bool)

(assert (=> (not b_lambda!101839) (not d!1018176)))

(assert (=> d!1018176 t!279176))

(declare-fun b_and!248635 () Bool)

(assert (= b_and!248625 (and (=> t!279176 result!238554) b_and!248635)))

(assert (=> d!1018176 t!279180))

(declare-fun b_and!248637 () Bool)

(assert (= b_and!248629 (and (=> t!279180 result!238558) b_and!248637)))

(assert (=> d!1018176 t!279184))

(declare-fun b_and!248639 () Bool)

(assert (= b_and!248631 (and (=> t!279184 result!238562) b_and!248639)))

(declare-fun m!3940783 () Bool)

(assert (=> d!1018176 m!3940783))

(assert (=> d!1018176 m!3940765))

(assert (=> b!3503181 d!1018176))

(declare-fun d!1018178 () Bool)

(assert (=> d!1018178 (not (matchR!4808 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333))))

(declare-fun lt!1194752 () Unit!52855)

(declare-fun choose!20324 (Regex!10224 List!37415 C!20634) Unit!52855)

(assert (=> d!1018178 (= lt!1194752 (choose!20324 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333 lt!1194335))))

(assert (=> d!1018178 (validRegex!4665 (regex!5465 (rule!8091 separatorToken!241)))))

(assert (=> d!1018178 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!523 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333 lt!1194335) lt!1194752)))

(declare-fun bs!563879 () Bool)

(assert (= bs!563879 d!1018178))

(assert (=> bs!563879 m!3939329))

(declare-fun m!3940785 () Bool)

(assert (=> bs!563879 m!3940785))

(declare-fun m!3940787 () Bool)

(assert (=> bs!563879 m!3940787))

(assert (=> b!3503159 d!1018178))

(declare-fun b!3504025 () Bool)

(declare-fun e!2169468 () Bool)

(assert (=> b!3504025 (= e!2169468 (nullable!3509 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun b!3504026 () Bool)

(declare-fun e!2169464 () Bool)

(assert (=> b!3504026 (= e!2169464 (= (head!7366 lt!1194333) (c!602585 (regex!5465 (rule!8091 separatorToken!241)))))))

(declare-fun b!3504027 () Bool)

(declare-fun e!2169463 () Bool)

(assert (=> b!3504027 (= e!2169463 (not (= (head!7366 lt!1194333) (c!602585 (regex!5465 (rule!8091 separatorToken!241))))))))

(declare-fun b!3504028 () Bool)

(declare-fun res!1413377 () Bool)

(assert (=> b!3504028 (=> (not res!1413377) (not e!2169464))))

(declare-fun call!252954 () Bool)

(assert (=> b!3504028 (= res!1413377 (not call!252954))))

(declare-fun b!3504029 () Bool)

(declare-fun e!2169465 () Bool)

(assert (=> b!3504029 (= e!2169465 e!2169463)))

(declare-fun res!1413380 () Bool)

(assert (=> b!3504029 (=> res!1413380 e!2169463)))

(assert (=> b!3504029 (= res!1413380 call!252954)))

(declare-fun b!3504030 () Bool)

(declare-fun res!1413373 () Bool)

(assert (=> b!3504030 (=> (not res!1413373) (not e!2169464))))

(assert (=> b!3504030 (= res!1413373 (isEmpty!21730 (tail!5474 lt!1194333)))))

(declare-fun d!1018180 () Bool)

(declare-fun e!2169466 () Bool)

(assert (=> d!1018180 e!2169466))

(declare-fun c!602745 () Bool)

(assert (=> d!1018180 (= c!602745 (is-EmptyExpr!10224 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun lt!1194753 () Bool)

(assert (=> d!1018180 (= lt!1194753 e!2169468)))

(declare-fun c!602747 () Bool)

(assert (=> d!1018180 (= c!602747 (isEmpty!21730 lt!1194333))))

(assert (=> d!1018180 (validRegex!4665 (regex!5465 (rule!8091 separatorToken!241)))))

(assert (=> d!1018180 (= (matchR!4808 (regex!5465 (rule!8091 separatorToken!241)) lt!1194333) lt!1194753)))

(declare-fun b!3504031 () Bool)

(declare-fun res!1413375 () Bool)

(assert (=> b!3504031 (=> res!1413375 e!2169463)))

(assert (=> b!3504031 (= res!1413375 (not (isEmpty!21730 (tail!5474 lt!1194333))))))

(declare-fun b!3504032 () Bool)

(declare-fun res!1413379 () Bool)

(declare-fun e!2169467 () Bool)

(assert (=> b!3504032 (=> res!1413379 e!2169467)))

(assert (=> b!3504032 (= res!1413379 e!2169464)))

(declare-fun res!1413374 () Bool)

(assert (=> b!3504032 (=> (not res!1413374) (not e!2169464))))

(assert (=> b!3504032 (= res!1413374 lt!1194753)))

(declare-fun b!3504033 () Bool)

(assert (=> b!3504033 (= e!2169468 (matchR!4808 (derivativeStep!3062 (regex!5465 (rule!8091 separatorToken!241)) (head!7366 lt!1194333)) (tail!5474 lt!1194333)))))

(declare-fun bm!252949 () Bool)

(assert (=> bm!252949 (= call!252954 (isEmpty!21730 lt!1194333))))

(declare-fun b!3504034 () Bool)

(assert (=> b!3504034 (= e!2169466 (= lt!1194753 call!252954))))

(declare-fun b!3504035 () Bool)

(declare-fun e!2169462 () Bool)

(assert (=> b!3504035 (= e!2169462 (not lt!1194753))))

(declare-fun b!3504036 () Bool)

(assert (=> b!3504036 (= e!2169467 e!2169465)))

(declare-fun res!1413378 () Bool)

(assert (=> b!3504036 (=> (not res!1413378) (not e!2169465))))

(assert (=> b!3504036 (= res!1413378 (not lt!1194753))))

(declare-fun b!3504037 () Bool)

(assert (=> b!3504037 (= e!2169466 e!2169462)))

(declare-fun c!602746 () Bool)

(assert (=> b!3504037 (= c!602746 (is-EmptyLang!10224 (regex!5465 (rule!8091 separatorToken!241))))))

(declare-fun b!3504038 () Bool)

(declare-fun res!1413376 () Bool)

(assert (=> b!3504038 (=> res!1413376 e!2169467)))

(assert (=> b!3504038 (= res!1413376 (not (is-ElementMatch!10224 (regex!5465 (rule!8091 separatorToken!241)))))))

(assert (=> b!3504038 (= e!2169462 e!2169467)))

(assert (= (and d!1018180 c!602747) b!3504025))

(assert (= (and d!1018180 (not c!602747)) b!3504033))

(assert (= (and d!1018180 c!602745) b!3504034))

(assert (= (and d!1018180 (not c!602745)) b!3504037))

(assert (= (and b!3504037 c!602746) b!3504035))

(assert (= (and b!3504037 (not c!602746)) b!3504038))

(assert (= (and b!3504038 (not res!1413376)) b!3504032))

(assert (= (and b!3504032 res!1413374) b!3504028))

(assert (= (and b!3504028 res!1413377) b!3504030))

(assert (= (and b!3504030 res!1413373) b!3504026))

(assert (= (and b!3504032 (not res!1413379)) b!3504036))

(assert (= (and b!3504036 res!1413378) b!3504029))

(assert (= (and b!3504029 (not res!1413380)) b!3504031))

(assert (= (and b!3504031 (not res!1413375)) b!3504027))

(assert (= (or b!3504034 b!3504028 b!3504029) bm!252949))

(assert (=> bm!252949 m!3939781))

(assert (=> b!3504033 m!3939419))

(assert (=> b!3504033 m!3939419))

(declare-fun m!3940789 () Bool)

(assert (=> b!3504033 m!3940789))

(assert (=> b!3504033 m!3939785))

(assert (=> b!3504033 m!3940789))

(assert (=> b!3504033 m!3939785))

(declare-fun m!3940791 () Bool)

(assert (=> b!3504033 m!3940791))

(assert (=> b!3504027 m!3939419))

(declare-fun m!3940793 () Bool)

(assert (=> b!3504025 m!3940793))

(assert (=> b!3504026 m!3939419))

(assert (=> b!3504031 m!3939785))

(assert (=> b!3504031 m!3939785))

(assert (=> b!3504031 m!3939791))

(assert (=> d!1018180 m!3939781))

(assert (=> d!1018180 m!3940787))

(assert (=> b!3504030 m!3939785))

(assert (=> b!3504030 m!3939785))

(assert (=> b!3504030 m!3939791))

(assert (=> b!3503159 d!1018180))

(declare-fun d!1018182 () Bool)

(assert (=> d!1018182 (= (list!13622 lt!1194320) (list!13625 (c!602586 lt!1194320)))))

(declare-fun bs!563880 () Bool)

(assert (= bs!563880 d!1018182))

(declare-fun m!3940795 () Bool)

(assert (=> bs!563880 m!3940795))

(assert (=> b!3503161 d!1018182))

(declare-fun d!1018184 () Bool)

(declare-fun lt!1194757 () BalanceConc!22224)

(assert (=> d!1018184 (= (list!13622 lt!1194757) (printListTailRec!709 thiss!18206 (dropList!1226 lt!1194339 0) (list!13622 (BalanceConc!22225 Empty!11305))))))

(declare-fun e!2169470 () BalanceConc!22224)

(assert (=> d!1018184 (= lt!1194757 e!2169470)))

(declare-fun c!602748 () Bool)

(assert (=> d!1018184 (= c!602748 (>= 0 (size!28349 lt!1194339)))))

(declare-fun e!2169469 () Bool)

(assert (=> d!1018184 e!2169469))

(declare-fun res!1413381 () Bool)

(assert (=> d!1018184 (=> (not res!1413381) (not e!2169469))))

(assert (=> d!1018184 (= res!1413381 (>= 0 0))))

(assert (=> d!1018184 (= (printTailRec!1549 thiss!18206 lt!1194339 0 (BalanceConc!22225 Empty!11305)) lt!1194757)))

(declare-fun b!3504039 () Bool)

(assert (=> b!3504039 (= e!2169469 (<= 0 (size!28349 lt!1194339)))))

(declare-fun b!3504040 () Bool)

(assert (=> b!3504040 (= e!2169470 (BalanceConc!22225 Empty!11305))))

(declare-fun b!3504041 () Bool)

(assert (=> b!3504041 (= e!2169470 (printTailRec!1549 thiss!18206 lt!1194339 (+ 0 1) (++!9228 (BalanceConc!22225 Empty!11305) (charsOf!3479 (apply!8855 lt!1194339 0)))))))

(declare-fun lt!1194756 () List!37417)

(assert (=> b!3504041 (= lt!1194756 (list!13624 lt!1194339))))

(declare-fun lt!1194760 () Unit!52855)

(assert (=> b!3504041 (= lt!1194760 (lemmaDropApply!1184 lt!1194756 0))))

(assert (=> b!3504041 (= (head!7368 (drop!2038 lt!1194756 0)) (apply!8858 lt!1194756 0))))

(declare-fun lt!1194755 () Unit!52855)

(assert (=> b!3504041 (= lt!1194755 lt!1194760)))

(declare-fun lt!1194758 () List!37417)

(assert (=> b!3504041 (= lt!1194758 (list!13624 lt!1194339))))

(declare-fun lt!1194754 () Unit!52855)

(assert (=> b!3504041 (= lt!1194754 (lemmaDropTail!1068 lt!1194758 0))))

(assert (=> b!3504041 (= (tail!5476 (drop!2038 lt!1194758 0)) (drop!2038 lt!1194758 (+ 0 1)))))

(declare-fun lt!1194759 () Unit!52855)

(assert (=> b!3504041 (= lt!1194759 lt!1194754)))

(assert (= (and d!1018184 res!1413381) b!3504039))

(assert (= (and d!1018184 c!602748) b!3504040))

(assert (= (and d!1018184 (not c!602748)) b!3504041))

(declare-fun m!3940797 () Bool)

(assert (=> d!1018184 m!3940797))

(assert (=> d!1018184 m!3940423))

(declare-fun m!3940799 () Bool)

(assert (=> d!1018184 m!3940799))

(assert (=> d!1018184 m!3940797))

(declare-fun m!3940801 () Bool)

(assert (=> d!1018184 m!3940801))

(declare-fun m!3940803 () Bool)

(assert (=> d!1018184 m!3940803))

(assert (=> d!1018184 m!3940423))

(assert (=> b!3504039 m!3940803))

(declare-fun m!3940805 () Bool)

(assert (=> b!3504041 m!3940805))

(declare-fun m!3940807 () Bool)

(assert (=> b!3504041 m!3940807))

(declare-fun m!3940809 () Bool)

(assert (=> b!3504041 m!3940809))

(declare-fun m!3940811 () Bool)

(assert (=> b!3504041 m!3940811))

(assert (=> b!3504041 m!3940807))

(declare-fun m!3940813 () Bool)

(assert (=> b!3504041 m!3940813))

(assert (=> b!3504041 m!3940813))

(declare-fun m!3940815 () Bool)

(assert (=> b!3504041 m!3940815))

(declare-fun m!3940817 () Bool)

(assert (=> b!3504041 m!3940817))

(declare-fun m!3940819 () Bool)

(assert (=> b!3504041 m!3940819))

(assert (=> b!3504041 m!3940811))

(declare-fun m!3940821 () Bool)

(assert (=> b!3504041 m!3940821))

(declare-fun m!3940823 () Bool)

(assert (=> b!3504041 m!3940823))

(assert (=> b!3504041 m!3940815))

(declare-fun m!3940825 () Bool)

(assert (=> b!3504041 m!3940825))

(assert (=> b!3504041 m!3940819))

(declare-fun m!3940827 () Bool)

(assert (=> b!3504041 m!3940827))

(declare-fun m!3940829 () Bool)

(assert (=> b!3504041 m!3940829))

(assert (=> b!3503161 d!1018184))

(declare-fun d!1018186 () Bool)

(declare-fun lt!1194761 () BalanceConc!22224)

(assert (=> d!1018186 (= (list!13622 lt!1194761) (printList!1602 thiss!18206 (list!13624 lt!1194339)))))

(assert (=> d!1018186 (= lt!1194761 (printTailRec!1549 thiss!18206 lt!1194339 0 (BalanceConc!22225 Empty!11305)))))

(assert (=> d!1018186 (= (print!2119 thiss!18206 lt!1194339) lt!1194761)))

(declare-fun bs!563881 () Bool)

(assert (= bs!563881 d!1018186))

(declare-fun m!3940831 () Bool)

(assert (=> bs!563881 m!3940831))

(assert (=> bs!563881 m!3940805))

(assert (=> bs!563881 m!3940805))

(declare-fun m!3940833 () Bool)

(assert (=> bs!563881 m!3940833))

(assert (=> bs!563881 m!3939463))

(assert (=> b!3503161 d!1018186))

(declare-fun d!1018188 () Bool)

(declare-fun e!2169471 () Bool)

(assert (=> d!1018188 e!2169471))

(declare-fun res!1413382 () Bool)

(assert (=> d!1018188 (=> (not res!1413382) (not e!2169471))))

(declare-fun lt!1194762 () BalanceConc!22226)

(assert (=> d!1018188 (= res!1413382 (= (list!13624 lt!1194762) (Cons!37293 (h!42713 tokens!494) Nil!37293)))))

(assert (=> d!1018188 (= lt!1194762 (singleton!1141 (h!42713 tokens!494)))))

(assert (=> d!1018188 (= (singletonSeq!2561 (h!42713 tokens!494)) lt!1194762)))

(declare-fun b!3504042 () Bool)

(assert (=> b!3504042 (= e!2169471 (isBalanced!3444 (c!602587 lt!1194762)))))

(assert (= (and d!1018188 res!1413382) b!3504042))

(declare-fun m!3940835 () Bool)

(assert (=> d!1018188 m!3940835))

(declare-fun m!3940837 () Bool)

(assert (=> d!1018188 m!3940837))

(declare-fun m!3940839 () Bool)

(assert (=> b!3504042 m!3940839))

(assert (=> b!3503161 d!1018188))

(declare-fun d!1018190 () Bool)

(declare-fun c!602751 () Bool)

(assert (=> d!1018190 (= c!602751 (is-Cons!37293 (Cons!37293 (h!42713 tokens!494) Nil!37293)))))

(declare-fun e!2169474 () List!37415)

(assert (=> d!1018190 (= (printList!1602 thiss!18206 (Cons!37293 (h!42713 tokens!494) Nil!37293)) e!2169474)))

(declare-fun b!3504047 () Bool)

(assert (=> b!3504047 (= e!2169474 (++!9226 (list!13622 (charsOf!3479 (h!42713 (Cons!37293 (h!42713 tokens!494) Nil!37293)))) (printList!1602 thiss!18206 (t!279116 (Cons!37293 (h!42713 tokens!494) Nil!37293)))))))

(declare-fun b!3504048 () Bool)

(assert (=> b!3504048 (= e!2169474 Nil!37291)))

(assert (= (and d!1018190 c!602751) b!3504047))

(assert (= (and d!1018190 (not c!602751)) b!3504048))

(declare-fun m!3940841 () Bool)

(assert (=> b!3504047 m!3940841))

(assert (=> b!3504047 m!3940841))

(declare-fun m!3940843 () Bool)

(assert (=> b!3504047 m!3940843))

(declare-fun m!3940845 () Bool)

(assert (=> b!3504047 m!3940845))

(assert (=> b!3504047 m!3940843))

(assert (=> b!3504047 m!3940845))

(declare-fun m!3940847 () Bool)

(assert (=> b!3504047 m!3940847))

(assert (=> b!3503161 d!1018190))

(declare-fun b!3504061 () Bool)

(declare-fun e!2169477 () Bool)

(declare-fun tp!1084557 () Bool)

(assert (=> b!3504061 (= e!2169477 tp!1084557)))

(declare-fun b!3504062 () Bool)

(declare-fun tp!1084555 () Bool)

(declare-fun tp!1084553 () Bool)

(assert (=> b!3504062 (= e!2169477 (and tp!1084555 tp!1084553))))

(declare-fun b!3504060 () Bool)

(declare-fun tp!1084556 () Bool)

(declare-fun tp!1084554 () Bool)

(assert (=> b!3504060 (= e!2169477 (and tp!1084556 tp!1084554))))

(declare-fun b!3504059 () Bool)

(declare-fun tp_is_empty!17599 () Bool)

(assert (=> b!3504059 (= e!2169477 tp_is_empty!17599)))

(assert (=> b!3503157 (= tp!1084489 e!2169477)))

(assert (= (and b!3503157 (is-ElementMatch!10224 (regex!5465 (rule!8091 (h!42713 tokens!494))))) b!3504059))

(assert (= (and b!3503157 (is-Concat!15919 (regex!5465 (rule!8091 (h!42713 tokens!494))))) b!3504060))

(assert (= (and b!3503157 (is-Star!10224 (regex!5465 (rule!8091 (h!42713 tokens!494))))) b!3504061))

(assert (= (and b!3503157 (is-Union!10224 (regex!5465 (rule!8091 (h!42713 tokens!494))))) b!3504062))

(declare-fun b!3504067 () Bool)

(declare-fun e!2169480 () Bool)

(declare-fun tp!1084560 () Bool)

(assert (=> b!3504067 (= e!2169480 (and tp_is_empty!17599 tp!1084560))))

(assert (=> b!3503146 (= tp!1084488 e!2169480)))

(assert (= (and b!3503146 (is-Cons!37291 (originalCharacters!6179 (h!42713 tokens!494)))) b!3504067))

(declare-fun b!3504070 () Bool)

(declare-fun e!2169481 () Bool)

(declare-fun tp!1084565 () Bool)

(assert (=> b!3504070 (= e!2169481 tp!1084565)))

(declare-fun b!3504071 () Bool)

(declare-fun tp!1084563 () Bool)

(declare-fun tp!1084561 () Bool)

(assert (=> b!3504071 (= e!2169481 (and tp!1084563 tp!1084561))))

(declare-fun b!3504069 () Bool)

(declare-fun tp!1084564 () Bool)

(declare-fun tp!1084562 () Bool)

(assert (=> b!3504069 (= e!2169481 (and tp!1084564 tp!1084562))))

(declare-fun b!3504068 () Bool)

(assert (=> b!3504068 (= e!2169481 tp_is_empty!17599)))

(assert (=> b!3503165 (= tp!1084487 e!2169481)))

(assert (= (and b!3503165 (is-ElementMatch!10224 (regex!5465 (h!42712 rules!2135)))) b!3504068))

(assert (= (and b!3503165 (is-Concat!15919 (regex!5465 (h!42712 rules!2135)))) b!3504069))

(assert (= (and b!3503165 (is-Star!10224 (regex!5465 (h!42712 rules!2135)))) b!3504070))

(assert (= (and b!3503165 (is-Union!10224 (regex!5465 (h!42712 rules!2135)))) b!3504071))

(declare-fun b!3504082 () Bool)

(declare-fun b_free!90509 () Bool)

(declare-fun b_next!91213 () Bool)

(assert (=> b!3504082 (= b_free!90509 (not b_next!91213))))

(declare-fun t!279186 () Bool)

(declare-fun tb!194311 () Bool)

(assert (=> (and b!3504082 (= (toValue!7709 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279186) tb!194311))

(declare-fun result!238570 () Bool)

(assert (= result!238570 result!238536))

(assert (=> d!1018010 t!279186))

(declare-fun tp!1084576 () Bool)

(declare-fun b_and!248641 () Bool)

(assert (=> b!3504082 (= tp!1084576 (and (=> t!279186 result!238570) b_and!248641))))

(declare-fun b_free!90511 () Bool)

(declare-fun b_next!91215 () Bool)

(assert (=> b!3504082 (= b_free!90511 (not b_next!91215))))

(declare-fun tb!194313 () Bool)

(declare-fun t!279188 () Bool)

(assert (=> (and b!3504082 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494)))))) t!279188) tb!194313))

(declare-fun result!238572 () Bool)

(assert (= result!238572 result!238516))

(assert (=> d!1017908 t!279188))

(declare-fun t!279190 () Bool)

(declare-fun tb!194315 () Bool)

(assert (=> (and b!3504082 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241)))) t!279190) tb!194315))

(declare-fun result!238574 () Bool)

(assert (= result!238574 result!238508))

(assert (=> b!3503983 t!279190))

(declare-fun tb!194317 () Bool)

(declare-fun t!279192 () Bool)

(assert (=> (and b!3504082 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279192) tb!194317))

(declare-fun result!238576 () Bool)

(assert (= result!238576 result!238554))

(assert (=> b!3504016 t!279192))

(assert (=> d!1017896 t!279190))

(assert (=> d!1018176 t!279192))

(declare-fun b_and!248643 () Bool)

(declare-fun tp!1084574 () Bool)

(assert (=> b!3504082 (= tp!1084574 (and (=> t!279192 result!238576) (=> t!279190 result!238574) (=> t!279188 result!238572) b_and!248643))))

(declare-fun e!2169491 () Bool)

(assert (=> b!3504082 (= e!2169491 (and tp!1084576 tp!1084574))))

(declare-fun b!3504081 () Bool)

(declare-fun e!2169493 () Bool)

(declare-fun tp!1084577 () Bool)

(assert (=> b!3504081 (= e!2169493 (and tp!1084577 (inv!50506 (tag!6095 (h!42712 (t!279115 rules!2135)))) (inv!50510 (transformation!5465 (h!42712 (t!279115 rules!2135)))) e!2169491))))

(declare-fun b!3504080 () Bool)

(declare-fun e!2169490 () Bool)

(declare-fun tp!1084575 () Bool)

(assert (=> b!3504080 (= e!2169490 (and e!2169493 tp!1084575))))

(assert (=> b!3503143 (= tp!1084482 e!2169490)))

(assert (= b!3504081 b!3504082))

(assert (= b!3504080 b!3504081))

(assert (= (and b!3503143 (is-Cons!37292 (t!279115 rules!2135))) b!3504080))

(declare-fun m!3940849 () Bool)

(assert (=> b!3504081 m!3940849))

(declare-fun m!3940851 () Bool)

(assert (=> b!3504081 m!3940851))

(declare-fun b!3504085 () Bool)

(declare-fun e!2169494 () Bool)

(declare-fun tp!1084582 () Bool)

(assert (=> b!3504085 (= e!2169494 tp!1084582)))

(declare-fun b!3504086 () Bool)

(declare-fun tp!1084580 () Bool)

(declare-fun tp!1084578 () Bool)

(assert (=> b!3504086 (= e!2169494 (and tp!1084580 tp!1084578))))

(declare-fun b!3504084 () Bool)

(declare-fun tp!1084581 () Bool)

(declare-fun tp!1084579 () Bool)

(assert (=> b!3504084 (= e!2169494 (and tp!1084581 tp!1084579))))

(declare-fun b!3504083 () Bool)

(assert (=> b!3504083 (= e!2169494 tp_is_empty!17599)))

(assert (=> b!3503153 (= tp!1084492 e!2169494)))

(assert (= (and b!3503153 (is-ElementMatch!10224 (regex!5465 (rule!8091 separatorToken!241)))) b!3504083))

(assert (= (and b!3503153 (is-Concat!15919 (regex!5465 (rule!8091 separatorToken!241)))) b!3504084))

(assert (= (and b!3503153 (is-Star!10224 (regex!5465 (rule!8091 separatorToken!241)))) b!3504085))

(assert (= (and b!3503153 (is-Union!10224 (regex!5465 (rule!8091 separatorToken!241)))) b!3504086))

(declare-fun b!3504106 () Bool)

(declare-fun b_free!90513 () Bool)

(declare-fun b_next!91217 () Bool)

(assert (=> b!3504106 (= b_free!90513 (not b_next!91217))))

(declare-fun t!279194 () Bool)

(declare-fun tb!194319 () Bool)

(assert (=> (and b!3504106 (= (toValue!7709 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279194) tb!194319))

(declare-fun result!238580 () Bool)

(assert (= result!238580 result!238536))

(assert (=> d!1018010 t!279194))

(declare-fun b_and!248645 () Bool)

(declare-fun tp!1084594 () Bool)

(assert (=> b!3504106 (= tp!1084594 (and (=> t!279194 result!238580) b_and!248645))))

(declare-fun b_free!90515 () Bool)

(declare-fun b_next!91219 () Bool)

(assert (=> b!3504106 (= b_free!90515 (not b_next!91219))))

(declare-fun t!279196 () Bool)

(declare-fun tb!194321 () Bool)

(assert (=> (and b!3504106 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494)))))) t!279196) tb!194321))

(declare-fun result!238582 () Bool)

(assert (= result!238582 result!238516))

(assert (=> d!1017908 t!279196))

(declare-fun tb!194323 () Bool)

(declare-fun t!279198 () Bool)

(assert (=> (and b!3504106 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241)))) t!279198) tb!194323))

(declare-fun result!238584 () Bool)

(assert (= result!238584 result!238508))

(assert (=> b!3503983 t!279198))

(declare-fun t!279200 () Bool)

(declare-fun tb!194325 () Bool)

(assert (=> (and b!3504106 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494))))) t!279200) tb!194325))

(declare-fun result!238586 () Bool)

(assert (= result!238586 result!238554))

(assert (=> b!3504016 t!279200))

(assert (=> d!1017896 t!279198))

(assert (=> d!1018176 t!279200))

(declare-fun tp!1084593 () Bool)

(declare-fun b_and!248647 () Bool)

(assert (=> b!3504106 (= tp!1084593 (and (=> t!279198 result!238584) (=> t!279200 result!238586) (=> t!279196 result!238582) b_and!248647))))

(declare-fun b!3504104 () Bool)

(declare-fun tp!1084595 () Bool)

(declare-fun e!2169516 () Bool)

(declare-fun e!2169514 () Bool)

(assert (=> b!3504104 (= e!2169514 (and (inv!21 (value!176214 (h!42713 (t!279116 tokens!494)))) e!2169516 tp!1084595))))

(declare-fun e!2169511 () Bool)

(assert (=> b!3504106 (= e!2169511 (and tp!1084594 tp!1084593))))

(declare-fun e!2169513 () Bool)

(declare-fun b!3504103 () Bool)

(declare-fun tp!1084597 () Bool)

(assert (=> b!3504103 (= e!2169513 (and (inv!50509 (h!42713 (t!279116 tokens!494))) e!2169514 tp!1084597))))

(assert (=> b!3503142 (= tp!1084491 e!2169513)))

(declare-fun b!3504105 () Bool)

(declare-fun tp!1084596 () Bool)

(assert (=> b!3504105 (= e!2169516 (and tp!1084596 (inv!50506 (tag!6095 (rule!8091 (h!42713 (t!279116 tokens!494))))) (inv!50510 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) e!2169511))))

(assert (= b!3504105 b!3504106))

(assert (= b!3504104 b!3504105))

(assert (= b!3504103 b!3504104))

(assert (= (and b!3503142 (is-Cons!37293 (t!279116 tokens!494))) b!3504103))

(declare-fun m!3940853 () Bool)

(assert (=> b!3504104 m!3940853))

(declare-fun m!3940855 () Bool)

(assert (=> b!3504103 m!3940855))

(declare-fun m!3940857 () Bool)

(assert (=> b!3504105 m!3940857))

(declare-fun m!3940859 () Bool)

(assert (=> b!3504105 m!3940859))

(declare-fun b!3504109 () Bool)

(declare-fun e!2169519 () Bool)

(assert (=> b!3504109 (= e!2169519 true)))

(declare-fun b!3504108 () Bool)

(declare-fun e!2169518 () Bool)

(assert (=> b!3504108 (= e!2169518 e!2169519)))

(declare-fun b!3504107 () Bool)

(declare-fun e!2169517 () Bool)

(assert (=> b!3504107 (= e!2169517 e!2169518)))

(assert (=> b!3503190 e!2169517))

(assert (= b!3504108 b!3504109))

(assert (= b!3504107 b!3504108))

(assert (= (and b!3503190 (is-Cons!37292 (t!279115 rules!2135))) b!3504107))

(assert (=> b!3504109 (< (dynLambda!15833 order!19999 (toValue!7709 (transformation!5465 (h!42712 (t!279115 rules!2135))))) (dynLambda!15834 order!20001 lambda!122475))))

(assert (=> b!3504109 (< (dynLambda!15835 order!20003 (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135))))) (dynLambda!15834 order!20001 lambda!122475))))

(declare-fun b!3504110 () Bool)

(declare-fun e!2169520 () Bool)

(declare-fun tp!1084598 () Bool)

(assert (=> b!3504110 (= e!2169520 (and tp_is_empty!17599 tp!1084598))))

(assert (=> b!3503171 (= tp!1084483 e!2169520)))

(assert (= (and b!3503171 (is-Cons!37291 (originalCharacters!6179 separatorToken!241))) b!3504110))

(declare-fun b_lambda!101841 () Bool)

(assert (= b_lambda!101805 (or (and b!3504082 b_free!90511 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))) (and b!3503145 b_free!90491 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))) (and b!3504106 b_free!90515) (and b!3503178 b_free!90487 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))) (and b!3503174 b_free!90495 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))) b_lambda!101841)))

(declare-fun b_lambda!101843 () Bool)

(assert (= b_lambda!101829 (or b!3503158 b_lambda!101843)))

(declare-fun bs!563882 () Bool)

(declare-fun d!1018192 () Bool)

(assert (= bs!563882 (and d!1018192 b!3503158)))

(assert (=> bs!563882 (= (dynLambda!15840 lambda!122475 (h!42713 (t!279116 tokens!494))) (rulesProduceIndividualToken!2546 thiss!18206 rules!2135 (h!42713 (t!279116 tokens!494))))))

(assert (=> bs!563882 m!3939395))

(assert (=> d!1018062 d!1018192))

(declare-fun b_lambda!101845 () Bool)

(assert (= b_lambda!101839 (or (and b!3504106 b_free!90515 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3504082 b_free!90511 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503178 b_free!90487 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503174 b_free!90495) (and b!3503145 b_free!90491 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) b_lambda!101845)))

(declare-fun b_lambda!101847 () Bool)

(assert (= b_lambda!101821 (or (and b!3504082 b_free!90509 (= (toValue!7709 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503174 b_free!90493) (and b!3504106 b_free!90513 (= (toValue!7709 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503145 b_free!90489 (= (toValue!7709 (transformation!5465 (rule!8091 separatorToken!241))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503178 b_free!90485 (= (toValue!7709 (transformation!5465 (h!42712 rules!2135))) (toValue!7709 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) b_lambda!101847)))

(declare-fun b_lambda!101849 () Bool)

(assert (= b_lambda!101803 (or (and b!3503145 b_free!90491) (and b!3503174 b_free!90495 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3504106 b_free!90515 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3504082 b_free!90511 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3503178 b_free!90487 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) b_lambda!101849)))

(declare-fun b_lambda!101851 () Bool)

(assert (= b_lambda!101809 (or b!3503149 b_lambda!101851)))

(declare-fun bs!563883 () Bool)

(declare-fun d!1018194 () Bool)

(assert (= bs!563883 (and d!1018194 b!3503149)))

(assert (=> bs!563883 (= (dynLambda!15840 lambda!122474 (h!42713 tokens!494)) (not (isSeparator!5465 (rule!8091 (h!42713 tokens!494)))))))

(assert (=> d!1017936 d!1018194))

(declare-fun b_lambda!101853 () Bool)

(assert (= b_lambda!101833 (or (and b!3503145 b_free!90491) (and b!3503174 b_free!90495 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3504106 b_free!90515 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3504082 b_free!90511 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) (and b!3503178 b_free!90487 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))))) b_lambda!101853)))

(declare-fun b_lambda!101855 () Bool)

(assert (= b_lambda!101837 (or (and b!3504106 b_free!90515 (= (toChars!7568 (transformation!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3504082 b_free!90511 (= (toChars!7568 (transformation!5465 (h!42712 (t!279115 rules!2135)))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503178 b_free!90487 (= (toChars!7568 (transformation!5465 (h!42712 rules!2135))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) (and b!3503174 b_free!90495) (and b!3503145 b_free!90491 (= (toChars!7568 (transformation!5465 (rule!8091 separatorToken!241))) (toChars!7568 (transformation!5465 (rule!8091 (h!42713 tokens!494)))))) b_lambda!101855)))

(declare-fun b_lambda!101857 () Bool)

(assert (= b_lambda!101811 (or b!3503149 b_lambda!101857)))

(assert (=> b!3503471 d!1018194))

(declare-fun b_lambda!101859 () Bool)

(assert (= b_lambda!101807 (or b!3503149 b_lambda!101859)))

(declare-fun bs!563884 () Bool)

(declare-fun d!1018196 () Bool)

(assert (= bs!563884 (and d!1018196 b!3503149)))

(assert (=> bs!563884 (= (dynLambda!15840 lambda!122474 (h!42713 (t!279116 tokens!494))) (not (isSeparator!5465 (rule!8091 (h!42713 (t!279116 tokens!494))))))))

(assert (=> d!1017932 d!1018196))

(push 1)

(assert (not b!3503428))

(assert (not b!3503800))

(assert (not b!3503365))

(assert (not b!3504023))

(assert (not bm!252910))

(assert (not d!1018020))

(assert (not d!1018188))

(assert (not d!1018078))

(assert (not d!1018058))

(assert (not d!1018174))

(assert (not b!3503464))

(assert (not d!1018080))

(assert (not b!3504025))

(assert (not b!3503380))

(assert (not b!3503963))

(assert (not b!3503903))

(assert (not b!3504086))

(assert (not b!3503731))

(assert (not d!1018144))

(assert (not b!3503893))

(assert (not b!3503823))

(assert (not b!3503445))

(assert (not d!1017918))

(assert (not b!3504031))

(assert (not b!3503816))

(assert (not b!3504016))

(assert (not b!3503632))

(assert tp_is_empty!17599)

(assert (not b!3503992))

(assert (not b_next!91217))

(assert (not b!3503684))

(assert (not d!1018168))

(assert (not b!3503895))

(assert (not d!1017932))

(assert (not d!1017884))

(assert b_and!248639)

(assert (not d!1017946))

(assert (not d!1017908))

(assert b_and!248641)

(assert (not b!3503984))

(assert (not d!1018072))

(assert (not d!1017902))

(assert (not b!3503534))

(assert (not d!1017962))

(assert (not d!1017896))

(assert (not b!3503687))

(assert (not b!3503968))

(assert (not d!1018098))

(assert (not bm!252932))

(assert (not d!1018184))

(assert (not b_lambda!101843))

(assert (not b!3503430))

(assert (not b!3503897))

(assert (not d!1018104))

(assert (not b!3503974))

(assert (not b!3503983))

(assert (not b!3503451))

(assert (not d!1017950))

(assert (not b!3504067))

(assert b_and!248607)

(assert (not b!3504085))

(assert (not b!3504062))

(assert (not d!1017936))

(assert (not b!3503797))

(assert (not b!3503377))

(assert (not b_next!91191))

(assert (not b!3503966))

(assert (not b!3503466))

(assert (not b!3504020))

(assert (not d!1017906))

(assert (not b!3504071))

(assert (not d!1018140))

(assert (not b!3504017))

(assert (not bs!563882))

(assert (not b!3503358))

(assert (not b_next!91199))

(assert (not b_lambda!101851))

(assert (not b!3504084))

(assert (not b!3503381))

(assert (not b!3503879))

(assert (not b!3503436))

(assert (not d!1017910))

(assert (not b!3503689))

(assert (not b!3503360))

(assert (not b!3503690))

(assert b_and!248609)

(assert (not b!3503906))

(assert (not b_next!91197))

(assert (not bm!252926))

(assert (not bm!252911))

(assert (not b!3503891))

(assert (not d!1017968))

(assert (not b!3503635))

(assert (not b!3503388))

(assert (not b!3503376))

(assert (not b!3503387))

(assert (not b!3503688))

(assert (not b!3503973))

(assert (not d!1018008))

(assert (not b!3503804))

(assert (not d!1017904))

(assert (not b!3503892))

(assert (not b_lambda!101849))

(assert (not b!3503345))

(assert (not b_next!91193))

(assert (not b!3503819))

(assert (not b!3503686))

(assert (not b!3504009))

(assert (not d!1018062))

(assert (not d!1018176))

(assert (not d!1018006))

(assert (not b!3503394))

(assert (not d!1018114))

(assert (not d!1018180))

(assert (not b!3503619))

(assert (not b!3503962))

(assert (not b!3503806))

(assert (not b!3504039))

(assert (not b!3503434))

(assert (not b!3504069))

(assert (not b_next!91215))

(assert (not d!1018162))

(assert (not b!3504033))

(assert (not b!3504041))

(assert (not d!1018082))

(assert (not b!3503993))

(assert (not b!3503967))

(assert b_and!248645)

(assert (not b!3503881))

(assert (not b!3503901))

(assert (not d!1017960))

(assert (not bm!252933))

(assert (not b!3503533))

(assert (not b_next!91189))

(assert (not b!3503987))

(assert (not d!1018158))

(assert (not b!3503396))

(assert (not d!1018056))

(assert (not d!1018146))

(assert (not b!3503399))

(assert b_and!248647)

(assert (not d!1018164))

(assert (not b!3503465))

(assert (not bm!252925))

(assert (not d!1018152))

(assert (not b!3503343))

(assert (not b!3503444))

(assert (not bm!252949))

(assert (not b!3503429))

(assert (not d!1018076))

(assert (not b!3503359))

(assert (not d!1018108))

(assert (not b!3503802))

(assert (not b!3503815))

(assert (not d!1018186))

(assert (not b!3504080))

(assert (not d!1017912))

(assert (not b_lambda!101847))

(assert (not b!3503833))

(assert (not bm!252928))

(assert (not b!3503453))

(assert (not b!3503817))

(assert (not b_next!91195))

(assert (not d!1017944))

(assert (not b!3503536))

(assert (not b!3503898))

(assert (not b!3504010))

(assert (not d!1018084))

(assert (not b!3503798))

(assert (not b!3503637))

(assert (not bm!252931))

(assert (not b_lambda!101859))

(assert (not d!1017948))

(assert (not b!3503535))

(assert (not b!3503803))

(assert b_and!248637)

(assert (not d!1017928))

(assert (not b!3503477))

(assert (not d!1018060))

(assert (not b!3503539))

(assert (not d!1017966))

(assert (not b!3504047))

(assert (not d!1018068))

(assert (not d!1018122))

(assert (not b!3504060))

(assert (not d!1017892))

(assert (not d!1018156))

(assert (not d!1018074))

(assert (not b_next!91219))

(assert (not b!3503890))

(assert (not b!3504081))

(assert (not b!3504026))

(assert (not b!3504103))

(assert (not d!1018182))

(assert (not b!3503683))

(assert (not b!3504042))

(assert (not b!3504030))

(assert (not tb!194301))

(assert (not b!3503894))

(assert (not d!1018096))

(assert (not b!3503910))

(assert (not b!3504110))

(assert (not b!3503341))

(assert (not bm!252948))

(assert (not d!1017894))

(assert (not b!3503805))

(assert (not d!1017882))

(assert (not b_lambda!101841))

(assert (not d!1017926))

(assert b_and!248605)

(assert (not d!1018178))

(assert (not b!3504027))

(assert (not b!3503730))

(assert (not b!3503528))

(assert (not b!3504107))

(assert (not b!3503831))

(assert (not b_next!91213))

(assert (not d!1018012))

(assert (not d!1018070))

(assert (not b!3503446))

(assert (not b_lambda!101855))

(assert (not b!3504014))

(assert (not b!3504070))

(assert (not d!1018050))

(assert (not b!3503478))

(assert (not b!3503390))

(assert (not b!3503537))

(assert (not b!3503825))

(assert (not b_lambda!101857))

(assert (not tb!194263))

(assert (not d!1017940))

(assert (not b!3504005))

(assert (not b!3503342))

(assert (not b!3503472))

(assert (not b!3503995))

(assert (not bm!252935))

(assert (not d!1018066))

(assert (not b!3503433))

(assert (not d!1018118))

(assert (not b!3503393))

(assert (not b!3504022))

(assert (not d!1018138))

(assert b_and!248643)

(assert (not b!3504013))

(assert (not b!3503905))

(assert (not d!1018100))

(assert (not b!3503989))

(assert (not b!3503545))

(assert (not d!1017886))

(assert (not d!1018022))

(assert (not b!3503691))

(assert (not b!3503447))

(assert (not b!3503912))

(assert (not b!3503538))

(assert b_and!248635)

(assert (not b!3503988))

(assert (not tb!194287))

(assert (not b!3503530))

(assert (not b!3503450))

(assert (not d!1018106))

(assert (not b!3503778))

(assert (not b!3503475))

(assert (not b!3503820))

(assert (not tb!194269))

(assert (not b!3504105))

(assert (not b!3503801))

(assert (not b_lambda!101853))

(assert (not b!3504104))

(assert (not b!3503529))

(assert (not b_lambda!101845))

(assert (not b!3504061))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!91217))

(assert b_and!248639)

(assert b_and!248641)

(assert b_and!248607)

(assert (not b_next!91191))

(assert (not b_next!91199))

(assert (not b_next!91193))

(assert (not b_next!91215))

(assert b_and!248645)

(assert (not b_next!91195))

(assert b_and!248637)

(assert (not b_next!91219))

(assert b_and!248605)

(assert (not b_next!91213))

(assert b_and!248643)

(assert b_and!248635)

(assert b_and!248609)

(assert (not b_next!91197))

(assert (not b_next!91189))

(assert b_and!248647)

(check-sat)

(pop 1)

