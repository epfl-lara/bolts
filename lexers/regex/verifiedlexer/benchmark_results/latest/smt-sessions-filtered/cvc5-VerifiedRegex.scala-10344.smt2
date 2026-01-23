; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537094 () Bool)

(assert start!537094)

(declare-fun b!5095018 () Bool)

(declare-fun b_free!133387 () Bool)

(declare-fun b_next!134177 () Bool)

(assert (=> b!5095018 (= b_free!133387 (not b_next!134177))))

(declare-fun tp!1420637 () Bool)

(declare-fun b_and!350271 () Bool)

(assert (=> b!5095018 (= tp!1420637 b_and!350271)))

(declare-fun b_free!133389 () Bool)

(declare-fun b_next!134179 () Bool)

(assert (=> b!5095018 (= b_free!133389 (not b_next!134179))))

(declare-fun tp!1420636 () Bool)

(declare-fun b_and!350273 () Bool)

(assert (=> b!5095018 (= tp!1420636 b_and!350273)))

(declare-fun e!3177559 () Bool)

(assert (=> b!5095018 (= e!3177559 (and tp!1420637 tp!1420636))))

(declare-fun e!3177557 () Bool)

(declare-fun b!5095019 () Bool)

(declare-fun tp!1420635 () Bool)

(declare-datatypes ((List!58740 0))(
  ( (Nil!58616) (Cons!58616 (h!65064 (_ BitVec 16)) (t!371695 List!58740)) )
))
(declare-datatypes ((TokenValue!8821 0))(
  ( (FloatLiteralValue!17642 (text!62192 List!58740)) (TokenValueExt!8820 (__x!34931 Int)) (Broken!44105 (value!272735 List!58740)) (Object!8944) (End!8821) (Def!8821) (Underscore!8821) (Match!8821) (Else!8821) (Error!8821) (Case!8821) (If!8821) (Extends!8821) (Abstract!8821) (Class!8821) (Val!8821) (DelimiterValue!17642 (del!8881 List!58740)) (KeywordValue!8827 (value!272736 List!58740)) (CommentValue!17642 (value!272737 List!58740)) (WhitespaceValue!17642 (value!272738 List!58740)) (IndentationValue!8821 (value!272739 List!58740)) (String!67028) (Int32!8821) (Broken!44106 (value!272740 List!58740)) (Boolean!8822) (Unit!149657) (OperatorValue!8824 (op!8881 List!58740)) (IdentifierValue!17642 (value!272741 List!58740)) (IdentifierValue!17643 (value!272742 List!58740)) (WhitespaceValue!17643 (value!272743 List!58740)) (True!17642) (False!17642) (Broken!44107 (value!272744 List!58740)) (Broken!44108 (value!272745 List!58740)) (True!17643) (RightBrace!8821) (RightBracket!8821) (Colon!8821) (Null!8821) (Comma!8821) (LeftBracket!8821) (False!17643) (LeftBrace!8821) (ImaginaryLiteralValue!8821 (text!62193 List!58740)) (StringLiteralValue!26463 (value!272746 List!58740)) (EOFValue!8821 (value!272747 List!58740)) (IdentValue!8821 (value!272748 List!58740)) (DelimiterValue!17643 (value!272749 List!58740)) (DedentValue!8821 (value!272750 List!58740)) (NewLineValue!8821 (value!272751 List!58740)) (IntegerValue!26463 (value!272752 (_ BitVec 32)) (text!62194 List!58740)) (IntegerValue!26464 (value!272753 Int) (text!62195 List!58740)) (Times!8821) (Or!8821) (Equal!8821) (Minus!8821) (Broken!44109 (value!272754 List!58740)) (And!8821) (Div!8821) (LessEqual!8821) (Mod!8821) (Concat!22803) (Not!8821) (Plus!8821) (SpaceValue!8821 (value!272755 List!58740)) (IntegerValue!26465 (value!272756 Int) (text!62196 List!58740)) (StringLiteralValue!26464 (text!62197 List!58740)) (FloatLiteralValue!17643 (text!62198 List!58740)) (BytesLiteralValue!8821 (value!272757 List!58740)) (CommentValue!17643 (value!272758 List!58740)) (StringLiteralValue!26465 (value!272759 List!58740)) (ErrorTokenValue!8821 (msg!8882 List!58740)) )
))
(declare-datatypes ((C!28222 0))(
  ( (C!28223 (val!23763 Int)) )
))
(declare-datatypes ((List!58741 0))(
  ( (Nil!58617) (Cons!58617 (h!65065 C!28222) (t!371696 List!58741)) )
))
(declare-datatypes ((IArray!31419 0))(
  ( (IArray!31420 (innerList!15767 List!58741)) )
))
(declare-datatypes ((Conc!15679 0))(
  ( (Node!15679 (left!43031 Conc!15679) (right!43361 Conc!15679) (csize!31588 Int) (cheight!15890 Int)) (Leaf!26024 (xs!19061 IArray!31419) (csize!31589 Int)) (Empty!15679) )
))
(declare-datatypes ((BalanceConc!30476 0))(
  ( (BalanceConc!30477 (c!875533 Conc!15679)) )
))
(declare-datatypes ((TokenValueInjection!16950 0))(
  ( (TokenValueInjection!16951 (toValue!11530 Int) (toChars!11389 Int)) )
))
(declare-datatypes ((Regex!13982 0))(
  ( (ElementMatch!13982 (c!875534 C!28222)) (Concat!22804 (regOne!28476 Regex!13982) (regTwo!28476 Regex!13982)) (EmptyExpr!13982) (Star!13982 (reg!14311 Regex!13982)) (EmptyLang!13982) (Union!13982 (regOne!28477 Regex!13982) (regTwo!28477 Regex!13982)) )
))
(declare-datatypes ((String!67029 0))(
  ( (String!67030 (value!272760 String)) )
))
(declare-datatypes ((Rule!16814 0))(
  ( (Rule!16815 (regex!8507 Regex!13982) (tag!9371 String!67029) (isSeparator!8507 Bool) (transformation!8507 TokenValueInjection!16950)) )
))
(declare-datatypes ((List!58742 0))(
  ( (Nil!58618) (Cons!58618 (h!65066 Rule!16814) (t!371697 List!58742)) )
))
(declare-fun rulesArg!145 () List!58742)

(declare-fun inv!78110 (String!67029) Bool)

(declare-fun inv!78113 (TokenValueInjection!16950) Bool)

(assert (=> b!5095019 (= e!3177557 (and tp!1420635 (inv!78110 (tag!9371 (h!65066 rulesArg!145))) (inv!78113 (transformation!8507 (h!65066 rulesArg!145))) e!3177559))))

(declare-fun b!5095020 () Bool)

(declare-fun e!3177555 () Bool)

(declare-fun tp_is_empty!37229 () Bool)

(declare-fun tp!1420634 () Bool)

(assert (=> b!5095020 (= e!3177555 (and tp_is_empty!37229 tp!1420634))))

(declare-fun b!5095021 () Bool)

(declare-fun res!2168352 () Bool)

(declare-fun e!3177560 () Bool)

(assert (=> b!5095021 (=> (not res!2168352) (not e!3177560))))

(declare-datatypes ((LexerInterface!8099 0))(
  ( (LexerInterfaceExt!8096 (__x!34932 Int)) (Lexer!8097) )
))
(declare-fun thiss!14775 () LexerInterface!8099)

(declare-fun rulesValidInductive!3332 (LexerInterface!8099 List!58742) Bool)

(assert (=> b!5095021 (= res!2168352 (rulesValidInductive!3332 thiss!14775 rulesArg!145))))

(declare-fun b!5095022 () Bool)

(declare-fun e!3177561 () Bool)

(declare-fun tp!1420638 () Bool)

(assert (=> b!5095022 (= e!3177561 (and e!3177557 tp!1420638))))

(declare-fun b!5095023 () Bool)

(declare-fun e!3177558 () Bool)

(assert (=> b!5095023 (= e!3177560 (not e!3177558))))

(declare-fun res!2168351 () Bool)

(assert (=> b!5095023 (=> res!2168351 e!3177558)))

(assert (=> b!5095023 (= res!2168351 (or (and (is-Cons!58618 rulesArg!145) (is-Nil!58618 (t!371697 rulesArg!145))) (not (is-Cons!58618 rulesArg!145))))))

(declare-fun input!1210 () List!58741)

(declare-fun isPrefix!5403 (List!58741 List!58741) Bool)

(assert (=> b!5095023 (isPrefix!5403 input!1210 input!1210)))

(declare-datatypes ((Unit!149658 0))(
  ( (Unit!149659) )
))
(declare-fun lt!2093377 () Unit!149658)

(declare-fun lemmaIsPrefixRefl!3662 (List!58741 List!58741) Unit!149658)

(assert (=> b!5095023 (= lt!2093377 (lemmaIsPrefixRefl!3662 input!1210 input!1210))))

(declare-fun b!5095024 () Bool)

(declare-fun e!3177556 () Bool)

(declare-datatypes ((Token!15454 0))(
  ( (Token!15455 (value!272761 TokenValue!8821) (rule!11785 Rule!16814) (size!39278 Int) (originalCharacters!8758 List!58741)) )
))
(declare-datatypes ((tuple2!63344 0))(
  ( (tuple2!63345 (_1!34975 Token!15454) (_2!34975 List!58741)) )
))
(declare-datatypes ((Option!14636 0))(
  ( (None!14635) (Some!14635 (v!50648 tuple2!63344)) )
))
(declare-fun lt!2093378 () Option!14636)

(declare-fun maxPrefix!4676 (LexerInterface!8099 List!58742 List!58741) Option!14636)

(assert (=> b!5095024 (= e!3177556 (= lt!2093378 (maxPrefix!4676 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun res!2168349 () Bool)

(assert (=> start!537094 (=> (not res!2168349) (not e!3177560))))

(assert (=> start!537094 (= res!2168349 (is-Lexer!8097 thiss!14775))))

(assert (=> start!537094 e!3177560))

(assert (=> start!537094 true))

(assert (=> start!537094 e!3177561))

(assert (=> start!537094 e!3177555))

(declare-fun b!5095025 () Bool)

(assert (=> b!5095025 (= e!3177558 e!3177556)))

(declare-fun res!2168348 () Bool)

(assert (=> b!5095025 (=> res!2168348 e!3177556)))

(declare-fun lt!2093379 () Option!14636)

(assert (=> b!5095025 (= res!2168348 (or (and (is-None!14635 lt!2093379) (is-None!14635 lt!2093378)) (is-None!14635 lt!2093378) (not (is-None!14635 lt!2093379))))))

(declare-fun maxPrefixZipper!802 (LexerInterface!8099 List!58742 List!58741) Option!14636)

(assert (=> b!5095025 (= lt!2093378 (maxPrefixZipper!802 thiss!14775 (t!371697 rulesArg!145) input!1210))))

(declare-fun maxPrefixOneRuleZipper!323 (LexerInterface!8099 Rule!16814 List!58741) Option!14636)

(assert (=> b!5095025 (= lt!2093379 (maxPrefixOneRuleZipper!323 thiss!14775 (h!65066 rulesArg!145) input!1210))))

(declare-fun b!5095026 () Bool)

(declare-fun res!2168350 () Bool)

(assert (=> b!5095026 (=> (not res!2168350) (not e!3177560))))

(declare-fun isEmpty!31728 (List!58742) Bool)

(assert (=> b!5095026 (= res!2168350 (not (isEmpty!31728 rulesArg!145)))))

(assert (= (and start!537094 res!2168349) b!5095021))

(assert (= (and b!5095021 res!2168352) b!5095026))

(assert (= (and b!5095026 res!2168350) b!5095023))

(assert (= (and b!5095023 (not res!2168351)) b!5095025))

(assert (= (and b!5095025 (not res!2168348)) b!5095024))

(assert (= b!5095019 b!5095018))

(assert (= b!5095022 b!5095019))

(assert (= (and start!537094 (is-Cons!58618 rulesArg!145)) b!5095022))

(assert (= (and start!537094 (is-Cons!58617 input!1210)) b!5095020))

(declare-fun m!6152662 () Bool)

(assert (=> b!5095019 m!6152662))

(declare-fun m!6152664 () Bool)

(assert (=> b!5095019 m!6152664))

(declare-fun m!6152666 () Bool)

(assert (=> b!5095021 m!6152666))

(declare-fun m!6152668 () Bool)

(assert (=> b!5095024 m!6152668))

(declare-fun m!6152670 () Bool)

(assert (=> b!5095025 m!6152670))

(declare-fun m!6152672 () Bool)

(assert (=> b!5095025 m!6152672))

(declare-fun m!6152674 () Bool)

(assert (=> b!5095023 m!6152674))

(declare-fun m!6152676 () Bool)

(assert (=> b!5095023 m!6152676))

(declare-fun m!6152678 () Bool)

(assert (=> b!5095026 m!6152678))

(push 1)

(assert b_and!350271)

(assert (not b!5095025))

(assert tp_is_empty!37229)

(assert (not b!5095022))

(assert b_and!350273)

(assert (not b_next!134179))

(assert (not b_next!134177))

(assert (not b!5095023))

(assert (not b!5095019))

(assert (not b!5095026))

(assert (not b!5095021))

(assert (not b!5095024))

(assert (not b!5095020))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350273)

(assert b_and!350271)

(assert (not b_next!134177))

(assert (not b_next!134179))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5095074 () Bool)

(declare-fun e!3177595 () Bool)

(declare-fun e!3177596 () Bool)

(assert (=> b!5095074 (= e!3177595 e!3177596)))

(declare-fun res!2168399 () Bool)

(assert (=> b!5095074 (=> (not res!2168399) (not e!3177596))))

(declare-fun lt!2093399 () Option!14636)

(declare-fun isDefined!11501 (Option!14636) Bool)

(assert (=> b!5095074 (= res!2168399 (isDefined!11501 lt!2093399))))

(declare-fun b!5095075 () Bool)

(declare-fun e!3177597 () Option!14636)

(declare-fun call!354758 () Option!14636)

(assert (=> b!5095075 (= e!3177597 call!354758)))

(declare-fun bm!354753 () Bool)

(declare-fun maxPrefixOneRule!3703 (LexerInterface!8099 Rule!16814 List!58741) Option!14636)

(assert (=> bm!354753 (= call!354758 (maxPrefixOneRule!3703 thiss!14775 (h!65066 rulesArg!145) input!1210))))

(declare-fun b!5095077 () Bool)

(declare-fun res!2168398 () Bool)

(assert (=> b!5095077 (=> (not res!2168398) (not e!3177596))))

(declare-fun matchR!6792 (Regex!13982 List!58741) Bool)

(declare-fun get!20348 (Option!14636) tuple2!63344)

(declare-fun list!19141 (BalanceConc!30476) List!58741)

(declare-fun charsOf!5475 (Token!15454) BalanceConc!30476)

(assert (=> b!5095077 (= res!2168398 (matchR!6792 (regex!8507 (rule!11785 (_1!34975 (get!20348 lt!2093399)))) (list!19141 (charsOf!5475 (_1!34975 (get!20348 lt!2093399))))))))

(declare-fun b!5095078 () Bool)

(declare-fun res!2168397 () Bool)

(assert (=> b!5095078 (=> (not res!2168397) (not e!3177596))))

(declare-fun ++!12852 (List!58741 List!58741) List!58741)

(assert (=> b!5095078 (= res!2168397 (= (++!12852 (list!19141 (charsOf!5475 (_1!34975 (get!20348 lt!2093399)))) (_2!34975 (get!20348 lt!2093399))) input!1210))))

(declare-fun b!5095079 () Bool)

(declare-fun contains!19602 (List!58742 Rule!16814) Bool)

(assert (=> b!5095079 (= e!3177596 (contains!19602 rulesArg!145 (rule!11785 (_1!34975 (get!20348 lt!2093399)))))))

(declare-fun b!5095080 () Bool)

(declare-fun res!2168393 () Bool)

(assert (=> b!5095080 (=> (not res!2168393) (not e!3177596))))

(declare-fun apply!14292 (TokenValueInjection!16950 BalanceConc!30476) TokenValue!8821)

(declare-fun seqFromList!6110 (List!58741) BalanceConc!30476)

(assert (=> b!5095080 (= res!2168393 (= (value!272761 (_1!34975 (get!20348 lt!2093399))) (apply!14292 (transformation!8507 (rule!11785 (_1!34975 (get!20348 lt!2093399)))) (seqFromList!6110 (originalCharacters!8758 (_1!34975 (get!20348 lt!2093399)))))))))

(declare-fun d!1648925 () Bool)

(assert (=> d!1648925 e!3177595))

(declare-fun res!2168396 () Bool)

(assert (=> d!1648925 (=> res!2168396 e!3177595)))

(declare-fun isEmpty!31730 (Option!14636) Bool)

(assert (=> d!1648925 (= res!2168396 (isEmpty!31730 lt!2093399))))

(assert (=> d!1648925 (= lt!2093399 e!3177597)))

(declare-fun c!875540 () Bool)

(assert (=> d!1648925 (= c!875540 (and (is-Cons!58618 rulesArg!145) (is-Nil!58618 (t!371697 rulesArg!145))))))

(declare-fun lt!2093400 () Unit!149658)

(declare-fun lt!2093402 () Unit!149658)

(assert (=> d!1648925 (= lt!2093400 lt!2093402)))

(assert (=> d!1648925 (isPrefix!5403 input!1210 input!1210)))

(assert (=> d!1648925 (= lt!2093402 (lemmaIsPrefixRefl!3662 input!1210 input!1210))))

(assert (=> d!1648925 (rulesValidInductive!3332 thiss!14775 rulesArg!145)))

(assert (=> d!1648925 (= (maxPrefix!4676 thiss!14775 rulesArg!145 input!1210) lt!2093399)))

(declare-fun b!5095076 () Bool)

(declare-fun lt!2093401 () Option!14636)

(declare-fun lt!2093403 () Option!14636)

(assert (=> b!5095076 (= e!3177597 (ite (and (is-None!14635 lt!2093401) (is-None!14635 lt!2093403)) None!14635 (ite (is-None!14635 lt!2093403) lt!2093401 (ite (is-None!14635 lt!2093401) lt!2093403 (ite (>= (size!39278 (_1!34975 (v!50648 lt!2093401))) (size!39278 (_1!34975 (v!50648 lt!2093403)))) lt!2093401 lt!2093403)))))))

(assert (=> b!5095076 (= lt!2093401 call!354758)))

(assert (=> b!5095076 (= lt!2093403 (maxPrefix!4676 thiss!14775 (t!371697 rulesArg!145) input!1210))))

(declare-fun b!5095081 () Bool)

(declare-fun res!2168394 () Bool)

(assert (=> b!5095081 (=> (not res!2168394) (not e!3177596))))

(assert (=> b!5095081 (= res!2168394 (= (list!19141 (charsOf!5475 (_1!34975 (get!20348 lt!2093399)))) (originalCharacters!8758 (_1!34975 (get!20348 lt!2093399)))))))

(declare-fun b!5095082 () Bool)

(declare-fun res!2168395 () Bool)

(assert (=> b!5095082 (=> (not res!2168395) (not e!3177596))))

(declare-fun size!39280 (List!58741) Int)

(assert (=> b!5095082 (= res!2168395 (< (size!39280 (_2!34975 (get!20348 lt!2093399))) (size!39280 input!1210)))))

(assert (= (and d!1648925 c!875540) b!5095075))

(assert (= (and d!1648925 (not c!875540)) b!5095076))

(assert (= (or b!5095075 b!5095076) bm!354753))

(assert (= (and d!1648925 (not res!2168396)) b!5095074))

(assert (= (and b!5095074 res!2168399) b!5095081))

(assert (= (and b!5095081 res!2168394) b!5095082))

(assert (= (and b!5095082 res!2168395) b!5095078))

(assert (= (and b!5095078 res!2168397) b!5095080))

(assert (= (and b!5095080 res!2168393) b!5095077))

(assert (= (and b!5095077 res!2168398) b!5095079))

(declare-fun m!6152698 () Bool)

(assert (=> b!5095078 m!6152698))

(declare-fun m!6152702 () Bool)

(assert (=> b!5095078 m!6152702))

(assert (=> b!5095078 m!6152702))

(declare-fun m!6152704 () Bool)

(assert (=> b!5095078 m!6152704))

(assert (=> b!5095078 m!6152704))

(declare-fun m!6152708 () Bool)

(assert (=> b!5095078 m!6152708))

(assert (=> b!5095077 m!6152698))

(assert (=> b!5095077 m!6152702))

(assert (=> b!5095077 m!6152702))

(assert (=> b!5095077 m!6152704))

(assert (=> b!5095077 m!6152704))

(declare-fun m!6152710 () Bool)

(assert (=> b!5095077 m!6152710))

(assert (=> b!5095082 m!6152698))

(declare-fun m!6152712 () Bool)

(assert (=> b!5095082 m!6152712))

(declare-fun m!6152714 () Bool)

(assert (=> b!5095082 m!6152714))

(assert (=> b!5095080 m!6152698))

(declare-fun m!6152716 () Bool)

(assert (=> b!5095080 m!6152716))

(assert (=> b!5095080 m!6152716))

(declare-fun m!6152718 () Bool)

(assert (=> b!5095080 m!6152718))

(declare-fun m!6152720 () Bool)

(assert (=> bm!354753 m!6152720))

(declare-fun m!6152722 () Bool)

(assert (=> d!1648925 m!6152722))

(assert (=> d!1648925 m!6152674))

(assert (=> d!1648925 m!6152676))

(assert (=> d!1648925 m!6152666))

(assert (=> b!5095079 m!6152698))

(declare-fun m!6152724 () Bool)

(assert (=> b!5095079 m!6152724))

(declare-fun m!6152726 () Bool)

(assert (=> b!5095074 m!6152726))

(declare-fun m!6152728 () Bool)

(assert (=> b!5095076 m!6152728))

(assert (=> b!5095081 m!6152698))

(assert (=> b!5095081 m!6152702))

(assert (=> b!5095081 m!6152702))

(assert (=> b!5095081 m!6152704))

(assert (=> b!5095024 d!1648925))

(declare-fun d!1648933 () Bool)

(assert (=> d!1648933 (= (inv!78110 (tag!9371 (h!65066 rulesArg!145))) (= (mod (str.len (value!272760 (tag!9371 (h!65066 rulesArg!145)))) 2) 0))))

(assert (=> b!5095019 d!1648933))

(declare-fun d!1648935 () Bool)

(declare-fun res!2168403 () Bool)

(declare-fun e!3177601 () Bool)

(assert (=> d!1648935 (=> (not res!2168403) (not e!3177601))))

(declare-fun semiInverseModEq!3789 (Int Int) Bool)

(assert (=> d!1648935 (= res!2168403 (semiInverseModEq!3789 (toChars!11389 (transformation!8507 (h!65066 rulesArg!145))) (toValue!11530 (transformation!8507 (h!65066 rulesArg!145)))))))

(assert (=> d!1648935 (= (inv!78113 (transformation!8507 (h!65066 rulesArg!145))) e!3177601)))

(declare-fun b!5095086 () Bool)

(declare-fun equivClasses!3604 (Int Int) Bool)

(assert (=> b!5095086 (= e!3177601 (equivClasses!3604 (toChars!11389 (transformation!8507 (h!65066 rulesArg!145))) (toValue!11530 (transformation!8507 (h!65066 rulesArg!145)))))))

(assert (= (and d!1648935 res!2168403) b!5095086))

(declare-fun m!6152730 () Bool)

(assert (=> d!1648935 m!6152730))

(declare-fun m!6152732 () Bool)

(assert (=> b!5095086 m!6152732))

(assert (=> b!5095019 d!1648935))

(declare-fun b!5095095 () Bool)

(declare-fun e!3177608 () Bool)

(declare-fun e!3177610 () Bool)

(assert (=> b!5095095 (= e!3177608 e!3177610)))

(declare-fun res!2168412 () Bool)

(assert (=> b!5095095 (=> (not res!2168412) (not e!3177610))))

(assert (=> b!5095095 (= res!2168412 (not (is-Nil!58617 input!1210)))))

(declare-fun b!5095098 () Bool)

(declare-fun e!3177609 () Bool)

(assert (=> b!5095098 (= e!3177609 (>= (size!39280 input!1210) (size!39280 input!1210)))))

(declare-fun b!5095097 () Bool)

(declare-fun tail!9975 (List!58741) List!58741)

(assert (=> b!5095097 (= e!3177610 (isPrefix!5403 (tail!9975 input!1210) (tail!9975 input!1210)))))

(declare-fun b!5095096 () Bool)

(declare-fun res!2168415 () Bool)

(assert (=> b!5095096 (=> (not res!2168415) (not e!3177610))))

(declare-fun head!10820 (List!58741) C!28222)

(assert (=> b!5095096 (= res!2168415 (= (head!10820 input!1210) (head!10820 input!1210)))))

(declare-fun d!1648937 () Bool)

(assert (=> d!1648937 e!3177609))

(declare-fun res!2168414 () Bool)

(assert (=> d!1648937 (=> res!2168414 e!3177609)))

(declare-fun lt!2093406 () Bool)

(assert (=> d!1648937 (= res!2168414 (not lt!2093406))))

(assert (=> d!1648937 (= lt!2093406 e!3177608)))

(declare-fun res!2168413 () Bool)

(assert (=> d!1648937 (=> res!2168413 e!3177608)))

(assert (=> d!1648937 (= res!2168413 (is-Nil!58617 input!1210))))

(assert (=> d!1648937 (= (isPrefix!5403 input!1210 input!1210) lt!2093406)))

(assert (= (and d!1648937 (not res!2168413)) b!5095095))

(assert (= (and b!5095095 res!2168412) b!5095096))

(assert (= (and b!5095096 res!2168415) b!5095097))

(assert (= (and d!1648937 (not res!2168414)) b!5095098))

(assert (=> b!5095098 m!6152714))

(assert (=> b!5095098 m!6152714))

(declare-fun m!6152734 () Bool)

(assert (=> b!5095097 m!6152734))

(assert (=> b!5095097 m!6152734))

(assert (=> b!5095097 m!6152734))

(assert (=> b!5095097 m!6152734))

(declare-fun m!6152736 () Bool)

(assert (=> b!5095097 m!6152736))

(declare-fun m!6152738 () Bool)

(assert (=> b!5095096 m!6152738))

(assert (=> b!5095096 m!6152738))

(assert (=> b!5095023 d!1648937))

(declare-fun d!1648939 () Bool)

(assert (=> d!1648939 (isPrefix!5403 input!1210 input!1210)))

(declare-fun lt!2093409 () Unit!149658)

(declare-fun choose!37307 (List!58741 List!58741) Unit!149658)

(assert (=> d!1648939 (= lt!2093409 (choose!37307 input!1210 input!1210))))

(assert (=> d!1648939 (= (lemmaIsPrefixRefl!3662 input!1210 input!1210) lt!2093409)))

(declare-fun bs!1191309 () Bool)

(assert (= bs!1191309 d!1648939))

(assert (=> bs!1191309 m!6152674))

(declare-fun m!6152740 () Bool)

(assert (=> bs!1191309 m!6152740))

(assert (=> b!5095023 d!1648939))

(declare-fun d!1648941 () Bool)

(assert (=> d!1648941 (= (isEmpty!31728 rulesArg!145) (is-Nil!58618 rulesArg!145))))

(assert (=> b!5095026 d!1648941))

(declare-fun d!1648943 () Bool)

(assert (=> d!1648943 true))

(declare-fun lt!2093448 () Bool)

(declare-fun lambda!249871 () Int)

(declare-fun forall!13476 (List!58742 Int) Bool)

(assert (=> d!1648943 (= lt!2093448 (forall!13476 rulesArg!145 lambda!249871))))

(declare-fun e!3177637 () Bool)

(assert (=> d!1648943 (= lt!2093448 e!3177637)))

(declare-fun res!2168453 () Bool)

(assert (=> d!1648943 (=> res!2168453 e!3177637)))

(assert (=> d!1648943 (= res!2168453 (not (is-Cons!58618 rulesArg!145)))))

(assert (=> d!1648943 (= (rulesValidInductive!3332 thiss!14775 rulesArg!145) lt!2093448)))

(declare-fun b!5095148 () Bool)

(declare-fun e!3177636 () Bool)

(assert (=> b!5095148 (= e!3177637 e!3177636)))

(declare-fun res!2168454 () Bool)

(assert (=> b!5095148 (=> (not res!2168454) (not e!3177636))))

(declare-fun ruleValid!3903 (LexerInterface!8099 Rule!16814) Bool)

(assert (=> b!5095148 (= res!2168454 (ruleValid!3903 thiss!14775 (h!65066 rulesArg!145)))))

(declare-fun b!5095149 () Bool)

(assert (=> b!5095149 (= e!3177636 (rulesValidInductive!3332 thiss!14775 (t!371697 rulesArg!145)))))

(assert (= (and d!1648943 (not res!2168453)) b!5095148))

(assert (= (and b!5095148 res!2168454) b!5095149))

(declare-fun m!6152784 () Bool)

(assert (=> d!1648943 m!6152784))

(declare-fun m!6152786 () Bool)

(assert (=> b!5095148 m!6152786))

(declare-fun m!6152788 () Bool)

(assert (=> b!5095149 m!6152788))

(assert (=> b!5095021 d!1648943))

(declare-fun d!1648953 () Bool)

(declare-fun lt!2093480 () Option!14636)

(assert (=> d!1648953 (= lt!2093480 (maxPrefix!4676 thiss!14775 (t!371697 rulesArg!145) input!1210))))

(declare-fun e!3177646 () Option!14636)

(assert (=> d!1648953 (= lt!2093480 e!3177646)))

(declare-fun c!875552 () Bool)

(assert (=> d!1648953 (= c!875552 (and (is-Cons!58618 (t!371697 rulesArg!145)) (is-Nil!58618 (t!371697 (t!371697 rulesArg!145)))))))

(declare-fun lt!2093479 () Unit!149658)

(declare-fun lt!2093481 () Unit!149658)

(assert (=> d!1648953 (= lt!2093479 lt!2093481)))

(assert (=> d!1648953 (isPrefix!5403 input!1210 input!1210)))

(assert (=> d!1648953 (= lt!2093481 (lemmaIsPrefixRefl!3662 input!1210 input!1210))))

(assert (=> d!1648953 (rulesValidInductive!3332 thiss!14775 (t!371697 rulesArg!145))))

(assert (=> d!1648953 (= (maxPrefixZipper!802 thiss!14775 (t!371697 rulesArg!145) input!1210) lt!2093480)))

(declare-fun call!354767 () Option!14636)

(declare-fun bm!354762 () Bool)

(assert (=> bm!354762 (= call!354767 (maxPrefixOneRuleZipper!323 thiss!14775 (h!65066 (t!371697 rulesArg!145)) input!1210))))

(declare-fun b!5095165 () Bool)

(assert (=> b!5095165 (= e!3177646 call!354767)))

(declare-fun b!5095166 () Bool)

(declare-fun lt!2093477 () Option!14636)

(declare-fun lt!2093478 () Option!14636)

(assert (=> b!5095166 (= e!3177646 (ite (and (is-None!14635 lt!2093477) (is-None!14635 lt!2093478)) None!14635 (ite (is-None!14635 lt!2093478) lt!2093477 (ite (is-None!14635 lt!2093477) lt!2093478 (ite (>= (size!39278 (_1!34975 (v!50648 lt!2093477))) (size!39278 (_1!34975 (v!50648 lt!2093478)))) lt!2093477 lt!2093478)))))))

(assert (=> b!5095166 (= lt!2093477 call!354767)))

(assert (=> b!5095166 (= lt!2093478 (maxPrefixZipper!802 thiss!14775 (t!371697 (t!371697 rulesArg!145)) input!1210))))

(assert (= (and d!1648953 c!875552) b!5095165))

(assert (= (and d!1648953 (not c!875552)) b!5095166))

(assert (= (or b!5095165 b!5095166) bm!354762))

(assert (=> d!1648953 m!6152728))

(assert (=> d!1648953 m!6152674))

(assert (=> d!1648953 m!6152676))

(assert (=> d!1648953 m!6152788))

(declare-fun m!6152802 () Bool)

(assert (=> bm!354762 m!6152802))

(declare-fun m!6152806 () Bool)

(assert (=> b!5095166 m!6152806))

(assert (=> b!5095025 d!1648953))

(declare-fun d!1648955 () Bool)

(declare-fun lt!2093498 () Option!14636)

(assert (=> d!1648955 (= lt!2093498 (maxPrefixOneRule!3703 thiss!14775 (h!65066 rulesArg!145) input!1210))))

(declare-fun e!3177655 () Option!14636)

(assert (=> d!1648955 (= lt!2093498 e!3177655)))

(declare-fun c!875555 () Bool)

(declare-datatypes ((tuple2!63348 0))(
  ( (tuple2!63349 (_1!34977 List!58741) (_2!34977 List!58741)) )
))
(declare-fun lt!2093499 () tuple2!63348)

(declare-fun isEmpty!31731 (List!58741) Bool)

(assert (=> d!1648955 (= c!875555 (isEmpty!31731 (_1!34977 lt!2093499)))))

(declare-fun findLongestMatchWithZipper!109 (Regex!13982 List!58741) tuple2!63348)

(assert (=> d!1648955 (= lt!2093499 (findLongestMatchWithZipper!109 (regex!8507 (h!65066 rulesArg!145)) input!1210))))

(assert (=> d!1648955 (ruleValid!3903 thiss!14775 (h!65066 rulesArg!145))))

(assert (=> d!1648955 (= (maxPrefixOneRuleZipper!323 thiss!14775 (h!65066 rulesArg!145) input!1210) lt!2093498)))

(declare-fun b!5095177 () Bool)

(assert (=> b!5095177 (= e!3177655 None!14635)))

(declare-fun b!5095178 () Bool)

(assert (=> b!5095178 (= e!3177655 (Some!14635 (tuple2!63345 (Token!15455 (apply!14292 (transformation!8507 (h!65066 rulesArg!145)) (seqFromList!6110 (_1!34977 lt!2093499))) (h!65066 rulesArg!145) (size!39280 (_1!34977 lt!2093499)) (_1!34977 lt!2093499)) (_2!34977 lt!2093499))))))

(declare-fun lt!2093496 () Unit!149658)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1970 (Regex!13982 List!58741) Unit!149658)

(assert (=> b!5095178 (= lt!2093496 (longestMatchIsAcceptedByMatchOrIsEmpty!1970 (regex!8507 (h!65066 rulesArg!145)) input!1210))))

(declare-fun res!2168464 () Bool)

(declare-fun findLongestMatchInner!2017 (Regex!13982 List!58741 Int List!58741 List!58741 Int) tuple2!63348)

(assert (=> b!5095178 (= res!2168464 (isEmpty!31731 (_1!34977 (findLongestMatchInner!2017 (regex!8507 (h!65066 rulesArg!145)) Nil!58617 (size!39280 Nil!58617) input!1210 input!1210 (size!39280 input!1210)))))))

(declare-fun e!3177656 () Bool)

(assert (=> b!5095178 (=> res!2168464 e!3177656)))

(assert (=> b!5095178 e!3177656))

(declare-fun lt!2093501 () Unit!149658)

(assert (=> b!5095178 (= lt!2093501 lt!2093496)))

(declare-fun lt!2093500 () Unit!149658)

(declare-fun lemmaInv!1410 (TokenValueInjection!16950) Unit!149658)

(assert (=> b!5095178 (= lt!2093500 (lemmaInv!1410 (transformation!8507 (h!65066 rulesArg!145))))))

(declare-fun lt!2093497 () Unit!149658)

(declare-fun lemmaSemiInverse!2643 (TokenValueInjection!16950 BalanceConc!30476) Unit!149658)

(assert (=> b!5095178 (= lt!2093497 (lemmaSemiInverse!2643 (transformation!8507 (h!65066 rulesArg!145)) (seqFromList!6110 (_1!34977 lt!2093499))))))

(declare-fun b!5095179 () Bool)

(assert (=> b!5095179 (= e!3177656 (matchR!6792 (regex!8507 (h!65066 rulesArg!145)) (_1!34977 (findLongestMatchInner!2017 (regex!8507 (h!65066 rulesArg!145)) Nil!58617 (size!39280 Nil!58617) input!1210 input!1210 (size!39280 input!1210)))))))

(assert (= (and d!1648955 c!875555) b!5095177))

(assert (= (and d!1648955 (not c!875555)) b!5095178))

(assert (= (and b!5095178 (not res!2168464)) b!5095179))

(assert (=> d!1648955 m!6152720))

(declare-fun m!6152820 () Bool)

(assert (=> d!1648955 m!6152820))

(declare-fun m!6152822 () Bool)

(assert (=> d!1648955 m!6152822))

(assert (=> d!1648955 m!6152786))

(declare-fun m!6152824 () Bool)

(assert (=> b!5095178 m!6152824))

(declare-fun m!6152826 () Bool)

(assert (=> b!5095178 m!6152826))

(declare-fun m!6152828 () Bool)

(assert (=> b!5095178 m!6152828))

(declare-fun m!6152830 () Bool)

(assert (=> b!5095178 m!6152830))

(assert (=> b!5095178 m!6152826))

(assert (=> b!5095178 m!6152714))

(declare-fun m!6152832 () Bool)

(assert (=> b!5095178 m!6152832))

(declare-fun m!6152834 () Bool)

(assert (=> b!5095178 m!6152834))

(assert (=> b!5095178 m!6152714))

(declare-fun m!6152836 () Bool)

(assert (=> b!5095178 m!6152836))

(assert (=> b!5095178 m!6152828))

(declare-fun m!6152838 () Bool)

(assert (=> b!5095178 m!6152838))

(assert (=> b!5095178 m!6152828))

(declare-fun m!6152840 () Bool)

(assert (=> b!5095178 m!6152840))

(assert (=> b!5095179 m!6152826))

(assert (=> b!5095179 m!6152714))

(assert (=> b!5095179 m!6152826))

(assert (=> b!5095179 m!6152714))

(assert (=> b!5095179 m!6152832))

(declare-fun m!6152842 () Bool)

(assert (=> b!5095179 m!6152842))

(assert (=> b!5095025 d!1648955))

(declare-fun b!5095190 () Bool)

(declare-fun e!3177659 () Bool)

(assert (=> b!5095190 (= e!3177659 tp_is_empty!37229)))

(declare-fun b!5095192 () Bool)

(declare-fun tp!1420667 () Bool)

(assert (=> b!5095192 (= e!3177659 tp!1420667)))

(declare-fun b!5095191 () Bool)

(declare-fun tp!1420668 () Bool)

(declare-fun tp!1420664 () Bool)

(assert (=> b!5095191 (= e!3177659 (and tp!1420668 tp!1420664))))

(assert (=> b!5095019 (= tp!1420635 e!3177659)))

(declare-fun b!5095193 () Bool)

(declare-fun tp!1420665 () Bool)

(declare-fun tp!1420666 () Bool)

(assert (=> b!5095193 (= e!3177659 (and tp!1420665 tp!1420666))))

(assert (= (and b!5095019 (is-ElementMatch!13982 (regex!8507 (h!65066 rulesArg!145)))) b!5095190))

(assert (= (and b!5095019 (is-Concat!22804 (regex!8507 (h!65066 rulesArg!145)))) b!5095191))

(assert (= (and b!5095019 (is-Star!13982 (regex!8507 (h!65066 rulesArg!145)))) b!5095192))

(assert (= (and b!5095019 (is-Union!13982 (regex!8507 (h!65066 rulesArg!145)))) b!5095193))

(declare-fun b!5095204 () Bool)

(declare-fun b_free!133395 () Bool)

(declare-fun b_next!134185 () Bool)

(assert (=> b!5095204 (= b_free!133395 (not b_next!134185))))

(declare-fun tp!1420679 () Bool)

(declare-fun b_and!350279 () Bool)

(assert (=> b!5095204 (= tp!1420679 b_and!350279)))

(declare-fun b_free!133397 () Bool)

(declare-fun b_next!134187 () Bool)

(assert (=> b!5095204 (= b_free!133397 (not b_next!134187))))

(declare-fun tp!1420680 () Bool)

(declare-fun b_and!350281 () Bool)

(assert (=> b!5095204 (= tp!1420680 b_and!350281)))

(declare-fun e!3177668 () Bool)

(assert (=> b!5095204 (= e!3177668 (and tp!1420679 tp!1420680))))

(declare-fun tp!1420678 () Bool)

(declare-fun e!3177669 () Bool)

(declare-fun b!5095203 () Bool)

(assert (=> b!5095203 (= e!3177669 (and tp!1420678 (inv!78110 (tag!9371 (h!65066 (t!371697 rulesArg!145)))) (inv!78113 (transformation!8507 (h!65066 (t!371697 rulesArg!145)))) e!3177668))))

(declare-fun b!5095202 () Bool)

(declare-fun e!3177671 () Bool)

(declare-fun tp!1420677 () Bool)

(assert (=> b!5095202 (= e!3177671 (and e!3177669 tp!1420677))))

(assert (=> b!5095022 (= tp!1420638 e!3177671)))

(assert (= b!5095203 b!5095204))

(assert (= b!5095202 b!5095203))

(assert (= (and b!5095022 (is-Cons!58618 (t!371697 rulesArg!145))) b!5095202))

(declare-fun m!6152844 () Bool)

(assert (=> b!5095203 m!6152844))

(declare-fun m!6152846 () Bool)

(assert (=> b!5095203 m!6152846))

(declare-fun b!5095209 () Bool)

(declare-fun e!3177674 () Bool)

(declare-fun tp!1420683 () Bool)

(assert (=> b!5095209 (= e!3177674 (and tp_is_empty!37229 tp!1420683))))

(assert (=> b!5095020 (= tp!1420634 e!3177674)))

(assert (= (and b!5095020 (is-Cons!58617 (t!371696 input!1210))) b!5095209))

(push 1)

(assert b_and!350271)

(assert (not bm!354753))

(assert (not b!5095192))

(assert (not b!5095179))

(assert (not d!1648955))

(assert b_and!350281)

(assert (not b_next!134187))

(assert (not b!5095191))

(assert (not b!5095086))

(assert (not b!5095082))

(assert (not b!5095081))

(assert (not d!1648935))

(assert tp_is_empty!37229)

(assert (not b!5095178))

(assert (not b!5095166))

(assert (not b!5095080))

(assert (not bm!354762))

(assert (not b!5095209))

(assert (not b!5095097))

(assert (not b!5095078))

(assert (not b_next!134185))

(assert b_and!350273)

(assert (not d!1648925))

(assert (not b!5095148))

(assert b_and!350279)

(assert (not b_next!134179))

(assert (not d!1648953))

(assert (not b!5095202))

(assert (not b_next!134177))

(assert (not b!5095076))

(assert (not b!5095193))

(assert (not b!5095074))

(assert (not d!1648939))

(assert (not b!5095098))

(assert (not b!5095079))

(assert (not b!5095096))

(assert (not b!5095077))

(assert (not b!5095203))

(assert (not b!5095149))

(assert (not d!1648943))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350271)

(assert b_and!350281)

(assert (not b_next!134177))

(assert (not b_next!134187))

(assert (not b_next!134185))

(assert b_and!350273)

(assert b_and!350279)

(assert (not b_next!134179))

(check-sat)

(pop 1)

