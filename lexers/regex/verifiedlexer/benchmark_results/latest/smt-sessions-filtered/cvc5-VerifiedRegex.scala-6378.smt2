; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!331924 () Bool)

(assert start!331924)

(declare-fun b!3580373 () Bool)

(declare-fun b_free!91857 () Bool)

(declare-fun b_next!92561 () Bool)

(assert (=> b!3580373 (= b_free!91857 (not b_next!92561))))

(declare-fun tp!1095823 () Bool)

(declare-fun b_and!258191 () Bool)

(assert (=> b!3580373 (= tp!1095823 b_and!258191)))

(declare-fun b_free!91859 () Bool)

(declare-fun b_next!92563 () Bool)

(assert (=> b!3580373 (= b_free!91859 (not b_next!92563))))

(declare-fun tp!1095829 () Bool)

(declare-fun b_and!258193 () Bool)

(assert (=> b!3580373 (= tp!1095829 b_and!258193)))

(declare-fun b!3580377 () Bool)

(declare-fun b_free!91861 () Bool)

(declare-fun b_next!92565 () Bool)

(assert (=> b!3580377 (= b_free!91861 (not b_next!92565))))

(declare-fun tp!1095825 () Bool)

(declare-fun b_and!258195 () Bool)

(assert (=> b!3580377 (= tp!1095825 b_and!258195)))

(declare-fun b_free!91863 () Bool)

(declare-fun b_next!92567 () Bool)

(assert (=> b!3580377 (= b_free!91863 (not b_next!92567))))

(declare-fun tp!1095831 () Bool)

(declare-fun b_and!258197 () Bool)

(assert (=> b!3580377 (= tp!1095831 b_and!258197)))

(declare-fun b!3580372 () Bool)

(declare-fun b_free!91865 () Bool)

(declare-fun b_next!92569 () Bool)

(assert (=> b!3580372 (= b_free!91865 (not b_next!92569))))

(declare-fun tp!1095819 () Bool)

(declare-fun b_and!258199 () Bool)

(assert (=> b!3580372 (= tp!1095819 b_and!258199)))

(declare-fun b_free!91867 () Bool)

(declare-fun b_next!92571 () Bool)

(assert (=> b!3580372 (= b_free!91867 (not b_next!92571))))

(declare-fun tp!1095820 () Bool)

(declare-fun b_and!258201 () Bool)

(assert (=> b!3580372 (= tp!1095820 b_and!258201)))

(declare-fun b!3580380 () Bool)

(declare-fun b_free!91869 () Bool)

(declare-fun b_next!92573 () Bool)

(assert (=> b!3580380 (= b_free!91869 (not b_next!92573))))

(declare-fun tp!1095832 () Bool)

(declare-fun b_and!258203 () Bool)

(assert (=> b!3580380 (= tp!1095832 b_and!258203)))

(declare-fun b_free!91871 () Bool)

(declare-fun b_next!92575 () Bool)

(assert (=> b!3580380 (= b_free!91871 (not b_next!92575))))

(declare-fun tp!1095826 () Bool)

(declare-fun b_and!258205 () Bool)

(assert (=> b!3580380 (= tp!1095826 b_and!258205)))

(declare-fun b!3580364 () Bool)

(declare-fun res!1444486 () Bool)

(declare-fun e!2215159 () Bool)

(assert (=> b!3580364 (=> (not res!1444486) (not e!2215159))))

(declare-datatypes ((List!37721 0))(
  ( (Nil!37597) (Cons!37597 (h!43017 (_ BitVec 16)) (t!290250 List!37721)) )
))
(declare-datatypes ((TokenValue!5765 0))(
  ( (FloatLiteralValue!11530 (text!40800 List!37721)) (TokenValueExt!5764 (__x!23747 Int)) (Broken!28825 (value!178183 List!37721)) (Object!5888) (End!5765) (Def!5765) (Underscore!5765) (Match!5765) (Else!5765) (Error!5765) (Case!5765) (If!5765) (Extends!5765) (Abstract!5765) (Class!5765) (Val!5765) (DelimiterValue!11530 (del!5825 List!37721)) (KeywordValue!5771 (value!178184 List!37721)) (CommentValue!11530 (value!178185 List!37721)) (WhitespaceValue!11530 (value!178186 List!37721)) (IndentationValue!5765 (value!178187 List!37721)) (String!42160) (Int32!5765) (Broken!28826 (value!178188 List!37721)) (Boolean!5766) (Unit!53611) (OperatorValue!5768 (op!5825 List!37721)) (IdentifierValue!11530 (value!178189 List!37721)) (IdentifierValue!11531 (value!178190 List!37721)) (WhitespaceValue!11531 (value!178191 List!37721)) (True!11530) (False!11530) (Broken!28827 (value!178192 List!37721)) (Broken!28828 (value!178193 List!37721)) (True!11531) (RightBrace!5765) (RightBracket!5765) (Colon!5765) (Null!5765) (Comma!5765) (LeftBracket!5765) (False!11531) (LeftBrace!5765) (ImaginaryLiteralValue!5765 (text!40801 List!37721)) (StringLiteralValue!17295 (value!178194 List!37721)) (EOFValue!5765 (value!178195 List!37721)) (IdentValue!5765 (value!178196 List!37721)) (DelimiterValue!11531 (value!178197 List!37721)) (DedentValue!5765 (value!178198 List!37721)) (NewLineValue!5765 (value!178199 List!37721)) (IntegerValue!17295 (value!178200 (_ BitVec 32)) (text!40802 List!37721)) (IntegerValue!17296 (value!178201 Int) (text!40803 List!37721)) (Times!5765) (Or!5765) (Equal!5765) (Minus!5765) (Broken!28829 (value!178202 List!37721)) (And!5765) (Div!5765) (LessEqual!5765) (Mod!5765) (Concat!16059) (Not!5765) (Plus!5765) (SpaceValue!5765 (value!178203 List!37721)) (IntegerValue!17297 (value!178204 Int) (text!40804 List!37721)) (StringLiteralValue!17296 (text!40805 List!37721)) (FloatLiteralValue!11531 (text!40806 List!37721)) (BytesLiteralValue!5765 (value!178205 List!37721)) (CommentValue!11531 (value!178206 List!37721)) (StringLiteralValue!17297 (value!178207 List!37721)) (ErrorTokenValue!5765 (msg!5826 List!37721)) )
))
(declare-datatypes ((C!20774 0))(
  ( (C!20775 (val!12435 Int)) )
))
(declare-datatypes ((Regex!10294 0))(
  ( (ElementMatch!10294 (c!620444 C!20774)) (Concat!16060 (regOne!21100 Regex!10294) (regTwo!21100 Regex!10294)) (EmptyExpr!10294) (Star!10294 (reg!10623 Regex!10294)) (EmptyLang!10294) (Union!10294 (regOne!21101 Regex!10294) (regTwo!21101 Regex!10294)) )
))
(declare-datatypes ((String!42161 0))(
  ( (String!42162 (value!178208 String)) )
))
(declare-datatypes ((List!37722 0))(
  ( (Nil!37598) (Cons!37598 (h!43018 C!20774) (t!290251 List!37722)) )
))
(declare-datatypes ((IArray!22871 0))(
  ( (IArray!22872 (innerList!11493 List!37722)) )
))
(declare-datatypes ((Conc!11433 0))(
  ( (Node!11433 (left!29403 Conc!11433) (right!29733 Conc!11433) (csize!23096 Int) (cheight!11644 Int)) (Leaf!17812 (xs!14635 IArray!22871) (csize!23097 Int)) (Empty!11433) )
))
(declare-datatypes ((BalanceConc!22480 0))(
  ( (BalanceConc!22481 (c!620445 Conc!11433)) )
))
(declare-datatypes ((TokenValueInjection!10958 0))(
  ( (TokenValueInjection!10959 (toValue!7811 Int) (toChars!7670 Int)) )
))
(declare-datatypes ((Rule!10870 0))(
  ( (Rule!10871 (regex!5535 Regex!10294) (tag!6201 String!42161) (isSeparator!5535 Bool) (transformation!5535 TokenValueInjection!10958)) )
))
(declare-datatypes ((List!37723 0))(
  ( (Nil!37599) (Cons!37599 (h!43019 Rule!10870) (t!290252 List!37723)) )
))
(declare-fun rules!3307 () List!37723)

(declare-fun isEmpty!22132 (List!37723) Bool)

(assert (=> b!3580364 (= res!1444486 (not (isEmpty!22132 rules!3307)))))

(declare-fun b!3580365 () Bool)

(declare-fun res!1444487 () Bool)

(assert (=> b!3580365 (=> (not res!1444487) (not e!2215159))))

(declare-datatypes ((LexerInterface!5124 0))(
  ( (LexerInterfaceExt!5121 (__x!23748 Int)) (Lexer!5122) )
))
(declare-fun thiss!23823 () LexerInterface!5124)

(declare-fun rulesInvariant!4521 (LexerInterface!5124 List!37723) Bool)

(assert (=> b!3580365 (= res!1444487 (rulesInvariant!4521 thiss!23823 rules!3307))))

(declare-fun b!3580366 () Bool)

(declare-fun e!2215162 () Bool)

(declare-fun rulesValidInductive!1918 (LexerInterface!5124 List!37723) Bool)

(assert (=> b!3580366 (= e!2215162 (not (rulesValidInductive!1918 thiss!23823 rules!3307)))))

(declare-fun e!2215169 () Bool)

(declare-fun b!3580367 () Bool)

(declare-fun e!2215168 () Bool)

(declare-fun tp!1095824 () Bool)

(declare-fun rule!403 () Rule!10870)

(declare-fun inv!50892 (String!42161) Bool)

(declare-fun inv!50895 (TokenValueInjection!10958) Bool)

(assert (=> b!3580367 (= e!2215168 (and tp!1095824 (inv!50892 (tag!6201 rule!403)) (inv!50895 (transformation!5535 rule!403)) e!2215169))))

(declare-fun b!3580368 () Bool)

(declare-fun res!1444483 () Bool)

(assert (=> b!3580368 (=> (not res!1444483) (not e!2215162))))

(declare-datatypes ((Token!10436 0))(
  ( (Token!10437 (value!178209 TokenValue!5765) (rule!8247 Rule!10870) (size!28667 Int) (originalCharacters!6249 List!37722)) )
))
(declare-datatypes ((tuple2!37512 0))(
  ( (tuple2!37513 (_1!21890 Token!10436) (_2!21890 List!37722)) )
))
(declare-datatypes ((Option!7723 0))(
  ( (None!7722) (Some!7722 (v!37362 tuple2!37512)) )
))
(declare-fun lt!1228467 () Option!7723)

(declare-fun token!511 () Token!10436)

(declare-fun get!12103 (Option!7723) tuple2!37512)

(assert (=> b!3580368 (= res!1444483 (= (_1!21890 (get!12103 lt!1228467)) token!511))))

(declare-fun b!3580369 () Bool)

(assert (=> b!3580369 (= e!2215159 e!2215162)))

(declare-fun res!1444480 () Bool)

(assert (=> b!3580369 (=> (not res!1444480) (not e!2215162))))

(declare-fun isDefined!5957 (Option!7723) Bool)

(assert (=> b!3580369 (= res!1444480 (isDefined!5957 lt!1228467))))

(declare-fun maxPrefix!2658 (LexerInterface!5124 List!37723 List!37722) Option!7723)

(declare-fun list!13807 (BalanceConc!22480) List!37722)

(declare-fun charsOf!3549 (Token!10436) BalanceConc!22480)

(assert (=> b!3580369 (= lt!1228467 (maxPrefix!2658 thiss!23823 rules!3307 (list!13807 (charsOf!3549 token!511))))))

(declare-fun b!3580370 () Bool)

(declare-fun res!1444485 () Bool)

(assert (=> b!3580370 (=> (not res!1444485) (not e!2215159))))

(declare-fun anOtherTypeRule!33 () Rule!10870)

(assert (=> b!3580370 (= res!1444485 (not (= (isSeparator!5535 anOtherTypeRule!33) (isSeparator!5535 rule!403))))))

(declare-fun b!3580371 () Bool)

(declare-fun res!1444484 () Bool)

(assert (=> b!3580371 (=> (not res!1444484) (not e!2215159))))

(declare-fun contains!7139 (List!37723 Rule!10870) Bool)

(assert (=> b!3580371 (= res!1444484 (contains!7139 rules!3307 rule!403))))

(assert (=> b!3580372 (= e!2215169 (and tp!1095819 tp!1095820))))

(declare-fun e!2215155 () Bool)

(assert (=> b!3580373 (= e!2215155 (and tp!1095823 tp!1095829))))

(declare-fun b!3580374 () Bool)

(declare-fun e!2215165 () Bool)

(declare-fun e!2215170 () Bool)

(declare-fun tp!1095830 () Bool)

(assert (=> b!3580374 (= e!2215165 (and tp!1095830 (inv!50892 (tag!6201 (rule!8247 token!511))) (inv!50895 (transformation!5535 (rule!8247 token!511))) e!2215170))))

(declare-fun tp!1095822 () Bool)

(declare-fun b!3580375 () Bool)

(declare-fun e!2215160 () Bool)

(assert (=> b!3580375 (= e!2215160 (and tp!1095822 (inv!50892 (tag!6201 (h!43019 rules!3307))) (inv!50895 (transformation!5535 (h!43019 rules!3307))) e!2215155))))

(declare-fun e!2215158 () Bool)

(declare-fun b!3580376 () Bool)

(declare-fun tp!1095827 () Bool)

(declare-fun e!2215164 () Bool)

(assert (=> b!3580376 (= e!2215158 (and tp!1095827 (inv!50892 (tag!6201 anOtherTypeRule!33)) (inv!50895 (transformation!5535 anOtherTypeRule!33)) e!2215164))))

(declare-fun b!3580363 () Bool)

(declare-fun e!2215171 () Bool)

(declare-fun tp!1095828 () Bool)

(assert (=> b!3580363 (= e!2215171 (and e!2215160 tp!1095828))))

(declare-fun res!1444481 () Bool)

(assert (=> start!331924 (=> (not res!1444481) (not e!2215159))))

(assert (=> start!331924 (= res!1444481 (is-Lexer!5122 thiss!23823))))

(assert (=> start!331924 e!2215159))

(assert (=> start!331924 e!2215171))

(assert (=> start!331924 true))

(declare-fun e!2215161 () Bool)

(declare-fun inv!50896 (Token!10436) Bool)

(assert (=> start!331924 (and (inv!50896 token!511) e!2215161)))

(assert (=> start!331924 e!2215168))

(assert (=> start!331924 e!2215158))

(assert (=> b!3580377 (= e!2215170 (and tp!1095825 tp!1095831))))

(declare-fun tp!1095821 () Bool)

(declare-fun b!3580378 () Bool)

(declare-fun inv!21 (TokenValue!5765) Bool)

(assert (=> b!3580378 (= e!2215161 (and (inv!21 (value!178209 token!511)) e!2215165 tp!1095821))))

(declare-fun b!3580379 () Bool)

(declare-fun res!1444482 () Bool)

(assert (=> b!3580379 (=> (not res!1444482) (not e!2215159))))

(assert (=> b!3580379 (= res!1444482 (contains!7139 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3580380 (= e!2215164 (and tp!1095832 tp!1095826))))

(assert (= (and start!331924 res!1444481) b!3580364))

(assert (= (and b!3580364 res!1444486) b!3580365))

(assert (= (and b!3580365 res!1444487) b!3580371))

(assert (= (and b!3580371 res!1444484) b!3580379))

(assert (= (and b!3580379 res!1444482) b!3580370))

(assert (= (and b!3580370 res!1444485) b!3580369))

(assert (= (and b!3580369 res!1444480) b!3580368))

(assert (= (and b!3580368 res!1444483) b!3580366))

(assert (= b!3580375 b!3580373))

(assert (= b!3580363 b!3580375))

(assert (= (and start!331924 (is-Cons!37599 rules!3307)) b!3580363))

(assert (= b!3580374 b!3580377))

(assert (= b!3580378 b!3580374))

(assert (= start!331924 b!3580378))

(assert (= b!3580367 b!3580372))

(assert (= start!331924 b!3580367))

(assert (= b!3580376 b!3580380))

(assert (= start!331924 b!3580376))

(declare-fun m!4074313 () Bool)

(assert (=> b!3580369 m!4074313))

(declare-fun m!4074315 () Bool)

(assert (=> b!3580369 m!4074315))

(assert (=> b!3580369 m!4074315))

(declare-fun m!4074317 () Bool)

(assert (=> b!3580369 m!4074317))

(assert (=> b!3580369 m!4074317))

(declare-fun m!4074319 () Bool)

(assert (=> b!3580369 m!4074319))

(declare-fun m!4074321 () Bool)

(assert (=> b!3580371 m!4074321))

(declare-fun m!4074323 () Bool)

(assert (=> b!3580375 m!4074323))

(declare-fun m!4074325 () Bool)

(assert (=> b!3580375 m!4074325))

(declare-fun m!4074327 () Bool)

(assert (=> b!3580376 m!4074327))

(declare-fun m!4074329 () Bool)

(assert (=> b!3580376 m!4074329))

(declare-fun m!4074331 () Bool)

(assert (=> b!3580374 m!4074331))

(declare-fun m!4074333 () Bool)

(assert (=> b!3580374 m!4074333))

(declare-fun m!4074335 () Bool)

(assert (=> b!3580366 m!4074335))

(declare-fun m!4074337 () Bool)

(assert (=> b!3580378 m!4074337))

(declare-fun m!4074339 () Bool)

(assert (=> b!3580367 m!4074339))

(declare-fun m!4074341 () Bool)

(assert (=> b!3580367 m!4074341))

(declare-fun m!4074343 () Bool)

(assert (=> b!3580364 m!4074343))

(declare-fun m!4074345 () Bool)

(assert (=> b!3580368 m!4074345))

(declare-fun m!4074347 () Bool)

(assert (=> b!3580379 m!4074347))

(declare-fun m!4074349 () Bool)

(assert (=> b!3580365 m!4074349))

(declare-fun m!4074351 () Bool)

(assert (=> start!331924 m!4074351))

(push 1)

(assert b_and!258205)

(assert (not b_next!92563))

(assert (not start!331924))

(assert (not b!3580379))

(assert (not b!3580368))

(assert b_and!258203)

(assert (not b_next!92575))

(assert (not b_next!92567))

(assert (not b!3580369))

(assert (not b!3580364))

(assert b_and!258193)

(assert (not b_next!92565))

(assert (not b!3580371))

(assert b_and!258201)

(assert (not b_next!92561))

(assert (not b!3580375))

(assert (not b!3580366))

(assert (not b!3580376))

(assert b_and!258191)

(assert (not b!3580374))

(assert b_and!258197)

(assert (not b!3580363))

(assert b_and!258199)

(assert b_and!258195)

(assert (not b!3580365))

(assert (not b!3580367))

(assert (not b_next!92569))

(assert (not b_next!92573))

(assert (not b!3580378))

(assert (not b_next!92571))

(check-sat)

(pop 1)

(push 1)

(assert b_and!258205)

(assert b_and!258193)

(assert (not b_next!92563))

(assert (not b_next!92561))

(assert b_and!258203)

(assert b_and!258191)

(assert (not b_next!92575))

(assert (not b_next!92567))

(assert b_and!258197)

(assert (not b_next!92571))

(assert (not b_next!92565))

(assert b_and!258201)

(assert b_and!258199)

(assert b_and!258195)

(assert (not b_next!92569))

(assert (not b_next!92573))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1055977 () Bool)

(declare-fun lt!1228473 () Bool)

(declare-fun content!5332 (List!37723) (Set Rule!10870))

(assert (=> d!1055977 (= lt!1228473 (set.member rule!403 (content!5332 rules!3307)))))

(declare-fun e!2215227 () Bool)

(assert (=> d!1055977 (= lt!1228473 e!2215227)))

(declare-fun res!1444527 () Bool)

(assert (=> d!1055977 (=> (not res!1444527) (not e!2215227))))

(assert (=> d!1055977 (= res!1444527 (is-Cons!37599 rules!3307))))

(assert (=> d!1055977 (= (contains!7139 rules!3307 rule!403) lt!1228473)))

(declare-fun b!3580439 () Bool)

(declare-fun e!2215228 () Bool)

(assert (=> b!3580439 (= e!2215227 e!2215228)))

(declare-fun res!1444528 () Bool)

(assert (=> b!3580439 (=> res!1444528 e!2215228)))

(assert (=> b!3580439 (= res!1444528 (= (h!43019 rules!3307) rule!403))))

(declare-fun b!3580440 () Bool)

(assert (=> b!3580440 (= e!2215228 (contains!7139 (t!290252 rules!3307) rule!403))))

(assert (= (and d!1055977 res!1444527) b!3580439))

(assert (= (and b!3580439 (not res!1444528)) b!3580440))

(declare-fun m!4074393 () Bool)

(assert (=> d!1055977 m!4074393))

(declare-fun m!4074395 () Bool)

(assert (=> d!1055977 m!4074395))

(declare-fun m!4074397 () Bool)

(assert (=> b!3580440 m!4074397))

(assert (=> b!3580371 d!1055977))

(declare-fun d!1055979 () Bool)

(declare-fun isEmpty!22134 (Option!7723) Bool)

(assert (=> d!1055979 (= (isDefined!5957 lt!1228467) (not (isEmpty!22134 lt!1228467)))))

(declare-fun bs!569870 () Bool)

(assert (= bs!569870 d!1055979))

(declare-fun m!4074399 () Bool)

(assert (=> bs!569870 m!4074399))

(assert (=> b!3580369 d!1055979))

(declare-fun bm!259282 () Bool)

(declare-fun call!259287 () Option!7723)

(declare-fun maxPrefixOneRule!1820 (LexerInterface!5124 Rule!10870 List!37722) Option!7723)

(assert (=> bm!259282 (= call!259287 (maxPrefixOneRule!1820 thiss!23823 (h!43019 rules!3307) (list!13807 (charsOf!3549 token!511))))))

(declare-fun b!3580465 () Bool)

(declare-fun res!1444552 () Bool)

(declare-fun e!2215243 () Bool)

(assert (=> b!3580465 (=> (not res!1444552) (not e!2215243))))

(declare-fun lt!1228491 () Option!7723)

(assert (=> b!3580465 (= res!1444552 (= (list!13807 (charsOf!3549 (_1!21890 (get!12103 lt!1228491)))) (originalCharacters!6249 (_1!21890 (get!12103 lt!1228491)))))))

(declare-fun b!3580466 () Bool)

(declare-fun e!2215241 () Option!7723)

(declare-fun lt!1228487 () Option!7723)

(declare-fun lt!1228489 () Option!7723)

(assert (=> b!3580466 (= e!2215241 (ite (and (is-None!7722 lt!1228487) (is-None!7722 lt!1228489)) None!7722 (ite (is-None!7722 lt!1228489) lt!1228487 (ite (is-None!7722 lt!1228487) lt!1228489 (ite (>= (size!28667 (_1!21890 (v!37362 lt!1228487))) (size!28667 (_1!21890 (v!37362 lt!1228489)))) lt!1228487 lt!1228489)))))))

(assert (=> b!3580466 (= lt!1228487 call!259287)))

(assert (=> b!3580466 (= lt!1228489 (maxPrefix!2658 thiss!23823 (t!290252 rules!3307) (list!13807 (charsOf!3549 token!511))))))

(declare-fun b!3580467 () Bool)

(assert (=> b!3580467 (= e!2215241 call!259287)))

(declare-fun b!3580469 () Bool)

(declare-fun res!1444549 () Bool)

(assert (=> b!3580469 (=> (not res!1444549) (not e!2215243))))

(declare-fun matchR!4867 (Regex!10294 List!37722) Bool)

(assert (=> b!3580469 (= res!1444549 (matchR!4867 (regex!5535 (rule!8247 (_1!21890 (get!12103 lt!1228491)))) (list!13807 (charsOf!3549 (_1!21890 (get!12103 lt!1228491))))))))

(declare-fun b!3580470 () Bool)

(declare-fun res!1444550 () Bool)

(assert (=> b!3580470 (=> (not res!1444550) (not e!2215243))))

(declare-fun ++!9351 (List!37722 List!37722) List!37722)

(assert (=> b!3580470 (= res!1444550 (= (++!9351 (list!13807 (charsOf!3549 (_1!21890 (get!12103 lt!1228491)))) (_2!21890 (get!12103 lt!1228491))) (list!13807 (charsOf!3549 token!511))))))

(declare-fun b!3580471 () Bool)

(declare-fun res!1444551 () Bool)

(assert (=> b!3580471 (=> (not res!1444551) (not e!2215243))))

(declare-fun apply!9057 (TokenValueInjection!10958 BalanceConc!22480) TokenValue!5765)

(declare-fun seqFromList!4100 (List!37722) BalanceConc!22480)

(assert (=> b!3580471 (= res!1444551 (= (value!178209 (_1!21890 (get!12103 lt!1228491))) (apply!9057 (transformation!5535 (rule!8247 (_1!21890 (get!12103 lt!1228491)))) (seqFromList!4100 (originalCharacters!6249 (_1!21890 (get!12103 lt!1228491)))))))))

(declare-fun d!1055981 () Bool)

(declare-fun e!2215242 () Bool)

(assert (=> d!1055981 e!2215242))

(declare-fun res!1444555 () Bool)

(assert (=> d!1055981 (=> res!1444555 e!2215242)))

(assert (=> d!1055981 (= res!1444555 (isEmpty!22134 lt!1228491))))

(assert (=> d!1055981 (= lt!1228491 e!2215241)))

(declare-fun c!620451 () Bool)

(assert (=> d!1055981 (= c!620451 (and (is-Cons!37599 rules!3307) (is-Nil!37599 (t!290252 rules!3307))))))

(declare-datatypes ((Unit!53613 0))(
  ( (Unit!53614) )
))
(declare-fun lt!1228490 () Unit!53613)

(declare-fun lt!1228488 () Unit!53613)

(assert (=> d!1055981 (= lt!1228490 lt!1228488)))

(declare-fun isPrefix!2902 (List!37722 List!37722) Bool)

(assert (=> d!1055981 (isPrefix!2902 (list!13807 (charsOf!3549 token!511)) (list!13807 (charsOf!3549 token!511)))))

(declare-fun lemmaIsPrefixRefl!1861 (List!37722 List!37722) Unit!53613)

(assert (=> d!1055981 (= lt!1228488 (lemmaIsPrefixRefl!1861 (list!13807 (charsOf!3549 token!511)) (list!13807 (charsOf!3549 token!511))))))

(assert (=> d!1055981 (rulesValidInductive!1918 thiss!23823 rules!3307)))

(assert (=> d!1055981 (= (maxPrefix!2658 thiss!23823 rules!3307 (list!13807 (charsOf!3549 token!511))) lt!1228491)))

(declare-fun b!3580468 () Bool)

(assert (=> b!3580468 (= e!2215243 (contains!7139 rules!3307 (rule!8247 (_1!21890 (get!12103 lt!1228491)))))))

(declare-fun b!3580472 () Bool)

(assert (=> b!3580472 (= e!2215242 e!2215243)))

(declare-fun res!1444553 () Bool)

(assert (=> b!3580472 (=> (not res!1444553) (not e!2215243))))

(assert (=> b!3580472 (= res!1444553 (isDefined!5957 lt!1228491))))

(declare-fun b!3580473 () Bool)

(declare-fun res!1444554 () Bool)

(assert (=> b!3580473 (=> (not res!1444554) (not e!2215243))))

(declare-fun size!28669 (List!37722) Int)

(assert (=> b!3580473 (= res!1444554 (< (size!28669 (_2!21890 (get!12103 lt!1228491))) (size!28669 (list!13807 (charsOf!3549 token!511)))))))

(assert (= (and d!1055981 c!620451) b!3580467))

(assert (= (and d!1055981 (not c!620451)) b!3580466))

(assert (= (or b!3580467 b!3580466) bm!259282))

(assert (= (and d!1055981 (not res!1444555)) b!3580472))

(assert (= (and b!3580472 res!1444553) b!3580465))

(assert (= (and b!3580465 res!1444552) b!3580473))

(assert (= (and b!3580473 res!1444554) b!3580470))

(assert (= (and b!3580470 res!1444550) b!3580471))

(assert (= (and b!3580471 res!1444551) b!3580469))

(assert (= (and b!3580469 res!1444549) b!3580468))

(declare-fun m!4074409 () Bool)

(assert (=> d!1055981 m!4074409))

(assert (=> d!1055981 m!4074317))

(assert (=> d!1055981 m!4074317))

(declare-fun m!4074411 () Bool)

(assert (=> d!1055981 m!4074411))

(assert (=> d!1055981 m!4074317))

(assert (=> d!1055981 m!4074317))

(declare-fun m!4074413 () Bool)

(assert (=> d!1055981 m!4074413))

(assert (=> d!1055981 m!4074335))

(declare-fun m!4074415 () Bool)

(assert (=> b!3580469 m!4074415))

(declare-fun m!4074417 () Bool)

(assert (=> b!3580469 m!4074417))

(assert (=> b!3580469 m!4074417))

(declare-fun m!4074419 () Bool)

(assert (=> b!3580469 m!4074419))

(assert (=> b!3580469 m!4074419))

(declare-fun m!4074421 () Bool)

(assert (=> b!3580469 m!4074421))

(assert (=> b!3580466 m!4074317))

(declare-fun m!4074423 () Bool)

(assert (=> b!3580466 m!4074423))

(assert (=> b!3580473 m!4074415))

(declare-fun m!4074425 () Bool)

(assert (=> b!3580473 m!4074425))

(assert (=> b!3580473 m!4074317))

(declare-fun m!4074427 () Bool)

(assert (=> b!3580473 m!4074427))

(assert (=> bm!259282 m!4074317))

(declare-fun m!4074429 () Bool)

(assert (=> bm!259282 m!4074429))

(assert (=> b!3580471 m!4074415))

(declare-fun m!4074431 () Bool)

(assert (=> b!3580471 m!4074431))

(assert (=> b!3580471 m!4074431))

(declare-fun m!4074433 () Bool)

(assert (=> b!3580471 m!4074433))

(declare-fun m!4074435 () Bool)

(assert (=> b!3580472 m!4074435))

(assert (=> b!3580465 m!4074415))

(assert (=> b!3580465 m!4074417))

(assert (=> b!3580465 m!4074417))

(assert (=> b!3580465 m!4074419))

(assert (=> b!3580470 m!4074415))

(assert (=> b!3580470 m!4074417))

(assert (=> b!3580470 m!4074417))

(assert (=> b!3580470 m!4074419))

(assert (=> b!3580470 m!4074419))

(declare-fun m!4074437 () Bool)

(assert (=> b!3580470 m!4074437))

(assert (=> b!3580468 m!4074415))

(declare-fun m!4074439 () Bool)

(assert (=> b!3580468 m!4074439))

(assert (=> b!3580369 d!1055981))

(declare-fun d!1055989 () Bool)

(declare-fun list!13809 (Conc!11433) List!37722)

(assert (=> d!1055989 (= (list!13807 (charsOf!3549 token!511)) (list!13809 (c!620445 (charsOf!3549 token!511))))))

(declare-fun bs!569872 () Bool)

(assert (= bs!569872 d!1055989))

(declare-fun m!4074441 () Bool)

(assert (=> bs!569872 m!4074441))

(assert (=> b!3580369 d!1055989))

(declare-fun d!1055991 () Bool)

(declare-fun lt!1228494 () BalanceConc!22480)

(assert (=> d!1055991 (= (list!13807 lt!1228494) (originalCharacters!6249 token!511))))

(declare-fun dynLambda!16179 (Int TokenValue!5765) BalanceConc!22480)

(assert (=> d!1055991 (= lt!1228494 (dynLambda!16179 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (value!178209 token!511)))))

(assert (=> d!1055991 (= (charsOf!3549 token!511) lt!1228494)))

(declare-fun b_lambda!105811 () Bool)

(assert (=> (not b_lambda!105811) (not d!1055991)))

(declare-fun tb!204301 () Bool)

(declare-fun t!290257 () Bool)

(assert (=> (and b!3580373 (= (toChars!7670 (transformation!5535 (h!43019 rules!3307))) (toChars!7670 (transformation!5535 (rule!8247 token!511)))) t!290257) tb!204301))

(declare-fun b!3580478 () Bool)

(declare-fun e!2215246 () Bool)

(declare-fun tp!1095877 () Bool)

(declare-fun inv!50899 (Conc!11433) Bool)

(assert (=> b!3580478 (= e!2215246 (and (inv!50899 (c!620445 (dynLambda!16179 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (value!178209 token!511)))) tp!1095877))))

(declare-fun result!249042 () Bool)

(declare-fun inv!50900 (BalanceConc!22480) Bool)

(assert (=> tb!204301 (= result!249042 (and (inv!50900 (dynLambda!16179 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (value!178209 token!511))) e!2215246))))

(assert (= tb!204301 b!3580478))

(declare-fun m!4074443 () Bool)

(assert (=> b!3580478 m!4074443))

(declare-fun m!4074445 () Bool)

(assert (=> tb!204301 m!4074445))

(assert (=> d!1055991 t!290257))

(declare-fun b_and!258223 () Bool)

(assert (= b_and!258193 (and (=> t!290257 result!249042) b_and!258223)))

(declare-fun t!290259 () Bool)

(declare-fun tb!204303 () Bool)

(assert (=> (and b!3580377 (= (toChars!7670 (transformation!5535 (rule!8247 token!511))) (toChars!7670 (transformation!5535 (rule!8247 token!511)))) t!290259) tb!204303))

(declare-fun result!249046 () Bool)

(assert (= result!249046 result!249042))

(assert (=> d!1055991 t!290259))

(declare-fun b_and!258225 () Bool)

(assert (= b_and!258197 (and (=> t!290259 result!249046) b_and!258225)))

(declare-fun tb!204305 () Bool)

(declare-fun t!290261 () Bool)

(assert (=> (and b!3580372 (= (toChars!7670 (transformation!5535 rule!403)) (toChars!7670 (transformation!5535 (rule!8247 token!511)))) t!290261) tb!204305))

(declare-fun result!249048 () Bool)

(assert (= result!249048 result!249042))

(assert (=> d!1055991 t!290261))

(declare-fun b_and!258227 () Bool)

(assert (= b_and!258201 (and (=> t!290261 result!249048) b_and!258227)))

(declare-fun tb!204307 () Bool)

(declare-fun t!290263 () Bool)

(assert (=> (and b!3580380 (= (toChars!7670 (transformation!5535 anOtherTypeRule!33)) (toChars!7670 (transformation!5535 (rule!8247 token!511)))) t!290263) tb!204307))

(declare-fun result!249050 () Bool)

(assert (= result!249050 result!249042))

(assert (=> d!1055991 t!290263))

(declare-fun b_and!258229 () Bool)

(assert (= b_and!258205 (and (=> t!290263 result!249050) b_and!258229)))

(declare-fun m!4074447 () Bool)

(assert (=> d!1055991 m!4074447))

(declare-fun m!4074449 () Bool)

(assert (=> d!1055991 m!4074449))

(assert (=> b!3580369 d!1055991))

(declare-fun d!1055993 () Bool)

(assert (=> d!1055993 (= (inv!50892 (tag!6201 (rule!8247 token!511))) (= (mod (str.len (value!178208 (tag!6201 (rule!8247 token!511)))) 2) 0))))

(assert (=> b!3580374 d!1055993))

(declare-fun d!1055995 () Bool)

(declare-fun res!1444558 () Bool)

(declare-fun e!2215249 () Bool)

(assert (=> d!1055995 (=> (not res!1444558) (not e!2215249))))

(declare-fun semiInverseModEq!2343 (Int Int) Bool)

(assert (=> d!1055995 (= res!1444558 (semiInverseModEq!2343 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (toValue!7811 (transformation!5535 (rule!8247 token!511)))))))

(assert (=> d!1055995 (= (inv!50895 (transformation!5535 (rule!8247 token!511))) e!2215249)))

(declare-fun b!3580481 () Bool)

(declare-fun equivClasses!2242 (Int Int) Bool)

(assert (=> b!3580481 (= e!2215249 (equivClasses!2242 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (toValue!7811 (transformation!5535 (rule!8247 token!511)))))))

(assert (= (and d!1055995 res!1444558) b!3580481))

(declare-fun m!4074451 () Bool)

(assert (=> d!1055995 m!4074451))

(declare-fun m!4074453 () Bool)

(assert (=> b!3580481 m!4074453))

(assert (=> b!3580374 d!1055995))

(declare-fun d!1055997 () Bool)

(assert (=> d!1055997 (= (inv!50892 (tag!6201 anOtherTypeRule!33)) (= (mod (str.len (value!178208 (tag!6201 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3580376 d!1055997))

(declare-fun d!1055999 () Bool)

(declare-fun res!1444559 () Bool)

(declare-fun e!2215250 () Bool)

(assert (=> d!1055999 (=> (not res!1444559) (not e!2215250))))

(assert (=> d!1055999 (= res!1444559 (semiInverseModEq!2343 (toChars!7670 (transformation!5535 anOtherTypeRule!33)) (toValue!7811 (transformation!5535 anOtherTypeRule!33))))))

(assert (=> d!1055999 (= (inv!50895 (transformation!5535 anOtherTypeRule!33)) e!2215250)))

(declare-fun b!3580482 () Bool)

(assert (=> b!3580482 (= e!2215250 (equivClasses!2242 (toChars!7670 (transformation!5535 anOtherTypeRule!33)) (toValue!7811 (transformation!5535 anOtherTypeRule!33))))))

(assert (= (and d!1055999 res!1444559) b!3580482))

(declare-fun m!4074455 () Bool)

(assert (=> d!1055999 m!4074455))

(declare-fun m!4074457 () Bool)

(assert (=> b!3580482 m!4074457))

(assert (=> b!3580376 d!1055999))

(declare-fun d!1056001 () Bool)

(declare-fun res!1444562 () Bool)

(declare-fun e!2215253 () Bool)

(assert (=> d!1056001 (=> (not res!1444562) (not e!2215253))))

(declare-fun rulesValid!2103 (LexerInterface!5124 List!37723) Bool)

(assert (=> d!1056001 (= res!1444562 (rulesValid!2103 thiss!23823 rules!3307))))

(assert (=> d!1056001 (= (rulesInvariant!4521 thiss!23823 rules!3307) e!2215253)))

(declare-fun b!3580485 () Bool)

(declare-datatypes ((List!37727 0))(
  ( (Nil!37603) (Cons!37603 (h!43023 String!42161) (t!290274 List!37727)) )
))
(declare-fun noDuplicateTag!2099 (LexerInterface!5124 List!37723 List!37727) Bool)

(assert (=> b!3580485 (= e!2215253 (noDuplicateTag!2099 thiss!23823 rules!3307 Nil!37603))))

(assert (= (and d!1056001 res!1444562) b!3580485))

(declare-fun m!4074459 () Bool)

(assert (=> d!1056001 m!4074459))

(declare-fun m!4074461 () Bool)

(assert (=> b!3580485 m!4074461))

(assert (=> b!3580365 d!1056001))

(declare-fun d!1056003 () Bool)

(declare-fun res!1444567 () Bool)

(declare-fun e!2215256 () Bool)

(assert (=> d!1056003 (=> (not res!1444567) (not e!2215256))))

(declare-fun isEmpty!22135 (List!37722) Bool)

(assert (=> d!1056003 (= res!1444567 (not (isEmpty!22135 (originalCharacters!6249 token!511))))))

(assert (=> d!1056003 (= (inv!50896 token!511) e!2215256)))

(declare-fun b!3580490 () Bool)

(declare-fun res!1444568 () Bool)

(assert (=> b!3580490 (=> (not res!1444568) (not e!2215256))))

(assert (=> b!3580490 (= res!1444568 (= (originalCharacters!6249 token!511) (list!13807 (dynLambda!16179 (toChars!7670 (transformation!5535 (rule!8247 token!511))) (value!178209 token!511)))))))

(declare-fun b!3580491 () Bool)

(assert (=> b!3580491 (= e!2215256 (= (size!28667 token!511) (size!28669 (originalCharacters!6249 token!511))))))

(assert (= (and d!1056003 res!1444567) b!3580490))

(assert (= (and b!3580490 res!1444568) b!3580491))

(declare-fun b_lambda!105813 () Bool)

(assert (=> (not b_lambda!105813) (not b!3580490)))

(assert (=> b!3580490 t!290257))

(declare-fun b_and!258231 () Bool)

(assert (= b_and!258223 (and (=> t!290257 result!249042) b_and!258231)))

(assert (=> b!3580490 t!290259))

(declare-fun b_and!258233 () Bool)

(assert (= b_and!258225 (and (=> t!290259 result!249046) b_and!258233)))

(assert (=> b!3580490 t!290261))

(declare-fun b_and!258235 () Bool)

(assert (= b_and!258227 (and (=> t!290261 result!249048) b_and!258235)))

(assert (=> b!3580490 t!290263))

(declare-fun b_and!258237 () Bool)

(assert (= b_and!258229 (and (=> t!290263 result!249050) b_and!258237)))

(declare-fun m!4074463 () Bool)

(assert (=> d!1056003 m!4074463))

(assert (=> b!3580490 m!4074449))

(assert (=> b!3580490 m!4074449))

(declare-fun m!4074465 () Bool)

(assert (=> b!3580490 m!4074465))

(declare-fun m!4074467 () Bool)

(assert (=> b!3580491 m!4074467))

(assert (=> start!331924 d!1056003))

(declare-fun d!1056005 () Bool)

(assert (=> d!1056005 true))

(declare-fun lt!1228517 () Bool)

(declare-fun lambda!123744 () Int)

(declare-fun forall!8138 (List!37723 Int) Bool)

(assert (=> d!1056005 (= lt!1228517 (forall!8138 rules!3307 lambda!123744))))

(declare-fun e!2215283 () Bool)

(assert (=> d!1056005 (= lt!1228517 e!2215283)))

(declare-fun res!1444608 () Bool)

(assert (=> d!1056005 (=> res!1444608 e!2215283)))

(assert (=> d!1056005 (= res!1444608 (not (is-Cons!37599 rules!3307)))))

(assert (=> d!1056005 (= (rulesValidInductive!1918 thiss!23823 rules!3307) lt!1228517)))

(declare-fun b!3580541 () Bool)

(declare-fun e!2215284 () Bool)

(assert (=> b!3580541 (= e!2215283 e!2215284)))

(declare-fun res!1444607 () Bool)

(assert (=> b!3580541 (=> (not res!1444607) (not e!2215284))))

(declare-fun ruleValid!1804 (LexerInterface!5124 Rule!10870) Bool)

(assert (=> b!3580541 (= res!1444607 (ruleValid!1804 thiss!23823 (h!43019 rules!3307)))))

(declare-fun b!3580542 () Bool)

(assert (=> b!3580542 (= e!2215284 (rulesValidInductive!1918 thiss!23823 (t!290252 rules!3307)))))

(assert (= (and d!1056005 (not res!1444608)) b!3580541))

(assert (= (and b!3580541 res!1444607) b!3580542))

(declare-fun m!4074521 () Bool)

(assert (=> d!1056005 m!4074521))

(declare-fun m!4074523 () Bool)

(assert (=> b!3580541 m!4074523))

(declare-fun m!4074525 () Bool)

(assert (=> b!3580542 m!4074525))

(assert (=> b!3580366 d!1056005))

(declare-fun d!1056019 () Bool)

(assert (=> d!1056019 (= (isEmpty!22132 rules!3307) (is-Nil!37599 rules!3307))))

(assert (=> b!3580364 d!1056019))

(declare-fun d!1056021 () Bool)

(assert (=> d!1056021 (= (inv!50892 (tag!6201 (h!43019 rules!3307))) (= (mod (str.len (value!178208 (tag!6201 (h!43019 rules!3307)))) 2) 0))))

(assert (=> b!3580375 d!1056021))

(declare-fun d!1056023 () Bool)

(declare-fun res!1444609 () Bool)

(declare-fun e!2215285 () Bool)

(assert (=> d!1056023 (=> (not res!1444609) (not e!2215285))))

(assert (=> d!1056023 (= res!1444609 (semiInverseModEq!2343 (toChars!7670 (transformation!5535 (h!43019 rules!3307))) (toValue!7811 (transformation!5535 (h!43019 rules!3307)))))))

(assert (=> d!1056023 (= (inv!50895 (transformation!5535 (h!43019 rules!3307))) e!2215285)))

(declare-fun b!3580545 () Bool)

(assert (=> b!3580545 (= e!2215285 (equivClasses!2242 (toChars!7670 (transformation!5535 (h!43019 rules!3307))) (toValue!7811 (transformation!5535 (h!43019 rules!3307)))))))

(assert (= (and d!1056023 res!1444609) b!3580545))

(declare-fun m!4074527 () Bool)

(assert (=> d!1056023 m!4074527))

(declare-fun m!4074529 () Bool)

(assert (=> b!3580545 m!4074529))

(assert (=> b!3580375 d!1056023))

(declare-fun d!1056025 () Bool)

(assert (=> d!1056025 (= (get!12103 lt!1228467) (v!37362 lt!1228467))))

(assert (=> b!3580368 d!1056025))

(declare-fun d!1056027 () Bool)

(declare-fun lt!1228518 () Bool)

(assert (=> d!1056027 (= lt!1228518 (set.member anOtherTypeRule!33 (content!5332 rules!3307)))))

(declare-fun e!2215286 () Bool)

(assert (=> d!1056027 (= lt!1228518 e!2215286)))

(declare-fun res!1444610 () Bool)

(assert (=> d!1056027 (=> (not res!1444610) (not e!2215286))))

(assert (=> d!1056027 (= res!1444610 (is-Cons!37599 rules!3307))))

(assert (=> d!1056027 (= (contains!7139 rules!3307 anOtherTypeRule!33) lt!1228518)))

(declare-fun b!3580546 () Bool)

(declare-fun e!2215287 () Bool)

(assert (=> b!3580546 (= e!2215286 e!2215287)))

(declare-fun res!1444611 () Bool)

(assert (=> b!3580546 (=> res!1444611 e!2215287)))

(assert (=> b!3580546 (= res!1444611 (= (h!43019 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3580547 () Bool)

(assert (=> b!3580547 (= e!2215287 (contains!7139 (t!290252 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056027 res!1444610) b!3580546))

(assert (= (and b!3580546 (not res!1444611)) b!3580547))

(assert (=> d!1056027 m!4074393))

(declare-fun m!4074531 () Bool)

(assert (=> d!1056027 m!4074531))

(declare-fun m!4074533 () Bool)

(assert (=> b!3580547 m!4074533))

(assert (=> b!3580379 d!1056027))

(declare-fun b!3580558 () Bool)

(declare-fun e!2215296 () Bool)

(declare-fun inv!16 (TokenValue!5765) Bool)

(assert (=> b!3580558 (= e!2215296 (inv!16 (value!178209 token!511)))))

(declare-fun b!3580559 () Bool)

(declare-fun e!2215294 () Bool)

(declare-fun inv!15 (TokenValue!5765) Bool)

(assert (=> b!3580559 (= e!2215294 (inv!15 (value!178209 token!511)))))

(declare-fun d!1056029 () Bool)

(declare-fun c!620459 () Bool)

(assert (=> d!1056029 (= c!620459 (is-IntegerValue!17295 (value!178209 token!511)))))

(assert (=> d!1056029 (= (inv!21 (value!178209 token!511)) e!2215296)))

(declare-fun b!3580560 () Bool)

(declare-fun e!2215295 () Bool)

(assert (=> b!3580560 (= e!2215296 e!2215295)))

(declare-fun c!620460 () Bool)

(assert (=> b!3580560 (= c!620460 (is-IntegerValue!17296 (value!178209 token!511)))))

(declare-fun b!3580561 () Bool)

(declare-fun inv!17 (TokenValue!5765) Bool)

(assert (=> b!3580561 (= e!2215295 (inv!17 (value!178209 token!511)))))

(declare-fun b!3580562 () Bool)

(declare-fun res!1444614 () Bool)

(assert (=> b!3580562 (=> res!1444614 e!2215294)))

(assert (=> b!3580562 (= res!1444614 (not (is-IntegerValue!17297 (value!178209 token!511))))))

(assert (=> b!3580562 (= e!2215295 e!2215294)))

(assert (= (and d!1056029 c!620459) b!3580558))

(assert (= (and d!1056029 (not c!620459)) b!3580560))

(assert (= (and b!3580560 c!620460) b!3580561))

(assert (= (and b!3580560 (not c!620460)) b!3580562))

(assert (= (and b!3580562 (not res!1444614)) b!3580559))

(declare-fun m!4074535 () Bool)

(assert (=> b!3580558 m!4074535))

(declare-fun m!4074537 () Bool)

(assert (=> b!3580559 m!4074537))

(declare-fun m!4074539 () Bool)

(assert (=> b!3580561 m!4074539))

(assert (=> b!3580378 d!1056029))

(declare-fun d!1056031 () Bool)

(assert (=> d!1056031 (= (inv!50892 (tag!6201 rule!403)) (= (mod (str.len (value!178208 (tag!6201 rule!403))) 2) 0))))

(assert (=> b!3580367 d!1056031))

(declare-fun d!1056033 () Bool)

(declare-fun res!1444615 () Bool)

(declare-fun e!2215297 () Bool)

(assert (=> d!1056033 (=> (not res!1444615) (not e!2215297))))

(assert (=> d!1056033 (= res!1444615 (semiInverseModEq!2343 (toChars!7670 (transformation!5535 rule!403)) (toValue!7811 (transformation!5535 rule!403))))))

(assert (=> d!1056033 (= (inv!50895 (transformation!5535 rule!403)) e!2215297)))

(declare-fun b!3580563 () Bool)

(assert (=> b!3580563 (= e!2215297 (equivClasses!2242 (toChars!7670 (transformation!5535 rule!403)) (toValue!7811 (transformation!5535 rule!403))))))

(assert (= (and d!1056033 res!1444615) b!3580563))

(declare-fun m!4074541 () Bool)

(assert (=> d!1056033 m!4074541))

(declare-fun m!4074543 () Bool)

(assert (=> b!3580563 m!4074543))

(assert (=> b!3580367 d!1056033))

(declare-fun b!3580576 () Bool)

(declare-fun e!2215300 () Bool)

(declare-fun tp!1095893 () Bool)

(assert (=> b!3580576 (= e!2215300 tp!1095893)))

(declare-fun b!3580575 () Bool)

(declare-fun tp!1095895 () Bool)

(declare-fun tp!1095892 () Bool)

(assert (=> b!3580575 (= e!2215300 (and tp!1095895 tp!1095892))))

(declare-fun b!3580574 () Bool)

(declare-fun tp_is_empty!17679 () Bool)

(assert (=> b!3580574 (= e!2215300 tp_is_empty!17679)))

(assert (=> b!3580376 (= tp!1095827 e!2215300)))

(declare-fun b!3580577 () Bool)

(declare-fun tp!1095894 () Bool)

(declare-fun tp!1095891 () Bool)

(assert (=> b!3580577 (= e!2215300 (and tp!1095894 tp!1095891))))

(assert (= (and b!3580376 (is-ElementMatch!10294 (regex!5535 anOtherTypeRule!33))) b!3580574))

(assert (= (and b!3580376 (is-Concat!16060 (regex!5535 anOtherTypeRule!33))) b!3580575))

(assert (= (and b!3580376 (is-Star!10294 (regex!5535 anOtherTypeRule!33))) b!3580576))

(assert (= (and b!3580376 (is-Union!10294 (regex!5535 anOtherTypeRule!33))) b!3580577))

(declare-fun b!3580580 () Bool)

(declare-fun e!2215301 () Bool)

(declare-fun tp!1095898 () Bool)

(assert (=> b!3580580 (= e!2215301 tp!1095898)))

(declare-fun b!3580579 () Bool)

(declare-fun tp!1095900 () Bool)

(declare-fun tp!1095897 () Bool)

(assert (=> b!3580579 (= e!2215301 (and tp!1095900 tp!1095897))))

(declare-fun b!3580578 () Bool)

(assert (=> b!3580578 (= e!2215301 tp_is_empty!17679)))

(assert (=> b!3580375 (= tp!1095822 e!2215301)))

(declare-fun b!3580581 () Bool)

(declare-fun tp!1095899 () Bool)

(declare-fun tp!1095896 () Bool)

(assert (=> b!3580581 (= e!2215301 (and tp!1095899 tp!1095896))))

(assert (= (and b!3580375 (is-ElementMatch!10294 (regex!5535 (h!43019 rules!3307)))) b!3580578))

(assert (= (and b!3580375 (is-Concat!16060 (regex!5535 (h!43019 rules!3307)))) b!3580579))

(assert (= (and b!3580375 (is-Star!10294 (regex!5535 (h!43019 rules!3307)))) b!3580580))

(assert (= (and b!3580375 (is-Union!10294 (regex!5535 (h!43019 rules!3307)))) b!3580581))

(declare-fun b!3580592 () Bool)

(declare-fun b_free!91889 () Bool)

(declare-fun b_next!92593 () Bool)

(assert (=> b!3580592 (= b_free!91889 (not b_next!92593))))

(declare-fun tp!1095911 () Bool)

(declare-fun b_and!258255 () Bool)

(assert (=> b!3580592 (= tp!1095911 b_and!258255)))

(declare-fun b_free!91891 () Bool)

(declare-fun b_next!92595 () Bool)

(assert (=> b!3580592 (= b_free!91891 (not b_next!92595))))

(declare-fun tb!204317 () Bool)

(declare-fun t!290273 () Bool)

(assert (=> (and b!3580592 (= (toChars!7670 (transformation!5535 (h!43019 (t!290252 rules!3307)))) (toChars!7670 (transformation!5535 (rule!8247 token!511)))) t!290273) tb!204317))

(declare-fun result!249066 () Bool)

(assert (= result!249066 result!249042))

(assert (=> d!1055991 t!290273))

(assert (=> b!3580490 t!290273))

(declare-fun tp!1095912 () Bool)

(declare-fun b_and!258257 () Bool)

(assert (=> b!3580592 (= tp!1095912 (and (=> t!290273 result!249066) b_and!258257))))

(declare-fun e!2215310 () Bool)

(assert (=> b!3580592 (= e!2215310 (and tp!1095911 tp!1095912))))

(declare-fun e!2215313 () Bool)

(declare-fun tp!1095910 () Bool)

(declare-fun b!3580591 () Bool)

(assert (=> b!3580591 (= e!2215313 (and tp!1095910 (inv!50892 (tag!6201 (h!43019 (t!290252 rules!3307)))) (inv!50895 (transformation!5535 (h!43019 (t!290252 rules!3307)))) e!2215310))))

(declare-fun b!3580590 () Bool)

(declare-fun e!2215311 () Bool)

(declare-fun tp!1095909 () Bool)

(assert (=> b!3580590 (= e!2215311 (and e!2215313 tp!1095909))))

(assert (=> b!3580363 (= tp!1095828 e!2215311)))

(assert (= b!3580591 b!3580592))

(assert (= b!3580590 b!3580591))

(assert (= (and b!3580363 (is-Cons!37599 (t!290252 rules!3307))) b!3580590))

(declare-fun m!4074545 () Bool)

(assert (=> b!3580591 m!4074545))

(declare-fun m!4074547 () Bool)

(assert (=> b!3580591 m!4074547))

(declare-fun b!3580595 () Bool)

(declare-fun e!2215314 () Bool)

(declare-fun tp!1095915 () Bool)

(assert (=> b!3580595 (= e!2215314 tp!1095915)))

(declare-fun b!3580594 () Bool)

(declare-fun tp!1095917 () Bool)

(declare-fun tp!1095914 () Bool)

(assert (=> b!3580594 (= e!2215314 (and tp!1095917 tp!1095914))))

(declare-fun b!3580593 () Bool)

(assert (=> b!3580593 (= e!2215314 tp_is_empty!17679)))

(assert (=> b!3580374 (= tp!1095830 e!2215314)))

(declare-fun b!3580596 () Bool)

(declare-fun tp!1095916 () Bool)

(declare-fun tp!1095913 () Bool)

(assert (=> b!3580596 (= e!2215314 (and tp!1095916 tp!1095913))))

(assert (= (and b!3580374 (is-ElementMatch!10294 (regex!5535 (rule!8247 token!511)))) b!3580593))

(assert (= (and b!3580374 (is-Concat!16060 (regex!5535 (rule!8247 token!511)))) b!3580594))

(assert (= (and b!3580374 (is-Star!10294 (regex!5535 (rule!8247 token!511)))) b!3580595))

(assert (= (and b!3580374 (is-Union!10294 (regex!5535 (rule!8247 token!511)))) b!3580596))

(declare-fun b!3580601 () Bool)

(declare-fun e!2215317 () Bool)

(declare-fun tp!1095920 () Bool)

(assert (=> b!3580601 (= e!2215317 (and tp_is_empty!17679 tp!1095920))))

(assert (=> b!3580378 (= tp!1095821 e!2215317)))

(assert (= (and b!3580378 (is-Cons!37598 (originalCharacters!6249 token!511))) b!3580601))

(declare-fun b!3580604 () Bool)

(declare-fun e!2215318 () Bool)

(declare-fun tp!1095923 () Bool)

(assert (=> b!3580604 (= e!2215318 tp!1095923)))

(declare-fun b!3580603 () Bool)

(declare-fun tp!1095925 () Bool)

(declare-fun tp!1095922 () Bool)

(assert (=> b!3580603 (= e!2215318 (and tp!1095925 tp!1095922))))

(declare-fun b!3580602 () Bool)

(assert (=> b!3580602 (= e!2215318 tp_is_empty!17679)))

(assert (=> b!3580367 (= tp!1095824 e!2215318)))

(declare-fun b!3580605 () Bool)

(declare-fun tp!1095924 () Bool)

(declare-fun tp!1095921 () Bool)

(assert (=> b!3580605 (= e!2215318 (and tp!1095924 tp!1095921))))

(assert (= (and b!3580367 (is-ElementMatch!10294 (regex!5535 rule!403))) b!3580602))

(assert (= (and b!3580367 (is-Concat!16060 (regex!5535 rule!403))) b!3580603))

(assert (= (and b!3580367 (is-Star!10294 (regex!5535 rule!403))) b!3580604))

(assert (= (and b!3580367 (is-Union!10294 (regex!5535 rule!403))) b!3580605))

(declare-fun b_lambda!105819 () Bool)

(assert (= b_lambda!105813 (or (and b!3580380 b_free!91871 (= (toChars!7670 (transformation!5535 anOtherTypeRule!33)) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580373 b_free!91859 (= (toChars!7670 (transformation!5535 (h!43019 rules!3307))) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580592 b_free!91891 (= (toChars!7670 (transformation!5535 (h!43019 (t!290252 rules!3307)))) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580372 b_free!91867 (= (toChars!7670 (transformation!5535 rule!403)) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580377 b_free!91863) b_lambda!105819)))

(declare-fun b_lambda!105821 () Bool)

(assert (= b_lambda!105811 (or (and b!3580380 b_free!91871 (= (toChars!7670 (transformation!5535 anOtherTypeRule!33)) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580373 b_free!91859 (= (toChars!7670 (transformation!5535 (h!43019 rules!3307))) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580592 b_free!91891 (= (toChars!7670 (transformation!5535 (h!43019 (t!290252 rules!3307)))) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580372 b_free!91867 (= (toChars!7670 (transformation!5535 rule!403)) (toChars!7670 (transformation!5535 (rule!8247 token!511))))) (and b!3580377 b_free!91863) b_lambda!105821)))

(push 1)

(assert (not b!3580466))

(assert (not b!3580547))

(assert (not b!3580579))

(assert b_and!258235)

(assert (not b!3580558))

(assert (not b!3580605))

(assert (not tb!204301))

(assert (not d!1056027))

(assert (not b!3580603))

(assert (not b!3580440))

(assert (not b!3580559))

(assert (not b!3580468))

(assert (not b!3580471))

(assert (not b_next!92565))

(assert (not b!3580561))

(assert (not b!3580485))

(assert (not bm!259282))

(assert b_and!258231)

(assert (not b!3580465))

(assert (not b!3580590))

(assert (not b!3580581))

(assert (not b!3580490))

(assert (not d!1055991))

(assert (not b_next!92563))

(assert (not b!3580473))

(assert (not b!3580491))

(assert (not b!3580481))

(assert (not b!3580580))

(assert (not b!3580469))

(assert (not d!1056001))

(assert (not b_next!92561))

(assert (not b!3580541))

(assert (not d!1055981))

(assert (not b!3580478))

(assert (not b!3580472))

(assert (not d!1055995))

(assert (not d!1056003))

(assert (not b!3580604))

(assert (not b!3580591))

(assert (not d!1055979))

(assert (not b!3580482))

(assert (not b_next!92593))

(assert (not d!1056023))

(assert b_and!258233)

(assert (not b!3580575))

(assert (not d!1055999))

(assert b_and!258203)

(assert (not d!1055989))

(assert (not b!3580601))

(assert b_and!258191)

(assert (not d!1056033))

(assert b_and!258237)

(assert (not b!3580596))

(assert (not b_next!92575))

(assert (not b!3580576))

(assert (not b_next!92595))

(assert (not b_next!92567))

(assert (not d!1055977))

(assert (not b!3580577))

(assert (not d!1056005))

(assert b_and!258199)

(assert b_and!258255)

(assert b_and!258195)

(assert tp_is_empty!17679)

(assert (not b!3580594))

(assert (not b_next!92569))

(assert (not b_next!92573))

(assert (not b_lambda!105821))

(assert b_and!258257)

(assert (not b!3580563))

(assert (not b_next!92571))

(assert (not b!3580542))

(assert (not b!3580545))

(assert (not b!3580595))

(assert (not b_lambda!105819))

(assert (not b!3580470))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92565))

(assert b_and!258231)

(assert b_and!258235)

(assert (not b_next!92563))

(assert (not b_next!92561))

(assert (not b_next!92593))

(assert b_and!258233)

(assert b_and!258203)

(assert (not b_next!92567))

(assert (not b_next!92571))

(assert b_and!258191)

(assert b_and!258237)

(assert (not b_next!92575))

(assert (not b_next!92595))

(assert b_and!258199)

(assert b_and!258255)

(assert b_and!258195)

(assert b_and!258257)

(assert (not b_next!92569))

(assert (not b_next!92573))

(check-sat)

(pop 1)

