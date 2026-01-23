; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!314052 () Bool)

(assert start!314052)

(declare-fun b!3374749 () Bool)

(declare-fun b_free!88165 () Bool)

(declare-fun b_next!88869 () Bool)

(assert (=> b!3374749 (= b_free!88165 (not b_next!88869))))

(declare-fun tp!1055562 () Bool)

(declare-fun b_and!234219 () Bool)

(assert (=> b!3374749 (= tp!1055562 b_and!234219)))

(declare-fun b_free!88167 () Bool)

(declare-fun b_next!88871 () Bool)

(assert (=> b!3374749 (= b_free!88167 (not b_next!88871))))

(declare-fun tp!1055552 () Bool)

(declare-fun b_and!234221 () Bool)

(assert (=> b!3374749 (= tp!1055552 b_and!234221)))

(declare-fun b!3374738 () Bool)

(declare-fun b_free!88169 () Bool)

(declare-fun b_next!88873 () Bool)

(assert (=> b!3374738 (= b_free!88169 (not b_next!88873))))

(declare-fun tp!1055559 () Bool)

(declare-fun b_and!234223 () Bool)

(assert (=> b!3374738 (= tp!1055559 b_and!234223)))

(declare-fun b_free!88171 () Bool)

(declare-fun b_next!88875 () Bool)

(assert (=> b!3374738 (= b_free!88171 (not b_next!88875))))

(declare-fun tp!1055563 () Bool)

(declare-fun b_and!234225 () Bool)

(assert (=> b!3374738 (= tp!1055563 b_and!234225)))

(declare-fun b!3374732 () Bool)

(declare-fun b_free!88173 () Bool)

(declare-fun b_next!88877 () Bool)

(assert (=> b!3374732 (= b_free!88173 (not b_next!88877))))

(declare-fun tp!1055558 () Bool)

(declare-fun b_and!234227 () Bool)

(assert (=> b!3374732 (= tp!1055558 b_and!234227)))

(declare-fun b_free!88175 () Bool)

(declare-fun b_next!88879 () Bool)

(assert (=> b!3374732 (= b_free!88175 (not b_next!88879))))

(declare-fun tp!1055551 () Bool)

(declare-fun b_and!234229 () Bool)

(assert (=> b!3374732 (= tp!1055551 b_and!234229)))

(declare-fun b!3374721 () Bool)

(declare-fun e!2094404 () Bool)

(declare-fun e!2094392 () Bool)

(assert (=> b!3374721 (= e!2094404 e!2094392)))

(declare-fun res!1364624 () Bool)

(assert (=> b!3374721 (=> res!1364624 e!2094392)))

(declare-datatypes ((C!20410 0))(
  ( (C!20411 (val!12253 Int)) )
))
(declare-datatypes ((List!36892 0))(
  ( (Nil!36768) (Cons!36768 (h!42188 C!20410) (t!262613 List!36892)) )
))
(declare-fun lt!1145340 () List!36892)

(declare-datatypes ((IArray!22167 0))(
  ( (IArray!22168 (innerList!11141 List!36892)) )
))
(declare-datatypes ((Conc!11081 0))(
  ( (Node!11081 (left!28664 Conc!11081) (right!28994 Conc!11081) (csize!22392 Int) (cheight!11292 Int)) (Leaf!17369 (xs!14235 IArray!22167) (csize!22393 Int)) (Empty!11081) )
))
(declare-datatypes ((BalanceConc!21776 0))(
  ( (BalanceConc!21777 (c!574758 Conc!11081)) )
))
(declare-fun lt!1145335 () BalanceConc!21776)

(declare-fun lt!1145331 () List!36892)

(declare-fun list!13286 (BalanceConc!21776) List!36892)

(declare-fun ++!8976 (List!36892 List!36892) List!36892)

(assert (=> b!3374721 (= res!1364624 (not (= (list!13286 lt!1145335) (++!8976 lt!1145340 lt!1145331))))))

(declare-datatypes ((Regex!10112 0))(
  ( (ElementMatch!10112 (c!574759 C!20410)) (Concat!15695 (regOne!20736 Regex!10112) (regTwo!20736 Regex!10112)) (EmptyExpr!10112) (Star!10112 (reg!10441 Regex!10112)) (EmptyLang!10112) (Union!10112 (regOne!20737 Regex!10112) (regTwo!20737 Regex!10112)) )
))
(declare-datatypes ((List!36893 0))(
  ( (Nil!36769) (Cons!36769 (h!42189 (_ BitVec 16)) (t!262614 List!36893)) )
))
(declare-datatypes ((TokenValue!5583 0))(
  ( (FloatLiteralValue!11166 (text!39526 List!36893)) (TokenValueExt!5582 (__x!23383 Int)) (Broken!27915 (value!172996 List!36893)) (Object!5706) (End!5583) (Def!5583) (Underscore!5583) (Match!5583) (Else!5583) (Error!5583) (Case!5583) (If!5583) (Extends!5583) (Abstract!5583) (Class!5583) (Val!5583) (DelimiterValue!11166 (del!5643 List!36893)) (KeywordValue!5589 (value!172997 List!36893)) (CommentValue!11166 (value!172998 List!36893)) (WhitespaceValue!11166 (value!172999 List!36893)) (IndentationValue!5583 (value!173000 List!36893)) (String!41250) (Int32!5583) (Broken!27916 (value!173001 List!36893)) (Boolean!5584) (Unit!51878) (OperatorValue!5586 (op!5643 List!36893)) (IdentifierValue!11166 (value!173002 List!36893)) (IdentifierValue!11167 (value!173003 List!36893)) (WhitespaceValue!11167 (value!173004 List!36893)) (True!11166) (False!11166) (Broken!27917 (value!173005 List!36893)) (Broken!27918 (value!173006 List!36893)) (True!11167) (RightBrace!5583) (RightBracket!5583) (Colon!5583) (Null!5583) (Comma!5583) (LeftBracket!5583) (False!11167) (LeftBrace!5583) (ImaginaryLiteralValue!5583 (text!39527 List!36893)) (StringLiteralValue!16749 (value!173007 List!36893)) (EOFValue!5583 (value!173008 List!36893)) (IdentValue!5583 (value!173009 List!36893)) (DelimiterValue!11167 (value!173010 List!36893)) (DedentValue!5583 (value!173011 List!36893)) (NewLineValue!5583 (value!173012 List!36893)) (IntegerValue!16749 (value!173013 (_ BitVec 32)) (text!39528 List!36893)) (IntegerValue!16750 (value!173014 Int) (text!39529 List!36893)) (Times!5583) (Or!5583) (Equal!5583) (Minus!5583) (Broken!27919 (value!173015 List!36893)) (And!5583) (Div!5583) (LessEqual!5583) (Mod!5583) (Concat!15696) (Not!5583) (Plus!5583) (SpaceValue!5583 (value!173016 List!36893)) (IntegerValue!16751 (value!173017 Int) (text!39530 List!36893)) (StringLiteralValue!16750 (text!39531 List!36893)) (FloatLiteralValue!11167 (text!39532 List!36893)) (BytesLiteralValue!5583 (value!173018 List!36893)) (CommentValue!11167 (value!173019 List!36893)) (StringLiteralValue!16751 (value!173020 List!36893)) (ErrorTokenValue!5583 (msg!5644 List!36893)) )
))
(declare-datatypes ((String!41251 0))(
  ( (String!41252 (value!173021 String)) )
))
(declare-datatypes ((TokenValueInjection!10594 0))(
  ( (TokenValueInjection!10595 (toValue!7537 Int) (toChars!7396 Int)) )
))
(declare-datatypes ((Rule!10506 0))(
  ( (Rule!10507 (regex!5353 Regex!10112) (tag!5917 String!41251) (isSeparator!5353 Bool) (transformation!5353 TokenValueInjection!10594)) )
))
(declare-datatypes ((Token!10072 0))(
  ( (Token!10073 (value!173022 TokenValue!5583) (rule!7893 Rule!10506) (size!27828 Int) (originalCharacters!6067 List!36892)) )
))
(declare-fun separatorToken!241 () Token!10072)

(declare-fun charsOf!3367 (Token!10072) BalanceConc!21776)

(assert (=> b!3374721 (= lt!1145331 (list!13286 (charsOf!3367 separatorToken!241)))))

(declare-datatypes ((LexerInterface!4942 0))(
  ( (LexerInterfaceExt!4939 (__x!23384 Int)) (Lexer!4940) )
))
(declare-fun thiss!18206 () LexerInterface!4942)

(declare-datatypes ((List!36894 0))(
  ( (Nil!36770) (Cons!36770 (h!42190 Token!10072) (t!262615 List!36894)) )
))
(declare-datatypes ((IArray!22169 0))(
  ( (IArray!22170 (innerList!11142 List!36894)) )
))
(declare-datatypes ((Conc!11082 0))(
  ( (Node!11082 (left!28665 Conc!11082) (right!28995 Conc!11082) (csize!22394 Int) (cheight!11293 Int)) (Leaf!17370 (xs!14236 IArray!22169) (csize!22395 Int)) (Empty!11082) )
))
(declare-datatypes ((BalanceConc!21778 0))(
  ( (BalanceConc!21779 (c!574760 Conc!11082)) )
))
(declare-fun lt!1145327 () BalanceConc!21778)

(declare-fun printWithSeparatorToken!133 (LexerInterface!4942 BalanceConc!21778 Token!10072) BalanceConc!21776)

(assert (=> b!3374721 (= lt!1145335 (printWithSeparatorToken!133 thiss!18206 lt!1145327 separatorToken!241))))

(declare-fun b!3374722 () Bool)

(declare-fun e!2094389 () Bool)

(declare-fun e!2094388 () Bool)

(assert (=> b!3374722 (= e!2094389 (not e!2094388))))

(declare-fun res!1364635 () Bool)

(assert (=> b!3374722 (=> res!1364635 e!2094388)))

(declare-fun lt!1145343 () List!36892)

(declare-fun lt!1145342 () List!36892)

(assert (=> b!3374722 (= res!1364635 (not (= lt!1145343 lt!1145342)))))

(declare-fun tokens!494 () List!36894)

(declare-fun printList!1490 (LexerInterface!4942 List!36894) List!36892)

(assert (=> b!3374722 (= lt!1145342 (printList!1490 thiss!18206 (Cons!36770 (h!42190 tokens!494) Nil!36770)))))

(declare-fun lt!1145333 () BalanceConc!21776)

(assert (=> b!3374722 (= lt!1145343 (list!13286 lt!1145333))))

(declare-fun lt!1145341 () BalanceConc!21778)

(declare-fun printTailRec!1437 (LexerInterface!4942 BalanceConc!21778 Int BalanceConc!21776) BalanceConc!21776)

(assert (=> b!3374722 (= lt!1145333 (printTailRec!1437 thiss!18206 lt!1145341 0 (BalanceConc!21777 Empty!11081)))))

(declare-fun print!2007 (LexerInterface!4942 BalanceConc!21778) BalanceConc!21776)

(assert (=> b!3374722 (= lt!1145333 (print!2007 thiss!18206 lt!1145341))))

(declare-fun singletonSeq!2449 (Token!10072) BalanceConc!21778)

(assert (=> b!3374722 (= lt!1145341 (singletonSeq!2449 (h!42190 tokens!494)))))

(declare-fun b!3374723 () Bool)

(declare-fun res!1364631 () Bool)

(declare-fun e!2094408 () Bool)

(assert (=> b!3374723 (=> res!1364631 e!2094408)))

(declare-datatypes ((List!36895 0))(
  ( (Nil!36771) (Cons!36771 (h!42191 Rule!10506) (t!262616 List!36895)) )
))
(declare-fun rules!2135 () List!36895)

(declare-fun rulesProduceIndividualToken!2434 (LexerInterface!4942 List!36895 Token!10072) Bool)

(assert (=> b!3374723 (= res!1364631 (not (rulesProduceIndividualToken!2434 thiss!18206 rules!2135 (h!42190 tokens!494))))))

(declare-fun tp!1055555 () Bool)

(declare-fun e!2094394 () Bool)

(declare-fun b!3374724 () Bool)

(declare-fun e!2094399 () Bool)

(declare-fun inv!49836 (String!41251) Bool)

(declare-fun inv!49839 (TokenValueInjection!10594) Bool)

(assert (=> b!3374724 (= e!2094399 (and tp!1055555 (inv!49836 (tag!5917 (h!42191 rules!2135))) (inv!49839 (transformation!5353 (h!42191 rules!2135))) e!2094394))))

(declare-fun b!3374725 () Bool)

(declare-fun e!2094409 () Bool)

(declare-fun e!2094403 () Bool)

(assert (=> b!3374725 (= e!2094409 e!2094403)))

(declare-fun res!1364623 () Bool)

(assert (=> b!3374725 (=> (not res!1364623) (not e!2094403))))

(declare-fun lt!1145326 () Rule!10506)

(declare-fun matchR!4704 (Regex!10112 List!36892) Bool)

(assert (=> b!3374725 (= res!1364623 (matchR!4704 (regex!5353 lt!1145326) lt!1145340))))

(declare-datatypes ((Option!7353 0))(
  ( (None!7352) (Some!7352 (v!36384 Rule!10506)) )
))
(declare-fun lt!1145332 () Option!7353)

(declare-fun get!11725 (Option!7353) Rule!10506)

(assert (=> b!3374725 (= lt!1145326 (get!11725 lt!1145332))))

(declare-fun b!3374726 () Bool)

(declare-fun res!1364634 () Bool)

(declare-fun e!2094391 () Bool)

(assert (=> b!3374726 (=> (not res!1364634) (not e!2094391))))

(declare-fun rulesInvariant!4339 (LexerInterface!4942 List!36895) Bool)

(assert (=> b!3374726 (= res!1364634 (rulesInvariant!4339 thiss!18206 rules!2135))))

(declare-fun tp!1055557 () Bool)

(declare-fun b!3374727 () Bool)

(declare-fun e!2094387 () Bool)

(declare-fun e!2094400 () Bool)

(assert (=> b!3374727 (= e!2094400 (and tp!1055557 (inv!49836 (tag!5917 (rule!7893 (h!42190 tokens!494)))) (inv!49839 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) e!2094387))))

(declare-fun b!3374728 () Bool)

(declare-fun tp!1055553 () Bool)

(declare-fun e!2094385 () Bool)

(declare-fun e!2094396 () Bool)

(declare-fun inv!21 (TokenValue!5583) Bool)

(assert (=> b!3374728 (= e!2094396 (and (inv!21 (value!173022 separatorToken!241)) e!2094385 tp!1055553))))

(declare-fun e!2094398 () Bool)

(declare-fun tp!1055560 () Bool)

(declare-fun b!3374729 () Bool)

(assert (=> b!3374729 (= e!2094385 (and tp!1055560 (inv!49836 (tag!5917 (rule!7893 separatorToken!241))) (inv!49839 (transformation!5353 (rule!7893 separatorToken!241))) e!2094398))))

(declare-fun b!3374730 () Bool)

(declare-fun e!2094401 () Bool)

(declare-fun e!2094390 () Bool)

(assert (=> b!3374730 (= e!2094401 e!2094390)))

(declare-fun res!1364627 () Bool)

(assert (=> b!3374730 (=> (not res!1364627) (not e!2094390))))

(declare-fun lt!1145336 () Rule!10506)

(assert (=> b!3374730 (= res!1364627 (matchR!4704 (regex!5353 lt!1145336) lt!1145331))))

(declare-fun lt!1145338 () Option!7353)

(assert (=> b!3374730 (= lt!1145336 (get!11725 lt!1145338))))

(declare-fun b!3374731 () Bool)

(declare-fun res!1364628 () Bool)

(assert (=> b!3374731 (=> (not res!1364628) (not e!2094389))))

(assert (=> b!3374731 (= res!1364628 (isSeparator!5353 (rule!7893 separatorToken!241)))))

(assert (=> b!3374732 (= e!2094398 (and tp!1055558 tp!1055551))))

(declare-fun b!3374733 () Bool)

(declare-fun res!1364620 () Bool)

(assert (=> b!3374733 (=> (not res!1364620) (not e!2094389))))

(declare-fun sepAndNonSepRulesDisjointChars!1547 (List!36895 List!36895) Bool)

(assert (=> b!3374733 (= res!1364620 (sepAndNonSepRulesDisjointChars!1547 rules!2135 rules!2135))))

(declare-fun e!2094405 () Bool)

(declare-fun tp!1055556 () Bool)

(declare-fun b!3374734 () Bool)

(declare-fun e!2094395 () Bool)

(declare-fun inv!49840 (Token!10072) Bool)

(assert (=> b!3374734 (= e!2094395 (and (inv!49840 (h!42190 tokens!494)) e!2094405 tp!1055556))))

(declare-fun res!1364632 () Bool)

(assert (=> start!314052 (=> (not res!1364632) (not e!2094391))))

(assert (=> start!314052 (= res!1364632 (is-Lexer!4940 thiss!18206))))

(assert (=> start!314052 e!2094391))

(assert (=> start!314052 true))

(declare-fun e!2094407 () Bool)

(assert (=> start!314052 e!2094407))

(assert (=> start!314052 (and (inv!49840 separatorToken!241) e!2094396)))

(assert (=> start!314052 e!2094395))

(declare-fun b!3374735 () Bool)

(declare-fun e!2094410 () Bool)

(assert (=> b!3374735 (= e!2094410 e!2094404)))

(declare-fun res!1364618 () Bool)

(assert (=> b!3374735 (=> res!1364618 e!2094404)))

(assert (=> b!3374735 (= res!1364618 (isSeparator!5353 (rule!7893 (h!42190 tokens!494))))))

(declare-datatypes ((Unit!51879 0))(
  ( (Unit!51880) )
))
(declare-fun lt!1145330 () Unit!51879)

(declare-fun lambda!120320 () Int)

(declare-fun forallContained!1300 (List!36894 Int Token!10072) Unit!51879)

(assert (=> b!3374735 (= lt!1145330 (forallContained!1300 tokens!494 lambda!120320 (h!42190 tokens!494)))))

(declare-fun b!3374736 () Bool)

(declare-fun tp!1055561 () Bool)

(assert (=> b!3374736 (= e!2094407 (and e!2094399 tp!1055561))))

(declare-fun b!3374737 () Bool)

(assert (=> b!3374737 (= e!2094408 e!2094410)))

(declare-fun res!1364621 () Bool)

(assert (=> b!3374737 (=> res!1364621 e!2094410)))

(declare-fun lt!1145328 () BalanceConc!21776)

(declare-fun isEmpty!20980 (BalanceConc!21778) Bool)

(declare-datatypes ((tuple2!36320 0))(
  ( (tuple2!36321 (_1!21294 BalanceConc!21778) (_2!21294 BalanceConc!21776)) )
))
(declare-fun lex!2268 (LexerInterface!4942 List!36895 BalanceConc!21776) tuple2!36320)

(assert (=> b!3374737 (= res!1364621 (isEmpty!20980 (_1!21294 (lex!2268 thiss!18206 rules!2135 lt!1145328))))))

(declare-fun seqFromList!3759 (List!36892) BalanceConc!21776)

(assert (=> b!3374737 (= lt!1145328 (seqFromList!3759 lt!1145340))))

(assert (=> b!3374738 (= e!2094387 (and tp!1055559 tp!1055563))))

(declare-fun b!3374739 () Bool)

(declare-fun res!1364633 () Bool)

(assert (=> b!3374739 (=> (not res!1364633) (not e!2094389))))

(assert (=> b!3374739 (= res!1364633 (and (not (is-Nil!36770 tokens!494)) (is-Nil!36770 (t!262615 tokens!494))))))

(declare-fun b!3374740 () Bool)

(declare-fun e!2094393 () Bool)

(assert (=> b!3374740 (= e!2094392 e!2094393)))

(declare-fun res!1364619 () Bool)

(assert (=> b!3374740 (=> res!1364619 e!2094393)))

(declare-fun contains!6694 (List!36892 C!20410) Bool)

(declare-fun usedCharacters!609 (Regex!10112) List!36892)

(declare-fun head!7192 (List!36892) C!20410)

(assert (=> b!3374740 (= res!1364619 (contains!6694 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241))) (head!7192 lt!1145331)))))

(declare-datatypes ((tuple2!36322 0))(
  ( (tuple2!36323 (_1!21295 Token!10072) (_2!21295 List!36892)) )
))
(declare-datatypes ((Option!7354 0))(
  ( (None!7353) (Some!7353 (v!36385 tuple2!36322)) )
))
(declare-fun maxPrefixOneRule!1665 (LexerInterface!4942 Rule!10506 List!36892) Option!7354)

(declare-fun apply!8528 (TokenValueInjection!10594 BalanceConc!21776) TokenValue!5583)

(declare-fun size!27829 (List!36892) Int)

(assert (=> b!3374740 (= (maxPrefixOneRule!1665 thiss!18206 (rule!7893 (h!42190 tokens!494)) lt!1145340) (Some!7353 (tuple2!36323 (Token!10073 (apply!8528 (transformation!5353 (rule!7893 (h!42190 tokens!494))) lt!1145328) (rule!7893 (h!42190 tokens!494)) (size!27829 lt!1145340) lt!1145340) Nil!36768)))))

(declare-fun lt!1145329 () Unit!51879)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!764 (LexerInterface!4942 List!36895 List!36892 List!36892 List!36892 Rule!10506) Unit!51879)

(assert (=> b!3374740 (= lt!1145329 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!764 thiss!18206 rules!2135 lt!1145340 lt!1145340 Nil!36768 (rule!7893 (h!42190 tokens!494))))))

(assert (=> b!3374740 e!2094401))

(declare-fun res!1364622 () Bool)

(assert (=> b!3374740 (=> (not res!1364622) (not e!2094401))))

(declare-fun isDefined!5691 (Option!7353) Bool)

(assert (=> b!3374740 (= res!1364622 (isDefined!5691 lt!1145338))))

(declare-fun getRuleFromTag!1008 (LexerInterface!4942 List!36895 String!41251) Option!7353)

(assert (=> b!3374740 (= lt!1145338 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 separatorToken!241))))))

(declare-fun lt!1145334 () Unit!51879)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1008 (LexerInterface!4942 List!36895 List!36892 Token!10072) Unit!51879)

(assert (=> b!3374740 (= lt!1145334 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1008 thiss!18206 rules!2135 lt!1145331 separatorToken!241))))

(assert (=> b!3374740 e!2094409))

(declare-fun res!1364637 () Bool)

(assert (=> b!3374740 (=> (not res!1364637) (not e!2094409))))

(assert (=> b!3374740 (= res!1364637 (isDefined!5691 lt!1145332))))

(assert (=> b!3374740 (= lt!1145332 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 (h!42190 tokens!494)))))))

(declare-fun lt!1145337 () Unit!51879)

(assert (=> b!3374740 (= lt!1145337 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1008 thiss!18206 rules!2135 lt!1145340 (h!42190 tokens!494)))))

(declare-fun lt!1145325 () Unit!51879)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!937 (LexerInterface!4942 List!36895 List!36894 Token!10072) Unit!51879)

(assert (=> b!3374740 (= lt!1145325 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!937 thiss!18206 rules!2135 tokens!494 (h!42190 tokens!494)))))

(declare-fun isEmpty!20981 (List!36892) Bool)

(declare-fun getSuffix!1447 (List!36892 List!36892) List!36892)

(assert (=> b!3374740 (isEmpty!20981 (getSuffix!1447 lt!1145340 lt!1145340))))

(declare-fun lt!1145339 () Unit!51879)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!105 (List!36892) Unit!51879)

(assert (=> b!3374740 (= lt!1145339 (lemmaGetSuffixOnListWithItSelfIsEmpty!105 lt!1145340))))

(declare-fun b!3374741 () Bool)

(declare-fun res!1364626 () Bool)

(assert (=> b!3374741 (=> (not res!1364626) (not e!2094389))))

(assert (=> b!3374741 (= res!1364626 (rulesProduceIndividualToken!2434 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3374742 () Bool)

(assert (=> b!3374742 (= e!2094390 (= (rule!7893 separatorToken!241) lt!1145336))))

(declare-fun tp!1055554 () Bool)

(declare-fun b!3374743 () Bool)

(assert (=> b!3374743 (= e!2094405 (and (inv!21 (value!173022 (h!42190 tokens!494))) e!2094400 tp!1055554))))

(declare-fun b!3374744 () Bool)

(declare-fun validRegex!4595 (Regex!10112) Bool)

(assert (=> b!3374744 (= e!2094393 (validRegex!4595 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun b!3374745 () Bool)

(assert (=> b!3374745 (= e!2094388 e!2094408)))

(declare-fun res!1364636 () Bool)

(assert (=> b!3374745 (=> res!1364636 e!2094408)))

(assert (=> b!3374745 (= res!1364636 (or (not (= lt!1145342 lt!1145340)) (not (= lt!1145343 lt!1145340))))))

(assert (=> b!3374745 (= lt!1145340 (list!13286 (charsOf!3367 (h!42190 tokens!494))))))

(declare-fun b!3374746 () Bool)

(declare-fun res!1364625 () Bool)

(assert (=> b!3374746 (=> (not res!1364625) (not e!2094391))))

(declare-fun isEmpty!20982 (List!36895) Bool)

(assert (=> b!3374746 (= res!1364625 (not (isEmpty!20982 rules!2135)))))

(declare-fun b!3374747 () Bool)

(assert (=> b!3374747 (= e!2094391 e!2094389)))

(declare-fun res!1364630 () Bool)

(assert (=> b!3374747 (=> (not res!1364630) (not e!2094389))))

(declare-fun rulesProduceEachTokenIndividually!1393 (LexerInterface!4942 List!36895 BalanceConc!21778) Bool)

(assert (=> b!3374747 (= res!1364630 (rulesProduceEachTokenIndividually!1393 thiss!18206 rules!2135 lt!1145327))))

(declare-fun seqFromList!3760 (List!36894) BalanceConc!21778)

(assert (=> b!3374747 (= lt!1145327 (seqFromList!3760 tokens!494))))

(declare-fun b!3374748 () Bool)

(declare-fun res!1364629 () Bool)

(assert (=> b!3374748 (=> (not res!1364629) (not e!2094389))))

(declare-fun forall!7724 (List!36894 Int) Bool)

(assert (=> b!3374748 (= res!1364629 (forall!7724 tokens!494 lambda!120320))))

(assert (=> b!3374749 (= e!2094394 (and tp!1055562 tp!1055552))))

(declare-fun b!3374750 () Bool)

(assert (=> b!3374750 (= e!2094403 (= (rule!7893 (h!42190 tokens!494)) lt!1145326))))

(assert (= (and start!314052 res!1364632) b!3374746))

(assert (= (and b!3374746 res!1364625) b!3374726))

(assert (= (and b!3374726 res!1364634) b!3374747))

(assert (= (and b!3374747 res!1364630) b!3374741))

(assert (= (and b!3374741 res!1364626) b!3374731))

(assert (= (and b!3374731 res!1364628) b!3374748))

(assert (= (and b!3374748 res!1364629) b!3374733))

(assert (= (and b!3374733 res!1364620) b!3374739))

(assert (= (and b!3374739 res!1364633) b!3374722))

(assert (= (and b!3374722 (not res!1364635)) b!3374745))

(assert (= (and b!3374745 (not res!1364636)) b!3374723))

(assert (= (and b!3374723 (not res!1364631)) b!3374737))

(assert (= (and b!3374737 (not res!1364621)) b!3374735))

(assert (= (and b!3374735 (not res!1364618)) b!3374721))

(assert (= (and b!3374721 (not res!1364624)) b!3374740))

(assert (= (and b!3374740 res!1364637) b!3374725))

(assert (= (and b!3374725 res!1364623) b!3374750))

(assert (= (and b!3374740 res!1364622) b!3374730))

(assert (= (and b!3374730 res!1364627) b!3374742))

(assert (= (and b!3374740 (not res!1364619)) b!3374744))

(assert (= b!3374724 b!3374749))

(assert (= b!3374736 b!3374724))

(assert (= (and start!314052 (is-Cons!36771 rules!2135)) b!3374736))

(assert (= b!3374729 b!3374732))

(assert (= b!3374728 b!3374729))

(assert (= start!314052 b!3374728))

(assert (= b!3374727 b!3374738))

(assert (= b!3374743 b!3374727))

(assert (= b!3374734 b!3374743))

(assert (= (and start!314052 (is-Cons!36770 tokens!494)) b!3374734))

(declare-fun m!3738097 () Bool)

(assert (=> b!3374725 m!3738097))

(declare-fun m!3738099 () Bool)

(assert (=> b!3374725 m!3738099))

(declare-fun m!3738101 () Bool)

(assert (=> b!3374726 m!3738101))

(declare-fun m!3738103 () Bool)

(assert (=> b!3374721 m!3738103))

(declare-fun m!3738105 () Bool)

(assert (=> b!3374721 m!3738105))

(declare-fun m!3738107 () Bool)

(assert (=> b!3374721 m!3738107))

(declare-fun m!3738109 () Bool)

(assert (=> b!3374721 m!3738109))

(assert (=> b!3374721 m!3738103))

(declare-fun m!3738111 () Bool)

(assert (=> b!3374721 m!3738111))

(declare-fun m!3738113 () Bool)

(assert (=> b!3374748 m!3738113))

(declare-fun m!3738115 () Bool)

(assert (=> b!3374737 m!3738115))

(declare-fun m!3738117 () Bool)

(assert (=> b!3374737 m!3738117))

(declare-fun m!3738119 () Bool)

(assert (=> b!3374737 m!3738119))

(declare-fun m!3738121 () Bool)

(assert (=> b!3374741 m!3738121))

(declare-fun m!3738123 () Bool)

(assert (=> start!314052 m!3738123))

(declare-fun m!3738125 () Bool)

(assert (=> b!3374743 m!3738125))

(declare-fun m!3738127 () Bool)

(assert (=> b!3374740 m!3738127))

(declare-fun m!3738129 () Bool)

(assert (=> b!3374740 m!3738129))

(declare-fun m!3738131 () Bool)

(assert (=> b!3374740 m!3738131))

(assert (=> b!3374740 m!3738129))

(declare-fun m!3738133 () Bool)

(assert (=> b!3374740 m!3738133))

(declare-fun m!3738135 () Bool)

(assert (=> b!3374740 m!3738135))

(declare-fun m!3738137 () Bool)

(assert (=> b!3374740 m!3738137))

(declare-fun m!3738139 () Bool)

(assert (=> b!3374740 m!3738139))

(declare-fun m!3738141 () Bool)

(assert (=> b!3374740 m!3738141))

(declare-fun m!3738143 () Bool)

(assert (=> b!3374740 m!3738143))

(declare-fun m!3738145 () Bool)

(assert (=> b!3374740 m!3738145))

(declare-fun m!3738147 () Bool)

(assert (=> b!3374740 m!3738147))

(declare-fun m!3738149 () Bool)

(assert (=> b!3374740 m!3738149))

(declare-fun m!3738151 () Bool)

(assert (=> b!3374740 m!3738151))

(declare-fun m!3738153 () Bool)

(assert (=> b!3374740 m!3738153))

(assert (=> b!3374740 m!3738149))

(assert (=> b!3374740 m!3738133))

(declare-fun m!3738155 () Bool)

(assert (=> b!3374740 m!3738155))

(declare-fun m!3738157 () Bool)

(assert (=> b!3374740 m!3738157))

(declare-fun m!3738159 () Bool)

(assert (=> b!3374740 m!3738159))

(declare-fun m!3738161 () Bool)

(assert (=> b!3374746 m!3738161))

(declare-fun m!3738163 () Bool)

(assert (=> b!3374724 m!3738163))

(declare-fun m!3738165 () Bool)

(assert (=> b!3374724 m!3738165))

(declare-fun m!3738167 () Bool)

(assert (=> b!3374745 m!3738167))

(assert (=> b!3374745 m!3738167))

(declare-fun m!3738169 () Bool)

(assert (=> b!3374745 m!3738169))

(declare-fun m!3738171 () Bool)

(assert (=> b!3374729 m!3738171))

(declare-fun m!3738173 () Bool)

(assert (=> b!3374729 m!3738173))

(declare-fun m!3738175 () Bool)

(assert (=> b!3374734 m!3738175))

(declare-fun m!3738177 () Bool)

(assert (=> b!3374727 m!3738177))

(declare-fun m!3738179 () Bool)

(assert (=> b!3374727 m!3738179))

(declare-fun m!3738181 () Bool)

(assert (=> b!3374733 m!3738181))

(declare-fun m!3738183 () Bool)

(assert (=> b!3374747 m!3738183))

(declare-fun m!3738185 () Bool)

(assert (=> b!3374747 m!3738185))

(declare-fun m!3738187 () Bool)

(assert (=> b!3374723 m!3738187))

(declare-fun m!3738189 () Bool)

(assert (=> b!3374730 m!3738189))

(declare-fun m!3738191 () Bool)

(assert (=> b!3374730 m!3738191))

(declare-fun m!3738193 () Bool)

(assert (=> b!3374744 m!3738193))

(declare-fun m!3738195 () Bool)

(assert (=> b!3374735 m!3738195))

(declare-fun m!3738197 () Bool)

(assert (=> b!3374722 m!3738197))

(declare-fun m!3738199 () Bool)

(assert (=> b!3374722 m!3738199))

(declare-fun m!3738201 () Bool)

(assert (=> b!3374722 m!3738201))

(declare-fun m!3738203 () Bool)

(assert (=> b!3374722 m!3738203))

(declare-fun m!3738205 () Bool)

(assert (=> b!3374722 m!3738205))

(declare-fun m!3738207 () Bool)

(assert (=> b!3374728 m!3738207))

(push 1)

(assert (not b!3374725))

(assert (not b_next!88879))

(assert (not b!3374723))

(assert b_and!234223)

(assert (not b!3374727))

(assert (not b!3374722))

(assert (not b!3374743))

(assert (not b!3374721))

(assert (not b!3374745))

(assert (not b!3374747))

(assert (not b!3374735))

(assert b_and!234229)

(assert (not b!3374746))

(assert (not b_next!88873))

(assert b_and!234219)

(assert (not b!3374740))

(assert b_and!234221)

(assert (not b_next!88871))

(assert (not b!3374730))

(assert (not b!3374724))

(assert b_and!234227)

(assert (not b!3374734))

(assert (not b!3374741))

(assert (not b!3374736))

(assert (not b!3374729))

(assert (not b!3374744))

(assert (not b!3374748))

(assert (not b_next!88877))

(assert (not b_next!88869))

(assert (not start!314052))

(assert b_and!234225)

(assert (not b!3374726))

(assert (not b!3374733))

(assert (not b_next!88875))

(assert (not b!3374728))

(assert (not b!3374737))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!88879))

(assert b_and!234223)

(assert b_and!234227)

(assert b_and!234229)

(assert b_and!234225)

(assert (not b_next!88873))

(assert (not b_next!88875))

(assert b_and!234219)

(assert b_and!234221)

(assert (not b_next!88871))

(assert (not b_next!88877))

(assert (not b_next!88869))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!957694 () Bool)

(declare-fun res!1364706 () Bool)

(declare-fun e!2094497 () Bool)

(assert (=> d!957694 (=> res!1364706 e!2094497)))

(assert (=> d!957694 (= res!1364706 (not (is-Cons!36771 rules!2135)))))

(assert (=> d!957694 (= (sepAndNonSepRulesDisjointChars!1547 rules!2135 rules!2135) e!2094497)))

(declare-fun b!3374845 () Bool)

(declare-fun e!2094498 () Bool)

(assert (=> b!3374845 (= e!2094497 e!2094498)))

(declare-fun res!1364707 () Bool)

(assert (=> b!3374845 (=> (not res!1364707) (not e!2094498))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!666 (Rule!10506 List!36895) Bool)

(assert (=> b!3374845 (= res!1364707 (ruleDisjointCharsFromAllFromOtherType!666 (h!42191 rules!2135) rules!2135))))

(declare-fun b!3374846 () Bool)

(assert (=> b!3374846 (= e!2094498 (sepAndNonSepRulesDisjointChars!1547 rules!2135 (t!262616 rules!2135)))))

(assert (= (and d!957694 (not res!1364706)) b!3374845))

(assert (= (and b!3374845 res!1364707) b!3374846))

(declare-fun m!3738321 () Bool)

(assert (=> b!3374845 m!3738321))

(declare-fun m!3738323 () Bool)

(assert (=> b!3374846 m!3738323))

(assert (=> b!3374733 d!957694))

(declare-fun d!957696 () Bool)

(declare-fun res!1364712 () Bool)

(declare-fun e!2094501 () Bool)

(assert (=> d!957696 (=> (not res!1364712) (not e!2094501))))

(assert (=> d!957696 (= res!1364712 (not (isEmpty!20981 (originalCharacters!6067 (h!42190 tokens!494)))))))

(assert (=> d!957696 (= (inv!49840 (h!42190 tokens!494)) e!2094501)))

(declare-fun b!3374851 () Bool)

(declare-fun res!1364713 () Bool)

(assert (=> b!3374851 (=> (not res!1364713) (not e!2094501))))

(declare-fun dynLambda!15257 (Int TokenValue!5583) BalanceConc!21776)

(assert (=> b!3374851 (= res!1364713 (= (originalCharacters!6067 (h!42190 tokens!494)) (list!13286 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (value!173022 (h!42190 tokens!494))))))))

(declare-fun b!3374852 () Bool)

(assert (=> b!3374852 (= e!2094501 (= (size!27828 (h!42190 tokens!494)) (size!27829 (originalCharacters!6067 (h!42190 tokens!494)))))))

(assert (= (and d!957696 res!1364712) b!3374851))

(assert (= (and b!3374851 res!1364713) b!3374852))

(declare-fun b_lambda!95643 () Bool)

(assert (=> (not b_lambda!95643) (not b!3374851)))

(declare-fun tb!179639 () Bool)

(declare-fun t!262624 () Bool)

(assert (=> (and b!3374749 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262624) tb!179639))

(declare-fun b!3374857 () Bool)

(declare-fun e!2094504 () Bool)

(declare-fun tp!1055605 () Bool)

(declare-fun inv!49843 (Conc!11081) Bool)

(assert (=> b!3374857 (= e!2094504 (and (inv!49843 (c!574758 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (value!173022 (h!42190 tokens!494))))) tp!1055605))))

(declare-fun result!222948 () Bool)

(declare-fun inv!49844 (BalanceConc!21776) Bool)

(assert (=> tb!179639 (= result!222948 (and (inv!49844 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (value!173022 (h!42190 tokens!494)))) e!2094504))))

(assert (= tb!179639 b!3374857))

(declare-fun m!3738325 () Bool)

(assert (=> b!3374857 m!3738325))

(declare-fun m!3738327 () Bool)

(assert (=> tb!179639 m!3738327))

(assert (=> b!3374851 t!262624))

(declare-fun b_and!234243 () Bool)

(assert (= b_and!234221 (and (=> t!262624 result!222948) b_and!234243)))

(declare-fun t!262626 () Bool)

(declare-fun tb!179641 () Bool)

(assert (=> (and b!3374738 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262626) tb!179641))

(declare-fun result!222952 () Bool)

(assert (= result!222952 result!222948))

(assert (=> b!3374851 t!262626))

(declare-fun b_and!234245 () Bool)

(assert (= b_and!234225 (and (=> t!262626 result!222952) b_and!234245)))

(declare-fun tb!179643 () Bool)

(declare-fun t!262628 () Bool)

(assert (=> (and b!3374732 (= (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262628) tb!179643))

(declare-fun result!222954 () Bool)

(assert (= result!222954 result!222948))

(assert (=> b!3374851 t!262628))

(declare-fun b_and!234247 () Bool)

(assert (= b_and!234229 (and (=> t!262628 result!222954) b_and!234247)))

(declare-fun m!3738329 () Bool)

(assert (=> d!957696 m!3738329))

(declare-fun m!3738331 () Bool)

(assert (=> b!3374851 m!3738331))

(assert (=> b!3374851 m!3738331))

(declare-fun m!3738333 () Bool)

(assert (=> b!3374851 m!3738333))

(declare-fun m!3738335 () Bool)

(assert (=> b!3374852 m!3738335))

(assert (=> b!3374734 d!957696))

(declare-fun d!957698 () Bool)

(declare-fun dynLambda!15258 (Int Token!10072) Bool)

(assert (=> d!957698 (dynLambda!15258 lambda!120320 (h!42190 tokens!494))))

(declare-fun lt!1145403 () Unit!51879)

(declare-fun choose!19491 (List!36894 Int Token!10072) Unit!51879)

(assert (=> d!957698 (= lt!1145403 (choose!19491 tokens!494 lambda!120320 (h!42190 tokens!494)))))

(declare-fun e!2094507 () Bool)

(assert (=> d!957698 e!2094507))

(declare-fun res!1364716 () Bool)

(assert (=> d!957698 (=> (not res!1364716) (not e!2094507))))

(assert (=> d!957698 (= res!1364716 (forall!7724 tokens!494 lambda!120320))))

(assert (=> d!957698 (= (forallContained!1300 tokens!494 lambda!120320 (h!42190 tokens!494)) lt!1145403)))

(declare-fun b!3374860 () Bool)

(declare-fun contains!6696 (List!36894 Token!10072) Bool)

(assert (=> b!3374860 (= e!2094507 (contains!6696 tokens!494 (h!42190 tokens!494)))))

(assert (= (and d!957698 res!1364716) b!3374860))

(declare-fun b_lambda!95645 () Bool)

(assert (=> (not b_lambda!95645) (not d!957698)))

(declare-fun m!3738337 () Bool)

(assert (=> d!957698 m!3738337))

(declare-fun m!3738339 () Bool)

(assert (=> d!957698 m!3738339))

(assert (=> d!957698 m!3738113))

(declare-fun m!3738341 () Bool)

(assert (=> b!3374860 m!3738341))

(assert (=> b!3374735 d!957698))

(declare-fun b!3374889 () Bool)

(declare-fun res!1364742 () Bool)

(declare-fun e!2094524 () Bool)

(assert (=> b!3374889 (=> res!1364742 e!2094524)))

(assert (=> b!3374889 (= res!1364742 (not (is-ElementMatch!10112 (regex!5353 lt!1145336))))))

(declare-fun e!2094526 () Bool)

(assert (=> b!3374889 (= e!2094526 e!2094524)))

(declare-fun b!3374890 () Bool)

(declare-fun e!2094523 () Bool)

(declare-fun nullable!3439 (Regex!10112) Bool)

(assert (=> b!3374890 (= e!2094523 (nullable!3439 (regex!5353 lt!1145336)))))

(declare-fun b!3374891 () Bool)

(declare-fun e!2094527 () Bool)

(declare-fun lt!1145406 () Bool)

(declare-fun call!244271 () Bool)

(assert (=> b!3374891 (= e!2094527 (= lt!1145406 call!244271))))

(declare-fun b!3374892 () Bool)

(assert (=> b!3374892 (= e!2094526 (not lt!1145406))))

(declare-fun b!3374893 () Bool)

(declare-fun e!2094528 () Bool)

(declare-fun e!2094522 () Bool)

(assert (=> b!3374893 (= e!2094528 e!2094522)))

(declare-fun res!1364743 () Bool)

(assert (=> b!3374893 (=> res!1364743 e!2094522)))

(assert (=> b!3374893 (= res!1364743 call!244271)))

(declare-fun b!3374894 () Bool)

(assert (=> b!3374894 (= e!2094522 (not (= (head!7192 lt!1145331) (c!574759 (regex!5353 lt!1145336)))))))

(declare-fun b!3374895 () Bool)

(declare-fun res!1364740 () Bool)

(assert (=> b!3374895 (=> res!1364740 e!2094524)))

(declare-fun e!2094525 () Bool)

(assert (=> b!3374895 (= res!1364740 e!2094525)))

(declare-fun res!1364738 () Bool)

(assert (=> b!3374895 (=> (not res!1364738) (not e!2094525))))

(assert (=> b!3374895 (= res!1364738 lt!1145406)))

(declare-fun b!3374897 () Bool)

(declare-fun res!1364745 () Bool)

(assert (=> b!3374897 (=> (not res!1364745) (not e!2094525))))

(assert (=> b!3374897 (= res!1364745 (not call!244271))))

(declare-fun b!3374898 () Bool)

(assert (=> b!3374898 (= e!2094525 (= (head!7192 lt!1145331) (c!574759 (regex!5353 lt!1145336))))))

(declare-fun b!3374899 () Bool)

(declare-fun derivativeStep!2992 (Regex!10112 C!20410) Regex!10112)

(declare-fun tail!5330 (List!36892) List!36892)

(assert (=> b!3374899 (= e!2094523 (matchR!4704 (derivativeStep!2992 (regex!5353 lt!1145336) (head!7192 lt!1145331)) (tail!5330 lt!1145331)))))

(declare-fun bm!244266 () Bool)

(assert (=> bm!244266 (= call!244271 (isEmpty!20981 lt!1145331))))

(declare-fun b!3374900 () Bool)

(assert (=> b!3374900 (= e!2094527 e!2094526)))

(declare-fun c!574772 () Bool)

(assert (=> b!3374900 (= c!574772 (is-EmptyLang!10112 (regex!5353 lt!1145336)))))

(declare-fun b!3374901 () Bool)

(declare-fun res!1364741 () Bool)

(assert (=> b!3374901 (=> res!1364741 e!2094522)))

(assert (=> b!3374901 (= res!1364741 (not (isEmpty!20981 (tail!5330 lt!1145331))))))

(declare-fun b!3374902 () Bool)

(assert (=> b!3374902 (= e!2094524 e!2094528)))

(declare-fun res!1364739 () Bool)

(assert (=> b!3374902 (=> (not res!1364739) (not e!2094528))))

(assert (=> b!3374902 (= res!1364739 (not lt!1145406))))

(declare-fun d!957700 () Bool)

(assert (=> d!957700 e!2094527))

(declare-fun c!574773 () Bool)

(assert (=> d!957700 (= c!574773 (is-EmptyExpr!10112 (regex!5353 lt!1145336)))))

(assert (=> d!957700 (= lt!1145406 e!2094523)))

(declare-fun c!574771 () Bool)

(assert (=> d!957700 (= c!574771 (isEmpty!20981 lt!1145331))))

(assert (=> d!957700 (validRegex!4595 (regex!5353 lt!1145336))))

(assert (=> d!957700 (= (matchR!4704 (regex!5353 lt!1145336) lt!1145331) lt!1145406)))

(declare-fun b!3374896 () Bool)

(declare-fun res!1364744 () Bool)

(assert (=> b!3374896 (=> (not res!1364744) (not e!2094525))))

(assert (=> b!3374896 (= res!1364744 (isEmpty!20981 (tail!5330 lt!1145331)))))

(assert (= (and d!957700 c!574771) b!3374890))

(assert (= (and d!957700 (not c!574771)) b!3374899))

(assert (= (and d!957700 c!574773) b!3374891))

(assert (= (and d!957700 (not c!574773)) b!3374900))

(assert (= (and b!3374900 c!574772) b!3374892))

(assert (= (and b!3374900 (not c!574772)) b!3374889))

(assert (= (and b!3374889 (not res!1364742)) b!3374895))

(assert (= (and b!3374895 res!1364738) b!3374897))

(assert (= (and b!3374897 res!1364745) b!3374896))

(assert (= (and b!3374896 res!1364744) b!3374898))

(assert (= (and b!3374895 (not res!1364740)) b!3374902))

(assert (= (and b!3374902 res!1364739) b!3374893))

(assert (= (and b!3374893 (not res!1364743)) b!3374901))

(assert (= (and b!3374901 (not res!1364741)) b!3374894))

(assert (= (or b!3374891 b!3374893 b!3374897) bm!244266))

(declare-fun m!3738343 () Bool)

(assert (=> b!3374890 m!3738343))

(declare-fun m!3738345 () Bool)

(assert (=> b!3374896 m!3738345))

(assert (=> b!3374896 m!3738345))

(declare-fun m!3738347 () Bool)

(assert (=> b!3374896 m!3738347))

(assert (=> b!3374898 m!3738133))

(declare-fun m!3738349 () Bool)

(assert (=> d!957700 m!3738349))

(declare-fun m!3738351 () Bool)

(assert (=> d!957700 m!3738351))

(assert (=> b!3374899 m!3738133))

(assert (=> b!3374899 m!3738133))

(declare-fun m!3738353 () Bool)

(assert (=> b!3374899 m!3738353))

(assert (=> b!3374899 m!3738345))

(assert (=> b!3374899 m!3738353))

(assert (=> b!3374899 m!3738345))

(declare-fun m!3738355 () Bool)

(assert (=> b!3374899 m!3738355))

(assert (=> bm!244266 m!3738349))

(assert (=> b!3374894 m!3738133))

(assert (=> b!3374901 m!3738345))

(assert (=> b!3374901 m!3738345))

(assert (=> b!3374901 m!3738347))

(assert (=> b!3374730 d!957700))

(declare-fun d!957702 () Bool)

(assert (=> d!957702 (= (get!11725 lt!1145338) (v!36384 lt!1145338))))

(assert (=> b!3374730 d!957702))

(declare-fun d!957704 () Bool)

(declare-fun isEmpty!20986 (Option!7353) Bool)

(assert (=> d!957704 (= (isDefined!5691 lt!1145332) (not (isEmpty!20986 lt!1145332)))))

(declare-fun bs!554540 () Bool)

(assert (= bs!554540 d!957704))

(declare-fun m!3738357 () Bool)

(assert (=> bs!554540 m!3738357))

(assert (=> b!3374740 d!957704))

(declare-fun b!3374929 () Bool)

(declare-fun e!2094547 () Bool)

(declare-fun e!2094545 () Bool)

(assert (=> b!3374929 (= e!2094547 e!2094545)))

(declare-fun res!1364771 () Bool)

(assert (=> b!3374929 (=> (not res!1364771) (not e!2094545))))

(declare-fun lt!1145419 () Option!7354)

(declare-fun get!11727 (Option!7354) tuple2!36322)

(assert (=> b!3374929 (= res!1364771 (matchR!4704 (regex!5353 (rule!7893 (h!42190 tokens!494))) (list!13286 (charsOf!3367 (_1!21295 (get!11727 lt!1145419))))))))

(declare-fun b!3374930 () Bool)

(declare-fun res!1364770 () Bool)

(assert (=> b!3374930 (=> (not res!1364770) (not e!2094545))))

(assert (=> b!3374930 (= res!1364770 (= (rule!7893 (_1!21295 (get!11727 lt!1145419))) (rule!7893 (h!42190 tokens!494))))))

(declare-fun b!3374931 () Bool)

(declare-fun e!2094546 () Option!7354)

(assert (=> b!3374931 (= e!2094546 None!7353)))

(declare-fun b!3374932 () Bool)

(declare-fun e!2094548 () Bool)

(declare-datatypes ((tuple2!36328 0))(
  ( (tuple2!36329 (_1!21298 List!36892) (_2!21298 List!36892)) )
))
(declare-fun findLongestMatchInner!866 (Regex!10112 List!36892 Int List!36892 List!36892 Int) tuple2!36328)

(assert (=> b!3374932 (= e!2094548 (matchR!4704 (regex!5353 (rule!7893 (h!42190 tokens!494))) (_1!21298 (findLongestMatchInner!866 (regex!5353 (rule!7893 (h!42190 tokens!494))) Nil!36768 (size!27829 Nil!36768) lt!1145340 lt!1145340 (size!27829 lt!1145340)))))))

(declare-fun b!3374933 () Bool)

(assert (=> b!3374933 (= e!2094545 (= (size!27828 (_1!21295 (get!11727 lt!1145419))) (size!27829 (originalCharacters!6067 (_1!21295 (get!11727 lt!1145419))))))))

(declare-fun b!3374934 () Bool)

(declare-fun res!1364772 () Bool)

(assert (=> b!3374934 (=> (not res!1364772) (not e!2094545))))

(assert (=> b!3374934 (= res!1364772 (< (size!27829 (_2!21295 (get!11727 lt!1145419))) (size!27829 lt!1145340)))))

(declare-fun b!3374935 () Bool)

(declare-fun res!1364769 () Bool)

(assert (=> b!3374935 (=> (not res!1364769) (not e!2094545))))

(assert (=> b!3374935 (= res!1364769 (= (++!8976 (list!13286 (charsOf!3367 (_1!21295 (get!11727 lt!1145419)))) (_2!21295 (get!11727 lt!1145419))) lt!1145340))))

(declare-fun b!3374936 () Bool)

(declare-fun res!1364773 () Bool)

(assert (=> b!3374936 (=> (not res!1364773) (not e!2094545))))

(assert (=> b!3374936 (= res!1364773 (= (value!173022 (_1!21295 (get!11727 lt!1145419))) (apply!8528 (transformation!5353 (rule!7893 (_1!21295 (get!11727 lt!1145419)))) (seqFromList!3759 (originalCharacters!6067 (_1!21295 (get!11727 lt!1145419)))))))))

(declare-fun d!957706 () Bool)

(assert (=> d!957706 e!2094547))

(declare-fun res!1364775 () Bool)

(assert (=> d!957706 (=> res!1364775 e!2094547)))

(declare-fun isEmpty!20987 (Option!7354) Bool)

(assert (=> d!957706 (= res!1364775 (isEmpty!20987 lt!1145419))))

(assert (=> d!957706 (= lt!1145419 e!2094546)))

(declare-fun c!574776 () Bool)

(declare-fun lt!1145418 () tuple2!36328)

(assert (=> d!957706 (= c!574776 (isEmpty!20981 (_1!21298 lt!1145418)))))

(declare-fun findLongestMatch!781 (Regex!10112 List!36892) tuple2!36328)

(assert (=> d!957706 (= lt!1145418 (findLongestMatch!781 (regex!5353 (rule!7893 (h!42190 tokens!494))) lt!1145340))))

(declare-fun ruleValid!1691 (LexerInterface!4942 Rule!10506) Bool)

(assert (=> d!957706 (ruleValid!1691 thiss!18206 (rule!7893 (h!42190 tokens!494)))))

(assert (=> d!957706 (= (maxPrefixOneRule!1665 thiss!18206 (rule!7893 (h!42190 tokens!494)) lt!1145340) lt!1145419)))

(declare-fun b!3374937 () Bool)

(declare-fun size!27832 (BalanceConc!21776) Int)

(assert (=> b!3374937 (= e!2094546 (Some!7353 (tuple2!36323 (Token!10073 (apply!8528 (transformation!5353 (rule!7893 (h!42190 tokens!494))) (seqFromList!3759 (_1!21298 lt!1145418))) (rule!7893 (h!42190 tokens!494)) (size!27832 (seqFromList!3759 (_1!21298 lt!1145418))) (_1!21298 lt!1145418)) (_2!21298 lt!1145418))))))

(declare-fun lt!1145420 () Unit!51879)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!839 (Regex!10112 List!36892) Unit!51879)

(assert (=> b!3374937 (= lt!1145420 (longestMatchIsAcceptedByMatchOrIsEmpty!839 (regex!5353 (rule!7893 (h!42190 tokens!494))) lt!1145340))))

(declare-fun res!1364774 () Bool)

(assert (=> b!3374937 (= res!1364774 (isEmpty!20981 (_1!21298 (findLongestMatchInner!866 (regex!5353 (rule!7893 (h!42190 tokens!494))) Nil!36768 (size!27829 Nil!36768) lt!1145340 lt!1145340 (size!27829 lt!1145340)))))))

(assert (=> b!3374937 (=> res!1364774 e!2094548)))

(assert (=> b!3374937 e!2094548))

(declare-fun lt!1145421 () Unit!51879)

(assert (=> b!3374937 (= lt!1145421 lt!1145420)))

(declare-fun lt!1145417 () Unit!51879)

(declare-fun lemmaSemiInverse!1214 (TokenValueInjection!10594 BalanceConc!21776) Unit!51879)

(assert (=> b!3374937 (= lt!1145417 (lemmaSemiInverse!1214 (transformation!5353 (rule!7893 (h!42190 tokens!494))) (seqFromList!3759 (_1!21298 lt!1145418))))))

(assert (= (and d!957706 c!574776) b!3374931))

(assert (= (and d!957706 (not c!574776)) b!3374937))

(assert (= (and b!3374937 (not res!1364774)) b!3374932))

(assert (= (and d!957706 (not res!1364775)) b!3374929))

(assert (= (and b!3374929 res!1364771) b!3374935))

(assert (= (and b!3374935 res!1364769) b!3374934))

(assert (= (and b!3374934 res!1364772) b!3374930))

(assert (= (and b!3374930 res!1364770) b!3374936))

(assert (= (and b!3374936 res!1364773) b!3374933))

(declare-fun m!3738363 () Bool)

(assert (=> d!957706 m!3738363))

(declare-fun m!3738365 () Bool)

(assert (=> d!957706 m!3738365))

(declare-fun m!3738367 () Bool)

(assert (=> d!957706 m!3738367))

(declare-fun m!3738369 () Bool)

(assert (=> d!957706 m!3738369))

(declare-fun m!3738371 () Bool)

(assert (=> b!3374929 m!3738371))

(declare-fun m!3738375 () Bool)

(assert (=> b!3374929 m!3738375))

(assert (=> b!3374929 m!3738375))

(declare-fun m!3738377 () Bool)

(assert (=> b!3374929 m!3738377))

(assert (=> b!3374929 m!3738377))

(declare-fun m!3738381 () Bool)

(assert (=> b!3374929 m!3738381))

(assert (=> b!3374930 m!3738371))

(assert (=> b!3374933 m!3738371))

(declare-fun m!3738383 () Bool)

(assert (=> b!3374933 m!3738383))

(assert (=> b!3374936 m!3738371))

(declare-fun m!3738385 () Bool)

(assert (=> b!3374936 m!3738385))

(assert (=> b!3374936 m!3738385))

(declare-fun m!3738387 () Bool)

(assert (=> b!3374936 m!3738387))

(assert (=> b!3374935 m!3738371))

(assert (=> b!3374935 m!3738375))

(assert (=> b!3374935 m!3738375))

(assert (=> b!3374935 m!3738377))

(assert (=> b!3374935 m!3738377))

(declare-fun m!3738389 () Bool)

(assert (=> b!3374935 m!3738389))

(assert (=> b!3374934 m!3738371))

(declare-fun m!3738391 () Bool)

(assert (=> b!3374934 m!3738391))

(assert (=> b!3374934 m!3738139))

(declare-fun m!3738393 () Bool)

(assert (=> b!3374932 m!3738393))

(assert (=> b!3374932 m!3738139))

(assert (=> b!3374932 m!3738393))

(assert (=> b!3374932 m!3738139))

(declare-fun m!3738395 () Bool)

(assert (=> b!3374932 m!3738395))

(declare-fun m!3738397 () Bool)

(assert (=> b!3374932 m!3738397))

(declare-fun m!3738399 () Bool)

(assert (=> b!3374937 m!3738399))

(declare-fun m!3738401 () Bool)

(assert (=> b!3374937 m!3738401))

(assert (=> b!3374937 m!3738399))

(assert (=> b!3374937 m!3738399))

(declare-fun m!3738403 () Bool)

(assert (=> b!3374937 m!3738403))

(declare-fun m!3738405 () Bool)

(assert (=> b!3374937 m!3738405))

(assert (=> b!3374937 m!3738393))

(assert (=> b!3374937 m!3738139))

(assert (=> b!3374937 m!3738395))

(assert (=> b!3374937 m!3738139))

(assert (=> b!3374937 m!3738399))

(declare-fun m!3738407 () Bool)

(assert (=> b!3374937 m!3738407))

(assert (=> b!3374937 m!3738393))

(declare-fun m!3738409 () Bool)

(assert (=> b!3374937 m!3738409))

(assert (=> b!3374740 d!957706))

(declare-fun d!957714 () Bool)

(declare-fun lt!1145424 () Int)

(assert (=> d!957714 (>= lt!1145424 0)))

(declare-fun e!2094552 () Int)

(assert (=> d!957714 (= lt!1145424 e!2094552)))

(declare-fun c!574779 () Bool)

(assert (=> d!957714 (= c!574779 (is-Nil!36768 lt!1145340))))

(assert (=> d!957714 (= (size!27829 lt!1145340) lt!1145424)))

(declare-fun b!3374943 () Bool)

(assert (=> b!3374943 (= e!2094552 0)))

(declare-fun b!3374944 () Bool)

(assert (=> b!3374944 (= e!2094552 (+ 1 (size!27829 (t!262613 lt!1145340))))))

(assert (= (and d!957714 c!574779) b!3374943))

(assert (= (and d!957714 (not c!574779)) b!3374944))

(declare-fun m!3738411 () Bool)

(assert (=> b!3374944 m!3738411))

(assert (=> b!3374740 d!957714))

(declare-fun b!3374968 () Bool)

(declare-fun e!2094569 () Option!7353)

(assert (=> b!3374968 (= e!2094569 None!7352)))

(declare-fun d!957716 () Bool)

(declare-fun e!2094567 () Bool)

(assert (=> d!957716 e!2094567))

(declare-fun res!1364788 () Bool)

(assert (=> d!957716 (=> res!1364788 e!2094567)))

(declare-fun lt!1145432 () Option!7353)

(assert (=> d!957716 (= res!1364788 (isEmpty!20986 lt!1145432))))

(declare-fun e!2094568 () Option!7353)

(assert (=> d!957716 (= lt!1145432 e!2094568)))

(declare-fun c!574785 () Bool)

(assert (=> d!957716 (= c!574785 (and (is-Cons!36771 rules!2135) (= (tag!5917 (h!42191 rules!2135)) (tag!5917 (rule!7893 separatorToken!241)))))))

(assert (=> d!957716 (rulesInvariant!4339 thiss!18206 rules!2135)))

(assert (=> d!957716 (= (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 separatorToken!241))) lt!1145432)))

(declare-fun b!3374969 () Bool)

(assert (=> b!3374969 (= e!2094568 (Some!7352 (h!42191 rules!2135)))))

(declare-fun b!3374970 () Bool)

(declare-fun e!2094570 () Bool)

(assert (=> b!3374970 (= e!2094570 (= (tag!5917 (get!11725 lt!1145432)) (tag!5917 (rule!7893 separatorToken!241))))))

(declare-fun b!3374971 () Bool)

(assert (=> b!3374971 (= e!2094568 e!2094569)))

(declare-fun c!574784 () Bool)

(assert (=> b!3374971 (= c!574784 (and (is-Cons!36771 rules!2135) (not (= (tag!5917 (h!42191 rules!2135)) (tag!5917 (rule!7893 separatorToken!241))))))))

(declare-fun b!3374972 () Bool)

(assert (=> b!3374972 (= e!2094567 e!2094570)))

(declare-fun res!1364787 () Bool)

(assert (=> b!3374972 (=> (not res!1364787) (not e!2094570))))

(declare-fun contains!6697 (List!36895 Rule!10506) Bool)

(assert (=> b!3374972 (= res!1364787 (contains!6697 rules!2135 (get!11725 lt!1145432)))))

(declare-fun b!3374973 () Bool)

(declare-fun lt!1145431 () Unit!51879)

(declare-fun lt!1145433 () Unit!51879)

(assert (=> b!3374973 (= lt!1145431 lt!1145433)))

(assert (=> b!3374973 (rulesInvariant!4339 thiss!18206 (t!262616 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!387 (LexerInterface!4942 Rule!10506 List!36895) Unit!51879)

(assert (=> b!3374973 (= lt!1145433 (lemmaInvariantOnRulesThenOnTail!387 thiss!18206 (h!42191 rules!2135) (t!262616 rules!2135)))))

(assert (=> b!3374973 (= e!2094569 (getRuleFromTag!1008 thiss!18206 (t!262616 rules!2135) (tag!5917 (rule!7893 separatorToken!241))))))

(assert (= (and d!957716 c!574785) b!3374969))

(assert (= (and d!957716 (not c!574785)) b!3374971))

(assert (= (and b!3374971 c!574784) b!3374973))

(assert (= (and b!3374971 (not c!574784)) b!3374968))

(assert (= (and d!957716 (not res!1364788)) b!3374972))

(assert (= (and b!3374972 res!1364787) b!3374970))

(declare-fun m!3738425 () Bool)

(assert (=> d!957716 m!3738425))

(assert (=> d!957716 m!3738101))

(declare-fun m!3738427 () Bool)

(assert (=> b!3374970 m!3738427))

(assert (=> b!3374972 m!3738427))

(assert (=> b!3374972 m!3738427))

(declare-fun m!3738429 () Bool)

(assert (=> b!3374972 m!3738429))

(declare-fun m!3738431 () Bool)

(assert (=> b!3374973 m!3738431))

(declare-fun m!3738433 () Bool)

(assert (=> b!3374973 m!3738433))

(declare-fun m!3738435 () Bool)

(assert (=> b!3374973 m!3738435))

(assert (=> b!3374740 d!957716))

(declare-fun d!957720 () Bool)

(declare-fun lt!1145436 () List!36892)

(assert (=> d!957720 (= (++!8976 lt!1145340 lt!1145436) lt!1145340)))

(declare-fun e!2094573 () List!36892)

(assert (=> d!957720 (= lt!1145436 e!2094573)))

(declare-fun c!574788 () Bool)

(assert (=> d!957720 (= c!574788 (is-Cons!36768 lt!1145340))))

(assert (=> d!957720 (>= (size!27829 lt!1145340) (size!27829 lt!1145340))))

(assert (=> d!957720 (= (getSuffix!1447 lt!1145340 lt!1145340) lt!1145436)))

(declare-fun b!3374978 () Bool)

(assert (=> b!3374978 (= e!2094573 (getSuffix!1447 (tail!5330 lt!1145340) (t!262613 lt!1145340)))))

(declare-fun b!3374979 () Bool)

(assert (=> b!3374979 (= e!2094573 lt!1145340)))

(assert (= (and d!957720 c!574788) b!3374978))

(assert (= (and d!957720 (not c!574788)) b!3374979))

(declare-fun m!3738437 () Bool)

(assert (=> d!957720 m!3738437))

(assert (=> d!957720 m!3738139))

(assert (=> d!957720 m!3738139))

(declare-fun m!3738439 () Bool)

(assert (=> b!3374978 m!3738439))

(assert (=> b!3374978 m!3738439))

(declare-fun m!3738441 () Bool)

(assert (=> b!3374978 m!3738441))

(assert (=> b!3374740 d!957720))

(declare-fun b!3374996 () Bool)

(declare-fun e!2094583 () List!36892)

(declare-fun e!2094582 () List!36892)

(assert (=> b!3374996 (= e!2094583 e!2094582)))

(declare-fun c!574800 () Bool)

(assert (=> b!3374996 (= c!574800 (is-Union!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun bm!244275 () Bool)

(declare-fun call!244283 () List!36892)

(assert (=> bm!244275 (= call!244283 (usedCharacters!609 (ite c!574800 (regOne!20737 (regex!5353 (rule!7893 separatorToken!241))) (regTwo!20736 (regex!5353 (rule!7893 separatorToken!241))))))))

(declare-fun d!957722 () Bool)

(declare-fun c!574798 () Bool)

(assert (=> d!957722 (= c!574798 (or (is-EmptyExpr!10112 (regex!5353 (rule!7893 separatorToken!241))) (is-EmptyLang!10112 (regex!5353 (rule!7893 separatorToken!241)))))))

(declare-fun e!2094584 () List!36892)

(assert (=> d!957722 (= (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241))) e!2094584)))

(declare-fun b!3374997 () Bool)

(declare-fun call!244280 () List!36892)

(assert (=> b!3374997 (= e!2094582 call!244280)))

(declare-fun b!3374998 () Bool)

(assert (=> b!3374998 (= e!2094584 Nil!36768)))

(declare-fun b!3374999 () Bool)

(assert (=> b!3374999 (= e!2094582 call!244280)))

(declare-fun b!3375000 () Bool)

(declare-fun call!244281 () List!36892)

(assert (=> b!3375000 (= e!2094583 call!244281)))

(declare-fun b!3375001 () Bool)

(declare-fun c!574797 () Bool)

(assert (=> b!3375001 (= c!574797 (is-Star!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun e!2094585 () List!36892)

(assert (=> b!3375001 (= e!2094585 e!2094583)))

(declare-fun bm!244276 () Bool)

(declare-fun call!244282 () List!36892)

(assert (=> bm!244276 (= call!244282 call!244281)))

(declare-fun b!3375002 () Bool)

(assert (=> b!3375002 (= e!2094585 (Cons!36768 (c!574759 (regex!5353 (rule!7893 separatorToken!241))) Nil!36768))))

(declare-fun bm!244277 () Bool)

(assert (=> bm!244277 (= call!244281 (usedCharacters!609 (ite c!574797 (reg!10441 (regex!5353 (rule!7893 separatorToken!241))) (ite c!574800 (regTwo!20737 (regex!5353 (rule!7893 separatorToken!241))) (regOne!20736 (regex!5353 (rule!7893 separatorToken!241)))))))))

(declare-fun b!3375003 () Bool)

(assert (=> b!3375003 (= e!2094584 e!2094585)))

(declare-fun c!574799 () Bool)

(assert (=> b!3375003 (= c!574799 (is-ElementMatch!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun bm!244278 () Bool)

(assert (=> bm!244278 (= call!244280 (++!8976 (ite c!574800 call!244283 call!244282) (ite c!574800 call!244282 call!244283)))))

(assert (= (and d!957722 c!574798) b!3374998))

(assert (= (and d!957722 (not c!574798)) b!3375003))

(assert (= (and b!3375003 c!574799) b!3375002))

(assert (= (and b!3375003 (not c!574799)) b!3375001))

(assert (= (and b!3375001 c!574797) b!3375000))

(assert (= (and b!3375001 (not c!574797)) b!3374996))

(assert (= (and b!3374996 c!574800) b!3374999))

(assert (= (and b!3374996 (not c!574800)) b!3374997))

(assert (= (or b!3374999 b!3374997) bm!244276))

(assert (= (or b!3374999 b!3374997) bm!244275))

(assert (= (or b!3374999 b!3374997) bm!244278))

(assert (= (or b!3375000 bm!244276) bm!244277))

(declare-fun m!3738443 () Bool)

(assert (=> bm!244275 m!3738443))

(declare-fun m!3738445 () Bool)

(assert (=> bm!244277 m!3738445))

(declare-fun m!3738447 () Bool)

(assert (=> bm!244278 m!3738447))

(assert (=> b!3374740 d!957722))

(declare-fun d!957724 () Bool)

(assert (=> d!957724 (= (head!7192 lt!1145331) (h!42188 lt!1145331))))

(assert (=> b!3374740 d!957724))

(declare-fun d!957726 () Bool)

(assert (=> d!957726 (= (isEmpty!20981 (getSuffix!1447 lt!1145340 lt!1145340)) (is-Nil!36768 (getSuffix!1447 lt!1145340 lt!1145340)))))

(assert (=> b!3374740 d!957726))

(declare-fun d!957728 () Bool)

(declare-fun e!2094588 () Bool)

(assert (=> d!957728 e!2094588))

(declare-fun res!1364793 () Bool)

(assert (=> d!957728 (=> (not res!1364793) (not e!2094588))))

(assert (=> d!957728 (= res!1364793 (isDefined!5691 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 separatorToken!241)))))))

(declare-fun lt!1145439 () Unit!51879)

(declare-fun choose!19492 (LexerInterface!4942 List!36895 List!36892 Token!10072) Unit!51879)

(assert (=> d!957728 (= lt!1145439 (choose!19492 thiss!18206 rules!2135 lt!1145331 separatorToken!241))))

(assert (=> d!957728 (rulesInvariant!4339 thiss!18206 rules!2135)))

(assert (=> d!957728 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1008 thiss!18206 rules!2135 lt!1145331 separatorToken!241) lt!1145439)))

(declare-fun b!3375008 () Bool)

(declare-fun res!1364794 () Bool)

(assert (=> b!3375008 (=> (not res!1364794) (not e!2094588))))

(assert (=> b!3375008 (= res!1364794 (matchR!4704 (regex!5353 (get!11725 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 separatorToken!241))))) (list!13286 (charsOf!3367 separatorToken!241))))))

(declare-fun b!3375009 () Bool)

(assert (=> b!3375009 (= e!2094588 (= (rule!7893 separatorToken!241) (get!11725 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 separatorToken!241))))))))

(assert (= (and d!957728 res!1364793) b!3375008))

(assert (= (and b!3375008 res!1364794) b!3375009))

(assert (=> d!957728 m!3738143))

(assert (=> d!957728 m!3738143))

(declare-fun m!3738449 () Bool)

(assert (=> d!957728 m!3738449))

(declare-fun m!3738451 () Bool)

(assert (=> d!957728 m!3738451))

(assert (=> d!957728 m!3738101))

(assert (=> b!3375008 m!3738111))

(declare-fun m!3738453 () Bool)

(assert (=> b!3375008 m!3738453))

(assert (=> b!3375008 m!3738103))

(assert (=> b!3375008 m!3738143))

(assert (=> b!3375008 m!3738103))

(assert (=> b!3375008 m!3738111))

(assert (=> b!3375008 m!3738143))

(declare-fun m!3738455 () Bool)

(assert (=> b!3375008 m!3738455))

(assert (=> b!3375009 m!3738143))

(assert (=> b!3375009 m!3738143))

(assert (=> b!3375009 m!3738455))

(assert (=> b!3374740 d!957728))

(declare-fun d!957730 () Bool)

(assert (=> d!957730 (rulesProduceIndividualToken!2434 thiss!18206 rules!2135 (h!42190 tokens!494))))

(declare-fun lt!1145442 () Unit!51879)

(declare-fun choose!19493 (LexerInterface!4942 List!36895 List!36894 Token!10072) Unit!51879)

(assert (=> d!957730 (= lt!1145442 (choose!19493 thiss!18206 rules!2135 tokens!494 (h!42190 tokens!494)))))

(assert (=> d!957730 (not (isEmpty!20982 rules!2135))))

(assert (=> d!957730 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!937 thiss!18206 rules!2135 tokens!494 (h!42190 tokens!494)) lt!1145442)))

(declare-fun bs!554541 () Bool)

(assert (= bs!554541 d!957730))

(assert (=> bs!554541 m!3738187))

(declare-fun m!3738457 () Bool)

(assert (=> bs!554541 m!3738457))

(assert (=> bs!554541 m!3738161))

(assert (=> b!3374740 d!957730))

(declare-fun d!957732 () Bool)

(declare-fun lt!1145445 () Bool)

(declare-fun content!5058 (List!36892) (Set C!20410))

(assert (=> d!957732 (= lt!1145445 (set.member (head!7192 lt!1145331) (content!5058 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241))))))))

(declare-fun e!2094593 () Bool)

(assert (=> d!957732 (= lt!1145445 e!2094593)))

(declare-fun res!1364799 () Bool)

(assert (=> d!957732 (=> (not res!1364799) (not e!2094593))))

(assert (=> d!957732 (= res!1364799 (is-Cons!36768 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241)))))))

(assert (=> d!957732 (= (contains!6694 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241))) (head!7192 lt!1145331)) lt!1145445)))

(declare-fun b!3375014 () Bool)

(declare-fun e!2094594 () Bool)

(assert (=> b!3375014 (= e!2094593 e!2094594)))

(declare-fun res!1364800 () Bool)

(assert (=> b!3375014 (=> res!1364800 e!2094594)))

(assert (=> b!3375014 (= res!1364800 (= (h!42188 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241)))) (head!7192 lt!1145331)))))

(declare-fun b!3375015 () Bool)

(assert (=> b!3375015 (= e!2094594 (contains!6694 (t!262613 (usedCharacters!609 (regex!5353 (rule!7893 separatorToken!241)))) (head!7192 lt!1145331)))))

(assert (= (and d!957732 res!1364799) b!3375014))

(assert (= (and b!3375014 (not res!1364800)) b!3375015))

(assert (=> d!957732 m!3738129))

(declare-fun m!3738459 () Bool)

(assert (=> d!957732 m!3738459))

(assert (=> d!957732 m!3738133))

(declare-fun m!3738461 () Bool)

(assert (=> d!957732 m!3738461))

(assert (=> b!3375015 m!3738133))

(declare-fun m!3738463 () Bool)

(assert (=> b!3375015 m!3738463))

(assert (=> b!3374740 d!957732))

(declare-fun d!957734 () Bool)

(assert (=> d!957734 (= (maxPrefixOneRule!1665 thiss!18206 (rule!7893 (h!42190 tokens!494)) lt!1145340) (Some!7353 (tuple2!36323 (Token!10073 (apply!8528 (transformation!5353 (rule!7893 (h!42190 tokens!494))) (seqFromList!3759 lt!1145340)) (rule!7893 (h!42190 tokens!494)) (size!27829 lt!1145340) lt!1145340) Nil!36768)))))

(declare-fun lt!1145448 () Unit!51879)

(declare-fun choose!19494 (LexerInterface!4942 List!36895 List!36892 List!36892 List!36892 Rule!10506) Unit!51879)

(assert (=> d!957734 (= lt!1145448 (choose!19494 thiss!18206 rules!2135 lt!1145340 lt!1145340 Nil!36768 (rule!7893 (h!42190 tokens!494))))))

(assert (=> d!957734 (not (isEmpty!20982 rules!2135))))

(assert (=> d!957734 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!764 thiss!18206 rules!2135 lt!1145340 lt!1145340 Nil!36768 (rule!7893 (h!42190 tokens!494))) lt!1145448)))

(declare-fun bs!554542 () Bool)

(assert (= bs!554542 d!957734))

(assert (=> bs!554542 m!3738119))

(declare-fun m!3738465 () Bool)

(assert (=> bs!554542 m!3738465))

(assert (=> bs!554542 m!3738161))

(assert (=> bs!554542 m!3738153))

(declare-fun m!3738467 () Bool)

(assert (=> bs!554542 m!3738467))

(assert (=> bs!554542 m!3738119))

(assert (=> bs!554542 m!3738139))

(assert (=> b!3374740 d!957734))

(declare-fun d!957736 () Bool)

(declare-fun e!2094595 () Bool)

(assert (=> d!957736 e!2094595))

(declare-fun res!1364801 () Bool)

(assert (=> d!957736 (=> (not res!1364801) (not e!2094595))))

(assert (=> d!957736 (= res!1364801 (isDefined!5691 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 (h!42190 tokens!494))))))))

(declare-fun lt!1145449 () Unit!51879)

(assert (=> d!957736 (= lt!1145449 (choose!19492 thiss!18206 rules!2135 lt!1145340 (h!42190 tokens!494)))))

(assert (=> d!957736 (rulesInvariant!4339 thiss!18206 rules!2135)))

(assert (=> d!957736 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1008 thiss!18206 rules!2135 lt!1145340 (h!42190 tokens!494)) lt!1145449)))

(declare-fun b!3375016 () Bool)

(declare-fun res!1364802 () Bool)

(assert (=> b!3375016 (=> (not res!1364802) (not e!2094595))))

(assert (=> b!3375016 (= res!1364802 (matchR!4704 (regex!5353 (get!11725 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 (h!42190 tokens!494)))))) (list!13286 (charsOf!3367 (h!42190 tokens!494)))))))

(declare-fun b!3375017 () Bool)

(assert (=> b!3375017 (= e!2094595 (= (rule!7893 (h!42190 tokens!494)) (get!11725 (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 (h!42190 tokens!494)))))))))

(assert (= (and d!957736 res!1364801) b!3375016))

(assert (= (and b!3375016 res!1364802) b!3375017))

(assert (=> d!957736 m!3738131))

(assert (=> d!957736 m!3738131))

(declare-fun m!3738469 () Bool)

(assert (=> d!957736 m!3738469))

(declare-fun m!3738471 () Bool)

(assert (=> d!957736 m!3738471))

(assert (=> d!957736 m!3738101))

(assert (=> b!3375016 m!3738169))

(declare-fun m!3738473 () Bool)

(assert (=> b!3375016 m!3738473))

(assert (=> b!3375016 m!3738167))

(assert (=> b!3375016 m!3738131))

(assert (=> b!3375016 m!3738167))

(assert (=> b!3375016 m!3738169))

(assert (=> b!3375016 m!3738131))

(declare-fun m!3738475 () Bool)

(assert (=> b!3375016 m!3738475))

(assert (=> b!3375017 m!3738131))

(assert (=> b!3375017 m!3738131))

(assert (=> b!3375017 m!3738475))

(assert (=> b!3374740 d!957736))

(declare-fun d!957738 () Bool)

(declare-fun dynLambda!15259 (Int BalanceConc!21776) TokenValue!5583)

(assert (=> d!957738 (= (apply!8528 (transformation!5353 (rule!7893 (h!42190 tokens!494))) lt!1145328) (dynLambda!15259 (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) lt!1145328))))

(declare-fun b_lambda!95651 () Bool)

(assert (=> (not b_lambda!95651) (not d!957738)))

(declare-fun tb!179651 () Bool)

(declare-fun t!262637 () Bool)

(assert (=> (and b!3374749 (= (toValue!7537 (transformation!5353 (h!42191 rules!2135))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262637) tb!179651))

(declare-fun result!222964 () Bool)

(assert (=> tb!179651 (= result!222964 (inv!21 (dynLambda!15259 (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) lt!1145328)))))

(declare-fun m!3738477 () Bool)

(assert (=> tb!179651 m!3738477))

(assert (=> d!957738 t!262637))

(declare-fun b_and!234255 () Bool)

(assert (= b_and!234219 (and (=> t!262637 result!222964) b_and!234255)))

(declare-fun t!262639 () Bool)

(declare-fun tb!179653 () Bool)

(assert (=> (and b!3374738 (= (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262639) tb!179653))

(declare-fun result!222968 () Bool)

(assert (= result!222968 result!222964))

(assert (=> d!957738 t!262639))

(declare-fun b_and!234257 () Bool)

(assert (= b_and!234223 (and (=> t!262639 result!222968) b_and!234257)))

(declare-fun t!262641 () Bool)

(declare-fun tb!179655 () Bool)

(assert (=> (and b!3374732 (= (toValue!7537 (transformation!5353 (rule!7893 separatorToken!241))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262641) tb!179655))

(declare-fun result!222970 () Bool)

(assert (= result!222970 result!222964))

(assert (=> d!957738 t!262641))

(declare-fun b_and!234259 () Bool)

(assert (= b_and!234227 (and (=> t!262641 result!222970) b_and!234259)))

(declare-fun m!3738479 () Bool)

(assert (=> d!957738 m!3738479))

(assert (=> b!3374740 d!957738))

(declare-fun b!3375020 () Bool)

(declare-fun e!2094601 () Option!7353)

(assert (=> b!3375020 (= e!2094601 None!7352)))

(declare-fun d!957740 () Bool)

(declare-fun e!2094599 () Bool)

(assert (=> d!957740 e!2094599))

(declare-fun res!1364804 () Bool)

(assert (=> d!957740 (=> res!1364804 e!2094599)))

(declare-fun lt!1145451 () Option!7353)

(assert (=> d!957740 (= res!1364804 (isEmpty!20986 lt!1145451))))

(declare-fun e!2094600 () Option!7353)

(assert (=> d!957740 (= lt!1145451 e!2094600)))

(declare-fun c!574802 () Bool)

(assert (=> d!957740 (= c!574802 (and (is-Cons!36771 rules!2135) (= (tag!5917 (h!42191 rules!2135)) (tag!5917 (rule!7893 (h!42190 tokens!494))))))))

(assert (=> d!957740 (rulesInvariant!4339 thiss!18206 rules!2135)))

(assert (=> d!957740 (= (getRuleFromTag!1008 thiss!18206 rules!2135 (tag!5917 (rule!7893 (h!42190 tokens!494)))) lt!1145451)))

(declare-fun b!3375021 () Bool)

(assert (=> b!3375021 (= e!2094600 (Some!7352 (h!42191 rules!2135)))))

(declare-fun b!3375022 () Bool)

(declare-fun e!2094602 () Bool)

(assert (=> b!3375022 (= e!2094602 (= (tag!5917 (get!11725 lt!1145451)) (tag!5917 (rule!7893 (h!42190 tokens!494)))))))

(declare-fun b!3375023 () Bool)

(assert (=> b!3375023 (= e!2094600 e!2094601)))

(declare-fun c!574801 () Bool)

(assert (=> b!3375023 (= c!574801 (and (is-Cons!36771 rules!2135) (not (= (tag!5917 (h!42191 rules!2135)) (tag!5917 (rule!7893 (h!42190 tokens!494)))))))))

(declare-fun b!3375024 () Bool)

(assert (=> b!3375024 (= e!2094599 e!2094602)))

(declare-fun res!1364803 () Bool)

(assert (=> b!3375024 (=> (not res!1364803) (not e!2094602))))

(assert (=> b!3375024 (= res!1364803 (contains!6697 rules!2135 (get!11725 lt!1145451)))))

(declare-fun b!3375025 () Bool)

(declare-fun lt!1145450 () Unit!51879)

(declare-fun lt!1145452 () Unit!51879)

(assert (=> b!3375025 (= lt!1145450 lt!1145452)))

(assert (=> b!3375025 (rulesInvariant!4339 thiss!18206 (t!262616 rules!2135))))

(assert (=> b!3375025 (= lt!1145452 (lemmaInvariantOnRulesThenOnTail!387 thiss!18206 (h!42191 rules!2135) (t!262616 rules!2135)))))

(assert (=> b!3375025 (= e!2094601 (getRuleFromTag!1008 thiss!18206 (t!262616 rules!2135) (tag!5917 (rule!7893 (h!42190 tokens!494)))))))

(assert (= (and d!957740 c!574802) b!3375021))

(assert (= (and d!957740 (not c!574802)) b!3375023))

(assert (= (and b!3375023 c!574801) b!3375025))

(assert (= (and b!3375023 (not c!574801)) b!3375020))

(assert (= (and d!957740 (not res!1364804)) b!3375024))

(assert (= (and b!3375024 res!1364803) b!3375022))

(declare-fun m!3738481 () Bool)

(assert (=> d!957740 m!3738481))

(assert (=> d!957740 m!3738101))

(declare-fun m!3738483 () Bool)

(assert (=> b!3375022 m!3738483))

(assert (=> b!3375024 m!3738483))

(assert (=> b!3375024 m!3738483))

(declare-fun m!3738485 () Bool)

(assert (=> b!3375024 m!3738485))

(assert (=> b!3375025 m!3738431))

(assert (=> b!3375025 m!3738433))

(declare-fun m!3738487 () Bool)

(assert (=> b!3375025 m!3738487))

(assert (=> b!3374740 d!957740))

(declare-fun d!957742 () Bool)

(assert (=> d!957742 (isEmpty!20981 (getSuffix!1447 lt!1145340 lt!1145340))))

(declare-fun lt!1145455 () Unit!51879)

(declare-fun choose!19495 (List!36892) Unit!51879)

(assert (=> d!957742 (= lt!1145455 (choose!19495 lt!1145340))))

(assert (=> d!957742 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!105 lt!1145340) lt!1145455)))

(declare-fun bs!554543 () Bool)

(assert (= bs!554543 d!957742))

(assert (=> bs!554543 m!3738149))

(assert (=> bs!554543 m!3738149))

(assert (=> bs!554543 m!3738151))

(declare-fun m!3738489 () Bool)

(assert (=> bs!554543 m!3738489))

(assert (=> b!3374740 d!957742))

(declare-fun d!957744 () Bool)

(assert (=> d!957744 (= (isDefined!5691 lt!1145338) (not (isEmpty!20986 lt!1145338)))))

(declare-fun bs!554544 () Bool)

(assert (= bs!554544 d!957744))

(declare-fun m!3738491 () Bool)

(assert (=> bs!554544 m!3738491))

(assert (=> b!3374740 d!957744))

(declare-fun d!957746 () Bool)

(declare-fun lt!1145458 () Bool)

(declare-fun isEmpty!20988 (List!36894) Bool)

(declare-fun list!13288 (BalanceConc!21778) List!36894)

(assert (=> d!957746 (= lt!1145458 (isEmpty!20988 (list!13288 (_1!21294 (lex!2268 thiss!18206 rules!2135 lt!1145328)))))))

(declare-fun isEmpty!20989 (Conc!11082) Bool)

(assert (=> d!957746 (= lt!1145458 (isEmpty!20989 (c!574760 (_1!21294 (lex!2268 thiss!18206 rules!2135 lt!1145328)))))))

(assert (=> d!957746 (= (isEmpty!20980 (_1!21294 (lex!2268 thiss!18206 rules!2135 lt!1145328))) lt!1145458)))

(declare-fun bs!554545 () Bool)

(assert (= bs!554545 d!957746))

(declare-fun m!3738493 () Bool)

(assert (=> bs!554545 m!3738493))

(assert (=> bs!554545 m!3738493))

(declare-fun m!3738495 () Bool)

(assert (=> bs!554545 m!3738495))

(declare-fun m!3738497 () Bool)

(assert (=> bs!554545 m!3738497))

(assert (=> b!3374737 d!957746))

(declare-fun b!3375106 () Bool)

(declare-fun e!2094653 () Bool)

(declare-fun lt!1145491 () tuple2!36320)

(assert (=> b!3375106 (= e!2094653 (= (_2!21294 lt!1145491) lt!1145328))))

(declare-fun b!3375107 () Bool)

(declare-fun res!1364856 () Bool)

(declare-fun e!2094652 () Bool)

(assert (=> b!3375107 (=> (not res!1364856) (not e!2094652))))

(declare-datatypes ((tuple2!36330 0))(
  ( (tuple2!36331 (_1!21299 List!36894) (_2!21299 List!36892)) )
))
(declare-fun lexList!1393 (LexerInterface!4942 List!36895 List!36892) tuple2!36330)

(assert (=> b!3375107 (= res!1364856 (= (list!13288 (_1!21294 lt!1145491)) (_1!21299 (lexList!1393 thiss!18206 rules!2135 (list!13286 lt!1145328)))))))

(declare-fun b!3375108 () Bool)

(declare-fun e!2094651 () Bool)

(assert (=> b!3375108 (= e!2094653 e!2094651)))

(declare-fun res!1364857 () Bool)

(assert (=> b!3375108 (= res!1364857 (< (size!27832 (_2!21294 lt!1145491)) (size!27832 lt!1145328)))))

(assert (=> b!3375108 (=> (not res!1364857) (not e!2094651))))

(declare-fun b!3375109 () Bool)

(assert (=> b!3375109 (= e!2094652 (= (list!13286 (_2!21294 lt!1145491)) (_2!21299 (lexList!1393 thiss!18206 rules!2135 (list!13286 lt!1145328)))))))

(declare-fun d!957748 () Bool)

(assert (=> d!957748 e!2094652))

(declare-fun res!1364858 () Bool)

(assert (=> d!957748 (=> (not res!1364858) (not e!2094652))))

(assert (=> d!957748 (= res!1364858 e!2094653)))

(declare-fun c!574817 () Bool)

(declare-fun size!27833 (BalanceConc!21778) Int)

(assert (=> d!957748 (= c!574817 (> (size!27833 (_1!21294 lt!1145491)) 0))))

(declare-fun lexTailRecV2!1003 (LexerInterface!4942 List!36895 BalanceConc!21776 BalanceConc!21776 BalanceConc!21776 BalanceConc!21778) tuple2!36320)

(assert (=> d!957748 (= lt!1145491 (lexTailRecV2!1003 thiss!18206 rules!2135 lt!1145328 (BalanceConc!21777 Empty!11081) lt!1145328 (BalanceConc!21779 Empty!11082)))))

(assert (=> d!957748 (= (lex!2268 thiss!18206 rules!2135 lt!1145328) lt!1145491)))

(declare-fun b!3375105 () Bool)

(assert (=> b!3375105 (= e!2094651 (not (isEmpty!20980 (_1!21294 lt!1145491))))))

(assert (= (and d!957748 c!574817) b!3375108))

(assert (= (and d!957748 (not c!574817)) b!3375106))

(assert (= (and b!3375108 res!1364857) b!3375105))

(assert (= (and d!957748 res!1364858) b!3375107))

(assert (= (and b!3375107 res!1364856) b!3375109))

(declare-fun m!3738575 () Bool)

(assert (=> b!3375107 m!3738575))

(declare-fun m!3738577 () Bool)

(assert (=> b!3375107 m!3738577))

(assert (=> b!3375107 m!3738577))

(declare-fun m!3738579 () Bool)

(assert (=> b!3375107 m!3738579))

(declare-fun m!3738581 () Bool)

(assert (=> d!957748 m!3738581))

(declare-fun m!3738583 () Bool)

(assert (=> d!957748 m!3738583))

(declare-fun m!3738585 () Bool)

(assert (=> b!3375108 m!3738585))

(declare-fun m!3738587 () Bool)

(assert (=> b!3375108 m!3738587))

(declare-fun m!3738589 () Bool)

(assert (=> b!3375105 m!3738589))

(declare-fun m!3738591 () Bool)

(assert (=> b!3375109 m!3738591))

(assert (=> b!3375109 m!3738577))

(assert (=> b!3375109 m!3738577))

(assert (=> b!3375109 m!3738579))

(assert (=> b!3374737 d!957748))

(declare-fun d!957766 () Bool)

(declare-fun fromListB!1676 (List!36892) BalanceConc!21776)

(assert (=> d!957766 (= (seqFromList!3759 lt!1145340) (fromListB!1676 lt!1145340))))

(declare-fun bs!554547 () Bool)

(assert (= bs!554547 d!957766))

(declare-fun m!3738593 () Bool)

(assert (=> bs!554547 m!3738593))

(assert (=> b!3374737 d!957766))

(declare-fun d!957768 () Bool)

(declare-fun lt!1145497 () BalanceConc!21776)

(assert (=> d!957768 (= (list!13286 lt!1145497) (printList!1490 thiss!18206 (list!13288 lt!1145341)))))

(assert (=> d!957768 (= lt!1145497 (printTailRec!1437 thiss!18206 lt!1145341 0 (BalanceConc!21777 Empty!11081)))))

(assert (=> d!957768 (= (print!2007 thiss!18206 lt!1145341) lt!1145497)))

(declare-fun bs!554549 () Bool)

(assert (= bs!554549 d!957768))

(declare-fun m!3738599 () Bool)

(assert (=> bs!554549 m!3738599))

(declare-fun m!3738601 () Bool)

(assert (=> bs!554549 m!3738601))

(assert (=> bs!554549 m!3738601))

(declare-fun m!3738603 () Bool)

(assert (=> bs!554549 m!3738603))

(assert (=> bs!554549 m!3738199))

(assert (=> b!3374722 d!957768))

(declare-fun d!957772 () Bool)

(declare-fun lt!1145517 () BalanceConc!21776)

(declare-fun printListTailRec!635 (LexerInterface!4942 List!36894 List!36892) List!36892)

(declare-fun dropList!1152 (BalanceConc!21778 Int) List!36894)

(assert (=> d!957772 (= (list!13286 lt!1145517) (printListTailRec!635 thiss!18206 (dropList!1152 lt!1145341 0) (list!13286 (BalanceConc!21777 Empty!11081))))))

(declare-fun e!2094666 () BalanceConc!21776)

(assert (=> d!957772 (= lt!1145517 e!2094666)))

(declare-fun c!574823 () Bool)

(assert (=> d!957772 (= c!574823 (>= 0 (size!27833 lt!1145341)))))

(declare-fun e!2094667 () Bool)

(assert (=> d!957772 e!2094667))

(declare-fun res!1364867 () Bool)

(assert (=> d!957772 (=> (not res!1364867) (not e!2094667))))

(assert (=> d!957772 (= res!1364867 (>= 0 0))))

(assert (=> d!957772 (= (printTailRec!1437 thiss!18206 lt!1145341 0 (BalanceConc!21777 Empty!11081)) lt!1145517)))

(declare-fun b!3375128 () Bool)

(assert (=> b!3375128 (= e!2094667 (<= 0 (size!27833 lt!1145341)))))

(declare-fun b!3375129 () Bool)

(assert (=> b!3375129 (= e!2094666 (BalanceConc!21777 Empty!11081))))

(declare-fun b!3375130 () Bool)

(declare-fun ++!8978 (BalanceConc!21776 BalanceConc!21776) BalanceConc!21776)

(declare-fun apply!8530 (BalanceConc!21778 Int) Token!10072)

(assert (=> b!3375130 (= e!2094666 (printTailRec!1437 thiss!18206 lt!1145341 (+ 0 1) (++!8978 (BalanceConc!21777 Empty!11081) (charsOf!3367 (apply!8530 lt!1145341 0)))))))

(declare-fun lt!1145520 () List!36894)

(assert (=> b!3375130 (= lt!1145520 (list!13288 lt!1145341))))

(declare-fun lt!1145523 () Unit!51879)

(declare-fun lemmaDropApply!1110 (List!36894 Int) Unit!51879)

(assert (=> b!3375130 (= lt!1145523 (lemmaDropApply!1110 lt!1145520 0))))

(declare-fun head!7194 (List!36894) Token!10072)

(declare-fun drop!1950 (List!36894 Int) List!36894)

(declare-fun apply!8531 (List!36894 Int) Token!10072)

(assert (=> b!3375130 (= (head!7194 (drop!1950 lt!1145520 0)) (apply!8531 lt!1145520 0))))

(declare-fun lt!1145519 () Unit!51879)

(assert (=> b!3375130 (= lt!1145519 lt!1145523)))

(declare-fun lt!1145521 () List!36894)

(assert (=> b!3375130 (= lt!1145521 (list!13288 lt!1145341))))

(declare-fun lt!1145518 () Unit!51879)

(declare-fun lemmaDropTail!994 (List!36894 Int) Unit!51879)

(assert (=> b!3375130 (= lt!1145518 (lemmaDropTail!994 lt!1145521 0))))

(declare-fun tail!5331 (List!36894) List!36894)

(assert (=> b!3375130 (= (tail!5331 (drop!1950 lt!1145521 0)) (drop!1950 lt!1145521 (+ 0 1)))))

(declare-fun lt!1145522 () Unit!51879)

(assert (=> b!3375130 (= lt!1145522 lt!1145518)))

(assert (= (and d!957772 res!1364867) b!3375128))

(assert (= (and d!957772 c!574823) b!3375129))

(assert (= (and d!957772 (not c!574823)) b!3375130))

(declare-fun m!3738637 () Bool)

(assert (=> d!957772 m!3738637))

(declare-fun m!3738639 () Bool)

(assert (=> d!957772 m!3738639))

(declare-fun m!3738641 () Bool)

(assert (=> d!957772 m!3738641))

(assert (=> d!957772 m!3738641))

(declare-fun m!3738643 () Bool)

(assert (=> d!957772 m!3738643))

(declare-fun m!3738645 () Bool)

(assert (=> d!957772 m!3738645))

(assert (=> d!957772 m!3738643))

(assert (=> b!3375128 m!3738639))

(declare-fun m!3738647 () Bool)

(assert (=> b!3375130 m!3738647))

(declare-fun m!3738649 () Bool)

(assert (=> b!3375130 m!3738649))

(declare-fun m!3738651 () Bool)

(assert (=> b!3375130 m!3738651))

(declare-fun m!3738653 () Bool)

(assert (=> b!3375130 m!3738653))

(declare-fun m!3738655 () Bool)

(assert (=> b!3375130 m!3738655))

(declare-fun m!3738657 () Bool)

(assert (=> b!3375130 m!3738657))

(assert (=> b!3375130 m!3738601))

(assert (=> b!3375130 m!3738649))

(declare-fun m!3738659 () Bool)

(assert (=> b!3375130 m!3738659))

(declare-fun m!3738661 () Bool)

(assert (=> b!3375130 m!3738661))

(declare-fun m!3738663 () Bool)

(assert (=> b!3375130 m!3738663))

(declare-fun m!3738665 () Bool)

(assert (=> b!3375130 m!3738665))

(assert (=> b!3375130 m!3738665))

(declare-fun m!3738667 () Bool)

(assert (=> b!3375130 m!3738667))

(assert (=> b!3375130 m!3738653))

(declare-fun m!3738669 () Bool)

(assert (=> b!3375130 m!3738669))

(assert (=> b!3375130 m!3738667))

(assert (=> b!3375130 m!3738661))

(assert (=> b!3374722 d!957772))

(declare-fun d!957780 () Bool)

(declare-fun list!13289 (Conc!11081) List!36892)

(assert (=> d!957780 (= (list!13286 lt!1145333) (list!13289 (c!574758 lt!1145333)))))

(declare-fun bs!554550 () Bool)

(assert (= bs!554550 d!957780))

(declare-fun m!3738671 () Bool)

(assert (=> bs!554550 m!3738671))

(assert (=> b!3374722 d!957780))

(declare-fun d!957782 () Bool)

(declare-fun e!2094670 () Bool)

(assert (=> d!957782 e!2094670))

(declare-fun res!1364870 () Bool)

(assert (=> d!957782 (=> (not res!1364870) (not e!2094670))))

(declare-fun lt!1145526 () BalanceConc!21778)

(assert (=> d!957782 (= res!1364870 (= (list!13288 lt!1145526) (Cons!36770 (h!42190 tokens!494) Nil!36770)))))

(declare-fun singleton!1067 (Token!10072) BalanceConc!21778)

(assert (=> d!957782 (= lt!1145526 (singleton!1067 (h!42190 tokens!494)))))

(assert (=> d!957782 (= (singletonSeq!2449 (h!42190 tokens!494)) lt!1145526)))

(declare-fun b!3375133 () Bool)

(declare-fun isBalanced!3340 (Conc!11082) Bool)

(assert (=> b!3375133 (= e!2094670 (isBalanced!3340 (c!574760 lt!1145526)))))

(assert (= (and d!957782 res!1364870) b!3375133))

(declare-fun m!3738673 () Bool)

(assert (=> d!957782 m!3738673))

(declare-fun m!3738675 () Bool)

(assert (=> d!957782 m!3738675))

(declare-fun m!3738677 () Bool)

(assert (=> b!3375133 m!3738677))

(assert (=> b!3374722 d!957782))

(declare-fun d!957784 () Bool)

(declare-fun c!574826 () Bool)

(assert (=> d!957784 (= c!574826 (is-Cons!36770 (Cons!36770 (h!42190 tokens!494) Nil!36770)))))

(declare-fun e!2094673 () List!36892)

(assert (=> d!957784 (= (printList!1490 thiss!18206 (Cons!36770 (h!42190 tokens!494) Nil!36770)) e!2094673)))

(declare-fun b!3375138 () Bool)

(assert (=> b!3375138 (= e!2094673 (++!8976 (list!13286 (charsOf!3367 (h!42190 (Cons!36770 (h!42190 tokens!494) Nil!36770)))) (printList!1490 thiss!18206 (t!262615 (Cons!36770 (h!42190 tokens!494) Nil!36770)))))))

(declare-fun b!3375139 () Bool)

(assert (=> b!3375139 (= e!2094673 Nil!36768)))

(assert (= (and d!957784 c!574826) b!3375138))

(assert (= (and d!957784 (not c!574826)) b!3375139))

(declare-fun m!3738679 () Bool)

(assert (=> b!3375138 m!3738679))

(assert (=> b!3375138 m!3738679))

(declare-fun m!3738681 () Bool)

(assert (=> b!3375138 m!3738681))

(declare-fun m!3738683 () Bool)

(assert (=> b!3375138 m!3738683))

(assert (=> b!3375138 m!3738681))

(assert (=> b!3375138 m!3738683))

(declare-fun m!3738685 () Bool)

(assert (=> b!3375138 m!3738685))

(assert (=> b!3374722 d!957784))

(declare-fun d!957786 () Bool)

(declare-fun lt!1145533 () Bool)

(declare-fun e!2094679 () Bool)

(assert (=> d!957786 (= lt!1145533 e!2094679)))

(declare-fun res!1364877 () Bool)

(assert (=> d!957786 (=> (not res!1364877) (not e!2094679))))

(assert (=> d!957786 (= res!1364877 (= (list!13288 (_1!21294 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 (h!42190 tokens!494)))))) (list!13288 (singletonSeq!2449 (h!42190 tokens!494)))))))

(declare-fun e!2094678 () Bool)

(assert (=> d!957786 (= lt!1145533 e!2094678)))

(declare-fun res!1364879 () Bool)

(assert (=> d!957786 (=> (not res!1364879) (not e!2094678))))

(declare-fun lt!1145534 () tuple2!36320)

(assert (=> d!957786 (= res!1364879 (= (size!27833 (_1!21294 lt!1145534)) 1))))

(assert (=> d!957786 (= lt!1145534 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 (h!42190 tokens!494)))))))

(assert (=> d!957786 (not (isEmpty!20982 rules!2135))))

(assert (=> d!957786 (= (rulesProduceIndividualToken!2434 thiss!18206 rules!2135 (h!42190 tokens!494)) lt!1145533)))

(declare-fun b!3375146 () Bool)

(declare-fun res!1364878 () Bool)

(assert (=> b!3375146 (=> (not res!1364878) (not e!2094678))))

(assert (=> b!3375146 (= res!1364878 (= (apply!8530 (_1!21294 lt!1145534) 0) (h!42190 tokens!494)))))

(declare-fun b!3375147 () Bool)

(declare-fun isEmpty!20990 (BalanceConc!21776) Bool)

(assert (=> b!3375147 (= e!2094678 (isEmpty!20990 (_2!21294 lt!1145534)))))

(declare-fun b!3375148 () Bool)

(assert (=> b!3375148 (= e!2094679 (isEmpty!20990 (_2!21294 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 (h!42190 tokens!494)))))))))

(assert (= (and d!957786 res!1364879) b!3375146))

(assert (= (and b!3375146 res!1364878) b!3375147))

(assert (= (and d!957786 res!1364877) b!3375148))

(declare-fun m!3738687 () Bool)

(assert (=> d!957786 m!3738687))

(declare-fun m!3738689 () Bool)

(assert (=> d!957786 m!3738689))

(declare-fun m!3738691 () Bool)

(assert (=> d!957786 m!3738691))

(declare-fun m!3738693 () Bool)

(assert (=> d!957786 m!3738693))

(assert (=> d!957786 m!3738161))

(assert (=> d!957786 m!3738201))

(assert (=> d!957786 m!3738689))

(assert (=> d!957786 m!3738201))

(declare-fun m!3738695 () Bool)

(assert (=> d!957786 m!3738695))

(assert (=> d!957786 m!3738201))

(declare-fun m!3738697 () Bool)

(assert (=> b!3375146 m!3738697))

(declare-fun m!3738699 () Bool)

(assert (=> b!3375147 m!3738699))

(assert (=> b!3375148 m!3738201))

(assert (=> b!3375148 m!3738201))

(assert (=> b!3375148 m!3738689))

(assert (=> b!3375148 m!3738689))

(assert (=> b!3375148 m!3738691))

(declare-fun m!3738701 () Bool)

(assert (=> b!3375148 m!3738701))

(assert (=> b!3374723 d!957786))

(declare-fun b!3375167 () Bool)

(declare-fun e!2094695 () Bool)

(declare-fun e!2094697 () Bool)

(assert (=> b!3375167 (= e!2094695 e!2094697)))

(declare-fun c!574832 () Bool)

(assert (=> b!3375167 (= c!574832 (is-Star!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun bm!244288 () Bool)

(declare-fun call!244295 () Bool)

(declare-fun c!574831 () Bool)

(assert (=> bm!244288 (= call!244295 (validRegex!4595 (ite c!574832 (reg!10441 (regex!5353 (rule!7893 separatorToken!241))) (ite c!574831 (regOne!20737 (regex!5353 (rule!7893 separatorToken!241))) (regOne!20736 (regex!5353 (rule!7893 separatorToken!241)))))))))

(declare-fun b!3375168 () Bool)

(declare-fun e!2094698 () Bool)

(assert (=> b!3375168 (= e!2094697 e!2094698)))

(declare-fun res!1364892 () Bool)

(assert (=> b!3375168 (= res!1364892 (not (nullable!3439 (reg!10441 (regex!5353 (rule!7893 separatorToken!241))))))))

(assert (=> b!3375168 (=> (not res!1364892) (not e!2094698))))

(declare-fun b!3375169 () Bool)

(declare-fun res!1364891 () Bool)

(declare-fun e!2094696 () Bool)

(assert (=> b!3375169 (=> (not res!1364891) (not e!2094696))))

(declare-fun call!244293 () Bool)

(assert (=> b!3375169 (= res!1364891 call!244293)))

(declare-fun e!2094699 () Bool)

(assert (=> b!3375169 (= e!2094699 e!2094696)))

(declare-fun b!3375170 () Bool)

(declare-fun e!2094694 () Bool)

(declare-fun call!244294 () Bool)

(assert (=> b!3375170 (= e!2094694 call!244294)))

(declare-fun bm!244289 () Bool)

(assert (=> bm!244289 (= call!244294 (validRegex!4595 (ite c!574831 (regTwo!20737 (regex!5353 (rule!7893 separatorToken!241))) (regTwo!20736 (regex!5353 (rule!7893 separatorToken!241))))))))

(declare-fun b!3375171 () Bool)

(assert (=> b!3375171 (= e!2094697 e!2094699)))

(assert (=> b!3375171 (= c!574831 (is-Union!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(declare-fun d!957788 () Bool)

(declare-fun res!1364894 () Bool)

(assert (=> d!957788 (=> res!1364894 e!2094695)))

(assert (=> d!957788 (= res!1364894 (is-ElementMatch!10112 (regex!5353 (rule!7893 separatorToken!241))))))

(assert (=> d!957788 (= (validRegex!4595 (regex!5353 (rule!7893 separatorToken!241))) e!2094695)))

(declare-fun b!3375172 () Bool)

(declare-fun res!1364893 () Bool)

(declare-fun e!2094700 () Bool)

(assert (=> b!3375172 (=> res!1364893 e!2094700)))

(assert (=> b!3375172 (= res!1364893 (not (is-Concat!15695 (regex!5353 (rule!7893 separatorToken!241)))))))

(assert (=> b!3375172 (= e!2094699 e!2094700)))

(declare-fun b!3375173 () Bool)

(assert (=> b!3375173 (= e!2094696 call!244294)))

(declare-fun b!3375174 () Bool)

(assert (=> b!3375174 (= e!2094698 call!244295)))

(declare-fun bm!244290 () Bool)

(assert (=> bm!244290 (= call!244293 call!244295)))

(declare-fun b!3375175 () Bool)

(assert (=> b!3375175 (= e!2094700 e!2094694)))

(declare-fun res!1364890 () Bool)

(assert (=> b!3375175 (=> (not res!1364890) (not e!2094694))))

(assert (=> b!3375175 (= res!1364890 call!244293)))

(assert (= (and d!957788 (not res!1364894)) b!3375167))

(assert (= (and b!3375167 c!574832) b!3375168))

(assert (= (and b!3375167 (not c!574832)) b!3375171))

(assert (= (and b!3375168 res!1364892) b!3375174))

(assert (= (and b!3375171 c!574831) b!3375169))

(assert (= (and b!3375171 (not c!574831)) b!3375172))

(assert (= (and b!3375169 res!1364891) b!3375173))

(assert (= (and b!3375172 (not res!1364893)) b!3375175))

(assert (= (and b!3375175 res!1364890) b!3375170))

(assert (= (or b!3375173 b!3375170) bm!244289))

(assert (= (or b!3375169 b!3375175) bm!244290))

(assert (= (or b!3375174 bm!244290) bm!244288))

(declare-fun m!3738703 () Bool)

(assert (=> bm!244288 m!3738703))

(declare-fun m!3738705 () Bool)

(assert (=> b!3375168 m!3738705))

(declare-fun m!3738707 () Bool)

(assert (=> bm!244289 m!3738707))

(assert (=> b!3374744 d!957788))

(declare-fun d!957790 () Bool)

(assert (=> d!957790 (= (list!13286 (charsOf!3367 (h!42190 tokens!494))) (list!13289 (c!574758 (charsOf!3367 (h!42190 tokens!494)))))))

(declare-fun bs!554551 () Bool)

(assert (= bs!554551 d!957790))

(declare-fun m!3738709 () Bool)

(assert (=> bs!554551 m!3738709))

(assert (=> b!3374745 d!957790))

(declare-fun d!957792 () Bool)

(declare-fun lt!1145537 () BalanceConc!21776)

(assert (=> d!957792 (= (list!13286 lt!1145537) (originalCharacters!6067 (h!42190 tokens!494)))))

(assert (=> d!957792 (= lt!1145537 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (value!173022 (h!42190 tokens!494))))))

(assert (=> d!957792 (= (charsOf!3367 (h!42190 tokens!494)) lt!1145537)))

(declare-fun b_lambda!95653 () Bool)

(assert (=> (not b_lambda!95653) (not d!957792)))

(assert (=> d!957792 t!262624))

(declare-fun b_and!234261 () Bool)

(assert (= b_and!234243 (and (=> t!262624 result!222948) b_and!234261)))

(assert (=> d!957792 t!262626))

(declare-fun b_and!234263 () Bool)

(assert (= b_and!234245 (and (=> t!262626 result!222952) b_and!234263)))

(assert (=> d!957792 t!262628))

(declare-fun b_and!234265 () Bool)

(assert (= b_and!234247 (and (=> t!262628 result!222954) b_and!234265)))

(declare-fun m!3738711 () Bool)

(assert (=> d!957792 m!3738711))

(assert (=> d!957792 m!3738331))

(assert (=> b!3374745 d!957792))

(declare-fun d!957794 () Bool)

(assert (=> d!957794 (= (inv!49836 (tag!5917 (h!42191 rules!2135))) (= (mod (str.len (value!173021 (tag!5917 (h!42191 rules!2135)))) 2) 0))))

(assert (=> b!3374724 d!957794))

(declare-fun d!957796 () Bool)

(declare-fun res!1364897 () Bool)

(declare-fun e!2094703 () Bool)

(assert (=> d!957796 (=> (not res!1364897) (not e!2094703))))

(declare-fun semiInverseModEq!2230 (Int Int) Bool)

(assert (=> d!957796 (= res!1364897 (semiInverseModEq!2230 (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toValue!7537 (transformation!5353 (h!42191 rules!2135)))))))

(assert (=> d!957796 (= (inv!49839 (transformation!5353 (h!42191 rules!2135))) e!2094703)))

(declare-fun b!3375178 () Bool)

(declare-fun equivClasses!2129 (Int Int) Bool)

(assert (=> b!3375178 (= e!2094703 (equivClasses!2129 (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toValue!7537 (transformation!5353 (h!42191 rules!2135)))))))

(assert (= (and d!957796 res!1364897) b!3375178))

(declare-fun m!3738713 () Bool)

(assert (=> d!957796 m!3738713))

(declare-fun m!3738715 () Bool)

(assert (=> b!3375178 m!3738715))

(assert (=> b!3374724 d!957796))

(declare-fun d!957798 () Bool)

(declare-fun lt!1145538 () Bool)

(declare-fun e!2094705 () Bool)

(assert (=> d!957798 (= lt!1145538 e!2094705)))

(declare-fun res!1364898 () Bool)

(assert (=> d!957798 (=> (not res!1364898) (not e!2094705))))

(assert (=> d!957798 (= res!1364898 (= (list!13288 (_1!21294 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 separatorToken!241))))) (list!13288 (singletonSeq!2449 separatorToken!241))))))

(declare-fun e!2094704 () Bool)

(assert (=> d!957798 (= lt!1145538 e!2094704)))

(declare-fun res!1364900 () Bool)

(assert (=> d!957798 (=> (not res!1364900) (not e!2094704))))

(declare-fun lt!1145539 () tuple2!36320)

(assert (=> d!957798 (= res!1364900 (= (size!27833 (_1!21294 lt!1145539)) 1))))

(assert (=> d!957798 (= lt!1145539 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 separatorToken!241))))))

(assert (=> d!957798 (not (isEmpty!20982 rules!2135))))

(assert (=> d!957798 (= (rulesProduceIndividualToken!2434 thiss!18206 rules!2135 separatorToken!241) lt!1145538)))

(declare-fun b!3375179 () Bool)

(declare-fun res!1364899 () Bool)

(assert (=> b!3375179 (=> (not res!1364899) (not e!2094704))))

(assert (=> b!3375179 (= res!1364899 (= (apply!8530 (_1!21294 lt!1145539) 0) separatorToken!241))))

(declare-fun b!3375180 () Bool)

(assert (=> b!3375180 (= e!2094704 (isEmpty!20990 (_2!21294 lt!1145539)))))

(declare-fun b!3375181 () Bool)

(assert (=> b!3375181 (= e!2094705 (isEmpty!20990 (_2!21294 (lex!2268 thiss!18206 rules!2135 (print!2007 thiss!18206 (singletonSeq!2449 separatorToken!241))))))))

(assert (= (and d!957798 res!1364900) b!3375179))

(assert (= (and b!3375179 res!1364899) b!3375180))

(assert (= (and d!957798 res!1364898) b!3375181))

(declare-fun m!3738717 () Bool)

(assert (=> d!957798 m!3738717))

(declare-fun m!3738719 () Bool)

(assert (=> d!957798 m!3738719))

(declare-fun m!3738721 () Bool)

(assert (=> d!957798 m!3738721))

(declare-fun m!3738723 () Bool)

(assert (=> d!957798 m!3738723))

(assert (=> d!957798 m!3738161))

(declare-fun m!3738725 () Bool)

(assert (=> d!957798 m!3738725))

(assert (=> d!957798 m!3738719))

(assert (=> d!957798 m!3738725))

(declare-fun m!3738727 () Bool)

(assert (=> d!957798 m!3738727))

(assert (=> d!957798 m!3738725))

(declare-fun m!3738729 () Bool)

(assert (=> b!3375179 m!3738729))

(declare-fun m!3738731 () Bool)

(assert (=> b!3375180 m!3738731))

(assert (=> b!3375181 m!3738725))

(assert (=> b!3375181 m!3738725))

(assert (=> b!3375181 m!3738719))

(assert (=> b!3375181 m!3738719))

(assert (=> b!3375181 m!3738721))

(declare-fun m!3738733 () Bool)

(assert (=> b!3375181 m!3738733))

(assert (=> b!3374741 d!957798))

(declare-fun b!3375191 () Bool)

(declare-fun e!2094711 () List!36892)

(assert (=> b!3375191 (= e!2094711 (Cons!36768 (h!42188 lt!1145340) (++!8976 (t!262613 lt!1145340) lt!1145331)))))

(declare-fun b!3375190 () Bool)

(assert (=> b!3375190 (= e!2094711 lt!1145331)))

(declare-fun b!3375192 () Bool)

(declare-fun res!1364906 () Bool)

(declare-fun e!2094710 () Bool)

(assert (=> b!3375192 (=> (not res!1364906) (not e!2094710))))

(declare-fun lt!1145542 () List!36892)

(assert (=> b!3375192 (= res!1364906 (= (size!27829 lt!1145542) (+ (size!27829 lt!1145340) (size!27829 lt!1145331))))))

(declare-fun b!3375193 () Bool)

(assert (=> b!3375193 (= e!2094710 (or (not (= lt!1145331 Nil!36768)) (= lt!1145542 lt!1145340)))))

(declare-fun d!957800 () Bool)

(assert (=> d!957800 e!2094710))

(declare-fun res!1364905 () Bool)

(assert (=> d!957800 (=> (not res!1364905) (not e!2094710))))

(assert (=> d!957800 (= res!1364905 (= (content!5058 lt!1145542) (set.union (content!5058 lt!1145340) (content!5058 lt!1145331))))))

(assert (=> d!957800 (= lt!1145542 e!2094711)))

(declare-fun c!574835 () Bool)

(assert (=> d!957800 (= c!574835 (is-Nil!36768 lt!1145340))))

(assert (=> d!957800 (= (++!8976 lt!1145340 lt!1145331) lt!1145542)))

(assert (= (and d!957800 c!574835) b!3375190))

(assert (= (and d!957800 (not c!574835)) b!3375191))

(assert (= (and d!957800 res!1364905) b!3375192))

(assert (= (and b!3375192 res!1364906) b!3375193))

(declare-fun m!3738735 () Bool)

(assert (=> b!3375191 m!3738735))

(declare-fun m!3738737 () Bool)

(assert (=> b!3375192 m!3738737))

(assert (=> b!3375192 m!3738139))

(declare-fun m!3738739 () Bool)

(assert (=> b!3375192 m!3738739))

(declare-fun m!3738741 () Bool)

(assert (=> d!957800 m!3738741))

(declare-fun m!3738743 () Bool)

(assert (=> d!957800 m!3738743))

(declare-fun m!3738745 () Bool)

(assert (=> d!957800 m!3738745))

(assert (=> b!3374721 d!957800))

(declare-fun d!957802 () Bool)

(assert (=> d!957802 (= (list!13286 lt!1145335) (list!13289 (c!574758 lt!1145335)))))

(declare-fun bs!554552 () Bool)

(assert (= bs!554552 d!957802))

(declare-fun m!3738747 () Bool)

(assert (=> bs!554552 m!3738747))

(assert (=> b!3374721 d!957802))

(declare-fun d!957804 () Bool)

(declare-fun lt!1145543 () BalanceConc!21776)

(assert (=> d!957804 (= (list!13286 lt!1145543) (originalCharacters!6067 separatorToken!241))))

(assert (=> d!957804 (= lt!1145543 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (value!173022 separatorToken!241)))))

(assert (=> d!957804 (= (charsOf!3367 separatorToken!241) lt!1145543)))

(declare-fun b_lambda!95655 () Bool)

(assert (=> (not b_lambda!95655) (not d!957804)))

(declare-fun t!262649 () Bool)

(declare-fun tb!179657 () Bool)

(assert (=> (and b!3374749 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241)))) t!262649) tb!179657))

(declare-fun b!3375194 () Bool)

(declare-fun e!2094712 () Bool)

(declare-fun tp!1055609 () Bool)

(assert (=> b!3375194 (= e!2094712 (and (inv!49843 (c!574758 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (value!173022 separatorToken!241)))) tp!1055609))))

(declare-fun result!222972 () Bool)

(assert (=> tb!179657 (= result!222972 (and (inv!49844 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (value!173022 separatorToken!241))) e!2094712))))

(assert (= tb!179657 b!3375194))

(declare-fun m!3738749 () Bool)

(assert (=> b!3375194 m!3738749))

(declare-fun m!3738751 () Bool)

(assert (=> tb!179657 m!3738751))

(assert (=> d!957804 t!262649))

(declare-fun b_and!234267 () Bool)

(assert (= b_and!234261 (and (=> t!262649 result!222972) b_and!234267)))

(declare-fun tb!179659 () Bool)

(declare-fun t!262651 () Bool)

(assert (=> (and b!3374738 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241)))) t!262651) tb!179659))

(declare-fun result!222974 () Bool)

(assert (= result!222974 result!222972))

(assert (=> d!957804 t!262651))

(declare-fun b_and!234269 () Bool)

(assert (= b_and!234263 (and (=> t!262651 result!222974) b_and!234269)))

(declare-fun t!262653 () Bool)

(declare-fun tb!179661 () Bool)

(assert (=> (and b!3374732 (= (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241)))) t!262653) tb!179661))

(declare-fun result!222976 () Bool)

(assert (= result!222976 result!222972))

(assert (=> d!957804 t!262653))

(declare-fun b_and!234271 () Bool)

(assert (= b_and!234265 (and (=> t!262653 result!222976) b_and!234271)))

(declare-fun m!3738753 () Bool)

(assert (=> d!957804 m!3738753))

(declare-fun m!3738755 () Bool)

(assert (=> d!957804 m!3738755))

(assert (=> b!3374721 d!957804))

(declare-fun d!957806 () Bool)

(assert (=> d!957806 (= (list!13286 (charsOf!3367 separatorToken!241)) (list!13289 (c!574758 (charsOf!3367 separatorToken!241))))))

(declare-fun bs!554553 () Bool)

(assert (= bs!554553 d!957806))

(declare-fun m!3738757 () Bool)

(assert (=> bs!554553 m!3738757))

(assert (=> b!3374721 d!957806))

(declare-fun lt!1145546 () BalanceConc!21776)

(declare-fun d!957808 () Bool)

(declare-fun printWithSeparatorTokenList!243 (LexerInterface!4942 List!36894 Token!10072) List!36892)

(assert (=> d!957808 (= (list!13286 lt!1145546) (printWithSeparatorTokenList!243 thiss!18206 (list!13288 lt!1145327) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!59 (LexerInterface!4942 BalanceConc!21778 Token!10072 Int BalanceConc!21776) BalanceConc!21776)

(assert (=> d!957808 (= lt!1145546 (printWithSeparatorTokenTailRec!59 thiss!18206 lt!1145327 separatorToken!241 0 (BalanceConc!21777 Empty!11081)))))

(assert (=> d!957808 (isSeparator!5353 (rule!7893 separatorToken!241))))

(assert (=> d!957808 (= (printWithSeparatorToken!133 thiss!18206 lt!1145327 separatorToken!241) lt!1145546)))

(declare-fun bs!554554 () Bool)

(assert (= bs!554554 d!957808))

(declare-fun m!3738759 () Bool)

(assert (=> bs!554554 m!3738759))

(declare-fun m!3738761 () Bool)

(assert (=> bs!554554 m!3738761))

(assert (=> bs!554554 m!3738761))

(declare-fun m!3738763 () Bool)

(assert (=> bs!554554 m!3738763))

(declare-fun m!3738765 () Bool)

(assert (=> bs!554554 m!3738765))

(assert (=> b!3374721 d!957808))

(declare-fun b!3375205 () Bool)

(declare-fun e!2094721 () Bool)

(declare-fun e!2094719 () Bool)

(assert (=> b!3375205 (= e!2094721 e!2094719)))

(declare-fun c!574840 () Bool)

(assert (=> b!3375205 (= c!574840 (is-IntegerValue!16750 (value!173022 (h!42190 tokens!494))))))

(declare-fun b!3375206 () Bool)

(declare-fun res!1364909 () Bool)

(declare-fun e!2094720 () Bool)

(assert (=> b!3375206 (=> res!1364909 e!2094720)))

(assert (=> b!3375206 (= res!1364909 (not (is-IntegerValue!16751 (value!173022 (h!42190 tokens!494)))))))

(assert (=> b!3375206 (= e!2094719 e!2094720)))

(declare-fun d!957810 () Bool)

(declare-fun c!574841 () Bool)

(assert (=> d!957810 (= c!574841 (is-IntegerValue!16749 (value!173022 (h!42190 tokens!494))))))

(assert (=> d!957810 (= (inv!21 (value!173022 (h!42190 tokens!494))) e!2094721)))

(declare-fun b!3375207 () Bool)

(declare-fun inv!16 (TokenValue!5583) Bool)

(assert (=> b!3375207 (= e!2094721 (inv!16 (value!173022 (h!42190 tokens!494))))))

(declare-fun b!3375208 () Bool)

(declare-fun inv!15 (TokenValue!5583) Bool)

(assert (=> b!3375208 (= e!2094720 (inv!15 (value!173022 (h!42190 tokens!494))))))

(declare-fun b!3375209 () Bool)

(declare-fun inv!17 (TokenValue!5583) Bool)

(assert (=> b!3375209 (= e!2094719 (inv!17 (value!173022 (h!42190 tokens!494))))))

(assert (= (and d!957810 c!574841) b!3375207))

(assert (= (and d!957810 (not c!574841)) b!3375205))

(assert (= (and b!3375205 c!574840) b!3375209))

(assert (= (and b!3375205 (not c!574840)) b!3375206))

(assert (= (and b!3375206 (not res!1364909)) b!3375208))

(declare-fun m!3738767 () Bool)

(assert (=> b!3375207 m!3738767))

(declare-fun m!3738769 () Bool)

(assert (=> b!3375208 m!3738769))

(declare-fun m!3738771 () Bool)

(assert (=> b!3375209 m!3738771))

(assert (=> b!3374743 d!957810))

(declare-fun d!957812 () Bool)

(declare-fun res!1364910 () Bool)

(declare-fun e!2094722 () Bool)

(assert (=> d!957812 (=> (not res!1364910) (not e!2094722))))

(assert (=> d!957812 (= res!1364910 (not (isEmpty!20981 (originalCharacters!6067 separatorToken!241))))))

(assert (=> d!957812 (= (inv!49840 separatorToken!241) e!2094722)))

(declare-fun b!3375210 () Bool)

(declare-fun res!1364911 () Bool)

(assert (=> b!3375210 (=> (not res!1364911) (not e!2094722))))

(assert (=> b!3375210 (= res!1364911 (= (originalCharacters!6067 separatorToken!241) (list!13286 (dynLambda!15257 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (value!173022 separatorToken!241)))))))

(declare-fun b!3375211 () Bool)

(assert (=> b!3375211 (= e!2094722 (= (size!27828 separatorToken!241) (size!27829 (originalCharacters!6067 separatorToken!241))))))

(assert (= (and d!957812 res!1364910) b!3375210))

(assert (= (and b!3375210 res!1364911) b!3375211))

(declare-fun b_lambda!95657 () Bool)

(assert (=> (not b_lambda!95657) (not b!3375210)))

(assert (=> b!3375210 t!262649))

(declare-fun b_and!234273 () Bool)

(assert (= b_and!234267 (and (=> t!262649 result!222972) b_and!234273)))

(assert (=> b!3375210 t!262651))

(declare-fun b_and!234275 () Bool)

(assert (= b_and!234269 (and (=> t!262651 result!222974) b_and!234275)))

(assert (=> b!3375210 t!262653))

(declare-fun b_and!234277 () Bool)

(assert (= b_and!234271 (and (=> t!262653 result!222976) b_and!234277)))

(declare-fun m!3738773 () Bool)

(assert (=> d!957812 m!3738773))

(assert (=> b!3375210 m!3738755))

(assert (=> b!3375210 m!3738755))

(declare-fun m!3738775 () Bool)

(assert (=> b!3375210 m!3738775))

(declare-fun m!3738777 () Bool)

(assert (=> b!3375211 m!3738777))

(assert (=> start!314052 d!957812))

(declare-fun b!3375212 () Bool)

(declare-fun e!2094725 () Bool)

(declare-fun e!2094723 () Bool)

(assert (=> b!3375212 (= e!2094725 e!2094723)))

(declare-fun c!574842 () Bool)

(assert (=> b!3375212 (= c!574842 (is-IntegerValue!16750 (value!173022 separatorToken!241)))))

(declare-fun b!3375213 () Bool)

(declare-fun res!1364912 () Bool)

(declare-fun e!2094724 () Bool)

(assert (=> b!3375213 (=> res!1364912 e!2094724)))

(assert (=> b!3375213 (= res!1364912 (not (is-IntegerValue!16751 (value!173022 separatorToken!241))))))

(assert (=> b!3375213 (= e!2094723 e!2094724)))

(declare-fun d!957814 () Bool)

(declare-fun c!574843 () Bool)

(assert (=> d!957814 (= c!574843 (is-IntegerValue!16749 (value!173022 separatorToken!241)))))

(assert (=> d!957814 (= (inv!21 (value!173022 separatorToken!241)) e!2094725)))

(declare-fun b!3375214 () Bool)

(assert (=> b!3375214 (= e!2094725 (inv!16 (value!173022 separatorToken!241)))))

(declare-fun b!3375215 () Bool)

(assert (=> b!3375215 (= e!2094724 (inv!15 (value!173022 separatorToken!241)))))

(declare-fun b!3375216 () Bool)

(assert (=> b!3375216 (= e!2094723 (inv!17 (value!173022 separatorToken!241)))))

(assert (= (and d!957814 c!574843) b!3375214))

(assert (= (and d!957814 (not c!574843)) b!3375212))

(assert (= (and b!3375212 c!574842) b!3375216))

(assert (= (and b!3375212 (not c!574842)) b!3375213))

(assert (= (and b!3375213 (not res!1364912)) b!3375215))

(declare-fun m!3738779 () Bool)

(assert (=> b!3375214 m!3738779))

(declare-fun m!3738781 () Bool)

(assert (=> b!3375215 m!3738781))

(declare-fun m!3738783 () Bool)

(assert (=> b!3375216 m!3738783))

(assert (=> b!3374728 d!957814))

(declare-fun d!957816 () Bool)

(assert (=> d!957816 (= (inv!49836 (tag!5917 (rule!7893 separatorToken!241))) (= (mod (str.len (value!173021 (tag!5917 (rule!7893 separatorToken!241)))) 2) 0))))

(assert (=> b!3374729 d!957816))

(declare-fun d!957818 () Bool)

(declare-fun res!1364913 () Bool)

(declare-fun e!2094726 () Bool)

(assert (=> d!957818 (=> (not res!1364913) (not e!2094726))))

(assert (=> d!957818 (= res!1364913 (semiInverseModEq!2230 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toValue!7537 (transformation!5353 (rule!7893 separatorToken!241)))))))

(assert (=> d!957818 (= (inv!49839 (transformation!5353 (rule!7893 separatorToken!241))) e!2094726)))

(declare-fun b!3375217 () Bool)

(assert (=> b!3375217 (= e!2094726 (equivClasses!2129 (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toValue!7537 (transformation!5353 (rule!7893 separatorToken!241)))))))

(assert (= (and d!957818 res!1364913) b!3375217))

(declare-fun m!3738785 () Bool)

(assert (=> d!957818 m!3738785))

(declare-fun m!3738787 () Bool)

(assert (=> b!3375217 m!3738787))

(assert (=> b!3374729 d!957818))

(declare-fun b!3375218 () Bool)

(declare-fun res!1364918 () Bool)

(declare-fun e!2094729 () Bool)

(assert (=> b!3375218 (=> res!1364918 e!2094729)))

(assert (=> b!3375218 (= res!1364918 (not (is-ElementMatch!10112 (regex!5353 lt!1145326))))))

(declare-fun e!2094731 () Bool)

(assert (=> b!3375218 (= e!2094731 e!2094729)))

(declare-fun b!3375219 () Bool)

(declare-fun e!2094728 () Bool)

(assert (=> b!3375219 (= e!2094728 (nullable!3439 (regex!5353 lt!1145326)))))

(declare-fun b!3375220 () Bool)

(declare-fun e!2094732 () Bool)

(declare-fun lt!1145547 () Bool)

(declare-fun call!244296 () Bool)

(assert (=> b!3375220 (= e!2094732 (= lt!1145547 call!244296))))

(declare-fun b!3375221 () Bool)

(assert (=> b!3375221 (= e!2094731 (not lt!1145547))))

(declare-fun b!3375222 () Bool)

(declare-fun e!2094733 () Bool)

(declare-fun e!2094727 () Bool)

(assert (=> b!3375222 (= e!2094733 e!2094727)))

(declare-fun res!1364919 () Bool)

(assert (=> b!3375222 (=> res!1364919 e!2094727)))

(assert (=> b!3375222 (= res!1364919 call!244296)))

(declare-fun b!3375223 () Bool)

(assert (=> b!3375223 (= e!2094727 (not (= (head!7192 lt!1145340) (c!574759 (regex!5353 lt!1145326)))))))

(declare-fun b!3375224 () Bool)

(declare-fun res!1364916 () Bool)

(assert (=> b!3375224 (=> res!1364916 e!2094729)))

(declare-fun e!2094730 () Bool)

(assert (=> b!3375224 (= res!1364916 e!2094730)))

(declare-fun res!1364914 () Bool)

(assert (=> b!3375224 (=> (not res!1364914) (not e!2094730))))

(assert (=> b!3375224 (= res!1364914 lt!1145547)))

(declare-fun b!3375226 () Bool)

(declare-fun res!1364921 () Bool)

(assert (=> b!3375226 (=> (not res!1364921) (not e!2094730))))

(assert (=> b!3375226 (= res!1364921 (not call!244296))))

(declare-fun b!3375227 () Bool)

(assert (=> b!3375227 (= e!2094730 (= (head!7192 lt!1145340) (c!574759 (regex!5353 lt!1145326))))))

(declare-fun b!3375228 () Bool)

(assert (=> b!3375228 (= e!2094728 (matchR!4704 (derivativeStep!2992 (regex!5353 lt!1145326) (head!7192 lt!1145340)) (tail!5330 lt!1145340)))))

(declare-fun bm!244291 () Bool)

(assert (=> bm!244291 (= call!244296 (isEmpty!20981 lt!1145340))))

(declare-fun b!3375229 () Bool)

(assert (=> b!3375229 (= e!2094732 e!2094731)))

(declare-fun c!574845 () Bool)

(assert (=> b!3375229 (= c!574845 (is-EmptyLang!10112 (regex!5353 lt!1145326)))))

(declare-fun b!3375230 () Bool)

(declare-fun res!1364917 () Bool)

(assert (=> b!3375230 (=> res!1364917 e!2094727)))

(assert (=> b!3375230 (= res!1364917 (not (isEmpty!20981 (tail!5330 lt!1145340))))))

(declare-fun b!3375231 () Bool)

(assert (=> b!3375231 (= e!2094729 e!2094733)))

(declare-fun res!1364915 () Bool)

(assert (=> b!3375231 (=> (not res!1364915) (not e!2094733))))

(assert (=> b!3375231 (= res!1364915 (not lt!1145547))))

(declare-fun d!957820 () Bool)

(assert (=> d!957820 e!2094732))

(declare-fun c!574846 () Bool)

(assert (=> d!957820 (= c!574846 (is-EmptyExpr!10112 (regex!5353 lt!1145326)))))

(assert (=> d!957820 (= lt!1145547 e!2094728)))

(declare-fun c!574844 () Bool)

(assert (=> d!957820 (= c!574844 (isEmpty!20981 lt!1145340))))

(assert (=> d!957820 (validRegex!4595 (regex!5353 lt!1145326))))

(assert (=> d!957820 (= (matchR!4704 (regex!5353 lt!1145326) lt!1145340) lt!1145547)))

(declare-fun b!3375225 () Bool)

(declare-fun res!1364920 () Bool)

(assert (=> b!3375225 (=> (not res!1364920) (not e!2094730))))

(assert (=> b!3375225 (= res!1364920 (isEmpty!20981 (tail!5330 lt!1145340)))))

(assert (= (and d!957820 c!574844) b!3375219))

(assert (= (and d!957820 (not c!574844)) b!3375228))

(assert (= (and d!957820 c!574846) b!3375220))

(assert (= (and d!957820 (not c!574846)) b!3375229))

(assert (= (and b!3375229 c!574845) b!3375221))

(assert (= (and b!3375229 (not c!574845)) b!3375218))

(assert (= (and b!3375218 (not res!1364918)) b!3375224))

(assert (= (and b!3375224 res!1364914) b!3375226))

(assert (= (and b!3375226 res!1364921) b!3375225))

(assert (= (and b!3375225 res!1364920) b!3375227))

(assert (= (and b!3375224 (not res!1364916)) b!3375231))

(assert (= (and b!3375231 res!1364915) b!3375222))

(assert (= (and b!3375222 (not res!1364919)) b!3375230))

(assert (= (and b!3375230 (not res!1364917)) b!3375223))

(assert (= (or b!3375220 b!3375222 b!3375226) bm!244291))

(declare-fun m!3738789 () Bool)

(assert (=> b!3375219 m!3738789))

(assert (=> b!3375225 m!3738439))

(assert (=> b!3375225 m!3738439))

(declare-fun m!3738791 () Bool)

(assert (=> b!3375225 m!3738791))

(declare-fun m!3738793 () Bool)

(assert (=> b!3375227 m!3738793))

(declare-fun m!3738795 () Bool)

(assert (=> d!957820 m!3738795))

(declare-fun m!3738797 () Bool)

(assert (=> d!957820 m!3738797))

(assert (=> b!3375228 m!3738793))

(assert (=> b!3375228 m!3738793))

(declare-fun m!3738799 () Bool)

(assert (=> b!3375228 m!3738799))

(assert (=> b!3375228 m!3738439))

(assert (=> b!3375228 m!3738799))

(assert (=> b!3375228 m!3738439))

(declare-fun m!3738801 () Bool)

(assert (=> b!3375228 m!3738801))

(assert (=> bm!244291 m!3738795))

(assert (=> b!3375223 m!3738793))

(assert (=> b!3375230 m!3738439))

(assert (=> b!3375230 m!3738439))

(assert (=> b!3375230 m!3738791))

(assert (=> b!3374725 d!957820))

(declare-fun d!957822 () Bool)

(assert (=> d!957822 (= (get!11725 lt!1145332) (v!36384 lt!1145332))))

(assert (=> b!3374725 d!957822))

(declare-fun d!957824 () Bool)

(assert (=> d!957824 (= (isEmpty!20982 rules!2135) (is-Nil!36771 rules!2135))))

(assert (=> b!3374746 d!957824))

(declare-fun bs!554560 () Bool)

(declare-fun d!957826 () Bool)

(assert (= bs!554560 (and d!957826 b!3374748)))

(declare-fun lambda!120335 () Int)

(assert (=> bs!554560 (not (= lambda!120335 lambda!120320))))

(declare-fun b!3375307 () Bool)

(declare-fun e!2094784 () Bool)

(assert (=> b!3375307 (= e!2094784 true)))

(declare-fun b!3375306 () Bool)

(declare-fun e!2094783 () Bool)

(assert (=> b!3375306 (= e!2094783 e!2094784)))

(declare-fun b!3375305 () Bool)

(declare-fun e!2094782 () Bool)

(assert (=> b!3375305 (= e!2094782 e!2094783)))

(assert (=> d!957826 e!2094782))

(assert (= b!3375306 b!3375307))

(assert (= b!3375305 b!3375306))

(assert (= (and d!957826 (is-Cons!36771 rules!2135)) b!3375305))

(declare-fun order!19343 () Int)

(declare-fun order!19341 () Int)

(declare-fun dynLambda!15265 (Int Int) Int)

(declare-fun dynLambda!15266 (Int Int) Int)

(assert (=> b!3375307 (< (dynLambda!15265 order!19341 (toValue!7537 (transformation!5353 (h!42191 rules!2135)))) (dynLambda!15266 order!19343 lambda!120335))))

(declare-fun order!19345 () Int)

(declare-fun dynLambda!15267 (Int Int) Int)

(assert (=> b!3375307 (< (dynLambda!15267 order!19345 (toChars!7396 (transformation!5353 (h!42191 rules!2135)))) (dynLambda!15266 order!19343 lambda!120335))))

(assert (=> d!957826 true))

(declare-fun e!2094775 () Bool)

(assert (=> d!957826 e!2094775))

(declare-fun res!1364948 () Bool)

(assert (=> d!957826 (=> (not res!1364948) (not e!2094775))))

(declare-fun lt!1145561 () Bool)

(assert (=> d!957826 (= res!1364948 (= lt!1145561 (forall!7724 (list!13288 lt!1145327) lambda!120335)))))

(declare-fun forall!7727 (BalanceConc!21778 Int) Bool)

(assert (=> d!957826 (= lt!1145561 (forall!7727 lt!1145327 lambda!120335))))

(assert (=> d!957826 (not (isEmpty!20982 rules!2135))))

(assert (=> d!957826 (= (rulesProduceEachTokenIndividually!1393 thiss!18206 rules!2135 lt!1145327) lt!1145561)))

(declare-fun b!3375296 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1803 (LexerInterface!4942 List!36895 List!36894) Bool)

(assert (=> b!3375296 (= e!2094775 (= lt!1145561 (rulesProduceEachTokenIndividuallyList!1803 thiss!18206 rules!2135 (list!13288 lt!1145327))))))

(assert (= (and d!957826 res!1364948) b!3375296))

(assert (=> d!957826 m!3738761))

(assert (=> d!957826 m!3738761))

(declare-fun m!3738875 () Bool)

(assert (=> d!957826 m!3738875))

(declare-fun m!3738877 () Bool)

(assert (=> d!957826 m!3738877))

(assert (=> d!957826 m!3738161))

(assert (=> b!3375296 m!3738761))

(assert (=> b!3375296 m!3738761))

(declare-fun m!3738879 () Bool)

(assert (=> b!3375296 m!3738879))

(assert (=> b!3374747 d!957826))

(declare-fun d!957854 () Bool)

(declare-fun fromListB!1678 (List!36894) BalanceConc!21778)

(assert (=> d!957854 (= (seqFromList!3760 tokens!494) (fromListB!1678 tokens!494))))

(declare-fun bs!554561 () Bool)

(assert (= bs!554561 d!957854))

(declare-fun m!3738881 () Bool)

(assert (=> bs!554561 m!3738881))

(assert (=> b!3374747 d!957854))

(declare-fun d!957856 () Bool)

(declare-fun res!1364951 () Bool)

(declare-fun e!2094787 () Bool)

(assert (=> d!957856 (=> (not res!1364951) (not e!2094787))))

(declare-fun rulesValid!1991 (LexerInterface!4942 List!36895) Bool)

(assert (=> d!957856 (= res!1364951 (rulesValid!1991 thiss!18206 rules!2135))))

(assert (=> d!957856 (= (rulesInvariant!4339 thiss!18206 rules!2135) e!2094787)))

(declare-fun b!3375312 () Bool)

(declare-datatypes ((List!36901 0))(
  ( (Nil!36777) (Cons!36777 (h!42197 String!41251) (t!262698 List!36901)) )
))
(declare-fun noDuplicateTag!1987 (LexerInterface!4942 List!36895 List!36901) Bool)

(assert (=> b!3375312 (= e!2094787 (noDuplicateTag!1987 thiss!18206 rules!2135 Nil!36777))))

(assert (= (and d!957856 res!1364951) b!3375312))

(declare-fun m!3738883 () Bool)

(assert (=> d!957856 m!3738883))

(declare-fun m!3738885 () Bool)

(assert (=> b!3375312 m!3738885))

(assert (=> b!3374726 d!957856))

(declare-fun d!957858 () Bool)

(assert (=> d!957858 (= (inv!49836 (tag!5917 (rule!7893 (h!42190 tokens!494)))) (= (mod (str.len (value!173021 (tag!5917 (rule!7893 (h!42190 tokens!494))))) 2) 0))))

(assert (=> b!3374727 d!957858))

(declare-fun d!957860 () Bool)

(declare-fun res!1364952 () Bool)

(declare-fun e!2094788 () Bool)

(assert (=> d!957860 (=> (not res!1364952) (not e!2094788))))

(assert (=> d!957860 (= res!1364952 (semiInverseModEq!2230 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))))))

(assert (=> d!957860 (= (inv!49839 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) e!2094788)))

(declare-fun b!3375313 () Bool)

(assert (=> b!3375313 (= e!2094788 (equivClasses!2129 (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))))))

(assert (= (and d!957860 res!1364952) b!3375313))

(declare-fun m!3738887 () Bool)

(assert (=> d!957860 m!3738887))

(declare-fun m!3738889 () Bool)

(assert (=> b!3375313 m!3738889))

(assert (=> b!3374727 d!957860))

(declare-fun d!957862 () Bool)

(declare-fun res!1364957 () Bool)

(declare-fun e!2094793 () Bool)

(assert (=> d!957862 (=> res!1364957 e!2094793)))

(assert (=> d!957862 (= res!1364957 (is-Nil!36770 tokens!494))))

(assert (=> d!957862 (= (forall!7724 tokens!494 lambda!120320) e!2094793)))

(declare-fun b!3375318 () Bool)

(declare-fun e!2094794 () Bool)

(assert (=> b!3375318 (= e!2094793 e!2094794)))

(declare-fun res!1364958 () Bool)

(assert (=> b!3375318 (=> (not res!1364958) (not e!2094794))))

(assert (=> b!3375318 (= res!1364958 (dynLambda!15258 lambda!120320 (h!42190 tokens!494)))))

(declare-fun b!3375319 () Bool)

(assert (=> b!3375319 (= e!2094794 (forall!7724 (t!262615 tokens!494) lambda!120320))))

(assert (= (and d!957862 (not res!1364957)) b!3375318))

(assert (= (and b!3375318 res!1364958) b!3375319))

(declare-fun b_lambda!95661 () Bool)

(assert (=> (not b_lambda!95661) (not b!3375318)))

(assert (=> b!3375318 m!3738337))

(declare-fun m!3738891 () Bool)

(assert (=> b!3375319 m!3738891))

(assert (=> b!3374748 d!957862))

(declare-fun b!3375324 () Bool)

(declare-fun e!2094797 () Bool)

(declare-fun tp_is_empty!17451 () Bool)

(declare-fun tp!1055613 () Bool)

(assert (=> b!3375324 (= e!2094797 (and tp_is_empty!17451 tp!1055613))))

(assert (=> b!3374728 (= tp!1055553 e!2094797)))

(assert (= (and b!3374728 (is-Cons!36768 (originalCharacters!6067 separatorToken!241))) b!3375324))

(declare-fun e!2094800 () Bool)

(assert (=> b!3374729 (= tp!1055560 e!2094800)))

(declare-fun b!3375335 () Bool)

(assert (=> b!3375335 (= e!2094800 tp_is_empty!17451)))

(declare-fun b!3375336 () Bool)

(declare-fun tp!1055625 () Bool)

(declare-fun tp!1055628 () Bool)

(assert (=> b!3375336 (= e!2094800 (and tp!1055625 tp!1055628))))

(declare-fun b!3375337 () Bool)

(declare-fun tp!1055626 () Bool)

(assert (=> b!3375337 (= e!2094800 tp!1055626)))

(declare-fun b!3375338 () Bool)

(declare-fun tp!1055627 () Bool)

(declare-fun tp!1055624 () Bool)

(assert (=> b!3375338 (= e!2094800 (and tp!1055627 tp!1055624))))

(assert (= (and b!3374729 (is-ElementMatch!10112 (regex!5353 (rule!7893 separatorToken!241)))) b!3375335))

(assert (= (and b!3374729 (is-Concat!15695 (regex!5353 (rule!7893 separatorToken!241)))) b!3375336))

(assert (= (and b!3374729 (is-Star!10112 (regex!5353 (rule!7893 separatorToken!241)))) b!3375337))

(assert (= (and b!3374729 (is-Union!10112 (regex!5353 (rule!7893 separatorToken!241)))) b!3375338))

(declare-fun b!3375352 () Bool)

(declare-fun b_free!88189 () Bool)

(declare-fun b_next!88893 () Bool)

(assert (=> b!3375352 (= b_free!88189 (not b_next!88893))))

(declare-fun t!262667 () Bool)

(declare-fun tb!179669 () Bool)

(assert (=> (and b!3375352 (= (toValue!7537 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262667) tb!179669))

(declare-fun result!222990 () Bool)

(assert (= result!222990 result!222964))

(assert (=> d!957738 t!262667))

(declare-fun tp!1055639 () Bool)

(declare-fun b_and!234285 () Bool)

(assert (=> b!3375352 (= tp!1055639 (and (=> t!262667 result!222990) b_and!234285))))

(declare-fun b_free!88191 () Bool)

(declare-fun b_next!88895 () Bool)

(assert (=> b!3375352 (= b_free!88191 (not b_next!88895))))

(declare-fun t!262669 () Bool)

(declare-fun tb!179671 () Bool)

(assert (=> (and b!3375352 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262669) tb!179671))

(declare-fun result!222992 () Bool)

(assert (= result!222992 result!222948))

(assert (=> b!3374851 t!262669))

(assert (=> d!957792 t!262669))

(declare-fun t!262671 () Bool)

(declare-fun tb!179673 () Bool)

(assert (=> (and b!3375352 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241)))) t!262671) tb!179673))

(declare-fun result!222994 () Bool)

(assert (= result!222994 result!222972))

(assert (=> d!957804 t!262671))

(assert (=> b!3375210 t!262671))

(declare-fun b_and!234287 () Bool)

(declare-fun tp!1055641 () Bool)

(assert (=> b!3375352 (= tp!1055641 (and (=> t!262669 result!222992) (=> t!262671 result!222994) b_and!234287))))

(declare-fun tp!1055642 () Bool)

(declare-fun e!2094813 () Bool)

(declare-fun e!2094815 () Bool)

(declare-fun b!3375350 () Bool)

(assert (=> b!3375350 (= e!2094813 (and (inv!21 (value!173022 (h!42190 (t!262615 tokens!494)))) e!2094815 tp!1055642))))

(declare-fun tp!1055640 () Bool)

(declare-fun e!2094818 () Bool)

(declare-fun b!3375351 () Bool)

(assert (=> b!3375351 (= e!2094815 (and tp!1055640 (inv!49836 (tag!5917 (rule!7893 (h!42190 (t!262615 tokens!494))))) (inv!49839 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) e!2094818))))

(assert (=> b!3375352 (= e!2094818 (and tp!1055639 tp!1055641))))

(declare-fun e!2094814 () Bool)

(declare-fun tp!1055643 () Bool)

(declare-fun b!3375349 () Bool)

(assert (=> b!3375349 (= e!2094814 (and (inv!49840 (h!42190 (t!262615 tokens!494))) e!2094813 tp!1055643))))

(assert (=> b!3374734 (= tp!1055556 e!2094814)))

(assert (= b!3375351 b!3375352))

(assert (= b!3375350 b!3375351))

(assert (= b!3375349 b!3375350))

(assert (= (and b!3374734 (is-Cons!36770 (t!262615 tokens!494))) b!3375349))

(declare-fun m!3738893 () Bool)

(assert (=> b!3375350 m!3738893))

(declare-fun m!3738895 () Bool)

(assert (=> b!3375351 m!3738895))

(declare-fun m!3738897 () Bool)

(assert (=> b!3375351 m!3738897))

(declare-fun m!3738899 () Bool)

(assert (=> b!3375349 m!3738899))

(declare-fun e!2094819 () Bool)

(assert (=> b!3374724 (= tp!1055555 e!2094819)))

(declare-fun b!3375353 () Bool)

(assert (=> b!3375353 (= e!2094819 tp_is_empty!17451)))

(declare-fun b!3375354 () Bool)

(declare-fun tp!1055645 () Bool)

(declare-fun tp!1055648 () Bool)

(assert (=> b!3375354 (= e!2094819 (and tp!1055645 tp!1055648))))

(declare-fun b!3375355 () Bool)

(declare-fun tp!1055646 () Bool)

(assert (=> b!3375355 (= e!2094819 tp!1055646)))

(declare-fun b!3375356 () Bool)

(declare-fun tp!1055647 () Bool)

(declare-fun tp!1055644 () Bool)

(assert (=> b!3375356 (= e!2094819 (and tp!1055647 tp!1055644))))

(assert (= (and b!3374724 (is-ElementMatch!10112 (regex!5353 (h!42191 rules!2135)))) b!3375353))

(assert (= (and b!3374724 (is-Concat!15695 (regex!5353 (h!42191 rules!2135)))) b!3375354))

(assert (= (and b!3374724 (is-Star!10112 (regex!5353 (h!42191 rules!2135)))) b!3375355))

(assert (= (and b!3374724 (is-Union!10112 (regex!5353 (h!42191 rules!2135)))) b!3375356))

(declare-fun b!3375367 () Bool)

(declare-fun b_free!88193 () Bool)

(declare-fun b_next!88897 () Bool)

(assert (=> b!3375367 (= b_free!88193 (not b_next!88897))))

(declare-fun t!262673 () Bool)

(declare-fun tb!179675 () Bool)

(assert (=> (and b!3375367 (= (toValue!7537 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262673) tb!179675))

(declare-fun result!222998 () Bool)

(assert (= result!222998 result!222964))

(assert (=> d!957738 t!262673))

(declare-fun tp!1055660 () Bool)

(declare-fun b_and!234289 () Bool)

(assert (=> b!3375367 (= tp!1055660 (and (=> t!262673 result!222998) b_and!234289))))

(declare-fun b_free!88195 () Bool)

(declare-fun b_next!88899 () Bool)

(assert (=> b!3375367 (= b_free!88195 (not b_next!88899))))

(declare-fun tb!179677 () Bool)

(declare-fun t!262675 () Bool)

(assert (=> (and b!3375367 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494))))) t!262675) tb!179677))

(declare-fun result!223000 () Bool)

(assert (= result!223000 result!222948))

(assert (=> b!3374851 t!262675))

(assert (=> d!957792 t!262675))

(declare-fun tb!179679 () Bool)

(declare-fun t!262677 () Bool)

(assert (=> (and b!3375367 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241)))) t!262677) tb!179679))

(declare-fun result!223002 () Bool)

(assert (= result!223002 result!222972))

(assert (=> d!957804 t!262677))

(assert (=> b!3375210 t!262677))

(declare-fun tp!1055658 () Bool)

(declare-fun b_and!234291 () Bool)

(assert (=> b!3375367 (= tp!1055658 (and (=> t!262675 result!223000) (=> t!262677 result!223002) b_and!234291))))

(declare-fun e!2094828 () Bool)

(assert (=> b!3375367 (= e!2094828 (and tp!1055660 tp!1055658))))

(declare-fun e!2094830 () Bool)

(declare-fun b!3375366 () Bool)

(declare-fun tp!1055659 () Bool)

(assert (=> b!3375366 (= e!2094830 (and tp!1055659 (inv!49836 (tag!5917 (h!42191 (t!262616 rules!2135)))) (inv!49839 (transformation!5353 (h!42191 (t!262616 rules!2135)))) e!2094828))))

(declare-fun b!3375365 () Bool)

(declare-fun e!2094831 () Bool)

(declare-fun tp!1055657 () Bool)

(assert (=> b!3375365 (= e!2094831 (and e!2094830 tp!1055657))))

(assert (=> b!3374736 (= tp!1055561 e!2094831)))

(assert (= b!3375366 b!3375367))

(assert (= b!3375365 b!3375366))

(assert (= (and b!3374736 (is-Cons!36771 (t!262616 rules!2135))) b!3375365))

(declare-fun m!3738901 () Bool)

(assert (=> b!3375366 m!3738901))

(declare-fun m!3738903 () Bool)

(assert (=> b!3375366 m!3738903))

(declare-fun e!2094832 () Bool)

(assert (=> b!3374727 (= tp!1055557 e!2094832)))

(declare-fun b!3375368 () Bool)

(assert (=> b!3375368 (= e!2094832 tp_is_empty!17451)))

(declare-fun b!3375369 () Bool)

(declare-fun tp!1055662 () Bool)

(declare-fun tp!1055665 () Bool)

(assert (=> b!3375369 (= e!2094832 (and tp!1055662 tp!1055665))))

(declare-fun b!3375370 () Bool)

(declare-fun tp!1055663 () Bool)

(assert (=> b!3375370 (= e!2094832 tp!1055663)))

(declare-fun b!3375371 () Bool)

(declare-fun tp!1055664 () Bool)

(declare-fun tp!1055661 () Bool)

(assert (=> b!3375371 (= e!2094832 (and tp!1055664 tp!1055661))))

(assert (= (and b!3374727 (is-ElementMatch!10112 (regex!5353 (rule!7893 (h!42190 tokens!494))))) b!3375368))

(assert (= (and b!3374727 (is-Concat!15695 (regex!5353 (rule!7893 (h!42190 tokens!494))))) b!3375369))

(assert (= (and b!3374727 (is-Star!10112 (regex!5353 (rule!7893 (h!42190 tokens!494))))) b!3375370))

(assert (= (and b!3374727 (is-Union!10112 (regex!5353 (rule!7893 (h!42190 tokens!494))))) b!3375371))

(declare-fun b!3375372 () Bool)

(declare-fun e!2094833 () Bool)

(declare-fun tp!1055666 () Bool)

(assert (=> b!3375372 (= e!2094833 (and tp_is_empty!17451 tp!1055666))))

(assert (=> b!3374743 (= tp!1055554 e!2094833)))

(assert (= (and b!3374743 (is-Cons!36768 (originalCharacters!6067 (h!42190 tokens!494)))) b!3375372))

(declare-fun b_lambda!95663 () Bool)

(assert (= b_lambda!95661 (or b!3374748 b_lambda!95663)))

(declare-fun bs!554562 () Bool)

(declare-fun d!957864 () Bool)

(assert (= bs!554562 (and d!957864 b!3374748)))

(assert (=> bs!554562 (= (dynLambda!15258 lambda!120320 (h!42190 tokens!494)) (not (isSeparator!5353 (rule!7893 (h!42190 tokens!494)))))))

(assert (=> b!3375318 d!957864))

(declare-fun b_lambda!95665 () Bool)

(assert (= b_lambda!95657 (or (and b!3374732 b_free!88175) (and b!3375367 b_free!88195 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3374738 b_free!88171 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3375352 b_free!88191 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3374749 b_free!88167 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) b_lambda!95665)))

(declare-fun b_lambda!95667 () Bool)

(assert (= b_lambda!95655 (or (and b!3374732 b_free!88175) (and b!3375367 b_free!88195 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3374738 b_free!88171 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3375352 b_free!88191 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) (and b!3374749 b_free!88167 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))))) b_lambda!95667)))

(declare-fun b_lambda!95669 () Bool)

(assert (= b_lambda!95653 (or (and b!3374738 b_free!88171) (and b!3374732 b_free!88175 (= (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3375352 b_free!88191 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3375367 b_free!88195 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3374749 b_free!88167 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) b_lambda!95669)))

(declare-fun b_lambda!95671 () Bool)

(assert (= b_lambda!95651 (or (and b!3374749 b_free!88165 (= (toValue!7537 (transformation!5353 (h!42191 rules!2135))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3375352 b_free!88189 (= (toValue!7537 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3374732 b_free!88173 (= (toValue!7537 (transformation!5353 (rule!7893 separatorToken!241))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3374738 b_free!88169) (and b!3375367 b_free!88193 (= (toValue!7537 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toValue!7537 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) b_lambda!95671)))

(declare-fun b_lambda!95673 () Bool)

(assert (= b_lambda!95645 (or b!3374748 b_lambda!95673)))

(assert (=> d!957698 d!957864))

(declare-fun b_lambda!95675 () Bool)

(assert (= b_lambda!95643 (or (and b!3374738 b_free!88171) (and b!3374732 b_free!88175 (= (toChars!7396 (transformation!5353 (rule!7893 separatorToken!241))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3375352 b_free!88191 (= (toChars!7396 (transformation!5353 (rule!7893 (h!42190 (t!262615 tokens!494))))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3375367 b_free!88195 (= (toChars!7396 (transformation!5353 (h!42191 (t!262616 rules!2135)))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) (and b!3374749 b_free!88167 (= (toChars!7396 (transformation!5353 (h!42191 rules!2135))) (toChars!7396 (transformation!5353 (rule!7893 (h!42190 tokens!494)))))) b_lambda!95675)))

(push 1)

(assert (not d!957804))

(assert (not d!957720))

(assert (not d!957746))

(assert (not d!957818))

(assert (not b_next!88897))

(assert (not d!957800))

(assert (not bm!244266))

(assert (not b!3375022))

(assert (not b!3375130))

(assert (not b!3374930))

(assert (not b!3375178))

(assert b_and!234289)

(assert (not b!3375313))

(assert b_and!234259)

(assert (not b!3375319))

(assert (not b!3375191))

(assert (not b!3375370))

(assert (not d!957790))

(assert (not b_next!88879))

(assert (not b!3375009))

(assert (not d!957728))

(assert b_and!234255)

(assert (not b!3375216))

(assert (not b!3375016))

(assert (not b!3374936))

(assert (not d!957766))

(assert (not b!3375312))

(assert (not b!3375138))

(assert (not b!3375366))

(assert (not b!3375336))

(assert (not b!3375109))

(assert (not b!3374972))

(assert (not d!957806))

(assert (not b_next!88899))

(assert b_and!234277)

(assert (not b!3374970))

(assert (not bm!244278))

(assert (not b!3374932))

(assert (not b!3375305))

(assert (not d!957736))

(assert (not d!957696))

(assert (not b!3375365))

(assert (not d!957792))

(assert (not b!3375015))

(assert (not b!3374894))

(assert (not b!3374937))

(assert (not b!3375180))

(assert (not b!3375024))

(assert (not b!3375349))

(assert (not b!3375350))

(assert (not b_lambda!95669))

(assert (not b!3374846))

(assert (not b_lambda!95667))

(assert (not b_next!88871))

(assert (not b!3375356))

(assert (not b!3375209))

(assert (not b!3375208))

(assert (not b!3375192))

(assert (not b!3374857))

(assert (not d!957740))

(assert (not d!957730))

(assert (not b_lambda!95665))

(assert (not b!3374860))

(assert tp_is_empty!17451)

(assert (not b_lambda!95671))

(assert (not d!957826))

(assert (not b!3374901))

(assert (not b!3374935))

(assert (not d!957704))

(assert (not b!3375371))

(assert (not b!3374896))

(assert (not b!3374978))

(assert (not b!3375107))

(assert (not d!957782))

(assert (not d!957744))

(assert (not b_next!88893))

(assert (not b!3375228))

(assert (not b!3375025))

(assert (not b!3375179))

(assert (not b!3375133))

(assert (not b!3375210))

(assert (not b_next!88895))

(assert (not b!3374852))

(assert (not b!3375296))

(assert (not d!957700))

(assert b_and!234285)

(assert (not d!957748))

(assert (not b!3375337))

(assert b_and!234291)

(assert (not b!3374851))

(assert (not b!3375219))

(assert (not b!3375354))

(assert (not b_lambda!95663))

(assert (not tb!179657))

(assert (not b!3375230))

(assert (not b!3375355))

(assert (not b!3374890))

(assert (not b!3375147))

(assert (not b!3375108))

(assert (not b!3374845))

(assert (not b!3375372))

(assert (not d!957860))

(assert (not d!957732))

(assert (not d!957786))

(assert (not bm!244289))

(assert (not b_lambda!95673))

(assert (not b!3375211))

(assert (not d!957768))

(assert (not d!957802))

(assert (not d!957734))

(assert (not b!3374933))

(assert (not b!3375181))

(assert (not d!957780))

(assert (not d!957716))

(assert (not b_next!88877))

(assert (not b!3375017))

(assert (not b_next!88869))

(assert (not b!3375369))

(assert (not b!3375338))

(assert (not d!957706))

(assert (not b!3375214))

(assert (not d!957796))

(assert (not b!3374899))

(assert (not b!3375148))

(assert b_and!234287)

(assert (not b!3375008))

(assert (not b!3375324))

(assert (not b!3375217))

(assert (not d!957698))

(assert (not b!3374944))

(assert b_and!234275)

(assert (not bm!244291))

(assert (not b!3375168))

(assert (not b!3375194))

(assert (not d!957742))

(assert (not b!3374898))

(assert (not b!3375128))

(assert (not d!957808))

(assert (not b!3375207))

(assert (not b_lambda!95675))

(assert (not b_next!88873))

(assert (not b!3375105))

(assert (not d!957772))

(assert (not b!3374929))

(assert (not b!3375215))

(assert (not b!3374973))

(assert (not tb!179639))

(assert (not b_next!88875))

(assert (not b!3375225))

(assert (not b!3375223))

(assert (not d!957854))

(assert (not d!957798))

(assert (not tb!179651))

(assert b_and!234257)

(assert (not d!957812))

(assert (not b!3375146))

(assert (not bm!244277))

(assert (not d!957856))

(assert (not bm!244275))

(assert (not bm!244288))

(assert (not b!3375351))

(assert (not d!957820))

(assert (not b!3375227))

(assert (not b!3374934))

(assert b_and!234273)

(check-sat)

(pop 1)

(push 1)

(assert b_and!234255)

(assert (not b_next!88871))

(assert (not b_next!88893))

(assert (not b_next!88895))

(assert b_and!234287)

(assert b_and!234275)

(assert (not b_next!88873))

(assert (not b_next!88875))

(assert b_and!234257)

(assert b_and!234273)

(assert (not b_next!88897))

(assert b_and!234289)

(assert b_and!234259)

(assert (not b_next!88879))

(assert (not b_next!88899))

(assert b_and!234277)

(assert b_and!234285)

(assert b_and!234291)

(assert (not b_next!88877))

(assert (not b_next!88869))

(check-sat)

(pop 1)

