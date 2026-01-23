; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746570 () Bool)

(assert start!746570)

(declare-fun b!7909770 () Bool)

(declare-fun b_free!135179 () Bool)

(declare-fun b_next!135969 () Bool)

(assert (=> b!7909770 (= b_free!135179 (not b_next!135969))))

(declare-fun tp!2356324 () Bool)

(declare-fun b_and!353435 () Bool)

(assert (=> b!7909770 (= tp!2356324 b_and!353435)))

(declare-fun b_free!135181 () Bool)

(declare-fun b_next!135971 () Bool)

(assert (=> b!7909770 (= b_free!135181 (not b_next!135971))))

(declare-fun tp!2356323 () Bool)

(declare-fun b_and!353437 () Bool)

(assert (=> b!7909770 (= tp!2356323 b_and!353437)))

(declare-fun b!7909767 () Bool)

(declare-fun e!4669128 () Bool)

(declare-datatypes ((List!74479 0))(
  ( (Nil!74355) (Cons!74355 (h!80803 (_ BitVec 16)) (t!389840 List!74479)) )
))
(declare-datatypes ((C!43054 0))(
  ( (C!43055 (val!31991 Int)) )
))
(declare-datatypes ((List!74480 0))(
  ( (Nil!74356) (Cons!74356 (h!80804 C!43054) (t!389841 List!74480)) )
))
(declare-datatypes ((IArray!31727 0))(
  ( (IArray!31728 (innerList!15921 List!74480)) )
))
(declare-datatypes ((Conc!15833 0))(
  ( (Node!15833 (left!56730 Conc!15833) (right!57060 Conc!15833) (csize!31896 Int) (cheight!16044 Int)) (Leaf!30131 (xs!19215 IArray!31727) (csize!31897 Int)) (Empty!15833) )
))
(declare-datatypes ((BalanceConc!30784 0))(
  ( (BalanceConc!30785 (c!1451136 Conc!15833)) )
))
(declare-datatypes ((TokenValue!8975 0))(
  ( (FloatLiteralValue!17950 (text!63270 List!74479)) (TokenValueExt!8974 (__x!35237 Int)) (Broken!44875 (value!288734 List!74479)) (Object!9098) (End!8975) (Def!8975) (Underscore!8975) (Match!8975) (Else!8975) (Error!8975) (Case!8975) (If!8975) (Extends!8975) (Abstract!8975) (Class!8975) (Val!8975) (DelimiterValue!17950 (del!9035 List!74479)) (KeywordValue!8981 (value!288735 List!74479)) (CommentValue!17950 (value!288736 List!74479)) (WhitespaceValue!17950 (value!288737 List!74479)) (IndentationValue!8975 (value!288738 List!74479)) (String!83298) (Int32!8975) (Broken!44876 (value!288739 List!74479)) (Boolean!8976) (Unit!169389) (OperatorValue!8978 (op!9035 List!74479)) (IdentifierValue!17950 (value!288740 List!74479)) (IdentifierValue!17951 (value!288741 List!74479)) (WhitespaceValue!17951 (value!288742 List!74479)) (True!17950) (False!17950) (Broken!44877 (value!288743 List!74479)) (Broken!44878 (value!288744 List!74479)) (True!17951) (RightBrace!8975) (RightBracket!8975) (Colon!8975) (Null!8975) (Comma!8975) (LeftBracket!8975) (False!17951) (LeftBrace!8975) (ImaginaryLiteralValue!8975 (text!63271 List!74479)) (StringLiteralValue!26925 (value!288745 List!74479)) (EOFValue!8975 (value!288746 List!74479)) (IdentValue!8975 (value!288747 List!74479)) (DelimiterValue!17951 (value!288748 List!74479)) (DedentValue!8975 (value!288749 List!74479)) (NewLineValue!8975 (value!288750 List!74479)) (IntegerValue!26925 (value!288751 (_ BitVec 32)) (text!63272 List!74479)) (IntegerValue!26926 (value!288752 Int) (text!63273 List!74479)) (Times!8975) (Or!8975) (Equal!8975) (Minus!8975) (Broken!44879 (value!288753 List!74479)) (And!8975) (Div!8975) (LessEqual!8975) (Mod!8975) (Concat!30337) (Not!8975) (Plus!8975) (SpaceValue!8975 (value!288754 List!74479)) (IntegerValue!26927 (value!288755 Int) (text!63274 List!74479)) (StringLiteralValue!26926 (text!63275 List!74479)) (FloatLiteralValue!17951 (text!63276 List!74479)) (BytesLiteralValue!8975 (value!288756 List!74479)) (CommentValue!17951 (value!288757 List!74479)) (StringLiteralValue!26927 (value!288758 List!74479)) (ErrorTokenValue!8975 (msg!9036 List!74479)) )
))
(declare-datatypes ((String!83299 0))(
  ( (String!83300 (value!288759 String)) )
))
(declare-datatypes ((Regex!21362 0))(
  ( (ElementMatch!21362 (c!1451137 C!43054)) (Concat!30338 (regOne!43236 Regex!21362) (regTwo!43236 Regex!21362)) (EmptyExpr!21362) (Star!21362 (reg!21691 Regex!21362)) (EmptyLang!21362) (Union!21362 (regOne!43237 Regex!21362) (regTwo!43237 Regex!21362)) )
))
(declare-datatypes ((TokenValueInjection!17258 0))(
  ( (TokenValueInjection!17259 (toValue!11716 Int) (toChars!11575 Int)) )
))
(declare-datatypes ((Rule!17118 0))(
  ( (Rule!17119 (regex!8659 Regex!21362) (tag!9523 String!83299) (isSeparator!8659 Bool) (transformation!8659 TokenValueInjection!17258)) )
))
(declare-fun rule!156 () Rule!17118)

(declare-fun validRegex!11668 (Regex!21362) Bool)

(assert (=> b!7909767 (= e!4669128 (validRegex!11668 (regex!8659 rule!156)))))

(declare-fun lt!2686306 () List!74480)

(declare-datatypes ((Token!15730 0))(
  ( (Token!15731 (value!288760 TokenValue!8975) (rule!11959 Rule!17118) (size!43119 Int) (originalCharacters!8896 List!74480)) )
))
(declare-datatypes ((tuple2!70402 0))(
  ( (tuple2!70403 (_1!38504 Token!15730) (_2!38504 List!74480)) )
))
(declare-datatypes ((Option!17937 0))(
  ( (None!17936) (Some!17936 (v!55093 tuple2!70402)) )
))
(declare-fun lt!2686305 () Option!17937)

(declare-fun list!19303 (BalanceConc!30784) List!74480)

(declare-fun charsOf!5597 (Token!15730) BalanceConc!30784)

(declare-fun get!26737 (Option!17937) tuple2!70402)

(assert (=> b!7909767 (= lt!2686306 (list!19303 (charsOf!5597 (_1!38504 (get!26737 lt!2686305)))))))

(declare-fun res!3139413 () Bool)

(declare-fun e!4669126 () Bool)

(assert (=> start!746570 (=> (not res!3139413) (not e!4669126))))

(declare-datatypes ((LexerInterface!8251 0))(
  ( (LexerInterfaceExt!8248 (__x!35238 Int)) (Lexer!8249) )
))
(declare-fun thiss!15815 () LexerInterface!8251)

(assert (=> start!746570 (= res!3139413 (is-Lexer!8249 thiss!15815))))

(assert (=> start!746570 e!4669126))

(assert (=> start!746570 true))

(declare-fun e!4669123 () Bool)

(assert (=> start!746570 e!4669123))

(declare-fun e!4669127 () Bool)

(assert (=> start!746570 e!4669127))

(declare-fun b!7909768 () Bool)

(declare-fun e!4669124 () Bool)

(assert (=> b!7909768 (= e!4669124 (not e!4669128))))

(declare-fun res!3139414 () Bool)

(assert (=> b!7909768 (=> res!3139414 e!4669128)))

(declare-fun isEmpty!42688 (Option!17937) Bool)

(assert (=> b!7909768 (= res!3139414 (isEmpty!42688 lt!2686305))))

(declare-datatypes ((tuple2!70404 0))(
  ( (tuple2!70405 (_1!38505 List!74480) (_2!38505 List!74480)) )
))
(declare-fun lt!2686307 () tuple2!70404)

(declare-fun lt!2686304 () BalanceConc!30784)

(declare-fun apply!14368 (TokenValueInjection!17258 BalanceConc!30784) TokenValue!8975)

(declare-fun size!43120 (BalanceConc!30784) Int)

(assert (=> b!7909768 (= lt!2686305 (Some!17936 (tuple2!70403 (Token!15731 (apply!14368 (transformation!8659 rule!156) lt!2686304) rule!156 (size!43120 lt!2686304) (_1!38505 lt!2686307)) (_2!38505 lt!2686307))))))

(declare-datatypes ((Unit!169390 0))(
  ( (Unit!169391) )
))
(declare-fun lt!2686309 () Unit!169390)

(declare-fun lemmaSemiInverse!2679 (TokenValueInjection!17258 BalanceConc!30784) Unit!169390)

(assert (=> b!7909768 (= lt!2686309 (lemmaSemiInverse!2679 (transformation!8659 rule!156) lt!2686304))))

(declare-fun seqFromList!6186 (List!74480) BalanceConc!30784)

(assert (=> b!7909768 (= lt!2686304 (seqFromList!6186 (_1!38505 lt!2686307)))))

(declare-fun e!4669129 () Bool)

(assert (=> b!7909768 e!4669129))

(declare-fun res!3139415 () Bool)

(assert (=> b!7909768 (=> res!3139415 e!4669129)))

(declare-fun lt!2686303 () tuple2!70404)

(declare-fun isEmpty!42689 (List!74480) Bool)

(assert (=> b!7909768 (= res!3139415 (isEmpty!42689 (_1!38505 lt!2686303)))))

(declare-fun input!1480 () List!74480)

(declare-fun findLongestMatchInner!2169 (Regex!21362 List!74480 Int List!74480 List!74480 Int) tuple2!70404)

(declare-fun size!43121 (List!74480) Int)

(assert (=> b!7909768 (= lt!2686303 (findLongestMatchInner!2169 (regex!8659 rule!156) Nil!74356 (size!43121 Nil!74356) input!1480 input!1480 (size!43121 input!1480)))))

(declare-fun lt!2686308 () Unit!169390)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2132 (Regex!21362 List!74480) Unit!169390)

(assert (=> b!7909768 (= lt!2686308 (longestMatchIsAcceptedByMatchOrIsEmpty!2132 (regex!8659 rule!156) input!1480))))

(declare-fun tp!2356322 () Bool)

(declare-fun e!4669130 () Bool)

(declare-fun b!7909769 () Bool)

(declare-fun inv!95392 (String!83299) Bool)

(declare-fun inv!95395 (TokenValueInjection!17258) Bool)

(assert (=> b!7909769 (= e!4669123 (and tp!2356322 (inv!95392 (tag!9523 rule!156)) (inv!95395 (transformation!8659 rule!156)) e!4669130))))

(assert (=> b!7909770 (= e!4669130 (and tp!2356324 tp!2356323))))

(declare-fun b!7909771 () Bool)

(declare-fun tp_is_empty!53099 () Bool)

(declare-fun tp!2356321 () Bool)

(assert (=> b!7909771 (= e!4669127 (and tp_is_empty!53099 tp!2356321))))

(declare-fun b!7909772 () Bool)

(declare-fun res!3139416 () Bool)

(assert (=> b!7909772 (=> (not res!3139416) (not e!4669126))))

(declare-fun ruleValid!3970 (LexerInterface!8251 Rule!17118) Bool)

(assert (=> b!7909772 (= res!3139416 (ruleValid!3970 thiss!15815 rule!156))))

(declare-fun b!7909773 () Bool)

(assert (=> b!7909773 (= e!4669126 e!4669124)))

(declare-fun res!3139417 () Bool)

(assert (=> b!7909773 (=> (not res!3139417) (not e!4669124))))

(assert (=> b!7909773 (= res!3139417 (not (isEmpty!42689 (_1!38505 lt!2686307))))))

(declare-fun findLongestMatch!1952 (Regex!21362 List!74480) tuple2!70404)

(assert (=> b!7909773 (= lt!2686307 (findLongestMatch!1952 (regex!8659 rule!156) input!1480))))

(declare-fun b!7909774 () Bool)

(declare-fun matchR!10683 (Regex!21362 List!74480) Bool)

(assert (=> b!7909774 (= e!4669129 (matchR!10683 (regex!8659 rule!156) (_1!38505 lt!2686303)))))

(assert (= (and start!746570 res!3139413) b!7909772))

(assert (= (and b!7909772 res!3139416) b!7909773))

(assert (= (and b!7909773 res!3139417) b!7909768))

(assert (= (and b!7909768 (not res!3139415)) b!7909774))

(assert (= (and b!7909768 (not res!3139414)) b!7909767))

(assert (= b!7909769 b!7909770))

(assert (= start!746570 b!7909769))

(assert (= (and start!746570 (is-Cons!74356 input!1480)) b!7909771))

(declare-fun m!8283344 () Bool)

(assert (=> b!7909773 m!8283344))

(declare-fun m!8283346 () Bool)

(assert (=> b!7909773 m!8283346))

(declare-fun m!8283348 () Bool)

(assert (=> b!7909768 m!8283348))

(declare-fun m!8283350 () Bool)

(assert (=> b!7909768 m!8283350))

(assert (=> b!7909768 m!8283348))

(declare-fun m!8283352 () Bool)

(assert (=> b!7909768 m!8283352))

(declare-fun m!8283354 () Bool)

(assert (=> b!7909768 m!8283354))

(declare-fun m!8283356 () Bool)

(assert (=> b!7909768 m!8283356))

(assert (=> b!7909768 m!8283352))

(declare-fun m!8283358 () Bool)

(assert (=> b!7909768 m!8283358))

(declare-fun m!8283360 () Bool)

(assert (=> b!7909768 m!8283360))

(declare-fun m!8283362 () Bool)

(assert (=> b!7909768 m!8283362))

(declare-fun m!8283364 () Bool)

(assert (=> b!7909768 m!8283364))

(declare-fun m!8283366 () Bool)

(assert (=> b!7909768 m!8283366))

(declare-fun m!8283368 () Bool)

(assert (=> b!7909767 m!8283368))

(declare-fun m!8283370 () Bool)

(assert (=> b!7909767 m!8283370))

(declare-fun m!8283372 () Bool)

(assert (=> b!7909767 m!8283372))

(assert (=> b!7909767 m!8283372))

(declare-fun m!8283374 () Bool)

(assert (=> b!7909767 m!8283374))

(declare-fun m!8283376 () Bool)

(assert (=> b!7909769 m!8283376))

(declare-fun m!8283378 () Bool)

(assert (=> b!7909769 m!8283378))

(declare-fun m!8283380 () Bool)

(assert (=> b!7909772 m!8283380))

(declare-fun m!8283382 () Bool)

(assert (=> b!7909774 m!8283382))

(push 1)

(assert (not b!7909771))

(assert (not b!7909774))

(assert (not b_next!135969))

(assert (not b_next!135971))

(assert tp_is_empty!53099)

(assert (not b!7909768))

(assert (not b!7909767))

(assert (not b!7909772))

(assert (not b!7909773))

(assert b_and!353437)

(assert (not b!7909769))

(assert b_and!353435)

(check-sat)

(pop 1)

(push 1)

(assert b_and!353435)

(assert b_and!353437)

(assert (not b_next!135969))

(assert (not b_next!135971))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7909851 () Bool)

(declare-fun e!4669189 () Bool)

(declare-fun derivativeStep!6445 (Regex!21362 C!43054) Regex!21362)

(declare-fun head!16166 (List!74480) C!43054)

(declare-fun tail!15709 (List!74480) List!74480)

(assert (=> b!7909851 (= e!4669189 (matchR!10683 (derivativeStep!6445 (regex!8659 rule!156) (head!16166 (_1!38505 lt!2686303))) (tail!15709 (_1!38505 lt!2686303))))))

(declare-fun b!7909853 () Bool)

(declare-fun e!4669188 () Bool)

(declare-fun e!4669187 () Bool)

(assert (=> b!7909853 (= e!4669188 e!4669187)))

(declare-fun res!3139473 () Bool)

(assert (=> b!7909853 (=> res!3139473 e!4669187)))

(declare-fun call!733567 () Bool)

(assert (=> b!7909853 (= res!3139473 call!733567)))

(declare-fun b!7909854 () Bool)

(declare-fun res!3139475 () Bool)

(assert (=> b!7909854 (=> res!3139475 e!4669187)))

(assert (=> b!7909854 (= res!3139475 (not (isEmpty!42689 (tail!15709 (_1!38505 lt!2686303)))))))

(declare-fun b!7909855 () Bool)

(declare-fun e!4669192 () Bool)

(declare-fun lt!2686333 () Bool)

(assert (=> b!7909855 (= e!4669192 (= lt!2686333 call!733567))))

(declare-fun b!7909856 () Bool)

(declare-fun e!4669191 () Bool)

(assert (=> b!7909856 (= e!4669191 e!4669188)))

(declare-fun res!3139469 () Bool)

(assert (=> b!7909856 (=> (not res!3139469) (not e!4669188))))

(assert (=> b!7909856 (= res!3139469 (not lt!2686333))))

(declare-fun b!7909857 () Bool)

(declare-fun res!3139471 () Bool)

(assert (=> b!7909857 (=> res!3139471 e!4669191)))

(assert (=> b!7909857 (= res!3139471 (not (is-ElementMatch!21362 (regex!8659 rule!156))))))

(declare-fun e!4669190 () Bool)

(assert (=> b!7909857 (= e!4669190 e!4669191)))

(declare-fun b!7909858 () Bool)

(assert (=> b!7909858 (= e!4669192 e!4669190)))

(declare-fun c!1451151 () Bool)

(assert (=> b!7909858 (= c!1451151 (is-EmptyLang!21362 (regex!8659 rule!156)))))

(declare-fun b!7909859 () Bool)

(declare-fun e!4669186 () Bool)

(assert (=> b!7909859 (= e!4669186 (= (head!16166 (_1!38505 lt!2686303)) (c!1451137 (regex!8659 rule!156))))))

(declare-fun b!7909860 () Bool)

(declare-fun res!3139476 () Bool)

(assert (=> b!7909860 (=> res!3139476 e!4669191)))

(assert (=> b!7909860 (= res!3139476 e!4669186)))

(declare-fun res!3139472 () Bool)

(assert (=> b!7909860 (=> (not res!3139472) (not e!4669186))))

(assert (=> b!7909860 (= res!3139472 lt!2686333)))

(declare-fun b!7909861 () Bool)

(declare-fun res!3139470 () Bool)

(assert (=> b!7909861 (=> (not res!3139470) (not e!4669186))))

(assert (=> b!7909861 (= res!3139470 (not call!733567))))

(declare-fun bm!733562 () Bool)

(assert (=> bm!733562 (= call!733567 (isEmpty!42689 (_1!38505 lt!2686303)))))

(declare-fun b!7909862 () Bool)

(declare-fun nullable!9503 (Regex!21362) Bool)

(assert (=> b!7909862 (= e!4669189 (nullable!9503 (regex!8659 rule!156)))))

(declare-fun d!2359946 () Bool)

(assert (=> d!2359946 e!4669192))

(declare-fun c!1451152 () Bool)

(assert (=> d!2359946 (= c!1451152 (is-EmptyExpr!21362 (regex!8659 rule!156)))))

(assert (=> d!2359946 (= lt!2686333 e!4669189)))

(declare-fun c!1451153 () Bool)

(assert (=> d!2359946 (= c!1451153 (isEmpty!42689 (_1!38505 lt!2686303)))))

(assert (=> d!2359946 (validRegex!11668 (regex!8659 rule!156))))

(assert (=> d!2359946 (= (matchR!10683 (regex!8659 rule!156) (_1!38505 lt!2686303)) lt!2686333)))

(declare-fun b!7909852 () Bool)

(declare-fun res!3139474 () Bool)

(assert (=> b!7909852 (=> (not res!3139474) (not e!4669186))))

(assert (=> b!7909852 (= res!3139474 (isEmpty!42689 (tail!15709 (_1!38505 lt!2686303))))))

(declare-fun b!7909863 () Bool)

(assert (=> b!7909863 (= e!4669187 (not (= (head!16166 (_1!38505 lt!2686303)) (c!1451137 (regex!8659 rule!156)))))))

(declare-fun b!7909864 () Bool)

(assert (=> b!7909864 (= e!4669190 (not lt!2686333))))

(assert (= (and d!2359946 c!1451153) b!7909862))

(assert (= (and d!2359946 (not c!1451153)) b!7909851))

(assert (= (and d!2359946 c!1451152) b!7909855))

(assert (= (and d!2359946 (not c!1451152)) b!7909858))

(assert (= (and b!7909858 c!1451151) b!7909864))

(assert (= (and b!7909858 (not c!1451151)) b!7909857))

(assert (= (and b!7909857 (not res!3139471)) b!7909860))

(assert (= (and b!7909860 res!3139472) b!7909861))

(assert (= (and b!7909861 res!3139470) b!7909852))

(assert (= (and b!7909852 res!3139474) b!7909859))

(assert (= (and b!7909860 (not res!3139476)) b!7909856))

(assert (= (and b!7909856 res!3139469) b!7909853))

(assert (= (and b!7909853 (not res!3139473)) b!7909854))

(assert (= (and b!7909854 (not res!3139475)) b!7909863))

(assert (= (or b!7909855 b!7909853 b!7909861) bm!733562))

(declare-fun m!8283426 () Bool)

(assert (=> b!7909851 m!8283426))

(assert (=> b!7909851 m!8283426))

(declare-fun m!8283428 () Bool)

(assert (=> b!7909851 m!8283428))

(declare-fun m!8283430 () Bool)

(assert (=> b!7909851 m!8283430))

(assert (=> b!7909851 m!8283428))

(assert (=> b!7909851 m!8283430))

(declare-fun m!8283432 () Bool)

(assert (=> b!7909851 m!8283432))

(assert (=> b!7909852 m!8283430))

(assert (=> b!7909852 m!8283430))

(declare-fun m!8283434 () Bool)

(assert (=> b!7909852 m!8283434))

(assert (=> b!7909854 m!8283430))

(assert (=> b!7909854 m!8283430))

(assert (=> b!7909854 m!8283434))

(declare-fun m!8283436 () Bool)

(assert (=> b!7909862 m!8283436))

(assert (=> d!2359946 m!8283360))

(assert (=> d!2359946 m!8283368))

(assert (=> bm!733562 m!8283360))

(assert (=> b!7909859 m!8283426))

(assert (=> b!7909863 m!8283426))

(assert (=> b!7909774 d!2359946))

(declare-fun d!2359952 () Bool)

(assert (=> d!2359952 (= (isEmpty!42689 (_1!38505 lt!2686307)) (is-Nil!74356 (_1!38505 lt!2686307)))))

(assert (=> b!7909773 d!2359952))

(declare-fun d!2359956 () Bool)

(declare-fun lt!2686359 () tuple2!70404)

(declare-fun ++!18205 (List!74480 List!74480) List!74480)

(assert (=> d!2359956 (= (++!18205 (_1!38505 lt!2686359) (_2!38505 lt!2686359)) input!1480)))

(declare-fun sizeTr!456 (List!74480 Int) Int)

(assert (=> d!2359956 (= lt!2686359 (findLongestMatchInner!2169 (regex!8659 rule!156) Nil!74356 0 input!1480 input!1480 (sizeTr!456 input!1480 0)))))

(declare-fun lt!2686357 () Unit!169390)

(declare-fun lt!2686358 () Unit!169390)

(assert (=> d!2359956 (= lt!2686357 lt!2686358)))

(declare-fun lt!2686354 () List!74480)

(declare-fun lt!2686360 () Int)

(assert (=> d!2359956 (= (sizeTr!456 lt!2686354 lt!2686360) (+ (size!43121 lt!2686354) lt!2686360))))

(declare-fun lemmaSizeTrEqualsSize!455 (List!74480 Int) Unit!169390)

(assert (=> d!2359956 (= lt!2686358 (lemmaSizeTrEqualsSize!455 lt!2686354 lt!2686360))))

(assert (=> d!2359956 (= lt!2686360 0)))

(assert (=> d!2359956 (= lt!2686354 Nil!74356)))

(declare-fun lt!2686353 () Unit!169390)

(declare-fun lt!2686356 () Unit!169390)

(assert (=> d!2359956 (= lt!2686353 lt!2686356)))

(declare-fun lt!2686355 () Int)

(assert (=> d!2359956 (= (sizeTr!456 input!1480 lt!2686355) (+ (size!43121 input!1480) lt!2686355))))

(assert (=> d!2359956 (= lt!2686356 (lemmaSizeTrEqualsSize!455 input!1480 lt!2686355))))

(assert (=> d!2359956 (= lt!2686355 0)))

(assert (=> d!2359956 (validRegex!11668 (regex!8659 rule!156))))

(assert (=> d!2359956 (= (findLongestMatch!1952 (regex!8659 rule!156) input!1480) lt!2686359)))

(declare-fun bs!1968219 () Bool)

(assert (= bs!1968219 d!2359956))

(declare-fun m!8283454 () Bool)

(assert (=> bs!1968219 m!8283454))

(declare-fun m!8283456 () Bool)

(assert (=> bs!1968219 m!8283456))

(declare-fun m!8283458 () Bool)

(assert (=> bs!1968219 m!8283458))

(assert (=> bs!1968219 m!8283456))

(declare-fun m!8283460 () Bool)

(assert (=> bs!1968219 m!8283460))

(assert (=> bs!1968219 m!8283368))

(declare-fun m!8283462 () Bool)

(assert (=> bs!1968219 m!8283462))

(declare-fun m!8283464 () Bool)

(assert (=> bs!1968219 m!8283464))

(declare-fun m!8283466 () Bool)

(assert (=> bs!1968219 m!8283466))

(declare-fun m!8283468 () Bool)

(assert (=> bs!1968219 m!8283468))

(assert (=> bs!1968219 m!8283352))

(assert (=> b!7909773 d!2359956))

(declare-fun d!2359966 () Bool)

(assert (=> d!2359966 (= (isEmpty!42689 (_1!38505 lt!2686303)) (is-Nil!74356 (_1!38505 lt!2686303)))))

(assert (=> b!7909768 d!2359966))

(declare-fun d!2359968 () Bool)

(declare-fun lt!2686363 () Int)

(assert (=> d!2359968 (>= lt!2686363 0)))

(declare-fun e!4669205 () Int)

(assert (=> d!2359968 (= lt!2686363 e!4669205)))

(declare-fun c!1451158 () Bool)

(assert (=> d!2359968 (= c!1451158 (is-Nil!74356 input!1480))))

(assert (=> d!2359968 (= (size!43121 input!1480) lt!2686363)))

(declare-fun b!7909883 () Bool)

(assert (=> b!7909883 (= e!4669205 0)))

(declare-fun b!7909884 () Bool)

(assert (=> b!7909884 (= e!4669205 (+ 1 (size!43121 (t!389841 input!1480))))))

(assert (= (and d!2359968 c!1451158) b!7909883))

(assert (= (and d!2359968 (not c!1451158)) b!7909884))

(declare-fun m!8283470 () Bool)

(assert (=> b!7909884 m!8283470))

(assert (=> b!7909768 d!2359968))

(declare-fun d!2359970 () Bool)

(declare-fun lt!2686364 () Int)

(assert (=> d!2359970 (>= lt!2686364 0)))

(declare-fun e!4669206 () Int)

(assert (=> d!2359970 (= lt!2686364 e!4669206)))

(declare-fun c!1451159 () Bool)

(assert (=> d!2359970 (= c!1451159 (is-Nil!74356 Nil!74356))))

(assert (=> d!2359970 (= (size!43121 Nil!74356) lt!2686364)))

(declare-fun b!7909885 () Bool)

(assert (=> b!7909885 (= e!4669206 0)))

(declare-fun b!7909886 () Bool)

(assert (=> b!7909886 (= e!4669206 (+ 1 (size!43121 (t!389841 Nil!74356))))))

(assert (= (and d!2359970 c!1451159) b!7909885))

(assert (= (and d!2359970 (not c!1451159)) b!7909886))

(declare-fun m!8283472 () Bool)

(assert (=> b!7909886 m!8283472))

(assert (=> b!7909768 d!2359970))

(declare-fun b!7909960 () Bool)

(declare-fun c!1451182 () Bool)

(declare-fun call!733591 () Bool)

(assert (=> b!7909960 (= c!1451182 call!733591)))

(declare-fun lt!2686456 () Unit!169390)

(declare-fun lt!2686461 () Unit!169390)

(assert (=> b!7909960 (= lt!2686456 lt!2686461)))

(declare-fun lt!2686459 () C!43054)

(declare-fun lt!2686457 () List!74480)

(assert (=> b!7909960 (= (++!18205 (++!18205 Nil!74356 (Cons!74356 lt!2686459 Nil!74356)) lt!2686457) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3476 (List!74480 C!43054 List!74480 List!74480) Unit!169390)

(assert (=> b!7909960 (= lt!2686461 (lemmaMoveElementToOtherListKeepsConcatEq!3476 Nil!74356 lt!2686459 lt!2686457 input!1480))))

(assert (=> b!7909960 (= lt!2686457 (tail!15709 input!1480))))

(assert (=> b!7909960 (= lt!2686459 (head!16166 input!1480))))

(declare-fun lt!2686458 () Unit!169390)

(declare-fun lt!2686464 () Unit!169390)

(assert (=> b!7909960 (= lt!2686458 lt!2686464)))

(declare-fun isPrefix!6476 (List!74480 List!74480) Bool)

(declare-fun getSuffix!3689 (List!74480 List!74480) List!74480)

(assert (=> b!7909960 (isPrefix!6476 (++!18205 Nil!74356 (Cons!74356 (head!16166 (getSuffix!3689 input!1480 Nil!74356)) Nil!74356)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1254 (List!74480 List!74480) Unit!169390)

(assert (=> b!7909960 (= lt!2686464 (lemmaAddHeadSuffixToPrefixStillPrefix!1254 Nil!74356 input!1480))))

(declare-fun lt!2686477 () Unit!169390)

(declare-fun lt!2686460 () Unit!169390)

(assert (=> b!7909960 (= lt!2686477 lt!2686460)))

(assert (=> b!7909960 (= lt!2686460 (lemmaAddHeadSuffixToPrefixStillPrefix!1254 Nil!74356 input!1480))))

(declare-fun lt!2686468 () List!74480)

(assert (=> b!7909960 (= lt!2686468 (++!18205 Nil!74356 (Cons!74356 (head!16166 input!1480) Nil!74356)))))

(declare-fun lt!2686463 () Unit!169390)

(declare-fun e!4669253 () Unit!169390)

(assert (=> b!7909960 (= lt!2686463 e!4669253)))

(declare-fun c!1451187 () Bool)

(assert (=> b!7909960 (= c!1451187 (= (size!43121 Nil!74356) (size!43121 input!1480)))))

(declare-fun lt!2686469 () Unit!169390)

(declare-fun lt!2686473 () Unit!169390)

(assert (=> b!7909960 (= lt!2686469 lt!2686473)))

(assert (=> b!7909960 (<= (size!43121 Nil!74356) (size!43121 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1034 (List!74480 List!74480) Unit!169390)

(assert (=> b!7909960 (= lt!2686473 (lemmaIsPrefixThenSmallerEqSize!1034 Nil!74356 input!1480))))

(declare-fun e!4669249 () tuple2!70404)

(declare-fun e!4669251 () tuple2!70404)

(assert (=> b!7909960 (= e!4669249 e!4669251)))

(declare-fun d!2359972 () Bool)

(declare-fun e!4669248 () Bool)

(assert (=> d!2359972 e!4669248))

(declare-fun res!3139514 () Bool)

(assert (=> d!2359972 (=> (not res!3139514) (not e!4669248))))

(declare-fun lt!2686472 () tuple2!70404)

(assert (=> d!2359972 (= res!3139514 (= (++!18205 (_1!38505 lt!2686472) (_2!38505 lt!2686472)) input!1480))))

(declare-fun e!4669254 () tuple2!70404)

(assert (=> d!2359972 (= lt!2686472 e!4669254)))

(declare-fun c!1451185 () Bool)

(declare-fun lostCause!1921 (Regex!21362) Bool)

(assert (=> d!2359972 (= c!1451185 (lostCause!1921 (regex!8659 rule!156)))))

(declare-fun lt!2686475 () Unit!169390)

(declare-fun Unit!169395 () Unit!169390)

(assert (=> d!2359972 (= lt!2686475 Unit!169395)))

(assert (=> d!2359972 (= (getSuffix!3689 input!1480 Nil!74356) input!1480)))

(declare-fun lt!2686454 () Unit!169390)

(declare-fun lt!2686462 () Unit!169390)

(assert (=> d!2359972 (= lt!2686454 lt!2686462)))

(declare-fun lt!2686470 () List!74480)

(assert (=> d!2359972 (= input!1480 lt!2686470)))

(declare-fun lemmaSamePrefixThenSameSuffix!2937 (List!74480 List!74480 List!74480 List!74480 List!74480) Unit!169390)

(assert (=> d!2359972 (= lt!2686462 (lemmaSamePrefixThenSameSuffix!2937 Nil!74356 input!1480 Nil!74356 lt!2686470 input!1480))))

(assert (=> d!2359972 (= lt!2686470 (getSuffix!3689 input!1480 Nil!74356))))

(declare-fun lt!2686476 () Unit!169390)

(declare-fun lt!2686455 () Unit!169390)

(assert (=> d!2359972 (= lt!2686476 lt!2686455)))

(assert (=> d!2359972 (isPrefix!6476 Nil!74356 (++!18205 Nil!74356 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3799 (List!74480 List!74480) Unit!169390)

(assert (=> d!2359972 (= lt!2686455 (lemmaConcatTwoListThenFirstIsPrefix!3799 Nil!74356 input!1480))))

(assert (=> d!2359972 (validRegex!11668 (regex!8659 rule!156))))

(assert (=> d!2359972 (= (findLongestMatchInner!2169 (regex!8659 rule!156) Nil!74356 (size!43121 Nil!74356) input!1480 input!1480 (size!43121 input!1480)) lt!2686472)))

(declare-fun b!7909961 () Bool)

(declare-fun Unit!169396 () Unit!169390)

(assert (=> b!7909961 (= e!4669253 Unit!169396)))

(declare-fun call!733590 () Regex!21362)

(declare-fun bm!733585 () Bool)

(declare-fun call!733596 () List!74480)

(declare-fun call!733593 () tuple2!70404)

(assert (=> bm!733585 (= call!733593 (findLongestMatchInner!2169 call!733590 lt!2686468 (+ (size!43121 Nil!74356) 1) call!733596 input!1480 (size!43121 input!1480)))))

(declare-fun b!7909962 () Bool)

(declare-fun c!1451183 () Bool)

(assert (=> b!7909962 (= c!1451183 call!733591)))

(declare-fun lt!2686453 () Unit!169390)

(declare-fun lt!2686467 () Unit!169390)

(assert (=> b!7909962 (= lt!2686453 lt!2686467)))

(assert (=> b!7909962 (= input!1480 Nil!74356)))

(declare-fun call!733592 () Unit!169390)

(assert (=> b!7909962 (= lt!2686467 call!733592)))

(declare-fun lt!2686471 () Unit!169390)

(declare-fun lt!2686452 () Unit!169390)

(assert (=> b!7909962 (= lt!2686471 lt!2686452)))

(declare-fun call!733595 () Bool)

(assert (=> b!7909962 call!733595))

(declare-fun call!733594 () Unit!169390)

(assert (=> b!7909962 (= lt!2686452 call!733594)))

(declare-fun e!4669247 () tuple2!70404)

(assert (=> b!7909962 (= e!4669249 e!4669247)))

(declare-fun bm!733586 () Bool)

(declare-fun lemmaIsPrefixRefl!3987 (List!74480 List!74480) Unit!169390)

(assert (=> bm!733586 (= call!733594 (lemmaIsPrefixRefl!3987 input!1480 input!1480))))

(declare-fun b!7909963 () Bool)

(declare-fun e!4669250 () tuple2!70404)

(assert (=> b!7909963 (= e!4669251 e!4669250)))

(declare-fun lt!2686451 () tuple2!70404)

(assert (=> b!7909963 (= lt!2686451 call!733593)))

(declare-fun c!1451186 () Bool)

(assert (=> b!7909963 (= c!1451186 (isEmpty!42689 (_1!38505 lt!2686451)))))

(declare-fun b!7909964 () Bool)

(declare-fun Unit!169397 () Unit!169390)

(assert (=> b!7909964 (= e!4669253 Unit!169397)))

(declare-fun lt!2686465 () Unit!169390)

(assert (=> b!7909964 (= lt!2686465 call!733594)))

(assert (=> b!7909964 call!733595))

(declare-fun lt!2686466 () Unit!169390)

(assert (=> b!7909964 (= lt!2686466 lt!2686465)))

(declare-fun lt!2686450 () Unit!169390)

(assert (=> b!7909964 (= lt!2686450 call!733592)))

(assert (=> b!7909964 (= input!1480 Nil!74356)))

(declare-fun lt!2686474 () Unit!169390)

(assert (=> b!7909964 (= lt!2686474 lt!2686450)))

(assert (=> b!7909964 false))

(declare-fun b!7909965 () Bool)

(assert (=> b!7909965 (= e!4669250 lt!2686451)))

(declare-fun b!7909966 () Bool)

(assert (=> b!7909966 (= e!4669251 call!733593)))

(declare-fun b!7909967 () Bool)

(assert (=> b!7909967 (= e!4669250 (tuple2!70405 Nil!74356 input!1480))))

(declare-fun bm!733587 () Bool)

(assert (=> bm!733587 (= call!733591 (nullable!9503 (regex!8659 rule!156)))))

(declare-fun b!7909968 () Bool)

(assert (=> b!7909968 (= e!4669254 e!4669249)))

(declare-fun c!1451184 () Bool)

(assert (=> b!7909968 (= c!1451184 (= (size!43121 Nil!74356) (size!43121 input!1480)))))

(declare-fun b!7909969 () Bool)

(declare-fun e!4669252 () Bool)

(assert (=> b!7909969 (= e!4669252 (>= (size!43121 (_1!38505 lt!2686472)) (size!43121 Nil!74356)))))

(declare-fun b!7909970 () Bool)

(assert (=> b!7909970 (= e!4669247 (tuple2!70405 Nil!74356 Nil!74356))))

(declare-fun bm!733588 () Bool)

(declare-fun call!733597 () C!43054)

(assert (=> bm!733588 (= call!733590 (derivativeStep!6445 (regex!8659 rule!156) call!733597))))

(declare-fun bm!733589 () Bool)

(assert (=> bm!733589 (= call!733595 (isPrefix!6476 input!1480 input!1480))))

(declare-fun bm!733590 () Bool)

(assert (=> bm!733590 (= call!733596 (tail!15709 input!1480))))

(declare-fun bm!733591 () Bool)

(assert (=> bm!733591 (= call!733597 (head!16166 input!1480))))

(declare-fun b!7909971 () Bool)

(assert (=> b!7909971 (= e!4669247 (tuple2!70405 Nil!74356 input!1480))))

(declare-fun b!7909972 () Bool)

(assert (=> b!7909972 (= e!4669254 (tuple2!70405 Nil!74356 input!1480))))

(declare-fun bm!733592 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1569 (List!74480 List!74480 List!74480) Unit!169390)

(assert (=> bm!733592 (= call!733592 (lemmaIsPrefixSameLengthThenSameList!1569 input!1480 Nil!74356 input!1480))))

(declare-fun b!7909973 () Bool)

(assert (=> b!7909973 (= e!4669248 e!4669252)))

(declare-fun res!3139513 () Bool)

(assert (=> b!7909973 (=> res!3139513 e!4669252)))

(assert (=> b!7909973 (= res!3139513 (isEmpty!42689 (_1!38505 lt!2686472)))))

(assert (= (and d!2359972 c!1451185) b!7909972))

(assert (= (and d!2359972 (not c!1451185)) b!7909968))

(assert (= (and b!7909968 c!1451184) b!7909962))

(assert (= (and b!7909968 (not c!1451184)) b!7909960))

(assert (= (and b!7909962 c!1451183) b!7909970))

(assert (= (and b!7909962 (not c!1451183)) b!7909971))

(assert (= (and b!7909960 c!1451187) b!7909964))

(assert (= (and b!7909960 (not c!1451187)) b!7909961))

(assert (= (and b!7909960 c!1451182) b!7909963))

(assert (= (and b!7909960 (not c!1451182)) b!7909966))

(assert (= (and b!7909963 c!1451186) b!7909967))

(assert (= (and b!7909963 (not c!1451186)) b!7909965))

(assert (= (or b!7909963 b!7909966) bm!733591))

(assert (= (or b!7909963 b!7909966) bm!733590))

(assert (= (or b!7909963 b!7909966) bm!733588))

(assert (= (or b!7909963 b!7909966) bm!733585))

(assert (= (or b!7909962 b!7909960) bm!733587))

(assert (= (or b!7909962 b!7909964) bm!733589))

(assert (= (or b!7909962 b!7909964) bm!733586))

(assert (= (or b!7909962 b!7909964) bm!733592))

(assert (= (and d!2359972 res!3139514) b!7909973))

(assert (= (and b!7909973 (not res!3139513)) b!7909969))

(assert (=> bm!733585 m!8283352))

(declare-fun m!8283504 () Bool)

(assert (=> bm!733585 m!8283504))

(assert (=> bm!733587 m!8283436))

(declare-fun m!8283506 () Bool)

(assert (=> b!7909960 m!8283506))

(declare-fun m!8283508 () Bool)

(assert (=> b!7909960 m!8283508))

(declare-fun m!8283510 () Bool)

(assert (=> b!7909960 m!8283510))

(declare-fun m!8283512 () Bool)

(assert (=> b!7909960 m!8283512))

(assert (=> b!7909960 m!8283352))

(declare-fun m!8283514 () Bool)

(assert (=> b!7909960 m!8283514))

(declare-fun m!8283516 () Bool)

(assert (=> b!7909960 m!8283516))

(declare-fun m!8283518 () Bool)

(assert (=> b!7909960 m!8283518))

(declare-fun m!8283520 () Bool)

(assert (=> b!7909960 m!8283520))

(declare-fun m!8283522 () Bool)

(assert (=> b!7909960 m!8283522))

(assert (=> b!7909960 m!8283348))

(declare-fun m!8283524 () Bool)

(assert (=> b!7909960 m!8283524))

(declare-fun m!8283526 () Bool)

(assert (=> b!7909960 m!8283526))

(declare-fun m!8283528 () Bool)

(assert (=> b!7909960 m!8283528))

(assert (=> b!7909960 m!8283526))

(assert (=> b!7909960 m!8283516))

(assert (=> b!7909960 m!8283510))

(declare-fun m!8283530 () Bool)

(assert (=> bm!733592 m!8283530))

(declare-fun m!8283532 () Bool)

(assert (=> bm!733589 m!8283532))

(declare-fun m!8283534 () Bool)

(assert (=> b!7909973 m!8283534))

(declare-fun m!8283536 () Bool)

(assert (=> b!7909963 m!8283536))

(declare-fun m!8283538 () Bool)

(assert (=> d!2359972 m!8283538))

(declare-fun m!8283540 () Bool)

(assert (=> d!2359972 m!8283540))

(declare-fun m!8283542 () Bool)

(assert (=> d!2359972 m!8283542))

(assert (=> d!2359972 m!8283368))

(declare-fun m!8283544 () Bool)

(assert (=> d!2359972 m!8283544))

(declare-fun m!8283546 () Bool)

(assert (=> d!2359972 m!8283546))

(assert (=> d!2359972 m!8283526))

(declare-fun m!8283548 () Bool)

(assert (=> d!2359972 m!8283548))

(assert (=> d!2359972 m!8283540))

(assert (=> bm!733590 m!8283522))

(assert (=> bm!733591 m!8283508))

(declare-fun m!8283550 () Bool)

(assert (=> bm!733586 m!8283550))

(declare-fun m!8283552 () Bool)

(assert (=> bm!733588 m!8283552))

(declare-fun m!8283554 () Bool)

(assert (=> b!7909969 m!8283554))

(assert (=> b!7909969 m!8283348))

(assert (=> b!7909768 d!2359972))

(declare-fun d!2359984 () Bool)

(declare-fun fromListB!2793 (List!74480) BalanceConc!30784)

(assert (=> d!2359984 (= (seqFromList!6186 (_1!38505 lt!2686307)) (fromListB!2793 (_1!38505 lt!2686307)))))

(declare-fun bs!1968221 () Bool)

(assert (= bs!1968221 d!2359984))

(declare-fun m!8283556 () Bool)

(assert (=> bs!1968221 m!8283556))

(assert (=> b!7909768 d!2359984))

(declare-fun d!2359986 () Bool)

(declare-fun e!4669257 () Bool)

(assert (=> d!2359986 e!4669257))

(declare-fun res!3139517 () Bool)

(assert (=> d!2359986 (=> res!3139517 e!4669257)))

(assert (=> d!2359986 (= res!3139517 (isEmpty!42689 (_1!38505 (findLongestMatchInner!2169 (regex!8659 rule!156) Nil!74356 (size!43121 Nil!74356) input!1480 input!1480 (size!43121 input!1480)))))))

(declare-fun lt!2686480 () Unit!169390)

(declare-fun choose!59740 (Regex!21362 List!74480) Unit!169390)

(assert (=> d!2359986 (= lt!2686480 (choose!59740 (regex!8659 rule!156) input!1480))))

(assert (=> d!2359986 (validRegex!11668 (regex!8659 rule!156))))

(assert (=> d!2359986 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2132 (regex!8659 rule!156) input!1480) lt!2686480)))

(declare-fun b!7909976 () Bool)

(assert (=> b!7909976 (= e!4669257 (matchR!10683 (regex!8659 rule!156) (_1!38505 (findLongestMatchInner!2169 (regex!8659 rule!156) Nil!74356 (size!43121 Nil!74356) input!1480 input!1480 (size!43121 input!1480)))))))

(assert (= (and d!2359986 (not res!3139517)) b!7909976))

(assert (=> d!2359986 m!8283348))

(assert (=> d!2359986 m!8283368))

(assert (=> d!2359986 m!8283348))

(assert (=> d!2359986 m!8283352))

(assert (=> d!2359986 m!8283354))

(declare-fun m!8283558 () Bool)

(assert (=> d!2359986 m!8283558))

(assert (=> d!2359986 m!8283352))

(declare-fun m!8283560 () Bool)

(assert (=> d!2359986 m!8283560))

(assert (=> b!7909976 m!8283348))

(assert (=> b!7909976 m!8283352))

(assert (=> b!7909976 m!8283348))

(assert (=> b!7909976 m!8283352))

(assert (=> b!7909976 m!8283354))

(declare-fun m!8283562 () Bool)

(assert (=> b!7909976 m!8283562))

(assert (=> b!7909768 d!2359986))

(declare-fun d!2359988 () Bool)

(declare-fun lt!2686483 () Int)

(assert (=> d!2359988 (= lt!2686483 (size!43121 (list!19303 lt!2686304)))))

(declare-fun size!43125 (Conc!15833) Int)

(assert (=> d!2359988 (= lt!2686483 (size!43125 (c!1451136 lt!2686304)))))

(assert (=> d!2359988 (= (size!43120 lt!2686304) lt!2686483)))

(declare-fun bs!1968222 () Bool)

(assert (= bs!1968222 d!2359988))

(declare-fun m!8283564 () Bool)

(assert (=> bs!1968222 m!8283564))

(assert (=> bs!1968222 m!8283564))

(declare-fun m!8283566 () Bool)

(assert (=> bs!1968222 m!8283566))

(declare-fun m!8283568 () Bool)

(assert (=> bs!1968222 m!8283568))

(assert (=> b!7909768 d!2359988))

(declare-fun d!2359990 () Bool)

(declare-fun dynLambda!30118 (Int BalanceConc!30784) TokenValue!8975)

(assert (=> d!2359990 (= (apply!14368 (transformation!8659 rule!156) lt!2686304) (dynLambda!30118 (toValue!11716 (transformation!8659 rule!156)) lt!2686304))))

(declare-fun b_lambda!289957 () Bool)

(assert (=> (not b_lambda!289957) (not d!2359990)))

(declare-fun t!389847 () Bool)

(declare-fun tb!263201 () Bool)

(assert (=> (and b!7909770 (= (toValue!11716 (transformation!8659 rule!156)) (toValue!11716 (transformation!8659 rule!156))) t!389847) tb!263201))

(declare-fun result!360482 () Bool)

(declare-fun inv!21 (TokenValue!8975) Bool)

(assert (=> tb!263201 (= result!360482 (inv!21 (dynLambda!30118 (toValue!11716 (transformation!8659 rule!156)) lt!2686304)))))

(declare-fun m!8283570 () Bool)

(assert (=> tb!263201 m!8283570))

(assert (=> d!2359990 t!389847))

(declare-fun b_and!353445 () Bool)

(assert (= b_and!353435 (and (=> t!389847 result!360482) b_and!353445)))

(declare-fun m!8283572 () Bool)

(assert (=> d!2359990 m!8283572))

(assert (=> b!7909768 d!2359990))

(declare-fun d!2359992 () Bool)

(assert (=> d!2359992 (= (isEmpty!42688 lt!2686305) (not (is-Some!17936 lt!2686305)))))

(assert (=> b!7909768 d!2359992))

(declare-fun b!7909983 () Bool)

(declare-fun e!4669263 () Bool)

(assert (=> b!7909983 (= e!4669263 true)))

(declare-fun d!2359994 () Bool)

(assert (=> d!2359994 e!4669263))

(assert (= d!2359994 b!7909983))

(declare-fun lambda!472548 () Int)

(declare-fun order!29871 () Int)

(declare-fun order!29869 () Int)

(declare-fun dynLambda!30119 (Int Int) Int)

(declare-fun dynLambda!30120 (Int Int) Int)

(assert (=> b!7909983 (< (dynLambda!30119 order!29869 (toValue!11716 (transformation!8659 rule!156))) (dynLambda!30120 order!29871 lambda!472548))))

(declare-fun order!29873 () Int)

(declare-fun dynLambda!30121 (Int Int) Int)

(assert (=> b!7909983 (< (dynLambda!30121 order!29873 (toChars!11575 (transformation!8659 rule!156))) (dynLambda!30120 order!29871 lambda!472548))))

(declare-fun dynLambda!30122 (Int TokenValue!8975) BalanceConc!30784)

(assert (=> d!2359994 (= (list!19303 (dynLambda!30122 (toChars!11575 (transformation!8659 rule!156)) (dynLambda!30118 (toValue!11716 (transformation!8659 rule!156)) lt!2686304))) (list!19303 lt!2686304))))

(declare-fun lt!2686486 () Unit!169390)

(declare-fun ForallOf!1305 (Int BalanceConc!30784) Unit!169390)

(assert (=> d!2359994 (= lt!2686486 (ForallOf!1305 lambda!472548 lt!2686304))))

(assert (=> d!2359994 (= (lemmaSemiInverse!2679 (transformation!8659 rule!156) lt!2686304) lt!2686486)))

(declare-fun b_lambda!289959 () Bool)

(assert (=> (not b_lambda!289959) (not d!2359994)))

(declare-fun t!389849 () Bool)

(declare-fun tb!263203 () Bool)

(assert (=> (and b!7909770 (= (toChars!11575 (transformation!8659 rule!156)) (toChars!11575 (transformation!8659 rule!156))) t!389849) tb!263203))

(declare-fun tp!2356342 () Bool)

(declare-fun e!4669266 () Bool)

(declare-fun b!7909988 () Bool)

(declare-fun inv!95397 (Conc!15833) Bool)

(assert (=> b!7909988 (= e!4669266 (and (inv!95397 (c!1451136 (dynLambda!30122 (toChars!11575 (transformation!8659 rule!156)) (dynLambda!30118 (toValue!11716 (transformation!8659 rule!156)) lt!2686304)))) tp!2356342))))

(declare-fun result!360486 () Bool)

(declare-fun inv!95398 (BalanceConc!30784) Bool)

(assert (=> tb!263203 (= result!360486 (and (inv!95398 (dynLambda!30122 (toChars!11575 (transformation!8659 rule!156)) (dynLambda!30118 (toValue!11716 (transformation!8659 rule!156)) lt!2686304))) e!4669266))))

(assert (= tb!263203 b!7909988))

(declare-fun m!8283574 () Bool)

(assert (=> b!7909988 m!8283574))

(declare-fun m!8283576 () Bool)

(assert (=> tb!263203 m!8283576))

(assert (=> d!2359994 t!389849))

(declare-fun b_and!353447 () Bool)

(assert (= b_and!353437 (and (=> t!389849 result!360486) b_and!353447)))

(declare-fun b_lambda!289961 () Bool)

(assert (=> (not b_lambda!289961) (not d!2359994)))

(assert (=> d!2359994 t!389847))

(declare-fun b_and!353449 () Bool)

(assert (= b_and!353445 (and (=> t!389847 result!360482) b_and!353449)))

(assert (=> d!2359994 m!8283572))

(assert (=> d!2359994 m!8283572))

(declare-fun m!8283578 () Bool)

(assert (=> d!2359994 m!8283578))

(assert (=> d!2359994 m!8283578))

(declare-fun m!8283580 () Bool)

(assert (=> d!2359994 m!8283580))

(assert (=> d!2359994 m!8283564))

(declare-fun m!8283582 () Bool)

(assert (=> d!2359994 m!8283582))

(assert (=> b!7909768 d!2359994))

(declare-fun d!2359996 () Bool)

(assert (=> d!2359996 (= (inv!95392 (tag!9523 rule!156)) (= (mod (str.len (value!288759 (tag!9523 rule!156))) 2) 0))))

(assert (=> b!7909769 d!2359996))

(declare-fun d!2359998 () Bool)

(declare-fun res!3139520 () Bool)

(declare-fun e!4669276 () Bool)

(assert (=> d!2359998 (=> (not res!3139520) (not e!4669276))))

(declare-fun semiInverseModEq!3834 (Int Int) Bool)

(assert (=> d!2359998 (= res!3139520 (semiInverseModEq!3834 (toChars!11575 (transformation!8659 rule!156)) (toValue!11716 (transformation!8659 rule!156))))))

(assert (=> d!2359998 (= (inv!95395 (transformation!8659 rule!156)) e!4669276)))

(declare-fun b!7909999 () Bool)

(declare-fun equivClasses!3649 (Int Int) Bool)

(assert (=> b!7909999 (= e!4669276 (equivClasses!3649 (toChars!11575 (transformation!8659 rule!156)) (toValue!11716 (transformation!8659 rule!156))))))

(assert (= (and d!2359998 res!3139520) b!7909999))

(declare-fun m!8283600 () Bool)

(assert (=> d!2359998 m!8283600))

(declare-fun m!8283602 () Bool)

(assert (=> b!7909999 m!8283602))

(assert (=> b!7909769 d!2359998))

(declare-fun d!2360002 () Bool)

(declare-fun res!3139535 () Bool)

(declare-fun e!4669299 () Bool)

(assert (=> d!2360002 (=> res!3139535 e!4669299)))

(assert (=> d!2360002 (= res!3139535 (is-ElementMatch!21362 (regex!8659 rule!156)))))

(assert (=> d!2360002 (= (validRegex!11668 (regex!8659 rule!156)) e!4669299)))

(declare-fun b!7910026 () Bool)

(declare-fun e!4669298 () Bool)

(declare-fun e!4669297 () Bool)

(assert (=> b!7910026 (= e!4669298 e!4669297)))

(declare-fun res!3139534 () Bool)

(assert (=> b!7910026 (= res!3139534 (not (nullable!9503 (reg!21691 (regex!8659 rule!156)))))))

(assert (=> b!7910026 (=> (not res!3139534) (not e!4669297))))

(declare-fun b!7910027 () Bool)

(declare-fun res!3139533 () Bool)

(declare-fun e!4669300 () Bool)

(assert (=> b!7910027 (=> (not res!3139533) (not e!4669300))))

(declare-fun call!733604 () Bool)

(assert (=> b!7910027 (= res!3139533 call!733604)))

(declare-fun e!4669295 () Bool)

(assert (=> b!7910027 (= e!4669295 e!4669300)))

(declare-fun b!7910028 () Bool)

(declare-fun call!733606 () Bool)

(assert (=> b!7910028 (= e!4669300 call!733606)))

(declare-fun b!7910029 () Bool)

(declare-fun call!733605 () Bool)

(assert (=> b!7910029 (= e!4669297 call!733605)))

(declare-fun bm!733599 () Bool)

(assert (=> bm!733599 (= call!733604 call!733605)))

(declare-fun bm!733600 () Bool)

(declare-fun c!1451197 () Bool)

(assert (=> bm!733600 (= call!733606 (validRegex!11668 (ite c!1451197 (regTwo!43237 (regex!8659 rule!156)) (regTwo!43236 (regex!8659 rule!156)))))))

(declare-fun b!7910030 () Bool)

(assert (=> b!7910030 (= e!4669299 e!4669298)))

(declare-fun c!1451198 () Bool)

(assert (=> b!7910030 (= c!1451198 (is-Star!21362 (regex!8659 rule!156)))))

(declare-fun b!7910031 () Bool)

(declare-fun e!4669301 () Bool)

(assert (=> b!7910031 (= e!4669301 call!733606)))

(declare-fun b!7910032 () Bool)

(declare-fun res!3139531 () Bool)

(declare-fun e!4669296 () Bool)

(assert (=> b!7910032 (=> res!3139531 e!4669296)))

(assert (=> b!7910032 (= res!3139531 (not (is-Concat!30338 (regex!8659 rule!156))))))

(assert (=> b!7910032 (= e!4669295 e!4669296)))

(declare-fun b!7910033 () Bool)

(assert (=> b!7910033 (= e!4669298 e!4669295)))

(assert (=> b!7910033 (= c!1451197 (is-Union!21362 (regex!8659 rule!156)))))

(declare-fun bm!733601 () Bool)

(assert (=> bm!733601 (= call!733605 (validRegex!11668 (ite c!1451198 (reg!21691 (regex!8659 rule!156)) (ite c!1451197 (regOne!43237 (regex!8659 rule!156)) (regOne!43236 (regex!8659 rule!156))))))))

(declare-fun b!7910034 () Bool)

(assert (=> b!7910034 (= e!4669296 e!4669301)))

(declare-fun res!3139532 () Bool)

(assert (=> b!7910034 (=> (not res!3139532) (not e!4669301))))

(assert (=> b!7910034 (= res!3139532 call!733604)))

(assert (= (and d!2360002 (not res!3139535)) b!7910030))

(assert (= (and b!7910030 c!1451198) b!7910026))

(assert (= (and b!7910030 (not c!1451198)) b!7910033))

(assert (= (and b!7910026 res!3139534) b!7910029))

(assert (= (and b!7910033 c!1451197) b!7910027))

(assert (= (and b!7910033 (not c!1451197)) b!7910032))

(assert (= (and b!7910027 res!3139533) b!7910028))

(assert (= (and b!7910032 (not res!3139531)) b!7910034))

(assert (= (and b!7910034 res!3139532) b!7910031))

(assert (= (or b!7910027 b!7910034) bm!733599))

(assert (= (or b!7910028 b!7910031) bm!733600))

(assert (= (or b!7910029 bm!733599) bm!733601))

(declare-fun m!8283612 () Bool)

(assert (=> b!7910026 m!8283612))

(declare-fun m!8283614 () Bool)

(assert (=> bm!733600 m!8283614))

(declare-fun m!8283616 () Bool)

(assert (=> bm!733601 m!8283616))

(assert (=> b!7909767 d!2360002))

(declare-fun d!2360010 () Bool)

(declare-fun list!19305 (Conc!15833) List!74480)

(assert (=> d!2360010 (= (list!19303 (charsOf!5597 (_1!38504 (get!26737 lt!2686305)))) (list!19305 (c!1451136 (charsOf!5597 (_1!38504 (get!26737 lt!2686305))))))))

(declare-fun bs!1968224 () Bool)

(assert (= bs!1968224 d!2360010))

(declare-fun m!8283618 () Bool)

(assert (=> bs!1968224 m!8283618))

(assert (=> b!7909767 d!2360010))

(declare-fun d!2360012 () Bool)

(declare-fun lt!2686497 () BalanceConc!30784)

(assert (=> d!2360012 (= (list!19303 lt!2686497) (originalCharacters!8896 (_1!38504 (get!26737 lt!2686305))))))

(assert (=> d!2360012 (= lt!2686497 (dynLambda!30122 (toChars!11575 (transformation!8659 (rule!11959 (_1!38504 (get!26737 lt!2686305))))) (value!288760 (_1!38504 (get!26737 lt!2686305)))))))

(assert (=> d!2360012 (= (charsOf!5597 (_1!38504 (get!26737 lt!2686305))) lt!2686497)))

(declare-fun b_lambda!289967 () Bool)

(assert (=> (not b_lambda!289967) (not d!2360012)))

(declare-fun t!389855 () Bool)

(declare-fun tb!263209 () Bool)

(assert (=> (and b!7909770 (= (toChars!11575 (transformation!8659 rule!156)) (toChars!11575 (transformation!8659 (rule!11959 (_1!38504 (get!26737 lt!2686305)))))) t!389855) tb!263209))

(declare-fun b!7910035 () Bool)

(declare-fun e!4669302 () Bool)

(declare-fun tp!2356344 () Bool)

(assert (=> b!7910035 (= e!4669302 (and (inv!95397 (c!1451136 (dynLambda!30122 (toChars!11575 (transformation!8659 (rule!11959 (_1!38504 (get!26737 lt!2686305))))) (value!288760 (_1!38504 (get!26737 lt!2686305)))))) tp!2356344))))

(declare-fun result!360496 () Bool)

(assert (=> tb!263209 (= result!360496 (and (inv!95398 (dynLambda!30122 (toChars!11575 (transformation!8659 (rule!11959 (_1!38504 (get!26737 lt!2686305))))) (value!288760 (_1!38504 (get!26737 lt!2686305))))) e!4669302))))

(assert (= tb!263209 b!7910035))

(declare-fun m!8283620 () Bool)

(assert (=> b!7910035 m!8283620))

(declare-fun m!8283622 () Bool)

(assert (=> tb!263209 m!8283622))

(assert (=> d!2360012 t!389855))

(declare-fun b_and!353455 () Bool)

(assert (= b_and!353447 (and (=> t!389855 result!360496) b_and!353455)))

(declare-fun m!8283624 () Bool)

(assert (=> d!2360012 m!8283624))

(declare-fun m!8283626 () Bool)

(assert (=> d!2360012 m!8283626))

(assert (=> b!7909767 d!2360012))

(declare-fun d!2360014 () Bool)

(assert (=> d!2360014 (= (get!26737 lt!2686305) (v!55093 lt!2686305))))

(assert (=> b!7909767 d!2360014))

(declare-fun d!2360016 () Bool)

(declare-fun res!3139540 () Bool)

(declare-fun e!4669305 () Bool)

(assert (=> d!2360016 (=> (not res!3139540) (not e!4669305))))

(assert (=> d!2360016 (= res!3139540 (validRegex!11668 (regex!8659 rule!156)))))

(assert (=> d!2360016 (= (ruleValid!3970 thiss!15815 rule!156) e!4669305)))

(declare-fun b!7910040 () Bool)

(declare-fun res!3139541 () Bool)

(assert (=> b!7910040 (=> (not res!3139541) (not e!4669305))))

(assert (=> b!7910040 (= res!3139541 (not (nullable!9503 (regex!8659 rule!156))))))

(declare-fun b!7910041 () Bool)

(assert (=> b!7910041 (= e!4669305 (not (= (tag!9523 rule!156) (String!83300 ""))))))

(assert (= (and d!2360016 res!3139540) b!7910040))

(assert (= (and b!7910040 res!3139541) b!7910041))

(assert (=> d!2360016 m!8283368))

(assert (=> b!7910040 m!8283436))

(assert (=> b!7909772 d!2360016))

(declare-fun e!4669308 () Bool)

(assert (=> b!7909769 (= tp!2356322 e!4669308)))

(declare-fun b!7910053 () Bool)

(declare-fun tp!2356358 () Bool)

(declare-fun tp!2356359 () Bool)

(assert (=> b!7910053 (= e!4669308 (and tp!2356358 tp!2356359))))

(declare-fun b!7910055 () Bool)

(declare-fun tp!2356356 () Bool)

(declare-fun tp!2356357 () Bool)

(assert (=> b!7910055 (= e!4669308 (and tp!2356356 tp!2356357))))

(declare-fun b!7910054 () Bool)

(declare-fun tp!2356355 () Bool)

(assert (=> b!7910054 (= e!4669308 tp!2356355)))

(declare-fun b!7910052 () Bool)

(assert (=> b!7910052 (= e!4669308 tp_is_empty!53099)))

(assert (= (and b!7909769 (is-ElementMatch!21362 (regex!8659 rule!156))) b!7910052))

(assert (= (and b!7909769 (is-Concat!30338 (regex!8659 rule!156))) b!7910053))

(assert (= (and b!7909769 (is-Star!21362 (regex!8659 rule!156))) b!7910054))

(assert (= (and b!7909769 (is-Union!21362 (regex!8659 rule!156))) b!7910055))

(declare-fun b!7910060 () Bool)

(declare-fun e!4669311 () Bool)

(declare-fun tp!2356362 () Bool)

(assert (=> b!7910060 (= e!4669311 (and tp_is_empty!53099 tp!2356362))))

(assert (=> b!7909771 (= tp!2356321 e!4669311)))

(assert (= (and b!7909771 (is-Cons!74356 (t!389841 input!1480))) b!7910060))

(declare-fun b_lambda!289969 () Bool)

(assert (= b_lambda!289959 (or (and b!7909770 b_free!135181) b_lambda!289969)))

(declare-fun b_lambda!289971 () Bool)

(assert (= b_lambda!289961 (or (and b!7909770 b_free!135179) b_lambda!289971)))

(declare-fun b_lambda!289973 () Bool)

(assert (= b_lambda!289957 (or (and b!7909770 b_free!135179) b_lambda!289973)))

(push 1)

(assert (not bm!733562))

(assert (not b!7909960))

(assert (not b!7910060))

(assert (not d!2359956))

(assert (not bm!733592))

(assert (not b_lambda!289967))

(assert (not d!2359946))

(assert (not d!2360012))

(assert (not b!7909969))

(assert (not bm!733588))

(assert (not b!7910054))

(assert (not bm!733587))

(assert (not d!2359998))

(assert (not d!2359986))

(assert (not d!2359994))

(assert (not b!7909863))

(assert (not d!2359984))

(assert (not b!7910055))

(assert (not b!7909859))

(assert b_and!353455)

(assert (not b!7910053))

(assert (not b!7909976))

(assert (not b!7909854))

(assert (not b_lambda!289969))

(assert (not d!2359972))

(assert (not b_next!135969))

(assert (not tb!263203))

(assert b_and!353449)

(assert (not b!7909999))

(assert (not bm!733600))

(assert (not b!7909973))

(assert (not b_next!135971))

(assert (not bm!733591))

(assert (not bm!733589))

(assert (not tb!263201))

(assert (not d!2359988))

(assert tp_is_empty!53099)

(assert (not bm!733601))

(assert (not d!2360016))

(assert (not b!7910026))

(assert (not b!7910035))

(assert (not bm!733586))

(assert (not b_lambda!289973))

(assert (not b!7909851))

(assert (not b!7909886))

(assert (not b!7909884))

(assert (not b!7910040))

(assert (not b!7909862))

(assert (not bm!733585))

(assert (not b!7909988))

(assert (not b_lambda!289971))

(assert (not bm!733590))

(assert (not b!7909963))

(assert (not tb!263209))

(assert (not d!2360010))

(assert (not b!7909852))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353449)

(assert b_and!353455)

(assert (not b_next!135969))

(assert (not b_next!135971))

(check-sat)

(pop 1)

