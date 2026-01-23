; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537060 () Bool)

(assert start!537060)

(declare-fun b!5094779 () Bool)

(declare-fun b_free!133375 () Bool)

(declare-fun b_next!134165 () Bool)

(assert (=> b!5094779 (= b_free!133375 (not b_next!134165))))

(declare-fun tp!1420546 () Bool)

(declare-fun b_and!350259 () Bool)

(assert (=> b!5094779 (= tp!1420546 b_and!350259)))

(declare-fun b_free!133377 () Bool)

(declare-fun b_next!134167 () Bool)

(assert (=> b!5094779 (= b_free!133377 (not b_next!134167))))

(declare-fun tp!1420548 () Bool)

(declare-fun b_and!350261 () Bool)

(assert (=> b!5094779 (= tp!1420548 b_and!350261)))

(declare-datatypes ((List!58734 0))(
  ( (Nil!58610) (Cons!58610 (h!65058 (_ BitVec 16)) (t!371689 List!58734)) )
))
(declare-datatypes ((TokenValue!8819 0))(
  ( (FloatLiteralValue!17638 (text!62178 List!58734)) (TokenValueExt!8818 (__x!34927 Int)) (Broken!44095 (value!272678 List!58734)) (Object!8942) (End!8819) (Def!8819) (Underscore!8819) (Match!8819) (Else!8819) (Error!8819) (Case!8819) (If!8819) (Extends!8819) (Abstract!8819) (Class!8819) (Val!8819) (DelimiterValue!17638 (del!8879 List!58734)) (KeywordValue!8825 (value!272679 List!58734)) (CommentValue!17638 (value!272680 List!58734)) (WhitespaceValue!17638 (value!272681 List!58734)) (IndentationValue!8819 (value!272682 List!58734)) (String!67018) (Int32!8819) (Broken!44096 (value!272683 List!58734)) (Boolean!8820) (Unit!149651) (OperatorValue!8822 (op!8879 List!58734)) (IdentifierValue!17638 (value!272684 List!58734)) (IdentifierValue!17639 (value!272685 List!58734)) (WhitespaceValue!17639 (value!272686 List!58734)) (True!17638) (False!17638) (Broken!44097 (value!272687 List!58734)) (Broken!44098 (value!272688 List!58734)) (True!17639) (RightBrace!8819) (RightBracket!8819) (Colon!8819) (Null!8819) (Comma!8819) (LeftBracket!8819) (False!17639) (LeftBrace!8819) (ImaginaryLiteralValue!8819 (text!62179 List!58734)) (StringLiteralValue!26457 (value!272689 List!58734)) (EOFValue!8819 (value!272690 List!58734)) (IdentValue!8819 (value!272691 List!58734)) (DelimiterValue!17639 (value!272692 List!58734)) (DedentValue!8819 (value!272693 List!58734)) (NewLineValue!8819 (value!272694 List!58734)) (IntegerValue!26457 (value!272695 (_ BitVec 32)) (text!62180 List!58734)) (IntegerValue!26458 (value!272696 Int) (text!62181 List!58734)) (Times!8819) (Or!8819) (Equal!8819) (Minus!8819) (Broken!44099 (value!272697 List!58734)) (And!8819) (Div!8819) (LessEqual!8819) (Mod!8819) (Concat!22799) (Not!8819) (Plus!8819) (SpaceValue!8819 (value!272698 List!58734)) (IntegerValue!26459 (value!272699 Int) (text!62182 List!58734)) (StringLiteralValue!26458 (text!62183 List!58734)) (FloatLiteralValue!17639 (text!62184 List!58734)) (BytesLiteralValue!8819 (value!272700 List!58734)) (CommentValue!17639 (value!272701 List!58734)) (StringLiteralValue!26459 (value!272702 List!58734)) (ErrorTokenValue!8819 (msg!8880 List!58734)) )
))
(declare-datatypes ((C!28218 0))(
  ( (C!28219 (val!23761 Int)) )
))
(declare-datatypes ((Regex!13980 0))(
  ( (ElementMatch!13980 (c!875509 C!28218)) (Concat!22800 (regOne!28472 Regex!13980) (regTwo!28472 Regex!13980)) (EmptyExpr!13980) (Star!13980 (reg!14309 Regex!13980)) (EmptyLang!13980) (Union!13980 (regOne!28473 Regex!13980) (regTwo!28473 Regex!13980)) )
))
(declare-datatypes ((String!67019 0))(
  ( (String!67020 (value!272703 String)) )
))
(declare-datatypes ((List!58735 0))(
  ( (Nil!58611) (Cons!58611 (h!65059 C!28218) (t!371690 List!58735)) )
))
(declare-datatypes ((IArray!31415 0))(
  ( (IArray!31416 (innerList!15765 List!58735)) )
))
(declare-datatypes ((Conc!15677 0))(
  ( (Node!15677 (left!43024 Conc!15677) (right!43354 Conc!15677) (csize!31584 Int) (cheight!15888 Int)) (Leaf!26021 (xs!19059 IArray!31415) (csize!31585 Int)) (Empty!15677) )
))
(declare-datatypes ((BalanceConc!30472 0))(
  ( (BalanceConc!30473 (c!875510 Conc!15677)) )
))
(declare-datatypes ((TokenValueInjection!16946 0))(
  ( (TokenValueInjection!16947 (toValue!11528 Int) (toChars!11387 Int)) )
))
(declare-datatypes ((Rule!16810 0))(
  ( (Rule!16811 (regex!8505 Regex!13980) (tag!9369 String!67019) (isSeparator!8505 Bool) (transformation!8505 TokenValueInjection!16946)) )
))
(declare-datatypes ((Token!15450 0))(
  ( (Token!15451 (value!272704 TokenValue!8819) (rule!11781 Rule!16810) (size!39275 Int) (originalCharacters!8756 List!58735)) )
))
(declare-datatypes ((tuple2!63338 0))(
  ( (tuple2!63339 (_1!34972 Token!15450) (_2!34972 List!58735)) )
))
(declare-datatypes ((Option!14634 0))(
  ( (None!14633) (Some!14633 (v!50646 tuple2!63338)) )
))
(declare-fun lt!2093246 () Option!14634)

(declare-fun b!5094777 () Bool)

(declare-fun e!3177406 () Bool)

(declare-datatypes ((List!58736 0))(
  ( (Nil!58612) (Cons!58612 (h!65060 Rule!16810) (t!371691 List!58736)) )
))
(declare-fun rulesArg!145 () List!58736)

(declare-datatypes ((LexerInterface!8097 0))(
  ( (LexerInterfaceExt!8094 (__x!34928 Int)) (Lexer!8095) )
))
(declare-fun thiss!14775 () LexerInterface!8097)

(declare-fun input!1210 () List!58735)

(declare-fun maxPrefix!4674 (LexerInterface!8097 List!58736 List!58735) Option!14634)

(assert (=> b!5094777 (= e!3177406 (= lt!2093246 (maxPrefix!4674 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun b!5094778 () Bool)

(declare-fun e!3177407 () Bool)

(assert (=> b!5094778 (= e!3177407 e!3177406)))

(declare-fun res!2168222 () Bool)

(assert (=> b!5094778 (=> res!2168222 e!3177406)))

(declare-fun lt!2093247 () Option!14634)

(assert (=> b!5094778 (= res!2168222 (or (and (is-None!14633 lt!2093246) (is-None!14633 lt!2093247)) (not (is-None!14633 lt!2093247))))))

(declare-fun maxPrefixZipper!800 (LexerInterface!8097 List!58736 List!58735) Option!14634)

(assert (=> b!5094778 (= lt!2093247 (maxPrefixZipper!800 thiss!14775 (t!371691 rulesArg!145) input!1210))))

(declare-fun maxPrefixOneRuleZipper!321 (LexerInterface!8097 Rule!16810 List!58735) Option!14634)

(assert (=> b!5094778 (= lt!2093246 (maxPrefixOneRuleZipper!321 thiss!14775 (h!65060 rulesArg!145) input!1210))))

(declare-fun e!3177404 () Bool)

(assert (=> b!5094779 (= e!3177404 (and tp!1420546 tp!1420548))))

(declare-fun b!5094780 () Bool)

(declare-fun e!3177402 () Bool)

(declare-fun e!3177403 () Bool)

(declare-fun tp!1420544 () Bool)

(assert (=> b!5094780 (= e!3177402 (and e!3177403 tp!1420544))))

(declare-fun res!2168223 () Bool)

(declare-fun e!3177408 () Bool)

(assert (=> start!537060 (=> (not res!2168223) (not e!3177408))))

(assert (=> start!537060 (= res!2168223 (is-Lexer!8095 thiss!14775))))

(assert (=> start!537060 e!3177408))

(assert (=> start!537060 true))

(assert (=> start!537060 e!3177402))

(declare-fun e!3177409 () Bool)

(assert (=> start!537060 e!3177409))

(declare-fun b!5094781 () Bool)

(declare-fun tp_is_empty!37225 () Bool)

(declare-fun tp!1420545 () Bool)

(assert (=> b!5094781 (= e!3177409 (and tp_is_empty!37225 tp!1420545))))

(declare-fun b!5094782 () Bool)

(declare-fun tp!1420547 () Bool)

(declare-fun inv!78105 (String!67019) Bool)

(declare-fun inv!78108 (TokenValueInjection!16946) Bool)

(assert (=> b!5094782 (= e!3177403 (and tp!1420547 (inv!78105 (tag!9369 (h!65060 rulesArg!145))) (inv!78108 (transformation!8505 (h!65060 rulesArg!145))) e!3177404))))

(declare-fun b!5094783 () Bool)

(declare-fun res!2168225 () Bool)

(assert (=> b!5094783 (=> (not res!2168225) (not e!3177408))))

(declare-fun rulesValidInductive!3330 (LexerInterface!8097 List!58736) Bool)

(assert (=> b!5094783 (= res!2168225 (rulesValidInductive!3330 thiss!14775 rulesArg!145))))

(declare-fun b!5094784 () Bool)

(declare-fun res!2168226 () Bool)

(assert (=> b!5094784 (=> (not res!2168226) (not e!3177408))))

(declare-fun isEmpty!31724 (List!58736) Bool)

(assert (=> b!5094784 (= res!2168226 (not (isEmpty!31724 rulesArg!145)))))

(declare-fun b!5094785 () Bool)

(assert (=> b!5094785 (= e!3177408 (not e!3177407))))

(declare-fun res!2168224 () Bool)

(assert (=> b!5094785 (=> res!2168224 e!3177407)))

(assert (=> b!5094785 (= res!2168224 (or (and (is-Cons!58612 rulesArg!145) (is-Nil!58612 (t!371691 rulesArg!145))) (not (is-Cons!58612 rulesArg!145))))))

(declare-fun isPrefix!5401 (List!58735 List!58735) Bool)

(assert (=> b!5094785 (isPrefix!5401 input!1210 input!1210)))

(declare-datatypes ((Unit!149652 0))(
  ( (Unit!149653) )
))
(declare-fun lt!2093245 () Unit!149652)

(declare-fun lemmaIsPrefixRefl!3660 (List!58735 List!58735) Unit!149652)

(assert (=> b!5094785 (= lt!2093245 (lemmaIsPrefixRefl!3660 input!1210 input!1210))))

(assert (= (and start!537060 res!2168223) b!5094783))

(assert (= (and b!5094783 res!2168225) b!5094784))

(assert (= (and b!5094784 res!2168226) b!5094785))

(assert (= (and b!5094785 (not res!2168224)) b!5094778))

(assert (= (and b!5094778 (not res!2168222)) b!5094777))

(assert (= b!5094782 b!5094779))

(assert (= b!5094780 b!5094782))

(assert (= (and start!537060 (is-Cons!58612 rulesArg!145)) b!5094780))

(assert (= (and start!537060 (is-Cons!58611 input!1210)) b!5094781))

(declare-fun m!6152480 () Bool)

(assert (=> b!5094784 m!6152480))

(declare-fun m!6152482 () Bool)

(assert (=> b!5094782 m!6152482))

(declare-fun m!6152484 () Bool)

(assert (=> b!5094782 m!6152484))

(declare-fun m!6152486 () Bool)

(assert (=> b!5094785 m!6152486))

(declare-fun m!6152488 () Bool)

(assert (=> b!5094785 m!6152488))

(declare-fun m!6152490 () Bool)

(assert (=> b!5094778 m!6152490))

(declare-fun m!6152492 () Bool)

(assert (=> b!5094778 m!6152492))

(declare-fun m!6152494 () Bool)

(assert (=> b!5094777 m!6152494))

(declare-fun m!6152496 () Bool)

(assert (=> b!5094783 m!6152496))

(push 1)

(assert (not b_next!134167))

(assert b_and!350259)

(assert (not b!5094785))

(assert (not b!5094781))

(assert (not b!5094783))

(assert b_and!350261)

(assert tp_is_empty!37225)

(assert (not b!5094780))

(assert (not b_next!134165))

(assert (not b!5094777))

(assert (not b!5094778))

(assert (not b!5094784))

(assert (not b!5094782))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350261)

(assert b_and!350259)

(assert (not b_next!134165))

(assert (not b_next!134167))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5094823 () Bool)

(declare-fun e!3177441 () Bool)

(declare-fun tail!9974 (List!58735) List!58735)

(assert (=> b!5094823 (= e!3177441 (isPrefix!5401 (tail!9974 input!1210) (tail!9974 input!1210)))))

(declare-fun b!5094821 () Bool)

(declare-fun e!3177440 () Bool)

(assert (=> b!5094821 (= e!3177440 e!3177441)))

(declare-fun res!2168260 () Bool)

(assert (=> b!5094821 (=> (not res!2168260) (not e!3177441))))

(assert (=> b!5094821 (= res!2168260 (not (is-Nil!58611 input!1210)))))

(declare-fun b!5094822 () Bool)

(declare-fun res!2168261 () Bool)

(assert (=> b!5094822 (=> (not res!2168261) (not e!3177441))))

(declare-fun head!10819 (List!58735) C!28218)

(assert (=> b!5094822 (= res!2168261 (= (head!10819 input!1210) (head!10819 input!1210)))))

(declare-fun b!5094824 () Bool)

(declare-fun e!3177442 () Bool)

(declare-fun size!39277 (List!58735) Int)

(assert (=> b!5094824 (= e!3177442 (>= (size!39277 input!1210) (size!39277 input!1210)))))

(declare-fun d!1648894 () Bool)

(assert (=> d!1648894 e!3177442))

(declare-fun res!2168262 () Bool)

(assert (=> d!1648894 (=> res!2168262 e!3177442)))

(declare-fun lt!2093259 () Bool)

(assert (=> d!1648894 (= res!2168262 (not lt!2093259))))

(assert (=> d!1648894 (= lt!2093259 e!3177440)))

(declare-fun res!2168259 () Bool)

(assert (=> d!1648894 (=> res!2168259 e!3177440)))

(assert (=> d!1648894 (= res!2168259 (is-Nil!58611 input!1210))))

(assert (=> d!1648894 (= (isPrefix!5401 input!1210 input!1210) lt!2093259)))

(assert (= (and d!1648894 (not res!2168259)) b!5094821))

(assert (= (and b!5094821 res!2168260) b!5094822))

(assert (= (and b!5094822 res!2168261) b!5094823))

(assert (= (and d!1648894 (not res!2168262)) b!5094824))

(declare-fun m!6152516 () Bool)

(assert (=> b!5094823 m!6152516))

(assert (=> b!5094823 m!6152516))

(assert (=> b!5094823 m!6152516))

(assert (=> b!5094823 m!6152516))

(declare-fun m!6152518 () Bool)

(assert (=> b!5094823 m!6152518))

(declare-fun m!6152520 () Bool)

(assert (=> b!5094822 m!6152520))

(assert (=> b!5094822 m!6152520))

(declare-fun m!6152522 () Bool)

(assert (=> b!5094824 m!6152522))

(assert (=> b!5094824 m!6152522))

(assert (=> b!5094785 d!1648894))

(declare-fun d!1648896 () Bool)

(assert (=> d!1648896 (isPrefix!5401 input!1210 input!1210)))

(declare-fun lt!2093262 () Unit!149652)

(declare-fun choose!37306 (List!58735 List!58735) Unit!149652)

(assert (=> d!1648896 (= lt!2093262 (choose!37306 input!1210 input!1210))))

(assert (=> d!1648896 (= (lemmaIsPrefixRefl!3660 input!1210 input!1210) lt!2093262)))

(declare-fun bs!1191305 () Bool)

(assert (= bs!1191305 d!1648896))

(assert (=> bs!1191305 m!6152486))

(declare-fun m!6152524 () Bool)

(assert (=> bs!1191305 m!6152524))

(assert (=> b!5094785 d!1648896))

(declare-fun d!1648898 () Bool)

(assert (=> d!1648898 (= (inv!78105 (tag!9369 (h!65060 rulesArg!145))) (= (mod (str.len (value!272703 (tag!9369 (h!65060 rulesArg!145)))) 2) 0))))

(assert (=> b!5094782 d!1648898))

(declare-fun d!1648900 () Bool)

(declare-fun res!2168265 () Bool)

(declare-fun e!3177445 () Bool)

(assert (=> d!1648900 (=> (not res!2168265) (not e!3177445))))

(declare-fun semiInverseModEq!3788 (Int Int) Bool)

(assert (=> d!1648900 (= res!2168265 (semiInverseModEq!3788 (toChars!11387 (transformation!8505 (h!65060 rulesArg!145))) (toValue!11528 (transformation!8505 (h!65060 rulesArg!145)))))))

(assert (=> d!1648900 (= (inv!78108 (transformation!8505 (h!65060 rulesArg!145))) e!3177445)))

(declare-fun b!5094827 () Bool)

(declare-fun equivClasses!3603 (Int Int) Bool)

(assert (=> b!5094827 (= e!3177445 (equivClasses!3603 (toChars!11387 (transformation!8505 (h!65060 rulesArg!145))) (toValue!11528 (transformation!8505 (h!65060 rulesArg!145)))))))

(assert (= (and d!1648900 res!2168265) b!5094827))

(declare-fun m!6152526 () Bool)

(assert (=> d!1648900 m!6152526))

(declare-fun m!6152528 () Bool)

(assert (=> b!5094827 m!6152528))

(assert (=> b!5094782 d!1648900))

(declare-fun b!5094846 () Bool)

(declare-fun e!3177454 () Option!14634)

(declare-fun lt!2093277 () Option!14634)

(declare-fun lt!2093273 () Option!14634)

(assert (=> b!5094846 (= e!3177454 (ite (and (is-None!14633 lt!2093277) (is-None!14633 lt!2093273)) None!14633 (ite (is-None!14633 lt!2093273) lt!2093277 (ite (is-None!14633 lt!2093277) lt!2093273 (ite (>= (size!39275 (_1!34972 (v!50646 lt!2093277))) (size!39275 (_1!34972 (v!50646 lt!2093273)))) lt!2093277 lt!2093273)))))))

(declare-fun call!354746 () Option!14634)

(assert (=> b!5094846 (= lt!2093277 call!354746)))

(assert (=> b!5094846 (= lt!2093273 (maxPrefix!4674 thiss!14775 (t!371691 rulesArg!145) input!1210))))

(declare-fun b!5094847 () Bool)

(declare-fun res!2168280 () Bool)

(declare-fun e!3177452 () Bool)

(assert (=> b!5094847 (=> (not res!2168280) (not e!3177452))))

(declare-fun lt!2093274 () Option!14634)

(declare-fun get!20346 (Option!14634) tuple2!63338)

(declare-fun apply!14291 (TokenValueInjection!16946 BalanceConc!30472) TokenValue!8819)

(declare-fun seqFromList!6109 (List!58735) BalanceConc!30472)

(assert (=> b!5094847 (= res!2168280 (= (value!272704 (_1!34972 (get!20346 lt!2093274))) (apply!14291 (transformation!8505 (rule!11781 (_1!34972 (get!20346 lt!2093274)))) (seqFromList!6109 (originalCharacters!8756 (_1!34972 (get!20346 lt!2093274)))))))))

(declare-fun b!5094848 () Bool)

(declare-fun res!2168286 () Bool)

(assert (=> b!5094848 (=> (not res!2168286) (not e!3177452))))

(declare-fun matchR!6791 (Regex!13980 List!58735) Bool)

(declare-fun list!19140 (BalanceConc!30472) List!58735)

(declare-fun charsOf!5474 (Token!15450) BalanceConc!30472)

(assert (=> b!5094848 (= res!2168286 (matchR!6791 (regex!8505 (rule!11781 (_1!34972 (get!20346 lt!2093274)))) (list!19140 (charsOf!5474 (_1!34972 (get!20346 lt!2093274))))))))

(declare-fun b!5094849 () Bool)

(declare-fun contains!19601 (List!58736 Rule!16810) Bool)

(assert (=> b!5094849 (= e!3177452 (contains!19601 rulesArg!145 (rule!11781 (_1!34972 (get!20346 lt!2093274)))))))

(declare-fun bm!354741 () Bool)

(declare-fun maxPrefixOneRule!3702 (LexerInterface!8097 Rule!16810 List!58735) Option!14634)

(assert (=> bm!354741 (= call!354746 (maxPrefixOneRule!3702 thiss!14775 (h!65060 rulesArg!145) input!1210))))

(declare-fun d!1648904 () Bool)

(declare-fun e!3177453 () Bool)

(assert (=> d!1648904 e!3177453))

(declare-fun res!2168282 () Bool)

(assert (=> d!1648904 (=> res!2168282 e!3177453)))

(declare-fun isEmpty!31726 (Option!14634) Bool)

(assert (=> d!1648904 (= res!2168282 (isEmpty!31726 lt!2093274))))

(assert (=> d!1648904 (= lt!2093274 e!3177454)))

(declare-fun c!875516 () Bool)

(assert (=> d!1648904 (= c!875516 (and (is-Cons!58612 rulesArg!145) (is-Nil!58612 (t!371691 rulesArg!145))))))

(declare-fun lt!2093276 () Unit!149652)

(declare-fun lt!2093275 () Unit!149652)

(assert (=> d!1648904 (= lt!2093276 lt!2093275)))

(assert (=> d!1648904 (isPrefix!5401 input!1210 input!1210)))

(assert (=> d!1648904 (= lt!2093275 (lemmaIsPrefixRefl!3660 input!1210 input!1210))))

(assert (=> d!1648904 (rulesValidInductive!3330 thiss!14775 rulesArg!145)))

(assert (=> d!1648904 (= (maxPrefix!4674 thiss!14775 rulesArg!145 input!1210) lt!2093274)))

(declare-fun b!5094850 () Bool)

(declare-fun res!2168285 () Bool)

(assert (=> b!5094850 (=> (not res!2168285) (not e!3177452))))

(declare-fun ++!12851 (List!58735 List!58735) List!58735)

(assert (=> b!5094850 (= res!2168285 (= (++!12851 (list!19140 (charsOf!5474 (_1!34972 (get!20346 lt!2093274)))) (_2!34972 (get!20346 lt!2093274))) input!1210))))

(declare-fun b!5094851 () Bool)

(declare-fun res!2168284 () Bool)

(assert (=> b!5094851 (=> (not res!2168284) (not e!3177452))))

(assert (=> b!5094851 (= res!2168284 (= (list!19140 (charsOf!5474 (_1!34972 (get!20346 lt!2093274)))) (originalCharacters!8756 (_1!34972 (get!20346 lt!2093274)))))))

(declare-fun b!5094852 () Bool)

(assert (=> b!5094852 (= e!3177454 call!354746)))

(declare-fun b!5094853 () Bool)

(assert (=> b!5094853 (= e!3177453 e!3177452)))

(declare-fun res!2168281 () Bool)

(assert (=> b!5094853 (=> (not res!2168281) (not e!3177452))))

(declare-fun isDefined!11500 (Option!14634) Bool)

(assert (=> b!5094853 (= res!2168281 (isDefined!11500 lt!2093274))))

(declare-fun b!5094854 () Bool)

(declare-fun res!2168283 () Bool)

(assert (=> b!5094854 (=> (not res!2168283) (not e!3177452))))

(assert (=> b!5094854 (= res!2168283 (< (size!39277 (_2!34972 (get!20346 lt!2093274))) (size!39277 input!1210)))))

(assert (= (and d!1648904 c!875516) b!5094852))

(assert (= (and d!1648904 (not c!875516)) b!5094846))

(assert (= (or b!5094852 b!5094846) bm!354741))

(assert (= (and d!1648904 (not res!2168282)) b!5094853))

(assert (= (and b!5094853 res!2168281) b!5094851))

(assert (= (and b!5094851 res!2168284) b!5094854))

(assert (= (and b!5094854 res!2168283) b!5094850))

(assert (= (and b!5094850 res!2168285) b!5094847))

(assert (= (and b!5094847 res!2168280) b!5094848))

(assert (= (and b!5094848 res!2168286) b!5094849))

(declare-fun m!6152530 () Bool)

(assert (=> b!5094851 m!6152530))

(declare-fun m!6152532 () Bool)

(assert (=> b!5094851 m!6152532))

(assert (=> b!5094851 m!6152532))

(declare-fun m!6152534 () Bool)

(assert (=> b!5094851 m!6152534))

(assert (=> b!5094849 m!6152530))

(declare-fun m!6152536 () Bool)

(assert (=> b!5094849 m!6152536))

(declare-fun m!6152538 () Bool)

(assert (=> bm!354741 m!6152538))

(assert (=> b!5094848 m!6152530))

(assert (=> b!5094848 m!6152532))

(assert (=> b!5094848 m!6152532))

(assert (=> b!5094848 m!6152534))

(assert (=> b!5094848 m!6152534))

(declare-fun m!6152540 () Bool)

(assert (=> b!5094848 m!6152540))

(declare-fun m!6152542 () Bool)

(assert (=> b!5094846 m!6152542))

(declare-fun m!6152544 () Bool)

(assert (=> d!1648904 m!6152544))

(assert (=> d!1648904 m!6152486))

(assert (=> d!1648904 m!6152488))

(assert (=> d!1648904 m!6152496))

(assert (=> b!5094847 m!6152530))

(declare-fun m!6152546 () Bool)

(assert (=> b!5094847 m!6152546))

(assert (=> b!5094847 m!6152546))

(declare-fun m!6152548 () Bool)

(assert (=> b!5094847 m!6152548))

(declare-fun m!6152550 () Bool)

(assert (=> b!5094853 m!6152550))

(assert (=> b!5094850 m!6152530))

(assert (=> b!5094850 m!6152532))

(assert (=> b!5094850 m!6152532))

(assert (=> b!5094850 m!6152534))

(assert (=> b!5094850 m!6152534))

(declare-fun m!6152552 () Bool)

(assert (=> b!5094850 m!6152552))

(assert (=> b!5094854 m!6152530))

(declare-fun m!6152554 () Bool)

(assert (=> b!5094854 m!6152554))

(assert (=> b!5094854 m!6152522))

(assert (=> b!5094777 d!1648904))

(declare-fun d!1648906 () Bool)

(assert (=> d!1648906 true))

(declare-fun lt!2093322 () Bool)

(declare-fun lambda!249865 () Int)

(declare-fun forall!13475 (List!58736 Int) Bool)

(assert (=> d!1648906 (= lt!2093322 (forall!13475 rulesArg!145 lambda!249865))))

(declare-fun e!3177475 () Bool)

(assert (=> d!1648906 (= lt!2093322 e!3177475)))

(declare-fun res!2168315 () Bool)

(assert (=> d!1648906 (=> res!2168315 e!3177475)))

(assert (=> d!1648906 (= res!2168315 (not (is-Cons!58612 rulesArg!145)))))

(assert (=> d!1648906 (= (rulesValidInductive!3330 thiss!14775 rulesArg!145) lt!2093322)))

(declare-fun b!5094898 () Bool)

(declare-fun e!3177476 () Bool)

(assert (=> b!5094898 (= e!3177475 e!3177476)))

(declare-fun res!2168314 () Bool)

(assert (=> b!5094898 (=> (not res!2168314) (not e!3177476))))

(declare-fun ruleValid!3902 (LexerInterface!8097 Rule!16810) Bool)

(assert (=> b!5094898 (= res!2168314 (ruleValid!3902 thiss!14775 (h!65060 rulesArg!145)))))

(declare-fun b!5094899 () Bool)

(assert (=> b!5094899 (= e!3177476 (rulesValidInductive!3330 thiss!14775 (t!371691 rulesArg!145)))))

(assert (= (and d!1648906 (not res!2168315)) b!5094898))

(assert (= (and b!5094898 res!2168314) b!5094899))

(declare-fun m!6152590 () Bool)

(assert (=> d!1648906 m!6152590))

(declare-fun m!6152592 () Bool)

(assert (=> b!5094898 m!6152592))

(declare-fun m!6152594 () Bool)

(assert (=> b!5094899 m!6152594))

(assert (=> b!5094783 d!1648906))

(declare-fun d!1648912 () Bool)

(declare-fun lt!2093350 () Option!14634)

(assert (=> d!1648912 (= lt!2093350 (maxPrefix!4674 thiss!14775 (t!371691 rulesArg!145) input!1210))))

(declare-fun e!3177494 () Option!14634)

(assert (=> d!1648912 (= lt!2093350 e!3177494)))

(declare-fun c!875528 () Bool)

(assert (=> d!1648912 (= c!875528 (and (is-Cons!58612 (t!371691 rulesArg!145)) (is-Nil!58612 (t!371691 (t!371691 rulesArg!145)))))))

(declare-fun lt!2093349 () Unit!149652)

(declare-fun lt!2093348 () Unit!149652)

(assert (=> d!1648912 (= lt!2093349 lt!2093348)))

(assert (=> d!1648912 (isPrefix!5401 input!1210 input!1210)))

(assert (=> d!1648912 (= lt!2093348 (lemmaIsPrefixRefl!3660 input!1210 input!1210))))

(assert (=> d!1648912 (rulesValidInductive!3330 thiss!14775 (t!371691 rulesArg!145))))

(assert (=> d!1648912 (= (maxPrefixZipper!800 thiss!14775 (t!371691 rulesArg!145) input!1210) lt!2093350)))

(declare-fun bm!354750 () Bool)

(declare-fun call!354755 () Option!14634)

(assert (=> bm!354750 (= call!354755 (maxPrefixOneRuleZipper!321 thiss!14775 (h!65060 (t!371691 rulesArg!145)) input!1210))))

(declare-fun b!5094925 () Bool)

(assert (=> b!5094925 (= e!3177494 call!354755)))

(declare-fun b!5094926 () Bool)

(declare-fun lt!2093347 () Option!14634)

(declare-fun lt!2093351 () Option!14634)

(assert (=> b!5094926 (= e!3177494 (ite (and (is-None!14633 lt!2093347) (is-None!14633 lt!2093351)) None!14633 (ite (is-None!14633 lt!2093351) lt!2093347 (ite (is-None!14633 lt!2093347) lt!2093351 (ite (>= (size!39275 (_1!34972 (v!50646 lt!2093347))) (size!39275 (_1!34972 (v!50646 lt!2093351)))) lt!2093347 lt!2093351)))))))

(assert (=> b!5094926 (= lt!2093347 call!354755)))

(assert (=> b!5094926 (= lt!2093351 (maxPrefixZipper!800 thiss!14775 (t!371691 (t!371691 rulesArg!145)) input!1210))))

(assert (= (and d!1648912 c!875528) b!5094925))

(assert (= (and d!1648912 (not c!875528)) b!5094926))

(assert (= (or b!5094925 b!5094926) bm!354750))

(assert (=> d!1648912 m!6152542))

(assert (=> d!1648912 m!6152486))

(assert (=> d!1648912 m!6152488))

(assert (=> d!1648912 m!6152594))

(declare-fun m!6152630 () Bool)

(assert (=> bm!354750 m!6152630))

(declare-fun m!6152632 () Bool)

(assert (=> b!5094926 m!6152632))

(assert (=> b!5094778 d!1648912))

(declare-fun d!1648920 () Bool)

(declare-fun lt!2093366 () Option!14634)

(assert (=> d!1648920 (= lt!2093366 (maxPrefixOneRule!3702 thiss!14775 (h!65060 rulesArg!145) input!1210))))

(declare-fun e!3177500 () Option!14634)

(assert (=> d!1648920 (= lt!2093366 e!3177500)))

(declare-fun c!875531 () Bool)

(declare-datatypes ((tuple2!63342 0))(
  ( (tuple2!63343 (_1!34974 List!58735) (_2!34974 List!58735)) )
))
(declare-fun lt!2093364 () tuple2!63342)

(declare-fun isEmpty!31727 (List!58735) Bool)

(assert (=> d!1648920 (= c!875531 (isEmpty!31727 (_1!34974 lt!2093364)))))

(declare-fun findLongestMatchWithZipper!108 (Regex!13980 List!58735) tuple2!63342)

(assert (=> d!1648920 (= lt!2093364 (findLongestMatchWithZipper!108 (regex!8505 (h!65060 rulesArg!145)) input!1210))))

(assert (=> d!1648920 (ruleValid!3902 thiss!14775 (h!65060 rulesArg!145))))

(assert (=> d!1648920 (= (maxPrefixOneRuleZipper!321 thiss!14775 (h!65060 rulesArg!145) input!1210) lt!2093366)))

(declare-fun b!5094933 () Bool)

(assert (=> b!5094933 (= e!3177500 None!14633)))

(declare-fun b!5094934 () Bool)

(assert (=> b!5094934 (= e!3177500 (Some!14633 (tuple2!63339 (Token!15451 (apply!14291 (transformation!8505 (h!65060 rulesArg!145)) (seqFromList!6109 (_1!34974 lt!2093364))) (h!65060 rulesArg!145) (size!39277 (_1!34974 lt!2093364)) (_1!34974 lt!2093364)) (_2!34974 lt!2093364))))))

(declare-fun lt!2093367 () Unit!149652)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1969 (Regex!13980 List!58735) Unit!149652)

(assert (=> b!5094934 (= lt!2093367 (longestMatchIsAcceptedByMatchOrIsEmpty!1969 (regex!8505 (h!65060 rulesArg!145)) input!1210))))

(declare-fun res!2168335 () Bool)

(declare-fun findLongestMatchInner!2016 (Regex!13980 List!58735 Int List!58735 List!58735 Int) tuple2!63342)

(assert (=> b!5094934 (= res!2168335 (isEmpty!31727 (_1!34974 (findLongestMatchInner!2016 (regex!8505 (h!65060 rulesArg!145)) Nil!58611 (size!39277 Nil!58611) input!1210 input!1210 (size!39277 input!1210)))))))

(declare-fun e!3177499 () Bool)

(assert (=> b!5094934 (=> res!2168335 e!3177499)))

(assert (=> b!5094934 e!3177499))

(declare-fun lt!2093368 () Unit!149652)

(assert (=> b!5094934 (= lt!2093368 lt!2093367)))

(declare-fun lt!2093369 () Unit!149652)

(declare-fun lemmaInv!1409 (TokenValueInjection!16946) Unit!149652)

(assert (=> b!5094934 (= lt!2093369 (lemmaInv!1409 (transformation!8505 (h!65060 rulesArg!145))))))

(declare-fun lt!2093365 () Unit!149652)

(declare-fun lemmaSemiInverse!2642 (TokenValueInjection!16946 BalanceConc!30472) Unit!149652)

(assert (=> b!5094934 (= lt!2093365 (lemmaSemiInverse!2642 (transformation!8505 (h!65060 rulesArg!145)) (seqFromList!6109 (_1!34974 lt!2093364))))))

(declare-fun b!5094935 () Bool)

(assert (=> b!5094935 (= e!3177499 (matchR!6791 (regex!8505 (h!65060 rulesArg!145)) (_1!34974 (findLongestMatchInner!2016 (regex!8505 (h!65060 rulesArg!145)) Nil!58611 (size!39277 Nil!58611) input!1210 input!1210 (size!39277 input!1210)))))))

(assert (= (and d!1648920 c!875531) b!5094933))

(assert (= (and d!1648920 (not c!875531)) b!5094934))

(assert (= (and b!5094934 (not res!2168335)) b!5094935))

(assert (=> d!1648920 m!6152538))

(declare-fun m!6152634 () Bool)

(assert (=> d!1648920 m!6152634))

(declare-fun m!6152636 () Bool)

(assert (=> d!1648920 m!6152636))

(assert (=> d!1648920 m!6152592))

(declare-fun m!6152638 () Bool)

(assert (=> b!5094934 m!6152638))

(assert (=> b!5094934 m!6152638))

(assert (=> b!5094934 m!6152522))

(declare-fun m!6152640 () Bool)

(assert (=> b!5094934 m!6152640))

(declare-fun m!6152642 () Bool)

(assert (=> b!5094934 m!6152642))

(declare-fun m!6152644 () Bool)

(assert (=> b!5094934 m!6152644))

(declare-fun m!6152646 () Bool)

(assert (=> b!5094934 m!6152646))

(assert (=> b!5094934 m!6152642))

(declare-fun m!6152648 () Bool)

(assert (=> b!5094934 m!6152648))

(declare-fun m!6152650 () Bool)

(assert (=> b!5094934 m!6152650))

(assert (=> b!5094934 m!6152642))

(declare-fun m!6152652 () Bool)

(assert (=> b!5094934 m!6152652))

(declare-fun m!6152654 () Bool)

(assert (=> b!5094934 m!6152654))

(assert (=> b!5094934 m!6152522))

(assert (=> b!5094935 m!6152638))

(assert (=> b!5094935 m!6152522))

(assert (=> b!5094935 m!6152638))

(assert (=> b!5094935 m!6152522))

(assert (=> b!5094935 m!6152640))

(declare-fun m!6152656 () Bool)

(assert (=> b!5094935 m!6152656))

(assert (=> b!5094778 d!1648920))

(declare-fun d!1648922 () Bool)

(assert (=> d!1648922 (= (isEmpty!31724 rulesArg!145) (is-Nil!58612 rulesArg!145))))

(assert (=> b!5094784 d!1648922))

(declare-fun b!5094946 () Bool)

(declare-fun b_free!133383 () Bool)

(declare-fun b_next!134173 () Bool)

(assert (=> b!5094946 (= b_free!133383 (not b_next!134173))))

(declare-fun tp!1420575 () Bool)

(declare-fun b_and!350267 () Bool)

(assert (=> b!5094946 (= tp!1420575 b_and!350267)))

(declare-fun b_free!133385 () Bool)

(declare-fun b_next!134175 () Bool)

(assert (=> b!5094946 (= b_free!133385 (not b_next!134175))))

(declare-fun tp!1420574 () Bool)

(declare-fun b_and!350269 () Bool)

(assert (=> b!5094946 (= tp!1420574 b_and!350269)))

(declare-fun e!3177512 () Bool)

(assert (=> b!5094946 (= e!3177512 (and tp!1420575 tp!1420574))))

(declare-fun e!3177509 () Bool)

(declare-fun tp!1420573 () Bool)

(declare-fun b!5094945 () Bool)

(assert (=> b!5094945 (= e!3177509 (and tp!1420573 (inv!78105 (tag!9369 (h!65060 (t!371691 rulesArg!145)))) (inv!78108 (transformation!8505 (h!65060 (t!371691 rulesArg!145)))) e!3177512))))

(declare-fun b!5094944 () Bool)

(declare-fun e!3177511 () Bool)

(declare-fun tp!1420572 () Bool)

(assert (=> b!5094944 (= e!3177511 (and e!3177509 tp!1420572))))

(assert (=> b!5094780 (= tp!1420544 e!3177511)))

(assert (= b!5094945 b!5094946))

(assert (= b!5094944 b!5094945))

(assert (= (and b!5094780 (is-Cons!58612 (t!371691 rulesArg!145))) b!5094944))

(declare-fun m!6152658 () Bool)

(assert (=> b!5094945 m!6152658))

(declare-fun m!6152660 () Bool)

(assert (=> b!5094945 m!6152660))

(declare-fun b!5094951 () Bool)

(declare-fun e!3177515 () Bool)

(declare-fun tp!1420578 () Bool)

(assert (=> b!5094951 (= e!3177515 (and tp_is_empty!37225 tp!1420578))))

(assert (=> b!5094781 (= tp!1420545 e!3177515)))

(assert (= (and b!5094781 (is-Cons!58611 (t!371690 input!1210))) b!5094951))

(declare-fun b!5094963 () Bool)

(declare-fun e!3177518 () Bool)

(declare-fun tp!1420590 () Bool)

(declare-fun tp!1420591 () Bool)

(assert (=> b!5094963 (= e!3177518 (and tp!1420590 tp!1420591))))

(declare-fun b!5094964 () Bool)

(declare-fun tp!1420593 () Bool)

(assert (=> b!5094964 (= e!3177518 tp!1420593)))

(declare-fun b!5094962 () Bool)

(assert (=> b!5094962 (= e!3177518 tp_is_empty!37225)))

(declare-fun b!5094965 () Bool)

(declare-fun tp!1420589 () Bool)

(declare-fun tp!1420592 () Bool)

(assert (=> b!5094965 (= e!3177518 (and tp!1420589 tp!1420592))))

(assert (=> b!5094782 (= tp!1420547 e!3177518)))

(assert (= (and b!5094782 (is-ElementMatch!13980 (regex!8505 (h!65060 rulesArg!145)))) b!5094962))

(assert (= (and b!5094782 (is-Concat!22800 (regex!8505 (h!65060 rulesArg!145)))) b!5094963))

(assert (= (and b!5094782 (is-Star!13980 (regex!8505 (h!65060 rulesArg!145)))) b!5094964))

(assert (= (and b!5094782 (is-Union!13980 (regex!8505 (h!65060 rulesArg!145)))) b!5094965))

(push 1)

(assert (not b_next!134165))

(assert (not b!5094926))

(assert (not d!1648904))

(assert (not d!1648900))

(assert (not b_next!134173))

(assert b_and!350261)

(assert tp_is_empty!37225)

(assert (not b!5094963))

(assert (not b!5094822))

(assert (not b!5094935))

(assert (not b!5094824))

(assert (not b!5094849))

(assert (not b_next!134167))

(assert (not b!5094850))

(assert b_and!350269)

(assert (not d!1648906))

(assert b_and!350259)

(assert (not b!5094823))

(assert (not b!5094827))

(assert (not b!5094944))

(assert (not b!5094847))

(assert (not b!5094898))

(assert (not b!5094846))

(assert (not b!5094964))

(assert (not b!5094854))

(assert (not b!5094848))

(assert (not b!5094851))

(assert (not b!5094934))

(assert (not b!5094951))

(assert (not bm!354741))

(assert (not bm!354750))

(assert (not b!5094899))

(assert (not b!5094965))

(assert (not d!1648920))

(assert (not b!5094945))

(assert (not b_next!134175))

(assert (not d!1648912))

(assert (not b!5094853))

(assert (not d!1648896))

(assert b_and!350267)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!134167))

(assert b_and!350269)

(assert b_and!350259)

(assert (not b_next!134165))

(assert (not b_next!134173))

(assert b_and!350261)

(assert (not b_next!134175))

(assert b_and!350267)

(check-sat)

(pop 1)

