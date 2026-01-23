; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352484 () Bool)

(assert start!352484)

(declare-fun b!3753460 () Bool)

(declare-fun b_free!100453 () Bool)

(declare-fun b_next!101157 () Bool)

(assert (=> b!3753460 (= b_free!100453 (not b_next!101157))))

(declare-fun tp!1146091 () Bool)

(declare-fun b_and!278935 () Bool)

(assert (=> b!3753460 (= tp!1146091 b_and!278935)))

(declare-fun b_free!100455 () Bool)

(declare-fun b_next!101159 () Bool)

(assert (=> b!3753460 (= b_free!100455 (not b_next!101159))))

(declare-fun tp!1146094 () Bool)

(declare-fun b_and!278937 () Bool)

(assert (=> b!3753460 (= tp!1146094 b_and!278937)))

(declare-fun b!3753458 () Bool)

(declare-fun e!2321864 () Bool)

(declare-fun tp!1146095 () Bool)

(declare-datatypes ((List!40155 0))(
  ( (Nil!40031) (Cons!40031 (h!45451 (_ BitVec 16)) (t!303258 List!40155)) )
))
(declare-datatypes ((TokenValue!6354 0))(
  ( (FloatLiteralValue!12708 (text!44923 List!40155)) (TokenValueExt!6353 (__x!24925 Int)) (Broken!31770 (value!195097 List!40155)) (Object!6477) (End!6354) (Def!6354) (Underscore!6354) (Match!6354) (Else!6354) (Error!6354) (Case!6354) (If!6354) (Extends!6354) (Abstract!6354) (Class!6354) (Val!6354) (DelimiterValue!12708 (del!6414 List!40155)) (KeywordValue!6360 (value!195098 List!40155)) (CommentValue!12708 (value!195099 List!40155)) (WhitespaceValue!12708 (value!195100 List!40155)) (IndentationValue!6354 (value!195101 List!40155)) (String!45427) (Int32!6354) (Broken!31771 (value!195102 List!40155)) (Boolean!6355) (Unit!57759) (OperatorValue!6357 (op!6414 List!40155)) (IdentifierValue!12708 (value!195103 List!40155)) (IdentifierValue!12709 (value!195104 List!40155)) (WhitespaceValue!12709 (value!195105 List!40155)) (True!12708) (False!12708) (Broken!31772 (value!195106 List!40155)) (Broken!31773 (value!195107 List!40155)) (True!12709) (RightBrace!6354) (RightBracket!6354) (Colon!6354) (Null!6354) (Comma!6354) (LeftBracket!6354) (False!12709) (LeftBrace!6354) (ImaginaryLiteralValue!6354 (text!44924 List!40155)) (StringLiteralValue!19062 (value!195108 List!40155)) (EOFValue!6354 (value!195109 List!40155)) (IdentValue!6354 (value!195110 List!40155)) (DelimiterValue!12709 (value!195111 List!40155)) (DedentValue!6354 (value!195112 List!40155)) (NewLineValue!6354 (value!195113 List!40155)) (IntegerValue!19062 (value!195114 (_ BitVec 32)) (text!44925 List!40155)) (IntegerValue!19063 (value!195115 Int) (text!44926 List!40155)) (Times!6354) (Or!6354) (Equal!6354) (Minus!6354) (Broken!31774 (value!195116 List!40155)) (And!6354) (Div!6354) (LessEqual!6354) (Mod!6354) (Concat!17383) (Not!6354) (Plus!6354) (SpaceValue!6354 (value!195117 List!40155)) (IntegerValue!19064 (value!195118 Int) (text!44927 List!40155)) (StringLiteralValue!19063 (text!44928 List!40155)) (FloatLiteralValue!12709 (text!44929 List!40155)) (BytesLiteralValue!6354 (value!195119 List!40155)) (CommentValue!12709 (value!195120 List!40155)) (StringLiteralValue!19064 (value!195121 List!40155)) (ErrorTokenValue!6354 (msg!6415 List!40155)) )
))
(declare-datatypes ((C!22244 0))(
  ( (C!22245 (val!13186 Int)) )
))
(declare-datatypes ((List!40156 0))(
  ( (Nil!40032) (Cons!40032 (h!45452 C!22244) (t!303259 List!40156)) )
))
(declare-datatypes ((IArray!24501 0))(
  ( (IArray!24502 (innerList!12308 List!40156)) )
))
(declare-datatypes ((Conc!12248 0))(
  ( (Node!12248 (left!30993 Conc!12248) (right!31323 Conc!12248) (csize!24726 Int) (cheight!12459 Int)) (Leaf!19002 (xs!15450 IArray!24501) (csize!24727 Int)) (Empty!12248) )
))
(declare-datatypes ((BalanceConc!24090 0))(
  ( (BalanceConc!24091 (c!649723 Conc!12248)) )
))
(declare-datatypes ((TokenValueInjection!12136 0))(
  ( (TokenValueInjection!12137 (toValue!8472 Int) (toChars!8331 Int)) )
))
(declare-datatypes ((Regex!11029 0))(
  ( (ElementMatch!11029 (c!649724 C!22244)) (Concat!17384 (regOne!22570 Regex!11029) (regTwo!22570 Regex!11029)) (EmptyExpr!11029) (Star!11029 (reg!11358 Regex!11029)) (EmptyLang!11029) (Union!11029 (regOne!22571 Regex!11029) (regTwo!22571 Regex!11029)) )
))
(declare-datatypes ((String!45428 0))(
  ( (String!45429 (value!195122 String)) )
))
(declare-datatypes ((Rule!12048 0))(
  ( (Rule!12049 (regex!6124 Regex!11029) (tag!6984 String!45428) (isSeparator!6124 Bool) (transformation!6124 TokenValueInjection!12136)) )
))
(declare-datatypes ((Token!11386 0))(
  ( (Token!11387 (value!195123 TokenValue!6354) (rule!8888 Rule!12048) (size!30123 Int) (originalCharacters!6724 List!40156)) )
))
(declare-fun separatorToken!144 () Token!11386)

(declare-fun e!2321859 () Bool)

(declare-fun inv!21 (TokenValue!6354) Bool)

(assert (=> b!3753458 (= e!2321859 (and (inv!21 (value!195123 separatorToken!144)) e!2321864 tp!1146095))))

(declare-fun b!3753459 () Bool)

(declare-fun e!2321860 () Bool)

(declare-fun acc!419 () BalanceConc!24090)

(declare-fun tp!1146093 () Bool)

(declare-fun inv!53627 (Conc!12248) Bool)

(assert (=> b!3753459 (= e!2321860 (and (inv!53627 (c!649723 acc!419)) tp!1146093))))

(declare-fun res!1521043 () Bool)

(declare-fun e!2321861 () Bool)

(assert (=> start!352484 (=> (not res!1521043) (not e!2321861))))

(declare-datatypes ((LexerInterface!5713 0))(
  ( (LexerInterfaceExt!5710 (__x!24926 Int)) (Lexer!5711) )
))
(declare-fun thiss!14060 () LexerInterface!5713)

(declare-fun from!856 () Int)

(get-info :version)

(assert (=> start!352484 (= res!1521043 (and ((_ is Lexer!5711) thiss!14060) (>= from!856 0)))))

(assert (=> start!352484 e!2321861))

(declare-fun inv!53628 (BalanceConc!24090) Bool)

(assert (=> start!352484 (and (inv!53628 acc!419) e!2321860)))

(assert (=> start!352484 true))

(declare-fun inv!53629 (Token!11386) Bool)

(assert (=> start!352484 (and (inv!53629 separatorToken!144) e!2321859)))

(declare-datatypes ((List!40157 0))(
  ( (Nil!40033) (Cons!40033 (h!45453 Token!11386) (t!303260 List!40157)) )
))
(declare-datatypes ((IArray!24503 0))(
  ( (IArray!24504 (innerList!12309 List!40157)) )
))
(declare-datatypes ((Conc!12249 0))(
  ( (Node!12249 (left!30994 Conc!12249) (right!31324 Conc!12249) (csize!24728 Int) (cheight!12460 Int)) (Leaf!19003 (xs!15451 IArray!24503) (csize!24729 Int)) (Empty!12249) )
))
(declare-datatypes ((BalanceConc!24092 0))(
  ( (BalanceConc!24093 (c!649725 Conc!12249)) )
))
(declare-fun v!6366 () BalanceConc!24092)

(declare-fun e!2321857 () Bool)

(declare-fun inv!53630 (BalanceConc!24092) Bool)

(assert (=> start!352484 (and (inv!53630 v!6366) e!2321857)))

(declare-fun e!2321858 () Bool)

(assert (=> b!3753460 (= e!2321858 (and tp!1146091 tp!1146094))))

(declare-fun b!3753461 () Bool)

(declare-fun tp!1146092 () Bool)

(declare-fun inv!53620 (String!45428) Bool)

(declare-fun inv!53631 (TokenValueInjection!12136) Bool)

(assert (=> b!3753461 (= e!2321864 (and tp!1146092 (inv!53620 (tag!6984 (rule!8888 separatorToken!144))) (inv!53631 (transformation!6124 (rule!8888 separatorToken!144))) e!2321858))))

(declare-fun b!3753462 () Bool)

(declare-fun e!2321862 () Bool)

(declare-fun lt!1300238 () Int)

(assert (=> b!3753462 (= e!2321862 (not (and (>= (+ 1 from!856) 0) (<= (+ 1 from!856) lt!1300238))))))

(declare-fun lt!1300237 () BalanceConc!24090)

(declare-fun ++!9913 (BalanceConc!24090 BalanceConc!24090) BalanceConc!24090)

(declare-fun charsOf!3977 (Token!11386) BalanceConc!24090)

(declare-fun apply!9420 (BalanceConc!24092 Int) Token!11386)

(assert (=> b!3753462 (= lt!1300237 (++!9913 (++!9913 acc!419 (charsOf!3977 (apply!9420 v!6366 from!856))) (charsOf!3977 separatorToken!144)))))

(declare-fun lt!1300241 () List!40157)

(declare-fun lt!1300240 () List!40157)

(declare-fun tail!5756 (List!40157) List!40157)

(declare-fun drop!2085 (List!40157 Int) List!40157)

(assert (=> b!3753462 (= (tail!5756 lt!1300241) (drop!2085 lt!1300240 (+ 1 from!856)))))

(declare-datatypes ((Unit!57760 0))(
  ( (Unit!57761) )
))
(declare-fun lt!1300236 () Unit!57760)

(declare-fun lemmaDropTail!1107 (List!40157 Int) Unit!57760)

(assert (=> b!3753462 (= lt!1300236 (lemmaDropTail!1107 lt!1300240 from!856))))

(declare-fun head!8029 (List!40157) Token!11386)

(declare-fun apply!9421 (List!40157 Int) Token!11386)

(assert (=> b!3753462 (= (head!8029 lt!1300241) (apply!9421 lt!1300240 from!856))))

(assert (=> b!3753462 (= lt!1300241 (drop!2085 lt!1300240 from!856))))

(declare-fun lt!1300239 () Unit!57760)

(declare-fun lemmaDropApply!1223 (List!40157 Int) Unit!57760)

(assert (=> b!3753462 (= lt!1300239 (lemmaDropApply!1223 lt!1300240 from!856))))

(declare-fun list!14754 (BalanceConc!24092) List!40157)

(assert (=> b!3753462 (= lt!1300240 (list!14754 v!6366))))

(declare-fun b!3753463 () Bool)

(declare-fun tp!1146096 () Bool)

(declare-fun inv!53632 (Conc!12249) Bool)

(assert (=> b!3753463 (= e!2321857 (and (inv!53632 (c!649725 v!6366)) tp!1146096))))

(declare-fun b!3753464 () Bool)

(assert (=> b!3753464 (= e!2321861 e!2321862)))

(declare-fun res!1521042 () Bool)

(assert (=> b!3753464 (=> (not res!1521042) (not e!2321862))))

(assert (=> b!3753464 (= res!1521042 (and (<= from!856 lt!1300238) (isSeparator!6124 (rule!8888 separatorToken!144)) (< from!856 lt!1300238)))))

(declare-fun size!30124 (BalanceConc!24092) Int)

(assert (=> b!3753464 (= lt!1300238 (size!30124 v!6366))))

(assert (= (and start!352484 res!1521043) b!3753464))

(assert (= (and b!3753464 res!1521042) b!3753462))

(assert (= start!352484 b!3753459))

(assert (= b!3753461 b!3753460))

(assert (= b!3753458 b!3753461))

(assert (= start!352484 b!3753458))

(assert (= start!352484 b!3753463))

(declare-fun m!4245305 () Bool)

(assert (=> b!3753458 m!4245305))

(declare-fun m!4245307 () Bool)

(assert (=> start!352484 m!4245307))

(declare-fun m!4245309 () Bool)

(assert (=> start!352484 m!4245309))

(declare-fun m!4245311 () Bool)

(assert (=> start!352484 m!4245311))

(declare-fun m!4245313 () Bool)

(assert (=> b!3753461 m!4245313))

(declare-fun m!4245315 () Bool)

(assert (=> b!3753461 m!4245315))

(declare-fun m!4245317 () Bool)

(assert (=> b!3753462 m!4245317))

(declare-fun m!4245319 () Bool)

(assert (=> b!3753462 m!4245319))

(declare-fun m!4245321 () Bool)

(assert (=> b!3753462 m!4245321))

(declare-fun m!4245323 () Bool)

(assert (=> b!3753462 m!4245323))

(declare-fun m!4245325 () Bool)

(assert (=> b!3753462 m!4245325))

(declare-fun m!4245327 () Bool)

(assert (=> b!3753462 m!4245327))

(declare-fun m!4245329 () Bool)

(assert (=> b!3753462 m!4245329))

(declare-fun m!4245331 () Bool)

(assert (=> b!3753462 m!4245331))

(assert (=> b!3753462 m!4245327))

(assert (=> b!3753462 m!4245321))

(declare-fun m!4245333 () Bool)

(assert (=> b!3753462 m!4245333))

(declare-fun m!4245335 () Bool)

(assert (=> b!3753462 m!4245335))

(declare-fun m!4245337 () Bool)

(assert (=> b!3753462 m!4245337))

(assert (=> b!3753462 m!4245323))

(assert (=> b!3753462 m!4245331))

(declare-fun m!4245339 () Bool)

(assert (=> b!3753462 m!4245339))

(declare-fun m!4245341 () Bool)

(assert (=> b!3753462 m!4245341))

(declare-fun m!4245343 () Bool)

(assert (=> b!3753463 m!4245343))

(declare-fun m!4245345 () Bool)

(assert (=> b!3753459 m!4245345))

(declare-fun m!4245347 () Bool)

(assert (=> b!3753464 m!4245347))

(check-sat b_and!278935 (not b!3753458) (not b!3753463) (not b!3753462) (not start!352484) (not b_next!101157) b_and!278937 (not b!3753464) (not b!3753461) (not b_next!101159) (not b!3753459))
(check-sat b_and!278937 b_and!278935 (not b_next!101159) (not b_next!101157))
