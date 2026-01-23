; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510726 () Bool)

(assert start!510726)

(declare-fun b!4881658 () Bool)

(declare-fun b_free!130927 () Bool)

(declare-fun b_next!131717 () Bool)

(assert (=> b!4881658 (= b_free!130927 (not b_next!131717))))

(declare-fun tp!1373436 () Bool)

(declare-fun b_and!343759 () Bool)

(assert (=> b!4881658 (= tp!1373436 b_and!343759)))

(declare-fun b_free!130929 () Bool)

(declare-fun b_next!131719 () Bool)

(assert (=> b!4881658 (= b_free!130929 (not b_next!131719))))

(declare-fun tp!1373435 () Bool)

(declare-fun b_and!343761 () Bool)

(assert (=> b!4881658 (= tp!1373435 b_and!343761)))

(declare-fun b!4881654 () Bool)

(declare-fun e!3050908 () Bool)

(declare-datatypes ((C!26482 0))(
  ( (C!26483 (val!22575 Int)) )
))
(declare-datatypes ((List!56206 0))(
  ( (Nil!56082) (Cons!56082 (h!62530 C!26482) (t!364852 List!56206)) )
))
(declare-datatypes ((IArray!29331 0))(
  ( (IArray!29332 (innerList!14723 List!56206)) )
))
(declare-datatypes ((Conc!14635 0))(
  ( (Node!14635 (left!40743 Conc!14635) (right!41073 Conc!14635) (csize!29500 Int) (cheight!14846 Int)) (Leaf!24386 (xs!17951 IArray!29331) (csize!29501 Int)) (Empty!14635) )
))
(declare-datatypes ((BalanceConc!28700 0))(
  ( (BalanceConc!28701 (c!830310 Conc!14635)) )
))
(declare-datatypes ((List!56207 0))(
  ( (Nil!56083) (Cons!56083 (h!62531 (_ BitVec 16)) (t!364853 List!56207)) )
))
(declare-datatypes ((TokenValue!8377 0))(
  ( (FloatLiteralValue!16754 (text!59084 List!56207)) (TokenValueExt!8376 (__x!34047 Int)) (Broken!41885 (value!259039 List!56207)) (Object!8500) (End!8377) (Def!8377) (Underscore!8377) (Match!8377) (Else!8377) (Error!8377) (Case!8377) (If!8377) (Extends!8377) (Abstract!8377) (Class!8377) (Val!8377) (DelimiterValue!16754 (del!8437 List!56207)) (KeywordValue!8383 (value!259040 List!56207)) (CommentValue!16754 (value!259041 List!56207)) (WhitespaceValue!16754 (value!259042 List!56207)) (IndentationValue!8377 (value!259043 List!56207)) (String!63328) (Int32!8377) (Broken!41886 (value!259044 List!56207)) (Boolean!8378) (Unit!146072) (OperatorValue!8380 (op!8437 List!56207)) (IdentifierValue!16754 (value!259045 List!56207)) (IdentifierValue!16755 (value!259046 List!56207)) (WhitespaceValue!16755 (value!259047 List!56207)) (True!16754) (False!16754) (Broken!41887 (value!259048 List!56207)) (Broken!41888 (value!259049 List!56207)) (True!16755) (RightBrace!8377) (RightBracket!8377) (Colon!8377) (Null!8377) (Comma!8377) (LeftBracket!8377) (False!16755) (LeftBrace!8377) (ImaginaryLiteralValue!8377 (text!59085 List!56207)) (StringLiteralValue!25131 (value!259050 List!56207)) (EOFValue!8377 (value!259051 List!56207)) (IdentValue!8377 (value!259052 List!56207)) (DelimiterValue!16755 (value!259053 List!56207)) (DedentValue!8377 (value!259054 List!56207)) (NewLineValue!8377 (value!259055 List!56207)) (IntegerValue!25131 (value!259056 (_ BitVec 32)) (text!59086 List!56207)) (IntegerValue!25132 (value!259057 Int) (text!59087 List!56207)) (Times!8377) (Or!8377) (Equal!8377) (Minus!8377) (Broken!41889 (value!259058 List!56207)) (And!8377) (Div!8377) (LessEqual!8377) (Mod!8377) (Concat!21519) (Not!8377) (Plus!8377) (SpaceValue!8377 (value!259059 List!56207)) (IntegerValue!25133 (value!259060 Int) (text!59088 List!56207)) (StringLiteralValue!25132 (text!59089 List!56207)) (FloatLiteralValue!16755 (text!59090 List!56207)) (BytesLiteralValue!8377 (value!259061 List!56207)) (CommentValue!16755 (value!259062 List!56207)) (StringLiteralValue!25133 (value!259063 List!56207)) (ErrorTokenValue!8377 (msg!8438 List!56207)) )
))
(declare-datatypes ((Regex!13142 0))(
  ( (ElementMatch!13142 (c!830311 C!26482)) (Concat!21520 (regOne!26796 Regex!13142) (regTwo!26796 Regex!13142)) (EmptyExpr!13142) (Star!13142 (reg!13471 Regex!13142)) (EmptyLang!13142) (Union!13142 (regOne!26797 Regex!13142) (regTwo!26797 Regex!13142)) )
))
(declare-datatypes ((String!63329 0))(
  ( (String!63330 (value!259064 String)) )
))
(declare-datatypes ((TokenValueInjection!16062 0))(
  ( (TokenValueInjection!16063 (toValue!10954 Int) (toChars!10813 Int)) )
))
(declare-datatypes ((Rule!15934 0))(
  ( (Rule!15935 (regex!8067 Regex!13142) (tag!8931 String!63329) (isSeparator!8067 Bool) (transformation!8067 TokenValueInjection!16062)) )
))
(declare-datatypes ((Token!14706 0))(
  ( (Token!14707 (value!259065 TokenValue!8377) (rule!11223 Rule!15934) (size!36975 Int) (originalCharacters!8384 List!56206)) )
))
(declare-datatypes ((tuple2!59958 0))(
  ( (tuple2!59959 (_1!33282 Token!14706) (_2!33282 BalanceConc!28700)) )
))
(declare-fun lt!1999589 () tuple2!59958)

(declare-datatypes ((tuple2!59960 0))(
  ( (tuple2!59961 (_1!33283 Token!14706) (_2!33283 List!56206)) )
))
(declare-fun lt!1999595 () tuple2!59960)

(declare-fun list!17585 (BalanceConc!28700) List!56206)

(assert (=> b!4881654 (= e!3050908 (not (= (list!17585 (_2!33282 lt!1999589)) (_2!33283 lt!1999595))))))

(declare-fun b!4881655 () Bool)

(declare-fun e!3050912 () Bool)

(declare-fun e!3050903 () Bool)

(assert (=> b!4881655 (= e!3050912 e!3050903)))

(declare-fun res!2083849 () Bool)

(assert (=> b!4881655 (=> res!2083849 e!3050903)))

(declare-fun lt!1999594 () Bool)

(declare-datatypes ((Option!13826 0))(
  ( (None!13825) (Some!13825 (v!49775 tuple2!59960)) )
))
(declare-fun lt!1999596 () Option!13826)

(declare-fun isDefined!10878 (Option!13826) Bool)

(assert (=> b!4881655 (= res!2083849 (not (= lt!1999594 (isDefined!10878 lt!1999596))))))

(declare-datatypes ((Option!13827 0))(
  ( (None!13826) (Some!13826 (v!49776 tuple2!59958)) )
))
(declare-fun lt!1999592 () Option!13827)

(declare-fun isDefined!10879 (Option!13827) Bool)

(assert (=> b!4881655 (= lt!1999594 (isDefined!10879 lt!1999592))))

(declare-datatypes ((LexerInterface!7659 0))(
  ( (LexerInterfaceExt!7656 (__x!34048 Int)) (Lexer!7657) )
))
(declare-fun thiss!14805 () LexerInterface!7659)

(declare-fun lt!1999590 () List!56206)

(declare-datatypes ((List!56208 0))(
  ( (Nil!56084) (Cons!56084 (h!62532 Rule!15934) (t!364854 List!56208)) )
))
(declare-fun rulesArg!165 () List!56208)

(declare-fun maxPrefixZipper!580 (LexerInterface!7659 List!56208 List!56206) Option!13826)

(assert (=> b!4881655 (= lt!1999596 (maxPrefixZipper!580 thiss!14805 rulesArg!165 lt!1999590))))

(declare-fun input!1236 () BalanceConc!28700)

(declare-fun maxPrefixOneRuleZipperSequence!595 (LexerInterface!7659 Rule!15934 BalanceConc!28700) Option!13827)

(assert (=> b!4881655 (= lt!1999592 (maxPrefixOneRuleZipperSequence!595 thiss!14805 (h!62532 rulesArg!165) input!1236))))

(declare-fun b!4881656 () Bool)

(declare-fun e!3050905 () Bool)

(assert (=> b!4881656 (= e!3050905 (not e!3050912))))

(declare-fun res!2083850 () Bool)

(assert (=> b!4881656 (=> res!2083850 e!3050912)))

(assert (=> b!4881656 (= res!2083850 (or (not (is-Cons!56084 rulesArg!165)) (not (is-Nil!56084 (t!364854 rulesArg!165)))))))

(declare-fun isPrefix!4789 (List!56206 List!56206) Bool)

(assert (=> b!4881656 (isPrefix!4789 lt!1999590 lt!1999590)))

(declare-datatypes ((Unit!146073 0))(
  ( (Unit!146074) )
))
(declare-fun lt!1999593 () Unit!146073)

(declare-fun lemmaIsPrefixRefl!3186 (List!56206 List!56206) Unit!146073)

(assert (=> b!4881656 (= lt!1999593 (lemmaIsPrefixRefl!3186 lt!1999590 lt!1999590))))

(assert (=> b!4881656 (= lt!1999590 (list!17585 input!1236))))

(declare-fun e!3050902 () Bool)

(declare-fun b!4881657 () Bool)

(declare-fun tp!1373434 () Bool)

(declare-fun e!3050911 () Bool)

(declare-fun inv!72104 (String!63329) Bool)

(declare-fun inv!72107 (TokenValueInjection!16062) Bool)

(assert (=> b!4881657 (= e!3050902 (and tp!1373434 (inv!72104 (tag!8931 (h!62532 rulesArg!165))) (inv!72107 (transformation!8067 (h!62532 rulesArg!165))) e!3050911))))

(declare-fun b!4881659 () Bool)

(declare-fun res!2083848 () Bool)

(assert (=> b!4881659 (=> (not res!2083848) (not e!3050905))))

(declare-fun rulesValidInductive!3046 (LexerInterface!7659 List!56208) Bool)

(assert (=> b!4881659 (= res!2083848 (rulesValidInductive!3046 thiss!14805 rulesArg!165))))

(declare-fun b!4881660 () Bool)

(declare-fun res!2083844 () Bool)

(declare-fun e!3050904 () Bool)

(assert (=> b!4881660 (=> res!2083844 e!3050904)))

(declare-fun lt!1999591 () Bool)

(assert (=> b!4881660 (= res!2083844 lt!1999591)))

(declare-fun b!4881661 () Bool)

(declare-fun maxPrefix!4558 (LexerInterface!7659 List!56208 List!56206) Option!13826)

(assert (=> b!4881661 (= e!3050904 (isDefined!10878 (maxPrefix!4558 thiss!14805 rulesArg!165 lt!1999590)))))

(declare-fun b!4881662 () Bool)

(declare-fun e!3050906 () Bool)

(declare-fun tp!1373433 () Bool)

(declare-fun inv!72108 (Conc!14635) Bool)

(assert (=> b!4881662 (= e!3050906 (and (inv!72108 (c!830310 input!1236)) tp!1373433))))

(declare-fun res!2083846 () Bool)

(assert (=> start!510726 (=> (not res!2083846) (not e!3050905))))

(assert (=> start!510726 (= res!2083846 (is-Lexer!7657 thiss!14805))))

(assert (=> start!510726 e!3050905))

(assert (=> start!510726 true))

(declare-fun e!3050909 () Bool)

(assert (=> start!510726 e!3050909))

(declare-fun inv!72109 (BalanceConc!28700) Bool)

(assert (=> start!510726 (and (inv!72109 input!1236) e!3050906)))

(assert (=> b!4881658 (= e!3050911 (and tp!1373436 tp!1373435))))

(declare-fun b!4881663 () Bool)

(declare-fun tp!1373432 () Bool)

(assert (=> b!4881663 (= e!3050909 (and e!3050902 tp!1373432))))

(declare-fun b!4881664 () Bool)

(declare-fun e!3050910 () Bool)

(assert (=> b!4881664 (= e!3050910 e!3050908)))

(declare-fun res!2083847 () Bool)

(assert (=> b!4881664 (=> res!2083847 e!3050908)))

(assert (=> b!4881664 (= res!2083847 (not (= (_1!33282 lt!1999589) (_1!33283 lt!1999595))))))

(declare-fun get!19277 (Option!13826) tuple2!59960)

(assert (=> b!4881664 (= lt!1999595 (get!19277 lt!1999596))))

(declare-fun get!19278 (Option!13827) tuple2!59958)

(assert (=> b!4881664 (= lt!1999589 (get!19278 lt!1999592))))

(declare-fun b!4881665 () Bool)

(assert (=> b!4881665 (= e!3050903 e!3050904)))

(declare-fun res!2083851 () Bool)

(assert (=> b!4881665 (=> res!2083851 e!3050904)))

(assert (=> b!4881665 (= res!2083851 e!3050910)))

(declare-fun res!2083843 () Bool)

(assert (=> b!4881665 (=> (not res!2083843) (not e!3050910))))

(assert (=> b!4881665 (= res!2083843 (not lt!1999591))))

(assert (=> b!4881665 (= lt!1999591 (not lt!1999594))))

(declare-fun b!4881666 () Bool)

(declare-fun res!2083845 () Bool)

(assert (=> b!4881666 (=> (not res!2083845) (not e!3050905))))

(declare-fun isEmpty!30050 (List!56208) Bool)

(assert (=> b!4881666 (= res!2083845 (not (isEmpty!30050 rulesArg!165)))))

(assert (= (and start!510726 res!2083846) b!4881659))

(assert (= (and b!4881659 res!2083848) b!4881666))

(assert (= (and b!4881666 res!2083845) b!4881656))

(assert (= (and b!4881656 (not res!2083850)) b!4881655))

(assert (= (and b!4881655 (not res!2083849)) b!4881665))

(assert (= (and b!4881665 res!2083843) b!4881664))

(assert (= (and b!4881664 (not res!2083847)) b!4881654))

(assert (= (and b!4881665 (not res!2083851)) b!4881660))

(assert (= (and b!4881660 (not res!2083844)) b!4881661))

(assert (= b!4881657 b!4881658))

(assert (= b!4881663 b!4881657))

(assert (= (and start!510726 (is-Cons!56084 rulesArg!165)) b!4881663))

(assert (= start!510726 b!4881662))

(declare-fun m!5885890 () Bool)

(assert (=> start!510726 m!5885890))

(declare-fun m!5885892 () Bool)

(assert (=> b!4881655 m!5885892))

(declare-fun m!5885894 () Bool)

(assert (=> b!4881655 m!5885894))

(declare-fun m!5885896 () Bool)

(assert (=> b!4881655 m!5885896))

(declare-fun m!5885898 () Bool)

(assert (=> b!4881655 m!5885898))

(declare-fun m!5885900 () Bool)

(assert (=> b!4881666 m!5885900))

(declare-fun m!5885902 () Bool)

(assert (=> b!4881659 m!5885902))

(declare-fun m!5885904 () Bool)

(assert (=> b!4881654 m!5885904))

(declare-fun m!5885906 () Bool)

(assert (=> b!4881656 m!5885906))

(declare-fun m!5885908 () Bool)

(assert (=> b!4881656 m!5885908))

(declare-fun m!5885910 () Bool)

(assert (=> b!4881656 m!5885910))

(declare-fun m!5885912 () Bool)

(assert (=> b!4881661 m!5885912))

(assert (=> b!4881661 m!5885912))

(declare-fun m!5885914 () Bool)

(assert (=> b!4881661 m!5885914))

(declare-fun m!5885916 () Bool)

(assert (=> b!4881657 m!5885916))

(declare-fun m!5885918 () Bool)

(assert (=> b!4881657 m!5885918))

(declare-fun m!5885920 () Bool)

(assert (=> b!4881664 m!5885920))

(declare-fun m!5885922 () Bool)

(assert (=> b!4881664 m!5885922))

(declare-fun m!5885924 () Bool)

(assert (=> b!4881662 m!5885924))

(push 1)

(assert (not b!4881659))

(assert (not b!4881655))

(assert (not b!4881663))

(assert (not b!4881656))

(assert (not b!4881657))

(assert (not b!4881661))

(assert (not b_next!131717))

(assert b_and!343761)

(assert (not b_next!131719))

(assert (not start!510726))

(assert b_and!343759)

(assert (not b!4881662))

(assert (not b!4881666))

(assert (not b!4881654))

(assert (not b!4881664))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343761)

(assert b_and!343759)

(assert (not b_next!131717))

(assert (not b_next!131719))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1568929 () Bool)

(declare-fun c!830317 () Bool)

(assert (=> d!1568929 (= c!830317 (is-Node!14635 (c!830310 input!1236)))))

(declare-fun e!3050950 () Bool)

(assert (=> d!1568929 (= (inv!72108 (c!830310 input!1236)) e!3050950)))

(declare-fun b!4881712 () Bool)

(declare-fun inv!72113 (Conc!14635) Bool)

(assert (=> b!4881712 (= e!3050950 (inv!72113 (c!830310 input!1236)))))

(declare-fun b!4881713 () Bool)

(declare-fun e!3050951 () Bool)

(assert (=> b!4881713 (= e!3050950 e!3050951)))

(declare-fun res!2083887 () Bool)

(assert (=> b!4881713 (= res!2083887 (not (is-Leaf!24386 (c!830310 input!1236))))))

(assert (=> b!4881713 (=> res!2083887 e!3050951)))

(declare-fun b!4881714 () Bool)

(declare-fun inv!72114 (Conc!14635) Bool)

(assert (=> b!4881714 (= e!3050951 (inv!72114 (c!830310 input!1236)))))

(assert (= (and d!1568929 c!830317) b!4881712))

(assert (= (and d!1568929 (not c!830317)) b!4881713))

(assert (= (and b!4881713 (not res!2083887)) b!4881714))

(declare-fun m!5885962 () Bool)

(assert (=> b!4881712 m!5885962))

(declare-fun m!5885964 () Bool)

(assert (=> b!4881714 m!5885964))

(assert (=> b!4881662 d!1568929))

(declare-fun d!1568931 () Bool)

(declare-fun isEmpty!30052 (Option!13826) Bool)

(assert (=> d!1568931 (= (isDefined!10878 (maxPrefix!4558 thiss!14805 rulesArg!165 lt!1999590)) (not (isEmpty!30052 (maxPrefix!4558 thiss!14805 rulesArg!165 lt!1999590))))))

(declare-fun bs!1175429 () Bool)

(assert (= bs!1175429 d!1568931))

(assert (=> bs!1175429 m!5885912))

(declare-fun m!5885966 () Bool)

(assert (=> bs!1175429 m!5885966))

(assert (=> b!4881661 d!1568931))

(declare-fun b!4881737 () Bool)

(declare-fun res!2083911 () Bool)

(declare-fun e!3050963 () Bool)

(assert (=> b!4881737 (=> (not res!2083911) (not e!3050963))))

(declare-fun lt!1999636 () Option!13826)

(declare-fun size!36977 (List!56206) Int)

(assert (=> b!4881737 (= res!2083911 (< (size!36977 (_2!33283 (get!19277 lt!1999636))) (size!36977 lt!1999590)))))

(declare-fun call!338897 () Option!13826)

(declare-fun bm!338892 () Bool)

(declare-fun maxPrefixOneRule!3500 (LexerInterface!7659 Rule!15934 List!56206) Option!13826)

(assert (=> bm!338892 (= call!338897 (maxPrefixOneRule!3500 thiss!14805 (h!62532 rulesArg!165) lt!1999590))))

(declare-fun b!4881738 () Bool)

(declare-fun res!2083907 () Bool)

(assert (=> b!4881738 (=> (not res!2083907) (not e!3050963))))

(declare-fun charsOf!5350 (Token!14706) BalanceConc!28700)

(assert (=> b!4881738 (= res!2083907 (= (list!17585 (charsOf!5350 (_1!33283 (get!19277 lt!1999636)))) (originalCharacters!8384 (_1!33283 (get!19277 lt!1999636)))))))

(declare-fun d!1568933 () Bool)

(declare-fun e!3050962 () Bool)

(assert (=> d!1568933 e!3050962))

(declare-fun res!2083909 () Bool)

(assert (=> d!1568933 (=> res!2083909 e!3050962)))

(assert (=> d!1568933 (= res!2083909 (isEmpty!30052 lt!1999636))))

(declare-fun e!3050964 () Option!13826)

(assert (=> d!1568933 (= lt!1999636 e!3050964)))

(declare-fun c!830320 () Bool)

(assert (=> d!1568933 (= c!830320 (and (is-Cons!56084 rulesArg!165) (is-Nil!56084 (t!364854 rulesArg!165))))))

(declare-fun lt!1999635 () Unit!146073)

(declare-fun lt!1999637 () Unit!146073)

(assert (=> d!1568933 (= lt!1999635 lt!1999637)))

(assert (=> d!1568933 (isPrefix!4789 lt!1999590 lt!1999590)))

(assert (=> d!1568933 (= lt!1999637 (lemmaIsPrefixRefl!3186 lt!1999590 lt!1999590))))

(assert (=> d!1568933 (rulesValidInductive!3046 thiss!14805 rulesArg!165)))

(assert (=> d!1568933 (= (maxPrefix!4558 thiss!14805 rulesArg!165 lt!1999590) lt!1999636)))

(declare-fun b!4881739 () Bool)

(declare-fun contains!19413 (List!56208 Rule!15934) Bool)

(assert (=> b!4881739 (= e!3050963 (contains!19413 rulesArg!165 (rule!11223 (_1!33283 (get!19277 lt!1999636)))))))

(declare-fun b!4881740 () Bool)

(declare-fun res!2083910 () Bool)

(assert (=> b!4881740 (=> (not res!2083910) (not e!3050963))))

(declare-fun matchR!6501 (Regex!13142 List!56206) Bool)

(assert (=> b!4881740 (= res!2083910 (matchR!6501 (regex!8067 (rule!11223 (_1!33283 (get!19277 lt!1999636)))) (list!17585 (charsOf!5350 (_1!33283 (get!19277 lt!1999636))))))))

(declare-fun b!4881741 () Bool)

(declare-fun res!2083906 () Bool)

(assert (=> b!4881741 (=> (not res!2083906) (not e!3050963))))

(declare-fun apply!13511 (TokenValueInjection!16062 BalanceConc!28700) TokenValue!8377)

(declare-fun seqFromList!5907 (List!56206) BalanceConc!28700)

(assert (=> b!4881741 (= res!2083906 (= (value!259065 (_1!33283 (get!19277 lt!1999636))) (apply!13511 (transformation!8067 (rule!11223 (_1!33283 (get!19277 lt!1999636)))) (seqFromList!5907 (originalCharacters!8384 (_1!33283 (get!19277 lt!1999636)))))))))

(declare-fun b!4881742 () Bool)

(declare-fun res!2083908 () Bool)

(assert (=> b!4881742 (=> (not res!2083908) (not e!3050963))))

(declare-fun ++!12219 (List!56206 List!56206) List!56206)

(assert (=> b!4881742 (= res!2083908 (= (++!12219 (list!17585 (charsOf!5350 (_1!33283 (get!19277 lt!1999636)))) (_2!33283 (get!19277 lt!1999636))) lt!1999590))))

(declare-fun b!4881743 () Bool)

(declare-fun lt!1999634 () Option!13826)

(declare-fun lt!1999633 () Option!13826)

(assert (=> b!4881743 (= e!3050964 (ite (and (is-None!13825 lt!1999634) (is-None!13825 lt!1999633)) None!13825 (ite (is-None!13825 lt!1999633) lt!1999634 (ite (is-None!13825 lt!1999634) lt!1999633 (ite (>= (size!36975 (_1!33283 (v!49775 lt!1999634))) (size!36975 (_1!33283 (v!49775 lt!1999633)))) lt!1999634 lt!1999633)))))))

(assert (=> b!4881743 (= lt!1999634 call!338897)))

(assert (=> b!4881743 (= lt!1999633 (maxPrefix!4558 thiss!14805 (t!364854 rulesArg!165) lt!1999590))))

(declare-fun b!4881744 () Bool)

(assert (=> b!4881744 (= e!3050962 e!3050963)))

(declare-fun res!2083912 () Bool)

(assert (=> b!4881744 (=> (not res!2083912) (not e!3050963))))

(assert (=> b!4881744 (= res!2083912 (isDefined!10878 lt!1999636))))

(declare-fun b!4881745 () Bool)

(assert (=> b!4881745 (= e!3050964 call!338897)))

(assert (= (and d!1568933 c!830320) b!4881745))

(assert (= (and d!1568933 (not c!830320)) b!4881743))

(assert (= (or b!4881745 b!4881743) bm!338892))

(assert (= (and d!1568933 (not res!2083909)) b!4881744))

(assert (= (and b!4881744 res!2083912) b!4881738))

(assert (= (and b!4881738 res!2083907) b!4881737))

(assert (= (and b!4881737 res!2083911) b!4881742))

(assert (= (and b!4881742 res!2083908) b!4881741))

(assert (= (and b!4881741 res!2083906) b!4881740))

(assert (= (and b!4881740 res!2083910) b!4881739))

(declare-fun m!5885970 () Bool)

(assert (=> b!4881742 m!5885970))

(declare-fun m!5885972 () Bool)

(assert (=> b!4881742 m!5885972))

(assert (=> b!4881742 m!5885972))

(declare-fun m!5885974 () Bool)

(assert (=> b!4881742 m!5885974))

(assert (=> b!4881742 m!5885974))

(declare-fun m!5885976 () Bool)

(assert (=> b!4881742 m!5885976))

(assert (=> b!4881737 m!5885970))

(declare-fun m!5885978 () Bool)

(assert (=> b!4881737 m!5885978))

(declare-fun m!5885980 () Bool)

(assert (=> b!4881737 m!5885980))

(assert (=> b!4881739 m!5885970))

(declare-fun m!5885982 () Bool)

(assert (=> b!4881739 m!5885982))

(declare-fun m!5885984 () Bool)

(assert (=> b!4881743 m!5885984))

(assert (=> b!4881738 m!5885970))

(assert (=> b!4881738 m!5885972))

(assert (=> b!4881738 m!5885972))

(assert (=> b!4881738 m!5885974))

(declare-fun m!5885986 () Bool)

(assert (=> d!1568933 m!5885986))

(assert (=> d!1568933 m!5885906))

(assert (=> d!1568933 m!5885908))

(assert (=> d!1568933 m!5885902))

(declare-fun m!5885988 () Bool)

(assert (=> bm!338892 m!5885988))

(assert (=> b!4881741 m!5885970))

(declare-fun m!5885990 () Bool)

(assert (=> b!4881741 m!5885990))

(assert (=> b!4881741 m!5885990))

(declare-fun m!5885992 () Bool)

(assert (=> b!4881741 m!5885992))

(declare-fun m!5885994 () Bool)

(assert (=> b!4881744 m!5885994))

(assert (=> b!4881740 m!5885970))

(assert (=> b!4881740 m!5885972))

(assert (=> b!4881740 m!5885972))

(assert (=> b!4881740 m!5885974))

(assert (=> b!4881740 m!5885974))

(declare-fun m!5885996 () Bool)

(assert (=> b!4881740 m!5885996))

(assert (=> b!4881661 d!1568933))

(declare-fun d!1568939 () Bool)

(declare-fun e!3050972 () Bool)

(assert (=> d!1568939 e!3050972))

(declare-fun res!2083924 () Bool)

(assert (=> d!1568939 (=> res!2083924 e!3050972)))

(declare-fun lt!1999640 () Bool)

(assert (=> d!1568939 (= res!2083924 (not lt!1999640))))

(declare-fun e!3050973 () Bool)

(assert (=> d!1568939 (= lt!1999640 e!3050973)))

(declare-fun res!2083921 () Bool)

(assert (=> d!1568939 (=> res!2083921 e!3050973)))

(assert (=> d!1568939 (= res!2083921 (is-Nil!56082 lt!1999590))))

(assert (=> d!1568939 (= (isPrefix!4789 lt!1999590 lt!1999590) lt!1999640)))

(declare-fun b!4881756 () Bool)

(declare-fun e!3050971 () Bool)

(declare-fun tail!9570 (List!56206) List!56206)

(assert (=> b!4881756 (= e!3050971 (isPrefix!4789 (tail!9570 lt!1999590) (tail!9570 lt!1999590)))))

(declare-fun b!4881755 () Bool)

(declare-fun res!2083923 () Bool)

(assert (=> b!4881755 (=> (not res!2083923) (not e!3050971))))

(declare-fun head!10424 (List!56206) C!26482)

(assert (=> b!4881755 (= res!2083923 (= (head!10424 lt!1999590) (head!10424 lt!1999590)))))

(declare-fun b!4881757 () Bool)

(assert (=> b!4881757 (= e!3050972 (>= (size!36977 lt!1999590) (size!36977 lt!1999590)))))

(declare-fun b!4881754 () Bool)

(assert (=> b!4881754 (= e!3050973 e!3050971)))

(declare-fun res!2083922 () Bool)

(assert (=> b!4881754 (=> (not res!2083922) (not e!3050971))))

(assert (=> b!4881754 (= res!2083922 (not (is-Nil!56082 lt!1999590)))))

(assert (= (and d!1568939 (not res!2083921)) b!4881754))

(assert (= (and b!4881754 res!2083922) b!4881755))

(assert (= (and b!4881755 res!2083923) b!4881756))

(assert (= (and d!1568939 (not res!2083924)) b!4881757))

(declare-fun m!5885998 () Bool)

(assert (=> b!4881756 m!5885998))

(assert (=> b!4881756 m!5885998))

(assert (=> b!4881756 m!5885998))

(assert (=> b!4881756 m!5885998))

(declare-fun m!5886000 () Bool)

(assert (=> b!4881756 m!5886000))

(declare-fun m!5886002 () Bool)

(assert (=> b!4881755 m!5886002))

(assert (=> b!4881755 m!5886002))

(assert (=> b!4881757 m!5885980))

(assert (=> b!4881757 m!5885980))

(assert (=> b!4881656 d!1568939))

(declare-fun d!1568941 () Bool)

(assert (=> d!1568941 (isPrefix!4789 lt!1999590 lt!1999590)))

(declare-fun lt!1999643 () Unit!146073)

(declare-fun choose!35663 (List!56206 List!56206) Unit!146073)

(assert (=> d!1568941 (= lt!1999643 (choose!35663 lt!1999590 lt!1999590))))

(assert (=> d!1568941 (= (lemmaIsPrefixRefl!3186 lt!1999590 lt!1999590) lt!1999643)))

(declare-fun bs!1175431 () Bool)

(assert (= bs!1175431 d!1568941))

(assert (=> bs!1175431 m!5885906))

(declare-fun m!5886004 () Bool)

(assert (=> bs!1175431 m!5886004))

(assert (=> b!4881656 d!1568941))

(declare-fun d!1568943 () Bool)

(declare-fun list!17587 (Conc!14635) List!56206)

(assert (=> d!1568943 (= (list!17585 input!1236) (list!17587 (c!830310 input!1236)))))

(declare-fun bs!1175432 () Bool)

(assert (= bs!1175432 d!1568943))

(declare-fun m!5886006 () Bool)

(assert (=> bs!1175432 m!5886006))

(assert (=> b!4881656 d!1568943))

(declare-fun d!1568945 () Bool)

(assert (=> d!1568945 (= (inv!72104 (tag!8931 (h!62532 rulesArg!165))) (= (mod (str.len (value!259064 (tag!8931 (h!62532 rulesArg!165)))) 2) 0))))

(assert (=> b!4881657 d!1568945))

(declare-fun d!1568947 () Bool)

(declare-fun res!2083927 () Bool)

(declare-fun e!3050976 () Bool)

(assert (=> d!1568947 (=> (not res!2083927) (not e!3050976))))

(declare-fun semiInverseModEq!3556 (Int Int) Bool)

(assert (=> d!1568947 (= res!2083927 (semiInverseModEq!3556 (toChars!10813 (transformation!8067 (h!62532 rulesArg!165))) (toValue!10954 (transformation!8067 (h!62532 rulesArg!165)))))))

(assert (=> d!1568947 (= (inv!72107 (transformation!8067 (h!62532 rulesArg!165))) e!3050976)))

(declare-fun b!4881760 () Bool)

(declare-fun equivClasses!3435 (Int Int) Bool)

(assert (=> b!4881760 (= e!3050976 (equivClasses!3435 (toChars!10813 (transformation!8067 (h!62532 rulesArg!165))) (toValue!10954 (transformation!8067 (h!62532 rulesArg!165)))))))

(assert (= (and d!1568947 res!2083927) b!4881760))

(declare-fun m!5886008 () Bool)

(assert (=> d!1568947 m!5886008))

(declare-fun m!5886010 () Bool)

(assert (=> b!4881760 m!5886010))

(assert (=> b!4881657 d!1568947))

(declare-fun d!1568949 () Bool)

(assert (=> d!1568949 true))

(declare-fun lt!1999647 () Bool)

(declare-fun lambda!243699 () Int)

(declare-fun forall!13060 (List!56208 Int) Bool)

(assert (=> d!1568949 (= lt!1999647 (forall!13060 rulesArg!165 lambda!243699))))

(declare-fun e!3050983 () Bool)

(assert (=> d!1568949 (= lt!1999647 e!3050983)))

(declare-fun res!2083934 () Bool)

(assert (=> d!1568949 (=> res!2083934 e!3050983)))

(assert (=> d!1568949 (= res!2083934 (not (is-Cons!56084 rulesArg!165)))))

(assert (=> d!1568949 (= (rulesValidInductive!3046 thiss!14805 rulesArg!165) lt!1999647)))

(declare-fun b!4881769 () Bool)

(declare-fun e!3050984 () Bool)

(assert (=> b!4881769 (= e!3050983 e!3050984)))

(declare-fun res!2083935 () Bool)

(assert (=> b!4881769 (=> (not res!2083935) (not e!3050984))))

(declare-fun ruleValid!3641 (LexerInterface!7659 Rule!15934) Bool)

(assert (=> b!4881769 (= res!2083935 (ruleValid!3641 thiss!14805 (h!62532 rulesArg!165)))))

(declare-fun b!4881770 () Bool)

(assert (=> b!4881770 (= e!3050984 (rulesValidInductive!3046 thiss!14805 (t!364854 rulesArg!165)))))

(assert (= (and d!1568949 (not res!2083934)) b!4881769))

(assert (= (and b!4881769 res!2083935) b!4881770))

(declare-fun m!5886018 () Bool)

(assert (=> d!1568949 m!5886018))

(declare-fun m!5886020 () Bool)

(assert (=> b!4881769 m!5886020))

(declare-fun m!5886022 () Bool)

(assert (=> b!4881770 m!5886022))

(assert (=> b!4881659 d!1568949))

(declare-fun d!1568953 () Bool)

(assert (=> d!1568953 (= (list!17585 (_2!33282 lt!1999589)) (list!17587 (c!830310 (_2!33282 lt!1999589))))))

(declare-fun bs!1175433 () Bool)

(assert (= bs!1175433 d!1568953))

(declare-fun m!5886024 () Bool)

(assert (=> bs!1175433 m!5886024))

(assert (=> b!4881654 d!1568953))

(declare-fun d!1568955 () Bool)

(assert (=> d!1568955 (= (get!19277 lt!1999596) (v!49775 lt!1999596))))

(assert (=> b!4881664 d!1568955))

(declare-fun d!1568957 () Bool)

(assert (=> d!1568957 (= (get!19278 lt!1999592) (v!49776 lt!1999592))))

(assert (=> b!4881664 d!1568957))

(declare-fun d!1568961 () Bool)

(assert (=> d!1568961 (= (isDefined!10878 lt!1999596) (not (isEmpty!30052 lt!1999596)))))

(declare-fun bs!1175435 () Bool)

(assert (= bs!1175435 d!1568961))

(declare-fun m!5886028 () Bool)

(assert (=> bs!1175435 m!5886028))

(assert (=> b!4881655 d!1568961))

(declare-fun d!1568963 () Bool)

(declare-fun isEmpty!30053 (Option!13827) Bool)

(assert (=> d!1568963 (= (isDefined!10879 lt!1999592) (not (isEmpty!30053 lt!1999592)))))

(declare-fun bs!1175436 () Bool)

(assert (= bs!1175436 d!1568963))

(declare-fun m!5886030 () Bool)

(assert (=> bs!1175436 m!5886030))

(assert (=> b!4881655 d!1568963))

(declare-fun d!1568965 () Bool)

(declare-fun lt!1999660 () Option!13826)

(assert (=> d!1568965 (= lt!1999660 (maxPrefix!4558 thiss!14805 rulesArg!165 lt!1999590))))

(declare-fun e!3050993 () Option!13826)

(assert (=> d!1568965 (= lt!1999660 e!3050993)))

(declare-fun c!830326 () Bool)

(assert (=> d!1568965 (= c!830326 (and (is-Cons!56084 rulesArg!165) (is-Nil!56084 (t!364854 rulesArg!165))))))

(declare-fun lt!1999661 () Unit!146073)

(declare-fun lt!1999659 () Unit!146073)

(assert (=> d!1568965 (= lt!1999661 lt!1999659)))

(assert (=> d!1568965 (isPrefix!4789 lt!1999590 lt!1999590)))

(assert (=> d!1568965 (= lt!1999659 (lemmaIsPrefixRefl!3186 lt!1999590 lt!1999590))))

(assert (=> d!1568965 (rulesValidInductive!3046 thiss!14805 rulesArg!165)))

(assert (=> d!1568965 (= (maxPrefixZipper!580 thiss!14805 rulesArg!165 lt!1999590) lt!1999660)))

(declare-fun bm!338895 () Bool)

(declare-fun call!338900 () Option!13826)

(declare-fun maxPrefixOneRuleZipper!234 (LexerInterface!7659 Rule!15934 List!56206) Option!13826)

(assert (=> bm!338895 (= call!338900 (maxPrefixOneRuleZipper!234 thiss!14805 (h!62532 rulesArg!165) lt!1999590))))

(declare-fun b!4881786 () Bool)

(assert (=> b!4881786 (= e!3050993 call!338900)))

(declare-fun b!4881787 () Bool)

(declare-fun lt!1999658 () Option!13826)

(declare-fun lt!1999662 () Option!13826)

(assert (=> b!4881787 (= e!3050993 (ite (and (is-None!13825 lt!1999658) (is-None!13825 lt!1999662)) None!13825 (ite (is-None!13825 lt!1999662) lt!1999658 (ite (is-None!13825 lt!1999658) lt!1999662 (ite (>= (size!36975 (_1!33283 (v!49775 lt!1999658))) (size!36975 (_1!33283 (v!49775 lt!1999662)))) lt!1999658 lt!1999662)))))))

(assert (=> b!4881787 (= lt!1999658 call!338900)))

(assert (=> b!4881787 (= lt!1999662 (maxPrefixZipper!580 thiss!14805 (t!364854 rulesArg!165) lt!1999590))))

(assert (= (and d!1568965 c!830326) b!4881786))

(assert (= (and d!1568965 (not c!830326)) b!4881787))

(assert (= (or b!4881786 b!4881787) bm!338895))

(assert (=> d!1568965 m!5885912))

(assert (=> d!1568965 m!5885906))

(assert (=> d!1568965 m!5885908))

(assert (=> d!1568965 m!5885902))

(declare-fun m!5886040 () Bool)

(assert (=> bm!338895 m!5886040))

(declare-fun m!5886042 () Bool)

(assert (=> b!4881787 m!5886042))

(assert (=> b!4881655 d!1568965))

(declare-fun b!4881831 () Bool)

(declare-fun e!3051027 () Bool)

(assert (=> b!4881831 (= e!3051027 true)))

(declare-fun b!4881830 () Bool)

(declare-fun e!3051026 () Bool)

(assert (=> b!4881830 (= e!3051026 e!3051027)))

(declare-fun b!4881819 () Bool)

(assert (=> b!4881819 e!3051026))

(assert (= b!4881830 b!4881831))

(assert (= b!4881819 b!4881830))

(declare-fun lambda!243708 () Int)

(declare-fun order!25291 () Int)

(declare-fun order!25293 () Int)

(declare-fun dynLambda!22537 (Int Int) Int)

(declare-fun dynLambda!22538 (Int Int) Int)

(assert (=> b!4881831 (< (dynLambda!22537 order!25291 (toValue!10954 (transformation!8067 (h!62532 rulesArg!165)))) (dynLambda!22538 order!25293 lambda!243708))))

(declare-fun order!25295 () Int)

(declare-fun dynLambda!22539 (Int Int) Int)

(assert (=> b!4881831 (< (dynLambda!22539 order!25295 (toChars!10813 (transformation!8067 (h!62532 rulesArg!165)))) (dynLambda!22538 order!25293 lambda!243708))))

(declare-fun d!1568975 () Bool)

(declare-fun e!3051017 () Bool)

(assert (=> d!1568975 e!3051017))

(declare-fun res!2083955 () Bool)

(assert (=> d!1568975 (=> (not res!2083955) (not e!3051017))))

(declare-fun lt!1999718 () Option!13827)

(assert (=> d!1568975 (= res!2083955 (= (isDefined!10879 lt!1999718) (isDefined!10878 (maxPrefixOneRule!3500 thiss!14805 (h!62532 rulesArg!165) (list!17585 input!1236)))))))

(declare-fun e!3051020 () Option!13827)

(assert (=> d!1568975 (= lt!1999718 e!3051020)))

(declare-fun c!830334 () Bool)

(declare-datatypes ((tuple2!59966 0))(
  ( (tuple2!59967 (_1!33286 BalanceConc!28700) (_2!33286 BalanceConc!28700)) )
))
(declare-fun lt!1999724 () tuple2!59966)

(declare-fun isEmpty!30054 (BalanceConc!28700) Bool)

(assert (=> d!1568975 (= c!830334 (isEmpty!30054 (_1!33286 lt!1999724)))))

(declare-fun findLongestMatchWithZipperSequence!245 (Regex!13142 BalanceConc!28700) tuple2!59966)

(assert (=> d!1568975 (= lt!1999724 (findLongestMatchWithZipperSequence!245 (regex!8067 (h!62532 rulesArg!165)) input!1236))))

(assert (=> d!1568975 (ruleValid!3641 thiss!14805 (h!62532 rulesArg!165))))

(assert (=> d!1568975 (= (maxPrefixOneRuleZipperSequence!595 thiss!14805 (h!62532 rulesArg!165) input!1236) lt!1999718)))

(declare-fun b!4881818 () Bool)

(declare-fun e!3051018 () Bool)

(assert (=> b!4881818 (= e!3051018 (= (list!17585 (_2!33282 (get!19278 lt!1999718))) (_2!33283 (get!19277 (maxPrefixOneRule!3500 thiss!14805 (h!62532 rulesArg!165) (list!17585 input!1236))))))))

(declare-fun size!36978 (BalanceConc!28700) Int)

(assert (=> b!4881819 (= e!3051020 (Some!13826 (tuple2!59959 (Token!14707 (apply!13511 (transformation!8067 (h!62532 rulesArg!165)) (_1!33286 lt!1999724)) (h!62532 rulesArg!165) (size!36978 (_1!33286 lt!1999724)) (list!17585 (_1!33286 lt!1999724))) (_2!33286 lt!1999724))))))

(declare-fun lt!1999719 () List!56206)

(assert (=> b!4881819 (= lt!1999719 (list!17585 input!1236))))

(declare-fun lt!1999721 () Unit!146073)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1693 (Regex!13142 List!56206) Unit!146073)

(assert (=> b!4881819 (= lt!1999721 (longestMatchIsAcceptedByMatchOrIsEmpty!1693 (regex!8067 (h!62532 rulesArg!165)) lt!1999719))))

(declare-fun res!2083958 () Bool)

(declare-fun isEmpty!30055 (List!56206) Bool)

(declare-datatypes ((tuple2!59968 0))(
  ( (tuple2!59969 (_1!33287 List!56206) (_2!33287 List!56206)) )
))
(declare-fun findLongestMatchInner!1730 (Regex!13142 List!56206 Int List!56206 List!56206 Int) tuple2!59968)

(assert (=> b!4881819 (= res!2083958 (isEmpty!30055 (_1!33287 (findLongestMatchInner!1730 (regex!8067 (h!62532 rulesArg!165)) Nil!56082 (size!36977 Nil!56082) lt!1999719 lt!1999719 (size!36977 lt!1999719)))))))

(declare-fun e!3051019 () Bool)

(assert (=> b!4881819 (=> res!2083958 e!3051019)))

(assert (=> b!4881819 e!3051019))

(declare-fun lt!1999723 () Unit!146073)

(assert (=> b!4881819 (= lt!1999723 lt!1999721)))

(declare-fun lt!1999720 () Unit!146073)

(declare-fun lemmaInv!1213 (TokenValueInjection!16062) Unit!146073)

(assert (=> b!4881819 (= lt!1999720 (lemmaInv!1213 (transformation!8067 (h!62532 rulesArg!165))))))

(declare-fun lt!1999727 () Unit!146073)

(declare-fun ForallOf!1110 (Int BalanceConc!28700) Unit!146073)

(assert (=> b!4881819 (= lt!1999727 (ForallOf!1110 lambda!243708 (_1!33286 lt!1999724)))))

(declare-fun lt!1999722 () Unit!146073)

(assert (=> b!4881819 (= lt!1999722 (ForallOf!1110 lambda!243708 (seqFromList!5907 (list!17585 (_1!33286 lt!1999724)))))))

(declare-fun lt!1999726 () Option!13827)

(assert (=> b!4881819 (= lt!1999726 (Some!13826 (tuple2!59959 (Token!14707 (apply!13511 (transformation!8067 (h!62532 rulesArg!165)) (_1!33286 lt!1999724)) (h!62532 rulesArg!165) (size!36978 (_1!33286 lt!1999724)) (list!17585 (_1!33286 lt!1999724))) (_2!33286 lt!1999724))))))

(declare-fun lt!1999725 () Unit!146073)

(declare-fun lemmaEqSameImage!1067 (TokenValueInjection!16062 BalanceConc!28700 BalanceConc!28700) Unit!146073)

(assert (=> b!4881819 (= lt!1999725 (lemmaEqSameImage!1067 (transformation!8067 (h!62532 rulesArg!165)) (_1!33286 lt!1999724) (seqFromList!5907 (list!17585 (_1!33286 lt!1999724)))))))

(declare-fun b!4881820 () Bool)

(declare-fun e!3051021 () Bool)

(assert (=> b!4881820 (= e!3051021 e!3051018)))

(declare-fun res!2083957 () Bool)

(assert (=> b!4881820 (=> (not res!2083957) (not e!3051018))))

(assert (=> b!4881820 (= res!2083957 (= (_1!33282 (get!19278 lt!1999718)) (_1!33283 (get!19277 (maxPrefixOneRule!3500 thiss!14805 (h!62532 rulesArg!165) (list!17585 input!1236))))))))

(declare-fun b!4881821 () Bool)

(assert (=> b!4881821 (= e!3051020 None!13826)))

(declare-fun b!4881822 () Bool)

(assert (=> b!4881822 (= e!3051017 e!3051021)))

(declare-fun res!2083956 () Bool)

(assert (=> b!4881822 (=> res!2083956 e!3051021)))

(assert (=> b!4881822 (= res!2083956 (not (isDefined!10879 lt!1999718)))))

(declare-fun b!4881823 () Bool)

(assert (=> b!4881823 (= e!3051019 (matchR!6501 (regex!8067 (h!62532 rulesArg!165)) (_1!33287 (findLongestMatchInner!1730 (regex!8067 (h!62532 rulesArg!165)) Nil!56082 (size!36977 Nil!56082) lt!1999719 lt!1999719 (size!36977 lt!1999719)))))))

(assert (= (and d!1568975 c!830334) b!4881821))

(assert (= (and d!1568975 (not c!830334)) b!4881819))

(assert (= (and b!4881819 (not res!2083958)) b!4881823))

(assert (= (and d!1568975 res!2083955) b!4881822))

(assert (= (and b!4881822 (not res!2083956)) b!4881820))

(assert (= (and b!4881820 res!2083957) b!4881818))

(declare-fun m!5886048 () Bool)

(assert (=> b!4881822 m!5886048))

(declare-fun m!5886050 () Bool)

(assert (=> b!4881819 m!5886050))

(declare-fun m!5886052 () Bool)

(assert (=> b!4881819 m!5886052))

(declare-fun m!5886054 () Bool)

(assert (=> b!4881819 m!5886054))

(declare-fun m!5886056 () Bool)

(assert (=> b!4881819 m!5886056))

(declare-fun m!5886058 () Bool)

(assert (=> b!4881819 m!5886058))

(declare-fun m!5886060 () Bool)

(assert (=> b!4881819 m!5886060))

(declare-fun m!5886062 () Bool)

(assert (=> b!4881819 m!5886062))

(assert (=> b!4881819 m!5886054))

(declare-fun m!5886064 () Bool)

(assert (=> b!4881819 m!5886064))

(declare-fun m!5886066 () Bool)

(assert (=> b!4881819 m!5886066))

(declare-fun m!5886068 () Bool)

(assert (=> b!4881819 m!5886068))

(declare-fun m!5886070 () Bool)

(assert (=> b!4881819 m!5886070))

(assert (=> b!4881819 m!5886056))

(assert (=> b!4881819 m!5886054))

(declare-fun m!5886072 () Bool)

(assert (=> b!4881819 m!5886072))

(assert (=> b!4881819 m!5886058))

(assert (=> b!4881819 m!5885910))

(declare-fun m!5886074 () Bool)

(assert (=> b!4881819 m!5886074))

(assert (=> b!4881819 m!5886052))

(declare-fun m!5886076 () Bool)

(assert (=> b!4881820 m!5886076))

(assert (=> b!4881820 m!5885910))

(assert (=> b!4881820 m!5885910))

(declare-fun m!5886078 () Bool)

(assert (=> b!4881820 m!5886078))

(assert (=> b!4881820 m!5886078))

(declare-fun m!5886080 () Bool)

(assert (=> b!4881820 m!5886080))

(assert (=> b!4881818 m!5885910))

(assert (=> b!4881818 m!5886076))

(assert (=> b!4881818 m!5885910))

(assert (=> b!4881818 m!5886078))

(assert (=> b!4881818 m!5886078))

(assert (=> b!4881818 m!5886080))

(declare-fun m!5886082 () Bool)

(assert (=> b!4881818 m!5886082))

(assert (=> b!4881823 m!5886056))

(assert (=> b!4881823 m!5886058))

(assert (=> b!4881823 m!5886056))

(assert (=> b!4881823 m!5886058))

(assert (=> b!4881823 m!5886060))

(declare-fun m!5886084 () Bool)

(assert (=> b!4881823 m!5886084))

(assert (=> d!1568975 m!5886020))

(assert (=> d!1568975 m!5886048))

(declare-fun m!5886086 () Bool)

(assert (=> d!1568975 m!5886086))

(assert (=> d!1568975 m!5886078))

(declare-fun m!5886088 () Bool)

(assert (=> d!1568975 m!5886088))

(assert (=> d!1568975 m!5885910))

(assert (=> d!1568975 m!5886078))

(assert (=> d!1568975 m!5885910))

(declare-fun m!5886090 () Bool)

(assert (=> d!1568975 m!5886090))

(assert (=> b!4881655 d!1568975))

(declare-fun d!1568979 () Bool)

(declare-fun isBalanced!3982 (Conc!14635) Bool)

(assert (=> d!1568979 (= (inv!72109 input!1236) (isBalanced!3982 (c!830310 input!1236)))))

(declare-fun bs!1175439 () Bool)

(assert (= bs!1175439 d!1568979))

(declare-fun m!5886092 () Bool)

(assert (=> bs!1175439 m!5886092))

(assert (=> start!510726 d!1568979))

(declare-fun d!1568981 () Bool)

(assert (=> d!1568981 (= (isEmpty!30050 rulesArg!165) (is-Nil!56084 rulesArg!165))))

(assert (=> b!4881666 d!1568981))

(declare-fun b!4881840 () Bool)

(declare-fun tp!1373460 () Bool)

(declare-fun e!3051033 () Bool)

(declare-fun tp!1373458 () Bool)

(assert (=> b!4881840 (= e!3051033 (and (inv!72108 (left!40743 (c!830310 input!1236))) tp!1373458 (inv!72108 (right!41073 (c!830310 input!1236))) tp!1373460))))

(declare-fun b!4881842 () Bool)

(declare-fun e!3051032 () Bool)

(declare-fun tp!1373459 () Bool)

(assert (=> b!4881842 (= e!3051032 tp!1373459)))

(declare-fun b!4881841 () Bool)

(declare-fun inv!72115 (IArray!29331) Bool)

(assert (=> b!4881841 (= e!3051033 (and (inv!72115 (xs!17951 (c!830310 input!1236))) e!3051032))))

(assert (=> b!4881662 (= tp!1373433 (and (inv!72108 (c!830310 input!1236)) e!3051033))))

(assert (= (and b!4881662 (is-Node!14635 (c!830310 input!1236))) b!4881840))

(assert (= b!4881841 b!4881842))

(assert (= (and b!4881662 (is-Leaf!24386 (c!830310 input!1236))) b!4881841))

(declare-fun m!5886094 () Bool)

(assert (=> b!4881840 m!5886094))

(declare-fun m!5886096 () Bool)

(assert (=> b!4881840 m!5886096))

(declare-fun m!5886098 () Bool)

(assert (=> b!4881841 m!5886098))

(assert (=> b!4881662 m!5885924))

(declare-fun b!4881859 () Bool)

(declare-fun b_free!130935 () Bool)

(declare-fun b_next!131725 () Bool)

(assert (=> b!4881859 (= b_free!130935 (not b_next!131725))))

(declare-fun tp!1373471 () Bool)

(declare-fun b_and!343767 () Bool)

(assert (=> b!4881859 (= tp!1373471 b_and!343767)))

(declare-fun b_free!130937 () Bool)

(declare-fun b_next!131727 () Bool)

(assert (=> b!4881859 (= b_free!130937 (not b_next!131727))))

(declare-fun tp!1373470 () Bool)

(declare-fun b_and!343769 () Bool)

(assert (=> b!4881859 (= tp!1373470 b_and!343769)))

(declare-fun e!3051049 () Bool)

(assert (=> b!4881859 (= e!3051049 (and tp!1373471 tp!1373470))))

(declare-fun b!4881858 () Bool)

(declare-fun e!3051050 () Bool)

(declare-fun tp!1373469 () Bool)

(assert (=> b!4881858 (= e!3051050 (and tp!1373469 (inv!72104 (tag!8931 (h!62532 (t!364854 rulesArg!165)))) (inv!72107 (transformation!8067 (h!62532 (t!364854 rulesArg!165)))) e!3051049))))

(declare-fun b!4881857 () Bool)

(declare-fun e!3051047 () Bool)

(declare-fun tp!1373472 () Bool)

(assert (=> b!4881857 (= e!3051047 (and e!3051050 tp!1373472))))

(assert (=> b!4881663 (= tp!1373432 e!3051047)))

(assert (= b!4881858 b!4881859))

(assert (= b!4881857 b!4881858))

(assert (= (and b!4881663 (is-Cons!56084 (t!364854 rulesArg!165))) b!4881857))

(declare-fun m!5886100 () Bool)

(assert (=> b!4881858 m!5886100))

(declare-fun m!5886102 () Bool)

(assert (=> b!4881858 m!5886102))

(declare-fun b!4881876 () Bool)

(declare-fun e!3051057 () Bool)

(declare-fun tp_is_empty!35705 () Bool)

(assert (=> b!4881876 (= e!3051057 tp_is_empty!35705)))

(declare-fun b!4881879 () Bool)

(declare-fun tp!1373485 () Bool)

(declare-fun tp!1373484 () Bool)

(assert (=> b!4881879 (= e!3051057 (and tp!1373485 tp!1373484))))

(declare-fun b!4881878 () Bool)

(declare-fun tp!1373483 () Bool)

(assert (=> b!4881878 (= e!3051057 tp!1373483)))

(assert (=> b!4881657 (= tp!1373434 e!3051057)))

(declare-fun b!4881877 () Bool)

(declare-fun tp!1373486 () Bool)

(declare-fun tp!1373487 () Bool)

(assert (=> b!4881877 (= e!3051057 (and tp!1373486 tp!1373487))))

(assert (= (and b!4881657 (is-ElementMatch!13142 (regex!8067 (h!62532 rulesArg!165)))) b!4881876))

(assert (= (and b!4881657 (is-Concat!21520 (regex!8067 (h!62532 rulesArg!165)))) b!4881877))

(assert (= (and b!4881657 (is-Star!13142 (regex!8067 (h!62532 rulesArg!165)))) b!4881878))

(assert (= (and b!4881657 (is-Union!13142 (regex!8067 (h!62532 rulesArg!165)))) b!4881879))

(push 1)

(assert (not d!1568949))

(assert (not d!1568943))

(assert (not b!4881818))

(assert (not b!4881857))

(assert (not bm!338892))

(assert (not b!4881822))

(assert (not d!1568963))

(assert (not d!1568961))

(assert (not b!4881877))

(assert b_and!343769)

(assert (not b!4881741))

(assert (not b!4881879))

(assert tp_is_empty!35705)

(assert (not b!4881742))

(assert (not b!4881757))

(assert (not b!4881738))

(assert (not b!4881756))

(assert (not b!4881878))

(assert (not b!4881842))

(assert (not b!4881739))

(assert (not d!1568965))

(assert (not b!4881840))

(assert (not b_next!131717))

(assert (not b!4881755))

(assert (not b!4881760))

(assert (not d!1568933))

(assert (not b!4881787))

(assert b_and!343767)

(assert (not b!4881858))

(assert b_and!343761)

(assert (not b!4881820))

(assert (not d!1568979))

(assert (not d!1568941))

(assert (not d!1568953))

(assert (not b!4881769))

(assert (not b_next!131719))

(assert (not bm!338895))

(assert (not b!4881841))

(assert (not b!4881744))

(assert (not b!4881714))

(assert (not d!1568947))

(assert (not b!4881823))

(assert (not b_next!131727))

(assert (not d!1568975))

(assert (not b!4881737))

(assert (not b!4881740))

(assert (not d!1568931))

(assert b_and!343759)

(assert (not b!4881819))

(assert (not b!4881712))

(assert (not b!4881743))

(assert (not b!4881770))

(assert (not b!4881662))

(assert (not b_next!131725))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131717))

(assert b_and!343767)

(assert b_and!343761)

(assert (not b_next!131719))

(assert (not b_next!131727))

(assert b_and!343759)

(assert b_and!343769)

(assert (not b_next!131725))

(check-sat)

(pop 1)

