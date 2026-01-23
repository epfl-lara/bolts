; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64584 () Bool)

(assert start!64584)

(declare-fun b!660706 () Bool)

(declare-fun e!408645 () Bool)

(declare-fun e!408648 () Bool)

(assert (=> b!660706 (= e!408645 e!408648)))

(declare-fun res!293228 () Bool)

(assert (=> b!660706 (=> (not res!293228) (not e!408648))))

(declare-datatypes ((List!7180 0))(
  ( (Nil!7166) (Cons!7166 (h!12567 (_ BitVec 16)) (t!86252 List!7180)) )
))
(declare-datatypes ((TokenValue!1482 0))(
  ( (FloatLiteralValue!2964 (text!10819 List!7180)) (TokenValueExt!1481 (__x!5063 Int)) (Broken!7410 (value!46393 List!7180)) (Object!1495) (End!1482) (Def!1482) (Underscore!1482) (Match!1482) (Else!1482) (Error!1482) (Case!1482) (If!1482) (Extends!1482) (Abstract!1482) (Class!1482) (Val!1482) (DelimiterValue!2964 (del!1542 List!7180)) (KeywordValue!1488 (value!46394 List!7180)) (CommentValue!2964 (value!46395 List!7180)) (WhitespaceValue!2964 (value!46396 List!7180)) (IndentationValue!1482 (value!46397 List!7180)) (String!9147) (Int32!1482) (Broken!7411 (value!46398 List!7180)) (Boolean!1483) (Unit!12428) (OperatorValue!1485 (op!1542 List!7180)) (IdentifierValue!2964 (value!46399 List!7180)) (IdentifierValue!2965 (value!46400 List!7180)) (WhitespaceValue!2965 (value!46401 List!7180)) (True!2964) (False!2964) (Broken!7412 (value!46402 List!7180)) (Broken!7413 (value!46403 List!7180)) (True!2965) (RightBrace!1482) (RightBracket!1482) (Colon!1482) (Null!1482) (Comma!1482) (LeftBracket!1482) (False!2965) (LeftBrace!1482) (ImaginaryLiteralValue!1482 (text!10820 List!7180)) (StringLiteralValue!4446 (value!46404 List!7180)) (EOFValue!1482 (value!46405 List!7180)) (IdentValue!1482 (value!46406 List!7180)) (DelimiterValue!2965 (value!46407 List!7180)) (DedentValue!1482 (value!46408 List!7180)) (NewLineValue!1482 (value!46409 List!7180)) (IntegerValue!4446 (value!46410 (_ BitVec 32)) (text!10821 List!7180)) (IntegerValue!4447 (value!46411 Int) (text!10822 List!7180)) (Times!1482) (Or!1482) (Equal!1482) (Minus!1482) (Broken!7414 (value!46412 List!7180)) (And!1482) (Div!1482) (LessEqual!1482) (Mod!1482) (Concat!3265) (Not!1482) (Plus!1482) (SpaceValue!1482 (value!46413 List!7180)) (IntegerValue!4448 (value!46414 Int) (text!10823 List!7180)) (StringLiteralValue!4447 (text!10824 List!7180)) (FloatLiteralValue!2965 (text!10825 List!7180)) (BytesLiteralValue!1482 (value!46415 List!7180)) (CommentValue!2965 (value!46416 List!7180)) (StringLiteralValue!4448 (value!46417 List!7180)) (ErrorTokenValue!1482 (msg!1543 List!7180)) )
))
(declare-datatypes ((Regex!1783 0))(
  ( (ElementMatch!1783 (c!118931 (_ BitVec 16))) (Concat!3266 (regOne!4078 Regex!1783) (regTwo!4078 Regex!1783)) (EmptyExpr!1783) (Star!1783 (reg!2112 Regex!1783)) (EmptyLang!1783) (Union!1783 (regOne!4079 Regex!1783) (regTwo!4079 Regex!1783)) )
))
(declare-datatypes ((String!9148 0))(
  ( (String!9149 (value!46418 String)) )
))
(declare-datatypes ((IArray!5075 0))(
  ( (IArray!5076 (innerList!2595 List!7180)) )
))
(declare-datatypes ((Conc!2537 0))(
  ( (Node!2537 (left!5810 Conc!2537) (right!6140 Conc!2537) (csize!5304 Int) (cheight!2748 Int)) (Leaf!3777 (xs!5186 IArray!5075) (csize!5305 Int)) (Empty!2537) )
))
(declare-datatypes ((BalanceConc!5086 0))(
  ( (BalanceConc!5087 (c!118932 Conc!2537)) )
))
(declare-datatypes ((TokenValueInjection!2716 0))(
  ( (TokenValueInjection!2717 (toValue!2389 Int) (toChars!2248 Int)) )
))
(declare-datatypes ((Rule!2696 0))(
  ( (Rule!2697 (regex!1448 Regex!1783) (tag!1710 String!9148) (isSeparator!1448 Bool) (transformation!1448 TokenValueInjection!2716)) )
))
(declare-datatypes ((Token!2618 0))(
  ( (Token!2619 (value!46419 TokenValue!1482) (rule!2243 Rule!2696) (size!5684 Int) (originalCharacters!1480 List!7180)) )
))
(declare-datatypes ((List!7181 0))(
  ( (Nil!7167) (Cons!7167 (h!12568 Token!2618) (t!86253 List!7181)) )
))
(declare-datatypes ((IArray!5077 0))(
  ( (IArray!5078 (innerList!2596 List!7181)) )
))
(declare-datatypes ((Conc!2538 0))(
  ( (Node!2538 (left!5811 Conc!2538) (right!6141 Conc!2538) (csize!5306 Int) (cheight!2749 Int)) (Leaf!3778 (xs!5187 IArray!5077) (csize!5307 Int)) (Empty!2538) )
))
(declare-datatypes ((List!7182 0))(
  ( (Nil!7168) (Cons!7168 (h!12569 Rule!2696) (t!86254 List!7182)) )
))
(declare-datatypes ((BalanceConc!5088 0))(
  ( (BalanceConc!5089 (c!118933 Conc!2538)) )
))
(declare-datatypes ((PrintableTokens!200 0))(
  ( (PrintableTokens!201 (rules!8289 List!7182) (tokens!1267 BalanceConc!5088)) )
))
(declare-datatypes ((Option!1691 0))(
  ( (None!1690) (Some!1690 (v!17332 PrintableTokens!200)) )
))
(declare-fun lt!281579 () Option!1691)

(get-info :version)

(assert (=> b!660706 (= res!293228 ((_ is Some!1690) lt!281579))))

(declare-fun lt!281578 () Option!1691)

(declare-fun sepR!1 () PrintableTokens!200)

(declare-fun append!272 (PrintableTokens!200 PrintableTokens!200) Option!1691)

(assert (=> b!660706 (= lt!281579 (append!272 (v!17332 lt!281578) sepR!1))))

(declare-fun b!660707 () Bool)

(declare-fun e!408653 () Bool)

(declare-fun lt!281577 () Option!1691)

(declare-fun usesJsonRules!0 (PrintableTokens!200) Bool)

(declare-fun get!2532 (Option!1691) PrintableTokens!200)

(assert (=> b!660707 (= e!408653 (not (usesJsonRules!0 (get!2532 lt!281577))))))

(declare-fun b!660708 () Bool)

(declare-fun e!408647 () Bool)

(declare-fun e!408650 () Bool)

(declare-fun tp!201496 () Bool)

(declare-fun objs!31 () PrintableTokens!200)

(declare-fun inv!9194 (BalanceConc!5088) Bool)

(assert (=> b!660708 (= e!408647 (and tp!201496 (inv!9194 (tokens!1267 objs!31)) e!408650))))

(declare-fun e!408651 () Bool)

(declare-fun tp!201494 () Bool)

(declare-fun b!660709 () Bool)

(declare-fun e!408646 () Bool)

(assert (=> b!660709 (= e!408646 (and tp!201494 (inv!9194 (tokens!1267 sepR!1)) e!408651))))

(declare-fun b!660710 () Bool)

(declare-fun res!293226 () Bool)

(declare-fun e!408649 () Bool)

(assert (=> b!660710 (=> (not res!293226) (not e!408649))))

(assert (=> b!660710 (= res!293226 (usesJsonRules!0 sepR!1))))

(declare-fun b!660711 () Bool)

(assert (=> b!660711 (= e!408649 e!408645)))

(declare-fun res!293225 () Bool)

(assert (=> b!660711 (=> (not res!293225) (not e!408645))))

(assert (=> b!660711 (= res!293225 ((_ is Some!1690) lt!281578))))

(declare-fun sepL!1 () PrintableTokens!200)

(assert (=> b!660711 (= lt!281578 (append!272 sepL!1 objs!31))))

(declare-fun b!660712 () Bool)

(declare-fun res!293229 () Bool)

(assert (=> b!660712 (=> (not res!293229) (not e!408649))))

(assert (=> b!660712 (= res!293229 (usesJsonRules!0 sepL!1))))

(declare-fun res!293230 () Bool)

(assert (=> start!64584 (=> (not res!293230) (not e!408649))))

(assert (=> start!64584 (= res!293230 (usesJsonRules!0 objs!31))))

(assert (=> start!64584 e!408649))

(declare-fun inv!9195 (PrintableTokens!200) Bool)

(assert (=> start!64584 (and (inv!9195 objs!31) e!408647)))

(declare-fun e!408654 () Bool)

(assert (=> start!64584 (and (inv!9195 sepL!1) e!408654)))

(assert (=> start!64584 (and (inv!9195 sepR!1) e!408646)))

(declare-fun tp!201493 () Bool)

(declare-fun b!660713 () Bool)

(declare-fun e!408652 () Bool)

(assert (=> b!660713 (= e!408654 (and tp!201493 (inv!9194 (tokens!1267 sepL!1)) e!408652))))

(declare-fun b!660714 () Bool)

(declare-fun tp!201495 () Bool)

(declare-fun inv!9196 (Conc!2538) Bool)

(assert (=> b!660714 (= e!408652 (and (inv!9196 (c!118933 (tokens!1267 sepL!1))) tp!201495))))

(declare-fun b!660715 () Bool)

(assert (=> b!660715 (= e!408648 e!408653)))

(declare-fun res!293227 () Bool)

(assert (=> b!660715 (=> (not res!293227) (not e!408653))))

(declare-fun isEmpty!4789 (Option!1691) Bool)

(assert (=> b!660715 (= res!293227 (not (isEmpty!4789 lt!281577)))))

(assert (=> b!660715 (= lt!281577 (Some!1690 (v!17332 lt!281579)))))

(declare-fun b!660716 () Bool)

(declare-fun tp!201491 () Bool)

(assert (=> b!660716 (= e!408651 (and (inv!9196 (c!118933 (tokens!1267 sepR!1))) tp!201491))))

(declare-fun b!660717 () Bool)

(declare-fun tp!201492 () Bool)

(assert (=> b!660717 (= e!408650 (and (inv!9196 (c!118933 (tokens!1267 objs!31))) tp!201492))))

(assert (= (and start!64584 res!293230) b!660712))

(assert (= (and b!660712 res!293229) b!660710))

(assert (= (and b!660710 res!293226) b!660711))

(assert (= (and b!660711 res!293225) b!660706))

(assert (= (and b!660706 res!293228) b!660715))

(assert (= (and b!660715 res!293227) b!660707))

(assert (= b!660708 b!660717))

(assert (= start!64584 b!660708))

(assert (= b!660713 b!660714))

(assert (= start!64584 b!660713))

(assert (= b!660709 b!660716))

(assert (= start!64584 b!660709))

(declare-fun m!926833 () Bool)

(assert (=> b!660716 m!926833))

(declare-fun m!926835 () Bool)

(assert (=> start!64584 m!926835))

(declare-fun m!926837 () Bool)

(assert (=> start!64584 m!926837))

(declare-fun m!926839 () Bool)

(assert (=> start!64584 m!926839))

(declare-fun m!926841 () Bool)

(assert (=> start!64584 m!926841))

(declare-fun m!926843 () Bool)

(assert (=> b!660713 m!926843))

(declare-fun m!926845 () Bool)

(assert (=> b!660711 m!926845))

(declare-fun m!926847 () Bool)

(assert (=> b!660706 m!926847))

(declare-fun m!926849 () Bool)

(assert (=> b!660712 m!926849))

(declare-fun m!926851 () Bool)

(assert (=> b!660708 m!926851))

(declare-fun m!926853 () Bool)

(assert (=> b!660707 m!926853))

(assert (=> b!660707 m!926853))

(declare-fun m!926855 () Bool)

(assert (=> b!660707 m!926855))

(declare-fun m!926857 () Bool)

(assert (=> b!660714 m!926857))

(declare-fun m!926859 () Bool)

(assert (=> b!660717 m!926859))

(declare-fun m!926861 () Bool)

(assert (=> b!660709 m!926861))

(declare-fun m!926863 () Bool)

(assert (=> b!660710 m!926863))

(declare-fun m!926865 () Bool)

(assert (=> b!660715 m!926865))

(check-sat (not start!64584) (not b!660706) (not b!660708) (not b!660707) (not b!660717) (not b!660715) (not b!660711) (not b!660716) (not b!660712) (not b!660709) (not b!660713) (not b!660710) (not b!660714))
(check-sat)
(get-model)

(declare-fun d!225972 () Bool)

(declare-fun isBalanced!665 (Conc!2538) Bool)

(assert (=> d!225972 (= (inv!9194 (tokens!1267 sepR!1)) (isBalanced!665 (c!118933 (tokens!1267 sepR!1))))))

(declare-fun bs!94433 () Bool)

(assert (= bs!94433 d!225972))

(declare-fun m!926867 () Bool)

(assert (=> bs!94433 m!926867))

(assert (=> b!660709 d!225972))

(declare-fun d!225974 () Bool)

(declare-datatypes ((JsonLexer!230 0))(
  ( (JsonLexer!231) )
))
(declare-fun rules!109 (JsonLexer!230) List!7182)

(assert (=> d!225974 (= (usesJsonRules!0 sepR!1) (= (rules!8289 sepR!1) (rules!109 JsonLexer!231)))))

(declare-fun bs!94437 () Bool)

(assert (= bs!94437 d!225974))

(declare-fun m!926879 () Bool)

(assert (=> bs!94437 m!926879))

(assert (=> b!660710 d!225974))

(declare-fun d!225984 () Bool)

(assert (=> d!225984 (= (inv!9194 (tokens!1267 objs!31)) (isBalanced!665 (c!118933 (tokens!1267 objs!31))))))

(declare-fun bs!94438 () Bool)

(assert (= bs!94438 d!225984))

(declare-fun m!926881 () Bool)

(assert (=> bs!94438 m!926881))

(assert (=> b!660708 d!225984))

(declare-fun d!225986 () Bool)

(declare-fun c!118939 () Bool)

(assert (=> d!225986 (= c!118939 ((_ is Node!2538) (c!118933 (tokens!1267 objs!31))))))

(declare-fun e!408665 () Bool)

(assert (=> d!225986 (= (inv!9196 (c!118933 (tokens!1267 objs!31))) e!408665)))

(declare-fun b!660733 () Bool)

(declare-fun inv!9199 (Conc!2538) Bool)

(assert (=> b!660733 (= e!408665 (inv!9199 (c!118933 (tokens!1267 objs!31))))))

(declare-fun b!660734 () Bool)

(declare-fun e!408666 () Bool)

(assert (=> b!660734 (= e!408665 e!408666)))

(declare-fun res!293238 () Bool)

(assert (=> b!660734 (= res!293238 (not ((_ is Leaf!3778) (c!118933 (tokens!1267 objs!31)))))))

(assert (=> b!660734 (=> res!293238 e!408666)))

(declare-fun b!660735 () Bool)

(declare-fun inv!9200 (Conc!2538) Bool)

(assert (=> b!660735 (= e!408666 (inv!9200 (c!118933 (tokens!1267 objs!31))))))

(assert (= (and d!225986 c!118939) b!660733))

(assert (= (and d!225986 (not c!118939)) b!660734))

(assert (= (and b!660734 (not res!293238)) b!660735))

(declare-fun m!926883 () Bool)

(assert (=> b!660733 m!926883))

(declare-fun m!926885 () Bool)

(assert (=> b!660735 m!926885))

(assert (=> b!660717 d!225986))

(declare-fun d!225988 () Bool)

(assert (=> d!225988 (= (usesJsonRules!0 (get!2532 lt!281577)) (= (rules!8289 (get!2532 lt!281577)) (rules!109 JsonLexer!231)))))

(declare-fun bs!94439 () Bool)

(assert (= bs!94439 d!225988))

(assert (=> bs!94439 m!926879))

(assert (=> b!660707 d!225988))

(declare-fun d!225990 () Bool)

(assert (=> d!225990 (= (get!2532 lt!281577) (v!17332 lt!281577))))

(assert (=> b!660707 d!225990))

(declare-fun d!225992 () Bool)

(declare-fun c!118940 () Bool)

(assert (=> d!225992 (= c!118940 ((_ is Node!2538) (c!118933 (tokens!1267 sepR!1))))))

(declare-fun e!408667 () Bool)

(assert (=> d!225992 (= (inv!9196 (c!118933 (tokens!1267 sepR!1))) e!408667)))

(declare-fun b!660736 () Bool)

(assert (=> b!660736 (= e!408667 (inv!9199 (c!118933 (tokens!1267 sepR!1))))))

(declare-fun b!660737 () Bool)

(declare-fun e!408668 () Bool)

(assert (=> b!660737 (= e!408667 e!408668)))

(declare-fun res!293239 () Bool)

(assert (=> b!660737 (= res!293239 (not ((_ is Leaf!3778) (c!118933 (tokens!1267 sepR!1)))))))

(assert (=> b!660737 (=> res!293239 e!408668)))

(declare-fun b!660738 () Bool)

(assert (=> b!660738 (= e!408668 (inv!9200 (c!118933 (tokens!1267 sepR!1))))))

(assert (= (and d!225992 c!118940) b!660736))

(assert (= (and d!225992 (not c!118940)) b!660737))

(assert (= (and b!660737 (not res!293239)) b!660738))

(declare-fun m!926887 () Bool)

(assert (=> b!660736 m!926887))

(declare-fun m!926889 () Bool)

(assert (=> b!660738 m!926889))

(assert (=> b!660716 d!225992))

(declare-fun d!225994 () Bool)

(declare-fun e!408762 () Bool)

(assert (=> d!225994 e!408762))

(declare-fun res!293276 () Bool)

(assert (=> d!225994 (=> res!293276 e!408762)))

(declare-fun lt!282011 () Option!1691)

(assert (=> d!225994 (= res!293276 (isEmpty!4789 lt!282011))))

(declare-fun e!408770 () Option!1691)

(assert (=> d!225994 (= lt!282011 e!408770)))

(declare-fun c!118991 () Bool)

(declare-fun isEmpty!4792 (BalanceConc!5088) Bool)

(assert (=> d!225994 (= c!118991 (isEmpty!4792 (tokens!1267 sepR!1)))))

(declare-datatypes ((Unit!12447 0))(
  ( (Unit!12448) )
))
(declare-fun lt!281993 () Unit!12447)

(declare-fun lemmaInvariant!84 (PrintableTokens!200) Unit!12447)

(assert (=> d!225994 (= lt!281993 (lemmaInvariant!84 (v!17332 lt!281578)))))

(declare-fun lt!281999 () Unit!12447)

(assert (=> d!225994 (= lt!281999 (lemmaInvariant!84 sepR!1))))

(assert (=> d!225994 (= (rules!8289 (v!17332 lt!281578)) (rules!8289 sepR!1))))

(assert (=> d!225994 (= (append!272 (v!17332 lt!281578) sepR!1) lt!282011)))

(declare-fun call!43364 () List!7181)

(declare-fun bm!43332 () Bool)

(declare-fun list!3052 (BalanceConc!5088) List!7181)

(assert (=> bm!43332 (= call!43364 (list!3052 (ite c!118991 (tokens!1267 sepR!1) (tokens!1267 (v!17332 lt!281578)))))))

(declare-fun bm!43333 () Bool)

(declare-fun call!43366 () BalanceConc!5086)

(declare-fun call!43341 () BalanceConc!5086)

(assert (=> bm!43333 (= call!43366 call!43341)))

(declare-fun b!660896 () Bool)

(declare-fun e!408768 () Bool)

(declare-fun list!3053 (BalanceConc!5086) List!7180)

(declare-fun print!524 (PrintableTokens!200) BalanceConc!5086)

(declare-fun ++!1918 (List!7180 List!7180) List!7180)

(assert (=> b!660896 (= e!408768 (= (list!3053 (print!524 (get!2532 lt!282011))) (++!1918 (list!3053 (print!524 (v!17332 lt!281578))) (list!3053 (print!524 sepR!1)))))))

(declare-fun bm!43334 () Bool)

(declare-fun call!43351 () BalanceConc!5086)

(assert (=> bm!43334 (= call!43351 (print!524 sepR!1))))

(declare-fun b!660897 () Bool)

(declare-fun e!408765 () Option!1691)

(assert (=> b!660897 (= e!408765 None!1690)))

(declare-fun call!43375 () List!7181)

(declare-fun call!43356 () List!7180)

(declare-datatypes ((LexerInterface!1273 0))(
  ( (LexerInterfaceExt!1270 (__x!5065 Int)) (Lexer!1271) )
))
(declare-fun lt!282003 () LexerInterface!1273)

(declare-fun c!118988 () Bool)

(declare-fun call!43355 () List!7181)

(declare-fun bm!43335 () Bool)

(declare-fun printList!446 (LexerInterface!1273 List!7181) List!7180)

(assert (=> bm!43335 (= call!43356 (printList!446 (ite (or c!118991 c!118988) Lexer!1271 lt!282003) (ite c!118991 Nil!7167 (ite c!118988 call!43355 call!43375))))))

(declare-fun lt!281987 () List!7181)

(declare-fun call!43371 () List!7181)

(declare-fun lt!281968 () List!7181)

(declare-fun bm!43336 () Bool)

(declare-fun lt!281994 () List!7181)

(declare-fun lt!281995 () List!7181)

(declare-fun lt!282019 () List!7181)

(declare-fun lt!282002 () List!7181)

(declare-fun ++!1919 (List!7181 List!7181) List!7181)

(assert (=> bm!43336 (= call!43371 (++!1919 (ite c!118991 lt!281987 (ite c!118988 lt!282019 lt!281995)) (ite c!118991 lt!282002 (ite c!118988 lt!281994 lt!281968))))))

(declare-fun bm!43337 () Bool)

(declare-fun call!43365 () List!7180)

(declare-fun call!43367 () List!7180)

(assert (=> bm!43337 (= call!43365 call!43367)))

(declare-fun call!43358 () List!7180)

(declare-fun call!43372 () List!7180)

(declare-fun call!43337 () List!7180)

(declare-fun e!408767 () List!7180)

(declare-fun bm!43338 () Bool)

(declare-fun call!43350 () List!7180)

(assert (=> bm!43338 (= call!43372 (++!1918 (ite c!118991 call!43337 e!408767) (ite c!118991 call!43350 (ite c!118988 call!43365 call!43358))))))

(declare-fun b!660898 () Bool)

(declare-fun e!408769 () List!7180)

(assert (=> b!660898 (= e!408769 Nil!7166)))

(declare-fun bm!43339 () Bool)

(declare-fun print!525 (LexerInterface!1273 BalanceConc!5088) BalanceConc!5086)

(assert (=> bm!43339 (= call!43341 (print!525 Lexer!1271 (tokens!1267 sepR!1)))))

(declare-fun b!660899 () Bool)

(declare-fun call!43338 () List!7180)

(assert (=> b!660899 (= e!408767 call!43338)))

(declare-fun b!660900 () Bool)

(declare-fun ++!1920 (BalanceConc!5088 BalanceConc!5088) BalanceConc!5088)

(assert (=> b!660900 (= e!408765 (Some!1690 (PrintableTokens!201 (rules!8289 (v!17332 lt!281578)) (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1)))))))

(declare-fun lt!282017 () LexerInterface!1273)

(assert (=> b!660900 (= lt!282017 Lexer!1271)))

(declare-fun lt!281997 () List!7181)

(declare-fun call!43345 () List!7181)

(assert (=> b!660900 (= lt!281997 call!43345)))

(declare-fun lt!282000 () List!7181)

(assert (=> b!660900 (= lt!282000 call!43355)))

(declare-fun lt!282013 () Unit!12447)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!9 (LexerInterface!1273 List!7181 List!7181 List!7182) Unit!12447)

(assert (=> b!660900 (= lt!282013 (tokensListTwoByTwoPredicateConcatSeparableTokensList!9 lt!282017 lt!281997 lt!282000 (rules!8289 (v!17332 lt!281578))))))

(declare-fun lt!282008 () Unit!12447)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!9 (LexerInterface!1273 List!7182 List!7181 List!7181) Unit!12447)

(assert (=> b!660900 (= lt!282008 (lemmaRulesProduceEachTokenIndividuallyConcat!9 lt!282017 (rules!8289 (v!17332 lt!281578)) lt!281997 lt!282000))))

(declare-fun rulesProduceEachTokenIndividuallyList!347 (LexerInterface!1273 List!7182 List!7181) Bool)

(assert (=> b!660900 (rulesProduceEachTokenIndividuallyList!347 lt!282017 (rules!8289 (v!17332 lt!281578)) (++!1919 lt!281997 lt!282000))))

(declare-fun lt!281992 () Unit!12447)

(assert (=> b!660900 (= lt!281992 lt!282008)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!16 (LexerInterface!1273 List!7181 List!7182) Bool)

(assert (=> b!660900 (tokensListTwoByTwoPredicateSeparableList!16 lt!282017 (++!1919 lt!281997 lt!282000) (rules!8289 (v!17332 lt!281578)))))

(declare-fun lt!282021 () Unit!12447)

(assert (=> b!660900 (= lt!282021 lt!282013)))

(assert (=> b!660900 (= lt!282003 Lexer!1271)))

(assert (=> b!660900 (= lt!281995 call!43345)))

(assert (=> b!660900 (= lt!281968 call!43355)))

(declare-fun lt!281980 () Unit!12447)

(declare-fun lemmaPrintConcatSameAsConcatPrint!9 (LexerInterface!1273 List!7181 List!7181) Unit!12447)

(assert (=> b!660900 (= lt!281980 (lemmaPrintConcatSameAsConcatPrint!9 lt!282003 lt!281995 lt!281968))))

(declare-fun call!43343 () List!7180)

(declare-fun call!43352 () List!7180)

(assert (=> b!660900 (= call!43343 call!43352)))

(declare-fun lt!281966 () Unit!12447)

(assert (=> b!660900 (= lt!281966 lt!281980)))

(declare-fun lt!281979 () Unit!12447)

(declare-fun call!43369 () Unit!12447)

(assert (=> b!660900 (= lt!281979 call!43369)))

(declare-fun call!43354 () BalanceConc!5086)

(declare-fun call!43349 () BalanceConc!5086)

(assert (=> b!660900 (= call!43354 call!43349)))

(declare-fun lt!281998 () Unit!12447)

(declare-fun Unit!12454 () Unit!12447)

(assert (=> b!660900 (= lt!281998 Unit!12454)))

(declare-fun lt!282005 () Unit!12447)

(declare-fun call!43374 () Unit!12447)

(assert (=> b!660900 (= lt!282005 call!43374)))

(declare-fun call!43370 () BalanceConc!5086)

(assert (=> b!660900 (= call!43370 call!43366)))

(declare-fun lt!282023 () Unit!12447)

(declare-fun Unit!12455 () Unit!12447)

(assert (=> b!660900 (= lt!282023 Unit!12455)))

(declare-fun lt!281977 () PrintableTokens!200)

(assert (=> b!660900 (= lt!281977 (PrintableTokens!201 (rules!8289 (v!17332 lt!281578)) (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1))))))

(declare-fun lt!281978 () BalanceConc!5088)

(assert (=> b!660900 (= lt!281978 (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1)))))

(declare-fun lt!282001 () Unit!12447)

(declare-fun theoremInvertabilityWhenTokenListSeparable!14 (LexerInterface!1273 List!7182 List!7181) Unit!12447)

(assert (=> b!660900 (= lt!282001 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 (v!17332 lt!281578)) (list!3052 (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1)))))))

(assert (=> b!660900 (= (print!524 (PrintableTokens!201 (rules!8289 (v!17332 lt!281578)) (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1)))) (print!525 Lexer!1271 (++!1920 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1))))))

(declare-fun lt!282018 () Unit!12447)

(declare-fun Unit!12456 () Unit!12447)

(assert (=> b!660900 (= lt!282018 Unit!12456)))

(declare-fun lt!281991 () LexerInterface!1273)

(assert (=> b!660900 (= lt!281991 Lexer!1271)))

(declare-fun lt!281964 () List!7181)

(assert (=> b!660900 (= lt!281964 call!43345)))

(declare-fun lt!281972 () List!7181)

(assert (=> b!660900 (= lt!281972 call!43355)))

(declare-fun lt!282009 () Unit!12447)

(declare-fun call!43347 () Unit!12447)

(assert (=> b!660900 (= lt!282009 call!43347)))

(declare-fun call!43353 () List!7180)

(declare-fun call!43348 () List!7180)

(assert (=> b!660900 (= call!43353 call!43348)))

(declare-fun lt!282014 () Unit!12447)

(assert (=> b!660900 (= lt!282014 lt!282009)))

(declare-fun call!43342 () List!7181)

(declare-fun call!43363 () Unit!12447)

(declare-fun bm!43340 () Bool)

(assert (=> bm!43340 (= call!43363 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 (v!17332 lt!281578)) (ite c!118991 call!43342 call!43345)))))

(declare-fun b!660901 () Bool)

(declare-fun res!293277 () Bool)

(assert (=> b!660901 (=> (not res!293277) (not e!408768))))

(assert (=> b!660901 (= res!293277 (= (list!3052 (tokens!1267 (get!2532 lt!282011))) (++!1919 (list!3052 (tokens!1267 (v!17332 lt!281578))) (list!3052 (tokens!1267 sepR!1)))))))

(declare-fun bm!43341 () Bool)

(declare-fun call!43346 () List!7180)

(assert (=> bm!43341 (= call!43338 call!43346)))

(declare-fun call!43362 () List!7180)

(declare-fun call!43359 () List!7180)

(declare-fun call!43357 () List!7180)

(declare-fun bm!43342 () Bool)

(declare-fun call!43344 () List!7180)

(assert (=> bm!43342 (= call!43357 (++!1918 (ite c!118991 call!43362 (ite c!118988 call!43338 call!43359)) (ite c!118991 call!43344 (ite c!118988 call!43359 call!43365))))))

(declare-fun bm!43343 () Bool)

(assert (=> bm!43343 (= call!43342 (list!3052 (ite c!118991 (tokens!1267 (v!17332 lt!281578)) (tokens!1267 sepR!1))))))

(declare-fun b!660902 () Bool)

(declare-fun e!408763 () List!7181)

(assert (=> b!660902 (= e!408763 call!43375)))

(declare-fun bm!43344 () Bool)

(declare-fun call!43339 () BalanceConc!5086)

(assert (=> bm!43344 (= call!43339 (print!525 Lexer!1271 (tokens!1267 (v!17332 lt!281578))))))

(declare-fun bm!43345 () Bool)

(declare-fun call!43340 () BalanceConc!5086)

(assert (=> bm!43345 (= call!43340 (print!524 (v!17332 lt!281578)))))

(declare-fun bm!43346 () Bool)

(assert (=> bm!43346 (= call!43345 call!43364)))

(declare-fun bm!43347 () Bool)

(assert (=> bm!43347 (= call!43354 call!43340)))

(declare-fun bm!43348 () Bool)

(assert (=> bm!43348 (= call!43358 call!43337)))

(declare-fun b!660903 () Bool)

(assert (=> b!660903 (= e!408763 (++!1919 lt!281964 lt!281972))))

(declare-fun lt!282025 () List!7181)

(declare-fun lt!281973 () LexerInterface!1273)

(declare-fun bm!43349 () Bool)

(assert (=> bm!43349 (= call!43367 (printList!446 (ite c!118991 lt!281973 (ite c!118988 Lexer!1271 lt!282003)) (ite c!118991 call!43371 (ite c!118988 (t!86253 lt!282025) lt!281968))))))

(declare-fun lt!281984 () LexerInterface!1273)

(declare-fun bm!43350 () Bool)

(assert (=> bm!43350 (= call!43350 (printList!446 (ite c!118991 lt!281973 (ite c!118988 lt!281984 lt!282003)) (ite c!118991 lt!282002 (ite c!118988 lt!281994 lt!281995))))))

(declare-fun bm!43351 () Bool)

(declare-fun call!43368 () Unit!12447)

(assert (=> bm!43351 (= call!43347 call!43368)))

(declare-fun b!660904 () Bool)

(declare-fun c!118992 () Bool)

(declare-fun separableTokensPredicate!18 (LexerInterface!1273 Token!2618 Token!2618 List!7182) Bool)

(declare-fun last!54 (BalanceConc!5088) Token!2618)

(declare-fun head!1379 (BalanceConc!5088) Token!2618)

(assert (=> b!660904 (= c!118992 (separableTokensPredicate!18 Lexer!1271 (last!54 (tokens!1267 (v!17332 lt!281578))) (head!1379 (tokens!1267 sepR!1)) (rules!8289 (v!17332 lt!281578))))))

(declare-fun lt!281990 () Unit!12447)

(declare-fun lt!281969 () Unit!12447)

(assert (=> b!660904 (= lt!281990 lt!281969)))

(declare-fun lt!282015 () LexerInterface!1273)

(declare-fun lt!282022 () Token!2618)

(declare-fun rulesProduceIndividualToken!528 (LexerInterface!1273 List!7182 Token!2618) Bool)

(assert (=> b!660904 (rulesProduceIndividualToken!528 lt!282015 (rules!8289 (v!17332 lt!281578)) lt!282022)))

(declare-fun lt!282026 () List!7181)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!214 (LexerInterface!1273 List!7182 List!7181 Token!2618) Unit!12447)

(assert (=> b!660904 (= lt!281969 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!214 lt!282015 (rules!8289 (v!17332 lt!281578)) lt!282026 lt!282022))))

(assert (=> b!660904 (= lt!282022 (head!1379 (tokens!1267 sepR!1)))))

(assert (=> b!660904 (= lt!282026 call!43355)))

(assert (=> b!660904 (= lt!282015 Lexer!1271)))

(declare-fun lt!282027 () Unit!12447)

(declare-fun lt!281985 () Unit!12447)

(assert (=> b!660904 (= lt!282027 lt!281985)))

(declare-fun lt!282020 () LexerInterface!1273)

(declare-fun lt!282007 () Token!2618)

(assert (=> b!660904 (rulesProduceIndividualToken!528 lt!282020 (rules!8289 (v!17332 lt!281578)) lt!282007)))

(declare-fun lt!282012 () List!7181)

(assert (=> b!660904 (= lt!281985 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!214 lt!282020 (rules!8289 (v!17332 lt!281578)) lt!282012 lt!282007))))

(assert (=> b!660904 (= lt!282007 (last!54 (tokens!1267 (v!17332 lt!281578))))))

(assert (=> b!660904 (= lt!282012 call!43345)))

(assert (=> b!660904 (= lt!282020 Lexer!1271)))

(declare-fun e!408764 () Option!1691)

(assert (=> b!660904 (= e!408764 e!408765)))

(declare-fun b!660905 () Bool)

(declare-fun e!408766 () List!7180)

(assert (=> b!660905 (= e!408766 Nil!7166)))

(declare-fun bm!43352 () Bool)

(declare-fun lt!282004 () List!7181)

(declare-fun call!43373 () BalanceConc!5086)

(declare-fun charsOf!918 (Token!2618) BalanceConc!5086)

(assert (=> bm!43352 (= call!43373 (charsOf!918 (ite c!118991 (h!12568 lt!282004) (h!12568 lt!282025))))))

(declare-fun b!660906 () Bool)

(assert (=> b!660906 (= e!408770 (Some!1690 (v!17332 lt!281578)))))

(assert (=> b!660906 (= lt!281973 Lexer!1271)))

(assert (=> b!660906 (= lt!281987 call!43342)))

(assert (=> b!660906 (= lt!282002 Nil!7167)))

(declare-fun lt!281983 () Unit!12447)

(assert (=> b!660906 (= lt!281983 call!43368)))

(assert (=> b!660906 (= call!43367 call!43372)))

(declare-fun lt!281982 () Unit!12447)

(assert (=> b!660906 (= lt!281982 lt!281983)))

(assert (=> b!660906 (= call!43356 Nil!7166)))

(declare-fun lt!281996 () Unit!12447)

(declare-fun Unit!12462 () Unit!12447)

(assert (=> b!660906 (= lt!281996 Unit!12462)))

(declare-fun lt!282006 () Unit!12447)

(assert (=> b!660906 (= lt!282006 call!43363)))

(assert (=> b!660906 (= call!43340 call!43339)))

(declare-fun lt!281989 () Unit!12447)

(declare-fun Unit!12463 () Unit!12447)

(assert (=> b!660906 (= lt!281989 Unit!12463)))

(declare-fun lt!281975 () Unit!12447)

(declare-fun call!43361 () Unit!12447)

(assert (=> b!660906 (= lt!281975 call!43361)))

(assert (=> b!660906 (= call!43351 call!43341)))

(declare-fun lt!281981 () Unit!12447)

(declare-fun Unit!12464 () Unit!12447)

(assert (=> b!660906 (= lt!281981 Unit!12464)))

(declare-fun call!43360 () BalanceConc!5086)

(assert (=> b!660906 (= call!43341 call!43360)))

(declare-fun lt!281967 () Unit!12447)

(declare-fun Unit!12465 () Unit!12447)

(assert (=> b!660906 (= lt!281967 Unit!12465)))

(assert (=> b!660906 (= lt!282004 call!43364)))

(declare-fun c!118990 () Bool)

(assert (=> b!660906 (= c!118990 ((_ is Cons!7167) lt!282004))))

(assert (=> b!660906 (= call!43346 e!408769)))

(declare-fun lt!281974 () Unit!12447)

(declare-fun Unit!12466 () Unit!12447)

(assert (=> b!660906 (= lt!281974 Unit!12466)))

(declare-fun bm!43353 () Bool)

(assert (=> bm!43353 (= call!43369 call!43363)))

(declare-fun bm!43354 () Bool)

(assert (=> bm!43354 (= call!43368 (lemmaPrintConcatSameAsConcatPrint!9 (ite c!118991 lt!281973 (ite c!118988 lt!281984 lt!281991)) (ite c!118991 lt!281987 (ite c!118988 lt!282019 lt!281964)) (ite c!118991 lt!282002 (ite c!118988 lt!281994 lt!281972))))))

(declare-fun bm!43355 () Bool)

(assert (=> bm!43355 (= call!43355 call!43342)))

(declare-fun bm!43356 () Bool)

(assert (=> bm!43356 (= call!43337 (printList!446 (ite c!118991 lt!281973 (ite c!118988 Lexer!1271 lt!281991)) (ite c!118991 lt!281987 (ite c!118988 Nil!7167 lt!281972))))))

(declare-fun bm!43357 () Bool)

(assert (=> bm!43357 (= call!43352 call!43357)))

(declare-fun bm!43358 () Bool)

(assert (=> bm!43358 (= call!43374 call!43361)))

(declare-fun bm!43359 () Bool)

(assert (=> bm!43359 (= call!43362 (list!3053 call!43373))))

(declare-fun b!660907 () Bool)

(assert (=> b!660907 (= e!408769 call!43357)))

(declare-fun bm!43360 () Bool)

(declare-fun c!118989 () Bool)

(assert (=> bm!43360 (= c!118989 c!118988)))

(assert (=> bm!43360 (= call!43353 call!43344)))

(declare-fun bm!43361 () Bool)

(assert (=> bm!43361 (= call!43370 call!43351)))

(declare-fun bm!43362 () Bool)

(assert (=> bm!43362 (= call!43359 call!43350)))

(declare-fun bm!43363 () Bool)

(assert (=> bm!43363 (= call!43343 call!43356)))

(declare-fun bm!43364 () Bool)

(assert (=> bm!43364 (= call!43361 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 sepR!1) (ite c!118991 call!43364 call!43355)))))

(declare-fun b!660908 () Bool)

(assert (=> b!660908 (= e!408766 call!43348)))

(declare-fun bm!43365 () Bool)

(assert (=> bm!43365 (= call!43344 (printList!446 (ite c!118991 Lexer!1271 (ite c!118988 lt!281984 lt!281991)) (ite c!118991 (t!86253 lt!282004) e!408763)))))

(declare-fun b!660909 () Bool)

(assert (=> b!660909 (= e!408767 call!43362)))

(declare-fun b!660910 () Bool)

(assert (=> b!660910 (= e!408770 e!408764)))

(assert (=> b!660910 (= c!118988 (isEmpty!4792 (tokens!1267 (v!17332 lt!281578))))))

(declare-fun b!660911 () Bool)

(assert (=> b!660911 (= e!408762 e!408768)))

(declare-fun res!293275 () Bool)

(assert (=> b!660911 (=> (not res!293275) (not e!408768))))

(assert (=> b!660911 (= res!293275 (= (rules!8289 (get!2532 lt!282011)) (rules!8289 (v!17332 lt!281578))))))

(declare-fun bm!43366 () Bool)

(assert (=> bm!43366 (= call!43375 call!43371)))

(declare-fun bm!43367 () Bool)

(assert (=> bm!43367 (= call!43349 call!43339)))

(declare-fun bm!43368 () Bool)

(declare-fun c!118993 () Bool)

(assert (=> bm!43368 (= c!118993 c!118988)))

(assert (=> bm!43368 (= call!43348 call!43372)))

(declare-fun bm!43369 () Bool)

(declare-fun printTailRec!458 (LexerInterface!1273 BalanceConc!5088 Int BalanceConc!5086) BalanceConc!5086)

(assert (=> bm!43369 (= call!43360 (printTailRec!458 Lexer!1271 (tokens!1267 sepR!1) 0 (BalanceConc!5087 Empty!2537)))))

(declare-fun bm!43370 () Bool)

(assert (=> bm!43370 (= call!43346 (printList!446 (ite c!118991 Lexer!1271 (ite c!118988 lt!281984 lt!281991)) (ite c!118991 call!43364 (ite c!118988 lt!282019 lt!281964))))))

(declare-fun b!660912 () Bool)

(declare-fun lt!282024 () Unit!12447)

(declare-fun Unit!12467 () Unit!12447)

(assert (=> b!660912 (= lt!282024 Unit!12467)))

(assert (=> b!660912 (= call!43343 e!408766)))

(declare-fun c!118987 () Bool)

(assert (=> b!660912 (= c!118987 ((_ is Cons!7167) lt!282025))))

(assert (=> b!660912 (= lt!282025 call!43355)))

(declare-fun lt!282010 () Unit!12447)

(declare-fun Unit!12468 () Unit!12447)

(assert (=> b!660912 (= lt!282010 Unit!12468)))

(assert (=> b!660912 (= call!43366 call!43360)))

(declare-fun lt!281988 () Unit!12447)

(declare-fun Unit!12469 () Unit!12447)

(assert (=> b!660912 (= lt!281988 Unit!12469)))

(assert (=> b!660912 (= call!43370 call!43366)))

(declare-fun lt!281971 () Unit!12447)

(assert (=> b!660912 (= lt!281971 call!43374)))

(declare-fun lt!281965 () Unit!12447)

(declare-fun Unit!12470 () Unit!12447)

(assert (=> b!660912 (= lt!281965 Unit!12470)))

(assert (=> b!660912 (= call!43354 call!43349)))

(declare-fun lt!281976 () Unit!12447)

(assert (=> b!660912 (= lt!281976 call!43369)))

(declare-fun lt!281986 () Unit!12447)

(declare-fun Unit!12471 () Unit!12447)

(assert (=> b!660912 (= lt!281986 Unit!12471)))

(assert (=> b!660912 (= call!43358 Nil!7166)))

(declare-fun lt!282016 () Unit!12447)

(declare-fun lt!281970 () Unit!12447)

(assert (=> b!660912 (= lt!282016 lt!281970)))

(assert (=> b!660912 (= call!43353 call!43352)))

(assert (=> b!660912 (= lt!281970 call!43347)))

(assert (=> b!660912 (= lt!281994 call!43355)))

(assert (=> b!660912 (= lt!282019 Nil!7167)))

(assert (=> b!660912 (= lt!281984 Lexer!1271)))

(assert (=> b!660912 (= e!408764 (Some!1690 sepR!1))))

(assert (= (and d!225994 c!118991) b!660906))

(assert (= (and d!225994 (not c!118991)) b!660910))

(assert (= (and b!660906 c!118990) b!660907))

(assert (= (and b!660906 (not c!118990)) b!660898))

(assert (= (and b!660910 c!118988) b!660912))

(assert (= (and b!660910 (not c!118988)) b!660904))

(assert (= (and b!660912 c!118987) b!660908))

(assert (= (and b!660912 (not c!118987)) b!660905))

(assert (= (and b!660904 c!118992) b!660900))

(assert (= (and b!660904 (not c!118992)) b!660897))

(assert (= (or b!660912 b!660900) bm!43366))

(assert (= (or b!660912 b!660904 b!660900) bm!43346))

(assert (= (or b!660908 b!660900) bm!43337))

(assert (= (or b!660912 b!660900) bm!43347))

(assert (= (or b!660912 b!660900) bm!43367))

(assert (= (or b!660912 b!660904 b!660900) bm!43355))

(assert (= (or b!660912 b!660900) bm!43348))

(assert (= (or b!660912 b!660900) bm!43341))

(assert (= (or b!660912 b!660900) bm!43333))

(assert (= (or b!660912 b!660900) bm!43361))

(assert (= (or b!660912 b!660900) bm!43362))

(assert (= (or b!660912 b!660900) bm!43351))

(assert (= (or b!660912 b!660900) bm!43358))

(assert (= (or b!660912 b!660900) bm!43360))

(assert (= (and bm!43360 c!118989) b!660902))

(assert (= (and bm!43360 (not c!118989)) b!660903))

(assert (= (or b!660912 b!660900) bm!43353))

(assert (= (or b!660912 b!660900) bm!43363))

(assert (= (or b!660912 b!660900) bm!43357))

(assert (= (or b!660908 b!660900) bm!43368))

(assert (= (and bm!43368 c!118993) b!660909))

(assert (= (and bm!43368 (not c!118993)) b!660899))

(assert (= (or b!660907 bm!43360) bm!43365))

(assert (= (or b!660906 bm!43355) bm!43343))

(assert (= (or b!660907 b!660909) bm!43352))

(assert (= (or b!660906 bm!43363) bm!43335))

(assert (= (or b!660906 b!660912) bm!43369))

(assert (= (or b!660906 bm!43348) bm!43356))

(assert (= (or b!660906 bm!43361) bm!43334))

(assert (= (or b!660906 bm!43367) bm!43344))

(assert (= (or b!660906 bm!43351) bm!43354))

(assert (= (or b!660906 bm!43346) bm!43332))

(assert (= (or b!660906 bm!43347) bm!43345))

(assert (= (or b!660906 bm!43366) bm!43336))

(assert (= (or b!660906 bm!43333) bm!43339))

(assert (= (or b!660906 bm!43362) bm!43350))

(assert (= (or b!660906 bm!43358) bm!43364))

(assert (= (or b!660906 bm!43341) bm!43370))

(assert (= (or b!660906 bm!43337) bm!43349))

(assert (= (or b!660906 bm!43353) bm!43340))

(assert (= (or b!660907 b!660909) bm!43359))

(assert (= (or b!660906 bm!43368) bm!43338))

(assert (= (or b!660907 bm!43357) bm!43342))

(assert (= (and d!225994 (not res!293276)) b!660911))

(assert (= (and b!660911 res!293275) b!660901))

(assert (= (and b!660901 res!293277) b!660896))

(declare-fun m!927175 () Bool)

(assert (=> bm!43338 m!927175))

(declare-fun m!927177 () Bool)

(assert (=> bm!43334 m!927177))

(declare-fun m!927179 () Bool)

(assert (=> bm!43349 m!927179))

(declare-fun m!927181 () Bool)

(assert (=> bm!43332 m!927181))

(declare-fun m!927183 () Bool)

(assert (=> bm!43339 m!927183))

(declare-fun m!927185 () Bool)

(assert (=> b!660910 m!927185))

(declare-fun m!927187 () Bool)

(assert (=> bm!43369 m!927187))

(declare-fun m!927189 () Bool)

(assert (=> bm!43342 m!927189))

(declare-fun m!927191 () Bool)

(assert (=> bm!43336 m!927191))

(declare-fun m!927193 () Bool)

(assert (=> b!660896 m!927193))

(assert (=> b!660896 m!927177))

(assert (=> b!660896 m!927177))

(declare-fun m!927195 () Bool)

(assert (=> b!660896 m!927195))

(declare-fun m!927197 () Bool)

(assert (=> b!660896 m!927197))

(declare-fun m!927199 () Bool)

(assert (=> b!660896 m!927199))

(assert (=> b!660896 m!927193))

(assert (=> b!660896 m!927197))

(declare-fun m!927201 () Bool)

(assert (=> b!660896 m!927201))

(assert (=> b!660896 m!927195))

(declare-fun m!927203 () Bool)

(assert (=> b!660896 m!927203))

(declare-fun m!927205 () Bool)

(assert (=> b!660896 m!927205))

(assert (=> b!660896 m!927201))

(assert (=> b!660896 m!927205))

(assert (=> b!660901 m!927193))

(declare-fun m!927207 () Bool)

(assert (=> b!660901 m!927207))

(declare-fun m!927209 () Bool)

(assert (=> b!660901 m!927209))

(assert (=> b!660901 m!927207))

(declare-fun m!927211 () Bool)

(assert (=> b!660901 m!927211))

(declare-fun m!927213 () Bool)

(assert (=> b!660901 m!927213))

(assert (=> b!660901 m!927209))

(declare-fun m!927215 () Bool)

(assert (=> b!660903 m!927215))

(declare-fun m!927217 () Bool)

(assert (=> bm!43364 m!927217))

(assert (=> b!660911 m!927193))

(declare-fun m!927219 () Bool)

(assert (=> b!660904 m!927219))

(declare-fun m!927221 () Bool)

(assert (=> b!660904 m!927221))

(declare-fun m!927223 () Bool)

(assert (=> b!660904 m!927223))

(declare-fun m!927225 () Bool)

(assert (=> b!660904 m!927225))

(declare-fun m!927227 () Bool)

(assert (=> b!660904 m!927227))

(assert (=> b!660904 m!927223))

(declare-fun m!927229 () Bool)

(assert (=> b!660904 m!927229))

(assert (=> b!660904 m!927225))

(declare-fun m!927231 () Bool)

(assert (=> b!660904 m!927231))

(declare-fun m!927233 () Bool)

(assert (=> bm!43365 m!927233))

(declare-fun m!927235 () Bool)

(assert (=> d!225994 m!927235))

(declare-fun m!927237 () Bool)

(assert (=> d!225994 m!927237))

(declare-fun m!927239 () Bool)

(assert (=> d!225994 m!927239))

(declare-fun m!927241 () Bool)

(assert (=> d!225994 m!927241))

(assert (=> bm!43345 m!927205))

(declare-fun m!927243 () Bool)

(assert (=> bm!43354 m!927243))

(declare-fun m!927245 () Bool)

(assert (=> bm!43359 m!927245))

(declare-fun m!927247 () Bool)

(assert (=> bm!43350 m!927247))

(declare-fun m!927249 () Bool)

(assert (=> b!660900 m!927249))

(declare-fun m!927251 () Bool)

(assert (=> b!660900 m!927251))

(declare-fun m!927253 () Bool)

(assert (=> b!660900 m!927253))

(assert (=> b!660900 m!927249))

(declare-fun m!927255 () Bool)

(assert (=> b!660900 m!927255))

(declare-fun m!927257 () Bool)

(assert (=> b!660900 m!927257))

(declare-fun m!927259 () Bool)

(assert (=> b!660900 m!927259))

(declare-fun m!927261 () Bool)

(assert (=> b!660900 m!927261))

(assert (=> b!660900 m!927257))

(declare-fun m!927263 () Bool)

(assert (=> b!660900 m!927263))

(assert (=> b!660900 m!927253))

(declare-fun m!927265 () Bool)

(assert (=> b!660900 m!927265))

(assert (=> b!660900 m!927253))

(declare-fun m!927267 () Bool)

(assert (=> b!660900 m!927267))

(assert (=> b!660900 m!927257))

(declare-fun m!927269 () Bool)

(assert (=> b!660900 m!927269))

(declare-fun m!927271 () Bool)

(assert (=> bm!43343 m!927271))

(declare-fun m!927273 () Bool)

(assert (=> bm!43356 m!927273))

(declare-fun m!927275 () Bool)

(assert (=> bm!43335 m!927275))

(declare-fun m!927277 () Bool)

(assert (=> bm!43370 m!927277))

(declare-fun m!927279 () Bool)

(assert (=> bm!43352 m!927279))

(declare-fun m!927281 () Bool)

(assert (=> bm!43344 m!927281))

(declare-fun m!927283 () Bool)

(assert (=> bm!43340 m!927283))

(assert (=> b!660706 d!225994))

(declare-fun d!226020 () Bool)

(assert (=> d!226020 (= (isEmpty!4789 lt!281577) (not ((_ is Some!1690) lt!281577)))))

(assert (=> b!660715 d!226020))

(declare-fun d!226022 () Bool)

(assert (=> d!226022 (= (inv!9194 (tokens!1267 sepL!1)) (isBalanced!665 (c!118933 (tokens!1267 sepL!1))))))

(declare-fun bs!94444 () Bool)

(assert (= bs!94444 d!226022))

(declare-fun m!927285 () Bool)

(assert (=> bs!94444 m!927285))

(assert (=> b!660713 d!226022))

(declare-fun d!226024 () Bool)

(declare-fun c!118994 () Bool)

(assert (=> d!226024 (= c!118994 ((_ is Node!2538) (c!118933 (tokens!1267 sepL!1))))))

(declare-fun e!408771 () Bool)

(assert (=> d!226024 (= (inv!9196 (c!118933 (tokens!1267 sepL!1))) e!408771)))

(declare-fun b!660913 () Bool)

(assert (=> b!660913 (= e!408771 (inv!9199 (c!118933 (tokens!1267 sepL!1))))))

(declare-fun b!660914 () Bool)

(declare-fun e!408772 () Bool)

(assert (=> b!660914 (= e!408771 e!408772)))

(declare-fun res!293278 () Bool)

(assert (=> b!660914 (= res!293278 (not ((_ is Leaf!3778) (c!118933 (tokens!1267 sepL!1)))))))

(assert (=> b!660914 (=> res!293278 e!408772)))

(declare-fun b!660915 () Bool)

(assert (=> b!660915 (= e!408772 (inv!9200 (c!118933 (tokens!1267 sepL!1))))))

(assert (= (and d!226024 c!118994) b!660913))

(assert (= (and d!226024 (not c!118994)) b!660914))

(assert (= (and b!660914 (not res!293278)) b!660915))

(declare-fun m!927287 () Bool)

(assert (=> b!660913 m!927287))

(declare-fun m!927289 () Bool)

(assert (=> b!660915 m!927289))

(assert (=> b!660714 d!226024))

(declare-fun d!226026 () Bool)

(assert (=> d!226026 (= (usesJsonRules!0 sepL!1) (= (rules!8289 sepL!1) (rules!109 JsonLexer!231)))))

(declare-fun bs!94445 () Bool)

(assert (= bs!94445 d!226026))

(assert (=> bs!94445 m!926879))

(assert (=> b!660712 d!226026))

(declare-fun d!226028 () Bool)

(assert (=> d!226028 (= (usesJsonRules!0 objs!31) (= (rules!8289 objs!31) (rules!109 JsonLexer!231)))))

(declare-fun bs!94446 () Bool)

(assert (= bs!94446 d!226028))

(assert (=> bs!94446 m!926879))

(assert (=> start!64584 d!226028))

(declare-fun d!226030 () Bool)

(declare-fun res!293285 () Bool)

(declare-fun e!408775 () Bool)

(assert (=> d!226030 (=> (not res!293285) (not e!408775))))

(declare-fun isEmpty!4793 (List!7182) Bool)

(assert (=> d!226030 (= res!293285 (not (isEmpty!4793 (rules!8289 objs!31))))))

(assert (=> d!226030 (= (inv!9195 objs!31) e!408775)))

(declare-fun b!660922 () Bool)

(declare-fun res!293286 () Bool)

(assert (=> b!660922 (=> (not res!293286) (not e!408775))))

(declare-fun rulesInvariant!1208 (LexerInterface!1273 List!7182) Bool)

(assert (=> b!660922 (= res!293286 (rulesInvariant!1208 Lexer!1271 (rules!8289 objs!31)))))

(declare-fun b!660923 () Bool)

(declare-fun res!293287 () Bool)

(assert (=> b!660923 (=> (not res!293287) (not e!408775))))

(declare-fun rulesProduceEachTokenIndividually!591 (LexerInterface!1273 List!7182 BalanceConc!5088) Bool)

(assert (=> b!660923 (= res!293287 (rulesProduceEachTokenIndividually!591 Lexer!1271 (rules!8289 objs!31) (tokens!1267 objs!31)))))

(declare-fun b!660924 () Bool)

(declare-fun separableTokens!41 (LexerInterface!1273 BalanceConc!5088 List!7182) Bool)

(assert (=> b!660924 (= e!408775 (separableTokens!41 Lexer!1271 (tokens!1267 objs!31) (rules!8289 objs!31)))))

(assert (= (and d!226030 res!293285) b!660922))

(assert (= (and b!660922 res!293286) b!660923))

(assert (= (and b!660923 res!293287) b!660924))

(declare-fun m!927291 () Bool)

(assert (=> d!226030 m!927291))

(declare-fun m!927293 () Bool)

(assert (=> b!660922 m!927293))

(declare-fun m!927295 () Bool)

(assert (=> b!660923 m!927295))

(declare-fun m!927297 () Bool)

(assert (=> b!660924 m!927297))

(assert (=> start!64584 d!226030))

(declare-fun d!226032 () Bool)

(declare-fun res!293288 () Bool)

(declare-fun e!408776 () Bool)

(assert (=> d!226032 (=> (not res!293288) (not e!408776))))

(assert (=> d!226032 (= res!293288 (not (isEmpty!4793 (rules!8289 sepL!1))))))

(assert (=> d!226032 (= (inv!9195 sepL!1) e!408776)))

(declare-fun b!660925 () Bool)

(declare-fun res!293289 () Bool)

(assert (=> b!660925 (=> (not res!293289) (not e!408776))))

(assert (=> b!660925 (= res!293289 (rulesInvariant!1208 Lexer!1271 (rules!8289 sepL!1)))))

(declare-fun b!660926 () Bool)

(declare-fun res!293290 () Bool)

(assert (=> b!660926 (=> (not res!293290) (not e!408776))))

(assert (=> b!660926 (= res!293290 (rulesProduceEachTokenIndividually!591 Lexer!1271 (rules!8289 sepL!1) (tokens!1267 sepL!1)))))

(declare-fun b!660927 () Bool)

(assert (=> b!660927 (= e!408776 (separableTokens!41 Lexer!1271 (tokens!1267 sepL!1) (rules!8289 sepL!1)))))

(assert (= (and d!226032 res!293288) b!660925))

(assert (= (and b!660925 res!293289) b!660926))

(assert (= (and b!660926 res!293290) b!660927))

(declare-fun m!927299 () Bool)

(assert (=> d!226032 m!927299))

(declare-fun m!927301 () Bool)

(assert (=> b!660925 m!927301))

(declare-fun m!927303 () Bool)

(assert (=> b!660926 m!927303))

(declare-fun m!927305 () Bool)

(assert (=> b!660927 m!927305))

(assert (=> start!64584 d!226032))

(declare-fun d!226034 () Bool)

(declare-fun res!293291 () Bool)

(declare-fun e!408777 () Bool)

(assert (=> d!226034 (=> (not res!293291) (not e!408777))))

(assert (=> d!226034 (= res!293291 (not (isEmpty!4793 (rules!8289 sepR!1))))))

(assert (=> d!226034 (= (inv!9195 sepR!1) e!408777)))

(declare-fun b!660928 () Bool)

(declare-fun res!293292 () Bool)

(assert (=> b!660928 (=> (not res!293292) (not e!408777))))

(assert (=> b!660928 (= res!293292 (rulesInvariant!1208 Lexer!1271 (rules!8289 sepR!1)))))

(declare-fun b!660929 () Bool)

(declare-fun res!293293 () Bool)

(assert (=> b!660929 (=> (not res!293293) (not e!408777))))

(assert (=> b!660929 (= res!293293 (rulesProduceEachTokenIndividually!591 Lexer!1271 (rules!8289 sepR!1) (tokens!1267 sepR!1)))))

(declare-fun b!660930 () Bool)

(assert (=> b!660930 (= e!408777 (separableTokens!41 Lexer!1271 (tokens!1267 sepR!1) (rules!8289 sepR!1)))))

(assert (= (and d!226034 res!293291) b!660928))

(assert (= (and b!660928 res!293292) b!660929))

(assert (= (and b!660929 res!293293) b!660930))

(declare-fun m!927307 () Bool)

(assert (=> d!226034 m!927307))

(declare-fun m!927309 () Bool)

(assert (=> b!660928 m!927309))

(declare-fun m!927311 () Bool)

(assert (=> b!660929 m!927311))

(declare-fun m!927313 () Bool)

(assert (=> b!660930 m!927313))

(assert (=> start!64584 d!226034))

(declare-fun d!226036 () Bool)

(declare-fun e!408778 () Bool)

(assert (=> d!226036 e!408778))

(declare-fun res!293295 () Bool)

(assert (=> d!226036 (=> res!293295 e!408778)))

(declare-fun lt!282075 () Option!1691)

(assert (=> d!226036 (= res!293295 (isEmpty!4789 lt!282075))))

(declare-fun e!408786 () Option!1691)

(assert (=> d!226036 (= lt!282075 e!408786)))

(declare-fun c!118999 () Bool)

(assert (=> d!226036 (= c!118999 (isEmpty!4792 (tokens!1267 objs!31)))))

(declare-fun lt!282057 () Unit!12447)

(assert (=> d!226036 (= lt!282057 (lemmaInvariant!84 sepL!1))))

(declare-fun lt!282063 () Unit!12447)

(assert (=> d!226036 (= lt!282063 (lemmaInvariant!84 objs!31))))

(assert (=> d!226036 (= (rules!8289 sepL!1) (rules!8289 objs!31))))

(assert (=> d!226036 (= (append!272 sepL!1 objs!31) lt!282075)))

(declare-fun bm!43371 () Bool)

(declare-fun call!43403 () List!7181)

(assert (=> bm!43371 (= call!43403 (list!3052 (ite c!118999 (tokens!1267 objs!31) (tokens!1267 sepL!1))))))

(declare-fun bm!43372 () Bool)

(declare-fun call!43405 () BalanceConc!5086)

(declare-fun call!43380 () BalanceConc!5086)

(assert (=> bm!43372 (= call!43405 call!43380)))

(declare-fun e!408784 () Bool)

(declare-fun b!660931 () Bool)

(assert (=> b!660931 (= e!408784 (= (list!3053 (print!524 (get!2532 lt!282075))) (++!1918 (list!3053 (print!524 sepL!1)) (list!3053 (print!524 objs!31)))))))

(declare-fun bm!43373 () Bool)

(declare-fun call!43390 () BalanceConc!5086)

(assert (=> bm!43373 (= call!43390 (print!524 objs!31))))

(declare-fun b!660932 () Bool)

(declare-fun e!408781 () Option!1691)

(assert (=> b!660932 (= e!408781 None!1690)))

(declare-fun bm!43374 () Bool)

(declare-fun call!43395 () List!7180)

(declare-fun call!43394 () List!7181)

(declare-fun c!118996 () Bool)

(declare-fun call!43414 () List!7181)

(declare-fun lt!282067 () LexerInterface!1273)

(assert (=> bm!43374 (= call!43395 (printList!446 (ite (or c!118999 c!118996) Lexer!1271 lt!282067) (ite c!118999 Nil!7167 (ite c!118996 call!43394 call!43414))))))

(declare-fun lt!282059 () List!7181)

(declare-fun lt!282083 () List!7181)

(declare-fun lt!282058 () List!7181)

(declare-fun lt!282066 () List!7181)

(declare-fun lt!282032 () List!7181)

(declare-fun call!43410 () List!7181)

(declare-fun lt!282051 () List!7181)

(declare-fun bm!43375 () Bool)

(assert (=> bm!43375 (= call!43410 (++!1919 (ite c!118999 lt!282051 (ite c!118996 lt!282083 lt!282059)) (ite c!118999 lt!282066 (ite c!118996 lt!282058 lt!282032))))))

(declare-fun bm!43376 () Bool)

(declare-fun call!43404 () List!7180)

(declare-fun call!43406 () List!7180)

(assert (=> bm!43376 (= call!43404 call!43406)))

(declare-fun call!43411 () List!7180)

(declare-fun e!408783 () List!7180)

(declare-fun bm!43377 () Bool)

(declare-fun call!43376 () List!7180)

(declare-fun call!43397 () List!7180)

(declare-fun call!43389 () List!7180)

(assert (=> bm!43377 (= call!43411 (++!1918 (ite c!118999 call!43376 e!408783) (ite c!118999 call!43389 (ite c!118996 call!43404 call!43397))))))

(declare-fun b!660933 () Bool)

(declare-fun e!408785 () List!7180)

(assert (=> b!660933 (= e!408785 Nil!7166)))

(declare-fun bm!43378 () Bool)

(assert (=> bm!43378 (= call!43380 (print!525 Lexer!1271 (tokens!1267 objs!31)))))

(declare-fun b!660934 () Bool)

(declare-fun call!43377 () List!7180)

(assert (=> b!660934 (= e!408783 call!43377)))

(declare-fun b!660935 () Bool)

(assert (=> b!660935 (= e!408781 (Some!1690 (PrintableTokens!201 (rules!8289 sepL!1) (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31)))))))

(declare-fun lt!282081 () LexerInterface!1273)

(assert (=> b!660935 (= lt!282081 Lexer!1271)))

(declare-fun lt!282061 () List!7181)

(declare-fun call!43384 () List!7181)

(assert (=> b!660935 (= lt!282061 call!43384)))

(declare-fun lt!282064 () List!7181)

(assert (=> b!660935 (= lt!282064 call!43394)))

(declare-fun lt!282077 () Unit!12447)

(assert (=> b!660935 (= lt!282077 (tokensListTwoByTwoPredicateConcatSeparableTokensList!9 lt!282081 lt!282061 lt!282064 (rules!8289 sepL!1)))))

(declare-fun lt!282072 () Unit!12447)

(assert (=> b!660935 (= lt!282072 (lemmaRulesProduceEachTokenIndividuallyConcat!9 lt!282081 (rules!8289 sepL!1) lt!282061 lt!282064))))

(assert (=> b!660935 (rulesProduceEachTokenIndividuallyList!347 lt!282081 (rules!8289 sepL!1) (++!1919 lt!282061 lt!282064))))

(declare-fun lt!282056 () Unit!12447)

(assert (=> b!660935 (= lt!282056 lt!282072)))

(assert (=> b!660935 (tokensListTwoByTwoPredicateSeparableList!16 lt!282081 (++!1919 lt!282061 lt!282064) (rules!8289 sepL!1))))

(declare-fun lt!282085 () Unit!12447)

(assert (=> b!660935 (= lt!282085 lt!282077)))

(assert (=> b!660935 (= lt!282067 Lexer!1271)))

(assert (=> b!660935 (= lt!282059 call!43384)))

(assert (=> b!660935 (= lt!282032 call!43394)))

(declare-fun lt!282044 () Unit!12447)

(assert (=> b!660935 (= lt!282044 (lemmaPrintConcatSameAsConcatPrint!9 lt!282067 lt!282059 lt!282032))))

(declare-fun call!43382 () List!7180)

(declare-fun call!43391 () List!7180)

(assert (=> b!660935 (= call!43382 call!43391)))

(declare-fun lt!282030 () Unit!12447)

(assert (=> b!660935 (= lt!282030 lt!282044)))

(declare-fun lt!282043 () Unit!12447)

(declare-fun call!43408 () Unit!12447)

(assert (=> b!660935 (= lt!282043 call!43408)))

(declare-fun call!43393 () BalanceConc!5086)

(declare-fun call!43388 () BalanceConc!5086)

(assert (=> b!660935 (= call!43393 call!43388)))

(declare-fun lt!282062 () Unit!12447)

(declare-fun Unit!12472 () Unit!12447)

(assert (=> b!660935 (= lt!282062 Unit!12472)))

(declare-fun lt!282069 () Unit!12447)

(declare-fun call!43413 () Unit!12447)

(assert (=> b!660935 (= lt!282069 call!43413)))

(declare-fun call!43409 () BalanceConc!5086)

(assert (=> b!660935 (= call!43409 call!43405)))

(declare-fun lt!282087 () Unit!12447)

(declare-fun Unit!12473 () Unit!12447)

(assert (=> b!660935 (= lt!282087 Unit!12473)))

(declare-fun lt!282041 () PrintableTokens!200)

(assert (=> b!660935 (= lt!282041 (PrintableTokens!201 (rules!8289 sepL!1) (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31))))))

(declare-fun lt!282042 () BalanceConc!5088)

(assert (=> b!660935 (= lt!282042 (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31)))))

(declare-fun lt!282065 () Unit!12447)

(assert (=> b!660935 (= lt!282065 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 sepL!1) (list!3052 (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31)))))))

(assert (=> b!660935 (= (print!524 (PrintableTokens!201 (rules!8289 sepL!1) (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31)))) (print!525 Lexer!1271 (++!1920 (tokens!1267 sepL!1) (tokens!1267 objs!31))))))

(declare-fun lt!282082 () Unit!12447)

(declare-fun Unit!12474 () Unit!12447)

(assert (=> b!660935 (= lt!282082 Unit!12474)))

(declare-fun lt!282055 () LexerInterface!1273)

(assert (=> b!660935 (= lt!282055 Lexer!1271)))

(declare-fun lt!282028 () List!7181)

(assert (=> b!660935 (= lt!282028 call!43384)))

(declare-fun lt!282036 () List!7181)

(assert (=> b!660935 (= lt!282036 call!43394)))

(declare-fun lt!282073 () Unit!12447)

(declare-fun call!43386 () Unit!12447)

(assert (=> b!660935 (= lt!282073 call!43386)))

(declare-fun call!43392 () List!7180)

(declare-fun call!43387 () List!7180)

(assert (=> b!660935 (= call!43392 call!43387)))

(declare-fun lt!282078 () Unit!12447)

(assert (=> b!660935 (= lt!282078 lt!282073)))

(declare-fun bm!43379 () Bool)

(declare-fun call!43381 () List!7181)

(declare-fun call!43402 () Unit!12447)

(assert (=> bm!43379 (= call!43402 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 sepL!1) (ite c!118999 call!43381 call!43384)))))

(declare-fun b!660936 () Bool)

(declare-fun res!293296 () Bool)

(assert (=> b!660936 (=> (not res!293296) (not e!408784))))

(assert (=> b!660936 (= res!293296 (= (list!3052 (tokens!1267 (get!2532 lt!282075))) (++!1919 (list!3052 (tokens!1267 sepL!1)) (list!3052 (tokens!1267 objs!31)))))))

(declare-fun bm!43380 () Bool)

(declare-fun call!43385 () List!7180)

(assert (=> bm!43380 (= call!43377 call!43385)))

(declare-fun call!43398 () List!7180)

(declare-fun bm!43381 () Bool)

(declare-fun call!43396 () List!7180)

(declare-fun call!43383 () List!7180)

(declare-fun call!43401 () List!7180)

(assert (=> bm!43381 (= call!43396 (++!1918 (ite c!118999 call!43401 (ite c!118996 call!43377 call!43398)) (ite c!118999 call!43383 (ite c!118996 call!43398 call!43404))))))

(declare-fun bm!43382 () Bool)

(assert (=> bm!43382 (= call!43381 (list!3052 (ite c!118999 (tokens!1267 sepL!1) (tokens!1267 objs!31))))))

(declare-fun b!660937 () Bool)

(declare-fun e!408779 () List!7181)

(assert (=> b!660937 (= e!408779 call!43414)))

(declare-fun bm!43383 () Bool)

(declare-fun call!43378 () BalanceConc!5086)

(assert (=> bm!43383 (= call!43378 (print!525 Lexer!1271 (tokens!1267 sepL!1)))))

(declare-fun bm!43384 () Bool)

(declare-fun call!43379 () BalanceConc!5086)

(assert (=> bm!43384 (= call!43379 (print!524 sepL!1))))

(declare-fun bm!43385 () Bool)

(assert (=> bm!43385 (= call!43384 call!43403)))

(declare-fun bm!43386 () Bool)

(assert (=> bm!43386 (= call!43393 call!43379)))

(declare-fun bm!43387 () Bool)

(assert (=> bm!43387 (= call!43397 call!43376)))

(declare-fun b!660938 () Bool)

(assert (=> b!660938 (= e!408779 (++!1919 lt!282028 lt!282036))))

(declare-fun lt!282037 () LexerInterface!1273)

(declare-fun lt!282089 () List!7181)

(declare-fun bm!43388 () Bool)

(assert (=> bm!43388 (= call!43406 (printList!446 (ite c!118999 lt!282037 (ite c!118996 Lexer!1271 lt!282067)) (ite c!118999 call!43410 (ite c!118996 (t!86253 lt!282089) lt!282032))))))

(declare-fun lt!282048 () LexerInterface!1273)

(declare-fun bm!43389 () Bool)

(assert (=> bm!43389 (= call!43389 (printList!446 (ite c!118999 lt!282037 (ite c!118996 lt!282048 lt!282067)) (ite c!118999 lt!282066 (ite c!118996 lt!282058 lt!282059))))))

(declare-fun bm!43390 () Bool)

(declare-fun call!43407 () Unit!12447)

(assert (=> bm!43390 (= call!43386 call!43407)))

(declare-fun b!660939 () Bool)

(declare-fun c!119000 () Bool)

(assert (=> b!660939 (= c!119000 (separableTokensPredicate!18 Lexer!1271 (last!54 (tokens!1267 sepL!1)) (head!1379 (tokens!1267 objs!31)) (rules!8289 sepL!1)))))

(declare-fun lt!282054 () Unit!12447)

(declare-fun lt!282033 () Unit!12447)

(assert (=> b!660939 (= lt!282054 lt!282033)))

(declare-fun lt!282079 () LexerInterface!1273)

(declare-fun lt!282086 () Token!2618)

(assert (=> b!660939 (rulesProduceIndividualToken!528 lt!282079 (rules!8289 sepL!1) lt!282086)))

(declare-fun lt!282090 () List!7181)

(assert (=> b!660939 (= lt!282033 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!214 lt!282079 (rules!8289 sepL!1) lt!282090 lt!282086))))

(assert (=> b!660939 (= lt!282086 (head!1379 (tokens!1267 objs!31)))))

(assert (=> b!660939 (= lt!282090 call!43394)))

(assert (=> b!660939 (= lt!282079 Lexer!1271)))

(declare-fun lt!282091 () Unit!12447)

(declare-fun lt!282049 () Unit!12447)

(assert (=> b!660939 (= lt!282091 lt!282049)))

(declare-fun lt!282084 () LexerInterface!1273)

(declare-fun lt!282071 () Token!2618)

(assert (=> b!660939 (rulesProduceIndividualToken!528 lt!282084 (rules!8289 sepL!1) lt!282071)))

(declare-fun lt!282076 () List!7181)

(assert (=> b!660939 (= lt!282049 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!214 lt!282084 (rules!8289 sepL!1) lt!282076 lt!282071))))

(assert (=> b!660939 (= lt!282071 (last!54 (tokens!1267 sepL!1)))))

(assert (=> b!660939 (= lt!282076 call!43384)))

(assert (=> b!660939 (= lt!282084 Lexer!1271)))

(declare-fun e!408780 () Option!1691)

(assert (=> b!660939 (= e!408780 e!408781)))

(declare-fun b!660940 () Bool)

(declare-fun e!408782 () List!7180)

(assert (=> b!660940 (= e!408782 Nil!7166)))

(declare-fun bm!43391 () Bool)

(declare-fun call!43412 () BalanceConc!5086)

(declare-fun lt!282068 () List!7181)

(assert (=> bm!43391 (= call!43412 (charsOf!918 (ite c!118999 (h!12568 lt!282068) (h!12568 lt!282089))))))

(declare-fun b!660941 () Bool)

(assert (=> b!660941 (= e!408786 (Some!1690 sepL!1))))

(assert (=> b!660941 (= lt!282037 Lexer!1271)))

(assert (=> b!660941 (= lt!282051 call!43381)))

(assert (=> b!660941 (= lt!282066 Nil!7167)))

(declare-fun lt!282047 () Unit!12447)

(assert (=> b!660941 (= lt!282047 call!43407)))

(assert (=> b!660941 (= call!43406 call!43411)))

(declare-fun lt!282046 () Unit!12447)

(assert (=> b!660941 (= lt!282046 lt!282047)))

(assert (=> b!660941 (= call!43395 Nil!7166)))

(declare-fun lt!282060 () Unit!12447)

(declare-fun Unit!12475 () Unit!12447)

(assert (=> b!660941 (= lt!282060 Unit!12475)))

(declare-fun lt!282070 () Unit!12447)

(assert (=> b!660941 (= lt!282070 call!43402)))

(assert (=> b!660941 (= call!43379 call!43378)))

(declare-fun lt!282053 () Unit!12447)

(declare-fun Unit!12476 () Unit!12447)

(assert (=> b!660941 (= lt!282053 Unit!12476)))

(declare-fun lt!282039 () Unit!12447)

(declare-fun call!43400 () Unit!12447)

(assert (=> b!660941 (= lt!282039 call!43400)))

(assert (=> b!660941 (= call!43390 call!43380)))

(declare-fun lt!282045 () Unit!12447)

(declare-fun Unit!12477 () Unit!12447)

(assert (=> b!660941 (= lt!282045 Unit!12477)))

(declare-fun call!43399 () BalanceConc!5086)

(assert (=> b!660941 (= call!43380 call!43399)))

(declare-fun lt!282031 () Unit!12447)

(declare-fun Unit!12478 () Unit!12447)

(assert (=> b!660941 (= lt!282031 Unit!12478)))

(assert (=> b!660941 (= lt!282068 call!43403)))

(declare-fun c!118998 () Bool)

(assert (=> b!660941 (= c!118998 ((_ is Cons!7167) lt!282068))))

(assert (=> b!660941 (= call!43385 e!408785)))

(declare-fun lt!282038 () Unit!12447)

(declare-fun Unit!12479 () Unit!12447)

(assert (=> b!660941 (= lt!282038 Unit!12479)))

(declare-fun bm!43392 () Bool)

(assert (=> bm!43392 (= call!43408 call!43402)))

(declare-fun bm!43393 () Bool)

(assert (=> bm!43393 (= call!43407 (lemmaPrintConcatSameAsConcatPrint!9 (ite c!118999 lt!282037 (ite c!118996 lt!282048 lt!282055)) (ite c!118999 lt!282051 (ite c!118996 lt!282083 lt!282028)) (ite c!118999 lt!282066 (ite c!118996 lt!282058 lt!282036))))))

(declare-fun bm!43394 () Bool)

(assert (=> bm!43394 (= call!43394 call!43381)))

(declare-fun bm!43395 () Bool)

(assert (=> bm!43395 (= call!43376 (printList!446 (ite c!118999 lt!282037 (ite c!118996 Lexer!1271 lt!282055)) (ite c!118999 lt!282051 (ite c!118996 Nil!7167 lt!282036))))))

(declare-fun bm!43396 () Bool)

(assert (=> bm!43396 (= call!43391 call!43396)))

(declare-fun bm!43397 () Bool)

(assert (=> bm!43397 (= call!43413 call!43400)))

(declare-fun bm!43398 () Bool)

(assert (=> bm!43398 (= call!43401 (list!3053 call!43412))))

(declare-fun b!660942 () Bool)

(assert (=> b!660942 (= e!408785 call!43396)))

(declare-fun bm!43399 () Bool)

(declare-fun c!118997 () Bool)

(assert (=> bm!43399 (= c!118997 c!118996)))

(assert (=> bm!43399 (= call!43392 call!43383)))

(declare-fun bm!43400 () Bool)

(assert (=> bm!43400 (= call!43409 call!43390)))

(declare-fun bm!43401 () Bool)

(assert (=> bm!43401 (= call!43398 call!43389)))

(declare-fun bm!43402 () Bool)

(assert (=> bm!43402 (= call!43382 call!43395)))

(declare-fun bm!43403 () Bool)

(assert (=> bm!43403 (= call!43400 (theoremInvertabilityWhenTokenListSeparable!14 Lexer!1271 (rules!8289 objs!31) (ite c!118999 call!43403 call!43394)))))

(declare-fun b!660943 () Bool)

(assert (=> b!660943 (= e!408782 call!43387)))

(declare-fun bm!43404 () Bool)

(assert (=> bm!43404 (= call!43383 (printList!446 (ite c!118999 Lexer!1271 (ite c!118996 lt!282048 lt!282055)) (ite c!118999 (t!86253 lt!282068) e!408779)))))

(declare-fun b!660944 () Bool)

(assert (=> b!660944 (= e!408783 call!43401)))

(declare-fun b!660945 () Bool)

(assert (=> b!660945 (= e!408786 e!408780)))

(assert (=> b!660945 (= c!118996 (isEmpty!4792 (tokens!1267 sepL!1)))))

(declare-fun b!660946 () Bool)

(assert (=> b!660946 (= e!408778 e!408784)))

(declare-fun res!293294 () Bool)

(assert (=> b!660946 (=> (not res!293294) (not e!408784))))

(assert (=> b!660946 (= res!293294 (= (rules!8289 (get!2532 lt!282075)) (rules!8289 sepL!1)))))

(declare-fun bm!43405 () Bool)

(assert (=> bm!43405 (= call!43414 call!43410)))

(declare-fun bm!43406 () Bool)

(assert (=> bm!43406 (= call!43388 call!43378)))

(declare-fun bm!43407 () Bool)

(declare-fun c!119001 () Bool)

(assert (=> bm!43407 (= c!119001 c!118996)))

(assert (=> bm!43407 (= call!43387 call!43411)))

(declare-fun bm!43408 () Bool)

(assert (=> bm!43408 (= call!43399 (printTailRec!458 Lexer!1271 (tokens!1267 objs!31) 0 (BalanceConc!5087 Empty!2537)))))

(declare-fun bm!43409 () Bool)

(assert (=> bm!43409 (= call!43385 (printList!446 (ite c!118999 Lexer!1271 (ite c!118996 lt!282048 lt!282055)) (ite c!118999 call!43403 (ite c!118996 lt!282083 lt!282028))))))

(declare-fun b!660947 () Bool)

(declare-fun lt!282088 () Unit!12447)

(declare-fun Unit!12480 () Unit!12447)

(assert (=> b!660947 (= lt!282088 Unit!12480)))

(assert (=> b!660947 (= call!43382 e!408782)))

(declare-fun c!118995 () Bool)

(assert (=> b!660947 (= c!118995 ((_ is Cons!7167) lt!282089))))

(assert (=> b!660947 (= lt!282089 call!43394)))

(declare-fun lt!282074 () Unit!12447)

(declare-fun Unit!12481 () Unit!12447)

(assert (=> b!660947 (= lt!282074 Unit!12481)))

(assert (=> b!660947 (= call!43405 call!43399)))

(declare-fun lt!282052 () Unit!12447)

(declare-fun Unit!12482 () Unit!12447)

(assert (=> b!660947 (= lt!282052 Unit!12482)))

(assert (=> b!660947 (= call!43409 call!43405)))

(declare-fun lt!282035 () Unit!12447)

(assert (=> b!660947 (= lt!282035 call!43413)))

(declare-fun lt!282029 () Unit!12447)

(declare-fun Unit!12483 () Unit!12447)

(assert (=> b!660947 (= lt!282029 Unit!12483)))

(assert (=> b!660947 (= call!43393 call!43388)))

(declare-fun lt!282040 () Unit!12447)

(assert (=> b!660947 (= lt!282040 call!43408)))

(declare-fun lt!282050 () Unit!12447)

(declare-fun Unit!12484 () Unit!12447)

(assert (=> b!660947 (= lt!282050 Unit!12484)))

(assert (=> b!660947 (= call!43397 Nil!7166)))

(declare-fun lt!282080 () Unit!12447)

(declare-fun lt!282034 () Unit!12447)

(assert (=> b!660947 (= lt!282080 lt!282034)))

(assert (=> b!660947 (= call!43392 call!43391)))

(assert (=> b!660947 (= lt!282034 call!43386)))

(assert (=> b!660947 (= lt!282058 call!43394)))

(assert (=> b!660947 (= lt!282083 Nil!7167)))

(assert (=> b!660947 (= lt!282048 Lexer!1271)))

(assert (=> b!660947 (= e!408780 (Some!1690 objs!31))))

(assert (= (and d!226036 c!118999) b!660941))

(assert (= (and d!226036 (not c!118999)) b!660945))

(assert (= (and b!660941 c!118998) b!660942))

(assert (= (and b!660941 (not c!118998)) b!660933))

(assert (= (and b!660945 c!118996) b!660947))

(assert (= (and b!660945 (not c!118996)) b!660939))

(assert (= (and b!660947 c!118995) b!660943))

(assert (= (and b!660947 (not c!118995)) b!660940))

(assert (= (and b!660939 c!119000) b!660935))

(assert (= (and b!660939 (not c!119000)) b!660932))

(assert (= (or b!660947 b!660935) bm!43405))

(assert (= (or b!660947 b!660939 b!660935) bm!43385))

(assert (= (or b!660943 b!660935) bm!43376))

(assert (= (or b!660947 b!660935) bm!43386))

(assert (= (or b!660947 b!660935) bm!43406))

(assert (= (or b!660947 b!660939 b!660935) bm!43394))

(assert (= (or b!660947 b!660935) bm!43387))

(assert (= (or b!660947 b!660935) bm!43380))

(assert (= (or b!660947 b!660935) bm!43372))

(assert (= (or b!660947 b!660935) bm!43400))

(assert (= (or b!660947 b!660935) bm!43401))

(assert (= (or b!660947 b!660935) bm!43390))

(assert (= (or b!660947 b!660935) bm!43397))

(assert (= (or b!660947 b!660935) bm!43399))

(assert (= (and bm!43399 c!118997) b!660937))

(assert (= (and bm!43399 (not c!118997)) b!660938))

(assert (= (or b!660947 b!660935) bm!43392))

(assert (= (or b!660947 b!660935) bm!43402))

(assert (= (or b!660947 b!660935) bm!43396))

(assert (= (or b!660943 b!660935) bm!43407))

(assert (= (and bm!43407 c!119001) b!660944))

(assert (= (and bm!43407 (not c!119001)) b!660934))

(assert (= (or b!660942 bm!43399) bm!43404))

(assert (= (or b!660941 bm!43394) bm!43382))

(assert (= (or b!660942 b!660944) bm!43391))

(assert (= (or b!660941 bm!43402) bm!43374))

(assert (= (or b!660941 b!660947) bm!43408))

(assert (= (or b!660941 bm!43387) bm!43395))

(assert (= (or b!660941 bm!43400) bm!43373))

(assert (= (or b!660941 bm!43406) bm!43383))

(assert (= (or b!660941 bm!43390) bm!43393))

(assert (= (or b!660941 bm!43385) bm!43371))

(assert (= (or b!660941 bm!43386) bm!43384))

(assert (= (or b!660941 bm!43405) bm!43375))

(assert (= (or b!660941 bm!43372) bm!43378))

(assert (= (or b!660941 bm!43401) bm!43389))

(assert (= (or b!660941 bm!43397) bm!43403))

(assert (= (or b!660941 bm!43380) bm!43409))

(assert (= (or b!660941 bm!43376) bm!43388))

(assert (= (or b!660941 bm!43392) bm!43379))

(assert (= (or b!660942 b!660944) bm!43398))

(assert (= (or b!660941 bm!43407) bm!43377))

(assert (= (or b!660942 bm!43396) bm!43381))

(assert (= (and d!226036 (not res!293295)) b!660946))

(assert (= (and b!660946 res!293294) b!660936))

(assert (= (and b!660936 res!293296) b!660931))

(declare-fun m!927315 () Bool)

(assert (=> bm!43377 m!927315))

(declare-fun m!927317 () Bool)

(assert (=> bm!43373 m!927317))

(declare-fun m!927319 () Bool)

(assert (=> bm!43388 m!927319))

(declare-fun m!927321 () Bool)

(assert (=> bm!43371 m!927321))

(declare-fun m!927323 () Bool)

(assert (=> bm!43378 m!927323))

(declare-fun m!927325 () Bool)

(assert (=> b!660945 m!927325))

(declare-fun m!927327 () Bool)

(assert (=> bm!43408 m!927327))

(declare-fun m!927329 () Bool)

(assert (=> bm!43381 m!927329))

(declare-fun m!927331 () Bool)

(assert (=> bm!43375 m!927331))

(declare-fun m!927333 () Bool)

(assert (=> b!660931 m!927333))

(assert (=> b!660931 m!927317))

(assert (=> b!660931 m!927317))

(declare-fun m!927335 () Bool)

(assert (=> b!660931 m!927335))

(declare-fun m!927337 () Bool)

(assert (=> b!660931 m!927337))

(declare-fun m!927339 () Bool)

(assert (=> b!660931 m!927339))

(assert (=> b!660931 m!927333))

(assert (=> b!660931 m!927337))

(declare-fun m!927341 () Bool)

(assert (=> b!660931 m!927341))

(assert (=> b!660931 m!927335))

(declare-fun m!927343 () Bool)

(assert (=> b!660931 m!927343))

(declare-fun m!927345 () Bool)

(assert (=> b!660931 m!927345))

(assert (=> b!660931 m!927341))

(assert (=> b!660931 m!927345))

(assert (=> b!660936 m!927333))

(declare-fun m!927347 () Bool)

(assert (=> b!660936 m!927347))

(declare-fun m!927349 () Bool)

(assert (=> b!660936 m!927349))

(assert (=> b!660936 m!927347))

(declare-fun m!927351 () Bool)

(assert (=> b!660936 m!927351))

(declare-fun m!927353 () Bool)

(assert (=> b!660936 m!927353))

(assert (=> b!660936 m!927349))

(declare-fun m!927355 () Bool)

(assert (=> b!660938 m!927355))

(declare-fun m!927357 () Bool)

(assert (=> bm!43403 m!927357))

(assert (=> b!660946 m!927333))

(declare-fun m!927359 () Bool)

(assert (=> b!660939 m!927359))

(declare-fun m!927361 () Bool)

(assert (=> b!660939 m!927361))

(declare-fun m!927363 () Bool)

(assert (=> b!660939 m!927363))

(declare-fun m!927365 () Bool)

(assert (=> b!660939 m!927365))

(declare-fun m!927367 () Bool)

(assert (=> b!660939 m!927367))

(assert (=> b!660939 m!927363))

(declare-fun m!927369 () Bool)

(assert (=> b!660939 m!927369))

(assert (=> b!660939 m!927365))

(declare-fun m!927371 () Bool)

(assert (=> b!660939 m!927371))

(declare-fun m!927373 () Bool)

(assert (=> bm!43404 m!927373))

(declare-fun m!927375 () Bool)

(assert (=> d!226036 m!927375))

(declare-fun m!927377 () Bool)

(assert (=> d!226036 m!927377))

(declare-fun m!927379 () Bool)

(assert (=> d!226036 m!927379))

(declare-fun m!927381 () Bool)

(assert (=> d!226036 m!927381))

(assert (=> bm!43384 m!927345))

(declare-fun m!927383 () Bool)

(assert (=> bm!43393 m!927383))

(declare-fun m!927385 () Bool)

(assert (=> bm!43398 m!927385))

(declare-fun m!927387 () Bool)

(assert (=> bm!43389 m!927387))

(declare-fun m!927389 () Bool)

(assert (=> b!660935 m!927389))

(declare-fun m!927391 () Bool)

(assert (=> b!660935 m!927391))

(declare-fun m!927393 () Bool)

(assert (=> b!660935 m!927393))

(assert (=> b!660935 m!927389))

(declare-fun m!927395 () Bool)

(assert (=> b!660935 m!927395))

(declare-fun m!927397 () Bool)

(assert (=> b!660935 m!927397))

(declare-fun m!927399 () Bool)

(assert (=> b!660935 m!927399))

(declare-fun m!927401 () Bool)

(assert (=> b!660935 m!927401))

(assert (=> b!660935 m!927397))

(declare-fun m!927403 () Bool)

(assert (=> b!660935 m!927403))

(assert (=> b!660935 m!927393))

(declare-fun m!927405 () Bool)

(assert (=> b!660935 m!927405))

(assert (=> b!660935 m!927393))

(declare-fun m!927407 () Bool)

(assert (=> b!660935 m!927407))

(assert (=> b!660935 m!927397))

(declare-fun m!927409 () Bool)

(assert (=> b!660935 m!927409))

(declare-fun m!927411 () Bool)

(assert (=> bm!43382 m!927411))

(declare-fun m!927413 () Bool)

(assert (=> bm!43395 m!927413))

(declare-fun m!927415 () Bool)

(assert (=> bm!43374 m!927415))

(declare-fun m!927417 () Bool)

(assert (=> bm!43409 m!927417))

(declare-fun m!927419 () Bool)

(assert (=> bm!43391 m!927419))

(declare-fun m!927421 () Bool)

(assert (=> bm!43383 m!927421))

(declare-fun m!927423 () Bool)

(assert (=> bm!43379 m!927423))

(assert (=> b!660711 d!226036))

(declare-fun b!660958 () Bool)

(declare-fun b_free!19077 () Bool)

(declare-fun b_next!19141 () Bool)

(assert (=> b!660958 (= b_free!19077 (not b_next!19141))))

(declare-fun tp!201534 () Bool)

(declare-fun b_and!62871 () Bool)

(assert (=> b!660958 (= tp!201534 b_and!62871)))

(declare-fun b_free!19079 () Bool)

(declare-fun b_next!19143 () Bool)

(assert (=> b!660958 (= b_free!19079 (not b_next!19143))))

(declare-fun tp!201535 () Bool)

(declare-fun b_and!62873 () Bool)

(assert (=> b!660958 (= tp!201535 b_and!62873)))

(declare-fun e!408796 () Bool)

(assert (=> b!660958 (= e!408796 (and tp!201534 tp!201535))))

(declare-fun b!660957 () Bool)

(declare-fun e!408797 () Bool)

(declare-fun inv!9190 (String!9148) Bool)

(declare-fun inv!9203 (TokenValueInjection!2716) Bool)

(assert (=> b!660957 (= e!408797 (and (inv!9190 (tag!1710 (h!12569 (rules!8289 sepR!1)))) (inv!9203 (transformation!1448 (h!12569 (rules!8289 sepR!1)))) e!408796))))

(declare-fun b!660956 () Bool)

(declare-fun e!408795 () Bool)

(declare-fun tp!201533 () Bool)

(assert (=> b!660956 (= e!408795 (and e!408797 tp!201533))))

(assert (=> b!660709 (= tp!201494 e!408795)))

(assert (= b!660957 b!660958))

(assert (= b!660956 b!660957))

(assert (= (and b!660709 ((_ is Cons!7168) (rules!8289 sepR!1))) b!660956))

(declare-fun m!927425 () Bool)

(assert (=> b!660957 m!927425))

(declare-fun m!927427 () Bool)

(assert (=> b!660957 m!927427))

(declare-fun b!660961 () Bool)

(declare-fun b_free!19081 () Bool)

(declare-fun b_next!19145 () Bool)

(assert (=> b!660961 (= b_free!19081 (not b_next!19145))))

(declare-fun tp!201537 () Bool)

(declare-fun b_and!62875 () Bool)

(assert (=> b!660961 (= tp!201537 b_and!62875)))

(declare-fun b_free!19083 () Bool)

(declare-fun b_next!19147 () Bool)

(assert (=> b!660961 (= b_free!19083 (not b_next!19147))))

(declare-fun tp!201538 () Bool)

(declare-fun b_and!62877 () Bool)

(assert (=> b!660961 (= tp!201538 b_and!62877)))

(declare-fun e!408800 () Bool)

(assert (=> b!660961 (= e!408800 (and tp!201537 tp!201538))))

(declare-fun b!660960 () Bool)

(declare-fun e!408801 () Bool)

(assert (=> b!660960 (= e!408801 (and (inv!9190 (tag!1710 (h!12569 (rules!8289 objs!31)))) (inv!9203 (transformation!1448 (h!12569 (rules!8289 objs!31)))) e!408800))))

(declare-fun b!660959 () Bool)

(declare-fun e!408799 () Bool)

(declare-fun tp!201536 () Bool)

(assert (=> b!660959 (= e!408799 (and e!408801 tp!201536))))

(assert (=> b!660708 (= tp!201496 e!408799)))

(assert (= b!660960 b!660961))

(assert (= b!660959 b!660960))

(assert (= (and b!660708 ((_ is Cons!7168) (rules!8289 objs!31))) b!660959))

(declare-fun m!927429 () Bool)

(assert (=> b!660960 m!927429))

(declare-fun m!927431 () Bool)

(assert (=> b!660960 m!927431))

(declare-fun b!660964 () Bool)

(declare-fun b_free!19085 () Bool)

(declare-fun b_next!19149 () Bool)

(assert (=> b!660964 (= b_free!19085 (not b_next!19149))))

(declare-fun tp!201540 () Bool)

(declare-fun b_and!62879 () Bool)

(assert (=> b!660964 (= tp!201540 b_and!62879)))

(declare-fun b_free!19087 () Bool)

(declare-fun b_next!19151 () Bool)

(assert (=> b!660964 (= b_free!19087 (not b_next!19151))))

(declare-fun tp!201541 () Bool)

(declare-fun b_and!62881 () Bool)

(assert (=> b!660964 (= tp!201541 b_and!62881)))

(declare-fun e!408804 () Bool)

(assert (=> b!660964 (= e!408804 (and tp!201540 tp!201541))))

(declare-fun b!660963 () Bool)

(declare-fun e!408805 () Bool)

(assert (=> b!660963 (= e!408805 (and (inv!9190 (tag!1710 (h!12569 (rules!8289 sepL!1)))) (inv!9203 (transformation!1448 (h!12569 (rules!8289 sepL!1)))) e!408804))))

(declare-fun b!660962 () Bool)

(declare-fun e!408803 () Bool)

(declare-fun tp!201539 () Bool)

(assert (=> b!660962 (= e!408803 (and e!408805 tp!201539))))

(assert (=> b!660713 (= tp!201493 e!408803)))

(assert (= b!660963 b!660964))

(assert (= b!660962 b!660963))

(assert (= (and b!660713 ((_ is Cons!7168) (rules!8289 sepL!1))) b!660962))

(declare-fun m!927433 () Bool)

(assert (=> b!660963 m!927433))

(declare-fun m!927435 () Bool)

(assert (=> b!660963 m!927435))

(declare-fun e!408812 () Bool)

(declare-fun tp!201548 () Bool)

(declare-fun tp!201550 () Bool)

(declare-fun b!660973 () Bool)

(assert (=> b!660973 (= e!408812 (and (inv!9196 (left!5811 (c!118933 (tokens!1267 sepL!1)))) tp!201550 (inv!9196 (right!6141 (c!118933 (tokens!1267 sepL!1)))) tp!201548))))

(declare-fun b!660975 () Bool)

(declare-fun e!408811 () Bool)

(declare-fun tp!201549 () Bool)

(assert (=> b!660975 (= e!408811 tp!201549)))

(declare-fun b!660974 () Bool)

(declare-fun inv!9204 (IArray!5077) Bool)

(assert (=> b!660974 (= e!408812 (and (inv!9204 (xs!5187 (c!118933 (tokens!1267 sepL!1)))) e!408811))))

(assert (=> b!660714 (= tp!201495 (and (inv!9196 (c!118933 (tokens!1267 sepL!1))) e!408812))))

(assert (= (and b!660714 ((_ is Node!2538) (c!118933 (tokens!1267 sepL!1)))) b!660973))

(assert (= b!660974 b!660975))

(assert (= (and b!660714 ((_ is Leaf!3778) (c!118933 (tokens!1267 sepL!1)))) b!660974))

(declare-fun m!927437 () Bool)

(assert (=> b!660973 m!927437))

(declare-fun m!927439 () Bool)

(assert (=> b!660973 m!927439))

(declare-fun m!927441 () Bool)

(assert (=> b!660974 m!927441))

(assert (=> b!660714 m!926857))

(declare-fun e!408814 () Bool)

(declare-fun b!660976 () Bool)

(declare-fun tp!201553 () Bool)

(declare-fun tp!201551 () Bool)

(assert (=> b!660976 (= e!408814 (and (inv!9196 (left!5811 (c!118933 (tokens!1267 objs!31)))) tp!201553 (inv!9196 (right!6141 (c!118933 (tokens!1267 objs!31)))) tp!201551))))

(declare-fun b!660978 () Bool)

(declare-fun e!408813 () Bool)

(declare-fun tp!201552 () Bool)

(assert (=> b!660978 (= e!408813 tp!201552)))

(declare-fun b!660977 () Bool)

(assert (=> b!660977 (= e!408814 (and (inv!9204 (xs!5187 (c!118933 (tokens!1267 objs!31)))) e!408813))))

(assert (=> b!660717 (= tp!201492 (and (inv!9196 (c!118933 (tokens!1267 objs!31))) e!408814))))

(assert (= (and b!660717 ((_ is Node!2538) (c!118933 (tokens!1267 objs!31)))) b!660976))

(assert (= b!660977 b!660978))

(assert (= (and b!660717 ((_ is Leaf!3778) (c!118933 (tokens!1267 objs!31)))) b!660977))

(declare-fun m!927443 () Bool)

(assert (=> b!660976 m!927443))

(declare-fun m!927445 () Bool)

(assert (=> b!660976 m!927445))

(declare-fun m!927447 () Bool)

(assert (=> b!660977 m!927447))

(assert (=> b!660717 m!926859))

(declare-fun tp!201554 () Bool)

(declare-fun tp!201556 () Bool)

(declare-fun b!660979 () Bool)

(declare-fun e!408816 () Bool)

(assert (=> b!660979 (= e!408816 (and (inv!9196 (left!5811 (c!118933 (tokens!1267 sepR!1)))) tp!201556 (inv!9196 (right!6141 (c!118933 (tokens!1267 sepR!1)))) tp!201554))))

(declare-fun b!660981 () Bool)

(declare-fun e!408815 () Bool)

(declare-fun tp!201555 () Bool)

(assert (=> b!660981 (= e!408815 tp!201555)))

(declare-fun b!660980 () Bool)

(assert (=> b!660980 (= e!408816 (and (inv!9204 (xs!5187 (c!118933 (tokens!1267 sepR!1)))) e!408815))))

(assert (=> b!660716 (= tp!201491 (and (inv!9196 (c!118933 (tokens!1267 sepR!1))) e!408816))))

(assert (= (and b!660716 ((_ is Node!2538) (c!118933 (tokens!1267 sepR!1)))) b!660979))

(assert (= b!660980 b!660981))

(assert (= (and b!660716 ((_ is Leaf!3778) (c!118933 (tokens!1267 sepR!1)))) b!660980))

(declare-fun m!927449 () Bool)

(assert (=> b!660979 m!927449))

(declare-fun m!927451 () Bool)

(assert (=> b!660979 m!927451))

(declare-fun m!927453 () Bool)

(assert (=> b!660980 m!927453))

(assert (=> b!660716 m!926833))

(check-sat (not bm!43409) (not b!660981) (not bm!43384) (not bm!43344) (not d!225984) (not b_next!19147) (not b!660738) (not d!225988) (not bm!43335) (not bm!43334) (not bm!43332) (not bm!43389) (not bm!43373) (not d!226036) (not bm!43374) (not b!660962) (not b!660901) (not bm!43365) (not bm!43388) (not d!225974) (not bm!43342) (not b!660936) (not b!660935) (not b_next!19141) (not b!660736) (not b!660929) (not b!660716) (not b!660979) (not b!660957) (not b!660960) b_and!62881 (not b!660926) (not d!225972) (not bm!43359) (not b!660928) b_and!62873 (not d!225994) (not b_next!19151) (not bm!43343) (not d!226022) (not b!660959) (not b!660945) (not bm!43398) (not b!660896) (not bm!43403) (not b!660925) (not bm!43395) (not bm!43350) (not bm!43336) (not bm!43377) (not d!226032) b_and!62875 (not b!660974) (not b!660946) (not b!660930) (not bm!43379) (not b!660900) (not b_next!19143) (not b!660911) (not bm!43393) (not bm!43370) (not b!660975) (not b!660976) (not bm!43349) (not b!660904) (not b!660931) (not b!660922) (not b!660910) (not bm!43339) (not b!660733) (not bm!43340) (not b!660973) (not bm!43404) (not b!660977) (not bm!43356) (not b!660939) (not bm!43354) (not b!660924) (not b!660735) (not b!660717) (not b!660915) (not bm!43338) (not bm!43364) (not b_next!19149) (not bm!43382) (not bm!43352) (not bm!43369) b_and!62877 (not b!660978) (not d!226030) (not bm!43381) (not bm!43378) (not b!660963) b_and!62879 (not b!660903) (not b!660980) (not d!226034) (not b!660956) (not b!660938) (not bm!43371) b_and!62871 (not b!660927) (not b!660714) (not d!226026) (not b!660913) (not bm!43408) (not bm!43345) (not d!226028) (not b!660923) (not bm!43375) (not bm!43383) (not b_next!19145) (not bm!43391))
(check-sat (not b_next!19147) (not b_next!19141) b_and!62881 b_and!62873 (not b_next!19151) b_and!62875 (not b_next!19143) (not b_next!19149) b_and!62877 b_and!62879 b_and!62871 (not b_next!19145))
