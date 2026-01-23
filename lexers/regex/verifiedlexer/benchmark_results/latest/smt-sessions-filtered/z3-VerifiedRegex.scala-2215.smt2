; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108638 () Bool)

(assert start!108638)

(declare-fun b!1215913 () Bool)

(declare-fun b_free!29209 () Bool)

(declare-fun b_next!29913 () Bool)

(assert (=> b!1215913 (= b_free!29209 (not b_next!29913))))

(declare-fun tp!345164 () Bool)

(declare-fun b_and!82577 () Bool)

(assert (=> b!1215913 (= tp!345164 b_and!82577)))

(declare-fun b_free!29211 () Bool)

(declare-fun b_next!29915 () Bool)

(assert (=> b!1215913 (= b_free!29211 (not b_next!29915))))

(declare-fun tp!345162 () Bool)

(declare-fun b_and!82579 () Bool)

(assert (=> b!1215913 (= tp!345162 b_and!82579)))

(declare-fun b!1215916 () Bool)

(declare-fun b_free!29213 () Bool)

(declare-fun b_next!29917 () Bool)

(assert (=> b!1215916 (= b_free!29213 (not b_next!29917))))

(declare-fun tp!345163 () Bool)

(declare-fun b_and!82581 () Bool)

(assert (=> b!1215916 (= tp!345163 b_and!82581)))

(declare-fun b_free!29215 () Bool)

(declare-fun b_next!29919 () Bool)

(assert (=> b!1215916 (= b_free!29215 (not b_next!29919))))

(declare-fun tp!345157 () Bool)

(declare-fun b_and!82583 () Bool)

(assert (=> b!1215916 (= tp!345157 b_and!82583)))

(declare-fun tp!345159 () Bool)

(declare-fun e!780387 () Bool)

(declare-fun e!780390 () Bool)

(declare-datatypes ((List!12462 0))(
  ( (Nil!12404) (Cons!12404 (h!17805 (_ BitVec 16)) (t!113144 List!12462)) )
))
(declare-datatypes ((TokenValue!2203 0))(
  ( (FloatLiteralValue!4406 (text!15866 List!12462)) (TokenValueExt!2202 (__x!8121 Int)) (Broken!11015 (value!69418 List!12462)) (Object!2260) (End!2203) (Def!2203) (Underscore!2203) (Match!2203) (Else!2203) (Error!2203) (Case!2203) (If!2203) (Extends!2203) (Abstract!2203) (Class!2203) (Val!2203) (DelimiterValue!4406 (del!2263 List!12462)) (KeywordValue!2209 (value!69419 List!12462)) (CommentValue!4406 (value!69420 List!12462)) (WhitespaceValue!4406 (value!69421 List!12462)) (IndentationValue!2203 (value!69422 List!12462)) (String!15146) (Int32!2203) (Broken!11016 (value!69423 List!12462)) (Boolean!2204) (Unit!18687) (OperatorValue!2206 (op!2263 List!12462)) (IdentifierValue!4406 (value!69424 List!12462)) (IdentifierValue!4407 (value!69425 List!12462)) (WhitespaceValue!4407 (value!69426 List!12462)) (True!4406) (False!4406) (Broken!11017 (value!69427 List!12462)) (Broken!11018 (value!69428 List!12462)) (True!4407) (RightBrace!2203) (RightBracket!2203) (Colon!2203) (Null!2203) (Comma!2203) (LeftBracket!2203) (False!4407) (LeftBrace!2203) (ImaginaryLiteralValue!2203 (text!15867 List!12462)) (StringLiteralValue!6609 (value!69429 List!12462)) (EOFValue!2203 (value!69430 List!12462)) (IdentValue!2203 (value!69431 List!12462)) (DelimiterValue!4407 (value!69432 List!12462)) (DedentValue!2203 (value!69433 List!12462)) (NewLineValue!2203 (value!69434 List!12462)) (IntegerValue!6609 (value!69435 (_ BitVec 32)) (text!15868 List!12462)) (IntegerValue!6610 (value!69436 Int) (text!15869 List!12462)) (Times!2203) (Or!2203) (Equal!2203) (Minus!2203) (Broken!11019 (value!69437 List!12462)) (And!2203) (Div!2203) (LessEqual!2203) (Mod!2203) (Concat!5608) (Not!2203) (Plus!2203) (SpaceValue!2203 (value!69438 List!12462)) (IntegerValue!6611 (value!69439 Int) (text!15870 List!12462)) (StringLiteralValue!6610 (text!15871 List!12462)) (FloatLiteralValue!4407 (text!15872 List!12462)) (BytesLiteralValue!2203 (value!69440 List!12462)) (CommentValue!4407 (value!69441 List!12462)) (StringLiteralValue!6611 (value!69442 List!12462)) (ErrorTokenValue!2203 (msg!2264 List!12462)) )
))
(declare-datatypes ((C!7128 0))(
  ( (C!7129 (val!4094 Int)) )
))
(declare-datatypes ((List!12463 0))(
  ( (Nil!12405) (Cons!12405 (h!17806 C!7128) (t!113145 List!12463)) )
))
(declare-datatypes ((IArray!8129 0))(
  ( (IArray!8130 (innerList!4122 List!12463)) )
))
(declare-datatypes ((Conc!4062 0))(
  ( (Node!4062 (left!10717 Conc!4062) (right!11047 Conc!4062) (csize!8354 Int) (cheight!4273 Int)) (Leaf!6278 (xs!6773 IArray!8129) (csize!8355 Int)) (Empty!4062) )
))
(declare-datatypes ((Regex!3405 0))(
  ( (ElementMatch!3405 (c!203394 C!7128)) (Concat!5609 (regOne!7322 Regex!3405) (regTwo!7322 Regex!3405)) (EmptyExpr!3405) (Star!3405 (reg!3734 Regex!3405)) (EmptyLang!3405) (Union!3405 (regOne!7323 Regex!3405) (regTwo!7323 Regex!3405)) )
))
(declare-datatypes ((String!15147 0))(
  ( (String!15148 (value!69443 String)) )
))
(declare-datatypes ((BalanceConc!8056 0))(
  ( (BalanceConc!8057 (c!203395 Conc!4062)) )
))
(declare-datatypes ((TokenValueInjection!4102 0))(
  ( (TokenValueInjection!4103 (toValue!3264 Int) (toChars!3123 Int)) )
))
(declare-datatypes ((Rule!4070 0))(
  ( (Rule!4071 (regex!2135 Regex!3405) (tag!2397 String!15147) (isSeparator!2135 Bool) (transformation!2135 TokenValueInjection!4102)) )
))
(declare-datatypes ((List!12464 0))(
  ( (Nil!12406) (Cons!12406 (h!17807 Rule!4070) (t!113146 List!12464)) )
))
(declare-fun rules!2728 () List!12464)

(declare-fun b!1215904 () Bool)

(declare-fun inv!16594 (String!15147) Bool)

(declare-fun inv!16597 (TokenValueInjection!4102) Bool)

(assert (=> b!1215904 (= e!780387 (and tp!345159 (inv!16594 (tag!2397 (h!17807 rules!2728))) (inv!16597 (transformation!2135 (h!17807 rules!2728))) e!780390))))

(declare-fun b!1215905 () Bool)

(declare-fun e!780385 () Bool)

(declare-fun tp_is_empty!6331 () Bool)

(declare-fun tp!345161 () Bool)

(assert (=> b!1215905 (= e!780385 (and tp_is_empty!6331 tp!345161))))

(declare-fun b!1215906 () Bool)

(declare-fun res!546750 () Bool)

(declare-fun e!780386 () Bool)

(assert (=> b!1215906 (=> (not res!546750) (not e!780386))))

(declare-datatypes ((Token!3932 0))(
  ( (Token!3933 (value!69444 TokenValue!2203) (rule!3560 Rule!4070) (size!9813 Int) (originalCharacters!2689 List!12463)) )
))
(declare-datatypes ((List!12465 0))(
  ( (Nil!12407) (Cons!12407 (h!17808 Token!3932) (t!113147 List!12465)) )
))
(declare-fun tokens!556 () List!12465)

(declare-datatypes ((LexerInterface!1830 0))(
  ( (LexerInterfaceExt!1827 (__x!8122 Int)) (Lexer!1828) )
))
(declare-fun thiss!20528 () LexerInterface!1830)

(declare-fun input!2346 () List!12463)

(declare-datatypes ((tuple2!12274 0))(
  ( (tuple2!12275 (_1!6984 List!12465) (_2!6984 List!12463)) )
))
(declare-fun lexList!460 (LexerInterface!1830 List!12464 List!12463) tuple2!12274)

(assert (=> b!1215906 (= res!546750 (= (_1!6984 (lexList!460 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun res!546752 () Bool)

(assert (=> start!108638 (=> (not res!546752) (not e!780386))))

(get-info :version)

(assert (=> start!108638 (= res!546752 ((_ is Lexer!1828) thiss!20528))))

(assert (=> start!108638 e!780386))

(assert (=> start!108638 true))

(declare-fun e!780379 () Bool)

(assert (=> start!108638 e!780379))

(assert (=> start!108638 e!780385))

(declare-fun e!780384 () Bool)

(assert (=> start!108638 e!780384))

(declare-fun b!1215907 () Bool)

(declare-fun res!546753 () Bool)

(assert (=> b!1215907 (=> (not res!546753) (not e!780386))))

(declare-fun isEmpty!7375 (List!12464) Bool)

(assert (=> b!1215907 (= res!546753 (not (isEmpty!7375 rules!2728)))))

(declare-fun e!780376 () Bool)

(declare-fun tp!345156 () Bool)

(declare-fun e!780383 () Bool)

(declare-fun b!1215908 () Bool)

(assert (=> b!1215908 (= e!780376 (and tp!345156 (inv!16594 (tag!2397 (rule!3560 (h!17808 tokens!556)))) (inv!16597 (transformation!2135 (rule!3560 (h!17808 tokens!556)))) e!780383))))

(declare-fun b!1215909 () Bool)

(declare-fun e!780389 () Bool)

(declare-fun e!780381 () Bool)

(assert (=> b!1215909 (= e!780389 e!780381)))

(declare-fun res!546754 () Bool)

(assert (=> b!1215909 (=> (not res!546754) (not e!780381))))

(declare-fun lt!415627 () BalanceConc!8056)

(declare-fun lt!415625 () BalanceConc!8056)

(assert (=> b!1215909 (= res!546754 (= lt!415627 lt!415625))))

(declare-fun charsOf!1141 (Token!3932) BalanceConc!8056)

(assert (=> b!1215909 (= lt!415625 (charsOf!1141 (h!17808 tokens!556)))))

(declare-datatypes ((tuple2!12276 0))(
  ( (tuple2!12277 (_1!6985 Token!3932) (_2!6985 List!12463)) )
))
(declare-fun lt!415626 () tuple2!12276)

(assert (=> b!1215909 (= lt!415627 (charsOf!1141 (_1!6985 lt!415626)))))

(declare-fun e!780377 () Bool)

(declare-fun tp!345160 () Bool)

(declare-fun b!1215910 () Bool)

(declare-fun inv!16598 (Token!3932) Bool)

(assert (=> b!1215910 (= e!780384 (and (inv!16598 (h!17808 tokens!556)) e!780377 tp!345160))))

(declare-fun b!1215911 () Bool)

(declare-fun list!4573 (BalanceConc!8056) List!12463)

(assert (=> b!1215911 (= e!780381 (not (= (list!4573 lt!415627) (list!4573 lt!415625))))))

(declare-fun b!1215912 () Bool)

(declare-fun res!546755 () Bool)

(assert (=> b!1215912 (=> (not res!546755) (not e!780386))))

(declare-fun rulesInvariant!1704 (LexerInterface!1830 List!12464) Bool)

(assert (=> b!1215912 (= res!546755 (rulesInvariant!1704 thiss!20528 rules!2728))))

(assert (=> b!1215913 (= e!780390 (and tp!345164 tp!345162))))

(declare-fun b!1215914 () Bool)

(declare-fun res!546751 () Bool)

(assert (=> b!1215914 (=> (not res!546751) (not e!780386))))

(assert (=> b!1215914 (= res!546751 (not ((_ is Nil!12407) tokens!556)))))

(declare-fun b!1215915 () Bool)

(declare-fun e!780382 () Bool)

(assert (=> b!1215915 (= e!780382 e!780389)))

(declare-fun res!546757 () Bool)

(assert (=> b!1215915 (=> (not res!546757) (not e!780389))))

(assert (=> b!1215915 (= res!546757 (= (_1!6985 lt!415626) (h!17808 tokens!556)))))

(declare-datatypes ((Option!2497 0))(
  ( (None!2496) (Some!2496 (v!20627 tuple2!12276)) )
))
(declare-fun lt!415624 () Option!2497)

(declare-fun get!4082 (Option!2497) tuple2!12276)

(assert (=> b!1215915 (= lt!415626 (get!4082 lt!415624))))

(assert (=> b!1215916 (= e!780383 (and tp!345163 tp!345157))))

(declare-fun b!1215917 () Bool)

(assert (=> b!1215917 (= e!780386 e!780382)))

(declare-fun res!546756 () Bool)

(assert (=> b!1215917 (=> (not res!546756) (not e!780382))))

(declare-fun isDefined!2135 (Option!2497) Bool)

(assert (=> b!1215917 (= res!546756 (isDefined!2135 lt!415624))))

(declare-fun maxPrefix!952 (LexerInterface!1830 List!12464 List!12463) Option!2497)

(assert (=> b!1215917 (= lt!415624 (maxPrefix!952 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1215918 () Bool)

(declare-fun tp!345165 () Bool)

(declare-fun inv!21 (TokenValue!2203) Bool)

(assert (=> b!1215918 (= e!780377 (and (inv!21 (value!69444 (h!17808 tokens!556))) e!780376 tp!345165))))

(declare-fun b!1215919 () Bool)

(declare-fun tp!345158 () Bool)

(assert (=> b!1215919 (= e!780379 (and e!780387 tp!345158))))

(assert (= (and start!108638 res!546752) b!1215907))

(assert (= (and b!1215907 res!546753) b!1215912))

(assert (= (and b!1215912 res!546755) b!1215906))

(assert (= (and b!1215906 res!546750) b!1215914))

(assert (= (and b!1215914 res!546751) b!1215917))

(assert (= (and b!1215917 res!546756) b!1215915))

(assert (= (and b!1215915 res!546757) b!1215909))

(assert (= (and b!1215909 res!546754) b!1215911))

(assert (= b!1215904 b!1215913))

(assert (= b!1215919 b!1215904))

(assert (= (and start!108638 ((_ is Cons!12406) rules!2728)) b!1215919))

(assert (= (and start!108638 ((_ is Cons!12405) input!2346)) b!1215905))

(assert (= b!1215908 b!1215916))

(assert (= b!1215918 b!1215908))

(assert (= b!1215910 b!1215918))

(assert (= (and start!108638 ((_ is Cons!12407) tokens!556)) b!1215910))

(declare-fun m!1390375 () Bool)

(assert (=> b!1215910 m!1390375))

(declare-fun m!1390377 () Bool)

(assert (=> b!1215917 m!1390377))

(declare-fun m!1390379 () Bool)

(assert (=> b!1215917 m!1390379))

(declare-fun m!1390381 () Bool)

(assert (=> b!1215909 m!1390381))

(declare-fun m!1390383 () Bool)

(assert (=> b!1215909 m!1390383))

(declare-fun m!1390385 () Bool)

(assert (=> b!1215915 m!1390385))

(declare-fun m!1390387 () Bool)

(assert (=> b!1215908 m!1390387))

(declare-fun m!1390389 () Bool)

(assert (=> b!1215908 m!1390389))

(declare-fun m!1390391 () Bool)

(assert (=> b!1215911 m!1390391))

(declare-fun m!1390393 () Bool)

(assert (=> b!1215911 m!1390393))

(declare-fun m!1390395 () Bool)

(assert (=> b!1215907 m!1390395))

(declare-fun m!1390397 () Bool)

(assert (=> b!1215904 m!1390397))

(declare-fun m!1390399 () Bool)

(assert (=> b!1215904 m!1390399))

(declare-fun m!1390401 () Bool)

(assert (=> b!1215918 m!1390401))

(declare-fun m!1390403 () Bool)

(assert (=> b!1215906 m!1390403))

(declare-fun m!1390405 () Bool)

(assert (=> b!1215912 m!1390405))

(check-sat b_and!82579 (not b_next!29917) b_and!82577 (not b!1215909) (not b!1215918) (not b!1215908) (not b!1215919) (not b!1215904) (not b_next!29913) (not b!1215917) (not b!1215910) (not b!1215907) (not b!1215906) b_and!82583 (not b_next!29915) (not b!1215911) tp_is_empty!6331 (not b!1215915) (not b!1215905) b_and!82581 (not b!1215912) (not b_next!29919))
(check-sat b_and!82579 (not b_next!29913) (not b_next!29917) b_and!82577 b_and!82581 (not b_next!29919) b_and!82583 (not b_next!29915))
