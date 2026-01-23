; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125994 () Bool)

(assert start!125994)

(declare-fun b!1387654 () Bool)

(declare-fun b_free!33731 () Bool)

(declare-fun b_next!34435 () Bool)

(assert (=> b!1387654 (= b_free!33731 (not b_next!34435))))

(declare-fun tp!396782 () Bool)

(declare-fun b_and!92963 () Bool)

(assert (=> b!1387654 (= tp!396782 b_and!92963)))

(declare-fun b_free!33733 () Bool)

(declare-fun b_next!34437 () Bool)

(assert (=> b!1387654 (= b_free!33733 (not b_next!34437))))

(declare-fun tp!396777 () Bool)

(declare-fun b_and!92965 () Bool)

(assert (=> b!1387654 (= tp!396777 b_and!92965)))

(declare-fun b!1387684 () Bool)

(declare-fun b_free!33735 () Bool)

(declare-fun b_next!34439 () Bool)

(assert (=> b!1387684 (= b_free!33735 (not b_next!34439))))

(declare-fun tp!396785 () Bool)

(declare-fun b_and!92967 () Bool)

(assert (=> b!1387684 (= tp!396785 b_and!92967)))

(declare-fun b_free!33737 () Bool)

(declare-fun b_next!34441 () Bool)

(assert (=> b!1387684 (= b_free!33737 (not b_next!34441))))

(declare-fun tp!396788 () Bool)

(declare-fun b_and!92969 () Bool)

(assert (=> b!1387684 (= tp!396788 b_and!92969)))

(declare-fun b!1387659 () Bool)

(declare-fun b_free!33739 () Bool)

(declare-fun b_next!34443 () Bool)

(assert (=> b!1387659 (= b_free!33739 (not b_next!34443))))

(declare-fun tp!396781 () Bool)

(declare-fun b_and!92971 () Bool)

(assert (=> b!1387659 (= tp!396781 b_and!92971)))

(declare-fun b_free!33741 () Bool)

(declare-fun b_next!34445 () Bool)

(assert (=> b!1387659 (= b_free!33741 (not b_next!34445))))

(declare-fun tp!396778 () Bool)

(declare-fun b_and!92973 () Bool)

(assert (=> b!1387659 (= tp!396778 b_and!92973)))

(declare-fun b!1387678 () Bool)

(assert (=> b!1387678 true))

(assert (=> b!1387678 true))

(declare-fun b!1387681 () Bool)

(assert (=> b!1387681 true))

(declare-fun b!1387677 () Bool)

(assert (=> b!1387677 true))

(declare-fun bs!337166 () Bool)

(declare-fun b!1387670 () Bool)

(assert (= bs!337166 (and b!1387670 b!1387677)))

(declare-fun lambda!59869 () Int)

(declare-fun lambda!59868 () Int)

(assert (=> bs!337166 (not (= lambda!59869 lambda!59868))))

(assert (=> b!1387670 true))

(declare-fun b!1387648 () Bool)

(declare-fun res!626182 () Bool)

(declare-fun e!886422 () Bool)

(assert (=> b!1387648 (=> res!626182 e!886422)))

(declare-datatypes ((C!7796 0))(
  ( (C!7797 (val!4458 Int)) )
))
(declare-datatypes ((List!14148 0))(
  ( (Nil!14082) (Cons!14082 (h!19483 C!7796) (t!122315 List!14148)) )
))
(declare-fun lt!461666 () List!14148)

(declare-fun lt!461659 () C!7796)

(declare-fun contains!2697 (List!14148 C!7796) Bool)

(assert (=> b!1387648 (= res!626182 (not (contains!2697 lt!461666 lt!461659)))))

(declare-fun b!1387649 () Bool)

(declare-fun e!886437 () Bool)

(declare-fun e!886439 () Bool)

(assert (=> b!1387649 (= e!886437 e!886439)))

(declare-fun res!626185 () Bool)

(assert (=> b!1387649 (=> res!626185 e!886439)))

(declare-fun lt!461656 () List!14148)

(declare-fun ++!3656 (List!14148 List!14148) List!14148)

(declare-fun getSuffix!599 (List!14148 List!14148) List!14148)

(assert (=> b!1387649 (= res!626185 (not (= lt!461656 (++!3656 lt!461666 (getSuffix!599 lt!461656 lt!461666)))))))

(declare-fun lambda!59865 () Int)

(declare-fun pickWitness!206 (Int) List!14148)

(assert (=> b!1387649 (= lt!461656 (pickWitness!206 lambda!59865))))

(declare-fun b!1387650 () Bool)

(declare-fun e!886417 () Bool)

(declare-fun e!886425 () Bool)

(assert (=> b!1387650 (= e!886417 e!886425)))

(declare-fun res!626190 () Bool)

(assert (=> b!1387650 (=> res!626190 e!886425)))

(declare-datatypes ((List!14149 0))(
  ( (Nil!14083) (Cons!14083 (h!19484 (_ BitVec 16)) (t!122316 List!14149)) )
))
(declare-datatypes ((TokenValue!2529 0))(
  ( (FloatLiteralValue!5058 (text!18148 List!14149)) (TokenValueExt!2528 (__x!8887 Int)) (Broken!12645 (value!79118 List!14149)) (Object!2594) (End!2529) (Def!2529) (Underscore!2529) (Match!2529) (Else!2529) (Error!2529) (Case!2529) (If!2529) (Extends!2529) (Abstract!2529) (Class!2529) (Val!2529) (DelimiterValue!5058 (del!2589 List!14149)) (KeywordValue!2535 (value!79119 List!14149)) (CommentValue!5058 (value!79120 List!14149)) (WhitespaceValue!5058 (value!79121 List!14149)) (IndentationValue!2529 (value!79122 List!14149)) (String!16880) (Int32!2529) (Broken!12646 (value!79123 List!14149)) (Boolean!2530) (Unit!20338) (OperatorValue!2532 (op!2589 List!14149)) (IdentifierValue!5058 (value!79124 List!14149)) (IdentifierValue!5059 (value!79125 List!14149)) (WhitespaceValue!5059 (value!79126 List!14149)) (True!5058) (False!5058) (Broken!12647 (value!79127 List!14149)) (Broken!12648 (value!79128 List!14149)) (True!5059) (RightBrace!2529) (RightBracket!2529) (Colon!2529) (Null!2529) (Comma!2529) (LeftBracket!2529) (False!5059) (LeftBrace!2529) (ImaginaryLiteralValue!2529 (text!18149 List!14149)) (StringLiteralValue!7587 (value!79129 List!14149)) (EOFValue!2529 (value!79130 List!14149)) (IdentValue!2529 (value!79131 List!14149)) (DelimiterValue!5059 (value!79132 List!14149)) (DedentValue!2529 (value!79133 List!14149)) (NewLineValue!2529 (value!79134 List!14149)) (IntegerValue!7587 (value!79135 (_ BitVec 32)) (text!18150 List!14149)) (IntegerValue!7588 (value!79136 Int) (text!18151 List!14149)) (Times!2529) (Or!2529) (Equal!2529) (Minus!2529) (Broken!12649 (value!79137 List!14149)) (And!2529) (Div!2529) (LessEqual!2529) (Mod!2529) (Concat!6282) (Not!2529) (Plus!2529) (SpaceValue!2529 (value!79138 List!14149)) (IntegerValue!7589 (value!79139 Int) (text!18152 List!14149)) (StringLiteralValue!7588 (text!18153 List!14149)) (FloatLiteralValue!5059 (text!18154 List!14149)) (BytesLiteralValue!2529 (value!79140 List!14149)) (CommentValue!5059 (value!79141 List!14149)) (StringLiteralValue!7589 (value!79142 List!14149)) (ErrorTokenValue!2529 (msg!2590 List!14149)) )
))
(declare-datatypes ((IArray!9281 0))(
  ( (IArray!9282 (innerList!4698 List!14148)) )
))
(declare-datatypes ((Conc!4638 0))(
  ( (Node!4638 (left!12035 Conc!4638) (right!12365 Conc!4638) (csize!9506 Int) (cheight!4849 Int)) (Leaf!7054 (xs!7365 IArray!9281) (csize!9507 Int)) (Empty!4638) )
))
(declare-datatypes ((BalanceConc!9216 0))(
  ( (BalanceConc!9217 (c!228372 Conc!4638)) )
))
(declare-datatypes ((Regex!3753 0))(
  ( (ElementMatch!3753 (c!228373 C!7796)) (Concat!6283 (regOne!8018 Regex!3753) (regTwo!8018 Regex!3753)) (EmptyExpr!3753) (Star!3753 (reg!4082 Regex!3753)) (EmptyLang!3753) (Union!3753 (regOne!8019 Regex!3753) (regTwo!8019 Regex!3753)) )
))
(declare-datatypes ((String!16881 0))(
  ( (String!16882 (value!79143 String)) )
))
(declare-datatypes ((TokenValueInjection!4718 0))(
  ( (TokenValueInjection!4719 (toValue!3726 Int) (toChars!3585 Int)) )
))
(declare-datatypes ((Rule!4678 0))(
  ( (Rule!4679 (regex!2439 Regex!3753) (tag!2701 String!16881) (isSeparator!2439 Bool) (transformation!2439 TokenValueInjection!4718)) )
))
(declare-datatypes ((Token!4540 0))(
  ( (Token!4541 (value!79144 TokenValue!2529) (rule!4200 Rule!4678) (size!11563 Int) (originalCharacters!3301 List!14148)) )
))
(declare-datatypes ((List!14150 0))(
  ( (Nil!14084) (Cons!14084 (h!19485 Token!4540) (t!122317 List!14150)) )
))
(declare-datatypes ((IArray!9283 0))(
  ( (IArray!9284 (innerList!4699 List!14150)) )
))
(declare-datatypes ((Conc!4639 0))(
  ( (Node!4639 (left!12036 Conc!4639) (right!12366 Conc!4639) (csize!9508 Int) (cheight!4850 Int)) (Leaf!7055 (xs!7366 IArray!9283) (csize!9509 Int)) (Empty!4639) )
))
(declare-datatypes ((BalanceConc!9218 0))(
  ( (BalanceConc!9219 (c!228374 Conc!4639)) )
))
(declare-datatypes ((tuple2!13686 0))(
  ( (tuple2!13687 (_1!7729 BalanceConc!9218) (_2!7729 BalanceConc!9216)) )
))
(declare-fun lt!461658 () tuple2!13686)

(declare-fun lt!461648 () List!14150)

(declare-fun list!5461 (BalanceConc!9218) List!14150)

(assert (=> b!1387650 (= res!626190 (not (= (list!5461 (_1!7729 lt!461658)) lt!461648)))))

(declare-fun t2!34 () Token!4540)

(assert (=> b!1387650 (= lt!461648 (Cons!14084 t2!34 Nil!14084))))

(declare-datatypes ((LexerInterface!2134 0))(
  ( (LexerInterfaceExt!2131 (__x!8888 Int)) (Lexer!2132) )
))
(declare-fun thiss!19762 () LexerInterface!2134)

(declare-fun lt!461646 () BalanceConc!9216)

(declare-datatypes ((List!14151 0))(
  ( (Nil!14085) (Cons!14085 (h!19486 Rule!4678) (t!122318 List!14151)) )
))
(declare-fun rules!2550 () List!14151)

(declare-fun lex!959 (LexerInterface!2134 List!14151 BalanceConc!9216) tuple2!13686)

(assert (=> b!1387650 (= lt!461658 (lex!959 thiss!19762 rules!2550 lt!461646))))

(declare-fun print!898 (LexerInterface!2134 BalanceConc!9218) BalanceConc!9216)

(declare-fun singletonSeq!1084 (Token!4540) BalanceConc!9218)

(assert (=> b!1387650 (= lt!461646 (print!898 thiss!19762 (singletonSeq!1084 t2!34)))))

(declare-fun b!1387651 () Bool)

(declare-fun res!626199 () Bool)

(assert (=> b!1387651 (=> res!626199 e!886422)))

(assert (=> b!1387651 (= res!626199 (not (contains!2697 lt!461656 lt!461659)))))

(declare-fun b!1387652 () Bool)

(declare-fun res!626196 () Bool)

(declare-fun e!886429 () Bool)

(assert (=> b!1387652 (=> (not res!626196) (not e!886429))))

(declare-fun rulesProduceIndividualToken!1103 (LexerInterface!2134 List!14151 Token!4540) Bool)

(assert (=> b!1387652 (= res!626196 (rulesProduceIndividualToken!1103 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1387653 () Bool)

(declare-fun res!626181 () Bool)

(assert (=> b!1387653 (=> (not res!626181) (not e!886429))))

(declare-fun rulesInvariant!2004 (LexerInterface!2134 List!14151) Bool)

(assert (=> b!1387653 (= res!626181 (rulesInvariant!2004 thiss!19762 rules!2550))))

(declare-fun e!886440 () Bool)

(assert (=> b!1387654 (= e!886440 (and tp!396782 tp!396777))))

(declare-fun b!1387655 () Bool)

(declare-fun res!626200 () Bool)

(declare-fun e!886430 () Bool)

(assert (=> b!1387655 (=> res!626200 e!886430)))

(declare-fun usedCharacters!250 (Regex!3753) List!14148)

(assert (=> b!1387655 (= res!626200 (contains!2697 (usedCharacters!250 (regex!2439 (rule!4200 t2!34))) lt!461659))))

(declare-fun b!1387656 () Bool)

(declare-fun e!886413 () Bool)

(assert (=> b!1387656 (= e!886413 e!886417)))

(declare-fun res!626175 () Bool)

(assert (=> b!1387656 (=> res!626175 e!886417)))

(declare-fun lt!461667 () tuple2!13686)

(declare-fun lt!461651 () List!14150)

(assert (=> b!1387656 (= res!626175 (not (= (list!5461 (_1!7729 lt!461667)) lt!461651)))))

(declare-fun t1!34 () Token!4540)

(assert (=> b!1387656 (= lt!461651 (Cons!14084 t1!34 Nil!14084))))

(declare-fun lt!461657 () BalanceConc!9216)

(assert (=> b!1387656 (= lt!461667 (lex!959 thiss!19762 rules!2550 lt!461657))))

(assert (=> b!1387656 (= lt!461657 (print!898 thiss!19762 (singletonSeq!1084 t1!34)))))

(declare-fun lt!461664 () Rule!4678)

(declare-fun getWitness!410 (List!14151 Int) Rule!4678)

(assert (=> b!1387656 (= lt!461664 (getWitness!410 rules!2550 lambda!59868))))

(declare-fun b!1387657 () Bool)

(declare-fun e!886419 () Bool)

(declare-fun e!886412 () Bool)

(declare-fun tp!396783 () Bool)

(declare-fun inv!21 (TokenValue!2529) Bool)

(assert (=> b!1387657 (= e!886419 (and (inv!21 (value!79144 t1!34)) e!886412 tp!396783))))

(declare-fun e!886426 () Bool)

(declare-fun tp!396784 () Bool)

(declare-fun b!1387658 () Bool)

(declare-fun inv!18419 (String!16881) Bool)

(declare-fun inv!18422 (TokenValueInjection!4718) Bool)

(assert (=> b!1387658 (= e!886426 (and tp!396784 (inv!18419 (tag!2701 (h!19486 rules!2550))) (inv!18422 (transformation!2439 (h!19486 rules!2550))) e!886440))))

(declare-fun e!886418 () Bool)

(assert (=> b!1387659 (= e!886418 (and tp!396781 tp!396778))))

(declare-fun b!1387660 () Bool)

(declare-fun e!886421 () Bool)

(declare-fun tp!396787 () Bool)

(assert (=> b!1387660 (= e!886421 (and tp!396787 (inv!18419 (tag!2701 (rule!4200 t2!34))) (inv!18422 (transformation!2439 (rule!4200 t2!34))) e!886418))))

(declare-fun b!1387661 () Bool)

(declare-fun res!626195 () Bool)

(assert (=> b!1387661 (=> (not res!626195) (not e!886429))))

(declare-fun isEmpty!8518 (List!14151) Bool)

(assert (=> b!1387661 (= res!626195 (not (isEmpty!8518 rules!2550)))))

(declare-fun b!1387662 () Bool)

(declare-datatypes ((Unit!20339 0))(
  ( (Unit!20340) )
))
(declare-fun e!886434 () Unit!20339)

(declare-fun Unit!20341 () Unit!20339)

(assert (=> b!1387662 (= e!886434 Unit!20341)))

(declare-fun lt!461647 () Unit!20339)

(declare-fun lt!461662 () List!14148)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!184 (Regex!3753 List!14148 C!7796) Unit!20339)

(declare-fun head!2531 (List!14148) C!7796)

(assert (=> b!1387662 (= lt!461647 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!184 (regex!2439 (rule!4200 t1!34)) lt!461662 (head!2531 lt!461662)))))

(assert (=> b!1387662 false))

(declare-fun b!1387663 () Bool)

(declare-fun res!626198 () Bool)

(assert (=> b!1387663 (=> res!626198 e!886417)))

(declare-datatypes ((tuple2!13688 0))(
  ( (tuple2!13689 (_1!7730 List!14150) (_2!7730 List!14148)) )
))
(declare-fun lexList!648 (LexerInterface!2134 List!14151 List!14148) tuple2!13688)

(declare-fun list!5462 (BalanceConc!9216) List!14148)

(assert (=> b!1387663 (= res!626198 (not (= (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461657)) (tuple2!13689 lt!461651 Nil!14082))))))

(declare-fun b!1387664 () Bool)

(declare-fun res!626177 () Bool)

(assert (=> b!1387664 (=> (not res!626177) (not e!886429))))

(assert (=> b!1387664 (= res!626177 (rulesProduceIndividualToken!1103 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1387665 () Bool)

(declare-fun res!626193 () Bool)

(declare-fun e!886432 () Bool)

(assert (=> b!1387665 (=> (not res!626193) (not e!886432))))

(declare-fun separableTokensPredicate!417 (LexerInterface!2134 Token!4540 Token!4540 List!14151) Bool)

(assert (=> b!1387665 (= res!626193 (not (separableTokensPredicate!417 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1387666 () Bool)

(declare-fun e!886424 () Bool)

(declare-fun e!886423 () Bool)

(assert (=> b!1387666 (= e!886424 e!886423)))

(declare-fun res!626201 () Bool)

(assert (=> b!1387666 (=> res!626201 e!886423)))

(declare-fun lt!461650 () Regex!3753)

(declare-fun lambda!59866 () Int)

(declare-datatypes ((List!14152 0))(
  ( (Nil!14086) (Cons!14086 (h!19487 Regex!3753) (t!122319 List!14152)) )
))
(declare-fun contains!2698 (List!14152 Regex!3753) Bool)

(declare-fun map!3119 (List!14151 Int) List!14152)

(assert (=> b!1387666 (= res!626201 (not (contains!2698 (map!3119 rules!2550 lambda!59866) lt!461650)))))

(declare-fun lambda!59867 () Int)

(declare-fun getWitness!411 (List!14152 Int) Regex!3753)

(assert (=> b!1387666 (= lt!461650 (getWitness!411 (map!3119 rules!2550 lambda!59866) lambda!59867))))

(declare-fun b!1387667 () Bool)

(declare-fun res!626174 () Bool)

(assert (=> b!1387667 (=> res!626174 e!886417)))

(declare-datatypes ((tuple2!13690 0))(
  ( (tuple2!13691 (_1!7731 Token!4540) (_2!7731 List!14148)) )
))
(declare-datatypes ((Option!2700 0))(
  ( (None!2699) (Some!2699 (v!21566 tuple2!13690)) )
))
(declare-fun maxPrefix!1108 (LexerInterface!2134 List!14151 List!14148) Option!2700)

(assert (=> b!1387667 (= res!626174 (not (= (maxPrefix!1108 thiss!19762 rules!2550 lt!461662) (Some!2699 (tuple2!13691 t1!34 Nil!14082)))))))

(declare-fun b!1387668 () Bool)

(declare-fun res!626192 () Bool)

(assert (=> b!1387668 (=> res!626192 e!886422)))

(declare-fun lt!461660 () C!7796)

(assert (=> b!1387668 (= res!626192 (not (contains!2697 lt!461656 lt!461660)))))

(declare-fun b!1387669 () Bool)

(declare-fun res!626191 () Bool)

(declare-fun e!886436 () Bool)

(assert (=> b!1387669 (=> res!626191 e!886436)))

(declare-fun contains!2699 (List!14151 Rule!4678) Bool)

(assert (=> b!1387669 (= res!626191 (not (contains!2699 rules!2550 lt!461664)))))

(declare-fun e!886427 () Bool)

(assert (=> b!1387670 (= e!886436 e!886427)))

(declare-fun res!626179 () Bool)

(assert (=> b!1387670 (=> res!626179 e!886427)))

(declare-fun matchR!1744 (Regex!3753 List!14148) Bool)

(assert (=> b!1387670 (= res!626179 (not (matchR!1744 (regex!2439 (rule!4200 t1!34)) lt!461662)))))

(declare-fun lt!461668 () Unit!20339)

(declare-fun forallContained!634 (List!14151 Int Rule!4678) Unit!20339)

(assert (=> b!1387670 (= lt!461668 (forallContained!634 rules!2550 lambda!59869 (rule!4200 t2!34)))))

(declare-fun lt!461653 () Unit!20339)

(assert (=> b!1387670 (= lt!461653 (forallContained!634 rules!2550 lambda!59869 (rule!4200 t1!34)))))

(declare-fun lt!461663 () Unit!20339)

(assert (=> b!1387670 (= lt!461663 (forallContained!634 rules!2550 lambda!59869 lt!461664))))

(declare-fun b!1387671 () Bool)

(declare-fun e!886433 () Bool)

(assert (=> b!1387671 (= e!886432 e!886433)))

(declare-fun res!626197 () Bool)

(assert (=> b!1387671 (=> (not res!626197) (not e!886433))))

(declare-fun lt!461655 () Regex!3753)

(declare-fun prefixMatch!262 (Regex!3753 List!14148) Bool)

(assert (=> b!1387671 (= res!626197 (prefixMatch!262 lt!461655 lt!461666))))

(declare-fun rulesRegex!322 (LexerInterface!2134 List!14151) Regex!3753)

(assert (=> b!1387671 (= lt!461655 (rulesRegex!322 thiss!19762 rules!2550))))

(assert (=> b!1387671 (= lt!461666 (++!3656 lt!461662 (Cons!14082 lt!461659 Nil!14082)))))

(declare-fun lt!461644 () BalanceConc!9216)

(declare-fun apply!3529 (BalanceConc!9216 Int) C!7796)

(assert (=> b!1387671 (= lt!461659 (apply!3529 lt!461644 0))))

(declare-fun lt!461652 () BalanceConc!9216)

(assert (=> b!1387671 (= lt!461662 (list!5462 lt!461652))))

(declare-fun charsOf!1411 (Token!4540) BalanceConc!9216)

(assert (=> b!1387671 (= lt!461652 (charsOf!1411 t1!34))))

(declare-fun b!1387672 () Bool)

(declare-fun res!626189 () Bool)

(assert (=> b!1387672 (=> (not res!626189) (not e!886429))))

(assert (=> b!1387672 (= res!626189 (not (= (isSeparator!2439 (rule!4200 t1!34)) (isSeparator!2439 (rule!4200 t2!34)))))))

(declare-fun e!886414 () Bool)

(declare-fun tp!396786 () Bool)

(declare-fun b!1387673 () Bool)

(assert (=> b!1387673 (= e!886414 (and (inv!21 (value!79144 t2!34)) e!886421 tp!396786))))

(declare-fun res!626202 () Bool)

(assert (=> start!125994 (=> (not res!626202) (not e!886429))))

(get-info :version)

(assert (=> start!125994 (= res!626202 ((_ is Lexer!2132) thiss!19762))))

(assert (=> start!125994 e!886429))

(assert (=> start!125994 true))

(declare-fun e!886420 () Bool)

(assert (=> start!125994 e!886420))

(declare-fun inv!18423 (Token!4540) Bool)

(assert (=> start!125994 (and (inv!18423 t1!34) e!886419)))

(assert (=> start!125994 (and (inv!18423 t2!34) e!886414)))

(declare-fun b!1387674 () Bool)

(assert (=> b!1387674 (= e!886429 e!886432)))

(declare-fun res!626173 () Bool)

(assert (=> b!1387674 (=> (not res!626173) (not e!886432))))

(declare-fun size!11564 (BalanceConc!9216) Int)

(assert (=> b!1387674 (= res!626173 (> (size!11564 lt!461644) 0))))

(assert (=> b!1387674 (= lt!461644 (charsOf!1411 t2!34))))

(declare-fun b!1387675 () Bool)

(declare-fun res!626203 () Bool)

(assert (=> b!1387675 (=> res!626203 e!886425)))

(declare-fun isEmpty!8519 (BalanceConc!9216) Bool)

(assert (=> b!1387675 (= res!626203 (not (isEmpty!8519 (_2!7729 lt!461658))))))

(declare-fun b!1387676 () Bool)

(declare-fun Unit!20342 () Unit!20339)

(assert (=> b!1387676 (= e!886434 Unit!20342)))

(assert (=> b!1387677 (= e!886423 e!886413)))

(declare-fun res!626186 () Bool)

(assert (=> b!1387677 (=> res!626186 e!886413)))

(declare-fun exists!522 (List!14151 Int) Bool)

(assert (=> b!1387677 (= res!626186 (not (exists!522 rules!2550 lambda!59868)))))

(assert (=> b!1387677 (exists!522 rules!2550 lambda!59868)))

(declare-fun lt!461654 () Unit!20339)

(declare-fun lemmaMapContains!150 (List!14151 Int Regex!3753) Unit!20339)

(assert (=> b!1387677 (= lt!461654 (lemmaMapContains!150 rules!2550 lambda!59866 lt!461650))))

(assert (=> b!1387678 (= e!886433 (not e!886437))))

(declare-fun res!626205 () Bool)

(assert (=> b!1387678 (=> res!626205 e!886437)))

(declare-fun Exists!903 (Int) Bool)

(assert (=> b!1387678 (= res!626205 (not (Exists!903 lambda!59865)))))

(assert (=> b!1387678 (Exists!903 lambda!59865)))

(declare-fun lt!461643 () Unit!20339)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!221 (Regex!3753 List!14148) Unit!20339)

(assert (=> b!1387678 (= lt!461643 (lemmaPrefixMatchThenExistsStringThatMatches!221 lt!461655 lt!461666))))

(declare-fun b!1387679 () Bool)

(declare-fun validRegex!1635 (Regex!3753) Bool)

(assert (=> b!1387679 (= e!886430 (validRegex!1635 (regex!2439 (rule!4200 t2!34))))))

(declare-fun b!1387680 () Bool)

(assert (=> b!1387680 (= e!886425 e!886436)))

(declare-fun res!626204 () Bool)

(assert (=> b!1387680 (=> res!626204 e!886436)))

(declare-fun lt!461642 () List!14148)

(assert (=> b!1387680 (= res!626204 (not (= (maxPrefix!1108 thiss!19762 rules!2550 lt!461642) (Some!2699 (tuple2!13691 t2!34 Nil!14082)))))))

(assert (=> b!1387680 (= lt!461642 (list!5462 lt!461644))))

(assert (=> b!1387681 (= e!886422 e!886424)))

(declare-fun res!626172 () Bool)

(assert (=> b!1387681 (=> res!626172 e!886424)))

(declare-fun exists!523 (List!14152 Int) Bool)

(assert (=> b!1387681 (= res!626172 (not (exists!523 (map!3119 rules!2550 lambda!59866) lambda!59867)))))

(declare-fun lt!461649 () List!14152)

(assert (=> b!1387681 (exists!523 lt!461649 lambda!59867)))

(declare-fun lt!461661 () Unit!20339)

(declare-fun matchRGenUnionSpec!164 (Regex!3753 List!14152 List!14148) Unit!20339)

(assert (=> b!1387681 (= lt!461661 (matchRGenUnionSpec!164 lt!461655 lt!461649 lt!461656))))

(assert (=> b!1387681 (= lt!461649 (map!3119 rules!2550 lambda!59866))))

(declare-fun b!1387682 () Bool)

(declare-fun res!626194 () Bool)

(assert (=> b!1387682 (=> res!626194 e!886417)))

(assert (=> b!1387682 (= res!626194 (not (contains!2699 rules!2550 (rule!4200 t1!34))))))

(declare-fun b!1387683 () Bool)

(declare-fun res!626183 () Bool)

(assert (=> b!1387683 (=> res!626183 e!886427)))

(assert (=> b!1387683 (= res!626183 (not (matchR!1744 (regex!2439 (rule!4200 t2!34)) lt!461642)))))

(declare-fun e!886416 () Bool)

(assert (=> b!1387684 (= e!886416 (and tp!396785 tp!396788))))

(declare-fun b!1387685 () Bool)

(assert (=> b!1387685 (= e!886439 e!886422)))

(declare-fun res!626171 () Bool)

(assert (=> b!1387685 (=> res!626171 e!886422)))

(assert (=> b!1387685 (= res!626171 (not (contains!2697 lt!461666 lt!461660)))))

(assert (=> b!1387685 (= lt!461660 (apply!3529 lt!461652 0))))

(declare-fun b!1387686 () Bool)

(declare-fun res!626176 () Bool)

(assert (=> b!1387686 (=> res!626176 e!886436)))

(assert (=> b!1387686 (= res!626176 (not (contains!2699 rules!2550 (rule!4200 t2!34))))))

(declare-fun b!1387687 () Bool)

(declare-fun tp!396779 () Bool)

(assert (=> b!1387687 (= e!886420 (and e!886426 tp!396779))))

(declare-fun b!1387688 () Bool)

(declare-fun res!626188 () Bool)

(assert (=> b!1387688 (=> (not res!626188) (not e!886432))))

(declare-fun sepAndNonSepRulesDisjointChars!812 (List!14151 List!14151) Bool)

(assert (=> b!1387688 (= res!626188 (sepAndNonSepRulesDisjointChars!812 rules!2550 rules!2550))))

(declare-fun b!1387689 () Bool)

(assert (=> b!1387689 (= e!886427 e!886430)))

(declare-fun res!626187 () Bool)

(assert (=> b!1387689 (=> res!626187 e!886430)))

(declare-fun lt!461645 () Bool)

(assert (=> b!1387689 (= res!626187 lt!461645)))

(declare-fun lt!461665 () Unit!20339)

(assert (=> b!1387689 (= lt!461665 e!886434)))

(declare-fun c!228371 () Bool)

(assert (=> b!1387689 (= c!228371 lt!461645)))

(assert (=> b!1387689 (= lt!461645 (not (contains!2697 (usedCharacters!250 (regex!2439 (rule!4200 t1!34))) lt!461660)))))

(declare-fun b!1387690 () Bool)

(declare-fun res!626184 () Bool)

(assert (=> b!1387690 (=> res!626184 e!886425)))

(assert (=> b!1387690 (= res!626184 (not (= (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461646)) (tuple2!13689 lt!461648 Nil!14082))))))

(declare-fun tp!396780 () Bool)

(declare-fun b!1387691 () Bool)

(assert (=> b!1387691 (= e!886412 (and tp!396780 (inv!18419 (tag!2701 (rule!4200 t1!34))) (inv!18422 (transformation!2439 (rule!4200 t1!34))) e!886416))))

(declare-fun b!1387692 () Bool)

(declare-fun res!626180 () Bool)

(assert (=> b!1387692 (=> res!626180 e!886422)))

(assert (=> b!1387692 (= res!626180 (not (matchR!1744 lt!461655 lt!461656)))))

(declare-fun b!1387693 () Bool)

(declare-fun res!626178 () Bool)

(assert (=> b!1387693 (=> res!626178 e!886417)))

(assert (=> b!1387693 (= res!626178 (not (isEmpty!8519 (_2!7729 lt!461667))))))

(assert (= (and start!125994 res!626202) b!1387661))

(assert (= (and b!1387661 res!626195) b!1387653))

(assert (= (and b!1387653 res!626181) b!1387664))

(assert (= (and b!1387664 res!626177) b!1387652))

(assert (= (and b!1387652 res!626196) b!1387672))

(assert (= (and b!1387672 res!626189) b!1387674))

(assert (= (and b!1387674 res!626173) b!1387688))

(assert (= (and b!1387688 res!626188) b!1387665))

(assert (= (and b!1387665 res!626193) b!1387671))

(assert (= (and b!1387671 res!626197) b!1387678))

(assert (= (and b!1387678 (not res!626205)) b!1387649))

(assert (= (and b!1387649 (not res!626185)) b!1387685))

(assert (= (and b!1387685 (not res!626171)) b!1387668))

(assert (= (and b!1387668 (not res!626192)) b!1387648))

(assert (= (and b!1387648 (not res!626182)) b!1387651))

(assert (= (and b!1387651 (not res!626199)) b!1387692))

(assert (= (and b!1387692 (not res!626180)) b!1387681))

(assert (= (and b!1387681 (not res!626172)) b!1387666))

(assert (= (and b!1387666 (not res!626201)) b!1387677))

(assert (= (and b!1387677 (not res!626186)) b!1387656))

(assert (= (and b!1387656 (not res!626175)) b!1387693))

(assert (= (and b!1387693 (not res!626178)) b!1387663))

(assert (= (and b!1387663 (not res!626198)) b!1387667))

(assert (= (and b!1387667 (not res!626174)) b!1387682))

(assert (= (and b!1387682 (not res!626194)) b!1387650))

(assert (= (and b!1387650 (not res!626190)) b!1387675))

(assert (= (and b!1387675 (not res!626203)) b!1387690))

(assert (= (and b!1387690 (not res!626184)) b!1387680))

(assert (= (and b!1387680 (not res!626204)) b!1387686))

(assert (= (and b!1387686 (not res!626176)) b!1387669))

(assert (= (and b!1387669 (not res!626191)) b!1387670))

(assert (= (and b!1387670 (not res!626179)) b!1387683))

(assert (= (and b!1387683 (not res!626183)) b!1387689))

(assert (= (and b!1387689 c!228371) b!1387662))

(assert (= (and b!1387689 (not c!228371)) b!1387676))

(assert (= (and b!1387689 (not res!626187)) b!1387655))

(assert (= (and b!1387655 (not res!626200)) b!1387679))

(assert (= b!1387658 b!1387654))

(assert (= b!1387687 b!1387658))

(assert (= (and start!125994 ((_ is Cons!14085) rules!2550)) b!1387687))

(assert (= b!1387691 b!1387684))

(assert (= b!1387657 b!1387691))

(assert (= start!125994 b!1387657))

(assert (= b!1387660 b!1387659))

(assert (= b!1387673 b!1387660))

(assert (= start!125994 b!1387673))

(declare-fun m!1562055 () Bool)

(assert (=> b!1387660 m!1562055))

(declare-fun m!1562057 () Bool)

(assert (=> b!1387660 m!1562057))

(declare-fun m!1562059 () Bool)

(assert (=> b!1387648 m!1562059))

(declare-fun m!1562061 () Bool)

(assert (=> b!1387678 m!1562061))

(assert (=> b!1387678 m!1562061))

(declare-fun m!1562063 () Bool)

(assert (=> b!1387678 m!1562063))

(declare-fun m!1562065 () Bool)

(assert (=> b!1387651 m!1562065))

(declare-fun m!1562067 () Bool)

(assert (=> b!1387661 m!1562067))

(declare-fun m!1562069 () Bool)

(assert (=> b!1387668 m!1562069))

(declare-fun m!1562071 () Bool)

(assert (=> b!1387656 m!1562071))

(declare-fun m!1562073 () Bool)

(assert (=> b!1387656 m!1562073))

(declare-fun m!1562075 () Bool)

(assert (=> b!1387656 m!1562075))

(assert (=> b!1387656 m!1562073))

(declare-fun m!1562077 () Bool)

(assert (=> b!1387656 m!1562077))

(declare-fun m!1562079 () Bool)

(assert (=> b!1387656 m!1562079))

(declare-fun m!1562081 () Bool)

(assert (=> b!1387674 m!1562081))

(declare-fun m!1562083 () Bool)

(assert (=> b!1387674 m!1562083))

(declare-fun m!1562085 () Bool)

(assert (=> b!1387670 m!1562085))

(declare-fun m!1562087 () Bool)

(assert (=> b!1387670 m!1562087))

(declare-fun m!1562089 () Bool)

(assert (=> b!1387670 m!1562089))

(declare-fun m!1562091 () Bool)

(assert (=> b!1387670 m!1562091))

(declare-fun m!1562093 () Bool)

(assert (=> b!1387688 m!1562093))

(declare-fun m!1562095 () Bool)

(assert (=> b!1387655 m!1562095))

(assert (=> b!1387655 m!1562095))

(declare-fun m!1562097 () Bool)

(assert (=> b!1387655 m!1562097))

(declare-fun m!1562099 () Bool)

(assert (=> b!1387666 m!1562099))

(assert (=> b!1387666 m!1562099))

(declare-fun m!1562101 () Bool)

(assert (=> b!1387666 m!1562101))

(assert (=> b!1387666 m!1562099))

(assert (=> b!1387666 m!1562099))

(declare-fun m!1562103 () Bool)

(assert (=> b!1387666 m!1562103))

(declare-fun m!1562105 () Bool)

(assert (=> b!1387667 m!1562105))

(declare-fun m!1562107 () Bool)

(assert (=> b!1387682 m!1562107))

(declare-fun m!1562109 () Bool)

(assert (=> b!1387650 m!1562109))

(declare-fun m!1562111 () Bool)

(assert (=> b!1387650 m!1562111))

(declare-fun m!1562113 () Bool)

(assert (=> b!1387650 m!1562113))

(assert (=> b!1387650 m!1562113))

(declare-fun m!1562115 () Bool)

(assert (=> b!1387650 m!1562115))

(declare-fun m!1562117 () Bool)

(assert (=> b!1387665 m!1562117))

(declare-fun m!1562119 () Bool)

(assert (=> b!1387690 m!1562119))

(assert (=> b!1387690 m!1562119))

(declare-fun m!1562121 () Bool)

(assert (=> b!1387690 m!1562121))

(declare-fun m!1562123 () Bool)

(assert (=> b!1387681 m!1562123))

(assert (=> b!1387681 m!1562099))

(declare-fun m!1562125 () Bool)

(assert (=> b!1387681 m!1562125))

(assert (=> b!1387681 m!1562099))

(declare-fun m!1562127 () Bool)

(assert (=> b!1387681 m!1562127))

(assert (=> b!1387681 m!1562099))

(declare-fun m!1562129 () Bool)

(assert (=> b!1387649 m!1562129))

(assert (=> b!1387649 m!1562129))

(declare-fun m!1562131 () Bool)

(assert (=> b!1387649 m!1562131))

(declare-fun m!1562133 () Bool)

(assert (=> b!1387649 m!1562133))

(declare-fun m!1562135 () Bool)

(assert (=> b!1387664 m!1562135))

(declare-fun m!1562137 () Bool)

(assert (=> b!1387683 m!1562137))

(declare-fun m!1562139 () Bool)

(assert (=> b!1387663 m!1562139))

(assert (=> b!1387663 m!1562139))

(declare-fun m!1562141 () Bool)

(assert (=> b!1387663 m!1562141))

(declare-fun m!1562143 () Bool)

(assert (=> b!1387671 m!1562143))

(declare-fun m!1562145 () Bool)

(assert (=> b!1387671 m!1562145))

(declare-fun m!1562147 () Bool)

(assert (=> b!1387671 m!1562147))

(declare-fun m!1562149 () Bool)

(assert (=> b!1387671 m!1562149))

(declare-fun m!1562151 () Bool)

(assert (=> b!1387671 m!1562151))

(declare-fun m!1562153 () Bool)

(assert (=> b!1387671 m!1562153))

(declare-fun m!1562155 () Bool)

(assert (=> b!1387653 m!1562155))

(declare-fun m!1562157 () Bool)

(assert (=> b!1387692 m!1562157))

(declare-fun m!1562159 () Bool)

(assert (=> b!1387680 m!1562159))

(declare-fun m!1562161 () Bool)

(assert (=> b!1387680 m!1562161))

(declare-fun m!1562163 () Bool)

(assert (=> start!125994 m!1562163))

(declare-fun m!1562165 () Bool)

(assert (=> start!125994 m!1562165))

(declare-fun m!1562167 () Bool)

(assert (=> b!1387658 m!1562167))

(declare-fun m!1562169 () Bool)

(assert (=> b!1387658 m!1562169))

(declare-fun m!1562171 () Bool)

(assert (=> b!1387652 m!1562171))

(declare-fun m!1562173 () Bool)

(assert (=> b!1387693 m!1562173))

(declare-fun m!1562175 () Bool)

(assert (=> b!1387662 m!1562175))

(assert (=> b!1387662 m!1562175))

(declare-fun m!1562177 () Bool)

(assert (=> b!1387662 m!1562177))

(declare-fun m!1562179 () Bool)

(assert (=> b!1387685 m!1562179))

(declare-fun m!1562181 () Bool)

(assert (=> b!1387685 m!1562181))

(declare-fun m!1562183 () Bool)

(assert (=> b!1387669 m!1562183))

(declare-fun m!1562185 () Bool)

(assert (=> b!1387691 m!1562185))

(declare-fun m!1562187 () Bool)

(assert (=> b!1387691 m!1562187))

(declare-fun m!1562189 () Bool)

(assert (=> b!1387673 m!1562189))

(declare-fun m!1562191 () Bool)

(assert (=> b!1387686 m!1562191))

(declare-fun m!1562193 () Bool)

(assert (=> b!1387675 m!1562193))

(declare-fun m!1562195 () Bool)

(assert (=> b!1387657 m!1562195))

(declare-fun m!1562197 () Bool)

(assert (=> b!1387677 m!1562197))

(assert (=> b!1387677 m!1562197))

(declare-fun m!1562199 () Bool)

(assert (=> b!1387677 m!1562199))

(declare-fun m!1562201 () Bool)

(assert (=> b!1387689 m!1562201))

(assert (=> b!1387689 m!1562201))

(declare-fun m!1562203 () Bool)

(assert (=> b!1387689 m!1562203))

(declare-fun m!1562205 () Bool)

(assert (=> b!1387679 m!1562205))

(check-sat b_and!92967 (not b!1387662) (not b!1387693) (not b!1387678) (not b!1387680) (not b!1387648) (not b_next!34437) (not b_next!34445) (not b!1387653) (not b!1387670) (not b_next!34443) (not b!1387692) (not b!1387683) (not b!1387652) (not b!1387651) (not b_next!34439) b_and!92973 (not b!1387658) (not b!1387665) b_and!92971 (not b!1387667) b_and!92963 (not b!1387679) (not b!1387691) (not b!1387671) (not b!1387664) (not b!1387661) (not b!1387656) (not b!1387690) (not b!1387674) (not b!1387682) (not start!125994) b_and!92965 (not b!1387687) (not b!1387689) (not b!1387650) (not b!1387688) (not b!1387677) (not b!1387657) b_and!92969 (not b!1387655) (not b!1387663) (not b!1387675) (not b!1387666) (not b!1387649) (not b!1387668) (not b!1387669) (not b_next!34435) (not b!1387681) (not b!1387673) (not b!1387660) (not b!1387686) (not b_next!34441) (not b!1387685))
(check-sat b_and!92967 (not b_next!34443) b_and!92971 b_and!92963 b_and!92965 b_and!92969 (not b_next!34435) (not b_next!34437) (not b_next!34441) (not b_next!34445) (not b_next!34439) b_and!92973)
(get-model)

(declare-fun d!396668 () Bool)

(declare-fun lt!461683 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2066 (List!14151) (InoxSet Rule!4678))

(assert (=> d!396668 (= lt!461683 (select (content!2066 rules!2550) (rule!4200 t1!34)))))

(declare-fun e!886462 () Bool)

(assert (=> d!396668 (= lt!461683 e!886462)))

(declare-fun res!626235 () Bool)

(assert (=> d!396668 (=> (not res!626235) (not e!886462))))

(assert (=> d!396668 (= res!626235 ((_ is Cons!14085) rules!2550))))

(assert (=> d!396668 (= (contains!2699 rules!2550 (rule!4200 t1!34)) lt!461683)))

(declare-fun b!1387733 () Bool)

(declare-fun e!886463 () Bool)

(assert (=> b!1387733 (= e!886462 e!886463)))

(declare-fun res!626234 () Bool)

(assert (=> b!1387733 (=> res!626234 e!886463)))

(assert (=> b!1387733 (= res!626234 (= (h!19486 rules!2550) (rule!4200 t1!34)))))

(declare-fun b!1387734 () Bool)

(assert (=> b!1387734 (= e!886463 (contains!2699 (t!122318 rules!2550) (rule!4200 t1!34)))))

(assert (= (and d!396668 res!626235) b!1387733))

(assert (= (and b!1387733 (not res!626234)) b!1387734))

(declare-fun m!1562245 () Bool)

(assert (=> d!396668 m!1562245))

(declare-fun m!1562247 () Bool)

(assert (=> d!396668 m!1562247))

(declare-fun m!1562249 () Bool)

(assert (=> b!1387734 m!1562249))

(assert (=> b!1387682 d!396668))

(declare-fun d!396676 () Bool)

(assert (=> d!396676 (= (inv!18419 (tag!2701 (rule!4200 t2!34))) (= (mod (str.len (value!79143 (tag!2701 (rule!4200 t2!34)))) 2) 0))))

(assert (=> b!1387660 d!396676))

(declare-fun d!396678 () Bool)

(declare-fun res!626241 () Bool)

(declare-fun e!886472 () Bool)

(assert (=> d!396678 (=> (not res!626241) (not e!886472))))

(declare-fun semiInverseModEq!943 (Int Int) Bool)

(assert (=> d!396678 (= res!626241 (semiInverseModEq!943 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toValue!3726 (transformation!2439 (rule!4200 t2!34)))))))

(assert (=> d!396678 (= (inv!18422 (transformation!2439 (rule!4200 t2!34))) e!886472)))

(declare-fun b!1387746 () Bool)

(declare-fun equivClasses!902 (Int Int) Bool)

(assert (=> b!1387746 (= e!886472 (equivClasses!902 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toValue!3726 (transformation!2439 (rule!4200 t2!34)))))))

(assert (= (and d!396678 res!626241) b!1387746))

(declare-fun m!1562267 () Bool)

(assert (=> d!396678 m!1562267))

(declare-fun m!1562269 () Bool)

(assert (=> b!1387746 m!1562269))

(assert (=> b!1387660 d!396678))

(declare-fun bs!337173 () Bool)

(declare-fun d!396684 () Bool)

(assert (= bs!337173 (and d!396684 b!1387681)))

(declare-fun lambda!59878 () Int)

(assert (=> bs!337173 (not (= lambda!59878 lambda!59867))))

(assert (=> d!396684 true))

(declare-fun order!8603 () Int)

(declare-fun dynLambda!6449 (Int Int) Int)

(assert (=> d!396684 (< (dynLambda!6449 order!8603 lambda!59867) (dynLambda!6449 order!8603 lambda!59878))))

(declare-fun forall!3425 (List!14152 Int) Bool)

(assert (=> d!396684 (= (exists!523 (map!3119 rules!2550 lambda!59866) lambda!59867) (not (forall!3425 (map!3119 rules!2550 lambda!59866) lambda!59878)))))

(declare-fun bs!337174 () Bool)

(assert (= bs!337174 d!396684))

(assert (=> bs!337174 m!1562099))

(declare-fun m!1562277 () Bool)

(assert (=> bs!337174 m!1562277))

(assert (=> b!1387681 d!396684))

(declare-fun d!396688 () Bool)

(declare-fun lt!461694 () List!14152)

(declare-fun size!11567 (List!14152) Int)

(declare-fun size!11568 (List!14151) Int)

(assert (=> d!396688 (= (size!11567 lt!461694) (size!11568 rules!2550))))

(declare-fun e!886489 () List!14152)

(assert (=> d!396688 (= lt!461694 e!886489)))

(declare-fun c!228389 () Bool)

(assert (=> d!396688 (= c!228389 ((_ is Nil!14085) rules!2550))))

(assert (=> d!396688 (= (map!3119 rules!2550 lambda!59866) lt!461694)))

(declare-fun b!1387781 () Bool)

(assert (=> b!1387781 (= e!886489 Nil!14086)))

(declare-fun b!1387782 () Bool)

(declare-fun $colon$colon!216 (List!14152 Regex!3753) List!14152)

(declare-fun dynLambda!6450 (Int Rule!4678) Regex!3753)

(assert (=> b!1387782 (= e!886489 ($colon$colon!216 (map!3119 (t!122318 rules!2550) lambda!59866) (dynLambda!6450 lambda!59866 (h!19486 rules!2550))))))

(assert (= (and d!396688 c!228389) b!1387781))

(assert (= (and d!396688 (not c!228389)) b!1387782))

(declare-fun b_lambda!43041 () Bool)

(assert (=> (not b_lambda!43041) (not b!1387782)))

(declare-fun m!1562279 () Bool)

(assert (=> d!396688 m!1562279))

(declare-fun m!1562281 () Bool)

(assert (=> d!396688 m!1562281))

(declare-fun m!1562283 () Bool)

(assert (=> b!1387782 m!1562283))

(declare-fun m!1562285 () Bool)

(assert (=> b!1387782 m!1562285))

(assert (=> b!1387782 m!1562283))

(assert (=> b!1387782 m!1562285))

(declare-fun m!1562287 () Bool)

(assert (=> b!1387782 m!1562287))

(assert (=> b!1387681 d!396688))

(declare-fun bs!337175 () Bool)

(declare-fun d!396690 () Bool)

(assert (= bs!337175 (and d!396690 b!1387681)))

(declare-fun lambda!59883 () Int)

(assert (=> bs!337175 (not (= lambda!59883 lambda!59867))))

(declare-fun bs!337176 () Bool)

(assert (= bs!337176 (and d!396690 d!396684)))

(assert (=> bs!337176 (not (= lambda!59883 lambda!59878))))

(declare-fun lambda!59884 () Int)

(assert (=> bs!337175 (= lambda!59884 lambda!59867)))

(assert (=> bs!337176 (not (= lambda!59884 lambda!59878))))

(declare-fun bs!337177 () Bool)

(assert (= bs!337177 d!396690))

(assert (=> bs!337177 (not (= lambda!59884 lambda!59883))))

(assert (=> d!396690 true))

(assert (=> d!396690 (= (matchR!1744 lt!461655 lt!461656) (exists!523 lt!461649 lambda!59884))))

(declare-fun lt!461703 () Unit!20339)

(declare-fun choose!8519 (Regex!3753 List!14152 List!14148) Unit!20339)

(assert (=> d!396690 (= lt!461703 (choose!8519 lt!461655 lt!461649 lt!461656))))

(assert (=> d!396690 (forall!3425 lt!461649 lambda!59883)))

(assert (=> d!396690 (= (matchRGenUnionSpec!164 lt!461655 lt!461649 lt!461656) lt!461703)))

(assert (=> bs!337177 m!1562157))

(declare-fun m!1562317 () Bool)

(assert (=> bs!337177 m!1562317))

(declare-fun m!1562319 () Bool)

(assert (=> bs!337177 m!1562319))

(declare-fun m!1562321 () Bool)

(assert (=> bs!337177 m!1562321))

(assert (=> b!1387681 d!396690))

(declare-fun bs!337178 () Bool)

(declare-fun d!396700 () Bool)

(assert (= bs!337178 (and d!396700 b!1387681)))

(declare-fun lambda!59885 () Int)

(assert (=> bs!337178 (not (= lambda!59885 lambda!59867))))

(declare-fun bs!337179 () Bool)

(assert (= bs!337179 (and d!396700 d!396684)))

(assert (=> bs!337179 (= lambda!59885 lambda!59878)))

(declare-fun bs!337180 () Bool)

(assert (= bs!337180 (and d!396700 d!396690)))

(assert (=> bs!337180 (not (= lambda!59885 lambda!59883))))

(assert (=> bs!337180 (not (= lambda!59885 lambda!59884))))

(assert (=> d!396700 true))

(assert (=> d!396700 (< (dynLambda!6449 order!8603 lambda!59867) (dynLambda!6449 order!8603 lambda!59885))))

(assert (=> d!396700 (= (exists!523 lt!461649 lambda!59867) (not (forall!3425 lt!461649 lambda!59885)))))

(declare-fun bs!337181 () Bool)

(assert (= bs!337181 d!396700))

(declare-fun m!1562323 () Bool)

(assert (=> bs!337181 m!1562323))

(assert (=> b!1387681 d!396700))

(declare-fun b!1387822 () Bool)

(declare-fun res!626292 () Bool)

(declare-fun e!886512 () Bool)

(assert (=> b!1387822 (=> (not res!626292) (not e!886512))))

(declare-fun lt!461718 () Option!2700)

(declare-fun get!4373 (Option!2700) tuple2!13690)

(assert (=> b!1387822 (= res!626292 (= (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461718)))) (originalCharacters!3301 (_1!7731 (get!4373 lt!461718)))))))

(declare-fun b!1387823 () Bool)

(declare-fun e!886511 () Bool)

(assert (=> b!1387823 (= e!886511 e!886512)))

(declare-fun res!626290 () Bool)

(assert (=> b!1387823 (=> (not res!626290) (not e!886512))))

(declare-fun isDefined!2228 (Option!2700) Bool)

(assert (=> b!1387823 (= res!626290 (isDefined!2228 lt!461718))))

(declare-fun b!1387824 () Bool)

(declare-fun res!626289 () Bool)

(assert (=> b!1387824 (=> (not res!626289) (not e!886512))))

(declare-fun size!11569 (List!14148) Int)

(assert (=> b!1387824 (= res!626289 (< (size!11569 (_2!7731 (get!4373 lt!461718))) (size!11569 lt!461642)))))

(declare-fun d!396702 () Bool)

(assert (=> d!396702 e!886511))

(declare-fun res!626291 () Bool)

(assert (=> d!396702 (=> res!626291 e!886511)))

(declare-fun isEmpty!8522 (Option!2700) Bool)

(assert (=> d!396702 (= res!626291 (isEmpty!8522 lt!461718))))

(declare-fun e!886510 () Option!2700)

(assert (=> d!396702 (= lt!461718 e!886510)))

(declare-fun c!228395 () Bool)

(assert (=> d!396702 (= c!228395 (and ((_ is Cons!14085) rules!2550) ((_ is Nil!14085) (t!122318 rules!2550))))))

(declare-fun lt!461717 () Unit!20339)

(declare-fun lt!461714 () Unit!20339)

(assert (=> d!396702 (= lt!461717 lt!461714)))

(declare-fun isPrefix!1141 (List!14148 List!14148) Bool)

(assert (=> d!396702 (isPrefix!1141 lt!461642 lt!461642)))

(declare-fun lemmaIsPrefixRefl!800 (List!14148 List!14148) Unit!20339)

(assert (=> d!396702 (= lt!461714 (lemmaIsPrefixRefl!800 lt!461642 lt!461642))))

(declare-fun rulesValidInductive!783 (LexerInterface!2134 List!14151) Bool)

(assert (=> d!396702 (rulesValidInductive!783 thiss!19762 rules!2550)))

(assert (=> d!396702 (= (maxPrefix!1108 thiss!19762 rules!2550 lt!461642) lt!461718)))

(declare-fun bm!92822 () Bool)

(declare-fun call!92827 () Option!2700)

(declare-fun maxPrefixOneRule!626 (LexerInterface!2134 Rule!4678 List!14148) Option!2700)

(assert (=> bm!92822 (= call!92827 (maxPrefixOneRule!626 thiss!19762 (h!19486 rules!2550) lt!461642))))

(declare-fun b!1387825 () Bool)

(declare-fun lt!461716 () Option!2700)

(declare-fun lt!461715 () Option!2700)

(assert (=> b!1387825 (= e!886510 (ite (and ((_ is None!2699) lt!461716) ((_ is None!2699) lt!461715)) None!2699 (ite ((_ is None!2699) lt!461715) lt!461716 (ite ((_ is None!2699) lt!461716) lt!461715 (ite (>= (size!11563 (_1!7731 (v!21566 lt!461716))) (size!11563 (_1!7731 (v!21566 lt!461715)))) lt!461716 lt!461715)))))))

(assert (=> b!1387825 (= lt!461716 call!92827)))

(assert (=> b!1387825 (= lt!461715 (maxPrefix!1108 thiss!19762 (t!122318 rules!2550) lt!461642))))

(declare-fun b!1387826 () Bool)

(assert (=> b!1387826 (= e!886510 call!92827)))

(declare-fun b!1387827 () Bool)

(declare-fun res!626287 () Bool)

(assert (=> b!1387827 (=> (not res!626287) (not e!886512))))

(assert (=> b!1387827 (= res!626287 (= (++!3656 (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461718)))) (_2!7731 (get!4373 lt!461718))) lt!461642))))

(declare-fun b!1387828 () Bool)

(assert (=> b!1387828 (= e!886512 (contains!2699 rules!2550 (rule!4200 (_1!7731 (get!4373 lt!461718)))))))

(declare-fun b!1387829 () Bool)

(declare-fun res!626288 () Bool)

(assert (=> b!1387829 (=> (not res!626288) (not e!886512))))

(declare-fun apply!3533 (TokenValueInjection!4718 BalanceConc!9216) TokenValue!2529)

(declare-fun seqFromList!1644 (List!14148) BalanceConc!9216)

(assert (=> b!1387829 (= res!626288 (= (value!79144 (_1!7731 (get!4373 lt!461718))) (apply!3533 (transformation!2439 (rule!4200 (_1!7731 (get!4373 lt!461718)))) (seqFromList!1644 (originalCharacters!3301 (_1!7731 (get!4373 lt!461718)))))))))

(declare-fun b!1387830 () Bool)

(declare-fun res!626293 () Bool)

(assert (=> b!1387830 (=> (not res!626293) (not e!886512))))

(assert (=> b!1387830 (= res!626293 (matchR!1744 (regex!2439 (rule!4200 (_1!7731 (get!4373 lt!461718)))) (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461718))))))))

(assert (= (and d!396702 c!228395) b!1387826))

(assert (= (and d!396702 (not c!228395)) b!1387825))

(assert (= (or b!1387826 b!1387825) bm!92822))

(assert (= (and d!396702 (not res!626291)) b!1387823))

(assert (= (and b!1387823 res!626290) b!1387822))

(assert (= (and b!1387822 res!626292) b!1387824))

(assert (= (and b!1387824 res!626289) b!1387827))

(assert (= (and b!1387827 res!626287) b!1387829))

(assert (= (and b!1387829 res!626288) b!1387830))

(assert (= (and b!1387830 res!626293) b!1387828))

(declare-fun m!1562325 () Bool)

(assert (=> b!1387828 m!1562325))

(declare-fun m!1562327 () Bool)

(assert (=> b!1387828 m!1562327))

(declare-fun m!1562329 () Bool)

(assert (=> b!1387825 m!1562329))

(assert (=> b!1387827 m!1562325))

(declare-fun m!1562331 () Bool)

(assert (=> b!1387827 m!1562331))

(assert (=> b!1387827 m!1562331))

(declare-fun m!1562333 () Bool)

(assert (=> b!1387827 m!1562333))

(assert (=> b!1387827 m!1562333))

(declare-fun m!1562335 () Bool)

(assert (=> b!1387827 m!1562335))

(assert (=> b!1387830 m!1562325))

(assert (=> b!1387830 m!1562331))

(assert (=> b!1387830 m!1562331))

(assert (=> b!1387830 m!1562333))

(assert (=> b!1387830 m!1562333))

(declare-fun m!1562337 () Bool)

(assert (=> b!1387830 m!1562337))

(assert (=> b!1387822 m!1562325))

(assert (=> b!1387822 m!1562331))

(assert (=> b!1387822 m!1562331))

(assert (=> b!1387822 m!1562333))

(assert (=> b!1387824 m!1562325))

(declare-fun m!1562339 () Bool)

(assert (=> b!1387824 m!1562339))

(declare-fun m!1562341 () Bool)

(assert (=> b!1387824 m!1562341))

(declare-fun m!1562343 () Bool)

(assert (=> b!1387823 m!1562343))

(declare-fun m!1562345 () Bool)

(assert (=> bm!92822 m!1562345))

(assert (=> b!1387829 m!1562325))

(declare-fun m!1562347 () Bool)

(assert (=> b!1387829 m!1562347))

(assert (=> b!1387829 m!1562347))

(declare-fun m!1562349 () Bool)

(assert (=> b!1387829 m!1562349))

(declare-fun m!1562351 () Bool)

(assert (=> d!396702 m!1562351))

(declare-fun m!1562353 () Bool)

(assert (=> d!396702 m!1562353))

(declare-fun m!1562355 () Bool)

(assert (=> d!396702 m!1562355))

(declare-fun m!1562357 () Bool)

(assert (=> d!396702 m!1562357))

(assert (=> b!1387680 d!396702))

(declare-fun d!396704 () Bool)

(declare-fun list!5464 (Conc!4638) List!14148)

(assert (=> d!396704 (= (list!5462 lt!461644) (list!5464 (c!228372 lt!461644)))))

(declare-fun bs!337182 () Bool)

(assert (= bs!337182 d!396704))

(declare-fun m!1562359 () Bool)

(assert (=> bs!337182 m!1562359))

(assert (=> b!1387680 d!396704))

(declare-fun d!396706 () Bool)

(assert (=> d!396706 (= (inv!18419 (tag!2701 (h!19486 rules!2550))) (= (mod (str.len (value!79143 (tag!2701 (h!19486 rules!2550)))) 2) 0))))

(assert (=> b!1387658 d!396706))

(declare-fun d!396708 () Bool)

(declare-fun res!626300 () Bool)

(declare-fun e!886517 () Bool)

(assert (=> d!396708 (=> (not res!626300) (not e!886517))))

(assert (=> d!396708 (= res!626300 (semiInverseModEq!943 (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toValue!3726 (transformation!2439 (h!19486 rules!2550)))))))

(assert (=> d!396708 (= (inv!18422 (transformation!2439 (h!19486 rules!2550))) e!886517)))

(declare-fun b!1387837 () Bool)

(assert (=> b!1387837 (= e!886517 (equivClasses!902 (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toValue!3726 (transformation!2439 (h!19486 rules!2550)))))))

(assert (= (and d!396708 res!626300) b!1387837))

(declare-fun m!1562361 () Bool)

(assert (=> d!396708 m!1562361))

(declare-fun m!1562363 () Bool)

(assert (=> b!1387837 m!1562363))

(assert (=> b!1387658 d!396708))

(declare-fun b!1387886 () Bool)

(declare-fun e!886557 () Bool)

(declare-fun call!92843 () Bool)

(assert (=> b!1387886 (= e!886557 call!92843)))

(declare-fun b!1387887 () Bool)

(declare-fun e!886556 () Bool)

(declare-fun call!92845 () Bool)

(assert (=> b!1387887 (= e!886556 call!92845)))

(declare-fun b!1387888 () Bool)

(declare-fun e!886558 () Bool)

(assert (=> b!1387888 (= e!886558 e!886557)))

(declare-fun res!626330 () Bool)

(declare-fun nullable!1215 (Regex!3753) Bool)

(assert (=> b!1387888 (= res!626330 (not (nullable!1215 (reg!4082 (regex!2439 (rule!4200 t2!34))))))))

(assert (=> b!1387888 (=> (not res!626330) (not e!886557))))

(declare-fun b!1387889 () Bool)

(declare-fun e!886555 () Bool)

(declare-fun e!886559 () Bool)

(assert (=> b!1387889 (= e!886555 e!886559)))

(declare-fun res!626332 () Bool)

(assert (=> b!1387889 (=> (not res!626332) (not e!886559))))

(declare-fun call!92844 () Bool)

(assert (=> b!1387889 (= res!626332 call!92844)))

(declare-fun b!1387890 () Bool)

(declare-fun res!626329 () Bool)

(assert (=> b!1387890 (=> res!626329 e!886555)))

(assert (=> b!1387890 (= res!626329 (not ((_ is Concat!6283) (regex!2439 (rule!4200 t2!34)))))))

(declare-fun e!886561 () Bool)

(assert (=> b!1387890 (= e!886561 e!886555)))

(declare-fun c!228406 () Bool)

(declare-fun bm!92838 () Bool)

(declare-fun c!228407 () Bool)

(assert (=> bm!92838 (= call!92843 (validRegex!1635 (ite c!228406 (reg!4082 (regex!2439 (rule!4200 t2!34))) (ite c!228407 (regOne!8019 (regex!2439 (rule!4200 t2!34))) (regOne!8018 (regex!2439 (rule!4200 t2!34)))))))))

(declare-fun d!396710 () Bool)

(declare-fun res!626331 () Bool)

(declare-fun e!886560 () Bool)

(assert (=> d!396710 (=> res!626331 e!886560)))

(assert (=> d!396710 (= res!626331 ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t2!34))))))

(assert (=> d!396710 (= (validRegex!1635 (regex!2439 (rule!4200 t2!34))) e!886560)))

(declare-fun bm!92839 () Bool)

(assert (=> bm!92839 (= call!92845 (validRegex!1635 (ite c!228407 (regTwo!8019 (regex!2439 (rule!4200 t2!34))) (regTwo!8018 (regex!2439 (rule!4200 t2!34))))))))

(declare-fun b!1387891 () Bool)

(assert (=> b!1387891 (= e!886560 e!886558)))

(assert (=> b!1387891 (= c!228406 ((_ is Star!3753) (regex!2439 (rule!4200 t2!34))))))

(declare-fun b!1387892 () Bool)

(assert (=> b!1387892 (= e!886559 call!92845)))

(declare-fun b!1387893 () Bool)

(declare-fun res!626333 () Bool)

(assert (=> b!1387893 (=> (not res!626333) (not e!886556))))

(assert (=> b!1387893 (= res!626333 call!92844)))

(assert (=> b!1387893 (= e!886561 e!886556)))

(declare-fun bm!92840 () Bool)

(assert (=> bm!92840 (= call!92844 call!92843)))

(declare-fun b!1387894 () Bool)

(assert (=> b!1387894 (= e!886558 e!886561)))

(assert (=> b!1387894 (= c!228407 ((_ is Union!3753) (regex!2439 (rule!4200 t2!34))))))

(assert (= (and d!396710 (not res!626331)) b!1387891))

(assert (= (and b!1387891 c!228406) b!1387888))

(assert (= (and b!1387891 (not c!228406)) b!1387894))

(assert (= (and b!1387888 res!626330) b!1387886))

(assert (= (and b!1387894 c!228407) b!1387893))

(assert (= (and b!1387894 (not c!228407)) b!1387890))

(assert (= (and b!1387893 res!626333) b!1387887))

(assert (= (and b!1387890 (not res!626329)) b!1387889))

(assert (= (and b!1387889 res!626332) b!1387892))

(assert (= (or b!1387893 b!1387889) bm!92840))

(assert (= (or b!1387887 b!1387892) bm!92839))

(assert (= (or b!1387886 bm!92840) bm!92838))

(declare-fun m!1562391 () Bool)

(assert (=> b!1387888 m!1562391))

(declare-fun m!1562393 () Bool)

(assert (=> bm!92838 m!1562393))

(declare-fun m!1562395 () Bool)

(assert (=> bm!92839 m!1562395))

(assert (=> b!1387679 d!396710))

(declare-fun b!1387912 () Bool)

(declare-fun e!886576 () Bool)

(declare-fun e!886575 () Bool)

(assert (=> b!1387912 (= e!886576 e!886575)))

(declare-fun c!228412 () Bool)

(assert (=> b!1387912 (= c!228412 ((_ is IntegerValue!7588) (value!79144 t1!34)))))

(declare-fun b!1387913 () Bool)

(declare-fun inv!16 (TokenValue!2529) Bool)

(assert (=> b!1387913 (= e!886576 (inv!16 (value!79144 t1!34)))))

(declare-fun b!1387914 () Bool)

(declare-fun inv!17 (TokenValue!2529) Bool)

(assert (=> b!1387914 (= e!886575 (inv!17 (value!79144 t1!34)))))

(declare-fun d!396720 () Bool)

(declare-fun c!228413 () Bool)

(assert (=> d!396720 (= c!228413 ((_ is IntegerValue!7587) (value!79144 t1!34)))))

(assert (=> d!396720 (= (inv!21 (value!79144 t1!34)) e!886576)))

(declare-fun b!1387915 () Bool)

(declare-fun e!886577 () Bool)

(declare-fun inv!15 (TokenValue!2529) Bool)

(assert (=> b!1387915 (= e!886577 (inv!15 (value!79144 t1!34)))))

(declare-fun b!1387916 () Bool)

(declare-fun res!626343 () Bool)

(assert (=> b!1387916 (=> res!626343 e!886577)))

(assert (=> b!1387916 (= res!626343 (not ((_ is IntegerValue!7589) (value!79144 t1!34))))))

(assert (=> b!1387916 (= e!886575 e!886577)))

(assert (= (and d!396720 c!228413) b!1387913))

(assert (= (and d!396720 (not c!228413)) b!1387912))

(assert (= (and b!1387912 c!228412) b!1387914))

(assert (= (and b!1387912 (not c!228412)) b!1387916))

(assert (= (and b!1387916 (not res!626343)) b!1387915))

(declare-fun m!1562401 () Bool)

(assert (=> b!1387913 m!1562401))

(declare-fun m!1562403 () Bool)

(assert (=> b!1387914 m!1562403))

(declare-fun m!1562405 () Bool)

(assert (=> b!1387915 m!1562405))

(assert (=> b!1387657 d!396720))

(declare-fun d!396724 () Bool)

(declare-fun choose!8521 (Int) Bool)

(assert (=> d!396724 (= (Exists!903 lambda!59865) (choose!8521 lambda!59865))))

(declare-fun bs!337184 () Bool)

(assert (= bs!337184 d!396724))

(declare-fun m!1562407 () Bool)

(assert (=> bs!337184 m!1562407))

(assert (=> b!1387678 d!396724))

(declare-fun bs!337185 () Bool)

(declare-fun d!396726 () Bool)

(assert (= bs!337185 (and d!396726 b!1387678)))

(declare-fun lambda!59888 () Int)

(assert (=> bs!337185 (= lambda!59888 lambda!59865)))

(assert (=> d!396726 true))

(assert (=> d!396726 true))

(assert (=> d!396726 (Exists!903 lambda!59888)))

(declare-fun lt!461733 () Unit!20339)

(declare-fun choose!8522 (Regex!3753 List!14148) Unit!20339)

(assert (=> d!396726 (= lt!461733 (choose!8522 lt!461655 lt!461666))))

(assert (=> d!396726 (validRegex!1635 lt!461655)))

(assert (=> d!396726 (= (lemmaPrefixMatchThenExistsStringThatMatches!221 lt!461655 lt!461666) lt!461733)))

(declare-fun bs!337186 () Bool)

(assert (= bs!337186 d!396726))

(declare-fun m!1562415 () Bool)

(assert (=> bs!337186 m!1562415))

(declare-fun m!1562417 () Bool)

(assert (=> bs!337186 m!1562417))

(declare-fun m!1562419 () Bool)

(assert (=> bs!337186 m!1562419))

(assert (=> b!1387678 d!396726))

(declare-fun b!1388008 () Bool)

(declare-fun e!886637 () Bool)

(declare-fun lt!461760 () tuple2!13686)

(declare-fun isEmpty!8524 (BalanceConc!9218) Bool)

(assert (=> b!1388008 (= e!886637 (not (isEmpty!8524 (_1!7729 lt!461760))))))

(declare-fun b!1388009 () Bool)

(declare-fun res!626376 () Bool)

(declare-fun e!886636 () Bool)

(assert (=> b!1388009 (=> (not res!626376) (not e!886636))))

(assert (=> b!1388009 (= res!626376 (= (list!5461 (_1!7729 lt!461760)) (_1!7730 (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461657)))))))

(declare-fun b!1388010 () Bool)

(declare-fun e!886635 () Bool)

(assert (=> b!1388010 (= e!886635 e!886637)))

(declare-fun res!626375 () Bool)

(assert (=> b!1388010 (= res!626375 (< (size!11564 (_2!7729 lt!461760)) (size!11564 lt!461657)))))

(assert (=> b!1388010 (=> (not res!626375) (not e!886637))))

(declare-fun b!1388011 () Bool)

(assert (=> b!1388011 (= e!886635 (= (_2!7729 lt!461760) lt!461657))))

(declare-fun b!1388012 () Bool)

(assert (=> b!1388012 (= e!886636 (= (list!5462 (_2!7729 lt!461760)) (_2!7730 (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461657)))))))

(declare-fun d!396730 () Bool)

(assert (=> d!396730 e!886636))

(declare-fun res!626374 () Bool)

(assert (=> d!396730 (=> (not res!626374) (not e!886636))))

(assert (=> d!396730 (= res!626374 e!886635)))

(declare-fun c!228443 () Bool)

(declare-fun size!11573 (BalanceConc!9218) Int)

(assert (=> d!396730 (= c!228443 (> (size!11573 (_1!7729 lt!461760)) 0))))

(declare-fun lexTailRecV2!426 (LexerInterface!2134 List!14151 BalanceConc!9216 BalanceConc!9216 BalanceConc!9216 BalanceConc!9218) tuple2!13686)

(assert (=> d!396730 (= lt!461760 (lexTailRecV2!426 thiss!19762 rules!2550 lt!461657 (BalanceConc!9217 Empty!4638) lt!461657 (BalanceConc!9219 Empty!4639)))))

(assert (=> d!396730 (= (lex!959 thiss!19762 rules!2550 lt!461657) lt!461760)))

(assert (= (and d!396730 c!228443) b!1388010))

(assert (= (and d!396730 (not c!228443)) b!1388011))

(assert (= (and b!1388010 res!626375) b!1388008))

(assert (= (and d!396730 res!626374) b!1388009))

(assert (= (and b!1388009 res!626376) b!1388012))

(declare-fun m!1562511 () Bool)

(assert (=> b!1388009 m!1562511))

(assert (=> b!1388009 m!1562139))

(assert (=> b!1388009 m!1562139))

(assert (=> b!1388009 m!1562141))

(declare-fun m!1562513 () Bool)

(assert (=> d!396730 m!1562513))

(declare-fun m!1562515 () Bool)

(assert (=> d!396730 m!1562515))

(declare-fun m!1562517 () Bool)

(assert (=> b!1388012 m!1562517))

(assert (=> b!1388012 m!1562139))

(assert (=> b!1388012 m!1562139))

(assert (=> b!1388012 m!1562141))

(declare-fun m!1562519 () Bool)

(assert (=> b!1388010 m!1562519))

(declare-fun m!1562521 () Bool)

(assert (=> b!1388010 m!1562521))

(declare-fun m!1562523 () Bool)

(assert (=> b!1388008 m!1562523))

(assert (=> b!1387656 d!396730))

(declare-fun d!396764 () Bool)

(declare-fun list!5465 (Conc!4639) List!14150)

(assert (=> d!396764 (= (list!5461 (_1!7729 lt!461667)) (list!5465 (c!228374 (_1!7729 lt!461667))))))

(declare-fun bs!337198 () Bool)

(assert (= bs!337198 d!396764))

(declare-fun m!1562525 () Bool)

(assert (=> bs!337198 m!1562525))

(assert (=> b!1387656 d!396764))

(declare-fun d!396766 () Bool)

(declare-fun lt!461763 () BalanceConc!9216)

(declare-fun printList!621 (LexerInterface!2134 List!14150) List!14148)

(assert (=> d!396766 (= (list!5462 lt!461763) (printList!621 thiss!19762 (list!5461 (singletonSeq!1084 t1!34))))))

(declare-fun printTailRec!603 (LexerInterface!2134 BalanceConc!9218 Int BalanceConc!9216) BalanceConc!9216)

(assert (=> d!396766 (= lt!461763 (printTailRec!603 thiss!19762 (singletonSeq!1084 t1!34) 0 (BalanceConc!9217 Empty!4638)))))

(assert (=> d!396766 (= (print!898 thiss!19762 (singletonSeq!1084 t1!34)) lt!461763)))

(declare-fun bs!337199 () Bool)

(assert (= bs!337199 d!396766))

(declare-fun m!1562527 () Bool)

(assert (=> bs!337199 m!1562527))

(assert (=> bs!337199 m!1562073))

(declare-fun m!1562529 () Bool)

(assert (=> bs!337199 m!1562529))

(assert (=> bs!337199 m!1562529))

(declare-fun m!1562531 () Bool)

(assert (=> bs!337199 m!1562531))

(assert (=> bs!337199 m!1562073))

(declare-fun m!1562533 () Bool)

(assert (=> bs!337199 m!1562533))

(assert (=> b!1387656 d!396766))

(declare-fun d!396768 () Bool)

(declare-fun e!886648 () Bool)

(assert (=> d!396768 e!886648))

(declare-fun res!626381 () Bool)

(assert (=> d!396768 (=> (not res!626381) (not e!886648))))

(declare-fun lt!461769 () Rule!4678)

(declare-fun dynLambda!6453 (Int Rule!4678) Bool)

(assert (=> d!396768 (= res!626381 (dynLambda!6453 lambda!59868 lt!461769))))

(declare-fun e!886647 () Rule!4678)

(assert (=> d!396768 (= lt!461769 e!886647)))

(declare-fun c!228449 () Bool)

(declare-fun e!886649 () Bool)

(assert (=> d!396768 (= c!228449 e!886649)))

(declare-fun res!626382 () Bool)

(assert (=> d!396768 (=> (not res!626382) (not e!886649))))

(assert (=> d!396768 (= res!626382 ((_ is Cons!14085) rules!2550))))

(assert (=> d!396768 (exists!522 rules!2550 lambda!59868)))

(assert (=> d!396768 (= (getWitness!410 rules!2550 lambda!59868) lt!461769)))

(declare-fun b!1388025 () Bool)

(assert (=> b!1388025 (= e!886649 (dynLambda!6453 lambda!59868 (h!19486 rules!2550)))))

(declare-fun b!1388026 () Bool)

(declare-fun e!886646 () Rule!4678)

(assert (=> b!1388026 (= e!886647 e!886646)))

(declare-fun c!228448 () Bool)

(assert (=> b!1388026 (= c!228448 ((_ is Cons!14085) rules!2550))))

(declare-fun b!1388027 () Bool)

(assert (=> b!1388027 (= e!886648 (contains!2699 rules!2550 lt!461769))))

(declare-fun b!1388028 () Bool)

(declare-fun lt!461768 () Unit!20339)

(declare-fun Unit!20343 () Unit!20339)

(assert (=> b!1388028 (= lt!461768 Unit!20343)))

(assert (=> b!1388028 false))

(declare-fun head!2532 (List!14151) Rule!4678)

(assert (=> b!1388028 (= e!886646 (head!2532 rules!2550))))

(declare-fun b!1388029 () Bool)

(assert (=> b!1388029 (= e!886647 (h!19486 rules!2550))))

(declare-fun b!1388030 () Bool)

(assert (=> b!1388030 (= e!886646 (getWitness!410 (t!122318 rules!2550) lambda!59868))))

(assert (= (and d!396768 res!626382) b!1388025))

(assert (= (and d!396768 c!228449) b!1388029))

(assert (= (and d!396768 (not c!228449)) b!1388026))

(assert (= (and b!1388026 c!228448) b!1388030))

(assert (= (and b!1388026 (not c!228448)) b!1388028))

(assert (= (and d!396768 res!626381) b!1388027))

(declare-fun b_lambda!43053 () Bool)

(assert (=> (not b_lambda!43053) (not d!396768)))

(declare-fun b_lambda!43055 () Bool)

(assert (=> (not b_lambda!43055) (not b!1388025)))

(declare-fun m!1562535 () Bool)

(assert (=> b!1388027 m!1562535))

(declare-fun m!1562537 () Bool)

(assert (=> b!1388025 m!1562537))

(declare-fun m!1562539 () Bool)

(assert (=> b!1388028 m!1562539))

(declare-fun m!1562541 () Bool)

(assert (=> d!396768 m!1562541))

(assert (=> d!396768 m!1562197))

(declare-fun m!1562543 () Bool)

(assert (=> b!1388030 m!1562543))

(assert (=> b!1387656 d!396768))

(declare-fun d!396770 () Bool)

(declare-fun e!886652 () Bool)

(assert (=> d!396770 e!886652))

(declare-fun res!626385 () Bool)

(assert (=> d!396770 (=> (not res!626385) (not e!886652))))

(declare-fun lt!461772 () BalanceConc!9218)

(assert (=> d!396770 (= res!626385 (= (list!5461 lt!461772) (Cons!14084 t1!34 Nil!14084)))))

(declare-fun singleton!475 (Token!4540) BalanceConc!9218)

(assert (=> d!396770 (= lt!461772 (singleton!475 t1!34))))

(assert (=> d!396770 (= (singletonSeq!1084 t1!34) lt!461772)))

(declare-fun b!1388033 () Bool)

(declare-fun isBalanced!1369 (Conc!4639) Bool)

(assert (=> b!1388033 (= e!886652 (isBalanced!1369 (c!228374 lt!461772)))))

(assert (= (and d!396770 res!626385) b!1388033))

(declare-fun m!1562545 () Bool)

(assert (=> d!396770 m!1562545))

(declare-fun m!1562547 () Bool)

(assert (=> d!396770 m!1562547))

(declare-fun m!1562549 () Bool)

(assert (=> b!1388033 m!1562549))

(assert (=> b!1387656 d!396770))

(declare-fun bs!337200 () Bool)

(declare-fun d!396772 () Bool)

(assert (= bs!337200 (and d!396772 b!1387677)))

(declare-fun lambda!59901 () Int)

(assert (=> bs!337200 (not (= lambda!59901 lambda!59868))))

(declare-fun bs!337201 () Bool)

(assert (= bs!337201 (and d!396772 b!1387670)))

(assert (=> bs!337201 (not (= lambda!59901 lambda!59869))))

(assert (=> d!396772 true))

(declare-fun order!8607 () Int)

(declare-fun dynLambda!6454 (Int Int) Int)

(assert (=> d!396772 (< (dynLambda!6454 order!8607 lambda!59868) (dynLambda!6454 order!8607 lambda!59901))))

(declare-fun forall!3427 (List!14151 Int) Bool)

(assert (=> d!396772 (= (exists!522 rules!2550 lambda!59868) (not (forall!3427 rules!2550 lambda!59901)))))

(declare-fun bs!337202 () Bool)

(assert (= bs!337202 d!396772))

(declare-fun m!1562551 () Bool)

(assert (=> bs!337202 m!1562551))

(assert (=> b!1387677 d!396772))

(declare-fun bs!337203 () Bool)

(declare-fun d!396774 () Bool)

(assert (= bs!337203 (and d!396774 b!1387677)))

(declare-fun lambda!59904 () Int)

(assert (=> bs!337203 (not (= lambda!59904 lambda!59868))))

(declare-fun bs!337204 () Bool)

(assert (= bs!337204 (and d!396774 b!1387670)))

(assert (=> bs!337204 (not (= lambda!59904 lambda!59869))))

(declare-fun bs!337205 () Bool)

(assert (= bs!337205 (and d!396774 d!396772)))

(assert (=> bs!337205 (not (= lambda!59904 lambda!59901))))

(assert (=> d!396774 true))

(assert (=> d!396774 true))

(declare-fun order!8609 () Int)

(declare-fun dynLambda!6455 (Int Int) Int)

(assert (=> d!396774 (< (dynLambda!6455 order!8609 lambda!59866) (dynLambda!6454 order!8607 lambda!59904))))

(assert (=> d!396774 (exists!522 rules!2550 lambda!59904)))

(declare-fun lt!461775 () Unit!20339)

(declare-fun choose!8523 (List!14151 Int Regex!3753) Unit!20339)

(assert (=> d!396774 (= lt!461775 (choose!8523 rules!2550 lambda!59866 lt!461650))))

(assert (=> d!396774 (contains!2698 (map!3119 rules!2550 lambda!59866) lt!461650)))

(assert (=> d!396774 (= (lemmaMapContains!150 rules!2550 lambda!59866 lt!461650) lt!461775)))

(declare-fun bs!337206 () Bool)

(assert (= bs!337206 d!396774))

(declare-fun m!1562553 () Bool)

(assert (=> bs!337206 m!1562553))

(declare-fun m!1562555 () Bool)

(assert (=> bs!337206 m!1562555))

(assert (=> bs!337206 m!1562099))

(assert (=> bs!337206 m!1562099))

(assert (=> bs!337206 m!1562101))

(assert (=> b!1387677 d!396774))

(declare-fun d!396776 () Bool)

(declare-fun lt!461778 () Bool)

(declare-fun content!2067 (List!14152) (InoxSet Regex!3753))

(assert (=> d!396776 (= lt!461778 (select (content!2067 (map!3119 rules!2550 lambda!59866)) lt!461650))))

(declare-fun e!886657 () Bool)

(assert (=> d!396776 (= lt!461778 e!886657)))

(declare-fun res!626391 () Bool)

(assert (=> d!396776 (=> (not res!626391) (not e!886657))))

(assert (=> d!396776 (= res!626391 ((_ is Cons!14086) (map!3119 rules!2550 lambda!59866)))))

(assert (=> d!396776 (= (contains!2698 (map!3119 rules!2550 lambda!59866) lt!461650) lt!461778)))

(declare-fun b!1388044 () Bool)

(declare-fun e!886658 () Bool)

(assert (=> b!1388044 (= e!886657 e!886658)))

(declare-fun res!626390 () Bool)

(assert (=> b!1388044 (=> res!626390 e!886658)))

(assert (=> b!1388044 (= res!626390 (= (h!19487 (map!3119 rules!2550 lambda!59866)) lt!461650))))

(declare-fun b!1388045 () Bool)

(assert (=> b!1388045 (= e!886658 (contains!2698 (t!122319 (map!3119 rules!2550 lambda!59866)) lt!461650))))

(assert (= (and d!396776 res!626391) b!1388044))

(assert (= (and b!1388044 (not res!626390)) b!1388045))

(assert (=> d!396776 m!1562099))

(declare-fun m!1562557 () Bool)

(assert (=> d!396776 m!1562557))

(declare-fun m!1562559 () Bool)

(assert (=> d!396776 m!1562559))

(declare-fun m!1562561 () Bool)

(assert (=> b!1388045 m!1562561))

(assert (=> b!1387666 d!396776))

(assert (=> b!1387666 d!396688))

(declare-fun d!396778 () Bool)

(declare-fun e!886667 () Bool)

(assert (=> d!396778 e!886667))

(declare-fun res!626396 () Bool)

(assert (=> d!396778 (=> (not res!626396) (not e!886667))))

(declare-fun lt!461786 () Regex!3753)

(declare-fun dynLambda!6456 (Int Regex!3753) Bool)

(assert (=> d!396778 (= res!626396 (dynLambda!6456 lambda!59867 lt!461786))))

(declare-fun e!886670 () Regex!3753)

(assert (=> d!396778 (= lt!461786 e!886670)))

(declare-fun c!228455 () Bool)

(declare-fun e!886669 () Bool)

(assert (=> d!396778 (= c!228455 e!886669)))

(declare-fun res!626397 () Bool)

(assert (=> d!396778 (=> (not res!626397) (not e!886669))))

(assert (=> d!396778 (= res!626397 ((_ is Cons!14086) (map!3119 rules!2550 lambda!59866)))))

(assert (=> d!396778 (exists!523 (map!3119 rules!2550 lambda!59866) lambda!59867)))

(assert (=> d!396778 (= (getWitness!411 (map!3119 rules!2550 lambda!59866) lambda!59867) lt!461786)))

(declare-fun b!1388058 () Bool)

(assert (=> b!1388058 (= e!886669 (dynLambda!6456 lambda!59867 (h!19487 (map!3119 rules!2550 lambda!59866))))))

(declare-fun b!1388059 () Bool)

(declare-fun lt!461785 () Unit!20339)

(declare-fun Unit!20344 () Unit!20339)

(assert (=> b!1388059 (= lt!461785 Unit!20344)))

(assert (=> b!1388059 false))

(declare-fun e!886668 () Regex!3753)

(declare-fun head!2533 (List!14152) Regex!3753)

(assert (=> b!1388059 (= e!886668 (head!2533 (map!3119 rules!2550 lambda!59866)))))

(declare-fun b!1388060 () Bool)

(assert (=> b!1388060 (= e!886668 (getWitness!411 (t!122319 (map!3119 rules!2550 lambda!59866)) lambda!59867))))

(declare-fun b!1388061 () Bool)

(assert (=> b!1388061 (= e!886670 e!886668)))

(declare-fun c!228454 () Bool)

(assert (=> b!1388061 (= c!228454 ((_ is Cons!14086) (map!3119 rules!2550 lambda!59866)))))

(declare-fun b!1388062 () Bool)

(assert (=> b!1388062 (= e!886667 (contains!2698 (map!3119 rules!2550 lambda!59866) lt!461786))))

(declare-fun b!1388063 () Bool)

(assert (=> b!1388063 (= e!886670 (h!19487 (map!3119 rules!2550 lambda!59866)))))

(assert (= (and d!396778 res!626397) b!1388058))

(assert (= (and d!396778 c!228455) b!1388063))

(assert (= (and d!396778 (not c!228455)) b!1388061))

(assert (= (and b!1388061 c!228454) b!1388060))

(assert (= (and b!1388061 (not c!228454)) b!1388059))

(assert (= (and d!396778 res!626396) b!1388062))

(declare-fun b_lambda!43057 () Bool)

(assert (=> (not b_lambda!43057) (not d!396778)))

(declare-fun b_lambda!43059 () Bool)

(assert (=> (not b_lambda!43059) (not b!1388058)))

(declare-fun m!1562563 () Bool)

(assert (=> d!396778 m!1562563))

(assert (=> d!396778 m!1562099))

(assert (=> d!396778 m!1562127))

(declare-fun m!1562565 () Bool)

(assert (=> b!1388060 m!1562565))

(assert (=> b!1388062 m!1562099))

(declare-fun m!1562567 () Bool)

(assert (=> b!1388062 m!1562567))

(declare-fun m!1562569 () Bool)

(assert (=> b!1388058 m!1562569))

(assert (=> b!1388059 m!1562099))

(declare-fun m!1562571 () Bool)

(assert (=> b!1388059 m!1562571))

(assert (=> b!1387666 d!396778))

(declare-fun d!396780 () Bool)

(declare-fun prefixMatchZipperSequence!283 (Regex!3753 BalanceConc!9216) Bool)

(declare-fun ++!3657 (BalanceConc!9216 BalanceConc!9216) BalanceConc!9216)

(declare-fun singletonSeq!1085 (C!7796) BalanceConc!9216)

(assert (=> d!396780 (= (separableTokensPredicate!417 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!283 (rulesRegex!322 thiss!19762 rules!2550) (++!3657 (charsOf!1411 t1!34) (singletonSeq!1085 (apply!3529 (charsOf!1411 t2!34) 0))))))))

(declare-fun bs!337208 () Bool)

(assert (= bs!337208 d!396780))

(declare-fun m!1562593 () Bool)

(assert (=> bs!337208 m!1562593))

(declare-fun m!1562595 () Bool)

(assert (=> bs!337208 m!1562595))

(assert (=> bs!337208 m!1562083))

(assert (=> bs!337208 m!1562593))

(assert (=> bs!337208 m!1562143))

(assert (=> bs!337208 m!1562083))

(assert (=> bs!337208 m!1562151))

(assert (=> bs!337208 m!1562151))

(declare-fun m!1562597 () Bool)

(assert (=> bs!337208 m!1562597))

(declare-fun m!1562599 () Bool)

(assert (=> bs!337208 m!1562599))

(assert (=> bs!337208 m!1562143))

(assert (=> bs!337208 m!1562595))

(assert (=> bs!337208 m!1562597))

(assert (=> b!1387665 d!396780))

(declare-fun d!396786 () Bool)

(declare-fun lt!461795 () Bool)

(assert (=> d!396786 (= lt!461795 (select (content!2066 rules!2550) (rule!4200 t2!34)))))

(declare-fun e!886686 () Bool)

(assert (=> d!396786 (= lt!461795 e!886686)))

(declare-fun res!626410 () Bool)

(assert (=> d!396786 (=> (not res!626410) (not e!886686))))

(assert (=> d!396786 (= res!626410 ((_ is Cons!14085) rules!2550))))

(assert (=> d!396786 (= (contains!2699 rules!2550 (rule!4200 t2!34)) lt!461795)))

(declare-fun b!1388089 () Bool)

(declare-fun e!886687 () Bool)

(assert (=> b!1388089 (= e!886686 e!886687)))

(declare-fun res!626409 () Bool)

(assert (=> b!1388089 (=> res!626409 e!886687)))

(assert (=> b!1388089 (= res!626409 (= (h!19486 rules!2550) (rule!4200 t2!34)))))

(declare-fun b!1388090 () Bool)

(assert (=> b!1388090 (= e!886687 (contains!2699 (t!122318 rules!2550) (rule!4200 t2!34)))))

(assert (= (and d!396786 res!626410) b!1388089))

(assert (= (and b!1388089 (not res!626409)) b!1388090))

(assert (=> d!396786 m!1562245))

(declare-fun m!1562601 () Bool)

(assert (=> d!396786 m!1562601))

(declare-fun m!1562603 () Bool)

(assert (=> b!1388090 m!1562603))

(assert (=> b!1387686 d!396786))

(declare-fun d!396788 () Bool)

(declare-fun lt!461828 () Bool)

(declare-fun e!886720 () Bool)

(assert (=> d!396788 (= lt!461828 e!886720)))

(declare-fun res!626456 () Bool)

(assert (=> d!396788 (=> (not res!626456) (not e!886720))))

(assert (=> d!396788 (= res!626456 (= (list!5461 (_1!7729 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t1!34))))) (list!5461 (singletonSeq!1084 t1!34))))))

(declare-fun e!886719 () Bool)

(assert (=> d!396788 (= lt!461828 e!886719)))

(declare-fun res!626454 () Bool)

(assert (=> d!396788 (=> (not res!626454) (not e!886719))))

(declare-fun lt!461827 () tuple2!13686)

(assert (=> d!396788 (= res!626454 (= (size!11573 (_1!7729 lt!461827)) 1))))

(assert (=> d!396788 (= lt!461827 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t1!34))))))

(assert (=> d!396788 (not (isEmpty!8518 rules!2550))))

(assert (=> d!396788 (= (rulesProduceIndividualToken!1103 thiss!19762 rules!2550 t1!34) lt!461828)))

(declare-fun b!1388150 () Bool)

(declare-fun res!626455 () Bool)

(assert (=> b!1388150 (=> (not res!626455) (not e!886719))))

(declare-fun apply!3534 (BalanceConc!9218 Int) Token!4540)

(assert (=> b!1388150 (= res!626455 (= (apply!3534 (_1!7729 lt!461827) 0) t1!34))))

(declare-fun b!1388151 () Bool)

(assert (=> b!1388151 (= e!886719 (isEmpty!8519 (_2!7729 lt!461827)))))

(declare-fun b!1388152 () Bool)

(assert (=> b!1388152 (= e!886720 (isEmpty!8519 (_2!7729 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t1!34))))))))

(assert (= (and d!396788 res!626454) b!1388150))

(assert (= (and b!1388150 res!626455) b!1388151))

(assert (= (and d!396788 res!626456) b!1388152))

(declare-fun m!1562687 () Bool)

(assert (=> d!396788 m!1562687))

(assert (=> d!396788 m!1562073))

(assert (=> d!396788 m!1562075))

(assert (=> d!396788 m!1562067))

(assert (=> d!396788 m!1562073))

(assert (=> d!396788 m!1562075))

(declare-fun m!1562689 () Bool)

(assert (=> d!396788 m!1562689))

(assert (=> d!396788 m!1562073))

(assert (=> d!396788 m!1562529))

(declare-fun m!1562691 () Bool)

(assert (=> d!396788 m!1562691))

(declare-fun m!1562693 () Bool)

(assert (=> b!1388150 m!1562693))

(declare-fun m!1562695 () Bool)

(assert (=> b!1388151 m!1562695))

(assert (=> b!1388152 m!1562073))

(assert (=> b!1388152 m!1562073))

(assert (=> b!1388152 m!1562075))

(assert (=> b!1388152 m!1562075))

(assert (=> b!1388152 m!1562689))

(declare-fun m!1562697 () Bool)

(assert (=> b!1388152 m!1562697))

(assert (=> b!1387664 d!396788))

(declare-fun d!396814 () Bool)

(declare-fun lt!461837 () Bool)

(declare-fun content!2068 (List!14148) (InoxSet C!7796))

(assert (=> d!396814 (= lt!461837 (select (content!2068 lt!461666) lt!461660))))

(declare-fun e!886738 () Bool)

(assert (=> d!396814 (= lt!461837 e!886738)))

(declare-fun res!626467 () Bool)

(assert (=> d!396814 (=> (not res!626467) (not e!886738))))

(assert (=> d!396814 (= res!626467 ((_ is Cons!14082) lt!461666))))

(assert (=> d!396814 (= (contains!2697 lt!461666 lt!461660) lt!461837)))

(declare-fun b!1388175 () Bool)

(declare-fun e!886737 () Bool)

(assert (=> b!1388175 (= e!886738 e!886737)))

(declare-fun res!626468 () Bool)

(assert (=> b!1388175 (=> res!626468 e!886737)))

(assert (=> b!1388175 (= res!626468 (= (h!19483 lt!461666) lt!461660))))

(declare-fun b!1388176 () Bool)

(assert (=> b!1388176 (= e!886737 (contains!2697 (t!122315 lt!461666) lt!461660))))

(assert (= (and d!396814 res!626467) b!1388175))

(assert (= (and b!1388175 (not res!626468)) b!1388176))

(declare-fun m!1562709 () Bool)

(assert (=> d!396814 m!1562709))

(declare-fun m!1562711 () Bool)

(assert (=> d!396814 m!1562711))

(declare-fun m!1562713 () Bool)

(assert (=> b!1388176 m!1562713))

(assert (=> b!1387685 d!396814))

(declare-fun d!396818 () Bool)

(declare-fun lt!461844 () C!7796)

(declare-fun apply!3535 (List!14148 Int) C!7796)

(assert (=> d!396818 (= lt!461844 (apply!3535 (list!5462 lt!461652) 0))))

(declare-fun apply!3536 (Conc!4638 Int) C!7796)

(assert (=> d!396818 (= lt!461844 (apply!3536 (c!228372 lt!461652) 0))))

(declare-fun e!886753 () Bool)

(assert (=> d!396818 e!886753))

(declare-fun res!626479 () Bool)

(assert (=> d!396818 (=> (not res!626479) (not e!886753))))

(assert (=> d!396818 (= res!626479 (<= 0 0))))

(assert (=> d!396818 (= (apply!3529 lt!461652 0) lt!461844)))

(declare-fun b!1388195 () Bool)

(assert (=> b!1388195 (= e!886753 (< 0 (size!11564 lt!461652)))))

(assert (= (and d!396818 res!626479) b!1388195))

(assert (=> d!396818 m!1562147))

(assert (=> d!396818 m!1562147))

(declare-fun m!1562755 () Bool)

(assert (=> d!396818 m!1562755))

(declare-fun m!1562757 () Bool)

(assert (=> d!396818 m!1562757))

(declare-fun m!1562759 () Bool)

(assert (=> b!1388195 m!1562759))

(assert (=> b!1387685 d!396818))

(declare-fun b!1388268 () Bool)

(declare-fun e!886796 () tuple2!13688)

(assert (=> b!1388268 (= e!886796 (tuple2!13689 Nil!14084 (list!5462 lt!461657)))))

(declare-fun b!1388269 () Bool)

(declare-fun e!886794 () Bool)

(declare-fun lt!461873 () tuple2!13688)

(assert (=> b!1388269 (= e!886794 (= (_2!7730 lt!461873) (list!5462 lt!461657)))))

(declare-fun b!1388270 () Bool)

(declare-fun lt!461871 () Option!2700)

(declare-fun lt!461872 () tuple2!13688)

(assert (=> b!1388270 (= e!886796 (tuple2!13689 (Cons!14084 (_1!7731 (v!21566 lt!461871)) (_1!7730 lt!461872)) (_2!7730 lt!461872)))))

(assert (=> b!1388270 (= lt!461872 (lexList!648 thiss!19762 rules!2550 (_2!7731 (v!21566 lt!461871))))))

(declare-fun d!396832 () Bool)

(assert (=> d!396832 e!886794))

(declare-fun c!228495 () Bool)

(declare-fun size!11575 (List!14150) Int)

(assert (=> d!396832 (= c!228495 (> (size!11575 (_1!7730 lt!461873)) 0))))

(assert (=> d!396832 (= lt!461873 e!886796)))

(declare-fun c!228496 () Bool)

(assert (=> d!396832 (= c!228496 ((_ is Some!2699) lt!461871))))

(assert (=> d!396832 (= lt!461871 (maxPrefix!1108 thiss!19762 rules!2550 (list!5462 lt!461657)))))

(assert (=> d!396832 (= (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461657)) lt!461873)))

(declare-fun b!1388271 () Bool)

(declare-fun e!886795 () Bool)

(assert (=> b!1388271 (= e!886794 e!886795)))

(declare-fun res!626518 () Bool)

(assert (=> b!1388271 (= res!626518 (< (size!11569 (_2!7730 lt!461873)) (size!11569 (list!5462 lt!461657))))))

(assert (=> b!1388271 (=> (not res!626518) (not e!886795))))

(declare-fun b!1388272 () Bool)

(declare-fun isEmpty!8526 (List!14150) Bool)

(assert (=> b!1388272 (= e!886795 (not (isEmpty!8526 (_1!7730 lt!461873))))))

(assert (= (and d!396832 c!228496) b!1388270))

(assert (= (and d!396832 (not c!228496)) b!1388268))

(assert (= (and d!396832 c!228495) b!1388271))

(assert (= (and d!396832 (not c!228495)) b!1388269))

(assert (= (and b!1388271 res!626518) b!1388272))

(declare-fun m!1562891 () Bool)

(assert (=> b!1388270 m!1562891))

(declare-fun m!1562893 () Bool)

(assert (=> d!396832 m!1562893))

(assert (=> d!396832 m!1562139))

(declare-fun m!1562895 () Bool)

(assert (=> d!396832 m!1562895))

(declare-fun m!1562897 () Bool)

(assert (=> b!1388271 m!1562897))

(assert (=> b!1388271 m!1562139))

(declare-fun m!1562899 () Bool)

(assert (=> b!1388271 m!1562899))

(declare-fun m!1562901 () Bool)

(assert (=> b!1388272 m!1562901))

(assert (=> b!1387663 d!396832))

(declare-fun d!396868 () Bool)

(assert (=> d!396868 (= (list!5462 lt!461657) (list!5464 (c!228372 lt!461657)))))

(declare-fun bs!337224 () Bool)

(assert (= bs!337224 d!396868))

(declare-fun m!1562903 () Bool)

(assert (=> bs!337224 m!1562903))

(assert (=> b!1387663 d!396868))

(declare-fun d!396870 () Bool)

(assert (=> d!396870 (not (matchR!1744 (regex!2439 (rule!4200 t1!34)) lt!461662))))

(declare-fun lt!461879 () Unit!20339)

(declare-fun choose!8525 (Regex!3753 List!14148 C!7796) Unit!20339)

(assert (=> d!396870 (= lt!461879 (choose!8525 (regex!2439 (rule!4200 t1!34)) lt!461662 (head!2531 lt!461662)))))

(assert (=> d!396870 (validRegex!1635 (regex!2439 (rule!4200 t1!34)))))

(assert (=> d!396870 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!184 (regex!2439 (rule!4200 t1!34)) lt!461662 (head!2531 lt!461662)) lt!461879)))

(declare-fun bs!337226 () Bool)

(assert (= bs!337226 d!396870))

(assert (=> bs!337226 m!1562085))

(assert (=> bs!337226 m!1562175))

(declare-fun m!1562907 () Bool)

(assert (=> bs!337226 m!1562907))

(declare-fun m!1562909 () Bool)

(assert (=> bs!337226 m!1562909))

(assert (=> b!1387662 d!396870))

(declare-fun d!396876 () Bool)

(assert (=> d!396876 (= (head!2531 lt!461662) (h!19483 lt!461662))))

(assert (=> b!1387662 d!396876))

(declare-fun d!396878 () Bool)

(declare-fun res!626532 () Bool)

(declare-fun e!886819 () Bool)

(assert (=> d!396878 (=> (not res!626532) (not e!886819))))

(declare-fun isEmpty!8527 (List!14148) Bool)

(assert (=> d!396878 (= res!626532 (not (isEmpty!8527 (originalCharacters!3301 t1!34))))))

(assert (=> d!396878 (= (inv!18423 t1!34) e!886819)))

(declare-fun b!1388306 () Bool)

(declare-fun res!626533 () Bool)

(assert (=> b!1388306 (=> (not res!626533) (not e!886819))))

(declare-fun dynLambda!6459 (Int TokenValue!2529) BalanceConc!9216)

(assert (=> b!1388306 (= res!626533 (= (originalCharacters!3301 t1!34) (list!5462 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (value!79144 t1!34)))))))

(declare-fun b!1388307 () Bool)

(assert (=> b!1388307 (= e!886819 (= (size!11563 t1!34) (size!11569 (originalCharacters!3301 t1!34))))))

(assert (= (and d!396878 res!626532) b!1388306))

(assert (= (and b!1388306 res!626533) b!1388307))

(declare-fun b_lambda!43075 () Bool)

(assert (=> (not b_lambda!43075) (not b!1388306)))

(declare-fun t!122337 () Bool)

(declare-fun tb!72749 () Bool)

(assert (=> (and b!1387654 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t1!34)))) t!122337) tb!72749))

(declare-fun b!1388315 () Bool)

(declare-fun e!886826 () Bool)

(declare-fun tp!396811 () Bool)

(declare-fun inv!18426 (Conc!4638) Bool)

(assert (=> b!1388315 (= e!886826 (and (inv!18426 (c!228372 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (value!79144 t1!34)))) tp!396811))))

(declare-fun result!88384 () Bool)

(declare-fun inv!18427 (BalanceConc!9216) Bool)

(assert (=> tb!72749 (= result!88384 (and (inv!18427 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (value!79144 t1!34))) e!886826))))

(assert (= tb!72749 b!1388315))

(declare-fun m!1562925 () Bool)

(assert (=> b!1388315 m!1562925))

(declare-fun m!1562927 () Bool)

(assert (=> tb!72749 m!1562927))

(assert (=> b!1388306 t!122337))

(declare-fun b_and!93003 () Bool)

(assert (= b_and!92965 (and (=> t!122337 result!88384) b_and!93003)))

(declare-fun t!122343 () Bool)

(declare-fun tb!72755 () Bool)

(assert (=> (and b!1387684 (= (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toChars!3585 (transformation!2439 (rule!4200 t1!34)))) t!122343) tb!72755))

(declare-fun result!88394 () Bool)

(assert (= result!88394 result!88384))

(assert (=> b!1388306 t!122343))

(declare-fun b_and!93005 () Bool)

(assert (= b_and!92969 (and (=> t!122343 result!88394) b_and!93005)))

(declare-fun tb!72757 () Bool)

(declare-fun t!122345 () Bool)

(assert (=> (and b!1387659 (= (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toChars!3585 (transformation!2439 (rule!4200 t1!34)))) t!122345) tb!72757))

(declare-fun result!88396 () Bool)

(assert (= result!88396 result!88384))

(assert (=> b!1388306 t!122345))

(declare-fun b_and!93007 () Bool)

(assert (= b_and!92973 (and (=> t!122345 result!88396) b_and!93007)))

(declare-fun m!1562931 () Bool)

(assert (=> d!396878 m!1562931))

(declare-fun m!1562933 () Bool)

(assert (=> b!1388306 m!1562933))

(assert (=> b!1388306 m!1562933))

(declare-fun m!1562935 () Bool)

(assert (=> b!1388306 m!1562935))

(declare-fun m!1562937 () Bool)

(assert (=> b!1388307 m!1562937))

(assert (=> start!125994 d!396878))

(declare-fun d!396880 () Bool)

(declare-fun res!626534 () Bool)

(declare-fun e!886829 () Bool)

(assert (=> d!396880 (=> (not res!626534) (not e!886829))))

(assert (=> d!396880 (= res!626534 (not (isEmpty!8527 (originalCharacters!3301 t2!34))))))

(assert (=> d!396880 (= (inv!18423 t2!34) e!886829)))

(declare-fun b!1388326 () Bool)

(declare-fun res!626535 () Bool)

(assert (=> b!1388326 (=> (not res!626535) (not e!886829))))

(assert (=> b!1388326 (= res!626535 (= (originalCharacters!3301 t2!34) (list!5462 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (value!79144 t2!34)))))))

(declare-fun b!1388327 () Bool)

(assert (=> b!1388327 (= e!886829 (= (size!11563 t2!34) (size!11569 (originalCharacters!3301 t2!34))))))

(assert (= (and d!396880 res!626534) b!1388326))

(assert (= (and b!1388326 res!626535) b!1388327))

(declare-fun b_lambda!43077 () Bool)

(assert (=> (not b_lambda!43077) (not b!1388326)))

(declare-fun tb!72759 () Bool)

(declare-fun t!122347 () Bool)

(assert (=> (and b!1387654 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t2!34)))) t!122347) tb!72759))

(declare-fun b!1388328 () Bool)

(declare-fun e!886830 () Bool)

(declare-fun tp!396822 () Bool)

(assert (=> b!1388328 (= e!886830 (and (inv!18426 (c!228372 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (value!79144 t2!34)))) tp!396822))))

(declare-fun result!88398 () Bool)

(assert (=> tb!72759 (= result!88398 (and (inv!18427 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (value!79144 t2!34))) e!886830))))

(assert (= tb!72759 b!1388328))

(declare-fun m!1562939 () Bool)

(assert (=> b!1388328 m!1562939))

(declare-fun m!1562941 () Bool)

(assert (=> tb!72759 m!1562941))

(assert (=> b!1388326 t!122347))

(declare-fun b_and!93009 () Bool)

(assert (= b_and!93003 (and (=> t!122347 result!88398) b_and!93009)))

(declare-fun t!122349 () Bool)

(declare-fun tb!72761 () Bool)

(assert (=> (and b!1387684 (= (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toChars!3585 (transformation!2439 (rule!4200 t2!34)))) t!122349) tb!72761))

(declare-fun result!88400 () Bool)

(assert (= result!88400 result!88398))

(assert (=> b!1388326 t!122349))

(declare-fun b_and!93011 () Bool)

(assert (= b_and!93005 (and (=> t!122349 result!88400) b_and!93011)))

(declare-fun t!122351 () Bool)

(declare-fun tb!72763 () Bool)

(assert (=> (and b!1387659 (= (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toChars!3585 (transformation!2439 (rule!4200 t2!34)))) t!122351) tb!72763))

(declare-fun result!88402 () Bool)

(assert (= result!88402 result!88398))

(assert (=> b!1388326 t!122351))

(declare-fun b_and!93013 () Bool)

(assert (= b_and!93007 (and (=> t!122351 result!88402) b_and!93013)))

(declare-fun m!1562943 () Bool)

(assert (=> d!396880 m!1562943))

(declare-fun m!1562945 () Bool)

(assert (=> b!1388326 m!1562945))

(assert (=> b!1388326 m!1562945))

(declare-fun m!1562947 () Bool)

(assert (=> b!1388326 m!1562947))

(declare-fun m!1562949 () Bool)

(assert (=> b!1388327 m!1562949))

(assert (=> start!125994 d!396880))

(declare-fun b!1388372 () Bool)

(declare-fun e!886857 () Bool)

(declare-fun e!886852 () Bool)

(assert (=> b!1388372 (= e!886857 e!886852)))

(declare-fun res!626562 () Bool)

(assert (=> b!1388372 (=> (not res!626562) (not e!886852))))

(declare-fun lt!461883 () Bool)

(assert (=> b!1388372 (= res!626562 (not lt!461883))))

(declare-fun b!1388373 () Bool)

(declare-fun e!886853 () Bool)

(assert (=> b!1388373 (= e!886852 e!886853)))

(declare-fun res!626556 () Bool)

(assert (=> b!1388373 (=> res!626556 e!886853)))

(declare-fun call!92870 () Bool)

(assert (=> b!1388373 (= res!626556 call!92870)))

(declare-fun bm!92865 () Bool)

(assert (=> bm!92865 (= call!92870 (isEmpty!8527 lt!461642))))

(declare-fun b!1388374 () Bool)

(declare-fun res!626560 () Bool)

(declare-fun e!886851 () Bool)

(assert (=> b!1388374 (=> (not res!626560) (not e!886851))))

(assert (=> b!1388374 (= res!626560 (not call!92870))))

(declare-fun b!1388375 () Bool)

(declare-fun res!626557 () Bool)

(assert (=> b!1388375 (=> (not res!626557) (not e!886851))))

(declare-fun tail!2016 (List!14148) List!14148)

(assert (=> b!1388375 (= res!626557 (isEmpty!8527 (tail!2016 lt!461642)))))

(declare-fun b!1388376 () Bool)

(declare-fun e!886854 () Bool)

(assert (=> b!1388376 (= e!886854 (nullable!1215 (regex!2439 (rule!4200 t2!34))))))

(declare-fun d!396882 () Bool)

(declare-fun e!886855 () Bool)

(assert (=> d!396882 e!886855))

(declare-fun c!228510 () Bool)

(assert (=> d!396882 (= c!228510 ((_ is EmptyExpr!3753) (regex!2439 (rule!4200 t2!34))))))

(assert (=> d!396882 (= lt!461883 e!886854)))

(declare-fun c!228509 () Bool)

(assert (=> d!396882 (= c!228509 (isEmpty!8527 lt!461642))))

(assert (=> d!396882 (validRegex!1635 (regex!2439 (rule!4200 t2!34)))))

(assert (=> d!396882 (= (matchR!1744 (regex!2439 (rule!4200 t2!34)) lt!461642) lt!461883)))

(declare-fun b!1388377 () Bool)

(declare-fun e!886856 () Bool)

(assert (=> b!1388377 (= e!886855 e!886856)))

(declare-fun c!228508 () Bool)

(assert (=> b!1388377 (= c!228508 ((_ is EmptyLang!3753) (regex!2439 (rule!4200 t2!34))))))

(declare-fun b!1388378 () Bool)

(assert (=> b!1388378 (= e!886851 (= (head!2531 lt!461642) (c!228373 (regex!2439 (rule!4200 t2!34)))))))

(declare-fun b!1388379 () Bool)

(declare-fun res!626555 () Bool)

(assert (=> b!1388379 (=> res!626555 e!886853)))

(assert (=> b!1388379 (= res!626555 (not (isEmpty!8527 (tail!2016 lt!461642))))))

(declare-fun b!1388380 () Bool)

(declare-fun res!626561 () Bool)

(assert (=> b!1388380 (=> res!626561 e!886857)))

(assert (=> b!1388380 (= res!626561 (not ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t2!34)))))))

(assert (=> b!1388380 (= e!886856 e!886857)))

(declare-fun b!1388381 () Bool)

(assert (=> b!1388381 (= e!886855 (= lt!461883 call!92870))))

(declare-fun b!1388382 () Bool)

(assert (=> b!1388382 (= e!886853 (not (= (head!2531 lt!461642) (c!228373 (regex!2439 (rule!4200 t2!34))))))))

(declare-fun b!1388383 () Bool)

(declare-fun res!626559 () Bool)

(assert (=> b!1388383 (=> res!626559 e!886857)))

(assert (=> b!1388383 (= res!626559 e!886851)))

(declare-fun res!626558 () Bool)

(assert (=> b!1388383 (=> (not res!626558) (not e!886851))))

(assert (=> b!1388383 (= res!626558 lt!461883)))

(declare-fun b!1388384 () Bool)

(declare-fun derivativeStep!973 (Regex!3753 C!7796) Regex!3753)

(assert (=> b!1388384 (= e!886854 (matchR!1744 (derivativeStep!973 (regex!2439 (rule!4200 t2!34)) (head!2531 lt!461642)) (tail!2016 lt!461642)))))

(declare-fun b!1388385 () Bool)

(assert (=> b!1388385 (= e!886856 (not lt!461883))))

(assert (= (and d!396882 c!228509) b!1388376))

(assert (= (and d!396882 (not c!228509)) b!1388384))

(assert (= (and d!396882 c!228510) b!1388381))

(assert (= (and d!396882 (not c!228510)) b!1388377))

(assert (= (and b!1388377 c!228508) b!1388385))

(assert (= (and b!1388377 (not c!228508)) b!1388380))

(assert (= (and b!1388380 (not res!626561)) b!1388383))

(assert (= (and b!1388383 res!626558) b!1388374))

(assert (= (and b!1388374 res!626560) b!1388375))

(assert (= (and b!1388375 res!626557) b!1388378))

(assert (= (and b!1388383 (not res!626559)) b!1388372))

(assert (= (and b!1388372 res!626562) b!1388373))

(assert (= (and b!1388373 (not res!626556)) b!1388379))

(assert (= (and b!1388379 (not res!626555)) b!1388382))

(assert (= (or b!1388381 b!1388373 b!1388374) bm!92865))

(declare-fun m!1562969 () Bool)

(assert (=> b!1388378 m!1562969))

(declare-fun m!1562971 () Bool)

(assert (=> b!1388376 m!1562971))

(assert (=> b!1388384 m!1562969))

(assert (=> b!1388384 m!1562969))

(declare-fun m!1562973 () Bool)

(assert (=> b!1388384 m!1562973))

(declare-fun m!1562975 () Bool)

(assert (=> b!1388384 m!1562975))

(assert (=> b!1388384 m!1562973))

(assert (=> b!1388384 m!1562975))

(declare-fun m!1562977 () Bool)

(assert (=> b!1388384 m!1562977))

(assert (=> b!1388379 m!1562975))

(assert (=> b!1388379 m!1562975))

(declare-fun m!1562979 () Bool)

(assert (=> b!1388379 m!1562979))

(assert (=> b!1388382 m!1562969))

(declare-fun m!1562981 () Bool)

(assert (=> d!396882 m!1562981))

(assert (=> d!396882 m!1562205))

(assert (=> b!1388375 m!1562975))

(assert (=> b!1388375 m!1562975))

(assert (=> b!1388375 m!1562979))

(assert (=> bm!92865 m!1562981))

(assert (=> b!1387683 d!396882))

(declare-fun d!396902 () Bool)

(assert (=> d!396902 (= (isEmpty!8518 rules!2550) ((_ is Nil!14085) rules!2550))))

(assert (=> b!1387661 d!396902))

(declare-fun d!396904 () Bool)

(assert (=> d!396904 (= (list!5461 (_1!7729 lt!461658)) (list!5465 (c!228374 (_1!7729 lt!461658))))))

(declare-fun bs!337236 () Bool)

(assert (= bs!337236 d!396904))

(declare-fun m!1562983 () Bool)

(assert (=> bs!337236 m!1562983))

(assert (=> b!1387650 d!396904))

(declare-fun b!1388386 () Bool)

(declare-fun e!886860 () Bool)

(declare-fun lt!461884 () tuple2!13686)

(assert (=> b!1388386 (= e!886860 (not (isEmpty!8524 (_1!7729 lt!461884))))))

(declare-fun b!1388387 () Bool)

(declare-fun res!626565 () Bool)

(declare-fun e!886859 () Bool)

(assert (=> b!1388387 (=> (not res!626565) (not e!886859))))

(assert (=> b!1388387 (= res!626565 (= (list!5461 (_1!7729 lt!461884)) (_1!7730 (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461646)))))))

(declare-fun b!1388388 () Bool)

(declare-fun e!886858 () Bool)

(assert (=> b!1388388 (= e!886858 e!886860)))

(declare-fun res!626564 () Bool)

(assert (=> b!1388388 (= res!626564 (< (size!11564 (_2!7729 lt!461884)) (size!11564 lt!461646)))))

(assert (=> b!1388388 (=> (not res!626564) (not e!886860))))

(declare-fun b!1388389 () Bool)

(assert (=> b!1388389 (= e!886858 (= (_2!7729 lt!461884) lt!461646))))

(declare-fun b!1388390 () Bool)

(assert (=> b!1388390 (= e!886859 (= (list!5462 (_2!7729 lt!461884)) (_2!7730 (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461646)))))))

(declare-fun d!396906 () Bool)

(assert (=> d!396906 e!886859))

(declare-fun res!626563 () Bool)

(assert (=> d!396906 (=> (not res!626563) (not e!886859))))

(assert (=> d!396906 (= res!626563 e!886858)))

(declare-fun c!228511 () Bool)

(assert (=> d!396906 (= c!228511 (> (size!11573 (_1!7729 lt!461884)) 0))))

(assert (=> d!396906 (= lt!461884 (lexTailRecV2!426 thiss!19762 rules!2550 lt!461646 (BalanceConc!9217 Empty!4638) lt!461646 (BalanceConc!9219 Empty!4639)))))

(assert (=> d!396906 (= (lex!959 thiss!19762 rules!2550 lt!461646) lt!461884)))

(assert (= (and d!396906 c!228511) b!1388388))

(assert (= (and d!396906 (not c!228511)) b!1388389))

(assert (= (and b!1388388 res!626564) b!1388386))

(assert (= (and d!396906 res!626563) b!1388387))

(assert (= (and b!1388387 res!626565) b!1388390))

(declare-fun m!1562985 () Bool)

(assert (=> b!1388387 m!1562985))

(assert (=> b!1388387 m!1562119))

(assert (=> b!1388387 m!1562119))

(assert (=> b!1388387 m!1562121))

(declare-fun m!1562987 () Bool)

(assert (=> d!396906 m!1562987))

(declare-fun m!1562989 () Bool)

(assert (=> d!396906 m!1562989))

(declare-fun m!1562991 () Bool)

(assert (=> b!1388390 m!1562991))

(assert (=> b!1388390 m!1562119))

(assert (=> b!1388390 m!1562119))

(assert (=> b!1388390 m!1562121))

(declare-fun m!1562993 () Bool)

(assert (=> b!1388388 m!1562993))

(declare-fun m!1562995 () Bool)

(assert (=> b!1388388 m!1562995))

(declare-fun m!1562997 () Bool)

(assert (=> b!1388386 m!1562997))

(assert (=> b!1387650 d!396906))

(declare-fun d!396908 () Bool)

(declare-fun lt!461885 () BalanceConc!9216)

(assert (=> d!396908 (= (list!5462 lt!461885) (printList!621 thiss!19762 (list!5461 (singletonSeq!1084 t2!34))))))

(assert (=> d!396908 (= lt!461885 (printTailRec!603 thiss!19762 (singletonSeq!1084 t2!34) 0 (BalanceConc!9217 Empty!4638)))))

(assert (=> d!396908 (= (print!898 thiss!19762 (singletonSeq!1084 t2!34)) lt!461885)))

(declare-fun bs!337237 () Bool)

(assert (= bs!337237 d!396908))

(declare-fun m!1562999 () Bool)

(assert (=> bs!337237 m!1562999))

(assert (=> bs!337237 m!1562113))

(declare-fun m!1563001 () Bool)

(assert (=> bs!337237 m!1563001))

(assert (=> bs!337237 m!1563001))

(declare-fun m!1563003 () Bool)

(assert (=> bs!337237 m!1563003))

(assert (=> bs!337237 m!1562113))

(declare-fun m!1563005 () Bool)

(assert (=> bs!337237 m!1563005))

(assert (=> b!1387650 d!396908))

(declare-fun d!396910 () Bool)

(declare-fun e!886861 () Bool)

(assert (=> d!396910 e!886861))

(declare-fun res!626566 () Bool)

(assert (=> d!396910 (=> (not res!626566) (not e!886861))))

(declare-fun lt!461886 () BalanceConc!9218)

(assert (=> d!396910 (= res!626566 (= (list!5461 lt!461886) (Cons!14084 t2!34 Nil!14084)))))

(assert (=> d!396910 (= lt!461886 (singleton!475 t2!34))))

(assert (=> d!396910 (= (singletonSeq!1084 t2!34) lt!461886)))

(declare-fun b!1388391 () Bool)

(assert (=> b!1388391 (= e!886861 (isBalanced!1369 (c!228374 lt!461886)))))

(assert (= (and d!396910 res!626566) b!1388391))

(declare-fun m!1563007 () Bool)

(assert (=> d!396910 m!1563007))

(declare-fun m!1563009 () Bool)

(assert (=> d!396910 m!1563009))

(declare-fun m!1563011 () Bool)

(assert (=> b!1388391 m!1563011))

(assert (=> b!1387650 d!396910))

(declare-fun d!396912 () Bool)

(declare-fun c!228514 () Bool)

(assert (=> d!396912 (= c!228514 (isEmpty!8527 lt!461666))))

(declare-fun e!886864 () Bool)

(assert (=> d!396912 (= (prefixMatch!262 lt!461655 lt!461666) e!886864)))

(declare-fun b!1388396 () Bool)

(declare-fun lostCause!349 (Regex!3753) Bool)

(assert (=> b!1388396 (= e!886864 (not (lostCause!349 lt!461655)))))

(declare-fun b!1388397 () Bool)

(assert (=> b!1388397 (= e!886864 (prefixMatch!262 (derivativeStep!973 lt!461655 (head!2531 lt!461666)) (tail!2016 lt!461666)))))

(assert (= (and d!396912 c!228514) b!1388396))

(assert (= (and d!396912 (not c!228514)) b!1388397))

(declare-fun m!1563013 () Bool)

(assert (=> d!396912 m!1563013))

(declare-fun m!1563015 () Bool)

(assert (=> b!1388396 m!1563015))

(declare-fun m!1563017 () Bool)

(assert (=> b!1388397 m!1563017))

(assert (=> b!1388397 m!1563017))

(declare-fun m!1563019 () Bool)

(assert (=> b!1388397 m!1563019))

(declare-fun m!1563021 () Bool)

(assert (=> b!1388397 m!1563021))

(assert (=> b!1388397 m!1563019))

(assert (=> b!1388397 m!1563021))

(declare-fun m!1563023 () Bool)

(assert (=> b!1388397 m!1563023))

(assert (=> b!1387671 d!396912))

(declare-fun b!1388406 () Bool)

(declare-fun e!886869 () List!14148)

(assert (=> b!1388406 (= e!886869 (Cons!14082 lt!461659 Nil!14082))))

(declare-fun b!1388408 () Bool)

(declare-fun res!626571 () Bool)

(declare-fun e!886870 () Bool)

(assert (=> b!1388408 (=> (not res!626571) (not e!886870))))

(declare-fun lt!461889 () List!14148)

(assert (=> b!1388408 (= res!626571 (= (size!11569 lt!461889) (+ (size!11569 lt!461662) (size!11569 (Cons!14082 lt!461659 Nil!14082)))))))

(declare-fun b!1388407 () Bool)

(assert (=> b!1388407 (= e!886869 (Cons!14082 (h!19483 lt!461662) (++!3656 (t!122315 lt!461662) (Cons!14082 lt!461659 Nil!14082))))))

(declare-fun b!1388409 () Bool)

(assert (=> b!1388409 (= e!886870 (or (not (= (Cons!14082 lt!461659 Nil!14082) Nil!14082)) (= lt!461889 lt!461662)))))

(declare-fun d!396914 () Bool)

(assert (=> d!396914 e!886870))

(declare-fun res!626572 () Bool)

(assert (=> d!396914 (=> (not res!626572) (not e!886870))))

(assert (=> d!396914 (= res!626572 (= (content!2068 lt!461889) ((_ map or) (content!2068 lt!461662) (content!2068 (Cons!14082 lt!461659 Nil!14082)))))))

(assert (=> d!396914 (= lt!461889 e!886869)))

(declare-fun c!228517 () Bool)

(assert (=> d!396914 (= c!228517 ((_ is Nil!14082) lt!461662))))

(assert (=> d!396914 (= (++!3656 lt!461662 (Cons!14082 lt!461659 Nil!14082)) lt!461889)))

(assert (= (and d!396914 c!228517) b!1388406))

(assert (= (and d!396914 (not c!228517)) b!1388407))

(assert (= (and d!396914 res!626572) b!1388408))

(assert (= (and b!1388408 res!626571) b!1388409))

(declare-fun m!1563025 () Bool)

(assert (=> b!1388408 m!1563025))

(declare-fun m!1563027 () Bool)

(assert (=> b!1388408 m!1563027))

(declare-fun m!1563029 () Bool)

(assert (=> b!1388408 m!1563029))

(declare-fun m!1563031 () Bool)

(assert (=> b!1388407 m!1563031))

(declare-fun m!1563033 () Bool)

(assert (=> d!396914 m!1563033))

(declare-fun m!1563035 () Bool)

(assert (=> d!396914 m!1563035))

(declare-fun m!1563037 () Bool)

(assert (=> d!396914 m!1563037))

(assert (=> b!1387671 d!396914))

(declare-fun d!396916 () Bool)

(declare-fun lt!461892 () BalanceConc!9216)

(assert (=> d!396916 (= (list!5462 lt!461892) (originalCharacters!3301 t1!34))))

(assert (=> d!396916 (= lt!461892 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (value!79144 t1!34)))))

(assert (=> d!396916 (= (charsOf!1411 t1!34) lt!461892)))

(declare-fun b_lambda!43105 () Bool)

(assert (=> (not b_lambda!43105) (not d!396916)))

(assert (=> d!396916 t!122337))

(declare-fun b_and!93015 () Bool)

(assert (= b_and!93009 (and (=> t!122337 result!88384) b_and!93015)))

(assert (=> d!396916 t!122343))

(declare-fun b_and!93017 () Bool)

(assert (= b_and!93011 (and (=> t!122343 result!88394) b_and!93017)))

(assert (=> d!396916 t!122345))

(declare-fun b_and!93019 () Bool)

(assert (= b_and!93013 (and (=> t!122345 result!88396) b_and!93019)))

(declare-fun m!1563039 () Bool)

(assert (=> d!396916 m!1563039))

(assert (=> d!396916 m!1562933))

(assert (=> b!1387671 d!396916))

(declare-fun bs!337238 () Bool)

(declare-fun d!396918 () Bool)

(assert (= bs!337238 (and d!396918 b!1387681)))

(declare-fun lambda!59913 () Int)

(assert (=> bs!337238 (= lambda!59913 lambda!59866)))

(declare-fun lt!461895 () Unit!20339)

(declare-fun lemma!143 (List!14151 LexerInterface!2134 List!14151) Unit!20339)

(assert (=> d!396918 (= lt!461895 (lemma!143 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!151 (List!14152) Regex!3753)

(assert (=> d!396918 (= (rulesRegex!322 thiss!19762 rules!2550) (generalisedUnion!151 (map!3119 rules!2550 lambda!59913)))))

(declare-fun bs!337239 () Bool)

(assert (= bs!337239 d!396918))

(declare-fun m!1563041 () Bool)

(assert (=> bs!337239 m!1563041))

(declare-fun m!1563043 () Bool)

(assert (=> bs!337239 m!1563043))

(assert (=> bs!337239 m!1563043))

(declare-fun m!1563045 () Bool)

(assert (=> bs!337239 m!1563045))

(assert (=> b!1387671 d!396918))

(declare-fun d!396920 () Bool)

(declare-fun lt!461896 () C!7796)

(assert (=> d!396920 (= lt!461896 (apply!3535 (list!5462 lt!461644) 0))))

(assert (=> d!396920 (= lt!461896 (apply!3536 (c!228372 lt!461644) 0))))

(declare-fun e!886871 () Bool)

(assert (=> d!396920 e!886871))

(declare-fun res!626573 () Bool)

(assert (=> d!396920 (=> (not res!626573) (not e!886871))))

(assert (=> d!396920 (= res!626573 (<= 0 0))))

(assert (=> d!396920 (= (apply!3529 lt!461644 0) lt!461896)))

(declare-fun b!1388410 () Bool)

(assert (=> b!1388410 (= e!886871 (< 0 (size!11564 lt!461644)))))

(assert (= (and d!396920 res!626573) b!1388410))

(assert (=> d!396920 m!1562161))

(assert (=> d!396920 m!1562161))

(declare-fun m!1563047 () Bool)

(assert (=> d!396920 m!1563047))

(declare-fun m!1563049 () Bool)

(assert (=> d!396920 m!1563049))

(assert (=> b!1388410 m!1562081))

(assert (=> b!1387671 d!396920))

(declare-fun d!396922 () Bool)

(assert (=> d!396922 (= (list!5462 lt!461652) (list!5464 (c!228372 lt!461652)))))

(declare-fun bs!337240 () Bool)

(assert (= bs!337240 d!396922))

(declare-fun m!1563051 () Bool)

(assert (=> bs!337240 m!1563051))

(assert (=> b!1387671 d!396922))

(declare-fun b!1388411 () Bool)

(declare-fun e!886878 () Bool)

(declare-fun e!886873 () Bool)

(assert (=> b!1388411 (= e!886878 e!886873)))

(declare-fun res!626581 () Bool)

(assert (=> b!1388411 (=> (not res!626581) (not e!886873))))

(declare-fun lt!461897 () Bool)

(assert (=> b!1388411 (= res!626581 (not lt!461897))))

(declare-fun b!1388412 () Bool)

(declare-fun e!886874 () Bool)

(assert (=> b!1388412 (= e!886873 e!886874)))

(declare-fun res!626575 () Bool)

(assert (=> b!1388412 (=> res!626575 e!886874)))

(declare-fun call!92871 () Bool)

(assert (=> b!1388412 (= res!626575 call!92871)))

(declare-fun bm!92866 () Bool)

(assert (=> bm!92866 (= call!92871 (isEmpty!8527 lt!461656))))

(declare-fun b!1388413 () Bool)

(declare-fun res!626579 () Bool)

(declare-fun e!886872 () Bool)

(assert (=> b!1388413 (=> (not res!626579) (not e!886872))))

(assert (=> b!1388413 (= res!626579 (not call!92871))))

(declare-fun b!1388414 () Bool)

(declare-fun res!626576 () Bool)

(assert (=> b!1388414 (=> (not res!626576) (not e!886872))))

(assert (=> b!1388414 (= res!626576 (isEmpty!8527 (tail!2016 lt!461656)))))

(declare-fun b!1388415 () Bool)

(declare-fun e!886875 () Bool)

(assert (=> b!1388415 (= e!886875 (nullable!1215 lt!461655))))

(declare-fun d!396924 () Bool)

(declare-fun e!886876 () Bool)

(assert (=> d!396924 e!886876))

(declare-fun c!228520 () Bool)

(assert (=> d!396924 (= c!228520 ((_ is EmptyExpr!3753) lt!461655))))

(assert (=> d!396924 (= lt!461897 e!886875)))

(declare-fun c!228519 () Bool)

(assert (=> d!396924 (= c!228519 (isEmpty!8527 lt!461656))))

(assert (=> d!396924 (validRegex!1635 lt!461655)))

(assert (=> d!396924 (= (matchR!1744 lt!461655 lt!461656) lt!461897)))

(declare-fun b!1388416 () Bool)

(declare-fun e!886877 () Bool)

(assert (=> b!1388416 (= e!886876 e!886877)))

(declare-fun c!228518 () Bool)

(assert (=> b!1388416 (= c!228518 ((_ is EmptyLang!3753) lt!461655))))

(declare-fun b!1388417 () Bool)

(assert (=> b!1388417 (= e!886872 (= (head!2531 lt!461656) (c!228373 lt!461655)))))

(declare-fun b!1388418 () Bool)

(declare-fun res!626574 () Bool)

(assert (=> b!1388418 (=> res!626574 e!886874)))

(assert (=> b!1388418 (= res!626574 (not (isEmpty!8527 (tail!2016 lt!461656))))))

(declare-fun b!1388419 () Bool)

(declare-fun res!626580 () Bool)

(assert (=> b!1388419 (=> res!626580 e!886878)))

(assert (=> b!1388419 (= res!626580 (not ((_ is ElementMatch!3753) lt!461655)))))

(assert (=> b!1388419 (= e!886877 e!886878)))

(declare-fun b!1388420 () Bool)

(assert (=> b!1388420 (= e!886876 (= lt!461897 call!92871))))

(declare-fun b!1388421 () Bool)

(assert (=> b!1388421 (= e!886874 (not (= (head!2531 lt!461656) (c!228373 lt!461655))))))

(declare-fun b!1388422 () Bool)

(declare-fun res!626578 () Bool)

(assert (=> b!1388422 (=> res!626578 e!886878)))

(assert (=> b!1388422 (= res!626578 e!886872)))

(declare-fun res!626577 () Bool)

(assert (=> b!1388422 (=> (not res!626577) (not e!886872))))

(assert (=> b!1388422 (= res!626577 lt!461897)))

(declare-fun b!1388423 () Bool)

(assert (=> b!1388423 (= e!886875 (matchR!1744 (derivativeStep!973 lt!461655 (head!2531 lt!461656)) (tail!2016 lt!461656)))))

(declare-fun b!1388424 () Bool)

(assert (=> b!1388424 (= e!886877 (not lt!461897))))

(assert (= (and d!396924 c!228519) b!1388415))

(assert (= (and d!396924 (not c!228519)) b!1388423))

(assert (= (and d!396924 c!228520) b!1388420))

(assert (= (and d!396924 (not c!228520)) b!1388416))

(assert (= (and b!1388416 c!228518) b!1388424))

(assert (= (and b!1388416 (not c!228518)) b!1388419))

(assert (= (and b!1388419 (not res!626580)) b!1388422))

(assert (= (and b!1388422 res!626577) b!1388413))

(assert (= (and b!1388413 res!626579) b!1388414))

(assert (= (and b!1388414 res!626576) b!1388417))

(assert (= (and b!1388422 (not res!626578)) b!1388411))

(assert (= (and b!1388411 res!626581) b!1388412))

(assert (= (and b!1388412 (not res!626575)) b!1388418))

(assert (= (and b!1388418 (not res!626574)) b!1388421))

(assert (= (or b!1388420 b!1388412 b!1388413) bm!92866))

(declare-fun m!1563053 () Bool)

(assert (=> b!1388417 m!1563053))

(declare-fun m!1563055 () Bool)

(assert (=> b!1388415 m!1563055))

(assert (=> b!1388423 m!1563053))

(assert (=> b!1388423 m!1563053))

(declare-fun m!1563057 () Bool)

(assert (=> b!1388423 m!1563057))

(declare-fun m!1563059 () Bool)

(assert (=> b!1388423 m!1563059))

(assert (=> b!1388423 m!1563057))

(assert (=> b!1388423 m!1563059))

(declare-fun m!1563061 () Bool)

(assert (=> b!1388423 m!1563061))

(assert (=> b!1388418 m!1563059))

(assert (=> b!1388418 m!1563059))

(declare-fun m!1563063 () Bool)

(assert (=> b!1388418 m!1563063))

(assert (=> b!1388421 m!1563053))

(declare-fun m!1563065 () Bool)

(assert (=> d!396924 m!1563065))

(assert (=> d!396924 m!1562419))

(assert (=> b!1388414 m!1563059))

(assert (=> b!1388414 m!1563059))

(assert (=> b!1388414 m!1563063))

(assert (=> bm!92866 m!1563065))

(assert (=> b!1387692 d!396924))

(declare-fun b!1388425 () Bool)

(declare-fun e!886879 () List!14148)

(assert (=> b!1388425 (= e!886879 (getSuffix!599 lt!461656 lt!461666))))

(declare-fun b!1388427 () Bool)

(declare-fun res!626582 () Bool)

(declare-fun e!886880 () Bool)

(assert (=> b!1388427 (=> (not res!626582) (not e!886880))))

(declare-fun lt!461898 () List!14148)

(assert (=> b!1388427 (= res!626582 (= (size!11569 lt!461898) (+ (size!11569 lt!461666) (size!11569 (getSuffix!599 lt!461656 lt!461666)))))))

(declare-fun b!1388426 () Bool)

(assert (=> b!1388426 (= e!886879 (Cons!14082 (h!19483 lt!461666) (++!3656 (t!122315 lt!461666) (getSuffix!599 lt!461656 lt!461666))))))

(declare-fun b!1388428 () Bool)

(assert (=> b!1388428 (= e!886880 (or (not (= (getSuffix!599 lt!461656 lt!461666) Nil!14082)) (= lt!461898 lt!461666)))))

(declare-fun d!396926 () Bool)

(assert (=> d!396926 e!886880))

(declare-fun res!626583 () Bool)

(assert (=> d!396926 (=> (not res!626583) (not e!886880))))

(assert (=> d!396926 (= res!626583 (= (content!2068 lt!461898) ((_ map or) (content!2068 lt!461666) (content!2068 (getSuffix!599 lt!461656 lt!461666)))))))

(assert (=> d!396926 (= lt!461898 e!886879)))

(declare-fun c!228521 () Bool)

(assert (=> d!396926 (= c!228521 ((_ is Nil!14082) lt!461666))))

(assert (=> d!396926 (= (++!3656 lt!461666 (getSuffix!599 lt!461656 lt!461666)) lt!461898)))

(assert (= (and d!396926 c!228521) b!1388425))

(assert (= (and d!396926 (not c!228521)) b!1388426))

(assert (= (and d!396926 res!626583) b!1388427))

(assert (= (and b!1388427 res!626582) b!1388428))

(declare-fun m!1563067 () Bool)

(assert (=> b!1388427 m!1563067))

(declare-fun m!1563069 () Bool)

(assert (=> b!1388427 m!1563069))

(assert (=> b!1388427 m!1562129))

(declare-fun m!1563071 () Bool)

(assert (=> b!1388427 m!1563071))

(assert (=> b!1388426 m!1562129))

(declare-fun m!1563073 () Bool)

(assert (=> b!1388426 m!1563073))

(declare-fun m!1563075 () Bool)

(assert (=> d!396926 m!1563075))

(assert (=> d!396926 m!1562709))

(assert (=> d!396926 m!1562129))

(declare-fun m!1563077 () Bool)

(assert (=> d!396926 m!1563077))

(assert (=> b!1387649 d!396926))

(declare-fun d!396928 () Bool)

(declare-fun lt!461901 () List!14148)

(assert (=> d!396928 (= (++!3656 lt!461666 lt!461901) lt!461656)))

(declare-fun e!886883 () List!14148)

(assert (=> d!396928 (= lt!461901 e!886883)))

(declare-fun c!228524 () Bool)

(assert (=> d!396928 (= c!228524 ((_ is Cons!14082) lt!461666))))

(assert (=> d!396928 (>= (size!11569 lt!461656) (size!11569 lt!461666))))

(assert (=> d!396928 (= (getSuffix!599 lt!461656 lt!461666) lt!461901)))

(declare-fun b!1388433 () Bool)

(assert (=> b!1388433 (= e!886883 (getSuffix!599 (tail!2016 lt!461656) (t!122315 lt!461666)))))

(declare-fun b!1388434 () Bool)

(assert (=> b!1388434 (= e!886883 lt!461656)))

(assert (= (and d!396928 c!228524) b!1388433))

(assert (= (and d!396928 (not c!228524)) b!1388434))

(declare-fun m!1563079 () Bool)

(assert (=> d!396928 m!1563079))

(declare-fun m!1563081 () Bool)

(assert (=> d!396928 m!1563081))

(assert (=> d!396928 m!1563069))

(assert (=> b!1388433 m!1563059))

(assert (=> b!1388433 m!1563059))

(declare-fun m!1563083 () Bool)

(assert (=> b!1388433 m!1563083))

(assert (=> b!1387649 d!396928))

(declare-fun d!396930 () Bool)

(declare-fun lt!461904 () List!14148)

(declare-fun dynLambda!6461 (Int List!14148) Bool)

(assert (=> d!396930 (dynLambda!6461 lambda!59865 lt!461904)))

(declare-fun choose!8526 (Int) List!14148)

(assert (=> d!396930 (= lt!461904 (choose!8526 lambda!59865))))

(assert (=> d!396930 (Exists!903 lambda!59865)))

(assert (=> d!396930 (= (pickWitness!206 lambda!59865) lt!461904)))

(declare-fun b_lambda!43107 () Bool)

(assert (=> (not b_lambda!43107) (not d!396930)))

(declare-fun bs!337241 () Bool)

(assert (= bs!337241 d!396930))

(declare-fun m!1563085 () Bool)

(assert (=> bs!337241 m!1563085))

(declare-fun m!1563087 () Bool)

(assert (=> bs!337241 m!1563087))

(assert (=> bs!337241 m!1562061))

(assert (=> b!1387649 d!396930))

(declare-fun b!1388435 () Bool)

(declare-fun e!886890 () Bool)

(declare-fun e!886885 () Bool)

(assert (=> b!1388435 (= e!886890 e!886885)))

(declare-fun res!626591 () Bool)

(assert (=> b!1388435 (=> (not res!626591) (not e!886885))))

(declare-fun lt!461905 () Bool)

(assert (=> b!1388435 (= res!626591 (not lt!461905))))

(declare-fun b!1388436 () Bool)

(declare-fun e!886886 () Bool)

(assert (=> b!1388436 (= e!886885 e!886886)))

(declare-fun res!626585 () Bool)

(assert (=> b!1388436 (=> res!626585 e!886886)))

(declare-fun call!92872 () Bool)

(assert (=> b!1388436 (= res!626585 call!92872)))

(declare-fun bm!92867 () Bool)

(assert (=> bm!92867 (= call!92872 (isEmpty!8527 lt!461662))))

(declare-fun b!1388437 () Bool)

(declare-fun res!626589 () Bool)

(declare-fun e!886884 () Bool)

(assert (=> b!1388437 (=> (not res!626589) (not e!886884))))

(assert (=> b!1388437 (= res!626589 (not call!92872))))

(declare-fun b!1388438 () Bool)

(declare-fun res!626586 () Bool)

(assert (=> b!1388438 (=> (not res!626586) (not e!886884))))

(assert (=> b!1388438 (= res!626586 (isEmpty!8527 (tail!2016 lt!461662)))))

(declare-fun b!1388439 () Bool)

(declare-fun e!886887 () Bool)

(assert (=> b!1388439 (= e!886887 (nullable!1215 (regex!2439 (rule!4200 t1!34))))))

(declare-fun d!396932 () Bool)

(declare-fun e!886888 () Bool)

(assert (=> d!396932 e!886888))

(declare-fun c!228527 () Bool)

(assert (=> d!396932 (= c!228527 ((_ is EmptyExpr!3753) (regex!2439 (rule!4200 t1!34))))))

(assert (=> d!396932 (= lt!461905 e!886887)))

(declare-fun c!228526 () Bool)

(assert (=> d!396932 (= c!228526 (isEmpty!8527 lt!461662))))

(assert (=> d!396932 (validRegex!1635 (regex!2439 (rule!4200 t1!34)))))

(assert (=> d!396932 (= (matchR!1744 (regex!2439 (rule!4200 t1!34)) lt!461662) lt!461905)))

(declare-fun b!1388440 () Bool)

(declare-fun e!886889 () Bool)

(assert (=> b!1388440 (= e!886888 e!886889)))

(declare-fun c!228525 () Bool)

(assert (=> b!1388440 (= c!228525 ((_ is EmptyLang!3753) (regex!2439 (rule!4200 t1!34))))))

(declare-fun b!1388441 () Bool)

(assert (=> b!1388441 (= e!886884 (= (head!2531 lt!461662) (c!228373 (regex!2439 (rule!4200 t1!34)))))))

(declare-fun b!1388442 () Bool)

(declare-fun res!626584 () Bool)

(assert (=> b!1388442 (=> res!626584 e!886886)))

(assert (=> b!1388442 (= res!626584 (not (isEmpty!8527 (tail!2016 lt!461662))))))

(declare-fun b!1388443 () Bool)

(declare-fun res!626590 () Bool)

(assert (=> b!1388443 (=> res!626590 e!886890)))

(assert (=> b!1388443 (= res!626590 (not ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t1!34)))))))

(assert (=> b!1388443 (= e!886889 e!886890)))

(declare-fun b!1388444 () Bool)

(assert (=> b!1388444 (= e!886888 (= lt!461905 call!92872))))

(declare-fun b!1388445 () Bool)

(assert (=> b!1388445 (= e!886886 (not (= (head!2531 lt!461662) (c!228373 (regex!2439 (rule!4200 t1!34))))))))

(declare-fun b!1388446 () Bool)

(declare-fun res!626588 () Bool)

(assert (=> b!1388446 (=> res!626588 e!886890)))

(assert (=> b!1388446 (= res!626588 e!886884)))

(declare-fun res!626587 () Bool)

(assert (=> b!1388446 (=> (not res!626587) (not e!886884))))

(assert (=> b!1388446 (= res!626587 lt!461905)))

(declare-fun b!1388447 () Bool)

(assert (=> b!1388447 (= e!886887 (matchR!1744 (derivativeStep!973 (regex!2439 (rule!4200 t1!34)) (head!2531 lt!461662)) (tail!2016 lt!461662)))))

(declare-fun b!1388448 () Bool)

(assert (=> b!1388448 (= e!886889 (not lt!461905))))

(assert (= (and d!396932 c!228526) b!1388439))

(assert (= (and d!396932 (not c!228526)) b!1388447))

(assert (= (and d!396932 c!228527) b!1388444))

(assert (= (and d!396932 (not c!228527)) b!1388440))

(assert (= (and b!1388440 c!228525) b!1388448))

(assert (= (and b!1388440 (not c!228525)) b!1388443))

(assert (= (and b!1388443 (not res!626590)) b!1388446))

(assert (= (and b!1388446 res!626587) b!1388437))

(assert (= (and b!1388437 res!626589) b!1388438))

(assert (= (and b!1388438 res!626586) b!1388441))

(assert (= (and b!1388446 (not res!626588)) b!1388435))

(assert (= (and b!1388435 res!626591) b!1388436))

(assert (= (and b!1388436 (not res!626585)) b!1388442))

(assert (= (and b!1388442 (not res!626584)) b!1388445))

(assert (= (or b!1388444 b!1388436 b!1388437) bm!92867))

(assert (=> b!1388441 m!1562175))

(declare-fun m!1563089 () Bool)

(assert (=> b!1388439 m!1563089))

(assert (=> b!1388447 m!1562175))

(assert (=> b!1388447 m!1562175))

(declare-fun m!1563091 () Bool)

(assert (=> b!1388447 m!1563091))

(declare-fun m!1563093 () Bool)

(assert (=> b!1388447 m!1563093))

(assert (=> b!1388447 m!1563091))

(assert (=> b!1388447 m!1563093))

(declare-fun m!1563095 () Bool)

(assert (=> b!1388447 m!1563095))

(assert (=> b!1388442 m!1563093))

(assert (=> b!1388442 m!1563093))

(declare-fun m!1563097 () Bool)

(assert (=> b!1388442 m!1563097))

(assert (=> b!1388445 m!1562175))

(declare-fun m!1563099 () Bool)

(assert (=> d!396932 m!1563099))

(assert (=> d!396932 m!1562909))

(assert (=> b!1388438 m!1563093))

(assert (=> b!1388438 m!1563093))

(assert (=> b!1388438 m!1563097))

(assert (=> bm!92867 m!1563099))

(assert (=> b!1387670 d!396932))

(declare-fun d!396934 () Bool)

(assert (=> d!396934 (dynLambda!6453 lambda!59869 (rule!4200 t2!34))))

(declare-fun lt!461908 () Unit!20339)

(declare-fun choose!8527 (List!14151 Int Rule!4678) Unit!20339)

(assert (=> d!396934 (= lt!461908 (choose!8527 rules!2550 lambda!59869 (rule!4200 t2!34)))))

(declare-fun e!886893 () Bool)

(assert (=> d!396934 e!886893))

(declare-fun res!626594 () Bool)

(assert (=> d!396934 (=> (not res!626594) (not e!886893))))

(assert (=> d!396934 (= res!626594 (forall!3427 rules!2550 lambda!59869))))

(assert (=> d!396934 (= (forallContained!634 rules!2550 lambda!59869 (rule!4200 t2!34)) lt!461908)))

(declare-fun b!1388451 () Bool)

(assert (=> b!1388451 (= e!886893 (contains!2699 rules!2550 (rule!4200 t2!34)))))

(assert (= (and d!396934 res!626594) b!1388451))

(declare-fun b_lambda!43109 () Bool)

(assert (=> (not b_lambda!43109) (not d!396934)))

(declare-fun m!1563101 () Bool)

(assert (=> d!396934 m!1563101))

(declare-fun m!1563103 () Bool)

(assert (=> d!396934 m!1563103))

(declare-fun m!1563105 () Bool)

(assert (=> d!396934 m!1563105))

(assert (=> b!1388451 m!1562191))

(assert (=> b!1387670 d!396934))

(declare-fun d!396936 () Bool)

(assert (=> d!396936 (dynLambda!6453 lambda!59869 (rule!4200 t1!34))))

(declare-fun lt!461909 () Unit!20339)

(assert (=> d!396936 (= lt!461909 (choose!8527 rules!2550 lambda!59869 (rule!4200 t1!34)))))

(declare-fun e!886894 () Bool)

(assert (=> d!396936 e!886894))

(declare-fun res!626595 () Bool)

(assert (=> d!396936 (=> (not res!626595) (not e!886894))))

(assert (=> d!396936 (= res!626595 (forall!3427 rules!2550 lambda!59869))))

(assert (=> d!396936 (= (forallContained!634 rules!2550 lambda!59869 (rule!4200 t1!34)) lt!461909)))

(declare-fun b!1388452 () Bool)

(assert (=> b!1388452 (= e!886894 (contains!2699 rules!2550 (rule!4200 t1!34)))))

(assert (= (and d!396936 res!626595) b!1388452))

(declare-fun b_lambda!43111 () Bool)

(assert (=> (not b_lambda!43111) (not d!396936)))

(declare-fun m!1563107 () Bool)

(assert (=> d!396936 m!1563107))

(declare-fun m!1563109 () Bool)

(assert (=> d!396936 m!1563109))

(assert (=> d!396936 m!1563105))

(assert (=> b!1388452 m!1562107))

(assert (=> b!1387670 d!396936))

(declare-fun d!396938 () Bool)

(assert (=> d!396938 (dynLambda!6453 lambda!59869 lt!461664)))

(declare-fun lt!461910 () Unit!20339)

(assert (=> d!396938 (= lt!461910 (choose!8527 rules!2550 lambda!59869 lt!461664))))

(declare-fun e!886895 () Bool)

(assert (=> d!396938 e!886895))

(declare-fun res!626596 () Bool)

(assert (=> d!396938 (=> (not res!626596) (not e!886895))))

(assert (=> d!396938 (= res!626596 (forall!3427 rules!2550 lambda!59869))))

(assert (=> d!396938 (= (forallContained!634 rules!2550 lambda!59869 lt!461664) lt!461910)))

(declare-fun b!1388453 () Bool)

(assert (=> b!1388453 (= e!886895 (contains!2699 rules!2550 lt!461664))))

(assert (= (and d!396938 res!626596) b!1388453))

(declare-fun b_lambda!43113 () Bool)

(assert (=> (not b_lambda!43113) (not d!396938)))

(declare-fun m!1563111 () Bool)

(assert (=> d!396938 m!1563111))

(declare-fun m!1563113 () Bool)

(assert (=> d!396938 m!1563113))

(assert (=> d!396938 m!1563105))

(assert (=> b!1388453 m!1562183))

(assert (=> b!1387670 d!396938))

(declare-fun d!396940 () Bool)

(assert (=> d!396940 (= (inv!18419 (tag!2701 (rule!4200 t1!34))) (= (mod (str.len (value!79143 (tag!2701 (rule!4200 t1!34)))) 2) 0))))

(assert (=> b!1387691 d!396940))

(declare-fun d!396942 () Bool)

(declare-fun res!626597 () Bool)

(declare-fun e!886896 () Bool)

(assert (=> d!396942 (=> (not res!626597) (not e!886896))))

(assert (=> d!396942 (= res!626597 (semiInverseModEq!943 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toValue!3726 (transformation!2439 (rule!4200 t1!34)))))))

(assert (=> d!396942 (= (inv!18422 (transformation!2439 (rule!4200 t1!34))) e!886896)))

(declare-fun b!1388454 () Bool)

(assert (=> b!1388454 (= e!886896 (equivClasses!902 (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toValue!3726 (transformation!2439 (rule!4200 t1!34)))))))

(assert (= (and d!396942 res!626597) b!1388454))

(declare-fun m!1563115 () Bool)

(assert (=> d!396942 m!1563115))

(declare-fun m!1563117 () Bool)

(assert (=> b!1388454 m!1563117))

(assert (=> b!1387691 d!396942))

(declare-fun d!396944 () Bool)

(declare-fun lt!461911 () Bool)

(assert (=> d!396944 (= lt!461911 (select (content!2068 lt!461666) lt!461659))))

(declare-fun e!886898 () Bool)

(assert (=> d!396944 (= lt!461911 e!886898)))

(declare-fun res!626598 () Bool)

(assert (=> d!396944 (=> (not res!626598) (not e!886898))))

(assert (=> d!396944 (= res!626598 ((_ is Cons!14082) lt!461666))))

(assert (=> d!396944 (= (contains!2697 lt!461666 lt!461659) lt!461911)))

(declare-fun b!1388455 () Bool)

(declare-fun e!886897 () Bool)

(assert (=> b!1388455 (= e!886898 e!886897)))

(declare-fun res!626599 () Bool)

(assert (=> b!1388455 (=> res!626599 e!886897)))

(assert (=> b!1388455 (= res!626599 (= (h!19483 lt!461666) lt!461659))))

(declare-fun b!1388456 () Bool)

(assert (=> b!1388456 (= e!886897 (contains!2697 (t!122315 lt!461666) lt!461659))))

(assert (= (and d!396944 res!626598) b!1388455))

(assert (= (and b!1388455 (not res!626599)) b!1388456))

(assert (=> d!396944 m!1562709))

(declare-fun m!1563119 () Bool)

(assert (=> d!396944 m!1563119))

(declare-fun m!1563121 () Bool)

(assert (=> b!1388456 m!1563121))

(assert (=> b!1387648 d!396944))

(declare-fun d!396946 () Bool)

(declare-fun lt!461912 () Bool)

(assert (=> d!396946 (= lt!461912 (select (content!2066 rules!2550) lt!461664))))

(declare-fun e!886899 () Bool)

(assert (=> d!396946 (= lt!461912 e!886899)))

(declare-fun res!626601 () Bool)

(assert (=> d!396946 (=> (not res!626601) (not e!886899))))

(assert (=> d!396946 (= res!626601 ((_ is Cons!14085) rules!2550))))

(assert (=> d!396946 (= (contains!2699 rules!2550 lt!461664) lt!461912)))

(declare-fun b!1388457 () Bool)

(declare-fun e!886900 () Bool)

(assert (=> b!1388457 (= e!886899 e!886900)))

(declare-fun res!626600 () Bool)

(assert (=> b!1388457 (=> res!626600 e!886900)))

(assert (=> b!1388457 (= res!626600 (= (h!19486 rules!2550) lt!461664))))

(declare-fun b!1388458 () Bool)

(assert (=> b!1388458 (= e!886900 (contains!2699 (t!122318 rules!2550) lt!461664))))

(assert (= (and d!396946 res!626601) b!1388457))

(assert (= (and b!1388457 (not res!626600)) b!1388458))

(assert (=> d!396946 m!1562245))

(declare-fun m!1563123 () Bool)

(assert (=> d!396946 m!1563123))

(declare-fun m!1563125 () Bool)

(assert (=> b!1388458 m!1563125))

(assert (=> b!1387669 d!396946))

(declare-fun b!1388459 () Bool)

(declare-fun e!886903 () tuple2!13688)

(assert (=> b!1388459 (= e!886903 (tuple2!13689 Nil!14084 (list!5462 lt!461646)))))

(declare-fun b!1388460 () Bool)

(declare-fun e!886901 () Bool)

(declare-fun lt!461915 () tuple2!13688)

(assert (=> b!1388460 (= e!886901 (= (_2!7730 lt!461915) (list!5462 lt!461646)))))

(declare-fun b!1388461 () Bool)

(declare-fun lt!461913 () Option!2700)

(declare-fun lt!461914 () tuple2!13688)

(assert (=> b!1388461 (= e!886903 (tuple2!13689 (Cons!14084 (_1!7731 (v!21566 lt!461913)) (_1!7730 lt!461914)) (_2!7730 lt!461914)))))

(assert (=> b!1388461 (= lt!461914 (lexList!648 thiss!19762 rules!2550 (_2!7731 (v!21566 lt!461913))))))

(declare-fun d!396948 () Bool)

(assert (=> d!396948 e!886901))

(declare-fun c!228528 () Bool)

(assert (=> d!396948 (= c!228528 (> (size!11575 (_1!7730 lt!461915)) 0))))

(assert (=> d!396948 (= lt!461915 e!886903)))

(declare-fun c!228529 () Bool)

(assert (=> d!396948 (= c!228529 ((_ is Some!2699) lt!461913))))

(assert (=> d!396948 (= lt!461913 (maxPrefix!1108 thiss!19762 rules!2550 (list!5462 lt!461646)))))

(assert (=> d!396948 (= (lexList!648 thiss!19762 rules!2550 (list!5462 lt!461646)) lt!461915)))

(declare-fun b!1388462 () Bool)

(declare-fun e!886902 () Bool)

(assert (=> b!1388462 (= e!886901 e!886902)))

(declare-fun res!626602 () Bool)

(assert (=> b!1388462 (= res!626602 (< (size!11569 (_2!7730 lt!461915)) (size!11569 (list!5462 lt!461646))))))

(assert (=> b!1388462 (=> (not res!626602) (not e!886902))))

(declare-fun b!1388463 () Bool)

(assert (=> b!1388463 (= e!886902 (not (isEmpty!8526 (_1!7730 lt!461915))))))

(assert (= (and d!396948 c!228529) b!1388461))

(assert (= (and d!396948 (not c!228529)) b!1388459))

(assert (= (and d!396948 c!228528) b!1388462))

(assert (= (and d!396948 (not c!228528)) b!1388460))

(assert (= (and b!1388462 res!626602) b!1388463))

(declare-fun m!1563127 () Bool)

(assert (=> b!1388461 m!1563127))

(declare-fun m!1563129 () Bool)

(assert (=> d!396948 m!1563129))

(assert (=> d!396948 m!1562119))

(declare-fun m!1563131 () Bool)

(assert (=> d!396948 m!1563131))

(declare-fun m!1563133 () Bool)

(assert (=> b!1388462 m!1563133))

(assert (=> b!1388462 m!1562119))

(declare-fun m!1563135 () Bool)

(assert (=> b!1388462 m!1563135))

(declare-fun m!1563137 () Bool)

(assert (=> b!1388463 m!1563137))

(assert (=> b!1387690 d!396948))

(declare-fun d!396950 () Bool)

(assert (=> d!396950 (= (list!5462 lt!461646) (list!5464 (c!228372 lt!461646)))))

(declare-fun bs!337242 () Bool)

(assert (= bs!337242 d!396950))

(declare-fun m!1563139 () Bool)

(assert (=> bs!337242 m!1563139))

(assert (=> b!1387690 d!396950))

(declare-fun d!396952 () Bool)

(declare-fun lt!461916 () Bool)

(assert (=> d!396952 (= lt!461916 (select (content!2068 lt!461656) lt!461660))))

(declare-fun e!886905 () Bool)

(assert (=> d!396952 (= lt!461916 e!886905)))

(declare-fun res!626603 () Bool)

(assert (=> d!396952 (=> (not res!626603) (not e!886905))))

(assert (=> d!396952 (= res!626603 ((_ is Cons!14082) lt!461656))))

(assert (=> d!396952 (= (contains!2697 lt!461656 lt!461660) lt!461916)))

(declare-fun b!1388464 () Bool)

(declare-fun e!886904 () Bool)

(assert (=> b!1388464 (= e!886905 e!886904)))

(declare-fun res!626604 () Bool)

(assert (=> b!1388464 (=> res!626604 e!886904)))

(assert (=> b!1388464 (= res!626604 (= (h!19483 lt!461656) lt!461660))))

(declare-fun b!1388465 () Bool)

(assert (=> b!1388465 (= e!886904 (contains!2697 (t!122315 lt!461656) lt!461660))))

(assert (= (and d!396952 res!626603) b!1388464))

(assert (= (and b!1388464 (not res!626604)) b!1388465))

(declare-fun m!1563141 () Bool)

(assert (=> d!396952 m!1563141))

(declare-fun m!1563143 () Bool)

(assert (=> d!396952 m!1563143))

(declare-fun m!1563145 () Bool)

(assert (=> b!1388465 m!1563145))

(assert (=> b!1387668 d!396952))

(declare-fun d!396954 () Bool)

(declare-fun lt!461917 () Bool)

(assert (=> d!396954 (= lt!461917 (select (content!2068 (usedCharacters!250 (regex!2439 (rule!4200 t1!34)))) lt!461660))))

(declare-fun e!886907 () Bool)

(assert (=> d!396954 (= lt!461917 e!886907)))

(declare-fun res!626605 () Bool)

(assert (=> d!396954 (=> (not res!626605) (not e!886907))))

(assert (=> d!396954 (= res!626605 ((_ is Cons!14082) (usedCharacters!250 (regex!2439 (rule!4200 t1!34)))))))

(assert (=> d!396954 (= (contains!2697 (usedCharacters!250 (regex!2439 (rule!4200 t1!34))) lt!461660) lt!461917)))

(declare-fun b!1388466 () Bool)

(declare-fun e!886906 () Bool)

(assert (=> b!1388466 (= e!886907 e!886906)))

(declare-fun res!626606 () Bool)

(assert (=> b!1388466 (=> res!626606 e!886906)))

(assert (=> b!1388466 (= res!626606 (= (h!19483 (usedCharacters!250 (regex!2439 (rule!4200 t1!34)))) lt!461660))))

(declare-fun b!1388467 () Bool)

(assert (=> b!1388467 (= e!886906 (contains!2697 (t!122315 (usedCharacters!250 (regex!2439 (rule!4200 t1!34)))) lt!461660))))

(assert (= (and d!396954 res!626605) b!1388466))

(assert (= (and b!1388466 (not res!626606)) b!1388467))

(assert (=> d!396954 m!1562201))

(declare-fun m!1563147 () Bool)

(assert (=> d!396954 m!1563147))

(declare-fun m!1563149 () Bool)

(assert (=> d!396954 m!1563149))

(declare-fun m!1563151 () Bool)

(assert (=> b!1388467 m!1563151))

(assert (=> b!1387689 d!396954))

(declare-fun b!1388484 () Bool)

(declare-fun e!886919 () List!14148)

(declare-fun e!886918 () List!14148)

(assert (=> b!1388484 (= e!886919 e!886918)))

(declare-fun c!228538 () Bool)

(assert (=> b!1388484 (= c!228538 ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t1!34))))))

(declare-fun d!396956 () Bool)

(declare-fun c!228539 () Bool)

(assert (=> d!396956 (= c!228539 (or ((_ is EmptyExpr!3753) (regex!2439 (rule!4200 t1!34))) ((_ is EmptyLang!3753) (regex!2439 (rule!4200 t1!34)))))))

(assert (=> d!396956 (= (usedCharacters!250 (regex!2439 (rule!4200 t1!34))) e!886919)))

(declare-fun bm!92876 () Bool)

(declare-fun call!92883 () List!14148)

(declare-fun call!92884 () List!14148)

(assert (=> bm!92876 (= call!92883 call!92884)))

(declare-fun b!1388485 () Bool)

(assert (=> b!1388485 (= e!886919 Nil!14082)))

(declare-fun call!92882 () List!14148)

(declare-fun c!228541 () Bool)

(declare-fun call!92881 () List!14148)

(declare-fun bm!92877 () Bool)

(assert (=> bm!92877 (= call!92882 (++!3656 (ite c!228541 call!92881 call!92883) (ite c!228541 call!92883 call!92881)))))

(declare-fun b!1388486 () Bool)

(declare-fun e!886917 () List!14148)

(assert (=> b!1388486 (= e!886917 call!92882)))

(declare-fun b!1388487 () Bool)

(declare-fun e!886916 () List!14148)

(assert (=> b!1388487 (= e!886916 call!92884)))

(declare-fun b!1388488 () Bool)

(assert (=> b!1388488 (= e!886917 call!92882)))

(declare-fun b!1388489 () Bool)

(assert (=> b!1388489 (= e!886918 (Cons!14082 (c!228373 (regex!2439 (rule!4200 t1!34))) Nil!14082))))

(declare-fun b!1388490 () Bool)

(assert (=> b!1388490 (= e!886916 e!886917)))

(assert (=> b!1388490 (= c!228541 ((_ is Union!3753) (regex!2439 (rule!4200 t1!34))))))

(declare-fun b!1388491 () Bool)

(declare-fun c!228540 () Bool)

(assert (=> b!1388491 (= c!228540 ((_ is Star!3753) (regex!2439 (rule!4200 t1!34))))))

(assert (=> b!1388491 (= e!886918 e!886916)))

(declare-fun bm!92878 () Bool)

(assert (=> bm!92878 (= call!92881 (usedCharacters!250 (ite c!228541 (regOne!8019 (regex!2439 (rule!4200 t1!34))) (regTwo!8018 (regex!2439 (rule!4200 t1!34))))))))

(declare-fun bm!92879 () Bool)

(assert (=> bm!92879 (= call!92884 (usedCharacters!250 (ite c!228540 (reg!4082 (regex!2439 (rule!4200 t1!34))) (ite c!228541 (regTwo!8019 (regex!2439 (rule!4200 t1!34))) (regOne!8018 (regex!2439 (rule!4200 t1!34)))))))))

(assert (= (and d!396956 c!228539) b!1388485))

(assert (= (and d!396956 (not c!228539)) b!1388484))

(assert (= (and b!1388484 c!228538) b!1388489))

(assert (= (and b!1388484 (not c!228538)) b!1388491))

(assert (= (and b!1388491 c!228540) b!1388487))

(assert (= (and b!1388491 (not c!228540)) b!1388490))

(assert (= (and b!1388490 c!228541) b!1388486))

(assert (= (and b!1388490 (not c!228541)) b!1388488))

(assert (= (or b!1388486 b!1388488) bm!92878))

(assert (= (or b!1388486 b!1388488) bm!92876))

(assert (= (or b!1388486 b!1388488) bm!92877))

(assert (= (or b!1388487 bm!92876) bm!92879))

(declare-fun m!1563153 () Bool)

(assert (=> bm!92877 m!1563153))

(declare-fun m!1563155 () Bool)

(assert (=> bm!92878 m!1563155))

(declare-fun m!1563157 () Bool)

(assert (=> bm!92879 m!1563157))

(assert (=> b!1387689 d!396956))

(declare-fun b!1388492 () Bool)

(declare-fun res!626612 () Bool)

(declare-fun e!886922 () Bool)

(assert (=> b!1388492 (=> (not res!626612) (not e!886922))))

(declare-fun lt!461922 () Option!2700)

(assert (=> b!1388492 (= res!626612 (= (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461922)))) (originalCharacters!3301 (_1!7731 (get!4373 lt!461922)))))))

(declare-fun b!1388493 () Bool)

(declare-fun e!886921 () Bool)

(assert (=> b!1388493 (= e!886921 e!886922)))

(declare-fun res!626610 () Bool)

(assert (=> b!1388493 (=> (not res!626610) (not e!886922))))

(assert (=> b!1388493 (= res!626610 (isDefined!2228 lt!461922))))

(declare-fun b!1388494 () Bool)

(declare-fun res!626609 () Bool)

(assert (=> b!1388494 (=> (not res!626609) (not e!886922))))

(assert (=> b!1388494 (= res!626609 (< (size!11569 (_2!7731 (get!4373 lt!461922))) (size!11569 lt!461662)))))

(declare-fun d!396958 () Bool)

(assert (=> d!396958 e!886921))

(declare-fun res!626611 () Bool)

(assert (=> d!396958 (=> res!626611 e!886921)))

(assert (=> d!396958 (= res!626611 (isEmpty!8522 lt!461922))))

(declare-fun e!886920 () Option!2700)

(assert (=> d!396958 (= lt!461922 e!886920)))

(declare-fun c!228542 () Bool)

(assert (=> d!396958 (= c!228542 (and ((_ is Cons!14085) rules!2550) ((_ is Nil!14085) (t!122318 rules!2550))))))

(declare-fun lt!461921 () Unit!20339)

(declare-fun lt!461918 () Unit!20339)

(assert (=> d!396958 (= lt!461921 lt!461918)))

(assert (=> d!396958 (isPrefix!1141 lt!461662 lt!461662)))

(assert (=> d!396958 (= lt!461918 (lemmaIsPrefixRefl!800 lt!461662 lt!461662))))

(assert (=> d!396958 (rulesValidInductive!783 thiss!19762 rules!2550)))

(assert (=> d!396958 (= (maxPrefix!1108 thiss!19762 rules!2550 lt!461662) lt!461922)))

(declare-fun call!92885 () Option!2700)

(declare-fun bm!92880 () Bool)

(assert (=> bm!92880 (= call!92885 (maxPrefixOneRule!626 thiss!19762 (h!19486 rules!2550) lt!461662))))

(declare-fun b!1388495 () Bool)

(declare-fun lt!461920 () Option!2700)

(declare-fun lt!461919 () Option!2700)

(assert (=> b!1388495 (= e!886920 (ite (and ((_ is None!2699) lt!461920) ((_ is None!2699) lt!461919)) None!2699 (ite ((_ is None!2699) lt!461919) lt!461920 (ite ((_ is None!2699) lt!461920) lt!461919 (ite (>= (size!11563 (_1!7731 (v!21566 lt!461920))) (size!11563 (_1!7731 (v!21566 lt!461919)))) lt!461920 lt!461919)))))))

(assert (=> b!1388495 (= lt!461920 call!92885)))

(assert (=> b!1388495 (= lt!461919 (maxPrefix!1108 thiss!19762 (t!122318 rules!2550) lt!461662))))

(declare-fun b!1388496 () Bool)

(assert (=> b!1388496 (= e!886920 call!92885)))

(declare-fun b!1388497 () Bool)

(declare-fun res!626607 () Bool)

(assert (=> b!1388497 (=> (not res!626607) (not e!886922))))

(assert (=> b!1388497 (= res!626607 (= (++!3656 (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461922)))) (_2!7731 (get!4373 lt!461922))) lt!461662))))

(declare-fun b!1388498 () Bool)

(assert (=> b!1388498 (= e!886922 (contains!2699 rules!2550 (rule!4200 (_1!7731 (get!4373 lt!461922)))))))

(declare-fun b!1388499 () Bool)

(declare-fun res!626608 () Bool)

(assert (=> b!1388499 (=> (not res!626608) (not e!886922))))

(assert (=> b!1388499 (= res!626608 (= (value!79144 (_1!7731 (get!4373 lt!461922))) (apply!3533 (transformation!2439 (rule!4200 (_1!7731 (get!4373 lt!461922)))) (seqFromList!1644 (originalCharacters!3301 (_1!7731 (get!4373 lt!461922)))))))))

(declare-fun b!1388500 () Bool)

(declare-fun res!626613 () Bool)

(assert (=> b!1388500 (=> (not res!626613) (not e!886922))))

(assert (=> b!1388500 (= res!626613 (matchR!1744 (regex!2439 (rule!4200 (_1!7731 (get!4373 lt!461922)))) (list!5462 (charsOf!1411 (_1!7731 (get!4373 lt!461922))))))))

(assert (= (and d!396958 c!228542) b!1388496))

(assert (= (and d!396958 (not c!228542)) b!1388495))

(assert (= (or b!1388496 b!1388495) bm!92880))

(assert (= (and d!396958 (not res!626611)) b!1388493))

(assert (= (and b!1388493 res!626610) b!1388492))

(assert (= (and b!1388492 res!626612) b!1388494))

(assert (= (and b!1388494 res!626609) b!1388497))

(assert (= (and b!1388497 res!626607) b!1388499))

(assert (= (and b!1388499 res!626608) b!1388500))

(assert (= (and b!1388500 res!626613) b!1388498))

(declare-fun m!1563159 () Bool)

(assert (=> b!1388498 m!1563159))

(declare-fun m!1563161 () Bool)

(assert (=> b!1388498 m!1563161))

(declare-fun m!1563163 () Bool)

(assert (=> b!1388495 m!1563163))

(assert (=> b!1388497 m!1563159))

(declare-fun m!1563165 () Bool)

(assert (=> b!1388497 m!1563165))

(assert (=> b!1388497 m!1563165))

(declare-fun m!1563167 () Bool)

(assert (=> b!1388497 m!1563167))

(assert (=> b!1388497 m!1563167))

(declare-fun m!1563169 () Bool)

(assert (=> b!1388497 m!1563169))

(assert (=> b!1388500 m!1563159))

(assert (=> b!1388500 m!1563165))

(assert (=> b!1388500 m!1563165))

(assert (=> b!1388500 m!1563167))

(assert (=> b!1388500 m!1563167))

(declare-fun m!1563171 () Bool)

(assert (=> b!1388500 m!1563171))

(assert (=> b!1388492 m!1563159))

(assert (=> b!1388492 m!1563165))

(assert (=> b!1388492 m!1563165))

(assert (=> b!1388492 m!1563167))

(assert (=> b!1388494 m!1563159))

(declare-fun m!1563173 () Bool)

(assert (=> b!1388494 m!1563173))

(assert (=> b!1388494 m!1563027))

(declare-fun m!1563175 () Bool)

(assert (=> b!1388493 m!1563175))

(declare-fun m!1563177 () Bool)

(assert (=> bm!92880 m!1563177))

(assert (=> b!1388499 m!1563159))

(declare-fun m!1563179 () Bool)

(assert (=> b!1388499 m!1563179))

(assert (=> b!1388499 m!1563179))

(declare-fun m!1563181 () Bool)

(assert (=> b!1388499 m!1563181))

(declare-fun m!1563183 () Bool)

(assert (=> d!396958 m!1563183))

(declare-fun m!1563185 () Bool)

(assert (=> d!396958 m!1563185))

(declare-fun m!1563187 () Bool)

(assert (=> d!396958 m!1563187))

(assert (=> d!396958 m!1562357))

(assert (=> b!1387667 d!396958))

(declare-fun d!396960 () Bool)

(declare-fun res!626618 () Bool)

(declare-fun e!886927 () Bool)

(assert (=> d!396960 (=> res!626618 e!886927)))

(assert (=> d!396960 (= res!626618 (not ((_ is Cons!14085) rules!2550)))))

(assert (=> d!396960 (= (sepAndNonSepRulesDisjointChars!812 rules!2550 rules!2550) e!886927)))

(declare-fun b!1388505 () Bool)

(declare-fun e!886928 () Bool)

(assert (=> b!1388505 (= e!886927 e!886928)))

(declare-fun res!626619 () Bool)

(assert (=> b!1388505 (=> (not res!626619) (not e!886928))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!386 (Rule!4678 List!14151) Bool)

(assert (=> b!1388505 (= res!626619 (ruleDisjointCharsFromAllFromOtherType!386 (h!19486 rules!2550) rules!2550))))

(declare-fun b!1388506 () Bool)

(assert (=> b!1388506 (= e!886928 (sepAndNonSepRulesDisjointChars!812 rules!2550 (t!122318 rules!2550)))))

(assert (= (and d!396960 (not res!626618)) b!1388505))

(assert (= (and b!1388505 res!626619) b!1388506))

(declare-fun m!1563189 () Bool)

(assert (=> b!1388505 m!1563189))

(declare-fun m!1563191 () Bool)

(assert (=> b!1388506 m!1563191))

(assert (=> b!1387688 d!396960))

(declare-fun d!396962 () Bool)

(declare-fun lt!461923 () Bool)

(assert (=> d!396962 (= lt!461923 (select (content!2068 (usedCharacters!250 (regex!2439 (rule!4200 t2!34)))) lt!461659))))

(declare-fun e!886930 () Bool)

(assert (=> d!396962 (= lt!461923 e!886930)))

(declare-fun res!626620 () Bool)

(assert (=> d!396962 (=> (not res!626620) (not e!886930))))

(assert (=> d!396962 (= res!626620 ((_ is Cons!14082) (usedCharacters!250 (regex!2439 (rule!4200 t2!34)))))))

(assert (=> d!396962 (= (contains!2697 (usedCharacters!250 (regex!2439 (rule!4200 t2!34))) lt!461659) lt!461923)))

(declare-fun b!1388507 () Bool)

(declare-fun e!886929 () Bool)

(assert (=> b!1388507 (= e!886930 e!886929)))

(declare-fun res!626621 () Bool)

(assert (=> b!1388507 (=> res!626621 e!886929)))

(assert (=> b!1388507 (= res!626621 (= (h!19483 (usedCharacters!250 (regex!2439 (rule!4200 t2!34)))) lt!461659))))

(declare-fun b!1388508 () Bool)

(assert (=> b!1388508 (= e!886929 (contains!2697 (t!122315 (usedCharacters!250 (regex!2439 (rule!4200 t2!34)))) lt!461659))))

(assert (= (and d!396962 res!626620) b!1388507))

(assert (= (and b!1388507 (not res!626621)) b!1388508))

(assert (=> d!396962 m!1562095))

(declare-fun m!1563193 () Bool)

(assert (=> d!396962 m!1563193))

(declare-fun m!1563195 () Bool)

(assert (=> d!396962 m!1563195))

(declare-fun m!1563197 () Bool)

(assert (=> b!1388508 m!1563197))

(assert (=> b!1387655 d!396962))

(declare-fun b!1388509 () Bool)

(declare-fun e!886934 () List!14148)

(declare-fun e!886933 () List!14148)

(assert (=> b!1388509 (= e!886934 e!886933)))

(declare-fun c!228543 () Bool)

(assert (=> b!1388509 (= c!228543 ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t2!34))))))

(declare-fun d!396964 () Bool)

(declare-fun c!228544 () Bool)

(assert (=> d!396964 (= c!228544 (or ((_ is EmptyExpr!3753) (regex!2439 (rule!4200 t2!34))) ((_ is EmptyLang!3753) (regex!2439 (rule!4200 t2!34)))))))

(assert (=> d!396964 (= (usedCharacters!250 (regex!2439 (rule!4200 t2!34))) e!886934)))

(declare-fun bm!92881 () Bool)

(declare-fun call!92888 () List!14148)

(declare-fun call!92889 () List!14148)

(assert (=> bm!92881 (= call!92888 call!92889)))

(declare-fun b!1388510 () Bool)

(assert (=> b!1388510 (= e!886934 Nil!14082)))

(declare-fun call!92887 () List!14148)

(declare-fun call!92886 () List!14148)

(declare-fun c!228546 () Bool)

(declare-fun bm!92882 () Bool)

(assert (=> bm!92882 (= call!92887 (++!3656 (ite c!228546 call!92886 call!92888) (ite c!228546 call!92888 call!92886)))))

(declare-fun b!1388511 () Bool)

(declare-fun e!886932 () List!14148)

(assert (=> b!1388511 (= e!886932 call!92887)))

(declare-fun b!1388512 () Bool)

(declare-fun e!886931 () List!14148)

(assert (=> b!1388512 (= e!886931 call!92889)))

(declare-fun b!1388513 () Bool)

(assert (=> b!1388513 (= e!886932 call!92887)))

(declare-fun b!1388514 () Bool)

(assert (=> b!1388514 (= e!886933 (Cons!14082 (c!228373 (regex!2439 (rule!4200 t2!34))) Nil!14082))))

(declare-fun b!1388515 () Bool)

(assert (=> b!1388515 (= e!886931 e!886932)))

(assert (=> b!1388515 (= c!228546 ((_ is Union!3753) (regex!2439 (rule!4200 t2!34))))))

(declare-fun b!1388516 () Bool)

(declare-fun c!228545 () Bool)

(assert (=> b!1388516 (= c!228545 ((_ is Star!3753) (regex!2439 (rule!4200 t2!34))))))

(assert (=> b!1388516 (= e!886933 e!886931)))

(declare-fun bm!92883 () Bool)

(assert (=> bm!92883 (= call!92886 (usedCharacters!250 (ite c!228546 (regOne!8019 (regex!2439 (rule!4200 t2!34))) (regTwo!8018 (regex!2439 (rule!4200 t2!34))))))))

(declare-fun bm!92884 () Bool)

(assert (=> bm!92884 (= call!92889 (usedCharacters!250 (ite c!228545 (reg!4082 (regex!2439 (rule!4200 t2!34))) (ite c!228546 (regTwo!8019 (regex!2439 (rule!4200 t2!34))) (regOne!8018 (regex!2439 (rule!4200 t2!34)))))))))

(assert (= (and d!396964 c!228544) b!1388510))

(assert (= (and d!396964 (not c!228544)) b!1388509))

(assert (= (and b!1388509 c!228543) b!1388514))

(assert (= (and b!1388509 (not c!228543)) b!1388516))

(assert (= (and b!1388516 c!228545) b!1388512))

(assert (= (and b!1388516 (not c!228545)) b!1388515))

(assert (= (and b!1388515 c!228546) b!1388511))

(assert (= (and b!1388515 (not c!228546)) b!1388513))

(assert (= (or b!1388511 b!1388513) bm!92883))

(assert (= (or b!1388511 b!1388513) bm!92881))

(assert (= (or b!1388511 b!1388513) bm!92882))

(assert (= (or b!1388512 bm!92881) bm!92884))

(declare-fun m!1563199 () Bool)

(assert (=> bm!92882 m!1563199))

(declare-fun m!1563201 () Bool)

(assert (=> bm!92883 m!1563201))

(declare-fun m!1563203 () Bool)

(assert (=> bm!92884 m!1563203))

(assert (=> b!1387655 d!396964))

(declare-fun d!396966 () Bool)

(declare-fun lt!461926 () Bool)

(assert (=> d!396966 (= lt!461926 (isEmpty!8527 (list!5462 (_2!7729 lt!461658))))))

(declare-fun isEmpty!8529 (Conc!4638) Bool)

(assert (=> d!396966 (= lt!461926 (isEmpty!8529 (c!228372 (_2!7729 lt!461658))))))

(assert (=> d!396966 (= (isEmpty!8519 (_2!7729 lt!461658)) lt!461926)))

(declare-fun bs!337243 () Bool)

(assert (= bs!337243 d!396966))

(declare-fun m!1563205 () Bool)

(assert (=> bs!337243 m!1563205))

(assert (=> bs!337243 m!1563205))

(declare-fun m!1563207 () Bool)

(assert (=> bs!337243 m!1563207))

(declare-fun m!1563209 () Bool)

(assert (=> bs!337243 m!1563209))

(assert (=> b!1387675 d!396966))

(declare-fun d!396968 () Bool)

(declare-fun res!626624 () Bool)

(declare-fun e!886937 () Bool)

(assert (=> d!396968 (=> (not res!626624) (not e!886937))))

(declare-fun rulesValid!913 (LexerInterface!2134 List!14151) Bool)

(assert (=> d!396968 (= res!626624 (rulesValid!913 thiss!19762 rules!2550))))

(assert (=> d!396968 (= (rulesInvariant!2004 thiss!19762 rules!2550) e!886937)))

(declare-fun b!1388519 () Bool)

(declare-datatypes ((List!14154 0))(
  ( (Nil!14088) (Cons!14088 (h!19489 String!16881) (t!122357 List!14154)) )
))
(declare-fun noDuplicateTag!913 (LexerInterface!2134 List!14151 List!14154) Bool)

(assert (=> b!1388519 (= e!886937 (noDuplicateTag!913 thiss!19762 rules!2550 Nil!14088))))

(assert (= (and d!396968 res!626624) b!1388519))

(declare-fun m!1563211 () Bool)

(assert (=> d!396968 m!1563211))

(declare-fun m!1563213 () Bool)

(assert (=> b!1388519 m!1563213))

(assert (=> b!1387653 d!396968))

(declare-fun d!396970 () Bool)

(declare-fun lt!461929 () Int)

(assert (=> d!396970 (= lt!461929 (size!11569 (list!5462 lt!461644)))))

(declare-fun size!11576 (Conc!4638) Int)

(assert (=> d!396970 (= lt!461929 (size!11576 (c!228372 lt!461644)))))

(assert (=> d!396970 (= (size!11564 lt!461644) lt!461929)))

(declare-fun bs!337244 () Bool)

(assert (= bs!337244 d!396970))

(assert (=> bs!337244 m!1562161))

(assert (=> bs!337244 m!1562161))

(declare-fun m!1563215 () Bool)

(assert (=> bs!337244 m!1563215))

(declare-fun m!1563217 () Bool)

(assert (=> bs!337244 m!1563217))

(assert (=> b!1387674 d!396970))

(declare-fun d!396972 () Bool)

(declare-fun lt!461930 () BalanceConc!9216)

(assert (=> d!396972 (= (list!5462 lt!461930) (originalCharacters!3301 t2!34))))

(assert (=> d!396972 (= lt!461930 (dynLambda!6459 (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (value!79144 t2!34)))))

(assert (=> d!396972 (= (charsOf!1411 t2!34) lt!461930)))

(declare-fun b_lambda!43115 () Bool)

(assert (=> (not b_lambda!43115) (not d!396972)))

(assert (=> d!396972 t!122347))

(declare-fun b_and!93021 () Bool)

(assert (= b_and!93015 (and (=> t!122347 result!88398) b_and!93021)))

(assert (=> d!396972 t!122349))

(declare-fun b_and!93023 () Bool)

(assert (= b_and!93017 (and (=> t!122349 result!88400) b_and!93023)))

(assert (=> d!396972 t!122351))

(declare-fun b_and!93025 () Bool)

(assert (= b_and!93019 (and (=> t!122351 result!88402) b_and!93025)))

(declare-fun m!1563219 () Bool)

(assert (=> d!396972 m!1563219))

(assert (=> d!396972 m!1562945))

(assert (=> b!1387674 d!396972))

(declare-fun d!396974 () Bool)

(declare-fun lt!461932 () Bool)

(declare-fun e!886939 () Bool)

(assert (=> d!396974 (= lt!461932 e!886939)))

(declare-fun res!626627 () Bool)

(assert (=> d!396974 (=> (not res!626627) (not e!886939))))

(assert (=> d!396974 (= res!626627 (= (list!5461 (_1!7729 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t2!34))))) (list!5461 (singletonSeq!1084 t2!34))))))

(declare-fun e!886938 () Bool)

(assert (=> d!396974 (= lt!461932 e!886938)))

(declare-fun res!626625 () Bool)

(assert (=> d!396974 (=> (not res!626625) (not e!886938))))

(declare-fun lt!461931 () tuple2!13686)

(assert (=> d!396974 (= res!626625 (= (size!11573 (_1!7729 lt!461931)) 1))))

(assert (=> d!396974 (= lt!461931 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t2!34))))))

(assert (=> d!396974 (not (isEmpty!8518 rules!2550))))

(assert (=> d!396974 (= (rulesProduceIndividualToken!1103 thiss!19762 rules!2550 t2!34) lt!461932)))

(declare-fun b!1388520 () Bool)

(declare-fun res!626626 () Bool)

(assert (=> b!1388520 (=> (not res!626626) (not e!886938))))

(assert (=> b!1388520 (= res!626626 (= (apply!3534 (_1!7729 lt!461931) 0) t2!34))))

(declare-fun b!1388521 () Bool)

(assert (=> b!1388521 (= e!886938 (isEmpty!8519 (_2!7729 lt!461931)))))

(declare-fun b!1388522 () Bool)

(assert (=> b!1388522 (= e!886939 (isEmpty!8519 (_2!7729 (lex!959 thiss!19762 rules!2550 (print!898 thiss!19762 (singletonSeq!1084 t2!34))))))))

(assert (= (and d!396974 res!626625) b!1388520))

(assert (= (and b!1388520 res!626626) b!1388521))

(assert (= (and d!396974 res!626627) b!1388522))

(declare-fun m!1563221 () Bool)

(assert (=> d!396974 m!1563221))

(assert (=> d!396974 m!1562113))

(assert (=> d!396974 m!1562115))

(assert (=> d!396974 m!1562067))

(assert (=> d!396974 m!1562113))

(assert (=> d!396974 m!1562115))

(declare-fun m!1563223 () Bool)

(assert (=> d!396974 m!1563223))

(assert (=> d!396974 m!1562113))

(assert (=> d!396974 m!1563001))

(declare-fun m!1563225 () Bool)

(assert (=> d!396974 m!1563225))

(declare-fun m!1563227 () Bool)

(assert (=> b!1388520 m!1563227))

(declare-fun m!1563229 () Bool)

(assert (=> b!1388521 m!1563229))

(assert (=> b!1388522 m!1562113))

(assert (=> b!1388522 m!1562113))

(assert (=> b!1388522 m!1562115))

(assert (=> b!1388522 m!1562115))

(assert (=> b!1388522 m!1563223))

(declare-fun m!1563231 () Bool)

(assert (=> b!1388522 m!1563231))

(assert (=> b!1387652 d!396974))

(declare-fun b!1388523 () Bool)

(declare-fun e!886941 () Bool)

(declare-fun e!886940 () Bool)

(assert (=> b!1388523 (= e!886941 e!886940)))

(declare-fun c!228547 () Bool)

(assert (=> b!1388523 (= c!228547 ((_ is IntegerValue!7588) (value!79144 t2!34)))))

(declare-fun b!1388524 () Bool)

(assert (=> b!1388524 (= e!886941 (inv!16 (value!79144 t2!34)))))

(declare-fun b!1388525 () Bool)

(assert (=> b!1388525 (= e!886940 (inv!17 (value!79144 t2!34)))))

(declare-fun d!396976 () Bool)

(declare-fun c!228548 () Bool)

(assert (=> d!396976 (= c!228548 ((_ is IntegerValue!7587) (value!79144 t2!34)))))

(assert (=> d!396976 (= (inv!21 (value!79144 t2!34)) e!886941)))

(declare-fun b!1388526 () Bool)

(declare-fun e!886942 () Bool)

(assert (=> b!1388526 (= e!886942 (inv!15 (value!79144 t2!34)))))

(declare-fun b!1388527 () Bool)

(declare-fun res!626628 () Bool)

(assert (=> b!1388527 (=> res!626628 e!886942)))

(assert (=> b!1388527 (= res!626628 (not ((_ is IntegerValue!7589) (value!79144 t2!34))))))

(assert (=> b!1388527 (= e!886940 e!886942)))

(assert (= (and d!396976 c!228548) b!1388524))

(assert (= (and d!396976 (not c!228548)) b!1388523))

(assert (= (and b!1388523 c!228547) b!1388525))

(assert (= (and b!1388523 (not c!228547)) b!1388527))

(assert (= (and b!1388527 (not res!626628)) b!1388526))

(declare-fun m!1563233 () Bool)

(assert (=> b!1388524 m!1563233))

(declare-fun m!1563235 () Bool)

(assert (=> b!1388525 m!1563235))

(declare-fun m!1563237 () Bool)

(assert (=> b!1388526 m!1563237))

(assert (=> b!1387673 d!396976))

(declare-fun d!396978 () Bool)

(declare-fun lt!461933 () Bool)

(assert (=> d!396978 (= lt!461933 (select (content!2068 lt!461656) lt!461659))))

(declare-fun e!886944 () Bool)

(assert (=> d!396978 (= lt!461933 e!886944)))

(declare-fun res!626629 () Bool)

(assert (=> d!396978 (=> (not res!626629) (not e!886944))))

(assert (=> d!396978 (= res!626629 ((_ is Cons!14082) lt!461656))))

(assert (=> d!396978 (= (contains!2697 lt!461656 lt!461659) lt!461933)))

(declare-fun b!1388528 () Bool)

(declare-fun e!886943 () Bool)

(assert (=> b!1388528 (= e!886944 e!886943)))

(declare-fun res!626630 () Bool)

(assert (=> b!1388528 (=> res!626630 e!886943)))

(assert (=> b!1388528 (= res!626630 (= (h!19483 lt!461656) lt!461659))))

(declare-fun b!1388529 () Bool)

(assert (=> b!1388529 (= e!886943 (contains!2697 (t!122315 lt!461656) lt!461659))))

(assert (= (and d!396978 res!626629) b!1388528))

(assert (= (and b!1388528 (not res!626630)) b!1388529))

(assert (=> d!396978 m!1563141))

(declare-fun m!1563239 () Bool)

(assert (=> d!396978 m!1563239))

(declare-fun m!1563241 () Bool)

(assert (=> b!1388529 m!1563241))

(assert (=> b!1387651 d!396978))

(declare-fun d!396980 () Bool)

(declare-fun lt!461934 () Bool)

(assert (=> d!396980 (= lt!461934 (isEmpty!8527 (list!5462 (_2!7729 lt!461667))))))

(assert (=> d!396980 (= lt!461934 (isEmpty!8529 (c!228372 (_2!7729 lt!461667))))))

(assert (=> d!396980 (= (isEmpty!8519 (_2!7729 lt!461667)) lt!461934)))

(declare-fun bs!337245 () Bool)

(assert (= bs!337245 d!396980))

(declare-fun m!1563243 () Bool)

(assert (=> bs!337245 m!1563243))

(assert (=> bs!337245 m!1563243))

(declare-fun m!1563245 () Bool)

(assert (=> bs!337245 m!1563245))

(declare-fun m!1563247 () Bool)

(assert (=> bs!337245 m!1563247))

(assert (=> b!1387693 d!396980))

(declare-fun b!1388540 () Bool)

(declare-fun b_free!33747 () Bool)

(declare-fun b_next!34451 () Bool)

(assert (=> b!1388540 (= b_free!33747 (not b_next!34451))))

(declare-fun tp!396848 () Bool)

(declare-fun b_and!93027 () Bool)

(assert (=> b!1388540 (= tp!396848 b_and!93027)))

(declare-fun b_free!33749 () Bool)

(declare-fun b_next!34453 () Bool)

(assert (=> b!1388540 (= b_free!33749 (not b_next!34453))))

(declare-fun t!122353 () Bool)

(declare-fun tb!72765 () Bool)

(assert (=> (and b!1388540 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t1!34)))) t!122353) tb!72765))

(declare-fun result!88406 () Bool)

(assert (= result!88406 result!88384))

(assert (=> b!1388306 t!122353))

(declare-fun tb!72767 () Bool)

(declare-fun t!122355 () Bool)

(assert (=> (and b!1388540 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t2!34)))) t!122355) tb!72767))

(declare-fun result!88408 () Bool)

(assert (= result!88408 result!88398))

(assert (=> b!1388326 t!122355))

(assert (=> d!396916 t!122353))

(assert (=> d!396972 t!122355))

(declare-fun b_and!93029 () Bool)

(declare-fun tp!396847 () Bool)

(assert (=> b!1388540 (= tp!396847 (and (=> t!122353 result!88406) (=> t!122355 result!88408) b_and!93029))))

(declare-fun e!886956 () Bool)

(assert (=> b!1388540 (= e!886956 (and tp!396848 tp!396847))))

(declare-fun b!1388539 () Bool)

(declare-fun e!886955 () Bool)

(declare-fun tp!396849 () Bool)

(assert (=> b!1388539 (= e!886955 (and tp!396849 (inv!18419 (tag!2701 (h!19486 (t!122318 rules!2550)))) (inv!18422 (transformation!2439 (h!19486 (t!122318 rules!2550)))) e!886956))))

(declare-fun b!1388538 () Bool)

(declare-fun e!886953 () Bool)

(declare-fun tp!396846 () Bool)

(assert (=> b!1388538 (= e!886953 (and e!886955 tp!396846))))

(assert (=> b!1387687 (= tp!396779 e!886953)))

(assert (= b!1388539 b!1388540))

(assert (= b!1388538 b!1388539))

(assert (= (and b!1387687 ((_ is Cons!14085) (t!122318 rules!2550))) b!1388538))

(declare-fun m!1563249 () Bool)

(assert (=> b!1388539 m!1563249))

(declare-fun m!1563251 () Bool)

(assert (=> b!1388539 m!1563251))

(declare-fun e!886959 () Bool)

(assert (=> b!1387660 (= tp!396787 e!886959)))

(declare-fun b!1388554 () Bool)

(declare-fun tp!396864 () Bool)

(declare-fun tp!396862 () Bool)

(assert (=> b!1388554 (= e!886959 (and tp!396864 tp!396862))))

(declare-fun b!1388553 () Bool)

(declare-fun tp!396863 () Bool)

(assert (=> b!1388553 (= e!886959 tp!396863)))

(declare-fun b!1388552 () Bool)

(declare-fun tp!396861 () Bool)

(declare-fun tp!396860 () Bool)

(assert (=> b!1388552 (= e!886959 (and tp!396861 tp!396860))))

(declare-fun b!1388551 () Bool)

(declare-fun tp_is_empty!6779 () Bool)

(assert (=> b!1388551 (= e!886959 tp_is_empty!6779)))

(assert (= (and b!1387660 ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t2!34)))) b!1388551))

(assert (= (and b!1387660 ((_ is Concat!6283) (regex!2439 (rule!4200 t2!34)))) b!1388552))

(assert (= (and b!1387660 ((_ is Star!3753) (regex!2439 (rule!4200 t2!34)))) b!1388553))

(assert (= (and b!1387660 ((_ is Union!3753) (regex!2439 (rule!4200 t2!34)))) b!1388554))

(declare-fun e!886960 () Bool)

(assert (=> b!1387691 (= tp!396780 e!886960)))

(declare-fun b!1388558 () Bool)

(declare-fun tp!396869 () Bool)

(declare-fun tp!396867 () Bool)

(assert (=> b!1388558 (= e!886960 (and tp!396869 tp!396867))))

(declare-fun b!1388557 () Bool)

(declare-fun tp!396868 () Bool)

(assert (=> b!1388557 (= e!886960 tp!396868)))

(declare-fun b!1388556 () Bool)

(declare-fun tp!396866 () Bool)

(declare-fun tp!396865 () Bool)

(assert (=> b!1388556 (= e!886960 (and tp!396866 tp!396865))))

(declare-fun b!1388555 () Bool)

(assert (=> b!1388555 (= e!886960 tp_is_empty!6779)))

(assert (= (and b!1387691 ((_ is ElementMatch!3753) (regex!2439 (rule!4200 t1!34)))) b!1388555))

(assert (= (and b!1387691 ((_ is Concat!6283) (regex!2439 (rule!4200 t1!34)))) b!1388556))

(assert (= (and b!1387691 ((_ is Star!3753) (regex!2439 (rule!4200 t1!34)))) b!1388557))

(assert (= (and b!1387691 ((_ is Union!3753) (regex!2439 (rule!4200 t1!34)))) b!1388558))

(declare-fun e!886961 () Bool)

(assert (=> b!1387658 (= tp!396784 e!886961)))

(declare-fun b!1388562 () Bool)

(declare-fun tp!396874 () Bool)

(declare-fun tp!396872 () Bool)

(assert (=> b!1388562 (= e!886961 (and tp!396874 tp!396872))))

(declare-fun b!1388561 () Bool)

(declare-fun tp!396873 () Bool)

(assert (=> b!1388561 (= e!886961 tp!396873)))

(declare-fun b!1388560 () Bool)

(declare-fun tp!396871 () Bool)

(declare-fun tp!396870 () Bool)

(assert (=> b!1388560 (= e!886961 (and tp!396871 tp!396870))))

(declare-fun b!1388559 () Bool)

(assert (=> b!1388559 (= e!886961 tp_is_empty!6779)))

(assert (= (and b!1387658 ((_ is ElementMatch!3753) (regex!2439 (h!19486 rules!2550)))) b!1388559))

(assert (= (and b!1387658 ((_ is Concat!6283) (regex!2439 (h!19486 rules!2550)))) b!1388560))

(assert (= (and b!1387658 ((_ is Star!3753) (regex!2439 (h!19486 rules!2550)))) b!1388561))

(assert (= (and b!1387658 ((_ is Union!3753) (regex!2439 (h!19486 rules!2550)))) b!1388562))

(declare-fun b!1388567 () Bool)

(declare-fun e!886964 () Bool)

(declare-fun tp!396877 () Bool)

(assert (=> b!1388567 (= e!886964 (and tp_is_empty!6779 tp!396877))))

(assert (=> b!1387657 (= tp!396783 e!886964)))

(assert (= (and b!1387657 ((_ is Cons!14082) (originalCharacters!3301 t1!34))) b!1388567))

(declare-fun b!1388568 () Bool)

(declare-fun e!886965 () Bool)

(declare-fun tp!396878 () Bool)

(assert (=> b!1388568 (= e!886965 (and tp_is_empty!6779 tp!396878))))

(assert (=> b!1387673 (= tp!396786 e!886965)))

(assert (= (and b!1387673 ((_ is Cons!14082) (originalCharacters!3301 t2!34))) b!1388568))

(declare-fun b_lambda!43117 () Bool)

(assert (= b_lambda!43115 (or (and b!1387654 b_free!33733 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) (and b!1387684 b_free!33737 (= (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) (and b!1387659 b_free!33741) (and b!1388540 b_free!33749 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) b_lambda!43117)))

(declare-fun b_lambda!43119 () Bool)

(assert (= b_lambda!43109 (or b!1387670 b_lambda!43119)))

(declare-fun bs!337246 () Bool)

(declare-fun d!396982 () Bool)

(assert (= bs!337246 (and d!396982 b!1387670)))

(declare-fun ruleValid!602 (LexerInterface!2134 Rule!4678) Bool)

(assert (=> bs!337246 (= (dynLambda!6453 lambda!59869 (rule!4200 t2!34)) (ruleValid!602 thiss!19762 (rule!4200 t2!34)))))

(declare-fun m!1563253 () Bool)

(assert (=> bs!337246 m!1563253))

(assert (=> d!396934 d!396982))

(declare-fun b_lambda!43121 () Bool)

(assert (= b_lambda!43107 (or b!1387678 b_lambda!43121)))

(declare-fun bs!337247 () Bool)

(declare-fun d!396984 () Bool)

(assert (= bs!337247 (and d!396984 b!1387678)))

(declare-fun res!626631 () Bool)

(declare-fun e!886966 () Bool)

(assert (=> bs!337247 (=> (not res!626631) (not e!886966))))

(assert (=> bs!337247 (= res!626631 (matchR!1744 lt!461655 lt!461904))))

(assert (=> bs!337247 (= (dynLambda!6461 lambda!59865 lt!461904) e!886966)))

(declare-fun b!1388569 () Bool)

(assert (=> b!1388569 (= e!886966 (isPrefix!1141 lt!461666 lt!461904))))

(assert (= (and bs!337247 res!626631) b!1388569))

(declare-fun m!1563255 () Bool)

(assert (=> bs!337247 m!1563255))

(declare-fun m!1563257 () Bool)

(assert (=> b!1388569 m!1563257))

(assert (=> d!396930 d!396984))

(declare-fun b_lambda!43123 () Bool)

(assert (= b_lambda!43041 (or b!1387681 b_lambda!43123)))

(declare-fun bs!337248 () Bool)

(declare-fun d!396986 () Bool)

(assert (= bs!337248 (and d!396986 b!1387681)))

(assert (=> bs!337248 (= (dynLambda!6450 lambda!59866 (h!19486 rules!2550)) (regex!2439 (h!19486 rules!2550)))))

(assert (=> b!1387782 d!396986))

(declare-fun b_lambda!43125 () Bool)

(assert (= b_lambda!43077 (or (and b!1387654 b_free!33733 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) (and b!1387684 b_free!33737 (= (toChars!3585 (transformation!2439 (rule!4200 t1!34))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) (and b!1387659 b_free!33741) (and b!1388540 b_free!33749 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t2!34))))) b_lambda!43125)))

(declare-fun b_lambda!43127 () Bool)

(assert (= b_lambda!43075 (or (and b!1387654 b_free!33733 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) (and b!1387684 b_free!33737) (and b!1387659 b_free!33741 (= (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) (and b!1388540 b_free!33749 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) b_lambda!43127)))

(declare-fun b_lambda!43129 () Bool)

(assert (= b_lambda!43059 (or b!1387681 b_lambda!43129)))

(declare-fun bs!337249 () Bool)

(declare-fun d!396988 () Bool)

(assert (= bs!337249 (and d!396988 b!1387681)))

(declare-fun res!626632 () Bool)

(declare-fun e!886967 () Bool)

(assert (=> bs!337249 (=> (not res!626632) (not e!886967))))

(assert (=> bs!337249 (= res!626632 (validRegex!1635 (h!19487 (map!3119 rules!2550 lambda!59866))))))

(assert (=> bs!337249 (= (dynLambda!6456 lambda!59867 (h!19487 (map!3119 rules!2550 lambda!59866))) e!886967)))

(declare-fun b!1388570 () Bool)

(assert (=> b!1388570 (= e!886967 (matchR!1744 (h!19487 (map!3119 rules!2550 lambda!59866)) lt!461656))))

(assert (= (and bs!337249 res!626632) b!1388570))

(declare-fun m!1563259 () Bool)

(assert (=> bs!337249 m!1563259))

(declare-fun m!1563261 () Bool)

(assert (=> b!1388570 m!1563261))

(assert (=> b!1388058 d!396988))

(declare-fun b_lambda!43131 () Bool)

(assert (= b_lambda!43105 (or (and b!1387654 b_free!33733 (= (toChars!3585 (transformation!2439 (h!19486 rules!2550))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) (and b!1387684 b_free!33737) (and b!1387659 b_free!33741 (= (toChars!3585 (transformation!2439 (rule!4200 t2!34))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) (and b!1388540 b_free!33749 (= (toChars!3585 (transformation!2439 (h!19486 (t!122318 rules!2550)))) (toChars!3585 (transformation!2439 (rule!4200 t1!34))))) b_lambda!43131)))

(declare-fun b_lambda!43133 () Bool)

(assert (= b_lambda!43057 (or b!1387681 b_lambda!43133)))

(declare-fun bs!337250 () Bool)

(declare-fun d!396990 () Bool)

(assert (= bs!337250 (and d!396990 b!1387681)))

(declare-fun res!626633 () Bool)

(declare-fun e!886968 () Bool)

(assert (=> bs!337250 (=> (not res!626633) (not e!886968))))

(assert (=> bs!337250 (= res!626633 (validRegex!1635 lt!461786))))

(assert (=> bs!337250 (= (dynLambda!6456 lambda!59867 lt!461786) e!886968)))

(declare-fun b!1388571 () Bool)

(assert (=> b!1388571 (= e!886968 (matchR!1744 lt!461786 lt!461656))))

(assert (= (and bs!337250 res!626633) b!1388571))

(declare-fun m!1563263 () Bool)

(assert (=> bs!337250 m!1563263))

(declare-fun m!1563265 () Bool)

(assert (=> b!1388571 m!1563265))

(assert (=> d!396778 d!396990))

(declare-fun b_lambda!43135 () Bool)

(assert (= b_lambda!43055 (or b!1387677 b_lambda!43135)))

(declare-fun bs!337251 () Bool)

(declare-fun d!396992 () Bool)

(assert (= bs!337251 (and d!396992 b!1387677)))

(assert (=> bs!337251 (= (dynLambda!6453 lambda!59868 (h!19486 rules!2550)) (= (regex!2439 (h!19486 rules!2550)) lt!461650))))

(assert (=> b!1388025 d!396992))

(declare-fun b_lambda!43137 () Bool)

(assert (= b_lambda!43053 (or b!1387677 b_lambda!43137)))

(declare-fun bs!337252 () Bool)

(declare-fun d!396994 () Bool)

(assert (= bs!337252 (and d!396994 b!1387677)))

(assert (=> bs!337252 (= (dynLambda!6453 lambda!59868 lt!461769) (= (regex!2439 lt!461769) lt!461650))))

(assert (=> d!396768 d!396994))

(declare-fun b_lambda!43139 () Bool)

(assert (= b_lambda!43111 (or b!1387670 b_lambda!43139)))

(declare-fun bs!337253 () Bool)

(declare-fun d!396996 () Bool)

(assert (= bs!337253 (and d!396996 b!1387670)))

(assert (=> bs!337253 (= (dynLambda!6453 lambda!59869 (rule!4200 t1!34)) (ruleValid!602 thiss!19762 (rule!4200 t1!34)))))

(declare-fun m!1563267 () Bool)

(assert (=> bs!337253 m!1563267))

(assert (=> d!396936 d!396996))

(declare-fun b_lambda!43141 () Bool)

(assert (= b_lambda!43113 (or b!1387670 b_lambda!43141)))

(declare-fun bs!337254 () Bool)

(declare-fun d!396998 () Bool)

(assert (= bs!337254 (and d!396998 b!1387670)))

(assert (=> bs!337254 (= (dynLambda!6453 lambda!59869 lt!461664) (ruleValid!602 thiss!19762 lt!461664))))

(declare-fun m!1563269 () Bool)

(assert (=> bs!337254 m!1563269))

(assert (=> d!396938 d!396998))

(check-sat (not b!1388378) b_and!92967 (not b!1388568) (not b!1388326) b_and!93025 (not d!396926) (not b!1388494) (not d!396766) (not b!1388524) (not b!1387823) (not tb!72759) (not d!396786) (not d!396880) (not bs!337246) (not b!1388062) (not b_next!34443) (not b_next!34451) (not d!396972) (not b_lambda!43123) (not d!396954) (not b!1388538) (not b!1388526) (not b!1387746) (not b!1388388) (not b!1387734) (not b!1388027) (not d!396930) (not d!396764) (not d!396910) (not b!1388328) (not b!1388045) (not b_next!34439) (not b!1388500) (not b!1388397) (not b!1387915) (not b!1387837) (not b!1388008) (not b_lambda!43127) (not d!396768) (not b!1388562) (not b!1388539) (not b!1388407) b_and!92971 (not bm!92884) (not b!1388433) (not d!396980) (not bm!92877) (not d!396934) (not b!1388451) (not d!396882) (not d!396946) (not d!396968) (not b!1388427) (not b!1388558) (not b!1388499) (not b!1388519) (not b!1387825) (not b!1388306) (not b!1388272) (not d!396668) (not bm!92839) (not b!1388152) (not b!1388439) (not b!1388553) (not d!396916) b_and!92963 (not d!396878) b_and!93023 (not d!396818) (not bs!337249) (not b!1388195) (not b!1388567) (not d!396966) (not bs!337250) (not d!396700) b_and!93027 (not bs!337247) (not d!396702) (not d!396952) (not b!1388150) (not b!1388556) (not b!1388529) (not d!396950) (not d!396788) (not d!396978) (not tb!72749) (not d!396904) (not b_lambda!43119) (not b!1388569) (not b!1388060) (not b!1387888) (not b!1388508) (not d!396814) (not bm!92880) (not d!396730) (not b!1388176) (not b!1388570) (not bs!337254) (not b!1388418) (not b_lambda!43129) (not b!1388525) (not d!396914) (not d!396724) (not d!396772) (not d!396936) (not b!1388315) (not d!396778) (not d!396870) b_and!93021 (not b!1388386) (not d!396906) (not d!396962) (not d!396688) (not b!1388384) (not b!1388417) (not b!1388415) (not b!1388379) (not b!1388059) (not d!396928) (not b!1387830) (not b!1388505) (not b!1387827) (not bm!92865) (not b!1388090) (not b!1388458) (not d!396932) (not b_lambda!43133) (not b!1388495) (not d!396944) (not b!1388454) (not b!1388396) (not b!1388447) (not b!1388493) (not b!1388327) (not b!1387828) (not d!396708) (not d!396924) (not bm!92822) (not bm!92878) (not b!1388391) (not d!396774) (not d!396918) (not b_lambda!43125) (not b!1388456) (not b!1388557) (not b!1388009) (not bm!92882) (not d!396974) (not b!1388552) (not bm!92866) (not d!396922) (not b!1388271) (not b!1388151) (not b!1387824) (not d!396948) (not b!1387914) (not b!1388382) (not bs!337253) (not b!1388442) (not b!1388426) (not b!1388028) (not b!1388438) (not d!396770) (not b_lambda!43137) (not b!1388521) (not b_lambda!43141) (not b!1388421) (not b!1388452) (not bm!92883) (not bm!92867) (not b!1388561) (not d!396776) (not b!1388522) (not d!396920) (not d!396726) (not b!1388376) (not b!1388453) (not b_lambda!43135) (not b!1388497) (not b!1388390) (not d!396684) (not d!396678) (not b!1388030) (not b!1387913) (not d!396958) (not b_next!34435) (not b_lambda!43131) (not b!1388465) (not bm!92838) (not d!396908) (not d!396938) (not b_next!34437) (not b!1388410) (not d!396942) (not b!1388463) (not b!1388387) (not d!396780) (not b!1388506) (not b!1387829) (not b_next!34441) (not bm!92879) tp_is_empty!6779 (not b!1387822) b_and!93029 (not b_lambda!43117) (not b!1388461) (not d!396690) (not b!1388423) (not b!1388571) (not d!396868) (not b_lambda!43139) (not b!1388520) (not b!1388012) (not d!396912) (not b_next!34445) (not d!396704) (not b!1388270) (not b!1388307) (not b!1388414) (not d!396970) (not b_lambda!43121) (not b!1388445) (not b!1388467) (not b!1388498) (not b!1388033) (not b!1388492) (not d!396832) (not b!1388462) (not b!1388010) (not b_next!34453) (not b!1388408) (not b!1388441) (not b!1387782) (not b!1388554) (not b!1388375) (not b!1388560))
(check-sat (not b_next!34439) b_and!92971 b_and!93027 b_and!93021 (not b_next!34435) (not b_next!34437) (not b_next!34441) (not b_next!34453) b_and!92967 b_and!93025 (not b_next!34443) (not b_next!34451) b_and!92963 b_and!93023 b_and!93029 (not b_next!34445))
