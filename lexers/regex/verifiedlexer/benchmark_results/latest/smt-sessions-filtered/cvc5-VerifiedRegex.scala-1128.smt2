; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!58906 () Bool)

(assert start!58906)

(declare-fun b!615433 () Bool)

(declare-fun b_free!17589 () Bool)

(declare-fun b_next!17605 () Bool)

(assert (=> b!615433 (= b_free!17589 (not b_next!17605))))

(declare-fun tp!190131 () Bool)

(declare-fun b_and!61055 () Bool)

(assert (=> b!615433 (= tp!190131 b_and!61055)))

(declare-fun b_free!17591 () Bool)

(declare-fun b_next!17607 () Bool)

(assert (=> b!615433 (= b_free!17591 (not b_next!17607))))

(declare-fun tp!190129 () Bool)

(declare-fun b_and!61057 () Bool)

(assert (=> b!615433 (= tp!190129 b_and!61057)))

(declare-fun b!615438 () Bool)

(declare-fun b_free!17593 () Bool)

(declare-fun b_next!17609 () Bool)

(assert (=> b!615438 (= b_free!17593 (not b_next!17609))))

(declare-fun tp!190136 () Bool)

(declare-fun b_and!61059 () Bool)

(assert (=> b!615438 (= tp!190136 b_and!61059)))

(declare-fun b_free!17595 () Bool)

(declare-fun b_next!17611 () Bool)

(assert (=> b!615438 (= b_free!17595 (not b_next!17611))))

(declare-fun tp!190133 () Bool)

(declare-fun b_and!61061 () Bool)

(assert (=> b!615438 (= tp!190133 b_and!61061)))

(declare-fun b!615424 () Bool)

(declare-fun e!373154 () Bool)

(declare-fun e!373152 () Bool)

(declare-fun tp!190134 () Bool)

(assert (=> b!615424 (= e!373154 (and e!373152 tp!190134))))

(declare-fun b!615425 () Bool)

(declare-fun res!267842 () Bool)

(declare-fun e!373151 () Bool)

(assert (=> b!615425 (=> (not res!267842) (not e!373151))))

(declare-datatypes ((String!8075 0))(
  ( (String!8076 (value!40239 String)) )
))
(declare-datatypes ((C!4074 0))(
  ( (C!4075 (val!2263 Int)) )
))
(declare-datatypes ((Regex!1576 0))(
  ( (ElementMatch!1576 (c!113632 C!4074)) (Concat!2842 (regOne!3664 Regex!1576) (regTwo!3664 Regex!1576)) (EmptyExpr!1576) (Star!1576 (reg!1905 Regex!1576)) (EmptyLang!1576) (Union!1576 (regOne!3665 Regex!1576) (regTwo!3665 Regex!1576)) )
))
(declare-datatypes ((List!6180 0))(
  ( (Nil!6170) (Cons!6170 (h!11571 (_ BitVec 16)) (t!81383 List!6180)) )
))
(declare-datatypes ((TokenValue!1266 0))(
  ( (FloatLiteralValue!2532 (text!9307 List!6180)) (TokenValueExt!1265 (__x!4430 Int)) (Broken!6330 (value!40240 List!6180)) (Object!1275) (End!1266) (Def!1266) (Underscore!1266) (Match!1266) (Else!1266) (Error!1266) (Case!1266) (If!1266) (Extends!1266) (Abstract!1266) (Class!1266) (Val!1266) (DelimiterValue!2532 (del!1326 List!6180)) (KeywordValue!1272 (value!40241 List!6180)) (CommentValue!2532 (value!40242 List!6180)) (WhitespaceValue!2532 (value!40243 List!6180)) (IndentationValue!1266 (value!40244 List!6180)) (String!8077) (Int32!1266) (Broken!6331 (value!40245 List!6180)) (Boolean!1267) (Unit!11344) (OperatorValue!1269 (op!1326 List!6180)) (IdentifierValue!2532 (value!40246 List!6180)) (IdentifierValue!2533 (value!40247 List!6180)) (WhitespaceValue!2533 (value!40248 List!6180)) (True!2532) (False!2532) (Broken!6332 (value!40249 List!6180)) (Broken!6333 (value!40250 List!6180)) (True!2533) (RightBrace!1266) (RightBracket!1266) (Colon!1266) (Null!1266) (Comma!1266) (LeftBracket!1266) (False!2533) (LeftBrace!1266) (ImaginaryLiteralValue!1266 (text!9308 List!6180)) (StringLiteralValue!3798 (value!40251 List!6180)) (EOFValue!1266 (value!40252 List!6180)) (IdentValue!1266 (value!40253 List!6180)) (DelimiterValue!2533 (value!40254 List!6180)) (DedentValue!1266 (value!40255 List!6180)) (NewLineValue!1266 (value!40256 List!6180)) (IntegerValue!3798 (value!40257 (_ BitVec 32)) (text!9309 List!6180)) (IntegerValue!3799 (value!40258 Int) (text!9310 List!6180)) (Times!1266) (Or!1266) (Equal!1266) (Minus!1266) (Broken!6334 (value!40259 List!6180)) (And!1266) (Div!1266) (LessEqual!1266) (Mod!1266) (Concat!2843) (Not!1266) (Plus!1266) (SpaceValue!1266 (value!40260 List!6180)) (IntegerValue!3800 (value!40261 Int) (text!9311 List!6180)) (StringLiteralValue!3799 (text!9312 List!6180)) (FloatLiteralValue!2533 (text!9313 List!6180)) (BytesLiteralValue!1266 (value!40262 List!6180)) (CommentValue!2533 (value!40263 List!6180)) (StringLiteralValue!3800 (value!40264 List!6180)) (ErrorTokenValue!1266 (msg!1327 List!6180)) )
))
(declare-datatypes ((List!6181 0))(
  ( (Nil!6171) (Cons!6171 (h!11572 C!4074) (t!81384 List!6181)) )
))
(declare-datatypes ((IArray!3919 0))(
  ( (IArray!3920 (innerList!2017 List!6181)) )
))
(declare-datatypes ((Conc!1959 0))(
  ( (Node!1959 (left!4929 Conc!1959) (right!5259 Conc!1959) (csize!4148 Int) (cheight!2170 Int)) (Leaf!3088 (xs!4596 IArray!3919) (csize!4149 Int)) (Empty!1959) )
))
(declare-datatypes ((BalanceConc!3926 0))(
  ( (BalanceConc!3927 (c!113633 Conc!1959)) )
))
(declare-datatypes ((TokenValueInjection!2300 0))(
  ( (TokenValueInjection!2301 (toValue!2153 Int) (toChars!2012 Int)) )
))
(declare-datatypes ((Rule!2284 0))(
  ( (Rule!2285 (regex!1242 Regex!1576) (tag!1504 String!8075) (isSeparator!1242 Bool) (transformation!1242 TokenValueInjection!2300)) )
))
(declare-datatypes ((List!6182 0))(
  ( (Nil!6172) (Cons!6172 (h!11573 Rule!2284) (t!81385 List!6182)) )
))
(declare-fun rules!3103 () List!6182)

(declare-datatypes ((LexerInterface!1128 0))(
  ( (LexerInterfaceExt!1125 (__x!4431 Int)) (Lexer!1126) )
))
(declare-fun thiss!22590 () LexerInterface!1128)

(declare-fun input!2705 () List!6181)

(declare-datatypes ((Token!2220 0))(
  ( (Token!2221 (value!40265 TokenValue!1266) (rule!2036 Rule!2284) (size!4845 Int) (originalCharacters!1281 List!6181)) )
))
(declare-datatypes ((tuple2!7024 0))(
  ( (tuple2!7025 (_1!3776 Token!2220) (_2!3776 List!6181)) )
))
(declare-datatypes ((Option!1593 0))(
  ( (None!1592) (Some!1592 (v!16505 tuple2!7024)) )
))
(declare-fun maxPrefix!826 (LexerInterface!1128 List!6182 List!6181) Option!1593)

(assert (=> b!615425 (= res!267842 (not (is-Some!1592 (maxPrefix!826 thiss!22590 rules!3103 input!2705))))))

(declare-fun b!615426 () Bool)

(declare-fun res!267836 () Bool)

(assert (=> b!615426 (=> (not res!267836) (not e!373151))))

(declare-fun isPrefix!870 (List!6181 List!6181) Bool)

(assert (=> b!615426 (= res!267836 (isPrefix!870 input!2705 input!2705))))

(declare-fun b!615427 () Bool)

(declare-fun e!373149 () Bool)

(declare-fun tp_is_empty!3507 () Bool)

(declare-fun tp!190130 () Bool)

(assert (=> b!615427 (= e!373149 (and tp_is_empty!3507 tp!190130))))

(declare-fun b!615428 () Bool)

(declare-fun res!267841 () Bool)

(declare-fun e!373153 () Bool)

(assert (=> b!615428 (=> (not res!267841) (not e!373153))))

(declare-fun isEmpty!4453 (List!6181) Bool)

(assert (=> b!615428 (= res!267841 (not (isEmpty!4453 input!2705)))))

(declare-fun tp!190137 () Bool)

(declare-fun e!373150 () Bool)

(declare-fun token!491 () Token!2220)

(declare-fun b!615429 () Bool)

(declare-fun e!373147 () Bool)

(declare-fun inv!21 (TokenValue!1266) Bool)

(assert (=> b!615429 (= e!373147 (and (inv!21 (value!40265 token!491)) e!373150 tp!190137))))

(declare-fun b!615430 () Bool)

(declare-fun e!373146 () Bool)

(declare-fun tp!190138 () Bool)

(assert (=> b!615430 (= e!373146 (and tp_is_empty!3507 tp!190138))))

(declare-fun b!615431 () Bool)

(declare-fun tp!190132 () Bool)

(declare-fun e!373143 () Bool)

(declare-fun inv!7854 (String!8075) Bool)

(declare-fun inv!7857 (TokenValueInjection!2300) Bool)

(assert (=> b!615431 (= e!373152 (and tp!190132 (inv!7854 (tag!1504 (h!11573 rules!3103))) (inv!7857 (transformation!1242 (h!11573 rules!3103))) e!373143))))

(declare-fun b!615432 () Bool)

(declare-fun res!267839 () Bool)

(assert (=> b!615432 (=> (not res!267839) (not e!373153))))

(declare-fun list!2597 (BalanceConc!3926) List!6181)

(declare-fun charsOf!871 (Token!2220) BalanceConc!3926)

(assert (=> b!615432 (= res!267839 (= (list!2597 (charsOf!871 token!491)) input!2705))))

(declare-fun e!373145 () Bool)

(assert (=> b!615433 (= e!373145 (and tp!190131 tp!190129))))

(declare-fun res!267840 () Bool)

(assert (=> start!58906 (=> (not res!267840) (not e!373153))))

(assert (=> start!58906 (= res!267840 (is-Lexer!1126 thiss!22590))))

(assert (=> start!58906 e!373153))

(assert (=> start!58906 e!373146))

(assert (=> start!58906 e!373154))

(declare-fun inv!7858 (Token!2220) Bool)

(assert (=> start!58906 (and (inv!7858 token!491) e!373147)))

(assert (=> start!58906 true))

(assert (=> start!58906 e!373149))

(declare-fun b!615434 () Bool)

(declare-fun res!267843 () Bool)

(assert (=> b!615434 (=> (not res!267843) (not e!373153))))

(declare-fun rulesInvariant!1091 (LexerInterface!1128 List!6182) Bool)

(assert (=> b!615434 (= res!267843 (rulesInvariant!1091 thiss!22590 rules!3103))))

(declare-fun b!615435 () Bool)

(declare-fun res!267837 () Bool)

(assert (=> b!615435 (=> (not res!267837) (not e!373153))))

(declare-fun isEmpty!4454 (List!6182) Bool)

(assert (=> b!615435 (= res!267837 (not (isEmpty!4454 rules!3103)))))

(declare-fun b!615436 () Bool)

(declare-fun contains!1458 (List!6182 Rule!2284) Bool)

(assert (=> b!615436 (= e!373151 (not (contains!1458 rules!3103 (rule!2036 token!491))))))

(declare-fun b!615437 () Bool)

(declare-fun e!373155 () Bool)

(assert (=> b!615437 (= e!373153 e!373155)))

(declare-fun res!267835 () Bool)

(assert (=> b!615437 (=> (not res!267835) (not e!373155))))

(declare-fun lt!264181 () Option!1593)

(declare-fun isDefined!1404 (Option!1593) Bool)

(assert (=> b!615437 (= res!267835 (isDefined!1404 lt!264181))))

(declare-fun suffix!1342 () List!6181)

(declare-fun ++!1730 (List!6181 List!6181) List!6181)

(assert (=> b!615437 (= lt!264181 (maxPrefix!826 thiss!22590 rules!3103 (++!1730 input!2705 suffix!1342)))))

(assert (=> b!615438 (= e!373143 (and tp!190136 tp!190133))))

(declare-fun tp!190135 () Bool)

(declare-fun b!615439 () Bool)

(assert (=> b!615439 (= e!373150 (and tp!190135 (inv!7854 (tag!1504 (rule!2036 token!491))) (inv!7857 (transformation!1242 (rule!2036 token!491))) e!373145))))

(declare-fun b!615440 () Bool)

(assert (=> b!615440 (= e!373155 e!373151)))

(declare-fun res!267838 () Bool)

(assert (=> b!615440 (=> (not res!267838) (not e!373151))))

(declare-fun lt!264182 () tuple2!7024)

(assert (=> b!615440 (= res!267838 (and (= (_1!3776 lt!264182) token!491) (= (_2!3776 lt!264182) suffix!1342)))))

(declare-fun get!2378 (Option!1593) tuple2!7024)

(assert (=> b!615440 (= lt!264182 (get!2378 lt!264181))))

(assert (= (and start!58906 res!267840) b!615435))

(assert (= (and b!615435 res!267837) b!615434))

(assert (= (and b!615434 res!267843) b!615428))

(assert (= (and b!615428 res!267841) b!615432))

(assert (= (and b!615432 res!267839) b!615437))

(assert (= (and b!615437 res!267835) b!615440))

(assert (= (and b!615440 res!267838) b!615425))

(assert (= (and b!615425 res!267842) b!615426))

(assert (= (and b!615426 res!267836) b!615436))

(assert (= (and start!58906 (is-Cons!6171 suffix!1342)) b!615430))

(assert (= b!615431 b!615438))

(assert (= b!615424 b!615431))

(assert (= (and start!58906 (is-Cons!6172 rules!3103)) b!615424))

(assert (= b!615439 b!615433))

(assert (= b!615429 b!615439))

(assert (= start!58906 b!615429))

(assert (= (and start!58906 (is-Cons!6171 input!2705)) b!615427))

(declare-fun m!884221 () Bool)

(assert (=> b!615425 m!884221))

(declare-fun m!884223 () Bool)

(assert (=> start!58906 m!884223))

(declare-fun m!884225 () Bool)

(assert (=> b!615436 m!884225))

(declare-fun m!884227 () Bool)

(assert (=> b!615437 m!884227))

(declare-fun m!884229 () Bool)

(assert (=> b!615437 m!884229))

(assert (=> b!615437 m!884229))

(declare-fun m!884231 () Bool)

(assert (=> b!615437 m!884231))

(declare-fun m!884233 () Bool)

(assert (=> b!615431 m!884233))

(declare-fun m!884235 () Bool)

(assert (=> b!615431 m!884235))

(declare-fun m!884237 () Bool)

(assert (=> b!615439 m!884237))

(declare-fun m!884239 () Bool)

(assert (=> b!615439 m!884239))

(declare-fun m!884241 () Bool)

(assert (=> b!615426 m!884241))

(declare-fun m!884243 () Bool)

(assert (=> b!615434 m!884243))

(declare-fun m!884245 () Bool)

(assert (=> b!615435 m!884245))

(declare-fun m!884247 () Bool)

(assert (=> b!615428 m!884247))

(declare-fun m!884249 () Bool)

(assert (=> b!615432 m!884249))

(assert (=> b!615432 m!884249))

(declare-fun m!884251 () Bool)

(assert (=> b!615432 m!884251))

(declare-fun m!884253 () Bool)

(assert (=> b!615429 m!884253))

(declare-fun m!884255 () Bool)

(assert (=> b!615440 m!884255))

(push 1)

(assert b_and!61055)

(assert (not b!615429))

(assert (not b!615435))

(assert (not b!615439))

(assert (not start!58906))

(assert (not b!615424))

(assert (not b_next!17607))

(assert (not b!615427))

(assert b_and!61061)

(assert (not b_next!17609))

(assert (not b!615437))

(assert b_and!61059)

(assert (not b!615432))

(assert tp_is_empty!3507)

(assert (not b!615440))

(assert b_and!61057)

(assert (not b!615428))

(assert (not b!615436))

(assert (not b!615425))

(assert (not b_next!17605))

(assert (not b!615431))

(assert (not b!615426))

(assert (not b_next!17611))

(assert (not b!615434))

(assert (not b!615430))

(check-sat)

(pop 1)

(push 1)

(assert b_and!61057)

(assert b_and!61055)

(assert (not b_next!17605))

(assert (not b_next!17611))

(assert (not b_next!17607))

(assert b_and!61061)

(assert (not b_next!17609))

(assert b_and!61059)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!216377 () Bool)

(declare-fun res!267881 () Bool)

(declare-fun e!373200 () Bool)

(assert (=> d!216377 (=> (not res!267881) (not e!373200))))

(assert (=> d!216377 (= res!267881 (not (isEmpty!4453 (originalCharacters!1281 token!491))))))

(assert (=> d!216377 (= (inv!7858 token!491) e!373200)))

(declare-fun b!615496 () Bool)

(declare-fun res!267882 () Bool)

(assert (=> b!615496 (=> (not res!267882) (not e!373200))))

(declare-fun dynLambda!3573 (Int TokenValue!1266) BalanceConc!3926)

(assert (=> b!615496 (= res!267882 (= (originalCharacters!1281 token!491) (list!2597 (dynLambda!3573 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (value!40265 token!491)))))))

(declare-fun b!615497 () Bool)

(declare-fun size!4847 (List!6181) Int)

(assert (=> b!615497 (= e!373200 (= (size!4845 token!491) (size!4847 (originalCharacters!1281 token!491))))))

(assert (= (and d!216377 res!267881) b!615496))

(assert (= (and b!615496 res!267882) b!615497))

(declare-fun b_lambda!24469 () Bool)

(assert (=> (not b_lambda!24469) (not b!615496)))

(declare-fun t!81390 () Bool)

(declare-fun tb!53731 () Bool)

(assert (=> (and b!615433 (= (toChars!2012 (transformation!1242 (rule!2036 token!491))) (toChars!2012 (transformation!1242 (rule!2036 token!491)))) t!81390) tb!53731))

(declare-fun b!615502 () Bool)

(declare-fun e!373203 () Bool)

(declare-fun tp!190171 () Bool)

(declare-fun inv!7861 (Conc!1959) Bool)

(assert (=> b!615502 (= e!373203 (and (inv!7861 (c!113633 (dynLambda!3573 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (value!40265 token!491)))) tp!190171))))

(declare-fun result!60510 () Bool)

(declare-fun inv!7862 (BalanceConc!3926) Bool)

(assert (=> tb!53731 (= result!60510 (and (inv!7862 (dynLambda!3573 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (value!40265 token!491))) e!373203))))

(assert (= tb!53731 b!615502))

(declare-fun m!884293 () Bool)

(assert (=> b!615502 m!884293))

(declare-fun m!884295 () Bool)

(assert (=> tb!53731 m!884295))

(assert (=> b!615496 t!81390))

(declare-fun b_and!61071 () Bool)

(assert (= b_and!61057 (and (=> t!81390 result!60510) b_and!61071)))

(declare-fun t!81392 () Bool)

(declare-fun tb!53733 () Bool)

(assert (=> (and b!615438 (= (toChars!2012 (transformation!1242 (h!11573 rules!3103))) (toChars!2012 (transformation!1242 (rule!2036 token!491)))) t!81392) tb!53733))

(declare-fun result!60514 () Bool)

(assert (= result!60514 result!60510))

(assert (=> b!615496 t!81392))

(declare-fun b_and!61073 () Bool)

(assert (= b_and!61061 (and (=> t!81392 result!60514) b_and!61073)))

(declare-fun m!884297 () Bool)

(assert (=> d!216377 m!884297))

(declare-fun m!884299 () Bool)

(assert (=> b!615496 m!884299))

(assert (=> b!615496 m!884299))

(declare-fun m!884301 () Bool)

(assert (=> b!615496 m!884301))

(declare-fun m!884303 () Bool)

(assert (=> b!615497 m!884303))

(assert (=> start!58906 d!216377))

(declare-fun d!216379 () Bool)

(assert (=> d!216379 (= (inv!7854 (tag!1504 (h!11573 rules!3103))) (= (mod (str.len (value!40239 (tag!1504 (h!11573 rules!3103)))) 2) 0))))

(assert (=> b!615431 d!216379))

(declare-fun d!216381 () Bool)

(declare-fun res!267885 () Bool)

(declare-fun e!373206 () Bool)

(assert (=> d!216381 (=> (not res!267885) (not e!373206))))

(declare-fun semiInverseModEq!498 (Int Int) Bool)

(assert (=> d!216381 (= res!267885 (semiInverseModEq!498 (toChars!2012 (transformation!1242 (h!11573 rules!3103))) (toValue!2153 (transformation!1242 (h!11573 rules!3103)))))))

(assert (=> d!216381 (= (inv!7857 (transformation!1242 (h!11573 rules!3103))) e!373206)))

(declare-fun b!615505 () Bool)

(declare-fun equivClasses!481 (Int Int) Bool)

(assert (=> b!615505 (= e!373206 (equivClasses!481 (toChars!2012 (transformation!1242 (h!11573 rules!3103))) (toValue!2153 (transformation!1242 (h!11573 rules!3103)))))))

(assert (= (and d!216381 res!267885) b!615505))

(declare-fun m!884305 () Bool)

(assert (=> d!216381 m!884305))

(declare-fun m!884307 () Bool)

(assert (=> b!615505 m!884307))

(assert (=> b!615431 d!216381))

(declare-fun b!615516 () Bool)

(declare-fun e!373214 () Bool)

(declare-fun inv!17 (TokenValue!1266) Bool)

(assert (=> b!615516 (= e!373214 (inv!17 (value!40265 token!491)))))

(declare-fun b!615517 () Bool)

(declare-fun e!373215 () Bool)

(assert (=> b!615517 (= e!373215 e!373214)))

(declare-fun c!113642 () Bool)

(assert (=> b!615517 (= c!113642 (is-IntegerValue!3799 (value!40265 token!491)))))

(declare-fun b!615518 () Bool)

(declare-fun e!373213 () Bool)

(declare-fun inv!15 (TokenValue!1266) Bool)

(assert (=> b!615518 (= e!373213 (inv!15 (value!40265 token!491)))))

(declare-fun d!216383 () Bool)

(declare-fun c!113641 () Bool)

(assert (=> d!216383 (= c!113641 (is-IntegerValue!3798 (value!40265 token!491)))))

(assert (=> d!216383 (= (inv!21 (value!40265 token!491)) e!373215)))

(declare-fun b!615519 () Bool)

(declare-fun res!267888 () Bool)

(assert (=> b!615519 (=> res!267888 e!373213)))

(assert (=> b!615519 (= res!267888 (not (is-IntegerValue!3800 (value!40265 token!491))))))

(assert (=> b!615519 (= e!373214 e!373213)))

(declare-fun b!615520 () Bool)

(declare-fun inv!16 (TokenValue!1266) Bool)

(assert (=> b!615520 (= e!373215 (inv!16 (value!40265 token!491)))))

(assert (= (and d!216383 c!113641) b!615520))

(assert (= (and d!216383 (not c!113641)) b!615517))

(assert (= (and b!615517 c!113642) b!615516))

(assert (= (and b!615517 (not c!113642)) b!615519))

(assert (= (and b!615519 (not res!267888)) b!615518))

(declare-fun m!884309 () Bool)

(assert (=> b!615516 m!884309))

(declare-fun m!884311 () Bool)

(assert (=> b!615518 m!884311))

(declare-fun m!884313 () Bool)

(assert (=> b!615520 m!884313))

(assert (=> b!615429 d!216383))

(declare-fun d!216385 () Bool)

(assert (=> d!216385 (= (get!2378 lt!264181) (v!16505 lt!264181))))

(assert (=> b!615440 d!216385))

(declare-fun d!216389 () Bool)

(declare-fun res!267891 () Bool)

(declare-fun e!373218 () Bool)

(assert (=> d!216389 (=> (not res!267891) (not e!373218))))

(declare-fun rulesValid!461 (LexerInterface!1128 List!6182) Bool)

(assert (=> d!216389 (= res!267891 (rulesValid!461 thiss!22590 rules!3103))))

(assert (=> d!216389 (= (rulesInvariant!1091 thiss!22590 rules!3103) e!373218)))

(declare-fun b!615523 () Bool)

(declare-datatypes ((List!6186 0))(
  ( (Nil!6176) (Cons!6176 (h!11577 String!8075) (t!81399 List!6186)) )
))
(declare-fun noDuplicateTag!461 (LexerInterface!1128 List!6182 List!6186) Bool)

(assert (=> b!615523 (= e!373218 (noDuplicateTag!461 thiss!22590 rules!3103 Nil!6176))))

(assert (= (and d!216389 res!267891) b!615523))

(declare-fun m!884315 () Bool)

(assert (=> d!216389 m!884315))

(declare-fun m!884317 () Bool)

(assert (=> b!615523 m!884317))

(assert (=> b!615434 d!216389))

(declare-fun d!216393 () Bool)

(declare-fun list!2599 (Conc!1959) List!6181)

(assert (=> d!216393 (= (list!2597 (charsOf!871 token!491)) (list!2599 (c!113633 (charsOf!871 token!491))))))

(declare-fun bs!71808 () Bool)

(assert (= bs!71808 d!216393))

(declare-fun m!884319 () Bool)

(assert (=> bs!71808 m!884319))

(assert (=> b!615432 d!216393))

(declare-fun d!216395 () Bool)

(declare-fun lt!264191 () BalanceConc!3926)

(assert (=> d!216395 (= (list!2597 lt!264191) (originalCharacters!1281 token!491))))

(assert (=> d!216395 (= lt!264191 (dynLambda!3573 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (value!40265 token!491)))))

(assert (=> d!216395 (= (charsOf!871 token!491) lt!264191)))

(declare-fun b_lambda!24471 () Bool)

(assert (=> (not b_lambda!24471) (not d!216395)))

(assert (=> d!216395 t!81390))

(declare-fun b_and!61075 () Bool)

(assert (= b_and!61071 (and (=> t!81390 result!60510) b_and!61075)))

(assert (=> d!216395 t!81392))

(declare-fun b_and!61077 () Bool)

(assert (= b_and!61073 (and (=> t!81392 result!60514) b_and!61077)))

(declare-fun m!884321 () Bool)

(assert (=> d!216395 m!884321))

(assert (=> d!216395 m!884299))

(assert (=> b!615432 d!216395))

(declare-fun b!615553 () Bool)

(declare-fun res!267918 () Bool)

(declare-fun e!373235 () Bool)

(assert (=> b!615553 (=> (not res!267918) (not e!373235))))

(declare-fun lt!264207 () Option!1593)

(assert (=> b!615553 (= res!267918 (< (size!4847 (_2!3776 (get!2378 lt!264207))) (size!4847 input!2705)))))

(declare-fun b!615554 () Bool)

(assert (=> b!615554 (= e!373235 (contains!1458 rules!3103 (rule!2036 (_1!3776 (get!2378 lt!264207)))))))

(declare-fun b!615555 () Bool)

(declare-fun res!267917 () Bool)

(assert (=> b!615555 (=> (not res!267917) (not e!373235))))

(declare-fun matchR!677 (Regex!1576 List!6181) Bool)

(assert (=> b!615555 (= res!267917 (matchR!677 (regex!1242 (rule!2036 (_1!3776 (get!2378 lt!264207)))) (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264207))))))))

(declare-fun b!615556 () Bool)

(declare-fun e!373234 () Bool)

(assert (=> b!615556 (= e!373234 e!373235)))

(declare-fun res!267916 () Bool)

(assert (=> b!615556 (=> (not res!267916) (not e!373235))))

(assert (=> b!615556 (= res!267916 (isDefined!1404 lt!264207))))

(declare-fun bm!41019 () Bool)

(declare-fun call!41024 () Option!1593)

(declare-fun maxPrefixOneRule!487 (LexerInterface!1128 Rule!2284 List!6181) Option!1593)

(assert (=> bm!41019 (= call!41024 (maxPrefixOneRule!487 thiss!22590 (h!11573 rules!3103) input!2705))))

(declare-fun b!615557 () Bool)

(declare-fun e!373236 () Option!1593)

(declare-fun lt!264208 () Option!1593)

(declare-fun lt!264206 () Option!1593)

(assert (=> b!615557 (= e!373236 (ite (and (is-None!1592 lt!264208) (is-None!1592 lt!264206)) None!1592 (ite (is-None!1592 lt!264206) lt!264208 (ite (is-None!1592 lt!264208) lt!264206 (ite (>= (size!4845 (_1!3776 (v!16505 lt!264208))) (size!4845 (_1!3776 (v!16505 lt!264206)))) lt!264208 lt!264206)))))))

(assert (=> b!615557 (= lt!264208 call!41024)))

(assert (=> b!615557 (= lt!264206 (maxPrefix!826 thiss!22590 (t!81385 rules!3103) input!2705))))

(declare-fun b!615558 () Bool)

(declare-fun res!267913 () Bool)

(assert (=> b!615558 (=> (not res!267913) (not e!373235))))

(declare-fun apply!1493 (TokenValueInjection!2300 BalanceConc!3926) TokenValue!1266)

(declare-fun seqFromList!1416 (List!6181) BalanceConc!3926)

(assert (=> b!615558 (= res!267913 (= (value!40265 (_1!3776 (get!2378 lt!264207))) (apply!1493 (transformation!1242 (rule!2036 (_1!3776 (get!2378 lt!264207)))) (seqFromList!1416 (originalCharacters!1281 (_1!3776 (get!2378 lt!264207)))))))))

(declare-fun b!615559 () Bool)

(declare-fun res!267915 () Bool)

(assert (=> b!615559 (=> (not res!267915) (not e!373235))))

(assert (=> b!615559 (= res!267915 (= (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264207)))) (originalCharacters!1281 (_1!3776 (get!2378 lt!264207)))))))

(declare-fun b!615560 () Bool)

(declare-fun res!267914 () Bool)

(assert (=> b!615560 (=> (not res!267914) (not e!373235))))

(assert (=> b!615560 (= res!267914 (= (++!1730 (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264207)))) (_2!3776 (get!2378 lt!264207))) input!2705))))

(declare-fun d!216397 () Bool)

(assert (=> d!216397 e!373234))

(declare-fun res!267912 () Bool)

(assert (=> d!216397 (=> res!267912 e!373234)))

(declare-fun isEmpty!4457 (Option!1593) Bool)

(assert (=> d!216397 (= res!267912 (isEmpty!4457 lt!264207))))

(assert (=> d!216397 (= lt!264207 e!373236)))

(declare-fun c!113645 () Bool)

(assert (=> d!216397 (= c!113645 (and (is-Cons!6172 rules!3103) (is-Nil!6172 (t!81385 rules!3103))))))

(declare-datatypes ((Unit!11346 0))(
  ( (Unit!11347) )
))
(declare-fun lt!264209 () Unit!11346)

(declare-fun lt!264205 () Unit!11346)

(assert (=> d!216397 (= lt!264209 lt!264205)))

(assert (=> d!216397 (isPrefix!870 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!604 (List!6181 List!6181) Unit!11346)

(assert (=> d!216397 (= lt!264205 (lemmaIsPrefixRefl!604 input!2705 input!2705))))

(declare-fun rulesValidInductive!467 (LexerInterface!1128 List!6182) Bool)

(assert (=> d!216397 (rulesValidInductive!467 thiss!22590 rules!3103)))

(assert (=> d!216397 (= (maxPrefix!826 thiss!22590 rules!3103 input!2705) lt!264207)))

(declare-fun b!615561 () Bool)

(assert (=> b!615561 (= e!373236 call!41024)))

(assert (= (and d!216397 c!113645) b!615561))

(assert (= (and d!216397 (not c!113645)) b!615557))

(assert (= (or b!615561 b!615557) bm!41019))

(assert (= (and d!216397 (not res!267912)) b!615556))

(assert (= (and b!615556 res!267916) b!615559))

(assert (= (and b!615559 res!267915) b!615553))

(assert (= (and b!615553 res!267918) b!615560))

(assert (= (and b!615560 res!267914) b!615558))

(assert (= (and b!615558 res!267913) b!615555))

(assert (= (and b!615555 res!267917) b!615554))

(declare-fun m!884341 () Bool)

(assert (=> b!615555 m!884341))

(declare-fun m!884343 () Bool)

(assert (=> b!615555 m!884343))

(assert (=> b!615555 m!884343))

(declare-fun m!884345 () Bool)

(assert (=> b!615555 m!884345))

(assert (=> b!615555 m!884345))

(declare-fun m!884347 () Bool)

(assert (=> b!615555 m!884347))

(assert (=> b!615559 m!884341))

(assert (=> b!615559 m!884343))

(assert (=> b!615559 m!884343))

(assert (=> b!615559 m!884345))

(assert (=> b!615558 m!884341))

(declare-fun m!884349 () Bool)

(assert (=> b!615558 m!884349))

(assert (=> b!615558 m!884349))

(declare-fun m!884351 () Bool)

(assert (=> b!615558 m!884351))

(declare-fun m!884353 () Bool)

(assert (=> b!615556 m!884353))

(declare-fun m!884355 () Bool)

(assert (=> d!216397 m!884355))

(assert (=> d!216397 m!884241))

(declare-fun m!884357 () Bool)

(assert (=> d!216397 m!884357))

(declare-fun m!884359 () Bool)

(assert (=> d!216397 m!884359))

(assert (=> b!615560 m!884341))

(assert (=> b!615560 m!884343))

(assert (=> b!615560 m!884343))

(assert (=> b!615560 m!884345))

(assert (=> b!615560 m!884345))

(declare-fun m!884361 () Bool)

(assert (=> b!615560 m!884361))

(declare-fun m!884363 () Bool)

(assert (=> bm!41019 m!884363))

(assert (=> b!615554 m!884341))

(declare-fun m!884365 () Bool)

(assert (=> b!615554 m!884365))

(assert (=> b!615553 m!884341))

(declare-fun m!884367 () Bool)

(assert (=> b!615553 m!884367))

(declare-fun m!884369 () Bool)

(assert (=> b!615553 m!884369))

(declare-fun m!884371 () Bool)

(assert (=> b!615557 m!884371))

(assert (=> b!615425 d!216397))

(declare-fun d!216409 () Bool)

(declare-fun lt!264212 () Bool)

(declare-fun content!1125 (List!6182) (Set Rule!2284))

(assert (=> d!216409 (= lt!264212 (set.member (rule!2036 token!491) (content!1125 rules!3103)))))

(declare-fun e!373242 () Bool)

(assert (=> d!216409 (= lt!264212 e!373242)))

(declare-fun res!267924 () Bool)

(assert (=> d!216409 (=> (not res!267924) (not e!373242))))

(assert (=> d!216409 (= res!267924 (is-Cons!6172 rules!3103))))

(assert (=> d!216409 (= (contains!1458 rules!3103 (rule!2036 token!491)) lt!264212)))

(declare-fun b!615566 () Bool)

(declare-fun e!373241 () Bool)

(assert (=> b!615566 (= e!373242 e!373241)))

(declare-fun res!267923 () Bool)

(assert (=> b!615566 (=> res!267923 e!373241)))

(assert (=> b!615566 (= res!267923 (= (h!11573 rules!3103) (rule!2036 token!491)))))

(declare-fun b!615567 () Bool)

(assert (=> b!615567 (= e!373241 (contains!1458 (t!81385 rules!3103) (rule!2036 token!491)))))

(assert (= (and d!216409 res!267924) b!615566))

(assert (= (and b!615566 (not res!267923)) b!615567))

(declare-fun m!884373 () Bool)

(assert (=> d!216409 m!884373))

(declare-fun m!884375 () Bool)

(assert (=> d!216409 m!884375))

(declare-fun m!884377 () Bool)

(assert (=> b!615567 m!884377))

(assert (=> b!615436 d!216409))

(declare-fun d!216411 () Bool)

(declare-fun e!373251 () Bool)

(assert (=> d!216411 e!373251))

(declare-fun res!267934 () Bool)

(assert (=> d!216411 (=> res!267934 e!373251)))

(declare-fun lt!264215 () Bool)

(assert (=> d!216411 (= res!267934 (not lt!264215))))

(declare-fun e!373250 () Bool)

(assert (=> d!216411 (= lt!264215 e!373250)))

(declare-fun res!267933 () Bool)

(assert (=> d!216411 (=> res!267933 e!373250)))

(assert (=> d!216411 (= res!267933 (is-Nil!6171 input!2705))))

(assert (=> d!216411 (= (isPrefix!870 input!2705 input!2705) lt!264215)))

(declare-fun b!615577 () Bool)

(declare-fun res!267936 () Bool)

(declare-fun e!373249 () Bool)

(assert (=> b!615577 (=> (not res!267936) (not e!373249))))

(declare-fun head!1297 (List!6181) C!4074)

(assert (=> b!615577 (= res!267936 (= (head!1297 input!2705) (head!1297 input!2705)))))

(declare-fun b!615579 () Bool)

(assert (=> b!615579 (= e!373251 (>= (size!4847 input!2705) (size!4847 input!2705)))))

(declare-fun b!615576 () Bool)

(assert (=> b!615576 (= e!373250 e!373249)))

(declare-fun res!267935 () Bool)

(assert (=> b!615576 (=> (not res!267935) (not e!373249))))

(assert (=> b!615576 (= res!267935 (not (is-Nil!6171 input!2705)))))

(declare-fun b!615578 () Bool)

(declare-fun tail!826 (List!6181) List!6181)

(assert (=> b!615578 (= e!373249 (isPrefix!870 (tail!826 input!2705) (tail!826 input!2705)))))

(assert (= (and d!216411 (not res!267933)) b!615576))

(assert (= (and b!615576 res!267935) b!615577))

(assert (= (and b!615577 res!267936) b!615578))

(assert (= (and d!216411 (not res!267934)) b!615579))

(declare-fun m!884379 () Bool)

(assert (=> b!615577 m!884379))

(assert (=> b!615577 m!884379))

(assert (=> b!615579 m!884369))

(assert (=> b!615579 m!884369))

(declare-fun m!884381 () Bool)

(assert (=> b!615578 m!884381))

(assert (=> b!615578 m!884381))

(assert (=> b!615578 m!884381))

(assert (=> b!615578 m!884381))

(declare-fun m!884383 () Bool)

(assert (=> b!615578 m!884383))

(assert (=> b!615426 d!216411))

(declare-fun d!216413 () Bool)

(assert (=> d!216413 (= (isEmpty!4454 rules!3103) (is-Nil!6172 rules!3103))))

(assert (=> b!615435 d!216413))

(declare-fun d!216415 () Bool)

(assert (=> d!216415 (= (isEmpty!4453 input!2705) (is-Nil!6171 input!2705))))

(assert (=> b!615428 d!216415))

(declare-fun d!216417 () Bool)

(assert (=> d!216417 (= (inv!7854 (tag!1504 (rule!2036 token!491))) (= (mod (str.len (value!40239 (tag!1504 (rule!2036 token!491)))) 2) 0))))

(assert (=> b!615439 d!216417))

(declare-fun d!216419 () Bool)

(declare-fun res!267937 () Bool)

(declare-fun e!373252 () Bool)

(assert (=> d!216419 (=> (not res!267937) (not e!373252))))

(assert (=> d!216419 (= res!267937 (semiInverseModEq!498 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (toValue!2153 (transformation!1242 (rule!2036 token!491)))))))

(assert (=> d!216419 (= (inv!7857 (transformation!1242 (rule!2036 token!491))) e!373252)))

(declare-fun b!615580 () Bool)

(assert (=> b!615580 (= e!373252 (equivClasses!481 (toChars!2012 (transformation!1242 (rule!2036 token!491))) (toValue!2153 (transformation!1242 (rule!2036 token!491)))))))

(assert (= (and d!216419 res!267937) b!615580))

(declare-fun m!884385 () Bool)

(assert (=> d!216419 m!884385))

(declare-fun m!884387 () Bool)

(assert (=> b!615580 m!884387))

(assert (=> b!615439 d!216419))

(declare-fun d!216421 () Bool)

(assert (=> d!216421 (= (isDefined!1404 lt!264181) (not (isEmpty!4457 lt!264181)))))

(declare-fun bs!71810 () Bool)

(assert (= bs!71810 d!216421))

(declare-fun m!884389 () Bool)

(assert (=> bs!71810 m!884389))

(assert (=> b!615437 d!216421))

(declare-fun b!615581 () Bool)

(declare-fun res!267944 () Bool)

(declare-fun e!373254 () Bool)

(assert (=> b!615581 (=> (not res!267944) (not e!373254))))

(declare-fun lt!264218 () Option!1593)

(assert (=> b!615581 (= res!267944 (< (size!4847 (_2!3776 (get!2378 lt!264218))) (size!4847 (++!1730 input!2705 suffix!1342))))))

(declare-fun b!615582 () Bool)

(assert (=> b!615582 (= e!373254 (contains!1458 rules!3103 (rule!2036 (_1!3776 (get!2378 lt!264218)))))))

(declare-fun b!615583 () Bool)

(declare-fun res!267943 () Bool)

(assert (=> b!615583 (=> (not res!267943) (not e!373254))))

(assert (=> b!615583 (= res!267943 (matchR!677 (regex!1242 (rule!2036 (_1!3776 (get!2378 lt!264218)))) (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264218))))))))

(declare-fun b!615584 () Bool)

(declare-fun e!373253 () Bool)

(assert (=> b!615584 (= e!373253 e!373254)))

(declare-fun res!267942 () Bool)

(assert (=> b!615584 (=> (not res!267942) (not e!373254))))

(assert (=> b!615584 (= res!267942 (isDefined!1404 lt!264218))))

(declare-fun call!41025 () Option!1593)

(declare-fun bm!41020 () Bool)

(assert (=> bm!41020 (= call!41025 (maxPrefixOneRule!487 thiss!22590 (h!11573 rules!3103) (++!1730 input!2705 suffix!1342)))))

(declare-fun b!615585 () Bool)

(declare-fun e!373255 () Option!1593)

(declare-fun lt!264219 () Option!1593)

(declare-fun lt!264217 () Option!1593)

(assert (=> b!615585 (= e!373255 (ite (and (is-None!1592 lt!264219) (is-None!1592 lt!264217)) None!1592 (ite (is-None!1592 lt!264217) lt!264219 (ite (is-None!1592 lt!264219) lt!264217 (ite (>= (size!4845 (_1!3776 (v!16505 lt!264219))) (size!4845 (_1!3776 (v!16505 lt!264217)))) lt!264219 lt!264217)))))))

(assert (=> b!615585 (= lt!264219 call!41025)))

(assert (=> b!615585 (= lt!264217 (maxPrefix!826 thiss!22590 (t!81385 rules!3103) (++!1730 input!2705 suffix!1342)))))

(declare-fun b!615586 () Bool)

(declare-fun res!267939 () Bool)

(assert (=> b!615586 (=> (not res!267939) (not e!373254))))

(assert (=> b!615586 (= res!267939 (= (value!40265 (_1!3776 (get!2378 lt!264218))) (apply!1493 (transformation!1242 (rule!2036 (_1!3776 (get!2378 lt!264218)))) (seqFromList!1416 (originalCharacters!1281 (_1!3776 (get!2378 lt!264218)))))))))

(declare-fun b!615587 () Bool)

(declare-fun res!267941 () Bool)

(assert (=> b!615587 (=> (not res!267941) (not e!373254))))

(assert (=> b!615587 (= res!267941 (= (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264218)))) (originalCharacters!1281 (_1!3776 (get!2378 lt!264218)))))))

(declare-fun b!615588 () Bool)

(declare-fun res!267940 () Bool)

(assert (=> b!615588 (=> (not res!267940) (not e!373254))))

(assert (=> b!615588 (= res!267940 (= (++!1730 (list!2597 (charsOf!871 (_1!3776 (get!2378 lt!264218)))) (_2!3776 (get!2378 lt!264218))) (++!1730 input!2705 suffix!1342)))))

(declare-fun d!216423 () Bool)

(assert (=> d!216423 e!373253))

(declare-fun res!267938 () Bool)

(assert (=> d!216423 (=> res!267938 e!373253)))

(assert (=> d!216423 (= res!267938 (isEmpty!4457 lt!264218))))

(assert (=> d!216423 (= lt!264218 e!373255)))

(declare-fun c!113646 () Bool)

(assert (=> d!216423 (= c!113646 (and (is-Cons!6172 rules!3103) (is-Nil!6172 (t!81385 rules!3103))))))

(declare-fun lt!264220 () Unit!11346)

(declare-fun lt!264216 () Unit!11346)

(assert (=> d!216423 (= lt!264220 lt!264216)))

(assert (=> d!216423 (isPrefix!870 (++!1730 input!2705 suffix!1342) (++!1730 input!2705 suffix!1342))))

(assert (=> d!216423 (= lt!264216 (lemmaIsPrefixRefl!604 (++!1730 input!2705 suffix!1342) (++!1730 input!2705 suffix!1342)))))

(assert (=> d!216423 (rulesValidInductive!467 thiss!22590 rules!3103)))

(assert (=> d!216423 (= (maxPrefix!826 thiss!22590 rules!3103 (++!1730 input!2705 suffix!1342)) lt!264218)))

(declare-fun b!615589 () Bool)

(assert (=> b!615589 (= e!373255 call!41025)))

(assert (= (and d!216423 c!113646) b!615589))

(assert (= (and d!216423 (not c!113646)) b!615585))

(assert (= (or b!615589 b!615585) bm!41020))

(assert (= (and d!216423 (not res!267938)) b!615584))

(assert (= (and b!615584 res!267942) b!615587))

(assert (= (and b!615587 res!267941) b!615581))

(assert (= (and b!615581 res!267944) b!615588))

(assert (= (and b!615588 res!267940) b!615586))

(assert (= (and b!615586 res!267939) b!615583))

(assert (= (and b!615583 res!267943) b!615582))

(declare-fun m!884391 () Bool)

(assert (=> b!615583 m!884391))

(declare-fun m!884393 () Bool)

(assert (=> b!615583 m!884393))

(assert (=> b!615583 m!884393))

(declare-fun m!884395 () Bool)

(assert (=> b!615583 m!884395))

(assert (=> b!615583 m!884395))

(declare-fun m!884397 () Bool)

(assert (=> b!615583 m!884397))

(assert (=> b!615587 m!884391))

(assert (=> b!615587 m!884393))

(assert (=> b!615587 m!884393))

(assert (=> b!615587 m!884395))

(assert (=> b!615586 m!884391))

(declare-fun m!884399 () Bool)

(assert (=> b!615586 m!884399))

(assert (=> b!615586 m!884399))

(declare-fun m!884401 () Bool)

(assert (=> b!615586 m!884401))

(declare-fun m!884403 () Bool)

(assert (=> b!615584 m!884403))

(declare-fun m!884405 () Bool)

(assert (=> d!216423 m!884405))

(assert (=> d!216423 m!884229))

(assert (=> d!216423 m!884229))

(declare-fun m!884407 () Bool)

(assert (=> d!216423 m!884407))

(assert (=> d!216423 m!884229))

(assert (=> d!216423 m!884229))

(declare-fun m!884409 () Bool)

(assert (=> d!216423 m!884409))

(assert (=> d!216423 m!884359))

(assert (=> b!615588 m!884391))

(assert (=> b!615588 m!884393))

(assert (=> b!615588 m!884393))

(assert (=> b!615588 m!884395))

(assert (=> b!615588 m!884395))

(declare-fun m!884411 () Bool)

(assert (=> b!615588 m!884411))

(assert (=> bm!41020 m!884229))

(declare-fun m!884413 () Bool)

(assert (=> bm!41020 m!884413))

(assert (=> b!615582 m!884391))

(declare-fun m!884415 () Bool)

(assert (=> b!615582 m!884415))

(assert (=> b!615581 m!884391))

(declare-fun m!884417 () Bool)

(assert (=> b!615581 m!884417))

(assert (=> b!615581 m!884229))

(declare-fun m!884419 () Bool)

(assert (=> b!615581 m!884419))

(assert (=> b!615585 m!884229))

(declare-fun m!884421 () Bool)

(assert (=> b!615585 m!884421))

(assert (=> b!615437 d!216423))

(declare-fun b!615598 () Bool)

(declare-fun e!373261 () List!6181)

(assert (=> b!615598 (= e!373261 suffix!1342)))

(declare-fun b!615600 () Bool)

(declare-fun res!267950 () Bool)

(declare-fun e!373260 () Bool)

(assert (=> b!615600 (=> (not res!267950) (not e!373260))))

(declare-fun lt!264223 () List!6181)

(assert (=> b!615600 (= res!267950 (= (size!4847 lt!264223) (+ (size!4847 input!2705) (size!4847 suffix!1342))))))

(declare-fun b!615599 () Bool)

(assert (=> b!615599 (= e!373261 (Cons!6171 (h!11572 input!2705) (++!1730 (t!81384 input!2705) suffix!1342)))))

(declare-fun b!615601 () Bool)

(assert (=> b!615601 (= e!373260 (or (not (= suffix!1342 Nil!6171)) (= lt!264223 input!2705)))))

(declare-fun d!216425 () Bool)

(assert (=> d!216425 e!373260))

(declare-fun res!267949 () Bool)

(assert (=> d!216425 (=> (not res!267949) (not e!373260))))

(declare-fun content!1126 (List!6181) (Set C!4074))

(assert (=> d!216425 (= res!267949 (= (content!1126 lt!264223) (set.union (content!1126 input!2705) (content!1126 suffix!1342))))))

(assert (=> d!216425 (= lt!264223 e!373261)))

(declare-fun c!113649 () Bool)

(assert (=> d!216425 (= c!113649 (is-Nil!6171 input!2705))))

(assert (=> d!216425 (= (++!1730 input!2705 suffix!1342) lt!264223)))

(assert (= (and d!216425 c!113649) b!615598))

(assert (= (and d!216425 (not c!113649)) b!615599))

(assert (= (and d!216425 res!267949) b!615600))

(assert (= (and b!615600 res!267950) b!615601))

(declare-fun m!884423 () Bool)

(assert (=> b!615600 m!884423))

(assert (=> b!615600 m!884369))

(declare-fun m!884425 () Bool)

(assert (=> b!615600 m!884425))

(declare-fun m!884427 () Bool)

(assert (=> b!615599 m!884427))

(declare-fun m!884429 () Bool)

(assert (=> d!216425 m!884429))

(declare-fun m!884431 () Bool)

(assert (=> d!216425 m!884431))

(declare-fun m!884433 () Bool)

(assert (=> d!216425 m!884433))

(assert (=> b!615437 d!216425))

(declare-fun e!373264 () Bool)

(assert (=> b!615431 (= tp!190132 e!373264)))

(declare-fun b!615613 () Bool)

(declare-fun tp!190186 () Bool)

(declare-fun tp!190187 () Bool)

(assert (=> b!615613 (= e!373264 (and tp!190186 tp!190187))))

(declare-fun b!615612 () Bool)

(assert (=> b!615612 (= e!373264 tp_is_empty!3507)))

(declare-fun b!615615 () Bool)

(declare-fun tp!190189 () Bool)

(declare-fun tp!190185 () Bool)

(assert (=> b!615615 (= e!373264 (and tp!190189 tp!190185))))

(declare-fun b!615614 () Bool)

(declare-fun tp!190188 () Bool)

(assert (=> b!615614 (= e!373264 tp!190188)))

(assert (= (and b!615431 (is-ElementMatch!1576 (regex!1242 (h!11573 rules!3103)))) b!615612))

(assert (= (and b!615431 (is-Concat!2842 (regex!1242 (h!11573 rules!3103)))) b!615613))

(assert (= (and b!615431 (is-Star!1576 (regex!1242 (h!11573 rules!3103)))) b!615614))

(assert (= (and b!615431 (is-Union!1576 (regex!1242 (h!11573 rules!3103)))) b!615615))

(declare-fun b!615620 () Bool)

(declare-fun e!373267 () Bool)

(declare-fun tp!190192 () Bool)

(assert (=> b!615620 (= e!373267 (and tp_is_empty!3507 tp!190192))))

(assert (=> b!615429 (= tp!190137 e!373267)))

(assert (= (and b!615429 (is-Cons!6171 (originalCharacters!1281 token!491))) b!615620))

(declare-fun b!615631 () Bool)

(declare-fun b_free!17605 () Bool)

(declare-fun b_next!17621 () Bool)

(assert (=> b!615631 (= b_free!17605 (not b_next!17621))))

(declare-fun tp!190201 () Bool)

(declare-fun b_and!61083 () Bool)

(assert (=> b!615631 (= tp!190201 b_and!61083)))

(declare-fun b_free!17607 () Bool)

(declare-fun b_next!17623 () Bool)

(assert (=> b!615631 (= b_free!17607 (not b_next!17623))))

(declare-fun tb!53739 () Bool)

(declare-fun t!81398 () Bool)

(assert (=> (and b!615631 (= (toChars!2012 (transformation!1242 (h!11573 (t!81385 rules!3103)))) (toChars!2012 (transformation!1242 (rule!2036 token!491)))) t!81398) tb!53739))

(declare-fun result!60528 () Bool)

(assert (= result!60528 result!60510))

(assert (=> b!615496 t!81398))

(assert (=> d!216395 t!81398))

(declare-fun b_and!61085 () Bool)

(declare-fun tp!190204 () Bool)

(assert (=> b!615631 (= tp!190204 (and (=> t!81398 result!60528) b_and!61085))))

(declare-fun e!373279 () Bool)

(assert (=> b!615631 (= e!373279 (and tp!190201 tp!190204))))

(declare-fun b!615630 () Bool)

(declare-fun tp!190202 () Bool)

(declare-fun e!373276 () Bool)

(assert (=> b!615630 (= e!373276 (and tp!190202 (inv!7854 (tag!1504 (h!11573 (t!81385 rules!3103)))) (inv!7857 (transformation!1242 (h!11573 (t!81385 rules!3103)))) e!373279))))

(declare-fun b!615629 () Bool)

(declare-fun e!373277 () Bool)

(declare-fun tp!190203 () Bool)

(assert (=> b!615629 (= e!373277 (and e!373276 tp!190203))))

(assert (=> b!615424 (= tp!190134 e!373277)))

(assert (= b!615630 b!615631))

(assert (= b!615629 b!615630))

(assert (= (and b!615424 (is-Cons!6172 (t!81385 rules!3103))) b!615629))

(declare-fun m!884435 () Bool)

(assert (=> b!615630 m!884435))

(declare-fun m!884437 () Bool)

(assert (=> b!615630 m!884437))

(declare-fun b!615632 () Bool)

(declare-fun e!373280 () Bool)

(declare-fun tp!190205 () Bool)

(assert (=> b!615632 (= e!373280 (and tp_is_empty!3507 tp!190205))))

(assert (=> b!615430 (= tp!190138 e!373280)))

(assert (= (and b!615430 (is-Cons!6171 (t!81384 suffix!1342))) b!615632))

(declare-fun e!373281 () Bool)

(assert (=> b!615439 (= tp!190135 e!373281)))

(declare-fun b!615634 () Bool)

(declare-fun tp!190207 () Bool)

(declare-fun tp!190208 () Bool)

(assert (=> b!615634 (= e!373281 (and tp!190207 tp!190208))))

(declare-fun b!615633 () Bool)

(assert (=> b!615633 (= e!373281 tp_is_empty!3507)))

(declare-fun b!615636 () Bool)

(declare-fun tp!190210 () Bool)

(declare-fun tp!190206 () Bool)

(assert (=> b!615636 (= e!373281 (and tp!190210 tp!190206))))

(declare-fun b!615635 () Bool)

(declare-fun tp!190209 () Bool)

(assert (=> b!615635 (= e!373281 tp!190209)))

(assert (= (and b!615439 (is-ElementMatch!1576 (regex!1242 (rule!2036 token!491)))) b!615633))

(assert (= (and b!615439 (is-Concat!2842 (regex!1242 (rule!2036 token!491)))) b!615634))

(assert (= (and b!615439 (is-Star!1576 (regex!1242 (rule!2036 token!491)))) b!615635))

(assert (= (and b!615439 (is-Union!1576 (regex!1242 (rule!2036 token!491)))) b!615636))

(declare-fun b!615637 () Bool)

(declare-fun e!373282 () Bool)

(declare-fun tp!190211 () Bool)

(assert (=> b!615637 (= e!373282 (and tp_is_empty!3507 tp!190211))))

(assert (=> b!615427 (= tp!190130 e!373282)))

(assert (= (and b!615427 (is-Cons!6171 (t!81384 input!2705))) b!615637))

(declare-fun b_lambda!24475 () Bool)

(assert (= b_lambda!24469 (or (and b!615433 b_free!17591) (and b!615438 b_free!17595 (= (toChars!2012 (transformation!1242 (h!11573 rules!3103))) (toChars!2012 (transformation!1242 (rule!2036 token!491))))) (and b!615631 b_free!17607 (= (toChars!2012 (transformation!1242 (h!11573 (t!81385 rules!3103)))) (toChars!2012 (transformation!1242 (rule!2036 token!491))))) b_lambda!24475)))

(declare-fun b_lambda!24477 () Bool)

(assert (= b_lambda!24471 (or (and b!615433 b_free!17591) (and b!615438 b_free!17595 (= (toChars!2012 (transformation!1242 (h!11573 rules!3103))) (toChars!2012 (transformation!1242 (rule!2036 token!491))))) (and b!615631 b_free!17607 (= (toChars!2012 (transformation!1242 (h!11573 (t!81385 rules!3103)))) (toChars!2012 (transformation!1242 (rule!2036 token!491))))) b_lambda!24477)))

(push 1)

(assert (not b!615520))

(assert (not b!615497))

(assert (not b!615588))

(assert (not b!615599))

(assert (not b!615587))

(assert (not d!216409))

(assert (not b!615629))

(assert (not b!615614))

(assert (not b!615584))

(assert b_and!61055)

(assert b_and!61075)

(assert b_and!61077)

(assert (not b!615586))

(assert (not d!216397))

(assert (not b!615581))

(assert (not b!615632))

(assert (not d!216425))

(assert (not b!615634))

(assert (not b!615557))

(assert (not b!615582))

(assert (not b_lambda!24475))

(assert (not b!615558))

(assert (not b!615496))

(assert (not b!615559))

(assert (not bm!41019))

(assert (not b!615556))

(assert (not d!216419))

(assert (not b!615579))

(assert (not b!615635))

(assert (not b!615560))

(assert (not d!216377))

(assert (not tb!53731))

(assert (not b!615615))

(assert (not b!615577))

(assert (not b!615554))

(assert (not d!216421))

(assert (not b!615580))

(assert (not d!216423))

(assert (not b_next!17605))

(assert b_and!61083)

(assert (not b!615518))

(assert (not d!216381))

(assert (not b!615637))

(assert (not b!615600))

(assert (not b_next!17611))

(assert (not bm!41020))

(assert (not b!615613))

(assert (not b!615620))

(assert (not b!615636))

(assert b_and!61085)

(assert (not b_next!17623))

(assert (not b_next!17607))

(assert (not b!615585))

(assert (not b!615578))

(assert (not b!615523))

(assert (not b!615630))

(assert (not b_lambda!24477))

(assert (not b_next!17621))

(assert (not b!615567))

(assert (not b_next!17609))

(assert (not b!615502))

(assert (not b!615516))

(assert (not d!216393))

(assert (not d!216389))

(assert b_and!61059)

(assert (not b!615583))

(assert (not b!615553))

(assert (not b!615555))

(assert tp_is_empty!3507)

(assert (not b!615505))

(assert (not d!216395))

(check-sat)

(pop 1)

(push 1)

(assert b_and!61055)

(assert (not b_next!17605))

(assert b_and!61083)

(assert (not b_next!17611))

(assert (not b_next!17621))

(assert (not b_next!17609))

(assert b_and!61059)

(assert b_and!61075)

(assert b_and!61077)

(assert b_and!61085)

(assert (not b_next!17623))

(assert (not b_next!17607))

(check-sat)

(pop 1)

