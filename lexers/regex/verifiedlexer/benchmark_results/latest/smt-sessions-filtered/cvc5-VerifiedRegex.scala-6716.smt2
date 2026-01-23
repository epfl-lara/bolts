; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351604 () Bool)

(assert start!351604)

(declare-fun b!3745387 () Bool)

(declare-fun b_free!99637 () Bool)

(declare-fun b_next!100341 () Bool)

(assert (=> b!3745387 (= b_free!99637 (not b_next!100341))))

(declare-fun tp!1142294 () Bool)

(declare-fun b_and!277871 () Bool)

(assert (=> b!3745387 (= tp!1142294 b_and!277871)))

(declare-fun b_free!99639 () Bool)

(declare-fun b_next!100343 () Bool)

(assert (=> b!3745387 (= b_free!99639 (not b_next!100343))))

(declare-fun tp!1142293 () Bool)

(declare-fun b_and!277873 () Bool)

(assert (=> b!3745387 (= tp!1142293 b_and!277873)))

(declare-fun b!3745391 () Bool)

(declare-fun b_free!99641 () Bool)

(declare-fun b_next!100345 () Bool)

(assert (=> b!3745391 (= b_free!99641 (not b_next!100345))))

(declare-fun tp!1142288 () Bool)

(declare-fun b_and!277875 () Bool)

(assert (=> b!3745391 (= tp!1142288 b_and!277875)))

(declare-fun b_free!99643 () Bool)

(declare-fun b_next!100347 () Bool)

(assert (=> b!3745391 (= b_free!99643 (not b_next!100347))))

(declare-fun tp!1142287 () Bool)

(declare-fun b_and!277877 () Bool)

(assert (=> b!3745391 (= tp!1142287 b_and!277877)))

(declare-fun b!3745393 () Bool)

(declare-fun b_free!99645 () Bool)

(declare-fun b_next!100349 () Bool)

(assert (=> b!3745393 (= b_free!99645 (not b_next!100349))))

(declare-fun tp!1142285 () Bool)

(declare-fun b_and!277879 () Bool)

(assert (=> b!3745393 (= tp!1142285 b_and!277879)))

(declare-fun b_free!99647 () Bool)

(declare-fun b_next!100351 () Bool)

(assert (=> b!3745393 (= b_free!99647 (not b_next!100351))))

(declare-fun tp!1142290 () Bool)

(declare-fun b_and!277881 () Bool)

(assert (=> b!3745393 (= tp!1142290 b_and!277881)))

(declare-fun b!3745402 () Bool)

(declare-fun e!2315944 () Bool)

(assert (=> b!3745402 (= e!2315944 true)))

(declare-fun b!3745401 () Bool)

(declare-fun e!2315943 () Bool)

(assert (=> b!3745401 (= e!2315943 e!2315944)))

(declare-fun b!3745385 () Bool)

(assert (=> b!3745385 e!2315943))

(assert (= b!3745401 b!3745402))

(assert (= b!3745385 b!3745401))

(declare-fun lambda!125134 () Int)

(declare-fun order!21733 () Int)

(declare-fun order!21731 () Int)

(declare-datatypes ((List!39911 0))(
  ( (Nil!39787) (Cons!39787 (h!45207 (_ BitVec 16)) (t!302594 List!39911)) )
))
(declare-datatypes ((TokenValue!6295 0))(
  ( (FloatLiteralValue!12590 (text!44510 List!39911)) (TokenValueExt!6294 (__x!24807 Int)) (Broken!31475 (value!193421 List!39911)) (Object!6418) (End!6295) (Def!6295) (Underscore!6295) (Match!6295) (Else!6295) (Error!6295) (Case!6295) (If!6295) (Extends!6295) (Abstract!6295) (Class!6295) (Val!6295) (DelimiterValue!12590 (del!6355 List!39911)) (KeywordValue!6301 (value!193422 List!39911)) (CommentValue!12590 (value!193423 List!39911)) (WhitespaceValue!12590 (value!193424 List!39911)) (IndentationValue!6295 (value!193425 List!39911)) (String!45102) (Int32!6295) (Broken!31476 (value!193426 List!39911)) (Boolean!6296) (Unit!57638) (OperatorValue!6298 (op!6355 List!39911)) (IdentifierValue!12590 (value!193427 List!39911)) (IdentifierValue!12591 (value!193428 List!39911)) (WhitespaceValue!12591 (value!193429 List!39911)) (True!12590) (False!12590) (Broken!31477 (value!193430 List!39911)) (Broken!31478 (value!193431 List!39911)) (True!12591) (RightBrace!6295) (RightBracket!6295) (Colon!6295) (Null!6295) (Comma!6295) (LeftBracket!6295) (False!12591) (LeftBrace!6295) (ImaginaryLiteralValue!6295 (text!44511 List!39911)) (StringLiteralValue!18885 (value!193432 List!39911)) (EOFValue!6295 (value!193433 List!39911)) (IdentValue!6295 (value!193434 List!39911)) (DelimiterValue!12591 (value!193435 List!39911)) (DedentValue!6295 (value!193436 List!39911)) (NewLineValue!6295 (value!193437 List!39911)) (IntegerValue!18885 (value!193438 (_ BitVec 32)) (text!44512 List!39911)) (IntegerValue!18886 (value!193439 Int) (text!44513 List!39911)) (Times!6295) (Or!6295) (Equal!6295) (Minus!6295) (Broken!31479 (value!193440 List!39911)) (And!6295) (Div!6295) (LessEqual!6295) (Mod!6295) (Concat!17265) (Not!6295) (Plus!6295) (SpaceValue!6295 (value!193441 List!39911)) (IntegerValue!18887 (value!193442 Int) (text!44514 List!39911)) (StringLiteralValue!18886 (text!44515 List!39911)) (FloatLiteralValue!12591 (text!44516 List!39911)) (BytesLiteralValue!6295 (value!193443 List!39911)) (CommentValue!12591 (value!193444 List!39911)) (StringLiteralValue!18887 (value!193445 List!39911)) (ErrorTokenValue!6295 (msg!6356 List!39911)) )
))
(declare-datatypes ((C!22126 0))(
  ( (C!22127 (val!13111 Int)) )
))
(declare-datatypes ((List!39912 0))(
  ( (Nil!39788) (Cons!39788 (h!45208 C!22126) (t!302595 List!39912)) )
))
(declare-datatypes ((IArray!24329 0))(
  ( (IArray!24330 (innerList!12222 List!39912)) )
))
(declare-datatypes ((Conc!12162 0))(
  ( (Node!12162 (left!30828 Conc!12162) (right!31158 Conc!12162) (csize!24554 Int) (cheight!12373 Int)) (Leaf!18879 (xs!15364 IArray!24329) (csize!24555 Int)) (Empty!12162) )
))
(declare-datatypes ((BalanceConc!23938 0))(
  ( (BalanceConc!23939 (c!648692 Conc!12162)) )
))
(declare-datatypes ((TokenValueInjection!12018 0))(
  ( (TokenValueInjection!12019 (toValue!8409 Int) (toChars!8268 Int)) )
))
(declare-datatypes ((Regex!10970 0))(
  ( (ElementMatch!10970 (c!648693 C!22126)) (Concat!17266 (regOne!22452 Regex!10970) (regTwo!22452 Regex!10970)) (EmptyExpr!10970) (Star!10970 (reg!11299 Regex!10970)) (EmptyLang!10970) (Union!10970 (regOne!22453 Regex!10970) (regTwo!22453 Regex!10970)) )
))
(declare-datatypes ((String!45103 0))(
  ( (String!45104 (value!193446 String)) )
))
(declare-datatypes ((Rule!11930 0))(
  ( (Rule!11931 (regex!6065 Regex!10970) (tag!6925 String!45103) (isSeparator!6065 Bool) (transformation!6065 TokenValueInjection!12018)) )
))
(declare-fun rSep!170 () Rule!11930)

(declare-fun dynLambda!17207 (Int Int) Int)

(declare-fun dynLambda!17208 (Int Int) Int)

(assert (=> b!3745402 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rSep!170))) (dynLambda!17208 order!21733 lambda!125134))))

(declare-fun order!21735 () Int)

(declare-fun dynLambda!17209 (Int Int) Int)

(assert (=> b!3745402 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 rSep!170))) (dynLambda!17208 order!21733 lambda!125134))))

(declare-fun res!1518206 () Bool)

(declare-fun e!2315931 () Bool)

(assert (=> start!351604 (=> (not res!1518206) (not e!2315931))))

(declare-datatypes ((LexerInterface!5654 0))(
  ( (LexerInterfaceExt!5651 (__x!24808 Int)) (Lexer!5652) )
))
(declare-fun thiss!27193 () LexerInterface!5654)

(assert (=> start!351604 (= res!1518206 (is-Lexer!5652 thiss!27193))))

(assert (=> start!351604 e!2315931))

(declare-fun e!2315935 () Bool)

(assert (=> start!351604 e!2315935))

(declare-fun e!2315934 () Bool)

(assert (=> start!351604 e!2315934))

(assert (=> start!351604 true))

(declare-fun tp_is_empty!18955 () Bool)

(assert (=> start!351604 tp_is_empty!18955))

(declare-fun e!2315938 () Bool)

(assert (=> start!351604 e!2315938))

(declare-fun b!3745381 () Bool)

(declare-fun res!1518201 () Bool)

(declare-fun e!2315932 () Bool)

(assert (=> b!3745381 (=> (not res!1518201) (not e!2315932))))

(declare-fun rNSep!170 () Rule!11930)

(declare-datatypes ((List!39913 0))(
  ( (Nil!39789) (Cons!39789 (h!45209 Rule!11930) (t!302596 List!39913)) )
))
(declare-fun rules!4213 () List!39913)

(declare-fun ruleDisjointCharsFromAllFromOtherType!938 (Rule!11930 List!39913) Bool)

(assert (=> b!3745381 (= res!1518201 (ruleDisjointCharsFromAllFromOtherType!938 rNSep!170 rules!4213))))

(declare-fun e!2315927 () Bool)

(declare-fun tp!1142292 () Bool)

(declare-fun b!3745382 () Bool)

(declare-fun inv!53320 (String!45103) Bool)

(declare-fun inv!53323 (TokenValueInjection!12018) Bool)

(assert (=> b!3745382 (= e!2315935 (and tp!1142292 (inv!53320 (tag!6925 rNSep!170)) (inv!53323 (transformation!6065 rNSep!170)) e!2315927))))

(declare-fun b!3745383 () Bool)

(declare-fun res!1518204 () Bool)

(assert (=> b!3745383 (=> (not res!1518204) (not e!2315931))))

(declare-fun contains!8087 (List!39913 Rule!11930) Bool)

(assert (=> b!3745383 (= res!1518204 (contains!8087 rules!4213 rSep!170))))

(declare-fun b!3745384 () Bool)

(declare-fun res!1518203 () Bool)

(assert (=> b!3745384 (=> (not res!1518203) (not e!2315932))))

(assert (=> b!3745384 (= res!1518203 (and (is-Cons!39789 rules!4213) (= (h!45209 rules!4213) rSep!170)))))

(declare-fun lt!1299427 () List!39912)

(declare-fun forall!8187 (List!39912 Int) Bool)

(assert (=> b!3745385 (= e!2315932 (not (forall!8187 lt!1299427 lambda!125134)))))

(declare-fun b!3745386 () Bool)

(assert (=> b!3745386 (= e!2315931 e!2315932)))

(declare-fun res!1518202 () Bool)

(assert (=> b!3745386 (=> (not res!1518202) (not e!2315932))))

(declare-fun c!6920 () C!22126)

(declare-fun contains!8088 (List!39912 C!22126) Bool)

(assert (=> b!3745386 (= res!1518202 (contains!8088 lt!1299427 c!6920))))

(declare-fun usedCharacters!1233 (Regex!10970) List!39912)

(assert (=> b!3745386 (= lt!1299427 (usedCharacters!1233 (regex!6065 rNSep!170)))))

(assert (=> b!3745387 (= e!2315927 (and tp!1142294 tp!1142293))))

(declare-fun e!2315936 () Bool)

(declare-fun b!3745388 () Bool)

(declare-fun tp!1142289 () Bool)

(declare-fun e!2315937 () Bool)

(assert (=> b!3745388 (= e!2315936 (and tp!1142289 (inv!53320 (tag!6925 (h!45209 rules!4213))) (inv!53323 (transformation!6065 (h!45209 rules!4213))) e!2315937))))

(declare-fun b!3745389 () Bool)

(declare-fun res!1518205 () Bool)

(assert (=> b!3745389 (=> (not res!1518205) (not e!2315932))))

(assert (=> b!3745389 (= res!1518205 (and (not (isSeparator!6065 rNSep!170)) (isSeparator!6065 rSep!170)))))

(declare-fun b!3745390 () Bool)

(declare-fun res!1518200 () Bool)

(assert (=> b!3745390 (=> (not res!1518200) (not e!2315931))))

(declare-fun rulesInvariant!5051 (LexerInterface!5654 List!39913) Bool)

(assert (=> b!3745390 (= res!1518200 (rulesInvariant!5051 thiss!27193 rules!4213))))

(declare-fun e!2315928 () Bool)

(assert (=> b!3745391 (= e!2315928 (and tp!1142288 tp!1142287))))

(declare-fun b!3745392 () Bool)

(declare-fun tp!1142291 () Bool)

(assert (=> b!3745392 (= e!2315934 (and e!2315936 tp!1142291))))

(assert (=> b!3745393 (= e!2315937 (and tp!1142285 tp!1142290))))

(declare-fun tp!1142286 () Bool)

(declare-fun b!3745394 () Bool)

(assert (=> b!3745394 (= e!2315938 (and tp!1142286 (inv!53320 (tag!6925 rSep!170)) (inv!53323 (transformation!6065 rSep!170)) e!2315928))))

(assert (= (and start!351604 res!1518206) b!3745390))

(assert (= (and b!3745390 res!1518200) b!3745383))

(assert (= (and b!3745383 res!1518204) b!3745386))

(assert (= (and b!3745386 res!1518202) b!3745389))

(assert (= (and b!3745389 res!1518205) b!3745381))

(assert (= (and b!3745381 res!1518201) b!3745384))

(assert (= (and b!3745384 res!1518203) b!3745385))

(assert (= b!3745382 b!3745387))

(assert (= start!351604 b!3745382))

(assert (= b!3745388 b!3745393))

(assert (= b!3745392 b!3745388))

(assert (= (and start!351604 (is-Cons!39789 rules!4213)) b!3745392))

(assert (= b!3745394 b!3745391))

(assert (= start!351604 b!3745394))

(declare-fun m!4238389 () Bool)

(assert (=> b!3745386 m!4238389))

(declare-fun m!4238391 () Bool)

(assert (=> b!3745386 m!4238391))

(declare-fun m!4238393 () Bool)

(assert (=> b!3745381 m!4238393))

(declare-fun m!4238395 () Bool)

(assert (=> b!3745382 m!4238395))

(declare-fun m!4238397 () Bool)

(assert (=> b!3745382 m!4238397))

(declare-fun m!4238399 () Bool)

(assert (=> b!3745390 m!4238399))

(declare-fun m!4238401 () Bool)

(assert (=> b!3745388 m!4238401))

(declare-fun m!4238403 () Bool)

(assert (=> b!3745388 m!4238403))

(declare-fun m!4238405 () Bool)

(assert (=> b!3745385 m!4238405))

(declare-fun m!4238407 () Bool)

(assert (=> b!3745394 m!4238407))

(declare-fun m!4238409 () Bool)

(assert (=> b!3745394 m!4238409))

(declare-fun m!4238411 () Bool)

(assert (=> b!3745383 m!4238411))

(push 1)

(assert (not b!3745382))

(assert b_and!277875)

(assert (not b_next!100343))

(assert b_and!277881)

(assert b_and!277873)

(assert (not b_next!100345))

(assert (not b!3745385))

(assert b_and!277879)

(assert (not b!3745390))

(assert (not b_next!100341))

(assert (not b!3745394))

(assert b_and!277877)

(assert (not b!3745392))

(assert (not b!3745383))

(assert (not b_next!100349))

(assert (not b!3745388))

(assert b_and!277871)

(assert tp_is_empty!18955)

(assert (not b!3745386))

(assert (not b!3745381))

(assert (not b_next!100347))

(assert (not b_next!100351))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277875)

(assert (not b_next!100343))

(assert b_and!277881)

(assert (not b_next!100349))

(assert b_and!277873)

(assert b_and!277871)

(assert (not b_next!100345))

(assert b_and!277879)

(assert (not b_next!100341))

(assert b_and!277877)

(assert (not b_next!100347))

(assert (not b_next!100351))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093219 () Bool)

(assert (=> d!1093219 (= (inv!53320 (tag!6925 (h!45209 rules!4213))) (= (mod (str.len (value!193446 (tag!6925 (h!45209 rules!4213)))) 2) 0))))

(assert (=> b!3745388 d!1093219))

(declare-fun d!1093221 () Bool)

(declare-fun res!1518237 () Bool)

(declare-fun e!2315989 () Bool)

(assert (=> d!1093221 (=> (not res!1518237) (not e!2315989))))

(declare-fun semiInverseModEq!2596 (Int Int) Bool)

(assert (=> d!1093221 (= res!1518237 (semiInverseModEq!2596 (toChars!8268 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 (h!45209 rules!4213)))))))

(assert (=> d!1093221 (= (inv!53323 (transformation!6065 (h!45209 rules!4213))) e!2315989)))

(declare-fun b!3745455 () Bool)

(declare-fun equivClasses!2495 (Int Int) Bool)

(assert (=> b!3745455 (= e!2315989 (equivClasses!2495 (toChars!8268 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 (h!45209 rules!4213)))))))

(assert (= (and d!1093221 res!1518237) b!3745455))

(declare-fun m!4238437 () Bool)

(assert (=> d!1093221 m!4238437))

(declare-fun m!4238439 () Bool)

(assert (=> b!3745455 m!4238439))

(assert (=> b!3745388 d!1093221))

(declare-fun d!1093223 () Bool)

(declare-fun lt!1299433 () Bool)

(declare-fun content!5827 (List!39913) (Set Rule!11930))

(assert (=> d!1093223 (= lt!1299433 (set.member rSep!170 (content!5827 rules!4213)))))

(declare-fun e!2315994 () Bool)

(assert (=> d!1093223 (= lt!1299433 e!2315994)))

(declare-fun res!1518242 () Bool)

(assert (=> d!1093223 (=> (not res!1518242) (not e!2315994))))

(assert (=> d!1093223 (= res!1518242 (is-Cons!39789 rules!4213))))

(assert (=> d!1093223 (= (contains!8087 rules!4213 rSep!170) lt!1299433)))

(declare-fun b!3745460 () Bool)

(declare-fun e!2315995 () Bool)

(assert (=> b!3745460 (= e!2315994 e!2315995)))

(declare-fun res!1518243 () Bool)

(assert (=> b!3745460 (=> res!1518243 e!2315995)))

(assert (=> b!3745460 (= res!1518243 (= (h!45209 rules!4213) rSep!170))))

(declare-fun b!3745461 () Bool)

(assert (=> b!3745461 (= e!2315995 (contains!8087 (t!302596 rules!4213) rSep!170))))

(assert (= (and d!1093223 res!1518242) b!3745460))

(assert (= (and b!3745460 (not res!1518243)) b!3745461))

(declare-fun m!4238441 () Bool)

(assert (=> d!1093223 m!4238441))

(declare-fun m!4238443 () Bool)

(assert (=> d!1093223 m!4238443))

(declare-fun m!4238445 () Bool)

(assert (=> b!3745461 m!4238445))

(assert (=> b!3745383 d!1093223))

(declare-fun d!1093225 () Bool)

(assert (=> d!1093225 (= (inv!53320 (tag!6925 rSep!170)) (= (mod (str.len (value!193446 (tag!6925 rSep!170))) 2) 0))))

(assert (=> b!3745394 d!1093225))

(declare-fun d!1093227 () Bool)

(declare-fun res!1518244 () Bool)

(declare-fun e!2315996 () Bool)

(assert (=> d!1093227 (=> (not res!1518244) (not e!2315996))))

(assert (=> d!1093227 (= res!1518244 (semiInverseModEq!2596 (toChars!8268 (transformation!6065 rSep!170)) (toValue!8409 (transformation!6065 rSep!170))))))

(assert (=> d!1093227 (= (inv!53323 (transformation!6065 rSep!170)) e!2315996)))

(declare-fun b!3745462 () Bool)

(assert (=> b!3745462 (= e!2315996 (equivClasses!2495 (toChars!8268 (transformation!6065 rSep!170)) (toValue!8409 (transformation!6065 rSep!170))))))

(assert (= (and d!1093227 res!1518244) b!3745462))

(declare-fun m!4238447 () Bool)

(assert (=> d!1093227 m!4238447))

(declare-fun m!4238449 () Bool)

(assert (=> b!3745462 m!4238449))

(assert (=> b!3745394 d!1093227))

(declare-fun d!1093229 () Bool)

(declare-fun res!1518247 () Bool)

(declare-fun e!2315999 () Bool)

(assert (=> d!1093229 (=> (not res!1518247) (not e!2315999))))

(declare-fun rulesValid!2352 (LexerInterface!5654 List!39913) Bool)

(assert (=> d!1093229 (= res!1518247 (rulesValid!2352 thiss!27193 rules!4213))))

(assert (=> d!1093229 (= (rulesInvariant!5051 thiss!27193 rules!4213) e!2315999)))

(declare-fun b!3745465 () Bool)

(declare-datatypes ((List!39917 0))(
  ( (Nil!39793) (Cons!39793 (h!45213 String!45103) (t!302600 List!39917)) )
))
(declare-fun noDuplicateTag!2353 (LexerInterface!5654 List!39913 List!39917) Bool)

(assert (=> b!3745465 (= e!2315999 (noDuplicateTag!2353 thiss!27193 rules!4213 Nil!39793))))

(assert (= (and d!1093229 res!1518247) b!3745465))

(declare-fun m!4238451 () Bool)

(assert (=> d!1093229 m!4238451))

(declare-fun m!4238453 () Bool)

(assert (=> b!3745465 m!4238453))

(assert (=> b!3745390 d!1093229))

(declare-fun d!1093231 () Bool)

(declare-fun res!1518252 () Bool)

(declare-fun e!2316004 () Bool)

(assert (=> d!1093231 (=> res!1518252 e!2316004)))

(assert (=> d!1093231 (= res!1518252 (is-Nil!39788 lt!1299427))))

(assert (=> d!1093231 (= (forall!8187 lt!1299427 lambda!125134) e!2316004)))

(declare-fun b!3745470 () Bool)

(declare-fun e!2316005 () Bool)

(assert (=> b!3745470 (= e!2316004 e!2316005)))

(declare-fun res!1518253 () Bool)

(assert (=> b!3745470 (=> (not res!1518253) (not e!2316005))))

(declare-fun dynLambda!17213 (Int C!22126) Bool)

(assert (=> b!3745470 (= res!1518253 (dynLambda!17213 lambda!125134 (h!45208 lt!1299427)))))

(declare-fun b!3745471 () Bool)

(assert (=> b!3745471 (= e!2316005 (forall!8187 (t!302595 lt!1299427) lambda!125134))))

(assert (= (and d!1093231 (not res!1518252)) b!3745470))

(assert (= (and b!3745470 res!1518253) b!3745471))

(declare-fun b_lambda!109843 () Bool)

(assert (=> (not b_lambda!109843) (not b!3745470)))

(declare-fun m!4238455 () Bool)

(assert (=> b!3745470 m!4238455))

(declare-fun m!4238457 () Bool)

(assert (=> b!3745471 m!4238457))

(assert (=> b!3745385 d!1093231))

(declare-fun d!1093233 () Bool)

(declare-fun lt!1299436 () Bool)

(declare-fun content!5828 (List!39912) (Set C!22126))

(assert (=> d!1093233 (= lt!1299436 (set.member c!6920 (content!5828 lt!1299427)))))

(declare-fun e!2316010 () Bool)

(assert (=> d!1093233 (= lt!1299436 e!2316010)))

(declare-fun res!1518259 () Bool)

(assert (=> d!1093233 (=> (not res!1518259) (not e!2316010))))

(assert (=> d!1093233 (= res!1518259 (is-Cons!39788 lt!1299427))))

(assert (=> d!1093233 (= (contains!8088 lt!1299427 c!6920) lt!1299436)))

(declare-fun b!3745476 () Bool)

(declare-fun e!2316011 () Bool)

(assert (=> b!3745476 (= e!2316010 e!2316011)))

(declare-fun res!1518258 () Bool)

(assert (=> b!3745476 (=> res!1518258 e!2316011)))

(assert (=> b!3745476 (= res!1518258 (= (h!45208 lt!1299427) c!6920))))

(declare-fun b!3745477 () Bool)

(assert (=> b!3745477 (= e!2316011 (contains!8088 (t!302595 lt!1299427) c!6920))))

(assert (= (and d!1093233 res!1518259) b!3745476))

(assert (= (and b!3745476 (not res!1518258)) b!3745477))

(declare-fun m!4238459 () Bool)

(assert (=> d!1093233 m!4238459))

(declare-fun m!4238461 () Bool)

(assert (=> d!1093233 m!4238461))

(declare-fun m!4238463 () Bool)

(assert (=> b!3745477 m!4238463))

(assert (=> b!3745386 d!1093233))

(declare-fun bm!275002 () Bool)

(declare-fun call!275008 () List!39912)

(declare-fun c!648706 () Bool)

(assert (=> bm!275002 (= call!275008 (usedCharacters!1233 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))))))

(declare-fun bm!275003 () Bool)

(declare-fun call!275009 () List!39912)

(declare-fun call!275010 () List!39912)

(assert (=> bm!275003 (= call!275009 call!275010)))

(declare-fun c!648705 () Bool)

(declare-fun bm!275004 () Bool)

(assert (=> bm!275004 (= call!275010 (usedCharacters!1233 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))))))

(declare-fun b!3745494 () Bool)

(declare-fun e!2316020 () List!39912)

(assert (=> b!3745494 (= e!2316020 call!275010)))

(declare-fun bm!275005 () Bool)

(declare-fun call!275007 () List!39912)

(declare-fun ++!9882 (List!39912 List!39912) List!39912)

(assert (=> bm!275005 (= call!275007 (++!9882 call!275008 call!275009))))

(declare-fun b!3745496 () Bool)

(declare-fun e!2316023 () List!39912)

(assert (=> b!3745496 (= e!2316020 e!2316023)))

(assert (=> b!3745496 (= c!648706 (is-Union!10970 (regex!6065 rNSep!170)))))

(declare-fun b!3745497 () Bool)

(declare-fun e!2316021 () List!39912)

(declare-fun e!2316022 () List!39912)

(assert (=> b!3745497 (= e!2316021 e!2316022)))

(declare-fun c!648704 () Bool)

(assert (=> b!3745497 (= c!648704 (is-ElementMatch!10970 (regex!6065 rNSep!170)))))

(declare-fun b!3745498 () Bool)

(assert (=> b!3745498 (= e!2316023 call!275007)))

(declare-fun b!3745499 () Bool)

(assert (=> b!3745499 (= e!2316022 (Cons!39788 (c!648693 (regex!6065 rNSep!170)) Nil!39788))))

(declare-fun b!3745500 () Bool)

(assert (=> b!3745500 (= e!2316021 Nil!39788)))

(declare-fun b!3745501 () Bool)

(assert (=> b!3745501 (= c!648705 (is-Star!10970 (regex!6065 rNSep!170)))))

(assert (=> b!3745501 (= e!2316022 e!2316020)))

(declare-fun d!1093235 () Bool)

(declare-fun c!648707 () Bool)

(assert (=> d!1093235 (= c!648707 (or (is-EmptyExpr!10970 (regex!6065 rNSep!170)) (is-EmptyLang!10970 (regex!6065 rNSep!170))))))

(assert (=> d!1093235 (= (usedCharacters!1233 (regex!6065 rNSep!170)) e!2316021)))

(declare-fun b!3745495 () Bool)

(assert (=> b!3745495 (= e!2316023 call!275007)))

(assert (= (and d!1093235 c!648707) b!3745500))

(assert (= (and d!1093235 (not c!648707)) b!3745497))

(assert (= (and b!3745497 c!648704) b!3745499))

(assert (= (and b!3745497 (not c!648704)) b!3745501))

(assert (= (and b!3745501 c!648705) b!3745494))

(assert (= (and b!3745501 (not c!648705)) b!3745496))

(assert (= (and b!3745496 c!648706) b!3745495))

(assert (= (and b!3745496 (not c!648706)) b!3745498))

(assert (= (or b!3745495 b!3745498) bm!275002))

(assert (= (or b!3745495 b!3745498) bm!275003))

(assert (= (or b!3745495 b!3745498) bm!275005))

(assert (= (or b!3745494 bm!275003) bm!275004))

(declare-fun m!4238465 () Bool)

(assert (=> bm!275002 m!4238465))

(declare-fun m!4238467 () Bool)

(assert (=> bm!275004 m!4238467))

(declare-fun m!4238469 () Bool)

(assert (=> bm!275005 m!4238469))

(assert (=> b!3745386 d!1093235))

(declare-fun bm!275008 () Bool)

(declare-fun call!275013 () Bool)

(assert (=> bm!275008 (= call!275013 (ruleDisjointCharsFromAllFromOtherType!938 rNSep!170 (t!302596 rules!4213)))))

(declare-fun b!3745510 () Bool)

(declare-fun e!2316031 () Bool)

(declare-fun e!2316032 () Bool)

(assert (=> b!3745510 (= e!2316031 e!2316032)))

(declare-fun res!1518264 () Bool)

(declare-fun rulesUseDisjointChars!375 (Rule!11930 Rule!11930) Bool)

(assert (=> b!3745510 (= res!1518264 (rulesUseDisjointChars!375 rNSep!170 (h!45209 rules!4213)))))

(assert (=> b!3745510 (=> (not res!1518264) (not e!2316032))))

(declare-fun d!1093237 () Bool)

(declare-fun c!648710 () Bool)

(assert (=> d!1093237 (= c!648710 (and (is-Cons!39789 rules!4213) (not (= (isSeparator!6065 (h!45209 rules!4213)) (isSeparator!6065 rNSep!170)))))))

(assert (=> d!1093237 (= (ruleDisjointCharsFromAllFromOtherType!938 rNSep!170 rules!4213) e!2316031)))

(declare-fun b!3745511 () Bool)

(declare-fun e!2316030 () Bool)

(assert (=> b!3745511 (= e!2316031 e!2316030)))

(declare-fun res!1518265 () Bool)

(assert (=> b!3745511 (= res!1518265 (not (is-Cons!39789 rules!4213)))))

(assert (=> b!3745511 (=> res!1518265 e!2316030)))

(declare-fun b!3745512 () Bool)

(assert (=> b!3745512 (= e!2316030 call!275013)))

(declare-fun b!3745513 () Bool)

(assert (=> b!3745513 (= e!2316032 call!275013)))

(assert (= (and d!1093237 c!648710) b!3745510))

(assert (= (and d!1093237 (not c!648710)) b!3745511))

(assert (= (and b!3745510 res!1518264) b!3745513))

(assert (= (and b!3745511 (not res!1518265)) b!3745512))

(assert (= (or b!3745513 b!3745512) bm!275008))

(declare-fun m!4238471 () Bool)

(assert (=> bm!275008 m!4238471))

(declare-fun m!4238473 () Bool)

(assert (=> b!3745510 m!4238473))

(assert (=> b!3745381 d!1093237))

(declare-fun d!1093241 () Bool)

(assert (=> d!1093241 (= (inv!53320 (tag!6925 rNSep!170)) (= (mod (str.len (value!193446 (tag!6925 rNSep!170))) 2) 0))))

(assert (=> b!3745382 d!1093241))

(declare-fun d!1093243 () Bool)

(declare-fun res!1518266 () Bool)

(declare-fun e!2316033 () Bool)

(assert (=> d!1093243 (=> (not res!1518266) (not e!2316033))))

(assert (=> d!1093243 (= res!1518266 (semiInverseModEq!2596 (toChars!8268 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rNSep!170))))))

(assert (=> d!1093243 (= (inv!53323 (transformation!6065 rNSep!170)) e!2316033)))

(declare-fun b!3745514 () Bool)

(assert (=> b!3745514 (= e!2316033 (equivClasses!2495 (toChars!8268 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rNSep!170))))))

(assert (= (and d!1093243 res!1518266) b!3745514))

(declare-fun m!4238475 () Bool)

(assert (=> d!1093243 m!4238475))

(declare-fun m!4238477 () Bool)

(assert (=> b!3745514 m!4238477))

(assert (=> b!3745382 d!1093243))

(declare-fun b!3745527 () Bool)

(declare-fun e!2316036 () Bool)

(declare-fun tp!1142336 () Bool)

(assert (=> b!3745527 (= e!2316036 tp!1142336)))

(declare-fun b!3745525 () Bool)

(assert (=> b!3745525 (= e!2316036 tp_is_empty!18955)))

(declare-fun b!3745526 () Bool)

(declare-fun tp!1142338 () Bool)

(declare-fun tp!1142337 () Bool)

(assert (=> b!3745526 (= e!2316036 (and tp!1142338 tp!1142337))))

(assert (=> b!3745388 (= tp!1142289 e!2316036)))

(declare-fun b!3745528 () Bool)

(declare-fun tp!1142335 () Bool)

(declare-fun tp!1142339 () Bool)

(assert (=> b!3745528 (= e!2316036 (and tp!1142335 tp!1142339))))

(assert (= (and b!3745388 (is-ElementMatch!10970 (regex!6065 (h!45209 rules!4213)))) b!3745525))

(assert (= (and b!3745388 (is-Concat!17266 (regex!6065 (h!45209 rules!4213)))) b!3745526))

(assert (= (and b!3745388 (is-Star!10970 (regex!6065 (h!45209 rules!4213)))) b!3745527))

(assert (= (and b!3745388 (is-Union!10970 (regex!6065 (h!45209 rules!4213)))) b!3745528))

(declare-fun b!3745531 () Bool)

(declare-fun e!2316037 () Bool)

(declare-fun tp!1142341 () Bool)

(assert (=> b!3745531 (= e!2316037 tp!1142341)))

(declare-fun b!3745529 () Bool)

(assert (=> b!3745529 (= e!2316037 tp_is_empty!18955)))

(declare-fun b!3745530 () Bool)

(declare-fun tp!1142343 () Bool)

(declare-fun tp!1142342 () Bool)

(assert (=> b!3745530 (= e!2316037 (and tp!1142343 tp!1142342))))

(assert (=> b!3745394 (= tp!1142286 e!2316037)))

(declare-fun b!3745532 () Bool)

(declare-fun tp!1142340 () Bool)

(declare-fun tp!1142344 () Bool)

(assert (=> b!3745532 (= e!2316037 (and tp!1142340 tp!1142344))))

(assert (= (and b!3745394 (is-ElementMatch!10970 (regex!6065 rSep!170))) b!3745529))

(assert (= (and b!3745394 (is-Concat!17266 (regex!6065 rSep!170))) b!3745530))

(assert (= (and b!3745394 (is-Star!10970 (regex!6065 rSep!170))) b!3745531))

(assert (= (and b!3745394 (is-Union!10970 (regex!6065 rSep!170))) b!3745532))

(declare-fun b!3745543 () Bool)

(declare-fun b_free!99661 () Bool)

(declare-fun b_next!100365 () Bool)

(assert (=> b!3745543 (= b_free!99661 (not b_next!100365))))

(declare-fun tp!1142354 () Bool)

(declare-fun b_and!277895 () Bool)

(assert (=> b!3745543 (= tp!1142354 b_and!277895)))

(declare-fun b_free!99663 () Bool)

(declare-fun b_next!100367 () Bool)

(assert (=> b!3745543 (= b_free!99663 (not b_next!100367))))

(declare-fun tp!1142356 () Bool)

(declare-fun b_and!277897 () Bool)

(assert (=> b!3745543 (= tp!1142356 b_and!277897)))

(declare-fun e!2316047 () Bool)

(assert (=> b!3745543 (= e!2316047 (and tp!1142354 tp!1142356))))

(declare-fun b!3745542 () Bool)

(declare-fun tp!1142355 () Bool)

(declare-fun e!2316048 () Bool)

(assert (=> b!3745542 (= e!2316048 (and tp!1142355 (inv!53320 (tag!6925 (h!45209 (t!302596 rules!4213)))) (inv!53323 (transformation!6065 (h!45209 (t!302596 rules!4213)))) e!2316047))))

(declare-fun b!3745541 () Bool)

(declare-fun e!2316049 () Bool)

(declare-fun tp!1142353 () Bool)

(assert (=> b!3745541 (= e!2316049 (and e!2316048 tp!1142353))))

(assert (=> b!3745392 (= tp!1142291 e!2316049)))

(assert (= b!3745542 b!3745543))

(assert (= b!3745541 b!3745542))

(assert (= (and b!3745392 (is-Cons!39789 (t!302596 rules!4213))) b!3745541))

(declare-fun m!4238479 () Bool)

(assert (=> b!3745542 m!4238479))

(declare-fun m!4238481 () Bool)

(assert (=> b!3745542 m!4238481))

(declare-fun b!3745546 () Bool)

(declare-fun e!2316050 () Bool)

(declare-fun tp!1142358 () Bool)

(assert (=> b!3745546 (= e!2316050 tp!1142358)))

(declare-fun b!3745544 () Bool)

(assert (=> b!3745544 (= e!2316050 tp_is_empty!18955)))

(declare-fun b!3745545 () Bool)

(declare-fun tp!1142360 () Bool)

(declare-fun tp!1142359 () Bool)

(assert (=> b!3745545 (= e!2316050 (and tp!1142360 tp!1142359))))

(assert (=> b!3745382 (= tp!1142292 e!2316050)))

(declare-fun b!3745547 () Bool)

(declare-fun tp!1142357 () Bool)

(declare-fun tp!1142361 () Bool)

(assert (=> b!3745547 (= e!2316050 (and tp!1142357 tp!1142361))))

(assert (= (and b!3745382 (is-ElementMatch!10970 (regex!6065 rNSep!170))) b!3745544))

(assert (= (and b!3745382 (is-Concat!17266 (regex!6065 rNSep!170))) b!3745545))

(assert (= (and b!3745382 (is-Star!10970 (regex!6065 rNSep!170))) b!3745546))

(assert (= (and b!3745382 (is-Union!10970 (regex!6065 rNSep!170))) b!3745547))

(declare-fun b_lambda!109845 () Bool)

(assert (= b_lambda!109843 (or b!3745385 b_lambda!109845)))

(declare-fun bs!575274 () Bool)

(declare-fun d!1093247 () Bool)

(assert (= bs!575274 (and d!1093247 b!3745385)))

(assert (=> bs!575274 (= (dynLambda!17213 lambda!125134 (h!45208 lt!1299427)) (not (contains!8088 (usedCharacters!1233 (regex!6065 rSep!170)) (h!45208 lt!1299427))))))

(declare-fun m!4238483 () Bool)

(assert (=> bs!575274 m!4238483))

(assert (=> bs!575274 m!4238483))

(declare-fun m!4238485 () Bool)

(assert (=> bs!575274 m!4238485))

(assert (=> b!3745470 d!1093247))

(push 1)

(assert b_and!277875)

(assert b_and!277881)

(assert (not b!3745545))

(assert (not d!1093227))

(assert (not b!3745514))

(assert (not b_next!100341))

(assert (not d!1093221))

(assert (not b!3745547))

(assert (not bs!575274))

(assert (not b_next!100365))

(assert (not b_next!100343))

(assert (not bm!275008))

(assert (not b!3745527))

(assert (not d!1093243))

(assert (not b!3745528))

(assert (not bm!275004))

(assert (not b!3745532))

(assert (not d!1093223))

(assert (not b!3745530))

(assert (not b!3745461))

(assert (not bm!275002))

(assert (not b_next!100367))

(assert (not b_next!100349))

(assert b_and!277873)

(assert (not d!1093229))

(assert (not b!3745542))

(assert b_and!277871)

(assert tp_is_empty!18955)

(assert (not b!3745541))

(assert (not b_next!100345))

(assert b_and!277897)

(assert (not b!3745546))

(assert (not d!1093233))

(assert b_and!277879)

(assert (not b!3745471))

(assert (not b!3745510))

(assert (not bm!275005))

(assert (not b!3745462))

(assert (not b_lambda!109845))

(assert (not b!3745455))

(assert (not b!3745531))

(assert (not b!3745526))

(assert (not b!3745465))

(assert (not b_next!100347))

(assert (not b_next!100351))

(assert b_and!277877)

(assert (not b!3745477))

(assert b_and!277895)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100365))

(assert b_and!277875)

(assert (not b_next!100343))

(assert b_and!277881)

(assert b_and!277873)

(assert b_and!277871)

(assert b_and!277879)

(assert (not b_next!100341))

(assert (not b_next!100367))

(assert (not b_next!100349))

(assert (not b_next!100345))

(assert b_and!277897)

(assert (not b_next!100347))

(assert (not b_next!100351))

(assert b_and!277877)

(assert b_and!277895)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093271 () Bool)

(declare-fun res!1518305 () Bool)

(declare-fun e!2316119 () Bool)

(assert (=> d!1093271 (=> res!1518305 e!2316119)))

(assert (=> d!1093271 (= res!1518305 (is-Nil!39789 rules!4213))))

(assert (=> d!1093271 (= (noDuplicateTag!2353 thiss!27193 rules!4213 Nil!39793) e!2316119)))

(declare-fun b!3745647 () Bool)

(declare-fun e!2316120 () Bool)

(assert (=> b!3745647 (= e!2316119 e!2316120)))

(declare-fun res!1518306 () Bool)

(assert (=> b!3745647 (=> (not res!1518306) (not e!2316120))))

(declare-fun contains!8091 (List!39917 String!45103) Bool)

(assert (=> b!3745647 (= res!1518306 (not (contains!8091 Nil!39793 (tag!6925 (h!45209 rules!4213)))))))

(declare-fun b!3745648 () Bool)

(assert (=> b!3745648 (= e!2316120 (noDuplicateTag!2353 thiss!27193 (t!302596 rules!4213) (Cons!39793 (tag!6925 (h!45209 rules!4213)) Nil!39793)))))

(assert (= (and d!1093271 (not res!1518305)) b!3745647))

(assert (= (and b!3745647 res!1518306) b!3745648))

(declare-fun m!4238537 () Bool)

(assert (=> b!3745647 m!4238537))

(declare-fun m!4238539 () Bool)

(assert (=> b!3745648 m!4238539))

(assert (=> b!3745465 d!1093271))

(declare-fun call!275030 () List!39912)

(declare-fun c!648728 () Bool)

(declare-fun bm!275024 () Bool)

(assert (=> bm!275024 (= call!275030 (usedCharacters!1233 (ite c!648728 (regOne!22453 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) (regOne!22452 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))))))))

(declare-fun bm!275025 () Bool)

(declare-fun call!275031 () List!39912)

(declare-fun call!275032 () List!39912)

(assert (=> bm!275025 (= call!275031 call!275032)))

(declare-fun c!648727 () Bool)

(declare-fun bm!275026 () Bool)

(assert (=> bm!275026 (= call!275032 (usedCharacters!1233 (ite c!648727 (reg!11299 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) (ite c!648728 (regTwo!22453 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) (regTwo!22452 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170))))))))))

(declare-fun b!3745649 () Bool)

(declare-fun e!2316121 () List!39912)

(assert (=> b!3745649 (= e!2316121 call!275032)))

(declare-fun bm!275027 () Bool)

(declare-fun call!275029 () List!39912)

(assert (=> bm!275027 (= call!275029 (++!9882 call!275030 call!275031))))

(declare-fun b!3745651 () Bool)

(declare-fun e!2316124 () List!39912)

(assert (=> b!3745651 (= e!2316121 e!2316124)))

(assert (=> b!3745651 (= c!648728 (is-Union!10970 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))))))

(declare-fun b!3745652 () Bool)

(declare-fun e!2316122 () List!39912)

(declare-fun e!2316123 () List!39912)

(assert (=> b!3745652 (= e!2316122 e!2316123)))

(declare-fun c!648726 () Bool)

(assert (=> b!3745652 (= c!648726 (is-ElementMatch!10970 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))))))

(declare-fun b!3745653 () Bool)

(assert (=> b!3745653 (= e!2316124 call!275029)))

(declare-fun b!3745654 () Bool)

(assert (=> b!3745654 (= e!2316123 (Cons!39788 (c!648693 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) Nil!39788))))

(declare-fun b!3745655 () Bool)

(assert (=> b!3745655 (= e!2316122 Nil!39788)))

(declare-fun b!3745656 () Bool)

(assert (=> b!3745656 (= c!648727 (is-Star!10970 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))))))

(assert (=> b!3745656 (= e!2316123 e!2316121)))

(declare-fun d!1093273 () Bool)

(declare-fun c!648729 () Bool)

(assert (=> d!1093273 (= c!648729 (or (is-EmptyExpr!10970 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) (is-EmptyLang!10970 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170))))))))

(assert (=> d!1093273 (= (usedCharacters!1233 (ite c!648706 (regOne!22453 (regex!6065 rNSep!170)) (regOne!22452 (regex!6065 rNSep!170)))) e!2316122)))

(declare-fun b!3745650 () Bool)

(assert (=> b!3745650 (= e!2316124 call!275029)))

(assert (= (and d!1093273 c!648729) b!3745655))

(assert (= (and d!1093273 (not c!648729)) b!3745652))

(assert (= (and b!3745652 c!648726) b!3745654))

(assert (= (and b!3745652 (not c!648726)) b!3745656))

(assert (= (and b!3745656 c!648727) b!3745649))

(assert (= (and b!3745656 (not c!648727)) b!3745651))

(assert (= (and b!3745651 c!648728) b!3745650))

(assert (= (and b!3745651 (not c!648728)) b!3745653))

(assert (= (or b!3745650 b!3745653) bm!275024))

(assert (= (or b!3745650 b!3745653) bm!275025))

(assert (= (or b!3745650 b!3745653) bm!275027))

(assert (= (or b!3745649 bm!275025) bm!275026))

(declare-fun m!4238541 () Bool)

(assert (=> bm!275024 m!4238541))

(declare-fun m!4238543 () Bool)

(assert (=> bm!275026 m!4238543))

(declare-fun m!4238545 () Bool)

(assert (=> bm!275027 m!4238545))

(assert (=> bm!275002 d!1093273))

(declare-fun bs!575276 () Bool)

(declare-fun d!1093275 () Bool)

(assert (= bs!575276 (and d!1093275 b!3745385)))

(declare-fun lambda!125142 () Int)

(assert (=> bs!575276 (= (= (regex!6065 rNSep!170) (regex!6065 rSep!170)) (= lambda!125142 lambda!125134))))

(declare-fun b!3745661 () Bool)

(declare-fun e!2316129 () Bool)

(assert (=> b!3745661 (= e!2316129 true)))

(declare-fun b!3745660 () Bool)

(declare-fun e!2316128 () Bool)

(assert (=> b!3745660 (= e!2316128 e!2316129)))

(assert (=> d!1093275 e!2316128))

(assert (= b!3745660 b!3745661))

(assert (= d!1093275 b!3745660))

(assert (=> b!3745661 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rNSep!170))) (dynLambda!17208 order!21733 lambda!125142))))

(assert (=> b!3745661 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 rNSep!170))) (dynLambda!17208 order!21733 lambda!125142))))

(declare-fun bs!575277 () Bool)

(declare-fun b!3745659 () Bool)

(assert (= bs!575277 (and b!3745659 b!3745385)))

(declare-fun lambda!125143 () Int)

(assert (=> bs!575277 (= (= (regex!6065 (h!45209 rules!4213)) (regex!6065 rSep!170)) (= lambda!125143 lambda!125134))))

(declare-fun bs!575278 () Bool)

(assert (= bs!575278 (and b!3745659 d!1093275)))

(assert (=> bs!575278 (= (= (regex!6065 (h!45209 rules!4213)) (regex!6065 rNSep!170)) (= lambda!125143 lambda!125142))))

(declare-fun b!3745663 () Bool)

(declare-fun e!2316131 () Bool)

(assert (=> b!3745663 (= e!2316131 true)))

(declare-fun b!3745662 () Bool)

(declare-fun e!2316130 () Bool)

(assert (=> b!3745662 (= e!2316130 e!2316131)))

(assert (=> b!3745659 e!2316130))

(assert (= b!3745662 b!3745663))

(assert (= b!3745659 b!3745662))

(assert (=> b!3745663 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 (h!45209 rules!4213)))) (dynLambda!17208 order!21733 lambda!125143))))

(assert (=> b!3745663 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 (h!45209 rules!4213)))) (dynLambda!17208 order!21733 lambda!125143))))

(declare-fun res!1518309 () Bool)

(declare-fun e!2316127 () Bool)

(assert (=> d!1093275 (=> (not res!1518309) (not e!2316127))))

(assert (=> d!1093275 (= res!1518309 (forall!8187 (usedCharacters!1233 (regex!6065 (h!45209 rules!4213))) lambda!125142))))

(assert (=> d!1093275 (= (rulesUseDisjointChars!375 rNSep!170 (h!45209 rules!4213)) e!2316127)))

(assert (=> b!3745659 (= e!2316127 (forall!8187 (usedCharacters!1233 (regex!6065 rNSep!170)) lambda!125143))))

(assert (= (and d!1093275 res!1518309) b!3745659))

(declare-fun m!4238547 () Bool)

(assert (=> d!1093275 m!4238547))

(assert (=> d!1093275 m!4238547))

(declare-fun m!4238549 () Bool)

(assert (=> d!1093275 m!4238549))

(assert (=> b!3745659 m!4238391))

(assert (=> b!3745659 m!4238391))

(declare-fun m!4238551 () Bool)

(assert (=> b!3745659 m!4238551))

(assert (=> b!3745510 d!1093275))

(declare-fun bm!275028 () Bool)

(declare-fun call!275033 () Bool)

(assert (=> bm!275028 (= call!275033 (ruleDisjointCharsFromAllFromOtherType!938 rNSep!170 (t!302596 (t!302596 rules!4213))))))

(declare-fun b!3745664 () Bool)

(declare-fun e!2316133 () Bool)

(declare-fun e!2316134 () Bool)

(assert (=> b!3745664 (= e!2316133 e!2316134)))

(declare-fun res!1518310 () Bool)

(assert (=> b!3745664 (= res!1518310 (rulesUseDisjointChars!375 rNSep!170 (h!45209 (t!302596 rules!4213))))))

(assert (=> b!3745664 (=> (not res!1518310) (not e!2316134))))

(declare-fun d!1093277 () Bool)

(declare-fun c!648734 () Bool)

(assert (=> d!1093277 (= c!648734 (and (is-Cons!39789 (t!302596 rules!4213)) (not (= (isSeparator!6065 (h!45209 (t!302596 rules!4213))) (isSeparator!6065 rNSep!170)))))))

(assert (=> d!1093277 (= (ruleDisjointCharsFromAllFromOtherType!938 rNSep!170 (t!302596 rules!4213)) e!2316133)))

(declare-fun b!3745665 () Bool)

(declare-fun e!2316132 () Bool)

(assert (=> b!3745665 (= e!2316133 e!2316132)))

(declare-fun res!1518311 () Bool)

(assert (=> b!3745665 (= res!1518311 (not (is-Cons!39789 (t!302596 rules!4213))))))

(assert (=> b!3745665 (=> res!1518311 e!2316132)))

(declare-fun b!3745666 () Bool)

(assert (=> b!3745666 (= e!2316132 call!275033)))

(declare-fun b!3745667 () Bool)

(assert (=> b!3745667 (= e!2316134 call!275033)))

(assert (= (and d!1093277 c!648734) b!3745664))

(assert (= (and d!1093277 (not c!648734)) b!3745665))

(assert (= (and b!3745664 res!1518310) b!3745667))

(assert (= (and b!3745665 (not res!1518311)) b!3745666))

(assert (= (or b!3745667 b!3745666) bm!275028))

(declare-fun m!4238553 () Bool)

(assert (=> bm!275028 m!4238553))

(declare-fun m!4238555 () Bool)

(assert (=> b!3745664 m!4238555))

(assert (=> bm!275008 d!1093277))

(declare-fun d!1093279 () Bool)

(assert (=> d!1093279 true))

(declare-fun order!21743 () Int)

(declare-fun lambda!125146 () Int)

(declare-fun dynLambda!17215 (Int Int) Int)

(assert (=> d!1093279 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rSep!170))) (dynLambda!17215 order!21743 lambda!125146))))

(declare-fun Forall2!993 (Int) Bool)

(assert (=> d!1093279 (= (equivClasses!2495 (toChars!8268 (transformation!6065 rSep!170)) (toValue!8409 (transformation!6065 rSep!170))) (Forall2!993 lambda!125146))))

(declare-fun bs!575279 () Bool)

(assert (= bs!575279 d!1093279))

(declare-fun m!4238557 () Bool)

(assert (=> bs!575279 m!4238557))

(assert (=> b!3745462 d!1093279))

(declare-fun d!1093281 () Bool)

(declare-fun c!648737 () Bool)

(assert (=> d!1093281 (= c!648737 (is-Nil!39789 rules!4213))))

(declare-fun e!2316139 () (Set Rule!11930))

(assert (=> d!1093281 (= (content!5827 rules!4213) e!2316139)))

(declare-fun b!3745676 () Bool)

(assert (=> b!3745676 (= e!2316139 (as set.empty (Set Rule!11930)))))

(declare-fun b!3745677 () Bool)

(assert (=> b!3745677 (= e!2316139 (set.union (set.insert (h!45209 rules!4213) (as set.empty (Set Rule!11930))) (content!5827 (t!302596 rules!4213))))))

(assert (= (and d!1093281 c!648737) b!3745676))

(assert (= (and d!1093281 (not c!648737)) b!3745677))

(declare-fun m!4238559 () Bool)

(assert (=> b!3745677 m!4238559))

(declare-fun m!4238561 () Bool)

(assert (=> b!3745677 m!4238561))

(assert (=> d!1093223 d!1093281))

(declare-fun d!1093283 () Bool)

(declare-fun res!1518314 () Bool)

(declare-fun e!2316140 () Bool)

(assert (=> d!1093283 (=> res!1518314 e!2316140)))

(assert (=> d!1093283 (= res!1518314 (is-Nil!39788 (t!302595 lt!1299427)))))

(assert (=> d!1093283 (= (forall!8187 (t!302595 lt!1299427) lambda!125134) e!2316140)))

(declare-fun b!3745678 () Bool)

(declare-fun e!2316141 () Bool)

(assert (=> b!3745678 (= e!2316140 e!2316141)))

(declare-fun res!1518315 () Bool)

(assert (=> b!3745678 (=> (not res!1518315) (not e!2316141))))

(assert (=> b!3745678 (= res!1518315 (dynLambda!17213 lambda!125134 (h!45208 (t!302595 lt!1299427))))))

(declare-fun b!3745679 () Bool)

(assert (=> b!3745679 (= e!2316141 (forall!8187 (t!302595 (t!302595 lt!1299427)) lambda!125134))))

(assert (= (and d!1093283 (not res!1518314)) b!3745678))

(assert (= (and b!3745678 res!1518315) b!3745679))

(declare-fun b_lambda!109851 () Bool)

(assert (=> (not b_lambda!109851) (not b!3745678)))

(declare-fun m!4238563 () Bool)

(assert (=> b!3745678 m!4238563))

(declare-fun m!4238565 () Bool)

(assert (=> b!3745679 m!4238565))

(assert (=> b!3745471 d!1093283))

(declare-fun d!1093285 () Bool)

(declare-fun c!648740 () Bool)

(assert (=> d!1093285 (= c!648740 (is-Nil!39788 lt!1299427))))

(declare-fun e!2316144 () (Set C!22126))

(assert (=> d!1093285 (= (content!5828 lt!1299427) e!2316144)))

(declare-fun b!3745684 () Bool)

(assert (=> b!3745684 (= e!2316144 (as set.empty (Set C!22126)))))

(declare-fun b!3745685 () Bool)

(assert (=> b!3745685 (= e!2316144 (set.union (set.insert (h!45208 lt!1299427) (as set.empty (Set C!22126))) (content!5828 (t!302595 lt!1299427))))))

(assert (= (and d!1093285 c!648740) b!3745684))

(assert (= (and d!1093285 (not c!648740)) b!3745685))

(declare-fun m!4238567 () Bool)

(assert (=> b!3745685 m!4238567))

(declare-fun m!4238569 () Bool)

(assert (=> b!3745685 m!4238569))

(assert (=> d!1093233 d!1093285))

(declare-fun d!1093287 () Bool)

(assert (=> d!1093287 true))

(declare-fun order!21745 () Int)

(declare-fun lambda!125149 () Int)

(declare-fun dynLambda!17216 (Int Int) Int)

(assert (=> d!1093287 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 (h!45209 rules!4213)))) (dynLambda!17216 order!21745 lambda!125149))))

(assert (=> d!1093287 true))

(assert (=> d!1093287 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 (h!45209 rules!4213)))) (dynLambda!17216 order!21745 lambda!125149))))

(declare-fun Forall!1395 (Int) Bool)

(assert (=> d!1093287 (= (semiInverseModEq!2596 (toChars!8268 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 (h!45209 rules!4213)))) (Forall!1395 lambda!125149))))

(declare-fun bs!575280 () Bool)

(assert (= bs!575280 d!1093287))

(declare-fun m!4238571 () Bool)

(assert (=> bs!575280 m!4238571))

(assert (=> d!1093221 d!1093287))

(declare-fun bs!575281 () Bool)

(declare-fun d!1093289 () Bool)

(assert (= bs!575281 (and d!1093289 d!1093287)))

(declare-fun lambda!125150 () Int)

(assert (=> bs!575281 (= (and (= (toChars!8268 (transformation!6065 rSep!170)) (toChars!8268 (transformation!6065 (h!45209 rules!4213)))) (= (toValue!8409 (transformation!6065 rSep!170)) (toValue!8409 (transformation!6065 (h!45209 rules!4213))))) (= lambda!125150 lambda!125149))))

(assert (=> d!1093289 true))

(assert (=> d!1093289 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 rSep!170))) (dynLambda!17216 order!21745 lambda!125150))))

(assert (=> d!1093289 true))

(assert (=> d!1093289 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rSep!170))) (dynLambda!17216 order!21745 lambda!125150))))

(assert (=> d!1093289 (= (semiInverseModEq!2596 (toChars!8268 (transformation!6065 rSep!170)) (toValue!8409 (transformation!6065 rSep!170))) (Forall!1395 lambda!125150))))

(declare-fun bs!575282 () Bool)

(assert (= bs!575282 d!1093289))

(declare-fun m!4238573 () Bool)

(assert (=> bs!575282 m!4238573))

(assert (=> d!1093227 d!1093289))

(declare-fun d!1093291 () Bool)

(declare-fun lt!1299443 () Bool)

(assert (=> d!1093291 (= lt!1299443 (set.member c!6920 (content!5828 (t!302595 lt!1299427))))))

(declare-fun e!2316145 () Bool)

(assert (=> d!1093291 (= lt!1299443 e!2316145)))

(declare-fun res!1518317 () Bool)

(assert (=> d!1093291 (=> (not res!1518317) (not e!2316145))))

(assert (=> d!1093291 (= res!1518317 (is-Cons!39788 (t!302595 lt!1299427)))))

(assert (=> d!1093291 (= (contains!8088 (t!302595 lt!1299427) c!6920) lt!1299443)))

(declare-fun b!3745690 () Bool)

(declare-fun e!2316146 () Bool)

(assert (=> b!3745690 (= e!2316145 e!2316146)))

(declare-fun res!1518316 () Bool)

(assert (=> b!3745690 (=> res!1518316 e!2316146)))

(assert (=> b!3745690 (= res!1518316 (= (h!45208 (t!302595 lt!1299427)) c!6920))))

(declare-fun b!3745691 () Bool)

(assert (=> b!3745691 (= e!2316146 (contains!8088 (t!302595 (t!302595 lt!1299427)) c!6920))))

(assert (= (and d!1093291 res!1518317) b!3745690))

(assert (= (and b!3745690 (not res!1518316)) b!3745691))

(assert (=> d!1093291 m!4238569))

(declare-fun m!4238575 () Bool)

(assert (=> d!1093291 m!4238575))

(declare-fun m!4238577 () Bool)

(assert (=> b!3745691 m!4238577))

(assert (=> b!3745477 d!1093291))

(declare-fun bs!575283 () Bool)

(declare-fun d!1093293 () Bool)

(assert (= bs!575283 (and d!1093293 d!1093279)))

(declare-fun lambda!125151 () Int)

(assert (=> bs!575283 (= (= (toValue!8409 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rSep!170))) (= lambda!125151 lambda!125146))))

(assert (=> d!1093293 true))

(assert (=> d!1093293 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rNSep!170))) (dynLambda!17215 order!21743 lambda!125151))))

(assert (=> d!1093293 (= (equivClasses!2495 (toChars!8268 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rNSep!170))) (Forall2!993 lambda!125151))))

(declare-fun bs!575284 () Bool)

(assert (= bs!575284 d!1093293))

(declare-fun m!4238579 () Bool)

(assert (=> bs!575284 m!4238579))

(assert (=> b!3745514 d!1093293))

(declare-fun d!1093295 () Bool)

(declare-fun lt!1299444 () Bool)

(assert (=> d!1093295 (= lt!1299444 (set.member rSep!170 (content!5827 (t!302596 rules!4213))))))

(declare-fun e!2316147 () Bool)

(assert (=> d!1093295 (= lt!1299444 e!2316147)))

(declare-fun res!1518318 () Bool)

(assert (=> d!1093295 (=> (not res!1518318) (not e!2316147))))

(assert (=> d!1093295 (= res!1518318 (is-Cons!39789 (t!302596 rules!4213)))))

(assert (=> d!1093295 (= (contains!8087 (t!302596 rules!4213) rSep!170) lt!1299444)))

(declare-fun b!3745692 () Bool)

(declare-fun e!2316148 () Bool)

(assert (=> b!3745692 (= e!2316147 e!2316148)))

(declare-fun res!1518319 () Bool)

(assert (=> b!3745692 (=> res!1518319 e!2316148)))

(assert (=> b!3745692 (= res!1518319 (= (h!45209 (t!302596 rules!4213)) rSep!170))))

(declare-fun b!3745693 () Bool)

(assert (=> b!3745693 (= e!2316148 (contains!8087 (t!302596 (t!302596 rules!4213)) rSep!170))))

(assert (= (and d!1093295 res!1518318) b!3745692))

(assert (= (and b!3745692 (not res!1518319)) b!3745693))

(assert (=> d!1093295 m!4238561))

(declare-fun m!4238581 () Bool)

(assert (=> d!1093295 m!4238581))

(declare-fun m!4238583 () Bool)

(assert (=> b!3745693 m!4238583))

(assert (=> b!3745461 d!1093295))

(declare-fun d!1093297 () Bool)

(assert (=> d!1093297 true))

(declare-fun lt!1299447 () Bool)

(declare-fun rulesValidInductive!2160 (LexerInterface!5654 List!39913) Bool)

(assert (=> d!1093297 (= lt!1299447 (rulesValidInductive!2160 thiss!27193 rules!4213))))

(declare-fun lambda!125154 () Int)

(declare-fun forall!8189 (List!39913 Int) Bool)

(assert (=> d!1093297 (= lt!1299447 (forall!8189 rules!4213 lambda!125154))))

(assert (=> d!1093297 (= (rulesValid!2352 thiss!27193 rules!4213) lt!1299447)))

(declare-fun bs!575285 () Bool)

(assert (= bs!575285 d!1093297))

(declare-fun m!4238585 () Bool)

(assert (=> bs!575285 m!4238585))

(declare-fun m!4238587 () Bool)

(assert (=> bs!575285 m!4238587))

(assert (=> d!1093229 d!1093297))

(declare-fun b!3745705 () Bool)

(declare-fun e!2316153 () List!39912)

(assert (=> b!3745705 (= e!2316153 (Cons!39788 (h!45208 call!275008) (++!9882 (t!302595 call!275008) call!275009)))))

(declare-fun d!1093299 () Bool)

(declare-fun e!2316154 () Bool)

(assert (=> d!1093299 e!2316154))

(declare-fun res!1518324 () Bool)

(assert (=> d!1093299 (=> (not res!1518324) (not e!2316154))))

(declare-fun lt!1299450 () List!39912)

(assert (=> d!1093299 (= res!1518324 (= (content!5828 lt!1299450) (set.union (content!5828 call!275008) (content!5828 call!275009))))))

(assert (=> d!1093299 (= lt!1299450 e!2316153)))

(declare-fun c!648743 () Bool)

(assert (=> d!1093299 (= c!648743 (is-Nil!39788 call!275008))))

(assert (=> d!1093299 (= (++!9882 call!275008 call!275009) lt!1299450)))

(declare-fun b!3745706 () Bool)

(declare-fun res!1518325 () Bool)

(assert (=> b!3745706 (=> (not res!1518325) (not e!2316154))))

(declare-fun size!30052 (List!39912) Int)

(assert (=> b!3745706 (= res!1518325 (= (size!30052 lt!1299450) (+ (size!30052 call!275008) (size!30052 call!275009))))))

(declare-fun b!3745707 () Bool)

(assert (=> b!3745707 (= e!2316154 (or (not (= call!275009 Nil!39788)) (= lt!1299450 call!275008)))))

(declare-fun b!3745704 () Bool)

(assert (=> b!3745704 (= e!2316153 call!275009)))

(assert (= (and d!1093299 c!648743) b!3745704))

(assert (= (and d!1093299 (not c!648743)) b!3745705))

(assert (= (and d!1093299 res!1518324) b!3745706))

(assert (= (and b!3745706 res!1518325) b!3745707))

(declare-fun m!4238589 () Bool)

(assert (=> b!3745705 m!4238589))

(declare-fun m!4238591 () Bool)

(assert (=> d!1093299 m!4238591))

(declare-fun m!4238593 () Bool)

(assert (=> d!1093299 m!4238593))

(declare-fun m!4238595 () Bool)

(assert (=> d!1093299 m!4238595))

(declare-fun m!4238597 () Bool)

(assert (=> b!3745706 m!4238597))

(declare-fun m!4238599 () Bool)

(assert (=> b!3745706 m!4238599))

(declare-fun m!4238601 () Bool)

(assert (=> b!3745706 m!4238601))

(assert (=> bm!275005 d!1093299))

(declare-fun d!1093301 () Bool)

(assert (=> d!1093301 (= (inv!53320 (tag!6925 (h!45209 (t!302596 rules!4213)))) (= (mod (str.len (value!193446 (tag!6925 (h!45209 (t!302596 rules!4213))))) 2) 0))))

(assert (=> b!3745542 d!1093301))

(declare-fun d!1093303 () Bool)

(declare-fun res!1518326 () Bool)

(declare-fun e!2316155 () Bool)

(assert (=> d!1093303 (=> (not res!1518326) (not e!2316155))))

(assert (=> d!1093303 (= res!1518326 (semiInverseModEq!2596 (toChars!8268 (transformation!6065 (h!45209 (t!302596 rules!4213)))) (toValue!8409 (transformation!6065 (h!45209 (t!302596 rules!4213))))))))

(assert (=> d!1093303 (= (inv!53323 (transformation!6065 (h!45209 (t!302596 rules!4213)))) e!2316155)))

(declare-fun b!3745708 () Bool)

(assert (=> b!3745708 (= e!2316155 (equivClasses!2495 (toChars!8268 (transformation!6065 (h!45209 (t!302596 rules!4213)))) (toValue!8409 (transformation!6065 (h!45209 (t!302596 rules!4213))))))))

(assert (= (and d!1093303 res!1518326) b!3745708))

(declare-fun m!4238603 () Bool)

(assert (=> d!1093303 m!4238603))

(declare-fun m!4238605 () Bool)

(assert (=> b!3745708 m!4238605))

(assert (=> b!3745542 d!1093303))

(declare-fun d!1093305 () Bool)

(declare-fun lt!1299451 () Bool)

(assert (=> d!1093305 (= lt!1299451 (set.member (h!45208 lt!1299427) (content!5828 (usedCharacters!1233 (regex!6065 rSep!170)))))))

(declare-fun e!2316156 () Bool)

(assert (=> d!1093305 (= lt!1299451 e!2316156)))

(declare-fun res!1518328 () Bool)

(assert (=> d!1093305 (=> (not res!1518328) (not e!2316156))))

(assert (=> d!1093305 (= res!1518328 (is-Cons!39788 (usedCharacters!1233 (regex!6065 rSep!170))))))

(assert (=> d!1093305 (= (contains!8088 (usedCharacters!1233 (regex!6065 rSep!170)) (h!45208 lt!1299427)) lt!1299451)))

(declare-fun b!3745709 () Bool)

(declare-fun e!2316157 () Bool)

(assert (=> b!3745709 (= e!2316156 e!2316157)))

(declare-fun res!1518327 () Bool)

(assert (=> b!3745709 (=> res!1518327 e!2316157)))

(assert (=> b!3745709 (= res!1518327 (= (h!45208 (usedCharacters!1233 (regex!6065 rSep!170))) (h!45208 lt!1299427)))))

(declare-fun b!3745710 () Bool)

(assert (=> b!3745710 (= e!2316157 (contains!8088 (t!302595 (usedCharacters!1233 (regex!6065 rSep!170))) (h!45208 lt!1299427)))))

(assert (= (and d!1093305 res!1518328) b!3745709))

(assert (= (and b!3745709 (not res!1518327)) b!3745710))

(assert (=> d!1093305 m!4238483))

(declare-fun m!4238607 () Bool)

(assert (=> d!1093305 m!4238607))

(declare-fun m!4238609 () Bool)

(assert (=> d!1093305 m!4238609))

(declare-fun m!4238611 () Bool)

(assert (=> b!3745710 m!4238611))

(assert (=> bs!575274 d!1093305))

(declare-fun bm!275029 () Bool)

(declare-fun call!275035 () List!39912)

(declare-fun c!648746 () Bool)

(assert (=> bm!275029 (= call!275035 (usedCharacters!1233 (ite c!648746 (regOne!22453 (regex!6065 rSep!170)) (regOne!22452 (regex!6065 rSep!170)))))))

(declare-fun bm!275030 () Bool)

(declare-fun call!275036 () List!39912)

(declare-fun call!275037 () List!39912)

(assert (=> bm!275030 (= call!275036 call!275037)))

(declare-fun c!648745 () Bool)

(declare-fun bm!275031 () Bool)

(assert (=> bm!275031 (= call!275037 (usedCharacters!1233 (ite c!648745 (reg!11299 (regex!6065 rSep!170)) (ite c!648746 (regTwo!22453 (regex!6065 rSep!170)) (regTwo!22452 (regex!6065 rSep!170))))))))

(declare-fun b!3745711 () Bool)

(declare-fun e!2316158 () List!39912)

(assert (=> b!3745711 (= e!2316158 call!275037)))

(declare-fun bm!275032 () Bool)

(declare-fun call!275034 () List!39912)

(assert (=> bm!275032 (= call!275034 (++!9882 call!275035 call!275036))))

(declare-fun b!3745713 () Bool)

(declare-fun e!2316161 () List!39912)

(assert (=> b!3745713 (= e!2316158 e!2316161)))

(assert (=> b!3745713 (= c!648746 (is-Union!10970 (regex!6065 rSep!170)))))

(declare-fun b!3745714 () Bool)

(declare-fun e!2316159 () List!39912)

(declare-fun e!2316160 () List!39912)

(assert (=> b!3745714 (= e!2316159 e!2316160)))

(declare-fun c!648744 () Bool)

(assert (=> b!3745714 (= c!648744 (is-ElementMatch!10970 (regex!6065 rSep!170)))))

(declare-fun b!3745715 () Bool)

(assert (=> b!3745715 (= e!2316161 call!275034)))

(declare-fun b!3745716 () Bool)

(assert (=> b!3745716 (= e!2316160 (Cons!39788 (c!648693 (regex!6065 rSep!170)) Nil!39788))))

(declare-fun b!3745717 () Bool)

(assert (=> b!3745717 (= e!2316159 Nil!39788)))

(declare-fun b!3745718 () Bool)

(assert (=> b!3745718 (= c!648745 (is-Star!10970 (regex!6065 rSep!170)))))

(assert (=> b!3745718 (= e!2316160 e!2316158)))

(declare-fun d!1093307 () Bool)

(declare-fun c!648747 () Bool)

(assert (=> d!1093307 (= c!648747 (or (is-EmptyExpr!10970 (regex!6065 rSep!170)) (is-EmptyLang!10970 (regex!6065 rSep!170))))))

(assert (=> d!1093307 (= (usedCharacters!1233 (regex!6065 rSep!170)) e!2316159)))

(declare-fun b!3745712 () Bool)

(assert (=> b!3745712 (= e!2316161 call!275034)))

(assert (= (and d!1093307 c!648747) b!3745717))

(assert (= (and d!1093307 (not c!648747)) b!3745714))

(assert (= (and b!3745714 c!648744) b!3745716))

(assert (= (and b!3745714 (not c!648744)) b!3745718))

(assert (= (and b!3745718 c!648745) b!3745711))

(assert (= (and b!3745718 (not c!648745)) b!3745713))

(assert (= (and b!3745713 c!648746) b!3745712))

(assert (= (and b!3745713 (not c!648746)) b!3745715))

(assert (= (or b!3745712 b!3745715) bm!275029))

(assert (= (or b!3745712 b!3745715) bm!275030))

(assert (= (or b!3745712 b!3745715) bm!275032))

(assert (= (or b!3745711 bm!275030) bm!275031))

(declare-fun m!4238613 () Bool)

(assert (=> bm!275029 m!4238613))

(declare-fun m!4238615 () Bool)

(assert (=> bm!275031 m!4238615))

(declare-fun m!4238617 () Bool)

(assert (=> bm!275032 m!4238617))

(assert (=> bs!575274 d!1093307))

(declare-fun bs!575286 () Bool)

(declare-fun d!1093309 () Bool)

(assert (= bs!575286 (and d!1093309 d!1093287)))

(declare-fun lambda!125155 () Int)

(assert (=> bs!575286 (= (and (= (toChars!8268 (transformation!6065 rNSep!170)) (toChars!8268 (transformation!6065 (h!45209 rules!4213)))) (= (toValue!8409 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 (h!45209 rules!4213))))) (= lambda!125155 lambda!125149))))

(declare-fun bs!575287 () Bool)

(assert (= bs!575287 (and d!1093309 d!1093289)))

(assert (=> bs!575287 (= (and (= (toChars!8268 (transformation!6065 rNSep!170)) (toChars!8268 (transformation!6065 rSep!170))) (= (toValue!8409 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rSep!170)))) (= lambda!125155 lambda!125150))))

(assert (=> d!1093309 true))

(assert (=> d!1093309 (< (dynLambda!17209 order!21735 (toChars!8268 (transformation!6065 rNSep!170))) (dynLambda!17216 order!21745 lambda!125155))))

(assert (=> d!1093309 true))

(assert (=> d!1093309 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 rNSep!170))) (dynLambda!17216 order!21745 lambda!125155))))

(assert (=> d!1093309 (= (semiInverseModEq!2596 (toChars!8268 (transformation!6065 rNSep!170)) (toValue!8409 (transformation!6065 rNSep!170))) (Forall!1395 lambda!125155))))

(declare-fun bs!575288 () Bool)

(assert (= bs!575288 d!1093309))

(declare-fun m!4238619 () Bool)

(assert (=> bs!575288 m!4238619))

(assert (=> d!1093243 d!1093309))

(declare-fun bs!575289 () Bool)

(declare-fun d!1093311 () Bool)

(assert (= bs!575289 (and d!1093311 d!1093279)))

(declare-fun lambda!125156 () Int)

(assert (=> bs!575289 (= (= (toValue!8409 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 rSep!170))) (= lambda!125156 lambda!125146))))

(declare-fun bs!575290 () Bool)

(assert (= bs!575290 (and d!1093311 d!1093293)))

(assert (=> bs!575290 (= (= (toValue!8409 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 rNSep!170))) (= lambda!125156 lambda!125151))))

(assert (=> d!1093311 true))

(assert (=> d!1093311 (< (dynLambda!17207 order!21731 (toValue!8409 (transformation!6065 (h!45209 rules!4213)))) (dynLambda!17215 order!21743 lambda!125156))))

(assert (=> d!1093311 (= (equivClasses!2495 (toChars!8268 (transformation!6065 (h!45209 rules!4213))) (toValue!8409 (transformation!6065 (h!45209 rules!4213)))) (Forall2!993 lambda!125156))))

(declare-fun bs!575291 () Bool)

(assert (= bs!575291 d!1093311))

(declare-fun m!4238621 () Bool)

(assert (=> bs!575291 m!4238621))

(assert (=> b!3745455 d!1093311))

(declare-fun c!648750 () Bool)

(declare-fun call!275039 () List!39912)

(declare-fun bm!275033 () Bool)

(assert (=> bm!275033 (= call!275039 (usedCharacters!1233 (ite c!648750 (regOne!22453 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) (regOne!22452 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))))))))

(declare-fun bm!275034 () Bool)

(declare-fun call!275040 () List!39912)

(declare-fun call!275041 () List!39912)

(assert (=> bm!275034 (= call!275040 call!275041)))

(declare-fun c!648749 () Bool)

(declare-fun bm!275035 () Bool)

(assert (=> bm!275035 (= call!275041 (usedCharacters!1233 (ite c!648749 (reg!11299 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) (ite c!648750 (regTwo!22453 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) (regTwo!22452 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170)))))))))))

(declare-fun b!3745719 () Bool)

(declare-fun e!2316162 () List!39912)

(assert (=> b!3745719 (= e!2316162 call!275041)))

(declare-fun bm!275036 () Bool)

(declare-fun call!275038 () List!39912)

(assert (=> bm!275036 (= call!275038 (++!9882 call!275039 call!275040))))

(declare-fun b!3745721 () Bool)

(declare-fun e!2316165 () List!39912)

(assert (=> b!3745721 (= e!2316162 e!2316165)))

(assert (=> b!3745721 (= c!648750 (is-Union!10970 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))))))

(declare-fun b!3745722 () Bool)

(declare-fun e!2316163 () List!39912)

(declare-fun e!2316164 () List!39912)

(assert (=> b!3745722 (= e!2316163 e!2316164)))

(declare-fun c!648748 () Bool)

(assert (=> b!3745722 (= c!648748 (is-ElementMatch!10970 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))))))

(declare-fun b!3745723 () Bool)

(assert (=> b!3745723 (= e!2316165 call!275038)))

(declare-fun b!3745724 () Bool)

(assert (=> b!3745724 (= e!2316164 (Cons!39788 (c!648693 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) Nil!39788))))

(declare-fun b!3745725 () Bool)

(assert (=> b!3745725 (= e!2316163 Nil!39788)))

(declare-fun b!3745726 () Bool)

(assert (=> b!3745726 (= c!648749 (is-Star!10970 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))))))

(assert (=> b!3745726 (= e!2316164 e!2316162)))

(declare-fun d!1093313 () Bool)

(declare-fun c!648751 () Bool)

(assert (=> d!1093313 (= c!648751 (or (is-EmptyExpr!10970 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) (is-EmptyLang!10970 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170)))))))))

(assert (=> d!1093313 (= (usedCharacters!1233 (ite c!648705 (reg!11299 (regex!6065 rNSep!170)) (ite c!648706 (regTwo!22453 (regex!6065 rNSep!170)) (regTwo!22452 (regex!6065 rNSep!170))))) e!2316163)))

(declare-fun b!3745720 () Bool)

(assert (=> b!3745720 (= e!2316165 call!275038)))

(assert (= (and d!1093313 c!648751) b!3745725))

(assert (= (and d!1093313 (not c!648751)) b!3745722))

(assert (= (and b!3745722 c!648748) b!3745724))

(assert (= (and b!3745722 (not c!648748)) b!3745726))

(assert (= (and b!3745726 c!648749) b!3745719))

(assert (= (and b!3745726 (not c!648749)) b!3745721))

(assert (= (and b!3745721 c!648750) b!3745720))

(assert (= (and b!3745721 (not c!648750)) b!3745723))

(assert (= (or b!3745720 b!3745723) bm!275033))

(assert (= (or b!3745720 b!3745723) bm!275034))

(assert (= (or b!3745720 b!3745723) bm!275036))

(assert (= (or b!3745719 bm!275034) bm!275035))

(declare-fun m!4238623 () Bool)

(assert (=> bm!275033 m!4238623))

(declare-fun m!4238625 () Bool)

(assert (=> bm!275035 m!4238625))

(declare-fun m!4238627 () Bool)

(assert (=> bm!275036 m!4238627))

(assert (=> bm!275004 d!1093313))

(declare-fun b!3745729 () Bool)

(declare-fun e!2316166 () Bool)

(declare-fun tp!1142400 () Bool)

(assert (=> b!3745729 (= e!2316166 tp!1142400)))

(declare-fun b!3745727 () Bool)

(assert (=> b!3745727 (= e!2316166 tp_is_empty!18955)))

(declare-fun b!3745728 () Bool)

(declare-fun tp!1142402 () Bool)

(declare-fun tp!1142401 () Bool)

(assert (=> b!3745728 (= e!2316166 (and tp!1142402 tp!1142401))))

(assert (=> b!3745547 (= tp!1142357 e!2316166)))

(declare-fun b!3745730 () Bool)

(declare-fun tp!1142399 () Bool)

(declare-fun tp!1142403 () Bool)

(assert (=> b!3745730 (= e!2316166 (and tp!1142399 tp!1142403))))

(assert (= (and b!3745547 (is-ElementMatch!10970 (regOne!22453 (regex!6065 rNSep!170)))) b!3745727))

(assert (= (and b!3745547 (is-Concat!17266 (regOne!22453 (regex!6065 rNSep!170)))) b!3745728))

(assert (= (and b!3745547 (is-Star!10970 (regOne!22453 (regex!6065 rNSep!170)))) b!3745729))

(assert (= (and b!3745547 (is-Union!10970 (regOne!22453 (regex!6065 rNSep!170)))) b!3745730))

(declare-fun b!3745733 () Bool)

(declare-fun e!2316167 () Bool)

(declare-fun tp!1142405 () Bool)

(assert (=> b!3745733 (= e!2316167 tp!1142405)))

(declare-fun b!3745731 () Bool)

(assert (=> b!3745731 (= e!2316167 tp_is_empty!18955)))

(declare-fun b!3745732 () Bool)

(declare-fun tp!1142407 () Bool)

(declare-fun tp!1142406 () Bool)

(assert (=> b!3745732 (= e!2316167 (and tp!1142407 tp!1142406))))

(assert (=> b!3745547 (= tp!1142361 e!2316167)))

(declare-fun b!3745734 () Bool)

(declare-fun tp!1142404 () Bool)

(declare-fun tp!1142408 () Bool)

(assert (=> b!3745734 (= e!2316167 (and tp!1142404 tp!1142408))))

(assert (= (and b!3745547 (is-ElementMatch!10970 (regTwo!22453 (regex!6065 rNSep!170)))) b!3745731))

(assert (= (and b!3745547 (is-Concat!17266 (regTwo!22453 (regex!6065 rNSep!170)))) b!3745732))

(assert (= (and b!3745547 (is-Star!10970 (regTwo!22453 (regex!6065 rNSep!170)))) b!3745733))

(assert (= (and b!3745547 (is-Union!10970 (regTwo!22453 (regex!6065 rNSep!170)))) b!3745734))

(declare-fun b!3745737 () Bool)

(declare-fun e!2316168 () Bool)

(declare-fun tp!1142410 () Bool)

(assert (=> b!3745737 (= e!2316168 tp!1142410)))

(declare-fun b!3745735 () Bool)

(assert (=> b!3745735 (= e!2316168 tp_is_empty!18955)))

(declare-fun b!3745736 () Bool)

(declare-fun tp!1142412 () Bool)

(declare-fun tp!1142411 () Bool)

(assert (=> b!3745736 (= e!2316168 (and tp!1142412 tp!1142411))))

(assert (=> b!3745546 (= tp!1142358 e!2316168)))

(declare-fun b!3745738 () Bool)

(declare-fun tp!1142409 () Bool)

(declare-fun tp!1142413 () Bool)

(assert (=> b!3745738 (= e!2316168 (and tp!1142409 tp!1142413))))

(assert (= (and b!3745546 (is-ElementMatch!10970 (reg!11299 (regex!6065 rNSep!170)))) b!3745735))

(assert (= (and b!3745546 (is-Concat!17266 (reg!11299 (regex!6065 rNSep!170)))) b!3745736))

(assert (= (and b!3745546 (is-Star!10970 (reg!11299 (regex!6065 rNSep!170)))) b!3745737))

(assert (= (and b!3745546 (is-Union!10970 (reg!11299 (regex!6065 rNSep!170)))) b!3745738))

(declare-fun b!3745741 () Bool)

(declare-fun e!2316169 () Bool)

(declare-fun tp!1142415 () Bool)

(assert (=> b!3745741 (= e!2316169 tp!1142415)))

(declare-fun b!3745739 () Bool)

(assert (=> b!3745739 (= e!2316169 tp_is_empty!18955)))

(declare-fun b!3745740 () Bool)

(declare-fun tp!1142417 () Bool)

(declare-fun tp!1142416 () Bool)

(assert (=> b!3745740 (= e!2316169 (and tp!1142417 tp!1142416))))

(assert (=> b!3745545 (= tp!1142360 e!2316169)))

(declare-fun b!3745742 () Bool)

(declare-fun tp!1142414 () Bool)

(declare-fun tp!1142418 () Bool)

(assert (=> b!3745742 (= e!2316169 (and tp!1142414 tp!1142418))))

(assert (= (and b!3745545 (is-ElementMatch!10970 (regOne!22452 (regex!6065 rNSep!170)))) b!3745739))

(assert (= (and b!3745545 (is-Concat!17266 (regOne!22452 (regex!6065 rNSep!170)))) b!3745740))

(assert (= (and b!3745545 (is-Star!10970 (regOne!22452 (regex!6065 rNSep!170)))) b!3745741))

(assert (= (and b!3745545 (is-Union!10970 (regOne!22452 (regex!6065 rNSep!170)))) b!3745742))

(declare-fun b!3745745 () Bool)

(declare-fun e!2316170 () Bool)

(declare-fun tp!1142420 () Bool)

(assert (=> b!3745745 (= e!2316170 tp!1142420)))

(declare-fun b!3745743 () Bool)

(assert (=> b!3745743 (= e!2316170 tp_is_empty!18955)))

(declare-fun b!3745744 () Bool)

(declare-fun tp!1142422 () Bool)

(declare-fun tp!1142421 () Bool)

(assert (=> b!3745744 (= e!2316170 (and tp!1142422 tp!1142421))))

(assert (=> b!3745545 (= tp!1142359 e!2316170)))

(declare-fun b!3745746 () Bool)

(declare-fun tp!1142419 () Bool)

(declare-fun tp!1142423 () Bool)

(assert (=> b!3745746 (= e!2316170 (and tp!1142419 tp!1142423))))

(assert (= (and b!3745545 (is-ElementMatch!10970 (regTwo!22452 (regex!6065 rNSep!170)))) b!3745743))

(assert (= (and b!3745545 (is-Concat!17266 (regTwo!22452 (regex!6065 rNSep!170)))) b!3745744))

(assert (= (and b!3745545 (is-Star!10970 (regTwo!22452 (regex!6065 rNSep!170)))) b!3745745))

(assert (= (and b!3745545 (is-Union!10970 (regTwo!22452 (regex!6065 rNSep!170)))) b!3745746))

(declare-fun b!3745749 () Bool)

(declare-fun e!2316171 () Bool)

(declare-fun tp!1142425 () Bool)

(assert (=> b!3745749 (= e!2316171 tp!1142425)))

(declare-fun b!3745747 () Bool)

(assert (=> b!3745747 (= e!2316171 tp_is_empty!18955)))

(declare-fun b!3745748 () Bool)

(declare-fun tp!1142427 () Bool)

(declare-fun tp!1142426 () Bool)

(assert (=> b!3745748 (= e!2316171 (and tp!1142427 tp!1142426))))

(assert (=> b!3745528 (= tp!1142335 e!2316171)))

(declare-fun b!3745750 () Bool)

(declare-fun tp!1142424 () Bool)

(declare-fun tp!1142428 () Bool)

(assert (=> b!3745750 (= e!2316171 (and tp!1142424 tp!1142428))))

(assert (= (and b!3745528 (is-ElementMatch!10970 (regOne!22453 (regex!6065 (h!45209 rules!4213))))) b!3745747))

(assert (= (and b!3745528 (is-Concat!17266 (regOne!22453 (regex!6065 (h!45209 rules!4213))))) b!3745748))

(assert (= (and b!3745528 (is-Star!10970 (regOne!22453 (regex!6065 (h!45209 rules!4213))))) b!3745749))

(assert (= (and b!3745528 (is-Union!10970 (regOne!22453 (regex!6065 (h!45209 rules!4213))))) b!3745750))

(declare-fun b!3745753 () Bool)

(declare-fun e!2316172 () Bool)

(declare-fun tp!1142430 () Bool)

(assert (=> b!3745753 (= e!2316172 tp!1142430)))

(declare-fun b!3745751 () Bool)

(assert (=> b!3745751 (= e!2316172 tp_is_empty!18955)))

(declare-fun b!3745752 () Bool)

(declare-fun tp!1142432 () Bool)

(declare-fun tp!1142431 () Bool)

(assert (=> b!3745752 (= e!2316172 (and tp!1142432 tp!1142431))))

(assert (=> b!3745528 (= tp!1142339 e!2316172)))

(declare-fun b!3745754 () Bool)

(declare-fun tp!1142429 () Bool)

(declare-fun tp!1142433 () Bool)

(assert (=> b!3745754 (= e!2316172 (and tp!1142429 tp!1142433))))

(assert (= (and b!3745528 (is-ElementMatch!10970 (regTwo!22453 (regex!6065 (h!45209 rules!4213))))) b!3745751))

(assert (= (and b!3745528 (is-Concat!17266 (regTwo!22453 (regex!6065 (h!45209 rules!4213))))) b!3745752))

(assert (= (and b!3745528 (is-Star!10970 (regTwo!22453 (regex!6065 (h!45209 rules!4213))))) b!3745753))

(assert (= (and b!3745528 (is-Union!10970 (regTwo!22453 (regex!6065 (h!45209 rules!4213))))) b!3745754))

(declare-fun b!3745757 () Bool)

(declare-fun e!2316173 () Bool)

(declare-fun tp!1142435 () Bool)

(assert (=> b!3745757 (= e!2316173 tp!1142435)))

(declare-fun b!3745755 () Bool)

(assert (=> b!3745755 (= e!2316173 tp_is_empty!18955)))

(declare-fun b!3745756 () Bool)

(declare-fun tp!1142437 () Bool)

(declare-fun tp!1142436 () Bool)

(assert (=> b!3745756 (= e!2316173 (and tp!1142437 tp!1142436))))

(assert (=> b!3745532 (= tp!1142340 e!2316173)))

(declare-fun b!3745758 () Bool)

(declare-fun tp!1142434 () Bool)

(declare-fun tp!1142438 () Bool)

(assert (=> b!3745758 (= e!2316173 (and tp!1142434 tp!1142438))))

(assert (= (and b!3745532 (is-ElementMatch!10970 (regOne!22453 (regex!6065 rSep!170)))) b!3745755))

(assert (= (and b!3745532 (is-Concat!17266 (regOne!22453 (regex!6065 rSep!170)))) b!3745756))

(assert (= (and b!3745532 (is-Star!10970 (regOne!22453 (regex!6065 rSep!170)))) b!3745757))

(assert (= (and b!3745532 (is-Union!10970 (regOne!22453 (regex!6065 rSep!170)))) b!3745758))

(declare-fun b!3745761 () Bool)

(declare-fun e!2316174 () Bool)

(declare-fun tp!1142440 () Bool)

(assert (=> b!3745761 (= e!2316174 tp!1142440)))

(declare-fun b!3745759 () Bool)

(assert (=> b!3745759 (= e!2316174 tp_is_empty!18955)))

(declare-fun b!3745760 () Bool)

(declare-fun tp!1142442 () Bool)

(declare-fun tp!1142441 () Bool)

(assert (=> b!3745760 (= e!2316174 (and tp!1142442 tp!1142441))))

(assert (=> b!3745532 (= tp!1142344 e!2316174)))

(declare-fun b!3745762 () Bool)

(declare-fun tp!1142439 () Bool)

(declare-fun tp!1142443 () Bool)

(assert (=> b!3745762 (= e!2316174 (and tp!1142439 tp!1142443))))

(assert (= (and b!3745532 (is-ElementMatch!10970 (regTwo!22453 (regex!6065 rSep!170)))) b!3745759))

(assert (= (and b!3745532 (is-Concat!17266 (regTwo!22453 (regex!6065 rSep!170)))) b!3745760))

(assert (= (and b!3745532 (is-Star!10970 (regTwo!22453 (regex!6065 rSep!170)))) b!3745761))

(assert (= (and b!3745532 (is-Union!10970 (regTwo!22453 (regex!6065 rSep!170)))) b!3745762))

(declare-fun b!3745765 () Bool)

(declare-fun e!2316175 () Bool)

(declare-fun tp!1142445 () Bool)

(assert (=> b!3745765 (= e!2316175 tp!1142445)))

(declare-fun b!3745763 () Bool)

(assert (=> b!3745763 (= e!2316175 tp_is_empty!18955)))

(declare-fun b!3745764 () Bool)

(declare-fun tp!1142447 () Bool)

(declare-fun tp!1142446 () Bool)

(assert (=> b!3745764 (= e!2316175 (and tp!1142447 tp!1142446))))

(assert (=> b!3745527 (= tp!1142336 e!2316175)))

(declare-fun b!3745766 () Bool)

(declare-fun tp!1142444 () Bool)

(declare-fun tp!1142448 () Bool)

(assert (=> b!3745766 (= e!2316175 (and tp!1142444 tp!1142448))))

(assert (= (and b!3745527 (is-ElementMatch!10970 (reg!11299 (regex!6065 (h!45209 rules!4213))))) b!3745763))

(assert (= (and b!3745527 (is-Concat!17266 (reg!11299 (regex!6065 (h!45209 rules!4213))))) b!3745764))

(assert (= (and b!3745527 (is-Star!10970 (reg!11299 (regex!6065 (h!45209 rules!4213))))) b!3745765))

(assert (= (and b!3745527 (is-Union!10970 (reg!11299 (regex!6065 (h!45209 rules!4213))))) b!3745766))

(declare-fun b!3745769 () Bool)

(declare-fun e!2316176 () Bool)

(declare-fun tp!1142450 () Bool)

(assert (=> b!3745769 (= e!2316176 tp!1142450)))

(declare-fun b!3745767 () Bool)

(assert (=> b!3745767 (= e!2316176 tp_is_empty!18955)))

(declare-fun b!3745768 () Bool)

(declare-fun tp!1142452 () Bool)

(declare-fun tp!1142451 () Bool)

(assert (=> b!3745768 (= e!2316176 (and tp!1142452 tp!1142451))))

(assert (=> b!3745531 (= tp!1142341 e!2316176)))

(declare-fun b!3745770 () Bool)

(declare-fun tp!1142449 () Bool)

(declare-fun tp!1142453 () Bool)

(assert (=> b!3745770 (= e!2316176 (and tp!1142449 tp!1142453))))

(assert (= (and b!3745531 (is-ElementMatch!10970 (reg!11299 (regex!6065 rSep!170)))) b!3745767))

(assert (= (and b!3745531 (is-Concat!17266 (reg!11299 (regex!6065 rSep!170)))) b!3745768))

(assert (= (and b!3745531 (is-Star!10970 (reg!11299 (regex!6065 rSep!170)))) b!3745769))

(assert (= (and b!3745531 (is-Union!10970 (reg!11299 (regex!6065 rSep!170)))) b!3745770))

(declare-fun b!3745773 () Bool)

(declare-fun e!2316177 () Bool)

(declare-fun tp!1142455 () Bool)

(assert (=> b!3745773 (= e!2316177 tp!1142455)))

(declare-fun b!3745771 () Bool)

(assert (=> b!3745771 (= e!2316177 tp_is_empty!18955)))

(declare-fun b!3745772 () Bool)

(declare-fun tp!1142457 () Bool)

(declare-fun tp!1142456 () Bool)

(assert (=> b!3745772 (= e!2316177 (and tp!1142457 tp!1142456))))

(assert (=> b!3745526 (= tp!1142338 e!2316177)))

(declare-fun b!3745774 () Bool)

(declare-fun tp!1142454 () Bool)

(declare-fun tp!1142458 () Bool)

(assert (=> b!3745774 (= e!2316177 (and tp!1142454 tp!1142458))))

(assert (= (and b!3745526 (is-ElementMatch!10970 (regOne!22452 (regex!6065 (h!45209 rules!4213))))) b!3745771))

(assert (= (and b!3745526 (is-Concat!17266 (regOne!22452 (regex!6065 (h!45209 rules!4213))))) b!3745772))

(assert (= (and b!3745526 (is-Star!10970 (regOne!22452 (regex!6065 (h!45209 rules!4213))))) b!3745773))

(assert (= (and b!3745526 (is-Union!10970 (regOne!22452 (regex!6065 (h!45209 rules!4213))))) b!3745774))

(declare-fun b!3745777 () Bool)

(declare-fun e!2316178 () Bool)

(declare-fun tp!1142460 () Bool)

(assert (=> b!3745777 (= e!2316178 tp!1142460)))

(declare-fun b!3745775 () Bool)

(assert (=> b!3745775 (= e!2316178 tp_is_empty!18955)))

(declare-fun b!3745776 () Bool)

(declare-fun tp!1142462 () Bool)

(declare-fun tp!1142461 () Bool)

(assert (=> b!3745776 (= e!2316178 (and tp!1142462 tp!1142461))))

(assert (=> b!3745526 (= tp!1142337 e!2316178)))

(declare-fun b!3745778 () Bool)

(declare-fun tp!1142459 () Bool)

(declare-fun tp!1142463 () Bool)

(assert (=> b!3745778 (= e!2316178 (and tp!1142459 tp!1142463))))

(assert (= (and b!3745526 (is-ElementMatch!10970 (regTwo!22452 (regex!6065 (h!45209 rules!4213))))) b!3745775))

(assert (= (and b!3745526 (is-Concat!17266 (regTwo!22452 (regex!6065 (h!45209 rules!4213))))) b!3745776))

(assert (= (and b!3745526 (is-Star!10970 (regTwo!22452 (regex!6065 (h!45209 rules!4213))))) b!3745777))

(assert (= (and b!3745526 (is-Union!10970 (regTwo!22452 (regex!6065 (h!45209 rules!4213))))) b!3745778))

(declare-fun b!3745781 () Bool)

(declare-fun e!2316179 () Bool)

(declare-fun tp!1142465 () Bool)

(assert (=> b!3745781 (= e!2316179 tp!1142465)))

(declare-fun b!3745779 () Bool)

(assert (=> b!3745779 (= e!2316179 tp_is_empty!18955)))

(declare-fun b!3745780 () Bool)

(declare-fun tp!1142467 () Bool)

(declare-fun tp!1142466 () Bool)

(assert (=> b!3745780 (= e!2316179 (and tp!1142467 tp!1142466))))

(assert (=> b!3745530 (= tp!1142343 e!2316179)))

(declare-fun b!3745782 () Bool)

(declare-fun tp!1142464 () Bool)

(declare-fun tp!1142468 () Bool)

(assert (=> b!3745782 (= e!2316179 (and tp!1142464 tp!1142468))))

(assert (= (and b!3745530 (is-ElementMatch!10970 (regOne!22452 (regex!6065 rSep!170)))) b!3745779))

(assert (= (and b!3745530 (is-Concat!17266 (regOne!22452 (regex!6065 rSep!170)))) b!3745780))

(assert (= (and b!3745530 (is-Star!10970 (regOne!22452 (regex!6065 rSep!170)))) b!3745781))

(assert (= (and b!3745530 (is-Union!10970 (regOne!22452 (regex!6065 rSep!170)))) b!3745782))

(declare-fun b!3745785 () Bool)

(declare-fun e!2316180 () Bool)

(declare-fun tp!1142470 () Bool)

(assert (=> b!3745785 (= e!2316180 tp!1142470)))

(declare-fun b!3745783 () Bool)

(assert (=> b!3745783 (= e!2316180 tp_is_empty!18955)))

(declare-fun b!3745784 () Bool)

(declare-fun tp!1142472 () Bool)

(declare-fun tp!1142471 () Bool)

(assert (=> b!3745784 (= e!2316180 (and tp!1142472 tp!1142471))))

(assert (=> b!3745530 (= tp!1142342 e!2316180)))

(declare-fun b!3745786 () Bool)

(declare-fun tp!1142469 () Bool)

(declare-fun tp!1142473 () Bool)

(assert (=> b!3745786 (= e!2316180 (and tp!1142469 tp!1142473))))

(assert (= (and b!3745530 (is-ElementMatch!10970 (regTwo!22452 (regex!6065 rSep!170)))) b!3745783))

(assert (= (and b!3745530 (is-Concat!17266 (regTwo!22452 (regex!6065 rSep!170)))) b!3745784))

(assert (= (and b!3745530 (is-Star!10970 (regTwo!22452 (regex!6065 rSep!170)))) b!3745785))

(assert (= (and b!3745530 (is-Union!10970 (regTwo!22452 (regex!6065 rSep!170)))) b!3745786))

(declare-fun b!3745789 () Bool)

(declare-fun e!2316181 () Bool)

(declare-fun tp!1142475 () Bool)

(assert (=> b!3745789 (= e!2316181 tp!1142475)))

(declare-fun b!3745787 () Bool)

(assert (=> b!3745787 (= e!2316181 tp_is_empty!18955)))

(declare-fun b!3745788 () Bool)

(declare-fun tp!1142477 () Bool)

(declare-fun tp!1142476 () Bool)

(assert (=> b!3745788 (= e!2316181 (and tp!1142477 tp!1142476))))

(assert (=> b!3745542 (= tp!1142355 e!2316181)))

(declare-fun b!3745790 () Bool)

(declare-fun tp!1142474 () Bool)

(declare-fun tp!1142478 () Bool)

(assert (=> b!3745790 (= e!2316181 (and tp!1142474 tp!1142478))))

(assert (= (and b!3745542 (is-ElementMatch!10970 (regex!6065 (h!45209 (t!302596 rules!4213))))) b!3745787))

(assert (= (and b!3745542 (is-Concat!17266 (regex!6065 (h!45209 (t!302596 rules!4213))))) b!3745788))

(assert (= (and b!3745542 (is-Star!10970 (regex!6065 (h!45209 (t!302596 rules!4213))))) b!3745789))

(assert (= (and b!3745542 (is-Union!10970 (regex!6065 (h!45209 (t!302596 rules!4213))))) b!3745790))

(declare-fun b!3745793 () Bool)

(declare-fun b_free!99669 () Bool)

(declare-fun b_next!100373 () Bool)

(assert (=> b!3745793 (= b_free!99669 (not b_next!100373))))

(declare-fun tp!1142480 () Bool)

(declare-fun b_and!277903 () Bool)

(assert (=> b!3745793 (= tp!1142480 b_and!277903)))

(declare-fun b_free!99671 () Bool)

(declare-fun b_next!100375 () Bool)

(assert (=> b!3745793 (= b_free!99671 (not b_next!100375))))

(declare-fun tp!1142482 () Bool)

(declare-fun b_and!277905 () Bool)

(assert (=> b!3745793 (= tp!1142482 b_and!277905)))

(declare-fun e!2316183 () Bool)

(assert (=> b!3745793 (= e!2316183 (and tp!1142480 tp!1142482))))

(declare-fun tp!1142481 () Bool)

(declare-fun e!2316184 () Bool)

(declare-fun b!3745792 () Bool)

(assert (=> b!3745792 (= e!2316184 (and tp!1142481 (inv!53320 (tag!6925 (h!45209 (t!302596 (t!302596 rules!4213))))) (inv!53323 (transformation!6065 (h!45209 (t!302596 (t!302596 rules!4213))))) e!2316183))))

(declare-fun b!3745791 () Bool)

(declare-fun e!2316185 () Bool)

(declare-fun tp!1142479 () Bool)

(assert (=> b!3745791 (= e!2316185 (and e!2316184 tp!1142479))))

(assert (=> b!3745541 (= tp!1142353 e!2316185)))

(assert (= b!3745792 b!3745793))

(assert (= b!3745791 b!3745792))

(assert (= (and b!3745541 (is-Cons!39789 (t!302596 (t!302596 rules!4213)))) b!3745791))

(declare-fun m!4238629 () Bool)

(assert (=> b!3745792 m!4238629))

(declare-fun m!4238631 () Bool)

(assert (=> b!3745792 m!4238631))

(declare-fun b_lambda!109853 () Bool)

(assert (= b_lambda!109851 (or b!3745385 b_lambda!109853)))

(declare-fun bs!575292 () Bool)

(declare-fun d!1093315 () Bool)

(assert (= bs!575292 (and d!1093315 b!3745385)))

(assert (=> bs!575292 (= (dynLambda!17213 lambda!125134 (h!45208 (t!302595 lt!1299427))) (not (contains!8088 (usedCharacters!1233 (regex!6065 rSep!170)) (h!45208 (t!302595 lt!1299427)))))))

(assert (=> bs!575292 m!4238483))

(assert (=> bs!575292 m!4238483))

(declare-fun m!4238633 () Bool)

(assert (=> bs!575292 m!4238633))

(assert (=> b!3745678 d!1093315))

(push 1)

(assert (not b!3745761))

(assert (not b_next!100365))

(assert (not b!3745770))

(assert (not b!3745786))

(assert (not b!3745754))

(assert (not b!3745778))

(assert (not b_next!100373))

(assert (not b!3745677))

(assert (not b!3745762))

(assert b_and!277875)

(assert (not b!3745766))

(assert (not b!3745685))

(assert (not b_next!100343))

(assert (not b!3745705))

(assert (not bm!275033))

(assert (not b!3745752))

(assert (not b!3745742))

(assert (not b!3745648))

(assert (not d!1093309))

(assert (not b!3745791))

(assert (not b!3745776))

(assert (not b!3745792))

(assert b_and!277881)

(assert (not b!3745706))

(assert (not b!3745708))

(assert (not b_next!100375))

(assert (not d!1093305))

(assert b_and!277905)

(assert (not d!1093311))

(assert (not b!3745789))

(assert (not b!3745784))

(assert (not b!3745788))

(assert (not b_next!100367))

(assert (not b!3745736))

(assert (not b_next!100349))

(assert (not b!3745659))

(assert (not b_lambda!109853))

(assert (not b!3745782))

(assert (not b!3745729))

(assert (not b!3745765))

(assert b_and!277873)

(assert (not b!3745733))

(assert b_and!277871)

(assert tp_is_empty!18955)

(assert (not d!1093295))

(assert (not b!3745757))

(assert (not b!3745740))

(assert (not b!3745780))

(assert (not d!1093303))

(assert (not b!3745664))

(assert (not bm!275027))

(assert (not b_next!100345))

(assert b_and!277897)

(assert (not b!3745769))

(assert (not bm!275032))

(assert (not d!1093297))

(assert (not bm!275029))

(assert (not d!1093291))

(assert (not b!3745738))

(assert (not b!3745732))

(assert (not b!3745691))

(assert (not bm!275031))

(assert b_and!277879)

(assert (not b!3745753))

(assert (not bs!575292))

(assert (not b!3745758))

(assert (not b!3745728))

(assert (not b!3745744))

(assert (not b!3745734))

(assert (not bm!275036))

(assert (not bm!275026))

(assert (not b_next!100341))

(assert (not d!1093275))

(assert (not b!3745756))

(assert (not b!3745774))

(assert (not d!1093293))

(assert (not b!3745768))

(assert (not b_lambda!109845))

(assert (not b!3745679))

(assert (not b!3745730))

(assert (not b!3745790))

(assert (not d!1093289))

(assert (not b!3745745))

(assert (not b!3745741))

(assert (not b_next!100347))

(assert (not bm!275035))

(assert (not b!3745764))

(assert (not b!3745647))

(assert (not b_next!100351))

(assert (not b!3745760))

(assert b_and!277903)

(assert (not b!3745785))

(assert (not b!3745777))

(assert (not b!3745693))

(assert b_and!277895)

(assert b_and!277877)

(assert (not b!3745750))

(assert (not b!3745710))

(assert (not d!1093279))

(assert (not b!3745749))

(assert (not b!3745772))

(assert (not bm!275024))

(assert (not b!3745746))

(assert (not bm!275028))

(assert (not b!3745748))

(assert (not b!3745773))

(assert (not d!1093299))

(assert (not b!3745781))

(assert (not d!1093287))

(assert (not b!3745737))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277875)

(assert (not b_next!100343))

(assert b_and!277881)

(assert (not b_next!100375))

(assert b_and!277905)

(assert b_and!277873)

(assert b_and!277871)

(assert b_and!277879)

(assert (not b_next!100341))

(assert (not b_next!100373))

(assert (not b_next!100365))

(assert (not b_next!100367))

(assert (not b_next!100349))

(assert (not b_next!100345))

(assert b_and!277897)

(assert (not b_next!100347))

(assert (not b_next!100351))

(assert b_and!277903)

(assert b_and!277877)

(assert b_and!277895)

(check-sat)

(pop 1)

