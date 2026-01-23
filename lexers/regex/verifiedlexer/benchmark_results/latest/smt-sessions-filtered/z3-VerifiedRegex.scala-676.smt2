; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25982 () Bool)

(assert start!25982)

(declare-fun b!244473 () Bool)

(declare-fun b_free!8993 () Bool)

(declare-fun b_next!8993 () Bool)

(assert (=> b!244473 (= b_free!8993 (not b_next!8993))))

(declare-fun tp!95815 () Bool)

(declare-fun b_and!18365 () Bool)

(assert (=> b!244473 (= tp!95815 b_and!18365)))

(declare-fun b_free!8995 () Bool)

(declare-fun b_next!8995 () Bool)

(assert (=> b!244473 (= b_free!8995 (not b_next!8995))))

(declare-fun tp!95814 () Bool)

(declare-fun b_and!18367 () Bool)

(assert (=> b!244473 (= tp!95814 b_and!18367)))

(declare-fun b!244470 () Bool)

(declare-fun b_free!8997 () Bool)

(declare-fun b_next!8997 () Bool)

(assert (=> b!244470 (= b_free!8997 (not b_next!8997))))

(declare-fun tp!95807 () Bool)

(declare-fun b_and!18369 () Bool)

(assert (=> b!244470 (= tp!95807 b_and!18369)))

(declare-fun b_free!8999 () Bool)

(declare-fun b_next!8999 () Bool)

(assert (=> b!244470 (= b_free!8999 (not b_next!8999))))

(declare-fun tp!95806 () Bool)

(declare-fun b_and!18371 () Bool)

(assert (=> b!244470 (= tp!95806 b_and!18371)))

(declare-fun b!244478 () Bool)

(declare-fun b_free!9001 () Bool)

(declare-fun b_next!9001 () Bool)

(assert (=> b!244478 (= b_free!9001 (not b_next!9001))))

(declare-fun tp!95813 () Bool)

(declare-fun b_and!18373 () Bool)

(assert (=> b!244478 (= tp!95813 b_and!18373)))

(declare-fun b_free!9003 () Bool)

(declare-fun b_next!9003 () Bool)

(assert (=> b!244478 (= b_free!9003 (not b_next!9003))))

(declare-fun tp!95808 () Bool)

(declare-fun b_and!18375 () Bool)

(assert (=> b!244478 (= tp!95808 b_and!18375)))

(declare-fun bs!26322 () Bool)

(declare-fun b!244486 () Bool)

(declare-fun b!244494 () Bool)

(assert (= bs!26322 (and b!244486 b!244494)))

(declare-fun lambda!7968 () Int)

(declare-fun lambda!7967 () Int)

(assert (=> bs!26322 (not (= lambda!7968 lambda!7967))))

(declare-fun b!244508 () Bool)

(declare-fun e!151414 () Bool)

(assert (=> b!244508 (= e!151414 true)))

(declare-fun b!244507 () Bool)

(declare-fun e!151413 () Bool)

(assert (=> b!244507 (= e!151413 e!151414)))

(declare-fun b!244506 () Bool)

(declare-fun e!151412 () Bool)

(assert (=> b!244506 (= e!151412 e!151413)))

(assert (=> b!244486 e!151412))

(assert (= b!244507 b!244508))

(assert (= b!244506 b!244507))

(declare-datatypes ((List!3585 0))(
  ( (Nil!3575) (Cons!3575 (h!8972 (_ BitVec 16)) (t!35049 List!3585)) )
))
(declare-datatypes ((TokenValue!697 0))(
  ( (FloatLiteralValue!1394 (text!5324 List!3585)) (TokenValueExt!696 (__x!2881 Int)) (Broken!3485 (value!23527 List!3585)) (Object!706) (End!697) (Def!697) (Underscore!697) (Match!697) (Else!697) (Error!697) (Case!697) (If!697) (Extends!697) (Abstract!697) (Class!697) (Val!697) (DelimiterValue!1394 (del!757 List!3585)) (KeywordValue!703 (value!23528 List!3585)) (CommentValue!1394 (value!23529 List!3585)) (WhitespaceValue!1394 (value!23530 List!3585)) (IndentationValue!697 (value!23531 List!3585)) (String!4564) (Int32!697) (Broken!3486 (value!23532 List!3585)) (Boolean!698) (Unit!4351) (OperatorValue!700 (op!757 List!3585)) (IdentifierValue!1394 (value!23533 List!3585)) (IdentifierValue!1395 (value!23534 List!3585)) (WhitespaceValue!1395 (value!23535 List!3585)) (True!1394) (False!1394) (Broken!3487 (value!23536 List!3585)) (Broken!3488 (value!23537 List!3585)) (True!1395) (RightBrace!697) (RightBracket!697) (Colon!697) (Null!697) (Comma!697) (LeftBracket!697) (False!1395) (LeftBrace!697) (ImaginaryLiteralValue!697 (text!5325 List!3585)) (StringLiteralValue!2091 (value!23538 List!3585)) (EOFValue!697 (value!23539 List!3585)) (IdentValue!697 (value!23540 List!3585)) (DelimiterValue!1395 (value!23541 List!3585)) (DedentValue!697 (value!23542 List!3585)) (NewLineValue!697 (value!23543 List!3585)) (IntegerValue!2091 (value!23544 (_ BitVec 32)) (text!5326 List!3585)) (IntegerValue!2092 (value!23545 Int) (text!5327 List!3585)) (Times!697) (Or!697) (Equal!697) (Minus!697) (Broken!3489 (value!23546 List!3585)) (And!697) (Div!697) (LessEqual!697) (Mod!697) (Concat!1596) (Not!697) (Plus!697) (SpaceValue!697 (value!23547 List!3585)) (IntegerValue!2093 (value!23548 Int) (text!5328 List!3585)) (StringLiteralValue!2092 (text!5329 List!3585)) (FloatLiteralValue!1395 (text!5330 List!3585)) (BytesLiteralValue!697 (value!23549 List!3585)) (CommentValue!1395 (value!23550 List!3585)) (StringLiteralValue!2093 (value!23551 List!3585)) (ErrorTokenValue!697 (msg!758 List!3585)) )
))
(declare-datatypes ((C!2720 0))(
  ( (C!2721 (val!1246 Int)) )
))
(declare-datatypes ((List!3586 0))(
  ( (Nil!3576) (Cons!3576 (h!8973 C!2720) (t!35050 List!3586)) )
))
(declare-datatypes ((IArray!2345 0))(
  ( (IArray!2346 (innerList!1230 List!3586)) )
))
(declare-datatypes ((Conc!1172 0))(
  ( (Node!1172 (left!2916 Conc!1172) (right!3246 Conc!1172) (csize!2574 Int) (cheight!1383 Int)) (Leaf!1849 (xs!3767 IArray!2345) (csize!2575 Int)) (Empty!1172) )
))
(declare-datatypes ((BalanceConc!2352 0))(
  ( (BalanceConc!2353 (c!46868 Conc!1172)) )
))
(declare-datatypes ((TokenValueInjection!1166 0))(
  ( (TokenValueInjection!1167 (toValue!1378 Int) (toChars!1237 Int)) )
))
(declare-datatypes ((String!4565 0))(
  ( (String!4566 (value!23552 String)) )
))
(declare-datatypes ((Regex!899 0))(
  ( (ElementMatch!899 (c!46869 C!2720)) (Concat!1597 (regOne!2310 Regex!899) (regTwo!2310 Regex!899)) (EmptyExpr!899) (Star!899 (reg!1228 Regex!899)) (EmptyLang!899) (Union!899 (regOne!2311 Regex!899) (regTwo!2311 Regex!899)) )
))
(declare-datatypes ((Rule!1150 0))(
  ( (Rule!1151 (regex!675 Regex!899) (tag!883 String!4565) (isSeparator!675 Bool) (transformation!675 TokenValueInjection!1166)) )
))
(declare-datatypes ((List!3587 0))(
  ( (Nil!3577) (Cons!3577 (h!8974 Rule!1150) (t!35051 List!3587)) )
))
(declare-fun rules!1920 () List!3587)

(get-info :version)

(assert (= (and b!244486 ((_ is Cons!3577) rules!1920)) b!244506))

(declare-fun order!2591 () Int)

(declare-fun order!2589 () Int)

(declare-fun dynLambda!1723 (Int Int) Int)

(declare-fun dynLambda!1724 (Int Int) Int)

(assert (=> b!244508 (< (dynLambda!1723 order!2589 (toValue!1378 (transformation!675 (h!8974 rules!1920)))) (dynLambda!1724 order!2591 lambda!7968))))

(declare-fun order!2593 () Int)

(declare-fun dynLambda!1725 (Int Int) Int)

(assert (=> b!244508 (< (dynLambda!1725 order!2593 (toChars!1237 (transformation!675 (h!8974 rules!1920)))) (dynLambda!1724 order!2591 lambda!7968))))

(assert (=> b!244486 true))

(declare-fun e!151397 () Bool)

(declare-fun b!244466 () Bool)

(declare-datatypes ((Token!1094 0))(
  ( (Token!1095 (value!23553 TokenValue!697) (rule!1252 Rule!1150) (size!2857 Int) (originalCharacters!718 List!3586)) )
))
(declare-fun separatorToken!170 () Token!1094)

(declare-fun e!151394 () Bool)

(declare-fun tp!95817 () Bool)

(declare-fun inv!4431 (String!4565) Bool)

(declare-fun inv!4434 (TokenValueInjection!1166) Bool)

(assert (=> b!244466 (= e!151394 (and tp!95817 (inv!4431 (tag!883 (rule!1252 separatorToken!170))) (inv!4434 (transformation!675 (rule!1252 separatorToken!170))) e!151397))))

(declare-fun b!244467 () Bool)

(declare-fun e!151392 () Bool)

(assert (=> b!244467 (= e!151392 true)))

(declare-fun b!244468 () Bool)

(declare-fun res!112915 () Bool)

(declare-fun e!151405 () Bool)

(assert (=> b!244468 (=> res!112915 e!151405)))

(declare-fun lt!98897 () List!3586)

(declare-datatypes ((LexerInterface!561 0))(
  ( (LexerInterfaceExt!558 (__x!2882 Int)) (Lexer!559) )
))
(declare-fun thiss!17480 () LexerInterface!561)

(declare-datatypes ((List!3588 0))(
  ( (Nil!3578) (Cons!3578 (h!8975 Token!1094) (t!35052 List!3588)) )
))
(declare-datatypes ((IArray!2347 0))(
  ( (IArray!2348 (innerList!1231 List!3588)) )
))
(declare-datatypes ((Conc!1173 0))(
  ( (Node!1173 (left!2917 Conc!1173) (right!3247 Conc!1173) (csize!2576 Int) (cheight!1384 Int)) (Leaf!1850 (xs!3768 IArray!2347) (csize!2577 Int)) (Empty!1173) )
))
(declare-datatypes ((BalanceConc!2354 0))(
  ( (BalanceConc!2355 (c!46870 Conc!1173)) )
))
(declare-fun isEmpty!2158 (BalanceConc!2354) Bool)

(declare-datatypes ((tuple2!3958 0))(
  ( (tuple2!3959 (_1!2195 BalanceConc!2354) (_2!2195 BalanceConc!2352)) )
))
(declare-fun lex!361 (LexerInterface!561 List!3587 BalanceConc!2352) tuple2!3958)

(declare-fun seqFromList!727 (List!3586) BalanceConc!2352)

(assert (=> b!244468 (= res!112915 (isEmpty!2158 (_1!2195 (lex!361 thiss!17480 rules!1920 (seqFromList!727 lt!98897)))))))

(declare-fun b!244469 () Bool)

(declare-fun e!151403 () Bool)

(declare-fun e!151381 () Bool)

(assert (=> b!244469 (= e!151403 e!151381)))

(declare-fun res!112925 () Bool)

(assert (=> b!244469 (=> (not res!112925) (not e!151381))))

(declare-fun lt!98894 () BalanceConc!2354)

(declare-fun rulesProduceEachTokenIndividually!353 (LexerInterface!561 List!3587 BalanceConc!2354) Bool)

(assert (=> b!244469 (= res!112925 (rulesProduceEachTokenIndividually!353 thiss!17480 rules!1920 lt!98894))))

(declare-fun tokens!465 () List!3588)

(declare-fun seqFromList!728 (List!3588) BalanceConc!2354)

(assert (=> b!244469 (= lt!98894 (seqFromList!728 tokens!465))))

(declare-fun e!151400 () Bool)

(assert (=> b!244470 (= e!151400 (and tp!95807 tp!95806))))

(declare-fun b!244471 () Bool)

(declare-fun res!112906 () Bool)

(assert (=> b!244471 (=> (not res!112906) (not e!151381))))

(assert (=> b!244471 (= res!112906 (isSeparator!675 (rule!1252 separatorToken!170)))))

(declare-fun e!151395 () Bool)

(declare-fun b!244472 () Bool)

(declare-fun lt!98896 () List!3586)

(declare-fun lt!98882 () List!3586)

(declare-fun ++!912 (List!3586 List!3586) List!3586)

(assert (=> b!244472 (= e!151395 (not (= lt!98882 (++!912 lt!98897 lt!98896))))))

(declare-fun e!151384 () Bool)

(assert (=> b!244473 (= e!151384 (and tp!95815 tp!95814))))

(declare-fun b!244474 () Bool)

(declare-fun e!151404 () Bool)

(assert (=> b!244474 (= e!151381 e!151404)))

(declare-fun res!112909 () Bool)

(assert (=> b!244474 (=> (not res!112909) (not e!151404))))

(declare-fun lt!98891 () List!3586)

(assert (=> b!244474 (= res!112909 (= lt!98882 lt!98891))))

(declare-fun list!1407 (BalanceConc!2352) List!3586)

(declare-fun printWithSeparatorTokenWhenNeededRec!244 (LexerInterface!561 List!3587 BalanceConc!2354 Token!1094 Int) BalanceConc!2352)

(assert (=> b!244474 (= lt!98891 (list!1407 (printWithSeparatorTokenWhenNeededRec!244 thiss!17480 rules!1920 lt!98894 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!254 (LexerInterface!561 List!3587 List!3588 Token!1094) List!3586)

(assert (=> b!244474 (= lt!98882 (printWithSeparatorTokenWhenNeededList!254 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244475 () Bool)

(declare-fun res!112919 () Bool)

(assert (=> b!244475 (=> (not res!112919) (not e!151404))))

(assert (=> b!244475 (= res!112919 (= (list!1407 (seqFromList!727 lt!98882)) lt!98891))))

(declare-fun res!112907 () Bool)

(assert (=> start!25982 (=> (not res!112907) (not e!151403))))

(assert (=> start!25982 (= res!112907 ((_ is Lexer!559) thiss!17480))))

(assert (=> start!25982 e!151403))

(assert (=> start!25982 true))

(declare-fun e!151390 () Bool)

(assert (=> start!25982 e!151390))

(declare-fun e!151385 () Bool)

(declare-fun inv!4435 (Token!1094) Bool)

(assert (=> start!25982 (and (inv!4435 separatorToken!170) e!151385)))

(declare-fun e!151386 () Bool)

(assert (=> start!25982 e!151386))

(declare-fun b!244476 () Bool)

(declare-fun res!112918 () Bool)

(assert (=> b!244476 (=> (not res!112918) (not e!151381))))

(assert (=> b!244476 (= res!112918 ((_ is Cons!3578) tokens!465))))

(declare-fun b!244477 () Bool)

(declare-fun res!112921 () Bool)

(assert (=> b!244477 (=> (not res!112921) (not e!151403))))

(declare-fun rulesInvariant!527 (LexerInterface!561 List!3587) Bool)

(assert (=> b!244477 (= res!112921 (rulesInvariant!527 thiss!17480 rules!1920))))

(assert (=> b!244478 (= e!151397 (and tp!95813 tp!95808))))

(declare-fun b!244479 () Bool)

(declare-fun res!112912 () Bool)

(declare-fun e!151382 () Bool)

(assert (=> b!244479 (=> (not res!112912) (not e!151382))))

(declare-datatypes ((tuple2!3960 0))(
  ( (tuple2!3961 (_1!2196 Token!1094) (_2!2196 List!3586)) )
))
(declare-fun lt!98887 () tuple2!3960)

(declare-fun isEmpty!2159 (List!3586) Bool)

(assert (=> b!244479 (= res!112912 (isEmpty!2159 (_2!2196 lt!98887)))))

(declare-fun e!151388 () Bool)

(declare-fun b!244480 () Bool)

(declare-fun tp!95811 () Bool)

(assert (=> b!244480 (= e!151388 (and tp!95811 (inv!4431 (tag!883 (rule!1252 (h!8975 tokens!465)))) (inv!4434 (transformation!675 (rule!1252 (h!8975 tokens!465)))) e!151384))))

(declare-fun b!244481 () Bool)

(declare-fun e!151398 () Bool)

(declare-fun e!151396 () Bool)

(assert (=> b!244481 (= e!151398 e!151396)))

(declare-fun res!112926 () Bool)

(assert (=> b!244481 (=> res!112926 e!151396)))

(assert (=> b!244481 (= res!112926 e!151395)))

(declare-fun res!112923 () Bool)

(assert (=> b!244481 (=> (not res!112923) (not e!151395))))

(declare-fun lt!98895 () Bool)

(assert (=> b!244481 (= res!112923 (not lt!98895))))

(declare-fun lt!98889 () List!3586)

(assert (=> b!244481 (= lt!98895 (= lt!98882 lt!98889))))

(declare-fun b!244482 () Bool)

(declare-fun res!112917 () Bool)

(assert (=> b!244482 (=> (not res!112917) (not e!151403))))

(declare-fun isEmpty!2160 (List!3587) Bool)

(assert (=> b!244482 (= res!112917 (not (isEmpty!2160 rules!1920)))))

(declare-fun tp!95809 () Bool)

(declare-fun e!151399 () Bool)

(declare-fun b!244483 () Bool)

(declare-fun inv!21 (TokenValue!697) Bool)

(assert (=> b!244483 (= e!151399 (and (inv!21 (value!23553 (h!8975 tokens!465))) e!151388 tp!95809))))

(declare-fun e!151387 () Bool)

(declare-fun b!244484 () Bool)

(declare-fun tp!95812 () Bool)

(assert (=> b!244484 (= e!151387 (and tp!95812 (inv!4431 (tag!883 (h!8974 rules!1920))) (inv!4434 (transformation!675 (h!8974 rules!1920))) e!151400))))

(declare-fun b!244485 () Bool)

(declare-fun e!151391 () Bool)

(assert (=> b!244485 (= e!151391 e!151392)))

(declare-fun res!112913 () Bool)

(assert (=> b!244485 (=> res!112913 e!151392)))

(assert (=> b!244485 (= res!112913 lt!98895)))

(assert (=> b!244485 e!151382))

(declare-fun res!112920 () Bool)

(assert (=> b!244485 (=> (not res!112920) (not e!151382))))

(assert (=> b!244485 (= res!112920 (= (_1!2196 lt!98887) (h!8975 tokens!465)))))

(declare-datatypes ((Option!712 0))(
  ( (None!711) (Some!711 (v!14472 tuple2!3960)) )
))
(declare-fun lt!98893 () Option!712)

(declare-fun get!1167 (Option!712) tuple2!3960)

(assert (=> b!244485 (= lt!98887 (get!1167 lt!98893))))

(declare-fun isDefined!563 (Option!712) Bool)

(assert (=> b!244485 (isDefined!563 lt!98893)))

(declare-fun maxPrefix!291 (LexerInterface!561 List!3587 List!3586) Option!712)

(assert (=> b!244485 (= lt!98893 (maxPrefix!291 thiss!17480 rules!1920 lt!98897))))

(assert (=> b!244486 (= e!151405 e!151391)))

(declare-fun res!112905 () Bool)

(assert (=> b!244486 (=> res!112905 e!151391)))

(declare-datatypes ((tuple2!3962 0))(
  ( (tuple2!3963 (_1!2197 Token!1094) (_2!2197 BalanceConc!2352)) )
))
(declare-datatypes ((Option!713 0))(
  ( (None!712) (Some!712 (v!14473 tuple2!3962)) )
))
(declare-fun isDefined!564 (Option!713) Bool)

(declare-fun maxPrefixZipperSequence!254 (LexerInterface!561 List!3587 BalanceConc!2352) Option!713)

(assert (=> b!244486 (= res!112905 (not (isDefined!564 (maxPrefixZipperSequence!254 thiss!17480 rules!1920 (seqFromList!727 (originalCharacters!718 (h!8975 tokens!465)))))))))

(declare-datatypes ((Unit!4352 0))(
  ( (Unit!4353) )
))
(declare-fun lt!98881 () Unit!4352)

(declare-fun forallContained!242 (List!3588 Int Token!1094) Unit!4352)

(assert (=> b!244486 (= lt!98881 (forallContained!242 tokens!465 lambda!7968 (h!8975 tokens!465)))))

(assert (=> b!244486 (= lt!98897 (originalCharacters!718 (h!8975 tokens!465)))))

(declare-fun tp!95810 () Bool)

(declare-fun b!244487 () Bool)

(assert (=> b!244487 (= e!151386 (and (inv!4435 (h!8975 tokens!465)) e!151399 tp!95810))))

(declare-fun b!244488 () Bool)

(assert (=> b!244488 (= e!151396 e!151405)))

(declare-fun res!112914 () Bool)

(assert (=> b!244488 (=> res!112914 e!151405)))

(declare-fun lt!98886 () List!3586)

(declare-fun lt!98898 () List!3586)

(assert (=> b!244488 (= res!112914 (or (not (= lt!98886 lt!98898)) (not (= lt!98898 lt!98897)) (not (= lt!98886 lt!98897))))))

(declare-fun printList!245 (LexerInterface!561 List!3588) List!3586)

(assert (=> b!244488 (= lt!98898 (printList!245 thiss!17480 (Cons!3578 (h!8975 tokens!465) Nil!3578)))))

(declare-fun lt!98883 () BalanceConc!2352)

(assert (=> b!244488 (= lt!98886 (list!1407 lt!98883))))

(declare-fun lt!98885 () BalanceConc!2354)

(declare-fun printTailRec!255 (LexerInterface!561 BalanceConc!2354 Int BalanceConc!2352) BalanceConc!2352)

(assert (=> b!244488 (= lt!98883 (printTailRec!255 thiss!17480 lt!98885 0 (BalanceConc!2353 Empty!1172)))))

(declare-fun print!292 (LexerInterface!561 BalanceConc!2354) BalanceConc!2352)

(assert (=> b!244488 (= lt!98883 (print!292 thiss!17480 lt!98885))))

(declare-fun singletonSeq!227 (Token!1094) BalanceConc!2354)

(assert (=> b!244488 (= lt!98885 (singletonSeq!227 (h!8975 tokens!465)))))

(declare-fun tp!95816 () Bool)

(declare-fun b!244489 () Bool)

(assert (=> b!244489 (= e!151385 (and (inv!21 (value!23553 separatorToken!170)) e!151394 tp!95816))))

(declare-fun b!244490 () Bool)

(declare-fun matchR!237 (Regex!899 List!3586) Bool)

(assert (=> b!244490 (= e!151382 (matchR!237 (regex!675 (rule!1252 (h!8975 tokens!465))) lt!98897))))

(declare-fun b!244491 () Bool)

(declare-fun tp!95805 () Bool)

(assert (=> b!244491 (= e!151390 (and e!151387 tp!95805))))

(declare-fun b!244492 () Bool)

(declare-fun res!112924 () Bool)

(assert (=> b!244492 (=> res!112924 e!151392)))

(declare-fun rulesProduceEachTokenIndividuallyList!199 (LexerInterface!561 List!3587 List!3588) Bool)

(assert (=> b!244492 (= res!112924 (not (rulesProduceEachTokenIndividuallyList!199 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!244493 () Bool)

(declare-fun res!112911 () Bool)

(assert (=> b!244493 (=> (not res!112911) (not e!151381))))

(declare-fun rulesProduceIndividualToken!310 (LexerInterface!561 List!3587 Token!1094) Bool)

(assert (=> b!244493 (= res!112911 (rulesProduceIndividualToken!310 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!112910 () Bool)

(assert (=> b!244494 (=> (not res!112910) (not e!151381))))

(declare-fun forall!831 (List!3588 Int) Bool)

(assert (=> b!244494 (= res!112910 (forall!831 tokens!465 lambda!7967))))

(declare-fun b!244495 () Bool)

(assert (=> b!244495 (= e!151404 (not e!151398))))

(declare-fun res!112922 () Bool)

(assert (=> b!244495 (=> res!112922 e!151398)))

(assert (=> b!244495 (= res!112922 (not (= lt!98896 (list!1407 (printWithSeparatorTokenWhenNeededRec!244 thiss!17480 rules!1920 (seqFromList!728 (t!35052 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!98888 () List!3586)

(assert (=> b!244495 (= lt!98888 lt!98889)))

(declare-fun lt!98890 () List!3586)

(assert (=> b!244495 (= lt!98889 (++!912 lt!98897 lt!98890))))

(declare-fun lt!98884 () List!3586)

(assert (=> b!244495 (= lt!98888 (++!912 (++!912 lt!98897 lt!98884) lt!98896))))

(declare-fun lt!98892 () Unit!4352)

(declare-fun lemmaConcatAssociativity!380 (List!3586 List!3586 List!3586) Unit!4352)

(assert (=> b!244495 (= lt!98892 (lemmaConcatAssociativity!380 lt!98897 lt!98884 lt!98896))))

(declare-fun charsOf!330 (Token!1094) BalanceConc!2352)

(assert (=> b!244495 (= lt!98897 (list!1407 (charsOf!330 (h!8975 tokens!465))))))

(assert (=> b!244495 (= lt!98890 (++!912 lt!98884 lt!98896))))

(assert (=> b!244495 (= lt!98896 (printWithSeparatorTokenWhenNeededList!254 thiss!17480 rules!1920 (t!35052 tokens!465) separatorToken!170))))

(assert (=> b!244495 (= lt!98884 (list!1407 (charsOf!330 separatorToken!170)))))

(declare-fun b!244496 () Bool)

(declare-fun res!112908 () Bool)

(assert (=> b!244496 (=> res!112908 e!151405)))

(assert (=> b!244496 (= res!112908 (not (rulesProduceIndividualToken!310 thiss!17480 rules!1920 (h!8975 tokens!465))))))

(declare-fun b!244497 () Bool)

(declare-fun res!112916 () Bool)

(assert (=> b!244497 (=> (not res!112916) (not e!151381))))

(declare-fun sepAndNonSepRulesDisjointChars!264 (List!3587 List!3587) Bool)

(assert (=> b!244497 (= res!112916 (sepAndNonSepRulesDisjointChars!264 rules!1920 rules!1920))))

(assert (= (and start!25982 res!112907) b!244482))

(assert (= (and b!244482 res!112917) b!244477))

(assert (= (and b!244477 res!112921) b!244469))

(assert (= (and b!244469 res!112925) b!244493))

(assert (= (and b!244493 res!112911) b!244471))

(assert (= (and b!244471 res!112906) b!244494))

(assert (= (and b!244494 res!112910) b!244497))

(assert (= (and b!244497 res!112916) b!244476))

(assert (= (and b!244476 res!112918) b!244474))

(assert (= (and b!244474 res!112909) b!244475))

(assert (= (and b!244475 res!112919) b!244495))

(assert (= (and b!244495 (not res!112922)) b!244481))

(assert (= (and b!244481 res!112923) b!244472))

(assert (= (and b!244481 (not res!112926)) b!244488))

(assert (= (and b!244488 (not res!112914)) b!244496))

(assert (= (and b!244496 (not res!112908)) b!244468))

(assert (= (and b!244468 (not res!112915)) b!244486))

(assert (= (and b!244486 (not res!112905)) b!244485))

(assert (= (and b!244485 res!112920) b!244479))

(assert (= (and b!244479 res!112912) b!244490))

(assert (= (and b!244485 (not res!112913)) b!244492))

(assert (= (and b!244492 (not res!112924)) b!244467))

(assert (= b!244484 b!244470))

(assert (= b!244491 b!244484))

(assert (= (and start!25982 ((_ is Cons!3577) rules!1920)) b!244491))

(assert (= b!244466 b!244478))

(assert (= b!244489 b!244466))

(assert (= start!25982 b!244489))

(assert (= b!244480 b!244473))

(assert (= b!244483 b!244480))

(assert (= b!244487 b!244483))

(assert (= (and start!25982 ((_ is Cons!3578) tokens!465)) b!244487))

(declare-fun m!299101 () Bool)

(assert (=> b!244493 m!299101))

(declare-fun m!299103 () Bool)

(assert (=> b!244489 m!299103))

(declare-fun m!299105 () Bool)

(assert (=> b!244480 m!299105))

(declare-fun m!299107 () Bool)

(assert (=> b!244480 m!299107))

(declare-fun m!299109 () Bool)

(assert (=> start!25982 m!299109))

(declare-fun m!299111 () Bool)

(assert (=> b!244486 m!299111))

(assert (=> b!244486 m!299111))

(declare-fun m!299113 () Bool)

(assert (=> b!244486 m!299113))

(assert (=> b!244486 m!299113))

(declare-fun m!299115 () Bool)

(assert (=> b!244486 m!299115))

(declare-fun m!299117 () Bool)

(assert (=> b!244486 m!299117))

(declare-fun m!299119 () Bool)

(assert (=> b!244468 m!299119))

(assert (=> b!244468 m!299119))

(declare-fun m!299121 () Bool)

(assert (=> b!244468 m!299121))

(declare-fun m!299123 () Bool)

(assert (=> b!244468 m!299123))

(declare-fun m!299125 () Bool)

(assert (=> b!244497 m!299125))

(declare-fun m!299127 () Bool)

(assert (=> b!244472 m!299127))

(declare-fun m!299129 () Bool)

(assert (=> b!244469 m!299129))

(declare-fun m!299131 () Bool)

(assert (=> b!244469 m!299131))

(declare-fun m!299133 () Bool)

(assert (=> b!244474 m!299133))

(assert (=> b!244474 m!299133))

(declare-fun m!299135 () Bool)

(assert (=> b!244474 m!299135))

(declare-fun m!299137 () Bool)

(assert (=> b!244474 m!299137))

(declare-fun m!299139 () Bool)

(assert (=> b!244494 m!299139))

(declare-fun m!299141 () Bool)

(assert (=> b!244490 m!299141))

(declare-fun m!299143 () Bool)

(assert (=> b!244482 m!299143))

(declare-fun m!299145 () Bool)

(assert (=> b!244496 m!299145))

(declare-fun m!299147 () Bool)

(assert (=> b!244475 m!299147))

(assert (=> b!244475 m!299147))

(declare-fun m!299149 () Bool)

(assert (=> b!244475 m!299149))

(declare-fun m!299151 () Bool)

(assert (=> b!244495 m!299151))

(declare-fun m!299153 () Bool)

(assert (=> b!244495 m!299153))

(declare-fun m!299155 () Bool)

(assert (=> b!244495 m!299155))

(declare-fun m!299157 () Bool)

(assert (=> b!244495 m!299157))

(assert (=> b!244495 m!299155))

(declare-fun m!299159 () Bool)

(assert (=> b!244495 m!299159))

(declare-fun m!299161 () Bool)

(assert (=> b!244495 m!299161))

(declare-fun m!299163 () Bool)

(assert (=> b!244495 m!299163))

(declare-fun m!299165 () Bool)

(assert (=> b!244495 m!299165))

(assert (=> b!244495 m!299159))

(assert (=> b!244495 m!299163))

(declare-fun m!299167 () Bool)

(assert (=> b!244495 m!299167))

(assert (=> b!244495 m!299161))

(declare-fun m!299169 () Bool)

(assert (=> b!244495 m!299169))

(declare-fun m!299171 () Bool)

(assert (=> b!244495 m!299171))

(declare-fun m!299173 () Bool)

(assert (=> b!244495 m!299173))

(declare-fun m!299175 () Bool)

(assert (=> b!244495 m!299175))

(assert (=> b!244495 m!299171))

(declare-fun m!299177 () Bool)

(assert (=> b!244492 m!299177))

(declare-fun m!299179 () Bool)

(assert (=> b!244479 m!299179))

(declare-fun m!299181 () Bool)

(assert (=> b!244466 m!299181))

(declare-fun m!299183 () Bool)

(assert (=> b!244466 m!299183))

(declare-fun m!299185 () Bool)

(assert (=> b!244487 m!299185))

(declare-fun m!299187 () Bool)

(assert (=> b!244488 m!299187))

(declare-fun m!299189 () Bool)

(assert (=> b!244488 m!299189))

(declare-fun m!299191 () Bool)

(assert (=> b!244488 m!299191))

(declare-fun m!299193 () Bool)

(assert (=> b!244488 m!299193))

(declare-fun m!299195 () Bool)

(assert (=> b!244488 m!299195))

(declare-fun m!299197 () Bool)

(assert (=> b!244485 m!299197))

(declare-fun m!299199 () Bool)

(assert (=> b!244485 m!299199))

(declare-fun m!299201 () Bool)

(assert (=> b!244485 m!299201))

(declare-fun m!299203 () Bool)

(assert (=> b!244484 m!299203))

(declare-fun m!299205 () Bool)

(assert (=> b!244484 m!299205))

(declare-fun m!299207 () Bool)

(assert (=> b!244477 m!299207))

(declare-fun m!299209 () Bool)

(assert (=> b!244483 m!299209))

(check-sat (not b!244482) (not b_next!9003) (not b!244475) (not b!244497) (not b_next!8997) (not b!244495) (not b!244489) (not b!244479) (not b_next!8999) (not b!244490) b_and!18365 (not b!244496) (not b!244485) (not b!244474) (not b_next!8993) (not b!244469) b_and!18369 (not b!244493) b_and!18367 (not b!244492) (not start!25982) (not b_next!9001) (not b!244483) (not b!244486) (not b!244491) (not b!244480) b_and!18375 (not b!244477) (not b!244468) (not b!244466) (not b_next!8995) (not b!244494) b_and!18373 (not b!244484) (not b!244472) (not b!244488) b_and!18371 (not b!244487) (not b!244506))
(check-sat b_and!18367 (not b_next!9003) (not b_next!9001) b_and!18375 (not b_next!8997) (not b_next!8995) b_and!18373 (not b_next!8999) b_and!18365 (not b_next!8993) b_and!18371 b_and!18369)
