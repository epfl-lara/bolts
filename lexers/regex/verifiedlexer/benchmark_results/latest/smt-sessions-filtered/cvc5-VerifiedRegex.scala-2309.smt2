; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!113740 () Bool)

(assert start!113740)

(declare-fun b!1292780 () Bool)

(declare-fun b_free!30583 () Bool)

(declare-fun b_next!31287 () Bool)

(assert (=> b!1292780 (= b_free!30583 (not b_next!31287))))

(declare-fun tp!376889 () Bool)

(declare-fun b_and!86147 () Bool)

(assert (=> b!1292780 (= tp!376889 b_and!86147)))

(declare-fun b_free!30585 () Bool)

(declare-fun b_next!31289 () Bool)

(assert (=> b!1292780 (= b_free!30585 (not b_next!31289))))

(declare-fun tp!376891 () Bool)

(declare-fun b_and!86149 () Bool)

(assert (=> b!1292780 (= tp!376891 b_and!86149)))

(declare-fun b!1292786 () Bool)

(declare-fun b_free!30587 () Bool)

(declare-fun b_next!31291 () Bool)

(assert (=> b!1292786 (= b_free!30587 (not b_next!31291))))

(declare-fun tp!376893 () Bool)

(declare-fun b_and!86151 () Bool)

(assert (=> b!1292786 (= tp!376893 b_and!86151)))

(declare-fun b_free!30589 () Bool)

(declare-fun b_next!31293 () Bool)

(assert (=> b!1292786 (= b_free!30589 (not b_next!31293))))

(declare-fun tp!376890 () Bool)

(declare-fun b_and!86153 () Bool)

(assert (=> b!1292786 (= tp!376890 b_and!86153)))

(declare-fun b!1292774 () Bool)

(declare-fun b_free!30591 () Bool)

(declare-fun b_next!31295 () Bool)

(assert (=> b!1292774 (= b_free!30591 (not b_next!31295))))

(declare-fun tp!376898 () Bool)

(declare-fun b_and!86155 () Bool)

(assert (=> b!1292774 (= tp!376898 b_and!86155)))

(declare-fun b_free!30593 () Bool)

(declare-fun b_next!31297 () Bool)

(assert (=> b!1292774 (= b_free!30593 (not b_next!31297))))

(declare-fun tp!376896 () Bool)

(declare-fun b_and!86157 () Bool)

(assert (=> b!1292774 (= tp!376896 b_and!86157)))

(declare-fun b!1292772 () Bool)

(assert (=> b!1292772 true))

(assert (=> b!1292772 true))

(declare-fun tp!376899 () Bool)

(declare-fun b!1292773 () Bool)

(declare-fun e!829068 () Bool)

(declare-fun e!829072 () Bool)

(declare-datatypes ((List!12992 0))(
  ( (Nil!12926) (Cons!12926 (h!18327 (_ BitVec 16)) (t!117267 List!12992)) )
))
(declare-datatypes ((TokenValue!2316 0))(
  ( (FloatLiteralValue!4632 (text!16657 List!12992)) (TokenValueExt!2315 (__x!8461 Int)) (Broken!11580 (value!73049 List!12992)) (Object!2381) (End!2316) (Def!2316) (Underscore!2316) (Match!2316) (Else!2316) (Error!2316) (Case!2316) (If!2316) (Extends!2316) (Abstract!2316) (Class!2316) (Val!2316) (DelimiterValue!4632 (del!2376 List!12992)) (KeywordValue!2322 (value!73050 List!12992)) (CommentValue!4632 (value!73051 List!12992)) (WhitespaceValue!4632 (value!73052 List!12992)) (IndentationValue!2316 (value!73053 List!12992)) (String!15817) (Int32!2316) (Broken!11581 (value!73054 List!12992)) (Boolean!2317) (Unit!19074) (OperatorValue!2319 (op!2376 List!12992)) (IdentifierValue!4632 (value!73055 List!12992)) (IdentifierValue!4633 (value!73056 List!12992)) (WhitespaceValue!4633 (value!73057 List!12992)) (True!4632) (False!4632) (Broken!11582 (value!73058 List!12992)) (Broken!11583 (value!73059 List!12992)) (True!4633) (RightBrace!2316) (RightBracket!2316) (Colon!2316) (Null!2316) (Comma!2316) (LeftBracket!2316) (False!4633) (LeftBrace!2316) (ImaginaryLiteralValue!2316 (text!16658 List!12992)) (StringLiteralValue!6948 (value!73060 List!12992)) (EOFValue!2316 (value!73061 List!12992)) (IdentValue!2316 (value!73062 List!12992)) (DelimiterValue!4633 (value!73063 List!12992)) (DedentValue!2316 (value!73064 List!12992)) (NewLineValue!2316 (value!73065 List!12992)) (IntegerValue!6948 (value!73066 (_ BitVec 32)) (text!16659 List!12992)) (IntegerValue!6949 (value!73067 Int) (text!16660 List!12992)) (Times!2316) (Or!2316) (Equal!2316) (Minus!2316) (Broken!11584 (value!73068 List!12992)) (And!2316) (Div!2316) (LessEqual!2316) (Mod!2316) (Concat!5856) (Not!2316) (Plus!2316) (SpaceValue!2316 (value!73069 List!12992)) (IntegerValue!6950 (value!73070 Int) (text!16661 List!12992)) (StringLiteralValue!6949 (text!16662 List!12992)) (FloatLiteralValue!4633 (text!16663 List!12992)) (BytesLiteralValue!2316 (value!73071 List!12992)) (CommentValue!4633 (value!73072 List!12992)) (StringLiteralValue!6950 (value!73073 List!12992)) (ErrorTokenValue!2316 (msg!2377 List!12992)) )
))
(declare-datatypes ((C!7370 0))(
  ( (C!7371 (val!4245 Int)) )
))
(declare-datatypes ((List!12993 0))(
  ( (Nil!12927) (Cons!12927 (h!18328 C!7370) (t!117268 List!12993)) )
))
(declare-datatypes ((IArray!8497 0))(
  ( (IArray!8498 (innerList!4306 List!12993)) )
))
(declare-datatypes ((Conc!4246 0))(
  ( (Node!4246 (left!11119 Conc!4246) (right!11449 Conc!4246) (csize!8722 Int) (cheight!4457 Int)) (Leaf!6556 (xs!6957 IArray!8497) (csize!8723 Int)) (Empty!4246) )
))
(declare-datatypes ((BalanceConc!8432 0))(
  ( (BalanceConc!8433 (c!212801 Conc!4246)) )
))
(declare-datatypes ((String!15818 0))(
  ( (String!15819 (value!73074 String)) )
))
(declare-datatypes ((Regex!3540 0))(
  ( (ElementMatch!3540 (c!212802 C!7370)) (Concat!5857 (regOne!7592 Regex!3540) (regTwo!7592 Regex!3540)) (EmptyExpr!3540) (Star!3540 (reg!3869 Regex!3540)) (EmptyLang!3540) (Union!3540 (regOne!7593 Regex!3540) (regTwo!7593 Regex!3540)) )
))
(declare-datatypes ((TokenValueInjection!4292 0))(
  ( (TokenValueInjection!4293 (toValue!3429 Int) (toChars!3288 Int)) )
))
(declare-datatypes ((Rule!4252 0))(
  ( (Rule!4253 (regex!2226 Regex!3540) (tag!2488 String!15818) (isSeparator!2226 Bool) (transformation!2226 TokenValueInjection!4292)) )
))
(declare-datatypes ((Token!4114 0))(
  ( (Token!4115 (value!73075 TokenValue!2316) (rule!3965 Rule!4252) (size!10556 Int) (originalCharacters!3088 List!12993)) )
))
(declare-fun t2!34 () Token!4114)

(declare-fun inv!21 (TokenValue!2316) Bool)

(assert (=> b!1292773 (= e!829072 (and (inv!21 (value!73075 t2!34)) e!829068 tp!376899))))

(declare-fun e!829061 () Bool)

(assert (=> b!1292774 (= e!829061 (and tp!376898 tp!376896))))

(declare-fun b!1292775 () Bool)

(declare-fun res!579293 () Bool)

(declare-fun e!829076 () Bool)

(assert (=> b!1292775 (=> (not res!579293) (not e!829076))))

(declare-datatypes ((List!12994 0))(
  ( (Nil!12928) (Cons!12928 (h!18329 Rule!4252) (t!117269 List!12994)) )
))
(declare-fun rules!2550 () List!12994)

(declare-fun isEmpty!7676 (List!12994) Bool)

(assert (=> b!1292775 (= res!579293 (not (isEmpty!7676 rules!2550)))))

(declare-fun b!1292776 () Bool)

(declare-fun e!829060 () Bool)

(declare-fun tp!376900 () Bool)

(declare-fun inv!17348 (String!15818) Bool)

(declare-fun inv!17351 (TokenValueInjection!4292) Bool)

(assert (=> b!1292776 (= e!829068 (and tp!376900 (inv!17348 (tag!2488 (rule!3965 t2!34))) (inv!17351 (transformation!2226 (rule!3965 t2!34))) e!829060))))

(declare-fun b!1292777 () Bool)

(declare-fun e!829071 () Bool)

(declare-fun lt!425464 () List!12993)

(declare-fun lt!425466 () List!12993)

(declare-fun isPrefix!1051 (List!12993 List!12993) Bool)

(assert (=> b!1292777 (= e!829071 (isPrefix!1051 lt!425464 lt!425466))))

(declare-fun b!1292778 () Bool)

(declare-fun res!579295 () Bool)

(assert (=> b!1292778 (=> (not res!579295) (not e!829076))))

(declare-datatypes ((LexerInterface!1921 0))(
  ( (LexerInterfaceExt!1918 (__x!8462 Int)) (Lexer!1919) )
))
(declare-fun thiss!19762 () LexerInterface!1921)

(declare-fun rulesProduceIndividualToken!890 (LexerInterface!1921 List!12994 Token!4114) Bool)

(assert (=> b!1292778 (= res!579295 (rulesProduceIndividualToken!890 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1292779 () Bool)

(declare-fun res!579287 () Bool)

(assert (=> b!1292779 (=> (not res!579287) (not e!829076))))

(declare-fun rulesInvariant!1791 (LexerInterface!1921 List!12994) Bool)

(assert (=> b!1292779 (= res!579287 (rulesInvariant!1791 thiss!19762 rules!2550))))

(assert (=> b!1292780 (= e!829060 (and tp!376889 tp!376891))))

(declare-fun res!579294 () Bool)

(assert (=> start!113740 (=> (not res!579294) (not e!829076))))

(assert (=> start!113740 (= res!579294 (is-Lexer!1919 thiss!19762))))

(assert (=> start!113740 e!829076))

(assert (=> start!113740 true))

(declare-fun e!829064 () Bool)

(assert (=> start!113740 e!829064))

(declare-fun t1!34 () Token!4114)

(declare-fun e!829075 () Bool)

(declare-fun inv!17352 (Token!4114) Bool)

(assert (=> start!113740 (and (inv!17352 t1!34) e!829075)))

(assert (=> start!113740 (and (inv!17352 t2!34) e!829072)))

(declare-fun e!829069 () Bool)

(declare-fun e!829063 () Bool)

(assert (=> b!1292772 (= e!829069 (not e!829063))))

(declare-fun res!579284 () Bool)

(assert (=> b!1292772 (=> res!579284 e!829063)))

(declare-fun lambda!50820 () Int)

(declare-fun Exists!698 (Int) Bool)

(assert (=> b!1292772 (= res!579284 (not (Exists!698 lambda!50820)))))

(assert (=> b!1292772 (Exists!698 lambda!50820)))

(declare-datatypes ((Unit!19075 0))(
  ( (Unit!19076) )
))
(declare-fun lt!425463 () Unit!19075)

(declare-fun lt!425465 () Regex!3540)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!16 (Regex!3540 List!12993) Unit!19075)

(assert (=> b!1292772 (= lt!425463 (lemmaPrefixMatchThenExistsStringThatMatches!16 lt!425465 lt!425464))))

(declare-fun b!1292781 () Bool)

(assert (=> b!1292781 (= e!829063 e!829071)))

(declare-fun res!579291 () Bool)

(assert (=> b!1292781 (=> res!579291 e!829071)))

(declare-fun size!10557 (List!12993) Int)

(assert (=> b!1292781 (= res!579291 (< (size!10557 lt!425466) (size!10557 lt!425464)))))

(declare-fun pickWitness!3 (Int) List!12993)

(assert (=> b!1292781 (= lt!425466 (pickWitness!3 lambda!50820))))

(declare-fun b!1292782 () Bool)

(declare-fun res!579285 () Bool)

(assert (=> b!1292782 (=> (not res!579285) (not e!829076))))

(assert (=> b!1292782 (= res!579285 (rulesProduceIndividualToken!890 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1292783 () Bool)

(declare-fun e!829073 () Bool)

(assert (=> b!1292783 (= e!829076 e!829073)))

(declare-fun res!579290 () Bool)

(assert (=> b!1292783 (=> (not res!579290) (not e!829073))))

(declare-fun lt!425467 () BalanceConc!8432)

(declare-fun size!10558 (BalanceConc!8432) Int)

(assert (=> b!1292783 (= res!579290 (> (size!10558 lt!425467) 0))))

(declare-fun charsOf!1198 (Token!4114) BalanceConc!8432)

(assert (=> b!1292783 (= lt!425467 (charsOf!1198 t2!34))))

(declare-fun b!1292784 () Bool)

(declare-fun res!579289 () Bool)

(assert (=> b!1292784 (=> (not res!579289) (not e!829076))))

(assert (=> b!1292784 (= res!579289 (not (= (isSeparator!2226 (rule!3965 t1!34)) (isSeparator!2226 (rule!3965 t2!34)))))))

(declare-fun e!829059 () Bool)

(declare-fun tp!376894 () Bool)

(declare-fun b!1292785 () Bool)

(assert (=> b!1292785 (= e!829059 (and tp!376894 (inv!17348 (tag!2488 (h!18329 rules!2550))) (inv!17351 (transformation!2226 (h!18329 rules!2550))) e!829061))))

(declare-fun e!829062 () Bool)

(assert (=> b!1292786 (= e!829062 (and tp!376893 tp!376890))))

(declare-fun b!1292787 () Bool)

(declare-fun res!579292 () Bool)

(assert (=> b!1292787 (=> (not res!579292) (not e!829073))))

(declare-fun separableTokensPredicate!204 (LexerInterface!1921 Token!4114 Token!4114 List!12994) Bool)

(assert (=> b!1292787 (= res!579292 (not (separableTokensPredicate!204 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1292788 () Bool)

(declare-fun tp!376892 () Bool)

(assert (=> b!1292788 (= e!829064 (and e!829059 tp!376892))))

(declare-fun b!1292789 () Bool)

(declare-fun res!579288 () Bool)

(assert (=> b!1292789 (=> (not res!579288) (not e!829073))))

(declare-fun sepAndNonSepRulesDisjointChars!599 (List!12994 List!12994) Bool)

(assert (=> b!1292789 (= res!579288 (sepAndNonSepRulesDisjointChars!599 rules!2550 rules!2550))))

(declare-fun b!1292790 () Bool)

(declare-fun tp!376897 () Bool)

(declare-fun e!829067 () Bool)

(assert (=> b!1292790 (= e!829067 (and tp!376897 (inv!17348 (tag!2488 (rule!3965 t1!34))) (inv!17351 (transformation!2226 (rule!3965 t1!34))) e!829062))))

(declare-fun b!1292791 () Bool)

(assert (=> b!1292791 (= e!829073 e!829069)))

(declare-fun res!579286 () Bool)

(assert (=> b!1292791 (=> (not res!579286) (not e!829069))))

(declare-fun prefixMatch!53 (Regex!3540 List!12993) Bool)

(assert (=> b!1292791 (= res!579286 (prefixMatch!53 lt!425465 lt!425464))))

(declare-fun rulesRegex!111 (LexerInterface!1921 List!12994) Regex!3540)

(assert (=> b!1292791 (= lt!425465 (rulesRegex!111 thiss!19762 rules!2550))))

(declare-fun ++!3277 (List!12993 List!12993) List!12993)

(declare-fun list!4830 (BalanceConc!8432) List!12993)

(declare-fun apply!2836 (BalanceConc!8432 Int) C!7370)

(assert (=> b!1292791 (= lt!425464 (++!3277 (list!4830 (charsOf!1198 t1!34)) (Cons!12927 (apply!2836 lt!425467 0) Nil!12927)))))

(declare-fun tp!376895 () Bool)

(declare-fun b!1292792 () Bool)

(assert (=> b!1292792 (= e!829075 (and (inv!21 (value!73075 t1!34)) e!829067 tp!376895))))

(assert (= (and start!113740 res!579294) b!1292775))

(assert (= (and b!1292775 res!579293) b!1292779))

(assert (= (and b!1292779 res!579287) b!1292782))

(assert (= (and b!1292782 res!579285) b!1292778))

(assert (= (and b!1292778 res!579295) b!1292784))

(assert (= (and b!1292784 res!579289) b!1292783))

(assert (= (and b!1292783 res!579290) b!1292789))

(assert (= (and b!1292789 res!579288) b!1292787))

(assert (= (and b!1292787 res!579292) b!1292791))

(assert (= (and b!1292791 res!579286) b!1292772))

(assert (= (and b!1292772 (not res!579284)) b!1292781))

(assert (= (and b!1292781 (not res!579291)) b!1292777))

(assert (= b!1292785 b!1292774))

(assert (= b!1292788 b!1292785))

(assert (= (and start!113740 (is-Cons!12928 rules!2550)) b!1292788))

(assert (= b!1292790 b!1292786))

(assert (= b!1292792 b!1292790))

(assert (= start!113740 b!1292792))

(assert (= b!1292776 b!1292780))

(assert (= b!1292773 b!1292776))

(assert (= start!113740 b!1292773))

(declare-fun m!1443575 () Bool)

(assert (=> b!1292781 m!1443575))

(declare-fun m!1443577 () Bool)

(assert (=> b!1292781 m!1443577))

(declare-fun m!1443579 () Bool)

(assert (=> b!1292781 m!1443579))

(declare-fun m!1443581 () Bool)

(assert (=> b!1292792 m!1443581))

(declare-fun m!1443583 () Bool)

(assert (=> b!1292782 m!1443583))

(declare-fun m!1443585 () Bool)

(assert (=> b!1292789 m!1443585))

(declare-fun m!1443587 () Bool)

(assert (=> start!113740 m!1443587))

(declare-fun m!1443589 () Bool)

(assert (=> start!113740 m!1443589))

(declare-fun m!1443591 () Bool)

(assert (=> b!1292776 m!1443591))

(declare-fun m!1443593 () Bool)

(assert (=> b!1292776 m!1443593))

(declare-fun m!1443595 () Bool)

(assert (=> b!1292775 m!1443595))

(declare-fun m!1443597 () Bool)

(assert (=> b!1292787 m!1443597))

(declare-fun m!1443599 () Bool)

(assert (=> b!1292772 m!1443599))

(assert (=> b!1292772 m!1443599))

(declare-fun m!1443601 () Bool)

(assert (=> b!1292772 m!1443601))

(declare-fun m!1443603 () Bool)

(assert (=> b!1292790 m!1443603))

(declare-fun m!1443605 () Bool)

(assert (=> b!1292790 m!1443605))

(declare-fun m!1443607 () Bool)

(assert (=> b!1292778 m!1443607))

(declare-fun m!1443609 () Bool)

(assert (=> b!1292783 m!1443609))

(declare-fun m!1443611 () Bool)

(assert (=> b!1292783 m!1443611))

(declare-fun m!1443613 () Bool)

(assert (=> b!1292779 m!1443613))

(declare-fun m!1443615 () Bool)

(assert (=> b!1292777 m!1443615))

(declare-fun m!1443617 () Bool)

(assert (=> b!1292785 m!1443617))

(declare-fun m!1443619 () Bool)

(assert (=> b!1292785 m!1443619))

(declare-fun m!1443621 () Bool)

(assert (=> b!1292791 m!1443621))

(declare-fun m!1443623 () Bool)

(assert (=> b!1292791 m!1443623))

(declare-fun m!1443625 () Bool)

(assert (=> b!1292791 m!1443625))

(assert (=> b!1292791 m!1443621))

(assert (=> b!1292791 m!1443623))

(declare-fun m!1443627 () Bool)

(assert (=> b!1292791 m!1443627))

(declare-fun m!1443629 () Bool)

(assert (=> b!1292791 m!1443629))

(declare-fun m!1443631 () Bool)

(assert (=> b!1292791 m!1443631))

(declare-fun m!1443633 () Bool)

(assert (=> b!1292773 m!1443633))

(push 1)

(assert b_and!86157)

(assert b_and!86149)

(assert (not b!1292775))

(assert (not b_next!31295))

(assert (not b_next!31289))

(assert (not b!1292779))

(assert (not b!1292783))

(assert (not b!1292792))

(assert (not b!1292791))

(assert (not b!1292777))

(assert (not b!1292787))

(assert (not b!1292772))

(assert (not b!1292789))

(assert (not b!1292781))

(assert (not b!1292782))

(assert (not b!1292778))

(assert (not b!1292788))

(assert b_and!86147)

(assert (not b_next!31293))

(assert (not start!113740))

(assert b_and!86151)

(assert (not b!1292785))

(assert b_and!86155)

(assert (not b_next!31297))

(assert (not b_next!31287))

(assert (not b!1292776))

(assert (not b_next!31291))

(assert b_and!86153)

(assert (not b!1292790))

(assert (not b!1292773))

(check-sat)

(pop 1)

(push 1)

(assert b_and!86157)

(assert b_and!86149)

(assert (not b_next!31295))

(assert (not b_next!31289))

(assert b_and!86153)

(assert b_and!86147)

(assert (not b_next!31293))

(assert b_and!86151)

(assert b_and!86155)

(assert (not b_next!31297))

(assert (not b_next!31287))

(assert (not b_next!31291))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!364558 () Bool)

(declare-fun prefixMatchZipperSequence!143 (Regex!3540 BalanceConc!8432) Bool)

(declare-fun ++!3279 (BalanceConc!8432 BalanceConc!8432) BalanceConc!8432)

(declare-fun singletonSeq!807 (C!7370) BalanceConc!8432)

(assert (=> d!364558 (= (separableTokensPredicate!204 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!143 (rulesRegex!111 thiss!19762 rules!2550) (++!3279 (charsOf!1198 t1!34) (singletonSeq!807 (apply!2836 (charsOf!1198 t2!34) 0))))))))

(declare-fun bs!328695 () Bool)

(assert (= bs!328695 d!364558))

(assert (=> bs!328695 m!1443621))

(declare-fun m!1443719 () Bool)

(assert (=> bs!328695 m!1443719))

(declare-fun m!1443721 () Bool)

(assert (=> bs!328695 m!1443721))

(assert (=> bs!328695 m!1443631))

(assert (=> bs!328695 m!1443721))

(declare-fun m!1443723 () Bool)

(assert (=> bs!328695 m!1443723))

(assert (=> bs!328695 m!1443611))

(declare-fun m!1443725 () Bool)

(assert (=> bs!328695 m!1443725))

(assert (=> bs!328695 m!1443719))

(assert (=> bs!328695 m!1443621))

(assert (=> bs!328695 m!1443631))

(assert (=> bs!328695 m!1443611))

(assert (=> bs!328695 m!1443725))

(assert (=> b!1292787 d!364558))

(declare-fun d!364566 () Bool)

(assert (=> d!364566 (= (inv!17348 (tag!2488 (rule!3965 t2!34))) (= (mod (str.len (value!73074 (tag!2488 (rule!3965 t2!34)))) 2) 0))))

(assert (=> b!1292776 d!364566))

(declare-fun d!364568 () Bool)

(declare-fun res!579356 () Bool)

(declare-fun e!829151 () Bool)

(assert (=> d!364568 (=> (not res!579356) (not e!829151))))

(declare-fun semiInverseModEq!845 (Int Int) Bool)

(assert (=> d!364568 (= res!579356 (semiInverseModEq!845 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toValue!3429 (transformation!2226 (rule!3965 t2!34)))))))

(assert (=> d!364568 (= (inv!17351 (transformation!2226 (rule!3965 t2!34))) e!829151)))

(declare-fun b!1292886 () Bool)

(declare-fun equivClasses!804 (Int Int) Bool)

(assert (=> b!1292886 (= e!829151 (equivClasses!804 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toValue!3429 (transformation!2226 (rule!3965 t2!34)))))))

(assert (= (and d!364568 res!579356) b!1292886))

(declare-fun m!1443727 () Bool)

(assert (=> d!364568 m!1443727))

(declare-fun m!1443729 () Bool)

(assert (=> b!1292886 m!1443729))

(assert (=> b!1292776 d!364568))

(declare-fun d!364570 () Bool)

(declare-fun e!829160 () Bool)

(assert (=> d!364570 e!829160))

(declare-fun res!579368 () Bool)

(assert (=> d!364570 (=> res!579368 e!829160)))

(declare-fun lt!425490 () Bool)

(assert (=> d!364570 (= res!579368 (not lt!425490))))

(declare-fun e!829159 () Bool)

(assert (=> d!364570 (= lt!425490 e!829159)))

(declare-fun res!579366 () Bool)

(assert (=> d!364570 (=> res!579366 e!829159)))

(assert (=> d!364570 (= res!579366 (is-Nil!12927 lt!425464))))

(assert (=> d!364570 (= (isPrefix!1051 lt!425464 lt!425466) lt!425490)))

(declare-fun b!1292896 () Bool)

(declare-fun res!579367 () Bool)

(declare-fun e!829158 () Bool)

(assert (=> b!1292896 (=> (not res!579367) (not e!829158))))

(declare-fun head!2217 (List!12993) C!7370)

(assert (=> b!1292896 (= res!579367 (= (head!2217 lt!425464) (head!2217 lt!425466)))))

(declare-fun b!1292895 () Bool)

(assert (=> b!1292895 (= e!829159 e!829158)))

(declare-fun res!579365 () Bool)

(assert (=> b!1292895 (=> (not res!579365) (not e!829158))))

(assert (=> b!1292895 (= res!579365 (not (is-Nil!12927 lt!425466)))))

(declare-fun b!1292897 () Bool)

(declare-fun tail!1845 (List!12993) List!12993)

(assert (=> b!1292897 (= e!829158 (isPrefix!1051 (tail!1845 lt!425464) (tail!1845 lt!425466)))))

(declare-fun b!1292898 () Bool)

(assert (=> b!1292898 (= e!829160 (>= (size!10557 lt!425466) (size!10557 lt!425464)))))

(assert (= (and d!364570 (not res!579366)) b!1292895))

(assert (= (and b!1292895 res!579365) b!1292896))

(assert (= (and b!1292896 res!579367) b!1292897))

(assert (= (and d!364570 (not res!579368)) b!1292898))

(declare-fun m!1443737 () Bool)

(assert (=> b!1292896 m!1443737))

(declare-fun m!1443739 () Bool)

(assert (=> b!1292896 m!1443739))

(declare-fun m!1443741 () Bool)

(assert (=> b!1292897 m!1443741))

(declare-fun m!1443743 () Bool)

(assert (=> b!1292897 m!1443743))

(assert (=> b!1292897 m!1443741))

(assert (=> b!1292897 m!1443743))

(declare-fun m!1443745 () Bool)

(assert (=> b!1292897 m!1443745))

(assert (=> b!1292898 m!1443575))

(assert (=> b!1292898 m!1443577))

(assert (=> b!1292777 d!364570))

(declare-fun b!1292909 () Bool)

(declare-fun e!829169 () Bool)

(declare-fun inv!17 (TokenValue!2316) Bool)

(assert (=> b!1292909 (= e!829169 (inv!17 (value!73075 t2!34)))))

(declare-fun d!364574 () Bool)

(declare-fun c!212809 () Bool)

(assert (=> d!364574 (= c!212809 (is-IntegerValue!6948 (value!73075 t2!34)))))

(declare-fun e!829168 () Bool)

(assert (=> d!364574 (= (inv!21 (value!73075 t2!34)) e!829168)))

(declare-fun b!1292910 () Bool)

(declare-fun e!829167 () Bool)

(declare-fun inv!15 (TokenValue!2316) Bool)

(assert (=> b!1292910 (= e!829167 (inv!15 (value!73075 t2!34)))))

(declare-fun b!1292911 () Bool)

(assert (=> b!1292911 (= e!829168 e!829169)))

(declare-fun c!212810 () Bool)

(assert (=> b!1292911 (= c!212810 (is-IntegerValue!6949 (value!73075 t2!34)))))

(declare-fun b!1292912 () Bool)

(declare-fun inv!16 (TokenValue!2316) Bool)

(assert (=> b!1292912 (= e!829168 (inv!16 (value!73075 t2!34)))))

(declare-fun b!1292913 () Bool)

(declare-fun res!579371 () Bool)

(assert (=> b!1292913 (=> res!579371 e!829167)))

(assert (=> b!1292913 (= res!579371 (not (is-IntegerValue!6950 (value!73075 t2!34))))))

(assert (=> b!1292913 (= e!829169 e!829167)))

(assert (= (and d!364574 c!212809) b!1292912))

(assert (= (and d!364574 (not c!212809)) b!1292911))

(assert (= (and b!1292911 c!212810) b!1292909))

(assert (= (and b!1292911 (not c!212810)) b!1292913))

(assert (= (and b!1292913 (not res!579371)) b!1292910))

(declare-fun m!1443749 () Bool)

(assert (=> b!1292909 m!1443749))

(declare-fun m!1443751 () Bool)

(assert (=> b!1292910 m!1443751))

(declare-fun m!1443753 () Bool)

(assert (=> b!1292912 m!1443753))

(assert (=> b!1292773 d!364574))

(declare-fun d!364578 () Bool)

(assert (=> d!364578 (= (isEmpty!7676 rules!2550) (is-Nil!12928 rules!2550))))

(assert (=> b!1292775 d!364578))

(declare-fun d!364580 () Bool)

(assert (=> d!364580 (= (inv!17348 (tag!2488 (h!18329 rules!2550))) (= (mod (str.len (value!73074 (tag!2488 (h!18329 rules!2550)))) 2) 0))))

(assert (=> b!1292785 d!364580))

(declare-fun d!364582 () Bool)

(declare-fun res!579372 () Bool)

(declare-fun e!829172 () Bool)

(assert (=> d!364582 (=> (not res!579372) (not e!829172))))

(assert (=> d!364582 (= res!579372 (semiInverseModEq!845 (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toValue!3429 (transformation!2226 (h!18329 rules!2550)))))))

(assert (=> d!364582 (= (inv!17351 (transformation!2226 (h!18329 rules!2550))) e!829172)))

(declare-fun b!1292918 () Bool)

(assert (=> b!1292918 (= e!829172 (equivClasses!804 (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toValue!3429 (transformation!2226 (h!18329 rules!2550)))))))

(assert (= (and d!364582 res!579372) b!1292918))

(declare-fun m!1443755 () Bool)

(assert (=> d!364582 m!1443755))

(declare-fun m!1443757 () Bool)

(assert (=> b!1292918 m!1443757))

(assert (=> b!1292785 d!364582))

(declare-fun b!1292919 () Bool)

(declare-fun e!829175 () Bool)

(assert (=> b!1292919 (= e!829175 (inv!17 (value!73075 t1!34)))))

(declare-fun d!364584 () Bool)

(declare-fun c!212813 () Bool)

(assert (=> d!364584 (= c!212813 (is-IntegerValue!6948 (value!73075 t1!34)))))

(declare-fun e!829174 () Bool)

(assert (=> d!364584 (= (inv!21 (value!73075 t1!34)) e!829174)))

(declare-fun b!1292920 () Bool)

(declare-fun e!829173 () Bool)

(assert (=> b!1292920 (= e!829173 (inv!15 (value!73075 t1!34)))))

(declare-fun b!1292921 () Bool)

(assert (=> b!1292921 (= e!829174 e!829175)))

(declare-fun c!212814 () Bool)

(assert (=> b!1292921 (= c!212814 (is-IntegerValue!6949 (value!73075 t1!34)))))

(declare-fun b!1292922 () Bool)

(assert (=> b!1292922 (= e!829174 (inv!16 (value!73075 t1!34)))))

(declare-fun b!1292923 () Bool)

(declare-fun res!579373 () Bool)

(assert (=> b!1292923 (=> res!579373 e!829173)))

(assert (=> b!1292923 (= res!579373 (not (is-IntegerValue!6950 (value!73075 t1!34))))))

(assert (=> b!1292923 (= e!829175 e!829173)))

(assert (= (and d!364584 c!212813) b!1292922))

(assert (= (and d!364584 (not c!212813)) b!1292921))

(assert (= (and b!1292921 c!212814) b!1292919))

(assert (= (and b!1292921 (not c!212814)) b!1292923))

(assert (= (and b!1292923 (not res!579373)) b!1292920))

(declare-fun m!1443759 () Bool)

(assert (=> b!1292919 m!1443759))

(declare-fun m!1443761 () Bool)

(assert (=> b!1292920 m!1443761))

(declare-fun m!1443763 () Bool)

(assert (=> b!1292922 m!1443763))

(assert (=> b!1292792 d!364584))

(declare-fun d!364586 () Bool)

(declare-fun lt!425497 () Int)

(assert (=> d!364586 (>= lt!425497 0)))

(declare-fun e!829179 () Int)

(assert (=> d!364586 (= lt!425497 e!829179)))

(declare-fun c!212818 () Bool)

(assert (=> d!364586 (= c!212818 (is-Nil!12927 lt!425466))))

(assert (=> d!364586 (= (size!10557 lt!425466) lt!425497)))

(declare-fun b!1292930 () Bool)

(assert (=> b!1292930 (= e!829179 0)))

(declare-fun b!1292931 () Bool)

(assert (=> b!1292931 (= e!829179 (+ 1 (size!10557 (t!117268 lt!425466))))))

(assert (= (and d!364586 c!212818) b!1292930))

(assert (= (and d!364586 (not c!212818)) b!1292931))

(declare-fun m!1443767 () Bool)

(assert (=> b!1292931 m!1443767))

(assert (=> b!1292781 d!364586))

(declare-fun d!364590 () Bool)

(declare-fun lt!425499 () Int)

(assert (=> d!364590 (>= lt!425499 0)))

(declare-fun e!829181 () Int)

(assert (=> d!364590 (= lt!425499 e!829181)))

(declare-fun c!212820 () Bool)

(assert (=> d!364590 (= c!212820 (is-Nil!12927 lt!425464))))

(assert (=> d!364590 (= (size!10557 lt!425464) lt!425499)))

(declare-fun b!1292934 () Bool)

(assert (=> b!1292934 (= e!829181 0)))

(declare-fun b!1292935 () Bool)

(assert (=> b!1292935 (= e!829181 (+ 1 (size!10557 (t!117268 lt!425464))))))

(assert (= (and d!364590 c!212820) b!1292934))

(assert (= (and d!364590 (not c!212820)) b!1292935))

(declare-fun m!1443769 () Bool)

(assert (=> b!1292935 m!1443769))

(assert (=> b!1292781 d!364590))

(declare-fun d!364592 () Bool)

(declare-fun lt!425502 () List!12993)

(declare-fun dynLambda!5649 (Int List!12993) Bool)

(assert (=> d!364592 (dynLambda!5649 lambda!50820 lt!425502)))

(declare-fun choose!7931 (Int) List!12993)

(assert (=> d!364592 (= lt!425502 (choose!7931 lambda!50820))))

(assert (=> d!364592 (Exists!698 lambda!50820)))

(assert (=> d!364592 (= (pickWitness!3 lambda!50820) lt!425502)))

(declare-fun b_lambda!36957 () Bool)

(assert (=> (not b_lambda!36957) (not d!364592)))

(declare-fun bs!328697 () Bool)

(assert (= bs!328697 d!364592))

(declare-fun m!1443773 () Bool)

(assert (=> bs!328697 m!1443773))

(declare-fun m!1443775 () Bool)

(assert (=> bs!328697 m!1443775))

(assert (=> bs!328697 m!1443599))

(assert (=> b!1292781 d!364592))

(declare-fun d!364596 () Bool)

(declare-fun lt!425507 () Int)

(assert (=> d!364596 (= lt!425507 (size!10557 (list!4830 lt!425467)))))

(declare-fun size!10562 (Conc!4246) Int)

(assert (=> d!364596 (= lt!425507 (size!10562 (c!212801 lt!425467)))))

(assert (=> d!364596 (= (size!10558 lt!425467) lt!425507)))

(declare-fun bs!328698 () Bool)

(assert (= bs!328698 d!364596))

(declare-fun m!1443777 () Bool)

(assert (=> bs!328698 m!1443777))

(assert (=> bs!328698 m!1443777))

(declare-fun m!1443779 () Bool)

(assert (=> bs!328698 m!1443779))

(declare-fun m!1443781 () Bool)

(assert (=> bs!328698 m!1443781))

(assert (=> b!1292783 d!364596))

(declare-fun d!364598 () Bool)

(declare-fun lt!425511 () BalanceConc!8432)

(assert (=> d!364598 (= (list!4830 lt!425511) (originalCharacters!3088 t2!34))))

(declare-fun dynLambda!5650 (Int TokenValue!2316) BalanceConc!8432)

(assert (=> d!364598 (= lt!425511 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (value!73075 t2!34)))))

(assert (=> d!364598 (= (charsOf!1198 t2!34) lt!425511)))

(declare-fun b_lambda!36961 () Bool)

(assert (=> (not b_lambda!36961) (not d!364598)))

(declare-fun t!117286 () Bool)

(declare-fun tb!69405 () Bool)

(assert (=> (and b!1292780 (= (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toChars!3288 (transformation!2226 (rule!3965 t2!34)))) t!117286) tb!69405))

(declare-fun b!1292940 () Bool)

(declare-fun e!829184 () Bool)

(declare-fun tp!376943 () Bool)

(declare-fun inv!17355 (Conc!4246) Bool)

(assert (=> b!1292940 (= e!829184 (and (inv!17355 (c!212801 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (value!73075 t2!34)))) tp!376943))))

(declare-fun result!84124 () Bool)

(declare-fun inv!17356 (BalanceConc!8432) Bool)

(assert (=> tb!69405 (= result!84124 (and (inv!17356 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (value!73075 t2!34))) e!829184))))

(assert (= tb!69405 b!1292940))

(declare-fun m!1443787 () Bool)

(assert (=> b!1292940 m!1443787))

(declare-fun m!1443789 () Bool)

(assert (=> tb!69405 m!1443789))

(assert (=> d!364598 t!117286))

(declare-fun b_and!86189 () Bool)

(assert (= b_and!86149 (and (=> t!117286 result!84124) b_and!86189)))

(declare-fun tb!69407 () Bool)

(declare-fun t!117288 () Bool)

(assert (=> (and b!1292786 (= (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toChars!3288 (transformation!2226 (rule!3965 t2!34)))) t!117288) tb!69407))

(declare-fun result!84128 () Bool)

(assert (= result!84128 result!84124))

(assert (=> d!364598 t!117288))

(declare-fun b_and!86191 () Bool)

(assert (= b_and!86153 (and (=> t!117288 result!84128) b_and!86191)))

(declare-fun tb!69409 () Bool)

(declare-fun t!117290 () Bool)

(assert (=> (and b!1292774 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t2!34)))) t!117290) tb!69409))

(declare-fun result!84130 () Bool)

(assert (= result!84130 result!84124))

(assert (=> d!364598 t!117290))

(declare-fun b_and!86193 () Bool)

(assert (= b_and!86157 (and (=> t!117290 result!84130) b_and!86193)))

(declare-fun m!1443791 () Bool)

(assert (=> d!364598 m!1443791))

(declare-fun m!1443793 () Bool)

(assert (=> d!364598 m!1443793))

(assert (=> b!1292783 d!364598))

(declare-fun d!364602 () Bool)

(declare-fun choose!7932 (Int) Bool)

(assert (=> d!364602 (= (Exists!698 lambda!50820) (choose!7932 lambda!50820))))

(declare-fun bs!328700 () Bool)

(assert (= bs!328700 d!364602))

(declare-fun m!1443795 () Bool)

(assert (=> bs!328700 m!1443795))

(assert (=> b!1292772 d!364602))

(declare-fun bs!328701 () Bool)

(declare-fun d!364604 () Bool)

(assert (= bs!328701 (and d!364604 b!1292772)))

(declare-fun lambda!50830 () Int)

(assert (=> bs!328701 (= lambda!50830 lambda!50820)))

(assert (=> d!364604 true))

(assert (=> d!364604 true))

(assert (=> d!364604 (Exists!698 lambda!50830)))

(declare-fun lt!425514 () Unit!19075)

(declare-fun choose!7933 (Regex!3540 List!12993) Unit!19075)

(assert (=> d!364604 (= lt!425514 (choose!7933 lt!425465 lt!425464))))

(declare-fun validRegex!1526 (Regex!3540) Bool)

(assert (=> d!364604 (validRegex!1526 lt!425465)))

(assert (=> d!364604 (= (lemmaPrefixMatchThenExistsStringThatMatches!16 lt!425465 lt!425464) lt!425514)))

(declare-fun bs!328702 () Bool)

(assert (= bs!328702 d!364604))

(declare-fun m!1443799 () Bool)

(assert (=> bs!328702 m!1443799))

(declare-fun m!1443803 () Bool)

(assert (=> bs!328702 m!1443803))

(declare-fun m!1443805 () Bool)

(assert (=> bs!328702 m!1443805))

(assert (=> b!1292772 d!364604))

(declare-fun d!364606 () Bool)

(declare-fun lt!425519 () Bool)

(declare-fun e!829198 () Bool)

(assert (=> d!364606 (= lt!425519 e!829198)))

(declare-fun res!579388 () Bool)

(assert (=> d!364606 (=> (not res!579388) (not e!829198))))

(declare-datatypes ((List!12998 0))(
  ( (Nil!12932) (Cons!12932 (h!18333 Token!4114) (t!117303 List!12998)) )
))
(declare-datatypes ((IArray!8501 0))(
  ( (IArray!8502 (innerList!4308 List!12998)) )
))
(declare-datatypes ((Conc!4248 0))(
  ( (Node!4248 (left!11123 Conc!4248) (right!11453 Conc!4248) (csize!8726 Int) (cheight!4459 Int)) (Leaf!6558 (xs!6959 IArray!8501) (csize!8727 Int)) (Empty!4248) )
))
(declare-datatypes ((BalanceConc!8436 0))(
  ( (BalanceConc!8437 (c!212827 Conc!4248)) )
))
(declare-fun list!4832 (BalanceConc!8436) List!12998)

(declare-datatypes ((tuple2!12676 0))(
  ( (tuple2!12677 (_1!7224 BalanceConc!8436) (_2!7224 BalanceConc!8432)) )
))
(declare-fun lex!784 (LexerInterface!1921 List!12994 BalanceConc!8432) tuple2!12676)

(declare-fun print!721 (LexerInterface!1921 BalanceConc!8436) BalanceConc!8432)

(declare-fun singletonSeq!808 (Token!4114) BalanceConc!8436)

(assert (=> d!364606 (= res!579388 (= (list!4832 (_1!7224 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t1!34))))) (list!4832 (singletonSeq!808 t1!34))))))

(declare-fun e!829197 () Bool)

(assert (=> d!364606 (= lt!425519 e!829197)))

(declare-fun res!579390 () Bool)

(assert (=> d!364606 (=> (not res!579390) (not e!829197))))

(declare-fun lt!425520 () tuple2!12676)

(declare-fun size!10563 (BalanceConc!8436) Int)

(assert (=> d!364606 (= res!579390 (= (size!10563 (_1!7224 lt!425520)) 1))))

(assert (=> d!364606 (= lt!425520 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t1!34))))))

(assert (=> d!364606 (not (isEmpty!7676 rules!2550))))

(assert (=> d!364606 (= (rulesProduceIndividualToken!890 thiss!19762 rules!2550 t1!34) lt!425519)))

(declare-fun b!1292955 () Bool)

(declare-fun res!579389 () Bool)

(assert (=> b!1292955 (=> (not res!579389) (not e!829197))))

(declare-fun apply!2838 (BalanceConc!8436 Int) Token!4114)

(assert (=> b!1292955 (= res!579389 (= (apply!2838 (_1!7224 lt!425520) 0) t1!34))))

(declare-fun b!1292956 () Bool)

(declare-fun isEmpty!7678 (BalanceConc!8432) Bool)

(assert (=> b!1292956 (= e!829197 (isEmpty!7678 (_2!7224 lt!425520)))))

(declare-fun b!1292957 () Bool)

(assert (=> b!1292957 (= e!829198 (isEmpty!7678 (_2!7224 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t1!34))))))))

(assert (= (and d!364606 res!579390) b!1292955))

(assert (= (and b!1292955 res!579389) b!1292956))

(assert (= (and d!364606 res!579388) b!1292957))

(declare-fun m!1443807 () Bool)

(assert (=> d!364606 m!1443807))

(declare-fun m!1443809 () Bool)

(assert (=> d!364606 m!1443809))

(declare-fun m!1443811 () Bool)

(assert (=> d!364606 m!1443811))

(assert (=> d!364606 m!1443809))

(declare-fun m!1443813 () Bool)

(assert (=> d!364606 m!1443813))

(assert (=> d!364606 m!1443813))

(declare-fun m!1443815 () Bool)

(assert (=> d!364606 m!1443815))

(assert (=> d!364606 m!1443595))

(assert (=> d!364606 m!1443809))

(declare-fun m!1443817 () Bool)

(assert (=> d!364606 m!1443817))

(declare-fun m!1443819 () Bool)

(assert (=> b!1292955 m!1443819))

(declare-fun m!1443821 () Bool)

(assert (=> b!1292956 m!1443821))

(assert (=> b!1292957 m!1443809))

(assert (=> b!1292957 m!1443809))

(assert (=> b!1292957 m!1443813))

(assert (=> b!1292957 m!1443813))

(assert (=> b!1292957 m!1443815))

(declare-fun m!1443823 () Bool)

(assert (=> b!1292957 m!1443823))

(assert (=> b!1292782 d!364606))

(declare-fun d!364610 () Bool)

(declare-fun res!579393 () Bool)

(declare-fun e!829201 () Bool)

(assert (=> d!364610 (=> (not res!579393) (not e!829201))))

(declare-fun rulesValid!815 (LexerInterface!1921 List!12994) Bool)

(assert (=> d!364610 (= res!579393 (rulesValid!815 thiss!19762 rules!2550))))

(assert (=> d!364610 (= (rulesInvariant!1791 thiss!19762 rules!2550) e!829201)))

(declare-fun b!1292960 () Bool)

(declare-datatypes ((List!12999 0))(
  ( (Nil!12933) (Cons!12933 (h!18334 String!15818) (t!117304 List!12999)) )
))
(declare-fun noDuplicateTag!815 (LexerInterface!1921 List!12994 List!12999) Bool)

(assert (=> b!1292960 (= e!829201 (noDuplicateTag!815 thiss!19762 rules!2550 Nil!12933))))

(assert (= (and d!364610 res!579393) b!1292960))

(declare-fun m!1443825 () Bool)

(assert (=> d!364610 m!1443825))

(declare-fun m!1443827 () Bool)

(assert (=> b!1292960 m!1443827))

(assert (=> b!1292779 d!364610))

(declare-fun d!364612 () Bool)

(declare-fun res!579398 () Bool)

(declare-fun e!829206 () Bool)

(assert (=> d!364612 (=> res!579398 e!829206)))

(assert (=> d!364612 (= res!579398 (not (is-Cons!12928 rules!2550)))))

(assert (=> d!364612 (= (sepAndNonSepRulesDisjointChars!599 rules!2550 rules!2550) e!829206)))

(declare-fun b!1292965 () Bool)

(declare-fun e!829207 () Bool)

(assert (=> b!1292965 (= e!829206 e!829207)))

(declare-fun res!579399 () Bool)

(assert (=> b!1292965 (=> (not res!579399) (not e!829207))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!289 (Rule!4252 List!12994) Bool)

(assert (=> b!1292965 (= res!579399 (ruleDisjointCharsFromAllFromOtherType!289 (h!18329 rules!2550) rules!2550))))

(declare-fun b!1292966 () Bool)

(assert (=> b!1292966 (= e!829207 (sepAndNonSepRulesDisjointChars!599 rules!2550 (t!117269 rules!2550)))))

(assert (= (and d!364612 (not res!579398)) b!1292965))

(assert (= (and b!1292965 res!579399) b!1292966))

(declare-fun m!1443829 () Bool)

(assert (=> b!1292965 m!1443829))

(declare-fun m!1443831 () Bool)

(assert (=> b!1292966 m!1443831))

(assert (=> b!1292789 d!364612))

(declare-fun d!364614 () Bool)

(declare-fun lt!425521 () Bool)

(declare-fun e!829209 () Bool)

(assert (=> d!364614 (= lt!425521 e!829209)))

(declare-fun res!579400 () Bool)

(assert (=> d!364614 (=> (not res!579400) (not e!829209))))

(assert (=> d!364614 (= res!579400 (= (list!4832 (_1!7224 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t2!34))))) (list!4832 (singletonSeq!808 t2!34))))))

(declare-fun e!829208 () Bool)

(assert (=> d!364614 (= lt!425521 e!829208)))

(declare-fun res!579402 () Bool)

(assert (=> d!364614 (=> (not res!579402) (not e!829208))))

(declare-fun lt!425522 () tuple2!12676)

(assert (=> d!364614 (= res!579402 (= (size!10563 (_1!7224 lt!425522)) 1))))

(assert (=> d!364614 (= lt!425522 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t2!34))))))

(assert (=> d!364614 (not (isEmpty!7676 rules!2550))))

(assert (=> d!364614 (= (rulesProduceIndividualToken!890 thiss!19762 rules!2550 t2!34) lt!425521)))

(declare-fun b!1292967 () Bool)

(declare-fun res!579401 () Bool)

(assert (=> b!1292967 (=> (not res!579401) (not e!829208))))

(assert (=> b!1292967 (= res!579401 (= (apply!2838 (_1!7224 lt!425522) 0) t2!34))))

(declare-fun b!1292968 () Bool)

(assert (=> b!1292968 (= e!829208 (isEmpty!7678 (_2!7224 lt!425522)))))

(declare-fun b!1292969 () Bool)

(assert (=> b!1292969 (= e!829209 (isEmpty!7678 (_2!7224 (lex!784 thiss!19762 rules!2550 (print!721 thiss!19762 (singletonSeq!808 t2!34))))))))

(assert (= (and d!364614 res!579402) b!1292967))

(assert (= (and b!1292967 res!579401) b!1292968))

(assert (= (and d!364614 res!579400) b!1292969))

(declare-fun m!1443833 () Bool)

(assert (=> d!364614 m!1443833))

(declare-fun m!1443835 () Bool)

(assert (=> d!364614 m!1443835))

(declare-fun m!1443837 () Bool)

(assert (=> d!364614 m!1443837))

(assert (=> d!364614 m!1443835))

(declare-fun m!1443839 () Bool)

(assert (=> d!364614 m!1443839))

(assert (=> d!364614 m!1443839))

(declare-fun m!1443841 () Bool)

(assert (=> d!364614 m!1443841))

(assert (=> d!364614 m!1443595))

(assert (=> d!364614 m!1443835))

(declare-fun m!1443843 () Bool)

(assert (=> d!364614 m!1443843))

(declare-fun m!1443845 () Bool)

(assert (=> b!1292967 m!1443845))

(declare-fun m!1443847 () Bool)

(assert (=> b!1292968 m!1443847))

(assert (=> b!1292969 m!1443835))

(assert (=> b!1292969 m!1443835))

(assert (=> b!1292969 m!1443839))

(assert (=> b!1292969 m!1443839))

(assert (=> b!1292969 m!1443841))

(declare-fun m!1443849 () Bool)

(assert (=> b!1292969 m!1443849))

(assert (=> b!1292778 d!364614))

(declare-fun d!364616 () Bool)

(declare-fun lt!425525 () C!7370)

(declare-fun apply!2839 (List!12993 Int) C!7370)

(assert (=> d!364616 (= lt!425525 (apply!2839 (list!4830 lt!425467) 0))))

(declare-fun apply!2840 (Conc!4246 Int) C!7370)

(assert (=> d!364616 (= lt!425525 (apply!2840 (c!212801 lt!425467) 0))))

(declare-fun e!829212 () Bool)

(assert (=> d!364616 e!829212))

(declare-fun res!579405 () Bool)

(assert (=> d!364616 (=> (not res!579405) (not e!829212))))

(assert (=> d!364616 (= res!579405 (<= 0 0))))

(assert (=> d!364616 (= (apply!2836 lt!425467 0) lt!425525)))

(declare-fun b!1292972 () Bool)

(assert (=> b!1292972 (= e!829212 (< 0 (size!10558 lt!425467)))))

(assert (= (and d!364616 res!579405) b!1292972))

(assert (=> d!364616 m!1443777))

(assert (=> d!364616 m!1443777))

(declare-fun m!1443851 () Bool)

(assert (=> d!364616 m!1443851))

(declare-fun m!1443853 () Bool)

(assert (=> d!364616 m!1443853))

(assert (=> b!1292972 m!1443609))

(assert (=> b!1292791 d!364616))

(declare-fun b!1292982 () Bool)

(declare-fun e!829218 () List!12993)

(assert (=> b!1292982 (= e!829218 (Cons!12927 (h!18328 (list!4830 (charsOf!1198 t1!34))) (++!3277 (t!117268 (list!4830 (charsOf!1198 t1!34))) (Cons!12927 (apply!2836 lt!425467 0) Nil!12927))))))

(declare-fun b!1292983 () Bool)

(declare-fun res!579411 () Bool)

(declare-fun e!829217 () Bool)

(assert (=> b!1292983 (=> (not res!579411) (not e!829217))))

(declare-fun lt!425528 () List!12993)

(assert (=> b!1292983 (= res!579411 (= (size!10557 lt!425528) (+ (size!10557 (list!4830 (charsOf!1198 t1!34))) (size!10557 (Cons!12927 (apply!2836 lt!425467 0) Nil!12927)))))))

(declare-fun d!364618 () Bool)

(assert (=> d!364618 e!829217))

(declare-fun res!579410 () Bool)

(assert (=> d!364618 (=> (not res!579410) (not e!829217))))

(declare-fun content!1826 (List!12993) (Set C!7370))

(assert (=> d!364618 (= res!579410 (= (content!1826 lt!425528) (set.union (content!1826 (list!4830 (charsOf!1198 t1!34))) (content!1826 (Cons!12927 (apply!2836 lt!425467 0) Nil!12927)))))))

(assert (=> d!364618 (= lt!425528 e!829218)))

(declare-fun c!212823 () Bool)

(assert (=> d!364618 (= c!212823 (is-Nil!12927 (list!4830 (charsOf!1198 t1!34))))))

(assert (=> d!364618 (= (++!3277 (list!4830 (charsOf!1198 t1!34)) (Cons!12927 (apply!2836 lt!425467 0) Nil!12927)) lt!425528)))

(declare-fun b!1292981 () Bool)

(assert (=> b!1292981 (= e!829218 (Cons!12927 (apply!2836 lt!425467 0) Nil!12927))))

(declare-fun b!1292984 () Bool)

(assert (=> b!1292984 (= e!829217 (or (not (= (Cons!12927 (apply!2836 lt!425467 0) Nil!12927) Nil!12927)) (= lt!425528 (list!4830 (charsOf!1198 t1!34)))))))

(assert (= (and d!364618 c!212823) b!1292981))

(assert (= (and d!364618 (not c!212823)) b!1292982))

(assert (= (and d!364618 res!579410) b!1292983))

(assert (= (and b!1292983 res!579411) b!1292984))

(declare-fun m!1443855 () Bool)

(assert (=> b!1292982 m!1443855))

(declare-fun m!1443857 () Bool)

(assert (=> b!1292983 m!1443857))

(assert (=> b!1292983 m!1443623))

(declare-fun m!1443859 () Bool)

(assert (=> b!1292983 m!1443859))

(declare-fun m!1443861 () Bool)

(assert (=> b!1292983 m!1443861))

(declare-fun m!1443863 () Bool)

(assert (=> d!364618 m!1443863))

(assert (=> d!364618 m!1443623))

(declare-fun m!1443865 () Bool)

(assert (=> d!364618 m!1443865))

(declare-fun m!1443867 () Bool)

(assert (=> d!364618 m!1443867))

(assert (=> b!1292791 d!364618))

(declare-fun d!364620 () Bool)

(declare-fun list!4833 (Conc!4246) List!12993)

(assert (=> d!364620 (= (list!4830 (charsOf!1198 t1!34)) (list!4833 (c!212801 (charsOf!1198 t1!34))))))

(declare-fun bs!328703 () Bool)

(assert (= bs!328703 d!364620))

(declare-fun m!1443869 () Bool)

(assert (=> bs!328703 m!1443869))

(assert (=> b!1292791 d!364620))

(declare-fun d!364622 () Bool)

(declare-fun lt!425529 () BalanceConc!8432)

(assert (=> d!364622 (= (list!4830 lt!425529) (originalCharacters!3088 t1!34))))

(assert (=> d!364622 (= lt!425529 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (value!73075 t1!34)))))

(assert (=> d!364622 (= (charsOf!1198 t1!34) lt!425529)))

(declare-fun b_lambda!36963 () Bool)

(assert (=> (not b_lambda!36963) (not d!364622)))

(declare-fun tb!69411 () Bool)

(declare-fun t!117293 () Bool)

(assert (=> (and b!1292780 (= (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toChars!3288 (transformation!2226 (rule!3965 t1!34)))) t!117293) tb!69411))

(declare-fun b!1292985 () Bool)

(declare-fun e!829219 () Bool)

(declare-fun tp!376944 () Bool)

(assert (=> b!1292985 (= e!829219 (and (inv!17355 (c!212801 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (value!73075 t1!34)))) tp!376944))))

(declare-fun result!84132 () Bool)

(assert (=> tb!69411 (= result!84132 (and (inv!17356 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (value!73075 t1!34))) e!829219))))

(assert (= tb!69411 b!1292985))

(declare-fun m!1443871 () Bool)

(assert (=> b!1292985 m!1443871))

(declare-fun m!1443873 () Bool)

(assert (=> tb!69411 m!1443873))

(assert (=> d!364622 t!117293))

(declare-fun b_and!86195 () Bool)

(assert (= b_and!86189 (and (=> t!117293 result!84132) b_and!86195)))

(declare-fun t!117295 () Bool)

(declare-fun tb!69413 () Bool)

(assert (=> (and b!1292786 (= (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toChars!3288 (transformation!2226 (rule!3965 t1!34)))) t!117295) tb!69413))

(declare-fun result!84134 () Bool)

(assert (= result!84134 result!84132))

(assert (=> d!364622 t!117295))

(declare-fun b_and!86197 () Bool)

(assert (= b_and!86191 (and (=> t!117295 result!84134) b_and!86197)))

(declare-fun tb!69415 () Bool)

(declare-fun t!117297 () Bool)

(assert (=> (and b!1292774 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t1!34)))) t!117297) tb!69415))

(declare-fun result!84136 () Bool)

(assert (= result!84136 result!84132))

(assert (=> d!364622 t!117297))

(declare-fun b_and!86199 () Bool)

(assert (= b_and!86193 (and (=> t!117297 result!84136) b_and!86199)))

(declare-fun m!1443875 () Bool)

(assert (=> d!364622 m!1443875))

(declare-fun m!1443877 () Bool)

(assert (=> d!364622 m!1443877))

(assert (=> b!1292791 d!364622))

(declare-fun d!364624 () Bool)

(declare-fun c!212826 () Bool)

(declare-fun isEmpty!7679 (List!12993) Bool)

(assert (=> d!364624 (= c!212826 (isEmpty!7679 lt!425464))))

(declare-fun e!829222 () Bool)

(assert (=> d!364624 (= (prefixMatch!53 lt!425465 lt!425464) e!829222)))

(declare-fun b!1292990 () Bool)

(declare-fun lostCause!253 (Regex!3540) Bool)

(assert (=> b!1292990 (= e!829222 (not (lostCause!253 lt!425465)))))

(declare-fun b!1292991 () Bool)

(declare-fun derivativeStep!876 (Regex!3540 C!7370) Regex!3540)

(assert (=> b!1292991 (= e!829222 (prefixMatch!53 (derivativeStep!876 lt!425465 (head!2217 lt!425464)) (tail!1845 lt!425464)))))

(assert (= (and d!364624 c!212826) b!1292990))

(assert (= (and d!364624 (not c!212826)) b!1292991))

(declare-fun m!1443879 () Bool)

(assert (=> d!364624 m!1443879))

(declare-fun m!1443881 () Bool)

(assert (=> b!1292990 m!1443881))

(assert (=> b!1292991 m!1443737))

(assert (=> b!1292991 m!1443737))

(declare-fun m!1443883 () Bool)

(assert (=> b!1292991 m!1443883))

(assert (=> b!1292991 m!1443741))

(assert (=> b!1292991 m!1443883))

(assert (=> b!1292991 m!1443741))

(declare-fun m!1443885 () Bool)

(assert (=> b!1292991 m!1443885))

(assert (=> b!1292791 d!364624))

(declare-fun d!364626 () Bool)

(declare-fun lt!425532 () Unit!19075)

(declare-fun lemma!47 (List!12994 LexerInterface!1921 List!12994) Unit!19075)

(assert (=> d!364626 (= lt!425532 (lemma!47 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!50833 () Int)

(declare-datatypes ((List!13000 0))(
  ( (Nil!12934) (Cons!12934 (h!18335 Regex!3540) (t!117305 List!13000)) )
))
(declare-fun generalisedUnion!51 (List!13000) Regex!3540)

(declare-fun map!2814 (List!12994 Int) List!13000)

(assert (=> d!364626 (= (rulesRegex!111 thiss!19762 rules!2550) (generalisedUnion!51 (map!2814 rules!2550 lambda!50833)))))

(declare-fun bs!328704 () Bool)

(assert (= bs!328704 d!364626))

(declare-fun m!1443887 () Bool)

(assert (=> bs!328704 m!1443887))

(declare-fun m!1443889 () Bool)

(assert (=> bs!328704 m!1443889))

(assert (=> bs!328704 m!1443889))

(declare-fun m!1443891 () Bool)

(assert (=> bs!328704 m!1443891))

(assert (=> b!1292791 d!364626))

(declare-fun d!364628 () Bool)

(declare-fun res!579416 () Bool)

(declare-fun e!829225 () Bool)

(assert (=> d!364628 (=> (not res!579416) (not e!829225))))

(assert (=> d!364628 (= res!579416 (not (isEmpty!7679 (originalCharacters!3088 t1!34))))))

(assert (=> d!364628 (= (inv!17352 t1!34) e!829225)))

(declare-fun b!1292996 () Bool)

(declare-fun res!579417 () Bool)

(assert (=> b!1292996 (=> (not res!579417) (not e!829225))))

(assert (=> b!1292996 (= res!579417 (= (originalCharacters!3088 t1!34) (list!4830 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (value!73075 t1!34)))))))

(declare-fun b!1292997 () Bool)

(assert (=> b!1292997 (= e!829225 (= (size!10556 t1!34) (size!10557 (originalCharacters!3088 t1!34))))))

(assert (= (and d!364628 res!579416) b!1292996))

(assert (= (and b!1292996 res!579417) b!1292997))

(declare-fun b_lambda!36965 () Bool)

(assert (=> (not b_lambda!36965) (not b!1292996)))

(assert (=> b!1292996 t!117293))

(declare-fun b_and!86201 () Bool)

(assert (= b_and!86195 (and (=> t!117293 result!84132) b_and!86201)))

(assert (=> b!1292996 t!117295))

(declare-fun b_and!86203 () Bool)

(assert (= b_and!86197 (and (=> t!117295 result!84134) b_and!86203)))

(assert (=> b!1292996 t!117297))

(declare-fun b_and!86205 () Bool)

(assert (= b_and!86199 (and (=> t!117297 result!84136) b_and!86205)))

(declare-fun m!1443893 () Bool)

(assert (=> d!364628 m!1443893))

(assert (=> b!1292996 m!1443877))

(assert (=> b!1292996 m!1443877))

(declare-fun m!1443895 () Bool)

(assert (=> b!1292996 m!1443895))

(declare-fun m!1443897 () Bool)

(assert (=> b!1292997 m!1443897))

(assert (=> start!113740 d!364628))

(declare-fun d!364630 () Bool)

(declare-fun res!579418 () Bool)

(declare-fun e!829226 () Bool)

(assert (=> d!364630 (=> (not res!579418) (not e!829226))))

(assert (=> d!364630 (= res!579418 (not (isEmpty!7679 (originalCharacters!3088 t2!34))))))

(assert (=> d!364630 (= (inv!17352 t2!34) e!829226)))

(declare-fun b!1292998 () Bool)

(declare-fun res!579419 () Bool)

(assert (=> b!1292998 (=> (not res!579419) (not e!829226))))

(assert (=> b!1292998 (= res!579419 (= (originalCharacters!3088 t2!34) (list!4830 (dynLambda!5650 (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (value!73075 t2!34)))))))

(declare-fun b!1292999 () Bool)

(assert (=> b!1292999 (= e!829226 (= (size!10556 t2!34) (size!10557 (originalCharacters!3088 t2!34))))))

(assert (= (and d!364630 res!579418) b!1292998))

(assert (= (and b!1292998 res!579419) b!1292999))

(declare-fun b_lambda!36967 () Bool)

(assert (=> (not b_lambda!36967) (not b!1292998)))

(assert (=> b!1292998 t!117286))

(declare-fun b_and!86207 () Bool)

(assert (= b_and!86201 (and (=> t!117286 result!84124) b_and!86207)))

(assert (=> b!1292998 t!117288))

(declare-fun b_and!86209 () Bool)

(assert (= b_and!86203 (and (=> t!117288 result!84128) b_and!86209)))

(assert (=> b!1292998 t!117290))

(declare-fun b_and!86211 () Bool)

(assert (= b_and!86205 (and (=> t!117290 result!84130) b_and!86211)))

(declare-fun m!1443899 () Bool)

(assert (=> d!364630 m!1443899))

(assert (=> b!1292998 m!1443793))

(assert (=> b!1292998 m!1443793))

(declare-fun m!1443901 () Bool)

(assert (=> b!1292998 m!1443901))

(declare-fun m!1443903 () Bool)

(assert (=> b!1292999 m!1443903))

(assert (=> start!113740 d!364630))

(declare-fun d!364632 () Bool)

(assert (=> d!364632 (= (inv!17348 (tag!2488 (rule!3965 t1!34))) (= (mod (str.len (value!73074 (tag!2488 (rule!3965 t1!34)))) 2) 0))))

(assert (=> b!1292790 d!364632))

(declare-fun d!364634 () Bool)

(declare-fun res!579420 () Bool)

(declare-fun e!829227 () Bool)

(assert (=> d!364634 (=> (not res!579420) (not e!829227))))

(assert (=> d!364634 (= res!579420 (semiInverseModEq!845 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toValue!3429 (transformation!2226 (rule!3965 t1!34)))))))

(assert (=> d!364634 (= (inv!17351 (transformation!2226 (rule!3965 t1!34))) e!829227)))

(declare-fun b!1293000 () Bool)

(assert (=> b!1293000 (= e!829227 (equivClasses!804 (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toValue!3429 (transformation!2226 (rule!3965 t1!34)))))))

(assert (= (and d!364634 res!579420) b!1293000))

(declare-fun m!1443905 () Bool)

(assert (=> d!364634 m!1443905))

(declare-fun m!1443907 () Bool)

(assert (=> b!1293000 m!1443907))

(assert (=> b!1292790 d!364634))

(declare-fun b!1293014 () Bool)

(declare-fun e!829230 () Bool)

(declare-fun tp!376956 () Bool)

(declare-fun tp!376955 () Bool)

(assert (=> b!1293014 (= e!829230 (and tp!376956 tp!376955))))

(declare-fun b!1293011 () Bool)

(declare-fun tp_is_empty!6573 () Bool)

(assert (=> b!1293011 (= e!829230 tp_is_empty!6573)))

(declare-fun b!1293012 () Bool)

(declare-fun tp!376959 () Bool)

(declare-fun tp!376958 () Bool)

(assert (=> b!1293012 (= e!829230 (and tp!376959 tp!376958))))

(assert (=> b!1292776 (= tp!376900 e!829230)))

(declare-fun b!1293013 () Bool)

(declare-fun tp!376957 () Bool)

(assert (=> b!1293013 (= e!829230 tp!376957)))

(assert (= (and b!1292776 (is-ElementMatch!3540 (regex!2226 (rule!3965 t2!34)))) b!1293011))

(assert (= (and b!1292776 (is-Concat!5857 (regex!2226 (rule!3965 t2!34)))) b!1293012))

(assert (= (and b!1292776 (is-Star!3540 (regex!2226 (rule!3965 t2!34)))) b!1293013))

(assert (= (and b!1292776 (is-Union!3540 (regex!2226 (rule!3965 t2!34)))) b!1293014))

(declare-fun b!1293019 () Bool)

(declare-fun e!829233 () Bool)

(declare-fun tp!376962 () Bool)

(assert (=> b!1293019 (= e!829233 (and tp_is_empty!6573 tp!376962))))

(assert (=> b!1292792 (= tp!376895 e!829233)))

(assert (= (and b!1292792 (is-Cons!12927 (originalCharacters!3088 t1!34))) b!1293019))

(declare-fun b!1293030 () Bool)

(declare-fun b_free!30607 () Bool)

(declare-fun b_next!31311 () Bool)

(assert (=> b!1293030 (= b_free!30607 (not b_next!31311))))

(declare-fun tp!376974 () Bool)

(declare-fun b_and!86213 () Bool)

(assert (=> b!1293030 (= tp!376974 b_and!86213)))

(declare-fun b_free!30609 () Bool)

(declare-fun b_next!31313 () Bool)

(assert (=> b!1293030 (= b_free!30609 (not b_next!31313))))

(declare-fun tb!69417 () Bool)

(declare-fun t!117299 () Bool)

(assert (=> (and b!1293030 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t2!34)))) t!117299) tb!69417))

(declare-fun result!84144 () Bool)

(assert (= result!84144 result!84124))

(assert (=> d!364598 t!117299))

(declare-fun tb!69419 () Bool)

(declare-fun t!117301 () Bool)

(assert (=> (and b!1293030 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t1!34)))) t!117301) tb!69419))

(declare-fun result!84146 () Bool)

(assert (= result!84146 result!84132))

(assert (=> d!364622 t!117301))

(assert (=> b!1292996 t!117301))

(assert (=> b!1292998 t!117299))

(declare-fun tp!376973 () Bool)

(declare-fun b_and!86215 () Bool)

(assert (=> b!1293030 (= tp!376973 (and (=> t!117299 result!84144) (=> t!117301 result!84146) b_and!86215))))

(declare-fun e!829242 () Bool)

(assert (=> b!1293030 (= e!829242 (and tp!376974 tp!376973))))

(declare-fun e!829244 () Bool)

(declare-fun b!1293029 () Bool)

(declare-fun tp!376972 () Bool)

(assert (=> b!1293029 (= e!829244 (and tp!376972 (inv!17348 (tag!2488 (h!18329 (t!117269 rules!2550)))) (inv!17351 (transformation!2226 (h!18329 (t!117269 rules!2550)))) e!829242))))

(declare-fun b!1293028 () Bool)

(declare-fun e!829243 () Bool)

(declare-fun tp!376971 () Bool)

(assert (=> b!1293028 (= e!829243 (and e!829244 tp!376971))))

(assert (=> b!1292788 (= tp!376892 e!829243)))

(assert (= b!1293029 b!1293030))

(assert (= b!1293028 b!1293029))

(assert (= (and b!1292788 (is-Cons!12928 (t!117269 rules!2550))) b!1293028))

(declare-fun m!1443909 () Bool)

(assert (=> b!1293029 m!1443909))

(declare-fun m!1443911 () Bool)

(assert (=> b!1293029 m!1443911))

(declare-fun b!1293031 () Bool)

(declare-fun e!829246 () Bool)

(declare-fun tp!376975 () Bool)

(assert (=> b!1293031 (= e!829246 (and tp_is_empty!6573 tp!376975))))

(assert (=> b!1292773 (= tp!376899 e!829246)))

(assert (= (and b!1292773 (is-Cons!12927 (originalCharacters!3088 t2!34))) b!1293031))

(declare-fun b!1293035 () Bool)

(declare-fun e!829247 () Bool)

(declare-fun tp!376977 () Bool)

(declare-fun tp!376976 () Bool)

(assert (=> b!1293035 (= e!829247 (and tp!376977 tp!376976))))

(declare-fun b!1293032 () Bool)

(assert (=> b!1293032 (= e!829247 tp_is_empty!6573)))

(declare-fun b!1293033 () Bool)

(declare-fun tp!376980 () Bool)

(declare-fun tp!376979 () Bool)

(assert (=> b!1293033 (= e!829247 (and tp!376980 tp!376979))))

(assert (=> b!1292785 (= tp!376894 e!829247)))

(declare-fun b!1293034 () Bool)

(declare-fun tp!376978 () Bool)

(assert (=> b!1293034 (= e!829247 tp!376978)))

(assert (= (and b!1292785 (is-ElementMatch!3540 (regex!2226 (h!18329 rules!2550)))) b!1293032))

(assert (= (and b!1292785 (is-Concat!5857 (regex!2226 (h!18329 rules!2550)))) b!1293033))

(assert (= (and b!1292785 (is-Star!3540 (regex!2226 (h!18329 rules!2550)))) b!1293034))

(assert (= (and b!1292785 (is-Union!3540 (regex!2226 (h!18329 rules!2550)))) b!1293035))

(declare-fun b!1293039 () Bool)

(declare-fun e!829248 () Bool)

(declare-fun tp!376982 () Bool)

(declare-fun tp!376981 () Bool)

(assert (=> b!1293039 (= e!829248 (and tp!376982 tp!376981))))

(declare-fun b!1293036 () Bool)

(assert (=> b!1293036 (= e!829248 tp_is_empty!6573)))

(declare-fun b!1293037 () Bool)

(declare-fun tp!376985 () Bool)

(declare-fun tp!376984 () Bool)

(assert (=> b!1293037 (= e!829248 (and tp!376985 tp!376984))))

(assert (=> b!1292790 (= tp!376897 e!829248)))

(declare-fun b!1293038 () Bool)

(declare-fun tp!376983 () Bool)

(assert (=> b!1293038 (= e!829248 tp!376983)))

(assert (= (and b!1292790 (is-ElementMatch!3540 (regex!2226 (rule!3965 t1!34)))) b!1293036))

(assert (= (and b!1292790 (is-Concat!5857 (regex!2226 (rule!3965 t1!34)))) b!1293037))

(assert (= (and b!1292790 (is-Star!3540 (regex!2226 (rule!3965 t1!34)))) b!1293038))

(assert (= (and b!1292790 (is-Union!3540 (regex!2226 (rule!3965 t1!34)))) b!1293039))

(declare-fun b_lambda!36969 () Bool)

(assert (= b_lambda!36965 (or (and b!1292780 b_free!30585 (= (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) (and b!1292786 b_free!30589) (and b!1292774 b_free!30593 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) (and b!1293030 b_free!30609 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) b_lambda!36969)))

(declare-fun b_lambda!36971 () Bool)

(assert (= b_lambda!36963 (or (and b!1292780 b_free!30585 (= (toChars!3288 (transformation!2226 (rule!3965 t2!34))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) (and b!1292786 b_free!30589) (and b!1292774 b_free!30593 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) (and b!1293030 b_free!30609 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t1!34))))) b_lambda!36971)))

(declare-fun b_lambda!36973 () Bool)

(assert (= b_lambda!36957 (or b!1292772 b_lambda!36973)))

(declare-fun bs!328705 () Bool)

(declare-fun d!364636 () Bool)

(assert (= bs!328705 (and d!364636 b!1292772)))

(declare-fun res!579421 () Bool)

(declare-fun e!829249 () Bool)

(assert (=> bs!328705 (=> (not res!579421) (not e!829249))))

(declare-fun matchR!1549 (Regex!3540 List!12993) Bool)

(assert (=> bs!328705 (= res!579421 (matchR!1549 lt!425465 lt!425502))))

(assert (=> bs!328705 (= (dynLambda!5649 lambda!50820 lt!425502) e!829249)))

(declare-fun b!1293040 () Bool)

(assert (=> b!1293040 (= e!829249 (isPrefix!1051 lt!425464 lt!425502))))

(assert (= (and bs!328705 res!579421) b!1293040))

(declare-fun m!1443913 () Bool)

(assert (=> bs!328705 m!1443913))

(declare-fun m!1443915 () Bool)

(assert (=> b!1293040 m!1443915))

(assert (=> d!364592 d!364636))

(declare-fun b_lambda!36975 () Bool)

(assert (= b_lambda!36967 (or (and b!1292780 b_free!30585) (and b!1292786 b_free!30589 (= (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) (and b!1292774 b_free!30593 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) (and b!1293030 b_free!30609 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) b_lambda!36975)))

(declare-fun b_lambda!36977 () Bool)

(assert (= b_lambda!36961 (or (and b!1292780 b_free!30585) (and b!1292786 b_free!30589 (= (toChars!3288 (transformation!2226 (rule!3965 t1!34))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) (and b!1292774 b_free!30593 (= (toChars!3288 (transformation!2226 (h!18329 rules!2550))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) (and b!1293030 b_free!30609 (= (toChars!3288 (transformation!2226 (h!18329 (t!117269 rules!2550)))) (toChars!3288 (transformation!2226 (rule!3965 t2!34))))) b_lambda!36977)))

(push 1)

(assert (not d!364606))

(assert (not b!1292909))

(assert (not tb!69405))

(assert (not b!1292972))

(assert (not b_next!31289))

(assert (not b!1292956))

(assert (not b!1292957))

(assert (not d!364610))

(assert (not d!364596))

(assert (not b!1292982))

(assert (not d!364604))

(assert (not d!364626))

(assert (not b_next!31313))

(assert (not d!364616))

(assert (not b!1292910))

(assert (not d!364634))

(assert (not b!1292919))

(assert b_and!86147)

(assert (not b_next!31293))

(assert (not b!1292898))

(assert (not b!1293040))

(assert b_and!86151)

(assert (not b!1292886))

(assert (not b_lambda!36971))

(assert (not b!1292998))

(assert (not b!1292897))

(assert (not b!1292965))

(assert (not d!364602))

(assert b_and!86155)

(assert (not b!1292960))

(assert (not b_next!31297))

(assert (not b_next!31295))

(assert (not b!1293038))

(assert b_and!86215)

(assert (not b!1292896))

(assert (not b!1292999))

(assert (not b!1292920))

(assert (not d!364620))

(assert (not b!1293039))

(assert (not b!1292997))

(assert (not b!1292955))

(assert b_and!86211)

(assert (not b!1293033))

(assert (not b!1293012))

(assert b_and!86213)

(assert (not d!364628))

(assert (not d!364624))

(assert (not b!1293034))

(assert (not b_next!31311))

(assert (not d!364582))

(assert (not b_lambda!36977))

(assert (not b!1293028))

(assert (not b!1293035))

(assert (not d!364558))

(assert tp_is_empty!6573)

(assert (not b!1292967))

(assert (not d!364622))

(assert b_and!86209)

(assert (not b!1292940))

(assert (not d!364618))

(assert (not tb!69411))

(assert (not b_lambda!36969))

(assert (not b!1292996))

(assert (not b_lambda!36973))

(assert (not b!1292983))

(assert (not b!1292966))

(assert (not b!1292912))

(assert (not b!1293031))

(assert (not b!1292935))

(assert (not b!1292931))

(assert (not b!1293013))

(assert (not b!1293029))

(assert (not d!364614))

(assert (not b!1292990))

(assert (not b!1292991))

(assert (not b!1292969))

(assert (not b!1292968))

(assert (not d!364630))

(assert (not b_next!31287))

(assert (not b_lambda!36975))

(assert (not b!1292985))

(assert (not b!1292918))

(assert (not b_next!31291))

(assert (not b!1293014))

(assert (not b!1293019))

(assert (not d!364592))

(assert (not d!364568))

(assert (not d!364598))

(assert (not b!1293000))

(assert b_and!86207)

(assert (not b!1292922))

(assert (not b!1293037))

(assert (not bs!328705))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!31313))

(assert (not b_next!31295))

(assert b_and!86215)

(assert (not b_next!31289))

(assert b_and!86211)

(assert b_and!86209)

(assert b_and!86207)

(assert b_and!86147)

(assert (not b_next!31293))

(assert b_and!86151)

(assert b_and!86155)

(assert (not b_next!31297))

(assert b_and!86213)

(assert (not b_next!31311))

(assert (not b_next!31287))

(assert (not b_next!31291))

(check-sat)

(pop 1)

