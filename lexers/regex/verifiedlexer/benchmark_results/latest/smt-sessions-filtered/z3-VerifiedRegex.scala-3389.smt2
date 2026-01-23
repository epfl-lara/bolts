; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191832 () Bool)

(assert start!191832)

(declare-fun b!1913176 () Bool)

(declare-fun b_free!54113 () Bool)

(declare-fun b_next!54817 () Bool)

(assert (=> b!1913176 (= b_free!54113 (not b_next!54817))))

(declare-fun tp!546118 () Bool)

(declare-fun b_and!149127 () Bool)

(assert (=> b!1913176 (= tp!546118 b_and!149127)))

(declare-fun b_free!54115 () Bool)

(declare-fun b_next!54819 () Bool)

(assert (=> b!1913176 (= b_free!54115 (not b_next!54819))))

(declare-fun tp!546127 () Bool)

(declare-fun b_and!149129 () Bool)

(assert (=> b!1913176 (= tp!546127 b_and!149129)))

(declare-fun b!1913169 () Bool)

(declare-fun b_free!54117 () Bool)

(declare-fun b_next!54821 () Bool)

(assert (=> b!1913169 (= b_free!54117 (not b_next!54821))))

(declare-fun tp!546117 () Bool)

(declare-fun b_and!149131 () Bool)

(assert (=> b!1913169 (= tp!546117 b_and!149131)))

(declare-fun b_free!54119 () Bool)

(declare-fun b_next!54823 () Bool)

(assert (=> b!1913169 (= b_free!54119 (not b_next!54823))))

(declare-fun tp!546122 () Bool)

(declare-fun b_and!149133 () Bool)

(assert (=> b!1913169 (= tp!546122 b_and!149133)))

(declare-fun b!1913156 () Bool)

(declare-fun b_free!54121 () Bool)

(declare-fun b_next!54825 () Bool)

(assert (=> b!1913156 (= b_free!54121 (not b_next!54825))))

(declare-fun tp!546125 () Bool)

(declare-fun b_and!149135 () Bool)

(assert (=> b!1913156 (= tp!546125 b_and!149135)))

(declare-fun b_free!54123 () Bool)

(declare-fun b_next!54827 () Bool)

(assert (=> b!1913156 (= b_free!54123 (not b_next!54827))))

(declare-fun tp!546116 () Bool)

(declare-fun b_and!149137 () Bool)

(assert (=> b!1913156 (= tp!546116 b_and!149137)))

(declare-fun res!854692 () Bool)

(declare-fun e!1222221 () Bool)

(assert (=> start!191832 (=> (not res!854692) (not e!1222221))))

(declare-datatypes ((LexerInterface!3467 0))(
  ( (LexerInterfaceExt!3464 (__x!13478 Int)) (Lexer!3465) )
))
(declare-fun thiss!23328 () LexerInterface!3467)

(get-info :version)

(assert (=> start!191832 (= res!854692 ((_ is Lexer!3465) thiss!23328))))

(assert (=> start!191832 e!1222221))

(assert (=> start!191832 true))

(declare-fun e!1222208 () Bool)

(assert (=> start!191832 e!1222208))

(declare-fun e!1222213 () Bool)

(assert (=> start!191832 e!1222213))

(declare-datatypes ((List!21680 0))(
  ( (Nil!21598) (Cons!21598 (h!26999 (_ BitVec 16)) (t!178249 List!21680)) )
))
(declare-datatypes ((TokenValue!3990 0))(
  ( (FloatLiteralValue!7980 (text!28375 List!21680)) (TokenValueExt!3989 (__x!13479 Int)) (Broken!19950 (value!121404 List!21680)) (Object!4071) (End!3990) (Def!3990) (Underscore!3990) (Match!3990) (Else!3990) (Error!3990) (Case!3990) (If!3990) (Extends!3990) (Abstract!3990) (Class!3990) (Val!3990) (DelimiterValue!7980 (del!4050 List!21680)) (KeywordValue!3996 (value!121405 List!21680)) (CommentValue!7980 (value!121406 List!21680)) (WhitespaceValue!7980 (value!121407 List!21680)) (IndentationValue!3990 (value!121408 List!21680)) (String!25067) (Int32!3990) (Broken!19951 (value!121409 List!21680)) (Boolean!3991) (Unit!35975) (OperatorValue!3993 (op!4050 List!21680)) (IdentifierValue!7980 (value!121410 List!21680)) (IdentifierValue!7981 (value!121411 List!21680)) (WhitespaceValue!7981 (value!121412 List!21680)) (True!7980) (False!7980) (Broken!19952 (value!121413 List!21680)) (Broken!19953 (value!121414 List!21680)) (True!7981) (RightBrace!3990) (RightBracket!3990) (Colon!3990) (Null!3990) (Comma!3990) (LeftBracket!3990) (False!7981) (LeftBrace!3990) (ImaginaryLiteralValue!3990 (text!28376 List!21680)) (StringLiteralValue!11970 (value!121415 List!21680)) (EOFValue!3990 (value!121416 List!21680)) (IdentValue!3990 (value!121417 List!21680)) (DelimiterValue!7981 (value!121418 List!21680)) (DedentValue!3990 (value!121419 List!21680)) (NewLineValue!3990 (value!121420 List!21680)) (IntegerValue!11970 (value!121421 (_ BitVec 32)) (text!28377 List!21680)) (IntegerValue!11971 (value!121422 Int) (text!28378 List!21680)) (Times!3990) (Or!3990) (Equal!3990) (Minus!3990) (Broken!19954 (value!121423 List!21680)) (And!3990) (Div!3990) (LessEqual!3990) (Mod!3990) (Concat!9269) (Not!3990) (Plus!3990) (SpaceValue!3990 (value!121424 List!21680)) (IntegerValue!11972 (value!121425 Int) (text!28379 List!21680)) (StringLiteralValue!11971 (text!28380 List!21680)) (FloatLiteralValue!7981 (text!28381 List!21680)) (BytesLiteralValue!3990 (value!121426 List!21680)) (CommentValue!7981 (value!121427 List!21680)) (StringLiteralValue!11972 (value!121428 List!21680)) (ErrorTokenValue!3990 (msg!4051 List!21680)) )
))
(declare-datatypes ((C!10704 0))(
  ( (C!10705 (val!6304 Int)) )
))
(declare-datatypes ((List!21681 0))(
  ( (Nil!21599) (Cons!21599 (h!27000 C!10704) (t!178250 List!21681)) )
))
(declare-datatypes ((Regex!5279 0))(
  ( (ElementMatch!5279 (c!311556 C!10704)) (Concat!9270 (regOne!11070 Regex!5279) (regTwo!11070 Regex!5279)) (EmptyExpr!5279) (Star!5279 (reg!5608 Regex!5279)) (EmptyLang!5279) (Union!5279 (regOne!11071 Regex!5279) (regTwo!11071 Regex!5279)) )
))
(declare-datatypes ((String!25068 0))(
  ( (String!25069 (value!121429 String)) )
))
(declare-datatypes ((IArray!14405 0))(
  ( (IArray!14406 (innerList!7260 List!21681)) )
))
(declare-datatypes ((Conc!7200 0))(
  ( (Node!7200 (left!17253 Conc!7200) (right!17583 Conc!7200) (csize!14630 Int) (cheight!7411 Int)) (Leaf!10590 (xs!10094 IArray!14405) (csize!14631 Int)) (Empty!7200) )
))
(declare-datatypes ((BalanceConc!14216 0))(
  ( (BalanceConc!14217 (c!311557 Conc!7200)) )
))
(declare-datatypes ((TokenValueInjection!7564 0))(
  ( (TokenValueInjection!7565 (toValue!5483 Int) (toChars!5342 Int)) )
))
(declare-datatypes ((Rule!7508 0))(
  ( (Rule!7509 (regex!3854 Regex!5279) (tag!4290 String!25068) (isSeparator!3854 Bool) (transformation!3854 TokenValueInjection!7564)) )
))
(declare-datatypes ((Token!7260 0))(
  ( (Token!7261 (value!121430 TokenValue!3990) (rule!6053 Rule!7508) (size!16988 Int) (originalCharacters!4661 List!21681)) )
))
(declare-fun separatorToken!354 () Token!7260)

(declare-fun e!1222203 () Bool)

(declare-fun inv!28699 (Token!7260) Bool)

(assert (=> start!191832 (and (inv!28699 separatorToken!354) e!1222203)))

(declare-fun b!1913146 () Bool)

(declare-fun res!854679 () Bool)

(declare-fun e!1222219 () Bool)

(assert (=> b!1913146 (=> res!854679 e!1222219)))

(declare-fun lt!732560 () List!21681)

(declare-fun lt!732540 () C!10704)

(declare-fun contains!3912 (List!21681 C!10704) Bool)

(assert (=> b!1913146 (= res!854679 (not (contains!3912 lt!732560 lt!732540)))))

(declare-fun b!1913147 () Bool)

(declare-fun tp!546126 () Bool)

(declare-fun e!1222222 () Bool)

(declare-datatypes ((List!21682 0))(
  ( (Nil!21600) (Cons!21600 (h!27001 Token!7260) (t!178251 List!21682)) )
))
(declare-fun tokens!598 () List!21682)

(assert (=> b!1913147 (= e!1222213 (and (inv!28699 (h!27001 tokens!598)) e!1222222 tp!546126))))

(declare-fun b!1913148 () Bool)

(declare-fun res!854693 () Bool)

(declare-fun e!1222196 () Bool)

(assert (=> b!1913148 (=> res!854693 e!1222196)))

(assert (=> b!1913148 (= res!854693 (isSeparator!3854 (rule!6053 (h!27001 tokens!598))))))

(declare-fun b!1913149 () Bool)

(declare-fun e!1222210 () Bool)

(assert (=> b!1913149 (= e!1222219 e!1222210)))

(declare-fun res!854687 () Bool)

(assert (=> b!1913149 (=> res!854687 e!1222210)))

(declare-fun isEmpty!13277 (List!21682) Bool)

(assert (=> b!1913149 (= res!854687 (isEmpty!13277 tokens!598))))

(declare-fun lt!732569 () List!21681)

(declare-fun lt!732549 () List!21681)

(declare-datatypes ((List!21683 0))(
  ( (Nil!21601) (Cons!21601 (h!27002 Rule!7508) (t!178252 List!21683)) )
))
(declare-fun rules!3198 () List!21683)

(declare-datatypes ((tuple2!20326 0))(
  ( (tuple2!20327 (_1!11632 Token!7260) (_2!11632 List!21681)) )
))
(declare-datatypes ((Option!4413 0))(
  ( (None!4412) (Some!4412 (v!26469 tuple2!20326)) )
))
(declare-fun maxPrefix!1913 (LexerInterface!3467 List!21683 List!21681) Option!4413)

(assert (=> b!1913149 (= (maxPrefix!1913 thiss!23328 rules!3198 lt!732549) (Some!4412 (tuple2!20327 (h!27001 tokens!598) lt!732569)))))

(declare-datatypes ((Unit!35976 0))(
  ( (Unit!35977) )
))
(declare-fun lt!732567 () Unit!35976)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!90 (LexerInterface!3467 List!21683 Token!7260 Rule!7508 List!21681 Rule!7508) Unit!35976)

(assert (=> b!1913149 (= lt!732567 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!90 thiss!23328 rules!3198 (h!27001 tokens!598) (rule!6053 (h!27001 tokens!598)) lt!732569 (rule!6053 separatorToken!354)))))

(declare-fun b!1913150 () Bool)

(declare-fun e!1222216 () Bool)

(declare-fun e!1222204 () Bool)

(assert (=> b!1913150 (= e!1222216 e!1222204)))

(declare-fun res!854688 () Bool)

(assert (=> b!1913150 (=> (not res!854688) (not e!1222204))))

(declare-fun lt!732542 () Rule!7508)

(declare-fun lt!732572 () List!21681)

(declare-fun matchR!2565 (Regex!5279 List!21681) Bool)

(assert (=> b!1913150 (= res!854688 (matchR!2565 (regex!3854 lt!732542) lt!732572))))

(declare-datatypes ((Option!4414 0))(
  ( (None!4413) (Some!4413 (v!26470 Rule!7508)) )
))
(declare-fun lt!732550 () Option!4414)

(declare-fun get!6747 (Option!4414) Rule!7508)

(assert (=> b!1913150 (= lt!732542 (get!6747 lt!732550))))

(declare-fun b!1913151 () Bool)

(declare-fun res!854691 () Bool)

(assert (=> b!1913151 (=> res!854691 e!1222196)))

(declare-fun contains!3913 (List!21683 Rule!7508) Bool)

(assert (=> b!1913151 (= res!854691 (not (contains!3913 rules!3198 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun b!1913152 () Bool)

(declare-fun e!1222209 () Bool)

(assert (=> b!1913152 (= e!1222221 (not e!1222209))))

(declare-fun res!854671 () Bool)

(assert (=> b!1913152 (=> res!854671 e!1222209)))

(declare-fun lt!732558 () Bool)

(declare-fun lt!732551 () Option!4413)

(assert (=> b!1913152 (= res!854671 (or (and (not lt!732558) (= (_1!11632 (v!26469 lt!732551)) (h!27001 tokens!598))) lt!732558 (= (_1!11632 (v!26469 lt!732551)) (h!27001 tokens!598))))))

(assert (=> b!1913152 (= lt!732558 (not ((_ is Some!4412) lt!732551)))))

(declare-fun lt!732565 () List!21681)

(declare-fun ++!5805 (List!21681 List!21681) List!21681)

(assert (=> b!1913152 (= lt!732551 (maxPrefix!1913 thiss!23328 rules!3198 (++!5805 lt!732572 lt!732565)))))

(declare-fun printWithSeparatorTokenWhenNeededList!510 (LexerInterface!3467 List!21683 List!21682 Token!7260) List!21681)

(assert (=> b!1913152 (= lt!732565 (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 (t!178251 tokens!598) separatorToken!354))))

(assert (=> b!1913152 e!1222216))

(declare-fun res!854676 () Bool)

(assert (=> b!1913152 (=> (not res!854676) (not e!1222216))))

(declare-fun isDefined!3711 (Option!4414) Bool)

(assert (=> b!1913152 (= res!854676 (isDefined!3711 lt!732550))))

(declare-fun getRuleFromTag!697 (LexerInterface!3467 List!21683 String!25068) Option!4414)

(assert (=> b!1913152 (= lt!732550 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun lt!732563 () Unit!35976)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!697 (LexerInterface!3467 List!21683 List!21681 Token!7260) Unit!35976)

(assert (=> b!1913152 (= lt!732563 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!697 thiss!23328 rules!3198 lt!732572 (h!27001 tokens!598)))))

(declare-fun lt!732554 () tuple2!20326)

(assert (=> b!1913152 (= (_1!11632 lt!732554) (h!27001 tokens!598))))

(declare-fun lt!732541 () Option!4413)

(declare-fun get!6748 (Option!4413) tuple2!20326)

(assert (=> b!1913152 (= lt!732554 (get!6748 lt!732541))))

(declare-fun isDefined!3712 (Option!4413) Bool)

(assert (=> b!1913152 (isDefined!3712 lt!732541)))

(assert (=> b!1913152 (= lt!732541 (maxPrefix!1913 thiss!23328 rules!3198 lt!732572))))

(declare-fun lt!732561 () BalanceConc!14216)

(declare-fun list!8778 (BalanceConc!14216) List!21681)

(assert (=> b!1913152 (= lt!732572 (list!8778 lt!732561))))

(declare-fun e!1222199 () Bool)

(assert (=> b!1913152 e!1222199))

(declare-fun res!854677 () Bool)

(assert (=> b!1913152 (=> (not res!854677) (not e!1222199))))

(declare-fun lt!732570 () Option!4414)

(assert (=> b!1913152 (= res!854677 (isDefined!3711 lt!732570))))

(assert (=> b!1913152 (= lt!732570 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 separatorToken!354))))))

(declare-fun lt!732562 () List!21681)

(declare-fun lt!732568 () Unit!35976)

(assert (=> b!1913152 (= lt!732568 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!697 thiss!23328 rules!3198 lt!732562 separatorToken!354))))

(declare-fun charsOf!2410 (Token!7260) BalanceConc!14216)

(assert (=> b!1913152 (= lt!732562 (list!8778 (charsOf!2410 separatorToken!354)))))

(declare-fun lt!732544 () Unit!35976)

(declare-fun lemmaEqSameImage!562 (TokenValueInjection!7564 BalanceConc!14216 BalanceConc!14216) Unit!35976)

(declare-fun seqFromList!2726 (List!21681) BalanceConc!14216)

(assert (=> b!1913152 (= lt!732544 (lemmaEqSameImage!562 (transformation!3854 (rule!6053 (h!27001 tokens!598))) lt!732561 (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598)))))))

(declare-fun lt!732553 () Unit!35976)

(declare-fun lemmaSemiInverse!833 (TokenValueInjection!7564 BalanceConc!14216) Unit!35976)

(assert (=> b!1913152 (= lt!732553 (lemmaSemiInverse!833 (transformation!3854 (rule!6053 (h!27001 tokens!598))) lt!732561))))

(assert (=> b!1913152 (= lt!732561 (charsOf!2410 (h!27001 tokens!598)))))

(declare-fun b!1913153 () Bool)

(declare-fun e!1222202 () Bool)

(declare-fun tp!546123 () Bool)

(assert (=> b!1913153 (= e!1222208 (and e!1222202 tp!546123))))

(declare-fun b!1913154 () Bool)

(declare-fun res!854680 () Bool)

(assert (=> b!1913154 (=> (not res!854680) (not e!1222221))))

(declare-fun rulesInvariant!3074 (LexerInterface!3467 List!21683) Bool)

(assert (=> b!1913154 (= res!854680 (rulesInvariant!3074 thiss!23328 rules!3198))))

(declare-fun b!1913155 () Bool)

(declare-fun res!854690 () Bool)

(assert (=> b!1913155 (=> res!854690 e!1222196)))

(declare-fun rulesProduceIndividualToken!1639 (LexerInterface!3467 List!21683 Token!7260) Bool)

(assert (=> b!1913155 (= res!854690 (not (rulesProduceIndividualToken!1639 thiss!23328 rules!3198 (h!27001 tokens!598))))))

(declare-fun e!1222200 () Bool)

(assert (=> b!1913156 (= e!1222200 (and tp!546125 tp!546116))))

(declare-fun b!1913157 () Bool)

(declare-fun res!854675 () Bool)

(assert (=> b!1913157 (=> (not res!854675) (not e!1222221))))

(declare-fun rulesProduceEachTokenIndividuallyList!1198 (LexerInterface!3467 List!21683 List!21682) Bool)

(assert (=> b!1913157 (= res!854675 (rulesProduceEachTokenIndividuallyList!1198 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1913158 () Bool)

(declare-fun res!854686 () Bool)

(assert (=> b!1913158 (=> (not res!854686) (not e!1222221))))

(assert (=> b!1913158 (= res!854686 ((_ is Cons!21600) tokens!598))))

(declare-fun b!1913159 () Bool)

(declare-fun res!854670 () Bool)

(assert (=> b!1913159 (=> res!854670 e!1222196)))

(assert (=> b!1913159 (= res!854670 (not (contains!3913 rules!3198 (rule!6053 separatorToken!354))))))

(declare-fun e!1222201 () Bool)

(declare-fun tp!546128 () Bool)

(declare-fun b!1913160 () Bool)

(declare-fun inv!28696 (String!25068) Bool)

(declare-fun inv!28700 (TokenValueInjection!7564) Bool)

(assert (=> b!1913160 (= e!1222201 (and tp!546128 (inv!28696 (tag!4290 (rule!6053 separatorToken!354))) (inv!28700 (transformation!3854 (rule!6053 separatorToken!354))) e!1222200))))

(declare-fun b!1913161 () Bool)

(declare-fun e!1222218 () Unit!35976)

(declare-fun Unit!35978 () Unit!35976)

(assert (=> b!1913161 (= e!1222218 Unit!35978)))

(declare-fun lt!732545 () C!10704)

(declare-fun lt!732573 () Unit!35976)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!262 (Regex!5279 List!21681 C!10704) Unit!35976)

(assert (=> b!1913161 (= lt!732573 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!262 (regex!3854 (rule!6053 separatorToken!354)) lt!732562 lt!732545))))

(declare-fun res!854689 () Bool)

(assert (=> b!1913161 (= res!854689 (not (matchR!2565 (regex!3854 (rule!6053 separatorToken!354)) lt!732562)))))

(declare-fun e!1222217 () Bool)

(assert (=> b!1913161 (=> (not res!854689) (not e!1222217))))

(assert (=> b!1913161 e!1222217))

(declare-fun b!1913162 () Bool)

(declare-fun res!854682 () Bool)

(assert (=> b!1913162 (=> (not res!854682) (not e!1222221))))

(declare-fun sepAndNonSepRulesDisjointChars!952 (List!21683 List!21683) Bool)

(assert (=> b!1913162 (= res!854682 (sepAndNonSepRulesDisjointChars!952 rules!3198 rules!3198))))

(declare-fun b!1913163 () Bool)

(declare-fun e!1222220 () Bool)

(assert (=> b!1913163 (= e!1222196 e!1222220)))

(declare-fun res!854668 () Bool)

(assert (=> b!1913163 (=> res!854668 e!1222220)))

(assert (=> b!1913163 (= res!854668 (not (matchR!2565 (regex!3854 (rule!6053 (h!27001 tokens!598))) lt!732572)))))

(declare-fun ruleValid!1173 (LexerInterface!3467 Rule!7508) Bool)

(assert (=> b!1913163 (ruleValid!1173 thiss!23328 (rule!6053 (h!27001 tokens!598)))))

(declare-fun lt!732571 () Unit!35976)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!670 (LexerInterface!3467 Rule!7508 List!21683) Unit!35976)

(assert (=> b!1913163 (= lt!732571 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!670 thiss!23328 (rule!6053 (h!27001 tokens!598)) rules!3198))))

(declare-fun b!1913164 () Bool)

(declare-fun Unit!35979 () Unit!35976)

(assert (=> b!1913164 (= e!1222218 Unit!35979)))

(declare-fun b!1913165 () Bool)

(declare-fun res!854673 () Bool)

(assert (=> b!1913165 (=> (not res!854673) (not e!1222221))))

(declare-fun lambda!74693 () Int)

(declare-fun forall!4546 (List!21682 Int) Bool)

(assert (=> b!1913165 (= res!854673 (forall!4546 tokens!598 lambda!74693))))

(declare-fun b!1913166 () Bool)

(declare-fun res!854669 () Bool)

(assert (=> b!1913166 (=> res!854669 e!1222196)))

(declare-fun isEmpty!13278 (List!21681) Bool)

(assert (=> b!1913166 (= res!854669 (not (isEmpty!13278 (_2!11632 lt!732554))))))

(declare-fun b!1913167 () Bool)

(declare-fun e!1222212 () Bool)

(declare-fun lt!732555 () Rule!7508)

(assert (=> b!1913167 (= e!1222212 (= (rule!6053 separatorToken!354) lt!732555))))

(declare-fun b!1913168 () Bool)

(declare-fun res!854685 () Bool)

(assert (=> b!1913168 (=> res!854685 e!1222196)))

(declare-datatypes ((IArray!14407 0))(
  ( (IArray!14408 (innerList!7261 List!21682)) )
))
(declare-datatypes ((Conc!7201 0))(
  ( (Node!7201 (left!17254 Conc!7201) (right!17584 Conc!7201) (csize!14632 Int) (cheight!7412 Int)) (Leaf!10591 (xs!10095 IArray!14407) (csize!14633 Int)) (Empty!7201) )
))
(declare-datatypes ((BalanceConc!14218 0))(
  ( (BalanceConc!14219 (c!311558 Conc!7201)) )
))
(declare-fun isEmpty!13279 (BalanceConc!14218) Bool)

(declare-datatypes ((tuple2!20328 0))(
  ( (tuple2!20329 (_1!11633 BalanceConc!14218) (_2!11633 BalanceConc!14216)) )
))
(declare-fun lex!1542 (LexerInterface!3467 List!21683 BalanceConc!14216) tuple2!20328)

(assert (=> b!1913168 (= res!854685 (isEmpty!13279 (_1!11633 (lex!1542 thiss!23328 rules!3198 (seqFromList!2726 lt!732572)))))))

(declare-fun e!1222214 () Bool)

(assert (=> b!1913169 (= e!1222214 (and tp!546117 tp!546122))))

(declare-fun b!1913170 () Bool)

(assert (=> b!1913170 (= e!1222199 e!1222212)))

(declare-fun res!854678 () Bool)

(assert (=> b!1913170 (=> (not res!854678) (not e!1222212))))

(assert (=> b!1913170 (= res!854678 (matchR!2565 (regex!3854 lt!732555) lt!732562))))

(assert (=> b!1913170 (= lt!732555 (get!6747 lt!732570))))

(declare-fun b!1913171 () Bool)

(declare-fun res!854674 () Bool)

(assert (=> b!1913171 (=> (not res!854674) (not e!1222221))))

(assert (=> b!1913171 (= res!854674 (isSeparator!3854 (rule!6053 separatorToken!354)))))

(declare-fun b!1913172 () Bool)

(assert (=> b!1913172 (= e!1222204 (= (rule!6053 (h!27001 tokens!598)) lt!732542))))

(declare-fun b!1913173 () Bool)

(assert (=> b!1913173 (= e!1222220 e!1222219)))

(declare-fun res!854672 () Bool)

(assert (=> b!1913173 (=> res!854672 e!1222219)))

(declare-fun lt!732556 () List!21681)

(assert (=> b!1913173 (= res!854672 (contains!3912 lt!732556 lt!732540))))

(declare-fun head!4460 (List!21681) C!10704)

(assert (=> b!1913173 (= lt!732540 (head!4460 lt!732569))))

(declare-fun b!1913174 () Bool)

(declare-fun res!854684 () Bool)

(assert (=> b!1913174 (=> res!854684 e!1222220)))

(assert (=> b!1913174 (= res!854684 (isEmpty!13278 lt!732569))))

(declare-fun b!1913175 () Bool)

(declare-fun rulesValidInductive!1308 (LexerInterface!3467 List!21683) Bool)

(assert (=> b!1913175 (= e!1222210 (rulesValidInductive!1308 thiss!23328 rules!3198))))

(declare-fun lt!732574 () List!21681)

(assert (=> b!1913175 (= lt!732574 (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 tokens!598 separatorToken!354))))

(declare-fun e!1222206 () Bool)

(assert (=> b!1913176 (= e!1222206 (and tp!546118 tp!546127))))

(declare-fun e!1222198 () Bool)

(declare-fun b!1913177 () Bool)

(declare-fun tp!546124 () Bool)

(declare-fun inv!21 (TokenValue!3990) Bool)

(assert (=> b!1913177 (= e!1222222 (and (inv!21 (value!121430 (h!27001 tokens!598))) e!1222198 tp!546124))))

(declare-fun b!1913178 () Bool)

(declare-fun tp!546119 () Bool)

(assert (=> b!1913178 (= e!1222202 (and tp!546119 (inv!28696 (tag!4290 (h!27002 rules!3198))) (inv!28700 (transformation!3854 (h!27002 rules!3198))) e!1222206))))

(declare-fun b!1913179 () Bool)

(declare-fun res!854683 () Bool)

(assert (=> b!1913179 (=> (not res!854683) (not e!1222221))))

(declare-fun isEmpty!13280 (List!21683) Bool)

(assert (=> b!1913179 (= res!854683 (not (isEmpty!13280 rules!3198)))))

(declare-fun b!1913180 () Bool)

(declare-fun res!854694 () Bool)

(assert (=> b!1913180 (=> (not res!854694) (not e!1222221))))

(assert (=> b!1913180 (= res!854694 (rulesProduceIndividualToken!1639 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1913181 () Bool)

(assert (=> b!1913181 (= e!1222209 e!1222196)))

(declare-fun res!854681 () Bool)

(assert (=> b!1913181 (=> res!854681 e!1222196)))

(declare-fun lt!732546 () List!21681)

(declare-fun lt!732564 () List!21681)

(assert (=> b!1913181 (= res!854681 (or (not (= lt!732546 lt!732564)) (not (= lt!732564 lt!732572)) (not (= lt!732546 lt!732572))))))

(declare-fun printList!1050 (LexerInterface!3467 List!21682) List!21681)

(assert (=> b!1913181 (= lt!732564 (printList!1050 thiss!23328 (Cons!21600 (h!27001 tokens!598) Nil!21600)))))

(declare-fun lt!732557 () BalanceConc!14216)

(assert (=> b!1913181 (= lt!732546 (list!8778 lt!732557))))

(declare-fun lt!732548 () BalanceConc!14218)

(declare-fun printTailRec!984 (LexerInterface!3467 BalanceConc!14218 Int BalanceConc!14216) BalanceConc!14216)

(assert (=> b!1913181 (= lt!732557 (printTailRec!984 thiss!23328 lt!732548 0 (BalanceConc!14217 Empty!7200)))))

(declare-fun print!1477 (LexerInterface!3467 BalanceConc!14218) BalanceConc!14216)

(assert (=> b!1913181 (= lt!732557 (print!1477 thiss!23328 lt!732548))))

(declare-fun singletonSeq!1877 (Token!7260) BalanceConc!14218)

(assert (=> b!1913181 (= lt!732548 (singletonSeq!1877 (h!27001 tokens!598)))))

(assert (=> b!1913181 (not (contains!3912 lt!732556 lt!732545))))

(declare-fun usedCharacters!362 (Regex!5279) List!21681)

(assert (=> b!1913181 (= lt!732556 (usedCharacters!362 (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun lt!732559 () Unit!35976)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!58 (LexerInterface!3467 List!21683 List!21683 Rule!7508 Rule!7508 C!10704) Unit!35976)

(assert (=> b!1913181 (= lt!732559 (lemmaNonSepRuleNotContainsCharContainedInASepRule!58 thiss!23328 rules!3198 rules!3198 (rule!6053 (h!27001 tokens!598)) (rule!6053 separatorToken!354) lt!732545))))

(declare-fun lt!732543 () Unit!35976)

(assert (=> b!1913181 (= lt!732543 e!1222218)))

(declare-fun c!311555 () Bool)

(assert (=> b!1913181 (= c!311555 (not (contains!3912 lt!732560 lt!732545)))))

(assert (=> b!1913181 (= lt!732545 (head!4460 lt!732562))))

(assert (=> b!1913181 (= lt!732560 (usedCharacters!362 (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun lt!732547 () List!21681)

(assert (=> b!1913181 (= lt!732547 lt!732549)))

(assert (=> b!1913181 (= lt!732549 (++!5805 lt!732572 lt!732569))))

(declare-fun lt!732552 () List!21681)

(assert (=> b!1913181 (= lt!732547 (++!5805 lt!732552 lt!732565))))

(assert (=> b!1913181 (= lt!732569 (++!5805 lt!732562 lt!732565))))

(assert (=> b!1913181 (= lt!732552 (++!5805 lt!732572 lt!732562))))

(declare-fun lt!732566 () Unit!35976)

(declare-fun lemmaConcatAssociativity!1169 (List!21681 List!21681 List!21681) Unit!35976)

(assert (=> b!1913181 (= lt!732566 (lemmaConcatAssociativity!1169 lt!732572 lt!732562 lt!732565))))

(declare-fun tp!546121 () Bool)

(declare-fun b!1913182 () Bool)

(assert (=> b!1913182 (= e!1222198 (and tp!546121 (inv!28696 (tag!4290 (rule!6053 (h!27001 tokens!598)))) (inv!28700 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) e!1222214))))

(declare-fun tp!546120 () Bool)

(declare-fun b!1913183 () Bool)

(assert (=> b!1913183 (= e!1222203 (and (inv!21 (value!121430 separatorToken!354)) e!1222201 tp!546120))))

(declare-fun b!1913184 () Bool)

(assert (=> b!1913184 (= e!1222217 false)))

(assert (= (and start!191832 res!854692) b!1913179))

(assert (= (and b!1913179 res!854683) b!1913154))

(assert (= (and b!1913154 res!854680) b!1913157))

(assert (= (and b!1913157 res!854675) b!1913180))

(assert (= (and b!1913180 res!854694) b!1913171))

(assert (= (and b!1913171 res!854674) b!1913165))

(assert (= (and b!1913165 res!854673) b!1913162))

(assert (= (and b!1913162 res!854682) b!1913158))

(assert (= (and b!1913158 res!854686) b!1913152))

(assert (= (and b!1913152 res!854677) b!1913170))

(assert (= (and b!1913170 res!854678) b!1913167))

(assert (= (and b!1913152 res!854676) b!1913150))

(assert (= (and b!1913150 res!854688) b!1913172))

(assert (= (and b!1913152 (not res!854671)) b!1913181))

(assert (= (and b!1913181 c!311555) b!1913161))

(assert (= (and b!1913181 (not c!311555)) b!1913164))

(assert (= (and b!1913161 res!854689) b!1913184))

(assert (= (and b!1913181 (not res!854681)) b!1913155))

(assert (= (and b!1913155 (not res!854690)) b!1913168))

(assert (= (and b!1913168 (not res!854685)) b!1913151))

(assert (= (and b!1913151 (not res!854691)) b!1913159))

(assert (= (and b!1913159 (not res!854670)) b!1913148))

(assert (= (and b!1913148 (not res!854693)) b!1913166))

(assert (= (and b!1913166 (not res!854669)) b!1913163))

(assert (= (and b!1913163 (not res!854668)) b!1913174))

(assert (= (and b!1913174 (not res!854684)) b!1913173))

(assert (= (and b!1913173 (not res!854672)) b!1913146))

(assert (= (and b!1913146 (not res!854679)) b!1913149))

(assert (= (and b!1913149 (not res!854687)) b!1913175))

(assert (= b!1913178 b!1913176))

(assert (= b!1913153 b!1913178))

(assert (= (and start!191832 ((_ is Cons!21601) rules!3198)) b!1913153))

(assert (= b!1913182 b!1913169))

(assert (= b!1913177 b!1913182))

(assert (= b!1913147 b!1913177))

(assert (= (and start!191832 ((_ is Cons!21600) tokens!598)) b!1913147))

(assert (= b!1913160 b!1913156))

(assert (= b!1913183 b!1913160))

(assert (= start!191832 b!1913183))

(declare-fun m!2347391 () Bool)

(assert (=> b!1913173 m!2347391))

(declare-fun m!2347393 () Bool)

(assert (=> b!1913173 m!2347393))

(declare-fun m!2347395 () Bool)

(assert (=> b!1913174 m!2347395))

(declare-fun m!2347397 () Bool)

(assert (=> b!1913163 m!2347397))

(declare-fun m!2347399 () Bool)

(assert (=> b!1913163 m!2347399))

(declare-fun m!2347401 () Bool)

(assert (=> b!1913163 m!2347401))

(declare-fun m!2347403 () Bool)

(assert (=> start!191832 m!2347403))

(declare-fun m!2347405 () Bool)

(assert (=> b!1913170 m!2347405))

(declare-fun m!2347407 () Bool)

(assert (=> b!1913170 m!2347407))

(declare-fun m!2347409 () Bool)

(assert (=> b!1913166 m!2347409))

(declare-fun m!2347411 () Bool)

(assert (=> b!1913181 m!2347411))

(declare-fun m!2347413 () Bool)

(assert (=> b!1913181 m!2347413))

(declare-fun m!2347415 () Bool)

(assert (=> b!1913181 m!2347415))

(declare-fun m!2347417 () Bool)

(assert (=> b!1913181 m!2347417))

(declare-fun m!2347419 () Bool)

(assert (=> b!1913181 m!2347419))

(declare-fun m!2347421 () Bool)

(assert (=> b!1913181 m!2347421))

(declare-fun m!2347423 () Bool)

(assert (=> b!1913181 m!2347423))

(declare-fun m!2347425 () Bool)

(assert (=> b!1913181 m!2347425))

(declare-fun m!2347427 () Bool)

(assert (=> b!1913181 m!2347427))

(declare-fun m!2347429 () Bool)

(assert (=> b!1913181 m!2347429))

(declare-fun m!2347431 () Bool)

(assert (=> b!1913181 m!2347431))

(declare-fun m!2347433 () Bool)

(assert (=> b!1913181 m!2347433))

(declare-fun m!2347435 () Bool)

(assert (=> b!1913181 m!2347435))

(declare-fun m!2347437 () Bool)

(assert (=> b!1913181 m!2347437))

(declare-fun m!2347439 () Bool)

(assert (=> b!1913181 m!2347439))

(declare-fun m!2347441 () Bool)

(assert (=> b!1913181 m!2347441))

(declare-fun m!2347443 () Bool)

(assert (=> b!1913154 m!2347443))

(declare-fun m!2347445 () Bool)

(assert (=> b!1913162 m!2347445))

(declare-fun m!2347447 () Bool)

(assert (=> b!1913179 m!2347447))

(declare-fun m!2347449 () Bool)

(assert (=> b!1913146 m!2347449))

(declare-fun m!2347451 () Bool)

(assert (=> b!1913157 m!2347451))

(declare-fun m!2347453 () Bool)

(assert (=> b!1913165 m!2347453))

(declare-fun m!2347455 () Bool)

(assert (=> b!1913159 m!2347455))

(declare-fun m!2347457 () Bool)

(assert (=> b!1913168 m!2347457))

(assert (=> b!1913168 m!2347457))

(declare-fun m!2347459 () Bool)

(assert (=> b!1913168 m!2347459))

(declare-fun m!2347461 () Bool)

(assert (=> b!1913168 m!2347461))

(declare-fun m!2347463 () Bool)

(assert (=> b!1913182 m!2347463))

(declare-fun m!2347465 () Bool)

(assert (=> b!1913182 m!2347465))

(declare-fun m!2347467 () Bool)

(assert (=> b!1913149 m!2347467))

(declare-fun m!2347469 () Bool)

(assert (=> b!1913149 m!2347469))

(declare-fun m!2347471 () Bool)

(assert (=> b!1913149 m!2347471))

(declare-fun m!2347473 () Bool)

(assert (=> b!1913177 m!2347473))

(declare-fun m!2347475 () Bool)

(assert (=> b!1913183 m!2347475))

(declare-fun m!2347477 () Bool)

(assert (=> b!1913161 m!2347477))

(declare-fun m!2347479 () Bool)

(assert (=> b!1913161 m!2347479))

(declare-fun m!2347481 () Bool)

(assert (=> b!1913175 m!2347481))

(declare-fun m!2347483 () Bool)

(assert (=> b!1913175 m!2347483))

(declare-fun m!2347485 () Bool)

(assert (=> b!1913150 m!2347485))

(declare-fun m!2347487 () Bool)

(assert (=> b!1913150 m!2347487))

(declare-fun m!2347489 () Bool)

(assert (=> b!1913178 m!2347489))

(declare-fun m!2347491 () Bool)

(assert (=> b!1913178 m!2347491))

(declare-fun m!2347493 () Bool)

(assert (=> b!1913160 m!2347493))

(declare-fun m!2347495 () Bool)

(assert (=> b!1913160 m!2347495))

(declare-fun m!2347497 () Bool)

(assert (=> b!1913155 m!2347497))

(declare-fun m!2347499 () Bool)

(assert (=> b!1913147 m!2347499))

(declare-fun m!2347501 () Bool)

(assert (=> b!1913180 m!2347501))

(declare-fun m!2347503 () Bool)

(assert (=> b!1913151 m!2347503))

(declare-fun m!2347505 () Bool)

(assert (=> b!1913152 m!2347505))

(declare-fun m!2347507 () Bool)

(assert (=> b!1913152 m!2347507))

(declare-fun m!2347509 () Bool)

(assert (=> b!1913152 m!2347509))

(declare-fun m!2347511 () Bool)

(assert (=> b!1913152 m!2347511))

(declare-fun m!2347513 () Bool)

(assert (=> b!1913152 m!2347513))

(declare-fun m!2347515 () Bool)

(assert (=> b!1913152 m!2347515))

(declare-fun m!2347517 () Bool)

(assert (=> b!1913152 m!2347517))

(declare-fun m!2347519 () Bool)

(assert (=> b!1913152 m!2347519))

(declare-fun m!2347521 () Bool)

(assert (=> b!1913152 m!2347521))

(assert (=> b!1913152 m!2347519))

(declare-fun m!2347523 () Bool)

(assert (=> b!1913152 m!2347523))

(declare-fun m!2347525 () Bool)

(assert (=> b!1913152 m!2347525))

(assert (=> b!1913152 m!2347507))

(declare-fun m!2347527 () Bool)

(assert (=> b!1913152 m!2347527))

(assert (=> b!1913152 m!2347525))

(declare-fun m!2347529 () Bool)

(assert (=> b!1913152 m!2347529))

(declare-fun m!2347531 () Bool)

(assert (=> b!1913152 m!2347531))

(declare-fun m!2347533 () Bool)

(assert (=> b!1913152 m!2347533))

(declare-fun m!2347535 () Bool)

(assert (=> b!1913152 m!2347535))

(declare-fun m!2347537 () Bool)

(assert (=> b!1913152 m!2347537))

(declare-fun m!2347539 () Bool)

(assert (=> b!1913152 m!2347539))

(declare-fun m!2347541 () Bool)

(assert (=> b!1913152 m!2347541))

(check-sat (not b_next!54825) (not b_next!54817) (not b!1913157) (not b_next!54821) (not b!1913170) (not b!1913165) b_and!149133 (not b!1913182) (not b!1913154) (not b!1913168) (not b!1913161) b_and!149127 (not b!1913166) b_and!149131 (not b!1913183) (not b!1913175) (not b_next!54827) (not b!1913179) (not b!1913153) (not b!1913151) (not b!1913147) (not b!1913160) (not b_next!54819) (not b_next!54823) b_and!149129 (not b!1913174) (not b!1913149) (not b!1913155) (not b!1913163) (not b!1913180) (not b!1913150) b_and!149135 (not b!1913162) (not b!1913146) (not b!1913173) (not b!1913178) (not b!1913177) (not start!191832) (not b!1913181) (not b!1913152) b_and!149137 (not b!1913159))
(check-sat b_and!149127 (not b_next!54825) b_and!149131 (not b_next!54817) (not b_next!54827) (not b_next!54821) b_and!149129 b_and!149133 b_and!149135 b_and!149137 (not b_next!54819) (not b_next!54823))
(get-model)

(declare-fun d!584700 () Bool)

(declare-fun res!854709 () Bool)

(declare-fun e!1222227 () Bool)

(assert (=> d!584700 (=> res!854709 e!1222227)))

(assert (=> d!584700 (= res!854709 ((_ is Nil!21600) tokens!598))))

(assert (=> d!584700 (= (forall!4546 tokens!598 lambda!74693) e!1222227)))

(declare-fun b!1913189 () Bool)

(declare-fun e!1222228 () Bool)

(assert (=> b!1913189 (= e!1222227 e!1222228)))

(declare-fun res!854710 () Bool)

(assert (=> b!1913189 (=> (not res!854710) (not e!1222228))))

(declare-fun dynLambda!10510 (Int Token!7260) Bool)

(assert (=> b!1913189 (= res!854710 (dynLambda!10510 lambda!74693 (h!27001 tokens!598)))))

(declare-fun b!1913190 () Bool)

(assert (=> b!1913190 (= e!1222228 (forall!4546 (t!178251 tokens!598) lambda!74693))))

(assert (= (and d!584700 (not res!854709)) b!1913189))

(assert (= (and b!1913189 res!854710) b!1913190))

(declare-fun b_lambda!63281 () Bool)

(assert (=> (not b_lambda!63281) (not b!1913189)))

(declare-fun m!2347549 () Bool)

(assert (=> b!1913189 m!2347549))

(declare-fun m!2347551 () Bool)

(assert (=> b!1913190 m!2347551))

(assert (=> b!1913165 d!584700))

(declare-fun d!584702 () Bool)

(assert (=> d!584702 (= (isEmpty!13278 (_2!11632 lt!732554)) ((_ is Nil!21599) (_2!11632 lt!732554)))))

(assert (=> b!1913166 d!584702))

(declare-fun d!584704 () Bool)

(declare-fun lt!732580 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3154 (List!21681) (InoxSet C!10704))

(assert (=> d!584704 (= lt!732580 (select (content!3154 lt!732560) lt!732540))))

(declare-fun e!1222233 () Bool)

(assert (=> d!584704 (= lt!732580 e!1222233)))

(declare-fun res!854716 () Bool)

(assert (=> d!584704 (=> (not res!854716) (not e!1222233))))

(assert (=> d!584704 (= res!854716 ((_ is Cons!21599) lt!732560))))

(assert (=> d!584704 (= (contains!3912 lt!732560 lt!732540) lt!732580)))

(declare-fun b!1913195 () Bool)

(declare-fun e!1222234 () Bool)

(assert (=> b!1913195 (= e!1222233 e!1222234)))

(declare-fun res!854715 () Bool)

(assert (=> b!1913195 (=> res!854715 e!1222234)))

(assert (=> b!1913195 (= res!854715 (= (h!27000 lt!732560) lt!732540))))

(declare-fun b!1913196 () Bool)

(assert (=> b!1913196 (= e!1222234 (contains!3912 (t!178250 lt!732560) lt!732540))))

(assert (= (and d!584704 res!854716) b!1913195))

(assert (= (and b!1913195 (not res!854715)) b!1913196))

(declare-fun m!2347553 () Bool)

(assert (=> d!584704 m!2347553))

(declare-fun m!2347555 () Bool)

(assert (=> d!584704 m!2347555))

(declare-fun m!2347557 () Bool)

(assert (=> b!1913196 m!2347557))

(assert (=> b!1913146 d!584704))

(declare-fun d!584706 () Bool)

(declare-fun lt!732583 () Bool)

(declare-fun list!8781 (BalanceConc!14218) List!21682)

(assert (=> d!584706 (= lt!732583 (isEmpty!13277 (list!8781 (_1!11633 (lex!1542 thiss!23328 rules!3198 (seqFromList!2726 lt!732572))))))))

(declare-fun isEmpty!13284 (Conc!7201) Bool)

(assert (=> d!584706 (= lt!732583 (isEmpty!13284 (c!311558 (_1!11633 (lex!1542 thiss!23328 rules!3198 (seqFromList!2726 lt!732572))))))))

(assert (=> d!584706 (= (isEmpty!13279 (_1!11633 (lex!1542 thiss!23328 rules!3198 (seqFromList!2726 lt!732572)))) lt!732583)))

(declare-fun bs!414206 () Bool)

(assert (= bs!414206 d!584706))

(declare-fun m!2347559 () Bool)

(assert (=> bs!414206 m!2347559))

(assert (=> bs!414206 m!2347559))

(declare-fun m!2347561 () Bool)

(assert (=> bs!414206 m!2347561))

(declare-fun m!2347563 () Bool)

(assert (=> bs!414206 m!2347563))

(assert (=> b!1913168 d!584706))

(declare-fun b!1913304 () Bool)

(declare-fun e!1222298 () Bool)

(declare-fun lt!732632 () tuple2!20328)

(assert (=> b!1913304 (= e!1222298 (not (isEmpty!13279 (_1!11633 lt!732632))))))

(declare-fun b!1913305 () Bool)

(declare-fun e!1222300 () Bool)

(assert (=> b!1913305 (= e!1222300 e!1222298)))

(declare-fun res!854759 () Bool)

(declare-fun size!16992 (BalanceConc!14216) Int)

(assert (=> b!1913305 (= res!854759 (< (size!16992 (_2!11633 lt!732632)) (size!16992 (seqFromList!2726 lt!732572))))))

(assert (=> b!1913305 (=> (not res!854759) (not e!1222298))))

(declare-fun d!584708 () Bool)

(declare-fun e!1222299 () Bool)

(assert (=> d!584708 e!1222299))

(declare-fun res!854760 () Bool)

(assert (=> d!584708 (=> (not res!854760) (not e!1222299))))

(assert (=> d!584708 (= res!854760 e!1222300)))

(declare-fun c!311593 () Bool)

(declare-fun size!16993 (BalanceConc!14218) Int)

(assert (=> d!584708 (= c!311593 (> (size!16993 (_1!11633 lt!732632)) 0))))

(declare-fun lexTailRecV2!668 (LexerInterface!3467 List!21683 BalanceConc!14216 BalanceConc!14216 BalanceConc!14216 BalanceConc!14218) tuple2!20328)

(assert (=> d!584708 (= lt!732632 (lexTailRecV2!668 thiss!23328 rules!3198 (seqFromList!2726 lt!732572) (BalanceConc!14217 Empty!7200) (seqFromList!2726 lt!732572) (BalanceConc!14219 Empty!7201)))))

(assert (=> d!584708 (= (lex!1542 thiss!23328 rules!3198 (seqFromList!2726 lt!732572)) lt!732632)))

(declare-fun b!1913306 () Bool)

(declare-datatypes ((tuple2!20332 0))(
  ( (tuple2!20333 (_1!11635 List!21682) (_2!11635 List!21681)) )
))
(declare-fun lexList!945 (LexerInterface!3467 List!21683 List!21681) tuple2!20332)

(assert (=> b!1913306 (= e!1222299 (= (list!8778 (_2!11633 lt!732632)) (_2!11635 (lexList!945 thiss!23328 rules!3198 (list!8778 (seqFromList!2726 lt!732572))))))))

(declare-fun b!1913307 () Bool)

(declare-fun res!854758 () Bool)

(assert (=> b!1913307 (=> (not res!854758) (not e!1222299))))

(assert (=> b!1913307 (= res!854758 (= (list!8781 (_1!11633 lt!732632)) (_1!11635 (lexList!945 thiss!23328 rules!3198 (list!8778 (seqFromList!2726 lt!732572))))))))

(declare-fun b!1913308 () Bool)

(assert (=> b!1913308 (= e!1222300 (= (_2!11633 lt!732632) (seqFromList!2726 lt!732572)))))

(assert (= (and d!584708 c!311593) b!1913305))

(assert (= (and d!584708 (not c!311593)) b!1913308))

(assert (= (and b!1913305 res!854759) b!1913304))

(assert (= (and d!584708 res!854760) b!1913307))

(assert (= (and b!1913307 res!854758) b!1913306))

(declare-fun m!2347719 () Bool)

(assert (=> b!1913307 m!2347719))

(assert (=> b!1913307 m!2347457))

(declare-fun m!2347721 () Bool)

(assert (=> b!1913307 m!2347721))

(assert (=> b!1913307 m!2347721))

(declare-fun m!2347723 () Bool)

(assert (=> b!1913307 m!2347723))

(declare-fun m!2347725 () Bool)

(assert (=> b!1913306 m!2347725))

(assert (=> b!1913306 m!2347457))

(assert (=> b!1913306 m!2347721))

(assert (=> b!1913306 m!2347721))

(assert (=> b!1913306 m!2347723))

(declare-fun m!2347727 () Bool)

(assert (=> b!1913304 m!2347727))

(declare-fun m!2347729 () Bool)

(assert (=> b!1913305 m!2347729))

(assert (=> b!1913305 m!2347457))

(declare-fun m!2347731 () Bool)

(assert (=> b!1913305 m!2347731))

(declare-fun m!2347733 () Bool)

(assert (=> d!584708 m!2347733))

(assert (=> d!584708 m!2347457))

(assert (=> d!584708 m!2347457))

(declare-fun m!2347735 () Bool)

(assert (=> d!584708 m!2347735))

(assert (=> b!1913168 d!584708))

(declare-fun d!584746 () Bool)

(declare-fun fromListB!1228 (List!21681) BalanceConc!14216)

(assert (=> d!584746 (= (seqFromList!2726 lt!732572) (fromListB!1228 lt!732572))))

(declare-fun bs!414212 () Bool)

(assert (= bs!414212 d!584746))

(declare-fun m!2347737 () Bool)

(assert (=> bs!414212 m!2347737))

(assert (=> b!1913168 d!584746))

(declare-fun d!584748 () Bool)

(declare-fun res!854774 () Bool)

(declare-fun e!1222309 () Bool)

(assert (=> d!584748 (=> (not res!854774) (not e!1222309))))

(assert (=> d!584748 (= res!854774 (not (isEmpty!13278 (originalCharacters!4661 (h!27001 tokens!598)))))))

(assert (=> d!584748 (= (inv!28699 (h!27001 tokens!598)) e!1222309)))

(declare-fun b!1913322 () Bool)

(declare-fun res!854775 () Bool)

(assert (=> b!1913322 (=> (not res!854775) (not e!1222309))))

(declare-fun dynLambda!10511 (Int TokenValue!3990) BalanceConc!14216)

(assert (=> b!1913322 (= res!854775 (= (originalCharacters!4661 (h!27001 tokens!598)) (list!8778 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (value!121430 (h!27001 tokens!598))))))))

(declare-fun b!1913323 () Bool)

(declare-fun size!16994 (List!21681) Int)

(assert (=> b!1913323 (= e!1222309 (= (size!16988 (h!27001 tokens!598)) (size!16994 (originalCharacters!4661 (h!27001 tokens!598)))))))

(assert (= (and d!584748 res!854774) b!1913322))

(assert (= (and b!1913322 res!854775) b!1913323))

(declare-fun b_lambda!63283 () Bool)

(assert (=> (not b_lambda!63283) (not b!1913322)))

(declare-fun t!178256 () Bool)

(declare-fun tb!117073 () Bool)

(assert (=> (and b!1913176 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178256) tb!117073))

(declare-fun b!1913328 () Bool)

(declare-fun e!1222312 () Bool)

(declare-fun tp!546131 () Bool)

(declare-fun inv!28701 (Conc!7200) Bool)

(assert (=> b!1913328 (= e!1222312 (and (inv!28701 (c!311557 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (value!121430 (h!27001 tokens!598))))) tp!546131))))

(declare-fun result!141456 () Bool)

(declare-fun inv!28702 (BalanceConc!14216) Bool)

(assert (=> tb!117073 (= result!141456 (and (inv!28702 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (value!121430 (h!27001 tokens!598)))) e!1222312))))

(assert (= tb!117073 b!1913328))

(declare-fun m!2347755 () Bool)

(assert (=> b!1913328 m!2347755))

(declare-fun m!2347757 () Bool)

(assert (=> tb!117073 m!2347757))

(assert (=> b!1913322 t!178256))

(declare-fun b_and!149139 () Bool)

(assert (= b_and!149129 (and (=> t!178256 result!141456) b_and!149139)))

(declare-fun t!178258 () Bool)

(declare-fun tb!117075 () Bool)

(assert (=> (and b!1913169 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178258) tb!117075))

(declare-fun result!141460 () Bool)

(assert (= result!141460 result!141456))

(assert (=> b!1913322 t!178258))

(declare-fun b_and!149141 () Bool)

(assert (= b_and!149133 (and (=> t!178258 result!141460) b_and!149141)))

(declare-fun tb!117077 () Bool)

(declare-fun t!178260 () Bool)

(assert (=> (and b!1913156 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178260) tb!117077))

(declare-fun result!141462 () Bool)

(assert (= result!141462 result!141456))

(assert (=> b!1913322 t!178260))

(declare-fun b_and!149143 () Bool)

(assert (= b_and!149137 (and (=> t!178260 result!141462) b_and!149143)))

(declare-fun m!2347759 () Bool)

(assert (=> d!584748 m!2347759))

(declare-fun m!2347761 () Bool)

(assert (=> b!1913322 m!2347761))

(assert (=> b!1913322 m!2347761))

(declare-fun m!2347763 () Bool)

(assert (=> b!1913322 m!2347763))

(declare-fun m!2347765 () Bool)

(assert (=> b!1913323 m!2347765))

(assert (=> b!1913147 d!584748))

(declare-fun b!1913360 () Bool)

(declare-fun e!1222331 () Bool)

(assert (=> b!1913360 (= e!1222331 (not (= (head!4460 lt!732562) (c!311556 (regex!3854 lt!732555)))))))

(declare-fun b!1913361 () Bool)

(declare-fun e!1222334 () Bool)

(declare-fun nullable!1599 (Regex!5279) Bool)

(assert (=> b!1913361 (= e!1222334 (nullable!1599 (regex!3854 lt!732555)))))

(declare-fun b!1913362 () Bool)

(declare-fun e!1222335 () Bool)

(assert (=> b!1913362 (= e!1222335 e!1222331)))

(declare-fun res!854799 () Bool)

(assert (=> b!1913362 (=> res!854799 e!1222331)))

(declare-fun call!117797 () Bool)

(assert (=> b!1913362 (= res!854799 call!117797)))

(declare-fun b!1913363 () Bool)

(declare-fun res!854795 () Bool)

(assert (=> b!1913363 (=> res!854795 e!1222331)))

(declare-fun tail!2961 (List!21681) List!21681)

(assert (=> b!1913363 (= res!854795 (not (isEmpty!13278 (tail!2961 lt!732562))))))

(declare-fun b!1913364 () Bool)

(declare-fun e!1222332 () Bool)

(declare-fun lt!732641 () Bool)

(assert (=> b!1913364 (= e!1222332 (not lt!732641))))

(declare-fun b!1913365 () Bool)

(declare-fun e!1222330 () Bool)

(assert (=> b!1913365 (= e!1222330 (= (head!4460 lt!732562) (c!311556 (regex!3854 lt!732555))))))

(declare-fun b!1913366 () Bool)

(declare-fun res!854800 () Bool)

(declare-fun e!1222333 () Bool)

(assert (=> b!1913366 (=> res!854800 e!1222333)))

(assert (=> b!1913366 (= res!854800 (not ((_ is ElementMatch!5279) (regex!3854 lt!732555))))))

(assert (=> b!1913366 (= e!1222332 e!1222333)))

(declare-fun b!1913367 () Bool)

(declare-fun res!854797 () Bool)

(assert (=> b!1913367 (=> (not res!854797) (not e!1222330))))

(assert (=> b!1913367 (= res!854797 (isEmpty!13278 (tail!2961 lt!732562)))))

(declare-fun b!1913368 () Bool)

(declare-fun res!854798 () Bool)

(assert (=> b!1913368 (=> res!854798 e!1222333)))

(assert (=> b!1913368 (= res!854798 e!1222330)))

(declare-fun res!854802 () Bool)

(assert (=> b!1913368 (=> (not res!854802) (not e!1222330))))

(assert (=> b!1913368 (= res!854802 lt!732641)))

(declare-fun bm!117792 () Bool)

(assert (=> bm!117792 (= call!117797 (isEmpty!13278 lt!732562))))

(declare-fun b!1913369 () Bool)

(declare-fun res!854801 () Bool)

(assert (=> b!1913369 (=> (not res!854801) (not e!1222330))))

(assert (=> b!1913369 (= res!854801 (not call!117797))))

(declare-fun b!1913370 () Bool)

(declare-fun e!1222336 () Bool)

(assert (=> b!1913370 (= e!1222336 e!1222332)))

(declare-fun c!311600 () Bool)

(assert (=> b!1913370 (= c!311600 ((_ is EmptyLang!5279) (regex!3854 lt!732555)))))

(declare-fun b!1913371 () Bool)

(declare-fun derivativeStep!1358 (Regex!5279 C!10704) Regex!5279)

(assert (=> b!1913371 (= e!1222334 (matchR!2565 (derivativeStep!1358 (regex!3854 lt!732555) (head!4460 lt!732562)) (tail!2961 lt!732562)))))

(declare-fun d!584754 () Bool)

(assert (=> d!584754 e!1222336))

(declare-fun c!311602 () Bool)

(assert (=> d!584754 (= c!311602 ((_ is EmptyExpr!5279) (regex!3854 lt!732555)))))

(assert (=> d!584754 (= lt!732641 e!1222334)))

(declare-fun c!311601 () Bool)

(assert (=> d!584754 (= c!311601 (isEmpty!13278 lt!732562))))

(declare-fun validRegex!2125 (Regex!5279) Bool)

(assert (=> d!584754 (validRegex!2125 (regex!3854 lt!732555))))

(assert (=> d!584754 (= (matchR!2565 (regex!3854 lt!732555) lt!732562) lt!732641)))

(declare-fun b!1913372 () Bool)

(assert (=> b!1913372 (= e!1222333 e!1222335)))

(declare-fun res!854796 () Bool)

(assert (=> b!1913372 (=> (not res!854796) (not e!1222335))))

(assert (=> b!1913372 (= res!854796 (not lt!732641))))

(declare-fun b!1913373 () Bool)

(assert (=> b!1913373 (= e!1222336 (= lt!732641 call!117797))))

(assert (= (and d!584754 c!311601) b!1913361))

(assert (= (and d!584754 (not c!311601)) b!1913371))

(assert (= (and d!584754 c!311602) b!1913373))

(assert (= (and d!584754 (not c!311602)) b!1913370))

(assert (= (and b!1913370 c!311600) b!1913364))

(assert (= (and b!1913370 (not c!311600)) b!1913366))

(assert (= (and b!1913366 (not res!854800)) b!1913368))

(assert (= (and b!1913368 res!854802) b!1913369))

(assert (= (and b!1913369 res!854801) b!1913367))

(assert (= (and b!1913367 res!854797) b!1913365))

(assert (= (and b!1913368 (not res!854798)) b!1913372))

(assert (= (and b!1913372 res!854796) b!1913362))

(assert (= (and b!1913362 (not res!854799)) b!1913363))

(assert (= (and b!1913363 (not res!854795)) b!1913360))

(assert (= (or b!1913373 b!1913369 b!1913362) bm!117792))

(declare-fun m!2347771 () Bool)

(assert (=> bm!117792 m!2347771))

(assert (=> d!584754 m!2347771))

(declare-fun m!2347773 () Bool)

(assert (=> d!584754 m!2347773))

(declare-fun m!2347775 () Bool)

(assert (=> b!1913367 m!2347775))

(assert (=> b!1913367 m!2347775))

(declare-fun m!2347777 () Bool)

(assert (=> b!1913367 m!2347777))

(assert (=> b!1913365 m!2347411))

(assert (=> b!1913363 m!2347775))

(assert (=> b!1913363 m!2347775))

(assert (=> b!1913363 m!2347777))

(assert (=> b!1913360 m!2347411))

(declare-fun m!2347779 () Bool)

(assert (=> b!1913361 m!2347779))

(assert (=> b!1913371 m!2347411))

(assert (=> b!1913371 m!2347411))

(declare-fun m!2347781 () Bool)

(assert (=> b!1913371 m!2347781))

(assert (=> b!1913371 m!2347775))

(assert (=> b!1913371 m!2347781))

(assert (=> b!1913371 m!2347775))

(declare-fun m!2347783 () Bool)

(assert (=> b!1913371 m!2347783))

(assert (=> b!1913170 d!584754))

(declare-fun d!584760 () Bool)

(assert (=> d!584760 (= (get!6747 lt!732570) (v!26470 lt!732570))))

(assert (=> b!1913170 d!584760))

(declare-fun d!584762 () Bool)

(assert (=> d!584762 (= (isEmpty!13277 tokens!598) ((_ is Nil!21600) tokens!598))))

(assert (=> b!1913149 d!584762))

(declare-fun b!1913419 () Bool)

(declare-fun e!1222353 () Bool)

(declare-fun e!1222352 () Bool)

(assert (=> b!1913419 (= e!1222353 e!1222352)))

(declare-fun res!854843 () Bool)

(assert (=> b!1913419 (=> (not res!854843) (not e!1222352))))

(declare-fun lt!732669 () Option!4413)

(assert (=> b!1913419 (= res!854843 (isDefined!3712 lt!732669))))

(declare-fun b!1913420 () Bool)

(assert (=> b!1913420 (= e!1222352 (contains!3913 rules!3198 (rule!6053 (_1!11632 (get!6748 lt!732669)))))))

(declare-fun bm!117798 () Bool)

(declare-fun call!117803 () Option!4413)

(declare-fun maxPrefixOneRule!1209 (LexerInterface!3467 Rule!7508 List!21681) Option!4413)

(assert (=> bm!117798 (= call!117803 (maxPrefixOneRule!1209 thiss!23328 (h!27002 rules!3198) lt!732549))))

(declare-fun b!1913422 () Bool)

(declare-fun res!854842 () Bool)

(assert (=> b!1913422 (=> (not res!854842) (not e!1222352))))

(declare-fun apply!5654 (TokenValueInjection!7564 BalanceConc!14216) TokenValue!3990)

(assert (=> b!1913422 (= res!854842 (= (value!121430 (_1!11632 (get!6748 lt!732669))) (apply!5654 (transformation!3854 (rule!6053 (_1!11632 (get!6748 lt!732669)))) (seqFromList!2726 (originalCharacters!4661 (_1!11632 (get!6748 lt!732669)))))))))

(declare-fun b!1913423 () Bool)

(declare-fun res!854844 () Bool)

(assert (=> b!1913423 (=> (not res!854844) (not e!1222352))))

(assert (=> b!1913423 (= res!854844 (= (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732669)))) (originalCharacters!4661 (_1!11632 (get!6748 lt!732669)))))))

(declare-fun b!1913424 () Bool)

(declare-fun e!1222354 () Option!4413)

(assert (=> b!1913424 (= e!1222354 call!117803)))

(declare-fun b!1913425 () Bool)

(declare-fun res!854839 () Bool)

(assert (=> b!1913425 (=> (not res!854839) (not e!1222352))))

(assert (=> b!1913425 (= res!854839 (= (++!5805 (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732669)))) (_2!11632 (get!6748 lt!732669))) lt!732549))))

(declare-fun b!1913426 () Bool)

(declare-fun res!854841 () Bool)

(assert (=> b!1913426 (=> (not res!854841) (not e!1222352))))

(assert (=> b!1913426 (= res!854841 (< (size!16994 (_2!11632 (get!6748 lt!732669))) (size!16994 lt!732549)))))

(declare-fun b!1913427 () Bool)

(declare-fun res!854838 () Bool)

(assert (=> b!1913427 (=> (not res!854838) (not e!1222352))))

(assert (=> b!1913427 (= res!854838 (matchR!2565 (regex!3854 (rule!6053 (_1!11632 (get!6748 lt!732669)))) (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732669))))))))

(declare-fun b!1913421 () Bool)

(declare-fun lt!732668 () Option!4413)

(declare-fun lt!732671 () Option!4413)

(assert (=> b!1913421 (= e!1222354 (ite (and ((_ is None!4412) lt!732668) ((_ is None!4412) lt!732671)) None!4412 (ite ((_ is None!4412) lt!732671) lt!732668 (ite ((_ is None!4412) lt!732668) lt!732671 (ite (>= (size!16988 (_1!11632 (v!26469 lt!732668))) (size!16988 (_1!11632 (v!26469 lt!732671)))) lt!732668 lt!732671)))))))

(assert (=> b!1913421 (= lt!732668 call!117803)))

(assert (=> b!1913421 (= lt!732671 (maxPrefix!1913 thiss!23328 (t!178252 rules!3198) lt!732549))))

(declare-fun d!584764 () Bool)

(assert (=> d!584764 e!1222353))

(declare-fun res!854840 () Bool)

(assert (=> d!584764 (=> res!854840 e!1222353)))

(declare-fun isEmpty!13285 (Option!4413) Bool)

(assert (=> d!584764 (= res!854840 (isEmpty!13285 lt!732669))))

(assert (=> d!584764 (= lt!732669 e!1222354)))

(declare-fun c!311608 () Bool)

(assert (=> d!584764 (= c!311608 (and ((_ is Cons!21601) rules!3198) ((_ is Nil!21601) (t!178252 rules!3198))))))

(declare-fun lt!732670 () Unit!35976)

(declare-fun lt!732667 () Unit!35976)

(assert (=> d!584764 (= lt!732670 lt!732667)))

(declare-fun isPrefix!1927 (List!21681 List!21681) Bool)

(assert (=> d!584764 (isPrefix!1927 lt!732549 lt!732549)))

(declare-fun lemmaIsPrefixRefl!1245 (List!21681 List!21681) Unit!35976)

(assert (=> d!584764 (= lt!732667 (lemmaIsPrefixRefl!1245 lt!732549 lt!732549))))

(assert (=> d!584764 (rulesValidInductive!1308 thiss!23328 rules!3198)))

(assert (=> d!584764 (= (maxPrefix!1913 thiss!23328 rules!3198 lt!732549) lt!732669)))

(assert (= (and d!584764 c!311608) b!1913424))

(assert (= (and d!584764 (not c!311608)) b!1913421))

(assert (= (or b!1913424 b!1913421) bm!117798))

(assert (= (and d!584764 (not res!854840)) b!1913419))

(assert (= (and b!1913419 res!854843) b!1913423))

(assert (= (and b!1913423 res!854844) b!1913426))

(assert (= (and b!1913426 res!854841) b!1913425))

(assert (= (and b!1913425 res!854839) b!1913422))

(assert (= (and b!1913422 res!854842) b!1913427))

(assert (= (and b!1913427 res!854838) b!1913420))

(declare-fun m!2347817 () Bool)

(assert (=> b!1913419 m!2347817))

(declare-fun m!2347819 () Bool)

(assert (=> bm!117798 m!2347819))

(declare-fun m!2347821 () Bool)

(assert (=> b!1913427 m!2347821))

(declare-fun m!2347823 () Bool)

(assert (=> b!1913427 m!2347823))

(assert (=> b!1913427 m!2347823))

(declare-fun m!2347825 () Bool)

(assert (=> b!1913427 m!2347825))

(assert (=> b!1913427 m!2347825))

(declare-fun m!2347827 () Bool)

(assert (=> b!1913427 m!2347827))

(assert (=> b!1913425 m!2347821))

(assert (=> b!1913425 m!2347823))

(assert (=> b!1913425 m!2347823))

(assert (=> b!1913425 m!2347825))

(assert (=> b!1913425 m!2347825))

(declare-fun m!2347829 () Bool)

(assert (=> b!1913425 m!2347829))

(declare-fun m!2347831 () Bool)

(assert (=> d!584764 m!2347831))

(declare-fun m!2347833 () Bool)

(assert (=> d!584764 m!2347833))

(declare-fun m!2347835 () Bool)

(assert (=> d!584764 m!2347835))

(assert (=> d!584764 m!2347481))

(declare-fun m!2347837 () Bool)

(assert (=> b!1913421 m!2347837))

(assert (=> b!1913426 m!2347821))

(declare-fun m!2347839 () Bool)

(assert (=> b!1913426 m!2347839))

(declare-fun m!2347841 () Bool)

(assert (=> b!1913426 m!2347841))

(assert (=> b!1913420 m!2347821))

(declare-fun m!2347843 () Bool)

(assert (=> b!1913420 m!2347843))

(assert (=> b!1913423 m!2347821))

(assert (=> b!1913423 m!2347823))

(assert (=> b!1913423 m!2347823))

(assert (=> b!1913423 m!2347825))

(assert (=> b!1913422 m!2347821))

(declare-fun m!2347845 () Bool)

(assert (=> b!1913422 m!2347845))

(assert (=> b!1913422 m!2347845))

(declare-fun m!2347847 () Bool)

(assert (=> b!1913422 m!2347847))

(assert (=> b!1913149 d!584764))

(declare-fun d!584768 () Bool)

(assert (=> d!584768 (= (maxPrefix!1913 thiss!23328 rules!3198 (++!5805 (list!8778 (charsOf!2410 (h!27001 tokens!598))) lt!732569)) (Some!4412 (tuple2!20327 (h!27001 tokens!598) lt!732569)))))

(declare-fun lt!732680 () Unit!35976)

(declare-fun choose!11906 (LexerInterface!3467 List!21683 Token!7260 Rule!7508 List!21681 Rule!7508) Unit!35976)

(assert (=> d!584768 (= lt!732680 (choose!11906 thiss!23328 rules!3198 (h!27001 tokens!598) (rule!6053 (h!27001 tokens!598)) lt!732569 (rule!6053 separatorToken!354)))))

(assert (=> d!584768 (not (isEmpty!13280 rules!3198))))

(assert (=> d!584768 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!90 thiss!23328 rules!3198 (h!27001 tokens!598) (rule!6053 (h!27001 tokens!598)) lt!732569 (rule!6053 separatorToken!354)) lt!732680)))

(declare-fun bs!414214 () Bool)

(assert (= bs!414214 d!584768))

(assert (=> bs!414214 m!2347521))

(declare-fun m!2347875 () Bool)

(assert (=> bs!414214 m!2347875))

(declare-fun m!2347877 () Bool)

(assert (=> bs!414214 m!2347877))

(assert (=> bs!414214 m!2347447))

(assert (=> bs!414214 m!2347877))

(declare-fun m!2347879 () Bool)

(assert (=> bs!414214 m!2347879))

(declare-fun m!2347881 () Bool)

(assert (=> bs!414214 m!2347881))

(assert (=> bs!414214 m!2347521))

(assert (=> bs!414214 m!2347875))

(assert (=> b!1913149 d!584768))

(declare-fun b!1913456 () Bool)

(declare-fun e!1222378 () Bool)

(assert (=> b!1913456 (= e!1222378 (not (= (head!4460 lt!732572) (c!311556 (regex!3854 lt!732542)))))))

(declare-fun b!1913457 () Bool)

(declare-fun e!1222381 () Bool)

(assert (=> b!1913457 (= e!1222381 (nullable!1599 (regex!3854 lt!732542)))))

(declare-fun b!1913458 () Bool)

(declare-fun e!1222382 () Bool)

(assert (=> b!1913458 (= e!1222382 e!1222378)))

(declare-fun res!854865 () Bool)

(assert (=> b!1913458 (=> res!854865 e!1222378)))

(declare-fun call!117804 () Bool)

(assert (=> b!1913458 (= res!854865 call!117804)))

(declare-fun b!1913459 () Bool)

(declare-fun res!854861 () Bool)

(assert (=> b!1913459 (=> res!854861 e!1222378)))

(assert (=> b!1913459 (= res!854861 (not (isEmpty!13278 (tail!2961 lt!732572))))))

(declare-fun b!1913460 () Bool)

(declare-fun e!1222379 () Bool)

(declare-fun lt!732681 () Bool)

(assert (=> b!1913460 (= e!1222379 (not lt!732681))))

(declare-fun b!1913461 () Bool)

(declare-fun e!1222377 () Bool)

(assert (=> b!1913461 (= e!1222377 (= (head!4460 lt!732572) (c!311556 (regex!3854 lt!732542))))))

(declare-fun b!1913462 () Bool)

(declare-fun res!854866 () Bool)

(declare-fun e!1222380 () Bool)

(assert (=> b!1913462 (=> res!854866 e!1222380)))

(assert (=> b!1913462 (= res!854866 (not ((_ is ElementMatch!5279) (regex!3854 lt!732542))))))

(assert (=> b!1913462 (= e!1222379 e!1222380)))

(declare-fun b!1913463 () Bool)

(declare-fun res!854863 () Bool)

(assert (=> b!1913463 (=> (not res!854863) (not e!1222377))))

(assert (=> b!1913463 (= res!854863 (isEmpty!13278 (tail!2961 lt!732572)))))

(declare-fun b!1913464 () Bool)

(declare-fun res!854864 () Bool)

(assert (=> b!1913464 (=> res!854864 e!1222380)))

(assert (=> b!1913464 (= res!854864 e!1222377)))

(declare-fun res!854868 () Bool)

(assert (=> b!1913464 (=> (not res!854868) (not e!1222377))))

(assert (=> b!1913464 (= res!854868 lt!732681)))

(declare-fun bm!117799 () Bool)

(assert (=> bm!117799 (= call!117804 (isEmpty!13278 lt!732572))))

(declare-fun b!1913465 () Bool)

(declare-fun res!854867 () Bool)

(assert (=> b!1913465 (=> (not res!854867) (not e!1222377))))

(assert (=> b!1913465 (= res!854867 (not call!117804))))

(declare-fun b!1913466 () Bool)

(declare-fun e!1222383 () Bool)

(assert (=> b!1913466 (= e!1222383 e!1222379)))

(declare-fun c!311615 () Bool)

(assert (=> b!1913466 (= c!311615 ((_ is EmptyLang!5279) (regex!3854 lt!732542)))))

(declare-fun b!1913467 () Bool)

(assert (=> b!1913467 (= e!1222381 (matchR!2565 (derivativeStep!1358 (regex!3854 lt!732542) (head!4460 lt!732572)) (tail!2961 lt!732572)))))

(declare-fun d!584782 () Bool)

(assert (=> d!584782 e!1222383))

(declare-fun c!311617 () Bool)

(assert (=> d!584782 (= c!311617 ((_ is EmptyExpr!5279) (regex!3854 lt!732542)))))

(assert (=> d!584782 (= lt!732681 e!1222381)))

(declare-fun c!311616 () Bool)

(assert (=> d!584782 (= c!311616 (isEmpty!13278 lt!732572))))

(assert (=> d!584782 (validRegex!2125 (regex!3854 lt!732542))))

(assert (=> d!584782 (= (matchR!2565 (regex!3854 lt!732542) lt!732572) lt!732681)))

(declare-fun b!1913468 () Bool)

(assert (=> b!1913468 (= e!1222380 e!1222382)))

(declare-fun res!854862 () Bool)

(assert (=> b!1913468 (=> (not res!854862) (not e!1222382))))

(assert (=> b!1913468 (= res!854862 (not lt!732681))))

(declare-fun b!1913469 () Bool)

(assert (=> b!1913469 (= e!1222383 (= lt!732681 call!117804))))

(assert (= (and d!584782 c!311616) b!1913457))

(assert (= (and d!584782 (not c!311616)) b!1913467))

(assert (= (and d!584782 c!311617) b!1913469))

(assert (= (and d!584782 (not c!311617)) b!1913466))

(assert (= (and b!1913466 c!311615) b!1913460))

(assert (= (and b!1913466 (not c!311615)) b!1913462))

(assert (= (and b!1913462 (not res!854866)) b!1913464))

(assert (= (and b!1913464 res!854868) b!1913465))

(assert (= (and b!1913465 res!854867) b!1913463))

(assert (= (and b!1913463 res!854863) b!1913461))

(assert (= (and b!1913464 (not res!854864)) b!1913468))

(assert (= (and b!1913468 res!854862) b!1913458))

(assert (= (and b!1913458 (not res!854865)) b!1913459))

(assert (= (and b!1913459 (not res!854861)) b!1913456))

(assert (= (or b!1913469 b!1913465 b!1913458) bm!117799))

(declare-fun m!2347883 () Bool)

(assert (=> bm!117799 m!2347883))

(assert (=> d!584782 m!2347883))

(declare-fun m!2347885 () Bool)

(assert (=> d!584782 m!2347885))

(declare-fun m!2347887 () Bool)

(assert (=> b!1913463 m!2347887))

(assert (=> b!1913463 m!2347887))

(declare-fun m!2347889 () Bool)

(assert (=> b!1913463 m!2347889))

(declare-fun m!2347891 () Bool)

(assert (=> b!1913461 m!2347891))

(assert (=> b!1913459 m!2347887))

(assert (=> b!1913459 m!2347887))

(assert (=> b!1913459 m!2347889))

(assert (=> b!1913456 m!2347891))

(declare-fun m!2347893 () Bool)

(assert (=> b!1913457 m!2347893))

(assert (=> b!1913467 m!2347891))

(assert (=> b!1913467 m!2347891))

(declare-fun m!2347895 () Bool)

(assert (=> b!1913467 m!2347895))

(assert (=> b!1913467 m!2347887))

(assert (=> b!1913467 m!2347895))

(assert (=> b!1913467 m!2347887))

(declare-fun m!2347897 () Bool)

(assert (=> b!1913467 m!2347897))

(assert (=> b!1913150 d!584782))

(declare-fun d!584784 () Bool)

(assert (=> d!584784 (= (get!6747 lt!732550) (v!26470 lt!732550))))

(assert (=> b!1913150 d!584784))

(declare-fun d!584786 () Bool)

(declare-fun lt!732684 () Bool)

(declare-fun content!3155 (List!21683) (InoxSet Rule!7508))

(assert (=> d!584786 (= lt!732684 (select (content!3155 rules!3198) (rule!6053 (h!27001 tokens!598))))))

(declare-fun e!1222388 () Bool)

(assert (=> d!584786 (= lt!732684 e!1222388)))

(declare-fun res!854874 () Bool)

(assert (=> d!584786 (=> (not res!854874) (not e!1222388))))

(assert (=> d!584786 (= res!854874 ((_ is Cons!21601) rules!3198))))

(assert (=> d!584786 (= (contains!3913 rules!3198 (rule!6053 (h!27001 tokens!598))) lt!732684)))

(declare-fun b!1913474 () Bool)

(declare-fun e!1222389 () Bool)

(assert (=> b!1913474 (= e!1222388 e!1222389)))

(declare-fun res!854873 () Bool)

(assert (=> b!1913474 (=> res!854873 e!1222389)))

(assert (=> b!1913474 (= res!854873 (= (h!27002 rules!3198) (rule!6053 (h!27001 tokens!598))))))

(declare-fun b!1913475 () Bool)

(assert (=> b!1913475 (= e!1222389 (contains!3913 (t!178252 rules!3198) (rule!6053 (h!27001 tokens!598))))))

(assert (= (and d!584786 res!854874) b!1913474))

(assert (= (and b!1913474 (not res!854873)) b!1913475))

(declare-fun m!2347899 () Bool)

(assert (=> d!584786 m!2347899))

(declare-fun m!2347901 () Bool)

(assert (=> d!584786 m!2347901))

(declare-fun m!2347903 () Bool)

(assert (=> b!1913475 m!2347903))

(assert (=> b!1913151 d!584786))

(declare-fun d!584788 () Bool)

(declare-fun e!1222392 () Bool)

(assert (=> d!584788 e!1222392))

(declare-fun res!854879 () Bool)

(assert (=> d!584788 (=> (not res!854879) (not e!1222392))))

(assert (=> d!584788 (= res!854879 (isDefined!3711 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 separatorToken!354)))))))

(declare-fun lt!732687 () Unit!35976)

(declare-fun choose!11907 (LexerInterface!3467 List!21683 List!21681 Token!7260) Unit!35976)

(assert (=> d!584788 (= lt!732687 (choose!11907 thiss!23328 rules!3198 lt!732562 separatorToken!354))))

(assert (=> d!584788 (rulesInvariant!3074 thiss!23328 rules!3198)))

(assert (=> d!584788 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!697 thiss!23328 rules!3198 lt!732562 separatorToken!354) lt!732687)))

(declare-fun b!1913480 () Bool)

(declare-fun res!854880 () Bool)

(assert (=> b!1913480 (=> (not res!854880) (not e!1222392))))

(assert (=> b!1913480 (= res!854880 (matchR!2565 (regex!3854 (get!6747 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 separatorToken!354))))) (list!8778 (charsOf!2410 separatorToken!354))))))

(declare-fun b!1913481 () Bool)

(assert (=> b!1913481 (= e!1222392 (= (rule!6053 separatorToken!354) (get!6747 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 separatorToken!354))))))))

(assert (= (and d!584788 res!854879) b!1913480))

(assert (= (and b!1913480 res!854880) b!1913481))

(assert (=> d!584788 m!2347533))

(assert (=> d!584788 m!2347533))

(declare-fun m!2347905 () Bool)

(assert (=> d!584788 m!2347905))

(declare-fun m!2347907 () Bool)

(assert (=> d!584788 m!2347907))

(assert (=> d!584788 m!2347443))

(assert (=> b!1913480 m!2347519))

(assert (=> b!1913480 m!2347523))

(assert (=> b!1913480 m!2347519))

(assert (=> b!1913480 m!2347533))

(assert (=> b!1913480 m!2347523))

(declare-fun m!2347909 () Bool)

(assert (=> b!1913480 m!2347909))

(assert (=> b!1913480 m!2347533))

(declare-fun m!2347911 () Bool)

(assert (=> b!1913480 m!2347911))

(assert (=> b!1913481 m!2347533))

(assert (=> b!1913481 m!2347533))

(assert (=> b!1913481 m!2347911))

(assert (=> b!1913152 d!584788))

(declare-fun d!584790 () Bool)

(declare-fun isEmpty!13286 (Option!4414) Bool)

(assert (=> d!584790 (= (isDefined!3711 lt!732550) (not (isEmpty!13286 lt!732550)))))

(declare-fun bs!414215 () Bool)

(assert (= bs!414215 d!584790))

(declare-fun m!2347913 () Bool)

(assert (=> bs!414215 m!2347913))

(assert (=> b!1913152 d!584790))

(declare-fun b!1913482 () Bool)

(declare-fun e!1222394 () Bool)

(declare-fun e!1222393 () Bool)

(assert (=> b!1913482 (= e!1222394 e!1222393)))

(declare-fun res!854886 () Bool)

(assert (=> b!1913482 (=> (not res!854886) (not e!1222393))))

(declare-fun lt!732690 () Option!4413)

(assert (=> b!1913482 (= res!854886 (isDefined!3712 lt!732690))))

(declare-fun b!1913483 () Bool)

(assert (=> b!1913483 (= e!1222393 (contains!3913 rules!3198 (rule!6053 (_1!11632 (get!6748 lt!732690)))))))

(declare-fun bm!117800 () Bool)

(declare-fun call!117805 () Option!4413)

(assert (=> bm!117800 (= call!117805 (maxPrefixOneRule!1209 thiss!23328 (h!27002 rules!3198) (++!5805 lt!732572 lt!732565)))))

(declare-fun b!1913485 () Bool)

(declare-fun res!854885 () Bool)

(assert (=> b!1913485 (=> (not res!854885) (not e!1222393))))

(assert (=> b!1913485 (= res!854885 (= (value!121430 (_1!11632 (get!6748 lt!732690))) (apply!5654 (transformation!3854 (rule!6053 (_1!11632 (get!6748 lt!732690)))) (seqFromList!2726 (originalCharacters!4661 (_1!11632 (get!6748 lt!732690)))))))))

(declare-fun b!1913486 () Bool)

(declare-fun res!854887 () Bool)

(assert (=> b!1913486 (=> (not res!854887) (not e!1222393))))

(assert (=> b!1913486 (= res!854887 (= (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732690)))) (originalCharacters!4661 (_1!11632 (get!6748 lt!732690)))))))

(declare-fun b!1913487 () Bool)

(declare-fun e!1222395 () Option!4413)

(assert (=> b!1913487 (= e!1222395 call!117805)))

(declare-fun b!1913488 () Bool)

(declare-fun res!854882 () Bool)

(assert (=> b!1913488 (=> (not res!854882) (not e!1222393))))

(assert (=> b!1913488 (= res!854882 (= (++!5805 (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732690)))) (_2!11632 (get!6748 lt!732690))) (++!5805 lt!732572 lt!732565)))))

(declare-fun b!1913489 () Bool)

(declare-fun res!854884 () Bool)

(assert (=> b!1913489 (=> (not res!854884) (not e!1222393))))

(assert (=> b!1913489 (= res!854884 (< (size!16994 (_2!11632 (get!6748 lt!732690))) (size!16994 (++!5805 lt!732572 lt!732565))))))

(declare-fun b!1913490 () Bool)

(declare-fun res!854881 () Bool)

(assert (=> b!1913490 (=> (not res!854881) (not e!1222393))))

(assert (=> b!1913490 (= res!854881 (matchR!2565 (regex!3854 (rule!6053 (_1!11632 (get!6748 lt!732690)))) (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732690))))))))

(declare-fun b!1913484 () Bool)

(declare-fun lt!732689 () Option!4413)

(declare-fun lt!732692 () Option!4413)

(assert (=> b!1913484 (= e!1222395 (ite (and ((_ is None!4412) lt!732689) ((_ is None!4412) lt!732692)) None!4412 (ite ((_ is None!4412) lt!732692) lt!732689 (ite ((_ is None!4412) lt!732689) lt!732692 (ite (>= (size!16988 (_1!11632 (v!26469 lt!732689))) (size!16988 (_1!11632 (v!26469 lt!732692)))) lt!732689 lt!732692)))))))

(assert (=> b!1913484 (= lt!732689 call!117805)))

(assert (=> b!1913484 (= lt!732692 (maxPrefix!1913 thiss!23328 (t!178252 rules!3198) (++!5805 lt!732572 lt!732565)))))

(declare-fun d!584792 () Bool)

(assert (=> d!584792 e!1222394))

(declare-fun res!854883 () Bool)

(assert (=> d!584792 (=> res!854883 e!1222394)))

(assert (=> d!584792 (= res!854883 (isEmpty!13285 lt!732690))))

(assert (=> d!584792 (= lt!732690 e!1222395)))

(declare-fun c!311618 () Bool)

(assert (=> d!584792 (= c!311618 (and ((_ is Cons!21601) rules!3198) ((_ is Nil!21601) (t!178252 rules!3198))))))

(declare-fun lt!732691 () Unit!35976)

(declare-fun lt!732688 () Unit!35976)

(assert (=> d!584792 (= lt!732691 lt!732688)))

(assert (=> d!584792 (isPrefix!1927 (++!5805 lt!732572 lt!732565) (++!5805 lt!732572 lt!732565))))

(assert (=> d!584792 (= lt!732688 (lemmaIsPrefixRefl!1245 (++!5805 lt!732572 lt!732565) (++!5805 lt!732572 lt!732565)))))

(assert (=> d!584792 (rulesValidInductive!1308 thiss!23328 rules!3198)))

(assert (=> d!584792 (= (maxPrefix!1913 thiss!23328 rules!3198 (++!5805 lt!732572 lt!732565)) lt!732690)))

(assert (= (and d!584792 c!311618) b!1913487))

(assert (= (and d!584792 (not c!311618)) b!1913484))

(assert (= (or b!1913487 b!1913484) bm!117800))

(assert (= (and d!584792 (not res!854883)) b!1913482))

(assert (= (and b!1913482 res!854886) b!1913486))

(assert (= (and b!1913486 res!854887) b!1913489))

(assert (= (and b!1913489 res!854884) b!1913488))

(assert (= (and b!1913488 res!854882) b!1913485))

(assert (= (and b!1913485 res!854885) b!1913490))

(assert (= (and b!1913490 res!854881) b!1913483))

(declare-fun m!2347915 () Bool)

(assert (=> b!1913482 m!2347915))

(assert (=> bm!117800 m!2347525))

(declare-fun m!2347917 () Bool)

(assert (=> bm!117800 m!2347917))

(declare-fun m!2347919 () Bool)

(assert (=> b!1913490 m!2347919))

(declare-fun m!2347921 () Bool)

(assert (=> b!1913490 m!2347921))

(assert (=> b!1913490 m!2347921))

(declare-fun m!2347923 () Bool)

(assert (=> b!1913490 m!2347923))

(assert (=> b!1913490 m!2347923))

(declare-fun m!2347925 () Bool)

(assert (=> b!1913490 m!2347925))

(assert (=> b!1913488 m!2347919))

(assert (=> b!1913488 m!2347921))

(assert (=> b!1913488 m!2347921))

(assert (=> b!1913488 m!2347923))

(assert (=> b!1913488 m!2347923))

(declare-fun m!2347927 () Bool)

(assert (=> b!1913488 m!2347927))

(declare-fun m!2347929 () Bool)

(assert (=> d!584792 m!2347929))

(assert (=> d!584792 m!2347525))

(assert (=> d!584792 m!2347525))

(declare-fun m!2347931 () Bool)

(assert (=> d!584792 m!2347931))

(assert (=> d!584792 m!2347525))

(assert (=> d!584792 m!2347525))

(declare-fun m!2347933 () Bool)

(assert (=> d!584792 m!2347933))

(assert (=> d!584792 m!2347481))

(assert (=> b!1913484 m!2347525))

(declare-fun m!2347935 () Bool)

(assert (=> b!1913484 m!2347935))

(assert (=> b!1913489 m!2347919))

(declare-fun m!2347937 () Bool)

(assert (=> b!1913489 m!2347937))

(assert (=> b!1913489 m!2347525))

(declare-fun m!2347939 () Bool)

(assert (=> b!1913489 m!2347939))

(assert (=> b!1913483 m!2347919))

(declare-fun m!2347941 () Bool)

(assert (=> b!1913483 m!2347941))

(assert (=> b!1913486 m!2347919))

(assert (=> b!1913486 m!2347921))

(assert (=> b!1913486 m!2347921))

(assert (=> b!1913486 m!2347923))

(assert (=> b!1913485 m!2347919))

(declare-fun m!2347943 () Bool)

(assert (=> b!1913485 m!2347943))

(assert (=> b!1913485 m!2347943))

(declare-fun m!2347945 () Bool)

(assert (=> b!1913485 m!2347945))

(assert (=> b!1913152 d!584792))

(declare-fun d!584794 () Bool)

(assert (=> d!584794 (= (get!6748 lt!732541) (v!26469 lt!732541))))

(assert (=> b!1913152 d!584794))

(declare-fun d!584796 () Bool)

(assert (=> d!584796 (= (isDefined!3712 lt!732541) (not (isEmpty!13285 lt!732541)))))

(declare-fun bs!414216 () Bool)

(assert (= bs!414216 d!584796))

(declare-fun m!2347947 () Bool)

(assert (=> bs!414216 m!2347947))

(assert (=> b!1913152 d!584796))

(declare-fun d!584798 () Bool)

(declare-fun e!1222396 () Bool)

(assert (=> d!584798 e!1222396))

(declare-fun res!854888 () Bool)

(assert (=> d!584798 (=> (not res!854888) (not e!1222396))))

(assert (=> d!584798 (= res!854888 (isDefined!3711 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 (h!27001 tokens!598))))))))

(declare-fun lt!732693 () Unit!35976)

(assert (=> d!584798 (= lt!732693 (choose!11907 thiss!23328 rules!3198 lt!732572 (h!27001 tokens!598)))))

(assert (=> d!584798 (rulesInvariant!3074 thiss!23328 rules!3198)))

(assert (=> d!584798 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!697 thiss!23328 rules!3198 lt!732572 (h!27001 tokens!598)) lt!732693)))

(declare-fun b!1913491 () Bool)

(declare-fun res!854889 () Bool)

(assert (=> b!1913491 (=> (not res!854889) (not e!1222396))))

(assert (=> b!1913491 (= res!854889 (matchR!2565 (regex!3854 (get!6747 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 (h!27001 tokens!598)))))) (list!8778 (charsOf!2410 (h!27001 tokens!598)))))))

(declare-fun b!1913492 () Bool)

(assert (=> b!1913492 (= e!1222396 (= (rule!6053 (h!27001 tokens!598)) (get!6747 (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 (h!27001 tokens!598)))))))))

(assert (= (and d!584798 res!854888) b!1913491))

(assert (= (and b!1913491 res!854889) b!1913492))

(assert (=> d!584798 m!2347539))

(assert (=> d!584798 m!2347539))

(declare-fun m!2347949 () Bool)

(assert (=> d!584798 m!2347949))

(declare-fun m!2347951 () Bool)

(assert (=> d!584798 m!2347951))

(assert (=> d!584798 m!2347443))

(assert (=> b!1913491 m!2347521))

(assert (=> b!1913491 m!2347875))

(assert (=> b!1913491 m!2347521))

(assert (=> b!1913491 m!2347539))

(assert (=> b!1913491 m!2347875))

(declare-fun m!2347953 () Bool)

(assert (=> b!1913491 m!2347953))

(assert (=> b!1913491 m!2347539))

(declare-fun m!2347955 () Bool)

(assert (=> b!1913491 m!2347955))

(assert (=> b!1913492 m!2347539))

(assert (=> b!1913492 m!2347539))

(assert (=> b!1913492 m!2347955))

(assert (=> b!1913152 d!584798))

(declare-fun b!1913501 () Bool)

(declare-fun e!1222401 () Bool)

(assert (=> b!1913501 (= e!1222401 true)))

(declare-fun d!584800 () Bool)

(assert (=> d!584800 e!1222401))

(assert (= d!584800 b!1913501))

(declare-fun order!13621 () Int)

(declare-fun order!13623 () Int)

(declare-fun lambda!74699 () Int)

(declare-fun dynLambda!10515 (Int Int) Int)

(declare-fun dynLambda!10516 (Int Int) Int)

(assert (=> b!1913501 (< (dynLambda!10515 order!13621 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) (dynLambda!10516 order!13623 lambda!74699))))

(declare-fun order!13625 () Int)

(declare-fun dynLambda!10517 (Int Int) Int)

(assert (=> b!1913501 (< (dynLambda!10517 order!13625 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) (dynLambda!10516 order!13623 lambda!74699))))

(declare-fun dynLambda!10518 (Int BalanceConc!14216) TokenValue!3990)

(assert (=> d!584800 (= (list!8778 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) lt!732561))) (list!8778 lt!732561))))

(declare-fun lt!732697 () Unit!35976)

(declare-fun ForallOf!395 (Int BalanceConc!14216) Unit!35976)

(assert (=> d!584800 (= lt!732697 (ForallOf!395 lambda!74699 lt!732561))))

(assert (=> d!584800 (= (lemmaSemiInverse!833 (transformation!3854 (rule!6053 (h!27001 tokens!598))) lt!732561) lt!732697)))

(declare-fun b_lambda!63287 () Bool)

(assert (=> (not b_lambda!63287) (not d!584800)))

(declare-fun t!178262 () Bool)

(declare-fun tb!117079 () Bool)

(assert (=> (and b!1913176 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178262) tb!117079))

(declare-fun e!1222402 () Bool)

(declare-fun b!1913502 () Bool)

(declare-fun tp!546132 () Bool)

(assert (=> b!1913502 (= e!1222402 (and (inv!28701 (c!311557 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) lt!732561)))) tp!546132))))

(declare-fun result!141464 () Bool)

(assert (=> tb!117079 (= result!141464 (and (inv!28702 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) lt!732561))) e!1222402))))

(assert (= tb!117079 b!1913502))

(declare-fun m!2347963 () Bool)

(assert (=> b!1913502 m!2347963))

(declare-fun m!2347965 () Bool)

(assert (=> tb!117079 m!2347965))

(assert (=> d!584800 t!178262))

(declare-fun b_and!149145 () Bool)

(assert (= b_and!149139 (and (=> t!178262 result!141464) b_and!149145)))

(declare-fun t!178264 () Bool)

(declare-fun tb!117081 () Bool)

(assert (=> (and b!1913169 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178264) tb!117081))

(declare-fun result!141466 () Bool)

(assert (= result!141466 result!141464))

(assert (=> d!584800 t!178264))

(declare-fun b_and!149147 () Bool)

(assert (= b_and!149141 (and (=> t!178264 result!141466) b_and!149147)))

(declare-fun t!178266 () Bool)

(declare-fun tb!117083 () Bool)

(assert (=> (and b!1913156 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178266) tb!117083))

(declare-fun result!141468 () Bool)

(assert (= result!141468 result!141464))

(assert (=> d!584800 t!178266))

(declare-fun b_and!149149 () Bool)

(assert (= b_and!149143 (and (=> t!178266 result!141468) b_and!149149)))

(declare-fun b_lambda!63289 () Bool)

(assert (=> (not b_lambda!63289) (not d!584800)))

(declare-fun tb!117085 () Bool)

(declare-fun t!178268 () Bool)

(assert (=> (and b!1913176 (= (toValue!5483 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178268) tb!117085))

(declare-fun result!141470 () Bool)

(assert (=> tb!117085 (= result!141470 (inv!21 (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) lt!732561)))))

(declare-fun m!2347967 () Bool)

(assert (=> tb!117085 m!2347967))

(assert (=> d!584800 t!178268))

(declare-fun b_and!149151 () Bool)

(assert (= b_and!149127 (and (=> t!178268 result!141470) b_and!149151)))

(declare-fun t!178270 () Bool)

(declare-fun tb!117087 () Bool)

(assert (=> (and b!1913169 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178270) tb!117087))

(declare-fun result!141474 () Bool)

(assert (= result!141474 result!141470))

(assert (=> d!584800 t!178270))

(declare-fun b_and!149153 () Bool)

(assert (= b_and!149131 (and (=> t!178270 result!141474) b_and!149153)))

(declare-fun tb!117089 () Bool)

(declare-fun t!178272 () Bool)

(assert (=> (and b!1913156 (= (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178272) tb!117089))

(declare-fun result!141476 () Bool)

(assert (= result!141476 result!141470))

(assert (=> d!584800 t!178272))

(declare-fun b_and!149155 () Bool)

(assert (= b_and!149135 (and (=> t!178272 result!141476) b_and!149155)))

(declare-fun m!2347969 () Bool)

(assert (=> d!584800 m!2347969))

(declare-fun m!2347971 () Bool)

(assert (=> d!584800 m!2347971))

(declare-fun m!2347973 () Bool)

(assert (=> d!584800 m!2347973))

(assert (=> d!584800 m!2347969))

(assert (=> d!584800 m!2347511))

(assert (=> d!584800 m!2347973))

(declare-fun m!2347975 () Bool)

(assert (=> d!584800 m!2347975))

(assert (=> b!1913152 d!584800))

(declare-fun bs!414219 () Bool)

(declare-fun b!1913632 () Bool)

(assert (= bs!414219 (and b!1913632 b!1913165)))

(declare-fun lambda!74705 () Int)

(assert (=> bs!414219 (not (= lambda!74705 lambda!74693))))

(declare-fun b!1913644 () Bool)

(declare-fun e!1222484 () Bool)

(assert (=> b!1913644 (= e!1222484 true)))

(declare-fun b!1913643 () Bool)

(declare-fun e!1222483 () Bool)

(assert (=> b!1913643 (= e!1222483 e!1222484)))

(declare-fun b!1913642 () Bool)

(declare-fun e!1222482 () Bool)

(assert (=> b!1913642 (= e!1222482 e!1222483)))

(assert (=> b!1913632 e!1222482))

(assert (= b!1913643 b!1913644))

(assert (= b!1913642 b!1913643))

(assert (= (and b!1913632 ((_ is Cons!21601) rules!3198)) b!1913642))

(declare-fun order!13633 () Int)

(declare-fun dynLambda!10519 (Int Int) Int)

(assert (=> b!1913644 (< (dynLambda!10515 order!13621 (toValue!5483 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74705))))

(assert (=> b!1913644 (< (dynLambda!10517 order!13625 (toChars!5342 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74705))))

(assert (=> b!1913632 true))

(declare-fun b!1913626 () Bool)

(declare-fun e!1222472 () List!21681)

(declare-fun call!117838 () List!21681)

(assert (=> b!1913626 (= e!1222472 call!117838)))

(declare-fun bm!117830 () Bool)

(declare-fun call!117839 () BalanceConc!14216)

(assert (=> bm!117830 (= call!117839 (charsOf!2410 (h!27001 (t!178251 tokens!598))))))

(declare-fun bm!117831 () Bool)

(declare-fun c!311654 () Bool)

(declare-fun c!311655 () Bool)

(assert (=> bm!117831 (= c!311654 c!311655)))

(declare-fun e!1222475 () List!21681)

(declare-fun call!117836 () List!21681)

(declare-fun lt!732742 () List!21681)

(assert (=> bm!117831 (= call!117838 (++!5805 e!1222475 (ite c!311655 lt!732742 call!117836)))))

(declare-fun b!1913628 () Bool)

(declare-fun c!311653 () Bool)

(declare-fun lt!732738 () Option!4413)

(assert (=> b!1913628 (= c!311653 (and ((_ is Some!4412) lt!732738) (not (= (_1!11632 (v!26469 lt!732738)) (h!27001 (t!178251 tokens!598))))))))

(declare-fun e!1222474 () List!21681)

(assert (=> b!1913628 (= e!1222472 e!1222474)))

(declare-fun b!1913629 () Bool)

(assert (=> b!1913629 (= e!1222475 (list!8778 call!117839))))

(declare-fun bm!117832 () Bool)

(declare-fun call!117837 () List!21681)

(assert (=> bm!117832 (= call!117836 call!117837)))

(declare-fun call!117835 () BalanceConc!14216)

(declare-fun bm!117833 () Bool)

(assert (=> bm!117833 (= call!117837 (list!8778 (ite c!311655 call!117839 call!117835)))))

(declare-fun b!1913630 () Bool)

(declare-fun e!1222473 () List!21681)

(assert (=> b!1913630 (= e!1222473 Nil!21599)))

(declare-fun bm!117834 () Bool)

(assert (=> bm!117834 (= call!117835 (charsOf!2410 (ite c!311653 separatorToken!354 (h!27001 (t!178251 tokens!598)))))))

(declare-fun b!1913631 () Bool)

(assert (=> b!1913631 (= e!1222474 (++!5805 call!117838 lt!732742))))

(declare-fun d!584804 () Bool)

(declare-fun c!311652 () Bool)

(assert (=> d!584804 (= c!311652 ((_ is Cons!21600) (t!178251 tokens!598)))))

(assert (=> d!584804 (= (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 (t!178251 tokens!598) separatorToken!354) e!1222473)))

(declare-fun b!1913627 () Bool)

(assert (=> b!1913627 (= e!1222475 call!117837)))

(assert (=> b!1913632 (= e!1222473 e!1222472)))

(declare-fun lt!732741 () Unit!35976)

(declare-fun forallContained!696 (List!21682 Int Token!7260) Unit!35976)

(assert (=> b!1913632 (= lt!732741 (forallContained!696 (t!178251 tokens!598) lambda!74705 (h!27001 (t!178251 tokens!598))))))

(assert (=> b!1913632 (= lt!732742 (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 (t!178251 (t!178251 tokens!598)) separatorToken!354))))

(assert (=> b!1913632 (= lt!732738 (maxPrefix!1913 thiss!23328 rules!3198 (++!5805 (list!8778 (charsOf!2410 (h!27001 (t!178251 tokens!598)))) lt!732742)))))

(assert (=> b!1913632 (= c!311655 (and ((_ is Some!4412) lt!732738) (= (_1!11632 (v!26469 lt!732738)) (h!27001 (t!178251 tokens!598)))))))

(declare-fun b!1913633 () Bool)

(assert (=> b!1913633 (= e!1222474 Nil!21599)))

(assert (=> b!1913633 (= (print!1477 thiss!23328 (singletonSeq!1877 (h!27001 (t!178251 tokens!598)))) (printTailRec!984 thiss!23328 (singletonSeq!1877 (h!27001 (t!178251 tokens!598))) 0 (BalanceConc!14217 Empty!7200)))))

(declare-fun lt!732743 () Unit!35976)

(declare-fun Unit!35984 () Unit!35976)

(assert (=> b!1913633 (= lt!732743 Unit!35984)))

(declare-fun lt!732740 () Unit!35976)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!726 (LexerInterface!3467 List!21683 List!21681 List!21681) Unit!35976)

(assert (=> b!1913633 (= lt!732740 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!726 thiss!23328 rules!3198 call!117836 lt!732742))))

(assert (=> b!1913633 false))

(declare-fun lt!732739 () Unit!35976)

(declare-fun Unit!35985 () Unit!35976)

(assert (=> b!1913633 (= lt!732739 Unit!35985)))

(assert (= (and d!584804 c!311652) b!1913632))

(assert (= (and d!584804 (not c!311652)) b!1913630))

(assert (= (and b!1913632 c!311655) b!1913626))

(assert (= (and b!1913632 (not c!311655)) b!1913628))

(assert (= (and b!1913628 c!311653) b!1913631))

(assert (= (and b!1913628 (not c!311653)) b!1913633))

(assert (= (or b!1913631 b!1913633) bm!117834))

(assert (= (or b!1913631 b!1913633) bm!117832))

(assert (= (or b!1913626 b!1913631) bm!117830))

(assert (= (or b!1913626 bm!117832) bm!117833))

(assert (= (or b!1913626 b!1913631) bm!117831))

(assert (= (and bm!117831 c!311654) b!1913627))

(assert (= (and bm!117831 (not c!311654)) b!1913629))

(declare-fun m!2348043 () Bool)

(assert (=> b!1913631 m!2348043))

(declare-fun m!2348045 () Bool)

(assert (=> bm!117834 m!2348045))

(declare-fun m!2348049 () Bool)

(assert (=> b!1913629 m!2348049))

(declare-fun m!2348051 () Bool)

(assert (=> b!1913633 m!2348051))

(assert (=> b!1913633 m!2348051))

(declare-fun m!2348053 () Bool)

(assert (=> b!1913633 m!2348053))

(assert (=> b!1913633 m!2348051))

(declare-fun m!2348055 () Bool)

(assert (=> b!1913633 m!2348055))

(declare-fun m!2348057 () Bool)

(assert (=> b!1913633 m!2348057))

(declare-fun m!2348059 () Bool)

(assert (=> bm!117830 m!2348059))

(declare-fun m!2348061 () Bool)

(assert (=> bm!117833 m!2348061))

(declare-fun m!2348063 () Bool)

(assert (=> b!1913632 m!2348063))

(declare-fun m!2348065 () Bool)

(assert (=> b!1913632 m!2348065))

(assert (=> b!1913632 m!2348065))

(declare-fun m!2348067 () Bool)

(assert (=> b!1913632 m!2348067))

(assert (=> b!1913632 m!2348059))

(assert (=> b!1913632 m!2348063))

(assert (=> b!1913632 m!2348059))

(declare-fun m!2348075 () Bool)

(assert (=> b!1913632 m!2348075))

(declare-fun m!2348077 () Bool)

(assert (=> b!1913632 m!2348077))

(declare-fun m!2348079 () Bool)

(assert (=> bm!117831 m!2348079))

(assert (=> b!1913152 d!584804))

(declare-fun d!584828 () Bool)

(declare-fun list!8782 (Conc!7200) List!21681)

(assert (=> d!584828 (= (list!8778 (charsOf!2410 separatorToken!354)) (list!8782 (c!311557 (charsOf!2410 separatorToken!354))))))

(declare-fun bs!414221 () Bool)

(assert (= bs!414221 d!584828))

(declare-fun m!2348085 () Bool)

(assert (=> bs!414221 m!2348085))

(assert (=> b!1913152 d!584828))

(declare-fun b!1913700 () Bool)

(declare-fun e!1222515 () Bool)

(assert (=> b!1913700 (= e!1222515 true)))

(declare-fun d!584834 () Bool)

(assert (=> d!584834 e!1222515))

(assert (= d!584834 b!1913700))

(declare-fun lambda!74708 () Int)

(declare-fun order!13635 () Int)

(declare-fun dynLambda!10520 (Int Int) Int)

(assert (=> b!1913700 (< (dynLambda!10515 order!13621 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) (dynLambda!10520 order!13635 lambda!74708))))

(assert (=> b!1913700 (< (dynLambda!10517 order!13625 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) (dynLambda!10520 order!13635 lambda!74708))))

(assert (=> d!584834 (= (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) lt!732561) (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598)))))))

(declare-fun lt!732752 () Unit!35976)

(declare-fun Forall2of!190 (Int BalanceConc!14216 BalanceConc!14216) Unit!35976)

(assert (=> d!584834 (= lt!732752 (Forall2of!190 lambda!74708 lt!732561 (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598)))))))

(assert (=> d!584834 (= (list!8778 lt!732561) (list!8778 (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598)))))))

(assert (=> d!584834 (= (lemmaEqSameImage!562 (transformation!3854 (rule!6053 (h!27001 tokens!598))) lt!732561 (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598)))) lt!732752)))

(declare-fun b_lambda!63293 () Bool)

(assert (=> (not b_lambda!63293) (not d!584834)))

(assert (=> d!584834 t!178268))

(declare-fun b_and!149163 () Bool)

(assert (= b_and!149151 (and (=> t!178268 result!141470) b_and!149163)))

(assert (=> d!584834 t!178270))

(declare-fun b_and!149165 () Bool)

(assert (= b_and!149153 (and (=> t!178270 result!141474) b_and!149165)))

(assert (=> d!584834 t!178272))

(declare-fun b_and!149167 () Bool)

(assert (= b_and!149155 (and (=> t!178272 result!141476) b_and!149167)))

(declare-fun b_lambda!63295 () Bool)

(assert (=> (not b_lambda!63295) (not d!584834)))

(declare-fun t!178284 () Bool)

(declare-fun tb!117097 () Bool)

(assert (=> (and b!1913176 (= (toValue!5483 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178284) tb!117097))

(declare-fun result!141486 () Bool)

(assert (=> tb!117097 (= result!141486 (inv!21 (dynLambda!10518 (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598))))))))

(declare-fun m!2348111 () Bool)

(assert (=> tb!117097 m!2348111))

(assert (=> d!584834 t!178284))

(declare-fun b_and!149169 () Bool)

(assert (= b_and!149163 (and (=> t!178284 result!141486) b_and!149169)))

(declare-fun t!178286 () Bool)

(declare-fun tb!117099 () Bool)

(assert (=> (and b!1913169 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178286) tb!117099))

(declare-fun result!141488 () Bool)

(assert (= result!141488 result!141486))

(assert (=> d!584834 t!178286))

(declare-fun b_and!149171 () Bool)

(assert (= b_and!149165 (and (=> t!178286 result!141488) b_and!149171)))

(declare-fun t!178288 () Bool)

(declare-fun tb!117101 () Bool)

(assert (=> (and b!1913156 (= (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178288) tb!117101))

(declare-fun result!141490 () Bool)

(assert (= result!141490 result!141486))

(assert (=> d!584834 t!178288))

(declare-fun b_and!149173 () Bool)

(assert (= b_and!149167 (and (=> t!178288 result!141490) b_and!149173)))

(assert (=> d!584834 m!2347973))

(assert (=> d!584834 m!2347507))

(declare-fun m!2348113 () Bool)

(assert (=> d!584834 m!2348113))

(assert (=> d!584834 m!2347511))

(assert (=> d!584834 m!2347507))

(declare-fun m!2348115 () Bool)

(assert (=> d!584834 m!2348115))

(assert (=> d!584834 m!2347507))

(declare-fun m!2348117 () Bool)

(assert (=> d!584834 m!2348117))

(assert (=> b!1913152 d!584834))

(declare-fun d!584846 () Bool)

(assert (=> d!584846 (= (isDefined!3711 lt!732570) (not (isEmpty!13286 lt!732570)))))

(declare-fun bs!414222 () Bool)

(assert (= bs!414222 d!584846))

(declare-fun m!2348119 () Bool)

(assert (=> bs!414222 m!2348119))

(assert (=> b!1913152 d!584846))

(declare-fun b!1913701 () Bool)

(declare-fun e!1222518 () Bool)

(declare-fun e!1222517 () Bool)

(assert (=> b!1913701 (= e!1222518 e!1222517)))

(declare-fun res!854969 () Bool)

(assert (=> b!1913701 (=> (not res!854969) (not e!1222517))))

(declare-fun lt!732757 () Option!4413)

(assert (=> b!1913701 (= res!854969 (isDefined!3712 lt!732757))))

(declare-fun b!1913702 () Bool)

(assert (=> b!1913702 (= e!1222517 (contains!3913 rules!3198 (rule!6053 (_1!11632 (get!6748 lt!732757)))))))

(declare-fun call!117842 () Option!4413)

(declare-fun bm!117837 () Bool)

(assert (=> bm!117837 (= call!117842 (maxPrefixOneRule!1209 thiss!23328 (h!27002 rules!3198) lt!732572))))

(declare-fun b!1913704 () Bool)

(declare-fun res!854968 () Bool)

(assert (=> b!1913704 (=> (not res!854968) (not e!1222517))))

(assert (=> b!1913704 (= res!854968 (= (value!121430 (_1!11632 (get!6748 lt!732757))) (apply!5654 (transformation!3854 (rule!6053 (_1!11632 (get!6748 lt!732757)))) (seqFromList!2726 (originalCharacters!4661 (_1!11632 (get!6748 lt!732757)))))))))

(declare-fun b!1913705 () Bool)

(declare-fun res!854970 () Bool)

(assert (=> b!1913705 (=> (not res!854970) (not e!1222517))))

(assert (=> b!1913705 (= res!854970 (= (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732757)))) (originalCharacters!4661 (_1!11632 (get!6748 lt!732757)))))))

(declare-fun b!1913706 () Bool)

(declare-fun e!1222519 () Option!4413)

(assert (=> b!1913706 (= e!1222519 call!117842)))

(declare-fun b!1913707 () Bool)

(declare-fun res!854965 () Bool)

(assert (=> b!1913707 (=> (not res!854965) (not e!1222517))))

(assert (=> b!1913707 (= res!854965 (= (++!5805 (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732757)))) (_2!11632 (get!6748 lt!732757))) lt!732572))))

(declare-fun b!1913708 () Bool)

(declare-fun res!854967 () Bool)

(assert (=> b!1913708 (=> (not res!854967) (not e!1222517))))

(assert (=> b!1913708 (= res!854967 (< (size!16994 (_2!11632 (get!6748 lt!732757))) (size!16994 lt!732572)))))

(declare-fun b!1913709 () Bool)

(declare-fun res!854964 () Bool)

(assert (=> b!1913709 (=> (not res!854964) (not e!1222517))))

(assert (=> b!1913709 (= res!854964 (matchR!2565 (regex!3854 (rule!6053 (_1!11632 (get!6748 lt!732757)))) (list!8778 (charsOf!2410 (_1!11632 (get!6748 lt!732757))))))))

(declare-fun b!1913703 () Bool)

(declare-fun lt!732756 () Option!4413)

(declare-fun lt!732759 () Option!4413)

(assert (=> b!1913703 (= e!1222519 (ite (and ((_ is None!4412) lt!732756) ((_ is None!4412) lt!732759)) None!4412 (ite ((_ is None!4412) lt!732759) lt!732756 (ite ((_ is None!4412) lt!732756) lt!732759 (ite (>= (size!16988 (_1!11632 (v!26469 lt!732756))) (size!16988 (_1!11632 (v!26469 lt!732759)))) lt!732756 lt!732759)))))))

(assert (=> b!1913703 (= lt!732756 call!117842)))

(assert (=> b!1913703 (= lt!732759 (maxPrefix!1913 thiss!23328 (t!178252 rules!3198) lt!732572))))

(declare-fun d!584848 () Bool)

(assert (=> d!584848 e!1222518))

(declare-fun res!854966 () Bool)

(assert (=> d!584848 (=> res!854966 e!1222518)))

(assert (=> d!584848 (= res!854966 (isEmpty!13285 lt!732757))))

(assert (=> d!584848 (= lt!732757 e!1222519)))

(declare-fun c!311666 () Bool)

(assert (=> d!584848 (= c!311666 (and ((_ is Cons!21601) rules!3198) ((_ is Nil!21601) (t!178252 rules!3198))))))

(declare-fun lt!732758 () Unit!35976)

(declare-fun lt!732755 () Unit!35976)

(assert (=> d!584848 (= lt!732758 lt!732755)))

(assert (=> d!584848 (isPrefix!1927 lt!732572 lt!732572)))

(assert (=> d!584848 (= lt!732755 (lemmaIsPrefixRefl!1245 lt!732572 lt!732572))))

(assert (=> d!584848 (rulesValidInductive!1308 thiss!23328 rules!3198)))

(assert (=> d!584848 (= (maxPrefix!1913 thiss!23328 rules!3198 lt!732572) lt!732757)))

(assert (= (and d!584848 c!311666) b!1913706))

(assert (= (and d!584848 (not c!311666)) b!1913703))

(assert (= (or b!1913706 b!1913703) bm!117837))

(assert (= (and d!584848 (not res!854966)) b!1913701))

(assert (= (and b!1913701 res!854969) b!1913705))

(assert (= (and b!1913705 res!854970) b!1913708))

(assert (= (and b!1913708 res!854967) b!1913707))

(assert (= (and b!1913707 res!854965) b!1913704))

(assert (= (and b!1913704 res!854968) b!1913709))

(assert (= (and b!1913709 res!854964) b!1913702))

(declare-fun m!2348121 () Bool)

(assert (=> b!1913701 m!2348121))

(declare-fun m!2348123 () Bool)

(assert (=> bm!117837 m!2348123))

(declare-fun m!2348125 () Bool)

(assert (=> b!1913709 m!2348125))

(declare-fun m!2348127 () Bool)

(assert (=> b!1913709 m!2348127))

(assert (=> b!1913709 m!2348127))

(declare-fun m!2348129 () Bool)

(assert (=> b!1913709 m!2348129))

(assert (=> b!1913709 m!2348129))

(declare-fun m!2348131 () Bool)

(assert (=> b!1913709 m!2348131))

(assert (=> b!1913707 m!2348125))

(assert (=> b!1913707 m!2348127))

(assert (=> b!1913707 m!2348127))

(assert (=> b!1913707 m!2348129))

(assert (=> b!1913707 m!2348129))

(declare-fun m!2348133 () Bool)

(assert (=> b!1913707 m!2348133))

(declare-fun m!2348137 () Bool)

(assert (=> d!584848 m!2348137))

(declare-fun m!2348141 () Bool)

(assert (=> d!584848 m!2348141))

(declare-fun m!2348143 () Bool)

(assert (=> d!584848 m!2348143))

(assert (=> d!584848 m!2347481))

(declare-fun m!2348145 () Bool)

(assert (=> b!1913703 m!2348145))

(assert (=> b!1913708 m!2348125))

(declare-fun m!2348147 () Bool)

(assert (=> b!1913708 m!2348147))

(declare-fun m!2348149 () Bool)

(assert (=> b!1913708 m!2348149))

(assert (=> b!1913702 m!2348125))

(declare-fun m!2348151 () Bool)

(assert (=> b!1913702 m!2348151))

(assert (=> b!1913705 m!2348125))

(assert (=> b!1913705 m!2348127))

(assert (=> b!1913705 m!2348127))

(assert (=> b!1913705 m!2348129))

(assert (=> b!1913704 m!2348125))

(declare-fun m!2348153 () Bool)

(assert (=> b!1913704 m!2348153))

(assert (=> b!1913704 m!2348153))

(declare-fun m!2348155 () Bool)

(assert (=> b!1913704 m!2348155))

(assert (=> b!1913152 d!584848))

(declare-fun d!584850 () Bool)

(declare-fun lt!732764 () BalanceConc!14216)

(assert (=> d!584850 (= (list!8778 lt!732764) (originalCharacters!4661 separatorToken!354))))

(assert (=> d!584850 (= lt!732764 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (value!121430 separatorToken!354)))))

(assert (=> d!584850 (= (charsOf!2410 separatorToken!354) lt!732764)))

(declare-fun b_lambda!63301 () Bool)

(assert (=> (not b_lambda!63301) (not d!584850)))

(declare-fun t!178302 () Bool)

(declare-fun tb!117115 () Bool)

(assert (=> (and b!1913176 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354)))) t!178302) tb!117115))

(declare-fun b!1913722 () Bool)

(declare-fun e!1222529 () Bool)

(declare-fun tp!546137 () Bool)

(assert (=> b!1913722 (= e!1222529 (and (inv!28701 (c!311557 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (value!121430 separatorToken!354)))) tp!546137))))

(declare-fun result!141506 () Bool)

(assert (=> tb!117115 (= result!141506 (and (inv!28702 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (value!121430 separatorToken!354))) e!1222529))))

(assert (= tb!117115 b!1913722))

(declare-fun m!2348177 () Bool)

(assert (=> b!1913722 m!2348177))

(declare-fun m!2348179 () Bool)

(assert (=> tb!117115 m!2348179))

(assert (=> d!584850 t!178302))

(declare-fun b_and!149187 () Bool)

(assert (= b_and!149145 (and (=> t!178302 result!141506) b_and!149187)))

(declare-fun tb!117117 () Bool)

(declare-fun t!178304 () Bool)

(assert (=> (and b!1913169 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354)))) t!178304) tb!117117))

(declare-fun result!141508 () Bool)

(assert (= result!141508 result!141506))

(assert (=> d!584850 t!178304))

(declare-fun b_and!149189 () Bool)

(assert (= b_and!149147 (and (=> t!178304 result!141508) b_and!149189)))

(declare-fun t!178306 () Bool)

(declare-fun tb!117119 () Bool)

(assert (=> (and b!1913156 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354)))) t!178306) tb!117119))

(declare-fun result!141510 () Bool)

(assert (= result!141510 result!141506))

(assert (=> d!584850 t!178306))

(declare-fun b_and!149191 () Bool)

(assert (= b_and!149149 (and (=> t!178306 result!141510) b_and!149191)))

(declare-fun m!2348181 () Bool)

(assert (=> d!584850 m!2348181))

(declare-fun m!2348183 () Bool)

(assert (=> d!584850 m!2348183))

(assert (=> b!1913152 d!584850))

(declare-fun b!1913755 () Bool)

(declare-fun e!1222551 () Option!4414)

(declare-fun e!1222550 () Option!4414)

(assert (=> b!1913755 (= e!1222551 e!1222550)))

(declare-fun c!311677 () Bool)

(assert (=> b!1913755 (= c!311677 (and ((_ is Cons!21601) rules!3198) (not (= (tag!4290 (h!27002 rules!3198)) (tag!4290 (rule!6053 separatorToken!354))))))))

(declare-fun b!1913756 () Bool)

(assert (=> b!1913756 (= e!1222551 (Some!4413 (h!27002 rules!3198)))))

(declare-fun d!584860 () Bool)

(declare-fun e!1222549 () Bool)

(assert (=> d!584860 e!1222549))

(declare-fun res!854984 () Bool)

(assert (=> d!584860 (=> res!854984 e!1222549)))

(declare-fun lt!732786 () Option!4414)

(assert (=> d!584860 (= res!854984 (isEmpty!13286 lt!732786))))

(assert (=> d!584860 (= lt!732786 e!1222551)))

(declare-fun c!311678 () Bool)

(assert (=> d!584860 (= c!311678 (and ((_ is Cons!21601) rules!3198) (= (tag!4290 (h!27002 rules!3198)) (tag!4290 (rule!6053 separatorToken!354)))))))

(assert (=> d!584860 (rulesInvariant!3074 thiss!23328 rules!3198)))

(assert (=> d!584860 (= (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 separatorToken!354))) lt!732786)))

(declare-fun b!1913757 () Bool)

(assert (=> b!1913757 (= e!1222550 None!4413)))

(declare-fun b!1913758 () Bool)

(declare-fun e!1222548 () Bool)

(assert (=> b!1913758 (= e!1222549 e!1222548)))

(declare-fun res!854985 () Bool)

(assert (=> b!1913758 (=> (not res!854985) (not e!1222548))))

(assert (=> b!1913758 (= res!854985 (contains!3913 rules!3198 (get!6747 lt!732786)))))

(declare-fun b!1913759 () Bool)

(assert (=> b!1913759 (= e!1222548 (= (tag!4290 (get!6747 lt!732786)) (tag!4290 (rule!6053 separatorToken!354))))))

(declare-fun b!1913760 () Bool)

(declare-fun lt!732785 () Unit!35976)

(declare-fun lt!732787 () Unit!35976)

(assert (=> b!1913760 (= lt!732785 lt!732787)))

(assert (=> b!1913760 (rulesInvariant!3074 thiss!23328 (t!178252 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!259 (LexerInterface!3467 Rule!7508 List!21683) Unit!35976)

(assert (=> b!1913760 (= lt!732787 (lemmaInvariantOnRulesThenOnTail!259 thiss!23328 (h!27002 rules!3198) (t!178252 rules!3198)))))

(assert (=> b!1913760 (= e!1222550 (getRuleFromTag!697 thiss!23328 (t!178252 rules!3198) (tag!4290 (rule!6053 separatorToken!354))))))

(assert (= (and d!584860 c!311678) b!1913756))

(assert (= (and d!584860 (not c!311678)) b!1913755))

(assert (= (and b!1913755 c!311677) b!1913760))

(assert (= (and b!1913755 (not c!311677)) b!1913757))

(assert (= (and d!584860 (not res!854984)) b!1913758))

(assert (= (and b!1913758 res!854985) b!1913759))

(declare-fun m!2348251 () Bool)

(assert (=> d!584860 m!2348251))

(assert (=> d!584860 m!2347443))

(declare-fun m!2348253 () Bool)

(assert (=> b!1913758 m!2348253))

(assert (=> b!1913758 m!2348253))

(declare-fun m!2348255 () Bool)

(assert (=> b!1913758 m!2348255))

(assert (=> b!1913759 m!2348253))

(declare-fun m!2348257 () Bool)

(assert (=> b!1913760 m!2348257))

(declare-fun m!2348259 () Bool)

(assert (=> b!1913760 m!2348259))

(declare-fun m!2348261 () Bool)

(assert (=> b!1913760 m!2348261))

(assert (=> b!1913152 d!584860))

(declare-fun d!584874 () Bool)

(declare-fun e!1222559 () Bool)

(assert (=> d!584874 e!1222559))

(declare-fun res!854994 () Bool)

(assert (=> d!584874 (=> (not res!854994) (not e!1222559))))

(declare-fun lt!732792 () List!21681)

(assert (=> d!584874 (= res!854994 (= (content!3154 lt!732792) ((_ map or) (content!3154 lt!732572) (content!3154 lt!732565))))))

(declare-fun e!1222558 () List!21681)

(assert (=> d!584874 (= lt!732792 e!1222558)))

(declare-fun c!311681 () Bool)

(assert (=> d!584874 (= c!311681 ((_ is Nil!21599) lt!732572))))

(assert (=> d!584874 (= (++!5805 lt!732572 lt!732565) lt!732792)))

(declare-fun b!1913776 () Bool)

(assert (=> b!1913776 (= e!1222559 (or (not (= lt!732565 Nil!21599)) (= lt!732792 lt!732572)))))

(declare-fun b!1913773 () Bool)

(assert (=> b!1913773 (= e!1222558 lt!732565)))

(declare-fun b!1913775 () Bool)

(declare-fun res!854995 () Bool)

(assert (=> b!1913775 (=> (not res!854995) (not e!1222559))))

(assert (=> b!1913775 (= res!854995 (= (size!16994 lt!732792) (+ (size!16994 lt!732572) (size!16994 lt!732565))))))

(declare-fun b!1913774 () Bool)

(assert (=> b!1913774 (= e!1222558 (Cons!21599 (h!27000 lt!732572) (++!5805 (t!178250 lt!732572) lt!732565)))))

(assert (= (and d!584874 c!311681) b!1913773))

(assert (= (and d!584874 (not c!311681)) b!1913774))

(assert (= (and d!584874 res!854994) b!1913775))

(assert (= (and b!1913775 res!854995) b!1913776))

(declare-fun m!2348263 () Bool)

(assert (=> d!584874 m!2348263))

(declare-fun m!2348265 () Bool)

(assert (=> d!584874 m!2348265))

(declare-fun m!2348267 () Bool)

(assert (=> d!584874 m!2348267))

(declare-fun m!2348269 () Bool)

(assert (=> b!1913775 m!2348269))

(assert (=> b!1913775 m!2348149))

(declare-fun m!2348271 () Bool)

(assert (=> b!1913775 m!2348271))

(declare-fun m!2348273 () Bool)

(assert (=> b!1913774 m!2348273))

(assert (=> b!1913152 d!584874))

(declare-fun d!584876 () Bool)

(declare-fun lt!732793 () BalanceConc!14216)

(assert (=> d!584876 (= (list!8778 lt!732793) (originalCharacters!4661 (h!27001 tokens!598)))))

(assert (=> d!584876 (= lt!732793 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (value!121430 (h!27001 tokens!598))))))

(assert (=> d!584876 (= (charsOf!2410 (h!27001 tokens!598)) lt!732793)))

(declare-fun b_lambda!63305 () Bool)

(assert (=> (not b_lambda!63305) (not d!584876)))

(assert (=> d!584876 t!178256))

(declare-fun b_and!149199 () Bool)

(assert (= b_and!149187 (and (=> t!178256 result!141456) b_and!149199)))

(assert (=> d!584876 t!178258))

(declare-fun b_and!149201 () Bool)

(assert (= b_and!149189 (and (=> t!178258 result!141460) b_and!149201)))

(assert (=> d!584876 t!178260))

(declare-fun b_and!149203 () Bool)

(assert (= b_and!149191 (and (=> t!178260 result!141462) b_and!149203)))

(declare-fun m!2348275 () Bool)

(assert (=> d!584876 m!2348275))

(assert (=> d!584876 m!2347761))

(assert (=> b!1913152 d!584876))

(declare-fun d!584878 () Bool)

(assert (=> d!584878 (= (seqFromList!2726 (originalCharacters!4661 (h!27001 tokens!598))) (fromListB!1228 (originalCharacters!4661 (h!27001 tokens!598))))))

(declare-fun bs!414229 () Bool)

(assert (= bs!414229 d!584878))

(declare-fun m!2348277 () Bool)

(assert (=> bs!414229 m!2348277))

(assert (=> b!1913152 d!584878))

(declare-fun b!1913779 () Bool)

(declare-fun e!1222564 () Option!4414)

(declare-fun e!1222563 () Option!4414)

(assert (=> b!1913779 (= e!1222564 e!1222563)))

(declare-fun c!311682 () Bool)

(assert (=> b!1913779 (= c!311682 (and ((_ is Cons!21601) rules!3198) (not (= (tag!4290 (h!27002 rules!3198)) (tag!4290 (rule!6053 (h!27001 tokens!598)))))))))

(declare-fun b!1913780 () Bool)

(assert (=> b!1913780 (= e!1222564 (Some!4413 (h!27002 rules!3198)))))

(declare-fun d!584880 () Bool)

(declare-fun e!1222562 () Bool)

(assert (=> d!584880 e!1222562))

(declare-fun res!854998 () Bool)

(assert (=> d!584880 (=> res!854998 e!1222562)))

(declare-fun lt!732796 () Option!4414)

(assert (=> d!584880 (= res!854998 (isEmpty!13286 lt!732796))))

(assert (=> d!584880 (= lt!732796 e!1222564)))

(declare-fun c!311683 () Bool)

(assert (=> d!584880 (= c!311683 (and ((_ is Cons!21601) rules!3198) (= (tag!4290 (h!27002 rules!3198)) (tag!4290 (rule!6053 (h!27001 tokens!598))))))))

(assert (=> d!584880 (rulesInvariant!3074 thiss!23328 rules!3198)))

(assert (=> d!584880 (= (getRuleFromTag!697 thiss!23328 rules!3198 (tag!4290 (rule!6053 (h!27001 tokens!598)))) lt!732796)))

(declare-fun b!1913781 () Bool)

(assert (=> b!1913781 (= e!1222563 None!4413)))

(declare-fun b!1913782 () Bool)

(declare-fun e!1222561 () Bool)

(assert (=> b!1913782 (= e!1222562 e!1222561)))

(declare-fun res!854999 () Bool)

(assert (=> b!1913782 (=> (not res!854999) (not e!1222561))))

(assert (=> b!1913782 (= res!854999 (contains!3913 rules!3198 (get!6747 lt!732796)))))

(declare-fun b!1913783 () Bool)

(assert (=> b!1913783 (= e!1222561 (= (tag!4290 (get!6747 lt!732796)) (tag!4290 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun b!1913784 () Bool)

(declare-fun lt!732795 () Unit!35976)

(declare-fun lt!732797 () Unit!35976)

(assert (=> b!1913784 (= lt!732795 lt!732797)))

(assert (=> b!1913784 (rulesInvariant!3074 thiss!23328 (t!178252 rules!3198))))

(assert (=> b!1913784 (= lt!732797 (lemmaInvariantOnRulesThenOnTail!259 thiss!23328 (h!27002 rules!3198) (t!178252 rules!3198)))))

(assert (=> b!1913784 (= e!1222563 (getRuleFromTag!697 thiss!23328 (t!178252 rules!3198) (tag!4290 (rule!6053 (h!27001 tokens!598)))))))

(assert (= (and d!584880 c!311683) b!1913780))

(assert (= (and d!584880 (not c!311683)) b!1913779))

(assert (= (and b!1913779 c!311682) b!1913784))

(assert (= (and b!1913779 (not c!311682)) b!1913781))

(assert (= (and d!584880 (not res!854998)) b!1913782))

(assert (= (and b!1913782 res!854999) b!1913783))

(declare-fun m!2348281 () Bool)

(assert (=> d!584880 m!2348281))

(assert (=> d!584880 m!2347443))

(declare-fun m!2348285 () Bool)

(assert (=> b!1913782 m!2348285))

(assert (=> b!1913782 m!2348285))

(declare-fun m!2348287 () Bool)

(assert (=> b!1913782 m!2348287))

(assert (=> b!1913783 m!2348285))

(assert (=> b!1913784 m!2348257))

(assert (=> b!1913784 m!2348259))

(declare-fun m!2348291 () Bool)

(assert (=> b!1913784 m!2348291))

(assert (=> b!1913152 d!584880))

(declare-fun d!584882 () Bool)

(assert (=> d!584882 (= (list!8778 lt!732561) (list!8782 (c!311557 lt!732561)))))

(declare-fun bs!414230 () Bool)

(assert (= bs!414230 d!584882))

(declare-fun m!2348295 () Bool)

(assert (=> bs!414230 m!2348295))

(assert (=> b!1913152 d!584882))

(declare-fun d!584884 () Bool)

(declare-fun lt!732798 () Bool)

(assert (=> d!584884 (= lt!732798 (select (content!3154 lt!732556) lt!732540))))

(declare-fun e!1222565 () Bool)

(assert (=> d!584884 (= lt!732798 e!1222565)))

(declare-fun res!855001 () Bool)

(assert (=> d!584884 (=> (not res!855001) (not e!1222565))))

(assert (=> d!584884 (= res!855001 ((_ is Cons!21599) lt!732556))))

(assert (=> d!584884 (= (contains!3912 lt!732556 lt!732540) lt!732798)))

(declare-fun b!1913785 () Bool)

(declare-fun e!1222566 () Bool)

(assert (=> b!1913785 (= e!1222565 e!1222566)))

(declare-fun res!855000 () Bool)

(assert (=> b!1913785 (=> res!855000 e!1222566)))

(assert (=> b!1913785 (= res!855000 (= (h!27000 lt!732556) lt!732540))))

(declare-fun b!1913786 () Bool)

(assert (=> b!1913786 (= e!1222566 (contains!3912 (t!178250 lt!732556) lt!732540))))

(assert (= (and d!584884 res!855001) b!1913785))

(assert (= (and b!1913785 (not res!855000)) b!1913786))

(declare-fun m!2348297 () Bool)

(assert (=> d!584884 m!2348297))

(declare-fun m!2348299 () Bool)

(assert (=> d!584884 m!2348299))

(declare-fun m!2348301 () Bool)

(assert (=> b!1913786 m!2348301))

(assert (=> b!1913173 d!584884))

(declare-fun d!584888 () Bool)

(assert (=> d!584888 (= (head!4460 lt!732569) (h!27000 lt!732569))))

(assert (=> b!1913173 d!584888))

(declare-fun d!584890 () Bool)

(assert (=> d!584890 (= (isEmpty!13278 lt!732569) ((_ is Nil!21599) lt!732569))))

(assert (=> b!1913174 d!584890))

(declare-fun d!584892 () Bool)

(declare-fun res!855004 () Bool)

(declare-fun e!1222568 () Bool)

(assert (=> d!584892 (=> (not res!855004) (not e!1222568))))

(assert (=> d!584892 (= res!855004 (not (isEmpty!13278 (originalCharacters!4661 separatorToken!354))))))

(assert (=> d!584892 (= (inv!28699 separatorToken!354) e!1222568)))

(declare-fun b!1913789 () Bool)

(declare-fun res!855005 () Bool)

(assert (=> b!1913789 (=> (not res!855005) (not e!1222568))))

(assert (=> b!1913789 (= res!855005 (= (originalCharacters!4661 separatorToken!354) (list!8778 (dynLambda!10511 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (value!121430 separatorToken!354)))))))

(declare-fun b!1913790 () Bool)

(assert (=> b!1913790 (= e!1222568 (= (size!16988 separatorToken!354) (size!16994 (originalCharacters!4661 separatorToken!354))))))

(assert (= (and d!584892 res!855004) b!1913789))

(assert (= (and b!1913789 res!855005) b!1913790))

(declare-fun b_lambda!63307 () Bool)

(assert (=> (not b_lambda!63307) (not b!1913789)))

(assert (=> b!1913789 t!178302))

(declare-fun b_and!149205 () Bool)

(assert (= b_and!149199 (and (=> t!178302 result!141506) b_and!149205)))

(assert (=> b!1913789 t!178304))

(declare-fun b_and!149207 () Bool)

(assert (= b_and!149201 (and (=> t!178304 result!141508) b_and!149207)))

(assert (=> b!1913789 t!178306))

(declare-fun b_and!149209 () Bool)

(assert (= b_and!149203 (and (=> t!178306 result!141510) b_and!149209)))

(declare-fun m!2348311 () Bool)

(assert (=> d!584892 m!2348311))

(assert (=> b!1913789 m!2348183))

(assert (=> b!1913789 m!2348183))

(declare-fun m!2348313 () Bool)

(assert (=> b!1913789 m!2348313))

(declare-fun m!2348315 () Bool)

(assert (=> b!1913790 m!2348315))

(assert (=> start!191832 d!584892))

(declare-fun d!584896 () Bool)

(declare-fun res!855015 () Bool)

(declare-fun e!1222574 () Bool)

(assert (=> d!584896 (=> (not res!855015) (not e!1222574))))

(declare-fun rulesValid!1436 (LexerInterface!3467 List!21683) Bool)

(assert (=> d!584896 (= res!855015 (rulesValid!1436 thiss!23328 rules!3198))))

(assert (=> d!584896 (= (rulesInvariant!3074 thiss!23328 rules!3198) e!1222574)))

(declare-fun b!1913802 () Bool)

(declare-datatypes ((List!21685 0))(
  ( (Nil!21603) (Cons!21603 (h!27004 String!25068) (t!178366 List!21685)) )
))
(declare-fun noDuplicateTag!1434 (LexerInterface!3467 List!21683 List!21685) Bool)

(assert (=> b!1913802 (= e!1222574 (noDuplicateTag!1434 thiss!23328 rules!3198 Nil!21603))))

(assert (= (and d!584896 res!855015) b!1913802))

(declare-fun m!2348345 () Bool)

(assert (=> d!584896 m!2348345))

(declare-fun m!2348349 () Bool)

(assert (=> b!1913802 m!2348349))

(assert (=> b!1913154 d!584896))

(declare-fun d!584898 () Bool)

(assert (=> d!584898 true))

(declare-fun lt!732810 () Bool)

(declare-fun lambda!74715 () Int)

(declare-fun forall!4548 (List!21683 Int) Bool)

(assert (=> d!584898 (= lt!732810 (forall!4548 rules!3198 lambda!74715))))

(declare-fun e!1222580 () Bool)

(assert (=> d!584898 (= lt!732810 e!1222580)))

(declare-fun res!855020 () Bool)

(assert (=> d!584898 (=> res!855020 e!1222580)))

(assert (=> d!584898 (= res!855020 (not ((_ is Cons!21601) rules!3198)))))

(assert (=> d!584898 (= (rulesValidInductive!1308 thiss!23328 rules!3198) lt!732810)))

(declare-fun b!1913808 () Bool)

(declare-fun e!1222581 () Bool)

(assert (=> b!1913808 (= e!1222580 e!1222581)))

(declare-fun res!855021 () Bool)

(assert (=> b!1913808 (=> (not res!855021) (not e!1222581))))

(assert (=> b!1913808 (= res!855021 (ruleValid!1173 thiss!23328 (h!27002 rules!3198)))))

(declare-fun b!1913809 () Bool)

(assert (=> b!1913809 (= e!1222581 (rulesValidInductive!1308 thiss!23328 (t!178252 rules!3198)))))

(assert (= (and d!584898 (not res!855020)) b!1913808))

(assert (= (and b!1913808 res!855021) b!1913809))

(declare-fun m!2348361 () Bool)

(assert (=> d!584898 m!2348361))

(declare-fun m!2348363 () Bool)

(assert (=> b!1913808 m!2348363))

(declare-fun m!2348365 () Bool)

(assert (=> b!1913809 m!2348365))

(assert (=> b!1913175 d!584898))

(declare-fun bs!414231 () Bool)

(declare-fun b!1913818 () Bool)

(assert (= bs!414231 (and b!1913818 b!1913165)))

(declare-fun lambda!74717 () Int)

(assert (=> bs!414231 (not (= lambda!74717 lambda!74693))))

(declare-fun bs!414232 () Bool)

(assert (= bs!414232 (and b!1913818 b!1913632)))

(assert (=> bs!414232 (= lambda!74717 lambda!74705)))

(declare-fun b!1913822 () Bool)

(declare-fun e!1222590 () Bool)

(assert (=> b!1913822 (= e!1222590 true)))

(declare-fun b!1913821 () Bool)

(declare-fun e!1222589 () Bool)

(assert (=> b!1913821 (= e!1222589 e!1222590)))

(declare-fun b!1913820 () Bool)

(declare-fun e!1222588 () Bool)

(assert (=> b!1913820 (= e!1222588 e!1222589)))

(assert (=> b!1913818 e!1222588))

(assert (= b!1913821 b!1913822))

(assert (= b!1913820 b!1913821))

(assert (= (and b!1913818 ((_ is Cons!21601) rules!3198)) b!1913820))

(assert (=> b!1913822 (< (dynLambda!10515 order!13621 (toValue!5483 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74717))))

(assert (=> b!1913822 (< (dynLambda!10517 order!13625 (toChars!5342 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74717))))

(assert (=> b!1913818 true))

(declare-fun b!1913812 () Bool)

(declare-fun e!1222582 () List!21681)

(declare-fun call!117853 () List!21681)

(assert (=> b!1913812 (= e!1222582 call!117853)))

(declare-fun bm!117845 () Bool)

(declare-fun call!117854 () BalanceConc!14216)

(assert (=> bm!117845 (= call!117854 (charsOf!2410 (h!27001 tokens!598)))))

(declare-fun bm!117846 () Bool)

(declare-fun c!311687 () Bool)

(declare-fun c!311688 () Bool)

(assert (=> bm!117846 (= c!311687 c!311688)))

(declare-fun lt!732815 () List!21681)

(declare-fun e!1222585 () List!21681)

(declare-fun call!117851 () List!21681)

(assert (=> bm!117846 (= call!117853 (++!5805 e!1222585 (ite c!311688 lt!732815 call!117851)))))

(declare-fun b!1913814 () Bool)

(declare-fun c!311686 () Bool)

(declare-fun lt!732811 () Option!4413)

(assert (=> b!1913814 (= c!311686 (and ((_ is Some!4412) lt!732811) (not (= (_1!11632 (v!26469 lt!732811)) (h!27001 tokens!598)))))))

(declare-fun e!1222584 () List!21681)

(assert (=> b!1913814 (= e!1222582 e!1222584)))

(declare-fun b!1913815 () Bool)

(assert (=> b!1913815 (= e!1222585 (list!8778 call!117854))))

(declare-fun bm!117847 () Bool)

(declare-fun call!117852 () List!21681)

(assert (=> bm!117847 (= call!117851 call!117852)))

(declare-fun call!117850 () BalanceConc!14216)

(declare-fun bm!117848 () Bool)

(assert (=> bm!117848 (= call!117852 (list!8778 (ite c!311688 call!117854 call!117850)))))

(declare-fun b!1913816 () Bool)

(declare-fun e!1222583 () List!21681)

(assert (=> b!1913816 (= e!1222583 Nil!21599)))

(declare-fun bm!117849 () Bool)

(assert (=> bm!117849 (= call!117850 (charsOf!2410 (ite c!311686 separatorToken!354 (h!27001 tokens!598))))))

(declare-fun b!1913817 () Bool)

(assert (=> b!1913817 (= e!1222584 (++!5805 call!117853 lt!732815))))

(declare-fun d!584904 () Bool)

(declare-fun c!311685 () Bool)

(assert (=> d!584904 (= c!311685 ((_ is Cons!21600) tokens!598))))

(assert (=> d!584904 (= (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 tokens!598 separatorToken!354) e!1222583)))

(declare-fun b!1913813 () Bool)

(assert (=> b!1913813 (= e!1222585 call!117852)))

(assert (=> b!1913818 (= e!1222583 e!1222582)))

(declare-fun lt!732814 () Unit!35976)

(assert (=> b!1913818 (= lt!732814 (forallContained!696 tokens!598 lambda!74717 (h!27001 tokens!598)))))

(assert (=> b!1913818 (= lt!732815 (printWithSeparatorTokenWhenNeededList!510 thiss!23328 rules!3198 (t!178251 tokens!598) separatorToken!354))))

(assert (=> b!1913818 (= lt!732811 (maxPrefix!1913 thiss!23328 rules!3198 (++!5805 (list!8778 (charsOf!2410 (h!27001 tokens!598))) lt!732815)))))

(assert (=> b!1913818 (= c!311688 (and ((_ is Some!4412) lt!732811) (= (_1!11632 (v!26469 lt!732811)) (h!27001 tokens!598))))))

(declare-fun b!1913819 () Bool)

(assert (=> b!1913819 (= e!1222584 Nil!21599)))

(assert (=> b!1913819 (= (print!1477 thiss!23328 (singletonSeq!1877 (h!27001 tokens!598))) (printTailRec!984 thiss!23328 (singletonSeq!1877 (h!27001 tokens!598)) 0 (BalanceConc!14217 Empty!7200)))))

(declare-fun lt!732816 () Unit!35976)

(declare-fun Unit!35986 () Unit!35976)

(assert (=> b!1913819 (= lt!732816 Unit!35986)))

(declare-fun lt!732813 () Unit!35976)

(assert (=> b!1913819 (= lt!732813 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!726 thiss!23328 rules!3198 call!117851 lt!732815))))

(assert (=> b!1913819 false))

(declare-fun lt!732812 () Unit!35976)

(declare-fun Unit!35987 () Unit!35976)

(assert (=> b!1913819 (= lt!732812 Unit!35987)))

(assert (= (and d!584904 c!311685) b!1913818))

(assert (= (and d!584904 (not c!311685)) b!1913816))

(assert (= (and b!1913818 c!311688) b!1913812))

(assert (= (and b!1913818 (not c!311688)) b!1913814))

(assert (= (and b!1913814 c!311686) b!1913817))

(assert (= (and b!1913814 (not c!311686)) b!1913819))

(assert (= (or b!1913817 b!1913819) bm!117849))

(assert (= (or b!1913817 b!1913819) bm!117847))

(assert (= (or b!1913812 b!1913817) bm!117845))

(assert (= (or b!1913812 bm!117847) bm!117848))

(assert (= (or b!1913812 b!1913817) bm!117846))

(assert (= (and bm!117846 c!311687) b!1913813))

(assert (= (and bm!117846 (not c!311687)) b!1913815))

(declare-fun m!2348367 () Bool)

(assert (=> b!1913817 m!2348367))

(declare-fun m!2348369 () Bool)

(assert (=> bm!117849 m!2348369))

(declare-fun m!2348371 () Bool)

(assert (=> b!1913815 m!2348371))

(assert (=> b!1913819 m!2347439))

(assert (=> b!1913819 m!2347439))

(declare-fun m!2348373 () Bool)

(assert (=> b!1913819 m!2348373))

(assert (=> b!1913819 m!2347439))

(declare-fun m!2348375 () Bool)

(assert (=> b!1913819 m!2348375))

(declare-fun m!2348377 () Bool)

(assert (=> b!1913819 m!2348377))

(assert (=> bm!117845 m!2347521))

(declare-fun m!2348379 () Bool)

(assert (=> bm!117848 m!2348379))

(assert (=> b!1913818 m!2347875))

(declare-fun m!2348381 () Bool)

(assert (=> b!1913818 m!2348381))

(assert (=> b!1913818 m!2348381))

(declare-fun m!2348383 () Bool)

(assert (=> b!1913818 m!2348383))

(assert (=> b!1913818 m!2347521))

(assert (=> b!1913818 m!2347875))

(assert (=> b!1913818 m!2347521))

(assert (=> b!1913818 m!2347517))

(declare-fun m!2348385 () Bool)

(assert (=> b!1913818 m!2348385))

(declare-fun m!2348387 () Bool)

(assert (=> bm!117846 m!2348387))

(assert (=> b!1913175 d!584904))

(declare-fun d!584906 () Bool)

(declare-fun lt!732838 () Bool)

(declare-fun e!1222629 () Bool)

(assert (=> d!584906 (= lt!732838 e!1222629)))

(declare-fun res!855056 () Bool)

(assert (=> d!584906 (=> (not res!855056) (not e!1222629))))

(assert (=> d!584906 (= res!855056 (= (list!8781 (_1!11633 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 (h!27001 tokens!598)))))) (list!8781 (singletonSeq!1877 (h!27001 tokens!598)))))))

(declare-fun e!1222630 () Bool)

(assert (=> d!584906 (= lt!732838 e!1222630)))

(declare-fun res!855055 () Bool)

(assert (=> d!584906 (=> (not res!855055) (not e!1222630))))

(declare-fun lt!732837 () tuple2!20328)

(assert (=> d!584906 (= res!855055 (= (size!16993 (_1!11633 lt!732837)) 1))))

(assert (=> d!584906 (= lt!732837 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 (h!27001 tokens!598)))))))

(assert (=> d!584906 (not (isEmpty!13280 rules!3198))))

(assert (=> d!584906 (= (rulesProduceIndividualToken!1639 thiss!23328 rules!3198 (h!27001 tokens!598)) lt!732838)))

(declare-fun b!1913876 () Bool)

(declare-fun res!855054 () Bool)

(assert (=> b!1913876 (=> (not res!855054) (not e!1222630))))

(declare-fun apply!5655 (BalanceConc!14218 Int) Token!7260)

(assert (=> b!1913876 (= res!855054 (= (apply!5655 (_1!11633 lt!732837) 0) (h!27001 tokens!598)))))

(declare-fun b!1913877 () Bool)

(declare-fun isEmpty!13288 (BalanceConc!14216) Bool)

(assert (=> b!1913877 (= e!1222630 (isEmpty!13288 (_2!11633 lt!732837)))))

(declare-fun b!1913878 () Bool)

(assert (=> b!1913878 (= e!1222629 (isEmpty!13288 (_2!11633 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 (h!27001 tokens!598)))))))))

(assert (= (and d!584906 res!855055) b!1913876))

(assert (= (and b!1913876 res!855054) b!1913877))

(assert (= (and d!584906 res!855056) b!1913878))

(assert (=> d!584906 m!2348373))

(declare-fun m!2348457 () Bool)

(assert (=> d!584906 m!2348457))

(assert (=> d!584906 m!2347439))

(declare-fun m!2348459 () Bool)

(assert (=> d!584906 m!2348459))

(assert (=> d!584906 m!2347439))

(declare-fun m!2348461 () Bool)

(assert (=> d!584906 m!2348461))

(assert (=> d!584906 m!2347447))

(declare-fun m!2348463 () Bool)

(assert (=> d!584906 m!2348463))

(assert (=> d!584906 m!2347439))

(assert (=> d!584906 m!2348373))

(declare-fun m!2348465 () Bool)

(assert (=> b!1913876 m!2348465))

(declare-fun m!2348467 () Bool)

(assert (=> b!1913877 m!2348467))

(assert (=> b!1913878 m!2347439))

(assert (=> b!1913878 m!2347439))

(assert (=> b!1913878 m!2348373))

(assert (=> b!1913878 m!2348373))

(assert (=> b!1913878 m!2348457))

(declare-fun m!2348469 () Bool)

(assert (=> b!1913878 m!2348469))

(assert (=> b!1913155 d!584906))

(declare-fun b!1913889 () Bool)

(declare-fun e!1222639 () Bool)

(declare-fun inv!15 (TokenValue!3990) Bool)

(assert (=> b!1913889 (= e!1222639 (inv!15 (value!121430 (h!27001 tokens!598))))))

(declare-fun d!584928 () Bool)

(declare-fun c!311702 () Bool)

(assert (=> d!584928 (= c!311702 ((_ is IntegerValue!11970) (value!121430 (h!27001 tokens!598))))))

(declare-fun e!1222638 () Bool)

(assert (=> d!584928 (= (inv!21 (value!121430 (h!27001 tokens!598))) e!1222638)))

(declare-fun b!1913890 () Bool)

(declare-fun e!1222637 () Bool)

(assert (=> b!1913890 (= e!1222638 e!1222637)))

(declare-fun c!311701 () Bool)

(assert (=> b!1913890 (= c!311701 ((_ is IntegerValue!11971) (value!121430 (h!27001 tokens!598))))))

(declare-fun b!1913891 () Bool)

(declare-fun inv!17 (TokenValue!3990) Bool)

(assert (=> b!1913891 (= e!1222637 (inv!17 (value!121430 (h!27001 tokens!598))))))

(declare-fun b!1913892 () Bool)

(declare-fun inv!16 (TokenValue!3990) Bool)

(assert (=> b!1913892 (= e!1222638 (inv!16 (value!121430 (h!27001 tokens!598))))))

(declare-fun b!1913893 () Bool)

(declare-fun res!855059 () Bool)

(assert (=> b!1913893 (=> res!855059 e!1222639)))

(assert (=> b!1913893 (= res!855059 (not ((_ is IntegerValue!11972) (value!121430 (h!27001 tokens!598)))))))

(assert (=> b!1913893 (= e!1222637 e!1222639)))

(assert (= (and d!584928 c!311702) b!1913892))

(assert (= (and d!584928 (not c!311702)) b!1913890))

(assert (= (and b!1913890 c!311701) b!1913891))

(assert (= (and b!1913890 (not c!311701)) b!1913893))

(assert (= (and b!1913893 (not res!855059)) b!1913889))

(declare-fun m!2348471 () Bool)

(assert (=> b!1913889 m!2348471))

(declare-fun m!2348473 () Bool)

(assert (=> b!1913891 m!2348473))

(declare-fun m!2348475 () Bool)

(assert (=> b!1913892 m!2348475))

(assert (=> b!1913177 d!584928))

(declare-fun d!584930 () Bool)

(assert (=> d!584930 (= (inv!28696 (tag!4290 (h!27002 rules!3198))) (= (mod (str.len (value!121429 (tag!4290 (h!27002 rules!3198)))) 2) 0))))

(assert (=> b!1913178 d!584930))

(declare-fun d!584932 () Bool)

(declare-fun res!855062 () Bool)

(declare-fun e!1222642 () Bool)

(assert (=> d!584932 (=> (not res!855062) (not e!1222642))))

(declare-fun semiInverseModEq!1549 (Int Int) Bool)

(assert (=> d!584932 (= res!855062 (semiInverseModEq!1549 (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (h!27002 rules!3198)))))))

(assert (=> d!584932 (= (inv!28700 (transformation!3854 (h!27002 rules!3198))) e!1222642)))

(declare-fun b!1913896 () Bool)

(declare-fun equivClasses!1476 (Int Int) Bool)

(assert (=> b!1913896 (= e!1222642 (equivClasses!1476 (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (h!27002 rules!3198)))))))

(assert (= (and d!584932 res!855062) b!1913896))

(declare-fun m!2348477 () Bool)

(assert (=> d!584932 m!2348477))

(declare-fun m!2348479 () Bool)

(assert (=> b!1913896 m!2348479))

(assert (=> b!1913178 d!584932))

(declare-fun bs!414239 () Bool)

(declare-fun d!584934 () Bool)

(assert (= bs!414239 (and d!584934 b!1913165)))

(declare-fun lambda!74725 () Int)

(assert (=> bs!414239 (not (= lambda!74725 lambda!74693))))

(declare-fun bs!414240 () Bool)

(assert (= bs!414240 (and d!584934 b!1913632)))

(assert (=> bs!414240 (= lambda!74725 lambda!74705)))

(declare-fun bs!414241 () Bool)

(assert (= bs!414241 (and d!584934 b!1913818)))

(assert (=> bs!414241 (= lambda!74725 lambda!74717)))

(declare-fun b!1913967 () Bool)

(declare-fun e!1222699 () Bool)

(assert (=> b!1913967 (= e!1222699 true)))

(declare-fun b!1913966 () Bool)

(declare-fun e!1222698 () Bool)

(assert (=> b!1913966 (= e!1222698 e!1222699)))

(declare-fun b!1913965 () Bool)

(declare-fun e!1222697 () Bool)

(assert (=> b!1913965 (= e!1222697 e!1222698)))

(assert (=> d!584934 e!1222697))

(assert (= b!1913966 b!1913967))

(assert (= b!1913965 b!1913966))

(assert (= (and d!584934 ((_ is Cons!21601) rules!3198)) b!1913965))

(assert (=> b!1913967 (< (dynLambda!10515 order!13621 (toValue!5483 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74725))))

(assert (=> b!1913967 (< (dynLambda!10517 order!13625 (toChars!5342 (transformation!3854 (h!27002 rules!3198)))) (dynLambda!10519 order!13633 lambda!74725))))

(assert (=> d!584934 true))

(declare-fun lt!732844 () Bool)

(assert (=> d!584934 (= lt!732844 (forall!4546 tokens!598 lambda!74725))))

(declare-fun e!1222696 () Bool)

(assert (=> d!584934 (= lt!732844 e!1222696)))

(declare-fun res!855074 () Bool)

(assert (=> d!584934 (=> res!855074 e!1222696)))

(assert (=> d!584934 (= res!855074 (not ((_ is Cons!21600) tokens!598)))))

(assert (=> d!584934 (not (isEmpty!13280 rules!3198))))

(assert (=> d!584934 (= (rulesProduceEachTokenIndividuallyList!1198 thiss!23328 rules!3198 tokens!598) lt!732844)))

(declare-fun b!1913963 () Bool)

(declare-fun e!1222695 () Bool)

(assert (=> b!1913963 (= e!1222696 e!1222695)))

(declare-fun res!855073 () Bool)

(assert (=> b!1913963 (=> (not res!855073) (not e!1222695))))

(assert (=> b!1913963 (= res!855073 (rulesProduceIndividualToken!1639 thiss!23328 rules!3198 (h!27001 tokens!598)))))

(declare-fun b!1913964 () Bool)

(assert (=> b!1913964 (= e!1222695 (rulesProduceEachTokenIndividuallyList!1198 thiss!23328 rules!3198 (t!178251 tokens!598)))))

(assert (= (and d!584934 (not res!855074)) b!1913963))

(assert (= (and b!1913963 res!855073) b!1913964))

(declare-fun m!2348497 () Bool)

(assert (=> d!584934 m!2348497))

(assert (=> d!584934 m!2347447))

(assert (=> b!1913963 m!2347497))

(declare-fun m!2348499 () Bool)

(assert (=> b!1913964 m!2348499))

(assert (=> b!1913157 d!584934))

(declare-fun d!584940 () Bool)

(assert (=> d!584940 (= (isEmpty!13280 rules!3198) ((_ is Nil!21601) rules!3198))))

(assert (=> b!1913179 d!584940))

(declare-fun d!584942 () Bool)

(declare-fun lt!732846 () Bool)

(declare-fun e!1222700 () Bool)

(assert (=> d!584942 (= lt!732846 e!1222700)))

(declare-fun res!855077 () Bool)

(assert (=> d!584942 (=> (not res!855077) (not e!1222700))))

(assert (=> d!584942 (= res!855077 (= (list!8781 (_1!11633 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 separatorToken!354))))) (list!8781 (singletonSeq!1877 separatorToken!354))))))

(declare-fun e!1222701 () Bool)

(assert (=> d!584942 (= lt!732846 e!1222701)))

(declare-fun res!855076 () Bool)

(assert (=> d!584942 (=> (not res!855076) (not e!1222701))))

(declare-fun lt!732845 () tuple2!20328)

(assert (=> d!584942 (= res!855076 (= (size!16993 (_1!11633 lt!732845)) 1))))

(assert (=> d!584942 (= lt!732845 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 separatorToken!354))))))

(assert (=> d!584942 (not (isEmpty!13280 rules!3198))))

(assert (=> d!584942 (= (rulesProduceIndividualToken!1639 thiss!23328 rules!3198 separatorToken!354) lt!732846)))

(declare-fun b!1913968 () Bool)

(declare-fun res!855075 () Bool)

(assert (=> b!1913968 (=> (not res!855075) (not e!1222701))))

(assert (=> b!1913968 (= res!855075 (= (apply!5655 (_1!11633 lt!732845) 0) separatorToken!354))))

(declare-fun b!1913969 () Bool)

(assert (=> b!1913969 (= e!1222701 (isEmpty!13288 (_2!11633 lt!732845)))))

(declare-fun b!1913970 () Bool)

(assert (=> b!1913970 (= e!1222700 (isEmpty!13288 (_2!11633 (lex!1542 thiss!23328 rules!3198 (print!1477 thiss!23328 (singletonSeq!1877 separatorToken!354))))))))

(assert (= (and d!584942 res!855076) b!1913968))

(assert (= (and b!1913968 res!855075) b!1913969))

(assert (= (and d!584942 res!855077) b!1913970))

(declare-fun m!2348501 () Bool)

(assert (=> d!584942 m!2348501))

(declare-fun m!2348503 () Bool)

(assert (=> d!584942 m!2348503))

(declare-fun m!2348505 () Bool)

(assert (=> d!584942 m!2348505))

(declare-fun m!2348507 () Bool)

(assert (=> d!584942 m!2348507))

(assert (=> d!584942 m!2348505))

(declare-fun m!2348509 () Bool)

(assert (=> d!584942 m!2348509))

(assert (=> d!584942 m!2347447))

(declare-fun m!2348511 () Bool)

(assert (=> d!584942 m!2348511))

(assert (=> d!584942 m!2348505))

(assert (=> d!584942 m!2348501))

(declare-fun m!2348513 () Bool)

(assert (=> b!1913968 m!2348513))

(declare-fun m!2348515 () Bool)

(assert (=> b!1913969 m!2348515))

(assert (=> b!1913970 m!2348505))

(assert (=> b!1913970 m!2348505))

(assert (=> b!1913970 m!2348501))

(assert (=> b!1913970 m!2348501))

(assert (=> b!1913970 m!2348503))

(declare-fun m!2348517 () Bool)

(assert (=> b!1913970 m!2348517))

(assert (=> b!1913180 d!584942))

(declare-fun d!584944 () Bool)

(declare-fun lt!732847 () Bool)

(assert (=> d!584944 (= lt!732847 (select (content!3155 rules!3198) (rule!6053 separatorToken!354)))))

(declare-fun e!1222702 () Bool)

(assert (=> d!584944 (= lt!732847 e!1222702)))

(declare-fun res!855079 () Bool)

(assert (=> d!584944 (=> (not res!855079) (not e!1222702))))

(assert (=> d!584944 (= res!855079 ((_ is Cons!21601) rules!3198))))

(assert (=> d!584944 (= (contains!3913 rules!3198 (rule!6053 separatorToken!354)) lt!732847)))

(declare-fun b!1913971 () Bool)

(declare-fun e!1222703 () Bool)

(assert (=> b!1913971 (= e!1222702 e!1222703)))

(declare-fun res!855078 () Bool)

(assert (=> b!1913971 (=> res!855078 e!1222703)))

(assert (=> b!1913971 (= res!855078 (= (h!27002 rules!3198) (rule!6053 separatorToken!354)))))

(declare-fun b!1913972 () Bool)

(assert (=> b!1913972 (= e!1222703 (contains!3913 (t!178252 rules!3198) (rule!6053 separatorToken!354)))))

(assert (= (and d!584944 res!855079) b!1913971))

(assert (= (and b!1913971 (not res!855078)) b!1913972))

(assert (=> d!584944 m!2347899))

(declare-fun m!2348519 () Bool)

(assert (=> d!584944 m!2348519))

(declare-fun m!2348521 () Bool)

(assert (=> b!1913972 m!2348521))

(assert (=> b!1913159 d!584944))

(declare-fun d!584946 () Bool)

(assert (=> d!584946 (= (inv!28696 (tag!4290 (rule!6053 separatorToken!354))) (= (mod (str.len (value!121429 (tag!4290 (rule!6053 separatorToken!354)))) 2) 0))))

(assert (=> b!1913160 d!584946))

(declare-fun d!584948 () Bool)

(declare-fun res!855080 () Bool)

(declare-fun e!1222704 () Bool)

(assert (=> d!584948 (=> (not res!855080) (not e!1222704))))

(assert (=> d!584948 (= res!855080 (semiInverseModEq!1549 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354)))))))

(assert (=> d!584948 (= (inv!28700 (transformation!3854 (rule!6053 separatorToken!354))) e!1222704)))

(declare-fun b!1913973 () Bool)

(assert (=> b!1913973 (= e!1222704 (equivClasses!1476 (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354)))))))

(assert (= (and d!584948 res!855080) b!1913973))

(declare-fun m!2348523 () Bool)

(assert (=> d!584948 m!2348523))

(declare-fun m!2348525 () Bool)

(assert (=> b!1913973 m!2348525))

(assert (=> b!1913160 d!584948))

(declare-fun d!584950 () Bool)

(declare-fun e!1222706 () Bool)

(assert (=> d!584950 e!1222706))

(declare-fun res!855081 () Bool)

(assert (=> d!584950 (=> (not res!855081) (not e!1222706))))

(declare-fun lt!732848 () List!21681)

(assert (=> d!584950 (= res!855081 (= (content!3154 lt!732848) ((_ map or) (content!3154 lt!732562) (content!3154 lt!732565))))))

(declare-fun e!1222705 () List!21681)

(assert (=> d!584950 (= lt!732848 e!1222705)))

(declare-fun c!311703 () Bool)

(assert (=> d!584950 (= c!311703 ((_ is Nil!21599) lt!732562))))

(assert (=> d!584950 (= (++!5805 lt!732562 lt!732565) lt!732848)))

(declare-fun b!1913977 () Bool)

(assert (=> b!1913977 (= e!1222706 (or (not (= lt!732565 Nil!21599)) (= lt!732848 lt!732562)))))

(declare-fun b!1913974 () Bool)

(assert (=> b!1913974 (= e!1222705 lt!732565)))

(declare-fun b!1913976 () Bool)

(declare-fun res!855082 () Bool)

(assert (=> b!1913976 (=> (not res!855082) (not e!1222706))))

(assert (=> b!1913976 (= res!855082 (= (size!16994 lt!732848) (+ (size!16994 lt!732562) (size!16994 lt!732565))))))

(declare-fun b!1913975 () Bool)

(assert (=> b!1913975 (= e!1222705 (Cons!21599 (h!27000 lt!732562) (++!5805 (t!178250 lt!732562) lt!732565)))))

(assert (= (and d!584950 c!311703) b!1913974))

(assert (= (and d!584950 (not c!311703)) b!1913975))

(assert (= (and d!584950 res!855081) b!1913976))

(assert (= (and b!1913976 res!855082) b!1913977))

(declare-fun m!2348527 () Bool)

(assert (=> d!584950 m!2348527))

(declare-fun m!2348529 () Bool)

(assert (=> d!584950 m!2348529))

(assert (=> d!584950 m!2348267))

(declare-fun m!2348531 () Bool)

(assert (=> b!1913976 m!2348531))

(declare-fun m!2348533 () Bool)

(assert (=> b!1913976 m!2348533))

(assert (=> b!1913976 m!2348271))

(declare-fun m!2348535 () Bool)

(assert (=> b!1913975 m!2348535))

(assert (=> b!1913181 d!584950))

(declare-fun d!584952 () Bool)

(declare-fun c!311706 () Bool)

(assert (=> d!584952 (= c!311706 ((_ is Cons!21600) (Cons!21600 (h!27001 tokens!598) Nil!21600)))))

(declare-fun e!1222709 () List!21681)

(assert (=> d!584952 (= (printList!1050 thiss!23328 (Cons!21600 (h!27001 tokens!598) Nil!21600)) e!1222709)))

(declare-fun b!1913982 () Bool)

(assert (=> b!1913982 (= e!1222709 (++!5805 (list!8778 (charsOf!2410 (h!27001 (Cons!21600 (h!27001 tokens!598) Nil!21600)))) (printList!1050 thiss!23328 (t!178251 (Cons!21600 (h!27001 tokens!598) Nil!21600)))))))

(declare-fun b!1913983 () Bool)

(assert (=> b!1913983 (= e!1222709 Nil!21599)))

(assert (= (and d!584952 c!311706) b!1913982))

(assert (= (and d!584952 (not c!311706)) b!1913983))

(declare-fun m!2348537 () Bool)

(assert (=> b!1913982 m!2348537))

(assert (=> b!1913982 m!2348537))

(declare-fun m!2348539 () Bool)

(assert (=> b!1913982 m!2348539))

(declare-fun m!2348541 () Bool)

(assert (=> b!1913982 m!2348541))

(assert (=> b!1913982 m!2348539))

(assert (=> b!1913982 m!2348541))

(declare-fun m!2348543 () Bool)

(assert (=> b!1913982 m!2348543))

(assert (=> b!1913181 d!584952))

(declare-fun d!584954 () Bool)

(declare-fun lt!732865 () BalanceConc!14216)

(declare-fun printListTailRec!443 (LexerInterface!3467 List!21682 List!21681) List!21681)

(declare-fun dropList!774 (BalanceConc!14218 Int) List!21682)

(assert (=> d!584954 (= (list!8778 lt!732865) (printListTailRec!443 thiss!23328 (dropList!774 lt!732548 0) (list!8778 (BalanceConc!14217 Empty!7200))))))

(declare-fun e!1222715 () BalanceConc!14216)

(assert (=> d!584954 (= lt!732865 e!1222715)))

(declare-fun c!311709 () Bool)

(assert (=> d!584954 (= c!311709 (>= 0 (size!16993 lt!732548)))))

(declare-fun e!1222714 () Bool)

(assert (=> d!584954 e!1222714))

(declare-fun res!855085 () Bool)

(assert (=> d!584954 (=> (not res!855085) (not e!1222714))))

(assert (=> d!584954 (= res!855085 (>= 0 0))))

(assert (=> d!584954 (= (printTailRec!984 thiss!23328 lt!732548 0 (BalanceConc!14217 Empty!7200)) lt!732865)))

(declare-fun b!1913990 () Bool)

(assert (=> b!1913990 (= e!1222714 (<= 0 (size!16993 lt!732548)))))

(declare-fun b!1913991 () Bool)

(assert (=> b!1913991 (= e!1222715 (BalanceConc!14217 Empty!7200))))

(declare-fun b!1913992 () Bool)

(declare-fun ++!5807 (BalanceConc!14216 BalanceConc!14216) BalanceConc!14216)

(assert (=> b!1913992 (= e!1222715 (printTailRec!984 thiss!23328 lt!732548 (+ 0 1) (++!5807 (BalanceConc!14217 Empty!7200) (charsOf!2410 (apply!5655 lt!732548 0)))))))

(declare-fun lt!732869 () List!21682)

(assert (=> b!1913992 (= lt!732869 (list!8781 lt!732548))))

(declare-fun lt!732864 () Unit!35976)

(declare-fun lemmaDropApply!698 (List!21682 Int) Unit!35976)

(assert (=> b!1913992 (= lt!732864 (lemmaDropApply!698 lt!732869 0))))

(declare-fun head!4462 (List!21682) Token!7260)

(declare-fun drop!1065 (List!21682 Int) List!21682)

(declare-fun apply!5656 (List!21682 Int) Token!7260)

(assert (=> b!1913992 (= (head!4462 (drop!1065 lt!732869 0)) (apply!5656 lt!732869 0))))

(declare-fun lt!732867 () Unit!35976)

(assert (=> b!1913992 (= lt!732867 lt!732864)))

(declare-fun lt!732868 () List!21682)

(assert (=> b!1913992 (= lt!732868 (list!8781 lt!732548))))

(declare-fun lt!732863 () Unit!35976)

(declare-fun lemmaDropTail!674 (List!21682 Int) Unit!35976)

(assert (=> b!1913992 (= lt!732863 (lemmaDropTail!674 lt!732868 0))))

(declare-fun tail!2962 (List!21682) List!21682)

(assert (=> b!1913992 (= (tail!2962 (drop!1065 lt!732868 0)) (drop!1065 lt!732868 (+ 0 1)))))

(declare-fun lt!732866 () Unit!35976)

(assert (=> b!1913992 (= lt!732866 lt!732863)))

(assert (= (and d!584954 res!855085) b!1913990))

(assert (= (and d!584954 c!311709) b!1913991))

(assert (= (and d!584954 (not c!311709)) b!1913992))

(declare-fun m!2348545 () Bool)

(assert (=> d!584954 m!2348545))

(declare-fun m!2348547 () Bool)

(assert (=> d!584954 m!2348547))

(declare-fun m!2348549 () Bool)

(assert (=> d!584954 m!2348549))

(assert (=> d!584954 m!2348547))

(declare-fun m!2348551 () Bool)

(assert (=> d!584954 m!2348551))

(declare-fun m!2348553 () Bool)

(assert (=> d!584954 m!2348553))

(assert (=> d!584954 m!2348551))

(assert (=> b!1913990 m!2348545))

(declare-fun m!2348555 () Bool)

(assert (=> b!1913992 m!2348555))

(declare-fun m!2348557 () Bool)

(assert (=> b!1913992 m!2348557))

(declare-fun m!2348559 () Bool)

(assert (=> b!1913992 m!2348559))

(declare-fun m!2348561 () Bool)

(assert (=> b!1913992 m!2348561))

(declare-fun m!2348563 () Bool)

(assert (=> b!1913992 m!2348563))

(declare-fun m!2348565 () Bool)

(assert (=> b!1913992 m!2348565))

(assert (=> b!1913992 m!2348561))

(declare-fun m!2348567 () Bool)

(assert (=> b!1913992 m!2348567))

(declare-fun m!2348569 () Bool)

(assert (=> b!1913992 m!2348569))

(declare-fun m!2348571 () Bool)

(assert (=> b!1913992 m!2348571))

(assert (=> b!1913992 m!2348555))

(declare-fun m!2348573 () Bool)

(assert (=> b!1913992 m!2348573))

(assert (=> b!1913992 m!2348557))

(declare-fun m!2348575 () Bool)

(assert (=> b!1913992 m!2348575))

(declare-fun m!2348577 () Bool)

(assert (=> b!1913992 m!2348577))

(assert (=> b!1913992 m!2348573))

(assert (=> b!1913992 m!2348575))

(declare-fun m!2348579 () Bool)

(assert (=> b!1913992 m!2348579))

(assert (=> b!1913181 d!584954))

(declare-fun d!584956 () Bool)

(assert (=> d!584956 (not (contains!3912 (usedCharacters!362 (regex!3854 (rule!6053 (h!27001 tokens!598)))) lt!732545))))

(declare-fun lt!732872 () Unit!35976)

(declare-fun choose!11909 (LexerInterface!3467 List!21683 List!21683 Rule!7508 Rule!7508 C!10704) Unit!35976)

(assert (=> d!584956 (= lt!732872 (choose!11909 thiss!23328 rules!3198 rules!3198 (rule!6053 (h!27001 tokens!598)) (rule!6053 separatorToken!354) lt!732545))))

(assert (=> d!584956 (rulesInvariant!3074 thiss!23328 rules!3198)))

(assert (=> d!584956 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!58 thiss!23328 rules!3198 rules!3198 (rule!6053 (h!27001 tokens!598)) (rule!6053 separatorToken!354) lt!732545) lt!732872)))

(declare-fun bs!414242 () Bool)

(assert (= bs!414242 d!584956))

(assert (=> bs!414242 m!2347417))

(assert (=> bs!414242 m!2347417))

(declare-fun m!2348581 () Bool)

(assert (=> bs!414242 m!2348581))

(declare-fun m!2348583 () Bool)

(assert (=> bs!414242 m!2348583))

(assert (=> bs!414242 m!2347443))

(assert (=> b!1913181 d!584956))

(declare-fun b!1914009 () Bool)

(declare-fun c!311722 () Bool)

(assert (=> b!1914009 (= c!311722 ((_ is Star!5279) (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun e!1222726 () List!21681)

(declare-fun e!1222725 () List!21681)

(assert (=> b!1914009 (= e!1222726 e!1222725)))

(declare-fun bm!117858 () Bool)

(declare-fun call!117863 () List!21681)

(declare-fun c!311720 () Bool)

(assert (=> bm!117858 (= call!117863 (usedCharacters!362 (ite c!311720 (regOne!11071 (regex!3854 (rule!6053 separatorToken!354))) (regTwo!11070 (regex!3854 (rule!6053 separatorToken!354))))))))

(declare-fun b!1914010 () Bool)

(declare-fun e!1222724 () List!21681)

(assert (=> b!1914010 (= e!1222724 Nil!21599)))

(declare-fun b!1914011 () Bool)

(declare-fun e!1222727 () List!21681)

(assert (=> b!1914011 (= e!1222725 e!1222727)))

(assert (=> b!1914011 (= c!311720 ((_ is Union!5279) (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun call!117864 () List!21681)

(declare-fun bm!117859 () Bool)

(assert (=> bm!117859 (= call!117864 (usedCharacters!362 (ite c!311722 (reg!5608 (regex!3854 (rule!6053 separatorToken!354))) (ite c!311720 (regTwo!11071 (regex!3854 (rule!6053 separatorToken!354))) (regOne!11070 (regex!3854 (rule!6053 separatorToken!354)))))))))

(declare-fun bm!117860 () Bool)

(declare-fun call!117865 () List!21681)

(assert (=> bm!117860 (= call!117865 call!117864)))

(declare-fun b!1914013 () Bool)

(assert (=> b!1914013 (= e!1222725 call!117864)))

(declare-fun b!1914014 () Bool)

(declare-fun call!117866 () List!21681)

(assert (=> b!1914014 (= e!1222727 call!117866)))

(declare-fun b!1914015 () Bool)

(assert (=> b!1914015 (= e!1222724 e!1222726)))

(declare-fun c!311721 () Bool)

(assert (=> b!1914015 (= c!311721 ((_ is ElementMatch!5279) (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun bm!117861 () Bool)

(assert (=> bm!117861 (= call!117866 (++!5805 (ite c!311720 call!117863 call!117865) (ite c!311720 call!117865 call!117863)))))

(declare-fun b!1914016 () Bool)

(assert (=> b!1914016 (= e!1222727 call!117866)))

(declare-fun d!584958 () Bool)

(declare-fun c!311719 () Bool)

(assert (=> d!584958 (= c!311719 (or ((_ is EmptyExpr!5279) (regex!3854 (rule!6053 separatorToken!354))) ((_ is EmptyLang!5279) (regex!3854 (rule!6053 separatorToken!354)))))))

(assert (=> d!584958 (= (usedCharacters!362 (regex!3854 (rule!6053 separatorToken!354))) e!1222724)))

(declare-fun b!1914012 () Bool)

(assert (=> b!1914012 (= e!1222726 (Cons!21599 (c!311556 (regex!3854 (rule!6053 separatorToken!354))) Nil!21599))))

(assert (= (and d!584958 c!311719) b!1914010))

(assert (= (and d!584958 (not c!311719)) b!1914015))

(assert (= (and b!1914015 c!311721) b!1914012))

(assert (= (and b!1914015 (not c!311721)) b!1914009))

(assert (= (and b!1914009 c!311722) b!1914013))

(assert (= (and b!1914009 (not c!311722)) b!1914011))

(assert (= (and b!1914011 c!311720) b!1914014))

(assert (= (and b!1914011 (not c!311720)) b!1914016))

(assert (= (or b!1914014 b!1914016) bm!117858))

(assert (= (or b!1914014 b!1914016) bm!117860))

(assert (= (or b!1914014 b!1914016) bm!117861))

(assert (= (or b!1914013 bm!117860) bm!117859))

(declare-fun m!2348585 () Bool)

(assert (=> bm!117858 m!2348585))

(declare-fun m!2348587 () Bool)

(assert (=> bm!117859 m!2348587))

(declare-fun m!2348589 () Bool)

(assert (=> bm!117861 m!2348589))

(assert (=> b!1913181 d!584958))

(declare-fun d!584960 () Bool)

(assert (=> d!584960 (= (head!4460 lt!732562) (h!27000 lt!732562))))

(assert (=> b!1913181 d!584960))

(declare-fun b!1914017 () Bool)

(declare-fun c!311726 () Bool)

(assert (=> b!1914017 (= c!311726 ((_ is Star!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun e!1222730 () List!21681)

(declare-fun e!1222729 () List!21681)

(assert (=> b!1914017 (= e!1222730 e!1222729)))

(declare-fun bm!117862 () Bool)

(declare-fun call!117867 () List!21681)

(declare-fun c!311724 () Bool)

(assert (=> bm!117862 (= call!117867 (usedCharacters!362 (ite c!311724 (regOne!11071 (regex!3854 (rule!6053 (h!27001 tokens!598)))) (regTwo!11070 (regex!3854 (rule!6053 (h!27001 tokens!598)))))))))

(declare-fun b!1914018 () Bool)

(declare-fun e!1222728 () List!21681)

(assert (=> b!1914018 (= e!1222728 Nil!21599)))

(declare-fun b!1914019 () Bool)

(declare-fun e!1222731 () List!21681)

(assert (=> b!1914019 (= e!1222729 e!1222731)))

(assert (=> b!1914019 (= c!311724 ((_ is Union!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun call!117868 () List!21681)

(declare-fun bm!117863 () Bool)

(assert (=> bm!117863 (= call!117868 (usedCharacters!362 (ite c!311726 (reg!5608 (regex!3854 (rule!6053 (h!27001 tokens!598)))) (ite c!311724 (regTwo!11071 (regex!3854 (rule!6053 (h!27001 tokens!598)))) (regOne!11070 (regex!3854 (rule!6053 (h!27001 tokens!598))))))))))

(declare-fun bm!117864 () Bool)

(declare-fun call!117869 () List!21681)

(assert (=> bm!117864 (= call!117869 call!117868)))

(declare-fun b!1914021 () Bool)

(assert (=> b!1914021 (= e!1222729 call!117868)))

(declare-fun b!1914022 () Bool)

(declare-fun call!117870 () List!21681)

(assert (=> b!1914022 (= e!1222731 call!117870)))

(declare-fun b!1914023 () Bool)

(assert (=> b!1914023 (= e!1222728 e!1222730)))

(declare-fun c!311725 () Bool)

(assert (=> b!1914023 (= c!311725 ((_ is ElementMatch!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun bm!117865 () Bool)

(assert (=> bm!117865 (= call!117870 (++!5805 (ite c!311724 call!117867 call!117869) (ite c!311724 call!117869 call!117867)))))

(declare-fun b!1914024 () Bool)

(assert (=> b!1914024 (= e!1222731 call!117870)))

(declare-fun d!584962 () Bool)

(declare-fun c!311723 () Bool)

(assert (=> d!584962 (= c!311723 (or ((_ is EmptyExpr!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))) ((_ is EmptyLang!5279) (regex!3854 (rule!6053 (h!27001 tokens!598))))))))

(assert (=> d!584962 (= (usedCharacters!362 (regex!3854 (rule!6053 (h!27001 tokens!598)))) e!1222728)))

(declare-fun b!1914020 () Bool)

(assert (=> b!1914020 (= e!1222730 (Cons!21599 (c!311556 (regex!3854 (rule!6053 (h!27001 tokens!598)))) Nil!21599))))

(assert (= (and d!584962 c!311723) b!1914018))

(assert (= (and d!584962 (not c!311723)) b!1914023))

(assert (= (and b!1914023 c!311725) b!1914020))

(assert (= (and b!1914023 (not c!311725)) b!1914017))

(assert (= (and b!1914017 c!311726) b!1914021))

(assert (= (and b!1914017 (not c!311726)) b!1914019))

(assert (= (and b!1914019 c!311724) b!1914022))

(assert (= (and b!1914019 (not c!311724)) b!1914024))

(assert (= (or b!1914022 b!1914024) bm!117862))

(assert (= (or b!1914022 b!1914024) bm!117864))

(assert (= (or b!1914022 b!1914024) bm!117865))

(assert (= (or b!1914021 bm!117864) bm!117863))

(declare-fun m!2348591 () Bool)

(assert (=> bm!117862 m!2348591))

(declare-fun m!2348593 () Bool)

(assert (=> bm!117863 m!2348593))

(declare-fun m!2348595 () Bool)

(assert (=> bm!117865 m!2348595))

(assert (=> b!1913181 d!584962))

(declare-fun d!584964 () Bool)

(declare-fun e!1222734 () Bool)

(assert (=> d!584964 e!1222734))

(declare-fun res!855088 () Bool)

(assert (=> d!584964 (=> (not res!855088) (not e!1222734))))

(declare-fun lt!732875 () BalanceConc!14218)

(assert (=> d!584964 (= res!855088 (= (list!8781 lt!732875) (Cons!21600 (h!27001 tokens!598) Nil!21600)))))

(declare-fun singleton!838 (Token!7260) BalanceConc!14218)

(assert (=> d!584964 (= lt!732875 (singleton!838 (h!27001 tokens!598)))))

(assert (=> d!584964 (= (singletonSeq!1877 (h!27001 tokens!598)) lt!732875)))

(declare-fun b!1914027 () Bool)

(declare-fun isBalanced!2247 (Conc!7201) Bool)

(assert (=> b!1914027 (= e!1222734 (isBalanced!2247 (c!311558 lt!732875)))))

(assert (= (and d!584964 res!855088) b!1914027))

(declare-fun m!2348597 () Bool)

(assert (=> d!584964 m!2348597))

(declare-fun m!2348599 () Bool)

(assert (=> d!584964 m!2348599))

(declare-fun m!2348601 () Bool)

(assert (=> b!1914027 m!2348601))

(assert (=> b!1913181 d!584964))

(declare-fun d!584966 () Bool)

(declare-fun lt!732876 () Bool)

(assert (=> d!584966 (= lt!732876 (select (content!3154 lt!732560) lt!732545))))

(declare-fun e!1222735 () Bool)

(assert (=> d!584966 (= lt!732876 e!1222735)))

(declare-fun res!855090 () Bool)

(assert (=> d!584966 (=> (not res!855090) (not e!1222735))))

(assert (=> d!584966 (= res!855090 ((_ is Cons!21599) lt!732560))))

(assert (=> d!584966 (= (contains!3912 lt!732560 lt!732545) lt!732876)))

(declare-fun b!1914028 () Bool)

(declare-fun e!1222736 () Bool)

(assert (=> b!1914028 (= e!1222735 e!1222736)))

(declare-fun res!855089 () Bool)

(assert (=> b!1914028 (=> res!855089 e!1222736)))

(assert (=> b!1914028 (= res!855089 (= (h!27000 lt!732560) lt!732545))))

(declare-fun b!1914029 () Bool)

(assert (=> b!1914029 (= e!1222736 (contains!3912 (t!178250 lt!732560) lt!732545))))

(assert (= (and d!584966 res!855090) b!1914028))

(assert (= (and b!1914028 (not res!855089)) b!1914029))

(assert (=> d!584966 m!2347553))

(declare-fun m!2348603 () Bool)

(assert (=> d!584966 m!2348603))

(declare-fun m!2348605 () Bool)

(assert (=> b!1914029 m!2348605))

(assert (=> b!1913181 d!584966))

(declare-fun d!584968 () Bool)

(assert (=> d!584968 (= (list!8778 lt!732557) (list!8782 (c!311557 lt!732557)))))

(declare-fun bs!414243 () Bool)

(assert (= bs!414243 d!584968))

(declare-fun m!2348607 () Bool)

(assert (=> bs!414243 m!2348607))

(assert (=> b!1913181 d!584968))

(declare-fun d!584970 () Bool)

(declare-fun e!1222738 () Bool)

(assert (=> d!584970 e!1222738))

(declare-fun res!855091 () Bool)

(assert (=> d!584970 (=> (not res!855091) (not e!1222738))))

(declare-fun lt!732877 () List!21681)

(assert (=> d!584970 (= res!855091 (= (content!3154 lt!732877) ((_ map or) (content!3154 lt!732552) (content!3154 lt!732565))))))

(declare-fun e!1222737 () List!21681)

(assert (=> d!584970 (= lt!732877 e!1222737)))

(declare-fun c!311727 () Bool)

(assert (=> d!584970 (= c!311727 ((_ is Nil!21599) lt!732552))))

(assert (=> d!584970 (= (++!5805 lt!732552 lt!732565) lt!732877)))

(declare-fun b!1914033 () Bool)

(assert (=> b!1914033 (= e!1222738 (or (not (= lt!732565 Nil!21599)) (= lt!732877 lt!732552)))))

(declare-fun b!1914030 () Bool)

(assert (=> b!1914030 (= e!1222737 lt!732565)))

(declare-fun b!1914032 () Bool)

(declare-fun res!855092 () Bool)

(assert (=> b!1914032 (=> (not res!855092) (not e!1222738))))

(assert (=> b!1914032 (= res!855092 (= (size!16994 lt!732877) (+ (size!16994 lt!732552) (size!16994 lt!732565))))))

(declare-fun b!1914031 () Bool)

(assert (=> b!1914031 (= e!1222737 (Cons!21599 (h!27000 lt!732552) (++!5805 (t!178250 lt!732552) lt!732565)))))

(assert (= (and d!584970 c!311727) b!1914030))

(assert (= (and d!584970 (not c!311727)) b!1914031))

(assert (= (and d!584970 res!855091) b!1914032))

(assert (= (and b!1914032 res!855092) b!1914033))

(declare-fun m!2348609 () Bool)

(assert (=> d!584970 m!2348609))

(declare-fun m!2348611 () Bool)

(assert (=> d!584970 m!2348611))

(assert (=> d!584970 m!2348267))

(declare-fun m!2348613 () Bool)

(assert (=> b!1914032 m!2348613))

(declare-fun m!2348615 () Bool)

(assert (=> b!1914032 m!2348615))

(assert (=> b!1914032 m!2348271))

(declare-fun m!2348617 () Bool)

(assert (=> b!1914031 m!2348617))

(assert (=> b!1913181 d!584970))

(declare-fun d!584972 () Bool)

(declare-fun lt!732880 () BalanceConc!14216)

(assert (=> d!584972 (= (list!8778 lt!732880) (printList!1050 thiss!23328 (list!8781 lt!732548)))))

(assert (=> d!584972 (= lt!732880 (printTailRec!984 thiss!23328 lt!732548 0 (BalanceConc!14217 Empty!7200)))))

(assert (=> d!584972 (= (print!1477 thiss!23328 lt!732548) lt!732880)))

(declare-fun bs!414244 () Bool)

(assert (= bs!414244 d!584972))

(declare-fun m!2348619 () Bool)

(assert (=> bs!414244 m!2348619))

(assert (=> bs!414244 m!2348563))

(assert (=> bs!414244 m!2348563))

(declare-fun m!2348621 () Bool)

(assert (=> bs!414244 m!2348621))

(assert (=> bs!414244 m!2347429))

(assert (=> b!1913181 d!584972))

(declare-fun d!584974 () Bool)

(declare-fun e!1222740 () Bool)

(assert (=> d!584974 e!1222740))

(declare-fun res!855093 () Bool)

(assert (=> d!584974 (=> (not res!855093) (not e!1222740))))

(declare-fun lt!732881 () List!21681)

(assert (=> d!584974 (= res!855093 (= (content!3154 lt!732881) ((_ map or) (content!3154 lt!732572) (content!3154 lt!732569))))))

(declare-fun e!1222739 () List!21681)

(assert (=> d!584974 (= lt!732881 e!1222739)))

(declare-fun c!311728 () Bool)

(assert (=> d!584974 (= c!311728 ((_ is Nil!21599) lt!732572))))

(assert (=> d!584974 (= (++!5805 lt!732572 lt!732569) lt!732881)))

(declare-fun b!1914037 () Bool)

(assert (=> b!1914037 (= e!1222740 (or (not (= lt!732569 Nil!21599)) (= lt!732881 lt!732572)))))

(declare-fun b!1914034 () Bool)

(assert (=> b!1914034 (= e!1222739 lt!732569)))

(declare-fun b!1914036 () Bool)

(declare-fun res!855094 () Bool)

(assert (=> b!1914036 (=> (not res!855094) (not e!1222740))))

(assert (=> b!1914036 (= res!855094 (= (size!16994 lt!732881) (+ (size!16994 lt!732572) (size!16994 lt!732569))))))

(declare-fun b!1914035 () Bool)

(assert (=> b!1914035 (= e!1222739 (Cons!21599 (h!27000 lt!732572) (++!5805 (t!178250 lt!732572) lt!732569)))))

(assert (= (and d!584974 c!311728) b!1914034))

(assert (= (and d!584974 (not c!311728)) b!1914035))

(assert (= (and d!584974 res!855093) b!1914036))

(assert (= (and b!1914036 res!855094) b!1914037))

(declare-fun m!2348623 () Bool)

(assert (=> d!584974 m!2348623))

(assert (=> d!584974 m!2348265))

(declare-fun m!2348625 () Bool)

(assert (=> d!584974 m!2348625))

(declare-fun m!2348627 () Bool)

(assert (=> b!1914036 m!2348627))

(assert (=> b!1914036 m!2348149))

(declare-fun m!2348629 () Bool)

(assert (=> b!1914036 m!2348629))

(declare-fun m!2348631 () Bool)

(assert (=> b!1914035 m!2348631))

(assert (=> b!1913181 d!584974))

(declare-fun d!584976 () Bool)

(assert (=> d!584976 (= (++!5805 (++!5805 lt!732572 lt!732562) lt!732565) (++!5805 lt!732572 (++!5805 lt!732562 lt!732565)))))

(declare-fun lt!732884 () Unit!35976)

(declare-fun choose!11910 (List!21681 List!21681 List!21681) Unit!35976)

(assert (=> d!584976 (= lt!732884 (choose!11910 lt!732572 lt!732562 lt!732565))))

(assert (=> d!584976 (= (lemmaConcatAssociativity!1169 lt!732572 lt!732562 lt!732565) lt!732884)))

(declare-fun bs!414245 () Bool)

(assert (= bs!414245 d!584976))

(assert (=> bs!414245 m!2347425))

(assert (=> bs!414245 m!2347415))

(declare-fun m!2348633 () Bool)

(assert (=> bs!414245 m!2348633))

(assert (=> bs!414245 m!2347425))

(declare-fun m!2348635 () Bool)

(assert (=> bs!414245 m!2348635))

(assert (=> bs!414245 m!2347415))

(declare-fun m!2348637 () Bool)

(assert (=> bs!414245 m!2348637))

(assert (=> b!1913181 d!584976))

(declare-fun d!584978 () Bool)

(declare-fun e!1222742 () Bool)

(assert (=> d!584978 e!1222742))

(declare-fun res!855095 () Bool)

(assert (=> d!584978 (=> (not res!855095) (not e!1222742))))

(declare-fun lt!732885 () List!21681)

(assert (=> d!584978 (= res!855095 (= (content!3154 lt!732885) ((_ map or) (content!3154 lt!732572) (content!3154 lt!732562))))))

(declare-fun e!1222741 () List!21681)

(assert (=> d!584978 (= lt!732885 e!1222741)))

(declare-fun c!311729 () Bool)

(assert (=> d!584978 (= c!311729 ((_ is Nil!21599) lt!732572))))

(assert (=> d!584978 (= (++!5805 lt!732572 lt!732562) lt!732885)))

(declare-fun b!1914041 () Bool)

(assert (=> b!1914041 (= e!1222742 (or (not (= lt!732562 Nil!21599)) (= lt!732885 lt!732572)))))

(declare-fun b!1914038 () Bool)

(assert (=> b!1914038 (= e!1222741 lt!732562)))

(declare-fun b!1914040 () Bool)

(declare-fun res!855096 () Bool)

(assert (=> b!1914040 (=> (not res!855096) (not e!1222742))))

(assert (=> b!1914040 (= res!855096 (= (size!16994 lt!732885) (+ (size!16994 lt!732572) (size!16994 lt!732562))))))

(declare-fun b!1914039 () Bool)

(assert (=> b!1914039 (= e!1222741 (Cons!21599 (h!27000 lt!732572) (++!5805 (t!178250 lt!732572) lt!732562)))))

(assert (= (and d!584978 c!311729) b!1914038))

(assert (= (and d!584978 (not c!311729)) b!1914039))

(assert (= (and d!584978 res!855095) b!1914040))

(assert (= (and b!1914040 res!855096) b!1914041))

(declare-fun m!2348639 () Bool)

(assert (=> d!584978 m!2348639))

(assert (=> d!584978 m!2348265))

(assert (=> d!584978 m!2348529))

(declare-fun m!2348641 () Bool)

(assert (=> b!1914040 m!2348641))

(assert (=> b!1914040 m!2348149))

(assert (=> b!1914040 m!2348533))

(declare-fun m!2348643 () Bool)

(assert (=> b!1914039 m!2348643))

(assert (=> b!1913181 d!584978))

(declare-fun d!584980 () Bool)

(declare-fun lt!732886 () Bool)

(assert (=> d!584980 (= lt!732886 (select (content!3154 lt!732556) lt!732545))))

(declare-fun e!1222743 () Bool)

(assert (=> d!584980 (= lt!732886 e!1222743)))

(declare-fun res!855098 () Bool)

(assert (=> d!584980 (=> (not res!855098) (not e!1222743))))

(assert (=> d!584980 (= res!855098 ((_ is Cons!21599) lt!732556))))

(assert (=> d!584980 (= (contains!3912 lt!732556 lt!732545) lt!732886)))

(declare-fun b!1914042 () Bool)

(declare-fun e!1222744 () Bool)

(assert (=> b!1914042 (= e!1222743 e!1222744)))

(declare-fun res!855097 () Bool)

(assert (=> b!1914042 (=> res!855097 e!1222744)))

(assert (=> b!1914042 (= res!855097 (= (h!27000 lt!732556) lt!732545))))

(declare-fun b!1914043 () Bool)

(assert (=> b!1914043 (= e!1222744 (contains!3912 (t!178250 lt!732556) lt!732545))))

(assert (= (and d!584980 res!855098) b!1914042))

(assert (= (and b!1914042 (not res!855097)) b!1914043))

(assert (=> d!584980 m!2348297))

(declare-fun m!2348645 () Bool)

(assert (=> d!584980 m!2348645))

(declare-fun m!2348647 () Bool)

(assert (=> b!1914043 m!2348647))

(assert (=> b!1913181 d!584980))

(declare-fun d!584982 () Bool)

(assert (=> d!584982 (= (inv!28696 (tag!4290 (rule!6053 (h!27001 tokens!598)))) (= (mod (str.len (value!121429 (tag!4290 (rule!6053 (h!27001 tokens!598))))) 2) 0))))

(assert (=> b!1913182 d!584982))

(declare-fun d!584984 () Bool)

(declare-fun res!855099 () Bool)

(declare-fun e!1222745 () Bool)

(assert (=> d!584984 (=> (not res!855099) (not e!1222745))))

(assert (=> d!584984 (= res!855099 (semiInverseModEq!1549 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))))))

(assert (=> d!584984 (= (inv!28700 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) e!1222745)))

(declare-fun b!1914044 () Bool)

(assert (=> b!1914044 (= e!1222745 (equivClasses!1476 (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))))))

(assert (= (and d!584984 res!855099) b!1914044))

(declare-fun m!2348649 () Bool)

(assert (=> d!584984 m!2348649))

(declare-fun m!2348651 () Bool)

(assert (=> b!1914044 m!2348651))

(assert (=> b!1913182 d!584984))

(declare-fun d!584986 () Bool)

(assert (=> d!584986 (not (matchR!2565 (regex!3854 (rule!6053 separatorToken!354)) lt!732562))))

(declare-fun lt!732889 () Unit!35976)

(declare-fun choose!11911 (Regex!5279 List!21681 C!10704) Unit!35976)

(assert (=> d!584986 (= lt!732889 (choose!11911 (regex!3854 (rule!6053 separatorToken!354)) lt!732562 lt!732545))))

(assert (=> d!584986 (validRegex!2125 (regex!3854 (rule!6053 separatorToken!354)))))

(assert (=> d!584986 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!262 (regex!3854 (rule!6053 separatorToken!354)) lt!732562 lt!732545) lt!732889)))

(declare-fun bs!414246 () Bool)

(assert (= bs!414246 d!584986))

(assert (=> bs!414246 m!2347479))

(declare-fun m!2348653 () Bool)

(assert (=> bs!414246 m!2348653))

(declare-fun m!2348655 () Bool)

(assert (=> bs!414246 m!2348655))

(assert (=> b!1913161 d!584986))

(declare-fun b!1914045 () Bool)

(declare-fun e!1222747 () Bool)

(assert (=> b!1914045 (= e!1222747 (not (= (head!4460 lt!732562) (c!311556 (regex!3854 (rule!6053 separatorToken!354))))))))

(declare-fun b!1914046 () Bool)

(declare-fun e!1222750 () Bool)

(assert (=> b!1914046 (= e!1222750 (nullable!1599 (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun b!1914047 () Bool)

(declare-fun e!1222751 () Bool)

(assert (=> b!1914047 (= e!1222751 e!1222747)))

(declare-fun res!855104 () Bool)

(assert (=> b!1914047 (=> res!855104 e!1222747)))

(declare-fun call!117871 () Bool)

(assert (=> b!1914047 (= res!855104 call!117871)))

(declare-fun b!1914048 () Bool)

(declare-fun res!855100 () Bool)

(assert (=> b!1914048 (=> res!855100 e!1222747)))

(assert (=> b!1914048 (= res!855100 (not (isEmpty!13278 (tail!2961 lt!732562))))))

(declare-fun b!1914049 () Bool)

(declare-fun e!1222748 () Bool)

(declare-fun lt!732890 () Bool)

(assert (=> b!1914049 (= e!1222748 (not lt!732890))))

(declare-fun b!1914050 () Bool)

(declare-fun e!1222746 () Bool)

(assert (=> b!1914050 (= e!1222746 (= (head!4460 lt!732562) (c!311556 (regex!3854 (rule!6053 separatorToken!354)))))))

(declare-fun b!1914051 () Bool)

(declare-fun res!855105 () Bool)

(declare-fun e!1222749 () Bool)

(assert (=> b!1914051 (=> res!855105 e!1222749)))

(assert (=> b!1914051 (= res!855105 (not ((_ is ElementMatch!5279) (regex!3854 (rule!6053 separatorToken!354)))))))

(assert (=> b!1914051 (= e!1222748 e!1222749)))

(declare-fun b!1914052 () Bool)

(declare-fun res!855102 () Bool)

(assert (=> b!1914052 (=> (not res!855102) (not e!1222746))))

(assert (=> b!1914052 (= res!855102 (isEmpty!13278 (tail!2961 lt!732562)))))

(declare-fun b!1914053 () Bool)

(declare-fun res!855103 () Bool)

(assert (=> b!1914053 (=> res!855103 e!1222749)))

(assert (=> b!1914053 (= res!855103 e!1222746)))

(declare-fun res!855107 () Bool)

(assert (=> b!1914053 (=> (not res!855107) (not e!1222746))))

(assert (=> b!1914053 (= res!855107 lt!732890)))

(declare-fun bm!117866 () Bool)

(assert (=> bm!117866 (= call!117871 (isEmpty!13278 lt!732562))))

(declare-fun b!1914054 () Bool)

(declare-fun res!855106 () Bool)

(assert (=> b!1914054 (=> (not res!855106) (not e!1222746))))

(assert (=> b!1914054 (= res!855106 (not call!117871))))

(declare-fun b!1914055 () Bool)

(declare-fun e!1222752 () Bool)

(assert (=> b!1914055 (= e!1222752 e!1222748)))

(declare-fun c!311731 () Bool)

(assert (=> b!1914055 (= c!311731 ((_ is EmptyLang!5279) (regex!3854 (rule!6053 separatorToken!354))))))

(declare-fun b!1914056 () Bool)

(assert (=> b!1914056 (= e!1222750 (matchR!2565 (derivativeStep!1358 (regex!3854 (rule!6053 separatorToken!354)) (head!4460 lt!732562)) (tail!2961 lt!732562)))))

(declare-fun d!584988 () Bool)

(assert (=> d!584988 e!1222752))

(declare-fun c!311733 () Bool)

(assert (=> d!584988 (= c!311733 ((_ is EmptyExpr!5279) (regex!3854 (rule!6053 separatorToken!354))))))

(assert (=> d!584988 (= lt!732890 e!1222750)))

(declare-fun c!311732 () Bool)

(assert (=> d!584988 (= c!311732 (isEmpty!13278 lt!732562))))

(assert (=> d!584988 (validRegex!2125 (regex!3854 (rule!6053 separatorToken!354)))))

(assert (=> d!584988 (= (matchR!2565 (regex!3854 (rule!6053 separatorToken!354)) lt!732562) lt!732890)))

(declare-fun b!1914057 () Bool)

(assert (=> b!1914057 (= e!1222749 e!1222751)))

(declare-fun res!855101 () Bool)

(assert (=> b!1914057 (=> (not res!855101) (not e!1222751))))

(assert (=> b!1914057 (= res!855101 (not lt!732890))))

(declare-fun b!1914058 () Bool)

(assert (=> b!1914058 (= e!1222752 (= lt!732890 call!117871))))

(assert (= (and d!584988 c!311732) b!1914046))

(assert (= (and d!584988 (not c!311732)) b!1914056))

(assert (= (and d!584988 c!311733) b!1914058))

(assert (= (and d!584988 (not c!311733)) b!1914055))

(assert (= (and b!1914055 c!311731) b!1914049))

(assert (= (and b!1914055 (not c!311731)) b!1914051))

(assert (= (and b!1914051 (not res!855105)) b!1914053))

(assert (= (and b!1914053 res!855107) b!1914054))

(assert (= (and b!1914054 res!855106) b!1914052))

(assert (= (and b!1914052 res!855102) b!1914050))

(assert (= (and b!1914053 (not res!855103)) b!1914057))

(assert (= (and b!1914057 res!855101) b!1914047))

(assert (= (and b!1914047 (not res!855104)) b!1914048))

(assert (= (and b!1914048 (not res!855100)) b!1914045))

(assert (= (or b!1914058 b!1914054 b!1914047) bm!117866))

(assert (=> bm!117866 m!2347771))

(assert (=> d!584988 m!2347771))

(assert (=> d!584988 m!2348655))

(assert (=> b!1914052 m!2347775))

(assert (=> b!1914052 m!2347775))

(assert (=> b!1914052 m!2347777))

(assert (=> b!1914050 m!2347411))

(assert (=> b!1914048 m!2347775))

(assert (=> b!1914048 m!2347775))

(assert (=> b!1914048 m!2347777))

(assert (=> b!1914045 m!2347411))

(declare-fun m!2348657 () Bool)

(assert (=> b!1914046 m!2348657))

(assert (=> b!1914056 m!2347411))

(assert (=> b!1914056 m!2347411))

(declare-fun m!2348659 () Bool)

(assert (=> b!1914056 m!2348659))

(assert (=> b!1914056 m!2347775))

(assert (=> b!1914056 m!2348659))

(assert (=> b!1914056 m!2347775))

(declare-fun m!2348661 () Bool)

(assert (=> b!1914056 m!2348661))

(assert (=> b!1913161 d!584988))

(declare-fun d!584990 () Bool)

(declare-fun res!855112 () Bool)

(declare-fun e!1222757 () Bool)

(assert (=> d!584990 (=> res!855112 e!1222757)))

(assert (=> d!584990 (= res!855112 (not ((_ is Cons!21601) rules!3198)))))

(assert (=> d!584990 (= (sepAndNonSepRulesDisjointChars!952 rules!3198 rules!3198) e!1222757)))

(declare-fun b!1914063 () Bool)

(declare-fun e!1222758 () Bool)

(assert (=> b!1914063 (= e!1222757 e!1222758)))

(declare-fun res!855113 () Bool)

(assert (=> b!1914063 (=> (not res!855113) (not e!1222758))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!434 (Rule!7508 List!21683) Bool)

(assert (=> b!1914063 (= res!855113 (ruleDisjointCharsFromAllFromOtherType!434 (h!27002 rules!3198) rules!3198))))

(declare-fun b!1914064 () Bool)

(assert (=> b!1914064 (= e!1222758 (sepAndNonSepRulesDisjointChars!952 rules!3198 (t!178252 rules!3198)))))

(assert (= (and d!584990 (not res!855112)) b!1914063))

(assert (= (and b!1914063 res!855113) b!1914064))

(declare-fun m!2348663 () Bool)

(assert (=> b!1914063 m!2348663))

(declare-fun m!2348665 () Bool)

(assert (=> b!1914064 m!2348665))

(assert (=> b!1913162 d!584990))

(declare-fun b!1914065 () Bool)

(declare-fun e!1222761 () Bool)

(assert (=> b!1914065 (= e!1222761 (inv!15 (value!121430 separatorToken!354)))))

(declare-fun d!584992 () Bool)

(declare-fun c!311735 () Bool)

(assert (=> d!584992 (= c!311735 ((_ is IntegerValue!11970) (value!121430 separatorToken!354)))))

(declare-fun e!1222760 () Bool)

(assert (=> d!584992 (= (inv!21 (value!121430 separatorToken!354)) e!1222760)))

(declare-fun b!1914066 () Bool)

(declare-fun e!1222759 () Bool)

(assert (=> b!1914066 (= e!1222760 e!1222759)))

(declare-fun c!311734 () Bool)

(assert (=> b!1914066 (= c!311734 ((_ is IntegerValue!11971) (value!121430 separatorToken!354)))))

(declare-fun b!1914067 () Bool)

(assert (=> b!1914067 (= e!1222759 (inv!17 (value!121430 separatorToken!354)))))

(declare-fun b!1914068 () Bool)

(assert (=> b!1914068 (= e!1222760 (inv!16 (value!121430 separatorToken!354)))))

(declare-fun b!1914069 () Bool)

(declare-fun res!855114 () Bool)

(assert (=> b!1914069 (=> res!855114 e!1222761)))

(assert (=> b!1914069 (= res!855114 (not ((_ is IntegerValue!11972) (value!121430 separatorToken!354))))))

(assert (=> b!1914069 (= e!1222759 e!1222761)))

(assert (= (and d!584992 c!311735) b!1914068))

(assert (= (and d!584992 (not c!311735)) b!1914066))

(assert (= (and b!1914066 c!311734) b!1914067))

(assert (= (and b!1914066 (not c!311734)) b!1914069))

(assert (= (and b!1914069 (not res!855114)) b!1914065))

(declare-fun m!2348667 () Bool)

(assert (=> b!1914065 m!2348667))

(declare-fun m!2348669 () Bool)

(assert (=> b!1914067 m!2348669))

(declare-fun m!2348671 () Bool)

(assert (=> b!1914068 m!2348671))

(assert (=> b!1913183 d!584992))

(declare-fun b!1914070 () Bool)

(declare-fun e!1222763 () Bool)

(assert (=> b!1914070 (= e!1222763 (not (= (head!4460 lt!732572) (c!311556 (regex!3854 (rule!6053 (h!27001 tokens!598)))))))))

(declare-fun b!1914071 () Bool)

(declare-fun e!1222766 () Bool)

(assert (=> b!1914071 (= e!1222766 (nullable!1599 (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun b!1914072 () Bool)

(declare-fun e!1222767 () Bool)

(assert (=> b!1914072 (= e!1222767 e!1222763)))

(declare-fun res!855119 () Bool)

(assert (=> b!1914072 (=> res!855119 e!1222763)))

(declare-fun call!117872 () Bool)

(assert (=> b!1914072 (= res!855119 call!117872)))

(declare-fun b!1914073 () Bool)

(declare-fun res!855115 () Bool)

(assert (=> b!1914073 (=> res!855115 e!1222763)))

(assert (=> b!1914073 (= res!855115 (not (isEmpty!13278 (tail!2961 lt!732572))))))

(declare-fun b!1914074 () Bool)

(declare-fun e!1222764 () Bool)

(declare-fun lt!732891 () Bool)

(assert (=> b!1914074 (= e!1222764 (not lt!732891))))

(declare-fun b!1914075 () Bool)

(declare-fun e!1222762 () Bool)

(assert (=> b!1914075 (= e!1222762 (= (head!4460 lt!732572) (c!311556 (regex!3854 (rule!6053 (h!27001 tokens!598))))))))

(declare-fun b!1914076 () Bool)

(declare-fun res!855120 () Bool)

(declare-fun e!1222765 () Bool)

(assert (=> b!1914076 (=> res!855120 e!1222765)))

(assert (=> b!1914076 (= res!855120 (not ((_ is ElementMatch!5279) (regex!3854 (rule!6053 (h!27001 tokens!598))))))))

(assert (=> b!1914076 (= e!1222764 e!1222765)))

(declare-fun b!1914077 () Bool)

(declare-fun res!855117 () Bool)

(assert (=> b!1914077 (=> (not res!855117) (not e!1222762))))

(assert (=> b!1914077 (= res!855117 (isEmpty!13278 (tail!2961 lt!732572)))))

(declare-fun b!1914078 () Bool)

(declare-fun res!855118 () Bool)

(assert (=> b!1914078 (=> res!855118 e!1222765)))

(assert (=> b!1914078 (= res!855118 e!1222762)))

(declare-fun res!855122 () Bool)

(assert (=> b!1914078 (=> (not res!855122) (not e!1222762))))

(assert (=> b!1914078 (= res!855122 lt!732891)))

(declare-fun bm!117867 () Bool)

(assert (=> bm!117867 (= call!117872 (isEmpty!13278 lt!732572))))

(declare-fun b!1914079 () Bool)

(declare-fun res!855121 () Bool)

(assert (=> b!1914079 (=> (not res!855121) (not e!1222762))))

(assert (=> b!1914079 (= res!855121 (not call!117872))))

(declare-fun b!1914080 () Bool)

(declare-fun e!1222768 () Bool)

(assert (=> b!1914080 (= e!1222768 e!1222764)))

(declare-fun c!311736 () Bool)

(assert (=> b!1914080 (= c!311736 ((_ is EmptyLang!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(declare-fun b!1914081 () Bool)

(assert (=> b!1914081 (= e!1222766 (matchR!2565 (derivativeStep!1358 (regex!3854 (rule!6053 (h!27001 tokens!598))) (head!4460 lt!732572)) (tail!2961 lt!732572)))))

(declare-fun d!584994 () Bool)

(assert (=> d!584994 e!1222768))

(declare-fun c!311738 () Bool)

(assert (=> d!584994 (= c!311738 ((_ is EmptyExpr!5279) (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(assert (=> d!584994 (= lt!732891 e!1222766)))

(declare-fun c!311737 () Bool)

(assert (=> d!584994 (= c!311737 (isEmpty!13278 lt!732572))))

(assert (=> d!584994 (validRegex!2125 (regex!3854 (rule!6053 (h!27001 tokens!598))))))

(assert (=> d!584994 (= (matchR!2565 (regex!3854 (rule!6053 (h!27001 tokens!598))) lt!732572) lt!732891)))

(declare-fun b!1914082 () Bool)

(assert (=> b!1914082 (= e!1222765 e!1222767)))

(declare-fun res!855116 () Bool)

(assert (=> b!1914082 (=> (not res!855116) (not e!1222767))))

(assert (=> b!1914082 (= res!855116 (not lt!732891))))

(declare-fun b!1914083 () Bool)

(assert (=> b!1914083 (= e!1222768 (= lt!732891 call!117872))))

(assert (= (and d!584994 c!311737) b!1914071))

(assert (= (and d!584994 (not c!311737)) b!1914081))

(assert (= (and d!584994 c!311738) b!1914083))

(assert (= (and d!584994 (not c!311738)) b!1914080))

(assert (= (and b!1914080 c!311736) b!1914074))

(assert (= (and b!1914080 (not c!311736)) b!1914076))

(assert (= (and b!1914076 (not res!855120)) b!1914078))

(assert (= (and b!1914078 res!855122) b!1914079))

(assert (= (and b!1914079 res!855121) b!1914077))

(assert (= (and b!1914077 res!855117) b!1914075))

(assert (= (and b!1914078 (not res!855118)) b!1914082))

(assert (= (and b!1914082 res!855116) b!1914072))

(assert (= (and b!1914072 (not res!855119)) b!1914073))

(assert (= (and b!1914073 (not res!855115)) b!1914070))

(assert (= (or b!1914083 b!1914079 b!1914072) bm!117867))

(assert (=> bm!117867 m!2347883))

(assert (=> d!584994 m!2347883))

(declare-fun m!2348673 () Bool)

(assert (=> d!584994 m!2348673))

(assert (=> b!1914077 m!2347887))

(assert (=> b!1914077 m!2347887))

(assert (=> b!1914077 m!2347889))

(assert (=> b!1914075 m!2347891))

(assert (=> b!1914073 m!2347887))

(assert (=> b!1914073 m!2347887))

(assert (=> b!1914073 m!2347889))

(assert (=> b!1914070 m!2347891))

(declare-fun m!2348675 () Bool)

(assert (=> b!1914071 m!2348675))

(assert (=> b!1914081 m!2347891))

(assert (=> b!1914081 m!2347891))

(declare-fun m!2348677 () Bool)

(assert (=> b!1914081 m!2348677))

(assert (=> b!1914081 m!2347887))

(assert (=> b!1914081 m!2348677))

(assert (=> b!1914081 m!2347887))

(declare-fun m!2348679 () Bool)

(assert (=> b!1914081 m!2348679))

(assert (=> b!1913163 d!584994))

(declare-fun d!584996 () Bool)

(declare-fun res!855127 () Bool)

(declare-fun e!1222771 () Bool)

(assert (=> d!584996 (=> (not res!855127) (not e!1222771))))

(assert (=> d!584996 (= res!855127 (validRegex!2125 (regex!3854 (rule!6053 (h!27001 tokens!598)))))))

(assert (=> d!584996 (= (ruleValid!1173 thiss!23328 (rule!6053 (h!27001 tokens!598))) e!1222771)))

(declare-fun b!1914088 () Bool)

(declare-fun res!855128 () Bool)

(assert (=> b!1914088 (=> (not res!855128) (not e!1222771))))

(assert (=> b!1914088 (= res!855128 (not (nullable!1599 (regex!3854 (rule!6053 (h!27001 tokens!598))))))))

(declare-fun b!1914089 () Bool)

(assert (=> b!1914089 (= e!1222771 (not (= (tag!4290 (rule!6053 (h!27001 tokens!598))) (String!25069 ""))))))

(assert (= (and d!584996 res!855127) b!1914088))

(assert (= (and b!1914088 res!855128) b!1914089))

(assert (=> d!584996 m!2348673))

(assert (=> b!1914088 m!2348675))

(assert (=> b!1913163 d!584996))

(declare-fun d!584998 () Bool)

(assert (=> d!584998 (ruleValid!1173 thiss!23328 (rule!6053 (h!27001 tokens!598)))))

(declare-fun lt!732894 () Unit!35976)

(declare-fun choose!11912 (LexerInterface!3467 Rule!7508 List!21683) Unit!35976)

(assert (=> d!584998 (= lt!732894 (choose!11912 thiss!23328 (rule!6053 (h!27001 tokens!598)) rules!3198))))

(assert (=> d!584998 (contains!3913 rules!3198 (rule!6053 (h!27001 tokens!598)))))

(assert (=> d!584998 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!670 thiss!23328 (rule!6053 (h!27001 tokens!598)) rules!3198) lt!732894)))

(declare-fun bs!414247 () Bool)

(assert (= bs!414247 d!584998))

(assert (=> bs!414247 m!2347399))

(declare-fun m!2348681 () Bool)

(assert (=> bs!414247 m!2348681))

(assert (=> bs!414247 m!2347503))

(assert (=> b!1913163 d!584998))

(declare-fun b!1914100 () Bool)

(declare-fun b_free!54133 () Bool)

(declare-fun b_next!54837 () Bool)

(assert (=> b!1914100 (= b_free!54133 (not b_next!54837))))

(declare-fun tb!117153 () Bool)

(declare-fun t!178346 () Bool)

(assert (=> (and b!1914100 (= (toValue!5483 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178346) tb!117153))

(declare-fun result!141554 () Bool)

(assert (= result!141554 result!141470))

(assert (=> d!584800 t!178346))

(assert (=> d!584834 t!178346))

(declare-fun tb!117155 () Bool)

(declare-fun t!178348 () Bool)

(assert (=> (and b!1914100 (= (toValue!5483 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178348) tb!117155))

(declare-fun result!141556 () Bool)

(assert (= result!141556 result!141486))

(assert (=> d!584834 t!178348))

(declare-fun b_and!149243 () Bool)

(declare-fun tp!546206 () Bool)

(assert (=> b!1914100 (= tp!546206 (and (=> t!178346 result!141554) (=> t!178348 result!141556) b_and!149243))))

(declare-fun b_free!54135 () Bool)

(declare-fun b_next!54839 () Bool)

(assert (=> b!1914100 (= b_free!54135 (not b_next!54839))))

(declare-fun t!178350 () Bool)

(declare-fun tb!117157 () Bool)

(assert (=> (and b!1914100 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178350) tb!117157))

(declare-fun result!141558 () Bool)

(assert (= result!141558 result!141456))

(assert (=> b!1913322 t!178350))

(assert (=> d!584876 t!178350))

(declare-fun tb!117159 () Bool)

(declare-fun t!178352 () Bool)

(assert (=> (and b!1914100 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354)))) t!178352) tb!117159))

(declare-fun result!141560 () Bool)

(assert (= result!141560 result!141506))

(assert (=> b!1913789 t!178352))

(assert (=> d!584850 t!178352))

(declare-fun tb!117161 () Bool)

(declare-fun t!178354 () Bool)

(assert (=> (and b!1914100 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178354) tb!117161))

(declare-fun result!141562 () Bool)

(assert (= result!141562 result!141464))

(assert (=> d!584800 t!178354))

(declare-fun tp!546205 () Bool)

(declare-fun b_and!149245 () Bool)

(assert (=> b!1914100 (= tp!546205 (and (=> t!178350 result!141558) (=> t!178354 result!141562) (=> t!178352 result!141560) b_and!149245))))

(declare-fun e!1222783 () Bool)

(assert (=> b!1914100 (= e!1222783 (and tp!546206 tp!546205))))

(declare-fun tp!546203 () Bool)

(declare-fun b!1914099 () Bool)

(declare-fun e!1222781 () Bool)

(assert (=> b!1914099 (= e!1222781 (and tp!546203 (inv!28696 (tag!4290 (h!27002 (t!178252 rules!3198)))) (inv!28700 (transformation!3854 (h!27002 (t!178252 rules!3198)))) e!1222783))))

(declare-fun b!1914098 () Bool)

(declare-fun e!1222780 () Bool)

(declare-fun tp!546204 () Bool)

(assert (=> b!1914098 (= e!1222780 (and e!1222781 tp!546204))))

(assert (=> b!1913153 (= tp!546123 e!1222780)))

(assert (= b!1914099 b!1914100))

(assert (= b!1914098 b!1914099))

(assert (= (and b!1913153 ((_ is Cons!21601) (t!178252 rules!3198))) b!1914098))

(declare-fun m!2348683 () Bool)

(assert (=> b!1914099 m!2348683))

(declare-fun m!2348685 () Bool)

(assert (=> b!1914099 m!2348685))

(declare-fun b!1914105 () Bool)

(declare-fun e!1222786 () Bool)

(declare-fun tp_is_empty!9105 () Bool)

(declare-fun tp!546209 () Bool)

(assert (=> b!1914105 (= e!1222786 (and tp_is_empty!9105 tp!546209))))

(assert (=> b!1913177 (= tp!546124 e!1222786)))

(assert (= (and b!1913177 ((_ is Cons!21599) (originalCharacters!4661 (h!27001 tokens!598)))) b!1914105))

(declare-fun b!1914116 () Bool)

(declare-fun e!1222789 () Bool)

(assert (=> b!1914116 (= e!1222789 tp_is_empty!9105)))

(declare-fun b!1914119 () Bool)

(declare-fun tp!546220 () Bool)

(declare-fun tp!546221 () Bool)

(assert (=> b!1914119 (= e!1222789 (and tp!546220 tp!546221))))

(declare-fun b!1914118 () Bool)

(declare-fun tp!546223 () Bool)

(assert (=> b!1914118 (= e!1222789 tp!546223)))

(assert (=> b!1913178 (= tp!546119 e!1222789)))

(declare-fun b!1914117 () Bool)

(declare-fun tp!546224 () Bool)

(declare-fun tp!546222 () Bool)

(assert (=> b!1914117 (= e!1222789 (and tp!546224 tp!546222))))

(assert (= (and b!1913178 ((_ is ElementMatch!5279) (regex!3854 (h!27002 rules!3198)))) b!1914116))

(assert (= (and b!1913178 ((_ is Concat!9270) (regex!3854 (h!27002 rules!3198)))) b!1914117))

(assert (= (and b!1913178 ((_ is Star!5279) (regex!3854 (h!27002 rules!3198)))) b!1914118))

(assert (= (and b!1913178 ((_ is Union!5279) (regex!3854 (h!27002 rules!3198)))) b!1914119))

(declare-fun b!1914133 () Bool)

(declare-fun b_free!54137 () Bool)

(declare-fun b_next!54841 () Bool)

(assert (=> b!1914133 (= b_free!54137 (not b_next!54841))))

(declare-fun t!178356 () Bool)

(declare-fun tb!117163 () Bool)

(assert (=> (and b!1914133 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178356) tb!117163))

(declare-fun result!141570 () Bool)

(assert (= result!141570 result!141470))

(assert (=> d!584800 t!178356))

(assert (=> d!584834 t!178356))

(declare-fun t!178358 () Bool)

(declare-fun tb!117165 () Bool)

(assert (=> (and b!1914133 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178358) tb!117165))

(declare-fun result!141572 () Bool)

(assert (= result!141572 result!141486))

(assert (=> d!584834 t!178358))

(declare-fun tp!546239 () Bool)

(declare-fun b_and!149247 () Bool)

(assert (=> b!1914133 (= tp!546239 (and (=> t!178356 result!141570) (=> t!178358 result!141572) b_and!149247))))

(declare-fun b_free!54139 () Bool)

(declare-fun b_next!54843 () Bool)

(assert (=> b!1914133 (= b_free!54139 (not b_next!54843))))

(declare-fun t!178360 () Bool)

(declare-fun tb!117167 () Bool)

(assert (=> (and b!1914133 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178360) tb!117167))

(declare-fun result!141574 () Bool)

(assert (= result!141574 result!141456))

(assert (=> b!1913322 t!178360))

(assert (=> d!584876 t!178360))

(declare-fun tb!117169 () Bool)

(declare-fun t!178362 () Bool)

(assert (=> (and b!1914133 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354)))) t!178362) tb!117169))

(declare-fun result!141576 () Bool)

(assert (= result!141576 result!141506))

(assert (=> b!1913789 t!178362))

(assert (=> d!584850 t!178362))

(declare-fun t!178364 () Bool)

(declare-fun tb!117171 () Bool)

(assert (=> (and b!1914133 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598))))) t!178364) tb!117171))

(declare-fun result!141578 () Bool)

(assert (= result!141578 result!141464))

(assert (=> d!584800 t!178364))

(declare-fun b_and!149249 () Bool)

(declare-fun tp!546235 () Bool)

(assert (=> b!1914133 (= tp!546235 (and (=> t!178360 result!141574) (=> t!178364 result!141578) (=> t!178362 result!141576) b_and!149249))))

(declare-fun e!1222805 () Bool)

(declare-fun e!1222803 () Bool)

(declare-fun b!1914132 () Bool)

(declare-fun tp!546237 () Bool)

(assert (=> b!1914132 (= e!1222805 (and tp!546237 (inv!28696 (tag!4290 (rule!6053 (h!27001 (t!178251 tokens!598))))) (inv!28700 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) e!1222803))))

(declare-fun e!1222806 () Bool)

(declare-fun e!1222804 () Bool)

(declare-fun tp!546236 () Bool)

(declare-fun b!1914130 () Bool)

(assert (=> b!1914130 (= e!1222804 (and (inv!28699 (h!27001 (t!178251 tokens!598))) e!1222806 tp!546236))))

(assert (=> b!1914133 (= e!1222803 (and tp!546239 tp!546235))))

(declare-fun tp!546238 () Bool)

(declare-fun b!1914131 () Bool)

(assert (=> b!1914131 (= e!1222806 (and (inv!21 (value!121430 (h!27001 (t!178251 tokens!598)))) e!1222805 tp!546238))))

(assert (=> b!1913147 (= tp!546126 e!1222804)))

(assert (= b!1914132 b!1914133))

(assert (= b!1914131 b!1914132))

(assert (= b!1914130 b!1914131))

(assert (= (and b!1913147 ((_ is Cons!21600) (t!178251 tokens!598))) b!1914130))

(declare-fun m!2348687 () Bool)

(assert (=> b!1914132 m!2348687))

(declare-fun m!2348689 () Bool)

(assert (=> b!1914132 m!2348689))

(declare-fun m!2348691 () Bool)

(assert (=> b!1914130 m!2348691))

(declare-fun m!2348693 () Bool)

(assert (=> b!1914131 m!2348693))

(declare-fun b!1914134 () Bool)

(declare-fun e!1222808 () Bool)

(assert (=> b!1914134 (= e!1222808 tp_is_empty!9105)))

(declare-fun b!1914137 () Bool)

(declare-fun tp!546240 () Bool)

(declare-fun tp!546241 () Bool)

(assert (=> b!1914137 (= e!1222808 (and tp!546240 tp!546241))))

(declare-fun b!1914136 () Bool)

(declare-fun tp!546243 () Bool)

(assert (=> b!1914136 (= e!1222808 tp!546243)))

(assert (=> b!1913160 (= tp!546128 e!1222808)))

(declare-fun b!1914135 () Bool)

(declare-fun tp!546244 () Bool)

(declare-fun tp!546242 () Bool)

(assert (=> b!1914135 (= e!1222808 (and tp!546244 tp!546242))))

(assert (= (and b!1913160 ((_ is ElementMatch!5279) (regex!3854 (rule!6053 separatorToken!354)))) b!1914134))

(assert (= (and b!1913160 ((_ is Concat!9270) (regex!3854 (rule!6053 separatorToken!354)))) b!1914135))

(assert (= (and b!1913160 ((_ is Star!5279) (regex!3854 (rule!6053 separatorToken!354)))) b!1914136))

(assert (= (and b!1913160 ((_ is Union!5279) (regex!3854 (rule!6053 separatorToken!354)))) b!1914137))

(declare-fun b!1914138 () Bool)

(declare-fun e!1222809 () Bool)

(assert (=> b!1914138 (= e!1222809 tp_is_empty!9105)))

(declare-fun b!1914141 () Bool)

(declare-fun tp!546245 () Bool)

(declare-fun tp!546246 () Bool)

(assert (=> b!1914141 (= e!1222809 (and tp!546245 tp!546246))))

(declare-fun b!1914140 () Bool)

(declare-fun tp!546248 () Bool)

(assert (=> b!1914140 (= e!1222809 tp!546248)))

(assert (=> b!1913182 (= tp!546121 e!1222809)))

(declare-fun b!1914139 () Bool)

(declare-fun tp!546249 () Bool)

(declare-fun tp!546247 () Bool)

(assert (=> b!1914139 (= e!1222809 (and tp!546249 tp!546247))))

(assert (= (and b!1913182 ((_ is ElementMatch!5279) (regex!3854 (rule!6053 (h!27001 tokens!598))))) b!1914138))

(assert (= (and b!1913182 ((_ is Concat!9270) (regex!3854 (rule!6053 (h!27001 tokens!598))))) b!1914139))

(assert (= (and b!1913182 ((_ is Star!5279) (regex!3854 (rule!6053 (h!27001 tokens!598))))) b!1914140))

(assert (= (and b!1913182 ((_ is Union!5279) (regex!3854 (rule!6053 (h!27001 tokens!598))))) b!1914141))

(declare-fun b!1914142 () Bool)

(declare-fun e!1222810 () Bool)

(declare-fun tp!546250 () Bool)

(assert (=> b!1914142 (= e!1222810 (and tp_is_empty!9105 tp!546250))))

(assert (=> b!1913183 (= tp!546120 e!1222810)))

(assert (= (and b!1913183 ((_ is Cons!21599) (originalCharacters!4661 separatorToken!354))) b!1914142))

(declare-fun b_lambda!63335 () Bool)

(assert (= b_lambda!63281 (or b!1913165 b_lambda!63335)))

(declare-fun bs!414248 () Bool)

(declare-fun d!585000 () Bool)

(assert (= bs!414248 (and d!585000 b!1913165)))

(assert (=> bs!414248 (= (dynLambda!10510 lambda!74693 (h!27001 tokens!598)) (not (isSeparator!3854 (rule!6053 (h!27001 tokens!598)))))))

(assert (=> b!1913189 d!585000))

(declare-fun b_lambda!63337 () Bool)

(assert (= b_lambda!63307 (or (and b!1913169 b_free!54119 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1914100 b_free!54135 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1914133 b_free!54139 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1913156 b_free!54123) (and b!1913176 b_free!54115 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) b_lambda!63337)))

(declare-fun b_lambda!63339 () Bool)

(assert (= b_lambda!63295 (or (and b!1913169 b_free!54117) (and b!1914100 b_free!54133 (= (toValue!5483 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913176 b_free!54113 (= (toValue!5483 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54121 (= (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54137 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63339)))

(declare-fun b_lambda!63341 () Bool)

(assert (= b_lambda!63293 (or (and b!1913169 b_free!54117) (and b!1914100 b_free!54133 (= (toValue!5483 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913176 b_free!54113 (= (toValue!5483 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54121 (= (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54137 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63341)))

(declare-fun b_lambda!63343 () Bool)

(assert (= b_lambda!63301 (or (and b!1913169 b_free!54119 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1914100 b_free!54135 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1914133 b_free!54139 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) (and b!1913156 b_free!54123) (and b!1913176 b_free!54115 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))))) b_lambda!63343)))

(declare-fun b_lambda!63345 () Bool)

(assert (= b_lambda!63289 (or (and b!1913169 b_free!54117) (and b!1914100 b_free!54133 (= (toValue!5483 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913176 b_free!54113 (= (toValue!5483 (transformation!3854 (h!27002 rules!3198))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54121 (= (toValue!5483 (transformation!3854 (rule!6053 separatorToken!354))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54137 (= (toValue!5483 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toValue!5483 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63345)))

(declare-fun b_lambda!63347 () Bool)

(assert (= b_lambda!63305 (or (and b!1913169 b_free!54119) (and b!1913176 b_free!54115 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54139 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914100 b_free!54135 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54123 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63347)))

(declare-fun b_lambda!63349 () Bool)

(assert (= b_lambda!63283 (or (and b!1913169 b_free!54119) (and b!1913176 b_free!54115 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54139 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914100 b_free!54135 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54123 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63349)))

(declare-fun b_lambda!63351 () Bool)

(assert (= b_lambda!63287 (or (and b!1913169 b_free!54119) (and b!1913176 b_free!54115 (= (toChars!5342 (transformation!3854 (h!27002 rules!3198))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914133 b_free!54139 (= (toChars!5342 (transformation!3854 (rule!6053 (h!27001 (t!178251 tokens!598))))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1914100 b_free!54135 (= (toChars!5342 (transformation!3854 (h!27002 (t!178252 rules!3198)))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) (and b!1913156 b_free!54123 (= (toChars!5342 (transformation!3854 (rule!6053 separatorToken!354))) (toChars!5342 (transformation!3854 (rule!6053 (h!27001 tokens!598)))))) b_lambda!63351)))

(check-sat (not b!1913976) (not b!1914137) (not b!1913702) (not b!1913483) (not bm!117867) (not d!584978) (not b_lambda!63345) b_and!149249 (not b!1914077) (not b!1913467) tp_is_empty!9105 (not b!1914029) (not d!584880) (not b!1913328) (not b_next!54839) (not bm!117799) (not b!1914064) (not b_lambda!63343) (not b_lambda!63335) (not b!1913425) (not b!1914044) (not b_lambda!63349) (not b_next!54825) (not d!584846) (not d!584984) (not b!1913707) (not bm!117846) (not bm!117798) (not tb!117073) (not bm!117859) (not bm!117831) b_and!149173 (not b!1913461) (not d!584956) (not b!1914043) (not b!1913482) (not b_next!54837) (not b!1913306) (not bm!117837) (not b!1913421) (not bm!117858) (not tb!117079) (not b!1914063) (not b!1913642) (not b_next!54817) (not b!1913480) (not b_next!54827) (not b!1914130) (not d!584970) (not d!584706) (not b!1913422) (not b!1914139) (not d!584790) (not b!1913420) (not bm!117861) (not b!1914050) (not b!1913790) (not d!584850) (not b!1913708) (not b!1913820) (not b!1914032) (not b!1913975) (not b_next!54843) (not b!1913782) (not d!584932) (not d!584948) (not b!1913304) (not b_lambda!63339) (not d!584860) (not b!1913896) (not b_next!54819) (not b!1913196) (not b_next!54823) (not b!1913808) (not b!1913365) (not b!1914119) (not b!1913502) (not d!584980) (not bm!117849) (not d!584898) (not b!1913965) (not d!584950) (not b!1914099) (not b!1913363) (not bm!117845) b_and!149247 (not b!1914067) (not b_lambda!63337) (not b!1913818) (not b_next!54821) (not b!1913463) (not bm!117792) (not d!584792) (not b!1914045) (not b!1913481) b_and!149169 (not d!584796) (not d!584884) (not d!584764) (not b!1913973) (not d!584954) (not b!1914141) (not bm!117866) (not b!1913970) (not b!1913488) (not b!1913992) (not d!584942) (not d!584906) (not b!1913491) (not d!584834) (not b!1913456) (not b!1913426) (not b!1913809) (not d!584986) (not d!584996) (not b!1913969) (not b!1914027) (not b!1914105) (not b!1914098) (not b!1913305) (not b!1913758) (not d!584754) (not b!1914131) (not b!1913360) (not d!584994) (not b!1913631) b_and!149245 (not b!1913322) (not b_lambda!63341) (not b!1914048) (not b!1913490) (not d!584966) (not d!584974) (not b!1913722) (not b!1914081) (not b!1913819) (not tb!117115) (not d!584878) (not d!584896) (not b!1914117) (not b!1913783) (not b!1914070) (not d!584798) (not b!1913878) (not d!584748) (not b_lambda!63351) (not b!1913371) (not bm!117833) (not b!1913485) (not d!584788) b_and!149207 (not b!1914140) (not b!1914132) (not b!1913964) (not d!584704) (not d!584972) (not d!584882) (not b!1913891) (not b!1913423) (not b!1913990) (not b!1913784) (not bm!117863) (not b!1913817) (not b!1913367) (not b!1913419) (not bm!117862) (not b!1913632) (not tb!117085) (not b!1913889) (not d!584746) (not b!1914068) (not d!584800) (not d!584934) (not b!1913475) b_and!149209 (not b!1914031) (not b!1914040) (not b!1913486) (not b!1914075) (not b!1913629) (not b!1913701) (not b!1913982) (not b!1913484) (not b!1913815) (not d!584876) (not b!1914065) (not tb!117097) (not bm!117834) (not b!1913786) (not b!1914136) (not bm!117800) (not b!1914052) (not b!1914056) (not b!1913877) (not b!1913963) (not d!584874) b_and!149205 (not b!1914118) (not d!584944) (not b!1913323) (not b!1913760) (not b!1914039) (not d!584892) (not bm!117848) (not b!1913789) (not b!1913802) (not bm!117830) (not b!1913709) (not d!584988) (not b!1914073) (not b_next!54841) (not d!584828) (not b!1913968) (not b!1913633) (not d!584968) b_and!149243 (not b!1913703) (not d!584786) (not b!1913361) (not b!1913190) (not b!1913459) (not d!584708) (not b!1914071) (not b!1913774) (not b!1913759) (not b!1913892) (not d!584998) (not b!1913492) (not b!1913457) (not bm!117865) (not d!584964) (not d!584768) (not b_lambda!63347) (not b!1914046) (not b!1913704) (not b!1913972) (not b!1913489) (not b!1913876) b_and!149171 (not b!1913427) (not b!1913775) (not b!1914088) (not b!1913307) (not b!1914142) (not b!1914036) (not b!1914135) (not b!1914035) (not b!1913705) (not d!584782) (not d!584976) (not d!584848))
(check-sat b_and!149249 (not b_next!54839) (not b_next!54825) (not b_next!54817) (not b_next!54827) (not b_next!54843) b_and!149169 b_and!149245 b_and!149207 b_and!149209 b_and!149205 b_and!149171 b_and!149173 (not b_next!54837) (not b_next!54819) (not b_next!54823) b_and!149247 (not b_next!54821) (not b_next!54841) b_and!149243)
