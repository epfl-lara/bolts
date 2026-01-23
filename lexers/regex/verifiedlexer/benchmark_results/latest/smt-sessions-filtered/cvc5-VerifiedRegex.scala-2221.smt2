; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108916 () Bool)

(assert start!108916)

(declare-fun b!1217856 () Bool)

(declare-fun b_free!29377 () Bool)

(declare-fun b_next!30081 () Bool)

(assert (=> b!1217856 (= b_free!29377 (not b_next!30081))))

(declare-fun tp!346092 () Bool)

(declare-fun b_and!82825 () Bool)

(assert (=> b!1217856 (= tp!346092 b_and!82825)))

(declare-fun b_free!29379 () Bool)

(declare-fun b_next!30083 () Bool)

(assert (=> b!1217856 (= b_free!29379 (not b_next!30083))))

(declare-fun tp!346095 () Bool)

(declare-fun b_and!82827 () Bool)

(assert (=> b!1217856 (= tp!346095 b_and!82827)))

(declare-fun b!1217868 () Bool)

(declare-fun b_free!29381 () Bool)

(declare-fun b_next!30085 () Bool)

(assert (=> b!1217868 (= b_free!29381 (not b_next!30085))))

(declare-fun tp!346094 () Bool)

(declare-fun b_and!82829 () Bool)

(assert (=> b!1217868 (= tp!346094 b_and!82829)))

(declare-fun b_free!29383 () Bool)

(declare-fun b_next!30087 () Bool)

(assert (=> b!1217868 (= b_free!29383 (not b_next!30087))))

(declare-fun tp!346090 () Bool)

(declare-fun b_and!82831 () Bool)

(assert (=> b!1217868 (= tp!346090 b_and!82831)))

(declare-fun res!547453 () Bool)

(declare-fun e!781761 () Bool)

(assert (=> start!108916 (=> (not res!547453) (not e!781761))))

(declare-datatypes ((LexerInterface!1841 0))(
  ( (LexerInterfaceExt!1838 (__x!8143 Int)) (Lexer!1839) )
))
(declare-fun thiss!20528 () LexerInterface!1841)

(assert (=> start!108916 (= res!547453 (is-Lexer!1839 thiss!20528))))

(assert (=> start!108916 e!781761))

(assert (=> start!108916 true))

(declare-fun e!781757 () Bool)

(assert (=> start!108916 e!781757))

(declare-fun e!781750 () Bool)

(assert (=> start!108916 e!781750))

(declare-fun e!781758 () Bool)

(assert (=> start!108916 e!781758))

(declare-fun e!781752 () Bool)

(assert (=> b!1217856 (= e!781752 (and tp!346092 tp!346095))))

(declare-fun b!1217857 () Bool)

(declare-fun res!547447 () Bool)

(declare-fun e!781751 () Bool)

(assert (=> b!1217857 (=> (not res!547447) (not e!781751))))

(declare-datatypes ((C!7150 0))(
  ( (C!7151 (val!4105 Int)) )
))
(declare-datatypes ((List!12514 0))(
  ( (Nil!12456) (Cons!12456 (h!17857 C!7150) (t!113336 List!12514)) )
))
(declare-fun lt!416039 () List!12514)

(declare-fun input!2346 () List!12514)

(declare-datatypes ((List!12515 0))(
  ( (Nil!12457) (Cons!12457 (h!17858 (_ BitVec 16)) (t!113337 List!12515)) )
))
(declare-datatypes ((TokenValue!2214 0))(
  ( (FloatLiteralValue!4428 (text!15943 List!12515)) (TokenValueExt!2213 (__x!8144 Int)) (Broken!11070 (value!69733 List!12515)) (Object!2271) (End!2214) (Def!2214) (Underscore!2214) (Match!2214) (Else!2214) (Error!2214) (Case!2214) (If!2214) (Extends!2214) (Abstract!2214) (Class!2214) (Val!2214) (DelimiterValue!4428 (del!2274 List!12515)) (KeywordValue!2220 (value!69734 List!12515)) (CommentValue!4428 (value!69735 List!12515)) (WhitespaceValue!4428 (value!69736 List!12515)) (IndentationValue!2214 (value!69737 List!12515)) (String!15203) (Int32!2214) (Broken!11071 (value!69738 List!12515)) (Boolean!2215) (Unit!18716) (OperatorValue!2217 (op!2274 List!12515)) (IdentifierValue!4428 (value!69739 List!12515)) (IdentifierValue!4429 (value!69740 List!12515)) (WhitespaceValue!4429 (value!69741 List!12515)) (True!4428) (False!4428) (Broken!11072 (value!69742 List!12515)) (Broken!11073 (value!69743 List!12515)) (True!4429) (RightBrace!2214) (RightBracket!2214) (Colon!2214) (Null!2214) (Comma!2214) (LeftBracket!2214) (False!4429) (LeftBrace!2214) (ImaginaryLiteralValue!2214 (text!15944 List!12515)) (StringLiteralValue!6642 (value!69744 List!12515)) (EOFValue!2214 (value!69745 List!12515)) (IdentValue!2214 (value!69746 List!12515)) (DelimiterValue!4429 (value!69747 List!12515)) (DedentValue!2214 (value!69748 List!12515)) (NewLineValue!2214 (value!69749 List!12515)) (IntegerValue!6642 (value!69750 (_ BitVec 32)) (text!15945 List!12515)) (IntegerValue!6643 (value!69751 Int) (text!15946 List!12515)) (Times!2214) (Or!2214) (Equal!2214) (Minus!2214) (Broken!11074 (value!69752 List!12515)) (And!2214) (Div!2214) (LessEqual!2214) (Mod!2214) (Concat!5630) (Not!2214) (Plus!2214) (SpaceValue!2214 (value!69753 List!12515)) (IntegerValue!6644 (value!69754 Int) (text!15947 List!12515)) (StringLiteralValue!6643 (text!15948 List!12515)) (FloatLiteralValue!4429 (text!15949 List!12515)) (BytesLiteralValue!2214 (value!69755 List!12515)) (CommentValue!4429 (value!69756 List!12515)) (StringLiteralValue!6644 (value!69757 List!12515)) (ErrorTokenValue!2214 (msg!2275 List!12515)) )
))
(declare-datatypes ((IArray!8155 0))(
  ( (IArray!8156 (innerList!4135 List!12514)) )
))
(declare-datatypes ((Conc!4075 0))(
  ( (Node!4075 (left!10740 Conc!4075) (right!11070 Conc!4075) (csize!8380 Int) (cheight!4286 Int)) (Leaf!6297 (xs!6786 IArray!8155) (csize!8381 Int)) (Empty!4075) )
))
(declare-datatypes ((BalanceConc!8082 0))(
  ( (BalanceConc!8083 (c!203617 Conc!4075)) )
))
(declare-datatypes ((Regex!3416 0))(
  ( (ElementMatch!3416 (c!203618 C!7150)) (Concat!5631 (regOne!7344 Regex!3416) (regTwo!7344 Regex!3416)) (EmptyExpr!3416) (Star!3416 (reg!3745 Regex!3416)) (EmptyLang!3416) (Union!3416 (regOne!7345 Regex!3416) (regTwo!7345 Regex!3416)) )
))
(declare-datatypes ((String!15204 0))(
  ( (String!15205 (value!69758 String)) )
))
(declare-datatypes ((TokenValueInjection!4124 0))(
  ( (TokenValueInjection!4125 (toValue!3279 Int) (toChars!3138 Int)) )
))
(declare-datatypes ((Rule!4092 0))(
  ( (Rule!4093 (regex!2146 Regex!3416) (tag!2408 String!15204) (isSeparator!2146 Bool) (transformation!2146 TokenValueInjection!4124)) )
))
(declare-datatypes ((Token!3954 0))(
  ( (Token!3955 (value!69759 TokenValue!2214) (rule!3571 Rule!4092) (size!9840 Int) (originalCharacters!2700 List!12514)) )
))
(declare-datatypes ((tuple2!12318 0))(
  ( (tuple2!12319 (_1!7006 Token!3954) (_2!7006 List!12514)) )
))
(declare-fun lt!416035 () tuple2!12318)

(declare-fun ++!3180 (List!12514 List!12514) List!12514)

(assert (=> b!1217857 (= res!547447 (= (++!3180 lt!416039 (_2!7006 lt!416035)) input!2346))))

(declare-fun b!1217858 () Bool)

(declare-fun res!547456 () Bool)

(assert (=> b!1217858 (=> (not res!547456) (not e!781761))))

(declare-datatypes ((List!12516 0))(
  ( (Nil!12458) (Cons!12458 (h!17859 Token!3954) (t!113338 List!12516)) )
))
(declare-fun tokens!556 () List!12516)

(declare-datatypes ((List!12517 0))(
  ( (Nil!12459) (Cons!12459 (h!17860 Rule!4092) (t!113339 List!12517)) )
))
(declare-fun rules!2728 () List!12517)

(declare-datatypes ((tuple2!12320 0))(
  ( (tuple2!12321 (_1!7007 List!12516) (_2!7007 List!12514)) )
))
(declare-fun lexList!471 (LexerInterface!1841 List!12517 List!12514) tuple2!12320)

(assert (=> b!1217858 (= res!547456 (= (_1!7007 (lexList!471 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1217859 () Bool)

(declare-fun res!547448 () Bool)

(assert (=> b!1217859 (=> (not res!547448) (not e!781761))))

(declare-fun isEmpty!7407 (List!12517) Bool)

(assert (=> b!1217859 (= res!547448 (not (isEmpty!7407 rules!2728)))))

(declare-fun e!781749 () Bool)

(declare-fun e!781756 () Bool)

(declare-fun b!1217860 () Bool)

(declare-fun tp!346087 () Bool)

(declare-fun inv!16654 (String!15204) Bool)

(declare-fun inv!16657 (TokenValueInjection!4124) Bool)

(assert (=> b!1217860 (= e!781756 (and tp!346087 (inv!16654 (tag!2408 (h!17860 rules!2728))) (inv!16657 (transformation!2146 (h!17860 rules!2728))) e!781749))))

(declare-fun b!1217861 () Bool)

(declare-fun e!781748 () Bool)

(declare-fun e!781755 () Bool)

(assert (=> b!1217861 (= e!781748 e!781755)))

(declare-fun res!547452 () Bool)

(assert (=> b!1217861 (=> (not res!547452) (not e!781755))))

(assert (=> b!1217861 (= res!547452 (= (_1!7006 lt!416035) (h!17859 tokens!556)))))

(declare-datatypes ((Option!2508 0))(
  ( (None!2507) (Some!2507 (v!20638 tuple2!12318)) )
))
(declare-fun lt!416040 () Option!2508)

(declare-fun get!4097 (Option!2508) tuple2!12318)

(assert (=> b!1217861 (= lt!416035 (get!4097 lt!416040))))

(declare-fun tp!346091 () Bool)

(declare-fun b!1217862 () Bool)

(declare-fun e!781759 () Bool)

(declare-fun inv!16658 (Token!3954) Bool)

(assert (=> b!1217862 (= e!781758 (and (inv!16658 (h!17859 tokens!556)) e!781759 tp!346091))))

(declare-fun b!1217863 () Bool)

(declare-fun isEmpty!7408 (List!12516) Bool)

(assert (=> b!1217863 (= e!781751 (isEmpty!7408 (Cons!12458 (h!17859 tokens!556) Nil!12458)))))

(declare-fun lt!416037 () tuple2!12320)

(assert (=> b!1217863 (= lt!416037 (lexList!471 thiss!20528 rules!2728 (_2!7006 lt!416035)))))

(declare-fun b!1217864 () Bool)

(assert (=> b!1217864 (= e!781761 e!781748)))

(declare-fun res!547449 () Bool)

(assert (=> b!1217864 (=> (not res!547449) (not e!781748))))

(declare-fun isDefined!2144 (Option!2508) Bool)

(assert (=> b!1217864 (= res!547449 (isDefined!2144 lt!416040))))

(declare-fun maxPrefix!963 (LexerInterface!1841 List!12517 List!12514) Option!2508)

(assert (=> b!1217864 (= lt!416040 (maxPrefix!963 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1217865 () Bool)

(declare-fun tp!346089 () Bool)

(assert (=> b!1217865 (= e!781757 (and e!781756 tp!346089))))

(declare-fun tp!346086 () Bool)

(declare-fun e!781747 () Bool)

(declare-fun b!1217866 () Bool)

(assert (=> b!1217866 (= e!781747 (and tp!346086 (inv!16654 (tag!2408 (rule!3571 (h!17859 tokens!556)))) (inv!16657 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) e!781752))))

(declare-fun b!1217867 () Bool)

(declare-fun res!547457 () Bool)

(assert (=> b!1217867 (=> (not res!547457) (not e!781761))))

(declare-fun rulesInvariant!1715 (LexerInterface!1841 List!12517) Bool)

(assert (=> b!1217867 (= res!547457 (rulesInvariant!1715 thiss!20528 rules!2728))))

(assert (=> b!1217868 (= e!781749 (and tp!346094 tp!346090))))

(declare-fun b!1217869 () Bool)

(declare-fun res!547451 () Bool)

(assert (=> b!1217869 (=> (not res!547451) (not e!781751))))

(declare-fun rulesProduceIndividualToken!835 (LexerInterface!1841 List!12517 Token!3954) Bool)

(assert (=> b!1217869 (= res!547451 (not (rulesProduceIndividualToken!835 thiss!20528 rules!2728 (h!17859 tokens!556))))))

(declare-fun b!1217870 () Bool)

(declare-fun res!547450 () Bool)

(assert (=> b!1217870 (=> (not res!547450) (not e!781761))))

(assert (=> b!1217870 (= res!547450 (not (is-Nil!12458 tokens!556)))))

(declare-fun b!1217871 () Bool)

(declare-fun e!781762 () Bool)

(assert (=> b!1217871 (= e!781755 e!781762)))

(declare-fun res!547454 () Bool)

(assert (=> b!1217871 (=> (not res!547454) (not e!781762))))

(declare-fun lt!416034 () BalanceConc!8082)

(declare-fun lt!416038 () BalanceConc!8082)

(assert (=> b!1217871 (= res!547454 (= lt!416034 lt!416038))))

(declare-fun charsOf!1150 (Token!3954) BalanceConc!8082)

(assert (=> b!1217871 (= lt!416038 (charsOf!1150 (h!17859 tokens!556)))))

(assert (=> b!1217871 (= lt!416034 (charsOf!1150 (_1!7006 lt!416035)))))

(declare-fun b!1217872 () Bool)

(declare-fun tp_is_empty!6353 () Bool)

(declare-fun tp!346093 () Bool)

(assert (=> b!1217872 (= e!781750 (and tp_is_empty!6353 tp!346093))))

(declare-fun tp!346088 () Bool)

(declare-fun b!1217873 () Bool)

(declare-fun inv!21 (TokenValue!2214) Bool)

(assert (=> b!1217873 (= e!781759 (and (inv!21 (value!69759 (h!17859 tokens!556))) e!781747 tp!346088))))

(declare-fun b!1217874 () Bool)

(declare-fun res!547455 () Bool)

(assert (=> b!1217874 (=> (not res!547455) (not e!781751))))

(declare-fun lt!416036 () List!12514)

(declare-fun matchR!1531 (Regex!3416 List!12514) Bool)

(assert (=> b!1217874 (= res!547455 (matchR!1531 (regex!2146 (rule!3571 (_1!7006 lt!416035))) lt!416036))))

(declare-fun b!1217875 () Bool)

(assert (=> b!1217875 (= e!781762 e!781751)))

(declare-fun res!547458 () Bool)

(assert (=> b!1217875 (=> (not res!547458) (not e!781751))))

(assert (=> b!1217875 (= res!547458 (= lt!416036 lt!416039))))

(declare-fun list!4594 (BalanceConc!8082) List!12514)

(assert (=> b!1217875 (= lt!416039 (list!4594 lt!416038))))

(assert (=> b!1217875 (= lt!416036 (list!4594 lt!416034))))

(assert (= (and start!108916 res!547453) b!1217859))

(assert (= (and b!1217859 res!547448) b!1217867))

(assert (= (and b!1217867 res!547457) b!1217858))

(assert (= (and b!1217858 res!547456) b!1217870))

(assert (= (and b!1217870 res!547450) b!1217864))

(assert (= (and b!1217864 res!547449) b!1217861))

(assert (= (and b!1217861 res!547452) b!1217871))

(assert (= (and b!1217871 res!547454) b!1217875))

(assert (= (and b!1217875 res!547458) b!1217857))

(assert (= (and b!1217857 res!547447) b!1217874))

(assert (= (and b!1217874 res!547455) b!1217869))

(assert (= (and b!1217869 res!547451) b!1217863))

(assert (= b!1217860 b!1217868))

(assert (= b!1217865 b!1217860))

(assert (= (and start!108916 (is-Cons!12459 rules!2728)) b!1217865))

(assert (= (and start!108916 (is-Cons!12456 input!2346)) b!1217872))

(assert (= b!1217866 b!1217856))

(assert (= b!1217873 b!1217866))

(assert (= b!1217862 b!1217873))

(assert (= (and start!108916 (is-Cons!12458 tokens!556)) b!1217862))

(declare-fun m!1391735 () Bool)

(assert (=> b!1217860 m!1391735))

(declare-fun m!1391737 () Bool)

(assert (=> b!1217860 m!1391737))

(declare-fun m!1391739 () Bool)

(assert (=> b!1217861 m!1391739))

(declare-fun m!1391741 () Bool)

(assert (=> b!1217874 m!1391741))

(declare-fun m!1391743 () Bool)

(assert (=> b!1217857 m!1391743))

(declare-fun m!1391745 () Bool)

(assert (=> b!1217871 m!1391745))

(declare-fun m!1391747 () Bool)

(assert (=> b!1217871 m!1391747))

(declare-fun m!1391749 () Bool)

(assert (=> b!1217863 m!1391749))

(declare-fun m!1391751 () Bool)

(assert (=> b!1217863 m!1391751))

(declare-fun m!1391753 () Bool)

(assert (=> b!1217875 m!1391753))

(declare-fun m!1391755 () Bool)

(assert (=> b!1217875 m!1391755))

(declare-fun m!1391757 () Bool)

(assert (=> b!1217866 m!1391757))

(declare-fun m!1391759 () Bool)

(assert (=> b!1217866 m!1391759))

(declare-fun m!1391761 () Bool)

(assert (=> b!1217873 m!1391761))

(declare-fun m!1391763 () Bool)

(assert (=> b!1217867 m!1391763))

(declare-fun m!1391765 () Bool)

(assert (=> b!1217858 m!1391765))

(declare-fun m!1391767 () Bool)

(assert (=> b!1217862 m!1391767))

(declare-fun m!1391769 () Bool)

(assert (=> b!1217864 m!1391769))

(declare-fun m!1391771 () Bool)

(assert (=> b!1217864 m!1391771))

(declare-fun m!1391773 () Bool)

(assert (=> b!1217859 m!1391773))

(declare-fun m!1391775 () Bool)

(assert (=> b!1217869 m!1391775))

(push 1)

(assert (not b_next!30087))

(assert (not b!1217864))

(assert (not b!1217863))

(assert (not b!1217872))

(assert b_and!82829)

(assert (not b!1217865))

(assert (not b!1217859))

(assert (not b!1217875))

(assert (not b!1217866))

(assert (not b!1217857))

(assert (not b!1217869))

(assert (not b!1217874))

(assert (not b_next!30081))

(assert b_and!82825)

(assert (not b_next!30083))

(assert (not b!1217860))

(assert (not b!1217873))

(assert (not b!1217871))

(assert (not b_next!30085))

(assert (not b!1217867))

(assert b_and!82831)

(assert tp_is_empty!6353)

(assert (not b!1217861))

(assert (not b!1217862))

(assert (not b!1217858))

(assert b_and!82827)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30087))

(assert b_and!82829)

(assert (not b_next!30083))

(assert (not b_next!30085))

(assert b_and!82831)

(assert b_and!82827)

(assert (not b_next!30081))

(assert b_and!82825)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1217944 () Bool)

(declare-fun e!781816 () List!12514)

(assert (=> b!1217944 (= e!781816 (_2!7006 lt!416035))))

(declare-fun b!1217945 () Bool)

(assert (=> b!1217945 (= e!781816 (Cons!12456 (h!17857 lt!416039) (++!3180 (t!113336 lt!416039) (_2!7006 lt!416035))))))

(declare-fun e!781815 () Bool)

(declare-fun lt!416064 () List!12514)

(declare-fun b!1217947 () Bool)

(assert (=> b!1217947 (= e!781815 (or (not (= (_2!7006 lt!416035) Nil!12456)) (= lt!416064 lt!416039)))))

(declare-fun d!347688 () Bool)

(assert (=> d!347688 e!781815))

(declare-fun res!547504 () Bool)

(assert (=> d!347688 (=> (not res!547504) (not e!781815))))

(declare-fun content!1768 (List!12514) (Set C!7150))

(assert (=> d!347688 (= res!547504 (= (content!1768 lt!416064) (set.union (content!1768 lt!416039) (content!1768 (_2!7006 lt!416035)))))))

(assert (=> d!347688 (= lt!416064 e!781816)))

(declare-fun c!203624 () Bool)

(assert (=> d!347688 (= c!203624 (is-Nil!12456 lt!416039))))

(assert (=> d!347688 (= (++!3180 lt!416039 (_2!7006 lt!416035)) lt!416064)))

(declare-fun b!1217946 () Bool)

(declare-fun res!547505 () Bool)

(assert (=> b!1217946 (=> (not res!547505) (not e!781815))))

(declare-fun size!9842 (List!12514) Int)

(assert (=> b!1217946 (= res!547505 (= (size!9842 lt!416064) (+ (size!9842 lt!416039) (size!9842 (_2!7006 lt!416035)))))))

(assert (= (and d!347688 c!203624) b!1217944))

(assert (= (and d!347688 (not c!203624)) b!1217945))

(assert (= (and d!347688 res!547504) b!1217946))

(assert (= (and b!1217946 res!547505) b!1217947))

(declare-fun m!1391819 () Bool)

(assert (=> b!1217945 m!1391819))

(declare-fun m!1391821 () Bool)

(assert (=> d!347688 m!1391821))

(declare-fun m!1391823 () Bool)

(assert (=> d!347688 m!1391823))

(declare-fun m!1391825 () Bool)

(assert (=> d!347688 m!1391825))

(declare-fun m!1391827 () Bool)

(assert (=> b!1217946 m!1391827))

(declare-fun m!1391829 () Bool)

(assert (=> b!1217946 m!1391829))

(declare-fun m!1391831 () Bool)

(assert (=> b!1217946 m!1391831))

(assert (=> b!1217857 d!347688))

(declare-fun b!1217958 () Bool)

(declare-fun e!781823 () Bool)

(declare-fun e!781825 () Bool)

(assert (=> b!1217958 (= e!781823 e!781825)))

(declare-fun res!547508 () Bool)

(declare-fun lt!416073 () tuple2!12320)

(assert (=> b!1217958 (= res!547508 (< (size!9842 (_2!7007 lt!416073)) (size!9842 input!2346)))))

(assert (=> b!1217958 (=> (not res!547508) (not e!781825))))

(declare-fun b!1217960 () Bool)

(declare-fun e!781824 () tuple2!12320)

(declare-fun lt!416071 () Option!2508)

(declare-fun lt!416072 () tuple2!12320)

(assert (=> b!1217960 (= e!781824 (tuple2!12321 (Cons!12458 (_1!7006 (v!20638 lt!416071)) (_1!7007 lt!416072)) (_2!7007 lt!416072)))))

(assert (=> b!1217960 (= lt!416072 (lexList!471 thiss!20528 rules!2728 (_2!7006 (v!20638 lt!416071))))))

(declare-fun b!1217959 () Bool)

(assert (=> b!1217959 (= e!781825 (not (isEmpty!7408 (_1!7007 lt!416073))))))

(declare-fun d!347690 () Bool)

(assert (=> d!347690 e!781823))

(declare-fun c!203629 () Bool)

(declare-fun size!9843 (List!12516) Int)

(assert (=> d!347690 (= c!203629 (> (size!9843 (_1!7007 lt!416073)) 0))))

(assert (=> d!347690 (= lt!416073 e!781824)))

(declare-fun c!203630 () Bool)

(assert (=> d!347690 (= c!203630 (is-Some!2507 lt!416071))))

(assert (=> d!347690 (= lt!416071 (maxPrefix!963 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347690 (= (lexList!471 thiss!20528 rules!2728 input!2346) lt!416073)))

(declare-fun b!1217961 () Bool)

(assert (=> b!1217961 (= e!781823 (= (_2!7007 lt!416073) input!2346))))

(declare-fun b!1217962 () Bool)

(assert (=> b!1217962 (= e!781824 (tuple2!12321 Nil!12458 input!2346))))

(assert (= (and d!347690 c!203630) b!1217960))

(assert (= (and d!347690 (not c!203630)) b!1217962))

(assert (= (and d!347690 c!203629) b!1217958))

(assert (= (and d!347690 (not c!203629)) b!1217961))

(assert (= (and b!1217958 res!547508) b!1217959))

(declare-fun m!1391833 () Bool)

(assert (=> b!1217958 m!1391833))

(declare-fun m!1391835 () Bool)

(assert (=> b!1217958 m!1391835))

(declare-fun m!1391837 () Bool)

(assert (=> b!1217960 m!1391837))

(declare-fun m!1391839 () Bool)

(assert (=> b!1217959 m!1391839))

(declare-fun m!1391841 () Bool)

(assert (=> d!347690 m!1391841))

(assert (=> d!347690 m!1391771))

(assert (=> b!1217858 d!347690))

(declare-fun d!347694 () Bool)

(declare-fun lt!416090 () Bool)

(declare-fun e!781869 () Bool)

(assert (=> d!347694 (= lt!416090 e!781869)))

(declare-fun res!547545 () Bool)

(assert (=> d!347694 (=> (not res!547545) (not e!781869))))

(declare-datatypes ((IArray!8159 0))(
  ( (IArray!8160 (innerList!4137 List!12516)) )
))
(declare-datatypes ((Conc!4077 0))(
  ( (Node!4077 (left!10742 Conc!4077) (right!11072 Conc!4077) (csize!8384 Int) (cheight!4288 Int)) (Leaf!6299 (xs!6788 IArray!8159) (csize!8385 Int)) (Empty!4077) )
))
(declare-datatypes ((BalanceConc!8086 0))(
  ( (BalanceConc!8087 (c!203678 Conc!4077)) )
))
(declare-fun list!4596 (BalanceConc!8086) List!12516)

(declare-datatypes ((tuple2!12326 0))(
  ( (tuple2!12327 (_1!7010 BalanceConc!8086) (_2!7010 BalanceConc!8082)) )
))
(declare-fun lex!748 (LexerInterface!1841 List!12517 BalanceConc!8082) tuple2!12326)

(declare-fun print!685 (LexerInterface!1841 BalanceConc!8086) BalanceConc!8082)

(declare-fun singletonSeq!733 (Token!3954) BalanceConc!8086)

(assert (=> d!347694 (= res!547545 (= (list!4596 (_1!7010 (lex!748 thiss!20528 rules!2728 (print!685 thiss!20528 (singletonSeq!733 (h!17859 tokens!556)))))) (list!4596 (singletonSeq!733 (h!17859 tokens!556)))))))

(declare-fun e!781870 () Bool)

(assert (=> d!347694 (= lt!416090 e!781870)))

(declare-fun res!547547 () Bool)

(assert (=> d!347694 (=> (not res!547547) (not e!781870))))

(declare-fun lt!416091 () tuple2!12326)

(declare-fun size!9844 (BalanceConc!8086) Int)

(assert (=> d!347694 (= res!547547 (= (size!9844 (_1!7010 lt!416091)) 1))))

(assert (=> d!347694 (= lt!416091 (lex!748 thiss!20528 rules!2728 (print!685 thiss!20528 (singletonSeq!733 (h!17859 tokens!556)))))))

(assert (=> d!347694 (not (isEmpty!7407 rules!2728))))

(assert (=> d!347694 (= (rulesProduceIndividualToken!835 thiss!20528 rules!2728 (h!17859 tokens!556)) lt!416090)))

(declare-fun b!1218041 () Bool)

(declare-fun res!547546 () Bool)

(assert (=> b!1218041 (=> (not res!547546) (not e!781870))))

(declare-fun apply!2653 (BalanceConc!8086 Int) Token!3954)

(assert (=> b!1218041 (= res!547546 (= (apply!2653 (_1!7010 lt!416091) 0) (h!17859 tokens!556)))))

(declare-fun b!1218042 () Bool)

(declare-fun isEmpty!7411 (BalanceConc!8082) Bool)

(assert (=> b!1218042 (= e!781870 (isEmpty!7411 (_2!7010 lt!416091)))))

(declare-fun b!1218043 () Bool)

(assert (=> b!1218043 (= e!781869 (isEmpty!7411 (_2!7010 (lex!748 thiss!20528 rules!2728 (print!685 thiss!20528 (singletonSeq!733 (h!17859 tokens!556)))))))))

(assert (= (and d!347694 res!547547) b!1218041))

(assert (= (and b!1218041 res!547546) b!1218042))

(assert (= (and d!347694 res!547545) b!1218043))

(declare-fun m!1391879 () Bool)

(assert (=> d!347694 m!1391879))

(declare-fun m!1391881 () Bool)

(assert (=> d!347694 m!1391881))

(assert (=> d!347694 m!1391773))

(declare-fun m!1391883 () Bool)

(assert (=> d!347694 m!1391883))

(declare-fun m!1391885 () Bool)

(assert (=> d!347694 m!1391885))

(assert (=> d!347694 m!1391879))

(assert (=> d!347694 m!1391879))

(declare-fun m!1391887 () Bool)

(assert (=> d!347694 m!1391887))

(assert (=> d!347694 m!1391881))

(declare-fun m!1391889 () Bool)

(assert (=> d!347694 m!1391889))

(declare-fun m!1391891 () Bool)

(assert (=> b!1218041 m!1391891))

(declare-fun m!1391893 () Bool)

(assert (=> b!1218042 m!1391893))

(assert (=> b!1218043 m!1391879))

(assert (=> b!1218043 m!1391879))

(assert (=> b!1218043 m!1391881))

(assert (=> b!1218043 m!1391881))

(assert (=> b!1218043 m!1391889))

(declare-fun m!1391895 () Bool)

(assert (=> b!1218043 m!1391895))

(assert (=> b!1217869 d!347694))

(declare-fun d!347706 () Bool)

(assert (=> d!347706 (= (isEmpty!7407 rules!2728) (is-Nil!12459 rules!2728))))

(assert (=> b!1217859 d!347706))

(declare-fun d!347710 () Bool)

(assert (=> d!347710 (= (inv!16654 (tag!2408 (h!17860 rules!2728))) (= (mod (str.len (value!69758 (tag!2408 (h!17860 rules!2728)))) 2) 0))))

(assert (=> b!1217860 d!347710))

(declare-fun d!347712 () Bool)

(declare-fun res!547550 () Bool)

(declare-fun e!781873 () Bool)

(assert (=> d!347712 (=> (not res!547550) (not e!781873))))

(declare-fun semiInverseModEq!783 (Int Int) Bool)

(assert (=> d!347712 (= res!547550 (semiInverseModEq!783 (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toValue!3279 (transformation!2146 (h!17860 rules!2728)))))))

(assert (=> d!347712 (= (inv!16657 (transformation!2146 (h!17860 rules!2728))) e!781873)))

(declare-fun b!1218046 () Bool)

(declare-fun equivClasses!750 (Int Int) Bool)

(assert (=> b!1218046 (= e!781873 (equivClasses!750 (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toValue!3279 (transformation!2146 (h!17860 rules!2728)))))))

(assert (= (and d!347712 res!547550) b!1218046))

(declare-fun m!1391897 () Bool)

(assert (=> d!347712 m!1391897))

(declare-fun m!1391899 () Bool)

(assert (=> b!1218046 m!1391899))

(assert (=> b!1217860 d!347712))

(declare-fun d!347716 () Bool)

(declare-fun lt!416094 () BalanceConc!8082)

(assert (=> d!347716 (= (list!4594 lt!416094) (originalCharacters!2700 (h!17859 tokens!556)))))

(declare-fun dynLambda!5438 (Int TokenValue!2214) BalanceConc!8082)

(assert (=> d!347716 (= lt!416094 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (value!69759 (h!17859 tokens!556))))))

(assert (=> d!347716 (= (charsOf!1150 (h!17859 tokens!556)) lt!416094)))

(declare-fun b_lambda!35919 () Bool)

(assert (=> (not b_lambda!35919) (not d!347716)))

(declare-fun t!113346 () Bool)

(declare-fun tb!66897 () Bool)

(assert (=> (and b!1217856 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556))))) t!113346) tb!66897))

(declare-fun b!1218054 () Bool)

(declare-fun e!781879 () Bool)

(declare-fun tp!346128 () Bool)

(declare-fun inv!16661 (Conc!4075) Bool)

(assert (=> b!1218054 (= e!781879 (and (inv!16661 (c!203617 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (value!69759 (h!17859 tokens!556))))) tp!346128))))

(declare-fun result!81000 () Bool)

(declare-fun inv!16662 (BalanceConc!8082) Bool)

(assert (=> tb!66897 (= result!81000 (and (inv!16662 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (value!69759 (h!17859 tokens!556)))) e!781879))))

(assert (= tb!66897 b!1218054))

(declare-fun m!1391901 () Bool)

(assert (=> b!1218054 m!1391901))

(declare-fun m!1391903 () Bool)

(assert (=> tb!66897 m!1391903))

(assert (=> d!347716 t!113346))

(declare-fun b_and!82841 () Bool)

(assert (= b_and!82827 (and (=> t!113346 result!81000) b_and!82841)))

(declare-fun tb!66899 () Bool)

(declare-fun t!113348 () Bool)

(assert (=> (and b!1217868 (= (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556))))) t!113348) tb!66899))

(declare-fun result!81004 () Bool)

(assert (= result!81004 result!81000))

(assert (=> d!347716 t!113348))

(declare-fun b_and!82843 () Bool)

(assert (= b_and!82831 (and (=> t!113348 result!81004) b_and!82843)))

(declare-fun m!1391905 () Bool)

(assert (=> d!347716 m!1391905))

(declare-fun m!1391909 () Bool)

(assert (=> d!347716 m!1391909))

(assert (=> b!1217871 d!347716))

(declare-fun d!347718 () Bool)

(declare-fun lt!416095 () BalanceConc!8082)

(assert (=> d!347718 (= (list!4594 lt!416095) (originalCharacters!2700 (_1!7006 lt!416035)))))

(assert (=> d!347718 (= lt!416095 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035)))) (value!69759 (_1!7006 lt!416035))))))

(assert (=> d!347718 (= (charsOf!1150 (_1!7006 lt!416035)) lt!416095)))

(declare-fun b_lambda!35921 () Bool)

(assert (=> (not b_lambda!35921) (not d!347718)))

(declare-fun t!113350 () Bool)

(declare-fun tb!66901 () Bool)

(assert (=> (and b!1217856 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035))))) t!113350) tb!66901))

(declare-fun b!1218055 () Bool)

(declare-fun e!781880 () Bool)

(declare-fun tp!346129 () Bool)

(assert (=> b!1218055 (= e!781880 (and (inv!16661 (c!203617 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035)))) (value!69759 (_1!7006 lt!416035))))) tp!346129))))

(declare-fun result!81006 () Bool)

(assert (=> tb!66901 (= result!81006 (and (inv!16662 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035)))) (value!69759 (_1!7006 lt!416035)))) e!781880))))

(assert (= tb!66901 b!1218055))

(declare-fun m!1391913 () Bool)

(assert (=> b!1218055 m!1391913))

(declare-fun m!1391915 () Bool)

(assert (=> tb!66901 m!1391915))

(assert (=> d!347718 t!113350))

(declare-fun b_and!82845 () Bool)

(assert (= b_and!82841 (and (=> t!113350 result!81006) b_and!82845)))

(declare-fun t!113352 () Bool)

(declare-fun tb!66903 () Bool)

(assert (=> (and b!1217868 (= (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035))))) t!113352) tb!66903))

(declare-fun result!81008 () Bool)

(assert (= result!81008 result!81006))

(assert (=> d!347718 t!113352))

(declare-fun b_and!82847 () Bool)

(assert (= b_and!82843 (and (=> t!113352 result!81008) b_and!82847)))

(declare-fun m!1391917 () Bool)

(assert (=> d!347718 m!1391917))

(declare-fun m!1391919 () Bool)

(assert (=> d!347718 m!1391919))

(assert (=> b!1217871 d!347718))

(declare-fun d!347722 () Bool)

(assert (=> d!347722 (= (get!4097 lt!416040) (v!20638 lt!416040))))

(assert (=> b!1217861 d!347722))

(declare-fun d!347724 () Bool)

(declare-fun res!547558 () Bool)

(declare-fun e!781883 () Bool)

(assert (=> d!347724 (=> (not res!547558) (not e!781883))))

(declare-fun isEmpty!7412 (List!12514) Bool)

(assert (=> d!347724 (= res!547558 (not (isEmpty!7412 (originalCharacters!2700 (h!17859 tokens!556)))))))

(assert (=> d!347724 (= (inv!16658 (h!17859 tokens!556)) e!781883)))

(declare-fun b!1218060 () Bool)

(declare-fun res!547559 () Bool)

(assert (=> b!1218060 (=> (not res!547559) (not e!781883))))

(assert (=> b!1218060 (= res!547559 (= (originalCharacters!2700 (h!17859 tokens!556)) (list!4594 (dynLambda!5438 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (value!69759 (h!17859 tokens!556))))))))

(declare-fun b!1218061 () Bool)

(assert (=> b!1218061 (= e!781883 (= (size!9840 (h!17859 tokens!556)) (size!9842 (originalCharacters!2700 (h!17859 tokens!556)))))))

(assert (= (and d!347724 res!547558) b!1218060))

(assert (= (and b!1218060 res!547559) b!1218061))

(declare-fun b_lambda!35923 () Bool)

(assert (=> (not b_lambda!35923) (not b!1218060)))

(assert (=> b!1218060 t!113346))

(declare-fun b_and!82849 () Bool)

(assert (= b_and!82845 (and (=> t!113346 result!81000) b_and!82849)))

(assert (=> b!1218060 t!113348))

(declare-fun b_and!82851 () Bool)

(assert (= b_and!82847 (and (=> t!113348 result!81004) b_and!82851)))

(declare-fun m!1391921 () Bool)

(assert (=> d!347724 m!1391921))

(assert (=> b!1218060 m!1391909))

(assert (=> b!1218060 m!1391909))

(declare-fun m!1391923 () Bool)

(assert (=> b!1218060 m!1391923))

(declare-fun m!1391925 () Bool)

(assert (=> b!1218061 m!1391925))

(assert (=> b!1217862 d!347724))

(declare-fun b!1218075 () Bool)

(declare-fun e!781894 () Bool)

(declare-fun inv!16 (TokenValue!2214) Bool)

(assert (=> b!1218075 (= e!781894 (inv!16 (value!69759 (h!17859 tokens!556))))))

(declare-fun d!347726 () Bool)

(declare-fun c!203656 () Bool)

(assert (=> d!347726 (= c!203656 (is-IntegerValue!6642 (value!69759 (h!17859 tokens!556))))))

(assert (=> d!347726 (= (inv!21 (value!69759 (h!17859 tokens!556))) e!781894)))

(declare-fun b!1218076 () Bool)

(declare-fun res!547565 () Bool)

(declare-fun e!781893 () Bool)

(assert (=> b!1218076 (=> res!547565 e!781893)))

(assert (=> b!1218076 (= res!547565 (not (is-IntegerValue!6644 (value!69759 (h!17859 tokens!556)))))))

(declare-fun e!781895 () Bool)

(assert (=> b!1218076 (= e!781895 e!781893)))

(declare-fun b!1218077 () Bool)

(assert (=> b!1218077 (= e!781894 e!781895)))

(declare-fun c!203657 () Bool)

(assert (=> b!1218077 (= c!203657 (is-IntegerValue!6643 (value!69759 (h!17859 tokens!556))))))

(declare-fun b!1218078 () Bool)

(declare-fun inv!15 (TokenValue!2214) Bool)

(assert (=> b!1218078 (= e!781893 (inv!15 (value!69759 (h!17859 tokens!556))))))

(declare-fun b!1218079 () Bool)

(declare-fun inv!17 (TokenValue!2214) Bool)

(assert (=> b!1218079 (= e!781895 (inv!17 (value!69759 (h!17859 tokens!556))))))

(assert (= (and d!347726 c!203656) b!1218075))

(assert (= (and d!347726 (not c!203656)) b!1218077))

(assert (= (and b!1218077 c!203657) b!1218079))

(assert (= (and b!1218077 (not c!203657)) b!1218076))

(assert (= (and b!1218076 (not res!547565)) b!1218078))

(declare-fun m!1391931 () Bool)

(assert (=> b!1218075 m!1391931))

(declare-fun m!1391933 () Bool)

(assert (=> b!1218078 m!1391933))

(declare-fun m!1391935 () Bool)

(assert (=> b!1218079 m!1391935))

(assert (=> b!1217873 d!347726))

(declare-fun b!1218120 () Bool)

(declare-fun e!781918 () Bool)

(declare-fun e!781916 () Bool)

(assert (=> b!1218120 (= e!781918 e!781916)))

(declare-fun c!203668 () Bool)

(assert (=> b!1218120 (= c!203668 (is-EmptyLang!3416 (regex!2146 (rule!3571 (_1!7006 lt!416035)))))))

(declare-fun b!1218121 () Bool)

(declare-fun lt!416101 () Bool)

(declare-fun call!84585 () Bool)

(assert (=> b!1218121 (= e!781918 (= lt!416101 call!84585))))

(declare-fun b!1218122 () Bool)

(declare-fun e!781917 () Bool)

(declare-fun head!2153 (List!12514) C!7150)

(assert (=> b!1218122 (= e!781917 (not (= (head!2153 lt!416036) (c!203618 (regex!2146 (rule!3571 (_1!7006 lt!416035)))))))))

(declare-fun b!1218123 () Bool)

(declare-fun e!781922 () Bool)

(assert (=> b!1218123 (= e!781922 e!781917)))

(declare-fun res!547592 () Bool)

(assert (=> b!1218123 (=> res!547592 e!781917)))

(assert (=> b!1218123 (= res!547592 call!84585)))

(declare-fun d!347732 () Bool)

(assert (=> d!347732 e!781918))

(declare-fun c!203667 () Bool)

(assert (=> d!347732 (= c!203667 (is-EmptyExpr!3416 (regex!2146 (rule!3571 (_1!7006 lt!416035)))))))

(declare-fun e!781920 () Bool)

(assert (=> d!347732 (= lt!416101 e!781920)))

(declare-fun c!203669 () Bool)

(assert (=> d!347732 (= c!203669 (isEmpty!7412 lt!416036))))

(declare-fun validRegex!1453 (Regex!3416) Bool)

(assert (=> d!347732 (validRegex!1453 (regex!2146 (rule!3571 (_1!7006 lt!416035))))))

(assert (=> d!347732 (= (matchR!1531 (regex!2146 (rule!3571 (_1!7006 lt!416035))) lt!416036) lt!416101)))

(declare-fun b!1218124 () Bool)

(declare-fun derivativeStep!849 (Regex!3416 C!7150) Regex!3416)

(declare-fun tail!1785 (List!12514) List!12514)

(assert (=> b!1218124 (= e!781920 (matchR!1531 (derivativeStep!849 (regex!2146 (rule!3571 (_1!7006 lt!416035))) (head!2153 lt!416036)) (tail!1785 lt!416036)))))

(declare-fun b!1218125 () Bool)

(declare-fun res!547591 () Bool)

(declare-fun e!781919 () Bool)

(assert (=> b!1218125 (=> res!547591 e!781919)))

(declare-fun e!781921 () Bool)

(assert (=> b!1218125 (= res!547591 e!781921)))

(declare-fun res!547593 () Bool)

(assert (=> b!1218125 (=> (not res!547593) (not e!781921))))

(assert (=> b!1218125 (= res!547593 lt!416101)))

(declare-fun b!1218126 () Bool)

(declare-fun res!547589 () Bool)

(assert (=> b!1218126 (=> res!547589 e!781917)))

(assert (=> b!1218126 (= res!547589 (not (isEmpty!7412 (tail!1785 lt!416036))))))

(declare-fun b!1218127 () Bool)

(declare-fun res!547595 () Bool)

(assert (=> b!1218127 (=> (not res!547595) (not e!781921))))

(assert (=> b!1218127 (= res!547595 (isEmpty!7412 (tail!1785 lt!416036)))))

(declare-fun b!1218128 () Bool)

(declare-fun nullable!1056 (Regex!3416) Bool)

(assert (=> b!1218128 (= e!781920 (nullable!1056 (regex!2146 (rule!3571 (_1!7006 lt!416035)))))))

(declare-fun b!1218129 () Bool)

(assert (=> b!1218129 (= e!781916 (not lt!416101))))

(declare-fun b!1218130 () Bool)

(declare-fun res!547588 () Bool)

(assert (=> b!1218130 (=> (not res!547588) (not e!781921))))

(assert (=> b!1218130 (= res!547588 (not call!84585))))

(declare-fun b!1218131 () Bool)

(assert (=> b!1218131 (= e!781919 e!781922)))

(declare-fun res!547594 () Bool)

(assert (=> b!1218131 (=> (not res!547594) (not e!781922))))

(assert (=> b!1218131 (= res!547594 (not lt!416101))))

(declare-fun bm!84580 () Bool)

(assert (=> bm!84580 (= call!84585 (isEmpty!7412 lt!416036))))

(declare-fun b!1218132 () Bool)

(assert (=> b!1218132 (= e!781921 (= (head!2153 lt!416036) (c!203618 (regex!2146 (rule!3571 (_1!7006 lt!416035))))))))

(declare-fun b!1218133 () Bool)

(declare-fun res!547590 () Bool)

(assert (=> b!1218133 (=> res!547590 e!781919)))

(assert (=> b!1218133 (= res!547590 (not (is-ElementMatch!3416 (regex!2146 (rule!3571 (_1!7006 lt!416035))))))))

(assert (=> b!1218133 (= e!781916 e!781919)))

(assert (= (and d!347732 c!203669) b!1218128))

(assert (= (and d!347732 (not c!203669)) b!1218124))

(assert (= (and d!347732 c!203667) b!1218121))

(assert (= (and d!347732 (not c!203667)) b!1218120))

(assert (= (and b!1218120 c!203668) b!1218129))

(assert (= (and b!1218120 (not c!203668)) b!1218133))

(assert (= (and b!1218133 (not res!547590)) b!1218125))

(assert (= (and b!1218125 res!547593) b!1218130))

(assert (= (and b!1218130 res!547588) b!1218127))

(assert (= (and b!1218127 res!547595) b!1218132))

(assert (= (and b!1218125 (not res!547591)) b!1218131))

(assert (= (and b!1218131 res!547594) b!1218123))

(assert (= (and b!1218123 (not res!547592)) b!1218126))

(assert (= (and b!1218126 (not res!547589)) b!1218122))

(assert (= (or b!1218121 b!1218123 b!1218130) bm!84580))

(declare-fun m!1391953 () Bool)

(assert (=> b!1218127 m!1391953))

(assert (=> b!1218127 m!1391953))

(declare-fun m!1391955 () Bool)

(assert (=> b!1218127 m!1391955))

(declare-fun m!1391957 () Bool)

(assert (=> bm!84580 m!1391957))

(declare-fun m!1391959 () Bool)

(assert (=> b!1218124 m!1391959))

(assert (=> b!1218124 m!1391959))

(declare-fun m!1391961 () Bool)

(assert (=> b!1218124 m!1391961))

(assert (=> b!1218124 m!1391953))

(assert (=> b!1218124 m!1391961))

(assert (=> b!1218124 m!1391953))

(declare-fun m!1391963 () Bool)

(assert (=> b!1218124 m!1391963))

(assert (=> d!347732 m!1391957))

(declare-fun m!1391965 () Bool)

(assert (=> d!347732 m!1391965))

(assert (=> b!1218132 m!1391959))

(assert (=> b!1218126 m!1391953))

(assert (=> b!1218126 m!1391953))

(assert (=> b!1218126 m!1391955))

(assert (=> b!1218122 m!1391959))

(declare-fun m!1391967 () Bool)

(assert (=> b!1218128 m!1391967))

(assert (=> b!1217874 d!347732))

(declare-fun d!347738 () Bool)

(assert (=> d!347738 (= (isEmpty!7408 (Cons!12458 (h!17859 tokens!556) Nil!12458)) (is-Nil!12458 (Cons!12458 (h!17859 tokens!556) Nil!12458)))))

(assert (=> b!1217863 d!347738))

(declare-fun b!1218134 () Bool)

(declare-fun e!781923 () Bool)

(declare-fun e!781925 () Bool)

(assert (=> b!1218134 (= e!781923 e!781925)))

(declare-fun res!547596 () Bool)

(declare-fun lt!416104 () tuple2!12320)

(assert (=> b!1218134 (= res!547596 (< (size!9842 (_2!7007 lt!416104)) (size!9842 (_2!7006 lt!416035))))))

(assert (=> b!1218134 (=> (not res!547596) (not e!781925))))

(declare-fun b!1218136 () Bool)

(declare-fun e!781924 () tuple2!12320)

(declare-fun lt!416102 () Option!2508)

(declare-fun lt!416103 () tuple2!12320)

(assert (=> b!1218136 (= e!781924 (tuple2!12321 (Cons!12458 (_1!7006 (v!20638 lt!416102)) (_1!7007 lt!416103)) (_2!7007 lt!416103)))))

(assert (=> b!1218136 (= lt!416103 (lexList!471 thiss!20528 rules!2728 (_2!7006 (v!20638 lt!416102))))))

(declare-fun b!1218135 () Bool)

(assert (=> b!1218135 (= e!781925 (not (isEmpty!7408 (_1!7007 lt!416104))))))

(declare-fun d!347740 () Bool)

(assert (=> d!347740 e!781923))

(declare-fun c!203670 () Bool)

(assert (=> d!347740 (= c!203670 (> (size!9843 (_1!7007 lt!416104)) 0))))

(assert (=> d!347740 (= lt!416104 e!781924)))

(declare-fun c!203671 () Bool)

(assert (=> d!347740 (= c!203671 (is-Some!2507 lt!416102))))

(assert (=> d!347740 (= lt!416102 (maxPrefix!963 thiss!20528 rules!2728 (_2!7006 lt!416035)))))

(assert (=> d!347740 (= (lexList!471 thiss!20528 rules!2728 (_2!7006 lt!416035)) lt!416104)))

(declare-fun b!1218137 () Bool)

(assert (=> b!1218137 (= e!781923 (= (_2!7007 lt!416104) (_2!7006 lt!416035)))))

(declare-fun b!1218138 () Bool)

(assert (=> b!1218138 (= e!781924 (tuple2!12321 Nil!12458 (_2!7006 lt!416035)))))

(assert (= (and d!347740 c!203671) b!1218136))

(assert (= (and d!347740 (not c!203671)) b!1218138))

(assert (= (and d!347740 c!203670) b!1218134))

(assert (= (and d!347740 (not c!203670)) b!1218137))

(assert (= (and b!1218134 res!547596) b!1218135))

(declare-fun m!1391969 () Bool)

(assert (=> b!1218134 m!1391969))

(assert (=> b!1218134 m!1391831))

(declare-fun m!1391971 () Bool)

(assert (=> b!1218136 m!1391971))

(declare-fun m!1391973 () Bool)

(assert (=> b!1218135 m!1391973))

(declare-fun m!1391975 () Bool)

(assert (=> d!347740 m!1391975))

(declare-fun m!1391977 () Bool)

(assert (=> d!347740 m!1391977))

(assert (=> b!1217863 d!347740))

(declare-fun d!347742 () Bool)

(declare-fun isEmpty!7413 (Option!2508) Bool)

(assert (=> d!347742 (= (isDefined!2144 lt!416040) (not (isEmpty!7413 lt!416040)))))

(declare-fun bs!288860 () Bool)

(assert (= bs!288860 d!347742))

(declare-fun m!1391979 () Bool)

(assert (=> bs!288860 m!1391979))

(assert (=> b!1217864 d!347742))

(declare-fun b!1218157 () Bool)

(declare-fun res!547613 () Bool)

(declare-fun e!781932 () Bool)

(assert (=> b!1218157 (=> (not res!547613) (not e!781932))))

(declare-fun lt!416115 () Option!2508)

(declare-fun apply!2654 (TokenValueInjection!4124 BalanceConc!8082) TokenValue!2214)

(declare-fun seqFromList!1558 (List!12514) BalanceConc!8082)

(assert (=> b!1218157 (= res!547613 (= (value!69759 (_1!7006 (get!4097 lt!416115))) (apply!2654 (transformation!2146 (rule!3571 (_1!7006 (get!4097 lt!416115)))) (seqFromList!1558 (originalCharacters!2700 (_1!7006 (get!4097 lt!416115)))))))))

(declare-fun b!1218158 () Bool)

(declare-fun e!781933 () Option!2508)

(declare-fun call!84588 () Option!2508)

(assert (=> b!1218158 (= e!781933 call!84588)))

(declare-fun bm!84583 () Bool)

(declare-fun maxPrefixOneRule!554 (LexerInterface!1841 Rule!4092 List!12514) Option!2508)

(assert (=> bm!84583 (= call!84588 (maxPrefixOneRule!554 thiss!20528 (h!17860 rules!2728) input!2346))))

(declare-fun b!1218159 () Bool)

(declare-fun lt!416117 () Option!2508)

(declare-fun lt!416118 () Option!2508)

(assert (=> b!1218159 (= e!781933 (ite (and (is-None!2507 lt!416117) (is-None!2507 lt!416118)) None!2507 (ite (is-None!2507 lt!416118) lt!416117 (ite (is-None!2507 lt!416117) lt!416118 (ite (>= (size!9840 (_1!7006 (v!20638 lt!416117))) (size!9840 (_1!7006 (v!20638 lt!416118)))) lt!416117 lt!416118)))))))

(assert (=> b!1218159 (= lt!416117 call!84588)))

(assert (=> b!1218159 (= lt!416118 (maxPrefix!963 thiss!20528 (t!113339 rules!2728) input!2346))))

(declare-fun b!1218160 () Bool)

(declare-fun res!547612 () Bool)

(assert (=> b!1218160 (=> (not res!547612) (not e!781932))))

(assert (=> b!1218160 (= res!547612 (= (list!4594 (charsOf!1150 (_1!7006 (get!4097 lt!416115)))) (originalCharacters!2700 (_1!7006 (get!4097 lt!416115)))))))

(declare-fun b!1218161 () Bool)

(declare-fun contains!2087 (List!12517 Rule!4092) Bool)

(assert (=> b!1218161 (= e!781932 (contains!2087 rules!2728 (rule!3571 (_1!7006 (get!4097 lt!416115)))))))

(declare-fun b!1218162 () Bool)

(declare-fun res!547616 () Bool)

(assert (=> b!1218162 (=> (not res!547616) (not e!781932))))

(assert (=> b!1218162 (= res!547616 (= (++!3180 (list!4594 (charsOf!1150 (_1!7006 (get!4097 lt!416115)))) (_2!7006 (get!4097 lt!416115))) input!2346))))

(declare-fun b!1218164 () Bool)

(declare-fun res!547617 () Bool)

(assert (=> b!1218164 (=> (not res!547617) (not e!781932))))

(assert (=> b!1218164 (= res!547617 (< (size!9842 (_2!7006 (get!4097 lt!416115))) (size!9842 input!2346)))))

(declare-fun b!1218165 () Bool)

(declare-fun e!781934 () Bool)

(assert (=> b!1218165 (= e!781934 e!781932)))

(declare-fun res!547614 () Bool)

(assert (=> b!1218165 (=> (not res!547614) (not e!781932))))

(assert (=> b!1218165 (= res!547614 (isDefined!2144 lt!416115))))

(declare-fun d!347744 () Bool)

(assert (=> d!347744 e!781934))

(declare-fun res!547615 () Bool)

(assert (=> d!347744 (=> res!547615 e!781934)))

(assert (=> d!347744 (= res!547615 (isEmpty!7413 lt!416115))))

(assert (=> d!347744 (= lt!416115 e!781933)))

(declare-fun c!203674 () Bool)

(assert (=> d!347744 (= c!203674 (and (is-Cons!12459 rules!2728) (is-Nil!12459 (t!113339 rules!2728))))))

(declare-datatypes ((Unit!18718 0))(
  ( (Unit!18719) )
))
(declare-fun lt!416119 () Unit!18718)

(declare-fun lt!416116 () Unit!18718)

(assert (=> d!347744 (= lt!416119 lt!416116)))

(declare-fun isPrefix!1035 (List!12514 List!12514) Bool)

(assert (=> d!347744 (isPrefix!1035 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!728 (List!12514 List!12514) Unit!18718)

(assert (=> d!347744 (= lt!416116 (lemmaIsPrefixRefl!728 input!2346 input!2346))))

(declare-fun rulesValidInductive!671 (LexerInterface!1841 List!12517) Bool)

(assert (=> d!347744 (rulesValidInductive!671 thiss!20528 rules!2728)))

(assert (=> d!347744 (= (maxPrefix!963 thiss!20528 rules!2728 input!2346) lt!416115)))

(declare-fun b!1218163 () Bool)

(declare-fun res!547611 () Bool)

(assert (=> b!1218163 (=> (not res!547611) (not e!781932))))

(assert (=> b!1218163 (= res!547611 (matchR!1531 (regex!2146 (rule!3571 (_1!7006 (get!4097 lt!416115)))) (list!4594 (charsOf!1150 (_1!7006 (get!4097 lt!416115))))))))

(assert (= (and d!347744 c!203674) b!1218158))

(assert (= (and d!347744 (not c!203674)) b!1218159))

(assert (= (or b!1218158 b!1218159) bm!84583))

(assert (= (and d!347744 (not res!547615)) b!1218165))

(assert (= (and b!1218165 res!547614) b!1218160))

(assert (= (and b!1218160 res!547612) b!1218164))

(assert (= (and b!1218164 res!547617) b!1218162))

(assert (= (and b!1218162 res!547616) b!1218157))

(assert (= (and b!1218157 res!547613) b!1218163))

(assert (= (and b!1218163 res!547611) b!1218161))

(declare-fun m!1391981 () Bool)

(assert (=> b!1218165 m!1391981))

(declare-fun m!1391983 () Bool)

(assert (=> b!1218159 m!1391983))

(declare-fun m!1391985 () Bool)

(assert (=> b!1218161 m!1391985))

(declare-fun m!1391987 () Bool)

(assert (=> b!1218161 m!1391987))

(assert (=> b!1218162 m!1391985))

(declare-fun m!1391989 () Bool)

(assert (=> b!1218162 m!1391989))

(assert (=> b!1218162 m!1391989))

(declare-fun m!1391991 () Bool)

(assert (=> b!1218162 m!1391991))

(assert (=> b!1218162 m!1391991))

(declare-fun m!1391993 () Bool)

(assert (=> b!1218162 m!1391993))

(declare-fun m!1391995 () Bool)

(assert (=> d!347744 m!1391995))

(declare-fun m!1391997 () Bool)

(assert (=> d!347744 m!1391997))

(declare-fun m!1391999 () Bool)

(assert (=> d!347744 m!1391999))

(declare-fun m!1392001 () Bool)

(assert (=> d!347744 m!1392001))

(assert (=> b!1218164 m!1391985))

(declare-fun m!1392003 () Bool)

(assert (=> b!1218164 m!1392003))

(assert (=> b!1218164 m!1391835))

(assert (=> b!1218157 m!1391985))

(declare-fun m!1392005 () Bool)

(assert (=> b!1218157 m!1392005))

(assert (=> b!1218157 m!1392005))

(declare-fun m!1392007 () Bool)

(assert (=> b!1218157 m!1392007))

(declare-fun m!1392009 () Bool)

(assert (=> bm!84583 m!1392009))

(assert (=> b!1218163 m!1391985))

(assert (=> b!1218163 m!1391989))

(assert (=> b!1218163 m!1391989))

(assert (=> b!1218163 m!1391991))

(assert (=> b!1218163 m!1391991))

(declare-fun m!1392011 () Bool)

(assert (=> b!1218163 m!1392011))

(assert (=> b!1218160 m!1391985))

(assert (=> b!1218160 m!1391989))

(assert (=> b!1218160 m!1391989))

(assert (=> b!1218160 m!1391991))

(assert (=> b!1217864 d!347744))

(declare-fun d!347746 () Bool)

(declare-fun list!4597 (Conc!4075) List!12514)

(assert (=> d!347746 (= (list!4594 lt!416038) (list!4597 (c!203617 lt!416038)))))

(declare-fun bs!288861 () Bool)

(assert (= bs!288861 d!347746))

(declare-fun m!1392013 () Bool)

(assert (=> bs!288861 m!1392013))

(assert (=> b!1217875 d!347746))

(declare-fun d!347748 () Bool)

(assert (=> d!347748 (= (list!4594 lt!416034) (list!4597 (c!203617 lt!416034)))))

(declare-fun bs!288862 () Bool)

(assert (= bs!288862 d!347748))

(declare-fun m!1392015 () Bool)

(assert (=> bs!288862 m!1392015))

(assert (=> b!1217875 d!347748))

(declare-fun d!347750 () Bool)

(assert (=> d!347750 (= (inv!16654 (tag!2408 (rule!3571 (h!17859 tokens!556)))) (= (mod (str.len (value!69758 (tag!2408 (rule!3571 (h!17859 tokens!556))))) 2) 0))))

(assert (=> b!1217866 d!347750))

(declare-fun d!347752 () Bool)

(declare-fun res!547618 () Bool)

(declare-fun e!781935 () Bool)

(assert (=> d!347752 (=> (not res!547618) (not e!781935))))

(assert (=> d!347752 (= res!547618 (semiInverseModEq!783 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (toValue!3279 (transformation!2146 (rule!3571 (h!17859 tokens!556))))))))

(assert (=> d!347752 (= (inv!16657 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) e!781935)))

(declare-fun b!1218166 () Bool)

(assert (=> b!1218166 (= e!781935 (equivClasses!750 (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))) (toValue!3279 (transformation!2146 (rule!3571 (h!17859 tokens!556))))))))

(assert (= (and d!347752 res!547618) b!1218166))

(declare-fun m!1392017 () Bool)

(assert (=> d!347752 m!1392017))

(declare-fun m!1392019 () Bool)

(assert (=> b!1218166 m!1392019))

(assert (=> b!1217866 d!347752))

(declare-fun d!347754 () Bool)

(declare-fun res!547621 () Bool)

(declare-fun e!781938 () Bool)

(assert (=> d!347754 (=> (not res!547621) (not e!781938))))

(declare-fun rulesValid!771 (LexerInterface!1841 List!12517) Bool)

(assert (=> d!347754 (= res!547621 (rulesValid!771 thiss!20528 rules!2728))))

(assert (=> d!347754 (= (rulesInvariant!1715 thiss!20528 rules!2728) e!781938)))

(declare-fun b!1218169 () Bool)

(declare-datatypes ((List!12522 0))(
  ( (Nil!12464) (Cons!12464 (h!17865 String!15204) (t!113365 List!12522)) )
))
(declare-fun noDuplicateTag!771 (LexerInterface!1841 List!12517 List!12522) Bool)

(assert (=> b!1218169 (= e!781938 (noDuplicateTag!771 thiss!20528 rules!2728 Nil!12464))))

(assert (= (and d!347754 res!547621) b!1218169))

(declare-fun m!1392021 () Bool)

(assert (=> d!347754 m!1392021))

(declare-fun m!1392023 () Bool)

(assert (=> b!1218169 m!1392023))

(assert (=> b!1217867 d!347754))

(declare-fun b!1218174 () Bool)

(declare-fun e!781941 () Bool)

(declare-fun tp!346132 () Bool)

(assert (=> b!1218174 (= e!781941 (and tp_is_empty!6353 tp!346132))))

(assert (=> b!1217873 (= tp!346088 e!781941)))

(assert (= (and b!1217873 (is-Cons!12456 (originalCharacters!2700 (h!17859 tokens!556)))) b!1218174))

(declare-fun b!1218186 () Bool)

(declare-fun e!781944 () Bool)

(declare-fun tp!346145 () Bool)

(declare-fun tp!346144 () Bool)

(assert (=> b!1218186 (= e!781944 (and tp!346145 tp!346144))))

(declare-fun b!1218187 () Bool)

(declare-fun tp!346146 () Bool)

(assert (=> b!1218187 (= e!781944 tp!346146)))

(declare-fun b!1218188 () Bool)

(declare-fun tp!346143 () Bool)

(declare-fun tp!346147 () Bool)

(assert (=> b!1218188 (= e!781944 (and tp!346143 tp!346147))))

(declare-fun b!1218185 () Bool)

(assert (=> b!1218185 (= e!781944 tp_is_empty!6353)))

(assert (=> b!1217860 (= tp!346087 e!781944)))

(assert (= (and b!1217860 (is-ElementMatch!3416 (regex!2146 (h!17860 rules!2728)))) b!1218185))

(assert (= (and b!1217860 (is-Concat!5631 (regex!2146 (h!17860 rules!2728)))) b!1218186))

(assert (= (and b!1217860 (is-Star!3416 (regex!2146 (h!17860 rules!2728)))) b!1218187))

(assert (= (and b!1217860 (is-Union!3416 (regex!2146 (h!17860 rules!2728)))) b!1218188))

(declare-fun b!1218199 () Bool)

(declare-fun b_free!29393 () Bool)

(declare-fun b_next!30097 () Bool)

(assert (=> b!1218199 (= b_free!29393 (not b_next!30097))))

(declare-fun tp!346156 () Bool)

(declare-fun b_and!82853 () Bool)

(assert (=> b!1218199 (= tp!346156 b_and!82853)))

(declare-fun b_free!29395 () Bool)

(declare-fun b_next!30099 () Bool)

(assert (=> b!1218199 (= b_free!29395 (not b_next!30099))))

(declare-fun t!113354 () Bool)

(declare-fun tb!66905 () Bool)

(assert (=> (and b!1218199 (= (toChars!3138 (transformation!2146 (h!17860 (t!113339 rules!2728)))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556))))) t!113354) tb!66905))

(declare-fun result!81016 () Bool)

(assert (= result!81016 result!81000))

(assert (=> d!347716 t!113354))

(declare-fun t!113356 () Bool)

(declare-fun tb!66907 () Bool)

(assert (=> (and b!1218199 (= (toChars!3138 (transformation!2146 (h!17860 (t!113339 rules!2728)))) (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035))))) t!113356) tb!66907))

(declare-fun result!81018 () Bool)

(assert (= result!81018 result!81006))

(assert (=> d!347718 t!113356))

(assert (=> b!1218060 t!113354))

(declare-fun tp!346158 () Bool)

(declare-fun b_and!82855 () Bool)

(assert (=> b!1218199 (= tp!346158 (and (=> t!113354 result!81016) (=> t!113356 result!81018) b_and!82855))))

(declare-fun e!781956 () Bool)

(assert (=> b!1218199 (= e!781956 (and tp!346156 tp!346158))))

(declare-fun b!1218198 () Bool)

(declare-fun e!781955 () Bool)

(declare-fun tp!346157 () Bool)

(assert (=> b!1218198 (= e!781955 (and tp!346157 (inv!16654 (tag!2408 (h!17860 (t!113339 rules!2728)))) (inv!16657 (transformation!2146 (h!17860 (t!113339 rules!2728)))) e!781956))))

(declare-fun b!1218197 () Bool)

(declare-fun e!781953 () Bool)

(declare-fun tp!346159 () Bool)

(assert (=> b!1218197 (= e!781953 (and e!781955 tp!346159))))

(assert (=> b!1217865 (= tp!346089 e!781953)))

(assert (= b!1218198 b!1218199))

(assert (= b!1218197 b!1218198))

(assert (= (and b!1217865 (is-Cons!12459 (t!113339 rules!2728))) b!1218197))

(declare-fun m!1392025 () Bool)

(assert (=> b!1218198 m!1392025))

(declare-fun m!1392027 () Bool)

(assert (=> b!1218198 m!1392027))

(declare-fun b!1218201 () Bool)

(declare-fun e!781957 () Bool)

(declare-fun tp!346162 () Bool)

(declare-fun tp!346161 () Bool)

(assert (=> b!1218201 (= e!781957 (and tp!346162 tp!346161))))

(declare-fun b!1218202 () Bool)

(declare-fun tp!346163 () Bool)

(assert (=> b!1218202 (= e!781957 tp!346163)))

(declare-fun b!1218203 () Bool)

(declare-fun tp!346160 () Bool)

(declare-fun tp!346164 () Bool)

(assert (=> b!1218203 (= e!781957 (and tp!346160 tp!346164))))

(declare-fun b!1218200 () Bool)

(assert (=> b!1218200 (= e!781957 tp_is_empty!6353)))

(assert (=> b!1217866 (= tp!346086 e!781957)))

(assert (= (and b!1217866 (is-ElementMatch!3416 (regex!2146 (rule!3571 (h!17859 tokens!556))))) b!1218200))

(assert (= (and b!1217866 (is-Concat!5631 (regex!2146 (rule!3571 (h!17859 tokens!556))))) b!1218201))

(assert (= (and b!1217866 (is-Star!3416 (regex!2146 (rule!3571 (h!17859 tokens!556))))) b!1218202))

(assert (= (and b!1217866 (is-Union!3416 (regex!2146 (rule!3571 (h!17859 tokens!556))))) b!1218203))

(declare-fun b!1218206 () Bool)

(declare-fun e!781958 () Bool)

(declare-fun tp!346165 () Bool)

(assert (=> b!1218206 (= e!781958 (and tp_is_empty!6353 tp!346165))))

(assert (=> b!1217872 (= tp!346093 e!781958)))

(assert (= (and b!1217872 (is-Cons!12456 (t!113336 input!2346))) b!1218206))

(declare-fun b!1218236 () Bool)

(declare-fun b_free!29397 () Bool)

(declare-fun b_next!30101 () Bool)

(assert (=> b!1218236 (= b_free!29397 (not b_next!30101))))

(declare-fun tp!346176 () Bool)

(declare-fun b_and!82857 () Bool)

(assert (=> b!1218236 (= tp!346176 b_and!82857)))

(declare-fun b_free!29399 () Bool)

(declare-fun b_next!30103 () Bool)

(assert (=> b!1218236 (= b_free!29399 (not b_next!30103))))

(declare-fun t!113358 () Bool)

(declare-fun tb!66909 () Bool)

(assert (=> (and b!1218236 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 (t!113338 tokens!556))))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556))))) t!113358) tb!66909))

(declare-fun result!81022 () Bool)

(assert (= result!81022 result!81000))

(assert (=> d!347716 t!113358))

(declare-fun tb!66911 () Bool)

(declare-fun t!113360 () Bool)

(assert (=> (and b!1218236 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 (t!113338 tokens!556))))) (toChars!3138 (transformation!2146 (rule!3571 (_1!7006 lt!416035))))) t!113360) tb!66911))

(declare-fun result!81024 () Bool)

(assert (= result!81024 result!81006))

(assert (=> d!347718 t!113360))

(assert (=> b!1218060 t!113358))

(declare-fun tp!346178 () Bool)

(declare-fun b_and!82859 () Bool)

(assert (=> b!1218236 (= tp!346178 (and (=> t!113358 result!81022) (=> t!113360 result!81024) b_and!82859))))

(declare-fun tp!346180 () Bool)

(declare-fun e!781980 () Bool)

(declare-fun e!781979 () Bool)

(declare-fun b!1218235 () Bool)

(assert (=> b!1218235 (= e!781979 (and tp!346180 (inv!16654 (tag!2408 (rule!3571 (h!17859 (t!113338 tokens!556))))) (inv!16657 (transformation!2146 (rule!3571 (h!17859 (t!113338 tokens!556))))) e!781980))))

(assert (=> b!1218236 (= e!781980 (and tp!346176 tp!346178))))

(declare-fun tp!346179 () Bool)

(declare-fun b!1218234 () Bool)

(declare-fun e!781977 () Bool)

(assert (=> b!1218234 (= e!781977 (and (inv!21 (value!69759 (h!17859 (t!113338 tokens!556)))) e!781979 tp!346179))))

(declare-fun b!1218233 () Bool)

(declare-fun tp!346177 () Bool)

(declare-fun e!781978 () Bool)

(assert (=> b!1218233 (= e!781978 (and (inv!16658 (h!17859 (t!113338 tokens!556))) e!781977 tp!346177))))

(assert (=> b!1217862 (= tp!346091 e!781978)))

(assert (= b!1218235 b!1218236))

(assert (= b!1218234 b!1218235))

(assert (= b!1218233 b!1218234))

(assert (= (and b!1217862 (is-Cons!12458 (t!113338 tokens!556))) b!1218233))

(declare-fun m!1392029 () Bool)

(assert (=> b!1218235 m!1392029))

(declare-fun m!1392031 () Bool)

(assert (=> b!1218235 m!1392031))

(declare-fun m!1392033 () Bool)

(assert (=> b!1218234 m!1392033))

(declare-fun m!1392035 () Bool)

(assert (=> b!1218233 m!1392035))

(declare-fun b_lambda!35925 () Bool)

(assert (= b_lambda!35919 (or (and b!1217856 b_free!29379) (and b!1217868 b_free!29383 (= (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) (and b!1218199 b_free!29395 (= (toChars!3138 (transformation!2146 (h!17860 (t!113339 rules!2728)))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) (and b!1218236 b_free!29399 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 (t!113338 tokens!556))))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) b_lambda!35925)))

(declare-fun b_lambda!35927 () Bool)

(assert (= b_lambda!35923 (or (and b!1217856 b_free!29379) (and b!1217868 b_free!29383 (= (toChars!3138 (transformation!2146 (h!17860 rules!2728))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) (and b!1218199 b_free!29395 (= (toChars!3138 (transformation!2146 (h!17860 (t!113339 rules!2728)))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) (and b!1218236 b_free!29399 (= (toChars!3138 (transformation!2146 (rule!3571 (h!17859 (t!113338 tokens!556))))) (toChars!3138 (transformation!2146 (rule!3571 (h!17859 tokens!556)))))) b_lambda!35927)))

(push 1)

(assert (not tb!66897))

(assert (not b!1218202))

(assert (not b!1217958))

(assert (not b!1218132))

(assert (not b_next!30087))

(assert (not b_lambda!35921))

(assert (not b!1218078))

(assert (not b!1218201))

(assert (not d!347690))

(assert (not d!347694))

(assert (not b!1218163))

(assert (not b_next!30097))

(assert (not tb!66901))

(assert b_and!82849)

(assert (not b!1218206))

(assert (not b!1218061))

(assert (not d!347752))

(assert (not bm!84583))

(assert (not b!1218160))

(assert (not b!1218198))

(assert (not b!1218054))

(assert (not d!347688))

(assert (not b!1218079))

(assert (not d!347742))

(assert (not b!1218187))

(assert (not d!347716))

(assert (not b!1218165))

(assert (not b!1218157))

(assert (not b!1218055))

(assert (not b!1218161))

(assert (not d!347744))

(assert (not d!347754))

(assert (not b_lambda!35925))

(assert (not d!347746))

(assert (not bm!84580))

(assert (not b!1218159))

(assert b_and!82829)

(assert (not b!1218046))

(assert (not b_next!30081))

(assert (not d!347718))

(assert b_and!82825)

(assert (not b_next!30083))

(assert (not b!1218122))

(assert (not b!1218042))

(assert (not d!347748))

(assert b_and!82857)

(assert (not d!347712))

(assert (not b!1218235))

(assert (not b!1218060))

(assert (not b!1218128))

(assert (not b!1218203))

(assert (not b!1218126))

(assert (not b!1217946))

(assert (not b!1218041))

(assert b_and!82855)

(assert (not b!1218127))

(assert (not b!1218043))

(assert b_and!82853)

(assert (not b!1217960))

(assert (not b!1217959))

(assert (not b!1218075))

(assert (not b_lambda!35927))

(assert (not b!1218174))

(assert (not b!1218136))

(assert (not b!1218186))

(assert (not b_next!30085))

(assert (not b!1218197))

(assert (not d!347732))

(assert (not b!1218166))

(assert (not b!1218234))

(assert (not b_next!30101))

(assert (not b!1217945))

(assert (not b!1218134))

(assert (not b!1218233))

(assert (not b!1218135))

(assert (not b!1218164))

(assert (not b_next!30099))

(assert (not b!1218169))

(assert tp_is_empty!6353)

(assert (not b!1218124))

(assert b_and!82851)

(assert b_and!82859)

(assert (not d!347724))

(assert (not b!1218162))

(assert (not d!347740))

(assert (not b!1218188))

(assert (not b_next!30103))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!30087))

(assert (not b_next!30097))

(assert b_and!82849)

(assert b_and!82829)

(assert (not b_next!30083))

(assert b_and!82857)

(assert b_and!82855)

(assert b_and!82853)

(assert (not b_next!30085))

(assert (not b_next!30101))

(assert (not b_next!30099))

(assert (not b_next!30103))

(assert (not b_next!30081))

(assert b_and!82825)

(assert b_and!82851)

(assert b_and!82859)

(check-sat)

(pop 1)

