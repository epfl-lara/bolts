; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!220634 () Bool)

(assert start!220634)

(declare-fun b!2260086 () Bool)

(declare-fun b_free!66717 () Bool)

(declare-fun b_next!67421 () Bool)

(assert (=> b!2260086 (= b_free!66717 (not b_next!67421))))

(declare-fun tp!714748 () Bool)

(declare-fun b_and!177529 () Bool)

(assert (=> b!2260086 (= tp!714748 b_and!177529)))

(declare-fun b_free!66719 () Bool)

(declare-fun b_next!67423 () Bool)

(assert (=> b!2260086 (= b_free!66719 (not b_next!67423))))

(declare-fun tp!714751 () Bool)

(declare-fun b_and!177531 () Bool)

(assert (=> b!2260086 (= tp!714751 b_and!177531)))

(declare-fun b!2260109 () Bool)

(declare-fun b_free!66721 () Bool)

(declare-fun b_next!67425 () Bool)

(assert (=> b!2260109 (= b_free!66721 (not b_next!67425))))

(declare-fun tp!714745 () Bool)

(declare-fun b_and!177533 () Bool)

(assert (=> b!2260109 (= tp!714745 b_and!177533)))

(declare-fun b_free!66723 () Bool)

(declare-fun b_next!67427 () Bool)

(assert (=> b!2260109 (= b_free!66723 (not b_next!67427))))

(declare-fun tp!714736 () Bool)

(declare-fun b_and!177535 () Bool)

(assert (=> b!2260109 (= tp!714736 b_and!177535)))

(declare-fun b!2260116 () Bool)

(declare-fun b_free!66725 () Bool)

(declare-fun b_next!67429 () Bool)

(assert (=> b!2260116 (= b_free!66725 (not b_next!67429))))

(declare-fun tp!714746 () Bool)

(declare-fun b_and!177537 () Bool)

(assert (=> b!2260116 (= tp!714746 b_and!177537)))

(declare-fun b_free!66727 () Bool)

(declare-fun b_next!67431 () Bool)

(assert (=> b!2260116 (= b_free!66727 (not b_next!67431))))

(declare-fun tp!714743 () Bool)

(declare-fun b_and!177539 () Bool)

(assert (=> b!2260116 (= tp!714743 b_and!177539)))

(declare-fun b!2260091 () Bool)

(declare-fun b_free!66729 () Bool)

(declare-fun b_next!67433 () Bool)

(assert (=> b!2260091 (= b_free!66729 (not b_next!67433))))

(declare-fun tp!714749 () Bool)

(declare-fun b_and!177541 () Bool)

(assert (=> b!2260091 (= tp!714749 b_and!177541)))

(declare-fun b_free!66731 () Bool)

(declare-fun b_next!67435 () Bool)

(assert (=> b!2260091 (= b_free!66731 (not b_next!67435))))

(declare-fun tp!714737 () Bool)

(declare-fun b_and!177543 () Bool)

(assert (=> b!2260091 (= tp!714737 b_and!177543)))

(declare-fun b!2260085 () Bool)

(declare-datatypes ((Unit!39770 0))(
  ( (Unit!39771) )
))
(declare-fun e!1447094 () Unit!39770)

(declare-fun Unit!39772 () Unit!39770)

(assert (=> b!2260085 (= e!1447094 Unit!39772)))

(declare-fun e!1447086 () Bool)

(assert (=> b!2260086 (= e!1447086 (and tp!714748 tp!714751))))

(declare-fun b!2260087 () Bool)

(declare-fun res!966153 () Bool)

(declare-fun e!1447093 () Bool)

(assert (=> b!2260087 (=> (not res!966153) (not e!1447093))))

(declare-datatypes ((List!26933 0))(
  ( (Nil!26839) (Cons!26839 (h!32240 (_ BitVec 16)) (t!201551 List!26933)) )
))
(declare-datatypes ((TokenValue!4430 0))(
  ( (FloatLiteralValue!8860 (text!31455 List!26933)) (TokenValueExt!4429 (__x!17920 Int)) (Broken!22150 (value!135433 List!26933)) (Object!4523) (End!4430) (Def!4430) (Underscore!4430) (Match!4430) (Else!4430) (Error!4430) (Case!4430) (If!4430) (Extends!4430) (Abstract!4430) (Class!4430) (Val!4430) (DelimiterValue!8860 (del!4490 List!26933)) (KeywordValue!4436 (value!135434 List!26933)) (CommentValue!8860 (value!135435 List!26933)) (WhitespaceValue!8860 (value!135436 List!26933)) (IndentationValue!4430 (value!135437 List!26933)) (String!29255) (Int32!4430) (Broken!22151 (value!135438 List!26933)) (Boolean!4431) (Unit!39773) (OperatorValue!4433 (op!4490 List!26933)) (IdentifierValue!8860 (value!135439 List!26933)) (IdentifierValue!8861 (value!135440 List!26933)) (WhitespaceValue!8861 (value!135441 List!26933)) (True!8860) (False!8860) (Broken!22152 (value!135442 List!26933)) (Broken!22153 (value!135443 List!26933)) (True!8861) (RightBrace!4430) (RightBracket!4430) (Colon!4430) (Null!4430) (Comma!4430) (LeftBracket!4430) (False!8861) (LeftBrace!4430) (ImaginaryLiteralValue!4430 (text!31456 List!26933)) (StringLiteralValue!13290 (value!135444 List!26933)) (EOFValue!4430 (value!135445 List!26933)) (IdentValue!4430 (value!135446 List!26933)) (DelimiterValue!8861 (value!135447 List!26933)) (DedentValue!4430 (value!135448 List!26933)) (NewLineValue!4430 (value!135449 List!26933)) (IntegerValue!13290 (value!135450 (_ BitVec 32)) (text!31457 List!26933)) (IntegerValue!13291 (value!135451 Int) (text!31458 List!26933)) (Times!4430) (Or!4430) (Equal!4430) (Minus!4430) (Broken!22154 (value!135452 List!26933)) (And!4430) (Div!4430) (LessEqual!4430) (Mod!4430) (Concat!11046) (Not!4430) (Plus!4430) (SpaceValue!4430 (value!135453 List!26933)) (IntegerValue!13292 (value!135454 Int) (text!31459 List!26933)) (StringLiteralValue!13291 (text!31460 List!26933)) (FloatLiteralValue!8861 (text!31461 List!26933)) (BytesLiteralValue!4430 (value!135455 List!26933)) (CommentValue!8861 (value!135456 List!26933)) (StringLiteralValue!13292 (value!135457 List!26933)) (ErrorTokenValue!4430 (msg!4491 List!26933)) )
))
(declare-datatypes ((C!13378 0))(
  ( (C!13379 (val!7737 Int)) )
))
(declare-datatypes ((List!26934 0))(
  ( (Nil!26840) (Cons!26840 (h!32241 C!13378) (t!201552 List!26934)) )
))
(declare-datatypes ((IArray!17373 0))(
  ( (IArray!17374 (innerList!8744 List!26934)) )
))
(declare-datatypes ((Conc!8684 0))(
  ( (Node!8684 (left!20375 Conc!8684) (right!20705 Conc!8684) (csize!17598 Int) (cheight!8895 Int)) (Leaf!12804 (xs!11626 IArray!17373) (csize!17599 Int)) (Empty!8684) )
))
(declare-datatypes ((BalanceConc!17096 0))(
  ( (BalanceConc!17097 (c!359071 Conc!8684)) )
))
(declare-datatypes ((String!29256 0))(
  ( (String!29257 (value!135458 String)) )
))
(declare-datatypes ((Regex!6616 0))(
  ( (ElementMatch!6616 (c!359072 C!13378)) (Concat!11047 (regOne!13744 Regex!6616) (regTwo!13744 Regex!6616)) (EmptyExpr!6616) (Star!6616 (reg!6945 Regex!6616)) (EmptyLang!6616) (Union!6616 (regOne!13745 Regex!6616) (regTwo!13745 Regex!6616)) )
))
(declare-datatypes ((TokenValueInjection!8400 0))(
  ( (TokenValueInjection!8401 (toValue!6014 Int) (toChars!5873 Int)) )
))
(declare-datatypes ((Rule!8336 0))(
  ( (Rule!8337 (regex!4268 Regex!6616) (tag!4758 String!29256) (isSeparator!4268 Bool) (transformation!4268 TokenValueInjection!8400)) )
))
(declare-datatypes ((List!26935 0))(
  ( (Nil!26841) (Cons!26841 (h!32242 Rule!8336) (t!201553 List!26935)) )
))
(declare-fun rules!1750 () List!26935)

(declare-fun otherR!12 () Rule!8336)

(declare-fun contains!4622 (List!26935 Rule!8336) Bool)

(assert (=> b!2260087 (= res!966153 (contains!4622 rules!1750 otherR!12))))

(declare-fun b!2260088 () Bool)

(declare-fun e!1447102 () Bool)

(declare-fun r!2363 () Rule!8336)

(declare-fun e!1447083 () Bool)

(declare-fun tp!714738 () Bool)

(declare-fun inv!36375 (String!29256) Bool)

(declare-fun inv!36378 (TokenValueInjection!8400) Bool)

(assert (=> b!2260088 (= e!1447083 (and tp!714738 (inv!36375 (tag!4758 r!2363)) (inv!36378 (transformation!4268 r!2363)) e!1447102))))

(declare-fun b!2260089 () Bool)

(declare-fun e!1447106 () Bool)

(declare-fun e!1447095 () Bool)

(assert (=> b!2260089 (= e!1447106 e!1447095)))

(declare-fun res!966143 () Bool)

(assert (=> b!2260089 (=> res!966143 e!1447095)))

(declare-fun lt!839804 () Int)

(declare-fun lt!839800 () Int)

(assert (=> b!2260089 (= res!966143 (> lt!839804 lt!839800))))

(declare-fun getIndex!289 (List!26935 Rule!8336) Int)

(assert (=> b!2260089 (= lt!839800 (getIndex!289 rules!1750 otherR!12))))

(assert (=> b!2260089 (= lt!839804 (getIndex!289 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3865 0))(
  ( (LexerInterfaceExt!3862 (__x!17921 Int)) (Lexer!3863) )
))
(declare-fun thiss!16613 () LexerInterface!3865)

(declare-fun ruleValid!1360 (LexerInterface!3865 Rule!8336) Bool)

(assert (=> b!2260089 (ruleValid!1360 thiss!16613 otherR!12)))

(declare-fun lt!839806 () Unit!39770)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!767 (LexerInterface!3865 Rule!8336 List!26935) Unit!39770)

(assert (=> b!2260089 (= lt!839806 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!767 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2260090 () Bool)

(declare-fun e!1447091 () Bool)

(declare-fun input!1722 () List!26934)

(declare-datatypes ((Token!8014 0))(
  ( (Token!8015 (value!135459 TokenValue!4430) (rule!6578 Rule!8336) (size!21029 Int) (originalCharacters!5038 List!26934)) )
))
(declare-datatypes ((tuple2!26424 0))(
  ( (tuple2!26425 (_1!15722 Token!8014) (_2!15722 List!26934)) )
))
(declare-datatypes ((Option!5242 0))(
  ( (None!5241) (Some!5241 (v!30273 tuple2!26424)) )
))
(declare-fun isDefined!4191 (Option!5242) Bool)

(declare-fun maxPrefix!2139 (LexerInterface!3865 List!26935 List!26934) Option!5242)

(assert (=> b!2260090 (= e!1447091 (isDefined!4191 (maxPrefix!2139 thiss!16613 rules!1750 input!1722)))))

(declare-fun e!1447089 () Bool)

(assert (=> b!2260091 (= e!1447089 (and tp!714749 tp!714737))))

(declare-fun b!2260092 () Bool)

(declare-fun e!1447103 () Bool)

(assert (=> b!2260092 (= e!1447103 (not e!1447106))))

(declare-fun res!966149 () Bool)

(assert (=> b!2260092 (=> res!966149 e!1447106)))

(declare-fun e!1447085 () Bool)

(assert (=> b!2260092 (= res!966149 e!1447085)))

(declare-fun res!966155 () Bool)

(assert (=> b!2260092 (=> (not res!966155) (not e!1447085))))

(declare-fun lt!839802 () Bool)

(assert (=> b!2260092 (= res!966155 (not lt!839802))))

(assert (=> b!2260092 (ruleValid!1360 thiss!16613 r!2363)))

(declare-fun lt!839805 () Unit!39770)

(assert (=> b!2260092 (= lt!839805 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!767 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2260093 () Bool)

(declare-fun e!1447104 () Bool)

(declare-fun tp_is_empty!10453 () Bool)

(declare-fun tp!714735 () Bool)

(assert (=> b!2260093 (= e!1447104 (and tp_is_empty!10453 tp!714735))))

(declare-fun b!2260094 () Bool)

(declare-fun e!1447097 () Bool)

(declare-fun tp!714740 () Bool)

(assert (=> b!2260094 (= e!1447097 (and tp_is_empty!10453 tp!714740))))

(declare-fun b!2260095 () Bool)

(declare-fun res!966152 () Bool)

(assert (=> b!2260095 (=> (not res!966152) (not e!1447093))))

(assert (=> b!2260095 (= res!966152 (contains!4622 rules!1750 r!2363))))

(declare-fun tp!714741 () Bool)

(declare-fun e!1447100 () Bool)

(declare-fun e!1447096 () Bool)

(declare-fun b!2260096 () Bool)

(assert (=> b!2260096 (= e!1447100 (and tp!714741 (inv!36375 (tag!4758 (h!32242 rules!1750))) (inv!36378 (transformation!4268 (h!32242 rules!1750))) e!1447096))))

(declare-fun b!2260097 () Bool)

(declare-fun res!966140 () Bool)

(assert (=> b!2260097 (=> (not res!966140) (not e!1447103))))

(assert (=> b!2260097 (= res!966140 (not (= r!2363 otherR!12)))))

(declare-fun b!2260098 () Bool)

(declare-fun e!1447098 () Bool)

(declare-datatypes ((List!26936 0))(
  ( (Nil!26842) (Cons!26842 (h!32243 Token!8014) (t!201554 List!26936)) )
))
(declare-fun tokens!456 () List!26936)

(declare-fun otherP!12 () List!26934)

(declare-fun size!21030 (BalanceConc!17096) Int)

(declare-fun charsOf!2656 (Token!8014) BalanceConc!17096)

(declare-fun head!4847 (List!26936) Token!8014)

(declare-fun size!21031 (List!26934) Int)

(assert (=> b!2260098 (= e!1447098 (<= (size!21030 (charsOf!2656 (head!4847 tokens!456))) (size!21031 otherP!12)))))

(declare-fun b!2260099 () Bool)

(declare-fun e!1447105 () Bool)

(assert (=> b!2260099 (= e!1447093 e!1447105)))

(declare-fun res!966144 () Bool)

(assert (=> b!2260099 (=> (not res!966144) (not e!1447105))))

(declare-datatypes ((IArray!17375 0))(
  ( (IArray!17376 (innerList!8745 List!26936)) )
))
(declare-datatypes ((Conc!8685 0))(
  ( (Node!8685 (left!20376 Conc!8685) (right!20706 Conc!8685) (csize!17600 Int) (cheight!8896 Int)) (Leaf!12805 (xs!11627 IArray!17375) (csize!17601 Int)) (Empty!8685) )
))
(declare-datatypes ((BalanceConc!17098 0))(
  ( (BalanceConc!17099 (c!359073 Conc!8685)) )
))
(declare-datatypes ((tuple2!26426 0))(
  ( (tuple2!26427 (_1!15723 BalanceConc!17098) (_2!15723 BalanceConc!17096)) )
))
(declare-fun lt!839803 () tuple2!26426)

(declare-fun suffix!886 () List!26934)

(declare-datatypes ((tuple2!26428 0))(
  ( (tuple2!26429 (_1!15724 List!26936) (_2!15724 List!26934)) )
))
(declare-fun list!10347 (BalanceConc!17098) List!26936)

(declare-fun list!10348 (BalanceConc!17096) List!26934)

(assert (=> b!2260099 (= res!966144 (= (tuple2!26429 (list!10347 (_1!15723 lt!839803)) (list!10348 (_2!15723 lt!839803))) (tuple2!26429 tokens!456 suffix!886)))))

(declare-fun lex!1704 (LexerInterface!3865 List!26935 BalanceConc!17096) tuple2!26426)

(declare-fun seqFromList!2972 (List!26934) BalanceConc!17096)

(assert (=> b!2260099 (= lt!839803 (lex!1704 thiss!16613 rules!1750 (seqFromList!2972 input!1722)))))

(declare-fun b!2260100 () Bool)

(declare-fun res!966142 () Bool)

(assert (=> b!2260100 (=> (not res!966142) (not e!1447093))))

(declare-fun rulesInvariant!3367 (LexerInterface!3865 List!26935) Bool)

(assert (=> b!2260100 (= res!966142 (rulesInvariant!3367 thiss!16613 rules!1750))))

(declare-fun b!2260101 () Bool)

(declare-fun Unit!39774 () Unit!39770)

(assert (=> b!2260101 (= e!1447094 Unit!39774)))

(declare-fun lt!839799 () Unit!39770)

(declare-fun lemmaSameIndexThenSameElement!135 (List!26935 Rule!8336 Rule!8336) Unit!39770)

(assert (=> b!2260101 (= lt!839799 (lemmaSameIndexThenSameElement!135 rules!1750 r!2363 otherR!12))))

(assert (=> b!2260101 false))

(declare-fun tp!714734 () Bool)

(declare-fun b!2260102 () Bool)

(declare-fun e!1447090 () Bool)

(assert (=> b!2260102 (= e!1447090 (and tp!714734 (inv!36375 (tag!4758 (rule!6578 (h!32243 tokens!456)))) (inv!36378 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) e!1447086))))

(declare-fun b!2260103 () Bool)

(declare-fun e!1447099 () Bool)

(assert (=> b!2260103 (= e!1447099 (= (rule!6578 (head!4847 tokens!456)) r!2363))))

(declare-fun b!2260104 () Bool)

(declare-fun res!966146 () Bool)

(assert (=> b!2260104 (=> (not res!966146) (not e!1447103))))

(assert (=> b!2260104 (= res!966146 e!1447099)))

(declare-fun res!966141 () Bool)

(assert (=> b!2260104 (=> res!966141 e!1447099)))

(assert (=> b!2260104 (= res!966141 lt!839802)))

(declare-fun b!2260105 () Bool)

(declare-fun res!966150 () Bool)

(assert (=> b!2260105 (=> (not res!966150) (not e!1447093))))

(declare-fun isEmpty!15167 (List!26935) Bool)

(assert (=> b!2260105 (= res!966150 (not (isEmpty!15167 rules!1750)))))

(declare-fun b!2260106 () Bool)

(declare-fun matchR!2877 (Regex!6616 List!26934) Bool)

(assert (=> b!2260106 (= e!1447085 (not (matchR!2877 (regex!4268 r!2363) (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2260107 () Bool)

(assert (=> b!2260107 (= e!1447095 e!1447091)))

(declare-fun res!966147 () Bool)

(assert (=> b!2260107 (=> res!966147 e!1447091)))

(assert (=> b!2260107 (= res!966147 (is-Nil!26842 tokens!456))))

(declare-fun lt!839801 () Unit!39770)

(assert (=> b!2260107 (= lt!839801 e!1447094)))

(declare-fun c!359070 () Bool)

(assert (=> b!2260107 (= c!359070 (= lt!839804 lt!839800))))

(declare-fun b!2260108 () Bool)

(declare-fun e!1447110 () Bool)

(declare-fun tp!714739 () Bool)

(assert (=> b!2260108 (= e!1447110 (and e!1447100 tp!714739))))

(assert (=> b!2260109 (= e!1447102 (and tp!714745 tp!714736))))

(declare-fun tp!714744 () Bool)

(declare-fun b!2260110 () Bool)

(declare-fun e!1447101 () Bool)

(assert (=> b!2260110 (= e!1447101 (and tp!714744 (inv!36375 (tag!4758 otherR!12)) (inv!36378 (transformation!4268 otherR!12)) e!1447089))))

(declare-fun b!2260111 () Bool)

(assert (=> b!2260111 (= e!1447105 e!1447103)))

(declare-fun res!966145 () Bool)

(assert (=> b!2260111 (=> (not res!966145) (not e!1447103))))

(assert (=> b!2260111 (= res!966145 e!1447098)))

(declare-fun res!966151 () Bool)

(assert (=> b!2260111 (=> res!966151 e!1447098)))

(assert (=> b!2260111 (= res!966151 lt!839802)))

(declare-fun isEmpty!15168 (List!26936) Bool)

(assert (=> b!2260111 (= lt!839802 (isEmpty!15168 tokens!456))))

(declare-fun b!2260112 () Bool)

(declare-fun e!1447109 () Bool)

(declare-fun tp!714742 () Bool)

(declare-fun e!1447084 () Bool)

(declare-fun inv!36379 (Token!8014) Bool)

(assert (=> b!2260112 (= e!1447084 (and (inv!36379 (h!32243 tokens!456)) e!1447109 tp!714742))))

(declare-fun b!2260113 () Bool)

(declare-fun res!966154 () Bool)

(assert (=> b!2260113 (=> (not res!966154) (not e!1447103))))

(declare-fun isPrefix!2258 (List!26934 List!26934) Bool)

(assert (=> b!2260113 (= res!966154 (isPrefix!2258 otherP!12 input!1722))))

(declare-fun b!2260114 () Bool)

(declare-fun tp!714750 () Bool)

(declare-fun inv!21 (TokenValue!4430) Bool)

(assert (=> b!2260114 (= e!1447109 (and (inv!21 (value!135459 (h!32243 tokens!456))) e!1447090 tp!714750))))

(declare-fun b!2260115 () Bool)

(declare-fun e!1447087 () Bool)

(declare-fun tp!714747 () Bool)

(assert (=> b!2260115 (= e!1447087 (and tp_is_empty!10453 tp!714747))))

(assert (=> b!2260116 (= e!1447096 (and tp!714746 tp!714743))))

(declare-fun res!966148 () Bool)

(assert (=> start!220634 (=> (not res!966148) (not e!1447093))))

(assert (=> start!220634 (= res!966148 (is-Lexer!3863 thiss!16613))))

(assert (=> start!220634 e!1447093))

(assert (=> start!220634 true))

(assert (=> start!220634 e!1447087))

(assert (=> start!220634 e!1447101))

(assert (=> start!220634 e!1447097))

(assert (=> start!220634 e!1447104))

(assert (=> start!220634 e!1447110))

(assert (=> start!220634 e!1447083))

(assert (=> start!220634 e!1447084))

(assert (= (and start!220634 res!966148) b!2260105))

(assert (= (and b!2260105 res!966150) b!2260100))

(assert (= (and b!2260100 res!966142) b!2260095))

(assert (= (and b!2260095 res!966152) b!2260087))

(assert (= (and b!2260087 res!966153) b!2260099))

(assert (= (and b!2260099 res!966144) b!2260111))

(assert (= (and b!2260111 (not res!966151)) b!2260098))

(assert (= (and b!2260111 res!966145) b!2260104))

(assert (= (and b!2260104 (not res!966141)) b!2260103))

(assert (= (and b!2260104 res!966146) b!2260113))

(assert (= (and b!2260113 res!966154) b!2260097))

(assert (= (and b!2260097 res!966140) b!2260092))

(assert (= (and b!2260092 res!966155) b!2260106))

(assert (= (and b!2260092 (not res!966149)) b!2260089))

(assert (= (and b!2260089 (not res!966143)) b!2260107))

(assert (= (and b!2260107 c!359070) b!2260101))

(assert (= (and b!2260107 (not c!359070)) b!2260085))

(assert (= (and b!2260107 (not res!966147)) b!2260090))

(assert (= (and start!220634 (is-Cons!26840 input!1722)) b!2260115))

(assert (= b!2260110 b!2260091))

(assert (= start!220634 b!2260110))

(assert (= (and start!220634 (is-Cons!26840 suffix!886)) b!2260094))

(assert (= (and start!220634 (is-Cons!26840 otherP!12)) b!2260093))

(assert (= b!2260096 b!2260116))

(assert (= b!2260108 b!2260096))

(assert (= (and start!220634 (is-Cons!26841 rules!1750)) b!2260108))

(assert (= b!2260088 b!2260109))

(assert (= start!220634 b!2260088))

(assert (= b!2260102 b!2260086))

(assert (= b!2260114 b!2260102))

(assert (= b!2260112 b!2260114))

(assert (= (and start!220634 (is-Cons!26842 tokens!456)) b!2260112))

(declare-fun m!2689715 () Bool)

(assert (=> b!2260106 m!2689715))

(assert (=> b!2260106 m!2689715))

(declare-fun m!2689717 () Bool)

(assert (=> b!2260106 m!2689717))

(assert (=> b!2260106 m!2689717))

(declare-fun m!2689719 () Bool)

(assert (=> b!2260106 m!2689719))

(assert (=> b!2260106 m!2689719))

(declare-fun m!2689721 () Bool)

(assert (=> b!2260106 m!2689721))

(declare-fun m!2689723 () Bool)

(assert (=> b!2260100 m!2689723))

(declare-fun m!2689725 () Bool)

(assert (=> b!2260095 m!2689725))

(declare-fun m!2689727 () Bool)

(assert (=> b!2260114 m!2689727))

(assert (=> b!2260103 m!2689715))

(declare-fun m!2689729 () Bool)

(assert (=> b!2260111 m!2689729))

(declare-fun m!2689731 () Bool)

(assert (=> b!2260099 m!2689731))

(declare-fun m!2689733 () Bool)

(assert (=> b!2260099 m!2689733))

(declare-fun m!2689735 () Bool)

(assert (=> b!2260099 m!2689735))

(assert (=> b!2260099 m!2689735))

(declare-fun m!2689737 () Bool)

(assert (=> b!2260099 m!2689737))

(declare-fun m!2689739 () Bool)

(assert (=> b!2260090 m!2689739))

(assert (=> b!2260090 m!2689739))

(declare-fun m!2689741 () Bool)

(assert (=> b!2260090 m!2689741))

(declare-fun m!2689743 () Bool)

(assert (=> b!2260102 m!2689743))

(declare-fun m!2689745 () Bool)

(assert (=> b!2260102 m!2689745))

(declare-fun m!2689747 () Bool)

(assert (=> b!2260113 m!2689747))

(declare-fun m!2689749 () Bool)

(assert (=> b!2260087 m!2689749))

(assert (=> b!2260098 m!2689715))

(assert (=> b!2260098 m!2689715))

(assert (=> b!2260098 m!2689717))

(assert (=> b!2260098 m!2689717))

(declare-fun m!2689751 () Bool)

(assert (=> b!2260098 m!2689751))

(declare-fun m!2689753 () Bool)

(assert (=> b!2260098 m!2689753))

(declare-fun m!2689755 () Bool)

(assert (=> b!2260105 m!2689755))

(declare-fun m!2689757 () Bool)

(assert (=> b!2260112 m!2689757))

(declare-fun m!2689759 () Bool)

(assert (=> b!2260089 m!2689759))

(declare-fun m!2689761 () Bool)

(assert (=> b!2260089 m!2689761))

(declare-fun m!2689763 () Bool)

(assert (=> b!2260089 m!2689763))

(declare-fun m!2689765 () Bool)

(assert (=> b!2260089 m!2689765))

(declare-fun m!2689767 () Bool)

(assert (=> b!2260101 m!2689767))

(declare-fun m!2689769 () Bool)

(assert (=> b!2260096 m!2689769))

(declare-fun m!2689771 () Bool)

(assert (=> b!2260096 m!2689771))

(declare-fun m!2689773 () Bool)

(assert (=> b!2260092 m!2689773))

(declare-fun m!2689775 () Bool)

(assert (=> b!2260092 m!2689775))

(declare-fun m!2689777 () Bool)

(assert (=> b!2260110 m!2689777))

(declare-fun m!2689779 () Bool)

(assert (=> b!2260110 m!2689779))

(declare-fun m!2689781 () Bool)

(assert (=> b!2260088 m!2689781))

(declare-fun m!2689783 () Bool)

(assert (=> b!2260088 m!2689783))

(push 1)

(assert b_and!177539)

(assert (not b!2260102))

(assert (not b_next!67427))

(assert (not b!2260101))

(assert (not b!2260093))

(assert (not b!2260111))

(assert (not b!2260087))

(assert b_and!177531)

(assert (not b!2260105))

(assert (not b!2260099))

(assert (not b!2260089))

(assert (not b!2260108))

(assert (not b!2260106))

(assert (not b!2260100))

(assert (not b!2260112))

(assert (not b!2260114))

(assert (not b_next!67431))

(assert (not b_next!67435))

(assert tp_is_empty!10453)

(assert b_and!177541)

(assert (not b!2260095))

(assert (not b_next!67429))

(assert (not b!2260113))

(assert (not b_next!67433))

(assert (not b!2260088))

(assert (not b!2260115))

(assert (not b!2260110))

(assert (not b!2260092))

(assert b_and!177533)

(assert b_and!177529)

(assert b_and!177535)

(assert (not b!2260098))

(assert (not b!2260094))

(assert (not b!2260103))

(assert (not b_next!67421))

(assert b_and!177543)

(assert (not b_next!67423))

(assert (not b!2260096))

(assert (not b_next!67425))

(assert b_and!177537)

(assert (not b!2260090))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!67431))

(assert (not b_next!67435))

(assert b_and!177539)

(assert b_and!177541)

(assert (not b_next!67427))

(assert (not b_next!67429))

(assert (not b_next!67433))

(assert b_and!177533)

(assert (not b_next!67425))

(assert b_and!177531)

(assert b_and!177537)

(assert b_and!177529)

(assert b_and!177535)

(assert (not b_next!67421))

(assert b_and!177543)

(assert (not b_next!67423))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!669560 () Bool)

(declare-fun res!966219 () Bool)

(declare-fun e!1447200 () Bool)

(assert (=> d!669560 (=> (not res!966219) (not e!1447200))))

(declare-fun isEmpty!15171 (List!26934) Bool)

(assert (=> d!669560 (= res!966219 (not (isEmpty!15171 (originalCharacters!5038 (h!32243 tokens!456)))))))

(assert (=> d!669560 (= (inv!36379 (h!32243 tokens!456)) e!1447200)))

(declare-fun b!2260217 () Bool)

(declare-fun res!966220 () Bool)

(assert (=> b!2260217 (=> (not res!966220) (not e!1447200))))

(declare-fun dynLambda!11640 (Int TokenValue!4430) BalanceConc!17096)

(assert (=> b!2260217 (= res!966220 (= (originalCharacters!5038 (h!32243 tokens!456)) (list!10348 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(declare-fun b!2260218 () Bool)

(assert (=> b!2260218 (= e!1447200 (= (size!21029 (h!32243 tokens!456)) (size!21031 (originalCharacters!5038 (h!32243 tokens!456)))))))

(assert (= (and d!669560 res!966219) b!2260217))

(assert (= (and b!2260217 res!966220) b!2260218))

(declare-fun b_lambda!72125 () Bool)

(assert (=> (not b_lambda!72125) (not b!2260217)))

(declare-fun t!201560 () Bool)

(declare-fun tb!133935 () Bool)

(assert (=> (and b!2260086 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201560) tb!133935))

(declare-fun b!2260223 () Bool)

(declare-fun e!1447203 () Bool)

(declare-fun tp!714808 () Bool)

(declare-fun inv!36382 (Conc!8684) Bool)

(assert (=> b!2260223 (= e!1447203 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))) tp!714808))))

(declare-fun result!163294 () Bool)

(declare-fun inv!36383 (BalanceConc!17096) Bool)

(assert (=> tb!133935 (= result!163294 (and (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))) e!1447203))))

(assert (= tb!133935 b!2260223))

(declare-fun m!2689855 () Bool)

(assert (=> b!2260223 m!2689855))

(declare-fun m!2689857 () Bool)

(assert (=> tb!133935 m!2689857))

(assert (=> b!2260217 t!201560))

(declare-fun b_and!177561 () Bool)

(assert (= b_and!177531 (and (=> t!201560 result!163294) b_and!177561)))

(declare-fun tb!133937 () Bool)

(declare-fun t!201562 () Bool)

(assert (=> (and b!2260109 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201562) tb!133937))

(declare-fun result!163298 () Bool)

(assert (= result!163298 result!163294))

(assert (=> b!2260217 t!201562))

(declare-fun b_and!177563 () Bool)

(assert (= b_and!177535 (and (=> t!201562 result!163298) b_and!177563)))

(declare-fun tb!133939 () Bool)

(declare-fun t!201564 () Bool)

(assert (=> (and b!2260116 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201564) tb!133939))

(declare-fun result!163300 () Bool)

(assert (= result!163300 result!163294))

(assert (=> b!2260217 t!201564))

(declare-fun b_and!177565 () Bool)

(assert (= b_and!177539 (and (=> t!201564 result!163300) b_and!177565)))

(declare-fun tb!133941 () Bool)

(declare-fun t!201566 () Bool)

(assert (=> (and b!2260091 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201566) tb!133941))

(declare-fun result!163302 () Bool)

(assert (= result!163302 result!163294))

(assert (=> b!2260217 t!201566))

(declare-fun b_and!177567 () Bool)

(assert (= b_and!177543 (and (=> t!201566 result!163302) b_and!177567)))

(declare-fun m!2689859 () Bool)

(assert (=> d!669560 m!2689859))

(declare-fun m!2689861 () Bool)

(assert (=> b!2260217 m!2689861))

(assert (=> b!2260217 m!2689861))

(declare-fun m!2689863 () Bool)

(assert (=> b!2260217 m!2689863))

(declare-fun m!2689865 () Bool)

(assert (=> b!2260218 m!2689865))

(assert (=> b!2260112 d!669560))

(declare-fun b!2260234 () Bool)

(declare-fun e!1447211 () Bool)

(declare-fun tail!3260 (List!26934) List!26934)

(assert (=> b!2260234 (= e!1447211 (isPrefix!2258 (tail!3260 otherP!12) (tail!3260 input!1722)))))

(declare-fun b!2260235 () Bool)

(declare-fun e!1447212 () Bool)

(assert (=> b!2260235 (= e!1447212 (>= (size!21031 input!1722) (size!21031 otherP!12)))))

(declare-fun d!669562 () Bool)

(assert (=> d!669562 e!1447212))

(declare-fun res!966232 () Bool)

(assert (=> d!669562 (=> res!966232 e!1447212)))

(declare-fun lt!839833 () Bool)

(assert (=> d!669562 (= res!966232 (not lt!839833))))

(declare-fun e!1447210 () Bool)

(assert (=> d!669562 (= lt!839833 e!1447210)))

(declare-fun res!966230 () Bool)

(assert (=> d!669562 (=> res!966230 e!1447210)))

(assert (=> d!669562 (= res!966230 (is-Nil!26840 otherP!12))))

(assert (=> d!669562 (= (isPrefix!2258 otherP!12 input!1722) lt!839833)))

(declare-fun b!2260233 () Bool)

(declare-fun res!966231 () Bool)

(assert (=> b!2260233 (=> (not res!966231) (not e!1447211))))

(declare-fun head!4849 (List!26934) C!13378)

(assert (=> b!2260233 (= res!966231 (= (head!4849 otherP!12) (head!4849 input!1722)))))

(declare-fun b!2260232 () Bool)

(assert (=> b!2260232 (= e!1447210 e!1447211)))

(declare-fun res!966229 () Bool)

(assert (=> b!2260232 (=> (not res!966229) (not e!1447211))))

(assert (=> b!2260232 (= res!966229 (not (is-Nil!26840 input!1722)))))

(assert (= (and d!669562 (not res!966230)) b!2260232))

(assert (= (and b!2260232 res!966229) b!2260233))

(assert (= (and b!2260233 res!966231) b!2260234))

(assert (= (and d!669562 (not res!966232)) b!2260235))

(declare-fun m!2689867 () Bool)

(assert (=> b!2260234 m!2689867))

(declare-fun m!2689869 () Bool)

(assert (=> b!2260234 m!2689869))

(assert (=> b!2260234 m!2689867))

(assert (=> b!2260234 m!2689869))

(declare-fun m!2689871 () Bool)

(assert (=> b!2260234 m!2689871))

(declare-fun m!2689873 () Bool)

(assert (=> b!2260235 m!2689873))

(assert (=> b!2260235 m!2689753))

(declare-fun m!2689875 () Bool)

(assert (=> b!2260233 m!2689875))

(declare-fun m!2689877 () Bool)

(assert (=> b!2260233 m!2689877))

(assert (=> b!2260113 d!669562))

(declare-fun d!669564 () Bool)

(assert (=> d!669564 (= (inv!36375 (tag!4758 (rule!6578 (h!32243 tokens!456)))) (= (mod (str.len (value!135458 (tag!4758 (rule!6578 (h!32243 tokens!456))))) 2) 0))))

(assert (=> b!2260102 d!669564))

(declare-fun d!669566 () Bool)

(declare-fun res!966235 () Bool)

(declare-fun e!1447215 () Bool)

(assert (=> d!669566 (=> (not res!966235) (not e!1447215))))

(declare-fun semiInverseModEq!1719 (Int Int) Bool)

(assert (=> d!669566 (= res!966235 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))))))

(assert (=> d!669566 (= (inv!36378 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) e!1447215)))

(declare-fun b!2260238 () Bool)

(declare-fun equivClasses!1638 (Int Int) Bool)

(assert (=> b!2260238 (= e!1447215 (equivClasses!1638 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))))))

(assert (= (and d!669566 res!966235) b!2260238))

(declare-fun m!2689879 () Bool)

(assert (=> d!669566 m!2689879))

(declare-fun m!2689881 () Bool)

(assert (=> b!2260238 m!2689881))

(assert (=> b!2260102 d!669566))

(declare-fun d!669568 () Bool)

(assert (=> d!669568 (= (isEmpty!15168 tokens!456) (is-Nil!26842 tokens!456))))

(assert (=> b!2260111 d!669568))

(declare-fun d!669570 () Bool)

(declare-fun res!966238 () Bool)

(declare-fun e!1447218 () Bool)

(assert (=> d!669570 (=> (not res!966238) (not e!1447218))))

(declare-fun rulesValid!1563 (LexerInterface!3865 List!26935) Bool)

(assert (=> d!669570 (= res!966238 (rulesValid!1563 thiss!16613 rules!1750))))

(assert (=> d!669570 (= (rulesInvariant!3367 thiss!16613 rules!1750) e!1447218)))

(declare-fun b!2260241 () Bool)

(declare-datatypes ((List!26941 0))(
  ( (Nil!26847) (Cons!26847 (h!32248 String!29256) (t!201599 List!26941)) )
))
(declare-fun noDuplicateTag!1561 (LexerInterface!3865 List!26935 List!26941) Bool)

(assert (=> b!2260241 (= e!1447218 (noDuplicateTag!1561 thiss!16613 rules!1750 Nil!26847))))

(assert (= (and d!669570 res!966238) b!2260241))

(declare-fun m!2689883 () Bool)

(assert (=> d!669570 m!2689883))

(declare-fun m!2689885 () Bool)

(assert (=> b!2260241 m!2689885))

(assert (=> b!2260100 d!669570))

(declare-fun d!669572 () Bool)

(assert (=> d!669572 (= r!2363 otherR!12)))

(declare-fun lt!839836 () Unit!39770)

(declare-fun choose!13219 (List!26935 Rule!8336 Rule!8336) Unit!39770)

(assert (=> d!669572 (= lt!839836 (choose!13219 rules!1750 r!2363 otherR!12))))

(assert (=> d!669572 (contains!4622 rules!1750 r!2363)))

(assert (=> d!669572 (= (lemmaSameIndexThenSameElement!135 rules!1750 r!2363 otherR!12) lt!839836)))

(declare-fun bs!455418 () Bool)

(assert (= bs!455418 d!669572))

(declare-fun m!2689887 () Bool)

(assert (=> bs!455418 m!2689887))

(assert (=> bs!455418 m!2689725))

(assert (=> b!2260101 d!669572))

(declare-fun d!669576 () Bool)

(declare-fun isEmpty!15172 (Option!5242) Bool)

(assert (=> d!669576 (= (isDefined!4191 (maxPrefix!2139 thiss!16613 rules!1750 input!1722)) (not (isEmpty!15172 (maxPrefix!2139 thiss!16613 rules!1750 input!1722))))))

(declare-fun bs!455419 () Bool)

(assert (= bs!455419 d!669576))

(assert (=> bs!455419 m!2689739))

(declare-fun m!2689889 () Bool)

(assert (=> bs!455419 m!2689889))

(assert (=> b!2260090 d!669576))

(declare-fun b!2260285 () Bool)

(declare-fun e!1447243 () Option!5242)

(declare-fun lt!839854 () Option!5242)

(declare-fun lt!839855 () Option!5242)

(assert (=> b!2260285 (= e!1447243 (ite (and (is-None!5241 lt!839854) (is-None!5241 lt!839855)) None!5241 (ite (is-None!5241 lt!839855) lt!839854 (ite (is-None!5241 lt!839854) lt!839855 (ite (>= (size!21029 (_1!15722 (v!30273 lt!839854))) (size!21029 (_1!15722 (v!30273 lt!839855)))) lt!839854 lt!839855)))))))

(declare-fun call!135807 () Option!5242)

(assert (=> b!2260285 (= lt!839854 call!135807)))

(assert (=> b!2260285 (= lt!839855 (maxPrefix!2139 thiss!16613 (t!201553 rules!1750) input!1722))))

(declare-fun b!2260286 () Bool)

(declare-fun res!966265 () Bool)

(declare-fun e!1447244 () Bool)

(assert (=> b!2260286 (=> (not res!966265) (not e!1447244))))

(declare-fun lt!839853 () Option!5242)

(declare-fun get!8096 (Option!5242) tuple2!26424)

(assert (=> b!2260286 (= res!966265 (< (size!21031 (_2!15722 (get!8096 lt!839853))) (size!21031 input!1722)))))

(declare-fun b!2260287 () Bool)

(declare-fun res!966266 () Bool)

(assert (=> b!2260287 (=> (not res!966266) (not e!1447244))))

(assert (=> b!2260287 (= res!966266 (= (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))) (originalCharacters!5038 (_1!15722 (get!8096 lt!839853)))))))

(declare-fun b!2260288 () Bool)

(assert (=> b!2260288 (= e!1447244 (contains!4622 rules!1750 (rule!6578 (_1!15722 (get!8096 lt!839853)))))))

(declare-fun b!2260289 () Bool)

(declare-fun e!1447242 () Bool)

(assert (=> b!2260289 (= e!1447242 e!1447244)))

(declare-fun res!966268 () Bool)

(assert (=> b!2260289 (=> (not res!966268) (not e!1447244))))

(assert (=> b!2260289 (= res!966268 (isDefined!4191 lt!839853))))

(declare-fun b!2260291 () Bool)

(assert (=> b!2260291 (= e!1447243 call!135807)))

(declare-fun b!2260292 () Bool)

(declare-fun res!966271 () Bool)

(assert (=> b!2260292 (=> (not res!966271) (not e!1447244))))

(declare-fun apply!6574 (TokenValueInjection!8400 BalanceConc!17096) TokenValue!4430)

(assert (=> b!2260292 (= res!966271 (= (value!135459 (_1!15722 (get!8096 lt!839853))) (apply!6574 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853)))))))))

(declare-fun bm!135802 () Bool)

(declare-fun maxPrefixOneRule!1337 (LexerInterface!3865 Rule!8336 List!26934) Option!5242)

(assert (=> bm!135802 (= call!135807 (maxPrefixOneRule!1337 thiss!16613 (h!32242 rules!1750) input!1722))))

(declare-fun b!2260293 () Bool)

(declare-fun res!966267 () Bool)

(assert (=> b!2260293 (=> (not res!966267) (not e!1447244))))

(assert (=> b!2260293 (= res!966267 (matchR!2877 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))) (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun b!2260290 () Bool)

(declare-fun res!966270 () Bool)

(assert (=> b!2260290 (=> (not res!966270) (not e!1447244))))

(declare-fun ++!6532 (List!26934 List!26934) List!26934)

(assert (=> b!2260290 (= res!966270 (= (++!6532 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))) (_2!15722 (get!8096 lt!839853))) input!1722))))

(declare-fun d!669578 () Bool)

(assert (=> d!669578 e!1447242))

(declare-fun res!966269 () Bool)

(assert (=> d!669578 (=> res!966269 e!1447242)))

(assert (=> d!669578 (= res!966269 (isEmpty!15172 lt!839853))))

(assert (=> d!669578 (= lt!839853 e!1447243)))

(declare-fun c!359087 () Bool)

(assert (=> d!669578 (= c!359087 (and (is-Cons!26841 rules!1750) (is-Nil!26841 (t!201553 rules!1750))))))

(declare-fun lt!839856 () Unit!39770)

(declare-fun lt!839852 () Unit!39770)

(assert (=> d!669578 (= lt!839856 lt!839852)))

(assert (=> d!669578 (isPrefix!2258 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1446 (List!26934 List!26934) Unit!39770)

(assert (=> d!669578 (= lt!839852 (lemmaIsPrefixRefl!1446 input!1722 input!1722))))

(declare-fun rulesValidInductive!1488 (LexerInterface!3865 List!26935) Bool)

(assert (=> d!669578 (rulesValidInductive!1488 thiss!16613 rules!1750)))

(assert (=> d!669578 (= (maxPrefix!2139 thiss!16613 rules!1750 input!1722) lt!839853)))

(assert (= (and d!669578 c!359087) b!2260291))

(assert (= (and d!669578 (not c!359087)) b!2260285))

(assert (= (or b!2260291 b!2260285) bm!135802))

(assert (= (and d!669578 (not res!966269)) b!2260289))

(assert (= (and b!2260289 res!966268) b!2260287))

(assert (= (and b!2260287 res!966266) b!2260286))

(assert (= (and b!2260286 res!966265) b!2260290))

(assert (= (and b!2260290 res!966270) b!2260292))

(assert (= (and b!2260292 res!966271) b!2260293))

(assert (= (and b!2260293 res!966267) b!2260288))

(declare-fun m!2689909 () Bool)

(assert (=> b!2260285 m!2689909))

(declare-fun m!2689911 () Bool)

(assert (=> b!2260286 m!2689911))

(declare-fun m!2689913 () Bool)

(assert (=> b!2260286 m!2689913))

(assert (=> b!2260286 m!2689873))

(assert (=> b!2260288 m!2689911))

(declare-fun m!2689915 () Bool)

(assert (=> b!2260288 m!2689915))

(declare-fun m!2689917 () Bool)

(assert (=> b!2260289 m!2689917))

(declare-fun m!2689919 () Bool)

(assert (=> bm!135802 m!2689919))

(declare-fun m!2689921 () Bool)

(assert (=> d!669578 m!2689921))

(declare-fun m!2689923 () Bool)

(assert (=> d!669578 m!2689923))

(declare-fun m!2689925 () Bool)

(assert (=> d!669578 m!2689925))

(declare-fun m!2689927 () Bool)

(assert (=> d!669578 m!2689927))

(assert (=> b!2260293 m!2689911))

(declare-fun m!2689929 () Bool)

(assert (=> b!2260293 m!2689929))

(assert (=> b!2260293 m!2689929))

(declare-fun m!2689931 () Bool)

(assert (=> b!2260293 m!2689931))

(assert (=> b!2260293 m!2689931))

(declare-fun m!2689935 () Bool)

(assert (=> b!2260293 m!2689935))

(assert (=> b!2260290 m!2689911))

(assert (=> b!2260290 m!2689929))

(assert (=> b!2260290 m!2689929))

(assert (=> b!2260290 m!2689931))

(assert (=> b!2260290 m!2689931))

(declare-fun m!2689937 () Bool)

(assert (=> b!2260290 m!2689937))

(assert (=> b!2260287 m!2689911))

(assert (=> b!2260287 m!2689929))

(assert (=> b!2260287 m!2689929))

(assert (=> b!2260287 m!2689931))

(assert (=> b!2260292 m!2689911))

(declare-fun m!2689939 () Bool)

(assert (=> b!2260292 m!2689939))

(assert (=> b!2260292 m!2689939))

(declare-fun m!2689941 () Bool)

(assert (=> b!2260292 m!2689941))

(assert (=> b!2260090 d!669578))

(declare-fun d!669586 () Bool)

(assert (=> d!669586 (= (isEmpty!15167 rules!1750) (is-Nil!26841 rules!1750))))

(assert (=> b!2260105 d!669586))

(declare-fun d!669590 () Bool)

(assert (=> d!669590 (= (head!4847 tokens!456) (h!32243 tokens!456))))

(assert (=> b!2260103 d!669590))

(declare-fun d!669592 () Bool)

(declare-fun res!966276 () Bool)

(declare-fun e!1447251 () Bool)

(assert (=> d!669592 (=> (not res!966276) (not e!1447251))))

(declare-fun validRegex!2475 (Regex!6616) Bool)

(assert (=> d!669592 (= res!966276 (validRegex!2475 (regex!4268 r!2363)))))

(assert (=> d!669592 (= (ruleValid!1360 thiss!16613 r!2363) e!1447251)))

(declare-fun b!2260306 () Bool)

(declare-fun res!966277 () Bool)

(assert (=> b!2260306 (=> (not res!966277) (not e!1447251))))

(declare-fun nullable!1817 (Regex!6616) Bool)

(assert (=> b!2260306 (= res!966277 (not (nullable!1817 (regex!4268 r!2363))))))

(declare-fun b!2260307 () Bool)

(assert (=> b!2260307 (= e!1447251 (not (= (tag!4758 r!2363) (String!29257 ""))))))

(assert (= (and d!669592 res!966276) b!2260306))

(assert (= (and b!2260306 res!966277) b!2260307))

(declare-fun m!2689945 () Bool)

(assert (=> d!669592 m!2689945))

(declare-fun m!2689947 () Bool)

(assert (=> b!2260306 m!2689947))

(assert (=> b!2260092 d!669592))

(declare-fun d!669594 () Bool)

(assert (=> d!669594 (ruleValid!1360 thiss!16613 r!2363)))

(declare-fun lt!839861 () Unit!39770)

(declare-fun choose!13220 (LexerInterface!3865 Rule!8336 List!26935) Unit!39770)

(assert (=> d!669594 (= lt!839861 (choose!13220 thiss!16613 r!2363 rules!1750))))

(assert (=> d!669594 (contains!4622 rules!1750 r!2363)))

(assert (=> d!669594 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!767 thiss!16613 r!2363 rules!1750) lt!839861)))

(declare-fun bs!455420 () Bool)

(assert (= bs!455420 d!669594))

(assert (=> bs!455420 m!2689773))

(declare-fun m!2689949 () Bool)

(assert (=> bs!455420 m!2689949))

(assert (=> bs!455420 m!2689725))

(assert (=> b!2260092 d!669594))

(declare-fun b!2260324 () Bool)

(declare-fun e!1447263 () Bool)

(declare-fun inv!15 (TokenValue!4430) Bool)

(assert (=> b!2260324 (= e!1447263 (inv!15 (value!135459 (h!32243 tokens!456))))))

(declare-fun b!2260325 () Bool)

(declare-fun e!1447262 () Bool)

(declare-fun e!1447261 () Bool)

(assert (=> b!2260325 (= e!1447262 e!1447261)))

(declare-fun c!359097 () Bool)

(assert (=> b!2260325 (= c!359097 (is-IntegerValue!13291 (value!135459 (h!32243 tokens!456))))))

(declare-fun b!2260326 () Bool)

(declare-fun inv!17 (TokenValue!4430) Bool)

(assert (=> b!2260326 (= e!1447261 (inv!17 (value!135459 (h!32243 tokens!456))))))

(declare-fun b!2260327 () Bool)

(declare-fun inv!16 (TokenValue!4430) Bool)

(assert (=> b!2260327 (= e!1447262 (inv!16 (value!135459 (h!32243 tokens!456))))))

(declare-fun d!669596 () Bool)

(declare-fun c!359096 () Bool)

(assert (=> d!669596 (= c!359096 (is-IntegerValue!13290 (value!135459 (h!32243 tokens!456))))))

(assert (=> d!669596 (= (inv!21 (value!135459 (h!32243 tokens!456))) e!1447262)))

(declare-fun b!2260328 () Bool)

(declare-fun res!966286 () Bool)

(assert (=> b!2260328 (=> res!966286 e!1447263)))

(assert (=> b!2260328 (= res!966286 (not (is-IntegerValue!13292 (value!135459 (h!32243 tokens!456)))))))

(assert (=> b!2260328 (= e!1447261 e!1447263)))

(assert (= (and d!669596 c!359096) b!2260327))

(assert (= (and d!669596 (not c!359096)) b!2260325))

(assert (= (and b!2260325 c!359097) b!2260326))

(assert (= (and b!2260325 (not c!359097)) b!2260328))

(assert (= (and b!2260328 (not res!966286)) b!2260324))

(declare-fun m!2689955 () Bool)

(assert (=> b!2260324 m!2689955))

(declare-fun m!2689957 () Bool)

(assert (=> b!2260326 m!2689957))

(declare-fun m!2689959 () Bool)

(assert (=> b!2260327 m!2689959))

(assert (=> b!2260114 d!669596))

(declare-fun d!669600 () Bool)

(assert (=> d!669600 (= (inv!36375 (tag!4758 (h!32242 rules!1750))) (= (mod (str.len (value!135458 (tag!4758 (h!32242 rules!1750)))) 2) 0))))

(assert (=> b!2260096 d!669600))

(declare-fun d!669602 () Bool)

(declare-fun res!966287 () Bool)

(declare-fun e!1447264 () Bool)

(assert (=> d!669602 (=> (not res!966287) (not e!1447264))))

(assert (=> d!669602 (= res!966287 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (h!32242 rules!1750)))))))

(assert (=> d!669602 (= (inv!36378 (transformation!4268 (h!32242 rules!1750))) e!1447264)))

(declare-fun b!2260329 () Bool)

(assert (=> b!2260329 (= e!1447264 (equivClasses!1638 (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (h!32242 rules!1750)))))))

(assert (= (and d!669602 res!966287) b!2260329))

(declare-fun m!2689961 () Bool)

(assert (=> d!669602 m!2689961))

(declare-fun m!2689963 () Bool)

(assert (=> b!2260329 m!2689963))

(assert (=> b!2260096 d!669602))

(declare-fun d!669604 () Bool)

(declare-fun lt!839867 () Bool)

(declare-fun content!3573 (List!26935) (Set Rule!8336))

(assert (=> d!669604 (= lt!839867 (set.member r!2363 (content!3573 rules!1750)))))

(declare-fun e!1447270 () Bool)

(assert (=> d!669604 (= lt!839867 e!1447270)))

(declare-fun res!966293 () Bool)

(assert (=> d!669604 (=> (not res!966293) (not e!1447270))))

(assert (=> d!669604 (= res!966293 (is-Cons!26841 rules!1750))))

(assert (=> d!669604 (= (contains!4622 rules!1750 r!2363) lt!839867)))

(declare-fun b!2260334 () Bool)

(declare-fun e!1447269 () Bool)

(assert (=> b!2260334 (= e!1447270 e!1447269)))

(declare-fun res!966292 () Bool)

(assert (=> b!2260334 (=> res!966292 e!1447269)))

(assert (=> b!2260334 (= res!966292 (= (h!32242 rules!1750) r!2363))))

(declare-fun b!2260335 () Bool)

(assert (=> b!2260335 (= e!1447269 (contains!4622 (t!201553 rules!1750) r!2363))))

(assert (= (and d!669604 res!966293) b!2260334))

(assert (= (and b!2260334 (not res!966292)) b!2260335))

(declare-fun m!2689965 () Bool)

(assert (=> d!669604 m!2689965))

(declare-fun m!2689967 () Bool)

(assert (=> d!669604 m!2689967))

(declare-fun m!2689969 () Bool)

(assert (=> b!2260335 m!2689969))

(assert (=> b!2260095 d!669604))

(declare-fun bm!135805 () Bool)

(declare-fun call!135810 () Bool)

(assert (=> bm!135805 (= call!135810 (isEmpty!15171 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(declare-fun b!2260367 () Bool)

(declare-fun e!1447289 () Bool)

(assert (=> b!2260367 (= e!1447289 (= (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (c!359072 (regex!4268 r!2363))))))

(declare-fun d!669606 () Bool)

(declare-fun e!1447293 () Bool)

(assert (=> d!669606 e!1447293))

(declare-fun c!359106 () Bool)

(assert (=> d!669606 (= c!359106 (is-EmptyExpr!6616 (regex!4268 r!2363)))))

(declare-fun lt!839870 () Bool)

(declare-fun e!1447291 () Bool)

(assert (=> d!669606 (= lt!839870 e!1447291)))

(declare-fun c!359104 () Bool)

(assert (=> d!669606 (= c!359104 (isEmpty!15171 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> d!669606 (validRegex!2475 (regex!4268 r!2363))))

(assert (=> d!669606 (= (matchR!2877 (regex!4268 r!2363) (list!10348 (charsOf!2656 (head!4847 tokens!456)))) lt!839870)))

(declare-fun b!2260368 () Bool)

(assert (=> b!2260368 (= e!1447293 (= lt!839870 call!135810))))

(declare-fun b!2260369 () Bool)

(declare-fun e!1447290 () Bool)

(assert (=> b!2260369 (= e!1447290 (not lt!839870))))

(declare-fun b!2260370 () Bool)

(declare-fun derivativeStep!1479 (Regex!6616 C!13378) Regex!6616)

(assert (=> b!2260370 (= e!1447291 (matchR!2877 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2260371 () Bool)

(declare-fun res!966315 () Bool)

(declare-fun e!1447294 () Bool)

(assert (=> b!2260371 (=> res!966315 e!1447294)))

(assert (=> b!2260371 (= res!966315 (not (is-ElementMatch!6616 (regex!4268 r!2363))))))

(assert (=> b!2260371 (= e!1447290 e!1447294)))

(declare-fun b!2260372 () Bool)

(assert (=> b!2260372 (= e!1447291 (nullable!1817 (regex!4268 r!2363)))))

(declare-fun b!2260373 () Bool)

(declare-fun res!966319 () Bool)

(assert (=> b!2260373 (=> res!966319 e!1447294)))

(assert (=> b!2260373 (= res!966319 e!1447289)))

(declare-fun res!966317 () Bool)

(assert (=> b!2260373 (=> (not res!966317) (not e!1447289))))

(assert (=> b!2260373 (= res!966317 lt!839870)))

(declare-fun b!2260374 () Bool)

(declare-fun e!1447292 () Bool)

(assert (=> b!2260374 (= e!1447294 e!1447292)))

(declare-fun res!966316 () Bool)

(assert (=> b!2260374 (=> (not res!966316) (not e!1447292))))

(assert (=> b!2260374 (= res!966316 (not lt!839870))))

(declare-fun b!2260375 () Bool)

(declare-fun res!966318 () Bool)

(assert (=> b!2260375 (=> (not res!966318) (not e!1447289))))

(assert (=> b!2260375 (= res!966318 (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2260376 () Bool)

(declare-fun e!1447288 () Bool)

(assert (=> b!2260376 (= e!1447292 e!1447288)))

(declare-fun res!966320 () Bool)

(assert (=> b!2260376 (=> res!966320 e!1447288)))

(assert (=> b!2260376 (= res!966320 call!135810)))

(declare-fun b!2260377 () Bool)

(assert (=> b!2260377 (= e!1447288 (not (= (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (c!359072 (regex!4268 r!2363)))))))

(declare-fun b!2260378 () Bool)

(assert (=> b!2260378 (= e!1447293 e!1447290)))

(declare-fun c!359105 () Bool)

(assert (=> b!2260378 (= c!359105 (is-EmptyLang!6616 (regex!4268 r!2363)))))

(declare-fun b!2260379 () Bool)

(declare-fun res!966314 () Bool)

(assert (=> b!2260379 (=> (not res!966314) (not e!1447289))))

(assert (=> b!2260379 (= res!966314 (not call!135810))))

(declare-fun b!2260380 () Bool)

(declare-fun res!966313 () Bool)

(assert (=> b!2260380 (=> res!966313 e!1447288)))

(assert (=> b!2260380 (= res!966313 (not (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(assert (= (and d!669606 c!359104) b!2260372))

(assert (= (and d!669606 (not c!359104)) b!2260370))

(assert (= (and d!669606 c!359106) b!2260368))

(assert (= (and d!669606 (not c!359106)) b!2260378))

(assert (= (and b!2260378 c!359105) b!2260369))

(assert (= (and b!2260378 (not c!359105)) b!2260371))

(assert (= (and b!2260371 (not res!966315)) b!2260373))

(assert (= (and b!2260373 res!966317) b!2260379))

(assert (= (and b!2260379 res!966314) b!2260375))

(assert (= (and b!2260375 res!966318) b!2260367))

(assert (= (and b!2260373 (not res!966319)) b!2260374))

(assert (= (and b!2260374 res!966316) b!2260376))

(assert (= (and b!2260376 (not res!966320)) b!2260380))

(assert (= (and b!2260380 (not res!966313)) b!2260377))

(assert (= (or b!2260368 b!2260376 b!2260379) bm!135805))

(assert (=> b!2260377 m!2689719))

(declare-fun m!2689977 () Bool)

(assert (=> b!2260377 m!2689977))

(assert (=> bm!135805 m!2689719))

(declare-fun m!2689979 () Bool)

(assert (=> bm!135805 m!2689979))

(assert (=> b!2260380 m!2689719))

(declare-fun m!2689981 () Bool)

(assert (=> b!2260380 m!2689981))

(assert (=> b!2260380 m!2689981))

(declare-fun m!2689983 () Bool)

(assert (=> b!2260380 m!2689983))

(assert (=> b!2260372 m!2689947))

(assert (=> d!669606 m!2689719))

(assert (=> d!669606 m!2689979))

(assert (=> d!669606 m!2689945))

(assert (=> b!2260375 m!2689719))

(assert (=> b!2260375 m!2689981))

(assert (=> b!2260375 m!2689981))

(assert (=> b!2260375 m!2689983))

(assert (=> b!2260367 m!2689719))

(assert (=> b!2260367 m!2689977))

(assert (=> b!2260370 m!2689719))

(assert (=> b!2260370 m!2689977))

(assert (=> b!2260370 m!2689977))

(declare-fun m!2689985 () Bool)

(assert (=> b!2260370 m!2689985))

(assert (=> b!2260370 m!2689719))

(assert (=> b!2260370 m!2689981))

(assert (=> b!2260370 m!2689985))

(assert (=> b!2260370 m!2689981))

(declare-fun m!2689987 () Bool)

(assert (=> b!2260370 m!2689987))

(assert (=> b!2260106 d!669606))

(declare-fun d!669614 () Bool)

(declare-fun list!10351 (Conc!8684) List!26934)

(assert (=> d!669614 (= (list!10348 (charsOf!2656 (head!4847 tokens!456))) (list!10351 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))

(declare-fun bs!455422 () Bool)

(assert (= bs!455422 d!669614))

(declare-fun m!2689989 () Bool)

(assert (=> bs!455422 m!2689989))

(assert (=> b!2260106 d!669614))

(declare-fun d!669616 () Bool)

(declare-fun lt!839875 () BalanceConc!17096)

(assert (=> d!669616 (= (list!10348 lt!839875) (originalCharacters!5038 (head!4847 tokens!456)))))

(assert (=> d!669616 (= lt!839875 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))))

(assert (=> d!669616 (= (charsOf!2656 (head!4847 tokens!456)) lt!839875)))

(declare-fun b_lambda!72129 () Bool)

(assert (=> (not b_lambda!72129) (not d!669616)))

(declare-fun t!201576 () Bool)

(declare-fun tb!133951 () Bool)

(assert (=> (and b!2260086 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201576) tb!133951))

(declare-fun b!2260389 () Bool)

(declare-fun e!1447301 () Bool)

(declare-fun tp!714812 () Bool)

(assert (=> b!2260389 (= e!1447301 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))) tp!714812))))

(declare-fun result!163314 () Bool)

(assert (=> tb!133951 (= result!163314 (and (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))) e!1447301))))

(assert (= tb!133951 b!2260389))

(declare-fun m!2689991 () Bool)

(assert (=> b!2260389 m!2689991))

(declare-fun m!2689993 () Bool)

(assert (=> tb!133951 m!2689993))

(assert (=> d!669616 t!201576))

(declare-fun b_and!177577 () Bool)

(assert (= b_and!177561 (and (=> t!201576 result!163314) b_and!177577)))

(declare-fun tb!133953 () Bool)

(declare-fun t!201578 () Bool)

(assert (=> (and b!2260109 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201578) tb!133953))

(declare-fun result!163316 () Bool)

(assert (= result!163316 result!163314))

(assert (=> d!669616 t!201578))

(declare-fun b_and!177579 () Bool)

(assert (= b_and!177563 (and (=> t!201578 result!163316) b_and!177579)))

(declare-fun t!201580 () Bool)

(declare-fun tb!133955 () Bool)

(assert (=> (and b!2260116 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201580) tb!133955))

(declare-fun result!163318 () Bool)

(assert (= result!163318 result!163314))

(assert (=> d!669616 t!201580))

(declare-fun b_and!177581 () Bool)

(assert (= b_and!177565 (and (=> t!201580 result!163318) b_and!177581)))

(declare-fun t!201582 () Bool)

(declare-fun tb!133957 () Bool)

(assert (=> (and b!2260091 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201582) tb!133957))

(declare-fun result!163320 () Bool)

(assert (= result!163320 result!163314))

(assert (=> d!669616 t!201582))

(declare-fun b_and!177583 () Bool)

(assert (= b_and!177567 (and (=> t!201582 result!163320) b_and!177583)))

(declare-fun m!2689995 () Bool)

(assert (=> d!669616 m!2689995))

(declare-fun m!2689997 () Bool)

(assert (=> d!669616 m!2689997))

(assert (=> b!2260106 d!669616))

(assert (=> b!2260106 d!669590))

(declare-fun d!669618 () Bool)

(declare-fun list!10352 (Conc!8685) List!26936)

(assert (=> d!669618 (= (list!10347 (_1!15723 lt!839803)) (list!10352 (c!359073 (_1!15723 lt!839803))))))

(declare-fun bs!455423 () Bool)

(assert (= bs!455423 d!669618))

(declare-fun m!2689999 () Bool)

(assert (=> bs!455423 m!2689999))

(assert (=> b!2260099 d!669618))

(declare-fun d!669620 () Bool)

(assert (=> d!669620 (= (list!10348 (_2!15723 lt!839803)) (list!10351 (c!359071 (_2!15723 lt!839803))))))

(declare-fun bs!455424 () Bool)

(assert (= bs!455424 d!669620))

(declare-fun m!2690001 () Bool)

(assert (=> bs!455424 m!2690001))

(assert (=> b!2260099 d!669620))

(declare-fun b!2260432 () Bool)

(declare-fun e!1447332 () Bool)

(declare-fun lt!839892 () tuple2!26426)

(assert (=> b!2260432 (= e!1447332 (= (_2!15723 lt!839892) (seqFromList!2972 input!1722)))))

(declare-fun b!2260433 () Bool)

(declare-fun e!1447330 () Bool)

(assert (=> b!2260433 (= e!1447332 e!1447330)))

(declare-fun res!966349 () Bool)

(assert (=> b!2260433 (= res!966349 (< (size!21030 (_2!15723 lt!839892)) (size!21030 (seqFromList!2972 input!1722))))))

(assert (=> b!2260433 (=> (not res!966349) (not e!1447330))))

(declare-fun b!2260434 () Bool)

(declare-fun e!1447331 () Bool)

(declare-fun lexList!1063 (LexerInterface!3865 List!26935 List!26934) tuple2!26428)

(assert (=> b!2260434 (= e!1447331 (= (list!10348 (_2!15723 lt!839892)) (_2!15724 (lexList!1063 thiss!16613 rules!1750 (list!10348 (seqFromList!2972 input!1722))))))))

(declare-fun d!669622 () Bool)

(assert (=> d!669622 e!1447331))

(declare-fun res!966350 () Bool)

(assert (=> d!669622 (=> (not res!966350) (not e!1447331))))

(assert (=> d!669622 (= res!966350 e!1447332)))

(declare-fun c!359118 () Bool)

(declare-fun size!21035 (BalanceConc!17098) Int)

(assert (=> d!669622 (= c!359118 (> (size!21035 (_1!15723 lt!839892)) 0))))

(declare-fun lexTailRecV2!738 (LexerInterface!3865 List!26935 BalanceConc!17096 BalanceConc!17096 BalanceConc!17096 BalanceConc!17098) tuple2!26426)

(assert (=> d!669622 (= lt!839892 (lexTailRecV2!738 thiss!16613 rules!1750 (seqFromList!2972 input!1722) (BalanceConc!17097 Empty!8684) (seqFromList!2972 input!1722) (BalanceConc!17099 Empty!8685)))))

(assert (=> d!669622 (= (lex!1704 thiss!16613 rules!1750 (seqFromList!2972 input!1722)) lt!839892)))

(declare-fun b!2260435 () Bool)

(declare-fun res!966348 () Bool)

(assert (=> b!2260435 (=> (not res!966348) (not e!1447331))))

(assert (=> b!2260435 (= res!966348 (= (list!10347 (_1!15723 lt!839892)) (_1!15724 (lexList!1063 thiss!16613 rules!1750 (list!10348 (seqFromList!2972 input!1722))))))))

(declare-fun b!2260436 () Bool)

(declare-fun isEmpty!15173 (BalanceConc!17098) Bool)

(assert (=> b!2260436 (= e!1447330 (not (isEmpty!15173 (_1!15723 lt!839892))))))

(assert (= (and d!669622 c!359118) b!2260433))

(assert (= (and d!669622 (not c!359118)) b!2260432))

(assert (= (and b!2260433 res!966349) b!2260436))

(assert (= (and d!669622 res!966350) b!2260435))

(assert (= (and b!2260435 res!966348) b!2260434))

(declare-fun m!2690051 () Bool)

(assert (=> b!2260433 m!2690051))

(assert (=> b!2260433 m!2689735))

(declare-fun m!2690053 () Bool)

(assert (=> b!2260433 m!2690053))

(declare-fun m!2690055 () Bool)

(assert (=> b!2260434 m!2690055))

(assert (=> b!2260434 m!2689735))

(declare-fun m!2690057 () Bool)

(assert (=> b!2260434 m!2690057))

(assert (=> b!2260434 m!2690057))

(declare-fun m!2690059 () Bool)

(assert (=> b!2260434 m!2690059))

(declare-fun m!2690061 () Bool)

(assert (=> b!2260436 m!2690061))

(declare-fun m!2690063 () Bool)

(assert (=> b!2260435 m!2690063))

(assert (=> b!2260435 m!2689735))

(assert (=> b!2260435 m!2690057))

(assert (=> b!2260435 m!2690057))

(assert (=> b!2260435 m!2690059))

(declare-fun m!2690065 () Bool)

(assert (=> d!669622 m!2690065))

(assert (=> d!669622 m!2689735))

(assert (=> d!669622 m!2689735))

(declare-fun m!2690067 () Bool)

(assert (=> d!669622 m!2690067))

(assert (=> b!2260099 d!669622))

(declare-fun d!669652 () Bool)

(declare-fun fromListB!1329 (List!26934) BalanceConc!17096)

(assert (=> d!669652 (= (seqFromList!2972 input!1722) (fromListB!1329 input!1722))))

(declare-fun bs!455428 () Bool)

(assert (= bs!455428 d!669652))

(declare-fun m!2690069 () Bool)

(assert (=> bs!455428 m!2690069))

(assert (=> b!2260099 d!669652))

(declare-fun d!669654 () Bool)

(assert (=> d!669654 (= (inv!36375 (tag!4758 r!2363)) (= (mod (str.len (value!135458 (tag!4758 r!2363))) 2) 0))))

(assert (=> b!2260088 d!669654))

(declare-fun d!669656 () Bool)

(declare-fun res!966351 () Bool)

(declare-fun e!1447333 () Bool)

(assert (=> d!669656 (=> (not res!966351) (not e!1447333))))

(assert (=> d!669656 (= res!966351 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 r!2363))))))

(assert (=> d!669656 (= (inv!36378 (transformation!4268 r!2363)) e!1447333)))

(declare-fun b!2260437 () Bool)

(assert (=> b!2260437 (= e!1447333 (equivClasses!1638 (toChars!5873 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 r!2363))))))

(assert (= (and d!669656 res!966351) b!2260437))

(declare-fun m!2690071 () Bool)

(assert (=> d!669656 m!2690071))

(declare-fun m!2690073 () Bool)

(assert (=> b!2260437 m!2690073))

(assert (=> b!2260088 d!669656))

(declare-fun b!2260448 () Bool)

(declare-fun e!1447339 () Int)

(assert (=> b!2260448 (= e!1447339 (+ 1 (getIndex!289 (t!201553 rules!1750) otherR!12)))))

(declare-fun d!669658 () Bool)

(declare-fun lt!839895 () Int)

(assert (=> d!669658 (>= lt!839895 0)))

(declare-fun e!1447340 () Int)

(assert (=> d!669658 (= lt!839895 e!1447340)))

(declare-fun c!359123 () Bool)

(assert (=> d!669658 (= c!359123 (and (is-Cons!26841 rules!1750) (= (h!32242 rules!1750) otherR!12)))))

(assert (=> d!669658 (contains!4622 rules!1750 otherR!12)))

(assert (=> d!669658 (= (getIndex!289 rules!1750 otherR!12) lt!839895)))

(declare-fun b!2260447 () Bool)

(assert (=> b!2260447 (= e!1447340 e!1447339)))

(declare-fun c!359124 () Bool)

(assert (=> b!2260447 (= c!359124 (and (is-Cons!26841 rules!1750) (not (= (h!32242 rules!1750) otherR!12))))))

(declare-fun b!2260449 () Bool)

(assert (=> b!2260449 (= e!1447339 (- 1))))

(declare-fun b!2260446 () Bool)

(assert (=> b!2260446 (= e!1447340 0)))

(assert (= (and d!669658 c!359123) b!2260446))

(assert (= (and d!669658 (not c!359123)) b!2260447))

(assert (= (and b!2260447 c!359124) b!2260448))

(assert (= (and b!2260447 (not c!359124)) b!2260449))

(declare-fun m!2690075 () Bool)

(assert (=> b!2260448 m!2690075))

(assert (=> d!669658 m!2689749))

(assert (=> b!2260089 d!669658))

(declare-fun b!2260452 () Bool)

(declare-fun e!1447341 () Int)

(assert (=> b!2260452 (= e!1447341 (+ 1 (getIndex!289 (t!201553 rules!1750) r!2363)))))

(declare-fun d!669660 () Bool)

(declare-fun lt!839896 () Int)

(assert (=> d!669660 (>= lt!839896 0)))

(declare-fun e!1447342 () Int)

(assert (=> d!669660 (= lt!839896 e!1447342)))

(declare-fun c!359125 () Bool)

(assert (=> d!669660 (= c!359125 (and (is-Cons!26841 rules!1750) (= (h!32242 rules!1750) r!2363)))))

(assert (=> d!669660 (contains!4622 rules!1750 r!2363)))

(assert (=> d!669660 (= (getIndex!289 rules!1750 r!2363) lt!839896)))

(declare-fun b!2260451 () Bool)

(assert (=> b!2260451 (= e!1447342 e!1447341)))

(declare-fun c!359126 () Bool)

(assert (=> b!2260451 (= c!359126 (and (is-Cons!26841 rules!1750) (not (= (h!32242 rules!1750) r!2363))))))

(declare-fun b!2260453 () Bool)

(assert (=> b!2260453 (= e!1447341 (- 1))))

(declare-fun b!2260450 () Bool)

(assert (=> b!2260450 (= e!1447342 0)))

(assert (= (and d!669660 c!359125) b!2260450))

(assert (= (and d!669660 (not c!359125)) b!2260451))

(assert (= (and b!2260451 c!359126) b!2260452))

(assert (= (and b!2260451 (not c!359126)) b!2260453))

(declare-fun m!2690077 () Bool)

(assert (=> b!2260452 m!2690077))

(assert (=> d!669660 m!2689725))

(assert (=> b!2260089 d!669660))

(declare-fun d!669662 () Bool)

(declare-fun res!966352 () Bool)

(declare-fun e!1447343 () Bool)

(assert (=> d!669662 (=> (not res!966352) (not e!1447343))))

(assert (=> d!669662 (= res!966352 (validRegex!2475 (regex!4268 otherR!12)))))

(assert (=> d!669662 (= (ruleValid!1360 thiss!16613 otherR!12) e!1447343)))

(declare-fun b!2260454 () Bool)

(declare-fun res!966353 () Bool)

(assert (=> b!2260454 (=> (not res!966353) (not e!1447343))))

(assert (=> b!2260454 (= res!966353 (not (nullable!1817 (regex!4268 otherR!12))))))

(declare-fun b!2260455 () Bool)

(assert (=> b!2260455 (= e!1447343 (not (= (tag!4758 otherR!12) (String!29257 ""))))))

(assert (= (and d!669662 res!966352) b!2260454))

(assert (= (and b!2260454 res!966353) b!2260455))

(declare-fun m!2690079 () Bool)

(assert (=> d!669662 m!2690079))

(declare-fun m!2690081 () Bool)

(assert (=> b!2260454 m!2690081))

(assert (=> b!2260089 d!669662))

(declare-fun d!669664 () Bool)

(assert (=> d!669664 (ruleValid!1360 thiss!16613 otherR!12)))

(declare-fun lt!839897 () Unit!39770)

(assert (=> d!669664 (= lt!839897 (choose!13220 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!669664 (contains!4622 rules!1750 otherR!12)))

(assert (=> d!669664 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!767 thiss!16613 otherR!12 rules!1750) lt!839897)))

(declare-fun bs!455429 () Bool)

(assert (= bs!455429 d!669664))

(assert (=> bs!455429 m!2689763))

(declare-fun m!2690083 () Bool)

(assert (=> bs!455429 m!2690083))

(assert (=> bs!455429 m!2689749))

(assert (=> b!2260089 d!669664))

(declare-fun d!669666 () Bool)

(assert (=> d!669666 (= (inv!36375 (tag!4758 otherR!12)) (= (mod (str.len (value!135458 (tag!4758 otherR!12))) 2) 0))))

(assert (=> b!2260110 d!669666))

(declare-fun d!669668 () Bool)

(declare-fun res!966354 () Bool)

(declare-fun e!1447344 () Bool)

(assert (=> d!669668 (=> (not res!966354) (not e!1447344))))

(assert (=> d!669668 (= res!966354 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 otherR!12))))))

(assert (=> d!669668 (= (inv!36378 (transformation!4268 otherR!12)) e!1447344)))

(declare-fun b!2260456 () Bool)

(assert (=> b!2260456 (= e!1447344 (equivClasses!1638 (toChars!5873 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 otherR!12))))))

(assert (= (and d!669668 res!966354) b!2260456))

(declare-fun m!2690085 () Bool)

(assert (=> d!669668 m!2690085))

(declare-fun m!2690087 () Bool)

(assert (=> b!2260456 m!2690087))

(assert (=> b!2260110 d!669668))

(declare-fun d!669670 () Bool)

(declare-fun lt!839898 () Bool)

(assert (=> d!669670 (= lt!839898 (set.member otherR!12 (content!3573 rules!1750)))))

(declare-fun e!1447346 () Bool)

(assert (=> d!669670 (= lt!839898 e!1447346)))

(declare-fun res!966356 () Bool)

(assert (=> d!669670 (=> (not res!966356) (not e!1447346))))

(assert (=> d!669670 (= res!966356 (is-Cons!26841 rules!1750))))

(assert (=> d!669670 (= (contains!4622 rules!1750 otherR!12) lt!839898)))

(declare-fun b!2260457 () Bool)

(declare-fun e!1447345 () Bool)

(assert (=> b!2260457 (= e!1447346 e!1447345)))

(declare-fun res!966355 () Bool)

(assert (=> b!2260457 (=> res!966355 e!1447345)))

(assert (=> b!2260457 (= res!966355 (= (h!32242 rules!1750) otherR!12))))

(declare-fun b!2260458 () Bool)

(assert (=> b!2260458 (= e!1447345 (contains!4622 (t!201553 rules!1750) otherR!12))))

(assert (= (and d!669670 res!966356) b!2260457))

(assert (= (and b!2260457 (not res!966355)) b!2260458))

(assert (=> d!669670 m!2689965))

(declare-fun m!2690089 () Bool)

(assert (=> d!669670 m!2690089))

(declare-fun m!2690091 () Bool)

(assert (=> b!2260458 m!2690091))

(assert (=> b!2260087 d!669670))

(declare-fun d!669672 () Bool)

(declare-fun lt!839901 () Int)

(assert (=> d!669672 (= lt!839901 (size!21031 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(declare-fun size!21036 (Conc!8684) Int)

(assert (=> d!669672 (= lt!839901 (size!21036 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> d!669672 (= (size!21030 (charsOf!2656 (head!4847 tokens!456))) lt!839901)))

(declare-fun bs!455430 () Bool)

(assert (= bs!455430 d!669672))

(assert (=> bs!455430 m!2689717))

(assert (=> bs!455430 m!2689719))

(assert (=> bs!455430 m!2689719))

(declare-fun m!2690093 () Bool)

(assert (=> bs!455430 m!2690093))

(declare-fun m!2690095 () Bool)

(assert (=> bs!455430 m!2690095))

(assert (=> b!2260098 d!669672))

(assert (=> b!2260098 d!669616))

(assert (=> b!2260098 d!669590))

(declare-fun d!669674 () Bool)

(declare-fun lt!839904 () Int)

(assert (=> d!669674 (>= lt!839904 0)))

(declare-fun e!1447349 () Int)

(assert (=> d!669674 (= lt!839904 e!1447349)))

(declare-fun c!359129 () Bool)

(assert (=> d!669674 (= c!359129 (is-Nil!26840 otherP!12))))

(assert (=> d!669674 (= (size!21031 otherP!12) lt!839904)))

(declare-fun b!2260463 () Bool)

(assert (=> b!2260463 (= e!1447349 0)))

(declare-fun b!2260464 () Bool)

(assert (=> b!2260464 (= e!1447349 (+ 1 (size!21031 (t!201552 otherP!12))))))

(assert (= (and d!669674 c!359129) b!2260463))

(assert (= (and d!669674 (not c!359129)) b!2260464))

(declare-fun m!2690097 () Bool)

(assert (=> b!2260464 m!2690097))

(assert (=> b!2260098 d!669674))

(declare-fun b!2260478 () Bool)

(declare-fun b_free!66749 () Bool)

(declare-fun b_next!67453 () Bool)

(assert (=> b!2260478 (= b_free!66749 (not b_next!67453))))

(declare-fun tp!714828 () Bool)

(declare-fun b_and!177593 () Bool)

(assert (=> b!2260478 (= tp!714828 b_and!177593)))

(declare-fun b_free!66751 () Bool)

(declare-fun b_next!67455 () Bool)

(assert (=> b!2260478 (= b_free!66751 (not b_next!67455))))

(declare-fun t!201592 () Bool)

(declare-fun tb!133967 () Bool)

(assert (=> (and b!2260478 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201592) tb!133967))

(declare-fun result!163332 () Bool)

(assert (= result!163332 result!163294))

(assert (=> b!2260217 t!201592))

(declare-fun t!201594 () Bool)

(declare-fun tb!133969 () Bool)

(assert (=> (and b!2260478 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201594) tb!133969))

(declare-fun result!163334 () Bool)

(assert (= result!163334 result!163314))

(assert (=> d!669616 t!201594))

(declare-fun tp!714824 () Bool)

(declare-fun b_and!177595 () Bool)

(assert (=> b!2260478 (= tp!714824 (and (=> t!201592 result!163332) (=> t!201594 result!163334) b_and!177595))))

(declare-fun e!1447363 () Bool)

(declare-fun b!2260477 () Bool)

(declare-fun tp!714827 () Bool)

(declare-fun e!1447365 () Bool)

(assert (=> b!2260477 (= e!1447363 (and tp!714827 (inv!36375 (tag!4758 (rule!6578 (h!32243 (t!201554 tokens!456))))) (inv!36378 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) e!1447365))))

(declare-fun b!2260476 () Bool)

(declare-fun tp!714825 () Bool)

(declare-fun e!1447364 () Bool)

(assert (=> b!2260476 (= e!1447364 (and (inv!21 (value!135459 (h!32243 (t!201554 tokens!456)))) e!1447363 tp!714825))))

(assert (=> b!2260478 (= e!1447365 (and tp!714828 tp!714824))))

(declare-fun b!2260475 () Bool)

(declare-fun tp!714826 () Bool)

(declare-fun e!1447367 () Bool)

(assert (=> b!2260475 (= e!1447367 (and (inv!36379 (h!32243 (t!201554 tokens!456))) e!1447364 tp!714826))))

(assert (=> b!2260112 (= tp!714742 e!1447367)))

(assert (= b!2260477 b!2260478))

(assert (= b!2260476 b!2260477))

(assert (= b!2260475 b!2260476))

(assert (= (and b!2260112 (is-Cons!26842 (t!201554 tokens!456))) b!2260475))

(declare-fun m!2690099 () Bool)

(assert (=> b!2260477 m!2690099))

(declare-fun m!2690101 () Bool)

(assert (=> b!2260477 m!2690101))

(declare-fun m!2690103 () Bool)

(assert (=> b!2260476 m!2690103))

(declare-fun m!2690105 () Bool)

(assert (=> b!2260475 m!2690105))

(declare-fun b!2260491 () Bool)

(declare-fun e!1447370 () Bool)

(declare-fun tp!714843 () Bool)

(assert (=> b!2260491 (= e!1447370 tp!714843)))

(assert (=> b!2260102 (= tp!714734 e!1447370)))

(declare-fun b!2260490 () Bool)

(declare-fun tp!714841 () Bool)

(declare-fun tp!714839 () Bool)

(assert (=> b!2260490 (= e!1447370 (and tp!714841 tp!714839))))

(declare-fun b!2260489 () Bool)

(assert (=> b!2260489 (= e!1447370 tp_is_empty!10453)))

(declare-fun b!2260492 () Bool)

(declare-fun tp!714840 () Bool)

(declare-fun tp!714842 () Bool)

(assert (=> b!2260492 (= e!1447370 (and tp!714840 tp!714842))))

(assert (= (and b!2260102 (is-ElementMatch!6616 (regex!4268 (rule!6578 (h!32243 tokens!456))))) b!2260489))

(assert (= (and b!2260102 (is-Concat!11047 (regex!4268 (rule!6578 (h!32243 tokens!456))))) b!2260490))

(assert (= (and b!2260102 (is-Star!6616 (regex!4268 (rule!6578 (h!32243 tokens!456))))) b!2260491))

(assert (= (and b!2260102 (is-Union!6616 (regex!4268 (rule!6578 (h!32243 tokens!456))))) b!2260492))

(declare-fun b!2260497 () Bool)

(declare-fun e!1447373 () Bool)

(declare-fun tp!714846 () Bool)

(assert (=> b!2260497 (= e!1447373 (and tp_is_empty!10453 tp!714846))))

(assert (=> b!2260115 (= tp!714747 e!1447373)))

(assert (= (and b!2260115 (is-Cons!26840 (t!201552 input!1722))) b!2260497))

(declare-fun b!2260498 () Bool)

(declare-fun e!1447374 () Bool)

(declare-fun tp!714847 () Bool)

(assert (=> b!2260498 (= e!1447374 (and tp_is_empty!10453 tp!714847))))

(assert (=> b!2260094 (= tp!714740 e!1447374)))

(assert (= (and b!2260094 (is-Cons!26840 (t!201552 suffix!886))) b!2260498))

(declare-fun b!2260499 () Bool)

(declare-fun e!1447375 () Bool)

(declare-fun tp!714848 () Bool)

(assert (=> b!2260499 (= e!1447375 (and tp_is_empty!10453 tp!714848))))

(assert (=> b!2260093 (= tp!714735 e!1447375)))

(assert (= (and b!2260093 (is-Cons!26840 (t!201552 otherP!12))) b!2260499))

(declare-fun b!2260500 () Bool)

(declare-fun e!1447376 () Bool)

(declare-fun tp!714849 () Bool)

(assert (=> b!2260500 (= e!1447376 (and tp_is_empty!10453 tp!714849))))

(assert (=> b!2260114 (= tp!714750 e!1447376)))

(assert (= (and b!2260114 (is-Cons!26840 (originalCharacters!5038 (h!32243 tokens!456)))) b!2260500))

(declare-fun b!2260503 () Bool)

(declare-fun e!1447377 () Bool)

(declare-fun tp!714854 () Bool)

(assert (=> b!2260503 (= e!1447377 tp!714854)))

(assert (=> b!2260096 (= tp!714741 e!1447377)))

(declare-fun b!2260502 () Bool)

(declare-fun tp!714852 () Bool)

(declare-fun tp!714850 () Bool)

(assert (=> b!2260502 (= e!1447377 (and tp!714852 tp!714850))))

(declare-fun b!2260501 () Bool)

(assert (=> b!2260501 (= e!1447377 tp_is_empty!10453)))

(declare-fun b!2260504 () Bool)

(declare-fun tp!714851 () Bool)

(declare-fun tp!714853 () Bool)

(assert (=> b!2260504 (= e!1447377 (and tp!714851 tp!714853))))

(assert (= (and b!2260096 (is-ElementMatch!6616 (regex!4268 (h!32242 rules!1750)))) b!2260501))

(assert (= (and b!2260096 (is-Concat!11047 (regex!4268 (h!32242 rules!1750)))) b!2260502))

(assert (= (and b!2260096 (is-Star!6616 (regex!4268 (h!32242 rules!1750)))) b!2260503))

(assert (= (and b!2260096 (is-Union!6616 (regex!4268 (h!32242 rules!1750)))) b!2260504))

(declare-fun b!2260507 () Bool)

(declare-fun e!1447378 () Bool)

(declare-fun tp!714859 () Bool)

(assert (=> b!2260507 (= e!1447378 tp!714859)))

(assert (=> b!2260088 (= tp!714738 e!1447378)))

(declare-fun b!2260506 () Bool)

(declare-fun tp!714857 () Bool)

(declare-fun tp!714855 () Bool)

(assert (=> b!2260506 (= e!1447378 (and tp!714857 tp!714855))))

(declare-fun b!2260505 () Bool)

(assert (=> b!2260505 (= e!1447378 tp_is_empty!10453)))

(declare-fun b!2260508 () Bool)

(declare-fun tp!714856 () Bool)

(declare-fun tp!714858 () Bool)

(assert (=> b!2260508 (= e!1447378 (and tp!714856 tp!714858))))

(assert (= (and b!2260088 (is-ElementMatch!6616 (regex!4268 r!2363))) b!2260505))

(assert (= (and b!2260088 (is-Concat!11047 (regex!4268 r!2363))) b!2260506))

(assert (= (and b!2260088 (is-Star!6616 (regex!4268 r!2363))) b!2260507))

(assert (= (and b!2260088 (is-Union!6616 (regex!4268 r!2363))) b!2260508))

(declare-fun b!2260511 () Bool)

(declare-fun e!1447379 () Bool)

(declare-fun tp!714864 () Bool)

(assert (=> b!2260511 (= e!1447379 tp!714864)))

(assert (=> b!2260110 (= tp!714744 e!1447379)))

(declare-fun b!2260510 () Bool)

(declare-fun tp!714862 () Bool)

(declare-fun tp!714860 () Bool)

(assert (=> b!2260510 (= e!1447379 (and tp!714862 tp!714860))))

(declare-fun b!2260509 () Bool)

(assert (=> b!2260509 (= e!1447379 tp_is_empty!10453)))

(declare-fun b!2260512 () Bool)

(declare-fun tp!714861 () Bool)

(declare-fun tp!714863 () Bool)

(assert (=> b!2260512 (= e!1447379 (and tp!714861 tp!714863))))

(assert (= (and b!2260110 (is-ElementMatch!6616 (regex!4268 otherR!12))) b!2260509))

(assert (= (and b!2260110 (is-Concat!11047 (regex!4268 otherR!12))) b!2260510))

(assert (= (and b!2260110 (is-Star!6616 (regex!4268 otherR!12))) b!2260511))

(assert (= (and b!2260110 (is-Union!6616 (regex!4268 otherR!12))) b!2260512))

(declare-fun b!2260523 () Bool)

(declare-fun b_free!66753 () Bool)

(declare-fun b_next!67457 () Bool)

(assert (=> b!2260523 (= b_free!66753 (not b_next!67457))))

(declare-fun tp!714873 () Bool)

(declare-fun b_and!177597 () Bool)

(assert (=> b!2260523 (= tp!714873 b_and!177597)))

(declare-fun b_free!66755 () Bool)

(declare-fun b_next!67459 () Bool)

(assert (=> b!2260523 (= b_free!66755 (not b_next!67459))))

(declare-fun tb!133971 () Bool)

(declare-fun t!201596 () Bool)

(assert (=> (and b!2260523 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201596) tb!133971))

(declare-fun result!163342 () Bool)

(assert (= result!163342 result!163294))

(assert (=> b!2260217 t!201596))

(declare-fun tb!133973 () Bool)

(declare-fun t!201598 () Bool)

(assert (=> (and b!2260523 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201598) tb!133973))

(declare-fun result!163344 () Bool)

(assert (= result!163344 result!163314))

(assert (=> d!669616 t!201598))

(declare-fun tp!714874 () Bool)

(declare-fun b_and!177599 () Bool)

(assert (=> b!2260523 (= tp!714874 (and (=> t!201596 result!163342) (=> t!201598 result!163344) b_and!177599))))

(declare-fun e!1447390 () Bool)

(assert (=> b!2260523 (= e!1447390 (and tp!714873 tp!714874))))

(declare-fun tp!714875 () Bool)

(declare-fun e!1447389 () Bool)

(declare-fun b!2260522 () Bool)

(assert (=> b!2260522 (= e!1447389 (and tp!714875 (inv!36375 (tag!4758 (h!32242 (t!201553 rules!1750)))) (inv!36378 (transformation!4268 (h!32242 (t!201553 rules!1750)))) e!1447390))))

(declare-fun b!2260521 () Bool)

(declare-fun e!1447388 () Bool)

(declare-fun tp!714876 () Bool)

(assert (=> b!2260521 (= e!1447388 (and e!1447389 tp!714876))))

(assert (=> b!2260108 (= tp!714739 e!1447388)))

(assert (= b!2260522 b!2260523))

(assert (= b!2260521 b!2260522))

(assert (= (and b!2260108 (is-Cons!26841 (t!201553 rules!1750))) b!2260521))

(declare-fun m!2690107 () Bool)

(assert (=> b!2260522 m!2690107))

(declare-fun m!2690109 () Bool)

(assert (=> b!2260522 m!2690109))

(declare-fun b_lambda!72133 () Bool)

(assert (= b_lambda!72125 (or (and b!2260478 b_free!66751 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (and b!2260091 b_free!66731 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (and b!2260109 b_free!66723 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (and b!2260116 b_free!66727 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (and b!2260523 b_free!66755 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (and b!2260086 b_free!66719) b_lambda!72133)))

(push 1)

(assert (not b_next!67459))

(assert (not d!669602))

(assert (not b!2260475))

(assert (not b!2260508))

(assert (not b!2260288))

(assert (not b!2260218))

(assert (not d!669578))

(assert (not b!2260506))

(assert (not b_next!67453))

(assert (not d!669620))

(assert (not d!669594))

(assert (not b!2260235))

(assert (not d!669670))

(assert (not b!2260507))

(assert (not b_next!67431))

(assert (not d!669566))

(assert (not d!669658))

(assert (not b_next!67435))

(assert (not d!669660))

(assert tp_is_empty!10453)

(assert b_and!177541)

(assert (not b!2260503))

(assert (not b!2260367))

(assert (not bm!135805))

(assert (not b!2260436))

(assert (not b!2260477))

(assert (not bm!135802))

(assert b_and!177577)

(assert (not b!2260377))

(assert (not b!2260512))

(assert (not b!2260504))

(assert b_and!177593)

(assert b_and!177583)

(assert (not b_next!67427))

(assert (not b!2260500))

(assert (not b!2260370))

(assert b_and!177595)

(assert (not b!2260511))

(assert (not b!2260502))

(assert b_and!177579)

(assert (not b!2260499))

(assert (not b!2260287))

(assert (not b_next!67429))

(assert (not b!2260292))

(assert (not b_lambda!72129))

(assert (not b!2260491))

(assert (not b_next!67433))

(assert (not b!2260498))

(assert (not b!2260492))

(assert (not d!669656))

(assert (not b!2260335))

(assert (not b_next!67455))

(assert (not d!669604))

(assert (not b!2260375))

(assert (not d!669560))

(assert (not b!2260435))

(assert (not b!2260241))

(assert (not b!2260437))

(assert (not b!2260458))

(assert (not b!2260454))

(assert b_and!177533)

(assert b_and!177581)

(assert (not b!2260456))

(assert (not b!2260497))

(assert (not b!2260464))

(assert (not b!2260238))

(assert (not b!2260234))

(assert (not d!669662))

(assert (not b!2260372))

(assert (not b_next!67457))

(assert b_and!177529)

(assert (not tb!133935))

(assert (not b!2260452))

(assert (not d!669618))

(assert (not b!2260306))

(assert (not tb!133951))

(assert (not d!669592))

(assert (not b!2260217))

(assert (not b!2260326))

(assert (not b!2260327))

(assert (not b!2260286))

(assert (not b_lambda!72133))

(assert (not b_next!67421))

(assert (not d!669616))

(assert (not b_next!67423))

(assert (not d!669606))

(assert (not b!2260293))

(assert (not d!669622))

(assert (not b!2260510))

(assert (not b_next!67425))

(assert (not d!669570))

(assert (not d!669664))

(assert (not b!2260324))

(assert (not b!2260233))

(assert (not b!2260290))

(assert (not b!2260434))

(assert (not b!2260521))

(assert (not d!669614))

(assert b_and!177599)

(assert (not b!2260476))

(assert (not b!2260285))

(assert (not d!669672))

(assert (not b!2260389))

(assert b_and!177537)

(assert b_and!177597)

(assert (not b!2260380))

(assert (not b!2260490))

(assert (not d!669652))

(assert (not b!2260433))

(assert (not d!669576))

(assert (not b!2260522))

(assert (not b!2260448))

(assert (not b!2260223))

(assert (not b!2260289))

(assert (not d!669572))

(assert (not d!669668))

(assert (not b!2260329))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!67459))

(assert (not b_next!67453))

(assert (not b_next!67431))

(assert (not b_next!67435))

(assert b_and!177541)

(assert (not b_next!67429))

(assert (not b_next!67433))

(assert (not b_next!67455))

(assert (not b_next!67425))

(assert b_and!177599)

(assert b_and!177593)

(assert b_and!177577)

(assert b_and!177583)

(assert (not b_next!67427))

(assert b_and!177595)

(assert b_and!177579)

(assert b_and!177533)

(assert b_and!177581)

(assert (not b_next!67457))

(assert b_and!177529)

(assert (not b_next!67421))

(assert (not b_next!67423))

(assert b_and!177537)

(assert b_and!177597)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2260680 () Bool)

(declare-fun e!1447480 () List!26934)

(declare-fun e!1447481 () List!26934)

(assert (=> b!2260680 (= e!1447480 e!1447481)))

(declare-fun c!359150 () Bool)

(assert (=> b!2260680 (= c!359150 (is-Leaf!12804 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))

(declare-fun b!2260681 () Bool)

(declare-fun list!10355 (IArray!17373) List!26934)

(assert (=> b!2260681 (= e!1447481 (list!10355 (xs!11626 (c!359071 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2260679 () Bool)

(assert (=> b!2260679 (= e!1447480 Nil!26840)))

(declare-fun b!2260682 () Bool)

(assert (=> b!2260682 (= e!1447481 (++!6532 (list!10351 (left!20375 (c!359071 (charsOf!2656 (head!4847 tokens!456))))) (list!10351 (right!20705 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun d!669700 () Bool)

(declare-fun c!359149 () Bool)

(assert (=> d!669700 (= c!359149 (is-Empty!8684 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> d!669700 (= (list!10351 (c!359071 (charsOf!2656 (head!4847 tokens!456)))) e!1447480)))

(assert (= (and d!669700 c!359149) b!2260679))

(assert (= (and d!669700 (not c!359149)) b!2260680))

(assert (= (and b!2260680 c!359150) b!2260681))

(assert (= (and b!2260680 (not c!359150)) b!2260682))

(declare-fun m!2690207 () Bool)

(assert (=> b!2260681 m!2690207))

(declare-fun m!2690209 () Bool)

(assert (=> b!2260682 m!2690209))

(declare-fun m!2690211 () Bool)

(assert (=> b!2260682 m!2690211))

(assert (=> b!2260682 m!2690209))

(assert (=> b!2260682 m!2690211))

(declare-fun m!2690213 () Bool)

(assert (=> b!2260682 m!2690213))

(assert (=> d!669614 d!669700))

(declare-fun d!669702 () Bool)

(assert (=> d!669702 (= (list!10348 (_2!15723 lt!839892)) (list!10351 (c!359071 (_2!15723 lt!839892))))))

(declare-fun bs!455436 () Bool)

(assert (= bs!455436 d!669702))

(declare-fun m!2690215 () Bool)

(assert (=> bs!455436 m!2690215))

(assert (=> b!2260434 d!669702))

(declare-fun b!2260693 () Bool)

(declare-fun e!1447490 () tuple2!26428)

(declare-fun lt!839934 () Option!5242)

(declare-fun lt!839935 () tuple2!26428)

(assert (=> b!2260693 (= e!1447490 (tuple2!26429 (Cons!26842 (_1!15722 (v!30273 lt!839934)) (_1!15724 lt!839935)) (_2!15724 lt!839935)))))

(assert (=> b!2260693 (= lt!839935 (lexList!1063 thiss!16613 rules!1750 (_2!15722 (v!30273 lt!839934))))))

(declare-fun b!2260694 () Bool)

(assert (=> b!2260694 (= e!1447490 (tuple2!26429 Nil!26842 (list!10348 (seqFromList!2972 input!1722))))))

(declare-fun b!2260695 () Bool)

(declare-fun e!1447488 () Bool)

(declare-fun lt!839933 () tuple2!26428)

(assert (=> b!2260695 (= e!1447488 (not (isEmpty!15168 (_1!15724 lt!839933))))))

(declare-fun b!2260696 () Bool)

(declare-fun e!1447489 () Bool)

(assert (=> b!2260696 (= e!1447489 e!1447488)))

(declare-fun res!966419 () Bool)

(assert (=> b!2260696 (= res!966419 (< (size!21031 (_2!15724 lt!839933)) (size!21031 (list!10348 (seqFromList!2972 input!1722)))))))

(assert (=> b!2260696 (=> (not res!966419) (not e!1447488))))

(declare-fun b!2260697 () Bool)

(assert (=> b!2260697 (= e!1447489 (= (_2!15724 lt!839933) (list!10348 (seqFromList!2972 input!1722))))))

(declare-fun d!669704 () Bool)

(assert (=> d!669704 e!1447489))

(declare-fun c!359156 () Bool)

(declare-fun size!21039 (List!26936) Int)

(assert (=> d!669704 (= c!359156 (> (size!21039 (_1!15724 lt!839933)) 0))))

(assert (=> d!669704 (= lt!839933 e!1447490)))

(declare-fun c!359155 () Bool)

(assert (=> d!669704 (= c!359155 (is-Some!5241 lt!839934))))

(assert (=> d!669704 (= lt!839934 (maxPrefix!2139 thiss!16613 rules!1750 (list!10348 (seqFromList!2972 input!1722))))))

(assert (=> d!669704 (= (lexList!1063 thiss!16613 rules!1750 (list!10348 (seqFromList!2972 input!1722))) lt!839933)))

(assert (= (and d!669704 c!359155) b!2260693))

(assert (= (and d!669704 (not c!359155)) b!2260694))

(assert (= (and d!669704 c!359156) b!2260696))

(assert (= (and d!669704 (not c!359156)) b!2260697))

(assert (= (and b!2260696 res!966419) b!2260695))

(declare-fun m!2690217 () Bool)

(assert (=> b!2260693 m!2690217))

(declare-fun m!2690219 () Bool)

(assert (=> b!2260695 m!2690219))

(declare-fun m!2690221 () Bool)

(assert (=> b!2260696 m!2690221))

(assert (=> b!2260696 m!2690057))

(declare-fun m!2690223 () Bool)

(assert (=> b!2260696 m!2690223))

(declare-fun m!2690225 () Bool)

(assert (=> d!669704 m!2690225))

(assert (=> d!669704 m!2690057))

(declare-fun m!2690227 () Bool)

(assert (=> d!669704 m!2690227))

(assert (=> b!2260434 d!669704))

(declare-fun d!669706 () Bool)

(assert (=> d!669706 (= (list!10348 (seqFromList!2972 input!1722)) (list!10351 (c!359071 (seqFromList!2972 input!1722))))))

(declare-fun bs!455437 () Bool)

(assert (= bs!455437 d!669706))

(declare-fun m!2690229 () Bool)

(assert (=> bs!455437 m!2690229))

(assert (=> b!2260434 d!669706))

(declare-fun d!669708 () Bool)

(assert (=> d!669708 (= (head!4849 otherP!12) (h!32241 otherP!12))))

(assert (=> b!2260233 d!669708))

(declare-fun d!669710 () Bool)

(assert (=> d!669710 (= (head!4849 input!1722) (h!32241 input!1722))))

(assert (=> b!2260233 d!669710))

(declare-fun d!669712 () Bool)

(declare-fun c!359159 () Bool)

(assert (=> d!669712 (= c!359159 (is-Nil!26841 rules!1750))))

(declare-fun e!1447493 () (Set Rule!8336))

(assert (=> d!669712 (= (content!3573 rules!1750) e!1447493)))

(declare-fun b!2260702 () Bool)

(assert (=> b!2260702 (= e!1447493 (as set.empty (Set Rule!8336)))))

(declare-fun b!2260703 () Bool)

(assert (=> b!2260703 (= e!1447493 (set.union (set.insert (h!32242 rules!1750) (as set.empty (Set Rule!8336))) (content!3573 (t!201553 rules!1750))))))

(assert (= (and d!669712 c!359159) b!2260702))

(assert (= (and d!669712 (not c!359159)) b!2260703))

(declare-fun m!2690231 () Bool)

(assert (=> b!2260703 m!2690231))

(declare-fun m!2690233 () Bool)

(assert (=> b!2260703 m!2690233))

(assert (=> d!669604 d!669712))

(declare-fun d!669714 () Bool)

(declare-fun charsToBigInt!1 (List!26933) Int)

(assert (=> d!669714 (= (inv!17 (value!135459 (h!32243 tokens!456))) (= (charsToBigInt!1 (text!31458 (value!135459 (h!32243 tokens!456)))) (value!135451 (value!135459 (h!32243 tokens!456)))))))

(declare-fun bs!455438 () Bool)

(assert (= bs!455438 d!669714))

(declare-fun m!2690235 () Bool)

(assert (=> bs!455438 m!2690235))

(assert (=> b!2260326 d!669714))

(declare-fun d!669716 () Bool)

(declare-fun lt!839936 () Int)

(assert (=> d!669716 (>= lt!839936 0)))

(declare-fun e!1447494 () Int)

(assert (=> d!669716 (= lt!839936 e!1447494)))

(declare-fun c!359160 () Bool)

(assert (=> d!669716 (= c!359160 (is-Nil!26840 input!1722))))

(assert (=> d!669716 (= (size!21031 input!1722) lt!839936)))

(declare-fun b!2260704 () Bool)

(assert (=> b!2260704 (= e!1447494 0)))

(declare-fun b!2260705 () Bool)

(assert (=> b!2260705 (= e!1447494 (+ 1 (size!21031 (t!201552 input!1722))))))

(assert (= (and d!669716 c!359160) b!2260704))

(assert (= (and d!669716 (not c!359160)) b!2260705))

(declare-fun m!2690237 () Bool)

(assert (=> b!2260705 m!2690237))

(assert (=> b!2260235 d!669716))

(assert (=> b!2260235 d!669674))

(declare-fun d!669718 () Bool)

(assert (=> d!669718 (= (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (is-Nil!26840 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(assert (=> b!2260375 d!669718))

(declare-fun d!669720 () Bool)

(assert (=> d!669720 (= (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (t!201552 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> b!2260375 d!669720))

(declare-fun d!669722 () Bool)

(declare-fun lt!839939 () Bool)

(assert (=> d!669722 (= lt!839939 (isEmpty!15168 (list!10347 (_1!15723 lt!839892))))))

(declare-fun isEmpty!15177 (Conc!8685) Bool)

(assert (=> d!669722 (= lt!839939 (isEmpty!15177 (c!359073 (_1!15723 lt!839892))))))

(assert (=> d!669722 (= (isEmpty!15173 (_1!15723 lt!839892)) lt!839939)))

(declare-fun bs!455439 () Bool)

(assert (= bs!455439 d!669722))

(assert (=> bs!455439 m!2690063))

(assert (=> bs!455439 m!2690063))

(declare-fun m!2690239 () Bool)

(assert (=> bs!455439 m!2690239))

(declare-fun m!2690241 () Bool)

(assert (=> bs!455439 m!2690241))

(assert (=> b!2260436 d!669722))

(declare-fun d!669724 () Bool)

(declare-fun lt!839940 () Int)

(assert (=> d!669724 (>= lt!839940 0)))

(declare-fun e!1447495 () Int)

(assert (=> d!669724 (= lt!839940 e!1447495)))

(declare-fun c!359161 () Bool)

(assert (=> d!669724 (= c!359161 (is-Nil!26840 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> d!669724 (= (size!21031 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) lt!839940)))

(declare-fun b!2260706 () Bool)

(assert (=> b!2260706 (= e!1447495 0)))

(declare-fun b!2260707 () Bool)

(assert (=> b!2260707 (= e!1447495 (+ 1 (size!21031 (t!201552 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(assert (= (and d!669724 c!359161) b!2260706))

(assert (= (and d!669724 (not c!359161)) b!2260707))

(declare-fun m!2690243 () Bool)

(assert (=> b!2260707 m!2690243))

(assert (=> d!669672 d!669724))

(assert (=> d!669672 d!669614))

(declare-fun d!669726 () Bool)

(declare-fun lt!839943 () Int)

(assert (=> d!669726 (= lt!839943 (size!21031 (list!10351 (c!359071 (charsOf!2656 (head!4847 tokens!456))))))))

(assert (=> d!669726 (= lt!839943 (ite (is-Empty!8684 (c!359071 (charsOf!2656 (head!4847 tokens!456)))) 0 (ite (is-Leaf!12804 (c!359071 (charsOf!2656 (head!4847 tokens!456)))) (csize!17599 (c!359071 (charsOf!2656 (head!4847 tokens!456)))) (csize!17598 (c!359071 (charsOf!2656 (head!4847 tokens!456)))))))))

(assert (=> d!669726 (= (size!21036 (c!359071 (charsOf!2656 (head!4847 tokens!456)))) lt!839943)))

(declare-fun bs!455440 () Bool)

(assert (= bs!455440 d!669726))

(assert (=> bs!455440 m!2689989))

(assert (=> bs!455440 m!2689989))

(declare-fun m!2690245 () Bool)

(assert (=> bs!455440 m!2690245))

(assert (=> d!669672 d!669726))

(declare-fun b!2260726 () Bool)

(declare-fun res!966436 () Bool)

(declare-fun e!1447504 () Bool)

(assert (=> b!2260726 (=> (not res!966436) (not e!1447504))))

(declare-fun lt!839958 () Option!5242)

(assert (=> b!2260726 (= res!966436 (< (size!21031 (_2!15722 (get!8096 lt!839958))) (size!21031 input!1722)))))

(declare-fun b!2260727 () Bool)

(declare-fun res!966437 () Bool)

(assert (=> b!2260727 (=> (not res!966437) (not e!1447504))))

(assert (=> b!2260727 (= res!966437 (= (value!135459 (_1!15722 (get!8096 lt!839958))) (apply!6574 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839958)))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839958)))))))))

(declare-fun b!2260728 () Bool)

(declare-fun res!966434 () Bool)

(assert (=> b!2260728 (=> (not res!966434) (not e!1447504))))

(assert (=> b!2260728 (= res!966434 (= (rule!6578 (_1!15722 (get!8096 lt!839958))) (h!32242 rules!1750)))))

(declare-fun b!2260729 () Bool)

(declare-fun e!1447507 () Option!5242)

(assert (=> b!2260729 (= e!1447507 None!5241)))

(declare-fun b!2260730 () Bool)

(declare-fun e!1447506 () Bool)

(assert (=> b!2260730 (= e!1447506 e!1447504)))

(declare-fun res!966439 () Bool)

(assert (=> b!2260730 (=> (not res!966439) (not e!1447504))))

(assert (=> b!2260730 (= res!966439 (matchR!2877 (regex!4268 (h!32242 rules!1750)) (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839958))))))))

(declare-fun b!2260731 () Bool)

(declare-fun e!1447505 () Bool)

(declare-datatypes ((tuple2!26436 0))(
  ( (tuple2!26437 (_1!15728 List!26934) (_2!15728 List!26934)) )
))
(declare-fun findLongestMatchInner!696 (Regex!6616 List!26934 Int List!26934 List!26934 Int) tuple2!26436)

(assert (=> b!2260731 (= e!1447505 (matchR!2877 (regex!4268 (h!32242 rules!1750)) (_1!15728 (findLongestMatchInner!696 (regex!4268 (h!32242 rules!1750)) Nil!26840 (size!21031 Nil!26840) input!1722 input!1722 (size!21031 input!1722)))))))

(declare-fun b!2260732 () Bool)

(declare-fun lt!839955 () tuple2!26436)

(assert (=> b!2260732 (= e!1447507 (Some!5241 (tuple2!26425 (Token!8015 (apply!6574 (transformation!4268 (h!32242 rules!1750)) (seqFromList!2972 (_1!15728 lt!839955))) (h!32242 rules!1750) (size!21030 (seqFromList!2972 (_1!15728 lt!839955))) (_1!15728 lt!839955)) (_2!15728 lt!839955))))))

(declare-fun lt!839956 () Unit!39770)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!669 (Regex!6616 List!26934) Unit!39770)

(assert (=> b!2260732 (= lt!839956 (longestMatchIsAcceptedByMatchOrIsEmpty!669 (regex!4268 (h!32242 rules!1750)) input!1722))))

(declare-fun res!966435 () Bool)

(assert (=> b!2260732 (= res!966435 (isEmpty!15171 (_1!15728 (findLongestMatchInner!696 (regex!4268 (h!32242 rules!1750)) Nil!26840 (size!21031 Nil!26840) input!1722 input!1722 (size!21031 input!1722)))))))

(assert (=> b!2260732 (=> res!966435 e!1447505)))

(assert (=> b!2260732 e!1447505))

(declare-fun lt!839957 () Unit!39770)

(assert (=> b!2260732 (= lt!839957 lt!839956)))

(declare-fun lt!839954 () Unit!39770)

(declare-fun lemmaSemiInverse!1019 (TokenValueInjection!8400 BalanceConc!17096) Unit!39770)

(assert (=> b!2260732 (= lt!839954 (lemmaSemiInverse!1019 (transformation!4268 (h!32242 rules!1750)) (seqFromList!2972 (_1!15728 lt!839955))))))

(declare-fun d!669728 () Bool)

(assert (=> d!669728 e!1447506))

(declare-fun res!966438 () Bool)

(assert (=> d!669728 (=> res!966438 e!1447506)))

(assert (=> d!669728 (= res!966438 (isEmpty!15172 lt!839958))))

(assert (=> d!669728 (= lt!839958 e!1447507)))

(declare-fun c!359164 () Bool)

(assert (=> d!669728 (= c!359164 (isEmpty!15171 (_1!15728 lt!839955)))))

(declare-fun findLongestMatch!625 (Regex!6616 List!26934) tuple2!26436)

(assert (=> d!669728 (= lt!839955 (findLongestMatch!625 (regex!4268 (h!32242 rules!1750)) input!1722))))

(assert (=> d!669728 (ruleValid!1360 thiss!16613 (h!32242 rules!1750))))

(assert (=> d!669728 (= (maxPrefixOneRule!1337 thiss!16613 (h!32242 rules!1750) input!1722) lt!839958)))

(declare-fun b!2260733 () Bool)

(declare-fun res!966440 () Bool)

(assert (=> b!2260733 (=> (not res!966440) (not e!1447504))))

(assert (=> b!2260733 (= res!966440 (= (++!6532 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839958)))) (_2!15722 (get!8096 lt!839958))) input!1722))))

(declare-fun b!2260734 () Bool)

(assert (=> b!2260734 (= e!1447504 (= (size!21029 (_1!15722 (get!8096 lt!839958))) (size!21031 (originalCharacters!5038 (_1!15722 (get!8096 lt!839958))))))))

(assert (= (and d!669728 c!359164) b!2260729))

(assert (= (and d!669728 (not c!359164)) b!2260732))

(assert (= (and b!2260732 (not res!966435)) b!2260731))

(assert (= (and d!669728 (not res!966438)) b!2260730))

(assert (= (and b!2260730 res!966439) b!2260733))

(assert (= (and b!2260733 res!966440) b!2260726))

(assert (= (and b!2260726 res!966436) b!2260728))

(assert (= (and b!2260728 res!966434) b!2260727))

(assert (= (and b!2260727 res!966437) b!2260734))

(declare-fun m!2690247 () Bool)

(assert (=> b!2260732 m!2690247))

(assert (=> b!2260732 m!2689873))

(declare-fun m!2690249 () Bool)

(assert (=> b!2260732 m!2690249))

(declare-fun m!2690251 () Bool)

(assert (=> b!2260732 m!2690251))

(declare-fun m!2690253 () Bool)

(assert (=> b!2260732 m!2690253))

(assert (=> b!2260732 m!2690247))

(assert (=> b!2260732 m!2689873))

(declare-fun m!2690255 () Bool)

(assert (=> b!2260732 m!2690255))

(assert (=> b!2260732 m!2690251))

(assert (=> b!2260732 m!2690251))

(declare-fun m!2690257 () Bool)

(assert (=> b!2260732 m!2690257))

(assert (=> b!2260732 m!2690251))

(declare-fun m!2690259 () Bool)

(assert (=> b!2260732 m!2690259))

(declare-fun m!2690261 () Bool)

(assert (=> b!2260732 m!2690261))

(declare-fun m!2690263 () Bool)

(assert (=> b!2260726 m!2690263))

(declare-fun m!2690265 () Bool)

(assert (=> b!2260726 m!2690265))

(assert (=> b!2260726 m!2689873))

(declare-fun m!2690267 () Bool)

(assert (=> d!669728 m!2690267))

(declare-fun m!2690269 () Bool)

(assert (=> d!669728 m!2690269))

(declare-fun m!2690271 () Bool)

(assert (=> d!669728 m!2690271))

(declare-fun m!2690273 () Bool)

(assert (=> d!669728 m!2690273))

(assert (=> b!2260727 m!2690263))

(declare-fun m!2690275 () Bool)

(assert (=> b!2260727 m!2690275))

(assert (=> b!2260727 m!2690275))

(declare-fun m!2690277 () Bool)

(assert (=> b!2260727 m!2690277))

(assert (=> b!2260734 m!2690263))

(declare-fun m!2690279 () Bool)

(assert (=> b!2260734 m!2690279))

(assert (=> b!2260730 m!2690263))

(declare-fun m!2690281 () Bool)

(assert (=> b!2260730 m!2690281))

(assert (=> b!2260730 m!2690281))

(declare-fun m!2690283 () Bool)

(assert (=> b!2260730 m!2690283))

(assert (=> b!2260730 m!2690283))

(declare-fun m!2690285 () Bool)

(assert (=> b!2260730 m!2690285))

(assert (=> b!2260728 m!2690263))

(assert (=> b!2260733 m!2690263))

(assert (=> b!2260733 m!2690281))

(assert (=> b!2260733 m!2690281))

(assert (=> b!2260733 m!2690283))

(assert (=> b!2260733 m!2690283))

(declare-fun m!2690287 () Bool)

(assert (=> b!2260733 m!2690287))

(assert (=> b!2260731 m!2690247))

(assert (=> b!2260731 m!2689873))

(assert (=> b!2260731 m!2690247))

(assert (=> b!2260731 m!2689873))

(assert (=> b!2260731 m!2690255))

(declare-fun m!2690289 () Bool)

(assert (=> b!2260731 m!2690289))

(assert (=> bm!135802 d!669728))

(declare-fun d!669730 () Bool)

(declare-fun c!359167 () Bool)

(assert (=> d!669730 (= c!359167 (is-Node!8684 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(declare-fun e!1447512 () Bool)

(assert (=> d!669730 (= (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))) e!1447512)))

(declare-fun b!2260741 () Bool)

(declare-fun inv!36386 (Conc!8684) Bool)

(assert (=> b!2260741 (= e!1447512 (inv!36386 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(declare-fun b!2260742 () Bool)

(declare-fun e!1447513 () Bool)

(assert (=> b!2260742 (= e!1447512 e!1447513)))

(declare-fun res!966443 () Bool)

(assert (=> b!2260742 (= res!966443 (not (is-Leaf!12804 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))))))

(assert (=> b!2260742 (=> res!966443 e!1447513)))

(declare-fun b!2260743 () Bool)

(declare-fun inv!36387 (Conc!8684) Bool)

(assert (=> b!2260743 (= e!1447513 (inv!36387 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(assert (= (and d!669730 c!359167) b!2260741))

(assert (= (and d!669730 (not c!359167)) b!2260742))

(assert (= (and b!2260742 (not res!966443)) b!2260743))

(declare-fun m!2690291 () Bool)

(assert (=> b!2260741 m!2690291))

(declare-fun m!2690293 () Bool)

(assert (=> b!2260743 m!2690293))

(assert (=> b!2260223 d!669730))

(declare-fun d!669732 () Bool)

(assert (=> d!669732 true))

(declare-fun lambda!85314 () Int)

(declare-fun order!14973 () Int)

(declare-fun order!14975 () Int)

(declare-fun dynLambda!11642 (Int Int) Int)

(declare-fun dynLambda!11643 (Int Int) Int)

(assert (=> d!669732 (< (dynLambda!11642 order!14973 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (dynLambda!11643 order!14975 lambda!85314))))

(assert (=> d!669732 true))

(declare-fun order!14977 () Int)

(declare-fun dynLambda!11644 (Int Int) Int)

(assert (=> d!669732 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (dynLambda!11643 order!14975 lambda!85314))))

(declare-fun Forall!1068 (Int) Bool)

(assert (=> d!669732 (= (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (Forall!1068 lambda!85314))))

(declare-fun bs!455443 () Bool)

(assert (= bs!455443 d!669732))

(declare-fun m!2690339 () Bool)

(assert (=> bs!455443 m!2690339))

(assert (=> d!669566 d!669732))

(declare-fun d!669754 () Bool)

(assert (=> d!669754 (= (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (h!32241 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> b!2260367 d!669754))

(declare-fun d!669756 () Bool)

(assert (=> d!669756 (= (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))) (list!10351 (c!359071 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun bs!455444 () Bool)

(assert (= bs!455444 d!669756))

(declare-fun m!2690341 () Bool)

(assert (=> bs!455444 m!2690341))

(assert (=> b!2260287 d!669756))

(declare-fun d!669758 () Bool)

(declare-fun lt!839969 () BalanceConc!17096)

(assert (=> d!669758 (= (list!10348 lt!839969) (originalCharacters!5038 (_1!15722 (get!8096 lt!839853))))))

(assert (=> d!669758 (= lt!839969 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))) (value!135459 (_1!15722 (get!8096 lt!839853)))))))

(assert (=> d!669758 (= (charsOf!2656 (_1!15722 (get!8096 lt!839853))) lt!839969)))

(declare-fun b_lambda!72139 () Bool)

(assert (=> (not b_lambda!72139) (not d!669758)))

(declare-fun tb!133995 () Bool)

(declare-fun t!201625 () Bool)

(assert (=> (and b!2260109 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201625) tb!133995))

(declare-fun b!2260779 () Bool)

(declare-fun e!1447530 () Bool)

(declare-fun tp!714941 () Bool)

(assert (=> b!2260779 (= e!1447530 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))) (value!135459 (_1!15722 (get!8096 lt!839853)))))) tp!714941))))

(declare-fun result!163374 () Bool)

(assert (=> tb!133995 (= result!163374 (and (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))) (value!135459 (_1!15722 (get!8096 lt!839853))))) e!1447530))))

(assert (= tb!133995 b!2260779))

(declare-fun m!2690343 () Bool)

(assert (=> b!2260779 m!2690343))

(declare-fun m!2690345 () Bool)

(assert (=> tb!133995 m!2690345))

(assert (=> d!669758 t!201625))

(declare-fun b_and!177621 () Bool)

(assert (= b_and!177579 (and (=> t!201625 result!163374) b_and!177621)))

(declare-fun t!201627 () Bool)

(declare-fun tb!133997 () Bool)

(assert (=> (and b!2260116 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201627) tb!133997))

(declare-fun result!163376 () Bool)

(assert (= result!163376 result!163374))

(assert (=> d!669758 t!201627))

(declare-fun b_and!177623 () Bool)

(assert (= b_and!177581 (and (=> t!201627 result!163376) b_and!177623)))

(declare-fun t!201629 () Bool)

(declare-fun tb!133999 () Bool)

(assert (=> (and b!2260523 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201629) tb!133999))

(declare-fun result!163378 () Bool)

(assert (= result!163378 result!163374))

(assert (=> d!669758 t!201629))

(declare-fun b_and!177625 () Bool)

(assert (= b_and!177599 (and (=> t!201629 result!163378) b_and!177625)))

(declare-fun tb!134001 () Bool)

(declare-fun t!201631 () Bool)

(assert (=> (and b!2260478 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201631) tb!134001))

(declare-fun result!163380 () Bool)

(assert (= result!163380 result!163374))

(assert (=> d!669758 t!201631))

(declare-fun b_and!177627 () Bool)

(assert (= b_and!177595 (and (=> t!201631 result!163380) b_and!177627)))

(declare-fun t!201633 () Bool)

(declare-fun tb!134003 () Bool)

(assert (=> (and b!2260091 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201633) tb!134003))

(declare-fun result!163382 () Bool)

(assert (= result!163382 result!163374))

(assert (=> d!669758 t!201633))

(declare-fun b_and!177629 () Bool)

(assert (= b_and!177583 (and (=> t!201633 result!163382) b_and!177629)))

(declare-fun tb!134005 () Bool)

(declare-fun t!201635 () Bool)

(assert (=> (and b!2260086 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201635) tb!134005))

(declare-fun result!163384 () Bool)

(assert (= result!163384 result!163374))

(assert (=> d!669758 t!201635))

(declare-fun b_and!177631 () Bool)

(assert (= b_and!177577 (and (=> t!201635 result!163384) b_and!177631)))

(declare-fun m!2690347 () Bool)

(assert (=> d!669758 m!2690347))

(declare-fun m!2690349 () Bool)

(assert (=> d!669758 m!2690349))

(assert (=> b!2260287 d!669758))

(declare-fun d!669760 () Bool)

(assert (=> d!669760 (= (get!8096 lt!839853) (v!30273 lt!839853))))

(assert (=> b!2260287 d!669760))

(declare-fun d!669762 () Bool)

(declare-fun lt!839970 () Bool)

(assert (=> d!669762 (= lt!839970 (set.member otherR!12 (content!3573 (t!201553 rules!1750))))))

(declare-fun e!1447532 () Bool)

(assert (=> d!669762 (= lt!839970 e!1447532)))

(declare-fun res!966465 () Bool)

(assert (=> d!669762 (=> (not res!966465) (not e!1447532))))

(assert (=> d!669762 (= res!966465 (is-Cons!26841 (t!201553 rules!1750)))))

(assert (=> d!669762 (= (contains!4622 (t!201553 rules!1750) otherR!12) lt!839970)))

(declare-fun b!2260780 () Bool)

(declare-fun e!1447531 () Bool)

(assert (=> b!2260780 (= e!1447532 e!1447531)))

(declare-fun res!966464 () Bool)

(assert (=> b!2260780 (=> res!966464 e!1447531)))

(assert (=> b!2260780 (= res!966464 (= (h!32242 (t!201553 rules!1750)) otherR!12))))

(declare-fun b!2260781 () Bool)

(assert (=> b!2260781 (= e!1447531 (contains!4622 (t!201553 (t!201553 rules!1750)) otherR!12))))

(assert (= (and d!669762 res!966465) b!2260780))

(assert (= (and b!2260780 (not res!966464)) b!2260781))

(assert (=> d!669762 m!2690233))

(declare-fun m!2690351 () Bool)

(assert (=> d!669762 m!2690351))

(declare-fun m!2690353 () Bool)

(assert (=> b!2260781 m!2690353))

(assert (=> b!2260458 d!669762))

(declare-fun b!2260782 () Bool)

(declare-fun e!1447534 () Option!5242)

(declare-fun lt!839973 () Option!5242)

(declare-fun lt!839974 () Option!5242)

(assert (=> b!2260782 (= e!1447534 (ite (and (is-None!5241 lt!839973) (is-None!5241 lt!839974)) None!5241 (ite (is-None!5241 lt!839974) lt!839973 (ite (is-None!5241 lt!839973) lt!839974 (ite (>= (size!21029 (_1!15722 (v!30273 lt!839973))) (size!21029 (_1!15722 (v!30273 lt!839974)))) lt!839973 lt!839974)))))))

(declare-fun call!135818 () Option!5242)

(assert (=> b!2260782 (= lt!839973 call!135818)))

(assert (=> b!2260782 (= lt!839974 (maxPrefix!2139 thiss!16613 (t!201553 (t!201553 rules!1750)) input!1722))))

(declare-fun b!2260783 () Bool)

(declare-fun res!966466 () Bool)

(declare-fun e!1447535 () Bool)

(assert (=> b!2260783 (=> (not res!966466) (not e!1447535))))

(declare-fun lt!839972 () Option!5242)

(assert (=> b!2260783 (= res!966466 (< (size!21031 (_2!15722 (get!8096 lt!839972))) (size!21031 input!1722)))))

(declare-fun b!2260784 () Bool)

(declare-fun res!966467 () Bool)

(assert (=> b!2260784 (=> (not res!966467) (not e!1447535))))

(assert (=> b!2260784 (= res!966467 (= (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839972)))) (originalCharacters!5038 (_1!15722 (get!8096 lt!839972)))))))

(declare-fun b!2260785 () Bool)

(assert (=> b!2260785 (= e!1447535 (contains!4622 (t!201553 rules!1750) (rule!6578 (_1!15722 (get!8096 lt!839972)))))))

(declare-fun b!2260786 () Bool)

(declare-fun e!1447533 () Bool)

(assert (=> b!2260786 (= e!1447533 e!1447535)))

(declare-fun res!966469 () Bool)

(assert (=> b!2260786 (=> (not res!966469) (not e!1447535))))

(assert (=> b!2260786 (= res!966469 (isDefined!4191 lt!839972))))

(declare-fun b!2260788 () Bool)

(assert (=> b!2260788 (= e!1447534 call!135818)))

(declare-fun b!2260789 () Bool)

(declare-fun res!966472 () Bool)

(assert (=> b!2260789 (=> (not res!966472) (not e!1447535))))

(assert (=> b!2260789 (= res!966472 (= (value!135459 (_1!15722 (get!8096 lt!839972))) (apply!6574 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839972)))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839972)))))))))

(declare-fun bm!135813 () Bool)

(assert (=> bm!135813 (= call!135818 (maxPrefixOneRule!1337 thiss!16613 (h!32242 (t!201553 rules!1750)) input!1722))))

(declare-fun b!2260790 () Bool)

(declare-fun res!966468 () Bool)

(assert (=> b!2260790 (=> (not res!966468) (not e!1447535))))

(assert (=> b!2260790 (= res!966468 (matchR!2877 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839972)))) (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839972))))))))

(declare-fun b!2260787 () Bool)

(declare-fun res!966471 () Bool)

(assert (=> b!2260787 (=> (not res!966471) (not e!1447535))))

(assert (=> b!2260787 (= res!966471 (= (++!6532 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839972)))) (_2!15722 (get!8096 lt!839972))) input!1722))))

(declare-fun d!669764 () Bool)

(assert (=> d!669764 e!1447533))

(declare-fun res!966470 () Bool)

(assert (=> d!669764 (=> res!966470 e!1447533)))

(assert (=> d!669764 (= res!966470 (isEmpty!15172 lt!839972))))

(assert (=> d!669764 (= lt!839972 e!1447534)))

(declare-fun c!359176 () Bool)

(assert (=> d!669764 (= c!359176 (and (is-Cons!26841 (t!201553 rules!1750)) (is-Nil!26841 (t!201553 (t!201553 rules!1750)))))))

(declare-fun lt!839975 () Unit!39770)

(declare-fun lt!839971 () Unit!39770)

(assert (=> d!669764 (= lt!839975 lt!839971)))

(assert (=> d!669764 (isPrefix!2258 input!1722 input!1722)))

(assert (=> d!669764 (= lt!839971 (lemmaIsPrefixRefl!1446 input!1722 input!1722))))

(assert (=> d!669764 (rulesValidInductive!1488 thiss!16613 (t!201553 rules!1750))))

(assert (=> d!669764 (= (maxPrefix!2139 thiss!16613 (t!201553 rules!1750) input!1722) lt!839972)))

(assert (= (and d!669764 c!359176) b!2260788))

(assert (= (and d!669764 (not c!359176)) b!2260782))

(assert (= (or b!2260788 b!2260782) bm!135813))

(assert (= (and d!669764 (not res!966470)) b!2260786))

(assert (= (and b!2260786 res!966469) b!2260784))

(assert (= (and b!2260784 res!966467) b!2260783))

(assert (= (and b!2260783 res!966466) b!2260787))

(assert (= (and b!2260787 res!966471) b!2260789))

(assert (= (and b!2260789 res!966472) b!2260790))

(assert (= (and b!2260790 res!966468) b!2260785))

(declare-fun m!2690355 () Bool)

(assert (=> b!2260782 m!2690355))

(declare-fun m!2690357 () Bool)

(assert (=> b!2260783 m!2690357))

(declare-fun m!2690359 () Bool)

(assert (=> b!2260783 m!2690359))

(assert (=> b!2260783 m!2689873))

(assert (=> b!2260785 m!2690357))

(declare-fun m!2690361 () Bool)

(assert (=> b!2260785 m!2690361))

(declare-fun m!2690363 () Bool)

(assert (=> b!2260786 m!2690363))

(declare-fun m!2690365 () Bool)

(assert (=> bm!135813 m!2690365))

(declare-fun m!2690367 () Bool)

(assert (=> d!669764 m!2690367))

(assert (=> d!669764 m!2689923))

(assert (=> d!669764 m!2689925))

(declare-fun m!2690369 () Bool)

(assert (=> d!669764 m!2690369))

(assert (=> b!2260790 m!2690357))

(declare-fun m!2690371 () Bool)

(assert (=> b!2260790 m!2690371))

(assert (=> b!2260790 m!2690371))

(declare-fun m!2690373 () Bool)

(assert (=> b!2260790 m!2690373))

(assert (=> b!2260790 m!2690373))

(declare-fun m!2690375 () Bool)

(assert (=> b!2260790 m!2690375))

(assert (=> b!2260787 m!2690357))

(assert (=> b!2260787 m!2690371))

(assert (=> b!2260787 m!2690371))

(assert (=> b!2260787 m!2690373))

(assert (=> b!2260787 m!2690373))

(declare-fun m!2690377 () Bool)

(assert (=> b!2260787 m!2690377))

(assert (=> b!2260784 m!2690357))

(assert (=> b!2260784 m!2690371))

(assert (=> b!2260784 m!2690371))

(assert (=> b!2260784 m!2690373))

(assert (=> b!2260789 m!2690357))

(declare-fun m!2690379 () Bool)

(assert (=> b!2260789 m!2690379))

(assert (=> b!2260789 m!2690379))

(declare-fun m!2690381 () Bool)

(assert (=> b!2260789 m!2690381))

(assert (=> b!2260285 d!669764))

(declare-fun d!669766 () Bool)

(assert (=> d!669766 (= (isDefined!4191 lt!839853) (not (isEmpty!15172 lt!839853)))))

(declare-fun bs!455445 () Bool)

(assert (= bs!455445 d!669766))

(assert (=> bs!455445 m!2689921))

(assert (=> b!2260289 d!669766))

(declare-fun d!669768 () Bool)

(assert (=> d!669768 (= (isEmpty!15171 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (is-Nil!26840 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))

(assert (=> d!669606 d!669768))

(declare-fun b!2260809 () Bool)

(declare-fun e!1447550 () Bool)

(declare-fun e!1447552 () Bool)

(assert (=> b!2260809 (= e!1447550 e!1447552)))

(declare-fun c!359181 () Bool)

(assert (=> b!2260809 (= c!359181 (is-Union!6616 (regex!4268 r!2363)))))

(declare-fun b!2260810 () Bool)

(declare-fun res!966485 () Bool)

(declare-fun e!1447554 () Bool)

(assert (=> b!2260810 (=> (not res!966485) (not e!1447554))))

(declare-fun call!135825 () Bool)

(assert (=> b!2260810 (= res!966485 call!135825)))

(assert (=> b!2260810 (= e!1447552 e!1447554)))

(declare-fun bm!135820 () Bool)

(declare-fun c!359182 () Bool)

(declare-fun call!135826 () Bool)

(assert (=> bm!135820 (= call!135826 (validRegex!2475 (ite c!359182 (reg!6945 (regex!4268 r!2363)) (ite c!359181 (regTwo!13745 (regex!4268 r!2363)) (regOne!13744 (regex!4268 r!2363))))))))

(declare-fun bm!135821 () Bool)

(declare-fun call!135827 () Bool)

(assert (=> bm!135821 (= call!135827 call!135826)))

(declare-fun b!2260811 () Bool)

(declare-fun e!1447553 () Bool)

(assert (=> b!2260811 (= e!1447553 e!1447550)))

(assert (=> b!2260811 (= c!359182 (is-Star!6616 (regex!4268 r!2363)))))

(declare-fun b!2260812 () Bool)

(declare-fun e!1447555 () Bool)

(assert (=> b!2260812 (= e!1447550 e!1447555)))

(declare-fun res!966486 () Bool)

(assert (=> b!2260812 (= res!966486 (not (nullable!1817 (reg!6945 (regex!4268 r!2363)))))))

(assert (=> b!2260812 (=> (not res!966486) (not e!1447555))))

(declare-fun b!2260813 () Bool)

(assert (=> b!2260813 (= e!1447554 call!135827)))

(declare-fun b!2260814 () Bool)

(assert (=> b!2260814 (= e!1447555 call!135826)))

(declare-fun b!2260815 () Bool)

(declare-fun res!966483 () Bool)

(declare-fun e!1447556 () Bool)

(assert (=> b!2260815 (=> res!966483 e!1447556)))

(assert (=> b!2260815 (= res!966483 (not (is-Concat!11047 (regex!4268 r!2363))))))

(assert (=> b!2260815 (= e!1447552 e!1447556)))

(declare-fun b!2260816 () Bool)

(declare-fun e!1447551 () Bool)

(assert (=> b!2260816 (= e!1447556 e!1447551)))

(declare-fun res!966484 () Bool)

(assert (=> b!2260816 (=> (not res!966484) (not e!1447551))))

(assert (=> b!2260816 (= res!966484 call!135827)))

(declare-fun b!2260817 () Bool)

(assert (=> b!2260817 (= e!1447551 call!135825)))

(declare-fun bm!135822 () Bool)

(assert (=> bm!135822 (= call!135825 (validRegex!2475 (ite c!359181 (regOne!13745 (regex!4268 r!2363)) (regTwo!13744 (regex!4268 r!2363)))))))

(declare-fun d!669770 () Bool)

(declare-fun res!966487 () Bool)

(assert (=> d!669770 (=> res!966487 e!1447553)))

(assert (=> d!669770 (= res!966487 (is-ElementMatch!6616 (regex!4268 r!2363)))))

(assert (=> d!669770 (= (validRegex!2475 (regex!4268 r!2363)) e!1447553)))

(assert (= (and d!669770 (not res!966487)) b!2260811))

(assert (= (and b!2260811 c!359182) b!2260812))

(assert (= (and b!2260811 (not c!359182)) b!2260809))

(assert (= (and b!2260812 res!966486) b!2260814))

(assert (= (and b!2260809 c!359181) b!2260810))

(assert (= (and b!2260809 (not c!359181)) b!2260815))

(assert (= (and b!2260810 res!966485) b!2260813))

(assert (= (and b!2260815 (not res!966483)) b!2260816))

(assert (= (and b!2260816 res!966484) b!2260817))

(assert (= (or b!2260810 b!2260817) bm!135822))

(assert (= (or b!2260813 b!2260816) bm!135821))

(assert (= (or b!2260814 bm!135821) bm!135820))

(declare-fun m!2690383 () Bool)

(assert (=> bm!135820 m!2690383))

(declare-fun m!2690385 () Bool)

(assert (=> b!2260812 m!2690385))

(declare-fun m!2690387 () Bool)

(assert (=> bm!135822 m!2690387))

(assert (=> d!669606 d!669770))

(declare-fun d!669772 () Bool)

(declare-fun lt!839976 () Int)

(assert (=> d!669772 (>= lt!839976 0)))

(declare-fun e!1447557 () Int)

(assert (=> d!669772 (= lt!839976 e!1447557)))

(declare-fun c!359183 () Bool)

(assert (=> d!669772 (= c!359183 (is-Nil!26840 (originalCharacters!5038 (h!32243 tokens!456))))))

(assert (=> d!669772 (= (size!21031 (originalCharacters!5038 (h!32243 tokens!456))) lt!839976)))

(declare-fun b!2260818 () Bool)

(assert (=> b!2260818 (= e!1447557 0)))

(declare-fun b!2260819 () Bool)

(assert (=> b!2260819 (= e!1447557 (+ 1 (size!21031 (t!201552 (originalCharacters!5038 (h!32243 tokens!456))))))))

(assert (= (and d!669772 c!359183) b!2260818))

(assert (= (and d!669772 (not c!359183)) b!2260819))

(declare-fun m!2690389 () Bool)

(assert (=> b!2260819 m!2690389))

(assert (=> b!2260218 d!669772))

(declare-fun b!2260820 () Bool)

(declare-fun e!1447560 () Bool)

(assert (=> b!2260820 (= e!1447560 (inv!15 (value!135459 (h!32243 (t!201554 tokens!456)))))))

(declare-fun b!2260821 () Bool)

(declare-fun e!1447559 () Bool)

(declare-fun e!1447558 () Bool)

(assert (=> b!2260821 (= e!1447559 e!1447558)))

(declare-fun c!359185 () Bool)

(assert (=> b!2260821 (= c!359185 (is-IntegerValue!13291 (value!135459 (h!32243 (t!201554 tokens!456)))))))

(declare-fun b!2260822 () Bool)

(assert (=> b!2260822 (= e!1447558 (inv!17 (value!135459 (h!32243 (t!201554 tokens!456)))))))

(declare-fun b!2260823 () Bool)

(assert (=> b!2260823 (= e!1447559 (inv!16 (value!135459 (h!32243 (t!201554 tokens!456)))))))

(declare-fun d!669774 () Bool)

(declare-fun c!359184 () Bool)

(assert (=> d!669774 (= c!359184 (is-IntegerValue!13290 (value!135459 (h!32243 (t!201554 tokens!456)))))))

(assert (=> d!669774 (= (inv!21 (value!135459 (h!32243 (t!201554 tokens!456)))) e!1447559)))

(declare-fun b!2260824 () Bool)

(declare-fun res!966488 () Bool)

(assert (=> b!2260824 (=> res!966488 e!1447560)))

(assert (=> b!2260824 (= res!966488 (not (is-IntegerValue!13292 (value!135459 (h!32243 (t!201554 tokens!456))))))))

(assert (=> b!2260824 (= e!1447558 e!1447560)))

(assert (= (and d!669774 c!359184) b!2260823))

(assert (= (and d!669774 (not c!359184)) b!2260821))

(assert (= (and b!2260821 c!359185) b!2260822))

(assert (= (and b!2260821 (not c!359185)) b!2260824))

(assert (= (and b!2260824 (not res!966488)) b!2260820))

(declare-fun m!2690391 () Bool)

(assert (=> b!2260820 m!2690391))

(declare-fun m!2690393 () Bool)

(assert (=> b!2260822 m!2690393))

(declare-fun m!2690395 () Bool)

(assert (=> b!2260823 m!2690395))

(assert (=> b!2260476 d!669774))

(declare-fun b!2260827 () Bool)

(declare-fun e!1447561 () Int)

(assert (=> b!2260827 (= e!1447561 (+ 1 (getIndex!289 (t!201553 (t!201553 rules!1750)) r!2363)))))

(declare-fun d!669776 () Bool)

(declare-fun lt!839977 () Int)

(assert (=> d!669776 (>= lt!839977 0)))

(declare-fun e!1447562 () Int)

(assert (=> d!669776 (= lt!839977 e!1447562)))

(declare-fun c!359186 () Bool)

(assert (=> d!669776 (= c!359186 (and (is-Cons!26841 (t!201553 rules!1750)) (= (h!32242 (t!201553 rules!1750)) r!2363)))))

(assert (=> d!669776 (contains!4622 (t!201553 rules!1750) r!2363)))

(assert (=> d!669776 (= (getIndex!289 (t!201553 rules!1750) r!2363) lt!839977)))

(declare-fun b!2260826 () Bool)

(assert (=> b!2260826 (= e!1447562 e!1447561)))

(declare-fun c!359187 () Bool)

(assert (=> b!2260826 (= c!359187 (and (is-Cons!26841 (t!201553 rules!1750)) (not (= (h!32242 (t!201553 rules!1750)) r!2363))))))

(declare-fun b!2260828 () Bool)

(assert (=> b!2260828 (= e!1447561 (- 1))))

(declare-fun b!2260825 () Bool)

(assert (=> b!2260825 (= e!1447562 0)))

(assert (= (and d!669776 c!359186) b!2260825))

(assert (= (and d!669776 (not c!359186)) b!2260826))

(assert (= (and b!2260826 c!359187) b!2260827))

(assert (= (and b!2260826 (not c!359187)) b!2260828))

(declare-fun m!2690397 () Bool)

(assert (=> b!2260827 m!2690397))

(assert (=> d!669776 m!2689969))

(assert (=> b!2260452 d!669776))

(declare-fun d!669778 () Bool)

(declare-fun charsToBigInt!0 (List!26933 Int) Int)

(assert (=> d!669778 (= (inv!15 (value!135459 (h!32243 tokens!456))) (= (charsToBigInt!0 (text!31459 (value!135459 (h!32243 tokens!456))) 0) (value!135454 (value!135459 (h!32243 tokens!456)))))))

(declare-fun bs!455446 () Bool)

(assert (= bs!455446 d!669778))

(declare-fun m!2690399 () Bool)

(assert (=> bs!455446 m!2690399))

(assert (=> b!2260324 d!669778))

(declare-fun bs!455447 () Bool)

(declare-fun d!669780 () Bool)

(assert (= bs!455447 (and d!669780 d!669732)))

(declare-fun lambda!85315 () Int)

(assert (=> bs!455447 (= (and (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (= (toValue!6014 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (= lambda!85315 lambda!85314))))

(assert (=> d!669780 true))

(assert (=> d!669780 (< (dynLambda!11642 order!14973 (toChars!5873 (transformation!4268 (h!32242 rules!1750)))) (dynLambda!11643 order!14975 lambda!85315))))

(assert (=> d!669780 true))

(assert (=> d!669780 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 (h!32242 rules!1750)))) (dynLambda!11643 order!14975 lambda!85315))))

(assert (=> d!669780 (= (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (h!32242 rules!1750)))) (Forall!1068 lambda!85315))))

(declare-fun bs!455448 () Bool)

(assert (= bs!455448 d!669780))

(declare-fun m!2690401 () Bool)

(assert (=> bs!455448 m!2690401))

(assert (=> d!669602 d!669780))

(assert (=> d!669670 d!669712))

(declare-fun d!669782 () Bool)

(declare-fun lt!839978 () Int)

(assert (=> d!669782 (>= lt!839978 0)))

(declare-fun e!1447563 () Int)

(assert (=> d!669782 (= lt!839978 e!1447563)))

(declare-fun c!359188 () Bool)

(assert (=> d!669782 (= c!359188 (is-Nil!26840 (t!201552 otherP!12)))))

(assert (=> d!669782 (= (size!21031 (t!201552 otherP!12)) lt!839978)))

(declare-fun b!2260829 () Bool)

(assert (=> b!2260829 (= e!1447563 0)))

(declare-fun b!2260830 () Bool)

(assert (=> b!2260830 (= e!1447563 (+ 1 (size!21031 (t!201552 (t!201552 otherP!12)))))))

(assert (= (and d!669782 c!359188) b!2260829))

(assert (= (and d!669782 (not c!359188)) b!2260830))

(declare-fun m!2690403 () Bool)

(assert (=> b!2260830 m!2690403))

(assert (=> b!2260464 d!669782))

(declare-fun d!669784 () Bool)

(assert (=> d!669784 true))

(declare-fun lt!839981 () Bool)

(assert (=> d!669784 (= lt!839981 (rulesValidInductive!1488 thiss!16613 rules!1750))))

(declare-fun lambda!85318 () Int)

(declare-fun forall!5471 (List!26935 Int) Bool)

(assert (=> d!669784 (= lt!839981 (forall!5471 rules!1750 lambda!85318))))

(assert (=> d!669784 (= (rulesValid!1563 thiss!16613 rules!1750) lt!839981)))

(declare-fun bs!455449 () Bool)

(assert (= bs!455449 d!669784))

(assert (=> bs!455449 m!2689927))

(declare-fun m!2690405 () Bool)

(assert (=> bs!455449 m!2690405))

(assert (=> d!669570 d!669784))

(declare-fun d!669786 () Bool)

(declare-fun lt!839982 () Bool)

(assert (=> d!669786 (= lt!839982 (set.member r!2363 (content!3573 (t!201553 rules!1750))))))

(declare-fun e!1447565 () Bool)

(assert (=> d!669786 (= lt!839982 e!1447565)))

(declare-fun res!966490 () Bool)

(assert (=> d!669786 (=> (not res!966490) (not e!1447565))))

(assert (=> d!669786 (= res!966490 (is-Cons!26841 (t!201553 rules!1750)))))

(assert (=> d!669786 (= (contains!4622 (t!201553 rules!1750) r!2363) lt!839982)))

(declare-fun b!2260833 () Bool)

(declare-fun e!1447564 () Bool)

(assert (=> b!2260833 (= e!1447565 e!1447564)))

(declare-fun res!966489 () Bool)

(assert (=> b!2260833 (=> res!966489 e!1447564)))

(assert (=> b!2260833 (= res!966489 (= (h!32242 (t!201553 rules!1750)) r!2363))))

(declare-fun b!2260834 () Bool)

(assert (=> b!2260834 (= e!1447564 (contains!4622 (t!201553 (t!201553 rules!1750)) r!2363))))

(assert (= (and d!669786 res!966490) b!2260833))

(assert (= (and b!2260833 (not res!966489)) b!2260834))

(assert (=> d!669786 m!2690233))

(declare-fun m!2690407 () Bool)

(assert (=> d!669786 m!2690407))

(declare-fun m!2690409 () Bool)

(assert (=> b!2260834 m!2690409))

(assert (=> b!2260335 d!669786))

(declare-fun d!669788 () Bool)

(assert (=> d!669788 (= r!2363 otherR!12)))

(assert (=> d!669788 true))

(declare-fun _$42!184 () Unit!39770)

(assert (=> d!669788 (= (choose!13219 rules!1750 r!2363 otherR!12) _$42!184)))

(assert (=> d!669572 d!669788))

(assert (=> d!669572 d!669604))

(assert (=> bm!135805 d!669768))

(assert (=> d!669664 d!669662))

(declare-fun d!669790 () Bool)

(assert (=> d!669790 (ruleValid!1360 thiss!16613 otherR!12)))

(assert (=> d!669790 true))

(declare-fun _$65!1060 () Unit!39770)

(assert (=> d!669790 (= (choose!13220 thiss!16613 otherR!12 rules!1750) _$65!1060)))

(declare-fun bs!455450 () Bool)

(assert (= bs!455450 d!669790))

(assert (=> bs!455450 m!2689763))

(assert (=> d!669664 d!669790))

(assert (=> d!669664 d!669670))

(assert (=> d!669594 d!669592))

(declare-fun d!669792 () Bool)

(assert (=> d!669792 (ruleValid!1360 thiss!16613 r!2363)))

(assert (=> d!669792 true))

(declare-fun _$65!1061 () Unit!39770)

(assert (=> d!669792 (= (choose!13220 thiss!16613 r!2363 rules!1750) _$65!1061)))

(declare-fun bs!455451 () Bool)

(assert (= bs!455451 d!669792))

(assert (=> bs!455451 m!2689773))

(assert (=> d!669594 d!669792))

(assert (=> d!669594 d!669604))

(declare-fun d!669794 () Bool)

(assert (=> d!669794 true))

(declare-fun order!14979 () Int)

(declare-fun lambda!85321 () Int)

(declare-fun dynLambda!11645 (Int Int) Int)

(assert (=> d!669794 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 r!2363))) (dynLambda!11645 order!14979 lambda!85321))))

(declare-fun Forall2!685 (Int) Bool)

(assert (=> d!669794 (= (equivClasses!1638 (toChars!5873 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 r!2363))) (Forall2!685 lambda!85321))))

(declare-fun bs!455452 () Bool)

(assert (= bs!455452 d!669794))

(declare-fun m!2690411 () Bool)

(assert (=> bs!455452 m!2690411))

(assert (=> b!2260437 d!669794))

(declare-fun d!669796 () Bool)

(declare-fun isBalanced!2658 (Conc!8684) Bool)

(assert (=> d!669796 (= (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))) (isBalanced!2658 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))))))

(declare-fun bs!455453 () Bool)

(assert (= bs!455453 d!669796))

(declare-fun m!2690413 () Bool)

(assert (=> bs!455453 m!2690413))

(assert (=> tb!133951 d!669796))

(assert (=> b!2260377 d!669754))

(declare-fun bs!455454 () Bool)

(declare-fun d!669798 () Bool)

(assert (= bs!455454 (and d!669798 d!669794)))

(declare-fun lambda!85322 () Int)

(assert (=> bs!455454 (= (= (toValue!6014 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 r!2363))) (= lambda!85322 lambda!85321))))

(assert (=> d!669798 true))

(assert (=> d!669798 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 otherR!12))) (dynLambda!11645 order!14979 lambda!85322))))

(assert (=> d!669798 (= (equivClasses!1638 (toChars!5873 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 otherR!12))) (Forall2!685 lambda!85322))))

(declare-fun bs!455455 () Bool)

(assert (= bs!455455 d!669798))

(declare-fun m!2690415 () Bool)

(assert (=> bs!455455 m!2690415))

(assert (=> b!2260456 d!669798))

(declare-fun d!669800 () Bool)

(assert (=> d!669800 (= (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))) (isBalanced!2658 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(declare-fun bs!455456 () Bool)

(assert (= bs!455456 d!669800))

(declare-fun m!2690417 () Bool)

(assert (=> bs!455456 m!2690417))

(assert (=> tb!133935 d!669800))

(declare-fun d!669802 () Bool)

(assert (=> d!669802 (= (list!10348 lt!839875) (list!10351 (c!359071 lt!839875)))))

(declare-fun bs!455457 () Bool)

(assert (= bs!455457 d!669802))

(declare-fun m!2690419 () Bool)

(assert (=> bs!455457 m!2690419))

(assert (=> d!669616 d!669802))

(assert (=> d!669592 d!669770))

(declare-fun b!2260841 () Bool)

(declare-fun e!1447568 () Int)

(assert (=> b!2260841 (= e!1447568 (+ 1 (getIndex!289 (t!201553 (t!201553 rules!1750)) otherR!12)))))

(declare-fun d!669804 () Bool)

(declare-fun lt!839983 () Int)

(assert (=> d!669804 (>= lt!839983 0)))

(declare-fun e!1447569 () Int)

(assert (=> d!669804 (= lt!839983 e!1447569)))

(declare-fun c!359189 () Bool)

(assert (=> d!669804 (= c!359189 (and (is-Cons!26841 (t!201553 rules!1750)) (= (h!32242 (t!201553 rules!1750)) otherR!12)))))

(assert (=> d!669804 (contains!4622 (t!201553 rules!1750) otherR!12)))

(assert (=> d!669804 (= (getIndex!289 (t!201553 rules!1750) otherR!12) lt!839983)))

(declare-fun b!2260840 () Bool)

(assert (=> b!2260840 (= e!1447569 e!1447568)))

(declare-fun c!359190 () Bool)

(assert (=> b!2260840 (= c!359190 (and (is-Cons!26841 (t!201553 rules!1750)) (not (= (h!32242 (t!201553 rules!1750)) otherR!12))))))

(declare-fun b!2260842 () Bool)

(assert (=> b!2260842 (= e!1447568 (- 1))))

(declare-fun b!2260839 () Bool)

(assert (=> b!2260839 (= e!1447569 0)))

(assert (= (and d!669804 c!359189) b!2260839))

(assert (= (and d!669804 (not c!359189)) b!2260840))

(assert (= (and b!2260840 c!359190) b!2260841))

(assert (= (and b!2260840 (not c!359190)) b!2260842))

(declare-fun m!2690421 () Bool)

(assert (=> b!2260841 m!2690421))

(assert (=> d!669804 m!2690091))

(assert (=> b!2260448 d!669804))

(declare-fun d!669806 () Bool)

(assert (=> d!669806 (= (isEmpty!15172 (maxPrefix!2139 thiss!16613 rules!1750 input!1722)) (not (is-Some!5241 (maxPrefix!2139 thiss!16613 rules!1750 input!1722))))))

(assert (=> d!669576 d!669806))

(declare-fun d!669808 () Bool)

(declare-fun res!966497 () Bool)

(declare-fun e!1447574 () Bool)

(assert (=> d!669808 (=> res!966497 e!1447574)))

(assert (=> d!669808 (= res!966497 (is-Nil!26841 rules!1750))))

(assert (=> d!669808 (= (noDuplicateTag!1561 thiss!16613 rules!1750 Nil!26847) e!1447574)))

(declare-fun b!2260847 () Bool)

(declare-fun e!1447575 () Bool)

(assert (=> b!2260847 (= e!1447574 e!1447575)))

(declare-fun res!966498 () Bool)

(assert (=> b!2260847 (=> (not res!966498) (not e!1447575))))

(declare-fun contains!4624 (List!26941 String!29256) Bool)

(assert (=> b!2260847 (= res!966498 (not (contains!4624 Nil!26847 (tag!4758 (h!32242 rules!1750)))))))

(declare-fun b!2260848 () Bool)

(assert (=> b!2260848 (= e!1447575 (noDuplicateTag!1561 thiss!16613 (t!201553 rules!1750) (Cons!26847 (tag!4758 (h!32242 rules!1750)) Nil!26847)))))

(assert (= (and d!669808 (not res!966497)) b!2260847))

(assert (= (and b!2260847 res!966498) b!2260848))

(declare-fun m!2690423 () Bool)

(assert (=> b!2260847 m!2690423))

(declare-fun m!2690425 () Bool)

(assert (=> b!2260848 m!2690425))

(assert (=> b!2260241 d!669808))

(declare-fun d!669810 () Bool)

(declare-fun charsToInt!0 (List!26933) (_ BitVec 32))

(assert (=> d!669810 (= (inv!16 (value!135459 (h!32243 tokens!456))) (= (charsToInt!0 (text!31457 (value!135459 (h!32243 tokens!456)))) (value!135450 (value!135459 (h!32243 tokens!456)))))))

(declare-fun bs!455458 () Bool)

(assert (= bs!455458 d!669810))

(declare-fun m!2690427 () Bool)

(assert (=> bs!455458 m!2690427))

(assert (=> b!2260327 d!669810))

(declare-fun d!669812 () Bool)

(assert (=> d!669812 (= (inv!36375 (tag!4758 (rule!6578 (h!32243 (t!201554 tokens!456))))) (= (mod (str.len (value!135458 (tag!4758 (rule!6578 (h!32243 (t!201554 tokens!456)))))) 2) 0))))

(assert (=> b!2260477 d!669812))

(declare-fun d!669814 () Bool)

(declare-fun res!966499 () Bool)

(declare-fun e!1447576 () Bool)

(assert (=> d!669814 (=> (not res!966499) (not e!1447576))))

(assert (=> d!669814 (= res!966499 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))))))

(assert (=> d!669814 (= (inv!36378 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) e!1447576)))

(declare-fun b!2260849 () Bool)

(assert (=> b!2260849 (= e!1447576 (equivClasses!1638 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))))))

(assert (= (and d!669814 res!966499) b!2260849))

(declare-fun m!2690429 () Bool)

(assert (=> d!669814 m!2690429))

(declare-fun m!2690431 () Bool)

(assert (=> b!2260849 m!2690431))

(assert (=> b!2260477 d!669814))

(assert (=> b!2260292 d!669760))

(declare-fun d!669816 () Bool)

(declare-fun dynLambda!11646 (Int BalanceConc!17096) TokenValue!4430)

(assert (=> d!669816 (= (apply!6574 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853))))) (dynLambda!11646 (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun b_lambda!72141 () Bool)

(assert (=> (not b_lambda!72141) (not d!669816)))

(declare-fun tb!134007 () Bool)

(declare-fun t!201637 () Bool)

(assert (=> (and b!2260109 (= (toValue!6014 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201637) tb!134007))

(declare-fun result!163386 () Bool)

(assert (=> tb!134007 (= result!163386 (inv!21 (dynLambda!11646 (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))) (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853)))))))))

(declare-fun m!2690433 () Bool)

(assert (=> tb!134007 m!2690433))

(assert (=> d!669816 t!201637))

(declare-fun b_and!177633 () Bool)

(assert (= b_and!177533 (and (=> t!201637 result!163386) b_and!177633)))

(declare-fun tb!134009 () Bool)

(declare-fun t!201639 () Bool)

(assert (=> (and b!2260478 (= (toValue!6014 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201639) tb!134009))

(declare-fun result!163390 () Bool)

(assert (= result!163390 result!163386))

(assert (=> d!669816 t!201639))

(declare-fun b_and!177635 () Bool)

(assert (= b_and!177593 (and (=> t!201639 result!163390) b_and!177635)))

(declare-fun t!201641 () Bool)

(declare-fun tb!134011 () Bool)

(assert (=> (and b!2260086 (= (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201641) tb!134011))

(declare-fun result!163392 () Bool)

(assert (= result!163392 result!163386))

(assert (=> d!669816 t!201641))

(declare-fun b_and!177637 () Bool)

(assert (= b_and!177529 (and (=> t!201641 result!163392) b_and!177637)))

(declare-fun tb!134013 () Bool)

(declare-fun t!201643 () Bool)

(assert (=> (and b!2260523 (= (toValue!6014 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201643) tb!134013))

(declare-fun result!163394 () Bool)

(assert (= result!163394 result!163386))

(assert (=> d!669816 t!201643))

(declare-fun b_and!177639 () Bool)

(assert (= b_and!177597 (and (=> t!201643 result!163394) b_and!177639)))

(declare-fun t!201645 () Bool)

(declare-fun tb!134015 () Bool)

(assert (=> (and b!2260091 (= (toValue!6014 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201645) tb!134015))

(declare-fun result!163396 () Bool)

(assert (= result!163396 result!163386))

(assert (=> d!669816 t!201645))

(declare-fun b_and!177641 () Bool)

(assert (= b_and!177541 (and (=> t!201645 result!163396) b_and!177641)))

(declare-fun tb!134017 () Bool)

(declare-fun t!201647 () Bool)

(assert (=> (and b!2260116 (= (toValue!6014 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201647) tb!134017))

(declare-fun result!163398 () Bool)

(assert (= result!163398 result!163386))

(assert (=> d!669816 t!201647))

(declare-fun b_and!177643 () Bool)

(assert (= b_and!177537 (and (=> t!201647 result!163398) b_and!177643)))

(assert (=> d!669816 m!2689939))

(declare-fun m!2690435 () Bool)

(assert (=> d!669816 m!2690435))

(assert (=> b!2260292 d!669816))

(declare-fun d!669818 () Bool)

(assert (=> d!669818 (= (seqFromList!2972 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853)))) (fromListB!1329 (originalCharacters!5038 (_1!15722 (get!8096 lt!839853)))))))

(declare-fun bs!455459 () Bool)

(assert (= bs!455459 d!669818))

(declare-fun m!2690437 () Bool)

(assert (=> bs!455459 m!2690437))

(assert (=> b!2260292 d!669818))

(declare-fun d!669820 () Bool)

(declare-fun nullableFct!430 (Regex!6616) Bool)

(assert (=> d!669820 (= (nullable!1817 (regex!4268 r!2363)) (nullableFct!430 (regex!4268 r!2363)))))

(declare-fun bs!455460 () Bool)

(assert (= bs!455460 d!669820))

(declare-fun m!2690439 () Bool)

(assert (=> bs!455460 m!2690439))

(assert (=> b!2260372 d!669820))

(declare-fun d!669822 () Bool)

(declare-fun lt!839984 () Int)

(assert (=> d!669822 (= lt!839984 (size!21031 (list!10348 (_2!15723 lt!839892))))))

(assert (=> d!669822 (= lt!839984 (size!21036 (c!359071 (_2!15723 lt!839892))))))

(assert (=> d!669822 (= (size!21030 (_2!15723 lt!839892)) lt!839984)))

(declare-fun bs!455461 () Bool)

(assert (= bs!455461 d!669822))

(assert (=> bs!455461 m!2690055))

(assert (=> bs!455461 m!2690055))

(declare-fun m!2690441 () Bool)

(assert (=> bs!455461 m!2690441))

(declare-fun m!2690443 () Bool)

(assert (=> bs!455461 m!2690443))

(assert (=> b!2260433 d!669822))

(declare-fun d!669824 () Bool)

(declare-fun lt!839985 () Int)

(assert (=> d!669824 (= lt!839985 (size!21031 (list!10348 (seqFromList!2972 input!1722))))))

(assert (=> d!669824 (= lt!839985 (size!21036 (c!359071 (seqFromList!2972 input!1722))))))

(assert (=> d!669824 (= (size!21030 (seqFromList!2972 input!1722)) lt!839985)))

(declare-fun bs!455462 () Bool)

(assert (= bs!455462 d!669824))

(assert (=> bs!455462 m!2689735))

(assert (=> bs!455462 m!2690057))

(assert (=> bs!455462 m!2690057))

(assert (=> bs!455462 m!2690223))

(declare-fun m!2690445 () Bool)

(assert (=> bs!455462 m!2690445))

(assert (=> b!2260433 d!669824))

(declare-fun b!2260862 () Bool)

(declare-fun res!966504 () Bool)

(declare-fun e!1447584 () Bool)

(assert (=> b!2260862 (=> (not res!966504) (not e!1447584))))

(declare-fun lt!839988 () List!26934)

(assert (=> b!2260862 (= res!966504 (= (size!21031 lt!839988) (+ (size!21031 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (size!21031 (_2!15722 (get!8096 lt!839853))))))))

(declare-fun b!2260861 () Bool)

(declare-fun e!1447585 () List!26934)

(assert (=> b!2260861 (= e!1447585 (Cons!26840 (h!32241 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (++!6532 (t!201552 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (_2!15722 (get!8096 lt!839853)))))))

(declare-fun d!669826 () Bool)

(assert (=> d!669826 e!1447584))

(declare-fun res!966505 () Bool)

(assert (=> d!669826 (=> (not res!966505) (not e!1447584))))

(declare-fun content!3575 (List!26934) (Set C!13378))

(assert (=> d!669826 (= res!966505 (= (content!3575 lt!839988) (set.union (content!3575 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (content!3575 (_2!15722 (get!8096 lt!839853))))))))

(assert (=> d!669826 (= lt!839988 e!1447585)))

(declare-fun c!359193 () Bool)

(assert (=> d!669826 (= c!359193 (is-Nil!26840 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))

(assert (=> d!669826 (= (++!6532 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))) (_2!15722 (get!8096 lt!839853))) lt!839988)))

(declare-fun b!2260860 () Bool)

(assert (=> b!2260860 (= e!1447585 (_2!15722 (get!8096 lt!839853)))))

(declare-fun b!2260863 () Bool)

(assert (=> b!2260863 (= e!1447584 (or (not (= (_2!15722 (get!8096 lt!839853)) Nil!26840)) (= lt!839988 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))))))))

(assert (= (and d!669826 c!359193) b!2260860))

(assert (= (and d!669826 (not c!359193)) b!2260861))

(assert (= (and d!669826 res!966505) b!2260862))

(assert (= (and b!2260862 res!966504) b!2260863))

(declare-fun m!2690447 () Bool)

(assert (=> b!2260862 m!2690447))

(assert (=> b!2260862 m!2689931))

(declare-fun m!2690449 () Bool)

(assert (=> b!2260862 m!2690449))

(assert (=> b!2260862 m!2689913))

(declare-fun m!2690451 () Bool)

(assert (=> b!2260861 m!2690451))

(declare-fun m!2690453 () Bool)

(assert (=> d!669826 m!2690453))

(assert (=> d!669826 m!2689931))

(declare-fun m!2690455 () Bool)

(assert (=> d!669826 m!2690455))

(declare-fun m!2690457 () Bool)

(assert (=> d!669826 m!2690457))

(assert (=> b!2260290 d!669826))

(assert (=> b!2260290 d!669756))

(assert (=> b!2260290 d!669758))

(assert (=> b!2260290 d!669760))

(declare-fun bs!455463 () Bool)

(declare-fun d!669828 () Bool)

(assert (= bs!455463 (and d!669828 d!669732)))

(declare-fun lambda!85323 () Int)

(assert (=> bs!455463 (= (and (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (= (toValue!6014 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (= lambda!85323 lambda!85314))))

(declare-fun bs!455464 () Bool)

(assert (= bs!455464 (and d!669828 d!669780)))

(assert (=> bs!455464 (= (and (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (h!32242 rules!1750)))) (= (toValue!6014 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 (h!32242 rules!1750))))) (= lambda!85323 lambda!85315))))

(assert (=> d!669828 true))

(assert (=> d!669828 (< (dynLambda!11642 order!14973 (toChars!5873 (transformation!4268 otherR!12))) (dynLambda!11643 order!14975 lambda!85323))))

(assert (=> d!669828 true))

(assert (=> d!669828 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 otherR!12))) (dynLambda!11643 order!14975 lambda!85323))))

(assert (=> d!669828 (= (semiInverseModEq!1719 (toChars!5873 (transformation!4268 otherR!12)) (toValue!6014 (transformation!4268 otherR!12))) (Forall!1068 lambda!85323))))

(declare-fun bs!455465 () Bool)

(assert (= bs!455465 d!669828))

(declare-fun m!2690459 () Bool)

(assert (=> bs!455465 m!2690459))

(assert (=> d!669668 d!669828))

(declare-fun d!669830 () Bool)

(assert (=> d!669830 (= (list!10347 (_1!15723 lt!839892)) (list!10352 (c!359073 (_1!15723 lt!839892))))))

(declare-fun bs!455466 () Bool)

(assert (= bs!455466 d!669830))

(declare-fun m!2690461 () Bool)

(assert (=> bs!455466 m!2690461))

(assert (=> b!2260435 d!669830))

(assert (=> b!2260435 d!669704))

(assert (=> b!2260435 d!669706))

(declare-fun d!669832 () Bool)

(declare-fun e!1447588 () Bool)

(assert (=> d!669832 e!1447588))

(declare-fun res!966508 () Bool)

(assert (=> d!669832 (=> (not res!966508) (not e!1447588))))

(declare-fun lt!839991 () BalanceConc!17096)

(assert (=> d!669832 (= res!966508 (= (list!10348 lt!839991) input!1722))))

(declare-fun fromList!515 (List!26934) Conc!8684)

(assert (=> d!669832 (= lt!839991 (BalanceConc!17097 (fromList!515 input!1722)))))

(assert (=> d!669832 (= (fromListB!1329 input!1722) lt!839991)))

(declare-fun b!2260866 () Bool)

(assert (=> b!2260866 (= e!1447588 (isBalanced!2658 (fromList!515 input!1722)))))

(assert (= (and d!669832 res!966508) b!2260866))

(declare-fun m!2690463 () Bool)

(assert (=> d!669832 m!2690463))

(declare-fun m!2690465 () Bool)

(assert (=> d!669832 m!2690465))

(assert (=> b!2260866 m!2690465))

(assert (=> b!2260866 m!2690465))

(declare-fun m!2690467 () Bool)

(assert (=> b!2260866 m!2690467))

(assert (=> d!669652 d!669832))

(declare-fun d!669834 () Bool)

(assert (=> d!669834 (= (isEmpty!15171 (originalCharacters!5038 (h!32243 tokens!456))) (is-Nil!26840 (originalCharacters!5038 (h!32243 tokens!456))))))

(assert (=> d!669560 d!669834))

(declare-fun bm!135823 () Bool)

(declare-fun call!135828 () Bool)

(assert (=> bm!135823 (= call!135828 (isEmpty!15171 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun b!2260867 () Bool)

(declare-fun e!1447590 () Bool)

(assert (=> b!2260867 (= e!1447590 (= (head!4849 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (c!359072 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))))))

(declare-fun d!669836 () Bool)

(declare-fun e!1447594 () Bool)

(assert (=> d!669836 e!1447594))

(declare-fun c!359197 () Bool)

(assert (=> d!669836 (= c!359197 (is-EmptyExpr!6616 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun lt!839992 () Bool)

(declare-fun e!1447592 () Bool)

(assert (=> d!669836 (= lt!839992 e!1447592)))

(declare-fun c!359195 () Bool)

(assert (=> d!669836 (= c!359195 (isEmpty!15171 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))

(assert (=> d!669836 (validRegex!2475 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))))

(assert (=> d!669836 (= (matchR!2877 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))) (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) lt!839992)))

(declare-fun b!2260868 () Bool)

(assert (=> b!2260868 (= e!1447594 (= lt!839992 call!135828))))

(declare-fun b!2260869 () Bool)

(declare-fun e!1447591 () Bool)

(assert (=> b!2260869 (= e!1447591 (not lt!839992))))

(declare-fun b!2260870 () Bool)

(assert (=> b!2260870 (= e!1447592 (matchR!2877 (derivativeStep!1479 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))) (head!4849 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))))) (tail!3260 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))))))))

(declare-fun b!2260871 () Bool)

(declare-fun res!966511 () Bool)

(declare-fun e!1447595 () Bool)

(assert (=> b!2260871 (=> res!966511 e!1447595)))

(assert (=> b!2260871 (= res!966511 (not (is-ElementMatch!6616 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))))))

(assert (=> b!2260871 (= e!1447591 e!1447595)))

(declare-fun b!2260872 () Bool)

(assert (=> b!2260872 (= e!1447592 (nullable!1817 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun b!2260873 () Bool)

(declare-fun res!966515 () Bool)

(assert (=> b!2260873 (=> res!966515 e!1447595)))

(assert (=> b!2260873 (= res!966515 e!1447590)))

(declare-fun res!966513 () Bool)

(assert (=> b!2260873 (=> (not res!966513) (not e!1447590))))

(assert (=> b!2260873 (= res!966513 lt!839992)))

(declare-fun b!2260874 () Bool)

(declare-fun e!1447593 () Bool)

(assert (=> b!2260874 (= e!1447595 e!1447593)))

(declare-fun res!966512 () Bool)

(assert (=> b!2260874 (=> (not res!966512) (not e!1447593))))

(assert (=> b!2260874 (= res!966512 (not lt!839992))))

(declare-fun b!2260875 () Bool)

(declare-fun res!966514 () Bool)

(assert (=> b!2260875 (=> (not res!966514) (not e!1447590))))

(assert (=> b!2260875 (= res!966514 (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853)))))))))

(declare-fun b!2260876 () Bool)

(declare-fun e!1447589 () Bool)

(assert (=> b!2260876 (= e!1447593 e!1447589)))

(declare-fun res!966516 () Bool)

(assert (=> b!2260876 (=> res!966516 e!1447589)))

(assert (=> b!2260876 (= res!966516 call!135828)))

(declare-fun b!2260877 () Bool)

(assert (=> b!2260877 (= e!1447589 (not (= (head!4849 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))) (c!359072 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))))))))

(declare-fun b!2260878 () Bool)

(assert (=> b!2260878 (= e!1447594 e!1447591)))

(declare-fun c!359196 () Bool)

(assert (=> b!2260878 (= c!359196 (is-EmptyLang!6616 (regex!4268 (rule!6578 (_1!15722 (get!8096 lt!839853))))))))

(declare-fun b!2260879 () Bool)

(declare-fun res!966510 () Bool)

(assert (=> b!2260879 (=> (not res!966510) (not e!1447590))))

(assert (=> b!2260879 (= res!966510 (not call!135828))))

(declare-fun b!2260880 () Bool)

(declare-fun res!966509 () Bool)

(assert (=> b!2260880 (=> res!966509 e!1447589)))

(assert (=> b!2260880 (= res!966509 (not (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (_1!15722 (get!8096 lt!839853))))))))))

(assert (= (and d!669836 c!359195) b!2260872))

(assert (= (and d!669836 (not c!359195)) b!2260870))

(assert (= (and d!669836 c!359197) b!2260868))

(assert (= (and d!669836 (not c!359197)) b!2260878))

(assert (= (and b!2260878 c!359196) b!2260869))

(assert (= (and b!2260878 (not c!359196)) b!2260871))

(assert (= (and b!2260871 (not res!966511)) b!2260873))

(assert (= (and b!2260873 res!966513) b!2260879))

(assert (= (and b!2260879 res!966510) b!2260875))

(assert (= (and b!2260875 res!966514) b!2260867))

(assert (= (and b!2260873 (not res!966515)) b!2260874))

(assert (= (and b!2260874 res!966512) b!2260876))

(assert (= (and b!2260876 (not res!966516)) b!2260880))

(assert (= (and b!2260880 (not res!966509)) b!2260877))

(assert (= (or b!2260868 b!2260876 b!2260879) bm!135823))

(assert (=> b!2260877 m!2689931))

(declare-fun m!2690469 () Bool)

(assert (=> b!2260877 m!2690469))

(assert (=> bm!135823 m!2689931))

(declare-fun m!2690471 () Bool)

(assert (=> bm!135823 m!2690471))

(assert (=> b!2260880 m!2689931))

(declare-fun m!2690473 () Bool)

(assert (=> b!2260880 m!2690473))

(assert (=> b!2260880 m!2690473))

(declare-fun m!2690475 () Bool)

(assert (=> b!2260880 m!2690475))

(declare-fun m!2690477 () Bool)

(assert (=> b!2260872 m!2690477))

(assert (=> d!669836 m!2689931))

(assert (=> d!669836 m!2690471))

(declare-fun m!2690479 () Bool)

(assert (=> d!669836 m!2690479))

(assert (=> b!2260875 m!2689931))

(assert (=> b!2260875 m!2690473))

(assert (=> b!2260875 m!2690473))

(assert (=> b!2260875 m!2690475))

(assert (=> b!2260867 m!2689931))

(assert (=> b!2260867 m!2690469))

(assert (=> b!2260870 m!2689931))

(assert (=> b!2260870 m!2690469))

(assert (=> b!2260870 m!2690469))

(declare-fun m!2690481 () Bool)

(assert (=> b!2260870 m!2690481))

(assert (=> b!2260870 m!2689931))

(assert (=> b!2260870 m!2690473))

(assert (=> b!2260870 m!2690481))

(assert (=> b!2260870 m!2690473))

(declare-fun m!2690483 () Bool)

(assert (=> b!2260870 m!2690483))

(assert (=> b!2260293 d!669836))

(assert (=> b!2260293 d!669760))

(assert (=> b!2260293 d!669756))

(assert (=> b!2260293 d!669758))

(declare-fun b!2260883 () Bool)

(declare-fun e!1447597 () Bool)

(assert (=> b!2260883 (= e!1447597 (isPrefix!2258 (tail!3260 (tail!3260 otherP!12)) (tail!3260 (tail!3260 input!1722))))))

(declare-fun b!2260884 () Bool)

(declare-fun e!1447598 () Bool)

(assert (=> b!2260884 (= e!1447598 (>= (size!21031 (tail!3260 input!1722)) (size!21031 (tail!3260 otherP!12))))))

(declare-fun d!669838 () Bool)

(assert (=> d!669838 e!1447598))

(declare-fun res!966520 () Bool)

(assert (=> d!669838 (=> res!966520 e!1447598)))

(declare-fun lt!839993 () Bool)

(assert (=> d!669838 (= res!966520 (not lt!839993))))

(declare-fun e!1447596 () Bool)

(assert (=> d!669838 (= lt!839993 e!1447596)))

(declare-fun res!966518 () Bool)

(assert (=> d!669838 (=> res!966518 e!1447596)))

(assert (=> d!669838 (= res!966518 (is-Nil!26840 (tail!3260 otherP!12)))))

(assert (=> d!669838 (= (isPrefix!2258 (tail!3260 otherP!12) (tail!3260 input!1722)) lt!839993)))

(declare-fun b!2260882 () Bool)

(declare-fun res!966519 () Bool)

(assert (=> b!2260882 (=> (not res!966519) (not e!1447597))))

(assert (=> b!2260882 (= res!966519 (= (head!4849 (tail!3260 otherP!12)) (head!4849 (tail!3260 input!1722))))))

(declare-fun b!2260881 () Bool)

(assert (=> b!2260881 (= e!1447596 e!1447597)))

(declare-fun res!966517 () Bool)

(assert (=> b!2260881 (=> (not res!966517) (not e!1447597))))

(assert (=> b!2260881 (= res!966517 (not (is-Nil!26840 (tail!3260 input!1722))))))

(assert (= (and d!669838 (not res!966518)) b!2260881))

(assert (= (and b!2260881 res!966517) b!2260882))

(assert (= (and b!2260882 res!966519) b!2260883))

(assert (= (and d!669838 (not res!966520)) b!2260884))

(assert (=> b!2260883 m!2689867))

(declare-fun m!2690485 () Bool)

(assert (=> b!2260883 m!2690485))

(assert (=> b!2260883 m!2689869))

(declare-fun m!2690487 () Bool)

(assert (=> b!2260883 m!2690487))

(assert (=> b!2260883 m!2690485))

(assert (=> b!2260883 m!2690487))

(declare-fun m!2690489 () Bool)

(assert (=> b!2260883 m!2690489))

(assert (=> b!2260884 m!2689869))

(declare-fun m!2690491 () Bool)

(assert (=> b!2260884 m!2690491))

(assert (=> b!2260884 m!2689867))

(declare-fun m!2690493 () Bool)

(assert (=> b!2260884 m!2690493))

(assert (=> b!2260882 m!2689867))

(declare-fun m!2690495 () Bool)

(assert (=> b!2260882 m!2690495))

(assert (=> b!2260882 m!2689869))

(declare-fun m!2690497 () Bool)

(assert (=> b!2260882 m!2690497))

(assert (=> b!2260234 d!669838))

(declare-fun d!669840 () Bool)

(assert (=> d!669840 (= (tail!3260 otherP!12) (t!201552 otherP!12))))

(assert (=> b!2260234 d!669840))

(declare-fun d!669842 () Bool)

(assert (=> d!669842 (= (tail!3260 input!1722) (t!201552 input!1722))))

(assert (=> b!2260234 d!669842))

(declare-fun b!2260896 () Bool)

(declare-fun e!1447604 () List!26936)

(declare-fun ++!6534 (List!26936 List!26936) List!26936)

(assert (=> b!2260896 (= e!1447604 (++!6534 (list!10352 (left!20376 (c!359073 (_1!15723 lt!839803)))) (list!10352 (right!20706 (c!359073 (_1!15723 lt!839803))))))))

(declare-fun b!2260894 () Bool)

(declare-fun e!1447603 () List!26936)

(assert (=> b!2260894 (= e!1447603 e!1447604)))

(declare-fun c!359203 () Bool)

(assert (=> b!2260894 (= c!359203 (is-Leaf!12805 (c!359073 (_1!15723 lt!839803))))))

(declare-fun b!2260895 () Bool)

(declare-fun list!10356 (IArray!17375) List!26936)

(assert (=> b!2260895 (= e!1447604 (list!10356 (xs!11627 (c!359073 (_1!15723 lt!839803)))))))

(declare-fun d!669844 () Bool)

(declare-fun c!359202 () Bool)

(assert (=> d!669844 (= c!359202 (is-Empty!8685 (c!359073 (_1!15723 lt!839803))))))

(assert (=> d!669844 (= (list!10352 (c!359073 (_1!15723 lt!839803))) e!1447603)))

(declare-fun b!2260893 () Bool)

(assert (=> b!2260893 (= e!1447603 Nil!26842)))

(assert (= (and d!669844 c!359202) b!2260893))

(assert (= (and d!669844 (not c!359202)) b!2260894))

(assert (= (and b!2260894 c!359203) b!2260895))

(assert (= (and b!2260894 (not c!359203)) b!2260896))

(declare-fun m!2690499 () Bool)

(assert (=> b!2260896 m!2690499))

(declare-fun m!2690501 () Bool)

(assert (=> b!2260896 m!2690501))

(assert (=> b!2260896 m!2690499))

(assert (=> b!2260896 m!2690501))

(declare-fun m!2690503 () Bool)

(assert (=> b!2260896 m!2690503))

(declare-fun m!2690505 () Bool)

(assert (=> b!2260895 m!2690505))

(assert (=> d!669618 d!669844))

(declare-fun b!2260897 () Bool)

(declare-fun e!1447605 () Bool)

(declare-fun e!1447607 () Bool)

(assert (=> b!2260897 (= e!1447605 e!1447607)))

(declare-fun c!359204 () Bool)

(assert (=> b!2260897 (= c!359204 (is-Union!6616 (regex!4268 otherR!12)))))

(declare-fun b!2260898 () Bool)

(declare-fun res!966523 () Bool)

(declare-fun e!1447609 () Bool)

(assert (=> b!2260898 (=> (not res!966523) (not e!1447609))))

(declare-fun call!135829 () Bool)

(assert (=> b!2260898 (= res!966523 call!135829)))

(assert (=> b!2260898 (= e!1447607 e!1447609)))

(declare-fun call!135830 () Bool)

(declare-fun bm!135824 () Bool)

(declare-fun c!359205 () Bool)

(assert (=> bm!135824 (= call!135830 (validRegex!2475 (ite c!359205 (reg!6945 (regex!4268 otherR!12)) (ite c!359204 (regTwo!13745 (regex!4268 otherR!12)) (regOne!13744 (regex!4268 otherR!12))))))))

(declare-fun bm!135825 () Bool)

(declare-fun call!135831 () Bool)

(assert (=> bm!135825 (= call!135831 call!135830)))

(declare-fun b!2260899 () Bool)

(declare-fun e!1447608 () Bool)

(assert (=> b!2260899 (= e!1447608 e!1447605)))

(assert (=> b!2260899 (= c!359205 (is-Star!6616 (regex!4268 otherR!12)))))

(declare-fun b!2260900 () Bool)

(declare-fun e!1447610 () Bool)

(assert (=> b!2260900 (= e!1447605 e!1447610)))

(declare-fun res!966524 () Bool)

(assert (=> b!2260900 (= res!966524 (not (nullable!1817 (reg!6945 (regex!4268 otherR!12)))))))

(assert (=> b!2260900 (=> (not res!966524) (not e!1447610))))

(declare-fun b!2260901 () Bool)

(assert (=> b!2260901 (= e!1447609 call!135831)))

(declare-fun b!2260902 () Bool)

(assert (=> b!2260902 (= e!1447610 call!135830)))

(declare-fun b!2260903 () Bool)

(declare-fun res!966521 () Bool)

(declare-fun e!1447611 () Bool)

(assert (=> b!2260903 (=> res!966521 e!1447611)))

(assert (=> b!2260903 (= res!966521 (not (is-Concat!11047 (regex!4268 otherR!12))))))

(assert (=> b!2260903 (= e!1447607 e!1447611)))

(declare-fun b!2260904 () Bool)

(declare-fun e!1447606 () Bool)

(assert (=> b!2260904 (= e!1447611 e!1447606)))

(declare-fun res!966522 () Bool)

(assert (=> b!2260904 (=> (not res!966522) (not e!1447606))))

(assert (=> b!2260904 (= res!966522 call!135831)))

(declare-fun b!2260905 () Bool)

(assert (=> b!2260905 (= e!1447606 call!135829)))

(declare-fun bm!135826 () Bool)

(assert (=> bm!135826 (= call!135829 (validRegex!2475 (ite c!359204 (regOne!13745 (regex!4268 otherR!12)) (regTwo!13744 (regex!4268 otherR!12)))))))

(declare-fun d!669846 () Bool)

(declare-fun res!966525 () Bool)

(assert (=> d!669846 (=> res!966525 e!1447608)))

(assert (=> d!669846 (= res!966525 (is-ElementMatch!6616 (regex!4268 otherR!12)))))

(assert (=> d!669846 (= (validRegex!2475 (regex!4268 otherR!12)) e!1447608)))

(assert (= (and d!669846 (not res!966525)) b!2260899))

(assert (= (and b!2260899 c!359205) b!2260900))

(assert (= (and b!2260899 (not c!359205)) b!2260897))

(assert (= (and b!2260900 res!966524) b!2260902))

(assert (= (and b!2260897 c!359204) b!2260898))

(assert (= (and b!2260897 (not c!359204)) b!2260903))

(assert (= (and b!2260898 res!966523) b!2260901))

(assert (= (and b!2260903 (not res!966521)) b!2260904))

(assert (= (and b!2260904 res!966522) b!2260905))

(assert (= (or b!2260898 b!2260905) bm!135826))

(assert (= (or b!2260901 b!2260904) bm!135825))

(assert (= (or b!2260902 bm!135825) bm!135824))

(declare-fun m!2690507 () Bool)

(assert (=> bm!135824 m!2690507))

(declare-fun m!2690509 () Bool)

(assert (=> b!2260900 m!2690509))

(declare-fun m!2690511 () Bool)

(assert (=> bm!135826 m!2690511))

(assert (=> d!669662 d!669846))

(declare-fun d!669848 () Bool)

(declare-fun lt!839994 () Int)

(assert (=> d!669848 (>= lt!839994 0)))

(declare-fun e!1447612 () Int)

(assert (=> d!669848 (= lt!839994 e!1447612)))

(declare-fun c!359206 () Bool)

(assert (=> d!669848 (= c!359206 (is-Nil!26840 (_2!15722 (get!8096 lt!839853))))))

(assert (=> d!669848 (= (size!21031 (_2!15722 (get!8096 lt!839853))) lt!839994)))

(declare-fun b!2260906 () Bool)

(assert (=> b!2260906 (= e!1447612 0)))

(declare-fun b!2260907 () Bool)

(assert (=> b!2260907 (= e!1447612 (+ 1 (size!21031 (t!201552 (_2!15722 (get!8096 lt!839853))))))))

(assert (= (and d!669848 c!359206) b!2260906))

(assert (= (and d!669848 (not c!359206)) b!2260907))

(declare-fun m!2690513 () Bool)

(assert (=> b!2260907 m!2690513))

(assert (=> b!2260286 d!669848))

(assert (=> b!2260286 d!669760))

(assert (=> b!2260286 d!669716))

(declare-fun d!669850 () Bool)

(assert (=> d!669850 (= (isEmpty!15172 lt!839853) (not (is-Some!5241 lt!839853)))))

(assert (=> d!669578 d!669850))

(declare-fun b!2260910 () Bool)

(declare-fun e!1447614 () Bool)

(assert (=> b!2260910 (= e!1447614 (isPrefix!2258 (tail!3260 input!1722) (tail!3260 input!1722)))))

(declare-fun b!2260911 () Bool)

(declare-fun e!1447615 () Bool)

(assert (=> b!2260911 (= e!1447615 (>= (size!21031 input!1722) (size!21031 input!1722)))))

(declare-fun d!669852 () Bool)

(assert (=> d!669852 e!1447615))

(declare-fun res!966529 () Bool)

(assert (=> d!669852 (=> res!966529 e!1447615)))

(declare-fun lt!839995 () Bool)

(assert (=> d!669852 (= res!966529 (not lt!839995))))

(declare-fun e!1447613 () Bool)

(assert (=> d!669852 (= lt!839995 e!1447613)))

(declare-fun res!966527 () Bool)

(assert (=> d!669852 (=> res!966527 e!1447613)))

(assert (=> d!669852 (= res!966527 (is-Nil!26840 input!1722))))

(assert (=> d!669852 (= (isPrefix!2258 input!1722 input!1722) lt!839995)))

(declare-fun b!2260909 () Bool)

(declare-fun res!966528 () Bool)

(assert (=> b!2260909 (=> (not res!966528) (not e!1447614))))

(assert (=> b!2260909 (= res!966528 (= (head!4849 input!1722) (head!4849 input!1722)))))

(declare-fun b!2260908 () Bool)

(assert (=> b!2260908 (= e!1447613 e!1447614)))

(declare-fun res!966526 () Bool)

(assert (=> b!2260908 (=> (not res!966526) (not e!1447614))))

(assert (=> b!2260908 (= res!966526 (not (is-Nil!26840 input!1722)))))

(assert (= (and d!669852 (not res!966527)) b!2260908))

(assert (= (and b!2260908 res!966526) b!2260909))

(assert (= (and b!2260909 res!966528) b!2260910))

(assert (= (and d!669852 (not res!966529)) b!2260911))

(assert (=> b!2260910 m!2689869))

(assert (=> b!2260910 m!2689869))

(assert (=> b!2260910 m!2689869))

(assert (=> b!2260910 m!2689869))

(declare-fun m!2690515 () Bool)

(assert (=> b!2260910 m!2690515))

(assert (=> b!2260911 m!2689873))

(assert (=> b!2260911 m!2689873))

(assert (=> b!2260909 m!2689877))

(assert (=> b!2260909 m!2689877))

(assert (=> d!669578 d!669852))

(declare-fun d!669854 () Bool)

(assert (=> d!669854 (isPrefix!2258 input!1722 input!1722)))

(declare-fun lt!839998 () Unit!39770)

(declare-fun choose!13223 (List!26934 List!26934) Unit!39770)

(assert (=> d!669854 (= lt!839998 (choose!13223 input!1722 input!1722))))

(assert (=> d!669854 (= (lemmaIsPrefixRefl!1446 input!1722 input!1722) lt!839998)))

(declare-fun bs!455467 () Bool)

(assert (= bs!455467 d!669854))

(assert (=> bs!455467 m!2689923))

(declare-fun m!2690517 () Bool)

(assert (=> bs!455467 m!2690517))

(assert (=> d!669578 d!669854))

(declare-fun bs!455468 () Bool)

(declare-fun d!669856 () Bool)

(assert (= bs!455468 (and d!669856 d!669784)))

(declare-fun lambda!85326 () Int)

(assert (=> bs!455468 (= lambda!85326 lambda!85318)))

(assert (=> d!669856 true))

(declare-fun lt!840001 () Bool)

(assert (=> d!669856 (= lt!840001 (forall!5471 rules!1750 lambda!85326))))

(declare-fun e!1447620 () Bool)

(assert (=> d!669856 (= lt!840001 e!1447620)))

(declare-fun res!966534 () Bool)

(assert (=> d!669856 (=> res!966534 e!1447620)))

(assert (=> d!669856 (= res!966534 (not (is-Cons!26841 rules!1750)))))

(assert (=> d!669856 (= (rulesValidInductive!1488 thiss!16613 rules!1750) lt!840001)))

(declare-fun b!2260916 () Bool)

(declare-fun e!1447621 () Bool)

(assert (=> b!2260916 (= e!1447620 e!1447621)))

(declare-fun res!966535 () Bool)

(assert (=> b!2260916 (=> (not res!966535) (not e!1447621))))

(assert (=> b!2260916 (= res!966535 (ruleValid!1360 thiss!16613 (h!32242 rules!1750)))))

(declare-fun b!2260917 () Bool)

(assert (=> b!2260917 (= e!1447621 (rulesValidInductive!1488 thiss!16613 (t!201553 rules!1750)))))

(assert (= (and d!669856 (not res!966534)) b!2260916))

(assert (= (and b!2260916 res!966535) b!2260917))

(declare-fun m!2690519 () Bool)

(assert (=> d!669856 m!2690519))

(assert (=> b!2260916 m!2690273))

(assert (=> b!2260917 m!2690369))

(assert (=> d!669578 d!669856))

(declare-fun d!669858 () Bool)

(declare-fun lt!840004 () Int)

(assert (=> d!669858 (= lt!840004 (size!21039 (list!10347 (_1!15723 lt!839892))))))

(declare-fun size!21040 (Conc!8685) Int)

(assert (=> d!669858 (= lt!840004 (size!21040 (c!359073 (_1!15723 lt!839892))))))

(assert (=> d!669858 (= (size!21035 (_1!15723 lt!839892)) lt!840004)))

(declare-fun bs!455469 () Bool)

(assert (= bs!455469 d!669858))

(assert (=> bs!455469 m!2690063))

(assert (=> bs!455469 m!2690063))

(declare-fun m!2690521 () Bool)

(assert (=> bs!455469 m!2690521))

(declare-fun m!2690523 () Bool)

(assert (=> bs!455469 m!2690523))

(assert (=> d!669622 d!669858))

(declare-datatypes ((tuple2!26438 0))(
  ( (tuple2!26439 (_1!15729 Token!8014) (_2!15729 BalanceConc!17096)) )
))
(declare-datatypes ((Option!5244 0))(
  ( (None!5243) (Some!5243 (v!30277 tuple2!26438)) )
))
(declare-fun lt!840129 () Option!5244)

(declare-fun b!2260981 () Bool)

(declare-fun lt!840119 () tuple2!26426)

(declare-fun lexRec!518 (LexerInterface!3865 List!26935 BalanceConc!17096) tuple2!26426)

(assert (=> b!2260981 (= lt!840119 (lexRec!518 thiss!16613 rules!1750 (_2!15729 (v!30277 lt!840129))))))

(declare-fun e!1447658 () tuple2!26426)

(declare-fun prepend!988 (BalanceConc!17098 Token!8014) BalanceConc!17098)

(assert (=> b!2260981 (= e!1447658 (tuple2!26427 (prepend!988 (_1!15723 lt!840119) (_1!15729 (v!30277 lt!840129))) (_2!15723 lt!840119)))))

(declare-fun b!2260982 () Bool)

(declare-fun lt!840105 () tuple2!26426)

(declare-fun lt!840115 () Option!5244)

(assert (=> b!2260982 (= lt!840105 (lexRec!518 thiss!16613 rules!1750 (_2!15729 (v!30277 lt!840115))))))

(declare-fun e!1447655 () tuple2!26426)

(assert (=> b!2260982 (= e!1447655 (tuple2!26427 (prepend!988 (_1!15723 lt!840105) (_1!15729 (v!30277 lt!840115))) (_2!15723 lt!840105)))))

(declare-fun lt!840110 () tuple2!26426)

(declare-fun b!2260983 () Bool)

(declare-fun e!1447656 () Bool)

(assert (=> b!2260983 (= e!1447656 (= (list!10348 (_2!15723 lt!840110)) (list!10348 (_2!15723 (lexRec!518 thiss!16613 rules!1750 (seqFromList!2972 input!1722))))))))

(declare-fun d!669860 () Bool)

(assert (=> d!669860 e!1447656))

(declare-fun res!966573 () Bool)

(assert (=> d!669860 (=> (not res!966573) (not e!1447656))))

(assert (=> d!669860 (= res!966573 (= (list!10347 (_1!15723 lt!840110)) (list!10347 (_1!15723 (lexRec!518 thiss!16613 rules!1750 (seqFromList!2972 input!1722))))))))

(declare-fun e!1447657 () tuple2!26426)

(assert (=> d!669860 (= lt!840110 e!1447657)))

(declare-fun c!359217 () Bool)

(declare-fun lt!840101 () Option!5244)

(assert (=> d!669860 (= c!359217 (is-Some!5243 lt!840101))))

(declare-fun maxPrefixZipperSequenceV2!388 (LexerInterface!3865 List!26935 BalanceConc!17096 BalanceConc!17096) Option!5244)

(assert (=> d!669860 (= lt!840101 (maxPrefixZipperSequenceV2!388 thiss!16613 rules!1750 (seqFromList!2972 input!1722) (seqFromList!2972 input!1722)))))

(declare-fun lt!840109 () Unit!39770)

(declare-fun lt!840111 () Unit!39770)

(assert (=> d!669860 (= lt!840109 lt!840111)))

(declare-fun lt!840121 () List!26934)

(declare-fun lt!840126 () List!26934)

(declare-fun isSuffix!754 (List!26934 List!26934) Bool)

(assert (=> d!669860 (isSuffix!754 lt!840121 (++!6532 lt!840126 lt!840121))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!448 (List!26934 List!26934) Unit!39770)

(assert (=> d!669860 (= lt!840111 (lemmaConcatTwoListThenFSndIsSuffix!448 lt!840126 lt!840121))))

(assert (=> d!669860 (= lt!840121 (list!10348 (seqFromList!2972 input!1722)))))

(assert (=> d!669860 (= lt!840126 (list!10348 (BalanceConc!17097 Empty!8684)))))

(assert (=> d!669860 (= (lexTailRecV2!738 thiss!16613 rules!1750 (seqFromList!2972 input!1722) (BalanceConc!17097 Empty!8684) (seqFromList!2972 input!1722) (BalanceConc!17099 Empty!8685)) lt!840110)))

(declare-fun b!2260984 () Bool)

(assert (=> b!2260984 (= e!1447658 (tuple2!26427 (BalanceConc!17099 Empty!8685) (seqFromList!2972 input!1722)))))

(declare-fun b!2260985 () Bool)

(assert (=> b!2260985 (= e!1447657 (tuple2!26427 (BalanceConc!17099 Empty!8685) (seqFromList!2972 input!1722)))))

(declare-fun b!2260986 () Bool)

(declare-fun lt!840116 () BalanceConc!17096)

(assert (=> b!2260986 (= e!1447655 (tuple2!26427 (BalanceConc!17099 Empty!8685) lt!840116))))

(declare-fun lt!840107 () BalanceConc!17096)

(declare-fun b!2260987 () Bool)

(declare-fun append!681 (BalanceConc!17098 Token!8014) BalanceConc!17098)

(assert (=> b!2260987 (= e!1447657 (lexTailRecV2!738 thiss!16613 rules!1750 (seqFromList!2972 input!1722) lt!840107 (_2!15729 (v!30277 lt!840101)) (append!681 (BalanceConc!17099 Empty!8685) (_1!15729 (v!30277 lt!840101)))))))

(declare-fun lt!840112 () tuple2!26426)

(assert (=> b!2260987 (= lt!840112 (lexRec!518 thiss!16613 rules!1750 (_2!15729 (v!30277 lt!840101))))))

(declare-fun lt!840124 () List!26934)

(assert (=> b!2260987 (= lt!840124 (list!10348 (BalanceConc!17097 Empty!8684)))))

(declare-fun lt!840108 () List!26934)

(assert (=> b!2260987 (= lt!840108 (list!10348 (charsOf!2656 (_1!15729 (v!30277 lt!840101)))))))

(declare-fun lt!840118 () List!26934)

(assert (=> b!2260987 (= lt!840118 (list!10348 (_2!15729 (v!30277 lt!840101))))))

(declare-fun lt!840102 () Unit!39770)

(declare-fun lemmaConcatAssociativity!1348 (List!26934 List!26934 List!26934) Unit!39770)

(assert (=> b!2260987 (= lt!840102 (lemmaConcatAssociativity!1348 lt!840124 lt!840108 lt!840118))))

(assert (=> b!2260987 (= (++!6532 (++!6532 lt!840124 lt!840108) lt!840118) (++!6532 lt!840124 (++!6532 lt!840108 lt!840118)))))

(declare-fun lt!840103 () Unit!39770)

(assert (=> b!2260987 (= lt!840103 lt!840102)))

(declare-fun maxPrefixZipperSequence!853 (LexerInterface!3865 List!26935 BalanceConc!17096) Option!5244)

(assert (=> b!2260987 (= lt!840129 (maxPrefixZipperSequence!853 thiss!16613 rules!1750 (seqFromList!2972 input!1722)))))

(declare-fun c!359218 () Bool)

(assert (=> b!2260987 (= c!359218 (is-Some!5243 lt!840129))))

(assert (=> b!2260987 (= (lexRec!518 thiss!16613 rules!1750 (seqFromList!2972 input!1722)) e!1447658)))

(declare-fun lt!840114 () Unit!39770)

(declare-fun Unit!39780 () Unit!39770)

(assert (=> b!2260987 (= lt!840114 Unit!39780)))

(declare-fun lt!840106 () List!26936)

(assert (=> b!2260987 (= lt!840106 (list!10347 (BalanceConc!17099 Empty!8685)))))

(declare-fun lt!840098 () List!26936)

(assert (=> b!2260987 (= lt!840098 (Cons!26842 (_1!15729 (v!30277 lt!840101)) Nil!26842))))

(declare-fun lt!840100 () List!26936)

(assert (=> b!2260987 (= lt!840100 (list!10347 (_1!15723 lt!840112)))))

(declare-fun lt!840127 () Unit!39770)

(declare-fun lemmaConcatAssociativity!1349 (List!26936 List!26936 List!26936) Unit!39770)

(assert (=> b!2260987 (= lt!840127 (lemmaConcatAssociativity!1349 lt!840106 lt!840098 lt!840100))))

(assert (=> b!2260987 (= (++!6534 (++!6534 lt!840106 lt!840098) lt!840100) (++!6534 lt!840106 (++!6534 lt!840098 lt!840100)))))

(declare-fun lt!840120 () Unit!39770)

(assert (=> b!2260987 (= lt!840120 lt!840127)))

(declare-fun lt!840122 () List!26934)

(assert (=> b!2260987 (= lt!840122 (++!6532 (list!10348 (BalanceConc!17097 Empty!8684)) (list!10348 (charsOf!2656 (_1!15729 (v!30277 lt!840101))))))))

(declare-fun lt!840104 () List!26934)

(assert (=> b!2260987 (= lt!840104 (list!10348 (_2!15729 (v!30277 lt!840101))))))

(declare-fun lt!840096 () List!26936)

(assert (=> b!2260987 (= lt!840096 (list!10347 (append!681 (BalanceConc!17099 Empty!8685) (_1!15729 (v!30277 lt!840101)))))))

(declare-fun lt!840123 () Unit!39770)

(declare-fun lemmaLexThenLexPrefix!332 (LexerInterface!3865 List!26935 List!26934 List!26934 List!26936 List!26936 List!26934) Unit!39770)

(assert (=> b!2260987 (= lt!840123 (lemmaLexThenLexPrefix!332 thiss!16613 rules!1750 lt!840122 lt!840104 lt!840096 (list!10347 (_1!15723 lt!840112)) (list!10348 (_2!15723 lt!840112))))))

(assert (=> b!2260987 (= (lexList!1063 thiss!16613 rules!1750 lt!840122) (tuple2!26429 lt!840096 Nil!26840))))

(declare-fun lt!840125 () Unit!39770)

(assert (=> b!2260987 (= lt!840125 lt!840123)))

(declare-fun ++!6535 (BalanceConc!17096 BalanceConc!17096) BalanceConc!17096)

(assert (=> b!2260987 (= lt!840116 (++!6535 (BalanceConc!17097 Empty!8684) (charsOf!2656 (_1!15729 (v!30277 lt!840101)))))))

(assert (=> b!2260987 (= lt!840115 (maxPrefixZipperSequence!853 thiss!16613 rules!1750 lt!840116))))

(declare-fun c!359216 () Bool)

(assert (=> b!2260987 (= c!359216 (is-Some!5243 lt!840115))))

(assert (=> b!2260987 (= (lexRec!518 thiss!16613 rules!1750 (++!6535 (BalanceConc!17097 Empty!8684) (charsOf!2656 (_1!15729 (v!30277 lt!840101))))) e!1447655)))

(declare-fun lt!840097 () Unit!39770)

(declare-fun Unit!39781 () Unit!39770)

(assert (=> b!2260987 (= lt!840097 Unit!39781)))

(assert (=> b!2260987 (= lt!840107 (++!6535 (BalanceConc!17097 Empty!8684) (charsOf!2656 (_1!15729 (v!30277 lt!840101)))))))

(declare-fun lt!840099 () List!26934)

(assert (=> b!2260987 (= lt!840099 (list!10348 lt!840107))))

(declare-fun lt!840113 () List!26934)

(assert (=> b!2260987 (= lt!840113 (list!10348 (_2!15729 (v!30277 lt!840101))))))

(declare-fun lt!840117 () Unit!39770)

(assert (=> b!2260987 (= lt!840117 (lemmaConcatTwoListThenFSndIsSuffix!448 lt!840099 lt!840113))))

(assert (=> b!2260987 (isSuffix!754 lt!840113 (++!6532 lt!840099 lt!840113))))

(declare-fun lt!840128 () Unit!39770)

(assert (=> b!2260987 (= lt!840128 lt!840117)))

(assert (= (and d!669860 c!359217) b!2260987))

(assert (= (and d!669860 (not c!359217)) b!2260985))

(assert (= (and b!2260987 c!359218) b!2260981))

(assert (= (and b!2260987 (not c!359218)) b!2260984))

(assert (= (and b!2260987 c!359216) b!2260982))

(assert (= (and b!2260987 (not c!359216)) b!2260986))

(assert (= (and d!669860 res!966573) b!2260983))

(declare-fun m!2690601 () Bool)

(assert (=> d!669860 m!2690601))

(declare-fun m!2690603 () Bool)

(assert (=> d!669860 m!2690603))

(declare-fun m!2690605 () Bool)

(assert (=> d!669860 m!2690605))

(declare-fun m!2690607 () Bool)

(assert (=> d!669860 m!2690607))

(declare-fun m!2690609 () Bool)

(assert (=> d!669860 m!2690609))

(assert (=> d!669860 m!2689735))

(assert (=> d!669860 m!2689735))

(declare-fun m!2690611 () Bool)

(assert (=> d!669860 m!2690611))

(declare-fun m!2690613 () Bool)

(assert (=> d!669860 m!2690613))

(assert (=> d!669860 m!2689735))

(declare-fun m!2690615 () Bool)

(assert (=> d!669860 m!2690615))

(assert (=> d!669860 m!2689735))

(assert (=> d!669860 m!2690057))

(assert (=> d!669860 m!2690603))

(declare-fun m!2690617 () Bool)

(assert (=> b!2260981 m!2690617))

(declare-fun m!2690619 () Bool)

(assert (=> b!2260981 m!2690619))

(declare-fun m!2690621 () Bool)

(assert (=> b!2260987 m!2690621))

(declare-fun m!2690623 () Bool)

(assert (=> b!2260987 m!2690623))

(declare-fun m!2690625 () Bool)

(assert (=> b!2260987 m!2690625))

(declare-fun m!2690627 () Bool)

(assert (=> b!2260987 m!2690627))

(declare-fun m!2690629 () Bool)

(assert (=> b!2260987 m!2690629))

(assert (=> b!2260987 m!2689735))

(assert (=> b!2260987 m!2690615))

(assert (=> b!2260987 m!2690621))

(declare-fun m!2690631 () Bool)

(assert (=> b!2260987 m!2690631))

(declare-fun m!2690635 () Bool)

(assert (=> b!2260987 m!2690635))

(declare-fun m!2690637 () Bool)

(assert (=> b!2260987 m!2690637))

(declare-fun m!2690639 () Bool)

(assert (=> b!2260987 m!2690639))

(declare-fun m!2690643 () Bool)

(assert (=> b!2260987 m!2690643))

(declare-fun m!2690645 () Bool)

(assert (=> b!2260987 m!2690645))

(assert (=> b!2260987 m!2690623))

(assert (=> b!2260987 m!2690629))

(declare-fun m!2690651 () Bool)

(assert (=> b!2260987 m!2690651))

(declare-fun m!2690653 () Bool)

(assert (=> b!2260987 m!2690653))

(declare-fun m!2690655 () Bool)

(assert (=> b!2260987 m!2690655))

(declare-fun m!2690659 () Bool)

(assert (=> b!2260987 m!2690659))

(assert (=> b!2260987 m!2690609))

(assert (=> b!2260987 m!2690651))

(declare-fun m!2690663 () Bool)

(assert (=> b!2260987 m!2690663))

(assert (=> b!2260987 m!2689735))

(assert (=> b!2260987 m!2690643))

(declare-fun m!2690665 () Bool)

(assert (=> b!2260987 m!2690665))

(declare-fun m!2690667 () Bool)

(assert (=> b!2260987 m!2690667))

(assert (=> b!2260987 m!2689735))

(declare-fun m!2690669 () Bool)

(assert (=> b!2260987 m!2690669))

(declare-fun m!2690673 () Bool)

(assert (=> b!2260987 m!2690673))

(declare-fun m!2690675 () Bool)

(assert (=> b!2260987 m!2690675))

(declare-fun m!2690677 () Bool)

(assert (=> b!2260987 m!2690677))

(assert (=> b!2260987 m!2690609))

(declare-fun m!2690679 () Bool)

(assert (=> b!2260987 m!2690679))

(assert (=> b!2260987 m!2690673))

(declare-fun m!2690681 () Bool)

(assert (=> b!2260987 m!2690681))

(assert (=> b!2260987 m!2690653))

(declare-fun m!2690683 () Bool)

(assert (=> b!2260987 m!2690683))

(declare-fun m!2690685 () Bool)

(assert (=> b!2260987 m!2690685))

(assert (=> b!2260987 m!2690629))

(assert (=> b!2260987 m!2690635))

(declare-fun m!2690687 () Bool)

(assert (=> b!2260987 m!2690687))

(assert (=> b!2260987 m!2690643))

(declare-fun m!2690689 () Bool)

(assert (=> b!2260987 m!2690689))

(assert (=> b!2260987 m!2690659))

(assert (=> b!2260987 m!2690639))

(declare-fun m!2690691 () Bool)

(assert (=> b!2260987 m!2690691))

(assert (=> b!2260987 m!2690627))

(declare-fun m!2690693 () Bool)

(assert (=> b!2260987 m!2690693))

(declare-fun m!2690695 () Bool)

(assert (=> b!2260987 m!2690695))

(declare-fun m!2690697 () Bool)

(assert (=> b!2260983 m!2690697))

(assert (=> b!2260983 m!2689735))

(assert (=> b!2260983 m!2690615))

(declare-fun m!2690699 () Bool)

(assert (=> b!2260983 m!2690699))

(declare-fun m!2690701 () Bool)

(assert (=> b!2260982 m!2690701))

(declare-fun m!2690703 () Bool)

(assert (=> b!2260982 m!2690703))

(assert (=> d!669622 d!669860))

(declare-fun d!669900 () Bool)

(assert (=> d!669900 (= (list!10348 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))) (list!10351 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))))))

(declare-fun bs!455479 () Bool)

(assert (= bs!455479 d!669900))

(declare-fun m!2690705 () Bool)

(assert (=> bs!455479 m!2690705))

(assert (=> b!2260217 d!669900))

(declare-fun bm!135828 () Bool)

(declare-fun call!135833 () Bool)

(assert (=> bm!135828 (= call!135833 (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2261005 () Bool)

(declare-fun e!1447670 () Bool)

(assert (=> b!2261005 (= e!1447670 (= (head!4849 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (c!359072 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))))

(declare-fun d!669902 () Bool)

(declare-fun e!1447674 () Bool)

(assert (=> d!669902 e!1447674))

(declare-fun c!359225 () Bool)

(assert (=> d!669902 (= c!359225 (is-EmptyExpr!6616 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun lt!840134 () Bool)

(declare-fun e!1447672 () Bool)

(assert (=> d!669902 (= lt!840134 e!1447672)))

(declare-fun c!359223 () Bool)

(assert (=> d!669902 (= c!359223 (isEmpty!15171 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(assert (=> d!669902 (validRegex!2475 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(assert (=> d!669902 (= (matchR!2877 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) lt!840134)))

(declare-fun b!2261006 () Bool)

(assert (=> b!2261006 (= e!1447674 (= lt!840134 call!135833))))

(declare-fun b!2261007 () Bool)

(declare-fun e!1447671 () Bool)

(assert (=> b!2261007 (= e!1447671 (not lt!840134))))

(declare-fun b!2261008 () Bool)

(assert (=> b!2261008 (= e!1447672 (matchR!2877 (derivativeStep!1479 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (head!4849 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))) (tail!3260 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun b!2261009 () Bool)

(declare-fun res!966587 () Bool)

(declare-fun e!1447675 () Bool)

(assert (=> b!2261009 (=> res!966587 e!1447675)))

(assert (=> b!2261009 (= res!966587 (not (is-ElementMatch!6616 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))))

(assert (=> b!2261009 (= e!1447671 e!1447675)))

(declare-fun b!2261010 () Bool)

(assert (=> b!2261010 (= e!1447672 (nullable!1817 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun b!2261011 () Bool)

(declare-fun res!966591 () Bool)

(assert (=> b!2261011 (=> res!966591 e!1447675)))

(assert (=> b!2261011 (= res!966591 e!1447670)))

(declare-fun res!966589 () Bool)

(assert (=> b!2261011 (=> (not res!966589) (not e!1447670))))

(assert (=> b!2261011 (= res!966589 lt!840134)))

(declare-fun b!2261012 () Bool)

(declare-fun e!1447673 () Bool)

(assert (=> b!2261012 (= e!1447675 e!1447673)))

(declare-fun res!966588 () Bool)

(assert (=> b!2261012 (=> (not res!966588) (not e!1447673))))

(assert (=> b!2261012 (= res!966588 (not lt!840134))))

(declare-fun b!2261013 () Bool)

(declare-fun res!966590 () Bool)

(assert (=> b!2261013 (=> (not res!966590) (not e!1447670))))

(assert (=> b!2261013 (= res!966590 (isEmpty!15171 (tail!3260 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun b!2261014 () Bool)

(declare-fun e!1447669 () Bool)

(assert (=> b!2261014 (= e!1447673 e!1447669)))

(declare-fun res!966592 () Bool)

(assert (=> b!2261014 (=> res!966592 e!1447669)))

(assert (=> b!2261014 (= res!966592 call!135833)))

(declare-fun b!2261015 () Bool)

(assert (=> b!2261015 (= e!1447669 (not (= (head!4849 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) (c!359072 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))))

(declare-fun b!2261016 () Bool)

(assert (=> b!2261016 (= e!1447674 e!1447671)))

(declare-fun c!359224 () Bool)

(assert (=> b!2261016 (= c!359224 (is-EmptyLang!6616 (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))))))))

(declare-fun b!2261017 () Bool)

(declare-fun res!966586 () Bool)

(assert (=> b!2261017 (=> (not res!966586) (not e!1447670))))

(assert (=> b!2261017 (= res!966586 (not call!135833))))

(declare-fun b!2261018 () Bool)

(declare-fun res!966585 () Bool)

(assert (=> b!2261018 (=> res!966585 e!1447669)))

(assert (=> b!2261018 (= res!966585 (not (isEmpty!15171 (tail!3260 (tail!3260 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))))

(assert (= (and d!669902 c!359223) b!2261010))

(assert (= (and d!669902 (not c!359223)) b!2261008))

(assert (= (and d!669902 c!359225) b!2261006))

(assert (= (and d!669902 (not c!359225)) b!2261016))

(assert (= (and b!2261016 c!359224) b!2261007))

(assert (= (and b!2261016 (not c!359224)) b!2261009))

(assert (= (and b!2261009 (not res!966587)) b!2261011))

(assert (= (and b!2261011 res!966589) b!2261017))

(assert (= (and b!2261017 res!966586) b!2261013))

(assert (= (and b!2261013 res!966590) b!2261005))

(assert (= (and b!2261011 (not res!966591)) b!2261012))

(assert (= (and b!2261012 res!966588) b!2261014))

(assert (= (and b!2261014 (not res!966592)) b!2261018))

(assert (= (and b!2261018 (not res!966585)) b!2261015))

(assert (= (or b!2261006 b!2261014 b!2261017) bm!135828))

(assert (=> b!2261015 m!2689981))

(declare-fun m!2690707 () Bool)

(assert (=> b!2261015 m!2690707))

(assert (=> bm!135828 m!2689981))

(assert (=> bm!135828 m!2689983))

(assert (=> b!2261018 m!2689981))

(declare-fun m!2690709 () Bool)

(assert (=> b!2261018 m!2690709))

(assert (=> b!2261018 m!2690709))

(declare-fun m!2690711 () Bool)

(assert (=> b!2261018 m!2690711))

(assert (=> b!2261010 m!2689985))

(declare-fun m!2690713 () Bool)

(assert (=> b!2261010 m!2690713))

(assert (=> d!669902 m!2689981))

(assert (=> d!669902 m!2689983))

(assert (=> d!669902 m!2689985))

(declare-fun m!2690715 () Bool)

(assert (=> d!669902 m!2690715))

(assert (=> b!2261013 m!2689981))

(assert (=> b!2261013 m!2690709))

(assert (=> b!2261013 m!2690709))

(assert (=> b!2261013 m!2690711))

(assert (=> b!2261005 m!2689981))

(assert (=> b!2261005 m!2690707))

(assert (=> b!2261008 m!2689981))

(assert (=> b!2261008 m!2690707))

(assert (=> b!2261008 m!2689985))

(assert (=> b!2261008 m!2690707))

(declare-fun m!2690717 () Bool)

(assert (=> b!2261008 m!2690717))

(assert (=> b!2261008 m!2689981))

(assert (=> b!2261008 m!2690709))

(assert (=> b!2261008 m!2690717))

(assert (=> b!2261008 m!2690709))

(declare-fun m!2690719 () Bool)

(assert (=> b!2261008 m!2690719))

(assert (=> b!2260370 d!669902))

(declare-fun b!2261069 () Bool)

(declare-fun c!359252 () Bool)

(assert (=> b!2261069 (= c!359252 (nullable!1817 (regOne!13744 (regex!4268 r!2363))))))

(declare-fun e!1447704 () Regex!6616)

(declare-fun e!1447705 () Regex!6616)

(assert (=> b!2261069 (= e!1447704 e!1447705)))

(declare-fun b!2261070 () Bool)

(declare-fun e!1447702 () Regex!6616)

(declare-fun call!135855 () Regex!6616)

(declare-fun call!135856 () Regex!6616)

(assert (=> b!2261070 (= e!1447702 (Union!6616 call!135855 call!135856))))

(declare-fun c!359255 () Bool)

(declare-fun bm!135849 () Bool)

(assert (=> bm!135849 (= call!135856 (derivativeStep!1479 (ite c!359255 (regTwo!13745 (regex!4268 r!2363)) (regTwo!13744 (regex!4268 r!2363))) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun b!2261071 () Bool)

(assert (=> b!2261071 (= e!1447702 e!1447704)))

(declare-fun c!359254 () Bool)

(assert (=> b!2261071 (= c!359254 (is-Star!6616 (regex!4268 r!2363)))))

(declare-fun b!2261072 () Bool)

(declare-fun e!1447701 () Regex!6616)

(assert (=> b!2261072 (= e!1447701 (ite (= (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456)))) (c!359072 (regex!4268 r!2363))) EmptyExpr!6616 EmptyLang!6616))))

(declare-fun bm!135850 () Bool)

(declare-fun call!135857 () Regex!6616)

(assert (=> bm!135850 (= call!135857 call!135855)))

(declare-fun bm!135851 () Bool)

(assert (=> bm!135851 (= call!135855 (derivativeStep!1479 (ite c!359255 (regOne!13745 (regex!4268 r!2363)) (ite c!359254 (reg!6945 (regex!4268 r!2363)) (regOne!13744 (regex!4268 r!2363)))) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))))))

(declare-fun d!669904 () Bool)

(declare-fun lt!840143 () Regex!6616)

(assert (=> d!669904 (validRegex!2475 lt!840143)))

(declare-fun e!1447703 () Regex!6616)

(assert (=> d!669904 (= lt!840143 e!1447703)))

(declare-fun c!359251 () Bool)

(assert (=> d!669904 (= c!359251 (or (is-EmptyExpr!6616 (regex!4268 r!2363)) (is-EmptyLang!6616 (regex!4268 r!2363))))))

(assert (=> d!669904 (validRegex!2475 (regex!4268 r!2363))))

(assert (=> d!669904 (= (derivativeStep!1479 (regex!4268 r!2363) (head!4849 (list!10348 (charsOf!2656 (head!4847 tokens!456))))) lt!840143)))

(declare-fun b!2261073 () Bool)

(assert (=> b!2261073 (= e!1447703 e!1447701)))

(declare-fun c!359253 () Bool)

(assert (=> b!2261073 (= c!359253 (is-ElementMatch!6616 (regex!4268 r!2363)))))

(declare-fun b!2261074 () Bool)

(assert (=> b!2261074 (= e!1447704 (Concat!11047 call!135857 (regex!4268 r!2363)))))

(declare-fun b!2261075 () Bool)

(assert (=> b!2261075 (= c!359255 (is-Union!6616 (regex!4268 r!2363)))))

(assert (=> b!2261075 (= e!1447701 e!1447702)))

(declare-fun b!2261076 () Bool)

(declare-fun call!135854 () Regex!6616)

(assert (=> b!2261076 (= e!1447705 (Union!6616 (Concat!11047 call!135854 (regTwo!13744 (regex!4268 r!2363))) EmptyLang!6616))))

(declare-fun bm!135852 () Bool)

(assert (=> bm!135852 (= call!135854 call!135857)))

(declare-fun b!2261077 () Bool)

(assert (=> b!2261077 (= e!1447703 EmptyLang!6616)))

(declare-fun b!2261078 () Bool)

(assert (=> b!2261078 (= e!1447705 (Union!6616 (Concat!11047 call!135854 (regTwo!13744 (regex!4268 r!2363))) call!135856))))

(assert (= (and d!669904 c!359251) b!2261077))

(assert (= (and d!669904 (not c!359251)) b!2261073))

(assert (= (and b!2261073 c!359253) b!2261072))

(assert (= (and b!2261073 (not c!359253)) b!2261075))

(assert (= (and b!2261075 c!359255) b!2261070))

(assert (= (and b!2261075 (not c!359255)) b!2261071))

(assert (= (and b!2261071 c!359254) b!2261074))

(assert (= (and b!2261071 (not c!359254)) b!2261069))

(assert (= (and b!2261069 c!359252) b!2261078))

(assert (= (and b!2261069 (not c!359252)) b!2261076))

(assert (= (or b!2261078 b!2261076) bm!135852))

(assert (= (or b!2261074 bm!135852) bm!135850))

(assert (= (or b!2261070 bm!135850) bm!135851))

(assert (= (or b!2261070 b!2261078) bm!135849))

(declare-fun m!2690733 () Bool)

(assert (=> b!2261069 m!2690733))

(assert (=> bm!135849 m!2689977))

(declare-fun m!2690735 () Bool)

(assert (=> bm!135849 m!2690735))

(assert (=> bm!135851 m!2689977))

(declare-fun m!2690737 () Bool)

(assert (=> bm!135851 m!2690737))

(declare-fun m!2690739 () Bool)

(assert (=> d!669904 m!2690739))

(assert (=> d!669904 m!2689945))

(assert (=> b!2260370 d!669904))

(assert (=> b!2260370 d!669754))

(assert (=> b!2260370 d!669720))

(assert (=> d!669658 d!669670))

(declare-fun d!669910 () Bool)

(declare-fun lt!840144 () Bool)

(assert (=> d!669910 (= lt!840144 (set.member (rule!6578 (_1!15722 (get!8096 lt!839853))) (content!3573 rules!1750)))))

(declare-fun e!1447707 () Bool)

(assert (=> d!669910 (= lt!840144 e!1447707)))

(declare-fun res!966594 () Bool)

(assert (=> d!669910 (=> (not res!966594) (not e!1447707))))

(assert (=> d!669910 (= res!966594 (is-Cons!26841 rules!1750))))

(assert (=> d!669910 (= (contains!4622 rules!1750 (rule!6578 (_1!15722 (get!8096 lt!839853)))) lt!840144)))

(declare-fun b!2261079 () Bool)

(declare-fun e!1447706 () Bool)

(assert (=> b!2261079 (= e!1447707 e!1447706)))

(declare-fun res!966593 () Bool)

(assert (=> b!2261079 (=> res!966593 e!1447706)))

(assert (=> b!2261079 (= res!966593 (= (h!32242 rules!1750) (rule!6578 (_1!15722 (get!8096 lt!839853)))))))

(declare-fun b!2261080 () Bool)

(assert (=> b!2261080 (= e!1447706 (contains!4622 (t!201553 rules!1750) (rule!6578 (_1!15722 (get!8096 lt!839853)))))))

(assert (= (and d!669910 res!966594) b!2261079))

(assert (= (and b!2261079 (not res!966593)) b!2261080))

(assert (=> d!669910 m!2689965))

(declare-fun m!2690741 () Bool)

(assert (=> d!669910 m!2690741))

(declare-fun m!2690743 () Bool)

(assert (=> b!2261080 m!2690743))

(assert (=> b!2260288 d!669910))

(assert (=> b!2260288 d!669760))

(declare-fun bs!455481 () Bool)

(declare-fun d!669912 () Bool)

(assert (= bs!455481 (and d!669912 d!669794)))

(declare-fun lambda!85337 () Int)

(assert (=> bs!455481 (= (= (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 r!2363))) (= lambda!85337 lambda!85321))))

(declare-fun bs!455482 () Bool)

(assert (= bs!455482 (and d!669912 d!669798)))

(assert (=> bs!455482 (= (= (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 otherR!12))) (= lambda!85337 lambda!85322))))

(assert (=> d!669912 true))

(assert (=> d!669912 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (dynLambda!11645 order!14979 lambda!85337))))

(assert (=> d!669912 (= (equivClasses!1638 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (Forall2!685 lambda!85337))))

(declare-fun bs!455483 () Bool)

(assert (= bs!455483 d!669912))

(declare-fun m!2690745 () Bool)

(assert (=> bs!455483 m!2690745))

(assert (=> b!2260238 d!669912))

(declare-fun d!669914 () Bool)

(declare-fun res!966595 () Bool)

(declare-fun e!1447712 () Bool)

(assert (=> d!669914 (=> (not res!966595) (not e!1447712))))

(assert (=> d!669914 (= res!966595 (not (isEmpty!15171 (originalCharacters!5038 (h!32243 (t!201554 tokens!456))))))))

(assert (=> d!669914 (= (inv!36379 (h!32243 (t!201554 tokens!456))) e!1447712)))

(declare-fun b!2261089 () Bool)

(declare-fun res!966596 () Bool)

(assert (=> b!2261089 (=> (not res!966596) (not e!1447712))))

(assert (=> b!2261089 (= res!966596 (= (originalCharacters!5038 (h!32243 (t!201554 tokens!456))) (list!10348 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (value!135459 (h!32243 (t!201554 tokens!456)))))))))

(declare-fun b!2261090 () Bool)

(assert (=> b!2261090 (= e!1447712 (= (size!21029 (h!32243 (t!201554 tokens!456))) (size!21031 (originalCharacters!5038 (h!32243 (t!201554 tokens!456))))))))

(assert (= (and d!669914 res!966595) b!2261089))

(assert (= (and b!2261089 res!966596) b!2261090))

(declare-fun b_lambda!72143 () Bool)

(assert (=> (not b_lambda!72143) (not b!2261089)))

(declare-fun tb!134019 () Bool)

(declare-fun t!201651 () Bool)

(assert (=> (and b!2260109 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201651) tb!134019))

(declare-fun b!2261095 () Bool)

(declare-fun e!1447715 () Bool)

(declare-fun tp!714942 () Bool)

(assert (=> b!2261095 (= e!1447715 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (value!135459 (h!32243 (t!201554 tokens!456)))))) tp!714942))))

(declare-fun result!163400 () Bool)

(assert (=> tb!134019 (= result!163400 (and (inv!36383 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (value!135459 (h!32243 (t!201554 tokens!456))))) e!1447715))))

(assert (= tb!134019 b!2261095))

(declare-fun m!2690755 () Bool)

(assert (=> b!2261095 m!2690755))

(declare-fun m!2690757 () Bool)

(assert (=> tb!134019 m!2690757))

(assert (=> b!2261089 t!201651))

(declare-fun b_and!177645 () Bool)

(assert (= b_and!177621 (and (=> t!201651 result!163400) b_and!177645)))

(declare-fun t!201653 () Bool)

(declare-fun tb!134021 () Bool)

(assert (=> (and b!2260523 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201653) tb!134021))

(declare-fun result!163402 () Bool)

(assert (= result!163402 result!163400))

(assert (=> b!2261089 t!201653))

(declare-fun b_and!177647 () Bool)

(assert (= b_and!177625 (and (=> t!201653 result!163402) b_and!177647)))

(declare-fun t!201655 () Bool)

(declare-fun tb!134023 () Bool)

(assert (=> (and b!2260086 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201655) tb!134023))

(declare-fun result!163404 () Bool)

(assert (= result!163404 result!163400))

(assert (=> b!2261089 t!201655))

(declare-fun b_and!177649 () Bool)

(assert (= b_and!177631 (and (=> t!201655 result!163404) b_and!177649)))

(declare-fun t!201657 () Bool)

(declare-fun tb!134025 () Bool)

(assert (=> (and b!2260478 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201657) tb!134025))

(declare-fun result!163406 () Bool)

(assert (= result!163406 result!163400))

(assert (=> b!2261089 t!201657))

(declare-fun b_and!177651 () Bool)

(assert (= b_and!177627 (and (=> t!201657 result!163406) b_and!177651)))

(declare-fun t!201659 () Bool)

(declare-fun tb!134027 () Bool)

(assert (=> (and b!2260116 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201659) tb!134027))

(declare-fun result!163408 () Bool)

(assert (= result!163408 result!163400))

(assert (=> b!2261089 t!201659))

(declare-fun b_and!177653 () Bool)

(assert (= b_and!177623 (and (=> t!201659 result!163408) b_and!177653)))

(declare-fun t!201661 () Bool)

(declare-fun tb!134029 () Bool)

(assert (=> (and b!2260091 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201661) tb!134029))

(declare-fun result!163410 () Bool)

(assert (= result!163410 result!163400))

(assert (=> b!2261089 t!201661))

(declare-fun b_and!177655 () Bool)

(assert (= b_and!177629 (and (=> t!201661 result!163410) b_and!177655)))

(declare-fun m!2690759 () Bool)

(assert (=> d!669914 m!2690759))

(declare-fun m!2690761 () Bool)

(assert (=> b!2261089 m!2690761))

(assert (=> b!2261089 m!2690761))

(declare-fun m!2690763 () Bool)

(assert (=> b!2261089 m!2690763))

(declare-fun m!2690765 () Bool)

(assert (=> b!2261090 m!2690765))

(assert (=> b!2260475 d!669914))

(declare-fun bs!455485 () Bool)

(declare-fun d!669918 () Bool)

(assert (= bs!455485 (and d!669918 d!669732)))

(declare-fun lambda!85338 () Int)

(assert (=> bs!455485 (= (and (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (= (toValue!6014 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456)))))) (= lambda!85338 lambda!85314))))

(declare-fun bs!455486 () Bool)

(assert (= bs!455486 (and d!669918 d!669780)))

(assert (=> bs!455486 (= (and (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (h!32242 rules!1750)))) (= (toValue!6014 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 (h!32242 rules!1750))))) (= lambda!85338 lambda!85315))))

(declare-fun bs!455487 () Bool)

(assert (= bs!455487 (and d!669918 d!669828)))

(assert (=> bs!455487 (= (and (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 otherR!12))) (= (toValue!6014 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 otherR!12)))) (= lambda!85338 lambda!85323))))

(assert (=> d!669918 true))

(assert (=> d!669918 (< (dynLambda!11642 order!14973 (toChars!5873 (transformation!4268 r!2363))) (dynLambda!11643 order!14975 lambda!85338))))

(assert (=> d!669918 true))

(assert (=> d!669918 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 r!2363))) (dynLambda!11643 order!14975 lambda!85338))))

(assert (=> d!669918 (= (semiInverseModEq!1719 (toChars!5873 (transformation!4268 r!2363)) (toValue!6014 (transformation!4268 r!2363))) (Forall!1068 lambda!85338))))

(declare-fun bs!455488 () Bool)

(assert (= bs!455488 d!669918))

(declare-fun m!2690769 () Bool)

(assert (=> bs!455488 m!2690769))

(assert (=> d!669656 d!669918))

(declare-fun d!669922 () Bool)

(declare-fun c!359262 () Bool)

(assert (=> d!669922 (= c!359262 (is-Node!8684 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))))))

(declare-fun e!1447718 () Bool)

(assert (=> d!669922 (= (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))) e!1447718)))

(declare-fun b!2261099 () Bool)

(assert (=> b!2261099 (= e!1447718 (inv!36386 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))))))

(declare-fun b!2261100 () Bool)

(declare-fun e!1447719 () Bool)

(assert (=> b!2261100 (= e!1447718 e!1447719)))

(declare-fun res!966599 () Bool)

(assert (=> b!2261100 (= res!966599 (not (is-Leaf!12804 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))))))

(assert (=> b!2261100 (=> res!966599 e!1447719)))

(declare-fun b!2261101 () Bool)

(assert (=> b!2261101 (= e!1447719 (inv!36387 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))))))

(assert (= (and d!669922 c!359262) b!2261099))

(assert (= (and d!669922 (not c!359262)) b!2261100))

(assert (= (and b!2261100 (not res!966599)) b!2261101))

(declare-fun m!2690775 () Bool)

(assert (=> b!2261099 m!2690775))

(declare-fun m!2690777 () Bool)

(assert (=> b!2261101 m!2690777))

(assert (=> b!2260389 d!669922))

(assert (=> d!669660 d!669604))

(declare-fun b!2261103 () Bool)

(declare-fun e!1447720 () List!26934)

(declare-fun e!1447721 () List!26934)

(assert (=> b!2261103 (= e!1447720 e!1447721)))

(declare-fun c!359264 () Bool)

(assert (=> b!2261103 (= c!359264 (is-Leaf!12804 (c!359071 (_2!15723 lt!839803))))))

(declare-fun b!2261104 () Bool)

(assert (=> b!2261104 (= e!1447721 (list!10355 (xs!11626 (c!359071 (_2!15723 lt!839803)))))))

(declare-fun b!2261102 () Bool)

(assert (=> b!2261102 (= e!1447720 Nil!26840)))

(declare-fun b!2261105 () Bool)

(assert (=> b!2261105 (= e!1447721 (++!6532 (list!10351 (left!20375 (c!359071 (_2!15723 lt!839803)))) (list!10351 (right!20705 (c!359071 (_2!15723 lt!839803))))))))

(declare-fun d!669924 () Bool)

(declare-fun c!359263 () Bool)

(assert (=> d!669924 (= c!359263 (is-Empty!8684 (c!359071 (_2!15723 lt!839803))))))

(assert (=> d!669924 (= (list!10351 (c!359071 (_2!15723 lt!839803))) e!1447720)))

(assert (= (and d!669924 c!359263) b!2261102))

(assert (= (and d!669924 (not c!359263)) b!2261103))

(assert (= (and b!2261103 c!359264) b!2261104))

(assert (= (and b!2261103 (not c!359264)) b!2261105))

(declare-fun m!2690787 () Bool)

(assert (=> b!2261104 m!2690787))

(declare-fun m!2690789 () Bool)

(assert (=> b!2261105 m!2690789))

(declare-fun m!2690791 () Bool)

(assert (=> b!2261105 m!2690791))

(assert (=> b!2261105 m!2690789))

(assert (=> b!2261105 m!2690791))

(declare-fun m!2690793 () Bool)

(assert (=> b!2261105 m!2690793))

(assert (=> d!669620 d!669924))

(declare-fun d!669928 () Bool)

(assert (=> d!669928 (= (inv!36375 (tag!4758 (h!32242 (t!201553 rules!1750)))) (= (mod (str.len (value!135458 (tag!4758 (h!32242 (t!201553 rules!1750))))) 2) 0))))

(assert (=> b!2260522 d!669928))

(declare-fun d!669930 () Bool)

(declare-fun res!966600 () Bool)

(declare-fun e!1447722 () Bool)

(assert (=> d!669930 (=> (not res!966600) (not e!1447722))))

(assert (=> d!669930 (= res!966600 (semiInverseModEq!1719 (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toValue!6014 (transformation!4268 (h!32242 (t!201553 rules!1750))))))))

(assert (=> d!669930 (= (inv!36378 (transformation!4268 (h!32242 (t!201553 rules!1750)))) e!1447722)))

(declare-fun b!2261106 () Bool)

(assert (=> b!2261106 (= e!1447722 (equivClasses!1638 (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toValue!6014 (transformation!4268 (h!32242 (t!201553 rules!1750))))))))

(assert (= (and d!669930 res!966600) b!2261106))

(declare-fun m!2690795 () Bool)

(assert (=> d!669930 m!2690795))

(declare-fun m!2690797 () Bool)

(assert (=> b!2261106 m!2690797))

(assert (=> b!2260522 d!669930))

(declare-fun bs!455489 () Bool)

(declare-fun d!669932 () Bool)

(assert (= bs!455489 (and d!669932 d!669794)))

(declare-fun lambda!85339 () Int)

(assert (=> bs!455489 (= (= (toValue!6014 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 r!2363))) (= lambda!85339 lambda!85321))))

(declare-fun bs!455490 () Bool)

(assert (= bs!455490 (and d!669932 d!669798)))

(assert (=> bs!455490 (= (= (toValue!6014 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 otherR!12))) (= lambda!85339 lambda!85322))))

(declare-fun bs!455491 () Bool)

(assert (= bs!455491 (and d!669932 d!669912)))

(assert (=> bs!455491 (= (= (toValue!6014 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) (= lambda!85339 lambda!85337))))

(assert (=> d!669932 true))

(assert (=> d!669932 (< (dynLambda!11644 order!14977 (toValue!6014 (transformation!4268 (h!32242 rules!1750)))) (dynLambda!11645 order!14979 lambda!85339))))

(assert (=> d!669932 (= (equivClasses!1638 (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toValue!6014 (transformation!4268 (h!32242 rules!1750)))) (Forall2!685 lambda!85339))))

(declare-fun bs!455492 () Bool)

(assert (= bs!455492 d!669932))

(declare-fun m!2690799 () Bool)

(assert (=> bs!455492 m!2690799))

(assert (=> b!2260329 d!669932))

(assert (=> b!2260306 d!669820))

(declare-fun d!669934 () Bool)

(assert (=> d!669934 (= (nullable!1817 (regex!4268 otherR!12)) (nullableFct!430 (regex!4268 otherR!12)))))

(declare-fun bs!455493 () Bool)

(assert (= bs!455493 d!669934))

(declare-fun m!2690801 () Bool)

(assert (=> bs!455493 m!2690801))

(assert (=> b!2260454 d!669934))

(assert (=> b!2260380 d!669718))

(assert (=> b!2260380 d!669720))

(declare-fun b!2261109 () Bool)

(declare-fun e!1447723 () Bool)

(declare-fun tp!714948 () Bool)

(assert (=> b!2261109 (= e!1447723 tp!714948)))

(assert (=> b!2260477 (= tp!714827 e!1447723)))

(declare-fun b!2261108 () Bool)

(declare-fun tp!714946 () Bool)

(declare-fun tp!714944 () Bool)

(assert (=> b!2261108 (= e!1447723 (and tp!714946 tp!714944))))

(declare-fun b!2261107 () Bool)

(assert (=> b!2261107 (= e!1447723 tp_is_empty!10453)))

(declare-fun b!2261110 () Bool)

(declare-fun tp!714945 () Bool)

(declare-fun tp!714947 () Bool)

(assert (=> b!2261110 (= e!1447723 (and tp!714945 tp!714947))))

(assert (= (and b!2260477 (is-ElementMatch!6616 (regex!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) b!2261107))

(assert (= (and b!2260477 (is-Concat!11047 (regex!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) b!2261108))

(assert (= (and b!2260477 (is-Star!6616 (regex!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) b!2261109))

(assert (= (and b!2260477 (is-Union!6616 (regex!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) b!2261110))

(declare-fun b!2261112 () Bool)

(declare-fun e!1447725 () Bool)

(declare-fun tp!714949 () Bool)

(assert (=> b!2261112 (= e!1447725 (and tp_is_empty!10453 tp!714949))))

(assert (=> b!2260498 (= tp!714847 e!1447725)))

(assert (= (and b!2260498 (is-Cons!26840 (t!201552 (t!201552 suffix!886)))) b!2261112))

(declare-fun b!2261115 () Bool)

(declare-fun e!1447726 () Bool)

(declare-fun tp!714954 () Bool)

(assert (=> b!2261115 (= e!1447726 tp!714954)))

(assert (=> b!2260490 (= tp!714841 e!1447726)))

(declare-fun b!2261114 () Bool)

(declare-fun tp!714952 () Bool)

(declare-fun tp!714950 () Bool)

(assert (=> b!2261114 (= e!1447726 (and tp!714952 tp!714950))))

(declare-fun b!2261113 () Bool)

(assert (=> b!2261113 (= e!1447726 tp_is_empty!10453)))

(declare-fun b!2261116 () Bool)

(declare-fun tp!714951 () Bool)

(declare-fun tp!714953 () Bool)

(assert (=> b!2261116 (= e!1447726 (and tp!714951 tp!714953))))

(assert (= (and b!2260490 (is-ElementMatch!6616 (regOne!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261113))

(assert (= (and b!2260490 (is-Concat!11047 (regOne!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261114))

(assert (= (and b!2260490 (is-Star!6616 (regOne!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261115))

(assert (= (and b!2260490 (is-Union!6616 (regOne!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261116))

(declare-fun b!2261123 () Bool)

(declare-fun e!1447730 () Bool)

(declare-fun tp!714959 () Bool)

(assert (=> b!2261123 (= e!1447730 tp!714959)))

(assert (=> b!2260490 (= tp!714839 e!1447730)))

(declare-fun b!2261122 () Bool)

(declare-fun tp!714957 () Bool)

(declare-fun tp!714955 () Bool)

(assert (=> b!2261122 (= e!1447730 (and tp!714957 tp!714955))))

(declare-fun b!2261121 () Bool)

(assert (=> b!2261121 (= e!1447730 tp_is_empty!10453)))

(declare-fun b!2261124 () Bool)

(declare-fun tp!714956 () Bool)

(declare-fun tp!714958 () Bool)

(assert (=> b!2261124 (= e!1447730 (and tp!714956 tp!714958))))

(assert (= (and b!2260490 (is-ElementMatch!6616 (regTwo!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261121))

(assert (= (and b!2260490 (is-Concat!11047 (regTwo!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261122))

(assert (= (and b!2260490 (is-Star!6616 (regTwo!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261123))

(assert (= (and b!2260490 (is-Union!6616 (regTwo!13744 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261124))

(declare-fun b!2261127 () Bool)

(declare-fun e!1447731 () Bool)

(declare-fun tp!714964 () Bool)

(assert (=> b!2261127 (= e!1447731 tp!714964)))

(assert (=> b!2260506 (= tp!714857 e!1447731)))

(declare-fun b!2261126 () Bool)

(declare-fun tp!714962 () Bool)

(declare-fun tp!714960 () Bool)

(assert (=> b!2261126 (= e!1447731 (and tp!714962 tp!714960))))

(declare-fun b!2261125 () Bool)

(assert (=> b!2261125 (= e!1447731 tp_is_empty!10453)))

(declare-fun b!2261128 () Bool)

(declare-fun tp!714961 () Bool)

(declare-fun tp!714963 () Bool)

(assert (=> b!2261128 (= e!1447731 (and tp!714961 tp!714963))))

(assert (= (and b!2260506 (is-ElementMatch!6616 (regOne!13744 (regex!4268 r!2363)))) b!2261125))

(assert (= (and b!2260506 (is-Concat!11047 (regOne!13744 (regex!4268 r!2363)))) b!2261126))

(assert (= (and b!2260506 (is-Star!6616 (regOne!13744 (regex!4268 r!2363)))) b!2261127))

(assert (= (and b!2260506 (is-Union!6616 (regOne!13744 (regex!4268 r!2363)))) b!2261128))

(declare-fun b!2261131 () Bool)

(declare-fun e!1447732 () Bool)

(declare-fun tp!714969 () Bool)

(assert (=> b!2261131 (= e!1447732 tp!714969)))

(assert (=> b!2260506 (= tp!714855 e!1447732)))

(declare-fun b!2261130 () Bool)

(declare-fun tp!714967 () Bool)

(declare-fun tp!714965 () Bool)

(assert (=> b!2261130 (= e!1447732 (and tp!714967 tp!714965))))

(declare-fun b!2261129 () Bool)

(assert (=> b!2261129 (= e!1447732 tp_is_empty!10453)))

(declare-fun b!2261132 () Bool)

(declare-fun tp!714966 () Bool)

(declare-fun tp!714968 () Bool)

(assert (=> b!2261132 (= e!1447732 (and tp!714966 tp!714968))))

(assert (= (and b!2260506 (is-ElementMatch!6616 (regTwo!13744 (regex!4268 r!2363)))) b!2261129))

(assert (= (and b!2260506 (is-Concat!11047 (regTwo!13744 (regex!4268 r!2363)))) b!2261130))

(assert (= (and b!2260506 (is-Star!6616 (regTwo!13744 (regex!4268 r!2363)))) b!2261131))

(assert (= (and b!2260506 (is-Union!6616 (regTwo!13744 (regex!4268 r!2363)))) b!2261132))

(declare-fun b!2261135 () Bool)

(declare-fun e!1447733 () Bool)

(declare-fun tp!714974 () Bool)

(assert (=> b!2261135 (= e!1447733 tp!714974)))

(assert (=> b!2260491 (= tp!714843 e!1447733)))

(declare-fun b!2261134 () Bool)

(declare-fun tp!714972 () Bool)

(declare-fun tp!714970 () Bool)

(assert (=> b!2261134 (= e!1447733 (and tp!714972 tp!714970))))

(declare-fun b!2261133 () Bool)

(assert (=> b!2261133 (= e!1447733 tp_is_empty!10453)))

(declare-fun b!2261136 () Bool)

(declare-fun tp!714971 () Bool)

(declare-fun tp!714973 () Bool)

(assert (=> b!2261136 (= e!1447733 (and tp!714971 tp!714973))))

(assert (= (and b!2260491 (is-ElementMatch!6616 (reg!6945 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261133))

(assert (= (and b!2260491 (is-Concat!11047 (reg!6945 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261134))

(assert (= (and b!2260491 (is-Star!6616 (reg!6945 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261135))

(assert (= (and b!2260491 (is-Union!6616 (reg!6945 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261136))

(declare-fun e!1447742 () Bool)

(declare-fun tp!714983 () Bool)

(declare-fun b!2261154 () Bool)

(declare-fun tp!714982 () Bool)

(assert (=> b!2261154 (= e!1447742 (and (inv!36382 (left!20375 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))) tp!714983 (inv!36382 (right!20705 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))) tp!714982))))

(declare-fun b!2261156 () Bool)

(declare-fun e!1447741 () Bool)

(declare-fun tp!714981 () Bool)

(assert (=> b!2261156 (= e!1447741 tp!714981)))

(declare-fun b!2261155 () Bool)

(declare-fun inv!36388 (IArray!17373) Bool)

(assert (=> b!2261155 (= e!1447742 (and (inv!36388 (xs!11626 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))) e!1447741))))

(assert (=> b!2260223 (= tp!714808 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456))))) e!1447742))))

(assert (= (and b!2260223 (is-Node!8684 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))) b!2261154))

(assert (= b!2261155 b!2261156))

(assert (= (and b!2260223 (is-Leaf!12804 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (value!135459 (h!32243 tokens!456)))))) b!2261155))

(declare-fun m!2690823 () Bool)

(assert (=> b!2261154 m!2690823))

(declare-fun m!2690825 () Bool)

(assert (=> b!2261154 m!2690825))

(declare-fun m!2690827 () Bool)

(assert (=> b!2261155 m!2690827))

(assert (=> b!2260223 m!2689855))

(declare-fun b!2261159 () Bool)

(declare-fun e!1447743 () Bool)

(declare-fun tp!714988 () Bool)

(assert (=> b!2261159 (= e!1447743 tp!714988)))

(assert (=> b!2260512 (= tp!714861 e!1447743)))

(declare-fun b!2261158 () Bool)

(declare-fun tp!714986 () Bool)

(declare-fun tp!714984 () Bool)

(assert (=> b!2261158 (= e!1447743 (and tp!714986 tp!714984))))

(declare-fun b!2261157 () Bool)

(assert (=> b!2261157 (= e!1447743 tp_is_empty!10453)))

(declare-fun b!2261160 () Bool)

(declare-fun tp!714985 () Bool)

(declare-fun tp!714987 () Bool)

(assert (=> b!2261160 (= e!1447743 (and tp!714985 tp!714987))))

(assert (= (and b!2260512 (is-ElementMatch!6616 (regOne!13745 (regex!4268 otherR!12)))) b!2261157))

(assert (= (and b!2260512 (is-Concat!11047 (regOne!13745 (regex!4268 otherR!12)))) b!2261158))

(assert (= (and b!2260512 (is-Star!6616 (regOne!13745 (regex!4268 otherR!12)))) b!2261159))

(assert (= (and b!2260512 (is-Union!6616 (regOne!13745 (regex!4268 otherR!12)))) b!2261160))

(declare-fun b!2261163 () Bool)

(declare-fun e!1447744 () Bool)

(declare-fun tp!714993 () Bool)

(assert (=> b!2261163 (= e!1447744 tp!714993)))

(assert (=> b!2260512 (= tp!714863 e!1447744)))

(declare-fun b!2261162 () Bool)

(declare-fun tp!714991 () Bool)

(declare-fun tp!714989 () Bool)

(assert (=> b!2261162 (= e!1447744 (and tp!714991 tp!714989))))

(declare-fun b!2261161 () Bool)

(assert (=> b!2261161 (= e!1447744 tp_is_empty!10453)))

(declare-fun b!2261164 () Bool)

(declare-fun tp!714990 () Bool)

(declare-fun tp!714992 () Bool)

(assert (=> b!2261164 (= e!1447744 (and tp!714990 tp!714992))))

(assert (= (and b!2260512 (is-ElementMatch!6616 (regTwo!13745 (regex!4268 otherR!12)))) b!2261161))

(assert (= (and b!2260512 (is-Concat!11047 (regTwo!13745 (regex!4268 otherR!12)))) b!2261162))

(assert (= (and b!2260512 (is-Star!6616 (regTwo!13745 (regex!4268 otherR!12)))) b!2261163))

(assert (= (and b!2260512 (is-Union!6616 (regTwo!13745 (regex!4268 otherR!12)))) b!2261164))

(declare-fun b!2261167 () Bool)

(declare-fun e!1447745 () Bool)

(declare-fun tp!714998 () Bool)

(assert (=> b!2261167 (= e!1447745 tp!714998)))

(assert (=> b!2260502 (= tp!714852 e!1447745)))

(declare-fun b!2261166 () Bool)

(declare-fun tp!714996 () Bool)

(declare-fun tp!714994 () Bool)

(assert (=> b!2261166 (= e!1447745 (and tp!714996 tp!714994))))

(declare-fun b!2261165 () Bool)

(assert (=> b!2261165 (= e!1447745 tp_is_empty!10453)))

(declare-fun b!2261168 () Bool)

(declare-fun tp!714995 () Bool)

(declare-fun tp!714997 () Bool)

(assert (=> b!2261168 (= e!1447745 (and tp!714995 tp!714997))))

(assert (= (and b!2260502 (is-ElementMatch!6616 (regOne!13744 (regex!4268 (h!32242 rules!1750))))) b!2261165))

(assert (= (and b!2260502 (is-Concat!11047 (regOne!13744 (regex!4268 (h!32242 rules!1750))))) b!2261166))

(assert (= (and b!2260502 (is-Star!6616 (regOne!13744 (regex!4268 (h!32242 rules!1750))))) b!2261167))

(assert (= (and b!2260502 (is-Union!6616 (regOne!13744 (regex!4268 (h!32242 rules!1750))))) b!2261168))

(declare-fun b!2261171 () Bool)

(declare-fun e!1447746 () Bool)

(declare-fun tp!715003 () Bool)

(assert (=> b!2261171 (= e!1447746 tp!715003)))

(assert (=> b!2260502 (= tp!714850 e!1447746)))

(declare-fun b!2261170 () Bool)

(declare-fun tp!715001 () Bool)

(declare-fun tp!714999 () Bool)

(assert (=> b!2261170 (= e!1447746 (and tp!715001 tp!714999))))

(declare-fun b!2261169 () Bool)

(assert (=> b!2261169 (= e!1447746 tp_is_empty!10453)))

(declare-fun b!2261172 () Bool)

(declare-fun tp!715000 () Bool)

(declare-fun tp!715002 () Bool)

(assert (=> b!2261172 (= e!1447746 (and tp!715000 tp!715002))))

(assert (= (and b!2260502 (is-ElementMatch!6616 (regTwo!13744 (regex!4268 (h!32242 rules!1750))))) b!2261169))

(assert (= (and b!2260502 (is-Concat!11047 (regTwo!13744 (regex!4268 (h!32242 rules!1750))))) b!2261170))

(assert (= (and b!2260502 (is-Star!6616 (regTwo!13744 (regex!4268 (h!32242 rules!1750))))) b!2261171))

(assert (= (and b!2260502 (is-Union!6616 (regTwo!13744 (regex!4268 (h!32242 rules!1750))))) b!2261172))

(declare-fun b!2261175 () Bool)

(declare-fun e!1447747 () Bool)

(declare-fun tp!715008 () Bool)

(assert (=> b!2261175 (= e!1447747 tp!715008)))

(assert (=> b!2260511 (= tp!714864 e!1447747)))

(declare-fun b!2261174 () Bool)

(declare-fun tp!715006 () Bool)

(declare-fun tp!715004 () Bool)

(assert (=> b!2261174 (= e!1447747 (and tp!715006 tp!715004))))

(declare-fun b!2261173 () Bool)

(assert (=> b!2261173 (= e!1447747 tp_is_empty!10453)))

(declare-fun b!2261176 () Bool)

(declare-fun tp!715005 () Bool)

(declare-fun tp!715007 () Bool)

(assert (=> b!2261176 (= e!1447747 (and tp!715005 tp!715007))))

(assert (= (and b!2260511 (is-ElementMatch!6616 (reg!6945 (regex!4268 otherR!12)))) b!2261173))

(assert (= (and b!2260511 (is-Concat!11047 (reg!6945 (regex!4268 otherR!12)))) b!2261174))

(assert (= (and b!2260511 (is-Star!6616 (reg!6945 (regex!4268 otherR!12)))) b!2261175))

(assert (= (and b!2260511 (is-Union!6616 (reg!6945 (regex!4268 otherR!12)))) b!2261176))

(declare-fun b!2261179 () Bool)

(declare-fun e!1447748 () Bool)

(declare-fun tp!715013 () Bool)

(assert (=> b!2261179 (= e!1447748 tp!715013)))

(assert (=> b!2260504 (= tp!714851 e!1447748)))

(declare-fun b!2261178 () Bool)

(declare-fun tp!715011 () Bool)

(declare-fun tp!715009 () Bool)

(assert (=> b!2261178 (= e!1447748 (and tp!715011 tp!715009))))

(declare-fun b!2261177 () Bool)

(assert (=> b!2261177 (= e!1447748 tp_is_empty!10453)))

(declare-fun b!2261180 () Bool)

(declare-fun tp!715010 () Bool)

(declare-fun tp!715012 () Bool)

(assert (=> b!2261180 (= e!1447748 (and tp!715010 tp!715012))))

(assert (= (and b!2260504 (is-ElementMatch!6616 (regOne!13745 (regex!4268 (h!32242 rules!1750))))) b!2261177))

(assert (= (and b!2260504 (is-Concat!11047 (regOne!13745 (regex!4268 (h!32242 rules!1750))))) b!2261178))

(assert (= (and b!2260504 (is-Star!6616 (regOne!13745 (regex!4268 (h!32242 rules!1750))))) b!2261179))

(assert (= (and b!2260504 (is-Union!6616 (regOne!13745 (regex!4268 (h!32242 rules!1750))))) b!2261180))

(declare-fun b!2261183 () Bool)

(declare-fun e!1447749 () Bool)

(declare-fun tp!715018 () Bool)

(assert (=> b!2261183 (= e!1447749 tp!715018)))

(assert (=> b!2260504 (= tp!714853 e!1447749)))

(declare-fun b!2261182 () Bool)

(declare-fun tp!715016 () Bool)

(declare-fun tp!715014 () Bool)

(assert (=> b!2261182 (= e!1447749 (and tp!715016 tp!715014))))

(declare-fun b!2261181 () Bool)

(assert (=> b!2261181 (= e!1447749 tp_is_empty!10453)))

(declare-fun b!2261184 () Bool)

(declare-fun tp!715015 () Bool)

(declare-fun tp!715017 () Bool)

(assert (=> b!2261184 (= e!1447749 (and tp!715015 tp!715017))))

(assert (= (and b!2260504 (is-ElementMatch!6616 (regTwo!13745 (regex!4268 (h!32242 rules!1750))))) b!2261181))

(assert (= (and b!2260504 (is-Concat!11047 (regTwo!13745 (regex!4268 (h!32242 rules!1750))))) b!2261182))

(assert (= (and b!2260504 (is-Star!6616 (regTwo!13745 (regex!4268 (h!32242 rules!1750))))) b!2261183))

(assert (= (and b!2260504 (is-Union!6616 (regTwo!13745 (regex!4268 (h!32242 rules!1750))))) b!2261184))

(declare-fun b!2261187 () Bool)

(declare-fun e!1447750 () Bool)

(declare-fun tp!715023 () Bool)

(assert (=> b!2261187 (= e!1447750 tp!715023)))

(assert (=> b!2260503 (= tp!714854 e!1447750)))

(declare-fun b!2261186 () Bool)

(declare-fun tp!715021 () Bool)

(declare-fun tp!715019 () Bool)

(assert (=> b!2261186 (= e!1447750 (and tp!715021 tp!715019))))

(declare-fun b!2261185 () Bool)

(assert (=> b!2261185 (= e!1447750 tp_is_empty!10453)))

(declare-fun b!2261188 () Bool)

(declare-fun tp!715020 () Bool)

(declare-fun tp!715022 () Bool)

(assert (=> b!2261188 (= e!1447750 (and tp!715020 tp!715022))))

(assert (= (and b!2260503 (is-ElementMatch!6616 (reg!6945 (regex!4268 (h!32242 rules!1750))))) b!2261185))

(assert (= (and b!2260503 (is-Concat!11047 (reg!6945 (regex!4268 (h!32242 rules!1750))))) b!2261186))

(assert (= (and b!2260503 (is-Star!6616 (reg!6945 (regex!4268 (h!32242 rules!1750))))) b!2261187))

(assert (= (and b!2260503 (is-Union!6616 (reg!6945 (regex!4268 (h!32242 rules!1750))))) b!2261188))

(declare-fun b!2261189 () Bool)

(declare-fun e!1447751 () Bool)

(declare-fun tp!715024 () Bool)

(assert (=> b!2261189 (= e!1447751 (and tp_is_empty!10453 tp!715024))))

(assert (=> b!2260476 (= tp!714825 e!1447751)))

(assert (= (and b!2260476 (is-Cons!26840 (originalCharacters!5038 (h!32243 (t!201554 tokens!456))))) b!2261189))

(declare-fun b!2261190 () Bool)

(declare-fun e!1447752 () Bool)

(declare-fun tp!715025 () Bool)

(assert (=> b!2261190 (= e!1447752 (and tp_is_empty!10453 tp!715025))))

(assert (=> b!2260497 (= tp!714846 e!1447752)))

(assert (= (and b!2260497 (is-Cons!26840 (t!201552 (t!201552 input!1722)))) b!2261190))

(declare-fun b!2261194 () Bool)

(declare-fun b_free!66765 () Bool)

(declare-fun b_next!67469 () Bool)

(assert (=> b!2261194 (= b_free!66765 (not b_next!67469))))

(declare-fun tb!134043 () Bool)

(declare-fun t!201675 () Bool)

(assert (=> (and b!2261194 (= (toValue!6014 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201675) tb!134043))

(declare-fun result!163426 () Bool)

(assert (= result!163426 result!163386))

(assert (=> d!669816 t!201675))

(declare-fun b_and!177669 () Bool)

(declare-fun tp!715030 () Bool)

(assert (=> b!2261194 (= tp!715030 (and (=> t!201675 result!163426) b_and!177669))))

(declare-fun b_free!66767 () Bool)

(declare-fun b_next!67471 () Bool)

(assert (=> b!2261194 (= b_free!66767 (not b_next!67471))))

(declare-fun t!201677 () Bool)

(declare-fun tb!134045 () Bool)

(assert (=> (and b!2261194 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201677) tb!134045))

(declare-fun result!163428 () Bool)

(assert (= result!163428 result!163294))

(assert (=> b!2260217 t!201677))

(declare-fun t!201679 () Bool)

(declare-fun tb!134047 () Bool)

(assert (=> (and b!2261194 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201679) tb!134047))

(declare-fun result!163430 () Bool)

(assert (= result!163430 result!163314))

(assert (=> d!669616 t!201679))

(declare-fun t!201681 () Bool)

(declare-fun tb!134049 () Bool)

(assert (=> (and b!2261194 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201681) tb!134049))

(declare-fun result!163432 () Bool)

(assert (= result!163432 result!163374))

(assert (=> d!669758 t!201681))

(declare-fun t!201683 () Bool)

(declare-fun tb!134051 () Bool)

(assert (=> (and b!2261194 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201683) tb!134051))

(declare-fun result!163434 () Bool)

(assert (= result!163434 result!163400))

(assert (=> b!2261089 t!201683))

(declare-fun tp!715026 () Bool)

(declare-fun b_and!177671 () Bool)

(assert (=> b!2261194 (= tp!715026 (and (=> t!201677 result!163428) (=> t!201679 result!163430) (=> t!201681 result!163432) (=> t!201683 result!163434) b_and!177671))))

(declare-fun tp!715029 () Bool)

(declare-fun b!2261193 () Bool)

(declare-fun e!1447756 () Bool)

(declare-fun e!1447754 () Bool)

(assert (=> b!2261193 (= e!1447754 (and tp!715029 (inv!36375 (tag!4758 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (inv!36378 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) e!1447756))))

(declare-fun e!1447755 () Bool)

(declare-fun tp!715027 () Bool)

(declare-fun b!2261192 () Bool)

(assert (=> b!2261192 (= e!1447755 (and (inv!21 (value!135459 (h!32243 (t!201554 (t!201554 tokens!456))))) e!1447754 tp!715027))))

(assert (=> b!2261194 (= e!1447756 (and tp!715030 tp!715026))))

(declare-fun b!2261191 () Bool)

(declare-fun e!1447758 () Bool)

(declare-fun tp!715028 () Bool)

(assert (=> b!2261191 (= e!1447758 (and (inv!36379 (h!32243 (t!201554 (t!201554 tokens!456)))) e!1447755 tp!715028))))

(assert (=> b!2260475 (= tp!714826 e!1447758)))

(assert (= b!2261193 b!2261194))

(assert (= b!2261192 b!2261193))

(assert (= b!2261191 b!2261192))

(assert (= (and b!2260475 (is-Cons!26842 (t!201554 (t!201554 tokens!456)))) b!2261191))

(declare-fun m!2690861 () Bool)

(assert (=> b!2261193 m!2690861))

(declare-fun m!2690863 () Bool)

(assert (=> b!2261193 m!2690863))

(declare-fun m!2690865 () Bool)

(assert (=> b!2261192 m!2690865))

(declare-fun m!2690867 () Bool)

(assert (=> b!2261191 m!2690867))

(declare-fun tp!715033 () Bool)

(declare-fun e!1447762 () Bool)

(declare-fun b!2261199 () Bool)

(declare-fun tp!715032 () Bool)

(assert (=> b!2261199 (= e!1447762 (and (inv!36382 (left!20375 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))) tp!715033 (inv!36382 (right!20705 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))) tp!715032))))

(declare-fun b!2261201 () Bool)

(declare-fun e!1447761 () Bool)

(declare-fun tp!715031 () Bool)

(assert (=> b!2261201 (= e!1447761 tp!715031)))

(declare-fun b!2261200 () Bool)

(assert (=> b!2261200 (= e!1447762 (and (inv!36388 (xs!11626 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))) e!1447761))))

(assert (=> b!2260389 (= tp!714812 (and (inv!36382 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456))))) e!1447762))))

(assert (= (and b!2260389 (is-Node!8684 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))) b!2261199))

(assert (= b!2261200 b!2261201))

(assert (= (and b!2260389 (is-Leaf!12804 (c!359071 (dynLambda!11640 (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))) (value!135459 (head!4847 tokens!456)))))) b!2261200))

(declare-fun m!2690869 () Bool)

(assert (=> b!2261199 m!2690869))

(declare-fun m!2690871 () Bool)

(assert (=> b!2261199 m!2690871))

(declare-fun m!2690873 () Bool)

(assert (=> b!2261200 m!2690873))

(assert (=> b!2260389 m!2689991))

(declare-fun b!2261204 () Bool)

(declare-fun b_free!66769 () Bool)

(declare-fun b_next!67473 () Bool)

(assert (=> b!2261204 (= b_free!66769 (not b_next!67473))))

(declare-fun t!201685 () Bool)

(declare-fun tb!134053 () Bool)

(assert (=> (and b!2261204 (= (toValue!6014 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toValue!6014 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201685) tb!134053))

(declare-fun result!163436 () Bool)

(assert (= result!163436 result!163386))

(assert (=> d!669816 t!201685))

(declare-fun b_and!177673 () Bool)

(declare-fun tp!715034 () Bool)

(assert (=> b!2261204 (= tp!715034 (and (=> t!201685 result!163436) b_and!177673))))

(declare-fun b_free!66771 () Bool)

(declare-fun b_next!67475 () Bool)

(assert (=> b!2261204 (= b_free!66771 (not b_next!67475))))

(declare-fun tb!134055 () Bool)

(declare-fun t!201687 () Bool)

(assert (=> (and b!2261204 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456))))) t!201687) tb!134055))

(declare-fun result!163438 () Bool)

(assert (= result!163438 result!163294))

(assert (=> b!2260217 t!201687))

(declare-fun tb!134057 () Bool)

(declare-fun t!201689 () Bool)

(assert (=> (and b!2261204 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456))))) t!201689) tb!134057))

(declare-fun result!163440 () Bool)

(assert (= result!163440 result!163314))

(assert (=> d!669616 t!201689))

(declare-fun t!201691 () Bool)

(declare-fun tb!134059 () Bool)

(assert (=> (and b!2261204 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (_1!15722 (get!8096 lt!839853)))))) t!201691) tb!134059))

(declare-fun result!163442 () Bool)

(assert (= result!163442 result!163374))

(assert (=> d!669758 t!201691))

(declare-fun t!201693 () Bool)

(declare-fun tb!134061 () Bool)

(assert (=> (and b!2261204 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456)))))) t!201693) tb!134061))

(declare-fun result!163444 () Bool)

(assert (= result!163444 result!163400))

(assert (=> b!2261089 t!201693))

(declare-fun b_and!177675 () Bool)

(declare-fun tp!715035 () Bool)

(assert (=> b!2261204 (= tp!715035 (and (=> t!201687 result!163438) (=> t!201689 result!163440) (=> t!201691 result!163442) (=> t!201693 result!163444) b_and!177675))))

(declare-fun e!1447765 () Bool)

(assert (=> b!2261204 (= e!1447765 (and tp!715034 tp!715035))))

(declare-fun tp!715036 () Bool)

(declare-fun e!1447764 () Bool)

(declare-fun b!2261203 () Bool)

(assert (=> b!2261203 (= e!1447764 (and tp!715036 (inv!36375 (tag!4758 (h!32242 (t!201553 (t!201553 rules!1750))))) (inv!36378 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) e!1447765))))

(declare-fun b!2261202 () Bool)

(declare-fun e!1447763 () Bool)

(declare-fun tp!715037 () Bool)

(assert (=> b!2261202 (= e!1447763 (and e!1447764 tp!715037))))

(assert (=> b!2260521 (= tp!714876 e!1447763)))

(assert (= b!2261203 b!2261204))

(assert (= b!2261202 b!2261203))

(assert (= (and b!2260521 (is-Cons!26841 (t!201553 (t!201553 rules!1750)))) b!2261202))

(declare-fun m!2690875 () Bool)

(assert (=> b!2261203 m!2690875))

(declare-fun m!2690877 () Bool)

(assert (=> b!2261203 m!2690877))

(declare-fun b!2261207 () Bool)

(declare-fun e!1447767 () Bool)

(declare-fun tp!715042 () Bool)

(assert (=> b!2261207 (= e!1447767 tp!715042)))

(assert (=> b!2260522 (= tp!714875 e!1447767)))

(declare-fun b!2261206 () Bool)

(declare-fun tp!715040 () Bool)

(declare-fun tp!715038 () Bool)

(assert (=> b!2261206 (= e!1447767 (and tp!715040 tp!715038))))

(declare-fun b!2261205 () Bool)

(assert (=> b!2261205 (= e!1447767 tp_is_empty!10453)))

(declare-fun b!2261208 () Bool)

(declare-fun tp!715039 () Bool)

(declare-fun tp!715041 () Bool)

(assert (=> b!2261208 (= e!1447767 (and tp!715039 tp!715041))))

(assert (= (and b!2260522 (is-ElementMatch!6616 (regex!4268 (h!32242 (t!201553 rules!1750))))) b!2261205))

(assert (= (and b!2260522 (is-Concat!11047 (regex!4268 (h!32242 (t!201553 rules!1750))))) b!2261206))

(assert (= (and b!2260522 (is-Star!6616 (regex!4268 (h!32242 (t!201553 rules!1750))))) b!2261207))

(assert (= (and b!2260522 (is-Union!6616 (regex!4268 (h!32242 (t!201553 rules!1750))))) b!2261208))

(declare-fun b!2261211 () Bool)

(declare-fun e!1447768 () Bool)

(declare-fun tp!715047 () Bool)

(assert (=> b!2261211 (= e!1447768 tp!715047)))

(assert (=> b!2260510 (= tp!714862 e!1447768)))

(declare-fun b!2261210 () Bool)

(declare-fun tp!715045 () Bool)

(declare-fun tp!715043 () Bool)

(assert (=> b!2261210 (= e!1447768 (and tp!715045 tp!715043))))

(declare-fun b!2261209 () Bool)

(assert (=> b!2261209 (= e!1447768 tp_is_empty!10453)))

(declare-fun b!2261212 () Bool)

(declare-fun tp!715044 () Bool)

(declare-fun tp!715046 () Bool)

(assert (=> b!2261212 (= e!1447768 (and tp!715044 tp!715046))))

(assert (= (and b!2260510 (is-ElementMatch!6616 (regOne!13744 (regex!4268 otherR!12)))) b!2261209))

(assert (= (and b!2260510 (is-Concat!11047 (regOne!13744 (regex!4268 otherR!12)))) b!2261210))

(assert (= (and b!2260510 (is-Star!6616 (regOne!13744 (regex!4268 otherR!12)))) b!2261211))

(assert (= (and b!2260510 (is-Union!6616 (regOne!13744 (regex!4268 otherR!12)))) b!2261212))

(declare-fun b!2261215 () Bool)

(declare-fun e!1447769 () Bool)

(declare-fun tp!715052 () Bool)

(assert (=> b!2261215 (= e!1447769 tp!715052)))

(assert (=> b!2260510 (= tp!714860 e!1447769)))

(declare-fun b!2261214 () Bool)

(declare-fun tp!715050 () Bool)

(declare-fun tp!715048 () Bool)

(assert (=> b!2261214 (= e!1447769 (and tp!715050 tp!715048))))

(declare-fun b!2261213 () Bool)

(assert (=> b!2261213 (= e!1447769 tp_is_empty!10453)))

(declare-fun b!2261216 () Bool)

(declare-fun tp!715049 () Bool)

(declare-fun tp!715051 () Bool)

(assert (=> b!2261216 (= e!1447769 (and tp!715049 tp!715051))))

(assert (= (and b!2260510 (is-ElementMatch!6616 (regTwo!13744 (regex!4268 otherR!12)))) b!2261213))

(assert (= (and b!2260510 (is-Concat!11047 (regTwo!13744 (regex!4268 otherR!12)))) b!2261214))

(assert (= (and b!2260510 (is-Star!6616 (regTwo!13744 (regex!4268 otherR!12)))) b!2261215))

(assert (= (and b!2260510 (is-Union!6616 (regTwo!13744 (regex!4268 otherR!12)))) b!2261216))

(declare-fun b!2261223 () Bool)

(declare-fun e!1447774 () Bool)

(declare-fun tp!715057 () Bool)

(assert (=> b!2261223 (= e!1447774 tp!715057)))

(assert (=> b!2260507 (= tp!714859 e!1447774)))

(declare-fun b!2261222 () Bool)

(declare-fun tp!715055 () Bool)

(declare-fun tp!715053 () Bool)

(assert (=> b!2261222 (= e!1447774 (and tp!715055 tp!715053))))

(declare-fun b!2261221 () Bool)

(assert (=> b!2261221 (= e!1447774 tp_is_empty!10453)))

(declare-fun b!2261224 () Bool)

(declare-fun tp!715054 () Bool)

(declare-fun tp!715056 () Bool)

(assert (=> b!2261224 (= e!1447774 (and tp!715054 tp!715056))))

(assert (= (and b!2260507 (is-ElementMatch!6616 (reg!6945 (regex!4268 r!2363)))) b!2261221))

(assert (= (and b!2260507 (is-Concat!11047 (reg!6945 (regex!4268 r!2363)))) b!2261222))

(assert (= (and b!2260507 (is-Star!6616 (reg!6945 (regex!4268 r!2363)))) b!2261223))

(assert (= (and b!2260507 (is-Union!6616 (reg!6945 (regex!4268 r!2363)))) b!2261224))

(declare-fun b!2261227 () Bool)

(declare-fun e!1447775 () Bool)

(declare-fun tp!715062 () Bool)

(assert (=> b!2261227 (= e!1447775 tp!715062)))

(assert (=> b!2260492 (= tp!714840 e!1447775)))

(declare-fun b!2261226 () Bool)

(declare-fun tp!715060 () Bool)

(declare-fun tp!715058 () Bool)

(assert (=> b!2261226 (= e!1447775 (and tp!715060 tp!715058))))

(declare-fun b!2261225 () Bool)

(assert (=> b!2261225 (= e!1447775 tp_is_empty!10453)))

(declare-fun b!2261228 () Bool)

(declare-fun tp!715059 () Bool)

(declare-fun tp!715061 () Bool)

(assert (=> b!2261228 (= e!1447775 (and tp!715059 tp!715061))))

(assert (= (and b!2260492 (is-ElementMatch!6616 (regOne!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261225))

(assert (= (and b!2260492 (is-Concat!11047 (regOne!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261226))

(assert (= (and b!2260492 (is-Star!6616 (regOne!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261227))

(assert (= (and b!2260492 (is-Union!6616 (regOne!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261228))

(declare-fun b!2261231 () Bool)

(declare-fun e!1447776 () Bool)

(declare-fun tp!715067 () Bool)

(assert (=> b!2261231 (= e!1447776 tp!715067)))

(assert (=> b!2260492 (= tp!714842 e!1447776)))

(declare-fun b!2261230 () Bool)

(declare-fun tp!715065 () Bool)

(declare-fun tp!715063 () Bool)

(assert (=> b!2261230 (= e!1447776 (and tp!715065 tp!715063))))

(declare-fun b!2261229 () Bool)

(assert (=> b!2261229 (= e!1447776 tp_is_empty!10453)))

(declare-fun b!2261232 () Bool)

(declare-fun tp!715064 () Bool)

(declare-fun tp!715066 () Bool)

(assert (=> b!2261232 (= e!1447776 (and tp!715064 tp!715066))))

(assert (= (and b!2260492 (is-ElementMatch!6616 (regTwo!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261229))

(assert (= (and b!2260492 (is-Concat!11047 (regTwo!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261230))

(assert (= (and b!2260492 (is-Star!6616 (regTwo!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261231))

(assert (= (and b!2260492 (is-Union!6616 (regTwo!13745 (regex!4268 (rule!6578 (h!32243 tokens!456)))))) b!2261232))

(declare-fun b!2261233 () Bool)

(declare-fun e!1447777 () Bool)

(declare-fun tp!715068 () Bool)

(assert (=> b!2261233 (= e!1447777 (and tp_is_empty!10453 tp!715068))))

(assert (=> b!2260499 (= tp!714848 e!1447777)))

(assert (= (and b!2260499 (is-Cons!26840 (t!201552 (t!201552 otherP!12)))) b!2261233))

(declare-fun b!2261236 () Bool)

(declare-fun e!1447778 () Bool)

(declare-fun tp!715073 () Bool)

(assert (=> b!2261236 (= e!1447778 tp!715073)))

(assert (=> b!2260508 (= tp!714856 e!1447778)))

(declare-fun b!2261235 () Bool)

(declare-fun tp!715071 () Bool)

(declare-fun tp!715069 () Bool)

(assert (=> b!2261235 (= e!1447778 (and tp!715071 tp!715069))))

(declare-fun b!2261234 () Bool)

(assert (=> b!2261234 (= e!1447778 tp_is_empty!10453)))

(declare-fun b!2261237 () Bool)

(declare-fun tp!715070 () Bool)

(declare-fun tp!715072 () Bool)

(assert (=> b!2261237 (= e!1447778 (and tp!715070 tp!715072))))

(assert (= (and b!2260508 (is-ElementMatch!6616 (regOne!13745 (regex!4268 r!2363)))) b!2261234))

(assert (= (and b!2260508 (is-Concat!11047 (regOne!13745 (regex!4268 r!2363)))) b!2261235))

(assert (= (and b!2260508 (is-Star!6616 (regOne!13745 (regex!4268 r!2363)))) b!2261236))

(assert (= (and b!2260508 (is-Union!6616 (regOne!13745 (regex!4268 r!2363)))) b!2261237))

(declare-fun b!2261240 () Bool)

(declare-fun e!1447779 () Bool)

(declare-fun tp!715078 () Bool)

(assert (=> b!2261240 (= e!1447779 tp!715078)))

(assert (=> b!2260508 (= tp!714858 e!1447779)))

(declare-fun b!2261239 () Bool)

(declare-fun tp!715076 () Bool)

(declare-fun tp!715074 () Bool)

(assert (=> b!2261239 (= e!1447779 (and tp!715076 tp!715074))))

(declare-fun b!2261238 () Bool)

(assert (=> b!2261238 (= e!1447779 tp_is_empty!10453)))

(declare-fun b!2261241 () Bool)

(declare-fun tp!715075 () Bool)

(declare-fun tp!715077 () Bool)

(assert (=> b!2261241 (= e!1447779 (and tp!715075 tp!715077))))

(assert (= (and b!2260508 (is-ElementMatch!6616 (regTwo!13745 (regex!4268 r!2363)))) b!2261238))

(assert (= (and b!2260508 (is-Concat!11047 (regTwo!13745 (regex!4268 r!2363)))) b!2261239))

(assert (= (and b!2260508 (is-Star!6616 (regTwo!13745 (regex!4268 r!2363)))) b!2261240))

(assert (= (and b!2260508 (is-Union!6616 (regTwo!13745 (regex!4268 r!2363)))) b!2261241))

(declare-fun b!2261244 () Bool)

(declare-fun e!1447782 () Bool)

(declare-fun tp!715079 () Bool)

(assert (=> b!2261244 (= e!1447782 (and tp_is_empty!10453 tp!715079))))

(assert (=> b!2260500 (= tp!714849 e!1447782)))

(assert (= (and b!2260500 (is-Cons!26840 (t!201552 (originalCharacters!5038 (h!32243 tokens!456))))) b!2261244))

(declare-fun b_lambda!72147 () Bool)

(assert (= b_lambda!72143 (or (and b!2260478 b_free!66751) (and b!2260523 b_free!66755 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2260109 b_free!66723 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2261194 b_free!66767 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2260091 b_free!66731 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2260086 b_free!66719 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2260116 b_free!66727 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) (and b!2261204 b_free!66771 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))))) b_lambda!72147)))

(declare-fun b_lambda!72149 () Bool)

(assert (= b_lambda!72129 (or (and b!2260116 b_free!66727 (= (toChars!5873 (transformation!4268 (h!32242 rules!1750))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2261194 b_free!66767 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 (t!201554 tokens!456)))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2260091 b_free!66731 (= (toChars!5873 (transformation!4268 otherR!12)) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2260478 b_free!66751 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 (t!201554 tokens!456))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2261204 b_free!66771 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 (t!201553 rules!1750))))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2260109 b_free!66723 (= (toChars!5873 (transformation!4268 r!2363)) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2260523 b_free!66755 (= (toChars!5873 (transformation!4268 (h!32242 (t!201553 rules!1750)))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) (and b!2260086 b_free!66719 (= (toChars!5873 (transformation!4268 (rule!6578 (h!32243 tokens!456)))) (toChars!5873 (transformation!4268 (rule!6578 (head!4847 tokens!456)))))) b_lambda!72149)))

(push 1)

(assert (not b!2260875))

(assert (not d!669900))

(assert (not b!2260726))

(assert (not d!669860))

(assert (not b_next!67459))

(assert (not b!2260681))

(assert (not d!669792))

(assert (not b!2260784))

(assert (not b!2261005))

(assert b_and!177645)

(assert (not d!669902))

(assert (not b!2260785))

(assert (not b!2260909))

(assert (not b!2261164))

(assert (not b_next!67471))

(assert (not b_next!67453))

(assert (not b!2260727))

(assert (not b!2261156))

(assert (not b!2261201))

(assert (not b!2261186))

(assert (not d!669822))

(assert (not b_next!67473))

(assert (not b_next!67431))

(assert (not b!2261188))

(assert (not b!2261130))

(assert (not b!2260867))

(assert (not b!2260731))

(assert (not b_next!67435))

(assert (not b!2261134))

(assert (not b!2261231))

(assert (not b!2261180))

(assert (not bm!135820))

(assert (not b!2260834))

(assert (not d!669766))

(assert (not b!2261163))

(assert (not b!2260827))

(assert (not b!2261192))

(assert tp_is_empty!10453)

(assert (not b!2261227))

(assert (not b!2261239))

(assert (not b!2260730))

(assert (not d!669722))

(assert (not b!2261211))

(assert (not b!2260848))

(assert b_and!177653)

(assert (not b!2260877))

(assert (not d!669702))

(assert (not b!2261183))

(assert (not b!2261193))

(assert (not d!669758))

(assert (not b!2261241))

(assert (not b!2261187))

(assert (not d!669756))

(assert (not b!2261131))

(assert b_and!177639)

(assert (not b_next!67469))

(assert (not b_lambda!72139))

(assert (not d!669780))

(assert (not d!669934))

(assert (not b!2261160))

(assert (not d!669804))

(assert (not b!2261127))

(assert (not b!2261132))

(assert (not b!2261176))

(assert (not bm!135826))

(assert (not b!2261101))

(assert (not d!669786))

(assert (not b!2260883))

(assert (not b!2261128))

(assert (not b!2261232))

(assert (not d!669798))

(assert (not b!2261166))

(assert b_and!177651)

(assert (not b!2261013))

(assert (not d!669814))

(assert (not b_lambda!72147))

(assert (not d!669726))

(assert (not b!2261008))

(assert (not b!2260880))

(assert (not b!2260823))

(assert (not b_next!67427))

(assert b_and!177641)

(assert (not d!669828))

(assert (not bm!135823))

(assert (not b!2261115))

(assert (not b!2260787))

(assert (not b_next!67429))

(assert (not b!2261112))

(assert (not b!2261158))

(assert (not d!669778))

(assert (not b!2260884))

(assert (not b!2260907))

(assert (not b!2260707))

(assert (not b_next!67433))

(assert (not b!2261168))

(assert (not b!2260982))

(assert b_and!177649)

(assert (not b!2260786))

(assert (not b_next!67475))

(assert (not d!669930))

(assert (not d!669704))

(assert (not b!2261126))

(assert (not b!2261110))

(assert (not d!669932))

(assert (not b!2261182))

(assert (not b!2261170))

(assert (not b!2261109))

(assert (not b!2261237))

(assert (not b!2260866))

(assert b_and!177675)

(assert (not d!669732))

(assert (not d!669818))

(assert (not d!669912))

(assert (not d!669762))

(assert (not d!669910))

(assert (not b!2261136))

(assert (not b_next!67455))

(assert (not d!669776))

(assert (not b!2260872))

(assert (not b!2260790))

(assert (not b_lambda!72141))

(assert (not d!669904))

(assert (not bm!135851))

(assert (not b!2260822))

(assert (not b!2260861))

(assert (not b!2260682))

(assert (not b!2261123))

(assert (not b!2260789))

(assert (not b!2261162))

(assert (not b!2261124))

(assert (not b!2260916))

(assert (not d!669796))

(assert (not b!2260896))

(assert (not b!2261184))

(assert (not b!2260732))

(assert (not b!2261099))

(assert (not b!2260895))

(assert (not b!2261228))

(assert b_and!177669)

(assert (not b!2261080))

(assert (not b!2260841))

(assert (not b!2261069))

(assert (not d!669790))

(assert (not b!2261159))

(assert (not b!2261191))

(assert (not b!2260819))

(assert (not b!2260728))

(assert (not b!2261214))

(assert (not b!2261122))

(assert (not b!2261206))

(assert (not b!2261015))

(assert b_and!177643)

(assert (not tb!133995))

(assert (not d!669836))

(assert (not bm!135813))

(assert (not b!2260917))

(assert (not b!2261223))

(assert (not b!2261216))

(assert (not b!2260703))

(assert (not b!2261104))

(assert b_and!177633)

(assert (not b!2260911))

(assert (not d!669714))

(assert b_and!177655)

(assert (not b!2261105))

(assert (not b_next!67457))

(assert (not d!669826))

(assert (not d!669764))

(assert (not b!2261190))

(assert (not b!2261154))

(assert (not d!669856))

(assert (not b!2261189))

(assert (not b!2261200))

(assert (not b!2260981))

(assert (not b!2261236))

(assert (not b!2261210))

(assert (not d!669800))

(assert (not d!669802))

(assert (not bm!135822))

(assert (not b!2260781))

(assert (not b!2261178))

(assert (not b!2261207))

(assert (not b!2261199))

(assert b_and!177671)

(assert (not tb!134007))

(assert (not b!2260696))

(assert (not b!2260987))

(assert (not bm!135849))

(assert (not b_lambda!72149))

(assert (not b!2260783))

(assert b_and!177647)

(assert (not b!2261233))

(assert (not b!2260705))

(assert (not b!2261240))

(assert (not d!669914))

(assert (not b!2261106))

(assert (not b!2260882))

(assert (not b!2261224))

(assert (not b!2261235))

(assert (not b!2261244))

(assert (not d!669858))

(assert (not b!2261172))

(assert (not b_lambda!72133))

(assert (not b!2261171))

(assert (not b!2260900))

(assert (not b!2261174))

(assert (not b!2260870))

(assert b_and!177635)

(assert (not b!2261230))

(assert (not b_next!67421))

(assert (not b!2261089))

(assert (not b_next!67423))

(assert (not b!2260812))

(assert (not b!2260849))

(assert (not b!2260734))

(assert (not d!669784))

(assert (not b!2261179))

(assert (not d!669728))

(assert (not b!2261215))

(assert (not b!2261175))

(assert (not b!2260782))

(assert (not b!2260862))

(assert (not b_next!67425))

(assert (not b!2261202))

(assert (not d!669706))

(assert (not b!2261090))

(assert (not d!669794))

(assert (not b!2261212))

(assert b_and!177637)

(assert (not b!2261208))

(assert (not b!2261114))

(assert (not b!2260910))

(assert (not b!2260847))

(assert (not d!669854))

(assert (not b!2260820))

(assert (not b!2260779))

(assert (not b!2260983))

(assert (not b!2261108))

(assert (not b!2261222))

(assert (not b!2261226))

(assert (not b!2261135))

(assert (not b!2260830))

(assert (not d!669810))

(assert (not b!2260743))

(assert (not b!2261116))

(assert (not bm!135824))

(assert (not b!2260389))

(assert (not b!2261155))

(assert (not d!669824))

(assert (not bm!135828))

(assert (not b!2260733))

(assert (not d!669820))

(assert (not d!669918))

(assert (not d!669832))

(assert (not b!2260223))

(assert (not b!2261203))

(assert (not b!2261018))

(assert b_and!177673)

(assert (not d!669830))

(assert (not b!2261010))

(assert (not b!2260741))

(assert (not b!2261095))

(assert (not b!2260695))

(assert (not b!2260693))

(assert (not tb!134019))

(assert (not b!2261167))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!67435))

(assert b_and!177653)

(assert b_and!177651)

(assert (not b_next!67427))

(assert b_and!177675)

(assert (not b_next!67455))

(assert b_and!177669)

(assert b_and!177643)

(assert (not b_next!67457))

(assert b_and!177671)

(assert b_and!177647)

(assert (not b_next!67425))

(assert b_and!177637)

(assert b_and!177673)

(assert b_and!177645)

(assert (not b_next!67459))

(assert (not b_next!67471))

(assert (not b_next!67453))

(assert (not b_next!67473))

(assert (not b_next!67431))

(assert b_and!177639)

(assert (not b_next!67469))

(assert b_and!177641)

(assert (not b_next!67429))

(assert (not b_next!67433))

(assert b_and!177649)

(assert (not b_next!67475))

(assert b_and!177655)

(assert b_and!177633)

(assert b_and!177635)

(assert (not b_next!67421))

(assert (not b_next!67423))

(check-sat)

(pop 1)

