; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137154 () Bool)

(assert start!137154)

(declare-fun b!1466391 () Bool)

(declare-fun b_free!36647 () Bool)

(declare-fun b_next!37351 () Bool)

(assert (=> b!1466391 (= b_free!36647 (not b_next!37351))))

(declare-fun tp!412387 () Bool)

(declare-fun b_and!100121 () Bool)

(assert (=> b!1466391 (= tp!412387 b_and!100121)))

(declare-fun b_free!36649 () Bool)

(declare-fun b_next!37353 () Bool)

(assert (=> b!1466391 (= b_free!36649 (not b_next!37353))))

(declare-fun tp!412396 () Bool)

(declare-fun b_and!100123 () Bool)

(assert (=> b!1466391 (= tp!412396 b_and!100123)))

(declare-fun b!1466397 () Bool)

(declare-fun b_free!36651 () Bool)

(declare-fun b_next!37355 () Bool)

(assert (=> b!1466397 (= b_free!36651 (not b_next!37355))))

(declare-fun tp!412390 () Bool)

(declare-fun b_and!100125 () Bool)

(assert (=> b!1466397 (= tp!412390 b_and!100125)))

(declare-fun b_free!36653 () Bool)

(declare-fun b_next!37357 () Bool)

(assert (=> b!1466397 (= b_free!36653 (not b_next!37357))))

(declare-fun tp!412389 () Bool)

(declare-fun b_and!100127 () Bool)

(assert (=> b!1466397 (= tp!412389 b_and!100127)))

(declare-fun b!1466390 () Bool)

(declare-fun e!935601 () Bool)

(assert (=> b!1466390 (= e!935601 (not true))))

(declare-datatypes ((List!15305 0))(
  ( (Nil!15239) (Cons!15239 (h!20640 (_ BitVec 16)) (t!135004 List!15305)) )
))
(declare-datatypes ((TokenValue!2779 0))(
  ( (FloatLiteralValue!5558 (text!19898 List!15305)) (TokenValueExt!2778 (__x!9348 Int)) (Broken!13895 (value!86258 List!15305)) (Object!2844) (End!2779) (Def!2779) (Underscore!2779) (Match!2779) (Else!2779) (Error!2779) (Case!2779) (If!2779) (Extends!2779) (Abstract!2779) (Class!2779) (Val!2779) (DelimiterValue!5558 (del!2839 List!15305)) (KeywordValue!2785 (value!86259 List!15305)) (CommentValue!5558 (value!86260 List!15305)) (WhitespaceValue!5558 (value!86261 List!15305)) (IndentationValue!2779 (value!86262 List!15305)) (String!18150) (Int32!2779) (Broken!13896 (value!86263 List!15305)) (Boolean!2780) (Unit!25020) (OperatorValue!2782 (op!2839 List!15305)) (IdentifierValue!5558 (value!86264 List!15305)) (IdentifierValue!5559 (value!86265 List!15305)) (WhitespaceValue!5559 (value!86266 List!15305)) (True!5558) (False!5558) (Broken!13897 (value!86267 List!15305)) (Broken!13898 (value!86268 List!15305)) (True!5559) (RightBrace!2779) (RightBracket!2779) (Colon!2779) (Null!2779) (Comma!2779) (LeftBracket!2779) (False!5559) (LeftBrace!2779) (ImaginaryLiteralValue!2779 (text!19899 List!15305)) (StringLiteralValue!8337 (value!86269 List!15305)) (EOFValue!2779 (value!86270 List!15305)) (IdentValue!2779 (value!86271 List!15305)) (DelimiterValue!5559 (value!86272 List!15305)) (DedentValue!2779 (value!86273 List!15305)) (NewLineValue!2779 (value!86274 List!15305)) (IntegerValue!8337 (value!86275 (_ BitVec 32)) (text!19900 List!15305)) (IntegerValue!8338 (value!86276 Int) (text!19901 List!15305)) (Times!2779) (Or!2779) (Equal!2779) (Minus!2779) (Broken!13899 (value!86277 List!15305)) (And!2779) (Div!2779) (LessEqual!2779) (Mod!2779) (Concat!6782) (Not!2779) (Plus!2779) (SpaceValue!2779 (value!86278 List!15305)) (IntegerValue!8339 (value!86279 Int) (text!19902 List!15305)) (StringLiteralValue!8338 (text!19903 List!15305)) (FloatLiteralValue!5559 (text!19904 List!15305)) (BytesLiteralValue!2779 (value!86280 List!15305)) (CommentValue!5559 (value!86281 List!15305)) (StringLiteralValue!8339 (value!86282 List!15305)) (ErrorTokenValue!2779 (msg!2840 List!15305)) )
))
(declare-datatypes ((C!8184 0))(
  ( (C!8185 (val!4662 Int)) )
))
(declare-datatypes ((List!15306 0))(
  ( (Nil!15240) (Cons!15240 (h!20641 C!8184) (t!135005 List!15306)) )
))
(declare-datatypes ((IArray!10395 0))(
  ( (IArray!10396 (innerList!5255 List!15306)) )
))
(declare-datatypes ((Conc!5195 0))(
  ( (Node!5195 (left!12938 Conc!5195) (right!13268 Conc!5195) (csize!10620 Int) (cheight!5406 Int)) (Leaf!7741 (xs!7950 IArray!10395) (csize!10621 Int)) (Empty!5195) )
))
(declare-datatypes ((BalanceConc!10330 0))(
  ( (BalanceConc!10331 (c!241741 Conc!5195)) )
))
(declare-datatypes ((TokenValueInjection!5218 0))(
  ( (TokenValueInjection!5219 (toValue!4000 Int) (toChars!3859 Int)) )
))
(declare-datatypes ((Regex!4003 0))(
  ( (ElementMatch!4003 (c!241742 C!8184)) (Concat!6783 (regOne!8518 Regex!4003) (regTwo!8518 Regex!4003)) (EmptyExpr!4003) (Star!4003 (reg!4332 Regex!4003)) (EmptyLang!4003) (Union!4003 (regOne!8519 Regex!4003) (regTwo!8519 Regex!4003)) )
))
(declare-datatypes ((String!18151 0))(
  ( (String!18152 (value!86283 String)) )
))
(declare-datatypes ((Rule!5178 0))(
  ( (Rule!5179 (regex!2689 Regex!4003) (tag!2953 String!18151) (isSeparator!2689 Bool) (transformation!2689 TokenValueInjection!5218)) )
))
(declare-datatypes ((Token!5040 0))(
  ( (Token!5041 (value!86284 TokenValue!2779) (rule!4466 Rule!5178) (size!12455 Int) (originalCharacters!3551 List!15306)) )
))
(declare-datatypes ((List!15307 0))(
  ( (Nil!15241) (Cons!15241 (h!20642 Token!5040) (t!135006 List!15307)) )
))
(declare-fun lt!510594 () List!15307)

(declare-fun tokens1!47 () List!15307)

(declare-fun tokens2!49 () List!15307)

(declare-fun ++!4130 (List!15307 List!15307) List!15307)

(assert (=> b!1466390 (= lt!510594 (++!4130 tokens1!47 tokens2!49))))

(declare-fun e!935608 () Bool)

(assert (=> b!1466390 e!935608))

(declare-fun res!663836 () Bool)

(assert (=> b!1466390 (=> (not res!663836) (not e!935608))))

(declare-fun lt!510595 () List!15306)

(declare-datatypes ((LexerInterface!2345 0))(
  ( (LexerInterfaceExt!2342 (__x!9349 Int)) (Lexer!2343) )
))
(declare-fun thiss!20360 () LexerInterface!2345)

(declare-fun lt!510592 () List!15307)

(declare-fun printList!739 (LexerInterface!2345 List!15307) List!15306)

(declare-fun ++!4131 (List!15306 List!15306) List!15306)

(assert (=> b!1466390 (= res!663836 (= (printList!739 thiss!20360 lt!510592) (++!4131 lt!510595 (printList!739 thiss!20360 tokens2!49))))))

(assert (=> b!1466390 (= lt!510595 (printList!739 thiss!20360 (t!135006 tokens1!47)))))

(assert (=> b!1466390 (= lt!510592 (++!4130 (t!135006 tokens1!47) tokens2!49))))

(declare-datatypes ((Unit!25021 0))(
  ( (Unit!25022) )
))
(declare-fun lt!510593 () Unit!25021)

(declare-fun lemmaPrintConcatSameAsConcatPrint!84 (LexerInterface!2345 List!15307 List!15307) Unit!25021)

(assert (=> b!1466390 (= lt!510593 (lemmaPrintConcatSameAsConcatPrint!84 thiss!20360 (t!135006 tokens1!47) tokens2!49))))

(declare-fun e!935607 () Bool)

(assert (=> b!1466391 (= e!935607 (and tp!412387 tp!412396))))

(declare-fun b!1466392 () Bool)

(declare-fun e!935597 () Bool)

(declare-fun tp!412388 () Bool)

(declare-fun inv!20371 (String!18151) Bool)

(declare-fun inv!20374 (TokenValueInjection!5218) Bool)

(assert (=> b!1466392 (= e!935597 (and tp!412388 (inv!20371 (tag!2953 (rule!4466 (h!20642 tokens2!49)))) (inv!20374 (transformation!2689 (rule!4466 (h!20642 tokens2!49)))) e!935607))))

(declare-fun tp!412393 () Bool)

(declare-fun e!935605 () Bool)

(declare-fun b!1466393 () Bool)

(declare-fun e!935609 () Bool)

(assert (=> b!1466393 (= e!935609 (and tp!412393 (inv!20371 (tag!2953 (rule!4466 (h!20642 tokens1!47)))) (inv!20374 (transformation!2689 (rule!4466 (h!20642 tokens1!47)))) e!935605))))

(declare-fun res!663835 () Bool)

(assert (=> start!137154 (=> (not res!663835) (not e!935601))))

(get-info :version)

(assert (=> start!137154 (= res!663835 (and ((_ is Lexer!2343) thiss!20360) ((_ is Cons!15241) tokens1!47)))))

(assert (=> start!137154 e!935601))

(assert (=> start!137154 true))

(declare-fun e!935603 () Bool)

(assert (=> start!137154 e!935603))

(declare-fun e!935599 () Bool)

(assert (=> start!137154 e!935599))

(declare-fun b!1466394 () Bool)

(declare-fun res!663837 () Bool)

(assert (=> b!1466394 (=> (not res!663837) (not e!935601))))

(declare-fun isEmpty!9575 (List!15307) Bool)

(assert (=> b!1466394 (= res!663837 (not (isEmpty!9575 (t!135006 tokens1!47))))))

(declare-fun b!1466395 () Bool)

(declare-fun tp!412391 () Bool)

(declare-fun e!935606 () Bool)

(declare-fun inv!21 (TokenValue!2779) Bool)

(assert (=> b!1466395 (= e!935606 (and (inv!21 (value!86284 (h!20642 tokens2!49))) e!935597 tp!412391))))

(declare-fun b!1466396 () Bool)

(declare-fun tp!412394 () Bool)

(declare-fun inv!20375 (Token!5040) Bool)

(assert (=> b!1466396 (= e!935599 (and (inv!20375 (h!20642 tokens2!49)) e!935606 tp!412394))))

(assert (=> b!1466397 (= e!935605 (and tp!412390 tp!412389))))

(declare-fun b!1466398 () Bool)

(declare-fun list!6111 (BalanceConc!10330) List!15306)

(declare-fun charsOf!1548 (Token!5040) BalanceConc!10330)

(assert (=> b!1466398 (= e!935608 (= (printList!739 thiss!20360 tokens1!47) (++!4131 (list!6111 (charsOf!1548 (h!20642 tokens1!47))) lt!510595)))))

(declare-fun e!935598 () Bool)

(declare-fun tp!412395 () Bool)

(declare-fun b!1466399 () Bool)

(assert (=> b!1466399 (= e!935603 (and (inv!20375 (h!20642 tokens1!47)) e!935598 tp!412395))))

(declare-fun tp!412392 () Bool)

(declare-fun b!1466400 () Bool)

(assert (=> b!1466400 (= e!935598 (and (inv!21 (value!86284 (h!20642 tokens1!47))) e!935609 tp!412392))))

(assert (= (and start!137154 res!663835) b!1466394))

(assert (= (and b!1466394 res!663837) b!1466390))

(assert (= (and b!1466390 res!663836) b!1466398))

(assert (= b!1466393 b!1466397))

(assert (= b!1466400 b!1466393))

(assert (= b!1466399 b!1466400))

(assert (= (and start!137154 ((_ is Cons!15241) tokens1!47)) b!1466399))

(assert (= b!1466392 b!1466391))

(assert (= b!1466395 b!1466392))

(assert (= b!1466396 b!1466395))

(assert (= (and start!137154 ((_ is Cons!15241) tokens2!49)) b!1466396))

(declare-fun m!1710997 () Bool)

(assert (=> b!1466394 m!1710997))

(declare-fun m!1710999 () Bool)

(assert (=> b!1466390 m!1710999))

(declare-fun m!1711001 () Bool)

(assert (=> b!1466390 m!1711001))

(declare-fun m!1711003 () Bool)

(assert (=> b!1466390 m!1711003))

(declare-fun m!1711005 () Bool)

(assert (=> b!1466390 m!1711005))

(declare-fun m!1711007 () Bool)

(assert (=> b!1466390 m!1711007))

(declare-fun m!1711009 () Bool)

(assert (=> b!1466390 m!1711009))

(declare-fun m!1711011 () Bool)

(assert (=> b!1466390 m!1711011))

(assert (=> b!1466390 m!1711003))

(declare-fun m!1711013 () Bool)

(assert (=> b!1466396 m!1711013))

(declare-fun m!1711015 () Bool)

(assert (=> b!1466392 m!1711015))

(declare-fun m!1711017 () Bool)

(assert (=> b!1466392 m!1711017))

(declare-fun m!1711019 () Bool)

(assert (=> b!1466399 m!1711019))

(declare-fun m!1711021 () Bool)

(assert (=> b!1466398 m!1711021))

(declare-fun m!1711023 () Bool)

(assert (=> b!1466398 m!1711023))

(assert (=> b!1466398 m!1711023))

(declare-fun m!1711025 () Bool)

(assert (=> b!1466398 m!1711025))

(assert (=> b!1466398 m!1711025))

(declare-fun m!1711027 () Bool)

(assert (=> b!1466398 m!1711027))

(declare-fun m!1711029 () Bool)

(assert (=> b!1466400 m!1711029))

(declare-fun m!1711031 () Bool)

(assert (=> b!1466393 m!1711031))

(declare-fun m!1711033 () Bool)

(assert (=> b!1466393 m!1711033))

(declare-fun m!1711035 () Bool)

(assert (=> b!1466395 m!1711035))

(check-sat (not b_next!37357) (not b!1466393) (not b!1466394) (not b!1466390) (not b!1466398) (not b!1466395) (not b!1466392) b_and!100123 b_and!100121 (not b!1466399) (not b!1466396) (not b_next!37355) (not b_next!37353) b_and!100127 (not b!1466400) b_and!100125 (not b_next!37351))
(check-sat (not b_next!37357) b_and!100123 b_and!100121 (not b_next!37355) (not b_next!37353) b_and!100127 b_and!100125 (not b_next!37351))
