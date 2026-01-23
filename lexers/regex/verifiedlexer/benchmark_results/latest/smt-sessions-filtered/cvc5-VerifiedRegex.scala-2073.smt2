; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105392 () Bool)

(assert start!105392)

(declare-fun b!1187405 () Bool)

(declare-fun b_free!28597 () Bool)

(declare-fun b_next!29301 () Bool)

(assert (=> b!1187405 (= b_free!28597 (not b_next!29301))))

(declare-fun tp!338692 () Bool)

(declare-fun b_and!81749 () Bool)

(assert (=> b!1187405 (= tp!338692 b_and!81749)))

(declare-fun b_free!28599 () Bool)

(declare-fun b_next!29303 () Bool)

(assert (=> b!1187405 (= b_free!28599 (not b_next!29303))))

(declare-fun tp!338694 () Bool)

(declare-fun b_and!81751 () Bool)

(assert (=> b!1187405 (= tp!338694 b_and!81751)))

(declare-fun b!1187397 () Bool)

(declare-fun b_free!28601 () Bool)

(declare-fun b_next!29305 () Bool)

(assert (=> b!1187397 (= b_free!28601 (not b_next!29305))))

(declare-fun tp!338690 () Bool)

(declare-fun b_and!81753 () Bool)

(assert (=> b!1187397 (= tp!338690 b_and!81753)))

(declare-fun b_free!28603 () Bool)

(declare-fun b_next!29307 () Bool)

(assert (=> b!1187397 (= b_free!28603 (not b_next!29307))))

(declare-fun tp!338688 () Bool)

(declare-fun b_and!81755 () Bool)

(assert (=> b!1187397 (= tp!338688 b_and!81755)))

(declare-fun b!1187417 () Bool)

(declare-fun e!763021 () Bool)

(assert (=> b!1187417 (= e!763021 true)))

(declare-fun b!1187416 () Bool)

(declare-fun e!763020 () Bool)

(assert (=> b!1187416 (= e!763020 e!763021)))

(declare-fun b!1187415 () Bool)

(declare-fun e!763019 () Bool)

(assert (=> b!1187415 (= e!763019 e!763020)))

(declare-fun b!1187399 () Bool)

(assert (=> b!1187399 e!763019))

(assert (= b!1187416 b!1187417))

(assert (= b!1187415 b!1187416))

(declare-datatypes ((C!7030 0))(
  ( (C!7031 (val!3811 Int)) )
))
(declare-datatypes ((List!11947 0))(
  ( (Nil!11923) (Cons!11923 (h!17324 C!7030) (t!112005 List!11947)) )
))
(declare-datatypes ((IArray!7815 0))(
  ( (IArray!7816 (innerList!3965 List!11947)) )
))
(declare-datatypes ((Conc!3905 0))(
  ( (Node!3905 (left!10380 Conc!3905) (right!10710 Conc!3905) (csize!8040 Int) (cheight!4116 Int)) (Leaf!5979 (xs!6610 IArray!7815) (csize!8041 Int)) (Empty!3905) )
))
(declare-datatypes ((List!11948 0))(
  ( (Nil!11924) (Cons!11924 (h!17325 (_ BitVec 16)) (t!112006 List!11948)) )
))
(declare-datatypes ((BalanceConc!7832 0))(
  ( (BalanceConc!7833 (c!197279 Conc!3905)) )
))
(declare-datatypes ((TokenValue!2152 0))(
  ( (FloatLiteralValue!4304 (text!15509 List!11948)) (TokenValueExt!2151 (__x!8015 Int)) (Broken!10760 (value!67483 List!11948)) (Object!2175) (End!2152) (Def!2152) (Underscore!2152) (Match!2152) (Else!2152) (Error!2152) (Case!2152) (If!2152) (Extends!2152) (Abstract!2152) (Class!2152) (Val!2152) (DelimiterValue!4304 (del!2212 List!11948)) (KeywordValue!2158 (value!67484 List!11948)) (CommentValue!4304 (value!67485 List!11948)) (WhitespaceValue!4304 (value!67486 List!11948)) (IndentationValue!2152 (value!67487 List!11948)) (String!14429) (Int32!2152) (Broken!10761 (value!67488 List!11948)) (Boolean!2153) (Unit!18293) (OperatorValue!2155 (op!2212 List!11948)) (IdentifierValue!4304 (value!67489 List!11948)) (IdentifierValue!4305 (value!67490 List!11948)) (WhitespaceValue!4305 (value!67491 List!11948)) (True!4304) (False!4304) (Broken!10762 (value!67492 List!11948)) (Broken!10763 (value!67493 List!11948)) (True!4305) (RightBrace!2152) (RightBracket!2152) (Colon!2152) (Null!2152) (Comma!2152) (LeftBracket!2152) (False!4305) (LeftBrace!2152) (ImaginaryLiteralValue!2152 (text!15510 List!11948)) (StringLiteralValue!6456 (value!67494 List!11948)) (EOFValue!2152 (value!67495 List!11948)) (IdentValue!2152 (value!67496 List!11948)) (DelimiterValue!4305 (value!67497 List!11948)) (DedentValue!2152 (value!67498 List!11948)) (NewLineValue!2152 (value!67499 List!11948)) (IntegerValue!6456 (value!67500 (_ BitVec 32)) (text!15511 List!11948)) (IntegerValue!6457 (value!67501 Int) (text!15512 List!11948)) (Times!2152) (Or!2152) (Equal!2152) (Minus!2152) (Broken!10764 (value!67502 List!11948)) (And!2152) (Div!2152) (LessEqual!2152) (Mod!2152) (Concat!5508) (Not!2152) (Plus!2152) (SpaceValue!2152 (value!67503 List!11948)) (IntegerValue!6458 (value!67504 Int) (text!15513 List!11948)) (StringLiteralValue!6457 (text!15514 List!11948)) (FloatLiteralValue!4305 (text!15515 List!11948)) (BytesLiteralValue!2152 (value!67505 List!11948)) (CommentValue!4305 (value!67506 List!11948)) (StringLiteralValue!6458 (value!67507 List!11948)) (ErrorTokenValue!2152 (msg!2213 List!11948)) )
))
(declare-datatypes ((Regex!3356 0))(
  ( (ElementMatch!3356 (c!197280 C!7030)) (Concat!5509 (regOne!7224 Regex!3356) (regTwo!7224 Regex!3356)) (EmptyExpr!3356) (Star!3356 (reg!3685 Regex!3356)) (EmptyLang!3356) (Union!3356 (regOne!7225 Regex!3356) (regTwo!7225 Regex!3356)) )
))
(declare-datatypes ((String!14430 0))(
  ( (String!14431 (value!67508 String)) )
))
(declare-datatypes ((TokenValueInjection!4004 0))(
  ( (TokenValueInjection!4005 (toValue!3203 Int) (toChars!3062 Int)) )
))
(declare-datatypes ((Rule!3972 0))(
  ( (Rule!3973 (regex!2086 Regex!3356) (tag!2348 String!14430) (isSeparator!2086 Bool) (transformation!2086 TokenValueInjection!4004)) )
))
(declare-datatypes ((List!11949 0))(
  ( (Nil!11925) (Cons!11925 (h!17326 Rule!3972) (t!112007 List!11949)) )
))
(declare-fun rules!4386 () List!11949)

(assert (= (and b!1187399 (is-Cons!11925 rules!4386)) b!1187415))

(declare-fun order!7427 () Int)

(declare-fun lambda!48944 () Int)

(declare-fun order!7429 () Int)

(declare-fun dynLambda!5331 (Int Int) Int)

(declare-fun dynLambda!5332 (Int Int) Int)

(assert (=> b!1187417 (< (dynLambda!5331 order!7427 (toValue!3203 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48944))))

(declare-fun order!7431 () Int)

(declare-fun dynLambda!5333 (Int Int) Int)

(assert (=> b!1187417 (< (dynLambda!5333 order!7431 (toChars!3062 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48944))))

(declare-datatypes ((LexerInterface!1781 0))(
  ( (LexerInterfaceExt!1778 (__x!8016 Int)) (Lexer!1779) )
))
(declare-fun thiss!27592 () LexerInterface!1781)

(declare-datatypes ((Token!3834 0))(
  ( (Token!3835 (value!67509 TokenValue!2152) (rule!3507 Rule!3972) (size!9402 Int) (originalCharacters!2640 List!11947)) )
))
(declare-datatypes ((List!11950 0))(
  ( (Nil!11926) (Cons!11926 (h!17327 Token!3834) (t!112008 List!11950)) )
))
(declare-fun lt!408405 () List!11950)

(declare-fun b!1187392 () Bool)

(declare-fun e!763001 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!647 (LexerInterface!1781 List!11949 List!11950) Bool)

(assert (=> b!1187392 (= e!763001 (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 (t!112008 lt!408405)))))

(declare-fun res!536557 () Bool)

(declare-fun e!763003 () Bool)

(assert (=> start!105392 (=> (not res!536557) (not e!763003))))

(assert (=> start!105392 (= res!536557 (is-Lexer!1779 thiss!27592))))

(assert (=> start!105392 e!763003))

(assert (=> start!105392 true))

(declare-fun e!763002 () Bool)

(assert (=> start!105392 e!763002))

(declare-fun e!763007 () Bool)

(assert (=> start!105392 e!763007))

(declare-fun tp!338687 () Bool)

(declare-fun b!1187393 () Bool)

(declare-fun e!763004 () Bool)

(declare-fun e!763009 () Bool)

(declare-fun inv!15754 (String!14430) Bool)

(declare-fun inv!15757 (TokenValueInjection!4004) Bool)

(assert (=> b!1187393 (= e!763009 (and tp!338687 (inv!15754 (tag!2348 (h!17326 rules!4386))) (inv!15757 (transformation!2086 (h!17326 rules!4386))) e!763004))))

(declare-fun b!1187394 () Bool)

(declare-fun res!536554 () Bool)

(assert (=> b!1187394 (=> (not res!536554) (not e!763003))))

(declare-fun isEmpty!7175 (List!11949) Bool)

(assert (=> b!1187394 (= res!536554 (not (isEmpty!7175 rules!4386)))))

(declare-fun b!1187395 () Bool)

(declare-fun res!536556 () Bool)

(assert (=> b!1187395 (=> (not res!536556) (not e!763003))))

(declare-fun l!6534 () List!11950)

(assert (=> b!1187395 (= res!536556 (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1187396 () Bool)

(declare-fun e!763012 () Bool)

(declare-fun e!763008 () Bool)

(declare-fun tp!338693 () Bool)

(assert (=> b!1187396 (= e!763008 (and tp!338693 (inv!15754 (tag!2348 (rule!3507 (h!17327 l!6534)))) (inv!15757 (transformation!2086 (rule!3507 (h!17327 l!6534)))) e!763012))))

(assert (=> b!1187397 (= e!763004 (and tp!338690 tp!338688))))

(declare-fun b!1187398 () Bool)

(declare-fun res!536553 () Bool)

(assert (=> b!1187398 (=> (not res!536553) (not e!763003))))

(declare-fun rulesInvariant!1655 (LexerInterface!1781 List!11949) Bool)

(assert (=> b!1187398 (= res!536553 (rulesInvariant!1655 thiss!27592 rules!4386))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!175 (LexerInterface!1781 List!11950 List!11949) Bool)

(assert (=> b!1187399 (= e!763003 (not (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 lt!408405 rules!4386)))))

(declare-fun forall!3157 (List!11950 Int) Bool)

(assert (=> b!1187399 (forall!3157 lt!408405 lambda!48944)))

(declare-datatypes ((Unit!18294 0))(
  ( (Unit!18295) )
))
(declare-fun lt!408404 () Unit!18294)

(declare-fun lemmaForallSubseq!196 (List!11950 List!11950 Int) Unit!18294)

(assert (=> b!1187399 (= lt!408404 (lemmaForallSubseq!196 lt!408405 l!6534 lambda!48944))))

(declare-fun subseq!336 (List!11950 List!11950) Bool)

(assert (=> b!1187399 (subseq!336 lt!408405 l!6534)))

(declare-fun lt!408403 () Unit!18294)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!99 (List!11950 Int) Unit!18294)

(assert (=> b!1187399 (= lt!408403 (lemmaDropSubseq!99 l!6534 i!1621))))

(declare-fun e!763006 () Bool)

(assert (=> b!1187399 (= (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 lt!408405) e!763006)))

(declare-fun res!536550 () Bool)

(assert (=> b!1187399 (=> res!536550 e!763006)))

(assert (=> b!1187399 (= res!536550 (not (is-Cons!11926 lt!408405)))))

(declare-fun drop!560 (List!11950 Int) List!11950)

(assert (=> b!1187399 (= lt!408405 (drop!560 l!6534 i!1621))))

(declare-fun b!1187400 () Bool)

(declare-fun res!536552 () Bool)

(assert (=> b!1187400 (=> (not res!536552) (not e!763003))))

(assert (=> b!1187400 (= res!536552 (and (not (is-Nil!11926 l!6534)) (<= i!1621 0)))))

(declare-fun b!1187401 () Bool)

(assert (=> b!1187401 (= e!763006 e!763001)))

(declare-fun res!536551 () Bool)

(assert (=> b!1187401 (=> (not res!536551) (not e!763001))))

(declare-fun rulesProduceIndividualToken!808 (LexerInterface!1781 List!11949 Token!3834) Bool)

(assert (=> b!1187401 (= res!536551 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 lt!408405)))))

(declare-fun b!1187402 () Bool)

(declare-fun res!536555 () Bool)

(assert (=> b!1187402 (=> (not res!536555) (not e!763003))))

(assert (=> b!1187402 (= res!536555 (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1187403 () Bool)

(declare-fun tp!338695 () Bool)

(assert (=> b!1187403 (= e!763002 (and e!763009 tp!338695))))

(declare-fun tp!338691 () Bool)

(declare-fun b!1187404 () Bool)

(declare-fun e!763010 () Bool)

(declare-fun inv!21 (TokenValue!2152) Bool)

(assert (=> b!1187404 (= e!763010 (and (inv!21 (value!67509 (h!17327 l!6534))) e!763008 tp!338691))))

(assert (=> b!1187405 (= e!763012 (and tp!338692 tp!338694))))

(declare-fun b!1187406 () Bool)

(declare-fun tp!338689 () Bool)

(declare-fun inv!15758 (Token!3834) Bool)

(assert (=> b!1187406 (= e!763007 (and (inv!15758 (h!17327 l!6534)) e!763010 tp!338689))))

(assert (= (and start!105392 res!536557) b!1187394))

(assert (= (and b!1187394 res!536554) b!1187398))

(assert (= (and b!1187398 res!536553) b!1187395))

(assert (= (and b!1187395 res!536556) b!1187402))

(assert (= (and b!1187402 res!536555) b!1187400))

(assert (= (and b!1187400 res!536552) b!1187399))

(assert (= (and b!1187399 (not res!536550)) b!1187401))

(assert (= (and b!1187401 res!536551) b!1187392))

(assert (= b!1187393 b!1187397))

(assert (= b!1187403 b!1187393))

(assert (= (and start!105392 (is-Cons!11925 rules!4386)) b!1187403))

(assert (= b!1187396 b!1187405))

(assert (= b!1187404 b!1187396))

(assert (= b!1187406 b!1187404))

(assert (= (and start!105392 (is-Cons!11926 l!6534)) b!1187406))

(declare-fun m!1363175 () Bool)

(assert (=> b!1187393 m!1363175))

(declare-fun m!1363177 () Bool)

(assert (=> b!1187393 m!1363177))

(declare-fun m!1363179 () Bool)

(assert (=> b!1187401 m!1363179))

(declare-fun m!1363181 () Bool)

(assert (=> b!1187392 m!1363181))

(declare-fun m!1363183 () Bool)

(assert (=> b!1187398 m!1363183))

(declare-fun m!1363185 () Bool)

(assert (=> b!1187402 m!1363185))

(declare-fun m!1363187 () Bool)

(assert (=> b!1187404 m!1363187))

(declare-fun m!1363189 () Bool)

(assert (=> b!1187396 m!1363189))

(declare-fun m!1363191 () Bool)

(assert (=> b!1187396 m!1363191))

(declare-fun m!1363193 () Bool)

(assert (=> b!1187399 m!1363193))

(declare-fun m!1363195 () Bool)

(assert (=> b!1187399 m!1363195))

(declare-fun m!1363197 () Bool)

(assert (=> b!1187399 m!1363197))

(declare-fun m!1363199 () Bool)

(assert (=> b!1187399 m!1363199))

(declare-fun m!1363201 () Bool)

(assert (=> b!1187399 m!1363201))

(declare-fun m!1363203 () Bool)

(assert (=> b!1187399 m!1363203))

(declare-fun m!1363205 () Bool)

(assert (=> b!1187399 m!1363205))

(declare-fun m!1363207 () Bool)

(assert (=> b!1187395 m!1363207))

(declare-fun m!1363209 () Bool)

(assert (=> b!1187394 m!1363209))

(declare-fun m!1363211 () Bool)

(assert (=> b!1187406 m!1363211))

(push 1)

(assert (not b_next!29307))

(assert b_and!81749)

(assert (not b!1187396))

(assert (not b!1187402))

(assert b_and!81753)

(assert (not b!1187398))

(assert b_and!81751)

(assert (not b_next!29301))

(assert (not b!1187393))

(assert (not b!1187399))

(assert (not b!1187404))

(assert (not b!1187394))

(assert (not b_next!29305))

(assert (not b!1187401))

(assert b_and!81755)

(assert (not b_next!29303))

(assert (not b!1187392))

(assert (not b!1187406))

(assert (not b!1187403))

(assert (not b!1187415))

(assert (not b!1187395))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29307))

(assert (not b_next!29305))

(assert b_and!81749)

(assert b_and!81755)

(assert b_and!81753)

(assert (not b_next!29303))

(assert b_and!81751)

(assert (not b_next!29301))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!339628 () Bool)

(declare-fun res!536591 () Bool)

(declare-fun e!763072 () Bool)

(assert (=> d!339628 (=> (not res!536591) (not e!763072))))

(declare-fun isEmpty!7177 (List!11947) Bool)

(assert (=> d!339628 (= res!536591 (not (isEmpty!7177 (originalCharacters!2640 (h!17327 l!6534)))))))

(assert (=> d!339628 (= (inv!15758 (h!17327 l!6534)) e!763072)))

(declare-fun b!1187478 () Bool)

(declare-fun res!536592 () Bool)

(assert (=> b!1187478 (=> (not res!536592) (not e!763072))))

(declare-fun list!4379 (BalanceConc!7832) List!11947)

(declare-fun dynLambda!5337 (Int TokenValue!2152) BalanceConc!7832)

(assert (=> b!1187478 (= res!536592 (= (originalCharacters!2640 (h!17327 l!6534)) (list!4379 (dynLambda!5337 (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (value!67509 (h!17327 l!6534))))))))

(declare-fun b!1187479 () Bool)

(declare-fun size!9404 (List!11947) Int)

(assert (=> b!1187479 (= e!763072 (= (size!9402 (h!17327 l!6534)) (size!9404 (originalCharacters!2640 (h!17327 l!6534)))))))

(assert (= (and d!339628 res!536591) b!1187478))

(assert (= (and b!1187478 res!536592) b!1187479))

(declare-fun b_lambda!35655 () Bool)

(assert (=> (not b_lambda!35655) (not b!1187478)))

(declare-fun t!112016 () Bool)

(declare-fun tb!66381 () Bool)

(assert (=> (and b!1187405 (= (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534))))) t!112016) tb!66381))

(declare-fun b!1187484 () Bool)

(declare-fun e!763075 () Bool)

(declare-fun tp!338725 () Bool)

(declare-fun inv!15761 (Conc!3905) Bool)

(assert (=> b!1187484 (= e!763075 (and (inv!15761 (c!197279 (dynLambda!5337 (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (value!67509 (h!17327 l!6534))))) tp!338725))))

(declare-fun result!79766 () Bool)

(declare-fun inv!15762 (BalanceConc!7832) Bool)

(assert (=> tb!66381 (= result!79766 (and (inv!15762 (dynLambda!5337 (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (value!67509 (h!17327 l!6534)))) e!763075))))

(assert (= tb!66381 b!1187484))

(declare-fun m!1363251 () Bool)

(assert (=> b!1187484 m!1363251))

(declare-fun m!1363253 () Bool)

(assert (=> tb!66381 m!1363253))

(assert (=> b!1187478 t!112016))

(declare-fun b_and!81765 () Bool)

(assert (= b_and!81751 (and (=> t!112016 result!79766) b_and!81765)))

(declare-fun t!112018 () Bool)

(declare-fun tb!66383 () Bool)

(assert (=> (and b!1187397 (= (toChars!3062 (transformation!2086 (h!17326 rules!4386))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534))))) t!112018) tb!66383))

(declare-fun result!79770 () Bool)

(assert (= result!79770 result!79766))

(assert (=> b!1187478 t!112018))

(declare-fun b_and!81767 () Bool)

(assert (= b_and!81755 (and (=> t!112018 result!79770) b_and!81767)))

(declare-fun m!1363255 () Bool)

(assert (=> d!339628 m!1363255))

(declare-fun m!1363257 () Bool)

(assert (=> b!1187478 m!1363257))

(assert (=> b!1187478 m!1363257))

(declare-fun m!1363259 () Bool)

(assert (=> b!1187478 m!1363259))

(declare-fun m!1363261 () Bool)

(assert (=> b!1187479 m!1363261))

(assert (=> b!1187406 d!339628))

(declare-fun bs!287667 () Bool)

(declare-fun d!339632 () Bool)

(assert (= bs!287667 (and d!339632 b!1187399)))

(declare-fun lambda!48950 () Int)

(assert (=> bs!287667 (= (= thiss!27592 Lexer!1779) (= lambda!48950 lambda!48944))))

(declare-fun b!1187496 () Bool)

(declare-fun e!763087 () Bool)

(assert (=> b!1187496 (= e!763087 true)))

(declare-fun b!1187495 () Bool)

(declare-fun e!763086 () Bool)

(assert (=> b!1187495 (= e!763086 e!763087)))

(declare-fun b!1187494 () Bool)

(declare-fun e!763085 () Bool)

(assert (=> b!1187494 (= e!763085 e!763086)))

(assert (=> d!339632 e!763085))

(assert (= b!1187495 b!1187496))

(assert (= b!1187494 b!1187495))

(assert (= (and d!339632 (is-Cons!11925 rules!4386)) b!1187494))

(assert (=> b!1187496 (< (dynLambda!5331 order!7427 (toValue!3203 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48950))))

(assert (=> b!1187496 (< (dynLambda!5333 order!7431 (toChars!3062 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48950))))

(assert (=> d!339632 true))

(declare-fun lt!408417 () Bool)

(assert (=> d!339632 (= lt!408417 (forall!3157 l!6534 lambda!48950))))

(declare-fun e!763083 () Bool)

(assert (=> d!339632 (= lt!408417 e!763083)))

(declare-fun res!536601 () Bool)

(assert (=> d!339632 (=> res!536601 e!763083)))

(assert (=> d!339632 (= res!536601 (not (is-Cons!11926 l!6534)))))

(assert (=> d!339632 (not (isEmpty!7175 rules!4386))))

(assert (=> d!339632 (= (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 l!6534) lt!408417)))

(declare-fun b!1187492 () Bool)

(declare-fun e!763084 () Bool)

(assert (=> b!1187492 (= e!763083 e!763084)))

(declare-fun res!536600 () Bool)

(assert (=> b!1187492 (=> (not res!536600) (not e!763084))))

(assert (=> b!1187492 (= res!536600 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 l!6534)))))

(declare-fun b!1187493 () Bool)

(assert (=> b!1187493 (= e!763084 (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 (t!112008 l!6534)))))

(assert (= (and d!339632 (not res!536601)) b!1187492))

(assert (= (and b!1187492 res!536600) b!1187493))

(declare-fun m!1363267 () Bool)

(assert (=> d!339632 m!1363267))

(assert (=> d!339632 m!1363209))

(declare-fun m!1363269 () Bool)

(assert (=> b!1187492 m!1363269))

(declare-fun m!1363271 () Bool)

(assert (=> b!1187493 m!1363271))

(assert (=> b!1187395 d!339632))

(declare-fun d!339636 () Bool)

(assert (=> d!339636 (= (isEmpty!7175 rules!4386) (is-Nil!11925 rules!4386))))

(assert (=> b!1187394 d!339636))

(declare-fun b!1187509 () Bool)

(declare-fun res!536604 () Bool)

(declare-fun e!763095 () Bool)

(assert (=> b!1187509 (=> res!536604 e!763095)))

(assert (=> b!1187509 (= res!536604 (not (is-IntegerValue!6458 (value!67509 (h!17327 l!6534)))))))

(declare-fun e!763096 () Bool)

(assert (=> b!1187509 (= e!763096 e!763095)))

(declare-fun d!339638 () Bool)

(declare-fun c!197288 () Bool)

(assert (=> d!339638 (= c!197288 (is-IntegerValue!6456 (value!67509 (h!17327 l!6534))))))

(declare-fun e!763094 () Bool)

(assert (=> d!339638 (= (inv!21 (value!67509 (h!17327 l!6534))) e!763094)))

(declare-fun b!1187510 () Bool)

(declare-fun inv!15 (TokenValue!2152) Bool)

(assert (=> b!1187510 (= e!763095 (inv!15 (value!67509 (h!17327 l!6534))))))

(declare-fun b!1187511 () Bool)

(declare-fun inv!16 (TokenValue!2152) Bool)

(assert (=> b!1187511 (= e!763094 (inv!16 (value!67509 (h!17327 l!6534))))))

(declare-fun b!1187512 () Bool)

(assert (=> b!1187512 (= e!763094 e!763096)))

(declare-fun c!197287 () Bool)

(assert (=> b!1187512 (= c!197287 (is-IntegerValue!6457 (value!67509 (h!17327 l!6534))))))

(declare-fun b!1187513 () Bool)

(declare-fun inv!17 (TokenValue!2152) Bool)

(assert (=> b!1187513 (= e!763096 (inv!17 (value!67509 (h!17327 l!6534))))))

(assert (= (and d!339638 c!197288) b!1187511))

(assert (= (and d!339638 (not c!197288)) b!1187512))

(assert (= (and b!1187512 c!197287) b!1187513))

(assert (= (and b!1187512 (not c!197287)) b!1187509))

(assert (= (and b!1187509 (not res!536604)) b!1187510))

(declare-fun m!1363273 () Bool)

(assert (=> b!1187510 m!1363273))

(declare-fun m!1363275 () Bool)

(assert (=> b!1187511 m!1363275))

(declare-fun m!1363277 () Bool)

(assert (=> b!1187513 m!1363277))

(assert (=> b!1187404 d!339638))

(declare-fun d!339640 () Bool)

(assert (=> d!339640 (= (inv!15754 (tag!2348 (h!17326 rules!4386))) (= (mod (str.len (value!67508 (tag!2348 (h!17326 rules!4386)))) 2) 0))))

(assert (=> b!1187393 d!339640))

(declare-fun d!339642 () Bool)

(declare-fun res!536607 () Bool)

(declare-fun e!763099 () Bool)

(assert (=> d!339642 (=> (not res!536607) (not e!763099))))

(declare-fun semiInverseModEq!755 (Int Int) Bool)

(assert (=> d!339642 (= res!536607 (semiInverseModEq!755 (toChars!3062 (transformation!2086 (h!17326 rules!4386))) (toValue!3203 (transformation!2086 (h!17326 rules!4386)))))))

(assert (=> d!339642 (= (inv!15757 (transformation!2086 (h!17326 rules!4386))) e!763099)))

(declare-fun b!1187516 () Bool)

(declare-fun equivClasses!722 (Int Int) Bool)

(assert (=> b!1187516 (= e!763099 (equivClasses!722 (toChars!3062 (transformation!2086 (h!17326 rules!4386))) (toValue!3203 (transformation!2086 (h!17326 rules!4386)))))))

(assert (= (and d!339642 res!536607) b!1187516))

(declare-fun m!1363279 () Bool)

(assert (=> d!339642 m!1363279))

(declare-fun m!1363281 () Bool)

(assert (=> b!1187516 m!1363281))

(assert (=> b!1187393 d!339642))

(declare-fun bs!287668 () Bool)

(declare-fun d!339644 () Bool)

(assert (= bs!287668 (and d!339644 b!1187399)))

(declare-fun lambda!48951 () Int)

(assert (=> bs!287668 (= (= thiss!27592 Lexer!1779) (= lambda!48951 lambda!48944))))

(declare-fun bs!287669 () Bool)

(assert (= bs!287669 (and d!339644 d!339632)))

(assert (=> bs!287669 (= lambda!48951 lambda!48950)))

(declare-fun b!1187521 () Bool)

(declare-fun e!763104 () Bool)

(assert (=> b!1187521 (= e!763104 true)))

(declare-fun b!1187520 () Bool)

(declare-fun e!763103 () Bool)

(assert (=> b!1187520 (= e!763103 e!763104)))

(declare-fun b!1187519 () Bool)

(declare-fun e!763102 () Bool)

(assert (=> b!1187519 (= e!763102 e!763103)))

(assert (=> d!339644 e!763102))

(assert (= b!1187520 b!1187521))

(assert (= b!1187519 b!1187520))

(assert (= (and d!339644 (is-Cons!11925 rules!4386)) b!1187519))

(assert (=> b!1187521 (< (dynLambda!5331 order!7427 (toValue!3203 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48951))))

(assert (=> b!1187521 (< (dynLambda!5333 order!7431 (toChars!3062 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48951))))

(assert (=> d!339644 true))

(declare-fun lt!408418 () Bool)

(assert (=> d!339644 (= lt!408418 (forall!3157 (t!112008 lt!408405) lambda!48951))))

(declare-fun e!763100 () Bool)

(assert (=> d!339644 (= lt!408418 e!763100)))

(declare-fun res!536609 () Bool)

(assert (=> d!339644 (=> res!536609 e!763100)))

(assert (=> d!339644 (= res!536609 (not (is-Cons!11926 (t!112008 lt!408405))))))

(assert (=> d!339644 (not (isEmpty!7175 rules!4386))))

(assert (=> d!339644 (= (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 (t!112008 lt!408405)) lt!408418)))

(declare-fun b!1187517 () Bool)

(declare-fun e!763101 () Bool)

(assert (=> b!1187517 (= e!763100 e!763101)))

(declare-fun res!536608 () Bool)

(assert (=> b!1187517 (=> (not res!536608) (not e!763101))))

(assert (=> b!1187517 (= res!536608 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 (t!112008 lt!408405))))))

(declare-fun b!1187518 () Bool)

(assert (=> b!1187518 (= e!763101 (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 (t!112008 (t!112008 lt!408405))))))

(assert (= (and d!339644 (not res!536609)) b!1187517))

(assert (= (and b!1187517 res!536608) b!1187518))

(declare-fun m!1363283 () Bool)

(assert (=> d!339644 m!1363283))

(assert (=> d!339644 m!1363209))

(declare-fun m!1363285 () Bool)

(assert (=> b!1187517 m!1363285))

(declare-fun m!1363287 () Bool)

(assert (=> b!1187518 m!1363287))

(assert (=> b!1187392 d!339644))

(declare-fun d!339646 () Bool)

(declare-fun res!536614 () Bool)

(declare-fun e!763109 () Bool)

(assert (=> d!339646 (=> res!536614 e!763109)))

(assert (=> d!339646 (= res!536614 (or (not (is-Cons!11926 l!6534)) (not (is-Cons!11926 (t!112008 l!6534)))))))

(assert (=> d!339646 (= (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 l!6534 rules!4386) e!763109)))

(declare-fun b!1187526 () Bool)

(declare-fun e!763110 () Bool)

(assert (=> b!1187526 (= e!763109 e!763110)))

(declare-fun res!536615 () Bool)

(assert (=> b!1187526 (=> (not res!536615) (not e!763110))))

(declare-fun separableTokensPredicate!166 (LexerInterface!1781 Token!3834 Token!3834 List!11949) Bool)

(assert (=> b!1187526 (= res!536615 (separableTokensPredicate!166 thiss!27592 (h!17327 l!6534) (h!17327 (t!112008 l!6534)) rules!4386))))

(declare-fun lt!408436 () Unit!18294)

(declare-fun Unit!18299 () Unit!18294)

(assert (=> b!1187526 (= lt!408436 Unit!18299)))

(declare-fun size!9405 (BalanceConc!7832) Int)

(declare-fun charsOf!1104 (Token!3834) BalanceConc!7832)

(assert (=> b!1187526 (> (size!9405 (charsOf!1104 (h!17327 (t!112008 l!6534)))) 0)))

(declare-fun lt!408438 () Unit!18294)

(declare-fun Unit!18300 () Unit!18294)

(assert (=> b!1187526 (= lt!408438 Unit!18300)))

(assert (=> b!1187526 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 (t!112008 l!6534)))))

(declare-fun lt!408437 () Unit!18294)

(declare-fun Unit!18301 () Unit!18294)

(assert (=> b!1187526 (= lt!408437 Unit!18301)))

(assert (=> b!1187526 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 l!6534))))

(declare-fun lt!408434 () Unit!18294)

(declare-fun lt!408433 () Unit!18294)

(assert (=> b!1187526 (= lt!408434 lt!408433)))

(assert (=> b!1187526 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 (t!112008 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!325 (LexerInterface!1781 List!11949 List!11950 Token!3834) Unit!18294)

(assert (=> b!1187526 (= lt!408433 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!325 thiss!27592 rules!4386 l!6534 (h!17327 (t!112008 l!6534))))))

(declare-fun lt!408435 () Unit!18294)

(declare-fun lt!408439 () Unit!18294)

(assert (=> b!1187526 (= lt!408435 lt!408439)))

(assert (=> b!1187526 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 l!6534))))

(assert (=> b!1187526 (= lt!408439 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!325 thiss!27592 rules!4386 l!6534 (h!17327 l!6534)))))

(declare-fun b!1187527 () Bool)

(assert (=> b!1187527 (= e!763110 (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 (Cons!11926 (h!17327 (t!112008 l!6534)) (t!112008 (t!112008 l!6534))) rules!4386))))

(assert (= (and d!339646 (not res!536614)) b!1187526))

(assert (= (and b!1187526 res!536615) b!1187527))

(declare-fun m!1363289 () Bool)

(assert (=> b!1187526 m!1363289))

(declare-fun m!1363291 () Bool)

(assert (=> b!1187526 m!1363291))

(declare-fun m!1363293 () Bool)

(assert (=> b!1187526 m!1363293))

(declare-fun m!1363295 () Bool)

(assert (=> b!1187526 m!1363295))

(assert (=> b!1187526 m!1363291))

(declare-fun m!1363297 () Bool)

(assert (=> b!1187526 m!1363297))

(declare-fun m!1363299 () Bool)

(assert (=> b!1187526 m!1363299))

(assert (=> b!1187526 m!1363269))

(declare-fun m!1363301 () Bool)

(assert (=> b!1187527 m!1363301))

(assert (=> b!1187402 d!339646))

(declare-fun d!339648 () Bool)

(declare-fun lt!408465 () Bool)

(declare-fun e!763121 () Bool)

(assert (=> d!339648 (= lt!408465 e!763121)))

(declare-fun res!536628 () Bool)

(assert (=> d!339648 (=> (not res!536628) (not e!763121))))

(declare-datatypes ((IArray!7819 0))(
  ( (IArray!7820 (innerList!3967 List!11950)) )
))
(declare-datatypes ((Conc!3907 0))(
  ( (Node!3907 (left!10384 Conc!3907) (right!10714 Conc!3907) (csize!8044 Int) (cheight!4118 Int)) (Leaf!5981 (xs!6612 IArray!7819) (csize!8045 Int)) (Empty!3907) )
))
(declare-datatypes ((BalanceConc!7836 0))(
  ( (BalanceConc!7837 (c!197301 Conc!3907)) )
))
(declare-fun list!4380 (BalanceConc!7836) List!11950)

(declare-datatypes ((tuple2!12120 0))(
  ( (tuple2!12121 (_1!6907 BalanceConc!7836) (_2!6907 BalanceConc!7832)) )
))
(declare-fun lex!742 (LexerInterface!1781 List!11949 BalanceConc!7832) tuple2!12120)

(declare-fun print!679 (LexerInterface!1781 BalanceConc!7836) BalanceConc!7832)

(declare-fun singletonSeq!727 (Token!3834) BalanceConc!7836)

(assert (=> d!339648 (= res!536628 (= (list!4380 (_1!6907 (lex!742 thiss!27592 rules!4386 (print!679 thiss!27592 (singletonSeq!727 (h!17327 lt!408405)))))) (list!4380 (singletonSeq!727 (h!17327 lt!408405)))))))

(declare-fun e!763122 () Bool)

(assert (=> d!339648 (= lt!408465 e!763122)))

(declare-fun res!536630 () Bool)

(assert (=> d!339648 (=> (not res!536630) (not e!763122))))

(declare-fun lt!408466 () tuple2!12120)

(declare-fun size!9406 (BalanceConc!7836) Int)

(assert (=> d!339648 (= res!536630 (= (size!9406 (_1!6907 lt!408466)) 1))))

(assert (=> d!339648 (= lt!408466 (lex!742 thiss!27592 rules!4386 (print!679 thiss!27592 (singletonSeq!727 (h!17327 lt!408405)))))))

(assert (=> d!339648 (not (isEmpty!7175 rules!4386))))

(assert (=> d!339648 (= (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 lt!408405)) lt!408465)))

(declare-fun b!1187540 () Bool)

(declare-fun res!536629 () Bool)

(assert (=> b!1187540 (=> (not res!536629) (not e!763122))))

(declare-fun apply!2598 (BalanceConc!7836 Int) Token!3834)

(assert (=> b!1187540 (= res!536629 (= (apply!2598 (_1!6907 lt!408466) 0) (h!17327 lt!408405)))))

(declare-fun b!1187541 () Bool)

(declare-fun isEmpty!7178 (BalanceConc!7832) Bool)

(assert (=> b!1187541 (= e!763122 (isEmpty!7178 (_2!6907 lt!408466)))))

(declare-fun b!1187542 () Bool)

(assert (=> b!1187542 (= e!763121 (isEmpty!7178 (_2!6907 (lex!742 thiss!27592 rules!4386 (print!679 thiss!27592 (singletonSeq!727 (h!17327 lt!408405)))))))))

(assert (= (and d!339648 res!536630) b!1187540))

(assert (= (and b!1187540 res!536629) b!1187541))

(assert (= (and d!339648 res!536628) b!1187542))

(declare-fun m!1363319 () Bool)

(assert (=> d!339648 m!1363319))

(assert (=> d!339648 m!1363209))

(declare-fun m!1363321 () Bool)

(assert (=> d!339648 m!1363321))

(declare-fun m!1363323 () Bool)

(assert (=> d!339648 m!1363323))

(assert (=> d!339648 m!1363319))

(declare-fun m!1363325 () Bool)

(assert (=> d!339648 m!1363325))

(declare-fun m!1363327 () Bool)

(assert (=> d!339648 m!1363327))

(declare-fun m!1363329 () Bool)

(assert (=> d!339648 m!1363329))

(assert (=> d!339648 m!1363319))

(assert (=> d!339648 m!1363327))

(declare-fun m!1363331 () Bool)

(assert (=> b!1187540 m!1363331))

(declare-fun m!1363333 () Bool)

(assert (=> b!1187541 m!1363333))

(assert (=> b!1187542 m!1363319))

(assert (=> b!1187542 m!1363319))

(assert (=> b!1187542 m!1363327))

(assert (=> b!1187542 m!1363327))

(assert (=> b!1187542 m!1363329))

(declare-fun m!1363335 () Bool)

(assert (=> b!1187542 m!1363335))

(assert (=> b!1187401 d!339648))

(declare-fun d!339652 () Bool)

(assert (=> d!339652 (subseq!336 (drop!560 l!6534 i!1621) l!6534)))

(declare-fun lt!408469 () Unit!18294)

(declare-fun choose!7677 (List!11950 Int) Unit!18294)

(assert (=> d!339652 (= lt!408469 (choose!7677 l!6534 i!1621))))

(assert (=> d!339652 (= (lemmaDropSubseq!99 l!6534 i!1621) lt!408469)))

(declare-fun bs!287670 () Bool)

(assert (= bs!287670 d!339652))

(assert (=> bs!287670 m!1363205))

(assert (=> bs!287670 m!1363205))

(declare-fun m!1363337 () Bool)

(assert (=> bs!287670 m!1363337))

(declare-fun m!1363339 () Bool)

(assert (=> bs!287670 m!1363339))

(assert (=> b!1187399 d!339652))

(declare-fun b!1187553 () Bool)

(declare-fun e!763134 () Bool)

(assert (=> b!1187553 (= e!763134 (subseq!336 (t!112008 lt!408405) (t!112008 l!6534)))))

(declare-fun b!1187554 () Bool)

(declare-fun e!763133 () Bool)

(assert (=> b!1187554 (= e!763133 (subseq!336 lt!408405 (t!112008 l!6534)))))

(declare-fun d!339654 () Bool)

(declare-fun res!536640 () Bool)

(declare-fun e!763131 () Bool)

(assert (=> d!339654 (=> res!536640 e!763131)))

(assert (=> d!339654 (= res!536640 (is-Nil!11926 lt!408405))))

(assert (=> d!339654 (= (subseq!336 lt!408405 l!6534) e!763131)))

(declare-fun b!1187552 () Bool)

(declare-fun e!763132 () Bool)

(assert (=> b!1187552 (= e!763132 e!763133)))

(declare-fun res!536641 () Bool)

(assert (=> b!1187552 (=> res!536641 e!763133)))

(assert (=> b!1187552 (= res!536641 e!763134)))

(declare-fun res!536642 () Bool)

(assert (=> b!1187552 (=> (not res!536642) (not e!763134))))

(assert (=> b!1187552 (= res!536642 (= (h!17327 lt!408405) (h!17327 l!6534)))))

(declare-fun b!1187551 () Bool)

(assert (=> b!1187551 (= e!763131 e!763132)))

(declare-fun res!536639 () Bool)

(assert (=> b!1187551 (=> (not res!536639) (not e!763132))))

(assert (=> b!1187551 (= res!536639 (is-Cons!11926 l!6534))))

(assert (= (and d!339654 (not res!536640)) b!1187551))

(assert (= (and b!1187551 res!536639) b!1187552))

(assert (= (and b!1187552 res!536642) b!1187553))

(assert (= (and b!1187552 (not res!536641)) b!1187554))

(declare-fun m!1363341 () Bool)

(assert (=> b!1187553 m!1363341))

(declare-fun m!1363343 () Bool)

(assert (=> b!1187554 m!1363343))

(assert (=> b!1187399 d!339654))

(declare-fun d!339656 () Bool)

(assert (=> d!339656 (forall!3157 lt!408405 lambda!48944)))

(declare-fun lt!408472 () Unit!18294)

(declare-fun choose!7678 (List!11950 List!11950 Int) Unit!18294)

(assert (=> d!339656 (= lt!408472 (choose!7678 lt!408405 l!6534 lambda!48944))))

(assert (=> d!339656 (forall!3157 l!6534 lambda!48944)))

(assert (=> d!339656 (= (lemmaForallSubseq!196 lt!408405 l!6534 lambda!48944) lt!408472)))

(declare-fun bs!287671 () Bool)

(assert (= bs!287671 d!339656))

(assert (=> bs!287671 m!1363201))

(declare-fun m!1363345 () Bool)

(assert (=> bs!287671 m!1363345))

(declare-fun m!1363347 () Bool)

(assert (=> bs!287671 m!1363347))

(assert (=> b!1187399 d!339656))

(declare-fun d!339658 () Bool)

(declare-fun res!536647 () Bool)

(declare-fun e!763139 () Bool)

(assert (=> d!339658 (=> res!536647 e!763139)))

(assert (=> d!339658 (= res!536647 (is-Nil!11926 lt!408405))))

(assert (=> d!339658 (= (forall!3157 lt!408405 lambda!48944) e!763139)))

(declare-fun b!1187559 () Bool)

(declare-fun e!763140 () Bool)

(assert (=> b!1187559 (= e!763139 e!763140)))

(declare-fun res!536648 () Bool)

(assert (=> b!1187559 (=> (not res!536648) (not e!763140))))

(declare-fun dynLambda!5338 (Int Token!3834) Bool)

(assert (=> b!1187559 (= res!536648 (dynLambda!5338 lambda!48944 (h!17327 lt!408405)))))

(declare-fun b!1187560 () Bool)

(assert (=> b!1187560 (= e!763140 (forall!3157 (t!112008 lt!408405) lambda!48944))))

(assert (= (and d!339658 (not res!536647)) b!1187559))

(assert (= (and b!1187559 res!536648) b!1187560))

(declare-fun b_lambda!35657 () Bool)

(assert (=> (not b_lambda!35657) (not b!1187559)))

(declare-fun m!1363349 () Bool)

(assert (=> b!1187559 m!1363349))

(declare-fun m!1363351 () Bool)

(assert (=> b!1187560 m!1363351))

(assert (=> b!1187399 d!339658))

(declare-fun bs!287672 () Bool)

(declare-fun d!339660 () Bool)

(assert (= bs!287672 (and d!339660 b!1187399)))

(declare-fun lambda!48952 () Int)

(assert (=> bs!287672 (= (= thiss!27592 Lexer!1779) (= lambda!48952 lambda!48944))))

(declare-fun bs!287673 () Bool)

(assert (= bs!287673 (and d!339660 d!339632)))

(assert (=> bs!287673 (= lambda!48952 lambda!48950)))

(declare-fun bs!287674 () Bool)

(assert (= bs!287674 (and d!339660 d!339644)))

(assert (=> bs!287674 (= lambda!48952 lambda!48951)))

(declare-fun b!1187565 () Bool)

(declare-fun e!763145 () Bool)

(assert (=> b!1187565 (= e!763145 true)))

(declare-fun b!1187564 () Bool)

(declare-fun e!763144 () Bool)

(assert (=> b!1187564 (= e!763144 e!763145)))

(declare-fun b!1187563 () Bool)

(declare-fun e!763143 () Bool)

(assert (=> b!1187563 (= e!763143 e!763144)))

(assert (=> d!339660 e!763143))

(assert (= b!1187564 b!1187565))

(assert (= b!1187563 b!1187564))

(assert (= (and d!339660 (is-Cons!11925 rules!4386)) b!1187563))

(assert (=> b!1187565 (< (dynLambda!5331 order!7427 (toValue!3203 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48952))))

(assert (=> b!1187565 (< (dynLambda!5333 order!7431 (toChars!3062 (transformation!2086 (h!17326 rules!4386)))) (dynLambda!5332 order!7429 lambda!48952))))

(assert (=> d!339660 true))

(declare-fun lt!408473 () Bool)

(assert (=> d!339660 (= lt!408473 (forall!3157 lt!408405 lambda!48952))))

(declare-fun e!763141 () Bool)

(assert (=> d!339660 (= lt!408473 e!763141)))

(declare-fun res!536650 () Bool)

(assert (=> d!339660 (=> res!536650 e!763141)))

(assert (=> d!339660 (= res!536650 (not (is-Cons!11926 lt!408405)))))

(assert (=> d!339660 (not (isEmpty!7175 rules!4386))))

(assert (=> d!339660 (= (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 lt!408405) lt!408473)))

(declare-fun b!1187561 () Bool)

(declare-fun e!763142 () Bool)

(assert (=> b!1187561 (= e!763141 e!763142)))

(declare-fun res!536649 () Bool)

(assert (=> b!1187561 (=> (not res!536649) (not e!763142))))

(assert (=> b!1187561 (= res!536649 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 lt!408405)))))

(declare-fun b!1187562 () Bool)

(assert (=> b!1187562 (= e!763142 (rulesProduceEachTokenIndividuallyList!647 thiss!27592 rules!4386 (t!112008 lt!408405)))))

(assert (= (and d!339660 (not res!536650)) b!1187561))

(assert (= (and b!1187561 res!536649) b!1187562))

(declare-fun m!1363353 () Bool)

(assert (=> d!339660 m!1363353))

(assert (=> d!339660 m!1363209))

(assert (=> b!1187561 m!1363179))

(assert (=> b!1187562 m!1363181))

(assert (=> b!1187399 d!339660))

(declare-fun d!339662 () Bool)

(declare-fun res!536651 () Bool)

(declare-fun e!763146 () Bool)

(assert (=> d!339662 (=> res!536651 e!763146)))

(assert (=> d!339662 (= res!536651 (or (not (is-Cons!11926 lt!408405)) (not (is-Cons!11926 (t!112008 lt!408405)))))))

(assert (=> d!339662 (= (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 lt!408405 rules!4386) e!763146)))

(declare-fun b!1187566 () Bool)

(declare-fun e!763147 () Bool)

(assert (=> b!1187566 (= e!763146 e!763147)))

(declare-fun res!536652 () Bool)

(assert (=> b!1187566 (=> (not res!536652) (not e!763147))))

(assert (=> b!1187566 (= res!536652 (separableTokensPredicate!166 thiss!27592 (h!17327 lt!408405) (h!17327 (t!112008 lt!408405)) rules!4386))))

(declare-fun lt!408477 () Unit!18294)

(declare-fun Unit!18302 () Unit!18294)

(assert (=> b!1187566 (= lt!408477 Unit!18302)))

(assert (=> b!1187566 (> (size!9405 (charsOf!1104 (h!17327 (t!112008 lt!408405)))) 0)))

(declare-fun lt!408479 () Unit!18294)

(declare-fun Unit!18303 () Unit!18294)

(assert (=> b!1187566 (= lt!408479 Unit!18303)))

(assert (=> b!1187566 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 (t!112008 lt!408405)))))

(declare-fun lt!408478 () Unit!18294)

(declare-fun Unit!18304 () Unit!18294)

(assert (=> b!1187566 (= lt!408478 Unit!18304)))

(assert (=> b!1187566 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 lt!408405))))

(declare-fun lt!408475 () Unit!18294)

(declare-fun lt!408474 () Unit!18294)

(assert (=> b!1187566 (= lt!408475 lt!408474)))

(assert (=> b!1187566 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 (t!112008 lt!408405)))))

(assert (=> b!1187566 (= lt!408474 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!325 thiss!27592 rules!4386 lt!408405 (h!17327 (t!112008 lt!408405))))))

(declare-fun lt!408476 () Unit!18294)

(declare-fun lt!408480 () Unit!18294)

(assert (=> b!1187566 (= lt!408476 lt!408480)))

(assert (=> b!1187566 (rulesProduceIndividualToken!808 thiss!27592 rules!4386 (h!17327 lt!408405))))

(assert (=> b!1187566 (= lt!408480 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!325 thiss!27592 rules!4386 lt!408405 (h!17327 lt!408405)))))

(declare-fun b!1187567 () Bool)

(assert (=> b!1187567 (= e!763147 (tokensListTwoByTwoPredicateSeparableList!175 thiss!27592 (Cons!11926 (h!17327 (t!112008 lt!408405)) (t!112008 (t!112008 lt!408405))) rules!4386))))

(assert (= (and d!339662 (not res!536651)) b!1187566))

(assert (= (and b!1187566 res!536652) b!1187567))

(declare-fun m!1363355 () Bool)

(assert (=> b!1187566 m!1363355))

(declare-fun m!1363357 () Bool)

(assert (=> b!1187566 m!1363357))

(declare-fun m!1363359 () Bool)

(assert (=> b!1187566 m!1363359))

(declare-fun m!1363361 () Bool)

(assert (=> b!1187566 m!1363361))

(assert (=> b!1187566 m!1363357))

(declare-fun m!1363363 () Bool)

(assert (=> b!1187566 m!1363363))

(assert (=> b!1187566 m!1363285))

(assert (=> b!1187566 m!1363179))

(declare-fun m!1363365 () Bool)

(assert (=> b!1187567 m!1363365))

(assert (=> b!1187399 d!339662))

(declare-fun b!1187597 () Bool)

(declare-fun e!763171 () Int)

(assert (=> b!1187597 (= e!763171 0)))

(declare-fun b!1187598 () Bool)

(declare-fun e!763167 () Int)

(assert (=> b!1187598 (= e!763167 e!763171)))

(declare-fun c!197300 () Bool)

(declare-fun call!82643 () Int)

(assert (=> b!1187598 (= c!197300 (>= i!1621 call!82643))))

(declare-fun b!1187599 () Bool)

(declare-fun e!763169 () List!11950)

(assert (=> b!1187599 (= e!763169 (drop!560 (t!112008 l!6534) (- i!1621 1)))))

(declare-fun d!339664 () Bool)

(declare-fun e!763170 () Bool)

(assert (=> d!339664 e!763170))

(declare-fun res!536661 () Bool)

(assert (=> d!339664 (=> (not res!536661) (not e!763170))))

(declare-fun lt!408486 () List!11950)

(declare-fun content!1648 (List!11950) (Set Token!3834))

(assert (=> d!339664 (= res!536661 (set.subset (content!1648 lt!408486) (content!1648 l!6534)))))

(declare-fun e!763168 () List!11950)

(assert (=> d!339664 (= lt!408486 e!763168)))

(declare-fun c!197298 () Bool)

(assert (=> d!339664 (= c!197298 (is-Nil!11926 l!6534))))

(assert (=> d!339664 (= (drop!560 l!6534 i!1621) lt!408486)))

(declare-fun b!1187600 () Bool)

(assert (=> b!1187600 (= e!763168 Nil!11926)))

(declare-fun b!1187601 () Bool)

(assert (=> b!1187601 (= e!763171 (- call!82643 i!1621))))

(declare-fun bm!82638 () Bool)

(declare-fun size!9407 (List!11950) Int)

(assert (=> bm!82638 (= call!82643 (size!9407 l!6534))))

(declare-fun b!1187602 () Bool)

(assert (=> b!1187602 (= e!763167 call!82643)))

(declare-fun b!1187603 () Bool)

(assert (=> b!1187603 (= e!763169 l!6534)))

(declare-fun b!1187604 () Bool)

(assert (=> b!1187604 (= e!763168 e!763169)))

(declare-fun c!197297 () Bool)

(assert (=> b!1187604 (= c!197297 (<= i!1621 0))))

(declare-fun b!1187605 () Bool)

(assert (=> b!1187605 (= e!763170 (= (size!9407 lt!408486) e!763167))))

(declare-fun c!197299 () Bool)

(assert (=> b!1187605 (= c!197299 (<= i!1621 0))))

(assert (= (and d!339664 c!197298) b!1187600))

(assert (= (and d!339664 (not c!197298)) b!1187604))

(assert (= (and b!1187604 c!197297) b!1187603))

(assert (= (and b!1187604 (not c!197297)) b!1187599))

(assert (= (and d!339664 res!536661) b!1187605))

(assert (= (and b!1187605 c!197299) b!1187602))

(assert (= (and b!1187605 (not c!197299)) b!1187598))

(assert (= (and b!1187598 c!197300) b!1187597))

(assert (= (and b!1187598 (not c!197300)) b!1187601))

(assert (= (or b!1187602 b!1187598 b!1187601) bm!82638))

(declare-fun m!1363373 () Bool)

(assert (=> b!1187599 m!1363373))

(declare-fun m!1363375 () Bool)

(assert (=> d!339664 m!1363375))

(declare-fun m!1363377 () Bool)

(assert (=> d!339664 m!1363377))

(declare-fun m!1363379 () Bool)

(assert (=> bm!82638 m!1363379))

(declare-fun m!1363381 () Bool)

(assert (=> b!1187605 m!1363381))

(assert (=> b!1187399 d!339664))

(declare-fun d!339668 () Bool)

(declare-fun res!536670 () Bool)

(declare-fun e!763177 () Bool)

(assert (=> d!339668 (=> (not res!536670) (not e!763177))))

(declare-fun rulesValid!743 (LexerInterface!1781 List!11949) Bool)

(assert (=> d!339668 (= res!536670 (rulesValid!743 thiss!27592 rules!4386))))

(assert (=> d!339668 (= (rulesInvariant!1655 thiss!27592 rules!4386) e!763177)))

(declare-fun b!1187614 () Bool)

(declare-datatypes ((List!11955 0))(
  ( (Nil!11931) (Cons!11931 (h!17332 String!14430) (t!112035 List!11955)) )
))
(declare-fun noDuplicateTag!743 (LexerInterface!1781 List!11949 List!11955) Bool)

(assert (=> b!1187614 (= e!763177 (noDuplicateTag!743 thiss!27592 rules!4386 Nil!11931))))

(assert (= (and d!339668 res!536670) b!1187614))

(declare-fun m!1363383 () Bool)

(assert (=> d!339668 m!1363383))

(declare-fun m!1363385 () Bool)

(assert (=> b!1187614 m!1363385))

(assert (=> b!1187398 d!339668))

(declare-fun d!339670 () Bool)

(assert (=> d!339670 (= (inv!15754 (tag!2348 (rule!3507 (h!17327 l!6534)))) (= (mod (str.len (value!67508 (tag!2348 (rule!3507 (h!17327 l!6534))))) 2) 0))))

(assert (=> b!1187396 d!339670))

(declare-fun d!339672 () Bool)

(declare-fun res!536671 () Bool)

(declare-fun e!763180 () Bool)

(assert (=> d!339672 (=> (not res!536671) (not e!763180))))

(assert (=> d!339672 (= res!536671 (semiInverseModEq!755 (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (toValue!3203 (transformation!2086 (rule!3507 (h!17327 l!6534))))))))

(assert (=> d!339672 (= (inv!15757 (transformation!2086 (rule!3507 (h!17327 l!6534)))) e!763180)))

(declare-fun b!1187619 () Bool)

(assert (=> b!1187619 (= e!763180 (equivClasses!722 (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))) (toValue!3203 (transformation!2086 (rule!3507 (h!17327 l!6534))))))))

(assert (= (and d!339672 res!536671) b!1187619))

(declare-fun m!1363387 () Bool)

(assert (=> d!339672 m!1363387))

(declare-fun m!1363389 () Bool)

(assert (=> b!1187619 m!1363389))

(assert (=> b!1187396 d!339672))

(declare-fun b!1187635 () Bool)

(declare-fun b_free!28613 () Bool)

(declare-fun b_next!29317 () Bool)

(assert (=> b!1187635 (= b_free!28613 (not b_next!29317))))

(declare-fun tp!338741 () Bool)

(declare-fun b_and!81773 () Bool)

(assert (=> b!1187635 (= tp!338741 b_and!81773)))

(declare-fun b_free!28615 () Bool)

(declare-fun b_next!29319 () Bool)

(assert (=> b!1187635 (= b_free!28615 (not b_next!29319))))

(declare-fun t!112029 () Bool)

(declare-fun tb!66389 () Bool)

(assert (=> (and b!1187635 (= (toChars!3062 (transformation!2086 (rule!3507 (h!17327 (t!112008 l!6534))))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534))))) t!112029) tb!66389))

(declare-fun result!79780 () Bool)

(assert (= result!79780 result!79766))

(assert (=> b!1187478 t!112029))

(declare-fun b_and!81775 () Bool)

(declare-fun tp!338743 () Bool)

(assert (=> b!1187635 (= tp!338743 (and (=> t!112029 result!79780) b_and!81775))))

(declare-fun e!763197 () Bool)

(assert (=> b!1187635 (= e!763197 (and tp!338741 tp!338743))))

(declare-fun e!763196 () Bool)

(assert (=> b!1187406 (= tp!338689 e!763196)))

(declare-fun e!763195 () Bool)

(declare-fun b!1187632 () Bool)

(declare-fun tp!338739 () Bool)

(assert (=> b!1187632 (= e!763196 (and (inv!15758 (h!17327 (t!112008 l!6534))) e!763195 tp!338739))))

(declare-fun b!1187634 () Bool)

(declare-fun tp!338740 () Bool)

(declare-fun e!763198 () Bool)

(assert (=> b!1187634 (= e!763198 (and tp!338740 (inv!15754 (tag!2348 (rule!3507 (h!17327 (t!112008 l!6534))))) (inv!15757 (transformation!2086 (rule!3507 (h!17327 (t!112008 l!6534))))) e!763197))))

(declare-fun b!1187633 () Bool)

(declare-fun tp!338742 () Bool)

(assert (=> b!1187633 (= e!763195 (and (inv!21 (value!67509 (h!17327 (t!112008 l!6534)))) e!763198 tp!338742))))

(assert (= b!1187634 b!1187635))

(assert (= b!1187633 b!1187634))

(assert (= b!1187632 b!1187633))

(assert (= (and b!1187406 (is-Cons!11926 (t!112008 l!6534))) b!1187632))

(declare-fun m!1363407 () Bool)

(assert (=> b!1187632 m!1363407))

(declare-fun m!1363409 () Bool)

(assert (=> b!1187634 m!1363409))

(declare-fun m!1363411 () Bool)

(assert (=> b!1187634 m!1363411))

(declare-fun m!1363413 () Bool)

(assert (=> b!1187633 m!1363413))

(declare-fun b!1187638 () Bool)

(declare-fun e!763203 () Bool)

(assert (=> b!1187638 (= e!763203 true)))

(declare-fun b!1187637 () Bool)

(declare-fun e!763202 () Bool)

(assert (=> b!1187637 (= e!763202 e!763203)))

(declare-fun b!1187636 () Bool)

(declare-fun e!763201 () Bool)

(assert (=> b!1187636 (= e!763201 e!763202)))

(assert (=> b!1187415 e!763201))

(assert (= b!1187637 b!1187638))

(assert (= b!1187636 b!1187637))

(assert (= (and b!1187415 (is-Cons!11925 (t!112007 rules!4386))) b!1187636))

(assert (=> b!1187638 (< (dynLambda!5331 order!7427 (toValue!3203 (transformation!2086 (h!17326 (t!112007 rules!4386))))) (dynLambda!5332 order!7429 lambda!48944))))

(assert (=> b!1187638 (< (dynLambda!5333 order!7431 (toChars!3062 (transformation!2086 (h!17326 (t!112007 rules!4386))))) (dynLambda!5332 order!7429 lambda!48944))))

(declare-fun b!1187643 () Bool)

(declare-fun e!763206 () Bool)

(declare-fun tp_is_empty!5841 () Bool)

(declare-fun tp!338746 () Bool)

(assert (=> b!1187643 (= e!763206 (and tp_is_empty!5841 tp!338746))))

(assert (=> b!1187404 (= tp!338691 e!763206)))

(assert (= (and b!1187404 (is-Cons!11923 (originalCharacters!2640 (h!17327 l!6534)))) b!1187643))

(declare-fun e!763209 () Bool)

(assert (=> b!1187393 (= tp!338687 e!763209)))

(declare-fun b!1187657 () Bool)

(declare-fun tp!338761 () Bool)

(declare-fun tp!338759 () Bool)

(assert (=> b!1187657 (= e!763209 (and tp!338761 tp!338759))))

(declare-fun b!1187654 () Bool)

(assert (=> b!1187654 (= e!763209 tp_is_empty!5841)))

(declare-fun b!1187656 () Bool)

(declare-fun tp!338760 () Bool)

(assert (=> b!1187656 (= e!763209 tp!338760)))

(declare-fun b!1187655 () Bool)

(declare-fun tp!338758 () Bool)

(declare-fun tp!338757 () Bool)

(assert (=> b!1187655 (= e!763209 (and tp!338758 tp!338757))))

(assert (= (and b!1187393 (is-ElementMatch!3356 (regex!2086 (h!17326 rules!4386)))) b!1187654))

(assert (= (and b!1187393 (is-Concat!5509 (regex!2086 (h!17326 rules!4386)))) b!1187655))

(assert (= (and b!1187393 (is-Star!3356 (regex!2086 (h!17326 rules!4386)))) b!1187656))

(assert (= (and b!1187393 (is-Union!3356 (regex!2086 (h!17326 rules!4386)))) b!1187657))

(declare-fun b!1187668 () Bool)

(declare-fun b_free!28617 () Bool)

(declare-fun b_next!29321 () Bool)

(assert (=> b!1187668 (= b_free!28617 (not b_next!29321))))

(declare-fun tp!338772 () Bool)

(declare-fun b_and!81777 () Bool)

(assert (=> b!1187668 (= tp!338772 b_and!81777)))

(declare-fun b_free!28619 () Bool)

(declare-fun b_next!29323 () Bool)

(assert (=> b!1187668 (= b_free!28619 (not b_next!29323))))

(declare-fun t!112031 () Bool)

(declare-fun tb!66391 () Bool)

(assert (=> (and b!1187668 (= (toChars!3062 (transformation!2086 (h!17326 (t!112007 rules!4386)))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534))))) t!112031) tb!66391))

(declare-fun result!79788 () Bool)

(assert (= result!79788 result!79766))

(assert (=> b!1187478 t!112031))

(declare-fun b_and!81779 () Bool)

(declare-fun tp!338770 () Bool)

(assert (=> b!1187668 (= tp!338770 (and (=> t!112031 result!79788) b_and!81779))))

(declare-fun e!763221 () Bool)

(assert (=> b!1187668 (= e!763221 (and tp!338772 tp!338770))))

(declare-fun e!763218 () Bool)

(declare-fun tp!338771 () Bool)

(declare-fun b!1187667 () Bool)

(assert (=> b!1187667 (= e!763218 (and tp!338771 (inv!15754 (tag!2348 (h!17326 (t!112007 rules!4386)))) (inv!15757 (transformation!2086 (h!17326 (t!112007 rules!4386)))) e!763221))))

(declare-fun b!1187666 () Bool)

(declare-fun e!763219 () Bool)

(declare-fun tp!338773 () Bool)

(assert (=> b!1187666 (= e!763219 (and e!763218 tp!338773))))

(assert (=> b!1187403 (= tp!338695 e!763219)))

(assert (= b!1187667 b!1187668))

(assert (= b!1187666 b!1187667))

(assert (= (and b!1187403 (is-Cons!11925 (t!112007 rules!4386))) b!1187666))

(declare-fun m!1363415 () Bool)

(assert (=> b!1187667 m!1363415))

(declare-fun m!1363417 () Bool)

(assert (=> b!1187667 m!1363417))

(declare-fun e!763222 () Bool)

(assert (=> b!1187396 (= tp!338693 e!763222)))

(declare-fun b!1187672 () Bool)

(declare-fun tp!338778 () Bool)

(declare-fun tp!338776 () Bool)

(assert (=> b!1187672 (= e!763222 (and tp!338778 tp!338776))))

(declare-fun b!1187669 () Bool)

(assert (=> b!1187669 (= e!763222 tp_is_empty!5841)))

(declare-fun b!1187671 () Bool)

(declare-fun tp!338777 () Bool)

(assert (=> b!1187671 (= e!763222 tp!338777)))

(declare-fun b!1187670 () Bool)

(declare-fun tp!338775 () Bool)

(declare-fun tp!338774 () Bool)

(assert (=> b!1187670 (= e!763222 (and tp!338775 tp!338774))))

(assert (= (and b!1187396 (is-ElementMatch!3356 (regex!2086 (rule!3507 (h!17327 l!6534))))) b!1187669))

(assert (= (and b!1187396 (is-Concat!5509 (regex!2086 (rule!3507 (h!17327 l!6534))))) b!1187670))

(assert (= (and b!1187396 (is-Star!3356 (regex!2086 (rule!3507 (h!17327 l!6534))))) b!1187671))

(assert (= (and b!1187396 (is-Union!3356 (regex!2086 (rule!3507 (h!17327 l!6534))))) b!1187672))

(declare-fun b_lambda!35661 () Bool)

(assert (= b_lambda!35657 (or b!1187399 b_lambda!35661)))

(declare-fun bs!287676 () Bool)

(declare-fun d!339682 () Bool)

(assert (= bs!287676 (and d!339682 b!1187399)))

(assert (=> bs!287676 (= (dynLambda!5338 lambda!48944 (h!17327 lt!408405)) (rulesProduceIndividualToken!808 Lexer!1779 rules!4386 (h!17327 lt!408405)))))

(declare-fun m!1363419 () Bool)

(assert (=> bs!287676 m!1363419))

(assert (=> b!1187559 d!339682))

(declare-fun b_lambda!35663 () Bool)

(assert (= b_lambda!35655 (or (and b!1187405 b_free!28599) (and b!1187397 b_free!28603 (= (toChars!3062 (transformation!2086 (h!17326 rules!4386))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))))) (and b!1187635 b_free!28615 (= (toChars!3062 (transformation!2086 (rule!3507 (h!17327 (t!112008 l!6534))))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))))) (and b!1187668 b_free!28619 (= (toChars!3062 (transformation!2086 (h!17326 (t!112007 rules!4386)))) (toChars!3062 (transformation!2086 (rule!3507 (h!17327 l!6534)))))) b_lambda!35663)))

(push 1)

(assert (not b_next!29307))

(assert (not b_lambda!35663))

(assert b_and!81749)

(assert (not d!339660))

(assert (not d!339672))

(assert (not d!339668))

(assert (not b!1187513))

(assert (not b_next!29301))

(assert (not b!1187599))

(assert b_and!81779)

(assert (not b!1187614))

(assert (not b_next!29323))

(assert (not b!1187561))

(assert (not b!1187511))

(assert (not b!1187542))

(assert (not b_lambda!35661))

(assert (not d!339644))

(assert b_and!81775)

(assert (not d!339628))

(assert (not b_next!29321))

(assert (not b!1187656))

(assert b_and!81777)

(assert (not b_next!29305))

(assert (not b!1187670))

(assert (not b!1187632))

(assert (not b!1187492))

(assert (not b_next!29319))

(assert (not b!1187526))

(assert (not b!1187657))

(assert (not b!1187562))

(assert (not b_next!29317))

(assert (not b!1187494))

(assert (not b!1187553))

(assert (not b!1187510))

(assert (not b!1187643))

(assert (not b!1187518))

(assert (not b!1187484))

(assert (not b!1187672))

(assert (not b!1187567))

(assert (not b!1187560))

(assert (not d!339642))

(assert (not bs!287676))

(assert (not b!1187605))

(assert (not b!1187619))

(assert (not d!339632))

(assert (not b!1187517))

(assert b_and!81765)

(assert (not b!1187540))

(assert (not tb!66381))

(assert (not b!1187636))

(assert b_and!81753)

(assert (not b!1187527))

(assert (not b!1187554))

(assert (not d!339648))

(assert (not b!1187516))

(assert (not d!339656))

(assert (not b_next!29303))

(assert (not b!1187519))

(assert (not b!1187478))

(assert (not b!1187633))

(assert (not d!339664))

(assert (not b!1187566))

(assert (not b!1187563))

(assert (not b!1187666))

(assert (not bm!82638))

(assert (not b!1187541))

(assert (not b!1187634))

(assert (not b!1187655))

(assert (not b!1187671))

(assert b_and!81773)

(assert (not d!339652))

(assert tp_is_empty!5841)

(assert (not b!1187667))

(assert b_and!81767)

(assert (not b!1187493))

(assert (not b!1187479))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29307))

(assert (not b_next!29323))

(assert b_and!81749)

(assert (not b_next!29319))

(assert (not b_next!29317))

(assert b_and!81765)

(assert b_and!81753)

(assert (not b_next!29303))

(assert (not b_next!29301))

(assert b_and!81779)

(assert b_and!81773)

(assert b_and!81767)

(assert b_and!81775)

(assert (not b_next!29321))

(assert b_and!81777)

(assert (not b_next!29305))

(check-sat)

(pop 1)

