; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757830 () Bool)

(assert start!757830)

(declare-fun b!8047658 () Bool)

(declare-fun b_free!136563 () Bool)

(declare-fun b_next!137353 () Bool)

(assert (=> b!8047658 (= b_free!136563 (not b_next!137353))))

(declare-fun tp!2412848 () Bool)

(declare-fun b_and!354999 () Bool)

(assert (=> b!8047658 (= tp!2412848 b_and!354999)))

(declare-fun b_free!136565 () Bool)

(declare-fun b_next!137355 () Bool)

(assert (=> b!8047658 (= b_free!136565 (not b_next!137355))))

(declare-fun tp!2412849 () Bool)

(declare-fun b_and!355001 () Bool)

(assert (=> b!8047658 (= tp!2412849 b_and!355001)))

(declare-fun b!8047656 () Bool)

(declare-fun e!4741611 () Bool)

(declare-fun e!4741609 () Bool)

(declare-fun tp!2412846 () Bool)

(assert (=> b!8047656 (= e!4741611 (and e!4741609 tp!2412846))))

(declare-fun res!3181348 () Bool)

(declare-fun e!4741608 () Bool)

(assert (=> start!757830 (=> (not res!3181348) (not e!4741608))))

(declare-datatypes ((LexerInterface!8370 0))(
  ( (LexerInterfaceExt!8367 (__x!35483 Int)) (Lexer!8368) )
))
(declare-fun thiss!10883 () LexerInterface!8370)

(declare-datatypes ((C!44044 0))(
  ( (C!44045 (val!32798 Int)) )
))
(declare-datatypes ((List!75541 0))(
  ( (Nil!75415) (Cons!75415 (h!81863 C!44044) (t!391313 List!75541)) )
))
(declare-datatypes ((IArray!32161 0))(
  ( (IArray!32162 (innerList!16138 List!75541)) )
))
(declare-datatypes ((List!75542 0))(
  ( (Nil!75416) (Cons!75416 (h!81864 (_ BitVec 16)) (t!391314 List!75542)) )
))
(declare-datatypes ((Regex!21853 0))(
  ( (ElementMatch!21853 (c!1475491 C!44044)) (Concat!30955 (regOne!44218 Regex!21853) (regTwo!44218 Regex!21853)) (EmptyExpr!21853) (Star!21853 (reg!22182 Regex!21853)) (EmptyLang!21853) (Union!21853 (regOne!44219 Regex!21853) (regTwo!44219 Regex!21853)) )
))
(declare-datatypes ((String!85291 0))(
  ( (String!85292 (value!293276 String)) )
))
(declare-datatypes ((TokenValue!9102 0))(
  ( (FloatLiteralValue!18204 (text!64159 List!75542)) (TokenValueExt!9101 (__x!35484 Int)) (Broken!45510 (value!293277 List!75542)) (Object!9227) (End!9102) (Def!9102) (Underscore!9102) (Match!9102) (Else!9102) (Error!9102) (Case!9102) (If!9102) (Extends!9102) (Abstract!9102) (Class!9102) (Val!9102) (DelimiterValue!18204 (del!9162 List!75542)) (KeywordValue!9108 (value!293278 List!75542)) (CommentValue!18204 (value!293279 List!75542)) (WhitespaceValue!18204 (value!293280 List!75542)) (IndentationValue!9102 (value!293281 List!75542)) (String!85293) (Int32!9102) (Broken!45511 (value!293282 List!75542)) (Boolean!9103) (Unit!171165) (OperatorValue!9105 (op!9162 List!75542)) (IdentifierValue!18204 (value!293283 List!75542)) (IdentifierValue!18205 (value!293284 List!75542)) (WhitespaceValue!18205 (value!293285 List!75542)) (True!18204) (False!18204) (Broken!45512 (value!293286 List!75542)) (Broken!45513 (value!293287 List!75542)) (True!18205) (RightBrace!9102) (RightBracket!9102) (Colon!9102) (Null!9102) (Comma!9102) (LeftBracket!9102) (False!18205) (LeftBrace!9102) (ImaginaryLiteralValue!9102 (text!64160 List!75542)) (StringLiteralValue!27306 (value!293288 List!75542)) (EOFValue!9102 (value!293289 List!75542)) (IdentValue!9102 (value!293290 List!75542)) (DelimiterValue!18205 (value!293291 List!75542)) (DedentValue!9102 (value!293292 List!75542)) (NewLineValue!9102 (value!293293 List!75542)) (IntegerValue!27306 (value!293294 (_ BitVec 32)) (text!64161 List!75542)) (IntegerValue!27307 (value!293295 Int) (text!64162 List!75542)) (Times!9102) (Or!9102) (Equal!9102) (Minus!9102) (Broken!45514 (value!293296 List!75542)) (And!9102) (Div!9102) (LessEqual!9102) (Mod!9102) (Concat!30956) (Not!9102) (Plus!9102) (SpaceValue!9102 (value!293297 List!75542)) (IntegerValue!27308 (value!293298 Int) (text!64163 List!75542)) (StringLiteralValue!27307 (text!64164 List!75542)) (FloatLiteralValue!18205 (text!64165 List!75542)) (BytesLiteralValue!9102 (value!293299 List!75542)) (CommentValue!18205 (value!293300 List!75542)) (StringLiteralValue!27308 (value!293301 List!75542)) (ErrorTokenValue!9102 (msg!9163 List!75542)) )
))
(declare-datatypes ((Conc!16050 0))(
  ( (Node!16050 (left!57423 Conc!16050) (right!57753 Conc!16050) (csize!32330 Int) (cheight!16261 Int)) (Leaf!30752 (xs!19448 IArray!32161) (csize!32331 Int)) (Empty!16050) )
))
(declare-datatypes ((BalanceConc!31056 0))(
  ( (BalanceConc!31057 (c!1475492 Conc!16050)) )
))
(declare-datatypes ((TokenValueInjection!17512 0))(
  ( (TokenValueInjection!17513 (toValue!11865 Int) (toChars!11724 Int)) )
))
(declare-datatypes ((Rule!17364 0))(
  ( (Rule!17365 (regex!8782 Regex!21853) (tag!9646 String!85291) (isSeparator!8782 Bool) (transformation!8782 TokenValueInjection!17512)) )
))
(declare-datatypes ((List!75543 0))(
  ( (Nil!75417) (Cons!75417 (h!81865 Rule!17364) (t!391315 List!75543)) )
))
(declare-fun rs!157 () List!75543)

(get-info :version)

(assert (=> start!757830 (= res!3181348 (and ((_ is Lexer!8368) thiss!10883) ((_ is Cons!75417) rs!157)))))

(assert (=> start!757830 e!4741608))

(assert (=> start!757830 true))

(assert (=> start!757830 e!4741611))

(declare-fun e!4741610 () Bool)

(assert (=> b!8047658 (= e!4741610 (and tp!2412848 tp!2412849))))

(declare-fun b!8047657 () Bool)

(declare-fun tp!2412847 () Bool)

(declare-fun inv!97125 (String!85291) Bool)

(declare-fun inv!97127 (TokenValueInjection!17512) Bool)

(assert (=> b!8047657 (= e!4741609 (and tp!2412847 (inv!97125 (tag!9646 (h!81865 rs!157))) (inv!97127 (transformation!8782 (h!81865 rs!157))) e!4741610))))

(declare-fun b!8047655 () Bool)

(assert (=> b!8047655 (= e!4741608 false)))

(declare-fun lt!2722890 () Bool)

(declare-fun ruleValid!4000 (LexerInterface!8370 Rule!17364) Bool)

(assert (=> b!8047655 (= lt!2722890 (ruleValid!4000 thiss!10883 (h!81865 rs!157)))))

(assert (= (and start!757830 res!3181348) b!8047655))

(assert (= b!8047657 b!8047658))

(assert (= b!8047656 b!8047657))

(assert (= (and start!757830 ((_ is Cons!75417) rs!157)) b!8047656))

(declare-fun m!8399196 () Bool)

(assert (=> b!8047657 m!8399196))

(declare-fun m!8399198 () Bool)

(assert (=> b!8047657 m!8399198))

(declare-fun m!8399200 () Bool)

(assert (=> b!8047655 m!8399200))

(check-sat (not b!8047657) b_and!355001 (not b!8047656) (not b_next!137355) b_and!354999 (not b_next!137353) (not b!8047655))
(check-sat b_and!355001 b_and!354999 (not b_next!137353) (not b_next!137355))
