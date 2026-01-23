; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!181204 () Bool)

(assert start!181204)

(declare-fun b!1827378 () Bool)

(declare-fun b_free!50971 () Bool)

(declare-fun b_next!51675 () Bool)

(assert (=> b!1827378 (= b_free!50971 (not b_next!51675))))

(declare-fun tp!516836 () Bool)

(declare-fun b_and!142009 () Bool)

(assert (=> b!1827378 (= tp!516836 b_and!142009)))

(declare-fun b_free!50973 () Bool)

(declare-fun b_next!51677 () Bool)

(assert (=> b!1827378 (= b_free!50973 (not b_next!51677))))

(declare-fun tp!516840 () Bool)

(declare-fun b_and!142011 () Bool)

(assert (=> b!1827378 (= tp!516840 b_and!142011)))

(declare-fun b!1827383 () Bool)

(declare-fun b_free!50975 () Bool)

(declare-fun b_next!51679 () Bool)

(assert (=> b!1827383 (= b_free!50975 (not b_next!51679))))

(declare-fun tp!516837 () Bool)

(declare-fun b_and!142013 () Bool)

(assert (=> b!1827383 (= tp!516837 b_and!142013)))

(declare-fun b_free!50977 () Bool)

(declare-fun b_next!51681 () Bool)

(assert (=> b!1827383 (= b_free!50977 (not b_next!51681))))

(declare-fun tp!516842 () Bool)

(declare-fun b_and!142015 () Bool)

(assert (=> b!1827383 (= tp!516842 b_and!142015)))

(declare-fun b!1827388 () Bool)

(declare-fun b_free!50979 () Bool)

(declare-fun b_next!51683 () Bool)

(assert (=> b!1827388 (= b_free!50979 (not b_next!51683))))

(declare-fun tp!516843 () Bool)

(declare-fun b_and!142017 () Bool)

(assert (=> b!1827388 (= tp!516843 b_and!142017)))

(declare-fun b_free!50981 () Bool)

(declare-fun b_next!51685 () Bool)

(assert (=> b!1827388 (= b_free!50981 (not b_next!51685))))

(declare-fun tp!516844 () Bool)

(declare-fun b_and!142019 () Bool)

(assert (=> b!1827388 (= tp!516844 b_and!142019)))

(declare-fun b!1827373 () Bool)

(declare-fun res!821827 () Bool)

(declare-fun e!1168047 () Bool)

(assert (=> b!1827373 (=> (not res!821827) (not e!1168047))))

(declare-datatypes ((List!20150 0))(
  ( (Nil!20080) (Cons!20080 (h!25481 (_ BitVec 16)) (t!170365 List!20150)) )
))
(declare-datatypes ((TokenValue!3716 0))(
  ( (FloatLiteralValue!7432 (text!26457 List!20150)) (TokenValueExt!3715 (__x!12734 Int)) (Broken!18580 (value!112983 List!20150)) (Object!3785) (End!3716) (Def!3716) (Underscore!3716) (Match!3716) (Else!3716) (Error!3716) (Case!3716) (If!3716) (Extends!3716) (Abstract!3716) (Class!3716) (Val!3716) (DelimiterValue!7432 (del!3776 List!20150)) (KeywordValue!3722 (value!112984 List!20150)) (CommentValue!7432 (value!112985 List!20150)) (WhitespaceValue!7432 (value!112986 List!20150)) (IndentationValue!3716 (value!112987 List!20150)) (String!22913) (Int32!3716) (Broken!18581 (value!112988 List!20150)) (Boolean!3717) (Unit!34751) (OperatorValue!3719 (op!3776 List!20150)) (IdentifierValue!7432 (value!112989 List!20150)) (IdentifierValue!7433 (value!112990 List!20150)) (WhitespaceValue!7433 (value!112991 List!20150)) (True!7432) (False!7432) (Broken!18582 (value!112992 List!20150)) (Broken!18583 (value!112993 List!20150)) (True!7433) (RightBrace!3716) (RightBracket!3716) (Colon!3716) (Null!3716) (Comma!3716) (LeftBracket!3716) (False!7433) (LeftBrace!3716) (ImaginaryLiteralValue!3716 (text!26458 List!20150)) (StringLiteralValue!11148 (value!112994 List!20150)) (EOFValue!3716 (value!112995 List!20150)) (IdentValue!3716 (value!112996 List!20150)) (DelimiterValue!7433 (value!112997 List!20150)) (DedentValue!3716 (value!112998 List!20150)) (NewLineValue!3716 (value!112999 List!20150)) (IntegerValue!11148 (value!113000 (_ BitVec 32)) (text!26459 List!20150)) (IntegerValue!11149 (value!113001 Int) (text!26460 List!20150)) (Times!3716) (Or!3716) (Equal!3716) (Minus!3716) (Broken!18584 (value!113002 List!20150)) (And!3716) (Div!3716) (LessEqual!3716) (Mod!3716) (Concat!8670) (Not!3716) (Plus!3716) (SpaceValue!3716 (value!113003 List!20150)) (IntegerValue!11150 (value!113004 Int) (text!26461 List!20150)) (StringLiteralValue!11149 (text!26462 List!20150)) (FloatLiteralValue!7433 (text!26463 List!20150)) (BytesLiteralValue!3716 (value!113005 List!20150)) (CommentValue!7433 (value!113006 List!20150)) (StringLiteralValue!11150 (value!113007 List!20150)) (ErrorTokenValue!3716 (msg!3777 List!20150)) )
))
(declare-datatypes ((C!10082 0))(
  ( (C!10083 (val!5637 Int)) )
))
(declare-datatypes ((List!20151 0))(
  ( (Nil!20081) (Cons!20081 (h!25482 C!10082) (t!170366 List!20151)) )
))
(declare-datatypes ((IArray!13321 0))(
  ( (IArray!13322 (innerList!6718 List!20151)) )
))
(declare-datatypes ((Conc!6658 0))(
  ( (Node!6658 (left!16065 Conc!6658) (right!16395 Conc!6658) (csize!13546 Int) (cheight!6869 Int)) (Leaf!9692 (xs!9534 IArray!13321) (csize!13547 Int)) (Empty!6658) )
))
(declare-datatypes ((BalanceConc!13260 0))(
  ( (BalanceConc!13261 (c!298055 Conc!6658)) )
))
(declare-datatypes ((TokenValueInjection!7092 0))(
  ( (TokenValueInjection!7093 (toValue!5165 Int) (toChars!5024 Int)) )
))
(declare-datatypes ((Regex!4954 0))(
  ( (ElementMatch!4954 (c!298056 C!10082)) (Concat!8671 (regOne!10420 Regex!4954) (regTwo!10420 Regex!4954)) (EmptyExpr!4954) (Star!4954 (reg!5283 Regex!4954)) (EmptyLang!4954) (Union!4954 (regOne!10421 Regex!4954) (regTwo!10421 Regex!4954)) )
))
(declare-datatypes ((String!22914 0))(
  ( (String!22915 (value!113008 String)) )
))
(declare-datatypes ((Rule!7052 0))(
  ( (Rule!7053 (regex!3626 Regex!4954) (tag!4040 String!22914) (isSeparator!3626 Bool) (transformation!3626 TokenValueInjection!7092)) )
))
(declare-datatypes ((List!20152 0))(
  ( (Nil!20082) (Cons!20082 (h!25483 Rule!7052) (t!170367 List!20152)) )
))
(declare-fun rules!4538 () List!20152)

(declare-fun rule!559 () Rule!7052)

(declare-fun contains!3692 (List!20152 Rule!7052) Bool)

(assert (=> b!1827373 (= res!821827 (contains!3692 rules!4538 rule!559))))

(declare-fun b!1827374 () Bool)

(declare-fun e!1168040 () Bool)

(declare-fun e!1168043 () Bool)

(declare-fun tp!516838 () Bool)

(assert (=> b!1827374 (= e!1168040 (and e!1168043 tp!516838))))

(declare-fun e!1168046 () Bool)

(declare-fun b!1827375 () Bool)

(declare-fun tp!516846 () Bool)

(declare-fun e!1168044 () Bool)

(declare-datatypes ((Token!6806 0))(
  ( (Token!6807 (value!113009 TokenValue!3716) (rule!5786 Rule!7052) (size!15925 Int) (originalCharacters!4434 List!20151)) )
))
(declare-fun token!556 () Token!6806)

(declare-fun inv!26127 (String!22914) Bool)

(declare-fun inv!26130 (TokenValueInjection!7092) Bool)

(assert (=> b!1827375 (= e!1168044 (and tp!516846 (inv!26127 (tag!4040 (rule!5786 token!556))) (inv!26130 (transformation!3626 (rule!5786 token!556))) e!1168046))))

(declare-fun b!1827376 () Bool)

(declare-fun e!1168055 () Bool)

(declare-fun tp_is_empty!8143 () Bool)

(declare-fun tp!516847 () Bool)

(assert (=> b!1827376 (= e!1168055 (and tp_is_empty!8143 tp!516847))))

(declare-fun b!1827377 () Bool)

(declare-fun e!1168054 () Bool)

(declare-fun lt!709883 () List!20151)

(declare-fun isEmpty!12678 (List!20151) Bool)

(assert (=> b!1827377 (= e!1168054 (not (isEmpty!12678 lt!709883)))))

(declare-fun e!1168042 () Bool)

(assert (=> b!1827378 (= e!1168042 (and tp!516836 tp!516840))))

(declare-fun b!1827379 () Bool)

(declare-fun res!821829 () Bool)

(assert (=> b!1827379 (=> (not res!821829) (not e!1168047))))

(declare-datatypes ((LexerInterface!3255 0))(
  ( (LexerInterfaceExt!3252 (__x!12735 Int)) (Lexer!3253) )
))
(declare-fun thiss!28068 () LexerInterface!3255)

(declare-fun rulesInvariant!2924 (LexerInterface!3255 List!20152) Bool)

(assert (=> b!1827379 (= res!821829 (rulesInvariant!2924 thiss!28068 rules!4538))))

(declare-fun b!1827380 () Bool)

(declare-fun res!821823 () Bool)

(assert (=> b!1827380 (=> (not res!821823) (not e!1168047))))

(declare-fun isEmpty!12679 (List!20152) Bool)

(assert (=> b!1827380 (= res!821823 (not (isEmpty!12679 rules!4538)))))

(declare-fun b!1827381 () Bool)

(declare-fun e!1168045 () Bool)

(declare-fun tp!516841 () Bool)

(assert (=> b!1827381 (= e!1168045 (and tp_is_empty!8143 tp!516841))))

(declare-fun b!1827382 () Bool)

(declare-fun tp!516839 () Bool)

(declare-fun e!1168051 () Bool)

(assert (=> b!1827382 (= e!1168051 (and tp!516839 (inv!26127 (tag!4040 rule!559)) (inv!26130 (transformation!3626 rule!559)) e!1168042))))

(declare-fun e!1168050 () Bool)

(assert (=> b!1827383 (= e!1168050 (and tp!516837 tp!516842))))

(declare-fun b!1827384 () Bool)

(declare-fun e!1168041 () Bool)

(assert (=> b!1827384 (= e!1168047 e!1168041)))

(declare-fun res!821824 () Bool)

(assert (=> b!1827384 (=> (not res!821824) (not e!1168041))))

(declare-fun suffix!1667 () List!20151)

(declare-fun input!3612 () List!20151)

(declare-fun ++!5450 (List!20151 List!20151) List!20151)

(assert (=> b!1827384 (= res!821824 (= input!3612 (++!5450 lt!709883 suffix!1667)))))

(declare-fun list!8158 (BalanceConc!13260) List!20151)

(declare-fun charsOf!2269 (Token!6806) BalanceConc!13260)

(assert (=> b!1827384 (= lt!709883 (list!8158 (charsOf!2269 token!556)))))

(declare-fun b!1827385 () Bool)

(declare-fun res!821826 () Bool)

(assert (=> b!1827385 (=> (not res!821826) (not e!1168047))))

(assert (=> b!1827385 (= res!821826 (= (rule!5786 token!556) rule!559))))

(declare-fun tp!516845 () Bool)

(declare-fun b!1827386 () Bool)

(declare-fun e!1168048 () Bool)

(declare-fun inv!21 (TokenValue!3716) Bool)

(assert (=> b!1827386 (= e!1168048 (and (inv!21 (value!113009 token!556)) e!1168044 tp!516845))))

(declare-fun b!1827387 () Bool)

(assert (=> b!1827387 (= e!1168041 (not e!1168054))))

(declare-fun res!821830 () Bool)

(assert (=> b!1827387 (=> res!821830 e!1168054)))

(declare-fun matchR!2417 (Regex!4954 List!20151) Bool)

(assert (=> b!1827387 (= res!821830 (not (matchR!2417 (regex!3626 rule!559) lt!709883)))))

(declare-fun ruleValid!1116 (LexerInterface!3255 Rule!7052) Bool)

(assert (=> b!1827387 (ruleValid!1116 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34752 0))(
  ( (Unit!34753) )
))
(declare-fun lt!709884 () Unit!34752)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!635 (LexerInterface!3255 Rule!7052 List!20152) Unit!34752)

(assert (=> b!1827387 (= lt!709884 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!635 thiss!28068 rule!559 rules!4538))))

(assert (=> b!1827388 (= e!1168046 (and tp!516843 tp!516844))))

(declare-fun b!1827389 () Bool)

(declare-fun tp!516835 () Bool)

(assert (=> b!1827389 (= e!1168043 (and tp!516835 (inv!26127 (tag!4040 (h!25483 rules!4538))) (inv!26130 (transformation!3626 (h!25483 rules!4538))) e!1168050))))

(declare-fun b!1827390 () Bool)

(declare-fun res!821828 () Bool)

(assert (=> b!1827390 (=> (not res!821828) (not e!1168047))))

(declare-datatypes ((tuple2!19560 0))(
  ( (tuple2!19561 (_1!11182 Token!6806) (_2!11182 List!20151)) )
))
(declare-datatypes ((Option!4206 0))(
  ( (None!4205) (Some!4205 (v!25768 tuple2!19560)) )
))
(declare-fun maxPrefix!1803 (LexerInterface!3255 List!20152 List!20151) Option!4206)

(assert (=> b!1827390 (= res!821828 (= (maxPrefix!1803 thiss!28068 rules!4538 input!3612) (Some!4205 (tuple2!19561 token!556 suffix!1667))))))

(declare-fun res!821825 () Bool)

(assert (=> start!181204 (=> (not res!821825) (not e!1168047))))

(assert (=> start!181204 (= res!821825 (is-Lexer!3253 thiss!28068))))

(assert (=> start!181204 e!1168047))

(assert (=> start!181204 e!1168055))

(assert (=> start!181204 true))

(assert (=> start!181204 e!1168040))

(declare-fun inv!26131 (Token!6806) Bool)

(assert (=> start!181204 (and (inv!26131 token!556) e!1168048)))

(assert (=> start!181204 e!1168051))

(assert (=> start!181204 e!1168045))

(assert (= (and start!181204 res!821825) b!1827380))

(assert (= (and b!1827380 res!821823) b!1827379))

(assert (= (and b!1827379 res!821829) b!1827373))

(assert (= (and b!1827373 res!821827) b!1827390))

(assert (= (and b!1827390 res!821828) b!1827385))

(assert (= (and b!1827385 res!821826) b!1827384))

(assert (= (and b!1827384 res!821824) b!1827387))

(assert (= (and b!1827387 (not res!821830)) b!1827377))

(assert (= (and start!181204 (is-Cons!20081 suffix!1667)) b!1827376))

(assert (= b!1827389 b!1827383))

(assert (= b!1827374 b!1827389))

(assert (= (and start!181204 (is-Cons!20082 rules!4538)) b!1827374))

(assert (= b!1827375 b!1827388))

(assert (= b!1827386 b!1827375))

(assert (= start!181204 b!1827386))

(assert (= b!1827382 b!1827378))

(assert (= start!181204 b!1827382))

(assert (= (and start!181204 (is-Cons!20081 input!3612)) b!1827381))

(declare-fun m!2255517 () Bool)

(assert (=> b!1827375 m!2255517))

(declare-fun m!2255519 () Bool)

(assert (=> b!1827375 m!2255519))

(declare-fun m!2255521 () Bool)

(assert (=> b!1827390 m!2255521))

(declare-fun m!2255523 () Bool)

(assert (=> b!1827373 m!2255523))

(declare-fun m!2255525 () Bool)

(assert (=> b!1827380 m!2255525))

(declare-fun m!2255527 () Bool)

(assert (=> b!1827379 m!2255527))

(declare-fun m!2255529 () Bool)

(assert (=> b!1827387 m!2255529))

(declare-fun m!2255531 () Bool)

(assert (=> b!1827387 m!2255531))

(declare-fun m!2255533 () Bool)

(assert (=> b!1827387 m!2255533))

(declare-fun m!2255535 () Bool)

(assert (=> b!1827386 m!2255535))

(declare-fun m!2255537 () Bool)

(assert (=> b!1827382 m!2255537))

(declare-fun m!2255539 () Bool)

(assert (=> b!1827382 m!2255539))

(declare-fun m!2255541 () Bool)

(assert (=> b!1827377 m!2255541))

(declare-fun m!2255543 () Bool)

(assert (=> b!1827384 m!2255543))

(declare-fun m!2255545 () Bool)

(assert (=> b!1827384 m!2255545))

(assert (=> b!1827384 m!2255545))

(declare-fun m!2255547 () Bool)

(assert (=> b!1827384 m!2255547))

(declare-fun m!2255549 () Bool)

(assert (=> b!1827389 m!2255549))

(declare-fun m!2255551 () Bool)

(assert (=> b!1827389 m!2255551))

(declare-fun m!2255553 () Bool)

(assert (=> start!181204 m!2255553))

(push 1)

(assert (not b!1827390))

(assert b_and!142013)

(assert (not b!1827389))

(assert (not b!1827386))

(assert (not b!1827380))

(assert (not b!1827387))

(assert (not b_next!51681))

(assert (not b!1827381))

(assert (not b!1827375))

(assert (not b!1827376))

(assert tp_is_empty!8143)

(assert b_and!142017)

(assert (not b_next!51685))

(assert (not b!1827384))

(assert (not b!1827379))

(assert b_and!142015)

(assert b_and!142019)

(assert (not b_next!51675))

(assert (not b!1827382))

(assert (not b_next!51679))

(assert (not b!1827377))

(assert (not b!1827374))

(assert (not b_next!51677))

(assert b_and!142011)

(assert (not b_next!51683))

(assert (not start!181204))

(assert b_and!142009)

(assert (not b!1827373))

(check-sat)

(pop 1)

(push 1)

(assert b_and!142013)

(assert (not b_next!51681))

(assert b_and!142017)

(assert (not b_next!51685))

(assert b_and!142015)

(assert b_and!142019)

(assert (not b_next!51675))

(assert (not b_next!51679))

(assert (not b_next!51677))

(assert b_and!142011)

(assert (not b_next!51683))

(assert b_and!142009)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!558920 () Bool)

(declare-fun res!821861 () Bool)

(declare-fun e!1168109 () Bool)

(assert (=> d!558920 (=> (not res!821861) (not e!1168109))))

(declare-fun rulesValid!1380 (LexerInterface!3255 List!20152) Bool)

(assert (=> d!558920 (= res!821861 (rulesValid!1380 thiss!28068 rules!4538))))

(assert (=> d!558920 (= (rulesInvariant!2924 thiss!28068 rules!4538) e!1168109)))

(declare-fun b!1827447 () Bool)

(declare-datatypes ((List!20156 0))(
  ( (Nil!20086) (Cons!20086 (h!25487 String!22914) (t!170381 List!20156)) )
))
(declare-fun noDuplicateTag!1378 (LexerInterface!3255 List!20152 List!20156) Bool)

(assert (=> b!1827447 (= e!1168109 (noDuplicateTag!1378 thiss!28068 rules!4538 Nil!20086))))

(assert (= (and d!558920 res!821861) b!1827447))

(declare-fun m!2255593 () Bool)

(assert (=> d!558920 m!2255593))

(declare-fun m!2255595 () Bool)

(assert (=> b!1827447 m!2255595))

(assert (=> b!1827379 d!558920))

(declare-fun b!1827466 () Bool)

(declare-fun res!821882 () Bool)

(declare-fun e!1168116 () Bool)

(assert (=> b!1827466 (=> (not res!821882) (not e!1168116))))

(declare-fun lt!709904 () Option!4206)

(declare-fun get!6203 (Option!4206) tuple2!19560)

(declare-fun apply!5414 (TokenValueInjection!7092 BalanceConc!13260) TokenValue!3716)

(declare-fun seqFromList!2583 (List!20151) BalanceConc!13260)

(assert (=> b!1827466 (= res!821882 (= (value!113009 (_1!11182 (get!6203 lt!709904))) (apply!5414 (transformation!3626 (rule!5786 (_1!11182 (get!6203 lt!709904)))) (seqFromList!2583 (originalCharacters!4434 (_1!11182 (get!6203 lt!709904)))))))))

(declare-fun b!1827467 () Bool)

(declare-fun res!821876 () Bool)

(assert (=> b!1827467 (=> (not res!821876) (not e!1168116))))

(declare-fun size!15927 (List!20151) Int)

(assert (=> b!1827467 (= res!821876 (< (size!15927 (_2!11182 (get!6203 lt!709904))) (size!15927 input!3612)))))

(declare-fun call!114553 () Option!4206)

(declare-fun bm!114548 () Bool)

(declare-fun maxPrefixOneRule!1164 (LexerInterface!3255 Rule!7052 List!20151) Option!4206)

(assert (=> bm!114548 (= call!114553 (maxPrefixOneRule!1164 thiss!28068 (h!25483 rules!4538) input!3612))))

(declare-fun d!558922 () Bool)

(declare-fun e!1168118 () Bool)

(assert (=> d!558922 e!1168118))

(declare-fun res!821877 () Bool)

(assert (=> d!558922 (=> res!821877 e!1168118)))

(declare-fun isEmpty!12682 (Option!4206) Bool)

(assert (=> d!558922 (= res!821877 (isEmpty!12682 lt!709904))))

(declare-fun e!1168117 () Option!4206)

(assert (=> d!558922 (= lt!709904 e!1168117)))

(declare-fun c!298062 () Bool)

(assert (=> d!558922 (= c!298062 (and (is-Cons!20082 rules!4538) (is-Nil!20082 (t!170367 rules!4538))))))

(declare-fun lt!709902 () Unit!34752)

(declare-fun lt!709903 () Unit!34752)

(assert (=> d!558922 (= lt!709902 lt!709903)))

(declare-fun isPrefix!1828 (List!20151 List!20151) Bool)

(assert (=> d!558922 (isPrefix!1828 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1205 (List!20151 List!20151) Unit!34752)

(assert (=> d!558922 (= lt!709903 (lemmaIsPrefixRefl!1205 input!3612 input!3612))))

(declare-fun rulesValidInductive!1247 (LexerInterface!3255 List!20152) Bool)

(assert (=> d!558922 (rulesValidInductive!1247 thiss!28068 rules!4538)))

(assert (=> d!558922 (= (maxPrefix!1803 thiss!28068 rules!4538 input!3612) lt!709904)))

(declare-fun b!1827468 () Bool)

(assert (=> b!1827468 (= e!1168117 call!114553)))

(declare-fun b!1827469 () Bool)

(declare-fun lt!709901 () Option!4206)

(declare-fun lt!709905 () Option!4206)

(assert (=> b!1827469 (= e!1168117 (ite (and (is-None!4205 lt!709901) (is-None!4205 lt!709905)) None!4205 (ite (is-None!4205 lt!709905) lt!709901 (ite (is-None!4205 lt!709901) lt!709905 (ite (>= (size!15925 (_1!11182 (v!25768 lt!709901))) (size!15925 (_1!11182 (v!25768 lt!709905)))) lt!709901 lt!709905)))))))

(assert (=> b!1827469 (= lt!709901 call!114553)))

(assert (=> b!1827469 (= lt!709905 (maxPrefix!1803 thiss!28068 (t!170367 rules!4538) input!3612))))

(declare-fun b!1827470 () Bool)

(assert (=> b!1827470 (= e!1168118 e!1168116)))

(declare-fun res!821879 () Bool)

(assert (=> b!1827470 (=> (not res!821879) (not e!1168116))))

(declare-fun isDefined!3515 (Option!4206) Bool)

(assert (=> b!1827470 (= res!821879 (isDefined!3515 lt!709904))))

(declare-fun b!1827471 () Bool)

(assert (=> b!1827471 (= e!1168116 (contains!3692 rules!4538 (rule!5786 (_1!11182 (get!6203 lt!709904)))))))

(declare-fun b!1827472 () Bool)

(declare-fun res!821880 () Bool)

(assert (=> b!1827472 (=> (not res!821880) (not e!1168116))))

(assert (=> b!1827472 (= res!821880 (= (++!5450 (list!8158 (charsOf!2269 (_1!11182 (get!6203 lt!709904)))) (_2!11182 (get!6203 lt!709904))) input!3612))))

(declare-fun b!1827473 () Bool)

(declare-fun res!821878 () Bool)

(assert (=> b!1827473 (=> (not res!821878) (not e!1168116))))

(assert (=> b!1827473 (= res!821878 (= (list!8158 (charsOf!2269 (_1!11182 (get!6203 lt!709904)))) (originalCharacters!4434 (_1!11182 (get!6203 lt!709904)))))))

(declare-fun b!1827474 () Bool)

(declare-fun res!821881 () Bool)

(assert (=> b!1827474 (=> (not res!821881) (not e!1168116))))

(assert (=> b!1827474 (= res!821881 (matchR!2417 (regex!3626 (rule!5786 (_1!11182 (get!6203 lt!709904)))) (list!8158 (charsOf!2269 (_1!11182 (get!6203 lt!709904))))))))

(assert (= (and d!558922 c!298062) b!1827468))

(assert (= (and d!558922 (not c!298062)) b!1827469))

(assert (= (or b!1827468 b!1827469) bm!114548))

(assert (= (and d!558922 (not res!821877)) b!1827470))

(assert (= (and b!1827470 res!821879) b!1827473))

(assert (= (and b!1827473 res!821878) b!1827467))

(assert (= (and b!1827467 res!821876) b!1827472))

(assert (= (and b!1827472 res!821880) b!1827466))

(assert (= (and b!1827466 res!821882) b!1827474))

(assert (= (and b!1827474 res!821881) b!1827471))

(declare-fun m!2255597 () Bool)

(assert (=> b!1827471 m!2255597))

(declare-fun m!2255599 () Bool)

(assert (=> b!1827471 m!2255599))

(assert (=> b!1827472 m!2255597))

(declare-fun m!2255601 () Bool)

(assert (=> b!1827472 m!2255601))

(assert (=> b!1827472 m!2255601))

(declare-fun m!2255603 () Bool)

(assert (=> b!1827472 m!2255603))

(assert (=> b!1827472 m!2255603))

(declare-fun m!2255605 () Bool)

(assert (=> b!1827472 m!2255605))

(assert (=> b!1827466 m!2255597))

(declare-fun m!2255607 () Bool)

(assert (=> b!1827466 m!2255607))

(assert (=> b!1827466 m!2255607))

(declare-fun m!2255609 () Bool)

(assert (=> b!1827466 m!2255609))

(declare-fun m!2255611 () Bool)

(assert (=> d!558922 m!2255611))

(declare-fun m!2255613 () Bool)

(assert (=> d!558922 m!2255613))

(declare-fun m!2255615 () Bool)

(assert (=> d!558922 m!2255615))

(declare-fun m!2255617 () Bool)

(assert (=> d!558922 m!2255617))

(declare-fun m!2255619 () Bool)

(assert (=> bm!114548 m!2255619))

(assert (=> b!1827467 m!2255597))

(declare-fun m!2255621 () Bool)

(assert (=> b!1827467 m!2255621))

(declare-fun m!2255623 () Bool)

(assert (=> b!1827467 m!2255623))

(declare-fun m!2255625 () Bool)

(assert (=> b!1827469 m!2255625))

(assert (=> b!1827473 m!2255597))

(assert (=> b!1827473 m!2255601))

(assert (=> b!1827473 m!2255601))

(assert (=> b!1827473 m!2255603))

(assert (=> b!1827474 m!2255597))

(assert (=> b!1827474 m!2255601))

(assert (=> b!1827474 m!2255601))

(assert (=> b!1827474 m!2255603))

(assert (=> b!1827474 m!2255603))

(declare-fun m!2255627 () Bool)

(assert (=> b!1827474 m!2255627))

(declare-fun m!2255629 () Bool)

(assert (=> b!1827470 m!2255629))

(assert (=> b!1827390 d!558922))

(declare-fun d!558926 () Bool)

(assert (=> d!558926 (= (isEmpty!12679 rules!4538) (is-Nil!20082 rules!4538))))

(assert (=> b!1827380 d!558926))

(declare-fun d!558928 () Bool)

(assert (=> d!558928 (= (inv!26127 (tag!4040 (h!25483 rules!4538))) (= (mod (str.len (value!113008 (tag!4040 (h!25483 rules!4538)))) 2) 0))))

(assert (=> b!1827389 d!558928))

(declare-fun d!558930 () Bool)

(declare-fun res!821885 () Bool)

(declare-fun e!1168121 () Bool)

(assert (=> d!558930 (=> (not res!821885) (not e!1168121))))

(declare-fun semiInverseModEq!1453 (Int Int) Bool)

(assert (=> d!558930 (= res!821885 (semiInverseModEq!1453 (toChars!5024 (transformation!3626 (h!25483 rules!4538))) (toValue!5165 (transformation!3626 (h!25483 rules!4538)))))))

(assert (=> d!558930 (= (inv!26130 (transformation!3626 (h!25483 rules!4538))) e!1168121)))

(declare-fun b!1827477 () Bool)

(declare-fun equivClasses!1394 (Int Int) Bool)

(assert (=> b!1827477 (= e!1168121 (equivClasses!1394 (toChars!5024 (transformation!3626 (h!25483 rules!4538))) (toValue!5165 (transformation!3626 (h!25483 rules!4538)))))))

(assert (= (and d!558930 res!821885) b!1827477))

(declare-fun m!2255631 () Bool)

(assert (=> d!558930 m!2255631))

(declare-fun m!2255633 () Bool)

(assert (=> b!1827477 m!2255633))

(assert (=> b!1827389 d!558930))

(declare-fun b!1827524 () Bool)

(declare-fun e!1168143 () Bool)

(declare-fun derivativeStep!1301 (Regex!4954 C!10082) Regex!4954)

(declare-fun head!4265 (List!20151) C!10082)

(declare-fun tail!2724 (List!20151) List!20151)

(assert (=> b!1827524 (= e!1168143 (matchR!2417 (derivativeStep!1301 (regex!3626 rule!559) (head!4265 lt!709883)) (tail!2724 lt!709883)))))

(declare-fun b!1827525 () Bool)

(declare-fun res!821920 () Bool)

(declare-fun e!1168147 () Bool)

(assert (=> b!1827525 (=> (not res!821920) (not e!1168147))))

(declare-fun call!114558 () Bool)

(assert (=> b!1827525 (= res!821920 (not call!114558))))

(declare-fun bm!114553 () Bool)

(assert (=> bm!114553 (= call!114558 (isEmpty!12678 lt!709883))))

(declare-fun b!1827526 () Bool)

(declare-fun res!821922 () Bool)

(declare-fun e!1168145 () Bool)

(assert (=> b!1827526 (=> res!821922 e!1168145)))

(assert (=> b!1827526 (= res!821922 (not (isEmpty!12678 (tail!2724 lt!709883))))))

(declare-fun b!1827527 () Bool)

(declare-fun e!1168146 () Bool)

(assert (=> b!1827527 (= e!1168146 e!1168145)))

(declare-fun res!821923 () Bool)

(assert (=> b!1827527 (=> res!821923 e!1168145)))

(assert (=> b!1827527 (= res!821923 call!114558)))

(declare-fun b!1827528 () Bool)

(declare-fun nullable!1536 (Regex!4954) Bool)

(assert (=> b!1827528 (= e!1168143 (nullable!1536 (regex!3626 rule!559)))))

(declare-fun b!1827529 () Bool)

(declare-fun e!1168142 () Bool)

(declare-fun lt!709918 () Bool)

(assert (=> b!1827529 (= e!1168142 (= lt!709918 call!114558))))

(declare-fun b!1827530 () Bool)

(declare-fun res!821921 () Bool)

(declare-fun e!1168148 () Bool)

(assert (=> b!1827530 (=> res!821921 e!1168148)))

(assert (=> b!1827530 (= res!821921 (not (is-ElementMatch!4954 (regex!3626 rule!559))))))

(declare-fun e!1168144 () Bool)

(assert (=> b!1827530 (= e!1168144 e!1168148)))

(declare-fun b!1827531 () Bool)

(declare-fun res!821917 () Bool)

(assert (=> b!1827531 (=> (not res!821917) (not e!1168147))))

(assert (=> b!1827531 (= res!821917 (isEmpty!12678 (tail!2724 lt!709883)))))

(declare-fun b!1827532 () Bool)

(assert (=> b!1827532 (= e!1168148 e!1168146)))

(declare-fun res!821919 () Bool)

(assert (=> b!1827532 (=> (not res!821919) (not e!1168146))))

(assert (=> b!1827532 (= res!821919 (not lt!709918))))

(declare-fun d!558932 () Bool)

(assert (=> d!558932 e!1168142))

(declare-fun c!298073 () Bool)

(assert (=> d!558932 (= c!298073 (is-EmptyExpr!4954 (regex!3626 rule!559)))))

(assert (=> d!558932 (= lt!709918 e!1168143)))

(declare-fun c!298071 () Bool)

(assert (=> d!558932 (= c!298071 (isEmpty!12678 lt!709883))))

(declare-fun validRegex!2016 (Regex!4954) Bool)

(assert (=> d!558932 (validRegex!2016 (regex!3626 rule!559))))

(assert (=> d!558932 (= (matchR!2417 (regex!3626 rule!559) lt!709883) lt!709918)))

(declare-fun b!1827533 () Bool)

(assert (=> b!1827533 (= e!1168145 (not (= (head!4265 lt!709883) (c!298056 (regex!3626 rule!559)))))))

(declare-fun b!1827534 () Bool)

(declare-fun res!821916 () Bool)

(assert (=> b!1827534 (=> res!821916 e!1168148)))

(assert (=> b!1827534 (= res!821916 e!1168147)))

(declare-fun res!821918 () Bool)

(assert (=> b!1827534 (=> (not res!821918) (not e!1168147))))

(assert (=> b!1827534 (= res!821918 lt!709918)))

(declare-fun b!1827535 () Bool)

(assert (=> b!1827535 (= e!1168142 e!1168144)))

(declare-fun c!298072 () Bool)

(assert (=> b!1827535 (= c!298072 (is-EmptyLang!4954 (regex!3626 rule!559)))))

(declare-fun b!1827536 () Bool)

(assert (=> b!1827536 (= e!1168144 (not lt!709918))))

(declare-fun b!1827537 () Bool)

(assert (=> b!1827537 (= e!1168147 (= (head!4265 lt!709883) (c!298056 (regex!3626 rule!559))))))

(assert (= (and d!558932 c!298071) b!1827528))

(assert (= (and d!558932 (not c!298071)) b!1827524))

(assert (= (and d!558932 c!298073) b!1827529))

(assert (= (and d!558932 (not c!298073)) b!1827535))

(assert (= (and b!1827535 c!298072) b!1827536))

(assert (= (and b!1827535 (not c!298072)) b!1827530))

(assert (= (and b!1827530 (not res!821921)) b!1827534))

(assert (= (and b!1827534 res!821918) b!1827525))

(assert (= (and b!1827525 res!821920) b!1827531))

(assert (= (and b!1827531 res!821917) b!1827537))

(assert (= (and b!1827534 (not res!821916)) b!1827532))

(assert (= (and b!1827532 res!821919) b!1827527))

(assert (= (and b!1827527 (not res!821923)) b!1827526))

(assert (= (and b!1827526 (not res!821922)) b!1827533))

(assert (= (or b!1827529 b!1827525 b!1827527) bm!114553))

(declare-fun m!2255635 () Bool)

(assert (=> b!1827533 m!2255635))

(declare-fun m!2255637 () Bool)

(assert (=> b!1827531 m!2255637))

(assert (=> b!1827531 m!2255637))

(declare-fun m!2255639 () Bool)

(assert (=> b!1827531 m!2255639))

(assert (=> b!1827524 m!2255635))

(assert (=> b!1827524 m!2255635))

(declare-fun m!2255641 () Bool)

(assert (=> b!1827524 m!2255641))

(assert (=> b!1827524 m!2255637))

(assert (=> b!1827524 m!2255641))

(assert (=> b!1827524 m!2255637))

(declare-fun m!2255643 () Bool)

(assert (=> b!1827524 m!2255643))

(assert (=> d!558932 m!2255541))

(declare-fun m!2255645 () Bool)

(assert (=> d!558932 m!2255645))

(assert (=> b!1827537 m!2255635))

(assert (=> bm!114553 m!2255541))

(assert (=> b!1827526 m!2255637))

(assert (=> b!1827526 m!2255637))

(assert (=> b!1827526 m!2255639))

(declare-fun m!2255647 () Bool)

(assert (=> b!1827528 m!2255647))

(assert (=> b!1827387 d!558932))

(declare-fun d!558934 () Bool)

(declare-fun res!821928 () Bool)

(declare-fun e!1168151 () Bool)

(assert (=> d!558934 (=> (not res!821928) (not e!1168151))))

(assert (=> d!558934 (= res!821928 (validRegex!2016 (regex!3626 rule!559)))))

(assert (=> d!558934 (= (ruleValid!1116 thiss!28068 rule!559) e!1168151)))

(declare-fun b!1827542 () Bool)

(declare-fun res!821929 () Bool)

(assert (=> b!1827542 (=> (not res!821929) (not e!1168151))))

(assert (=> b!1827542 (= res!821929 (not (nullable!1536 (regex!3626 rule!559))))))

(declare-fun b!1827543 () Bool)

(assert (=> b!1827543 (= e!1168151 (not (= (tag!4040 rule!559) (String!22915 ""))))))

(assert (= (and d!558934 res!821928) b!1827542))

(assert (= (and b!1827542 res!821929) b!1827543))

(assert (=> d!558934 m!2255645))

(assert (=> b!1827542 m!2255647))

(assert (=> b!1827387 d!558934))

(declare-fun d!558936 () Bool)

(assert (=> d!558936 (ruleValid!1116 thiss!28068 rule!559)))

(declare-fun lt!709921 () Unit!34752)

(declare-fun choose!11514 (LexerInterface!3255 Rule!7052 List!20152) Unit!34752)

(assert (=> d!558936 (= lt!709921 (choose!11514 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558936 (contains!3692 rules!4538 rule!559)))

(assert (=> d!558936 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!635 thiss!28068 rule!559 rules!4538) lt!709921)))

(declare-fun bs!407646 () Bool)

(assert (= bs!407646 d!558936))

(assert (=> bs!407646 m!2255531))

(declare-fun m!2255649 () Bool)

(assert (=> bs!407646 m!2255649))

(assert (=> bs!407646 m!2255523))

(assert (=> b!1827387 d!558936))

(declare-fun d!558938 () Bool)

(assert (=> d!558938 (= (isEmpty!12678 lt!709883) (is-Nil!20081 lt!709883))))

(assert (=> b!1827377 d!558938))

(declare-fun d!558940 () Bool)

(assert (=> d!558940 (= (inv!26127 (tag!4040 (rule!5786 token!556))) (= (mod (str.len (value!113008 (tag!4040 (rule!5786 token!556)))) 2) 0))))

(assert (=> b!1827375 d!558940))

(declare-fun d!558942 () Bool)

(declare-fun res!821930 () Bool)

(declare-fun e!1168152 () Bool)

(assert (=> d!558942 (=> (not res!821930) (not e!1168152))))

(assert (=> d!558942 (= res!821930 (semiInverseModEq!1453 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (toValue!5165 (transformation!3626 (rule!5786 token!556)))))))

(assert (=> d!558942 (= (inv!26130 (transformation!3626 (rule!5786 token!556))) e!1168152)))

(declare-fun b!1827544 () Bool)

(assert (=> b!1827544 (= e!1168152 (equivClasses!1394 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (toValue!5165 (transformation!3626 (rule!5786 token!556)))))))

(assert (= (and d!558942 res!821930) b!1827544))

(declare-fun m!2255651 () Bool)

(assert (=> d!558942 m!2255651))

(declare-fun m!2255653 () Bool)

(assert (=> b!1827544 m!2255653))

(assert (=> b!1827375 d!558942))

(declare-fun b!1827564 () Bool)

(declare-fun e!1168164 () Bool)

(declare-fun inv!15 (TokenValue!3716) Bool)

(assert (=> b!1827564 (= e!1168164 (inv!15 (value!113009 token!556)))))

(declare-fun b!1827565 () Bool)

(declare-fun e!1168162 () Bool)

(declare-fun inv!16 (TokenValue!3716) Bool)

(assert (=> b!1827565 (= e!1168162 (inv!16 (value!113009 token!556)))))

(declare-fun d!558944 () Bool)

(declare-fun c!298080 () Bool)

(assert (=> d!558944 (= c!298080 (is-IntegerValue!11148 (value!113009 token!556)))))

(assert (=> d!558944 (= (inv!21 (value!113009 token!556)) e!1168162)))

(declare-fun b!1827566 () Bool)

(declare-fun res!821940 () Bool)

(assert (=> b!1827566 (=> res!821940 e!1168164)))

(assert (=> b!1827566 (= res!821940 (not (is-IntegerValue!11150 (value!113009 token!556))))))

(declare-fun e!1168163 () Bool)

(assert (=> b!1827566 (= e!1168163 e!1168164)))

(declare-fun b!1827567 () Bool)

(declare-fun inv!17 (TokenValue!3716) Bool)

(assert (=> b!1827567 (= e!1168163 (inv!17 (value!113009 token!556)))))

(declare-fun b!1827568 () Bool)

(assert (=> b!1827568 (= e!1168162 e!1168163)))

(declare-fun c!298079 () Bool)

(assert (=> b!1827568 (= c!298079 (is-IntegerValue!11149 (value!113009 token!556)))))

(assert (= (and d!558944 c!298080) b!1827565))

(assert (= (and d!558944 (not c!298080)) b!1827568))

(assert (= (and b!1827568 c!298079) b!1827567))

(assert (= (and b!1827568 (not c!298079)) b!1827566))

(assert (= (and b!1827566 (not res!821940)) b!1827564))

(declare-fun m!2255655 () Bool)

(assert (=> b!1827564 m!2255655))

(declare-fun m!2255657 () Bool)

(assert (=> b!1827565 m!2255657))

(declare-fun m!2255659 () Bool)

(assert (=> b!1827567 m!2255659))

(assert (=> b!1827386 d!558944))

(declare-fun d!558946 () Bool)

(declare-fun res!821945 () Bool)

(declare-fun e!1168167 () Bool)

(assert (=> d!558946 (=> (not res!821945) (not e!1168167))))

(assert (=> d!558946 (= res!821945 (not (isEmpty!12678 (originalCharacters!4434 token!556))))))

(assert (=> d!558946 (= (inv!26131 token!556) e!1168167)))

(declare-fun b!1827573 () Bool)

(declare-fun res!821946 () Bool)

(assert (=> b!1827573 (=> (not res!821946) (not e!1168167))))

(declare-fun dynLambda!9976 (Int TokenValue!3716) BalanceConc!13260)

(assert (=> b!1827573 (= res!821946 (= (originalCharacters!4434 token!556) (list!8158 (dynLambda!9976 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (value!113009 token!556)))))))

(declare-fun b!1827574 () Bool)

(assert (=> b!1827574 (= e!1168167 (= (size!15925 token!556) (size!15927 (originalCharacters!4434 token!556))))))

(assert (= (and d!558946 res!821945) b!1827573))

(assert (= (and b!1827573 res!821946) b!1827574))

(declare-fun b_lambda!60369 () Bool)

(assert (=> (not b_lambda!60369) (not b!1827573)))

(declare-fun t!170372 () Bool)

(declare-fun tb!111605 () Bool)

(assert (=> (and b!1827378 (= (toChars!5024 (transformation!3626 rule!559)) (toChars!5024 (transformation!3626 (rule!5786 token!556)))) t!170372) tb!111605))

(declare-fun b!1827579 () Bool)

(declare-fun e!1168170 () Bool)

(declare-fun tp!516889 () Bool)

(declare-fun inv!26134 (Conc!6658) Bool)

(assert (=> b!1827579 (= e!1168170 (and (inv!26134 (c!298055 (dynLambda!9976 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (value!113009 token!556)))) tp!516889))))

(declare-fun result!134200 () Bool)

(declare-fun inv!26135 (BalanceConc!13260) Bool)

(assert (=> tb!111605 (= result!134200 (and (inv!26135 (dynLambda!9976 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (value!113009 token!556))) e!1168170))))

(assert (= tb!111605 b!1827579))

(declare-fun m!2255691 () Bool)

(assert (=> b!1827579 m!2255691))

(declare-fun m!2255693 () Bool)

(assert (=> tb!111605 m!2255693))

(assert (=> b!1827573 t!170372))

(declare-fun b_and!142033 () Bool)

(assert (= b_and!142011 (and (=> t!170372 result!134200) b_and!142033)))

(declare-fun tb!111607 () Bool)

(declare-fun t!170374 () Bool)

(assert (=> (and b!1827383 (= (toChars!5024 (transformation!3626 (h!25483 rules!4538))) (toChars!5024 (transformation!3626 (rule!5786 token!556)))) t!170374) tb!111607))

(declare-fun result!134204 () Bool)

(assert (= result!134204 result!134200))

(assert (=> b!1827573 t!170374))

(declare-fun b_and!142035 () Bool)

(assert (= b_and!142015 (and (=> t!170374 result!134204) b_and!142035)))

(declare-fun t!170376 () Bool)

(declare-fun tb!111609 () Bool)

(assert (=> (and b!1827388 (= (toChars!5024 (transformation!3626 (rule!5786 token!556))) (toChars!5024 (transformation!3626 (rule!5786 token!556)))) t!170376) tb!111609))

(declare-fun result!134206 () Bool)

(assert (= result!134206 result!134200))

(assert (=> b!1827573 t!170376))

(declare-fun b_and!142037 () Bool)

(assert (= b_and!142019 (and (=> t!170376 result!134206) b_and!142037)))

(declare-fun m!2255695 () Bool)

(assert (=> d!558946 m!2255695))

(declare-fun m!2255699 () Bool)

(assert (=> b!1827573 m!2255699))

(assert (=> b!1827573 m!2255699))

(declare-fun m!2255701 () Bool)

(assert (=> b!1827573 m!2255701))

(declare-fun m!2255703 () Bool)

(assert (=> b!1827574 m!2255703))

(assert (=> start!181204 d!558946))

(declare-fun d!558948 () Bool)

(declare-fun lt!709929 () Bool)

(declare-fun content!2964 (List!20152) (Set Rule!7052))

(assert (=> d!558948 (= lt!709929 (set.member rule!559 (content!2964 rules!4538)))))

(declare-fun e!1168175 () Bool)

(assert (=> d!558948 (= lt!709929 e!1168175)))

(declare-fun res!821951 () Bool)

(assert (=> d!558948 (=> (not res!821951) (not e!1168175))))

(assert (=> d!558948 (= res!821951 (is-Cons!20082 rules!4538))))

(assert (=> d!558948 (= (contains!3692 rules!4538 rule!559) lt!709929)))

(declare-fun b!1827584 () Bool)

(declare-fun e!1168176 () Bool)

(assert (=> b!1827584 (= e!1168175 e!1168176)))

(declare-fun res!821952 () Bool)

(assert (=> b!1827584 (=> res!821952 e!1168176)))

(assert (=> b!1827584 (= res!821952 (= (h!25483 rules!4538) rule!559))))

(declare-fun b!1827585 () Bool)

(assert (=> b!1827585 (= e!1168176 (contains!3692 (t!170367 rules!4538) rule!559))))

(assert (= (and d!558948 res!821951) b!1827584))

(assert (= (and b!1827584 (not res!821952)) b!1827585))

(declare-fun m!2255707 () Bool)

(assert (=> d!558948 m!2255707))

(declare-fun m!2255709 () Bool)

(assert (=> d!558948 m!2255709))

(declare-fun m!2255711 () Bool)

(assert (=> b!1827585 m!2255711))

(assert (=> b!1827373 d!558948))

(declare-fun d!558952 () Bool)

(declare-fun e!1168186 () Bool)

(assert (=> d!558952 e!1168186))

(declare-fun res!821962 () Bool)

(assert (=> d!558952 (=> (not res!821962) (not e!1168186))))

(declare-fun lt!709934 () List!20151)

(declare-fun content!2965 (List!20151) (Set C!10082))

(assert (=> d!558952 (= res!821962 (= (content!2965 lt!709934) (set.union (content!2965 lt!709883) (content!2965 suffix!1667))))))

(declare-fun e!1168185 () List!20151)

(assert (=> d!558952 (= lt!709934 e!1168185)))

(declare-fun c!298083 () Bool)

(assert (=> d!558952 (= c!298083 (is-Nil!20081 lt!709883))))

(assert (=> d!558952 (= (++!5450 lt!709883 suffix!1667) lt!709934)))

(declare-fun b!1827599 () Bool)

(assert (=> b!1827599 (= e!1168185 (Cons!20081 (h!25482 lt!709883) (++!5450 (t!170366 lt!709883) suffix!1667)))))

(declare-fun b!1827598 () Bool)

(assert (=> b!1827598 (= e!1168185 suffix!1667)))

(declare-fun b!1827601 () Bool)

(assert (=> b!1827601 (= e!1168186 (or (not (= suffix!1667 Nil!20081)) (= lt!709934 lt!709883)))))

(declare-fun b!1827600 () Bool)

(declare-fun res!821961 () Bool)

(assert (=> b!1827600 (=> (not res!821961) (not e!1168186))))

(assert (=> b!1827600 (= res!821961 (= (size!15927 lt!709934) (+ (size!15927 lt!709883) (size!15927 suffix!1667))))))

(assert (= (and d!558952 c!298083) b!1827598))

(assert (= (and d!558952 (not c!298083)) b!1827599))

(assert (= (and d!558952 res!821962) b!1827600))

(assert (= (and b!1827600 res!821961) b!1827601))

(declare-fun m!2255713 () Bool)

(assert (=> d!558952 m!2255713))

(declare-fun m!2255715 () Bool)

(assert (=> d!558952 m!2255715))

(declare-fun m!2255717 () Bool)

(assert (=> d!558952 m!2255717))

(declare-fun m!2255719 () Bool)

(assert (=> b!1827599 m!2255719))

(declare-fun m!2255721 () Bool)

(assert (=> b!1827600 m!2255721))

(declare-fun m!2255723 () Bool)

(assert (=> b!1827600 m!2255723))

(declare-fun m!2255725 () Bool)

(assert (=> b!1827600 m!2255725))

(assert (=> b!1827384 d!558952))

(declare-fun d!558954 () Bool)

(declare-fun list!8160 (Conc!6658) List!20151)

(assert (=> d!558954 (= (list!8158 (charsOf!2269 token!556)) (list!8160 (c!298055 (charsOf!2269 token!556))))))

(declare-fun bs!407647 () Bool)

(assert (= bs!407647 d!558954))

(declare-fun m!2255733 () Bool)

(assert (=> bs!407647 m!2255733))

(assert (=> b!1827384 d!558954))

(declare-fun d!558958 () Bool)

(declare-fun lt!709938 () BalanceConc!13260)

(assert (=> d!558958 (= (list!8158 lt!709938) (originalCharacters!4434 token!556))))

(assert (=> d!558958 (= lt!709938 (dynLambda!9976 (toChars!5024 (transformation!3626 (rule!5786 token!556))) (value!113009 token!556)))))

(assert (=> d!558958 (= (charsOf!2269 token!556) lt!709938)))

(declare-fun b_lambda!60371 () Bool)

(assert (=> (not b_lambda!60371) (not d!558958)))

(assert (=> d!558958 t!170372))

(declare-fun b_and!142039 () Bool)

(assert (= b_and!142033 (and (=> t!170372 result!134200) b_and!142039)))

(assert (=> d!558958 t!170374))

(declare-fun b_and!142041 () Bool)

(assert (= b_and!142035 (and (=> t!170374 result!134204) b_and!142041)))

(assert (=> d!558958 t!170376))

(declare-fun b_and!142043 () Bool)

(assert (= b_and!142037 (and (=> t!170376 result!134206) b_and!142043)))

(declare-fun m!2255735 () Bool)

(assert (=> d!558958 m!2255735))

(assert (=> d!558958 m!2255699))

(assert (=> b!1827384 d!558958))

(declare-fun d!558962 () Bool)

(assert (=> d!558962 (= (inv!26127 (tag!4040 rule!559)) (= (mod (str.len (value!113008 (tag!4040 rule!559))) 2) 0))))

(assert (=> b!1827382 d!558962))

(declare-fun d!558964 () Bool)

(declare-fun res!821965 () Bool)

(declare-fun e!1168189 () Bool)

(assert (=> d!558964 (=> (not res!821965) (not e!1168189))))

(assert (=> d!558964 (= res!821965 (semiInverseModEq!1453 (toChars!5024 (transformation!3626 rule!559)) (toValue!5165 (transformation!3626 rule!559))))))

(assert (=> d!558964 (= (inv!26130 (transformation!3626 rule!559)) e!1168189)))

(declare-fun b!1827604 () Bool)

(assert (=> b!1827604 (= e!1168189 (equivClasses!1394 (toChars!5024 (transformation!3626 rule!559)) (toValue!5165 (transformation!3626 rule!559))))))

(assert (= (and d!558964 res!821965) b!1827604))

(declare-fun m!2255737 () Bool)

(assert (=> d!558964 m!2255737))

(declare-fun m!2255739 () Bool)

(assert (=> b!1827604 m!2255739))

(assert (=> b!1827382 d!558964))

(declare-fun e!1168192 () Bool)

(assert (=> b!1827375 (= tp!516846 e!1168192)))

(declare-fun b!1827616 () Bool)

(declare-fun tp!516900 () Bool)

(declare-fun tp!516903 () Bool)

(assert (=> b!1827616 (= e!1168192 (and tp!516900 tp!516903))))

(declare-fun b!1827617 () Bool)

(declare-fun tp!516904 () Bool)

(assert (=> b!1827617 (= e!1168192 tp!516904)))

(declare-fun b!1827615 () Bool)

(assert (=> b!1827615 (= e!1168192 tp_is_empty!8143)))

(declare-fun b!1827618 () Bool)

(declare-fun tp!516901 () Bool)

(declare-fun tp!516902 () Bool)

(assert (=> b!1827618 (= e!1168192 (and tp!516901 tp!516902))))

(assert (= (and b!1827375 (is-ElementMatch!4954 (regex!3626 (rule!5786 token!556)))) b!1827615))

(assert (= (and b!1827375 (is-Concat!8671 (regex!3626 (rule!5786 token!556)))) b!1827616))

(assert (= (and b!1827375 (is-Star!4954 (regex!3626 (rule!5786 token!556)))) b!1827617))

(assert (= (and b!1827375 (is-Union!4954 (regex!3626 (rule!5786 token!556)))) b!1827618))

(declare-fun b!1827623 () Bool)

(declare-fun e!1168195 () Bool)

(declare-fun tp!516907 () Bool)

(assert (=> b!1827623 (= e!1168195 (and tp_is_empty!8143 tp!516907))))

(assert (=> b!1827386 (= tp!516845 e!1168195)))

(assert (= (and b!1827386 (is-Cons!20081 (originalCharacters!4434 token!556))) b!1827623))

(declare-fun b!1827624 () Bool)

(declare-fun e!1168196 () Bool)

(declare-fun tp!516908 () Bool)

(assert (=> b!1827624 (= e!1168196 (and tp_is_empty!8143 tp!516908))))

(assert (=> b!1827376 (= tp!516847 e!1168196)))

(assert (= (and b!1827376 (is-Cons!20081 (t!170366 suffix!1667))) b!1827624))

(declare-fun b!1827625 () Bool)

(declare-fun e!1168197 () Bool)

(declare-fun tp!516909 () Bool)

(assert (=> b!1827625 (= e!1168197 (and tp_is_empty!8143 tp!516909))))

(assert (=> b!1827381 (= tp!516841 e!1168197)))

(assert (= (and b!1827381 (is-Cons!20081 (t!170366 input!3612))) b!1827625))

(declare-fun b!1827640 () Bool)

(declare-fun b_free!50995 () Bool)

(declare-fun b_next!51699 () Bool)

(assert (=> b!1827640 (= b_free!50995 (not b_next!51699))))

(declare-fun tp!516920 () Bool)

(declare-fun b_and!142045 () Bool)

(assert (=> b!1827640 (= tp!516920 b_and!142045)))

(declare-fun b_free!50997 () Bool)

(declare-fun b_next!51701 () Bool)

(assert (=> b!1827640 (= b_free!50997 (not b_next!51701))))

(declare-fun tb!111611 () Bool)

(declare-fun t!170378 () Bool)

(assert (=> (and b!1827640 (= (toChars!5024 (transformation!3626 (h!25483 (t!170367 rules!4538)))) (toChars!5024 (transformation!3626 (rule!5786 token!556)))) t!170378) tb!111611))

(declare-fun result!134214 () Bool)

(assert (= result!134214 result!134200))

(assert (=> b!1827573 t!170378))

(assert (=> d!558958 t!170378))

(declare-fun b_and!142047 () Bool)

(declare-fun tp!516919 () Bool)

(assert (=> b!1827640 (= tp!516919 (and (=> t!170378 result!134214) b_and!142047))))

(declare-fun e!1168210 () Bool)

(assert (=> b!1827640 (= e!1168210 (and tp!516920 tp!516919))))

(declare-fun e!1168211 () Bool)

(declare-fun b!1827639 () Bool)

(declare-fun tp!516921 () Bool)

(assert (=> b!1827639 (= e!1168211 (and tp!516921 (inv!26127 (tag!4040 (h!25483 (t!170367 rules!4538)))) (inv!26130 (transformation!3626 (h!25483 (t!170367 rules!4538)))) e!1168210))))

(declare-fun b!1827638 () Bool)

(declare-fun e!1168208 () Bool)

(declare-fun tp!516918 () Bool)

(assert (=> b!1827638 (= e!1168208 (and e!1168211 tp!516918))))

(assert (=> b!1827374 (= tp!516838 e!1168208)))

(assert (= b!1827639 b!1827640))

(assert (= b!1827638 b!1827639))

(assert (= (and b!1827374 (is-Cons!20082 (t!170367 rules!4538))) b!1827638))

(declare-fun m!2255741 () Bool)

(assert (=> b!1827639 m!2255741))

(declare-fun m!2255743 () Bool)

(assert (=> b!1827639 m!2255743))

(declare-fun e!1168212 () Bool)

(assert (=> b!1827389 (= tp!516835 e!1168212)))

(declare-fun b!1827642 () Bool)

(declare-fun tp!516922 () Bool)

(declare-fun tp!516925 () Bool)

(assert (=> b!1827642 (= e!1168212 (and tp!516922 tp!516925))))

(declare-fun b!1827643 () Bool)

(declare-fun tp!516926 () Bool)

(assert (=> b!1827643 (= e!1168212 tp!516926)))

(declare-fun b!1827641 () Bool)

(assert (=> b!1827641 (= e!1168212 tp_is_empty!8143)))

(declare-fun b!1827644 () Bool)

(declare-fun tp!516923 () Bool)

(declare-fun tp!516924 () Bool)

(assert (=> b!1827644 (= e!1168212 (and tp!516923 tp!516924))))

(assert (= (and b!1827389 (is-ElementMatch!4954 (regex!3626 (h!25483 rules!4538)))) b!1827641))

(assert (= (and b!1827389 (is-Concat!8671 (regex!3626 (h!25483 rules!4538)))) b!1827642))

(assert (= (and b!1827389 (is-Star!4954 (regex!3626 (h!25483 rules!4538)))) b!1827643))

(assert (= (and b!1827389 (is-Union!4954 (regex!3626 (h!25483 rules!4538)))) b!1827644))

(declare-fun e!1168213 () Bool)

(assert (=> b!1827382 (= tp!516839 e!1168213)))

(declare-fun b!1827646 () Bool)

(declare-fun tp!516927 () Bool)

(declare-fun tp!516930 () Bool)

(assert (=> b!1827646 (= e!1168213 (and tp!516927 tp!516930))))

(declare-fun b!1827647 () Bool)

(declare-fun tp!516931 () Bool)

(assert (=> b!1827647 (= e!1168213 tp!516931)))

(declare-fun b!1827645 () Bool)

(assert (=> b!1827645 (= e!1168213 tp_is_empty!8143)))

(declare-fun b!1827648 () Bool)

(declare-fun tp!516928 () Bool)

(declare-fun tp!516929 () Bool)

(assert (=> b!1827648 (= e!1168213 (and tp!516928 tp!516929))))

(assert (= (and b!1827382 (is-ElementMatch!4954 (regex!3626 rule!559))) b!1827645))

(assert (= (and b!1827382 (is-Concat!8671 (regex!3626 rule!559))) b!1827646))

(assert (= (and b!1827382 (is-Star!4954 (regex!3626 rule!559))) b!1827647))

(assert (= (and b!1827382 (is-Union!4954 (regex!3626 rule!559))) b!1827648))

(declare-fun b_lambda!60373 () Bool)

(assert (= b_lambda!60369 (or (and b!1827378 b_free!50973 (= (toChars!5024 (transformation!3626 rule!559)) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) (and b!1827383 b_free!50977 (= (toChars!5024 (transformation!3626 (h!25483 rules!4538))) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) (and b!1827388 b_free!50981) (and b!1827640 b_free!50997 (= (toChars!5024 (transformation!3626 (h!25483 (t!170367 rules!4538)))) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) b_lambda!60373)))

(declare-fun b_lambda!60375 () Bool)

(assert (= b_lambda!60371 (or (and b!1827378 b_free!50973 (= (toChars!5024 (transformation!3626 rule!559)) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) (and b!1827383 b_free!50977 (= (toChars!5024 (transformation!3626 (h!25483 rules!4538))) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) (and b!1827388 b_free!50981) (and b!1827640 b_free!50997 (= (toChars!5024 (transformation!3626 (h!25483 (t!170367 rules!4538)))) (toChars!5024 (transformation!3626 (rule!5786 token!556))))) b_lambda!60375)))

(push 1)

(assert (not b!1827642))

(assert (not b!1827617))

(assert (not b!1827623))

(assert (not b!1827524))

(assert (not b!1827616))

(assert (not b_next!51681))

(assert (not b!1827639))

(assert (not b!1827533))

(assert (not bm!114548))

(assert (not b!1827600))

(assert b_and!142047)

(assert b_and!142013)

(assert (not b!1827644))

(assert (not b_lambda!60373))

(assert (not d!558946))

(assert (not b_next!51701))

(assert (not b_lambda!60375))

(assert (not b!1827526))

(assert b_and!142043)

(assert (not b!1827473))

(assert (not b!1827537))

(assert (not b!1827544))

(assert (not b!1827474))

(assert b_and!142045)

(assert (not b_next!51699))

(assert (not d!558948))

(assert (not b!1827579))

(assert (not b!1827646))

(assert (not b!1827477))

(assert (not b!1827472))

(assert (not b_next!51675))

(assert (not b_next!51679))

(assert (not b!1827585))

(assert (not d!558942))

(assert (not d!558952))

(assert (not b!1827643))

(assert (not b_next!51677))

(assert (not b!1827648))

(assert (not b!1827574))

(assert (not b!1827573))

(assert (not b!1827564))

(assert (not d!558936))

(assert (not d!558964))

(assert (not b!1827599))

(assert (not b!1827638))

(assert (not b!1827625))

(assert (not b!1827624))

(assert b_and!142039)

(assert (not d!558934))

(assert (not b!1827542))

(assert (not d!558932))

(assert (not b!1827471))

(assert (not b!1827647))

(assert (not d!558954))

(assert (not b!1827470))

(assert (not b!1827466))

(assert (not b!1827469))

(assert (not b!1827467))

(assert tp_is_empty!8143)

(assert (not b_next!51683))

(assert (not b!1827531))

(assert b_and!142009)

(assert (not b!1827604))

(assert (not b!1827618))

(assert (not d!558920))

(assert b_and!142017)

(assert (not bm!114553))

(assert (not d!558930))

(assert (not b!1827567))

(assert b_and!142041)

(assert (not b!1827565))

(assert (not d!558922))

(assert (not b_next!51685))

(assert (not b!1827447))

(assert (not tb!111605))

(assert (not d!558958))

(assert (not b!1827528))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!51701))

(assert b_and!142043)

(assert b_and!142045)

(assert (not b_next!51699))

(assert (not b_next!51681))

(assert (not b_next!51677))

(assert b_and!142039)

(assert b_and!142017)

(assert b_and!142041)

(assert (not b_next!51685))

(assert b_and!142047)

(assert b_and!142013)

(assert (not b_next!51675))

(assert (not b_next!51679))

(assert (not b_next!51683))

(assert b_and!142009)

(check-sat)

(pop 1)

