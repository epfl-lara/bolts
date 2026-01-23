; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349426 () Bool)

(assert start!349426)

(declare-fun b!3705366 () Bool)

(declare-fun b_free!99073 () Bool)

(declare-fun b_next!99777 () Bool)

(assert (=> b!3705366 (= b_free!99073 (not b_next!99777))))

(declare-fun tp!1127027 () Bool)

(declare-fun b_and!277307 () Bool)

(assert (=> b!3705366 (= tp!1127027 b_and!277307)))

(declare-fun b_free!99075 () Bool)

(declare-fun b_next!99779 () Bool)

(assert (=> b!3705366 (= b_free!99075 (not b_next!99779))))

(declare-fun tp!1127026 () Bool)

(declare-fun b_and!277309 () Bool)

(assert (=> b!3705366 (= tp!1127026 b_and!277309)))

(declare-fun b!3705359 () Bool)

(declare-fun res!1507381 () Bool)

(declare-fun e!2295310 () Bool)

(assert (=> b!3705359 (=> (not res!1507381) (not e!2295310))))

(declare-datatypes ((LexerInterface!5617 0))(
  ( (LexerInterfaceExt!5614 (__x!24733 Int)) (Lexer!5615) )
))
(declare-fun thiss!19663 () LexerInterface!5617)

(declare-datatypes ((List!39636 0))(
  ( (Nil!39512) (Cons!39512 (h!44932 (_ BitVec 16)) (t!302319 List!39636)) )
))
(declare-datatypes ((TokenValue!6258 0))(
  ( (FloatLiteralValue!12516 (text!44251 List!39636)) (TokenValueExt!6257 (__x!24734 Int)) (Broken!31290 (value!192183 List!39636)) (Object!6381) (End!6258) (Def!6258) (Underscore!6258) (Match!6258) (Else!6258) (Error!6258) (Case!6258) (If!6258) (Extends!6258) (Abstract!6258) (Class!6258) (Val!6258) (DelimiterValue!12516 (del!6318 List!39636)) (KeywordValue!6264 (value!192184 List!39636)) (CommentValue!12516 (value!192185 List!39636)) (WhitespaceValue!12516 (value!192186 List!39636)) (IndentationValue!6258 (value!192187 List!39636)) (String!44623) (Int32!6258) (Broken!31291 (value!192188 List!39636)) (Boolean!6259) (Unit!57417) (OperatorValue!6261 (op!6318 List!39636)) (IdentifierValue!12516 (value!192189 List!39636)) (IdentifierValue!12517 (value!192190 List!39636)) (WhitespaceValue!12517 (value!192191 List!39636)) (True!12516) (False!12516) (Broken!31292 (value!192192 List!39636)) (Broken!31293 (value!192193 List!39636)) (True!12517) (RightBrace!6258) (RightBracket!6258) (Colon!6258) (Null!6258) (Comma!6258) (LeftBracket!6258) (False!12517) (LeftBrace!6258) (ImaginaryLiteralValue!6258 (text!44252 List!39636)) (StringLiteralValue!18774 (value!192194 List!39636)) (EOFValue!6258 (value!192195 List!39636)) (IdentValue!6258 (value!192196 List!39636)) (DelimiterValue!12517 (value!192197 List!39636)) (DedentValue!6258 (value!192198 List!39636)) (NewLineValue!6258 (value!192199 List!39636)) (IntegerValue!18774 (value!192200 (_ BitVec 32)) (text!44253 List!39636)) (IntegerValue!18775 (value!192201 Int) (text!44254 List!39636)) (Times!6258) (Or!6258) (Equal!6258) (Minus!6258) (Broken!31294 (value!192202 List!39636)) (And!6258) (Div!6258) (LessEqual!6258) (Mod!6258) (Concat!17045) (Not!6258) (Plus!6258) (SpaceValue!6258 (value!192203 List!39636)) (IntegerValue!18776 (value!192204 Int) (text!44255 List!39636)) (StringLiteralValue!18775 (text!44256 List!39636)) (FloatLiteralValue!12517 (text!44257 List!39636)) (BytesLiteralValue!6258 (value!192205 List!39636)) (CommentValue!12517 (value!192206 List!39636)) (StringLiteralValue!18776 (value!192207 List!39636)) (ErrorTokenValue!6258 (msg!6319 List!39636)) )
))
(declare-datatypes ((C!21760 0))(
  ( (C!21761 (val!12928 Int)) )
))
(declare-datatypes ((List!39637 0))(
  ( (Nil!39513) (Cons!39513 (h!44933 C!21760) (t!302320 List!39637)) )
))
(declare-datatypes ((IArray!24255 0))(
  ( (IArray!24256 (innerList!12185 List!39637)) )
))
(declare-datatypes ((Conc!12125 0))(
  ( (Node!12125 (left!30697 Conc!12125) (right!31027 Conc!12125) (csize!24480 Int) (cheight!12336 Int)) (Leaf!18750 (xs!15327 IArray!24255) (csize!24481 Int)) (Empty!12125) )
))
(declare-datatypes ((BalanceConc!23864 0))(
  ( (BalanceConc!23865 (c!640006 Conc!12125)) )
))
(declare-datatypes ((Regex!10787 0))(
  ( (ElementMatch!10787 (c!640007 C!21760)) (Concat!17046 (regOne!22086 Regex!10787) (regTwo!22086 Regex!10787)) (EmptyExpr!10787) (Star!10787 (reg!11116 Regex!10787)) (EmptyLang!10787) (Union!10787 (regOne!22087 Regex!10787) (regTwo!22087 Regex!10787)) )
))
(declare-datatypes ((String!44624 0))(
  ( (String!44625 (value!192208 String)) )
))
(declare-datatypes ((TokenValueInjection!11944 0))(
  ( (TokenValueInjection!11945 (toValue!8372 Int) (toChars!8231 Int)) )
))
(declare-datatypes ((Rule!11856 0))(
  ( (Rule!11857 (regex!6028 Regex!10787) (tag!6886 String!44624) (isSeparator!6028 Bool) (transformation!6028 TokenValueInjection!11944)) )
))
(declare-datatypes ((List!39638 0))(
  ( (Nil!39514) (Cons!39514 (h!44934 Rule!11856) (t!302321 List!39638)) )
))
(declare-fun rules!2525 () List!39638)

(declare-fun rulesInvariant!5014 (LexerInterface!5617 List!39638) Bool)

(assert (=> b!3705359 (= res!1507381 (rulesInvariant!5014 thiss!19663 rules!2525))))

(declare-fun b!3705360 () Bool)

(declare-fun e!2295305 () Bool)

(declare-fun lt!1296302 () Rule!11856)

(declare-fun tag!164 () String!44624)

(assert (=> b!3705360 (= e!2295305 (not (= (tag!6886 lt!1296302) tag!164)))))

(declare-fun b!3705361 () Bool)

(declare-fun e!2295304 () Bool)

(declare-fun e!2295308 () Bool)

(declare-fun tp!1127028 () Bool)

(declare-fun inv!53008 (String!44624) Bool)

(declare-fun inv!53010 (TokenValueInjection!11944) Bool)

(assert (=> b!3705361 (= e!2295304 (and tp!1127028 (inv!53008 (tag!6886 (h!44934 rules!2525))) (inv!53010 (transformation!6028 (h!44934 rules!2525))) e!2295308))))

(declare-fun b!3705362 () Bool)

(declare-fun e!2295306 () Bool)

(assert (=> b!3705362 (= e!2295310 e!2295306)))

(declare-fun res!1507379 () Bool)

(assert (=> b!3705362 (=> (not res!1507379) (not e!2295306))))

(declare-datatypes ((Option!8562 0))(
  ( (None!8561) (Some!8561 (v!38545 Rule!11856)) )
))
(declare-fun lt!1296301 () Option!8562)

(declare-fun isEmpty!23484 (Option!8562) Bool)

(assert (=> b!3705362 (= res!1507379 (not (isEmpty!23484 lt!1296301)))))

(assert (=> b!3705362 (= lt!1296301 (Some!8561 (h!44934 rules!2525)))))

(declare-fun b!3705363 () Bool)

(declare-fun res!1507380 () Bool)

(assert (=> b!3705363 (=> (not res!1507380) (not e!2295310))))

(get-info :version)

(assert (=> b!3705363 (= res!1507380 (and ((_ is Cons!39514) rules!2525) (= (tag!6886 (h!44934 rules!2525)) tag!164)))))

(declare-fun b!3705364 () Bool)

(declare-fun e!2295309 () Bool)

(declare-fun tp!1127025 () Bool)

(assert (=> b!3705364 (= e!2295309 (and e!2295304 tp!1127025))))

(declare-fun b!3705365 () Bool)

(assert (=> b!3705365 (= e!2295306 e!2295305)))

(declare-fun res!1507378 () Bool)

(assert (=> b!3705365 (=> res!1507378 e!2295305)))

(declare-fun contains!7886 (List!39638 Rule!11856) Bool)

(assert (=> b!3705365 (= res!1507378 (not (contains!7886 rules!2525 lt!1296302)))))

(declare-fun get!13156 (Option!8562) Rule!11856)

(assert (=> b!3705365 (= lt!1296302 (get!13156 lt!1296301))))

(assert (=> b!3705366 (= e!2295308 (and tp!1127027 tp!1127026))))

(declare-fun res!1507382 () Bool)

(assert (=> start!349426 (=> (not res!1507382) (not e!2295310))))

(assert (=> start!349426 (= res!1507382 ((_ is Lexer!5615) thiss!19663))))

(assert (=> start!349426 e!2295310))

(assert (=> start!349426 true))

(assert (=> start!349426 e!2295309))

(assert (=> start!349426 (inv!53008 tag!164)))

(assert (= (and start!349426 res!1507382) b!3705359))

(assert (= (and b!3705359 res!1507381) b!3705363))

(assert (= (and b!3705363 res!1507380) b!3705362))

(assert (= (and b!3705362 res!1507379) b!3705365))

(assert (= (and b!3705365 (not res!1507378)) b!3705360))

(assert (= b!3705361 b!3705366))

(assert (= b!3705364 b!3705361))

(assert (= (and start!349426 ((_ is Cons!39514) rules!2525)) b!3705364))

(declare-fun m!4215715 () Bool)

(assert (=> b!3705362 m!4215715))

(declare-fun m!4215717 () Bool)

(assert (=> b!3705359 m!4215717))

(declare-fun m!4215719 () Bool)

(assert (=> start!349426 m!4215719))

(declare-fun m!4215721 () Bool)

(assert (=> b!3705361 m!4215721))

(declare-fun m!4215723 () Bool)

(assert (=> b!3705361 m!4215723))

(declare-fun m!4215725 () Bool)

(assert (=> b!3705365 m!4215725))

(declare-fun m!4215727 () Bool)

(assert (=> b!3705365 m!4215727))

(check-sat (not b!3705359) (not b_next!99777) (not start!349426) b_and!277307 (not b!3705364) (not b!3705365) b_and!277309 (not b!3705361) (not b!3705362) (not b_next!99779))
(check-sat b_and!277309 b_and!277307 (not b_next!99779) (not b_next!99777))
(get-model)

(declare-fun d!1086343 () Bool)

(assert (=> d!1086343 (= (isEmpty!23484 lt!1296301) (not ((_ is Some!8561) lt!1296301)))))

(assert (=> b!3705362 d!1086343))

(declare-fun d!1086347 () Bool)

(assert (=> d!1086347 (= (inv!53008 (tag!6886 (h!44934 rules!2525))) (= (mod (str.len (value!192208 (tag!6886 (h!44934 rules!2525)))) 2) 0))))

(assert (=> b!3705361 d!1086347))

(declare-fun d!1086351 () Bool)

(declare-fun res!1507395 () Bool)

(declare-fun e!2295316 () Bool)

(assert (=> d!1086351 (=> (not res!1507395) (not e!2295316))))

(declare-fun semiInverseModEq!2578 (Int Int) Bool)

(assert (=> d!1086351 (= res!1507395 (semiInverseModEq!2578 (toChars!8231 (transformation!6028 (h!44934 rules!2525))) (toValue!8372 (transformation!6028 (h!44934 rules!2525)))))))

(assert (=> d!1086351 (= (inv!53010 (transformation!6028 (h!44934 rules!2525))) e!2295316)))

(declare-fun b!3705372 () Bool)

(declare-fun equivClasses!2477 (Int Int) Bool)

(assert (=> b!3705372 (= e!2295316 (equivClasses!2477 (toChars!8231 (transformation!6028 (h!44934 rules!2525))) (toValue!8372 (transformation!6028 (h!44934 rules!2525)))))))

(assert (= (and d!1086351 res!1507395) b!3705372))

(declare-fun m!4215733 () Bool)

(assert (=> d!1086351 m!4215733))

(declare-fun m!4215735 () Bool)

(assert (=> b!3705372 m!4215735))

(assert (=> b!3705361 d!1086351))

(declare-fun d!1086355 () Bool)

(declare-fun lt!1296308 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5704 (List!39638) (InoxSet Rule!11856))

(assert (=> d!1086355 (= lt!1296308 (select (content!5704 rules!2525) lt!1296302))))

(declare-fun e!2295327 () Bool)

(assert (=> d!1086355 (= lt!1296308 e!2295327)))

(declare-fun res!1507407 () Bool)

(assert (=> d!1086355 (=> (not res!1507407) (not e!2295327))))

(assert (=> d!1086355 (= res!1507407 ((_ is Cons!39514) rules!2525))))

(assert (=> d!1086355 (= (contains!7886 rules!2525 lt!1296302) lt!1296308)))

(declare-fun b!3705383 () Bool)

(declare-fun e!2295328 () Bool)

(assert (=> b!3705383 (= e!2295327 e!2295328)))

(declare-fun res!1507406 () Bool)

(assert (=> b!3705383 (=> res!1507406 e!2295328)))

(assert (=> b!3705383 (= res!1507406 (= (h!44934 rules!2525) lt!1296302))))

(declare-fun b!3705384 () Bool)

(assert (=> b!3705384 (= e!2295328 (contains!7886 (t!302321 rules!2525) lt!1296302))))

(assert (= (and d!1086355 res!1507407) b!3705383))

(assert (= (and b!3705383 (not res!1507406)) b!3705384))

(declare-fun m!4215743 () Bool)

(assert (=> d!1086355 m!4215743))

(declare-fun m!4215745 () Bool)

(assert (=> d!1086355 m!4215745))

(declare-fun m!4215747 () Bool)

(assert (=> b!3705384 m!4215747))

(assert (=> b!3705365 d!1086355))

(declare-fun d!1086363 () Bool)

(assert (=> d!1086363 (= (get!13156 lt!1296301) (v!38545 lt!1296301))))

(assert (=> b!3705365 d!1086363))

(declare-fun d!1086365 () Bool)

(assert (=> d!1086365 (= (inv!53008 tag!164) (= (mod (str.len (value!192208 tag!164)) 2) 0))))

(assert (=> start!349426 d!1086365))

(declare-fun d!1086367 () Bool)

(declare-fun res!1507413 () Bool)

(declare-fun e!2295334 () Bool)

(assert (=> d!1086367 (=> (not res!1507413) (not e!2295334))))

(declare-fun rulesValid!2335 (LexerInterface!5617 List!39638) Bool)

(assert (=> d!1086367 (= res!1507413 (rulesValid!2335 thiss!19663 rules!2525))))

(assert (=> d!1086367 (= (rulesInvariant!5014 thiss!19663 rules!2525) e!2295334)))

(declare-fun b!3705390 () Bool)

(declare-datatypes ((List!39640 0))(
  ( (Nil!39516) (Cons!39516 (h!44936 String!44624) (t!302323 List!39640)) )
))
(declare-fun noDuplicateTag!2336 (LexerInterface!5617 List!39638 List!39640) Bool)

(assert (=> b!3705390 (= e!2295334 (noDuplicateTag!2336 thiss!19663 rules!2525 Nil!39516))))

(assert (= (and d!1086367 res!1507413) b!3705390))

(declare-fun m!4215753 () Bool)

(assert (=> d!1086367 m!4215753))

(declare-fun m!4215755 () Bool)

(assert (=> b!3705390 m!4215755))

(assert (=> b!3705359 d!1086367))

(declare-fun b!3705410 () Bool)

(declare-fun e!2295345 () Bool)

(declare-fun tp!1127046 () Bool)

(declare-fun tp!1127045 () Bool)

(assert (=> b!3705410 (= e!2295345 (and tp!1127046 tp!1127045))))

(assert (=> b!3705361 (= tp!1127028 e!2295345)))

(declare-fun b!3705412 () Bool)

(declare-fun tp!1127049 () Bool)

(declare-fun tp!1127048 () Bool)

(assert (=> b!3705412 (= e!2295345 (and tp!1127049 tp!1127048))))

(declare-fun b!3705409 () Bool)

(declare-fun tp_is_empty!18603 () Bool)

(assert (=> b!3705409 (= e!2295345 tp_is_empty!18603)))

(declare-fun b!3705411 () Bool)

(declare-fun tp!1127047 () Bool)

(assert (=> b!3705411 (= e!2295345 tp!1127047)))

(assert (= (and b!3705361 ((_ is ElementMatch!10787) (regex!6028 (h!44934 rules!2525)))) b!3705409))

(assert (= (and b!3705361 ((_ is Concat!17046) (regex!6028 (h!44934 rules!2525)))) b!3705410))

(assert (= (and b!3705361 ((_ is Star!10787) (regex!6028 (h!44934 rules!2525)))) b!3705411))

(assert (= (and b!3705361 ((_ is Union!10787) (regex!6028 (h!44934 rules!2525)))) b!3705412))

(declare-fun b!3705436 () Bool)

(declare-fun b_free!99081 () Bool)

(declare-fun b_next!99785 () Bool)

(assert (=> b!3705436 (= b_free!99081 (not b_next!99785))))

(declare-fun tp!1127077 () Bool)

(declare-fun b_and!277315 () Bool)

(assert (=> b!3705436 (= tp!1127077 b_and!277315)))

(declare-fun b_free!99083 () Bool)

(declare-fun b_next!99787 () Bool)

(assert (=> b!3705436 (= b_free!99083 (not b_next!99787))))

(declare-fun tp!1127076 () Bool)

(declare-fun b_and!277317 () Bool)

(assert (=> b!3705436 (= tp!1127076 b_and!277317)))

(declare-fun e!2295360 () Bool)

(assert (=> b!3705436 (= e!2295360 (and tp!1127077 tp!1127076))))

(declare-fun b!3705435 () Bool)

(declare-fun e!2295361 () Bool)

(declare-fun tp!1127075 () Bool)

(assert (=> b!3705435 (= e!2295361 (and tp!1127075 (inv!53008 (tag!6886 (h!44934 (t!302321 rules!2525)))) (inv!53010 (transformation!6028 (h!44934 (t!302321 rules!2525)))) e!2295360))))

(declare-fun b!3705434 () Bool)

(declare-fun e!2295363 () Bool)

(declare-fun tp!1127074 () Bool)

(assert (=> b!3705434 (= e!2295363 (and e!2295361 tp!1127074))))

(assert (=> b!3705364 (= tp!1127025 e!2295363)))

(assert (= b!3705435 b!3705436))

(assert (= b!3705434 b!3705435))

(assert (= (and b!3705364 ((_ is Cons!39514) (t!302321 rules!2525))) b!3705434))

(declare-fun m!4215761 () Bool)

(assert (=> b!3705435 m!4215761))

(declare-fun m!4215763 () Bool)

(assert (=> b!3705435 m!4215763))

(check-sat b_and!277315 (not b!3705390) (not d!1086355) (not b_next!99777) b_and!277309 (not b!3705412) (not d!1086367) (not b!3705372) b_and!277317 (not b!3705384) (not b!3705411) (not b_next!99785) (not b_next!99787) b_and!277307 (not b!3705435) (not b!3705410) (not b!3705434) (not d!1086351) tp_is_empty!18603 (not b_next!99779))
(check-sat b_and!277315 (not b_next!99777) (not b_next!99785) b_and!277309 b_and!277317 (not b_next!99779) (not b_next!99787) b_and!277307)
