; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275466 () Bool)

(assert start!275466)

(declare-fun b!2833805 () Bool)

(declare-fun b_free!81621 () Bool)

(declare-fun b_next!82325 () Bool)

(assert (=> b!2833805 (= b_free!81621 (not b_next!82325))))

(declare-fun tp!906052 () Bool)

(declare-fun b_and!207395 () Bool)

(assert (=> b!2833805 (= tp!906052 b_and!207395)))

(declare-fun b_free!81623 () Bool)

(declare-fun b_next!82327 () Bool)

(assert (=> b!2833805 (= b_free!81623 (not b_next!82327))))

(declare-fun tp!906050 () Bool)

(declare-fun b_and!207397 () Bool)

(assert (=> b!2833805 (= tp!906050 b_and!207397)))

(declare-fun b!2833796 () Bool)

(declare-fun b_free!81625 () Bool)

(declare-fun b_next!82329 () Bool)

(assert (=> b!2833796 (= b_free!81625 (not b_next!82329))))

(declare-fun tp!906048 () Bool)

(declare-fun b_and!207399 () Bool)

(assert (=> b!2833796 (= tp!906048 b_and!207399)))

(declare-fun b_free!81627 () Bool)

(declare-fun b_next!82331 () Bool)

(assert (=> b!2833796 (= b_free!81627 (not b_next!82331))))

(declare-fun tp!906049 () Bool)

(declare-fun b_and!207401 () Bool)

(assert (=> b!2833796 (= tp!906049 b_and!207401)))

(declare-fun b!2833795 () Bool)

(declare-fun res!1179529 () Bool)

(declare-fun e!1794398 () Bool)

(assert (=> b!2833795 (=> (not res!1179529) (not e!1794398))))

(declare-datatypes ((LexerInterface!4607 0))(
  ( (LexerInterfaceExt!4604 (__x!22232 Int)) (Lexer!4605) )
))
(declare-fun thiss!11007 () LexerInterface!4607)

(declare-datatypes ((List!33568 0))(
  ( (Nil!33444) (Cons!33444 (h!38864 (_ BitVec 16)) (t!231693 List!33568)) )
))
(declare-datatypes ((TokenValue!5247 0))(
  ( (FloatLiteralValue!10494 (text!37174 List!33568)) (TokenValueExt!5246 (__x!22233 Int)) (Broken!26235 (value!161329 List!33568)) (Object!5370) (End!5247) (Def!5247) (Underscore!5247) (Match!5247) (Else!5247) (Error!5247) (Case!5247) (If!5247) (Extends!5247) (Abstract!5247) (Class!5247) (Val!5247) (DelimiterValue!10494 (del!5307 List!33568)) (KeywordValue!5253 (value!161330 List!33568)) (CommentValue!10494 (value!161331 List!33568)) (WhitespaceValue!10494 (value!161332 List!33568)) (IndentationValue!5247 (value!161333 List!33568)) (String!36758) (Int32!5247) (Broken!26236 (value!161334 List!33568)) (Boolean!5248) (Unit!47395) (OperatorValue!5250 (op!5307 List!33568)) (IdentifierValue!10494 (value!161335 List!33568)) (IdentifierValue!10495 (value!161336 List!33568)) (WhitespaceValue!10495 (value!161337 List!33568)) (True!10494) (False!10494) (Broken!26237 (value!161338 List!33568)) (Broken!26238 (value!161339 List!33568)) (True!10495) (RightBrace!5247) (RightBracket!5247) (Colon!5247) (Null!5247) (Comma!5247) (LeftBracket!5247) (False!10495) (LeftBrace!5247) (ImaginaryLiteralValue!5247 (text!37175 List!33568)) (StringLiteralValue!15741 (value!161340 List!33568)) (EOFValue!5247 (value!161341 List!33568)) (IdentValue!5247 (value!161342 List!33568)) (DelimiterValue!10495 (value!161343 List!33568)) (DedentValue!5247 (value!161344 List!33568)) (NewLineValue!5247 (value!161345 List!33568)) (IntegerValue!15741 (value!161346 (_ BitVec 32)) (text!37176 List!33568)) (IntegerValue!15742 (value!161347 Int) (text!37177 List!33568)) (Times!5247) (Or!5247) (Equal!5247) (Minus!5247) (Broken!26239 (value!161348 List!33568)) (And!5247) (Div!5247) (LessEqual!5247) (Mod!5247) (Concat!13655) (Not!5247) (Plus!5247) (SpaceValue!5247 (value!161349 List!33568)) (IntegerValue!15743 (value!161350 Int) (text!37178 List!33568)) (StringLiteralValue!15742 (text!37179 List!33568)) (FloatLiteralValue!10495 (text!37180 List!33568)) (BytesLiteralValue!5247 (value!161351 List!33568)) (CommentValue!10495 (value!161352 List!33568)) (StringLiteralValue!15743 (value!161353 List!33568)) (ErrorTokenValue!5247 (msg!5308 List!33568)) )
))
(declare-datatypes ((C!16998 0))(
  ( (C!16999 (val!10511 Int)) )
))
(declare-datatypes ((List!33569 0))(
  ( (Nil!33445) (Cons!33445 (h!38865 C!16998) (t!231694 List!33569)) )
))
(declare-datatypes ((IArray!20783 0))(
  ( (IArray!20784 (innerList!10449 List!33569)) )
))
(declare-datatypes ((Conc!10389 0))(
  ( (Node!10389 (left!25237 Conc!10389) (right!25567 Conc!10389) (csize!21008 Int) (cheight!10600 Int)) (Leaf!15806 (xs!13501 IArray!20783) (csize!21009 Int)) (Empty!10389) )
))
(declare-datatypes ((Regex!8408 0))(
  ( (ElementMatch!8408 (c!458079 C!16998)) (Concat!13656 (regOne!17328 Regex!8408) (regTwo!17328 Regex!8408)) (EmptyExpr!8408) (Star!8408 (reg!8737 Regex!8408)) (EmptyLang!8408) (Union!8408 (regOne!17329 Regex!8408) (regTwo!17329 Regex!8408)) )
))
(declare-datatypes ((String!36759 0))(
  ( (String!36760 (value!161354 String)) )
))
(declare-datatypes ((BalanceConc!20416 0))(
  ( (BalanceConc!20417 (c!458080 Conc!10389)) )
))
(declare-datatypes ((TokenValueInjection!9922 0))(
  ( (TokenValueInjection!9923 (toValue!7051 Int) (toChars!6910 Int)) )
))
(declare-datatypes ((Rule!9834 0))(
  ( (Rule!9835 (regex!5017 Regex!8408) (tag!5521 String!36759) (isSeparator!5017 Bool) (transformation!5017 TokenValueInjection!9922)) )
))
(declare-datatypes ((Token!9436 0))(
  ( (Token!9437 (value!161355 TokenValue!5247) (rule!7445 Rule!9834) (size!26020 Int) (originalCharacters!5749 List!33569)) )
))
(declare-datatypes ((List!33570 0))(
  ( (Nil!33446) (Cons!33446 (h!38866 Token!9436) (t!231695 List!33570)) )
))
(declare-fun l!4019 () List!33570)

(declare-datatypes ((List!33571 0))(
  ( (Nil!33447) (Cons!33447 (h!38867 Rule!9834) (t!231696 List!33571)) )
))
(declare-fun rules!1047 () List!33571)

(declare-fun rulesProduceEachTokenIndividuallyList!1650 (LexerInterface!4607 List!33571 List!33570) Bool)

(assert (=> b!2833795 (= res!1179529 (rulesProduceEachTokenIndividuallyList!1650 thiss!11007 rules!1047 l!4019))))

(declare-fun e!1794396 () Bool)

(assert (=> b!2833796 (= e!1794396 (and tp!906048 tp!906049))))

(declare-fun b!2833797 () Bool)

(declare-fun res!1179524 () Bool)

(assert (=> b!2833797 (=> (not res!1179524) (not e!1794398))))

(declare-fun isEmpty!18438 (List!33571) Bool)

(assert (=> b!2833797 (= res!1179524 (not (isEmpty!18438 rules!1047)))))

(declare-fun b!2833798 () Bool)

(declare-fun res!1179528 () Bool)

(assert (=> b!2833798 (=> (not res!1179528) (not e!1794398))))

(assert (=> b!2833798 (= res!1179528 (and (is-Cons!33446 l!4019) (is-Cons!33446 (t!231695 l!4019))))))

(declare-fun b!2833799 () Bool)

(declare-fun tp!906051 () Bool)

(declare-fun e!1794394 () Bool)

(declare-fun e!1794399 () Bool)

(declare-fun inv!45408 (Token!9436) Bool)

(assert (=> b!2833799 (= e!1794399 (and (inv!45408 (h!38866 l!4019)) e!1794394 tp!906051))))

(declare-fun b!2833800 () Bool)

(declare-fun res!1179525 () Bool)

(assert (=> b!2833800 (=> (not res!1179525) (not e!1794398))))

(declare-datatypes ((IArray!20785 0))(
  ( (IArray!20786 (innerList!10450 List!33570)) )
))
(declare-datatypes ((Conc!10390 0))(
  ( (Node!10390 (left!25238 Conc!10390) (right!25568 Conc!10390) (csize!21010 Int) (cheight!10601 Int)) (Leaf!15807 (xs!13502 IArray!20785) (csize!21011 Int)) (Empty!10390) )
))
(declare-datatypes ((BalanceConc!20418 0))(
  ( (BalanceConc!20419 (c!458081 Conc!10390)) )
))
(declare-fun rulesProduceEachTokenIndividually!1123 (LexerInterface!4607 List!33571 BalanceConc!20418) Bool)

(declare-fun seqFromList!3263 (List!33570) BalanceConc!20418)

(assert (=> b!2833800 (= res!1179525 (rulesProduceEachTokenIndividually!1123 thiss!11007 rules!1047 (seqFromList!3263 l!4019)))))

(declare-fun tp!906047 () Bool)

(declare-fun e!1794392 () Bool)

(declare-fun b!2833801 () Bool)

(declare-fun inv!45405 (String!36759) Bool)

(declare-fun inv!45409 (TokenValueInjection!9922) Bool)

(assert (=> b!2833801 (= e!1794392 (and tp!906047 (inv!45405 (tag!5521 (rule!7445 (h!38866 l!4019)))) (inv!45409 (transformation!5017 (rule!7445 (h!38866 l!4019)))) e!1794396))))

(declare-fun res!1179526 () Bool)

(assert (=> start!275466 (=> (not res!1179526) (not e!1794398))))

(assert (=> start!275466 (= res!1179526 (is-Lexer!4605 thiss!11007))))

(assert (=> start!275466 e!1794398))

(assert (=> start!275466 true))

(declare-fun e!1794393 () Bool)

(assert (=> start!275466 e!1794393))

(assert (=> start!275466 e!1794399))

(declare-fun tp!906053 () Bool)

(declare-fun b!2833802 () Bool)

(declare-fun inv!21 (TokenValue!5247) Bool)

(assert (=> b!2833802 (= e!1794394 (and (inv!21 (value!161355 (h!38866 l!4019))) e!1794392 tp!906053))))

(declare-fun b!2833803 () Bool)

(assert (=> b!2833803 (= e!1794398 (not true))))

(declare-fun rulesProduceIndividualToken!2137 (LexerInterface!4607 List!33571 Token!9436) Bool)

(assert (=> b!2833803 (rulesProduceIndividualToken!2137 thiss!11007 rules!1047 (h!38866 l!4019))))

(declare-datatypes ((Unit!47396 0))(
  ( (Unit!47397) )
))
(declare-fun lt!1010642 () Unit!47396)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!751 (LexerInterface!4607 List!33571 List!33570 Token!9436) Unit!47396)

(assert (=> b!2833803 (= lt!1010642 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!751 thiss!11007 rules!1047 l!4019 (h!38866 l!4019)))))

(declare-fun b!2833804 () Bool)

(declare-fun e!1794397 () Bool)

(declare-fun tp!906046 () Bool)

(assert (=> b!2833804 (= e!1794393 (and e!1794397 tp!906046))))

(declare-fun e!1794391 () Bool)

(assert (=> b!2833805 (= e!1794391 (and tp!906052 tp!906050))))

(declare-fun tp!906045 () Bool)

(declare-fun b!2833806 () Bool)

(assert (=> b!2833806 (= e!1794397 (and tp!906045 (inv!45405 (tag!5521 (h!38867 rules!1047))) (inv!45409 (transformation!5017 (h!38867 rules!1047))) e!1794391))))

(declare-fun b!2833807 () Bool)

(declare-fun res!1179527 () Bool)

(assert (=> b!2833807 (=> (not res!1179527) (not e!1794398))))

(declare-fun rulesInvariant!4023 (LexerInterface!4607 List!33571) Bool)

(assert (=> b!2833807 (= res!1179527 (rulesInvariant!4023 thiss!11007 rules!1047))))

(assert (= (and start!275466 res!1179526) b!2833797))

(assert (= (and b!2833797 res!1179524) b!2833807))

(assert (= (and b!2833807 res!1179527) b!2833795))

(assert (= (and b!2833795 res!1179529) b!2833800))

(assert (= (and b!2833800 res!1179525) b!2833798))

(assert (= (and b!2833798 res!1179528) b!2833803))

(assert (= b!2833806 b!2833805))

(assert (= b!2833804 b!2833806))

(assert (= (and start!275466 (is-Cons!33447 rules!1047)) b!2833804))

(assert (= b!2833801 b!2833796))

(assert (= b!2833802 b!2833801))

(assert (= b!2833799 b!2833802))

(assert (= (and start!275466 (is-Cons!33446 l!4019)) b!2833799))

(declare-fun m!3263375 () Bool)

(assert (=> b!2833795 m!3263375))

(declare-fun m!3263377 () Bool)

(assert (=> b!2833801 m!3263377))

(declare-fun m!3263379 () Bool)

(assert (=> b!2833801 m!3263379))

(declare-fun m!3263381 () Bool)

(assert (=> b!2833799 m!3263381))

(declare-fun m!3263383 () Bool)

(assert (=> b!2833803 m!3263383))

(declare-fun m!3263385 () Bool)

(assert (=> b!2833803 m!3263385))

(declare-fun m!3263387 () Bool)

(assert (=> b!2833806 m!3263387))

(declare-fun m!3263389 () Bool)

(assert (=> b!2833806 m!3263389))

(declare-fun m!3263391 () Bool)

(assert (=> b!2833802 m!3263391))

(declare-fun m!3263393 () Bool)

(assert (=> b!2833807 m!3263393))

(declare-fun m!3263395 () Bool)

(assert (=> b!2833797 m!3263395))

(declare-fun m!3263397 () Bool)

(assert (=> b!2833800 m!3263397))

(assert (=> b!2833800 m!3263397))

(declare-fun m!3263399 () Bool)

(assert (=> b!2833800 m!3263399))

(push 1)

(assert b_and!207397)

(assert b_and!207399)

(assert b_and!207401)

(assert (not b!2833804))

(assert (not b!2833802))

(assert (not b!2833803))

(assert (not b!2833800))

(assert b_and!207395)

(assert (not b!2833807))

(assert (not b!2833795))

(assert (not b_next!82327))

(assert (not b!2833797))

(assert (not b_next!82329))

(assert (not b_next!82325))

(assert (not b_next!82331))

(assert (not b!2833801))

(assert (not b!2833806))

(assert (not b!2833799))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82327))

(assert b_and!207397)

(assert b_and!207399)

(assert b_and!207401)

(assert b_and!207395)

(assert (not b_next!82331))

(assert (not b_next!82329))

(assert (not b_next!82325))

(check-sat)

(pop 1)

