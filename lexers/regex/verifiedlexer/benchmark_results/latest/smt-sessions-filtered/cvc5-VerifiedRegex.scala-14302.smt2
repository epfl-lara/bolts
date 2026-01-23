; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746962 () Bool)

(assert start!746962)

(declare-fun b!7911688 () Bool)

(declare-fun b_free!135219 () Bool)

(declare-fun b_next!136009 () Bool)

(assert (=> b!7911688 (= b_free!135219 (not b_next!136009))))

(declare-fun tp!2356661 () Bool)

(declare-fun b_and!353555 () Bool)

(assert (=> b!7911688 (= tp!2356661 b_and!353555)))

(declare-fun b_free!135221 () Bool)

(declare-fun b_next!136011 () Bool)

(assert (=> b!7911688 (= b_free!135221 (not b_next!136011))))

(declare-fun tp!2356664 () Bool)

(declare-fun b_and!353557 () Bool)

(assert (=> b!7911688 (= tp!2356664 b_and!353557)))

(declare-fun b!7911683 () Bool)

(declare-fun e!4670262 () Bool)

(declare-fun e!4670266 () Bool)

(assert (=> b!7911683 (= e!4670262 (not e!4670266))))

(declare-fun res!3140212 () Bool)

(assert (=> b!7911683 (=> res!3140212 e!4670266)))

(declare-datatypes ((List!74499 0))(
  ( (Nil!74375) (Cons!74375 (h!80823 (_ BitVec 16)) (t!389920 List!74499)) )
))
(declare-datatypes ((TokenValue!8985 0))(
  ( (FloatLiteralValue!17970 (text!63340 List!74499)) (TokenValueExt!8984 (__x!35257 Int)) (Broken!44925 (value!289019 List!74499)) (Object!9108) (End!8985) (Def!8985) (Underscore!8985) (Match!8985) (Else!8985) (Error!8985) (Case!8985) (If!8985) (Extends!8985) (Abstract!8985) (Class!8985) (Val!8985) (DelimiterValue!17970 (del!9045 List!74499)) (KeywordValue!8991 (value!289020 List!74499)) (CommentValue!17970 (value!289021 List!74499)) (WhitespaceValue!17970 (value!289022 List!74499)) (IndentationValue!8985 (value!289023 List!74499)) (String!83348) (Int32!8985) (Broken!44926 (value!289024 List!74499)) (Boolean!8986) (Unit!169444) (OperatorValue!8988 (op!9045 List!74499)) (IdentifierValue!17970 (value!289025 List!74499)) (IdentifierValue!17971 (value!289026 List!74499)) (WhitespaceValue!17971 (value!289027 List!74499)) (True!17970) (False!17970) (Broken!44927 (value!289028 List!74499)) (Broken!44928 (value!289029 List!74499)) (True!17971) (RightBrace!8985) (RightBracket!8985) (Colon!8985) (Null!8985) (Comma!8985) (LeftBracket!8985) (False!17971) (LeftBrace!8985) (ImaginaryLiteralValue!8985 (text!63341 List!74499)) (StringLiteralValue!26955 (value!289030 List!74499)) (EOFValue!8985 (value!289031 List!74499)) (IdentValue!8985 (value!289032 List!74499)) (DelimiterValue!17971 (value!289033 List!74499)) (DedentValue!8985 (value!289034 List!74499)) (NewLineValue!8985 (value!289035 List!74499)) (IntegerValue!26955 (value!289036 (_ BitVec 32)) (text!63342 List!74499)) (IntegerValue!26956 (value!289037 Int) (text!63343 List!74499)) (Times!8985) (Or!8985) (Equal!8985) (Minus!8985) (Broken!44929 (value!289038 List!74499)) (And!8985) (Div!8985) (LessEqual!8985) (Mod!8985) (Concat!30357) (Not!8985) (Plus!8985) (SpaceValue!8985 (value!289039 List!74499)) (IntegerValue!26957 (value!289040 Int) (text!63344 List!74499)) (StringLiteralValue!26956 (text!63345 List!74499)) (FloatLiteralValue!17971 (text!63346 List!74499)) (BytesLiteralValue!8985 (value!289041 List!74499)) (CommentValue!17971 (value!289042 List!74499)) (StringLiteralValue!26957 (value!289043 List!74499)) (ErrorTokenValue!8985 (msg!9046 List!74499)) )
))
(declare-datatypes ((C!43074 0))(
  ( (C!43075 (val!32001 Int)) )
))
(declare-datatypes ((Regex!21372 0))(
  ( (ElementMatch!21372 (c!1451544 C!43074)) (Concat!30358 (regOne!43256 Regex!21372) (regTwo!43256 Regex!21372)) (EmptyExpr!21372) (Star!21372 (reg!21701 Regex!21372)) (EmptyLang!21372) (Union!21372 (regOne!43257 Regex!21372) (regTwo!43257 Regex!21372)) )
))
(declare-datatypes ((String!83349 0))(
  ( (String!83350 (value!289044 String)) )
))
(declare-datatypes ((List!74500 0))(
  ( (Nil!74376) (Cons!74376 (h!80824 C!43074) (t!389921 List!74500)) )
))
(declare-datatypes ((IArray!31747 0))(
  ( (IArray!31748 (innerList!15931 List!74500)) )
))
(declare-datatypes ((Conc!15843 0))(
  ( (Node!15843 (left!56765 Conc!15843) (right!57095 Conc!15843) (csize!31916 Int) (cheight!16054 Int)) (Leaf!30146 (xs!19225 IArray!31747) (csize!31917 Int)) (Empty!15843) )
))
(declare-datatypes ((BalanceConc!30804 0))(
  ( (BalanceConc!30805 (c!1451545 Conc!15843)) )
))
(declare-datatypes ((TokenValueInjection!17278 0))(
  ( (TokenValueInjection!17279 (toValue!11726 Int) (toChars!11585 Int)) )
))
(declare-datatypes ((Rule!17138 0))(
  ( (Rule!17139 (regex!8669 Regex!21372) (tag!9533 String!83349) (isSeparator!8669 Bool) (transformation!8669 TokenValueInjection!17278)) )
))
(declare-datatypes ((Token!15750 0))(
  ( (Token!15751 (value!289045 TokenValue!8985) (rule!11969 Rule!17138) (size!43157 Int) (originalCharacters!8906 List!74500)) )
))
(declare-datatypes ((tuple2!70442 0))(
  ( (tuple2!70443 (_1!38524 Token!15750) (_2!38524 List!74500)) )
))
(declare-datatypes ((Option!17947 0))(
  ( (None!17946) (Some!17946 (v!55103 tuple2!70442)) )
))
(declare-fun lt!2687859 () Option!17947)

(declare-fun isEmpty!42708 (Option!17947) Bool)

(assert (=> b!7911683 (= res!3140212 (isEmpty!42708 lt!2687859))))

(declare-datatypes ((tuple2!70444 0))(
  ( (tuple2!70445 (_1!38525 List!74500) (_2!38525 List!74500)) )
))
(declare-fun lt!2687863 () tuple2!70444)

(declare-fun rule!156 () Rule!17138)

(declare-fun lt!2687860 () BalanceConc!30804)

(declare-fun apply!14378 (TokenValueInjection!17278 BalanceConc!30804) TokenValue!8985)

(declare-fun size!43158 (BalanceConc!30804) Int)

(assert (=> b!7911683 (= lt!2687859 (Some!17946 (tuple2!70443 (Token!15751 (apply!14378 (transformation!8669 rule!156) lt!2687860) rule!156 (size!43158 lt!2687860) (_1!38525 lt!2687863)) (_2!38525 lt!2687863))))))

(declare-datatypes ((Unit!169445 0))(
  ( (Unit!169446) )
))
(declare-fun lt!2687862 () Unit!169445)

(declare-fun lemmaSemiInverse!2689 (TokenValueInjection!17278 BalanceConc!30804) Unit!169445)

(assert (=> b!7911683 (= lt!2687862 (lemmaSemiInverse!2689 (transformation!8669 rule!156) lt!2687860))))

(declare-fun seqFromList!6196 (List!74500) BalanceConc!30804)

(assert (=> b!7911683 (= lt!2687860 (seqFromList!6196 (_1!38525 lt!2687863)))))

(declare-fun e!4670267 () Bool)

(assert (=> b!7911683 e!4670267))

(declare-fun res!3140216 () Bool)

(assert (=> b!7911683 (=> res!3140216 e!4670267)))

(declare-fun lt!2687856 () tuple2!70444)

(declare-fun isEmpty!42709 (List!74500) Bool)

(assert (=> b!7911683 (= res!3140216 (isEmpty!42709 (_1!38525 lt!2687856)))))

(declare-fun lt!2687861 () Int)

(declare-fun lt!2687858 () Int)

(declare-fun input!1480 () List!74500)

(declare-fun findLongestMatchInner!2179 (Regex!21372 List!74500 Int List!74500 List!74500 Int) tuple2!70444)

(assert (=> b!7911683 (= lt!2687856 (findLongestMatchInner!2179 (regex!8669 rule!156) Nil!74376 lt!2687861 input!1480 input!1480 lt!2687858))))

(declare-fun size!43159 (List!74500) Int)

(assert (=> b!7911683 (= lt!2687858 (size!43159 input!1480))))

(assert (=> b!7911683 (= lt!2687861 (size!43159 Nil!74376))))

(declare-fun lt!2687857 () Unit!169445)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2142 (Regex!21372 List!74500) Unit!169445)

(assert (=> b!7911683 (= lt!2687857 (longestMatchIsAcceptedByMatchOrIsEmpty!2142 (regex!8669 rule!156) input!1480))))

(declare-fun res!3140208 () Bool)

(declare-fun e!4670261 () Bool)

(assert (=> start!746962 (=> (not res!3140208) (not e!4670261))))

(declare-datatypes ((LexerInterface!8261 0))(
  ( (LexerInterfaceExt!8258 (__x!35258 Int)) (Lexer!8259) )
))
(declare-fun thiss!15815 () LexerInterface!8261)

(assert (=> start!746962 (= res!3140208 (is-Lexer!8259 thiss!15815))))

(assert (=> start!746962 e!4670261))

(assert (=> start!746962 true))

(declare-fun e!4670263 () Bool)

(assert (=> start!746962 e!4670263))

(declare-fun e!4670268 () Bool)

(assert (=> start!746962 e!4670268))

(declare-fun b!7911684 () Bool)

(declare-fun matchR!10693 (Regex!21372 List!74500) Bool)

(assert (=> b!7911684 (= e!4670267 (matchR!10693 (regex!8669 rule!156) (_1!38525 lt!2687856)))))

(declare-fun b!7911685 () Bool)

(declare-fun res!3140215 () Bool)

(declare-fun e!4670269 () Bool)

(assert (=> b!7911685 (=> res!3140215 e!4670269)))

(declare-fun lt!2687864 () tuple2!70442)

(assert (=> b!7911685 (= res!3140215 (not (= (value!289045 (_1!38524 lt!2687864)) (apply!14378 (transformation!8669 (rule!11969 (_1!38524 lt!2687864))) (seqFromList!6196 (originalCharacters!8906 (_1!38524 lt!2687864)))))))))

(declare-fun b!7911686 () Bool)

(declare-fun res!3140209 () Bool)

(assert (=> b!7911686 (=> res!3140209 e!4670269)))

(assert (=> b!7911686 (= res!3140209 (>= (size!43159 (_2!38524 lt!2687864)) lt!2687858))))

(declare-fun b!7911687 () Bool)

(assert (=> b!7911687 (= e!4670266 e!4670269)))

(declare-fun res!3140213 () Bool)

(assert (=> b!7911687 (=> res!3140213 e!4670269)))

(declare-fun lt!2687855 () List!74500)

(assert (=> b!7911687 (= res!3140213 (not (matchR!10693 (regex!8669 rule!156) lt!2687855)))))

(declare-fun list!19322 (BalanceConc!30804) List!74500)

(declare-fun charsOf!5607 (Token!15750) BalanceConc!30804)

(assert (=> b!7911687 (= lt!2687855 (list!19322 (charsOf!5607 (_1!38524 lt!2687864))))))

(declare-fun get!26752 (Option!17947) tuple2!70442)

(assert (=> b!7911687 (= lt!2687864 (get!26752 lt!2687859))))

(declare-fun e!4670264 () Bool)

(assert (=> b!7911688 (= e!4670264 (and tp!2356661 tp!2356664))))

(declare-fun b!7911689 () Bool)

(declare-fun tp_is_empty!53119 () Bool)

(declare-fun tp!2356662 () Bool)

(assert (=> b!7911689 (= e!4670268 (and tp_is_empty!53119 tp!2356662))))

(declare-fun b!7911690 () Bool)

(declare-fun res!3140214 () Bool)

(assert (=> b!7911690 (=> res!3140214 e!4670269)))

(assert (=> b!7911690 (= res!3140214 (not (= (rule!11969 (_1!38524 lt!2687864)) rule!156)))))

(declare-fun b!7911691 () Bool)

(declare-fun res!3140210 () Bool)

(assert (=> b!7911691 (=> res!3140210 e!4670269)))

(declare-fun ++!18215 (List!74500 List!74500) List!74500)

(assert (=> b!7911691 (= res!3140210 (not (= (++!18215 lt!2687855 (_2!38524 lt!2687864)) input!1480)))))

(declare-fun b!7911692 () Bool)

(declare-fun res!3140211 () Bool)

(assert (=> b!7911692 (=> (not res!3140211) (not e!4670261))))

(declare-fun ruleValid!3980 (LexerInterface!8261 Rule!17138) Bool)

(assert (=> b!7911692 (= res!3140211 (ruleValid!3980 thiss!15815 rule!156))))

(declare-fun b!7911693 () Bool)

(declare-fun isDefined!14505 (Option!17947) Bool)

(assert (=> b!7911693 (= e!4670269 (isDefined!14505 lt!2687859))))

(declare-fun b!7911694 () Bool)

(assert (=> b!7911694 (= e!4670261 e!4670262)))

(declare-fun res!3140207 () Bool)

(assert (=> b!7911694 (=> (not res!3140207) (not e!4670262))))

(assert (=> b!7911694 (= res!3140207 (not (isEmpty!42709 (_1!38525 lt!2687863))))))

(declare-fun findLongestMatch!1962 (Regex!21372 List!74500) tuple2!70444)

(assert (=> b!7911694 (= lt!2687863 (findLongestMatch!1962 (regex!8669 rule!156) input!1480))))

(declare-fun b!7911695 () Bool)

(declare-fun tp!2356663 () Bool)

(declare-fun inv!95437 (String!83349) Bool)

(declare-fun inv!95440 (TokenValueInjection!17278) Bool)

(assert (=> b!7911695 (= e!4670263 (and tp!2356663 (inv!95437 (tag!9533 rule!156)) (inv!95440 (transformation!8669 rule!156)) e!4670264))))

(assert (= (and start!746962 res!3140208) b!7911692))

(assert (= (and b!7911692 res!3140211) b!7911694))

(assert (= (and b!7911694 res!3140207) b!7911683))

(assert (= (and b!7911683 (not res!3140216)) b!7911684))

(assert (= (and b!7911683 (not res!3140212)) b!7911687))

(assert (= (and b!7911687 (not res!3140213)) b!7911691))

(assert (= (and b!7911691 (not res!3140210)) b!7911686))

(assert (= (and b!7911686 (not res!3140209)) b!7911690))

(assert (= (and b!7911690 (not res!3140214)) b!7911685))

(assert (= (and b!7911685 (not res!3140215)) b!7911693))

(assert (= b!7911695 b!7911688))

(assert (= start!746962 b!7911695))

(assert (= (and start!746962 (is-Cons!74376 input!1480)) b!7911689))

(declare-fun m!8285256 () Bool)

(assert (=> b!7911685 m!8285256))

(assert (=> b!7911685 m!8285256))

(declare-fun m!8285258 () Bool)

(assert (=> b!7911685 m!8285258))

(declare-fun m!8285260 () Bool)

(assert (=> b!7911691 m!8285260))

(declare-fun m!8285262 () Bool)

(assert (=> b!7911692 m!8285262))

(declare-fun m!8285264 () Bool)

(assert (=> b!7911684 m!8285264))

(declare-fun m!8285266 () Bool)

(assert (=> b!7911687 m!8285266))

(declare-fun m!8285268 () Bool)

(assert (=> b!7911687 m!8285268))

(assert (=> b!7911687 m!8285268))

(declare-fun m!8285270 () Bool)

(assert (=> b!7911687 m!8285270))

(declare-fun m!8285272 () Bool)

(assert (=> b!7911687 m!8285272))

(declare-fun m!8285274 () Bool)

(assert (=> b!7911686 m!8285274))

(declare-fun m!8285276 () Bool)

(assert (=> b!7911693 m!8285276))

(declare-fun m!8285278 () Bool)

(assert (=> b!7911694 m!8285278))

(declare-fun m!8285280 () Bool)

(assert (=> b!7911694 m!8285280))

(declare-fun m!8285282 () Bool)

(assert (=> b!7911695 m!8285282))

(declare-fun m!8285284 () Bool)

(assert (=> b!7911695 m!8285284))

(declare-fun m!8285286 () Bool)

(assert (=> b!7911683 m!8285286))

(declare-fun m!8285288 () Bool)

(assert (=> b!7911683 m!8285288))

(declare-fun m!8285290 () Bool)

(assert (=> b!7911683 m!8285290))

(declare-fun m!8285292 () Bool)

(assert (=> b!7911683 m!8285292))

(declare-fun m!8285294 () Bool)

(assert (=> b!7911683 m!8285294))

(declare-fun m!8285296 () Bool)

(assert (=> b!7911683 m!8285296))

(declare-fun m!8285298 () Bool)

(assert (=> b!7911683 m!8285298))

(declare-fun m!8285300 () Bool)

(assert (=> b!7911683 m!8285300))

(declare-fun m!8285302 () Bool)

(assert (=> b!7911683 m!8285302))

(declare-fun m!8285304 () Bool)

(assert (=> b!7911683 m!8285304))

(push 1)

(assert (not b!7911693))

(assert (not b!7911692))

(assert (not b!7911686))

(assert (not b!7911694))

(assert (not b!7911691))

(assert (not b!7911689))

(assert (not b!7911683))

(assert b_and!353557)

(assert (not b_next!136011))

(assert (not b_next!136009))

(assert b_and!353555)

(assert tp_is_empty!53119)

(assert (not b!7911695))

(assert (not b!7911685))

(assert (not b!7911684))

(assert (not b!7911687))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353555)

(assert b_and!353557)

(assert (not b_next!136009))

(assert (not b_next!136011))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2360387 () Bool)

(declare-fun lt!2687897 () Int)

(assert (=> d!2360387 (>= lt!2687897 0)))

(declare-fun e!4670299 () Int)

(assert (=> d!2360387 (= lt!2687897 e!4670299)))

(declare-fun c!1451551 () Bool)

(assert (=> d!2360387 (= c!1451551 (is-Nil!74376 (_2!38524 lt!2687864)))))

(assert (=> d!2360387 (= (size!43159 (_2!38524 lt!2687864)) lt!2687897)))

(declare-fun b!7911739 () Bool)

(assert (=> b!7911739 (= e!4670299 0)))

(declare-fun b!7911740 () Bool)

(assert (=> b!7911740 (= e!4670299 (+ 1 (size!43159 (t!389921 (_2!38524 lt!2687864)))))))

(assert (= (and d!2360387 c!1451551) b!7911739))

(assert (= (and d!2360387 (not c!1451551)) b!7911740))

(declare-fun m!8285356 () Bool)

(assert (=> b!7911740 m!8285356))

(assert (=> b!7911686 d!2360387))

(declare-fun bm!733852 () Bool)

(declare-fun call!733857 () Bool)

(assert (=> bm!733852 (= call!733857 (isEmpty!42709 lt!2687855))))

(declare-fun b!7911769 () Bool)

(declare-fun e!4670320 () Bool)

(declare-fun lt!2687900 () Bool)

(assert (=> b!7911769 (= e!4670320 (= lt!2687900 call!733857))))

(declare-fun b!7911770 () Bool)

(declare-fun res!3140272 () Bool)

(declare-fun e!4670315 () Bool)

(assert (=> b!7911770 (=> (not res!3140272) (not e!4670315))))

(declare-fun tail!15719 (List!74500) List!74500)

(assert (=> b!7911770 (= res!3140272 (isEmpty!42709 (tail!15719 lt!2687855)))))

(declare-fun b!7911771 () Bool)

(declare-fun e!4670316 () Bool)

(declare-fun head!16176 (List!74500) C!43074)

(assert (=> b!7911771 (= e!4670316 (not (= (head!16176 lt!2687855) (c!1451544 (regex!8669 rule!156)))))))

(declare-fun b!7911772 () Bool)

(declare-fun res!3140271 () Bool)

(declare-fun e!4670319 () Bool)

(assert (=> b!7911772 (=> res!3140271 e!4670319)))

(assert (=> b!7911772 (= res!3140271 (not (is-ElementMatch!21372 (regex!8669 rule!156))))))

(declare-fun e!4670317 () Bool)

(assert (=> b!7911772 (= e!4670317 e!4670319)))

(declare-fun b!7911773 () Bool)

(declare-fun e!4670314 () Bool)

(declare-fun nullable!9513 (Regex!21372) Bool)

(assert (=> b!7911773 (= e!4670314 (nullable!9513 (regex!8669 rule!156)))))

(declare-fun b!7911774 () Bool)

(declare-fun e!4670318 () Bool)

(assert (=> b!7911774 (= e!4670318 e!4670316)))

(declare-fun res!3140268 () Bool)

(assert (=> b!7911774 (=> res!3140268 e!4670316)))

(assert (=> b!7911774 (= res!3140268 call!733857)))

(declare-fun b!7911775 () Bool)

(declare-fun res!3140267 () Bool)

(assert (=> b!7911775 (=> res!3140267 e!4670316)))

(assert (=> b!7911775 (= res!3140267 (not (isEmpty!42709 (tail!15719 lt!2687855))))))

(declare-fun b!7911776 () Bool)

(assert (=> b!7911776 (= e!4670317 (not lt!2687900))))

(declare-fun d!2360389 () Bool)

(assert (=> d!2360389 e!4670320))

(declare-fun c!1451559 () Bool)

(assert (=> d!2360389 (= c!1451559 (is-EmptyExpr!21372 (regex!8669 rule!156)))))

(assert (=> d!2360389 (= lt!2687900 e!4670314)))

(declare-fun c!1451558 () Bool)

(assert (=> d!2360389 (= c!1451558 (isEmpty!42709 lt!2687855))))

(declare-fun validRegex!11678 (Regex!21372) Bool)

(assert (=> d!2360389 (validRegex!11678 (regex!8669 rule!156))))

(assert (=> d!2360389 (= (matchR!10693 (regex!8669 rule!156) lt!2687855) lt!2687900)))

(declare-fun b!7911777 () Bool)

(declare-fun res!3140273 () Bool)

(assert (=> b!7911777 (=> (not res!3140273) (not e!4670315))))

(assert (=> b!7911777 (= res!3140273 (not call!733857))))

(declare-fun b!7911778 () Bool)

(declare-fun derivativeStep!6455 (Regex!21372 C!43074) Regex!21372)

(assert (=> b!7911778 (= e!4670314 (matchR!10693 (derivativeStep!6455 (regex!8669 rule!156) (head!16176 lt!2687855)) (tail!15719 lt!2687855)))))

(declare-fun b!7911779 () Bool)

(declare-fun res!3140269 () Bool)

(assert (=> b!7911779 (=> res!3140269 e!4670319)))

(assert (=> b!7911779 (= res!3140269 e!4670315)))

(declare-fun res!3140274 () Bool)

(assert (=> b!7911779 (=> (not res!3140274) (not e!4670315))))

(assert (=> b!7911779 (= res!3140274 lt!2687900)))

(declare-fun b!7911780 () Bool)

(assert (=> b!7911780 (= e!4670315 (= (head!16176 lt!2687855) (c!1451544 (regex!8669 rule!156))))))

(declare-fun b!7911781 () Bool)

(assert (=> b!7911781 (= e!4670319 e!4670318)))

(declare-fun res!3140270 () Bool)

(assert (=> b!7911781 (=> (not res!3140270) (not e!4670318))))

(assert (=> b!7911781 (= res!3140270 (not lt!2687900))))

(declare-fun b!7911782 () Bool)

(assert (=> b!7911782 (= e!4670320 e!4670317)))

(declare-fun c!1451560 () Bool)

(assert (=> b!7911782 (= c!1451560 (is-EmptyLang!21372 (regex!8669 rule!156)))))

(assert (= (and d!2360389 c!1451558) b!7911773))

(assert (= (and d!2360389 (not c!1451558)) b!7911778))

(assert (= (and d!2360389 c!1451559) b!7911769))

(assert (= (and d!2360389 (not c!1451559)) b!7911782))

(assert (= (and b!7911782 c!1451560) b!7911776))

(assert (= (and b!7911782 (not c!1451560)) b!7911772))

(assert (= (and b!7911772 (not res!3140271)) b!7911779))

(assert (= (and b!7911779 res!3140274) b!7911777))

(assert (= (and b!7911777 res!3140273) b!7911770))

(assert (= (and b!7911770 res!3140272) b!7911780))

(assert (= (and b!7911779 (not res!3140269)) b!7911781))

(assert (= (and b!7911781 res!3140270) b!7911774))

(assert (= (and b!7911774 (not res!3140268)) b!7911775))

(assert (= (and b!7911775 (not res!3140267)) b!7911771))

(assert (= (or b!7911769 b!7911774 b!7911777) bm!733852))

(declare-fun m!8285358 () Bool)

(assert (=> b!7911770 m!8285358))

(assert (=> b!7911770 m!8285358))

(declare-fun m!8285360 () Bool)

(assert (=> b!7911770 m!8285360))

(declare-fun m!8285362 () Bool)

(assert (=> b!7911771 m!8285362))

(assert (=> b!7911778 m!8285362))

(assert (=> b!7911778 m!8285362))

(declare-fun m!8285364 () Bool)

(assert (=> b!7911778 m!8285364))

(assert (=> b!7911778 m!8285358))

(assert (=> b!7911778 m!8285364))

(assert (=> b!7911778 m!8285358))

(declare-fun m!8285366 () Bool)

(assert (=> b!7911778 m!8285366))

(assert (=> b!7911780 m!8285362))

(declare-fun m!8285368 () Bool)

(assert (=> bm!733852 m!8285368))

(declare-fun m!8285370 () Bool)

(assert (=> b!7911773 m!8285370))

(assert (=> d!2360389 m!8285368))

(declare-fun m!8285372 () Bool)

(assert (=> d!2360389 m!8285372))

(assert (=> b!7911775 m!8285358))

(assert (=> b!7911775 m!8285358))

(assert (=> b!7911775 m!8285360))

(assert (=> b!7911687 d!2360389))

(declare-fun d!2360391 () Bool)

(declare-fun list!19324 (Conc!15843) List!74500)

(assert (=> d!2360391 (= (list!19322 (charsOf!5607 (_1!38524 lt!2687864))) (list!19324 (c!1451545 (charsOf!5607 (_1!38524 lt!2687864)))))))

(declare-fun bs!1968276 () Bool)

(assert (= bs!1968276 d!2360391))

(declare-fun m!8285374 () Bool)

(assert (=> bs!1968276 m!8285374))

(assert (=> b!7911687 d!2360391))

(declare-fun d!2360393 () Bool)

(declare-fun lt!2687903 () BalanceConc!30804)

(assert (=> d!2360393 (= (list!19322 lt!2687903) (originalCharacters!8906 (_1!38524 lt!2687864)))))

(declare-fun dynLambda!30168 (Int TokenValue!8985) BalanceConc!30804)

(assert (=> d!2360393 (= lt!2687903 (dynLambda!30168 (toChars!11585 (transformation!8669 (rule!11969 (_1!38524 lt!2687864)))) (value!289045 (_1!38524 lt!2687864))))))

(assert (=> d!2360393 (= (charsOf!5607 (_1!38524 lt!2687864)) lt!2687903)))

(declare-fun b_lambda!290095 () Bool)

(assert (=> (not b_lambda!290095) (not d!2360393)))

(declare-fun tb!263259 () Bool)

(declare-fun t!389925 () Bool)

(assert (=> (and b!7911688 (= (toChars!11585 (transformation!8669 rule!156)) (toChars!11585 (transformation!8669 (rule!11969 (_1!38524 lt!2687864))))) t!389925) tb!263259))

(declare-fun b!7911787 () Bool)

(declare-fun e!4670323 () Bool)

(declare-fun tp!2356679 () Bool)

(declare-fun inv!95442 (Conc!15843) Bool)

(assert (=> b!7911787 (= e!4670323 (and (inv!95442 (c!1451545 (dynLambda!30168 (toChars!11585 (transformation!8669 (rule!11969 (_1!38524 lt!2687864)))) (value!289045 (_1!38524 lt!2687864))))) tp!2356679))))

(declare-fun result!360618 () Bool)

(declare-fun inv!95443 (BalanceConc!30804) Bool)

(assert (=> tb!263259 (= result!360618 (and (inv!95443 (dynLambda!30168 (toChars!11585 (transformation!8669 (rule!11969 (_1!38524 lt!2687864)))) (value!289045 (_1!38524 lt!2687864)))) e!4670323))))

(assert (= tb!263259 b!7911787))

(declare-fun m!8285376 () Bool)

(assert (=> b!7911787 m!8285376))

(declare-fun m!8285378 () Bool)

(assert (=> tb!263259 m!8285378))

(assert (=> d!2360393 t!389925))

(declare-fun b_and!353563 () Bool)

(assert (= b_and!353557 (and (=> t!389925 result!360618) b_and!353563)))

(declare-fun m!8285380 () Bool)

(assert (=> d!2360393 m!8285380))

(declare-fun m!8285382 () Bool)

(assert (=> d!2360393 m!8285382))

(assert (=> b!7911687 d!2360393))

(declare-fun d!2360397 () Bool)

(assert (=> d!2360397 (= (get!26752 lt!2687859) (v!55103 lt!2687859))))

(assert (=> b!7911687 d!2360397))

(declare-fun d!2360399 () Bool)

(declare-fun res!3140285 () Bool)

(declare-fun e!4670329 () Bool)

(assert (=> d!2360399 (=> (not res!3140285) (not e!4670329))))

(assert (=> d!2360399 (= res!3140285 (validRegex!11678 (regex!8669 rule!156)))))

(assert (=> d!2360399 (= (ruleValid!3980 thiss!15815 rule!156) e!4670329)))

(declare-fun b!7911798 () Bool)

(declare-fun res!3140286 () Bool)

(assert (=> b!7911798 (=> (not res!3140286) (not e!4670329))))

(assert (=> b!7911798 (= res!3140286 (not (nullable!9513 (regex!8669 rule!156))))))

(declare-fun b!7911799 () Bool)

(assert (=> b!7911799 (= e!4670329 (not (= (tag!9533 rule!156) (String!83350 ""))))))

(assert (= (and d!2360399 res!3140285) b!7911798))

(assert (= (and b!7911798 res!3140286) b!7911799))

(assert (=> d!2360399 m!8285372))

(assert (=> b!7911798 m!8285370))

(assert (=> b!7911692 d!2360399))

(declare-fun d!2360401 () Bool)

(declare-fun dynLambda!30169 (Int BalanceConc!30804) TokenValue!8985)

(assert (=> d!2360401 (= (apply!14378 (transformation!8669 (rule!11969 (_1!38524 lt!2687864))) (seqFromList!6196 (originalCharacters!8906 (_1!38524 lt!2687864)))) (dynLambda!30169 (toValue!11726 (transformation!8669 (rule!11969 (_1!38524 lt!2687864)))) (seqFromList!6196 (originalCharacters!8906 (_1!38524 lt!2687864)))))))

(declare-fun b_lambda!290097 () Bool)

(assert (=> (not b_lambda!290097) (not d!2360401)))

(declare-fun tb!263261 () Bool)

(declare-fun t!389927 () Bool)

(assert (=> (and b!7911688 (= (toValue!11726 (transformation!8669 rule!156)) (toValue!11726 (transformation!8669 (rule!11969 (_1!38524 lt!2687864))))) t!389927) tb!263261))

(declare-fun result!360622 () Bool)

(declare-fun inv!21 (TokenValue!8985) Bool)

(assert (=> tb!263261 (= result!360622 (inv!21 (dynLambda!30169 (toValue!11726 (transformation!8669 (rule!11969 (_1!38524 lt!2687864)))) (seqFromList!6196 (originalCharacters!8906 (_1!38524 lt!2687864))))))))

(declare-fun m!8285388 () Bool)

(assert (=> tb!263261 m!8285388))

(assert (=> d!2360401 t!389927))

(declare-fun b_and!353565 () Bool)

(assert (= b_and!353555 (and (=> t!389927 result!360622) b_and!353565)))

(assert (=> d!2360401 m!8285256))

(declare-fun m!8285390 () Bool)

(assert (=> d!2360401 m!8285390))

(assert (=> b!7911685 d!2360401))

(declare-fun d!2360405 () Bool)

(declare-fun fromListB!2800 (List!74500) BalanceConc!30804)

(assert (=> d!2360405 (= (seqFromList!6196 (originalCharacters!8906 (_1!38524 lt!2687864))) (fromListB!2800 (originalCharacters!8906 (_1!38524 lt!2687864))))))

(declare-fun bs!1968277 () Bool)

(assert (= bs!1968277 d!2360405))

(declare-fun m!8285396 () Bool)

(assert (=> bs!1968277 m!8285396))

(assert (=> b!7911685 d!2360405))

(declare-fun b!7911818 () Bool)

(declare-fun res!3140291 () Bool)

(declare-fun e!4670342 () Bool)

(assert (=> b!7911818 (=> (not res!3140291) (not e!4670342))))

(declare-fun lt!2687908 () List!74500)

(assert (=> b!7911818 (= res!3140291 (= (size!43159 lt!2687908) (+ (size!43159 lt!2687855) (size!43159 (_2!38524 lt!2687864)))))))

(declare-fun b!7911816 () Bool)

(declare-fun e!4670343 () List!74500)

(assert (=> b!7911816 (= e!4670343 (_2!38524 lt!2687864))))

(declare-fun d!2360409 () Bool)

(assert (=> d!2360409 e!4670342))

(declare-fun res!3140292 () Bool)

(assert (=> d!2360409 (=> (not res!3140292) (not e!4670342))))

(declare-fun content!15751 (List!74500) (Set C!43074))

(assert (=> d!2360409 (= res!3140292 (= (content!15751 lt!2687908) (set.union (content!15751 lt!2687855) (content!15751 (_2!38524 lt!2687864)))))))

(assert (=> d!2360409 (= lt!2687908 e!4670343)))

(declare-fun c!1451565 () Bool)

(assert (=> d!2360409 (= c!1451565 (is-Nil!74376 lt!2687855))))

(assert (=> d!2360409 (= (++!18215 lt!2687855 (_2!38524 lt!2687864)) lt!2687908)))

(declare-fun b!7911819 () Bool)

(assert (=> b!7911819 (= e!4670342 (or (not (= (_2!38524 lt!2687864) Nil!74376)) (= lt!2687908 lt!2687855)))))

(declare-fun b!7911817 () Bool)

(assert (=> b!7911817 (= e!4670343 (Cons!74376 (h!80824 lt!2687855) (++!18215 (t!389921 lt!2687855) (_2!38524 lt!2687864))))))

(assert (= (and d!2360409 c!1451565) b!7911816))

(assert (= (and d!2360409 (not c!1451565)) b!7911817))

(assert (= (and d!2360409 res!3140292) b!7911818))

(assert (= (and b!7911818 res!3140291) b!7911819))

(declare-fun m!8285400 () Bool)

(assert (=> b!7911818 m!8285400))

(declare-fun m!8285402 () Bool)

(assert (=> b!7911818 m!8285402))

(assert (=> b!7911818 m!8285274))

(declare-fun m!8285404 () Bool)

(assert (=> d!2360409 m!8285404))

(declare-fun m!8285406 () Bool)

(assert (=> d!2360409 m!8285406))

(declare-fun m!8285408 () Bool)

(assert (=> d!2360409 m!8285408))

(declare-fun m!8285410 () Bool)

(assert (=> b!7911817 m!8285410))

(assert (=> b!7911691 d!2360409))

(declare-fun d!2360415 () Bool)

(assert (=> d!2360415 (= (isEmpty!42709 (_1!38525 lt!2687863)) (is-Nil!74376 (_1!38525 lt!2687863)))))

(assert (=> b!7911694 d!2360415))

(declare-fun d!2360417 () Bool)

(declare-fun lt!2687926 () tuple2!70444)

(assert (=> d!2360417 (= (++!18215 (_1!38525 lt!2687926) (_2!38525 lt!2687926)) input!1480)))

(declare-fun sizeTr!466 (List!74500 Int) Int)

(assert (=> d!2360417 (= lt!2687926 (findLongestMatchInner!2179 (regex!8669 rule!156) Nil!74376 0 input!1480 input!1480 (sizeTr!466 input!1480 0)))))

(declare-fun lt!2687928 () Unit!169445)

(declare-fun lt!2687933 () Unit!169445)

(assert (=> d!2360417 (= lt!2687928 lt!2687933)))

(declare-fun lt!2687929 () List!74500)

(declare-fun lt!2687927 () Int)

(assert (=> d!2360417 (= (sizeTr!466 lt!2687929 lt!2687927) (+ (size!43159 lt!2687929) lt!2687927))))

(declare-fun lemmaSizeTrEqualsSize!465 (List!74500 Int) Unit!169445)

(assert (=> d!2360417 (= lt!2687933 (lemmaSizeTrEqualsSize!465 lt!2687929 lt!2687927))))

(assert (=> d!2360417 (= lt!2687927 0)))

(assert (=> d!2360417 (= lt!2687929 Nil!74376)))

(declare-fun lt!2687932 () Unit!169445)

(declare-fun lt!2687931 () Unit!169445)

(assert (=> d!2360417 (= lt!2687932 lt!2687931)))

(declare-fun lt!2687930 () Int)

(assert (=> d!2360417 (= (sizeTr!466 input!1480 lt!2687930) (+ (size!43159 input!1480) lt!2687930))))

(assert (=> d!2360417 (= lt!2687931 (lemmaSizeTrEqualsSize!465 input!1480 lt!2687930))))

(assert (=> d!2360417 (= lt!2687930 0)))

(assert (=> d!2360417 (validRegex!11678 (regex!8669 rule!156))))

(assert (=> d!2360417 (= (findLongestMatch!1962 (regex!8669 rule!156) input!1480) lt!2687926)))

(declare-fun bs!1968280 () Bool)

(assert (= bs!1968280 d!2360417))

(declare-fun m!8285414 () Bool)

(assert (=> bs!1968280 m!8285414))

(declare-fun m!8285416 () Bool)

(assert (=> bs!1968280 m!8285416))

(declare-fun m!8285418 () Bool)

(assert (=> bs!1968280 m!8285418))

(assert (=> bs!1968280 m!8285302))

(assert (=> bs!1968280 m!8285372))

(declare-fun m!8285420 () Bool)

(assert (=> bs!1968280 m!8285420))

(declare-fun m!8285422 () Bool)

(assert (=> bs!1968280 m!8285422))

(assert (=> bs!1968280 m!8285418))

(declare-fun m!8285424 () Bool)

(assert (=> bs!1968280 m!8285424))

(declare-fun m!8285426 () Bool)

(assert (=> bs!1968280 m!8285426))

(declare-fun m!8285428 () Bool)

(assert (=> bs!1968280 m!8285428))

(assert (=> b!7911694 d!2360417))

(declare-fun d!2360423 () Bool)

(assert (=> d!2360423 (= (inv!95437 (tag!9533 rule!156)) (= (mod (str.len (value!289044 (tag!9533 rule!156))) 2) 0))))

(assert (=> b!7911695 d!2360423))

(declare-fun d!2360425 () Bool)

(declare-fun res!3140295 () Bool)

(declare-fun e!4670347 () Bool)

(assert (=> d!2360425 (=> (not res!3140295) (not e!4670347))))

(declare-fun semiInverseModEq!3842 (Int Int) Bool)

(assert (=> d!2360425 (= res!3140295 (semiInverseModEq!3842 (toChars!11585 (transformation!8669 rule!156)) (toValue!11726 (transformation!8669 rule!156))))))

(assert (=> d!2360425 (= (inv!95440 (transformation!8669 rule!156)) e!4670347)))

(declare-fun b!7911824 () Bool)

(declare-fun equivClasses!3657 (Int Int) Bool)

(assert (=> b!7911824 (= e!4670347 (equivClasses!3657 (toChars!11585 (transformation!8669 rule!156)) (toValue!11726 (transformation!8669 rule!156))))))

(assert (= (and d!2360425 res!3140295) b!7911824))

(declare-fun m!8285430 () Bool)

(assert (=> d!2360425 m!8285430))

(declare-fun m!8285432 () Bool)

(assert (=> b!7911824 m!8285432))

(assert (=> b!7911695 d!2360425))

(declare-fun bm!733853 () Bool)

(declare-fun call!733858 () Bool)

(assert (=> bm!733853 (= call!733858 (isEmpty!42709 (_1!38525 lt!2687856)))))

(declare-fun b!7911825 () Bool)

(declare-fun e!4670354 () Bool)

(declare-fun lt!2687934 () Bool)

(assert (=> b!7911825 (= e!4670354 (= lt!2687934 call!733858))))

(declare-fun b!7911826 () Bool)

(declare-fun res!3140301 () Bool)

(declare-fun e!4670349 () Bool)

(assert (=> b!7911826 (=> (not res!3140301) (not e!4670349))))

(assert (=> b!7911826 (= res!3140301 (isEmpty!42709 (tail!15719 (_1!38525 lt!2687856))))))

(declare-fun b!7911827 () Bool)

(declare-fun e!4670350 () Bool)

(assert (=> b!7911827 (= e!4670350 (not (= (head!16176 (_1!38525 lt!2687856)) (c!1451544 (regex!8669 rule!156)))))))

(declare-fun b!7911828 () Bool)

(declare-fun res!3140300 () Bool)

(declare-fun e!4670353 () Bool)

(assert (=> b!7911828 (=> res!3140300 e!4670353)))

(assert (=> b!7911828 (= res!3140300 (not (is-ElementMatch!21372 (regex!8669 rule!156))))))

(declare-fun e!4670351 () Bool)

(assert (=> b!7911828 (= e!4670351 e!4670353)))

(declare-fun b!7911829 () Bool)

(declare-fun e!4670348 () Bool)

(assert (=> b!7911829 (= e!4670348 (nullable!9513 (regex!8669 rule!156)))))

(declare-fun b!7911830 () Bool)

(declare-fun e!4670352 () Bool)

(assert (=> b!7911830 (= e!4670352 e!4670350)))

(declare-fun res!3140297 () Bool)

(assert (=> b!7911830 (=> res!3140297 e!4670350)))

(assert (=> b!7911830 (= res!3140297 call!733858)))

(declare-fun b!7911831 () Bool)

(declare-fun res!3140296 () Bool)

(assert (=> b!7911831 (=> res!3140296 e!4670350)))

(assert (=> b!7911831 (= res!3140296 (not (isEmpty!42709 (tail!15719 (_1!38525 lt!2687856)))))))

(declare-fun b!7911832 () Bool)

(assert (=> b!7911832 (= e!4670351 (not lt!2687934))))

(declare-fun d!2360427 () Bool)

(assert (=> d!2360427 e!4670354))

(declare-fun c!1451568 () Bool)

(assert (=> d!2360427 (= c!1451568 (is-EmptyExpr!21372 (regex!8669 rule!156)))))

(assert (=> d!2360427 (= lt!2687934 e!4670348)))

(declare-fun c!1451567 () Bool)

(assert (=> d!2360427 (= c!1451567 (isEmpty!42709 (_1!38525 lt!2687856)))))

(assert (=> d!2360427 (validRegex!11678 (regex!8669 rule!156))))

(assert (=> d!2360427 (= (matchR!10693 (regex!8669 rule!156) (_1!38525 lt!2687856)) lt!2687934)))

(declare-fun b!7911833 () Bool)

(declare-fun res!3140302 () Bool)

(assert (=> b!7911833 (=> (not res!3140302) (not e!4670349))))

(assert (=> b!7911833 (= res!3140302 (not call!733858))))

(declare-fun b!7911834 () Bool)

(assert (=> b!7911834 (= e!4670348 (matchR!10693 (derivativeStep!6455 (regex!8669 rule!156) (head!16176 (_1!38525 lt!2687856))) (tail!15719 (_1!38525 lt!2687856))))))

(declare-fun b!7911835 () Bool)

(declare-fun res!3140298 () Bool)

(assert (=> b!7911835 (=> res!3140298 e!4670353)))

(assert (=> b!7911835 (= res!3140298 e!4670349)))

(declare-fun res!3140303 () Bool)

(assert (=> b!7911835 (=> (not res!3140303) (not e!4670349))))

(assert (=> b!7911835 (= res!3140303 lt!2687934)))

(declare-fun b!7911836 () Bool)

(assert (=> b!7911836 (= e!4670349 (= (head!16176 (_1!38525 lt!2687856)) (c!1451544 (regex!8669 rule!156))))))

(declare-fun b!7911837 () Bool)

(assert (=> b!7911837 (= e!4670353 e!4670352)))

(declare-fun res!3140299 () Bool)

(assert (=> b!7911837 (=> (not res!3140299) (not e!4670352))))

(assert (=> b!7911837 (= res!3140299 (not lt!2687934))))

(declare-fun b!7911838 () Bool)

(assert (=> b!7911838 (= e!4670354 e!4670351)))

(declare-fun c!1451569 () Bool)

(assert (=> b!7911838 (= c!1451569 (is-EmptyLang!21372 (regex!8669 rule!156)))))

(assert (= (and d!2360427 c!1451567) b!7911829))

(assert (= (and d!2360427 (not c!1451567)) b!7911834))

(assert (= (and d!2360427 c!1451568) b!7911825))

(assert (= (and d!2360427 (not c!1451568)) b!7911838))

(assert (= (and b!7911838 c!1451569) b!7911832))

(assert (= (and b!7911838 (not c!1451569)) b!7911828))

(assert (= (and b!7911828 (not res!3140300)) b!7911835))

(assert (= (and b!7911835 res!3140303) b!7911833))

(assert (= (and b!7911833 res!3140302) b!7911826))

(assert (= (and b!7911826 res!3140301) b!7911836))

(assert (= (and b!7911835 (not res!3140298)) b!7911837))

(assert (= (and b!7911837 res!3140299) b!7911830))

(assert (= (and b!7911830 (not res!3140297)) b!7911831))

(assert (= (and b!7911831 (not res!3140296)) b!7911827))

(assert (= (or b!7911825 b!7911830 b!7911833) bm!733853))

(declare-fun m!8285434 () Bool)

(assert (=> b!7911826 m!8285434))

(assert (=> b!7911826 m!8285434))

(declare-fun m!8285436 () Bool)

(assert (=> b!7911826 m!8285436))

(declare-fun m!8285438 () Bool)

(assert (=> b!7911827 m!8285438))

(assert (=> b!7911834 m!8285438))

(assert (=> b!7911834 m!8285438))

(declare-fun m!8285440 () Bool)

(assert (=> b!7911834 m!8285440))

(assert (=> b!7911834 m!8285434))

(assert (=> b!7911834 m!8285440))

(assert (=> b!7911834 m!8285434))

(declare-fun m!8285442 () Bool)

(assert (=> b!7911834 m!8285442))

(assert (=> b!7911836 m!8285438))

(assert (=> bm!733853 m!8285294))

(assert (=> b!7911829 m!8285370))

(assert (=> d!2360427 m!8285294))

(assert (=> d!2360427 m!8285372))

(assert (=> b!7911831 m!8285434))

(assert (=> b!7911831 m!8285434))

(assert (=> b!7911831 m!8285436))

(assert (=> b!7911684 d!2360427))

(declare-fun d!2360429 () Bool)

(assert (=> d!2360429 (= (isDefined!14505 lt!2687859) (not (isEmpty!42708 lt!2687859)))))

(declare-fun bs!1968281 () Bool)

(assert (= bs!1968281 d!2360429))

(assert (=> bs!1968281 m!8285296))

(assert (=> b!7911693 d!2360429))

(declare-fun d!2360431 () Bool)

(declare-fun lt!2687935 () Int)

(assert (=> d!2360431 (>= lt!2687935 0)))

(declare-fun e!4670355 () Int)

(assert (=> d!2360431 (= lt!2687935 e!4670355)))

(declare-fun c!1451570 () Bool)

(assert (=> d!2360431 (= c!1451570 (is-Nil!74376 input!1480))))

(assert (=> d!2360431 (= (size!43159 input!1480) lt!2687935)))

(declare-fun b!7911839 () Bool)

(assert (=> b!7911839 (= e!4670355 0)))

(declare-fun b!7911840 () Bool)

(assert (=> b!7911840 (= e!4670355 (+ 1 (size!43159 (t!389921 input!1480))))))

(assert (= (and d!2360431 c!1451570) b!7911839))

(assert (= (and d!2360431 (not c!1451570)) b!7911840))

(declare-fun m!8285444 () Bool)

(assert (=> b!7911840 m!8285444))

(assert (=> b!7911683 d!2360431))

(declare-fun b!7911970 () Bool)

(declare-fun e!4670428 () Bool)

(assert (=> b!7911970 (= e!4670428 true)))

(declare-fun d!2360433 () Bool)

(assert (=> d!2360433 e!4670428))

(assert (= d!2360433 b!7911970))

(declare-fun order!29931 () Int)

(declare-fun order!29929 () Int)

(declare-fun lambda!472578 () Int)

(declare-fun dynLambda!30170 (Int Int) Int)

(declare-fun dynLambda!30171 (Int Int) Int)

(assert (=> b!7911970 (< (dynLambda!30170 order!29929 (toValue!11726 (transformation!8669 rule!156))) (dynLambda!30171 order!29931 lambda!472578))))

(declare-fun order!29933 () Int)

(declare-fun dynLambda!30172 (Int Int) Int)

(assert (=> b!7911970 (< (dynLambda!30172 order!29933 (toChars!11585 (transformation!8669 rule!156))) (dynLambda!30171 order!29931 lambda!472578))))

(assert (=> d!2360433 (= (list!19322 (dynLambda!30168 (toChars!11585 (transformation!8669 rule!156)) (dynLambda!30169 (toValue!11726 (transformation!8669 rule!156)) lt!2687860))) (list!19322 lt!2687860))))

(declare-fun lt!2688066 () Unit!169445)

(declare-fun ForallOf!1315 (Int BalanceConc!30804) Unit!169445)

(assert (=> d!2360433 (= lt!2688066 (ForallOf!1315 lambda!472578 lt!2687860))))

(assert (=> d!2360433 (= (lemmaSemiInverse!2689 (transformation!8669 rule!156) lt!2687860) lt!2688066)))

(declare-fun b_lambda!290105 () Bool)

(assert (=> (not b_lambda!290105) (not d!2360433)))

(declare-fun t!389935 () Bool)

(declare-fun tb!263269 () Bool)

(assert (=> (and b!7911688 (= (toChars!11585 (transformation!8669 rule!156)) (toChars!11585 (transformation!8669 rule!156))) t!389935) tb!263269))

(declare-fun b!7911971 () Bool)

(declare-fun e!4670429 () Bool)

(declare-fun tp!2356683 () Bool)

(assert (=> b!7911971 (= e!4670429 (and (inv!95442 (c!1451545 (dynLambda!30168 (toChars!11585 (transformation!8669 rule!156)) (dynLambda!30169 (toValue!11726 (transformation!8669 rule!156)) lt!2687860)))) tp!2356683))))

(declare-fun result!360636 () Bool)

(assert (=> tb!263269 (= result!360636 (and (inv!95443 (dynLambda!30168 (toChars!11585 (transformation!8669 rule!156)) (dynLambda!30169 (toValue!11726 (transformation!8669 rule!156)) lt!2687860))) e!4670429))))

(assert (= tb!263269 b!7911971))

(declare-fun m!8285586 () Bool)

(assert (=> b!7911971 m!8285586))

(declare-fun m!8285588 () Bool)

(assert (=> tb!263269 m!8285588))

(assert (=> d!2360433 t!389935))

(declare-fun b_and!353573 () Bool)

(assert (= b_and!353563 (and (=> t!389935 result!360636) b_and!353573)))

(declare-fun b_lambda!290107 () Bool)

(assert (=> (not b_lambda!290107) (not d!2360433)))

(declare-fun t!389937 () Bool)

(declare-fun tb!263271 () Bool)

(assert (=> (and b!7911688 (= (toValue!11726 (transformation!8669 rule!156)) (toValue!11726 (transformation!8669 rule!156))) t!389937) tb!263271))

(declare-fun result!360638 () Bool)

(assert (=> tb!263271 (= result!360638 (inv!21 (dynLambda!30169 (toValue!11726 (transformation!8669 rule!156)) lt!2687860)))))

(declare-fun m!8285590 () Bool)

(assert (=> tb!263271 m!8285590))

(assert (=> d!2360433 t!389937))

(declare-fun b_and!353575 () Bool)

(assert (= b_and!353565 (and (=> t!389937 result!360638) b_and!353575)))

(declare-fun m!8285592 () Bool)

(assert (=> d!2360433 m!8285592))

(declare-fun m!8285594 () Bool)

(assert (=> d!2360433 m!8285594))

(declare-fun m!8285596 () Bool)

(assert (=> d!2360433 m!8285596))

(assert (=> d!2360433 m!8285592))

(declare-fun m!8285598 () Bool)

(assert (=> d!2360433 m!8285598))

(assert (=> d!2360433 m!8285594))

(declare-fun m!8285600 () Bool)

(assert (=> d!2360433 m!8285600))

(assert (=> b!7911683 d!2360433))

(declare-fun d!2360471 () Bool)

(declare-fun lt!2688067 () Int)

(assert (=> d!2360471 (>= lt!2688067 0)))

(declare-fun e!4670431 () Int)

(assert (=> d!2360471 (= lt!2688067 e!4670431)))

(declare-fun c!1451608 () Bool)

(assert (=> d!2360471 (= c!1451608 (is-Nil!74376 Nil!74376))))

(assert (=> d!2360471 (= (size!43159 Nil!74376) lt!2688067)))

(declare-fun b!7911972 () Bool)

(assert (=> b!7911972 (= e!4670431 0)))

(declare-fun b!7911973 () Bool)

(assert (=> b!7911973 (= e!4670431 (+ 1 (size!43159 (t!389921 Nil!74376))))))

(assert (= (and d!2360471 c!1451608) b!7911972))

(assert (= (and d!2360471 (not c!1451608)) b!7911973))

(declare-fun m!8285602 () Bool)

(assert (=> b!7911973 m!8285602))

(assert (=> b!7911683 d!2360471))

(declare-fun d!2360473 () Bool)

(declare-fun lt!2688070 () Int)

(assert (=> d!2360473 (= lt!2688070 (size!43159 (list!19322 lt!2687860)))))

(declare-fun size!43163 (Conc!15843) Int)

(assert (=> d!2360473 (= lt!2688070 (size!43163 (c!1451545 lt!2687860)))))

(assert (=> d!2360473 (= (size!43158 lt!2687860) lt!2688070)))

(declare-fun bs!1968286 () Bool)

(assert (= bs!1968286 d!2360473))

(assert (=> bs!1968286 m!8285596))

(assert (=> bs!1968286 m!8285596))

(declare-fun m!8285604 () Bool)

(assert (=> bs!1968286 m!8285604))

(declare-fun m!8285606 () Bool)

(assert (=> bs!1968286 m!8285606))

(assert (=> b!7911683 d!2360473))

(declare-fun d!2360475 () Bool)

(assert (=> d!2360475 (= (apply!14378 (transformation!8669 rule!156) lt!2687860) (dynLambda!30169 (toValue!11726 (transformation!8669 rule!156)) lt!2687860))))

(declare-fun b_lambda!290109 () Bool)

(assert (=> (not b_lambda!290109) (not d!2360475)))

(assert (=> d!2360475 t!389937))

(declare-fun b_and!353577 () Bool)

(assert (= b_and!353575 (and (=> t!389937 result!360638) b_and!353577)))

(assert (=> d!2360475 m!8285592))

(assert (=> b!7911683 d!2360475))

(declare-fun d!2360477 () Bool)

(declare-fun e!4670434 () Bool)

(assert (=> d!2360477 e!4670434))

(declare-fun res!3140356 () Bool)

(assert (=> d!2360477 (=> res!3140356 e!4670434)))

(assert (=> d!2360477 (= res!3140356 (isEmpty!42709 (_1!38525 (findLongestMatchInner!2179 (regex!8669 rule!156) Nil!74376 (size!43159 Nil!74376) input!1480 input!1480 (size!43159 input!1480)))))))

(declare-fun lt!2688073 () Unit!169445)

(declare-fun choose!59747 (Regex!21372 List!74500) Unit!169445)

(assert (=> d!2360477 (= lt!2688073 (choose!59747 (regex!8669 rule!156) input!1480))))

(assert (=> d!2360477 (validRegex!11678 (regex!8669 rule!156))))

(assert (=> d!2360477 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2142 (regex!8669 rule!156) input!1480) lt!2688073)))

(declare-fun b!7911976 () Bool)

(assert (=> b!7911976 (= e!4670434 (matchR!10693 (regex!8669 rule!156) (_1!38525 (findLongestMatchInner!2179 (regex!8669 rule!156) Nil!74376 (size!43159 Nil!74376) input!1480 input!1480 (size!43159 input!1480)))))))

(assert (= (and d!2360477 (not res!3140356)) b!7911976))

(assert (=> d!2360477 m!8285286))

(declare-fun m!8285608 () Bool)

(assert (=> d!2360477 m!8285608))

(declare-fun m!8285610 () Bool)

(assert (=> d!2360477 m!8285610))

(assert (=> d!2360477 m!8285302))

(assert (=> d!2360477 m!8285286))

(assert (=> d!2360477 m!8285302))

(declare-fun m!8285612 () Bool)

(assert (=> d!2360477 m!8285612))

(assert (=> d!2360477 m!8285372))

(assert (=> b!7911976 m!8285286))

(assert (=> b!7911976 m!8285302))

(assert (=> b!7911976 m!8285286))

(assert (=> b!7911976 m!8285302))

(assert (=> b!7911976 m!8285612))

(declare-fun m!8285614 () Bool)

(assert (=> b!7911976 m!8285614))

(assert (=> b!7911683 d!2360477))

(declare-fun d!2360479 () Bool)

(assert (=> d!2360479 (= (seqFromList!6196 (_1!38525 lt!2687863)) (fromListB!2800 (_1!38525 lt!2687863)))))

(declare-fun bs!1968287 () Bool)

(assert (= bs!1968287 d!2360479))

(declare-fun m!8285616 () Bool)

(assert (=> bs!1968287 m!8285616))

(assert (=> b!7911683 d!2360479))

(declare-fun d!2360481 () Bool)

(assert (=> d!2360481 (= (isEmpty!42709 (_1!38525 lt!2687856)) (is-Nil!74376 (_1!38525 lt!2687856)))))

(assert (=> b!7911683 d!2360481))

(declare-fun b!7912005 () Bool)

(declare-fun e!4670452 () Unit!169445)

(declare-fun Unit!169450 () Unit!169445)

(assert (=> b!7912005 (= e!4670452 Unit!169450)))

(declare-fun lt!2688145 () Unit!169445)

(declare-fun call!733909 () Unit!169445)

(assert (=> b!7912005 (= lt!2688145 call!733909)))

(declare-fun call!733905 () Bool)

(assert (=> b!7912005 call!733905))

(declare-fun lt!2688130 () Unit!169445)

(assert (=> b!7912005 (= lt!2688130 lt!2688145)))

(declare-fun lt!2688136 () Unit!169445)

(declare-fun call!733904 () Unit!169445)

(assert (=> b!7912005 (= lt!2688136 call!733904)))

(assert (=> b!7912005 (= input!1480 Nil!74376)))

(declare-fun lt!2688152 () Unit!169445)

(assert (=> b!7912005 (= lt!2688152 lt!2688136)))

(assert (=> b!7912005 false))

(declare-fun b!7912006 () Bool)

(declare-fun e!4670456 () tuple2!70444)

(declare-fun e!4670453 () tuple2!70444)

(assert (=> b!7912006 (= e!4670456 e!4670453)))

(declare-fun c!1451621 () Bool)

(assert (=> b!7912006 (= c!1451621 (= lt!2687861 lt!2687858))))

(declare-fun b!7912007 () Bool)

(declare-fun c!1451625 () Bool)

(declare-fun call!733910 () Bool)

(assert (=> b!7912007 (= c!1451625 call!733910)))

(declare-fun lt!2688141 () Unit!169445)

(declare-fun lt!2688151 () Unit!169445)

(assert (=> b!7912007 (= lt!2688141 lt!2688151)))

(assert (=> b!7912007 (= input!1480 Nil!74376)))

(assert (=> b!7912007 (= lt!2688151 call!733904)))

(declare-fun lt!2688150 () Unit!169445)

(declare-fun lt!2688146 () Unit!169445)

(assert (=> b!7912007 (= lt!2688150 lt!2688146)))

(assert (=> b!7912007 call!733905))

(assert (=> b!7912007 (= lt!2688146 call!733909)))

(declare-fun e!4670455 () tuple2!70444)

(assert (=> b!7912007 (= e!4670453 e!4670455)))

(declare-fun b!7912008 () Bool)

(declare-fun Unit!169451 () Unit!169445)

(assert (=> b!7912008 (= e!4670452 Unit!169451)))

(declare-fun bm!733898 () Bool)

(declare-fun call!733907 () Regex!21372)

(declare-fun call!733903 () C!43074)

(assert (=> bm!733898 (= call!733907 (derivativeStep!6455 (regex!8669 rule!156) call!733903))))

(declare-fun lt!2688133 () List!74500)

(declare-fun call!733906 () tuple2!70444)

(declare-fun call!733908 () List!74500)

(declare-fun bm!733899 () Bool)

(assert (=> bm!733899 (= call!733906 (findLongestMatchInner!2179 call!733907 lt!2688133 (+ lt!2687861 1) call!733908 input!1480 lt!2687858))))

(declare-fun d!2360483 () Bool)

(declare-fun e!4670451 () Bool)

(assert (=> d!2360483 e!4670451))

(declare-fun res!3140361 () Bool)

(assert (=> d!2360483 (=> (not res!3140361) (not e!4670451))))

(declare-fun lt!2688148 () tuple2!70444)

(assert (=> d!2360483 (= res!3140361 (= (++!18215 (_1!38525 lt!2688148) (_2!38525 lt!2688148)) input!1480))))

(assert (=> d!2360483 (= lt!2688148 e!4670456)))

(declare-fun c!1451624 () Bool)

(declare-fun lostCause!1929 (Regex!21372) Bool)

(assert (=> d!2360483 (= c!1451624 (lostCause!1929 (regex!8669 rule!156)))))

(declare-fun lt!2688157 () Unit!169445)

(declare-fun Unit!169452 () Unit!169445)

(assert (=> d!2360483 (= lt!2688157 Unit!169452)))

(declare-fun getSuffix!3697 (List!74500 List!74500) List!74500)

(assert (=> d!2360483 (= (getSuffix!3697 input!1480 Nil!74376) input!1480)))

(declare-fun lt!2688154 () Unit!169445)

(declare-fun lt!2688132 () Unit!169445)

(assert (=> d!2360483 (= lt!2688154 lt!2688132)))

(declare-fun lt!2688139 () List!74500)

(assert (=> d!2360483 (= input!1480 lt!2688139)))

(declare-fun lemmaSamePrefixThenSameSuffix!2945 (List!74500 List!74500 List!74500 List!74500 List!74500) Unit!169445)

(assert (=> d!2360483 (= lt!2688132 (lemmaSamePrefixThenSameSuffix!2945 Nil!74376 input!1480 Nil!74376 lt!2688139 input!1480))))

(assert (=> d!2360483 (= lt!2688139 (getSuffix!3697 input!1480 Nil!74376))))

(declare-fun lt!2688156 () Unit!169445)

(declare-fun lt!2688140 () Unit!169445)

(assert (=> d!2360483 (= lt!2688156 lt!2688140)))

(declare-fun isPrefix!6484 (List!74500 List!74500) Bool)

(assert (=> d!2360483 (isPrefix!6484 Nil!74376 (++!18215 Nil!74376 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3807 (List!74500 List!74500) Unit!169445)

(assert (=> d!2360483 (= lt!2688140 (lemmaConcatTwoListThenFirstIsPrefix!3807 Nil!74376 input!1480))))

(assert (=> d!2360483 (validRegex!11678 (regex!8669 rule!156))))

(assert (=> d!2360483 (= (findLongestMatchInner!2179 (regex!8669 rule!156) Nil!74376 lt!2687861 input!1480 input!1480 lt!2687858) lt!2688148)))

(declare-fun b!7912009 () Bool)

(declare-fun e!4670454 () tuple2!70444)

(assert (=> b!7912009 (= e!4670454 (tuple2!70445 Nil!74376 input!1480))))

(declare-fun bm!733900 () Bool)

(assert (=> bm!733900 (= call!733905 (isPrefix!6484 input!1480 input!1480))))

(declare-fun b!7912010 () Bool)

(assert (=> b!7912010 (= e!4670455 (tuple2!70445 Nil!74376 Nil!74376))))

(declare-fun b!7912011 () Bool)

(declare-fun e!4670457 () Bool)

(assert (=> b!7912011 (= e!4670451 e!4670457)))

(declare-fun res!3140362 () Bool)

(assert (=> b!7912011 (=> res!3140362 e!4670457)))

(assert (=> b!7912011 (= res!3140362 (isEmpty!42709 (_1!38525 lt!2688148)))))

(declare-fun bm!733901 () Bool)

(declare-fun lemmaIsPrefixRefl!3996 (List!74500 List!74500) Unit!169445)

(assert (=> bm!733901 (= call!733909 (lemmaIsPrefixRefl!3996 input!1480 input!1480))))

(declare-fun b!7912012 () Bool)

(declare-fun c!1451623 () Bool)

(assert (=> b!7912012 (= c!1451623 call!733910)))

(declare-fun lt!2688149 () Unit!169445)

(declare-fun lt!2688143 () Unit!169445)

(assert (=> b!7912012 (= lt!2688149 lt!2688143)))

(declare-fun lt!2688134 () C!43074)

(declare-fun lt!2688142 () List!74500)

(assert (=> b!7912012 (= (++!18215 (++!18215 Nil!74376 (Cons!74376 lt!2688134 Nil!74376)) lt!2688142) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3484 (List!74500 C!43074 List!74500 List!74500) Unit!169445)

(assert (=> b!7912012 (= lt!2688143 (lemmaMoveElementToOtherListKeepsConcatEq!3484 Nil!74376 lt!2688134 lt!2688142 input!1480))))

(assert (=> b!7912012 (= lt!2688142 (tail!15719 input!1480))))

(assert (=> b!7912012 (= lt!2688134 (head!16176 input!1480))))

(declare-fun lt!2688144 () Unit!169445)

(declare-fun lt!2688147 () Unit!169445)

(assert (=> b!7912012 (= lt!2688144 lt!2688147)))

(assert (=> b!7912012 (isPrefix!6484 (++!18215 Nil!74376 (Cons!74376 (head!16176 (getSuffix!3697 input!1480 Nil!74376)) Nil!74376)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1262 (List!74500 List!74500) Unit!169445)

(assert (=> b!7912012 (= lt!2688147 (lemmaAddHeadSuffixToPrefixStillPrefix!1262 Nil!74376 input!1480))))

(declare-fun lt!2688135 () Unit!169445)

(declare-fun lt!2688138 () Unit!169445)

(assert (=> b!7912012 (= lt!2688135 lt!2688138)))

(assert (=> b!7912012 (= lt!2688138 (lemmaAddHeadSuffixToPrefixStillPrefix!1262 Nil!74376 input!1480))))

(assert (=> b!7912012 (= lt!2688133 (++!18215 Nil!74376 (Cons!74376 (head!16176 input!1480) Nil!74376)))))

(declare-fun lt!2688155 () Unit!169445)

(assert (=> b!7912012 (= lt!2688155 e!4670452)))

(declare-fun c!1451626 () Bool)

(assert (=> b!7912012 (= c!1451626 (= (size!43159 Nil!74376) (size!43159 input!1480)))))

(declare-fun lt!2688137 () Unit!169445)

(declare-fun lt!2688153 () Unit!169445)

(assert (=> b!7912012 (= lt!2688137 lt!2688153)))

(assert (=> b!7912012 (<= (size!43159 Nil!74376) (size!43159 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1042 (List!74500 List!74500) Unit!169445)

(assert (=> b!7912012 (= lt!2688153 (lemmaIsPrefixThenSmallerEqSize!1042 Nil!74376 input!1480))))

(declare-fun e!4670458 () tuple2!70444)

(assert (=> b!7912012 (= e!4670453 e!4670458)))

(declare-fun b!7912013 () Bool)

(assert (=> b!7912013 (= e!4670458 call!733906)))

(declare-fun bm!733902 () Bool)

(assert (=> bm!733902 (= call!733903 (head!16176 input!1480))))

(declare-fun bm!733903 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1577 (List!74500 List!74500 List!74500) Unit!169445)

(assert (=> bm!733903 (= call!733904 (lemmaIsPrefixSameLengthThenSameList!1577 input!1480 Nil!74376 input!1480))))

(declare-fun b!7912014 () Bool)

(assert (=> b!7912014 (= e!4670456 (tuple2!70445 Nil!74376 input!1480))))

(declare-fun b!7912015 () Bool)

(assert (=> b!7912015 (= e!4670458 e!4670454)))

(declare-fun lt!2688131 () tuple2!70444)

(assert (=> b!7912015 (= lt!2688131 call!733906)))

(declare-fun c!1451622 () Bool)

(assert (=> b!7912015 (= c!1451622 (isEmpty!42709 (_1!38525 lt!2688131)))))

(declare-fun bm!733904 () Bool)

(assert (=> bm!733904 (= call!733910 (nullable!9513 (regex!8669 rule!156)))))

(declare-fun b!7912016 () Bool)

(assert (=> b!7912016 (= e!4670455 (tuple2!70445 Nil!74376 input!1480))))

(declare-fun b!7912017 () Bool)

(assert (=> b!7912017 (= e!4670457 (>= (size!43159 (_1!38525 lt!2688148)) (size!43159 Nil!74376)))))

(declare-fun bm!733905 () Bool)

(assert (=> bm!733905 (= call!733908 (tail!15719 input!1480))))

(declare-fun b!7912018 () Bool)

(assert (=> b!7912018 (= e!4670454 lt!2688131)))

(assert (= (and d!2360483 c!1451624) b!7912014))

(assert (= (and d!2360483 (not c!1451624)) b!7912006))

(assert (= (and b!7912006 c!1451621) b!7912007))

(assert (= (and b!7912006 (not c!1451621)) b!7912012))

(assert (= (and b!7912007 c!1451625) b!7912010))

(assert (= (and b!7912007 (not c!1451625)) b!7912016))

(assert (= (and b!7912012 c!1451626) b!7912005))

(assert (= (and b!7912012 (not c!1451626)) b!7912008))

(assert (= (and b!7912012 c!1451623) b!7912015))

(assert (= (and b!7912012 (not c!1451623)) b!7912013))

(assert (= (and b!7912015 c!1451622) b!7912009))

(assert (= (and b!7912015 (not c!1451622)) b!7912018))

(assert (= (or b!7912015 b!7912013) bm!733902))

(assert (= (or b!7912015 b!7912013) bm!733905))

(assert (= (or b!7912015 b!7912013) bm!733898))

(assert (= (or b!7912015 b!7912013) bm!733899))

(assert (= (or b!7912007 b!7912012) bm!733904))

(assert (= (or b!7912007 b!7912005) bm!733900))

(assert (= (or b!7912007 b!7912005) bm!733901))

(assert (= (or b!7912007 b!7912005) bm!733903))

(assert (= (and d!2360483 res!3140361) b!7912011))

(assert (= (and b!7912011 (not res!3140362)) b!7912017))

(declare-fun m!8285618 () Bool)

(assert (=> bm!733905 m!8285618))

(declare-fun m!8285620 () Bool)

(assert (=> b!7912017 m!8285620))

(assert (=> b!7912017 m!8285286))

(declare-fun m!8285622 () Bool)

(assert (=> b!7912012 m!8285622))

(declare-fun m!8285624 () Bool)

(assert (=> b!7912012 m!8285624))

(declare-fun m!8285626 () Bool)

(assert (=> b!7912012 m!8285626))

(declare-fun m!8285628 () Bool)

(assert (=> b!7912012 m!8285628))

(declare-fun m!8285630 () Bool)

(assert (=> b!7912012 m!8285630))

(declare-fun m!8285632 () Bool)

(assert (=> b!7912012 m!8285632))

(assert (=> b!7912012 m!8285630))

(declare-fun m!8285634 () Bool)

(assert (=> b!7912012 m!8285634))

(assert (=> b!7912012 m!8285286))

(declare-fun m!8285636 () Bool)

(assert (=> b!7912012 m!8285636))

(assert (=> b!7912012 m!8285302))

(assert (=> b!7912012 m!8285622))

(assert (=> b!7912012 m!8285634))

(declare-fun m!8285638 () Bool)

(assert (=> b!7912012 m!8285638))

(declare-fun m!8285640 () Bool)

(assert (=> b!7912012 m!8285640))

(assert (=> b!7912012 m!8285618))

(declare-fun m!8285642 () Bool)

(assert (=> b!7912012 m!8285642))

(assert (=> bm!733902 m!8285628))

(declare-fun m!8285644 () Bool)

(assert (=> b!7912015 m!8285644))

(declare-fun m!8285646 () Bool)

(assert (=> d!2360483 m!8285646))

(declare-fun m!8285648 () Bool)

(assert (=> d!2360483 m!8285648))

(assert (=> d!2360483 m!8285622))

(declare-fun m!8285650 () Bool)

(assert (=> d!2360483 m!8285650))

(declare-fun m!8285652 () Bool)

(assert (=> d!2360483 m!8285652))

(declare-fun m!8285654 () Bool)

(assert (=> d!2360483 m!8285654))

(declare-fun m!8285656 () Bool)

(assert (=> d!2360483 m!8285656))

(assert (=> d!2360483 m!8285372))

(assert (=> d!2360483 m!8285652))

(declare-fun m!8285658 () Bool)

(assert (=> bm!733899 m!8285658))

(declare-fun m!8285660 () Bool)

(assert (=> bm!733900 m!8285660))

(declare-fun m!8285662 () Bool)

(assert (=> bm!733898 m!8285662))

(declare-fun m!8285664 () Bool)

(assert (=> bm!733901 m!8285664))

(declare-fun m!8285666 () Bool)

(assert (=> bm!733903 m!8285666))

(assert (=> bm!733904 m!8285370))

(declare-fun m!8285668 () Bool)

(assert (=> b!7912011 m!8285668))

(assert (=> b!7911683 d!2360483))

(declare-fun d!2360485 () Bool)

(assert (=> d!2360485 (= (isEmpty!42708 lt!2687859) (not (is-Some!17946 lt!2687859)))))

(assert (=> b!7911683 d!2360485))

(declare-fun b!7912023 () Bool)

(declare-fun e!4670461 () Bool)

(declare-fun tp!2356686 () Bool)

(assert (=> b!7912023 (= e!4670461 (and tp_is_empty!53119 tp!2356686))))

(assert (=> b!7911689 (= tp!2356662 e!4670461)))

(assert (= (and b!7911689 (is-Cons!74376 (t!389921 input!1480))) b!7912023))

(declare-fun e!4670464 () Bool)

(assert (=> b!7911695 (= tp!2356663 e!4670464)))

(declare-fun b!7912037 () Bool)

(declare-fun tp!2356700 () Bool)

(declare-fun tp!2356698 () Bool)

(assert (=> b!7912037 (= e!4670464 (and tp!2356700 tp!2356698))))

(declare-fun b!7912036 () Bool)

(declare-fun tp!2356701 () Bool)

(assert (=> b!7912036 (= e!4670464 tp!2356701)))

(declare-fun b!7912034 () Bool)

(assert (=> b!7912034 (= e!4670464 tp_is_empty!53119)))

(declare-fun b!7912035 () Bool)

(declare-fun tp!2356699 () Bool)

(declare-fun tp!2356697 () Bool)

(assert (=> b!7912035 (= e!4670464 (and tp!2356699 tp!2356697))))

(assert (= (and b!7911695 (is-ElementMatch!21372 (regex!8669 rule!156))) b!7912034))

(assert (= (and b!7911695 (is-Concat!30358 (regex!8669 rule!156))) b!7912035))

(assert (= (and b!7911695 (is-Star!21372 (regex!8669 rule!156))) b!7912036))

(assert (= (and b!7911695 (is-Union!21372 (regex!8669 rule!156))) b!7912037))

(declare-fun b_lambda!290111 () Bool)

(assert (= b_lambda!290109 (or (and b!7911688 b_free!135219) b_lambda!290111)))

(declare-fun b_lambda!290113 () Bool)

(assert (= b_lambda!290105 (or (and b!7911688 b_free!135221) b_lambda!290113)))

(declare-fun b_lambda!290115 () Bool)

(assert (= b_lambda!290107 (or (and b!7911688 b_free!135219) b_lambda!290115)))

(push 1)

(assert (not b!7911836))

(assert (not b!7911827))

(assert (not b!7912011))

(assert (not d!2360427))

(assert (not b_lambda!290113))

(assert (not b!7911973))

(assert (not b!7911834))

(assert (not d!2360405))

(assert (not d!2360409))

(assert (not bm!733853))

(assert (not d!2360483))

(assert (not d!2360479))

(assert (not tb!263269))

(assert (not tb!263261))

(assert (not d!2360389))

(assert (not bm!733898))

(assert (not bm!733903))

(assert (not b!7911840))

(assert (not b!7912017))

(assert (not tb!263259))

(assert (not b!7911826))

(assert (not b_lambda!290111))

(assert (not b!7911829))

(assert (not b!7912037))

(assert (not d!2360391))

(assert (not b_lambda!290115))

(assert (not bm!733905))

(assert (not b!7911773))

(assert (not b!7911787))

(assert (not d!2360417))

(assert (not b_lambda!290097))

(assert (not b_lambda!290095))

(assert (not bm!733901))

(assert (not bm!733904))

(assert (not d!2360429))

(assert (not b!7911818))

(assert b_and!353573)

(assert (not b!7911740))

(assert (not b_next!136011))

(assert (not d!2360433))

(assert (not bm!733899))

(assert (not bm!733902))

(assert (not bm!733900))

(assert (not d!2360399))

(assert (not b!7911775))

(assert (not b!7911780))

(assert (not b!7912012))

(assert (not b!7912036))

(assert (not b_next!136009))

(assert (not d!2360425))

(assert (not b!7911971))

(assert (not b!7911771))

(assert (not b!7911778))

(assert (not b!7911817))

(assert b_and!353577)

(assert tp_is_empty!53119)

(assert (not b!7911824))

(assert (not b!7911770))

(assert (not tb!263271))

(assert (not b!7912023))

(assert (not b!7911976))

(assert (not b!7912035))

(assert (not b!7912015))

(assert (not d!2360393))

(assert (not d!2360473))

(assert (not d!2360477))

(assert (not b!7911831))

(assert (not b!7911798))

(assert (not bm!733852))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353577)

(assert b_and!353573)

(assert (not b_next!136009))

(assert (not b_next!136011))

(check-sat)

(pop 1)

