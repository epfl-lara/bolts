; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537132 () Bool)

(assert start!537132)

(declare-fun b!5095264 () Bool)

(declare-fun b_free!133399 () Bool)

(declare-fun b_next!134189 () Bool)

(assert (=> b!5095264 (= b_free!133399 (not b_next!134189))))

(declare-fun tp!1420724 () Bool)

(declare-fun b_and!350283 () Bool)

(assert (=> b!5095264 (= tp!1420724 b_and!350283)))

(declare-fun b_free!133401 () Bool)

(declare-fun b_next!134191 () Bool)

(assert (=> b!5095264 (= b_free!133401 (not b_next!134191))))

(declare-fun tp!1420728 () Bool)

(declare-fun b_and!350285 () Bool)

(assert (=> b!5095264 (= tp!1420728 b_and!350285)))

(declare-fun b!5095262 () Bool)

(declare-fun e!3177714 () Bool)

(declare-fun tp_is_empty!37233 () Bool)

(declare-fun tp!1420726 () Bool)

(assert (=> b!5095262 (= e!3177714 (and tp_is_empty!37233 tp!1420726))))

(declare-fun res!2168479 () Bool)

(declare-fun e!3177718 () Bool)

(assert (=> start!537132 (=> (not res!2168479) (not e!3177718))))

(declare-datatypes ((LexerInterface!8101 0))(
  ( (LexerInterfaceExt!8098 (__x!34935 Int)) (Lexer!8099) )
))
(declare-fun thiss!14775 () LexerInterface!8101)

(assert (=> start!537132 (= res!2168479 (is-Lexer!8099 thiss!14775))))

(assert (=> start!537132 e!3177718))

(assert (=> start!537132 true))

(declare-fun e!3177717 () Bool)

(assert (=> start!537132 e!3177717))

(assert (=> start!537132 e!3177714))

(declare-datatypes ((List!58746 0))(
  ( (Nil!58622) (Cons!58622 (h!65070 (_ BitVec 16)) (t!371701 List!58746)) )
))
(declare-datatypes ((TokenValue!8823 0))(
  ( (FloatLiteralValue!17646 (text!62206 List!58746)) (TokenValueExt!8822 (__x!34936 Int)) (Broken!44115 (value!272792 List!58746)) (Object!8946) (End!8823) (Def!8823) (Underscore!8823) (Match!8823) (Else!8823) (Error!8823) (Case!8823) (If!8823) (Extends!8823) (Abstract!8823) (Class!8823) (Val!8823) (DelimiterValue!17646 (del!8883 List!58746)) (KeywordValue!8829 (value!272793 List!58746)) (CommentValue!17646 (value!272794 List!58746)) (WhitespaceValue!17646 (value!272795 List!58746)) (IndentationValue!8823 (value!272796 List!58746)) (String!67038) (Int32!8823) (Broken!44116 (value!272797 List!58746)) (Boolean!8824) (Unit!149663) (OperatorValue!8826 (op!8883 List!58746)) (IdentifierValue!17646 (value!272798 List!58746)) (IdentifierValue!17647 (value!272799 List!58746)) (WhitespaceValue!17647 (value!272800 List!58746)) (True!17646) (False!17646) (Broken!44117 (value!272801 List!58746)) (Broken!44118 (value!272802 List!58746)) (True!17647) (RightBrace!8823) (RightBracket!8823) (Colon!8823) (Null!8823) (Comma!8823) (LeftBracket!8823) (False!17647) (LeftBrace!8823) (ImaginaryLiteralValue!8823 (text!62207 List!58746)) (StringLiteralValue!26469 (value!272803 List!58746)) (EOFValue!8823 (value!272804 List!58746)) (IdentValue!8823 (value!272805 List!58746)) (DelimiterValue!17647 (value!272806 List!58746)) (DedentValue!8823 (value!272807 List!58746)) (NewLineValue!8823 (value!272808 List!58746)) (IntegerValue!26469 (value!272809 (_ BitVec 32)) (text!62208 List!58746)) (IntegerValue!26470 (value!272810 Int) (text!62209 List!58746)) (Times!8823) (Or!8823) (Equal!8823) (Minus!8823) (Broken!44119 (value!272811 List!58746)) (And!8823) (Div!8823) (LessEqual!8823) (Mod!8823) (Concat!22807) (Not!8823) (Plus!8823) (SpaceValue!8823 (value!272812 List!58746)) (IntegerValue!26471 (value!272813 Int) (text!62210 List!58746)) (StringLiteralValue!26470 (text!62211 List!58746)) (FloatLiteralValue!17647 (text!62212 List!58746)) (BytesLiteralValue!8823 (value!272814 List!58746)) (CommentValue!17647 (value!272815 List!58746)) (StringLiteralValue!26471 (value!272816 List!58746)) (ErrorTokenValue!8823 (msg!8884 List!58746)) )
))
(declare-datatypes ((C!28226 0))(
  ( (C!28227 (val!23765 Int)) )
))
(declare-datatypes ((Regex!13984 0))(
  ( (ElementMatch!13984 (c!875557 C!28226)) (Concat!22808 (regOne!28480 Regex!13984) (regTwo!28480 Regex!13984)) (EmptyExpr!13984) (Star!13984 (reg!14313 Regex!13984)) (EmptyLang!13984) (Union!13984 (regOne!28481 Regex!13984) (regTwo!28481 Regex!13984)) )
))
(declare-datatypes ((String!67039 0))(
  ( (String!67040 (value!272817 String)) )
))
(declare-datatypes ((List!58747 0))(
  ( (Nil!58623) (Cons!58623 (h!65071 C!28226) (t!371702 List!58747)) )
))
(declare-datatypes ((IArray!31423 0))(
  ( (IArray!31424 (innerList!15769 List!58747)) )
))
(declare-datatypes ((Conc!15681 0))(
  ( (Node!15681 (left!43038 Conc!15681) (right!43368 Conc!15681) (csize!31592 Int) (cheight!15892 Int)) (Leaf!26027 (xs!19063 IArray!31423) (csize!31593 Int)) (Empty!15681) )
))
(declare-datatypes ((BalanceConc!30480 0))(
  ( (BalanceConc!30481 (c!875558 Conc!15681)) )
))
(declare-datatypes ((TokenValueInjection!16954 0))(
  ( (TokenValueInjection!16955 (toValue!11532 Int) (toChars!11391 Int)) )
))
(declare-datatypes ((Rule!16818 0))(
  ( (Rule!16819 (regex!8509 Regex!13984) (tag!9373 String!67039) (isSeparator!8509 Bool) (transformation!8509 TokenValueInjection!16954)) )
))
(declare-datatypes ((Token!15458 0))(
  ( (Token!15459 (value!272818 TokenValue!8823) (rule!11789 Rule!16818) (size!39281 Int) (originalCharacters!8760 List!58747)) )
))
(declare-datatypes ((tuple2!63350 0))(
  ( (tuple2!63351 (_1!34978 Token!15458) (_2!34978 List!58747)) )
))
(declare-datatypes ((Option!14638 0))(
  ( (None!14637) (Some!14637 (v!50650 tuple2!63350)) )
))
(declare-fun lt!2093510 () Option!14638)

(declare-fun e!3177713 () Bool)

(declare-fun b!5095263 () Bool)

(declare-datatypes ((List!58748 0))(
  ( (Nil!58624) (Cons!58624 (h!65072 Rule!16818) (t!371703 List!58748)) )
))
(declare-fun rulesArg!145 () List!58748)

(declare-fun input!1210 () List!58747)

(declare-fun maxPrefix!4678 (LexerInterface!8101 List!58748 List!58747) Option!14638)

(assert (=> b!5095263 (= e!3177713 (= lt!2093510 (maxPrefix!4678 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun e!3177712 () Bool)

(assert (=> b!5095264 (= e!3177712 (and tp!1420724 tp!1420728))))

(declare-fun b!5095265 () Bool)

(declare-fun e!3177715 () Bool)

(assert (=> b!5095265 (= e!3177715 e!3177713)))

(declare-fun res!2168477 () Bool)

(assert (=> b!5095265 (=> res!2168477 e!3177713)))

(declare-fun lt!2093511 () Option!14638)

(assert (=> b!5095265 (= res!2168477 (or (and (is-None!14637 lt!2093510) (is-None!14637 lt!2093511)) (is-None!14637 lt!2093511) (is-None!14637 lt!2093510) (< (size!39281 (_1!34978 (v!50650 lt!2093510))) (size!39281 (_1!34978 (v!50650 lt!2093511))))))))

(declare-fun maxPrefixZipper!804 (LexerInterface!8101 List!58748 List!58747) Option!14638)

(assert (=> b!5095265 (= lt!2093511 (maxPrefixZipper!804 thiss!14775 (t!371703 rulesArg!145) input!1210))))

(declare-fun maxPrefixOneRuleZipper!325 (LexerInterface!8101 Rule!16818 List!58747) Option!14638)

(assert (=> b!5095265 (= lt!2093510 (maxPrefixOneRuleZipper!325 thiss!14775 (h!65072 rulesArg!145) input!1210))))

(declare-fun e!3177716 () Bool)

(declare-fun tp!1420727 () Bool)

(declare-fun b!5095266 () Bool)

(declare-fun inv!78115 (String!67039) Bool)

(declare-fun inv!78118 (TokenValueInjection!16954) Bool)

(assert (=> b!5095266 (= e!3177716 (and tp!1420727 (inv!78115 (tag!9373 (h!65072 rulesArg!145))) (inv!78118 (transformation!8509 (h!65072 rulesArg!145))) e!3177712))))

(declare-fun b!5095267 () Bool)

(declare-fun res!2168480 () Bool)

(assert (=> b!5095267 (=> (not res!2168480) (not e!3177718))))

(declare-fun rulesValidInductive!3334 (LexerInterface!8101 List!58748) Bool)

(assert (=> b!5095267 (= res!2168480 (rulesValidInductive!3334 thiss!14775 rulesArg!145))))

(declare-fun b!5095268 () Bool)

(assert (=> b!5095268 (= e!3177718 (not e!3177715))))

(declare-fun res!2168481 () Bool)

(assert (=> b!5095268 (=> res!2168481 e!3177715)))

(assert (=> b!5095268 (= res!2168481 (or (and (is-Cons!58624 rulesArg!145) (is-Nil!58624 (t!371703 rulesArg!145))) (not (is-Cons!58624 rulesArg!145))))))

(declare-fun isPrefix!5405 (List!58747 List!58747) Bool)

(assert (=> b!5095268 (isPrefix!5405 input!1210 input!1210)))

(declare-datatypes ((Unit!149664 0))(
  ( (Unit!149665) )
))
(declare-fun lt!2093509 () Unit!149664)

(declare-fun lemmaIsPrefixRefl!3664 (List!58747 List!58747) Unit!149664)

(assert (=> b!5095268 (= lt!2093509 (lemmaIsPrefixRefl!3664 input!1210 input!1210))))

(declare-fun b!5095269 () Bool)

(declare-fun res!2168478 () Bool)

(assert (=> b!5095269 (=> (not res!2168478) (not e!3177718))))

(declare-fun isEmpty!31732 (List!58748) Bool)

(assert (=> b!5095269 (= res!2168478 (not (isEmpty!31732 rulesArg!145)))))

(declare-fun b!5095270 () Bool)

(declare-fun tp!1420725 () Bool)

(assert (=> b!5095270 (= e!3177717 (and e!3177716 tp!1420725))))

(assert (= (and start!537132 res!2168479) b!5095267))

(assert (= (and b!5095267 res!2168480) b!5095269))

(assert (= (and b!5095269 res!2168478) b!5095268))

(assert (= (and b!5095268 (not res!2168481)) b!5095265))

(assert (= (and b!5095265 (not res!2168477)) b!5095263))

(assert (= b!5095266 b!5095264))

(assert (= b!5095270 b!5095266))

(assert (= (and start!537132 (is-Cons!58624 rulesArg!145)) b!5095270))

(assert (= (and start!537132 (is-Cons!58623 input!1210)) b!5095262))

(declare-fun m!6152848 () Bool)

(assert (=> b!5095263 m!6152848))

(declare-fun m!6152850 () Bool)

(assert (=> b!5095268 m!6152850))

(declare-fun m!6152852 () Bool)

(assert (=> b!5095268 m!6152852))

(declare-fun m!6152854 () Bool)

(assert (=> b!5095266 m!6152854))

(declare-fun m!6152856 () Bool)

(assert (=> b!5095266 m!6152856))

(declare-fun m!6152858 () Bool)

(assert (=> b!5095267 m!6152858))

(declare-fun m!6152860 () Bool)

(assert (=> b!5095269 m!6152860))

(declare-fun m!6152862 () Bool)

(assert (=> b!5095265 m!6152862))

(declare-fun m!6152864 () Bool)

(assert (=> b!5095265 m!6152864))

(push 1)

(assert (not b!5095270))

(assert (not b!5095262))

(assert (not b!5095266))

(assert (not b!5095265))

(assert (not b!5095268))

(assert b_and!350285)

(assert (not b!5095269))

(assert (not b!5095267))

(assert tp_is_empty!37233)

(assert (not b_next!134189))

(assert (not b!5095263))

(assert (not b_next!134191))

(assert b_and!350283)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350285)

(assert b_and!350283)

(assert (not b_next!134189))

(assert (not b_next!134191))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648960 () Bool)

(declare-fun lt!2093532 () Option!14638)

(assert (=> d!1648960 (= lt!2093532 (maxPrefix!4678 thiss!14775 (t!371703 rulesArg!145) input!1210))))

(declare-fun e!3177745 () Option!14638)

(assert (=> d!1648960 (= lt!2093532 e!3177745)))

(declare-fun c!875564 () Bool)

(assert (=> d!1648960 (= c!875564 (and (is-Cons!58624 (t!371703 rulesArg!145)) (is-Nil!58624 (t!371703 (t!371703 rulesArg!145)))))))

(declare-fun lt!2093531 () Unit!149664)

(declare-fun lt!2093534 () Unit!149664)

(assert (=> d!1648960 (= lt!2093531 lt!2093534)))

(assert (=> d!1648960 (isPrefix!5405 input!1210 input!1210)))

(assert (=> d!1648960 (= lt!2093534 (lemmaIsPrefixRefl!3664 input!1210 input!1210))))

(assert (=> d!1648960 (rulesValidInductive!3334 thiss!14775 (t!371703 rulesArg!145))))

(assert (=> d!1648960 (= (maxPrefixZipper!804 thiss!14775 (t!371703 rulesArg!145) input!1210) lt!2093532)))

(declare-fun call!354770 () Option!14638)

(declare-fun bm!354765 () Bool)

(assert (=> bm!354765 (= call!354770 (maxPrefixOneRuleZipper!325 thiss!14775 (h!65072 (t!371703 rulesArg!145)) input!1210))))

(declare-fun b!5095302 () Bool)

(assert (=> b!5095302 (= e!3177745 call!354770)))

(declare-fun b!5095303 () Bool)

(declare-fun lt!2093533 () Option!14638)

(declare-fun lt!2093535 () Option!14638)

(assert (=> b!5095303 (= e!3177745 (ite (and (is-None!14637 lt!2093533) (is-None!14637 lt!2093535)) None!14637 (ite (is-None!14637 lt!2093535) lt!2093533 (ite (is-None!14637 lt!2093533) lt!2093535 (ite (>= (size!39281 (_1!34978 (v!50650 lt!2093533))) (size!39281 (_1!34978 (v!50650 lt!2093535)))) lt!2093533 lt!2093535)))))))

(assert (=> b!5095303 (= lt!2093533 call!354770)))

(assert (=> b!5095303 (= lt!2093535 (maxPrefixZipper!804 thiss!14775 (t!371703 (t!371703 rulesArg!145)) input!1210))))

(assert (= (and d!1648960 c!875564) b!5095302))

(assert (= (and d!1648960 (not c!875564)) b!5095303))

(assert (= (or b!5095302 b!5095303) bm!354765))

(declare-fun m!6152884 () Bool)

(assert (=> d!1648960 m!6152884))

(assert (=> d!1648960 m!6152850))

(assert (=> d!1648960 m!6152852))

(declare-fun m!6152886 () Bool)

(assert (=> d!1648960 m!6152886))

(declare-fun m!6152888 () Bool)

(assert (=> bm!354765 m!6152888))

(declare-fun m!6152890 () Bool)

(assert (=> b!5095303 m!6152890))

(assert (=> b!5095265 d!1648960))

(declare-fun lt!2093563 () Option!14638)

(declare-fun d!1648964 () Bool)

(declare-fun maxPrefixOneRule!3704 (LexerInterface!8101 Rule!16818 List!58747) Option!14638)

(assert (=> d!1648964 (= lt!2093563 (maxPrefixOneRule!3704 thiss!14775 (h!65072 rulesArg!145) input!1210))))

(declare-fun e!3177763 () Option!14638)

(assert (=> d!1648964 (= lt!2093563 e!3177763)))

(declare-fun c!875570 () Bool)

(declare-datatypes ((tuple2!63354 0))(
  ( (tuple2!63355 (_1!34980 List!58747) (_2!34980 List!58747)) )
))
(declare-fun lt!2093566 () tuple2!63354)

(declare-fun isEmpty!31734 (List!58747) Bool)

(assert (=> d!1648964 (= c!875570 (isEmpty!31734 (_1!34980 lt!2093566)))))

(declare-fun findLongestMatchWithZipper!110 (Regex!13984 List!58747) tuple2!63354)

(assert (=> d!1648964 (= lt!2093566 (findLongestMatchWithZipper!110 (regex!8509 (h!65072 rulesArg!145)) input!1210))))

(declare-fun ruleValid!3904 (LexerInterface!8101 Rule!16818) Bool)

(assert (=> d!1648964 (ruleValid!3904 thiss!14775 (h!65072 rulesArg!145))))

(assert (=> d!1648964 (= (maxPrefixOneRuleZipper!325 thiss!14775 (h!65072 rulesArg!145) input!1210) lt!2093563)))

(declare-fun b!5095340 () Bool)

(assert (=> b!5095340 (= e!3177763 None!14637)))

(declare-fun b!5095341 () Bool)

(declare-fun apply!14293 (TokenValueInjection!16954 BalanceConc!30480) TokenValue!8823)

(declare-fun seqFromList!6111 (List!58747) BalanceConc!30480)

(declare-fun size!39283 (List!58747) Int)

(assert (=> b!5095341 (= e!3177763 (Some!14637 (tuple2!63351 (Token!15459 (apply!14293 (transformation!8509 (h!65072 rulesArg!145)) (seqFromList!6111 (_1!34980 lt!2093566))) (h!65072 rulesArg!145) (size!39283 (_1!34980 lt!2093566)) (_1!34980 lt!2093566)) (_2!34980 lt!2093566))))))

(declare-fun lt!2093565 () Unit!149664)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1971 (Regex!13984 List!58747) Unit!149664)

(assert (=> b!5095341 (= lt!2093565 (longestMatchIsAcceptedByMatchOrIsEmpty!1971 (regex!8509 (h!65072 rulesArg!145)) input!1210))))

(declare-fun res!2168534 () Bool)

(declare-fun findLongestMatchInner!2018 (Regex!13984 List!58747 Int List!58747 List!58747 Int) tuple2!63354)

(assert (=> b!5095341 (= res!2168534 (isEmpty!31734 (_1!34980 (findLongestMatchInner!2018 (regex!8509 (h!65072 rulesArg!145)) Nil!58623 (size!39283 Nil!58623) input!1210 input!1210 (size!39283 input!1210)))))))

(declare-fun e!3177762 () Bool)

(assert (=> b!5095341 (=> res!2168534 e!3177762)))

(assert (=> b!5095341 e!3177762))

(declare-fun lt!2093567 () Unit!149664)

(assert (=> b!5095341 (= lt!2093567 lt!2093565)))

(declare-fun lt!2093568 () Unit!149664)

(declare-fun lemmaInv!1411 (TokenValueInjection!16954) Unit!149664)

(assert (=> b!5095341 (= lt!2093568 (lemmaInv!1411 (transformation!8509 (h!65072 rulesArg!145))))))

(declare-fun lt!2093564 () Unit!149664)

(declare-fun lemmaSemiInverse!2644 (TokenValueInjection!16954 BalanceConc!30480) Unit!149664)

(assert (=> b!5095341 (= lt!2093564 (lemmaSemiInverse!2644 (transformation!8509 (h!65072 rulesArg!145)) (seqFromList!6111 (_1!34980 lt!2093566))))))

(declare-fun b!5095342 () Bool)

(declare-fun matchR!6793 (Regex!13984 List!58747) Bool)

(assert (=> b!5095342 (= e!3177762 (matchR!6793 (regex!8509 (h!65072 rulesArg!145)) (_1!34980 (findLongestMatchInner!2018 (regex!8509 (h!65072 rulesArg!145)) Nil!58623 (size!39283 Nil!58623) input!1210 input!1210 (size!39283 input!1210)))))))

(assert (= (and d!1648964 c!875570) b!5095340))

(assert (= (and d!1648964 (not c!875570)) b!5095341))

(assert (= (and b!5095341 (not res!2168534)) b!5095342))

(declare-fun m!6152924 () Bool)

(assert (=> d!1648964 m!6152924))

(declare-fun m!6152926 () Bool)

(assert (=> d!1648964 m!6152926))

(declare-fun m!6152928 () Bool)

(assert (=> d!1648964 m!6152928))

(declare-fun m!6152930 () Bool)

(assert (=> d!1648964 m!6152930))

(declare-fun m!6152932 () Bool)

(assert (=> b!5095341 m!6152932))

(declare-fun m!6152934 () Bool)

(assert (=> b!5095341 m!6152934))

(declare-fun m!6152936 () Bool)

(assert (=> b!5095341 m!6152936))

(declare-fun m!6152938 () Bool)

(assert (=> b!5095341 m!6152938))

(assert (=> b!5095341 m!6152934))

(assert (=> b!5095341 m!6152932))

(declare-fun m!6152940 () Bool)

(assert (=> b!5095341 m!6152940))

(declare-fun m!6152942 () Bool)

(assert (=> b!5095341 m!6152942))

(declare-fun m!6152944 () Bool)

(assert (=> b!5095341 m!6152944))

(assert (=> b!5095341 m!6152934))

(declare-fun m!6152946 () Bool)

(assert (=> b!5095341 m!6152946))

(assert (=> b!5095341 m!6152940))

(declare-fun m!6152948 () Bool)

(assert (=> b!5095341 m!6152948))

(declare-fun m!6152950 () Bool)

(assert (=> b!5095341 m!6152950))

(assert (=> b!5095342 m!6152932))

(assert (=> b!5095342 m!6152940))

(assert (=> b!5095342 m!6152932))

(assert (=> b!5095342 m!6152940))

(assert (=> b!5095342 m!6152942))

(declare-fun m!6152952 () Bool)

(assert (=> b!5095342 m!6152952))

(assert (=> b!5095265 d!1648964))

(declare-fun d!1648972 () Bool)

(assert (=> d!1648972 (= (inv!78115 (tag!9373 (h!65072 rulesArg!145))) (= (mod (str.len (value!272817 (tag!9373 (h!65072 rulesArg!145)))) 2) 0))))

(assert (=> b!5095266 d!1648972))

(declare-fun d!1648974 () Bool)

(declare-fun res!2168537 () Bool)

(declare-fun e!3177766 () Bool)

(assert (=> d!1648974 (=> (not res!2168537) (not e!3177766))))

(declare-fun semiInverseModEq!3790 (Int Int) Bool)

(assert (=> d!1648974 (= res!2168537 (semiInverseModEq!3790 (toChars!11391 (transformation!8509 (h!65072 rulesArg!145))) (toValue!11532 (transformation!8509 (h!65072 rulesArg!145)))))))

(assert (=> d!1648974 (= (inv!78118 (transformation!8509 (h!65072 rulesArg!145))) e!3177766)))

(declare-fun b!5095345 () Bool)

(declare-fun equivClasses!3605 (Int Int) Bool)

(assert (=> b!5095345 (= e!3177766 (equivClasses!3605 (toChars!11391 (transformation!8509 (h!65072 rulesArg!145))) (toValue!11532 (transformation!8509 (h!65072 rulesArg!145)))))))

(assert (= (and d!1648974 res!2168537) b!5095345))

(declare-fun m!6152954 () Bool)

(assert (=> d!1648974 m!6152954))

(declare-fun m!6152956 () Bool)

(assert (=> b!5095345 m!6152956))

(assert (=> b!5095266 d!1648974))

(declare-fun d!1648976 () Bool)

(assert (=> d!1648976 (= (isEmpty!31732 rulesArg!145) (is-Nil!58624 rulesArg!145))))

(assert (=> b!5095269 d!1648976))

(declare-fun b!5095357 () Bool)

(declare-fun e!3177774 () Bool)

(assert (=> b!5095357 (= e!3177774 (>= (size!39283 input!1210) (size!39283 input!1210)))))

(declare-fun b!5095355 () Bool)

(declare-fun res!2168547 () Bool)

(declare-fun e!3177775 () Bool)

(assert (=> b!5095355 (=> (not res!2168547) (not e!3177775))))

(declare-fun head!10821 (List!58747) C!28226)

(assert (=> b!5095355 (= res!2168547 (= (head!10821 input!1210) (head!10821 input!1210)))))

(declare-fun d!1648978 () Bool)

(assert (=> d!1648978 e!3177774))

(declare-fun res!2168546 () Bool)

(assert (=> d!1648978 (=> res!2168546 e!3177774)))

(declare-fun lt!2093571 () Bool)

(assert (=> d!1648978 (= res!2168546 (not lt!2093571))))

(declare-fun e!3177773 () Bool)

(assert (=> d!1648978 (= lt!2093571 e!3177773)))

(declare-fun res!2168549 () Bool)

(assert (=> d!1648978 (=> res!2168549 e!3177773)))

(assert (=> d!1648978 (= res!2168549 (is-Nil!58623 input!1210))))

(assert (=> d!1648978 (= (isPrefix!5405 input!1210 input!1210) lt!2093571)))

(declare-fun b!5095354 () Bool)

(assert (=> b!5095354 (= e!3177773 e!3177775)))

(declare-fun res!2168548 () Bool)

(assert (=> b!5095354 (=> (not res!2168548) (not e!3177775))))

(assert (=> b!5095354 (= res!2168548 (not (is-Nil!58623 input!1210)))))

(declare-fun b!5095356 () Bool)

(declare-fun tail!9976 (List!58747) List!58747)

(assert (=> b!5095356 (= e!3177775 (isPrefix!5405 (tail!9976 input!1210) (tail!9976 input!1210)))))

(assert (= (and d!1648978 (not res!2168549)) b!5095354))

(assert (= (and b!5095354 res!2168548) b!5095355))

(assert (= (and b!5095355 res!2168547) b!5095356))

(assert (= (and d!1648978 (not res!2168546)) b!5095357))

(assert (=> b!5095357 m!6152940))

(assert (=> b!5095357 m!6152940))

(declare-fun m!6152958 () Bool)

(assert (=> b!5095355 m!6152958))

(assert (=> b!5095355 m!6152958))

(declare-fun m!6152960 () Bool)

(assert (=> b!5095356 m!6152960))

(assert (=> b!5095356 m!6152960))

(assert (=> b!5095356 m!6152960))

(assert (=> b!5095356 m!6152960))

(declare-fun m!6152962 () Bool)

(assert (=> b!5095356 m!6152962))

(assert (=> b!5095268 d!1648978))

(declare-fun d!1648980 () Bool)

(assert (=> d!1648980 (isPrefix!5405 input!1210 input!1210)))

(declare-fun lt!2093574 () Unit!149664)

(declare-fun choose!37308 (List!58747 List!58747) Unit!149664)

(assert (=> d!1648980 (= lt!2093574 (choose!37308 input!1210 input!1210))))

(assert (=> d!1648980 (= (lemmaIsPrefixRefl!3664 input!1210 input!1210) lt!2093574)))

(declare-fun bs!1191313 () Bool)

(assert (= bs!1191313 d!1648980))

(assert (=> bs!1191313 m!6152850))

(declare-fun m!6152964 () Bool)

(assert (=> bs!1191313 m!6152964))

(assert (=> b!5095268 d!1648980))

(declare-fun b!5095376 () Bool)

(declare-fun res!2168570 () Bool)

(declare-fun e!3177783 () Bool)

(assert (=> b!5095376 (=> (not res!2168570) (not e!3177783))))

(declare-fun lt!2093587 () Option!14638)

(declare-fun get!20350 (Option!14638) tuple2!63350)

(assert (=> b!5095376 (= res!2168570 (< (size!39283 (_2!34978 (get!20350 lt!2093587))) (size!39283 input!1210)))))

(declare-fun call!354776 () Option!14638)

(declare-fun bm!354771 () Bool)

(assert (=> bm!354771 (= call!354776 (maxPrefixOneRule!3704 thiss!14775 (h!65072 rulesArg!145) input!1210))))

(declare-fun b!5095377 () Bool)

(declare-fun contains!19603 (List!58748 Rule!16818) Bool)

(assert (=> b!5095377 (= e!3177783 (contains!19603 rulesArg!145 (rule!11789 (_1!34978 (get!20350 lt!2093587)))))))

(declare-fun b!5095378 () Bool)

(declare-fun e!3177784 () Option!14638)

(declare-fun lt!2093586 () Option!14638)

(declare-fun lt!2093585 () Option!14638)

(assert (=> b!5095378 (= e!3177784 (ite (and (is-None!14637 lt!2093586) (is-None!14637 lt!2093585)) None!14637 (ite (is-None!14637 lt!2093585) lt!2093586 (ite (is-None!14637 lt!2093586) lt!2093585 (ite (>= (size!39281 (_1!34978 (v!50650 lt!2093586))) (size!39281 (_1!34978 (v!50650 lt!2093585)))) lt!2093586 lt!2093585)))))))

(assert (=> b!5095378 (= lt!2093586 call!354776)))

(assert (=> b!5095378 (= lt!2093585 (maxPrefix!4678 thiss!14775 (t!371703 rulesArg!145) input!1210))))

(declare-fun b!5095379 () Bool)

(declare-fun res!2168569 () Bool)

(assert (=> b!5095379 (=> (not res!2168569) (not e!3177783))))

(declare-fun ++!12853 (List!58747 List!58747) List!58747)

(declare-fun list!19142 (BalanceConc!30480) List!58747)

(declare-fun charsOf!5476 (Token!15458) BalanceConc!30480)

(assert (=> b!5095379 (= res!2168569 (= (++!12853 (list!19142 (charsOf!5476 (_1!34978 (get!20350 lt!2093587)))) (_2!34978 (get!20350 lt!2093587))) input!1210))))

(declare-fun b!5095380 () Bool)

(assert (=> b!5095380 (= e!3177784 call!354776)))

(declare-fun b!5095381 () Bool)

(declare-fun e!3177782 () Bool)

(assert (=> b!5095381 (= e!3177782 e!3177783)))

(declare-fun res!2168567 () Bool)

(assert (=> b!5095381 (=> (not res!2168567) (not e!3177783))))

(declare-fun isDefined!11502 (Option!14638) Bool)

(assert (=> b!5095381 (= res!2168567 (isDefined!11502 lt!2093587))))

(declare-fun d!1648982 () Bool)

(assert (=> d!1648982 e!3177782))

(declare-fun res!2168564 () Bool)

(assert (=> d!1648982 (=> res!2168564 e!3177782)))

(declare-fun isEmpty!31735 (Option!14638) Bool)

(assert (=> d!1648982 (= res!2168564 (isEmpty!31735 lt!2093587))))

(assert (=> d!1648982 (= lt!2093587 e!3177784)))

(declare-fun c!875573 () Bool)

(assert (=> d!1648982 (= c!875573 (and (is-Cons!58624 rulesArg!145) (is-Nil!58624 (t!371703 rulesArg!145))))))

(declare-fun lt!2093589 () Unit!149664)

(declare-fun lt!2093588 () Unit!149664)

(assert (=> d!1648982 (= lt!2093589 lt!2093588)))

(assert (=> d!1648982 (isPrefix!5405 input!1210 input!1210)))

(assert (=> d!1648982 (= lt!2093588 (lemmaIsPrefixRefl!3664 input!1210 input!1210))))

(assert (=> d!1648982 (rulesValidInductive!3334 thiss!14775 rulesArg!145)))

(assert (=> d!1648982 (= (maxPrefix!4678 thiss!14775 rulesArg!145 input!1210) lt!2093587)))

(declare-fun b!5095382 () Bool)

(declare-fun res!2168568 () Bool)

(assert (=> b!5095382 (=> (not res!2168568) (not e!3177783))))

(assert (=> b!5095382 (= res!2168568 (matchR!6793 (regex!8509 (rule!11789 (_1!34978 (get!20350 lt!2093587)))) (list!19142 (charsOf!5476 (_1!34978 (get!20350 lt!2093587))))))))

(declare-fun b!5095383 () Bool)

(declare-fun res!2168566 () Bool)

(assert (=> b!5095383 (=> (not res!2168566) (not e!3177783))))

(assert (=> b!5095383 (= res!2168566 (= (value!272818 (_1!34978 (get!20350 lt!2093587))) (apply!14293 (transformation!8509 (rule!11789 (_1!34978 (get!20350 lt!2093587)))) (seqFromList!6111 (originalCharacters!8760 (_1!34978 (get!20350 lt!2093587)))))))))

(declare-fun b!5095384 () Bool)

(declare-fun res!2168565 () Bool)

(assert (=> b!5095384 (=> (not res!2168565) (not e!3177783))))

(assert (=> b!5095384 (= res!2168565 (= (list!19142 (charsOf!5476 (_1!34978 (get!20350 lt!2093587)))) (originalCharacters!8760 (_1!34978 (get!20350 lt!2093587)))))))

(assert (= (and d!1648982 c!875573) b!5095380))

(assert (= (and d!1648982 (not c!875573)) b!5095378))

(assert (= (or b!5095380 b!5095378) bm!354771))

(assert (= (and d!1648982 (not res!2168564)) b!5095381))

(assert (= (and b!5095381 res!2168567) b!5095384))

(assert (= (and b!5095384 res!2168565) b!5095376))

(assert (= (and b!5095376 res!2168570) b!5095379))

(assert (= (and b!5095379 res!2168569) b!5095383))

(assert (= (and b!5095383 res!2168566) b!5095382))

(assert (= (and b!5095382 res!2168568) b!5095377))

(declare-fun m!6152966 () Bool)

(assert (=> b!5095382 m!6152966))

(declare-fun m!6152968 () Bool)

(assert (=> b!5095382 m!6152968))

(assert (=> b!5095382 m!6152968))

(declare-fun m!6152970 () Bool)

(assert (=> b!5095382 m!6152970))

(assert (=> b!5095382 m!6152970))

(declare-fun m!6152972 () Bool)

(assert (=> b!5095382 m!6152972))

(assert (=> bm!354771 m!6152924))

(assert (=> b!5095379 m!6152966))

(assert (=> b!5095379 m!6152968))

(assert (=> b!5095379 m!6152968))

(assert (=> b!5095379 m!6152970))

(assert (=> b!5095379 m!6152970))

(declare-fun m!6152974 () Bool)

(assert (=> b!5095379 m!6152974))

(assert (=> b!5095378 m!6152884))

(assert (=> b!5095377 m!6152966))

(declare-fun m!6152976 () Bool)

(assert (=> b!5095377 m!6152976))

(declare-fun m!6152978 () Bool)

(assert (=> d!1648982 m!6152978))

(assert (=> d!1648982 m!6152850))

(assert (=> d!1648982 m!6152852))

(assert (=> d!1648982 m!6152858))

(assert (=> b!5095376 m!6152966))

(declare-fun m!6152980 () Bool)

(assert (=> b!5095376 m!6152980))

(assert (=> b!5095376 m!6152940))

(assert (=> b!5095384 m!6152966))

(assert (=> b!5095384 m!6152968))

(assert (=> b!5095384 m!6152968))

(assert (=> b!5095384 m!6152970))

(assert (=> b!5095383 m!6152966))

(declare-fun m!6152982 () Bool)

(assert (=> b!5095383 m!6152982))

(assert (=> b!5095383 m!6152982))

(declare-fun m!6152984 () Bool)

(assert (=> b!5095383 m!6152984))

(declare-fun m!6152986 () Bool)

(assert (=> b!5095381 m!6152986))

(assert (=> b!5095263 d!1648982))

(declare-fun d!1648984 () Bool)

(assert (=> d!1648984 true))

(declare-fun lt!2093633 () Bool)

(declare-fun lambda!249877 () Int)

(declare-fun forall!13477 (List!58748 Int) Bool)

(assert (=> d!1648984 (= lt!2093633 (forall!13477 rulesArg!145 lambda!249877))))

(declare-fun e!3177812 () Bool)

(assert (=> d!1648984 (= lt!2093633 e!3177812)))

(declare-fun res!2168595 () Bool)

(assert (=> d!1648984 (=> res!2168595 e!3177812)))

(assert (=> d!1648984 (= res!2168595 (not (is-Cons!58624 rulesArg!145)))))

(assert (=> d!1648984 (= (rulesValidInductive!3334 thiss!14775 rulesArg!145) lt!2093633)))

(declare-fun b!5095420 () Bool)

(declare-fun e!3177811 () Bool)

(assert (=> b!5095420 (= e!3177812 e!3177811)))

(declare-fun res!2168594 () Bool)

(assert (=> b!5095420 (=> (not res!2168594) (not e!3177811))))

(assert (=> b!5095420 (= res!2168594 (ruleValid!3904 thiss!14775 (h!65072 rulesArg!145)))))

(declare-fun b!5095421 () Bool)

(assert (=> b!5095421 (= e!3177811 (rulesValidInductive!3334 thiss!14775 (t!371703 rulesArg!145)))))

(assert (= (and d!1648984 (not res!2168595)) b!5095420))

(assert (= (and b!5095420 res!2168594) b!5095421))

(declare-fun m!6153028 () Bool)

(assert (=> d!1648984 m!6153028))

(assert (=> b!5095420 m!6152930))

(assert (=> b!5095421 m!6152886))

(assert (=> b!5095267 d!1648984))

(declare-fun e!3177815 () Bool)

(assert (=> b!5095266 (= tp!1420727 e!3177815)))

(declare-fun b!5095434 () Bool)

(assert (=> b!5095434 (= e!3177815 tp_is_empty!37233)))

(declare-fun b!5095435 () Bool)

(declare-fun tp!1420757 () Bool)

(declare-fun tp!1420756 () Bool)

(assert (=> b!5095435 (= e!3177815 (and tp!1420757 tp!1420756))))

(declare-fun b!5095437 () Bool)

(declare-fun tp!1420754 () Bool)

(declare-fun tp!1420758 () Bool)

(assert (=> b!5095437 (= e!3177815 (and tp!1420754 tp!1420758))))

(declare-fun b!5095436 () Bool)

(declare-fun tp!1420755 () Bool)

(assert (=> b!5095436 (= e!3177815 tp!1420755)))

(assert (= (and b!5095266 (is-ElementMatch!13984 (regex!8509 (h!65072 rulesArg!145)))) b!5095434))

(assert (= (and b!5095266 (is-Concat!22808 (regex!8509 (h!65072 rulesArg!145)))) b!5095435))

(assert (= (and b!5095266 (is-Star!13984 (regex!8509 (h!65072 rulesArg!145)))) b!5095436))

(assert (= (and b!5095266 (is-Union!13984 (regex!8509 (h!65072 rulesArg!145)))) b!5095437))

(declare-fun b!5095448 () Bool)

(declare-fun b_free!133407 () Bool)

(declare-fun b_next!134197 () Bool)

(assert (=> b!5095448 (= b_free!133407 (not b_next!134197))))

(declare-fun tp!1420770 () Bool)

(declare-fun b_and!350291 () Bool)

(assert (=> b!5095448 (= tp!1420770 b_and!350291)))

(declare-fun b_free!133409 () Bool)

(declare-fun b_next!134199 () Bool)

(assert (=> b!5095448 (= b_free!133409 (not b_next!134199))))

(declare-fun tp!1420768 () Bool)

(declare-fun b_and!350293 () Bool)

(assert (=> b!5095448 (= tp!1420768 b_and!350293)))

(declare-fun e!3177824 () Bool)

(assert (=> b!5095448 (= e!3177824 (and tp!1420770 tp!1420768))))

(declare-fun e!3177827 () Bool)

(declare-fun b!5095447 () Bool)

(declare-fun tp!1420769 () Bool)

(assert (=> b!5095447 (= e!3177827 (and tp!1420769 (inv!78115 (tag!9373 (h!65072 (t!371703 rulesArg!145)))) (inv!78118 (transformation!8509 (h!65072 (t!371703 rulesArg!145)))) e!3177824))))

(declare-fun b!5095446 () Bool)

(declare-fun e!3177825 () Bool)

(declare-fun tp!1420767 () Bool)

(assert (=> b!5095446 (= e!3177825 (and e!3177827 tp!1420767))))

(assert (=> b!5095270 (= tp!1420725 e!3177825)))

(assert (= b!5095447 b!5095448))

(assert (= b!5095446 b!5095447))

(assert (= (and b!5095270 (is-Cons!58624 (t!371703 rulesArg!145))) b!5095446))

(declare-fun m!6153030 () Bool)

(assert (=> b!5095447 m!6153030))

(declare-fun m!6153032 () Bool)

(assert (=> b!5095447 m!6153032))

(declare-fun b!5095453 () Bool)

(declare-fun e!3177830 () Bool)

(declare-fun tp!1420773 () Bool)

(assert (=> b!5095453 (= e!3177830 (and tp_is_empty!37233 tp!1420773))))

(assert (=> b!5095262 (= tp!1420726 e!3177830)))

(assert (= (and b!5095262 (is-Cons!58623 (t!371702 input!1210))) b!5095453))

(push 1)

(assert (not b!5095383))

(assert (not b!5095435))

(assert (not b!5095342))

(assert (not b!5095446))

(assert (not b!5095453))

(assert (not bm!354771))

(assert (not d!1648980))

(assert b_and!350293)

(assert (not d!1648960))

(assert (not b!5095381))

(assert (not b!5095384))

(assert (not b!5095382))

(assert (not b!5095341))

(assert (not b!5095378))

(assert (not b!5095377))

(assert (not b!5095355))

(assert (not b!5095376))

(assert (not b!5095420))

(assert (not d!1648982))

(assert (not b!5095345))

(assert tp_is_empty!37233)

(assert (not b_next!134189))

(assert (not d!1648964))

(assert (not bm!354765))

(assert (not b!5095447))

(assert (not b!5095356))

(assert (not b!5095379))

(assert (not b_next!134197))

(assert (not b!5095436))

(assert (not d!1648974))

(assert (not d!1648984))

(assert (not b!5095437))

(assert (not b_next!134199))

(assert (not b!5095303))

(assert b_and!350291)

(assert (not b!5095357))

(assert b_and!350285)

(assert (not b_next!134191))

(assert b_and!350283)

(assert (not b!5095421))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!134189))

(assert b_and!350293)

(assert (not b_next!134197))

(assert (not b_next!134199))

(assert b_and!350291)

(assert b_and!350285)

(assert (not b_next!134191))

(assert b_and!350283)

(check-sat)

(pop 1)

