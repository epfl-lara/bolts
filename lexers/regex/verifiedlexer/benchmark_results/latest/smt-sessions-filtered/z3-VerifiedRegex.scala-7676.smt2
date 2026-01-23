; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404362 () Bool)

(assert start!404362)

(declare-fun b!4228290 () Bool)

(declare-fun b_free!124811 () Bool)

(declare-fun b_next!125515 () Bool)

(assert (=> b!4228290 (= b_free!124811 (not b_next!125515))))

(declare-fun tp!1295136 () Bool)

(declare-fun b_and!334049 () Bool)

(assert (=> b!4228290 (= tp!1295136 b_and!334049)))

(declare-fun b_free!124813 () Bool)

(declare-fun b_next!125517 () Bool)

(assert (=> b!4228290 (= b_free!124813 (not b_next!125517))))

(declare-fun tp!1295133 () Bool)

(declare-fun b_and!334051 () Bool)

(assert (=> b!4228290 (= tp!1295133 b_and!334051)))

(declare-fun b!4228289 () Bool)

(declare-fun b_free!124815 () Bool)

(declare-fun b_next!125519 () Bool)

(assert (=> b!4228289 (= b_free!124815 (not b_next!125519))))

(declare-fun tp!1295140 () Bool)

(declare-fun b_and!334053 () Bool)

(assert (=> b!4228289 (= tp!1295140 b_and!334053)))

(declare-fun b_free!124817 () Bool)

(declare-fun b_next!125521 () Bool)

(assert (=> b!4228289 (= b_free!124817 (not b_next!125521))))

(declare-fun tp!1295137 () Bool)

(declare-fun b_and!334055 () Bool)

(assert (=> b!4228289 (= tp!1295137 b_and!334055)))

(declare-fun b!4228279 () Bool)

(declare-fun e!2625448 () Bool)

(declare-fun tp_is_empty!22473 () Bool)

(declare-fun tp!1295139 () Bool)

(assert (=> b!4228279 (= e!2625448 (and tp_is_empty!22473 tp!1295139))))

(declare-fun b!4228280 () Bool)

(declare-fun res!1738675 () Bool)

(declare-fun e!2625451 () Bool)

(assert (=> b!4228280 (=> (not res!1738675) (not e!2625451))))

(declare-datatypes ((List!46792 0))(
  ( (Nil!46668) (Cons!46668 (h!52088 (_ BitVec 16)) (t!349413 List!46792)) )
))
(declare-datatypes ((TokenValue!8094 0))(
  ( (FloatLiteralValue!16188 (text!57103 List!46792)) (TokenValueExt!8093 (__x!28411 Int)) (Broken!40470 (value!244596 List!46792)) (Object!8217) (End!8094) (Def!8094) (Underscore!8094) (Match!8094) (Else!8094) (Error!8094) (Case!8094) (If!8094) (Extends!8094) (Abstract!8094) (Class!8094) (Val!8094) (DelimiterValue!16188 (del!8154 List!46792)) (KeywordValue!8100 (value!244597 List!46792)) (CommentValue!16188 (value!244598 List!46792)) (WhitespaceValue!16188 (value!244599 List!46792)) (IndentationValue!8094 (value!244600 List!46792)) (String!54343) (Int32!8094) (Broken!40471 (value!244601 List!46792)) (Boolean!8095) (Unit!65764) (OperatorValue!8097 (op!8154 List!46792)) (IdentifierValue!16188 (value!244602 List!46792)) (IdentifierValue!16189 (value!244603 List!46792)) (WhitespaceValue!16189 (value!244604 List!46792)) (True!16188) (False!16188) (Broken!40472 (value!244605 List!46792)) (Broken!40473 (value!244606 List!46792)) (True!16189) (RightBrace!8094) (RightBracket!8094) (Colon!8094) (Null!8094) (Comma!8094) (LeftBracket!8094) (False!16189) (LeftBrace!8094) (ImaginaryLiteralValue!8094 (text!57104 List!46792)) (StringLiteralValue!24282 (value!244607 List!46792)) (EOFValue!8094 (value!244608 List!46792)) (IdentValue!8094 (value!244609 List!46792)) (DelimiterValue!16189 (value!244610 List!46792)) (DedentValue!8094 (value!244611 List!46792)) (NewLineValue!8094 (value!244612 List!46792)) (IntegerValue!24282 (value!244613 (_ BitVec 32)) (text!57105 List!46792)) (IntegerValue!24283 (value!244614 Int) (text!57106 List!46792)) (Times!8094) (Or!8094) (Equal!8094) (Minus!8094) (Broken!40474 (value!244615 List!46792)) (And!8094) (Div!8094) (LessEqual!8094) (Mod!8094) (Concat!20863) (Not!8094) (Plus!8094) (SpaceValue!8094 (value!244616 List!46792)) (IntegerValue!24284 (value!244617 Int) (text!57107 List!46792)) (StringLiteralValue!24283 (text!57108 List!46792)) (FloatLiteralValue!16189 (text!57109 List!46792)) (BytesLiteralValue!8094 (value!244618 List!46792)) (CommentValue!16189 (value!244619 List!46792)) (StringLiteralValue!24284 (value!244620 List!46792)) (ErrorTokenValue!8094 (msg!8155 List!46792)) )
))
(declare-datatypes ((String!54344 0))(
  ( (String!54345 (value!244621 String)) )
))
(declare-datatypes ((C!25736 0))(
  ( (C!25737 (val!15030 Int)) )
))
(declare-datatypes ((List!46793 0))(
  ( (Nil!46669) (Cons!46669 (h!52089 C!25736) (t!349414 List!46793)) )
))
(declare-datatypes ((IArray!28155 0))(
  ( (IArray!28156 (innerList!14135 List!46793)) )
))
(declare-datatypes ((Conc!14075 0))(
  ( (Node!14075 (left!34711 Conc!14075) (right!35041 Conc!14075) (csize!28380 Int) (cheight!14286 Int)) (Leaf!21752 (xs!17381 IArray!28155) (csize!28381 Int)) (Empty!14075) )
))
(declare-datatypes ((BalanceConc!27744 0))(
  ( (BalanceConc!27745 (c!718776 Conc!14075)) )
))
(declare-datatypes ((TokenValueInjection!15616 0))(
  ( (TokenValueInjection!15617 (toValue!10592 Int) (toChars!10451 Int)) )
))
(declare-datatypes ((Regex!12769 0))(
  ( (ElementMatch!12769 (c!718777 C!25736)) (Concat!20864 (regOne!26050 Regex!12769) (regTwo!26050 Regex!12769)) (EmptyExpr!12769) (Star!12769 (reg!13098 Regex!12769)) (EmptyLang!12769) (Union!12769 (regOne!26051 Regex!12769) (regTwo!26051 Regex!12769)) )
))
(declare-datatypes ((Rule!15528 0))(
  ( (Rule!15529 (regex!7864 Regex!12769) (tag!8728 String!54344) (isSeparator!7864 Bool) (transformation!7864 TokenValueInjection!15616)) )
))
(declare-fun r!4334 () Rule!15528)

(declare-fun validRegex!5787 (Regex!12769) Bool)

(assert (=> b!4228280 (= res!1738675 (validRegex!5787 (regex!7864 r!4334)))))

(declare-fun res!1738676 () Bool)

(declare-fun e!2625454 () Bool)

(assert (=> start!404362 (=> (not res!1738676) (not e!2625454))))

(declare-datatypes ((LexerInterface!7459 0))(
  ( (LexerInterfaceExt!7456 (__x!28412 Int)) (Lexer!7457) )
))
(declare-fun thiss!26785 () LexerInterface!7459)

(get-info :version)

(assert (=> start!404362 (= res!1738676 ((_ is Lexer!7457) thiss!26785))))

(assert (=> start!404362 e!2625454))

(assert (=> start!404362 true))

(declare-fun e!2625450 () Bool)

(assert (=> start!404362 e!2625450))

(declare-datatypes ((Token!14362 0))(
  ( (Token!14363 (value!244622 TokenValue!8094) (rule!10978 Rule!15528) (size!34186 Int) (originalCharacters!8212 List!46793)) )
))
(declare-fun t!8425 () Token!14362)

(declare-fun e!2625449 () Bool)

(declare-fun inv!61328 (Token!14362) Bool)

(assert (=> start!404362 (and (inv!61328 t!8425) e!2625449)))

(declare-fun e!2625443 () Bool)

(assert (=> start!404362 e!2625443))

(declare-fun e!2625441 () Bool)

(assert (=> start!404362 e!2625441))

(assert (=> start!404362 e!2625448))

(declare-fun e!2625445 () Bool)

(assert (=> start!404362 e!2625445))

(declare-fun b!4228281 () Bool)

(declare-fun res!1738668 () Bool)

(assert (=> b!4228281 (=> (not res!1738668) (not e!2625454))))

(declare-fun p!3014 () List!46793)

(declare-fun input!3586 () List!46793)

(declare-fun isPrefix!4679 (List!46793 List!46793) Bool)

(assert (=> b!4228281 (= res!1738668 (isPrefix!4679 p!3014 input!3586))))

(declare-fun b!4228282 () Bool)

(assert (=> b!4228282 (= e!2625454 e!2625451)))

(declare-fun res!1738673 () Bool)

(assert (=> b!4228282 (=> (not res!1738673) (not e!2625451))))

(declare-fun lt!1503333 () Int)

(declare-fun size!34187 (List!46793) Int)

(assert (=> b!4228282 (= res!1738673 (<= lt!1503333 (size!34187 input!3586)))))

(declare-fun pBis!134 () List!46793)

(assert (=> b!4228282 (= lt!1503333 (size!34187 pBis!134))))

(declare-fun b!4228283 () Bool)

(declare-fun tp!1295131 () Bool)

(assert (=> b!4228283 (= e!2625445 (and tp_is_empty!22473 tp!1295131))))

(declare-fun b!4228284 () Bool)

(declare-fun res!1738669 () Bool)

(assert (=> b!4228284 (=> (not res!1738669) (not e!2625451))))

(declare-fun matchR!6408 (Regex!12769 List!46793) Bool)

(assert (=> b!4228284 (= res!1738669 (matchR!6408 (regex!7864 r!4334) p!3014))))

(declare-fun b!4228285 () Bool)

(declare-fun res!1738672 () Bool)

(assert (=> b!4228285 (=> (not res!1738672) (not e!2625451))))

(assert (=> b!4228285 (= res!1738672 (> lt!1503333 (size!34187 p!3014)))))

(declare-fun b!4228286 () Bool)

(declare-fun res!1738670 () Bool)

(assert (=> b!4228286 (=> (not res!1738670) (not e!2625451))))

(declare-fun ruleValid!3560 (LexerInterface!7459 Rule!15528) Bool)

(assert (=> b!4228286 (= res!1738670 (ruleValid!3560 thiss!26785 r!4334))))

(declare-fun b!4228287 () Bool)

(declare-fun res!1738671 () Bool)

(assert (=> b!4228287 (=> (not res!1738671) (not e!2625454))))

(assert (=> b!4228287 (= res!1738671 (isPrefix!4679 pBis!134 input!3586))))

(declare-fun tp!1295132 () Bool)

(declare-fun e!2625442 () Bool)

(declare-fun e!2625453 () Bool)

(declare-fun b!4228288 () Bool)

(declare-fun inv!61325 (String!54344) Bool)

(declare-fun inv!61329 (TokenValueInjection!15616) Bool)

(assert (=> b!4228288 (= e!2625442 (and tp!1295132 (inv!61325 (tag!8728 (rule!10978 t!8425))) (inv!61329 (transformation!7864 (rule!10978 t!8425))) e!2625453))))

(declare-fun e!2625444 () Bool)

(assert (=> b!4228289 (= e!2625444 (and tp!1295140 tp!1295137))))

(assert (=> b!4228290 (= e!2625453 (and tp!1295136 tp!1295133))))

(declare-fun b!4228291 () Bool)

(declare-fun tp!1295134 () Bool)

(declare-fun inv!21 (TokenValue!8094) Bool)

(assert (=> b!4228291 (= e!2625449 (and (inv!21 (value!244622 t!8425)) e!2625442 tp!1295134))))

(declare-fun b!4228292 () Bool)

(declare-fun tp!1295130 () Bool)

(assert (=> b!4228292 (= e!2625441 (and tp_is_empty!22473 tp!1295130))))

(declare-fun b!4228293 () Bool)

(declare-fun tp!1295138 () Bool)

(assert (=> b!4228293 (= e!2625450 (and tp_is_empty!22473 tp!1295138))))

(declare-fun b!4228294 () Bool)

(declare-fun res!1738674 () Bool)

(assert (=> b!4228294 (=> (not res!1738674) (not e!2625454))))

(declare-fun suffix!1590 () List!46793)

(declare-fun ++!11894 (List!46793 List!46793) List!46793)

(assert (=> b!4228294 (= res!1738674 (= (++!11894 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228295 () Bool)

(assert (=> b!4228295 (= e!2625451 false)))

(declare-fun lt!1503334 () List!46793)

(declare-fun list!16842 (BalanceConc!27744) List!46793)

(declare-fun charsOf!5239 (Token!14362) BalanceConc!27744)

(assert (=> b!4228295 (= lt!1503334 (list!16842 (charsOf!5239 t!8425)))))

(declare-fun tp!1295135 () Bool)

(declare-fun b!4228296 () Bool)

(assert (=> b!4228296 (= e!2625443 (and tp!1295135 (inv!61325 (tag!8728 r!4334)) (inv!61329 (transformation!7864 r!4334)) e!2625444))))

(assert (= (and start!404362 res!1738676) b!4228294))

(assert (= (and b!4228294 res!1738674) b!4228281))

(assert (= (and b!4228281 res!1738668) b!4228287))

(assert (= (and b!4228287 res!1738671) b!4228282))

(assert (= (and b!4228282 res!1738673) b!4228285))

(assert (= (and b!4228285 res!1738672) b!4228286))

(assert (= (and b!4228286 res!1738670) b!4228280))

(assert (= (and b!4228280 res!1738675) b!4228284))

(assert (= (and b!4228284 res!1738669) b!4228295))

(assert (= (and start!404362 ((_ is Cons!46669) p!3014)) b!4228293))

(assert (= b!4228288 b!4228290))

(assert (= b!4228291 b!4228288))

(assert (= start!404362 b!4228291))

(assert (= b!4228296 b!4228289))

(assert (= start!404362 b!4228296))

(assert (= (and start!404362 ((_ is Cons!46669) input!3586)) b!4228292))

(assert (= (and start!404362 ((_ is Cons!46669) pBis!134)) b!4228279))

(assert (= (and start!404362 ((_ is Cons!46669) suffix!1590)) b!4228283))

(declare-fun m!4815329 () Bool)

(assert (=> b!4228294 m!4815329))

(declare-fun m!4815331 () Bool)

(assert (=> b!4228280 m!4815331))

(declare-fun m!4815333 () Bool)

(assert (=> b!4228281 m!4815333))

(declare-fun m!4815335 () Bool)

(assert (=> b!4228287 m!4815335))

(declare-fun m!4815337 () Bool)

(assert (=> start!404362 m!4815337))

(declare-fun m!4815339 () Bool)

(assert (=> b!4228284 m!4815339))

(declare-fun m!4815341 () Bool)

(assert (=> b!4228296 m!4815341))

(declare-fun m!4815343 () Bool)

(assert (=> b!4228296 m!4815343))

(declare-fun m!4815345 () Bool)

(assert (=> b!4228291 m!4815345))

(declare-fun m!4815347 () Bool)

(assert (=> b!4228285 m!4815347))

(declare-fun m!4815349 () Bool)

(assert (=> b!4228286 m!4815349))

(declare-fun m!4815351 () Bool)

(assert (=> b!4228288 m!4815351))

(declare-fun m!4815353 () Bool)

(assert (=> b!4228288 m!4815353))

(declare-fun m!4815355 () Bool)

(assert (=> b!4228282 m!4815355))

(declare-fun m!4815357 () Bool)

(assert (=> b!4228282 m!4815357))

(declare-fun m!4815359 () Bool)

(assert (=> b!4228295 m!4815359))

(assert (=> b!4228295 m!4815359))

(declare-fun m!4815361 () Bool)

(assert (=> b!4228295 m!4815361))

(check-sat tp_is_empty!22473 (not b!4228292) (not b!4228296) (not b!4228286) b_and!334053 (not b_next!125515) (not b!4228287) (not b!4228294) (not b_next!125521) (not b!4228282) (not b_next!125517) (not b!4228283) (not b!4228281) (not start!404362) (not b!4228293) (not b!4228291) b_and!334051 b_and!334049 (not b!4228285) (not b!4228279) (not b!4228288) (not b!4228284) (not b_next!125519) (not b!4228280) (not b!4228295) b_and!334055)
(check-sat b_and!334053 (not b_next!125515) (not b_next!125521) (not b_next!125517) b_and!334051 b_and!334049 (not b_next!125519) b_and!334055)
