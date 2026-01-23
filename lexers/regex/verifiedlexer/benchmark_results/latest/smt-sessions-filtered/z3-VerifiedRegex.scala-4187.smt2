; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!227112 () Bool)

(assert start!227112)

(declare-fun b!2306437 () Bool)

(declare-fun b_free!69773 () Bool)

(declare-fun b_next!70477 () Bool)

(assert (=> b!2306437 (= b_free!69773 (not b_next!70477))))

(declare-fun tp!731826 () Bool)

(declare-fun b_and!184113 () Bool)

(assert (=> b!2306437 (= tp!731826 b_and!184113)))

(declare-fun b_free!69775 () Bool)

(declare-fun b_next!70479 () Bool)

(assert (=> b!2306437 (= b_free!69775 (not b_next!70479))))

(declare-fun tp!731828 () Bool)

(declare-fun b_and!184115 () Bool)

(assert (=> b!2306437 (= tp!731828 b_and!184115)))

(declare-fun b!2306446 () Bool)

(declare-fun b_free!69777 () Bool)

(declare-fun b_next!70481 () Bool)

(assert (=> b!2306446 (= b_free!69777 (not b_next!70481))))

(declare-fun tp!731823 () Bool)

(declare-fun b_and!184117 () Bool)

(assert (=> b!2306446 (= tp!731823 b_and!184117)))

(declare-fun b_free!69779 () Bool)

(declare-fun b_next!70483 () Bool)

(assert (=> b!2306446 (= b_free!69779 (not b_next!70483))))

(declare-fun tp!731830 () Bool)

(declare-fun b_and!184119 () Bool)

(assert (=> b!2306446 (= tp!731830 b_and!184119)))

(declare-fun b!2306449 () Bool)

(declare-fun b_free!69781 () Bool)

(declare-fun b_next!70485 () Bool)

(assert (=> b!2306449 (= b_free!69781 (not b_next!70485))))

(declare-fun tp!731824 () Bool)

(declare-fun b_and!184121 () Bool)

(assert (=> b!2306449 (= tp!731824 b_and!184121)))

(declare-fun b_free!69783 () Bool)

(declare-fun b_next!70487 () Bool)

(assert (=> b!2306449 (= b_free!69783 (not b_next!70487))))

(declare-fun tp!731831 () Bool)

(declare-fun b_and!184123 () Bool)

(assert (=> b!2306449 (= tp!731831 b_and!184123)))

(declare-fun b!2306443 () Bool)

(declare-fun b_free!69785 () Bool)

(declare-fun b_next!70489 () Bool)

(assert (=> b!2306443 (= b_free!69785 (not b_next!70489))))

(declare-fun tp!731832 () Bool)

(declare-fun b_and!184125 () Bool)

(assert (=> b!2306443 (= tp!731832 b_and!184125)))

(declare-fun b_free!69787 () Bool)

(declare-fun b_next!70491 () Bool)

(assert (=> b!2306443 (= b_free!69787 (not b_next!70491))))

(declare-fun tp!731829 () Bool)

(declare-fun b_and!184127 () Bool)

(assert (=> b!2306443 (= tp!731829 b_and!184127)))

(declare-datatypes ((List!27554 0))(
  ( (Nil!27460) (Cons!27460 (h!32861 (_ BitVec 16)) (t!206426 List!27554)) )
))
(declare-datatypes ((TokenValue!4567 0))(
  ( (FloatLiteralValue!9134 (text!32414 List!27554)) (TokenValueExt!4566 (__x!18194 Int)) (Broken!22835 (value!139336 List!27554)) (Object!4660) (End!4567) (Def!4567) (Underscore!4567) (Match!4567) (Else!4567) (Error!4567) (Case!4567) (If!4567) (Extends!4567) (Abstract!4567) (Class!4567) (Val!4567) (DelimiterValue!9134 (del!4627 List!27554)) (KeywordValue!4573 (value!139337 List!27554)) (CommentValue!9134 (value!139338 List!27554)) (WhitespaceValue!9134 (value!139339 List!27554)) (IndentationValue!4567 (value!139340 List!27554)) (String!29938) (Int32!4567) (Broken!22836 (value!139341 List!27554)) (Boolean!4568) (Unit!40373) (OperatorValue!4570 (op!4627 List!27554)) (IdentifierValue!9134 (value!139342 List!27554)) (IdentifierValue!9135 (value!139343 List!27554)) (WhitespaceValue!9135 (value!139344 List!27554)) (True!9134) (False!9134) (Broken!22837 (value!139345 List!27554)) (Broken!22838 (value!139346 List!27554)) (True!9135) (RightBrace!4567) (RightBracket!4567) (Colon!4567) (Null!4567) (Comma!4567) (LeftBracket!4567) (False!9135) (LeftBrace!4567) (ImaginaryLiteralValue!4567 (text!32415 List!27554)) (StringLiteralValue!13701 (value!139347 List!27554)) (EOFValue!4567 (value!139348 List!27554)) (IdentValue!4567 (value!139349 List!27554)) (DelimiterValue!9135 (value!139350 List!27554)) (DedentValue!4567 (value!139351 List!27554)) (NewLineValue!4567 (value!139352 List!27554)) (IntegerValue!13701 (value!139353 (_ BitVec 32)) (text!32416 List!27554)) (IntegerValue!13702 (value!139354 Int) (text!32417 List!27554)) (Times!4567) (Or!4567) (Equal!4567) (Minus!4567) (Broken!22839 (value!139355 List!27554)) (And!4567) (Div!4567) (LessEqual!4567) (Mod!4567) (Concat!11320) (Not!4567) (Plus!4567) (SpaceValue!4567 (value!139356 List!27554)) (IntegerValue!13703 (value!139357 Int) (text!32418 List!27554)) (StringLiteralValue!13702 (text!32419 List!27554)) (FloatLiteralValue!9135 (text!32420 List!27554)) (BytesLiteralValue!4567 (value!139358 List!27554)) (CommentValue!9135 (value!139359 List!27554)) (StringLiteralValue!13703 (value!139360 List!27554)) (ErrorTokenValue!4567 (msg!4628 List!27554)) )
))
(declare-datatypes ((C!13652 0))(
  ( (C!13653 (val!7874 Int)) )
))
(declare-datatypes ((List!27555 0))(
  ( (Nil!27461) (Cons!27461 (h!32862 C!13652) (t!206427 List!27555)) )
))
(declare-datatypes ((IArray!17921 0))(
  ( (IArray!17922 (innerList!9018 List!27555)) )
))
(declare-datatypes ((Conc!8958 0))(
  ( (Node!8958 (left!20805 Conc!8958) (right!21135 Conc!8958) (csize!18146 Int) (cheight!9169 Int)) (Leaf!13146 (xs!11900 IArray!17921) (csize!18147 Int)) (Empty!8958) )
))
(declare-datatypes ((BalanceConc!17644 0))(
  ( (BalanceConc!17645 (c!365592 Conc!8958)) )
))
(declare-datatypes ((Regex!6753 0))(
  ( (ElementMatch!6753 (c!365593 C!13652)) (Concat!11321 (regOne!14018 Regex!6753) (regTwo!14018 Regex!6753)) (EmptyExpr!6753) (Star!6753 (reg!7082 Regex!6753)) (EmptyLang!6753) (Union!6753 (regOne!14019 Regex!6753) (regTwo!14019 Regex!6753)) )
))
(declare-datatypes ((String!29939 0))(
  ( (String!29940 (value!139361 String)) )
))
(declare-datatypes ((TokenValueInjection!8674 0))(
  ( (TokenValueInjection!8675 (toValue!6219 Int) (toChars!6078 Int)) )
))
(declare-datatypes ((Rule!8610 0))(
  ( (Rule!8611 (regex!4405 Regex!6753) (tag!4895 String!29939) (isSeparator!4405 Bool) (transformation!4405 TokenValueInjection!8674)) )
))
(declare-fun otherR!12 () Rule!8610)

(declare-fun tp!731833 () Bool)

(declare-fun b!2306436 () Bool)

(declare-fun e!1478195 () Bool)

(declare-fun e!1478208 () Bool)

(declare-fun inv!37099 (String!29939) Bool)

(declare-fun inv!37102 (TokenValueInjection!8674) Bool)

(assert (=> b!2306436 (= e!1478208 (and tp!731833 (inv!37099 (tag!4895 otherR!12)) (inv!37102 (transformation!4405 otherR!12)) e!1478195))))

(assert (=> b!2306437 (= e!1478195 (and tp!731826 tp!731828))))

(declare-fun b!2306438 () Bool)

(declare-fun res!986168 () Bool)

(declare-fun e!1478210 () Bool)

(assert (=> b!2306438 (=> (not res!986168) (not e!1478210))))

(declare-datatypes ((List!27556 0))(
  ( (Nil!27462) (Cons!27462 (h!32863 Rule!8610) (t!206428 List!27556)) )
))
(declare-fun rules!1750 () List!27556)

(declare-fun r!2363 () Rule!8610)

(declare-fun contains!4793 (List!27556 Rule!8610) Bool)

(assert (=> b!2306438 (= res!986168 (contains!4793 rules!1750 r!2363))))

(declare-fun b!2306439 () Bool)

(declare-fun e!1478199 () Bool)

(declare-datatypes ((Token!8288 0))(
  ( (Token!8289 (value!139362 TokenValue!4567) (rule!6755 Rule!8610) (size!21669 Int) (originalCharacters!5175 List!27555)) )
))
(declare-datatypes ((List!27557 0))(
  ( (Nil!27463) (Cons!27463 (h!32864 Token!8288) (t!206429 List!27557)) )
))
(declare-fun tokens!456 () List!27557)

(declare-fun matchR!3010 (Regex!6753 List!27555) Bool)

(declare-fun list!10836 (BalanceConc!17644) List!27555)

(declare-fun charsOf!2793 (Token!8288) BalanceConc!17644)

(declare-fun head!5058 (List!27557) Token!8288)

(assert (=> b!2306439 (= e!1478199 (not (matchR!3010 (regex!4405 r!2363) (list!10836 (charsOf!2793 (head!5058 tokens!456))))))))

(declare-fun b!2306440 () Bool)

(declare-fun e!1478200 () Bool)

(declare-fun otherP!12 () List!27555)

(declare-fun size!21670 (BalanceConc!17644) Int)

(declare-fun size!21671 (List!27555) Int)

(assert (=> b!2306440 (= e!1478200 (<= (size!21670 (charsOf!2793 (head!5058 tokens!456))) (size!21671 otherP!12)))))

(declare-fun b!2306441 () Bool)

(declare-fun e!1478194 () Bool)

(declare-fun e!1478206 () Bool)

(assert (=> b!2306441 (= e!1478194 e!1478206)))

(declare-fun res!986172 () Bool)

(assert (=> b!2306441 (=> res!986172 e!1478206)))

(get-info :version)

(assert (=> b!2306441 (= res!986172 ((_ is Nil!27463) tokens!456))))

(declare-datatypes ((Unit!40374 0))(
  ( (Unit!40375) )
))
(declare-fun lt!855441 () Unit!40374)

(declare-fun e!1478217 () Unit!40374)

(assert (=> b!2306441 (= lt!855441 e!1478217)))

(declare-fun c!365591 () Bool)

(declare-fun lt!855435 () Int)

(declare-fun lt!855444 () Int)

(assert (=> b!2306441 (= c!365591 (= lt!855435 lt!855444))))

(declare-fun b!2306442 () Bool)

(declare-fun Unit!40376 () Unit!40374)

(assert (=> b!2306442 (= e!1478217 Unit!40376)))

(declare-fun e!1478201 () Bool)

(assert (=> b!2306443 (= e!1478201 (and tp!731832 tp!731829))))

(declare-fun b!2306444 () Bool)

(declare-fun e!1478211 () Bool)

(declare-fun tp_is_empty!10727 () Bool)

(declare-fun tp!731821 () Bool)

(assert (=> b!2306444 (= e!1478211 (and tp_is_empty!10727 tp!731821))))

(declare-fun b!2306445 () Bool)

(declare-fun e!1478204 () Bool)

(declare-fun lt!855433 () List!27555)

(assert (=> b!2306445 (= e!1478204 (matchR!3010 (regex!4405 r!2363) lt!855433))))

(declare-fun e!1478196 () Bool)

(assert (=> b!2306446 (= e!1478196 (and tp!731823 tp!731830))))

(declare-fun b!2306447 () Bool)

(declare-fun Unit!40377 () Unit!40374)

(assert (=> b!2306447 (= e!1478217 Unit!40377)))

(declare-fun lt!855431 () Unit!40374)

(declare-fun lemmaSameIndexThenSameElement!198 (List!27556 Rule!8610 Rule!8610) Unit!40374)

(assert (=> b!2306447 (= lt!855431 (lemmaSameIndexThenSameElement!198 rules!1750 r!2363 otherR!12))))

(assert (=> b!2306447 false))

(declare-fun res!986173 () Bool)

(assert (=> start!227112 (=> (not res!986173) (not e!1478210))))

(declare-datatypes ((LexerInterface!4002 0))(
  ( (LexerInterfaceExt!3999 (__x!18195 Int)) (Lexer!4000) )
))
(declare-fun thiss!16613 () LexerInterface!4002)

(assert (=> start!227112 (= res!986173 ((_ is Lexer!4000) thiss!16613))))

(assert (=> start!227112 e!1478210))

(assert (=> start!227112 true))

(assert (=> start!227112 e!1478211))

(assert (=> start!227112 e!1478208))

(declare-fun e!1478202 () Bool)

(assert (=> start!227112 e!1478202))

(declare-fun e!1478222 () Bool)

(assert (=> start!227112 e!1478222))

(declare-fun e!1478193 () Bool)

(assert (=> start!227112 e!1478193))

(declare-fun e!1478216 () Bool)

(assert (=> start!227112 e!1478216))

(declare-fun e!1478203 () Bool)

(assert (=> start!227112 e!1478203))

(declare-fun b!2306435 () Bool)

(declare-fun e!1478218 () Bool)

(assert (=> b!2306435 (= e!1478210 e!1478218)))

(declare-fun res!986164 () Bool)

(assert (=> b!2306435 (=> (not res!986164) (not e!1478218))))

(declare-fun suffix!886 () List!27555)

(declare-datatypes ((IArray!17923 0))(
  ( (IArray!17924 (innerList!9019 List!27557)) )
))
(declare-datatypes ((Conc!8959 0))(
  ( (Node!8959 (left!20806 Conc!8959) (right!21136 Conc!8959) (csize!18148 Int) (cheight!9170 Int)) (Leaf!13147 (xs!11901 IArray!17923) (csize!18149 Int)) (Empty!8959) )
))
(declare-datatypes ((BalanceConc!17646 0))(
  ( (BalanceConc!17647 (c!365594 Conc!8959)) )
))
(declare-datatypes ((tuple2!27374 0))(
  ( (tuple2!27375 (_1!16197 BalanceConc!17646) (_2!16197 BalanceConc!17644)) )
))
(declare-fun lt!855443 () tuple2!27374)

(declare-datatypes ((tuple2!27376 0))(
  ( (tuple2!27377 (_1!16198 List!27557) (_2!16198 List!27555)) )
))
(declare-fun list!10837 (BalanceConc!17646) List!27557)

(assert (=> b!2306435 (= res!986164 (= (tuple2!27377 (list!10837 (_1!16197 lt!855443)) (list!10836 (_2!16197 lt!855443))) (tuple2!27377 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27555)

(declare-fun lex!1841 (LexerInterface!4002 List!27556 BalanceConc!17644) tuple2!27374)

(declare-fun seqFromList!3109 (List!27555) BalanceConc!17644)

(assert (=> b!2306435 (= lt!855443 (lex!1841 thiss!16613 rules!1750 (seqFromList!3109 input!1722)))))

(declare-fun b!2306448 () Bool)

(declare-fun tp!731837 () Bool)

(assert (=> b!2306448 (= e!1478202 (and tp_is_empty!10727 tp!731837))))

(declare-fun e!1478219 () Bool)

(assert (=> b!2306449 (= e!1478219 (and tp!731824 tp!731831))))

(declare-fun b!2306450 () Bool)

(declare-fun e!1478198 () Bool)

(assert (=> b!2306450 (= e!1478198 e!1478204)))

(declare-fun res!986156 () Bool)

(assert (=> b!2306450 (=> res!986156 e!1478204)))

(declare-fun isPrefix!2395 (List!27555 List!27555) Bool)

(assert (=> b!2306450 (= res!986156 (not (isPrefix!2395 lt!855433 input!1722)))))

(declare-datatypes ((tuple2!27378 0))(
  ( (tuple2!27379 (_1!16199 Token!8288) (_2!16199 List!27555)) )
))
(declare-fun lt!855442 () tuple2!27378)

(declare-fun lt!855436 () Int)

(declare-datatypes ((Option!5403 0))(
  ( (None!5402) (Some!5402 (v!30508 tuple2!27378)) )
))
(declare-fun maxPrefixOneRule!1428 (LexerInterface!4002 Rule!8610 List!27555) Option!5403)

(declare-fun apply!6667 (TokenValueInjection!8674 BalanceConc!17644) TokenValue!4567)

(assert (=> b!2306450 (= (maxPrefixOneRule!1428 thiss!16613 r!2363 input!1722) (Some!5402 (tuple2!27379 (Token!8289 (apply!6667 (transformation!4405 r!2363) (seqFromList!3109 lt!855433)) r!2363 lt!855436 lt!855433) (_2!16199 lt!855442))))))

(declare-fun lt!855429 () Unit!40374)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!601 (LexerInterface!4002 List!27556 List!27555 List!27555 List!27555 Rule!8610) Unit!40374)

(assert (=> b!2306450 (= lt!855429 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!601 thiss!16613 rules!1750 lt!855433 input!1722 (_2!16199 lt!855442) r!2363))))

(declare-fun b!2306451 () Bool)

(declare-fun e!1478223 () Bool)

(declare-fun e!1478220 () Bool)

(assert (=> b!2306451 (= e!1478223 (not e!1478220))))

(declare-fun res!986171 () Bool)

(assert (=> b!2306451 (=> res!986171 e!1478220)))

(assert (=> b!2306451 (= res!986171 e!1478199)))

(declare-fun res!986170 () Bool)

(assert (=> b!2306451 (=> (not res!986170) (not e!1478199))))

(declare-fun lt!855439 () Bool)

(assert (=> b!2306451 (= res!986170 (not lt!855439))))

(declare-fun ruleValid!1495 (LexerInterface!4002 Rule!8610) Bool)

(assert (=> b!2306451 (ruleValid!1495 thiss!16613 r!2363)))

(declare-fun lt!855432 () Unit!40374)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!900 (LexerInterface!4002 Rule!8610 List!27556) Unit!40374)

(assert (=> b!2306451 (= lt!855432 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!900 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2306452 () Bool)

(declare-fun res!986159 () Bool)

(assert (=> b!2306452 (=> (not res!986159) (not e!1478223))))

(assert (=> b!2306452 (= res!986159 (isPrefix!2395 otherP!12 input!1722))))

(declare-fun b!2306453 () Bool)

(declare-fun tp!731825 () Bool)

(declare-fun e!1478212 () Bool)

(declare-fun inv!37103 (Token!8288) Bool)

(assert (=> b!2306453 (= e!1478203 (and (inv!37103 (h!32864 tokens!456)) e!1478212 tp!731825))))

(declare-fun b!2306454 () Bool)

(declare-fun res!986161 () Bool)

(assert (=> b!2306454 (=> (not res!986161) (not e!1478210))))

(assert (=> b!2306454 (= res!986161 (contains!4793 rules!1750 otherR!12))))

(declare-fun tp!731822 () Bool)

(declare-fun e!1478207 () Bool)

(declare-fun b!2306455 () Bool)

(declare-fun inv!21 (TokenValue!4567) Bool)

(assert (=> b!2306455 (= e!1478212 (and (inv!21 (value!139362 (h!32864 tokens!456))) e!1478207 tp!731822))))

(declare-fun b!2306456 () Bool)

(declare-fun res!986169 () Bool)

(assert (=> b!2306456 (=> (not res!986169) (not e!1478210))))

(declare-fun rulesInvariant!3504 (LexerInterface!4002 List!27556) Bool)

(assert (=> b!2306456 (= res!986169 (rulesInvariant!3504 thiss!16613 rules!1750))))

(declare-fun tp!731834 () Bool)

(declare-fun b!2306457 () Bool)

(declare-fun e!1478213 () Bool)

(assert (=> b!2306457 (= e!1478213 (and tp!731834 (inv!37099 (tag!4895 (h!32863 rules!1750))) (inv!37102 (transformation!4405 (h!32863 rules!1750))) e!1478201))))

(declare-fun b!2306458 () Bool)

(assert (=> b!2306458 (= e!1478220 e!1478194)))

(declare-fun res!986166 () Bool)

(assert (=> b!2306458 (=> res!986166 e!1478194)))

(assert (=> b!2306458 (= res!986166 (> lt!855435 lt!855444))))

(declare-fun getIndex!418 (List!27556 Rule!8610) Int)

(assert (=> b!2306458 (= lt!855444 (getIndex!418 rules!1750 otherR!12))))

(assert (=> b!2306458 (= lt!855435 (getIndex!418 rules!1750 r!2363))))

(assert (=> b!2306458 (ruleValid!1495 thiss!16613 otherR!12)))

(declare-fun lt!855440 () Unit!40374)

(assert (=> b!2306458 (= lt!855440 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!900 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2306459 () Bool)

(declare-fun tp!731836 () Bool)

(assert (=> b!2306459 (= e!1478222 (and tp_is_empty!10727 tp!731836))))

(declare-fun b!2306460 () Bool)

(declare-fun res!986162 () Bool)

(assert (=> b!2306460 (=> (not res!986162) (not e!1478210))))

(declare-fun isEmpty!15699 (List!27556) Bool)

(assert (=> b!2306460 (= res!986162 (not (isEmpty!15699 rules!1750)))))

(declare-fun b!2306461 () Bool)

(declare-fun e!1478215 () Bool)

(assert (=> b!2306461 (= e!1478215 (= (rule!6755 (head!5058 tokens!456)) r!2363))))

(declare-fun b!2306462 () Bool)

(declare-fun tp!731820 () Bool)

(assert (=> b!2306462 (= e!1478193 (and e!1478213 tp!731820))))

(declare-fun tp!731827 () Bool)

(declare-fun b!2306463 () Bool)

(assert (=> b!2306463 (= e!1478207 (and tp!731827 (inv!37099 (tag!4895 (rule!6755 (h!32864 tokens!456)))) (inv!37102 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) e!1478196))))

(declare-fun b!2306464 () Bool)

(assert (=> b!2306464 (= e!1478218 e!1478223)))

(declare-fun res!986163 () Bool)

(assert (=> b!2306464 (=> (not res!986163) (not e!1478223))))

(assert (=> b!2306464 (= res!986163 e!1478200)))

(declare-fun res!986158 () Bool)

(assert (=> b!2306464 (=> res!986158 e!1478200)))

(assert (=> b!2306464 (= res!986158 lt!855439)))

(declare-fun isEmpty!15700 (List!27557) Bool)

(assert (=> b!2306464 (= lt!855439 (isEmpty!15700 tokens!456))))

(declare-fun b!2306465 () Bool)

(assert (=> b!2306465 (= e!1478206 e!1478198)))

(declare-fun res!986160 () Bool)

(assert (=> b!2306465 (=> res!986160 e!1478198)))

(declare-fun lt!855438 () Int)

(assert (=> b!2306465 (= res!986160 (<= lt!855438 lt!855436))))

(assert (=> b!2306465 (= lt!855436 (size!21671 lt!855433))))

(assert (=> b!2306465 (= lt!855438 (size!21671 otherP!12))))

(declare-fun lt!855434 () List!27555)

(assert (=> b!2306465 (= (_2!16199 lt!855442) lt!855434)))

(declare-fun lt!855437 () Unit!40374)

(declare-fun lemmaSamePrefixThenSameSuffix!1076 (List!27555 List!27555 List!27555 List!27555 List!27555) Unit!40374)

(assert (=> b!2306465 (= lt!855437 (lemmaSamePrefixThenSameSuffix!1076 lt!855433 (_2!16199 lt!855442) lt!855433 lt!855434 input!1722))))

(declare-fun getSuffix!1174 (List!27555 List!27555) List!27555)

(assert (=> b!2306465 (= lt!855434 (getSuffix!1174 input!1722 lt!855433))))

(declare-fun ++!6723 (List!27555 List!27555) List!27555)

(assert (=> b!2306465 (isPrefix!2395 lt!855433 (++!6723 lt!855433 (_2!16199 lt!855442)))))

(declare-fun lt!855430 () Unit!40374)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1588 (List!27555 List!27555) Unit!40374)

(assert (=> b!2306465 (= lt!855430 (lemmaConcatTwoListThenFirstIsPrefix!1588 lt!855433 (_2!16199 lt!855442)))))

(assert (=> b!2306465 (= lt!855433 (list!10836 (charsOf!2793 (h!32864 tokens!456))))))

(declare-fun get!8279 (Option!5403) tuple2!27378)

(declare-fun maxPrefix!2258 (LexerInterface!4002 List!27556 List!27555) Option!5403)

(assert (=> b!2306465 (= lt!855442 (get!8279 (maxPrefix!2258 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2306466 () Bool)

(declare-fun res!986165 () Bool)

(assert (=> b!2306466 (=> (not res!986165) (not e!1478223))))

(assert (=> b!2306466 (= res!986165 (not (= r!2363 otherR!12)))))

(declare-fun tp!731835 () Bool)

(declare-fun b!2306467 () Bool)

(assert (=> b!2306467 (= e!1478216 (and tp!731835 (inv!37099 (tag!4895 r!2363)) (inv!37102 (transformation!4405 r!2363)) e!1478219))))

(declare-fun b!2306468 () Bool)

(declare-fun res!986167 () Bool)

(assert (=> b!2306468 (=> (not res!986167) (not e!1478223))))

(assert (=> b!2306468 (= res!986167 e!1478215)))

(declare-fun res!986157 () Bool)

(assert (=> b!2306468 (=> res!986157 e!1478215)))

(assert (=> b!2306468 (= res!986157 lt!855439)))

(assert (= (and start!227112 res!986173) b!2306460))

(assert (= (and b!2306460 res!986162) b!2306456))

(assert (= (and b!2306456 res!986169) b!2306438))

(assert (= (and b!2306438 res!986168) b!2306454))

(assert (= (and b!2306454 res!986161) b!2306435))

(assert (= (and b!2306435 res!986164) b!2306464))

(assert (= (and b!2306464 (not res!986158)) b!2306440))

(assert (= (and b!2306464 res!986163) b!2306468))

(assert (= (and b!2306468 (not res!986157)) b!2306461))

(assert (= (and b!2306468 res!986167) b!2306452))

(assert (= (and b!2306452 res!986159) b!2306466))

(assert (= (and b!2306466 res!986165) b!2306451))

(assert (= (and b!2306451 res!986170) b!2306439))

(assert (= (and b!2306451 (not res!986171)) b!2306458))

(assert (= (and b!2306458 (not res!986166)) b!2306441))

(assert (= (and b!2306441 c!365591) b!2306447))

(assert (= (and b!2306441 (not c!365591)) b!2306442))

(assert (= (and b!2306441 (not res!986172)) b!2306465))

(assert (= (and b!2306465 (not res!986160)) b!2306450))

(assert (= (and b!2306450 (not res!986156)) b!2306445))

(assert (= (and start!227112 ((_ is Cons!27461) input!1722)) b!2306444))

(assert (= b!2306436 b!2306437))

(assert (= start!227112 b!2306436))

(assert (= (and start!227112 ((_ is Cons!27461) suffix!886)) b!2306448))

(assert (= (and start!227112 ((_ is Cons!27461) otherP!12)) b!2306459))

(assert (= b!2306457 b!2306443))

(assert (= b!2306462 b!2306457))

(assert (= (and start!227112 ((_ is Cons!27462) rules!1750)) b!2306462))

(assert (= b!2306467 b!2306449))

(assert (= start!227112 b!2306467))

(assert (= b!2306463 b!2306446))

(assert (= b!2306455 b!2306463))

(assert (= b!2306453 b!2306455))

(assert (= (and start!227112 ((_ is Cons!27463) tokens!456)) b!2306453))

(declare-fun m!2733501 () Bool)

(assert (=> b!2306445 m!2733501))

(declare-fun m!2733503 () Bool)

(assert (=> b!2306465 m!2733503))

(declare-fun m!2733505 () Bool)

(assert (=> b!2306465 m!2733505))

(declare-fun m!2733507 () Bool)

(assert (=> b!2306465 m!2733507))

(declare-fun m!2733509 () Bool)

(assert (=> b!2306465 m!2733509))

(declare-fun m!2733511 () Bool)

(assert (=> b!2306465 m!2733511))

(declare-fun m!2733513 () Bool)

(assert (=> b!2306465 m!2733513))

(declare-fun m!2733515 () Bool)

(assert (=> b!2306465 m!2733515))

(declare-fun m!2733517 () Bool)

(assert (=> b!2306465 m!2733517))

(assert (=> b!2306465 m!2733515))

(assert (=> b!2306465 m!2733511))

(declare-fun m!2733519 () Bool)

(assert (=> b!2306465 m!2733519))

(declare-fun m!2733521 () Bool)

(assert (=> b!2306465 m!2733521))

(declare-fun m!2733523 () Bool)

(assert (=> b!2306465 m!2733523))

(assert (=> b!2306465 m!2733505))

(declare-fun m!2733525 () Bool)

(assert (=> b!2306450 m!2733525))

(declare-fun m!2733527 () Bool)

(assert (=> b!2306450 m!2733527))

(declare-fun m!2733529 () Bool)

(assert (=> b!2306450 m!2733529))

(declare-fun m!2733531 () Bool)

(assert (=> b!2306450 m!2733531))

(assert (=> b!2306450 m!2733527))

(declare-fun m!2733533 () Bool)

(assert (=> b!2306450 m!2733533))

(declare-fun m!2733535 () Bool)

(assert (=> b!2306440 m!2733535))

(assert (=> b!2306440 m!2733535))

(declare-fun m!2733537 () Bool)

(assert (=> b!2306440 m!2733537))

(assert (=> b!2306440 m!2733537))

(declare-fun m!2733539 () Bool)

(assert (=> b!2306440 m!2733539))

(assert (=> b!2306440 m!2733521))

(declare-fun m!2733541 () Bool)

(assert (=> b!2306458 m!2733541))

(declare-fun m!2733543 () Bool)

(assert (=> b!2306458 m!2733543))

(declare-fun m!2733545 () Bool)

(assert (=> b!2306458 m!2733545))

(declare-fun m!2733547 () Bool)

(assert (=> b!2306458 m!2733547))

(declare-fun m!2733549 () Bool)

(assert (=> b!2306438 m!2733549))

(declare-fun m!2733551 () Bool)

(assert (=> b!2306447 m!2733551))

(declare-fun m!2733553 () Bool)

(assert (=> b!2306453 m!2733553))

(assert (=> b!2306461 m!2733535))

(declare-fun m!2733555 () Bool)

(assert (=> b!2306464 m!2733555))

(declare-fun m!2733557 () Bool)

(assert (=> b!2306460 m!2733557))

(declare-fun m!2733559 () Bool)

(assert (=> b!2306454 m!2733559))

(assert (=> b!2306439 m!2733535))

(assert (=> b!2306439 m!2733535))

(assert (=> b!2306439 m!2733537))

(assert (=> b!2306439 m!2733537))

(declare-fun m!2733561 () Bool)

(assert (=> b!2306439 m!2733561))

(assert (=> b!2306439 m!2733561))

(declare-fun m!2733563 () Bool)

(assert (=> b!2306439 m!2733563))

(declare-fun m!2733565 () Bool)

(assert (=> b!2306436 m!2733565))

(declare-fun m!2733567 () Bool)

(assert (=> b!2306436 m!2733567))

(declare-fun m!2733569 () Bool)

(assert (=> b!2306467 m!2733569))

(declare-fun m!2733571 () Bool)

(assert (=> b!2306467 m!2733571))

(declare-fun m!2733573 () Bool)

(assert (=> b!2306457 m!2733573))

(declare-fun m!2733575 () Bool)

(assert (=> b!2306457 m!2733575))

(declare-fun m!2733577 () Bool)

(assert (=> b!2306456 m!2733577))

(declare-fun m!2733579 () Bool)

(assert (=> b!2306463 m!2733579))

(declare-fun m!2733581 () Bool)

(assert (=> b!2306463 m!2733581))

(declare-fun m!2733583 () Bool)

(assert (=> b!2306435 m!2733583))

(declare-fun m!2733585 () Bool)

(assert (=> b!2306435 m!2733585))

(declare-fun m!2733587 () Bool)

(assert (=> b!2306435 m!2733587))

(assert (=> b!2306435 m!2733587))

(declare-fun m!2733589 () Bool)

(assert (=> b!2306435 m!2733589))

(declare-fun m!2733591 () Bool)

(assert (=> b!2306451 m!2733591))

(declare-fun m!2733593 () Bool)

(assert (=> b!2306451 m!2733593))

(declare-fun m!2733595 () Bool)

(assert (=> b!2306455 m!2733595))

(declare-fun m!2733597 () Bool)

(assert (=> b!2306452 m!2733597))

(check-sat (not b!2306440) b_and!184125 b_and!184121 (not b!2306457) (not b!2306450) tp_is_empty!10727 (not b_next!70491) (not b!2306454) (not b!2306438) (not b!2306463) (not b!2306451) (not b!2306455) (not b!2306444) (not b!2306445) (not b_next!70481) b_and!184119 (not b_next!70477) (not b!2306447) (not b!2306465) b_and!184117 (not b_next!70483) (not b_next!70479) (not b!2306464) (not b!2306467) (not b!2306448) (not b!2306435) (not b!2306462) (not b_next!70489) (not b_next!70487) (not b!2306452) b_and!184123 (not b!2306458) b_and!184113 (not b!2306436) (not b!2306439) (not b!2306460) b_and!184115 (not b_next!70485) (not b!2306459) b_and!184127 (not b!2306461) (not b!2306453) (not b!2306456))
(check-sat b_and!184117 b_and!184125 b_and!184121 (not b_next!70491) b_and!184127 (not b_next!70481) b_and!184119 (not b_next!70477) (not b_next!70483) (not b_next!70479) (not b_next!70489) (not b_next!70487) b_and!184123 b_and!184113 (not b_next!70485) b_and!184115)
(get-model)

(declare-fun d!682190 () Bool)

(declare-fun lt!855460 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3709 (List!27556) (InoxSet Rule!8610))

(assert (=> d!682190 (= lt!855460 (select (content!3709 rules!1750) otherR!12))))

(declare-fun e!1478245 () Bool)

(assert (=> d!682190 (= lt!855460 e!1478245)))

(declare-fun res!986203 () Bool)

(assert (=> d!682190 (=> (not res!986203) (not e!1478245))))

(assert (=> d!682190 (= res!986203 ((_ is Cons!27462) rules!1750))))

(assert (=> d!682190 (= (contains!4793 rules!1750 otherR!12) lt!855460)))

(declare-fun b!2306501 () Bool)

(declare-fun e!1478246 () Bool)

(assert (=> b!2306501 (= e!1478245 e!1478246)))

(declare-fun res!986204 () Bool)

(assert (=> b!2306501 (=> res!986204 e!1478246)))

(assert (=> b!2306501 (= res!986204 (= (h!32863 rules!1750) otherR!12))))

(declare-fun b!2306502 () Bool)

(assert (=> b!2306502 (= e!1478246 (contains!4793 (t!206428 rules!1750) otherR!12))))

(assert (= (and d!682190 res!986203) b!2306501))

(assert (= (and b!2306501 (not res!986204)) b!2306502))

(declare-fun m!2733627 () Bool)

(assert (=> d!682190 m!2733627))

(declare-fun m!2733629 () Bool)

(assert (=> d!682190 m!2733629))

(declare-fun m!2733631 () Bool)

(assert (=> b!2306502 m!2733631))

(assert (=> b!2306454 d!682190))

(declare-fun d!682202 () Bool)

(declare-fun lt!855468 () Int)

(assert (=> d!682202 (>= lt!855468 0)))

(declare-fun e!1478256 () Int)

(assert (=> d!682202 (= lt!855468 e!1478256)))

(declare-fun c!365609 () Bool)

(assert (=> d!682202 (= c!365609 ((_ is Nil!27461) lt!855433))))

(assert (=> d!682202 (= (size!21671 lt!855433) lt!855468)))

(declare-fun b!2306520 () Bool)

(assert (=> b!2306520 (= e!1478256 0)))

(declare-fun b!2306521 () Bool)

(assert (=> b!2306521 (= e!1478256 (+ 1 (size!21671 (t!206427 lt!855433))))))

(assert (= (and d!682202 c!365609) b!2306520))

(assert (= (and d!682202 (not c!365609)) b!2306521))

(declare-fun m!2733645 () Bool)

(assert (=> b!2306521 m!2733645))

(assert (=> b!2306465 d!682202))

(declare-fun d!682212 () Bool)

(declare-fun list!10839 (Conc!8958) List!27555)

(assert (=> d!682212 (= (list!10836 (charsOf!2793 (h!32864 tokens!456))) (list!10839 (c!365592 (charsOf!2793 (h!32864 tokens!456)))))))

(declare-fun bs!457957 () Bool)

(assert (= bs!457957 d!682212))

(declare-fun m!2733651 () Bool)

(assert (=> bs!457957 m!2733651))

(assert (=> b!2306465 d!682212))

(declare-fun d!682218 () Bool)

(assert (=> d!682218 (isPrefix!2395 lt!855433 (++!6723 lt!855433 (_2!16199 lt!855442)))))

(declare-fun lt!855477 () Unit!40374)

(declare-fun choose!13481 (List!27555 List!27555) Unit!40374)

(assert (=> d!682218 (= lt!855477 (choose!13481 lt!855433 (_2!16199 lt!855442)))))

(assert (=> d!682218 (= (lemmaConcatTwoListThenFirstIsPrefix!1588 lt!855433 (_2!16199 lt!855442)) lt!855477)))

(declare-fun bs!457958 () Bool)

(assert (= bs!457958 d!682218))

(assert (=> bs!457958 m!2733505))

(assert (=> bs!457958 m!2733505))

(assert (=> bs!457958 m!2733507))

(declare-fun m!2733665 () Bool)

(assert (=> bs!457958 m!2733665))

(assert (=> b!2306465 d!682218))

(declare-fun d!682222 () Bool)

(declare-fun lt!855484 () BalanceConc!17644)

(assert (=> d!682222 (= (list!10836 lt!855484) (originalCharacters!5175 (h!32864 tokens!456)))))

(declare-fun dynLambda!11943 (Int TokenValue!4567) BalanceConc!17644)

(assert (=> d!682222 (= lt!855484 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (value!139362 (h!32864 tokens!456))))))

(assert (=> d!682222 (= (charsOf!2793 (h!32864 tokens!456)) lt!855484)))

(declare-fun b_lambda!73489 () Bool)

(assert (=> (not b_lambda!73489) (not d!682222)))

(declare-fun t!206447 () Bool)

(declare-fun tb!138103 () Bool)

(assert (=> (and b!2306437 (= (toChars!6078 (transformation!4405 otherR!12)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206447) tb!138103))

(declare-fun b!2306545 () Bool)

(declare-fun e!1478272 () Bool)

(declare-fun tp!731844 () Bool)

(declare-fun inv!37106 (Conc!8958) Bool)

(assert (=> b!2306545 (= e!1478272 (and (inv!37106 (c!365592 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (value!139362 (h!32864 tokens!456))))) tp!731844))))

(declare-fun result!168356 () Bool)

(declare-fun inv!37107 (BalanceConc!17644) Bool)

(assert (=> tb!138103 (= result!168356 (and (inv!37107 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (value!139362 (h!32864 tokens!456)))) e!1478272))))

(assert (= tb!138103 b!2306545))

(declare-fun m!2733685 () Bool)

(assert (=> b!2306545 m!2733685))

(declare-fun m!2733687 () Bool)

(assert (=> tb!138103 m!2733687))

(assert (=> d!682222 t!206447))

(declare-fun b_and!184145 () Bool)

(assert (= b_and!184115 (and (=> t!206447 result!168356) b_and!184145)))

(declare-fun t!206449 () Bool)

(declare-fun tb!138105 () Bool)

(assert (=> (and b!2306446 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206449) tb!138105))

(declare-fun result!168360 () Bool)

(assert (= result!168360 result!168356))

(assert (=> d!682222 t!206449))

(declare-fun b_and!184147 () Bool)

(assert (= b_and!184119 (and (=> t!206449 result!168360) b_and!184147)))

(declare-fun tb!138107 () Bool)

(declare-fun t!206451 () Bool)

(assert (=> (and b!2306449 (= (toChars!6078 (transformation!4405 r!2363)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206451) tb!138107))

(declare-fun result!168362 () Bool)

(assert (= result!168362 result!168356))

(assert (=> d!682222 t!206451))

(declare-fun b_and!184149 () Bool)

(assert (= b_and!184123 (and (=> t!206451 result!168362) b_and!184149)))

(declare-fun t!206453 () Bool)

(declare-fun tb!138109 () Bool)

(assert (=> (and b!2306443 (= (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206453) tb!138109))

(declare-fun result!168364 () Bool)

(assert (= result!168364 result!168356))

(assert (=> d!682222 t!206453))

(declare-fun b_and!184151 () Bool)

(assert (= b_and!184127 (and (=> t!206453 result!168364) b_and!184151)))

(declare-fun m!2733689 () Bool)

(assert (=> d!682222 m!2733689))

(declare-fun m!2733691 () Bool)

(assert (=> d!682222 m!2733691))

(assert (=> b!2306465 d!682222))

(declare-fun b!2306568 () Bool)

(declare-fun res!986227 () Bool)

(declare-fun e!1478283 () Bool)

(assert (=> b!2306568 (=> (not res!986227) (not e!1478283))))

(declare-fun lt!855493 () List!27555)

(assert (=> b!2306568 (= res!986227 (= (size!21671 lt!855493) (+ (size!21671 lt!855433) (size!21671 (_2!16199 lt!855442)))))))

(declare-fun b!2306566 () Bool)

(declare-fun e!1478284 () List!27555)

(assert (=> b!2306566 (= e!1478284 (_2!16199 lt!855442))))

(declare-fun b!2306569 () Bool)

(assert (=> b!2306569 (= e!1478283 (or (not (= (_2!16199 lt!855442) Nil!27461)) (= lt!855493 lt!855433)))))

(declare-fun d!682230 () Bool)

(assert (=> d!682230 e!1478283))

(declare-fun res!986228 () Bool)

(assert (=> d!682230 (=> (not res!986228) (not e!1478283))))

(declare-fun content!3711 (List!27555) (InoxSet C!13652))

(assert (=> d!682230 (= res!986228 (= (content!3711 lt!855493) ((_ map or) (content!3711 lt!855433) (content!3711 (_2!16199 lt!855442)))))))

(assert (=> d!682230 (= lt!855493 e!1478284)))

(declare-fun c!365618 () Bool)

(assert (=> d!682230 (= c!365618 ((_ is Nil!27461) lt!855433))))

(assert (=> d!682230 (= (++!6723 lt!855433 (_2!16199 lt!855442)) lt!855493)))

(declare-fun b!2306567 () Bool)

(assert (=> b!2306567 (= e!1478284 (Cons!27461 (h!32862 lt!855433) (++!6723 (t!206427 lt!855433) (_2!16199 lt!855442))))))

(assert (= (and d!682230 c!365618) b!2306566))

(assert (= (and d!682230 (not c!365618)) b!2306567))

(assert (= (and d!682230 res!986228) b!2306568))

(assert (= (and b!2306568 res!986227) b!2306569))

(declare-fun m!2733705 () Bool)

(assert (=> b!2306568 m!2733705))

(assert (=> b!2306568 m!2733513))

(declare-fun m!2733707 () Bool)

(assert (=> b!2306568 m!2733707))

(declare-fun m!2733709 () Bool)

(assert (=> d!682230 m!2733709))

(declare-fun m!2733711 () Bool)

(assert (=> d!682230 m!2733711))

(declare-fun m!2733713 () Bool)

(assert (=> d!682230 m!2733713))

(declare-fun m!2733715 () Bool)

(assert (=> b!2306567 m!2733715))

(assert (=> b!2306465 d!682230))

(declare-fun d!682236 () Bool)

(declare-fun lt!855496 () List!27555)

(assert (=> d!682236 (= (++!6723 lt!855433 lt!855496) input!1722)))

(declare-fun e!1478287 () List!27555)

(assert (=> d!682236 (= lt!855496 e!1478287)))

(declare-fun c!365621 () Bool)

(assert (=> d!682236 (= c!365621 ((_ is Cons!27461) lt!855433))))

(assert (=> d!682236 (>= (size!21671 input!1722) (size!21671 lt!855433))))

(assert (=> d!682236 (= (getSuffix!1174 input!1722 lt!855433) lt!855496)))

(declare-fun b!2306574 () Bool)

(declare-fun tail!3335 (List!27555) List!27555)

(assert (=> b!2306574 (= e!1478287 (getSuffix!1174 (tail!3335 input!1722) (t!206427 lt!855433)))))

(declare-fun b!2306575 () Bool)

(assert (=> b!2306575 (= e!1478287 input!1722)))

(assert (= (and d!682236 c!365621) b!2306574))

(assert (= (and d!682236 (not c!365621)) b!2306575))

(declare-fun m!2733717 () Bool)

(assert (=> d!682236 m!2733717))

(declare-fun m!2733719 () Bool)

(assert (=> d!682236 m!2733719))

(assert (=> d!682236 m!2733513))

(declare-fun m!2733721 () Bool)

(assert (=> b!2306574 m!2733721))

(assert (=> b!2306574 m!2733721))

(declare-fun m!2733723 () Bool)

(assert (=> b!2306574 m!2733723))

(assert (=> b!2306465 d!682236))

(declare-fun d!682238 () Bool)

(assert (=> d!682238 (= (_2!16199 lt!855442) lt!855434)))

(declare-fun lt!855499 () Unit!40374)

(declare-fun choose!13483 (List!27555 List!27555 List!27555 List!27555 List!27555) Unit!40374)

(assert (=> d!682238 (= lt!855499 (choose!13483 lt!855433 (_2!16199 lt!855442) lt!855433 lt!855434 input!1722))))

(assert (=> d!682238 (isPrefix!2395 lt!855433 input!1722)))

(assert (=> d!682238 (= (lemmaSamePrefixThenSameSuffix!1076 lt!855433 (_2!16199 lt!855442) lt!855433 lt!855434 input!1722) lt!855499)))

(declare-fun bs!457960 () Bool)

(assert (= bs!457960 d!682238))

(declare-fun m!2733725 () Bool)

(assert (=> bs!457960 m!2733725))

(assert (=> bs!457960 m!2733531))

(assert (=> b!2306465 d!682238))

(declare-fun d!682240 () Bool)

(declare-fun lt!855500 () Int)

(assert (=> d!682240 (>= lt!855500 0)))

(declare-fun e!1478288 () Int)

(assert (=> d!682240 (= lt!855500 e!1478288)))

(declare-fun c!365622 () Bool)

(assert (=> d!682240 (= c!365622 ((_ is Nil!27461) otherP!12))))

(assert (=> d!682240 (= (size!21671 otherP!12) lt!855500)))

(declare-fun b!2306576 () Bool)

(assert (=> b!2306576 (= e!1478288 0)))

(declare-fun b!2306577 () Bool)

(assert (=> b!2306577 (= e!1478288 (+ 1 (size!21671 (t!206427 otherP!12))))))

(assert (= (and d!682240 c!365622) b!2306576))

(assert (= (and d!682240 (not c!365622)) b!2306577))

(declare-fun m!2733727 () Bool)

(assert (=> b!2306577 m!2733727))

(assert (=> b!2306465 d!682240))

(declare-fun d!682242 () Bool)

(assert (=> d!682242 (= (get!8279 (maxPrefix!2258 thiss!16613 rules!1750 input!1722)) (v!30508 (maxPrefix!2258 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2306465 d!682242))

(declare-fun b!2306633 () Bool)

(declare-fun res!986273 () Bool)

(declare-fun e!1478315 () Bool)

(assert (=> b!2306633 (=> (not res!986273) (not e!1478315))))

(declare-fun lt!855537 () Option!5403)

(assert (=> b!2306633 (= res!986273 (matchR!3010 (regex!4405 (rule!6755 (_1!16199 (get!8279 lt!855537)))) (list!10836 (charsOf!2793 (_1!16199 (get!8279 lt!855537))))))))

(declare-fun b!2306634 () Bool)

(assert (=> b!2306634 (= e!1478315 (contains!4793 rules!1750 (rule!6755 (_1!16199 (get!8279 lt!855537)))))))

(declare-fun b!2306635 () Bool)

(declare-fun res!986272 () Bool)

(assert (=> b!2306635 (=> (not res!986272) (not e!1478315))))

(assert (=> b!2306635 (= res!986272 (< (size!21671 (_2!16199 (get!8279 lt!855537))) (size!21671 input!1722)))))

(declare-fun d!682244 () Bool)

(declare-fun e!1478316 () Bool)

(assert (=> d!682244 e!1478316))

(declare-fun res!986274 () Bool)

(assert (=> d!682244 (=> res!986274 e!1478316)))

(declare-fun isEmpty!15703 (Option!5403) Bool)

(assert (=> d!682244 (= res!986274 (isEmpty!15703 lt!855537))))

(declare-fun e!1478317 () Option!5403)

(assert (=> d!682244 (= lt!855537 e!1478317)))

(declare-fun c!365628 () Bool)

(assert (=> d!682244 (= c!365628 (and ((_ is Cons!27462) rules!1750) ((_ is Nil!27462) (t!206428 rules!1750))))))

(declare-fun lt!855534 () Unit!40374)

(declare-fun lt!855535 () Unit!40374)

(assert (=> d!682244 (= lt!855534 lt!855535)))

(assert (=> d!682244 (isPrefix!2395 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1521 (List!27555 List!27555) Unit!40374)

(assert (=> d!682244 (= lt!855535 (lemmaIsPrefixRefl!1521 input!1722 input!1722))))

(declare-fun rulesValidInductive!1563 (LexerInterface!4002 List!27556) Bool)

(assert (=> d!682244 (rulesValidInductive!1563 thiss!16613 rules!1750)))

(assert (=> d!682244 (= (maxPrefix!2258 thiss!16613 rules!1750 input!1722) lt!855537)))

(declare-fun b!2306636 () Bool)

(declare-fun res!986276 () Bool)

(assert (=> b!2306636 (=> (not res!986276) (not e!1478315))))

(assert (=> b!2306636 (= res!986276 (= (++!6723 (list!10836 (charsOf!2793 (_1!16199 (get!8279 lt!855537)))) (_2!16199 (get!8279 lt!855537))) input!1722))))

(declare-fun b!2306637 () Bool)

(declare-fun res!986275 () Bool)

(assert (=> b!2306637 (=> (not res!986275) (not e!1478315))))

(assert (=> b!2306637 (= res!986275 (= (list!10836 (charsOf!2793 (_1!16199 (get!8279 lt!855537)))) (originalCharacters!5175 (_1!16199 (get!8279 lt!855537)))))))

(declare-fun b!2306638 () Bool)

(declare-fun call!137172 () Option!5403)

(assert (=> b!2306638 (= e!1478317 call!137172)))

(declare-fun b!2306639 () Bool)

(declare-fun lt!855533 () Option!5403)

(declare-fun lt!855536 () Option!5403)

(assert (=> b!2306639 (= e!1478317 (ite (and ((_ is None!5402) lt!855533) ((_ is None!5402) lt!855536)) None!5402 (ite ((_ is None!5402) lt!855536) lt!855533 (ite ((_ is None!5402) lt!855533) lt!855536 (ite (>= (size!21669 (_1!16199 (v!30508 lt!855533))) (size!21669 (_1!16199 (v!30508 lt!855536)))) lt!855533 lt!855536)))))))

(assert (=> b!2306639 (= lt!855533 call!137172)))

(assert (=> b!2306639 (= lt!855536 (maxPrefix!2258 thiss!16613 (t!206428 rules!1750) input!1722))))

(declare-fun b!2306640 () Bool)

(assert (=> b!2306640 (= e!1478316 e!1478315)))

(declare-fun res!986277 () Bool)

(assert (=> b!2306640 (=> (not res!986277) (not e!1478315))))

(declare-fun isDefined!4254 (Option!5403) Bool)

(assert (=> b!2306640 (= res!986277 (isDefined!4254 lt!855537))))

(declare-fun bm!137167 () Bool)

(assert (=> bm!137167 (= call!137172 (maxPrefixOneRule!1428 thiss!16613 (h!32863 rules!1750) input!1722))))

(declare-fun b!2306641 () Bool)

(declare-fun res!986278 () Bool)

(assert (=> b!2306641 (=> (not res!986278) (not e!1478315))))

(assert (=> b!2306641 (= res!986278 (= (value!139362 (_1!16199 (get!8279 lt!855537))) (apply!6667 (transformation!4405 (rule!6755 (_1!16199 (get!8279 lt!855537)))) (seqFromList!3109 (originalCharacters!5175 (_1!16199 (get!8279 lt!855537)))))))))

(assert (= (and d!682244 c!365628) b!2306638))

(assert (= (and d!682244 (not c!365628)) b!2306639))

(assert (= (or b!2306638 b!2306639) bm!137167))

(assert (= (and d!682244 (not res!986274)) b!2306640))

(assert (= (and b!2306640 res!986277) b!2306637))

(assert (= (and b!2306637 res!986275) b!2306635))

(assert (= (and b!2306635 res!986272) b!2306636))

(assert (= (and b!2306636 res!986276) b!2306641))

(assert (= (and b!2306641 res!986278) b!2306633))

(assert (= (and b!2306633 res!986273) b!2306634))

(declare-fun m!2733777 () Bool)

(assert (=> b!2306635 m!2733777))

(declare-fun m!2733779 () Bool)

(assert (=> b!2306635 m!2733779))

(assert (=> b!2306635 m!2733719))

(assert (=> b!2306637 m!2733777))

(declare-fun m!2733781 () Bool)

(assert (=> b!2306637 m!2733781))

(assert (=> b!2306637 m!2733781))

(declare-fun m!2733783 () Bool)

(assert (=> b!2306637 m!2733783))

(declare-fun m!2733785 () Bool)

(assert (=> b!2306640 m!2733785))

(assert (=> b!2306633 m!2733777))

(assert (=> b!2306633 m!2733781))

(assert (=> b!2306633 m!2733781))

(assert (=> b!2306633 m!2733783))

(assert (=> b!2306633 m!2733783))

(declare-fun m!2733787 () Bool)

(assert (=> b!2306633 m!2733787))

(assert (=> b!2306636 m!2733777))

(assert (=> b!2306636 m!2733781))

(assert (=> b!2306636 m!2733781))

(assert (=> b!2306636 m!2733783))

(assert (=> b!2306636 m!2733783))

(declare-fun m!2733789 () Bool)

(assert (=> b!2306636 m!2733789))

(declare-fun m!2733791 () Bool)

(assert (=> d!682244 m!2733791))

(declare-fun m!2733793 () Bool)

(assert (=> d!682244 m!2733793))

(declare-fun m!2733795 () Bool)

(assert (=> d!682244 m!2733795))

(declare-fun m!2733797 () Bool)

(assert (=> d!682244 m!2733797))

(declare-fun m!2733799 () Bool)

(assert (=> bm!137167 m!2733799))

(declare-fun m!2733801 () Bool)

(assert (=> b!2306639 m!2733801))

(assert (=> b!2306634 m!2733777))

(declare-fun m!2733803 () Bool)

(assert (=> b!2306634 m!2733803))

(assert (=> b!2306641 m!2733777))

(declare-fun m!2733805 () Bool)

(assert (=> b!2306641 m!2733805))

(assert (=> b!2306641 m!2733805))

(declare-fun m!2733807 () Bool)

(assert (=> b!2306641 m!2733807))

(assert (=> b!2306465 d!682244))

(declare-fun d!682256 () Bool)

(declare-fun e!1478333 () Bool)

(assert (=> d!682256 e!1478333))

(declare-fun res!986303 () Bool)

(assert (=> d!682256 (=> res!986303 e!1478333)))

(declare-fun lt!855550 () Bool)

(assert (=> d!682256 (= res!986303 (not lt!855550))))

(declare-fun e!1478334 () Bool)

(assert (=> d!682256 (= lt!855550 e!1478334)))

(declare-fun res!986301 () Bool)

(assert (=> d!682256 (=> res!986301 e!1478334)))

(assert (=> d!682256 (= res!986301 ((_ is Nil!27461) lt!855433))))

(assert (=> d!682256 (= (isPrefix!2395 lt!855433 (++!6723 lt!855433 (_2!16199 lt!855442))) lt!855550)))

(declare-fun b!2306671 () Bool)

(assert (=> b!2306671 (= e!1478333 (>= (size!21671 (++!6723 lt!855433 (_2!16199 lt!855442))) (size!21671 lt!855433)))))

(declare-fun b!2306668 () Bool)

(declare-fun e!1478332 () Bool)

(assert (=> b!2306668 (= e!1478334 e!1478332)))

(declare-fun res!986304 () Bool)

(assert (=> b!2306668 (=> (not res!986304) (not e!1478332))))

(assert (=> b!2306668 (= res!986304 (not ((_ is Nil!27461) (++!6723 lt!855433 (_2!16199 lt!855442)))))))

(declare-fun b!2306670 () Bool)

(assert (=> b!2306670 (= e!1478332 (isPrefix!2395 (tail!3335 lt!855433) (tail!3335 (++!6723 lt!855433 (_2!16199 lt!855442)))))))

(declare-fun b!2306669 () Bool)

(declare-fun res!986302 () Bool)

(assert (=> b!2306669 (=> (not res!986302) (not e!1478332))))

(declare-fun head!5060 (List!27555) C!13652)

(assert (=> b!2306669 (= res!986302 (= (head!5060 lt!855433) (head!5060 (++!6723 lt!855433 (_2!16199 lt!855442)))))))

(assert (= (and d!682256 (not res!986301)) b!2306668))

(assert (= (and b!2306668 res!986304) b!2306669))

(assert (= (and b!2306669 res!986302) b!2306670))

(assert (= (and d!682256 (not res!986303)) b!2306671))

(assert (=> b!2306671 m!2733505))

(declare-fun m!2733809 () Bool)

(assert (=> b!2306671 m!2733809))

(assert (=> b!2306671 m!2733513))

(declare-fun m!2733811 () Bool)

(assert (=> b!2306670 m!2733811))

(assert (=> b!2306670 m!2733505))

(declare-fun m!2733813 () Bool)

(assert (=> b!2306670 m!2733813))

(assert (=> b!2306670 m!2733811))

(assert (=> b!2306670 m!2733813))

(declare-fun m!2733815 () Bool)

(assert (=> b!2306670 m!2733815))

(declare-fun m!2733817 () Bool)

(assert (=> b!2306669 m!2733817))

(assert (=> b!2306669 m!2733505))

(declare-fun m!2733819 () Bool)

(assert (=> b!2306669 m!2733819))

(assert (=> b!2306465 d!682256))

(declare-fun d!682258 () Bool)

(assert (=> d!682258 (= (inv!37099 (tag!4895 (rule!6755 (h!32864 tokens!456)))) (= (mod (str.len (value!139361 (tag!4895 (rule!6755 (h!32864 tokens!456))))) 2) 0))))

(assert (=> b!2306463 d!682258))

(declare-fun d!682260 () Bool)

(declare-fun res!986314 () Bool)

(declare-fun e!1478341 () Bool)

(assert (=> d!682260 (=> (not res!986314) (not e!1478341))))

(declare-fun semiInverseModEq!1794 (Int Int) Bool)

(assert (=> d!682260 (= res!986314 (semiInverseModEq!1794 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toValue!6219 (transformation!4405 (rule!6755 (h!32864 tokens!456))))))))

(assert (=> d!682260 (= (inv!37102 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) e!1478341)))

(declare-fun b!2306683 () Bool)

(declare-fun equivClasses!1713 (Int Int) Bool)

(assert (=> b!2306683 (= e!1478341 (equivClasses!1713 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toValue!6219 (transformation!4405 (rule!6755 (h!32864 tokens!456))))))))

(assert (= (and d!682260 res!986314) b!2306683))

(declare-fun m!2733863 () Bool)

(assert (=> d!682260 m!2733863))

(declare-fun m!2733865 () Bool)

(assert (=> b!2306683 m!2733865))

(assert (=> b!2306463 d!682260))

(declare-fun d!682264 () Bool)

(assert (=> d!682264 (= (isEmpty!15700 tokens!456) ((_ is Nil!27463) tokens!456))))

(assert (=> b!2306464 d!682264))

(declare-fun d!682270 () Bool)

(declare-fun res!986326 () Bool)

(declare-fun e!1478356 () Bool)

(assert (=> d!682270 (=> (not res!986326) (not e!1478356))))

(declare-fun isEmpty!15704 (List!27555) Bool)

(assert (=> d!682270 (= res!986326 (not (isEmpty!15704 (originalCharacters!5175 (h!32864 tokens!456)))))))

(assert (=> d!682270 (= (inv!37103 (h!32864 tokens!456)) e!1478356)))

(declare-fun b!2306707 () Bool)

(declare-fun res!986327 () Bool)

(assert (=> b!2306707 (=> (not res!986327) (not e!1478356))))

(assert (=> b!2306707 (= res!986327 (= (originalCharacters!5175 (h!32864 tokens!456)) (list!10836 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (value!139362 (h!32864 tokens!456))))))))

(declare-fun b!2306708 () Bool)

(assert (=> b!2306708 (= e!1478356 (= (size!21669 (h!32864 tokens!456)) (size!21671 (originalCharacters!5175 (h!32864 tokens!456)))))))

(assert (= (and d!682270 res!986326) b!2306707))

(assert (= (and b!2306707 res!986327) b!2306708))

(declare-fun b_lambda!73493 () Bool)

(assert (=> (not b_lambda!73493) (not b!2306707)))

(assert (=> b!2306707 t!206447))

(declare-fun b_and!184161 () Bool)

(assert (= b_and!184145 (and (=> t!206447 result!168356) b_and!184161)))

(assert (=> b!2306707 t!206449))

(declare-fun b_and!184163 () Bool)

(assert (= b_and!184147 (and (=> t!206449 result!168360) b_and!184163)))

(assert (=> b!2306707 t!206451))

(declare-fun b_and!184165 () Bool)

(assert (= b_and!184149 (and (=> t!206451 result!168362) b_and!184165)))

(assert (=> b!2306707 t!206453))

(declare-fun b_and!184167 () Bool)

(assert (= b_and!184151 (and (=> t!206453 result!168364) b_and!184167)))

(declare-fun m!2733881 () Bool)

(assert (=> d!682270 m!2733881))

(assert (=> b!2306707 m!2733691))

(assert (=> b!2306707 m!2733691))

(declare-fun m!2733883 () Bool)

(assert (=> b!2306707 m!2733883))

(declare-fun m!2733885 () Bool)

(assert (=> b!2306708 m!2733885))

(assert (=> b!2306453 d!682270))

(declare-fun d!682278 () Bool)

(declare-fun list!10840 (Conc!8959) List!27557)

(assert (=> d!682278 (= (list!10837 (_1!16197 lt!855443)) (list!10840 (c!365594 (_1!16197 lt!855443))))))

(declare-fun bs!457964 () Bool)

(assert (= bs!457964 d!682278))

(declare-fun m!2733887 () Bool)

(assert (=> bs!457964 m!2733887))

(assert (=> b!2306435 d!682278))

(declare-fun d!682280 () Bool)

(assert (=> d!682280 (= (list!10836 (_2!16197 lt!855443)) (list!10839 (c!365592 (_2!16197 lt!855443))))))

(declare-fun bs!457965 () Bool)

(assert (= bs!457965 d!682280))

(declare-fun m!2733889 () Bool)

(assert (=> bs!457965 m!2733889))

(assert (=> b!2306435 d!682280))

(declare-fun b!2306780 () Bool)

(declare-fun e!1478396 () Bool)

(declare-fun lt!855567 () tuple2!27374)

(declare-fun lexList!1137 (LexerInterface!4002 List!27556 List!27555) tuple2!27376)

(assert (=> b!2306780 (= e!1478396 (= (list!10836 (_2!16197 lt!855567)) (_2!16198 (lexList!1137 thiss!16613 rules!1750 (list!10836 (seqFromList!3109 input!1722))))))))

(declare-fun b!2306781 () Bool)

(declare-fun e!1478395 () Bool)

(declare-fun e!1478397 () Bool)

(assert (=> b!2306781 (= e!1478395 e!1478397)))

(declare-fun res!986372 () Bool)

(assert (=> b!2306781 (= res!986372 (< (size!21670 (_2!16197 lt!855567)) (size!21670 (seqFromList!3109 input!1722))))))

(assert (=> b!2306781 (=> (not res!986372) (not e!1478397))))

(declare-fun b!2306782 () Bool)

(declare-fun res!986371 () Bool)

(assert (=> b!2306782 (=> (not res!986371) (not e!1478396))))

(assert (=> b!2306782 (= res!986371 (= (list!10837 (_1!16197 lt!855567)) (_1!16198 (lexList!1137 thiss!16613 rules!1750 (list!10836 (seqFromList!3109 input!1722))))))))

(declare-fun d!682282 () Bool)

(assert (=> d!682282 e!1478396))

(declare-fun res!986373 () Bool)

(assert (=> d!682282 (=> (not res!986373) (not e!1478396))))

(assert (=> d!682282 (= res!986373 e!1478395)))

(declare-fun c!365652 () Bool)

(declare-fun size!21673 (BalanceConc!17646) Int)

(assert (=> d!682282 (= c!365652 (> (size!21673 (_1!16197 lt!855567)) 0))))

(declare-fun lexTailRecV2!812 (LexerInterface!4002 List!27556 BalanceConc!17644 BalanceConc!17644 BalanceConc!17644 BalanceConc!17646) tuple2!27374)

(assert (=> d!682282 (= lt!855567 (lexTailRecV2!812 thiss!16613 rules!1750 (seqFromList!3109 input!1722) (BalanceConc!17645 Empty!8958) (seqFromList!3109 input!1722) (BalanceConc!17647 Empty!8959)))))

(assert (=> d!682282 (= (lex!1841 thiss!16613 rules!1750 (seqFromList!3109 input!1722)) lt!855567)))

(declare-fun b!2306783 () Bool)

(assert (=> b!2306783 (= e!1478395 (= (_2!16197 lt!855567) (seqFromList!3109 input!1722)))))

(declare-fun b!2306784 () Bool)

(declare-fun isEmpty!15705 (BalanceConc!17646) Bool)

(assert (=> b!2306784 (= e!1478397 (not (isEmpty!15705 (_1!16197 lt!855567))))))

(assert (= (and d!682282 c!365652) b!2306781))

(assert (= (and d!682282 (not c!365652)) b!2306783))

(assert (= (and b!2306781 res!986372) b!2306784))

(assert (= (and d!682282 res!986373) b!2306782))

(assert (= (and b!2306782 res!986371) b!2306780))

(declare-fun m!2733927 () Bool)

(assert (=> d!682282 m!2733927))

(assert (=> d!682282 m!2733587))

(assert (=> d!682282 m!2733587))

(declare-fun m!2733929 () Bool)

(assert (=> d!682282 m!2733929))

(declare-fun m!2733931 () Bool)

(assert (=> b!2306780 m!2733931))

(assert (=> b!2306780 m!2733587))

(declare-fun m!2733933 () Bool)

(assert (=> b!2306780 m!2733933))

(assert (=> b!2306780 m!2733933))

(declare-fun m!2733935 () Bool)

(assert (=> b!2306780 m!2733935))

(declare-fun m!2733937 () Bool)

(assert (=> b!2306781 m!2733937))

(assert (=> b!2306781 m!2733587))

(declare-fun m!2733939 () Bool)

(assert (=> b!2306781 m!2733939))

(declare-fun m!2733941 () Bool)

(assert (=> b!2306784 m!2733941))

(declare-fun m!2733943 () Bool)

(assert (=> b!2306782 m!2733943))

(assert (=> b!2306782 m!2733587))

(assert (=> b!2306782 m!2733933))

(assert (=> b!2306782 m!2733933))

(assert (=> b!2306782 m!2733935))

(assert (=> b!2306435 d!682282))

(declare-fun d!682302 () Bool)

(declare-fun fromListB!1404 (List!27555) BalanceConc!17644)

(assert (=> d!682302 (= (seqFromList!3109 input!1722) (fromListB!1404 input!1722))))

(declare-fun bs!457969 () Bool)

(assert (= bs!457969 d!682302))

(declare-fun m!2733945 () Bool)

(assert (=> bs!457969 m!2733945))

(assert (=> b!2306435 d!682302))

(declare-fun d!682304 () Bool)

(assert (=> d!682304 (= (inv!37099 (tag!4895 r!2363)) (= (mod (str.len (value!139361 (tag!4895 r!2363))) 2) 0))))

(assert (=> b!2306467 d!682304))

(declare-fun d!682306 () Bool)

(declare-fun res!986374 () Bool)

(declare-fun e!1478398 () Bool)

(assert (=> d!682306 (=> (not res!986374) (not e!1478398))))

(assert (=> d!682306 (= res!986374 (semiInverseModEq!1794 (toChars!6078 (transformation!4405 r!2363)) (toValue!6219 (transformation!4405 r!2363))))))

(assert (=> d!682306 (= (inv!37102 (transformation!4405 r!2363)) e!1478398)))

(declare-fun b!2306785 () Bool)

(assert (=> b!2306785 (= e!1478398 (equivClasses!1713 (toChars!6078 (transformation!4405 r!2363)) (toValue!6219 (transformation!4405 r!2363))))))

(assert (= (and d!682306 res!986374) b!2306785))

(declare-fun m!2733947 () Bool)

(assert (=> d!682306 m!2733947))

(declare-fun m!2733949 () Bool)

(assert (=> b!2306785 m!2733949))

(assert (=> b!2306467 d!682306))

(declare-fun d!682308 () Bool)

(assert (=> d!682308 (= (inv!37099 (tag!4895 otherR!12)) (= (mod (str.len (value!139361 (tag!4895 otherR!12))) 2) 0))))

(assert (=> b!2306436 d!682308))

(declare-fun d!682310 () Bool)

(declare-fun res!986375 () Bool)

(declare-fun e!1478399 () Bool)

(assert (=> d!682310 (=> (not res!986375) (not e!1478399))))

(assert (=> d!682310 (= res!986375 (semiInverseModEq!1794 (toChars!6078 (transformation!4405 otherR!12)) (toValue!6219 (transformation!4405 otherR!12))))))

(assert (=> d!682310 (= (inv!37102 (transformation!4405 otherR!12)) e!1478399)))

(declare-fun b!2306786 () Bool)

(assert (=> b!2306786 (= e!1478399 (equivClasses!1713 (toChars!6078 (transformation!4405 otherR!12)) (toValue!6219 (transformation!4405 otherR!12))))))

(assert (= (and d!682310 res!986375) b!2306786))

(declare-fun m!2733951 () Bool)

(assert (=> d!682310 m!2733951))

(declare-fun m!2733953 () Bool)

(assert (=> b!2306786 m!2733953))

(assert (=> b!2306436 d!682310))

(declare-fun d!682312 () Bool)

(assert (=> d!682312 (= (inv!37099 (tag!4895 (h!32863 rules!1750))) (= (mod (str.len (value!139361 (tag!4895 (h!32863 rules!1750)))) 2) 0))))

(assert (=> b!2306457 d!682312))

(declare-fun d!682314 () Bool)

(declare-fun res!986376 () Bool)

(declare-fun e!1478400 () Bool)

(assert (=> d!682314 (=> (not res!986376) (not e!1478400))))

(assert (=> d!682314 (= res!986376 (semiInverseModEq!1794 (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toValue!6219 (transformation!4405 (h!32863 rules!1750)))))))

(assert (=> d!682314 (= (inv!37102 (transformation!4405 (h!32863 rules!1750))) e!1478400)))

(declare-fun b!2306787 () Bool)

(assert (=> b!2306787 (= e!1478400 (equivClasses!1713 (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toValue!6219 (transformation!4405 (h!32863 rules!1750)))))))

(assert (= (and d!682314 res!986376) b!2306787))

(declare-fun m!2733955 () Bool)

(assert (=> d!682314 m!2733955))

(declare-fun m!2733957 () Bool)

(assert (=> b!2306787 m!2733957))

(assert (=> b!2306457 d!682314))

(declare-fun b!2306808 () Bool)

(declare-fun e!1478413 () Bool)

(declare-fun inv!15 (TokenValue!4567) Bool)

(assert (=> b!2306808 (= e!1478413 (inv!15 (value!139362 (h!32864 tokens!456))))))

(declare-fun b!2306809 () Bool)

(declare-fun res!986385 () Bool)

(assert (=> b!2306809 (=> res!986385 e!1478413)))

(assert (=> b!2306809 (= res!986385 (not ((_ is IntegerValue!13703) (value!139362 (h!32864 tokens!456)))))))

(declare-fun e!1478415 () Bool)

(assert (=> b!2306809 (= e!1478415 e!1478413)))

(declare-fun b!2306810 () Bool)

(declare-fun inv!17 (TokenValue!4567) Bool)

(assert (=> b!2306810 (= e!1478415 (inv!17 (value!139362 (h!32864 tokens!456))))))

(declare-fun b!2306811 () Bool)

(declare-fun e!1478414 () Bool)

(declare-fun inv!16 (TokenValue!4567) Bool)

(assert (=> b!2306811 (= e!1478414 (inv!16 (value!139362 (h!32864 tokens!456))))))

(declare-fun b!2306812 () Bool)

(assert (=> b!2306812 (= e!1478414 e!1478415)))

(declare-fun c!365659 () Bool)

(assert (=> b!2306812 (= c!365659 ((_ is IntegerValue!13702) (value!139362 (h!32864 tokens!456))))))

(declare-fun d!682316 () Bool)

(declare-fun c!365660 () Bool)

(assert (=> d!682316 (= c!365660 ((_ is IntegerValue!13701) (value!139362 (h!32864 tokens!456))))))

(assert (=> d!682316 (= (inv!21 (value!139362 (h!32864 tokens!456))) e!1478414)))

(assert (= (and d!682316 c!365660) b!2306811))

(assert (= (and d!682316 (not c!365660)) b!2306812))

(assert (= (and b!2306812 c!365659) b!2306810))

(assert (= (and b!2306812 (not c!365659)) b!2306809))

(assert (= (and b!2306809 (not res!986385)) b!2306808))

(declare-fun m!2733959 () Bool)

(assert (=> b!2306808 m!2733959))

(declare-fun m!2733961 () Bool)

(assert (=> b!2306810 m!2733961))

(declare-fun m!2733963 () Bool)

(assert (=> b!2306811 m!2733963))

(assert (=> b!2306455 d!682316))

(declare-fun d!682318 () Bool)

(declare-fun res!986391 () Bool)

(declare-fun e!1478421 () Bool)

(assert (=> d!682318 (=> (not res!986391) (not e!1478421))))

(declare-fun rulesValid!1636 (LexerInterface!4002 List!27556) Bool)

(assert (=> d!682318 (= res!986391 (rulesValid!1636 thiss!16613 rules!1750))))

(assert (=> d!682318 (= (rulesInvariant!3504 thiss!16613 rules!1750) e!1478421)))

(declare-fun b!2306820 () Bool)

(declare-datatypes ((List!27558 0))(
  ( (Nil!27464) (Cons!27464 (h!32865 String!29939) (t!206502 List!27558)) )
))
(declare-fun noDuplicateTag!1634 (LexerInterface!4002 List!27556 List!27558) Bool)

(assert (=> b!2306820 (= e!1478421 (noDuplicateTag!1634 thiss!16613 rules!1750 Nil!27464))))

(assert (= (and d!682318 res!986391) b!2306820))

(declare-fun m!2733965 () Bool)

(assert (=> d!682318 m!2733965))

(declare-fun m!2733967 () Bool)

(assert (=> b!2306820 m!2733967))

(assert (=> b!2306456 d!682318))

(declare-fun d!682320 () Bool)

(declare-fun e!1478462 () Bool)

(assert (=> d!682320 e!1478462))

(declare-fun c!365669 () Bool)

(assert (=> d!682320 (= c!365669 ((_ is EmptyExpr!6753) (regex!4405 r!2363)))))

(declare-fun lt!855573 () Bool)

(declare-fun e!1478467 () Bool)

(assert (=> d!682320 (= lt!855573 e!1478467)))

(declare-fun c!365668 () Bool)

(assert (=> d!682320 (= c!365668 (isEmpty!15704 lt!855433))))

(declare-fun validRegex!2554 (Regex!6753) Bool)

(assert (=> d!682320 (validRegex!2554 (regex!4405 r!2363))))

(assert (=> d!682320 (= (matchR!3010 (regex!4405 r!2363) lt!855433) lt!855573)))

(declare-fun b!2306897 () Bool)

(declare-fun e!1478466 () Bool)

(assert (=> b!2306897 (= e!1478462 e!1478466)))

(declare-fun c!365670 () Bool)

(assert (=> b!2306897 (= c!365670 ((_ is EmptyLang!6753) (regex!4405 r!2363)))))

(declare-fun bm!137174 () Bool)

(declare-fun call!137179 () Bool)

(assert (=> bm!137174 (= call!137179 (isEmpty!15704 lt!855433))))

(declare-fun b!2306898 () Bool)

(assert (=> b!2306898 (= e!1478466 (not lt!855573))))

(declare-fun b!2306899 () Bool)

(declare-fun e!1478468 () Bool)

(declare-fun e!1478464 () Bool)

(assert (=> b!2306899 (= e!1478468 e!1478464)))

(declare-fun res!986418 () Bool)

(assert (=> b!2306899 (=> res!986418 e!1478464)))

(assert (=> b!2306899 (= res!986418 call!137179)))

(declare-fun b!2306900 () Bool)

(declare-fun res!986419 () Bool)

(declare-fun e!1478463 () Bool)

(assert (=> b!2306900 (=> res!986419 e!1478463)))

(assert (=> b!2306900 (= res!986419 (not ((_ is ElementMatch!6753) (regex!4405 r!2363))))))

(assert (=> b!2306900 (= e!1478466 e!1478463)))

(declare-fun b!2306901 () Bool)

(declare-fun nullable!1892 (Regex!6753) Bool)

(assert (=> b!2306901 (= e!1478467 (nullable!1892 (regex!4405 r!2363)))))

(declare-fun b!2306902 () Bool)

(declare-fun res!986425 () Bool)

(assert (=> b!2306902 (=> res!986425 e!1478464)))

(assert (=> b!2306902 (= res!986425 (not (isEmpty!15704 (tail!3335 lt!855433))))))

(declare-fun b!2306903 () Bool)

(declare-fun derivativeStep!1552 (Regex!6753 C!13652) Regex!6753)

(assert (=> b!2306903 (= e!1478467 (matchR!3010 (derivativeStep!1552 (regex!4405 r!2363) (head!5060 lt!855433)) (tail!3335 lt!855433)))))

(declare-fun b!2306904 () Bool)

(declare-fun res!986422 () Bool)

(declare-fun e!1478465 () Bool)

(assert (=> b!2306904 (=> (not res!986422) (not e!1478465))))

(assert (=> b!2306904 (= res!986422 (isEmpty!15704 (tail!3335 lt!855433)))))

(declare-fun b!2306905 () Bool)

(assert (=> b!2306905 (= e!1478464 (not (= (head!5060 lt!855433) (c!365593 (regex!4405 r!2363)))))))

(declare-fun b!2306906 () Bool)

(assert (=> b!2306906 (= e!1478462 (= lt!855573 call!137179))))

(declare-fun b!2306907 () Bool)

(declare-fun res!986420 () Bool)

(assert (=> b!2306907 (=> (not res!986420) (not e!1478465))))

(assert (=> b!2306907 (= res!986420 (not call!137179))))

(declare-fun b!2306908 () Bool)

(assert (=> b!2306908 (= e!1478465 (= (head!5060 lt!855433) (c!365593 (regex!4405 r!2363))))))

(declare-fun b!2306909 () Bool)

(declare-fun res!986421 () Bool)

(assert (=> b!2306909 (=> res!986421 e!1478463)))

(assert (=> b!2306909 (= res!986421 e!1478465)))

(declare-fun res!986423 () Bool)

(assert (=> b!2306909 (=> (not res!986423) (not e!1478465))))

(assert (=> b!2306909 (= res!986423 lt!855573)))

(declare-fun b!2306910 () Bool)

(assert (=> b!2306910 (= e!1478463 e!1478468)))

(declare-fun res!986424 () Bool)

(assert (=> b!2306910 (=> (not res!986424) (not e!1478468))))

(assert (=> b!2306910 (= res!986424 (not lt!855573))))

(assert (= (and d!682320 c!365668) b!2306901))

(assert (= (and d!682320 (not c!365668)) b!2306903))

(assert (= (and d!682320 c!365669) b!2306906))

(assert (= (and d!682320 (not c!365669)) b!2306897))

(assert (= (and b!2306897 c!365670) b!2306898))

(assert (= (and b!2306897 (not c!365670)) b!2306900))

(assert (= (and b!2306900 (not res!986419)) b!2306909))

(assert (= (and b!2306909 res!986423) b!2306907))

(assert (= (and b!2306907 res!986420) b!2306904))

(assert (= (and b!2306904 res!986422) b!2306908))

(assert (= (and b!2306909 (not res!986421)) b!2306910))

(assert (= (and b!2306910 res!986424) b!2306899))

(assert (= (and b!2306899 (not res!986418)) b!2306902))

(assert (= (and b!2306902 (not res!986425)) b!2306905))

(assert (= (or b!2306906 b!2306899 b!2306907) bm!137174))

(declare-fun m!2734003 () Bool)

(assert (=> b!2306901 m!2734003))

(assert (=> b!2306903 m!2733817))

(assert (=> b!2306903 m!2733817))

(declare-fun m!2734005 () Bool)

(assert (=> b!2306903 m!2734005))

(assert (=> b!2306903 m!2733811))

(assert (=> b!2306903 m!2734005))

(assert (=> b!2306903 m!2733811))

(declare-fun m!2734007 () Bool)

(assert (=> b!2306903 m!2734007))

(assert (=> b!2306902 m!2733811))

(assert (=> b!2306902 m!2733811))

(declare-fun m!2734009 () Bool)

(assert (=> b!2306902 m!2734009))

(assert (=> b!2306904 m!2733811))

(assert (=> b!2306904 m!2733811))

(assert (=> b!2306904 m!2734009))

(declare-fun m!2734011 () Bool)

(assert (=> d!682320 m!2734011))

(declare-fun m!2734013 () Bool)

(assert (=> d!682320 m!2734013))

(assert (=> b!2306908 m!2733817))

(assert (=> bm!137174 m!2734011))

(assert (=> b!2306905 m!2733817))

(assert (=> b!2306445 d!682320))

(declare-fun d!682332 () Bool)

(declare-fun lt!855574 () Bool)

(assert (=> d!682332 (= lt!855574 (select (content!3709 rules!1750) r!2363))))

(declare-fun e!1478473 () Bool)

(assert (=> d!682332 (= lt!855574 e!1478473)))

(declare-fun res!986426 () Bool)

(assert (=> d!682332 (=> (not res!986426) (not e!1478473))))

(assert (=> d!682332 (= res!986426 ((_ is Cons!27462) rules!1750))))

(assert (=> d!682332 (= (contains!4793 rules!1750 r!2363) lt!855574)))

(declare-fun b!2306914 () Bool)

(declare-fun e!1478474 () Bool)

(assert (=> b!2306914 (= e!1478473 e!1478474)))

(declare-fun res!986427 () Bool)

(assert (=> b!2306914 (=> res!986427 e!1478474)))

(assert (=> b!2306914 (= res!986427 (= (h!32863 rules!1750) r!2363))))

(declare-fun b!2306915 () Bool)

(assert (=> b!2306915 (= e!1478474 (contains!4793 (t!206428 rules!1750) r!2363))))

(assert (= (and d!682332 res!986426) b!2306914))

(assert (= (and b!2306914 (not res!986427)) b!2306915))

(assert (=> d!682332 m!2733627))

(declare-fun m!2734015 () Bool)

(assert (=> d!682332 m!2734015))

(declare-fun m!2734017 () Bool)

(assert (=> b!2306915 m!2734017))

(assert (=> b!2306438 d!682332))

(declare-fun d!682334 () Bool)

(assert (=> d!682334 (= (isEmpty!15699 rules!1750) ((_ is Nil!27462) rules!1750))))

(assert (=> b!2306460 d!682334))

(declare-fun b!2306942 () Bool)

(declare-fun e!1478500 () Int)

(assert (=> b!2306942 (= e!1478500 0)))

(declare-fun b!2306943 () Bool)

(declare-fun e!1478499 () Int)

(assert (=> b!2306943 (= e!1478500 e!1478499)))

(declare-fun c!365676 () Bool)

(assert (=> b!2306943 (= c!365676 (and ((_ is Cons!27462) rules!1750) (not (= (h!32863 rules!1750) otherR!12))))))

(declare-fun b!2306944 () Bool)

(assert (=> b!2306944 (= e!1478499 (+ 1 (getIndex!418 (t!206428 rules!1750) otherR!12)))))

(declare-fun d!682336 () Bool)

(declare-fun lt!855577 () Int)

(assert (=> d!682336 (>= lt!855577 0)))

(assert (=> d!682336 (= lt!855577 e!1478500)))

(declare-fun c!365675 () Bool)

(assert (=> d!682336 (= c!365675 (and ((_ is Cons!27462) rules!1750) (= (h!32863 rules!1750) otherR!12)))))

(assert (=> d!682336 (contains!4793 rules!1750 otherR!12)))

(assert (=> d!682336 (= (getIndex!418 rules!1750 otherR!12) lt!855577)))

(declare-fun b!2306945 () Bool)

(assert (=> b!2306945 (= e!1478499 (- 1))))

(assert (= (and d!682336 c!365675) b!2306942))

(assert (= (and d!682336 (not c!365675)) b!2306943))

(assert (= (and b!2306943 c!365676) b!2306944))

(assert (= (and b!2306943 (not c!365676)) b!2306945))

(declare-fun m!2734031 () Bool)

(assert (=> b!2306944 m!2734031))

(assert (=> d!682336 m!2733559))

(assert (=> b!2306458 d!682336))

(declare-fun b!2306946 () Bool)

(declare-fun e!1478502 () Int)

(assert (=> b!2306946 (= e!1478502 0)))

(declare-fun b!2306947 () Bool)

(declare-fun e!1478501 () Int)

(assert (=> b!2306947 (= e!1478502 e!1478501)))

(declare-fun c!365678 () Bool)

(assert (=> b!2306947 (= c!365678 (and ((_ is Cons!27462) rules!1750) (not (= (h!32863 rules!1750) r!2363))))))

(declare-fun b!2306948 () Bool)

(assert (=> b!2306948 (= e!1478501 (+ 1 (getIndex!418 (t!206428 rules!1750) r!2363)))))

(declare-fun d!682338 () Bool)

(declare-fun lt!855578 () Int)

(assert (=> d!682338 (>= lt!855578 0)))

(assert (=> d!682338 (= lt!855578 e!1478502)))

(declare-fun c!365677 () Bool)

(assert (=> d!682338 (= c!365677 (and ((_ is Cons!27462) rules!1750) (= (h!32863 rules!1750) r!2363)))))

(assert (=> d!682338 (contains!4793 rules!1750 r!2363)))

(assert (=> d!682338 (= (getIndex!418 rules!1750 r!2363) lt!855578)))

(declare-fun b!2306949 () Bool)

(assert (=> b!2306949 (= e!1478501 (- 1))))

(assert (= (and d!682338 c!365677) b!2306946))

(assert (= (and d!682338 (not c!365677)) b!2306947))

(assert (= (and b!2306947 c!365678) b!2306948))

(assert (= (and b!2306947 (not c!365678)) b!2306949))

(declare-fun m!2734033 () Bool)

(assert (=> b!2306948 m!2734033))

(assert (=> d!682338 m!2733549))

(assert (=> b!2306458 d!682338))

(declare-fun d!682340 () Bool)

(declare-fun res!986432 () Bool)

(declare-fun e!1478505 () Bool)

(assert (=> d!682340 (=> (not res!986432) (not e!1478505))))

(assert (=> d!682340 (= res!986432 (validRegex!2554 (regex!4405 otherR!12)))))

(assert (=> d!682340 (= (ruleValid!1495 thiss!16613 otherR!12) e!1478505)))

(declare-fun b!2306954 () Bool)

(declare-fun res!986433 () Bool)

(assert (=> b!2306954 (=> (not res!986433) (not e!1478505))))

(assert (=> b!2306954 (= res!986433 (not (nullable!1892 (regex!4405 otherR!12))))))

(declare-fun b!2306955 () Bool)

(assert (=> b!2306955 (= e!1478505 (not (= (tag!4895 otherR!12) (String!29940 ""))))))

(assert (= (and d!682340 res!986432) b!2306954))

(assert (= (and b!2306954 res!986433) b!2306955))

(declare-fun m!2734035 () Bool)

(assert (=> d!682340 m!2734035))

(declare-fun m!2734037 () Bool)

(assert (=> b!2306954 m!2734037))

(assert (=> b!2306458 d!682340))

(declare-fun d!682342 () Bool)

(assert (=> d!682342 (ruleValid!1495 thiss!16613 otherR!12)))

(declare-fun lt!855581 () Unit!40374)

(declare-fun choose!13485 (LexerInterface!4002 Rule!8610 List!27556) Unit!40374)

(assert (=> d!682342 (= lt!855581 (choose!13485 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!682342 (contains!4793 rules!1750 otherR!12)))

(assert (=> d!682342 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!900 thiss!16613 otherR!12 rules!1750) lt!855581)))

(declare-fun bs!457971 () Bool)

(assert (= bs!457971 d!682342))

(assert (=> bs!457971 m!2733545))

(declare-fun m!2734039 () Bool)

(assert (=> bs!457971 m!2734039))

(assert (=> bs!457971 m!2733559))

(assert (=> b!2306458 d!682342))

(declare-fun d!682344 () Bool)

(assert (=> d!682344 (= r!2363 otherR!12)))

(declare-fun lt!855584 () Unit!40374)

(declare-fun choose!13486 (List!27556 Rule!8610 Rule!8610) Unit!40374)

(assert (=> d!682344 (= lt!855584 (choose!13486 rules!1750 r!2363 otherR!12))))

(assert (=> d!682344 (contains!4793 rules!1750 r!2363)))

(assert (=> d!682344 (= (lemmaSameIndexThenSameElement!198 rules!1750 r!2363 otherR!12) lt!855584)))

(declare-fun bs!457972 () Bool)

(assert (= bs!457972 d!682344))

(declare-fun m!2734041 () Bool)

(assert (=> bs!457972 m!2734041))

(assert (=> bs!457972 m!2733549))

(assert (=> b!2306447 d!682344))

(declare-fun d!682346 () Bool)

(declare-fun res!986434 () Bool)

(declare-fun e!1478506 () Bool)

(assert (=> d!682346 (=> (not res!986434) (not e!1478506))))

(assert (=> d!682346 (= res!986434 (validRegex!2554 (regex!4405 r!2363)))))

(assert (=> d!682346 (= (ruleValid!1495 thiss!16613 r!2363) e!1478506)))

(declare-fun b!2306956 () Bool)

(declare-fun res!986435 () Bool)

(assert (=> b!2306956 (=> (not res!986435) (not e!1478506))))

(assert (=> b!2306956 (= res!986435 (not (nullable!1892 (regex!4405 r!2363))))))

(declare-fun b!2306957 () Bool)

(assert (=> b!2306957 (= e!1478506 (not (= (tag!4895 r!2363) (String!29940 ""))))))

(assert (= (and d!682346 res!986434) b!2306956))

(assert (= (and b!2306956 res!986435) b!2306957))

(assert (=> d!682346 m!2734013))

(assert (=> b!2306956 m!2734003))

(assert (=> b!2306451 d!682346))

(declare-fun d!682348 () Bool)

(assert (=> d!682348 (ruleValid!1495 thiss!16613 r!2363)))

(declare-fun lt!855585 () Unit!40374)

(assert (=> d!682348 (= lt!855585 (choose!13485 thiss!16613 r!2363 rules!1750))))

(assert (=> d!682348 (contains!4793 rules!1750 r!2363)))

(assert (=> d!682348 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!900 thiss!16613 r!2363 rules!1750) lt!855585)))

(declare-fun bs!457973 () Bool)

(assert (= bs!457973 d!682348))

(assert (=> bs!457973 m!2733591))

(declare-fun m!2734043 () Bool)

(assert (=> bs!457973 m!2734043))

(assert (=> bs!457973 m!2733549))

(assert (=> b!2306451 d!682348))

(declare-fun d!682350 () Bool)

(declare-fun e!1478508 () Bool)

(assert (=> d!682350 e!1478508))

(declare-fun res!986438 () Bool)

(assert (=> d!682350 (=> res!986438 e!1478508)))

(declare-fun lt!855586 () Bool)

(assert (=> d!682350 (= res!986438 (not lt!855586))))

(declare-fun e!1478509 () Bool)

(assert (=> d!682350 (= lt!855586 e!1478509)))

(declare-fun res!986436 () Bool)

(assert (=> d!682350 (=> res!986436 e!1478509)))

(assert (=> d!682350 (= res!986436 ((_ is Nil!27461) otherP!12))))

(assert (=> d!682350 (= (isPrefix!2395 otherP!12 input!1722) lt!855586)))

(declare-fun b!2306961 () Bool)

(assert (=> b!2306961 (= e!1478508 (>= (size!21671 input!1722) (size!21671 otherP!12)))))

(declare-fun b!2306958 () Bool)

(declare-fun e!1478507 () Bool)

(assert (=> b!2306958 (= e!1478509 e!1478507)))

(declare-fun res!986439 () Bool)

(assert (=> b!2306958 (=> (not res!986439) (not e!1478507))))

(assert (=> b!2306958 (= res!986439 (not ((_ is Nil!27461) input!1722)))))

(declare-fun b!2306960 () Bool)

(assert (=> b!2306960 (= e!1478507 (isPrefix!2395 (tail!3335 otherP!12) (tail!3335 input!1722)))))

(declare-fun b!2306959 () Bool)

(declare-fun res!986437 () Bool)

(assert (=> b!2306959 (=> (not res!986437) (not e!1478507))))

(assert (=> b!2306959 (= res!986437 (= (head!5060 otherP!12) (head!5060 input!1722)))))

(assert (= (and d!682350 (not res!986436)) b!2306958))

(assert (= (and b!2306958 res!986439) b!2306959))

(assert (= (and b!2306959 res!986437) b!2306960))

(assert (= (and d!682350 (not res!986438)) b!2306961))

(assert (=> b!2306961 m!2733719))

(assert (=> b!2306961 m!2733521))

(declare-fun m!2734045 () Bool)

(assert (=> b!2306960 m!2734045))

(assert (=> b!2306960 m!2733721))

(assert (=> b!2306960 m!2734045))

(assert (=> b!2306960 m!2733721))

(declare-fun m!2734047 () Bool)

(assert (=> b!2306960 m!2734047))

(declare-fun m!2734049 () Bool)

(assert (=> b!2306959 m!2734049))

(declare-fun m!2734051 () Bool)

(assert (=> b!2306959 m!2734051))

(assert (=> b!2306452 d!682350))

(declare-fun d!682352 () Bool)

(assert (=> d!682352 (= (maxPrefixOneRule!1428 thiss!16613 r!2363 input!1722) (Some!5402 (tuple2!27379 (Token!8289 (apply!6667 (transformation!4405 r!2363) (seqFromList!3109 lt!855433)) r!2363 (size!21671 lt!855433) lt!855433) (_2!16199 lt!855442))))))

(declare-fun lt!855589 () Unit!40374)

(declare-fun choose!13487 (LexerInterface!4002 List!27556 List!27555 List!27555 List!27555 Rule!8610) Unit!40374)

(assert (=> d!682352 (= lt!855589 (choose!13487 thiss!16613 rules!1750 lt!855433 input!1722 (_2!16199 lt!855442) r!2363))))

(assert (=> d!682352 (not (isEmpty!15699 rules!1750))))

(assert (=> d!682352 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!601 thiss!16613 rules!1750 lt!855433 input!1722 (_2!16199 lt!855442) r!2363) lt!855589)))

(declare-fun bs!457974 () Bool)

(assert (= bs!457974 d!682352))

(assert (=> bs!457974 m!2733557))

(assert (=> bs!457974 m!2733527))

(assert (=> bs!457974 m!2733533))

(declare-fun m!2734053 () Bool)

(assert (=> bs!457974 m!2734053))

(assert (=> bs!457974 m!2733513))

(assert (=> bs!457974 m!2733527))

(assert (=> bs!457974 m!2733529))

(assert (=> b!2306450 d!682352))

(declare-fun d!682354 () Bool)

(assert (=> d!682354 (= (seqFromList!3109 lt!855433) (fromListB!1404 lt!855433))))

(declare-fun bs!457975 () Bool)

(assert (= bs!457975 d!682354))

(declare-fun m!2734055 () Bool)

(assert (=> bs!457975 m!2734055))

(assert (=> b!2306450 d!682354))

(declare-fun d!682356 () Bool)

(declare-fun e!1478511 () Bool)

(assert (=> d!682356 e!1478511))

(declare-fun res!986442 () Bool)

(assert (=> d!682356 (=> res!986442 e!1478511)))

(declare-fun lt!855590 () Bool)

(assert (=> d!682356 (= res!986442 (not lt!855590))))

(declare-fun e!1478512 () Bool)

(assert (=> d!682356 (= lt!855590 e!1478512)))

(declare-fun res!986440 () Bool)

(assert (=> d!682356 (=> res!986440 e!1478512)))

(assert (=> d!682356 (= res!986440 ((_ is Nil!27461) lt!855433))))

(assert (=> d!682356 (= (isPrefix!2395 lt!855433 input!1722) lt!855590)))

(declare-fun b!2306965 () Bool)

(assert (=> b!2306965 (= e!1478511 (>= (size!21671 input!1722) (size!21671 lt!855433)))))

(declare-fun b!2306962 () Bool)

(declare-fun e!1478510 () Bool)

(assert (=> b!2306962 (= e!1478512 e!1478510)))

(declare-fun res!986443 () Bool)

(assert (=> b!2306962 (=> (not res!986443) (not e!1478510))))

(assert (=> b!2306962 (= res!986443 (not ((_ is Nil!27461) input!1722)))))

(declare-fun b!2306964 () Bool)

(assert (=> b!2306964 (= e!1478510 (isPrefix!2395 (tail!3335 lt!855433) (tail!3335 input!1722)))))

(declare-fun b!2306963 () Bool)

(declare-fun res!986441 () Bool)

(assert (=> b!2306963 (=> (not res!986441) (not e!1478510))))

(assert (=> b!2306963 (= res!986441 (= (head!5060 lt!855433) (head!5060 input!1722)))))

(assert (= (and d!682356 (not res!986440)) b!2306962))

(assert (= (and b!2306962 res!986443) b!2306963))

(assert (= (and b!2306963 res!986441) b!2306964))

(assert (= (and d!682356 (not res!986442)) b!2306965))

(assert (=> b!2306965 m!2733719))

(assert (=> b!2306965 m!2733513))

(assert (=> b!2306964 m!2733811))

(assert (=> b!2306964 m!2733721))

(assert (=> b!2306964 m!2733811))

(assert (=> b!2306964 m!2733721))

(declare-fun m!2734057 () Bool)

(assert (=> b!2306964 m!2734057))

(assert (=> b!2306963 m!2733817))

(assert (=> b!2306963 m!2734051))

(assert (=> b!2306450 d!682356))

(declare-fun d!682358 () Bool)

(declare-fun e!1478521 () Bool)

(assert (=> d!682358 e!1478521))

(declare-fun res!986464 () Bool)

(assert (=> d!682358 (=> res!986464 e!1478521)))

(declare-fun lt!855603 () Option!5403)

(assert (=> d!682358 (= res!986464 (isEmpty!15703 lt!855603))))

(declare-fun e!1478522 () Option!5403)

(assert (=> d!682358 (= lt!855603 e!1478522)))

(declare-fun c!365681 () Bool)

(declare-datatypes ((tuple2!27382 0))(
  ( (tuple2!27383 (_1!16201 List!27555) (_2!16201 List!27555)) )
))
(declare-fun lt!855602 () tuple2!27382)

(assert (=> d!682358 (= c!365681 (isEmpty!15704 (_1!16201 lt!855602)))))

(declare-fun findLongestMatch!666 (Regex!6753 List!27555) tuple2!27382)

(assert (=> d!682358 (= lt!855602 (findLongestMatch!666 (regex!4405 r!2363) input!1722))))

(assert (=> d!682358 (ruleValid!1495 thiss!16613 r!2363)))

(assert (=> d!682358 (= (maxPrefixOneRule!1428 thiss!16613 r!2363 input!1722) lt!855603)))

(declare-fun b!2306984 () Bool)

(assert (=> b!2306984 (= e!1478522 (Some!5402 (tuple2!27379 (Token!8289 (apply!6667 (transformation!4405 r!2363) (seqFromList!3109 (_1!16201 lt!855602))) r!2363 (size!21670 (seqFromList!3109 (_1!16201 lt!855602))) (_1!16201 lt!855602)) (_2!16201 lt!855602))))))

(declare-fun lt!855604 () Unit!40374)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!710 (Regex!6753 List!27555) Unit!40374)

(assert (=> b!2306984 (= lt!855604 (longestMatchIsAcceptedByMatchOrIsEmpty!710 (regex!4405 r!2363) input!1722))))

(declare-fun res!986458 () Bool)

(declare-fun findLongestMatchInner!737 (Regex!6753 List!27555 Int List!27555 List!27555 Int) tuple2!27382)

(assert (=> b!2306984 (= res!986458 (isEmpty!15704 (_1!16201 (findLongestMatchInner!737 (regex!4405 r!2363) Nil!27461 (size!21671 Nil!27461) input!1722 input!1722 (size!21671 input!1722)))))))

(declare-fun e!1478523 () Bool)

(assert (=> b!2306984 (=> res!986458 e!1478523)))

(assert (=> b!2306984 e!1478523))

(declare-fun lt!855605 () Unit!40374)

(assert (=> b!2306984 (= lt!855605 lt!855604)))

(declare-fun lt!855601 () Unit!40374)

(declare-fun lemmaSemiInverse!1084 (TokenValueInjection!8674 BalanceConc!17644) Unit!40374)

(assert (=> b!2306984 (= lt!855601 (lemmaSemiInverse!1084 (transformation!4405 r!2363) (seqFromList!3109 (_1!16201 lt!855602))))))

(declare-fun b!2306985 () Bool)

(declare-fun res!986459 () Bool)

(declare-fun e!1478524 () Bool)

(assert (=> b!2306985 (=> (not res!986459) (not e!1478524))))

(assert (=> b!2306985 (= res!986459 (= (++!6723 (list!10836 (charsOf!2793 (_1!16199 (get!8279 lt!855603)))) (_2!16199 (get!8279 lt!855603))) input!1722))))

(declare-fun b!2306986 () Bool)

(declare-fun res!986460 () Bool)

(assert (=> b!2306986 (=> (not res!986460) (not e!1478524))))

(assert (=> b!2306986 (= res!986460 (= (value!139362 (_1!16199 (get!8279 lt!855603))) (apply!6667 (transformation!4405 (rule!6755 (_1!16199 (get!8279 lt!855603)))) (seqFromList!3109 (originalCharacters!5175 (_1!16199 (get!8279 lt!855603)))))))))

(declare-fun b!2306987 () Bool)

(assert (=> b!2306987 (= e!1478524 (= (size!21669 (_1!16199 (get!8279 lt!855603))) (size!21671 (originalCharacters!5175 (_1!16199 (get!8279 lt!855603))))))))

(declare-fun b!2306988 () Bool)

(declare-fun res!986463 () Bool)

(assert (=> b!2306988 (=> (not res!986463) (not e!1478524))))

(assert (=> b!2306988 (= res!986463 (< (size!21671 (_2!16199 (get!8279 lt!855603))) (size!21671 input!1722)))))

(declare-fun b!2306989 () Bool)

(assert (=> b!2306989 (= e!1478522 None!5402)))

(declare-fun b!2306990 () Bool)

(assert (=> b!2306990 (= e!1478521 e!1478524)))

(declare-fun res!986461 () Bool)

(assert (=> b!2306990 (=> (not res!986461) (not e!1478524))))

(assert (=> b!2306990 (= res!986461 (matchR!3010 (regex!4405 r!2363) (list!10836 (charsOf!2793 (_1!16199 (get!8279 lt!855603))))))))

(declare-fun b!2306991 () Bool)

(assert (=> b!2306991 (= e!1478523 (matchR!3010 (regex!4405 r!2363) (_1!16201 (findLongestMatchInner!737 (regex!4405 r!2363) Nil!27461 (size!21671 Nil!27461) input!1722 input!1722 (size!21671 input!1722)))))))

(declare-fun b!2306992 () Bool)

(declare-fun res!986462 () Bool)

(assert (=> b!2306992 (=> (not res!986462) (not e!1478524))))

(assert (=> b!2306992 (= res!986462 (= (rule!6755 (_1!16199 (get!8279 lt!855603))) r!2363))))

(assert (= (and d!682358 c!365681) b!2306989))

(assert (= (and d!682358 (not c!365681)) b!2306984))

(assert (= (and b!2306984 (not res!986458)) b!2306991))

(assert (= (and d!682358 (not res!986464)) b!2306990))

(assert (= (and b!2306990 res!986461) b!2306985))

(assert (= (and b!2306985 res!986459) b!2306988))

(assert (= (and b!2306988 res!986463) b!2306992))

(assert (= (and b!2306992 res!986462) b!2306986))

(assert (= (and b!2306986 res!986460) b!2306987))

(declare-fun m!2734059 () Bool)

(assert (=> b!2306984 m!2734059))

(assert (=> b!2306984 m!2733719))

(declare-fun m!2734061 () Bool)

(assert (=> b!2306984 m!2734061))

(declare-fun m!2734063 () Bool)

(assert (=> b!2306984 m!2734063))

(declare-fun m!2734065 () Bool)

(assert (=> b!2306984 m!2734065))

(assert (=> b!2306984 m!2734063))

(declare-fun m!2734067 () Bool)

(assert (=> b!2306984 m!2734067))

(assert (=> b!2306984 m!2734063))

(declare-fun m!2734069 () Bool)

(assert (=> b!2306984 m!2734069))

(assert (=> b!2306984 m!2733719))

(assert (=> b!2306984 m!2734059))

(assert (=> b!2306984 m!2734063))

(declare-fun m!2734071 () Bool)

(assert (=> b!2306984 m!2734071))

(declare-fun m!2734073 () Bool)

(assert (=> b!2306984 m!2734073))

(declare-fun m!2734075 () Bool)

(assert (=> d!682358 m!2734075))

(declare-fun m!2734077 () Bool)

(assert (=> d!682358 m!2734077))

(declare-fun m!2734079 () Bool)

(assert (=> d!682358 m!2734079))

(assert (=> d!682358 m!2733591))

(declare-fun m!2734081 () Bool)

(assert (=> b!2306988 m!2734081))

(declare-fun m!2734083 () Bool)

(assert (=> b!2306988 m!2734083))

(assert (=> b!2306988 m!2733719))

(assert (=> b!2306985 m!2734081))

(declare-fun m!2734085 () Bool)

(assert (=> b!2306985 m!2734085))

(assert (=> b!2306985 m!2734085))

(declare-fun m!2734087 () Bool)

(assert (=> b!2306985 m!2734087))

(assert (=> b!2306985 m!2734087))

(declare-fun m!2734089 () Bool)

(assert (=> b!2306985 m!2734089))

(assert (=> b!2306992 m!2734081))

(assert (=> b!2306991 m!2734059))

(assert (=> b!2306991 m!2733719))

(assert (=> b!2306991 m!2734059))

(assert (=> b!2306991 m!2733719))

(assert (=> b!2306991 m!2734061))

(declare-fun m!2734091 () Bool)

(assert (=> b!2306991 m!2734091))

(assert (=> b!2306990 m!2734081))

(assert (=> b!2306990 m!2734085))

(assert (=> b!2306990 m!2734085))

(assert (=> b!2306990 m!2734087))

(assert (=> b!2306990 m!2734087))

(declare-fun m!2734093 () Bool)

(assert (=> b!2306990 m!2734093))

(assert (=> b!2306987 m!2734081))

(declare-fun m!2734095 () Bool)

(assert (=> b!2306987 m!2734095))

(assert (=> b!2306986 m!2734081))

(declare-fun m!2734097 () Bool)

(assert (=> b!2306986 m!2734097))

(assert (=> b!2306986 m!2734097))

(declare-fun m!2734099 () Bool)

(assert (=> b!2306986 m!2734099))

(assert (=> b!2306450 d!682358))

(declare-fun d!682360 () Bool)

(declare-fun dynLambda!11945 (Int BalanceConc!17644) TokenValue!4567)

(assert (=> d!682360 (= (apply!6667 (transformation!4405 r!2363) (seqFromList!3109 lt!855433)) (dynLambda!11945 (toValue!6219 (transformation!4405 r!2363)) (seqFromList!3109 lt!855433)))))

(declare-fun b_lambda!73503 () Bool)

(assert (=> (not b_lambda!73503) (not d!682360)))

(declare-fun tb!138131 () Bool)

(declare-fun t!206475 () Bool)

(assert (=> (and b!2306437 (= (toValue!6219 (transformation!4405 otherR!12)) (toValue!6219 (transformation!4405 r!2363))) t!206475) tb!138131))

(declare-fun result!168396 () Bool)

(assert (=> tb!138131 (= result!168396 (inv!21 (dynLambda!11945 (toValue!6219 (transformation!4405 r!2363)) (seqFromList!3109 lt!855433))))))

(declare-fun m!2734101 () Bool)

(assert (=> tb!138131 m!2734101))

(assert (=> d!682360 t!206475))

(declare-fun b_and!184185 () Bool)

(assert (= b_and!184113 (and (=> t!206475 result!168396) b_and!184185)))

(declare-fun tb!138133 () Bool)

(declare-fun t!206477 () Bool)

(assert (=> (and b!2306446 (= (toValue!6219 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toValue!6219 (transformation!4405 r!2363))) t!206477) tb!138133))

(declare-fun result!168400 () Bool)

(assert (= result!168400 result!168396))

(assert (=> d!682360 t!206477))

(declare-fun b_and!184187 () Bool)

(assert (= b_and!184117 (and (=> t!206477 result!168400) b_and!184187)))

(declare-fun t!206479 () Bool)

(declare-fun tb!138135 () Bool)

(assert (=> (and b!2306449 (= (toValue!6219 (transformation!4405 r!2363)) (toValue!6219 (transformation!4405 r!2363))) t!206479) tb!138135))

(declare-fun result!168402 () Bool)

(assert (= result!168402 result!168396))

(assert (=> d!682360 t!206479))

(declare-fun b_and!184189 () Bool)

(assert (= b_and!184121 (and (=> t!206479 result!168402) b_and!184189)))

(declare-fun t!206481 () Bool)

(declare-fun tb!138137 () Bool)

(assert (=> (and b!2306443 (= (toValue!6219 (transformation!4405 (h!32863 rules!1750))) (toValue!6219 (transformation!4405 r!2363))) t!206481) tb!138137))

(declare-fun result!168404 () Bool)

(assert (= result!168404 result!168396))

(assert (=> d!682360 t!206481))

(declare-fun b_and!184191 () Bool)

(assert (= b_and!184125 (and (=> t!206481 result!168404) b_and!184191)))

(assert (=> d!682360 m!2733527))

(declare-fun m!2734103 () Bool)

(assert (=> d!682360 m!2734103))

(assert (=> b!2306450 d!682360))

(declare-fun d!682362 () Bool)

(declare-fun e!1478528 () Bool)

(assert (=> d!682362 e!1478528))

(declare-fun c!365683 () Bool)

(assert (=> d!682362 (= c!365683 ((_ is EmptyExpr!6753) (regex!4405 r!2363)))))

(declare-fun lt!855606 () Bool)

(declare-fun e!1478533 () Bool)

(assert (=> d!682362 (= lt!855606 e!1478533)))

(declare-fun c!365682 () Bool)

(assert (=> d!682362 (= c!365682 (isEmpty!15704 (list!10836 (charsOf!2793 (head!5058 tokens!456)))))))

(assert (=> d!682362 (validRegex!2554 (regex!4405 r!2363))))

(assert (=> d!682362 (= (matchR!3010 (regex!4405 r!2363) (list!10836 (charsOf!2793 (head!5058 tokens!456)))) lt!855606)))

(declare-fun b!2306995 () Bool)

(declare-fun e!1478532 () Bool)

(assert (=> b!2306995 (= e!1478528 e!1478532)))

(declare-fun c!365684 () Bool)

(assert (=> b!2306995 (= c!365684 ((_ is EmptyLang!6753) (regex!4405 r!2363)))))

(declare-fun bm!137175 () Bool)

(declare-fun call!137180 () Bool)

(assert (=> bm!137175 (= call!137180 (isEmpty!15704 (list!10836 (charsOf!2793 (head!5058 tokens!456)))))))

(declare-fun b!2306996 () Bool)

(assert (=> b!2306996 (= e!1478532 (not lt!855606))))

(declare-fun b!2306997 () Bool)

(declare-fun e!1478534 () Bool)

(declare-fun e!1478530 () Bool)

(assert (=> b!2306997 (= e!1478534 e!1478530)))

(declare-fun res!986465 () Bool)

(assert (=> b!2306997 (=> res!986465 e!1478530)))

(assert (=> b!2306997 (= res!986465 call!137180)))

(declare-fun b!2306998 () Bool)

(declare-fun res!986466 () Bool)

(declare-fun e!1478529 () Bool)

(assert (=> b!2306998 (=> res!986466 e!1478529)))

(assert (=> b!2306998 (= res!986466 (not ((_ is ElementMatch!6753) (regex!4405 r!2363))))))

(assert (=> b!2306998 (= e!1478532 e!1478529)))

(declare-fun b!2306999 () Bool)

(assert (=> b!2306999 (= e!1478533 (nullable!1892 (regex!4405 r!2363)))))

(declare-fun b!2307000 () Bool)

(declare-fun res!986472 () Bool)

(assert (=> b!2307000 (=> res!986472 e!1478530)))

(assert (=> b!2307000 (= res!986472 (not (isEmpty!15704 (tail!3335 (list!10836 (charsOf!2793 (head!5058 tokens!456)))))))))

(declare-fun b!2307001 () Bool)

(assert (=> b!2307001 (= e!1478533 (matchR!3010 (derivativeStep!1552 (regex!4405 r!2363) (head!5060 (list!10836 (charsOf!2793 (head!5058 tokens!456))))) (tail!3335 (list!10836 (charsOf!2793 (head!5058 tokens!456))))))))

(declare-fun b!2307002 () Bool)

(declare-fun res!986469 () Bool)

(declare-fun e!1478531 () Bool)

(assert (=> b!2307002 (=> (not res!986469) (not e!1478531))))

(assert (=> b!2307002 (= res!986469 (isEmpty!15704 (tail!3335 (list!10836 (charsOf!2793 (head!5058 tokens!456))))))))

(declare-fun b!2307003 () Bool)

(assert (=> b!2307003 (= e!1478530 (not (= (head!5060 (list!10836 (charsOf!2793 (head!5058 tokens!456)))) (c!365593 (regex!4405 r!2363)))))))

(declare-fun b!2307004 () Bool)

(assert (=> b!2307004 (= e!1478528 (= lt!855606 call!137180))))

(declare-fun b!2307005 () Bool)

(declare-fun res!986467 () Bool)

(assert (=> b!2307005 (=> (not res!986467) (not e!1478531))))

(assert (=> b!2307005 (= res!986467 (not call!137180))))

(declare-fun b!2307006 () Bool)

(assert (=> b!2307006 (= e!1478531 (= (head!5060 (list!10836 (charsOf!2793 (head!5058 tokens!456)))) (c!365593 (regex!4405 r!2363))))))

(declare-fun b!2307007 () Bool)

(declare-fun res!986468 () Bool)

(assert (=> b!2307007 (=> res!986468 e!1478529)))

(assert (=> b!2307007 (= res!986468 e!1478531)))

(declare-fun res!986470 () Bool)

(assert (=> b!2307007 (=> (not res!986470) (not e!1478531))))

(assert (=> b!2307007 (= res!986470 lt!855606)))

(declare-fun b!2307008 () Bool)

(assert (=> b!2307008 (= e!1478529 e!1478534)))

(declare-fun res!986471 () Bool)

(assert (=> b!2307008 (=> (not res!986471) (not e!1478534))))

(assert (=> b!2307008 (= res!986471 (not lt!855606))))

(assert (= (and d!682362 c!365682) b!2306999))

(assert (= (and d!682362 (not c!365682)) b!2307001))

(assert (= (and d!682362 c!365683) b!2307004))

(assert (= (and d!682362 (not c!365683)) b!2306995))

(assert (= (and b!2306995 c!365684) b!2306996))

(assert (= (and b!2306995 (not c!365684)) b!2306998))

(assert (= (and b!2306998 (not res!986466)) b!2307007))

(assert (= (and b!2307007 res!986470) b!2307005))

(assert (= (and b!2307005 res!986467) b!2307002))

(assert (= (and b!2307002 res!986469) b!2307006))

(assert (= (and b!2307007 (not res!986468)) b!2307008))

(assert (= (and b!2307008 res!986471) b!2306997))

(assert (= (and b!2306997 (not res!986465)) b!2307000))

(assert (= (and b!2307000 (not res!986472)) b!2307003))

(assert (= (or b!2307004 b!2306997 b!2307005) bm!137175))

(assert (=> b!2306999 m!2734003))

(assert (=> b!2307001 m!2733561))

(declare-fun m!2734105 () Bool)

(assert (=> b!2307001 m!2734105))

(assert (=> b!2307001 m!2734105))

(declare-fun m!2734107 () Bool)

(assert (=> b!2307001 m!2734107))

(assert (=> b!2307001 m!2733561))

(declare-fun m!2734109 () Bool)

(assert (=> b!2307001 m!2734109))

(assert (=> b!2307001 m!2734107))

(assert (=> b!2307001 m!2734109))

(declare-fun m!2734111 () Bool)

(assert (=> b!2307001 m!2734111))

(assert (=> b!2307000 m!2733561))

(assert (=> b!2307000 m!2734109))

(assert (=> b!2307000 m!2734109))

(declare-fun m!2734113 () Bool)

(assert (=> b!2307000 m!2734113))

(assert (=> b!2307002 m!2733561))

(assert (=> b!2307002 m!2734109))

(assert (=> b!2307002 m!2734109))

(assert (=> b!2307002 m!2734113))

(assert (=> d!682362 m!2733561))

(declare-fun m!2734115 () Bool)

(assert (=> d!682362 m!2734115))

(assert (=> d!682362 m!2734013))

(assert (=> b!2307006 m!2733561))

(assert (=> b!2307006 m!2734105))

(assert (=> bm!137175 m!2733561))

(assert (=> bm!137175 m!2734115))

(assert (=> b!2307003 m!2733561))

(assert (=> b!2307003 m!2734105))

(assert (=> b!2306439 d!682362))

(declare-fun d!682364 () Bool)

(assert (=> d!682364 (= (list!10836 (charsOf!2793 (head!5058 tokens!456))) (list!10839 (c!365592 (charsOf!2793 (head!5058 tokens!456)))))))

(declare-fun bs!457976 () Bool)

(assert (= bs!457976 d!682364))

(declare-fun m!2734117 () Bool)

(assert (=> bs!457976 m!2734117))

(assert (=> b!2306439 d!682364))

(declare-fun d!682366 () Bool)

(declare-fun lt!855607 () BalanceConc!17644)

(assert (=> d!682366 (= (list!10836 lt!855607) (originalCharacters!5175 (head!5058 tokens!456)))))

(assert (=> d!682366 (= lt!855607 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456)))) (value!139362 (head!5058 tokens!456))))))

(assert (=> d!682366 (= (charsOf!2793 (head!5058 tokens!456)) lt!855607)))

(declare-fun b_lambda!73505 () Bool)

(assert (=> (not b_lambda!73505) (not d!682366)))

(declare-fun t!206483 () Bool)

(declare-fun tb!138139 () Bool)

(assert (=> (and b!2306437 (= (toChars!6078 (transformation!4405 otherR!12)) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206483) tb!138139))

(declare-fun b!2307009 () Bool)

(declare-fun e!1478535 () Bool)

(declare-fun tp!731908 () Bool)

(assert (=> b!2307009 (= e!1478535 (and (inv!37106 (c!365592 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456)))) (value!139362 (head!5058 tokens!456))))) tp!731908))))

(declare-fun result!168406 () Bool)

(assert (=> tb!138139 (= result!168406 (and (inv!37107 (dynLambda!11943 (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456)))) (value!139362 (head!5058 tokens!456)))) e!1478535))))

(assert (= tb!138139 b!2307009))

(declare-fun m!2734119 () Bool)

(assert (=> b!2307009 m!2734119))

(declare-fun m!2734121 () Bool)

(assert (=> tb!138139 m!2734121))

(assert (=> d!682366 t!206483))

(declare-fun b_and!184193 () Bool)

(assert (= b_and!184161 (and (=> t!206483 result!168406) b_and!184193)))

(declare-fun t!206485 () Bool)

(declare-fun tb!138141 () Bool)

(assert (=> (and b!2306446 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206485) tb!138141))

(declare-fun result!168408 () Bool)

(assert (= result!168408 result!168406))

(assert (=> d!682366 t!206485))

(declare-fun b_and!184195 () Bool)

(assert (= b_and!184163 (and (=> t!206485 result!168408) b_and!184195)))

(declare-fun tb!138143 () Bool)

(declare-fun t!206487 () Bool)

(assert (=> (and b!2306449 (= (toChars!6078 (transformation!4405 r!2363)) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206487) tb!138143))

(declare-fun result!168410 () Bool)

(assert (= result!168410 result!168406))

(assert (=> d!682366 t!206487))

(declare-fun b_and!184197 () Bool)

(assert (= b_and!184165 (and (=> t!206487 result!168410) b_and!184197)))

(declare-fun t!206489 () Bool)

(declare-fun tb!138145 () Bool)

(assert (=> (and b!2306443 (= (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206489) tb!138145))

(declare-fun result!168412 () Bool)

(assert (= result!168412 result!168406))

(assert (=> d!682366 t!206489))

(declare-fun b_and!184199 () Bool)

(assert (= b_and!184167 (and (=> t!206489 result!168412) b_and!184199)))

(declare-fun m!2734123 () Bool)

(assert (=> d!682366 m!2734123))

(declare-fun m!2734125 () Bool)

(assert (=> d!682366 m!2734125))

(assert (=> b!2306439 d!682366))

(declare-fun d!682368 () Bool)

(assert (=> d!682368 (= (head!5058 tokens!456) (h!32864 tokens!456))))

(assert (=> b!2306439 d!682368))

(declare-fun d!682370 () Bool)

(declare-fun lt!855610 () Int)

(assert (=> d!682370 (= lt!855610 (size!21671 (list!10836 (charsOf!2793 (head!5058 tokens!456)))))))

(declare-fun size!21675 (Conc!8958) Int)

(assert (=> d!682370 (= lt!855610 (size!21675 (c!365592 (charsOf!2793 (head!5058 tokens!456)))))))

(assert (=> d!682370 (= (size!21670 (charsOf!2793 (head!5058 tokens!456))) lt!855610)))

(declare-fun bs!457977 () Bool)

(assert (= bs!457977 d!682370))

(assert (=> bs!457977 m!2733537))

(assert (=> bs!457977 m!2733561))

(assert (=> bs!457977 m!2733561))

(declare-fun m!2734127 () Bool)

(assert (=> bs!457977 m!2734127))

(declare-fun m!2734129 () Bool)

(assert (=> bs!457977 m!2734129))

(assert (=> b!2306440 d!682370))

(assert (=> b!2306440 d!682366))

(assert (=> b!2306440 d!682368))

(assert (=> b!2306440 d!682240))

(assert (=> b!2306461 d!682368))

(declare-fun b!2307014 () Bool)

(declare-fun e!1478538 () Bool)

(declare-fun tp!731911 () Bool)

(assert (=> b!2307014 (= e!1478538 (and tp_is_empty!10727 tp!731911))))

(assert (=> b!2306444 (= tp!731821 e!1478538)))

(assert (= (and b!2306444 ((_ is Cons!27461) (t!206427 input!1722))) b!2307014))

(declare-fun b!2307027 () Bool)

(declare-fun e!1478541 () Bool)

(declare-fun tp!731923 () Bool)

(assert (=> b!2307027 (= e!1478541 tp!731923)))

(declare-fun b!2307028 () Bool)

(declare-fun tp!731924 () Bool)

(declare-fun tp!731922 () Bool)

(assert (=> b!2307028 (= e!1478541 (and tp!731924 tp!731922))))

(declare-fun b!2307026 () Bool)

(declare-fun tp!731925 () Bool)

(declare-fun tp!731926 () Bool)

(assert (=> b!2307026 (= e!1478541 (and tp!731925 tp!731926))))

(assert (=> b!2306463 (= tp!731827 e!1478541)))

(declare-fun b!2307025 () Bool)

(assert (=> b!2307025 (= e!1478541 tp_is_empty!10727)))

(assert (= (and b!2306463 ((_ is ElementMatch!6753) (regex!4405 (rule!6755 (h!32864 tokens!456))))) b!2307025))

(assert (= (and b!2306463 ((_ is Concat!11321) (regex!4405 (rule!6755 (h!32864 tokens!456))))) b!2307026))

(assert (= (and b!2306463 ((_ is Star!6753) (regex!4405 (rule!6755 (h!32864 tokens!456))))) b!2307027))

(assert (= (and b!2306463 ((_ is Union!6753) (regex!4405 (rule!6755 (h!32864 tokens!456))))) b!2307028))

(declare-fun b!2307042 () Bool)

(declare-fun b_free!69797 () Bool)

(declare-fun b_next!70501 () Bool)

(assert (=> b!2307042 (= b_free!69797 (not b_next!70501))))

(declare-fun t!206491 () Bool)

(declare-fun tb!138147 () Bool)

(assert (=> (and b!2307042 (= (toValue!6219 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toValue!6219 (transformation!4405 r!2363))) t!206491) tb!138147))

(declare-fun result!168420 () Bool)

(assert (= result!168420 result!168396))

(assert (=> d!682360 t!206491))

(declare-fun b_and!184201 () Bool)

(declare-fun tp!731940 () Bool)

(assert (=> b!2307042 (= tp!731940 (and (=> t!206491 result!168420) b_and!184201))))

(declare-fun b_free!69799 () Bool)

(declare-fun b_next!70503 () Bool)

(assert (=> b!2307042 (= b_free!69799 (not b_next!70503))))

(declare-fun t!206493 () Bool)

(declare-fun tb!138149 () Bool)

(assert (=> (and b!2307042 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206493) tb!138149))

(declare-fun result!168422 () Bool)

(assert (= result!168422 result!168356))

(assert (=> d!682222 t!206493))

(assert (=> b!2306707 t!206493))

(declare-fun t!206495 () Bool)

(declare-fun tb!138151 () Bool)

(assert (=> (and b!2307042 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206495) tb!138151))

(declare-fun result!168424 () Bool)

(assert (= result!168424 result!168406))

(assert (=> d!682366 t!206495))

(declare-fun tp!731939 () Bool)

(declare-fun b_and!184203 () Bool)

(assert (=> b!2307042 (= tp!731939 (and (=> t!206493 result!168422) (=> t!206495 result!168424) b_and!184203))))

(declare-fun e!1478554 () Bool)

(declare-fun e!1478556 () Bool)

(declare-fun tp!731941 () Bool)

(declare-fun b!2307040 () Bool)

(assert (=> b!2307040 (= e!1478556 (and (inv!21 (value!139362 (h!32864 (t!206429 tokens!456)))) e!1478554 tp!731941))))

(declare-fun e!1478555 () Bool)

(assert (=> b!2306453 (= tp!731825 e!1478555)))

(declare-fun e!1478559 () Bool)

(assert (=> b!2307042 (= e!1478559 (and tp!731940 tp!731939))))

(declare-fun b!2307041 () Bool)

(declare-fun tp!731937 () Bool)

(assert (=> b!2307041 (= e!1478554 (and tp!731937 (inv!37099 (tag!4895 (rule!6755 (h!32864 (t!206429 tokens!456))))) (inv!37102 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) e!1478559))))

(declare-fun b!2307039 () Bool)

(declare-fun tp!731938 () Bool)

(assert (=> b!2307039 (= e!1478555 (and (inv!37103 (h!32864 (t!206429 tokens!456))) e!1478556 tp!731938))))

(assert (= b!2307041 b!2307042))

(assert (= b!2307040 b!2307041))

(assert (= b!2307039 b!2307040))

(assert (= (and b!2306453 ((_ is Cons!27463) (t!206429 tokens!456))) b!2307039))

(declare-fun m!2734131 () Bool)

(assert (=> b!2307040 m!2734131))

(declare-fun m!2734133 () Bool)

(assert (=> b!2307041 m!2734133))

(declare-fun m!2734135 () Bool)

(assert (=> b!2307041 m!2734135))

(declare-fun m!2734137 () Bool)

(assert (=> b!2307039 m!2734137))

(declare-fun b!2307045 () Bool)

(declare-fun e!1478560 () Bool)

(declare-fun tp!731943 () Bool)

(assert (=> b!2307045 (= e!1478560 tp!731943)))

(declare-fun b!2307046 () Bool)

(declare-fun tp!731944 () Bool)

(declare-fun tp!731942 () Bool)

(assert (=> b!2307046 (= e!1478560 (and tp!731944 tp!731942))))

(declare-fun b!2307044 () Bool)

(declare-fun tp!731945 () Bool)

(declare-fun tp!731946 () Bool)

(assert (=> b!2307044 (= e!1478560 (and tp!731945 tp!731946))))

(assert (=> b!2306467 (= tp!731835 e!1478560)))

(declare-fun b!2307043 () Bool)

(assert (=> b!2307043 (= e!1478560 tp_is_empty!10727)))

(assert (= (and b!2306467 ((_ is ElementMatch!6753) (regex!4405 r!2363))) b!2307043))

(assert (= (and b!2306467 ((_ is Concat!11321) (regex!4405 r!2363))) b!2307044))

(assert (= (and b!2306467 ((_ is Star!6753) (regex!4405 r!2363))) b!2307045))

(assert (= (and b!2306467 ((_ is Union!6753) (regex!4405 r!2363))) b!2307046))

(declare-fun b!2307049 () Bool)

(declare-fun e!1478561 () Bool)

(declare-fun tp!731948 () Bool)

(assert (=> b!2307049 (= e!1478561 tp!731948)))

(declare-fun b!2307050 () Bool)

(declare-fun tp!731949 () Bool)

(declare-fun tp!731947 () Bool)

(assert (=> b!2307050 (= e!1478561 (and tp!731949 tp!731947))))

(declare-fun b!2307048 () Bool)

(declare-fun tp!731950 () Bool)

(declare-fun tp!731951 () Bool)

(assert (=> b!2307048 (= e!1478561 (and tp!731950 tp!731951))))

(assert (=> b!2306436 (= tp!731833 e!1478561)))

(declare-fun b!2307047 () Bool)

(assert (=> b!2307047 (= e!1478561 tp_is_empty!10727)))

(assert (= (and b!2306436 ((_ is ElementMatch!6753) (regex!4405 otherR!12))) b!2307047))

(assert (= (and b!2306436 ((_ is Concat!11321) (regex!4405 otherR!12))) b!2307048))

(assert (= (and b!2306436 ((_ is Star!6753) (regex!4405 otherR!12))) b!2307049))

(assert (= (and b!2306436 ((_ is Union!6753) (regex!4405 otherR!12))) b!2307050))

(declare-fun b!2307053 () Bool)

(declare-fun e!1478562 () Bool)

(declare-fun tp!731953 () Bool)

(assert (=> b!2307053 (= e!1478562 tp!731953)))

(declare-fun b!2307054 () Bool)

(declare-fun tp!731954 () Bool)

(declare-fun tp!731952 () Bool)

(assert (=> b!2307054 (= e!1478562 (and tp!731954 tp!731952))))

(declare-fun b!2307052 () Bool)

(declare-fun tp!731955 () Bool)

(declare-fun tp!731956 () Bool)

(assert (=> b!2307052 (= e!1478562 (and tp!731955 tp!731956))))

(assert (=> b!2306457 (= tp!731834 e!1478562)))

(declare-fun b!2307051 () Bool)

(assert (=> b!2307051 (= e!1478562 tp_is_empty!10727)))

(assert (= (and b!2306457 ((_ is ElementMatch!6753) (regex!4405 (h!32863 rules!1750)))) b!2307051))

(assert (= (and b!2306457 ((_ is Concat!11321) (regex!4405 (h!32863 rules!1750)))) b!2307052))

(assert (= (and b!2306457 ((_ is Star!6753) (regex!4405 (h!32863 rules!1750)))) b!2307053))

(assert (= (and b!2306457 ((_ is Union!6753) (regex!4405 (h!32863 rules!1750)))) b!2307054))

(declare-fun b!2307055 () Bool)

(declare-fun e!1478563 () Bool)

(declare-fun tp!731957 () Bool)

(assert (=> b!2307055 (= e!1478563 (and tp_is_empty!10727 tp!731957))))

(assert (=> b!2306455 (= tp!731822 e!1478563)))

(assert (= (and b!2306455 ((_ is Cons!27461) (originalCharacters!5175 (h!32864 tokens!456)))) b!2307055))

(declare-fun b!2307056 () Bool)

(declare-fun e!1478564 () Bool)

(declare-fun tp!731958 () Bool)

(assert (=> b!2307056 (= e!1478564 (and tp_is_empty!10727 tp!731958))))

(assert (=> b!2306459 (= tp!731836 e!1478564)))

(assert (= (and b!2306459 ((_ is Cons!27461) (t!206427 otherP!12))) b!2307056))

(declare-fun b!2307057 () Bool)

(declare-fun e!1478565 () Bool)

(declare-fun tp!731959 () Bool)

(assert (=> b!2307057 (= e!1478565 (and tp_is_empty!10727 tp!731959))))

(assert (=> b!2306448 (= tp!731837 e!1478565)))

(assert (= (and b!2306448 ((_ is Cons!27461) (t!206427 suffix!886))) b!2307057))

(declare-fun b!2307068 () Bool)

(declare-fun b_free!69801 () Bool)

(declare-fun b_next!70505 () Bool)

(assert (=> b!2307068 (= b_free!69801 (not b_next!70505))))

(declare-fun tb!138153 () Bool)

(declare-fun t!206497 () Bool)

(assert (=> (and b!2307068 (= (toValue!6219 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toValue!6219 (transformation!4405 r!2363))) t!206497) tb!138153))

(declare-fun result!168428 () Bool)

(assert (= result!168428 result!168396))

(assert (=> d!682360 t!206497))

(declare-fun b_and!184205 () Bool)

(declare-fun tp!731971 () Bool)

(assert (=> b!2307068 (= tp!731971 (and (=> t!206497 result!168428) b_and!184205))))

(declare-fun b_free!69803 () Bool)

(declare-fun b_next!70507 () Bool)

(assert (=> b!2307068 (= b_free!69803 (not b_next!70507))))

(declare-fun tb!138155 () Bool)

(declare-fun t!206499 () Bool)

(assert (=> (and b!2307068 (= (toChars!6078 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456))))) t!206499) tb!138155))

(declare-fun result!168430 () Bool)

(assert (= result!168430 result!168356))

(assert (=> d!682222 t!206499))

(assert (=> b!2306707 t!206499))

(declare-fun tb!138157 () Bool)

(declare-fun t!206501 () Bool)

(assert (=> (and b!2307068 (= (toChars!6078 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toChars!6078 (transformation!4405 (rule!6755 (head!5058 tokens!456))))) t!206501) tb!138157))

(declare-fun result!168432 () Bool)

(assert (= result!168432 result!168406))

(assert (=> d!682366 t!206501))

(declare-fun tp!731968 () Bool)

(declare-fun b_and!184207 () Bool)

(assert (=> b!2307068 (= tp!731968 (and (=> t!206499 result!168430) (=> t!206501 result!168432) b_and!184207))))

(declare-fun e!1478577 () Bool)

(assert (=> b!2307068 (= e!1478577 (and tp!731971 tp!731968))))

(declare-fun tp!731969 () Bool)

(declare-fun b!2307067 () Bool)

(declare-fun e!1478574 () Bool)

(assert (=> b!2307067 (= e!1478574 (and tp!731969 (inv!37099 (tag!4895 (h!32863 (t!206428 rules!1750)))) (inv!37102 (transformation!4405 (h!32863 (t!206428 rules!1750)))) e!1478577))))

(declare-fun b!2307066 () Bool)

(declare-fun e!1478576 () Bool)

(declare-fun tp!731970 () Bool)

(assert (=> b!2307066 (= e!1478576 (and e!1478574 tp!731970))))

(assert (=> b!2306462 (= tp!731820 e!1478576)))

(assert (= b!2307067 b!2307068))

(assert (= b!2307066 b!2307067))

(assert (= (and b!2306462 ((_ is Cons!27462) (t!206428 rules!1750))) b!2307066))

(declare-fun m!2734139 () Bool)

(assert (=> b!2307067 m!2734139))

(declare-fun m!2734141 () Bool)

(assert (=> b!2307067 m!2734141))

(declare-fun b_lambda!73507 () Bool)

(assert (= b_lambda!73503 (or (and b!2306446 b_free!69777 (= (toValue!6219 (transformation!4405 (rule!6755 (h!32864 tokens!456)))) (toValue!6219 (transformation!4405 r!2363)))) (and b!2306437 b_free!69773 (= (toValue!6219 (transformation!4405 otherR!12)) (toValue!6219 (transformation!4405 r!2363)))) (and b!2307068 b_free!69801 (= (toValue!6219 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toValue!6219 (transformation!4405 r!2363)))) (and b!2306449 b_free!69781) (and b!2307042 b_free!69797 (= (toValue!6219 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toValue!6219 (transformation!4405 r!2363)))) (and b!2306443 b_free!69785 (= (toValue!6219 (transformation!4405 (h!32863 rules!1750))) (toValue!6219 (transformation!4405 r!2363)))) b_lambda!73507)))

(declare-fun b_lambda!73509 () Bool)

(assert (= b_lambda!73489 (or (and b!2306449 b_free!69783 (= (toChars!6078 (transformation!4405 r!2363)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306437 b_free!69775 (= (toChars!6078 (transformation!4405 otherR!12)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306446 b_free!69779) (and b!2307042 b_free!69799 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2307068 b_free!69803 (= (toChars!6078 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306443 b_free!69787 (= (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) b_lambda!73509)))

(declare-fun b_lambda!73511 () Bool)

(assert (= b_lambda!73493 (or (and b!2306449 b_free!69783 (= (toChars!6078 (transformation!4405 r!2363)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306437 b_free!69775 (= (toChars!6078 (transformation!4405 otherR!12)) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306446 b_free!69779) (and b!2307042 b_free!69799 (= (toChars!6078 (transformation!4405 (rule!6755 (h!32864 (t!206429 tokens!456))))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2307068 b_free!69803 (= (toChars!6078 (transformation!4405 (h!32863 (t!206428 rules!1750)))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) (and b!2306443 b_free!69787 (= (toChars!6078 (transformation!4405 (h!32863 rules!1750))) (toChars!6078 (transformation!4405 (rule!6755 (h!32864 tokens!456)))))) b_lambda!73511)))

(check-sat (not b!2307045) (not b!2306780) (not d!682190) (not b!2306999) (not b!2307067) (not tb!138139) (not b!2307001) (not b_next!70503) (not b!2306670) (not b!2307056) (not b!2306956) (not b!2306567) (not b_lambda!73505) (not b!2306637) (not bm!137167) (not b!2307014) (not b!2307046) (not b!2306782) (not b!2306811) (not b!2306985) b_and!184199 (not d!682306) (not b!2306683) (not d!682282) (not d!682260) (not b!2306992) (not d!682344) (not b!2306671) (not d!682340) (not b_next!70481) (not bm!137174) (not b_next!70477) b_and!184197 b_and!184185 b_and!184201 (not b!2306786) (not d!682338) (not b!2307006) (not b!2306641) (not d!682354) (not b!2306787) (not b!2306903) (not b!2307041) (not b!2306633) (not d!682310) (not b!2307002) (not b!2307028) (not b!2306963) (not b!2307026) (not d!682362) (not b!2306901) (not b!2306635) (not b!2307066) b_and!184189 b_and!184187 (not b_lambda!73509) (not b!2306987) (not b_next!70505) (not d!682332) (not b!2307044) (not b!2306639) (not b_next!70479) (not b!2306984) (not b!2306904) (not b!2306902) b_and!184207 (not b_next!70483) b_and!184193 (not b!2306961) (not b!2306808) b_and!184195 (not d!682346) (not b!2306708) (not b!2306577) (not tb!138103) (not b!2306784) (not b_next!70489) (not b_next!70487) (not b_next!70507) (not b_lambda!73507) (not b!2306545) (not b!2306634) (not b!2307049) (not b!2306988) (not d!682320) (not b!2306502) (not d!682348) (not d!682270) (not d!682336) (not d!682366) (not b!2306810) (not b!2307039) (not b!2306991) (not b!2306965) (not b!2306948) (not b!2306915) (not b!2307040) (not d!682244) (not d!682212) (not b!2307003) (not b_next!70501) (not d!682358) (not d!682342) (not tb!138131) tp_is_empty!10727 (not d!682318) (not b!2306574) (not b_next!70491) (not b!2306707) (not b!2307054) (not b!2306905) (not b!2306944) (not b!2306640) (not b!2306568) (not d!682352) (not d!682280) (not b!2306636) (not d!682278) (not b_next!70485) (not b!2306669) (not b!2307048) (not b!2306785) (not d!682364) (not b!2307009) (not b!2306908) (not b!2307000) (not b!2307057) (not b!2307050) (not b!2307027) (not b!2306960) (not d!682238) (not b!2306521) (not d!682314) (not b!2306959) (not d!682230) (not b!2306964) (not d!682370) (not bm!137175) (not b!2306820) b_and!184191 b_and!184203 (not b!2307052) (not d!682236) (not b!2307055) b_and!184205 (not b!2307053) (not b!2306781) (not b_lambda!73511) (not d!682302) (not d!682218) (not b!2306986) (not b!2306990) (not d!682222) (not b!2306954))
(check-sat (not b_next!70503) b_and!184199 (not b_next!70501) (not b_next!70491) (not b_next!70485) b_and!184205 (not b_next!70481) (not b_next!70477) b_and!184197 b_and!184185 b_and!184201 b_and!184189 b_and!184187 (not b_next!70505) (not b_next!70479) b_and!184207 (not b_next!70483) b_and!184193 b_and!184195 (not b_next!70489) (not b_next!70487) (not b_next!70507) b_and!184191 b_and!184203)
