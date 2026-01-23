; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!387870 () Bool)

(assert start!387870)

(declare-fun b!4095814 () Bool)

(declare-fun b_free!114545 () Bool)

(declare-fun b_next!115249 () Bool)

(assert (=> b!4095814 (= b_free!114545 (not b_next!115249))))

(declare-fun tp!1239751 () Bool)

(declare-fun b_and!315931 () Bool)

(assert (=> b!4095814 (= tp!1239751 b_and!315931)))

(declare-fun b_free!114547 () Bool)

(declare-fun b_next!115251 () Bool)

(assert (=> b!4095814 (= b_free!114547 (not b_next!115251))))

(declare-fun tp!1239750 () Bool)

(declare-fun b_and!315933 () Bool)

(assert (=> b!4095814 (= tp!1239750 b_and!315933)))

(declare-fun b!4095813 () Bool)

(declare-fun b_free!114549 () Bool)

(declare-fun b_next!115253 () Bool)

(assert (=> b!4095813 (= b_free!114549 (not b_next!115253))))

(declare-fun tp!1239748 () Bool)

(declare-fun b_and!315935 () Bool)

(assert (=> b!4095813 (= tp!1239748 b_and!315935)))

(declare-fun b_free!114551 () Bool)

(declare-fun b_next!115255 () Bool)

(assert (=> b!4095813 (= b_free!114551 (not b_next!115255))))

(declare-fun tp!1239747 () Bool)

(declare-fun b_and!315937 () Bool)

(assert (=> b!4095813 (= tp!1239747 b_and!315937)))

(declare-fun b!4095796 () Bool)

(declare-fun res!1674259 () Bool)

(declare-fun e!2541712 () Bool)

(assert (=> b!4095796 (=> (not res!1674259) (not e!2541712))))

(declare-datatypes ((List!44044 0))(
  ( (Nil!43920) (Cons!43920 (h!49340 (_ BitVec 16)) (t!339235 List!44044)) )
))
(declare-datatypes ((TokenValue!7339 0))(
  ( (FloatLiteralValue!14678 (text!51818 List!44044)) (TokenValueExt!7338 (__x!26895 Int)) (Broken!36695 (value!223234 List!44044)) (Object!7462) (End!7339) (Def!7339) (Underscore!7339) (Match!7339) (Else!7339) (Error!7339) (Case!7339) (If!7339) (Extends!7339) (Abstract!7339) (Class!7339) (Val!7339) (DelimiterValue!14678 (del!7399 List!44044)) (KeywordValue!7345 (value!223235 List!44044)) (CommentValue!14678 (value!223236 List!44044)) (WhitespaceValue!14678 (value!223237 List!44044)) (IndentationValue!7339 (value!223238 List!44044)) (String!50446) (Int32!7339) (Broken!36696 (value!223239 List!44044)) (Boolean!7340) (Unit!63453) (OperatorValue!7342 (op!7399 List!44044)) (IdentifierValue!14678 (value!223240 List!44044)) (IdentifierValue!14679 (value!223241 List!44044)) (WhitespaceValue!14679 (value!223242 List!44044)) (True!14678) (False!14678) (Broken!36697 (value!223243 List!44044)) (Broken!36698 (value!223244 List!44044)) (True!14679) (RightBrace!7339) (RightBracket!7339) (Colon!7339) (Null!7339) (Comma!7339) (LeftBracket!7339) (False!14679) (LeftBrace!7339) (ImaginaryLiteralValue!7339 (text!51819 List!44044)) (StringLiteralValue!22017 (value!223245 List!44044)) (EOFValue!7339 (value!223246 List!44044)) (IdentValue!7339 (value!223247 List!44044)) (DelimiterValue!14679 (value!223248 List!44044)) (DedentValue!7339 (value!223249 List!44044)) (NewLineValue!7339 (value!223250 List!44044)) (IntegerValue!22017 (value!223251 (_ BitVec 32)) (text!51820 List!44044)) (IntegerValue!22018 (value!223252 Int) (text!51821 List!44044)) (Times!7339) (Or!7339) (Equal!7339) (Minus!7339) (Broken!36699 (value!223253 List!44044)) (And!7339) (Div!7339) (LessEqual!7339) (Mod!7339) (Concat!19353) (Not!7339) (Plus!7339) (SpaceValue!7339 (value!223254 List!44044)) (IntegerValue!22019 (value!223255 Int) (text!51822 List!44044)) (StringLiteralValue!22018 (text!51823 List!44044)) (FloatLiteralValue!14679 (text!51824 List!44044)) (BytesLiteralValue!7339 (value!223256 List!44044)) (CommentValue!14679 (value!223257 List!44044)) (StringLiteralValue!22019 (value!223258 List!44044)) (ErrorTokenValue!7339 (msg!7400 List!44044)) )
))
(declare-datatypes ((String!50447 0))(
  ( (String!50448 (value!223259 String)) )
))
(declare-datatypes ((C!24214 0))(
  ( (C!24215 (val!14217 Int)) )
))
(declare-datatypes ((Regex!12014 0))(
  ( (ElementMatch!12014 (c!705819 C!24214)) (Concat!19354 (regOne!24540 Regex!12014) (regTwo!24540 Regex!12014)) (EmptyExpr!12014) (Star!12014 (reg!12343 Regex!12014)) (EmptyLang!12014) (Union!12014 (regOne!24541 Regex!12014) (regTwo!24541 Regex!12014)) )
))
(declare-datatypes ((List!44045 0))(
  ( (Nil!43921) (Cons!43921 (h!49341 C!24214) (t!339236 List!44045)) )
))
(declare-datatypes ((IArray!26645 0))(
  ( (IArray!26646 (innerList!13380 List!44045)) )
))
(declare-datatypes ((Conc!13320 0))(
  ( (Node!13320 (left!33017 Conc!13320) (right!33347 Conc!13320) (csize!26870 Int) (cheight!13531 Int)) (Leaf!20590 (xs!16626 IArray!26645) (csize!26871 Int)) (Empty!13320) )
))
(declare-datatypes ((BalanceConc!26234 0))(
  ( (BalanceConc!26235 (c!705820 Conc!13320)) )
))
(declare-datatypes ((TokenValueInjection!14106 0))(
  ( (TokenValueInjection!14107 (toValue!9709 Int) (toChars!9568 Int)) )
))
(declare-datatypes ((Rule!14018 0))(
  ( (Rule!14019 (regex!7109 Regex!12014) (tag!7969 String!50447) (isSeparator!7109 Bool) (transformation!7109 TokenValueInjection!14106)) )
))
(declare-datatypes ((List!44046 0))(
  ( (Nil!43922) (Cons!43922 (h!49342 Rule!14018) (t!339237 List!44046)) )
))
(declare-fun rules!3870 () List!44046)

(declare-fun r!4213 () Rule!14018)

(declare-fun contains!8794 (List!44046 Rule!14018) Bool)

(assert (=> b!4095796 (= res!1674259 (contains!8794 rules!3870 r!4213))))

(declare-fun b!4095797 () Bool)

(declare-fun res!1674258 () Bool)

(assert (=> b!4095797 (=> (not res!1674258) (not e!2541712))))

(declare-fun suffix!1518 () List!44045)

(declare-fun p!2988 () List!44045)

(declare-fun input!3411 () List!44045)

(declare-fun ++!11515 (List!44045 List!44045) List!44045)

(assert (=> b!4095797 (= res!1674258 (= input!3411 (++!11515 p!2988 suffix!1518)))))

(declare-fun b!4095798 () Bool)

(declare-fun res!1674262 () Bool)

(assert (=> b!4095798 (=> (not res!1674262) (not e!2541712))))

(declare-fun isEmpty!26280 (List!44045) Bool)

(assert (=> b!4095798 (= res!1674262 (not (isEmpty!26280 p!2988)))))

(declare-fun b!4095799 () Bool)

(declare-fun e!2541716 () Bool)

(declare-fun e!2541705 () Bool)

(declare-fun tp!1239749 () Bool)

(assert (=> b!4095799 (= e!2541716 (and e!2541705 tp!1239749))))

(declare-fun b!4095800 () Bool)

(declare-fun e!2541708 () Bool)

(declare-fun tp_is_empty!21031 () Bool)

(declare-fun tp!1239752 () Bool)

(assert (=> b!4095800 (= e!2541708 (and tp_is_empty!21031 tp!1239752))))

(declare-fun b!4095801 () Bool)

(declare-fun e!2541713 () Bool)

(declare-fun e!2541719 () Bool)

(assert (=> b!4095801 (= e!2541713 (not e!2541719))))

(declare-fun res!1674255 () Bool)

(assert (=> b!4095801 (=> res!1674255 e!2541719)))

(declare-fun matchR!5955 (Regex!12014 List!44045) Bool)

(assert (=> b!4095801 (= res!1674255 (not (matchR!5955 (regex!7109 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6698 0))(
  ( (LexerInterfaceExt!6695 (__x!26896 Int)) (Lexer!6696) )
))
(declare-fun thiss!26199 () LexerInterface!6698)

(declare-fun ruleValid!3029 (LexerInterface!6698 Rule!14018) Bool)

(assert (=> b!4095801 (ruleValid!3029 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63454 0))(
  ( (Unit!63455) )
))
(declare-fun lt!1464997 () Unit!63454)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2095 (LexerInterface!6698 Rule!14018 List!44046) Unit!63454)

(assert (=> b!4095801 (= lt!1464997 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2095 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4095802 () Bool)

(declare-fun e!2541718 () Bool)

(declare-fun e!2541710 () Bool)

(assert (=> b!4095802 (= e!2541718 e!2541710)))

(declare-fun res!1674261 () Bool)

(assert (=> b!4095802 (=> res!1674261 e!2541710)))

(declare-datatypes ((Token!13344 0))(
  ( (Token!13345 (value!223260 TokenValue!7339) (rule!10261 Rule!14018) (size!32812 Int) (originalCharacters!7703 List!44045)) )
))
(declare-datatypes ((tuple2!42850 0))(
  ( (tuple2!42851 (_1!24559 Token!13344) (_2!24559 List!44045)) )
))
(declare-datatypes ((Option!9515 0))(
  ( (None!9514) (Some!9514 (v!40012 tuple2!42850)) )
))
(declare-fun lt!1464994 () Option!9515)

(declare-fun lt!1464996 () tuple2!42850)

(declare-fun lt!1464991 () Option!9515)

(assert (=> b!4095802 (= res!1674261 (or (not (= (rule!10261 (_1!24559 lt!1464996)) (h!49342 rules!3870))) (= (rule!10261 (_1!24559 lt!1464996)) r!4213) (= lt!1464991 lt!1464994)))))

(declare-fun get!14408 (Option!9515) tuple2!42850)

(assert (=> b!4095802 (= lt!1464996 (get!14408 lt!1464991))))

(declare-fun b!4095803 () Bool)

(declare-fun res!1674264 () Bool)

(assert (=> b!4095803 (=> res!1674264 e!2541710)))

(declare-fun isEmpty!26281 (List!44046) Bool)

(assert (=> b!4095803 (= res!1674264 (isEmpty!26281 (t!339237 rules!3870)))))

(declare-fun b!4095804 () Bool)

(declare-fun e!2541709 () Bool)

(declare-fun tp!1239746 () Bool)

(assert (=> b!4095804 (= e!2541709 (and tp_is_empty!21031 tp!1239746))))

(declare-fun b!4095805 () Bool)

(declare-fun e!2541711 () Bool)

(declare-fun tp!1239745 () Bool)

(assert (=> b!4095805 (= e!2541711 (and tp_is_empty!21031 tp!1239745))))

(declare-fun b!4095806 () Bool)

(assert (=> b!4095806 (= e!2541719 e!2541718)))

(declare-fun res!1674260 () Bool)

(assert (=> b!4095806 (=> res!1674260 e!2541718)))

(declare-fun isEmpty!26282 (Option!9515) Bool)

(assert (=> b!4095806 (= res!1674260 (isEmpty!26282 lt!1464991))))

(declare-fun maxPrefixOneRule!2970 (LexerInterface!6698 Rule!14018 List!44045) Option!9515)

(assert (=> b!4095806 (= lt!1464991 (maxPrefixOneRule!2970 thiss!26199 (h!49342 rules!3870) input!3411))))

(declare-fun rulesInvariant!6041 (LexerInterface!6698 List!44046) Bool)

(assert (=> b!4095806 (rulesInvariant!6041 thiss!26199 (t!339237 rules!3870))))

(declare-fun lt!1464995 () Unit!63454)

(declare-fun lemmaInvariantOnRulesThenOnTail!811 (LexerInterface!6698 Rule!14018 List!44046) Unit!63454)

(assert (=> b!4095806 (= lt!1464995 (lemmaInvariantOnRulesThenOnTail!811 thiss!26199 (h!49342 rules!3870) (t!339237 rules!3870)))))

(declare-fun b!4095795 () Bool)

(declare-fun res!1674266 () Bool)

(assert (=> b!4095795 (=> (not res!1674266) (not e!2541712))))

(assert (=> b!4095795 (= res!1674266 (not (isEmpty!26281 rules!3870)))))

(declare-fun res!1674256 () Bool)

(assert (=> start!387870 (=> (not res!1674256) (not e!2541712))))

(assert (=> start!387870 (= res!1674256 (is-Lexer!6696 thiss!26199))))

(assert (=> start!387870 e!2541712))

(assert (=> start!387870 true))

(assert (=> start!387870 e!2541708))

(assert (=> start!387870 e!2541716))

(assert (=> start!387870 e!2541709))

(assert (=> start!387870 e!2541711))

(declare-fun e!2541707 () Bool)

(assert (=> start!387870 e!2541707))

(declare-fun tp!1239754 () Bool)

(declare-fun e!2541715 () Bool)

(declare-fun b!4095807 () Bool)

(declare-fun inv!58646 (String!50447) Bool)

(declare-fun inv!58649 (TokenValueInjection!14106) Bool)

(assert (=> b!4095807 (= e!2541707 (and tp!1239754 (inv!58646 (tag!7969 r!4213)) (inv!58649 (transformation!7109 r!4213)) e!2541715))))

(declare-fun b!4095808 () Bool)

(assert (=> b!4095808 (= e!2541712 e!2541713)))

(declare-fun res!1674265 () Bool)

(assert (=> b!4095808 (=> (not res!1674265) (not e!2541713))))

(declare-fun maxPrefix!3988 (LexerInterface!6698 List!44046 List!44045) Option!9515)

(assert (=> b!4095808 (= res!1674265 (= (maxPrefix!3988 thiss!26199 rules!3870 input!3411) lt!1464994))))

(declare-fun lt!1464992 () BalanceConc!26234)

(declare-fun apply!10292 (TokenValueInjection!14106 BalanceConc!26234) TokenValue!7339)

(declare-fun size!32813 (List!44045) Int)

(assert (=> b!4095808 (= lt!1464994 (Some!9514 (tuple2!42851 (Token!13345 (apply!10292 (transformation!7109 r!4213) lt!1464992) r!4213 (size!32813 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1464993 () Unit!63454)

(declare-fun lemmaSemiInverse!2076 (TokenValueInjection!14106 BalanceConc!26234) Unit!63454)

(assert (=> b!4095808 (= lt!1464993 (lemmaSemiInverse!2076 (transformation!7109 r!4213) lt!1464992))))

(declare-fun seqFromList!5326 (List!44045) BalanceConc!26234)

(assert (=> b!4095808 (= lt!1464992 (seqFromList!5326 p!2988))))

(declare-fun b!4095809 () Bool)

(declare-fun size!32814 (List!44046) Int)

(assert (=> b!4095809 (= e!2541710 (< (size!32814 (t!339237 rules!3870)) (size!32814 rules!3870)))))

(declare-fun lt!1464990 () Unit!63454)

(assert (=> b!4095809 (= lt!1464990 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2095 thiss!26199 r!4213 (t!339237 rules!3870)))))

(declare-fun b!4095810 () Bool)

(declare-fun res!1674254 () Bool)

(assert (=> b!4095810 (=> res!1674254 e!2541719)))

(assert (=> b!4095810 (= res!1674254 (or (and (is-Cons!43922 rules!3870) (= (h!49342 rules!3870) r!4213)) (not (is-Cons!43922 rules!3870)) (= (h!49342 rules!3870) r!4213)))))

(declare-fun b!4095811 () Bool)

(declare-fun res!1674257 () Bool)

(assert (=> b!4095811 (=> res!1674257 e!2541710)))

(assert (=> b!4095811 (= res!1674257 (not (contains!8794 (t!339237 rules!3870) r!4213)))))

(declare-fun tp!1239753 () Bool)

(declare-fun e!2541717 () Bool)

(declare-fun b!4095812 () Bool)

(assert (=> b!4095812 (= e!2541705 (and tp!1239753 (inv!58646 (tag!7969 (h!49342 rules!3870))) (inv!58649 (transformation!7109 (h!49342 rules!3870))) e!2541717))))

(assert (=> b!4095813 (= e!2541717 (and tp!1239748 tp!1239747))))

(assert (=> b!4095814 (= e!2541715 (and tp!1239751 tp!1239750))))

(declare-fun b!4095815 () Bool)

(declare-fun res!1674267 () Bool)

(assert (=> b!4095815 (=> (not res!1674267) (not e!2541712))))

(assert (=> b!4095815 (= res!1674267 (rulesInvariant!6041 thiss!26199 rules!3870))))

(declare-fun b!4095816 () Bool)

(declare-fun res!1674263 () Bool)

(assert (=> b!4095816 (=> res!1674263 e!2541710)))

(assert (=> b!4095816 (= res!1674263 (not (= (maxPrefix!3988 thiss!26199 (t!339237 rules!3870) input!3411) lt!1464994)))))

(assert (= (and start!387870 res!1674256) b!4095795))

(assert (= (and b!4095795 res!1674266) b!4095815))

(assert (= (and b!4095815 res!1674267) b!4095796))

(assert (= (and b!4095796 res!1674259) b!4095797))

(assert (= (and b!4095797 res!1674258) b!4095798))

(assert (= (and b!4095798 res!1674262) b!4095808))

(assert (= (and b!4095808 res!1674265) b!4095801))

(assert (= (and b!4095801 (not res!1674255)) b!4095810))

(assert (= (and b!4095810 (not res!1674254)) b!4095806))

(assert (= (and b!4095806 (not res!1674260)) b!4095802))

(assert (= (and b!4095802 (not res!1674261)) b!4095816))

(assert (= (and b!4095816 (not res!1674263)) b!4095803))

(assert (= (and b!4095803 (not res!1674264)) b!4095811))

(assert (= (and b!4095811 (not res!1674257)) b!4095809))

(assert (= (and start!387870 (is-Cons!43921 suffix!1518)) b!4095800))

(assert (= b!4095812 b!4095813))

(assert (= b!4095799 b!4095812))

(assert (= (and start!387870 (is-Cons!43922 rules!3870)) b!4095799))

(assert (= (and start!387870 (is-Cons!43921 p!2988)) b!4095804))

(assert (= (and start!387870 (is-Cons!43921 input!3411)) b!4095805))

(assert (= b!4095807 b!4095814))

(assert (= start!387870 b!4095807))

(declare-fun m!4702665 () Bool)

(assert (=> b!4095816 m!4702665))

(declare-fun m!4702667 () Bool)

(assert (=> b!4095815 m!4702667))

(declare-fun m!4702669 () Bool)

(assert (=> b!4095808 m!4702669))

(declare-fun m!4702671 () Bool)

(assert (=> b!4095808 m!4702671))

(declare-fun m!4702673 () Bool)

(assert (=> b!4095808 m!4702673))

(declare-fun m!4702675 () Bool)

(assert (=> b!4095808 m!4702675))

(declare-fun m!4702677 () Bool)

(assert (=> b!4095808 m!4702677))

(declare-fun m!4702679 () Bool)

(assert (=> b!4095796 m!4702679))

(declare-fun m!4702681 () Bool)

(assert (=> b!4095803 m!4702681))

(declare-fun m!4702683 () Bool)

(assert (=> b!4095798 m!4702683))

(declare-fun m!4702685 () Bool)

(assert (=> b!4095795 m!4702685))

(declare-fun m!4702687 () Bool)

(assert (=> b!4095802 m!4702687))

(declare-fun m!4702689 () Bool)

(assert (=> b!4095806 m!4702689))

(declare-fun m!4702691 () Bool)

(assert (=> b!4095806 m!4702691))

(declare-fun m!4702693 () Bool)

(assert (=> b!4095806 m!4702693))

(declare-fun m!4702695 () Bool)

(assert (=> b!4095806 m!4702695))

(declare-fun m!4702697 () Bool)

(assert (=> b!4095812 m!4702697))

(declare-fun m!4702699 () Bool)

(assert (=> b!4095812 m!4702699))

(declare-fun m!4702701 () Bool)

(assert (=> b!4095811 m!4702701))

(declare-fun m!4702703 () Bool)

(assert (=> b!4095797 m!4702703))

(declare-fun m!4702705 () Bool)

(assert (=> b!4095809 m!4702705))

(declare-fun m!4702707 () Bool)

(assert (=> b!4095809 m!4702707))

(declare-fun m!4702709 () Bool)

(assert (=> b!4095809 m!4702709))

(declare-fun m!4702711 () Bool)

(assert (=> b!4095807 m!4702711))

(declare-fun m!4702713 () Bool)

(assert (=> b!4095807 m!4702713))

(declare-fun m!4702715 () Bool)

(assert (=> b!4095801 m!4702715))

(declare-fun m!4702717 () Bool)

(assert (=> b!4095801 m!4702717))

(declare-fun m!4702719 () Bool)

(assert (=> b!4095801 m!4702719))

(push 1)

(assert (not b!4095815))

(assert (not b!4095797))

(assert (not b_next!115249))

(assert (not b!4095803))

(assert (not b!4095802))

(assert (not b!4095801))

(assert (not b!4095800))

(assert b_and!315933)

(assert (not b!4095805))

(assert (not b_next!115255))

(assert (not b!4095816))

(assert (not b!4095799))

(assert (not b_next!115251))

(assert b_and!315931)

(assert (not b!4095809))

(assert (not b!4095808))

(assert tp_is_empty!21031)

(assert b_and!315935)

(assert (not b!4095811))

(assert (not b!4095807))

(assert (not b!4095798))

(assert (not b!4095804))

(assert b_and!315937)

(assert (not b!4095795))

(assert (not b_next!115253))

(assert (not b!4095806))

(assert (not b!4095796))

(assert (not b!4095812))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!115251))

(assert (not b_next!115249))

(assert b_and!315931)

(assert b_and!315935)

(assert b_and!315937)

(assert (not b_next!115253))

(assert b_and!315933)

(assert (not b_next!115255))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1216066 () Bool)

(assert (=> d!1216066 (= (inv!58646 (tag!7969 r!4213)) (= (mod (str.len (value!223259 (tag!7969 r!4213))) 2) 0))))

(assert (=> b!4095807 d!1216066))

(declare-fun d!1216068 () Bool)

(declare-fun res!1674319 () Bool)

(declare-fun e!2541767 () Bool)

(assert (=> d!1216068 (=> (not res!1674319) (not e!2541767))))

(declare-fun semiInverseModEq!3058 (Int Int) Bool)

(assert (=> d!1216068 (= res!1674319 (semiInverseModEq!3058 (toChars!9568 (transformation!7109 r!4213)) (toValue!9709 (transformation!7109 r!4213))))))

(assert (=> d!1216068 (= (inv!58649 (transformation!7109 r!4213)) e!2541767)))

(declare-fun b!4095885 () Bool)

(declare-fun equivClasses!2957 (Int Int) Bool)

(assert (=> b!4095885 (= e!2541767 (equivClasses!2957 (toChars!9568 (transformation!7109 r!4213)) (toValue!9709 (transformation!7109 r!4213))))))

(assert (= (and d!1216068 res!1674319) b!4095885))

(declare-fun m!4702777 () Bool)

(assert (=> d!1216068 m!4702777))

(declare-fun m!4702779 () Bool)

(assert (=> b!4095885 m!4702779))

(assert (=> b!4095807 d!1216068))

(declare-fun d!1216070 () Bool)

(declare-fun lt!1465024 () Bool)

(declare-fun content!6779 (List!44046) (Set Rule!14018))

(assert (=> d!1216070 (= lt!1465024 (set.member r!4213 (content!6779 rules!3870)))))

(declare-fun e!2541773 () Bool)

(assert (=> d!1216070 (= lt!1465024 e!2541773)))

(declare-fun res!1674325 () Bool)

(assert (=> d!1216070 (=> (not res!1674325) (not e!2541773))))

(assert (=> d!1216070 (= res!1674325 (is-Cons!43922 rules!3870))))

(assert (=> d!1216070 (= (contains!8794 rules!3870 r!4213) lt!1465024)))

(declare-fun b!4095890 () Bool)

(declare-fun e!2541772 () Bool)

(assert (=> b!4095890 (= e!2541773 e!2541772)))

(declare-fun res!1674324 () Bool)

(assert (=> b!4095890 (=> res!1674324 e!2541772)))

(assert (=> b!4095890 (= res!1674324 (= (h!49342 rules!3870) r!4213))))

(declare-fun b!4095891 () Bool)

(assert (=> b!4095891 (= e!2541772 (contains!8794 (t!339237 rules!3870) r!4213))))

(assert (= (and d!1216070 res!1674325) b!4095890))

(assert (= (and b!4095890 (not res!1674324)) b!4095891))

(declare-fun m!4702781 () Bool)

(assert (=> d!1216070 m!4702781))

(declare-fun m!4702783 () Bool)

(assert (=> d!1216070 m!4702783))

(assert (=> b!4095891 m!4702701))

(assert (=> b!4095796 d!1216070))

(declare-fun d!1216072 () Bool)

(assert (=> d!1216072 (= (isEmpty!26282 lt!1464991) (not (is-Some!9514 lt!1464991)))))

(assert (=> b!4095806 d!1216072))

(declare-fun b!4095914 () Bool)

(declare-fun e!2541788 () Bool)

(declare-fun e!2541789 () Bool)

(assert (=> b!4095914 (= e!2541788 e!2541789)))

(declare-fun res!1674349 () Bool)

(assert (=> b!4095914 (=> (not res!1674349) (not e!2541789))))

(declare-fun lt!1465037 () Option!9515)

(declare-fun list!16299 (BalanceConc!26234) List!44045)

(declare-fun charsOf!4865 (Token!13344) BalanceConc!26234)

(assert (=> b!4095914 (= res!1674349 (matchR!5955 (regex!7109 (h!49342 rules!3870)) (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465037))))))))

(declare-fun b!4095915 () Bool)

(assert (=> b!4095915 (= e!2541789 (= (size!32812 (_1!24559 (get!14408 lt!1465037))) (size!32813 (originalCharacters!7703 (_1!24559 (get!14408 lt!1465037))))))))

(declare-fun b!4095916 () Bool)

(declare-fun res!1674347 () Bool)

(assert (=> b!4095916 (=> (not res!1674347) (not e!2541789))))

(assert (=> b!4095916 (= res!1674347 (= (++!11515 (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465037)))) (_2!24559 (get!14408 lt!1465037))) input!3411))))

(declare-fun b!4095917 () Bool)

(declare-fun res!1674348 () Bool)

(assert (=> b!4095917 (=> (not res!1674348) (not e!2541789))))

(assert (=> b!4095917 (= res!1674348 (< (size!32813 (_2!24559 (get!14408 lt!1465037))) (size!32813 input!3411)))))

(declare-fun b!4095918 () Bool)

(declare-fun res!1674344 () Bool)

(assert (=> b!4095918 (=> (not res!1674344) (not e!2541789))))

(assert (=> b!4095918 (= res!1674344 (= (rule!10261 (_1!24559 (get!14408 lt!1465037))) (h!49342 rules!3870)))))

(declare-fun b!4095919 () Bool)

(declare-fun e!2541787 () Option!9515)

(assert (=> b!4095919 (= e!2541787 None!9514)))

(declare-fun b!4095920 () Bool)

(declare-datatypes ((tuple2!42854 0))(
  ( (tuple2!42855 (_1!24561 List!44045) (_2!24561 List!44045)) )
))
(declare-fun lt!1465036 () tuple2!42854)

(declare-fun size!32818 (BalanceConc!26234) Int)

(assert (=> b!4095920 (= e!2541787 (Some!9514 (tuple2!42851 (Token!13345 (apply!10292 (transformation!7109 (h!49342 rules!3870)) (seqFromList!5326 (_1!24561 lt!1465036))) (h!49342 rules!3870) (size!32818 (seqFromList!5326 (_1!24561 lt!1465036))) (_1!24561 lt!1465036)) (_2!24561 lt!1465036))))))

(declare-fun lt!1465039 () Unit!63454)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1444 (Regex!12014 List!44045) Unit!63454)

(assert (=> b!4095920 (= lt!1465039 (longestMatchIsAcceptedByMatchOrIsEmpty!1444 (regex!7109 (h!49342 rules!3870)) input!3411))))

(declare-fun res!1674345 () Bool)

(declare-fun findLongestMatchInner!1471 (Regex!12014 List!44045 Int List!44045 List!44045 Int) tuple2!42854)

(assert (=> b!4095920 (= res!1674345 (isEmpty!26280 (_1!24561 (findLongestMatchInner!1471 (regex!7109 (h!49342 rules!3870)) Nil!43921 (size!32813 Nil!43921) input!3411 input!3411 (size!32813 input!3411)))))))

(declare-fun e!2541786 () Bool)

(assert (=> b!4095920 (=> res!1674345 e!2541786)))

(assert (=> b!4095920 e!2541786))

(declare-fun lt!1465035 () Unit!63454)

(assert (=> b!4095920 (= lt!1465035 lt!1465039)))

(declare-fun lt!1465038 () Unit!63454)

(assert (=> b!4095920 (= lt!1465038 (lemmaSemiInverse!2076 (transformation!7109 (h!49342 rules!3870)) (seqFromList!5326 (_1!24561 lt!1465036))))))

(declare-fun b!4095921 () Bool)

(assert (=> b!4095921 (= e!2541786 (matchR!5955 (regex!7109 (h!49342 rules!3870)) (_1!24561 (findLongestMatchInner!1471 (regex!7109 (h!49342 rules!3870)) Nil!43921 (size!32813 Nil!43921) input!3411 input!3411 (size!32813 input!3411)))))))

(declare-fun d!1216074 () Bool)

(assert (=> d!1216074 e!2541788))

(declare-fun res!1674346 () Bool)

(assert (=> d!1216074 (=> res!1674346 e!2541788)))

(assert (=> d!1216074 (= res!1674346 (isEmpty!26282 lt!1465037))))

(assert (=> d!1216074 (= lt!1465037 e!2541787)))

(declare-fun c!705826 () Bool)

(assert (=> d!1216074 (= c!705826 (isEmpty!26280 (_1!24561 lt!1465036)))))

(declare-fun findLongestMatch!1384 (Regex!12014 List!44045) tuple2!42854)

(assert (=> d!1216074 (= lt!1465036 (findLongestMatch!1384 (regex!7109 (h!49342 rules!3870)) input!3411))))

(assert (=> d!1216074 (ruleValid!3029 thiss!26199 (h!49342 rules!3870))))

(assert (=> d!1216074 (= (maxPrefixOneRule!2970 thiss!26199 (h!49342 rules!3870) input!3411) lt!1465037)))

(declare-fun b!4095922 () Bool)

(declare-fun res!1674350 () Bool)

(assert (=> b!4095922 (=> (not res!1674350) (not e!2541789))))

(assert (=> b!4095922 (= res!1674350 (= (value!223260 (_1!24559 (get!14408 lt!1465037))) (apply!10292 (transformation!7109 (rule!10261 (_1!24559 (get!14408 lt!1465037)))) (seqFromList!5326 (originalCharacters!7703 (_1!24559 (get!14408 lt!1465037)))))))))

(assert (= (and d!1216074 c!705826) b!4095919))

(assert (= (and d!1216074 (not c!705826)) b!4095920))

(assert (= (and b!4095920 (not res!1674345)) b!4095921))

(assert (= (and d!1216074 (not res!1674346)) b!4095914))

(assert (= (and b!4095914 res!1674349) b!4095916))

(assert (= (and b!4095916 res!1674347) b!4095917))

(assert (= (and b!4095917 res!1674348) b!4095918))

(assert (= (and b!4095918 res!1674344) b!4095922))

(assert (= (and b!4095922 res!1674350) b!4095915))

(declare-fun m!4702793 () Bool)

(assert (=> b!4095917 m!4702793))

(declare-fun m!4702795 () Bool)

(assert (=> b!4095917 m!4702795))

(declare-fun m!4702797 () Bool)

(assert (=> b!4095917 m!4702797))

(declare-fun m!4702799 () Bool)

(assert (=> d!1216074 m!4702799))

(declare-fun m!4702801 () Bool)

(assert (=> d!1216074 m!4702801))

(declare-fun m!4702803 () Bool)

(assert (=> d!1216074 m!4702803))

(declare-fun m!4702805 () Bool)

(assert (=> d!1216074 m!4702805))

(assert (=> b!4095918 m!4702793))

(assert (=> b!4095914 m!4702793))

(declare-fun m!4702807 () Bool)

(assert (=> b!4095914 m!4702807))

(assert (=> b!4095914 m!4702807))

(declare-fun m!4702809 () Bool)

(assert (=> b!4095914 m!4702809))

(assert (=> b!4095914 m!4702809))

(declare-fun m!4702811 () Bool)

(assert (=> b!4095914 m!4702811))

(declare-fun m!4702813 () Bool)

(assert (=> b!4095920 m!4702813))

(declare-fun m!4702815 () Bool)

(assert (=> b!4095920 m!4702815))

(declare-fun m!4702817 () Bool)

(assert (=> b!4095920 m!4702817))

(assert (=> b!4095920 m!4702815))

(declare-fun m!4702819 () Bool)

(assert (=> b!4095920 m!4702819))

(declare-fun m!4702821 () Bool)

(assert (=> b!4095920 m!4702821))

(declare-fun m!4702823 () Bool)

(assert (=> b!4095920 m!4702823))

(assert (=> b!4095920 m!4702815))

(declare-fun m!4702825 () Bool)

(assert (=> b!4095920 m!4702825))

(assert (=> b!4095920 m!4702815))

(assert (=> b!4095920 m!4702821))

(assert (=> b!4095920 m!4702797))

(declare-fun m!4702827 () Bool)

(assert (=> b!4095920 m!4702827))

(assert (=> b!4095920 m!4702797))

(assert (=> b!4095916 m!4702793))

(assert (=> b!4095916 m!4702807))

(assert (=> b!4095916 m!4702807))

(assert (=> b!4095916 m!4702809))

(assert (=> b!4095916 m!4702809))

(declare-fun m!4702829 () Bool)

(assert (=> b!4095916 m!4702829))

(assert (=> b!4095921 m!4702821))

(assert (=> b!4095921 m!4702797))

(assert (=> b!4095921 m!4702821))

(assert (=> b!4095921 m!4702797))

(assert (=> b!4095921 m!4702827))

(declare-fun m!4702831 () Bool)

(assert (=> b!4095921 m!4702831))

(assert (=> b!4095922 m!4702793))

(declare-fun m!4702833 () Bool)

(assert (=> b!4095922 m!4702833))

(assert (=> b!4095922 m!4702833))

(declare-fun m!4702835 () Bool)

(assert (=> b!4095922 m!4702835))

(assert (=> b!4095915 m!4702793))

(declare-fun m!4702837 () Bool)

(assert (=> b!4095915 m!4702837))

(assert (=> b!4095806 d!1216074))

(declare-fun d!1216092 () Bool)

(declare-fun res!1674353 () Bool)

(declare-fun e!2541792 () Bool)

(assert (=> d!1216092 (=> (not res!1674353) (not e!2541792))))

(declare-fun rulesValid!2793 (LexerInterface!6698 List!44046) Bool)

(assert (=> d!1216092 (= res!1674353 (rulesValid!2793 thiss!26199 (t!339237 rules!3870)))))

(assert (=> d!1216092 (= (rulesInvariant!6041 thiss!26199 (t!339237 rules!3870)) e!2541792)))

(declare-fun b!4095925 () Bool)

(declare-datatypes ((List!44050 0))(
  ( (Nil!43926) (Cons!43926 (h!49346 String!50447) (t!339257 List!44050)) )
))
(declare-fun noDuplicateTag!2794 (LexerInterface!6698 List!44046 List!44050) Bool)

(assert (=> b!4095925 (= e!2541792 (noDuplicateTag!2794 thiss!26199 (t!339237 rules!3870) Nil!43926))))

(assert (= (and d!1216092 res!1674353) b!4095925))

(declare-fun m!4702839 () Bool)

(assert (=> d!1216092 m!4702839))

(declare-fun m!4702841 () Bool)

(assert (=> b!4095925 m!4702841))

(assert (=> b!4095806 d!1216092))

(declare-fun d!1216094 () Bool)

(assert (=> d!1216094 (rulesInvariant!6041 thiss!26199 (t!339237 rules!3870))))

(declare-fun lt!1465042 () Unit!63454)

(declare-fun choose!25024 (LexerInterface!6698 Rule!14018 List!44046) Unit!63454)

(assert (=> d!1216094 (= lt!1465042 (choose!25024 thiss!26199 (h!49342 rules!3870) (t!339237 rules!3870)))))

(assert (=> d!1216094 (rulesInvariant!6041 thiss!26199 (Cons!43922 (h!49342 rules!3870) (t!339237 rules!3870)))))

(assert (=> d!1216094 (= (lemmaInvariantOnRulesThenOnTail!811 thiss!26199 (h!49342 rules!3870) (t!339237 rules!3870)) lt!1465042)))

(declare-fun bs!593555 () Bool)

(assert (= bs!593555 d!1216094))

(assert (=> bs!593555 m!4702693))

(declare-fun m!4702843 () Bool)

(assert (=> bs!593555 m!4702843))

(declare-fun m!4702845 () Bool)

(assert (=> bs!593555 m!4702845))

(assert (=> b!4095806 d!1216094))

(declare-fun d!1216096 () Bool)

(assert (=> d!1216096 (= (isEmpty!26281 rules!3870) (is-Nil!43922 rules!3870))))

(assert (=> b!4095795 d!1216096))

(declare-fun bm!289480 () Bool)

(declare-fun call!289485 () Option!9515)

(assert (=> bm!289480 (= call!289485 (maxPrefixOneRule!2970 thiss!26199 (h!49342 (t!339237 rules!3870)) input!3411))))

(declare-fun b!4095944 () Bool)

(declare-fun res!1674371 () Bool)

(declare-fun e!2541801 () Bool)

(assert (=> b!4095944 (=> (not res!1674371) (not e!2541801))))

(declare-fun lt!1465054 () Option!9515)

(assert (=> b!4095944 (= res!1674371 (= (++!11515 (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465054)))) (_2!24559 (get!14408 lt!1465054))) input!3411))))

(declare-fun d!1216098 () Bool)

(declare-fun e!2541799 () Bool)

(assert (=> d!1216098 e!2541799))

(declare-fun res!1674372 () Bool)

(assert (=> d!1216098 (=> res!1674372 e!2541799)))

(assert (=> d!1216098 (= res!1674372 (isEmpty!26282 lt!1465054))))

(declare-fun e!2541800 () Option!9515)

(assert (=> d!1216098 (= lt!1465054 e!2541800)))

(declare-fun c!705829 () Bool)

(assert (=> d!1216098 (= c!705829 (and (is-Cons!43922 (t!339237 rules!3870)) (is-Nil!43922 (t!339237 (t!339237 rules!3870)))))))

(declare-fun lt!1465053 () Unit!63454)

(declare-fun lt!1465057 () Unit!63454)

(assert (=> d!1216098 (= lt!1465053 lt!1465057)))

(declare-fun isPrefix!4151 (List!44045 List!44045) Bool)

(assert (=> d!1216098 (isPrefix!4151 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2702 (List!44045 List!44045) Unit!63454)

(assert (=> d!1216098 (= lt!1465057 (lemmaIsPrefixRefl!2702 input!3411 input!3411))))

(declare-fun rulesValidInductive!2633 (LexerInterface!6698 List!44046) Bool)

(assert (=> d!1216098 (rulesValidInductive!2633 thiss!26199 (t!339237 rules!3870))))

(assert (=> d!1216098 (= (maxPrefix!3988 thiss!26199 (t!339237 rules!3870) input!3411) lt!1465054)))

(declare-fun b!4095945 () Bool)

(assert (=> b!4095945 (= e!2541800 call!289485)))

(declare-fun b!4095946 () Bool)

(declare-fun lt!1465056 () Option!9515)

(declare-fun lt!1465055 () Option!9515)

(assert (=> b!4095946 (= e!2541800 (ite (and (is-None!9514 lt!1465056) (is-None!9514 lt!1465055)) None!9514 (ite (is-None!9514 lt!1465055) lt!1465056 (ite (is-None!9514 lt!1465056) lt!1465055 (ite (>= (size!32812 (_1!24559 (v!40012 lt!1465056))) (size!32812 (_1!24559 (v!40012 lt!1465055)))) lt!1465056 lt!1465055)))))))

(assert (=> b!4095946 (= lt!1465056 call!289485)))

(assert (=> b!4095946 (= lt!1465055 (maxPrefix!3988 thiss!26199 (t!339237 (t!339237 rules!3870)) input!3411))))

(declare-fun b!4095947 () Bool)

(declare-fun res!1674368 () Bool)

(assert (=> b!4095947 (=> (not res!1674368) (not e!2541801))))

(assert (=> b!4095947 (= res!1674368 (matchR!5955 (regex!7109 (rule!10261 (_1!24559 (get!14408 lt!1465054)))) (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465054))))))))

(declare-fun b!4095948 () Bool)

(declare-fun res!1674370 () Bool)

(assert (=> b!4095948 (=> (not res!1674370) (not e!2541801))))

(assert (=> b!4095948 (= res!1674370 (= (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465054)))) (originalCharacters!7703 (_1!24559 (get!14408 lt!1465054)))))))

(declare-fun b!4095949 () Bool)

(assert (=> b!4095949 (= e!2541801 (contains!8794 (t!339237 rules!3870) (rule!10261 (_1!24559 (get!14408 lt!1465054)))))))

(declare-fun b!4095950 () Bool)

(assert (=> b!4095950 (= e!2541799 e!2541801)))

(declare-fun res!1674374 () Bool)

(assert (=> b!4095950 (=> (not res!1674374) (not e!2541801))))

(declare-fun isDefined!7200 (Option!9515) Bool)

(assert (=> b!4095950 (= res!1674374 (isDefined!7200 lt!1465054))))

(declare-fun b!4095951 () Bool)

(declare-fun res!1674369 () Bool)

(assert (=> b!4095951 (=> (not res!1674369) (not e!2541801))))

(assert (=> b!4095951 (= res!1674369 (= (value!223260 (_1!24559 (get!14408 lt!1465054))) (apply!10292 (transformation!7109 (rule!10261 (_1!24559 (get!14408 lt!1465054)))) (seqFromList!5326 (originalCharacters!7703 (_1!24559 (get!14408 lt!1465054)))))))))

(declare-fun b!4095952 () Bool)

(declare-fun res!1674373 () Bool)

(assert (=> b!4095952 (=> (not res!1674373) (not e!2541801))))

(assert (=> b!4095952 (= res!1674373 (< (size!32813 (_2!24559 (get!14408 lt!1465054))) (size!32813 input!3411)))))

(assert (= (and d!1216098 c!705829) b!4095945))

(assert (= (and d!1216098 (not c!705829)) b!4095946))

(assert (= (or b!4095945 b!4095946) bm!289480))

(assert (= (and d!1216098 (not res!1674372)) b!4095950))

(assert (= (and b!4095950 res!1674374) b!4095948))

(assert (= (and b!4095948 res!1674370) b!4095952))

(assert (= (and b!4095952 res!1674373) b!4095944))

(assert (= (and b!4095944 res!1674371) b!4095951))

(assert (= (and b!4095951 res!1674369) b!4095947))

(assert (= (and b!4095947 res!1674368) b!4095949))

(declare-fun m!4702847 () Bool)

(assert (=> bm!289480 m!4702847))

(declare-fun m!4702849 () Bool)

(assert (=> b!4095946 m!4702849))

(declare-fun m!4702851 () Bool)

(assert (=> d!1216098 m!4702851))

(declare-fun m!4702853 () Bool)

(assert (=> d!1216098 m!4702853))

(declare-fun m!4702855 () Bool)

(assert (=> d!1216098 m!4702855))

(declare-fun m!4702857 () Bool)

(assert (=> d!1216098 m!4702857))

(declare-fun m!4702859 () Bool)

(assert (=> b!4095947 m!4702859))

(declare-fun m!4702861 () Bool)

(assert (=> b!4095947 m!4702861))

(assert (=> b!4095947 m!4702861))

(declare-fun m!4702863 () Bool)

(assert (=> b!4095947 m!4702863))

(assert (=> b!4095947 m!4702863))

(declare-fun m!4702865 () Bool)

(assert (=> b!4095947 m!4702865))

(assert (=> b!4095948 m!4702859))

(assert (=> b!4095948 m!4702861))

(assert (=> b!4095948 m!4702861))

(assert (=> b!4095948 m!4702863))

(assert (=> b!4095944 m!4702859))

(assert (=> b!4095944 m!4702861))

(assert (=> b!4095944 m!4702861))

(assert (=> b!4095944 m!4702863))

(assert (=> b!4095944 m!4702863))

(declare-fun m!4702867 () Bool)

(assert (=> b!4095944 m!4702867))

(assert (=> b!4095952 m!4702859))

(declare-fun m!4702869 () Bool)

(assert (=> b!4095952 m!4702869))

(assert (=> b!4095952 m!4702797))

(declare-fun m!4702871 () Bool)

(assert (=> b!4095950 m!4702871))

(assert (=> b!4095949 m!4702859))

(declare-fun m!4702873 () Bool)

(assert (=> b!4095949 m!4702873))

(assert (=> b!4095951 m!4702859))

(declare-fun m!4702875 () Bool)

(assert (=> b!4095951 m!4702875))

(assert (=> b!4095951 m!4702875))

(declare-fun m!4702877 () Bool)

(assert (=> b!4095951 m!4702877))

(assert (=> b!4095816 d!1216098))

(declare-fun d!1216100 () Bool)

(declare-fun res!1674375 () Bool)

(declare-fun e!2541802 () Bool)

(assert (=> d!1216100 (=> (not res!1674375) (not e!2541802))))

(assert (=> d!1216100 (= res!1674375 (rulesValid!2793 thiss!26199 rules!3870))))

(assert (=> d!1216100 (= (rulesInvariant!6041 thiss!26199 rules!3870) e!2541802)))

(declare-fun b!4095953 () Bool)

(assert (=> b!4095953 (= e!2541802 (noDuplicateTag!2794 thiss!26199 rules!3870 Nil!43926))))

(assert (= (and d!1216100 res!1674375) b!4095953))

(declare-fun m!4702879 () Bool)

(assert (=> d!1216100 m!4702879))

(declare-fun m!4702881 () Bool)

(assert (=> b!4095953 m!4702881))

(assert (=> b!4095815 d!1216100))

(declare-fun d!1216102 () Bool)

(assert (=> d!1216102 (= (isEmpty!26281 (t!339237 rules!3870)) (is-Nil!43922 (t!339237 rules!3870)))))

(assert (=> b!4095803 d!1216102))

(declare-fun d!1216104 () Bool)

(assert (=> d!1216104 (= (get!14408 lt!1464991) (v!40012 lt!1464991))))

(assert (=> b!4095802 d!1216104))

(declare-fun d!1216106 () Bool)

(assert (=> d!1216106 (= (inv!58646 (tag!7969 (h!49342 rules!3870))) (= (mod (str.len (value!223259 (tag!7969 (h!49342 rules!3870)))) 2) 0))))

(assert (=> b!4095812 d!1216106))

(declare-fun d!1216108 () Bool)

(declare-fun res!1674376 () Bool)

(declare-fun e!2541803 () Bool)

(assert (=> d!1216108 (=> (not res!1674376) (not e!2541803))))

(assert (=> d!1216108 (= res!1674376 (semiInverseModEq!3058 (toChars!9568 (transformation!7109 (h!49342 rules!3870))) (toValue!9709 (transformation!7109 (h!49342 rules!3870)))))))

(assert (=> d!1216108 (= (inv!58649 (transformation!7109 (h!49342 rules!3870))) e!2541803)))

(declare-fun b!4095954 () Bool)

(assert (=> b!4095954 (= e!2541803 (equivClasses!2957 (toChars!9568 (transformation!7109 (h!49342 rules!3870))) (toValue!9709 (transformation!7109 (h!49342 rules!3870)))))))

(assert (= (and d!1216108 res!1674376) b!4095954))

(declare-fun m!4702883 () Bool)

(assert (=> d!1216108 m!4702883))

(declare-fun m!4702885 () Bool)

(assert (=> b!4095954 m!4702885))

(assert (=> b!4095812 d!1216108))

(declare-fun d!1216110 () Bool)

(declare-fun e!2541821 () Bool)

(assert (=> d!1216110 e!2541821))

(declare-fun c!705838 () Bool)

(assert (=> d!1216110 (= c!705838 (is-EmptyExpr!12014 (regex!7109 r!4213)))))

(declare-fun lt!1465060 () Bool)

(declare-fun e!2541822 () Bool)

(assert (=> d!1216110 (= lt!1465060 e!2541822)))

(declare-fun c!705837 () Bool)

(assert (=> d!1216110 (= c!705837 (isEmpty!26280 p!2988))))

(declare-fun validRegex!5447 (Regex!12014) Bool)

(assert (=> d!1216110 (validRegex!5447 (regex!7109 r!4213))))

(assert (=> d!1216110 (= (matchR!5955 (regex!7109 r!4213) p!2988) lt!1465060)))

(declare-fun b!4095983 () Bool)

(declare-fun res!1674394 () Bool)

(declare-fun e!2541818 () Bool)

(assert (=> b!4095983 (=> (not res!1674394) (not e!2541818))))

(declare-fun tail!6392 (List!44045) List!44045)

(assert (=> b!4095983 (= res!1674394 (isEmpty!26280 (tail!6392 p!2988)))))

(declare-fun b!4095984 () Bool)

(declare-fun head!8658 (List!44045) C!24214)

(assert (=> b!4095984 (= e!2541818 (= (head!8658 p!2988) (c!705819 (regex!7109 r!4213))))))

(declare-fun b!4095985 () Bool)

(declare-fun res!1674399 () Bool)

(declare-fun e!2541824 () Bool)

(assert (=> b!4095985 (=> res!1674399 e!2541824)))

(assert (=> b!4095985 (= res!1674399 e!2541818)))

(declare-fun res!1674400 () Bool)

(assert (=> b!4095985 (=> (not res!1674400) (not e!2541818))))

(assert (=> b!4095985 (= res!1674400 lt!1465060)))

(declare-fun b!4095986 () Bool)

(declare-fun res!1674395 () Bool)

(assert (=> b!4095986 (=> (not res!1674395) (not e!2541818))))

(declare-fun call!289488 () Bool)

(assert (=> b!4095986 (= res!1674395 (not call!289488))))

(declare-fun b!4095987 () Bool)

(declare-fun e!2541823 () Bool)

(assert (=> b!4095987 (= e!2541823 (not lt!1465060))))

(declare-fun b!4095988 () Bool)

(declare-fun res!1674396 () Bool)

(declare-fun e!2541820 () Bool)

(assert (=> b!4095988 (=> res!1674396 e!2541820)))

(assert (=> b!4095988 (= res!1674396 (not (isEmpty!26280 (tail!6392 p!2988))))))

(declare-fun b!4095989 () Bool)

(declare-fun nullable!4247 (Regex!12014) Bool)

(assert (=> b!4095989 (= e!2541822 (nullable!4247 (regex!7109 r!4213)))))

(declare-fun b!4095990 () Bool)

(declare-fun res!1674398 () Bool)

(assert (=> b!4095990 (=> res!1674398 e!2541824)))

(assert (=> b!4095990 (= res!1674398 (not (is-ElementMatch!12014 (regex!7109 r!4213))))))

(assert (=> b!4095990 (= e!2541823 e!2541824)))

(declare-fun b!4095991 () Bool)

(declare-fun e!2541819 () Bool)

(assert (=> b!4095991 (= e!2541824 e!2541819)))

(declare-fun res!1674393 () Bool)

(assert (=> b!4095991 (=> (not res!1674393) (not e!2541819))))

(assert (=> b!4095991 (= res!1674393 (not lt!1465060))))

(declare-fun bm!289483 () Bool)

(assert (=> bm!289483 (= call!289488 (isEmpty!26280 p!2988))))

(declare-fun b!4095992 () Bool)

(assert (=> b!4095992 (= e!2541821 (= lt!1465060 call!289488))))

(declare-fun b!4095993 () Bool)

(assert (=> b!4095993 (= e!2541819 e!2541820)))

(declare-fun res!1674397 () Bool)

(assert (=> b!4095993 (=> res!1674397 e!2541820)))

(assert (=> b!4095993 (= res!1674397 call!289488)))

(declare-fun b!4095994 () Bool)

(assert (=> b!4095994 (= e!2541820 (not (= (head!8658 p!2988) (c!705819 (regex!7109 r!4213)))))))

(declare-fun b!4095995 () Bool)

(declare-fun derivativeStep!3648 (Regex!12014 C!24214) Regex!12014)

(assert (=> b!4095995 (= e!2541822 (matchR!5955 (derivativeStep!3648 (regex!7109 r!4213) (head!8658 p!2988)) (tail!6392 p!2988)))))

(declare-fun b!4095996 () Bool)

(assert (=> b!4095996 (= e!2541821 e!2541823)))

(declare-fun c!705836 () Bool)

(assert (=> b!4095996 (= c!705836 (is-EmptyLang!12014 (regex!7109 r!4213)))))

(assert (= (and d!1216110 c!705837) b!4095989))

(assert (= (and d!1216110 (not c!705837)) b!4095995))

(assert (= (and d!1216110 c!705838) b!4095992))

(assert (= (and d!1216110 (not c!705838)) b!4095996))

(assert (= (and b!4095996 c!705836) b!4095987))

(assert (= (and b!4095996 (not c!705836)) b!4095990))

(assert (= (and b!4095990 (not res!1674398)) b!4095985))

(assert (= (and b!4095985 res!1674400) b!4095986))

(assert (= (and b!4095986 res!1674395) b!4095983))

(assert (= (and b!4095983 res!1674394) b!4095984))

(assert (= (and b!4095985 (not res!1674399)) b!4095991))

(assert (= (and b!4095991 res!1674393) b!4095993))

(assert (= (and b!4095993 (not res!1674397)) b!4095988))

(assert (= (and b!4095988 (not res!1674396)) b!4095994))

(assert (= (or b!4095992 b!4095986 b!4095993) bm!289483))

(declare-fun m!4702887 () Bool)

(assert (=> b!4095989 m!4702887))

(declare-fun m!4702889 () Bool)

(assert (=> b!4095984 m!4702889))

(declare-fun m!4702891 () Bool)

(assert (=> b!4095988 m!4702891))

(assert (=> b!4095988 m!4702891))

(declare-fun m!4702893 () Bool)

(assert (=> b!4095988 m!4702893))

(assert (=> d!1216110 m!4702683))

(declare-fun m!4702895 () Bool)

(assert (=> d!1216110 m!4702895))

(assert (=> bm!289483 m!4702683))

(assert (=> b!4095994 m!4702889))

(assert (=> b!4095983 m!4702891))

(assert (=> b!4095983 m!4702891))

(assert (=> b!4095983 m!4702893))

(assert (=> b!4095995 m!4702889))

(assert (=> b!4095995 m!4702889))

(declare-fun m!4702897 () Bool)

(assert (=> b!4095995 m!4702897))

(assert (=> b!4095995 m!4702891))

(assert (=> b!4095995 m!4702897))

(assert (=> b!4095995 m!4702891))

(declare-fun m!4702899 () Bool)

(assert (=> b!4095995 m!4702899))

(assert (=> b!4095801 d!1216110))

(declare-fun d!1216112 () Bool)

(declare-fun res!1674405 () Bool)

(declare-fun e!2541827 () Bool)

(assert (=> d!1216112 (=> (not res!1674405) (not e!2541827))))

(assert (=> d!1216112 (= res!1674405 (validRegex!5447 (regex!7109 r!4213)))))

(assert (=> d!1216112 (= (ruleValid!3029 thiss!26199 r!4213) e!2541827)))

(declare-fun b!4096001 () Bool)

(declare-fun res!1674406 () Bool)

(assert (=> b!4096001 (=> (not res!1674406) (not e!2541827))))

(assert (=> b!4096001 (= res!1674406 (not (nullable!4247 (regex!7109 r!4213))))))

(declare-fun b!4096002 () Bool)

(assert (=> b!4096002 (= e!2541827 (not (= (tag!7969 r!4213) (String!50448 ""))))))

(assert (= (and d!1216112 res!1674405) b!4096001))

(assert (= (and b!4096001 res!1674406) b!4096002))

(assert (=> d!1216112 m!4702895))

(assert (=> b!4096001 m!4702887))

(assert (=> b!4095801 d!1216112))

(declare-fun d!1216114 () Bool)

(assert (=> d!1216114 (ruleValid!3029 thiss!26199 r!4213)))

(declare-fun lt!1465063 () Unit!63454)

(declare-fun choose!25025 (LexerInterface!6698 Rule!14018 List!44046) Unit!63454)

(assert (=> d!1216114 (= lt!1465063 (choose!25025 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1216114 (contains!8794 rules!3870 r!4213)))

(assert (=> d!1216114 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2095 thiss!26199 r!4213 rules!3870) lt!1465063)))

(declare-fun bs!593556 () Bool)

(assert (= bs!593556 d!1216114))

(assert (=> bs!593556 m!4702717))

(declare-fun m!4702901 () Bool)

(assert (=> bs!593556 m!4702901))

(assert (=> bs!593556 m!4702679))

(assert (=> b!4095801 d!1216114))

(declare-fun d!1216116 () Bool)

(declare-fun lt!1465064 () Bool)

(assert (=> d!1216116 (= lt!1465064 (set.member r!4213 (content!6779 (t!339237 rules!3870))))))

(declare-fun e!2541829 () Bool)

(assert (=> d!1216116 (= lt!1465064 e!2541829)))

(declare-fun res!1674408 () Bool)

(assert (=> d!1216116 (=> (not res!1674408) (not e!2541829))))

(assert (=> d!1216116 (= res!1674408 (is-Cons!43922 (t!339237 rules!3870)))))

(assert (=> d!1216116 (= (contains!8794 (t!339237 rules!3870) r!4213) lt!1465064)))

(declare-fun b!4096003 () Bool)

(declare-fun e!2541828 () Bool)

(assert (=> b!4096003 (= e!2541829 e!2541828)))

(declare-fun res!1674407 () Bool)

(assert (=> b!4096003 (=> res!1674407 e!2541828)))

(assert (=> b!4096003 (= res!1674407 (= (h!49342 (t!339237 rules!3870)) r!4213))))

(declare-fun b!4096004 () Bool)

(assert (=> b!4096004 (= e!2541828 (contains!8794 (t!339237 (t!339237 rules!3870)) r!4213))))

(assert (= (and d!1216116 res!1674408) b!4096003))

(assert (= (and b!4096003 (not res!1674407)) b!4096004))

(declare-fun m!4702903 () Bool)

(assert (=> d!1216116 m!4702903))

(declare-fun m!4702905 () Bool)

(assert (=> d!1216116 m!4702905))

(declare-fun m!4702907 () Bool)

(assert (=> b!4096004 m!4702907))

(assert (=> b!4095811 d!1216116))

(declare-fun d!1216118 () Bool)

(declare-fun lt!1465067 () Int)

(assert (=> d!1216118 (>= lt!1465067 0)))

(declare-fun e!2541832 () Int)

(assert (=> d!1216118 (= lt!1465067 e!2541832)))

(declare-fun c!705841 () Bool)

(assert (=> d!1216118 (= c!705841 (is-Nil!43922 (t!339237 rules!3870)))))

(assert (=> d!1216118 (= (size!32814 (t!339237 rules!3870)) lt!1465067)))

(declare-fun b!4096009 () Bool)

(assert (=> b!4096009 (= e!2541832 0)))

(declare-fun b!4096010 () Bool)

(assert (=> b!4096010 (= e!2541832 (+ 1 (size!32814 (t!339237 (t!339237 rules!3870)))))))

(assert (= (and d!1216118 c!705841) b!4096009))

(assert (= (and d!1216118 (not c!705841)) b!4096010))

(declare-fun m!4702909 () Bool)

(assert (=> b!4096010 m!4702909))

(assert (=> b!4095809 d!1216118))

(declare-fun d!1216120 () Bool)

(declare-fun lt!1465068 () Int)

(assert (=> d!1216120 (>= lt!1465068 0)))

(declare-fun e!2541833 () Int)

(assert (=> d!1216120 (= lt!1465068 e!2541833)))

(declare-fun c!705842 () Bool)

(assert (=> d!1216120 (= c!705842 (is-Nil!43922 rules!3870))))

(assert (=> d!1216120 (= (size!32814 rules!3870) lt!1465068)))

(declare-fun b!4096011 () Bool)

(assert (=> b!4096011 (= e!2541833 0)))

(declare-fun b!4096012 () Bool)

(assert (=> b!4096012 (= e!2541833 (+ 1 (size!32814 (t!339237 rules!3870))))))

(assert (= (and d!1216120 c!705842) b!4096011))

(assert (= (and d!1216120 (not c!705842)) b!4096012))

(assert (=> b!4096012 m!4702705))

(assert (=> b!4095809 d!1216120))

(declare-fun d!1216122 () Bool)

(assert (=> d!1216122 (ruleValid!3029 thiss!26199 r!4213)))

(declare-fun lt!1465069 () Unit!63454)

(assert (=> d!1216122 (= lt!1465069 (choose!25025 thiss!26199 r!4213 (t!339237 rules!3870)))))

(assert (=> d!1216122 (contains!8794 (t!339237 rules!3870) r!4213)))

(assert (=> d!1216122 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2095 thiss!26199 r!4213 (t!339237 rules!3870)) lt!1465069)))

(declare-fun bs!593557 () Bool)

(assert (= bs!593557 d!1216122))

(assert (=> bs!593557 m!4702717))

(declare-fun m!4702911 () Bool)

(assert (=> bs!593557 m!4702911))

(assert (=> bs!593557 m!4702701))

(assert (=> b!4095809 d!1216122))

(declare-fun d!1216124 () Bool)

(assert (=> d!1216124 (= (isEmpty!26280 p!2988) (is-Nil!43921 p!2988))))

(assert (=> b!4095798 d!1216124))

(declare-fun bm!289484 () Bool)

(declare-fun call!289489 () Option!9515)

(assert (=> bm!289484 (= call!289489 (maxPrefixOneRule!2970 thiss!26199 (h!49342 rules!3870) input!3411))))

(declare-fun b!4096013 () Bool)

(declare-fun res!1674412 () Bool)

(declare-fun e!2541836 () Bool)

(assert (=> b!4096013 (=> (not res!1674412) (not e!2541836))))

(declare-fun lt!1465071 () Option!9515)

(assert (=> b!4096013 (= res!1674412 (= (++!11515 (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465071)))) (_2!24559 (get!14408 lt!1465071))) input!3411))))

(declare-fun d!1216126 () Bool)

(declare-fun e!2541834 () Bool)

(assert (=> d!1216126 e!2541834))

(declare-fun res!1674413 () Bool)

(assert (=> d!1216126 (=> res!1674413 e!2541834)))

(assert (=> d!1216126 (= res!1674413 (isEmpty!26282 lt!1465071))))

(declare-fun e!2541835 () Option!9515)

(assert (=> d!1216126 (= lt!1465071 e!2541835)))

(declare-fun c!705843 () Bool)

(assert (=> d!1216126 (= c!705843 (and (is-Cons!43922 rules!3870) (is-Nil!43922 (t!339237 rules!3870))))))

(declare-fun lt!1465070 () Unit!63454)

(declare-fun lt!1465074 () Unit!63454)

(assert (=> d!1216126 (= lt!1465070 lt!1465074)))

(assert (=> d!1216126 (isPrefix!4151 input!3411 input!3411)))

(assert (=> d!1216126 (= lt!1465074 (lemmaIsPrefixRefl!2702 input!3411 input!3411))))

(assert (=> d!1216126 (rulesValidInductive!2633 thiss!26199 rules!3870)))

(assert (=> d!1216126 (= (maxPrefix!3988 thiss!26199 rules!3870 input!3411) lt!1465071)))

(declare-fun b!4096014 () Bool)

(assert (=> b!4096014 (= e!2541835 call!289489)))

(declare-fun b!4096015 () Bool)

(declare-fun lt!1465073 () Option!9515)

(declare-fun lt!1465072 () Option!9515)

(assert (=> b!4096015 (= e!2541835 (ite (and (is-None!9514 lt!1465073) (is-None!9514 lt!1465072)) None!9514 (ite (is-None!9514 lt!1465072) lt!1465073 (ite (is-None!9514 lt!1465073) lt!1465072 (ite (>= (size!32812 (_1!24559 (v!40012 lt!1465073))) (size!32812 (_1!24559 (v!40012 lt!1465072)))) lt!1465073 lt!1465072)))))))

(assert (=> b!4096015 (= lt!1465073 call!289489)))

(assert (=> b!4096015 (= lt!1465072 (maxPrefix!3988 thiss!26199 (t!339237 rules!3870) input!3411))))

(declare-fun b!4096016 () Bool)

(declare-fun res!1674409 () Bool)

(assert (=> b!4096016 (=> (not res!1674409) (not e!2541836))))

(assert (=> b!4096016 (= res!1674409 (matchR!5955 (regex!7109 (rule!10261 (_1!24559 (get!14408 lt!1465071)))) (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465071))))))))

(declare-fun b!4096017 () Bool)

(declare-fun res!1674411 () Bool)

(assert (=> b!4096017 (=> (not res!1674411) (not e!2541836))))

(assert (=> b!4096017 (= res!1674411 (= (list!16299 (charsOf!4865 (_1!24559 (get!14408 lt!1465071)))) (originalCharacters!7703 (_1!24559 (get!14408 lt!1465071)))))))

(declare-fun b!4096018 () Bool)

(assert (=> b!4096018 (= e!2541836 (contains!8794 rules!3870 (rule!10261 (_1!24559 (get!14408 lt!1465071)))))))

(declare-fun b!4096019 () Bool)

(assert (=> b!4096019 (= e!2541834 e!2541836)))

(declare-fun res!1674415 () Bool)

(assert (=> b!4096019 (=> (not res!1674415) (not e!2541836))))

(assert (=> b!4096019 (= res!1674415 (isDefined!7200 lt!1465071))))

(declare-fun b!4096020 () Bool)

(declare-fun res!1674410 () Bool)

(assert (=> b!4096020 (=> (not res!1674410) (not e!2541836))))

(assert (=> b!4096020 (= res!1674410 (= (value!223260 (_1!24559 (get!14408 lt!1465071))) (apply!10292 (transformation!7109 (rule!10261 (_1!24559 (get!14408 lt!1465071)))) (seqFromList!5326 (originalCharacters!7703 (_1!24559 (get!14408 lt!1465071)))))))))

(declare-fun b!4096021 () Bool)

(declare-fun res!1674414 () Bool)

(assert (=> b!4096021 (=> (not res!1674414) (not e!2541836))))

(assert (=> b!4096021 (= res!1674414 (< (size!32813 (_2!24559 (get!14408 lt!1465071))) (size!32813 input!3411)))))

(assert (= (and d!1216126 c!705843) b!4096014))

(assert (= (and d!1216126 (not c!705843)) b!4096015))

(assert (= (or b!4096014 b!4096015) bm!289484))

(assert (= (and d!1216126 (not res!1674413)) b!4096019))

(assert (= (and b!4096019 res!1674415) b!4096017))

(assert (= (and b!4096017 res!1674411) b!4096021))

(assert (= (and b!4096021 res!1674414) b!4096013))

(assert (= (and b!4096013 res!1674412) b!4096020))

(assert (= (and b!4096020 res!1674410) b!4096016))

(assert (= (and b!4096016 res!1674409) b!4096018))

(assert (=> bm!289484 m!4702691))

(assert (=> b!4096015 m!4702665))

(declare-fun m!4702913 () Bool)

(assert (=> d!1216126 m!4702913))

(assert (=> d!1216126 m!4702853))

(assert (=> d!1216126 m!4702855))

(declare-fun m!4702915 () Bool)

(assert (=> d!1216126 m!4702915))

(declare-fun m!4702917 () Bool)

(assert (=> b!4096016 m!4702917))

(declare-fun m!4702919 () Bool)

(assert (=> b!4096016 m!4702919))

(assert (=> b!4096016 m!4702919))

(declare-fun m!4702921 () Bool)

(assert (=> b!4096016 m!4702921))

(assert (=> b!4096016 m!4702921))

(declare-fun m!4702923 () Bool)

(assert (=> b!4096016 m!4702923))

(assert (=> b!4096017 m!4702917))

(assert (=> b!4096017 m!4702919))

(assert (=> b!4096017 m!4702919))

(assert (=> b!4096017 m!4702921))

(assert (=> b!4096013 m!4702917))

(assert (=> b!4096013 m!4702919))

(assert (=> b!4096013 m!4702919))

(assert (=> b!4096013 m!4702921))

(assert (=> b!4096013 m!4702921))

(declare-fun m!4702925 () Bool)

(assert (=> b!4096013 m!4702925))

(assert (=> b!4096021 m!4702917))

(declare-fun m!4702927 () Bool)

(assert (=> b!4096021 m!4702927))

(assert (=> b!4096021 m!4702797))

(declare-fun m!4702929 () Bool)

(assert (=> b!4096019 m!4702929))

(assert (=> b!4096018 m!4702917))

(declare-fun m!4702931 () Bool)

(assert (=> b!4096018 m!4702931))

(assert (=> b!4096020 m!4702917))

(declare-fun m!4702933 () Bool)

(assert (=> b!4096020 m!4702933))

(assert (=> b!4096020 m!4702933))

(declare-fun m!4702935 () Bool)

(assert (=> b!4096020 m!4702935))

(assert (=> b!4095808 d!1216126))

(declare-fun d!1216128 () Bool)

(declare-fun lt!1465077 () Int)

(assert (=> d!1216128 (>= lt!1465077 0)))

(declare-fun e!2541839 () Int)

(assert (=> d!1216128 (= lt!1465077 e!2541839)))

(declare-fun c!705846 () Bool)

(assert (=> d!1216128 (= c!705846 (is-Nil!43921 p!2988))))

(assert (=> d!1216128 (= (size!32813 p!2988) lt!1465077)))

(declare-fun b!4096026 () Bool)

(assert (=> b!4096026 (= e!2541839 0)))

(declare-fun b!4096027 () Bool)

(assert (=> b!4096027 (= e!2541839 (+ 1 (size!32813 (t!339236 p!2988))))))

(assert (= (and d!1216128 c!705846) b!4096026))

(assert (= (and d!1216128 (not c!705846)) b!4096027))

(declare-fun m!4702937 () Bool)

(assert (=> b!4096027 m!4702937))

(assert (=> b!4095808 d!1216128))

(declare-fun d!1216130 () Bool)

(declare-fun fromListB!2444 (List!44045) BalanceConc!26234)

(assert (=> d!1216130 (= (seqFromList!5326 p!2988) (fromListB!2444 p!2988))))

(declare-fun bs!593558 () Bool)

(assert (= bs!593558 d!1216130))

(declare-fun m!4702939 () Bool)

(assert (=> bs!593558 m!4702939))

(assert (=> b!4095808 d!1216130))

(declare-fun d!1216132 () Bool)

(declare-fun dynLambda!18828 (Int BalanceConc!26234) TokenValue!7339)

(assert (=> d!1216132 (= (apply!10292 (transformation!7109 r!4213) lt!1464992) (dynLambda!18828 (toValue!9709 (transformation!7109 r!4213)) lt!1464992))))

(declare-fun b_lambda!120239 () Bool)

(assert (=> (not b_lambda!120239) (not d!1216132)))

(declare-fun t!339242 () Bool)

(declare-fun tb!246417 () Bool)

(assert (=> (and b!4095814 (= (toValue!9709 (transformation!7109 r!4213)) (toValue!9709 (transformation!7109 r!4213))) t!339242) tb!246417))

(declare-fun result!299018 () Bool)

(declare-fun inv!21 (TokenValue!7339) Bool)

(assert (=> tb!246417 (= result!299018 (inv!21 (dynLambda!18828 (toValue!9709 (transformation!7109 r!4213)) lt!1464992)))))

(declare-fun m!4702941 () Bool)

(assert (=> tb!246417 m!4702941))

(assert (=> d!1216132 t!339242))

(declare-fun b_and!315947 () Bool)

(assert (= b_and!315931 (and (=> t!339242 result!299018) b_and!315947)))

(declare-fun t!339244 () Bool)

(declare-fun tb!246419 () Bool)

(assert (=> (and b!4095813 (= (toValue!9709 (transformation!7109 (h!49342 rules!3870))) (toValue!9709 (transformation!7109 r!4213))) t!339244) tb!246419))

(declare-fun result!299022 () Bool)

(assert (= result!299022 result!299018))

(assert (=> d!1216132 t!339244))

(declare-fun b_and!315949 () Bool)

(assert (= b_and!315935 (and (=> t!339244 result!299022) b_and!315949)))

(declare-fun m!4702943 () Bool)

(assert (=> d!1216132 m!4702943))

(assert (=> b!4095808 d!1216132))

(declare-fun b!4096099 () Bool)

(declare-fun e!2541875 () Bool)

(assert (=> b!4096099 (= e!2541875 true)))

(declare-fun d!1216134 () Bool)

(assert (=> d!1216134 e!2541875))

(assert (= d!1216134 b!4096099))

(declare-fun order!23145 () Int)

(declare-fun order!23143 () Int)

(declare-fun lambda!128128 () Int)

(declare-fun dynLambda!18829 (Int Int) Int)

(declare-fun dynLambda!18830 (Int Int) Int)

(assert (=> b!4096099 (< (dynLambda!18829 order!23143 (toValue!9709 (transformation!7109 r!4213))) (dynLambda!18830 order!23145 lambda!128128))))

(declare-fun order!23147 () Int)

(declare-fun dynLambda!18831 (Int Int) Int)

(assert (=> b!4096099 (< (dynLambda!18831 order!23147 (toChars!9568 (transformation!7109 r!4213))) (dynLambda!18830 order!23145 lambda!128128))))

(declare-fun dynLambda!18832 (Int TokenValue!7339) BalanceConc!26234)

(assert (=> d!1216134 (= (list!16299 (dynLambda!18832 (toChars!9568 (transformation!7109 r!4213)) (dynLambda!18828 (toValue!9709 (transformation!7109 r!4213)) lt!1464992))) (list!16299 lt!1464992))))

(declare-fun lt!1465118 () Unit!63454)

(declare-fun ForallOf!897 (Int BalanceConc!26234) Unit!63454)

(assert (=> d!1216134 (= lt!1465118 (ForallOf!897 lambda!128128 lt!1464992))))

(assert (=> d!1216134 (= (lemmaSemiInverse!2076 (transformation!7109 r!4213) lt!1464992) lt!1465118)))

(declare-fun b_lambda!120243 () Bool)

(assert (=> (not b_lambda!120243) (not d!1216134)))

(declare-fun t!339250 () Bool)

(declare-fun tb!246425 () Bool)

(assert (=> (and b!4095814 (= (toChars!9568 (transformation!7109 r!4213)) (toChars!9568 (transformation!7109 r!4213))) t!339250) tb!246425))

(declare-fun tp!1239787 () Bool)

(declare-fun b!4096104 () Bool)

(declare-fun e!2541878 () Bool)

(declare-fun inv!58651 (Conc!13320) Bool)

(assert (=> b!4096104 (= e!2541878 (and (inv!58651 (c!705820 (dynLambda!18832 (toChars!9568 (transformation!7109 r!4213)) (dynLambda!18828 (toValue!9709 (transformation!7109 r!4213)) lt!1464992)))) tp!1239787))))

(declare-fun result!299030 () Bool)

(declare-fun inv!58652 (BalanceConc!26234) Bool)

(assert (=> tb!246425 (= result!299030 (and (inv!58652 (dynLambda!18832 (toChars!9568 (transformation!7109 r!4213)) (dynLambda!18828 (toValue!9709 (transformation!7109 r!4213)) lt!1464992))) e!2541878))))

(assert (= tb!246425 b!4096104))

(declare-fun m!4703035 () Bool)

(assert (=> b!4096104 m!4703035))

(declare-fun m!4703037 () Bool)

(assert (=> tb!246425 m!4703037))

(assert (=> d!1216134 t!339250))

(declare-fun b_and!315955 () Bool)

(assert (= b_and!315933 (and (=> t!339250 result!299030) b_and!315955)))

(declare-fun tb!246427 () Bool)

(declare-fun t!339252 () Bool)

(assert (=> (and b!4095813 (= (toChars!9568 (transformation!7109 (h!49342 rules!3870))) (toChars!9568 (transformation!7109 r!4213))) t!339252) tb!246427))

(declare-fun result!299034 () Bool)

(assert (= result!299034 result!299030))

(assert (=> d!1216134 t!339252))

(declare-fun b_and!315957 () Bool)

(assert (= b_and!315937 (and (=> t!339252 result!299034) b_and!315957)))

(declare-fun b_lambda!120245 () Bool)

(assert (=> (not b_lambda!120245) (not d!1216134)))

(assert (=> d!1216134 t!339242))

(declare-fun b_and!315959 () Bool)

(assert (= b_and!315947 (and (=> t!339242 result!299018) b_and!315959)))

(assert (=> d!1216134 t!339244))

(declare-fun b_and!315961 () Bool)

(assert (= b_and!315949 (and (=> t!339244 result!299022) b_and!315961)))

(assert (=> d!1216134 m!4702943))

(declare-fun m!4703039 () Bool)

(assert (=> d!1216134 m!4703039))

(declare-fun m!4703041 () Bool)

(assert (=> d!1216134 m!4703041))

(declare-fun m!4703043 () Bool)

(assert (=> d!1216134 m!4703043))

(assert (=> d!1216134 m!4702943))

(assert (=> d!1216134 m!4703039))

(declare-fun m!4703045 () Bool)

(assert (=> d!1216134 m!4703045))

(assert (=> b!4095808 d!1216134))

(declare-fun d!1216150 () Bool)

(declare-fun e!2541884 () Bool)

(assert (=> d!1216150 e!2541884))

(declare-fun res!1674466 () Bool)

(assert (=> d!1216150 (=> (not res!1674466) (not e!2541884))))

(declare-fun lt!1465121 () List!44045)

(declare-fun content!6780 (List!44045) (Set C!24214))

(assert (=> d!1216150 (= res!1674466 (= (content!6780 lt!1465121) (set.union (content!6780 p!2988) (content!6780 suffix!1518))))))

(declare-fun e!2541883 () List!44045)

(assert (=> d!1216150 (= lt!1465121 e!2541883)))

(declare-fun c!705860 () Bool)

(assert (=> d!1216150 (= c!705860 (is-Nil!43921 p!2988))))

(assert (=> d!1216150 (= (++!11515 p!2988 suffix!1518) lt!1465121)))

(declare-fun b!4096115 () Bool)

(declare-fun res!1674465 () Bool)

(assert (=> b!4096115 (=> (not res!1674465) (not e!2541884))))

(assert (=> b!4096115 (= res!1674465 (= (size!32813 lt!1465121) (+ (size!32813 p!2988) (size!32813 suffix!1518))))))

(declare-fun b!4096113 () Bool)

(assert (=> b!4096113 (= e!2541883 suffix!1518)))

(declare-fun b!4096114 () Bool)

(assert (=> b!4096114 (= e!2541883 (Cons!43921 (h!49341 p!2988) (++!11515 (t!339236 p!2988) suffix!1518)))))

(declare-fun b!4096116 () Bool)

(assert (=> b!4096116 (= e!2541884 (or (not (= suffix!1518 Nil!43921)) (= lt!1465121 p!2988)))))

(assert (= (and d!1216150 c!705860) b!4096113))

(assert (= (and d!1216150 (not c!705860)) b!4096114))

(assert (= (and d!1216150 res!1674466) b!4096115))

(assert (= (and b!4096115 res!1674465) b!4096116))

(declare-fun m!4703047 () Bool)

(assert (=> d!1216150 m!4703047))

(declare-fun m!4703049 () Bool)

(assert (=> d!1216150 m!4703049))

(declare-fun m!4703051 () Bool)

(assert (=> d!1216150 m!4703051))

(declare-fun m!4703053 () Bool)

(assert (=> b!4096115 m!4703053))

(assert (=> b!4096115 m!4702677))

(declare-fun m!4703055 () Bool)

(assert (=> b!4096115 m!4703055))

(declare-fun m!4703057 () Bool)

(assert (=> b!4096114 m!4703057))

(assert (=> b!4095797 d!1216150))

(declare-fun b!4096129 () Bool)

(declare-fun e!2541887 () Bool)

(declare-fun tp!1239799 () Bool)

(assert (=> b!4096129 (= e!2541887 tp!1239799)))

(declare-fun b!4096128 () Bool)

(declare-fun tp!1239801 () Bool)

(declare-fun tp!1239802 () Bool)

(assert (=> b!4096128 (= e!2541887 (and tp!1239801 tp!1239802))))

(declare-fun b!4096127 () Bool)

(assert (=> b!4096127 (= e!2541887 tp_is_empty!21031)))

(assert (=> b!4095807 (= tp!1239754 e!2541887)))

(declare-fun b!4096130 () Bool)

(declare-fun tp!1239800 () Bool)

(declare-fun tp!1239798 () Bool)

(assert (=> b!4096130 (= e!2541887 (and tp!1239800 tp!1239798))))

(assert (= (and b!4095807 (is-ElementMatch!12014 (regex!7109 r!4213))) b!4096127))

(assert (= (and b!4095807 (is-Concat!19354 (regex!7109 r!4213))) b!4096128))

(assert (= (and b!4095807 (is-Star!12014 (regex!7109 r!4213))) b!4096129))

(assert (= (and b!4095807 (is-Union!12014 (regex!7109 r!4213))) b!4096130))

(declare-fun b!4096133 () Bool)

(declare-fun e!2541888 () Bool)

(declare-fun tp!1239804 () Bool)

(assert (=> b!4096133 (= e!2541888 tp!1239804)))

(declare-fun b!4096132 () Bool)

(declare-fun tp!1239806 () Bool)

(declare-fun tp!1239807 () Bool)

(assert (=> b!4096132 (= e!2541888 (and tp!1239806 tp!1239807))))

(declare-fun b!4096131 () Bool)

(assert (=> b!4096131 (= e!2541888 tp_is_empty!21031)))

(assert (=> b!4095812 (= tp!1239753 e!2541888)))

(declare-fun b!4096134 () Bool)

(declare-fun tp!1239805 () Bool)

(declare-fun tp!1239803 () Bool)

(assert (=> b!4096134 (= e!2541888 (and tp!1239805 tp!1239803))))

(assert (= (and b!4095812 (is-ElementMatch!12014 (regex!7109 (h!49342 rules!3870)))) b!4096131))

(assert (= (and b!4095812 (is-Concat!19354 (regex!7109 (h!49342 rules!3870)))) b!4096132))

(assert (= (and b!4095812 (is-Star!12014 (regex!7109 (h!49342 rules!3870)))) b!4096133))

(assert (= (and b!4095812 (is-Union!12014 (regex!7109 (h!49342 rules!3870)))) b!4096134))

(declare-fun b!4096139 () Bool)

(declare-fun e!2541891 () Bool)

(declare-fun tp!1239810 () Bool)

(assert (=> b!4096139 (= e!2541891 (and tp_is_empty!21031 tp!1239810))))

(assert (=> b!4095800 (= tp!1239752 e!2541891)))

(assert (= (and b!4095800 (is-Cons!43921 (t!339236 suffix!1518))) b!4096139))

(declare-fun b!4096140 () Bool)

(declare-fun e!2541892 () Bool)

(declare-fun tp!1239811 () Bool)

(assert (=> b!4096140 (= e!2541892 (and tp_is_empty!21031 tp!1239811))))

(assert (=> b!4095805 (= tp!1239745 e!2541892)))

(assert (= (and b!4095805 (is-Cons!43921 (t!339236 input!3411))) b!4096140))

(declare-fun b!4096151 () Bool)

(declare-fun b_free!114561 () Bool)

(declare-fun b_next!115265 () Bool)

(assert (=> b!4096151 (= b_free!114561 (not b_next!115265))))

(declare-fun tb!246429 () Bool)

(declare-fun t!339254 () Bool)

(assert (=> (and b!4096151 (= (toValue!9709 (transformation!7109 (h!49342 (t!339237 rules!3870)))) (toValue!9709 (transformation!7109 r!4213))) t!339254) tb!246429))

(declare-fun result!299042 () Bool)

(assert (= result!299042 result!299018))

(assert (=> d!1216132 t!339254))

(assert (=> d!1216134 t!339254))

(declare-fun tp!1239823 () Bool)

(declare-fun b_and!315963 () Bool)

(assert (=> b!4096151 (= tp!1239823 (and (=> t!339254 result!299042) b_and!315963))))

(declare-fun b_free!114563 () Bool)

(declare-fun b_next!115267 () Bool)

(assert (=> b!4096151 (= b_free!114563 (not b_next!115267))))

(declare-fun tb!246431 () Bool)

(declare-fun t!339256 () Bool)

(assert (=> (and b!4096151 (= (toChars!9568 (transformation!7109 (h!49342 (t!339237 rules!3870)))) (toChars!9568 (transformation!7109 r!4213))) t!339256) tb!246431))

(declare-fun result!299044 () Bool)

(assert (= result!299044 result!299030))

(assert (=> d!1216134 t!339256))

(declare-fun b_and!315965 () Bool)

(declare-fun tp!1239822 () Bool)

(assert (=> b!4096151 (= tp!1239822 (and (=> t!339256 result!299044) b_and!315965))))

(declare-fun e!2541904 () Bool)

(assert (=> b!4096151 (= e!2541904 (and tp!1239823 tp!1239822))))

(declare-fun tp!1239820 () Bool)

(declare-fun e!2541902 () Bool)

(declare-fun b!4096150 () Bool)

(assert (=> b!4096150 (= e!2541902 (and tp!1239820 (inv!58646 (tag!7969 (h!49342 (t!339237 rules!3870)))) (inv!58649 (transformation!7109 (h!49342 (t!339237 rules!3870)))) e!2541904))))

(declare-fun b!4096149 () Bool)

(declare-fun e!2541901 () Bool)

(declare-fun tp!1239821 () Bool)

(assert (=> b!4096149 (= e!2541901 (and e!2541902 tp!1239821))))

(assert (=> b!4095799 (= tp!1239749 e!2541901)))

(assert (= b!4096150 b!4096151))

(assert (= b!4096149 b!4096150))

(assert (= (and b!4095799 (is-Cons!43922 (t!339237 rules!3870))) b!4096149))

(declare-fun m!4703059 () Bool)

(assert (=> b!4096150 m!4703059))

(declare-fun m!4703061 () Bool)

(assert (=> b!4096150 m!4703061))

(declare-fun b!4096152 () Bool)

(declare-fun e!2541905 () Bool)

(declare-fun tp!1239824 () Bool)

(assert (=> b!4096152 (= e!2541905 (and tp_is_empty!21031 tp!1239824))))

(assert (=> b!4095804 (= tp!1239746 e!2541905)))

(assert (= (and b!4095804 (is-Cons!43921 (t!339236 p!2988))) b!4096152))

(declare-fun b_lambda!120247 () Bool)

(assert (= b_lambda!120239 (or (and b!4095814 b_free!114545) (and b!4095813 b_free!114549 (= (toValue!9709 (transformation!7109 (h!49342 rules!3870))) (toValue!9709 (transformation!7109 r!4213)))) (and b!4096151 b_free!114561 (= (toValue!9709 (transformation!7109 (h!49342 (t!339237 rules!3870)))) (toValue!9709 (transformation!7109 r!4213)))) b_lambda!120247)))

(declare-fun b_lambda!120249 () Bool)

(assert (= b_lambda!120243 (or (and b!4095814 b_free!114547) (and b!4095813 b_free!114551 (= (toChars!9568 (transformation!7109 (h!49342 rules!3870))) (toChars!9568 (transformation!7109 r!4213)))) (and b!4096151 b_free!114563 (= (toChars!9568 (transformation!7109 (h!49342 (t!339237 rules!3870)))) (toChars!9568 (transformation!7109 r!4213)))) b_lambda!120249)))

(declare-fun b_lambda!120251 () Bool)

(assert (= b_lambda!120245 (or (and b!4095814 b_free!114545) (and b!4095813 b_free!114549 (= (toValue!9709 (transformation!7109 (h!49342 rules!3870))) (toValue!9709 (transformation!7109 r!4213)))) (and b!4096151 b_free!114561 (= (toValue!9709 (transformation!7109 (h!49342 (t!339237 rules!3870)))) (toValue!9709 (transformation!7109 r!4213)))) b_lambda!120251)))

(push 1)

(assert b_and!315957)

(assert (not b!4096027))

(assert (not b!4096129))

(assert (not b!4095920))

(assert (not b!4095885))

(assert b_and!315963)

(assert (not b!4096114))

(assert (not b_lambda!120249))

(assert (not d!1216098))

(assert (not b!4096017))

(assert (not b!4095984))

(assert (not b!4096010))

(assert (not tb!246417))

(assert (not bm!289483))

(assert (not b_next!115251))

(assert (not b!4096020))

(assert (not b!4095948))

(assert (not b!4096016))

(assert (not b!4095914))

(assert (not b!4095946))

(assert (not b!4095995))

(assert b_and!315965)

(assert (not b_next!115265))

(assert (not d!1216068))

(assert (not b!4096015))

(assert (not b!4096001))

(assert (not b!4095921))

(assert (not b!4096019))

(assert (not b_next!115249))

(assert (not b!4096149))

(assert (not bm!289484))

(assert (not b!4096128))

(assert (not d!1216100))

(assert (not b_lambda!120247))

(assert (not b!4096004))

(assert (not d!1216126))

(assert (not b!4095925))

(assert (not b!4095922))

(assert b_and!315955)

(assert (not b!4095950))

(assert tp_is_empty!21031)

(assert (not b!4095917))

(assert (not d!1216134))

(assert (not b!4096133))

(assert (not b_lambda!120251))

(assert (not b!4095954))

(assert (not b!4095952))

(assert (not b!4096104))

(assert (not b!4095918))

(assert (not b!4096013))

(assert (not b!4095949))

(assert (not d!1216108))

(assert (not d!1216114))

(assert (not d!1216122))

(assert (not d!1216112))

(assert (not d!1216130))

(assert (not tb!246425))

(assert (not b!4095891))

(assert (not d!1216116))

(assert b_and!315961)

(assert (not b!4096012))

(assert (not b!4095916))

(assert (not b!4095947))

(assert (not b_next!115253))

(assert (not b!4095983))

(assert (not b!4096139))

(assert (not b!4096150))

(assert (not b!4096018))

(assert (not bm!289480))

(assert (not b!4096152))

(assert (not b!4096115))

(assert (not d!1216094))

(assert (not b!4095951))

(assert (not b!4096134))

(assert (not d!1216110))

(assert (not b!4095988))

(assert (not d!1216074))

(assert (not b_next!115267))

(assert (not d!1216092))

(assert (not b_next!115255))

(assert (not b!4095989))

(assert (not b!4096021))

(assert b_and!315959)

(assert (not b!4095915))

(assert (not d!1216070))

(assert (not b!4096132))

(assert (not b!4095994))

(assert (not d!1216150))

(assert (not b!4096130))

(assert (not b!4095944))

(assert (not b!4095953))

(assert (not b!4096140))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!115251))

(assert b_and!315957)

(assert (not b_next!115249))

(assert b_and!315955)

(assert b_and!315961)

(assert (not b_next!115253))

(assert (not b_next!115267))

(assert (not b_next!115255))

(assert b_and!315959)

(assert b_and!315963)

(assert b_and!315965)

(assert (not b_next!115265))

(check-sat)

(pop 1)

