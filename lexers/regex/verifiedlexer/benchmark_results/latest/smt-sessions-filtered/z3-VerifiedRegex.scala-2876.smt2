; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167954 () Bool)

(assert start!167954)

(declare-fun b!1715761 () Bool)

(declare-fun b_free!46587 () Bool)

(declare-fun b_next!47291 () Bool)

(assert (=> b!1715761 (= b_free!46587 (not b_next!47291))))

(declare-fun tp!490061 () Bool)

(declare-fun b_and!124515 () Bool)

(assert (=> b!1715761 (= tp!490061 b_and!124515)))

(declare-fun b_free!46589 () Bool)

(declare-fun b_next!47293 () Bool)

(assert (=> b!1715761 (= b_free!46589 (not b_next!47293))))

(declare-fun tp!490063 () Bool)

(declare-fun b_and!124517 () Bool)

(assert (=> b!1715761 (= tp!490063 b_and!124517)))

(declare-fun b!1715773 () Bool)

(declare-fun b_free!46591 () Bool)

(declare-fun b_next!47295 () Bool)

(assert (=> b!1715773 (= b_free!46591 (not b_next!47295))))

(declare-fun tp!490055 () Bool)

(declare-fun b_and!124519 () Bool)

(assert (=> b!1715773 (= tp!490055 b_and!124519)))

(declare-fun b_free!46593 () Bool)

(declare-fun b_next!47297 () Bool)

(assert (=> b!1715773 (= b_free!46593 (not b_next!47297))))

(declare-fun tp!490062 () Bool)

(declare-fun b_and!124521 () Bool)

(assert (=> b!1715773 (= tp!490062 b_and!124521)))

(declare-fun b!1715769 () Bool)

(declare-fun b_free!46595 () Bool)

(declare-fun b_next!47299 () Bool)

(assert (=> b!1715769 (= b_free!46595 (not b_next!47299))))

(declare-fun tp!490056 () Bool)

(declare-fun b_and!124523 () Bool)

(assert (=> b!1715769 (= tp!490056 b_and!124523)))

(declare-fun b_free!46597 () Bool)

(declare-fun b_next!47301 () Bool)

(assert (=> b!1715769 (= b_free!46597 (not b_next!47301))))

(declare-fun tp!490064 () Bool)

(declare-fun b_and!124525 () Bool)

(assert (=> b!1715769 (= tp!490064 b_and!124525)))

(declare-fun b!1715796 () Bool)

(declare-fun e!1097239 () Bool)

(assert (=> b!1715796 (= e!1097239 true)))

(declare-fun b!1715795 () Bool)

(declare-fun e!1097238 () Bool)

(assert (=> b!1715795 (= e!1097238 e!1097239)))

(declare-fun b!1715794 () Bool)

(declare-fun e!1097237 () Bool)

(assert (=> b!1715794 (= e!1097237 e!1097238)))

(declare-fun b!1715781 () Bool)

(assert (=> b!1715781 e!1097237))

(assert (= b!1715795 b!1715796))

(assert (= b!1715794 b!1715795))

(assert (= b!1715781 b!1715794))

(declare-datatypes ((List!18810 0))(
  ( (Nil!18740) (Cons!18740 (h!24141 (_ BitVec 16)) (t!158741 List!18810)) )
))
(declare-datatypes ((TokenValue!3403 0))(
  ( (FloatLiteralValue!6806 (text!24266 List!18810)) (TokenValueExt!3402 (__x!12108 Int)) (Broken!17015 (value!104067 List!18810)) (Object!3472) (End!3403) (Def!3403) (Underscore!3403) (Match!3403) (Else!3403) (Error!3403) (Case!3403) (If!3403) (Extends!3403) (Abstract!3403) (Class!3403) (Val!3403) (DelimiterValue!6806 (del!3463 List!18810)) (KeywordValue!3409 (value!104068 List!18810)) (CommentValue!6806 (value!104069 List!18810)) (WhitespaceValue!6806 (value!104070 List!18810)) (IndentationValue!3403 (value!104071 List!18810)) (String!21346) (Int32!3403) (Broken!17016 (value!104072 List!18810)) (Boolean!3404) (Unit!32572) (OperatorValue!3406 (op!3463 List!18810)) (IdentifierValue!6806 (value!104073 List!18810)) (IdentifierValue!6807 (value!104074 List!18810)) (WhitespaceValue!6807 (value!104075 List!18810)) (True!6806) (False!6806) (Broken!17017 (value!104076 List!18810)) (Broken!17018 (value!104077 List!18810)) (True!6807) (RightBrace!3403) (RightBracket!3403) (Colon!3403) (Null!3403) (Comma!3403) (LeftBracket!3403) (False!6807) (LeftBrace!3403) (ImaginaryLiteralValue!3403 (text!24267 List!18810)) (StringLiteralValue!10209 (value!104078 List!18810)) (EOFValue!3403 (value!104079 List!18810)) (IdentValue!3403 (value!104080 List!18810)) (DelimiterValue!6807 (value!104081 List!18810)) (DedentValue!3403 (value!104082 List!18810)) (NewLineValue!3403 (value!104083 List!18810)) (IntegerValue!10209 (value!104084 (_ BitVec 32)) (text!24268 List!18810)) (IntegerValue!10210 (value!104085 Int) (text!24269 List!18810)) (Times!3403) (Or!3403) (Equal!3403) (Minus!3403) (Broken!17019 (value!104086 List!18810)) (And!3403) (Div!3403) (LessEqual!3403) (Mod!3403) (Concat!8044) (Not!3403) (Plus!3403) (SpaceValue!3403 (value!104087 List!18810)) (IntegerValue!10211 (value!104088 Int) (text!24270 List!18810)) (StringLiteralValue!10210 (text!24271 List!18810)) (FloatLiteralValue!6807 (text!24272 List!18810)) (BytesLiteralValue!3403 (value!104089 List!18810)) (CommentValue!6807 (value!104090 List!18810)) (StringLiteralValue!10211 (value!104091 List!18810)) (ErrorTokenValue!3403 (msg!3464 List!18810)) )
))
(declare-datatypes ((String!21347 0))(
  ( (String!21348 (value!104092 String)) )
))
(declare-datatypes ((C!9456 0))(
  ( (C!9457 (val!5324 Int)) )
))
(declare-datatypes ((List!18811 0))(
  ( (Nil!18741) (Cons!18741 (h!24142 C!9456) (t!158742 List!18811)) )
))
(declare-datatypes ((Regex!4641 0))(
  ( (ElementMatch!4641 (c!281072 C!9456)) (Concat!8045 (regOne!9794 Regex!4641) (regTwo!9794 Regex!4641)) (EmptyExpr!4641) (Star!4641 (reg!4970 Regex!4641)) (EmptyLang!4641) (Union!4641 (regOne!9795 Regex!4641) (regTwo!9795 Regex!4641)) )
))
(declare-datatypes ((IArray!12471 0))(
  ( (IArray!12472 (innerList!6293 List!18811)) )
))
(declare-datatypes ((Conc!6233 0))(
  ( (Node!6233 (left!14939 Conc!6233) (right!15269 Conc!6233) (csize!12696 Int) (cheight!6444 Int)) (Leaf!9110 (xs!9109 IArray!12471) (csize!12697 Int)) (Empty!6233) )
))
(declare-datatypes ((BalanceConc!12410 0))(
  ( (BalanceConc!12411 (c!281073 Conc!6233)) )
))
(declare-datatypes ((TokenValueInjection!6466 0))(
  ( (TokenValueInjection!6467 (toValue!4820 Int) (toChars!4679 Int)) )
))
(declare-datatypes ((Rule!6426 0))(
  ( (Rule!6427 (regex!3313 Regex!4641) (tag!3615 String!21347) (isSeparator!3313 Bool) (transformation!3313 TokenValueInjection!6466)) )
))
(declare-datatypes ((Token!6192 0))(
  ( (Token!6193 (value!104093 TokenValue!3403) (rule!5251 Rule!6426) (size!14890 Int) (originalCharacters!4127 List!18811)) )
))
(declare-datatypes ((tuple2!18450 0))(
  ( (tuple2!18451 (_1!10627 Token!6192) (_2!10627 List!18811)) )
))
(declare-fun lt!655485 () tuple2!18450)

(declare-fun order!11317 () Int)

(declare-fun lambda!68972 () Int)

(declare-fun order!11315 () Int)

(declare-fun dynLambda!8544 (Int Int) Int)

(declare-fun dynLambda!8545 (Int Int) Int)

(assert (=> b!1715796 (< (dynLambda!8544 order!11315 (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) (dynLambda!8545 order!11317 lambda!68972))))

(declare-fun order!11319 () Int)

(declare-fun dynLambda!8546 (Int Int) Int)

(assert (=> b!1715796 (< (dynLambda!8546 order!11319 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) (dynLambda!8545 order!11317 lambda!68972))))

(declare-fun e!1097225 () Bool)

(declare-fun tp!490059 () Bool)

(declare-fun rule!422 () Rule!6426)

(declare-fun b!1715759 () Bool)

(declare-fun e!1097228 () Bool)

(declare-fun inv!24168 (String!21347) Bool)

(declare-fun inv!24173 (TokenValueInjection!6466) Bool)

(assert (=> b!1715759 (= e!1097228 (and tp!490059 (inv!24168 (tag!3615 rule!422)) (inv!24173 (transformation!3313 rule!422)) e!1097225))))

(declare-fun b!1715760 () Bool)

(declare-fun res!769327 () Bool)

(declare-fun e!1097213 () Bool)

(assert (=> b!1715760 (=> res!769327 e!1097213)))

(declare-fun suffix!1421 () List!18811)

(declare-fun isEmpty!11781 (List!18811) Bool)

(assert (=> b!1715760 (= res!769327 (isEmpty!11781 suffix!1421))))

(assert (=> b!1715761 (= e!1097225 (and tp!490061 tp!490063))))

(declare-fun e!1097210 () Bool)

(declare-fun b!1715762 () Bool)

(declare-fun token!523 () Token!6192)

(declare-fun e!1097209 () Bool)

(declare-fun tp!490053 () Bool)

(declare-fun inv!21 (TokenValue!3403) Bool)

(assert (=> b!1715762 (= e!1097209 (and (inv!21 (value!104093 token!523)) e!1097210 tp!490053))))

(declare-fun b!1715763 () Bool)

(declare-fun e!1097230 () Bool)

(declare-fun e!1097216 () Bool)

(assert (=> b!1715763 (= e!1097230 e!1097216)))

(declare-fun res!769333 () Bool)

(assert (=> b!1715763 (=> (not res!769333) (not e!1097216))))

(declare-datatypes ((Option!3650 0))(
  ( (None!3649) (Some!3649 (v!25044 tuple2!18450)) )
))
(declare-fun lt!655484 () Option!3650)

(declare-fun isDefined!2993 (Option!3650) Bool)

(assert (=> b!1715763 (= res!769333 (isDefined!2993 lt!655484))))

(declare-datatypes ((List!18812 0))(
  ( (Nil!18742) (Cons!18742 (h!24143 Rule!6426) (t!158743 List!18812)) )
))
(declare-fun rules!3447 () List!18812)

(declare-fun lt!655501 () List!18811)

(declare-datatypes ((LexerInterface!2942 0))(
  ( (LexerInterfaceExt!2939 (__x!12109 Int)) (Lexer!2940) )
))
(declare-fun thiss!24550 () LexerInterface!2942)

(declare-fun maxPrefix!1496 (LexerInterface!2942 List!18812 List!18811) Option!3650)

(assert (=> b!1715763 (= lt!655484 (maxPrefix!1496 thiss!24550 rules!3447 lt!655501))))

(declare-fun list!7570 (BalanceConc!12410) List!18811)

(declare-fun charsOf!1962 (Token!6192) BalanceConc!12410)

(assert (=> b!1715763 (= lt!655501 (list!7570 (charsOf!1962 token!523)))))

(declare-fun b!1715764 () Bool)

(declare-fun res!769331 () Bool)

(assert (=> b!1715764 (=> (not res!769331) (not e!1097230))))

(declare-fun rulesInvariant!2611 (LexerInterface!2942 List!18812) Bool)

(assert (=> b!1715764 (= res!769331 (rulesInvariant!2611 thiss!24550 rules!3447))))

(declare-fun e!1097227 () Bool)

(declare-fun tp!490054 () Bool)

(declare-fun b!1715765 () Bool)

(assert (=> b!1715765 (= e!1097210 (and tp!490054 (inv!24168 (tag!3615 (rule!5251 token!523))) (inv!24173 (transformation!3313 (rule!5251 token!523))) e!1097227))))

(declare-fun b!1715766 () Bool)

(declare-fun e!1097211 () Bool)

(assert (=> b!1715766 (= e!1097211 true)))

(declare-fun lt!655496 () Bool)

(declare-fun rulesValidInductive!1096 (LexerInterface!2942 List!18812) Bool)

(assert (=> b!1715766 (= lt!655496 (rulesValidInductive!1096 thiss!24550 rules!3447))))

(declare-datatypes ((Unit!32573 0))(
  ( (Unit!32574) )
))
(declare-fun lt!655497 () Unit!32573)

(declare-fun lemmaCharactersSize!385 (Token!6192) Unit!32573)

(assert (=> b!1715766 (= lt!655497 (lemmaCharactersSize!385 (_1!10627 lt!655485)))))

(declare-fun lt!655498 () Unit!32573)

(declare-fun lt!655502 () BalanceConc!12410)

(declare-fun lemmaEqSameImage!238 (TokenValueInjection!6466 BalanceConc!12410 BalanceConc!12410) Unit!32573)

(declare-fun seqFromList!2287 (List!18811) BalanceConc!12410)

(assert (=> b!1715766 (= lt!655498 (lemmaEqSameImage!238 (transformation!3313 (rule!5251 (_1!10627 lt!655485))) lt!655502 (seqFromList!2287 (originalCharacters!4127 (_1!10627 lt!655485)))))))

(declare-fun b!1715767 () Bool)

(declare-fun e!1097229 () Bool)

(declare-fun e!1097226 () Bool)

(assert (=> b!1715767 (= e!1097229 e!1097226)))

(declare-fun res!769334 () Bool)

(assert (=> b!1715767 (=> (not res!769334) (not e!1097226))))

(declare-fun lt!655486 () Rule!6426)

(declare-fun matchR!2115 (Regex!4641 List!18811) Bool)

(assert (=> b!1715767 (= res!769334 (matchR!2115 (regex!3313 lt!655486) (list!7570 (charsOf!1962 (_1!10627 lt!655485)))))))

(declare-datatypes ((Option!3651 0))(
  ( (None!3650) (Some!3650 (v!25045 Rule!6426)) )
))
(declare-fun lt!655489 () Option!3651)

(declare-fun get!5524 (Option!3651) Rule!6426)

(assert (=> b!1715767 (= lt!655486 (get!5524 lt!655489))))

(declare-fun b!1715768 () Bool)

(declare-fun e!1097220 () Bool)

(declare-fun tp!490057 () Bool)

(declare-fun e!1097222 () Bool)

(assert (=> b!1715768 (= e!1097220 (and tp!490057 (inv!24168 (tag!3615 (h!24143 rules!3447))) (inv!24173 (transformation!3313 (h!24143 rules!3447))) e!1097222))))

(assert (=> b!1715769 (= e!1097227 (and tp!490056 tp!490064))))

(declare-fun b!1715770 () Bool)

(assert (=> b!1715770 (= e!1097226 (= (rule!5251 (_1!10627 lt!655485)) lt!655486))))

(declare-fun b!1715771 () Bool)

(declare-fun e!1097221 () Bool)

(assert (=> b!1715771 (= e!1097216 e!1097221)))

(declare-fun res!769341 () Bool)

(assert (=> b!1715771 (=> (not res!769341) (not e!1097221))))

(declare-fun lt!655493 () tuple2!18450)

(assert (=> b!1715771 (= res!769341 (= (_1!10627 lt!655493) token!523))))

(declare-fun get!5525 (Option!3650) tuple2!18450)

(assert (=> b!1715771 (= lt!655493 (get!5525 lt!655484))))

(declare-fun b!1715772 () Bool)

(declare-fun e!1097217 () Bool)

(declare-fun tp_is_empty!7525 () Bool)

(declare-fun tp!490060 () Bool)

(assert (=> b!1715772 (= e!1097217 (and tp_is_empty!7525 tp!490060))))

(assert (=> b!1715773 (= e!1097222 (and tp!490055 tp!490062))))

(declare-fun b!1715774 () Bool)

(declare-fun e!1097212 () Bool)

(declare-fun tp!490058 () Bool)

(assert (=> b!1715774 (= e!1097212 (and e!1097220 tp!490058))))

(declare-fun b!1715775 () Bool)

(declare-fun res!769330 () Bool)

(assert (=> b!1715775 (=> (not res!769330) (not e!1097230))))

(declare-fun isEmpty!11782 (List!18812) Bool)

(assert (=> b!1715775 (= res!769330 (not (isEmpty!11782 rules!3447)))))

(declare-fun b!1715776 () Bool)

(declare-fun res!769332 () Bool)

(assert (=> b!1715776 (=> res!769332 e!1097213)))

(declare-fun prefixMatch!526 (Regex!4641 List!18811) Bool)

(declare-fun rulesRegex!671 (LexerInterface!2942 List!18812) Regex!4641)

(declare-fun ++!5138 (List!18811 List!18811) List!18811)

(declare-fun head!3858 (List!18811) C!9456)

(assert (=> b!1715776 (= res!769332 (prefixMatch!526 (rulesRegex!671 thiss!24550 rules!3447) (++!5138 lt!655501 (Cons!18741 (head!3858 suffix!1421) Nil!18741))))))

(declare-fun b!1715777 () Bool)

(declare-fun e!1097214 () Bool)

(assert (=> b!1715777 (= e!1097214 e!1097211)))

(declare-fun res!769342 () Bool)

(assert (=> b!1715777 (=> res!769342 e!1097211)))

(declare-fun lt!655499 () List!18811)

(declare-fun dynLambda!8547 (Int TokenValue!3403) BalanceConc!12410)

(declare-fun dynLambda!8548 (Int BalanceConc!12410) TokenValue!3403)

(assert (=> b!1715777 (= res!769342 (not (= (list!7570 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (dynLambda!8548 (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) lt!655502))) lt!655499)))))

(declare-fun lt!655491 () Unit!32573)

(declare-fun lemmaSemiInverse!459 (TokenValueInjection!6466 BalanceConc!12410) Unit!32573)

(assert (=> b!1715777 (= lt!655491 (lemmaSemiInverse!459 (transformation!3313 (rule!5251 (_1!10627 lt!655485))) lt!655502))))

(declare-fun res!769344 () Bool)

(assert (=> start!167954 (=> (not res!769344) (not e!1097230))))

(get-info :version)

(assert (=> start!167954 (= res!769344 ((_ is Lexer!2940) thiss!24550))))

(assert (=> start!167954 e!1097230))

(assert (=> start!167954 e!1097217))

(assert (=> start!167954 e!1097228))

(assert (=> start!167954 true))

(declare-fun inv!24174 (Token!6192) Bool)

(assert (=> start!167954 (and (inv!24174 token!523) e!1097209)))

(assert (=> start!167954 e!1097212))

(declare-fun b!1715778 () Bool)

(declare-fun res!769336 () Bool)

(assert (=> b!1715778 (=> (not res!769336) (not e!1097221))))

(assert (=> b!1715778 (= res!769336 (isEmpty!11781 (_2!10627 lt!655493)))))

(declare-fun b!1715779 () Bool)

(assert (=> b!1715779 (= e!1097221 (not e!1097213))))

(declare-fun res!769335 () Bool)

(assert (=> b!1715779 (=> res!769335 e!1097213)))

(assert (=> b!1715779 (= res!769335 (not (matchR!2115 (regex!3313 rule!422) lt!655501)))))

(declare-fun ruleValid!812 (LexerInterface!2942 Rule!6426) Bool)

(assert (=> b!1715779 (ruleValid!812 thiss!24550 rule!422)))

(declare-fun lt!655494 () Unit!32573)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!336 (LexerInterface!2942 Rule!6426 List!18812) Unit!32573)

(assert (=> b!1715779 (= lt!655494 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!336 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1715780 () Bool)

(declare-fun res!769328 () Bool)

(declare-fun e!1097224 () Bool)

(assert (=> b!1715780 (=> res!769328 e!1097224)))

(assert (=> b!1715780 (= res!769328 (not (matchR!2115 (regex!3313 (rule!5251 (_1!10627 lt!655485))) lt!655499)))))

(assert (=> b!1715781 (= e!1097224 e!1097214)))

(declare-fun res!769340 () Bool)

(assert (=> b!1715781 (=> res!769340 e!1097214)))

(declare-fun Forall!688 (Int) Bool)

(assert (=> b!1715781 (= res!769340 (not (Forall!688 lambda!68972)))))

(declare-fun lt!655490 () Unit!32573)

(declare-fun lemmaInv!520 (TokenValueInjection!6466) Unit!32573)

(assert (=> b!1715781 (= lt!655490 (lemmaInv!520 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))))))

(declare-fun b!1715782 () Bool)

(declare-fun res!769339 () Bool)

(assert (=> b!1715782 (=> (not res!769339) (not e!1097221))))

(assert (=> b!1715782 (= res!769339 (= (rule!5251 token!523) rule!422))))

(declare-fun b!1715783 () Bool)

(assert (=> b!1715783 (= e!1097213 e!1097224)))

(declare-fun res!769337 () Bool)

(assert (=> b!1715783 (=> res!769337 e!1097224)))

(declare-fun lt!655495 () List!18811)

(declare-fun isPrefix!1554 (List!18811 List!18811) Bool)

(assert (=> b!1715783 (= res!769337 (not (isPrefix!1554 lt!655499 lt!655495)))))

(assert (=> b!1715783 (isPrefix!1554 lt!655499 (++!5138 lt!655499 (_2!10627 lt!655485)))))

(declare-fun lt!655483 () Unit!32573)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1064 (List!18811 List!18811) Unit!32573)

(assert (=> b!1715783 (= lt!655483 (lemmaConcatTwoListThenFirstIsPrefix!1064 lt!655499 (_2!10627 lt!655485)))))

(assert (=> b!1715783 (= lt!655499 (list!7570 lt!655502))))

(assert (=> b!1715783 (= lt!655502 (charsOf!1962 (_1!10627 lt!655485)))))

(assert (=> b!1715783 e!1097229))

(declare-fun res!769329 () Bool)

(assert (=> b!1715783 (=> (not res!769329) (not e!1097229))))

(declare-fun isDefined!2994 (Option!3651) Bool)

(assert (=> b!1715783 (= res!769329 (isDefined!2994 lt!655489))))

(declare-fun getRuleFromTag!363 (LexerInterface!2942 List!18812 String!21347) Option!3651)

(assert (=> b!1715783 (= lt!655489 (getRuleFromTag!363 thiss!24550 rules!3447 (tag!3615 (rule!5251 (_1!10627 lt!655485)))))))

(declare-fun lt!655500 () Unit!32573)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!363 (LexerInterface!2942 List!18812 List!18811 Token!6192) Unit!32573)

(assert (=> b!1715783 (= lt!655500 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!363 thiss!24550 rules!3447 lt!655495 (_1!10627 lt!655485)))))

(declare-fun lt!655487 () Option!3650)

(assert (=> b!1715783 (= lt!655485 (get!5525 lt!655487))))

(declare-fun lt!655492 () Unit!32573)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!466 (LexerInterface!2942 List!18812 List!18811 List!18811) Unit!32573)

(assert (=> b!1715783 (= lt!655492 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!466 thiss!24550 rules!3447 lt!655501 suffix!1421))))

(assert (=> b!1715783 (= lt!655487 (maxPrefix!1496 thiss!24550 rules!3447 lt!655495))))

(assert (=> b!1715783 (isPrefix!1554 lt!655501 lt!655495)))

(declare-fun lt!655488 () Unit!32573)

(assert (=> b!1715783 (= lt!655488 (lemmaConcatTwoListThenFirstIsPrefix!1064 lt!655501 suffix!1421))))

(assert (=> b!1715783 (= lt!655495 (++!5138 lt!655501 suffix!1421))))

(declare-fun b!1715784 () Bool)

(declare-fun res!769338 () Bool)

(assert (=> b!1715784 (=> res!769338 e!1097211)))

(assert (=> b!1715784 (= res!769338 (not (= lt!655502 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (value!104093 (_1!10627 lt!655485))))))))

(declare-fun b!1715785 () Bool)

(declare-fun res!769343 () Bool)

(assert (=> b!1715785 (=> (not res!769343) (not e!1097230))))

(declare-fun contains!3335 (List!18812 Rule!6426) Bool)

(assert (=> b!1715785 (= res!769343 (contains!3335 rules!3447 rule!422))))

(assert (= (and start!167954 res!769344) b!1715775))

(assert (= (and b!1715775 res!769330) b!1715764))

(assert (= (and b!1715764 res!769331) b!1715785))

(assert (= (and b!1715785 res!769343) b!1715763))

(assert (= (and b!1715763 res!769333) b!1715771))

(assert (= (and b!1715771 res!769341) b!1715778))

(assert (= (and b!1715778 res!769336) b!1715782))

(assert (= (and b!1715782 res!769339) b!1715779))

(assert (= (and b!1715779 (not res!769335)) b!1715760))

(assert (= (and b!1715760 (not res!769327)) b!1715776))

(assert (= (and b!1715776 (not res!769332)) b!1715783))

(assert (= (and b!1715783 res!769329) b!1715767))

(assert (= (and b!1715767 res!769334) b!1715770))

(assert (= (and b!1715783 (not res!769337)) b!1715780))

(assert (= (and b!1715780 (not res!769328)) b!1715781))

(assert (= (and b!1715781 (not res!769340)) b!1715777))

(assert (= (and b!1715777 (not res!769342)) b!1715784))

(assert (= (and b!1715784 (not res!769338)) b!1715766))

(assert (= (and start!167954 ((_ is Cons!18741) suffix!1421)) b!1715772))

(assert (= b!1715759 b!1715761))

(assert (= start!167954 b!1715759))

(assert (= b!1715765 b!1715769))

(assert (= b!1715762 b!1715765))

(assert (= start!167954 b!1715762))

(assert (= b!1715768 b!1715773))

(assert (= b!1715774 b!1715768))

(assert (= (and start!167954 ((_ is Cons!18742) rules!3447)) b!1715774))

(declare-fun b_lambda!54211 () Bool)

(assert (=> (not b_lambda!54211) (not b!1715777)))

(declare-fun tb!101349 () Bool)

(declare-fun t!158724 () Bool)

(assert (=> (and b!1715761 (= (toChars!4679 (transformation!3313 rule!422)) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158724) tb!101349))

(declare-fun b!1715801 () Bool)

(declare-fun e!1097242 () Bool)

(declare-fun tp!490067 () Bool)

(declare-fun inv!24175 (Conc!6233) Bool)

(assert (=> b!1715801 (= e!1097242 (and (inv!24175 (c!281073 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (dynLambda!8548 (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) lt!655502)))) tp!490067))))

(declare-fun result!121792 () Bool)

(declare-fun inv!24176 (BalanceConc!12410) Bool)

(assert (=> tb!101349 (= result!121792 (and (inv!24176 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (dynLambda!8548 (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) lt!655502))) e!1097242))))

(assert (= tb!101349 b!1715801))

(declare-fun m!2120041 () Bool)

(assert (=> b!1715801 m!2120041))

(declare-fun m!2120043 () Bool)

(assert (=> tb!101349 m!2120043))

(assert (=> b!1715777 t!158724))

(declare-fun b_and!124527 () Bool)

(assert (= b_and!124517 (and (=> t!158724 result!121792) b_and!124527)))

(declare-fun tb!101351 () Bool)

(declare-fun t!158726 () Bool)

(assert (=> (and b!1715773 (= (toChars!4679 (transformation!3313 (h!24143 rules!3447))) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158726) tb!101351))

(declare-fun result!121796 () Bool)

(assert (= result!121796 result!121792))

(assert (=> b!1715777 t!158726))

(declare-fun b_and!124529 () Bool)

(assert (= b_and!124521 (and (=> t!158726 result!121796) b_and!124529)))

(declare-fun t!158728 () Bool)

(declare-fun tb!101353 () Bool)

(assert (=> (and b!1715769 (= (toChars!4679 (transformation!3313 (rule!5251 token!523))) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158728) tb!101353))

(declare-fun result!121798 () Bool)

(assert (= result!121798 result!121792))

(assert (=> b!1715777 t!158728))

(declare-fun b_and!124531 () Bool)

(assert (= b_and!124525 (and (=> t!158728 result!121798) b_and!124531)))

(declare-fun b_lambda!54213 () Bool)

(assert (=> (not b_lambda!54213) (not b!1715777)))

(declare-fun tb!101355 () Bool)

(declare-fun t!158730 () Bool)

(assert (=> (and b!1715761 (= (toValue!4820 (transformation!3313 rule!422)) (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158730) tb!101355))

(declare-fun result!121800 () Bool)

(assert (=> tb!101355 (= result!121800 (inv!21 (dynLambda!8548 (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) lt!655502)))))

(declare-fun m!2120045 () Bool)

(assert (=> tb!101355 m!2120045))

(assert (=> b!1715777 t!158730))

(declare-fun b_and!124533 () Bool)

(assert (= b_and!124515 (and (=> t!158730 result!121800) b_and!124533)))

(declare-fun t!158732 () Bool)

(declare-fun tb!101357 () Bool)

(assert (=> (and b!1715773 (= (toValue!4820 (transformation!3313 (h!24143 rules!3447))) (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158732) tb!101357))

(declare-fun result!121804 () Bool)

(assert (= result!121804 result!121800))

(assert (=> b!1715777 t!158732))

(declare-fun b_and!124535 () Bool)

(assert (= b_and!124519 (and (=> t!158732 result!121804) b_and!124535)))

(declare-fun t!158734 () Bool)

(declare-fun tb!101359 () Bool)

(assert (=> (and b!1715769 (= (toValue!4820 (transformation!3313 (rule!5251 token!523))) (toValue!4820 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158734) tb!101359))

(declare-fun result!121806 () Bool)

(assert (= result!121806 result!121800))

(assert (=> b!1715777 t!158734))

(declare-fun b_and!124537 () Bool)

(assert (= b_and!124523 (and (=> t!158734 result!121806) b_and!124537)))

(declare-fun b_lambda!54215 () Bool)

(assert (=> (not b_lambda!54215) (not b!1715784)))

(declare-fun tb!101361 () Bool)

(declare-fun t!158736 () Bool)

(assert (=> (and b!1715761 (= (toChars!4679 (transformation!3313 rule!422)) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158736) tb!101361))

(declare-fun b!1715804 () Bool)

(declare-fun e!1097246 () Bool)

(declare-fun tp!490068 () Bool)

(assert (=> b!1715804 (= e!1097246 (and (inv!24175 (c!281073 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (value!104093 (_1!10627 lt!655485))))) tp!490068))))

(declare-fun result!121808 () Bool)

(assert (=> tb!101361 (= result!121808 (and (inv!24176 (dynLambda!8547 (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485)))) (value!104093 (_1!10627 lt!655485)))) e!1097246))))

(assert (= tb!101361 b!1715804))

(declare-fun m!2120047 () Bool)

(assert (=> b!1715804 m!2120047))

(declare-fun m!2120049 () Bool)

(assert (=> tb!101361 m!2120049))

(assert (=> b!1715784 t!158736))

(declare-fun b_and!124539 () Bool)

(assert (= b_and!124527 (and (=> t!158736 result!121808) b_and!124539)))

(declare-fun tb!101363 () Bool)

(declare-fun t!158738 () Bool)

(assert (=> (and b!1715773 (= (toChars!4679 (transformation!3313 (h!24143 rules!3447))) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158738) tb!101363))

(declare-fun result!121810 () Bool)

(assert (= result!121810 result!121808))

(assert (=> b!1715784 t!158738))

(declare-fun b_and!124541 () Bool)

(assert (= b_and!124529 (and (=> t!158738 result!121810) b_and!124541)))

(declare-fun t!158740 () Bool)

(declare-fun tb!101365 () Bool)

(assert (=> (and b!1715769 (= (toChars!4679 (transformation!3313 (rule!5251 token!523))) (toChars!4679 (transformation!3313 (rule!5251 (_1!10627 lt!655485))))) t!158740) tb!101365))

(declare-fun result!121812 () Bool)

(assert (= result!121812 result!121808))

(assert (=> b!1715784 t!158740))

(declare-fun b_and!124543 () Bool)

(assert (= b_and!124531 (and (=> t!158740 result!121812) b_and!124543)))

(declare-fun m!2120051 () Bool)

(assert (=> b!1715785 m!2120051))

(declare-fun m!2120053 () Bool)

(assert (=> b!1715765 m!2120053))

(declare-fun m!2120055 () Bool)

(assert (=> b!1715765 m!2120055))

(declare-fun m!2120057 () Bool)

(assert (=> b!1715779 m!2120057))

(declare-fun m!2120059 () Bool)

(assert (=> b!1715779 m!2120059))

(declare-fun m!2120061 () Bool)

(assert (=> b!1715779 m!2120061))

(declare-fun m!2120063 () Bool)

(assert (=> b!1715771 m!2120063))

(declare-fun m!2120065 () Bool)

(assert (=> b!1715768 m!2120065))

(declare-fun m!2120067 () Bool)

(assert (=> b!1715768 m!2120067))

(declare-fun m!2120069 () Bool)

(assert (=> b!1715777 m!2120069))

(assert (=> b!1715777 m!2120069))

(declare-fun m!2120071 () Bool)

(assert (=> b!1715777 m!2120071))

(assert (=> b!1715777 m!2120071))

(declare-fun m!2120073 () Bool)

(assert (=> b!1715777 m!2120073))

(declare-fun m!2120075 () Bool)

(assert (=> b!1715777 m!2120075))

(declare-fun m!2120077 () Bool)

(assert (=> b!1715764 m!2120077))

(declare-fun m!2120079 () Bool)

(assert (=> start!167954 m!2120079))

(declare-fun m!2120081 () Bool)

(assert (=> b!1715784 m!2120081))

(declare-fun m!2120083 () Bool)

(assert (=> b!1715766 m!2120083))

(declare-fun m!2120085 () Bool)

(assert (=> b!1715766 m!2120085))

(declare-fun m!2120087 () Bool)

(assert (=> b!1715766 m!2120087))

(assert (=> b!1715766 m!2120087))

(declare-fun m!2120089 () Bool)

(assert (=> b!1715766 m!2120089))

(declare-fun m!2120091 () Bool)

(assert (=> b!1715781 m!2120091))

(declare-fun m!2120093 () Bool)

(assert (=> b!1715781 m!2120093))

(declare-fun m!2120095 () Bool)

(assert (=> b!1715783 m!2120095))

(declare-fun m!2120097 () Bool)

(assert (=> b!1715783 m!2120097))

(assert (=> b!1715783 m!2120095))

(declare-fun m!2120099 () Bool)

(assert (=> b!1715783 m!2120099))

(declare-fun m!2120101 () Bool)

(assert (=> b!1715783 m!2120101))

(declare-fun m!2120103 () Bool)

(assert (=> b!1715783 m!2120103))

(declare-fun m!2120105 () Bool)

(assert (=> b!1715783 m!2120105))

(declare-fun m!2120107 () Bool)

(assert (=> b!1715783 m!2120107))

(declare-fun m!2120109 () Bool)

(assert (=> b!1715783 m!2120109))

(declare-fun m!2120111 () Bool)

(assert (=> b!1715783 m!2120111))

(declare-fun m!2120113 () Bool)

(assert (=> b!1715783 m!2120113))

(declare-fun m!2120115 () Bool)

(assert (=> b!1715783 m!2120115))

(declare-fun m!2120117 () Bool)

(assert (=> b!1715783 m!2120117))

(declare-fun m!2120119 () Bool)

(assert (=> b!1715783 m!2120119))

(declare-fun m!2120121 () Bool)

(assert (=> b!1715783 m!2120121))

(declare-fun m!2120123 () Bool)

(assert (=> b!1715783 m!2120123))

(declare-fun m!2120125 () Bool)

(assert (=> b!1715763 m!2120125))

(declare-fun m!2120127 () Bool)

(assert (=> b!1715763 m!2120127))

(declare-fun m!2120129 () Bool)

(assert (=> b!1715763 m!2120129))

(assert (=> b!1715763 m!2120129))

(declare-fun m!2120131 () Bool)

(assert (=> b!1715763 m!2120131))

(declare-fun m!2120133 () Bool)

(assert (=> b!1715776 m!2120133))

(declare-fun m!2120135 () Bool)

(assert (=> b!1715776 m!2120135))

(declare-fun m!2120137 () Bool)

(assert (=> b!1715776 m!2120137))

(assert (=> b!1715776 m!2120133))

(assert (=> b!1715776 m!2120137))

(declare-fun m!2120139 () Bool)

(assert (=> b!1715776 m!2120139))

(assert (=> b!1715767 m!2120103))

(assert (=> b!1715767 m!2120103))

(declare-fun m!2120141 () Bool)

(assert (=> b!1715767 m!2120141))

(assert (=> b!1715767 m!2120141))

(declare-fun m!2120143 () Bool)

(assert (=> b!1715767 m!2120143))

(declare-fun m!2120145 () Bool)

(assert (=> b!1715767 m!2120145))

(declare-fun m!2120147 () Bool)

(assert (=> b!1715760 m!2120147))

(declare-fun m!2120149 () Bool)

(assert (=> b!1715775 m!2120149))

(declare-fun m!2120151 () Bool)

(assert (=> b!1715778 m!2120151))

(declare-fun m!2120153 () Bool)

(assert (=> b!1715780 m!2120153))

(declare-fun m!2120155 () Bool)

(assert (=> b!1715762 m!2120155))

(declare-fun m!2120157 () Bool)

(assert (=> b!1715759 m!2120157))

(declare-fun m!2120159 () Bool)

(assert (=> b!1715759 m!2120159))

(check-sat (not start!167954) (not b!1715763) (not b!1715776) (not b_lambda!54211) b_and!124533 (not b!1715760) (not b!1715771) (not tb!101361) b_and!124535 (not b_next!47295) (not b!1715766) (not b_next!47301) (not b!1715780) (not b!1715765) tp_is_empty!7525 (not b!1715764) (not tb!101355) b_and!124541 (not b!1715783) b_and!124539 (not b!1715768) (not b!1715777) (not b!1715804) (not b!1715785) (not b!1715779) (not b_lambda!54215) (not b!1715759) (not b_next!47299) (not b!1715775) (not b_lambda!54213) (not b!1715801) (not tb!101349) (not b!1715774) (not b_next!47293) (not b!1715762) (not b!1715778) (not b!1715781) (not b_next!47291) (not b!1715767) b_and!124543 (not b!1715772) b_and!124537 (not b_next!47297))
(check-sat (not b_next!47295) (not b_next!47301) b_and!124541 b_and!124539 (not b_next!47299) b_and!124533 (not b_next!47293) b_and!124535 (not b_next!47291) b_and!124543 b_and!124537 (not b_next!47297))
