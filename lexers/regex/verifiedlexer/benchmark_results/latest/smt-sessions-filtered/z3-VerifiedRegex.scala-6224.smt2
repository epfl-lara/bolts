; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302166 () Bool)

(assert start!302166)

(declare-fun b!3216483 () Bool)

(declare-fun b_free!85513 () Bool)

(declare-fun b_next!86217 () Bool)

(assert (=> b!3216483 (= b_free!85513 (not b_next!86217))))

(declare-fun tp!1014135 () Bool)

(declare-fun b_and!214751 () Bool)

(assert (=> b!3216483 (= tp!1014135 b_and!214751)))

(declare-fun b_free!85515 () Bool)

(declare-fun b_next!86219 () Bool)

(assert (=> b!3216483 (= b_free!85515 (not b_next!86219))))

(declare-fun tp!1014131 () Bool)

(declare-fun b_and!214753 () Bool)

(assert (=> b!3216483 (= tp!1014131 b_and!214753)))

(declare-fun b!3216509 () Bool)

(declare-fun b_free!85517 () Bool)

(declare-fun b_next!86221 () Bool)

(assert (=> b!3216509 (= b_free!85517 (not b_next!86221))))

(declare-fun tp!1014137 () Bool)

(declare-fun b_and!214755 () Bool)

(assert (=> b!3216509 (= tp!1014137 b_and!214755)))

(declare-fun b_free!85519 () Bool)

(declare-fun b_next!86223 () Bool)

(assert (=> b!3216509 (= b_free!85519 (not b_next!86223))))

(declare-fun tp!1014128 () Bool)

(declare-fun b_and!214757 () Bool)

(assert (=> b!3216509 (= tp!1014128 b_and!214757)))

(declare-fun b!3216513 () Bool)

(declare-fun b_free!85521 () Bool)

(declare-fun b_next!86225 () Bool)

(assert (=> b!3216513 (= b_free!85521 (not b_next!86225))))

(declare-fun tp!1014138 () Bool)

(declare-fun b_and!214759 () Bool)

(assert (=> b!3216513 (= tp!1014138 b_and!214759)))

(declare-fun b_free!85523 () Bool)

(declare-fun b_next!86227 () Bool)

(assert (=> b!3216513 (= b_free!85523 (not b_next!86227))))

(declare-fun tp!1014130 () Bool)

(declare-fun b_and!214761 () Bool)

(assert (=> b!3216513 (= tp!1014130 b_and!214761)))

(declare-fun bs!542233 () Bool)

(declare-fun b!3216501 () Bool)

(declare-fun b!3216499 () Bool)

(assert (= bs!542233 (and b!3216501 b!3216499)))

(declare-fun lambda!117631 () Int)

(declare-fun lambda!117630 () Int)

(assert (=> bs!542233 (not (= lambda!117631 lambda!117630))))

(declare-fun b!3216526 () Bool)

(declare-fun e!2005514 () Bool)

(assert (=> b!3216526 (= e!2005514 true)))

(declare-fun b!3216525 () Bool)

(declare-fun e!2005513 () Bool)

(assert (=> b!3216525 (= e!2005513 e!2005514)))

(declare-fun b!3216524 () Bool)

(declare-fun e!2005512 () Bool)

(assert (=> b!3216524 (= e!2005512 e!2005513)))

(assert (=> b!3216501 e!2005512))

(assert (= b!3216525 b!3216526))

(assert (= b!3216524 b!3216525))

(declare-datatypes ((C!20160 0))(
  ( (C!20161 (val!12128 Int)) )
))
(declare-datatypes ((Regex!9987 0))(
  ( (ElementMatch!9987 (c!540696 C!20160)) (Concat!15445 (regOne!20486 Regex!9987) (regTwo!20486 Regex!9987)) (EmptyExpr!9987) (Star!9987 (reg!10316 Regex!9987)) (EmptyLang!9987) (Union!9987 (regOne!20487 Regex!9987) (regTwo!20487 Regex!9987)) )
))
(declare-datatypes ((List!36320 0))(
  ( (Nil!36196) (Cons!36196 (h!41616 (_ BitVec 16)) (t!239799 List!36320)) )
))
(declare-datatypes ((TokenValue!5458 0))(
  ( (FloatLiteralValue!10916 (text!38651 List!36320)) (TokenValueExt!5457 (__x!23133 Int)) (Broken!27290 (value!169432 List!36320)) (Object!5581) (End!5458) (Def!5458) (Underscore!5458) (Match!5458) (Else!5458) (Error!5458) (Case!5458) (If!5458) (Extends!5458) (Abstract!5458) (Class!5458) (Val!5458) (DelimiterValue!10916 (del!5518 List!36320)) (KeywordValue!5464 (value!169433 List!36320)) (CommentValue!10916 (value!169434 List!36320)) (WhitespaceValue!10916 (value!169435 List!36320)) (IndentationValue!5458 (value!169436 List!36320)) (String!40623) (Int32!5458) (Broken!27291 (value!169437 List!36320)) (Boolean!5459) (Unit!50709) (OperatorValue!5461 (op!5518 List!36320)) (IdentifierValue!10916 (value!169438 List!36320)) (IdentifierValue!10917 (value!169439 List!36320)) (WhitespaceValue!10917 (value!169440 List!36320)) (True!10916) (False!10916) (Broken!27292 (value!169441 List!36320)) (Broken!27293 (value!169442 List!36320)) (True!10917) (RightBrace!5458) (RightBracket!5458) (Colon!5458) (Null!5458) (Comma!5458) (LeftBracket!5458) (False!10917) (LeftBrace!5458) (ImaginaryLiteralValue!5458 (text!38652 List!36320)) (StringLiteralValue!16374 (value!169443 List!36320)) (EOFValue!5458 (value!169444 List!36320)) (IdentValue!5458 (value!169445 List!36320)) (DelimiterValue!10917 (value!169446 List!36320)) (DedentValue!5458 (value!169447 List!36320)) (NewLineValue!5458 (value!169448 List!36320)) (IntegerValue!16374 (value!169449 (_ BitVec 32)) (text!38653 List!36320)) (IntegerValue!16375 (value!169450 Int) (text!38654 List!36320)) (Times!5458) (Or!5458) (Equal!5458) (Minus!5458) (Broken!27294 (value!169451 List!36320)) (And!5458) (Div!5458) (LessEqual!5458) (Mod!5458) (Concat!15446) (Not!5458) (Plus!5458) (SpaceValue!5458 (value!169452 List!36320)) (IntegerValue!16376 (value!169453 Int) (text!38655 List!36320)) (StringLiteralValue!16375 (text!38656 List!36320)) (FloatLiteralValue!10917 (text!38657 List!36320)) (BytesLiteralValue!5458 (value!169454 List!36320)) (CommentValue!10917 (value!169455 List!36320)) (StringLiteralValue!16376 (value!169456 List!36320)) (ErrorTokenValue!5458 (msg!5519 List!36320)) )
))
(declare-datatypes ((List!36321 0))(
  ( (Nil!36197) (Cons!36197 (h!41617 C!20160) (t!239800 List!36321)) )
))
(declare-datatypes ((IArray!21667 0))(
  ( (IArray!21668 (innerList!10891 List!36321)) )
))
(declare-datatypes ((Conc!10831 0))(
  ( (Node!10831 (left!28151 Conc!10831) (right!28481 Conc!10831) (csize!21892 Int) (cheight!11042 Int)) (Leaf!17056 (xs!13949 IArray!21667) (csize!21893 Int)) (Empty!10831) )
))
(declare-datatypes ((BalanceConc!21276 0))(
  ( (BalanceConc!21277 (c!540697 Conc!10831)) )
))
(declare-datatypes ((String!40624 0))(
  ( (String!40625 (value!169457 String)) )
))
(declare-datatypes ((TokenValueInjection!10344 0))(
  ( (TokenValueInjection!10345 (toValue!7320 Int) (toChars!7179 Int)) )
))
(declare-datatypes ((Rule!10256 0))(
  ( (Rule!10257 (regex!5228 Regex!9987) (tag!5758 String!40624) (isSeparator!5228 Bool) (transformation!5228 TokenValueInjection!10344)) )
))
(declare-datatypes ((List!36322 0))(
  ( (Nil!36198) (Cons!36198 (h!41618 Rule!10256) (t!239801 List!36322)) )
))
(declare-fun rules!2135 () List!36322)

(get-info :version)

(assert (= (and b!3216501 ((_ is Cons!36198) rules!2135)) b!3216524))

(declare-fun order!18515 () Int)

(declare-fun order!18513 () Int)

(declare-fun dynLambda!14639 (Int Int) Int)

(declare-fun dynLambda!14640 (Int Int) Int)

(assert (=> b!3216526 (< (dynLambda!14639 order!18513 (toValue!7320 (transformation!5228 (h!41618 rules!2135)))) (dynLambda!14640 order!18515 lambda!117631))))

(declare-fun order!18517 () Int)

(declare-fun dynLambda!14641 (Int Int) Int)

(assert (=> b!3216526 (< (dynLambda!14641 order!18517 (toChars!7179 (transformation!5228 (h!41618 rules!2135)))) (dynLambda!14640 order!18515 lambda!117631))))

(assert (=> b!3216501 true))

(declare-fun b!3216474 () Bool)

(declare-fun res!1309294 () Bool)

(declare-fun e!2005482 () Bool)

(assert (=> b!3216474 (=> (not res!1309294) (not e!2005482))))

(declare-datatypes ((Token!9822 0))(
  ( (Token!9823 (value!169458 TokenValue!5458) (rule!7680 Rule!10256) (size!27287 Int) (originalCharacters!5942 List!36321)) )
))
(declare-datatypes ((List!36323 0))(
  ( (Nil!36199) (Cons!36199 (h!41619 Token!9822) (t!239802 List!36323)) )
))
(declare-fun tokens!494 () List!36323)

(assert (=> b!3216474 (= res!1309294 (and (not ((_ is Nil!36199) tokens!494)) (not ((_ is Nil!36199) (t!239802 tokens!494)))))))

(declare-fun b!3216475 () Bool)

(declare-fun res!1309302 () Bool)

(assert (=> b!3216475 (=> (not res!1309302) (not e!2005482))))

(declare-datatypes ((LexerInterface!4817 0))(
  ( (LexerInterfaceExt!4814 (__x!23134 Int)) (Lexer!4815) )
))
(declare-fun thiss!18206 () LexerInterface!4817)

(declare-fun rulesInvariant!4214 (LexerInterface!4817 List!36322) Bool)

(assert (=> b!3216475 (= res!1309302 (rulesInvariant!4214 thiss!18206 rules!2135))))

(declare-fun b!3216476 () Bool)

(declare-fun e!2005478 () Bool)

(declare-fun e!2005475 () Bool)

(declare-fun tp!1014139 () Bool)

(assert (=> b!3216476 (= e!2005478 (and e!2005475 tp!1014139))))

(declare-fun b!3216478 () Bool)

(declare-fun e!2005480 () Bool)

(declare-fun e!2005501 () Bool)

(assert (=> b!3216478 (= e!2005480 e!2005501)))

(declare-fun res!1309290 () Bool)

(assert (=> b!3216478 (=> res!1309290 e!2005501)))

(declare-fun lt!1088440 () List!36321)

(declare-fun lt!1088427 () List!36321)

(declare-fun lt!1088431 () List!36321)

(assert (=> b!3216478 (= res!1309290 (or (not (= lt!1088440 lt!1088427)) (not (= lt!1088431 lt!1088427))))))

(declare-fun list!12885 (BalanceConc!21276) List!36321)

(declare-fun charsOf!3244 (Token!9822) BalanceConc!21276)

(assert (=> b!3216478 (= lt!1088427 (list!12885 (charsOf!3244 (h!41619 tokens!494))))))

(declare-fun b!3216479 () Bool)

(declare-fun e!2005486 () Bool)

(declare-fun e!2005495 () Bool)

(assert (=> b!3216479 (= e!2005486 e!2005495)))

(declare-fun res!1309285 () Bool)

(assert (=> b!3216479 (=> res!1309285 e!2005495)))

(declare-fun lt!1088408 () List!36321)

(declare-fun lt!1088403 () List!36321)

(assert (=> b!3216479 (= res!1309285 (not (= lt!1088408 lt!1088403)))))

(declare-fun lt!1088429 () List!36321)

(assert (=> b!3216479 (= lt!1088429 lt!1088403)))

(declare-fun lt!1088400 () List!36321)

(declare-fun ++!8696 (List!36321 List!36321) List!36321)

(assert (=> b!3216479 (= lt!1088403 (++!8696 lt!1088427 lt!1088400))))

(declare-datatypes ((Unit!50710 0))(
  ( (Unit!50711) )
))
(declare-fun lt!1088436 () Unit!50710)

(declare-fun lt!1088439 () List!36321)

(declare-fun lt!1088437 () List!36321)

(declare-fun lemmaConcatAssociativity!1754 (List!36321 List!36321 List!36321) Unit!50710)

(assert (=> b!3216479 (= lt!1088436 (lemmaConcatAssociativity!1754 lt!1088427 lt!1088439 lt!1088437))))

(declare-fun b!3216480 () Bool)

(declare-fun e!2005498 () Bool)

(assert (=> b!3216480 (= e!2005498 e!2005486)))

(declare-fun res!1309306 () Bool)

(assert (=> b!3216480 (=> res!1309306 e!2005486)))

(assert (=> b!3216480 (= res!1309306 (not (= lt!1088408 lt!1088429)))))

(assert (=> b!3216480 (= lt!1088429 (++!8696 (++!8696 lt!1088427 lt!1088439) lt!1088437))))

(declare-fun tp!1014134 () Bool)

(declare-fun e!2005493 () Bool)

(declare-fun b!3216481 () Bool)

(declare-fun inv!49065 (String!40624) Bool)

(declare-fun inv!49068 (TokenValueInjection!10344) Bool)

(assert (=> b!3216481 (= e!2005475 (and tp!1014134 (inv!49065 (tag!5758 (h!41618 rules!2135))) (inv!49068 (transformation!5228 (h!41618 rules!2135))) e!2005493))))

(declare-fun b!3216482 () Bool)

(declare-fun res!1309308 () Bool)

(assert (=> b!3216482 (=> res!1309308 e!2005501)))

(declare-fun rulesProduceIndividualToken!2309 (LexerInterface!4817 List!36322 Token!9822) Bool)

(assert (=> b!3216482 (= res!1309308 (not (rulesProduceIndividualToken!2309 thiss!18206 rules!2135 (h!41619 tokens!494))))))

(assert (=> b!3216483 (= e!2005493 (and tp!1014135 tp!1014131))))

(declare-fun e!2005492 () Bool)

(declare-fun tp!1014133 () Bool)

(declare-fun e!2005504 () Bool)

(declare-fun b!3216484 () Bool)

(assert (=> b!3216484 (= e!2005492 (and tp!1014133 (inv!49065 (tag!5758 (rule!7680 (h!41619 tokens!494)))) (inv!49068 (transformation!5228 (rule!7680 (h!41619 tokens!494)))) e!2005504))))

(declare-fun b!3216485 () Bool)

(declare-fun e!2005487 () Bool)

(declare-fun e!2005500 () Bool)

(assert (=> b!3216485 (= e!2005487 e!2005500)))

(declare-fun res!1309298 () Bool)

(assert (=> b!3216485 (=> res!1309298 e!2005500)))

(assert (=> b!3216485 (= res!1309298 (or (isSeparator!5228 (rule!7680 (h!41619 tokens!494))) (isSeparator!5228 (rule!7680 (h!41619 (t!239802 tokens!494))))))))

(declare-fun lt!1088442 () Unit!50710)

(declare-fun forallContained!1199 (List!36323 Int Token!9822) Unit!50710)

(assert (=> b!3216485 (= lt!1088442 (forallContained!1199 tokens!494 lambda!117630 (h!41619 (t!239802 tokens!494))))))

(declare-fun lt!1088401 () Unit!50710)

(assert (=> b!3216485 (= lt!1088401 (forallContained!1199 tokens!494 lambda!117630 (h!41619 tokens!494)))))

(declare-fun b!3216486 () Bool)

(declare-fun e!2005484 () Unit!50710)

(declare-fun Unit!50712 () Unit!50710)

(assert (=> b!3216486 (= e!2005484 Unit!50712)))

(declare-fun separatorToken!241 () Token!9822)

(declare-fun lt!1088411 () Unit!50710)

(declare-fun lt!1088434 () C!20160)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!392 (Regex!9987 List!36321 C!20160) Unit!50710)

(assert (=> b!3216486 (= lt!1088411 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!392 (regex!5228 (rule!7680 separatorToken!241)) lt!1088439 lt!1088434))))

(declare-fun res!1309310 () Bool)

(declare-fun matchR!4621 (Regex!9987 List!36321) Bool)

(assert (=> b!3216486 (= res!1309310 (not (matchR!4621 (regex!5228 (rule!7680 separatorToken!241)) lt!1088439)))))

(declare-fun e!2005488 () Bool)

(assert (=> b!3216486 (=> (not res!1309310) (not e!2005488))))

(assert (=> b!3216486 e!2005488))

(declare-fun b!3216487 () Bool)

(assert (=> b!3216487 (= e!2005500 e!2005498)))

(declare-fun res!1309304 () Bool)

(assert (=> b!3216487 (=> res!1309304 e!2005498)))

(declare-fun lt!1088419 () List!36321)

(declare-fun printWithSeparatorTokenList!162 (LexerInterface!4817 List!36323 Token!9822) List!36321)

(assert (=> b!3216487 (= res!1309304 (not (= lt!1088437 (++!8696 (++!8696 lt!1088419 lt!1088439) (printWithSeparatorTokenList!162 thiss!18206 (t!239802 (t!239802 tokens!494)) separatorToken!241)))))))

(assert (=> b!3216487 (= lt!1088419 (list!12885 (charsOf!3244 (h!41619 (t!239802 tokens!494)))))))

(assert (=> b!3216487 (= lt!1088400 (++!8696 lt!1088439 lt!1088437))))

(assert (=> b!3216487 (= lt!1088439 (list!12885 (charsOf!3244 separatorToken!241)))))

(assert (=> b!3216487 (= lt!1088437 (printWithSeparatorTokenList!162 thiss!18206 (t!239802 tokens!494) separatorToken!241))))

(assert (=> b!3216487 (= lt!1088408 (printWithSeparatorTokenList!162 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3216488 () Bool)

(declare-fun e!2005481 () Bool)

(declare-fun lt!1088433 () Rule!10256)

(assert (=> b!3216488 (= e!2005481 (= (rule!7680 separatorToken!241) lt!1088433))))

(declare-fun b!3216489 () Bool)

(declare-fun res!1309307 () Bool)

(assert (=> b!3216489 (=> (not res!1309307) (not e!2005482))))

(assert (=> b!3216489 (= res!1309307 (isSeparator!5228 (rule!7680 separatorToken!241)))))

(declare-fun b!3216490 () Bool)

(declare-fun e!2005472 () Bool)

(declare-fun e!2005499 () Bool)

(assert (=> b!3216490 (= e!2005472 e!2005499)))

(declare-fun res!1309282 () Bool)

(assert (=> b!3216490 (=> (not res!1309282) (not e!2005499))))

(declare-fun lt!1088424 () Rule!10256)

(assert (=> b!3216490 (= res!1309282 (matchR!4621 (regex!5228 lt!1088424) lt!1088419))))

(declare-datatypes ((Option!7159 0))(
  ( (None!7158) (Some!7158 (v!35728 Rule!10256)) )
))
(declare-fun lt!1088415 () Option!7159)

(declare-fun get!11529 (Option!7159) Rule!10256)

(assert (=> b!3216490 (= lt!1088424 (get!11529 lt!1088415))))

(declare-fun b!3216491 () Bool)

(declare-fun tp!1014129 () Bool)

(declare-fun e!2005491 () Bool)

(declare-fun e!2005483 () Bool)

(assert (=> b!3216491 (= e!2005491 (and tp!1014129 (inv!49065 (tag!5758 (rule!7680 separatorToken!241))) (inv!49068 (transformation!5228 (rule!7680 separatorToken!241))) e!2005483))))

(declare-fun b!3216492 () Bool)

(assert (=> b!3216492 (= e!2005482 (not e!2005480))))

(declare-fun res!1309291 () Bool)

(assert (=> b!3216492 (=> res!1309291 e!2005480)))

(assert (=> b!3216492 (= res!1309291 (not (= lt!1088431 lt!1088440)))))

(declare-fun printList!1367 (LexerInterface!4817 List!36323) List!36321)

(assert (=> b!3216492 (= lt!1088440 (printList!1367 thiss!18206 (Cons!36199 (h!41619 tokens!494) Nil!36199)))))

(declare-fun lt!1088406 () BalanceConc!21276)

(assert (=> b!3216492 (= lt!1088431 (list!12885 lt!1088406))))

(declare-datatypes ((IArray!21669 0))(
  ( (IArray!21670 (innerList!10892 List!36323)) )
))
(declare-datatypes ((Conc!10832 0))(
  ( (Node!10832 (left!28152 Conc!10832) (right!28482 Conc!10832) (csize!21894 Int) (cheight!11043 Int)) (Leaf!17057 (xs!13950 IArray!21669) (csize!21895 Int)) (Empty!10832) )
))
(declare-datatypes ((BalanceConc!21278 0))(
  ( (BalanceConc!21279 (c!540698 Conc!10832)) )
))
(declare-fun lt!1088420 () BalanceConc!21278)

(declare-fun printTailRec!1314 (LexerInterface!4817 BalanceConc!21278 Int BalanceConc!21276) BalanceConc!21276)

(assert (=> b!3216492 (= lt!1088406 (printTailRec!1314 thiss!18206 lt!1088420 0 (BalanceConc!21277 Empty!10831)))))

(declare-fun print!1882 (LexerInterface!4817 BalanceConc!21278) BalanceConc!21276)

(assert (=> b!3216492 (= lt!1088406 (print!1882 thiss!18206 lt!1088420))))

(declare-fun singletonSeq!2324 (Token!9822) BalanceConc!21278)

(assert (=> b!3216492 (= lt!1088420 (singletonSeq!2324 (h!41619 tokens!494)))))

(declare-fun b!3216493 () Bool)

(declare-fun e!2005497 () Bool)

(declare-datatypes ((tuple2!35614 0))(
  ( (tuple2!35615 (_1!20941 BalanceConc!21278) (_2!20941 BalanceConc!21276)) )
))
(declare-fun lt!1088418 () tuple2!35614)

(declare-fun isEmpty!20297 (BalanceConc!21276) Bool)

(assert (=> b!3216493 (= e!2005497 (isEmpty!20297 (_2!20941 lt!1088418)))))

(declare-fun b!3216494 () Bool)

(assert (=> b!3216494 (= e!2005499 (= (rule!7680 (h!41619 (t!239802 tokens!494))) lt!1088424))))

(declare-fun e!2005502 () Bool)

(declare-fun b!3216495 () Bool)

(declare-fun tp!1014132 () Bool)

(declare-fun inv!21 (TokenValue!5458) Bool)

(assert (=> b!3216495 (= e!2005502 (and (inv!21 (value!169458 (h!41619 tokens!494))) e!2005492 tp!1014132))))

(declare-fun b!3216496 () Bool)

(declare-fun Unit!50713 () Unit!50710)

(assert (=> b!3216496 (= e!2005484 Unit!50713)))

(declare-fun b!3216497 () Bool)

(declare-fun res!1309295 () Bool)

(assert (=> b!3216497 (=> (not res!1309295) (not e!2005497))))

(declare-fun apply!8217 (BalanceConc!21278 Int) Token!9822)

(assert (=> b!3216497 (= res!1309295 (= (apply!8217 (_1!20941 lt!1088418) 0) separatorToken!241))))

(declare-fun b!3216498 () Bool)

(declare-fun e!2005476 () Bool)

(assert (=> b!3216498 (= e!2005476 true)))

(declare-fun lt!1088402 () Bool)

(declare-fun lt!1088407 () C!20160)

(declare-fun contains!6477 (List!36321 C!20160) Bool)

(assert (=> b!3216498 (= lt!1088402 (contains!6477 lt!1088419 lt!1088407))))

(declare-fun res!1309301 () Bool)

(assert (=> b!3216499 (=> (not res!1309301) (not e!2005482))))

(declare-fun forall!7404 (List!36323 Int) Bool)

(assert (=> b!3216499 (= res!1309301 (forall!7404 tokens!494 lambda!117630))))

(declare-fun res!1309283 () Bool)

(assert (=> start!302166 (=> (not res!1309283) (not e!2005482))))

(assert (=> start!302166 (= res!1309283 ((_ is Lexer!4815) thiss!18206))))

(assert (=> start!302166 e!2005482))

(assert (=> start!302166 true))

(assert (=> start!302166 e!2005478))

(declare-fun e!2005503 () Bool)

(assert (=> start!302166 e!2005503))

(declare-fun e!2005494 () Bool)

(declare-fun inv!49069 (Token!9822) Bool)

(assert (=> start!302166 (and (inv!49069 separatorToken!241) e!2005494)))

(declare-fun b!3216477 () Bool)

(declare-fun e!2005485 () Bool)

(declare-fun e!2005479 () Bool)

(assert (=> b!3216477 (= e!2005485 e!2005479)))

(declare-fun res!1309300 () Bool)

(assert (=> b!3216477 (=> (not res!1309300) (not e!2005479))))

(declare-fun lt!1088435 () Rule!10256)

(assert (=> b!3216477 (= res!1309300 (matchR!4621 (regex!5228 lt!1088435) lt!1088427))))

(declare-fun lt!1088421 () Option!7159)

(assert (=> b!3216477 (= lt!1088435 (get!11529 lt!1088421))))

(declare-fun b!3216500 () Bool)

(declare-fun res!1309299 () Bool)

(assert (=> b!3216500 (=> (not res!1309299) (not e!2005482))))

(assert (=> b!3216500 (= res!1309299 (rulesProduceIndividualToken!2309 thiss!18206 rules!2135 separatorToken!241))))

(assert (=> b!3216501 (= e!2005495 e!2005476)))

(declare-fun res!1309293 () Bool)

(assert (=> b!3216501 (=> res!1309293 e!2005476)))

(declare-fun usedCharacters!544 (Regex!9987) List!36321)

(assert (=> b!3216501 (= res!1309293 (contains!6477 (usedCharacters!544 (regex!5228 (rule!7680 (h!41619 (t!239802 tokens!494))))) lt!1088407))))

(declare-fun head!7051 (List!36321) C!20160)

(assert (=> b!3216501 (= lt!1088407 (head!7051 lt!1088419))))

(declare-datatypes ((tuple2!35616 0))(
  ( (tuple2!35617 (_1!20942 Token!9822) (_2!20942 List!36321)) )
))
(declare-datatypes ((Option!7160 0))(
  ( (None!7159) (Some!7159 (v!35729 tuple2!35616)) )
))
(declare-fun maxPrefixOneRule!1596 (LexerInterface!4817 Rule!10256 List!36321) Option!7160)

(declare-fun apply!8218 (TokenValueInjection!10344 BalanceConc!21276) TokenValue!5458)

(declare-fun seqFromList!3527 (List!36321) BalanceConc!21276)

(declare-fun size!27288 (List!36321) Int)

(assert (=> b!3216501 (= (maxPrefixOneRule!1596 thiss!18206 (rule!7680 (h!41619 (t!239802 tokens!494))) lt!1088419) (Some!7159 (tuple2!35617 (Token!9823 (apply!8218 (transformation!5228 (rule!7680 (h!41619 (t!239802 tokens!494)))) (seqFromList!3527 lt!1088419)) (rule!7680 (h!41619 (t!239802 tokens!494))) (size!27288 lt!1088419) lt!1088419) Nil!36197)))))

(declare-fun lt!1088428 () Unit!50710)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!709 (LexerInterface!4817 List!36322 List!36321 List!36321 List!36321 Rule!10256) Unit!50710)

(assert (=> b!3216501 (= lt!1088428 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!709 thiss!18206 rules!2135 lt!1088419 lt!1088419 Nil!36197 (rule!7680 (h!41619 (t!239802 tokens!494)))))))

(assert (=> b!3216501 e!2005472))

(declare-fun res!1309287 () Bool)

(assert (=> b!3216501 (=> (not res!1309287) (not e!2005472))))

(declare-fun isDefined!5562 (Option!7159) Bool)

(assert (=> b!3216501 (= res!1309287 (isDefined!5562 lt!1088415))))

(declare-fun getRuleFromTag!933 (LexerInterface!4817 List!36322 String!40624) Option!7159)

(assert (=> b!3216501 (= lt!1088415 (getRuleFromTag!933 thiss!18206 rules!2135 (tag!5758 (rule!7680 (h!41619 (t!239802 tokens!494))))))))

(declare-fun lt!1088414 () Unit!50710)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!933 (LexerInterface!4817 List!36322 List!36321 Token!9822) Unit!50710)

(assert (=> b!3216501 (= lt!1088414 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!933 thiss!18206 rules!2135 lt!1088419 (h!41619 (t!239802 tokens!494))))))

(declare-fun lt!1088409 () Bool)

(assert (=> b!3216501 lt!1088409))

(declare-fun lt!1088432 () Unit!50710)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!856 (LexerInterface!4817 List!36322 List!36323 Token!9822) Unit!50710)

(assert (=> b!3216501 (= lt!1088432 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!856 thiss!18206 rules!2135 tokens!494 (h!41619 (t!239802 tokens!494))))))

(declare-fun maxPrefix!2459 (LexerInterface!4817 List!36322 List!36321) Option!7160)

(assert (=> b!3216501 (= (maxPrefix!2459 thiss!18206 rules!2135 lt!1088403) (Some!7159 (tuple2!35617 (h!41619 tokens!494) lt!1088400)))))

(declare-fun lt!1088410 () Unit!50710)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!152 (LexerInterface!4817 List!36322 Token!9822 Rule!10256 List!36321 Rule!10256) Unit!50710)

(assert (=> b!3216501 (= lt!1088410 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!152 thiss!18206 rules!2135 (h!41619 tokens!494) (rule!7680 (h!41619 tokens!494)) lt!1088400 (rule!7680 separatorToken!241)))))

(assert (=> b!3216501 (not (contains!6477 (usedCharacters!544 (regex!5228 (rule!7680 (h!41619 tokens!494)))) lt!1088434))))

(declare-fun lt!1088422 () Unit!50710)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!152 (LexerInterface!4817 List!36322 List!36322 Rule!10256 Rule!10256 C!20160) Unit!50710)

(assert (=> b!3216501 (= lt!1088422 (lemmaNonSepRuleNotContainsCharContainedInASepRule!152 thiss!18206 rules!2135 rules!2135 (rule!7680 (h!41619 tokens!494)) (rule!7680 separatorToken!241) lt!1088434))))

(declare-fun lt!1088425 () Unit!50710)

(assert (=> b!3216501 (= lt!1088425 (forallContained!1199 tokens!494 lambda!117631 (h!41619 (t!239802 tokens!494))))))

(declare-fun lt!1088443 () Bool)

(assert (=> b!3216501 (= lt!1088409 (not lt!1088443))))

(assert (=> b!3216501 (= lt!1088409 (rulesProduceIndividualToken!2309 thiss!18206 rules!2135 (h!41619 (t!239802 tokens!494))))))

(declare-fun e!2005473 () Bool)

(assert (=> b!3216501 (= lt!1088443 e!2005473)))

(declare-fun res!1309281 () Bool)

(assert (=> b!3216501 (=> res!1309281 e!2005473)))

(declare-fun lt!1088441 () tuple2!35614)

(declare-fun size!27289 (BalanceConc!21278) Int)

(assert (=> b!3216501 (= res!1309281 (not (= (size!27289 (_1!20941 lt!1088441)) 1)))))

(declare-fun lt!1088413 () BalanceConc!21276)

(declare-fun lex!2147 (LexerInterface!4817 List!36322 BalanceConc!21276) tuple2!35614)

(assert (=> b!3216501 (= lt!1088441 (lex!2147 thiss!18206 rules!2135 lt!1088413))))

(declare-fun lt!1088405 () BalanceConc!21278)

(assert (=> b!3216501 (= lt!1088413 (printTailRec!1314 thiss!18206 lt!1088405 0 (BalanceConc!21277 Empty!10831)))))

(assert (=> b!3216501 (= lt!1088413 (print!1882 thiss!18206 lt!1088405))))

(assert (=> b!3216501 (= lt!1088405 (singletonSeq!2324 (h!41619 (t!239802 tokens!494))))))

(assert (=> b!3216501 e!2005497))

(declare-fun res!1309309 () Bool)

(assert (=> b!3216501 (=> (not res!1309309) (not e!2005497))))

(assert (=> b!3216501 (= res!1309309 (= (size!27289 (_1!20941 lt!1088418)) 1))))

(declare-fun lt!1088430 () BalanceConc!21276)

(assert (=> b!3216501 (= lt!1088418 (lex!2147 thiss!18206 rules!2135 lt!1088430))))

(declare-fun lt!1088417 () BalanceConc!21278)

(assert (=> b!3216501 (= lt!1088430 (printTailRec!1314 thiss!18206 lt!1088417 0 (BalanceConc!21277 Empty!10831)))))

(assert (=> b!3216501 (= lt!1088430 (print!1882 thiss!18206 lt!1088417))))

(assert (=> b!3216501 (= lt!1088417 (singletonSeq!2324 separatorToken!241))))

(declare-fun lt!1088416 () Unit!50710)

(assert (=> b!3216501 (= lt!1088416 e!2005484)))

(declare-fun c!540695 () Bool)

(assert (=> b!3216501 (= c!540695 (not (contains!6477 (usedCharacters!544 (regex!5228 (rule!7680 separatorToken!241))) lt!1088434)))))

(assert (=> b!3216501 (= lt!1088434 (head!7051 lt!1088439))))

(declare-fun e!2005496 () Bool)

(assert (=> b!3216501 e!2005496))

(declare-fun res!1309286 () Bool)

(assert (=> b!3216501 (=> (not res!1309286) (not e!2005496))))

(declare-fun lt!1088404 () Option!7159)

(assert (=> b!3216501 (= res!1309286 (isDefined!5562 lt!1088404))))

(assert (=> b!3216501 (= lt!1088404 (getRuleFromTag!933 thiss!18206 rules!2135 (tag!5758 (rule!7680 separatorToken!241))))))

(declare-fun lt!1088438 () Unit!50710)

(assert (=> b!3216501 (= lt!1088438 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!933 thiss!18206 rules!2135 lt!1088439 separatorToken!241))))

(declare-fun lt!1088412 () BalanceConc!21276)

(assert (=> b!3216501 (= (maxPrefixOneRule!1596 thiss!18206 (rule!7680 (h!41619 tokens!494)) lt!1088427) (Some!7159 (tuple2!35617 (Token!9823 (apply!8218 (transformation!5228 (rule!7680 (h!41619 tokens!494))) lt!1088412) (rule!7680 (h!41619 tokens!494)) (size!27288 lt!1088427) lt!1088427) Nil!36197)))))

(declare-fun lt!1088444 () Unit!50710)

(assert (=> b!3216501 (= lt!1088444 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!709 thiss!18206 rules!2135 lt!1088427 lt!1088427 Nil!36197 (rule!7680 (h!41619 tokens!494))))))

(assert (=> b!3216501 e!2005485))

(declare-fun res!1309303 () Bool)

(assert (=> b!3216501 (=> (not res!1309303) (not e!2005485))))

(assert (=> b!3216501 (= res!1309303 (isDefined!5562 lt!1088421))))

(assert (=> b!3216501 (= lt!1088421 (getRuleFromTag!933 thiss!18206 rules!2135 (tag!5758 (rule!7680 (h!41619 tokens!494)))))))

(declare-fun lt!1088426 () Unit!50710)

(assert (=> b!3216501 (= lt!1088426 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!933 thiss!18206 rules!2135 lt!1088427 (h!41619 tokens!494)))))

(declare-fun lt!1088423 () Unit!50710)

(assert (=> b!3216501 (= lt!1088423 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!856 thiss!18206 rules!2135 tokens!494 (h!41619 tokens!494)))))

(declare-fun b!3216502 () Bool)

(declare-fun res!1309297 () Bool)

(assert (=> b!3216502 (=> (not res!1309297) (not e!2005482))))

(declare-fun rulesProduceEachTokenIndividually!1268 (LexerInterface!4817 List!36322 BalanceConc!21278) Bool)

(declare-fun seqFromList!3528 (List!36323) BalanceConc!21278)

(assert (=> b!3216502 (= res!1309297 (rulesProduceEachTokenIndividually!1268 thiss!18206 rules!2135 (seqFromList!3528 tokens!494)))))

(declare-fun b!3216503 () Bool)

(assert (=> b!3216503 (= e!2005479 (= (rule!7680 (h!41619 tokens!494)) lt!1088435))))

(declare-fun b!3216504 () Bool)

(assert (=> b!3216504 (= e!2005488 false)))

(declare-fun tp!1014136 () Bool)

(declare-fun b!3216505 () Bool)

(assert (=> b!3216505 (= e!2005503 (and (inv!49069 (h!41619 tokens!494)) e!2005502 tp!1014136))))

(declare-fun b!3216506 () Bool)

(assert (=> b!3216506 (= e!2005496 e!2005481)))

(declare-fun res!1309284 () Bool)

(assert (=> b!3216506 (=> (not res!1309284) (not e!2005481))))

(assert (=> b!3216506 (= res!1309284 (matchR!4621 (regex!5228 lt!1088433) lt!1088439))))

(assert (=> b!3216506 (= lt!1088433 (get!11529 lt!1088404))))

(declare-fun b!3216507 () Bool)

(declare-fun res!1309292 () Bool)

(assert (=> b!3216507 (=> res!1309292 e!2005476)))

(declare-fun validRegex!4556 (Regex!9987) Bool)

(assert (=> b!3216507 (= res!1309292 (not (validRegex!4556 (regex!5228 (rule!7680 (h!41619 (t!239802 tokens!494)))))))))

(declare-fun b!3216508 () Bool)

(assert (=> b!3216508 (= e!2005473 (not (isEmpty!20297 (_2!20941 lt!1088441))))))

(assert (=> b!3216509 (= e!2005483 (and tp!1014137 tp!1014128))))

(declare-fun b!3216510 () Bool)

(declare-fun res!1309305 () Bool)

(assert (=> b!3216510 (=> (not res!1309305) (not e!2005482))))

(declare-fun sepAndNonSepRulesDisjointChars!1422 (List!36322 List!36322) Bool)

(assert (=> b!3216510 (= res!1309305 (sepAndNonSepRulesDisjointChars!1422 rules!2135 rules!2135))))

(declare-fun b!3216511 () Bool)

(declare-fun res!1309288 () Bool)

(assert (=> b!3216511 (=> (not res!1309288) (not e!2005482))))

(declare-fun isEmpty!20298 (List!36322) Bool)

(assert (=> b!3216511 (= res!1309288 (not (isEmpty!20298 rules!2135)))))

(declare-fun b!3216512 () Bool)

(assert (=> b!3216512 (= e!2005501 e!2005487)))

(declare-fun res!1309289 () Bool)

(assert (=> b!3216512 (=> res!1309289 e!2005487)))

(declare-fun isEmpty!20299 (BalanceConc!21278) Bool)

(assert (=> b!3216512 (= res!1309289 (isEmpty!20299 (_1!20941 (lex!2147 thiss!18206 rules!2135 lt!1088412))))))

(assert (=> b!3216512 (= lt!1088412 (seqFromList!3527 lt!1088427))))

(assert (=> b!3216513 (= e!2005504 (and tp!1014138 tp!1014130))))

(declare-fun tp!1014140 () Bool)

(declare-fun b!3216514 () Bool)

(assert (=> b!3216514 (= e!2005494 (and (inv!21 (value!169458 separatorToken!241)) e!2005491 tp!1014140))))

(declare-fun b!3216515 () Bool)

(declare-fun res!1309296 () Bool)

(assert (=> b!3216515 (=> res!1309296 e!2005473)))

(assert (=> b!3216515 (= res!1309296 (not (= (apply!8217 (_1!20941 lt!1088441) 0) (h!41619 (t!239802 tokens!494)))))))

(assert (= (and start!302166 res!1309283) b!3216511))

(assert (= (and b!3216511 res!1309288) b!3216475))

(assert (= (and b!3216475 res!1309302) b!3216502))

(assert (= (and b!3216502 res!1309297) b!3216500))

(assert (= (and b!3216500 res!1309299) b!3216489))

(assert (= (and b!3216489 res!1309307) b!3216499))

(assert (= (and b!3216499 res!1309301) b!3216510))

(assert (= (and b!3216510 res!1309305) b!3216474))

(assert (= (and b!3216474 res!1309294) b!3216492))

(assert (= (and b!3216492 (not res!1309291)) b!3216478))

(assert (= (and b!3216478 (not res!1309290)) b!3216482))

(assert (= (and b!3216482 (not res!1309308)) b!3216512))

(assert (= (and b!3216512 (not res!1309289)) b!3216485))

(assert (= (and b!3216485 (not res!1309298)) b!3216487))

(assert (= (and b!3216487 (not res!1309304)) b!3216480))

(assert (= (and b!3216480 (not res!1309306)) b!3216479))

(assert (= (and b!3216479 (not res!1309285)) b!3216501))

(assert (= (and b!3216501 res!1309303) b!3216477))

(assert (= (and b!3216477 res!1309300) b!3216503))

(assert (= (and b!3216501 res!1309286) b!3216506))

(assert (= (and b!3216506 res!1309284) b!3216488))

(assert (= (and b!3216501 c!540695) b!3216486))

(assert (= (and b!3216501 (not c!540695)) b!3216496))

(assert (= (and b!3216486 res!1309310) b!3216504))

(assert (= (and b!3216501 res!1309309) b!3216497))

(assert (= (and b!3216497 res!1309295) b!3216493))

(assert (= (and b!3216501 (not res!1309281)) b!3216515))

(assert (= (and b!3216515 (not res!1309296)) b!3216508))

(assert (= (and b!3216501 res!1309287) b!3216490))

(assert (= (and b!3216490 res!1309282) b!3216494))

(assert (= (and b!3216501 (not res!1309293)) b!3216507))

(assert (= (and b!3216507 (not res!1309292)) b!3216498))

(assert (= b!3216481 b!3216483))

(assert (= b!3216476 b!3216481))

(assert (= (and start!302166 ((_ is Cons!36198) rules!2135)) b!3216476))

(assert (= b!3216484 b!3216513))

(assert (= b!3216495 b!3216484))

(assert (= b!3216505 b!3216495))

(assert (= (and start!302166 ((_ is Cons!36199) tokens!494)) b!3216505))

(assert (= b!3216491 b!3216509))

(assert (= b!3216514 b!3216491))

(assert (= start!302166 b!3216514))

(declare-fun m!3489917 () Bool)

(assert (=> b!3216512 m!3489917))

(declare-fun m!3489919 () Bool)

(assert (=> b!3216512 m!3489919))

(declare-fun m!3489921 () Bool)

(assert (=> b!3216512 m!3489921))

(declare-fun m!3489923 () Bool)

(assert (=> b!3216508 m!3489923))

(declare-fun m!3489925 () Bool)

(assert (=> b!3216480 m!3489925))

(assert (=> b!3216480 m!3489925))

(declare-fun m!3489927 () Bool)

(assert (=> b!3216480 m!3489927))

(declare-fun m!3489929 () Bool)

(assert (=> b!3216499 m!3489929))

(declare-fun m!3489931 () Bool)

(assert (=> b!3216493 m!3489931))

(declare-fun m!3489933 () Bool)

(assert (=> b!3216485 m!3489933))

(declare-fun m!3489935 () Bool)

(assert (=> b!3216485 m!3489935))

(declare-fun m!3489937 () Bool)

(assert (=> b!3216510 m!3489937))

(declare-fun m!3489939 () Bool)

(assert (=> b!3216475 m!3489939))

(declare-fun m!3489941 () Bool)

(assert (=> b!3216507 m!3489941))

(declare-fun m!3489943 () Bool)

(assert (=> b!3216511 m!3489943))

(declare-fun m!3489945 () Bool)

(assert (=> b!3216502 m!3489945))

(assert (=> b!3216502 m!3489945))

(declare-fun m!3489947 () Bool)

(assert (=> b!3216502 m!3489947))

(declare-fun m!3489949 () Bool)

(assert (=> start!302166 m!3489949))

(declare-fun m!3489951 () Bool)

(assert (=> b!3216506 m!3489951))

(declare-fun m!3489953 () Bool)

(assert (=> b!3216506 m!3489953))

(declare-fun m!3489955 () Bool)

(assert (=> b!3216481 m!3489955))

(declare-fun m!3489957 () Bool)

(assert (=> b!3216481 m!3489957))

(declare-fun m!3489959 () Bool)

(assert (=> b!3216477 m!3489959))

(declare-fun m!3489961 () Bool)

(assert (=> b!3216477 m!3489961))

(declare-fun m!3489963 () Bool)

(assert (=> b!3216482 m!3489963))

(declare-fun m!3489965 () Bool)

(assert (=> b!3216490 m!3489965))

(declare-fun m!3489967 () Bool)

(assert (=> b!3216490 m!3489967))

(declare-fun m!3489969 () Bool)

(assert (=> b!3216486 m!3489969))

(declare-fun m!3489971 () Bool)

(assert (=> b!3216486 m!3489971))

(declare-fun m!3489973 () Bool)

(assert (=> b!3216500 m!3489973))

(declare-fun m!3489975 () Bool)

(assert (=> b!3216495 m!3489975))

(declare-fun m!3489977 () Bool)

(assert (=> b!3216492 m!3489977))

(declare-fun m!3489979 () Bool)

(assert (=> b!3216492 m!3489979))

(declare-fun m!3489981 () Bool)

(assert (=> b!3216492 m!3489981))

(declare-fun m!3489983 () Bool)

(assert (=> b!3216492 m!3489983))

(declare-fun m!3489985 () Bool)

(assert (=> b!3216492 m!3489985))

(declare-fun m!3489987 () Bool)

(assert (=> b!3216479 m!3489987))

(declare-fun m!3489989 () Bool)

(assert (=> b!3216479 m!3489989))

(declare-fun m!3489991 () Bool)

(assert (=> b!3216501 m!3489991))

(declare-fun m!3489993 () Bool)

(assert (=> b!3216501 m!3489993))

(declare-fun m!3489995 () Bool)

(assert (=> b!3216501 m!3489995))

(declare-fun m!3489997 () Bool)

(assert (=> b!3216501 m!3489997))

(declare-fun m!3489999 () Bool)

(assert (=> b!3216501 m!3489999))

(declare-fun m!3490001 () Bool)

(assert (=> b!3216501 m!3490001))

(declare-fun m!3490003 () Bool)

(assert (=> b!3216501 m!3490003))

(declare-fun m!3490005 () Bool)

(assert (=> b!3216501 m!3490005))

(declare-fun m!3490007 () Bool)

(assert (=> b!3216501 m!3490007))

(declare-fun m!3490009 () Bool)

(assert (=> b!3216501 m!3490009))

(declare-fun m!3490011 () Bool)

(assert (=> b!3216501 m!3490011))

(declare-fun m!3490013 () Bool)

(assert (=> b!3216501 m!3490013))

(declare-fun m!3490015 () Bool)

(assert (=> b!3216501 m!3490015))

(declare-fun m!3490017 () Bool)

(assert (=> b!3216501 m!3490017))

(declare-fun m!3490019 () Bool)

(assert (=> b!3216501 m!3490019))

(declare-fun m!3490021 () Bool)

(assert (=> b!3216501 m!3490021))

(declare-fun m!3490023 () Bool)

(assert (=> b!3216501 m!3490023))

(declare-fun m!3490025 () Bool)

(assert (=> b!3216501 m!3490025))

(declare-fun m!3490027 () Bool)

(assert (=> b!3216501 m!3490027))

(declare-fun m!3490029 () Bool)

(assert (=> b!3216501 m!3490029))

(declare-fun m!3490031 () Bool)

(assert (=> b!3216501 m!3490031))

(declare-fun m!3490033 () Bool)

(assert (=> b!3216501 m!3490033))

(declare-fun m!3490035 () Bool)

(assert (=> b!3216501 m!3490035))

(declare-fun m!3490037 () Bool)

(assert (=> b!3216501 m!3490037))

(declare-fun m!3490039 () Bool)

(assert (=> b!3216501 m!3490039))

(declare-fun m!3490041 () Bool)

(assert (=> b!3216501 m!3490041))

(assert (=> b!3216501 m!3490035))

(declare-fun m!3490043 () Bool)

(assert (=> b!3216501 m!3490043))

(declare-fun m!3490045 () Bool)

(assert (=> b!3216501 m!3490045))

(declare-fun m!3490047 () Bool)

(assert (=> b!3216501 m!3490047))

(declare-fun m!3490049 () Bool)

(assert (=> b!3216501 m!3490049))

(assert (=> b!3216501 m!3489995))

(declare-fun m!3490051 () Bool)

(assert (=> b!3216501 m!3490051))

(declare-fun m!3490053 () Bool)

(assert (=> b!3216501 m!3490053))

(declare-fun m!3490055 () Bool)

(assert (=> b!3216501 m!3490055))

(declare-fun m!3490057 () Bool)

(assert (=> b!3216501 m!3490057))

(declare-fun m!3490059 () Bool)

(assert (=> b!3216501 m!3490059))

(declare-fun m!3490061 () Bool)

(assert (=> b!3216501 m!3490061))

(declare-fun m!3490063 () Bool)

(assert (=> b!3216501 m!3490063))

(declare-fun m!3490065 () Bool)

(assert (=> b!3216501 m!3490065))

(declare-fun m!3490067 () Bool)

(assert (=> b!3216501 m!3490067))

(assert (=> b!3216501 m!3490015))

(declare-fun m!3490069 () Bool)

(assert (=> b!3216501 m!3490069))

(declare-fun m!3490071 () Bool)

(assert (=> b!3216501 m!3490071))

(declare-fun m!3490073 () Bool)

(assert (=> b!3216501 m!3490073))

(assert (=> b!3216501 m!3490017))

(declare-fun m!3490075 () Bool)

(assert (=> b!3216501 m!3490075))

(declare-fun m!3490077 () Bool)

(assert (=> b!3216514 m!3490077))

(declare-fun m!3490079 () Bool)

(assert (=> b!3216491 m!3490079))

(declare-fun m!3490081 () Bool)

(assert (=> b!3216491 m!3490081))

(declare-fun m!3490083 () Bool)

(assert (=> b!3216515 m!3490083))

(declare-fun m!3490085 () Bool)

(assert (=> b!3216484 m!3490085))

(declare-fun m!3490087 () Bool)

(assert (=> b!3216484 m!3490087))

(declare-fun m!3490089 () Bool)

(assert (=> b!3216498 m!3490089))

(declare-fun m!3490091 () Bool)

(assert (=> b!3216497 m!3490091))

(declare-fun m!3490093 () Bool)

(assert (=> b!3216505 m!3490093))

(declare-fun m!3490095 () Bool)

(assert (=> b!3216487 m!3490095))

(declare-fun m!3490097 () Bool)

(assert (=> b!3216487 m!3490097))

(declare-fun m!3490099 () Bool)

(assert (=> b!3216487 m!3490099))

(declare-fun m!3490101 () Bool)

(assert (=> b!3216487 m!3490101))

(assert (=> b!3216487 m!3490095))

(declare-fun m!3490103 () Bool)

(assert (=> b!3216487 m!3490103))

(declare-fun m!3490105 () Bool)

(assert (=> b!3216487 m!3490105))

(declare-fun m!3490107 () Bool)

(assert (=> b!3216487 m!3490107))

(assert (=> b!3216487 m!3490105))

(declare-fun m!3490109 () Bool)

(assert (=> b!3216487 m!3490109))

(assert (=> b!3216487 m!3490107))

(declare-fun m!3490111 () Bool)

(assert (=> b!3216487 m!3490111))

(assert (=> b!3216487 m!3490097))

(declare-fun m!3490113 () Bool)

(assert (=> b!3216487 m!3490113))

(declare-fun m!3490115 () Bool)

(assert (=> b!3216478 m!3490115))

(assert (=> b!3216478 m!3490115))

(declare-fun m!3490117 () Bool)

(assert (=> b!3216478 m!3490117))

(check-sat (not b!3216492) (not b!3216512) (not b!3216490) (not b_next!86227) (not b!3216498) (not b!3216485) b_and!214753 b_and!214751 b_and!214755 (not b_next!86223) (not b!3216491) (not b!3216476) (not b!3216480) (not b!3216493) (not b!3216479) (not b!3216501) (not b!3216508) (not b!3216500) b_and!214761 (not b!3216475) (not b!3216495) b_and!214757 (not b!3216478) (not b!3216511) (not start!302166) (not b!3216514) (not b_next!86217) (not b!3216486) (not b!3216499) (not b!3216515) (not b!3216506) (not b!3216497) (not b!3216502) (not b!3216484) (not b!3216524) (not b!3216481) (not b_next!86225) (not b!3216477) (not b!3216510) (not b_next!86219) (not b!3216505) (not b!3216482) (not b!3216487) b_and!214759 (not b_next!86221) (not b!3216507))
(check-sat b_and!214761 b_and!214757 (not b_next!86217) (not b_next!86227) (not b_next!86225) b_and!214753 b_and!214751 b_and!214755 (not b_next!86223) (not b_next!86219) b_and!214759 (not b_next!86221))
