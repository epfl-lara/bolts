; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271664 () Bool)

(assert start!271664)

(declare-fun b!2808189 () Bool)

(declare-fun b_free!80021 () Bool)

(declare-fun b_next!80725 () Bool)

(assert (=> b!2808189 (= b_free!80021 (not b_next!80725))))

(declare-fun tp!896266 () Bool)

(declare-fun b_and!205087 () Bool)

(assert (=> b!2808189 (= tp!896266 b_and!205087)))

(declare-fun b_free!80023 () Bool)

(declare-fun b_next!80727 () Bool)

(assert (=> b!2808189 (= b_free!80023 (not b_next!80727))))

(declare-fun tp!896268 () Bool)

(declare-fun b_and!205089 () Bool)

(assert (=> b!2808189 (= tp!896268 b_and!205089)))

(declare-fun b!2808193 () Bool)

(declare-fun b_free!80025 () Bool)

(declare-fun b_next!80729 () Bool)

(assert (=> b!2808193 (= b_free!80025 (not b_next!80729))))

(declare-fun tp!896262 () Bool)

(declare-fun b_and!205091 () Bool)

(assert (=> b!2808193 (= tp!896262 b_and!205091)))

(declare-fun b_free!80027 () Bool)

(declare-fun b_next!80731 () Bool)

(assert (=> b!2808193 (= b_free!80027 (not b_next!80731))))

(declare-fun tp!896264 () Bool)

(declare-fun b_and!205093 () Bool)

(assert (=> b!2808193 (= tp!896264 b_and!205093)))

(declare-fun res!1169697 () Bool)

(declare-fun e!1775562 () Bool)

(assert (=> start!271664 (=> (not res!1169697) (not e!1775562))))

(declare-datatypes ((List!32847 0))(
  ( (Nil!32747) (Cons!32747 (h!38167 (_ BitVec 16)) (t!229527 List!32847)) )
))
(declare-datatypes ((TokenValue!5119 0))(
  ( (FloatLiteralValue!10238 (text!36278 List!32847)) (TokenValueExt!5118 (__x!21895 Int)) (Broken!25595 (value!157448 List!32847)) (Object!5218) (End!5119) (Def!5119) (Underscore!5119) (Match!5119) (Else!5119) (Error!5119) (Case!5119) (If!5119) (Extends!5119) (Abstract!5119) (Class!5119) (Val!5119) (DelimiterValue!10238 (del!5179 List!32847)) (KeywordValue!5125 (value!157449 List!32847)) (CommentValue!10238 (value!157450 List!32847)) (WhitespaceValue!10238 (value!157451 List!32847)) (IndentationValue!5119 (value!157452 List!32847)) (String!35930) (Int32!5119) (Broken!25596 (value!157453 List!32847)) (Boolean!5120) (Unit!46793) (OperatorValue!5122 (op!5179 List!32847)) (IdentifierValue!10238 (value!157454 List!32847)) (IdentifierValue!10239 (value!157455 List!32847)) (WhitespaceValue!10239 (value!157456 List!32847)) (True!10238) (False!10238) (Broken!25597 (value!157457 List!32847)) (Broken!25598 (value!157458 List!32847)) (True!10239) (RightBrace!5119) (RightBracket!5119) (Colon!5119) (Null!5119) (Comma!5119) (LeftBracket!5119) (False!10239) (LeftBrace!5119) (ImaginaryLiteralValue!5119 (text!36279 List!32847)) (StringLiteralValue!15357 (value!157459 List!32847)) (EOFValue!5119 (value!157460 List!32847)) (IdentValue!5119 (value!157461 List!32847)) (DelimiterValue!10239 (value!157462 List!32847)) (DedentValue!5119 (value!157463 List!32847)) (NewLineValue!5119 (value!157464 List!32847)) (IntegerValue!15357 (value!157465 (_ BitVec 32)) (text!36280 List!32847)) (IntegerValue!15358 (value!157466 Int) (text!36281 List!32847)) (Times!5119) (Or!5119) (Equal!5119) (Minus!5119) (Broken!25599 (value!157467 List!32847)) (And!5119) (Div!5119) (LessEqual!5119) (Mod!5119) (Concat!13386) (Not!5119) (Plus!5119) (SpaceValue!5119 (value!157468 List!32847)) (IntegerValue!15359 (value!157469 Int) (text!36282 List!32847)) (StringLiteralValue!15358 (text!36283 List!32847)) (FloatLiteralValue!10239 (text!36284 List!32847)) (BytesLiteralValue!5119 (value!157470 List!32847)) (CommentValue!10239 (value!157471 List!32847)) (StringLiteralValue!15359 (value!157472 List!32847)) (ErrorTokenValue!5119 (msg!5180 List!32847)) )
))
(declare-datatypes ((String!35931 0))(
  ( (String!35932 (value!157473 String)) )
))
(declare-datatypes ((C!16692 0))(
  ( (C!16693 (val!10280 Int)) )
))
(declare-datatypes ((List!32848 0))(
  ( (Nil!32748) (Cons!32748 (h!38168 C!16692) (t!229528 List!32848)) )
))
(declare-datatypes ((IArray!20277 0))(
  ( (IArray!20278 (innerList!10196 List!32848)) )
))
(declare-datatypes ((Conc!10136 0))(
  ( (Node!10136 (left!24719 Conc!10136) (right!25049 Conc!10136) (csize!20502 Int) (cheight!10347 Int)) (Leaf!15438 (xs!13248 IArray!20277) (csize!20503 Int)) (Empty!10136) )
))
(declare-datatypes ((BalanceConc!19886 0))(
  ( (BalanceConc!19887 (c!454878 Conc!10136)) )
))
(declare-datatypes ((TokenValueInjection!9678 0))(
  ( (TokenValueInjection!9679 (toValue!6899 Int) (toChars!6758 Int)) )
))
(declare-datatypes ((Regex!8267 0))(
  ( (ElementMatch!8267 (c!454879 C!16692)) (Concat!13387 (regOne!17046 Regex!8267) (regTwo!17046 Regex!8267)) (EmptyExpr!8267) (Star!8267 (reg!8596 Regex!8267)) (EmptyLang!8267) (Union!8267 (regOne!17047 Regex!8267) (regTwo!17047 Regex!8267)) )
))
(declare-datatypes ((Rule!9594 0))(
  ( (Rule!9595 (regex!4897 Regex!8267) (tag!5401 String!35931) (isSeparator!4897 Bool) (transformation!4897 TokenValueInjection!9678)) )
))
(declare-datatypes ((Token!9196 0))(
  ( (Token!9197 (value!157474 TokenValue!5119) (rule!7325 Rule!9594) (size!25540 Int) (originalCharacters!5629 List!32848)) )
))
(declare-datatypes ((List!32849 0))(
  ( (Nil!32749) (Cons!32749 (h!38169 Token!9196) (t!229529 List!32849)) )
))
(declare-fun l!4240 () List!32849)

(declare-datatypes ((LexerInterface!4488 0))(
  ( (LexerInterfaceExt!4485 (__x!21896 Int)) (Lexer!4486) )
))
(declare-fun thiss!13843 () LexerInterface!4488)

(declare-fun separatorToken!99 () Token!9196)

(get-info :version)

(assert (=> start!271664 (= res!1169697 (and ((_ is Lexer!4486) thiss!13843) (isSeparator!4897 (rule!7325 separatorToken!99)) ((_ is Cons!32749) l!4240)))))

(assert (=> start!271664 e!1775562))

(assert (=> start!271664 true))

(declare-fun e!1775560 () Bool)

(declare-fun inv!44433 (Token!9196) Bool)

(assert (=> start!271664 (and (inv!44433 separatorToken!99) e!1775560)))

(declare-fun e!1775563 () Bool)

(assert (=> start!271664 e!1775563))

(declare-fun b!2808187 () Bool)

(assert (=> b!2808187 (= e!1775562 false)))

(declare-fun lt!1003450 () List!32849)

(declare-fun withSeparatorTokenList!136 (LexerInterface!4488 List!32849 Token!9196) List!32849)

(assert (=> b!2808187 (= lt!1003450 (withSeparatorTokenList!136 thiss!13843 (t!229529 l!4240) separatorToken!99))))

(declare-fun tp!896270 () Bool)

(declare-fun b!2808188 () Bool)

(declare-fun e!1775564 () Bool)

(assert (=> b!2808188 (= e!1775563 (and (inv!44433 (h!38169 l!4240)) e!1775564 tp!896270))))

(declare-fun e!1775569 () Bool)

(assert (=> b!2808189 (= e!1775569 (and tp!896266 tp!896268))))

(declare-fun tp!896265 () Bool)

(declare-fun e!1775559 () Bool)

(declare-fun b!2808190 () Bool)

(declare-fun inv!21 (TokenValue!5119) Bool)

(assert (=> b!2808190 (= e!1775560 (and (inv!21 (value!157474 separatorToken!99)) e!1775559 tp!896265))))

(declare-fun b!2808191 () Bool)

(declare-fun tp!896267 () Bool)

(declare-fun e!1775566 () Bool)

(assert (=> b!2808191 (= e!1775564 (and (inv!21 (value!157474 (h!38169 l!4240))) e!1775566 tp!896267))))

(declare-fun b!2808192 () Bool)

(declare-fun tp!896269 () Bool)

(declare-fun e!1775567 () Bool)

(declare-fun inv!44430 (String!35931) Bool)

(declare-fun inv!44434 (TokenValueInjection!9678) Bool)

(assert (=> b!2808192 (= e!1775566 (and tp!896269 (inv!44430 (tag!5401 (rule!7325 (h!38169 l!4240)))) (inv!44434 (transformation!4897 (rule!7325 (h!38169 l!4240)))) e!1775567))))

(assert (=> b!2808193 (= e!1775567 (and tp!896262 tp!896264))))

(declare-fun tp!896263 () Bool)

(declare-fun b!2808194 () Bool)

(assert (=> b!2808194 (= e!1775559 (and tp!896263 (inv!44430 (tag!5401 (rule!7325 separatorToken!99))) (inv!44434 (transformation!4897 (rule!7325 separatorToken!99))) e!1775569))))

(assert (= (and start!271664 res!1169697) b!2808187))

(assert (= b!2808194 b!2808189))

(assert (= b!2808190 b!2808194))

(assert (= start!271664 b!2808190))

(assert (= b!2808192 b!2808193))

(assert (= b!2808191 b!2808192))

(assert (= b!2808188 b!2808191))

(assert (= (and start!271664 ((_ is Cons!32749) l!4240)) b!2808188))

(declare-fun m!3237691 () Bool)

(assert (=> b!2808194 m!3237691))

(declare-fun m!3237693 () Bool)

(assert (=> b!2808194 m!3237693))

(declare-fun m!3237695 () Bool)

(assert (=> start!271664 m!3237695))

(declare-fun m!3237697 () Bool)

(assert (=> b!2808192 m!3237697))

(declare-fun m!3237699 () Bool)

(assert (=> b!2808192 m!3237699))

(declare-fun m!3237701 () Bool)

(assert (=> b!2808191 m!3237701))

(declare-fun m!3237703 () Bool)

(assert (=> b!2808190 m!3237703))

(declare-fun m!3237705 () Bool)

(assert (=> b!2808187 m!3237705))

(declare-fun m!3237707 () Bool)

(assert (=> b!2808188 m!3237707))

(check-sat b_and!205089 (not b_next!80727) (not b_next!80725) b_and!205093 (not start!271664) b_and!205087 (not b!2808191) (not b!2808190) (not b!2808194) (not b_next!80731) (not b!2808188) b_and!205091 (not b!2808187) (not b!2808192) (not b_next!80729))
(check-sat b_and!205089 (not b_next!80727) (not b_next!80725) b_and!205093 (not b_next!80729) b_and!205087 (not b_next!80731) b_and!205091)
