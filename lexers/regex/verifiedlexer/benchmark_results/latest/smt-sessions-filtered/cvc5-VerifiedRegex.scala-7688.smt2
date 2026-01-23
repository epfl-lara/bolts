; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404648 () Bool)

(assert start!404648)

(declare-fun b!4231004 () Bool)

(declare-fun b_free!124971 () Bool)

(declare-fun b_next!125675 () Bool)

(assert (=> b!4231004 (= b_free!124971 (not b_next!125675))))

(declare-fun tp!1296025 () Bool)

(declare-fun b_and!334281 () Bool)

(assert (=> b!4231004 (= tp!1296025 b_and!334281)))

(declare-fun b_free!124973 () Bool)

(declare-fun b_next!125677 () Bool)

(assert (=> b!4231004 (= b_free!124973 (not b_next!125677))))

(declare-fun tp!1296021 () Bool)

(declare-fun b_and!334283 () Bool)

(assert (=> b!4231004 (= tp!1296021 b_and!334283)))

(declare-fun b!4231003 () Bool)

(declare-fun e!2627182 () Bool)

(declare-fun tp_is_empty!22519 () Bool)

(declare-fun tp!1296024 () Bool)

(assert (=> b!4231003 (= e!2627182 (and tp_is_empty!22519 tp!1296024))))

(declare-fun e!2627179 () Bool)

(assert (=> b!4231004 (= e!2627179 (and tp!1296025 tp!1296021))))

(declare-fun res!1739971 () Bool)

(declare-fun e!2627180 () Bool)

(assert (=> start!404648 (=> (not res!1739971) (not e!2627180))))

(declare-datatypes ((LexerInterface!7482 0))(
  ( (LexerInterfaceExt!7479 (__x!28457 Int)) (Lexer!7480) )
))
(declare-fun thiss!26814 () LexerInterface!7482)

(assert (=> start!404648 (= res!1739971 (is-Lexer!7480 thiss!26814))))

(assert (=> start!404648 e!2627180))

(assert (=> start!404648 true))

(assert (=> start!404648 e!2627182))

(declare-fun e!2627181 () Bool)

(assert (=> start!404648 e!2627181))

(declare-fun e!2627177 () Bool)

(assert (=> start!404648 e!2627177))

(declare-fun b!4231005 () Bool)

(declare-fun res!1739970 () Bool)

(assert (=> b!4231005 (=> (not res!1739970) (not e!2627180))))

(declare-datatypes ((C!25782 0))(
  ( (C!25783 (val!15053 Int)) )
))
(declare-datatypes ((List!46838 0))(
  ( (Nil!46714) (Cons!46714 (h!52134 C!25782) (t!349509 List!46838)) )
))
(declare-fun input!3600 () List!46838)

(declare-datatypes ((List!46839 0))(
  ( (Nil!46715) (Cons!46715 (h!52135 (_ BitVec 16)) (t!349510 List!46839)) )
))
(declare-datatypes ((TokenValue!8117 0))(
  ( (FloatLiteralValue!16234 (text!57264 List!46839)) (TokenValueExt!8116 (__x!28458 Int)) (Broken!40585 (value!245251 List!46839)) (Object!8240) (End!8117) (Def!8117) (Underscore!8117) (Match!8117) (Else!8117) (Error!8117) (Case!8117) (If!8117) (Extends!8117) (Abstract!8117) (Class!8117) (Val!8117) (DelimiterValue!16234 (del!8177 List!46839)) (KeywordValue!8123 (value!245252 List!46839)) (CommentValue!16234 (value!245253 List!46839)) (WhitespaceValue!16234 (value!245254 List!46839)) (IndentationValue!8117 (value!245255 List!46839)) (String!54460) (Int32!8117) (Broken!40586 (value!245256 List!46839)) (Boolean!8118) (Unit!65841) (OperatorValue!8120 (op!8177 List!46839)) (IdentifierValue!16234 (value!245257 List!46839)) (IdentifierValue!16235 (value!245258 List!46839)) (WhitespaceValue!16235 (value!245259 List!46839)) (True!16234) (False!16234) (Broken!40587 (value!245260 List!46839)) (Broken!40588 (value!245261 List!46839)) (True!16235) (RightBrace!8117) (RightBracket!8117) (Colon!8117) (Null!8117) (Comma!8117) (LeftBracket!8117) (False!16235) (LeftBrace!8117) (ImaginaryLiteralValue!8117 (text!57265 List!46839)) (StringLiteralValue!24351 (value!245262 List!46839)) (EOFValue!8117 (value!245263 List!46839)) (IdentValue!8117 (value!245264 List!46839)) (DelimiterValue!16235 (value!245265 List!46839)) (DedentValue!8117 (value!245266 List!46839)) (NewLineValue!8117 (value!245267 List!46839)) (IntegerValue!24351 (value!245268 (_ BitVec 32)) (text!57266 List!46839)) (IntegerValue!24352 (value!245269 Int) (text!57267 List!46839)) (Times!8117) (Or!8117) (Equal!8117) (Minus!8117) (Broken!40589 (value!245270 List!46839)) (And!8117) (Div!8117) (LessEqual!8117) (Mod!8117) (Concat!20909) (Not!8117) (Plus!8117) (SpaceValue!8117 (value!245271 List!46839)) (IntegerValue!24353 (value!245272 Int) (text!57268 List!46839)) (StringLiteralValue!24352 (text!57269 List!46839)) (FloatLiteralValue!16235 (text!57270 List!46839)) (BytesLiteralValue!8117 (value!245273 List!46839)) (CommentValue!16235 (value!245274 List!46839)) (StringLiteralValue!24353 (value!245275 List!46839)) (ErrorTokenValue!8117 (msg!8178 List!46839)) )
))
(declare-datatypes ((Regex!12792 0))(
  ( (ElementMatch!12792 (c!719152 C!25782)) (Concat!20910 (regOne!26096 Regex!12792) (regTwo!26096 Regex!12792)) (EmptyExpr!12792) (Star!12792 (reg!13121 Regex!12792)) (EmptyLang!12792) (Union!12792 (regOne!26097 Regex!12792) (regTwo!26097 Regex!12792)) )
))
(declare-datatypes ((String!54461 0))(
  ( (String!54462 (value!245276 String)) )
))
(declare-datatypes ((IArray!28201 0))(
  ( (IArray!28202 (innerList!14158 List!46838)) )
))
(declare-datatypes ((Conc!14098 0))(
  ( (Node!14098 (left!34750 Conc!14098) (right!35080 Conc!14098) (csize!28426 Int) (cheight!14309 Int)) (Leaf!21787 (xs!17404 IArray!28201) (csize!28427 Int)) (Empty!14098) )
))
(declare-datatypes ((BalanceConc!27790 0))(
  ( (BalanceConc!27791 (c!719153 Conc!14098)) )
))
(declare-datatypes ((TokenValueInjection!15662 0))(
  ( (TokenValueInjection!15663 (toValue!10619 Int) (toChars!10478 Int)) )
))
(declare-datatypes ((Rule!15574 0))(
  ( (Rule!15575 (regex!7887 Regex!12792) (tag!8751 String!54461) (isSeparator!7887 Bool) (transformation!7887 TokenValueInjection!15662)) )
))
(declare-fun r!4353 () Rule!15574)

(declare-datatypes ((Token!14404 0))(
  ( (Token!14405 (value!245277 TokenValue!8117) (rule!11003 Rule!15574) (size!34234 Int) (originalCharacters!8233 List!46838)) )
))
(declare-datatypes ((tuple2!44328 0))(
  ( (tuple2!44329 (_1!25298 Token!14404) (_2!25298 List!46838)) )
))
(declare-datatypes ((Option!10033 0))(
  ( (None!10032) (Some!10032 (v!40960 tuple2!44328)) )
))
(declare-fun maxPrefixOneRule!3427 (LexerInterface!7482 Rule!15574 List!46838) Option!10033)

(assert (=> b!4231005 (= res!1739970 (= (maxPrefixOneRule!3427 thiss!26814 r!4353 input!3600) None!10032))))

(declare-fun b!4231006 () Bool)

(declare-fun validRegex!5808 (Regex!12792) Bool)

(assert (=> b!4231006 (= e!2627180 (not (validRegex!5808 (regex!7887 r!4353))))))

(declare-fun b!4231007 () Bool)

(declare-fun res!1739972 () Bool)

(assert (=> b!4231007 (=> (not res!1739972) (not e!2627180))))

(declare-fun p!3018 () List!46838)

(declare-fun isPrefix!4702 (List!46838 List!46838) Bool)

(assert (=> b!4231007 (= res!1739972 (isPrefix!4702 p!3018 input!3600))))

(declare-fun b!4231008 () Bool)

(declare-fun tp!1296023 () Bool)

(assert (=> b!4231008 (= e!2627181 (and tp_is_empty!22519 tp!1296023))))

(declare-fun tp!1296022 () Bool)

(declare-fun b!4231009 () Bool)

(declare-fun inv!61414 (String!54461) Bool)

(declare-fun inv!61417 (TokenValueInjection!15662) Bool)

(assert (=> b!4231009 (= e!2627177 (and tp!1296022 (inv!61414 (tag!8751 r!4353)) (inv!61417 (transformation!7887 r!4353)) e!2627179))))

(declare-fun b!4231010 () Bool)

(declare-fun res!1739969 () Bool)

(assert (=> b!4231010 (=> (not res!1739969) (not e!2627180))))

(declare-fun ruleValid!3583 (LexerInterface!7482 Rule!15574) Bool)

(assert (=> b!4231010 (= res!1739969 (ruleValid!3583 thiss!26814 r!4353))))

(assert (= (and start!404648 res!1739971) b!4231007))

(assert (= (and b!4231007 res!1739972) b!4231010))

(assert (= (and b!4231010 res!1739969) b!4231005))

(assert (= (and b!4231005 res!1739970) b!4231006))

(assert (= (and start!404648 (is-Cons!46714 p!3018)) b!4231003))

(assert (= (and start!404648 (is-Cons!46714 input!3600)) b!4231008))

(assert (= b!4231009 b!4231004))

(assert (= start!404648 b!4231009))

(declare-fun m!4817571 () Bool)

(assert (=> b!4231009 m!4817571))

(declare-fun m!4817573 () Bool)

(assert (=> b!4231009 m!4817573))

(declare-fun m!4817575 () Bool)

(assert (=> b!4231006 m!4817575))

(declare-fun m!4817577 () Bool)

(assert (=> b!4231010 m!4817577))

(declare-fun m!4817579 () Bool)

(assert (=> b!4231007 m!4817579))

(declare-fun m!4817581 () Bool)

(assert (=> b!4231005 m!4817581))

(push 1)

(assert (not b!4231006))

(assert (not b_next!125675))

(assert (not b_next!125677))

(assert (not b!4231007))

(assert b_and!334283)

(assert (not b!4231005))

(assert b_and!334281)

(assert (not b!4231003))

(assert (not b!4231009))

(assert (not b!4231010))

(assert tp_is_empty!22519)

(assert (not b!4231008))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334281)

(assert b_and!334283)

(assert (not b_next!125677))

(assert (not b_next!125675))

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!293430 () Bool)

(declare-fun call!293436 () Bool)

(declare-fun c!719161 () Bool)

(assert (=> bm!293430 (= call!293436 (validRegex!5808 (ite c!719161 (regOne!26097 (regex!7887 r!4353)) (regTwo!26096 (regex!7887 r!4353)))))))

(declare-fun d!1245109 () Bool)

(declare-fun res!1740003 () Bool)

(declare-fun e!2627218 () Bool)

(assert (=> d!1245109 (=> res!1740003 e!2627218)))

(assert (=> d!1245109 (= res!1740003 (is-ElementMatch!12792 (regex!7887 r!4353)))))

(assert (=> d!1245109 (= (validRegex!5808 (regex!7887 r!4353)) e!2627218)))

(declare-fun bm!293431 () Bool)

(declare-fun call!293437 () Bool)

(declare-fun call!293435 () Bool)

(assert (=> bm!293431 (= call!293437 call!293435)))

(declare-fun b!4231053 () Bool)

(declare-fun e!2627219 () Bool)

(assert (=> b!4231053 (= e!2627219 call!293436)))

(declare-fun b!4231054 () Bool)

(declare-fun e!2627216 () Bool)

(assert (=> b!4231054 (= e!2627216 e!2627219)))

(declare-fun res!1740002 () Bool)

(assert (=> b!4231054 (=> (not res!1740002) (not e!2627219))))

(assert (=> b!4231054 (= res!1740002 call!293437)))

(declare-fun b!4231055 () Bool)

(declare-fun e!2627221 () Bool)

(assert (=> b!4231055 (= e!2627218 e!2627221)))

(declare-fun c!719160 () Bool)

(assert (=> b!4231055 (= c!719160 (is-Star!12792 (regex!7887 r!4353)))))

(declare-fun b!4231056 () Bool)

(declare-fun e!2627220 () Bool)

(assert (=> b!4231056 (= e!2627220 call!293437)))

(declare-fun b!4231057 () Bool)

(declare-fun e!2627217 () Bool)

(assert (=> b!4231057 (= e!2627221 e!2627217)))

(assert (=> b!4231057 (= c!719161 (is-Union!12792 (regex!7887 r!4353)))))

(declare-fun b!4231058 () Bool)

(declare-fun res!1740000 () Bool)

(assert (=> b!4231058 (=> (not res!1740000) (not e!2627220))))

(assert (=> b!4231058 (= res!1740000 call!293436)))

(assert (=> b!4231058 (= e!2627217 e!2627220)))

(declare-fun b!4231059 () Bool)

(declare-fun e!2627215 () Bool)

(assert (=> b!4231059 (= e!2627215 call!293435)))

(declare-fun b!4231060 () Bool)

(declare-fun res!1739999 () Bool)

(assert (=> b!4231060 (=> res!1739999 e!2627216)))

(assert (=> b!4231060 (= res!1739999 (not (is-Concat!20910 (regex!7887 r!4353))))))

(assert (=> b!4231060 (= e!2627217 e!2627216)))

(declare-fun bm!293432 () Bool)

(assert (=> bm!293432 (= call!293435 (validRegex!5808 (ite c!719160 (reg!13121 (regex!7887 r!4353)) (ite c!719161 (regTwo!26097 (regex!7887 r!4353)) (regOne!26096 (regex!7887 r!4353))))))))

(declare-fun b!4231061 () Bool)

(assert (=> b!4231061 (= e!2627221 e!2627215)))

(declare-fun res!1740001 () Bool)

(declare-fun nullable!4503 (Regex!12792) Bool)

(assert (=> b!4231061 (= res!1740001 (not (nullable!4503 (reg!13121 (regex!7887 r!4353)))))))

(assert (=> b!4231061 (=> (not res!1740001) (not e!2627215))))

(assert (= (and d!1245109 (not res!1740003)) b!4231055))

(assert (= (and b!4231055 c!719160) b!4231061))

(assert (= (and b!4231055 (not c!719160)) b!4231057))

(assert (= (and b!4231061 res!1740001) b!4231059))

(assert (= (and b!4231057 c!719161) b!4231058))

(assert (= (and b!4231057 (not c!719161)) b!4231060))

(assert (= (and b!4231058 res!1740000) b!4231056))

(assert (= (and b!4231060 (not res!1739999)) b!4231054))

(assert (= (and b!4231054 res!1740002) b!4231053))

(assert (= (or b!4231056 b!4231054) bm!293431))

(assert (= (or b!4231058 b!4231053) bm!293430))

(assert (= (or b!4231059 bm!293431) bm!293432))

(declare-fun m!4817595 () Bool)

(assert (=> bm!293430 m!4817595))

(declare-fun m!4817597 () Bool)

(assert (=> bm!293432 m!4817597))

(declare-fun m!4817599 () Bool)

(assert (=> b!4231061 m!4817599))

(assert (=> b!4231006 d!1245109))

(declare-fun b!4231071 () Bool)

(declare-fun res!1740013 () Bool)

(declare-fun e!2627228 () Bool)

(assert (=> b!4231071 (=> (not res!1740013) (not e!2627228))))

(declare-fun head!8967 (List!46838) C!25782)

(assert (=> b!4231071 (= res!1740013 (= (head!8967 p!3018) (head!8967 input!3600)))))

(declare-fun b!4231070 () Bool)

(declare-fun e!2627229 () Bool)

(assert (=> b!4231070 (= e!2627229 e!2627228)))

(declare-fun res!1740014 () Bool)

(assert (=> b!4231070 (=> (not res!1740014) (not e!2627228))))

(assert (=> b!4231070 (= res!1740014 (not (is-Nil!46714 input!3600)))))

(declare-fun b!4231072 () Bool)

(declare-fun tail!6814 (List!46838) List!46838)

(assert (=> b!4231072 (= e!2627228 (isPrefix!4702 (tail!6814 p!3018) (tail!6814 input!3600)))))

(declare-fun d!1245113 () Bool)

(declare-fun e!2627230 () Bool)

(assert (=> d!1245113 e!2627230))

(declare-fun res!1740012 () Bool)

(assert (=> d!1245113 (=> res!1740012 e!2627230)))

(declare-fun lt!1504157 () Bool)

(assert (=> d!1245113 (= res!1740012 (not lt!1504157))))

(assert (=> d!1245113 (= lt!1504157 e!2627229)))

(declare-fun res!1740015 () Bool)

(assert (=> d!1245113 (=> res!1740015 e!2627229)))

(assert (=> d!1245113 (= res!1740015 (is-Nil!46714 p!3018))))

(assert (=> d!1245113 (= (isPrefix!4702 p!3018 input!3600) lt!1504157)))

(declare-fun b!4231073 () Bool)

(declare-fun size!34236 (List!46838) Int)

(assert (=> b!4231073 (= e!2627230 (>= (size!34236 input!3600) (size!34236 p!3018)))))

(assert (= (and d!1245113 (not res!1740015)) b!4231070))

(assert (= (and b!4231070 res!1740014) b!4231071))

(assert (= (and b!4231071 res!1740013) b!4231072))

(assert (= (and d!1245113 (not res!1740012)) b!4231073))

(declare-fun m!4817601 () Bool)

(assert (=> b!4231071 m!4817601))

(declare-fun m!4817603 () Bool)

(assert (=> b!4231071 m!4817603))

(declare-fun m!4817605 () Bool)

(assert (=> b!4231072 m!4817605))

(declare-fun m!4817607 () Bool)

(assert (=> b!4231072 m!4817607))

(assert (=> b!4231072 m!4817605))

(assert (=> b!4231072 m!4817607))

(declare-fun m!4817609 () Bool)

(assert (=> b!4231072 m!4817609))

(declare-fun m!4817611 () Bool)

(assert (=> b!4231073 m!4817611))

(declare-fun m!4817613 () Bool)

(assert (=> b!4231073 m!4817613))

(assert (=> b!4231007 d!1245113))

(declare-fun b!4231092 () Bool)

(declare-fun e!2627239 () Option!10033)

(assert (=> b!4231092 (= e!2627239 None!10032)))

(declare-fun b!4231093 () Bool)

(declare-fun e!2627240 () Bool)

(declare-fun matchR!6427 (Regex!12792 List!46838) Bool)

(declare-datatypes ((tuple2!44332 0))(
  ( (tuple2!44333 (_1!25300 List!46838) (_2!25300 List!46838)) )
))
(declare-fun findLongestMatchInner!1692 (Regex!12792 List!46838 Int List!46838 List!46838 Int) tuple2!44332)

(assert (=> b!4231093 (= e!2627240 (matchR!6427 (regex!7887 r!4353) (_1!25300 (findLongestMatchInner!1692 (regex!7887 r!4353) Nil!46714 (size!34236 Nil!46714) input!3600 input!3600 (size!34236 input!3600)))))))

(declare-fun b!4231094 () Bool)

(declare-fun res!1740031 () Bool)

(declare-fun e!2627242 () Bool)

(assert (=> b!4231094 (=> (not res!1740031) (not e!2627242))))

(declare-fun lt!1504168 () Option!10033)

(declare-fun get!15192 (Option!10033) tuple2!44328)

(assert (=> b!4231094 (= res!1740031 (< (size!34236 (_2!25298 (get!15192 lt!1504168))) (size!34236 input!3600)))))

(declare-fun b!4231095 () Bool)

(declare-fun lt!1504169 () tuple2!44332)

(declare-fun apply!10732 (TokenValueInjection!15662 BalanceConc!27790) TokenValue!8117)

(declare-fun seqFromList!5792 (List!46838) BalanceConc!27790)

(declare-fun size!34237 (BalanceConc!27790) Int)

(assert (=> b!4231095 (= e!2627239 (Some!10032 (tuple2!44329 (Token!14405 (apply!10732 (transformation!7887 r!4353) (seqFromList!5792 (_1!25300 lt!1504169))) r!4353 (size!34237 (seqFromList!5792 (_1!25300 lt!1504169))) (_1!25300 lt!1504169)) (_2!25300 lt!1504169))))))

(declare-datatypes ((Unit!65843 0))(
  ( (Unit!65844) )
))
(declare-fun lt!1504171 () Unit!65843)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1655 (Regex!12792 List!46838) Unit!65843)

(assert (=> b!4231095 (= lt!1504171 (longestMatchIsAcceptedByMatchOrIsEmpty!1655 (regex!7887 r!4353) input!3600))))

(declare-fun res!1740030 () Bool)

(declare-fun isEmpty!27610 (List!46838) Bool)

(assert (=> b!4231095 (= res!1740030 (isEmpty!27610 (_1!25300 (findLongestMatchInner!1692 (regex!7887 r!4353) Nil!46714 (size!34236 Nil!46714) input!3600 input!3600 (size!34236 input!3600)))))))

(assert (=> b!4231095 (=> res!1740030 e!2627240)))

(assert (=> b!4231095 e!2627240))

(declare-fun lt!1504170 () Unit!65843)

(assert (=> b!4231095 (= lt!1504170 lt!1504171)))

(declare-fun lt!1504172 () Unit!65843)

(declare-fun lemmaSemiInverse!2523 (TokenValueInjection!15662 BalanceConc!27790) Unit!65843)

(assert (=> b!4231095 (= lt!1504172 (lemmaSemiInverse!2523 (transformation!7887 r!4353) (seqFromList!5792 (_1!25300 lt!1504169))))))

(declare-fun b!4231096 () Bool)

(declare-fun res!1740036 () Bool)

(assert (=> b!4231096 (=> (not res!1740036) (not e!2627242))))

(assert (=> b!4231096 (= res!1740036 (= (value!245277 (_1!25298 (get!15192 lt!1504168))) (apply!10732 (transformation!7887 (rule!11003 (_1!25298 (get!15192 lt!1504168)))) (seqFromList!5792 (originalCharacters!8233 (_1!25298 (get!15192 lt!1504168)))))))))

(declare-fun b!4231097 () Bool)

(declare-fun e!2627241 () Bool)

(assert (=> b!4231097 (= e!2627241 e!2627242)))

(declare-fun res!1740033 () Bool)

(assert (=> b!4231097 (=> (not res!1740033) (not e!2627242))))

(declare-fun list!16865 (BalanceConc!27790) List!46838)

(declare-fun charsOf!5256 (Token!14404) BalanceConc!27790)

(assert (=> b!4231097 (= res!1740033 (matchR!6427 (regex!7887 r!4353) (list!16865 (charsOf!5256 (_1!25298 (get!15192 lt!1504168))))))))

(declare-fun b!4231098 () Bool)

(declare-fun res!1740034 () Bool)

(assert (=> b!4231098 (=> (not res!1740034) (not e!2627242))))

(declare-fun ++!11911 (List!46838 List!46838) List!46838)

(assert (=> b!4231098 (= res!1740034 (= (++!11911 (list!16865 (charsOf!5256 (_1!25298 (get!15192 lt!1504168)))) (_2!25298 (get!15192 lt!1504168))) input!3600))))

(declare-fun d!1245115 () Bool)

(assert (=> d!1245115 e!2627241))

(declare-fun res!1740035 () Bool)

(assert (=> d!1245115 (=> res!1740035 e!2627241)))

(declare-fun isEmpty!27611 (Option!10033) Bool)

(assert (=> d!1245115 (= res!1740035 (isEmpty!27611 lt!1504168))))

(assert (=> d!1245115 (= lt!1504168 e!2627239)))

(declare-fun c!719166 () Bool)

(assert (=> d!1245115 (= c!719166 (isEmpty!27610 (_1!25300 lt!1504169)))))

(declare-fun findLongestMatch!1595 (Regex!12792 List!46838) tuple2!44332)

(assert (=> d!1245115 (= lt!1504169 (findLongestMatch!1595 (regex!7887 r!4353) input!3600))))

(assert (=> d!1245115 (ruleValid!3583 thiss!26814 r!4353)))

(assert (=> d!1245115 (= (maxPrefixOneRule!3427 thiss!26814 r!4353 input!3600) lt!1504168)))

(declare-fun b!4231099 () Bool)

(assert (=> b!4231099 (= e!2627242 (= (size!34234 (_1!25298 (get!15192 lt!1504168))) (size!34236 (originalCharacters!8233 (_1!25298 (get!15192 lt!1504168))))))))

(declare-fun b!4231100 () Bool)

(declare-fun res!1740032 () Bool)

(assert (=> b!4231100 (=> (not res!1740032) (not e!2627242))))

(assert (=> b!4231100 (= res!1740032 (= (rule!11003 (_1!25298 (get!15192 lt!1504168))) r!4353))))

(assert (= (and d!1245115 c!719166) b!4231092))

(assert (= (and d!1245115 (not c!719166)) b!4231095))

(assert (= (and b!4231095 (not res!1740030)) b!4231093))

(assert (= (and d!1245115 (not res!1740035)) b!4231097))

(assert (= (and b!4231097 res!1740033) b!4231098))

(assert (= (and b!4231098 res!1740034) b!4231094))

(assert (= (and b!4231094 res!1740031) b!4231100))

(assert (= (and b!4231100 res!1740032) b!4231096))

(assert (= (and b!4231096 res!1740036) b!4231099))

(declare-fun m!4817615 () Bool)

(assert (=> b!4231098 m!4817615))

(declare-fun m!4817617 () Bool)

(assert (=> b!4231098 m!4817617))

(assert (=> b!4231098 m!4817617))

(declare-fun m!4817619 () Bool)

(assert (=> b!4231098 m!4817619))

(assert (=> b!4231098 m!4817619))

(declare-fun m!4817621 () Bool)

(assert (=> b!4231098 m!4817621))

(assert (=> b!4231100 m!4817615))

(assert (=> b!4231099 m!4817615))

(declare-fun m!4817623 () Bool)

(assert (=> b!4231099 m!4817623))

(assert (=> b!4231097 m!4817615))

(assert (=> b!4231097 m!4817617))

(assert (=> b!4231097 m!4817617))

(assert (=> b!4231097 m!4817619))

(assert (=> b!4231097 m!4817619))

(declare-fun m!4817625 () Bool)

(assert (=> b!4231097 m!4817625))

(declare-fun m!4817627 () Bool)

(assert (=> b!4231093 m!4817627))

(assert (=> b!4231093 m!4817611))

(assert (=> b!4231093 m!4817627))

(assert (=> b!4231093 m!4817611))

(declare-fun m!4817629 () Bool)

(assert (=> b!4231093 m!4817629))

(declare-fun m!4817631 () Bool)

(assert (=> b!4231093 m!4817631))

(declare-fun m!4817633 () Bool)

(assert (=> b!4231095 m!4817633))

(assert (=> b!4231095 m!4817633))

(declare-fun m!4817635 () Bool)

(assert (=> b!4231095 m!4817635))

(assert (=> b!4231095 m!4817633))

(declare-fun m!4817637 () Bool)

(assert (=> b!4231095 m!4817637))

(assert (=> b!4231095 m!4817611))

(assert (=> b!4231095 m!4817627))

(assert (=> b!4231095 m!4817611))

(assert (=> b!4231095 m!4817629))

(declare-fun m!4817639 () Bool)

(assert (=> b!4231095 m!4817639))

(assert (=> b!4231095 m!4817633))

(declare-fun m!4817641 () Bool)

(assert (=> b!4231095 m!4817641))

(declare-fun m!4817643 () Bool)

(assert (=> b!4231095 m!4817643))

(assert (=> b!4231095 m!4817627))

(assert (=> b!4231096 m!4817615))

(declare-fun m!4817645 () Bool)

(assert (=> b!4231096 m!4817645))

(assert (=> b!4231096 m!4817645))

(declare-fun m!4817647 () Bool)

(assert (=> b!4231096 m!4817647))

(assert (=> b!4231094 m!4817615))

(declare-fun m!4817649 () Bool)

(assert (=> b!4231094 m!4817649))

(assert (=> b!4231094 m!4817611))

(declare-fun m!4817651 () Bool)

(assert (=> d!1245115 m!4817651))

(declare-fun m!4817653 () Bool)

(assert (=> d!1245115 m!4817653))

(declare-fun m!4817655 () Bool)

(assert (=> d!1245115 m!4817655))

(assert (=> d!1245115 m!4817577))

(assert (=> b!4231005 d!1245115))

(declare-fun d!1245117 () Bool)

(declare-fun res!1740041 () Bool)

(declare-fun e!2627245 () Bool)

(assert (=> d!1245117 (=> (not res!1740041) (not e!2627245))))

(assert (=> d!1245117 (= res!1740041 (validRegex!5808 (regex!7887 r!4353)))))

(assert (=> d!1245117 (= (ruleValid!3583 thiss!26814 r!4353) e!2627245)))

(declare-fun b!4231105 () Bool)

(declare-fun res!1740042 () Bool)

(assert (=> b!4231105 (=> (not res!1740042) (not e!2627245))))

(assert (=> b!4231105 (= res!1740042 (not (nullable!4503 (regex!7887 r!4353))))))

(declare-fun b!4231106 () Bool)

(assert (=> b!4231106 (= e!2627245 (not (= (tag!8751 r!4353) (String!54462 ""))))))

(assert (= (and d!1245117 res!1740041) b!4231105))

(assert (= (and b!4231105 res!1740042) b!4231106))

(assert (=> d!1245117 m!4817575))

(declare-fun m!4817657 () Bool)

(assert (=> b!4231105 m!4817657))

(assert (=> b!4231010 d!1245117))

(declare-fun d!1245119 () Bool)

(assert (=> d!1245119 (= (inv!61414 (tag!8751 r!4353)) (= (mod (str.len (value!245276 (tag!8751 r!4353))) 2) 0))))

(assert (=> b!4231009 d!1245119))

(declare-fun d!1245121 () Bool)

(declare-fun res!1740059 () Bool)

(declare-fun e!2627256 () Bool)

(assert (=> d!1245121 (=> (not res!1740059) (not e!2627256))))

(declare-fun semiInverseModEq!3428 (Int Int) Bool)

(assert (=> d!1245121 (= res!1740059 (semiInverseModEq!3428 (toChars!10478 (transformation!7887 r!4353)) (toValue!10619 (transformation!7887 r!4353))))))

(assert (=> d!1245121 (= (inv!61417 (transformation!7887 r!4353)) e!2627256)))

(declare-fun b!4231127 () Bool)

(declare-fun equivClasses!3327 (Int Int) Bool)

(assert (=> b!4231127 (= e!2627256 (equivClasses!3327 (toChars!10478 (transformation!7887 r!4353)) (toValue!10619 (transformation!7887 r!4353))))))

(assert (= (and d!1245121 res!1740059) b!4231127))

(declare-fun m!4817659 () Bool)

(assert (=> d!1245121 m!4817659))

(declare-fun m!4817661 () Bool)

(assert (=> b!4231127 m!4817661))

(assert (=> b!4231009 d!1245121))

(declare-fun b!4231141 () Bool)

(declare-fun e!2627259 () Bool)

(declare-fun tp!1296052 () Bool)

(declare-fun tp!1296054 () Bool)

(assert (=> b!4231141 (= e!2627259 (and tp!1296052 tp!1296054))))

(assert (=> b!4231009 (= tp!1296022 e!2627259)))

(declare-fun b!4231138 () Bool)

(assert (=> b!4231138 (= e!2627259 tp_is_empty!22519)))

(declare-fun b!4231139 () Bool)

(declare-fun tp!1296055 () Bool)

(declare-fun tp!1296051 () Bool)

(assert (=> b!4231139 (= e!2627259 (and tp!1296055 tp!1296051))))

(declare-fun b!4231140 () Bool)

(declare-fun tp!1296053 () Bool)

(assert (=> b!4231140 (= e!2627259 tp!1296053)))

(assert (= (and b!4231009 (is-ElementMatch!12792 (regex!7887 r!4353))) b!4231138))

(assert (= (and b!4231009 (is-Concat!20910 (regex!7887 r!4353))) b!4231139))

(assert (= (and b!4231009 (is-Star!12792 (regex!7887 r!4353))) b!4231140))

(assert (= (and b!4231009 (is-Union!12792 (regex!7887 r!4353))) b!4231141))

(declare-fun b!4231146 () Bool)

(declare-fun e!2627262 () Bool)

(declare-fun tp!1296058 () Bool)

(assert (=> b!4231146 (= e!2627262 (and tp_is_empty!22519 tp!1296058))))

(assert (=> b!4231003 (= tp!1296024 e!2627262)))

(assert (= (and b!4231003 (is-Cons!46714 (t!349509 p!3018))) b!4231146))

(declare-fun b!4231147 () Bool)

(declare-fun e!2627263 () Bool)

(declare-fun tp!1296059 () Bool)

(assert (=> b!4231147 (= e!2627263 (and tp_is_empty!22519 tp!1296059))))

(assert (=> b!4231008 (= tp!1296023 e!2627263)))

(assert (= (and b!4231008 (is-Cons!46714 (t!349509 input!3600))) b!4231147))

(push 1)

(assert (not b_next!125675))

(assert (not b_next!125677))

(assert (not b!4231095))

(assert b_and!334283)

(assert (not b!4231073))

(assert (not b!4231141))

(assert b_and!334281)

(assert (not b!4231140))

(assert (not b!4231097))

(assert tp_is_empty!22519)

(assert (not b!4231098))

(assert (not b!4231099))

(assert (not b!4231072))

(assert (not b!4231093))

(assert (not b!4231147))

(assert (not b!4231071))

(assert (not b!4231061))

(assert (not b!4231127))

(assert (not d!1245121))

(assert (not b!4231100))

(assert (not b!4231094))

(assert (not b!4231096))

(assert (not b!4231146))

(assert (not bm!293432))

(assert (not bm!293430))

(assert (not b!4231139))

(assert (not d!1245117))

(assert (not b!4231105))

(assert (not d!1245115))

(check-sat)

(pop 1)

(push 1)

(assert b_and!334281)

(assert b_and!334283)

(assert (not b_next!125677))

(assert (not b_next!125675))

(check-sat)

(pop 1)

