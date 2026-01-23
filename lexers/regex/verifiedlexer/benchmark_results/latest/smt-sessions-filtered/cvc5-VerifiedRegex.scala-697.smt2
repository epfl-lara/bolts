; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!27944 () Bool)

(assert start!27944)

(declare-fun b!261309 () Bool)

(declare-fun b_free!9709 () Bool)

(declare-fun b_next!9709 () Bool)

(assert (=> b!261309 (= b_free!9709 (not b_next!9709))))

(declare-fun tp!100467 () Bool)

(declare-fun b_and!20265 () Bool)

(assert (=> b!261309 (= tp!100467 b_and!20265)))

(declare-fun b_free!9711 () Bool)

(declare-fun b_next!9711 () Bool)

(assert (=> b!261309 (= b_free!9711 (not b_next!9711))))

(declare-fun tp!100468 () Bool)

(declare-fun b_and!20267 () Bool)

(assert (=> b!261309 (= tp!100468 b_and!20267)))

(declare-fun b!261308 () Bool)

(declare-fun b_free!9713 () Bool)

(declare-fun b_next!9713 () Bool)

(assert (=> b!261308 (= b_free!9713 (not b_next!9713))))

(declare-fun tp!100466 () Bool)

(declare-fun b_and!20269 () Bool)

(assert (=> b!261308 (= tp!100466 b_and!20269)))

(declare-fun b_free!9715 () Bool)

(declare-fun b_next!9715 () Bool)

(assert (=> b!261308 (= b_free!9715 (not b_next!9715))))

(declare-fun tp!100474 () Bool)

(declare-fun b_and!20271 () Bool)

(assert (=> b!261308 (= tp!100474 b_and!20271)))

(declare-fun b!261324 () Bool)

(declare-fun b_free!9717 () Bool)

(declare-fun b_next!9717 () Bool)

(assert (=> b!261324 (= b_free!9717 (not b_next!9717))))

(declare-fun tp!100464 () Bool)

(declare-fun b_and!20273 () Bool)

(assert (=> b!261324 (= tp!100464 b_and!20273)))

(declare-fun b_free!9719 () Bool)

(declare-fun b_next!9719 () Bool)

(assert (=> b!261324 (= b_free!9719 (not b_next!9719))))

(declare-fun tp!100471 () Bool)

(declare-fun b_and!20275 () Bool)

(assert (=> b!261324 (= tp!100471 b_and!20275)))

(declare-fun tp!100465 () Bool)

(declare-datatypes ((List!3765 0))(
  ( (Nil!3755) (Cons!3755 (h!9152 (_ BitVec 16)) (t!36999 List!3765)) )
))
(declare-datatypes ((TokenValue!738 0))(
  ( (FloatLiteralValue!1476 (text!5611 List!3765)) (TokenValueExt!737 (__x!2963 Int)) (Broken!3690 (value!24697 List!3765)) (Object!747) (End!738) (Def!738) (Underscore!738) (Match!738) (Else!738) (Error!738) (Case!738) (If!738) (Extends!738) (Abstract!738) (Class!738) (Val!738) (DelimiterValue!1476 (del!798 List!3765)) (KeywordValue!744 (value!24698 List!3765)) (CommentValue!1476 (value!24699 List!3765)) (WhitespaceValue!1476 (value!24700 List!3765)) (IndentationValue!738 (value!24701 List!3765)) (String!4771) (Int32!738) (Broken!3691 (value!24702 List!3765)) (Boolean!739) (Unit!4654) (OperatorValue!741 (op!798 List!3765)) (IdentifierValue!1476 (value!24703 List!3765)) (IdentifierValue!1477 (value!24704 List!3765)) (WhitespaceValue!1477 (value!24705 List!3765)) (True!1476) (False!1476) (Broken!3692 (value!24706 List!3765)) (Broken!3693 (value!24707 List!3765)) (True!1477) (RightBrace!738) (RightBracket!738) (Colon!738) (Null!738) (Comma!738) (LeftBracket!738) (False!1477) (LeftBrace!738) (ImaginaryLiteralValue!738 (text!5612 List!3765)) (StringLiteralValue!2214 (value!24708 List!3765)) (EOFValue!738 (value!24709 List!3765)) (IdentValue!738 (value!24710 List!3765)) (DelimiterValue!1477 (value!24711 List!3765)) (DedentValue!738 (value!24712 List!3765)) (NewLineValue!738 (value!24713 List!3765)) (IntegerValue!2214 (value!24714 (_ BitVec 32)) (text!5613 List!3765)) (IntegerValue!2215 (value!24715 Int) (text!5614 List!3765)) (Times!738) (Or!738) (Equal!738) (Minus!738) (Broken!3694 (value!24716 List!3765)) (And!738) (Div!738) (LessEqual!738) (Mod!738) (Concat!1678) (Not!738) (Plus!738) (SpaceValue!738 (value!24717 List!3765)) (IntegerValue!2216 (value!24718 Int) (text!5615 List!3765)) (StringLiteralValue!2215 (text!5616 List!3765)) (FloatLiteralValue!1477 (text!5617 List!3765)) (BytesLiteralValue!738 (value!24719 List!3765)) (CommentValue!1477 (value!24720 List!3765)) (StringLiteralValue!2216 (value!24721 List!3765)) (ErrorTokenValue!738 (msg!799 List!3765)) )
))
(declare-datatypes ((C!2802 0))(
  ( (C!2803 (val!1287 Int)) )
))
(declare-datatypes ((List!3766 0))(
  ( (Nil!3756) (Cons!3756 (h!9153 C!2802) (t!37000 List!3766)) )
))
(declare-datatypes ((IArray!2509 0))(
  ( (IArray!2510 (innerList!1312 List!3766)) )
))
(declare-datatypes ((Conc!1254 0))(
  ( (Node!1254 (left!3087 Conc!1254) (right!3417 Conc!1254) (csize!2738 Int) (cheight!1465 Int)) (Leaf!1952 (xs!3853 IArray!2509) (csize!2739 Int)) (Empty!1254) )
))
(declare-datatypes ((BalanceConc!2516 0))(
  ( (BalanceConc!2517 (c!49414 Conc!1254)) )
))
(declare-datatypes ((TokenValueInjection!1248 0))(
  ( (TokenValueInjection!1249 (toValue!1439 Int) (toChars!1298 Int)) )
))
(declare-datatypes ((Regex!940 0))(
  ( (ElementMatch!940 (c!49415 C!2802)) (Concat!1679 (regOne!2392 Regex!940) (regTwo!2392 Regex!940)) (EmptyExpr!940) (Star!940 (reg!1269 Regex!940)) (EmptyLang!940) (Union!940 (regOne!2393 Regex!940) (regTwo!2393 Regex!940)) )
))
(declare-datatypes ((String!4772 0))(
  ( (String!4773 (value!24722 String)) )
))
(declare-datatypes ((Rule!1232 0))(
  ( (Rule!1233 (regex!716 Regex!940) (tag!926 String!4772) (isSeparator!716 Bool) (transformation!716 TokenValueInjection!1248)) )
))
(declare-datatypes ((Token!1176 0))(
  ( (Token!1177 (value!24723 TokenValue!738) (rule!1301 Rule!1232) (size!2986 Int) (originalCharacters!759 List!3766)) )
))
(declare-fun separatorToken!170 () Token!1176)

(declare-fun b!261305 () Bool)

(declare-fun e!162216 () Bool)

(declare-fun e!162220 () Bool)

(declare-fun inv!4637 (String!4772) Bool)

(declare-fun inv!4640 (TokenValueInjection!1248) Bool)

(assert (=> b!261305 (= e!162220 (and tp!100465 (inv!4637 (tag!926 (rule!1301 separatorToken!170))) (inv!4640 (transformation!716 (rule!1301 separatorToken!170))) e!162216))))

(declare-fun b!261306 () Bool)

(declare-fun res!120242 () Bool)

(declare-fun e!162224 () Bool)

(assert (=> b!261306 (=> (not res!120242) (not e!162224))))

(declare-datatypes ((List!3767 0))(
  ( (Nil!3757) (Cons!3757 (h!9154 Token!1176) (t!37001 List!3767)) )
))
(declare-fun tokens!465 () List!3767)

(declare-fun lambda!8733 () Int)

(declare-fun forall!922 (List!3767 Int) Bool)

(assert (=> b!261306 (= res!120242 (forall!922 tokens!465 lambda!8733))))

(declare-fun e!162222 () Bool)

(declare-fun b!261307 () Bool)

(declare-fun e!162215 () Bool)

(declare-fun tp!100469 () Bool)

(assert (=> b!261307 (= e!162222 (and tp!100469 (inv!4637 (tag!926 (rule!1301 (h!9154 tokens!465)))) (inv!4640 (transformation!716 (rule!1301 (h!9154 tokens!465)))) e!162215))))

(declare-fun e!162228 () Bool)

(assert (=> b!261308 (= e!162228 (and tp!100466 tp!100474))))

(assert (=> b!261309 (= e!162215 (and tp!100467 tp!100468))))

(declare-fun b!261310 () Bool)

(declare-fun res!120245 () Bool)

(assert (=> b!261310 (=> (not res!120245) (not e!162224))))

(assert (=> b!261310 (= res!120245 (is-Cons!3757 tokens!465))))

(declare-fun e!162214 () Bool)

(declare-fun tp!100473 () Bool)

(declare-fun b!261311 () Bool)

(declare-fun e!162226 () Bool)

(declare-fun inv!4641 (Token!1176) Bool)

(assert (=> b!261311 (= e!162214 (and (inv!4641 (h!9154 tokens!465)) e!162226 tp!100473))))

(declare-fun b!261312 () Bool)

(declare-fun res!120241 () Bool)

(assert (=> b!261312 (=> (not res!120241) (not e!162224))))

(declare-datatypes ((List!3768 0))(
  ( (Nil!3758) (Cons!3758 (h!9155 Rule!1232) (t!37002 List!3768)) )
))
(declare-fun rules!1920 () List!3768)

(declare-datatypes ((LexerInterface!602 0))(
  ( (LexerInterfaceExt!599 (__x!2964 Int)) (Lexer!600) )
))
(declare-fun thiss!17480 () LexerInterface!602)

(declare-fun rulesProduceIndividualToken!351 (LexerInterface!602 List!3768 Token!1176) Bool)

(assert (=> b!261312 (= res!120241 (rulesProduceIndividualToken!351 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!261313 () Bool)

(declare-fun e!162223 () Bool)

(declare-fun e!162218 () Bool)

(declare-fun tp!100476 () Bool)

(assert (=> b!261313 (= e!162223 (and e!162218 tp!100476))))

(declare-fun b!261314 () Bool)

(declare-fun res!120243 () Bool)

(assert (=> b!261314 (=> (not res!120243) (not e!162224))))

(assert (=> b!261314 (= res!120243 (isSeparator!716 (rule!1301 separatorToken!170)))))

(declare-fun tp!100472 () Bool)

(declare-fun b!261315 () Bool)

(declare-fun inv!21 (TokenValue!738) Bool)

(assert (=> b!261315 (= e!162226 (and (inv!21 (value!24723 (h!9154 tokens!465))) e!162222 tp!100472))))

(declare-fun b!261316 () Bool)

(declare-fun res!120249 () Bool)

(declare-fun e!162217 () Bool)

(assert (=> b!261316 (=> (not res!120249) (not e!162217))))

(declare-fun isEmpty!2357 (List!3768) Bool)

(assert (=> b!261316 (= res!120249 (not (isEmpty!2357 rules!1920)))))

(declare-fun res!120246 () Bool)

(assert (=> start!27944 (=> (not res!120246) (not e!162217))))

(assert (=> start!27944 (= res!120246 (is-Lexer!600 thiss!17480))))

(assert (=> start!27944 e!162217))

(assert (=> start!27944 true))

(assert (=> start!27944 e!162223))

(declare-fun e!162225 () Bool)

(assert (=> start!27944 (and (inv!4641 separatorToken!170) e!162225)))

(assert (=> start!27944 e!162214))

(declare-fun b!261317 () Bool)

(declare-fun res!120247 () Bool)

(assert (=> b!261317 (=> (not res!120247) (not e!162224))))

(declare-fun sepAndNonSepRulesDisjointChars!305 (List!3768 List!3768) Bool)

(assert (=> b!261317 (= res!120247 (sepAndNonSepRulesDisjointChars!305 rules!1920 rules!1920))))

(declare-fun b!261318 () Bool)

(assert (=> b!261318 (= e!162217 e!162224)))

(declare-fun res!120248 () Bool)

(assert (=> b!261318 (=> (not res!120248) (not e!162224))))

(declare-datatypes ((IArray!2511 0))(
  ( (IArray!2512 (innerList!1313 List!3767)) )
))
(declare-datatypes ((Conc!1255 0))(
  ( (Node!1255 (left!3088 Conc!1255) (right!3418 Conc!1255) (csize!2740 Int) (cheight!1466 Int)) (Leaf!1953 (xs!3854 IArray!2511) (csize!2741 Int)) (Empty!1255) )
))
(declare-datatypes ((BalanceConc!2518 0))(
  ( (BalanceConc!2519 (c!49416 Conc!1255)) )
))
(declare-fun lt!106499 () BalanceConc!2518)

(declare-fun rulesProduceEachTokenIndividually!394 (LexerInterface!602 List!3768 BalanceConc!2518) Bool)

(assert (=> b!261318 (= res!120248 (rulesProduceEachTokenIndividually!394 thiss!17480 rules!1920 lt!106499))))

(declare-fun seqFromList!799 (List!3767) BalanceConc!2518)

(assert (=> b!261318 (= lt!106499 (seqFromList!799 tokens!465))))

(declare-fun b!261319 () Bool)

(declare-fun e!162227 () Bool)

(assert (=> b!261319 (= e!162224 e!162227)))

(declare-fun res!120244 () Bool)

(assert (=> b!261319 (=> (not res!120244) (not e!162227))))

(declare-fun lt!106497 () List!3766)

(declare-fun lt!106501 () List!3766)

(assert (=> b!261319 (= res!120244 (= lt!106497 lt!106501))))

(declare-fun list!1512 (BalanceConc!2516) List!3766)

(declare-fun printWithSeparatorTokenWhenNeededRec!277 (LexerInterface!602 List!3768 BalanceConc!2518 Token!1176 Int) BalanceConc!2516)

(assert (=> b!261319 (= lt!106501 (list!1512 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!285 (LexerInterface!602 List!3768 List!3767 Token!1176) List!3766)

(assert (=> b!261319 (= lt!106497 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!261320 () Bool)

(declare-fun tp!100475 () Bool)

(assert (=> b!261320 (= e!162225 (and (inv!21 (value!24723 separatorToken!170)) e!162220 tp!100475))))

(declare-fun lt!106498 () List!3766)

(declare-fun b!261321 () Bool)

(assert (=> b!261321 (= e!162227 (not (= lt!106498 (list!1512 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!106502 () List!3766)

(declare-fun lt!106503 () List!3766)

(declare-fun lt!106500 () List!3766)

(declare-fun ++!965 (List!3766 List!3766) List!3766)

(assert (=> b!261321 (= (++!965 (++!965 lt!106502 lt!106503) lt!106498) (++!965 lt!106502 lt!106500))))

(declare-datatypes ((Unit!4655 0))(
  ( (Unit!4656) )
))
(declare-fun lt!106504 () Unit!4655)

(declare-fun lemmaConcatAssociativity!413 (List!3766 List!3766 List!3766) Unit!4655)

(assert (=> b!261321 (= lt!106504 (lemmaConcatAssociativity!413 lt!106502 lt!106503 lt!106498))))

(declare-fun charsOf!361 (Token!1176) BalanceConc!2516)

(assert (=> b!261321 (= lt!106502 (list!1512 (charsOf!361 (h!9154 tokens!465))))))

(assert (=> b!261321 (= lt!106500 (++!965 lt!106503 lt!106498))))

(assert (=> b!261321 (= lt!106498 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 tokens!465) separatorToken!170))))

(assert (=> b!261321 (= lt!106503 (list!1512 (charsOf!361 separatorToken!170)))))

(declare-fun b!261322 () Bool)

(declare-fun res!120240 () Bool)

(assert (=> b!261322 (=> (not res!120240) (not e!162227))))

(declare-fun seqFromList!800 (List!3766) BalanceConc!2516)

(assert (=> b!261322 (= res!120240 (= (list!1512 (seqFromList!800 lt!106497)) lt!106501))))

(declare-fun b!261323 () Bool)

(declare-fun res!120239 () Bool)

(assert (=> b!261323 (=> (not res!120239) (not e!162217))))

(declare-fun rulesInvariant!568 (LexerInterface!602 List!3768) Bool)

(assert (=> b!261323 (= res!120239 (rulesInvariant!568 thiss!17480 rules!1920))))

(assert (=> b!261324 (= e!162216 (and tp!100464 tp!100471))))

(declare-fun tp!100470 () Bool)

(declare-fun b!261325 () Bool)

(assert (=> b!261325 (= e!162218 (and tp!100470 (inv!4637 (tag!926 (h!9155 rules!1920))) (inv!4640 (transformation!716 (h!9155 rules!1920))) e!162228))))

(assert (= (and start!27944 res!120246) b!261316))

(assert (= (and b!261316 res!120249) b!261323))

(assert (= (and b!261323 res!120239) b!261318))

(assert (= (and b!261318 res!120248) b!261312))

(assert (= (and b!261312 res!120241) b!261314))

(assert (= (and b!261314 res!120243) b!261306))

(assert (= (and b!261306 res!120242) b!261317))

(assert (= (and b!261317 res!120247) b!261310))

(assert (= (and b!261310 res!120245) b!261319))

(assert (= (and b!261319 res!120244) b!261322))

(assert (= (and b!261322 res!120240) b!261321))

(assert (= b!261325 b!261308))

(assert (= b!261313 b!261325))

(assert (= (and start!27944 (is-Cons!3758 rules!1920)) b!261313))

(assert (= b!261305 b!261324))

(assert (= b!261320 b!261305))

(assert (= start!27944 b!261320))

(assert (= b!261307 b!261309))

(assert (= b!261315 b!261307))

(assert (= b!261311 b!261315))

(assert (= (and start!27944 (is-Cons!3757 tokens!465)) b!261311))

(declare-fun m!324483 () Bool)

(assert (=> b!261321 m!324483))

(declare-fun m!324485 () Bool)

(assert (=> b!261321 m!324485))

(declare-fun m!324487 () Bool)

(assert (=> b!261321 m!324487))

(declare-fun m!324489 () Bool)

(assert (=> b!261321 m!324489))

(declare-fun m!324491 () Bool)

(assert (=> b!261321 m!324491))

(assert (=> b!261321 m!324487))

(assert (=> b!261321 m!324483))

(declare-fun m!324493 () Bool)

(assert (=> b!261321 m!324493))

(declare-fun m!324495 () Bool)

(assert (=> b!261321 m!324495))

(declare-fun m!324497 () Bool)

(assert (=> b!261321 m!324497))

(declare-fun m!324499 () Bool)

(assert (=> b!261321 m!324499))

(assert (=> b!261321 m!324495))

(declare-fun m!324501 () Bool)

(assert (=> b!261321 m!324501))

(assert (=> b!261321 m!324497))

(assert (=> b!261321 m!324493))

(declare-fun m!324503 () Bool)

(assert (=> b!261321 m!324503))

(declare-fun m!324505 () Bool)

(assert (=> b!261321 m!324505))

(declare-fun m!324507 () Bool)

(assert (=> b!261321 m!324507))

(declare-fun m!324509 () Bool)

(assert (=> b!261319 m!324509))

(assert (=> b!261319 m!324509))

(declare-fun m!324511 () Bool)

(assert (=> b!261319 m!324511))

(declare-fun m!324513 () Bool)

(assert (=> b!261319 m!324513))

(declare-fun m!324515 () Bool)

(assert (=> b!261306 m!324515))

(declare-fun m!324517 () Bool)

(assert (=> b!261305 m!324517))

(declare-fun m!324519 () Bool)

(assert (=> b!261305 m!324519))

(declare-fun m!324521 () Bool)

(assert (=> b!261312 m!324521))

(declare-fun m!324523 () Bool)

(assert (=> b!261325 m!324523))

(declare-fun m!324525 () Bool)

(assert (=> b!261325 m!324525))

(declare-fun m!324527 () Bool)

(assert (=> b!261315 m!324527))

(declare-fun m!324529 () Bool)

(assert (=> b!261311 m!324529))

(declare-fun m!324531 () Bool)

(assert (=> b!261317 m!324531))

(declare-fun m!324533 () Bool)

(assert (=> b!261307 m!324533))

(declare-fun m!324535 () Bool)

(assert (=> b!261307 m!324535))

(declare-fun m!324537 () Bool)

(assert (=> b!261316 m!324537))

(declare-fun m!324539 () Bool)

(assert (=> b!261318 m!324539))

(declare-fun m!324541 () Bool)

(assert (=> b!261318 m!324541))

(declare-fun m!324543 () Bool)

(assert (=> b!261323 m!324543))

(declare-fun m!324545 () Bool)

(assert (=> b!261320 m!324545))

(declare-fun m!324547 () Bool)

(assert (=> b!261322 m!324547))

(assert (=> b!261322 m!324547))

(declare-fun m!324549 () Bool)

(assert (=> b!261322 m!324549))

(declare-fun m!324551 () Bool)

(assert (=> start!27944 m!324551))

(push 1)

(assert b_and!20275)

(assert b_and!20267)

(assert (not b!261307))

(assert (not b_next!9719))

(assert b_and!20271)

(assert (not b!261306))

(assert (not start!27944))

(assert (not b!261315))

(assert (not b!261312))

(assert (not b!261316))

(assert b_and!20265)

(assert (not b!261323))

(assert (not b!261305))

(assert b_and!20269)

(assert (not b_next!9713))

(assert (not b!261311))

(assert (not b_next!9711))

(assert (not b!261313))

(assert (not b!261319))

(assert (not b_next!9717))

(assert (not b!261318))

(assert (not b_next!9715))

(assert b_and!20273)

(assert (not b!261320))

(assert (not b!261317))

(assert (not b_next!9709))

(assert (not b!261325))

(assert (not b!261321))

(assert (not b!261322))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20275)

(assert b_and!20269)

(assert b_and!20267)

(assert (not b_next!9719))

(assert (not b_next!9713))

(assert b_and!20271)

(assert (not b_next!9711))

(assert b_and!20265)

(assert (not b_next!9717))

(assert (not b_next!9715))

(assert b_and!20273)

(assert (not b_next!9709))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!74846 () Bool)

(assert (=> d!74846 (= (inv!4637 (tag!926 (rule!1301 separatorToken!170))) (= (mod (str.len (value!24722 (tag!926 (rule!1301 separatorToken!170)))) 2) 0))))

(assert (=> b!261305 d!74846))

(declare-fun d!74848 () Bool)

(declare-fun res!120289 () Bool)

(declare-fun e!162287 () Bool)

(assert (=> d!74848 (=> (not res!120289) (not e!162287))))

(declare-fun semiInverseModEq!246 (Int Int) Bool)

(assert (=> d!74848 (= res!120289 (semiInverseModEq!246 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))))))

(assert (=> d!74848 (= (inv!4640 (transformation!716 (rule!1301 separatorToken!170))) e!162287)))

(declare-fun b!261391 () Bool)

(declare-fun equivClasses!229 (Int Int) Bool)

(assert (=> b!261391 (= e!162287 (equivClasses!229 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))))))

(assert (= (and d!74848 res!120289) b!261391))

(declare-fun m!324623 () Bool)

(assert (=> d!74848 m!324623))

(declare-fun m!324625 () Bool)

(assert (=> b!261391 m!324625))

(assert (=> b!261305 d!74848))

(declare-fun d!74850 () Bool)

(assert (=> d!74850 (= (isEmpty!2357 rules!1920) (is-Nil!3758 rules!1920))))

(assert (=> b!261316 d!74850))

(declare-fun d!74852 () Bool)

(declare-fun res!120294 () Bool)

(declare-fun e!162290 () Bool)

(assert (=> d!74852 (=> (not res!120294) (not e!162290))))

(declare-fun isEmpty!2359 (List!3766) Bool)

(assert (=> d!74852 (= res!120294 (not (isEmpty!2359 (originalCharacters!759 separatorToken!170))))))

(assert (=> d!74852 (= (inv!4641 separatorToken!170) e!162290)))

(declare-fun b!261396 () Bool)

(declare-fun res!120295 () Bool)

(assert (=> b!261396 (=> (not res!120295) (not e!162290))))

(declare-fun dynLambda!1888 (Int TokenValue!738) BalanceConc!2516)

(assert (=> b!261396 (= res!120295 (= (originalCharacters!759 separatorToken!170) (list!1512 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(declare-fun b!261397 () Bool)

(declare-fun size!2988 (List!3766) Int)

(assert (=> b!261397 (= e!162290 (= (size!2986 separatorToken!170) (size!2988 (originalCharacters!759 separatorToken!170))))))

(assert (= (and d!74852 res!120294) b!261396))

(assert (= (and b!261396 res!120295) b!261397))

(declare-fun b_lambda!8015 () Bool)

(assert (=> (not b_lambda!8015) (not b!261396)))

(declare-fun t!37008 () Bool)

(declare-fun tb!14137 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37008) tb!14137))

(declare-fun b!261402 () Bool)

(declare-fun e!162293 () Bool)

(declare-fun tp!100518 () Bool)

(declare-fun inv!4644 (Conc!1254) Bool)

(assert (=> b!261402 (= e!162293 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))) tp!100518))))

(declare-fun result!17608 () Bool)

(declare-fun inv!4645 (BalanceConc!2516) Bool)

(assert (=> tb!14137 (= result!17608 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))) e!162293))))

(assert (= tb!14137 b!261402))

(declare-fun m!324627 () Bool)

(assert (=> b!261402 m!324627))

(declare-fun m!324629 () Bool)

(assert (=> tb!14137 m!324629))

(assert (=> b!261396 t!37008))

(declare-fun b_and!20289 () Bool)

(assert (= b_and!20267 (and (=> t!37008 result!17608) b_and!20289)))

(declare-fun tb!14139 () Bool)

(declare-fun t!37010 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37010) tb!14139))

(declare-fun result!17612 () Bool)

(assert (= result!17612 result!17608))

(assert (=> b!261396 t!37010))

(declare-fun b_and!20291 () Bool)

(assert (= b_and!20271 (and (=> t!37010 result!17612) b_and!20291)))

(declare-fun t!37012 () Bool)

(declare-fun tb!14141 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37012) tb!14141))

(declare-fun result!17614 () Bool)

(assert (= result!17614 result!17608))

(assert (=> b!261396 t!37012))

(declare-fun b_and!20293 () Bool)

(assert (= b_and!20275 (and (=> t!37012 result!17614) b_and!20293)))

(declare-fun m!324631 () Bool)

(assert (=> d!74852 m!324631))

(declare-fun m!324633 () Bool)

(assert (=> b!261396 m!324633))

(assert (=> b!261396 m!324633))

(declare-fun m!324635 () Bool)

(assert (=> b!261396 m!324635))

(declare-fun m!324637 () Bool)

(assert (=> b!261397 m!324637))

(assert (=> start!27944 d!74852))

(declare-fun d!74854 () Bool)

(assert (=> d!74854 (= (inv!4637 (tag!926 (h!9155 rules!1920))) (= (mod (str.len (value!24722 (tag!926 (h!9155 rules!1920)))) 2) 0))))

(assert (=> b!261325 d!74854))

(declare-fun d!74856 () Bool)

(declare-fun res!120296 () Bool)

(declare-fun e!162294 () Bool)

(assert (=> d!74856 (=> (not res!120296) (not e!162294))))

(assert (=> d!74856 (= res!120296 (semiInverseModEq!246 (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))))))

(assert (=> d!74856 (= (inv!4640 (transformation!716 (h!9155 rules!1920))) e!162294)))

(declare-fun b!261403 () Bool)

(assert (=> b!261403 (= e!162294 (equivClasses!229 (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))))))

(assert (= (and d!74856 res!120296) b!261403))

(declare-fun m!324639 () Bool)

(assert (=> d!74856 m!324639))

(declare-fun m!324641 () Bool)

(assert (=> b!261403 m!324641))

(assert (=> b!261325 d!74856))

(declare-fun d!74858 () Bool)

(declare-fun c!49425 () Bool)

(assert (=> d!74858 (= c!49425 (is-IntegerValue!2214 (value!24723 (h!9154 tokens!465))))))

(declare-fun e!162303 () Bool)

(assert (=> d!74858 (= (inv!21 (value!24723 (h!9154 tokens!465))) e!162303)))

(declare-fun b!261414 () Bool)

(declare-fun inv!16 (TokenValue!738) Bool)

(assert (=> b!261414 (= e!162303 (inv!16 (value!24723 (h!9154 tokens!465))))))

(declare-fun b!261415 () Bool)

(declare-fun e!162301 () Bool)

(assert (=> b!261415 (= e!162303 e!162301)))

(declare-fun c!49426 () Bool)

(assert (=> b!261415 (= c!49426 (is-IntegerValue!2215 (value!24723 (h!9154 tokens!465))))))

(declare-fun b!261416 () Bool)

(declare-fun res!120299 () Bool)

(declare-fun e!162302 () Bool)

(assert (=> b!261416 (=> res!120299 e!162302)))

(assert (=> b!261416 (= res!120299 (not (is-IntegerValue!2216 (value!24723 (h!9154 tokens!465)))))))

(assert (=> b!261416 (= e!162301 e!162302)))

(declare-fun b!261417 () Bool)

(declare-fun inv!17 (TokenValue!738) Bool)

(assert (=> b!261417 (= e!162301 (inv!17 (value!24723 (h!9154 tokens!465))))))

(declare-fun b!261418 () Bool)

(declare-fun inv!15 (TokenValue!738) Bool)

(assert (=> b!261418 (= e!162302 (inv!15 (value!24723 (h!9154 tokens!465))))))

(assert (= (and d!74858 c!49425) b!261414))

(assert (= (and d!74858 (not c!49425)) b!261415))

(assert (= (and b!261415 c!49426) b!261417))

(assert (= (and b!261415 (not c!49426)) b!261416))

(assert (= (and b!261416 (not res!120299)) b!261418))

(declare-fun m!324643 () Bool)

(assert (=> b!261414 m!324643))

(declare-fun m!324645 () Bool)

(assert (=> b!261417 m!324645))

(declare-fun m!324647 () Bool)

(assert (=> b!261418 m!324647))

(assert (=> b!261315 d!74858))

(declare-fun d!74860 () Bool)

(declare-fun list!1514 (Conc!1254) List!3766)

(assert (=> d!74860 (= (list!1512 (seqFromList!800 lt!106497)) (list!1514 (c!49414 (seqFromList!800 lt!106497))))))

(declare-fun bs!28403 () Bool)

(assert (= bs!28403 d!74860))

(declare-fun m!324649 () Bool)

(assert (=> bs!28403 m!324649))

(assert (=> b!261322 d!74860))

(declare-fun d!74862 () Bool)

(declare-fun fromListB!294 (List!3766) BalanceConc!2516)

(assert (=> d!74862 (= (seqFromList!800 lt!106497) (fromListB!294 lt!106497))))

(declare-fun bs!28404 () Bool)

(assert (= bs!28404 d!74862))

(declare-fun m!324651 () Bool)

(assert (=> bs!28404 m!324651))

(assert (=> b!261322 d!74862))

(declare-fun d!74864 () Bool)

(declare-fun lt!106536 () Bool)

(declare-fun e!162314 () Bool)

(assert (=> d!74864 (= lt!106536 e!162314)))

(declare-fun res!120316 () Bool)

(assert (=> d!74864 (=> (not res!120316) (not e!162314))))

(declare-fun list!1515 (BalanceConc!2518) List!3767)

(declare-datatypes ((tuple2!4200 0))(
  ( (tuple2!4201 (_1!2316 BalanceConc!2518) (_2!2316 BalanceConc!2516)) )
))
(declare-fun lex!396 (LexerInterface!602 List!3768 BalanceConc!2516) tuple2!4200)

(declare-fun print!327 (LexerInterface!602 BalanceConc!2518) BalanceConc!2516)

(declare-fun singletonSeq!262 (Token!1176) BalanceConc!2518)

(assert (=> d!74864 (= res!120316 (= (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))) (list!1515 (singletonSeq!262 separatorToken!170))))))

(declare-fun e!162315 () Bool)

(assert (=> d!74864 (= lt!106536 e!162315)))

(declare-fun res!120318 () Bool)

(assert (=> d!74864 (=> (not res!120318) (not e!162315))))

(declare-fun lt!106537 () tuple2!4200)

(declare-fun size!2989 (BalanceConc!2518) Int)

(assert (=> d!74864 (= res!120318 (= (size!2989 (_1!2316 lt!106537)) 1))))

(assert (=> d!74864 (= lt!106537 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))))

(assert (=> d!74864 (not (isEmpty!2357 rules!1920))))

(assert (=> d!74864 (= (rulesProduceIndividualToken!351 thiss!17480 rules!1920 separatorToken!170) lt!106536)))

(declare-fun b!261437 () Bool)

(declare-fun res!120317 () Bool)

(assert (=> b!261437 (=> (not res!120317) (not e!162315))))

(declare-fun apply!731 (BalanceConc!2518 Int) Token!1176)

(assert (=> b!261437 (= res!120317 (= (apply!731 (_1!2316 lt!106537) 0) separatorToken!170))))

(declare-fun b!261438 () Bool)

(declare-fun isEmpty!2360 (BalanceConc!2516) Bool)

(assert (=> b!261438 (= e!162315 (isEmpty!2360 (_2!2316 lt!106537)))))

(declare-fun b!261439 () Bool)

(assert (=> b!261439 (= e!162314 (isEmpty!2360 (_2!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))))))

(assert (= (and d!74864 res!120318) b!261437))

(assert (= (and b!261437 res!120317) b!261438))

(assert (= (and d!74864 res!120316) b!261439))

(declare-fun m!324673 () Bool)

(assert (=> d!74864 m!324673))

(assert (=> d!74864 m!324673))

(declare-fun m!324675 () Bool)

(assert (=> d!74864 m!324675))

(declare-fun m!324677 () Bool)

(assert (=> d!74864 m!324677))

(declare-fun m!324679 () Bool)

(assert (=> d!74864 m!324679))

(declare-fun m!324681 () Bool)

(assert (=> d!74864 m!324681))

(assert (=> d!74864 m!324537))

(assert (=> d!74864 m!324673))

(assert (=> d!74864 m!324677))

(declare-fun m!324683 () Bool)

(assert (=> d!74864 m!324683))

(declare-fun m!324685 () Bool)

(assert (=> b!261437 m!324685))

(declare-fun m!324687 () Bool)

(assert (=> b!261438 m!324687))

(assert (=> b!261439 m!324673))

(assert (=> b!261439 m!324673))

(assert (=> b!261439 m!324677))

(assert (=> b!261439 m!324677))

(assert (=> b!261439 m!324679))

(declare-fun m!324689 () Bool)

(assert (=> b!261439 m!324689))

(assert (=> b!261312 d!74864))

(declare-fun d!74876 () Bool)

(declare-fun res!120321 () Bool)

(declare-fun e!162318 () Bool)

(assert (=> d!74876 (=> (not res!120321) (not e!162318))))

(declare-fun rulesValid!212 (LexerInterface!602 List!3768) Bool)

(assert (=> d!74876 (= res!120321 (rulesValid!212 thiss!17480 rules!1920))))

(assert (=> d!74876 (= (rulesInvariant!568 thiss!17480 rules!1920) e!162318)))

(declare-fun b!261442 () Bool)

(declare-datatypes ((List!3773 0))(
  ( (Nil!3763) (Cons!3763 (h!9160 String!4772) (t!37056 List!3773)) )
))
(declare-fun noDuplicateTag!212 (LexerInterface!602 List!3768 List!3773) Bool)

(assert (=> b!261442 (= e!162318 (noDuplicateTag!212 thiss!17480 rules!1920 Nil!3763))))

(assert (= (and d!74876 res!120321) b!261442))

(declare-fun m!324691 () Bool)

(assert (=> d!74876 m!324691))

(declare-fun m!324693 () Bool)

(assert (=> b!261442 m!324693))

(assert (=> b!261323 d!74876))

(declare-fun d!74878 () Bool)

(assert (=> d!74878 (= (list!1512 (charsOf!361 separatorToken!170)) (list!1514 (c!49414 (charsOf!361 separatorToken!170))))))

(declare-fun bs!28408 () Bool)

(assert (= bs!28408 d!74878))

(declare-fun m!324695 () Bool)

(assert (=> bs!28408 m!324695))

(assert (=> b!261321 d!74878))

(declare-fun d!74880 () Bool)

(assert (=> d!74880 (= (list!1512 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0)) (list!1514 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!28409 () Bool)

(assert (= bs!28409 d!74880))

(declare-fun m!324697 () Bool)

(assert (=> bs!28409 m!324697))

(assert (=> b!261321 d!74880))

(declare-fun b!261451 () Bool)

(declare-fun e!162323 () List!3766)

(assert (=> b!261451 (= e!162323 lt!106503)))

(declare-fun lt!106540 () List!3766)

(declare-fun b!261454 () Bool)

(declare-fun e!162324 () Bool)

(assert (=> b!261454 (= e!162324 (or (not (= lt!106503 Nil!3756)) (= lt!106540 lt!106502)))))

(declare-fun d!74882 () Bool)

(assert (=> d!74882 e!162324))

(declare-fun res!120327 () Bool)

(assert (=> d!74882 (=> (not res!120327) (not e!162324))))

(declare-fun content!530 (List!3766) (Set C!2802))

(assert (=> d!74882 (= res!120327 (= (content!530 lt!106540) (set.union (content!530 lt!106502) (content!530 lt!106503))))))

(assert (=> d!74882 (= lt!106540 e!162323)))

(declare-fun c!49432 () Bool)

(assert (=> d!74882 (= c!49432 (is-Nil!3756 lt!106502))))

(assert (=> d!74882 (= (++!965 lt!106502 lt!106503) lt!106540)))

(declare-fun b!261452 () Bool)

(assert (=> b!261452 (= e!162323 (Cons!3756 (h!9153 lt!106502) (++!965 (t!37000 lt!106502) lt!106503)))))

(declare-fun b!261453 () Bool)

(declare-fun res!120326 () Bool)

(assert (=> b!261453 (=> (not res!120326) (not e!162324))))

(assert (=> b!261453 (= res!120326 (= (size!2988 lt!106540) (+ (size!2988 lt!106502) (size!2988 lt!106503))))))

(assert (= (and d!74882 c!49432) b!261451))

(assert (= (and d!74882 (not c!49432)) b!261452))

(assert (= (and d!74882 res!120327) b!261453))

(assert (= (and b!261453 res!120326) b!261454))

(declare-fun m!324699 () Bool)

(assert (=> d!74882 m!324699))

(declare-fun m!324701 () Bool)

(assert (=> d!74882 m!324701))

(declare-fun m!324703 () Bool)

(assert (=> d!74882 m!324703))

(declare-fun m!324705 () Bool)

(assert (=> b!261452 m!324705))

(declare-fun m!324707 () Bool)

(assert (=> b!261453 m!324707))

(declare-fun m!324709 () Bool)

(assert (=> b!261453 m!324709))

(declare-fun m!324711 () Bool)

(assert (=> b!261453 m!324711))

(assert (=> b!261321 d!74882))

(declare-fun bs!28410 () Bool)

(declare-fun b!261477 () Bool)

(assert (= bs!28410 (and b!261477 b!261306)))

(declare-fun lambda!8739 () Int)

(assert (=> bs!28410 (not (= lambda!8739 lambda!8733))))

(declare-fun b!261493 () Bool)

(declare-fun e!162347 () Bool)

(assert (=> b!261493 (= e!162347 true)))

(declare-fun b!261492 () Bool)

(declare-fun e!162346 () Bool)

(assert (=> b!261492 (= e!162346 e!162347)))

(declare-fun b!261491 () Bool)

(declare-fun e!162345 () Bool)

(assert (=> b!261491 (= e!162345 e!162346)))

(assert (=> b!261477 e!162345))

(assert (= b!261492 b!261493))

(assert (= b!261491 b!261492))

(assert (= (and b!261477 (is-Cons!3758 rules!1920)) b!261491))

(declare-fun order!2845 () Int)

(declare-fun order!2843 () Int)

(declare-fun dynLambda!1889 (Int Int) Int)

(declare-fun dynLambda!1890 (Int Int) Int)

(assert (=> b!261493 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8739))))

(declare-fun order!2847 () Int)

(declare-fun dynLambda!1891 (Int Int) Int)

(assert (=> b!261493 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8739))))

(assert (=> b!261477 true))

(declare-fun b!261475 () Bool)

(declare-fun e!162337 () List!3766)

(declare-fun call!13968 () List!3766)

(assert (=> b!261475 (= e!162337 call!13968)))

(declare-fun b!261476 () Bool)

(declare-fun e!162335 () List!3766)

(declare-fun lt!106560 () List!3766)

(assert (=> b!261476 (= e!162335 (++!965 call!13968 lt!106560))))

(declare-fun call!13971 () BalanceConc!2516)

(declare-fun c!49443 () Bool)

(declare-fun call!13967 () BalanceConc!2516)

(declare-fun bm!13962 () Bool)

(declare-fun call!13969 () List!3766)

(assert (=> bm!13962 (= call!13969 (list!1512 (ite c!49443 call!13967 call!13971)))))

(declare-fun bm!13963 () Bool)

(assert (=> bm!13963 (= call!13971 call!13967)))

(declare-fun b!261478 () Bool)

(assert (=> b!261478 (= e!162335 Nil!3756)))

(declare-fun printTailRec!290 (LexerInterface!602 BalanceConc!2518 Int BalanceConc!2516) BalanceConc!2516)

(assert (=> b!261478 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465)))) (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106555 () Unit!4655)

(declare-fun Unit!4660 () Unit!4655)

(assert (=> b!261478 (= lt!106555 Unit!4660)))

(declare-fun lt!106557 () Unit!4655)

(declare-fun call!13970 () List!3766)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 (LexerInterface!602 List!3768 List!3766 List!3766) Unit!4655)

(assert (=> b!261478 (= lt!106557 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!13970 lt!106560))))

(assert (=> b!261478 false))

(declare-fun lt!106558 () Unit!4655)

(declare-fun Unit!4661 () Unit!4655)

(assert (=> b!261478 (= lt!106558 Unit!4661)))

(declare-fun b!261479 () Bool)

(declare-fun e!162336 () BalanceConc!2516)

(assert (=> b!261479 (= e!162336 (charsOf!361 separatorToken!170))))

(declare-fun b!261480 () Bool)

(declare-fun e!162338 () List!3766)

(assert (=> b!261480 (= e!162338 Nil!3756)))

(declare-fun b!261481 () Bool)

(assert (=> b!261481 (= e!162336 call!13971)))

(declare-fun bm!13964 () Bool)

(assert (=> bm!13964 (= call!13970 (list!1512 e!162336))))

(declare-fun c!49444 () Bool)

(declare-fun c!49446 () Bool)

(assert (=> bm!13964 (= c!49444 c!49446)))

(declare-fun bm!13965 () Bool)

(assert (=> bm!13965 (= call!13967 (charsOf!361 (h!9154 (t!37001 tokens!465))))))

(declare-fun d!74884 () Bool)

(declare-fun c!49445 () Bool)

(assert (=> d!74884 (= c!49445 (is-Cons!3757 (t!37001 tokens!465)))))

(assert (=> d!74884 (= (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 tokens!465) separatorToken!170) e!162338)))

(assert (=> b!261477 (= e!162338 e!162337)))

(declare-fun lt!106559 () Unit!4655)

(declare-fun forallContained!273 (List!3767 Int Token!1176) Unit!4655)

(assert (=> b!261477 (= lt!106559 (forallContained!273 (t!37001 tokens!465) lambda!8739 (h!9154 (t!37001 tokens!465))))))

(assert (=> b!261477 (= lt!106560 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 (t!37001 tokens!465)) separatorToken!170))))

(declare-datatypes ((tuple2!4202 0))(
  ( (tuple2!4203 (_1!2317 Token!1176) (_2!2317 List!3766)) )
))
(declare-datatypes ((Option!780 0))(
  ( (None!779) (Some!779 (v!14618 tuple2!4202)) )
))
(declare-fun lt!106556 () Option!780)

(declare-fun maxPrefix!322 (LexerInterface!602 List!3768 List!3766) Option!780)

(assert (=> b!261477 (= lt!106556 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)))))

(assert (=> b!261477 (= c!49443 (and (is-Some!779 lt!106556) (= (_1!2317 (v!14618 lt!106556)) (h!9154 (t!37001 tokens!465)))))))

(declare-fun b!261482 () Bool)

(assert (=> b!261482 (= c!49446 (and (is-Some!779 lt!106556) (not (= (_1!2317 (v!14618 lt!106556)) (h!9154 (t!37001 tokens!465))))))))

(assert (=> b!261482 (= e!162337 e!162335)))

(declare-fun bm!13966 () Bool)

(assert (=> bm!13966 (= call!13968 (++!965 call!13969 (ite c!49443 lt!106560 call!13970)))))

(assert (= (and d!74884 c!49445) b!261477))

(assert (= (and d!74884 (not c!49445)) b!261480))

(assert (= (and b!261477 c!49443) b!261475))

(assert (= (and b!261477 (not c!49443)) b!261482))

(assert (= (and b!261482 c!49446) b!261476))

(assert (= (and b!261482 (not c!49446)) b!261478))

(assert (= (or b!261476 b!261478) bm!13963))

(assert (= (or b!261476 b!261478) bm!13964))

(assert (= (and bm!13964 c!49444) b!261479))

(assert (= (and bm!13964 (not c!49444)) b!261481))

(assert (= (or b!261475 bm!13963) bm!13965))

(assert (= (or b!261475 b!261476) bm!13962))

(assert (= (or b!261475 b!261476) bm!13966))

(declare-fun m!324713 () Bool)

(assert (=> bm!13964 m!324713))

(declare-fun m!324715 () Bool)

(assert (=> b!261478 m!324715))

(assert (=> b!261478 m!324715))

(declare-fun m!324717 () Bool)

(assert (=> b!261478 m!324717))

(assert (=> b!261478 m!324715))

(declare-fun m!324719 () Bool)

(assert (=> b!261478 m!324719))

(declare-fun m!324721 () Bool)

(assert (=> b!261478 m!324721))

(declare-fun m!324723 () Bool)

(assert (=> bm!13965 m!324723))

(declare-fun m!324725 () Bool)

(assert (=> b!261476 m!324725))

(declare-fun m!324727 () Bool)

(assert (=> bm!13962 m!324727))

(declare-fun m!324729 () Bool)

(assert (=> b!261477 m!324729))

(declare-fun m!324731 () Bool)

(assert (=> b!261477 m!324731))

(declare-fun m!324733 () Bool)

(assert (=> b!261477 m!324733))

(assert (=> b!261477 m!324723))

(declare-fun m!324735 () Bool)

(assert (=> b!261477 m!324735))

(assert (=> b!261477 m!324723))

(declare-fun m!324737 () Bool)

(assert (=> b!261477 m!324737))

(assert (=> b!261477 m!324735))

(assert (=> b!261477 m!324729))

(assert (=> b!261479 m!324487))

(declare-fun m!324739 () Bool)

(assert (=> bm!13966 m!324739))

(assert (=> b!261321 d!74884))

(declare-fun d!74886 () Bool)

(assert (=> d!74886 (= (list!1512 (charsOf!361 (h!9154 tokens!465))) (list!1514 (c!49414 (charsOf!361 (h!9154 tokens!465)))))))

(declare-fun bs!28411 () Bool)

(assert (= bs!28411 d!74886))

(declare-fun m!324741 () Bool)

(assert (=> bs!28411 m!324741))

(assert (=> b!261321 d!74886))

(declare-fun d!74888 () Bool)

(declare-fun fromListB!295 (List!3767) BalanceConc!2518)

(assert (=> d!74888 (= (seqFromList!799 (t!37001 tokens!465)) (fromListB!295 (t!37001 tokens!465)))))

(declare-fun bs!28412 () Bool)

(assert (= bs!28412 d!74888))

(declare-fun m!324743 () Bool)

(assert (=> bs!28412 m!324743))

(assert (=> b!261321 d!74888))

(declare-fun b!261496 () Bool)

(declare-fun e!162348 () List!3766)

(assert (=> b!261496 (= e!162348 lt!106500)))

(declare-fun lt!106561 () List!3766)

(declare-fun b!261499 () Bool)

(declare-fun e!162349 () Bool)

(assert (=> b!261499 (= e!162349 (or (not (= lt!106500 Nil!3756)) (= lt!106561 lt!106502)))))

(declare-fun d!74890 () Bool)

(assert (=> d!74890 e!162349))

(declare-fun res!120329 () Bool)

(assert (=> d!74890 (=> (not res!120329) (not e!162349))))

(assert (=> d!74890 (= res!120329 (= (content!530 lt!106561) (set.union (content!530 lt!106502) (content!530 lt!106500))))))

(assert (=> d!74890 (= lt!106561 e!162348)))

(declare-fun c!49447 () Bool)

(assert (=> d!74890 (= c!49447 (is-Nil!3756 lt!106502))))

(assert (=> d!74890 (= (++!965 lt!106502 lt!106500) lt!106561)))

(declare-fun b!261497 () Bool)

(assert (=> b!261497 (= e!162348 (Cons!3756 (h!9153 lt!106502) (++!965 (t!37000 lt!106502) lt!106500)))))

(declare-fun b!261498 () Bool)

(declare-fun res!120328 () Bool)

(assert (=> b!261498 (=> (not res!120328) (not e!162349))))

(assert (=> b!261498 (= res!120328 (= (size!2988 lt!106561) (+ (size!2988 lt!106502) (size!2988 lt!106500))))))

(assert (= (and d!74890 c!49447) b!261496))

(assert (= (and d!74890 (not c!49447)) b!261497))

(assert (= (and d!74890 res!120329) b!261498))

(assert (= (and b!261498 res!120328) b!261499))

(declare-fun m!324745 () Bool)

(assert (=> d!74890 m!324745))

(assert (=> d!74890 m!324701))

(declare-fun m!324747 () Bool)

(assert (=> d!74890 m!324747))

(declare-fun m!324749 () Bool)

(assert (=> b!261497 m!324749))

(declare-fun m!324751 () Bool)

(assert (=> b!261498 m!324751))

(assert (=> b!261498 m!324709))

(declare-fun m!324753 () Bool)

(assert (=> b!261498 m!324753))

(assert (=> b!261321 d!74890))

(declare-fun b!261500 () Bool)

(declare-fun e!162350 () List!3766)

(assert (=> b!261500 (= e!162350 lt!106498)))

(declare-fun lt!106562 () List!3766)

(declare-fun b!261503 () Bool)

(declare-fun e!162351 () Bool)

(assert (=> b!261503 (= e!162351 (or (not (= lt!106498 Nil!3756)) (= lt!106562 lt!106503)))))

(declare-fun d!74892 () Bool)

(assert (=> d!74892 e!162351))

(declare-fun res!120331 () Bool)

(assert (=> d!74892 (=> (not res!120331) (not e!162351))))

(assert (=> d!74892 (= res!120331 (= (content!530 lt!106562) (set.union (content!530 lt!106503) (content!530 lt!106498))))))

(assert (=> d!74892 (= lt!106562 e!162350)))

(declare-fun c!49448 () Bool)

(assert (=> d!74892 (= c!49448 (is-Nil!3756 lt!106503))))

(assert (=> d!74892 (= (++!965 lt!106503 lt!106498) lt!106562)))

(declare-fun b!261501 () Bool)

(assert (=> b!261501 (= e!162350 (Cons!3756 (h!9153 lt!106503) (++!965 (t!37000 lt!106503) lt!106498)))))

(declare-fun b!261502 () Bool)

(declare-fun res!120330 () Bool)

(assert (=> b!261502 (=> (not res!120330) (not e!162351))))

(assert (=> b!261502 (= res!120330 (= (size!2988 lt!106562) (+ (size!2988 lt!106503) (size!2988 lt!106498))))))

(assert (= (and d!74892 c!49448) b!261500))

(assert (= (and d!74892 (not c!49448)) b!261501))

(assert (= (and d!74892 res!120331) b!261502))

(assert (= (and b!261502 res!120330) b!261503))

(declare-fun m!324755 () Bool)

(assert (=> d!74892 m!324755))

(assert (=> d!74892 m!324703))

(declare-fun m!324757 () Bool)

(assert (=> d!74892 m!324757))

(declare-fun m!324759 () Bool)

(assert (=> b!261501 m!324759))

(declare-fun m!324761 () Bool)

(assert (=> b!261502 m!324761))

(assert (=> b!261502 m!324711))

(declare-fun m!324763 () Bool)

(assert (=> b!261502 m!324763))

(assert (=> b!261321 d!74892))

(declare-fun bs!28416 () Bool)

(declare-fun d!74894 () Bool)

(assert (= bs!28416 (and d!74894 b!261306)))

(declare-fun lambda!8747 () Int)

(assert (=> bs!28416 (= lambda!8747 lambda!8733)))

(declare-fun bs!28417 () Bool)

(assert (= bs!28417 (and d!74894 b!261477)))

(assert (=> bs!28417 (not (= lambda!8747 lambda!8739))))

(declare-fun bs!28418 () Bool)

(declare-fun b!261581 () Bool)

(assert (= bs!28418 (and b!261581 b!261306)))

(declare-fun lambda!8748 () Int)

(assert (=> bs!28418 (not (= lambda!8748 lambda!8733))))

(declare-fun bs!28419 () Bool)

(assert (= bs!28419 (and b!261581 b!261477)))

(assert (=> bs!28419 (= lambda!8748 lambda!8739)))

(declare-fun bs!28420 () Bool)

(assert (= bs!28420 (and b!261581 d!74894)))

(assert (=> bs!28420 (not (= lambda!8748 lambda!8747))))

(declare-fun b!261590 () Bool)

(declare-fun e!162404 () Bool)

(assert (=> b!261590 (= e!162404 true)))

(declare-fun b!261589 () Bool)

(declare-fun e!162403 () Bool)

(assert (=> b!261589 (= e!162403 e!162404)))

(declare-fun b!261588 () Bool)

(declare-fun e!162402 () Bool)

(assert (=> b!261588 (= e!162402 e!162403)))

(assert (=> b!261581 e!162402))

(assert (= b!261589 b!261590))

(assert (= b!261588 b!261589))

(assert (= (and b!261581 (is-Cons!3758 rules!1920)) b!261588))

(assert (=> b!261590 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8748))))

(assert (=> b!261590 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8748))))

(assert (=> b!261581 true))

(declare-fun b!261577 () Bool)

(declare-fun e!162397 () BalanceConc!2516)

(assert (=> b!261577 (= e!162397 (BalanceConc!2517 Empty!1254))))

(declare-fun b!261578 () Bool)

(declare-fun e!162400 () Bool)

(assert (=> b!261578 (= e!162400 (<= 0 (size!2989 (seqFromList!799 (t!37001 tokens!465)))))))

(declare-fun b!261579 () Bool)

(declare-fun e!162396 () BalanceConc!2516)

(declare-fun call!14000 () BalanceConc!2516)

(assert (=> b!261579 (= e!162396 call!14000)))

(declare-fun b!261580 () Bool)

(declare-fun c!49473 () Bool)

(declare-fun e!162395 () Bool)

(assert (=> b!261580 (= c!49473 e!162395)))

(declare-fun res!120344 () Bool)

(assert (=> b!261580 (=> (not res!120344) (not e!162395))))

(declare-datatypes ((tuple2!4204 0))(
  ( (tuple2!4205 (_1!2318 Token!1176) (_2!2318 BalanceConc!2516)) )
))
(declare-datatypes ((Option!781 0))(
  ( (None!780) (Some!780 (v!14619 tuple2!4204)) )
))
(declare-fun lt!106630 () Option!781)

(assert (=> b!261580 (= res!120344 (is-Some!780 lt!106630))))

(declare-fun e!162399 () BalanceConc!2516)

(declare-fun e!162401 () BalanceConc!2516)

(assert (=> b!261580 (= e!162399 e!162401)))

(declare-fun bm!13992 () Bool)

(declare-fun call!13998 () Token!1176)

(declare-fun call!13999 () Token!1176)

(assert (=> bm!13992 (= call!13998 call!13999)))

(declare-fun bm!13993 () Bool)

(declare-fun call!14001 () BalanceConc!2516)

(assert (=> bm!13993 (= call!14001 call!14000)))

(declare-fun b!261582 () Bool)

(assert (=> b!261582 (= e!162401 (BalanceConc!2517 Empty!1254))))

(assert (=> b!261582 (= (print!327 thiss!17480 (singletonSeq!262 call!13998)) (printTailRec!290 thiss!17480 (singletonSeq!262 call!13998) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106617 () Unit!4655)

(declare-fun Unit!4662 () Unit!4655)

(assert (=> b!261582 (= lt!106617 Unit!4662)))

(declare-fun lt!106624 () Unit!4655)

(declare-fun lt!106618 () BalanceConc!2516)

(assert (=> b!261582 (= lt!106624 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14001) (list!1512 lt!106618)))))

(assert (=> b!261582 false))

(declare-fun lt!106626 () Unit!4655)

(declare-fun Unit!4663 () Unit!4655)

(assert (=> b!261582 (= lt!106626 Unit!4663)))

(declare-fun b!261583 () Bool)

(assert (=> b!261583 (= e!162395 (not (= (_1!2318 (v!14619 lt!106630)) call!13999)))))

(declare-fun b!261584 () Bool)

(declare-fun call!13997 () BalanceConc!2516)

(declare-fun ++!967 (BalanceConc!2516 BalanceConc!2516) BalanceConc!2516)

(assert (=> b!261584 (= e!162401 (++!967 call!13997 lt!106618))))

(declare-fun b!261585 () Bool)

(declare-fun e!162398 () Bool)

(assert (=> b!261585 (= e!162398 (= (_1!2318 (v!14619 lt!106630)) (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(declare-fun b!261586 () Bool)

(assert (=> b!261586 (= e!162399 call!13997)))

(declare-fun bm!13994 () Bool)

(declare-fun c!49470 () Bool)

(declare-fun c!49471 () Bool)

(assert (=> bm!13994 (= c!49470 c!49471)))

(assert (=> bm!13994 (= call!13997 (++!967 e!162396 (ite c!49471 lt!106618 call!14001)))))

(declare-fun b!261587 () Bool)

(assert (=> b!261587 (= e!162396 (charsOf!361 call!13998))))

(declare-fun bm!13995 () Bool)

(assert (=> bm!13995 (= call!13999 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))

(declare-fun bm!13996 () Bool)

(assert (=> bm!13996 (= call!14000 (charsOf!361 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))))

(declare-fun lt!106620 () BalanceConc!2516)

(declare-fun dropList!151 (BalanceConc!2518 Int) List!3767)

(assert (=> d!74894 (= (list!1512 lt!106620) (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) separatorToken!170))))

(assert (=> d!74894 (= lt!106620 e!162397)))

(declare-fun c!49472 () Bool)

(assert (=> d!74894 (= c!49472 (>= 0 (size!2989 (seqFromList!799 (t!37001 tokens!465)))))))

(declare-fun lt!106619 () Unit!4655)

(declare-fun lemmaContentSubsetPreservesForall!95 (List!3767 List!3767 Int) Unit!4655)

(assert (=> d!74894 (= lt!106619 (lemmaContentSubsetPreservesForall!95 (list!1515 (seqFromList!799 (t!37001 tokens!465))) (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) lambda!8747))))

(assert (=> d!74894 e!162400))

(declare-fun res!120346 () Bool)

(assert (=> d!74894 (=> (not res!120346) (not e!162400))))

(assert (=> d!74894 (= res!120346 (>= 0 0))))

(assert (=> d!74894 (= (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0) lt!106620)))

(assert (=> b!261581 (= e!162397 e!162399)))

(declare-fun lt!106621 () List!3767)

(assert (=> b!261581 (= lt!106621 (list!1515 (seqFromList!799 (t!37001 tokens!465))))))

(declare-fun lt!106627 () Unit!4655)

(declare-fun lemmaDropApply!191 (List!3767 Int) Unit!4655)

(assert (=> b!261581 (= lt!106627 (lemmaDropApply!191 lt!106621 0))))

(declare-fun head!875 (List!3767) Token!1176)

(declare-fun drop!204 (List!3767 Int) List!3767)

(declare-fun apply!732 (List!3767 Int) Token!1176)

(assert (=> b!261581 (= (head!875 (drop!204 lt!106621 0)) (apply!732 lt!106621 0))))

(declare-fun lt!106622 () Unit!4655)

(assert (=> b!261581 (= lt!106622 lt!106627)))

(declare-fun lt!106629 () List!3767)

(assert (=> b!261581 (= lt!106629 (list!1515 (seqFromList!799 (t!37001 tokens!465))))))

(declare-fun lt!106625 () Unit!4655)

(declare-fun lemmaDropTail!183 (List!3767 Int) Unit!4655)

(assert (=> b!261581 (= lt!106625 (lemmaDropTail!183 lt!106629 0))))

(declare-fun tail!465 (List!3767) List!3767)

(assert (=> b!261581 (= (tail!465 (drop!204 lt!106629 0)) (drop!204 lt!106629 (+ 0 1)))))

(declare-fun lt!106623 () Unit!4655)

(assert (=> b!261581 (= lt!106623 lt!106625)))

(declare-fun lt!106628 () Unit!4655)

(assert (=> b!261581 (= lt!106628 (forallContained!273 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8748 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(assert (=> b!261581 (= lt!106618 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!285 (LexerInterface!602 List!3768 BalanceConc!2516) Option!781)

(assert (=> b!261581 (= lt!106630 (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))

(declare-fun res!120345 () Bool)

(assert (=> b!261581 (= res!120345 (is-Some!780 lt!106630))))

(assert (=> b!261581 (=> (not res!120345) (not e!162398))))

(assert (=> b!261581 (= c!49471 e!162398)))

(assert (= (and d!74894 res!120346) b!261578))

(assert (= (and d!74894 c!49472) b!261577))

(assert (= (and d!74894 (not c!49472)) b!261581))

(assert (= (and b!261581 res!120345) b!261585))

(assert (= (and b!261581 c!49471) b!261586))

(assert (= (and b!261581 (not c!49471)) b!261580))

(assert (= (and b!261580 res!120344) b!261583))

(assert (= (and b!261580 c!49473) b!261584))

(assert (= (and b!261580 (not c!49473)) b!261582))

(assert (= (or b!261584 b!261582) bm!13992))

(assert (= (or b!261584 b!261582) bm!13993))

(assert (= (or b!261586 bm!13992 b!261583) bm!13995))

(assert (= (or b!261586 bm!13993) bm!13996))

(assert (= (or b!261586 b!261584) bm!13994))

(assert (= (and bm!13994 c!49470) b!261579))

(assert (= (and bm!13994 (not c!49470)) b!261587))

(declare-fun m!324845 () Bool)

(assert (=> bm!13994 m!324845))

(declare-fun m!324847 () Bool)

(assert (=> b!261584 m!324847))

(declare-fun m!324849 () Bool)

(assert (=> d!74894 m!324849))

(declare-fun m!324851 () Bool)

(assert (=> d!74894 m!324851))

(declare-fun m!324853 () Bool)

(assert (=> d!74894 m!324853))

(declare-fun m!324855 () Bool)

(assert (=> d!74894 m!324855))

(assert (=> d!74894 m!324851))

(declare-fun m!324857 () Bool)

(assert (=> d!74894 m!324857))

(assert (=> d!74894 m!324483))

(assert (=> d!74894 m!324851))

(assert (=> d!74894 m!324483))

(declare-fun m!324859 () Bool)

(assert (=> d!74894 m!324859))

(assert (=> d!74894 m!324483))

(assert (=> d!74894 m!324855))

(assert (=> b!261578 m!324483))

(assert (=> b!261578 m!324859))

(declare-fun m!324861 () Bool)

(assert (=> bm!13996 m!324861))

(declare-fun m!324863 () Bool)

(assert (=> b!261581 m!324863))

(assert (=> b!261581 m!324483))

(declare-fun m!324865 () Bool)

(assert (=> b!261581 m!324865))

(declare-fun m!324867 () Bool)

(assert (=> b!261581 m!324867))

(declare-fun m!324869 () Bool)

(assert (=> b!261581 m!324869))

(declare-fun m!324871 () Bool)

(assert (=> b!261581 m!324871))

(declare-fun m!324873 () Bool)

(assert (=> b!261581 m!324873))

(assert (=> b!261581 m!324483))

(declare-fun m!324875 () Bool)

(assert (=> b!261581 m!324875))

(declare-fun m!324877 () Bool)

(assert (=> b!261581 m!324877))

(assert (=> b!261581 m!324867))

(declare-fun m!324879 () Bool)

(assert (=> b!261581 m!324879))

(assert (=> b!261581 m!324855))

(assert (=> b!261581 m!324875))

(declare-fun m!324881 () Bool)

(assert (=> b!261581 m!324881))

(assert (=> b!261581 m!324875))

(assert (=> b!261581 m!324871))

(assert (=> b!261581 m!324483))

(assert (=> b!261581 m!324855))

(assert (=> b!261581 m!324873))

(declare-fun m!324883 () Bool)

(assert (=> b!261581 m!324883))

(assert (=> b!261581 m!324877))

(declare-fun m!324885 () Bool)

(assert (=> b!261581 m!324885))

(declare-fun m!324887 () Bool)

(assert (=> b!261581 m!324887))

(declare-fun m!324889 () Bool)

(assert (=> b!261581 m!324889))

(assert (=> b!261585 m!324483))

(assert (=> b!261585 m!324875))

(assert (=> bm!13995 m!324483))

(assert (=> bm!13995 m!324875))

(declare-fun m!324891 () Bool)

(assert (=> b!261582 m!324891))

(declare-fun m!324893 () Bool)

(assert (=> b!261582 m!324893))

(declare-fun m!324895 () Bool)

(assert (=> b!261582 m!324895))

(assert (=> b!261582 m!324891))

(declare-fun m!324897 () Bool)

(assert (=> b!261582 m!324897))

(declare-fun m!324899 () Bool)

(assert (=> b!261582 m!324899))

(assert (=> b!261582 m!324897))

(declare-fun m!324901 () Bool)

(assert (=> b!261582 m!324901))

(assert (=> b!261582 m!324897))

(assert (=> b!261582 m!324893))

(declare-fun m!324903 () Bool)

(assert (=> b!261587 m!324903))

(assert (=> b!261321 d!74894))

(declare-fun d!74912 () Bool)

(declare-fun lt!106633 () BalanceConc!2516)

(assert (=> d!74912 (= (list!1512 lt!106633) (originalCharacters!759 separatorToken!170))))

(assert (=> d!74912 (= lt!106633 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))

(assert (=> d!74912 (= (charsOf!361 separatorToken!170) lt!106633)))

(declare-fun b_lambda!8021 () Bool)

(assert (=> (not b_lambda!8021) (not d!74912)))

(assert (=> d!74912 t!37008))

(declare-fun b_and!20307 () Bool)

(assert (= b_and!20289 (and (=> t!37008 result!17608) b_and!20307)))

(assert (=> d!74912 t!37010))

(declare-fun b_and!20309 () Bool)

(assert (= b_and!20291 (and (=> t!37010 result!17612) b_and!20309)))

(assert (=> d!74912 t!37012))

(declare-fun b_and!20311 () Bool)

(assert (= b_and!20293 (and (=> t!37012 result!17614) b_and!20311)))

(declare-fun m!324905 () Bool)

(assert (=> d!74912 m!324905))

(assert (=> d!74912 m!324633))

(assert (=> b!261321 d!74912))

(declare-fun b!261591 () Bool)

(declare-fun e!162405 () List!3766)

(assert (=> b!261591 (= e!162405 lt!106498)))

(declare-fun b!261594 () Bool)

(declare-fun lt!106634 () List!3766)

(declare-fun e!162406 () Bool)

(assert (=> b!261594 (= e!162406 (or (not (= lt!106498 Nil!3756)) (= lt!106634 (++!965 lt!106502 lt!106503))))))

(declare-fun d!74914 () Bool)

(assert (=> d!74914 e!162406))

(declare-fun res!120348 () Bool)

(assert (=> d!74914 (=> (not res!120348) (not e!162406))))

(assert (=> d!74914 (= res!120348 (= (content!530 lt!106634) (set.union (content!530 (++!965 lt!106502 lt!106503)) (content!530 lt!106498))))))

(assert (=> d!74914 (= lt!106634 e!162405)))

(declare-fun c!49474 () Bool)

(assert (=> d!74914 (= c!49474 (is-Nil!3756 (++!965 lt!106502 lt!106503)))))

(assert (=> d!74914 (= (++!965 (++!965 lt!106502 lt!106503) lt!106498) lt!106634)))

(declare-fun b!261592 () Bool)

(assert (=> b!261592 (= e!162405 (Cons!3756 (h!9153 (++!965 lt!106502 lt!106503)) (++!965 (t!37000 (++!965 lt!106502 lt!106503)) lt!106498)))))

(declare-fun b!261593 () Bool)

(declare-fun res!120347 () Bool)

(assert (=> b!261593 (=> (not res!120347) (not e!162406))))

(assert (=> b!261593 (= res!120347 (= (size!2988 lt!106634) (+ (size!2988 (++!965 lt!106502 lt!106503)) (size!2988 lt!106498))))))

(assert (= (and d!74914 c!49474) b!261591))

(assert (= (and d!74914 (not c!49474)) b!261592))

(assert (= (and d!74914 res!120348) b!261593))

(assert (= (and b!261593 res!120347) b!261594))

(declare-fun m!324907 () Bool)

(assert (=> d!74914 m!324907))

(assert (=> d!74914 m!324497))

(declare-fun m!324909 () Bool)

(assert (=> d!74914 m!324909))

(assert (=> d!74914 m!324757))

(declare-fun m!324911 () Bool)

(assert (=> b!261592 m!324911))

(declare-fun m!324913 () Bool)

(assert (=> b!261593 m!324913))

(assert (=> b!261593 m!324497))

(declare-fun m!324915 () Bool)

(assert (=> b!261593 m!324915))

(assert (=> b!261593 m!324763))

(assert (=> b!261321 d!74914))

(declare-fun d!74916 () Bool)

(declare-fun lt!106635 () BalanceConc!2516)

(assert (=> d!74916 (= (list!1512 lt!106635) (originalCharacters!759 (h!9154 tokens!465)))))

(assert (=> d!74916 (= lt!106635 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))

(assert (=> d!74916 (= (charsOf!361 (h!9154 tokens!465)) lt!106635)))

(declare-fun b_lambda!8023 () Bool)

(assert (=> (not b_lambda!8023) (not d!74916)))

(declare-fun t!37035 () Bool)

(declare-fun tb!14155 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37035) tb!14155))

(declare-fun b!261595 () Bool)

(declare-fun e!162407 () Bool)

(declare-fun tp!100523 () Bool)

(assert (=> b!261595 (= e!162407 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))) tp!100523))))

(declare-fun result!17630 () Bool)

(assert (=> tb!14155 (= result!17630 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))) e!162407))))

(assert (= tb!14155 b!261595))

(declare-fun m!324917 () Bool)

(assert (=> b!261595 m!324917))

(declare-fun m!324919 () Bool)

(assert (=> tb!14155 m!324919))

(assert (=> d!74916 t!37035))

(declare-fun b_and!20313 () Bool)

(assert (= b_and!20307 (and (=> t!37035 result!17630) b_and!20313)))

(declare-fun t!37037 () Bool)

(declare-fun tb!14157 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37037) tb!14157))

(declare-fun result!17632 () Bool)

(assert (= result!17632 result!17630))

(assert (=> d!74916 t!37037))

(declare-fun b_and!20315 () Bool)

(assert (= b_and!20309 (and (=> t!37037 result!17632) b_and!20315)))

(declare-fun t!37039 () Bool)

(declare-fun tb!14159 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37039) tb!14159))

(declare-fun result!17634 () Bool)

(assert (= result!17634 result!17630))

(assert (=> d!74916 t!37039))

(declare-fun b_and!20317 () Bool)

(assert (= b_and!20311 (and (=> t!37039 result!17634) b_and!20317)))

(declare-fun m!324921 () Bool)

(assert (=> d!74916 m!324921))

(declare-fun m!324923 () Bool)

(assert (=> d!74916 m!324923))

(assert (=> b!261321 d!74916))

(declare-fun d!74918 () Bool)

(assert (=> d!74918 (= (++!965 (++!965 lt!106502 lt!106503) lt!106498) (++!965 lt!106502 (++!965 lt!106503 lt!106498)))))

(declare-fun lt!106638 () Unit!4655)

(declare-fun choose!2409 (List!3766 List!3766 List!3766) Unit!4655)

(assert (=> d!74918 (= lt!106638 (choose!2409 lt!106502 lt!106503 lt!106498))))

(assert (=> d!74918 (= (lemmaConcatAssociativity!413 lt!106502 lt!106503 lt!106498) lt!106638)))

(declare-fun bs!28421 () Bool)

(assert (= bs!28421 d!74918))

(declare-fun m!324925 () Bool)

(assert (=> bs!28421 m!324925))

(assert (=> bs!28421 m!324497))

(assert (=> bs!28421 m!324507))

(assert (=> bs!28421 m!324507))

(declare-fun m!324927 () Bool)

(assert (=> bs!28421 m!324927))

(assert (=> bs!28421 m!324497))

(assert (=> bs!28421 m!324499))

(assert (=> b!261321 d!74918))

(declare-fun d!74920 () Bool)

(declare-fun res!120349 () Bool)

(declare-fun e!162408 () Bool)

(assert (=> d!74920 (=> (not res!120349) (not e!162408))))

(assert (=> d!74920 (= res!120349 (not (isEmpty!2359 (originalCharacters!759 (h!9154 tokens!465)))))))

(assert (=> d!74920 (= (inv!4641 (h!9154 tokens!465)) e!162408)))

(declare-fun b!261596 () Bool)

(declare-fun res!120350 () Bool)

(assert (=> b!261596 (=> (not res!120350) (not e!162408))))

(assert (=> b!261596 (= res!120350 (= (originalCharacters!759 (h!9154 tokens!465)) (list!1512 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(declare-fun b!261597 () Bool)

(assert (=> b!261597 (= e!162408 (= (size!2986 (h!9154 tokens!465)) (size!2988 (originalCharacters!759 (h!9154 tokens!465)))))))

(assert (= (and d!74920 res!120349) b!261596))

(assert (= (and b!261596 res!120350) b!261597))

(declare-fun b_lambda!8025 () Bool)

(assert (=> (not b_lambda!8025) (not b!261596)))

(assert (=> b!261596 t!37035))

(declare-fun b_and!20319 () Bool)

(assert (= b_and!20313 (and (=> t!37035 result!17630) b_and!20319)))

(assert (=> b!261596 t!37037))

(declare-fun b_and!20321 () Bool)

(assert (= b_and!20315 (and (=> t!37037 result!17632) b_and!20321)))

(assert (=> b!261596 t!37039))

(declare-fun b_and!20323 () Bool)

(assert (= b_and!20317 (and (=> t!37039 result!17634) b_and!20323)))

(declare-fun m!324929 () Bool)

(assert (=> d!74920 m!324929))

(assert (=> b!261596 m!324923))

(assert (=> b!261596 m!324923))

(declare-fun m!324931 () Bool)

(assert (=> b!261596 m!324931))

(declare-fun m!324933 () Bool)

(assert (=> b!261597 m!324933))

(assert (=> b!261311 d!74920))

(declare-fun d!74922 () Bool)

(declare-fun c!49475 () Bool)

(assert (=> d!74922 (= c!49475 (is-IntegerValue!2214 (value!24723 separatorToken!170)))))

(declare-fun e!162411 () Bool)

(assert (=> d!74922 (= (inv!21 (value!24723 separatorToken!170)) e!162411)))

(declare-fun b!261598 () Bool)

(assert (=> b!261598 (= e!162411 (inv!16 (value!24723 separatorToken!170)))))

(declare-fun b!261599 () Bool)

(declare-fun e!162409 () Bool)

(assert (=> b!261599 (= e!162411 e!162409)))

(declare-fun c!49476 () Bool)

(assert (=> b!261599 (= c!49476 (is-IntegerValue!2215 (value!24723 separatorToken!170)))))

(declare-fun b!261600 () Bool)

(declare-fun res!120351 () Bool)

(declare-fun e!162410 () Bool)

(assert (=> b!261600 (=> res!120351 e!162410)))

(assert (=> b!261600 (= res!120351 (not (is-IntegerValue!2216 (value!24723 separatorToken!170))))))

(assert (=> b!261600 (= e!162409 e!162410)))

(declare-fun b!261601 () Bool)

(assert (=> b!261601 (= e!162409 (inv!17 (value!24723 separatorToken!170)))))

(declare-fun b!261602 () Bool)

(assert (=> b!261602 (= e!162410 (inv!15 (value!24723 separatorToken!170)))))

(assert (= (and d!74922 c!49475) b!261598))

(assert (= (and d!74922 (not c!49475)) b!261599))

(assert (= (and b!261599 c!49476) b!261601))

(assert (= (and b!261599 (not c!49476)) b!261600))

(assert (= (and b!261600 (not res!120351)) b!261602))

(declare-fun m!324935 () Bool)

(assert (=> b!261598 m!324935))

(declare-fun m!324937 () Bool)

(assert (=> b!261601 m!324937))

(declare-fun m!324939 () Bool)

(assert (=> b!261602 m!324939))

(assert (=> b!261320 d!74922))

(declare-fun bs!28427 () Bool)

(declare-fun d!74924 () Bool)

(assert (= bs!28427 (and d!74924 b!261306)))

(declare-fun lambda!8759 () Int)

(assert (=> bs!28427 (not (= lambda!8759 lambda!8733))))

(declare-fun bs!28428 () Bool)

(assert (= bs!28428 (and d!74924 b!261477)))

(assert (=> bs!28428 (= lambda!8759 lambda!8739)))

(declare-fun bs!28429 () Bool)

(assert (= bs!28429 (and d!74924 d!74894)))

(assert (=> bs!28429 (not (= lambda!8759 lambda!8747))))

(declare-fun bs!28430 () Bool)

(assert (= bs!28430 (and d!74924 b!261581)))

(assert (=> bs!28430 (= lambda!8759 lambda!8748)))

(declare-fun b!261641 () Bool)

(declare-fun e!162441 () Bool)

(assert (=> b!261641 (= e!162441 true)))

(declare-fun b!261640 () Bool)

(declare-fun e!162440 () Bool)

(assert (=> b!261640 (= e!162440 e!162441)))

(declare-fun b!261639 () Bool)

(declare-fun e!162439 () Bool)

(assert (=> b!261639 (= e!162439 e!162440)))

(assert (=> d!74924 e!162439))

(assert (= b!261640 b!261641))

(assert (= b!261639 b!261640))

(assert (= (and d!74924 (is-Cons!3758 rules!1920)) b!261639))

(assert (=> b!261641 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8759))))

(assert (=> b!261641 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8759))))

(assert (=> d!74924 true))

(declare-fun e!162438 () Bool)

(assert (=> d!74924 e!162438))

(declare-fun res!120366 () Bool)

(assert (=> d!74924 (=> (not res!120366) (not e!162438))))

(declare-fun lt!106683 () Bool)

(assert (=> d!74924 (= res!120366 (= lt!106683 (forall!922 (list!1515 lt!106499) lambda!8759)))))

(declare-fun forall!924 (BalanceConc!2518 Int) Bool)

(assert (=> d!74924 (= lt!106683 (forall!924 lt!106499 lambda!8759))))

(assert (=> d!74924 (not (isEmpty!2357 rules!1920))))

(assert (=> d!74924 (= (rulesProduceEachTokenIndividually!394 thiss!17480 rules!1920 lt!106499) lt!106683)))

(declare-fun b!261638 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!216 (LexerInterface!602 List!3768 List!3767) Bool)

(assert (=> b!261638 (= e!162438 (= lt!106683 (rulesProduceEachTokenIndividuallyList!216 thiss!17480 rules!1920 (list!1515 lt!106499))))))

(assert (= (and d!74924 res!120366) b!261638))

(declare-fun m!325005 () Bool)

(assert (=> d!74924 m!325005))

(assert (=> d!74924 m!325005))

(declare-fun m!325007 () Bool)

(assert (=> d!74924 m!325007))

(declare-fun m!325009 () Bool)

(assert (=> d!74924 m!325009))

(assert (=> d!74924 m!324537))

(assert (=> b!261638 m!325005))

(assert (=> b!261638 m!325005))

(declare-fun m!325011 () Bool)

(assert (=> b!261638 m!325011))

(assert (=> b!261318 d!74924))

(declare-fun d!74932 () Bool)

(assert (=> d!74932 (= (seqFromList!799 tokens!465) (fromListB!295 tokens!465))))

(declare-fun bs!28431 () Bool)

(assert (= bs!28431 d!74932))

(declare-fun m!325013 () Bool)

(assert (=> bs!28431 m!325013))

(assert (=> b!261318 d!74932))

(declare-fun d!74934 () Bool)

(assert (=> d!74934 (= (list!1512 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0)) (list!1514 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0))))))

(declare-fun bs!28432 () Bool)

(assert (= bs!28432 d!74934))

(declare-fun m!325015 () Bool)

(assert (=> bs!28432 m!325015))

(assert (=> b!261319 d!74934))

(declare-fun bs!28434 () Bool)

(declare-fun d!74936 () Bool)

(assert (= bs!28434 (and d!74936 d!74894)))

(declare-fun lambda!8760 () Int)

(assert (=> bs!28434 (= lambda!8760 lambda!8747)))

(declare-fun bs!28435 () Bool)

(assert (= bs!28435 (and d!74936 b!261477)))

(assert (=> bs!28435 (not (= lambda!8760 lambda!8739))))

(declare-fun bs!28436 () Bool)

(assert (= bs!28436 (and d!74936 b!261581)))

(assert (=> bs!28436 (not (= lambda!8760 lambda!8748))))

(declare-fun bs!28437 () Bool)

(assert (= bs!28437 (and d!74936 d!74924)))

(assert (=> bs!28437 (not (= lambda!8760 lambda!8759))))

(declare-fun bs!28438 () Bool)

(assert (= bs!28438 (and d!74936 b!261306)))

(assert (=> bs!28438 (= lambda!8760 lambda!8733)))

(declare-fun bs!28443 () Bool)

(declare-fun b!261661 () Bool)

(assert (= bs!28443 (and b!261661 d!74894)))

(declare-fun lambda!8762 () Int)

(assert (=> bs!28443 (not (= lambda!8762 lambda!8747))))

(declare-fun bs!28444 () Bool)

(assert (= bs!28444 (and b!261661 b!261477)))

(assert (=> bs!28444 (= lambda!8762 lambda!8739)))

(declare-fun bs!28445 () Bool)

(assert (= bs!28445 (and b!261661 b!261581)))

(assert (=> bs!28445 (= lambda!8762 lambda!8748)))

(declare-fun bs!28446 () Bool)

(assert (= bs!28446 (and b!261661 d!74924)))

(assert (=> bs!28446 (= lambda!8762 lambda!8759)))

(declare-fun bs!28447 () Bool)

(assert (= bs!28447 (and b!261661 b!261306)))

(assert (=> bs!28447 (not (= lambda!8762 lambda!8733))))

(declare-fun bs!28448 () Bool)

(assert (= bs!28448 (and b!261661 d!74936)))

(assert (=> bs!28448 (not (= lambda!8762 lambda!8760))))

(declare-fun b!261679 () Bool)

(declare-fun e!162466 () Bool)

(assert (=> b!261679 (= e!162466 true)))

(declare-fun b!261678 () Bool)

(declare-fun e!162465 () Bool)

(assert (=> b!261678 (= e!162465 e!162466)))

(declare-fun b!261677 () Bool)

(declare-fun e!162464 () Bool)

(assert (=> b!261677 (= e!162464 e!162465)))

(assert (=> b!261661 e!162464))

(assert (= b!261678 b!261679))

(assert (= b!261677 b!261678))

(assert (= (and b!261661 (is-Cons!3758 rules!1920)) b!261677))

(assert (=> b!261679 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8762))))

(assert (=> b!261679 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8762))))

(assert (=> b!261661 true))

(declare-fun b!261657 () Bool)

(declare-fun e!162453 () BalanceConc!2516)

(assert (=> b!261657 (= e!162453 (BalanceConc!2517 Empty!1254))))

(declare-fun b!261658 () Bool)

(declare-fun e!162456 () Bool)

(assert (=> b!261658 (= e!162456 (<= 0 (size!2989 lt!106499)))))

(declare-fun b!261659 () Bool)

(declare-fun e!162452 () BalanceConc!2516)

(declare-fun call!14020 () BalanceConc!2516)

(assert (=> b!261659 (= e!162452 call!14020)))

(declare-fun b!261660 () Bool)

(declare-fun c!49495 () Bool)

(declare-fun e!162451 () Bool)

(assert (=> b!261660 (= c!49495 e!162451)))

(declare-fun res!120370 () Bool)

(assert (=> b!261660 (=> (not res!120370) (not e!162451))))

(declare-fun lt!106697 () Option!781)

(assert (=> b!261660 (= res!120370 (is-Some!780 lt!106697))))

(declare-fun e!162455 () BalanceConc!2516)

(declare-fun e!162457 () BalanceConc!2516)

(assert (=> b!261660 (= e!162455 e!162457)))

(declare-fun bm!14012 () Bool)

(declare-fun call!14018 () Token!1176)

(declare-fun call!14019 () Token!1176)

(assert (=> bm!14012 (= call!14018 call!14019)))

(declare-fun bm!14013 () Bool)

(declare-fun call!14021 () BalanceConc!2516)

(assert (=> bm!14013 (= call!14021 call!14020)))

(declare-fun b!261662 () Bool)

(assert (=> b!261662 (= e!162457 (BalanceConc!2517 Empty!1254))))

(assert (=> b!261662 (= (print!327 thiss!17480 (singletonSeq!262 call!14018)) (printTailRec!290 thiss!17480 (singletonSeq!262 call!14018) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106684 () Unit!4655)

(declare-fun Unit!4664 () Unit!4655)

(assert (=> b!261662 (= lt!106684 Unit!4664)))

(declare-fun lt!106691 () Unit!4655)

(declare-fun lt!106685 () BalanceConc!2516)

(assert (=> b!261662 (= lt!106691 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14021) (list!1512 lt!106685)))))

(assert (=> b!261662 false))

(declare-fun lt!106693 () Unit!4655)

(declare-fun Unit!4665 () Unit!4655)

(assert (=> b!261662 (= lt!106693 Unit!4665)))

(declare-fun b!261663 () Bool)

(assert (=> b!261663 (= e!162451 (not (= (_1!2318 (v!14619 lt!106697)) call!14019)))))

(declare-fun b!261664 () Bool)

(declare-fun call!14017 () BalanceConc!2516)

(assert (=> b!261664 (= e!162457 (++!967 call!14017 lt!106685))))

(declare-fun b!261665 () Bool)

(declare-fun e!162454 () Bool)

(assert (=> b!261665 (= e!162454 (= (_1!2318 (v!14619 lt!106697)) (apply!731 lt!106499 0)))))

(declare-fun b!261666 () Bool)

(assert (=> b!261666 (= e!162455 call!14017)))

(declare-fun bm!14014 () Bool)

(declare-fun c!49492 () Bool)

(declare-fun c!49493 () Bool)

(assert (=> bm!14014 (= c!49492 c!49493)))

(assert (=> bm!14014 (= call!14017 (++!967 e!162452 (ite c!49493 lt!106685 call!14021)))))

(declare-fun b!261667 () Bool)

(assert (=> b!261667 (= e!162452 (charsOf!361 call!14018))))

(declare-fun bm!14015 () Bool)

(assert (=> bm!14015 (= call!14019 (apply!731 lt!106499 0))))

(declare-fun bm!14016 () Bool)

(assert (=> bm!14016 (= call!14020 (charsOf!361 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))))

(declare-fun lt!106687 () BalanceConc!2516)

(assert (=> d!74936 (= (list!1512 lt!106687) (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 lt!106499 0) separatorToken!170))))

(assert (=> d!74936 (= lt!106687 e!162453)))

(declare-fun c!49494 () Bool)

(assert (=> d!74936 (= c!49494 (>= 0 (size!2989 lt!106499)))))

(declare-fun lt!106686 () Unit!4655)

(assert (=> d!74936 (= lt!106686 (lemmaContentSubsetPreservesForall!95 (list!1515 lt!106499) (dropList!151 lt!106499 0) lambda!8760))))

(assert (=> d!74936 e!162456))

(declare-fun res!120372 () Bool)

(assert (=> d!74936 (=> (not res!120372) (not e!162456))))

(assert (=> d!74936 (= res!120372 (>= 0 0))))

(assert (=> d!74936 (= (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0) lt!106687)))

(assert (=> b!261661 (= e!162453 e!162455)))

(declare-fun lt!106688 () List!3767)

(assert (=> b!261661 (= lt!106688 (list!1515 lt!106499))))

(declare-fun lt!106694 () Unit!4655)

(assert (=> b!261661 (= lt!106694 (lemmaDropApply!191 lt!106688 0))))

(assert (=> b!261661 (= (head!875 (drop!204 lt!106688 0)) (apply!732 lt!106688 0))))

(declare-fun lt!106689 () Unit!4655)

(assert (=> b!261661 (= lt!106689 lt!106694)))

(declare-fun lt!106696 () List!3767)

(assert (=> b!261661 (= lt!106696 (list!1515 lt!106499))))

(declare-fun lt!106692 () Unit!4655)

(assert (=> b!261661 (= lt!106692 (lemmaDropTail!183 lt!106696 0))))

(assert (=> b!261661 (= (tail!465 (drop!204 lt!106696 0)) (drop!204 lt!106696 (+ 0 1)))))

(declare-fun lt!106690 () Unit!4655)

(assert (=> b!261661 (= lt!106690 lt!106692)))

(declare-fun lt!106695 () Unit!4655)

(assert (=> b!261661 (= lt!106695 (forallContained!273 (list!1515 lt!106499) lambda!8762 (apply!731 lt!106499 0)))))

(assert (=> b!261661 (= lt!106685 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 (+ 0 1)))))

(assert (=> b!261661 (= lt!106697 (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))

(declare-fun res!120371 () Bool)

(assert (=> b!261661 (= res!120371 (is-Some!780 lt!106697))))

(assert (=> b!261661 (=> (not res!120371) (not e!162454))))

(assert (=> b!261661 (= c!49493 e!162454)))

(assert (= (and d!74936 res!120372) b!261658))

(assert (= (and d!74936 c!49494) b!261657))

(assert (= (and d!74936 (not c!49494)) b!261661))

(assert (= (and b!261661 res!120371) b!261665))

(assert (= (and b!261661 c!49493) b!261666))

(assert (= (and b!261661 (not c!49493)) b!261660))

(assert (= (and b!261660 res!120370) b!261663))

(assert (= (and b!261660 c!49495) b!261664))

(assert (= (and b!261660 (not c!49495)) b!261662))

(assert (= (or b!261664 b!261662) bm!14012))

(assert (= (or b!261664 b!261662) bm!14013))

(assert (= (or b!261666 bm!14012 b!261663) bm!14015))

(assert (= (or b!261666 bm!14013) bm!14016))

(assert (= (or b!261666 b!261664) bm!14014))

(assert (= (and bm!14014 c!49492) b!261659))

(assert (= (and bm!14014 (not c!49492)) b!261667))

(declare-fun m!325025 () Bool)

(assert (=> bm!14014 m!325025))

(declare-fun m!325027 () Bool)

(assert (=> b!261664 m!325027))

(declare-fun m!325029 () Bool)

(assert (=> d!74936 m!325029))

(declare-fun m!325031 () Bool)

(assert (=> d!74936 m!325031))

(declare-fun m!325033 () Bool)

(assert (=> d!74936 m!325033))

(assert (=> d!74936 m!325005))

(assert (=> d!74936 m!325031))

(declare-fun m!325035 () Bool)

(assert (=> d!74936 m!325035))

(assert (=> d!74936 m!325031))

(declare-fun m!325037 () Bool)

(assert (=> d!74936 m!325037))

(assert (=> d!74936 m!325005))

(assert (=> b!261658 m!325037))

(declare-fun m!325039 () Bool)

(assert (=> bm!14016 m!325039))

(declare-fun m!325041 () Bool)

(assert (=> b!261661 m!325041))

(declare-fun m!325043 () Bool)

(assert (=> b!261661 m!325043))

(declare-fun m!325045 () Bool)

(assert (=> b!261661 m!325045))

(declare-fun m!325047 () Bool)

(assert (=> b!261661 m!325047))

(declare-fun m!325049 () Bool)

(assert (=> b!261661 m!325049))

(declare-fun m!325051 () Bool)

(assert (=> b!261661 m!325051))

(declare-fun m!325053 () Bool)

(assert (=> b!261661 m!325053))

(declare-fun m!325055 () Bool)

(assert (=> b!261661 m!325055))

(assert (=> b!261661 m!325045))

(declare-fun m!325059 () Bool)

(assert (=> b!261661 m!325059))

(assert (=> b!261661 m!325005))

(assert (=> b!261661 m!325053))

(declare-fun m!325067 () Bool)

(assert (=> b!261661 m!325067))

(assert (=> b!261661 m!325053))

(assert (=> b!261661 m!325049))

(assert (=> b!261661 m!325005))

(assert (=> b!261661 m!325051))

(declare-fun m!325077 () Bool)

(assert (=> b!261661 m!325077))

(assert (=> b!261661 m!325055))

(declare-fun m!325081 () Bool)

(assert (=> b!261661 m!325081))

(declare-fun m!325085 () Bool)

(assert (=> b!261661 m!325085))

(declare-fun m!325087 () Bool)

(assert (=> b!261661 m!325087))

(assert (=> b!261665 m!325053))

(assert (=> bm!14015 m!325053))

(declare-fun m!325095 () Bool)

(assert (=> b!261662 m!325095))

(declare-fun m!325097 () Bool)

(assert (=> b!261662 m!325097))

(declare-fun m!325099 () Bool)

(assert (=> b!261662 m!325099))

(assert (=> b!261662 m!325095))

(declare-fun m!325103 () Bool)

(assert (=> b!261662 m!325103))

(declare-fun m!325105 () Bool)

(assert (=> b!261662 m!325105))

(assert (=> b!261662 m!325103))

(declare-fun m!325109 () Bool)

(assert (=> b!261662 m!325109))

(assert (=> b!261662 m!325103))

(assert (=> b!261662 m!325097))

(declare-fun m!325115 () Bool)

(assert (=> b!261667 m!325115))

(assert (=> b!261319 d!74936))

(declare-fun bs!28454 () Bool)

(declare-fun b!261685 () Bool)

(assert (= bs!28454 (and b!261685 d!74894)))

(declare-fun lambda!8764 () Int)

(assert (=> bs!28454 (not (= lambda!8764 lambda!8747))))

(declare-fun bs!28455 () Bool)

(assert (= bs!28455 (and b!261685 b!261477)))

(assert (=> bs!28455 (= lambda!8764 lambda!8739)))

(declare-fun bs!28456 () Bool)

(assert (= bs!28456 (and b!261685 b!261581)))

(assert (=> bs!28456 (= lambda!8764 lambda!8748)))

(declare-fun bs!28457 () Bool)

(assert (= bs!28457 (and b!261685 d!74924)))

(assert (=> bs!28457 (= lambda!8764 lambda!8759)))

(declare-fun bs!28458 () Bool)

(assert (= bs!28458 (and b!261685 b!261306)))

(assert (=> bs!28458 (not (= lambda!8764 lambda!8733))))

(declare-fun bs!28459 () Bool)

(assert (= bs!28459 (and b!261685 b!261661)))

(assert (=> bs!28459 (= lambda!8764 lambda!8762)))

(declare-fun bs!28460 () Bool)

(assert (= bs!28460 (and b!261685 d!74936)))

(assert (=> bs!28460 (not (= lambda!8764 lambda!8760))))

(declare-fun b!261693 () Bool)

(declare-fun e!162476 () Bool)

(assert (=> b!261693 (= e!162476 true)))

(declare-fun b!261692 () Bool)

(declare-fun e!162475 () Bool)

(assert (=> b!261692 (= e!162475 e!162476)))

(declare-fun b!261691 () Bool)

(declare-fun e!162474 () Bool)

(assert (=> b!261691 (= e!162474 e!162475)))

(assert (=> b!261685 e!162474))

(assert (= b!261692 b!261693))

(assert (= b!261691 b!261692))

(assert (= (and b!261685 (is-Cons!3758 rules!1920)) b!261691))

(assert (=> b!261693 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8764))))

(assert (=> b!261693 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8764))))

(assert (=> b!261685 true))

(declare-fun b!261683 () Bool)

(declare-fun e!162472 () List!3766)

(declare-fun call!14028 () List!3766)

(assert (=> b!261683 (= e!162472 call!14028)))

(declare-fun b!261684 () Bool)

(declare-fun e!162470 () List!3766)

(declare-fun lt!106717 () List!3766)

(assert (=> b!261684 (= e!162470 (++!965 call!14028 lt!106717))))

(declare-fun call!14031 () BalanceConc!2516)

(declare-fun call!14029 () List!3766)

(declare-fun call!14027 () BalanceConc!2516)

(declare-fun c!49499 () Bool)

(declare-fun bm!14022 () Bool)

(assert (=> bm!14022 (= call!14029 (list!1512 (ite c!49499 call!14027 call!14031)))))

(declare-fun bm!14023 () Bool)

(assert (=> bm!14023 (= call!14031 call!14027)))

(declare-fun b!261686 () Bool)

(assert (=> b!261686 (= e!162470 Nil!3756)))

(assert (=> b!261686 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 tokens!465))) (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 tokens!465)) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106712 () Unit!4655)

(declare-fun Unit!4666 () Unit!4655)

(assert (=> b!261686 (= lt!106712 Unit!4666)))

(declare-fun lt!106714 () Unit!4655)

(declare-fun call!14030 () List!3766)

(assert (=> b!261686 (= lt!106714 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!14030 lt!106717))))

(assert (=> b!261686 false))

(declare-fun lt!106715 () Unit!4655)

(declare-fun Unit!4667 () Unit!4655)

(assert (=> b!261686 (= lt!106715 Unit!4667)))

(declare-fun b!261687 () Bool)

(declare-fun e!162471 () BalanceConc!2516)

(assert (=> b!261687 (= e!162471 (charsOf!361 separatorToken!170))))

(declare-fun b!261688 () Bool)

(declare-fun e!162473 () List!3766)

(assert (=> b!261688 (= e!162473 Nil!3756)))

(declare-fun b!261689 () Bool)

(assert (=> b!261689 (= e!162471 call!14031)))

(declare-fun bm!14024 () Bool)

(assert (=> bm!14024 (= call!14030 (list!1512 e!162471))))

(declare-fun c!49500 () Bool)

(declare-fun c!49502 () Bool)

(assert (=> bm!14024 (= c!49500 c!49502)))

(declare-fun bm!14025 () Bool)

(assert (=> bm!14025 (= call!14027 (charsOf!361 (h!9154 tokens!465)))))

(declare-fun d!74942 () Bool)

(declare-fun c!49501 () Bool)

(assert (=> d!74942 (= c!49501 (is-Cons!3757 tokens!465))))

(assert (=> d!74942 (= (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!162473)))

(assert (=> b!261685 (= e!162473 e!162472)))

(declare-fun lt!106716 () Unit!4655)

(assert (=> b!261685 (= lt!106716 (forallContained!273 tokens!465 lambda!8764 (h!9154 tokens!465)))))

(assert (=> b!261685 (= lt!106717 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 tokens!465) separatorToken!170))))

(declare-fun lt!106713 () Option!780)

(assert (=> b!261685 (= lt!106713 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)))))

(assert (=> b!261685 (= c!49499 (and (is-Some!779 lt!106713) (= (_1!2317 (v!14618 lt!106713)) (h!9154 tokens!465))))))

(declare-fun b!261690 () Bool)

(assert (=> b!261690 (= c!49502 (and (is-Some!779 lt!106713) (not (= (_1!2317 (v!14618 lt!106713)) (h!9154 tokens!465)))))))

(assert (=> b!261690 (= e!162472 e!162470)))

(declare-fun bm!14026 () Bool)

(assert (=> bm!14026 (= call!14028 (++!965 call!14029 (ite c!49499 lt!106717 call!14030)))))

(assert (= (and d!74942 c!49501) b!261685))

(assert (= (and d!74942 (not c!49501)) b!261688))

(assert (= (and b!261685 c!49499) b!261683))

(assert (= (and b!261685 (not c!49499)) b!261690))

(assert (= (and b!261690 c!49502) b!261684))

(assert (= (and b!261690 (not c!49502)) b!261686))

(assert (= (or b!261684 b!261686) bm!14023))

(assert (= (or b!261684 b!261686) bm!14024))

(assert (= (and bm!14024 c!49500) b!261687))

(assert (= (and bm!14024 (not c!49500)) b!261689))

(assert (= (or b!261683 bm!14023) bm!14025))

(assert (= (or b!261683 b!261684) bm!14022))

(assert (= (or b!261683 b!261684) bm!14026))

(declare-fun m!325143 () Bool)

(assert (=> bm!14024 m!325143))

(declare-fun m!325145 () Bool)

(assert (=> b!261686 m!325145))

(assert (=> b!261686 m!325145))

(declare-fun m!325147 () Bool)

(assert (=> b!261686 m!325147))

(assert (=> b!261686 m!325145))

(declare-fun m!325149 () Bool)

(assert (=> b!261686 m!325149))

(declare-fun m!325151 () Bool)

(assert (=> b!261686 m!325151))

(assert (=> bm!14025 m!324495))

(declare-fun m!325153 () Bool)

(assert (=> b!261684 m!325153))

(declare-fun m!325155 () Bool)

(assert (=> bm!14022 m!325155))

(declare-fun m!325157 () Bool)

(assert (=> b!261685 m!325157))

(declare-fun m!325159 () Bool)

(assert (=> b!261685 m!325159))

(declare-fun m!325161 () Bool)

(assert (=> b!261685 m!325161))

(assert (=> b!261685 m!324495))

(assert (=> b!261685 m!324501))

(assert (=> b!261685 m!324495))

(assert (=> b!261685 m!324485))

(assert (=> b!261685 m!324501))

(assert (=> b!261685 m!325157))

(assert (=> b!261687 m!324487))

(declare-fun m!325163 () Bool)

(assert (=> bm!14026 m!325163))

(assert (=> b!261319 d!74942))

(declare-fun d!74946 () Bool)

(declare-fun res!120380 () Bool)

(declare-fun e!162488 () Bool)

(assert (=> d!74946 (=> res!120380 e!162488)))

(assert (=> d!74946 (= res!120380 (is-Nil!3757 tokens!465))))

(assert (=> d!74946 (= (forall!922 tokens!465 lambda!8733) e!162488)))

(declare-fun b!261709 () Bool)

(declare-fun e!162489 () Bool)

(assert (=> b!261709 (= e!162488 e!162489)))

(declare-fun res!120381 () Bool)

(assert (=> b!261709 (=> (not res!120381) (not e!162489))))

(declare-fun dynLambda!1892 (Int Token!1176) Bool)

(assert (=> b!261709 (= res!120381 (dynLambda!1892 lambda!8733 (h!9154 tokens!465)))))

(declare-fun b!261710 () Bool)

(assert (=> b!261710 (= e!162489 (forall!922 (t!37001 tokens!465) lambda!8733))))

(assert (= (and d!74946 (not res!120380)) b!261709))

(assert (= (and b!261709 res!120381) b!261710))

(declare-fun b_lambda!8027 () Bool)

(assert (=> (not b_lambda!8027) (not b!261709)))

(declare-fun m!325191 () Bool)

(assert (=> b!261709 m!325191))

(declare-fun m!325193 () Bool)

(assert (=> b!261710 m!325193))

(assert (=> b!261306 d!74946))

(declare-fun d!74954 () Bool)

(declare-fun res!120394 () Bool)

(declare-fun e!162504 () Bool)

(assert (=> d!74954 (=> res!120394 e!162504)))

(assert (=> d!74954 (= res!120394 (not (is-Cons!3758 rules!1920)))))

(assert (=> d!74954 (= (sepAndNonSepRulesDisjointChars!305 rules!1920 rules!1920) e!162504)))

(declare-fun b!261727 () Bool)

(declare-fun e!162505 () Bool)

(assert (=> b!261727 (= e!162504 e!162505)))

(declare-fun res!120395 () Bool)

(assert (=> b!261727 (=> (not res!120395) (not e!162505))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!105 (Rule!1232 List!3768) Bool)

(assert (=> b!261727 (= res!120395 (ruleDisjointCharsFromAllFromOtherType!105 (h!9155 rules!1920) rules!1920))))

(declare-fun b!261728 () Bool)

(assert (=> b!261728 (= e!162505 (sepAndNonSepRulesDisjointChars!305 rules!1920 (t!37002 rules!1920)))))

(assert (= (and d!74954 (not res!120394)) b!261727))

(assert (= (and b!261727 res!120395) b!261728))

(declare-fun m!325209 () Bool)

(assert (=> b!261727 m!325209))

(declare-fun m!325211 () Bool)

(assert (=> b!261728 m!325211))

(assert (=> b!261317 d!74954))

(declare-fun d!74964 () Bool)

(assert (=> d!74964 (= (inv!4637 (tag!926 (rule!1301 (h!9154 tokens!465)))) (= (mod (str.len (value!24722 (tag!926 (rule!1301 (h!9154 tokens!465))))) 2) 0))))

(assert (=> b!261307 d!74964))

(declare-fun d!74966 () Bool)

(declare-fun res!120396 () Bool)

(declare-fun e!162506 () Bool)

(assert (=> d!74966 (=> (not res!120396) (not e!162506))))

(assert (=> d!74966 (= res!120396 (semiInverseModEq!246 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))))))

(assert (=> d!74966 (= (inv!4640 (transformation!716 (rule!1301 (h!9154 tokens!465)))) e!162506)))

(declare-fun b!261729 () Bool)

(assert (=> b!261729 (= e!162506 (equivClasses!229 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))))))

(assert (= (and d!74966 res!120396) b!261729))

(declare-fun m!325213 () Bool)

(assert (=> d!74966 m!325213))

(declare-fun m!325215 () Bool)

(assert (=> b!261729 m!325215))

(assert (=> b!261307 d!74966))

(declare-fun b!261744 () Bool)

(declare-fun e!162511 () Bool)

(declare-fun tp_is_empty!1789 () Bool)

(assert (=> b!261744 (= e!162511 tp_is_empty!1789)))

(assert (=> b!261305 (= tp!100465 e!162511)))

(declare-fun b!261747 () Bool)

(declare-fun tp!100535 () Bool)

(declare-fun tp!100537 () Bool)

(assert (=> b!261747 (= e!162511 (and tp!100535 tp!100537))))

(declare-fun b!261745 () Bool)

(declare-fun tp!100534 () Bool)

(declare-fun tp!100536 () Bool)

(assert (=> b!261745 (= e!162511 (and tp!100534 tp!100536))))

(declare-fun b!261746 () Bool)

(declare-fun tp!100538 () Bool)

(assert (=> b!261746 (= e!162511 tp!100538)))

(assert (= (and b!261305 (is-ElementMatch!940 (regex!716 (rule!1301 separatorToken!170)))) b!261744))

(assert (= (and b!261305 (is-Concat!1679 (regex!716 (rule!1301 separatorToken!170)))) b!261745))

(assert (= (and b!261305 (is-Star!940 (regex!716 (rule!1301 separatorToken!170)))) b!261746))

(assert (= (and b!261305 (is-Union!940 (regex!716 (rule!1301 separatorToken!170)))) b!261747))

(declare-fun b!261750 () Bool)

(declare-fun e!162513 () Bool)

(assert (=> b!261750 (= e!162513 tp_is_empty!1789)))

(assert (=> b!261325 (= tp!100470 e!162513)))

(declare-fun b!261753 () Bool)

(declare-fun tp!100540 () Bool)

(declare-fun tp!100542 () Bool)

(assert (=> b!261753 (= e!162513 (and tp!100540 tp!100542))))

(declare-fun b!261751 () Bool)

(declare-fun tp!100539 () Bool)

(declare-fun tp!100541 () Bool)

(assert (=> b!261751 (= e!162513 (and tp!100539 tp!100541))))

(declare-fun b!261752 () Bool)

(declare-fun tp!100543 () Bool)

(assert (=> b!261752 (= e!162513 tp!100543)))

(assert (= (and b!261325 (is-ElementMatch!940 (regex!716 (h!9155 rules!1920)))) b!261750))

(assert (= (and b!261325 (is-Concat!1679 (regex!716 (h!9155 rules!1920)))) b!261751))

(assert (= (and b!261325 (is-Star!940 (regex!716 (h!9155 rules!1920)))) b!261752))

(assert (= (and b!261325 (is-Union!940 (regex!716 (h!9155 rules!1920)))) b!261753))

(declare-fun b!261758 () Bool)

(declare-fun e!162516 () Bool)

(declare-fun tp!100546 () Bool)

(assert (=> b!261758 (= e!162516 (and tp_is_empty!1789 tp!100546))))

(assert (=> b!261315 (= tp!100472 e!162516)))

(assert (= (and b!261315 (is-Cons!3756 (originalCharacters!759 (h!9154 tokens!465)))) b!261758))

(declare-fun b!261770 () Bool)

(declare-fun b_free!9733 () Bool)

(declare-fun b_next!9733 () Bool)

(assert (=> b!261770 (= b_free!9733 (not b_next!9733))))

(declare-fun tp!100557 () Bool)

(declare-fun b_and!20331 () Bool)

(assert (=> b!261770 (= tp!100557 b_and!20331)))

(declare-fun b_free!9735 () Bool)

(declare-fun b_next!9735 () Bool)

(assert (=> b!261770 (= b_free!9735 (not b_next!9735))))

(declare-fun t!37049 () Bool)

(declare-fun tb!14161 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37049) tb!14161))

(declare-fun result!17642 () Bool)

(assert (= result!17642 result!17608))

(assert (=> b!261396 t!37049))

(assert (=> d!74912 t!37049))

(declare-fun tb!14163 () Bool)

(declare-fun t!37051 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37051) tb!14163))

(declare-fun result!17644 () Bool)

(assert (= result!17644 result!17630))

(assert (=> d!74916 t!37051))

(assert (=> b!261596 t!37051))

(declare-fun tp!100558 () Bool)

(declare-fun b_and!20333 () Bool)

(assert (=> b!261770 (= tp!100558 (and (=> t!37049 result!17642) (=> t!37051 result!17644) b_and!20333))))

(declare-fun e!162526 () Bool)

(assert (=> b!261770 (= e!162526 (and tp!100557 tp!100558))))

(declare-fun tp!100556 () Bool)

(declare-fun b!261769 () Bool)

(declare-fun e!162528 () Bool)

(assert (=> b!261769 (= e!162528 (and tp!100556 (inv!4637 (tag!926 (h!9155 (t!37002 rules!1920)))) (inv!4640 (transformation!716 (h!9155 (t!37002 rules!1920)))) e!162526))))

(declare-fun b!261768 () Bool)

(declare-fun e!162529 () Bool)

(declare-fun tp!100555 () Bool)

(assert (=> b!261768 (= e!162529 (and e!162528 tp!100555))))

(assert (=> b!261313 (= tp!100476 e!162529)))

(assert (= b!261769 b!261770))

(assert (= b!261768 b!261769))

(assert (= (and b!261313 (is-Cons!3758 (t!37002 rules!1920))) b!261768))

(declare-fun m!325227 () Bool)

(assert (=> b!261769 m!325227))

(declare-fun m!325229 () Bool)

(assert (=> b!261769 m!325229))

(declare-fun b!261792 () Bool)

(declare-fun b_free!9737 () Bool)

(declare-fun b_next!9737 () Bool)

(assert (=> b!261792 (= b_free!9737 (not b_next!9737))))

(declare-fun tp!100571 () Bool)

(declare-fun b_and!20341 () Bool)

(assert (=> b!261792 (= tp!100571 b_and!20341)))

(declare-fun b_free!9739 () Bool)

(declare-fun b_next!9739 () Bool)

(assert (=> b!261792 (= b_free!9739 (not b_next!9739))))

(declare-fun t!37053 () Bool)

(declare-fun tb!14165 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37053) tb!14165))

(declare-fun result!17648 () Bool)

(assert (= result!17648 result!17608))

(assert (=> b!261396 t!37053))

(assert (=> d!74912 t!37053))

(declare-fun t!37055 () Bool)

(declare-fun tb!14167 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37055) tb!14167))

(declare-fun result!17650 () Bool)

(assert (= result!17650 result!17630))

(assert (=> d!74916 t!37055))

(assert (=> b!261596 t!37055))

(declare-fun b_and!20343 () Bool)

(declare-fun tp!100573 () Bool)

(assert (=> b!261792 (= tp!100573 (and (=> t!37053 result!17648) (=> t!37055 result!17650) b_and!20343))))

(declare-fun e!162553 () Bool)

(declare-fun e!162551 () Bool)

(declare-fun tp!100569 () Bool)

(declare-fun b!261791 () Bool)

(assert (=> b!261791 (= e!162551 (and tp!100569 (inv!4637 (tag!926 (rule!1301 (h!9154 (t!37001 tokens!465))))) (inv!4640 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) e!162553))))

(assert (=> b!261792 (= e!162553 (and tp!100571 tp!100573))))

(declare-fun e!162549 () Bool)

(assert (=> b!261311 (= tp!100473 e!162549)))

(declare-fun tp!100570 () Bool)

(declare-fun e!162552 () Bool)

(declare-fun b!261789 () Bool)

(assert (=> b!261789 (= e!162549 (and (inv!4641 (h!9154 (t!37001 tokens!465))) e!162552 tp!100570))))

(declare-fun tp!100572 () Bool)

(declare-fun b!261790 () Bool)

(assert (=> b!261790 (= e!162552 (and (inv!21 (value!24723 (h!9154 (t!37001 tokens!465)))) e!162551 tp!100572))))

(assert (= b!261791 b!261792))

(assert (= b!261790 b!261791))

(assert (= b!261789 b!261790))

(assert (= (and b!261311 (is-Cons!3757 (t!37001 tokens!465))) b!261789))

(declare-fun m!325241 () Bool)

(assert (=> b!261791 m!325241))

(declare-fun m!325243 () Bool)

(assert (=> b!261791 m!325243))

(declare-fun m!325245 () Bool)

(assert (=> b!261789 m!325245))

(declare-fun m!325247 () Bool)

(assert (=> b!261790 m!325247))

(declare-fun b!261793 () Bool)

(declare-fun e!162555 () Bool)

(declare-fun tp!100574 () Bool)

(assert (=> b!261793 (= e!162555 (and tp_is_empty!1789 tp!100574))))

(assert (=> b!261320 (= tp!100475 e!162555)))

(assert (= (and b!261320 (is-Cons!3756 (originalCharacters!759 separatorToken!170))) b!261793))

(declare-fun b!261794 () Bool)

(declare-fun e!162556 () Bool)

(assert (=> b!261794 (= e!162556 tp_is_empty!1789)))

(assert (=> b!261307 (= tp!100469 e!162556)))

(declare-fun b!261797 () Bool)

(declare-fun tp!100576 () Bool)

(declare-fun tp!100578 () Bool)

(assert (=> b!261797 (= e!162556 (and tp!100576 tp!100578))))

(declare-fun b!261795 () Bool)

(declare-fun tp!100575 () Bool)

(declare-fun tp!100577 () Bool)

(assert (=> b!261795 (= e!162556 (and tp!100575 tp!100577))))

(declare-fun b!261796 () Bool)

(declare-fun tp!100579 () Bool)

(assert (=> b!261796 (= e!162556 tp!100579)))

(assert (= (and b!261307 (is-ElementMatch!940 (regex!716 (rule!1301 (h!9154 tokens!465))))) b!261794))

(assert (= (and b!261307 (is-Concat!1679 (regex!716 (rule!1301 (h!9154 tokens!465))))) b!261795))

(assert (= (and b!261307 (is-Star!940 (regex!716 (rule!1301 (h!9154 tokens!465))))) b!261796))

(assert (= (and b!261307 (is-Union!940 (regex!716 (rule!1301 (h!9154 tokens!465))))) b!261797))

(declare-fun b_lambda!8035 () Bool)

(assert (= b_lambda!8027 (or b!261306 b_lambda!8035)))

(declare-fun bs!28469 () Bool)

(declare-fun d!74978 () Bool)

(assert (= bs!28469 (and d!74978 b!261306)))

(assert (=> bs!28469 (= (dynLambda!1892 lambda!8733 (h!9154 tokens!465)) (not (isSeparator!716 (rule!1301 (h!9154 tokens!465)))))))

(assert (=> b!261709 d!74978))

(declare-fun b_lambda!8037 () Bool)

(assert (= b_lambda!8015 (or (and b!261324 b_free!9719) (and b!261309 b_free!9711 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261792 b_free!9739 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) b_lambda!8037)))

(declare-fun b_lambda!8039 () Bool)

(assert (= b_lambda!8021 (or (and b!261324 b_free!9719) (and b!261309 b_free!9711 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261792 b_free!9739 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))))) b_lambda!8039)))

(declare-fun b_lambda!8041 () Bool)

(assert (= b_lambda!8023 (or (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261324 b_free!9719 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261792 b_free!9739 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261309 b_free!9711) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) b_lambda!8041)))

(declare-fun b_lambda!8043 () Bool)

(assert (= b_lambda!8025 (or (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261324 b_free!9719 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261792 b_free!9739 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (and b!261309 b_free!9711) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) b_lambda!8043)))

(push 1)

(assert (not b!261758))

(assert (not d!74848))

(assert (not b_lambda!8041))

(assert (not d!74886))

(assert (not bm!13994))

(assert (not b_lambda!8035))

(assert (not b!261582))

(assert (not b!261710))

(assert (not bm!13996))

(assert (not b_next!9737))

(assert (not b!261502))

(assert b_and!20343)

(assert b_and!20269)

(assert (not d!74918))

(assert b_and!20341)

(assert (not b!261665))

(assert (not tb!14137))

(assert (not b!261478))

(assert (not bm!14015))

(assert (not b!261442))

(assert (not bm!14022))

(assert (not b_next!9719))

(assert (not bm!14026))

(assert (not b!261789))

(assert (not bm!13966))

(assert (not b!261745))

(assert (not d!74934))

(assert (not b!261397))

(assert (not d!74912))

(assert (not b!261790))

(assert (not b!261585))

(assert (not b!261414))

(assert (not b!261584))

(assert (not b!261598))

(assert (not b_next!9739))

(assert (not d!74852))

(assert (not bm!14025))

(assert (not b!261438))

(assert (not b_next!9713))

(assert (not d!74924))

(assert (not b!261752))

(assert (not d!74856))

(assert (not b!261491))

(assert (not d!74894))

(assert (not b!261797))

(assert (not bm!13962))

(assert (not b!261667))

(assert (not b!261501))

(assert b_and!20321)

(assert (not b!261417))

(assert b_and!20331)

(assert (not b!261638))

(assert (not d!74862))

(assert (not b!261661))

(assert (not bm!14024))

(assert (not d!74920))

(assert (not d!74966))

(assert (not b!261477))

(assert (not b!261687))

(assert (not d!74932))

(assert (not bm!13964))

(assert (not b!261753))

(assert b_and!20319)

(assert (not b!261396))

(assert (not b!261391))

(assert b_and!20333)

(assert (not b_lambda!8037))

(assert (not b!261498))

(assert (not b!261658))

(assert (not b!261596))

(assert (not b!261768))

(assert (not b!261602))

(assert (not d!74916))

(assert (not b_lambda!8043))

(assert (not b!261747))

(assert (not d!74878))

(assert (not d!74892))

(assert (not b!261497))

(assert (not bm!14014))

(assert (not b!261595))

(assert (not b!261728))

(assert (not b_next!9711))

(assert (not b!261686))

(assert (not b!261769))

(assert (not b!261664))

(assert (not b!261437))

(assert (not b!261601))

(assert b_and!20265)

(assert (not b_lambda!8039))

(assert (not b!261453))

(assert (not b!261597))

(assert (not d!74880))

(assert (not d!74890))

(assert (not bm!13995))

(assert (not d!74914))

(assert (not tb!14155))

(assert (not b!261685))

(assert (not b!261592))

(assert (not bm!13965))

(assert (not b_next!9733))

(assert (not b!261791))

(assert (not b!261587))

(assert (not b!261403))

(assert (not b!261639))

(assert (not d!74936))

(assert (not b!261793))

(assert (not b_next!9717))

(assert (not b!261578))

(assert (not b!261677))

(assert (not b!261691))

(assert (not b!261452))

(assert (not b_next!9715))

(assert (not d!74876))

(assert (not b!261588))

(assert (not b_next!9735))

(assert (not b!261402))

(assert (not b!261581))

(assert b_and!20273)

(assert tp_is_empty!1789)

(assert (not d!74888))

(assert (not b_next!9709))

(assert (not b!261476))

(assert (not b!261593))

(assert (not b!261729))

(assert (not b!261662))

(assert (not d!74882))

(assert (not b!261418))

(assert (not b!261479))

(assert (not b!261684))

(assert (not b!261439))

(assert (not b!261746))

(assert (not bm!14016))

(assert b_and!20323)

(assert (not b!261796))

(assert (not d!74860))

(assert (not b!261727))

(assert (not b!261751))

(assert (not d!74864))

(assert (not b!261795))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!9719))

(assert b_and!20321)

(assert b_and!20331)

(assert (not b_next!9711))

(assert b_and!20265)

(assert (not b_next!9733))

(assert (not b_next!9717))

(assert b_and!20273)

(assert (not b_next!9709))

(assert b_and!20323)

(assert (not b_next!9737))

(assert b_and!20343)

(assert b_and!20269)

(assert b_and!20341)

(assert (not b_next!9739))

(assert (not b_next!9713))

(assert b_and!20319)

(assert b_and!20333)

(assert (not b_next!9735))

(assert (not b_next!9715))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!74990 () Bool)

(declare-fun lt!106735 () Int)

(assert (=> d!74990 (>= lt!106735 0)))

(declare-fun e!162613 () Int)

(assert (=> d!74990 (= lt!106735 e!162613)))

(declare-fun c!49511 () Bool)

(assert (=> d!74990 (= c!49511 (is-Nil!3756 lt!106634))))

(assert (=> d!74990 (= (size!2988 lt!106634) lt!106735)))

(declare-fun b!261873 () Bool)

(assert (=> b!261873 (= e!162613 0)))

(declare-fun b!261874 () Bool)

(assert (=> b!261874 (= e!162613 (+ 1 (size!2988 (t!37000 lt!106634))))))

(assert (= (and d!74990 c!49511) b!261873))

(assert (= (and d!74990 (not c!49511)) b!261874))

(declare-fun m!325291 () Bool)

(assert (=> b!261874 m!325291))

(assert (=> b!261593 d!74990))

(declare-fun d!74992 () Bool)

(declare-fun lt!106736 () Int)

(assert (=> d!74992 (>= lt!106736 0)))

(declare-fun e!162614 () Int)

(assert (=> d!74992 (= lt!106736 e!162614)))

(declare-fun c!49512 () Bool)

(assert (=> d!74992 (= c!49512 (is-Nil!3756 (++!965 lt!106502 lt!106503)))))

(assert (=> d!74992 (= (size!2988 (++!965 lt!106502 lt!106503)) lt!106736)))

(declare-fun b!261875 () Bool)

(assert (=> b!261875 (= e!162614 0)))

(declare-fun b!261876 () Bool)

(assert (=> b!261876 (= e!162614 (+ 1 (size!2988 (t!37000 (++!965 lt!106502 lt!106503)))))))

(assert (= (and d!74992 c!49512) b!261875))

(assert (= (and d!74992 (not c!49512)) b!261876))

(declare-fun m!325293 () Bool)

(assert (=> b!261876 m!325293))

(assert (=> b!261593 d!74992))

(declare-fun d!74994 () Bool)

(declare-fun lt!106737 () Int)

(assert (=> d!74994 (>= lt!106737 0)))

(declare-fun e!162615 () Int)

(assert (=> d!74994 (= lt!106737 e!162615)))

(declare-fun c!49513 () Bool)

(assert (=> d!74994 (= c!49513 (is-Nil!3756 lt!106498))))

(assert (=> d!74994 (= (size!2988 lt!106498) lt!106737)))

(declare-fun b!261877 () Bool)

(assert (=> b!261877 (= e!162615 0)))

(declare-fun b!261878 () Bool)

(assert (=> b!261878 (= e!162615 (+ 1 (size!2988 (t!37000 lt!106498))))))

(assert (= (and d!74994 c!49513) b!261877))

(assert (= (and d!74994 (not c!49513)) b!261878))

(declare-fun m!325295 () Bool)

(assert (=> b!261878 m!325295))

(assert (=> b!261593 d!74994))

(declare-fun d!74996 () Bool)

(assert (=> d!74996 (= (list!1512 (ite c!49443 call!13967 call!13971)) (list!1514 (c!49414 (ite c!49443 call!13967 call!13971))))))

(declare-fun bs!28479 () Bool)

(assert (= bs!28479 d!74996))

(declare-fun m!325297 () Bool)

(assert (=> bs!28479 m!325297))

(assert (=> bm!13962 d!74996))

(declare-fun b!261889 () Bool)

(declare-fun res!120439 () Bool)

(declare-fun e!162618 () Bool)

(assert (=> b!261889 (=> (not res!120439) (not e!162618))))

(declare-fun height!143 (Conc!1254) Int)

(declare-fun ++!969 (Conc!1254 Conc!1254) Conc!1254)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!261889 (= res!120439 (>= (height!143 (++!969 (c!49414 e!162396) (c!49414 (ite c!49471 lt!106618 call!14001)))) (max!0 (height!143 (c!49414 e!162396)) (height!143 (c!49414 (ite c!49471 lt!106618 call!14001))))))))

(declare-fun lt!106740 () BalanceConc!2516)

(declare-fun b!261890 () Bool)

(assert (=> b!261890 (= e!162618 (= (list!1512 lt!106740) (++!965 (list!1512 e!162396) (list!1512 (ite c!49471 lt!106618 call!14001)))))))

(declare-fun b!261888 () Bool)

(declare-fun res!120437 () Bool)

(assert (=> b!261888 (=> (not res!120437) (not e!162618))))

(assert (=> b!261888 (= res!120437 (<= (height!143 (++!969 (c!49414 e!162396) (c!49414 (ite c!49471 lt!106618 call!14001)))) (+ (max!0 (height!143 (c!49414 e!162396)) (height!143 (c!49414 (ite c!49471 lt!106618 call!14001)))) 1)))))

(declare-fun d!74998 () Bool)

(assert (=> d!74998 e!162618))

(declare-fun res!120436 () Bool)

(assert (=> d!74998 (=> (not res!120436) (not e!162618))))

(declare-fun appendAssocInst!56 (Conc!1254 Conc!1254) Bool)

(assert (=> d!74998 (= res!120436 (appendAssocInst!56 (c!49414 e!162396) (c!49414 (ite c!49471 lt!106618 call!14001))))))

(assert (=> d!74998 (= lt!106740 (BalanceConc!2517 (++!969 (c!49414 e!162396) (c!49414 (ite c!49471 lt!106618 call!14001)))))))

(assert (=> d!74998 (= (++!967 e!162396 (ite c!49471 lt!106618 call!14001)) lt!106740)))

(declare-fun b!261887 () Bool)

(declare-fun res!120438 () Bool)

(assert (=> b!261887 (=> (not res!120438) (not e!162618))))

(declare-fun isBalanced!335 (Conc!1254) Bool)

(assert (=> b!261887 (= res!120438 (isBalanced!335 (++!969 (c!49414 e!162396) (c!49414 (ite c!49471 lt!106618 call!14001)))))))

(assert (= (and d!74998 res!120436) b!261887))

(assert (= (and b!261887 res!120438) b!261888))

(assert (= (and b!261888 res!120437) b!261889))

(assert (= (and b!261889 res!120439) b!261890))

(declare-fun m!325299 () Bool)

(assert (=> b!261888 m!325299))

(declare-fun m!325301 () Bool)

(assert (=> b!261888 m!325301))

(assert (=> b!261888 m!325299))

(declare-fun m!325303 () Bool)

(assert (=> b!261888 m!325303))

(declare-fun m!325305 () Bool)

(assert (=> b!261888 m!325305))

(assert (=> b!261888 m!325305))

(assert (=> b!261888 m!325303))

(declare-fun m!325307 () Bool)

(assert (=> b!261888 m!325307))

(declare-fun m!325309 () Bool)

(assert (=> d!74998 m!325309))

(assert (=> d!74998 m!325299))

(assert (=> b!261889 m!325299))

(assert (=> b!261889 m!325301))

(assert (=> b!261889 m!325299))

(assert (=> b!261889 m!325303))

(assert (=> b!261889 m!325305))

(assert (=> b!261889 m!325305))

(assert (=> b!261889 m!325303))

(assert (=> b!261889 m!325307))

(declare-fun m!325311 () Bool)

(assert (=> b!261890 m!325311))

(declare-fun m!325313 () Bool)

(assert (=> b!261890 m!325313))

(declare-fun m!325315 () Bool)

(assert (=> b!261890 m!325315))

(assert (=> b!261890 m!325313))

(assert (=> b!261890 m!325315))

(declare-fun m!325317 () Bool)

(assert (=> b!261890 m!325317))

(assert (=> b!261887 m!325299))

(assert (=> b!261887 m!325299))

(declare-fun m!325319 () Bool)

(assert (=> b!261887 m!325319))

(assert (=> bm!13994 d!74998))

(declare-fun b!261891 () Bool)

(declare-fun e!162619 () List!3766)

(assert (=> b!261891 (= e!162619 lt!106717)))

(declare-fun b!261894 () Bool)

(declare-fun lt!106741 () List!3766)

(declare-fun e!162620 () Bool)

(assert (=> b!261894 (= e!162620 (or (not (= lt!106717 Nil!3756)) (= lt!106741 call!14028)))))

(declare-fun d!75000 () Bool)

(assert (=> d!75000 e!162620))

(declare-fun res!120441 () Bool)

(assert (=> d!75000 (=> (not res!120441) (not e!162620))))

(assert (=> d!75000 (= res!120441 (= (content!530 lt!106741) (set.union (content!530 call!14028) (content!530 lt!106717))))))

(assert (=> d!75000 (= lt!106741 e!162619)))

(declare-fun c!49517 () Bool)

(assert (=> d!75000 (= c!49517 (is-Nil!3756 call!14028))))

(assert (=> d!75000 (= (++!965 call!14028 lt!106717) lt!106741)))

(declare-fun b!261892 () Bool)

(assert (=> b!261892 (= e!162619 (Cons!3756 (h!9153 call!14028) (++!965 (t!37000 call!14028) lt!106717)))))

(declare-fun b!261893 () Bool)

(declare-fun res!120440 () Bool)

(assert (=> b!261893 (=> (not res!120440) (not e!162620))))

(assert (=> b!261893 (= res!120440 (= (size!2988 lt!106741) (+ (size!2988 call!14028) (size!2988 lt!106717))))))

(assert (= (and d!75000 c!49517) b!261891))

(assert (= (and d!75000 (not c!49517)) b!261892))

(assert (= (and d!75000 res!120441) b!261893))

(assert (= (and b!261893 res!120440) b!261894))

(declare-fun m!325321 () Bool)

(assert (=> d!75000 m!325321))

(declare-fun m!325323 () Bool)

(assert (=> d!75000 m!325323))

(declare-fun m!325325 () Bool)

(assert (=> d!75000 m!325325))

(declare-fun m!325327 () Bool)

(assert (=> b!261892 m!325327))

(declare-fun m!325329 () Bool)

(assert (=> b!261893 m!325329))

(declare-fun m!325331 () Bool)

(assert (=> b!261893 m!325331))

(declare-fun m!325333 () Bool)

(assert (=> b!261893 m!325333))

(assert (=> b!261684 d!75000))

(declare-fun d!75002 () Bool)

(assert (=> d!75002 (= (inv!4637 (tag!926 (h!9155 (t!37002 rules!1920)))) (= (mod (str.len (value!24722 (tag!926 (h!9155 (t!37002 rules!1920))))) 2) 0))))

(assert (=> b!261769 d!75002))

(declare-fun d!75004 () Bool)

(declare-fun res!120442 () Bool)

(declare-fun e!162621 () Bool)

(assert (=> d!75004 (=> (not res!120442) (not e!162621))))

(assert (=> d!75004 (= res!120442 (semiInverseModEq!246 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))))))

(assert (=> d!75004 (= (inv!4640 (transformation!716 (h!9155 (t!37002 rules!1920)))) e!162621)))

(declare-fun b!261895 () Bool)

(assert (=> b!261895 (= e!162621 (equivClasses!229 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))))))

(assert (= (and d!75004 res!120442) b!261895))

(declare-fun m!325335 () Bool)

(assert (=> d!75004 m!325335))

(declare-fun m!325337 () Bool)

(assert (=> b!261895 m!325337))

(assert (=> b!261769 d!75004))

(declare-fun d!75006 () Bool)

(declare-fun res!120443 () Bool)

(declare-fun e!162622 () Bool)

(assert (=> d!75006 (=> res!120443 e!162622)))

(assert (=> d!75006 (= res!120443 (is-Nil!3757 (t!37001 tokens!465)))))

(assert (=> d!75006 (= (forall!922 (t!37001 tokens!465) lambda!8733) e!162622)))

(declare-fun b!261896 () Bool)

(declare-fun e!162623 () Bool)

(assert (=> b!261896 (= e!162622 e!162623)))

(declare-fun res!120444 () Bool)

(assert (=> b!261896 (=> (not res!120444) (not e!162623))))

(assert (=> b!261896 (= res!120444 (dynLambda!1892 lambda!8733 (h!9154 (t!37001 tokens!465))))))

(declare-fun b!261897 () Bool)

(assert (=> b!261897 (= e!162623 (forall!922 (t!37001 (t!37001 tokens!465)) lambda!8733))))

(assert (= (and d!75006 (not res!120443)) b!261896))

(assert (= (and b!261896 res!120444) b!261897))

(declare-fun b_lambda!8055 () Bool)

(assert (=> (not b_lambda!8055) (not b!261896)))

(declare-fun m!325339 () Bool)

(assert (=> b!261896 m!325339))

(declare-fun m!325341 () Bool)

(assert (=> b!261897 m!325341))

(assert (=> b!261710 d!75006))

(declare-fun d!75008 () Bool)

(declare-fun c!49520 () Bool)

(assert (=> d!75008 (= c!49520 (is-Nil!3756 lt!106561))))

(declare-fun e!162626 () (Set C!2802))

(assert (=> d!75008 (= (content!530 lt!106561) e!162626)))

(declare-fun b!261902 () Bool)

(assert (=> b!261902 (= e!162626 (as set.empty (Set C!2802)))))

(declare-fun b!261903 () Bool)

(assert (=> b!261903 (= e!162626 (set.union (set.insert (h!9153 lt!106561) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106561))))))

(assert (= (and d!75008 c!49520) b!261902))

(assert (= (and d!75008 (not c!49520)) b!261903))

(declare-fun m!325343 () Bool)

(assert (=> b!261903 m!325343))

(declare-fun m!325345 () Bool)

(assert (=> b!261903 m!325345))

(assert (=> d!74890 d!75008))

(declare-fun d!75010 () Bool)

(declare-fun c!49521 () Bool)

(assert (=> d!75010 (= c!49521 (is-Nil!3756 lt!106502))))

(declare-fun e!162627 () (Set C!2802))

(assert (=> d!75010 (= (content!530 lt!106502) e!162627)))

(declare-fun b!261904 () Bool)

(assert (=> b!261904 (= e!162627 (as set.empty (Set C!2802)))))

(declare-fun b!261905 () Bool)

(assert (=> b!261905 (= e!162627 (set.union (set.insert (h!9153 lt!106502) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106502))))))

(assert (= (and d!75010 c!49521) b!261904))

(assert (= (and d!75010 (not c!49521)) b!261905))

(declare-fun m!325347 () Bool)

(assert (=> b!261905 m!325347))

(declare-fun m!325349 () Bool)

(assert (=> b!261905 m!325349))

(assert (=> d!74890 d!75010))

(declare-fun d!75012 () Bool)

(declare-fun c!49522 () Bool)

(assert (=> d!75012 (= c!49522 (is-Nil!3756 lt!106500))))

(declare-fun e!162628 () (Set C!2802))

(assert (=> d!75012 (= (content!530 lt!106500) e!162628)))

(declare-fun b!261906 () Bool)

(assert (=> b!261906 (= e!162628 (as set.empty (Set C!2802)))))

(declare-fun b!261907 () Bool)

(assert (=> b!261907 (= e!162628 (set.union (set.insert (h!9153 lt!106500) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106500))))))

(assert (= (and d!75012 c!49522) b!261906))

(assert (= (and d!75012 (not c!49522)) b!261907))

(declare-fun m!325351 () Bool)

(assert (=> b!261907 m!325351))

(declare-fun m!325353 () Bool)

(assert (=> b!261907 m!325353))

(assert (=> d!74890 d!75012))

(declare-fun d!75014 () Bool)

(assert (=> d!75014 (= (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))) (isBalanced!335 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(declare-fun bs!28480 () Bool)

(assert (= bs!28480 d!75014))

(declare-fun m!325355 () Bool)

(assert (=> bs!28480 m!325355))

(assert (=> tb!14137 d!75014))

(declare-fun d!75016 () Bool)

(declare-fun res!120445 () Bool)

(declare-fun e!162629 () Bool)

(assert (=> d!75016 (=> (not res!120445) (not e!162629))))

(assert (=> d!75016 (= res!120445 (not (isEmpty!2359 (originalCharacters!759 (h!9154 (t!37001 tokens!465))))))))

(assert (=> d!75016 (= (inv!4641 (h!9154 (t!37001 tokens!465))) e!162629)))

(declare-fun b!261908 () Bool)

(declare-fun res!120446 () Bool)

(assert (=> b!261908 (=> (not res!120446) (not e!162629))))

(assert (=> b!261908 (= res!120446 (= (originalCharacters!759 (h!9154 (t!37001 tokens!465))) (list!1512 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (value!24723 (h!9154 (t!37001 tokens!465)))))))))

(declare-fun b!261909 () Bool)

(assert (=> b!261909 (= e!162629 (= (size!2986 (h!9154 (t!37001 tokens!465))) (size!2988 (originalCharacters!759 (h!9154 (t!37001 tokens!465))))))))

(assert (= (and d!75016 res!120445) b!261908))

(assert (= (and b!261908 res!120446) b!261909))

(declare-fun b_lambda!8057 () Bool)

(assert (=> (not b_lambda!8057) (not b!261908)))

(declare-fun t!37072 () Bool)

(declare-fun tb!14177 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37072) tb!14177))

(declare-fun b!261910 () Bool)

(declare-fun e!162630 () Bool)

(declare-fun tp!100636 () Bool)

(assert (=> b!261910 (= e!162630 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (value!24723 (h!9154 (t!37001 tokens!465)))))) tp!100636))))

(declare-fun result!17668 () Bool)

(assert (=> tb!14177 (= result!17668 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (value!24723 (h!9154 (t!37001 tokens!465))))) e!162630))))

(assert (= tb!14177 b!261910))

(declare-fun m!325357 () Bool)

(assert (=> b!261910 m!325357))

(declare-fun m!325359 () Bool)

(assert (=> tb!14177 m!325359))

(assert (=> b!261908 t!37072))

(declare-fun b_and!20353 () Bool)

(assert (= b_and!20343 (and (=> t!37072 result!17668) b_and!20353)))

(declare-fun t!37074 () Bool)

(declare-fun tb!14179 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37074) tb!14179))

(declare-fun result!17670 () Bool)

(assert (= result!17670 result!17668))

(assert (=> b!261908 t!37074))

(declare-fun b_and!20355 () Bool)

(assert (= b_and!20319 (and (=> t!37074 result!17670) b_and!20355)))

(declare-fun t!37076 () Bool)

(declare-fun tb!14181 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37076) tb!14181))

(declare-fun result!17672 () Bool)

(assert (= result!17672 result!17668))

(assert (=> b!261908 t!37076))

(declare-fun b_and!20357 () Bool)

(assert (= b_and!20333 (and (=> t!37076 result!17672) b_and!20357)))

(declare-fun t!37078 () Bool)

(declare-fun tb!14183 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37078) tb!14183))

(declare-fun result!17674 () Bool)

(assert (= result!17674 result!17668))

(assert (=> b!261908 t!37078))

(declare-fun b_and!20359 () Bool)

(assert (= b_and!20323 (and (=> t!37078 result!17674) b_and!20359)))

(declare-fun t!37080 () Bool)

(declare-fun tb!14185 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37080) tb!14185))

(declare-fun result!17676 () Bool)

(assert (= result!17676 result!17668))

(assert (=> b!261908 t!37080))

(declare-fun b_and!20361 () Bool)

(assert (= b_and!20321 (and (=> t!37080 result!17676) b_and!20361)))

(declare-fun m!325361 () Bool)

(assert (=> d!75016 m!325361))

(declare-fun m!325363 () Bool)

(assert (=> b!261908 m!325363))

(assert (=> b!261908 m!325363))

(declare-fun m!325365 () Bool)

(assert (=> b!261908 m!325365))

(declare-fun m!325367 () Bool)

(assert (=> b!261909 m!325367))

(assert (=> b!261789 d!75016))

(declare-fun d!75018 () Bool)

(declare-fun lt!106744 () Token!1176)

(assert (=> d!75018 (= lt!106744 (apply!732 (list!1515 lt!106499) 0))))

(declare-fun apply!735 (Conc!1255 Int) Token!1176)

(assert (=> d!75018 (= lt!106744 (apply!735 (c!49416 lt!106499) 0))))

(declare-fun e!162633 () Bool)

(assert (=> d!75018 e!162633))

(declare-fun res!120449 () Bool)

(assert (=> d!75018 (=> (not res!120449) (not e!162633))))

(assert (=> d!75018 (= res!120449 (<= 0 0))))

(assert (=> d!75018 (= (apply!731 lt!106499 0) lt!106744)))

(declare-fun b!261913 () Bool)

(assert (=> b!261913 (= e!162633 (< 0 (size!2989 lt!106499)))))

(assert (= (and d!75018 res!120449) b!261913))

(assert (=> d!75018 m!325005))

(assert (=> d!75018 m!325005))

(declare-fun m!325369 () Bool)

(assert (=> d!75018 m!325369))

(declare-fun m!325371 () Bool)

(assert (=> d!75018 m!325371))

(assert (=> b!261913 m!325037))

(assert (=> bm!14015 d!75018))

(declare-fun d!75020 () Bool)

(declare-fun c!49525 () Bool)

(assert (=> d!75020 (= c!49525 (is-Node!1254 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(declare-fun e!162638 () Bool)

(assert (=> d!75020 (= (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))) e!162638)))

(declare-fun b!261920 () Bool)

(declare-fun inv!4648 (Conc!1254) Bool)

(assert (=> b!261920 (= e!162638 (inv!4648 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(declare-fun b!261921 () Bool)

(declare-fun e!162639 () Bool)

(assert (=> b!261921 (= e!162638 e!162639)))

(declare-fun res!120452 () Bool)

(assert (=> b!261921 (= res!120452 (not (is-Leaf!1952 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))))))

(assert (=> b!261921 (=> res!120452 e!162639)))

(declare-fun b!261922 () Bool)

(declare-fun inv!4649 (Conc!1254) Bool)

(assert (=> b!261922 (= e!162639 (inv!4649 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(assert (= (and d!75020 c!49525) b!261920))

(assert (= (and d!75020 (not c!49525)) b!261921))

(assert (= (and b!261921 (not res!120452)) b!261922))

(declare-fun m!325373 () Bool)

(assert (=> b!261920 m!325373))

(declare-fun m!325375 () Bool)

(assert (=> b!261922 m!325375))

(assert (=> b!261402 d!75020))

(declare-fun d!75022 () Bool)

(assert (=> d!75022 (= (list!1512 lt!106635) (list!1514 (c!49414 lt!106635)))))

(declare-fun bs!28481 () Bool)

(assert (= bs!28481 d!75022))

(declare-fun m!325377 () Bool)

(assert (=> bs!28481 m!325377))

(assert (=> d!74916 d!75022))

(assert (=> b!261665 d!75018))

(declare-fun d!75024 () Bool)

(assert (=> d!75024 (= (head!875 (drop!204 lt!106621 0)) (apply!732 lt!106621 0))))

(declare-fun lt!106747 () Unit!4655)

(declare-fun choose!2411 (List!3767 Int) Unit!4655)

(assert (=> d!75024 (= lt!106747 (choose!2411 lt!106621 0))))

(declare-fun e!162642 () Bool)

(assert (=> d!75024 e!162642))

(declare-fun res!120455 () Bool)

(assert (=> d!75024 (=> (not res!120455) (not e!162642))))

(assert (=> d!75024 (= res!120455 (>= 0 0))))

(assert (=> d!75024 (= (lemmaDropApply!191 lt!106621 0) lt!106747)))

(declare-fun b!261925 () Bool)

(declare-fun size!2992 (List!3767) Int)

(assert (=> b!261925 (= e!162642 (< 0 (size!2992 lt!106621)))))

(assert (= (and d!75024 res!120455) b!261925))

(assert (=> d!75024 m!324877))

(assert (=> d!75024 m!324877))

(assert (=> d!75024 m!324885))

(assert (=> d!75024 m!324889))

(declare-fun m!325379 () Bool)

(assert (=> d!75024 m!325379))

(declare-fun m!325381 () Bool)

(assert (=> b!261925 m!325381))

(assert (=> b!261581 d!75024))

(declare-fun d!75026 () Bool)

(assert (=> d!75026 (= (head!875 (drop!204 lt!106621 0)) (h!9154 (drop!204 lt!106621 0)))))

(assert (=> b!261581 d!75026))

(declare-fun b!261928 () Bool)

(declare-fun res!120459 () Bool)

(declare-fun e!162643 () Bool)

(assert (=> b!261928 (=> (not res!120459) (not e!162643))))

(assert (=> b!261928 (= res!120459 (>= (height!143 (++!969 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (c!49414 lt!106618))) (max!0 (height!143 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) (height!143 (c!49414 lt!106618)))))))

(declare-fun b!261929 () Bool)

(declare-fun lt!106748 () BalanceConc!2516)

(assert (=> b!261929 (= e!162643 (= (list!1512 lt!106748) (++!965 (list!1512 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (list!1512 lt!106618))))))

(declare-fun b!261927 () Bool)

(declare-fun res!120457 () Bool)

(assert (=> b!261927 (=> (not res!120457) (not e!162643))))

(assert (=> b!261927 (= res!120457 (<= (height!143 (++!969 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (c!49414 lt!106618))) (+ (max!0 (height!143 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) (height!143 (c!49414 lt!106618))) 1)))))

(declare-fun d!75028 () Bool)

(assert (=> d!75028 e!162643))

(declare-fun res!120456 () Bool)

(assert (=> d!75028 (=> (not res!120456) (not e!162643))))

(assert (=> d!75028 (= res!120456 (appendAssocInst!56 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (c!49414 lt!106618)))))

(assert (=> d!75028 (= lt!106748 (BalanceConc!2517 (++!969 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (c!49414 lt!106618))))))

(assert (=> d!75028 (= (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618) lt!106748)))

(declare-fun b!261926 () Bool)

(declare-fun res!120458 () Bool)

(assert (=> b!261926 (=> (not res!120458) (not e!162643))))

(assert (=> b!261926 (= res!120458 (isBalanced!335 (++!969 (c!49414 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))) (c!49414 lt!106618))))))

(assert (= (and d!75028 res!120456) b!261926))

(assert (= (and b!261926 res!120458) b!261927))

(assert (= (and b!261927 res!120457) b!261928))

(assert (= (and b!261928 res!120459) b!261929))

(declare-fun m!325383 () Bool)

(assert (=> b!261927 m!325383))

(declare-fun m!325385 () Bool)

(assert (=> b!261927 m!325385))

(assert (=> b!261927 m!325383))

(declare-fun m!325387 () Bool)

(assert (=> b!261927 m!325387))

(declare-fun m!325389 () Bool)

(assert (=> b!261927 m!325389))

(assert (=> b!261927 m!325389))

(assert (=> b!261927 m!325387))

(declare-fun m!325391 () Bool)

(assert (=> b!261927 m!325391))

(declare-fun m!325393 () Bool)

(assert (=> d!75028 m!325393))

(assert (=> d!75028 m!325383))

(assert (=> b!261928 m!325383))

(assert (=> b!261928 m!325385))

(assert (=> b!261928 m!325383))

(assert (=> b!261928 m!325387))

(assert (=> b!261928 m!325389))

(assert (=> b!261928 m!325389))

(assert (=> b!261928 m!325387))

(assert (=> b!261928 m!325391))

(declare-fun m!325395 () Bool)

(assert (=> b!261929 m!325395))

(assert (=> b!261929 m!324871))

(declare-fun m!325397 () Bool)

(assert (=> b!261929 m!325397))

(assert (=> b!261929 m!324893))

(assert (=> b!261929 m!325397))

(assert (=> b!261929 m!324893))

(declare-fun m!325399 () Bool)

(assert (=> b!261929 m!325399))

(assert (=> b!261926 m!325383))

(assert (=> b!261926 m!325383))

(declare-fun m!325401 () Bool)

(assert (=> b!261926 m!325401))

(assert (=> b!261581 d!75028))

(declare-fun d!75030 () Bool)

(assert (=> d!75030 (dynLambda!1892 lambda!8748 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))

(declare-fun lt!106751 () Unit!4655)

(declare-fun choose!2412 (List!3767 Int Token!1176) Unit!4655)

(assert (=> d!75030 (= lt!106751 (choose!2412 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8748 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(declare-fun e!162646 () Bool)

(assert (=> d!75030 e!162646))

(declare-fun res!120462 () Bool)

(assert (=> d!75030 (=> (not res!120462) (not e!162646))))

(assert (=> d!75030 (= res!120462 (forall!922 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8748))))

(assert (=> d!75030 (= (forallContained!273 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8748 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106751)))

(declare-fun b!261932 () Bool)

(declare-fun contains!699 (List!3767 Token!1176) Bool)

(assert (=> b!261932 (= e!162646 (contains!699 (list!1515 (seqFromList!799 (t!37001 tokens!465))) (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(assert (= (and d!75030 res!120462) b!261932))

(declare-fun b_lambda!8059 () Bool)

(assert (=> (not b_lambda!8059) (not d!75030)))

(assert (=> d!75030 m!324875))

(declare-fun m!325403 () Bool)

(assert (=> d!75030 m!325403))

(assert (=> d!75030 m!324855))

(assert (=> d!75030 m!324875))

(declare-fun m!325405 () Bool)

(assert (=> d!75030 m!325405))

(assert (=> d!75030 m!324855))

(declare-fun m!325407 () Bool)

(assert (=> d!75030 m!325407))

(assert (=> b!261932 m!324855))

(assert (=> b!261932 m!324875))

(declare-fun m!325409 () Bool)

(assert (=> b!261932 m!325409))

(assert (=> b!261581 d!75030))

(declare-fun lt!106771 () Option!781)

(declare-fun e!162661 () Bool)

(declare-fun b!261949 () Bool)

(declare-fun get!1237 (Option!781) tuple2!4204)

(declare-fun get!1238 (Option!780) tuple2!4202)

(assert (=> b!261949 (= e!162661 (= (list!1512 (_2!2318 (get!1237 lt!106771))) (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))))))

(declare-fun e!162659 () Bool)

(declare-fun b!261950 () Bool)

(declare-fun maxPrefixZipper!104 (LexerInterface!602 List!3768 List!3766) Option!780)

(assert (=> b!261950 (= e!162659 (= (list!1512 (_2!2318 (get!1237 lt!106771))) (_2!2317 (get!1238 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))))))

(declare-fun b!261951 () Bool)

(declare-fun e!162662 () Option!781)

(declare-fun call!14039 () Option!781)

(assert (=> b!261951 (= e!162662 call!14039)))

(declare-fun b!261952 () Bool)

(declare-fun e!162663 () Bool)

(declare-fun e!162664 () Bool)

(assert (=> b!261952 (= e!162663 e!162664)))

(declare-fun res!120479 () Bool)

(assert (=> b!261952 (=> res!120479 e!162664)))

(declare-fun isDefined!631 (Option!781) Bool)

(assert (=> b!261952 (= res!120479 (not (isDefined!631 lt!106771)))))

(declare-fun b!261954 () Bool)

(declare-fun lt!106766 () Option!781)

(declare-fun lt!106770 () Option!781)

(assert (=> b!261954 (= e!162662 (ite (and (is-None!780 lt!106766) (is-None!780 lt!106770)) None!780 (ite (is-None!780 lt!106770) lt!106766 (ite (is-None!780 lt!106766) lt!106770 (ite (>= (size!2986 (_1!2318 (v!14619 lt!106766))) (size!2986 (_1!2318 (v!14619 lt!106770)))) lt!106766 lt!106770)))))))

(assert (=> b!261954 (= lt!106766 call!14039)))

(assert (=> b!261954 (= lt!106770 (maxPrefixZipperSequence!285 thiss!17480 (t!37002 rules!1920) (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))

(declare-fun b!261955 () Bool)

(declare-fun e!162660 () Bool)

(assert (=> b!261955 (= e!162660 e!162659)))

(declare-fun res!120480 () Bool)

(assert (=> b!261955 (=> (not res!120480) (not e!162659))))

(assert (=> b!261955 (= res!120480 (= (_1!2318 (get!1237 lt!106771)) (_1!2317 (get!1238 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))))))

(declare-fun b!261956 () Bool)

(declare-fun res!120478 () Bool)

(assert (=> b!261956 (=> (not res!120478) (not e!162663))))

(assert (=> b!261956 (= res!120478 e!162660)))

(declare-fun res!120475 () Bool)

(assert (=> b!261956 (=> res!120475 e!162660)))

(assert (=> b!261956 (= res!120475 (not (isDefined!631 lt!106771)))))

(declare-fun bm!14034 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!105 (LexerInterface!602 Rule!1232 BalanceConc!2516) Option!781)

(assert (=> bm!14034 (= call!14039 (maxPrefixOneRuleZipperSequence!105 thiss!17480 (h!9155 rules!1920) (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))

(declare-fun d!75032 () Bool)

(assert (=> d!75032 e!162663))

(declare-fun res!120476 () Bool)

(assert (=> d!75032 (=> (not res!120476) (not e!162663))))

(declare-fun isDefined!632 (Option!780) Bool)

(assert (=> d!75032 (= res!120476 (= (isDefined!631 lt!106771) (isDefined!632 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618))))))))

(assert (=> d!75032 (= lt!106771 e!162662)))

(declare-fun c!49528 () Bool)

(assert (=> d!75032 (= c!49528 (and (is-Cons!3758 rules!1920) (is-Nil!3758 (t!37002 rules!1920))))))

(declare-fun lt!106772 () Unit!4655)

(declare-fun lt!106769 () Unit!4655)

(assert (=> d!75032 (= lt!106772 lt!106769)))

(declare-fun lt!106768 () List!3766)

(declare-fun lt!106767 () List!3766)

(declare-fun isPrefix!390 (List!3766 List!3766) Bool)

(assert (=> d!75032 (isPrefix!390 lt!106768 lt!106767)))

(declare-fun lemmaIsPrefixRefl!200 (List!3766 List!3766) Unit!4655)

(assert (=> d!75032 (= lt!106769 (lemmaIsPrefixRefl!200 lt!106768 lt!106767))))

(assert (=> d!75032 (= lt!106767 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))

(assert (=> d!75032 (= lt!106768 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))

(declare-fun rulesValidInductive!195 (LexerInterface!602 List!3768) Bool)

(assert (=> d!75032 (rulesValidInductive!195 thiss!17480 rules!1920)))

(assert (=> d!75032 (= (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)) lt!106771)))

(declare-fun b!261953 () Bool)

(assert (=> b!261953 (= e!162664 e!162661)))

(declare-fun res!120477 () Bool)

(assert (=> b!261953 (=> (not res!120477) (not e!162661))))

(assert (=> b!261953 (= res!120477 (= (_1!2318 (get!1237 lt!106771)) (_1!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106618)))))))))

(assert (= (and d!75032 c!49528) b!261951))

(assert (= (and d!75032 (not c!49528)) b!261954))

(assert (= (or b!261951 b!261954) bm!14034))

(assert (= (and d!75032 res!120476) b!261956))

(assert (= (and b!261956 (not res!120475)) b!261955))

(assert (= (and b!261955 res!120480) b!261950))

(assert (= (and b!261956 res!120478) b!261952))

(assert (= (and b!261952 (not res!120479)) b!261953))

(assert (= (and b!261953 res!120477) b!261949))

(declare-fun m!325411 () Bool)

(assert (=> b!261955 m!325411))

(assert (=> b!261955 m!324873))

(declare-fun m!325413 () Bool)

(assert (=> b!261955 m!325413))

(assert (=> b!261955 m!325413))

(declare-fun m!325415 () Bool)

(assert (=> b!261955 m!325415))

(assert (=> b!261955 m!325415))

(declare-fun m!325417 () Bool)

(assert (=> b!261955 m!325417))

(declare-fun m!325419 () Bool)

(assert (=> d!75032 m!325419))

(assert (=> d!75032 m!324873))

(assert (=> d!75032 m!325413))

(declare-fun m!325421 () Bool)

(assert (=> d!75032 m!325421))

(assert (=> d!75032 m!325413))

(assert (=> d!75032 m!325415))

(declare-fun m!325423 () Bool)

(assert (=> d!75032 m!325423))

(declare-fun m!325425 () Bool)

(assert (=> d!75032 m!325425))

(assert (=> d!75032 m!325415))

(declare-fun m!325427 () Bool)

(assert (=> d!75032 m!325427))

(assert (=> b!261950 m!325415))

(assert (=> b!261950 m!325417))

(assert (=> b!261950 m!324873))

(assert (=> b!261950 m!325413))

(assert (=> b!261950 m!325413))

(assert (=> b!261950 m!325415))

(declare-fun m!325429 () Bool)

(assert (=> b!261950 m!325429))

(assert (=> b!261950 m!325411))

(assert (=> b!261953 m!325411))

(assert (=> b!261953 m!324873))

(assert (=> b!261953 m!325413))

(assert (=> b!261953 m!325413))

(declare-fun m!325431 () Bool)

(assert (=> b!261953 m!325431))

(assert (=> b!261953 m!325431))

(declare-fun m!325433 () Bool)

(assert (=> b!261953 m!325433))

(assert (=> b!261956 m!325425))

(assert (=> b!261952 m!325425))

(assert (=> b!261954 m!324873))

(declare-fun m!325435 () Bool)

(assert (=> b!261954 m!325435))

(assert (=> b!261949 m!325413))

(assert (=> b!261949 m!325431))

(assert (=> b!261949 m!324873))

(assert (=> b!261949 m!325413))

(assert (=> b!261949 m!325431))

(assert (=> b!261949 m!325433))

(assert (=> b!261949 m!325429))

(assert (=> b!261949 m!325411))

(assert (=> bm!14034 m!324873))

(declare-fun m!325437 () Bool)

(assert (=> bm!14034 m!325437))

(assert (=> b!261581 d!75032))

(declare-fun d!75034 () Bool)

(declare-fun lt!106775 () Token!1176)

(assert (=> d!75034 (contains!699 lt!106621 lt!106775)))

(declare-fun e!162670 () Token!1176)

(assert (=> d!75034 (= lt!106775 e!162670)))

(declare-fun c!49531 () Bool)

(assert (=> d!75034 (= c!49531 (= 0 0))))

(declare-fun e!162669 () Bool)

(assert (=> d!75034 e!162669))

(declare-fun res!120483 () Bool)

(assert (=> d!75034 (=> (not res!120483) (not e!162669))))

(assert (=> d!75034 (= res!120483 (<= 0 0))))

(assert (=> d!75034 (= (apply!732 lt!106621 0) lt!106775)))

(declare-fun b!261963 () Bool)

(assert (=> b!261963 (= e!162669 (< 0 (size!2992 lt!106621)))))

(declare-fun b!261964 () Bool)

(assert (=> b!261964 (= e!162670 (head!875 lt!106621))))

(declare-fun b!261965 () Bool)

(assert (=> b!261965 (= e!162670 (apply!732 (tail!465 lt!106621) (- 0 1)))))

(assert (= (and d!75034 res!120483) b!261963))

(assert (= (and d!75034 c!49531) b!261964))

(assert (= (and d!75034 (not c!49531)) b!261965))

(declare-fun m!325439 () Bool)

(assert (=> d!75034 m!325439))

(assert (=> b!261963 m!325381))

(declare-fun m!325441 () Bool)

(assert (=> b!261964 m!325441))

(declare-fun m!325443 () Bool)

(assert (=> b!261965 m!325443))

(assert (=> b!261965 m!325443))

(declare-fun m!325445 () Bool)

(assert (=> b!261965 m!325445))

(assert (=> b!261581 d!75034))

(declare-fun b!261984 () Bool)

(declare-fun e!162683 () Int)

(declare-fun e!162681 () Int)

(assert (=> b!261984 (= e!162683 e!162681)))

(declare-fun c!49542 () Bool)

(declare-fun call!14042 () Int)

(assert (=> b!261984 (= c!49542 (>= 0 call!14042))))

(declare-fun b!261985 () Bool)

(declare-fun e!162682 () List!3767)

(assert (=> b!261985 (= e!162682 (drop!204 (t!37001 lt!106621) (- 0 1)))))

(declare-fun b!261986 () Bool)

(declare-fun e!162684 () List!3767)

(assert (=> b!261986 (= e!162684 e!162682)))

(declare-fun c!49540 () Bool)

(assert (=> b!261986 (= c!49540 (<= 0 0))))

(declare-fun b!261987 () Bool)

(assert (=> b!261987 (= e!162681 0)))

(declare-fun d!75036 () Bool)

(declare-fun e!162685 () Bool)

(assert (=> d!75036 e!162685))

(declare-fun res!120486 () Bool)

(assert (=> d!75036 (=> (not res!120486) (not e!162685))))

(declare-fun lt!106778 () List!3767)

(declare-fun content!532 (List!3767) (Set Token!1176))

(assert (=> d!75036 (= res!120486 (set.subset (content!532 lt!106778) (content!532 lt!106621)))))

(assert (=> d!75036 (= lt!106778 e!162684)))

(declare-fun c!49541 () Bool)

(assert (=> d!75036 (= c!49541 (is-Nil!3757 lt!106621))))

(assert (=> d!75036 (= (drop!204 lt!106621 0) lt!106778)))

(declare-fun b!261988 () Bool)

(assert (=> b!261988 (= e!162683 call!14042)))

(declare-fun b!261989 () Bool)

(assert (=> b!261989 (= e!162684 Nil!3757)))

(declare-fun b!261990 () Bool)

(assert (=> b!261990 (= e!162681 (- call!14042 0))))

(declare-fun b!261991 () Bool)

(assert (=> b!261991 (= e!162685 (= (size!2992 lt!106778) e!162683))))

(declare-fun c!49543 () Bool)

(assert (=> b!261991 (= c!49543 (<= 0 0))))

(declare-fun b!261992 () Bool)

(assert (=> b!261992 (= e!162682 lt!106621)))

(declare-fun bm!14037 () Bool)

(assert (=> bm!14037 (= call!14042 (size!2992 lt!106621))))

(assert (= (and d!75036 c!49541) b!261989))

(assert (= (and d!75036 (not c!49541)) b!261986))

(assert (= (and b!261986 c!49540) b!261992))

(assert (= (and b!261986 (not c!49540)) b!261985))

(assert (= (and d!75036 res!120486) b!261991))

(assert (= (and b!261991 c!49543) b!261988))

(assert (= (and b!261991 (not c!49543)) b!261984))

(assert (= (and b!261984 c!49542) b!261987))

(assert (= (and b!261984 (not c!49542)) b!261990))

(assert (= (or b!261988 b!261984 b!261990) bm!14037))

(declare-fun m!325447 () Bool)

(assert (=> b!261985 m!325447))

(declare-fun m!325449 () Bool)

(assert (=> d!75036 m!325449))

(declare-fun m!325451 () Bool)

(assert (=> d!75036 m!325451))

(declare-fun m!325453 () Bool)

(assert (=> b!261991 m!325453))

(assert (=> bm!14037 m!325381))

(assert (=> b!261581 d!75036))

(declare-fun d!75038 () Bool)

(assert (=> d!75038 (= (tail!465 (drop!204 lt!106629 0)) (drop!204 lt!106629 (+ 0 1)))))

(declare-fun lt!106781 () Unit!4655)

(declare-fun choose!2413 (List!3767 Int) Unit!4655)

(assert (=> d!75038 (= lt!106781 (choose!2413 lt!106629 0))))

(declare-fun e!162688 () Bool)

(assert (=> d!75038 e!162688))

(declare-fun res!120489 () Bool)

(assert (=> d!75038 (=> (not res!120489) (not e!162688))))

(assert (=> d!75038 (= res!120489 (>= 0 0))))

(assert (=> d!75038 (= (lemmaDropTail!183 lt!106629 0) lt!106781)))

(declare-fun b!261995 () Bool)

(assert (=> b!261995 (= e!162688 (< 0 (size!2992 lt!106629)))))

(assert (= (and d!75038 res!120489) b!261995))

(assert (=> d!75038 m!324867))

(assert (=> d!75038 m!324867))

(assert (=> d!75038 m!324879))

(assert (=> d!75038 m!324869))

(declare-fun m!325455 () Bool)

(assert (=> d!75038 m!325455))

(declare-fun m!325457 () Bool)

(assert (=> b!261995 m!325457))

(assert (=> b!261581 d!75038))

(declare-fun bs!28482 () Bool)

(declare-fun d!75040 () Bool)

(assert (= bs!28482 (and d!75040 d!74894)))

(declare-fun lambda!8771 () Int)

(assert (=> bs!28482 (= lambda!8771 lambda!8747)))

(declare-fun bs!28483 () Bool)

(assert (= bs!28483 (and d!75040 b!261477)))

(assert (=> bs!28483 (not (= lambda!8771 lambda!8739))))

(declare-fun bs!28484 () Bool)

(assert (= bs!28484 (and d!75040 b!261581)))

(assert (=> bs!28484 (not (= lambda!8771 lambda!8748))))

(declare-fun bs!28485 () Bool)

(assert (= bs!28485 (and d!75040 d!74924)))

(assert (=> bs!28485 (not (= lambda!8771 lambda!8759))))

(declare-fun bs!28486 () Bool)

(assert (= bs!28486 (and d!75040 b!261306)))

(assert (=> bs!28486 (= lambda!8771 lambda!8733)))

(declare-fun bs!28487 () Bool)

(assert (= bs!28487 (and d!75040 b!261661)))

(assert (=> bs!28487 (not (= lambda!8771 lambda!8762))))

(declare-fun bs!28488 () Bool)

(assert (= bs!28488 (and d!75040 d!74936)))

(assert (=> bs!28488 (= lambda!8771 lambda!8760)))

(declare-fun bs!28489 () Bool)

(assert (= bs!28489 (and d!75040 b!261685)))

(assert (=> bs!28489 (not (= lambda!8771 lambda!8764))))

(declare-fun bs!28490 () Bool)

(declare-fun b!262000 () Bool)

(assert (= bs!28490 (and b!262000 d!74894)))

(declare-fun lambda!8772 () Int)

(assert (=> bs!28490 (not (= lambda!8772 lambda!8747))))

(declare-fun bs!28491 () Bool)

(assert (= bs!28491 (and b!262000 b!261477)))

(assert (=> bs!28491 (= lambda!8772 lambda!8739)))

(declare-fun bs!28492 () Bool)

(assert (= bs!28492 (and b!262000 b!261581)))

(assert (=> bs!28492 (= lambda!8772 lambda!8748)))

(declare-fun bs!28493 () Bool)

(assert (= bs!28493 (and b!262000 d!74924)))

(assert (=> bs!28493 (= lambda!8772 lambda!8759)))

(declare-fun bs!28494 () Bool)

(assert (= bs!28494 (and b!262000 d!75040)))

(assert (=> bs!28494 (not (= lambda!8772 lambda!8771))))

(declare-fun bs!28495 () Bool)

(assert (= bs!28495 (and b!262000 b!261306)))

(assert (=> bs!28495 (not (= lambda!8772 lambda!8733))))

(declare-fun bs!28496 () Bool)

(assert (= bs!28496 (and b!262000 b!261661)))

(assert (=> bs!28496 (= lambda!8772 lambda!8762)))

(declare-fun bs!28497 () Bool)

(assert (= bs!28497 (and b!262000 d!74936)))

(assert (=> bs!28497 (not (= lambda!8772 lambda!8760))))

(declare-fun bs!28498 () Bool)

(assert (= bs!28498 (and b!262000 b!261685)))

(assert (=> bs!28498 (= lambda!8772 lambda!8764)))

(declare-fun b!262009 () Bool)

(declare-fun e!162698 () Bool)

(assert (=> b!262009 (= e!162698 true)))

(declare-fun b!262008 () Bool)

(declare-fun e!162697 () Bool)

(assert (=> b!262008 (= e!162697 e!162698)))

(declare-fun b!262007 () Bool)

(declare-fun e!162696 () Bool)

(assert (=> b!262007 (= e!162696 e!162697)))

(assert (=> b!262000 e!162696))

(assert (= b!262008 b!262009))

(assert (= b!262007 b!262008))

(assert (= (and b!262000 (is-Cons!3758 rules!1920)) b!262007))

(assert (=> b!262009 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8772))))

(assert (=> b!262009 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8772))))

(assert (=> b!262000 true))

(declare-fun b!261996 () Bool)

(declare-fun e!162691 () BalanceConc!2516)

(assert (=> b!261996 (= e!162691 (BalanceConc!2517 Empty!1254))))

(declare-fun b!261997 () Bool)

(declare-fun e!162694 () Bool)

(assert (=> b!261997 (= e!162694 (<= (+ 0 1) (size!2989 (seqFromList!799 (t!37001 tokens!465)))))))

(declare-fun b!261998 () Bool)

(declare-fun e!162690 () BalanceConc!2516)

(declare-fun call!14046 () BalanceConc!2516)

(assert (=> b!261998 (= e!162690 call!14046)))

(declare-fun b!261999 () Bool)

(declare-fun c!49547 () Bool)

(declare-fun e!162689 () Bool)

(assert (=> b!261999 (= c!49547 e!162689)))

(declare-fun res!120490 () Bool)

(assert (=> b!261999 (=> (not res!120490) (not e!162689))))

(declare-fun lt!106795 () Option!781)

(assert (=> b!261999 (= res!120490 (is-Some!780 lt!106795))))

(declare-fun e!162693 () BalanceConc!2516)

(declare-fun e!162695 () BalanceConc!2516)

(assert (=> b!261999 (= e!162693 e!162695)))

(declare-fun bm!14038 () Bool)

(declare-fun call!14044 () Token!1176)

(declare-fun call!14045 () Token!1176)

(assert (=> bm!14038 (= call!14044 call!14045)))

(declare-fun bm!14039 () Bool)

(declare-fun call!14047 () BalanceConc!2516)

(assert (=> bm!14039 (= call!14047 call!14046)))

(declare-fun b!262001 () Bool)

(assert (=> b!262001 (= e!162695 (BalanceConc!2517 Empty!1254))))

(assert (=> b!262001 (= (print!327 thiss!17480 (singletonSeq!262 call!14044)) (printTailRec!290 thiss!17480 (singletonSeq!262 call!14044) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106782 () Unit!4655)

(declare-fun Unit!4676 () Unit!4655)

(assert (=> b!262001 (= lt!106782 Unit!4676)))

(declare-fun lt!106783 () BalanceConc!2516)

(declare-fun lt!106789 () Unit!4655)

(assert (=> b!262001 (= lt!106789 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14047) (list!1512 lt!106783)))))

(assert (=> b!262001 false))

(declare-fun lt!106791 () Unit!4655)

(declare-fun Unit!4677 () Unit!4655)

(assert (=> b!262001 (= lt!106791 Unit!4677)))

(declare-fun b!262002 () Bool)

(assert (=> b!262002 (= e!162689 (not (= (_1!2318 (v!14619 lt!106795)) call!14045)))))

(declare-fun b!262003 () Bool)

(declare-fun call!14043 () BalanceConc!2516)

(assert (=> b!262003 (= e!162695 (++!967 call!14043 lt!106783))))

(declare-fun b!262004 () Bool)

(declare-fun e!162692 () Bool)

(assert (=> b!262004 (= e!162692 (= (_1!2318 (v!14619 lt!106795)) (apply!731 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1))))))

(declare-fun b!262005 () Bool)

(assert (=> b!262005 (= e!162693 call!14043)))

(declare-fun bm!14040 () Bool)

(declare-fun c!49544 () Bool)

(declare-fun c!49545 () Bool)

(assert (=> bm!14040 (= c!49544 c!49545)))

(assert (=> bm!14040 (= call!14043 (++!967 e!162690 (ite c!49545 lt!106783 call!14047)))))

(declare-fun b!262006 () Bool)

(assert (=> b!262006 (= e!162690 (charsOf!361 call!14044))))

(declare-fun bm!14041 () Bool)

(assert (=> bm!14041 (= call!14045 (apply!731 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1)))))

(declare-fun bm!14042 () Bool)

(assert (=> bm!14042 (= call!14046 (charsOf!361 (ite c!49545 call!14045 (ite c!49547 separatorToken!170 call!14044))))))

(declare-fun lt!106785 () BalanceConc!2516)

(assert (=> d!75040 (= (list!1512 lt!106785) (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1)) separatorToken!170))))

(assert (=> d!75040 (= lt!106785 e!162691)))

(declare-fun c!49546 () Bool)

(assert (=> d!75040 (= c!49546 (>= (+ 0 1) (size!2989 (seqFromList!799 (t!37001 tokens!465)))))))

(declare-fun lt!106784 () Unit!4655)

(assert (=> d!75040 (= lt!106784 (lemmaContentSubsetPreservesForall!95 (list!1515 (seqFromList!799 (t!37001 tokens!465))) (dropList!151 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1)) lambda!8771))))

(assert (=> d!75040 e!162694))

(declare-fun res!120492 () Bool)

(assert (=> d!75040 (=> (not res!120492) (not e!162694))))

(assert (=> d!75040 (= res!120492 (>= (+ 0 1) 0))))

(assert (=> d!75040 (= (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 (+ 0 1)) lt!106785)))

(assert (=> b!262000 (= e!162691 e!162693)))

(declare-fun lt!106786 () List!3767)

(assert (=> b!262000 (= lt!106786 (list!1515 (seqFromList!799 (t!37001 tokens!465))))))

(declare-fun lt!106792 () Unit!4655)

(assert (=> b!262000 (= lt!106792 (lemmaDropApply!191 lt!106786 (+ 0 1)))))

(assert (=> b!262000 (= (head!875 (drop!204 lt!106786 (+ 0 1))) (apply!732 lt!106786 (+ 0 1)))))

(declare-fun lt!106787 () Unit!4655)

(assert (=> b!262000 (= lt!106787 lt!106792)))

(declare-fun lt!106794 () List!3767)

(assert (=> b!262000 (= lt!106794 (list!1515 (seqFromList!799 (t!37001 tokens!465))))))

(declare-fun lt!106790 () Unit!4655)

(assert (=> b!262000 (= lt!106790 (lemmaDropTail!183 lt!106794 (+ 0 1)))))

(assert (=> b!262000 (= (tail!465 (drop!204 lt!106794 (+ 0 1))) (drop!204 lt!106794 (+ 0 1 1)))))

(declare-fun lt!106788 () Unit!4655)

(assert (=> b!262000 (= lt!106788 lt!106790)))

(declare-fun lt!106793 () Unit!4655)

(assert (=> b!262000 (= lt!106793 (forallContained!273 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8772 (apply!731 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1))))))

(assert (=> b!262000 (= lt!106783 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!262000 (= lt!106795 (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) (+ 0 1))) lt!106783)))))

(declare-fun res!120491 () Bool)

(assert (=> b!262000 (= res!120491 (is-Some!780 lt!106795))))

(assert (=> b!262000 (=> (not res!120491) (not e!162692))))

(assert (=> b!262000 (= c!49545 e!162692)))

(assert (= (and d!75040 res!120492) b!261997))

(assert (= (and d!75040 c!49546) b!261996))

(assert (= (and d!75040 (not c!49546)) b!262000))

(assert (= (and b!262000 res!120491) b!262004))

(assert (= (and b!262000 c!49545) b!262005))

(assert (= (and b!262000 (not c!49545)) b!261999))

(assert (= (and b!261999 res!120490) b!262002))

(assert (= (and b!261999 c!49547) b!262003))

(assert (= (and b!261999 (not c!49547)) b!262001))

(assert (= (or b!262003 b!262001) bm!14038))

(assert (= (or b!262003 b!262001) bm!14039))

(assert (= (or b!262005 bm!14038 b!262002) bm!14041))

(assert (= (or b!262005 bm!14039) bm!14042))

(assert (= (or b!262005 b!262003) bm!14040))

(assert (= (and bm!14040 c!49544) b!261998))

(assert (= (and bm!14040 (not c!49544)) b!262006))

(declare-fun m!325459 () Bool)

(assert (=> bm!14040 m!325459))

(declare-fun m!325461 () Bool)

(assert (=> b!262003 m!325461))

(declare-fun m!325463 () Bool)

(assert (=> d!75040 m!325463))

(declare-fun m!325465 () Bool)

(assert (=> d!75040 m!325465))

(declare-fun m!325467 () Bool)

(assert (=> d!75040 m!325467))

(assert (=> d!75040 m!324855))

(assert (=> d!75040 m!325465))

(declare-fun m!325469 () Bool)

(assert (=> d!75040 m!325469))

(assert (=> d!75040 m!324483))

(assert (=> d!75040 m!325465))

(assert (=> d!75040 m!324483))

(assert (=> d!75040 m!324859))

(assert (=> d!75040 m!324483))

(assert (=> d!75040 m!324855))

(assert (=> b!261997 m!324483))

(assert (=> b!261997 m!324859))

(declare-fun m!325471 () Bool)

(assert (=> bm!14042 m!325471))

(declare-fun m!325473 () Bool)

(assert (=> b!262000 m!325473))

(assert (=> b!262000 m!324483))

(declare-fun m!325475 () Bool)

(assert (=> b!262000 m!325475))

(declare-fun m!325477 () Bool)

(assert (=> b!262000 m!325477))

(declare-fun m!325479 () Bool)

(assert (=> b!262000 m!325479))

(declare-fun m!325481 () Bool)

(assert (=> b!262000 m!325481))

(declare-fun m!325483 () Bool)

(assert (=> b!262000 m!325483))

(assert (=> b!262000 m!324483))

(declare-fun m!325485 () Bool)

(assert (=> b!262000 m!325485))

(declare-fun m!325487 () Bool)

(assert (=> b!262000 m!325487))

(assert (=> b!262000 m!325477))

(declare-fun m!325489 () Bool)

(assert (=> b!262000 m!325489))

(assert (=> b!262000 m!324855))

(assert (=> b!262000 m!325485))

(declare-fun m!325491 () Bool)

(assert (=> b!262000 m!325491))

(assert (=> b!262000 m!325485))

(assert (=> b!262000 m!325481))

(assert (=> b!262000 m!324483))

(assert (=> b!262000 m!324855))

(assert (=> b!262000 m!325483))

(declare-fun m!325493 () Bool)

(assert (=> b!262000 m!325493))

(assert (=> b!262000 m!325487))

(declare-fun m!325495 () Bool)

(assert (=> b!262000 m!325495))

(declare-fun m!325497 () Bool)

(assert (=> b!262000 m!325497))

(declare-fun m!325499 () Bool)

(assert (=> b!262000 m!325499))

(assert (=> b!262004 m!324483))

(assert (=> b!262004 m!325485))

(assert (=> bm!14041 m!324483))

(assert (=> bm!14041 m!325485))

(declare-fun m!325501 () Bool)

(assert (=> b!262001 m!325501))

(declare-fun m!325503 () Bool)

(assert (=> b!262001 m!325503))

(declare-fun m!325505 () Bool)

(assert (=> b!262001 m!325505))

(assert (=> b!262001 m!325501))

(declare-fun m!325507 () Bool)

(assert (=> b!262001 m!325507))

(declare-fun m!325509 () Bool)

(assert (=> b!262001 m!325509))

(assert (=> b!262001 m!325507))

(declare-fun m!325511 () Bool)

(assert (=> b!262001 m!325511))

(assert (=> b!262001 m!325507))

(assert (=> b!262001 m!325503))

(declare-fun m!325513 () Bool)

(assert (=> b!262006 m!325513))

(assert (=> b!261581 d!75040))

(declare-fun d!75042 () Bool)

(assert (=> d!75042 (= (tail!465 (drop!204 lt!106629 0)) (t!37001 (drop!204 lt!106629 0)))))

(assert (=> b!261581 d!75042))

(declare-fun b!262010 () Bool)

(declare-fun e!162701 () Int)

(declare-fun e!162699 () Int)

(assert (=> b!262010 (= e!162701 e!162699)))

(declare-fun c!49550 () Bool)

(declare-fun call!14048 () Int)

(assert (=> b!262010 (= c!49550 (>= 0 call!14048))))

(declare-fun b!262011 () Bool)

(declare-fun e!162700 () List!3767)

(assert (=> b!262011 (= e!162700 (drop!204 (t!37001 lt!106629) (- 0 1)))))

(declare-fun b!262012 () Bool)

(declare-fun e!162702 () List!3767)

(assert (=> b!262012 (= e!162702 e!162700)))

(declare-fun c!49548 () Bool)

(assert (=> b!262012 (= c!49548 (<= 0 0))))

(declare-fun b!262013 () Bool)

(assert (=> b!262013 (= e!162699 0)))

(declare-fun d!75044 () Bool)

(declare-fun e!162703 () Bool)

(assert (=> d!75044 e!162703))

(declare-fun res!120493 () Bool)

(assert (=> d!75044 (=> (not res!120493) (not e!162703))))

(declare-fun lt!106796 () List!3767)

(assert (=> d!75044 (= res!120493 (set.subset (content!532 lt!106796) (content!532 lt!106629)))))

(assert (=> d!75044 (= lt!106796 e!162702)))

(declare-fun c!49549 () Bool)

(assert (=> d!75044 (= c!49549 (is-Nil!3757 lt!106629))))

(assert (=> d!75044 (= (drop!204 lt!106629 0) lt!106796)))

(declare-fun b!262014 () Bool)

(assert (=> b!262014 (= e!162701 call!14048)))

(declare-fun b!262015 () Bool)

(assert (=> b!262015 (= e!162702 Nil!3757)))

(declare-fun b!262016 () Bool)

(assert (=> b!262016 (= e!162699 (- call!14048 0))))

(declare-fun b!262017 () Bool)

(assert (=> b!262017 (= e!162703 (= (size!2992 lt!106796) e!162701))))

(declare-fun c!49551 () Bool)

(assert (=> b!262017 (= c!49551 (<= 0 0))))

(declare-fun b!262018 () Bool)

(assert (=> b!262018 (= e!162700 lt!106629)))

(declare-fun bm!14043 () Bool)

(assert (=> bm!14043 (= call!14048 (size!2992 lt!106629))))

(assert (= (and d!75044 c!49549) b!262015))

(assert (= (and d!75044 (not c!49549)) b!262012))

(assert (= (and b!262012 c!49548) b!262018))

(assert (= (and b!262012 (not c!49548)) b!262011))

(assert (= (and d!75044 res!120493) b!262017))

(assert (= (and b!262017 c!49551) b!262014))

(assert (= (and b!262017 (not c!49551)) b!262010))

(assert (= (and b!262010 c!49550) b!262013))

(assert (= (and b!262010 (not c!49550)) b!262016))

(assert (= (or b!262014 b!262010 b!262016) bm!14043))

(declare-fun m!325515 () Bool)

(assert (=> b!262011 m!325515))

(declare-fun m!325517 () Bool)

(assert (=> d!75044 m!325517))

(declare-fun m!325519 () Bool)

(assert (=> d!75044 m!325519))

(declare-fun m!325521 () Bool)

(assert (=> b!262017 m!325521))

(assert (=> bm!14043 m!325457))

(assert (=> b!261581 d!75044))

(declare-fun b!262019 () Bool)

(declare-fun e!162706 () Int)

(declare-fun e!162704 () Int)

(assert (=> b!262019 (= e!162706 e!162704)))

(declare-fun c!49554 () Bool)

(declare-fun call!14049 () Int)

(assert (=> b!262019 (= c!49554 (>= (+ 0 1) call!14049))))

(declare-fun b!262020 () Bool)

(declare-fun e!162705 () List!3767)

(assert (=> b!262020 (= e!162705 (drop!204 (t!37001 lt!106629) (- (+ 0 1) 1)))))

(declare-fun b!262021 () Bool)

(declare-fun e!162707 () List!3767)

(assert (=> b!262021 (= e!162707 e!162705)))

(declare-fun c!49552 () Bool)

(assert (=> b!262021 (= c!49552 (<= (+ 0 1) 0))))

(declare-fun b!262022 () Bool)

(assert (=> b!262022 (= e!162704 0)))

(declare-fun d!75046 () Bool)

(declare-fun e!162708 () Bool)

(assert (=> d!75046 e!162708))

(declare-fun res!120494 () Bool)

(assert (=> d!75046 (=> (not res!120494) (not e!162708))))

(declare-fun lt!106797 () List!3767)

(assert (=> d!75046 (= res!120494 (set.subset (content!532 lt!106797) (content!532 lt!106629)))))

(assert (=> d!75046 (= lt!106797 e!162707)))

(declare-fun c!49553 () Bool)

(assert (=> d!75046 (= c!49553 (is-Nil!3757 lt!106629))))

(assert (=> d!75046 (= (drop!204 lt!106629 (+ 0 1)) lt!106797)))

(declare-fun b!262023 () Bool)

(assert (=> b!262023 (= e!162706 call!14049)))

(declare-fun b!262024 () Bool)

(assert (=> b!262024 (= e!162707 Nil!3757)))

(declare-fun b!262025 () Bool)

(assert (=> b!262025 (= e!162704 (- call!14049 (+ 0 1)))))

(declare-fun b!262026 () Bool)

(assert (=> b!262026 (= e!162708 (= (size!2992 lt!106797) e!162706))))

(declare-fun c!49555 () Bool)

(assert (=> b!262026 (= c!49555 (<= (+ 0 1) 0))))

(declare-fun b!262027 () Bool)

(assert (=> b!262027 (= e!162705 lt!106629)))

(declare-fun bm!14044 () Bool)

(assert (=> bm!14044 (= call!14049 (size!2992 lt!106629))))

(assert (= (and d!75046 c!49553) b!262024))

(assert (= (and d!75046 (not c!49553)) b!262021))

(assert (= (and b!262021 c!49552) b!262027))

(assert (= (and b!262021 (not c!49552)) b!262020))

(assert (= (and d!75046 res!120494) b!262026))

(assert (= (and b!262026 c!49555) b!262023))

(assert (= (and b!262026 (not c!49555)) b!262019))

(assert (= (and b!262019 c!49554) b!262022))

(assert (= (and b!262019 (not c!49554)) b!262025))

(assert (= (or b!262023 b!262019 b!262025) bm!14044))

(declare-fun m!325523 () Bool)

(assert (=> b!262020 m!325523))

(declare-fun m!325525 () Bool)

(assert (=> d!75046 m!325525))

(assert (=> d!75046 m!325519))

(declare-fun m!325527 () Bool)

(assert (=> b!262026 m!325527))

(assert (=> bm!14044 m!325457))

(assert (=> b!261581 d!75046))

(declare-fun d!75048 () Bool)

(declare-fun list!1518 (Conc!1255) List!3767)

(assert (=> d!75048 (= (list!1515 (seqFromList!799 (t!37001 tokens!465))) (list!1518 (c!49416 (seqFromList!799 (t!37001 tokens!465)))))))

(declare-fun bs!28499 () Bool)

(assert (= bs!28499 d!75048))

(declare-fun m!325529 () Bool)

(assert (=> bs!28499 m!325529))

(assert (=> b!261581 d!75048))

(declare-fun d!75050 () Bool)

(declare-fun lt!106798 () Token!1176)

(assert (=> d!75050 (= lt!106798 (apply!732 (list!1515 (seqFromList!799 (t!37001 tokens!465))) 0))))

(assert (=> d!75050 (= lt!106798 (apply!735 (c!49416 (seqFromList!799 (t!37001 tokens!465))) 0))))

(declare-fun e!162709 () Bool)

(assert (=> d!75050 e!162709))

(declare-fun res!120495 () Bool)

(assert (=> d!75050 (=> (not res!120495) (not e!162709))))

(assert (=> d!75050 (= res!120495 (<= 0 0))))

(assert (=> d!75050 (= (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0) lt!106798)))

(declare-fun b!262028 () Bool)

(assert (=> b!262028 (= e!162709 (< 0 (size!2989 (seqFromList!799 (t!37001 tokens!465)))))))

(assert (= (and d!75050 res!120495) b!262028))

(assert (=> d!75050 m!324483))

(assert (=> d!75050 m!324855))

(assert (=> d!75050 m!324855))

(declare-fun m!325531 () Bool)

(assert (=> d!75050 m!325531))

(declare-fun m!325533 () Bool)

(assert (=> d!75050 m!325533))

(assert (=> b!262028 m!324483))

(assert (=> b!262028 m!324859))

(assert (=> b!261581 d!75050))

(declare-fun d!75052 () Bool)

(declare-fun lt!106799 () BalanceConc!2516)

(assert (=> d!75052 (= (list!1512 lt!106799) (originalCharacters!759 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(assert (=> d!75052 (= lt!106799 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) (value!24723 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))))

(assert (=> d!75052 (= (charsOf!361 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) lt!106799)))

(declare-fun b_lambda!8061 () Bool)

(assert (=> (not b_lambda!8061) (not d!75052)))

(declare-fun t!37082 () Bool)

(declare-fun tb!14187 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37082) tb!14187))

(declare-fun b!262029 () Bool)

(declare-fun e!162710 () Bool)

(declare-fun tp!100637 () Bool)

(assert (=> b!262029 (= e!162710 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) (value!24723 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) tp!100637))))

(declare-fun result!17678 () Bool)

(assert (=> tb!14187 (= result!17678 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) (value!24723 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))) e!162710))))

(assert (= tb!14187 b!262029))

(declare-fun m!325535 () Bool)

(assert (=> b!262029 m!325535))

(declare-fun m!325537 () Bool)

(assert (=> tb!14187 m!325537))

(assert (=> d!75052 t!37082))

(declare-fun b_and!20363 () Bool)

(assert (= b_and!20353 (and (=> t!37082 result!17678) b_and!20363)))

(declare-fun tb!14189 () Bool)

(declare-fun t!37084 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37084) tb!14189))

(declare-fun result!17680 () Bool)

(assert (= result!17680 result!17678))

(assert (=> d!75052 t!37084))

(declare-fun b_and!20365 () Bool)

(assert (= b_and!20357 (and (=> t!37084 result!17680) b_and!20365)))

(declare-fun t!37086 () Bool)

(declare-fun tb!14191 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37086) tb!14191))

(declare-fun result!17682 () Bool)

(assert (= result!17682 result!17678))

(assert (=> d!75052 t!37086))

(declare-fun b_and!20367 () Bool)

(assert (= b_and!20361 (and (=> t!37086 result!17682) b_and!20367)))

(declare-fun t!37088 () Bool)

(declare-fun tb!14193 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37088) tb!14193))

(declare-fun result!17684 () Bool)

(assert (= result!17684 result!17678))

(assert (=> d!75052 t!37088))

(declare-fun b_and!20369 () Bool)

(assert (= b_and!20355 (and (=> t!37088 result!17684) b_and!20369)))

(declare-fun tb!14195 () Bool)

(declare-fun t!37090 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37090) tb!14195))

(declare-fun result!17686 () Bool)

(assert (= result!17686 result!17678))

(assert (=> d!75052 t!37090))

(declare-fun b_and!20371 () Bool)

(assert (= b_and!20359 (and (=> t!37090 result!17686) b_and!20371)))

(declare-fun m!325539 () Bool)

(assert (=> d!75052 m!325539))

(declare-fun m!325541 () Bool)

(assert (=> d!75052 m!325541))

(assert (=> b!261581 d!75052))

(declare-fun d!75054 () Bool)

(declare-fun charsToInt!0 (List!3765) (_ BitVec 32))

(assert (=> d!75054 (= (inv!16 (value!24723 separatorToken!170)) (= (charsToInt!0 (text!5613 (value!24723 separatorToken!170))) (value!24714 (value!24723 separatorToken!170))))))

(declare-fun bs!28500 () Bool)

(assert (= bs!28500 d!75054))

(declare-fun m!325543 () Bool)

(assert (=> bs!28500 m!325543))

(assert (=> b!261598 d!75054))

(declare-fun d!75056 () Bool)

(declare-fun c!49556 () Bool)

(assert (=> d!75056 (= c!49556 (is-Nil!3756 lt!106634))))

(declare-fun e!162711 () (Set C!2802))

(assert (=> d!75056 (= (content!530 lt!106634) e!162711)))

(declare-fun b!262030 () Bool)

(assert (=> b!262030 (= e!162711 (as set.empty (Set C!2802)))))

(declare-fun b!262031 () Bool)

(assert (=> b!262031 (= e!162711 (set.union (set.insert (h!9153 lt!106634) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106634))))))

(assert (= (and d!75056 c!49556) b!262030))

(assert (= (and d!75056 (not c!49556)) b!262031))

(declare-fun m!325545 () Bool)

(assert (=> b!262031 m!325545))

(declare-fun m!325547 () Bool)

(assert (=> b!262031 m!325547))

(assert (=> d!74914 d!75056))

(declare-fun d!75058 () Bool)

(declare-fun c!49557 () Bool)

(assert (=> d!75058 (= c!49557 (is-Nil!3756 (++!965 lt!106502 lt!106503)))))

(declare-fun e!162712 () (Set C!2802))

(assert (=> d!75058 (= (content!530 (++!965 lt!106502 lt!106503)) e!162712)))

(declare-fun b!262032 () Bool)

(assert (=> b!262032 (= e!162712 (as set.empty (Set C!2802)))))

(declare-fun b!262033 () Bool)

(assert (=> b!262033 (= e!162712 (set.union (set.insert (h!9153 (++!965 lt!106502 lt!106503)) (as set.empty (Set C!2802))) (content!530 (t!37000 (++!965 lt!106502 lt!106503)))))))

(assert (= (and d!75058 c!49557) b!262032))

(assert (= (and d!75058 (not c!49557)) b!262033))

(declare-fun m!325549 () Bool)

(assert (=> b!262033 m!325549))

(declare-fun m!325551 () Bool)

(assert (=> b!262033 m!325551))

(assert (=> d!74914 d!75058))

(declare-fun d!75060 () Bool)

(declare-fun c!49558 () Bool)

(assert (=> d!75060 (= c!49558 (is-Nil!3756 lt!106498))))

(declare-fun e!162713 () (Set C!2802))

(assert (=> d!75060 (= (content!530 lt!106498) e!162713)))

(declare-fun b!262034 () Bool)

(assert (=> b!262034 (= e!162713 (as set.empty (Set C!2802)))))

(declare-fun b!262035 () Bool)

(assert (=> b!262035 (= e!162713 (set.union (set.insert (h!9153 lt!106498) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106498))))))

(assert (= (and d!75060 c!49558) b!262034))

(assert (= (and d!75060 (not c!49558)) b!262035))

(declare-fun m!325553 () Bool)

(assert (=> b!262035 m!325553))

(declare-fun m!325555 () Bool)

(assert (=> b!262035 m!325555))

(assert (=> d!74914 d!75060))

(declare-fun b!262038 () Bool)

(declare-fun res!120499 () Bool)

(declare-fun e!162714 () Bool)

(assert (=> b!262038 (=> (not res!120499) (not e!162714))))

(assert (=> b!262038 (= res!120499 (>= (height!143 (++!969 (c!49414 call!14017) (c!49414 lt!106685))) (max!0 (height!143 (c!49414 call!14017)) (height!143 (c!49414 lt!106685)))))))

(declare-fun lt!106800 () BalanceConc!2516)

(declare-fun b!262039 () Bool)

(assert (=> b!262039 (= e!162714 (= (list!1512 lt!106800) (++!965 (list!1512 call!14017) (list!1512 lt!106685))))))

(declare-fun b!262037 () Bool)

(declare-fun res!120497 () Bool)

(assert (=> b!262037 (=> (not res!120497) (not e!162714))))

(assert (=> b!262037 (= res!120497 (<= (height!143 (++!969 (c!49414 call!14017) (c!49414 lt!106685))) (+ (max!0 (height!143 (c!49414 call!14017)) (height!143 (c!49414 lt!106685))) 1)))))

(declare-fun d!75062 () Bool)

(assert (=> d!75062 e!162714))

(declare-fun res!120496 () Bool)

(assert (=> d!75062 (=> (not res!120496) (not e!162714))))

(assert (=> d!75062 (= res!120496 (appendAssocInst!56 (c!49414 call!14017) (c!49414 lt!106685)))))

(assert (=> d!75062 (= lt!106800 (BalanceConc!2517 (++!969 (c!49414 call!14017) (c!49414 lt!106685))))))

(assert (=> d!75062 (= (++!967 call!14017 lt!106685) lt!106800)))

(declare-fun b!262036 () Bool)

(declare-fun res!120498 () Bool)

(assert (=> b!262036 (=> (not res!120498) (not e!162714))))

(assert (=> b!262036 (= res!120498 (isBalanced!335 (++!969 (c!49414 call!14017) (c!49414 lt!106685))))))

(assert (= (and d!75062 res!120496) b!262036))

(assert (= (and b!262036 res!120498) b!262037))

(assert (= (and b!262037 res!120497) b!262038))

(assert (= (and b!262038 res!120499) b!262039))

(declare-fun m!325557 () Bool)

(assert (=> b!262037 m!325557))

(declare-fun m!325559 () Bool)

(assert (=> b!262037 m!325559))

(assert (=> b!262037 m!325557))

(declare-fun m!325561 () Bool)

(assert (=> b!262037 m!325561))

(declare-fun m!325563 () Bool)

(assert (=> b!262037 m!325563))

(assert (=> b!262037 m!325563))

(assert (=> b!262037 m!325561))

(declare-fun m!325565 () Bool)

(assert (=> b!262037 m!325565))

(declare-fun m!325567 () Bool)

(assert (=> d!75062 m!325567))

(assert (=> d!75062 m!325557))

(assert (=> b!262038 m!325557))

(assert (=> b!262038 m!325559))

(assert (=> b!262038 m!325557))

(assert (=> b!262038 m!325561))

(assert (=> b!262038 m!325563))

(assert (=> b!262038 m!325563))

(assert (=> b!262038 m!325561))

(assert (=> b!262038 m!325565))

(declare-fun m!325569 () Bool)

(assert (=> b!262039 m!325569))

(declare-fun m!325571 () Bool)

(assert (=> b!262039 m!325571))

(assert (=> b!262039 m!325097))

(assert (=> b!262039 m!325571))

(assert (=> b!262039 m!325097))

(declare-fun m!325573 () Bool)

(assert (=> b!262039 m!325573))

(assert (=> b!262036 m!325557))

(assert (=> b!262036 m!325557))

(declare-fun m!325575 () Bool)

(assert (=> b!262036 m!325575))

(assert (=> b!261664 d!75062))

(declare-fun d!75064 () Bool)

(declare-fun lt!106801 () BalanceConc!2516)

(assert (=> d!75064 (= (list!1512 lt!106801) (originalCharacters!759 (h!9154 (t!37001 tokens!465))))))

(assert (=> d!75064 (= lt!106801 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (value!24723 (h!9154 (t!37001 tokens!465)))))))

(assert (=> d!75064 (= (charsOf!361 (h!9154 (t!37001 tokens!465))) lt!106801)))

(declare-fun b_lambda!8063 () Bool)

(assert (=> (not b_lambda!8063) (not d!75064)))

(assert (=> d!75064 t!37072))

(declare-fun b_and!20373 () Bool)

(assert (= b_and!20363 (and (=> t!37072 result!17668) b_and!20373)))

(assert (=> d!75064 t!37078))

(declare-fun b_and!20375 () Bool)

(assert (= b_and!20371 (and (=> t!37078 result!17674) b_and!20375)))

(assert (=> d!75064 t!37076))

(declare-fun b_and!20377 () Bool)

(assert (= b_and!20365 (and (=> t!37076 result!17672) b_and!20377)))

(assert (=> d!75064 t!37080))

(declare-fun b_and!20379 () Bool)

(assert (= b_and!20367 (and (=> t!37080 result!17676) b_and!20379)))

(assert (=> d!75064 t!37074))

(declare-fun b_and!20381 () Bool)

(assert (= b_and!20369 (and (=> t!37074 result!17670) b_and!20381)))

(declare-fun m!325577 () Bool)

(assert (=> d!75064 m!325577))

(assert (=> d!75064 m!325363))

(assert (=> bm!13965 d!75064))

(declare-fun d!75066 () Bool)

(assert (=> d!75066 (= (list!1512 e!162471) (list!1514 (c!49414 e!162471)))))

(declare-fun bs!28501 () Bool)

(assert (= bs!28501 d!75066))

(declare-fun m!325579 () Bool)

(assert (=> bs!28501 m!325579))

(assert (=> bm!14024 d!75066))

(declare-fun d!75068 () Bool)

(declare-fun lt!106804 () BalanceConc!2516)

(declare-fun printList!280 (LexerInterface!602 List!3767) List!3766)

(assert (=> d!75068 (= (list!1512 lt!106804) (printList!280 thiss!17480 (list!1515 (singletonSeq!262 (h!9154 tokens!465)))))))

(assert (=> d!75068 (= lt!106804 (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 tokens!465)) 0 (BalanceConc!2517 Empty!1254)))))

(assert (=> d!75068 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 tokens!465))) lt!106804)))

(declare-fun bs!28502 () Bool)

(assert (= bs!28502 d!75068))

(declare-fun m!325581 () Bool)

(assert (=> bs!28502 m!325581))

(assert (=> bs!28502 m!325145))

(declare-fun m!325583 () Bool)

(assert (=> bs!28502 m!325583))

(assert (=> bs!28502 m!325583))

(declare-fun m!325585 () Bool)

(assert (=> bs!28502 m!325585))

(assert (=> bs!28502 m!325145))

(assert (=> bs!28502 m!325149))

(assert (=> b!261686 d!75068))

(declare-fun d!75070 () Bool)

(declare-fun e!162717 () Bool)

(assert (=> d!75070 e!162717))

(declare-fun res!120502 () Bool)

(assert (=> d!75070 (=> (not res!120502) (not e!162717))))

(declare-fun lt!106807 () BalanceConc!2518)

(assert (=> d!75070 (= res!120502 (= (list!1515 lt!106807) (Cons!3757 (h!9154 tokens!465) Nil!3757)))))

(declare-fun singleton!104 (Token!1176) BalanceConc!2518)

(assert (=> d!75070 (= lt!106807 (singleton!104 (h!9154 tokens!465)))))

(assert (=> d!75070 (= (singletonSeq!262 (h!9154 tokens!465)) lt!106807)))

(declare-fun b!262042 () Bool)

(declare-fun isBalanced!336 (Conc!1255) Bool)

(assert (=> b!262042 (= e!162717 (isBalanced!336 (c!49416 lt!106807)))))

(assert (= (and d!75070 res!120502) b!262042))

(declare-fun m!325587 () Bool)

(assert (=> d!75070 m!325587))

(declare-fun m!325589 () Bool)

(assert (=> d!75070 m!325589))

(declare-fun m!325591 () Bool)

(assert (=> b!262042 m!325591))

(assert (=> b!261686 d!75070))

(declare-fun d!75072 () Bool)

(declare-fun lt!106826 () BalanceConc!2516)

(declare-fun printListTailRec!119 (LexerInterface!602 List!3767 List!3766) List!3766)

(assert (=> d!75072 (= (list!1512 lt!106826) (printListTailRec!119 thiss!17480 (dropList!151 (singletonSeq!262 (h!9154 tokens!465)) 0) (list!1512 (BalanceConc!2517 Empty!1254))))))

(declare-fun e!162722 () BalanceConc!2516)

(assert (=> d!75072 (= lt!106826 e!162722)))

(declare-fun c!49561 () Bool)

(assert (=> d!75072 (= c!49561 (>= 0 (size!2989 (singletonSeq!262 (h!9154 tokens!465)))))))

(declare-fun e!162723 () Bool)

(assert (=> d!75072 e!162723))

(declare-fun res!120505 () Bool)

(assert (=> d!75072 (=> (not res!120505) (not e!162723))))

(assert (=> d!75072 (= res!120505 (>= 0 0))))

(assert (=> d!75072 (= (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 tokens!465)) 0 (BalanceConc!2517 Empty!1254)) lt!106826)))

(declare-fun b!262049 () Bool)

(assert (=> b!262049 (= e!162723 (<= 0 (size!2989 (singletonSeq!262 (h!9154 tokens!465)))))))

(declare-fun b!262050 () Bool)

(assert (=> b!262050 (= e!162722 (BalanceConc!2517 Empty!1254))))

(declare-fun b!262051 () Bool)

(assert (=> b!262051 (= e!162722 (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 tokens!465)) (+ 0 1) (++!967 (BalanceConc!2517 Empty!1254) (charsOf!361 (apply!731 (singletonSeq!262 (h!9154 tokens!465)) 0)))))))

(declare-fun lt!106825 () List!3767)

(assert (=> b!262051 (= lt!106825 (list!1515 (singletonSeq!262 (h!9154 tokens!465))))))

(declare-fun lt!106824 () Unit!4655)

(assert (=> b!262051 (= lt!106824 (lemmaDropApply!191 lt!106825 0))))

(assert (=> b!262051 (= (head!875 (drop!204 lt!106825 0)) (apply!732 lt!106825 0))))

(declare-fun lt!106827 () Unit!4655)

(assert (=> b!262051 (= lt!106827 lt!106824)))

(declare-fun lt!106822 () List!3767)

(assert (=> b!262051 (= lt!106822 (list!1515 (singletonSeq!262 (h!9154 tokens!465))))))

(declare-fun lt!106823 () Unit!4655)

(assert (=> b!262051 (= lt!106823 (lemmaDropTail!183 lt!106822 0))))

(assert (=> b!262051 (= (tail!465 (drop!204 lt!106822 0)) (drop!204 lt!106822 (+ 0 1)))))

(declare-fun lt!106828 () Unit!4655)

(assert (=> b!262051 (= lt!106828 lt!106823)))

(assert (= (and d!75072 res!120505) b!262049))

(assert (= (and d!75072 c!49561) b!262050))

(assert (= (and d!75072 (not c!49561)) b!262051))

(declare-fun m!325593 () Bool)

(assert (=> d!75072 m!325593))

(declare-fun m!325595 () Bool)

(assert (=> d!75072 m!325595))

(declare-fun m!325597 () Bool)

(assert (=> d!75072 m!325597))

(assert (=> d!75072 m!325595))

(declare-fun m!325599 () Bool)

(assert (=> d!75072 m!325599))

(assert (=> d!75072 m!325145))

(declare-fun m!325601 () Bool)

(assert (=> d!75072 m!325601))

(assert (=> d!75072 m!325145))

(assert (=> d!75072 m!325597))

(assert (=> b!262049 m!325145))

(assert (=> b!262049 m!325601))

(assert (=> b!262051 m!325145))

(declare-fun m!325603 () Bool)

(assert (=> b!262051 m!325603))

(declare-fun m!325605 () Bool)

(assert (=> b!262051 m!325605))

(declare-fun m!325607 () Bool)

(assert (=> b!262051 m!325607))

(declare-fun m!325609 () Bool)

(assert (=> b!262051 m!325609))

(declare-fun m!325611 () Bool)

(assert (=> b!262051 m!325611))

(assert (=> b!262051 m!325145))

(declare-fun m!325613 () Bool)

(assert (=> b!262051 m!325613))

(declare-fun m!325615 () Bool)

(assert (=> b!262051 m!325615))

(declare-fun m!325617 () Bool)

(assert (=> b!262051 m!325617))

(declare-fun m!325619 () Bool)

(assert (=> b!262051 m!325619))

(assert (=> b!262051 m!325607))

(declare-fun m!325621 () Bool)

(assert (=> b!262051 m!325621))

(assert (=> b!262051 m!325617))

(declare-fun m!325623 () Bool)

(assert (=> b!262051 m!325623))

(assert (=> b!262051 m!325603))

(declare-fun m!325625 () Bool)

(assert (=> b!262051 m!325625))

(assert (=> b!262051 m!325625))

(assert (=> b!262051 m!325613))

(assert (=> b!262051 m!325145))

(assert (=> b!262051 m!325583))

(assert (=> b!261686 d!75072))

(declare-fun b!262063 () Bool)

(declare-fun e!162729 () Unit!4655)

(declare-fun Unit!4678 () Unit!4655)

(assert (=> b!262063 (= e!162729 Unit!4678)))

(declare-fun e!162728 () Bool)

(declare-fun lt!106865 () Token!1176)

(declare-fun b!262061 () Bool)

(declare-datatypes ((Option!784 0))(
  ( (None!783) (Some!783 (v!14626 Rule!1232)) )
))
(declare-fun get!1239 (Option!784) Rule!1232)

(declare-fun getRuleFromTag!117 (LexerInterface!602 List!3768 String!4772) Option!784)

(assert (=> b!262061 (= e!162728 (= (rule!1301 lt!106865) (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106865))))))))

(declare-fun d!75074 () Bool)

(assert (=> d!75074 (isDefined!632 (maxPrefix!322 thiss!17480 rules!1920 (++!965 call!14030 lt!106717)))))

(declare-fun lt!106877 () Unit!4655)

(assert (=> d!75074 (= lt!106877 e!162729)))

(declare-fun c!49564 () Bool)

(declare-fun isEmpty!2363 (Option!780) Bool)

(assert (=> d!75074 (= c!49564 (isEmpty!2363 (maxPrefix!322 thiss!17480 rules!1920 (++!965 call!14030 lt!106717))))))

(declare-fun lt!106869 () Unit!4655)

(declare-fun lt!106868 () Unit!4655)

(assert (=> d!75074 (= lt!106869 lt!106868)))

(assert (=> d!75074 e!162728))

(declare-fun res!120519 () Bool)

(assert (=> d!75074 (=> (not res!120519) (not e!162728))))

(declare-fun isDefined!633 (Option!784) Bool)

(assert (=> d!75074 (= res!120519 (isDefined!633 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106865)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!117 (LexerInterface!602 List!3768 List!3766 Token!1176) Unit!4655)

(assert (=> d!75074 (= lt!106868 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!117 thiss!17480 rules!1920 call!14030 lt!106865))))

(declare-fun lt!106870 () Unit!4655)

(declare-fun lt!106872 () Unit!4655)

(assert (=> d!75074 (= lt!106870 lt!106872)))

(declare-fun lt!106867 () List!3766)

(assert (=> d!75074 (isPrefix!390 lt!106867 (++!965 call!14030 lt!106717))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!49 (List!3766 List!3766 List!3766) Unit!4655)

(assert (=> d!75074 (= lt!106872 (lemmaPrefixStaysPrefixWhenAddingToSuffix!49 lt!106867 call!14030 lt!106717))))

(assert (=> d!75074 (= lt!106867 (list!1512 (charsOf!361 lt!106865)))))

(declare-fun lt!106878 () Unit!4655)

(declare-fun lt!106864 () Unit!4655)

(assert (=> d!75074 (= lt!106878 lt!106864)))

(declare-fun lt!106879 () List!3766)

(declare-fun lt!106871 () List!3766)

(assert (=> d!75074 (isPrefix!390 lt!106879 (++!965 lt!106879 lt!106871))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!285 (List!3766 List!3766) Unit!4655)

(assert (=> d!75074 (= lt!106864 (lemmaConcatTwoListThenFirstIsPrefix!285 lt!106879 lt!106871))))

(assert (=> d!75074 (= lt!106871 (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 call!14030))))))

(assert (=> d!75074 (= lt!106879 (list!1512 (charsOf!361 lt!106865)))))

(assert (=> d!75074 (= lt!106865 (head!875 (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (seqFromList!800 call!14030))))))))

(assert (=> d!75074 (not (isEmpty!2357 rules!1920))))

(assert (=> d!75074 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!14030 lt!106717) lt!106877)))

(declare-fun b!262060 () Bool)

(declare-fun res!120520 () Bool)

(assert (=> b!262060 (=> (not res!120520) (not e!162728))))

(declare-fun matchR!268 (Regex!940 List!3766) Bool)

(assert (=> b!262060 (= res!120520 (matchR!268 (regex!716 (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106865))))) (list!1512 (charsOf!361 lt!106865))))))

(declare-fun b!262062 () Bool)

(declare-fun Unit!4679 () Unit!4655)

(assert (=> b!262062 (= e!162729 Unit!4679)))

(declare-fun lt!106866 () List!3766)

(assert (=> b!262062 (= lt!106866 (++!965 call!14030 lt!106717))))

(declare-fun lt!106874 () Unit!4655)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!49 (LexerInterface!602 Rule!1232 List!3768 List!3766) Unit!4655)

(assert (=> b!262062 (= lt!106874 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!49 thiss!17480 (rule!1301 lt!106865) rules!1920 lt!106866))))

(declare-fun maxPrefixOneRule!134 (LexerInterface!602 Rule!1232 List!3766) Option!780)

(assert (=> b!262062 (isEmpty!2363 (maxPrefixOneRule!134 thiss!17480 (rule!1301 lt!106865) lt!106866))))

(declare-fun lt!106863 () Unit!4655)

(assert (=> b!262062 (= lt!106863 lt!106874)))

(declare-fun lt!106876 () List!3766)

(assert (=> b!262062 (= lt!106876 (list!1512 (charsOf!361 lt!106865)))))

(declare-fun lt!106873 () Unit!4655)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!49 (LexerInterface!602 Rule!1232 List!3766 List!3766) Unit!4655)

(assert (=> b!262062 (= lt!106873 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!49 thiss!17480 (rule!1301 lt!106865) lt!106876 (++!965 call!14030 lt!106717)))))

(assert (=> b!262062 (not (matchR!268 (regex!716 (rule!1301 lt!106865)) lt!106876))))

(declare-fun lt!106875 () Unit!4655)

(assert (=> b!262062 (= lt!106875 lt!106873)))

(assert (=> b!262062 false))

(assert (= (and d!75074 res!120519) b!262060))

(assert (= (and b!262060 res!120520) b!262061))

(assert (= (and d!75074 c!49564) b!262062))

(assert (= (and d!75074 (not c!49564)) b!262063))

(declare-fun m!325627 () Bool)

(assert (=> b!262061 m!325627))

(assert (=> b!262061 m!325627))

(declare-fun m!325629 () Bool)

(assert (=> b!262061 m!325629))

(declare-fun m!325631 () Bool)

(assert (=> d!75074 m!325631))

(declare-fun m!325633 () Bool)

(assert (=> d!75074 m!325633))

(assert (=> d!75074 m!325627))

(assert (=> d!75074 m!325631))

(declare-fun m!325635 () Bool)

(assert (=> d!75074 m!325635))

(declare-fun m!325637 () Bool)

(assert (=> d!75074 m!325637))

(declare-fun m!325639 () Bool)

(assert (=> d!75074 m!325639))

(declare-fun m!325641 () Bool)

(assert (=> d!75074 m!325641))

(declare-fun m!325643 () Bool)

(assert (=> d!75074 m!325643))

(declare-fun m!325645 () Bool)

(assert (=> d!75074 m!325645))

(declare-fun m!325647 () Bool)

(assert (=> d!75074 m!325647))

(declare-fun m!325649 () Bool)

(assert (=> d!75074 m!325649))

(assert (=> d!75074 m!325635))

(assert (=> d!75074 m!325647))

(declare-fun m!325651 () Bool)

(assert (=> d!75074 m!325651))

(assert (=> d!75074 m!324537))

(assert (=> d!75074 m!325645))

(declare-fun m!325653 () Bool)

(assert (=> d!75074 m!325653))

(assert (=> d!75074 m!325647))

(declare-fun m!325655 () Bool)

(assert (=> d!75074 m!325655))

(assert (=> d!75074 m!325627))

(declare-fun m!325657 () Bool)

(assert (=> d!75074 m!325657))

(declare-fun m!325659 () Bool)

(assert (=> d!75074 m!325659))

(assert (=> d!75074 m!325643))

(declare-fun m!325661 () Bool)

(assert (=> d!75074 m!325661))

(assert (=> d!75074 m!325639))

(declare-fun m!325663 () Bool)

(assert (=> d!75074 m!325663))

(assert (=> d!75074 m!325659))

(declare-fun m!325665 () Bool)

(assert (=> d!75074 m!325665))

(assert (=> d!75074 m!325635))

(declare-fun m!325667 () Bool)

(assert (=> d!75074 m!325667))

(assert (=> b!262060 m!325631))

(assert (=> b!262060 m!325633))

(assert (=> b!262060 m!325627))

(assert (=> b!262060 m!325631))

(assert (=> b!262060 m!325627))

(assert (=> b!262060 m!325629))

(assert (=> b!262060 m!325633))

(declare-fun m!325669 () Bool)

(assert (=> b!262060 m!325669))

(assert (=> b!262062 m!325631))

(assert (=> b!262062 m!325633))

(assert (=> b!262062 m!325635))

(declare-fun m!325671 () Bool)

(assert (=> b!262062 m!325671))

(assert (=> b!262062 m!325631))

(assert (=> b!262062 m!325635))

(declare-fun m!325673 () Bool)

(assert (=> b!262062 m!325673))

(declare-fun m!325675 () Bool)

(assert (=> b!262062 m!325675))

(assert (=> b!262062 m!325673))

(declare-fun m!325677 () Bool)

(assert (=> b!262062 m!325677))

(declare-fun m!325679 () Bool)

(assert (=> b!262062 m!325679))

(assert (=> b!261686 d!75074))

(declare-fun d!75076 () Bool)

(assert (=> d!75076 true))

(declare-fun lambda!8775 () Int)

(declare-fun order!2855 () Int)

(declare-fun dynLambda!1898 (Int Int) Int)

(assert (=> d!75076 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1898 order!2855 lambda!8775))))

(declare-fun Forall2!141 (Int) Bool)

(assert (=> d!75076 (= (equivClasses!229 (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (Forall2!141 lambda!8775))))

(declare-fun bs!28503 () Bool)

(assert (= bs!28503 d!75076))

(declare-fun m!325681 () Bool)

(assert (=> bs!28503 m!325681))

(assert (=> b!261403 d!75076))

(declare-fun d!75078 () Bool)

(declare-fun charsToBigInt!0 (List!3765 Int) Int)

(assert (=> d!75078 (= (inv!15 (value!24723 (h!9154 tokens!465))) (= (charsToBigInt!0 (text!5615 (value!24723 (h!9154 tokens!465))) 0) (value!24718 (value!24723 (h!9154 tokens!465)))))))

(declare-fun bs!28504 () Bool)

(assert (= bs!28504 d!75078))

(declare-fun m!325683 () Bool)

(assert (=> bs!28504 m!325683))

(assert (=> b!261418 d!75078))

(declare-fun b!262079 () Bool)

(declare-fun e!162737 () List!3766)

(assert (=> b!262079 (= e!162737 (++!965 (list!1514 (left!3087 (c!49414 (charsOf!361 (h!9154 tokens!465))))) (list!1514 (right!3417 (c!49414 (charsOf!361 (h!9154 tokens!465)))))))))

(declare-fun b!262078 () Bool)

(declare-fun list!1519 (IArray!2509) List!3766)

(assert (=> b!262078 (= e!162737 (list!1519 (xs!3853 (c!49414 (charsOf!361 (h!9154 tokens!465))))))))

(declare-fun b!262076 () Bool)

(declare-fun e!162736 () List!3766)

(assert (=> b!262076 (= e!162736 Nil!3756)))

(declare-fun b!262077 () Bool)

(assert (=> b!262077 (= e!162736 e!162737)))

(declare-fun c!49570 () Bool)

(assert (=> b!262077 (= c!49570 (is-Leaf!1952 (c!49414 (charsOf!361 (h!9154 tokens!465)))))))

(declare-fun d!75080 () Bool)

(declare-fun c!49569 () Bool)

(assert (=> d!75080 (= c!49569 (is-Empty!1254 (c!49414 (charsOf!361 (h!9154 tokens!465)))))))

(assert (=> d!75080 (= (list!1514 (c!49414 (charsOf!361 (h!9154 tokens!465)))) e!162736)))

(assert (= (and d!75080 c!49569) b!262076))

(assert (= (and d!75080 (not c!49569)) b!262077))

(assert (= (and b!262077 c!49570) b!262078))

(assert (= (and b!262077 (not c!49570)) b!262079))

(declare-fun m!325685 () Bool)

(assert (=> b!262079 m!325685))

(declare-fun m!325687 () Bool)

(assert (=> b!262079 m!325687))

(assert (=> b!262079 m!325685))

(assert (=> b!262079 m!325687))

(declare-fun m!325689 () Bool)

(assert (=> b!262079 m!325689))

(declare-fun m!325691 () Bool)

(assert (=> b!262078 m!325691))

(assert (=> d!74886 d!75080))

(declare-fun d!75082 () Bool)

(assert (=> d!75082 (= (inv!16 (value!24723 (h!9154 tokens!465))) (= (charsToInt!0 (text!5613 (value!24723 (h!9154 tokens!465)))) (value!24714 (value!24723 (h!9154 tokens!465)))))))

(declare-fun bs!28505 () Bool)

(assert (= bs!28505 d!75082))

(declare-fun m!325693 () Bool)

(assert (=> bs!28505 m!325693))

(assert (=> b!261414 d!75082))

(declare-fun b!262080 () Bool)

(declare-fun e!162738 () List!3766)

(assert (=> b!262080 (= e!162738 lt!106500)))

(declare-fun e!162739 () Bool)

(declare-fun lt!106880 () List!3766)

(declare-fun b!262083 () Bool)

(assert (=> b!262083 (= e!162739 (or (not (= lt!106500 Nil!3756)) (= lt!106880 (t!37000 lt!106502))))))

(declare-fun d!75084 () Bool)

(assert (=> d!75084 e!162739))

(declare-fun res!120524 () Bool)

(assert (=> d!75084 (=> (not res!120524) (not e!162739))))

(assert (=> d!75084 (= res!120524 (= (content!530 lt!106880) (set.union (content!530 (t!37000 lt!106502)) (content!530 lt!106500))))))

(assert (=> d!75084 (= lt!106880 e!162738)))

(declare-fun c!49571 () Bool)

(assert (=> d!75084 (= c!49571 (is-Nil!3756 (t!37000 lt!106502)))))

(assert (=> d!75084 (= (++!965 (t!37000 lt!106502) lt!106500) lt!106880)))

(declare-fun b!262081 () Bool)

(assert (=> b!262081 (= e!162738 (Cons!3756 (h!9153 (t!37000 lt!106502)) (++!965 (t!37000 (t!37000 lt!106502)) lt!106500)))))

(declare-fun b!262082 () Bool)

(declare-fun res!120523 () Bool)

(assert (=> b!262082 (=> (not res!120523) (not e!162739))))

(assert (=> b!262082 (= res!120523 (= (size!2988 lt!106880) (+ (size!2988 (t!37000 lt!106502)) (size!2988 lt!106500))))))

(assert (= (and d!75084 c!49571) b!262080))

(assert (= (and d!75084 (not c!49571)) b!262081))

(assert (= (and d!75084 res!120524) b!262082))

(assert (= (and b!262082 res!120523) b!262083))

(declare-fun m!325695 () Bool)

(assert (=> d!75084 m!325695))

(assert (=> d!75084 m!325349))

(assert (=> d!75084 m!324747))

(declare-fun m!325697 () Bool)

(assert (=> b!262081 m!325697))

(declare-fun m!325699 () Bool)

(assert (=> b!262082 m!325699))

(declare-fun m!325701 () Bool)

(assert (=> b!262082 m!325701))

(assert (=> b!262082 m!324753))

(assert (=> b!261497 d!75084))

(assert (=> b!261479 d!74912))

(declare-fun d!75086 () Bool)

(declare-fun lt!106883 () Int)

(assert (=> d!75086 (= lt!106883 (size!2992 (list!1515 lt!106499)))))

(declare-fun size!2993 (Conc!1255) Int)

(assert (=> d!75086 (= lt!106883 (size!2993 (c!49416 lt!106499)))))

(assert (=> d!75086 (= (size!2989 lt!106499) lt!106883)))

(declare-fun bs!28506 () Bool)

(assert (= bs!28506 d!75086))

(assert (=> bs!28506 m!325005))

(assert (=> bs!28506 m!325005))

(declare-fun m!325703 () Bool)

(assert (=> bs!28506 m!325703))

(declare-fun m!325705 () Bool)

(assert (=> bs!28506 m!325705))

(assert (=> b!261658 d!75086))

(declare-fun d!75088 () Bool)

(declare-fun c!49572 () Bool)

(assert (=> d!75088 (= c!49572 (is-Node!1254 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(declare-fun e!162740 () Bool)

(assert (=> d!75088 (= (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))) e!162740)))

(declare-fun b!262084 () Bool)

(assert (=> b!262084 (= e!162740 (inv!4648 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(declare-fun b!262085 () Bool)

(declare-fun e!162741 () Bool)

(assert (=> b!262085 (= e!162740 e!162741)))

(declare-fun res!120525 () Bool)

(assert (=> b!262085 (= res!120525 (not (is-Leaf!1952 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))))))

(assert (=> b!262085 (=> res!120525 e!162741)))

(declare-fun b!262086 () Bool)

(assert (=> b!262086 (= e!162741 (inv!4649 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(assert (= (and d!75088 c!49572) b!262084))

(assert (= (and d!75088 (not c!49572)) b!262085))

(assert (= (and b!262085 (not res!120525)) b!262086))

(declare-fun m!325707 () Bool)

(assert (=> b!262084 m!325707))

(declare-fun m!325709 () Bool)

(assert (=> b!262086 m!325709))

(assert (=> b!261595 d!75088))

(declare-fun d!75090 () Bool)

(declare-fun res!120526 () Bool)

(declare-fun e!162742 () Bool)

(assert (=> d!75090 (=> res!120526 e!162742)))

(assert (=> d!75090 (= res!120526 (is-Nil!3757 (list!1515 lt!106499)))))

(assert (=> d!75090 (= (forall!922 (list!1515 lt!106499) lambda!8759) e!162742)))

(declare-fun b!262087 () Bool)

(declare-fun e!162743 () Bool)

(assert (=> b!262087 (= e!162742 e!162743)))

(declare-fun res!120527 () Bool)

(assert (=> b!262087 (=> (not res!120527) (not e!162743))))

(assert (=> b!262087 (= res!120527 (dynLambda!1892 lambda!8759 (h!9154 (list!1515 lt!106499))))))

(declare-fun b!262088 () Bool)

(assert (=> b!262088 (= e!162743 (forall!922 (t!37001 (list!1515 lt!106499)) lambda!8759))))

(assert (= (and d!75090 (not res!120526)) b!262087))

(assert (= (and b!262087 res!120527) b!262088))

(declare-fun b_lambda!8065 () Bool)

(assert (=> (not b_lambda!8065) (not b!262087)))

(declare-fun m!325711 () Bool)

(assert (=> b!262087 m!325711))

(declare-fun m!325713 () Bool)

(assert (=> b!262088 m!325713))

(assert (=> d!74924 d!75090))

(declare-fun d!75092 () Bool)

(assert (=> d!75092 (= (list!1515 lt!106499) (list!1518 (c!49416 lt!106499)))))

(declare-fun bs!28507 () Bool)

(assert (= bs!28507 d!75092))

(declare-fun m!325715 () Bool)

(assert (=> bs!28507 m!325715))

(assert (=> d!74924 d!75092))

(declare-fun d!75094 () Bool)

(declare-fun lt!106886 () Bool)

(assert (=> d!75094 (= lt!106886 (forall!922 (list!1515 lt!106499) lambda!8759))))

(declare-fun forall!926 (Conc!1255 Int) Bool)

(assert (=> d!75094 (= lt!106886 (forall!926 (c!49416 lt!106499) lambda!8759))))

(assert (=> d!75094 (= (forall!924 lt!106499 lambda!8759) lt!106886)))

(declare-fun bs!28508 () Bool)

(assert (= bs!28508 d!75094))

(assert (=> bs!28508 m!325005))

(assert (=> bs!28508 m!325005))

(assert (=> bs!28508 m!325007))

(declare-fun m!325717 () Bool)

(assert (=> bs!28508 m!325717))

(assert (=> d!74924 d!75094))

(assert (=> d!74924 d!74850))

(declare-fun d!75096 () Bool)

(declare-fun e!162746 () Bool)

(assert (=> d!75096 e!162746))

(declare-fun res!120530 () Bool)

(assert (=> d!75096 (=> (not res!120530) (not e!162746))))

(declare-fun lt!106889 () BalanceConc!2516)

(assert (=> d!75096 (= res!120530 (= (list!1512 lt!106889) lt!106497))))

(declare-fun fromList!162 (List!3766) Conc!1254)

(assert (=> d!75096 (= lt!106889 (BalanceConc!2517 (fromList!162 lt!106497)))))

(assert (=> d!75096 (= (fromListB!294 lt!106497) lt!106889)))

(declare-fun b!262091 () Bool)

(assert (=> b!262091 (= e!162746 (isBalanced!335 (fromList!162 lt!106497)))))

(assert (= (and d!75096 res!120530) b!262091))

(declare-fun m!325719 () Bool)

(assert (=> d!75096 m!325719))

(declare-fun m!325721 () Bool)

(assert (=> d!75096 m!325721))

(assert (=> b!262091 m!325721))

(assert (=> b!262091 m!325721))

(declare-fun m!325723 () Bool)

(assert (=> b!262091 m!325723))

(assert (=> d!74862 d!75096))

(declare-fun b!262095 () Bool)

(declare-fun e!162748 () Unit!4655)

(declare-fun Unit!4680 () Unit!4655)

(assert (=> b!262095 (= e!162748 Unit!4680)))

(declare-fun b!262093 () Bool)

(declare-fun lt!106892 () Token!1176)

(declare-fun e!162747 () Bool)

(assert (=> b!262093 (= e!162747 (= (rule!1301 lt!106892) (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106892))))))))

(declare-fun d!75098 () Bool)

(assert (=> d!75098 (isDefined!632 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 call!14001) (list!1512 lt!106618))))))

(declare-fun lt!106904 () Unit!4655)

(assert (=> d!75098 (= lt!106904 e!162748)))

(declare-fun c!49574 () Bool)

(assert (=> d!75098 (= c!49574 (isEmpty!2363 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 call!14001) (list!1512 lt!106618)))))))

(declare-fun lt!106896 () Unit!4655)

(declare-fun lt!106895 () Unit!4655)

(assert (=> d!75098 (= lt!106896 lt!106895)))

(assert (=> d!75098 e!162747))

(declare-fun res!120531 () Bool)

(assert (=> d!75098 (=> (not res!120531) (not e!162747))))

(assert (=> d!75098 (= res!120531 (isDefined!633 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106892)))))))

(assert (=> d!75098 (= lt!106895 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!117 thiss!17480 rules!1920 (list!1512 call!14001) lt!106892))))

(declare-fun lt!106897 () Unit!4655)

(declare-fun lt!106899 () Unit!4655)

(assert (=> d!75098 (= lt!106897 lt!106899)))

(declare-fun lt!106894 () List!3766)

(assert (=> d!75098 (isPrefix!390 lt!106894 (++!965 (list!1512 call!14001) (list!1512 lt!106618)))))

(assert (=> d!75098 (= lt!106899 (lemmaPrefixStaysPrefixWhenAddingToSuffix!49 lt!106894 (list!1512 call!14001) (list!1512 lt!106618)))))

(assert (=> d!75098 (= lt!106894 (list!1512 (charsOf!361 lt!106892)))))

(declare-fun lt!106905 () Unit!4655)

(declare-fun lt!106891 () Unit!4655)

(assert (=> d!75098 (= lt!106905 lt!106891)))

(declare-fun lt!106906 () List!3766)

(declare-fun lt!106898 () List!3766)

(assert (=> d!75098 (isPrefix!390 lt!106906 (++!965 lt!106906 lt!106898))))

(assert (=> d!75098 (= lt!106891 (lemmaConcatTwoListThenFirstIsPrefix!285 lt!106906 lt!106898))))

(assert (=> d!75098 (= lt!106898 (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 call!14001)))))))

(assert (=> d!75098 (= lt!106906 (list!1512 (charsOf!361 lt!106892)))))

(assert (=> d!75098 (= lt!106892 (head!875 (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (seqFromList!800 (list!1512 call!14001)))))))))

(assert (=> d!75098 (not (isEmpty!2357 rules!1920))))

(assert (=> d!75098 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14001) (list!1512 lt!106618)) lt!106904)))

(declare-fun b!262092 () Bool)

(declare-fun res!120532 () Bool)

(assert (=> b!262092 (=> (not res!120532) (not e!162747))))

(assert (=> b!262092 (= res!120532 (matchR!268 (regex!716 (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106892))))) (list!1512 (charsOf!361 lt!106892))))))

(declare-fun b!262094 () Bool)

(declare-fun Unit!4681 () Unit!4655)

(assert (=> b!262094 (= e!162748 Unit!4681)))

(declare-fun lt!106893 () List!3766)

(assert (=> b!262094 (= lt!106893 (++!965 (list!1512 call!14001) (list!1512 lt!106618)))))

(declare-fun lt!106901 () Unit!4655)

(assert (=> b!262094 (= lt!106901 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!49 thiss!17480 (rule!1301 lt!106892) rules!1920 lt!106893))))

(assert (=> b!262094 (isEmpty!2363 (maxPrefixOneRule!134 thiss!17480 (rule!1301 lt!106892) lt!106893))))

(declare-fun lt!106890 () Unit!4655)

(assert (=> b!262094 (= lt!106890 lt!106901)))

(declare-fun lt!106903 () List!3766)

(assert (=> b!262094 (= lt!106903 (list!1512 (charsOf!361 lt!106892)))))

(declare-fun lt!106900 () Unit!4655)

(assert (=> b!262094 (= lt!106900 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!49 thiss!17480 (rule!1301 lt!106892) lt!106903 (++!965 (list!1512 call!14001) (list!1512 lt!106618))))))

(assert (=> b!262094 (not (matchR!268 (regex!716 (rule!1301 lt!106892)) lt!106903))))

(declare-fun lt!106902 () Unit!4655)

(assert (=> b!262094 (= lt!106902 lt!106900)))

(assert (=> b!262094 false))

(assert (= (and d!75098 res!120531) b!262092))

(assert (= (and b!262092 res!120532) b!262093))

(assert (= (and d!75098 c!49574) b!262094))

(assert (= (and d!75098 (not c!49574)) b!262095))

(declare-fun m!325725 () Bool)

(assert (=> b!262093 m!325725))

(assert (=> b!262093 m!325725))

(declare-fun m!325727 () Bool)

(assert (=> b!262093 m!325727))

(declare-fun m!325729 () Bool)

(assert (=> d!75098 m!325729))

(declare-fun m!325731 () Bool)

(assert (=> d!75098 m!325731))

(assert (=> d!75098 m!325725))

(assert (=> d!75098 m!325729))

(assert (=> d!75098 m!324891))

(assert (=> d!75098 m!324893))

(declare-fun m!325733 () Bool)

(assert (=> d!75098 m!325733))

(assert (=> d!75098 m!324891))

(declare-fun m!325735 () Bool)

(assert (=> d!75098 m!325735))

(declare-fun m!325737 () Bool)

(assert (=> d!75098 m!325737))

(declare-fun m!325739 () Bool)

(assert (=> d!75098 m!325739))

(assert (=> d!75098 m!324891))

(declare-fun m!325741 () Bool)

(assert (=> d!75098 m!325741))

(declare-fun m!325743 () Bool)

(assert (=> d!75098 m!325743))

(declare-fun m!325745 () Bool)

(assert (=> d!75098 m!325745))

(declare-fun m!325747 () Bool)

(assert (=> d!75098 m!325747))

(assert (=> d!75098 m!325733))

(assert (=> d!75098 m!325745))

(declare-fun m!325749 () Bool)

(assert (=> d!75098 m!325749))

(assert (=> d!75098 m!324537))

(assert (=> d!75098 m!325743))

(declare-fun m!325751 () Bool)

(assert (=> d!75098 m!325751))

(assert (=> d!75098 m!325745))

(declare-fun m!325753 () Bool)

(assert (=> d!75098 m!325753))

(assert (=> d!75098 m!325725))

(declare-fun m!325755 () Bool)

(assert (=> d!75098 m!325755))

(declare-fun m!325757 () Bool)

(assert (=> d!75098 m!325757))

(assert (=> d!75098 m!325741))

(declare-fun m!325759 () Bool)

(assert (=> d!75098 m!325759))

(assert (=> d!75098 m!324891))

(assert (=> d!75098 m!325737))

(assert (=> d!75098 m!324891))

(assert (=> d!75098 m!324893))

(declare-fun m!325761 () Bool)

(assert (=> d!75098 m!325761))

(assert (=> d!75098 m!325757))

(declare-fun m!325763 () Bool)

(assert (=> d!75098 m!325763))

(assert (=> d!75098 m!325733))

(declare-fun m!325765 () Bool)

(assert (=> d!75098 m!325765))

(assert (=> b!262092 m!325729))

(assert (=> b!262092 m!325731))

(assert (=> b!262092 m!325725))

(assert (=> b!262092 m!325729))

(assert (=> b!262092 m!325725))

(assert (=> b!262092 m!325727))

(assert (=> b!262092 m!325731))

(declare-fun m!325767 () Bool)

(assert (=> b!262092 m!325767))

(assert (=> b!262094 m!325729))

(assert (=> b!262094 m!325731))

(assert (=> b!262094 m!325733))

(declare-fun m!325769 () Bool)

(assert (=> b!262094 m!325769))

(assert (=> b!262094 m!325729))

(assert (=> b!262094 m!324891))

(assert (=> b!262094 m!324893))

(assert (=> b!262094 m!325733))

(declare-fun m!325771 () Bool)

(assert (=> b!262094 m!325771))

(declare-fun m!325773 () Bool)

(assert (=> b!262094 m!325773))

(assert (=> b!262094 m!325771))

(declare-fun m!325775 () Bool)

(assert (=> b!262094 m!325775))

(declare-fun m!325777 () Bool)

(assert (=> b!262094 m!325777))

(assert (=> b!261582 d!75098))

(declare-fun d!75100 () Bool)

(assert (=> d!75100 (= (list!1512 call!14001) (list!1514 (c!49414 call!14001)))))

(declare-fun bs!28509 () Bool)

(assert (= bs!28509 d!75100))

(declare-fun m!325779 () Bool)

(assert (=> bs!28509 m!325779))

(assert (=> b!261582 d!75100))

(declare-fun d!75102 () Bool)

(declare-fun lt!106907 () BalanceConc!2516)

(assert (=> d!75102 (= (list!1512 lt!106907) (printList!280 thiss!17480 (list!1515 (singletonSeq!262 call!13998))))))

(assert (=> d!75102 (= lt!106907 (printTailRec!290 thiss!17480 (singletonSeq!262 call!13998) 0 (BalanceConc!2517 Empty!1254)))))

(assert (=> d!75102 (= (print!327 thiss!17480 (singletonSeq!262 call!13998)) lt!106907)))

(declare-fun bs!28510 () Bool)

(assert (= bs!28510 d!75102))

(declare-fun m!325781 () Bool)

(assert (=> bs!28510 m!325781))

(assert (=> bs!28510 m!324897))

(declare-fun m!325783 () Bool)

(assert (=> bs!28510 m!325783))

(assert (=> bs!28510 m!325783))

(declare-fun m!325785 () Bool)

(assert (=> bs!28510 m!325785))

(assert (=> bs!28510 m!324897))

(assert (=> bs!28510 m!324899))

(assert (=> b!261582 d!75102))

(declare-fun d!75104 () Bool)

(declare-fun e!162749 () Bool)

(assert (=> d!75104 e!162749))

(declare-fun res!120533 () Bool)

(assert (=> d!75104 (=> (not res!120533) (not e!162749))))

(declare-fun lt!106908 () BalanceConc!2518)

(assert (=> d!75104 (= res!120533 (= (list!1515 lt!106908) (Cons!3757 call!13998 Nil!3757)))))

(assert (=> d!75104 (= lt!106908 (singleton!104 call!13998))))

(assert (=> d!75104 (= (singletonSeq!262 call!13998) lt!106908)))

(declare-fun b!262096 () Bool)

(assert (=> b!262096 (= e!162749 (isBalanced!336 (c!49416 lt!106908)))))

(assert (= (and d!75104 res!120533) b!262096))

(declare-fun m!325787 () Bool)

(assert (=> d!75104 m!325787))

(declare-fun m!325789 () Bool)

(assert (=> d!75104 m!325789))

(declare-fun m!325791 () Bool)

(assert (=> b!262096 m!325791))

(assert (=> b!261582 d!75104))

(declare-fun d!75106 () Bool)

(declare-fun lt!106913 () BalanceConc!2516)

(assert (=> d!75106 (= (list!1512 lt!106913) (printListTailRec!119 thiss!17480 (dropList!151 (singletonSeq!262 call!13998) 0) (list!1512 (BalanceConc!2517 Empty!1254))))))

(declare-fun e!162750 () BalanceConc!2516)

(assert (=> d!75106 (= lt!106913 e!162750)))

(declare-fun c!49575 () Bool)

(assert (=> d!75106 (= c!49575 (>= 0 (size!2989 (singletonSeq!262 call!13998))))))

(declare-fun e!162751 () Bool)

(assert (=> d!75106 e!162751))

(declare-fun res!120534 () Bool)

(assert (=> d!75106 (=> (not res!120534) (not e!162751))))

(assert (=> d!75106 (= res!120534 (>= 0 0))))

(assert (=> d!75106 (= (printTailRec!290 thiss!17480 (singletonSeq!262 call!13998) 0 (BalanceConc!2517 Empty!1254)) lt!106913)))

(declare-fun b!262097 () Bool)

(assert (=> b!262097 (= e!162751 (<= 0 (size!2989 (singletonSeq!262 call!13998))))))

(declare-fun b!262098 () Bool)

(assert (=> b!262098 (= e!162750 (BalanceConc!2517 Empty!1254))))

(declare-fun b!262099 () Bool)

(assert (=> b!262099 (= e!162750 (printTailRec!290 thiss!17480 (singletonSeq!262 call!13998) (+ 0 1) (++!967 (BalanceConc!2517 Empty!1254) (charsOf!361 (apply!731 (singletonSeq!262 call!13998) 0)))))))

(declare-fun lt!106912 () List!3767)

(assert (=> b!262099 (= lt!106912 (list!1515 (singletonSeq!262 call!13998)))))

(declare-fun lt!106911 () Unit!4655)

(assert (=> b!262099 (= lt!106911 (lemmaDropApply!191 lt!106912 0))))

(assert (=> b!262099 (= (head!875 (drop!204 lt!106912 0)) (apply!732 lt!106912 0))))

(declare-fun lt!106914 () Unit!4655)

(assert (=> b!262099 (= lt!106914 lt!106911)))

(declare-fun lt!106909 () List!3767)

(assert (=> b!262099 (= lt!106909 (list!1515 (singletonSeq!262 call!13998)))))

(declare-fun lt!106910 () Unit!4655)

(assert (=> b!262099 (= lt!106910 (lemmaDropTail!183 lt!106909 0))))

(assert (=> b!262099 (= (tail!465 (drop!204 lt!106909 0)) (drop!204 lt!106909 (+ 0 1)))))

(declare-fun lt!106915 () Unit!4655)

(assert (=> b!262099 (= lt!106915 lt!106910)))

(assert (= (and d!75106 res!120534) b!262097))

(assert (= (and d!75106 c!49575) b!262098))

(assert (= (and d!75106 (not c!49575)) b!262099))

(declare-fun m!325793 () Bool)

(assert (=> d!75106 m!325793))

(assert (=> d!75106 m!325595))

(declare-fun m!325795 () Bool)

(assert (=> d!75106 m!325795))

(assert (=> d!75106 m!325595))

(declare-fun m!325797 () Bool)

(assert (=> d!75106 m!325797))

(assert (=> d!75106 m!324897))

(declare-fun m!325799 () Bool)

(assert (=> d!75106 m!325799))

(assert (=> d!75106 m!324897))

(assert (=> d!75106 m!325795))

(assert (=> b!262097 m!324897))

(assert (=> b!262097 m!325799))

(assert (=> b!262099 m!324897))

(declare-fun m!325801 () Bool)

(assert (=> b!262099 m!325801))

(declare-fun m!325803 () Bool)

(assert (=> b!262099 m!325803))

(declare-fun m!325805 () Bool)

(assert (=> b!262099 m!325805))

(declare-fun m!325807 () Bool)

(assert (=> b!262099 m!325807))

(declare-fun m!325809 () Bool)

(assert (=> b!262099 m!325809))

(assert (=> b!262099 m!324897))

(declare-fun m!325811 () Bool)

(assert (=> b!262099 m!325811))

(declare-fun m!325813 () Bool)

(assert (=> b!262099 m!325813))

(declare-fun m!325815 () Bool)

(assert (=> b!262099 m!325815))

(declare-fun m!325817 () Bool)

(assert (=> b!262099 m!325817))

(assert (=> b!262099 m!325805))

(declare-fun m!325819 () Bool)

(assert (=> b!262099 m!325819))

(assert (=> b!262099 m!325815))

(declare-fun m!325821 () Bool)

(assert (=> b!262099 m!325821))

(assert (=> b!262099 m!325801))

(declare-fun m!325823 () Bool)

(assert (=> b!262099 m!325823))

(assert (=> b!262099 m!325823))

(assert (=> b!262099 m!325811))

(assert (=> b!262099 m!324897))

(assert (=> b!262099 m!325783))

(assert (=> b!261582 d!75106))

(declare-fun d!75108 () Bool)

(assert (=> d!75108 (= (list!1512 lt!106618) (list!1514 (c!49414 lt!106618)))))

(declare-fun bs!28511 () Bool)

(assert (= bs!28511 d!75108))

(declare-fun m!325825 () Bool)

(assert (=> bs!28511 m!325825))

(assert (=> b!261582 d!75108))

(declare-fun d!75110 () Bool)

(assert (=> d!75110 (= (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))) (isBalanced!335 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(declare-fun bs!28512 () Bool)

(assert (= bs!28512 d!75110))

(declare-fun m!325827 () Bool)

(assert (=> bs!28512 m!325827))

(assert (=> tb!14155 d!75110))

(declare-fun b!262100 () Bool)

(declare-fun e!162752 () List!3766)

(assert (=> b!262100 (= e!162752 lt!106498)))

(declare-fun e!162753 () Bool)

(declare-fun lt!106916 () List!3766)

(declare-fun b!262103 () Bool)

(assert (=> b!262103 (= e!162753 (or (not (= lt!106498 Nil!3756)) (= lt!106916 (t!37000 (++!965 lt!106502 lt!106503)))))))

(declare-fun d!75112 () Bool)

(assert (=> d!75112 e!162753))

(declare-fun res!120536 () Bool)

(assert (=> d!75112 (=> (not res!120536) (not e!162753))))

(assert (=> d!75112 (= res!120536 (= (content!530 lt!106916) (set.union (content!530 (t!37000 (++!965 lt!106502 lt!106503))) (content!530 lt!106498))))))

(assert (=> d!75112 (= lt!106916 e!162752)))

(declare-fun c!49576 () Bool)

(assert (=> d!75112 (= c!49576 (is-Nil!3756 (t!37000 (++!965 lt!106502 lt!106503))))))

(assert (=> d!75112 (= (++!965 (t!37000 (++!965 lt!106502 lt!106503)) lt!106498) lt!106916)))

(declare-fun b!262101 () Bool)

(assert (=> b!262101 (= e!162752 (Cons!3756 (h!9153 (t!37000 (++!965 lt!106502 lt!106503))) (++!965 (t!37000 (t!37000 (++!965 lt!106502 lt!106503))) lt!106498)))))

(declare-fun b!262102 () Bool)

(declare-fun res!120535 () Bool)

(assert (=> b!262102 (=> (not res!120535) (not e!162753))))

(assert (=> b!262102 (= res!120535 (= (size!2988 lt!106916) (+ (size!2988 (t!37000 (++!965 lt!106502 lt!106503))) (size!2988 lt!106498))))))

(assert (= (and d!75112 c!49576) b!262100))

(assert (= (and d!75112 (not c!49576)) b!262101))

(assert (= (and d!75112 res!120536) b!262102))

(assert (= (and b!262102 res!120535) b!262103))

(declare-fun m!325829 () Bool)

(assert (=> d!75112 m!325829))

(assert (=> d!75112 m!325551))

(assert (=> d!75112 m!324757))

(declare-fun m!325831 () Bool)

(assert (=> b!262101 m!325831))

(declare-fun m!325833 () Bool)

(assert (=> b!262102 m!325833))

(assert (=> b!262102 m!325293))

(assert (=> b!262102 m!324763))

(assert (=> b!261592 d!75112))

(declare-fun b!262104 () Bool)

(declare-fun e!162754 () List!3766)

(assert (=> b!262104 (= e!162754 lt!106560)))

(declare-fun e!162755 () Bool)

(declare-fun b!262107 () Bool)

(declare-fun lt!106917 () List!3766)

(assert (=> b!262107 (= e!162755 (or (not (= lt!106560 Nil!3756)) (= lt!106917 call!13968)))))

(declare-fun d!75114 () Bool)

(assert (=> d!75114 e!162755))

(declare-fun res!120538 () Bool)

(assert (=> d!75114 (=> (not res!120538) (not e!162755))))

(assert (=> d!75114 (= res!120538 (= (content!530 lt!106917) (set.union (content!530 call!13968) (content!530 lt!106560))))))

(assert (=> d!75114 (= lt!106917 e!162754)))

(declare-fun c!49577 () Bool)

(assert (=> d!75114 (= c!49577 (is-Nil!3756 call!13968))))

(assert (=> d!75114 (= (++!965 call!13968 lt!106560) lt!106917)))

(declare-fun b!262105 () Bool)

(assert (=> b!262105 (= e!162754 (Cons!3756 (h!9153 call!13968) (++!965 (t!37000 call!13968) lt!106560)))))

(declare-fun b!262106 () Bool)

(declare-fun res!120537 () Bool)

(assert (=> b!262106 (=> (not res!120537) (not e!162755))))

(assert (=> b!262106 (= res!120537 (= (size!2988 lt!106917) (+ (size!2988 call!13968) (size!2988 lt!106560))))))

(assert (= (and d!75114 c!49577) b!262104))

(assert (= (and d!75114 (not c!49577)) b!262105))

(assert (= (and d!75114 res!120538) b!262106))

(assert (= (and b!262106 res!120537) b!262107))

(declare-fun m!325835 () Bool)

(assert (=> d!75114 m!325835))

(declare-fun m!325837 () Bool)

(assert (=> d!75114 m!325837))

(declare-fun m!325839 () Bool)

(assert (=> d!75114 m!325839))

(declare-fun m!325841 () Bool)

(assert (=> b!262105 m!325841))

(declare-fun m!325843 () Bool)

(assert (=> b!262106 m!325843))

(declare-fun m!325845 () Bool)

(assert (=> b!262106 m!325845))

(declare-fun m!325847 () Bool)

(assert (=> b!262106 m!325847))

(assert (=> b!261476 d!75114))

(declare-fun lt!106920 () Bool)

(declare-fun d!75116 () Bool)

(assert (=> d!75116 (= lt!106920 (isEmpty!2359 (list!1512 (_2!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))))

(declare-fun isEmpty!2364 (Conc!1254) Bool)

(assert (=> d!75116 (= lt!106920 (isEmpty!2364 (c!49414 (_2!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))))

(assert (=> d!75116 (= (isEmpty!2360 (_2!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))) lt!106920)))

(declare-fun bs!28513 () Bool)

(assert (= bs!28513 d!75116))

(declare-fun m!325849 () Bool)

(assert (=> bs!28513 m!325849))

(assert (=> bs!28513 m!325849))

(declare-fun m!325851 () Bool)

(assert (=> bs!28513 m!325851))

(declare-fun m!325853 () Bool)

(assert (=> bs!28513 m!325853))

(assert (=> b!261439 d!75116))

(declare-fun d!75118 () Bool)

(declare-fun e!162763 () Bool)

(assert (=> d!75118 e!162763))

(declare-fun res!120546 () Bool)

(assert (=> d!75118 (=> (not res!120546) (not e!162763))))

(declare-fun e!162764 () Bool)

(assert (=> d!75118 (= res!120546 e!162764)))

(declare-fun c!49580 () Bool)

(declare-fun lt!106923 () tuple2!4200)

(assert (=> d!75118 (= c!49580 (> (size!2989 (_1!2316 lt!106923)) 0))))

(declare-fun lexTailRecV2!167 (LexerInterface!602 List!3768 BalanceConc!2516 BalanceConc!2516 BalanceConc!2516 BalanceConc!2518) tuple2!4200)

(assert (=> d!75118 (= lt!106923 (lexTailRecV2!167 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)) (BalanceConc!2517 Empty!1254) (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)) (BalanceConc!2519 Empty!1255)))))

(assert (=> d!75118 (= (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))) lt!106923)))

(declare-fun b!262118 () Bool)

(declare-datatypes ((tuple2!4212 0))(
  ( (tuple2!4213 (_1!2322 List!3767) (_2!2322 List!3766)) )
))
(declare-fun lexList!200 (LexerInterface!602 List!3768 List!3766) tuple2!4212)

(assert (=> b!262118 (= e!162763 (= (list!1512 (_2!2316 lt!106923)) (_2!2322 (lexList!200 thiss!17480 rules!1920 (list!1512 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))))

(declare-fun b!262119 () Bool)

(assert (=> b!262119 (= e!162764 (= (_2!2316 lt!106923) (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))))

(declare-fun b!262120 () Bool)

(declare-fun e!162762 () Bool)

(assert (=> b!262120 (= e!162764 e!162762)))

(declare-fun res!120545 () Bool)

(declare-fun size!2994 (BalanceConc!2516) Int)

(assert (=> b!262120 (= res!120545 (< (size!2994 (_2!2316 lt!106923)) (size!2994 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))

(assert (=> b!262120 (=> (not res!120545) (not e!162762))))

(declare-fun b!262121 () Bool)

(declare-fun res!120547 () Bool)

(assert (=> b!262121 (=> (not res!120547) (not e!162763))))

(assert (=> b!262121 (= res!120547 (= (list!1515 (_1!2316 lt!106923)) (_1!2322 (lexList!200 thiss!17480 rules!1920 (list!1512 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))))

(declare-fun b!262122 () Bool)

(declare-fun isEmpty!2365 (BalanceConc!2518) Bool)

(assert (=> b!262122 (= e!162762 (not (isEmpty!2365 (_1!2316 lt!106923))))))

(assert (= (and d!75118 c!49580) b!262120))

(assert (= (and d!75118 (not c!49580)) b!262119))

(assert (= (and b!262120 res!120545) b!262122))

(assert (= (and d!75118 res!120546) b!262121))

(assert (= (and b!262121 res!120547) b!262118))

(declare-fun m!325855 () Bool)

(assert (=> b!262118 m!325855))

(assert (=> b!262118 m!324677))

(declare-fun m!325857 () Bool)

(assert (=> b!262118 m!325857))

(assert (=> b!262118 m!325857))

(declare-fun m!325859 () Bool)

(assert (=> b!262118 m!325859))

(declare-fun m!325861 () Bool)

(assert (=> b!262122 m!325861))

(declare-fun m!325863 () Bool)

(assert (=> b!262121 m!325863))

(assert (=> b!262121 m!324677))

(assert (=> b!262121 m!325857))

(assert (=> b!262121 m!325857))

(assert (=> b!262121 m!325859))

(declare-fun m!325865 () Bool)

(assert (=> d!75118 m!325865))

(assert (=> d!75118 m!324677))

(assert (=> d!75118 m!324677))

(declare-fun m!325867 () Bool)

(assert (=> d!75118 m!325867))

(declare-fun m!325869 () Bool)

(assert (=> b!262120 m!325869))

(assert (=> b!262120 m!324677))

(declare-fun m!325871 () Bool)

(assert (=> b!262120 m!325871))

(assert (=> b!261439 d!75118))

(declare-fun d!75120 () Bool)

(declare-fun lt!106924 () BalanceConc!2516)

(assert (=> d!75120 (= (list!1512 lt!106924) (printList!280 thiss!17480 (list!1515 (singletonSeq!262 separatorToken!170))))))

(assert (=> d!75120 (= lt!106924 (printTailRec!290 thiss!17480 (singletonSeq!262 separatorToken!170) 0 (BalanceConc!2517 Empty!1254)))))

(assert (=> d!75120 (= (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)) lt!106924)))

(declare-fun bs!28514 () Bool)

(assert (= bs!28514 d!75120))

(declare-fun m!325873 () Bool)

(assert (=> bs!28514 m!325873))

(assert (=> bs!28514 m!324673))

(assert (=> bs!28514 m!324675))

(assert (=> bs!28514 m!324675))

(declare-fun m!325875 () Bool)

(assert (=> bs!28514 m!325875))

(assert (=> bs!28514 m!324673))

(declare-fun m!325877 () Bool)

(assert (=> bs!28514 m!325877))

(assert (=> b!261439 d!75120))

(declare-fun d!75122 () Bool)

(declare-fun e!162765 () Bool)

(assert (=> d!75122 e!162765))

(declare-fun res!120548 () Bool)

(assert (=> d!75122 (=> (not res!120548) (not e!162765))))

(declare-fun lt!106925 () BalanceConc!2518)

(assert (=> d!75122 (= res!120548 (= (list!1515 lt!106925) (Cons!3757 separatorToken!170 Nil!3757)))))

(assert (=> d!75122 (= lt!106925 (singleton!104 separatorToken!170))))

(assert (=> d!75122 (= (singletonSeq!262 separatorToken!170) lt!106925)))

(declare-fun b!262123 () Bool)

(assert (=> b!262123 (= e!162765 (isBalanced!336 (c!49416 lt!106925)))))

(assert (= (and d!75122 res!120548) b!262123))

(declare-fun m!325879 () Bool)

(assert (=> d!75122 m!325879))

(declare-fun m!325881 () Bool)

(assert (=> d!75122 m!325881))

(declare-fun m!325883 () Bool)

(assert (=> b!262123 m!325883))

(assert (=> b!261439 d!75122))

(declare-fun d!75124 () Bool)

(declare-fun lt!106926 () BalanceConc!2516)

(assert (=> d!75124 (= (list!1512 lt!106926) (originalCharacters!759 call!14018))))

(assert (=> d!75124 (= lt!106926 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!14018))) (value!24723 call!14018)))))

(assert (=> d!75124 (= (charsOf!361 call!14018) lt!106926)))

(declare-fun b_lambda!8067 () Bool)

(assert (=> (not b_lambda!8067) (not d!75124)))

(declare-fun tb!14197 () Bool)

(declare-fun t!37094 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37094) tb!14197))

(declare-fun b!262124 () Bool)

(declare-fun e!162766 () Bool)

(declare-fun tp!100638 () Bool)

(assert (=> b!262124 (= e!162766 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!14018))) (value!24723 call!14018)))) tp!100638))))

(declare-fun result!17688 () Bool)

(assert (=> tb!14197 (= result!17688 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!14018))) (value!24723 call!14018))) e!162766))))

(assert (= tb!14197 b!262124))

(declare-fun m!325885 () Bool)

(assert (=> b!262124 m!325885))

(declare-fun m!325887 () Bool)

(assert (=> tb!14197 m!325887))

(assert (=> d!75124 t!37094))

(declare-fun b_and!20383 () Bool)

(assert (= b_and!20375 (and (=> t!37094 result!17688) b_and!20383)))

(declare-fun t!37096 () Bool)

(declare-fun tb!14199 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37096) tb!14199))

(declare-fun result!17690 () Bool)

(assert (= result!17690 result!17688))

(assert (=> d!75124 t!37096))

(declare-fun b_and!20385 () Bool)

(assert (= b_and!20379 (and (=> t!37096 result!17690) b_and!20385)))

(declare-fun t!37098 () Bool)

(declare-fun tb!14201 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37098) tb!14201))

(declare-fun result!17692 () Bool)

(assert (= result!17692 result!17688))

(assert (=> d!75124 t!37098))

(declare-fun b_and!20387 () Bool)

(assert (= b_and!20373 (and (=> t!37098 result!17692) b_and!20387)))

(declare-fun t!37100 () Bool)

(declare-fun tb!14203 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37100) tb!14203))

(declare-fun result!17694 () Bool)

(assert (= result!17694 result!17688))

(assert (=> d!75124 t!37100))

(declare-fun b_and!20389 () Bool)

(assert (= b_and!20381 (and (=> t!37100 result!17694) b_and!20389)))

(declare-fun t!37102 () Bool)

(declare-fun tb!14205 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37102) tb!14205))

(declare-fun result!17696 () Bool)

(assert (= result!17696 result!17688))

(assert (=> d!75124 t!37102))

(declare-fun b_and!20391 () Bool)

(assert (= b_and!20377 (and (=> t!37102 result!17696) b_and!20391)))

(declare-fun m!325889 () Bool)

(assert (=> d!75124 m!325889))

(declare-fun m!325891 () Bool)

(assert (=> d!75124 m!325891))

(assert (=> b!261667 d!75124))

(declare-fun e!162768 () List!3766)

(declare-fun b!262128 () Bool)

(assert (=> b!262128 (= e!162768 (++!965 (list!1514 (left!3087 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0)))) (list!1514 (right!3417 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0))))))))

(declare-fun b!262127 () Bool)

(assert (=> b!262127 (= e!162768 (list!1519 (xs!3853 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0)))))))

(declare-fun b!262125 () Bool)

(declare-fun e!162767 () List!3766)

(assert (=> b!262125 (= e!162767 Nil!3756)))

(declare-fun b!262126 () Bool)

(assert (=> b!262126 (= e!162767 e!162768)))

(declare-fun c!49582 () Bool)

(assert (=> b!262126 (= c!49582 (is-Leaf!1952 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0))))))

(declare-fun d!75126 () Bool)

(declare-fun c!49581 () Bool)

(assert (=> d!75126 (= c!49581 (is-Empty!1254 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0))))))

(assert (=> d!75126 (= (list!1514 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 0))) e!162767)))

(assert (= (and d!75126 c!49581) b!262125))

(assert (= (and d!75126 (not c!49581)) b!262126))

(assert (= (and b!262126 c!49582) b!262127))

(assert (= (and b!262126 (not c!49582)) b!262128))

(declare-fun m!325893 () Bool)

(assert (=> b!262128 m!325893))

(declare-fun m!325895 () Bool)

(assert (=> b!262128 m!325895))

(assert (=> b!262128 m!325893))

(assert (=> b!262128 m!325895))

(declare-fun m!325897 () Bool)

(assert (=> b!262128 m!325897))

(declare-fun m!325899 () Bool)

(assert (=> b!262127 m!325899))

(assert (=> d!74934 d!75126))

(declare-fun d!75128 () Bool)

(assert (=> d!75128 true))

(declare-fun lambda!8778 () Int)

(declare-fun order!2857 () Int)

(declare-fun dynLambda!1899 (Int Int) Int)

(assert (=> d!75128 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) (dynLambda!1899 order!2857 lambda!8778))))

(assert (=> d!75128 true))

(assert (=> d!75128 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))) (dynLambda!1899 order!2857 lambda!8778))))

(declare-fun Forall!165 (Int) Bool)

(assert (=> d!75128 (= (semiInverseModEq!246 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))) (Forall!165 lambda!8778))))

(declare-fun bs!28515 () Bool)

(assert (= bs!28515 d!75128))

(declare-fun m!325901 () Bool)

(assert (=> bs!28515 m!325901))

(assert (=> d!74848 d!75128))

(declare-fun d!75130 () Bool)

(assert (=> d!75130 (= (inv!15 (value!24723 separatorToken!170)) (= (charsToBigInt!0 (text!5615 (value!24723 separatorToken!170)) 0) (value!24718 (value!24723 separatorToken!170))))))

(declare-fun bs!28516 () Bool)

(assert (= bs!28516 d!75130))

(declare-fun m!325903 () Bool)

(assert (=> bs!28516 m!325903))

(assert (=> b!261602 d!75130))

(declare-fun b!262136 () Bool)

(declare-fun e!162770 () List!3766)

(assert (=> b!262136 (= e!162770 (++!965 (list!1514 (left!3087 (c!49414 (seqFromList!800 lt!106497)))) (list!1514 (right!3417 (c!49414 (seqFromList!800 lt!106497))))))))

(declare-fun b!262135 () Bool)

(assert (=> b!262135 (= e!162770 (list!1519 (xs!3853 (c!49414 (seqFromList!800 lt!106497)))))))

(declare-fun b!262133 () Bool)

(declare-fun e!162769 () List!3766)

(assert (=> b!262133 (= e!162769 Nil!3756)))

(declare-fun b!262134 () Bool)

(assert (=> b!262134 (= e!162769 e!162770)))

(declare-fun c!49584 () Bool)

(assert (=> b!262134 (= c!49584 (is-Leaf!1952 (c!49414 (seqFromList!800 lt!106497))))))

(declare-fun d!75132 () Bool)

(declare-fun c!49583 () Bool)

(assert (=> d!75132 (= c!49583 (is-Empty!1254 (c!49414 (seqFromList!800 lt!106497))))))

(assert (=> d!75132 (= (list!1514 (c!49414 (seqFromList!800 lt!106497))) e!162769)))

(assert (= (and d!75132 c!49583) b!262133))

(assert (= (and d!75132 (not c!49583)) b!262134))

(assert (= (and b!262134 c!49584) b!262135))

(assert (= (and b!262134 (not c!49584)) b!262136))

(declare-fun m!325905 () Bool)

(assert (=> b!262136 m!325905))

(declare-fun m!325907 () Bool)

(assert (=> b!262136 m!325907))

(assert (=> b!262136 m!325905))

(assert (=> b!262136 m!325907))

(declare-fun m!325909 () Bool)

(assert (=> b!262136 m!325909))

(declare-fun m!325911 () Bool)

(assert (=> b!262135 m!325911))

(assert (=> d!74860 d!75132))

(declare-fun d!75134 () Bool)

(declare-fun lt!106927 () Int)

(assert (=> d!75134 (>= lt!106927 0)))

(declare-fun e!162771 () Int)

(assert (=> d!75134 (= lt!106927 e!162771)))

(declare-fun c!49585 () Bool)

(assert (=> d!75134 (= c!49585 (is-Nil!3756 (originalCharacters!759 separatorToken!170)))))

(assert (=> d!75134 (= (size!2988 (originalCharacters!759 separatorToken!170)) lt!106927)))

(declare-fun b!262137 () Bool)

(assert (=> b!262137 (= e!162771 0)))

(declare-fun b!262138 () Bool)

(assert (=> b!262138 (= e!162771 (+ 1 (size!2988 (t!37000 (originalCharacters!759 separatorToken!170)))))))

(assert (= (and d!75134 c!49585) b!262137))

(assert (= (and d!75134 (not c!49585)) b!262138))

(declare-fun m!325913 () Bool)

(assert (=> b!262138 m!325913))

(assert (=> b!261397 d!75134))

(declare-fun d!75136 () Bool)

(assert (=> d!75136 (= (++!965 (++!965 lt!106502 lt!106503) lt!106498) (++!965 lt!106502 (++!965 lt!106503 lt!106498)))))

(assert (=> d!75136 true))

(declare-fun _$52!725 () Unit!4655)

(assert (=> d!75136 (= (choose!2409 lt!106502 lt!106503 lt!106498) _$52!725)))

(declare-fun bs!28517 () Bool)

(assert (= bs!28517 d!75136))

(assert (=> bs!28517 m!324497))

(assert (=> bs!28517 m!324497))

(assert (=> bs!28517 m!324499))

(assert (=> bs!28517 m!324507))

(assert (=> bs!28517 m!324507))

(assert (=> bs!28517 m!324927))

(assert (=> d!74918 d!75136))

(assert (=> d!74918 d!74882))

(assert (=> d!74918 d!74892))

(assert (=> d!74918 d!74914))

(declare-fun b!262139 () Bool)

(declare-fun e!162772 () List!3766)

(assert (=> b!262139 (= e!162772 (++!965 lt!106503 lt!106498))))

(declare-fun lt!106928 () List!3766)

(declare-fun e!162773 () Bool)

(declare-fun b!262142 () Bool)

(assert (=> b!262142 (= e!162773 (or (not (= (++!965 lt!106503 lt!106498) Nil!3756)) (= lt!106928 lt!106502)))))

(declare-fun d!75138 () Bool)

(assert (=> d!75138 e!162773))

(declare-fun res!120550 () Bool)

(assert (=> d!75138 (=> (not res!120550) (not e!162773))))

(assert (=> d!75138 (= res!120550 (= (content!530 lt!106928) (set.union (content!530 lt!106502) (content!530 (++!965 lt!106503 lt!106498)))))))

(assert (=> d!75138 (= lt!106928 e!162772)))

(declare-fun c!49586 () Bool)

(assert (=> d!75138 (= c!49586 (is-Nil!3756 lt!106502))))

(assert (=> d!75138 (= (++!965 lt!106502 (++!965 lt!106503 lt!106498)) lt!106928)))

(declare-fun b!262140 () Bool)

(assert (=> b!262140 (= e!162772 (Cons!3756 (h!9153 lt!106502) (++!965 (t!37000 lt!106502) (++!965 lt!106503 lt!106498))))))

(declare-fun b!262141 () Bool)

(declare-fun res!120549 () Bool)

(assert (=> b!262141 (=> (not res!120549) (not e!162773))))

(assert (=> b!262141 (= res!120549 (= (size!2988 lt!106928) (+ (size!2988 lt!106502) (size!2988 (++!965 lt!106503 lt!106498)))))))

(assert (= (and d!75138 c!49586) b!262139))

(assert (= (and d!75138 (not c!49586)) b!262140))

(assert (= (and d!75138 res!120550) b!262141))

(assert (= (and b!262141 res!120549) b!262142))

(declare-fun m!325915 () Bool)

(assert (=> d!75138 m!325915))

(assert (=> d!75138 m!324701))

(assert (=> d!75138 m!324507))

(declare-fun m!325917 () Bool)

(assert (=> d!75138 m!325917))

(assert (=> b!262140 m!324507))

(declare-fun m!325919 () Bool)

(assert (=> b!262140 m!325919))

(declare-fun m!325921 () Bool)

(assert (=> b!262141 m!325921))

(assert (=> b!262141 m!324709))

(assert (=> b!262141 m!324507))

(declare-fun m!325923 () Bool)

(assert (=> b!262141 m!325923))

(assert (=> d!74918 d!75138))

(declare-fun e!162774 () List!3766)

(declare-fun b!262143 () Bool)

(assert (=> b!262143 (= e!162774 (ite c!49499 lt!106717 call!14030))))

(declare-fun b!262146 () Bool)

(declare-fun lt!106929 () List!3766)

(declare-fun e!162775 () Bool)

(assert (=> b!262146 (= e!162775 (or (not (= (ite c!49499 lt!106717 call!14030) Nil!3756)) (= lt!106929 call!14029)))))

(declare-fun d!75140 () Bool)

(assert (=> d!75140 e!162775))

(declare-fun res!120552 () Bool)

(assert (=> d!75140 (=> (not res!120552) (not e!162775))))

(assert (=> d!75140 (= res!120552 (= (content!530 lt!106929) (set.union (content!530 call!14029) (content!530 (ite c!49499 lt!106717 call!14030)))))))

(assert (=> d!75140 (= lt!106929 e!162774)))

(declare-fun c!49587 () Bool)

(assert (=> d!75140 (= c!49587 (is-Nil!3756 call!14029))))

(assert (=> d!75140 (= (++!965 call!14029 (ite c!49499 lt!106717 call!14030)) lt!106929)))

(declare-fun b!262144 () Bool)

(assert (=> b!262144 (= e!162774 (Cons!3756 (h!9153 call!14029) (++!965 (t!37000 call!14029) (ite c!49499 lt!106717 call!14030))))))

(declare-fun b!262145 () Bool)

(declare-fun res!120551 () Bool)

(assert (=> b!262145 (=> (not res!120551) (not e!162775))))

(assert (=> b!262145 (= res!120551 (= (size!2988 lt!106929) (+ (size!2988 call!14029) (size!2988 (ite c!49499 lt!106717 call!14030)))))))

(assert (= (and d!75140 c!49587) b!262143))

(assert (= (and d!75140 (not c!49587)) b!262144))

(assert (= (and d!75140 res!120552) b!262145))

(assert (= (and b!262145 res!120551) b!262146))

(declare-fun m!325925 () Bool)

(assert (=> d!75140 m!325925))

(declare-fun m!325927 () Bool)

(assert (=> d!75140 m!325927))

(declare-fun m!325929 () Bool)

(assert (=> d!75140 m!325929))

(declare-fun m!325931 () Bool)

(assert (=> b!262144 m!325931))

(declare-fun m!325933 () Bool)

(assert (=> b!262145 m!325933))

(declare-fun m!325935 () Bool)

(assert (=> b!262145 m!325935))

(declare-fun m!325937 () Bool)

(assert (=> b!262145 m!325937))

(assert (=> bm!14026 d!75140))

(declare-fun d!75142 () Bool)

(declare-fun e!162778 () Bool)

(assert (=> d!75142 e!162778))

(declare-fun res!120555 () Bool)

(assert (=> d!75142 (=> (not res!120555) (not e!162778))))

(declare-fun lt!106932 () BalanceConc!2518)

(assert (=> d!75142 (= res!120555 (= (list!1515 lt!106932) tokens!465))))

(declare-fun fromList!163 (List!3767) Conc!1255)

(assert (=> d!75142 (= lt!106932 (BalanceConc!2519 (fromList!163 tokens!465)))))

(assert (=> d!75142 (= (fromListB!295 tokens!465) lt!106932)))

(declare-fun b!262149 () Bool)

(assert (=> b!262149 (= e!162778 (isBalanced!336 (fromList!163 tokens!465)))))

(assert (= (and d!75142 res!120555) b!262149))

(declare-fun m!325939 () Bool)

(assert (=> d!75142 m!325939))

(declare-fun m!325941 () Bool)

(assert (=> d!75142 m!325941))

(assert (=> b!262149 m!325941))

(assert (=> b!262149 m!325941))

(declare-fun m!325943 () Bool)

(assert (=> b!262149 m!325943))

(assert (=> d!74932 d!75142))

(declare-fun d!75144 () Bool)

(declare-fun res!120556 () Bool)

(declare-fun e!162779 () Bool)

(assert (=> d!75144 (=> res!120556 e!162779)))

(assert (=> d!75144 (= res!120556 (not (is-Cons!3758 (t!37002 rules!1920))))))

(assert (=> d!75144 (= (sepAndNonSepRulesDisjointChars!305 rules!1920 (t!37002 rules!1920)) e!162779)))

(declare-fun b!262150 () Bool)

(declare-fun e!162780 () Bool)

(assert (=> b!262150 (= e!162779 e!162780)))

(declare-fun res!120557 () Bool)

(assert (=> b!262150 (=> (not res!120557) (not e!162780))))

(assert (=> b!262150 (= res!120557 (ruleDisjointCharsFromAllFromOtherType!105 (h!9155 (t!37002 rules!1920)) rules!1920))))

(declare-fun b!262151 () Bool)

(assert (=> b!262151 (= e!162780 (sepAndNonSepRulesDisjointChars!305 rules!1920 (t!37002 (t!37002 rules!1920))))))

(assert (= (and d!75144 (not res!120556)) b!262150))

(assert (= (and b!262150 res!120557) b!262151))

(declare-fun m!325945 () Bool)

(assert (=> b!262150 m!325945))

(declare-fun m!325947 () Bool)

(assert (=> b!262151 m!325947))

(assert (=> b!261728 d!75144))

(declare-fun b!262154 () Bool)

(declare-fun res!120561 () Bool)

(declare-fun e!162781 () Bool)

(assert (=> b!262154 (=> (not res!120561) (not e!162781))))

(assert (=> b!262154 (= res!120561 (>= (height!143 (++!969 (c!49414 (charsOf!361 (apply!731 lt!106499 0))) (c!49414 lt!106685))) (max!0 (height!143 (c!49414 (charsOf!361 (apply!731 lt!106499 0)))) (height!143 (c!49414 lt!106685)))))))

(declare-fun lt!106933 () BalanceConc!2516)

(declare-fun b!262155 () Bool)

(assert (=> b!262155 (= e!162781 (= (list!1512 lt!106933) (++!965 (list!1512 (charsOf!361 (apply!731 lt!106499 0))) (list!1512 lt!106685))))))

(declare-fun b!262153 () Bool)

(declare-fun res!120559 () Bool)

(assert (=> b!262153 (=> (not res!120559) (not e!162781))))

(assert (=> b!262153 (= res!120559 (<= (height!143 (++!969 (c!49414 (charsOf!361 (apply!731 lt!106499 0))) (c!49414 lt!106685))) (+ (max!0 (height!143 (c!49414 (charsOf!361 (apply!731 lt!106499 0)))) (height!143 (c!49414 lt!106685))) 1)))))

(declare-fun d!75146 () Bool)

(assert (=> d!75146 e!162781))

(declare-fun res!120558 () Bool)

(assert (=> d!75146 (=> (not res!120558) (not e!162781))))

(assert (=> d!75146 (= res!120558 (appendAssocInst!56 (c!49414 (charsOf!361 (apply!731 lt!106499 0))) (c!49414 lt!106685)))))

(assert (=> d!75146 (= lt!106933 (BalanceConc!2517 (++!969 (c!49414 (charsOf!361 (apply!731 lt!106499 0))) (c!49414 lt!106685))))))

(assert (=> d!75146 (= (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685) lt!106933)))

(declare-fun b!262152 () Bool)

(declare-fun res!120560 () Bool)

(assert (=> b!262152 (=> (not res!120560) (not e!162781))))

(assert (=> b!262152 (= res!120560 (isBalanced!335 (++!969 (c!49414 (charsOf!361 (apply!731 lt!106499 0))) (c!49414 lt!106685))))))

(assert (= (and d!75146 res!120558) b!262152))

(assert (= (and b!262152 res!120560) b!262153))

(assert (= (and b!262153 res!120559) b!262154))

(assert (= (and b!262154 res!120561) b!262155))

(declare-fun m!325949 () Bool)

(assert (=> b!262153 m!325949))

(declare-fun m!325951 () Bool)

(assert (=> b!262153 m!325951))

(assert (=> b!262153 m!325949))

(assert (=> b!262153 m!325561))

(declare-fun m!325953 () Bool)

(assert (=> b!262153 m!325953))

(assert (=> b!262153 m!325953))

(assert (=> b!262153 m!325561))

(declare-fun m!325955 () Bool)

(assert (=> b!262153 m!325955))

(declare-fun m!325957 () Bool)

(assert (=> d!75146 m!325957))

(assert (=> d!75146 m!325949))

(assert (=> b!262154 m!325949))

(assert (=> b!262154 m!325951))

(assert (=> b!262154 m!325949))

(assert (=> b!262154 m!325561))

(assert (=> b!262154 m!325953))

(assert (=> b!262154 m!325953))

(assert (=> b!262154 m!325561))

(assert (=> b!262154 m!325955))

(declare-fun m!325959 () Bool)

(assert (=> b!262155 m!325959))

(assert (=> b!262155 m!325049))

(declare-fun m!325961 () Bool)

(assert (=> b!262155 m!325961))

(assert (=> b!262155 m!325097))

(assert (=> b!262155 m!325961))

(assert (=> b!262155 m!325097))

(declare-fun m!325963 () Bool)

(assert (=> b!262155 m!325963))

(assert (=> b!262152 m!325949))

(assert (=> b!262152 m!325949))

(declare-fun m!325965 () Bool)

(assert (=> b!262152 m!325965))

(assert (=> b!261661 d!75146))

(assert (=> b!261661 d!75092))

(assert (=> b!261661 d!75018))

(declare-fun d!75148 () Bool)

(assert (=> d!75148 (dynLambda!1892 lambda!8762 (apply!731 lt!106499 0))))

(declare-fun lt!106934 () Unit!4655)

(assert (=> d!75148 (= lt!106934 (choose!2412 (list!1515 lt!106499) lambda!8762 (apply!731 lt!106499 0)))))

(declare-fun e!162782 () Bool)

(assert (=> d!75148 e!162782))

(declare-fun res!120562 () Bool)

(assert (=> d!75148 (=> (not res!120562) (not e!162782))))

(assert (=> d!75148 (= res!120562 (forall!922 (list!1515 lt!106499) lambda!8762))))

(assert (=> d!75148 (= (forallContained!273 (list!1515 lt!106499) lambda!8762 (apply!731 lt!106499 0)) lt!106934)))

(declare-fun b!262156 () Bool)

(assert (=> b!262156 (= e!162782 (contains!699 (list!1515 lt!106499) (apply!731 lt!106499 0)))))

(assert (= (and d!75148 res!120562) b!262156))

(declare-fun b_lambda!8069 () Bool)

(assert (=> (not b_lambda!8069) (not d!75148)))

(assert (=> d!75148 m!325053))

(declare-fun m!325967 () Bool)

(assert (=> d!75148 m!325967))

(assert (=> d!75148 m!325005))

(assert (=> d!75148 m!325053))

(declare-fun m!325969 () Bool)

(assert (=> d!75148 m!325969))

(assert (=> d!75148 m!325005))

(declare-fun m!325971 () Bool)

(assert (=> d!75148 m!325971))

(assert (=> b!262156 m!325005))

(assert (=> b!262156 m!325053))

(declare-fun m!325973 () Bool)

(assert (=> b!262156 m!325973))

(assert (=> b!261661 d!75148))

(declare-fun bs!28518 () Bool)

(declare-fun d!75150 () Bool)

(assert (= bs!28518 (and d!75150 d!74894)))

(declare-fun lambda!8779 () Int)

(assert (=> bs!28518 (= lambda!8779 lambda!8747)))

(declare-fun bs!28519 () Bool)

(assert (= bs!28519 (and d!75150 b!261581)))

(assert (=> bs!28519 (not (= lambda!8779 lambda!8748))))

(declare-fun bs!28520 () Bool)

(assert (= bs!28520 (and d!75150 d!74924)))

(assert (=> bs!28520 (not (= lambda!8779 lambda!8759))))

(declare-fun bs!28521 () Bool)

(assert (= bs!28521 (and d!75150 d!75040)))

(assert (=> bs!28521 (= lambda!8779 lambda!8771)))

(declare-fun bs!28522 () Bool)

(assert (= bs!28522 (and d!75150 b!261306)))

(assert (=> bs!28522 (= lambda!8779 lambda!8733)))

(declare-fun bs!28523 () Bool)

(assert (= bs!28523 (and d!75150 b!261661)))

(assert (=> bs!28523 (not (= lambda!8779 lambda!8762))))

(declare-fun bs!28524 () Bool)

(assert (= bs!28524 (and d!75150 d!74936)))

(assert (=> bs!28524 (= lambda!8779 lambda!8760)))

(declare-fun bs!28525 () Bool)

(assert (= bs!28525 (and d!75150 b!261685)))

(assert (=> bs!28525 (not (= lambda!8779 lambda!8764))))

(declare-fun bs!28526 () Bool)

(assert (= bs!28526 (and d!75150 b!261477)))

(assert (=> bs!28526 (not (= lambda!8779 lambda!8739))))

(declare-fun bs!28527 () Bool)

(assert (= bs!28527 (and d!75150 b!262000)))

(assert (=> bs!28527 (not (= lambda!8779 lambda!8772))))

(declare-fun bs!28528 () Bool)

(declare-fun b!262161 () Bool)

(assert (= bs!28528 (and b!262161 d!74894)))

(declare-fun lambda!8780 () Int)

(assert (=> bs!28528 (not (= lambda!8780 lambda!8747))))

(declare-fun bs!28529 () Bool)

(assert (= bs!28529 (and b!262161 b!261581)))

(assert (=> bs!28529 (= lambda!8780 lambda!8748)))

(declare-fun bs!28530 () Bool)

(assert (= bs!28530 (and b!262161 d!74924)))

(assert (=> bs!28530 (= lambda!8780 lambda!8759)))

(declare-fun bs!28531 () Bool)

(assert (= bs!28531 (and b!262161 d!75040)))

(assert (=> bs!28531 (not (= lambda!8780 lambda!8771))))

(declare-fun bs!28532 () Bool)

(assert (= bs!28532 (and b!262161 b!261306)))

(assert (=> bs!28532 (not (= lambda!8780 lambda!8733))))

(declare-fun bs!28533 () Bool)

(assert (= bs!28533 (and b!262161 d!75150)))

(assert (=> bs!28533 (not (= lambda!8780 lambda!8779))))

(declare-fun bs!28534 () Bool)

(assert (= bs!28534 (and b!262161 b!261661)))

(assert (=> bs!28534 (= lambda!8780 lambda!8762)))

(declare-fun bs!28535 () Bool)

(assert (= bs!28535 (and b!262161 d!74936)))

(assert (=> bs!28535 (not (= lambda!8780 lambda!8760))))

(declare-fun bs!28536 () Bool)

(assert (= bs!28536 (and b!262161 b!261685)))

(assert (=> bs!28536 (= lambda!8780 lambda!8764)))

(declare-fun bs!28537 () Bool)

(assert (= bs!28537 (and b!262161 b!261477)))

(assert (=> bs!28537 (= lambda!8780 lambda!8739)))

(declare-fun bs!28538 () Bool)

(assert (= bs!28538 (and b!262161 b!262000)))

(assert (=> bs!28538 (= lambda!8780 lambda!8772)))

(declare-fun b!262170 () Bool)

(declare-fun e!162792 () Bool)

(assert (=> b!262170 (= e!162792 true)))

(declare-fun b!262169 () Bool)

(declare-fun e!162791 () Bool)

(assert (=> b!262169 (= e!162791 e!162792)))

(declare-fun b!262168 () Bool)

(declare-fun e!162790 () Bool)

(assert (=> b!262168 (= e!162790 e!162791)))

(assert (=> b!262161 e!162790))

(assert (= b!262169 b!262170))

(assert (= b!262168 b!262169))

(assert (= (and b!262161 (is-Cons!3758 rules!1920)) b!262168))

(assert (=> b!262170 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8780))))

(assert (=> b!262170 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8780))))

(assert (=> b!262161 true))

(declare-fun b!262157 () Bool)

(declare-fun e!162785 () BalanceConc!2516)

(assert (=> b!262157 (= e!162785 (BalanceConc!2517 Empty!1254))))

(declare-fun b!262158 () Bool)

(declare-fun e!162788 () Bool)

(assert (=> b!262158 (= e!162788 (<= (+ 0 1) (size!2989 lt!106499)))))

(declare-fun b!262159 () Bool)

(declare-fun e!162784 () BalanceConc!2516)

(declare-fun call!14053 () BalanceConc!2516)

(assert (=> b!262159 (= e!162784 call!14053)))

(declare-fun b!262160 () Bool)

(declare-fun c!49592 () Bool)

(declare-fun e!162783 () Bool)

(assert (=> b!262160 (= c!49592 e!162783)))

(declare-fun res!120563 () Bool)

(assert (=> b!262160 (=> (not res!120563) (not e!162783))))

(declare-fun lt!106948 () Option!781)

(assert (=> b!262160 (= res!120563 (is-Some!780 lt!106948))))

(declare-fun e!162787 () BalanceConc!2516)

(declare-fun e!162789 () BalanceConc!2516)

(assert (=> b!262160 (= e!162787 e!162789)))

(declare-fun bm!14045 () Bool)

(declare-fun call!14051 () Token!1176)

(declare-fun call!14052 () Token!1176)

(assert (=> bm!14045 (= call!14051 call!14052)))

(declare-fun bm!14046 () Bool)

(declare-fun call!14054 () BalanceConc!2516)

(assert (=> bm!14046 (= call!14054 call!14053)))

(declare-fun b!262162 () Bool)

(assert (=> b!262162 (= e!162789 (BalanceConc!2517 Empty!1254))))

(assert (=> b!262162 (= (print!327 thiss!17480 (singletonSeq!262 call!14051)) (printTailRec!290 thiss!17480 (singletonSeq!262 call!14051) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!106935 () Unit!4655)

(declare-fun Unit!4682 () Unit!4655)

(assert (=> b!262162 (= lt!106935 Unit!4682)))

(declare-fun lt!106942 () Unit!4655)

(declare-fun lt!106936 () BalanceConc!2516)

(assert (=> b!262162 (= lt!106942 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14054) (list!1512 lt!106936)))))

(assert (=> b!262162 false))

(declare-fun lt!106944 () Unit!4655)

(declare-fun Unit!4683 () Unit!4655)

(assert (=> b!262162 (= lt!106944 Unit!4683)))

(declare-fun b!262163 () Bool)

(assert (=> b!262163 (= e!162783 (not (= (_1!2318 (v!14619 lt!106948)) call!14052)))))

(declare-fun b!262164 () Bool)

(declare-fun call!14050 () BalanceConc!2516)

(assert (=> b!262164 (= e!162789 (++!967 call!14050 lt!106936))))

(declare-fun b!262165 () Bool)

(declare-fun e!162786 () Bool)

(assert (=> b!262165 (= e!162786 (= (_1!2318 (v!14619 lt!106948)) (apply!731 lt!106499 (+ 0 1))))))

(declare-fun b!262166 () Bool)

(assert (=> b!262166 (= e!162787 call!14050)))

(declare-fun bm!14047 () Bool)

(declare-fun c!49589 () Bool)

(declare-fun c!49590 () Bool)

(assert (=> bm!14047 (= c!49589 c!49590)))

(assert (=> bm!14047 (= call!14050 (++!967 e!162784 (ite c!49590 lt!106936 call!14054)))))

(declare-fun b!262167 () Bool)

(assert (=> b!262167 (= e!162784 (charsOf!361 call!14051))))

(declare-fun bm!14048 () Bool)

(assert (=> bm!14048 (= call!14052 (apply!731 lt!106499 (+ 0 1)))))

(declare-fun bm!14049 () Bool)

(assert (=> bm!14049 (= call!14053 (charsOf!361 (ite c!49590 call!14052 (ite c!49592 separatorToken!170 call!14051))))))

(declare-fun lt!106938 () BalanceConc!2516)

(assert (=> d!75150 (= (list!1512 lt!106938) (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 lt!106499 (+ 0 1)) separatorToken!170))))

(assert (=> d!75150 (= lt!106938 e!162785)))

(declare-fun c!49591 () Bool)

(assert (=> d!75150 (= c!49591 (>= (+ 0 1) (size!2989 lt!106499)))))

(declare-fun lt!106937 () Unit!4655)

(assert (=> d!75150 (= lt!106937 (lemmaContentSubsetPreservesForall!95 (list!1515 lt!106499) (dropList!151 lt!106499 (+ 0 1)) lambda!8779))))

(assert (=> d!75150 e!162788))

(declare-fun res!120565 () Bool)

(assert (=> d!75150 (=> (not res!120565) (not e!162788))))

(assert (=> d!75150 (= res!120565 (>= (+ 0 1) 0))))

(assert (=> d!75150 (= (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 (+ 0 1)) lt!106938)))

(assert (=> b!262161 (= e!162785 e!162787)))

(declare-fun lt!106939 () List!3767)

(assert (=> b!262161 (= lt!106939 (list!1515 lt!106499))))

(declare-fun lt!106945 () Unit!4655)

(assert (=> b!262161 (= lt!106945 (lemmaDropApply!191 lt!106939 (+ 0 1)))))

(assert (=> b!262161 (= (head!875 (drop!204 lt!106939 (+ 0 1))) (apply!732 lt!106939 (+ 0 1)))))

(declare-fun lt!106940 () Unit!4655)

(assert (=> b!262161 (= lt!106940 lt!106945)))

(declare-fun lt!106947 () List!3767)

(assert (=> b!262161 (= lt!106947 (list!1515 lt!106499))))

(declare-fun lt!106943 () Unit!4655)

(assert (=> b!262161 (= lt!106943 (lemmaDropTail!183 lt!106947 (+ 0 1)))))

(assert (=> b!262161 (= (tail!465 (drop!204 lt!106947 (+ 0 1))) (drop!204 lt!106947 (+ 0 1 1)))))

(declare-fun lt!106941 () Unit!4655)

(assert (=> b!262161 (= lt!106941 lt!106943)))

(declare-fun lt!106946 () Unit!4655)

(assert (=> b!262161 (= lt!106946 (forallContained!273 (list!1515 lt!106499) lambda!8780 (apply!731 lt!106499 (+ 0 1))))))

(assert (=> b!262161 (= lt!106936 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 lt!106499 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!262161 (= lt!106948 (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 lt!106499 (+ 0 1))) lt!106936)))))

(declare-fun res!120564 () Bool)

(assert (=> b!262161 (= res!120564 (is-Some!780 lt!106948))))

(assert (=> b!262161 (=> (not res!120564) (not e!162786))))

(assert (=> b!262161 (= c!49590 e!162786)))

(assert (= (and d!75150 res!120565) b!262158))

(assert (= (and d!75150 c!49591) b!262157))

(assert (= (and d!75150 (not c!49591)) b!262161))

(assert (= (and b!262161 res!120564) b!262165))

(assert (= (and b!262161 c!49590) b!262166))

(assert (= (and b!262161 (not c!49590)) b!262160))

(assert (= (and b!262160 res!120563) b!262163))

(assert (= (and b!262160 c!49592) b!262164))

(assert (= (and b!262160 (not c!49592)) b!262162))

(assert (= (or b!262164 b!262162) bm!14045))

(assert (= (or b!262164 b!262162) bm!14046))

(assert (= (or b!262166 bm!14045 b!262163) bm!14048))

(assert (= (or b!262166 bm!14046) bm!14049))

(assert (= (or b!262166 b!262164) bm!14047))

(assert (= (and bm!14047 c!49589) b!262159))

(assert (= (and bm!14047 (not c!49589)) b!262167))

(declare-fun m!325975 () Bool)

(assert (=> bm!14047 m!325975))

(declare-fun m!325977 () Bool)

(assert (=> b!262164 m!325977))

(declare-fun m!325979 () Bool)

(assert (=> d!75150 m!325979))

(declare-fun m!325981 () Bool)

(assert (=> d!75150 m!325981))

(declare-fun m!325983 () Bool)

(assert (=> d!75150 m!325983))

(assert (=> d!75150 m!325005))

(assert (=> d!75150 m!325981))

(declare-fun m!325985 () Bool)

(assert (=> d!75150 m!325985))

(assert (=> d!75150 m!325981))

(assert (=> d!75150 m!325037))

(assert (=> d!75150 m!325005))

(assert (=> b!262158 m!325037))

(declare-fun m!325987 () Bool)

(assert (=> bm!14049 m!325987))

(declare-fun m!325989 () Bool)

(assert (=> b!262161 m!325989))

(declare-fun m!325991 () Bool)

(assert (=> b!262161 m!325991))

(declare-fun m!325993 () Bool)

(assert (=> b!262161 m!325993))

(declare-fun m!325995 () Bool)

(assert (=> b!262161 m!325995))

(declare-fun m!325997 () Bool)

(assert (=> b!262161 m!325997))

(declare-fun m!325999 () Bool)

(assert (=> b!262161 m!325999))

(declare-fun m!326001 () Bool)

(assert (=> b!262161 m!326001))

(declare-fun m!326003 () Bool)

(assert (=> b!262161 m!326003))

(assert (=> b!262161 m!325993))

(declare-fun m!326005 () Bool)

(assert (=> b!262161 m!326005))

(assert (=> b!262161 m!325005))

(assert (=> b!262161 m!326001))

(declare-fun m!326007 () Bool)

(assert (=> b!262161 m!326007))

(assert (=> b!262161 m!326001))

(assert (=> b!262161 m!325997))

(assert (=> b!262161 m!325005))

(assert (=> b!262161 m!325999))

(declare-fun m!326009 () Bool)

(assert (=> b!262161 m!326009))

(assert (=> b!262161 m!326003))

(declare-fun m!326011 () Bool)

(assert (=> b!262161 m!326011))

(declare-fun m!326013 () Bool)

(assert (=> b!262161 m!326013))

(declare-fun m!326015 () Bool)

(assert (=> b!262161 m!326015))

(assert (=> b!262165 m!326001))

(assert (=> bm!14048 m!326001))

(declare-fun m!326017 () Bool)

(assert (=> b!262162 m!326017))

(declare-fun m!326019 () Bool)

(assert (=> b!262162 m!326019))

(declare-fun m!326021 () Bool)

(assert (=> b!262162 m!326021))

(assert (=> b!262162 m!326017))

(declare-fun m!326023 () Bool)

(assert (=> b!262162 m!326023))

(declare-fun m!326025 () Bool)

(assert (=> b!262162 m!326025))

(assert (=> b!262162 m!326023))

(declare-fun m!326027 () Bool)

(assert (=> b!262162 m!326027))

(assert (=> b!262162 m!326023))

(assert (=> b!262162 m!326019))

(declare-fun m!326029 () Bool)

(assert (=> b!262167 m!326029))

(assert (=> b!261661 d!75150))

(declare-fun d!75152 () Bool)

(assert (=> d!75152 (= (head!875 (drop!204 lt!106688 0)) (apply!732 lt!106688 0))))

(declare-fun lt!106949 () Unit!4655)

(assert (=> d!75152 (= lt!106949 (choose!2411 lt!106688 0))))

(declare-fun e!162793 () Bool)

(assert (=> d!75152 e!162793))

(declare-fun res!120566 () Bool)

(assert (=> d!75152 (=> (not res!120566) (not e!162793))))

(assert (=> d!75152 (= res!120566 (>= 0 0))))

(assert (=> d!75152 (= (lemmaDropApply!191 lt!106688 0) lt!106949)))

(declare-fun b!262171 () Bool)

(assert (=> b!262171 (= e!162793 (< 0 (size!2992 lt!106688)))))

(assert (= (and d!75152 res!120566) b!262171))

(assert (=> d!75152 m!325055))

(assert (=> d!75152 m!325055))

(assert (=> d!75152 m!325081))

(assert (=> d!75152 m!325087))

(declare-fun m!326031 () Bool)

(assert (=> d!75152 m!326031))

(declare-fun m!326033 () Bool)

(assert (=> b!262171 m!326033))

(assert (=> b!261661 d!75152))

(declare-fun d!75154 () Bool)

(declare-fun lt!106950 () BalanceConc!2516)

(assert (=> d!75154 (= (list!1512 lt!106950) (originalCharacters!759 (apply!731 lt!106499 0)))))

(assert (=> d!75154 (= lt!106950 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0)))) (value!24723 (apply!731 lt!106499 0))))))

(assert (=> d!75154 (= (charsOf!361 (apply!731 lt!106499 0)) lt!106950)))

(declare-fun b_lambda!8071 () Bool)

(assert (=> (not b_lambda!8071) (not d!75154)))

(declare-fun t!37104 () Bool)

(declare-fun tb!14207 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37104) tb!14207))

(declare-fun b!262172 () Bool)

(declare-fun e!162794 () Bool)

(declare-fun tp!100639 () Bool)

(assert (=> b!262172 (= e!162794 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0)))) (value!24723 (apply!731 lt!106499 0))))) tp!100639))))

(declare-fun result!17698 () Bool)

(assert (=> tb!14207 (= result!17698 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0)))) (value!24723 (apply!731 lt!106499 0)))) e!162794))))

(assert (= tb!14207 b!262172))

(declare-fun m!326035 () Bool)

(assert (=> b!262172 m!326035))

(declare-fun m!326037 () Bool)

(assert (=> tb!14207 m!326037))

(assert (=> d!75154 t!37104))

(declare-fun b_and!20393 () Bool)

(assert (= b_and!20391 (and (=> t!37104 result!17698) b_and!20393)))

(declare-fun t!37106 () Bool)

(declare-fun tb!14209 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37106) tb!14209))

(declare-fun result!17700 () Bool)

(assert (= result!17700 result!17698))

(assert (=> d!75154 t!37106))

(declare-fun b_and!20395 () Bool)

(assert (= b_and!20385 (and (=> t!37106 result!17700) b_and!20395)))

(declare-fun tb!14211 () Bool)

(declare-fun t!37108 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37108) tb!14211))

(declare-fun result!17702 () Bool)

(assert (= result!17702 result!17698))

(assert (=> d!75154 t!37108))

(declare-fun b_and!20397 () Bool)

(assert (= b_and!20389 (and (=> t!37108 result!17702) b_and!20397)))

(declare-fun tb!14213 () Bool)

(declare-fun t!37110 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37110) tb!14213))

(declare-fun result!17704 () Bool)

(assert (= result!17704 result!17698))

(assert (=> d!75154 t!37110))

(declare-fun b_and!20399 () Bool)

(assert (= b_and!20383 (and (=> t!37110 result!17704) b_and!20399)))

(declare-fun tb!14215 () Bool)

(declare-fun t!37112 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37112) tb!14215))

(declare-fun result!17706 () Bool)

(assert (= result!17706 result!17698))

(assert (=> d!75154 t!37112))

(declare-fun b_and!20401 () Bool)

(assert (= b_and!20387 (and (=> t!37112 result!17706) b_and!20401)))

(declare-fun m!326039 () Bool)

(assert (=> d!75154 m!326039))

(declare-fun m!326041 () Bool)

(assert (=> d!75154 m!326041))

(assert (=> b!261661 d!75154))

(declare-fun d!75156 () Bool)

(assert (=> d!75156 (= (head!875 (drop!204 lt!106688 0)) (h!9154 (drop!204 lt!106688 0)))))

(assert (=> b!261661 d!75156))

(declare-fun b!262173 () Bool)

(declare-fun e!162797 () Int)

(declare-fun e!162795 () Int)

(assert (=> b!262173 (= e!162797 e!162795)))

(declare-fun c!49595 () Bool)

(declare-fun call!14055 () Int)

(assert (=> b!262173 (= c!49595 (>= (+ 0 1) call!14055))))

(declare-fun b!262174 () Bool)

(declare-fun e!162796 () List!3767)

(assert (=> b!262174 (= e!162796 (drop!204 (t!37001 lt!106696) (- (+ 0 1) 1)))))

(declare-fun b!262175 () Bool)

(declare-fun e!162798 () List!3767)

(assert (=> b!262175 (= e!162798 e!162796)))

(declare-fun c!49593 () Bool)

(assert (=> b!262175 (= c!49593 (<= (+ 0 1) 0))))

(declare-fun b!262176 () Bool)

(assert (=> b!262176 (= e!162795 0)))

(declare-fun d!75158 () Bool)

(declare-fun e!162799 () Bool)

(assert (=> d!75158 e!162799))

(declare-fun res!120567 () Bool)

(assert (=> d!75158 (=> (not res!120567) (not e!162799))))

(declare-fun lt!106951 () List!3767)

(assert (=> d!75158 (= res!120567 (set.subset (content!532 lt!106951) (content!532 lt!106696)))))

(assert (=> d!75158 (= lt!106951 e!162798)))

(declare-fun c!49594 () Bool)

(assert (=> d!75158 (= c!49594 (is-Nil!3757 lt!106696))))

(assert (=> d!75158 (= (drop!204 lt!106696 (+ 0 1)) lt!106951)))

(declare-fun b!262177 () Bool)

(assert (=> b!262177 (= e!162797 call!14055)))

(declare-fun b!262178 () Bool)

(assert (=> b!262178 (= e!162798 Nil!3757)))

(declare-fun b!262179 () Bool)

(assert (=> b!262179 (= e!162795 (- call!14055 (+ 0 1)))))

(declare-fun b!262180 () Bool)

(assert (=> b!262180 (= e!162799 (= (size!2992 lt!106951) e!162797))))

(declare-fun c!49596 () Bool)

(assert (=> b!262180 (= c!49596 (<= (+ 0 1) 0))))

(declare-fun b!262181 () Bool)

(assert (=> b!262181 (= e!162796 lt!106696)))

(declare-fun bm!14050 () Bool)

(assert (=> bm!14050 (= call!14055 (size!2992 lt!106696))))

(assert (= (and d!75158 c!49594) b!262178))

(assert (= (and d!75158 (not c!49594)) b!262175))

(assert (= (and b!262175 c!49593) b!262181))

(assert (= (and b!262175 (not c!49593)) b!262174))

(assert (= (and d!75158 res!120567) b!262180))

(assert (= (and b!262180 c!49596) b!262177))

(assert (= (and b!262180 (not c!49596)) b!262173))

(assert (= (and b!262173 c!49595) b!262176))

(assert (= (and b!262173 (not c!49595)) b!262179))

(assert (= (or b!262177 b!262173 b!262179) bm!14050))

(declare-fun m!326043 () Bool)

(assert (=> b!262174 m!326043))

(declare-fun m!326045 () Bool)

(assert (=> d!75158 m!326045))

(declare-fun m!326047 () Bool)

(assert (=> d!75158 m!326047))

(declare-fun m!326049 () Bool)

(assert (=> b!262180 m!326049))

(declare-fun m!326051 () Bool)

(assert (=> bm!14050 m!326051))

(assert (=> b!261661 d!75158))

(declare-fun d!75160 () Bool)

(declare-fun lt!106952 () Token!1176)

(assert (=> d!75160 (contains!699 lt!106688 lt!106952)))

(declare-fun e!162801 () Token!1176)

(assert (=> d!75160 (= lt!106952 e!162801)))

(declare-fun c!49597 () Bool)

(assert (=> d!75160 (= c!49597 (= 0 0))))

(declare-fun e!162800 () Bool)

(assert (=> d!75160 e!162800))

(declare-fun res!120568 () Bool)

(assert (=> d!75160 (=> (not res!120568) (not e!162800))))

(assert (=> d!75160 (= res!120568 (<= 0 0))))

(assert (=> d!75160 (= (apply!732 lt!106688 0) lt!106952)))

(declare-fun b!262182 () Bool)

(assert (=> b!262182 (= e!162800 (< 0 (size!2992 lt!106688)))))

(declare-fun b!262183 () Bool)

(assert (=> b!262183 (= e!162801 (head!875 lt!106688))))

(declare-fun b!262184 () Bool)

(assert (=> b!262184 (= e!162801 (apply!732 (tail!465 lt!106688) (- 0 1)))))

(assert (= (and d!75160 res!120568) b!262182))

(assert (= (and d!75160 c!49597) b!262183))

(assert (= (and d!75160 (not c!49597)) b!262184))

(declare-fun m!326053 () Bool)

(assert (=> d!75160 m!326053))

(assert (=> b!262182 m!326033))

(declare-fun m!326055 () Bool)

(assert (=> b!262183 m!326055))

(declare-fun m!326057 () Bool)

(assert (=> b!262184 m!326057))

(assert (=> b!262184 m!326057))

(declare-fun m!326059 () Bool)

(assert (=> b!262184 m!326059))

(assert (=> b!261661 d!75160))

(declare-fun b!262185 () Bool)

(declare-fun e!162804 () Int)

(declare-fun e!162802 () Int)

(assert (=> b!262185 (= e!162804 e!162802)))

(declare-fun c!49600 () Bool)

(declare-fun call!14056 () Int)

(assert (=> b!262185 (= c!49600 (>= 0 call!14056))))

(declare-fun b!262186 () Bool)

(declare-fun e!162803 () List!3767)

(assert (=> b!262186 (= e!162803 (drop!204 (t!37001 lt!106696) (- 0 1)))))

(declare-fun b!262187 () Bool)

(declare-fun e!162805 () List!3767)

(assert (=> b!262187 (= e!162805 e!162803)))

(declare-fun c!49598 () Bool)

(assert (=> b!262187 (= c!49598 (<= 0 0))))

(declare-fun b!262188 () Bool)

(assert (=> b!262188 (= e!162802 0)))

(declare-fun d!75162 () Bool)

(declare-fun e!162806 () Bool)

(assert (=> d!75162 e!162806))

(declare-fun res!120569 () Bool)

(assert (=> d!75162 (=> (not res!120569) (not e!162806))))

(declare-fun lt!106953 () List!3767)

(assert (=> d!75162 (= res!120569 (set.subset (content!532 lt!106953) (content!532 lt!106696)))))

(assert (=> d!75162 (= lt!106953 e!162805)))

(declare-fun c!49599 () Bool)

(assert (=> d!75162 (= c!49599 (is-Nil!3757 lt!106696))))

(assert (=> d!75162 (= (drop!204 lt!106696 0) lt!106953)))

(declare-fun b!262189 () Bool)

(assert (=> b!262189 (= e!162804 call!14056)))

(declare-fun b!262190 () Bool)

(assert (=> b!262190 (= e!162805 Nil!3757)))

(declare-fun b!262191 () Bool)

(assert (=> b!262191 (= e!162802 (- call!14056 0))))

(declare-fun b!262192 () Bool)

(assert (=> b!262192 (= e!162806 (= (size!2992 lt!106953) e!162804))))

(declare-fun c!49601 () Bool)

(assert (=> b!262192 (= c!49601 (<= 0 0))))

(declare-fun b!262193 () Bool)

(assert (=> b!262193 (= e!162803 lt!106696)))

(declare-fun bm!14051 () Bool)

(assert (=> bm!14051 (= call!14056 (size!2992 lt!106696))))

(assert (= (and d!75162 c!49599) b!262190))

(assert (= (and d!75162 (not c!49599)) b!262187))

(assert (= (and b!262187 c!49598) b!262193))

(assert (= (and b!262187 (not c!49598)) b!262186))

(assert (= (and d!75162 res!120569) b!262192))

(assert (= (and b!262192 c!49601) b!262189))

(assert (= (and b!262192 (not c!49601)) b!262185))

(assert (= (and b!262185 c!49600) b!262188))

(assert (= (and b!262185 (not c!49600)) b!262191))

(assert (= (or b!262189 b!262185 b!262191) bm!14051))

(declare-fun m!326061 () Bool)

(assert (=> b!262186 m!326061))

(declare-fun m!326063 () Bool)

(assert (=> d!75162 m!326063))

(assert (=> d!75162 m!326047))

(declare-fun m!326065 () Bool)

(assert (=> b!262192 m!326065))

(assert (=> bm!14051 m!326051))

(assert (=> b!261661 d!75162))

(declare-fun b!262194 () Bool)

(declare-fun e!162809 () Bool)

(declare-fun lt!106959 () Option!781)

(assert (=> b!262194 (= e!162809 (= (list!1512 (_2!2318 (get!1237 lt!106959))) (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))))))

(declare-fun e!162807 () Bool)

(declare-fun b!262195 () Bool)

(assert (=> b!262195 (= e!162807 (= (list!1512 (_2!2318 (get!1237 lt!106959))) (_2!2317 (get!1238 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))))))

(declare-fun b!262196 () Bool)

(declare-fun e!162810 () Option!781)

(declare-fun call!14057 () Option!781)

(assert (=> b!262196 (= e!162810 call!14057)))

(declare-fun b!262197 () Bool)

(declare-fun e!162811 () Bool)

(declare-fun e!162812 () Bool)

(assert (=> b!262197 (= e!162811 e!162812)))

(declare-fun res!120574 () Bool)

(assert (=> b!262197 (=> res!120574 e!162812)))

(assert (=> b!262197 (= res!120574 (not (isDefined!631 lt!106959)))))

(declare-fun b!262199 () Bool)

(declare-fun lt!106954 () Option!781)

(declare-fun lt!106958 () Option!781)

(assert (=> b!262199 (= e!162810 (ite (and (is-None!780 lt!106954) (is-None!780 lt!106958)) None!780 (ite (is-None!780 lt!106958) lt!106954 (ite (is-None!780 lt!106954) lt!106958 (ite (>= (size!2986 (_1!2318 (v!14619 lt!106954))) (size!2986 (_1!2318 (v!14619 lt!106958)))) lt!106954 lt!106958)))))))

(assert (=> b!262199 (= lt!106954 call!14057)))

(assert (=> b!262199 (= lt!106958 (maxPrefixZipperSequence!285 thiss!17480 (t!37002 rules!1920) (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))

(declare-fun b!262200 () Bool)

(declare-fun e!162808 () Bool)

(assert (=> b!262200 (= e!162808 e!162807)))

(declare-fun res!120575 () Bool)

(assert (=> b!262200 (=> (not res!120575) (not e!162807))))

(assert (=> b!262200 (= res!120575 (= (_1!2318 (get!1237 lt!106959)) (_1!2317 (get!1238 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))))))

(declare-fun b!262201 () Bool)

(declare-fun res!120573 () Bool)

(assert (=> b!262201 (=> (not res!120573) (not e!162811))))

(assert (=> b!262201 (= res!120573 e!162808)))

(declare-fun res!120570 () Bool)

(assert (=> b!262201 (=> res!120570 e!162808)))

(assert (=> b!262201 (= res!120570 (not (isDefined!631 lt!106959)))))

(declare-fun bm!14052 () Bool)

(assert (=> bm!14052 (= call!14057 (maxPrefixOneRuleZipperSequence!105 thiss!17480 (h!9155 rules!1920) (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))

(declare-fun d!75164 () Bool)

(assert (=> d!75164 e!162811))

(declare-fun res!120571 () Bool)

(assert (=> d!75164 (=> (not res!120571) (not e!162811))))

(assert (=> d!75164 (= res!120571 (= (isDefined!631 lt!106959) (isDefined!632 (maxPrefixZipper!104 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685))))))))

(assert (=> d!75164 (= lt!106959 e!162810)))

(declare-fun c!49602 () Bool)

(assert (=> d!75164 (= c!49602 (and (is-Cons!3758 rules!1920) (is-Nil!3758 (t!37002 rules!1920))))))

(declare-fun lt!106960 () Unit!4655)

(declare-fun lt!106957 () Unit!4655)

(assert (=> d!75164 (= lt!106960 lt!106957)))

(declare-fun lt!106956 () List!3766)

(declare-fun lt!106955 () List!3766)

(assert (=> d!75164 (isPrefix!390 lt!106956 lt!106955)))

(assert (=> d!75164 (= lt!106957 (lemmaIsPrefixRefl!200 lt!106956 lt!106955))))

(assert (=> d!75164 (= lt!106955 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))

(assert (=> d!75164 (= lt!106956 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))

(assert (=> d!75164 (rulesValidInductive!195 thiss!17480 rules!1920)))

(assert (=> d!75164 (= (maxPrefixZipperSequence!285 thiss!17480 rules!1920 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)) lt!106959)))

(declare-fun b!262198 () Bool)

(assert (=> b!262198 (= e!162812 e!162809)))

(declare-fun res!120572 () Bool)

(assert (=> b!262198 (=> (not res!120572) (not e!162809))))

(assert (=> b!262198 (= res!120572 (= (_1!2318 (get!1237 lt!106959)) (_1!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 (++!967 (charsOf!361 (apply!731 lt!106499 0)) lt!106685)))))))))

(assert (= (and d!75164 c!49602) b!262196))

(assert (= (and d!75164 (not c!49602)) b!262199))

(assert (= (or b!262196 b!262199) bm!14052))

(assert (= (and d!75164 res!120571) b!262201))

(assert (= (and b!262201 (not res!120570)) b!262200))

(assert (= (and b!262200 res!120575) b!262195))

(assert (= (and b!262201 res!120573) b!262197))

(assert (= (and b!262197 (not res!120574)) b!262198))

(assert (= (and b!262198 res!120572) b!262194))

(declare-fun m!326067 () Bool)

(assert (=> b!262200 m!326067))

(assert (=> b!262200 m!325051))

(declare-fun m!326069 () Bool)

(assert (=> b!262200 m!326069))

(assert (=> b!262200 m!326069))

(declare-fun m!326071 () Bool)

(assert (=> b!262200 m!326071))

(assert (=> b!262200 m!326071))

(declare-fun m!326073 () Bool)

(assert (=> b!262200 m!326073))

(declare-fun m!326075 () Bool)

(assert (=> d!75164 m!326075))

(assert (=> d!75164 m!325051))

(assert (=> d!75164 m!326069))

(assert (=> d!75164 m!325421))

(assert (=> d!75164 m!326069))

(assert (=> d!75164 m!326071))

(declare-fun m!326077 () Bool)

(assert (=> d!75164 m!326077))

(declare-fun m!326079 () Bool)

(assert (=> d!75164 m!326079))

(assert (=> d!75164 m!326071))

(declare-fun m!326081 () Bool)

(assert (=> d!75164 m!326081))

(assert (=> b!262195 m!326071))

(assert (=> b!262195 m!326073))

(assert (=> b!262195 m!325051))

(assert (=> b!262195 m!326069))

(assert (=> b!262195 m!326069))

(assert (=> b!262195 m!326071))

(declare-fun m!326083 () Bool)

(assert (=> b!262195 m!326083))

(assert (=> b!262195 m!326067))

(assert (=> b!262198 m!326067))

(assert (=> b!262198 m!325051))

(assert (=> b!262198 m!326069))

(assert (=> b!262198 m!326069))

(declare-fun m!326085 () Bool)

(assert (=> b!262198 m!326085))

(assert (=> b!262198 m!326085))

(declare-fun m!326087 () Bool)

(assert (=> b!262198 m!326087))

(assert (=> b!262201 m!326079))

(assert (=> b!262197 m!326079))

(assert (=> b!262199 m!325051))

(declare-fun m!326089 () Bool)

(assert (=> b!262199 m!326089))

(assert (=> b!262194 m!326069))

(assert (=> b!262194 m!326085))

(assert (=> b!262194 m!325051))

(assert (=> b!262194 m!326069))

(assert (=> b!262194 m!326085))

(assert (=> b!262194 m!326087))

(assert (=> b!262194 m!326083))

(assert (=> b!262194 m!326067))

(assert (=> bm!14052 m!325051))

(declare-fun m!326091 () Bool)

(assert (=> bm!14052 m!326091))

(assert (=> b!261661 d!75164))

(declare-fun d!75166 () Bool)

(assert (=> d!75166 (= (tail!465 (drop!204 lt!106696 0)) (drop!204 lt!106696 (+ 0 1)))))

(declare-fun lt!106961 () Unit!4655)

(assert (=> d!75166 (= lt!106961 (choose!2413 lt!106696 0))))

(declare-fun e!162813 () Bool)

(assert (=> d!75166 e!162813))

(declare-fun res!120576 () Bool)

(assert (=> d!75166 (=> (not res!120576) (not e!162813))))

(assert (=> d!75166 (= res!120576 (>= 0 0))))

(assert (=> d!75166 (= (lemmaDropTail!183 lt!106696 0) lt!106961)))

(declare-fun b!262202 () Bool)

(assert (=> b!262202 (= e!162813 (< 0 (size!2992 lt!106696)))))

(assert (= (and d!75166 res!120576) b!262202))

(assert (=> d!75166 m!325045))

(assert (=> d!75166 m!325045))

(assert (=> d!75166 m!325059))

(assert (=> d!75166 m!325047))

(declare-fun m!326093 () Bool)

(assert (=> d!75166 m!326093))

(assert (=> b!262202 m!326051))

(assert (=> b!261661 d!75166))

(declare-fun b!262203 () Bool)

(declare-fun e!162816 () Int)

(declare-fun e!162814 () Int)

(assert (=> b!262203 (= e!162816 e!162814)))

(declare-fun c!49605 () Bool)

(declare-fun call!14058 () Int)

(assert (=> b!262203 (= c!49605 (>= 0 call!14058))))

(declare-fun b!262204 () Bool)

(declare-fun e!162815 () List!3767)

(assert (=> b!262204 (= e!162815 (drop!204 (t!37001 lt!106688) (- 0 1)))))

(declare-fun b!262205 () Bool)

(declare-fun e!162817 () List!3767)

(assert (=> b!262205 (= e!162817 e!162815)))

(declare-fun c!49603 () Bool)

(assert (=> b!262205 (= c!49603 (<= 0 0))))

(declare-fun b!262206 () Bool)

(assert (=> b!262206 (= e!162814 0)))

(declare-fun d!75168 () Bool)

(declare-fun e!162818 () Bool)

(assert (=> d!75168 e!162818))

(declare-fun res!120577 () Bool)

(assert (=> d!75168 (=> (not res!120577) (not e!162818))))

(declare-fun lt!106962 () List!3767)

(assert (=> d!75168 (= res!120577 (set.subset (content!532 lt!106962) (content!532 lt!106688)))))

(assert (=> d!75168 (= lt!106962 e!162817)))

(declare-fun c!49604 () Bool)

(assert (=> d!75168 (= c!49604 (is-Nil!3757 lt!106688))))

(assert (=> d!75168 (= (drop!204 lt!106688 0) lt!106962)))

(declare-fun b!262207 () Bool)

(assert (=> b!262207 (= e!162816 call!14058)))

(declare-fun b!262208 () Bool)

(assert (=> b!262208 (= e!162817 Nil!3757)))

(declare-fun b!262209 () Bool)

(assert (=> b!262209 (= e!162814 (- call!14058 0))))

(declare-fun b!262210 () Bool)

(assert (=> b!262210 (= e!162818 (= (size!2992 lt!106962) e!162816))))

(declare-fun c!49606 () Bool)

(assert (=> b!262210 (= c!49606 (<= 0 0))))

(declare-fun b!262211 () Bool)

(assert (=> b!262211 (= e!162815 lt!106688)))

(declare-fun bm!14053 () Bool)

(assert (=> bm!14053 (= call!14058 (size!2992 lt!106688))))

(assert (= (and d!75168 c!49604) b!262208))

(assert (= (and d!75168 (not c!49604)) b!262205))

(assert (= (and b!262205 c!49603) b!262211))

(assert (= (and b!262205 (not c!49603)) b!262204))

(assert (= (and d!75168 res!120577) b!262210))

(assert (= (and b!262210 c!49606) b!262207))

(assert (= (and b!262210 (not c!49606)) b!262203))

(assert (= (and b!262203 c!49605) b!262206))

(assert (= (and b!262203 (not c!49605)) b!262209))

(assert (= (or b!262207 b!262203 b!262209) bm!14053))

(declare-fun m!326095 () Bool)

(assert (=> b!262204 m!326095))

(declare-fun m!326097 () Bool)

(assert (=> d!75168 m!326097))

(declare-fun m!326099 () Bool)

(assert (=> d!75168 m!326099))

(declare-fun m!326101 () Bool)

(assert (=> b!262210 m!326101))

(assert (=> bm!14053 m!326033))

(assert (=> b!261661 d!75168))

(declare-fun d!75170 () Bool)

(assert (=> d!75170 (= (tail!465 (drop!204 lt!106696 0)) (t!37001 (drop!204 lt!106696 0)))))

(assert (=> b!261661 d!75170))

(declare-fun bs!28539 () Bool)

(declare-fun d!75172 () Bool)

(assert (= bs!28539 (and d!75172 d!74894)))

(declare-fun lambda!8783 () Int)

(assert (=> bs!28539 (not (= lambda!8783 lambda!8747))))

(declare-fun bs!28540 () Bool)

(assert (= bs!28540 (and d!75172 b!261581)))

(assert (=> bs!28540 (= lambda!8783 lambda!8748)))

(declare-fun bs!28541 () Bool)

(assert (= bs!28541 (and d!75172 d!74924)))

(assert (=> bs!28541 (= lambda!8783 lambda!8759)))

(declare-fun bs!28542 () Bool)

(assert (= bs!28542 (and d!75172 d!75040)))

(assert (=> bs!28542 (not (= lambda!8783 lambda!8771))))

(declare-fun bs!28543 () Bool)

(assert (= bs!28543 (and d!75172 b!261306)))

(assert (=> bs!28543 (not (= lambda!8783 lambda!8733))))

(declare-fun bs!28544 () Bool)

(assert (= bs!28544 (and d!75172 d!75150)))

(assert (=> bs!28544 (not (= lambda!8783 lambda!8779))))

(declare-fun bs!28545 () Bool)

(assert (= bs!28545 (and d!75172 b!262161)))

(assert (=> bs!28545 (= lambda!8783 lambda!8780)))

(declare-fun bs!28546 () Bool)

(assert (= bs!28546 (and d!75172 b!261661)))

(assert (=> bs!28546 (= lambda!8783 lambda!8762)))

(declare-fun bs!28547 () Bool)

(assert (= bs!28547 (and d!75172 d!74936)))

(assert (=> bs!28547 (not (= lambda!8783 lambda!8760))))

(declare-fun bs!28548 () Bool)

(assert (= bs!28548 (and d!75172 b!261685)))

(assert (=> bs!28548 (= lambda!8783 lambda!8764)))

(declare-fun bs!28549 () Bool)

(assert (= bs!28549 (and d!75172 b!261477)))

(assert (=> bs!28549 (= lambda!8783 lambda!8739)))

(declare-fun bs!28550 () Bool)

(assert (= bs!28550 (and d!75172 b!262000)))

(assert (=> bs!28550 (= lambda!8783 lambda!8772)))

(declare-fun b!262220 () Bool)

(declare-fun e!162827 () Bool)

(assert (=> b!262220 (= e!162827 true)))

(declare-fun b!262219 () Bool)

(declare-fun e!162826 () Bool)

(assert (=> b!262219 (= e!162826 e!162827)))

(declare-fun b!262218 () Bool)

(declare-fun e!162825 () Bool)

(assert (=> b!262218 (= e!162825 e!162826)))

(assert (=> d!75172 e!162825))

(assert (= b!262219 b!262220))

(assert (= b!262218 b!262219))

(assert (= (and d!75172 (is-Cons!3758 rules!1920)) b!262218))

(assert (=> b!262220 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8783))))

(assert (=> b!262220 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8783))))

(assert (=> d!75172 true))

(declare-fun lt!106965 () Bool)

(assert (=> d!75172 (= lt!106965 (forall!922 (list!1515 lt!106499) lambda!8783))))

(declare-fun e!162823 () Bool)

(assert (=> d!75172 (= lt!106965 e!162823)))

(declare-fun res!120583 () Bool)

(assert (=> d!75172 (=> res!120583 e!162823)))

(assert (=> d!75172 (= res!120583 (not (is-Cons!3757 (list!1515 lt!106499))))))

(assert (=> d!75172 (not (isEmpty!2357 rules!1920))))

(assert (=> d!75172 (= (rulesProduceEachTokenIndividuallyList!216 thiss!17480 rules!1920 (list!1515 lt!106499)) lt!106965)))

(declare-fun b!262216 () Bool)

(declare-fun e!162824 () Bool)

(assert (=> b!262216 (= e!162823 e!162824)))

(declare-fun res!120582 () Bool)

(assert (=> b!262216 (=> (not res!120582) (not e!162824))))

(assert (=> b!262216 (= res!120582 (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (h!9154 (list!1515 lt!106499))))))

(declare-fun b!262217 () Bool)

(assert (=> b!262217 (= e!162824 (rulesProduceEachTokenIndividuallyList!216 thiss!17480 rules!1920 (t!37001 (list!1515 lt!106499))))))

(assert (= (and d!75172 (not res!120583)) b!262216))

(assert (= (and b!262216 res!120582) b!262217))

(assert (=> d!75172 m!325005))

(declare-fun m!326103 () Bool)

(assert (=> d!75172 m!326103))

(assert (=> d!75172 m!324537))

(declare-fun m!326105 () Bool)

(assert (=> b!262216 m!326105))

(declare-fun m!326107 () Bool)

(assert (=> b!262217 m!326107))

(assert (=> b!261638 d!75172))

(assert (=> b!261638 d!75092))

(declare-fun d!75176 () Bool)

(declare-fun charsToBigInt!1 (List!3765) Int)

(assert (=> d!75176 (= (inv!17 (value!24723 (h!9154 tokens!465))) (= (charsToBigInt!1 (text!5614 (value!24723 (h!9154 tokens!465)))) (value!24715 (value!24723 (h!9154 tokens!465)))))))

(declare-fun bs!28551 () Bool)

(assert (= bs!28551 d!75176))

(declare-fun m!326109 () Bool)

(assert (=> bs!28551 m!326109))

(assert (=> b!261417 d!75176))

(declare-fun lt!106966 () BalanceConc!2516)

(declare-fun d!75178 () Bool)

(assert (=> d!75178 (= (list!1512 lt!106966) (originalCharacters!759 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))))

(assert (=> d!75178 (= lt!106966 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))) (value!24723 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))))

(assert (=> d!75178 (= (charsOf!361 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))) lt!106966)))

(declare-fun b_lambda!8073 () Bool)

(assert (=> (not b_lambda!8073) (not d!75178)))

(declare-fun t!37116 () Bool)

(declare-fun tb!14217 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37116) tb!14217))

(declare-fun e!162828 () Bool)

(declare-fun b!262221 () Bool)

(declare-fun tp!100640 () Bool)

(assert (=> b!262221 (= e!162828 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))) (value!24723 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) tp!100640))))

(declare-fun result!17708 () Bool)

(assert (=> tb!14217 (= result!17708 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))) (value!24723 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998))))) e!162828))))

(assert (= tb!14217 b!262221))

(declare-fun m!326111 () Bool)

(assert (=> b!262221 m!326111))

(declare-fun m!326113 () Bool)

(assert (=> tb!14217 m!326113))

(assert (=> d!75178 t!37116))

(declare-fun b_and!20403 () Bool)

(assert (= b_and!20393 (and (=> t!37116 result!17708) b_and!20403)))

(declare-fun t!37118 () Bool)

(declare-fun tb!14219 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37118) tb!14219))

(declare-fun result!17710 () Bool)

(assert (= result!17710 result!17708))

(assert (=> d!75178 t!37118))

(declare-fun b_and!20405 () Bool)

(assert (= b_and!20397 (and (=> t!37118 result!17710) b_and!20405)))

(declare-fun t!37120 () Bool)

(declare-fun tb!14221 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37120) tb!14221))

(declare-fun result!17712 () Bool)

(assert (= result!17712 result!17708))

(assert (=> d!75178 t!37120))

(declare-fun b_and!20407 () Bool)

(assert (= b_and!20401 (and (=> t!37120 result!17712) b_and!20407)))

(declare-fun tb!14223 () Bool)

(declare-fun t!37122 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37122) tb!14223))

(declare-fun result!17714 () Bool)

(assert (= result!17714 result!17708))

(assert (=> d!75178 t!37122))

(declare-fun b_and!20409 () Bool)

(assert (= b_and!20399 (and (=> t!37122 result!17714) b_and!20409)))

(declare-fun t!37124 () Bool)

(declare-fun tb!14225 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37124) tb!14225))

(declare-fun result!17716 () Bool)

(assert (= result!17716 result!17708))

(assert (=> d!75178 t!37124))

(declare-fun b_and!20411 () Bool)

(assert (= b_and!20395 (and (=> t!37124 result!17716) b_and!20411)))

(declare-fun m!326115 () Bool)

(assert (=> d!75178 m!326115))

(declare-fun m!326117 () Bool)

(assert (=> d!75178 m!326117))

(assert (=> bm!13996 d!75178))

(declare-fun d!75180 () Bool)

(assert (=> d!75180 (= (list!1512 e!162336) (list!1514 (c!49414 e!162336)))))

(declare-fun bs!28552 () Bool)

(assert (= bs!28552 d!75180))

(declare-fun m!326119 () Bool)

(assert (=> bs!28552 m!326119))

(assert (=> bm!13964 d!75180))

(declare-fun d!75182 () Bool)

(declare-fun res!120602 () Bool)

(declare-fun e!162839 () Bool)

(assert (=> d!75182 (=> res!120602 e!162839)))

(assert (=> d!75182 (= res!120602 (is-Nil!3758 rules!1920))))

(assert (=> d!75182 (= (noDuplicateTag!212 thiss!17480 rules!1920 Nil!3763) e!162839)))

(declare-fun b!262244 () Bool)

(declare-fun e!162840 () Bool)

(assert (=> b!262244 (= e!162839 e!162840)))

(declare-fun res!120603 () Bool)

(assert (=> b!262244 (=> (not res!120603) (not e!162840))))

(declare-fun contains!700 (List!3773 String!4772) Bool)

(assert (=> b!262244 (= res!120603 (not (contains!700 Nil!3763 (tag!926 (h!9155 rules!1920)))))))

(declare-fun b!262245 () Bool)

(assert (=> b!262245 (= e!162840 (noDuplicateTag!212 thiss!17480 (t!37002 rules!1920) (Cons!3763 (tag!926 (h!9155 rules!1920)) Nil!3763)))))

(assert (= (and d!75182 (not res!120602)) b!262244))

(assert (= (and b!262244 res!120603) b!262245))

(declare-fun m!326121 () Bool)

(assert (=> b!262244 m!326121))

(declare-fun m!326123 () Bool)

(assert (=> b!262245 m!326123))

(assert (=> b!261442 d!75182))

(declare-fun d!75184 () Bool)

(declare-fun lt!106977 () BalanceConc!2516)

(assert (=> d!75184 (= (list!1512 lt!106977) (printList!280 thiss!17480 (list!1515 (singletonSeq!262 (h!9154 (t!37001 tokens!465))))))))

(assert (=> d!75184 (= lt!106977 (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) 0 (BalanceConc!2517 Empty!1254)))))

(assert (=> d!75184 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465)))) lt!106977)))

(declare-fun bs!28553 () Bool)

(assert (= bs!28553 d!75184))

(declare-fun m!326125 () Bool)

(assert (=> bs!28553 m!326125))

(assert (=> bs!28553 m!324715))

(declare-fun m!326127 () Bool)

(assert (=> bs!28553 m!326127))

(assert (=> bs!28553 m!326127))

(declare-fun m!326129 () Bool)

(assert (=> bs!28553 m!326129))

(assert (=> bs!28553 m!324715))

(assert (=> bs!28553 m!324719))

(assert (=> b!261478 d!75184))

(declare-fun d!75186 () Bool)

(declare-fun e!162841 () Bool)

(assert (=> d!75186 e!162841))

(declare-fun res!120604 () Bool)

(assert (=> d!75186 (=> (not res!120604) (not e!162841))))

(declare-fun lt!106978 () BalanceConc!2518)

(assert (=> d!75186 (= res!120604 (= (list!1515 lt!106978) (Cons!3757 (h!9154 (t!37001 tokens!465)) Nil!3757)))))

(assert (=> d!75186 (= lt!106978 (singleton!104 (h!9154 (t!37001 tokens!465))))))

(assert (=> d!75186 (= (singletonSeq!262 (h!9154 (t!37001 tokens!465))) lt!106978)))

(declare-fun b!262246 () Bool)

(assert (=> b!262246 (= e!162841 (isBalanced!336 (c!49416 lt!106978)))))

(assert (= (and d!75186 res!120604) b!262246))

(declare-fun m!326131 () Bool)

(assert (=> d!75186 m!326131))

(declare-fun m!326133 () Bool)

(assert (=> d!75186 m!326133))

(declare-fun m!326135 () Bool)

(assert (=> b!262246 m!326135))

(assert (=> b!261478 d!75186))

(declare-fun d!75188 () Bool)

(declare-fun lt!106983 () BalanceConc!2516)

(assert (=> d!75188 (= (list!1512 lt!106983) (printListTailRec!119 thiss!17480 (dropList!151 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) 0) (list!1512 (BalanceConc!2517 Empty!1254))))))

(declare-fun e!162842 () BalanceConc!2516)

(assert (=> d!75188 (= lt!106983 e!162842)))

(declare-fun c!49609 () Bool)

(assert (=> d!75188 (= c!49609 (>= 0 (size!2989 (singletonSeq!262 (h!9154 (t!37001 tokens!465))))))))

(declare-fun e!162843 () Bool)

(assert (=> d!75188 e!162843))

(declare-fun res!120605 () Bool)

(assert (=> d!75188 (=> (not res!120605) (not e!162843))))

(assert (=> d!75188 (= res!120605 (>= 0 0))))

(assert (=> d!75188 (= (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) 0 (BalanceConc!2517 Empty!1254)) lt!106983)))

(declare-fun b!262247 () Bool)

(assert (=> b!262247 (= e!162843 (<= 0 (size!2989 (singletonSeq!262 (h!9154 (t!37001 tokens!465))))))))

(declare-fun b!262248 () Bool)

(assert (=> b!262248 (= e!162842 (BalanceConc!2517 Empty!1254))))

(declare-fun b!262249 () Bool)

(assert (=> b!262249 (= e!162842 (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) (+ 0 1) (++!967 (BalanceConc!2517 Empty!1254) (charsOf!361 (apply!731 (singletonSeq!262 (h!9154 (t!37001 tokens!465))) 0)))))))

(declare-fun lt!106982 () List!3767)

(assert (=> b!262249 (= lt!106982 (list!1515 (singletonSeq!262 (h!9154 (t!37001 tokens!465)))))))

(declare-fun lt!106981 () Unit!4655)

(assert (=> b!262249 (= lt!106981 (lemmaDropApply!191 lt!106982 0))))

(assert (=> b!262249 (= (head!875 (drop!204 lt!106982 0)) (apply!732 lt!106982 0))))

(declare-fun lt!106984 () Unit!4655)

(assert (=> b!262249 (= lt!106984 lt!106981)))

(declare-fun lt!106979 () List!3767)

(assert (=> b!262249 (= lt!106979 (list!1515 (singletonSeq!262 (h!9154 (t!37001 tokens!465)))))))

(declare-fun lt!106980 () Unit!4655)

(assert (=> b!262249 (= lt!106980 (lemmaDropTail!183 lt!106979 0))))

(assert (=> b!262249 (= (tail!465 (drop!204 lt!106979 0)) (drop!204 lt!106979 (+ 0 1)))))

(declare-fun lt!106985 () Unit!4655)

(assert (=> b!262249 (= lt!106985 lt!106980)))

(assert (= (and d!75188 res!120605) b!262247))

(assert (= (and d!75188 c!49609) b!262248))

(assert (= (and d!75188 (not c!49609)) b!262249))

(declare-fun m!326137 () Bool)

(assert (=> d!75188 m!326137))

(assert (=> d!75188 m!325595))

(declare-fun m!326139 () Bool)

(assert (=> d!75188 m!326139))

(assert (=> d!75188 m!325595))

(declare-fun m!326141 () Bool)

(assert (=> d!75188 m!326141))

(assert (=> d!75188 m!324715))

(declare-fun m!326143 () Bool)

(assert (=> d!75188 m!326143))

(assert (=> d!75188 m!324715))

(assert (=> d!75188 m!326139))

(assert (=> b!262247 m!324715))

(assert (=> b!262247 m!326143))

(assert (=> b!262249 m!324715))

(declare-fun m!326145 () Bool)

(assert (=> b!262249 m!326145))

(declare-fun m!326147 () Bool)

(assert (=> b!262249 m!326147))

(declare-fun m!326149 () Bool)

(assert (=> b!262249 m!326149))

(declare-fun m!326151 () Bool)

(assert (=> b!262249 m!326151))

(declare-fun m!326153 () Bool)

(assert (=> b!262249 m!326153))

(assert (=> b!262249 m!324715))

(declare-fun m!326155 () Bool)

(assert (=> b!262249 m!326155))

(declare-fun m!326157 () Bool)

(assert (=> b!262249 m!326157))

(declare-fun m!326159 () Bool)

(assert (=> b!262249 m!326159))

(declare-fun m!326161 () Bool)

(assert (=> b!262249 m!326161))

(assert (=> b!262249 m!326149))

(declare-fun m!326163 () Bool)

(assert (=> b!262249 m!326163))

(assert (=> b!262249 m!326159))

(declare-fun m!326165 () Bool)

(assert (=> b!262249 m!326165))

(assert (=> b!262249 m!326145))

(declare-fun m!326167 () Bool)

(assert (=> b!262249 m!326167))

(assert (=> b!262249 m!326167))

(assert (=> b!262249 m!326155))

(assert (=> b!262249 m!324715))

(assert (=> b!262249 m!326127))

(assert (=> b!261478 d!75188))

(declare-fun b!262253 () Bool)

(declare-fun e!162845 () Unit!4655)

(declare-fun Unit!4684 () Unit!4655)

(assert (=> b!262253 (= e!162845 Unit!4684)))

(declare-fun b!262251 () Bool)

(declare-fun e!162844 () Bool)

(declare-fun lt!106988 () Token!1176)

(assert (=> b!262251 (= e!162844 (= (rule!1301 lt!106988) (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106988))))))))

(declare-fun d!75190 () Bool)

(assert (=> d!75190 (isDefined!632 (maxPrefix!322 thiss!17480 rules!1920 (++!965 call!13970 lt!106560)))))

(declare-fun lt!107000 () Unit!4655)

(assert (=> d!75190 (= lt!107000 e!162845)))

(declare-fun c!49610 () Bool)

(assert (=> d!75190 (= c!49610 (isEmpty!2363 (maxPrefix!322 thiss!17480 rules!1920 (++!965 call!13970 lt!106560))))))

(declare-fun lt!106992 () Unit!4655)

(declare-fun lt!106991 () Unit!4655)

(assert (=> d!75190 (= lt!106992 lt!106991)))

(assert (=> d!75190 e!162844))

(declare-fun res!120606 () Bool)

(assert (=> d!75190 (=> (not res!120606) (not e!162844))))

(assert (=> d!75190 (= res!120606 (isDefined!633 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106988)))))))

(assert (=> d!75190 (= lt!106991 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!117 thiss!17480 rules!1920 call!13970 lt!106988))))

(declare-fun lt!106993 () Unit!4655)

(declare-fun lt!106995 () Unit!4655)

(assert (=> d!75190 (= lt!106993 lt!106995)))

(declare-fun lt!106990 () List!3766)

(assert (=> d!75190 (isPrefix!390 lt!106990 (++!965 call!13970 lt!106560))))

(assert (=> d!75190 (= lt!106995 (lemmaPrefixStaysPrefixWhenAddingToSuffix!49 lt!106990 call!13970 lt!106560))))

(assert (=> d!75190 (= lt!106990 (list!1512 (charsOf!361 lt!106988)))))

(declare-fun lt!107001 () Unit!4655)

(declare-fun lt!106987 () Unit!4655)

(assert (=> d!75190 (= lt!107001 lt!106987)))

(declare-fun lt!107002 () List!3766)

(declare-fun lt!106994 () List!3766)

(assert (=> d!75190 (isPrefix!390 lt!107002 (++!965 lt!107002 lt!106994))))

(assert (=> d!75190 (= lt!106987 (lemmaConcatTwoListThenFirstIsPrefix!285 lt!107002 lt!106994))))

(assert (=> d!75190 (= lt!106994 (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 call!13970))))))

(assert (=> d!75190 (= lt!107002 (list!1512 (charsOf!361 lt!106988)))))

(assert (=> d!75190 (= lt!106988 (head!875 (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (seqFromList!800 call!13970))))))))

(assert (=> d!75190 (not (isEmpty!2357 rules!1920))))

(assert (=> d!75190 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!13970 lt!106560) lt!107000)))

(declare-fun b!262250 () Bool)

(declare-fun res!120607 () Bool)

(assert (=> b!262250 (=> (not res!120607) (not e!162844))))

(assert (=> b!262250 (= res!120607 (matchR!268 (regex!716 (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!106988))))) (list!1512 (charsOf!361 lt!106988))))))

(declare-fun b!262252 () Bool)

(declare-fun Unit!4685 () Unit!4655)

(assert (=> b!262252 (= e!162845 Unit!4685)))

(declare-fun lt!106989 () List!3766)

(assert (=> b!262252 (= lt!106989 (++!965 call!13970 lt!106560))))

(declare-fun lt!106997 () Unit!4655)

(assert (=> b!262252 (= lt!106997 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!49 thiss!17480 (rule!1301 lt!106988) rules!1920 lt!106989))))

(assert (=> b!262252 (isEmpty!2363 (maxPrefixOneRule!134 thiss!17480 (rule!1301 lt!106988) lt!106989))))

(declare-fun lt!106986 () Unit!4655)

(assert (=> b!262252 (= lt!106986 lt!106997)))

(declare-fun lt!106999 () List!3766)

(assert (=> b!262252 (= lt!106999 (list!1512 (charsOf!361 lt!106988)))))

(declare-fun lt!106996 () Unit!4655)

(assert (=> b!262252 (= lt!106996 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!49 thiss!17480 (rule!1301 lt!106988) lt!106999 (++!965 call!13970 lt!106560)))))

(assert (=> b!262252 (not (matchR!268 (regex!716 (rule!1301 lt!106988)) lt!106999))))

(declare-fun lt!106998 () Unit!4655)

(assert (=> b!262252 (= lt!106998 lt!106996)))

(assert (=> b!262252 false))

(assert (= (and d!75190 res!120606) b!262250))

(assert (= (and b!262250 res!120607) b!262251))

(assert (= (and d!75190 c!49610) b!262252))

(assert (= (and d!75190 (not c!49610)) b!262253))

(declare-fun m!326169 () Bool)

(assert (=> b!262251 m!326169))

(assert (=> b!262251 m!326169))

(declare-fun m!326171 () Bool)

(assert (=> b!262251 m!326171))

(declare-fun m!326173 () Bool)

(assert (=> d!75190 m!326173))

(declare-fun m!326175 () Bool)

(assert (=> d!75190 m!326175))

(assert (=> d!75190 m!326169))

(assert (=> d!75190 m!326173))

(declare-fun m!326177 () Bool)

(assert (=> d!75190 m!326177))

(declare-fun m!326179 () Bool)

(assert (=> d!75190 m!326179))

(declare-fun m!326181 () Bool)

(assert (=> d!75190 m!326181))

(declare-fun m!326183 () Bool)

(assert (=> d!75190 m!326183))

(declare-fun m!326185 () Bool)

(assert (=> d!75190 m!326185))

(declare-fun m!326187 () Bool)

(assert (=> d!75190 m!326187))

(declare-fun m!326189 () Bool)

(assert (=> d!75190 m!326189))

(declare-fun m!326191 () Bool)

(assert (=> d!75190 m!326191))

(assert (=> d!75190 m!326177))

(assert (=> d!75190 m!326189))

(declare-fun m!326193 () Bool)

(assert (=> d!75190 m!326193))

(assert (=> d!75190 m!324537))

(assert (=> d!75190 m!326187))

(declare-fun m!326195 () Bool)

(assert (=> d!75190 m!326195))

(assert (=> d!75190 m!326189))

(declare-fun m!326197 () Bool)

(assert (=> d!75190 m!326197))

(assert (=> d!75190 m!326169))

(declare-fun m!326199 () Bool)

(assert (=> d!75190 m!326199))

(declare-fun m!326201 () Bool)

(assert (=> d!75190 m!326201))

(assert (=> d!75190 m!326185))

(declare-fun m!326203 () Bool)

(assert (=> d!75190 m!326203))

(assert (=> d!75190 m!326181))

(declare-fun m!326205 () Bool)

(assert (=> d!75190 m!326205))

(assert (=> d!75190 m!326201))

(declare-fun m!326207 () Bool)

(assert (=> d!75190 m!326207))

(assert (=> d!75190 m!326177))

(declare-fun m!326209 () Bool)

(assert (=> d!75190 m!326209))

(assert (=> b!262250 m!326173))

(assert (=> b!262250 m!326175))

(assert (=> b!262250 m!326169))

(assert (=> b!262250 m!326173))

(assert (=> b!262250 m!326169))

(assert (=> b!262250 m!326171))

(assert (=> b!262250 m!326175))

(declare-fun m!326211 () Bool)

(assert (=> b!262250 m!326211))

(assert (=> b!262252 m!326173))

(assert (=> b!262252 m!326175))

(assert (=> b!262252 m!326177))

(declare-fun m!326213 () Bool)

(assert (=> b!262252 m!326213))

(assert (=> b!262252 m!326173))

(assert (=> b!262252 m!326177))

(declare-fun m!326215 () Bool)

(assert (=> b!262252 m!326215))

(declare-fun m!326217 () Bool)

(assert (=> b!262252 m!326217))

(assert (=> b!262252 m!326215))

(declare-fun m!326219 () Bool)

(assert (=> b!262252 m!326219))

(declare-fun m!326221 () Bool)

(assert (=> b!262252 m!326221))

(assert (=> b!261478 d!75190))

(declare-fun b!262291 () Bool)

(declare-fun e!162863 () Bool)

(declare-fun lt!107028 () Option!780)

(declare-fun contains!703 (List!3768 Rule!1232) Bool)

(assert (=> b!262291 (= e!162863 (contains!703 rules!1920 (rule!1301 (_1!2317 (get!1238 lt!107028)))))))

(declare-fun b!262292 () Bool)

(declare-fun res!120639 () Bool)

(assert (=> b!262292 (=> (not res!120639) (not e!162863))))

(assert (=> b!262292 (= res!120639 (matchR!268 (regex!716 (rule!1301 (_1!2317 (get!1238 lt!107028)))) (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107028))))))))

(declare-fun b!262293 () Bool)

(declare-fun e!162864 () Bool)

(assert (=> b!262293 (= e!162864 e!162863)))

(declare-fun res!120641 () Bool)

(assert (=> b!262293 (=> (not res!120641) (not e!162863))))

(assert (=> b!262293 (= res!120641 (isDefined!632 lt!107028))))

(declare-fun call!14064 () Option!780)

(declare-fun bm!14059 () Bool)

(assert (=> bm!14059 (= call!14064 (maxPrefixOneRule!134 thiss!17480 (h!9155 rules!1920) (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)))))

(declare-fun d!75192 () Bool)

(assert (=> d!75192 e!162864))

(declare-fun res!120643 () Bool)

(assert (=> d!75192 (=> res!120643 e!162864)))

(assert (=> d!75192 (= res!120643 (isEmpty!2363 lt!107028))))

(declare-fun e!162865 () Option!780)

(assert (=> d!75192 (= lt!107028 e!162865)))

(declare-fun c!49615 () Bool)

(assert (=> d!75192 (= c!49615 (and (is-Cons!3758 rules!1920) (is-Nil!3758 (t!37002 rules!1920))))))

(declare-fun lt!107032 () Unit!4655)

(declare-fun lt!107029 () Unit!4655)

(assert (=> d!75192 (= lt!107032 lt!107029)))

(assert (=> d!75192 (isPrefix!390 (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717) (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717))))

(assert (=> d!75192 (= lt!107029 (lemmaIsPrefixRefl!200 (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717) (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)))))

(assert (=> d!75192 (rulesValidInductive!195 thiss!17480 rules!1920)))

(assert (=> d!75192 (= (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)) lt!107028)))

(declare-fun b!262294 () Bool)

(declare-fun res!120640 () Bool)

(assert (=> b!262294 (=> (not res!120640) (not e!162863))))

(assert (=> b!262294 (= res!120640 (= (++!965 (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107028)))) (_2!2317 (get!1238 lt!107028))) (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)))))

(declare-fun b!262295 () Bool)

(declare-fun res!120638 () Bool)

(assert (=> b!262295 (=> (not res!120638) (not e!162863))))

(assert (=> b!262295 (= res!120638 (< (size!2988 (_2!2317 (get!1238 lt!107028))) (size!2988 (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717))))))

(declare-fun b!262296 () Bool)

(declare-fun lt!107031 () Option!780)

(declare-fun lt!107030 () Option!780)

(assert (=> b!262296 (= e!162865 (ite (and (is-None!779 lt!107031) (is-None!779 lt!107030)) None!779 (ite (is-None!779 lt!107030) lt!107031 (ite (is-None!779 lt!107031) lt!107030 (ite (>= (size!2986 (_1!2317 (v!14618 lt!107031))) (size!2986 (_1!2317 (v!14618 lt!107030)))) lt!107031 lt!107030)))))))

(assert (=> b!262296 (= lt!107031 call!14064)))

(assert (=> b!262296 (= lt!107030 (maxPrefix!322 thiss!17480 (t!37002 rules!1920) (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717)))))

(declare-fun b!262297 () Bool)

(declare-fun res!120642 () Bool)

(assert (=> b!262297 (=> (not res!120642) (not e!162863))))

(assert (=> b!262297 (= res!120642 (= (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107028)))) (originalCharacters!759 (_1!2317 (get!1238 lt!107028)))))))

(declare-fun b!262298 () Bool)

(declare-fun res!120637 () Bool)

(assert (=> b!262298 (=> (not res!120637) (not e!162863))))

(declare-fun apply!737 (TokenValueInjection!1248 BalanceConc!2516) TokenValue!738)

(assert (=> b!262298 (= res!120637 (= (value!24723 (_1!2317 (get!1238 lt!107028))) (apply!737 (transformation!716 (rule!1301 (_1!2317 (get!1238 lt!107028)))) (seqFromList!800 (originalCharacters!759 (_1!2317 (get!1238 lt!107028)))))))))

(declare-fun b!262299 () Bool)

(assert (=> b!262299 (= e!162865 call!14064)))

(assert (= (and d!75192 c!49615) b!262299))

(assert (= (and d!75192 (not c!49615)) b!262296))

(assert (= (or b!262299 b!262296) bm!14059))

(assert (= (and d!75192 (not res!120643)) b!262293))

(assert (= (and b!262293 res!120641) b!262297))

(assert (= (and b!262297 res!120642) b!262295))

(assert (= (and b!262295 res!120638) b!262294))

(assert (= (and b!262294 res!120640) b!262298))

(assert (= (and b!262298 res!120637) b!262292))

(assert (= (and b!262292 res!120639) b!262291))

(declare-fun m!326291 () Bool)

(assert (=> b!262294 m!326291))

(declare-fun m!326293 () Bool)

(assert (=> b!262294 m!326293))

(assert (=> b!262294 m!326293))

(declare-fun m!326295 () Bool)

(assert (=> b!262294 m!326295))

(assert (=> b!262294 m!326295))

(declare-fun m!326297 () Bool)

(assert (=> b!262294 m!326297))

(assert (=> b!262296 m!325157))

(declare-fun m!326299 () Bool)

(assert (=> b!262296 m!326299))

(assert (=> b!262297 m!326291))

(assert (=> b!262297 m!326293))

(assert (=> b!262297 m!326293))

(assert (=> b!262297 m!326295))

(assert (=> bm!14059 m!325157))

(declare-fun m!326301 () Bool)

(assert (=> bm!14059 m!326301))

(assert (=> b!262291 m!326291))

(declare-fun m!326303 () Bool)

(assert (=> b!262291 m!326303))

(assert (=> b!262298 m!326291))

(declare-fun m!326305 () Bool)

(assert (=> b!262298 m!326305))

(assert (=> b!262298 m!326305))

(declare-fun m!326307 () Bool)

(assert (=> b!262298 m!326307))

(assert (=> b!262292 m!326291))

(assert (=> b!262292 m!326293))

(assert (=> b!262292 m!326293))

(assert (=> b!262292 m!326295))

(assert (=> b!262292 m!326295))

(declare-fun m!326309 () Bool)

(assert (=> b!262292 m!326309))

(assert (=> b!262295 m!326291))

(declare-fun m!326311 () Bool)

(assert (=> b!262295 m!326311))

(assert (=> b!262295 m!325157))

(declare-fun m!326313 () Bool)

(assert (=> b!262295 m!326313))

(declare-fun m!326315 () Bool)

(assert (=> d!75192 m!326315))

(assert (=> d!75192 m!325157))

(assert (=> d!75192 m!325157))

(declare-fun m!326317 () Bool)

(assert (=> d!75192 m!326317))

(assert (=> d!75192 m!325157))

(assert (=> d!75192 m!325157))

(declare-fun m!326319 () Bool)

(assert (=> d!75192 m!326319))

(assert (=> d!75192 m!325421))

(declare-fun m!326321 () Bool)

(assert (=> b!262293 m!326321))

(assert (=> b!261685 d!75192))

(assert (=> b!261685 d!74884))

(assert (=> b!261685 d!74886))

(assert (=> b!261685 d!74916))

(declare-fun b!262300 () Bool)

(declare-fun e!162866 () List!3766)

(assert (=> b!262300 (= e!162866 lt!106717)))

(declare-fun e!162867 () Bool)

(declare-fun lt!107033 () List!3766)

(declare-fun b!262303 () Bool)

(assert (=> b!262303 (= e!162867 (or (not (= lt!106717 Nil!3756)) (= lt!107033 (list!1512 (charsOf!361 (h!9154 tokens!465))))))))

(declare-fun d!75204 () Bool)

(assert (=> d!75204 e!162867))

(declare-fun res!120645 () Bool)

(assert (=> d!75204 (=> (not res!120645) (not e!162867))))

(assert (=> d!75204 (= res!120645 (= (content!530 lt!107033) (set.union (content!530 (list!1512 (charsOf!361 (h!9154 tokens!465)))) (content!530 lt!106717))))))

(assert (=> d!75204 (= lt!107033 e!162866)))

(declare-fun c!49616 () Bool)

(assert (=> d!75204 (= c!49616 (is-Nil!3756 (list!1512 (charsOf!361 (h!9154 tokens!465)))))))

(assert (=> d!75204 (= (++!965 (list!1512 (charsOf!361 (h!9154 tokens!465))) lt!106717) lt!107033)))

(declare-fun b!262301 () Bool)

(assert (=> b!262301 (= e!162866 (Cons!3756 (h!9153 (list!1512 (charsOf!361 (h!9154 tokens!465)))) (++!965 (t!37000 (list!1512 (charsOf!361 (h!9154 tokens!465)))) lt!106717)))))

(declare-fun b!262302 () Bool)

(declare-fun res!120644 () Bool)

(assert (=> b!262302 (=> (not res!120644) (not e!162867))))

(assert (=> b!262302 (= res!120644 (= (size!2988 lt!107033) (+ (size!2988 (list!1512 (charsOf!361 (h!9154 tokens!465)))) (size!2988 lt!106717))))))

(assert (= (and d!75204 c!49616) b!262300))

(assert (= (and d!75204 (not c!49616)) b!262301))

(assert (= (and d!75204 res!120645) b!262302))

(assert (= (and b!262302 res!120644) b!262303))

(declare-fun m!326323 () Bool)

(assert (=> d!75204 m!326323))

(assert (=> d!75204 m!324501))

(declare-fun m!326325 () Bool)

(assert (=> d!75204 m!326325))

(assert (=> d!75204 m!325325))

(declare-fun m!326327 () Bool)

(assert (=> b!262301 m!326327))

(declare-fun m!326329 () Bool)

(assert (=> b!262302 m!326329))

(assert (=> b!262302 m!324501))

(declare-fun m!326331 () Bool)

(assert (=> b!262302 m!326331))

(assert (=> b!262302 m!325333))

(assert (=> b!261685 d!75204))

(declare-fun d!75206 () Bool)

(assert (=> d!75206 (dynLambda!1892 lambda!8764 (h!9154 tokens!465))))

(declare-fun lt!107034 () Unit!4655)

(assert (=> d!75206 (= lt!107034 (choose!2412 tokens!465 lambda!8764 (h!9154 tokens!465)))))

(declare-fun e!162868 () Bool)

(assert (=> d!75206 e!162868))

(declare-fun res!120646 () Bool)

(assert (=> d!75206 (=> (not res!120646) (not e!162868))))

(assert (=> d!75206 (= res!120646 (forall!922 tokens!465 lambda!8764))))

(assert (=> d!75206 (= (forallContained!273 tokens!465 lambda!8764 (h!9154 tokens!465)) lt!107034)))

(declare-fun b!262304 () Bool)

(assert (=> b!262304 (= e!162868 (contains!699 tokens!465 (h!9154 tokens!465)))))

(assert (= (and d!75206 res!120646) b!262304))

(declare-fun b_lambda!8077 () Bool)

(assert (=> (not b_lambda!8077) (not d!75206)))

(declare-fun m!326333 () Bool)

(assert (=> d!75206 m!326333))

(declare-fun m!326335 () Bool)

(assert (=> d!75206 m!326335))

(declare-fun m!326337 () Bool)

(assert (=> d!75206 m!326337))

(declare-fun m!326339 () Bool)

(assert (=> b!262304 m!326339))

(assert (=> b!261685 d!75206))

(declare-fun bs!28555 () Bool)

(declare-fun d!75208 () Bool)

(assert (= bs!28555 (and d!75208 d!75076)))

(declare-fun lambda!8784 () Int)

(assert (=> bs!28555 (= (= (toValue!1439 (transformation!716 (rule!1301 separatorToken!170))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (= lambda!8784 lambda!8775))))

(assert (=> d!75208 true))

(assert (=> d!75208 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))) (dynLambda!1898 order!2855 lambda!8784))))

(assert (=> d!75208 (= (equivClasses!229 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))) (Forall2!141 lambda!8784))))

(declare-fun bs!28556 () Bool)

(assert (= bs!28556 d!75208))

(declare-fun m!326341 () Bool)

(assert (=> bs!28556 m!326341))

(assert (=> b!261391 d!75208))

(assert (=> b!261585 d!75050))

(declare-fun d!75210 () Bool)

(declare-fun c!49617 () Bool)

(assert (=> d!75210 (= c!49617 (is-Nil!3756 lt!106540))))

(declare-fun e!162869 () (Set C!2802))

(assert (=> d!75210 (= (content!530 lt!106540) e!162869)))

(declare-fun b!262305 () Bool)

(assert (=> b!262305 (= e!162869 (as set.empty (Set C!2802)))))

(declare-fun b!262306 () Bool)

(assert (=> b!262306 (= e!162869 (set.union (set.insert (h!9153 lt!106540) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106540))))))

(assert (= (and d!75210 c!49617) b!262305))

(assert (= (and d!75210 (not c!49617)) b!262306))

(declare-fun m!326343 () Bool)

(assert (=> b!262306 m!326343))

(declare-fun m!326345 () Bool)

(assert (=> b!262306 m!326345))

(assert (=> d!74882 d!75210))

(assert (=> d!74882 d!75010))

(declare-fun d!75212 () Bool)

(declare-fun c!49618 () Bool)

(assert (=> d!75212 (= c!49618 (is-Nil!3756 lt!106503))))

(declare-fun e!162870 () (Set C!2802))

(assert (=> d!75212 (= (content!530 lt!106503) e!162870)))

(declare-fun b!262307 () Bool)

(assert (=> b!262307 (= e!162870 (as set.empty (Set C!2802)))))

(declare-fun b!262308 () Bool)

(assert (=> b!262308 (= e!162870 (set.union (set.insert (h!9153 lt!106503) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106503))))))

(assert (= (and d!75212 c!49618) b!262307))

(assert (= (and d!75212 (not c!49618)) b!262308))

(declare-fun m!326347 () Bool)

(assert (=> b!262308 m!326347))

(declare-fun m!326349 () Bool)

(assert (=> b!262308 m!326349))

(assert (=> d!74882 d!75212))

(declare-fun d!75214 () Bool)

(assert (=> d!75214 (= (inv!4637 (tag!926 (rule!1301 (h!9154 (t!37001 tokens!465))))) (= (mod (str.len (value!24722 (tag!926 (rule!1301 (h!9154 (t!37001 tokens!465)))))) 2) 0))))

(assert (=> b!261791 d!75214))

(declare-fun d!75216 () Bool)

(declare-fun res!120649 () Bool)

(declare-fun e!162873 () Bool)

(assert (=> d!75216 (=> (not res!120649) (not e!162873))))

(assert (=> d!75216 (= res!120649 (semiInverseModEq!246 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))))))

(assert (=> d!75216 (= (inv!4640 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) e!162873)))

(declare-fun b!262311 () Bool)

(assert (=> b!262311 (= e!162873 (equivClasses!229 (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))))))

(assert (= (and d!75216 res!120649) b!262311))

(declare-fun m!326351 () Bool)

(assert (=> d!75216 m!326351))

(declare-fun m!326353 () Bool)

(assert (=> b!262311 m!326353))

(assert (=> b!261791 d!75216))

(declare-fun bs!28557 () Bool)

(declare-fun d!75218 () Bool)

(assert (= bs!28557 (and d!75218 d!75128)))

(declare-fun lambda!8785 () Int)

(assert (=> bs!28557 (= (and (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) (= (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170))))) (= lambda!8785 lambda!8778))))

(assert (=> d!75218 true))

(assert (=> d!75218 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (dynLambda!1899 order!2857 lambda!8785))))

(assert (=> d!75218 true))

(assert (=> d!75218 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (dynLambda!1899 order!2857 lambda!8785))))

(assert (=> d!75218 (= (semiInverseModEq!246 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (Forall!165 lambda!8785))))

(declare-fun bs!28558 () Bool)

(assert (= bs!28558 d!75218))

(declare-fun m!326355 () Bool)

(assert (=> bs!28558 m!326355))

(assert (=> d!74966 d!75218))

(declare-fun b!262318 () Bool)

(declare-fun res!120653 () Bool)

(declare-fun e!162876 () Bool)

(assert (=> b!262318 (=> (not res!120653) (not e!162876))))

(assert (=> b!262318 (= res!120653 (>= (height!143 (++!969 (c!49414 e!162452) (c!49414 (ite c!49493 lt!106685 call!14021)))) (max!0 (height!143 (c!49414 e!162452)) (height!143 (c!49414 (ite c!49493 lt!106685 call!14021))))))))

(declare-fun b!262319 () Bool)

(declare-fun lt!107049 () BalanceConc!2516)

(assert (=> b!262319 (= e!162876 (= (list!1512 lt!107049) (++!965 (list!1512 e!162452) (list!1512 (ite c!49493 lt!106685 call!14021)))))))

(declare-fun b!262317 () Bool)

(declare-fun res!120651 () Bool)

(assert (=> b!262317 (=> (not res!120651) (not e!162876))))

(assert (=> b!262317 (= res!120651 (<= (height!143 (++!969 (c!49414 e!162452) (c!49414 (ite c!49493 lt!106685 call!14021)))) (+ (max!0 (height!143 (c!49414 e!162452)) (height!143 (c!49414 (ite c!49493 lt!106685 call!14021)))) 1)))))

(declare-fun d!75220 () Bool)

(assert (=> d!75220 e!162876))

(declare-fun res!120650 () Bool)

(assert (=> d!75220 (=> (not res!120650) (not e!162876))))

(assert (=> d!75220 (= res!120650 (appendAssocInst!56 (c!49414 e!162452) (c!49414 (ite c!49493 lt!106685 call!14021))))))

(assert (=> d!75220 (= lt!107049 (BalanceConc!2517 (++!969 (c!49414 e!162452) (c!49414 (ite c!49493 lt!106685 call!14021)))))))

(assert (=> d!75220 (= (++!967 e!162452 (ite c!49493 lt!106685 call!14021)) lt!107049)))

(declare-fun b!262316 () Bool)

(declare-fun res!120652 () Bool)

(assert (=> b!262316 (=> (not res!120652) (not e!162876))))

(assert (=> b!262316 (= res!120652 (isBalanced!335 (++!969 (c!49414 e!162452) (c!49414 (ite c!49493 lt!106685 call!14021)))))))

(assert (= (and d!75220 res!120650) b!262316))

(assert (= (and b!262316 res!120652) b!262317))

(assert (= (and b!262317 res!120651) b!262318))

(assert (= (and b!262318 res!120653) b!262319))

(declare-fun m!326357 () Bool)

(assert (=> b!262317 m!326357))

(declare-fun m!326359 () Bool)

(assert (=> b!262317 m!326359))

(assert (=> b!262317 m!326357))

(declare-fun m!326361 () Bool)

(assert (=> b!262317 m!326361))

(declare-fun m!326363 () Bool)

(assert (=> b!262317 m!326363))

(assert (=> b!262317 m!326363))

(assert (=> b!262317 m!326361))

(declare-fun m!326365 () Bool)

(assert (=> b!262317 m!326365))

(declare-fun m!326367 () Bool)

(assert (=> d!75220 m!326367))

(assert (=> d!75220 m!326357))

(assert (=> b!262318 m!326357))

(assert (=> b!262318 m!326359))

(assert (=> b!262318 m!326357))

(assert (=> b!262318 m!326361))

(assert (=> b!262318 m!326363))

(assert (=> b!262318 m!326363))

(assert (=> b!262318 m!326361))

(assert (=> b!262318 m!326365))

(declare-fun m!326369 () Bool)

(assert (=> b!262319 m!326369))

(declare-fun m!326371 () Bool)

(assert (=> b!262319 m!326371))

(declare-fun m!326373 () Bool)

(assert (=> b!262319 m!326373))

(assert (=> b!262319 m!326371))

(assert (=> b!262319 m!326373))

(declare-fun m!326375 () Bool)

(assert (=> b!262319 m!326375))

(assert (=> b!262316 m!326357))

(assert (=> b!262316 m!326357))

(declare-fun m!326377 () Bool)

(assert (=> b!262316 m!326377))

(assert (=> bm!14014 d!75220))

(declare-fun d!75222 () Bool)

(assert (=> d!75222 (= (list!1512 lt!106633) (list!1514 (c!49414 lt!106633)))))

(declare-fun bs!28559 () Bool)

(assert (= bs!28559 d!75222))

(declare-fun m!326379 () Bool)

(assert (=> bs!28559 m!326379))

(assert (=> d!74912 d!75222))

(declare-fun bs!28560 () Bool)

(declare-fun b!262322 () Bool)

(assert (= bs!28560 (and b!262322 d!74894)))

(declare-fun lambda!8786 () Int)

(assert (=> bs!28560 (not (= lambda!8786 lambda!8747))))

(declare-fun bs!28561 () Bool)

(assert (= bs!28561 (and b!262322 d!75172)))

(assert (=> bs!28561 (= lambda!8786 lambda!8783)))

(declare-fun bs!28562 () Bool)

(assert (= bs!28562 (and b!262322 b!261581)))

(assert (=> bs!28562 (= lambda!8786 lambda!8748)))

(declare-fun bs!28563 () Bool)

(assert (= bs!28563 (and b!262322 d!74924)))

(assert (=> bs!28563 (= lambda!8786 lambda!8759)))

(declare-fun bs!28564 () Bool)

(assert (= bs!28564 (and b!262322 d!75040)))

(assert (=> bs!28564 (not (= lambda!8786 lambda!8771))))

(declare-fun bs!28565 () Bool)

(assert (= bs!28565 (and b!262322 b!261306)))

(assert (=> bs!28565 (not (= lambda!8786 lambda!8733))))

(declare-fun bs!28566 () Bool)

(assert (= bs!28566 (and b!262322 d!75150)))

(assert (=> bs!28566 (not (= lambda!8786 lambda!8779))))

(declare-fun bs!28567 () Bool)

(assert (= bs!28567 (and b!262322 b!262161)))

(assert (=> bs!28567 (= lambda!8786 lambda!8780)))

(declare-fun bs!28568 () Bool)

(assert (= bs!28568 (and b!262322 b!261661)))

(assert (=> bs!28568 (= lambda!8786 lambda!8762)))

(declare-fun bs!28569 () Bool)

(assert (= bs!28569 (and b!262322 d!74936)))

(assert (=> bs!28569 (not (= lambda!8786 lambda!8760))))

(declare-fun bs!28570 () Bool)

(assert (= bs!28570 (and b!262322 b!261685)))

(assert (=> bs!28570 (= lambda!8786 lambda!8764)))

(declare-fun bs!28571 () Bool)

(assert (= bs!28571 (and b!262322 b!261477)))

(assert (=> bs!28571 (= lambda!8786 lambda!8739)))

(declare-fun bs!28572 () Bool)

(assert (= bs!28572 (and b!262322 b!262000)))

(assert (=> bs!28572 (= lambda!8786 lambda!8772)))

(declare-fun b!262330 () Bool)

(declare-fun e!162883 () Bool)

(assert (=> b!262330 (= e!162883 true)))

(declare-fun b!262329 () Bool)

(declare-fun e!162882 () Bool)

(assert (=> b!262329 (= e!162882 e!162883)))

(declare-fun b!262328 () Bool)

(declare-fun e!162881 () Bool)

(assert (=> b!262328 (= e!162881 e!162882)))

(assert (=> b!262322 e!162881))

(assert (= b!262329 b!262330))

(assert (= b!262328 b!262329))

(assert (= (and b!262322 (is-Cons!3758 rules!1920)) b!262328))

(assert (=> b!262330 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8786))))

(assert (=> b!262330 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8786))))

(assert (=> b!262322 true))

(declare-fun b!262320 () Bool)

(declare-fun e!162879 () List!3766)

(declare-fun call!14066 () List!3766)

(assert (=> b!262320 (= e!162879 call!14066)))

(declare-fun b!262321 () Bool)

(declare-fun e!162877 () List!3766)

(declare-fun lt!107055 () List!3766)

(assert (=> b!262321 (= e!162877 (++!965 call!14066 lt!107055))))

(declare-fun call!14065 () BalanceConc!2516)

(declare-fun bm!14060 () Bool)

(declare-fun call!14067 () List!3766)

(declare-fun c!49621 () Bool)

(declare-fun call!14069 () BalanceConc!2516)

(assert (=> bm!14060 (= call!14067 (list!1512 (ite c!49621 call!14065 call!14069)))))

(declare-fun bm!14061 () Bool)

(assert (=> bm!14061 (= call!14069 call!14065)))

(declare-fun b!262323 () Bool)

(assert (=> b!262323 (= e!162877 Nil!3756)))

(assert (=> b!262323 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0)))) (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0))) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!107050 () Unit!4655)

(declare-fun Unit!4688 () Unit!4655)

(assert (=> b!262323 (= lt!107050 Unit!4688)))

(declare-fun lt!107052 () Unit!4655)

(declare-fun call!14068 () List!3766)

(assert (=> b!262323 (= lt!107052 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!14068 lt!107055))))

(assert (=> b!262323 false))

(declare-fun lt!107053 () Unit!4655)

(declare-fun Unit!4689 () Unit!4655)

(assert (=> b!262323 (= lt!107053 Unit!4689)))

(declare-fun b!262324 () Bool)

(declare-fun e!162878 () BalanceConc!2516)

(assert (=> b!262324 (= e!162878 (charsOf!361 separatorToken!170))))

(declare-fun b!262325 () Bool)

(declare-fun e!162880 () List!3766)

(assert (=> b!262325 (= e!162880 Nil!3756)))

(declare-fun b!262326 () Bool)

(assert (=> b!262326 (= e!162878 call!14069)))

(declare-fun bm!14062 () Bool)

(assert (=> bm!14062 (= call!14068 (list!1512 e!162878))))

(declare-fun c!49622 () Bool)

(declare-fun c!49624 () Bool)

(assert (=> bm!14062 (= c!49622 c!49624)))

(declare-fun bm!14063 () Bool)

(assert (=> bm!14063 (= call!14065 (charsOf!361 (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0))))))

(declare-fun d!75224 () Bool)

(declare-fun c!49623 () Bool)

(assert (=> d!75224 (= c!49623 (is-Cons!3757 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(assert (=> d!75224 (= (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) separatorToken!170) e!162880)))

(assert (=> b!262322 (= e!162880 e!162879)))

(declare-fun lt!107054 () Unit!4655)

(assert (=> b!262322 (= lt!107054 (forallContained!273 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) lambda!8786 (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0))))))

(assert (=> b!262322 (= lt!107055 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0)) separatorToken!170))))

(declare-fun lt!107051 () Option!780)

(assert (=> b!262322 (= lt!107051 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0)))) lt!107055)))))

(assert (=> b!262322 (= c!49621 (and (is-Some!779 lt!107051) (= (_1!2317 (v!14618 lt!107051)) (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0)))))))

(declare-fun b!262327 () Bool)

(assert (=> b!262327 (= c!49624 (and (is-Some!779 lt!107051) (not (= (_1!2317 (v!14618 lt!107051)) (h!9154 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0))))))))

(assert (=> b!262327 (= e!162879 e!162877)))

(declare-fun bm!14064 () Bool)

(assert (=> bm!14064 (= call!14066 (++!965 call!14067 (ite c!49621 lt!107055 call!14068)))))

(assert (= (and d!75224 c!49623) b!262322))

(assert (= (and d!75224 (not c!49623)) b!262325))

(assert (= (and b!262322 c!49621) b!262320))

(assert (= (and b!262322 (not c!49621)) b!262327))

(assert (= (and b!262327 c!49624) b!262321))

(assert (= (and b!262327 (not c!49624)) b!262323))

(assert (= (or b!262321 b!262323) bm!14061))

(assert (= (or b!262321 b!262323) bm!14062))

(assert (= (and bm!14062 c!49622) b!262324))

(assert (= (and bm!14062 (not c!49622)) b!262326))

(assert (= (or b!262320 bm!14061) bm!14063))

(assert (= (or b!262320 b!262321) bm!14060))

(assert (= (or b!262320 b!262321) bm!14064))

(declare-fun m!326415 () Bool)

(assert (=> bm!14062 m!326415))

(declare-fun m!326417 () Bool)

(assert (=> b!262323 m!326417))

(assert (=> b!262323 m!326417))

(declare-fun m!326419 () Bool)

(assert (=> b!262323 m!326419))

(assert (=> b!262323 m!326417))

(declare-fun m!326421 () Bool)

(assert (=> b!262323 m!326421))

(declare-fun m!326423 () Bool)

(assert (=> b!262323 m!326423))

(declare-fun m!326425 () Bool)

(assert (=> bm!14063 m!326425))

(declare-fun m!326427 () Bool)

(assert (=> b!262321 m!326427))

(declare-fun m!326429 () Bool)

(assert (=> bm!14060 m!326429))

(declare-fun m!326431 () Bool)

(assert (=> b!262322 m!326431))

(declare-fun m!326433 () Bool)

(assert (=> b!262322 m!326433))

(assert (=> b!262322 m!324851))

(declare-fun m!326435 () Bool)

(assert (=> b!262322 m!326435))

(assert (=> b!262322 m!326425))

(declare-fun m!326437 () Bool)

(assert (=> b!262322 m!326437))

(assert (=> b!262322 m!326425))

(declare-fun m!326439 () Bool)

(assert (=> b!262322 m!326439))

(assert (=> b!262322 m!326437))

(assert (=> b!262322 m!326431))

(assert (=> b!262324 m!324487))

(declare-fun m!326441 () Bool)

(assert (=> bm!14064 m!326441))

(assert (=> d!74894 d!75224))

(declare-fun d!75228 () Bool)

(assert (=> d!75228 (forall!922 (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) lambda!8747)))

(declare-fun lt!107065 () Unit!4655)

(declare-fun choose!2415 (List!3767 List!3767 Int) Unit!4655)

(assert (=> d!75228 (= lt!107065 (choose!2415 (list!1515 (seqFromList!799 (t!37001 tokens!465))) (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) lambda!8747))))

(assert (=> d!75228 (forall!922 (list!1515 (seqFromList!799 (t!37001 tokens!465))) lambda!8747)))

(assert (=> d!75228 (= (lemmaContentSubsetPreservesForall!95 (list!1515 (seqFromList!799 (t!37001 tokens!465))) (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) lambda!8747) lt!107065)))

(declare-fun bs!28573 () Bool)

(assert (= bs!28573 d!75228))

(assert (=> bs!28573 m!324851))

(declare-fun m!326443 () Bool)

(assert (=> bs!28573 m!326443))

(assert (=> bs!28573 m!324855))

(assert (=> bs!28573 m!324851))

(declare-fun m!326445 () Bool)

(assert (=> bs!28573 m!326445))

(assert (=> bs!28573 m!324855))

(declare-fun m!326447 () Bool)

(assert (=> bs!28573 m!326447))

(assert (=> d!74894 d!75228))

(declare-fun d!75230 () Bool)

(assert (=> d!75230 (= (list!1512 lt!106620) (list!1514 (c!49414 lt!106620)))))

(declare-fun bs!28574 () Bool)

(assert (= bs!28574 d!75230))

(declare-fun m!326449 () Bool)

(assert (=> bs!28574 m!326449))

(assert (=> d!74894 d!75230))

(declare-fun d!75232 () Bool)

(assert (=> d!75232 (= (dropList!151 (seqFromList!799 (t!37001 tokens!465)) 0) (drop!204 (list!1518 (c!49416 (seqFromList!799 (t!37001 tokens!465)))) 0))))

(declare-fun bs!28575 () Bool)

(assert (= bs!28575 d!75232))

(assert (=> bs!28575 m!325529))

(assert (=> bs!28575 m!325529))

(declare-fun m!326451 () Bool)

(assert (=> bs!28575 m!326451))

(assert (=> d!74894 d!75232))

(declare-fun d!75234 () Bool)

(declare-fun lt!107066 () Int)

(assert (=> d!75234 (= lt!107066 (size!2992 (list!1515 (seqFromList!799 (t!37001 tokens!465)))))))

(assert (=> d!75234 (= lt!107066 (size!2993 (c!49416 (seqFromList!799 (t!37001 tokens!465)))))))

(assert (=> d!75234 (= (size!2989 (seqFromList!799 (t!37001 tokens!465))) lt!107066)))

(declare-fun bs!28576 () Bool)

(assert (= bs!28576 d!75234))

(assert (=> bs!28576 m!324483))

(assert (=> bs!28576 m!324855))

(assert (=> bs!28576 m!324855))

(declare-fun m!326453 () Bool)

(assert (=> bs!28576 m!326453))

(declare-fun m!326455 () Bool)

(assert (=> bs!28576 m!326455))

(assert (=> d!74894 d!75234))

(assert (=> d!74894 d!75048))

(declare-fun d!75236 () Bool)

(assert (=> d!75236 (= (inv!17 (value!24723 separatorToken!170)) (= (charsToBigInt!1 (text!5614 (value!24723 separatorToken!170))) (value!24715 (value!24723 separatorToken!170))))))

(declare-fun bs!28577 () Bool)

(assert (= bs!28577 d!75236))

(declare-fun m!326457 () Bool)

(assert (=> bs!28577 m!326457))

(assert (=> b!261601 d!75236))

(assert (=> d!74864 d!75122))

(assert (=> d!74864 d!75118))

(declare-fun d!75238 () Bool)

(assert (=> d!75238 (= (list!1515 (singletonSeq!262 separatorToken!170)) (list!1518 (c!49416 (singletonSeq!262 separatorToken!170))))))

(declare-fun bs!28578 () Bool)

(assert (= bs!28578 d!75238))

(declare-fun m!326459 () Bool)

(assert (=> bs!28578 m!326459))

(assert (=> d!74864 d!75238))

(assert (=> d!74864 d!75120))

(assert (=> d!74864 d!74850))

(declare-fun d!75240 () Bool)

(declare-fun lt!107067 () Int)

(assert (=> d!75240 (= lt!107067 (size!2992 (list!1515 (_1!2316 lt!106537))))))

(assert (=> d!75240 (= lt!107067 (size!2993 (c!49416 (_1!2316 lt!106537))))))

(assert (=> d!75240 (= (size!2989 (_1!2316 lt!106537)) lt!107067)))

(declare-fun bs!28579 () Bool)

(assert (= bs!28579 d!75240))

(declare-fun m!326461 () Bool)

(assert (=> bs!28579 m!326461))

(assert (=> bs!28579 m!326461))

(declare-fun m!326463 () Bool)

(assert (=> bs!28579 m!326463))

(declare-fun m!326465 () Bool)

(assert (=> bs!28579 m!326465))

(assert (=> d!74864 d!75240))

(declare-fun d!75242 () Bool)

(assert (=> d!75242 (= (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170))))) (list!1518 (c!49416 (_1!2316 (lex!396 thiss!17480 rules!1920 (print!327 thiss!17480 (singletonSeq!262 separatorToken!170)))))))))

(declare-fun bs!28580 () Bool)

(assert (= bs!28580 d!75242))

(declare-fun m!326467 () Bool)

(assert (=> bs!28580 m!326467))

(assert (=> d!74864 d!75242))

(declare-fun d!75244 () Bool)

(declare-fun lt!107068 () Bool)

(assert (=> d!75244 (= lt!107068 (isEmpty!2359 (list!1512 (_2!2316 lt!106537))))))

(assert (=> d!75244 (= lt!107068 (isEmpty!2364 (c!49414 (_2!2316 lt!106537))))))

(assert (=> d!75244 (= (isEmpty!2360 (_2!2316 lt!106537)) lt!107068)))

(declare-fun bs!28581 () Bool)

(assert (= bs!28581 d!75244))

(declare-fun m!326469 () Bool)

(assert (=> bs!28581 m!326469))

(assert (=> bs!28581 m!326469))

(declare-fun m!326471 () Bool)

(assert (=> bs!28581 m!326471))

(declare-fun m!326473 () Bool)

(assert (=> bs!28581 m!326473))

(assert (=> b!261438 d!75244))

(declare-fun d!75246 () Bool)

(assert (=> d!75246 true))

(declare-fun lt!107071 () Bool)

(assert (=> d!75246 (= lt!107071 (rulesValidInductive!195 thiss!17480 rules!1920))))

(declare-fun lambda!8789 () Int)

(declare-fun forall!928 (List!3768 Int) Bool)

(assert (=> d!75246 (= lt!107071 (forall!928 rules!1920 lambda!8789))))

(assert (=> d!75246 (= (rulesValid!212 thiss!17480 rules!1920) lt!107071)))

(declare-fun bs!28582 () Bool)

(assert (= bs!28582 d!75246))

(assert (=> bs!28582 m!325421))

(declare-fun m!326475 () Bool)

(assert (=> bs!28582 m!326475))

(assert (=> d!74876 d!75246))

(declare-fun d!75248 () Bool)

(assert (=> d!75248 (= (list!1512 call!14021) (list!1514 (c!49414 call!14021)))))

(declare-fun bs!28583 () Bool)

(assert (= bs!28583 d!75248))

(declare-fun m!326477 () Bool)

(assert (=> bs!28583 m!326477))

(assert (=> b!261662 d!75248))

(declare-fun d!75250 () Bool)

(assert (=> d!75250 (= (list!1512 lt!106685) (list!1514 (c!49414 lt!106685)))))

(declare-fun bs!28584 () Bool)

(assert (= bs!28584 d!75250))

(declare-fun m!326479 () Bool)

(assert (=> bs!28584 m!326479))

(assert (=> b!261662 d!75250))

(declare-fun b!262339 () Bool)

(declare-fun e!162887 () Unit!4655)

(declare-fun Unit!4690 () Unit!4655)

(assert (=> b!262339 (= e!162887 Unit!4690)))

(declare-fun b!262337 () Bool)

(declare-fun e!162886 () Bool)

(declare-fun lt!107074 () Token!1176)

(assert (=> b!262337 (= e!162886 (= (rule!1301 lt!107074) (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!107074))))))))

(declare-fun d!75252 () Bool)

(assert (=> d!75252 (isDefined!632 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 call!14021) (list!1512 lt!106685))))))

(declare-fun lt!107086 () Unit!4655)

(assert (=> d!75252 (= lt!107086 e!162887)))

(declare-fun c!49626 () Bool)

(assert (=> d!75252 (= c!49626 (isEmpty!2363 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 call!14021) (list!1512 lt!106685)))))))

(declare-fun lt!107078 () Unit!4655)

(declare-fun lt!107077 () Unit!4655)

(assert (=> d!75252 (= lt!107078 lt!107077)))

(assert (=> d!75252 e!162886))

(declare-fun res!120655 () Bool)

(assert (=> d!75252 (=> (not res!120655) (not e!162886))))

(assert (=> d!75252 (= res!120655 (isDefined!633 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!107074)))))))

(assert (=> d!75252 (= lt!107077 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!117 thiss!17480 rules!1920 (list!1512 call!14021) lt!107074))))

(declare-fun lt!107079 () Unit!4655)

(declare-fun lt!107081 () Unit!4655)

(assert (=> d!75252 (= lt!107079 lt!107081)))

(declare-fun lt!107076 () List!3766)

(assert (=> d!75252 (isPrefix!390 lt!107076 (++!965 (list!1512 call!14021) (list!1512 lt!106685)))))

(assert (=> d!75252 (= lt!107081 (lemmaPrefixStaysPrefixWhenAddingToSuffix!49 lt!107076 (list!1512 call!14021) (list!1512 lt!106685)))))

(assert (=> d!75252 (= lt!107076 (list!1512 (charsOf!361 lt!107074)))))

(declare-fun lt!107087 () Unit!4655)

(declare-fun lt!107073 () Unit!4655)

(assert (=> d!75252 (= lt!107087 lt!107073)))

(declare-fun lt!107088 () List!3766)

(declare-fun lt!107080 () List!3766)

(assert (=> d!75252 (isPrefix!390 lt!107088 (++!965 lt!107088 lt!107080))))

(assert (=> d!75252 (= lt!107073 (lemmaConcatTwoListThenFirstIsPrefix!285 lt!107088 lt!107080))))

(assert (=> d!75252 (= lt!107080 (_2!2317 (get!1238 (maxPrefix!322 thiss!17480 rules!1920 (list!1512 call!14021)))))))

(assert (=> d!75252 (= lt!107088 (list!1512 (charsOf!361 lt!107074)))))

(assert (=> d!75252 (= lt!107074 (head!875 (list!1515 (_1!2316 (lex!396 thiss!17480 rules!1920 (seqFromList!800 (list!1512 call!14021)))))))))

(assert (=> d!75252 (not (isEmpty!2357 rules!1920))))

(assert (=> d!75252 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 (list!1512 call!14021) (list!1512 lt!106685)) lt!107086)))

(declare-fun b!262336 () Bool)

(declare-fun res!120656 () Bool)

(assert (=> b!262336 (=> (not res!120656) (not e!162886))))

(assert (=> b!262336 (= res!120656 (matchR!268 (regex!716 (get!1239 (getRuleFromTag!117 thiss!17480 rules!1920 (tag!926 (rule!1301 lt!107074))))) (list!1512 (charsOf!361 lt!107074))))))

(declare-fun b!262338 () Bool)

(declare-fun Unit!4691 () Unit!4655)

(assert (=> b!262338 (= e!162887 Unit!4691)))

(declare-fun lt!107075 () List!3766)

(assert (=> b!262338 (= lt!107075 (++!965 (list!1512 call!14021) (list!1512 lt!106685)))))

(declare-fun lt!107083 () Unit!4655)

(assert (=> b!262338 (= lt!107083 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!49 thiss!17480 (rule!1301 lt!107074) rules!1920 lt!107075))))

(assert (=> b!262338 (isEmpty!2363 (maxPrefixOneRule!134 thiss!17480 (rule!1301 lt!107074) lt!107075))))

(declare-fun lt!107072 () Unit!4655)

(assert (=> b!262338 (= lt!107072 lt!107083)))

(declare-fun lt!107085 () List!3766)

(assert (=> b!262338 (= lt!107085 (list!1512 (charsOf!361 lt!107074)))))

(declare-fun lt!107082 () Unit!4655)

(assert (=> b!262338 (= lt!107082 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!49 thiss!17480 (rule!1301 lt!107074) lt!107085 (++!965 (list!1512 call!14021) (list!1512 lt!106685))))))

(assert (=> b!262338 (not (matchR!268 (regex!716 (rule!1301 lt!107074)) lt!107085))))

(declare-fun lt!107084 () Unit!4655)

(assert (=> b!262338 (= lt!107084 lt!107082)))

(assert (=> b!262338 false))

(assert (= (and d!75252 res!120655) b!262336))

(assert (= (and b!262336 res!120656) b!262337))

(assert (= (and d!75252 c!49626) b!262338))

(assert (= (and d!75252 (not c!49626)) b!262339))

(declare-fun m!326481 () Bool)

(assert (=> b!262337 m!326481))

(assert (=> b!262337 m!326481))

(declare-fun m!326483 () Bool)

(assert (=> b!262337 m!326483))

(declare-fun m!326485 () Bool)

(assert (=> d!75252 m!326485))

(declare-fun m!326487 () Bool)

(assert (=> d!75252 m!326487))

(assert (=> d!75252 m!326481))

(assert (=> d!75252 m!326485))

(assert (=> d!75252 m!325095))

(assert (=> d!75252 m!325097))

(declare-fun m!326489 () Bool)

(assert (=> d!75252 m!326489))

(assert (=> d!75252 m!325095))

(declare-fun m!326491 () Bool)

(assert (=> d!75252 m!326491))

(declare-fun m!326493 () Bool)

(assert (=> d!75252 m!326493))

(declare-fun m!326495 () Bool)

(assert (=> d!75252 m!326495))

(assert (=> d!75252 m!325095))

(declare-fun m!326497 () Bool)

(assert (=> d!75252 m!326497))

(declare-fun m!326499 () Bool)

(assert (=> d!75252 m!326499))

(declare-fun m!326501 () Bool)

(assert (=> d!75252 m!326501))

(declare-fun m!326503 () Bool)

(assert (=> d!75252 m!326503))

(assert (=> d!75252 m!326489))

(assert (=> d!75252 m!326501))

(declare-fun m!326505 () Bool)

(assert (=> d!75252 m!326505))

(assert (=> d!75252 m!324537))

(assert (=> d!75252 m!326499))

(declare-fun m!326507 () Bool)

(assert (=> d!75252 m!326507))

(assert (=> d!75252 m!326501))

(declare-fun m!326509 () Bool)

(assert (=> d!75252 m!326509))

(assert (=> d!75252 m!326481))

(declare-fun m!326511 () Bool)

(assert (=> d!75252 m!326511))

(declare-fun m!326513 () Bool)

(assert (=> d!75252 m!326513))

(assert (=> d!75252 m!326497))

(declare-fun m!326515 () Bool)

(assert (=> d!75252 m!326515))

(assert (=> d!75252 m!325095))

(assert (=> d!75252 m!326493))

(assert (=> d!75252 m!325095))

(assert (=> d!75252 m!325097))

(declare-fun m!326517 () Bool)

(assert (=> d!75252 m!326517))

(assert (=> d!75252 m!326513))

(declare-fun m!326519 () Bool)

(assert (=> d!75252 m!326519))

(assert (=> d!75252 m!326489))

(declare-fun m!326521 () Bool)

(assert (=> d!75252 m!326521))

(assert (=> b!262336 m!326485))

(assert (=> b!262336 m!326487))

(assert (=> b!262336 m!326481))

(assert (=> b!262336 m!326485))

(assert (=> b!262336 m!326481))

(assert (=> b!262336 m!326483))

(assert (=> b!262336 m!326487))

(declare-fun m!326523 () Bool)

(assert (=> b!262336 m!326523))

(assert (=> b!262338 m!326485))

(assert (=> b!262338 m!326487))

(assert (=> b!262338 m!326489))

(declare-fun m!326525 () Bool)

(assert (=> b!262338 m!326525))

(assert (=> b!262338 m!326485))

(assert (=> b!262338 m!325095))

(assert (=> b!262338 m!325097))

(assert (=> b!262338 m!326489))

(declare-fun m!326527 () Bool)

(assert (=> b!262338 m!326527))

(declare-fun m!326529 () Bool)

(assert (=> b!262338 m!326529))

(assert (=> b!262338 m!326527))

(declare-fun m!326531 () Bool)

(assert (=> b!262338 m!326531))

(declare-fun m!326533 () Bool)

(assert (=> b!262338 m!326533))

(assert (=> b!261662 d!75252))

(declare-fun d!75254 () Bool)

(declare-fun e!162888 () Bool)

(assert (=> d!75254 e!162888))

(declare-fun res!120657 () Bool)

(assert (=> d!75254 (=> (not res!120657) (not e!162888))))

(declare-fun lt!107089 () BalanceConc!2518)

(assert (=> d!75254 (= res!120657 (= (list!1515 lt!107089) (Cons!3757 call!14018 Nil!3757)))))

(assert (=> d!75254 (= lt!107089 (singleton!104 call!14018))))

(assert (=> d!75254 (= (singletonSeq!262 call!14018) lt!107089)))

(declare-fun b!262340 () Bool)

(assert (=> b!262340 (= e!162888 (isBalanced!336 (c!49416 lt!107089)))))

(assert (= (and d!75254 res!120657) b!262340))

(declare-fun m!326535 () Bool)

(assert (=> d!75254 m!326535))

(declare-fun m!326537 () Bool)

(assert (=> d!75254 m!326537))

(declare-fun m!326539 () Bool)

(assert (=> b!262340 m!326539))

(assert (=> b!261662 d!75254))

(declare-fun d!75256 () Bool)

(declare-fun lt!107090 () BalanceConc!2516)

(assert (=> d!75256 (= (list!1512 lt!107090) (printList!280 thiss!17480 (list!1515 (singletonSeq!262 call!14018))))))

(assert (=> d!75256 (= lt!107090 (printTailRec!290 thiss!17480 (singletonSeq!262 call!14018) 0 (BalanceConc!2517 Empty!1254)))))

(assert (=> d!75256 (= (print!327 thiss!17480 (singletonSeq!262 call!14018)) lt!107090)))

(declare-fun bs!28585 () Bool)

(assert (= bs!28585 d!75256))

(declare-fun m!326541 () Bool)

(assert (=> bs!28585 m!326541))

(assert (=> bs!28585 m!325103))

(declare-fun m!326543 () Bool)

(assert (=> bs!28585 m!326543))

(assert (=> bs!28585 m!326543))

(declare-fun m!326545 () Bool)

(assert (=> bs!28585 m!326545))

(assert (=> bs!28585 m!325103))

(assert (=> bs!28585 m!325105))

(assert (=> b!261662 d!75256))

(declare-fun d!75258 () Bool)

(declare-fun lt!107095 () BalanceConc!2516)

(assert (=> d!75258 (= (list!1512 lt!107095) (printListTailRec!119 thiss!17480 (dropList!151 (singletonSeq!262 call!14018) 0) (list!1512 (BalanceConc!2517 Empty!1254))))))

(declare-fun e!162889 () BalanceConc!2516)

(assert (=> d!75258 (= lt!107095 e!162889)))

(declare-fun c!49627 () Bool)

(assert (=> d!75258 (= c!49627 (>= 0 (size!2989 (singletonSeq!262 call!14018))))))

(declare-fun e!162890 () Bool)

(assert (=> d!75258 e!162890))

(declare-fun res!120658 () Bool)

(assert (=> d!75258 (=> (not res!120658) (not e!162890))))

(assert (=> d!75258 (= res!120658 (>= 0 0))))

(assert (=> d!75258 (= (printTailRec!290 thiss!17480 (singletonSeq!262 call!14018) 0 (BalanceConc!2517 Empty!1254)) lt!107095)))

(declare-fun b!262341 () Bool)

(assert (=> b!262341 (= e!162890 (<= 0 (size!2989 (singletonSeq!262 call!14018))))))

(declare-fun b!262342 () Bool)

(assert (=> b!262342 (= e!162889 (BalanceConc!2517 Empty!1254))))

(declare-fun b!262343 () Bool)

(assert (=> b!262343 (= e!162889 (printTailRec!290 thiss!17480 (singletonSeq!262 call!14018) (+ 0 1) (++!967 (BalanceConc!2517 Empty!1254) (charsOf!361 (apply!731 (singletonSeq!262 call!14018) 0)))))))

(declare-fun lt!107094 () List!3767)

(assert (=> b!262343 (= lt!107094 (list!1515 (singletonSeq!262 call!14018)))))

(declare-fun lt!107093 () Unit!4655)

(assert (=> b!262343 (= lt!107093 (lemmaDropApply!191 lt!107094 0))))

(assert (=> b!262343 (= (head!875 (drop!204 lt!107094 0)) (apply!732 lt!107094 0))))

(declare-fun lt!107096 () Unit!4655)

(assert (=> b!262343 (= lt!107096 lt!107093)))

(declare-fun lt!107091 () List!3767)

(assert (=> b!262343 (= lt!107091 (list!1515 (singletonSeq!262 call!14018)))))

(declare-fun lt!107092 () Unit!4655)

(assert (=> b!262343 (= lt!107092 (lemmaDropTail!183 lt!107091 0))))

(assert (=> b!262343 (= (tail!465 (drop!204 lt!107091 0)) (drop!204 lt!107091 (+ 0 1)))))

(declare-fun lt!107097 () Unit!4655)

(assert (=> b!262343 (= lt!107097 lt!107092)))

(assert (= (and d!75258 res!120658) b!262341))

(assert (= (and d!75258 c!49627) b!262342))

(assert (= (and d!75258 (not c!49627)) b!262343))

(declare-fun m!326547 () Bool)

(assert (=> d!75258 m!326547))

(assert (=> d!75258 m!325595))

(declare-fun m!326549 () Bool)

(assert (=> d!75258 m!326549))

(assert (=> d!75258 m!325595))

(declare-fun m!326551 () Bool)

(assert (=> d!75258 m!326551))

(assert (=> d!75258 m!325103))

(declare-fun m!326553 () Bool)

(assert (=> d!75258 m!326553))

(assert (=> d!75258 m!325103))

(assert (=> d!75258 m!326549))

(assert (=> b!262341 m!325103))

(assert (=> b!262341 m!326553))

(assert (=> b!262343 m!325103))

(declare-fun m!326555 () Bool)

(assert (=> b!262343 m!326555))

(declare-fun m!326557 () Bool)

(assert (=> b!262343 m!326557))

(declare-fun m!326559 () Bool)

(assert (=> b!262343 m!326559))

(declare-fun m!326561 () Bool)

(assert (=> b!262343 m!326561))

(declare-fun m!326563 () Bool)

(assert (=> b!262343 m!326563))

(assert (=> b!262343 m!325103))

(declare-fun m!326565 () Bool)

(assert (=> b!262343 m!326565))

(declare-fun m!326567 () Bool)

(assert (=> b!262343 m!326567))

(declare-fun m!326569 () Bool)

(assert (=> b!262343 m!326569))

(declare-fun m!326571 () Bool)

(assert (=> b!262343 m!326571))

(assert (=> b!262343 m!326559))

(declare-fun m!326573 () Bool)

(assert (=> b!262343 m!326573))

(assert (=> b!262343 m!326569))

(declare-fun m!326575 () Bool)

(assert (=> b!262343 m!326575))

(assert (=> b!262343 m!326555))

(declare-fun m!326577 () Bool)

(assert (=> b!262343 m!326577))

(assert (=> b!262343 m!326577))

(assert (=> b!262343 m!326565))

(assert (=> b!262343 m!325103))

(assert (=> b!262343 m!326543))

(assert (=> b!261662 d!75258))

(declare-fun b!262344 () Bool)

(declare-fun e!162891 () List!3766)

(assert (=> b!262344 (= e!162891 (ite c!49443 lt!106560 call!13970))))

(declare-fun b!262347 () Bool)

(declare-fun lt!107098 () List!3766)

(declare-fun e!162892 () Bool)

(assert (=> b!262347 (= e!162892 (or (not (= (ite c!49443 lt!106560 call!13970) Nil!3756)) (= lt!107098 call!13969)))))

(declare-fun d!75260 () Bool)

(assert (=> d!75260 e!162892))

(declare-fun res!120660 () Bool)

(assert (=> d!75260 (=> (not res!120660) (not e!162892))))

(assert (=> d!75260 (= res!120660 (= (content!530 lt!107098) (set.union (content!530 call!13969) (content!530 (ite c!49443 lt!106560 call!13970)))))))

(assert (=> d!75260 (= lt!107098 e!162891)))

(declare-fun c!49628 () Bool)

(assert (=> d!75260 (= c!49628 (is-Nil!3756 call!13969))))

(assert (=> d!75260 (= (++!965 call!13969 (ite c!49443 lt!106560 call!13970)) lt!107098)))

(declare-fun b!262345 () Bool)

(assert (=> b!262345 (= e!162891 (Cons!3756 (h!9153 call!13969) (++!965 (t!37000 call!13969) (ite c!49443 lt!106560 call!13970))))))

(declare-fun b!262346 () Bool)

(declare-fun res!120659 () Bool)

(assert (=> b!262346 (=> (not res!120659) (not e!162892))))

(assert (=> b!262346 (= res!120659 (= (size!2988 lt!107098) (+ (size!2988 call!13969) (size!2988 (ite c!49443 lt!106560 call!13970)))))))

(assert (= (and d!75260 c!49628) b!262344))

(assert (= (and d!75260 (not c!49628)) b!262345))

(assert (= (and d!75260 res!120660) b!262346))

(assert (= (and b!262346 res!120659) b!262347))

(declare-fun m!326579 () Bool)

(assert (=> d!75260 m!326579))

(declare-fun m!326581 () Bool)

(assert (=> d!75260 m!326581))

(declare-fun m!326583 () Bool)

(assert (=> d!75260 m!326583))

(declare-fun m!326585 () Bool)

(assert (=> b!262345 m!326585))

(declare-fun m!326587 () Bool)

(assert (=> b!262346 m!326587))

(declare-fun m!326589 () Bool)

(assert (=> b!262346 m!326589))

(declare-fun m!326591 () Bool)

(assert (=> b!262346 m!326591))

(assert (=> bm!13966 d!75260))

(declare-fun d!75262 () Bool)

(assert (=> d!75262 (= (list!1512 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))) (list!1514 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))))))

(declare-fun bs!28586 () Bool)

(assert (= bs!28586 d!75262))

(declare-fun m!326593 () Bool)

(assert (=> bs!28586 m!326593))

(assert (=> b!261396 d!75262))

(assert (=> b!261578 d!75234))

(declare-fun d!75264 () Bool)

(declare-fun lt!107099 () Int)

(assert (=> d!75264 (>= lt!107099 0)))

(declare-fun e!162893 () Int)

(assert (=> d!75264 (= lt!107099 e!162893)))

(declare-fun c!49629 () Bool)

(assert (=> d!75264 (= c!49629 (is-Nil!3756 lt!106540))))

(assert (=> d!75264 (= (size!2988 lt!106540) lt!107099)))

(declare-fun b!262348 () Bool)

(assert (=> b!262348 (= e!162893 0)))

(declare-fun b!262349 () Bool)

(assert (=> b!262349 (= e!162893 (+ 1 (size!2988 (t!37000 lt!106540))))))

(assert (= (and d!75264 c!49629) b!262348))

(assert (= (and d!75264 (not c!49629)) b!262349))

(declare-fun m!326595 () Bool)

(assert (=> b!262349 m!326595))

(assert (=> b!261453 d!75264))

(declare-fun d!75266 () Bool)

(declare-fun lt!107100 () Int)

(assert (=> d!75266 (>= lt!107100 0)))

(declare-fun e!162894 () Int)

(assert (=> d!75266 (= lt!107100 e!162894)))

(declare-fun c!49630 () Bool)

(assert (=> d!75266 (= c!49630 (is-Nil!3756 lt!106502))))

(assert (=> d!75266 (= (size!2988 lt!106502) lt!107100)))

(declare-fun b!262350 () Bool)

(assert (=> b!262350 (= e!162894 0)))

(declare-fun b!262351 () Bool)

(assert (=> b!262351 (= e!162894 (+ 1 (size!2988 (t!37000 lt!106502))))))

(assert (= (and d!75266 c!49630) b!262350))

(assert (= (and d!75266 (not c!49630)) b!262351))

(assert (=> b!262351 m!325701))

(assert (=> b!261453 d!75266))

(declare-fun d!75268 () Bool)

(declare-fun lt!107101 () Int)

(assert (=> d!75268 (>= lt!107101 0)))

(declare-fun e!162895 () Int)

(assert (=> d!75268 (= lt!107101 e!162895)))

(declare-fun c!49631 () Bool)

(assert (=> d!75268 (= c!49631 (is-Nil!3756 lt!106503))))

(assert (=> d!75268 (= (size!2988 lt!106503) lt!107101)))

(declare-fun b!262352 () Bool)

(assert (=> b!262352 (= e!162895 0)))

(declare-fun b!262353 () Bool)

(assert (=> b!262353 (= e!162895 (+ 1 (size!2988 (t!37000 lt!106503))))))

(assert (= (and d!75268 c!49631) b!262352))

(assert (= (and d!75268 (not c!49631)) b!262353))

(declare-fun m!326597 () Bool)

(assert (=> b!262353 m!326597))

(assert (=> b!261453 d!75268))

(declare-fun d!75270 () Bool)

(declare-fun lt!107102 () Int)

(assert (=> d!75270 (>= lt!107102 0)))

(declare-fun e!162896 () Int)

(assert (=> d!75270 (= lt!107102 e!162896)))

(declare-fun c!49632 () Bool)

(assert (=> d!75270 (= c!49632 (is-Nil!3756 (originalCharacters!759 (h!9154 tokens!465))))))

(assert (=> d!75270 (= (size!2988 (originalCharacters!759 (h!9154 tokens!465))) lt!107102)))

(declare-fun b!262354 () Bool)

(assert (=> b!262354 (= e!162896 0)))

(declare-fun b!262355 () Bool)

(assert (=> b!262355 (= e!162896 (+ 1 (size!2988 (t!37000 (originalCharacters!759 (h!9154 tokens!465))))))))

(assert (= (and d!75270 c!49632) b!262354))

(assert (= (and d!75270 (not c!49632)) b!262355))

(declare-fun m!326599 () Bool)

(assert (=> b!262355 m!326599))

(assert (=> b!261597 d!75270))

(declare-fun d!75272 () Bool)

(declare-fun c!49635 () Bool)

(assert (=> d!75272 (= c!49635 (and (is-Cons!3758 rules!1920) (not (= (isSeparator!716 (h!9155 rules!1920)) (isSeparator!716 (h!9155 rules!1920))))))))

(declare-fun e!162903 () Bool)

(assert (=> d!75272 (= (ruleDisjointCharsFromAllFromOtherType!105 (h!9155 rules!1920) rules!1920) e!162903)))

(declare-fun b!262364 () Bool)

(declare-fun e!162904 () Bool)

(assert (=> b!262364 (= e!162903 e!162904)))

(declare-fun res!120666 () Bool)

(assert (=> b!262364 (= res!120666 (not (is-Cons!3758 rules!1920)))))

(assert (=> b!262364 (=> res!120666 e!162904)))

(declare-fun bm!14067 () Bool)

(declare-fun call!14072 () Bool)

(assert (=> bm!14067 (= call!14072 (ruleDisjointCharsFromAllFromOtherType!105 (h!9155 rules!1920) (t!37002 rules!1920)))))

(declare-fun b!262365 () Bool)

(assert (=> b!262365 (= e!162904 call!14072)))

(declare-fun b!262366 () Bool)

(declare-fun e!162905 () Bool)

(assert (=> b!262366 (= e!162903 e!162905)))

(declare-fun res!120665 () Bool)

(declare-fun rulesUseDisjointChars!55 (Rule!1232 Rule!1232) Bool)

(assert (=> b!262366 (= res!120665 (rulesUseDisjointChars!55 (h!9155 rules!1920) (h!9155 rules!1920)))))

(assert (=> b!262366 (=> (not res!120665) (not e!162905))))

(declare-fun b!262367 () Bool)

(assert (=> b!262367 (= e!162905 call!14072)))

(assert (= (and d!75272 c!49635) b!262366))

(assert (= (and d!75272 (not c!49635)) b!262364))

(assert (= (and b!262366 res!120665) b!262367))

(assert (= (and b!262364 (not res!120666)) b!262365))

(assert (= (or b!262367 b!262365) bm!14067))

(declare-fun m!326601 () Bool)

(assert (=> bm!14067 m!326601))

(declare-fun m!326603 () Bool)

(assert (=> b!262366 m!326603))

(assert (=> b!261727 d!75272))

(declare-fun d!75274 () Bool)

(assert (=> d!75274 (dynLambda!1892 lambda!8739 (h!9154 (t!37001 tokens!465)))))

(declare-fun lt!107103 () Unit!4655)

(assert (=> d!75274 (= lt!107103 (choose!2412 (t!37001 tokens!465) lambda!8739 (h!9154 (t!37001 tokens!465))))))

(declare-fun e!162906 () Bool)

(assert (=> d!75274 e!162906))

(declare-fun res!120667 () Bool)

(assert (=> d!75274 (=> (not res!120667) (not e!162906))))

(assert (=> d!75274 (= res!120667 (forall!922 (t!37001 tokens!465) lambda!8739))))

(assert (=> d!75274 (= (forallContained!273 (t!37001 tokens!465) lambda!8739 (h!9154 (t!37001 tokens!465))) lt!107103)))

(declare-fun b!262368 () Bool)

(assert (=> b!262368 (= e!162906 (contains!699 (t!37001 tokens!465) (h!9154 (t!37001 tokens!465))))))

(assert (= (and d!75274 res!120667) b!262368))

(declare-fun b_lambda!8079 () Bool)

(assert (=> (not b_lambda!8079) (not d!75274)))

(declare-fun m!326605 () Bool)

(assert (=> d!75274 m!326605))

(declare-fun m!326607 () Bool)

(assert (=> d!75274 m!326607))

(declare-fun m!326609 () Bool)

(assert (=> d!75274 m!326609))

(declare-fun m!326611 () Bool)

(assert (=> b!262368 m!326611))

(assert (=> b!261477 d!75274))

(declare-fun b!262369 () Bool)

(declare-fun e!162907 () Bool)

(declare-fun lt!107104 () Option!780)

(assert (=> b!262369 (= e!162907 (contains!703 rules!1920 (rule!1301 (_1!2317 (get!1238 lt!107104)))))))

(declare-fun b!262370 () Bool)

(declare-fun res!120670 () Bool)

(assert (=> b!262370 (=> (not res!120670) (not e!162907))))

(assert (=> b!262370 (= res!120670 (matchR!268 (regex!716 (rule!1301 (_1!2317 (get!1238 lt!107104)))) (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107104))))))))

(declare-fun b!262371 () Bool)

(declare-fun e!162908 () Bool)

(assert (=> b!262371 (= e!162908 e!162907)))

(declare-fun res!120672 () Bool)

(assert (=> b!262371 (=> (not res!120672) (not e!162907))))

(assert (=> b!262371 (= res!120672 (isDefined!632 lt!107104))))

(declare-fun bm!14068 () Bool)

(declare-fun call!14073 () Option!780)

(assert (=> bm!14068 (= call!14073 (maxPrefixOneRule!134 thiss!17480 (h!9155 rules!1920) (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)))))

(declare-fun d!75276 () Bool)

(assert (=> d!75276 e!162908))

(declare-fun res!120674 () Bool)

(assert (=> d!75276 (=> res!120674 e!162908)))

(assert (=> d!75276 (= res!120674 (isEmpty!2363 lt!107104))))

(declare-fun e!162909 () Option!780)

(assert (=> d!75276 (= lt!107104 e!162909)))

(declare-fun c!49636 () Bool)

(assert (=> d!75276 (= c!49636 (and (is-Cons!3758 rules!1920) (is-Nil!3758 (t!37002 rules!1920))))))

(declare-fun lt!107108 () Unit!4655)

(declare-fun lt!107105 () Unit!4655)

(assert (=> d!75276 (= lt!107108 lt!107105)))

(assert (=> d!75276 (isPrefix!390 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560) (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560))))

(assert (=> d!75276 (= lt!107105 (lemmaIsPrefixRefl!200 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560) (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)))))

(assert (=> d!75276 (rulesValidInductive!195 thiss!17480 rules!1920)))

(assert (=> d!75276 (= (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)) lt!107104)))

(declare-fun b!262372 () Bool)

(declare-fun res!120671 () Bool)

(assert (=> b!262372 (=> (not res!120671) (not e!162907))))

(assert (=> b!262372 (= res!120671 (= (++!965 (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107104)))) (_2!2317 (get!1238 lt!107104))) (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)))))

(declare-fun b!262373 () Bool)

(declare-fun res!120669 () Bool)

(assert (=> b!262373 (=> (not res!120669) (not e!162907))))

(assert (=> b!262373 (= res!120669 (< (size!2988 (_2!2317 (get!1238 lt!107104))) (size!2988 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560))))))

(declare-fun b!262374 () Bool)

(declare-fun lt!107107 () Option!780)

(declare-fun lt!107106 () Option!780)

(assert (=> b!262374 (= e!162909 (ite (and (is-None!779 lt!107107) (is-None!779 lt!107106)) None!779 (ite (is-None!779 lt!107106) lt!107107 (ite (is-None!779 lt!107107) lt!107106 (ite (>= (size!2986 (_1!2317 (v!14618 lt!107107))) (size!2986 (_1!2317 (v!14618 lt!107106)))) lt!107107 lt!107106)))))))

(assert (=> b!262374 (= lt!107107 call!14073)))

(assert (=> b!262374 (= lt!107106 (maxPrefix!322 thiss!17480 (t!37002 rules!1920) (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560)))))

(declare-fun b!262375 () Bool)

(declare-fun res!120673 () Bool)

(assert (=> b!262375 (=> (not res!120673) (not e!162907))))

(assert (=> b!262375 (= res!120673 (= (list!1512 (charsOf!361 (_1!2317 (get!1238 lt!107104)))) (originalCharacters!759 (_1!2317 (get!1238 lt!107104)))))))

(declare-fun b!262376 () Bool)

(declare-fun res!120668 () Bool)

(assert (=> b!262376 (=> (not res!120668) (not e!162907))))

(assert (=> b!262376 (= res!120668 (= (value!24723 (_1!2317 (get!1238 lt!107104))) (apply!737 (transformation!716 (rule!1301 (_1!2317 (get!1238 lt!107104)))) (seqFromList!800 (originalCharacters!759 (_1!2317 (get!1238 lt!107104)))))))))

(declare-fun b!262377 () Bool)

(assert (=> b!262377 (= e!162909 call!14073)))

(assert (= (and d!75276 c!49636) b!262377))

(assert (= (and d!75276 (not c!49636)) b!262374))

(assert (= (or b!262377 b!262374) bm!14068))

(assert (= (and d!75276 (not res!120674)) b!262371))

(assert (= (and b!262371 res!120672) b!262375))

(assert (= (and b!262375 res!120673) b!262373))

(assert (= (and b!262373 res!120669) b!262372))

(assert (= (and b!262372 res!120671) b!262376))

(assert (= (and b!262376 res!120668) b!262370))

(assert (= (and b!262370 res!120670) b!262369))

(declare-fun m!326613 () Bool)

(assert (=> b!262372 m!326613))

(declare-fun m!326615 () Bool)

(assert (=> b!262372 m!326615))

(assert (=> b!262372 m!326615))

(declare-fun m!326617 () Bool)

(assert (=> b!262372 m!326617))

(assert (=> b!262372 m!326617))

(declare-fun m!326619 () Bool)

(assert (=> b!262372 m!326619))

(assert (=> b!262374 m!324729))

(declare-fun m!326621 () Bool)

(assert (=> b!262374 m!326621))

(assert (=> b!262375 m!326613))

(assert (=> b!262375 m!326615))

(assert (=> b!262375 m!326615))

(assert (=> b!262375 m!326617))

(assert (=> bm!14068 m!324729))

(declare-fun m!326623 () Bool)

(assert (=> bm!14068 m!326623))

(assert (=> b!262369 m!326613))

(declare-fun m!326625 () Bool)

(assert (=> b!262369 m!326625))

(assert (=> b!262376 m!326613))

(declare-fun m!326627 () Bool)

(assert (=> b!262376 m!326627))

(assert (=> b!262376 m!326627))

(declare-fun m!326629 () Bool)

(assert (=> b!262376 m!326629))

(assert (=> b!262370 m!326613))

(assert (=> b!262370 m!326615))

(assert (=> b!262370 m!326615))

(assert (=> b!262370 m!326617))

(assert (=> b!262370 m!326617))

(declare-fun m!326631 () Bool)

(assert (=> b!262370 m!326631))

(assert (=> b!262373 m!326613))

(declare-fun m!326633 () Bool)

(assert (=> b!262373 m!326633))

(assert (=> b!262373 m!324729))

(declare-fun m!326635 () Bool)

(assert (=> b!262373 m!326635))

(declare-fun m!326637 () Bool)

(assert (=> d!75276 m!326637))

(assert (=> d!75276 m!324729))

(assert (=> d!75276 m!324729))

(declare-fun m!326639 () Bool)

(assert (=> d!75276 m!326639))

(assert (=> d!75276 m!324729))

(assert (=> d!75276 m!324729))

(declare-fun m!326641 () Bool)

(assert (=> d!75276 m!326641))

(assert (=> d!75276 m!325421))

(declare-fun m!326643 () Bool)

(assert (=> b!262371 m!326643))

(assert (=> b!261477 d!75276))

(declare-fun b!262378 () Bool)

(declare-fun e!162910 () List!3766)

(assert (=> b!262378 (= e!162910 lt!106560)))

(declare-fun e!162911 () Bool)

(declare-fun lt!107109 () List!3766)

(declare-fun b!262381 () Bool)

(assert (=> b!262381 (= e!162911 (or (not (= lt!106560 Nil!3756)) (= lt!107109 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))))))))

(declare-fun d!75278 () Bool)

(assert (=> d!75278 e!162911))

(declare-fun res!120676 () Bool)

(assert (=> d!75278 (=> (not res!120676) (not e!162911))))

(assert (=> d!75278 (= res!120676 (= (content!530 lt!107109) (set.union (content!530 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465))))) (content!530 lt!106560))))))

(assert (=> d!75278 (= lt!107109 e!162910)))

(declare-fun c!49637 () Bool)

(assert (=> d!75278 (= c!49637 (is-Nil!3756 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465))))))))

(assert (=> d!75278 (= (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) lt!106560) lt!107109)))

(declare-fun b!262379 () Bool)

(assert (=> b!262379 (= e!162910 (Cons!3756 (h!9153 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465))))) (++!965 (t!37000 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465))))) lt!106560)))))

(declare-fun b!262380 () Bool)

(declare-fun res!120675 () Bool)

(assert (=> b!262380 (=> (not res!120675) (not e!162911))))

(assert (=> b!262380 (= res!120675 (= (size!2988 lt!107109) (+ (size!2988 (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465))))) (size!2988 lt!106560))))))

(assert (= (and d!75278 c!49637) b!262378))

(assert (= (and d!75278 (not c!49637)) b!262379))

(assert (= (and d!75278 res!120676) b!262380))

(assert (= (and b!262380 res!120675) b!262381))

(declare-fun m!326645 () Bool)

(assert (=> d!75278 m!326645))

(assert (=> d!75278 m!324735))

(declare-fun m!326647 () Bool)

(assert (=> d!75278 m!326647))

(assert (=> d!75278 m!325839))

(declare-fun m!326649 () Bool)

(assert (=> b!262379 m!326649))

(declare-fun m!326651 () Bool)

(assert (=> b!262380 m!326651))

(assert (=> b!262380 m!324735))

(declare-fun m!326653 () Bool)

(assert (=> b!262380 m!326653))

(assert (=> b!262380 m!325847))

(assert (=> b!261477 d!75278))

(declare-fun bs!28587 () Bool)

(declare-fun b!262384 () Bool)

(assert (= bs!28587 (and b!262384 d!74894)))

(declare-fun lambda!8790 () Int)

(assert (=> bs!28587 (not (= lambda!8790 lambda!8747))))

(declare-fun bs!28588 () Bool)

(assert (= bs!28588 (and b!262384 d!75172)))

(assert (=> bs!28588 (= lambda!8790 lambda!8783)))

(declare-fun bs!28589 () Bool)

(assert (= bs!28589 (and b!262384 b!262322)))

(assert (=> bs!28589 (= lambda!8790 lambda!8786)))

(declare-fun bs!28590 () Bool)

(assert (= bs!28590 (and b!262384 b!261581)))

(assert (=> bs!28590 (= lambda!8790 lambda!8748)))

(declare-fun bs!28591 () Bool)

(assert (= bs!28591 (and b!262384 d!74924)))

(assert (=> bs!28591 (= lambda!8790 lambda!8759)))

(declare-fun bs!28592 () Bool)

(assert (= bs!28592 (and b!262384 d!75040)))

(assert (=> bs!28592 (not (= lambda!8790 lambda!8771))))

(declare-fun bs!28593 () Bool)

(assert (= bs!28593 (and b!262384 b!261306)))

(assert (=> bs!28593 (not (= lambda!8790 lambda!8733))))

(declare-fun bs!28594 () Bool)

(assert (= bs!28594 (and b!262384 d!75150)))

(assert (=> bs!28594 (not (= lambda!8790 lambda!8779))))

(declare-fun bs!28595 () Bool)

(assert (= bs!28595 (and b!262384 b!262161)))

(assert (=> bs!28595 (= lambda!8790 lambda!8780)))

(declare-fun bs!28596 () Bool)

(assert (= bs!28596 (and b!262384 b!261661)))

(assert (=> bs!28596 (= lambda!8790 lambda!8762)))

(declare-fun bs!28597 () Bool)

(assert (= bs!28597 (and b!262384 d!74936)))

(assert (=> bs!28597 (not (= lambda!8790 lambda!8760))))

(declare-fun bs!28598 () Bool)

(assert (= bs!28598 (and b!262384 b!261685)))

(assert (=> bs!28598 (= lambda!8790 lambda!8764)))

(declare-fun bs!28599 () Bool)

(assert (= bs!28599 (and b!262384 b!261477)))

(assert (=> bs!28599 (= lambda!8790 lambda!8739)))

(declare-fun bs!28600 () Bool)

(assert (= bs!28600 (and b!262384 b!262000)))

(assert (=> bs!28600 (= lambda!8790 lambda!8772)))

(declare-fun b!262392 () Bool)

(declare-fun e!162918 () Bool)

(assert (=> b!262392 (= e!162918 true)))

(declare-fun b!262391 () Bool)

(declare-fun e!162917 () Bool)

(assert (=> b!262391 (= e!162917 e!162918)))

(declare-fun b!262390 () Bool)

(declare-fun e!162916 () Bool)

(assert (=> b!262390 (= e!162916 e!162917)))

(assert (=> b!262384 e!162916))

(assert (= b!262391 b!262392))

(assert (= b!262390 b!262391))

(assert (= (and b!262384 (is-Cons!3758 rules!1920)) b!262390))

(assert (=> b!262392 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8790))))

(assert (=> b!262392 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8790))))

(assert (=> b!262384 true))

(declare-fun b!262382 () Bool)

(declare-fun e!162914 () List!3766)

(declare-fun call!14075 () List!3766)

(assert (=> b!262382 (= e!162914 call!14075)))

(declare-fun b!262383 () Bool)

(declare-fun e!162912 () List!3766)

(declare-fun lt!107115 () List!3766)

(assert (=> b!262383 (= e!162912 (++!965 call!14075 lt!107115))))

(declare-fun call!14076 () List!3766)

(declare-fun c!49638 () Bool)

(declare-fun call!14078 () BalanceConc!2516)

(declare-fun call!14074 () BalanceConc!2516)

(declare-fun bm!14069 () Bool)

(assert (=> bm!14069 (= call!14076 (list!1512 (ite c!49638 call!14074 call!14078)))))

(declare-fun bm!14070 () Bool)

(assert (=> bm!14070 (= call!14078 call!14074)))

(declare-fun b!262385 () Bool)

(assert (=> b!262385 (= e!162912 Nil!3756)))

(assert (=> b!262385 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 (t!37001 tokens!465))))) (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (t!37001 (t!37001 tokens!465)))) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!107110 () Unit!4655)

(declare-fun Unit!4692 () Unit!4655)

(assert (=> b!262385 (= lt!107110 Unit!4692)))

(declare-fun call!14077 () List!3766)

(declare-fun lt!107112 () Unit!4655)

(assert (=> b!262385 (= lt!107112 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!14077 lt!107115))))

(assert (=> b!262385 false))

(declare-fun lt!107113 () Unit!4655)

(declare-fun Unit!4693 () Unit!4655)

(assert (=> b!262385 (= lt!107113 Unit!4693)))

(declare-fun b!262386 () Bool)

(declare-fun e!162913 () BalanceConc!2516)

(assert (=> b!262386 (= e!162913 (charsOf!361 separatorToken!170))))

(declare-fun b!262387 () Bool)

(declare-fun e!162915 () List!3766)

(assert (=> b!262387 (= e!162915 Nil!3756)))

(declare-fun b!262388 () Bool)

(assert (=> b!262388 (= e!162913 call!14078)))

(declare-fun bm!14071 () Bool)

(assert (=> bm!14071 (= call!14077 (list!1512 e!162913))))

(declare-fun c!49639 () Bool)

(declare-fun c!49641 () Bool)

(assert (=> bm!14071 (= c!49639 c!49641)))

(declare-fun bm!14072 () Bool)

(assert (=> bm!14072 (= call!14074 (charsOf!361 (h!9154 (t!37001 (t!37001 tokens!465)))))))

(declare-fun d!75280 () Bool)

(declare-fun c!49640 () Bool)

(assert (=> d!75280 (= c!49640 (is-Cons!3757 (t!37001 (t!37001 tokens!465))))))

(assert (=> d!75280 (= (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 (t!37001 tokens!465)) separatorToken!170) e!162915)))

(assert (=> b!262384 (= e!162915 e!162914)))

(declare-fun lt!107114 () Unit!4655)

(assert (=> b!262384 (= lt!107114 (forallContained!273 (t!37001 (t!37001 tokens!465)) lambda!8790 (h!9154 (t!37001 (t!37001 tokens!465)))))))

(assert (=> b!262384 (= lt!107115 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 (t!37001 (t!37001 tokens!465))) separatorToken!170))))

(declare-fun lt!107111 () Option!780)

(assert (=> b!262384 (= lt!107111 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 (t!37001 (t!37001 tokens!465))))) lt!107115)))))

(assert (=> b!262384 (= c!49638 (and (is-Some!779 lt!107111) (= (_1!2317 (v!14618 lt!107111)) (h!9154 (t!37001 (t!37001 tokens!465))))))))

(declare-fun b!262389 () Bool)

(assert (=> b!262389 (= c!49641 (and (is-Some!779 lt!107111) (not (= (_1!2317 (v!14618 lt!107111)) (h!9154 (t!37001 (t!37001 tokens!465)))))))))

(assert (=> b!262389 (= e!162914 e!162912)))

(declare-fun bm!14073 () Bool)

(assert (=> bm!14073 (= call!14075 (++!965 call!14076 (ite c!49638 lt!107115 call!14077)))))

(assert (= (and d!75280 c!49640) b!262384))

(assert (= (and d!75280 (not c!49640)) b!262387))

(assert (= (and b!262384 c!49638) b!262382))

(assert (= (and b!262384 (not c!49638)) b!262389))

(assert (= (and b!262389 c!49641) b!262383))

(assert (= (and b!262389 (not c!49641)) b!262385))

(assert (= (or b!262383 b!262385) bm!14070))

(assert (= (or b!262383 b!262385) bm!14071))

(assert (= (and bm!14071 c!49639) b!262386))

(assert (= (and bm!14071 (not c!49639)) b!262388))

(assert (= (or b!262382 bm!14070) bm!14072))

(assert (= (or b!262382 b!262383) bm!14069))

(assert (= (or b!262382 b!262383) bm!14073))

(declare-fun m!326655 () Bool)

(assert (=> bm!14071 m!326655))

(declare-fun m!326657 () Bool)

(assert (=> b!262385 m!326657))

(assert (=> b!262385 m!326657))

(declare-fun m!326659 () Bool)

(assert (=> b!262385 m!326659))

(assert (=> b!262385 m!326657))

(declare-fun m!326661 () Bool)

(assert (=> b!262385 m!326661))

(declare-fun m!326663 () Bool)

(assert (=> b!262385 m!326663))

(declare-fun m!326665 () Bool)

(assert (=> bm!14072 m!326665))

(declare-fun m!326667 () Bool)

(assert (=> b!262383 m!326667))

(declare-fun m!326669 () Bool)

(assert (=> bm!14069 m!326669))

(declare-fun m!326671 () Bool)

(assert (=> b!262384 m!326671))

(declare-fun m!326673 () Bool)

(assert (=> b!262384 m!326673))

(declare-fun m!326675 () Bool)

(assert (=> b!262384 m!326675))

(assert (=> b!262384 m!326665))

(declare-fun m!326677 () Bool)

(assert (=> b!262384 m!326677))

(assert (=> b!262384 m!326665))

(declare-fun m!326679 () Bool)

(assert (=> b!262384 m!326679))

(assert (=> b!262384 m!326677))

(assert (=> b!262384 m!326671))

(assert (=> b!262386 m!324487))

(declare-fun m!326681 () Bool)

(assert (=> bm!14073 m!326681))

(assert (=> b!261477 d!75280))

(declare-fun d!75282 () Bool)

(assert (=> d!75282 (= (list!1512 (charsOf!361 (h!9154 (t!37001 tokens!465)))) (list!1514 (c!49414 (charsOf!361 (h!9154 (t!37001 tokens!465))))))))

(declare-fun bs!28601 () Bool)

(assert (= bs!28601 d!75282))

(declare-fun m!326683 () Bool)

(assert (=> bs!28601 m!326683))

(assert (=> b!261477 d!75282))

(assert (=> b!261477 d!75064))

(declare-fun d!75284 () Bool)

(declare-fun lt!107116 () Int)

(assert (=> d!75284 (>= lt!107116 0)))

(declare-fun e!162919 () Int)

(assert (=> d!75284 (= lt!107116 e!162919)))

(declare-fun c!49642 () Bool)

(assert (=> d!75284 (= c!49642 (is-Nil!3756 lt!106562))))

(assert (=> d!75284 (= (size!2988 lt!106562) lt!107116)))

(declare-fun b!262393 () Bool)

(assert (=> b!262393 (= e!162919 0)))

(declare-fun b!262394 () Bool)

(assert (=> b!262394 (= e!162919 (+ 1 (size!2988 (t!37000 lt!106562))))))

(assert (= (and d!75284 c!49642) b!262393))

(assert (= (and d!75284 (not c!49642)) b!262394))

(declare-fun m!326685 () Bool)

(assert (=> b!262394 m!326685))

(assert (=> b!261502 d!75284))

(assert (=> b!261502 d!75268))

(assert (=> b!261502 d!74994))

(assert (=> bm!13995 d!75050))

(declare-fun d!75286 () Bool)

(assert (=> d!75286 (= (list!1512 (ite c!49499 call!14027 call!14031)) (list!1514 (c!49414 (ite c!49499 call!14027 call!14031))))))

(declare-fun bs!28602 () Bool)

(assert (= bs!28602 d!75286))

(declare-fun m!326687 () Bool)

(assert (=> bs!28602 m!326687))

(assert (=> bm!14022 d!75286))

(declare-fun lt!107117 () BalanceConc!2516)

(declare-fun d!75288 () Bool)

(assert (=> d!75288 (= (list!1512 lt!107117) (originalCharacters!759 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))))

(assert (=> d!75288 (= lt!107117 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))) (value!24723 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))))

(assert (=> d!75288 (= (charsOf!361 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))) lt!107117)))

(declare-fun b_lambda!8081 () Bool)

(assert (=> (not b_lambda!8081) (not d!75288)))

(declare-fun t!37127 () Bool)

(declare-fun tb!14227 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37127) tb!14227))

(declare-fun tp!100641 () Bool)

(declare-fun b!262395 () Bool)

(declare-fun e!162920 () Bool)

(assert (=> b!262395 (= e!162920 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))) (value!24723 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) tp!100641))))

(declare-fun result!17718 () Bool)

(assert (=> tb!14227 (= result!17718 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))) (value!24723 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018))))) e!162920))))

(assert (= tb!14227 b!262395))

(declare-fun m!326689 () Bool)

(assert (=> b!262395 m!326689))

(declare-fun m!326691 () Bool)

(assert (=> tb!14227 m!326691))

(assert (=> d!75288 t!37127))

(declare-fun b_and!20413 () Bool)

(assert (= b_and!20403 (and (=> t!37127 result!17718) b_and!20413)))

(declare-fun tb!14229 () Bool)

(declare-fun t!37129 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37129) tb!14229))

(declare-fun result!17720 () Bool)

(assert (= result!17720 result!17718))

(assert (=> d!75288 t!37129))

(declare-fun b_and!20415 () Bool)

(assert (= b_and!20411 (and (=> t!37129 result!17720) b_and!20415)))

(declare-fun tb!14231 () Bool)

(declare-fun t!37131 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37131) tb!14231))

(declare-fun result!17722 () Bool)

(assert (= result!17722 result!17718))

(assert (=> d!75288 t!37131))

(declare-fun b_and!20417 () Bool)

(assert (= b_and!20405 (and (=> t!37131 result!17722) b_and!20417)))

(declare-fun t!37133 () Bool)

(declare-fun tb!14233 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37133) tb!14233))

(declare-fun result!17724 () Bool)

(assert (= result!17724 result!17718))

(assert (=> d!75288 t!37133))

(declare-fun b_and!20419 () Bool)

(assert (= b_and!20407 (and (=> t!37133 result!17724) b_and!20419)))

(declare-fun t!37135 () Bool)

(declare-fun tb!14235 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37135) tb!14235))

(declare-fun result!17726 () Bool)

(assert (= result!17726 result!17718))

(assert (=> d!75288 t!37135))

(declare-fun b_and!20421 () Bool)

(assert (= b_and!20409 (and (=> t!37135 result!17726) b_and!20421)))

(declare-fun m!326693 () Bool)

(assert (=> d!75288 m!326693))

(declare-fun m!326695 () Bool)

(assert (=> d!75288 m!326695))

(assert (=> bm!14016 d!75288))

(declare-fun d!75290 () Bool)

(declare-fun c!49643 () Bool)

(assert (=> d!75290 (= c!49643 (is-IntegerValue!2214 (value!24723 (h!9154 (t!37001 tokens!465)))))))

(declare-fun e!162923 () Bool)

(assert (=> d!75290 (= (inv!21 (value!24723 (h!9154 (t!37001 tokens!465)))) e!162923)))

(declare-fun b!262396 () Bool)

(assert (=> b!262396 (= e!162923 (inv!16 (value!24723 (h!9154 (t!37001 tokens!465)))))))

(declare-fun b!262397 () Bool)

(declare-fun e!162921 () Bool)

(assert (=> b!262397 (= e!162923 e!162921)))

(declare-fun c!49644 () Bool)

(assert (=> b!262397 (= c!49644 (is-IntegerValue!2215 (value!24723 (h!9154 (t!37001 tokens!465)))))))

(declare-fun b!262398 () Bool)

(declare-fun res!120677 () Bool)

(declare-fun e!162922 () Bool)

(assert (=> b!262398 (=> res!120677 e!162922)))

(assert (=> b!262398 (= res!120677 (not (is-IntegerValue!2216 (value!24723 (h!9154 (t!37001 tokens!465))))))))

(assert (=> b!262398 (= e!162921 e!162922)))

(declare-fun b!262399 () Bool)

(assert (=> b!262399 (= e!162921 (inv!17 (value!24723 (h!9154 (t!37001 tokens!465)))))))

(declare-fun b!262400 () Bool)

(assert (=> b!262400 (= e!162922 (inv!15 (value!24723 (h!9154 (t!37001 tokens!465)))))))

(assert (= (and d!75290 c!49643) b!262396))

(assert (= (and d!75290 (not c!49643)) b!262397))

(assert (= (and b!262397 c!49644) b!262399))

(assert (= (and b!262397 (not c!49644)) b!262398))

(assert (= (and b!262398 (not res!120677)) b!262400))

(declare-fun m!326697 () Bool)

(assert (=> b!262396 m!326697))

(declare-fun m!326699 () Bool)

(assert (=> b!262399 m!326699))

(declare-fun m!326701 () Bool)

(assert (=> b!262400 m!326701))

(assert (=> b!261790 d!75290))

(declare-fun bs!28603 () Bool)

(declare-fun d!75292 () Bool)

(assert (= bs!28603 (and d!75292 d!75076)))

(declare-fun lambda!8791 () Int)

(assert (=> bs!28603 (= (= (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (= lambda!8791 lambda!8775))))

(declare-fun bs!28604 () Bool)

(assert (= bs!28604 (and d!75292 d!75208)))

(assert (=> bs!28604 (= (= (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170)))) (= lambda!8791 lambda!8784))))

(assert (=> d!75292 true))

(assert (=> d!75292 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (dynLambda!1898 order!2855 lambda!8791))))

(assert (=> d!75292 (= (equivClasses!229 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (Forall2!141 lambda!8791))))

(declare-fun bs!28605 () Bool)

(assert (= bs!28605 d!75292))

(declare-fun m!326703 () Bool)

(assert (=> bs!28605 m!326703))

(assert (=> b!261729 d!75292))

(declare-fun b!262403 () Bool)

(declare-fun res!120681 () Bool)

(declare-fun e!162924 () Bool)

(assert (=> b!262403 (=> (not res!120681) (not e!162924))))

(assert (=> b!262403 (= res!120681 (>= (height!143 (++!969 (c!49414 call!13997) (c!49414 lt!106618))) (max!0 (height!143 (c!49414 call!13997)) (height!143 (c!49414 lt!106618)))))))

(declare-fun b!262404 () Bool)

(declare-fun lt!107118 () BalanceConc!2516)

(assert (=> b!262404 (= e!162924 (= (list!1512 lt!107118) (++!965 (list!1512 call!13997) (list!1512 lt!106618))))))

(declare-fun b!262402 () Bool)

(declare-fun res!120679 () Bool)

(assert (=> b!262402 (=> (not res!120679) (not e!162924))))

(assert (=> b!262402 (= res!120679 (<= (height!143 (++!969 (c!49414 call!13997) (c!49414 lt!106618))) (+ (max!0 (height!143 (c!49414 call!13997)) (height!143 (c!49414 lt!106618))) 1)))))

(declare-fun d!75294 () Bool)

(assert (=> d!75294 e!162924))

(declare-fun res!120678 () Bool)

(assert (=> d!75294 (=> (not res!120678) (not e!162924))))

(assert (=> d!75294 (= res!120678 (appendAssocInst!56 (c!49414 call!13997) (c!49414 lt!106618)))))

(assert (=> d!75294 (= lt!107118 (BalanceConc!2517 (++!969 (c!49414 call!13997) (c!49414 lt!106618))))))

(assert (=> d!75294 (= (++!967 call!13997 lt!106618) lt!107118)))

(declare-fun b!262401 () Bool)

(declare-fun res!120680 () Bool)

(assert (=> b!262401 (=> (not res!120680) (not e!162924))))

(assert (=> b!262401 (= res!120680 (isBalanced!335 (++!969 (c!49414 call!13997) (c!49414 lt!106618))))))

(assert (= (and d!75294 res!120678) b!262401))

(assert (= (and b!262401 res!120680) b!262402))

(assert (= (and b!262402 res!120679) b!262403))

(assert (= (and b!262403 res!120681) b!262404))

(declare-fun m!326705 () Bool)

(assert (=> b!262402 m!326705))

(declare-fun m!326707 () Bool)

(assert (=> b!262402 m!326707))

(assert (=> b!262402 m!326705))

(assert (=> b!262402 m!325387))

(declare-fun m!326709 () Bool)

(assert (=> b!262402 m!326709))

(assert (=> b!262402 m!326709))

(assert (=> b!262402 m!325387))

(declare-fun m!326711 () Bool)

(assert (=> b!262402 m!326711))

(declare-fun m!326713 () Bool)

(assert (=> d!75294 m!326713))

(assert (=> d!75294 m!326705))

(assert (=> b!262403 m!326705))

(assert (=> b!262403 m!326707))

(assert (=> b!262403 m!326705))

(assert (=> b!262403 m!325387))

(assert (=> b!262403 m!326709))

(assert (=> b!262403 m!326709))

(assert (=> b!262403 m!325387))

(assert (=> b!262403 m!326711))

(declare-fun m!326715 () Bool)

(assert (=> b!262404 m!326715))

(declare-fun m!326717 () Bool)

(assert (=> b!262404 m!326717))

(assert (=> b!262404 m!324893))

(assert (=> b!262404 m!326717))

(assert (=> b!262404 m!324893))

(declare-fun m!326719 () Bool)

(assert (=> b!262404 m!326719))

(assert (=> b!262401 m!326705))

(assert (=> b!262401 m!326705))

(declare-fun m!326721 () Bool)

(assert (=> b!262401 m!326721))

(assert (=> b!261584 d!75294))

(declare-fun d!75296 () Bool)

(declare-fun c!49645 () Bool)

(assert (=> d!75296 (= c!49645 (is-Nil!3756 lt!106562))))

(declare-fun e!162925 () (Set C!2802))

(assert (=> d!75296 (= (content!530 lt!106562) e!162925)))

(declare-fun b!262405 () Bool)

(assert (=> b!262405 (= e!162925 (as set.empty (Set C!2802)))))

(declare-fun b!262406 () Bool)

(assert (=> b!262406 (= e!162925 (set.union (set.insert (h!9153 lt!106562) (as set.empty (Set C!2802))) (content!530 (t!37000 lt!106562))))))

(assert (= (and d!75296 c!49645) b!262405))

(assert (= (and d!75296 (not c!49645)) b!262406))

(declare-fun m!326723 () Bool)

(assert (=> b!262406 m!326723))

(declare-fun m!326725 () Bool)

(assert (=> b!262406 m!326725))

(assert (=> d!74892 d!75296))

(assert (=> d!74892 d!75212))

(assert (=> d!74892 d!75060))

(declare-fun e!162927 () List!3766)

(declare-fun b!262410 () Bool)

(assert (=> b!262410 (= e!162927 (++!965 (list!1514 (left!3087 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0)))) (list!1514 (right!3417 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!262409 () Bool)

(assert (=> b!262409 (= e!162927 (list!1519 (xs!3853 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0)))))))

(declare-fun b!262407 () Bool)

(declare-fun e!162926 () List!3766)

(assert (=> b!262407 (= e!162926 Nil!3756)))

(declare-fun b!262408 () Bool)

(assert (=> b!262408 (= e!162926 e!162927)))

(declare-fun c!49647 () Bool)

(assert (=> b!262408 (= c!49647 (is-Leaf!1952 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0))))))

(declare-fun d!75298 () Bool)

(declare-fun c!49646 () Bool)

(assert (=> d!75298 (= c!49646 (is-Empty!1254 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0))))))

(assert (=> d!75298 (= (list!1514 (c!49414 (printWithSeparatorTokenWhenNeededRec!277 thiss!17480 rules!1920 (seqFromList!799 (t!37001 tokens!465)) separatorToken!170 0))) e!162926)))

(assert (= (and d!75298 c!49646) b!262407))

(assert (= (and d!75298 (not c!49646)) b!262408))

(assert (= (and b!262408 c!49647) b!262409))

(assert (= (and b!262408 (not c!49647)) b!262410))

(declare-fun m!326727 () Bool)

(assert (=> b!262410 m!326727))

(declare-fun m!326729 () Bool)

(assert (=> b!262410 m!326729))

(assert (=> b!262410 m!326727))

(assert (=> b!262410 m!326729))

(declare-fun m!326731 () Bool)

(assert (=> b!262410 m!326731))

(declare-fun m!326733 () Bool)

(assert (=> b!262409 m!326733))

(assert (=> d!74880 d!75298))

(declare-fun d!75300 () Bool)

(declare-fun lt!107119 () Token!1176)

(assert (=> d!75300 (= lt!107119 (apply!732 (list!1515 (_1!2316 lt!106537)) 0))))

(assert (=> d!75300 (= lt!107119 (apply!735 (c!49416 (_1!2316 lt!106537)) 0))))

(declare-fun e!162928 () Bool)

(assert (=> d!75300 e!162928))

(declare-fun res!120682 () Bool)

(assert (=> d!75300 (=> (not res!120682) (not e!162928))))

(assert (=> d!75300 (= res!120682 (<= 0 0))))

(assert (=> d!75300 (= (apply!731 (_1!2316 lt!106537) 0) lt!107119)))

(declare-fun b!262411 () Bool)

(assert (=> b!262411 (= e!162928 (< 0 (size!2989 (_1!2316 lt!106537))))))

(assert (= (and d!75300 res!120682) b!262411))

(assert (=> d!75300 m!326461))

(assert (=> d!75300 m!326461))

(declare-fun m!326735 () Bool)

(assert (=> d!75300 m!326735))

(declare-fun m!326737 () Bool)

(assert (=> d!75300 m!326737))

(assert (=> b!262411 m!324683))

(assert (=> b!261437 d!75300))

(declare-fun d!75302 () Bool)

(assert (=> d!75302 (= (isEmpty!2359 (originalCharacters!759 separatorToken!170)) (is-Nil!3756 (originalCharacters!759 separatorToken!170)))))

(assert (=> d!74852 d!75302))

(declare-fun b!262415 () Bool)

(declare-fun e!162930 () List!3766)

(assert (=> b!262415 (= e!162930 (++!965 (list!1514 (left!3087 (c!49414 (charsOf!361 separatorToken!170)))) (list!1514 (right!3417 (c!49414 (charsOf!361 separatorToken!170))))))))

(declare-fun b!262414 () Bool)

(assert (=> b!262414 (= e!162930 (list!1519 (xs!3853 (c!49414 (charsOf!361 separatorToken!170)))))))

(declare-fun b!262412 () Bool)

(declare-fun e!162929 () List!3766)

(assert (=> b!262412 (= e!162929 Nil!3756)))

(declare-fun b!262413 () Bool)

(assert (=> b!262413 (= e!162929 e!162930)))

(declare-fun c!49649 () Bool)

(assert (=> b!262413 (= c!49649 (is-Leaf!1952 (c!49414 (charsOf!361 separatorToken!170))))))

(declare-fun d!75304 () Bool)

(declare-fun c!49648 () Bool)

(assert (=> d!75304 (= c!49648 (is-Empty!1254 (c!49414 (charsOf!361 separatorToken!170))))))

(assert (=> d!75304 (= (list!1514 (c!49414 (charsOf!361 separatorToken!170))) e!162929)))

(assert (= (and d!75304 c!49648) b!262412))

(assert (= (and d!75304 (not c!49648)) b!262413))

(assert (= (and b!262413 c!49649) b!262414))

(assert (= (and b!262413 (not c!49649)) b!262415))

(declare-fun m!326739 () Bool)

(assert (=> b!262415 m!326739))

(declare-fun m!326741 () Bool)

(assert (=> b!262415 m!326741))

(assert (=> b!262415 m!326739))

(assert (=> b!262415 m!326741))

(declare-fun m!326743 () Bool)

(assert (=> b!262415 m!326743))

(declare-fun m!326745 () Bool)

(assert (=> b!262414 m!326745))

(assert (=> d!74878 d!75304))

(declare-fun b!262416 () Bool)

(declare-fun e!162931 () List!3766)

(assert (=> b!262416 (= e!162931 lt!106503)))

(declare-fun lt!107120 () List!3766)

(declare-fun e!162932 () Bool)

(declare-fun b!262419 () Bool)

(assert (=> b!262419 (= e!162932 (or (not (= lt!106503 Nil!3756)) (= lt!107120 (t!37000 lt!106502))))))

(declare-fun d!75306 () Bool)

(assert (=> d!75306 e!162932))

(declare-fun res!120684 () Bool)

(assert (=> d!75306 (=> (not res!120684) (not e!162932))))

(assert (=> d!75306 (= res!120684 (= (content!530 lt!107120) (set.union (content!530 (t!37000 lt!106502)) (content!530 lt!106503))))))

(assert (=> d!75306 (= lt!107120 e!162931)))

(declare-fun c!49650 () Bool)

(assert (=> d!75306 (= c!49650 (is-Nil!3756 (t!37000 lt!106502)))))

(assert (=> d!75306 (= (++!965 (t!37000 lt!106502) lt!106503) lt!107120)))

(declare-fun b!262417 () Bool)

(assert (=> b!262417 (= e!162931 (Cons!3756 (h!9153 (t!37000 lt!106502)) (++!965 (t!37000 (t!37000 lt!106502)) lt!106503)))))

(declare-fun b!262418 () Bool)

(declare-fun res!120683 () Bool)

(assert (=> b!262418 (=> (not res!120683) (not e!162932))))

(assert (=> b!262418 (= res!120683 (= (size!2988 lt!107120) (+ (size!2988 (t!37000 lt!106502)) (size!2988 lt!106503))))))

(assert (= (and d!75306 c!49650) b!262416))

(assert (= (and d!75306 (not c!49650)) b!262417))

(assert (= (and d!75306 res!120684) b!262418))

(assert (= (and b!262418 res!120683) b!262419))

(declare-fun m!326747 () Bool)

(assert (=> d!75306 m!326747))

(assert (=> d!75306 m!325349))

(assert (=> d!75306 m!324703))

(declare-fun m!326749 () Bool)

(assert (=> b!262417 m!326749))

(declare-fun m!326751 () Bool)

(assert (=> b!262418 m!326751))

(assert (=> b!262418 m!325701))

(assert (=> b!262418 m!324711))

(assert (=> b!261452 d!75306))

(declare-fun d!75308 () Bool)

(assert (=> d!75308 (= (list!1512 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))) (list!1514 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))))))

(declare-fun bs!28606 () Bool)

(assert (= bs!28606 d!75308))

(declare-fun m!326753 () Bool)

(assert (=> bs!28606 m!326753))

(assert (=> b!261596 d!75308))

(declare-fun d!75310 () Bool)

(declare-fun e!162933 () Bool)

(assert (=> d!75310 e!162933))

(declare-fun res!120685 () Bool)

(assert (=> d!75310 (=> (not res!120685) (not e!162933))))

(declare-fun lt!107121 () BalanceConc!2518)

(assert (=> d!75310 (= res!120685 (= (list!1515 lt!107121) (t!37001 tokens!465)))))

(assert (=> d!75310 (= lt!107121 (BalanceConc!2519 (fromList!163 (t!37001 tokens!465))))))

(assert (=> d!75310 (= (fromListB!295 (t!37001 tokens!465)) lt!107121)))

(declare-fun b!262420 () Bool)

(assert (=> b!262420 (= e!162933 (isBalanced!336 (fromList!163 (t!37001 tokens!465))))))

(assert (= (and d!75310 res!120685) b!262420))

(declare-fun m!326755 () Bool)

(assert (=> d!75310 m!326755))

(declare-fun m!326757 () Bool)

(assert (=> d!75310 m!326757))

(assert (=> b!262420 m!326757))

(assert (=> b!262420 m!326757))

(declare-fun m!326759 () Bool)

(assert (=> b!262420 m!326759))

(assert (=> d!74888 d!75310))

(assert (=> bm!14025 d!74916))

(assert (=> b!261687 d!74912))

(assert (=> d!74936 d!75092))

(declare-fun d!75312 () Bool)

(assert (=> d!75312 (forall!922 (dropList!151 lt!106499 0) lambda!8760)))

(declare-fun lt!107122 () Unit!4655)

(assert (=> d!75312 (= lt!107122 (choose!2415 (list!1515 lt!106499) (dropList!151 lt!106499 0) lambda!8760))))

(assert (=> d!75312 (forall!922 (list!1515 lt!106499) lambda!8760)))

(assert (=> d!75312 (= (lemmaContentSubsetPreservesForall!95 (list!1515 lt!106499) (dropList!151 lt!106499 0) lambda!8760) lt!107122)))

(declare-fun bs!28607 () Bool)

(assert (= bs!28607 d!75312))

(assert (=> bs!28607 m!325031))

(declare-fun m!326761 () Bool)

(assert (=> bs!28607 m!326761))

(assert (=> bs!28607 m!325005))

(assert (=> bs!28607 m!325031))

(declare-fun m!326763 () Bool)

(assert (=> bs!28607 m!326763))

(assert (=> bs!28607 m!325005))

(declare-fun m!326765 () Bool)

(assert (=> bs!28607 m!326765))

(assert (=> d!74936 d!75312))

(declare-fun bs!28608 () Bool)

(declare-fun b!262423 () Bool)

(assert (= bs!28608 (and b!262423 d!74894)))

(declare-fun lambda!8792 () Int)

(assert (=> bs!28608 (not (= lambda!8792 lambda!8747))))

(declare-fun bs!28609 () Bool)

(assert (= bs!28609 (and b!262423 d!75172)))

(assert (=> bs!28609 (= lambda!8792 lambda!8783)))

(declare-fun bs!28610 () Bool)

(assert (= bs!28610 (and b!262423 b!262322)))

(assert (=> bs!28610 (= lambda!8792 lambda!8786)))

(declare-fun bs!28611 () Bool)

(assert (= bs!28611 (and b!262423 b!261581)))

(assert (=> bs!28611 (= lambda!8792 lambda!8748)))

(declare-fun bs!28612 () Bool)

(assert (= bs!28612 (and b!262423 d!74924)))

(assert (=> bs!28612 (= lambda!8792 lambda!8759)))

(declare-fun bs!28613 () Bool)

(assert (= bs!28613 (and b!262423 d!75040)))

(assert (=> bs!28613 (not (= lambda!8792 lambda!8771))))

(declare-fun bs!28614 () Bool)

(assert (= bs!28614 (and b!262423 b!261306)))

(assert (=> bs!28614 (not (= lambda!8792 lambda!8733))))

(declare-fun bs!28615 () Bool)

(assert (= bs!28615 (and b!262423 d!75150)))

(assert (=> bs!28615 (not (= lambda!8792 lambda!8779))))

(declare-fun bs!28616 () Bool)

(assert (= bs!28616 (and b!262423 b!262161)))

(assert (=> bs!28616 (= lambda!8792 lambda!8780)))

(declare-fun bs!28617 () Bool)

(assert (= bs!28617 (and b!262423 b!262384)))

(assert (=> bs!28617 (= lambda!8792 lambda!8790)))

(declare-fun bs!28618 () Bool)

(assert (= bs!28618 (and b!262423 b!261661)))

(assert (=> bs!28618 (= lambda!8792 lambda!8762)))

(declare-fun bs!28619 () Bool)

(assert (= bs!28619 (and b!262423 d!74936)))

(assert (=> bs!28619 (not (= lambda!8792 lambda!8760))))

(declare-fun bs!28620 () Bool)

(assert (= bs!28620 (and b!262423 b!261685)))

(assert (=> bs!28620 (= lambda!8792 lambda!8764)))

(declare-fun bs!28621 () Bool)

(assert (= bs!28621 (and b!262423 b!261477)))

(assert (=> bs!28621 (= lambda!8792 lambda!8739)))

(declare-fun bs!28622 () Bool)

(assert (= bs!28622 (and b!262423 b!262000)))

(assert (=> bs!28622 (= lambda!8792 lambda!8772)))

(declare-fun b!262431 () Bool)

(declare-fun e!162940 () Bool)

(assert (=> b!262431 (= e!162940 true)))

(declare-fun b!262430 () Bool)

(declare-fun e!162939 () Bool)

(assert (=> b!262430 (= e!162939 e!162940)))

(declare-fun b!262429 () Bool)

(declare-fun e!162938 () Bool)

(assert (=> b!262429 (= e!162938 e!162939)))

(assert (=> b!262423 e!162938))

(assert (= b!262430 b!262431))

(assert (= b!262429 b!262430))

(assert (= (and b!262423 (is-Cons!3758 rules!1920)) b!262429))

(assert (=> b!262431 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8792))))

(assert (=> b!262431 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1890 order!2845 lambda!8792))))

(assert (=> b!262423 true))

(declare-fun b!262421 () Bool)

(declare-fun e!162936 () List!3766)

(declare-fun call!14080 () List!3766)

(assert (=> b!262421 (= e!162936 call!14080)))

(declare-fun b!262422 () Bool)

(declare-fun e!162934 () List!3766)

(declare-fun lt!107128 () List!3766)

(assert (=> b!262422 (= e!162934 (++!965 call!14080 lt!107128))))

(declare-fun bm!14074 () Bool)

(declare-fun call!14083 () BalanceConc!2516)

(declare-fun call!14081 () List!3766)

(declare-fun c!49651 () Bool)

(declare-fun call!14079 () BalanceConc!2516)

(assert (=> bm!14074 (= call!14081 (list!1512 (ite c!49651 call!14079 call!14083)))))

(declare-fun bm!14075 () Bool)

(assert (=> bm!14075 (= call!14083 call!14079)))

(declare-fun b!262424 () Bool)

(assert (=> b!262424 (= e!162934 Nil!3756)))

(assert (=> b!262424 (= (print!327 thiss!17480 (singletonSeq!262 (h!9154 (dropList!151 lt!106499 0)))) (printTailRec!290 thiss!17480 (singletonSeq!262 (h!9154 (dropList!151 lt!106499 0))) 0 (BalanceConc!2517 Empty!1254)))))

(declare-fun lt!107123 () Unit!4655)

(declare-fun Unit!4696 () Unit!4655)

(assert (=> b!262424 (= lt!107123 Unit!4696)))

(declare-fun call!14082 () List!3766)

(declare-fun lt!107125 () Unit!4655)

(assert (=> b!262424 (= lt!107125 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!99 thiss!17480 rules!1920 call!14082 lt!107128))))

(assert (=> b!262424 false))

(declare-fun lt!107126 () Unit!4655)

(declare-fun Unit!4697 () Unit!4655)

(assert (=> b!262424 (= lt!107126 Unit!4697)))

(declare-fun b!262425 () Bool)

(declare-fun e!162935 () BalanceConc!2516)

(assert (=> b!262425 (= e!162935 (charsOf!361 separatorToken!170))))

(declare-fun b!262426 () Bool)

(declare-fun e!162937 () List!3766)

(assert (=> b!262426 (= e!162937 Nil!3756)))

(declare-fun b!262427 () Bool)

(assert (=> b!262427 (= e!162935 call!14083)))

(declare-fun bm!14076 () Bool)

(assert (=> bm!14076 (= call!14082 (list!1512 e!162935))))

(declare-fun c!49652 () Bool)

(declare-fun c!49654 () Bool)

(assert (=> bm!14076 (= c!49652 c!49654)))

(declare-fun bm!14077 () Bool)

(assert (=> bm!14077 (= call!14079 (charsOf!361 (h!9154 (dropList!151 lt!106499 0))))))

(declare-fun d!75314 () Bool)

(declare-fun c!49653 () Bool)

(assert (=> d!75314 (= c!49653 (is-Cons!3757 (dropList!151 lt!106499 0)))))

(assert (=> d!75314 (= (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (dropList!151 lt!106499 0) separatorToken!170) e!162937)))

(assert (=> b!262423 (= e!162937 e!162936)))

(declare-fun lt!107127 () Unit!4655)

(assert (=> b!262423 (= lt!107127 (forallContained!273 (dropList!151 lt!106499 0) lambda!8792 (h!9154 (dropList!151 lt!106499 0))))))

(assert (=> b!262423 (= lt!107128 (printWithSeparatorTokenWhenNeededList!285 thiss!17480 rules!1920 (t!37001 (dropList!151 lt!106499 0)) separatorToken!170))))

(declare-fun lt!107124 () Option!780)

(assert (=> b!262423 (= lt!107124 (maxPrefix!322 thiss!17480 rules!1920 (++!965 (list!1512 (charsOf!361 (h!9154 (dropList!151 lt!106499 0)))) lt!107128)))))

(assert (=> b!262423 (= c!49651 (and (is-Some!779 lt!107124) (= (_1!2317 (v!14618 lt!107124)) (h!9154 (dropList!151 lt!106499 0)))))))

(declare-fun b!262428 () Bool)

(assert (=> b!262428 (= c!49654 (and (is-Some!779 lt!107124) (not (= (_1!2317 (v!14618 lt!107124)) (h!9154 (dropList!151 lt!106499 0))))))))

(assert (=> b!262428 (= e!162936 e!162934)))

(declare-fun bm!14078 () Bool)

(assert (=> bm!14078 (= call!14080 (++!965 call!14081 (ite c!49651 lt!107128 call!14082)))))

(assert (= (and d!75314 c!49653) b!262423))

(assert (= (and d!75314 (not c!49653)) b!262426))

(assert (= (and b!262423 c!49651) b!262421))

(assert (= (and b!262423 (not c!49651)) b!262428))

(assert (= (and b!262428 c!49654) b!262422))

(assert (= (and b!262428 (not c!49654)) b!262424))

(assert (= (or b!262422 b!262424) bm!14075))

(assert (= (or b!262422 b!262424) bm!14076))

(assert (= (and bm!14076 c!49652) b!262425))

(assert (= (and bm!14076 (not c!49652)) b!262427))

(assert (= (or b!262421 bm!14075) bm!14077))

(assert (= (or b!262421 b!262422) bm!14074))

(assert (= (or b!262421 b!262422) bm!14078))

(declare-fun m!326767 () Bool)

(assert (=> bm!14076 m!326767))

(declare-fun m!326769 () Bool)

(assert (=> b!262424 m!326769))

(assert (=> b!262424 m!326769))

(declare-fun m!326771 () Bool)

(assert (=> b!262424 m!326771))

(assert (=> b!262424 m!326769))

(declare-fun m!326773 () Bool)

(assert (=> b!262424 m!326773))

(declare-fun m!326775 () Bool)

(assert (=> b!262424 m!326775))

(declare-fun m!326777 () Bool)

(assert (=> bm!14077 m!326777))

(declare-fun m!326779 () Bool)

(assert (=> b!262422 m!326779))

(declare-fun m!326781 () Bool)

(assert (=> bm!14074 m!326781))

(declare-fun m!326783 () Bool)

(assert (=> b!262423 m!326783))

(declare-fun m!326785 () Bool)

(assert (=> b!262423 m!326785))

(assert (=> b!262423 m!325031))

(declare-fun m!326787 () Bool)

(assert (=> b!262423 m!326787))

(assert (=> b!262423 m!326777))

(declare-fun m!326789 () Bool)

(assert (=> b!262423 m!326789))

(assert (=> b!262423 m!326777))

(declare-fun m!326791 () Bool)

(assert (=> b!262423 m!326791))

(assert (=> b!262423 m!326789))

(assert (=> b!262423 m!326783))

(assert (=> b!262425 m!324487))

(declare-fun m!326793 () Bool)

(assert (=> bm!14078 m!326793))

(assert (=> d!74936 d!75314))

(declare-fun d!75316 () Bool)

(assert (=> d!75316 (= (list!1512 lt!106687) (list!1514 (c!49414 lt!106687)))))

(declare-fun bs!28623 () Bool)

(assert (= bs!28623 d!75316))

(declare-fun m!326795 () Bool)

(assert (=> bs!28623 m!326795))

(assert (=> d!74936 d!75316))

(declare-fun d!75318 () Bool)

(assert (=> d!75318 (= (dropList!151 lt!106499 0) (drop!204 (list!1518 (c!49416 lt!106499)) 0))))

(declare-fun bs!28624 () Bool)

(assert (= bs!28624 d!75318))

(assert (=> bs!28624 m!325715))

(assert (=> bs!28624 m!325715))

(declare-fun m!326797 () Bool)

(assert (=> bs!28624 m!326797))

(assert (=> d!74936 d!75318))

(assert (=> d!74936 d!75086))

(declare-fun d!75320 () Bool)

(declare-fun lt!107129 () BalanceConc!2516)

(assert (=> d!75320 (= (list!1512 lt!107129) (originalCharacters!759 call!13998))))

(assert (=> d!75320 (= lt!107129 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!13998))) (value!24723 call!13998)))))

(assert (=> d!75320 (= (charsOf!361 call!13998) lt!107129)))

(declare-fun b_lambda!8083 () Bool)

(assert (=> (not b_lambda!8083) (not d!75320)))

(declare-fun tb!14237 () Bool)

(declare-fun t!37137 () Bool)

(assert (=> (and b!261308 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37137) tb!14237))

(declare-fun b!262432 () Bool)

(declare-fun e!162941 () Bool)

(declare-fun tp!100642 () Bool)

(assert (=> b!262432 (= e!162941 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!13998))) (value!24723 call!13998)))) tp!100642))))

(declare-fun result!17728 () Bool)

(assert (=> tb!14237 (= result!17728 (and (inv!4645 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 call!13998))) (value!24723 call!13998))) e!162941))))

(assert (= tb!14237 b!262432))

(declare-fun m!326799 () Bool)

(assert (=> b!262432 m!326799))

(declare-fun m!326801 () Bool)

(assert (=> tb!14237 m!326801))

(assert (=> d!75320 t!37137))

(declare-fun b_and!20423 () Bool)

(assert (= b_and!20415 (and (=> t!37137 result!17728) b_and!20423)))

(declare-fun tb!14239 () Bool)

(declare-fun t!37139 () Bool)

(assert (=> (and b!261792 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37139) tb!14239))

(declare-fun result!17730 () Bool)

(assert (= result!17730 result!17728))

(assert (=> d!75320 t!37139))

(declare-fun b_and!20425 () Bool)

(assert (= b_and!20419 (and (=> t!37139 result!17730) b_and!20425)))

(declare-fun t!37141 () Bool)

(declare-fun tb!14241 () Bool)

(assert (=> (and b!261324 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37141) tb!14241))

(declare-fun result!17732 () Bool)

(assert (= result!17732 result!17728))

(assert (=> d!75320 t!37141))

(declare-fun b_and!20427 () Bool)

(assert (= b_and!20421 (and (=> t!37141 result!17732) b_and!20427)))

(declare-fun tb!14243 () Bool)

(declare-fun t!37143 () Bool)

(assert (=> (and b!261309 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37143) tb!14243))

(declare-fun result!17734 () Bool)

(assert (= result!17734 result!17728))

(assert (=> d!75320 t!37143))

(declare-fun b_and!20429 () Bool)

(assert (= b_and!20417 (and (=> t!37143 result!17734) b_and!20429)))

(declare-fun t!37145 () Bool)

(declare-fun tb!14245 () Bool)

(assert (=> (and b!261770 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37145) tb!14245))

(declare-fun result!17736 () Bool)

(assert (= result!17736 result!17728))

(assert (=> d!75320 t!37145))

(declare-fun b_and!20431 () Bool)

(assert (= b_and!20413 (and (=> t!37145 result!17736) b_and!20431)))

(declare-fun m!326803 () Bool)

(assert (=> d!75320 m!326803))

(declare-fun m!326805 () Bool)

(assert (=> d!75320 m!326805))

(assert (=> b!261587 d!75320))

(declare-fun b!262433 () Bool)

(declare-fun e!162942 () List!3766)

(assert (=> b!262433 (= e!162942 lt!106498)))

(declare-fun b!262436 () Bool)

(declare-fun e!162943 () Bool)

(declare-fun lt!107130 () List!3766)

(assert (=> b!262436 (= e!162943 (or (not (= lt!106498 Nil!3756)) (= lt!107130 (t!37000 lt!106503))))))

(declare-fun d!75322 () Bool)

(assert (=> d!75322 e!162943))

(declare-fun res!120687 () Bool)

(assert (=> d!75322 (=> (not res!120687) (not e!162943))))

(assert (=> d!75322 (= res!120687 (= (content!530 lt!107130) (set.union (content!530 (t!37000 lt!106503)) (content!530 lt!106498))))))

(assert (=> d!75322 (= lt!107130 e!162942)))

(declare-fun c!49655 () Bool)

(assert (=> d!75322 (= c!49655 (is-Nil!3756 (t!37000 lt!106503)))))

(assert (=> d!75322 (= (++!965 (t!37000 lt!106503) lt!106498) lt!107130)))

(declare-fun b!262434 () Bool)

(assert (=> b!262434 (= e!162942 (Cons!3756 (h!9153 (t!37000 lt!106503)) (++!965 (t!37000 (t!37000 lt!106503)) lt!106498)))))

(declare-fun b!262435 () Bool)

(declare-fun res!120686 () Bool)

(assert (=> b!262435 (=> (not res!120686) (not e!162943))))

(assert (=> b!262435 (= res!120686 (= (size!2988 lt!107130) (+ (size!2988 (t!37000 lt!106503)) (size!2988 lt!106498))))))

(assert (= (and d!75322 c!49655) b!262433))

(assert (= (and d!75322 (not c!49655)) b!262434))

(assert (= (and d!75322 res!120687) b!262435))

(assert (= (and b!262435 res!120686) b!262436))

(declare-fun m!326807 () Bool)

(assert (=> d!75322 m!326807))

(assert (=> d!75322 m!326349))

(assert (=> d!75322 m!324757))

(declare-fun m!326809 () Bool)

(assert (=> b!262434 m!326809))

(declare-fun m!326811 () Bool)

(assert (=> b!262435 m!326811))

(assert (=> b!262435 m!326597))

(assert (=> b!262435 m!324763))

(assert (=> b!261501 d!75322))

(declare-fun d!75324 () Bool)

(assert (=> d!75324 (= (isEmpty!2359 (originalCharacters!759 (h!9154 tokens!465))) (is-Nil!3756 (originalCharacters!759 (h!9154 tokens!465))))))

(assert (=> d!74920 d!75324))

(declare-fun bs!28625 () Bool)

(declare-fun d!75326 () Bool)

(assert (= bs!28625 (and d!75326 d!75128)))

(declare-fun lambda!8793 () Int)

(assert (=> bs!28625 (= (and (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) (= (toValue!1439 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (rule!1301 separatorToken!170))))) (= lambda!8793 lambda!8778))))

(declare-fun bs!28626 () Bool)

(assert (= bs!28626 (and d!75326 d!75218)))

(assert (=> bs!28626 (= (and (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) (= (toValue!1439 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (rule!1301 (h!9154 tokens!465)))))) (= lambda!8793 lambda!8785))))

(assert (=> d!75326 true))

(assert (=> d!75326 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1899 order!2857 lambda!8793))))

(assert (=> d!75326 true))

(assert (=> d!75326 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (dynLambda!1899 order!2857 lambda!8793))))

(assert (=> d!75326 (= (semiInverseModEq!246 (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toValue!1439 (transformation!716 (h!9155 rules!1920)))) (Forall!165 lambda!8793))))

(declare-fun bs!28627 () Bool)

(assert (= bs!28627 d!75326))

(declare-fun m!326813 () Bool)

(assert (=> bs!28627 m!326813))

(assert (=> d!74856 d!75326))

(declare-fun d!75328 () Bool)

(declare-fun lt!107131 () Int)

(assert (=> d!75328 (>= lt!107131 0)))

(declare-fun e!162944 () Int)

(assert (=> d!75328 (= lt!107131 e!162944)))

(declare-fun c!49656 () Bool)

(assert (=> d!75328 (= c!49656 (is-Nil!3756 lt!106561))))

(assert (=> d!75328 (= (size!2988 lt!106561) lt!107131)))

(declare-fun b!262437 () Bool)

(assert (=> b!262437 (= e!162944 0)))

(declare-fun b!262438 () Bool)

(assert (=> b!262438 (= e!162944 (+ 1 (size!2988 (t!37000 lt!106561))))))

(assert (= (and d!75328 c!49656) b!262437))

(assert (= (and d!75328 (not c!49656)) b!262438))

(declare-fun m!326815 () Bool)

(assert (=> b!262438 m!326815))

(assert (=> b!261498 d!75328))

(assert (=> b!261498 d!75266))

(declare-fun d!75330 () Bool)

(declare-fun lt!107132 () Int)

(assert (=> d!75330 (>= lt!107132 0)))

(declare-fun e!162945 () Int)

(assert (=> d!75330 (= lt!107132 e!162945)))

(declare-fun c!49657 () Bool)

(assert (=> d!75330 (= c!49657 (is-Nil!3756 lt!106500))))

(assert (=> d!75330 (= (size!2988 lt!106500) lt!107132)))

(declare-fun b!262439 () Bool)

(assert (=> b!262439 (= e!162945 0)))

(declare-fun b!262440 () Bool)

(assert (=> b!262440 (= e!162945 (+ 1 (size!2988 (t!37000 lt!106500))))))

(assert (= (and d!75330 c!49657) b!262439))

(assert (= (and d!75330 (not c!49657)) b!262440))

(declare-fun m!326817 () Bool)

(assert (=> b!262440 m!326817))

(assert (=> b!261498 d!75330))

(declare-fun b!262441 () Bool)

(declare-fun e!162946 () Bool)

(assert (=> b!262441 (= e!162946 tp_is_empty!1789)))

(assert (=> b!261795 (= tp!100575 e!162946)))

(declare-fun b!262444 () Bool)

(declare-fun tp!100644 () Bool)

(declare-fun tp!100646 () Bool)

(assert (=> b!262444 (= e!162946 (and tp!100644 tp!100646))))

(declare-fun b!262442 () Bool)

(declare-fun tp!100643 () Bool)

(declare-fun tp!100645 () Bool)

(assert (=> b!262442 (= e!162946 (and tp!100643 tp!100645))))

(declare-fun b!262443 () Bool)

(declare-fun tp!100647 () Bool)

(assert (=> b!262443 (= e!162946 tp!100647)))

(assert (= (and b!261795 (is-ElementMatch!940 (regOne!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262441))

(assert (= (and b!261795 (is-Concat!1679 (regOne!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262442))

(assert (= (and b!261795 (is-Star!940 (regOne!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262443))

(assert (= (and b!261795 (is-Union!940 (regOne!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262444))

(declare-fun b!262445 () Bool)

(declare-fun e!162947 () Bool)

(assert (=> b!262445 (= e!162947 tp_is_empty!1789)))

(assert (=> b!261795 (= tp!100577 e!162947)))

(declare-fun b!262448 () Bool)

(declare-fun tp!100649 () Bool)

(declare-fun tp!100651 () Bool)

(assert (=> b!262448 (= e!162947 (and tp!100649 tp!100651))))

(declare-fun b!262446 () Bool)

(declare-fun tp!100648 () Bool)

(declare-fun tp!100650 () Bool)

(assert (=> b!262446 (= e!162947 (and tp!100648 tp!100650))))

(declare-fun b!262447 () Bool)

(declare-fun tp!100652 () Bool)

(assert (=> b!262447 (= e!162947 tp!100652)))

(assert (= (and b!261795 (is-ElementMatch!940 (regTwo!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262445))

(assert (= (and b!261795 (is-Concat!1679 (regTwo!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262446))

(assert (= (and b!261795 (is-Star!940 (regTwo!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262447))

(assert (= (and b!261795 (is-Union!940 (regTwo!2392 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262448))

(declare-fun b!262449 () Bool)

(declare-fun e!162948 () Bool)

(assert (=> b!262449 (= e!162948 tp_is_empty!1789)))

(assert (=> b!261796 (= tp!100579 e!162948)))

(declare-fun b!262452 () Bool)

(declare-fun tp!100654 () Bool)

(declare-fun tp!100656 () Bool)

(assert (=> b!262452 (= e!162948 (and tp!100654 tp!100656))))

(declare-fun b!262450 () Bool)

(declare-fun tp!100653 () Bool)

(declare-fun tp!100655 () Bool)

(assert (=> b!262450 (= e!162948 (and tp!100653 tp!100655))))

(declare-fun b!262451 () Bool)

(declare-fun tp!100657 () Bool)

(assert (=> b!262451 (= e!162948 tp!100657)))

(assert (= (and b!261796 (is-ElementMatch!940 (reg!1269 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262449))

(assert (= (and b!261796 (is-Concat!1679 (reg!1269 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262450))

(assert (= (and b!261796 (is-Star!940 (reg!1269 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262451))

(assert (= (and b!261796 (is-Union!940 (reg!1269 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262452))

(declare-fun b!262453 () Bool)

(declare-fun e!162949 () Bool)

(assert (=> b!262453 (= e!162949 tp_is_empty!1789)))

(assert (=> b!261797 (= tp!100576 e!162949)))

(declare-fun b!262456 () Bool)

(declare-fun tp!100659 () Bool)

(declare-fun tp!100661 () Bool)

(assert (=> b!262456 (= e!162949 (and tp!100659 tp!100661))))

(declare-fun b!262454 () Bool)

(declare-fun tp!100658 () Bool)

(declare-fun tp!100660 () Bool)

(assert (=> b!262454 (= e!162949 (and tp!100658 tp!100660))))

(declare-fun b!262455 () Bool)

(declare-fun tp!100662 () Bool)

(assert (=> b!262455 (= e!162949 tp!100662)))

(assert (= (and b!261797 (is-ElementMatch!940 (regOne!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262453))

(assert (= (and b!261797 (is-Concat!1679 (regOne!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262454))

(assert (= (and b!261797 (is-Star!940 (regOne!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262455))

(assert (= (and b!261797 (is-Union!940 (regOne!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262456))

(declare-fun b!262457 () Bool)

(declare-fun e!162950 () Bool)

(assert (=> b!262457 (= e!162950 tp_is_empty!1789)))

(assert (=> b!261797 (= tp!100578 e!162950)))

(declare-fun b!262460 () Bool)

(declare-fun tp!100664 () Bool)

(declare-fun tp!100666 () Bool)

(assert (=> b!262460 (= e!162950 (and tp!100664 tp!100666))))

(declare-fun b!262458 () Bool)

(declare-fun tp!100663 () Bool)

(declare-fun tp!100665 () Bool)

(assert (=> b!262458 (= e!162950 (and tp!100663 tp!100665))))

(declare-fun b!262459 () Bool)

(declare-fun tp!100667 () Bool)

(assert (=> b!262459 (= e!162950 tp!100667)))

(assert (= (and b!261797 (is-ElementMatch!940 (regTwo!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262457))

(assert (= (and b!261797 (is-Concat!1679 (regTwo!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262458))

(assert (= (and b!261797 (is-Star!940 (regTwo!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262459))

(assert (= (and b!261797 (is-Union!940 (regTwo!2393 (regex!716 (rule!1301 (h!9154 tokens!465)))))) b!262460))

(declare-fun b!262461 () Bool)

(declare-fun e!162951 () Bool)

(assert (=> b!262461 (= e!162951 tp_is_empty!1789)))

(assert (=> b!261751 (= tp!100539 e!162951)))

(declare-fun b!262464 () Bool)

(declare-fun tp!100669 () Bool)

(declare-fun tp!100671 () Bool)

(assert (=> b!262464 (= e!162951 (and tp!100669 tp!100671))))

(declare-fun b!262462 () Bool)

(declare-fun tp!100668 () Bool)

(declare-fun tp!100670 () Bool)

(assert (=> b!262462 (= e!162951 (and tp!100668 tp!100670))))

(declare-fun b!262463 () Bool)

(declare-fun tp!100672 () Bool)

(assert (=> b!262463 (= e!162951 tp!100672)))

(assert (= (and b!261751 (is-ElementMatch!940 (regOne!2392 (regex!716 (h!9155 rules!1920))))) b!262461))

(assert (= (and b!261751 (is-Concat!1679 (regOne!2392 (regex!716 (h!9155 rules!1920))))) b!262462))

(assert (= (and b!261751 (is-Star!940 (regOne!2392 (regex!716 (h!9155 rules!1920))))) b!262463))

(assert (= (and b!261751 (is-Union!940 (regOne!2392 (regex!716 (h!9155 rules!1920))))) b!262464))

(declare-fun b!262465 () Bool)

(declare-fun e!162952 () Bool)

(assert (=> b!262465 (= e!162952 tp_is_empty!1789)))

(assert (=> b!261751 (= tp!100541 e!162952)))

(declare-fun b!262468 () Bool)

(declare-fun tp!100674 () Bool)

(declare-fun tp!100676 () Bool)

(assert (=> b!262468 (= e!162952 (and tp!100674 tp!100676))))

(declare-fun b!262466 () Bool)

(declare-fun tp!100673 () Bool)

(declare-fun tp!100675 () Bool)

(assert (=> b!262466 (= e!162952 (and tp!100673 tp!100675))))

(declare-fun b!262467 () Bool)

(declare-fun tp!100677 () Bool)

(assert (=> b!262467 (= e!162952 tp!100677)))

(assert (= (and b!261751 (is-ElementMatch!940 (regTwo!2392 (regex!716 (h!9155 rules!1920))))) b!262465))

(assert (= (and b!261751 (is-Concat!1679 (regTwo!2392 (regex!716 (h!9155 rules!1920))))) b!262466))

(assert (= (and b!261751 (is-Star!940 (regTwo!2392 (regex!716 (h!9155 rules!1920))))) b!262467))

(assert (= (and b!261751 (is-Union!940 (regTwo!2392 (regex!716 (h!9155 rules!1920))))) b!262468))

(declare-fun b!262471 () Bool)

(declare-fun b_free!9749 () Bool)

(declare-fun b_next!9749 () Bool)

(assert (=> b!262471 (= b_free!9749 (not b_next!9749))))

(declare-fun tp!100680 () Bool)

(declare-fun b_and!20433 () Bool)

(assert (=> b!262471 (= tp!100680 b_and!20433)))

(declare-fun b_free!9751 () Bool)

(declare-fun b_next!9751 () Bool)

(assert (=> b!262471 (= b_free!9751 (not b_next!9751))))

(declare-fun t!37147 () Bool)

(declare-fun tb!14247 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37147) tb!14247))

(declare-fun result!17738 () Bool)

(assert (= result!17738 result!17668))

(assert (=> b!261908 t!37147))

(declare-fun tb!14249 () Bool)

(declare-fun t!37149 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37149) tb!14249))

(declare-fun result!17740 () Bool)

(assert (= result!17740 result!17630))

(assert (=> d!74916 t!37149))

(assert (=> b!261596 t!37149))

(assert (=> d!75064 t!37147))

(declare-fun t!37151 () Bool)

(declare-fun tb!14251 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37151) tb!14251))

(declare-fun result!17742 () Bool)

(assert (= result!17742 result!17728))

(assert (=> d!75320 t!37151))

(declare-fun t!37153 () Bool)

(declare-fun tb!14253 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37153) tb!14253))

(declare-fun result!17744 () Bool)

(assert (= result!17744 result!17698))

(assert (=> d!75154 t!37153))

(declare-fun t!37155 () Bool)

(declare-fun tb!14255 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37155) tb!14255))

(declare-fun result!17746 () Bool)

(assert (= result!17746 result!17608))

(assert (=> b!261396 t!37155))

(declare-fun t!37157 () Bool)

(declare-fun tb!14257 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37157) tb!14257))

(declare-fun result!17748 () Bool)

(assert (= result!17748 result!17708))

(assert (=> d!75178 t!37157))

(declare-fun tb!14259 () Bool)

(declare-fun t!37159 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37159) tb!14259))

(declare-fun result!17750 () Bool)

(assert (= result!17750 result!17688))

(assert (=> d!75124 t!37159))

(assert (=> d!74912 t!37155))

(declare-fun tb!14261 () Bool)

(declare-fun t!37161 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37161) tb!14261))

(declare-fun result!17752 () Bool)

(assert (= result!17752 result!17678))

(assert (=> d!75052 t!37161))

(declare-fun tb!14263 () Bool)

(declare-fun t!37163 () Bool)

(assert (=> (and b!262471 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37163) tb!14263))

(declare-fun result!17754 () Bool)

(assert (= result!17754 result!17718))

(assert (=> d!75288 t!37163))

(declare-fun tp!100681 () Bool)

(declare-fun b_and!20435 () Bool)

(assert (=> b!262471 (= tp!100681 (and (=> t!37161 result!17752) (=> t!37159 result!17750) (=> t!37163 result!17754) (=> t!37151 result!17742) (=> t!37153 result!17744) (=> t!37147 result!17738) (=> t!37155 result!17746) (=> t!37149 result!17740) (=> t!37157 result!17748) b_and!20435))))

(declare-fun e!162953 () Bool)

(assert (=> b!262471 (= e!162953 (and tp!100680 tp!100681))))

(declare-fun e!162955 () Bool)

(declare-fun b!262470 () Bool)

(declare-fun tp!100679 () Bool)

(assert (=> b!262470 (= e!162955 (and tp!100679 (inv!4637 (tag!926 (h!9155 (t!37002 (t!37002 rules!1920))))) (inv!4640 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) e!162953))))

(declare-fun b!262469 () Bool)

(declare-fun e!162956 () Bool)

(declare-fun tp!100678 () Bool)

(assert (=> b!262469 (= e!162956 (and e!162955 tp!100678))))

(assert (=> b!261768 (= tp!100555 e!162956)))

(assert (= b!262470 b!262471))

(assert (= b!262469 b!262470))

(assert (= (and b!261768 (is-Cons!3758 (t!37002 (t!37002 rules!1920)))) b!262469))

(declare-fun m!326819 () Bool)

(assert (=> b!262470 m!326819))

(declare-fun m!326821 () Bool)

(assert (=> b!262470 m!326821))

(declare-fun b!262472 () Bool)

(declare-fun e!162957 () Bool)

(declare-fun tp!100682 () Bool)

(assert (=> b!262472 (= e!162957 (and tp_is_empty!1789 tp!100682))))

(assert (=> b!261790 (= tp!100572 e!162957)))

(assert (= (and b!261790 (is-Cons!3756 (originalCharacters!759 (h!9154 (t!37001 tokens!465))))) b!262472))

(declare-fun b!262473 () Bool)

(declare-fun e!162958 () Bool)

(assert (=> b!262473 (= e!162958 tp_is_empty!1789)))

(assert (=> b!261791 (= tp!100569 e!162958)))

(declare-fun b!262476 () Bool)

(declare-fun tp!100684 () Bool)

(declare-fun tp!100686 () Bool)

(assert (=> b!262476 (= e!162958 (and tp!100684 tp!100686))))

(declare-fun b!262474 () Bool)

(declare-fun tp!100683 () Bool)

(declare-fun tp!100685 () Bool)

(assert (=> b!262474 (= e!162958 (and tp!100683 tp!100685))))

(declare-fun b!262475 () Bool)

(declare-fun tp!100687 () Bool)

(assert (=> b!262475 (= e!162958 tp!100687)))

(assert (= (and b!261791 (is-ElementMatch!940 (regex!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) b!262473))

(assert (= (and b!261791 (is-Concat!1679 (regex!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) b!262474))

(assert (= (and b!261791 (is-Star!940 (regex!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) b!262475))

(assert (= (and b!261791 (is-Union!940 (regex!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) b!262476))

(declare-fun b!262477 () Bool)

(declare-fun e!162959 () Bool)

(assert (=> b!262477 (= e!162959 tp_is_empty!1789)))

(assert (=> b!261769 (= tp!100556 e!162959)))

(declare-fun b!262480 () Bool)

(declare-fun tp!100689 () Bool)

(declare-fun tp!100691 () Bool)

(assert (=> b!262480 (= e!162959 (and tp!100689 tp!100691))))

(declare-fun b!262478 () Bool)

(declare-fun tp!100688 () Bool)

(declare-fun tp!100690 () Bool)

(assert (=> b!262478 (= e!162959 (and tp!100688 tp!100690))))

(declare-fun b!262479 () Bool)

(declare-fun tp!100692 () Bool)

(assert (=> b!262479 (= e!162959 tp!100692)))

(assert (= (and b!261769 (is-ElementMatch!940 (regex!716 (h!9155 (t!37002 rules!1920))))) b!262477))

(assert (= (and b!261769 (is-Concat!1679 (regex!716 (h!9155 (t!37002 rules!1920))))) b!262478))

(assert (= (and b!261769 (is-Star!940 (regex!716 (h!9155 (t!37002 rules!1920))))) b!262479))

(assert (= (and b!261769 (is-Union!940 (regex!716 (h!9155 (t!37002 rules!1920))))) b!262480))

(declare-fun b!262484 () Bool)

(declare-fun b_free!9753 () Bool)

(declare-fun b_next!9753 () Bool)

(assert (=> b!262484 (= b_free!9753 (not b_next!9753))))

(declare-fun tp!100695 () Bool)

(declare-fun b_and!20437 () Bool)

(assert (=> b!262484 (= tp!100695 b_and!20437)))

(declare-fun b_free!9755 () Bool)

(declare-fun b_next!9755 () Bool)

(assert (=> b!262484 (= b_free!9755 (not b_next!9755))))

(declare-fun t!37165 () Bool)

(declare-fun tb!14265 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465)))))) t!37165) tb!14265))

(declare-fun result!17756 () Bool)

(assert (= result!17756 result!17668))

(assert (=> b!261908 t!37165))

(declare-fun t!37167 () Bool)

(declare-fun tb!14267 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465))))) t!37167) tb!14267))

(declare-fun result!17758 () Bool)

(assert (= result!17758 result!17630))

(assert (=> d!74916 t!37167))

(assert (=> b!261596 t!37167))

(assert (=> d!75064 t!37165))

(declare-fun tb!14269 () Bool)

(declare-fun t!37169 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 call!13998)))) t!37169) tb!14269))

(declare-fun result!17760 () Bool)

(assert (= result!17760 result!17728))

(assert (=> d!75320 t!37169))

(declare-fun t!37171 () Bool)

(declare-fun tb!14271 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 lt!106499 0))))) t!37171) tb!14271))

(declare-fun result!17762 () Bool)

(assert (= result!17762 result!17698))

(assert (=> d!75154 t!37171))

(declare-fun tb!14273 () Bool)

(declare-fun t!37173 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 separatorToken!170)))) t!37173) tb!14273))

(declare-fun result!17764 () Bool)

(assert (= result!17764 result!17608))

(assert (=> b!261396 t!37173))

(declare-fun tb!14275 () Bool)

(declare-fun t!37175 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49471 call!13999 (ite c!49473 separatorToken!170 call!13998)))))) t!37175) tb!14275))

(declare-fun result!17766 () Bool)

(assert (= result!17766 result!17708))

(assert (=> d!75178 t!37175))

(declare-fun t!37177 () Bool)

(declare-fun tb!14277 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 call!14018)))) t!37177) tb!14277))

(declare-fun result!17768 () Bool)

(assert (= result!17768 result!17688))

(assert (=> d!75124 t!37177))

(assert (=> d!74912 t!37173))

(declare-fun t!37179 () Bool)

(declare-fun tb!14279 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0))))) t!37179) tb!14279))

(declare-fun result!17770 () Bool)

(assert (= result!17770 result!17678))

(assert (=> d!75052 t!37179))

(declare-fun tb!14281 () Bool)

(declare-fun t!37181 () Bool)

(assert (=> (and b!262484 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (ite c!49493 call!14019 (ite c!49495 separatorToken!170 call!14018)))))) t!37181) tb!14281))

(declare-fun result!17772 () Bool)

(assert (= result!17772 result!17718))

(assert (=> d!75288 t!37181))

(declare-fun tp!100697 () Bool)

(declare-fun b_and!20439 () Bool)

(assert (=> b!262484 (= tp!100697 (and (=> t!37175 result!17766) (=> t!37171 result!17762) (=> t!37179 result!17770) (=> t!37173 result!17764) (=> t!37177 result!17768) (=> t!37167 result!17758) (=> t!37169 result!17760) (=> t!37181 result!17772) (=> t!37165 result!17756) b_and!20439))))

(declare-fun e!162964 () Bool)

(declare-fun b!262483 () Bool)

(declare-fun tp!100693 () Bool)

(declare-fun e!162962 () Bool)

(assert (=> b!262483 (= e!162962 (and tp!100693 (inv!4637 (tag!926 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (inv!4640 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) e!162964))))

(assert (=> b!262484 (= e!162964 (and tp!100695 tp!100697))))

(declare-fun e!162960 () Bool)

(assert (=> b!261789 (= tp!100570 e!162960)))

(declare-fun b!262481 () Bool)

(declare-fun e!162963 () Bool)

(declare-fun tp!100694 () Bool)

(assert (=> b!262481 (= e!162960 (and (inv!4641 (h!9154 (t!37001 (t!37001 tokens!465)))) e!162963 tp!100694))))

(declare-fun b!262482 () Bool)

(declare-fun tp!100696 () Bool)

(assert (=> b!262482 (= e!162963 (and (inv!21 (value!24723 (h!9154 (t!37001 (t!37001 tokens!465))))) e!162962 tp!100696))))

(assert (= b!262483 b!262484))

(assert (= b!262482 b!262483))

(assert (= b!262481 b!262482))

(assert (= (and b!261789 (is-Cons!3757 (t!37001 (t!37001 tokens!465)))) b!262481))

(declare-fun m!326823 () Bool)

(assert (=> b!262483 m!326823))

(declare-fun m!326825 () Bool)

(assert (=> b!262483 m!326825))

(declare-fun m!326827 () Bool)

(assert (=> b!262481 m!326827))

(declare-fun m!326829 () Bool)

(assert (=> b!262482 m!326829))

(declare-fun b!262485 () Bool)

(declare-fun e!162966 () Bool)

(declare-fun tp!100698 () Bool)

(assert (=> b!262485 (= e!162966 (and tp_is_empty!1789 tp!100698))))

(assert (=> b!261793 (= tp!100574 e!162966)))

(assert (= (and b!261793 (is-Cons!3756 (t!37000 (originalCharacters!759 separatorToken!170)))) b!262485))

(declare-fun b!262488 () Bool)

(declare-fun e!162969 () Bool)

(assert (=> b!262488 (= e!162969 true)))

(declare-fun b!262487 () Bool)

(declare-fun e!162968 () Bool)

(assert (=> b!262487 (= e!162968 e!162969)))

(declare-fun b!262486 () Bool)

(declare-fun e!162967 () Bool)

(assert (=> b!262486 (= e!162967 e!162968)))

(assert (=> b!261588 e!162967))

(assert (= b!262487 b!262488))

(assert (= b!262486 b!262487))

(assert (= (and b!261588 (is-Cons!3758 (t!37002 rules!1920))) b!262486))

(assert (=> b!262488 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8748))))

(assert (=> b!262488 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8748))))

(declare-fun tp!100705 () Bool)

(declare-fun b!262497 () Bool)

(declare-fun tp!100706 () Bool)

(declare-fun e!162975 () Bool)

(assert (=> b!262497 (= e!162975 (and (inv!4644 (left!3087 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))) tp!100705 (inv!4644 (right!3417 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))) tp!100706))))

(declare-fun b!262499 () Bool)

(declare-fun e!162974 () Bool)

(declare-fun tp!100707 () Bool)

(assert (=> b!262499 (= e!162974 tp!100707)))

(declare-fun b!262498 () Bool)

(declare-fun inv!4650 (IArray!2509) Bool)

(assert (=> b!262498 (= e!162975 (and (inv!4650 (xs!3853 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))) e!162974))))

(assert (=> b!261402 (= tp!100518 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170)))) e!162975))))

(assert (= (and b!261402 (is-Node!1254 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))) b!262497))

(assert (= b!262498 b!262499))

(assert (= (and b!261402 (is-Leaf!1952 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (value!24723 separatorToken!170))))) b!262498))

(declare-fun m!326831 () Bool)

(assert (=> b!262497 m!326831))

(declare-fun m!326833 () Bool)

(assert (=> b!262497 m!326833))

(declare-fun m!326835 () Bool)

(assert (=> b!262498 m!326835))

(assert (=> b!261402 m!324627))

(declare-fun b!262502 () Bool)

(declare-fun e!162978 () Bool)

(assert (=> b!262502 (= e!162978 true)))

(declare-fun b!262501 () Bool)

(declare-fun e!162977 () Bool)

(assert (=> b!262501 (= e!162977 e!162978)))

(declare-fun b!262500 () Bool)

(declare-fun e!162976 () Bool)

(assert (=> b!262500 (= e!162976 e!162977)))

(assert (=> b!261691 e!162976))

(assert (= b!262501 b!262502))

(assert (= b!262500 b!262501))

(assert (= (and b!261691 (is-Cons!3758 (t!37002 rules!1920))) b!262500))

(assert (=> b!262502 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8764))))

(assert (=> b!262502 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8764))))

(declare-fun b!262505 () Bool)

(declare-fun e!162981 () Bool)

(assert (=> b!262505 (= e!162981 true)))

(declare-fun b!262504 () Bool)

(declare-fun e!162980 () Bool)

(assert (=> b!262504 (= e!162980 e!162981)))

(declare-fun b!262503 () Bool)

(declare-fun e!162979 () Bool)

(assert (=> b!262503 (= e!162979 e!162980)))

(assert (=> b!261639 e!162979))

(assert (= b!262504 b!262505))

(assert (= b!262503 b!262504))

(assert (= (and b!261639 (is-Cons!3758 (t!37002 rules!1920))) b!262503))

(assert (=> b!262505 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8759))))

(assert (=> b!262505 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8759))))

(declare-fun b!262506 () Bool)

(declare-fun e!162982 () Bool)

(assert (=> b!262506 (= e!162982 tp_is_empty!1789)))

(assert (=> b!261745 (= tp!100534 e!162982)))

(declare-fun b!262509 () Bool)

(declare-fun tp!100709 () Bool)

(declare-fun tp!100711 () Bool)

(assert (=> b!262509 (= e!162982 (and tp!100709 tp!100711))))

(declare-fun b!262507 () Bool)

(declare-fun tp!100708 () Bool)

(declare-fun tp!100710 () Bool)

(assert (=> b!262507 (= e!162982 (and tp!100708 tp!100710))))

(declare-fun b!262508 () Bool)

(declare-fun tp!100712 () Bool)

(assert (=> b!262508 (= e!162982 tp!100712)))

(assert (= (and b!261745 (is-ElementMatch!940 (regOne!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262506))

(assert (= (and b!261745 (is-Concat!1679 (regOne!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262507))

(assert (= (and b!261745 (is-Star!940 (regOne!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262508))

(assert (= (and b!261745 (is-Union!940 (regOne!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262509))

(declare-fun b!262510 () Bool)

(declare-fun e!162983 () Bool)

(assert (=> b!262510 (= e!162983 tp_is_empty!1789)))

(assert (=> b!261745 (= tp!100536 e!162983)))

(declare-fun b!262513 () Bool)

(declare-fun tp!100714 () Bool)

(declare-fun tp!100716 () Bool)

(assert (=> b!262513 (= e!162983 (and tp!100714 tp!100716))))

(declare-fun b!262511 () Bool)

(declare-fun tp!100713 () Bool)

(declare-fun tp!100715 () Bool)

(assert (=> b!262511 (= e!162983 (and tp!100713 tp!100715))))

(declare-fun b!262512 () Bool)

(declare-fun tp!100717 () Bool)

(assert (=> b!262512 (= e!162983 tp!100717)))

(assert (= (and b!261745 (is-ElementMatch!940 (regTwo!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262510))

(assert (= (and b!261745 (is-Concat!1679 (regTwo!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262511))

(assert (= (and b!261745 (is-Star!940 (regTwo!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262512))

(assert (= (and b!261745 (is-Union!940 (regTwo!2392 (regex!716 (rule!1301 separatorToken!170))))) b!262513))

(declare-fun b!262514 () Bool)

(declare-fun e!162984 () Bool)

(assert (=> b!262514 (= e!162984 tp_is_empty!1789)))

(assert (=> b!261746 (= tp!100538 e!162984)))

(declare-fun b!262517 () Bool)

(declare-fun tp!100719 () Bool)

(declare-fun tp!100721 () Bool)

(assert (=> b!262517 (= e!162984 (and tp!100719 tp!100721))))

(declare-fun b!262515 () Bool)

(declare-fun tp!100718 () Bool)

(declare-fun tp!100720 () Bool)

(assert (=> b!262515 (= e!162984 (and tp!100718 tp!100720))))

(declare-fun b!262516 () Bool)

(declare-fun tp!100722 () Bool)

(assert (=> b!262516 (= e!162984 tp!100722)))

(assert (= (and b!261746 (is-ElementMatch!940 (reg!1269 (regex!716 (rule!1301 separatorToken!170))))) b!262514))

(assert (= (and b!261746 (is-Concat!1679 (reg!1269 (regex!716 (rule!1301 separatorToken!170))))) b!262515))

(assert (= (and b!261746 (is-Star!940 (reg!1269 (regex!716 (rule!1301 separatorToken!170))))) b!262516))

(assert (= (and b!261746 (is-Union!940 (reg!1269 (regex!716 (rule!1301 separatorToken!170))))) b!262517))

(declare-fun b!262518 () Bool)

(declare-fun e!162985 () Bool)

(assert (=> b!262518 (= e!162985 tp_is_empty!1789)))

(assert (=> b!261747 (= tp!100535 e!162985)))

(declare-fun b!262521 () Bool)

(declare-fun tp!100724 () Bool)

(declare-fun tp!100726 () Bool)

(assert (=> b!262521 (= e!162985 (and tp!100724 tp!100726))))

(declare-fun b!262519 () Bool)

(declare-fun tp!100723 () Bool)

(declare-fun tp!100725 () Bool)

(assert (=> b!262519 (= e!162985 (and tp!100723 tp!100725))))

(declare-fun b!262520 () Bool)

(declare-fun tp!100727 () Bool)

(assert (=> b!262520 (= e!162985 tp!100727)))

(assert (= (and b!261747 (is-ElementMatch!940 (regOne!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262518))

(assert (= (and b!261747 (is-Concat!1679 (regOne!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262519))

(assert (= (and b!261747 (is-Star!940 (regOne!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262520))

(assert (= (and b!261747 (is-Union!940 (regOne!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262521))

(declare-fun b!262522 () Bool)

(declare-fun e!162986 () Bool)

(assert (=> b!262522 (= e!162986 tp_is_empty!1789)))

(assert (=> b!261747 (= tp!100537 e!162986)))

(declare-fun b!262525 () Bool)

(declare-fun tp!100729 () Bool)

(declare-fun tp!100731 () Bool)

(assert (=> b!262525 (= e!162986 (and tp!100729 tp!100731))))

(declare-fun b!262523 () Bool)

(declare-fun tp!100728 () Bool)

(declare-fun tp!100730 () Bool)

(assert (=> b!262523 (= e!162986 (and tp!100728 tp!100730))))

(declare-fun b!262524 () Bool)

(declare-fun tp!100732 () Bool)

(assert (=> b!262524 (= e!162986 tp!100732)))

(assert (= (and b!261747 (is-ElementMatch!940 (regTwo!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262522))

(assert (= (and b!261747 (is-Concat!1679 (regTwo!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262523))

(assert (= (and b!261747 (is-Star!940 (regTwo!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262524))

(assert (= (and b!261747 (is-Union!940 (regTwo!2393 (regex!716 (rule!1301 separatorToken!170))))) b!262525))

(declare-fun b!262526 () Bool)

(declare-fun e!162987 () Bool)

(declare-fun tp!100733 () Bool)

(assert (=> b!262526 (= e!162987 (and tp_is_empty!1789 tp!100733))))

(assert (=> b!261758 (= tp!100546 e!162987)))

(assert (= (and b!261758 (is-Cons!3756 (t!37000 (originalCharacters!759 (h!9154 tokens!465))))) b!262526))

(declare-fun b!262529 () Bool)

(declare-fun e!162990 () Bool)

(assert (=> b!262529 (= e!162990 true)))

(declare-fun b!262528 () Bool)

(declare-fun e!162989 () Bool)

(assert (=> b!262528 (= e!162989 e!162990)))

(declare-fun b!262527 () Bool)

(declare-fun e!162988 () Bool)

(assert (=> b!262527 (= e!162988 e!162989)))

(assert (=> b!261491 e!162988))

(assert (= b!262528 b!262529))

(assert (= b!262527 b!262528))

(assert (= (and b!261491 (is-Cons!3758 (t!37002 rules!1920))) b!262527))

(assert (=> b!262529 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8739))))

(assert (=> b!262529 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8739))))

(declare-fun b!262530 () Bool)

(declare-fun e!162991 () Bool)

(assert (=> b!262530 (= e!162991 tp_is_empty!1789)))

(assert (=> b!261752 (= tp!100543 e!162991)))

(declare-fun b!262533 () Bool)

(declare-fun tp!100735 () Bool)

(declare-fun tp!100737 () Bool)

(assert (=> b!262533 (= e!162991 (and tp!100735 tp!100737))))

(declare-fun b!262531 () Bool)

(declare-fun tp!100734 () Bool)

(declare-fun tp!100736 () Bool)

(assert (=> b!262531 (= e!162991 (and tp!100734 tp!100736))))

(declare-fun b!262532 () Bool)

(declare-fun tp!100738 () Bool)

(assert (=> b!262532 (= e!162991 tp!100738)))

(assert (= (and b!261752 (is-ElementMatch!940 (reg!1269 (regex!716 (h!9155 rules!1920))))) b!262530))

(assert (= (and b!261752 (is-Concat!1679 (reg!1269 (regex!716 (h!9155 rules!1920))))) b!262531))

(assert (= (and b!261752 (is-Star!940 (reg!1269 (regex!716 (h!9155 rules!1920))))) b!262532))

(assert (= (and b!261752 (is-Union!940 (reg!1269 (regex!716 (h!9155 rules!1920))))) b!262533))

(declare-fun b!262534 () Bool)

(declare-fun e!162992 () Bool)

(assert (=> b!262534 (= e!162992 tp_is_empty!1789)))

(assert (=> b!261753 (= tp!100540 e!162992)))

(declare-fun b!262537 () Bool)

(declare-fun tp!100740 () Bool)

(declare-fun tp!100742 () Bool)

(assert (=> b!262537 (= e!162992 (and tp!100740 tp!100742))))

(declare-fun b!262535 () Bool)

(declare-fun tp!100739 () Bool)

(declare-fun tp!100741 () Bool)

(assert (=> b!262535 (= e!162992 (and tp!100739 tp!100741))))

(declare-fun b!262536 () Bool)

(declare-fun tp!100743 () Bool)

(assert (=> b!262536 (= e!162992 tp!100743)))

(assert (= (and b!261753 (is-ElementMatch!940 (regOne!2393 (regex!716 (h!9155 rules!1920))))) b!262534))

(assert (= (and b!261753 (is-Concat!1679 (regOne!2393 (regex!716 (h!9155 rules!1920))))) b!262535))

(assert (= (and b!261753 (is-Star!940 (regOne!2393 (regex!716 (h!9155 rules!1920))))) b!262536))

(assert (= (and b!261753 (is-Union!940 (regOne!2393 (regex!716 (h!9155 rules!1920))))) b!262537))

(declare-fun b!262538 () Bool)

(declare-fun e!162993 () Bool)

(assert (=> b!262538 (= e!162993 tp_is_empty!1789)))

(assert (=> b!261753 (= tp!100542 e!162993)))

(declare-fun b!262541 () Bool)

(declare-fun tp!100745 () Bool)

(declare-fun tp!100747 () Bool)

(assert (=> b!262541 (= e!162993 (and tp!100745 tp!100747))))

(declare-fun b!262539 () Bool)

(declare-fun tp!100744 () Bool)

(declare-fun tp!100746 () Bool)

(assert (=> b!262539 (= e!162993 (and tp!100744 tp!100746))))

(declare-fun b!262540 () Bool)

(declare-fun tp!100748 () Bool)

(assert (=> b!262540 (= e!162993 tp!100748)))

(assert (= (and b!261753 (is-ElementMatch!940 (regTwo!2393 (regex!716 (h!9155 rules!1920))))) b!262538))

(assert (= (and b!261753 (is-Concat!1679 (regTwo!2393 (regex!716 (h!9155 rules!1920))))) b!262539))

(assert (= (and b!261753 (is-Star!940 (regTwo!2393 (regex!716 (h!9155 rules!1920))))) b!262540))

(assert (= (and b!261753 (is-Union!940 (regTwo!2393 (regex!716 (h!9155 rules!1920))))) b!262541))

(declare-fun e!162995 () Bool)

(declare-fun tp!100749 () Bool)

(declare-fun b!262542 () Bool)

(declare-fun tp!100750 () Bool)

(assert (=> b!262542 (= e!162995 (and (inv!4644 (left!3087 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))) tp!100749 (inv!4644 (right!3417 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))) tp!100750))))

(declare-fun b!262544 () Bool)

(declare-fun e!162994 () Bool)

(declare-fun tp!100751 () Bool)

(assert (=> b!262544 (= e!162994 tp!100751)))

(declare-fun b!262543 () Bool)

(assert (=> b!262543 (= e!162995 (and (inv!4650 (xs!3853 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))) e!162994))))

(assert (=> b!261595 (= tp!100523 (and (inv!4644 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465))))) e!162995))))

(assert (= (and b!261595 (is-Node!1254 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))) b!262542))

(assert (= b!262543 b!262544))

(assert (= (and b!261595 (is-Leaf!1952 (c!49414 (dynLambda!1888 (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (value!24723 (h!9154 tokens!465)))))) b!262543))

(declare-fun m!326837 () Bool)

(assert (=> b!262542 m!326837))

(declare-fun m!326839 () Bool)

(assert (=> b!262542 m!326839))

(declare-fun m!326841 () Bool)

(assert (=> b!262543 m!326841))

(assert (=> b!261595 m!324917))

(declare-fun b!262547 () Bool)

(declare-fun e!162998 () Bool)

(assert (=> b!262547 (= e!162998 true)))

(declare-fun b!262546 () Bool)

(declare-fun e!162997 () Bool)

(assert (=> b!262546 (= e!162997 e!162998)))

(declare-fun b!262545 () Bool)

(declare-fun e!162996 () Bool)

(assert (=> b!262545 (= e!162996 e!162997)))

(assert (=> b!261677 e!162996))

(assert (= b!262546 b!262547))

(assert (= b!262545 b!262546))

(assert (= (and b!261677 (is-Cons!3758 (t!37002 rules!1920))) b!262545))

(assert (=> b!262547 (< (dynLambda!1889 order!2843 (toValue!1439 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8762))))

(assert (=> b!262547 (< (dynLambda!1891 order!2847 (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920))))) (dynLambda!1890 order!2845 lambda!8762))))

(declare-fun b_lambda!8085 () Bool)

(assert (= b_lambda!8065 (or d!74924 b_lambda!8085)))

(declare-fun bs!28628 () Bool)

(declare-fun d!75332 () Bool)

(assert (= bs!28628 (and d!75332 d!74924)))

(assert (=> bs!28628 (= (dynLambda!1892 lambda!8759 (h!9154 (list!1515 lt!106499))) (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (h!9154 (list!1515 lt!106499))))))

(assert (=> bs!28628 m!326105))

(assert (=> b!262087 d!75332))

(declare-fun b_lambda!8087 () Bool)

(assert (= b_lambda!8059 (or b!261581 b_lambda!8087)))

(declare-fun bs!28629 () Bool)

(declare-fun d!75334 () Bool)

(assert (= bs!28629 (and d!75334 b!261581)))

(assert (=> bs!28629 (= (dynLambda!1892 lambda!8748 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)) (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (apply!731 (seqFromList!799 (t!37001 tokens!465)) 0)))))

(assert (=> bs!28629 m!324875))

(declare-fun m!326843 () Bool)

(assert (=> bs!28629 m!326843))

(assert (=> d!75030 d!75334))

(declare-fun b_lambda!8089 () Bool)

(assert (= b_lambda!8063 (or (and b!261309 b_free!9711 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261792 b_free!9739) (and b!262471 b_free!9751 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!262484 b_free!9755 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261324 b_free!9719 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) b_lambda!8089)))

(declare-fun b_lambda!8091 () Bool)

(assert (= b_lambda!8057 (or (and b!261309 b_free!9711 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 tokens!465)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261770 b_free!9735 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 rules!1920)))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261792 b_free!9739) (and b!262471 b_free!9751 (= (toChars!1298 (transformation!716 (h!9155 (t!37002 (t!37002 rules!1920))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!262484 b_free!9755 (= (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 (t!37001 tokens!465)))))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261308 b_free!9715 (= (toChars!1298 (transformation!716 (h!9155 rules!1920))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) (and b!261324 b_free!9719 (= (toChars!1298 (transformation!716 (rule!1301 separatorToken!170))) (toChars!1298 (transformation!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))) b_lambda!8091)))

(declare-fun b_lambda!8093 () Bool)

(assert (= b_lambda!8055 (or b!261306 b_lambda!8093)))

(declare-fun bs!28630 () Bool)

(declare-fun d!75336 () Bool)

(assert (= bs!28630 (and d!75336 b!261306)))

(assert (=> bs!28630 (= (dynLambda!1892 lambda!8733 (h!9154 (t!37001 tokens!465))) (not (isSeparator!716 (rule!1301 (h!9154 (t!37001 tokens!465))))))))

(assert (=> b!261896 d!75336))

(declare-fun b_lambda!8095 () Bool)

(assert (= b_lambda!8079 (or b!261477 b_lambda!8095)))

(declare-fun bs!28631 () Bool)

(declare-fun d!75338 () Bool)

(assert (= bs!28631 (and d!75338 b!261477)))

(assert (=> bs!28631 (= (dynLambda!1892 lambda!8739 (h!9154 (t!37001 tokens!465))) (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (h!9154 (t!37001 tokens!465))))))

(declare-fun m!326845 () Bool)

(assert (=> bs!28631 m!326845))

(assert (=> d!75274 d!75338))

(declare-fun b_lambda!8097 () Bool)

(assert (= b_lambda!8069 (or b!261661 b_lambda!8097)))

(declare-fun bs!28632 () Bool)

(declare-fun d!75340 () Bool)

(assert (= bs!28632 (and d!75340 b!261661)))

(assert (=> bs!28632 (= (dynLambda!1892 lambda!8762 (apply!731 lt!106499 0)) (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (apply!731 lt!106499 0)))))

(assert (=> bs!28632 m!325053))

(declare-fun m!326847 () Bool)

(assert (=> bs!28632 m!326847))

(assert (=> d!75148 d!75340))

(declare-fun b_lambda!8099 () Bool)

(assert (= b_lambda!8077 (or b!261685 b_lambda!8099)))

(declare-fun bs!28633 () Bool)

(declare-fun d!75342 () Bool)

(assert (= bs!28633 (and d!75342 b!261685)))

(assert (=> bs!28633 (= (dynLambda!1892 lambda!8764 (h!9154 tokens!465)) (rulesProduceIndividualToken!351 thiss!17480 rules!1920 (h!9154 tokens!465)))))

(declare-fun m!326849 () Bool)

(assert (=> bs!28633 m!326849))

(assert (=> d!75206 d!75342))

(push 1)

(assert (not b!262304))

(assert (not b!261876))

(assert (not b!262532))

(assert (not d!75308))

(assert (not b!262478))

(assert (not b!262515))

(assert (not bm!14069))

(assert (not d!75282))

(assert (not b!262323))

(assert (not b!261907))

(assert (not b_lambda!8041))

(assert (not b_lambda!8099))

(assert (not b!262301))

(assert (not b!262295))

(assert (not b!262094))

(assert (not b!262429))

(assert (not b!262536))

(assert (not d!75262))

(assert (not b_next!9751))

(assert b_and!20429)

(assert (not b!262322))

(assert (not b!261889))

(assert (not b!261985))

(assert (not b!262317))

(assert (not b_lambda!8035))

(assert (not b!262306))

(assert (not b!262375))

(assert (not d!75040))

(assert (not b!262250))

(assert (not b!262294))

(assert (not b!262452))

(assert (not b!262302))

(assert (not b!261897))

(assert (not b!262319))

(assert (not b_next!9737))

(assert b_and!20431)

(assert b_and!20269)

(assert (not b_next!9755))

(assert (not d!75310))

(assert b_and!20341)

(assert (not d!75036))

(assert (not b!262154))

(assert (not b!262336))

(assert (not b!261932))

(assert (not d!75098))

(assert (not b!261909))

(assert (not b!262026))

(assert (not b!262007))

(assert (not d!75254))

(assert (not b!261887))

(assert (not b!261888))

(assert (not b!261913))

(assert (not b!262251))

(assert (not bm!14059))

(assert (not b!262526))

(assert (not d!75128))

(assert (not b!262011))

(assert (not d!75118))

(assert (not b!262512))

(assert (not b!262180))

(assert b_and!20425)

(assert (not d!75250))

(assert (not d!75178))

(assert (not b!262434))

(assert (not b!262140))

(assert b_and!20435)

(assert (not b!262292))

(assert (not bs!28631))

(assert (not b!262003))

(assert (not b!262474))

(assert (not tb!14197))

(assert (not d!75232))

(assert (not d!75070))

(assert (not b!262316))

(assert (not b!262144))

(assert (not b!262444))

(assert (not b_next!9719))

(assert (not bm!14043))

(assert (not d!75318))

(assert (not b!262174))

(assert (not d!75124))

(assert (not b!262184))

(assert (not d!75220))

(assert (not b!261954))

(assert (not d!75260))

(assert (not d!75326))

(assert (not b!262202))

(assert (not d!75092))

(assert (not b_lambda!8067))

(assert (not d!75164))

(assert (not b!262423))

(assert (not d!75222))

(assert (not b!262349))

(assert (not b!262451))

(assert (not d!75076))

(assert (not b!262462))

(assert (not b!262079))

(assert (not b!261893))

(assert (not d!75082))

(assert (not bm!14064))

(assert (not b!261910))

(assert (not d!75052))

(assert (not b!262545))

(assert (not d!75184))

(assert (not b!262351))

(assert (not b!262466))

(assert (not b!262321))

(assert (not b!262217))

(assert (not bm!14051))

(assert (not tb!14207))

(assert (not b!261874))

(assert (not b!262153))

(assert (not b!262042))

(assert (not d!74998))

(assert (not b_lambda!8087))

(assert (not b!262424))

(assert (not d!75154))

(assert (not bm!14074))

(assert (not b!262033))

(assert (not d!75320))

(assert (not b!262062))

(assert (not b!262400))

(assert (not b!262500))

(assert (not b!262476))

(assert (not d!75218))

(assert (not b!262298))

(assert (not b!262060))

(assert (not d!75062))

(assert (not d!75246))

(assert (not b!262544))

(assert (not d!75274))

(assert (not b!262297))

(assert (not b!262384))

(assert (not b!262472))

(assert (not b_next!9739))

(assert (not b!262082))

(assert (not b!262475))

(assert (not b!262368))

(assert (not b!262001))

(assert (not b!262508))

(assert b_and!20427)

(assert (not d!75094))

(assert (not d!75204))

(assert (not b!262346))

(assert (not b_next!9713))

(assert (not b!262542))

(assert (not d!75000))

(assert (not b!262182))

(assert (not b!262355))

(assert (not b!262507))

(assert (not b_lambda!8093))

(assert (not b!262004))

(assert (not d!75084))

(assert (not b!262136))

(assert (not bm!14049))

(assert (not b!262081))

(assert (not b!262517))

(assert b_and!20437)

(assert (not b!262371))

(assert (not b_next!9753))

(assert (not d!75292))

(assert (not b_lambda!8083))

(assert (not d!75162))

(assert (not b!262337))

(assert (not b!262293))

(assert (not b!262194))

(assert (not d!75244))

(assert (not b_lambda!8091))

(assert (not d!75028))

(assert (not bm!14071))

(assert (not b!262481))

(assert (not b!262128))

(assert (not b!262459))

(assert (not b!262099))

(assert (not b!262442))

(assert (not b_lambda!8095))

(assert (not b!262000))

(assert (not d!74996))

(assert (not b!262525))

(assert (not d!75072))

(assert (not b!262049))

(assert (not b!262097))

(assert (not b!262521))

(assert b_and!20331)

(assert (not b!262296))

(assert (not b!262448))

(assert (not d!75114))

(assert (not b!262152))

(assert (not d!75306))

(assert (not b!262155))

(assert (not b!262374))

(assert (not b!262376))

(assert (not b!262543))

(assert (not bm!14042))

(assert (not b!261878))

(assert (not b!262463))

(assert (not d!75116))

(assert (not b!262036))

(assert (not b!262414))

(assert (not b_lambda!8085))

(assert (not b!262440))

(assert (not b!262102))

(assert (not b!262383))

(assert (not b!262438))

(assert (not d!75016))

(assert (not d!75208))

(assert (not b!262120))

(assert (not d!75064))

(assert (not b!262245))

(assert (not bm!14040))

(assert (not b!262199))

(assert (not b!262455))

(assert (not b!262318))

(assert (not d!75136))

(assert (not b!261892))

(assert (not b!262017))

(assert (not b!262167))

(assert (not b!262247))

(assert (not b!262399))

(assert (not bm!14067))

(assert (not d!75236))

(assert (not b!261920))

(assert (not bm!14077))

(assert (not b!262527))

(assert (not d!75108))

(assert (not d!75166))

(assert (not b!262403))

(assert (not b!262395))

(assert (not b!262145))

(assert (not d!75078))

(assert (not b!261995))

(assert (not b!262535))

(assert (not d!75286))

(assert (not b!262541))

(assert (not b!262396))

(assert (not b!262432))

(assert (not b!261991))

(assert (not b!261952))

(assert (not d!75294))

(assert (not d!75054))

(assert (not b!262450))

(assert (not bm!14052))

(assert (not b!262101))

(assert (not d!75140))

(assert (not b!262345))

(assert (not b_lambda!8037))

(assert (not b!262343))

(assert (not b_lambda!8061))

(assert (not d!75288))

(assert (not b_lambda!8097))

(assert (not b!262149))

(assert (not b!262051))

(assert (not b_lambda!8089))

(assert (not b!262092))

(assert (not b!262091))

(assert (not tb!14187))

(assert (not b!261956))

(assert (not d!75066))

(assert (not b!262386))

(assert (not d!75024))

(assert (not b!262244))

(assert (not d!75172))

(assert (not b!261997))

(assert (not tb!14237))

(assert (not b!262435))

(assert (not b!262446))

(assert (not d!75192))

(assert (not d!75152))

(assert (not b!262485))

(assert (not d!75050))

(assert (not d!75148))

(assert (not d!75034))

(assert (not b!262324))

(assert (not d!75190))

(assert (not b_lambda!8043))

(assert (not bm!14076))

(assert b_and!20423)

(assert (not d!75150))

(assert (not bs!28628))

(assert (not d!75300))

(assert (not d!75138))

(assert (not b!262084))

(assert (not b!262537))

(assert (not b!262380))

(assert (not b!262123))

(assert (not b!262533))

(assert (not b!262106))

(assert (not b!262086))

(assert (not d!75316))

(assert (not d!75106))

(assert (not b!262460))

(assert (not bs!28632))

(assert (not d!75242))

(assert (not b!262539))

(assert (not b!262197))

(assert (not b!262498))

(assert (not b!262385))

(assert (not d!75234))

(assert (not b!262029))

(assert (not b!262469))

(assert (not b!262340))

(assert (not d!75130))

(assert (not b!262486))

(assert (not d!75044))

(assert (not bm!14037))

(assert (not b!262308))

(assert (not b!262124))

(assert (not b!261595))

(assert (not b!262373))

(assert (not d!75228))

(assert (not b_next!9711))

(assert (not b!262443))

(assert (not d!75160))

(assert (not b!262531))

(assert (not d!75022))

(assert (not bm!14044))

(assert (not d!75248))

(assert (not b!262150))

(assert (not b!262192))

(assert (not d!75120))

(assert (not b_lambda!8039))

(assert (not b!262422))

(assert (not b!261908))

(assert (not d!75168))

(assert (not b!262198))

(assert (not b!262200))

(assert (not d!75158))

(assert (not b!262497))

(assert b_and!20265)

(assert (not b!262218))

(assert (not b!262425))

(assert (not b!262370))

(assert (not bs!28629))

(assert (not b!262341))

(assert (not b!262020))

(assert (not b!261950))

(assert (not tb!14217))

(assert (not bm!14047))

(assert (not b!262418))

(assert (not b!262035))

(assert (not d!75146))

(assert (not d!75186))

(assert (not b!262519))

(assert (not b!262037))

(assert (not b_lambda!8073))

(assert (not d!75240))

(assert (not b_next!9733))

(assert (not b!262540))

(assert (not b!261963))

(assert (not b!262406))

(assert (not b!262480))

(assert (not b!262135))

(assert (not b!262210))

(assert (not b!262513))

(assert (not b!262420))

(assert (not b!262415))

(assert (not b!262394))

(assert (not bm!14034))

(assert (not b!262249))

(assert (not b!262402))

(assert (not b!262093))

(assert (not b!262390))

(assert (not b!262078))

(assert (not b!262338))

(assert (not d!75038))

(assert (not b!262172))

(assert (not b!261895))

(assert (not b!262141))

(assert (not b!261928))

(assert (not d!75086))

(assert (not b!262201))

(assert (not b_next!9717))

(assert (not b!262524))

(assert (not d!75046))

(assert (not b!262028))

(assert (not d!75180))

(assert (not b!261927))

(assert (not b!261903))

(assert (not b!262369))

(assert (not d!75256))

(assert (not b!261964))

(assert (not d!75112))

(assert (not b!262221))

(assert (not d!75032))

(assert (not b!262417))

(assert (not d!75176))

(assert (not b!262499))

(assert (not d!75206))

(assert (not d!75100))

(assert (not b!262379))

(assert (not d!75276))

(assert (not d!75110))

(assert (not b!262479))

(assert (not b!262038))

(assert (not b!262096))

(assert (not b!262204))

(assert (not bm!14048))

(assert (not d!75252))

(assert (not d!75188))

(assert (not d!75004))

(assert (not d!75258))

(assert (not d!75238))

(assert (not b!262509))

(assert (not b!261929))

(assert (not d!75322))

(assert (not b!262105))

(assert (not bm!14078))

(assert (not b_next!9735))

(assert (not b!261402))

(assert (not b!262246))

(assert (not b_next!9715))

(assert (not b!262127))

(assert (not bm!14062))

(assert (not d!75312))

(assert (not bm!14050))

(assert (not b!262164))

(assert (not b!262401))

(assert (not b!262366))

(assert (not tb!14227))

(assert b_and!20433)

(assert (not b!262458))

(assert (not b!262161))

(assert (not d!75096))

(assert (not b!261922))

(assert (not b!262503))

(assert (not bs!28633))

(assert (not b!262031))

(assert (not b!262291))

(assert (not b!262409))

(assert (not d!75014))

(assert (not tb!14177))

(assert (not d!75104))

(assert (not b!262328))

(assert (not b!262171))

(assert (not b!262404))

(assert (not d!75142))

(assert (not d!75018))

(assert (not b!262447))

(assert b_and!20273)

(assert (not b!262088))

(assert tp_is_empty!1789)

(assert (not b!261905))

(assert (not d!75030))

(assert (not b_lambda!8081))

(assert (not b!262372))

(assert (not d!75278))

(assert (not b!262454))

(assert (not b!262464))

(assert (not b!262158))

(assert (not b!262252))

(assert (not b!262311))

(assert (not bm!14060))

(assert (not b!261926))

(assert (not b!262006))

(assert (not b!262183))

(assert (not d!75102))

(assert (not b!262467))

(assert (not b!262118))

(assert (not d!75068))

(assert (not b_next!9749))

(assert (not b_next!9709))

(assert (not b!262483))

(assert (not bm!14073))

(assert (not b!262168))

(assert (not b!261965))

(assert (not b!262523))

(assert (not b!262195))

(assert (not b!261949))

(assert (not d!75230))

(assert (not b!262165))

(assert (not b!262411))

(assert (not d!75122))

(assert (not b!262138))

(assert (not bm!14072))

(assert (not b!262470))

(assert (not d!75216))

(assert (not b!262353))

(assert (not b!262456))

(assert (not b_lambda!8071))

(assert (not bm!14063))

(assert (not b!262511))

(assert (not b!262039))

(assert (not b!261890))

(assert (not b!262122))

(assert (not b!261925))

(assert (not b!262482))

(assert (not b!262156))

(assert (not b!262121))

(assert (not b!262216))

(assert (not d!75048))

(assert (not bm!14068))

(assert (not bm!14053))

(assert b_and!20439)

(assert (not b!261955))

(assert (not b!262186))

(assert (not b!262468))

(assert (not b!262516))

(assert (not bm!14041))

(assert (not b!262151))

(assert (not b!262162))

(assert (not b!261953))

(assert (not b!262520))

(assert (not b!262061))

(assert (not d!75074))

(assert (not b!262410))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20425)

(assert b_and!20435)

(assert (not b_next!9719))

(assert b_and!20331)

(assert b_and!20423)

(assert (not b_next!9711))

(assert b_and!20265)

(assert (not b_next!9733))

(assert (not b_next!9717))

(assert b_and!20433)

(assert (not b_next!9709))

(assert b_and!20439)

(assert (not b_next!9751))

(assert b_and!20429)

(assert (not b_next!9737))

(assert b_and!20431)

(assert b_and!20269)

(assert (not b_next!9755))

(assert b_and!20341)

(assert (not b_next!9739))

(assert (not b_next!9713))

(assert b_and!20427)

(assert b_and!20437)

(assert (not b_next!9753))

(assert (not b_next!9735))

(assert (not b_next!9715))

(assert b_and!20273)

(assert (not b_next!9749))

(check-sat)

(pop 1)

