; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510146 () Bool)

(assert start!510146)

(declare-fun b!4876841 () Bool)

(declare-fun b_free!130823 () Bool)

(declare-fun b_next!131613 () Bool)

(assert (=> b!4876841 (= b_free!130823 (not b_next!131613))))

(declare-fun tp!1372181 () Bool)

(declare-fun b_and!343507 () Bool)

(assert (=> b!4876841 (= tp!1372181 b_and!343507)))

(declare-fun b_free!130825 () Bool)

(declare-fun b_next!131615 () Bool)

(assert (=> b!4876841 (= b_free!130825 (not b_next!131615))))

(declare-fun tp!1372184 () Bool)

(declare-fun b_and!343509 () Bool)

(assert (=> b!4876841 (= tp!1372184 b_and!343509)))

(declare-fun b!4876840 () Bool)

(declare-fun e!3048179 () Bool)

(declare-fun e!3048175 () Bool)

(assert (=> b!4876840 (= e!3048179 e!3048175)))

(declare-fun res!2081748 () Bool)

(assert (=> b!4876840 (=> res!2081748 e!3048175)))

(declare-fun e!3048176 () Bool)

(assert (=> b!4876840 (= res!2081748 e!3048176)))

(declare-fun c!829486 () Bool)

(declare-datatypes ((C!26446 0))(
  ( (C!26447 (val!22545 Int)) )
))
(declare-datatypes ((List!56136 0))(
  ( (Nil!56012) (Cons!56012 (h!62460 C!26446) (t!364610 List!56136)) )
))
(declare-datatypes ((IArray!29267 0))(
  ( (IArray!29268 (innerList!14691 List!56136)) )
))
(declare-datatypes ((List!56137 0))(
  ( (Nil!56013) (Cons!56013 (h!62461 (_ BitVec 16)) (t!364611 List!56137)) )
))
(declare-datatypes ((TokenValue!8359 0))(
  ( (FloatLiteralValue!16718 (text!58958 List!56137)) (TokenValueExt!8358 (__x!34011 Int)) (Broken!41795 (value!258514 List!56137)) (Object!8482) (End!8359) (Def!8359) (Underscore!8359) (Match!8359) (Else!8359) (Error!8359) (Case!8359) (If!8359) (Extends!8359) (Abstract!8359) (Class!8359) (Val!8359) (DelimiterValue!16718 (del!8419 List!56137)) (KeywordValue!8365 (value!258515 List!56137)) (CommentValue!16718 (value!258516 List!56137)) (WhitespaceValue!16718 (value!258517 List!56137)) (IndentationValue!8359 (value!258518 List!56137)) (String!63214) (Int32!8359) (Broken!41796 (value!258519 List!56137)) (Boolean!8360) (Unit!146014) (OperatorValue!8362 (op!8419 List!56137)) (IdentifierValue!16718 (value!258520 List!56137)) (IdentifierValue!16719 (value!258521 List!56137)) (WhitespaceValue!16719 (value!258522 List!56137)) (True!16718) (False!16718) (Broken!41797 (value!258523 List!56137)) (Broken!41798 (value!258524 List!56137)) (True!16719) (RightBrace!8359) (RightBracket!8359) (Colon!8359) (Null!8359) (Comma!8359) (LeftBracket!8359) (False!16719) (LeftBrace!8359) (ImaginaryLiteralValue!8359 (text!58959 List!56137)) (StringLiteralValue!25077 (value!258525 List!56137)) (EOFValue!8359 (value!258526 List!56137)) (IdentValue!8359 (value!258527 List!56137)) (DelimiterValue!16719 (value!258528 List!56137)) (DedentValue!8359 (value!258529 List!56137)) (NewLineValue!8359 (value!258530 List!56137)) (IntegerValue!25077 (value!258531 (_ BitVec 32)) (text!58960 List!56137)) (IntegerValue!25078 (value!258532 Int) (text!58961 List!56137)) (Times!8359) (Or!8359) (Equal!8359) (Minus!8359) (Broken!41799 (value!258533 List!56137)) (And!8359) (Div!8359) (LessEqual!8359) (Mod!8359) (Concat!21483) (Not!8359) (Plus!8359) (SpaceValue!8359 (value!258534 List!56137)) (IntegerValue!25079 (value!258535 Int) (text!58962 List!56137)) (StringLiteralValue!25078 (text!58963 List!56137)) (FloatLiteralValue!16719 (text!58964 List!56137)) (BytesLiteralValue!8359 (value!258536 List!56137)) (CommentValue!16719 (value!258537 List!56137)) (StringLiteralValue!25079 (value!258538 List!56137)) (ErrorTokenValue!8359 (msg!8420 List!56137)) )
))
(declare-datatypes ((Regex!13124 0))(
  ( (ElementMatch!13124 (c!829487 C!26446)) (Concat!21484 (regOne!26760 Regex!13124) (regTwo!26760 Regex!13124)) (EmptyExpr!13124) (Star!13124 (reg!13453 Regex!13124)) (EmptyLang!13124) (Union!13124 (regOne!26761 Regex!13124) (regTwo!26761 Regex!13124)) )
))
(declare-datatypes ((String!63215 0))(
  ( (String!63216 (value!258539 String)) )
))
(declare-datatypes ((Conc!14603 0))(
  ( (Node!14603 (left!40688 Conc!14603) (right!41018 Conc!14603) (csize!29436 Int) (cheight!14814 Int)) (Leaf!24339 (xs!17913 IArray!29267) (csize!29437 Int)) (Empty!14603) )
))
(declare-datatypes ((BalanceConc!28648 0))(
  ( (BalanceConc!28649 (c!829488 Conc!14603)) )
))
(declare-datatypes ((TokenValueInjection!16026 0))(
  ( (TokenValueInjection!16027 (toValue!10932 Int) (toChars!10791 Int)) )
))
(declare-datatypes ((Rule!15898 0))(
  ( (Rule!15899 (regex!8049 Regex!13124) (tag!8913 String!63215) (isSeparator!8049 Bool) (transformation!8049 TokenValueInjection!16026)) )
))
(declare-datatypes ((Token!14682 0))(
  ( (Token!14683 (value!258540 TokenValue!8359) (rule!11205 Rule!15898) (size!36942 Int) (originalCharacters!8372 List!56136)) )
))
(declare-datatypes ((List!56138 0))(
  ( (Nil!56014) (Cons!56014 (h!62462 Token!14682) (t!364612 List!56138)) )
))
(declare-datatypes ((IArray!29269 0))(
  ( (IArray!29270 (innerList!14692 List!56138)) )
))
(declare-datatypes ((Conc!14604 0))(
  ( (Node!14604 (left!40689 Conc!14604) (right!41019 Conc!14604) (csize!29438 Int) (cheight!14815 Int)) (Leaf!24340 (xs!17914 IArray!29269) (csize!29439 Int)) (Empty!14604) )
))
(declare-datatypes ((BalanceConc!28650 0))(
  ( (BalanceConc!28651 (c!829489 Conc!14604)) )
))
(declare-fun size!36941 (BalanceConc!28650) Int)

(assert (=> b!4876840 (= c!829486 (> (size!36941 (BalanceConc!28651 Empty!14604)) 0))))

(declare-fun e!3048182 () Bool)

(assert (=> b!4876841 (= e!3048182 (and tp!1372181 tp!1372184))))

(declare-fun b!4876842 () Bool)

(assert (=> b!4876842 (= e!3048176 true)))

(declare-fun lt!1998297 () Int)

(declare-fun input!585 () BalanceConc!28648)

(declare-fun size!36943 (BalanceConc!28648) Int)

(assert (=> b!4876842 (= lt!1998297 (size!36943 input!585))))

(declare-fun b!4876843 () Bool)

(assert (=> b!4876843 (= e!3048176 false)))

(declare-fun lt!1998298 () List!56136)

(declare-fun list!17543 (BalanceConc!28648) List!56136)

(assert (=> b!4876843 (= lt!1998298 (list!17543 input!585))))

(declare-fun b!4876844 () Bool)

(declare-fun tp!1372180 () Bool)

(declare-datatypes ((List!56139 0))(
  ( (Nil!56015) (Cons!56015 (h!62463 Rule!15898) (t!364613 List!56139)) )
))
(declare-fun rules!1164 () List!56139)

(declare-fun e!3048180 () Bool)

(declare-fun inv!71951 (String!63215) Bool)

(declare-fun inv!71954 (TokenValueInjection!16026) Bool)

(assert (=> b!4876844 (= e!3048180 (and tp!1372180 (inv!71951 (tag!8913 (h!62463 rules!1164))) (inv!71954 (transformation!8049 (h!62463 rules!1164))) e!3048182))))

(declare-fun b!4876845 () Bool)

(declare-fun res!2081747 () Bool)

(assert (=> b!4876845 (=> (not res!2081747) (not e!3048179))))

(declare-datatypes ((LexerInterface!7641 0))(
  ( (LexerInterfaceExt!7638 (__x!34012 Int)) (Lexer!7639) )
))
(declare-fun thiss!11460 () LexerInterface!7641)

(declare-fun rulesInvariant!6739 (LexerInterface!7641 List!56139) Bool)

(assert (=> b!4876845 (= res!2081747 (rulesInvariant!6739 thiss!11460 rules!1164))))

(declare-fun b!4876846 () Bool)

(declare-fun e!3048178 () Bool)

(assert (=> b!4876846 (= e!3048175 e!3048178)))

(declare-fun res!2081745 () Bool)

(assert (=> b!4876846 (=> res!2081745 e!3048178)))

(declare-datatypes ((tuple2!59902 0))(
  ( (tuple2!59903 (_1!33254 List!56138) (_2!33254 List!56136)) )
))
(declare-fun lt!1998300 () tuple2!59902)

(declare-fun list!17544 (BalanceConc!28650) List!56138)

(assert (=> b!4876846 (= res!2081745 (not (= (list!17544 (BalanceConc!28651 Empty!14604)) (_1!33254 lt!1998300))))))

(declare-fun lt!1998299 () List!56136)

(declare-fun lexList!2112 (LexerInterface!7641 List!56139 List!56136) tuple2!59902)

(assert (=> b!4876846 (= lt!1998300 (lexList!2112 thiss!11460 rules!1164 lt!1998299))))

(assert (=> b!4876846 (= lt!1998299 (list!17543 input!585))))

(declare-fun b!4876848 () Bool)

(assert (=> b!4876848 (= e!3048178 (not (= lt!1998299 (_2!33254 lt!1998300))))))

(declare-fun b!4876849 () Bool)

(declare-fun res!2081743 () Bool)

(assert (=> b!4876849 (=> (not res!2081743) (not e!3048179))))

(declare-datatypes ((tuple2!59904 0))(
  ( (tuple2!59905 (_1!33255 Token!14682) (_2!33255 BalanceConc!28648)) )
))
(declare-datatypes ((Option!13804 0))(
  ( (None!13803) (Some!13803 (v!49745 tuple2!59904)) )
))
(declare-fun maxPrefixZipperSequence!1240 (LexerInterface!7641 List!56139 BalanceConc!28648) Option!13804)

(assert (=> b!4876849 (= res!2081743 (not (is-Some!13803 (maxPrefixZipperSequence!1240 thiss!11460 rules!1164 input!585))))))

(declare-fun b!4876850 () Bool)

(declare-fun e!3048174 () Bool)

(declare-fun tp!1372182 () Bool)

(declare-fun inv!71955 (Conc!14603) Bool)

(assert (=> b!4876850 (= e!3048174 (and (inv!71955 (c!829488 input!585)) tp!1372182))))

(declare-fun b!4876851 () Bool)

(declare-fun res!2081746 () Bool)

(assert (=> b!4876851 (=> (not res!2081746) (not e!3048179))))

(declare-fun isEmpty!30006 (List!56139) Bool)

(assert (=> b!4876851 (= res!2081746 (not (isEmpty!30006 rules!1164)))))

(declare-fun res!2081744 () Bool)

(assert (=> start!510146 (=> (not res!2081744) (not e!3048179))))

(assert (=> start!510146 (= res!2081744 (is-Lexer!7639 thiss!11460))))

(assert (=> start!510146 e!3048179))

(assert (=> start!510146 true))

(declare-fun e!3048181 () Bool)

(assert (=> start!510146 e!3048181))

(declare-fun inv!71956 (BalanceConc!28648) Bool)

(assert (=> start!510146 (and (inv!71956 input!585) e!3048174)))

(declare-fun b!4876847 () Bool)

(declare-fun tp!1372183 () Bool)

(assert (=> b!4876847 (= e!3048181 (and e!3048180 tp!1372183))))

(assert (= (and start!510146 res!2081744) b!4876851))

(assert (= (and b!4876851 res!2081746) b!4876845))

(assert (= (and b!4876845 res!2081747) b!4876849))

(assert (= (and b!4876849 res!2081743) b!4876840))

(assert (= (and b!4876840 c!829486) b!4876842))

(assert (= (and b!4876840 (not c!829486)) b!4876843))

(assert (= (and b!4876840 (not res!2081748)) b!4876846))

(assert (= (and b!4876846 (not res!2081745)) b!4876848))

(assert (= b!4876844 b!4876841))

(assert (= b!4876847 b!4876844))

(assert (= (and start!510146 (is-Cons!56015 rules!1164)) b!4876847))

(assert (= start!510146 b!4876850))

(declare-fun m!5879328 () Bool)

(assert (=> b!4876850 m!5879328))

(declare-fun m!5879330 () Bool)

(assert (=> b!4876845 m!5879330))

(declare-fun m!5879332 () Bool)

(assert (=> b!4876844 m!5879332))

(declare-fun m!5879334 () Bool)

(assert (=> b!4876844 m!5879334))

(declare-fun m!5879336 () Bool)

(assert (=> b!4876851 m!5879336))

(declare-fun m!5879338 () Bool)

(assert (=> b!4876843 m!5879338))

(declare-fun m!5879340 () Bool)

(assert (=> b!4876846 m!5879340))

(declare-fun m!5879342 () Bool)

(assert (=> b!4876846 m!5879342))

(assert (=> b!4876846 m!5879338))

(declare-fun m!5879344 () Bool)

(assert (=> b!4876842 m!5879344))

(declare-fun m!5879346 () Bool)

(assert (=> b!4876840 m!5879346))

(declare-fun m!5879348 () Bool)

(assert (=> start!510146 m!5879348))

(declare-fun m!5879350 () Bool)

(assert (=> b!4876849 m!5879350))

(push 1)

(assert (not start!510146))

(assert (not b!4876840))

(assert (not b_next!131613))

(assert (not b!4876850))

(assert (not b_next!131615))

(assert b_and!343509)

(assert (not b!4876843))

(assert b_and!343507)

(assert (not b!4876849))

(assert (not b!4876842))

(assert (not b!4876844))

(assert (not b!4876846))

(assert (not b!4876845))

(assert (not b!4876847))

(assert (not b!4876851))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343509)

(assert b_and!343507)

(assert (not b_next!131613))

(assert (not b_next!131615))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4876907 () Bool)

(declare-fun e!3048225 () Bool)

(declare-fun e!3048227 () Bool)

(assert (=> b!4876907 (= e!3048225 e!3048227)))

(declare-fun res!2081785 () Bool)

(assert (=> b!4876907 (=> res!2081785 e!3048227)))

(declare-fun lt!1998330 () Option!13804)

(declare-fun isDefined!10862 (Option!13804) Bool)

(assert (=> b!4876907 (= res!2081785 (not (isDefined!10862 lt!1998330)))))

(declare-fun b!4876908 () Bool)

(declare-fun e!3048226 () Bool)

(declare-fun e!3048230 () Bool)

(assert (=> b!4876908 (= e!3048226 e!3048230)))

(declare-fun res!2081786 () Bool)

(assert (=> b!4876908 (=> (not res!2081786) (not e!3048230))))

(declare-fun get!19250 (Option!13804) tuple2!59904)

(declare-datatypes ((tuple2!59910 0))(
  ( (tuple2!59911 (_1!33258 Token!14682) (_2!33258 List!56136)) )
))
(declare-datatypes ((Option!13806 0))(
  ( (None!13805) (Some!13805 (v!49747 tuple2!59910)) )
))
(declare-fun get!19251 (Option!13806) tuple2!59910)

(declare-fun maxPrefixZipper!570 (LexerInterface!7641 List!56139 List!56136) Option!13806)

(assert (=> b!4876908 (= res!2081786 (= (_1!33255 (get!19250 lt!1998330)) (_1!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))))))))

(declare-fun b!4876909 () Bool)

(declare-fun res!2081784 () Bool)

(assert (=> b!4876909 (=> (not res!2081784) (not e!3048225))))

(assert (=> b!4876909 (= res!2081784 e!3048226)))

(declare-fun res!2081788 () Bool)

(assert (=> b!4876909 (=> res!2081788 e!3048226)))

(assert (=> b!4876909 (= res!2081788 (not (isDefined!10862 lt!1998330)))))

(declare-fun b!4876910 () Bool)

(declare-fun e!3048229 () Option!13804)

(declare-fun lt!1998332 () Option!13804)

(declare-fun lt!1998331 () Option!13804)

(assert (=> b!4876910 (= e!3048229 (ite (and (is-None!13803 lt!1998332) (is-None!13803 lt!1998331)) None!13803 (ite (is-None!13803 lt!1998331) lt!1998332 (ite (is-None!13803 lt!1998332) lt!1998331 (ite (>= (size!36942 (_1!33255 (v!49745 lt!1998332))) (size!36942 (_1!33255 (v!49745 lt!1998331)))) lt!1998332 lt!1998331)))))))

(declare-fun call!338583 () Option!13804)

(assert (=> b!4876910 (= lt!1998332 call!338583)))

(assert (=> b!4876910 (= lt!1998331 (maxPrefixZipperSequence!1240 thiss!11460 (t!364613 rules!1164) input!585))))

(declare-fun d!1566760 () Bool)

(assert (=> d!1566760 e!3048225))

(declare-fun res!2081789 () Bool)

(assert (=> d!1566760 (=> (not res!2081789) (not e!3048225))))

(declare-fun isDefined!10863 (Option!13806) Bool)

(assert (=> d!1566760 (= res!2081789 (= (isDefined!10862 lt!1998330) (isDefined!10863 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585)))))))

(assert (=> d!1566760 (= lt!1998330 e!3048229)))

(declare-fun c!829499 () Bool)

(assert (=> d!1566760 (= c!829499 (and (is-Cons!56015 rules!1164) (is-Nil!56015 (t!364613 rules!1164))))))

(declare-datatypes ((Unit!146016 0))(
  ( (Unit!146017) )
))
(declare-fun lt!1998328 () Unit!146016)

(declare-fun lt!1998329 () Unit!146016)

(assert (=> d!1566760 (= lt!1998328 lt!1998329)))

(declare-fun lt!1998333 () List!56136)

(declare-fun lt!1998327 () List!56136)

(declare-fun isPrefix!4773 (List!56136 List!56136) Bool)

(assert (=> d!1566760 (isPrefix!4773 lt!1998333 lt!1998327)))

(declare-fun lemmaIsPrefixRefl!3170 (List!56136 List!56136) Unit!146016)

(assert (=> d!1566760 (= lt!1998329 (lemmaIsPrefixRefl!3170 lt!1998333 lt!1998327))))

(assert (=> d!1566760 (= lt!1998327 (list!17543 input!585))))

(assert (=> d!1566760 (= lt!1998333 (list!17543 input!585))))

(declare-fun rulesValidInductive!3028 (LexerInterface!7641 List!56139) Bool)

(assert (=> d!1566760 (rulesValidInductive!3028 thiss!11460 rules!1164)))

(assert (=> d!1566760 (= (maxPrefixZipperSequence!1240 thiss!11460 rules!1164 input!585) lt!1998330)))

(declare-fun b!4876911 () Bool)

(declare-fun e!3048228 () Bool)

(assert (=> b!4876911 (= e!3048227 e!3048228)))

(declare-fun res!2081787 () Bool)

(assert (=> b!4876911 (=> (not res!2081787) (not e!3048228))))

(declare-fun maxPrefix!4556 (LexerInterface!7641 List!56139 List!56136) Option!13806)

(assert (=> b!4876911 (= res!2081787 (= (_1!33255 (get!19250 lt!1998330)) (_1!33258 (get!19251 (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585))))))))

(declare-fun bm!338578 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!583 (LexerInterface!7641 Rule!15898 BalanceConc!28648) Option!13804)

(assert (=> bm!338578 (= call!338583 (maxPrefixOneRuleZipperSequence!583 thiss!11460 (h!62463 rules!1164) input!585))))

(declare-fun b!4876912 () Bool)

(assert (=> b!4876912 (= e!3048228 (= (list!17543 (_2!33255 (get!19250 lt!1998330))) (_2!33258 (get!19251 (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585))))))))

(declare-fun b!4876913 () Bool)

(assert (=> b!4876913 (= e!3048229 call!338583)))

(declare-fun b!4876914 () Bool)

(assert (=> b!4876914 (= e!3048230 (= (list!17543 (_2!33255 (get!19250 lt!1998330))) (_2!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))))))))

(assert (= (and d!1566760 c!829499) b!4876913))

(assert (= (and d!1566760 (not c!829499)) b!4876910))

(assert (= (or b!4876913 b!4876910) bm!338578))

(assert (= (and d!1566760 res!2081789) b!4876909))

(assert (= (and b!4876909 (not res!2081788)) b!4876908))

(assert (= (and b!4876908 res!2081786) b!4876914))

(assert (= (and b!4876909 res!2081784) b!4876907))

(assert (= (and b!4876907 (not res!2081785)) b!4876911))

(assert (= (and b!4876911 res!2081787) b!4876912))

(declare-fun m!5879380 () Bool)

(assert (=> b!4876909 m!5879380))

(declare-fun m!5879382 () Bool)

(assert (=> b!4876908 m!5879382))

(assert (=> b!4876908 m!5879338))

(assert (=> b!4876908 m!5879338))

(declare-fun m!5879384 () Bool)

(assert (=> b!4876908 m!5879384))

(assert (=> b!4876908 m!5879384))

(declare-fun m!5879386 () Bool)

(assert (=> b!4876908 m!5879386))

(declare-fun m!5879388 () Bool)

(assert (=> bm!338578 m!5879388))

(declare-fun m!5879390 () Bool)

(assert (=> b!4876910 m!5879390))

(assert (=> b!4876914 m!5879382))

(assert (=> b!4876914 m!5879338))

(assert (=> b!4876914 m!5879384))

(assert (=> b!4876914 m!5879384))

(assert (=> b!4876914 m!5879386))

(declare-fun m!5879392 () Bool)

(assert (=> b!4876914 m!5879392))

(assert (=> b!4876914 m!5879338))

(declare-fun m!5879394 () Bool)

(assert (=> d!1566760 m!5879394))

(assert (=> d!1566760 m!5879384))

(declare-fun m!5879396 () Bool)

(assert (=> d!1566760 m!5879396))

(assert (=> d!1566760 m!5879338))

(assert (=> d!1566760 m!5879384))

(declare-fun m!5879398 () Bool)

(assert (=> d!1566760 m!5879398))

(assert (=> d!1566760 m!5879380))

(declare-fun m!5879400 () Bool)

(assert (=> d!1566760 m!5879400))

(assert (=> d!1566760 m!5879338))

(assert (=> b!4876911 m!5879382))

(assert (=> b!4876911 m!5879338))

(assert (=> b!4876911 m!5879338))

(declare-fun m!5879402 () Bool)

(assert (=> b!4876911 m!5879402))

(assert (=> b!4876911 m!5879402))

(declare-fun m!5879404 () Bool)

(assert (=> b!4876911 m!5879404))

(assert (=> b!4876907 m!5879380))

(assert (=> b!4876912 m!5879338))

(assert (=> b!4876912 m!5879402))

(assert (=> b!4876912 m!5879402))

(assert (=> b!4876912 m!5879404))

(assert (=> b!4876912 m!5879382))

(assert (=> b!4876912 m!5879392))

(assert (=> b!4876912 m!5879338))

(assert (=> b!4876849 d!1566760))

(declare-fun d!1566762 () Bool)

(declare-fun list!17547 (Conc!14603) List!56136)

(assert (=> d!1566762 (= (list!17543 input!585) (list!17547 (c!829488 input!585)))))

(declare-fun bs!1175127 () Bool)

(assert (= bs!1175127 d!1566762))

(declare-fun m!5879406 () Bool)

(assert (=> bs!1175127 m!5879406))

(assert (=> b!4876843 d!1566762))

(declare-fun d!1566764 () Bool)

(declare-fun lt!1998336 () Int)

(declare-fun size!36947 (List!56136) Int)

(assert (=> d!1566764 (= lt!1998336 (size!36947 (list!17543 input!585)))))

(declare-fun size!36948 (Conc!14603) Int)

(assert (=> d!1566764 (= lt!1998336 (size!36948 (c!829488 input!585)))))

(assert (=> d!1566764 (= (size!36943 input!585) lt!1998336)))

(declare-fun bs!1175128 () Bool)

(assert (= bs!1175128 d!1566764))

(assert (=> bs!1175128 m!5879338))

(assert (=> bs!1175128 m!5879338))

(declare-fun m!5879408 () Bool)

(assert (=> bs!1175128 m!5879408))

(declare-fun m!5879410 () Bool)

(assert (=> bs!1175128 m!5879410))

(assert (=> b!4876842 d!1566764))

(declare-fun d!1566766 () Bool)

(declare-fun isBalanced!3967 (Conc!14603) Bool)

(assert (=> d!1566766 (= (inv!71956 input!585) (isBalanced!3967 (c!829488 input!585)))))

(declare-fun bs!1175129 () Bool)

(assert (= bs!1175129 d!1566766))

(declare-fun m!5879412 () Bool)

(assert (=> bs!1175129 m!5879412))

(assert (=> start!510146 d!1566766))

(declare-fun d!1566768 () Bool)

(declare-fun list!17548 (Conc!14604) List!56138)

(assert (=> d!1566768 (= (list!17544 (BalanceConc!28651 Empty!14604)) (list!17548 (c!829489 (BalanceConc!28651 Empty!14604))))))

(declare-fun bs!1175130 () Bool)

(assert (= bs!1175130 d!1566768))

(declare-fun m!5879414 () Bool)

(assert (=> bs!1175130 m!5879414))

(assert (=> b!4876846 d!1566768))

(declare-fun b!4876941 () Bool)

(declare-fun e!3048249 () tuple2!59902)

(assert (=> b!4876941 (= e!3048249 (tuple2!59903 Nil!56014 lt!1998299))))

(declare-fun d!1566770 () Bool)

(declare-fun e!3048250 () Bool)

(assert (=> d!1566770 e!3048250))

(declare-fun c!829507 () Bool)

(declare-fun lt!1998359 () tuple2!59902)

(declare-fun size!36949 (List!56138) Int)

(assert (=> d!1566770 (= c!829507 (> (size!36949 (_1!33254 lt!1998359)) 0))))

(assert (=> d!1566770 (= lt!1998359 e!3048249)))

(declare-fun c!829506 () Bool)

(declare-fun lt!1998358 () Option!13806)

(assert (=> d!1566770 (= c!829506 (is-Some!13805 lt!1998358))))

(assert (=> d!1566770 (= lt!1998358 (maxPrefix!4556 thiss!11460 rules!1164 lt!1998299))))

(assert (=> d!1566770 (= (lexList!2112 thiss!11460 rules!1164 lt!1998299) lt!1998359)))

(declare-fun b!4876942 () Bool)

(assert (=> b!4876942 (= e!3048250 (= (_2!33254 lt!1998359) lt!1998299))))

(declare-fun b!4876943 () Bool)

(declare-fun e!3048251 () Bool)

(assert (=> b!4876943 (= e!3048250 e!3048251)))

(declare-fun res!2081804 () Bool)

(assert (=> b!4876943 (= res!2081804 (< (size!36947 (_2!33254 lt!1998359)) (size!36947 lt!1998299)))))

(assert (=> b!4876943 (=> (not res!2081804) (not e!3048251))))

(declare-fun b!4876944 () Bool)

(declare-fun isEmpty!30008 (List!56138) Bool)

(assert (=> b!4876944 (= e!3048251 (not (isEmpty!30008 (_1!33254 lt!1998359))))))

(declare-fun b!4876945 () Bool)

(declare-fun lt!1998357 () tuple2!59902)

(assert (=> b!4876945 (= e!3048249 (tuple2!59903 (Cons!56014 (_1!33258 (v!49747 lt!1998358)) (_1!33254 lt!1998357)) (_2!33254 lt!1998357)))))

(assert (=> b!4876945 (= lt!1998357 (lexList!2112 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998358))))))

(assert (= (and d!1566770 c!829506) b!4876945))

(assert (= (and d!1566770 (not c!829506)) b!4876941))

(assert (= (and d!1566770 c!829507) b!4876943))

(assert (= (and d!1566770 (not c!829507)) b!4876942))

(assert (= (and b!4876943 res!2081804) b!4876944))

(declare-fun m!5879416 () Bool)

(assert (=> d!1566770 m!5879416))

(declare-fun m!5879418 () Bool)

(assert (=> d!1566770 m!5879418))

(declare-fun m!5879420 () Bool)

(assert (=> b!4876943 m!5879420))

(declare-fun m!5879422 () Bool)

(assert (=> b!4876943 m!5879422))

(declare-fun m!5879424 () Bool)

(assert (=> b!4876944 m!5879424))

(declare-fun m!5879426 () Bool)

(assert (=> b!4876945 m!5879426))

(assert (=> b!4876846 d!1566770))

(assert (=> b!4876846 d!1566762))

(declare-fun d!1566772 () Bool)

(assert (=> d!1566772 (= (isEmpty!30006 rules!1164) (is-Nil!56015 rules!1164))))

(assert (=> b!4876851 d!1566772))

(declare-fun d!1566774 () Bool)

(declare-fun lt!1998362 () Int)

(assert (=> d!1566774 (= lt!1998362 (size!36949 (list!17544 (BalanceConc!28651 Empty!14604))))))

(declare-fun size!36950 (Conc!14604) Int)

(assert (=> d!1566774 (= lt!1998362 (size!36950 (c!829489 (BalanceConc!28651 Empty!14604))))))

(assert (=> d!1566774 (= (size!36941 (BalanceConc!28651 Empty!14604)) lt!1998362)))

(declare-fun bs!1175131 () Bool)

(assert (= bs!1175131 d!1566774))

(assert (=> bs!1175131 m!5879340))

(assert (=> bs!1175131 m!5879340))

(declare-fun m!5879428 () Bool)

(assert (=> bs!1175131 m!5879428))

(declare-fun m!5879430 () Bool)

(assert (=> bs!1175131 m!5879430))

(assert (=> b!4876840 d!1566774))

(declare-fun d!1566776 () Bool)

(declare-fun res!2081807 () Bool)

(declare-fun e!3048254 () Bool)

(assert (=> d!1566776 (=> (not res!2081807) (not e!3048254))))

(declare-fun rulesValid!3129 (LexerInterface!7641 List!56139) Bool)

(assert (=> d!1566776 (= res!2081807 (rulesValid!3129 thiss!11460 rules!1164))))

(assert (=> d!1566776 (= (rulesInvariant!6739 thiss!11460 rules!1164) e!3048254)))

(declare-fun b!4876948 () Bool)

(declare-datatypes ((List!56144 0))(
  ( (Nil!56020) (Cons!56020 (h!62468 String!63215) (t!364618 List!56144)) )
))
(declare-fun noDuplicateTag!3290 (LexerInterface!7641 List!56139 List!56144) Bool)

(assert (=> b!4876948 (= e!3048254 (noDuplicateTag!3290 thiss!11460 rules!1164 Nil!56020))))

(assert (= (and d!1566776 res!2081807) b!4876948))

(declare-fun m!5879432 () Bool)

(assert (=> d!1566776 m!5879432))

(declare-fun m!5879434 () Bool)

(assert (=> b!4876948 m!5879434))

(assert (=> b!4876845 d!1566776))

(declare-fun d!1566778 () Bool)

(declare-fun c!829510 () Bool)

(assert (=> d!1566778 (= c!829510 (is-Node!14603 (c!829488 input!585)))))

(declare-fun e!3048259 () Bool)

(assert (=> d!1566778 (= (inv!71955 (c!829488 input!585)) e!3048259)))

(declare-fun b!4876955 () Bool)

(declare-fun inv!71960 (Conc!14603) Bool)

(assert (=> b!4876955 (= e!3048259 (inv!71960 (c!829488 input!585)))))

(declare-fun b!4876956 () Bool)

(declare-fun e!3048260 () Bool)

(assert (=> b!4876956 (= e!3048259 e!3048260)))

(declare-fun res!2081810 () Bool)

(assert (=> b!4876956 (= res!2081810 (not (is-Leaf!24339 (c!829488 input!585))))))

(assert (=> b!4876956 (=> res!2081810 e!3048260)))

(declare-fun b!4876957 () Bool)

(declare-fun inv!71961 (Conc!14603) Bool)

(assert (=> b!4876957 (= e!3048260 (inv!71961 (c!829488 input!585)))))

(assert (= (and d!1566778 c!829510) b!4876955))

(assert (= (and d!1566778 (not c!829510)) b!4876956))

(assert (= (and b!4876956 (not res!2081810)) b!4876957))

(declare-fun m!5879436 () Bool)

(assert (=> b!4876955 m!5879436))

(declare-fun m!5879438 () Bool)

(assert (=> b!4876957 m!5879438))

(assert (=> b!4876850 d!1566778))

(declare-fun d!1566780 () Bool)

(assert (=> d!1566780 (= (inv!71951 (tag!8913 (h!62463 rules!1164))) (= (mod (str.len (value!258539 (tag!8913 (h!62463 rules!1164)))) 2) 0))))

(assert (=> b!4876844 d!1566780))

(declare-fun d!1566782 () Bool)

(declare-fun res!2081819 () Bool)

(declare-fun e!3048269 () Bool)

(assert (=> d!1566782 (=> (not res!2081819) (not e!3048269))))

(declare-fun semiInverseModEq!3553 (Int Int) Bool)

(assert (=> d!1566782 (= res!2081819 (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))))))

(assert (=> d!1566782 (= (inv!71954 (transformation!8049 (h!62463 rules!1164))) e!3048269)))

(declare-fun b!4876968 () Bool)

(declare-fun equivClasses!3432 (Int Int) Bool)

(assert (=> b!4876968 (= e!3048269 (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))))))

(assert (= (and d!1566782 res!2081819) b!4876968))

(declare-fun m!5879440 () Bool)

(assert (=> d!1566782 m!5879440))

(declare-fun m!5879442 () Bool)

(assert (=> b!4876968 m!5879442))

(assert (=> b!4876844 d!1566782))

(declare-fun b!4876979 () Bool)

(declare-fun b_free!130831 () Bool)

(declare-fun b_next!131621 () Bool)

(assert (=> b!4876979 (= b_free!130831 (not b_next!131621))))

(declare-fun tp!1372211 () Bool)

(declare-fun b_and!343515 () Bool)

(assert (=> b!4876979 (= tp!1372211 b_and!343515)))

(declare-fun b_free!130833 () Bool)

(declare-fun b_next!131623 () Bool)

(assert (=> b!4876979 (= b_free!130833 (not b_next!131623))))

(declare-fun tp!1372210 () Bool)

(declare-fun b_and!343517 () Bool)

(assert (=> b!4876979 (= tp!1372210 b_and!343517)))

(declare-fun e!3048278 () Bool)

(assert (=> b!4876979 (= e!3048278 (and tp!1372211 tp!1372210))))

(declare-fun e!3048281 () Bool)

(declare-fun tp!1372209 () Bool)

(declare-fun b!4876978 () Bool)

(assert (=> b!4876978 (= e!3048281 (and tp!1372209 (inv!71951 (tag!8913 (h!62463 (t!364613 rules!1164)))) (inv!71954 (transformation!8049 (h!62463 (t!364613 rules!1164)))) e!3048278))))

(declare-fun b!4876977 () Bool)

(declare-fun e!3048280 () Bool)

(declare-fun tp!1372208 () Bool)

(assert (=> b!4876977 (= e!3048280 (and e!3048281 tp!1372208))))

(assert (=> b!4876847 (= tp!1372183 e!3048280)))

(assert (= b!4876978 b!4876979))

(assert (= b!4876977 b!4876978))

(assert (= (and b!4876847 (is-Cons!56015 (t!364613 rules!1164))) b!4876977))

(declare-fun m!5879470 () Bool)

(assert (=> b!4876978 m!5879470))

(declare-fun m!5879472 () Bool)

(assert (=> b!4876978 m!5879472))

(declare-fun e!3048287 () Bool)

(declare-fun tp!1372219 () Bool)

(declare-fun tp!1372220 () Bool)

(declare-fun b!4876988 () Bool)

(assert (=> b!4876988 (= e!3048287 (and (inv!71955 (left!40688 (c!829488 input!585))) tp!1372220 (inv!71955 (right!41018 (c!829488 input!585))) tp!1372219))))

(declare-fun b!4876990 () Bool)

(declare-fun e!3048286 () Bool)

(declare-fun tp!1372218 () Bool)

(assert (=> b!4876990 (= e!3048286 tp!1372218)))

(declare-fun b!4876989 () Bool)

(declare-fun inv!71962 (IArray!29267) Bool)

(assert (=> b!4876989 (= e!3048287 (and (inv!71962 (xs!17913 (c!829488 input!585))) e!3048286))))

(assert (=> b!4876850 (= tp!1372182 (and (inv!71955 (c!829488 input!585)) e!3048287))))

(assert (= (and b!4876850 (is-Node!14603 (c!829488 input!585))) b!4876988))

(assert (= b!4876989 b!4876990))

(assert (= (and b!4876850 (is-Leaf!24339 (c!829488 input!585))) b!4876989))

(declare-fun m!5879474 () Bool)

(assert (=> b!4876988 m!5879474))

(declare-fun m!5879476 () Bool)

(assert (=> b!4876988 m!5879476))

(declare-fun m!5879478 () Bool)

(assert (=> b!4876989 m!5879478))

(assert (=> b!4876850 m!5879328))

(declare-fun b!4877003 () Bool)

(declare-fun e!3048290 () Bool)

(declare-fun tp!1372233 () Bool)

(assert (=> b!4877003 (= e!3048290 tp!1372233)))

(declare-fun b!4877004 () Bool)

(declare-fun tp!1372231 () Bool)

(declare-fun tp!1372235 () Bool)

(assert (=> b!4877004 (= e!3048290 (and tp!1372231 tp!1372235))))

(declare-fun b!4877001 () Bool)

(declare-fun tp_is_empty!35677 () Bool)

(assert (=> b!4877001 (= e!3048290 tp_is_empty!35677)))

(declare-fun b!4877002 () Bool)

(declare-fun tp!1372234 () Bool)

(declare-fun tp!1372232 () Bool)

(assert (=> b!4877002 (= e!3048290 (and tp!1372234 tp!1372232))))

(assert (=> b!4876844 (= tp!1372180 e!3048290)))

(assert (= (and b!4876844 (is-ElementMatch!13124 (regex!8049 (h!62463 rules!1164)))) b!4877001))

(assert (= (and b!4876844 (is-Concat!21484 (regex!8049 (h!62463 rules!1164)))) b!4877002))

(assert (= (and b!4876844 (is-Star!13124 (regex!8049 (h!62463 rules!1164)))) b!4877003))

(assert (= (and b!4876844 (is-Union!13124 (regex!8049 (h!62463 rules!1164)))) b!4877004))

(push 1)

(assert (not b!4876910))

(assert (not b_next!131621))

(assert (not b!4876914))

(assert (not b!4876911))

(assert (not d!1566768))

(assert (not b!4876850))

(assert (not b!4876988))

(assert (not d!1566770))

(assert (not d!1566782))

(assert (not b!4876978))

(assert (not b_next!131615))

(assert (not b!4876957))

(assert (not d!1566776))

(assert (not b_next!131623))

(assert (not d!1566764))

(assert (not b!4876977))

(assert (not b_next!131613))

(assert b_and!343507)

(assert (not b!4876908))

(assert (not b!4876943))

(assert b_and!343515)

(assert (not b!4876948))

(assert (not b!4876989))

(assert (not b!4876907))

(assert (not d!1566774))

(assert (not b!4876955))

(assert (not b!4876990))

(assert (not b!4876945))

(assert (not b!4876944))

(assert (not d!1566766))

(assert (not b!4877003))

(assert (not b!4876912))

(assert (not b!4877002))

(assert (not b!4876909))

(assert (not d!1566760))

(assert (not b!4877004))

(assert b_and!343509)

(assert (not d!1566762))

(assert (not b!4876968))

(assert b_and!343517)

(assert tp_is_empty!35677)

(assert (not bm!338578))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131623))

(assert (not b_next!131621))

(assert (not b_next!131613))

(assert b_and!343507)

(assert b_and!343515)

(assert (not b_next!131615))

(assert b_and!343509)

(assert b_and!343517)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4877068 () Bool)

(declare-fun e!3048330 () Bool)

(declare-fun e!3048332 () Bool)

(assert (=> b!4877068 (= e!3048330 e!3048332)))

(declare-fun res!2081832 () Bool)

(assert (=> b!4877068 (=> res!2081832 e!3048332)))

(declare-fun lt!1998388 () Option!13804)

(assert (=> b!4877068 (= res!2081832 (not (isDefined!10862 lt!1998388)))))

(declare-fun b!4877069 () Bool)

(declare-fun e!3048331 () Bool)

(declare-fun e!3048335 () Bool)

(assert (=> b!4877069 (= e!3048331 e!3048335)))

(declare-fun res!2081833 () Bool)

(assert (=> b!4877069 (=> (not res!2081833) (not e!3048335))))

(assert (=> b!4877069 (= res!2081833 (= (_1!33255 (get!19250 lt!1998388)) (_1!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))))

(declare-fun b!4877070 () Bool)

(declare-fun res!2081831 () Bool)

(assert (=> b!4877070 (=> (not res!2081831) (not e!3048330))))

(assert (=> b!4877070 (= res!2081831 e!3048331)))

(declare-fun res!2081835 () Bool)

(assert (=> b!4877070 (=> res!2081835 e!3048331)))

(assert (=> b!4877070 (= res!2081835 (not (isDefined!10862 lt!1998388)))))

(declare-fun b!4877071 () Bool)

(declare-fun e!3048334 () Option!13804)

(declare-fun lt!1998390 () Option!13804)

(declare-fun lt!1998389 () Option!13804)

(assert (=> b!4877071 (= e!3048334 (ite (and (is-None!13803 lt!1998390) (is-None!13803 lt!1998389)) None!13803 (ite (is-None!13803 lt!1998389) lt!1998390 (ite (is-None!13803 lt!1998390) lt!1998389 (ite (>= (size!36942 (_1!33255 (v!49745 lt!1998390))) (size!36942 (_1!33255 (v!49745 lt!1998389)))) lt!1998390 lt!1998389)))))))

(declare-fun call!338587 () Option!13804)

(assert (=> b!4877071 (= lt!1998390 call!338587)))

(assert (=> b!4877071 (= lt!1998389 (maxPrefixZipperSequence!1240 thiss!11460 (t!364613 (t!364613 rules!1164)) input!585))))

(declare-fun d!1566802 () Bool)

(assert (=> d!1566802 e!3048330))

(declare-fun res!2081836 () Bool)

(assert (=> d!1566802 (=> (not res!2081836) (not e!3048330))))

(assert (=> d!1566802 (= res!2081836 (= (isDefined!10862 lt!1998388) (isDefined!10863 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)))))))

(assert (=> d!1566802 (= lt!1998388 e!3048334)))

(declare-fun c!829521 () Bool)

(assert (=> d!1566802 (= c!829521 (and (is-Cons!56015 (t!364613 rules!1164)) (is-Nil!56015 (t!364613 (t!364613 rules!1164)))))))

(declare-fun lt!1998386 () Unit!146016)

(declare-fun lt!1998387 () Unit!146016)

(assert (=> d!1566802 (= lt!1998386 lt!1998387)))

(declare-fun lt!1998391 () List!56136)

(declare-fun lt!1998385 () List!56136)

(assert (=> d!1566802 (isPrefix!4773 lt!1998391 lt!1998385)))

(assert (=> d!1566802 (= lt!1998387 (lemmaIsPrefixRefl!3170 lt!1998391 lt!1998385))))

(assert (=> d!1566802 (= lt!1998385 (list!17543 input!585))))

(assert (=> d!1566802 (= lt!1998391 (list!17543 input!585))))

(assert (=> d!1566802 (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164))))

(assert (=> d!1566802 (= (maxPrefixZipperSequence!1240 thiss!11460 (t!364613 rules!1164) input!585) lt!1998388)))

(declare-fun b!4877072 () Bool)

(declare-fun e!3048333 () Bool)

(assert (=> b!4877072 (= e!3048332 e!3048333)))

(declare-fun res!2081834 () Bool)

(assert (=> b!4877072 (=> (not res!2081834) (not e!3048333))))

(assert (=> b!4877072 (= res!2081834 (= (_1!33255 (get!19250 lt!1998388)) (_1!33258 (get!19251 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))))

(declare-fun bm!338582 () Bool)

(assert (=> bm!338582 (= call!338587 (maxPrefixOneRuleZipperSequence!583 thiss!11460 (h!62463 (t!364613 rules!1164)) input!585))))

(declare-fun b!4877073 () Bool)

(assert (=> b!4877073 (= e!3048333 (= (list!17543 (_2!33255 (get!19250 lt!1998388))) (_2!33258 (get!19251 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))))

(declare-fun b!4877074 () Bool)

(assert (=> b!4877074 (= e!3048334 call!338587)))

(declare-fun b!4877075 () Bool)

(assert (=> b!4877075 (= e!3048335 (= (list!17543 (_2!33255 (get!19250 lt!1998388))) (_2!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))))

(assert (= (and d!1566802 c!829521) b!4877074))

(assert (= (and d!1566802 (not c!829521)) b!4877071))

(assert (= (or b!4877074 b!4877071) bm!338582))

(assert (= (and d!1566802 res!2081836) b!4877070))

(assert (= (and b!4877070 (not res!2081835)) b!4877069))

(assert (= (and b!4877069 res!2081833) b!4877075))

(assert (= (and b!4877070 res!2081831) b!4877068))

(assert (= (and b!4877068 (not res!2081832)) b!4877072))

(assert (= (and b!4877072 res!2081834) b!4877073))

(declare-fun m!5879524 () Bool)

(assert (=> b!4877070 m!5879524))

(declare-fun m!5879526 () Bool)

(assert (=> b!4877069 m!5879526))

(assert (=> b!4877069 m!5879338))

(assert (=> b!4877069 m!5879338))

(declare-fun m!5879528 () Bool)

(assert (=> b!4877069 m!5879528))

(assert (=> b!4877069 m!5879528))

(declare-fun m!5879530 () Bool)

(assert (=> b!4877069 m!5879530))

(declare-fun m!5879532 () Bool)

(assert (=> bm!338582 m!5879532))

(declare-fun m!5879534 () Bool)

(assert (=> b!4877071 m!5879534))

(assert (=> b!4877075 m!5879526))

(assert (=> b!4877075 m!5879338))

(assert (=> b!4877075 m!5879528))

(assert (=> b!4877075 m!5879528))

(assert (=> b!4877075 m!5879530))

(declare-fun m!5879536 () Bool)

(assert (=> b!4877075 m!5879536))

(assert (=> b!4877075 m!5879338))

(declare-fun m!5879538 () Bool)

(assert (=> d!1566802 m!5879538))

(assert (=> d!1566802 m!5879528))

(declare-fun m!5879540 () Bool)

(assert (=> d!1566802 m!5879540))

(assert (=> d!1566802 m!5879338))

(assert (=> d!1566802 m!5879528))

(declare-fun m!5879542 () Bool)

(assert (=> d!1566802 m!5879542))

(assert (=> d!1566802 m!5879524))

(declare-fun m!5879544 () Bool)

(assert (=> d!1566802 m!5879544))

(assert (=> d!1566802 m!5879338))

(assert (=> b!4877072 m!5879526))

(assert (=> b!4877072 m!5879338))

(assert (=> b!4877072 m!5879338))

(declare-fun m!5879546 () Bool)

(assert (=> b!4877072 m!5879546))

(assert (=> b!4877072 m!5879546))

(declare-fun m!5879548 () Bool)

(assert (=> b!4877072 m!5879548))

(assert (=> b!4877068 m!5879524))

(assert (=> b!4877073 m!5879338))

(assert (=> b!4877073 m!5879546))

(assert (=> b!4877073 m!5879546))

(assert (=> b!4877073 m!5879548))

(assert (=> b!4877073 m!5879526))

(assert (=> b!4877073 m!5879536))

(assert (=> b!4877073 m!5879338))

(assert (=> b!4876910 d!1566802))

(declare-fun d!1566804 () Bool)

(declare-fun isEmpty!30010 (Option!13804) Bool)

(assert (=> d!1566804 (= (isDefined!10862 lt!1998330) (not (isEmpty!30010 lt!1998330)))))

(declare-fun bs!1175137 () Bool)

(assert (= bs!1175137 d!1566804))

(declare-fun m!5879550 () Bool)

(assert (=> bs!1175137 m!5879550))

(assert (=> b!4876909 d!1566804))

(declare-fun d!1566806 () Bool)

(declare-fun lt!1998394 () Int)

(assert (=> d!1566806 (>= lt!1998394 0)))

(declare-fun e!3048338 () Int)

(assert (=> d!1566806 (= lt!1998394 e!3048338)))

(declare-fun c!829524 () Bool)

(assert (=> d!1566806 (= c!829524 (is-Nil!56012 (list!17543 input!585)))))

(assert (=> d!1566806 (= (size!36947 (list!17543 input!585)) lt!1998394)))

(declare-fun b!4877080 () Bool)

(assert (=> b!4877080 (= e!3048338 0)))

(declare-fun b!4877081 () Bool)

(assert (=> b!4877081 (= e!3048338 (+ 1 (size!36947 (t!364610 (list!17543 input!585)))))))

(assert (= (and d!1566806 c!829524) b!4877080))

(assert (= (and d!1566806 (not c!829524)) b!4877081))

(declare-fun m!5879552 () Bool)

(assert (=> b!4877081 m!5879552))

(assert (=> d!1566764 d!1566806))

(assert (=> d!1566764 d!1566762))

(declare-fun d!1566808 () Bool)

(declare-fun lt!1998397 () Int)

(assert (=> d!1566808 (= lt!1998397 (size!36947 (list!17547 (c!829488 input!585))))))

(assert (=> d!1566808 (= lt!1998397 (ite (is-Empty!14603 (c!829488 input!585)) 0 (ite (is-Leaf!24339 (c!829488 input!585)) (csize!29437 (c!829488 input!585)) (csize!29436 (c!829488 input!585)))))))

(assert (=> d!1566808 (= (size!36948 (c!829488 input!585)) lt!1998397)))

(declare-fun bs!1175138 () Bool)

(assert (= bs!1175138 d!1566808))

(assert (=> bs!1175138 m!5879406))

(assert (=> bs!1175138 m!5879406))

(declare-fun m!5879554 () Bool)

(assert (=> bs!1175138 m!5879554))

(assert (=> d!1566764 d!1566808))

(declare-fun b!4877092 () Bool)

(declare-fun e!3048344 () List!56138)

(declare-fun list!17551 (IArray!29269) List!56138)

(assert (=> b!4877092 (= e!3048344 (list!17551 (xs!17914 (c!829489 (BalanceConc!28651 Empty!14604)))))))

(declare-fun b!4877090 () Bool)

(declare-fun e!3048343 () List!56138)

(assert (=> b!4877090 (= e!3048343 Nil!56014)))

(declare-fun b!4877093 () Bool)

(declare-fun ++!12206 (List!56138 List!56138) List!56138)

(assert (=> b!4877093 (= e!3048344 (++!12206 (list!17548 (left!40689 (c!829489 (BalanceConc!28651 Empty!14604)))) (list!17548 (right!41019 (c!829489 (BalanceConc!28651 Empty!14604))))))))

(declare-fun d!1566810 () Bool)

(declare-fun c!829529 () Bool)

(assert (=> d!1566810 (= c!829529 (is-Empty!14604 (c!829489 (BalanceConc!28651 Empty!14604))))))

(assert (=> d!1566810 (= (list!17548 (c!829489 (BalanceConc!28651 Empty!14604))) e!3048343)))

(declare-fun b!4877091 () Bool)

(assert (=> b!4877091 (= e!3048343 e!3048344)))

(declare-fun c!829530 () Bool)

(assert (=> b!4877091 (= c!829530 (is-Leaf!24340 (c!829489 (BalanceConc!28651 Empty!14604))))))

(assert (= (and d!1566810 c!829529) b!4877090))

(assert (= (and d!1566810 (not c!829529)) b!4877091))

(assert (= (and b!4877091 c!829530) b!4877092))

(assert (= (and b!4877091 (not c!829530)) b!4877093))

(declare-fun m!5879556 () Bool)

(assert (=> b!4877092 m!5879556))

(declare-fun m!5879558 () Bool)

(assert (=> b!4877093 m!5879558))

(declare-fun m!5879560 () Bool)

(assert (=> b!4877093 m!5879560))

(assert (=> b!4877093 m!5879558))

(assert (=> b!4877093 m!5879560))

(declare-fun m!5879562 () Bool)

(assert (=> b!4877093 m!5879562))

(assert (=> d!1566768 d!1566810))

(declare-fun d!1566812 () Bool)

(assert (=> d!1566812 (= (get!19250 lt!1998330) (v!49745 lt!1998330))))

(assert (=> b!4876908 d!1566812))

(declare-fun d!1566814 () Bool)

(assert (=> d!1566814 (= (get!19251 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))) (v!49747 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))))))

(assert (=> b!4876908 d!1566814))

(declare-fun d!1566816 () Bool)

(declare-fun lt!1998410 () Option!13806)

(assert (=> d!1566816 (= lt!1998410 (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585)))))

(declare-fun e!3048347 () Option!13806)

(assert (=> d!1566816 (= lt!1998410 e!3048347)))

(declare-fun c!829533 () Bool)

(assert (=> d!1566816 (= c!829533 (and (is-Cons!56015 rules!1164) (is-Nil!56015 (t!364613 rules!1164))))))

(declare-fun lt!1998411 () Unit!146016)

(declare-fun lt!1998408 () Unit!146016)

(assert (=> d!1566816 (= lt!1998411 lt!1998408)))

(assert (=> d!1566816 (isPrefix!4773 (list!17543 input!585) (list!17543 input!585))))

(assert (=> d!1566816 (= lt!1998408 (lemmaIsPrefixRefl!3170 (list!17543 input!585) (list!17543 input!585)))))

(assert (=> d!1566816 (rulesValidInductive!3028 thiss!11460 rules!1164)))

(assert (=> d!1566816 (= (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585)) lt!1998410)))

(declare-fun call!338590 () Option!13806)

(declare-fun bm!338585 () Bool)

(declare-fun maxPrefixOneRuleZipper!232 (LexerInterface!7641 Rule!15898 List!56136) Option!13806)

(assert (=> bm!338585 (= call!338590 (maxPrefixOneRuleZipper!232 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)))))

(declare-fun b!4877098 () Bool)

(assert (=> b!4877098 (= e!3048347 call!338590)))

(declare-fun b!4877099 () Bool)

(declare-fun lt!1998409 () Option!13806)

(declare-fun lt!1998412 () Option!13806)

(assert (=> b!4877099 (= e!3048347 (ite (and (is-None!13805 lt!1998409) (is-None!13805 lt!1998412)) None!13805 (ite (is-None!13805 lt!1998412) lt!1998409 (ite (is-None!13805 lt!1998409) lt!1998412 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998409))) (size!36942 (_1!33258 (v!49747 lt!1998412)))) lt!1998409 lt!1998412)))))))

(assert (=> b!4877099 (= lt!1998409 call!338590)))

(assert (=> b!4877099 (= lt!1998412 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)))))

(assert (= (and d!1566816 c!829533) b!4877098))

(assert (= (and d!1566816 (not c!829533)) b!4877099))

(assert (= (or b!4877098 b!4877099) bm!338585))

(assert (=> d!1566816 m!5879338))

(assert (=> d!1566816 m!5879402))

(assert (=> d!1566816 m!5879338))

(assert (=> d!1566816 m!5879338))

(declare-fun m!5879564 () Bool)

(assert (=> d!1566816 m!5879564))

(assert (=> d!1566816 m!5879338))

(assert (=> d!1566816 m!5879338))

(declare-fun m!5879566 () Bool)

(assert (=> d!1566816 m!5879566))

(assert (=> d!1566816 m!5879394))

(assert (=> bm!338585 m!5879338))

(declare-fun m!5879568 () Bool)

(assert (=> bm!338585 m!5879568))

(assert (=> b!4877099 m!5879338))

(assert (=> b!4877099 m!5879528))

(assert (=> b!4876908 d!1566816))

(assert (=> b!4876908 d!1566762))

(declare-fun d!1566822 () Bool)

(assert (=> d!1566822 (= (inv!71951 (tag!8913 (h!62463 (t!364613 rules!1164)))) (= (mod (str.len (value!258539 (tag!8913 (h!62463 (t!364613 rules!1164))))) 2) 0))))

(assert (=> b!4876978 d!1566822))

(declare-fun d!1566824 () Bool)

(declare-fun res!2081843 () Bool)

(declare-fun e!3048348 () Bool)

(assert (=> d!1566824 (=> (not res!2081843) (not e!3048348))))

(assert (=> d!1566824 (= res!2081843 (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))))))

(assert (=> d!1566824 (= (inv!71954 (transformation!8049 (h!62463 (t!364613 rules!1164)))) e!3048348)))

(declare-fun b!4877100 () Bool)

(assert (=> b!4877100 (= e!3048348 (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))))))

(assert (= (and d!1566824 res!2081843) b!4877100))

(declare-fun m!5879570 () Bool)

(assert (=> d!1566824 m!5879570))

(declare-fun m!5879572 () Bool)

(assert (=> b!4877100 m!5879572))

(assert (=> b!4876978 d!1566824))

(declare-fun d!1566826 () Bool)

(declare-fun c!829534 () Bool)

(assert (=> d!1566826 (= c!829534 (is-Node!14603 (left!40688 (c!829488 input!585))))))

(declare-fun e!3048349 () Bool)

(assert (=> d!1566826 (= (inv!71955 (left!40688 (c!829488 input!585))) e!3048349)))

(declare-fun b!4877101 () Bool)

(assert (=> b!4877101 (= e!3048349 (inv!71960 (left!40688 (c!829488 input!585))))))

(declare-fun b!4877102 () Bool)

(declare-fun e!3048350 () Bool)

(assert (=> b!4877102 (= e!3048349 e!3048350)))

(declare-fun res!2081844 () Bool)

(assert (=> b!4877102 (= res!2081844 (not (is-Leaf!24339 (left!40688 (c!829488 input!585)))))))

(assert (=> b!4877102 (=> res!2081844 e!3048350)))

(declare-fun b!4877103 () Bool)

(assert (=> b!4877103 (= e!3048350 (inv!71961 (left!40688 (c!829488 input!585))))))

(assert (= (and d!1566826 c!829534) b!4877101))

(assert (= (and d!1566826 (not c!829534)) b!4877102))

(assert (= (and b!4877102 (not res!2081844)) b!4877103))

(declare-fun m!5879574 () Bool)

(assert (=> b!4877101 m!5879574))

(declare-fun m!5879576 () Bool)

(assert (=> b!4877103 m!5879576))

(assert (=> b!4876988 d!1566826))

(declare-fun d!1566828 () Bool)

(declare-fun c!829535 () Bool)

(assert (=> d!1566828 (= c!829535 (is-Node!14603 (right!41018 (c!829488 input!585))))))

(declare-fun e!3048351 () Bool)

(assert (=> d!1566828 (= (inv!71955 (right!41018 (c!829488 input!585))) e!3048351)))

(declare-fun b!4877104 () Bool)

(assert (=> b!4877104 (= e!3048351 (inv!71960 (right!41018 (c!829488 input!585))))))

(declare-fun b!4877105 () Bool)

(declare-fun e!3048352 () Bool)

(assert (=> b!4877105 (= e!3048351 e!3048352)))

(declare-fun res!2081845 () Bool)

(assert (=> b!4877105 (= res!2081845 (not (is-Leaf!24339 (right!41018 (c!829488 input!585)))))))

(assert (=> b!4877105 (=> res!2081845 e!3048352)))

(declare-fun b!4877106 () Bool)

(assert (=> b!4877106 (= e!3048352 (inv!71961 (right!41018 (c!829488 input!585))))))

(assert (= (and d!1566828 c!829535) b!4877104))

(assert (= (and d!1566828 (not c!829535)) b!4877105))

(assert (= (and b!4877105 (not res!2081845)) b!4877106))

(declare-fun m!5879578 () Bool)

(assert (=> b!4877104 m!5879578))

(declare-fun m!5879580 () Bool)

(assert (=> b!4877106 m!5879580))

(assert (=> b!4876988 d!1566828))

(declare-fun b!4877149 () Bool)

(declare-fun e!3048382 () Bool)

(assert (=> b!4877149 (= e!3048382 true)))

(declare-fun b!4877148 () Bool)

(declare-fun e!3048381 () Bool)

(assert (=> b!4877148 (= e!3048381 e!3048382)))

(declare-fun b!4877141 () Bool)

(assert (=> b!4877141 e!3048381))

(assert (= b!4877148 b!4877149))

(assert (= b!4877141 b!4877148))

(declare-fun lambda!243647 () Int)

(declare-fun order!25281 () Int)

(declare-fun order!25279 () Int)

(declare-fun dynLambda!22521 (Int Int) Int)

(declare-fun dynLambda!22522 (Int Int) Int)

(assert (=> b!4877149 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22522 order!25281 lambda!243647))))

(declare-fun order!25283 () Int)

(declare-fun dynLambda!22523 (Int Int) Int)

(assert (=> b!4877149 (< (dynLambda!22523 order!25283 (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22522 order!25281 lambda!243647))))

(declare-fun b!4877136 () Bool)

(declare-fun e!3048373 () Bool)

(declare-fun e!3048374 () Bool)

(assert (=> b!4877136 (= e!3048373 e!3048374)))

(declare-fun res!2081857 () Bool)

(assert (=> b!4877136 (=> (not res!2081857) (not e!3048374))))

(declare-fun lt!1998443 () Option!13804)

(declare-fun maxPrefixOneRule!3498 (LexerInterface!7641 Rule!15898 List!56136) Option!13806)

(assert (=> b!4877136 (= res!2081857 (= (_1!33255 (get!19250 lt!1998443)) (_1!33258 (get!19251 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585))))))))

(declare-fun b!4877137 () Bool)

(declare-fun e!3048375 () Option!13804)

(assert (=> b!4877137 (= e!3048375 None!13803)))

(declare-fun b!4877138 () Bool)

(assert (=> b!4877138 (= e!3048374 (= (list!17543 (_2!33255 (get!19250 lt!1998443))) (_2!33258 (get!19251 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585))))))))

(declare-fun d!1566830 () Bool)

(declare-fun e!3048376 () Bool)

(assert (=> d!1566830 e!3048376))

(declare-fun res!2081858 () Bool)

(assert (=> d!1566830 (=> (not res!2081858) (not e!3048376))))

(assert (=> d!1566830 (= res!2081858 (= (isDefined!10862 lt!1998443) (isDefined!10863 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)))))))

(assert (=> d!1566830 (= lt!1998443 e!3048375)))

(declare-fun c!829544 () Bool)

(declare-datatypes ((tuple2!59914 0))(
  ( (tuple2!59915 (_1!33260 BalanceConc!28648) (_2!33260 BalanceConc!28648)) )
))
(declare-fun lt!1998441 () tuple2!59914)

(declare-fun isEmpty!30011 (BalanceConc!28648) Bool)

(assert (=> d!1566830 (= c!829544 (isEmpty!30011 (_1!33260 lt!1998441)))))

(declare-fun findLongestMatchWithZipperSequence!243 (Regex!13124 BalanceConc!28648) tuple2!59914)

(assert (=> d!1566830 (= lt!1998441 (findLongestMatchWithZipperSequence!243 (regex!8049 (h!62463 rules!1164)) input!585))))

(declare-fun ruleValid!3637 (LexerInterface!7641 Rule!15898) Bool)

(assert (=> d!1566830 (ruleValid!3637 thiss!11460 (h!62463 rules!1164))))

(assert (=> d!1566830 (= (maxPrefixOneRuleZipperSequence!583 thiss!11460 (h!62463 rules!1164) input!585) lt!1998443)))

(declare-fun b!4877139 () Bool)

(declare-fun e!3048372 () Bool)

(declare-fun lt!1998444 () List!56136)

(declare-fun matchR!6499 (Regex!13124 List!56136) Bool)

(declare-datatypes ((tuple2!59916 0))(
  ( (tuple2!59917 (_1!33261 List!56136) (_2!33261 List!56136)) )
))
(declare-fun findLongestMatchInner!1728 (Regex!13124 List!56136 Int List!56136 List!56136 Int) tuple2!59916)

(assert (=> b!4877139 (= e!3048372 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(declare-fun b!4877140 () Bool)

(assert (=> b!4877140 (= e!3048376 e!3048373)))

(declare-fun res!2081860 () Bool)

(assert (=> b!4877140 (=> res!2081860 e!3048373)))

(assert (=> b!4877140 (= res!2081860 (not (isDefined!10862 lt!1998443)))))

(declare-fun apply!13509 (TokenValueInjection!16026 BalanceConc!28648) TokenValue!8359)

(assert (=> b!4877141 (= e!3048375 (Some!13803 (tuple2!59905 (Token!14683 (apply!13509 (transformation!8049 (h!62463 rules!1164)) (_1!33260 lt!1998441)) (h!62463 rules!1164) (size!36943 (_1!33260 lt!1998441)) (list!17543 (_1!33260 lt!1998441))) (_2!33260 lt!1998441))))))

(assert (=> b!4877141 (= lt!1998444 (list!17543 input!585))))

(declare-fun lt!1998447 () Unit!146016)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1691 (Regex!13124 List!56136) Unit!146016)

(assert (=> b!4877141 (= lt!1998447 (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 rules!1164)) lt!1998444))))

(declare-fun res!2081859 () Bool)

(declare-fun isEmpty!30012 (List!56136) Bool)

(assert (=> b!4877141 (= res!2081859 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(assert (=> b!4877141 (=> res!2081859 e!3048372)))

(assert (=> b!4877141 e!3048372))

(declare-fun lt!1998449 () Unit!146016)

(assert (=> b!4877141 (= lt!1998449 lt!1998447)))

(declare-fun lt!1998440 () Unit!146016)

(declare-fun lemmaInv!1211 (TokenValueInjection!16026) Unit!146016)

(assert (=> b!4877141 (= lt!1998440 (lemmaInv!1211 (transformation!8049 (h!62463 rules!1164))))))

(declare-fun lt!1998448 () Unit!146016)

(declare-fun ForallOf!1108 (Int BalanceConc!28648) Unit!146016)

(assert (=> b!4877141 (= lt!1998448 (ForallOf!1108 lambda!243647 (_1!33260 lt!1998441)))))

(declare-fun lt!1998442 () Unit!146016)

(declare-fun seqFromList!5905 (List!56136) BalanceConc!28648)

(assert (=> b!4877141 (= lt!1998442 (ForallOf!1108 lambda!243647 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(declare-fun lt!1998445 () Option!13804)

(assert (=> b!4877141 (= lt!1998445 (Some!13803 (tuple2!59905 (Token!14683 (apply!13509 (transformation!8049 (h!62463 rules!1164)) (_1!33260 lt!1998441)) (h!62463 rules!1164) (size!36943 (_1!33260 lt!1998441)) (list!17543 (_1!33260 lt!1998441))) (_2!33260 lt!1998441))))))

(declare-fun lt!1998446 () Unit!146016)

(declare-fun lemmaEqSameImage!1065 (TokenValueInjection!16026 BalanceConc!28648 BalanceConc!28648) Unit!146016)

(assert (=> b!4877141 (= lt!1998446 (lemmaEqSameImage!1065 (transformation!8049 (h!62463 rules!1164)) (_1!33260 lt!1998441) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(assert (= (and d!1566830 c!829544) b!4877137))

(assert (= (and d!1566830 (not c!829544)) b!4877141))

(assert (= (and b!4877141 (not res!2081859)) b!4877139))

(assert (= (and d!1566830 res!2081858) b!4877140))

(assert (= (and b!4877140 (not res!2081860)) b!4877136))

(assert (= (and b!4877136 res!2081857) b!4877138))

(declare-fun m!5879602 () Bool)

(assert (=> b!4877140 m!5879602))

(declare-fun m!5879604 () Bool)

(assert (=> b!4877139 m!5879604))

(declare-fun m!5879606 () Bool)

(assert (=> b!4877139 m!5879606))

(assert (=> b!4877139 m!5879604))

(assert (=> b!4877139 m!5879606))

(declare-fun m!5879608 () Bool)

(assert (=> b!4877139 m!5879608))

(declare-fun m!5879610 () Bool)

(assert (=> b!4877139 m!5879610))

(declare-fun m!5879612 () Bool)

(assert (=> b!4877138 m!5879612))

(assert (=> b!4877138 m!5879338))

(declare-fun m!5879614 () Bool)

(assert (=> b!4877138 m!5879614))

(declare-fun m!5879616 () Bool)

(assert (=> b!4877138 m!5879616))

(assert (=> b!4877138 m!5879614))

(declare-fun m!5879618 () Bool)

(assert (=> b!4877138 m!5879618))

(assert (=> b!4877138 m!5879338))

(assert (=> b!4877136 m!5879612))

(assert (=> b!4877136 m!5879338))

(assert (=> b!4877136 m!5879338))

(assert (=> b!4877136 m!5879614))

(assert (=> b!4877136 m!5879614))

(assert (=> b!4877136 m!5879618))

(declare-fun m!5879620 () Bool)

(assert (=> b!4877141 m!5879620))

(declare-fun m!5879622 () Bool)

(assert (=> b!4877141 m!5879622))

(declare-fun m!5879624 () Bool)

(assert (=> b!4877141 m!5879624))

(assert (=> b!4877141 m!5879622))

(declare-fun m!5879626 () Bool)

(assert (=> b!4877141 m!5879626))

(declare-fun m!5879628 () Bool)

(assert (=> b!4877141 m!5879628))

(assert (=> b!4877141 m!5879606))

(declare-fun m!5879630 () Bool)

(assert (=> b!4877141 m!5879630))

(assert (=> b!4877141 m!5879604))

(assert (=> b!4877141 m!5879606))

(assert (=> b!4877141 m!5879608))

(declare-fun m!5879632 () Bool)

(assert (=> b!4877141 m!5879632))

(declare-fun m!5879634 () Bool)

(assert (=> b!4877141 m!5879634))

(declare-fun m!5879636 () Bool)

(assert (=> b!4877141 m!5879636))

(assert (=> b!4877141 m!5879604))

(declare-fun m!5879638 () Bool)

(assert (=> b!4877141 m!5879638))

(assert (=> b!4877141 m!5879632))

(assert (=> b!4877141 m!5879622))

(assert (=> b!4877141 m!5879338))

(declare-fun m!5879640 () Bool)

(assert (=> d!1566830 m!5879640))

(assert (=> d!1566830 m!5879338))

(assert (=> d!1566830 m!5879614))

(declare-fun m!5879642 () Bool)

(assert (=> d!1566830 m!5879642))

(declare-fun m!5879644 () Bool)

(assert (=> d!1566830 m!5879644))

(assert (=> d!1566830 m!5879614))

(declare-fun m!5879646 () Bool)

(assert (=> d!1566830 m!5879646))

(assert (=> d!1566830 m!5879602))

(assert (=> d!1566830 m!5879338))

(assert (=> bm!338578 d!1566830))

(assert (=> b!4876850 d!1566778))

(assert (=> b!4876911 d!1566812))

(declare-fun d!1566842 () Bool)

(assert (=> d!1566842 (= (get!19251 (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585))) (v!49747 (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585))))))

(assert (=> b!4876911 d!1566842))

(declare-fun b!4877198 () Bool)

(declare-fun res!2081893 () Bool)

(declare-fun e!3048414 () Bool)

(assert (=> b!4877198 (=> (not res!2081893) (not e!3048414))))

(declare-fun lt!1998494 () Option!13806)

(declare-fun charsOf!5348 (Token!14682) BalanceConc!28648)

(assert (=> b!4877198 (= res!2081893 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494)))))))

(declare-fun b!4877199 () Bool)

(declare-fun e!3048412 () Bool)

(assert (=> b!4877199 (= e!3048412 e!3048414)))

(declare-fun res!2081892 () Bool)

(assert (=> b!4877199 (=> (not res!2081892) (not e!3048414))))

(assert (=> b!4877199 (= res!2081892 (isDefined!10863 lt!1998494))))

(declare-fun b!4877200 () Bool)

(declare-fun e!3048413 () Option!13806)

(declare-fun call!338593 () Option!13806)

(assert (=> b!4877200 (= e!3048413 call!338593)))

(declare-fun b!4877201 () Bool)

(declare-fun res!2081891 () Bool)

(assert (=> b!4877201 (=> (not res!2081891) (not e!3048414))))

(assert (=> b!4877201 (= res!2081891 (= (value!258540 (_1!33258 (get!19251 lt!1998494))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun b!4877202 () Bool)

(declare-fun res!2081889 () Bool)

(assert (=> b!4877202 (=> (not res!2081889) (not e!3048414))))

(declare-fun ++!12207 (List!56136 List!56136) List!56136)

(assert (=> b!4877202 (= res!2081889 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))) (_2!33258 (get!19251 lt!1998494))) (list!17543 input!585)))))

(declare-fun b!4877203 () Bool)

(declare-fun res!2081887 () Bool)

(assert (=> b!4877203 (=> (not res!2081887) (not e!3048414))))

(assert (=> b!4877203 (= res!2081887 (< (size!36947 (_2!33258 (get!19251 lt!1998494))) (size!36947 (list!17543 input!585))))))

(declare-fun d!1566844 () Bool)

(assert (=> d!1566844 e!3048412))

(declare-fun res!2081888 () Bool)

(assert (=> d!1566844 (=> res!2081888 e!3048412)))

(declare-fun isEmpty!30014 (Option!13806) Bool)

(assert (=> d!1566844 (= res!2081888 (isEmpty!30014 lt!1998494))))

(assert (=> d!1566844 (= lt!1998494 e!3048413)))

(declare-fun c!829552 () Bool)

(assert (=> d!1566844 (= c!829552 (and (is-Cons!56015 rules!1164) (is-Nil!56015 (t!364613 rules!1164))))))

(declare-fun lt!1998493 () Unit!146016)

(declare-fun lt!1998496 () Unit!146016)

(assert (=> d!1566844 (= lt!1998493 lt!1998496)))

(assert (=> d!1566844 (isPrefix!4773 (list!17543 input!585) (list!17543 input!585))))

(assert (=> d!1566844 (= lt!1998496 (lemmaIsPrefixRefl!3170 (list!17543 input!585) (list!17543 input!585)))))

(assert (=> d!1566844 (rulesValidInductive!3028 thiss!11460 rules!1164)))

(assert (=> d!1566844 (= (maxPrefix!4556 thiss!11460 rules!1164 (list!17543 input!585)) lt!1998494)))

(declare-fun bm!338588 () Bool)

(assert (=> bm!338588 (= call!338593 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)))))

(declare-fun b!4877204 () Bool)

(declare-fun res!2081890 () Bool)

(assert (=> b!4877204 (=> (not res!2081890) (not e!3048414))))

(assert (=> b!4877204 (= res!2081890 (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun b!4877205 () Bool)

(declare-fun contains!19409 (List!56139 Rule!15898) Bool)

(assert (=> b!4877205 (= e!3048414 (contains!19409 rules!1164 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))

(declare-fun b!4877206 () Bool)

(declare-fun lt!1998495 () Option!13806)

(declare-fun lt!1998492 () Option!13806)

(assert (=> b!4877206 (= e!3048413 (ite (and (is-None!13805 lt!1998495) (is-None!13805 lt!1998492)) None!13805 (ite (is-None!13805 lt!1998492) lt!1998495 (ite (is-None!13805 lt!1998495) lt!1998492 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998495))) (size!36942 (_1!33258 (v!49747 lt!1998492)))) lt!1998495 lt!1998492)))))))

(assert (=> b!4877206 (= lt!1998495 call!338593)))

(assert (=> b!4877206 (= lt!1998492 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)))))

(assert (= (and d!1566844 c!829552) b!4877200))

(assert (= (and d!1566844 (not c!829552)) b!4877206))

(assert (= (or b!4877200 b!4877206) bm!338588))

(assert (= (and d!1566844 (not res!2081888)) b!4877199))

(assert (= (and b!4877199 res!2081892) b!4877198))

(assert (= (and b!4877198 res!2081893) b!4877203))

(assert (= (and b!4877203 res!2081887) b!4877202))

(assert (= (and b!4877202 res!2081889) b!4877201))

(assert (= (and b!4877201 res!2081891) b!4877204))

(assert (= (and b!4877204 res!2081890) b!4877205))

(declare-fun m!5879696 () Bool)

(assert (=> b!4877203 m!5879696))

(declare-fun m!5879698 () Bool)

(assert (=> b!4877203 m!5879698))

(assert (=> b!4877203 m!5879338))

(assert (=> b!4877203 m!5879408))

(declare-fun m!5879700 () Bool)

(assert (=> d!1566844 m!5879700))

(assert (=> d!1566844 m!5879338))

(assert (=> d!1566844 m!5879338))

(assert (=> d!1566844 m!5879564))

(assert (=> d!1566844 m!5879338))

(assert (=> d!1566844 m!5879338))

(assert (=> d!1566844 m!5879566))

(assert (=> d!1566844 m!5879394))

(assert (=> b!4877198 m!5879696))

(declare-fun m!5879702 () Bool)

(assert (=> b!4877198 m!5879702))

(assert (=> b!4877198 m!5879702))

(declare-fun m!5879704 () Bool)

(assert (=> b!4877198 m!5879704))

(assert (=> b!4877205 m!5879696))

(declare-fun m!5879706 () Bool)

(assert (=> b!4877205 m!5879706))

(assert (=> b!4877204 m!5879696))

(assert (=> b!4877204 m!5879702))

(assert (=> b!4877204 m!5879702))

(assert (=> b!4877204 m!5879704))

(assert (=> b!4877204 m!5879704))

(declare-fun m!5879708 () Bool)

(assert (=> b!4877204 m!5879708))

(declare-fun m!5879710 () Bool)

(assert (=> b!4877199 m!5879710))

(assert (=> bm!338588 m!5879338))

(assert (=> bm!338588 m!5879614))

(assert (=> b!4877202 m!5879696))

(assert (=> b!4877202 m!5879702))

(assert (=> b!4877202 m!5879702))

(assert (=> b!4877202 m!5879704))

(assert (=> b!4877202 m!5879704))

(declare-fun m!5879712 () Bool)

(assert (=> b!4877202 m!5879712))

(assert (=> b!4877201 m!5879696))

(declare-fun m!5879714 () Bool)

(assert (=> b!4877201 m!5879714))

(assert (=> b!4877201 m!5879714))

(declare-fun m!5879716 () Bool)

(assert (=> b!4877201 m!5879716))

(assert (=> b!4877206 m!5879338))

(assert (=> b!4877206 m!5879546))

(assert (=> b!4876911 d!1566844))

(assert (=> b!4876911 d!1566762))

(declare-fun d!1566850 () Bool)

(declare-fun res!2081898 () Bool)

(declare-fun e!3048418 () Bool)

(assert (=> d!1566850 (=> (not res!2081898) (not e!3048418))))

(declare-fun list!17552 (IArray!29267) List!56136)

(assert (=> d!1566850 (= res!2081898 (<= (size!36947 (list!17552 (xs!17913 (c!829488 input!585)))) 512))))

(assert (=> d!1566850 (= (inv!71961 (c!829488 input!585)) e!3048418)))

(declare-fun b!4877213 () Bool)

(declare-fun res!2081899 () Bool)

(assert (=> b!4877213 (=> (not res!2081899) (not e!3048418))))

(assert (=> b!4877213 (= res!2081899 (= (csize!29437 (c!829488 input!585)) (size!36947 (list!17552 (xs!17913 (c!829488 input!585))))))))

(declare-fun b!4877214 () Bool)

(assert (=> b!4877214 (= e!3048418 (and (> (csize!29437 (c!829488 input!585)) 0) (<= (csize!29437 (c!829488 input!585)) 512)))))

(assert (= (and d!1566850 res!2081898) b!4877213))

(assert (= (and b!4877213 res!2081899) b!4877214))

(declare-fun m!5879718 () Bool)

(assert (=> d!1566850 m!5879718))

(assert (=> d!1566850 m!5879718))

(declare-fun m!5879720 () Bool)

(assert (=> d!1566850 m!5879720))

(assert (=> b!4877213 m!5879718))

(assert (=> b!4877213 m!5879718))

(assert (=> b!4877213 m!5879720))

(assert (=> b!4876957 d!1566850))

(assert (=> b!4876914 d!1566812))

(assert (=> b!4876914 d!1566816))

(declare-fun d!1566852 () Bool)

(assert (=> d!1566852 (= (list!17543 (_2!33255 (get!19250 lt!1998330))) (list!17547 (c!829488 (_2!33255 (get!19250 lt!1998330)))))))

(declare-fun bs!1175141 () Bool)

(assert (= bs!1175141 d!1566852))

(declare-fun m!5879722 () Bool)

(assert (=> bs!1175141 m!5879722))

(assert (=> b!4876914 d!1566852))

(assert (=> b!4876914 d!1566814))

(assert (=> b!4876914 d!1566762))

(declare-fun d!1566854 () Bool)

(assert (=> d!1566854 true))

(declare-fun lt!1998500 () Bool)

(assert (=> d!1566854 (= lt!1998500 (rulesValidInductive!3028 thiss!11460 rules!1164))))

(declare-fun lambda!243655 () Int)

(declare-fun forall!13057 (List!56139 Int) Bool)

(assert (=> d!1566854 (= lt!1998500 (forall!13057 rules!1164 lambda!243655))))

(assert (=> d!1566854 (= (rulesValid!3129 thiss!11460 rules!1164) lt!1998500)))

(declare-fun bs!1175142 () Bool)

(assert (= bs!1175142 d!1566854))

(assert (=> bs!1175142 m!5879394))

(declare-fun m!5879724 () Bool)

(assert (=> bs!1175142 m!5879724))

(assert (=> d!1566776 d!1566854))

(declare-fun d!1566856 () Bool)

(declare-fun res!2081906 () Bool)

(declare-fun e!3048421 () Bool)

(assert (=> d!1566856 (=> (not res!2081906) (not e!3048421))))

(assert (=> d!1566856 (= res!2081906 (= (csize!29436 (c!829488 input!585)) (+ (size!36948 (left!40688 (c!829488 input!585))) (size!36948 (right!41018 (c!829488 input!585))))))))

(assert (=> d!1566856 (= (inv!71960 (c!829488 input!585)) e!3048421)))

(declare-fun b!4877223 () Bool)

(declare-fun res!2081907 () Bool)

(assert (=> b!4877223 (=> (not res!2081907) (not e!3048421))))

(assert (=> b!4877223 (= res!2081907 (and (not (= (left!40688 (c!829488 input!585)) Empty!14603)) (not (= (right!41018 (c!829488 input!585)) Empty!14603))))))

(declare-fun b!4877224 () Bool)

(declare-fun res!2081908 () Bool)

(assert (=> b!4877224 (=> (not res!2081908) (not e!3048421))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1940 (Conc!14603) Int)

(assert (=> b!4877224 (= res!2081908 (= (cheight!14814 (c!829488 input!585)) (+ (max!0 (height!1940 (left!40688 (c!829488 input!585))) (height!1940 (right!41018 (c!829488 input!585)))) 1)))))

(declare-fun b!4877225 () Bool)

(assert (=> b!4877225 (= e!3048421 (<= 0 (cheight!14814 (c!829488 input!585))))))

(assert (= (and d!1566856 res!2081906) b!4877223))

(assert (= (and b!4877223 res!2081907) b!4877224))

(assert (= (and b!4877224 res!2081908) b!4877225))

(declare-fun m!5879726 () Bool)

(assert (=> d!1566856 m!5879726))

(declare-fun m!5879728 () Bool)

(assert (=> d!1566856 m!5879728))

(declare-fun m!5879730 () Bool)

(assert (=> b!4877224 m!5879730))

(declare-fun m!5879732 () Bool)

(assert (=> b!4877224 m!5879732))

(assert (=> b!4877224 m!5879730))

(assert (=> b!4877224 m!5879732))

(declare-fun m!5879734 () Bool)

(assert (=> b!4877224 m!5879734))

(assert (=> b!4876955 d!1566856))

(assert (=> b!4876912 d!1566812))

(assert (=> b!4876912 d!1566842))

(assert (=> b!4876912 d!1566852))

(assert (=> b!4876912 d!1566762))

(assert (=> b!4876912 d!1566844))

(declare-fun d!1566858 () Bool)

(assert (=> d!1566858 (= (inv!71962 (xs!17913 (c!829488 input!585))) (<= (size!36947 (innerList!14691 (xs!17913 (c!829488 input!585)))) 2147483647))))

(declare-fun bs!1175143 () Bool)

(assert (= bs!1175143 d!1566858))

(declare-fun m!5879736 () Bool)

(assert (=> bs!1175143 m!5879736))

(assert (=> b!4876989 d!1566858))

(declare-fun d!1566860 () Bool)

(declare-fun lt!1998503 () Int)

(assert (=> d!1566860 (>= lt!1998503 0)))

(declare-fun e!3048424 () Int)

(assert (=> d!1566860 (= lt!1998503 e!3048424)))

(declare-fun c!829556 () Bool)

(assert (=> d!1566860 (= c!829556 (is-Nil!56014 (_1!33254 lt!1998359)))))

(assert (=> d!1566860 (= (size!36949 (_1!33254 lt!1998359)) lt!1998503)))

(declare-fun b!4877230 () Bool)

(assert (=> b!4877230 (= e!3048424 0)))

(declare-fun b!4877231 () Bool)

(assert (=> b!4877231 (= e!3048424 (+ 1 (size!36949 (t!364612 (_1!33254 lt!1998359)))))))

(assert (= (and d!1566860 c!829556) b!4877230))

(assert (= (and d!1566860 (not c!829556)) b!4877231))

(declare-fun m!5879738 () Bool)

(assert (=> b!4877231 m!5879738))

(assert (=> d!1566770 d!1566860))

(declare-fun b!4877232 () Bool)

(declare-fun res!2081915 () Bool)

(declare-fun e!3048427 () Bool)

(assert (=> b!4877232 (=> (not res!2081915) (not e!3048427))))

(declare-fun lt!1998506 () Option!13806)

(assert (=> b!4877232 (= res!2081915 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506)))))))

(declare-fun b!4877233 () Bool)

(declare-fun e!3048425 () Bool)

(assert (=> b!4877233 (= e!3048425 e!3048427)))

(declare-fun res!2081914 () Bool)

(assert (=> b!4877233 (=> (not res!2081914) (not e!3048427))))

(assert (=> b!4877233 (= res!2081914 (isDefined!10863 lt!1998506))))

(declare-fun b!4877234 () Bool)

(declare-fun e!3048426 () Option!13806)

(declare-fun call!338594 () Option!13806)

(assert (=> b!4877234 (= e!3048426 call!338594)))

(declare-fun b!4877235 () Bool)

(declare-fun res!2081913 () Bool)

(assert (=> b!4877235 (=> (not res!2081913) (not e!3048427))))

(assert (=> b!4877235 (= res!2081913 (= (value!258540 (_1!33258 (get!19251 lt!1998506))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun b!4877236 () Bool)

(declare-fun res!2081911 () Bool)

(assert (=> b!4877236 (=> (not res!2081911) (not e!3048427))))

(assert (=> b!4877236 (= res!2081911 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))) (_2!33258 (get!19251 lt!1998506))) lt!1998299))))

(declare-fun b!4877237 () Bool)

(declare-fun res!2081909 () Bool)

(assert (=> b!4877237 (=> (not res!2081909) (not e!3048427))))

(assert (=> b!4877237 (= res!2081909 (< (size!36947 (_2!33258 (get!19251 lt!1998506))) (size!36947 lt!1998299)))))

(declare-fun d!1566862 () Bool)

(assert (=> d!1566862 e!3048425))

(declare-fun res!2081910 () Bool)

(assert (=> d!1566862 (=> res!2081910 e!3048425)))

(assert (=> d!1566862 (= res!2081910 (isEmpty!30014 lt!1998506))))

(assert (=> d!1566862 (= lt!1998506 e!3048426)))

(declare-fun c!829557 () Bool)

(assert (=> d!1566862 (= c!829557 (and (is-Cons!56015 rules!1164) (is-Nil!56015 (t!364613 rules!1164))))))

(declare-fun lt!1998505 () Unit!146016)

(declare-fun lt!1998508 () Unit!146016)

(assert (=> d!1566862 (= lt!1998505 lt!1998508)))

(assert (=> d!1566862 (isPrefix!4773 lt!1998299 lt!1998299)))

(assert (=> d!1566862 (= lt!1998508 (lemmaIsPrefixRefl!3170 lt!1998299 lt!1998299))))

(assert (=> d!1566862 (rulesValidInductive!3028 thiss!11460 rules!1164)))

(assert (=> d!1566862 (= (maxPrefix!4556 thiss!11460 rules!1164 lt!1998299) lt!1998506)))

(declare-fun bm!338589 () Bool)

(assert (=> bm!338589 (= call!338594 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) lt!1998299))))

(declare-fun b!4877238 () Bool)

(declare-fun res!2081912 () Bool)

(assert (=> b!4877238 (=> (not res!2081912) (not e!3048427))))

(assert (=> b!4877238 (= res!2081912 (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun b!4877239 () Bool)

(assert (=> b!4877239 (= e!3048427 (contains!19409 rules!1164 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))

(declare-fun b!4877240 () Bool)

(declare-fun lt!1998507 () Option!13806)

(declare-fun lt!1998504 () Option!13806)

(assert (=> b!4877240 (= e!3048426 (ite (and (is-None!13805 lt!1998507) (is-None!13805 lt!1998504)) None!13805 (ite (is-None!13805 lt!1998504) lt!1998507 (ite (is-None!13805 lt!1998507) lt!1998504 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998507))) (size!36942 (_1!33258 (v!49747 lt!1998504)))) lt!1998507 lt!1998504)))))))

(assert (=> b!4877240 (= lt!1998507 call!338594)))

(assert (=> b!4877240 (= lt!1998504 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) lt!1998299))))

(assert (= (and d!1566862 c!829557) b!4877234))

(assert (= (and d!1566862 (not c!829557)) b!4877240))

(assert (= (or b!4877234 b!4877240) bm!338589))

(assert (= (and d!1566862 (not res!2081910)) b!4877233))

(assert (= (and b!4877233 res!2081914) b!4877232))

(assert (= (and b!4877232 res!2081915) b!4877237))

(assert (= (and b!4877237 res!2081909) b!4877236))

(assert (= (and b!4877236 res!2081911) b!4877235))

(assert (= (and b!4877235 res!2081913) b!4877238))

(assert (= (and b!4877238 res!2081912) b!4877239))

(declare-fun m!5879740 () Bool)

(assert (=> b!4877237 m!5879740))

(declare-fun m!5879742 () Bool)

(assert (=> b!4877237 m!5879742))

(assert (=> b!4877237 m!5879422))

(declare-fun m!5879744 () Bool)

(assert (=> d!1566862 m!5879744))

(declare-fun m!5879746 () Bool)

(assert (=> d!1566862 m!5879746))

(declare-fun m!5879748 () Bool)

(assert (=> d!1566862 m!5879748))

(assert (=> d!1566862 m!5879394))

(assert (=> b!4877232 m!5879740))

(declare-fun m!5879750 () Bool)

(assert (=> b!4877232 m!5879750))

(assert (=> b!4877232 m!5879750))

(declare-fun m!5879752 () Bool)

(assert (=> b!4877232 m!5879752))

(assert (=> b!4877239 m!5879740))

(declare-fun m!5879754 () Bool)

(assert (=> b!4877239 m!5879754))

(assert (=> b!4877238 m!5879740))

(assert (=> b!4877238 m!5879750))

(assert (=> b!4877238 m!5879750))

(assert (=> b!4877238 m!5879752))

(assert (=> b!4877238 m!5879752))

(declare-fun m!5879756 () Bool)

(assert (=> b!4877238 m!5879756))

(declare-fun m!5879758 () Bool)

(assert (=> b!4877233 m!5879758))

(declare-fun m!5879760 () Bool)

(assert (=> bm!338589 m!5879760))

(assert (=> b!4877236 m!5879740))

(assert (=> b!4877236 m!5879750))

(assert (=> b!4877236 m!5879750))

(assert (=> b!4877236 m!5879752))

(assert (=> b!4877236 m!5879752))

(declare-fun m!5879762 () Bool)

(assert (=> b!4877236 m!5879762))

(assert (=> b!4877235 m!5879740))

(declare-fun m!5879764 () Bool)

(assert (=> b!4877235 m!5879764))

(assert (=> b!4877235 m!5879764))

(declare-fun m!5879766 () Bool)

(assert (=> b!4877235 m!5879766))

(declare-fun m!5879768 () Bool)

(assert (=> b!4877240 m!5879768))

(assert (=> d!1566770 d!1566862))

(declare-fun b!4877241 () Bool)

(declare-fun e!3048428 () tuple2!59902)

(assert (=> b!4877241 (= e!3048428 (tuple2!59903 Nil!56014 (_2!33258 (v!49747 lt!1998358))))))

(declare-fun d!1566864 () Bool)

(declare-fun e!3048429 () Bool)

(assert (=> d!1566864 e!3048429))

(declare-fun c!829559 () Bool)

(declare-fun lt!1998511 () tuple2!59902)

(assert (=> d!1566864 (= c!829559 (> (size!36949 (_1!33254 lt!1998511)) 0))))

(assert (=> d!1566864 (= lt!1998511 e!3048428)))

(declare-fun c!829558 () Bool)

(declare-fun lt!1998510 () Option!13806)

(assert (=> d!1566864 (= c!829558 (is-Some!13805 lt!1998510))))

(assert (=> d!1566864 (= lt!1998510 (maxPrefix!4556 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998358))))))

(assert (=> d!1566864 (= (lexList!2112 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998358))) lt!1998511)))

(declare-fun b!4877242 () Bool)

(assert (=> b!4877242 (= e!3048429 (= (_2!33254 lt!1998511) (_2!33258 (v!49747 lt!1998358))))))

(declare-fun b!4877243 () Bool)

(declare-fun e!3048430 () Bool)

(assert (=> b!4877243 (= e!3048429 e!3048430)))

(declare-fun res!2081916 () Bool)

(assert (=> b!4877243 (= res!2081916 (< (size!36947 (_2!33254 lt!1998511)) (size!36947 (_2!33258 (v!49747 lt!1998358)))))))

(assert (=> b!4877243 (=> (not res!2081916) (not e!3048430))))

(declare-fun b!4877244 () Bool)

(assert (=> b!4877244 (= e!3048430 (not (isEmpty!30008 (_1!33254 lt!1998511))))))

(declare-fun b!4877245 () Bool)

(declare-fun lt!1998509 () tuple2!59902)

(assert (=> b!4877245 (= e!3048428 (tuple2!59903 (Cons!56014 (_1!33258 (v!49747 lt!1998510)) (_1!33254 lt!1998509)) (_2!33254 lt!1998509)))))

(assert (=> b!4877245 (= lt!1998509 (lexList!2112 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998510))))))

(assert (= (and d!1566864 c!829558) b!4877245))

(assert (= (and d!1566864 (not c!829558)) b!4877241))

(assert (= (and d!1566864 c!829559) b!4877243))

(assert (= (and d!1566864 (not c!829559)) b!4877242))

(assert (= (and b!4877243 res!2081916) b!4877244))

(declare-fun m!5879770 () Bool)

(assert (=> d!1566864 m!5879770))

(declare-fun m!5879772 () Bool)

(assert (=> d!1566864 m!5879772))

(declare-fun m!5879774 () Bool)

(assert (=> b!4877243 m!5879774))

(declare-fun m!5879776 () Bool)

(assert (=> b!4877243 m!5879776))

(declare-fun m!5879778 () Bool)

(assert (=> b!4877244 m!5879778))

(declare-fun m!5879780 () Bool)

(assert (=> b!4877245 m!5879780))

(assert (=> b!4876945 d!1566864))

(declare-fun d!1566866 () Bool)

(assert (=> d!1566866 (= (isEmpty!30008 (_1!33254 lt!1998359)) (is-Nil!56014 (_1!33254 lt!1998359)))))

(assert (=> b!4876944 d!1566866))

(declare-fun b!4877255 () Bool)

(declare-fun e!3048435 () List!56136)

(declare-fun e!3048436 () List!56136)

(assert (=> b!4877255 (= e!3048435 e!3048436)))

(declare-fun c!829565 () Bool)

(assert (=> b!4877255 (= c!829565 (is-Leaf!24339 (c!829488 input!585)))))

(declare-fun b!4877257 () Bool)

(assert (=> b!4877257 (= e!3048436 (++!12207 (list!17547 (left!40688 (c!829488 input!585))) (list!17547 (right!41018 (c!829488 input!585)))))))

(declare-fun b!4877254 () Bool)

(assert (=> b!4877254 (= e!3048435 Nil!56012)))

(declare-fun b!4877256 () Bool)

(assert (=> b!4877256 (= e!3048436 (list!17552 (xs!17913 (c!829488 input!585))))))

(declare-fun d!1566868 () Bool)

(declare-fun c!829564 () Bool)

(assert (=> d!1566868 (= c!829564 (is-Empty!14603 (c!829488 input!585)))))

(assert (=> d!1566868 (= (list!17547 (c!829488 input!585)) e!3048435)))

(assert (= (and d!1566868 c!829564) b!4877254))

(assert (= (and d!1566868 (not c!829564)) b!4877255))

(assert (= (and b!4877255 c!829565) b!4877256))

(assert (= (and b!4877255 (not c!829565)) b!4877257))

(declare-fun m!5879782 () Bool)

(assert (=> b!4877257 m!5879782))

(declare-fun m!5879784 () Bool)

(assert (=> b!4877257 m!5879784))

(assert (=> b!4877257 m!5879782))

(assert (=> b!4877257 m!5879784))

(declare-fun m!5879786 () Bool)

(assert (=> b!4877257 m!5879786))

(assert (=> b!4877256 m!5879718))

(assert (=> d!1566762 d!1566868))

(declare-fun b!4877288 () Bool)

(declare-fun res!2081948 () Bool)

(declare-fun e!3048447 () Bool)

(assert (=> b!4877288 (=> (not res!2081948) (not e!3048447))))

(assert (=> b!4877288 (= res!2081948 (isBalanced!3967 (right!41018 (c!829488 input!585))))))

(declare-fun b!4877289 () Bool)

(declare-fun res!2081943 () Bool)

(assert (=> b!4877289 (=> (not res!2081943) (not e!3048447))))

(assert (=> b!4877289 (= res!2081943 (<= (- (height!1940 (left!40688 (c!829488 input!585))) (height!1940 (right!41018 (c!829488 input!585)))) 1))))

(declare-fun b!4877290 () Bool)

(declare-fun isEmpty!30018 (Conc!14603) Bool)

(assert (=> b!4877290 (= e!3048447 (not (isEmpty!30018 (right!41018 (c!829488 input!585)))))))

(declare-fun d!1566870 () Bool)

(declare-fun res!2081947 () Bool)

(declare-fun e!3048448 () Bool)

(assert (=> d!1566870 (=> res!2081947 e!3048448)))

(assert (=> d!1566870 (= res!2081947 (not (is-Node!14603 (c!829488 input!585))))))

(assert (=> d!1566870 (= (isBalanced!3967 (c!829488 input!585)) e!3048448)))

(declare-fun b!4877291 () Bool)

(assert (=> b!4877291 (= e!3048448 e!3048447)))

(declare-fun res!2081944 () Bool)

(assert (=> b!4877291 (=> (not res!2081944) (not e!3048447))))

(assert (=> b!4877291 (= res!2081944 (<= (- 1) (- (height!1940 (left!40688 (c!829488 input!585))) (height!1940 (right!41018 (c!829488 input!585))))))))

(declare-fun b!4877292 () Bool)

(declare-fun res!2081946 () Bool)

(assert (=> b!4877292 (=> (not res!2081946) (not e!3048447))))

(assert (=> b!4877292 (= res!2081946 (isBalanced!3967 (left!40688 (c!829488 input!585))))))

(declare-fun b!4877293 () Bool)

(declare-fun res!2081945 () Bool)

(assert (=> b!4877293 (=> (not res!2081945) (not e!3048447))))

(assert (=> b!4877293 (= res!2081945 (not (isEmpty!30018 (left!40688 (c!829488 input!585)))))))

(assert (= (and d!1566870 (not res!2081947)) b!4877291))

(assert (= (and b!4877291 res!2081944) b!4877289))

(assert (= (and b!4877289 res!2081943) b!4877292))

(assert (= (and b!4877292 res!2081946) b!4877288))

(assert (= (and b!4877288 res!2081948) b!4877293))

(assert (= (and b!4877293 res!2081945) b!4877290))

(declare-fun m!5879788 () Bool)

(assert (=> b!4877290 m!5879788))

(assert (=> b!4877289 m!5879730))

(assert (=> b!4877289 m!5879732))

(declare-fun m!5879790 () Bool)

(assert (=> b!4877293 m!5879790))

(declare-fun m!5879792 () Bool)

(assert (=> b!4877292 m!5879792))

(declare-fun m!5879794 () Bool)

(assert (=> b!4877288 m!5879794))

(assert (=> b!4877291 m!5879730))

(assert (=> b!4877291 m!5879732))

(assert (=> d!1566766 d!1566870))

(declare-fun d!1566872 () Bool)

(declare-fun lt!1998522 () Int)

(assert (=> d!1566872 (>= lt!1998522 0)))

(declare-fun e!3048449 () Int)

(assert (=> d!1566872 (= lt!1998522 e!3048449)))

(declare-fun c!829568 () Bool)

(assert (=> d!1566872 (= c!829568 (is-Nil!56012 (_2!33254 lt!1998359)))))

(assert (=> d!1566872 (= (size!36947 (_2!33254 lt!1998359)) lt!1998522)))

(declare-fun b!4877294 () Bool)

(assert (=> b!4877294 (= e!3048449 0)))

(declare-fun b!4877295 () Bool)

(assert (=> b!4877295 (= e!3048449 (+ 1 (size!36947 (t!364610 (_2!33254 lt!1998359)))))))

(assert (= (and d!1566872 c!829568) b!4877294))

(assert (= (and d!1566872 (not c!829568)) b!4877295))

(declare-fun m!5879796 () Bool)

(assert (=> b!4877295 m!5879796))

(assert (=> b!4876943 d!1566872))

(declare-fun d!1566874 () Bool)

(declare-fun lt!1998523 () Int)

(assert (=> d!1566874 (>= lt!1998523 0)))

(declare-fun e!3048450 () Int)

(assert (=> d!1566874 (= lt!1998523 e!3048450)))

(declare-fun c!829569 () Bool)

(assert (=> d!1566874 (= c!829569 (is-Nil!56012 lt!1998299))))

(assert (=> d!1566874 (= (size!36947 lt!1998299) lt!1998523)))

(declare-fun b!4877296 () Bool)

(assert (=> b!4877296 (= e!3048450 0)))

(declare-fun b!4877297 () Bool)

(assert (=> b!4877297 (= e!3048450 (+ 1 (size!36947 (t!364610 lt!1998299))))))

(assert (= (and d!1566874 c!829569) b!4877296))

(assert (= (and d!1566874 (not c!829569)) b!4877297))

(declare-fun m!5879798 () Bool)

(assert (=> b!4877297 m!5879798))

(assert (=> b!4876943 d!1566874))

(declare-fun d!1566876 () Bool)

(declare-fun lt!1998529 () Int)

(assert (=> d!1566876 (>= lt!1998529 0)))

(declare-fun e!3048454 () Int)

(assert (=> d!1566876 (= lt!1998529 e!3048454)))

(declare-fun c!829571 () Bool)

(assert (=> d!1566876 (= c!829571 (is-Nil!56014 (list!17544 (BalanceConc!28651 Empty!14604))))))

(assert (=> d!1566876 (= (size!36949 (list!17544 (BalanceConc!28651 Empty!14604))) lt!1998529)))

(declare-fun b!4877307 () Bool)

(assert (=> b!4877307 (= e!3048454 0)))

(declare-fun b!4877308 () Bool)

(assert (=> b!4877308 (= e!3048454 (+ 1 (size!36949 (t!364612 (list!17544 (BalanceConc!28651 Empty!14604))))))))

(assert (= (and d!1566876 c!829571) b!4877307))

(assert (= (and d!1566876 (not c!829571)) b!4877308))

(declare-fun m!5879800 () Bool)

(assert (=> b!4877308 m!5879800))

(assert (=> d!1566774 d!1566876))

(assert (=> d!1566774 d!1566768))

(declare-fun d!1566878 () Bool)

(declare-fun lt!1998532 () Int)

(assert (=> d!1566878 (= lt!1998532 (size!36949 (list!17548 (c!829489 (BalanceConc!28651 Empty!14604)))))))

(assert (=> d!1566878 (= lt!1998532 (ite (is-Empty!14604 (c!829489 (BalanceConc!28651 Empty!14604))) 0 (ite (is-Leaf!24340 (c!829489 (BalanceConc!28651 Empty!14604))) (csize!29439 (c!829489 (BalanceConc!28651 Empty!14604))) (csize!29438 (c!829489 (BalanceConc!28651 Empty!14604))))))))

(assert (=> d!1566878 (= (size!36950 (c!829489 (BalanceConc!28651 Empty!14604))) lt!1998532)))

(declare-fun bs!1175144 () Bool)

(assert (= bs!1175144 d!1566878))

(assert (=> bs!1175144 m!5879414))

(assert (=> bs!1175144 m!5879414))

(declare-fun m!5879830 () Bool)

(assert (=> bs!1175144 m!5879830))

(assert (=> d!1566774 d!1566878))

(declare-fun bs!1175145 () Bool)

(declare-fun d!1566880 () Bool)

(assert (= bs!1175145 (and d!1566880 b!4877141)))

(declare-fun lambda!243658 () Int)

(assert (=> bs!1175145 (= lambda!243658 lambda!243647)))

(assert (=> d!1566880 true))

(assert (=> d!1566880 (< (dynLambda!22523 order!25283 (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22522 order!25281 lambda!243658))))

(assert (=> d!1566880 true))

(assert (=> d!1566880 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22522 order!25281 lambda!243658))))

(declare-fun Forall!1682 (Int) Bool)

(assert (=> d!1566880 (= (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (Forall!1682 lambda!243658))))

(declare-fun bs!1175146 () Bool)

(assert (= bs!1175146 d!1566880))

(declare-fun m!5879834 () Bool)

(assert (=> bs!1175146 m!5879834))

(assert (=> d!1566782 d!1566880))

(declare-fun d!1566888 () Bool)

(assert (=> d!1566888 true))

(declare-fun order!25289 () Int)

(declare-fun lambda!243661 () Int)

(declare-fun dynLambda!22528 (Int Int) Int)

(assert (=> d!1566888 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22528 order!25289 lambda!243661))))

(declare-fun Forall2!1263 (Int) Bool)

(assert (=> d!1566888 (= (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (Forall2!1263 lambda!243661))))

(declare-fun bs!1175147 () Bool)

(assert (= bs!1175147 d!1566888))

(declare-fun m!5879836 () Bool)

(assert (=> bs!1175147 m!5879836))

(assert (=> b!4876968 d!1566888))

(assert (=> b!4876907 d!1566804))

(declare-fun d!1566890 () Bool)

(declare-fun res!2081962 () Bool)

(declare-fun e!3048461 () Bool)

(assert (=> d!1566890 (=> res!2081962 e!3048461)))

(assert (=> d!1566890 (= res!2081962 (is-Nil!56015 rules!1164))))

(assert (=> d!1566890 (= (noDuplicateTag!3290 thiss!11460 rules!1164 Nil!56020) e!3048461)))

(declare-fun b!4877321 () Bool)

(declare-fun e!3048462 () Bool)

(assert (=> b!4877321 (= e!3048461 e!3048462)))

(declare-fun res!2081963 () Bool)

(assert (=> b!4877321 (=> (not res!2081963) (not e!3048462))))

(declare-fun contains!19411 (List!56144 String!63215) Bool)

(assert (=> b!4877321 (= res!2081963 (not (contains!19411 Nil!56020 (tag!8913 (h!62463 rules!1164)))))))

(declare-fun b!4877322 () Bool)

(assert (=> b!4877322 (= e!3048462 (noDuplicateTag!3290 thiss!11460 (t!364613 rules!1164) (Cons!56020 (tag!8913 (h!62463 rules!1164)) Nil!56020)))))

(assert (= (and d!1566890 (not res!2081962)) b!4877321))

(assert (= (and b!4877321 res!2081963) b!4877322))

(declare-fun m!5879838 () Bool)

(assert (=> b!4877321 m!5879838))

(declare-fun m!5879840 () Bool)

(assert (=> b!4877322 m!5879840))

(assert (=> b!4876948 d!1566890))

(assert (=> d!1566760 d!1566816))

(declare-fun d!1566892 () Bool)

(declare-fun e!3048469 () Bool)

(assert (=> d!1566892 e!3048469))

(declare-fun res!2081973 () Bool)

(assert (=> d!1566892 (=> res!2081973 e!3048469)))

(declare-fun lt!1998535 () Bool)

(assert (=> d!1566892 (= res!2081973 (not lt!1998535))))

(declare-fun e!3048470 () Bool)

(assert (=> d!1566892 (= lt!1998535 e!3048470)))

(declare-fun res!2081972 () Bool)

(assert (=> d!1566892 (=> res!2081972 e!3048470)))

(assert (=> d!1566892 (= res!2081972 (is-Nil!56012 lt!1998333))))

(assert (=> d!1566892 (= (isPrefix!4773 lt!1998333 lt!1998327) lt!1998535)))

(declare-fun b!4877332 () Bool)

(declare-fun res!2081975 () Bool)

(declare-fun e!3048471 () Bool)

(assert (=> b!4877332 (=> (not res!2081975) (not e!3048471))))

(declare-fun head!10421 (List!56136) C!26446)

(assert (=> b!4877332 (= res!2081975 (= (head!10421 lt!1998333) (head!10421 lt!1998327)))))

(declare-fun b!4877331 () Bool)

(assert (=> b!4877331 (= e!3048470 e!3048471)))

(declare-fun res!2081974 () Bool)

(assert (=> b!4877331 (=> (not res!2081974) (not e!3048471))))

(assert (=> b!4877331 (= res!2081974 (not (is-Nil!56012 lt!1998327)))))

(declare-fun b!4877333 () Bool)

(declare-fun tail!9567 (List!56136) List!56136)

(assert (=> b!4877333 (= e!3048471 (isPrefix!4773 (tail!9567 lt!1998333) (tail!9567 lt!1998327)))))

(declare-fun b!4877334 () Bool)

(assert (=> b!4877334 (= e!3048469 (>= (size!36947 lt!1998327) (size!36947 lt!1998333)))))

(assert (= (and d!1566892 (not res!2081972)) b!4877331))

(assert (= (and b!4877331 res!2081974) b!4877332))

(assert (= (and b!4877332 res!2081975) b!4877333))

(assert (= (and d!1566892 (not res!2081973)) b!4877334))

(declare-fun m!5879842 () Bool)

(assert (=> b!4877332 m!5879842))

(declare-fun m!5879844 () Bool)

(assert (=> b!4877332 m!5879844))

(declare-fun m!5879846 () Bool)

(assert (=> b!4877333 m!5879846))

(declare-fun m!5879848 () Bool)

(assert (=> b!4877333 m!5879848))

(assert (=> b!4877333 m!5879846))

(assert (=> b!4877333 m!5879848))

(declare-fun m!5879850 () Bool)

(assert (=> b!4877333 m!5879850))

(declare-fun m!5879852 () Bool)

(assert (=> b!4877334 m!5879852))

(declare-fun m!5879854 () Bool)

(assert (=> b!4877334 m!5879854))

(assert (=> d!1566760 d!1566892))

(declare-fun d!1566894 () Bool)

(assert (=> d!1566894 (isPrefix!4773 lt!1998333 lt!1998327)))

(declare-fun lt!1998538 () Unit!146016)

(declare-fun choose!35646 (List!56136 List!56136) Unit!146016)

(assert (=> d!1566894 (= lt!1998538 (choose!35646 lt!1998333 lt!1998327))))

(assert (=> d!1566894 (= (lemmaIsPrefixRefl!3170 lt!1998333 lt!1998327) lt!1998538)))

(declare-fun bs!1175148 () Bool)

(assert (= bs!1175148 d!1566894))

(assert (=> bs!1175148 m!5879400))

(declare-fun m!5879856 () Bool)

(assert (=> bs!1175148 m!5879856))

(assert (=> d!1566760 d!1566894))

(declare-fun bs!1175149 () Bool)

(declare-fun d!1566896 () Bool)

(assert (= bs!1175149 (and d!1566896 d!1566854)))

(declare-fun lambda!243664 () Int)

(assert (=> bs!1175149 (= lambda!243664 lambda!243655)))

(assert (=> d!1566896 true))

(declare-fun lt!1998541 () Bool)

(assert (=> d!1566896 (= lt!1998541 (forall!13057 rules!1164 lambda!243664))))

(declare-fun e!3048476 () Bool)

(assert (=> d!1566896 (= lt!1998541 e!3048476)))

(declare-fun res!2081981 () Bool)

(assert (=> d!1566896 (=> res!2081981 e!3048476)))

(assert (=> d!1566896 (= res!2081981 (not (is-Cons!56015 rules!1164)))))

(assert (=> d!1566896 (= (rulesValidInductive!3028 thiss!11460 rules!1164) lt!1998541)))

(declare-fun b!4877339 () Bool)

(declare-fun e!3048477 () Bool)

(assert (=> b!4877339 (= e!3048476 e!3048477)))

(declare-fun res!2081980 () Bool)

(assert (=> b!4877339 (=> (not res!2081980) (not e!3048477))))

(assert (=> b!4877339 (= res!2081980 (ruleValid!3637 thiss!11460 (h!62463 rules!1164)))))

(declare-fun b!4877340 () Bool)

(assert (=> b!4877340 (= e!3048477 (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164)))))

(assert (= (and d!1566896 (not res!2081981)) b!4877339))

(assert (= (and b!4877339 res!2081980) b!4877340))

(declare-fun m!5879858 () Bool)

(assert (=> d!1566896 m!5879858))

(assert (=> b!4877339 m!5879640))

(assert (=> b!4877340 m!5879538))

(assert (=> d!1566760 d!1566896))

(assert (=> d!1566760 d!1566762))

(assert (=> d!1566760 d!1566804))

(declare-fun d!1566898 () Bool)

(assert (=> d!1566898 (= (isDefined!10863 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))) (not (isEmpty!30014 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585)))))))

(declare-fun bs!1175150 () Bool)

(assert (= bs!1175150 d!1566898))

(assert (=> bs!1175150 m!5879384))

(declare-fun m!5879860 () Bool)

(assert (=> bs!1175150 m!5879860))

(assert (=> d!1566760 d!1566898))

(declare-fun b!4877345 () Bool)

(declare-fun e!3048480 () Bool)

(declare-fun tp!1372274 () Bool)

(assert (=> b!4877345 (= e!3048480 (and tp_is_empty!35677 tp!1372274))))

(assert (=> b!4876990 (= tp!1372218 e!3048480)))

(assert (= (and b!4876990 (is-Cons!56012 (innerList!14691 (xs!17913 (c!829488 input!585))))) b!4877345))

(declare-fun b!4877348 () Bool)

(declare-fun e!3048481 () Bool)

(declare-fun tp!1372277 () Bool)

(assert (=> b!4877348 (= e!3048481 tp!1372277)))

(declare-fun b!4877349 () Bool)

(declare-fun tp!1372275 () Bool)

(declare-fun tp!1372279 () Bool)

(assert (=> b!4877349 (= e!3048481 (and tp!1372275 tp!1372279))))

(declare-fun b!4877346 () Bool)

(assert (=> b!4877346 (= e!3048481 tp_is_empty!35677)))

(declare-fun b!4877347 () Bool)

(declare-fun tp!1372278 () Bool)

(declare-fun tp!1372276 () Bool)

(assert (=> b!4877347 (= e!3048481 (and tp!1372278 tp!1372276))))

(assert (=> b!4877003 (= tp!1372233 e!3048481)))

(assert (= (and b!4877003 (is-ElementMatch!13124 (reg!13453 (regex!8049 (h!62463 rules!1164))))) b!4877346))

(assert (= (and b!4877003 (is-Concat!21484 (reg!13453 (regex!8049 (h!62463 rules!1164))))) b!4877347))

(assert (= (and b!4877003 (is-Star!13124 (reg!13453 (regex!8049 (h!62463 rules!1164))))) b!4877348))

(assert (= (and b!4877003 (is-Union!13124 (reg!13453 (regex!8049 (h!62463 rules!1164))))) b!4877349))

(declare-fun b!4877352 () Bool)

(declare-fun e!3048482 () Bool)

(declare-fun tp!1372282 () Bool)

(assert (=> b!4877352 (= e!3048482 tp!1372282)))

(declare-fun b!4877353 () Bool)

(declare-fun tp!1372280 () Bool)

(declare-fun tp!1372284 () Bool)

(assert (=> b!4877353 (= e!3048482 (and tp!1372280 tp!1372284))))

(declare-fun b!4877350 () Bool)

(assert (=> b!4877350 (= e!3048482 tp_is_empty!35677)))

(declare-fun b!4877351 () Bool)

(declare-fun tp!1372283 () Bool)

(declare-fun tp!1372281 () Bool)

(assert (=> b!4877351 (= e!3048482 (and tp!1372283 tp!1372281))))

(assert (=> b!4877002 (= tp!1372234 e!3048482)))

(assert (= (and b!4877002 (is-ElementMatch!13124 (regOne!26760 (regex!8049 (h!62463 rules!1164))))) b!4877350))

(assert (= (and b!4877002 (is-Concat!21484 (regOne!26760 (regex!8049 (h!62463 rules!1164))))) b!4877351))

(assert (= (and b!4877002 (is-Star!13124 (regOne!26760 (regex!8049 (h!62463 rules!1164))))) b!4877352))

(assert (= (and b!4877002 (is-Union!13124 (regOne!26760 (regex!8049 (h!62463 rules!1164))))) b!4877353))

(declare-fun b!4877356 () Bool)

(declare-fun e!3048483 () Bool)

(declare-fun tp!1372287 () Bool)

(assert (=> b!4877356 (= e!3048483 tp!1372287)))

(declare-fun b!4877357 () Bool)

(declare-fun tp!1372285 () Bool)

(declare-fun tp!1372289 () Bool)

(assert (=> b!4877357 (= e!3048483 (and tp!1372285 tp!1372289))))

(declare-fun b!4877354 () Bool)

(assert (=> b!4877354 (= e!3048483 tp_is_empty!35677)))

(declare-fun b!4877355 () Bool)

(declare-fun tp!1372288 () Bool)

(declare-fun tp!1372286 () Bool)

(assert (=> b!4877355 (= e!3048483 (and tp!1372288 tp!1372286))))

(assert (=> b!4877002 (= tp!1372232 e!3048483)))

(assert (= (and b!4877002 (is-ElementMatch!13124 (regTwo!26760 (regex!8049 (h!62463 rules!1164))))) b!4877354))

(assert (= (and b!4877002 (is-Concat!21484 (regTwo!26760 (regex!8049 (h!62463 rules!1164))))) b!4877355))

(assert (= (and b!4877002 (is-Star!13124 (regTwo!26760 (regex!8049 (h!62463 rules!1164))))) b!4877356))

(assert (= (and b!4877002 (is-Union!13124 (regTwo!26760 (regex!8049 (h!62463 rules!1164))))) b!4877357))

(declare-fun b!4877360 () Bool)

(declare-fun e!3048484 () Bool)

(declare-fun tp!1372292 () Bool)

(assert (=> b!4877360 (= e!3048484 tp!1372292)))

(declare-fun b!4877361 () Bool)

(declare-fun tp!1372290 () Bool)

(declare-fun tp!1372294 () Bool)

(assert (=> b!4877361 (= e!3048484 (and tp!1372290 tp!1372294))))

(declare-fun b!4877358 () Bool)

(assert (=> b!4877358 (= e!3048484 tp_is_empty!35677)))

(declare-fun b!4877359 () Bool)

(declare-fun tp!1372293 () Bool)

(declare-fun tp!1372291 () Bool)

(assert (=> b!4877359 (= e!3048484 (and tp!1372293 tp!1372291))))

(assert (=> b!4876978 (= tp!1372209 e!3048484)))

(assert (= (and b!4876978 (is-ElementMatch!13124 (regex!8049 (h!62463 (t!364613 rules!1164))))) b!4877358))

(assert (= (and b!4876978 (is-Concat!21484 (regex!8049 (h!62463 (t!364613 rules!1164))))) b!4877359))

(assert (= (and b!4876978 (is-Star!13124 (regex!8049 (h!62463 (t!364613 rules!1164))))) b!4877360))

(assert (= (and b!4876978 (is-Union!13124 (regex!8049 (h!62463 (t!364613 rules!1164))))) b!4877361))

(declare-fun e!3048486 () Bool)

(declare-fun tp!1372297 () Bool)

(declare-fun b!4877362 () Bool)

(declare-fun tp!1372296 () Bool)

(assert (=> b!4877362 (= e!3048486 (and (inv!71955 (left!40688 (left!40688 (c!829488 input!585)))) tp!1372297 (inv!71955 (right!41018 (left!40688 (c!829488 input!585)))) tp!1372296))))

(declare-fun b!4877364 () Bool)

(declare-fun e!3048485 () Bool)

(declare-fun tp!1372295 () Bool)

(assert (=> b!4877364 (= e!3048485 tp!1372295)))

(declare-fun b!4877363 () Bool)

(assert (=> b!4877363 (= e!3048486 (and (inv!71962 (xs!17913 (left!40688 (c!829488 input!585)))) e!3048485))))

(assert (=> b!4876988 (= tp!1372220 (and (inv!71955 (left!40688 (c!829488 input!585))) e!3048486))))

(assert (= (and b!4876988 (is-Node!14603 (left!40688 (c!829488 input!585)))) b!4877362))

(assert (= b!4877363 b!4877364))

(assert (= (and b!4876988 (is-Leaf!24339 (left!40688 (c!829488 input!585)))) b!4877363))

(declare-fun m!5879862 () Bool)

(assert (=> b!4877362 m!5879862))

(declare-fun m!5879864 () Bool)

(assert (=> b!4877362 m!5879864))

(declare-fun m!5879866 () Bool)

(assert (=> b!4877363 m!5879866))

(assert (=> b!4876988 m!5879474))

(declare-fun b!4877365 () Bool)

(declare-fun tp!1372300 () Bool)

(declare-fun tp!1372299 () Bool)

(declare-fun e!3048488 () Bool)

(assert (=> b!4877365 (= e!3048488 (and (inv!71955 (left!40688 (right!41018 (c!829488 input!585)))) tp!1372300 (inv!71955 (right!41018 (right!41018 (c!829488 input!585)))) tp!1372299))))

(declare-fun b!4877367 () Bool)

(declare-fun e!3048487 () Bool)

(declare-fun tp!1372298 () Bool)

(assert (=> b!4877367 (= e!3048487 tp!1372298)))

(declare-fun b!4877366 () Bool)

(assert (=> b!4877366 (= e!3048488 (and (inv!71962 (xs!17913 (right!41018 (c!829488 input!585)))) e!3048487))))

(assert (=> b!4876988 (= tp!1372219 (and (inv!71955 (right!41018 (c!829488 input!585))) e!3048488))))

(assert (= (and b!4876988 (is-Node!14603 (right!41018 (c!829488 input!585)))) b!4877365))

(assert (= b!4877366 b!4877367))

(assert (= (and b!4876988 (is-Leaf!24339 (right!41018 (c!829488 input!585)))) b!4877366))

(declare-fun m!5879868 () Bool)

(assert (=> b!4877365 m!5879868))

(declare-fun m!5879870 () Bool)

(assert (=> b!4877365 m!5879870))

(declare-fun m!5879872 () Bool)

(assert (=> b!4877366 m!5879872))

(assert (=> b!4876988 m!5879476))

(declare-fun b!4877370 () Bool)

(declare-fun b_free!130839 () Bool)

(declare-fun b_next!131629 () Bool)

(assert (=> b!4877370 (= b_free!130839 (not b_next!131629))))

(declare-fun tp!1372304 () Bool)

(declare-fun b_and!343523 () Bool)

(assert (=> b!4877370 (= tp!1372304 b_and!343523)))

(declare-fun b_free!130841 () Bool)

(declare-fun b_next!131631 () Bool)

(assert (=> b!4877370 (= b_free!130841 (not b_next!131631))))

(declare-fun tp!1372303 () Bool)

(declare-fun b_and!343525 () Bool)

(assert (=> b!4877370 (= tp!1372303 b_and!343525)))

(declare-fun e!3048489 () Bool)

(assert (=> b!4877370 (= e!3048489 (and tp!1372304 tp!1372303))))

(declare-fun tp!1372302 () Bool)

(declare-fun e!3048492 () Bool)

(declare-fun b!4877369 () Bool)

(assert (=> b!4877369 (= e!3048492 (and tp!1372302 (inv!71951 (tag!8913 (h!62463 (t!364613 (t!364613 rules!1164))))) (inv!71954 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) e!3048489))))

(declare-fun b!4877368 () Bool)

(declare-fun e!3048491 () Bool)

(declare-fun tp!1372301 () Bool)

(assert (=> b!4877368 (= e!3048491 (and e!3048492 tp!1372301))))

(assert (=> b!4876977 (= tp!1372208 e!3048491)))

(assert (= b!4877369 b!4877370))

(assert (= b!4877368 b!4877369))

(assert (= (and b!4876977 (is-Cons!56015 (t!364613 (t!364613 rules!1164)))) b!4877368))

(declare-fun m!5879874 () Bool)

(assert (=> b!4877369 m!5879874))

(declare-fun m!5879876 () Bool)

(assert (=> b!4877369 m!5879876))

(declare-fun b!4877373 () Bool)

(declare-fun e!3048493 () Bool)

(declare-fun tp!1372307 () Bool)

(assert (=> b!4877373 (= e!3048493 tp!1372307)))

(declare-fun b!4877374 () Bool)

(declare-fun tp!1372305 () Bool)

(declare-fun tp!1372309 () Bool)

(assert (=> b!4877374 (= e!3048493 (and tp!1372305 tp!1372309))))

(declare-fun b!4877371 () Bool)

(assert (=> b!4877371 (= e!3048493 tp_is_empty!35677)))

(declare-fun b!4877372 () Bool)

(declare-fun tp!1372308 () Bool)

(declare-fun tp!1372306 () Bool)

(assert (=> b!4877372 (= e!3048493 (and tp!1372308 tp!1372306))))

(assert (=> b!4877004 (= tp!1372231 e!3048493)))

(assert (= (and b!4877004 (is-ElementMatch!13124 (regOne!26761 (regex!8049 (h!62463 rules!1164))))) b!4877371))

(assert (= (and b!4877004 (is-Concat!21484 (regOne!26761 (regex!8049 (h!62463 rules!1164))))) b!4877372))

(assert (= (and b!4877004 (is-Star!13124 (regOne!26761 (regex!8049 (h!62463 rules!1164))))) b!4877373))

(assert (= (and b!4877004 (is-Union!13124 (regOne!26761 (regex!8049 (h!62463 rules!1164))))) b!4877374))

(declare-fun b!4877377 () Bool)

(declare-fun e!3048494 () Bool)

(declare-fun tp!1372312 () Bool)

(assert (=> b!4877377 (= e!3048494 tp!1372312)))

(declare-fun b!4877378 () Bool)

(declare-fun tp!1372310 () Bool)

(declare-fun tp!1372314 () Bool)

(assert (=> b!4877378 (= e!3048494 (and tp!1372310 tp!1372314))))

(declare-fun b!4877375 () Bool)

(assert (=> b!4877375 (= e!3048494 tp_is_empty!35677)))

(declare-fun b!4877376 () Bool)

(declare-fun tp!1372313 () Bool)

(declare-fun tp!1372311 () Bool)

(assert (=> b!4877376 (= e!3048494 (and tp!1372313 tp!1372311))))

(assert (=> b!4877004 (= tp!1372235 e!3048494)))

(assert (= (and b!4877004 (is-ElementMatch!13124 (regTwo!26761 (regex!8049 (h!62463 rules!1164))))) b!4877375))

(assert (= (and b!4877004 (is-Concat!21484 (regTwo!26761 (regex!8049 (h!62463 rules!1164))))) b!4877376))

(assert (= (and b!4877004 (is-Star!13124 (regTwo!26761 (regex!8049 (h!62463 rules!1164))))) b!4877377))

(assert (= (and b!4877004 (is-Union!13124 (regTwo!26761 (regex!8049 (h!62463 rules!1164))))) b!4877378))

(push 1)

(assert (not b!4877104))

(assert (not b_next!131629))

(assert (not b!4877355))

(assert (not d!1566888))

(assert (not b!4877361))

(assert (not b_next!131623))

(assert (not b!4877291))

(assert (not d!1566802))

(assert (not b!4877093))

(assert (not b!4877290))

(assert (not bm!338585))

(assert (not b!4877339))

(assert (not b_next!131621))

(assert (not b!4877204))

(assert (not b!4877364))

(assert (not b!4877321))

(assert (not b!4877360))

(assert (not b!4877372))

(assert (not b!4877100))

(assert (not b!4877140))

(assert (not b!4877345))

(assert (not b!4877232))

(assert (not b!4877206))

(assert (not b!4877213))

(assert (not b!4877069))

(assert (not b!4877073))

(assert (not b_next!131631))

(assert (not b!4877377))

(assert (not b!4877139))

(assert (not bm!338582))

(assert (not d!1566852))

(assert (not d!1566816))

(assert (not b_next!131613))

(assert (not b!4877106))

(assert b_and!343507)

(assert (not d!1566896))

(assert (not d!1566878))

(assert (not b!4877333))

(assert (not b!4877322))

(assert (not b!4877203))

(assert (not d!1566850))

(assert b_and!343523)

(assert (not b!4877202))

(assert (not b!4877072))

(assert (not b!4877081))

(assert (not b!4877256))

(assert b_and!343515)

(assert (not d!1566824))

(assert (not b!4877101))

(assert (not b!4877257))

(assert (not b!4877138))

(assert (not b!4877198))

(assert (not b!4877237))

(assert (not b!4877141))

(assert (not b!4877293))

(assert (not d!1566856))

(assert (not b!4877070))

(assert (not b!4877332))

(assert (not b!4877366))

(assert (not b!4877295))

(assert (not b!4877235))

(assert (not b!4877199))

(assert (not b!4877357))

(assert (not d!1566858))

(assert (not b!4877236))

(assert (not b!4877136))

(assert (not d!1566844))

(assert (not b!4877349))

(assert (not b!4877356))

(assert (not bm!338588))

(assert (not b!4877244))

(assert (not b!4877288))

(assert (not d!1566864))

(assert (not b!4877378))

(assert (not b!4877352))

(assert (not b!4877068))

(assert (not b!4877340))

(assert (not b!4877353))

(assert (not b!4876988))

(assert (not b!4877099))

(assert (not d!1566862))

(assert (not b!4877334))

(assert (not b!4877075))

(assert (not b!4877297))

(assert (not b!4877231))

(assert (not b!4877376))

(assert (not b!4877365))

(assert (not d!1566854))

(assert (not b!4877092))

(assert (not b!4877369))

(assert (not b!4877348))

(assert (not b!4877308))

(assert (not b!4877368))

(assert (not b!4877289))

(assert (not d!1566898))

(assert (not b!4877243))

(assert (not b!4877362))

(assert (not b!4877238))

(assert (not b!4877367))

(assert (not b!4877233))

(assert (not b!4877374))

(assert b_and!343525)

(assert (not b!4877071))

(assert (not b!4877363))

(assert (not b!4877373))

(assert (not b!4877347))

(assert (not b!4877205))

(assert (not b_next!131615))

(assert (not b!4877239))

(assert (not b!4877351))

(assert (not b!4877224))

(assert (not b!4877201))

(assert b_and!343509)

(assert (not d!1566880))

(assert b_and!343517)

(assert (not b!4877240))

(assert tp_is_empty!35677)

(assert (not b!4877359))

(assert (not bm!338589))

(assert (not d!1566830))

(assert (not d!1566808))

(assert (not d!1566894))

(assert (not b!4877103))

(assert (not b!4877245))

(assert (not b!4877292))

(assert (not d!1566804))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131623))

(assert (not b_next!131621))

(assert (not b_next!131631))

(assert (not b_next!131613))

(assert b_and!343507)

(assert b_and!343523)

(assert b_and!343515)

(assert b_and!343525)

(assert (not b_next!131615))

(assert (not b_next!131629))

(assert b_and!343509)

(assert b_and!343517)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4877538 () Bool)

(declare-fun res!2082087 () Bool)

(declare-fun e!3048578 () Bool)

(assert (=> b!4877538 (=> (not res!2082087) (not e!3048578))))

(declare-fun lt!1998591 () Option!13806)

(assert (=> b!4877538 (= res!2082087 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998591)))) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998591)))))))

(declare-fun b!4877539 () Bool)

(declare-fun e!3048576 () Bool)

(assert (=> b!4877539 (= e!3048576 e!3048578)))

(declare-fun res!2082086 () Bool)

(assert (=> b!4877539 (=> (not res!2082086) (not e!3048578))))

(assert (=> b!4877539 (= res!2082086 (isDefined!10863 lt!1998591))))

(declare-fun b!4877540 () Bool)

(declare-fun e!3048577 () Option!13806)

(declare-fun call!338603 () Option!13806)

(assert (=> b!4877540 (= e!3048577 call!338603)))

(declare-fun b!4877541 () Bool)

(declare-fun res!2082085 () Bool)

(assert (=> b!4877541 (=> (not res!2082085) (not e!3048578))))

(assert (=> b!4877541 (= res!2082085 (= (value!258540 (_1!33258 (get!19251 lt!1998591))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998591)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998591)))))))))

(declare-fun b!4877542 () Bool)

(declare-fun res!2082083 () Bool)

(assert (=> b!4877542 (=> (not res!2082083) (not e!3048578))))

(assert (=> b!4877542 (= res!2082083 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998591)))) (_2!33258 (get!19251 lt!1998591))) lt!1998299))))

(declare-fun b!4877543 () Bool)

(declare-fun res!2082081 () Bool)

(assert (=> b!4877543 (=> (not res!2082081) (not e!3048578))))

(assert (=> b!4877543 (= res!2082081 (< (size!36947 (_2!33258 (get!19251 lt!1998591))) (size!36947 lt!1998299)))))

(declare-fun d!1566950 () Bool)

(assert (=> d!1566950 e!3048576))

(declare-fun res!2082082 () Bool)

(assert (=> d!1566950 (=> res!2082082 e!3048576)))

(assert (=> d!1566950 (= res!2082082 (isEmpty!30014 lt!1998591))))

(assert (=> d!1566950 (= lt!1998591 e!3048577)))

(declare-fun c!829593 () Bool)

(assert (=> d!1566950 (= c!829593 (and (is-Cons!56015 (t!364613 rules!1164)) (is-Nil!56015 (t!364613 (t!364613 rules!1164)))))))

(declare-fun lt!1998590 () Unit!146016)

(declare-fun lt!1998593 () Unit!146016)

(assert (=> d!1566950 (= lt!1998590 lt!1998593)))

(assert (=> d!1566950 (isPrefix!4773 lt!1998299 lt!1998299)))

(assert (=> d!1566950 (= lt!1998593 (lemmaIsPrefixRefl!3170 lt!1998299 lt!1998299))))

(assert (=> d!1566950 (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164))))

(assert (=> d!1566950 (= (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) lt!1998299) lt!1998591)))

(declare-fun bm!338598 () Bool)

(assert (=> bm!338598 (= call!338603 (maxPrefixOneRule!3498 thiss!11460 (h!62463 (t!364613 rules!1164)) lt!1998299))))

(declare-fun b!4877544 () Bool)

(declare-fun res!2082084 () Bool)

(assert (=> b!4877544 (=> (not res!2082084) (not e!3048578))))

(assert (=> b!4877544 (= res!2082084 (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998591)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998591))))))))

(declare-fun b!4877545 () Bool)

(assert (=> b!4877545 (= e!3048578 (contains!19409 (t!364613 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998591)))))))

(declare-fun b!4877546 () Bool)

(declare-fun lt!1998592 () Option!13806)

(declare-fun lt!1998589 () Option!13806)

(assert (=> b!4877546 (= e!3048577 (ite (and (is-None!13805 lt!1998592) (is-None!13805 lt!1998589)) None!13805 (ite (is-None!13805 lt!1998589) lt!1998592 (ite (is-None!13805 lt!1998592) lt!1998589 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998592))) (size!36942 (_1!33258 (v!49747 lt!1998589)))) lt!1998592 lt!1998589)))))))

(assert (=> b!4877546 (= lt!1998592 call!338603)))

(assert (=> b!4877546 (= lt!1998589 (maxPrefix!4556 thiss!11460 (t!364613 (t!364613 rules!1164)) lt!1998299))))

(assert (= (and d!1566950 c!829593) b!4877540))

(assert (= (and d!1566950 (not c!829593)) b!4877546))

(assert (= (or b!4877540 b!4877546) bm!338598))

(assert (= (and d!1566950 (not res!2082082)) b!4877539))

(assert (= (and b!4877539 res!2082086) b!4877538))

(assert (= (and b!4877538 res!2082087) b!4877543))

(assert (= (and b!4877543 res!2082081) b!4877542))

(assert (= (and b!4877542 res!2082083) b!4877541))

(assert (= (and b!4877541 res!2082085) b!4877544))

(assert (= (and b!4877544 res!2082084) b!4877545))

(declare-fun m!5880036 () Bool)

(assert (=> b!4877543 m!5880036))

(declare-fun m!5880038 () Bool)

(assert (=> b!4877543 m!5880038))

(assert (=> b!4877543 m!5879422))

(declare-fun m!5880040 () Bool)

(assert (=> d!1566950 m!5880040))

(assert (=> d!1566950 m!5879746))

(assert (=> d!1566950 m!5879748))

(assert (=> d!1566950 m!5879538))

(assert (=> b!4877538 m!5880036))

(declare-fun m!5880042 () Bool)

(assert (=> b!4877538 m!5880042))

(assert (=> b!4877538 m!5880042))

(declare-fun m!5880044 () Bool)

(assert (=> b!4877538 m!5880044))

(assert (=> b!4877545 m!5880036))

(declare-fun m!5880046 () Bool)

(assert (=> b!4877545 m!5880046))

(assert (=> b!4877544 m!5880036))

(assert (=> b!4877544 m!5880042))

(assert (=> b!4877544 m!5880042))

(assert (=> b!4877544 m!5880044))

(assert (=> b!4877544 m!5880044))

(declare-fun m!5880048 () Bool)

(assert (=> b!4877544 m!5880048))

(declare-fun m!5880050 () Bool)

(assert (=> b!4877539 m!5880050))

(declare-fun m!5880052 () Bool)

(assert (=> bm!338598 m!5880052))

(assert (=> b!4877542 m!5880036))

(assert (=> b!4877542 m!5880042))

(assert (=> b!4877542 m!5880042))

(assert (=> b!4877542 m!5880044))

(assert (=> b!4877542 m!5880044))

(declare-fun m!5880054 () Bool)

(assert (=> b!4877542 m!5880054))

(assert (=> b!4877541 m!5880036))

(declare-fun m!5880056 () Bool)

(assert (=> b!4877541 m!5880056))

(assert (=> b!4877541 m!5880056))

(declare-fun m!5880058 () Bool)

(assert (=> b!4877541 m!5880058))

(declare-fun m!5880060 () Bool)

(assert (=> b!4877546 m!5880060))

(assert (=> b!4877240 d!1566950))

(declare-fun d!1566952 () Bool)

(assert (=> d!1566952 (= (isDefined!10863 lt!1998494) (not (isEmpty!30014 lt!1998494)))))

(declare-fun bs!1175161 () Bool)

(assert (= bs!1175161 d!1566952))

(assert (=> bs!1175161 m!5879700))

(assert (=> b!4877199 d!1566952))

(declare-fun bs!1175162 () Bool)

(declare-fun d!1566954 () Bool)

(assert (= bs!1175162 (and d!1566954 d!1566888)))

(declare-fun lambda!243674 () Int)

(assert (=> bs!1175162 (= (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (= lambda!243674 lambda!243661))))

(assert (=> d!1566954 true))

(assert (=> d!1566954 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (dynLambda!22528 order!25289 lambda!243674))))

(assert (=> d!1566954 (= (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (Forall2!1263 lambda!243674))))

(declare-fun bs!1175163 () Bool)

(assert (= bs!1175163 d!1566954))

(declare-fun m!5880062 () Bool)

(assert (=> bs!1175163 m!5880062))

(assert (=> b!4877100 d!1566954))

(declare-fun d!1566956 () Bool)

(declare-fun c!829594 () Bool)

(assert (=> d!1566956 (= c!829594 (is-Node!14603 (left!40688 (left!40688 (c!829488 input!585)))))))

(declare-fun e!3048579 () Bool)

(assert (=> d!1566956 (= (inv!71955 (left!40688 (left!40688 (c!829488 input!585)))) e!3048579)))

(declare-fun b!4877547 () Bool)

(assert (=> b!4877547 (= e!3048579 (inv!71960 (left!40688 (left!40688 (c!829488 input!585)))))))

(declare-fun b!4877548 () Bool)

(declare-fun e!3048580 () Bool)

(assert (=> b!4877548 (= e!3048579 e!3048580)))

(declare-fun res!2082088 () Bool)

(assert (=> b!4877548 (= res!2082088 (not (is-Leaf!24339 (left!40688 (left!40688 (c!829488 input!585))))))))

(assert (=> b!4877548 (=> res!2082088 e!3048580)))

(declare-fun b!4877549 () Bool)

(assert (=> b!4877549 (= e!3048580 (inv!71961 (left!40688 (left!40688 (c!829488 input!585)))))))

(assert (= (and d!1566956 c!829594) b!4877547))

(assert (= (and d!1566956 (not c!829594)) b!4877548))

(assert (= (and b!4877548 (not res!2082088)) b!4877549))

(declare-fun m!5880064 () Bool)

(assert (=> b!4877547 m!5880064))

(declare-fun m!5880066 () Bool)

(assert (=> b!4877549 m!5880066))

(assert (=> b!4877362 d!1566956))

(declare-fun d!1566958 () Bool)

(declare-fun c!829595 () Bool)

(assert (=> d!1566958 (= c!829595 (is-Node!14603 (right!41018 (left!40688 (c!829488 input!585)))))))

(declare-fun e!3048581 () Bool)

(assert (=> d!1566958 (= (inv!71955 (right!41018 (left!40688 (c!829488 input!585)))) e!3048581)))

(declare-fun b!4877550 () Bool)

(assert (=> b!4877550 (= e!3048581 (inv!71960 (right!41018 (left!40688 (c!829488 input!585)))))))

(declare-fun b!4877551 () Bool)

(declare-fun e!3048582 () Bool)

(assert (=> b!4877551 (= e!3048581 e!3048582)))

(declare-fun res!2082089 () Bool)

(assert (=> b!4877551 (= res!2082089 (not (is-Leaf!24339 (right!41018 (left!40688 (c!829488 input!585))))))))

(assert (=> b!4877551 (=> res!2082089 e!3048582)))

(declare-fun b!4877552 () Bool)

(assert (=> b!4877552 (= e!3048582 (inv!71961 (right!41018 (left!40688 (c!829488 input!585)))))))

(assert (= (and d!1566958 c!829595) b!4877550))

(assert (= (and d!1566958 (not c!829595)) b!4877551))

(assert (= (and b!4877551 (not res!2082089)) b!4877552))

(declare-fun m!5880068 () Bool)

(assert (=> b!4877550 m!5880068))

(declare-fun m!5880070 () Bool)

(assert (=> b!4877552 m!5880070))

(assert (=> b!4877362 d!1566958))

(assert (=> b!4876988 d!1566826))

(assert (=> b!4876988 d!1566828))

(declare-fun d!1566960 () Bool)

(assert (=> d!1566960 (= (get!19251 lt!1998494) (v!49747 lt!1998494))))

(assert (=> b!4877201 d!1566960))

(declare-fun d!1566962 () Bool)

(declare-fun dynLambda!22529 (Int BalanceConc!28648) TokenValue!8359)

(assert (=> d!1566962 (= (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494))))) (dynLambda!22529 (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun b_lambda!193937 () Bool)

(assert (=> (not b_lambda!193937) (not d!1566962)))

(declare-fun t!364631 () Bool)

(declare-fun tb!258315 () Bool)

(assert (=> (and b!4876841 (= (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364631) tb!258315))

(declare-fun result!321562 () Bool)

(declare-fun inv!21 (TokenValue!8359) Bool)

(assert (=> tb!258315 (= result!321562 (inv!21 (dynLambda!22529 (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun m!5880072 () Bool)

(assert (=> tb!258315 m!5880072))

(assert (=> d!1566962 t!364631))

(declare-fun b_and!343531 () Bool)

(assert (= b_and!343507 (and (=> t!364631 result!321562) b_and!343531)))

(declare-fun t!364633 () Bool)

(declare-fun tb!258317 () Bool)

(assert (=> (and b!4876979 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364633) tb!258317))

(declare-fun result!321566 () Bool)

(assert (= result!321566 result!321562))

(assert (=> d!1566962 t!364633))

(declare-fun b_and!343533 () Bool)

(assert (= b_and!343515 (and (=> t!364633 result!321566) b_and!343533)))

(declare-fun t!364635 () Bool)

(declare-fun tb!258319 () Bool)

(assert (=> (and b!4877370 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364635) tb!258319))

(declare-fun result!321568 () Bool)

(assert (= result!321568 result!321562))

(assert (=> d!1566962 t!364635))

(declare-fun b_and!343535 () Bool)

(assert (= b_and!343523 (and (=> t!364635 result!321568) b_and!343535)))

(assert (=> d!1566962 m!5879714))

(declare-fun m!5880074 () Bool)

(assert (=> d!1566962 m!5880074))

(assert (=> b!4877201 d!1566962))

(declare-fun d!1566964 () Bool)

(declare-fun fromListB!2686 (List!56136) BalanceConc!28648)

(assert (=> d!1566964 (= (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494)))) (fromListB!2686 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494)))))))

(declare-fun bs!1175164 () Bool)

(assert (= bs!1175164 d!1566964))

(declare-fun m!5880076 () Bool)

(assert (=> bs!1175164 m!5880076))

(assert (=> b!4877201 d!1566964))

(declare-fun b!4877555 () Bool)

(declare-fun e!3048586 () tuple2!59902)

(assert (=> b!4877555 (= e!3048586 (tuple2!59903 Nil!56014 (_2!33258 (v!49747 lt!1998510))))))

(declare-fun d!1566966 () Bool)

(declare-fun e!3048587 () Bool)

(assert (=> d!1566966 e!3048587))

(declare-fun c!829597 () Bool)

(declare-fun lt!1998596 () tuple2!59902)

(assert (=> d!1566966 (= c!829597 (> (size!36949 (_1!33254 lt!1998596)) 0))))

(assert (=> d!1566966 (= lt!1998596 e!3048586)))

(declare-fun c!829596 () Bool)

(declare-fun lt!1998595 () Option!13806)

(assert (=> d!1566966 (= c!829596 (is-Some!13805 lt!1998595))))

(assert (=> d!1566966 (= lt!1998595 (maxPrefix!4556 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998510))))))

(assert (=> d!1566966 (= (lexList!2112 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998510))) lt!1998596)))

(declare-fun b!4877556 () Bool)

(assert (=> b!4877556 (= e!3048587 (= (_2!33254 lt!1998596) (_2!33258 (v!49747 lt!1998510))))))

(declare-fun b!4877557 () Bool)

(declare-fun e!3048588 () Bool)

(assert (=> b!4877557 (= e!3048587 e!3048588)))

(declare-fun res!2082090 () Bool)

(assert (=> b!4877557 (= res!2082090 (< (size!36947 (_2!33254 lt!1998596)) (size!36947 (_2!33258 (v!49747 lt!1998510)))))))

(assert (=> b!4877557 (=> (not res!2082090) (not e!3048588))))

(declare-fun b!4877558 () Bool)

(assert (=> b!4877558 (= e!3048588 (not (isEmpty!30008 (_1!33254 lt!1998596))))))

(declare-fun b!4877559 () Bool)

(declare-fun lt!1998594 () tuple2!59902)

(assert (=> b!4877559 (= e!3048586 (tuple2!59903 (Cons!56014 (_1!33258 (v!49747 lt!1998595)) (_1!33254 lt!1998594)) (_2!33254 lt!1998594)))))

(assert (=> b!4877559 (= lt!1998594 (lexList!2112 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998595))))))

(assert (= (and d!1566966 c!829596) b!4877559))

(assert (= (and d!1566966 (not c!829596)) b!4877555))

(assert (= (and d!1566966 c!829597) b!4877557))

(assert (= (and d!1566966 (not c!829597)) b!4877556))

(assert (= (and b!4877557 res!2082090) b!4877558))

(declare-fun m!5880078 () Bool)

(assert (=> d!1566966 m!5880078))

(declare-fun m!5880080 () Bool)

(assert (=> d!1566966 m!5880080))

(declare-fun m!5880082 () Bool)

(assert (=> b!4877557 m!5880082))

(declare-fun m!5880084 () Bool)

(assert (=> b!4877557 m!5880084))

(declare-fun m!5880086 () Bool)

(assert (=> b!4877558 m!5880086))

(declare-fun m!5880088 () Bool)

(assert (=> b!4877559 m!5880088))

(assert (=> b!4877245 d!1566966))

(declare-fun d!1566968 () Bool)

(declare-fun lt!1998597 () Int)

(assert (=> d!1566968 (>= lt!1998597 0)))

(declare-fun e!3048589 () Int)

(assert (=> d!1566968 (= lt!1998597 e!3048589)))

(declare-fun c!829598 () Bool)

(assert (=> d!1566968 (= c!829598 (is-Nil!56012 (_2!33254 lt!1998511)))))

(assert (=> d!1566968 (= (size!36947 (_2!33254 lt!1998511)) lt!1998597)))

(declare-fun b!4877560 () Bool)

(assert (=> b!4877560 (= e!3048589 0)))

(declare-fun b!4877561 () Bool)

(assert (=> b!4877561 (= e!3048589 (+ 1 (size!36947 (t!364610 (_2!33254 lt!1998511)))))))

(assert (= (and d!1566968 c!829598) b!4877560))

(assert (= (and d!1566968 (not c!829598)) b!4877561))

(declare-fun m!5880090 () Bool)

(assert (=> b!4877561 m!5880090))

(assert (=> b!4877243 d!1566968))

(declare-fun d!1566970 () Bool)

(declare-fun lt!1998598 () Int)

(assert (=> d!1566970 (>= lt!1998598 0)))

(declare-fun e!3048590 () Int)

(assert (=> d!1566970 (= lt!1998598 e!3048590)))

(declare-fun c!829599 () Bool)

(assert (=> d!1566970 (= c!829599 (is-Nil!56012 (_2!33258 (v!49747 lt!1998358))))))

(assert (=> d!1566970 (= (size!36947 (_2!33258 (v!49747 lt!1998358))) lt!1998598)))

(declare-fun b!4877562 () Bool)

(assert (=> b!4877562 (= e!3048590 0)))

(declare-fun b!4877563 () Bool)

(assert (=> b!4877563 (= e!3048590 (+ 1 (size!36947 (t!364610 (_2!33258 (v!49747 lt!1998358))))))))

(assert (= (and d!1566970 c!829599) b!4877562))

(assert (= (and d!1566970 (not c!829599)) b!4877563))

(declare-fun m!5880092 () Bool)

(assert (=> b!4877563 m!5880092))

(assert (=> b!4877243 d!1566970))

(declare-fun b!4877565 () Bool)

(declare-fun e!3048591 () List!56136)

(declare-fun e!3048592 () List!56136)

(assert (=> b!4877565 (= e!3048591 e!3048592)))

(declare-fun c!829601 () Bool)

(assert (=> b!4877565 (= c!829601 (is-Leaf!24339 (c!829488 (_2!33255 (get!19250 lt!1998330)))))))

(declare-fun b!4877567 () Bool)

(assert (=> b!4877567 (= e!3048592 (++!12207 (list!17547 (left!40688 (c!829488 (_2!33255 (get!19250 lt!1998330))))) (list!17547 (right!41018 (c!829488 (_2!33255 (get!19250 lt!1998330)))))))))

(declare-fun b!4877564 () Bool)

(assert (=> b!4877564 (= e!3048591 Nil!56012)))

(declare-fun b!4877566 () Bool)

(assert (=> b!4877566 (= e!3048592 (list!17552 (xs!17913 (c!829488 (_2!33255 (get!19250 lt!1998330))))))))

(declare-fun d!1566972 () Bool)

(declare-fun c!829600 () Bool)

(assert (=> d!1566972 (= c!829600 (is-Empty!14603 (c!829488 (_2!33255 (get!19250 lt!1998330)))))))

(assert (=> d!1566972 (= (list!17547 (c!829488 (_2!33255 (get!19250 lt!1998330)))) e!3048591)))

(assert (= (and d!1566972 c!829600) b!4877564))

(assert (= (and d!1566972 (not c!829600)) b!4877565))

(assert (= (and b!4877565 c!829601) b!4877566))

(assert (= (and b!4877565 (not c!829601)) b!4877567))

(declare-fun m!5880094 () Bool)

(assert (=> b!4877567 m!5880094))

(declare-fun m!5880096 () Bool)

(assert (=> b!4877567 m!5880096))

(assert (=> b!4877567 m!5880094))

(assert (=> b!4877567 m!5880096))

(declare-fun m!5880098 () Bool)

(assert (=> b!4877567 m!5880098))

(declare-fun m!5880100 () Bool)

(assert (=> b!4877566 m!5880100))

(assert (=> d!1566852 d!1566972))

(declare-fun d!1566974 () Bool)

(declare-fun res!2082095 () Bool)

(declare-fun e!3048597 () Bool)

(assert (=> d!1566974 (=> res!2082095 e!3048597)))

(assert (=> d!1566974 (= res!2082095 (is-Nil!56015 rules!1164))))

(assert (=> d!1566974 (= (forall!13057 rules!1164 lambda!243664) e!3048597)))

(declare-fun b!4877572 () Bool)

(declare-fun e!3048598 () Bool)

(assert (=> b!4877572 (= e!3048597 e!3048598)))

(declare-fun res!2082096 () Bool)

(assert (=> b!4877572 (=> (not res!2082096) (not e!3048598))))

(declare-fun dynLambda!22530 (Int Rule!15898) Bool)

(assert (=> b!4877572 (= res!2082096 (dynLambda!22530 lambda!243664 (h!62463 rules!1164)))))

(declare-fun b!4877573 () Bool)

(assert (=> b!4877573 (= e!3048598 (forall!13057 (t!364613 rules!1164) lambda!243664))))

(assert (= (and d!1566974 (not res!2082095)) b!4877572))

(assert (= (and b!4877572 res!2082096) b!4877573))

(declare-fun b_lambda!193939 () Bool)

(assert (=> (not b_lambda!193939) (not b!4877572)))

(declare-fun m!5880102 () Bool)

(assert (=> b!4877572 m!5880102))

(declare-fun m!5880104 () Bool)

(assert (=> b!4877573 m!5880104))

(assert (=> d!1566896 d!1566974))

(declare-fun d!1566976 () Bool)

(assert (=> d!1566976 (= (isEmpty!30010 lt!1998330) (not (is-Some!13803 lt!1998330)))))

(assert (=> d!1566804 d!1566976))

(declare-fun d!1566978 () Bool)

(declare-fun lt!1998599 () Int)

(assert (=> d!1566978 (>= lt!1998599 0)))

(declare-fun e!3048599 () Int)

(assert (=> d!1566978 (= lt!1998599 e!3048599)))

(declare-fun c!829602 () Bool)

(assert (=> d!1566978 (= c!829602 (is-Nil!56012 (_2!33258 (get!19251 lt!1998494))))))

(assert (=> d!1566978 (= (size!36947 (_2!33258 (get!19251 lt!1998494))) lt!1998599)))

(declare-fun b!4877574 () Bool)

(assert (=> b!4877574 (= e!3048599 0)))

(declare-fun b!4877575 () Bool)

(assert (=> b!4877575 (= e!3048599 (+ 1 (size!36947 (t!364610 (_2!33258 (get!19251 lt!1998494))))))))

(assert (= (and d!1566978 c!829602) b!4877574))

(assert (= (and d!1566978 (not c!829602)) b!4877575))

(declare-fun m!5880106 () Bool)

(assert (=> b!4877575 m!5880106))

(assert (=> b!4877203 d!1566978))

(assert (=> b!4877203 d!1566960))

(assert (=> b!4877203 d!1566806))

(declare-fun d!1566980 () Bool)

(declare-fun lt!1998617 () Option!13806)

(assert (=> d!1566980 (= lt!1998617 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)))))

(declare-fun e!3048604 () Option!13806)

(assert (=> d!1566980 (= lt!1998617 e!3048604)))

(declare-fun c!829605 () Bool)

(declare-fun lt!1998615 () tuple2!59916)

(assert (=> d!1566980 (= c!829605 (isEmpty!30012 (_1!33261 lt!1998615)))))

(declare-fun findLongestMatchWithZipper!77 (Regex!13124 List!56136) tuple2!59916)

(assert (=> d!1566980 (= lt!1998615 (findLongestMatchWithZipper!77 (regex!8049 (h!62463 rules!1164)) (list!17543 input!585)))))

(assert (=> d!1566980 (ruleValid!3637 thiss!11460 (h!62463 rules!1164))))

(assert (=> d!1566980 (= (maxPrefixOneRuleZipper!232 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)) lt!1998617)))

(declare-fun b!4877582 () Bool)

(assert (=> b!4877582 (= e!3048604 None!13805)))

(declare-fun b!4877583 () Bool)

(assert (=> b!4877583 (= e!3048604 (Some!13805 (tuple2!59911 (Token!14683 (apply!13509 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998615))) (h!62463 rules!1164) (size!36947 (_1!33261 lt!1998615)) (_1!33261 lt!1998615)) (_2!33261 lt!1998615))))))

(declare-fun lt!1998612 () Unit!146016)

(assert (=> b!4877583 (= lt!1998612 (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 rules!1164)) (list!17543 input!585)))))

(declare-fun res!2082099 () Bool)

(assert (=> b!4877583 (= res!2082099 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) (list!17543 input!585) (list!17543 input!585) (size!36947 (list!17543 input!585))))))))

(declare-fun e!3048605 () Bool)

(assert (=> b!4877583 (=> res!2082099 e!3048605)))

(assert (=> b!4877583 e!3048605))

(declare-fun lt!1998614 () Unit!146016)

(assert (=> b!4877583 (= lt!1998614 lt!1998612)))

(declare-fun lt!1998616 () Unit!146016)

(assert (=> b!4877583 (= lt!1998616 (lemmaInv!1211 (transformation!8049 (h!62463 rules!1164))))))

(declare-fun lt!1998613 () Unit!146016)

(declare-fun lemmaSemiInverse!2559 (TokenValueInjection!16026 BalanceConc!28648) Unit!146016)

(assert (=> b!4877583 (= lt!1998613 (lemmaSemiInverse!2559 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998615))))))

(declare-fun b!4877584 () Bool)

(assert (=> b!4877584 (= e!3048605 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) (list!17543 input!585) (list!17543 input!585) (size!36947 (list!17543 input!585))))))))

(assert (= (and d!1566980 c!829605) b!4877582))

(assert (= (and d!1566980 (not c!829605)) b!4877583))

(assert (= (and b!4877583 (not res!2082099)) b!4877584))

(assert (=> d!1566980 m!5879338))

(assert (=> d!1566980 m!5879614))

(declare-fun m!5880108 () Bool)

(assert (=> d!1566980 m!5880108))

(assert (=> d!1566980 m!5879338))

(declare-fun m!5880110 () Bool)

(assert (=> d!1566980 m!5880110))

(assert (=> d!1566980 m!5879640))

(declare-fun m!5880112 () Bool)

(assert (=> b!4877583 m!5880112))

(assert (=> b!4877583 m!5879338))

(assert (=> b!4877583 m!5879408))

(assert (=> b!4877583 m!5879604))

(assert (=> b!4877583 m!5879338))

(assert (=> b!4877583 m!5879338))

(assert (=> b!4877583 m!5879408))

(declare-fun m!5880114 () Bool)

(assert (=> b!4877583 m!5880114))

(declare-fun m!5880116 () Bool)

(assert (=> b!4877583 m!5880116))

(declare-fun m!5880118 () Bool)

(assert (=> b!4877583 m!5880118))

(assert (=> b!4877583 m!5879338))

(declare-fun m!5880120 () Bool)

(assert (=> b!4877583 m!5880120))

(assert (=> b!4877583 m!5880116))

(declare-fun m!5880122 () Bool)

(assert (=> b!4877583 m!5880122))

(assert (=> b!4877583 m!5879604))

(declare-fun m!5880124 () Bool)

(assert (=> b!4877583 m!5880124))

(assert (=> b!4877583 m!5879638))

(assert (=> b!4877583 m!5880116))

(assert (=> b!4877584 m!5879604))

(assert (=> b!4877584 m!5879338))

(assert (=> b!4877584 m!5879408))

(assert (=> b!4877584 m!5879604))

(assert (=> b!4877584 m!5879338))

(assert (=> b!4877584 m!5879338))

(assert (=> b!4877584 m!5879408))

(assert (=> b!4877584 m!5880114))

(declare-fun m!5880126 () Bool)

(assert (=> b!4877584 m!5880126))

(assert (=> bm!338585 d!1566980))

(declare-fun b!4877585 () Bool)

(declare-fun res!2082106 () Bool)

(declare-fun e!3048608 () Bool)

(assert (=> b!4877585 (=> (not res!2082106) (not e!3048608))))

(declare-fun lt!1998620 () Option!13806)

(assert (=> b!4877585 (= res!2082106 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998620)))) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998620)))))))

(declare-fun b!4877586 () Bool)

(declare-fun e!3048606 () Bool)

(assert (=> b!4877586 (= e!3048606 e!3048608)))

(declare-fun res!2082105 () Bool)

(assert (=> b!4877586 (=> (not res!2082105) (not e!3048608))))

(assert (=> b!4877586 (= res!2082105 (isDefined!10863 lt!1998620))))

(declare-fun b!4877587 () Bool)

(declare-fun e!3048607 () Option!13806)

(declare-fun call!338604 () Option!13806)

(assert (=> b!4877587 (= e!3048607 call!338604)))

(declare-fun b!4877588 () Bool)

(declare-fun res!2082104 () Bool)

(assert (=> b!4877588 (=> (not res!2082104) (not e!3048608))))

(assert (=> b!4877588 (= res!2082104 (= (value!258540 (_1!33258 (get!19251 lt!1998620))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998620)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998620)))))))))

(declare-fun b!4877589 () Bool)

(declare-fun res!2082102 () Bool)

(assert (=> b!4877589 (=> (not res!2082102) (not e!3048608))))

(assert (=> b!4877589 (= res!2082102 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998620)))) (_2!33258 (get!19251 lt!1998620))) (list!17543 input!585)))))

(declare-fun b!4877590 () Bool)

(declare-fun res!2082100 () Bool)

(assert (=> b!4877590 (=> (not res!2082100) (not e!3048608))))

(assert (=> b!4877590 (= res!2082100 (< (size!36947 (_2!33258 (get!19251 lt!1998620))) (size!36947 (list!17543 input!585))))))

(declare-fun d!1566982 () Bool)

(assert (=> d!1566982 e!3048606))

(declare-fun res!2082101 () Bool)

(assert (=> d!1566982 (=> res!2082101 e!3048606)))

(assert (=> d!1566982 (= res!2082101 (isEmpty!30014 lt!1998620))))

(assert (=> d!1566982 (= lt!1998620 e!3048607)))

(declare-fun c!829606 () Bool)

(assert (=> d!1566982 (= c!829606 (and (is-Cons!56015 (t!364613 rules!1164)) (is-Nil!56015 (t!364613 (t!364613 rules!1164)))))))

(declare-fun lt!1998619 () Unit!146016)

(declare-fun lt!1998622 () Unit!146016)

(assert (=> d!1566982 (= lt!1998619 lt!1998622)))

(assert (=> d!1566982 (isPrefix!4773 (list!17543 input!585) (list!17543 input!585))))

(assert (=> d!1566982 (= lt!1998622 (lemmaIsPrefixRefl!3170 (list!17543 input!585) (list!17543 input!585)))))

(assert (=> d!1566982 (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164))))

(assert (=> d!1566982 (= (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)) lt!1998620)))

(declare-fun bm!338599 () Bool)

(assert (=> bm!338599 (= call!338604 (maxPrefixOneRule!3498 thiss!11460 (h!62463 (t!364613 rules!1164)) (list!17543 input!585)))))

(declare-fun b!4877591 () Bool)

(declare-fun res!2082103 () Bool)

(assert (=> b!4877591 (=> (not res!2082103) (not e!3048608))))

(assert (=> b!4877591 (= res!2082103 (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998620)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998620))))))))

(declare-fun b!4877592 () Bool)

(assert (=> b!4877592 (= e!3048608 (contains!19409 (t!364613 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998620)))))))

(declare-fun b!4877593 () Bool)

(declare-fun lt!1998621 () Option!13806)

(declare-fun lt!1998618 () Option!13806)

(assert (=> b!4877593 (= e!3048607 (ite (and (is-None!13805 lt!1998621) (is-None!13805 lt!1998618)) None!13805 (ite (is-None!13805 lt!1998618) lt!1998621 (ite (is-None!13805 lt!1998621) lt!1998618 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998621))) (size!36942 (_1!33258 (v!49747 lt!1998618)))) lt!1998621 lt!1998618)))))))

(assert (=> b!4877593 (= lt!1998621 call!338604)))

(assert (=> b!4877593 (= lt!1998618 (maxPrefix!4556 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585)))))

(assert (= (and d!1566982 c!829606) b!4877587))

(assert (= (and d!1566982 (not c!829606)) b!4877593))

(assert (= (or b!4877587 b!4877593) bm!338599))

(assert (= (and d!1566982 (not res!2082101)) b!4877586))

(assert (= (and b!4877586 res!2082105) b!4877585))

(assert (= (and b!4877585 res!2082106) b!4877590))

(assert (= (and b!4877590 res!2082100) b!4877589))

(assert (= (and b!4877589 res!2082102) b!4877588))

(assert (= (and b!4877588 res!2082104) b!4877591))

(assert (= (and b!4877591 res!2082103) b!4877592))

(declare-fun m!5880128 () Bool)

(assert (=> b!4877590 m!5880128))

(declare-fun m!5880130 () Bool)

(assert (=> b!4877590 m!5880130))

(assert (=> b!4877590 m!5879338))

(assert (=> b!4877590 m!5879408))

(declare-fun m!5880132 () Bool)

(assert (=> d!1566982 m!5880132))

(assert (=> d!1566982 m!5879338))

(assert (=> d!1566982 m!5879338))

(assert (=> d!1566982 m!5879564))

(assert (=> d!1566982 m!5879338))

(assert (=> d!1566982 m!5879338))

(assert (=> d!1566982 m!5879566))

(assert (=> d!1566982 m!5879538))

(assert (=> b!4877585 m!5880128))

(declare-fun m!5880134 () Bool)

(assert (=> b!4877585 m!5880134))

(assert (=> b!4877585 m!5880134))

(declare-fun m!5880136 () Bool)

(assert (=> b!4877585 m!5880136))

(assert (=> b!4877592 m!5880128))

(declare-fun m!5880138 () Bool)

(assert (=> b!4877592 m!5880138))

(assert (=> b!4877591 m!5880128))

(assert (=> b!4877591 m!5880134))

(assert (=> b!4877591 m!5880134))

(assert (=> b!4877591 m!5880136))

(assert (=> b!4877591 m!5880136))

(declare-fun m!5880140 () Bool)

(assert (=> b!4877591 m!5880140))

(declare-fun m!5880142 () Bool)

(assert (=> b!4877586 m!5880142))

(assert (=> bm!338599 m!5879338))

(declare-fun m!5880144 () Bool)

(assert (=> bm!338599 m!5880144))

(assert (=> b!4877589 m!5880128))

(assert (=> b!4877589 m!5880134))

(assert (=> b!4877589 m!5880134))

(assert (=> b!4877589 m!5880136))

(assert (=> b!4877589 m!5880136))

(declare-fun m!5880146 () Bool)

(assert (=> b!4877589 m!5880146))

(assert (=> b!4877588 m!5880128))

(declare-fun m!5880148 () Bool)

(assert (=> b!4877588 m!5880148))

(assert (=> b!4877588 m!5880148))

(declare-fun m!5880150 () Bool)

(assert (=> b!4877588 m!5880150))

(assert (=> b!4877593 m!5879338))

(declare-fun m!5880152 () Bool)

(assert (=> b!4877593 m!5880152))

(assert (=> b!4877206 d!1566982))

(declare-fun d!1566984 () Bool)

(declare-fun lt!1998625 () Bool)

(assert (=> d!1566984 (= lt!1998625 (isEmpty!30012 (list!17547 (right!41018 (c!829488 input!585)))))))

(assert (=> d!1566984 (= lt!1998625 (= (size!36948 (right!41018 (c!829488 input!585))) 0))))

(assert (=> d!1566984 (= (isEmpty!30018 (right!41018 (c!829488 input!585))) lt!1998625)))

(declare-fun bs!1175165 () Bool)

(assert (= bs!1175165 d!1566984))

(assert (=> bs!1175165 m!5879784))

(assert (=> bs!1175165 m!5879784))

(declare-fun m!5880154 () Bool)

(assert (=> bs!1175165 m!5880154))

(assert (=> bs!1175165 m!5879728))

(assert (=> b!4877290 d!1566984))

(declare-fun d!1566986 () Bool)

(assert (=> d!1566986 (= (get!19250 lt!1998443) (v!49745 lt!1998443))))

(assert (=> b!4877136 d!1566986))

(declare-fun d!1566988 () Bool)

(assert (=> d!1566988 (= (get!19251 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585))) (v!49747 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585))))))

(assert (=> b!4877136 d!1566988))

(declare-fun b!4877612 () Bool)

(declare-fun res!2082121 () Bool)

(declare-fun e!3048619 () Bool)

(assert (=> b!4877612 (=> (not res!2082121) (not e!3048619))))

(declare-fun lt!1998636 () Option!13806)

(assert (=> b!4877612 (= res!2082121 (= (value!258540 (_1!33258 (get!19251 lt!1998636))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998636)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998636)))))))))

(declare-fun b!4877614 () Bool)

(declare-fun res!2082127 () Bool)

(assert (=> b!4877614 (=> (not res!2082127) (not e!3048619))))

(assert (=> b!4877614 (= res!2082127 (< (size!36947 (_2!33258 (get!19251 lt!1998636))) (size!36947 (list!17543 input!585))))))

(declare-fun b!4877615 () Bool)

(declare-fun e!3048618 () Option!13806)

(assert (=> b!4877615 (= e!3048618 None!13805)))

(declare-fun b!4877616 () Bool)

(declare-fun e!3048620 () Bool)

(assert (=> b!4877616 (= e!3048620 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) (list!17543 input!585) (list!17543 input!585) (size!36947 (list!17543 input!585))))))))

(declare-fun b!4877617 () Bool)

(declare-fun res!2082123 () Bool)

(assert (=> b!4877617 (=> (not res!2082123) (not e!3048619))))

(assert (=> b!4877617 (= res!2082123 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998636)))) (_2!33258 (get!19251 lt!1998636))) (list!17543 input!585)))))

(declare-fun b!4877618 () Bool)

(declare-fun lt!1998637 () tuple2!59916)

(assert (=> b!4877618 (= e!3048618 (Some!13805 (tuple2!59911 (Token!14683 (apply!13509 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998637))) (h!62463 rules!1164) (size!36943 (seqFromList!5905 (_1!33261 lt!1998637))) (_1!33261 lt!1998637)) (_2!33261 lt!1998637))))))

(declare-fun lt!1998640 () Unit!146016)

(assert (=> b!4877618 (= lt!1998640 (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 rules!1164)) (list!17543 input!585)))))

(declare-fun res!2082126 () Bool)

(assert (=> b!4877618 (= res!2082126 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) (list!17543 input!585) (list!17543 input!585) (size!36947 (list!17543 input!585))))))))

(assert (=> b!4877618 (=> res!2082126 e!3048620)))

(assert (=> b!4877618 e!3048620))

(declare-fun lt!1998638 () Unit!146016)

(assert (=> b!4877618 (= lt!1998638 lt!1998640)))

(declare-fun lt!1998639 () Unit!146016)

(assert (=> b!4877618 (= lt!1998639 (lemmaSemiInverse!2559 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998637))))))

(declare-fun b!4877619 () Bool)

(declare-fun e!3048617 () Bool)

(assert (=> b!4877619 (= e!3048617 e!3048619)))

(declare-fun res!2082125 () Bool)

(assert (=> b!4877619 (=> (not res!2082125) (not e!3048619))))

(assert (=> b!4877619 (= res!2082125 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998636))))))))

(declare-fun b!4877620 () Bool)

(assert (=> b!4877620 (= e!3048619 (= (size!36942 (_1!33258 (get!19251 lt!1998636))) (size!36947 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998636))))))))

(declare-fun b!4877613 () Bool)

(declare-fun res!2082124 () Bool)

(assert (=> b!4877613 (=> (not res!2082124) (not e!3048619))))

(assert (=> b!4877613 (= res!2082124 (= (rule!11205 (_1!33258 (get!19251 lt!1998636))) (h!62463 rules!1164)))))

(declare-fun d!1566990 () Bool)

(assert (=> d!1566990 e!3048617))

(declare-fun res!2082122 () Bool)

(assert (=> d!1566990 (=> res!2082122 e!3048617)))

(assert (=> d!1566990 (= res!2082122 (isEmpty!30014 lt!1998636))))

(assert (=> d!1566990 (= lt!1998636 e!3048618)))

(declare-fun c!829609 () Bool)

(assert (=> d!1566990 (= c!829609 (isEmpty!30012 (_1!33261 lt!1998637)))))

(declare-fun findLongestMatch!1642 (Regex!13124 List!56136) tuple2!59916)

(assert (=> d!1566990 (= lt!1998637 (findLongestMatch!1642 (regex!8049 (h!62463 rules!1164)) (list!17543 input!585)))))

(assert (=> d!1566990 (ruleValid!3637 thiss!11460 (h!62463 rules!1164))))

(assert (=> d!1566990 (= (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)) lt!1998636)))

(assert (= (and d!1566990 c!829609) b!4877615))

(assert (= (and d!1566990 (not c!829609)) b!4877618))

(assert (= (and b!4877618 (not res!2082126)) b!4877616))

(assert (= (and d!1566990 (not res!2082122)) b!4877619))

(assert (= (and b!4877619 res!2082125) b!4877617))

(assert (= (and b!4877617 res!2082123) b!4877614))

(assert (= (and b!4877614 res!2082127) b!4877613))

(assert (= (and b!4877613 res!2082124) b!4877612))

(assert (= (and b!4877612 res!2082121) b!4877620))

(declare-fun m!5880156 () Bool)

(assert (=> b!4877613 m!5880156))

(assert (=> b!4877618 m!5879338))

(assert (=> b!4877618 m!5879408))

(assert (=> b!4877618 m!5879604))

(assert (=> b!4877618 m!5879338))

(assert (=> b!4877618 m!5879338))

(assert (=> b!4877618 m!5879408))

(assert (=> b!4877618 m!5880114))

(assert (=> b!4877618 m!5879338))

(assert (=> b!4877618 m!5880120))

(assert (=> b!4877618 m!5880112))

(declare-fun m!5880158 () Bool)

(assert (=> b!4877618 m!5880158))

(declare-fun m!5880160 () Bool)

(assert (=> b!4877618 m!5880160))

(assert (=> b!4877618 m!5880158))

(declare-fun m!5880162 () Bool)

(assert (=> b!4877618 m!5880162))

(assert (=> b!4877618 m!5880158))

(assert (=> b!4877618 m!5880158))

(declare-fun m!5880164 () Bool)

(assert (=> b!4877618 m!5880164))

(assert (=> b!4877618 m!5879604))

(assert (=> b!4877614 m!5880156))

(declare-fun m!5880166 () Bool)

(assert (=> b!4877614 m!5880166))

(assert (=> b!4877614 m!5879338))

(assert (=> b!4877614 m!5879408))

(assert (=> b!4877620 m!5880156))

(declare-fun m!5880168 () Bool)

(assert (=> b!4877620 m!5880168))

(assert (=> b!4877616 m!5879604))

(assert (=> b!4877616 m!5879338))

(assert (=> b!4877616 m!5879408))

(assert (=> b!4877616 m!5879604))

(assert (=> b!4877616 m!5879338))

(assert (=> b!4877616 m!5879338))

(assert (=> b!4877616 m!5879408))

(assert (=> b!4877616 m!5880114))

(assert (=> b!4877616 m!5880126))

(assert (=> b!4877612 m!5880156))

(declare-fun m!5880170 () Bool)

(assert (=> b!4877612 m!5880170))

(assert (=> b!4877612 m!5880170))

(declare-fun m!5880172 () Bool)

(assert (=> b!4877612 m!5880172))

(assert (=> b!4877617 m!5880156))

(declare-fun m!5880174 () Bool)

(assert (=> b!4877617 m!5880174))

(assert (=> b!4877617 m!5880174))

(declare-fun m!5880176 () Bool)

(assert (=> b!4877617 m!5880176))

(assert (=> b!4877617 m!5880176))

(declare-fun m!5880178 () Bool)

(assert (=> b!4877617 m!5880178))

(declare-fun m!5880180 () Bool)

(assert (=> d!1566990 m!5880180))

(declare-fun m!5880182 () Bool)

(assert (=> d!1566990 m!5880182))

(assert (=> d!1566990 m!5879338))

(declare-fun m!5880184 () Bool)

(assert (=> d!1566990 m!5880184))

(assert (=> d!1566990 m!5879640))

(assert (=> b!4877619 m!5880156))

(assert (=> b!4877619 m!5880174))

(assert (=> b!4877619 m!5880174))

(assert (=> b!4877619 m!5880176))

(assert (=> b!4877619 m!5880176))

(declare-fun m!5880186 () Bool)

(assert (=> b!4877619 m!5880186))

(assert (=> b!4877136 d!1566990))

(assert (=> b!4877136 d!1566762))

(declare-fun b!4877650 () Bool)

(declare-fun res!2082145 () Bool)

(declare-fun e!3048641 () Bool)

(assert (=> b!4877650 (=> res!2082145 e!3048641)))

(declare-fun e!3048638 () Bool)

(assert (=> b!4877650 (= res!2082145 e!3048638)))

(declare-fun res!2082144 () Bool)

(assert (=> b!4877650 (=> (not res!2082144) (not e!3048638))))

(declare-fun lt!1998643 () Bool)

(assert (=> b!4877650 (= res!2082144 lt!1998643)))

(declare-fun b!4877651 () Bool)

(assert (=> b!4877651 (= e!3048638 (= (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (c!829487 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun b!4877652 () Bool)

(declare-fun res!2082148 () Bool)

(assert (=> b!4877652 (=> res!2082148 e!3048641)))

(assert (=> b!4877652 (= res!2082148 (not (is-ElementMatch!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun e!3048635 () Bool)

(assert (=> b!4877652 (= e!3048635 e!3048641)))

(declare-fun b!4877653 () Bool)

(declare-fun e!3048640 () Bool)

(declare-fun e!3048637 () Bool)

(assert (=> b!4877653 (= e!3048640 e!3048637)))

(declare-fun res!2082150 () Bool)

(assert (=> b!4877653 (=> res!2082150 e!3048637)))

(declare-fun call!338607 () Bool)

(assert (=> b!4877653 (= res!2082150 call!338607)))

(declare-fun b!4877654 () Bool)

(assert (=> b!4877654 (= e!3048637 (not (= (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (c!829487 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))))))))

(declare-fun b!4877655 () Bool)

(declare-fun res!2082146 () Bool)

(assert (=> b!4877655 (=> (not res!2082146) (not e!3048638))))

(assert (=> b!4877655 (= res!2082146 (not call!338607))))

(declare-fun b!4877656 () Bool)

(assert (=> b!4877656 (= e!3048635 (not lt!1998643))))

(declare-fun b!4877657 () Bool)

(declare-fun res!2082149 () Bool)

(assert (=> b!4877657 (=> res!2082149 e!3048637)))

(assert (=> b!4877657 (= res!2082149 (not (isEmpty!30012 (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))))

(declare-fun d!1566992 () Bool)

(declare-fun e!3048636 () Bool)

(assert (=> d!1566992 e!3048636))

(declare-fun c!829618 () Bool)

(assert (=> d!1566992 (= c!829618 (is-EmptyExpr!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun e!3048639 () Bool)

(assert (=> d!1566992 (= lt!1998643 e!3048639)))

(declare-fun c!829617 () Bool)

(assert (=> d!1566992 (= c!829617 (isEmpty!30012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun validRegex!5875 (Regex!13124) Bool)

(assert (=> d!1566992 (validRegex!5875 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))

(assert (=> d!1566992 (= (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) lt!1998643)))

(declare-fun b!4877649 () Bool)

(assert (=> b!4877649 (= e!3048636 e!3048635)))

(declare-fun c!829616 () Bool)

(assert (=> b!4877649 (= c!829616 (is-EmptyLang!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun b!4877658 () Bool)

(declare-fun res!2082151 () Bool)

(assert (=> b!4877658 (=> (not res!2082151) (not e!3048638))))

(assert (=> b!4877658 (= res!2082151 (isEmpty!30012 (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun b!4877659 () Bool)

(assert (=> b!4877659 (= e!3048641 e!3048640)))

(declare-fun res!2082147 () Bool)

(assert (=> b!4877659 (=> (not res!2082147) (not e!3048640))))

(assert (=> b!4877659 (= res!2082147 (not lt!1998643))))

(declare-fun b!4877660 () Bool)

(assert (=> b!4877660 (= e!3048636 (= lt!1998643 call!338607))))

(declare-fun bm!338602 () Bool)

(assert (=> bm!338602 (= call!338607 (isEmpty!30012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun b!4877661 () Bool)

(declare-fun nullable!4548 (Regex!13124) Bool)

(assert (=> b!4877661 (= e!3048639 (nullable!4548 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun b!4877662 () Bool)

(declare-fun derivativeStep!3872 (Regex!13124 C!26446) Regex!13124)

(assert (=> b!4877662 (= e!3048639 (matchR!6499 (derivativeStep!3872 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))))) (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))))))))

(assert (= (and d!1566992 c!829617) b!4877661))

(assert (= (and d!1566992 (not c!829617)) b!4877662))

(assert (= (and d!1566992 c!829618) b!4877660))

(assert (= (and d!1566992 (not c!829618)) b!4877649))

(assert (= (and b!4877649 c!829616) b!4877656))

(assert (= (and b!4877649 (not c!829616)) b!4877652))

(assert (= (and b!4877652 (not res!2082148)) b!4877650))

(assert (= (and b!4877650 res!2082144) b!4877655))

(assert (= (and b!4877655 res!2082146) b!4877658))

(assert (= (and b!4877658 res!2082151) b!4877651))

(assert (= (and b!4877650 (not res!2082145)) b!4877659))

(assert (= (and b!4877659 res!2082147) b!4877653))

(assert (= (and b!4877653 (not res!2082150)) b!4877657))

(assert (= (and b!4877657 (not res!2082149)) b!4877654))

(assert (= (or b!4877660 b!4877653 b!4877655) bm!338602))

(assert (=> b!4877662 m!5879704))

(declare-fun m!5880188 () Bool)

(assert (=> b!4877662 m!5880188))

(assert (=> b!4877662 m!5880188))

(declare-fun m!5880190 () Bool)

(assert (=> b!4877662 m!5880190))

(assert (=> b!4877662 m!5879704))

(declare-fun m!5880192 () Bool)

(assert (=> b!4877662 m!5880192))

(assert (=> b!4877662 m!5880190))

(assert (=> b!4877662 m!5880192))

(declare-fun m!5880194 () Bool)

(assert (=> b!4877662 m!5880194))

(assert (=> b!4877651 m!5879704))

(assert (=> b!4877651 m!5880188))

(assert (=> b!4877654 m!5879704))

(assert (=> b!4877654 m!5880188))

(assert (=> b!4877657 m!5879704))

(assert (=> b!4877657 m!5880192))

(assert (=> b!4877657 m!5880192))

(declare-fun m!5880196 () Bool)

(assert (=> b!4877657 m!5880196))

(assert (=> b!4877658 m!5879704))

(assert (=> b!4877658 m!5880192))

(assert (=> b!4877658 m!5880192))

(assert (=> b!4877658 m!5880196))

(assert (=> bm!338602 m!5879704))

(declare-fun m!5880198 () Bool)

(assert (=> bm!338602 m!5880198))

(assert (=> d!1566992 m!5879704))

(assert (=> d!1566992 m!5880198))

(declare-fun m!5880200 () Bool)

(assert (=> d!1566992 m!5880200))

(declare-fun m!5880202 () Bool)

(assert (=> b!4877661 m!5880202))

(assert (=> b!4877204 d!1566992))

(assert (=> b!4877204 d!1566960))

(declare-fun d!1566994 () Bool)

(assert (=> d!1566994 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))) (list!17547 (c!829488 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))

(declare-fun bs!1175166 () Bool)

(assert (= bs!1175166 d!1566994))

(declare-fun m!5880204 () Bool)

(assert (=> bs!1175166 m!5880204))

(assert (=> b!4877204 d!1566994))

(declare-fun d!1566996 () Bool)

(declare-fun lt!1998646 () BalanceConc!28648)

(assert (=> d!1566996 (= (list!17543 lt!1998646) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998494))))))

(declare-fun dynLambda!22531 (Int TokenValue!8359) BalanceConc!28648)

(assert (=> d!1566996 (= lt!1998646 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))) (value!258540 (_1!33258 (get!19251 lt!1998494)))))))

(assert (=> d!1566996 (= (charsOf!5348 (_1!33258 (get!19251 lt!1998494))) lt!1998646)))

(declare-fun b_lambda!193941 () Bool)

(assert (=> (not b_lambda!193941) (not d!1566996)))

(declare-fun t!364638 () Bool)

(declare-fun tb!258321 () Bool)

(assert (=> (and b!4876841 (= (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364638) tb!258321))

(declare-fun b!4877667 () Bool)

(declare-fun e!3048644 () Bool)

(declare-fun tp!1372360 () Bool)

(assert (=> b!4877667 (= e!3048644 (and (inv!71955 (c!829488 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))) (value!258540 (_1!33258 (get!19251 lt!1998494)))))) tp!1372360))))

(declare-fun result!321570 () Bool)

(assert (=> tb!258321 (= result!321570 (and (inv!71956 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494))))) (value!258540 (_1!33258 (get!19251 lt!1998494))))) e!3048644))))

(assert (= tb!258321 b!4877667))

(declare-fun m!5880206 () Bool)

(assert (=> b!4877667 m!5880206))

(declare-fun m!5880208 () Bool)

(assert (=> tb!258321 m!5880208))

(assert (=> d!1566996 t!364638))

(declare-fun b_and!343537 () Bool)

(assert (= b_and!343509 (and (=> t!364638 result!321570) b_and!343537)))

(declare-fun t!364640 () Bool)

(declare-fun tb!258323 () Bool)

(assert (=> (and b!4876979 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364640) tb!258323))

(declare-fun result!321574 () Bool)

(assert (= result!321574 result!321570))

(assert (=> d!1566996 t!364640))

(declare-fun b_and!343539 () Bool)

(assert (= b_and!343517 (and (=> t!364640 result!321574) b_and!343539)))

(declare-fun t!364642 () Bool)

(declare-fun tb!258325 () Bool)

(assert (=> (and b!4877370 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364642) tb!258325))

(declare-fun result!321576 () Bool)

(assert (= result!321576 result!321570))

(assert (=> d!1566996 t!364642))

(declare-fun b_and!343541 () Bool)

(assert (= b_and!343525 (and (=> t!364642 result!321576) b_and!343541)))

(declare-fun m!5880210 () Bool)

(assert (=> d!1566996 m!5880210))

(declare-fun m!5880212 () Bool)

(assert (=> d!1566996 m!5880212))

(assert (=> b!4877204 d!1566996))

(declare-fun b!4877668 () Bool)

(declare-fun res!2082157 () Bool)

(declare-fun e!3048645 () Bool)

(assert (=> b!4877668 (=> (not res!2082157) (not e!3048645))))

(assert (=> b!4877668 (= res!2082157 (isBalanced!3967 (right!41018 (right!41018 (c!829488 input!585)))))))

(declare-fun b!4877669 () Bool)

(declare-fun res!2082152 () Bool)

(assert (=> b!4877669 (=> (not res!2082152) (not e!3048645))))

(assert (=> b!4877669 (= res!2082152 (<= (- (height!1940 (left!40688 (right!41018 (c!829488 input!585)))) (height!1940 (right!41018 (right!41018 (c!829488 input!585))))) 1))))

(declare-fun b!4877670 () Bool)

(assert (=> b!4877670 (= e!3048645 (not (isEmpty!30018 (right!41018 (right!41018 (c!829488 input!585))))))))

(declare-fun d!1566998 () Bool)

(declare-fun res!2082156 () Bool)

(declare-fun e!3048646 () Bool)

(assert (=> d!1566998 (=> res!2082156 e!3048646)))

(assert (=> d!1566998 (= res!2082156 (not (is-Node!14603 (right!41018 (c!829488 input!585)))))))

(assert (=> d!1566998 (= (isBalanced!3967 (right!41018 (c!829488 input!585))) e!3048646)))

(declare-fun b!4877671 () Bool)

(assert (=> b!4877671 (= e!3048646 e!3048645)))

(declare-fun res!2082153 () Bool)

(assert (=> b!4877671 (=> (not res!2082153) (not e!3048645))))

(assert (=> b!4877671 (= res!2082153 (<= (- 1) (- (height!1940 (left!40688 (right!41018 (c!829488 input!585)))) (height!1940 (right!41018 (right!41018 (c!829488 input!585)))))))))

(declare-fun b!4877672 () Bool)

(declare-fun res!2082155 () Bool)

(assert (=> b!4877672 (=> (not res!2082155) (not e!3048645))))

(assert (=> b!4877672 (= res!2082155 (isBalanced!3967 (left!40688 (right!41018 (c!829488 input!585)))))))

(declare-fun b!4877673 () Bool)

(declare-fun res!2082154 () Bool)

(assert (=> b!4877673 (=> (not res!2082154) (not e!3048645))))

(assert (=> b!4877673 (= res!2082154 (not (isEmpty!30018 (left!40688 (right!41018 (c!829488 input!585))))))))

(assert (= (and d!1566998 (not res!2082156)) b!4877671))

(assert (= (and b!4877671 res!2082153) b!4877669))

(assert (= (and b!4877669 res!2082152) b!4877672))

(assert (= (and b!4877672 res!2082155) b!4877668))

(assert (= (and b!4877668 res!2082157) b!4877673))

(assert (= (and b!4877673 res!2082154) b!4877670))

(declare-fun m!5880214 () Bool)

(assert (=> b!4877670 m!5880214))

(declare-fun m!5880216 () Bool)

(assert (=> b!4877669 m!5880216))

(declare-fun m!5880218 () Bool)

(assert (=> b!4877669 m!5880218))

(declare-fun m!5880220 () Bool)

(assert (=> b!4877673 m!5880220))

(declare-fun m!5880222 () Bool)

(assert (=> b!4877672 m!5880222))

(declare-fun m!5880224 () Bool)

(assert (=> b!4877668 m!5880224))

(assert (=> b!4877671 m!5880216))

(assert (=> b!4877671 m!5880218))

(assert (=> b!4877288 d!1566998))

(declare-fun d!1567000 () Bool)

(declare-fun lt!1998647 () Int)

(assert (=> d!1567000 (>= lt!1998647 0)))

(declare-fun e!3048647 () Int)

(assert (=> d!1567000 (= lt!1998647 e!3048647)))

(declare-fun c!829619 () Bool)

(assert (=> d!1567000 (= c!829619 (is-Nil!56012 (innerList!14691 (xs!17913 (c!829488 input!585)))))))

(assert (=> d!1567000 (= (size!36947 (innerList!14691 (xs!17913 (c!829488 input!585)))) lt!1998647)))

(declare-fun b!4877674 () Bool)

(assert (=> b!4877674 (= e!3048647 0)))

(declare-fun b!4877675 () Bool)

(assert (=> b!4877675 (= e!3048647 (+ 1 (size!36947 (t!364610 (innerList!14691 (xs!17913 (c!829488 input!585)))))))))

(assert (= (and d!1567000 c!829619) b!4877674))

(assert (= (and d!1567000 (not c!829619)) b!4877675))

(declare-fun m!5880226 () Bool)

(assert (=> b!4877675 m!5880226))

(assert (=> d!1566858 d!1567000))

(declare-fun b!4877684 () Bool)

(declare-fun e!3048653 () List!56136)

(assert (=> b!4877684 (= e!3048653 (list!17547 (right!41018 (c!829488 input!585))))))

(declare-fun b!4877687 () Bool)

(declare-fun e!3048652 () Bool)

(declare-fun lt!1998650 () List!56136)

(assert (=> b!4877687 (= e!3048652 (or (not (= (list!17547 (right!41018 (c!829488 input!585))) Nil!56012)) (= lt!1998650 (list!17547 (left!40688 (c!829488 input!585))))))))

(declare-fun b!4877685 () Bool)

(assert (=> b!4877685 (= e!3048653 (Cons!56012 (h!62460 (list!17547 (left!40688 (c!829488 input!585)))) (++!12207 (t!364610 (list!17547 (left!40688 (c!829488 input!585)))) (list!17547 (right!41018 (c!829488 input!585))))))))

(declare-fun d!1567002 () Bool)

(assert (=> d!1567002 e!3048652))

(declare-fun res!2082162 () Bool)

(assert (=> d!1567002 (=> (not res!2082162) (not e!3048652))))

(declare-fun content!10001 (List!56136) (Set C!26446))

(assert (=> d!1567002 (= res!2082162 (= (content!10001 lt!1998650) (set.union (content!10001 (list!17547 (left!40688 (c!829488 input!585)))) (content!10001 (list!17547 (right!41018 (c!829488 input!585)))))))))

(assert (=> d!1567002 (= lt!1998650 e!3048653)))

(declare-fun c!829622 () Bool)

(assert (=> d!1567002 (= c!829622 (is-Nil!56012 (list!17547 (left!40688 (c!829488 input!585)))))))

(assert (=> d!1567002 (= (++!12207 (list!17547 (left!40688 (c!829488 input!585))) (list!17547 (right!41018 (c!829488 input!585)))) lt!1998650)))

(declare-fun b!4877686 () Bool)

(declare-fun res!2082163 () Bool)

(assert (=> b!4877686 (=> (not res!2082163) (not e!3048652))))

(assert (=> b!4877686 (= res!2082163 (= (size!36947 lt!1998650) (+ (size!36947 (list!17547 (left!40688 (c!829488 input!585)))) (size!36947 (list!17547 (right!41018 (c!829488 input!585)))))))))

(assert (= (and d!1567002 c!829622) b!4877684))

(assert (= (and d!1567002 (not c!829622)) b!4877685))

(assert (= (and d!1567002 res!2082162) b!4877686))

(assert (= (and b!4877686 res!2082163) b!4877687))

(assert (=> b!4877685 m!5879784))

(declare-fun m!5880228 () Bool)

(assert (=> b!4877685 m!5880228))

(declare-fun m!5880230 () Bool)

(assert (=> d!1567002 m!5880230))

(assert (=> d!1567002 m!5879782))

(declare-fun m!5880232 () Bool)

(assert (=> d!1567002 m!5880232))

(assert (=> d!1567002 m!5879784))

(declare-fun m!5880234 () Bool)

(assert (=> d!1567002 m!5880234))

(declare-fun m!5880236 () Bool)

(assert (=> b!4877686 m!5880236))

(assert (=> b!4877686 m!5879782))

(declare-fun m!5880238 () Bool)

(assert (=> b!4877686 m!5880238))

(assert (=> b!4877686 m!5879784))

(declare-fun m!5880240 () Bool)

(assert (=> b!4877686 m!5880240))

(assert (=> b!4877257 d!1567002))

(declare-fun b!4877689 () Bool)

(declare-fun e!3048654 () List!56136)

(declare-fun e!3048655 () List!56136)

(assert (=> b!4877689 (= e!3048654 e!3048655)))

(declare-fun c!829624 () Bool)

(assert (=> b!4877689 (= c!829624 (is-Leaf!24339 (left!40688 (c!829488 input!585))))))

(declare-fun b!4877691 () Bool)

(assert (=> b!4877691 (= e!3048655 (++!12207 (list!17547 (left!40688 (left!40688 (c!829488 input!585)))) (list!17547 (right!41018 (left!40688 (c!829488 input!585))))))))

(declare-fun b!4877688 () Bool)

(assert (=> b!4877688 (= e!3048654 Nil!56012)))

(declare-fun b!4877690 () Bool)

(assert (=> b!4877690 (= e!3048655 (list!17552 (xs!17913 (left!40688 (c!829488 input!585)))))))

(declare-fun d!1567004 () Bool)

(declare-fun c!829623 () Bool)

(assert (=> d!1567004 (= c!829623 (is-Empty!14603 (left!40688 (c!829488 input!585))))))

(assert (=> d!1567004 (= (list!17547 (left!40688 (c!829488 input!585))) e!3048654)))

(assert (= (and d!1567004 c!829623) b!4877688))

(assert (= (and d!1567004 (not c!829623)) b!4877689))

(assert (= (and b!4877689 c!829624) b!4877690))

(assert (= (and b!4877689 (not c!829624)) b!4877691))

(declare-fun m!5880242 () Bool)

(assert (=> b!4877691 m!5880242))

(declare-fun m!5880244 () Bool)

(assert (=> b!4877691 m!5880244))

(assert (=> b!4877691 m!5880242))

(assert (=> b!4877691 m!5880244))

(declare-fun m!5880246 () Bool)

(assert (=> b!4877691 m!5880246))

(declare-fun m!5880248 () Bool)

(assert (=> b!4877690 m!5880248))

(assert (=> b!4877257 d!1567004))

(declare-fun b!4877693 () Bool)

(declare-fun e!3048656 () List!56136)

(declare-fun e!3048657 () List!56136)

(assert (=> b!4877693 (= e!3048656 e!3048657)))

(declare-fun c!829626 () Bool)

(assert (=> b!4877693 (= c!829626 (is-Leaf!24339 (right!41018 (c!829488 input!585))))))

(declare-fun b!4877695 () Bool)

(assert (=> b!4877695 (= e!3048657 (++!12207 (list!17547 (left!40688 (right!41018 (c!829488 input!585)))) (list!17547 (right!41018 (right!41018 (c!829488 input!585))))))))

(declare-fun b!4877692 () Bool)

(assert (=> b!4877692 (= e!3048656 Nil!56012)))

(declare-fun b!4877694 () Bool)

(assert (=> b!4877694 (= e!3048657 (list!17552 (xs!17913 (right!41018 (c!829488 input!585)))))))

(declare-fun d!1567006 () Bool)

(declare-fun c!829625 () Bool)

(assert (=> d!1567006 (= c!829625 (is-Empty!14603 (right!41018 (c!829488 input!585))))))

(assert (=> d!1567006 (= (list!17547 (right!41018 (c!829488 input!585))) e!3048656)))

(assert (= (and d!1567006 c!829625) b!4877692))

(assert (= (and d!1567006 (not c!829625)) b!4877693))

(assert (= (and b!4877693 c!829626) b!4877694))

(assert (= (and b!4877693 (not c!829626)) b!4877695))

(declare-fun m!5880250 () Bool)

(assert (=> b!4877695 m!5880250))

(declare-fun m!5880252 () Bool)

(assert (=> b!4877695 m!5880252))

(assert (=> b!4877695 m!5880250))

(assert (=> b!4877695 m!5880252))

(declare-fun m!5880254 () Bool)

(assert (=> b!4877695 m!5880254))

(declare-fun m!5880256 () Bool)

(assert (=> b!4877694 m!5880256))

(assert (=> b!4877257 d!1567006))

(declare-fun d!1567008 () Bool)

(declare-fun res!2082164 () Bool)

(declare-fun e!3048658 () Bool)

(assert (=> d!1567008 (=> (not res!2082164) (not e!3048658))))

(assert (=> d!1567008 (= res!2082164 (= (csize!29436 (left!40688 (c!829488 input!585))) (+ (size!36948 (left!40688 (left!40688 (c!829488 input!585)))) (size!36948 (right!41018 (left!40688 (c!829488 input!585)))))))))

(assert (=> d!1567008 (= (inv!71960 (left!40688 (c!829488 input!585))) e!3048658)))

(declare-fun b!4877696 () Bool)

(declare-fun res!2082165 () Bool)

(assert (=> b!4877696 (=> (not res!2082165) (not e!3048658))))

(assert (=> b!4877696 (= res!2082165 (and (not (= (left!40688 (left!40688 (c!829488 input!585))) Empty!14603)) (not (= (right!41018 (left!40688 (c!829488 input!585))) Empty!14603))))))

(declare-fun b!4877697 () Bool)

(declare-fun res!2082166 () Bool)

(assert (=> b!4877697 (=> (not res!2082166) (not e!3048658))))

(assert (=> b!4877697 (= res!2082166 (= (cheight!14814 (left!40688 (c!829488 input!585))) (+ (max!0 (height!1940 (left!40688 (left!40688 (c!829488 input!585)))) (height!1940 (right!41018 (left!40688 (c!829488 input!585))))) 1)))))

(declare-fun b!4877698 () Bool)

(assert (=> b!4877698 (= e!3048658 (<= 0 (cheight!14814 (left!40688 (c!829488 input!585)))))))

(assert (= (and d!1567008 res!2082164) b!4877696))

(assert (= (and b!4877696 res!2082165) b!4877697))

(assert (= (and b!4877697 res!2082166) b!4877698))

(declare-fun m!5880258 () Bool)

(assert (=> d!1567008 m!5880258))

(declare-fun m!5880260 () Bool)

(assert (=> d!1567008 m!5880260))

(declare-fun m!5880262 () Bool)

(assert (=> b!4877697 m!5880262))

(declare-fun m!5880264 () Bool)

(assert (=> b!4877697 m!5880264))

(assert (=> b!4877697 m!5880262))

(assert (=> b!4877697 m!5880264))

(declare-fun m!5880266 () Bool)

(assert (=> b!4877697 m!5880266))

(assert (=> b!4877101 d!1567008))

(declare-fun d!1567010 () Bool)

(declare-fun e!3048659 () Bool)

(assert (=> d!1567010 e!3048659))

(declare-fun res!2082168 () Bool)

(assert (=> d!1567010 (=> res!2082168 e!3048659)))

(declare-fun lt!1998651 () Bool)

(assert (=> d!1567010 (= res!2082168 (not lt!1998651))))

(declare-fun e!3048660 () Bool)

(assert (=> d!1567010 (= lt!1998651 e!3048660)))

(declare-fun res!2082167 () Bool)

(assert (=> d!1567010 (=> res!2082167 e!3048660)))

(assert (=> d!1567010 (= res!2082167 (is-Nil!56012 lt!1998391))))

(assert (=> d!1567010 (= (isPrefix!4773 lt!1998391 lt!1998385) lt!1998651)))

(declare-fun b!4877700 () Bool)

(declare-fun res!2082170 () Bool)

(declare-fun e!3048661 () Bool)

(assert (=> b!4877700 (=> (not res!2082170) (not e!3048661))))

(assert (=> b!4877700 (= res!2082170 (= (head!10421 lt!1998391) (head!10421 lt!1998385)))))

(declare-fun b!4877699 () Bool)

(assert (=> b!4877699 (= e!3048660 e!3048661)))

(declare-fun res!2082169 () Bool)

(assert (=> b!4877699 (=> (not res!2082169) (not e!3048661))))

(assert (=> b!4877699 (= res!2082169 (not (is-Nil!56012 lt!1998385)))))

(declare-fun b!4877701 () Bool)

(assert (=> b!4877701 (= e!3048661 (isPrefix!4773 (tail!9567 lt!1998391) (tail!9567 lt!1998385)))))

(declare-fun b!4877702 () Bool)

(assert (=> b!4877702 (= e!3048659 (>= (size!36947 lt!1998385) (size!36947 lt!1998391)))))

(assert (= (and d!1567010 (not res!2082167)) b!4877699))

(assert (= (and b!4877699 res!2082169) b!4877700))

(assert (= (and b!4877700 res!2082170) b!4877701))

(assert (= (and d!1567010 (not res!2082168)) b!4877702))

(declare-fun m!5880268 () Bool)

(assert (=> b!4877700 m!5880268))

(declare-fun m!5880270 () Bool)

(assert (=> b!4877700 m!5880270))

(declare-fun m!5880272 () Bool)

(assert (=> b!4877701 m!5880272))

(declare-fun m!5880274 () Bool)

(assert (=> b!4877701 m!5880274))

(assert (=> b!4877701 m!5880272))

(assert (=> b!4877701 m!5880274))

(declare-fun m!5880276 () Bool)

(assert (=> b!4877701 m!5880276))

(declare-fun m!5880278 () Bool)

(assert (=> b!4877702 m!5880278))

(declare-fun m!5880280 () Bool)

(assert (=> b!4877702 m!5880280))

(assert (=> d!1566802 d!1567010))

(declare-fun d!1567012 () Bool)

(assert (=> d!1567012 (= (isDefined!10863 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))) (not (isEmpty!30014 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)))))))

(declare-fun bs!1175167 () Bool)

(assert (= bs!1175167 d!1567012))

(assert (=> bs!1175167 m!5879528))

(declare-fun m!5880282 () Bool)

(assert (=> bs!1175167 m!5880282))

(assert (=> d!1566802 d!1567012))

(declare-fun d!1567014 () Bool)

(assert (=> d!1567014 (isPrefix!4773 lt!1998391 lt!1998385)))

(declare-fun lt!1998652 () Unit!146016)

(assert (=> d!1567014 (= lt!1998652 (choose!35646 lt!1998391 lt!1998385))))

(assert (=> d!1567014 (= (lemmaIsPrefixRefl!3170 lt!1998391 lt!1998385) lt!1998652)))

(declare-fun bs!1175168 () Bool)

(assert (= bs!1175168 d!1567014))

(assert (=> bs!1175168 m!5879544))

(declare-fun m!5880284 () Bool)

(assert (=> bs!1175168 m!5880284))

(assert (=> d!1566802 d!1567014))

(declare-fun lt!1998655 () Option!13806)

(declare-fun d!1567016 () Bool)

(assert (=> d!1567016 (= lt!1998655 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)))))

(declare-fun e!3048662 () Option!13806)

(assert (=> d!1567016 (= lt!1998655 e!3048662)))

(declare-fun c!829627 () Bool)

(assert (=> d!1567016 (= c!829627 (and (is-Cons!56015 (t!364613 rules!1164)) (is-Nil!56015 (t!364613 (t!364613 rules!1164)))))))

(declare-fun lt!1998656 () Unit!146016)

(declare-fun lt!1998653 () Unit!146016)

(assert (=> d!1567016 (= lt!1998656 lt!1998653)))

(assert (=> d!1567016 (isPrefix!4773 (list!17543 input!585) (list!17543 input!585))))

(assert (=> d!1567016 (= lt!1998653 (lemmaIsPrefixRefl!3170 (list!17543 input!585) (list!17543 input!585)))))

(assert (=> d!1567016 (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164))))

(assert (=> d!1567016 (= (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585)) lt!1998655)))

(declare-fun bm!338603 () Bool)

(declare-fun call!338608 () Option!13806)

(assert (=> bm!338603 (= call!338608 (maxPrefixOneRuleZipper!232 thiss!11460 (h!62463 (t!364613 rules!1164)) (list!17543 input!585)))))

(declare-fun b!4877703 () Bool)

(assert (=> b!4877703 (= e!3048662 call!338608)))

(declare-fun b!4877704 () Bool)

(declare-fun lt!1998654 () Option!13806)

(declare-fun lt!1998657 () Option!13806)

(assert (=> b!4877704 (= e!3048662 (ite (and (is-None!13805 lt!1998654) (is-None!13805 lt!1998657)) None!13805 (ite (is-None!13805 lt!1998657) lt!1998654 (ite (is-None!13805 lt!1998654) lt!1998657 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998654))) (size!36942 (_1!33258 (v!49747 lt!1998657)))) lt!1998654 lt!1998657)))))))

(assert (=> b!4877704 (= lt!1998654 call!338608)))

(assert (=> b!4877704 (= lt!1998657 (maxPrefixZipper!570 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585)))))

(assert (= (and d!1567016 c!829627) b!4877703))

(assert (= (and d!1567016 (not c!829627)) b!4877704))

(assert (= (or b!4877703 b!4877704) bm!338603))

(assert (=> d!1567016 m!5879338))

(assert (=> d!1567016 m!5879546))

(assert (=> d!1567016 m!5879338))

(assert (=> d!1567016 m!5879338))

(assert (=> d!1567016 m!5879564))

(assert (=> d!1567016 m!5879338))

(assert (=> d!1567016 m!5879338))

(assert (=> d!1567016 m!5879566))

(assert (=> d!1567016 m!5879538))

(assert (=> bm!338603 m!5879338))

(declare-fun m!5880286 () Bool)

(assert (=> bm!338603 m!5880286))

(assert (=> b!4877704 m!5879338))

(declare-fun m!5880288 () Bool)

(assert (=> b!4877704 m!5880288))

(assert (=> d!1566802 d!1567016))

(declare-fun bs!1175169 () Bool)

(declare-fun d!1567018 () Bool)

(assert (= bs!1175169 (and d!1567018 d!1566854)))

(declare-fun lambda!243675 () Int)

(assert (=> bs!1175169 (= lambda!243675 lambda!243655)))

(declare-fun bs!1175170 () Bool)

(assert (= bs!1175170 (and d!1567018 d!1566896)))

(assert (=> bs!1175170 (= lambda!243675 lambda!243664)))

(assert (=> d!1567018 true))

(declare-fun lt!1998658 () Bool)

(assert (=> d!1567018 (= lt!1998658 (forall!13057 (t!364613 rules!1164) lambda!243675))))

(declare-fun e!3048663 () Bool)

(assert (=> d!1567018 (= lt!1998658 e!3048663)))

(declare-fun res!2082172 () Bool)

(assert (=> d!1567018 (=> res!2082172 e!3048663)))

(assert (=> d!1567018 (= res!2082172 (not (is-Cons!56015 (t!364613 rules!1164))))))

(assert (=> d!1567018 (= (rulesValidInductive!3028 thiss!11460 (t!364613 rules!1164)) lt!1998658)))

(declare-fun b!4877705 () Bool)

(declare-fun e!3048664 () Bool)

(assert (=> b!4877705 (= e!3048663 e!3048664)))

(declare-fun res!2082171 () Bool)

(assert (=> b!4877705 (=> (not res!2082171) (not e!3048664))))

(assert (=> b!4877705 (= res!2082171 (ruleValid!3637 thiss!11460 (h!62463 (t!364613 rules!1164))))))

(declare-fun b!4877706 () Bool)

(assert (=> b!4877706 (= e!3048664 (rulesValidInductive!3028 thiss!11460 (t!364613 (t!364613 rules!1164))))))

(assert (= (and d!1567018 (not res!2082172)) b!4877705))

(assert (= (and b!4877705 res!2082171) b!4877706))

(declare-fun m!5880290 () Bool)

(assert (=> d!1567018 m!5880290))

(declare-fun m!5880292 () Bool)

(assert (=> b!4877705 m!5880292))

(declare-fun m!5880294 () Bool)

(assert (=> b!4877706 m!5880294))

(assert (=> d!1566802 d!1567018))

(assert (=> d!1566802 d!1566762))

(declare-fun d!1567020 () Bool)

(assert (=> d!1567020 (= (isDefined!10862 lt!1998388) (not (isEmpty!30010 lt!1998388)))))

(declare-fun bs!1175171 () Bool)

(assert (= bs!1175171 d!1567020))

(declare-fun m!5880296 () Bool)

(assert (=> bs!1175171 m!5880296))

(assert (=> d!1566802 d!1567020))

(declare-fun d!1567022 () Bool)

(assert (not d!1567022))

(assert (=> b!4877093 d!1567022))

(declare-fun d!1567024 () Bool)

(assert (not d!1567024))

(assert (=> b!4877093 d!1567024))

(declare-fun d!1567026 () Bool)

(assert (not d!1567026))

(assert (=> b!4877093 d!1567026))

(declare-fun d!1567028 () Bool)

(declare-fun lt!1998659 () Int)

(assert (=> d!1567028 (>= lt!1998659 0)))

(declare-fun e!3048665 () Int)

(assert (=> d!1567028 (= lt!1998659 e!3048665)))

(declare-fun c!829628 () Bool)

(assert (=> d!1567028 (= c!829628 (is-Nil!56014 (_1!33254 lt!1998511)))))

(assert (=> d!1567028 (= (size!36949 (_1!33254 lt!1998511)) lt!1998659)))

(declare-fun b!4877707 () Bool)

(assert (=> b!4877707 (= e!3048665 0)))

(declare-fun b!4877708 () Bool)

(assert (=> b!4877708 (= e!3048665 (+ 1 (size!36949 (t!364612 (_1!33254 lt!1998511)))))))

(assert (= (and d!1567028 c!829628) b!4877707))

(assert (= (and d!1567028 (not c!829628)) b!4877708))

(declare-fun m!5880298 () Bool)

(assert (=> b!4877708 m!5880298))

(assert (=> d!1566864 d!1567028))

(declare-fun b!4877709 () Bool)

(declare-fun res!2082179 () Bool)

(declare-fun e!3048668 () Bool)

(assert (=> b!4877709 (=> (not res!2082179) (not e!3048668))))

(declare-fun lt!1998662 () Option!13806)

(assert (=> b!4877709 (= res!2082179 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998662)))) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998662)))))))

(declare-fun b!4877710 () Bool)

(declare-fun e!3048666 () Bool)

(assert (=> b!4877710 (= e!3048666 e!3048668)))

(declare-fun res!2082178 () Bool)

(assert (=> b!4877710 (=> (not res!2082178) (not e!3048668))))

(assert (=> b!4877710 (= res!2082178 (isDefined!10863 lt!1998662))))

(declare-fun b!4877711 () Bool)

(declare-fun e!3048667 () Option!13806)

(declare-fun call!338609 () Option!13806)

(assert (=> b!4877711 (= e!3048667 call!338609)))

(declare-fun b!4877712 () Bool)

(declare-fun res!2082177 () Bool)

(assert (=> b!4877712 (=> (not res!2082177) (not e!3048668))))

(assert (=> b!4877712 (= res!2082177 (= (value!258540 (_1!33258 (get!19251 lt!1998662))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998662)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998662)))))))))

(declare-fun b!4877713 () Bool)

(declare-fun res!2082175 () Bool)

(assert (=> b!4877713 (=> (not res!2082175) (not e!3048668))))

(assert (=> b!4877713 (= res!2082175 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998662)))) (_2!33258 (get!19251 lt!1998662))) (_2!33258 (v!49747 lt!1998358))))))

(declare-fun b!4877714 () Bool)

(declare-fun res!2082173 () Bool)

(assert (=> b!4877714 (=> (not res!2082173) (not e!3048668))))

(assert (=> b!4877714 (= res!2082173 (< (size!36947 (_2!33258 (get!19251 lt!1998662))) (size!36947 (_2!33258 (v!49747 lt!1998358)))))))

(declare-fun d!1567030 () Bool)

(assert (=> d!1567030 e!3048666))

(declare-fun res!2082174 () Bool)

(assert (=> d!1567030 (=> res!2082174 e!3048666)))

(assert (=> d!1567030 (= res!2082174 (isEmpty!30014 lt!1998662))))

(assert (=> d!1567030 (= lt!1998662 e!3048667)))

(declare-fun c!829629 () Bool)

(assert (=> d!1567030 (= c!829629 (and (is-Cons!56015 rules!1164) (is-Nil!56015 (t!364613 rules!1164))))))

(declare-fun lt!1998661 () Unit!146016)

(declare-fun lt!1998664 () Unit!146016)

(assert (=> d!1567030 (= lt!1998661 lt!1998664)))

(assert (=> d!1567030 (isPrefix!4773 (_2!33258 (v!49747 lt!1998358)) (_2!33258 (v!49747 lt!1998358)))))

(assert (=> d!1567030 (= lt!1998664 (lemmaIsPrefixRefl!3170 (_2!33258 (v!49747 lt!1998358)) (_2!33258 (v!49747 lt!1998358))))))

(assert (=> d!1567030 (rulesValidInductive!3028 thiss!11460 rules!1164)))

(assert (=> d!1567030 (= (maxPrefix!4556 thiss!11460 rules!1164 (_2!33258 (v!49747 lt!1998358))) lt!1998662)))

(declare-fun bm!338604 () Bool)

(assert (=> bm!338604 (= call!338609 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (_2!33258 (v!49747 lt!1998358))))))

(declare-fun b!4877715 () Bool)

(declare-fun res!2082176 () Bool)

(assert (=> b!4877715 (=> (not res!2082176) (not e!3048668))))

(assert (=> b!4877715 (= res!2082176 (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998662)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998662))))))))

(declare-fun b!4877716 () Bool)

(assert (=> b!4877716 (= e!3048668 (contains!19409 rules!1164 (rule!11205 (_1!33258 (get!19251 lt!1998662)))))))

(declare-fun b!4877717 () Bool)

(declare-fun lt!1998663 () Option!13806)

(declare-fun lt!1998660 () Option!13806)

(assert (=> b!4877717 (= e!3048667 (ite (and (is-None!13805 lt!1998663) (is-None!13805 lt!1998660)) None!13805 (ite (is-None!13805 lt!1998660) lt!1998663 (ite (is-None!13805 lt!1998663) lt!1998660 (ite (>= (size!36942 (_1!33258 (v!49747 lt!1998663))) (size!36942 (_1!33258 (v!49747 lt!1998660)))) lt!1998663 lt!1998660)))))))

(assert (=> b!4877717 (= lt!1998663 call!338609)))

(assert (=> b!4877717 (= lt!1998660 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (_2!33258 (v!49747 lt!1998358))))))

(assert (= (and d!1567030 c!829629) b!4877711))

(assert (= (and d!1567030 (not c!829629)) b!4877717))

(assert (= (or b!4877711 b!4877717) bm!338604))

(assert (= (and d!1567030 (not res!2082174)) b!4877710))

(assert (= (and b!4877710 res!2082178) b!4877709))

(assert (= (and b!4877709 res!2082179) b!4877714))

(assert (= (and b!4877714 res!2082173) b!4877713))

(assert (= (and b!4877713 res!2082175) b!4877712))

(assert (= (and b!4877712 res!2082177) b!4877715))

(assert (= (and b!4877715 res!2082176) b!4877716))

(declare-fun m!5880300 () Bool)

(assert (=> b!4877714 m!5880300))

(declare-fun m!5880302 () Bool)

(assert (=> b!4877714 m!5880302))

(assert (=> b!4877714 m!5879776))

(declare-fun m!5880304 () Bool)

(assert (=> d!1567030 m!5880304))

(declare-fun m!5880306 () Bool)

(assert (=> d!1567030 m!5880306))

(declare-fun m!5880308 () Bool)

(assert (=> d!1567030 m!5880308))

(assert (=> d!1567030 m!5879394))

(assert (=> b!4877709 m!5880300))

(declare-fun m!5880310 () Bool)

(assert (=> b!4877709 m!5880310))

(assert (=> b!4877709 m!5880310))

(declare-fun m!5880312 () Bool)

(assert (=> b!4877709 m!5880312))

(assert (=> b!4877716 m!5880300))

(declare-fun m!5880314 () Bool)

(assert (=> b!4877716 m!5880314))

(assert (=> b!4877715 m!5880300))

(assert (=> b!4877715 m!5880310))

(assert (=> b!4877715 m!5880310))

(assert (=> b!4877715 m!5880312))

(assert (=> b!4877715 m!5880312))

(declare-fun m!5880316 () Bool)

(assert (=> b!4877715 m!5880316))

(declare-fun m!5880318 () Bool)

(assert (=> b!4877710 m!5880318))

(declare-fun m!5880320 () Bool)

(assert (=> bm!338604 m!5880320))

(assert (=> b!4877713 m!5880300))

(assert (=> b!4877713 m!5880310))

(assert (=> b!4877713 m!5880310))

(assert (=> b!4877713 m!5880312))

(assert (=> b!4877713 m!5880312))

(declare-fun m!5880322 () Bool)

(assert (=> b!4877713 m!5880322))

(assert (=> b!4877712 m!5880300))

(declare-fun m!5880324 () Bool)

(assert (=> b!4877712 m!5880324))

(assert (=> b!4877712 m!5880324))

(declare-fun m!5880326 () Bool)

(assert (=> b!4877712 m!5880326))

(declare-fun m!5880328 () Bool)

(assert (=> b!4877717 m!5880328))

(assert (=> d!1566864 d!1567030))

(assert (=> b!4877340 d!1567018))

(declare-fun b!4877719 () Bool)

(declare-fun res!2082181 () Bool)

(declare-fun e!3048675 () Bool)

(assert (=> b!4877719 (=> res!2082181 e!3048675)))

(declare-fun e!3048672 () Bool)

(assert (=> b!4877719 (= res!2082181 e!3048672)))

(declare-fun res!2082180 () Bool)

(assert (=> b!4877719 (=> (not res!2082180) (not e!3048672))))

(declare-fun lt!1998665 () Bool)

(assert (=> b!4877719 (= res!2082180 lt!1998665)))

(declare-fun b!4877720 () Bool)

(assert (=> b!4877720 (= e!3048672 (= (head!10421 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))) (c!829487 (regex!8049 (h!62463 rules!1164)))))))

(declare-fun b!4877721 () Bool)

(declare-fun res!2082184 () Bool)

(assert (=> b!4877721 (=> res!2082184 e!3048675)))

(assert (=> b!4877721 (= res!2082184 (not (is-ElementMatch!13124 (regex!8049 (h!62463 rules!1164)))))))

(declare-fun e!3048669 () Bool)

(assert (=> b!4877721 (= e!3048669 e!3048675)))

(declare-fun b!4877722 () Bool)

(declare-fun e!3048674 () Bool)

(declare-fun e!3048671 () Bool)

(assert (=> b!4877722 (= e!3048674 e!3048671)))

(declare-fun res!2082186 () Bool)

(assert (=> b!4877722 (=> res!2082186 e!3048671)))

(declare-fun call!338610 () Bool)

(assert (=> b!4877722 (= res!2082186 call!338610)))

(declare-fun b!4877723 () Bool)

(assert (=> b!4877723 (= e!3048671 (not (= (head!10421 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))) (c!829487 (regex!8049 (h!62463 rules!1164))))))))

(declare-fun b!4877724 () Bool)

(declare-fun res!2082182 () Bool)

(assert (=> b!4877724 (=> (not res!2082182) (not e!3048672))))

(assert (=> b!4877724 (= res!2082182 (not call!338610))))

(declare-fun b!4877725 () Bool)

(assert (=> b!4877725 (= e!3048669 (not lt!1998665))))

(declare-fun b!4877726 () Bool)

(declare-fun res!2082185 () Bool)

(assert (=> b!4877726 (=> res!2082185 e!3048671)))

(assert (=> b!4877726 (= res!2082185 (not (isEmpty!30012 (tail!9567 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))))

(declare-fun d!1567032 () Bool)

(declare-fun e!3048670 () Bool)

(assert (=> d!1567032 e!3048670))

(declare-fun c!829632 () Bool)

(assert (=> d!1567032 (= c!829632 (is-EmptyExpr!13124 (regex!8049 (h!62463 rules!1164))))))

(declare-fun e!3048673 () Bool)

(assert (=> d!1567032 (= lt!1998665 e!3048673)))

(declare-fun c!829631 () Bool)

(assert (=> d!1567032 (= c!829631 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(assert (=> d!1567032 (validRegex!5875 (regex!8049 (h!62463 rules!1164)))))

(assert (=> d!1567032 (= (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))) lt!1998665)))

(declare-fun b!4877718 () Bool)

(assert (=> b!4877718 (= e!3048670 e!3048669)))

(declare-fun c!829630 () Bool)

(assert (=> b!4877718 (= c!829630 (is-EmptyLang!13124 (regex!8049 (h!62463 rules!1164))))))

(declare-fun b!4877727 () Bool)

(declare-fun res!2082187 () Bool)

(assert (=> b!4877727 (=> (not res!2082187) (not e!3048672))))

(assert (=> b!4877727 (= res!2082187 (isEmpty!30012 (tail!9567 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444))))))))

(declare-fun b!4877728 () Bool)

(assert (=> b!4877728 (= e!3048675 e!3048674)))

(declare-fun res!2082183 () Bool)

(assert (=> b!4877728 (=> (not res!2082183) (not e!3048674))))

(assert (=> b!4877728 (= res!2082183 (not lt!1998665))))

(declare-fun b!4877729 () Bool)

(assert (=> b!4877729 (= e!3048670 (= lt!1998665 call!338610))))

(declare-fun bm!338605 () Bool)

(assert (=> bm!338605 (= call!338610 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(declare-fun b!4877730 () Bool)

(assert (=> b!4877730 (= e!3048673 (nullable!4548 (regex!8049 (h!62463 rules!1164))))))

(declare-fun b!4877731 () Bool)

(assert (=> b!4877731 (= e!3048673 (matchR!6499 (derivativeStep!3872 (regex!8049 (h!62463 rules!1164)) (head!10421 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444))))) (tail!9567 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444))))))))

(assert (= (and d!1567032 c!829631) b!4877730))

(assert (= (and d!1567032 (not c!829631)) b!4877731))

(assert (= (and d!1567032 c!829632) b!4877729))

(assert (= (and d!1567032 (not c!829632)) b!4877718))

(assert (= (and b!4877718 c!829630) b!4877725))

(assert (= (and b!4877718 (not c!829630)) b!4877721))

(assert (= (and b!4877721 (not res!2082184)) b!4877719))

(assert (= (and b!4877719 res!2082180) b!4877724))

(assert (= (and b!4877724 res!2082182) b!4877727))

(assert (= (and b!4877727 res!2082187) b!4877720))

(assert (= (and b!4877719 (not res!2082181)) b!4877728))

(assert (= (and b!4877728 res!2082183) b!4877722))

(assert (= (and b!4877722 (not res!2082186)) b!4877726))

(assert (= (and b!4877726 (not res!2082185)) b!4877723))

(assert (= (or b!4877729 b!4877722 b!4877724) bm!338605))

(declare-fun m!5880330 () Bool)

(assert (=> b!4877731 m!5880330))

(assert (=> b!4877731 m!5880330))

(declare-fun m!5880332 () Bool)

(assert (=> b!4877731 m!5880332))

(declare-fun m!5880334 () Bool)

(assert (=> b!4877731 m!5880334))

(assert (=> b!4877731 m!5880332))

(assert (=> b!4877731 m!5880334))

(declare-fun m!5880336 () Bool)

(assert (=> b!4877731 m!5880336))

(assert (=> b!4877720 m!5880330))

(assert (=> b!4877723 m!5880330))

(assert (=> b!4877726 m!5880334))

(assert (=> b!4877726 m!5880334))

(declare-fun m!5880338 () Bool)

(assert (=> b!4877726 m!5880338))

(assert (=> b!4877727 m!5880334))

(assert (=> b!4877727 m!5880334))

(assert (=> b!4877727 m!5880338))

(assert (=> bm!338605 m!5879630))

(assert (=> d!1567032 m!5879630))

(declare-fun m!5880340 () Bool)

(assert (=> d!1567032 m!5880340))

(declare-fun m!5880342 () Bool)

(assert (=> b!4877730 m!5880342))

(assert (=> b!4877139 d!1567032))

(declare-fun bm!338622 () Bool)

(declare-fun call!338634 () C!26446)

(assert (=> bm!338622 (= call!338634 (head!10421 lt!1998444))))

(declare-fun call!338630 () Regex!13124)

(declare-fun bm!338623 () Bool)

(declare-fun call!338632 () tuple2!59916)

(declare-fun call!338631 () List!56136)

(declare-fun lt!1998729 () List!56136)

(assert (=> bm!338623 (= call!338632 (findLongestMatchInner!1728 call!338630 lt!1998729 (+ (size!36947 Nil!56012) 1) call!338631 lt!1998444 (size!36947 lt!1998444)))))

(declare-fun b!4877760 () Bool)

(declare-fun e!3048695 () tuple2!59916)

(assert (=> b!4877760 (= e!3048695 call!338632)))

(declare-fun b!4877761 () Bool)

(declare-fun e!3048694 () tuple2!59916)

(assert (=> b!4877761 (= e!3048694 (tuple2!59917 Nil!56012 lt!1998444))))

(declare-fun bm!338624 () Bool)

(declare-fun call!338633 () Bool)

(assert (=> bm!338624 (= call!338633 (nullable!4548 (regex!8049 (h!62463 rules!1164))))))

(declare-fun b!4877762 () Bool)

(declare-fun e!3048699 () tuple2!59916)

(declare-fun lt!1998739 () tuple2!59916)

(assert (=> b!4877762 (= e!3048699 lt!1998739)))

(declare-fun bm!338625 () Bool)

(declare-fun call!338628 () Unit!146016)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1052 (List!56136 List!56136 List!56136) Unit!146016)

(assert (=> bm!338625 (= call!338628 (lemmaIsPrefixSameLengthThenSameList!1052 lt!1998444 Nil!56012 lt!1998444))))

(declare-fun b!4877763 () Bool)

(assert (=> b!4877763 (= e!3048699 (tuple2!59917 Nil!56012 lt!1998444))))

(declare-fun bm!338626 () Bool)

(declare-fun call!338627 () Bool)

(assert (=> bm!338626 (= call!338627 (isPrefix!4773 lt!1998444 lt!1998444))))

(declare-fun d!1567034 () Bool)

(declare-fun e!3048698 () Bool)

(assert (=> d!1567034 e!3048698))

(declare-fun res!2082192 () Bool)

(assert (=> d!1567034 (=> (not res!2082192) (not e!3048698))))

(declare-fun lt!1998741 () tuple2!59916)

(assert (=> d!1567034 (= res!2082192 (= (++!12207 (_1!33261 lt!1998741) (_2!33261 lt!1998741)) lt!1998444))))

(declare-fun e!3048697 () tuple2!59916)

(assert (=> d!1567034 (= lt!1998741 e!3048697)))

(declare-fun c!829646 () Bool)

(declare-fun lostCause!1080 (Regex!13124) Bool)

(assert (=> d!1567034 (= c!829646 (lostCause!1080 (regex!8049 (h!62463 rules!1164))))))

(declare-fun lt!1998730 () Unit!146016)

(declare-fun Unit!146020 () Unit!146016)

(assert (=> d!1567034 (= lt!1998730 Unit!146020)))

(declare-fun getSuffix!2881 (List!56136 List!56136) List!56136)

(assert (=> d!1567034 (= (getSuffix!2881 lt!1998444 Nil!56012) lt!1998444)))

(declare-fun lt!1998722 () Unit!146016)

(declare-fun lt!1998728 () Unit!146016)

(assert (=> d!1567034 (= lt!1998722 lt!1998728)))

(declare-fun lt!1998735 () List!56136)

(assert (=> d!1567034 (= lt!1998444 lt!1998735)))

(declare-fun lemmaSamePrefixThenSameSuffix!2297 (List!56136 List!56136 List!56136 List!56136 List!56136) Unit!146016)

(assert (=> d!1567034 (= lt!1998728 (lemmaSamePrefixThenSameSuffix!2297 Nil!56012 lt!1998444 Nil!56012 lt!1998735 lt!1998444))))

(assert (=> d!1567034 (= lt!1998735 (getSuffix!2881 lt!1998444 Nil!56012))))

(declare-fun lt!1998732 () Unit!146016)

(declare-fun lt!1998743 () Unit!146016)

(assert (=> d!1567034 (= lt!1998732 lt!1998743)))

(assert (=> d!1567034 (isPrefix!4773 Nil!56012 (++!12207 Nil!56012 lt!1998444))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3117 (List!56136 List!56136) Unit!146016)

(assert (=> d!1567034 (= lt!1998743 (lemmaConcatTwoListThenFirstIsPrefix!3117 Nil!56012 lt!1998444))))

(assert (=> d!1567034 (validRegex!5875 (regex!8049 (h!62463 rules!1164)))))

(assert (=> d!1567034 (= (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)) lt!1998741)))

(declare-fun b!4877764 () Bool)

(assert (=> b!4877764 (= e!3048697 (tuple2!59917 Nil!56012 lt!1998444))))

(declare-fun b!4877765 () Bool)

(declare-fun c!829645 () Bool)

(assert (=> b!4877765 (= c!829645 call!338633)))

(declare-fun lt!1998737 () Unit!146016)

(declare-fun lt!1998724 () Unit!146016)

(assert (=> b!4877765 (= lt!1998737 lt!1998724)))

(declare-fun lt!1998734 () C!26446)

(declare-fun lt!1998736 () List!56136)

(assert (=> b!4877765 (= (++!12207 (++!12207 Nil!56012 (Cons!56012 lt!1998734 Nil!56012)) lt!1998736) lt!1998444)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1324 (List!56136 C!26446 List!56136 List!56136) Unit!146016)

(assert (=> b!4877765 (= lt!1998724 (lemmaMoveElementToOtherListKeepsConcatEq!1324 Nil!56012 lt!1998734 lt!1998736 lt!1998444))))

(assert (=> b!4877765 (= lt!1998736 (tail!9567 lt!1998444))))

(assert (=> b!4877765 (= lt!1998734 (head!10421 lt!1998444))))

(declare-fun lt!1998727 () Unit!146016)

(declare-fun lt!1998748 () Unit!146016)

(assert (=> b!4877765 (= lt!1998727 lt!1998748)))

(assert (=> b!4877765 (isPrefix!4773 (++!12207 Nil!56012 (Cons!56012 (head!10421 (getSuffix!2881 lt!1998444 Nil!56012)) Nil!56012)) lt!1998444)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!706 (List!56136 List!56136) Unit!146016)

(assert (=> b!4877765 (= lt!1998748 (lemmaAddHeadSuffixToPrefixStillPrefix!706 Nil!56012 lt!1998444))))

(declare-fun lt!1998745 () Unit!146016)

(declare-fun lt!1998740 () Unit!146016)

(assert (=> b!4877765 (= lt!1998745 lt!1998740)))

(assert (=> b!4877765 (= lt!1998740 (lemmaAddHeadSuffixToPrefixStillPrefix!706 Nil!56012 lt!1998444))))

(assert (=> b!4877765 (= lt!1998729 (++!12207 Nil!56012 (Cons!56012 (head!10421 lt!1998444) Nil!56012)))))

(declare-fun lt!1998749 () Unit!146016)

(declare-fun e!3048693 () Unit!146016)

(assert (=> b!4877765 (= lt!1998749 e!3048693)))

(declare-fun c!829647 () Bool)

(assert (=> b!4877765 (= c!829647 (= (size!36947 Nil!56012) (size!36947 lt!1998444)))))

(declare-fun lt!1998747 () Unit!146016)

(declare-fun lt!1998723 () Unit!146016)

(assert (=> b!4877765 (= lt!1998747 lt!1998723)))

(assert (=> b!4877765 (<= (size!36947 Nil!56012) (size!36947 lt!1998444))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!618 (List!56136 List!56136) Unit!146016)

(assert (=> b!4877765 (= lt!1998723 (lemmaIsPrefixThenSmallerEqSize!618 Nil!56012 lt!1998444))))

(declare-fun e!3048692 () tuple2!59916)

(assert (=> b!4877765 (= e!3048692 e!3048695)))

(declare-fun b!4877766 () Bool)

(assert (=> b!4877766 (= e!3048697 e!3048692)))

(declare-fun c!829649 () Bool)

(assert (=> b!4877766 (= c!829649 (= (size!36947 Nil!56012) (size!36947 lt!1998444)))))

(declare-fun b!4877767 () Bool)

(assert (=> b!4877767 (= e!3048695 e!3048699)))

(assert (=> b!4877767 (= lt!1998739 call!338632)))

(declare-fun c!829648 () Bool)

(assert (=> b!4877767 (= c!829648 (isEmpty!30012 (_1!33261 lt!1998739)))))

(declare-fun b!4877768 () Bool)

(declare-fun Unit!146021 () Unit!146016)

(assert (=> b!4877768 (= e!3048693 Unit!146021)))

(declare-fun lt!1998731 () Unit!146016)

(declare-fun call!338629 () Unit!146016)

(assert (=> b!4877768 (= lt!1998731 call!338629)))

(assert (=> b!4877768 call!338627))

(declare-fun lt!1998725 () Unit!146016)

(assert (=> b!4877768 (= lt!1998725 lt!1998731)))

(declare-fun lt!1998742 () Unit!146016)

(assert (=> b!4877768 (= lt!1998742 call!338628)))

(assert (=> b!4877768 (= lt!1998444 Nil!56012)))

(declare-fun lt!1998744 () Unit!146016)

(assert (=> b!4877768 (= lt!1998744 lt!1998742)))

(assert (=> b!4877768 false))

(declare-fun b!4877769 () Bool)

(assert (=> b!4877769 (= e!3048694 (tuple2!59917 Nil!56012 Nil!56012))))

(declare-fun b!4877770 () Bool)

(declare-fun e!3048696 () Bool)

(assert (=> b!4877770 (= e!3048698 e!3048696)))

(declare-fun res!2082193 () Bool)

(assert (=> b!4877770 (=> res!2082193 e!3048696)))

(assert (=> b!4877770 (= res!2082193 (isEmpty!30012 (_1!33261 lt!1998741)))))

(declare-fun b!4877771 () Bool)

(declare-fun c!829650 () Bool)

(assert (=> b!4877771 (= c!829650 call!338633)))

(declare-fun lt!1998738 () Unit!146016)

(declare-fun lt!1998726 () Unit!146016)

(assert (=> b!4877771 (= lt!1998738 lt!1998726)))

(assert (=> b!4877771 (= lt!1998444 Nil!56012)))

(assert (=> b!4877771 (= lt!1998726 call!338628)))

(declare-fun lt!1998733 () Unit!146016)

(declare-fun lt!1998746 () Unit!146016)

(assert (=> b!4877771 (= lt!1998733 lt!1998746)))

(assert (=> b!4877771 call!338627))

(assert (=> b!4877771 (= lt!1998746 call!338629)))

(assert (=> b!4877771 (= e!3048692 e!3048694)))

(declare-fun bm!338627 () Bool)

(assert (=> bm!338627 (= call!338630 (derivativeStep!3872 (regex!8049 (h!62463 rules!1164)) call!338634))))

(declare-fun b!4877772 () Bool)

(declare-fun Unit!146022 () Unit!146016)

(assert (=> b!4877772 (= e!3048693 Unit!146022)))

(declare-fun bm!338628 () Bool)

(assert (=> bm!338628 (= call!338629 (lemmaIsPrefixRefl!3170 lt!1998444 lt!1998444))))

(declare-fun b!4877773 () Bool)

(assert (=> b!4877773 (= e!3048696 (>= (size!36947 (_1!33261 lt!1998741)) (size!36947 Nil!56012)))))

(declare-fun bm!338629 () Bool)

(assert (=> bm!338629 (= call!338631 (tail!9567 lt!1998444))))

(assert (= (and d!1567034 c!829646) b!4877764))

(assert (= (and d!1567034 (not c!829646)) b!4877766))

(assert (= (and b!4877766 c!829649) b!4877771))

(assert (= (and b!4877766 (not c!829649)) b!4877765))

(assert (= (and b!4877771 c!829650) b!4877769))

(assert (= (and b!4877771 (not c!829650)) b!4877761))

(assert (= (and b!4877765 c!829647) b!4877768))

(assert (= (and b!4877765 (not c!829647)) b!4877772))

(assert (= (and b!4877765 c!829645) b!4877767))

(assert (= (and b!4877765 (not c!829645)) b!4877760))

(assert (= (and b!4877767 c!829648) b!4877763))

(assert (= (and b!4877767 (not c!829648)) b!4877762))

(assert (= (or b!4877767 b!4877760) bm!338622))

(assert (= (or b!4877767 b!4877760) bm!338629))

(assert (= (or b!4877767 b!4877760) bm!338627))

(assert (= (or b!4877767 b!4877760) bm!338623))

(assert (= (or b!4877771 b!4877768) bm!338625))

(assert (= (or b!4877771 b!4877768) bm!338626))

(assert (= (or b!4877771 b!4877765) bm!338624))

(assert (= (or b!4877771 b!4877768) bm!338628))

(assert (= (and d!1567034 res!2082192) b!4877770))

(assert (= (and b!4877770 (not res!2082193)) b!4877773))

(assert (=> bm!338623 m!5879606))

(declare-fun m!5880344 () Bool)

(assert (=> bm!338623 m!5880344))

(declare-fun m!5880346 () Bool)

(assert (=> d!1567034 m!5880346))

(declare-fun m!5880348 () Bool)

(assert (=> d!1567034 m!5880348))

(declare-fun m!5880350 () Bool)

(assert (=> d!1567034 m!5880350))

(declare-fun m!5880352 () Bool)

(assert (=> d!1567034 m!5880352))

(declare-fun m!5880354 () Bool)

(assert (=> d!1567034 m!5880354))

(declare-fun m!5880356 () Bool)

(assert (=> d!1567034 m!5880356))

(assert (=> d!1567034 m!5880348))

(declare-fun m!5880358 () Bool)

(assert (=> d!1567034 m!5880358))

(assert (=> d!1567034 m!5880340))

(declare-fun m!5880360 () Bool)

(assert (=> b!4877765 m!5880360))

(assert (=> b!4877765 m!5880346))

(declare-fun m!5880362 () Bool)

(assert (=> b!4877765 m!5880362))

(declare-fun m!5880364 () Bool)

(assert (=> b!4877765 m!5880364))

(declare-fun m!5880366 () Bool)

(assert (=> b!4877765 m!5880366))

(declare-fun m!5880368 () Bool)

(assert (=> b!4877765 m!5880368))

(declare-fun m!5880370 () Bool)

(assert (=> b!4877765 m!5880370))

(assert (=> b!4877765 m!5879606))

(declare-fun m!5880372 () Bool)

(assert (=> b!4877765 m!5880372))

(assert (=> b!4877765 m!5880346))

(declare-fun m!5880374 () Bool)

(assert (=> b!4877765 m!5880374))

(assert (=> b!4877765 m!5880372))

(declare-fun m!5880376 () Bool)

(assert (=> b!4877765 m!5880376))

(declare-fun m!5880378 () Bool)

(assert (=> b!4877765 m!5880378))

(assert (=> b!4877765 m!5880368))

(declare-fun m!5880380 () Bool)

(assert (=> b!4877765 m!5880380))

(assert (=> b!4877765 m!5879604))

(declare-fun m!5880382 () Bool)

(assert (=> b!4877773 m!5880382))

(assert (=> b!4877773 m!5879604))

(declare-fun m!5880384 () Bool)

(assert (=> b!4877770 m!5880384))

(declare-fun m!5880386 () Bool)

(assert (=> bm!338628 m!5880386))

(assert (=> bm!338624 m!5880342))

(assert (=> bm!338622 m!5880362))

(declare-fun m!5880388 () Bool)

(assert (=> bm!338626 m!5880388))

(declare-fun m!5880390 () Bool)

(assert (=> b!4877767 m!5880390))

(declare-fun m!5880392 () Bool)

(assert (=> bm!338625 m!5880392))

(assert (=> bm!338629 m!5880380))

(declare-fun m!5880394 () Bool)

(assert (=> bm!338627 m!5880394))

(assert (=> b!4877139 d!1567034))

(declare-fun d!1567036 () Bool)

(declare-fun lt!1998750 () Int)

(assert (=> d!1567036 (>= lt!1998750 0)))

(declare-fun e!3048700 () Int)

(assert (=> d!1567036 (= lt!1998750 e!3048700)))

(declare-fun c!829651 () Bool)

(assert (=> d!1567036 (= c!829651 (is-Nil!56012 Nil!56012))))

(assert (=> d!1567036 (= (size!36947 Nil!56012) lt!1998750)))

(declare-fun b!4877774 () Bool)

(assert (=> b!4877774 (= e!3048700 0)))

(declare-fun b!4877775 () Bool)

(assert (=> b!4877775 (= e!3048700 (+ 1 (size!36947 (t!364610 Nil!56012))))))

(assert (= (and d!1567036 c!829651) b!4877774))

(assert (= (and d!1567036 (not c!829651)) b!4877775))

(declare-fun m!5880396 () Bool)

(assert (=> b!4877775 m!5880396))

(assert (=> b!4877139 d!1567036))

(declare-fun d!1567038 () Bool)

(declare-fun lt!1998751 () Int)

(assert (=> d!1567038 (>= lt!1998751 0)))

(declare-fun e!3048701 () Int)

(assert (=> d!1567038 (= lt!1998751 e!3048701)))

(declare-fun c!829652 () Bool)

(assert (=> d!1567038 (= c!829652 (is-Nil!56012 lt!1998444))))

(assert (=> d!1567038 (= (size!36947 lt!1998444) lt!1998751)))

(declare-fun b!4877776 () Bool)

(assert (=> b!4877776 (= e!3048701 0)))

(declare-fun b!4877777 () Bool)

(assert (=> b!4877777 (= e!3048701 (+ 1 (size!36947 (t!364610 lt!1998444))))))

(assert (= (and d!1567038 c!829652) b!4877776))

(assert (= (and d!1567038 (not c!829652)) b!4877777))

(declare-fun m!5880398 () Bool)

(assert (=> b!4877777 m!5880398))

(assert (=> b!4877139 d!1567038))

(declare-fun d!1567040 () Bool)

(declare-fun lt!1998752 () Int)

(assert (=> d!1567040 (>= lt!1998752 0)))

(declare-fun e!3048702 () Int)

(assert (=> d!1567040 (= lt!1998752 e!3048702)))

(declare-fun c!829653 () Bool)

(assert (=> d!1567040 (= c!829653 (is-Nil!56014 (t!364612 (_1!33254 lt!1998359))))))

(assert (=> d!1567040 (= (size!36949 (t!364612 (_1!33254 lt!1998359))) lt!1998752)))

(declare-fun b!4877778 () Bool)

(assert (=> b!4877778 (= e!3048702 0)))

(declare-fun b!4877779 () Bool)

(assert (=> b!4877779 (= e!3048702 (+ 1 (size!36949 (t!364612 (t!364612 (_1!33254 lt!1998359))))))))

(assert (= (and d!1567040 c!829653) b!4877778))

(assert (= (and d!1567040 (not c!829653)) b!4877779))

(declare-fun m!5880400 () Bool)

(assert (=> b!4877779 m!5880400))

(assert (=> b!4877231 d!1567040))

(assert (=> d!1566830 d!1566990))

(assert (=> d!1566830 d!1566762))

(declare-fun d!1567042 () Bool)

(declare-fun res!2082198 () Bool)

(declare-fun e!3048705 () Bool)

(assert (=> d!1567042 (=> (not res!2082198) (not e!3048705))))

(assert (=> d!1567042 (= res!2082198 (validRegex!5875 (regex!8049 (h!62463 rules!1164))))))

(assert (=> d!1567042 (= (ruleValid!3637 thiss!11460 (h!62463 rules!1164)) e!3048705)))

(declare-fun b!4877784 () Bool)

(declare-fun res!2082199 () Bool)

(assert (=> b!4877784 (=> (not res!2082199) (not e!3048705))))

(assert (=> b!4877784 (= res!2082199 (not (nullable!4548 (regex!8049 (h!62463 rules!1164)))))))

(declare-fun b!4877785 () Bool)

(assert (=> b!4877785 (= e!3048705 (not (= (tag!8913 (h!62463 rules!1164)) (String!63216 ""))))))

(assert (= (and d!1567042 res!2082198) b!4877784))

(assert (= (and b!4877784 res!2082199) b!4877785))

(assert (=> d!1567042 m!5880340))

(assert (=> b!4877784 m!5880342))

(assert (=> d!1566830 d!1567042))

(declare-fun d!1567044 () Bool)

(assert (=> d!1567044 (= (isDefined!10863 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585))) (not (isEmpty!30014 (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) (list!17543 input!585)))))))

(declare-fun bs!1175172 () Bool)

(assert (= bs!1175172 d!1567044))

(assert (=> bs!1175172 m!5879614))

(declare-fun m!5880402 () Bool)

(assert (=> bs!1175172 m!5880402))

(assert (=> d!1566830 d!1567044))

(declare-fun d!1567046 () Bool)

(declare-fun lt!1998755 () tuple2!59914)

(assert (=> d!1567046 (= (tuple2!59917 (list!17543 (_1!33260 lt!1998755)) (list!17543 (_2!33260 lt!1998755))) (findLongestMatch!1642 (regex!8049 (h!62463 rules!1164)) (list!17543 input!585)))))

(declare-fun choose!35648 (Regex!13124 BalanceConc!28648) tuple2!59914)

(assert (=> d!1567046 (= lt!1998755 (choose!35648 (regex!8049 (h!62463 rules!1164)) input!585))))

(assert (=> d!1567046 (validRegex!5875 (regex!8049 (h!62463 rules!1164)))))

(assert (=> d!1567046 (= (findLongestMatchWithZipperSequence!243 (regex!8049 (h!62463 rules!1164)) input!585) lt!1998755)))

(declare-fun bs!1175173 () Bool)

(assert (= bs!1175173 d!1567046))

(assert (=> bs!1175173 m!5879338))

(assert (=> bs!1175173 m!5880184))

(assert (=> bs!1175173 m!5879338))

(declare-fun m!5880404 () Bool)

(assert (=> bs!1175173 m!5880404))

(declare-fun m!5880406 () Bool)

(assert (=> bs!1175173 m!5880406))

(assert (=> bs!1175173 m!5880340))

(declare-fun m!5880408 () Bool)

(assert (=> bs!1175173 m!5880408))

(assert (=> d!1566830 d!1567046))

(declare-fun d!1567048 () Bool)

(declare-fun lt!1998758 () Bool)

(assert (=> d!1567048 (= lt!1998758 (isEmpty!30012 (list!17543 (_1!33260 lt!1998441))))))

(assert (=> d!1567048 (= lt!1998758 (isEmpty!30018 (c!829488 (_1!33260 lt!1998441))))))

(assert (=> d!1567048 (= (isEmpty!30011 (_1!33260 lt!1998441)) lt!1998758)))

(declare-fun bs!1175174 () Bool)

(assert (= bs!1175174 d!1567048))

(assert (=> bs!1175174 m!5879632))

(assert (=> bs!1175174 m!5879632))

(declare-fun m!5880410 () Bool)

(assert (=> bs!1175174 m!5880410))

(declare-fun m!5880412 () Bool)

(assert (=> bs!1175174 m!5880412))

(assert (=> d!1566830 d!1567048))

(declare-fun d!1567050 () Bool)

(assert (=> d!1567050 (= (isDefined!10862 lt!1998443) (not (isEmpty!30010 lt!1998443)))))

(declare-fun bs!1175175 () Bool)

(assert (= bs!1175175 d!1567050))

(declare-fun m!5880414 () Bool)

(assert (=> bs!1175175 m!5880414))

(assert (=> d!1566830 d!1567050))

(assert (=> d!1566894 d!1566892))

(declare-fun d!1567052 () Bool)

(assert (=> d!1567052 (isPrefix!4773 lt!1998333 lt!1998327)))

(assert (=> d!1567052 true))

(declare-fun _$45!2150 () Unit!146016)

(assert (=> d!1567052 (= (choose!35646 lt!1998333 lt!1998327) _$45!2150)))

(declare-fun bs!1175176 () Bool)

(assert (= bs!1175176 d!1567052))

(assert (=> bs!1175176 m!5879400))

(assert (=> d!1566894 d!1567052))

(declare-fun d!1567054 () Bool)

(assert (=> d!1567054 (= (inv!71951 (tag!8913 (h!62463 (t!364613 (t!364613 rules!1164))))) (= (mod (str.len (value!258539 (tag!8913 (h!62463 (t!364613 (t!364613 rules!1164)))))) 2) 0))))

(assert (=> b!4877369 d!1567054))

(declare-fun d!1567056 () Bool)

(declare-fun res!2082200 () Bool)

(declare-fun e!3048706 () Bool)

(assert (=> d!1567056 (=> (not res!2082200) (not e!3048706))))

(assert (=> d!1567056 (= res!2082200 (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))))))

(assert (=> d!1567056 (= (inv!71954 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) e!3048706)))

(declare-fun b!4877786 () Bool)

(assert (=> b!4877786 (= e!3048706 (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))))))

(assert (= (and d!1567056 res!2082200) b!4877786))

(declare-fun m!5880416 () Bool)

(assert (=> d!1567056 m!5880416))

(declare-fun m!5880418 () Bool)

(assert (=> b!4877786 m!5880418))

(assert (=> b!4877369 d!1567056))

(declare-fun d!1567058 () Bool)

(declare-fun lt!1998759 () Int)

(assert (=> d!1567058 (>= lt!1998759 0)))

(declare-fun e!3048707 () Int)

(assert (=> d!1567058 (= lt!1998759 e!3048707)))

(declare-fun c!829654 () Bool)

(assert (=> d!1567058 (= c!829654 (is-Nil!56012 (t!364610 (list!17543 input!585))))))

(assert (=> d!1567058 (= (size!36947 (t!364610 (list!17543 input!585))) lt!1998759)))

(declare-fun b!4877787 () Bool)

(assert (=> b!4877787 (= e!3048707 0)))

(declare-fun b!4877788 () Bool)

(assert (=> b!4877788 (= e!3048707 (+ 1 (size!36947 (t!364610 (t!364610 (list!17543 input!585))))))))

(assert (= (and d!1567058 c!829654) b!4877787))

(assert (= (and d!1567058 (not c!829654)) b!4877788))

(declare-fun m!5880420 () Bool)

(assert (=> b!4877788 m!5880420))

(assert (=> b!4877081 d!1567058))

(declare-fun d!1567060 () Bool)

(assert (=> d!1567060 (= (height!1940 (left!40688 (c!829488 input!585))) (ite (is-Empty!14603 (left!40688 (c!829488 input!585))) 0 (ite (is-Leaf!24339 (left!40688 (c!829488 input!585))) 1 (cheight!14814 (left!40688 (c!829488 input!585))))))))

(assert (=> b!4877291 d!1567060))

(declare-fun d!1567062 () Bool)

(assert (=> d!1567062 (= (height!1940 (right!41018 (c!829488 input!585))) (ite (is-Empty!14603 (right!41018 (c!829488 input!585))) 0 (ite (is-Leaf!24339 (right!41018 (c!829488 input!585))) 1 (cheight!14814 (right!41018 (c!829488 input!585))))))))

(assert (=> b!4877291 d!1567062))

(declare-fun d!1567064 () Bool)

(declare-fun e!3048710 () Bool)

(assert (=> d!1567064 e!3048710))

(declare-fun res!2082203 () Bool)

(assert (=> d!1567064 (=> res!2082203 e!3048710)))

(assert (=> d!1567064 (= res!2082203 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(declare-fun lt!1998762 () Unit!146016)

(declare-fun choose!35649 (Regex!13124 List!56136) Unit!146016)

(assert (=> d!1567064 (= lt!1998762 (choose!35649 (regex!8049 (h!62463 rules!1164)) lt!1998444))))

(assert (=> d!1567064 (validRegex!5875 (regex!8049 (h!62463 rules!1164)))))

(assert (=> d!1567064 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 rules!1164)) lt!1998444) lt!1998762)))

(declare-fun b!4877791 () Bool)

(assert (=> b!4877791 (= e!3048710 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(assert (= (and d!1567064 (not res!2082203)) b!4877791))

(assert (=> d!1567064 m!5879630))

(assert (=> d!1567064 m!5880340))

(assert (=> d!1567064 m!5879604))

(assert (=> d!1567064 m!5879606))

(assert (=> d!1567064 m!5879608))

(assert (=> d!1567064 m!5879604))

(declare-fun m!5880422 () Bool)

(assert (=> d!1567064 m!5880422))

(assert (=> d!1567064 m!5879606))

(assert (=> b!4877791 m!5879604))

(assert (=> b!4877791 m!5879606))

(assert (=> b!4877791 m!5879604))

(assert (=> b!4877791 m!5879606))

(assert (=> b!4877791 m!5879608))

(assert (=> b!4877791 m!5879610))

(assert (=> b!4877141 d!1567064))

(declare-fun d!1567066 () Bool)

(assert (=> d!1567066 (= (apply!13509 (transformation!8049 (h!62463 rules!1164)) (_1!33260 lt!1998441)) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441)))))

(declare-fun b_lambda!193943 () Bool)

(assert (=> (not b_lambda!193943) (not d!1567066)))

(declare-fun t!364645 () Bool)

(declare-fun tb!258327 () Bool)

(assert (=> (and b!4876841 (= (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364645) tb!258327))

(declare-fun result!321578 () Bool)

(assert (=> tb!258327 (= result!321578 (inv!21 (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441))))))

(declare-fun m!5880424 () Bool)

(assert (=> tb!258327 m!5880424))

(assert (=> d!1567066 t!364645))

(declare-fun b_and!343543 () Bool)

(assert (= b_and!343531 (and (=> t!364645 result!321578) b_and!343543)))

(declare-fun t!364647 () Bool)

(declare-fun tb!258329 () Bool)

(assert (=> (and b!4876979 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364647) tb!258329))

(declare-fun result!321580 () Bool)

(assert (= result!321580 result!321578))

(assert (=> d!1567066 t!364647))

(declare-fun b_and!343545 () Bool)

(assert (= b_and!343533 (and (=> t!364647 result!321580) b_and!343545)))

(declare-fun t!364649 () Bool)

(declare-fun tb!258331 () Bool)

(assert (=> (and b!4877370 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364649) tb!258331))

(declare-fun result!321582 () Bool)

(assert (= result!321582 result!321578))

(assert (=> d!1567066 t!364649))

(declare-fun b_and!343547 () Bool)

(assert (= b_and!343535 (and (=> t!364649 result!321582) b_and!343547)))

(declare-fun m!5880426 () Bool)

(assert (=> d!1567066 m!5880426))

(assert (=> b!4877141 d!1567066))

(assert (=> b!4877141 d!1567034))

(assert (=> b!4877141 d!1567036))

(declare-fun d!1567068 () Bool)

(declare-fun dynLambda!22532 (Int BalanceConc!28648) Bool)

(assert (=> d!1567068 (dynLambda!22532 lambda!243647 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441))))))

(declare-fun lt!1998765 () Unit!146016)

(declare-fun choose!35650 (Int BalanceConc!28648) Unit!146016)

(assert (=> d!1567068 (= lt!1998765 (choose!35650 lambda!243647 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(assert (=> d!1567068 (Forall!1682 lambda!243647)))

(assert (=> d!1567068 (= (ForallOf!1108 lambda!243647 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))) lt!1998765)))

(declare-fun b_lambda!193945 () Bool)

(assert (=> (not b_lambda!193945) (not d!1567068)))

(declare-fun bs!1175177 () Bool)

(assert (= bs!1175177 d!1567068))

(assert (=> bs!1175177 m!5879622))

(declare-fun m!5880428 () Bool)

(assert (=> bs!1175177 m!5880428))

(assert (=> bs!1175177 m!5879622))

(declare-fun m!5880430 () Bool)

(assert (=> bs!1175177 m!5880430))

(declare-fun m!5880432 () Bool)

(assert (=> bs!1175177 m!5880432))

(assert (=> b!4877141 d!1567068))

(declare-fun d!1567070 () Bool)

(declare-fun lt!1998766 () Int)

(assert (=> d!1567070 (= lt!1998766 (size!36947 (list!17543 (_1!33260 lt!1998441))))))

(assert (=> d!1567070 (= lt!1998766 (size!36948 (c!829488 (_1!33260 lt!1998441))))))

(assert (=> d!1567070 (= (size!36943 (_1!33260 lt!1998441)) lt!1998766)))

(declare-fun bs!1175178 () Bool)

(assert (= bs!1175178 d!1567070))

(assert (=> bs!1175178 m!5879632))

(assert (=> bs!1175178 m!5879632))

(declare-fun m!5880434 () Bool)

(assert (=> bs!1175178 m!5880434))

(declare-fun m!5880436 () Bool)

(assert (=> bs!1175178 m!5880436))

(assert (=> b!4877141 d!1567070))

(assert (=> b!4877141 d!1566762))

(declare-fun d!1567072 () Bool)

(assert (=> d!1567072 (= (seqFromList!5905 (list!17543 (_1!33260 lt!1998441))) (fromListB!2686 (list!17543 (_1!33260 lt!1998441))))))

(declare-fun bs!1175179 () Bool)

(assert (= bs!1175179 d!1567072))

(assert (=> bs!1175179 m!5879632))

(declare-fun m!5880438 () Bool)

(assert (=> bs!1175179 m!5880438))

(assert (=> b!4877141 d!1567072))

(declare-fun d!1567074 () Bool)

(assert (=> d!1567074 (= (list!17543 (_1!33260 lt!1998441)) (list!17547 (c!829488 (_1!33260 lt!1998441))))))

(declare-fun bs!1175180 () Bool)

(assert (= bs!1175180 d!1567074))

(declare-fun m!5880440 () Bool)

(assert (=> bs!1175180 m!5880440))

(assert (=> b!4877141 d!1567074))

(declare-fun bs!1175181 () Bool)

(declare-fun d!1567076 () Bool)

(assert (= bs!1175181 (and d!1567076 d!1566888)))

(declare-fun lambda!243678 () Int)

(assert (=> bs!1175181 (= lambda!243678 lambda!243661)))

(declare-fun bs!1175182 () Bool)

(assert (= bs!1175182 (and d!1567076 d!1566954)))

(assert (=> bs!1175182 (= (= (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (= lambda!243678 lambda!243674))))

(declare-fun b!4877798 () Bool)

(declare-fun e!3048716 () Bool)

(assert (=> b!4877798 (= e!3048716 true)))

(assert (=> d!1567076 e!3048716))

(assert (= d!1567076 b!4877798))

(assert (=> b!4877798 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22528 order!25289 lambda!243678))))

(assert (=> b!4877798 (< (dynLambda!22523 order!25283 (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (dynLambda!22528 order!25289 lambda!243678))))

(assert (=> d!1567076 (= (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441)) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(declare-fun lt!1998769 () Unit!146016)

(declare-fun Forall2of!441 (Int BalanceConc!28648 BalanceConc!28648) Unit!146016)

(assert (=> d!1567076 (= lt!1998769 (Forall2of!441 lambda!243678 (_1!33260 lt!1998441) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(assert (=> d!1567076 (= (list!17543 (_1!33260 lt!1998441)) (list!17543 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))))

(assert (=> d!1567076 (= (lemmaEqSameImage!1065 (transformation!8049 (h!62463 rules!1164)) (_1!33260 lt!1998441) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))) lt!1998769)))

(declare-fun b_lambda!193947 () Bool)

(assert (=> (not b_lambda!193947) (not d!1567076)))

(assert (=> d!1567076 t!364645))

(declare-fun b_and!343549 () Bool)

(assert (= b_and!343543 (and (=> t!364645 result!321578) b_and!343549)))

(assert (=> d!1567076 t!364647))

(declare-fun b_and!343551 () Bool)

(assert (= b_and!343545 (and (=> t!364647 result!321580) b_and!343551)))

(assert (=> d!1567076 t!364649))

(declare-fun b_and!343553 () Bool)

(assert (= b_and!343547 (and (=> t!364649 result!321582) b_and!343553)))

(declare-fun b_lambda!193949 () Bool)

(assert (=> (not b_lambda!193949) (not d!1567076)))

(declare-fun t!364651 () Bool)

(declare-fun tb!258333 () Bool)

(assert (=> (and b!4876841 (= (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364651) tb!258333))

(declare-fun result!321584 () Bool)

(assert (=> tb!258333 (= result!321584 (inv!21 (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441))))))))

(declare-fun m!5880442 () Bool)

(assert (=> tb!258333 m!5880442))

(assert (=> d!1567076 t!364651))

(declare-fun b_and!343555 () Bool)

(assert (= b_and!343549 (and (=> t!364651 result!321584) b_and!343555)))

(declare-fun t!364653 () Bool)

(declare-fun tb!258335 () Bool)

(assert (=> (and b!4876979 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364653) tb!258335))

(declare-fun result!321586 () Bool)

(assert (= result!321586 result!321584))

(assert (=> d!1567076 t!364653))

(declare-fun b_and!343557 () Bool)

(assert (= b_and!343551 (and (=> t!364653 result!321586) b_and!343557)))

(declare-fun t!364655 () Bool)

(declare-fun tb!258337 () Bool)

(assert (=> (and b!4877370 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364655) tb!258337))

(declare-fun result!321588 () Bool)

(assert (= result!321588 result!321584))

(assert (=> d!1567076 t!364655))

(declare-fun b_and!343559 () Bool)

(assert (= b_and!343553 (and (=> t!364655 result!321588) b_and!343559)))

(assert (=> d!1567076 m!5879622))

(declare-fun m!5880444 () Bool)

(assert (=> d!1567076 m!5880444))

(assert (=> d!1567076 m!5879622))

(declare-fun m!5880446 () Bool)

(assert (=> d!1567076 m!5880446))

(assert (=> d!1567076 m!5880426))

(assert (=> d!1567076 m!5879632))

(assert (=> d!1567076 m!5879622))

(declare-fun m!5880448 () Bool)

(assert (=> d!1567076 m!5880448))

(assert (=> b!4877141 d!1567076))

(declare-fun d!1567078 () Bool)

(assert (=> d!1567078 (dynLambda!22532 lambda!243647 (_1!33260 lt!1998441))))

(declare-fun lt!1998770 () Unit!146016)

(assert (=> d!1567078 (= lt!1998770 (choose!35650 lambda!243647 (_1!33260 lt!1998441)))))

(assert (=> d!1567078 (Forall!1682 lambda!243647)))

(assert (=> d!1567078 (= (ForallOf!1108 lambda!243647 (_1!33260 lt!1998441)) lt!1998770)))

(declare-fun b_lambda!193951 () Bool)

(assert (=> (not b_lambda!193951) (not d!1567078)))

(declare-fun bs!1175183 () Bool)

(assert (= bs!1175183 d!1567078))

(declare-fun m!5880450 () Bool)

(assert (=> bs!1175183 m!5880450))

(declare-fun m!5880452 () Bool)

(assert (=> bs!1175183 m!5880452))

(assert (=> bs!1175183 m!5880432))

(assert (=> b!4877141 d!1567078))

(declare-fun d!1567080 () Bool)

(declare-fun e!3048720 () Bool)

(assert (=> d!1567080 e!3048720))

(declare-fun res!2082208 () Bool)

(assert (=> d!1567080 (=> (not res!2082208) (not e!3048720))))

(assert (=> d!1567080 (= res!2082208 (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))))))

(declare-fun Unit!146023 () Unit!146016)

(assert (=> d!1567080 (= (lemmaInv!1211 (transformation!8049 (h!62463 rules!1164))) Unit!146023)))

(declare-fun b!4877801 () Bool)

(assert (=> b!4877801 (= e!3048720 (equivClasses!3432 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))))))

(assert (= (and d!1567080 res!2082208) b!4877801))

(assert (=> d!1567080 m!5879440))

(assert (=> b!4877801 m!5879442))

(assert (=> b!4877141 d!1567080))

(assert (=> b!4877141 d!1567038))

(declare-fun d!1567082 () Bool)

(assert (=> d!1567082 (= (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))) (is-Nil!56012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998444 lt!1998444 (size!36947 lt!1998444)))))))

(assert (=> b!4877141 d!1567082))

(declare-fun d!1567084 () Bool)

(declare-fun lt!1998771 () Int)

(assert (=> d!1567084 (>= lt!1998771 0)))

(declare-fun e!3048721 () Int)

(assert (=> d!1567084 (= lt!1998771 e!3048721)))

(declare-fun c!829655 () Bool)

(assert (=> d!1567084 (= c!829655 (is-Nil!56012 (list!17547 (c!829488 input!585))))))

(assert (=> d!1567084 (= (size!36947 (list!17547 (c!829488 input!585))) lt!1998771)))

(declare-fun b!4877802 () Bool)

(assert (=> b!4877802 (= e!3048721 0)))

(declare-fun b!4877803 () Bool)

(assert (=> b!4877803 (= e!3048721 (+ 1 (size!36947 (t!364610 (list!17547 (c!829488 input!585))))))))

(assert (= (and d!1567084 c!829655) b!4877802))

(assert (= (and d!1567084 (not c!829655)) b!4877803))

(declare-fun m!5880454 () Bool)

(assert (=> b!4877803 m!5880454))

(assert (=> d!1566808 d!1567084))

(assert (=> d!1566808 d!1566868))

(declare-fun d!1567086 () Bool)

(assert (=> d!1567086 (= (isDefined!10863 lt!1998506) (not (isEmpty!30014 lt!1998506)))))

(declare-fun bs!1175184 () Bool)

(assert (= bs!1175184 d!1567086))

(assert (=> bs!1175184 m!5879744))

(assert (=> b!4877233 d!1567086))

(declare-fun d!1567088 () Bool)

(assert (=> d!1567088 (= (inv!71962 (xs!17913 (right!41018 (c!829488 input!585)))) (<= (size!36947 (innerList!14691 (xs!17913 (right!41018 (c!829488 input!585))))) 2147483647))))

(declare-fun bs!1175185 () Bool)

(assert (= bs!1175185 d!1567088))

(declare-fun m!5880456 () Bool)

(assert (=> bs!1175185 m!5880456))

(assert (=> b!4877366 d!1567088))

(declare-fun d!1567090 () Bool)

(declare-fun res!2082209 () Bool)

(declare-fun e!3048722 () Bool)

(assert (=> d!1567090 (=> (not res!2082209) (not e!3048722))))

(assert (=> d!1567090 (= res!2082209 (<= (size!36947 (list!17552 (xs!17913 (left!40688 (c!829488 input!585))))) 512))))

(assert (=> d!1567090 (= (inv!71961 (left!40688 (c!829488 input!585))) e!3048722)))

(declare-fun b!4877804 () Bool)

(declare-fun res!2082210 () Bool)

(assert (=> b!4877804 (=> (not res!2082210) (not e!3048722))))

(assert (=> b!4877804 (= res!2082210 (= (csize!29437 (left!40688 (c!829488 input!585))) (size!36947 (list!17552 (xs!17913 (left!40688 (c!829488 input!585)))))))))

(declare-fun b!4877805 () Bool)

(assert (=> b!4877805 (= e!3048722 (and (> (csize!29437 (left!40688 (c!829488 input!585))) 0) (<= (csize!29437 (left!40688 (c!829488 input!585))) 512)))))

(assert (= (and d!1567090 res!2082209) b!4877804))

(assert (= (and b!4877804 res!2082210) b!4877805))

(assert (=> d!1567090 m!5880248))

(assert (=> d!1567090 m!5880248))

(declare-fun m!5880458 () Bool)

(assert (=> d!1567090 m!5880458))

(assert (=> b!4877804 m!5880248))

(assert (=> b!4877804 m!5880248))

(assert (=> b!4877804 m!5880458))

(assert (=> b!4877103 d!1567090))

(declare-fun d!1567092 () Bool)

(assert (=> d!1567092 (= (get!19250 lt!1998388) (v!49745 lt!1998388))))

(assert (=> b!4877069 d!1567092))

(declare-fun d!1567094 () Bool)

(assert (=> d!1567094 (= (get!19251 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))) (v!49747 (maxPrefixZipper!570 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))

(assert (=> b!4877069 d!1567094))

(assert (=> b!4877069 d!1567016))

(assert (=> b!4877069 d!1566762))

(declare-fun d!1567096 () Bool)

(declare-fun choose!35651 (Int) Bool)

(assert (=> d!1567096 (= (Forall!1682 lambda!243658) (choose!35651 lambda!243658))))

(declare-fun bs!1175186 () Bool)

(assert (= bs!1175186 d!1567096))

(declare-fun m!5880460 () Bool)

(assert (=> bs!1175186 m!5880460))

(assert (=> d!1566880 d!1567096))

(declare-fun d!1567098 () Bool)

(declare-fun lt!1998772 () Bool)

(assert (=> d!1567098 (= lt!1998772 (isEmpty!30012 (list!17547 (left!40688 (c!829488 input!585)))))))

(assert (=> d!1567098 (= lt!1998772 (= (size!36948 (left!40688 (c!829488 input!585))) 0))))

(assert (=> d!1567098 (= (isEmpty!30018 (left!40688 (c!829488 input!585))) lt!1998772)))

(declare-fun bs!1175187 () Bool)

(assert (= bs!1175187 d!1567098))

(assert (=> bs!1175187 m!5879782))

(assert (=> bs!1175187 m!5879782))

(declare-fun m!5880462 () Bool)

(assert (=> bs!1175187 m!5880462))

(assert (=> bs!1175187 m!5879726))

(assert (=> b!4877293 d!1567098))

(declare-fun d!1567100 () Bool)

(declare-fun lt!1998775 () Bool)

(declare-fun content!10002 (List!56144) (Set String!63215))

(assert (=> d!1567100 (= lt!1998775 (set.member (tag!8913 (h!62463 rules!1164)) (content!10002 Nil!56020)))))

(declare-fun e!3048727 () Bool)

(assert (=> d!1567100 (= lt!1998775 e!3048727)))

(declare-fun res!2082216 () Bool)

(assert (=> d!1567100 (=> (not res!2082216) (not e!3048727))))

(assert (=> d!1567100 (= res!2082216 (is-Cons!56020 Nil!56020))))

(assert (=> d!1567100 (= (contains!19411 Nil!56020 (tag!8913 (h!62463 rules!1164))) lt!1998775)))

(declare-fun b!4877810 () Bool)

(declare-fun e!3048728 () Bool)

(assert (=> b!4877810 (= e!3048727 e!3048728)))

(declare-fun res!2082215 () Bool)

(assert (=> b!4877810 (=> res!2082215 e!3048728)))

(assert (=> b!4877810 (= res!2082215 (= (h!62468 Nil!56020) (tag!8913 (h!62463 rules!1164))))))

(declare-fun b!4877811 () Bool)

(assert (=> b!4877811 (= e!3048728 (contains!19411 (t!364618 Nil!56020) (tag!8913 (h!62463 rules!1164))))))

(assert (= (and d!1567100 res!2082216) b!4877810))

(assert (= (and b!4877810 (not res!2082215)) b!4877811))

(declare-fun m!5880464 () Bool)

(assert (=> d!1567100 m!5880464))

(declare-fun m!5880466 () Bool)

(assert (=> d!1567100 m!5880466))

(declare-fun m!5880468 () Bool)

(assert (=> b!4877811 m!5880468))

(assert (=> b!4877321 d!1567100))

(declare-fun d!1567102 () Bool)

(declare-fun e!3048729 () Bool)

(assert (=> d!1567102 e!3048729))

(declare-fun res!2082218 () Bool)

(assert (=> d!1567102 (=> res!2082218 e!3048729)))

(declare-fun lt!1998776 () Bool)

(assert (=> d!1567102 (= res!2082218 (not lt!1998776))))

(declare-fun e!3048730 () Bool)

(assert (=> d!1567102 (= lt!1998776 e!3048730)))

(declare-fun res!2082217 () Bool)

(assert (=> d!1567102 (=> res!2082217 e!3048730)))

(assert (=> d!1567102 (= res!2082217 (is-Nil!56012 (tail!9567 lt!1998333)))))

(assert (=> d!1567102 (= (isPrefix!4773 (tail!9567 lt!1998333) (tail!9567 lt!1998327)) lt!1998776)))

(declare-fun b!4877813 () Bool)

(declare-fun res!2082220 () Bool)

(declare-fun e!3048731 () Bool)

(assert (=> b!4877813 (=> (not res!2082220) (not e!3048731))))

(assert (=> b!4877813 (= res!2082220 (= (head!10421 (tail!9567 lt!1998333)) (head!10421 (tail!9567 lt!1998327))))))

(declare-fun b!4877812 () Bool)

(assert (=> b!4877812 (= e!3048730 e!3048731)))

(declare-fun res!2082219 () Bool)

(assert (=> b!4877812 (=> (not res!2082219) (not e!3048731))))

(assert (=> b!4877812 (= res!2082219 (not (is-Nil!56012 (tail!9567 lt!1998327))))))

(declare-fun b!4877814 () Bool)

(assert (=> b!4877814 (= e!3048731 (isPrefix!4773 (tail!9567 (tail!9567 lt!1998333)) (tail!9567 (tail!9567 lt!1998327))))))

(declare-fun b!4877815 () Bool)

(assert (=> b!4877815 (= e!3048729 (>= (size!36947 (tail!9567 lt!1998327)) (size!36947 (tail!9567 lt!1998333))))))

(assert (= (and d!1567102 (not res!2082217)) b!4877812))

(assert (= (and b!4877812 res!2082219) b!4877813))

(assert (= (and b!4877813 res!2082220) b!4877814))

(assert (= (and d!1567102 (not res!2082218)) b!4877815))

(assert (=> b!4877813 m!5879846))

(declare-fun m!5880470 () Bool)

(assert (=> b!4877813 m!5880470))

(assert (=> b!4877813 m!5879848))

(declare-fun m!5880472 () Bool)

(assert (=> b!4877813 m!5880472))

(assert (=> b!4877814 m!5879846))

(declare-fun m!5880474 () Bool)

(assert (=> b!4877814 m!5880474))

(assert (=> b!4877814 m!5879848))

(declare-fun m!5880476 () Bool)

(assert (=> b!4877814 m!5880476))

(assert (=> b!4877814 m!5880474))

(assert (=> b!4877814 m!5880476))

(declare-fun m!5880478 () Bool)

(assert (=> b!4877814 m!5880478))

(assert (=> b!4877815 m!5879848))

(declare-fun m!5880480 () Bool)

(assert (=> b!4877815 m!5880480))

(assert (=> b!4877815 m!5879846))

(declare-fun m!5880482 () Bool)

(assert (=> b!4877815 m!5880482))

(assert (=> b!4877333 d!1567102))

(declare-fun d!1567104 () Bool)

(assert (=> d!1567104 (= (tail!9567 lt!1998333) (t!364610 lt!1998333))))

(assert (=> b!4877333 d!1567104))

(declare-fun d!1567106 () Bool)

(assert (=> d!1567106 (= (tail!9567 lt!1998327) (t!364610 lt!1998327))))

(assert (=> b!4877333 d!1567106))

(declare-fun d!1567108 () Bool)

(assert (=> d!1567108 (= (isEmpty!30014 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585))) (not (is-Some!13805 (maxPrefixZipper!570 thiss!11460 rules!1164 (list!17543 input!585)))))))

(assert (=> d!1566898 d!1567108))

(declare-fun b!4877816 () Bool)

(declare-fun e!3048732 () Bool)

(declare-fun e!3048734 () Bool)

(assert (=> b!4877816 (= e!3048732 e!3048734)))

(declare-fun res!2082222 () Bool)

(assert (=> b!4877816 (=> res!2082222 e!3048734)))

(declare-fun lt!1998780 () Option!13804)

(assert (=> b!4877816 (= res!2082222 (not (isDefined!10862 lt!1998780)))))

(declare-fun b!4877817 () Bool)

(declare-fun e!3048733 () Bool)

(declare-fun e!3048737 () Bool)

(assert (=> b!4877817 (= e!3048733 e!3048737)))

(declare-fun res!2082223 () Bool)

(assert (=> b!4877817 (=> (not res!2082223) (not e!3048737))))

(assert (=> b!4877817 (= res!2082223 (= (_1!33255 (get!19250 lt!1998780)) (_1!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585))))))))

(declare-fun b!4877818 () Bool)

(declare-fun res!2082221 () Bool)

(assert (=> b!4877818 (=> (not res!2082221) (not e!3048732))))

(assert (=> b!4877818 (= res!2082221 e!3048733)))

(declare-fun res!2082225 () Bool)

(assert (=> b!4877818 (=> res!2082225 e!3048733)))

(assert (=> b!4877818 (= res!2082225 (not (isDefined!10862 lt!1998780)))))

(declare-fun b!4877819 () Bool)

(declare-fun e!3048736 () Option!13804)

(declare-fun lt!1998782 () Option!13804)

(declare-fun lt!1998781 () Option!13804)

(assert (=> b!4877819 (= e!3048736 (ite (and (is-None!13803 lt!1998782) (is-None!13803 lt!1998781)) None!13803 (ite (is-None!13803 lt!1998781) lt!1998782 (ite (is-None!13803 lt!1998782) lt!1998781 (ite (>= (size!36942 (_1!33255 (v!49745 lt!1998782))) (size!36942 (_1!33255 (v!49745 lt!1998781)))) lt!1998782 lt!1998781)))))))

(declare-fun call!338635 () Option!13804)

(assert (=> b!4877819 (= lt!1998782 call!338635)))

(assert (=> b!4877819 (= lt!1998781 (maxPrefixZipperSequence!1240 thiss!11460 (t!364613 (t!364613 (t!364613 rules!1164))) input!585))))

(declare-fun d!1567110 () Bool)

(assert (=> d!1567110 e!3048732))

(declare-fun res!2082226 () Bool)

(assert (=> d!1567110 (=> (not res!2082226) (not e!3048732))))

(assert (=> d!1567110 (= res!2082226 (= (isDefined!10862 lt!1998780) (isDefined!10863 (maxPrefixZipper!570 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585)))))))

(assert (=> d!1567110 (= lt!1998780 e!3048736)))

(declare-fun c!829656 () Bool)

(assert (=> d!1567110 (= c!829656 (and (is-Cons!56015 (t!364613 (t!364613 rules!1164))) (is-Nil!56015 (t!364613 (t!364613 (t!364613 rules!1164))))))))

(declare-fun lt!1998778 () Unit!146016)

(declare-fun lt!1998779 () Unit!146016)

(assert (=> d!1567110 (= lt!1998778 lt!1998779)))

(declare-fun lt!1998783 () List!56136)

(declare-fun lt!1998777 () List!56136)

(assert (=> d!1567110 (isPrefix!4773 lt!1998783 lt!1998777)))

(assert (=> d!1567110 (= lt!1998779 (lemmaIsPrefixRefl!3170 lt!1998783 lt!1998777))))

(assert (=> d!1567110 (= lt!1998777 (list!17543 input!585))))

(assert (=> d!1567110 (= lt!1998783 (list!17543 input!585))))

(assert (=> d!1567110 (rulesValidInductive!3028 thiss!11460 (t!364613 (t!364613 rules!1164)))))

(assert (=> d!1567110 (= (maxPrefixZipperSequence!1240 thiss!11460 (t!364613 (t!364613 rules!1164)) input!585) lt!1998780)))

(declare-fun b!4877820 () Bool)

(declare-fun e!3048735 () Bool)

(assert (=> b!4877820 (= e!3048734 e!3048735)))

(declare-fun res!2082224 () Bool)

(assert (=> b!4877820 (=> (not res!2082224) (not e!3048735))))

(assert (=> b!4877820 (= res!2082224 (= (_1!33255 (get!19250 lt!1998780)) (_1!33258 (get!19251 (maxPrefix!4556 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585))))))))

(declare-fun bm!338630 () Bool)

(assert (=> bm!338630 (= call!338635 (maxPrefixOneRuleZipperSequence!583 thiss!11460 (h!62463 (t!364613 (t!364613 rules!1164))) input!585))))

(declare-fun b!4877821 () Bool)

(assert (=> b!4877821 (= e!3048735 (= (list!17543 (_2!33255 (get!19250 lt!1998780))) (_2!33258 (get!19251 (maxPrefix!4556 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585))))))))

(declare-fun b!4877822 () Bool)

(assert (=> b!4877822 (= e!3048736 call!338635)))

(declare-fun b!4877823 () Bool)

(assert (=> b!4877823 (= e!3048737 (= (list!17543 (_2!33255 (get!19250 lt!1998780))) (_2!33258 (get!19251 (maxPrefixZipper!570 thiss!11460 (t!364613 (t!364613 rules!1164)) (list!17543 input!585))))))))

(assert (= (and d!1567110 c!829656) b!4877822))

(assert (= (and d!1567110 (not c!829656)) b!4877819))

(assert (= (or b!4877822 b!4877819) bm!338630))

(assert (= (and d!1567110 res!2082226) b!4877818))

(assert (= (and b!4877818 (not res!2082225)) b!4877817))

(assert (= (and b!4877817 res!2082223) b!4877823))

(assert (= (and b!4877818 res!2082221) b!4877816))

(assert (= (and b!4877816 (not res!2082222)) b!4877820))

(assert (= (and b!4877820 res!2082224) b!4877821))

(declare-fun m!5880484 () Bool)

(assert (=> b!4877818 m!5880484))

(declare-fun m!5880486 () Bool)

(assert (=> b!4877817 m!5880486))

(assert (=> b!4877817 m!5879338))

(assert (=> b!4877817 m!5879338))

(assert (=> b!4877817 m!5880288))

(assert (=> b!4877817 m!5880288))

(declare-fun m!5880488 () Bool)

(assert (=> b!4877817 m!5880488))

(declare-fun m!5880490 () Bool)

(assert (=> bm!338630 m!5880490))

(declare-fun m!5880492 () Bool)

(assert (=> b!4877819 m!5880492))

(assert (=> b!4877823 m!5880486))

(assert (=> b!4877823 m!5879338))

(assert (=> b!4877823 m!5880288))

(assert (=> b!4877823 m!5880288))

(assert (=> b!4877823 m!5880488))

(declare-fun m!5880494 () Bool)

(assert (=> b!4877823 m!5880494))

(assert (=> b!4877823 m!5879338))

(assert (=> d!1567110 m!5880294))

(assert (=> d!1567110 m!5880288))

(declare-fun m!5880496 () Bool)

(assert (=> d!1567110 m!5880496))

(assert (=> d!1567110 m!5879338))

(assert (=> d!1567110 m!5880288))

(declare-fun m!5880498 () Bool)

(assert (=> d!1567110 m!5880498))

(assert (=> d!1567110 m!5880484))

(declare-fun m!5880500 () Bool)

(assert (=> d!1567110 m!5880500))

(assert (=> d!1567110 m!5879338))

(assert (=> b!4877820 m!5880486))

(assert (=> b!4877820 m!5879338))

(assert (=> b!4877820 m!5879338))

(assert (=> b!4877820 m!5880152))

(assert (=> b!4877820 m!5880152))

(declare-fun m!5880502 () Bool)

(assert (=> b!4877820 m!5880502))

(assert (=> b!4877816 m!5880484))

(assert (=> b!4877821 m!5879338))

(assert (=> b!4877821 m!5880152))

(assert (=> b!4877821 m!5880152))

(assert (=> b!4877821 m!5880502))

(assert (=> b!4877821 m!5880486))

(assert (=> b!4877821 m!5880494))

(assert (=> b!4877821 m!5879338))

(assert (=> b!4877071 d!1567110))

(declare-fun d!1567112 () Bool)

(assert (=> d!1567112 (= (isEmpty!30014 lt!1998506) (not (is-Some!13805 lt!1998506)))))

(assert (=> d!1566862 d!1567112))

(declare-fun d!1567114 () Bool)

(declare-fun e!3048738 () Bool)

(assert (=> d!1567114 e!3048738))

(declare-fun res!2082228 () Bool)

(assert (=> d!1567114 (=> res!2082228 e!3048738)))

(declare-fun lt!1998784 () Bool)

(assert (=> d!1567114 (= res!2082228 (not lt!1998784))))

(declare-fun e!3048739 () Bool)

(assert (=> d!1567114 (= lt!1998784 e!3048739)))

(declare-fun res!2082227 () Bool)

(assert (=> d!1567114 (=> res!2082227 e!3048739)))

(assert (=> d!1567114 (= res!2082227 (is-Nil!56012 lt!1998299))))

(assert (=> d!1567114 (= (isPrefix!4773 lt!1998299 lt!1998299) lt!1998784)))

(declare-fun b!4877825 () Bool)

(declare-fun res!2082230 () Bool)

(declare-fun e!3048740 () Bool)

(assert (=> b!4877825 (=> (not res!2082230) (not e!3048740))))

(assert (=> b!4877825 (= res!2082230 (= (head!10421 lt!1998299) (head!10421 lt!1998299)))))

(declare-fun b!4877824 () Bool)

(assert (=> b!4877824 (= e!3048739 e!3048740)))

(declare-fun res!2082229 () Bool)

(assert (=> b!4877824 (=> (not res!2082229) (not e!3048740))))

(assert (=> b!4877824 (= res!2082229 (not (is-Nil!56012 lt!1998299)))))

(declare-fun b!4877826 () Bool)

(assert (=> b!4877826 (= e!3048740 (isPrefix!4773 (tail!9567 lt!1998299) (tail!9567 lt!1998299)))))

(declare-fun b!4877827 () Bool)

(assert (=> b!4877827 (= e!3048738 (>= (size!36947 lt!1998299) (size!36947 lt!1998299)))))

(assert (= (and d!1567114 (not res!2082227)) b!4877824))

(assert (= (and b!4877824 res!2082229) b!4877825))

(assert (= (and b!4877825 res!2082230) b!4877826))

(assert (= (and d!1567114 (not res!2082228)) b!4877827))

(declare-fun m!5880504 () Bool)

(assert (=> b!4877825 m!5880504))

(assert (=> b!4877825 m!5880504))

(declare-fun m!5880506 () Bool)

(assert (=> b!4877826 m!5880506))

(assert (=> b!4877826 m!5880506))

(assert (=> b!4877826 m!5880506))

(assert (=> b!4877826 m!5880506))

(declare-fun m!5880508 () Bool)

(assert (=> b!4877826 m!5880508))

(assert (=> b!4877827 m!5879422))

(assert (=> b!4877827 m!5879422))

(assert (=> d!1566862 d!1567114))

(declare-fun d!1567116 () Bool)

(assert (=> d!1567116 (isPrefix!4773 lt!1998299 lt!1998299)))

(declare-fun lt!1998785 () Unit!146016)

(assert (=> d!1567116 (= lt!1998785 (choose!35646 lt!1998299 lt!1998299))))

(assert (=> d!1567116 (= (lemmaIsPrefixRefl!3170 lt!1998299 lt!1998299) lt!1998785)))

(declare-fun bs!1175188 () Bool)

(assert (= bs!1175188 d!1567116))

(assert (=> bs!1175188 m!5879746))

(declare-fun m!5880510 () Bool)

(assert (=> bs!1175188 m!5880510))

(assert (=> d!1566862 d!1567116))

(assert (=> d!1566862 d!1566896))

(declare-fun d!1567118 () Bool)

(assert (=> d!1567118 (= (get!19251 lt!1998506) (v!49747 lt!1998506))))

(assert (=> b!4877235 d!1567118))

(declare-fun d!1567120 () Bool)

(assert (=> d!1567120 (= (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506))))) (dynLambda!22529 (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun b_lambda!193953 () Bool)

(assert (=> (not b_lambda!193953) (not d!1567120)))

(declare-fun tb!258339 () Bool)

(declare-fun t!364657 () Bool)

(assert (=> (and b!4876841 (= (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364657) tb!258339))

(declare-fun result!321590 () Bool)

(assert (=> tb!258339 (= result!321590 (inv!21 (dynLambda!22529 (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun m!5880512 () Bool)

(assert (=> tb!258339 m!5880512))

(assert (=> d!1567120 t!364657))

(declare-fun b_and!343561 () Bool)

(assert (= b_and!343555 (and (=> t!364657 result!321590) b_and!343561)))

(declare-fun tb!258341 () Bool)

(declare-fun t!364659 () Bool)

(assert (=> (and b!4876979 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364659) tb!258341))

(declare-fun result!321592 () Bool)

(assert (= result!321592 result!321590))

(assert (=> d!1567120 t!364659))

(declare-fun b_and!343563 () Bool)

(assert (= b_and!343557 (and (=> t!364659 result!321592) b_and!343563)))

(declare-fun tb!258343 () Bool)

(declare-fun t!364661 () Bool)

(assert (=> (and b!4877370 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364661) tb!258343))

(declare-fun result!321594 () Bool)

(assert (= result!321594 result!321590))

(assert (=> d!1567120 t!364661))

(declare-fun b_and!343565 () Bool)

(assert (= b_and!343559 (and (=> t!364661 result!321594) b_and!343565)))

(assert (=> d!1567120 m!5879764))

(declare-fun m!5880514 () Bool)

(assert (=> d!1567120 m!5880514))

(assert (=> b!4877235 d!1567120))

(declare-fun d!1567122 () Bool)

(assert (=> d!1567122 (= (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506)))) (fromListB!2686 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506)))))))

(declare-fun bs!1175189 () Bool)

(assert (= bs!1175189 d!1567122))

(declare-fun m!5880516 () Bool)

(assert (=> bs!1175189 m!5880516))

(assert (=> b!4877235 d!1567122))

(declare-fun b!4877829 () Bool)

(declare-fun res!2082232 () Bool)

(declare-fun e!3048748 () Bool)

(assert (=> b!4877829 (=> res!2082232 e!3048748)))

(declare-fun e!3048745 () Bool)

(assert (=> b!4877829 (= res!2082232 e!3048745)))

(declare-fun res!2082231 () Bool)

(assert (=> b!4877829 (=> (not res!2082231) (not e!3048745))))

(declare-fun lt!1998786 () Bool)

(assert (=> b!4877829 (= res!2082231 lt!1998786)))

(declare-fun b!4877830 () Bool)

(assert (=> b!4877830 (= e!3048745 (= (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (c!829487 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun b!4877831 () Bool)

(declare-fun res!2082235 () Bool)

(assert (=> b!4877831 (=> res!2082235 e!3048748)))

(assert (=> b!4877831 (= res!2082235 (not (is-ElementMatch!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun e!3048742 () Bool)

(assert (=> b!4877831 (= e!3048742 e!3048748)))

(declare-fun b!4877832 () Bool)

(declare-fun e!3048747 () Bool)

(declare-fun e!3048744 () Bool)

(assert (=> b!4877832 (= e!3048747 e!3048744)))

(declare-fun res!2082237 () Bool)

(assert (=> b!4877832 (=> res!2082237 e!3048744)))

(declare-fun call!338636 () Bool)

(assert (=> b!4877832 (= res!2082237 call!338636)))

(declare-fun b!4877833 () Bool)

(assert (=> b!4877833 (= e!3048744 (not (= (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (c!829487 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))))))))

(declare-fun b!4877834 () Bool)

(declare-fun res!2082233 () Bool)

(assert (=> b!4877834 (=> (not res!2082233) (not e!3048745))))

(assert (=> b!4877834 (= res!2082233 (not call!338636))))

(declare-fun b!4877835 () Bool)

(assert (=> b!4877835 (= e!3048742 (not lt!1998786))))

(declare-fun b!4877836 () Bool)

(declare-fun res!2082236 () Bool)

(assert (=> b!4877836 (=> res!2082236 e!3048744)))

(assert (=> b!4877836 (= res!2082236 (not (isEmpty!30012 (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))))

(declare-fun d!1567124 () Bool)

(declare-fun e!3048743 () Bool)

(assert (=> d!1567124 e!3048743))

(declare-fun c!829659 () Bool)

(assert (=> d!1567124 (= c!829659 (is-EmptyExpr!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun e!3048746 () Bool)

(assert (=> d!1567124 (= lt!1998786 e!3048746)))

(declare-fun c!829658 () Bool)

(assert (=> d!1567124 (= c!829658 (isEmpty!30012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))

(assert (=> d!1567124 (validRegex!5875 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))

(assert (=> d!1567124 (= (matchR!6499 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) lt!1998786)))

(declare-fun b!4877828 () Bool)

(assert (=> b!4877828 (= e!3048743 e!3048742)))

(declare-fun c!829657 () Bool)

(assert (=> b!4877828 (= c!829657 (is-EmptyLang!13124 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun b!4877837 () Bool)

(declare-fun res!2082238 () Bool)

(assert (=> b!4877837 (=> (not res!2082238) (not e!3048745))))

(assert (=> b!4877837 (= res!2082238 (isEmpty!30012 (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun b!4877838 () Bool)

(assert (=> b!4877838 (= e!3048748 e!3048747)))

(declare-fun res!2082234 () Bool)

(assert (=> b!4877838 (=> (not res!2082234) (not e!3048747))))

(assert (=> b!4877838 (= res!2082234 (not lt!1998786))))

(declare-fun b!4877839 () Bool)

(assert (=> b!4877839 (= e!3048743 (= lt!1998786 call!338636))))

(declare-fun bm!338631 () Bool)

(assert (=> bm!338631 (= call!338636 (isEmpty!30012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun b!4877840 () Bool)

(assert (=> b!4877840 (= e!3048746 (nullable!4548 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun b!4877841 () Bool)

(assert (=> b!4877841 (= e!3048746 (matchR!6499 (derivativeStep!3872 (regex!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) (head!10421 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))))) (tail!9567 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))))))))

(assert (= (and d!1567124 c!829658) b!4877840))

(assert (= (and d!1567124 (not c!829658)) b!4877841))

(assert (= (and d!1567124 c!829659) b!4877839))

(assert (= (and d!1567124 (not c!829659)) b!4877828))

(assert (= (and b!4877828 c!829657) b!4877835))

(assert (= (and b!4877828 (not c!829657)) b!4877831))

(assert (= (and b!4877831 (not res!2082235)) b!4877829))

(assert (= (and b!4877829 res!2082231) b!4877834))

(assert (= (and b!4877834 res!2082233) b!4877837))

(assert (= (and b!4877837 res!2082238) b!4877830))

(assert (= (and b!4877829 (not res!2082232)) b!4877838))

(assert (= (and b!4877838 res!2082234) b!4877832))

(assert (= (and b!4877832 (not res!2082237)) b!4877836))

(assert (= (and b!4877836 (not res!2082236)) b!4877833))

(assert (= (or b!4877839 b!4877832 b!4877834) bm!338631))

(assert (=> b!4877841 m!5879752))

(declare-fun m!5880518 () Bool)

(assert (=> b!4877841 m!5880518))

(assert (=> b!4877841 m!5880518))

(declare-fun m!5880520 () Bool)

(assert (=> b!4877841 m!5880520))

(assert (=> b!4877841 m!5879752))

(declare-fun m!5880522 () Bool)

(assert (=> b!4877841 m!5880522))

(assert (=> b!4877841 m!5880520))

(assert (=> b!4877841 m!5880522))

(declare-fun m!5880524 () Bool)

(assert (=> b!4877841 m!5880524))

(assert (=> b!4877830 m!5879752))

(assert (=> b!4877830 m!5880518))

(assert (=> b!4877833 m!5879752))

(assert (=> b!4877833 m!5880518))

(assert (=> b!4877836 m!5879752))

(assert (=> b!4877836 m!5880522))

(assert (=> b!4877836 m!5880522))

(declare-fun m!5880526 () Bool)

(assert (=> b!4877836 m!5880526))

(assert (=> b!4877837 m!5879752))

(assert (=> b!4877837 m!5880522))

(assert (=> b!4877837 m!5880522))

(assert (=> b!4877837 m!5880526))

(assert (=> bm!338631 m!5879752))

(declare-fun m!5880528 () Bool)

(assert (=> bm!338631 m!5880528))

(assert (=> d!1567124 m!5879752))

(assert (=> d!1567124 m!5880528))

(declare-fun m!5880530 () Bool)

(assert (=> d!1567124 m!5880530))

(declare-fun m!5880532 () Bool)

(assert (=> b!4877840 m!5880532))

(assert (=> b!4877238 d!1567124))

(assert (=> b!4877238 d!1567118))

(declare-fun d!1567126 () Bool)

(assert (=> d!1567126 (= (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))) (list!17547 (c!829488 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))

(declare-fun bs!1175190 () Bool)

(assert (= bs!1175190 d!1567126))

(declare-fun m!5880534 () Bool)

(assert (=> bs!1175190 m!5880534))

(assert (=> b!4877238 d!1567126))

(declare-fun d!1567128 () Bool)

(declare-fun lt!1998787 () BalanceConc!28648)

(assert (=> d!1567128 (= (list!17543 lt!1998787) (originalCharacters!8372 (_1!33258 (get!19251 lt!1998506))))))

(assert (=> d!1567128 (= lt!1998787 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))) (value!258540 (_1!33258 (get!19251 lt!1998506)))))))

(assert (=> d!1567128 (= (charsOf!5348 (_1!33258 (get!19251 lt!1998506))) lt!1998787)))

(declare-fun b_lambda!193955 () Bool)

(assert (=> (not b_lambda!193955) (not d!1567128)))

(declare-fun t!364663 () Bool)

(declare-fun tb!258345 () Bool)

(assert (=> (and b!4876841 (= (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364663) tb!258345))

(declare-fun b!4877842 () Bool)

(declare-fun e!3048749 () Bool)

(declare-fun tp!1372361 () Bool)

(assert (=> b!4877842 (= e!3048749 (and (inv!71955 (c!829488 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))) (value!258540 (_1!33258 (get!19251 lt!1998506)))))) tp!1372361))))

(declare-fun result!321596 () Bool)

(assert (=> tb!258345 (= result!321596 (and (inv!71956 (dynLambda!22531 (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506))))) (value!258540 (_1!33258 (get!19251 lt!1998506))))) e!3048749))))

(assert (= tb!258345 b!4877842))

(declare-fun m!5880536 () Bool)

(assert (=> b!4877842 m!5880536))

(declare-fun m!5880538 () Bool)

(assert (=> tb!258345 m!5880538))

(assert (=> d!1567128 t!364663))

(declare-fun b_and!343567 () Bool)

(assert (= b_and!343537 (and (=> t!364663 result!321596) b_and!343567)))

(declare-fun tb!258347 () Bool)

(declare-fun t!364665 () Bool)

(assert (=> (and b!4876979 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364665) tb!258347))

(declare-fun result!321598 () Bool)

(assert (= result!321598 result!321596))

(assert (=> d!1567128 t!364665))

(declare-fun b_and!343569 () Bool)

(assert (= b_and!343539 (and (=> t!364665 result!321598) b_and!343569)))

(declare-fun tb!258349 () Bool)

(declare-fun t!364667 () Bool)

(assert (=> (and b!4877370 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364667) tb!258349))

(declare-fun result!321600 () Bool)

(assert (= result!321600 result!321596))

(assert (=> d!1567128 t!364667))

(declare-fun b_and!343571 () Bool)

(assert (= b_and!343541 (and (=> t!364667 result!321600) b_and!343571)))

(declare-fun m!5880540 () Bool)

(assert (=> d!1567128 m!5880540))

(declare-fun m!5880542 () Bool)

(assert (=> d!1567128 m!5880542))

(assert (=> b!4877238 d!1567128))

(declare-fun d!1567130 () Bool)

(declare-fun lt!1998788 () Int)

(assert (=> d!1567130 (>= lt!1998788 0)))

(declare-fun e!3048750 () Int)

(assert (=> d!1567130 (= lt!1998788 e!3048750)))

(declare-fun c!829660 () Bool)

(assert (=> d!1567130 (= c!829660 (is-Nil!56012 (_2!33258 (get!19251 lt!1998506))))))

(assert (=> d!1567130 (= (size!36947 (_2!33258 (get!19251 lt!1998506))) lt!1998788)))

(declare-fun b!4877843 () Bool)

(assert (=> b!4877843 (= e!3048750 0)))

(declare-fun b!4877844 () Bool)

(assert (=> b!4877844 (= e!3048750 (+ 1 (size!36947 (t!364610 (_2!33258 (get!19251 lt!1998506))))))))

(assert (= (and d!1567130 c!829660) b!4877843))

(assert (= (and d!1567130 (not c!829660)) b!4877844))

(declare-fun m!5880544 () Bool)

(assert (=> b!4877844 m!5880544))

(assert (=> b!4877237 d!1567130))

(assert (=> b!4877237 d!1567118))

(assert (=> b!4877237 d!1566874))

(declare-fun bs!1175191 () Bool)

(declare-fun b!4877850 () Bool)

(assert (= bs!1175191 (and b!4877850 b!4877141)))

(declare-fun lambda!243679 () Int)

(assert (=> bs!1175191 (= (and (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (= lambda!243679 lambda!243647))))

(declare-fun bs!1175192 () Bool)

(assert (= bs!1175192 (and b!4877850 d!1566880)))

(assert (=> bs!1175192 (= (and (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (= lambda!243679 lambda!243658))))

(declare-fun b!4877852 () Bool)

(declare-fun e!3048757 () Bool)

(assert (=> b!4877852 (= e!3048757 true)))

(declare-fun b!4877851 () Bool)

(declare-fun e!3048756 () Bool)

(assert (=> b!4877851 (= e!3048756 e!3048757)))

(assert (=> b!4877850 e!3048756))

(assert (= b!4877851 b!4877852))

(assert (= b!4877850 b!4877851))

(assert (=> b!4877852 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (dynLambda!22522 order!25281 lambda!243679))))

(assert (=> b!4877852 (< (dynLambda!22523 order!25283 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (dynLambda!22522 order!25281 lambda!243679))))

(declare-fun b!4877845 () Bool)

(declare-fun e!3048752 () Bool)

(declare-fun e!3048753 () Bool)

(assert (=> b!4877845 (= e!3048752 e!3048753)))

(declare-fun res!2082239 () Bool)

(assert (=> b!4877845 (=> (not res!2082239) (not e!3048753))))

(declare-fun lt!1998792 () Option!13804)

(assert (=> b!4877845 (= res!2082239 (= (_1!33255 (get!19250 lt!1998792)) (_1!33258 (get!19251 (maxPrefixOneRule!3498 thiss!11460 (h!62463 (t!364613 rules!1164)) (list!17543 input!585))))))))

(declare-fun b!4877846 () Bool)

(declare-fun e!3048754 () Option!13804)

(assert (=> b!4877846 (= e!3048754 None!13803)))

(declare-fun b!4877847 () Bool)

(assert (=> b!4877847 (= e!3048753 (= (list!17543 (_2!33255 (get!19250 lt!1998792))) (_2!33258 (get!19251 (maxPrefixOneRule!3498 thiss!11460 (h!62463 (t!364613 rules!1164)) (list!17543 input!585))))))))

(declare-fun d!1567132 () Bool)

(declare-fun e!3048755 () Bool)

(assert (=> d!1567132 e!3048755))

(declare-fun res!2082240 () Bool)

(assert (=> d!1567132 (=> (not res!2082240) (not e!3048755))))

(assert (=> d!1567132 (= res!2082240 (= (isDefined!10862 lt!1998792) (isDefined!10863 (maxPrefixOneRule!3498 thiss!11460 (h!62463 (t!364613 rules!1164)) (list!17543 input!585)))))))

(assert (=> d!1567132 (= lt!1998792 e!3048754)))

(declare-fun c!829661 () Bool)

(declare-fun lt!1998790 () tuple2!59914)

(assert (=> d!1567132 (= c!829661 (isEmpty!30011 (_1!33260 lt!1998790)))))

(assert (=> d!1567132 (= lt!1998790 (findLongestMatchWithZipperSequence!243 (regex!8049 (h!62463 (t!364613 rules!1164))) input!585))))

(assert (=> d!1567132 (ruleValid!3637 thiss!11460 (h!62463 (t!364613 rules!1164)))))

(assert (=> d!1567132 (= (maxPrefixOneRuleZipperSequence!583 thiss!11460 (h!62463 (t!364613 rules!1164)) input!585) lt!1998792)))

(declare-fun b!4877848 () Bool)

(declare-fun e!3048751 () Bool)

(declare-fun lt!1998793 () List!56136)

(assert (=> b!4877848 (= e!3048751 (matchR!6499 (regex!8049 (h!62463 (t!364613 rules!1164))) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 (t!364613 rules!1164))) Nil!56012 (size!36947 Nil!56012) lt!1998793 lt!1998793 (size!36947 lt!1998793)))))))

(declare-fun b!4877849 () Bool)

(assert (=> b!4877849 (= e!3048755 e!3048752)))

(declare-fun res!2082242 () Bool)

(assert (=> b!4877849 (=> res!2082242 e!3048752)))

(assert (=> b!4877849 (= res!2082242 (not (isDefined!10862 lt!1998792)))))

(assert (=> b!4877850 (= e!3048754 (Some!13803 (tuple2!59905 (Token!14683 (apply!13509 (transformation!8049 (h!62463 (t!364613 rules!1164))) (_1!33260 lt!1998790)) (h!62463 (t!364613 rules!1164)) (size!36943 (_1!33260 lt!1998790)) (list!17543 (_1!33260 lt!1998790))) (_2!33260 lt!1998790))))))

(assert (=> b!4877850 (= lt!1998793 (list!17543 input!585))))

(declare-fun lt!1998796 () Unit!146016)

(assert (=> b!4877850 (= lt!1998796 (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 (t!364613 rules!1164))) lt!1998793))))

(declare-fun res!2082241 () Bool)

(assert (=> b!4877850 (= res!2082241 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 (t!364613 rules!1164))) Nil!56012 (size!36947 Nil!56012) lt!1998793 lt!1998793 (size!36947 lt!1998793)))))))

(assert (=> b!4877850 (=> res!2082241 e!3048751)))

(assert (=> b!4877850 e!3048751))

(declare-fun lt!1998798 () Unit!146016)

(assert (=> b!4877850 (= lt!1998798 lt!1998796)))

(declare-fun lt!1998789 () Unit!146016)

(assert (=> b!4877850 (= lt!1998789 (lemmaInv!1211 (transformation!8049 (h!62463 (t!364613 rules!1164)))))))

(declare-fun lt!1998797 () Unit!146016)

(assert (=> b!4877850 (= lt!1998797 (ForallOf!1108 lambda!243679 (_1!33260 lt!1998790)))))

(declare-fun lt!1998791 () Unit!146016)

(assert (=> b!4877850 (= lt!1998791 (ForallOf!1108 lambda!243679 (seqFromList!5905 (list!17543 (_1!33260 lt!1998790)))))))

(declare-fun lt!1998794 () Option!13804)

(assert (=> b!4877850 (= lt!1998794 (Some!13803 (tuple2!59905 (Token!14683 (apply!13509 (transformation!8049 (h!62463 (t!364613 rules!1164))) (_1!33260 lt!1998790)) (h!62463 (t!364613 rules!1164)) (size!36943 (_1!33260 lt!1998790)) (list!17543 (_1!33260 lt!1998790))) (_2!33260 lt!1998790))))))

(declare-fun lt!1998795 () Unit!146016)

(assert (=> b!4877850 (= lt!1998795 (lemmaEqSameImage!1065 (transformation!8049 (h!62463 (t!364613 rules!1164))) (_1!33260 lt!1998790) (seqFromList!5905 (list!17543 (_1!33260 lt!1998790)))))))

(assert (= (and d!1567132 c!829661) b!4877846))

(assert (= (and d!1567132 (not c!829661)) b!4877850))

(assert (= (and b!4877850 (not res!2082241)) b!4877848))

(assert (= (and d!1567132 res!2082240) b!4877849))

(assert (= (and b!4877849 (not res!2082242)) b!4877845))

(assert (= (and b!4877845 res!2082239) b!4877847))

(declare-fun m!5880546 () Bool)

(assert (=> b!4877849 m!5880546))

(assert (=> b!4877848 m!5879604))

(declare-fun m!5880548 () Bool)

(assert (=> b!4877848 m!5880548))

(assert (=> b!4877848 m!5879604))

(assert (=> b!4877848 m!5880548))

(declare-fun m!5880550 () Bool)

(assert (=> b!4877848 m!5880550))

(declare-fun m!5880552 () Bool)

(assert (=> b!4877848 m!5880552))

(declare-fun m!5880554 () Bool)

(assert (=> b!4877847 m!5880554))

(assert (=> b!4877847 m!5879338))

(assert (=> b!4877847 m!5880144))

(declare-fun m!5880556 () Bool)

(assert (=> b!4877847 m!5880556))

(assert (=> b!4877847 m!5880144))

(declare-fun m!5880558 () Bool)

(assert (=> b!4877847 m!5880558))

(assert (=> b!4877847 m!5879338))

(assert (=> b!4877845 m!5880554))

(assert (=> b!4877845 m!5879338))

(assert (=> b!4877845 m!5879338))

(assert (=> b!4877845 m!5880144))

(assert (=> b!4877845 m!5880144))

(assert (=> b!4877845 m!5880558))

(declare-fun m!5880560 () Bool)

(assert (=> b!4877850 m!5880560))

(declare-fun m!5880562 () Bool)

(assert (=> b!4877850 m!5880562))

(declare-fun m!5880564 () Bool)

(assert (=> b!4877850 m!5880564))

(assert (=> b!4877850 m!5880562))

(declare-fun m!5880566 () Bool)

(assert (=> b!4877850 m!5880566))

(declare-fun m!5880568 () Bool)

(assert (=> b!4877850 m!5880568))

(assert (=> b!4877850 m!5880548))

(declare-fun m!5880570 () Bool)

(assert (=> b!4877850 m!5880570))

(assert (=> b!4877850 m!5879604))

(assert (=> b!4877850 m!5880548))

(assert (=> b!4877850 m!5880550))

(declare-fun m!5880572 () Bool)

(assert (=> b!4877850 m!5880572))

(declare-fun m!5880574 () Bool)

(assert (=> b!4877850 m!5880574))

(declare-fun m!5880576 () Bool)

(assert (=> b!4877850 m!5880576))

(assert (=> b!4877850 m!5879604))

(declare-fun m!5880578 () Bool)

(assert (=> b!4877850 m!5880578))

(assert (=> b!4877850 m!5880572))

(assert (=> b!4877850 m!5880562))

(assert (=> b!4877850 m!5879338))

(assert (=> d!1567132 m!5880292))

(assert (=> d!1567132 m!5879338))

(assert (=> d!1567132 m!5880144))

(declare-fun m!5880580 () Bool)

(assert (=> d!1567132 m!5880580))

(declare-fun m!5880582 () Bool)

(assert (=> d!1567132 m!5880582))

(assert (=> d!1567132 m!5880144))

(declare-fun m!5880584 () Bool)

(assert (=> d!1567132 m!5880584))

(assert (=> d!1567132 m!5880546))

(assert (=> d!1567132 m!5879338))

(assert (=> bm!338582 d!1567132))

(assert (=> b!4877198 d!1566994))

(assert (=> b!4877198 d!1566996))

(assert (=> b!4877198 d!1566960))

(declare-fun d!1567134 () Bool)

(declare-fun lt!1998801 () Bool)

(declare-fun content!10003 (List!56139) (Set Rule!15898))

(assert (=> d!1567134 (= lt!1998801 (set.member (rule!11205 (_1!33258 (get!19251 lt!1998506))) (content!10003 rules!1164)))))

(declare-fun e!3048762 () Bool)

(assert (=> d!1567134 (= lt!1998801 e!3048762)))

(declare-fun res!2082248 () Bool)

(assert (=> d!1567134 (=> (not res!2082248) (not e!3048762))))

(assert (=> d!1567134 (= res!2082248 (is-Cons!56015 rules!1164))))

(assert (=> d!1567134 (= (contains!19409 rules!1164 (rule!11205 (_1!33258 (get!19251 lt!1998506)))) lt!1998801)))

(declare-fun b!4877857 () Bool)

(declare-fun e!3048763 () Bool)

(assert (=> b!4877857 (= e!3048762 e!3048763)))

(declare-fun res!2082247 () Bool)

(assert (=> b!4877857 (=> res!2082247 e!3048763)))

(assert (=> b!4877857 (= res!2082247 (= (h!62463 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))

(declare-fun b!4877858 () Bool)

(assert (=> b!4877858 (= e!3048763 (contains!19409 (t!364613 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998506)))))))

(assert (= (and d!1567134 res!2082248) b!4877857))

(assert (= (and b!4877857 (not res!2082247)) b!4877858))

(declare-fun m!5880586 () Bool)

(assert (=> d!1567134 m!5880586))

(declare-fun m!5880588 () Bool)

(assert (=> d!1567134 m!5880588))

(declare-fun m!5880590 () Bool)

(assert (=> b!4877858 m!5880590))

(assert (=> b!4877239 d!1567134))

(assert (=> b!4877239 d!1567118))

(declare-fun d!1567136 () Bool)

(assert (=> d!1567136 (= (list!17543 (_2!33255 (get!19250 lt!1998388))) (list!17547 (c!829488 (_2!33255 (get!19250 lt!1998388)))))))

(declare-fun bs!1175193 () Bool)

(assert (= bs!1175193 d!1567136))

(declare-fun m!5880592 () Bool)

(assert (=> bs!1175193 m!5880592))

(assert (=> b!4877075 d!1567136))

(assert (=> b!4877075 d!1567092))

(assert (=> b!4877075 d!1567016))

(assert (=> b!4877075 d!1566762))

(assert (=> b!4877075 d!1567094))

(declare-fun d!1567138 () Bool)

(declare-fun lt!1998802 () Int)

(assert (=> d!1567138 (>= lt!1998802 0)))

(declare-fun e!3048764 () Int)

(assert (=> d!1567138 (= lt!1998802 e!3048764)))

(declare-fun c!829662 () Bool)

(assert (=> d!1567138 (= c!829662 (is-Nil!56012 (list!17552 (xs!17913 (c!829488 input!585)))))))

(assert (=> d!1567138 (= (size!36947 (list!17552 (xs!17913 (c!829488 input!585)))) lt!1998802)))

(declare-fun b!4877859 () Bool)

(assert (=> b!4877859 (= e!3048764 0)))

(declare-fun b!4877860 () Bool)

(assert (=> b!4877860 (= e!3048764 (+ 1 (size!36947 (t!364610 (list!17552 (xs!17913 (c!829488 input!585)))))))))

(assert (= (and d!1567138 c!829662) b!4877859))

(assert (= (and d!1567138 (not c!829662)) b!4877860))

(declare-fun m!5880594 () Bool)

(assert (=> b!4877860 m!5880594))

(assert (=> d!1566850 d!1567138))

(declare-fun d!1567140 () Bool)

(assert (=> d!1567140 (= (list!17552 (xs!17913 (c!829488 input!585))) (innerList!14691 (xs!17913 (c!829488 input!585))))))

(assert (=> d!1566850 d!1567140))

(declare-fun d!1567142 () Bool)

(assert (=> d!1567142 (= (inv!71962 (xs!17913 (left!40688 (c!829488 input!585)))) (<= (size!36947 (innerList!14691 (xs!17913 (left!40688 (c!829488 input!585))))) 2147483647))))

(declare-fun bs!1175194 () Bool)

(assert (= bs!1175194 d!1567142))

(declare-fun m!5880596 () Bool)

(assert (=> bs!1175194 m!5880596))

(assert (=> b!4877363 d!1567142))

(declare-fun d!1567146 () Bool)

(declare-fun res!2082249 () Bool)

(declare-fun e!3048765 () Bool)

(assert (=> d!1567146 (=> (not res!2082249) (not e!3048765))))

(assert (=> d!1567146 (= res!2082249 (= (csize!29436 (right!41018 (c!829488 input!585))) (+ (size!36948 (left!40688 (right!41018 (c!829488 input!585)))) (size!36948 (right!41018 (right!41018 (c!829488 input!585)))))))))

(assert (=> d!1567146 (= (inv!71960 (right!41018 (c!829488 input!585))) e!3048765)))

(declare-fun b!4877861 () Bool)

(declare-fun res!2082250 () Bool)

(assert (=> b!4877861 (=> (not res!2082250) (not e!3048765))))

(assert (=> b!4877861 (= res!2082250 (and (not (= (left!40688 (right!41018 (c!829488 input!585))) Empty!14603)) (not (= (right!41018 (right!41018 (c!829488 input!585))) Empty!14603))))))

(declare-fun b!4877862 () Bool)

(declare-fun res!2082251 () Bool)

(assert (=> b!4877862 (=> (not res!2082251) (not e!3048765))))

(assert (=> b!4877862 (= res!2082251 (= (cheight!14814 (right!41018 (c!829488 input!585))) (+ (max!0 (height!1940 (left!40688 (right!41018 (c!829488 input!585)))) (height!1940 (right!41018 (right!41018 (c!829488 input!585))))) 1)))))

(declare-fun b!4877863 () Bool)

(assert (=> b!4877863 (= e!3048765 (<= 0 (cheight!14814 (right!41018 (c!829488 input!585)))))))

(assert (= (and d!1567146 res!2082249) b!4877861))

(assert (= (and b!4877861 res!2082250) b!4877862))

(assert (= (and b!4877862 res!2082251) b!4877863))

(declare-fun m!5880598 () Bool)

(assert (=> d!1567146 m!5880598))

(declare-fun m!5880600 () Bool)

(assert (=> d!1567146 m!5880600))

(assert (=> b!4877862 m!5880216))

(assert (=> b!4877862 m!5880218))

(assert (=> b!4877862 m!5880216))

(assert (=> b!4877862 m!5880218))

(declare-fun m!5880602 () Bool)

(assert (=> b!4877862 m!5880602))

(assert (=> b!4877104 d!1567146))

(declare-fun d!1567148 () Bool)

(assert (=> d!1567148 (= (isEmpty!30008 (_1!33254 lt!1998511)) (is-Nil!56014 (_1!33254 lt!1998511)))))

(assert (=> b!4877244 d!1567148))

(declare-fun d!1567150 () Bool)

(declare-fun lt!1998803 () Int)

(assert (=> d!1567150 (>= lt!1998803 0)))

(declare-fun e!3048766 () Int)

(assert (=> d!1567150 (= lt!1998803 e!3048766)))

(declare-fun c!829663 () Bool)

(assert (=> d!1567150 (= c!829663 (is-Nil!56012 (t!364610 (_2!33254 lt!1998359))))))

(assert (=> d!1567150 (= (size!36947 (t!364610 (_2!33254 lt!1998359))) lt!1998803)))

(declare-fun b!4877864 () Bool)

(assert (=> b!4877864 (= e!3048766 0)))

(declare-fun b!4877865 () Bool)

(assert (=> b!4877865 (= e!3048766 (+ 1 (size!36947 (t!364610 (t!364610 (_2!33254 lt!1998359))))))))

(assert (= (and d!1567150 c!829663) b!4877864))

(assert (= (and d!1567150 (not c!829663)) b!4877865))

(declare-fun m!5880604 () Bool)

(assert (=> b!4877865 m!5880604))

(assert (=> b!4877295 d!1567150))

(assert (=> b!4877256 d!1567140))

(assert (=> bm!338588 d!1566990))

(declare-fun d!1567152 () Bool)

(declare-fun res!2082252 () Bool)

(declare-fun e!3048767 () Bool)

(assert (=> d!1567152 (=> (not res!2082252) (not e!3048767))))

(assert (=> d!1567152 (= res!2082252 (<= (size!36947 (list!17552 (xs!17913 (right!41018 (c!829488 input!585))))) 512))))

(assert (=> d!1567152 (= (inv!71961 (right!41018 (c!829488 input!585))) e!3048767)))

(declare-fun b!4877866 () Bool)

(declare-fun res!2082253 () Bool)

(assert (=> b!4877866 (=> (not res!2082253) (not e!3048767))))

(assert (=> b!4877866 (= res!2082253 (= (csize!29437 (right!41018 (c!829488 input!585))) (size!36947 (list!17552 (xs!17913 (right!41018 (c!829488 input!585)))))))))

(declare-fun b!4877867 () Bool)

(assert (=> b!4877867 (= e!3048767 (and (> (csize!29437 (right!41018 (c!829488 input!585))) 0) (<= (csize!29437 (right!41018 (c!829488 input!585))) 512)))))

(assert (= (and d!1567152 res!2082252) b!4877866))

(assert (= (and b!4877866 res!2082253) b!4877867))

(assert (=> d!1567152 m!5880256))

(assert (=> d!1567152 m!5880256))

(declare-fun m!5880606 () Bool)

(assert (=> d!1567152 m!5880606))

(assert (=> b!4877866 m!5880256))

(assert (=> b!4877866 m!5880256))

(assert (=> b!4877866 m!5880606))

(assert (=> b!4877106 d!1567152))

(declare-fun b!4877868 () Bool)

(declare-fun e!3048769 () List!56136)

(assert (=> b!4877868 (= e!3048769 (_2!33258 (get!19251 lt!1998494)))))

(declare-fun b!4877871 () Bool)

(declare-fun e!3048768 () Bool)

(declare-fun lt!1998804 () List!56136)

(assert (=> b!4877871 (= e!3048768 (or (not (= (_2!33258 (get!19251 lt!1998494)) Nil!56012)) (= lt!1998804 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))))))))

(declare-fun b!4877869 () Bool)

(assert (=> b!4877869 (= e!3048769 (Cons!56012 (h!62460 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (++!12207 (t!364610 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (_2!33258 (get!19251 lt!1998494)))))))

(declare-fun d!1567154 () Bool)

(assert (=> d!1567154 e!3048768))

(declare-fun res!2082254 () Bool)

(assert (=> d!1567154 (=> (not res!2082254) (not e!3048768))))

(assert (=> d!1567154 (= res!2082254 (= (content!10001 lt!1998804) (set.union (content!10001 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (content!10001 (_2!33258 (get!19251 lt!1998494))))))))

(assert (=> d!1567154 (= lt!1998804 e!3048769)))

(declare-fun c!829664 () Bool)

(assert (=> d!1567154 (= c!829664 (is-Nil!56012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))))))

(assert (=> d!1567154 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494)))) (_2!33258 (get!19251 lt!1998494))) lt!1998804)))

(declare-fun b!4877870 () Bool)

(declare-fun res!2082255 () Bool)

(assert (=> b!4877870 (=> (not res!2082255) (not e!3048768))))

(assert (=> b!4877870 (= res!2082255 (= (size!36947 lt!1998804) (+ (size!36947 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998494))))) (size!36947 (_2!33258 (get!19251 lt!1998494))))))))

(assert (= (and d!1567154 c!829664) b!4877868))

(assert (= (and d!1567154 (not c!829664)) b!4877869))

(assert (= (and d!1567154 res!2082254) b!4877870))

(assert (= (and b!4877870 res!2082255) b!4877871))

(declare-fun m!5880608 () Bool)

(assert (=> b!4877869 m!5880608))

(declare-fun m!5880610 () Bool)

(assert (=> d!1567154 m!5880610))

(assert (=> d!1567154 m!5879704))

(declare-fun m!5880612 () Bool)

(assert (=> d!1567154 m!5880612))

(declare-fun m!5880614 () Bool)

(assert (=> d!1567154 m!5880614))

(declare-fun m!5880616 () Bool)

(assert (=> b!4877870 m!5880616))

(assert (=> b!4877870 m!5879704))

(declare-fun m!5880618 () Bool)

(assert (=> b!4877870 m!5880618))

(assert (=> b!4877870 m!5879698))

(assert (=> b!4877202 d!1567154))

(assert (=> b!4877202 d!1566994))

(assert (=> b!4877202 d!1566996))

(assert (=> b!4877202 d!1566960))

(declare-fun d!1567156 () Bool)

(declare-fun lt!1998805 () Bool)

(assert (=> d!1567156 (= lt!1998805 (set.member (rule!11205 (_1!33258 (get!19251 lt!1998494))) (content!10003 rules!1164)))))

(declare-fun e!3048770 () Bool)

(assert (=> d!1567156 (= lt!1998805 e!3048770)))

(declare-fun res!2082257 () Bool)

(assert (=> d!1567156 (=> (not res!2082257) (not e!3048770))))

(assert (=> d!1567156 (= res!2082257 (is-Cons!56015 rules!1164))))

(assert (=> d!1567156 (= (contains!19409 rules!1164 (rule!11205 (_1!33258 (get!19251 lt!1998494)))) lt!1998805)))

(declare-fun b!4877872 () Bool)

(declare-fun e!3048771 () Bool)

(assert (=> b!4877872 (= e!3048770 e!3048771)))

(declare-fun res!2082256 () Bool)

(assert (=> b!4877872 (=> res!2082256 e!3048771)))

(assert (=> b!4877872 (= res!2082256 (= (h!62463 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))

(declare-fun b!4877873 () Bool)

(assert (=> b!4877873 (= e!3048771 (contains!19409 (t!364613 rules!1164) (rule!11205 (_1!33258 (get!19251 lt!1998494)))))))

(assert (= (and d!1567156 res!2082257) b!4877872))

(assert (= (and b!4877872 (not res!2082256)) b!4877873))

(assert (=> d!1567156 m!5880586))

(declare-fun m!5880620 () Bool)

(assert (=> d!1567156 m!5880620))

(declare-fun m!5880622 () Bool)

(assert (=> b!4877873 m!5880622))

(assert (=> b!4877205 d!1567156))

(assert (=> b!4877205 d!1566960))

(assert (=> b!4877289 d!1567060))

(assert (=> b!4877289 d!1567062))

(assert (=> d!1566854 d!1566896))

(declare-fun d!1567158 () Bool)

(declare-fun res!2082258 () Bool)

(declare-fun e!3048772 () Bool)

(assert (=> d!1567158 (=> res!2082258 e!3048772)))

(assert (=> d!1567158 (= res!2082258 (is-Nil!56015 rules!1164))))

(assert (=> d!1567158 (= (forall!13057 rules!1164 lambda!243655) e!3048772)))

(declare-fun b!4877874 () Bool)

(declare-fun e!3048773 () Bool)

(assert (=> b!4877874 (= e!3048772 e!3048773)))

(declare-fun res!2082259 () Bool)

(assert (=> b!4877874 (=> (not res!2082259) (not e!3048773))))

(assert (=> b!4877874 (= res!2082259 (dynLambda!22530 lambda!243655 (h!62463 rules!1164)))))

(declare-fun b!4877875 () Bool)

(assert (=> b!4877875 (= e!3048773 (forall!13057 (t!364613 rules!1164) lambda!243655))))

(assert (= (and d!1567158 (not res!2082258)) b!4877874))

(assert (= (and b!4877874 res!2082259) b!4877875))

(declare-fun b_lambda!193957 () Bool)

(assert (=> (not b_lambda!193957) (not b!4877874)))

(declare-fun m!5880624 () Bool)

(assert (=> b!4877874 m!5880624))

(declare-fun m!5880626 () Bool)

(assert (=> b!4877875 m!5880626))

(assert (=> d!1566854 d!1567158))

(assert (=> b!4877099 d!1567016))

(declare-fun b!4877876 () Bool)

(declare-fun res!2082265 () Bool)

(declare-fun e!3048774 () Bool)

(assert (=> b!4877876 (=> (not res!2082265) (not e!3048774))))

(assert (=> b!4877876 (= res!2082265 (isBalanced!3967 (right!41018 (left!40688 (c!829488 input!585)))))))

(declare-fun b!4877877 () Bool)

(declare-fun res!2082260 () Bool)

(assert (=> b!4877877 (=> (not res!2082260) (not e!3048774))))

(assert (=> b!4877877 (= res!2082260 (<= (- (height!1940 (left!40688 (left!40688 (c!829488 input!585)))) (height!1940 (right!41018 (left!40688 (c!829488 input!585))))) 1))))

(declare-fun b!4877878 () Bool)

(assert (=> b!4877878 (= e!3048774 (not (isEmpty!30018 (right!41018 (left!40688 (c!829488 input!585))))))))

(declare-fun d!1567160 () Bool)

(declare-fun res!2082264 () Bool)

(declare-fun e!3048775 () Bool)

(assert (=> d!1567160 (=> res!2082264 e!3048775)))

(assert (=> d!1567160 (= res!2082264 (not (is-Node!14603 (left!40688 (c!829488 input!585)))))))

(assert (=> d!1567160 (= (isBalanced!3967 (left!40688 (c!829488 input!585))) e!3048775)))

(declare-fun b!4877879 () Bool)

(assert (=> b!4877879 (= e!3048775 e!3048774)))

(declare-fun res!2082261 () Bool)

(assert (=> b!4877879 (=> (not res!2082261) (not e!3048774))))

(assert (=> b!4877879 (= res!2082261 (<= (- 1) (- (height!1940 (left!40688 (left!40688 (c!829488 input!585)))) (height!1940 (right!41018 (left!40688 (c!829488 input!585)))))))))

(declare-fun b!4877880 () Bool)

(declare-fun res!2082263 () Bool)

(assert (=> b!4877880 (=> (not res!2082263) (not e!3048774))))

(assert (=> b!4877880 (= res!2082263 (isBalanced!3967 (left!40688 (left!40688 (c!829488 input!585)))))))

(declare-fun b!4877881 () Bool)

(declare-fun res!2082262 () Bool)

(assert (=> b!4877881 (=> (not res!2082262) (not e!3048774))))

(assert (=> b!4877881 (= res!2082262 (not (isEmpty!30018 (left!40688 (left!40688 (c!829488 input!585))))))))

(assert (= (and d!1567160 (not res!2082264)) b!4877879))

(assert (= (and b!4877879 res!2082261) b!4877877))

(assert (= (and b!4877877 res!2082260) b!4877880))

(assert (= (and b!4877880 res!2082263) b!4877876))

(assert (= (and b!4877876 res!2082265) b!4877881))

(assert (= (and b!4877881 res!2082262) b!4877878))

(declare-fun m!5880628 () Bool)

(assert (=> b!4877878 m!5880628))

(assert (=> b!4877877 m!5880262))

(assert (=> b!4877877 m!5880264))

(declare-fun m!5880630 () Bool)

(assert (=> b!4877881 m!5880630))

(declare-fun m!5880632 () Bool)

(assert (=> b!4877880 m!5880632))

(declare-fun m!5880634 () Bool)

(assert (=> b!4877876 m!5880634))

(assert (=> b!4877879 m!5880262))

(assert (=> b!4877879 m!5880264))

(assert (=> b!4877292 d!1567160))

(assert (=> b!4877138 d!1566986))

(assert (=> b!4877138 d!1566988))

(assert (=> b!4877138 d!1566762))

(declare-fun d!1567162 () Bool)

(assert (=> d!1567162 (= (list!17543 (_2!33255 (get!19250 lt!1998443))) (list!17547 (c!829488 (_2!33255 (get!19250 lt!1998443)))))))

(declare-fun bs!1175195 () Bool)

(assert (= bs!1175195 d!1567162))

(declare-fun m!5880636 () Bool)

(assert (=> bs!1175195 m!5880636))

(assert (=> b!4877138 d!1567162))

(assert (=> b!4877138 d!1566990))

(declare-fun d!1567164 () Bool)

(assert (not d!1567164))

(assert (=> b!4877092 d!1567164))

(assert (=> d!1566816 d!1566844))

(declare-fun d!1567166 () Bool)

(declare-fun e!3048776 () Bool)

(assert (=> d!1567166 e!3048776))

(declare-fun res!2082267 () Bool)

(assert (=> d!1567166 (=> res!2082267 e!3048776)))

(declare-fun lt!1998806 () Bool)

(assert (=> d!1567166 (= res!2082267 (not lt!1998806))))

(declare-fun e!3048777 () Bool)

(assert (=> d!1567166 (= lt!1998806 e!3048777)))

(declare-fun res!2082266 () Bool)

(assert (=> d!1567166 (=> res!2082266 e!3048777)))

(assert (=> d!1567166 (= res!2082266 (is-Nil!56012 (list!17543 input!585)))))

(assert (=> d!1567166 (= (isPrefix!4773 (list!17543 input!585) (list!17543 input!585)) lt!1998806)))

(declare-fun b!4877883 () Bool)

(declare-fun res!2082269 () Bool)

(declare-fun e!3048778 () Bool)

(assert (=> b!4877883 (=> (not res!2082269) (not e!3048778))))

(assert (=> b!4877883 (= res!2082269 (= (head!10421 (list!17543 input!585)) (head!10421 (list!17543 input!585))))))

(declare-fun b!4877882 () Bool)

(assert (=> b!4877882 (= e!3048777 e!3048778)))

(declare-fun res!2082268 () Bool)

(assert (=> b!4877882 (=> (not res!2082268) (not e!3048778))))

(assert (=> b!4877882 (= res!2082268 (not (is-Nil!56012 (list!17543 input!585))))))

(declare-fun b!4877884 () Bool)

(assert (=> b!4877884 (= e!3048778 (isPrefix!4773 (tail!9567 (list!17543 input!585)) (tail!9567 (list!17543 input!585))))))

(declare-fun b!4877885 () Bool)

(assert (=> b!4877885 (= e!3048776 (>= (size!36947 (list!17543 input!585)) (size!36947 (list!17543 input!585))))))

(assert (= (and d!1567166 (not res!2082266)) b!4877882))

(assert (= (and b!4877882 res!2082268) b!4877883))

(assert (= (and b!4877883 res!2082269) b!4877884))

(assert (= (and d!1567166 (not res!2082267)) b!4877885))

(assert (=> b!4877883 m!5879338))

(declare-fun m!5880638 () Bool)

(assert (=> b!4877883 m!5880638))

(assert (=> b!4877883 m!5879338))

(assert (=> b!4877883 m!5880638))

(assert (=> b!4877884 m!5879338))

(declare-fun m!5880640 () Bool)

(assert (=> b!4877884 m!5880640))

(assert (=> b!4877884 m!5879338))

(assert (=> b!4877884 m!5880640))

(assert (=> b!4877884 m!5880640))

(assert (=> b!4877884 m!5880640))

(declare-fun m!5880642 () Bool)

(assert (=> b!4877884 m!5880642))

(assert (=> b!4877885 m!5879338))

(assert (=> b!4877885 m!5879408))

(assert (=> b!4877885 m!5879338))

(assert (=> b!4877885 m!5879408))

(assert (=> d!1566816 d!1567166))

(declare-fun d!1567168 () Bool)

(assert (=> d!1567168 (isPrefix!4773 (list!17543 input!585) (list!17543 input!585))))

(declare-fun lt!1998807 () Unit!146016)

(assert (=> d!1567168 (= lt!1998807 (choose!35646 (list!17543 input!585) (list!17543 input!585)))))

(assert (=> d!1567168 (= (lemmaIsPrefixRefl!3170 (list!17543 input!585) (list!17543 input!585)) lt!1998807)))

(declare-fun bs!1175196 () Bool)

(assert (= bs!1175196 d!1567168))

(assert (=> bs!1175196 m!5879338))

(assert (=> bs!1175196 m!5879338))

(assert (=> bs!1175196 m!5879564))

(assert (=> bs!1175196 m!5879338))

(assert (=> bs!1175196 m!5879338))

(declare-fun m!5880644 () Bool)

(assert (=> bs!1175196 m!5880644))

(assert (=> d!1566816 d!1567168))

(assert (=> d!1566816 d!1566896))

(assert (=> b!4877339 d!1567042))

(declare-fun d!1567170 () Bool)

(assert (not d!1567170))

(assert (=> b!4877308 d!1567170))

(declare-fun d!1567172 () Bool)

(declare-fun res!2082270 () Bool)

(declare-fun e!3048779 () Bool)

(assert (=> d!1567172 (=> res!2082270 e!3048779)))

(assert (=> d!1567172 (= res!2082270 (is-Nil!56015 (t!364613 rules!1164)))))

(assert (=> d!1567172 (= (noDuplicateTag!3290 thiss!11460 (t!364613 rules!1164) (Cons!56020 (tag!8913 (h!62463 rules!1164)) Nil!56020)) e!3048779)))

(declare-fun b!4877886 () Bool)

(declare-fun e!3048780 () Bool)

(assert (=> b!4877886 (= e!3048779 e!3048780)))

(declare-fun res!2082271 () Bool)

(assert (=> b!4877886 (=> (not res!2082271) (not e!3048780))))

(assert (=> b!4877886 (= res!2082271 (not (contains!19411 (Cons!56020 (tag!8913 (h!62463 rules!1164)) Nil!56020) (tag!8913 (h!62463 (t!364613 rules!1164))))))))

(declare-fun b!4877887 () Bool)

(assert (=> b!4877887 (= e!3048780 (noDuplicateTag!3290 thiss!11460 (t!364613 (t!364613 rules!1164)) (Cons!56020 (tag!8913 (h!62463 (t!364613 rules!1164))) (Cons!56020 (tag!8913 (h!62463 rules!1164)) Nil!56020))))))

(assert (= (and d!1567172 (not res!2082270)) b!4877886))

(assert (= (and b!4877886 res!2082271) b!4877887))

(declare-fun m!5880646 () Bool)

(assert (=> b!4877886 m!5880646))

(declare-fun m!5880648 () Bool)

(assert (=> b!4877887 m!5880648))

(assert (=> b!4877322 d!1567172))

(declare-fun d!1567174 () Bool)

(declare-fun lt!1998808 () Int)

(assert (=> d!1567174 (= lt!1998808 (size!36947 (list!17547 (left!40688 (c!829488 input!585)))))))

(assert (=> d!1567174 (= lt!1998808 (ite (is-Empty!14603 (left!40688 (c!829488 input!585))) 0 (ite (is-Leaf!24339 (left!40688 (c!829488 input!585))) (csize!29437 (left!40688 (c!829488 input!585))) (csize!29436 (left!40688 (c!829488 input!585))))))))

(assert (=> d!1567174 (= (size!36948 (left!40688 (c!829488 input!585))) lt!1998808)))

(declare-fun bs!1175197 () Bool)

(assert (= bs!1175197 d!1567174))

(assert (=> bs!1175197 m!5879782))

(assert (=> bs!1175197 m!5879782))

(assert (=> bs!1175197 m!5880238))

(assert (=> d!1566856 d!1567174))

(declare-fun d!1567176 () Bool)

(declare-fun lt!1998809 () Int)

(assert (=> d!1567176 (= lt!1998809 (size!36947 (list!17547 (right!41018 (c!829488 input!585)))))))

(assert (=> d!1567176 (= lt!1998809 (ite (is-Empty!14603 (right!41018 (c!829488 input!585))) 0 (ite (is-Leaf!24339 (right!41018 (c!829488 input!585))) (csize!29437 (right!41018 (c!829488 input!585))) (csize!29436 (right!41018 (c!829488 input!585))))))))

(assert (=> d!1567176 (= (size!36948 (right!41018 (c!829488 input!585))) lt!1998809)))

(declare-fun bs!1175198 () Bool)

(assert (= bs!1175198 d!1567176))

(assert (=> bs!1175198 m!5879784))

(assert (=> bs!1175198 m!5879784))

(assert (=> bs!1175198 m!5880240))

(assert (=> d!1566856 d!1567176))

(assert (=> b!4877070 d!1567020))

(declare-fun d!1567178 () Bool)

(assert (=> d!1567178 (= (isEmpty!30014 lt!1998494) (not (is-Some!13805 lt!1998494)))))

(assert (=> d!1566844 d!1567178))

(assert (=> d!1566844 d!1567166))

(assert (=> d!1566844 d!1567168))

(assert (=> d!1566844 d!1566896))

(declare-fun d!1567180 () Bool)

(declare-fun lt!1998810 () Int)

(assert (=> d!1567180 (>= lt!1998810 0)))

(declare-fun e!3048781 () Int)

(assert (=> d!1567180 (= lt!1998810 e!3048781)))

(declare-fun c!829665 () Bool)

(assert (=> d!1567180 (= c!829665 (is-Nil!56014 (list!17548 (c!829489 (BalanceConc!28651 Empty!14604)))))))

(assert (=> d!1567180 (= (size!36949 (list!17548 (c!829489 (BalanceConc!28651 Empty!14604)))) lt!1998810)))

(declare-fun b!4877888 () Bool)

(assert (=> b!4877888 (= e!3048781 0)))

(declare-fun b!4877889 () Bool)

(assert (=> b!4877889 (= e!3048781 (+ 1 (size!36949 (t!364612 (list!17548 (c!829489 (BalanceConc!28651 Empty!14604)))))))))

(assert (= (and d!1567180 c!829665) b!4877888))

(assert (= (and d!1567180 (not c!829665)) b!4877889))

(declare-fun m!5880650 () Bool)

(assert (=> b!4877889 m!5880650))

(assert (=> d!1566878 d!1567180))

(assert (=> d!1566878 d!1566810))

(assert (=> b!4877232 d!1567126))

(assert (=> b!4877232 d!1567128))

(assert (=> b!4877232 d!1567118))

(declare-fun d!1567182 () Bool)

(declare-fun c!829666 () Bool)

(assert (=> d!1567182 (= c!829666 (is-Node!14603 (left!40688 (right!41018 (c!829488 input!585)))))))

(declare-fun e!3048782 () Bool)

(assert (=> d!1567182 (= (inv!71955 (left!40688 (right!41018 (c!829488 input!585)))) e!3048782)))

(declare-fun b!4877890 () Bool)

(assert (=> b!4877890 (= e!3048782 (inv!71960 (left!40688 (right!41018 (c!829488 input!585)))))))

(declare-fun b!4877891 () Bool)

(declare-fun e!3048783 () Bool)

(assert (=> b!4877891 (= e!3048782 e!3048783)))

(declare-fun res!2082272 () Bool)

(assert (=> b!4877891 (= res!2082272 (not (is-Leaf!24339 (left!40688 (right!41018 (c!829488 input!585))))))))

(assert (=> b!4877891 (=> res!2082272 e!3048783)))

(declare-fun b!4877892 () Bool)

(assert (=> b!4877892 (= e!3048783 (inv!71961 (left!40688 (right!41018 (c!829488 input!585)))))))

(assert (= (and d!1567182 c!829666) b!4877890))

(assert (= (and d!1567182 (not c!829666)) b!4877891))

(assert (= (and b!4877891 (not res!2082272)) b!4877892))

(declare-fun m!5880652 () Bool)

(assert (=> b!4877890 m!5880652))

(declare-fun m!5880654 () Bool)

(assert (=> b!4877892 m!5880654))

(assert (=> b!4877365 d!1567182))

(declare-fun d!1567184 () Bool)

(declare-fun c!829667 () Bool)

(assert (=> d!1567184 (= c!829667 (is-Node!14603 (right!41018 (right!41018 (c!829488 input!585)))))))

(declare-fun e!3048784 () Bool)

(assert (=> d!1567184 (= (inv!71955 (right!41018 (right!41018 (c!829488 input!585)))) e!3048784)))

(declare-fun b!4877893 () Bool)

(assert (=> b!4877893 (= e!3048784 (inv!71960 (right!41018 (right!41018 (c!829488 input!585)))))))

(declare-fun b!4877894 () Bool)

(declare-fun e!3048785 () Bool)

(assert (=> b!4877894 (= e!3048784 e!3048785)))

(declare-fun res!2082273 () Bool)

(assert (=> b!4877894 (= res!2082273 (not (is-Leaf!24339 (right!41018 (right!41018 (c!829488 input!585))))))))

(assert (=> b!4877894 (=> res!2082273 e!3048785)))

(declare-fun b!4877895 () Bool)

(assert (=> b!4877895 (= e!3048785 (inv!71961 (right!41018 (right!41018 (c!829488 input!585)))))))

(assert (= (and d!1567184 c!829667) b!4877893))

(assert (= (and d!1567184 (not c!829667)) b!4877894))

(assert (= (and b!4877894 (not res!2082273)) b!4877895))

(declare-fun m!5880656 () Bool)

(assert (=> b!4877893 m!5880656))

(declare-fun m!5880658 () Bool)

(assert (=> b!4877895 m!5880658))

(assert (=> b!4877365 d!1567184))

(assert (=> b!4877068 d!1567020))

(assert (=> b!4877140 d!1567050))

(declare-fun d!1567186 () Bool)

(declare-fun choose!35652 (Int) Bool)

(assert (=> d!1567186 (= (Forall2!1263 lambda!243661) (choose!35652 lambda!243661))))

(declare-fun bs!1175199 () Bool)

(assert (= bs!1175199 d!1567186))

(declare-fun m!5880660 () Bool)

(assert (=> bs!1175199 m!5880660))

(assert (=> d!1566888 d!1567186))

(assert (=> b!4877213 d!1567138))

(assert (=> b!4877213 d!1567140))

(declare-fun b!4877896 () Bool)

(declare-fun e!3048787 () List!56136)

(assert (=> b!4877896 (= e!3048787 (_2!33258 (get!19251 lt!1998506)))))

(declare-fun b!4877899 () Bool)

(declare-fun e!3048786 () Bool)

(declare-fun lt!1998811 () List!56136)

(assert (=> b!4877899 (= e!3048786 (or (not (= (_2!33258 (get!19251 lt!1998506)) Nil!56012)) (= lt!1998811 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))))))))

(declare-fun b!4877897 () Bool)

(assert (=> b!4877897 (= e!3048787 (Cons!56012 (h!62460 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (++!12207 (t!364610 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (_2!33258 (get!19251 lt!1998506)))))))

(declare-fun d!1567188 () Bool)

(assert (=> d!1567188 e!3048786))

(declare-fun res!2082274 () Bool)

(assert (=> d!1567188 (=> (not res!2082274) (not e!3048786))))

(assert (=> d!1567188 (= res!2082274 (= (content!10001 lt!1998811) (set.union (content!10001 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (content!10001 (_2!33258 (get!19251 lt!1998506))))))))

(assert (=> d!1567188 (= lt!1998811 e!3048787)))

(declare-fun c!829668 () Bool)

(assert (=> d!1567188 (= c!829668 (is-Nil!56012 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))))))

(assert (=> d!1567188 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506)))) (_2!33258 (get!19251 lt!1998506))) lt!1998811)))

(declare-fun b!4877898 () Bool)

(declare-fun res!2082275 () Bool)

(assert (=> b!4877898 (=> (not res!2082275) (not e!3048786))))

(assert (=> b!4877898 (= res!2082275 (= (size!36947 lt!1998811) (+ (size!36947 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998506))))) (size!36947 (_2!33258 (get!19251 lt!1998506))))))))

(assert (= (and d!1567188 c!829668) b!4877896))

(assert (= (and d!1567188 (not c!829668)) b!4877897))

(assert (= (and d!1567188 res!2082274) b!4877898))

(assert (= (and b!4877898 res!2082275) b!4877899))

(declare-fun m!5880662 () Bool)

(assert (=> b!4877897 m!5880662))

(declare-fun m!5880664 () Bool)

(assert (=> d!1567188 m!5880664))

(assert (=> d!1567188 m!5879752))

(declare-fun m!5880666 () Bool)

(assert (=> d!1567188 m!5880666))

(declare-fun m!5880668 () Bool)

(assert (=> d!1567188 m!5880668))

(declare-fun m!5880670 () Bool)

(assert (=> b!4877898 m!5880670))

(assert (=> b!4877898 m!5879752))

(declare-fun m!5880672 () Bool)

(assert (=> b!4877898 m!5880672))

(assert (=> b!4877898 m!5879742))

(assert (=> b!4877236 d!1567188))

(assert (=> b!4877236 d!1567126))

(assert (=> b!4877236 d!1567128))

(assert (=> b!4877236 d!1567118))

(assert (=> b!4877072 d!1567092))

(declare-fun d!1567190 () Bool)

(assert (=> d!1567190 (= (get!19251 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))) (v!49747 (maxPrefix!4556 thiss!11460 (t!364613 rules!1164) (list!17543 input!585))))))

(assert (=> b!4877072 d!1567190))

(assert (=> b!4877072 d!1566982))

(assert (=> b!4877072 d!1566762))

(declare-fun d!1567192 () Bool)

(declare-fun lt!1998812 () Int)

(assert (=> d!1567192 (>= lt!1998812 0)))

(declare-fun e!3048788 () Int)

(assert (=> d!1567192 (= lt!1998812 e!3048788)))

(declare-fun c!829669 () Bool)

(assert (=> d!1567192 (= c!829669 (is-Nil!56012 lt!1998327))))

(assert (=> d!1567192 (= (size!36947 lt!1998327) lt!1998812)))

(declare-fun b!4877900 () Bool)

(assert (=> b!4877900 (= e!3048788 0)))

(declare-fun b!4877901 () Bool)

(assert (=> b!4877901 (= e!3048788 (+ 1 (size!36947 (t!364610 lt!1998327))))))

(assert (= (and d!1567192 c!829669) b!4877900))

(assert (= (and d!1567192 (not c!829669)) b!4877901))

(declare-fun m!5880674 () Bool)

(assert (=> b!4877901 m!5880674))

(assert (=> b!4877334 d!1567192))

(declare-fun d!1567194 () Bool)

(declare-fun lt!1998813 () Int)

(assert (=> d!1567194 (>= lt!1998813 0)))

(declare-fun e!3048789 () Int)

(assert (=> d!1567194 (= lt!1998813 e!3048789)))

(declare-fun c!829670 () Bool)

(assert (=> d!1567194 (= c!829670 (is-Nil!56012 lt!1998333))))

(assert (=> d!1567194 (= (size!36947 lt!1998333) lt!1998813)))

(declare-fun b!4877902 () Bool)

(assert (=> b!4877902 (= e!3048789 0)))

(declare-fun b!4877903 () Bool)

(assert (=> b!4877903 (= e!3048789 (+ 1 (size!36947 (t!364610 lt!1998333))))))

(assert (= (and d!1567194 c!829670) b!4877902))

(assert (= (and d!1567194 (not c!829670)) b!4877903))

(declare-fun m!5880676 () Bool)

(assert (=> b!4877903 m!5880676))

(assert (=> b!4877334 d!1567194))

(declare-fun d!1567196 () Bool)

(declare-fun lt!1998814 () Int)

(assert (=> d!1567196 (>= lt!1998814 0)))

(declare-fun e!3048790 () Int)

(assert (=> d!1567196 (= lt!1998814 e!3048790)))

(declare-fun c!829671 () Bool)

(assert (=> d!1567196 (= c!829671 (is-Nil!56012 (t!364610 lt!1998299)))))

(assert (=> d!1567196 (= (size!36947 (t!364610 lt!1998299)) lt!1998814)))

(declare-fun b!4877904 () Bool)

(assert (=> b!4877904 (= e!3048790 0)))

(declare-fun b!4877905 () Bool)

(assert (=> b!4877905 (= e!3048790 (+ 1 (size!36947 (t!364610 (t!364610 lt!1998299)))))))

(assert (= (and d!1567196 c!829671) b!4877904))

(assert (= (and d!1567196 (not c!829671)) b!4877905))

(declare-fun m!5880678 () Bool)

(assert (=> b!4877905 m!5880678))

(assert (=> b!4877297 d!1567196))

(declare-fun d!1567198 () Bool)

(assert (=> d!1567198 (= (head!10421 lt!1998333) (h!62460 lt!1998333))))

(assert (=> b!4877332 d!1567198))

(declare-fun d!1567200 () Bool)

(assert (=> d!1567200 (= (head!10421 lt!1998327) (h!62460 lt!1998327))))

(assert (=> b!4877332 d!1567200))

(declare-fun d!1567202 () Bool)

(assert (=> d!1567202 (= (max!0 (height!1940 (left!40688 (c!829488 input!585))) (height!1940 (right!41018 (c!829488 input!585)))) (ite (< (height!1940 (left!40688 (c!829488 input!585))) (height!1940 (right!41018 (c!829488 input!585)))) (height!1940 (right!41018 (c!829488 input!585))) (height!1940 (left!40688 (c!829488 input!585)))))))

(assert (=> b!4877224 d!1567202))

(assert (=> b!4877224 d!1567060))

(assert (=> b!4877224 d!1567062))

(declare-fun bs!1175200 () Bool)

(declare-fun d!1567204 () Bool)

(assert (= bs!1175200 (and d!1567204 b!4877141)))

(declare-fun lambda!243680 () Int)

(assert (=> bs!1175200 (= (and (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (= lambda!243680 lambda!243647))))

(declare-fun bs!1175201 () Bool)

(assert (= bs!1175201 (and d!1567204 d!1566880)))

(assert (=> bs!1175201 (= (and (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (= lambda!243680 lambda!243658))))

(declare-fun bs!1175202 () Bool)

(assert (= bs!1175202 (and d!1567204 b!4877850)))

(assert (=> bs!1175202 (= lambda!243680 lambda!243679)))

(assert (=> d!1567204 true))

(assert (=> d!1567204 (< (dynLambda!22523 order!25283 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (dynLambda!22522 order!25281 lambda!243680))))

(assert (=> d!1567204 true))

(assert (=> d!1567204 (< (dynLambda!22521 order!25279 (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (dynLambda!22522 order!25281 lambda!243680))))

(assert (=> d!1567204 (= (semiInverseModEq!3553 (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164))))) (Forall!1682 lambda!243680))))

(declare-fun bs!1175203 () Bool)

(assert (= bs!1175203 d!1567204))

(declare-fun m!5880680 () Bool)

(assert (=> bs!1175203 m!5880680))

(assert (=> d!1566824 d!1567204))

(assert (=> b!4877073 d!1567136))

(assert (=> b!4877073 d!1567190))

(assert (=> b!4877073 d!1567092))

(assert (=> b!4877073 d!1566762))

(assert (=> b!4877073 d!1566982))

(declare-fun b!4877906 () Bool)

(declare-fun res!2082276 () Bool)

(declare-fun e!3048793 () Bool)

(assert (=> b!4877906 (=> (not res!2082276) (not e!3048793))))

(declare-fun lt!1998815 () Option!13806)

(assert (=> b!4877906 (= res!2082276 (= (value!258540 (_1!33258 (get!19251 lt!1998815))) (apply!13509 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998815)))) (seqFromList!5905 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998815)))))))))

(declare-fun b!4877908 () Bool)

(declare-fun res!2082282 () Bool)

(assert (=> b!4877908 (=> (not res!2082282) (not e!3048793))))

(assert (=> b!4877908 (= res!2082282 (< (size!36947 (_2!33258 (get!19251 lt!1998815))) (size!36947 lt!1998299)))))

(declare-fun b!4877909 () Bool)

(declare-fun e!3048792 () Option!13806)

(assert (=> b!4877909 (= e!3048792 None!13805)))

(declare-fun b!4877910 () Bool)

(declare-fun e!3048794 () Bool)

(assert (=> b!4877910 (= e!3048794 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998299 lt!1998299 (size!36947 lt!1998299)))))))

(declare-fun b!4877911 () Bool)

(declare-fun res!2082278 () Bool)

(assert (=> b!4877911 (=> (not res!2082278) (not e!3048793))))

(assert (=> b!4877911 (= res!2082278 (= (++!12207 (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998815)))) (_2!33258 (get!19251 lt!1998815))) lt!1998299))))

(declare-fun b!4877912 () Bool)

(declare-fun lt!1998816 () tuple2!59916)

(assert (=> b!4877912 (= e!3048792 (Some!13805 (tuple2!59911 (Token!14683 (apply!13509 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998816))) (h!62463 rules!1164) (size!36943 (seqFromList!5905 (_1!33261 lt!1998816))) (_1!33261 lt!1998816)) (_2!33261 lt!1998816))))))

(declare-fun lt!1998819 () Unit!146016)

(assert (=> b!4877912 (= lt!1998819 (longestMatchIsAcceptedByMatchOrIsEmpty!1691 (regex!8049 (h!62463 rules!1164)) lt!1998299))))

(declare-fun res!2082281 () Bool)

(assert (=> b!4877912 (= res!2082281 (isEmpty!30012 (_1!33261 (findLongestMatchInner!1728 (regex!8049 (h!62463 rules!1164)) Nil!56012 (size!36947 Nil!56012) lt!1998299 lt!1998299 (size!36947 lt!1998299)))))))

(assert (=> b!4877912 (=> res!2082281 e!3048794)))

(assert (=> b!4877912 e!3048794))

(declare-fun lt!1998817 () Unit!146016)

(assert (=> b!4877912 (= lt!1998817 lt!1998819)))

(declare-fun lt!1998818 () Unit!146016)

(assert (=> b!4877912 (= lt!1998818 (lemmaSemiInverse!2559 (transformation!8049 (h!62463 rules!1164)) (seqFromList!5905 (_1!33261 lt!1998816))))))

(declare-fun b!4877913 () Bool)

(declare-fun e!3048791 () Bool)

(assert (=> b!4877913 (= e!3048791 e!3048793)))

(declare-fun res!2082280 () Bool)

(assert (=> b!4877913 (=> (not res!2082280) (not e!3048793))))

(assert (=> b!4877913 (= res!2082280 (matchR!6499 (regex!8049 (h!62463 rules!1164)) (list!17543 (charsOf!5348 (_1!33258 (get!19251 lt!1998815))))))))

(declare-fun b!4877914 () Bool)

(assert (=> b!4877914 (= e!3048793 (= (size!36942 (_1!33258 (get!19251 lt!1998815))) (size!36947 (originalCharacters!8372 (_1!33258 (get!19251 lt!1998815))))))))

(declare-fun b!4877907 () Bool)

(declare-fun res!2082279 () Bool)

(assert (=> b!4877907 (=> (not res!2082279) (not e!3048793))))

(assert (=> b!4877907 (= res!2082279 (= (rule!11205 (_1!33258 (get!19251 lt!1998815))) (h!62463 rules!1164)))))

(declare-fun d!1567206 () Bool)

(assert (=> d!1567206 e!3048791))

(declare-fun res!2082277 () Bool)

(assert (=> d!1567206 (=> res!2082277 e!3048791)))

(assert (=> d!1567206 (= res!2082277 (isEmpty!30014 lt!1998815))))

(assert (=> d!1567206 (= lt!1998815 e!3048792)))

(declare-fun c!829672 () Bool)

(assert (=> d!1567206 (= c!829672 (isEmpty!30012 (_1!33261 lt!1998816)))))

(assert (=> d!1567206 (= lt!1998816 (findLongestMatch!1642 (regex!8049 (h!62463 rules!1164)) lt!1998299))))

(assert (=> d!1567206 (ruleValid!3637 thiss!11460 (h!62463 rules!1164))))

(assert (=> d!1567206 (= (maxPrefixOneRule!3498 thiss!11460 (h!62463 rules!1164) lt!1998299) lt!1998815)))

(assert (= (and d!1567206 c!829672) b!4877909))

(assert (= (and d!1567206 (not c!829672)) b!4877912))

(assert (= (and b!4877912 (not res!2082281)) b!4877910))

(assert (= (and d!1567206 (not res!2082277)) b!4877913))

(assert (= (and b!4877913 res!2082280) b!4877911))

(assert (= (and b!4877911 res!2082278) b!4877908))

(assert (= (and b!4877908 res!2082282) b!4877907))

(assert (= (and b!4877907 res!2082279) b!4877906))

(assert (= (and b!4877906 res!2082276) b!4877914))

(declare-fun m!5880682 () Bool)

(assert (=> b!4877907 m!5880682))

(assert (=> b!4877912 m!5879422))

(assert (=> b!4877912 m!5879604))

(assert (=> b!4877912 m!5879422))

(declare-fun m!5880684 () Bool)

(assert (=> b!4877912 m!5880684))

(declare-fun m!5880686 () Bool)

(assert (=> b!4877912 m!5880686))

(declare-fun m!5880688 () Bool)

(assert (=> b!4877912 m!5880688))

(declare-fun m!5880690 () Bool)

(assert (=> b!4877912 m!5880690))

(declare-fun m!5880692 () Bool)

(assert (=> b!4877912 m!5880692))

(assert (=> b!4877912 m!5880690))

(declare-fun m!5880694 () Bool)

(assert (=> b!4877912 m!5880694))

(assert (=> b!4877912 m!5880690))

(assert (=> b!4877912 m!5880690))

(declare-fun m!5880696 () Bool)

(assert (=> b!4877912 m!5880696))

(assert (=> b!4877912 m!5879604))

(assert (=> b!4877908 m!5880682))

(declare-fun m!5880698 () Bool)

(assert (=> b!4877908 m!5880698))

(assert (=> b!4877908 m!5879422))

(assert (=> b!4877914 m!5880682))

(declare-fun m!5880700 () Bool)

(assert (=> b!4877914 m!5880700))

(assert (=> b!4877910 m!5879604))

(assert (=> b!4877910 m!5879422))

(assert (=> b!4877910 m!5879604))

(assert (=> b!4877910 m!5879422))

(assert (=> b!4877910 m!5880684))

(declare-fun m!5880702 () Bool)

(assert (=> b!4877910 m!5880702))

(assert (=> b!4877906 m!5880682))

(declare-fun m!5880704 () Bool)

(assert (=> b!4877906 m!5880704))

(assert (=> b!4877906 m!5880704))

(declare-fun m!5880706 () Bool)

(assert (=> b!4877906 m!5880706))

(assert (=> b!4877911 m!5880682))

(declare-fun m!5880708 () Bool)

(assert (=> b!4877911 m!5880708))

(assert (=> b!4877911 m!5880708))

(declare-fun m!5880710 () Bool)

(assert (=> b!4877911 m!5880710))

(assert (=> b!4877911 m!5880710))

(declare-fun m!5880712 () Bool)

(assert (=> b!4877911 m!5880712))

(declare-fun m!5880714 () Bool)

(assert (=> d!1567206 m!5880714))

(declare-fun m!5880716 () Bool)

(assert (=> d!1567206 m!5880716))

(declare-fun m!5880718 () Bool)

(assert (=> d!1567206 m!5880718))

(assert (=> d!1567206 m!5879640))

(assert (=> b!4877913 m!5880682))

(assert (=> b!4877913 m!5880708))

(assert (=> b!4877913 m!5880708))

(assert (=> b!4877913 m!5880710))

(assert (=> b!4877913 m!5880710))

(declare-fun m!5880720 () Bool)

(assert (=> b!4877913 m!5880720))

(assert (=> bm!338589 d!1567206))

(declare-fun b!4877915 () Bool)

(declare-fun e!3048795 () Bool)

(declare-fun tp!1372362 () Bool)

(assert (=> b!4877915 (= e!3048795 (and tp_is_empty!35677 tp!1372362))))

(assert (=> b!4877364 (= tp!1372295 e!3048795)))

(assert (= (and b!4877364 (is-Cons!56012 (innerList!14691 (xs!17913 (left!40688 (c!829488 input!585)))))) b!4877915))

(declare-fun e!3048797 () Bool)

(declare-fun b!4877916 () Bool)

(declare-fun tp!1372365 () Bool)

(declare-fun tp!1372364 () Bool)

(assert (=> b!4877916 (= e!3048797 (and (inv!71955 (left!40688 (left!40688 (left!40688 (c!829488 input!585))))) tp!1372365 (inv!71955 (right!41018 (left!40688 (left!40688 (c!829488 input!585))))) tp!1372364))))

(declare-fun b!4877918 () Bool)

(declare-fun e!3048796 () Bool)

(declare-fun tp!1372363 () Bool)

(assert (=> b!4877918 (= e!3048796 tp!1372363)))

(declare-fun b!4877917 () Bool)

(assert (=> b!4877917 (= e!3048797 (and (inv!71962 (xs!17913 (left!40688 (left!40688 (c!829488 input!585))))) e!3048796))))

(assert (=> b!4877362 (= tp!1372297 (and (inv!71955 (left!40688 (left!40688 (c!829488 input!585)))) e!3048797))))

(assert (= (and b!4877362 (is-Node!14603 (left!40688 (left!40688 (c!829488 input!585))))) b!4877916))

(assert (= b!4877917 b!4877918))

(assert (= (and b!4877362 (is-Leaf!24339 (left!40688 (left!40688 (c!829488 input!585))))) b!4877917))

(declare-fun m!5880722 () Bool)

(assert (=> b!4877916 m!5880722))

(declare-fun m!5880724 () Bool)

(assert (=> b!4877916 m!5880724))

(declare-fun m!5880726 () Bool)

(assert (=> b!4877917 m!5880726))

(assert (=> b!4877362 m!5879862))

(declare-fun b!4877919 () Bool)

(declare-fun tp!1372367 () Bool)

(declare-fun e!3048799 () Bool)

(declare-fun tp!1372368 () Bool)

(assert (=> b!4877919 (= e!3048799 (and (inv!71955 (left!40688 (right!41018 (left!40688 (c!829488 input!585))))) tp!1372368 (inv!71955 (right!41018 (right!41018 (left!40688 (c!829488 input!585))))) tp!1372367))))

(declare-fun b!4877921 () Bool)

(declare-fun e!3048798 () Bool)

(declare-fun tp!1372366 () Bool)

(assert (=> b!4877921 (= e!3048798 tp!1372366)))

(declare-fun b!4877920 () Bool)

(assert (=> b!4877920 (= e!3048799 (and (inv!71962 (xs!17913 (right!41018 (left!40688 (c!829488 input!585))))) e!3048798))))

(assert (=> b!4877362 (= tp!1372296 (and (inv!71955 (right!41018 (left!40688 (c!829488 input!585)))) e!3048799))))

(assert (= (and b!4877362 (is-Node!14603 (right!41018 (left!40688 (c!829488 input!585))))) b!4877919))

(assert (= b!4877920 b!4877921))

(assert (= (and b!4877362 (is-Leaf!24339 (right!41018 (left!40688 (c!829488 input!585))))) b!4877920))

(declare-fun m!5880728 () Bool)

(assert (=> b!4877919 m!5880728))

(declare-fun m!5880730 () Bool)

(assert (=> b!4877919 m!5880730))

(declare-fun m!5880732 () Bool)

(assert (=> b!4877920 m!5880732))

(assert (=> b!4877362 m!5879864))

(declare-fun b!4877924 () Bool)

(declare-fun e!3048800 () Bool)

(declare-fun tp!1372371 () Bool)

(assert (=> b!4877924 (= e!3048800 tp!1372371)))

(declare-fun b!4877925 () Bool)

(declare-fun tp!1372369 () Bool)

(declare-fun tp!1372373 () Bool)

(assert (=> b!4877925 (= e!3048800 (and tp!1372369 tp!1372373))))

(declare-fun b!4877922 () Bool)

(assert (=> b!4877922 (= e!3048800 tp_is_empty!35677)))

(declare-fun b!4877923 () Bool)

(declare-fun tp!1372372 () Bool)

(declare-fun tp!1372370 () Bool)

(assert (=> b!4877923 (= e!3048800 (and tp!1372372 tp!1372370))))

(assert (=> b!4877377 (= tp!1372312 e!3048800)))

(assert (= (and b!4877377 (is-ElementMatch!13124 (reg!13453 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877922))

(assert (= (and b!4877377 (is-Concat!21484 (reg!13453 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877923))

(assert (= (and b!4877377 (is-Star!13124 (reg!13453 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877924))

(assert (= (and b!4877377 (is-Union!13124 (reg!13453 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877925))

(declare-fun b!4877928 () Bool)

(declare-fun e!3048801 () Bool)

(declare-fun tp!1372376 () Bool)

(assert (=> b!4877928 (= e!3048801 tp!1372376)))

(declare-fun b!4877929 () Bool)

(declare-fun tp!1372374 () Bool)

(declare-fun tp!1372378 () Bool)

(assert (=> b!4877929 (= e!3048801 (and tp!1372374 tp!1372378))))

(declare-fun b!4877926 () Bool)

(assert (=> b!4877926 (= e!3048801 tp_is_empty!35677)))

(declare-fun b!4877927 () Bool)

(declare-fun tp!1372377 () Bool)

(declare-fun tp!1372375 () Bool)

(assert (=> b!4877927 (= e!3048801 (and tp!1372377 tp!1372375))))

(assert (=> b!4877356 (= tp!1372287 e!3048801)))

(assert (= (and b!4877356 (is-ElementMatch!13124 (reg!13453 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877926))

(assert (= (and b!4877356 (is-Concat!21484 (reg!13453 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877927))

(assert (= (and b!4877356 (is-Star!13124 (reg!13453 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877928))

(assert (= (and b!4877356 (is-Union!13124 (reg!13453 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877929))

(declare-fun b!4877932 () Bool)

(declare-fun e!3048802 () Bool)

(declare-fun tp!1372381 () Bool)

(assert (=> b!4877932 (= e!3048802 tp!1372381)))

(declare-fun b!4877933 () Bool)

(declare-fun tp!1372379 () Bool)

(declare-fun tp!1372383 () Bool)

(assert (=> b!4877933 (= e!3048802 (and tp!1372379 tp!1372383))))

(declare-fun b!4877930 () Bool)

(assert (=> b!4877930 (= e!3048802 tp_is_empty!35677)))

(declare-fun b!4877931 () Bool)

(declare-fun tp!1372382 () Bool)

(declare-fun tp!1372380 () Bool)

(assert (=> b!4877931 (= e!3048802 (and tp!1372382 tp!1372380))))

(assert (=> b!4877347 (= tp!1372278 e!3048802)))

(assert (= (and b!4877347 (is-ElementMatch!13124 (regOne!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877930))

(assert (= (and b!4877347 (is-Concat!21484 (regOne!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877931))

(assert (= (and b!4877347 (is-Star!13124 (regOne!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877932))

(assert (= (and b!4877347 (is-Union!13124 (regOne!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877933))

(declare-fun b!4877936 () Bool)

(declare-fun e!3048803 () Bool)

(declare-fun tp!1372386 () Bool)

(assert (=> b!4877936 (= e!3048803 tp!1372386)))

(declare-fun b!4877937 () Bool)

(declare-fun tp!1372384 () Bool)

(declare-fun tp!1372388 () Bool)

(assert (=> b!4877937 (= e!3048803 (and tp!1372384 tp!1372388))))

(declare-fun b!4877934 () Bool)

(assert (=> b!4877934 (= e!3048803 tp_is_empty!35677)))

(declare-fun b!4877935 () Bool)

(declare-fun tp!1372387 () Bool)

(declare-fun tp!1372385 () Bool)

(assert (=> b!4877935 (= e!3048803 (and tp!1372387 tp!1372385))))

(assert (=> b!4877347 (= tp!1372276 e!3048803)))

(assert (= (and b!4877347 (is-ElementMatch!13124 (regTwo!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877934))

(assert (= (and b!4877347 (is-Concat!21484 (regTwo!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877935))

(assert (= (and b!4877347 (is-Star!13124 (regTwo!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877936))

(assert (= (and b!4877347 (is-Union!13124 (regTwo!26760 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877937))

(declare-fun b!4877940 () Bool)

(declare-fun e!3048804 () Bool)

(declare-fun tp!1372391 () Bool)

(assert (=> b!4877940 (= e!3048804 tp!1372391)))

(declare-fun b!4877941 () Bool)

(declare-fun tp!1372389 () Bool)

(declare-fun tp!1372393 () Bool)

(assert (=> b!4877941 (= e!3048804 (and tp!1372389 tp!1372393))))

(declare-fun b!4877938 () Bool)

(assert (=> b!4877938 (= e!3048804 tp_is_empty!35677)))

(declare-fun b!4877939 () Bool)

(declare-fun tp!1372392 () Bool)

(declare-fun tp!1372390 () Bool)

(assert (=> b!4877939 (= e!3048804 (and tp!1372392 tp!1372390))))

(assert (=> b!4877378 (= tp!1372310 e!3048804)))

(assert (= (and b!4877378 (is-ElementMatch!13124 (regOne!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877938))

(assert (= (and b!4877378 (is-Concat!21484 (regOne!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877939))

(assert (= (and b!4877378 (is-Star!13124 (regOne!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877940))

(assert (= (and b!4877378 (is-Union!13124 (regOne!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877941))

(declare-fun b!4877944 () Bool)

(declare-fun e!3048805 () Bool)

(declare-fun tp!1372396 () Bool)

(assert (=> b!4877944 (= e!3048805 tp!1372396)))

(declare-fun b!4877945 () Bool)

(declare-fun tp!1372394 () Bool)

(declare-fun tp!1372398 () Bool)

(assert (=> b!4877945 (= e!3048805 (and tp!1372394 tp!1372398))))

(declare-fun b!4877942 () Bool)

(assert (=> b!4877942 (= e!3048805 tp_is_empty!35677)))

(declare-fun b!4877943 () Bool)

(declare-fun tp!1372397 () Bool)

(declare-fun tp!1372395 () Bool)

(assert (=> b!4877943 (= e!3048805 (and tp!1372397 tp!1372395))))

(assert (=> b!4877378 (= tp!1372314 e!3048805)))

(assert (= (and b!4877378 (is-ElementMatch!13124 (regTwo!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877942))

(assert (= (and b!4877378 (is-Concat!21484 (regTwo!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877943))

(assert (= (and b!4877378 (is-Star!13124 (regTwo!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877944))

(assert (= (and b!4877378 (is-Union!13124 (regTwo!26761 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877945))

(declare-fun b!4877948 () Bool)

(declare-fun e!3048806 () Bool)

(declare-fun tp!1372401 () Bool)

(assert (=> b!4877948 (= e!3048806 tp!1372401)))

(declare-fun b!4877949 () Bool)

(declare-fun tp!1372399 () Bool)

(declare-fun tp!1372403 () Bool)

(assert (=> b!4877949 (= e!3048806 (and tp!1372399 tp!1372403))))

(declare-fun b!4877946 () Bool)

(assert (=> b!4877946 (= e!3048806 tp_is_empty!35677)))

(declare-fun b!4877947 () Bool)

(declare-fun tp!1372402 () Bool)

(declare-fun tp!1372400 () Bool)

(assert (=> b!4877947 (= e!3048806 (and tp!1372402 tp!1372400))))

(assert (=> b!4877376 (= tp!1372313 e!3048806)))

(assert (= (and b!4877376 (is-ElementMatch!13124 (regOne!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877946))

(assert (= (and b!4877376 (is-Concat!21484 (regOne!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877947))

(assert (= (and b!4877376 (is-Star!13124 (regOne!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877948))

(assert (= (and b!4877376 (is-Union!13124 (regOne!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877949))

(declare-fun b!4877952 () Bool)

(declare-fun e!3048807 () Bool)

(declare-fun tp!1372406 () Bool)

(assert (=> b!4877952 (= e!3048807 tp!1372406)))

(declare-fun b!4877953 () Bool)

(declare-fun tp!1372404 () Bool)

(declare-fun tp!1372408 () Bool)

(assert (=> b!4877953 (= e!3048807 (and tp!1372404 tp!1372408))))

(declare-fun b!4877950 () Bool)

(assert (=> b!4877950 (= e!3048807 tp_is_empty!35677)))

(declare-fun b!4877951 () Bool)

(declare-fun tp!1372407 () Bool)

(declare-fun tp!1372405 () Bool)

(assert (=> b!4877951 (= e!3048807 (and tp!1372407 tp!1372405))))

(assert (=> b!4877376 (= tp!1372311 e!3048807)))

(assert (= (and b!4877376 (is-ElementMatch!13124 (regTwo!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877950))

(assert (= (and b!4877376 (is-Concat!21484 (regTwo!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877951))

(assert (= (and b!4877376 (is-Star!13124 (regTwo!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877952))

(assert (= (and b!4877376 (is-Union!13124 (regTwo!26760 (regTwo!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877953))

(declare-fun b!4877956 () Bool)

(declare-fun e!3048808 () Bool)

(declare-fun tp!1372411 () Bool)

(assert (=> b!4877956 (= e!3048808 tp!1372411)))

(declare-fun b!4877957 () Bool)

(declare-fun tp!1372409 () Bool)

(declare-fun tp!1372413 () Bool)

(assert (=> b!4877957 (= e!3048808 (and tp!1372409 tp!1372413))))

(declare-fun b!4877954 () Bool)

(assert (=> b!4877954 (= e!3048808 tp_is_empty!35677)))

(declare-fun b!4877955 () Bool)

(declare-fun tp!1372412 () Bool)

(declare-fun tp!1372410 () Bool)

(assert (=> b!4877955 (= e!3048808 (and tp!1372412 tp!1372410))))

(assert (=> b!4877355 (= tp!1372288 e!3048808)))

(assert (= (and b!4877355 (is-ElementMatch!13124 (regOne!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877954))

(assert (= (and b!4877355 (is-Concat!21484 (regOne!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877955))

(assert (= (and b!4877355 (is-Star!13124 (regOne!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877956))

(assert (= (and b!4877355 (is-Union!13124 (regOne!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877957))

(declare-fun b!4877960 () Bool)

(declare-fun e!3048809 () Bool)

(declare-fun tp!1372416 () Bool)

(assert (=> b!4877960 (= e!3048809 tp!1372416)))

(declare-fun b!4877961 () Bool)

(declare-fun tp!1372414 () Bool)

(declare-fun tp!1372418 () Bool)

(assert (=> b!4877961 (= e!3048809 (and tp!1372414 tp!1372418))))

(declare-fun b!4877958 () Bool)

(assert (=> b!4877958 (= e!3048809 tp_is_empty!35677)))

(declare-fun b!4877959 () Bool)

(declare-fun tp!1372417 () Bool)

(declare-fun tp!1372415 () Bool)

(assert (=> b!4877959 (= e!3048809 (and tp!1372417 tp!1372415))))

(assert (=> b!4877355 (= tp!1372286 e!3048809)))

(assert (= (and b!4877355 (is-ElementMatch!13124 (regTwo!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877958))

(assert (= (and b!4877355 (is-Concat!21484 (regTwo!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877959))

(assert (= (and b!4877355 (is-Star!13124 (regTwo!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877960))

(assert (= (and b!4877355 (is-Union!13124 (regTwo!26760 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877961))

(declare-fun b!4877964 () Bool)

(declare-fun e!3048810 () Bool)

(declare-fun tp!1372421 () Bool)

(assert (=> b!4877964 (= e!3048810 tp!1372421)))

(declare-fun b!4877965 () Bool)

(declare-fun tp!1372419 () Bool)

(declare-fun tp!1372423 () Bool)

(assert (=> b!4877965 (= e!3048810 (and tp!1372419 tp!1372423))))

(declare-fun b!4877962 () Bool)

(assert (=> b!4877962 (= e!3048810 tp_is_empty!35677)))

(declare-fun b!4877963 () Bool)

(declare-fun tp!1372422 () Bool)

(declare-fun tp!1372420 () Bool)

(assert (=> b!4877963 (= e!3048810 (and tp!1372422 tp!1372420))))

(assert (=> b!4877349 (= tp!1372275 e!3048810)))

(assert (= (and b!4877349 (is-ElementMatch!13124 (regOne!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877962))

(assert (= (and b!4877349 (is-Concat!21484 (regOne!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877963))

(assert (= (and b!4877349 (is-Star!13124 (regOne!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877964))

(assert (= (and b!4877349 (is-Union!13124 (regOne!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877965))

(declare-fun b!4877968 () Bool)

(declare-fun e!3048811 () Bool)

(declare-fun tp!1372426 () Bool)

(assert (=> b!4877968 (= e!3048811 tp!1372426)))

(declare-fun b!4877969 () Bool)

(declare-fun tp!1372424 () Bool)

(declare-fun tp!1372428 () Bool)

(assert (=> b!4877969 (= e!3048811 (and tp!1372424 tp!1372428))))

(declare-fun b!4877966 () Bool)

(assert (=> b!4877966 (= e!3048811 tp_is_empty!35677)))

(declare-fun b!4877967 () Bool)

(declare-fun tp!1372427 () Bool)

(declare-fun tp!1372425 () Bool)

(assert (=> b!4877967 (= e!3048811 (and tp!1372427 tp!1372425))))

(assert (=> b!4877349 (= tp!1372279 e!3048811)))

(assert (= (and b!4877349 (is-ElementMatch!13124 (regTwo!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877966))

(assert (= (and b!4877349 (is-Concat!21484 (regTwo!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877967))

(assert (= (and b!4877349 (is-Star!13124 (regTwo!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877968))

(assert (= (and b!4877349 (is-Union!13124 (regTwo!26761 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877969))

(declare-fun b!4877972 () Bool)

(declare-fun e!3048812 () Bool)

(declare-fun tp!1372431 () Bool)

(assert (=> b!4877972 (= e!3048812 tp!1372431)))

(declare-fun b!4877973 () Bool)

(declare-fun tp!1372429 () Bool)

(declare-fun tp!1372433 () Bool)

(assert (=> b!4877973 (= e!3048812 (and tp!1372429 tp!1372433))))

(declare-fun b!4877970 () Bool)

(assert (=> b!4877970 (= e!3048812 tp_is_empty!35677)))

(declare-fun b!4877971 () Bool)

(declare-fun tp!1372432 () Bool)

(declare-fun tp!1372430 () Bool)

(assert (=> b!4877971 (= e!3048812 (and tp!1372432 tp!1372430))))

(assert (=> b!4877357 (= tp!1372285 e!3048812)))

(assert (= (and b!4877357 (is-ElementMatch!13124 (regOne!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877970))

(assert (= (and b!4877357 (is-Concat!21484 (regOne!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877971))

(assert (= (and b!4877357 (is-Star!13124 (regOne!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877972))

(assert (= (and b!4877357 (is-Union!13124 (regOne!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877973))

(declare-fun b!4877976 () Bool)

(declare-fun e!3048813 () Bool)

(declare-fun tp!1372436 () Bool)

(assert (=> b!4877976 (= e!3048813 tp!1372436)))

(declare-fun b!4877977 () Bool)

(declare-fun tp!1372434 () Bool)

(declare-fun tp!1372438 () Bool)

(assert (=> b!4877977 (= e!3048813 (and tp!1372434 tp!1372438))))

(declare-fun b!4877974 () Bool)

(assert (=> b!4877974 (= e!3048813 tp_is_empty!35677)))

(declare-fun b!4877975 () Bool)

(declare-fun tp!1372437 () Bool)

(declare-fun tp!1372435 () Bool)

(assert (=> b!4877975 (= e!3048813 (and tp!1372437 tp!1372435))))

(assert (=> b!4877357 (= tp!1372289 e!3048813)))

(assert (= (and b!4877357 (is-ElementMatch!13124 (regTwo!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877974))

(assert (= (and b!4877357 (is-Concat!21484 (regTwo!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877975))

(assert (= (and b!4877357 (is-Star!13124 (regTwo!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877976))

(assert (= (and b!4877357 (is-Union!13124 (regTwo!26761 (regTwo!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877977))

(declare-fun b!4877980 () Bool)

(declare-fun e!3048814 () Bool)

(declare-fun tp!1372441 () Bool)

(assert (=> b!4877980 (= e!3048814 tp!1372441)))

(declare-fun b!4877981 () Bool)

(declare-fun tp!1372439 () Bool)

(declare-fun tp!1372443 () Bool)

(assert (=> b!4877981 (= e!3048814 (and tp!1372439 tp!1372443))))

(declare-fun b!4877978 () Bool)

(assert (=> b!4877978 (= e!3048814 tp_is_empty!35677)))

(declare-fun b!4877979 () Bool)

(declare-fun tp!1372442 () Bool)

(declare-fun tp!1372440 () Bool)

(assert (=> b!4877979 (= e!3048814 (and tp!1372442 tp!1372440))))

(assert (=> b!4877348 (= tp!1372277 e!3048814)))

(assert (= (and b!4877348 (is-ElementMatch!13124 (reg!13453 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877978))

(assert (= (and b!4877348 (is-Concat!21484 (reg!13453 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877979))

(assert (= (and b!4877348 (is-Star!13124 (reg!13453 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877980))

(assert (= (and b!4877348 (is-Union!13124 (reg!13453 (reg!13453 (regex!8049 (h!62463 rules!1164)))))) b!4877981))

(declare-fun b!4877984 () Bool)

(declare-fun b_free!130847 () Bool)

(declare-fun b_next!131637 () Bool)

(assert (=> b!4877984 (= b_free!130847 (not b_next!131637))))

(declare-fun tb!258351 () Bool)

(declare-fun t!364669 () Bool)

(assert (=> (and b!4877984 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364669) tb!258351))

(declare-fun result!321602 () Bool)

(assert (= result!321602 result!321562))

(assert (=> d!1566962 t!364669))

(declare-fun t!364671 () Bool)

(declare-fun tb!258353 () Bool)

(assert (=> (and b!4877984 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364671) tb!258353))

(declare-fun result!321604 () Bool)

(assert (= result!321604 result!321578))

(assert (=> d!1567066 t!364671))

(declare-fun t!364673 () Bool)

(declare-fun tb!258355 () Bool)

(assert (=> (and b!4877984 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164)))) t!364673) tb!258355))

(declare-fun result!321606 () Bool)

(assert (= result!321606 result!321584))

(assert (=> d!1567076 t!364673))

(assert (=> d!1567076 t!364671))

(declare-fun t!364675 () Bool)

(declare-fun tb!258357 () Bool)

(assert (=> (and b!4877984 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364675) tb!258357))

(declare-fun result!321608 () Bool)

(assert (= result!321608 result!321590))

(assert (=> d!1567120 t!364675))

(declare-fun b_and!343573 () Bool)

(declare-fun tp!1372447 () Bool)

(assert (=> b!4877984 (= tp!1372447 (and (=> t!364673 result!321606) (=> t!364675 result!321608) (=> t!364671 result!321604) (=> t!364669 result!321602) b_and!343573))))

(declare-fun b_free!130849 () Bool)

(declare-fun b_next!131639 () Bool)

(assert (=> b!4877984 (= b_free!130849 (not b_next!131639))))

(declare-fun t!364677 () Bool)

(declare-fun tb!258359 () Bool)

(assert (=> (and b!4877984 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998494)))))) t!364677) tb!258359))

(declare-fun result!321610 () Bool)

(assert (= result!321610 result!321570))

(assert (=> d!1566996 t!364677))

(declare-fun tb!258361 () Bool)

(declare-fun t!364679 () Bool)

(assert (=> (and b!4877984 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toChars!10791 (transformation!8049 (rule!11205 (_1!33258 (get!19251 lt!1998506)))))) t!364679) tb!258361))

(declare-fun result!321612 () Bool)

(assert (= result!321612 result!321596))

(assert (=> d!1567128 t!364679))

(declare-fun tp!1372446 () Bool)

(declare-fun b_and!343575 () Bool)

(assert (=> b!4877984 (= tp!1372446 (and (=> t!364677 result!321610) (=> t!364679 result!321612) b_and!343575))))

(declare-fun e!3048815 () Bool)

(assert (=> b!4877984 (= e!3048815 (and tp!1372447 tp!1372446))))

(declare-fun e!3048818 () Bool)

(declare-fun tp!1372445 () Bool)

(declare-fun b!4877983 () Bool)

(assert (=> b!4877983 (= e!3048818 (and tp!1372445 (inv!71951 (tag!8913 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (inv!71954 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) e!3048815))))

(declare-fun b!4877982 () Bool)

(declare-fun e!3048817 () Bool)

(declare-fun tp!1372444 () Bool)

(assert (=> b!4877982 (= e!3048817 (and e!3048818 tp!1372444))))

(assert (=> b!4877368 (= tp!1372301 e!3048817)))

(assert (= b!4877983 b!4877984))

(assert (= b!4877982 b!4877983))

(assert (= (and b!4877368 (is-Cons!56015 (t!364613 (t!364613 (t!364613 rules!1164))))) b!4877982))

(declare-fun m!5880734 () Bool)

(assert (=> b!4877983 m!5880734))

(declare-fun m!5880736 () Bool)

(assert (=> b!4877983 m!5880736))

(declare-fun b!4877987 () Bool)

(declare-fun e!3048819 () Bool)

(declare-fun tp!1372450 () Bool)

(assert (=> b!4877987 (= e!3048819 tp!1372450)))

(declare-fun b!4877988 () Bool)

(declare-fun tp!1372448 () Bool)

(declare-fun tp!1372452 () Bool)

(assert (=> b!4877988 (= e!3048819 (and tp!1372448 tp!1372452))))

(declare-fun b!4877985 () Bool)

(assert (=> b!4877985 (= e!3048819 tp_is_empty!35677)))

(declare-fun b!4877986 () Bool)

(declare-fun tp!1372451 () Bool)

(declare-fun tp!1372449 () Bool)

(assert (=> b!4877986 (= e!3048819 (and tp!1372451 tp!1372449))))

(assert (=> b!4877369 (= tp!1372302 e!3048819)))

(assert (= (and b!4877369 (is-ElementMatch!13124 (regex!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))) b!4877985))

(assert (= (and b!4877369 (is-Concat!21484 (regex!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))) b!4877986))

(assert (= (and b!4877369 (is-Star!13124 (regex!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))) b!4877987))

(assert (= (and b!4877369 (is-Union!13124 (regex!8049 (h!62463 (t!364613 (t!364613 rules!1164)))))) b!4877988))

(declare-fun b!4877991 () Bool)

(declare-fun e!3048820 () Bool)

(declare-fun tp!1372455 () Bool)

(assert (=> b!4877991 (= e!3048820 tp!1372455)))

(declare-fun b!4877992 () Bool)

(declare-fun tp!1372453 () Bool)

(declare-fun tp!1372457 () Bool)

(assert (=> b!4877992 (= e!3048820 (and tp!1372453 tp!1372457))))

(declare-fun b!4877989 () Bool)

(assert (=> b!4877989 (= e!3048820 tp_is_empty!35677)))

(declare-fun b!4877990 () Bool)

(declare-fun tp!1372456 () Bool)

(declare-fun tp!1372454 () Bool)

(assert (=> b!4877990 (= e!3048820 (and tp!1372456 tp!1372454))))

(assert (=> b!4877351 (= tp!1372283 e!3048820)))

(assert (= (and b!4877351 (is-ElementMatch!13124 (regOne!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877989))

(assert (= (and b!4877351 (is-Concat!21484 (regOne!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877990))

(assert (= (and b!4877351 (is-Star!13124 (regOne!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877991))

(assert (= (and b!4877351 (is-Union!13124 (regOne!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877992))

(declare-fun b!4877995 () Bool)

(declare-fun e!3048821 () Bool)

(declare-fun tp!1372460 () Bool)

(assert (=> b!4877995 (= e!3048821 tp!1372460)))

(declare-fun b!4877996 () Bool)

(declare-fun tp!1372458 () Bool)

(declare-fun tp!1372462 () Bool)

(assert (=> b!4877996 (= e!3048821 (and tp!1372458 tp!1372462))))

(declare-fun b!4877993 () Bool)

(assert (=> b!4877993 (= e!3048821 tp_is_empty!35677)))

(declare-fun b!4877994 () Bool)

(declare-fun tp!1372461 () Bool)

(declare-fun tp!1372459 () Bool)

(assert (=> b!4877994 (= e!3048821 (and tp!1372461 tp!1372459))))

(assert (=> b!4877351 (= tp!1372281 e!3048821)))

(assert (= (and b!4877351 (is-ElementMatch!13124 (regTwo!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877993))

(assert (= (and b!4877351 (is-Concat!21484 (regTwo!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877994))

(assert (= (and b!4877351 (is-Star!13124 (regTwo!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877995))

(assert (= (and b!4877351 (is-Union!13124 (regTwo!26760 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4877996))

(declare-fun b!4877999 () Bool)

(declare-fun e!3048822 () Bool)

(declare-fun tp!1372465 () Bool)

(assert (=> b!4877999 (= e!3048822 tp!1372465)))

(declare-fun b!4878000 () Bool)

(declare-fun tp!1372463 () Bool)

(declare-fun tp!1372467 () Bool)

(assert (=> b!4878000 (= e!3048822 (and tp!1372463 tp!1372467))))

(declare-fun b!4877997 () Bool)

(assert (=> b!4877997 (= e!3048822 tp_is_empty!35677)))

(declare-fun b!4877998 () Bool)

(declare-fun tp!1372466 () Bool)

(declare-fun tp!1372464 () Bool)

(assert (=> b!4877998 (= e!3048822 (and tp!1372466 tp!1372464))))

(assert (=> b!4877373 (= tp!1372307 e!3048822)))

(assert (= (and b!4877373 (is-ElementMatch!13124 (reg!13453 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877997))

(assert (= (and b!4877373 (is-Concat!21484 (reg!13453 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877998))

(assert (= (and b!4877373 (is-Star!13124 (reg!13453 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4877999))

(assert (= (and b!4877373 (is-Union!13124 (reg!13453 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878000))

(declare-fun b!4878003 () Bool)

(declare-fun e!3048823 () Bool)

(declare-fun tp!1372470 () Bool)

(assert (=> b!4878003 (= e!3048823 tp!1372470)))

(declare-fun b!4878004 () Bool)

(declare-fun tp!1372468 () Bool)

(declare-fun tp!1372472 () Bool)

(assert (=> b!4878004 (= e!3048823 (and tp!1372468 tp!1372472))))

(declare-fun b!4878001 () Bool)

(assert (=> b!4878001 (= e!3048823 tp_is_empty!35677)))

(declare-fun b!4878002 () Bool)

(declare-fun tp!1372471 () Bool)

(declare-fun tp!1372469 () Bool)

(assert (=> b!4878002 (= e!3048823 (and tp!1372471 tp!1372469))))

(assert (=> b!4877361 (= tp!1372290 e!3048823)))

(assert (= (and b!4877361 (is-ElementMatch!13124 (regOne!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878001))

(assert (= (and b!4877361 (is-Concat!21484 (regOne!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878002))

(assert (= (and b!4877361 (is-Star!13124 (regOne!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878003))

(assert (= (and b!4877361 (is-Union!13124 (regOne!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878004))

(declare-fun b!4878007 () Bool)

(declare-fun e!3048824 () Bool)

(declare-fun tp!1372475 () Bool)

(assert (=> b!4878007 (= e!3048824 tp!1372475)))

(declare-fun b!4878008 () Bool)

(declare-fun tp!1372473 () Bool)

(declare-fun tp!1372477 () Bool)

(assert (=> b!4878008 (= e!3048824 (and tp!1372473 tp!1372477))))

(declare-fun b!4878005 () Bool)

(assert (=> b!4878005 (= e!3048824 tp_is_empty!35677)))

(declare-fun b!4878006 () Bool)

(declare-fun tp!1372476 () Bool)

(declare-fun tp!1372474 () Bool)

(assert (=> b!4878006 (= e!3048824 (and tp!1372476 tp!1372474))))

(assert (=> b!4877361 (= tp!1372294 e!3048824)))

(assert (= (and b!4877361 (is-ElementMatch!13124 (regTwo!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878005))

(assert (= (and b!4877361 (is-Concat!21484 (regTwo!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878006))

(assert (= (and b!4877361 (is-Star!13124 (regTwo!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878007))

(assert (= (and b!4877361 (is-Union!13124 (regTwo!26761 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878008))

(declare-fun b!4878011 () Bool)

(declare-fun e!3048825 () Bool)

(declare-fun tp!1372480 () Bool)

(assert (=> b!4878011 (= e!3048825 tp!1372480)))

(declare-fun b!4878012 () Bool)

(declare-fun tp!1372478 () Bool)

(declare-fun tp!1372482 () Bool)

(assert (=> b!4878012 (= e!3048825 (and tp!1372478 tp!1372482))))

(declare-fun b!4878009 () Bool)

(assert (=> b!4878009 (= e!3048825 tp_is_empty!35677)))

(declare-fun b!4878010 () Bool)

(declare-fun tp!1372481 () Bool)

(declare-fun tp!1372479 () Bool)

(assert (=> b!4878010 (= e!3048825 (and tp!1372481 tp!1372479))))

(assert (=> b!4877352 (= tp!1372282 e!3048825)))

(assert (= (and b!4877352 (is-ElementMatch!13124 (reg!13453 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878009))

(assert (= (and b!4877352 (is-Concat!21484 (reg!13453 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878010))

(assert (= (and b!4877352 (is-Star!13124 (reg!13453 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878011))

(assert (= (and b!4877352 (is-Union!13124 (reg!13453 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878012))

(declare-fun b!4878015 () Bool)

(declare-fun e!3048826 () Bool)

(declare-fun tp!1372485 () Bool)

(assert (=> b!4878015 (= e!3048826 tp!1372485)))

(declare-fun b!4878016 () Bool)

(declare-fun tp!1372483 () Bool)

(declare-fun tp!1372487 () Bool)

(assert (=> b!4878016 (= e!3048826 (and tp!1372483 tp!1372487))))

(declare-fun b!4878013 () Bool)

(assert (=> b!4878013 (= e!3048826 tp_is_empty!35677)))

(declare-fun b!4878014 () Bool)

(declare-fun tp!1372486 () Bool)

(declare-fun tp!1372484 () Bool)

(assert (=> b!4878014 (= e!3048826 (and tp!1372486 tp!1372484))))

(assert (=> b!4877359 (= tp!1372293 e!3048826)))

(assert (= (and b!4877359 (is-ElementMatch!13124 (regOne!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878013))

(assert (= (and b!4877359 (is-Concat!21484 (regOne!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878014))

(assert (= (and b!4877359 (is-Star!13124 (regOne!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878015))

(assert (= (and b!4877359 (is-Union!13124 (regOne!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878016))

(declare-fun b!4878019 () Bool)

(declare-fun e!3048827 () Bool)

(declare-fun tp!1372490 () Bool)

(assert (=> b!4878019 (= e!3048827 tp!1372490)))

(declare-fun b!4878020 () Bool)

(declare-fun tp!1372488 () Bool)

(declare-fun tp!1372492 () Bool)

(assert (=> b!4878020 (= e!3048827 (and tp!1372488 tp!1372492))))

(declare-fun b!4878017 () Bool)

(assert (=> b!4878017 (= e!3048827 tp_is_empty!35677)))

(declare-fun b!4878018 () Bool)

(declare-fun tp!1372491 () Bool)

(declare-fun tp!1372489 () Bool)

(assert (=> b!4878018 (= e!3048827 (and tp!1372491 tp!1372489))))

(assert (=> b!4877359 (= tp!1372291 e!3048827)))

(assert (= (and b!4877359 (is-ElementMatch!13124 (regTwo!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878017))

(assert (= (and b!4877359 (is-Concat!21484 (regTwo!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878018))

(assert (= (and b!4877359 (is-Star!13124 (regTwo!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878019))

(assert (= (and b!4877359 (is-Union!13124 (regTwo!26760 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878020))

(declare-fun tp!1372495 () Bool)

(declare-fun b!4878021 () Bool)

(declare-fun tp!1372494 () Bool)

(declare-fun e!3048829 () Bool)

(assert (=> b!4878021 (= e!3048829 (and (inv!71955 (left!40688 (left!40688 (right!41018 (c!829488 input!585))))) tp!1372495 (inv!71955 (right!41018 (left!40688 (right!41018 (c!829488 input!585))))) tp!1372494))))

(declare-fun b!4878023 () Bool)

(declare-fun e!3048828 () Bool)

(declare-fun tp!1372493 () Bool)

(assert (=> b!4878023 (= e!3048828 tp!1372493)))

(declare-fun b!4878022 () Bool)

(assert (=> b!4878022 (= e!3048829 (and (inv!71962 (xs!17913 (left!40688 (right!41018 (c!829488 input!585))))) e!3048828))))

(assert (=> b!4877365 (= tp!1372300 (and (inv!71955 (left!40688 (right!41018 (c!829488 input!585)))) e!3048829))))

(assert (= (and b!4877365 (is-Node!14603 (left!40688 (right!41018 (c!829488 input!585))))) b!4878021))

(assert (= b!4878022 b!4878023))

(assert (= (and b!4877365 (is-Leaf!24339 (left!40688 (right!41018 (c!829488 input!585))))) b!4878022))

(declare-fun m!5880738 () Bool)

(assert (=> b!4878021 m!5880738))

(declare-fun m!5880740 () Bool)

(assert (=> b!4878021 m!5880740))

(declare-fun m!5880742 () Bool)

(assert (=> b!4878022 m!5880742))

(assert (=> b!4877365 m!5879868))

(declare-fun e!3048831 () Bool)

(declare-fun tp!1372498 () Bool)

(declare-fun tp!1372497 () Bool)

(declare-fun b!4878024 () Bool)

(assert (=> b!4878024 (= e!3048831 (and (inv!71955 (left!40688 (right!41018 (right!41018 (c!829488 input!585))))) tp!1372498 (inv!71955 (right!41018 (right!41018 (right!41018 (c!829488 input!585))))) tp!1372497))))

(declare-fun b!4878026 () Bool)

(declare-fun e!3048830 () Bool)

(declare-fun tp!1372496 () Bool)

(assert (=> b!4878026 (= e!3048830 tp!1372496)))

(declare-fun b!4878025 () Bool)

(assert (=> b!4878025 (= e!3048831 (and (inv!71962 (xs!17913 (right!41018 (right!41018 (c!829488 input!585))))) e!3048830))))

(assert (=> b!4877365 (= tp!1372299 (and (inv!71955 (right!41018 (right!41018 (c!829488 input!585)))) e!3048831))))

(assert (= (and b!4877365 (is-Node!14603 (right!41018 (right!41018 (c!829488 input!585))))) b!4878024))

(assert (= b!4878025 b!4878026))

(assert (= (and b!4877365 (is-Leaf!24339 (right!41018 (right!41018 (c!829488 input!585))))) b!4878025))

(declare-fun m!5880744 () Bool)

(assert (=> b!4878024 m!5880744))

(declare-fun m!5880746 () Bool)

(assert (=> b!4878024 m!5880746))

(declare-fun m!5880748 () Bool)

(assert (=> b!4878025 m!5880748))

(assert (=> b!4877365 m!5879870))

(declare-fun b!4878029 () Bool)

(declare-fun e!3048832 () Bool)

(declare-fun tp!1372501 () Bool)

(assert (=> b!4878029 (= e!3048832 tp!1372501)))

(declare-fun b!4878030 () Bool)

(declare-fun tp!1372499 () Bool)

(declare-fun tp!1372503 () Bool)

(assert (=> b!4878030 (= e!3048832 (and tp!1372499 tp!1372503))))

(declare-fun b!4878027 () Bool)

(assert (=> b!4878027 (= e!3048832 tp_is_empty!35677)))

(declare-fun b!4878028 () Bool)

(declare-fun tp!1372502 () Bool)

(declare-fun tp!1372500 () Bool)

(assert (=> b!4878028 (= e!3048832 (and tp!1372502 tp!1372500))))

(assert (=> b!4877372 (= tp!1372308 e!3048832)))

(assert (= (and b!4877372 (is-ElementMatch!13124 (regOne!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878027))

(assert (= (and b!4877372 (is-Concat!21484 (regOne!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878028))

(assert (= (and b!4877372 (is-Star!13124 (regOne!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878029))

(assert (= (and b!4877372 (is-Union!13124 (regOne!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878030))

(declare-fun b!4878035 () Bool)

(declare-fun e!3048833 () Bool)

(declare-fun tp!1372506 () Bool)

(assert (=> b!4878035 (= e!3048833 tp!1372506)))

(declare-fun b!4878036 () Bool)

(declare-fun tp!1372504 () Bool)

(declare-fun tp!1372508 () Bool)

(assert (=> b!4878036 (= e!3048833 (and tp!1372504 tp!1372508))))

(declare-fun b!4878033 () Bool)

(assert (=> b!4878033 (= e!3048833 tp_is_empty!35677)))

(declare-fun b!4878034 () Bool)

(declare-fun tp!1372507 () Bool)

(declare-fun tp!1372505 () Bool)

(assert (=> b!4878034 (= e!3048833 (and tp!1372507 tp!1372505))))

(assert (=> b!4877372 (= tp!1372306 e!3048833)))

(assert (= (and b!4877372 (is-ElementMatch!13124 (regTwo!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878033))

(assert (= (and b!4877372 (is-Concat!21484 (regTwo!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878034))

(assert (= (and b!4877372 (is-Star!13124 (regTwo!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878035))

(assert (= (and b!4877372 (is-Union!13124 (regTwo!26760 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878036))

(declare-fun b!4878041 () Bool)

(declare-fun e!3048836 () Bool)

(declare-fun tp!1372511 () Bool)

(assert (=> b!4878041 (= e!3048836 tp!1372511)))

(declare-fun b!4878042 () Bool)

(declare-fun tp!1372509 () Bool)

(declare-fun tp!1372513 () Bool)

(assert (=> b!4878042 (= e!3048836 (and tp!1372509 tp!1372513))))

(declare-fun b!4878039 () Bool)

(assert (=> b!4878039 (= e!3048836 tp_is_empty!35677)))

(declare-fun b!4878040 () Bool)

(declare-fun tp!1372512 () Bool)

(declare-fun tp!1372510 () Bool)

(assert (=> b!4878040 (= e!3048836 (and tp!1372512 tp!1372510))))

(assert (=> b!4877360 (= tp!1372292 e!3048836)))

(assert (= (and b!4877360 (is-ElementMatch!13124 (reg!13453 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878039))

(assert (= (and b!4877360 (is-Concat!21484 (reg!13453 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878040))

(assert (= (and b!4877360 (is-Star!13124 (reg!13453 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878041))

(assert (= (and b!4877360 (is-Union!13124 (reg!13453 (regex!8049 (h!62463 (t!364613 rules!1164)))))) b!4878042))

(declare-fun b!4878045 () Bool)

(declare-fun e!3048839 () Bool)

(declare-fun tp!1372514 () Bool)

(assert (=> b!4878045 (= e!3048839 (and tp_is_empty!35677 tp!1372514))))

(assert (=> b!4877345 (= tp!1372274 e!3048839)))

(assert (= (and b!4877345 (is-Cons!56012 (t!364610 (innerList!14691 (xs!17913 (c!829488 input!585)))))) b!4878045))

(declare-fun b!4878046 () Bool)

(declare-fun e!3048840 () Bool)

(declare-fun tp!1372515 () Bool)

(assert (=> b!4878046 (= e!3048840 (and tp_is_empty!35677 tp!1372515))))

(assert (=> b!4877367 (= tp!1372298 e!3048840)))

(assert (= (and b!4877367 (is-Cons!56012 (innerList!14691 (xs!17913 (right!41018 (c!829488 input!585)))))) b!4878046))

(declare-fun b!4878049 () Bool)

(declare-fun e!3048841 () Bool)

(declare-fun tp!1372518 () Bool)

(assert (=> b!4878049 (= e!3048841 tp!1372518)))

(declare-fun b!4878050 () Bool)

(declare-fun tp!1372516 () Bool)

(declare-fun tp!1372520 () Bool)

(assert (=> b!4878050 (= e!3048841 (and tp!1372516 tp!1372520))))

(declare-fun b!4878047 () Bool)

(assert (=> b!4878047 (= e!3048841 tp_is_empty!35677)))

(declare-fun b!4878048 () Bool)

(declare-fun tp!1372519 () Bool)

(declare-fun tp!1372517 () Bool)

(assert (=> b!4878048 (= e!3048841 (and tp!1372519 tp!1372517))))

(assert (=> b!4877374 (= tp!1372305 e!3048841)))

(assert (= (and b!4877374 (is-ElementMatch!13124 (regOne!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878047))

(assert (= (and b!4877374 (is-Concat!21484 (regOne!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878048))

(assert (= (and b!4877374 (is-Star!13124 (regOne!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878049))

(assert (= (and b!4877374 (is-Union!13124 (regOne!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878050))

(declare-fun b!4878053 () Bool)

(declare-fun e!3048842 () Bool)

(declare-fun tp!1372523 () Bool)

(assert (=> b!4878053 (= e!3048842 tp!1372523)))

(declare-fun b!4878054 () Bool)

(declare-fun tp!1372521 () Bool)

(declare-fun tp!1372525 () Bool)

(assert (=> b!4878054 (= e!3048842 (and tp!1372521 tp!1372525))))

(declare-fun b!4878051 () Bool)

(assert (=> b!4878051 (= e!3048842 tp_is_empty!35677)))

(declare-fun b!4878052 () Bool)

(declare-fun tp!1372524 () Bool)

(declare-fun tp!1372522 () Bool)

(assert (=> b!4878052 (= e!3048842 (and tp!1372524 tp!1372522))))

(assert (=> b!4877374 (= tp!1372309 e!3048842)))

(assert (= (and b!4877374 (is-ElementMatch!13124 (regTwo!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878051))

(assert (= (and b!4877374 (is-Concat!21484 (regTwo!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878052))

(assert (= (and b!4877374 (is-Star!13124 (regTwo!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878053))

(assert (= (and b!4877374 (is-Union!13124 (regTwo!26761 (regOne!26761 (regex!8049 (h!62463 rules!1164)))))) b!4878054))

(declare-fun b!4878057 () Bool)

(declare-fun e!3048843 () Bool)

(declare-fun tp!1372528 () Bool)

(assert (=> b!4878057 (= e!3048843 tp!1372528)))

(declare-fun b!4878058 () Bool)

(declare-fun tp!1372526 () Bool)

(declare-fun tp!1372530 () Bool)

(assert (=> b!4878058 (= e!3048843 (and tp!1372526 tp!1372530))))

(declare-fun b!4878055 () Bool)

(assert (=> b!4878055 (= e!3048843 tp_is_empty!35677)))

(declare-fun b!4878056 () Bool)

(declare-fun tp!1372529 () Bool)

(declare-fun tp!1372527 () Bool)

(assert (=> b!4878056 (= e!3048843 (and tp!1372529 tp!1372527))))

(assert (=> b!4877353 (= tp!1372280 e!3048843)))

(assert (= (and b!4877353 (is-ElementMatch!13124 (regOne!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878055))

(assert (= (and b!4877353 (is-Concat!21484 (regOne!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878056))

(assert (= (and b!4877353 (is-Star!13124 (regOne!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878057))

(assert (= (and b!4877353 (is-Union!13124 (regOne!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878058))

(declare-fun b!4878063 () Bool)

(declare-fun e!3048846 () Bool)

(declare-fun tp!1372533 () Bool)

(assert (=> b!4878063 (= e!3048846 tp!1372533)))

(declare-fun b!4878064 () Bool)

(declare-fun tp!1372531 () Bool)

(declare-fun tp!1372535 () Bool)

(assert (=> b!4878064 (= e!3048846 (and tp!1372531 tp!1372535))))

(declare-fun b!4878061 () Bool)

(assert (=> b!4878061 (= e!3048846 tp_is_empty!35677)))

(declare-fun b!4878062 () Bool)

(declare-fun tp!1372534 () Bool)

(declare-fun tp!1372532 () Bool)

(assert (=> b!4878062 (= e!3048846 (and tp!1372534 tp!1372532))))

(assert (=> b!4877353 (= tp!1372284 e!3048846)))

(assert (= (and b!4877353 (is-ElementMatch!13124 (regTwo!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878061))

(assert (= (and b!4877353 (is-Concat!21484 (regTwo!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878062))

(assert (= (and b!4877353 (is-Star!13124 (regTwo!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878063))

(assert (= (and b!4877353 (is-Union!13124 (regTwo!26761 (regOne!26760 (regex!8049 (h!62463 rules!1164)))))) b!4878064))

(declare-fun b_lambda!193959 () Bool)

(assert (= b_lambda!193947 (or (and b!4876841 b_free!130823) (and b!4876979 b_free!130831 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877370 b_free!130839 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877984 b_free!130847 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) b_lambda!193959)))

(declare-fun b_lambda!193961 () Bool)

(assert (= b_lambda!193945 (or b!4877141 b_lambda!193961)))

(declare-fun bs!1175204 () Bool)

(declare-fun d!1567208 () Bool)

(assert (= bs!1175204 (and d!1567208 b!4877141)))

(assert (=> bs!1175204 (= (dynLambda!22532 lambda!243647 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))) (= (list!17543 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))) (list!17543 (seqFromList!5905 (list!17543 (_1!33260 lt!1998441))))))))

(declare-fun b_lambda!193973 () Bool)

(assert (=> (not b_lambda!193973) (not bs!1175204)))

(declare-fun t!364681 () Bool)

(declare-fun tb!258363 () Bool)

(assert (=> (and b!4876841 (= (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364681) tb!258363))

(declare-fun b!4878075 () Bool)

(declare-fun tp!1372536 () Bool)

(declare-fun e!3048849 () Bool)

(assert (=> b!4878075 (= e!3048849 (and (inv!71955 (c!829488 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441))))))) tp!1372536))))

(declare-fun result!321614 () Bool)

(assert (=> tb!258363 (= result!321614 (and (inv!71956 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (seqFromList!5905 (list!17543 (_1!33260 lt!1998441)))))) e!3048849))))

(assert (= tb!258363 b!4878075))

(declare-fun m!5880750 () Bool)

(assert (=> b!4878075 m!5880750))

(declare-fun m!5880752 () Bool)

(assert (=> tb!258363 m!5880752))

(assert (=> bs!1175204 t!364681))

(declare-fun b_and!343577 () Bool)

(assert (= b_and!343567 (and (=> t!364681 result!321614) b_and!343577)))

(declare-fun t!364683 () Bool)

(declare-fun tb!258365 () Bool)

(assert (=> (and b!4876979 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364683) tb!258365))

(declare-fun result!321616 () Bool)

(assert (= result!321616 result!321614))

(assert (=> bs!1175204 t!364683))

(declare-fun b_and!343579 () Bool)

(assert (= b_and!343569 (and (=> t!364683 result!321616) b_and!343579)))

(declare-fun t!364685 () Bool)

(declare-fun tb!258367 () Bool)

(assert (=> (and b!4877370 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364685) tb!258367))

(declare-fun result!321618 () Bool)

(assert (= result!321618 result!321614))

(assert (=> bs!1175204 t!364685))

(declare-fun b_and!343581 () Bool)

(assert (= b_and!343571 (and (=> t!364685 result!321618) b_and!343581)))

(declare-fun t!364687 () Bool)

(declare-fun tb!258369 () Bool)

(assert (=> (and b!4877984 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364687) tb!258369))

(declare-fun result!321620 () Bool)

(assert (= result!321620 result!321614))

(assert (=> bs!1175204 t!364687))

(declare-fun b_and!343583 () Bool)

(assert (= b_and!343575 (and (=> t!364687 result!321620) b_and!343583)))

(declare-fun b_lambda!193975 () Bool)

(assert (=> (not b_lambda!193975) (not bs!1175204)))

(assert (=> bs!1175204 t!364651))

(declare-fun b_and!343585 () Bool)

(assert (= b_and!343561 (and (=> t!364651 result!321584) b_and!343585)))

(assert (=> bs!1175204 t!364653))

(declare-fun b_and!343587 () Bool)

(assert (= b_and!343563 (and (=> t!364653 result!321586) b_and!343587)))

(assert (=> bs!1175204 t!364655))

(declare-fun b_and!343589 () Bool)

(assert (= b_and!343565 (and (=> t!364655 result!321588) b_and!343589)))

(assert (=> bs!1175204 t!364673))

(declare-fun b_and!343591 () Bool)

(assert (= b_and!343573 (and (=> t!364673 result!321606) b_and!343591)))

(assert (=> bs!1175204 m!5879622))

(assert (=> bs!1175204 m!5880448))

(declare-fun m!5880754 () Bool)

(assert (=> bs!1175204 m!5880754))

(declare-fun m!5880756 () Bool)

(assert (=> bs!1175204 m!5880756))

(assert (=> bs!1175204 m!5879622))

(assert (=> bs!1175204 m!5880444))

(assert (=> bs!1175204 m!5880444))

(assert (=> bs!1175204 m!5880754))

(assert (=> d!1567068 d!1567208))

(declare-fun b_lambda!193963 () Bool)

(assert (= b_lambda!193951 (or b!4877141 b_lambda!193963)))

(declare-fun bs!1175205 () Bool)

(declare-fun d!1567210 () Bool)

(assert (= bs!1175205 (and d!1567210 b!4877141)))

(assert (=> bs!1175205 (= (dynLambda!22532 lambda!243647 (_1!33260 lt!1998441)) (= (list!17543 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441)))) (list!17543 (_1!33260 lt!1998441))))))

(declare-fun b_lambda!193977 () Bool)

(assert (=> (not b_lambda!193977) (not bs!1175205)))

(declare-fun t!364689 () Bool)

(declare-fun tb!258371 () Bool)

(assert (=> (and b!4876841 (= (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364689) tb!258371))

(declare-fun e!3048850 () Bool)

(declare-fun tp!1372537 () Bool)

(declare-fun b!4878076 () Bool)

(assert (=> b!4878076 (= e!3048850 (and (inv!71955 (c!829488 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441))))) tp!1372537))))

(declare-fun result!321622 () Bool)

(assert (=> tb!258371 (= result!321622 (and (inv!71956 (dynLambda!22531 (toChars!10791 (transformation!8049 (h!62463 rules!1164))) (dynLambda!22529 (toValue!10932 (transformation!8049 (h!62463 rules!1164))) (_1!33260 lt!1998441)))) e!3048850))))

(assert (= tb!258371 b!4878076))

(declare-fun m!5880758 () Bool)

(assert (=> b!4878076 m!5880758))

(declare-fun m!5880760 () Bool)

(assert (=> tb!258371 m!5880760))

(assert (=> bs!1175205 t!364689))

(declare-fun b_and!343593 () Bool)

(assert (= b_and!343577 (and (=> t!364689 result!321622) b_and!343593)))

(declare-fun t!364691 () Bool)

(declare-fun tb!258373 () Bool)

(assert (=> (and b!4876979 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364691) tb!258373))

(declare-fun result!321624 () Bool)

(assert (= result!321624 result!321622))

(assert (=> bs!1175205 t!364691))

(declare-fun b_and!343595 () Bool)

(assert (= b_and!343579 (and (=> t!364691 result!321624) b_and!343595)))

(declare-fun t!364693 () Bool)

(declare-fun tb!258375 () Bool)

(assert (=> (and b!4877370 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364693) tb!258375))

(declare-fun result!321626 () Bool)

(assert (= result!321626 result!321622))

(assert (=> bs!1175205 t!364693))

(declare-fun b_and!343597 () Bool)

(assert (= b_and!343581 (and (=> t!364693 result!321626) b_and!343597)))

(declare-fun t!364695 () Bool)

(declare-fun tb!258377 () Bool)

(assert (=> (and b!4877984 (= (toChars!10791 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toChars!10791 (transformation!8049 (h!62463 rules!1164)))) t!364695) tb!258377))

(declare-fun result!321628 () Bool)

(assert (= result!321628 result!321622))

(assert (=> bs!1175205 t!364695))

(declare-fun b_and!343599 () Bool)

(assert (= b_and!343583 (and (=> t!364695 result!321628) b_and!343599)))

(declare-fun b_lambda!193979 () Bool)

(assert (=> (not b_lambda!193979) (not bs!1175205)))

(assert (=> bs!1175205 t!364645))

(declare-fun b_and!343601 () Bool)

(assert (= b_and!343585 (and (=> t!364645 result!321578) b_and!343601)))

(assert (=> bs!1175205 t!364647))

(declare-fun b_and!343603 () Bool)

(assert (= b_and!343587 (and (=> t!364647 result!321580) b_and!343603)))

(assert (=> bs!1175205 t!364649))

(declare-fun b_and!343605 () Bool)

(assert (= b_and!343589 (and (=> t!364649 result!321582) b_and!343605)))

(assert (=> bs!1175205 t!364671))

(declare-fun b_and!343607 () Bool)

(assert (= b_and!343591 (and (=> t!364671 result!321604) b_and!343607)))

(assert (=> bs!1175205 m!5879632))

(declare-fun m!5880762 () Bool)

(assert (=> bs!1175205 m!5880762))

(declare-fun m!5880764 () Bool)

(assert (=> bs!1175205 m!5880764))

(assert (=> bs!1175205 m!5880426))

(assert (=> bs!1175205 m!5880426))

(assert (=> bs!1175205 m!5880762))

(assert (=> d!1567078 d!1567210))

(declare-fun b_lambda!193965 () Bool)

(assert (= b_lambda!193943 (or (and b!4876841 b_free!130823) (and b!4876979 b_free!130831 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877370 b_free!130839 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877984 b_free!130847 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) b_lambda!193965)))

(declare-fun b_lambda!193967 () Bool)

(assert (= b_lambda!193949 (or (and b!4876841 b_free!130823) (and b!4876979 b_free!130831 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 rules!1164)))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877370 b_free!130839 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 rules!1164))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) (and b!4877984 b_free!130847 (= (toValue!10932 (transformation!8049 (h!62463 (t!364613 (t!364613 (t!364613 rules!1164)))))) (toValue!10932 (transformation!8049 (h!62463 rules!1164))))) b_lambda!193967)))

(declare-fun b_lambda!193969 () Bool)

(assert (= b_lambda!193939 (or d!1566896 b_lambda!193969)))

(declare-fun bs!1175206 () Bool)

(declare-fun d!1567212 () Bool)

(assert (= bs!1175206 (and d!1567212 d!1566896)))

(assert (=> bs!1175206 (= (dynLambda!22530 lambda!243664 (h!62463 rules!1164)) (ruleValid!3637 thiss!11460 (h!62463 rules!1164)))))

(assert (=> bs!1175206 m!5879640))

(assert (=> b!4877572 d!1567212))

(declare-fun b_lambda!193971 () Bool)

(assert (= b_lambda!193957 (or d!1566854 b_lambda!193971)))

(declare-fun bs!1175207 () Bool)

(declare-fun d!1567214 () Bool)

(assert (= bs!1175207 (and d!1567214 d!1566854)))

(assert (=> bs!1175207 (= (dynLambda!22530 lambda!243655 (h!62463 rules!1164)) (ruleValid!3637 thiss!11460 (h!62463 rules!1164)))))

(assert (=> bs!1175207 m!5879640))

(assert (=> b!4877874 d!1567214))

(push 1)

(assert (not b!4877575))

(assert b_and!343593)

(assert (not b!4877706))

(assert (not b!4878006))

(assert (not b!4878030))

(assert (not b!4878014))

(assert (not b!4877996))

(assert (not b!4877975))

(assert (not b_lambda!193963))

(assert (not d!1567188))

(assert (not d!1567064))

(assert (not b!4877858))

(assert (not d!1567018))

(assert (not b!4877837))

(assert (not d!1567100))

(assert (not d!1567072))

(assert (not b!4877770))

(assert (not b_next!131623))

(assert (not b!4877897))

(assert (not d!1567020))

(assert (not b!4878007))

(assert (not b!4877895))

(assert (not b!4877670))

(assert (not b!4877558))

(assert (not b!4877955))

(assert (not tb!258363))

(assert (not b!4877731))

(assert (not b!4877720))

(assert (not bm!338605))

(assert (not b!4877818))

(assert (not d!1567044))

(assert (not bm!338604))

(assert (not b!4877969))

(assert (not b!4877945))

(assert (not b!4877905))

(assert (not tb!258345))

(assert (not b_lambda!193975))

(assert (not b!4877694))

(assert (not b!4878058))

(assert (not d!1567142))

(assert (not b_next!131621))

(assert (not d!1567132))

(assert (not b!4877935))

(assert (not b!4877917))

(assert (not d!1567156))

(assert (not b!4877784))

(assert (not b!4877911))

(assert (not bm!338631))

(assert (not b!4877673))

(assert (not b!4877972))

(assert (not b!4877661))

(assert (not b!4877925))

(assert (not b_lambda!193953))

(assert (not b!4877588))

(assert (not b!4877886))

(assert (not b!4877885))

(assert (not b!4877990))

(assert (not b!4878029))

(assert (not b!4877939))

(assert (not bm!338622))

(assert (not b!4877820))

(assert (not b!4877723))

(assert (not d!1567074))

(assert (not b!4877971))

(assert (not b!4877948))

(assert (not b_lambda!193969))

(assert (not b!4877773))

(assert (not b!4878004))

(assert (not b!4877550))

(assert (not d!1567052))

(assert (not d!1566954))

(assert (not tb!258371))

(assert (not d!1567070))

(assert (not b!4877875))

(assert (not b!4877976))

(assert (not b!4877876))

(assert (not d!1567206))

(assert (not b!4877585))

(assert (not d!1566966))

(assert (not b!4877819))

(assert (not b!4877710))

(assert (not b!4877956))

(assert (not d!1566996))

(assert (not b!4877657))

(assert (not b!4877561))

(assert (not b_next!131631))

(assert (not b!4878019))

(assert (not b!4877549))

(assert (not b!4877998))

(assert (not b!4877612))

(assert (not b!4877695))

(assert (not b!4877844))

(assert (not b!4877915))

(assert (not b!4877951))

(assert (not bm!338598))

(assert (not b!4877830))

(assert (not b!4877544))

(assert (not b!4877898))

(assert (not b!4877552))

(assert (not d!1567146))

(assert (not b_next!131613))

(assert (not b_lambda!193955))

(assert (not b!4877941))

(assert (not d!1567176))

(assert (not b!4877542))

(assert (not d!1567134))

(assert (not b!4877949))

(assert (not b!4877960))

(assert (not b!4878057))

(assert (not b!4877559))

(assert (not b!4877675))

(assert (not b_lambda!193977))

(assert (not b!4877804))

(assert (not b!4877908))

(assert (not b!4878025))

(assert (not d!1567096))

(assert (not d!1566982))

(assert (not b!4877590))

(assert (not d!1567014))

(assert (not b!4877952))

(assert (not b!4878040))

(assert b_and!343601)

(assert (not d!1566950))

(assert (not b!4877775))

(assert (not d!1567110))

(assert (not b!4877995))

(assert (not d!1567168))

(assert (not b!4877813))

(assert (not b!4877708))

(assert (not d!1567152))

(assert (not b!4877961))

(assert (not b!4877919))

(assert (not b!4878011))

(assert (not b!4877921))

(assert (not d!1567086))

(assert (not b!4877654))

(assert (not b!4877953))

(assert (not bm!338599))

(assert (not b_lambda!193967))

(assert (not b!4877912))

(assert (not b!4877767))

(assert (not d!1566992))

(assert (not d!1567126))

(assert (not b!4877906))

(assert (not bm!338623))

(assert b_and!343599)

(assert (not b!4877583))

(assert (not b!4878050))

(assert (not b!4878018))

(assert (not b!4877890))

(assert (not b!4877849))

(assert (not b!4877826))

(assert (not b!4877801))

(assert (not b!4877658))

(assert (not b_next!131639))

(assert (not b!4877932))

(assert (not b!4877715))

(assert (not d!1566952))

(assert (not b!4877705))

(assert (not b!4877814))

(assert (not b_lambda!193961))

(assert (not d!1567154))

(assert (not b!4877713))

(assert (not b!4877936))

(assert (not b_lambda!193979))

(assert (not b!4877943))

(assert (not b!4877547))

(assert (not b!4877700))

(assert (not b!4877947))

(assert (not d!1566964))

(assert (not b!4877827))

(assert (not b!4877847))

(assert (not b!4877726))

(assert (not b!4878015))

(assert (not bm!338624))

(assert (not b!4877730))

(assert (not b!4877959))

(assert (not bm!338627))

(assert (not b!4877704))

(assert (not d!1566980))

(assert (not b!4877617))

(assert (not d!1567122))

(assert (not b!4877791))

(assert (not b!4877910))

(assert (not b!4877669))

(assert (not b!4878041))

(assert (not b!4877545))

(assert (not b!4877823))

(assert (not d!1567030))

(assert (not b!4878036))

(assert (not b!4878054))

(assert (not b!4877878))

(assert (not bs!1175204))

(assert (not b!4877821))

(assert (not bm!338626))

(assert (not b!4877840))

(assert (not b!4878052))

(assert (not b!4877889))

(assert (not b!4877923))

(assert (not b!4877701))

(assert (not b!4877618))

(assert (not b!4877727))

(assert (not b!4877901))

(assert (not tb!258339))

(assert (not b!4877977))

(assert b_and!343595)

(assert (not b!4877973))

(assert (not b!4877779))

(assert (not b!4877992))

(assert (not b!4877668))

(assert (not b!4877887))

(assert (not b!4877620))

(assert b_and!343607)

(assert (not b!4877714))

(assert (not b!4877817))

(assert (not b!4877940))

(assert (not b!4877918))

(assert b_and!343597)

(assert (not b!4877933))

(assert (not b!4877690))

(assert (not d!1567046))

(assert (not b!4878064))

(assert (not b!4877845))

(assert (not b!4877541))

(assert (not b!4878022))

(assert (not b!4878062))

(assert (not b!4877589))

(assert (not d!1567032))

(assert (not b!4878002))

(assert (not b!4877988))

(assert (not d!1567076))

(assert (not b!4877860))

(assert (not b!4877671))

(assert (not b!4877879))

(assert (not b!4877982))

(assert (not b!4877811))

(assert (not d!1567056))

(assert (not b!4877999))

(assert (not b!4878010))

(assert (not b!4877965))

(assert (not tb!258327))

(assert (not bm!338625))

(assert (not d!1567204))

(assert (not b!4877716))

(assert (not b!4878003))

(assert (not b!4877928))

(assert (not b!4878075))

(assert (not b!4877567))

(assert (not b!4877712))

(assert (not b!4877365))

(assert (not b!4877963))

(assert (not d!1567034))

(assert (not d!1567078))

(assert (not b!4877881))

(assert (not d!1567008))

(assert (not b!4878026))

(assert (not d!1567174))

(assert (not b_lambda!193959))

(assert (not b!4877944))

(assert (not b!4878048))

(assert (not d!1567088))

(assert (not b!4877957))

(assert (not b!4877557))

(assert (not b!4877842))

(assert (not bm!338629))

(assert (not b!4877920))

(assert (not b!4877586))

(assert (not b!4877717))

(assert (not d!1567098))

(assert (not b!4877873))

(assert (not b!4877777))

(assert b_and!343603)

(assert (not d!1566990))

(assert (not b!4878063))

(assert (not b!4877691))

(assert (not tb!258315))

(assert (not d!1567080))

(assert (not b!4878034))

(assert (not b!4877825))

(assert (not bm!338628))

(assert b_and!343605)

(assert (not d!1567116))

(assert (not b!4878042))

(assert (not b!4877987))

(assert (not b!4878016))

(assert (not b!4878008))

(assert (not b!4877619))

(assert (not b!4877803))

(assert (not b!4878020))

(assert (not b!4878021))

(assert (not tb!258333))

(assert (not b!4877866))

(assert (not d!1567124))

(assert (not b!4877833))

(assert (not bm!338603))

(assert (not b!4877981))

(assert (not b_lambda!193965))

(assert (not b!4877563))

(assert (not b!4877865))

(assert (not b!4877543))

(assert (not b!4877667))

(assert (not b!4877546))

(assert (not b!4878000))

(assert (not b!4877538))

(assert (not d!1566984))

(assert (not b_lambda!193941))

(assert (not b!4877362))

(assert (not b!4877672))

(assert (not d!1567048))

(assert (not b!4877883))

(assert (not b!4877884))

(assert (not d!1567090))

(assert (not b!4877788))

(assert (not b!4877662))

(assert (not b!4877786))

(assert (not b!4877613))

(assert (not b!4877765))

(assert (not b!4877848))

(assert (not b!4877983))

(assert (not b!4877566))

(assert (not b!4878024))

(assert (not b!4878028))

(assert (not b!4877697))

(assert (not d!1567050))

(assert (not d!1567002))

(assert (not b!4877913))

(assert (not bm!338630))

(assert (not d!1566994))

(assert (not b!4877893))

(assert (not b!4878035))

(assert (not b!4877937))

(assert (not b!4877651))

(assert (not b!4877584))

(assert (not b!4878046))

(assert (not b!4877929))

(assert (not d!1567042))

(assert (not b!4877916))

(assert (not b!4877986))

(assert (not b!4877616))

(assert (not b_next!131615))

(assert (not b!4877573))

(assert (not b!4878056))

(assert (not b!4877991))

(assert (not b!4877869))

(assert (not b!4877850))

(assert (not b!4877686))

(assert (not d!1567128))

(assert (not b!4877862))

(assert (not b!4878012))

(assert (not b!4877685))

(assert (not b!4878023))

(assert (not b_next!131629))

(assert (not b!4878053))

(assert (not tb!258321))

(assert (not b_lambda!193937))

(assert (not b!4877592))

(assert (not b!4877964))

(assert (not b!4877927))

(assert (not b!4877593))

(assert (not d!1567162))

(assert (not b!4877880))

(assert (not b_lambda!193973))

(assert (not b!4877994))

(assert (not b!4877903))

(assert (not b!4877870))

(assert (not d!1567136))

(assert (not bs!1175207))

(assert (not b!4877914))

(assert (not b!4877892))

(assert (not b!4877614))

(assert tp_is_empty!35677)

(assert (not b!4878076))

(assert (not b!4877709))

(assert (not d!1567012))

(assert (not b!4877836))

(assert (not b_next!131637))

(assert (not b!4877931))

(assert (not d!1567068))

(assert (not b!4877967))

(assert (not b_lambda!193971))

(assert (not b!4877702))

(assert (not bm!338602))

(assert (not d!1567186))

(assert (not b!4877924))

(assert (not b!4877841))

(assert (not d!1567016))

(assert (not b!4878045))

(assert (not bs!1175205))

(assert (not b!4877816))

(assert (not b!4877968))

(assert (not b!4877980))

(assert (not b!4877907))

(assert (not b!4877877))

(assert (not b!4878049))

(assert (not b!4877539))

(assert (not b!4877591))

(assert (not bs!1175206))

(assert (not b!4877979))

(assert (not b!4877815))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343593)

(assert (not b_next!131623))

(assert (not b_next!131621))

(assert (not b_next!131631))

(assert (not b_next!131613))

(assert b_and!343601)

(assert b_and!343597)

(assert b_and!343603)

(assert b_and!343605)

(assert (not b_next!131615))

(assert (not b_next!131629))

(assert (not b_next!131637))

(assert b_and!343599)

(assert (not b_next!131639))

(assert b_and!343595)

(assert b_and!343607)

(check-sat)

(pop 1)

