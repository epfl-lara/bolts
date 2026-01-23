; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192232 () Bool)

(assert start!192232)

(declare-fun b!1917545 () Bool)

(declare-fun b_free!54433 () Bool)

(declare-fun b_next!55137 () Bool)

(assert (=> b!1917545 (= b_free!54433 (not b_next!55137))))

(declare-fun tp!547308 () Bool)

(declare-fun b_and!149639 () Bool)

(assert (=> b!1917545 (= tp!547308 b_and!149639)))

(declare-fun b_free!54435 () Bool)

(declare-fun b_next!55139 () Bool)

(assert (=> b!1917545 (= b_free!54435 (not b_next!55139))))

(declare-fun tp!547301 () Bool)

(declare-fun b_and!149641 () Bool)

(assert (=> b!1917545 (= tp!547301 b_and!149641)))

(declare-fun b!1917541 () Bool)

(declare-fun b_free!54437 () Bool)

(declare-fun b_next!55141 () Bool)

(assert (=> b!1917541 (= b_free!54437 (not b_next!55141))))

(declare-fun tp!547304 () Bool)

(declare-fun b_and!149643 () Bool)

(assert (=> b!1917541 (= tp!547304 b_and!149643)))

(declare-fun b_free!54439 () Bool)

(declare-fun b_next!55143 () Bool)

(assert (=> b!1917541 (= b_free!54439 (not b_next!55143))))

(declare-fun tp!547297 () Bool)

(declare-fun b_and!149645 () Bool)

(assert (=> b!1917541 (= tp!547297 b_and!149645)))

(declare-fun b!1917553 () Bool)

(declare-fun b_free!54441 () Bool)

(declare-fun b_next!55145 () Bool)

(assert (=> b!1917553 (= b_free!54441 (not b_next!55145))))

(declare-fun tp!547306 () Bool)

(declare-fun b_and!149647 () Bool)

(assert (=> b!1917553 (= tp!547306 b_and!149647)))

(declare-fun b_free!54443 () Bool)

(declare-fun b_next!55147 () Bool)

(assert (=> b!1917553 (= b_free!54443 (not b_next!55147))))

(declare-fun tp!547302 () Bool)

(declare-fun b_and!149649 () Bool)

(assert (=> b!1917553 (= tp!547302 b_and!149649)))

(declare-fun b!1917534 () Bool)

(declare-fun res!857202 () Bool)

(declare-fun e!1225203 () Bool)

(assert (=> b!1917534 (=> (not res!857202) (not e!1225203))))

(declare-datatypes ((List!21780 0))(
  ( (Nil!21698) (Cons!21698 (h!27099 (_ BitVec 16)) (t!178573 List!21780)) )
))
(declare-datatypes ((TokenValue!4014 0))(
  ( (FloatLiteralValue!8028 (text!28543 List!21780)) (TokenValueExt!4013 (__x!13526 Int)) (Broken!20070 (value!122088 List!21780)) (Object!4095) (End!4014) (Def!4014) (Underscore!4014) (Match!4014) (Else!4014) (Error!4014) (Case!4014) (If!4014) (Extends!4014) (Abstract!4014) (Class!4014) (Val!4014) (DelimiterValue!8028 (del!4074 List!21780)) (KeywordValue!4020 (value!122089 List!21780)) (CommentValue!8028 (value!122090 List!21780)) (WhitespaceValue!8028 (value!122091 List!21780)) (IndentationValue!4014 (value!122092 List!21780)) (String!25187) (Int32!4014) (Broken!20071 (value!122093 List!21780)) (Boolean!4015) (Unit!36093) (OperatorValue!4017 (op!4074 List!21780)) (IdentifierValue!8028 (value!122094 List!21780)) (IdentifierValue!8029 (value!122095 List!21780)) (WhitespaceValue!8029 (value!122096 List!21780)) (True!8028) (False!8028) (Broken!20072 (value!122097 List!21780)) (Broken!20073 (value!122098 List!21780)) (True!8029) (RightBrace!4014) (RightBracket!4014) (Colon!4014) (Null!4014) (Comma!4014) (LeftBracket!4014) (False!8029) (LeftBrace!4014) (ImaginaryLiteralValue!4014 (text!28544 List!21780)) (StringLiteralValue!12042 (value!122099 List!21780)) (EOFValue!4014 (value!122100 List!21780)) (IdentValue!4014 (value!122101 List!21780)) (DelimiterValue!8029 (value!122102 List!21780)) (DedentValue!4014 (value!122103 List!21780)) (NewLineValue!4014 (value!122104 List!21780)) (IntegerValue!12042 (value!122105 (_ BitVec 32)) (text!28545 List!21780)) (IntegerValue!12043 (value!122106 Int) (text!28546 List!21780)) (Times!4014) (Or!4014) (Equal!4014) (Minus!4014) (Broken!20074 (value!122107 List!21780)) (And!4014) (Div!4014) (LessEqual!4014) (Mod!4014) (Concat!9317) (Not!4014) (Plus!4014) (SpaceValue!4014 (value!122108 List!21780)) (IntegerValue!12044 (value!122109 Int) (text!28547 List!21780)) (StringLiteralValue!12043 (text!28548 List!21780)) (FloatLiteralValue!8029 (text!28549 List!21780)) (BytesLiteralValue!4014 (value!122110 List!21780)) (CommentValue!8029 (value!122111 List!21780)) (StringLiteralValue!12044 (value!122112 List!21780)) (ErrorTokenValue!4014 (msg!4075 List!21780)) )
))
(declare-datatypes ((C!10752 0))(
  ( (C!10753 (val!6328 Int)) )
))
(declare-datatypes ((List!21781 0))(
  ( (Nil!21699) (Cons!21699 (h!27100 C!10752) (t!178574 List!21781)) )
))
(declare-datatypes ((Regex!5303 0))(
  ( (ElementMatch!5303 (c!312056 C!10752)) (Concat!9318 (regOne!11118 Regex!5303) (regTwo!11118 Regex!5303)) (EmptyExpr!5303) (Star!5303 (reg!5632 Regex!5303)) (EmptyLang!5303) (Union!5303 (regOne!11119 Regex!5303) (regTwo!11119 Regex!5303)) )
))
(declare-datatypes ((String!25188 0))(
  ( (String!25189 (value!122113 String)) )
))
(declare-datatypes ((IArray!14501 0))(
  ( (IArray!14502 (innerList!7308 List!21781)) )
))
(declare-datatypes ((Conc!7248 0))(
  ( (Node!7248 (left!17321 Conc!7248) (right!17651 Conc!7248) (csize!14726 Int) (cheight!7459 Int)) (Leaf!10650 (xs!10142 IArray!14501) (csize!14727 Int)) (Empty!7248) )
))
(declare-datatypes ((BalanceConc!14312 0))(
  ( (BalanceConc!14313 (c!312057 Conc!7248)) )
))
(declare-datatypes ((TokenValueInjection!7612 0))(
  ( (TokenValueInjection!7613 (toValue!5507 Int) (toChars!5366 Int)) )
))
(declare-datatypes ((Rule!7556 0))(
  ( (Rule!7557 (regex!3878 Regex!5303) (tag!4318 String!25188) (isSeparator!3878 Bool) (transformation!3878 TokenValueInjection!7612)) )
))
(declare-datatypes ((Token!7308 0))(
  ( (Token!7309 (value!122114 TokenValue!4014) (rule!6081 Rule!7556) (size!17024 Int) (originalCharacters!4685 List!21781)) )
))
(declare-fun separatorToken!354 () Token!7308)

(assert (=> b!1917534 (= res!857202 (isSeparator!3878 (rule!6081 separatorToken!354)))))

(declare-fun b!1917535 () Bool)

(declare-fun e!1225207 () Bool)

(declare-fun e!1225209 () Bool)

(declare-fun tp!547298 () Bool)

(assert (=> b!1917535 (= e!1225207 (and e!1225209 tp!547298))))

(declare-fun b!1917536 () Bool)

(declare-fun res!857213 () Bool)

(assert (=> b!1917536 (=> (not res!857213) (not e!1225203))))

(declare-datatypes ((List!21782 0))(
  ( (Nil!21700) (Cons!21700 (h!27101 Rule!7556) (t!178575 List!21782)) )
))
(declare-fun rules!3198 () List!21782)

(declare-fun isEmpty!13363 (List!21782) Bool)

(assert (=> b!1917536 (= res!857213 (not (isEmpty!13363 rules!3198)))))

(declare-fun e!1225200 () Bool)

(declare-fun e!1225198 () Bool)

(declare-fun b!1917537 () Bool)

(declare-fun tp!547307 () Bool)

(declare-fun inv!28788 (String!25188) Bool)

(declare-fun inv!28791 (TokenValueInjection!7612) Bool)

(assert (=> b!1917537 (= e!1225198 (and tp!547307 (inv!28788 (tag!4318 (rule!6081 separatorToken!354))) (inv!28791 (transformation!3878 (rule!6081 separatorToken!354))) e!1225200))))

(declare-fun b!1917539 () Bool)

(declare-fun e!1225202 () Bool)

(declare-fun tp!547300 () Bool)

(declare-fun inv!21 (TokenValue!4014) Bool)

(assert (=> b!1917539 (= e!1225202 (and (inv!21 (value!122114 separatorToken!354)) e!1225198 tp!547300))))

(declare-fun b!1917540 () Bool)

(declare-fun res!857212 () Bool)

(assert (=> b!1917540 (=> (not res!857212) (not e!1225203))))

(declare-fun sepAndNonSepRulesDisjointChars!976 (List!21782 List!21782) Bool)

(assert (=> b!1917540 (= res!857212 (sepAndNonSepRulesDisjointChars!976 rules!3198 rules!3198))))

(declare-fun e!1225199 () Bool)

(assert (=> b!1917541 (= e!1225199 (and tp!547304 tp!547297))))

(declare-fun b!1917542 () Bool)

(declare-fun res!857199 () Bool)

(assert (=> b!1917542 (=> (not res!857199) (not e!1225203))))

(declare-datatypes ((LexerInterface!3491 0))(
  ( (LexerInterfaceExt!3488 (__x!13527 Int)) (Lexer!3489) )
))
(declare-fun thiss!23328 () LexerInterface!3491)

(declare-datatypes ((List!21783 0))(
  ( (Nil!21701) (Cons!21701 (h!27102 Token!7308) (t!178576 List!21783)) )
))
(declare-fun tokens!598 () List!21783)

(declare-fun rulesProduceEachTokenIndividuallyList!1222 (LexerInterface!3491 List!21782 List!21783) Bool)

(assert (=> b!1917542 (= res!857199 (rulesProduceEachTokenIndividuallyList!1222 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1917543 () Bool)

(declare-fun e!1225195 () Bool)

(declare-fun lt!735180 () Rule!7556)

(assert (=> b!1917543 (= e!1225195 (= (rule!6081 separatorToken!354) lt!735180))))

(declare-fun b!1917544 () Bool)

(declare-fun e!1225197 () Bool)

(assert (=> b!1917544 (= e!1225203 (not e!1225197))))

(declare-fun res!857209 () Bool)

(assert (=> b!1917544 (=> res!857209 e!1225197)))

(declare-fun lt!735177 () Bool)

(declare-datatypes ((tuple2!20414 0))(
  ( (tuple2!20415 (_1!11676 Token!7308) (_2!11676 List!21781)) )
))
(declare-datatypes ((Option!4461 0))(
  ( (None!4460) (Some!4460 (v!26533 tuple2!20414)) )
))
(declare-fun lt!735187 () Option!4461)

(get-info :version)

(assert (=> b!1917544 (= res!857209 (or (and (not lt!735177) (= (_1!11676 (v!26533 lt!735187)) (h!27102 tokens!598))) (and (not lt!735177) (not (= (_1!11676 (v!26533 lt!735187)) (h!27102 tokens!598)))) (not ((_ is None!4460) lt!735187))))))

(assert (=> b!1917544 (= lt!735177 (not ((_ is Some!4460) lt!735187)))))

(declare-fun lt!735183 () List!21781)

(declare-fun maxPrefix!1937 (LexerInterface!3491 List!21782 List!21781) Option!4461)

(declare-fun ++!5833 (List!21781 List!21781) List!21781)

(declare-fun printWithSeparatorTokenWhenNeededList!534 (LexerInterface!3491 List!21782 List!21783 Token!7308) List!21781)

(assert (=> b!1917544 (= lt!735187 (maxPrefix!1937 thiss!23328 rules!3198 (++!5833 lt!735183 (printWithSeparatorTokenWhenNeededList!534 thiss!23328 rules!3198 (t!178576 tokens!598) separatorToken!354))))))

(declare-fun e!1225205 () Bool)

(assert (=> b!1917544 e!1225205))

(declare-fun res!857204 () Bool)

(assert (=> b!1917544 (=> (not res!857204) (not e!1225205))))

(declare-datatypes ((Option!4462 0))(
  ( (None!4461) (Some!4461 (v!26534 Rule!7556)) )
))
(declare-fun lt!735176 () Option!4462)

(declare-fun isDefined!3759 (Option!4462) Bool)

(assert (=> b!1917544 (= res!857204 (isDefined!3759 lt!735176))))

(declare-fun getRuleFromTag!721 (LexerInterface!3491 List!21782 String!25188) Option!4462)

(assert (=> b!1917544 (= lt!735176 (getRuleFromTag!721 thiss!23328 rules!3198 (tag!4318 (rule!6081 (h!27102 tokens!598)))))))

(declare-datatypes ((Unit!36094 0))(
  ( (Unit!36095) )
))
(declare-fun lt!735185 () Unit!36094)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!721 (LexerInterface!3491 List!21782 List!21781 Token!7308) Unit!36094)

(assert (=> b!1917544 (= lt!735185 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!721 thiss!23328 rules!3198 lt!735183 (h!27102 tokens!598)))))

(declare-fun e!1225194 () Bool)

(assert (=> b!1917544 e!1225194))

(declare-fun res!857200 () Bool)

(assert (=> b!1917544 (=> (not res!857200) (not e!1225194))))

(declare-fun lt!735178 () Option!4461)

(declare-fun isDefined!3760 (Option!4461) Bool)

(assert (=> b!1917544 (= res!857200 (isDefined!3760 lt!735178))))

(assert (=> b!1917544 (= lt!735178 (maxPrefix!1937 thiss!23328 rules!3198 lt!735183))))

(declare-fun lt!735186 () BalanceConc!14312)

(declare-fun list!8810 (BalanceConc!14312) List!21781)

(assert (=> b!1917544 (= lt!735183 (list!8810 lt!735186))))

(declare-fun e!1225208 () Bool)

(assert (=> b!1917544 e!1225208))

(declare-fun res!857211 () Bool)

(assert (=> b!1917544 (=> (not res!857211) (not e!1225208))))

(declare-fun lt!735189 () Option!4462)

(assert (=> b!1917544 (= res!857211 (isDefined!3759 lt!735189))))

(assert (=> b!1917544 (= lt!735189 (getRuleFromTag!721 thiss!23328 rules!3198 (tag!4318 (rule!6081 separatorToken!354))))))

(declare-fun lt!735188 () List!21781)

(declare-fun lt!735174 () Unit!36094)

(assert (=> b!1917544 (= lt!735174 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!721 thiss!23328 rules!3198 lt!735188 separatorToken!354))))

(declare-fun charsOf!2434 (Token!7308) BalanceConc!14312)

(assert (=> b!1917544 (= lt!735188 (list!8810 (charsOf!2434 separatorToken!354)))))

(declare-fun lt!735184 () Unit!36094)

(declare-fun lemmaEqSameImage!586 (TokenValueInjection!7612 BalanceConc!14312 BalanceConc!14312) Unit!36094)

(declare-fun seqFromList!2750 (List!21781) BalanceConc!14312)

(assert (=> b!1917544 (= lt!735184 (lemmaEqSameImage!586 (transformation!3878 (rule!6081 (h!27102 tokens!598))) lt!735186 (seqFromList!2750 (originalCharacters!4685 (h!27102 tokens!598)))))))

(declare-fun lt!735192 () Unit!36094)

(declare-fun lemmaSemiInverse!857 (TokenValueInjection!7612 BalanceConc!14312) Unit!36094)

(assert (=> b!1917544 (= lt!735192 (lemmaSemiInverse!857 (transformation!3878 (rule!6081 (h!27102 tokens!598))) lt!735186))))

(assert (=> b!1917544 (= lt!735186 (charsOf!2434 (h!27102 tokens!598)))))

(assert (=> b!1917545 (= e!1225200 (and tp!547308 tp!547301))))

(declare-fun b!1917546 () Bool)

(declare-fun e!1225189 () Bool)

(assert (=> b!1917546 (= e!1225189 true)))

(declare-fun lt!735179 () Bool)

(declare-datatypes ((IArray!14503 0))(
  ( (IArray!14504 (innerList!7309 List!21783)) )
))
(declare-datatypes ((Conc!7249 0))(
  ( (Node!7249 (left!17322 Conc!7249) (right!17652 Conc!7249) (csize!14728 Int) (cheight!7460 Int)) (Leaf!10651 (xs!10143 IArray!14503) (csize!14729 Int)) (Empty!7249) )
))
(declare-datatypes ((BalanceConc!14314 0))(
  ( (BalanceConc!14315 (c!312058 Conc!7249)) )
))
(declare-fun isEmpty!13364 (BalanceConc!14314) Bool)

(declare-datatypes ((tuple2!20416 0))(
  ( (tuple2!20417 (_1!11677 BalanceConc!14314) (_2!11677 BalanceConc!14312)) )
))
(declare-fun lex!1558 (LexerInterface!3491 List!21782 BalanceConc!14312) tuple2!20416)

(assert (=> b!1917546 (= lt!735179 (isEmpty!13364 (_1!11677 (lex!1558 thiss!23328 rules!3198 (seqFromList!2750 lt!735183)))))))

(declare-fun b!1917547 () Bool)

(declare-fun tp!547296 () Bool)

(declare-fun e!1225188 () Bool)

(declare-fun e!1225206 () Bool)

(declare-fun inv!28792 (Token!7308) Bool)

(assert (=> b!1917547 (= e!1225206 (and (inv!28792 (h!27102 tokens!598)) e!1225188 tp!547296))))

(declare-fun e!1225204 () Bool)

(declare-fun b!1917548 () Bool)

(declare-fun tp!547305 () Bool)

(assert (=> b!1917548 (= e!1225188 (and (inv!21 (value!122114 (h!27102 tokens!598))) e!1225204 tp!547305))))

(declare-fun res!857208 () Bool)

(assert (=> start!192232 (=> (not res!857208) (not e!1225203))))

(assert (=> start!192232 (= res!857208 ((_ is Lexer!3489) thiss!23328))))

(assert (=> start!192232 e!1225203))

(assert (=> start!192232 true))

(assert (=> start!192232 e!1225207))

(assert (=> start!192232 e!1225206))

(assert (=> start!192232 (and (inv!28792 separatorToken!354) e!1225202)))

(declare-fun b!1917538 () Bool)

(assert (=> b!1917538 (= e!1225208 e!1225195)))

(declare-fun res!857206 () Bool)

(assert (=> b!1917538 (=> (not res!857206) (not e!1225195))))

(declare-fun matchR!2589 (Regex!5303 List!21781) Bool)

(assert (=> b!1917538 (= res!857206 (matchR!2589 (regex!3878 lt!735180) lt!735188))))

(declare-fun get!6807 (Option!4462) Rule!7556)

(assert (=> b!1917538 (= lt!735180 (get!6807 lt!735189))))

(declare-fun b!1917549 () Bool)

(assert (=> b!1917549 (= e!1225197 e!1225189)))

(declare-fun res!857207 () Bool)

(assert (=> b!1917549 (=> res!857207 e!1225189)))

(declare-fun lt!735175 () List!21781)

(declare-fun lt!735191 () List!21781)

(assert (=> b!1917549 (= res!857207 (or (not (= lt!735191 lt!735175)) (not (= lt!735175 lt!735183)) (not (= lt!735191 lt!735183))))))

(declare-fun printList!1070 (LexerInterface!3491 List!21783) List!21781)

(assert (=> b!1917549 (= lt!735175 (printList!1070 thiss!23328 (Cons!21701 (h!27102 tokens!598) Nil!21701)))))

(declare-fun lt!735190 () BalanceConc!14312)

(assert (=> b!1917549 (= lt!735191 (list!8810 lt!735190))))

(declare-fun lt!735181 () BalanceConc!14314)

(declare-fun printTailRec!1006 (LexerInterface!3491 BalanceConc!14314 Int BalanceConc!14312) BalanceConc!14312)

(assert (=> b!1917549 (= lt!735190 (printTailRec!1006 thiss!23328 lt!735181 0 (BalanceConc!14313 Empty!7248)))))

(declare-fun print!1499 (LexerInterface!3491 BalanceConc!14314) BalanceConc!14312)

(assert (=> b!1917549 (= lt!735190 (print!1499 thiss!23328 lt!735181))))

(declare-fun singletonSeq!1901 (Token!7308) BalanceConc!14314)

(assert (=> b!1917549 (= lt!735181 (singletonSeq!1901 (h!27102 tokens!598)))))

(declare-fun b!1917550 () Bool)

(declare-fun res!857214 () Bool)

(assert (=> b!1917550 (=> (not res!857214) (not e!1225203))))

(declare-fun rulesProduceIndividualToken!1663 (LexerInterface!3491 List!21782 Token!7308) Bool)

(assert (=> b!1917550 (= res!857214 (rulesProduceIndividualToken!1663 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1917551 () Bool)

(declare-fun res!857198 () Bool)

(assert (=> b!1917551 (=> res!857198 e!1225189)))

(assert (=> b!1917551 (= res!857198 (not (rulesProduceIndividualToken!1663 thiss!23328 rules!3198 (h!27102 tokens!598))))))

(declare-fun b!1917552 () Bool)

(declare-fun tp!547303 () Bool)

(assert (=> b!1917552 (= e!1225204 (and tp!547303 (inv!28788 (tag!4318 (rule!6081 (h!27102 tokens!598)))) (inv!28791 (transformation!3878 (rule!6081 (h!27102 tokens!598)))) e!1225199))))

(declare-fun e!1225190 () Bool)

(assert (=> b!1917553 (= e!1225190 (and tp!547306 tp!547302))))

(declare-fun b!1917554 () Bool)

(declare-fun e!1225193 () Bool)

(assert (=> b!1917554 (= e!1225205 e!1225193)))

(declare-fun res!857203 () Bool)

(assert (=> b!1917554 (=> (not res!857203) (not e!1225193))))

(declare-fun lt!735182 () Rule!7556)

(assert (=> b!1917554 (= res!857203 (matchR!2589 (regex!3878 lt!735182) lt!735183))))

(assert (=> b!1917554 (= lt!735182 (get!6807 lt!735176))))

(declare-fun b!1917555 () Bool)

(declare-fun res!857205 () Bool)

(assert (=> b!1917555 (=> (not res!857205) (not e!1225203))))

(assert (=> b!1917555 (= res!857205 ((_ is Cons!21701) tokens!598))))

(declare-fun b!1917556 () Bool)

(declare-fun res!857210 () Bool)

(assert (=> b!1917556 (=> (not res!857210) (not e!1225203))))

(declare-fun rulesInvariant!3098 (LexerInterface!3491 List!21782) Bool)

(assert (=> b!1917556 (= res!857210 (rulesInvariant!3098 thiss!23328 rules!3198))))

(declare-fun b!1917557 () Bool)

(assert (=> b!1917557 (= e!1225193 (= (rule!6081 (h!27102 tokens!598)) lt!735182))))

(declare-fun b!1917558 () Bool)

(declare-fun get!6808 (Option!4461) tuple2!20414)

(assert (=> b!1917558 (= e!1225194 (= (_1!11676 (get!6808 lt!735178)) (h!27102 tokens!598)))))

(declare-fun b!1917559 () Bool)

(declare-fun res!857201 () Bool)

(assert (=> b!1917559 (=> (not res!857201) (not e!1225203))))

(declare-fun lambda!74833 () Int)

(declare-fun forall!4574 (List!21783 Int) Bool)

(assert (=> b!1917559 (= res!857201 (forall!4574 tokens!598 lambda!74833))))

(declare-fun tp!547299 () Bool)

(declare-fun b!1917560 () Bool)

(assert (=> b!1917560 (= e!1225209 (and tp!547299 (inv!28788 (tag!4318 (h!27101 rules!3198))) (inv!28791 (transformation!3878 (h!27101 rules!3198))) e!1225190))))

(assert (= (and start!192232 res!857208) b!1917536))

(assert (= (and b!1917536 res!857213) b!1917556))

(assert (= (and b!1917556 res!857210) b!1917542))

(assert (= (and b!1917542 res!857199) b!1917550))

(assert (= (and b!1917550 res!857214) b!1917534))

(assert (= (and b!1917534 res!857202) b!1917559))

(assert (= (and b!1917559 res!857201) b!1917540))

(assert (= (and b!1917540 res!857212) b!1917555))

(assert (= (and b!1917555 res!857205) b!1917544))

(assert (= (and b!1917544 res!857211) b!1917538))

(assert (= (and b!1917538 res!857206) b!1917543))

(assert (= (and b!1917544 res!857200) b!1917558))

(assert (= (and b!1917544 res!857204) b!1917554))

(assert (= (and b!1917554 res!857203) b!1917557))

(assert (= (and b!1917544 (not res!857209)) b!1917549))

(assert (= (and b!1917549 (not res!857207)) b!1917551))

(assert (= (and b!1917551 (not res!857198)) b!1917546))

(assert (= b!1917560 b!1917553))

(assert (= b!1917535 b!1917560))

(assert (= (and start!192232 ((_ is Cons!21700) rules!3198)) b!1917535))

(assert (= b!1917552 b!1917541))

(assert (= b!1917548 b!1917552))

(assert (= b!1917547 b!1917548))

(assert (= (and start!192232 ((_ is Cons!21701) tokens!598)) b!1917547))

(assert (= b!1917537 b!1917545))

(assert (= b!1917539 b!1917537))

(assert (= start!192232 b!1917539))

(declare-fun m!2352847 () Bool)

(assert (=> b!1917560 m!2352847))

(declare-fun m!2352849 () Bool)

(assert (=> b!1917560 m!2352849))

(declare-fun m!2352851 () Bool)

(assert (=> b!1917548 m!2352851))

(declare-fun m!2352853 () Bool)

(assert (=> b!1917538 m!2352853))

(declare-fun m!2352855 () Bool)

(assert (=> b!1917538 m!2352855))

(declare-fun m!2352857 () Bool)

(assert (=> start!192232 m!2352857))

(declare-fun m!2352859 () Bool)

(assert (=> b!1917549 m!2352859))

(declare-fun m!2352861 () Bool)

(assert (=> b!1917549 m!2352861))

(declare-fun m!2352863 () Bool)

(assert (=> b!1917549 m!2352863))

(declare-fun m!2352865 () Bool)

(assert (=> b!1917549 m!2352865))

(declare-fun m!2352867 () Bool)

(assert (=> b!1917549 m!2352867))

(declare-fun m!2352869 () Bool)

(assert (=> b!1917539 m!2352869))

(declare-fun m!2352871 () Bool)

(assert (=> b!1917544 m!2352871))

(declare-fun m!2352873 () Bool)

(assert (=> b!1917544 m!2352873))

(declare-fun m!2352875 () Bool)

(assert (=> b!1917544 m!2352875))

(declare-fun m!2352877 () Bool)

(assert (=> b!1917544 m!2352877))

(declare-fun m!2352879 () Bool)

(assert (=> b!1917544 m!2352879))

(declare-fun m!2352881 () Bool)

(assert (=> b!1917544 m!2352881))

(declare-fun m!2352883 () Bool)

(assert (=> b!1917544 m!2352883))

(declare-fun m!2352885 () Bool)

(assert (=> b!1917544 m!2352885))

(assert (=> b!1917544 m!2352883))

(declare-fun m!2352887 () Bool)

(assert (=> b!1917544 m!2352887))

(declare-fun m!2352889 () Bool)

(assert (=> b!1917544 m!2352889))

(assert (=> b!1917544 m!2352881))

(declare-fun m!2352891 () Bool)

(assert (=> b!1917544 m!2352891))

(declare-fun m!2352893 () Bool)

(assert (=> b!1917544 m!2352893))

(declare-fun m!2352895 () Bool)

(assert (=> b!1917544 m!2352895))

(assert (=> b!1917544 m!2352895))

(declare-fun m!2352897 () Bool)

(assert (=> b!1917544 m!2352897))

(declare-fun m!2352899 () Bool)

(assert (=> b!1917544 m!2352899))

(declare-fun m!2352901 () Bool)

(assert (=> b!1917544 m!2352901))

(declare-fun m!2352903 () Bool)

(assert (=> b!1917544 m!2352903))

(assert (=> b!1917544 m!2352891))

(declare-fun m!2352905 () Bool)

(assert (=> b!1917544 m!2352905))

(declare-fun m!2352907 () Bool)

(assert (=> b!1917558 m!2352907))

(declare-fun m!2352909 () Bool)

(assert (=> b!1917546 m!2352909))

(assert (=> b!1917546 m!2352909))

(declare-fun m!2352911 () Bool)

(assert (=> b!1917546 m!2352911))

(declare-fun m!2352913 () Bool)

(assert (=> b!1917546 m!2352913))

(declare-fun m!2352915 () Bool)

(assert (=> b!1917551 m!2352915))

(declare-fun m!2352917 () Bool)

(assert (=> b!1917540 m!2352917))

(declare-fun m!2352919 () Bool)

(assert (=> b!1917552 m!2352919))

(declare-fun m!2352921 () Bool)

(assert (=> b!1917552 m!2352921))

(declare-fun m!2352923 () Bool)

(assert (=> b!1917536 m!2352923))

(declare-fun m!2352925 () Bool)

(assert (=> b!1917554 m!2352925))

(declare-fun m!2352927 () Bool)

(assert (=> b!1917554 m!2352927))

(declare-fun m!2352929 () Bool)

(assert (=> b!1917537 m!2352929))

(declare-fun m!2352931 () Bool)

(assert (=> b!1917537 m!2352931))

(declare-fun m!2352933 () Bool)

(assert (=> b!1917559 m!2352933))

(declare-fun m!2352935 () Bool)

(assert (=> b!1917550 m!2352935))

(declare-fun m!2352937 () Bool)

(assert (=> b!1917547 m!2352937))

(declare-fun m!2352939 () Bool)

(assert (=> b!1917542 m!2352939))

(declare-fun m!2352941 () Bool)

(assert (=> b!1917556 m!2352941))

(check-sat (not b_next!55139) (not b!1917537) (not b!1917549) (not b!1917536) b_and!149639 (not b!1917542) (not b!1917550) (not b!1917539) (not b!1917560) (not b!1917535) b_and!149641 (not b!1917546) (not b!1917559) (not b!1917547) (not b!1917558) b_and!149647 (not b!1917552) b_and!149643 (not b!1917538) (not b!1917556) (not b!1917544) (not start!192232) (not b!1917548) b_and!149645 (not b_next!55143) (not b!1917540) (not b!1917551) (not b_next!55141) b_and!149649 (not b_next!55145) (not b!1917554) (not b_next!55147) (not b_next!55137))
(check-sat (not b_next!55139) b_and!149641 b_and!149647 b_and!149643 b_and!149639 (not b_next!55145) b_and!149645 (not b_next!55143) (not b_next!55141) b_and!149649 (not b_next!55147) (not b_next!55137))
