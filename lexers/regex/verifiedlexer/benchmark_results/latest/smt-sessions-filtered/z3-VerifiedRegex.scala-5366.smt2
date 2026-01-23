; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273658 () Bool)

(assert start!273658)

(declare-fun b!2820523 () Bool)

(declare-fun b_free!80645 () Bool)

(declare-fun b_next!81349 () Bool)

(assert (=> b!2820523 (= b_free!80645 (not b_next!81349))))

(declare-fun tp!900764 () Bool)

(declare-fun b_and!206031 () Bool)

(assert (=> b!2820523 (= tp!900764 b_and!206031)))

(declare-fun b_free!80647 () Bool)

(declare-fun b_next!81351 () Bool)

(assert (=> b!2820523 (= b_free!80647 (not b_next!81351))))

(declare-fun tp!900770 () Bool)

(declare-fun b_and!206033 () Bool)

(assert (=> b!2820523 (= tp!900770 b_and!206033)))

(declare-fun b!2820513 () Bool)

(declare-fun b_free!80649 () Bool)

(declare-fun b_next!81353 () Bool)

(assert (=> b!2820513 (= b_free!80649 (not b_next!81353))))

(declare-fun tp!900772 () Bool)

(declare-fun b_and!206035 () Bool)

(assert (=> b!2820513 (= tp!900772 b_and!206035)))

(declare-fun b_free!80651 () Bool)

(declare-fun b_next!81355 () Bool)

(assert (=> b!2820513 (= b_free!80651 (not b_next!81355))))

(declare-fun tp!900768 () Bool)

(declare-fun b_and!206037 () Bool)

(assert (=> b!2820513 (= tp!900768 b_and!206037)))

(declare-fun b!2820535 () Bool)

(declare-fun e!1784184 () Bool)

(assert (=> b!2820535 (= e!1784184 true)))

(declare-fun b!2820534 () Bool)

(declare-fun e!1784183 () Bool)

(assert (=> b!2820534 (= e!1784183 e!1784184)))

(declare-fun b!2820533 () Bool)

(declare-fun e!1784182 () Bool)

(assert (=> b!2820533 (= e!1784182 e!1784183)))

(declare-fun b!2820518 () Bool)

(assert (=> b!2820518 e!1784182))

(assert (= b!2820534 b!2820535))

(assert (= b!2820533 b!2820534))

(declare-datatypes ((C!16864 0))(
  ( (C!16865 (val!10412 Int)) )
))
(declare-datatypes ((List!33198 0))(
  ( (Nil!33074) (Cons!33074 (h!38494 (_ BitVec 16)) (t!230459 List!33198)) )
))
(declare-datatypes ((TokenValue!5181 0))(
  ( (FloatLiteralValue!10362 (text!36712 List!33198)) (TokenValueExt!5180 (__x!22035 Int)) (Broken!25905 (value!159397 List!33198)) (Object!5304) (End!5181) (Def!5181) (Underscore!5181) (Match!5181) (Else!5181) (Error!5181) (Case!5181) (If!5181) (Extends!5181) (Abstract!5181) (Class!5181) (Val!5181) (DelimiterValue!10362 (del!5241 List!33198)) (KeywordValue!5187 (value!159398 List!33198)) (CommentValue!10362 (value!159399 List!33198)) (WhitespaceValue!10362 (value!159400 List!33198)) (IndentationValue!5181 (value!159401 List!33198)) (String!36360) (Int32!5181) (Broken!25906 (value!159402 List!33198)) (Boolean!5182) (Unit!47022) (OperatorValue!5184 (op!5241 List!33198)) (IdentifierValue!10362 (value!159403 List!33198)) (IdentifierValue!10363 (value!159404 List!33198)) (WhitespaceValue!10363 (value!159405 List!33198)) (True!10362) (False!10362) (Broken!25907 (value!159406 List!33198)) (Broken!25908 (value!159407 List!33198)) (True!10363) (RightBrace!5181) (RightBracket!5181) (Colon!5181) (Null!5181) (Comma!5181) (LeftBracket!5181) (False!10363) (LeftBrace!5181) (ImaginaryLiteralValue!5181 (text!36713 List!33198)) (StringLiteralValue!15543 (value!159408 List!33198)) (EOFValue!5181 (value!159409 List!33198)) (IdentValue!5181 (value!159410 List!33198)) (DelimiterValue!10363 (value!159411 List!33198)) (DedentValue!5181 (value!159412 List!33198)) (NewLineValue!5181 (value!159413 List!33198)) (IntegerValue!15543 (value!159414 (_ BitVec 32)) (text!36714 List!33198)) (IntegerValue!15544 (value!159415 Int) (text!36715 List!33198)) (Times!5181) (Or!5181) (Equal!5181) (Minus!5181) (Broken!25909 (value!159416 List!33198)) (And!5181) (Div!5181) (LessEqual!5181) (Mod!5181) (Concat!13522) (Not!5181) (Plus!5181) (SpaceValue!5181 (value!159417 List!33198)) (IntegerValue!15545 (value!159418 Int) (text!36716 List!33198)) (StringLiteralValue!15544 (text!36717 List!33198)) (FloatLiteralValue!10363 (text!36718 List!33198)) (BytesLiteralValue!5181 (value!159419 List!33198)) (CommentValue!10363 (value!159420 List!33198)) (StringLiteralValue!15545 (value!159421 List!33198)) (ErrorTokenValue!5181 (msg!5242 List!33198)) )
))
(declare-datatypes ((List!33199 0))(
  ( (Nil!33075) (Cons!33075 (h!38495 C!16864) (t!230460 List!33199)) )
))
(declare-datatypes ((IArray!20529 0))(
  ( (IArray!20530 (innerList!10322 List!33199)) )
))
(declare-datatypes ((Conc!10262 0))(
  ( (Node!10262 (left!24976 Conc!10262) (right!25306 Conc!10262) (csize!20754 Int) (cheight!10473 Int)) (Leaf!15629 (xs!13374 IArray!20529) (csize!20755 Int)) (Empty!10262) )
))
(declare-datatypes ((BalanceConc!20162 0))(
  ( (BalanceConc!20163 (c!457024 Conc!10262)) )
))
(declare-datatypes ((TokenValueInjection!9790 0))(
  ( (TokenValueInjection!9791 (toValue!6969 Int) (toChars!6828 Int)) )
))
(declare-datatypes ((String!36361 0))(
  ( (String!36362 (value!159422 String)) )
))
(declare-datatypes ((Regex!8341 0))(
  ( (ElementMatch!8341 (c!457025 C!16864)) (Concat!13523 (regOne!17194 Regex!8341) (regTwo!17194 Regex!8341)) (EmptyExpr!8341) (Star!8341 (reg!8670 Regex!8341)) (EmptyLang!8341) (Union!8341 (regOne!17195 Regex!8341) (regTwo!17195 Regex!8341)) )
))
(declare-datatypes ((Rule!9702 0))(
  ( (Rule!9703 (regex!4951 Regex!8341) (tag!5455 String!36361) (isSeparator!4951 Bool) (transformation!4951 TokenValueInjection!9790)) )
))
(declare-datatypes ((List!33200 0))(
  ( (Nil!33076) (Cons!33076 (h!38496 Rule!9702) (t!230461 List!33200)) )
))
(declare-fun rules!4424 () List!33200)

(get-info :version)

(assert (= (and b!2820518 ((_ is Cons!33076) rules!4424)) b!2820533))

(declare-fun lambda!103535 () Int)

(declare-fun order!17553 () Int)

(declare-fun order!17551 () Int)

(declare-fun dynLambda!13826 (Int Int) Int)

(declare-fun dynLambda!13827 (Int Int) Int)

(assert (=> b!2820535 (< (dynLambda!13826 order!17551 (toValue!6969 (transformation!4951 (h!38496 rules!4424)))) (dynLambda!13827 order!17553 lambda!103535))))

(declare-fun order!17555 () Int)

(declare-fun dynLambda!13828 (Int Int) Int)

(assert (=> b!2820535 (< (dynLambda!13828 order!17555 (toChars!6828 (transformation!4951 (h!38496 rules!4424)))) (dynLambda!13827 order!17553 lambda!103535))))

(declare-fun b!2820505 () Bool)

(declare-fun e!1784173 () Bool)

(declare-fun e!1784169 () Bool)

(assert (=> b!2820505 (= e!1784173 e!1784169)))

(declare-fun res!1173727 () Bool)

(assert (=> b!2820505 (=> (not res!1173727) (not e!1784169))))

(declare-datatypes ((Token!9304 0))(
  ( (Token!9305 (value!159423 TokenValue!5181) (rule!7379 Rule!9702) (size!25749 Int) (originalCharacters!5683 List!33199)) )
))
(declare-datatypes ((List!33201 0))(
  ( (Nil!33077) (Cons!33077 (h!38497 Token!9304) (t!230462 List!33201)) )
))
(declare-fun lt!1006775 () List!33201)

(declare-datatypes ((LexerInterface!4542 0))(
  ( (LexerInterfaceExt!4539 (__x!22036 Int)) (Lexer!4540) )
))
(declare-fun thiss!27755 () LexerInterface!4542)

(declare-fun rulesProduceIndividualToken!2080 (LexerInterface!4542 List!33200 Token!9304) Bool)

(assert (=> b!2820505 (= res!1173727 (rulesProduceIndividualToken!2080 thiss!27755 rules!4424 (h!38497 lt!1006775)))))

(declare-fun b!2820506 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1594 (LexerInterface!4542 List!33200 List!33201) Bool)

(assert (=> b!2820506 (= e!1784169 (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 (t!230462 lt!1006775)))))

(declare-fun b!2820507 () Bool)

(declare-fun res!1173721 () Bool)

(declare-fun e!1784166 () Bool)

(assert (=> b!2820507 (=> (not res!1173721) (not e!1784166))))

(declare-fun l!6581 () List!33201)

(declare-fun tokensListTwoByTwoPredicateSeparableList!679 (LexerInterface!4542 List!33201 List!33200) Bool)

(assert (=> b!2820507 (= res!1173721 (tokensListTwoByTwoPredicateSeparableList!679 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820508 () Bool)

(declare-fun res!1173717 () Bool)

(assert (=> b!2820508 (=> (not res!1173717) (not e!1784166))))

(assert (=> b!2820508 (= res!1173717 (tokensListTwoByTwoPredicateSeparableList!679 thiss!27755 (t!230462 l!6581) rules!4424))))

(declare-fun b!2820509 () Bool)

(declare-fun res!1173724 () Bool)

(assert (=> b!2820509 (=> (not res!1173724) (not e!1784166))))

(declare-fun rulesInvariant!3960 (LexerInterface!4542 List!33200) Bool)

(assert (=> b!2820509 (= res!1173724 (rulesInvariant!3960 thiss!27755 rules!4424))))

(declare-fun b!2820510 () Bool)

(declare-fun res!1173719 () Bool)

(assert (=> b!2820510 (=> (not res!1173719) (not e!1784166))))

(assert (=> b!2820510 (= res!1173719 (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 l!6581))))

(declare-fun tp!900766 () Bool)

(declare-fun e!1784171 () Bool)

(declare-fun b!2820511 () Bool)

(declare-fun e!1784175 () Bool)

(declare-fun inv!44995 (String!36361) Bool)

(declare-fun inv!44998 (TokenValueInjection!9790) Bool)

(assert (=> b!2820511 (= e!1784175 (and tp!900766 (inv!44995 (tag!5455 (h!38496 rules!4424))) (inv!44998 (transformation!4951 (h!38496 rules!4424))) e!1784171))))

(declare-fun b!2820512 () Bool)

(declare-fun e!1784167 () Bool)

(declare-fun tp!900767 () Bool)

(assert (=> b!2820512 (= e!1784167 (and e!1784175 tp!900767))))

(declare-fun e!1784161 () Bool)

(assert (=> b!2820513 (= e!1784161 (and tp!900772 tp!900768))))

(declare-fun res!1173722 () Bool)

(assert (=> start!273658 (=> (not res!1173722) (not e!1784166))))

(assert (=> start!273658 (= res!1173722 ((_ is Lexer!4540) thiss!27755))))

(assert (=> start!273658 e!1784166))

(assert (=> start!273658 true))

(assert (=> start!273658 e!1784167))

(declare-fun e!1784170 () Bool)

(assert (=> start!273658 e!1784170))

(declare-fun b!2820514 () Bool)

(declare-fun res!1173725 () Bool)

(assert (=> b!2820514 (=> (not res!1173725) (not e!1784166))))

(declare-fun isEmpty!18292 (List!33200) Bool)

(assert (=> b!2820514 (= res!1173725 (not (isEmpty!18292 rules!4424)))))

(declare-fun b!2820515 () Bool)

(declare-fun res!1173720 () Bool)

(assert (=> b!2820515 (=> (not res!1173720) (not e!1784166))))

(assert (=> b!2820515 (= res!1173720 (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 (t!230462 l!6581)))))

(declare-fun b!2820516 () Bool)

(declare-fun e!1784165 () Bool)

(declare-fun e!1784160 () Bool)

(assert (=> b!2820516 (= e!1784165 e!1784160)))

(declare-fun res!1173723 () Bool)

(assert (=> b!2820516 (=> (not res!1173723) (not e!1784160))))

(declare-fun lt!1006774 () List!33201)

(assert (=> b!2820516 (= res!1173723 (rulesProduceIndividualToken!2080 thiss!27755 rules!4424 (h!38497 lt!1006774)))))

(declare-fun tp!900765 () Bool)

(declare-fun b!2820517 () Bool)

(declare-fun e!1784174 () Bool)

(assert (=> b!2820517 (= e!1784174 (and tp!900765 (inv!44995 (tag!5455 (rule!7379 (h!38497 l!6581)))) (inv!44998 (transformation!4951 (rule!7379 (h!38497 l!6581)))) e!1784161))))

(assert (=> b!2820518 (= e!1784166 (not (rulesInvariant!3960 Lexer!4540 rules!4424)))))

(assert (=> b!2820518 (= (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 lt!1006775) e!1784173)))

(declare-fun res!1173716 () Bool)

(assert (=> b!2820518 (=> res!1173716 e!1784173)))

(assert (=> b!2820518 (= res!1173716 (not ((_ is Cons!33077) lt!1006775)))))

(declare-fun i!1730 () Int)

(declare-fun take!545 (List!33201 Int) List!33201)

(assert (=> b!2820518 (= lt!1006775 (take!545 l!6581 i!1730))))

(declare-fun e!1784162 () Bool)

(assert (=> b!2820518 e!1784162))

(declare-fun res!1173718 () Bool)

(assert (=> b!2820518 (=> (not res!1173718) (not e!1784162))))

(declare-fun forall!6775 (List!33201 Int) Bool)

(assert (=> b!2820518 (= res!1173718 (forall!6775 lt!1006774 lambda!103535))))

(declare-datatypes ((Unit!47023 0))(
  ( (Unit!47024) )
))
(declare-fun lt!1006776 () Unit!47023)

(declare-fun lemmaForallSubseq!219 (List!33201 List!33201 Int) Unit!47023)

(assert (=> b!2820518 (= lt!1006776 (lemmaForallSubseq!219 lt!1006774 (t!230462 l!6581) lambda!103535))))

(assert (=> b!2820518 (= (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 lt!1006774) e!1784165)))

(declare-fun res!1173726 () Bool)

(assert (=> b!2820518 (=> res!1173726 e!1784165)))

(assert (=> b!2820518 (= res!1173726 (not ((_ is Cons!33077) lt!1006774)))))

(assert (=> b!2820518 (= lt!1006774 (take!545 (t!230462 l!6581) (- i!1730 1)))))

(declare-fun lt!1006777 () Unit!47023)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!46 (LexerInterface!4542 List!33201 Int List!33200) Unit!47023)

(assert (=> b!2820518 (= lt!1006777 (tokensListTwoByTwoPredicateSeparableTokensTakeList!46 thiss!27755 (t!230462 l!6581) (- i!1730 1) rules!4424))))

(declare-fun tp!900769 () Bool)

(declare-fun e!1784163 () Bool)

(declare-fun b!2820519 () Bool)

(declare-fun inv!21 (TokenValue!5181) Bool)

(assert (=> b!2820519 (= e!1784163 (and (inv!21 (value!159423 (h!38497 l!6581))) e!1784174 tp!900769))))

(declare-fun b!2820520 () Bool)

(assert (=> b!2820520 (= e!1784160 (rulesProduceEachTokenIndividuallyList!1594 thiss!27755 rules!4424 (t!230462 lt!1006774)))))

(declare-fun b!2820521 () Bool)

(assert (=> b!2820521 (= e!1784162 (tokensListTwoByTwoPredicateSeparableList!679 thiss!27755 lt!1006774 rules!4424))))

(declare-fun b!2820522 () Bool)

(declare-fun tp!900771 () Bool)

(declare-fun inv!44999 (Token!9304) Bool)

(assert (=> b!2820522 (= e!1784170 (and (inv!44999 (h!38497 l!6581)) e!1784163 tp!900771))))

(assert (=> b!2820523 (= e!1784171 (and tp!900764 tp!900770))))

(declare-fun b!2820524 () Bool)

(declare-fun res!1173728 () Bool)

(assert (=> b!2820524 (=> (not res!1173728) (not e!1784166))))

(assert (=> b!2820524 (= res!1173728 (and (not ((_ is Nil!33077) l!6581)) (> i!1730 0)))))

(assert (= (and start!273658 res!1173722) b!2820514))

(assert (= (and b!2820514 res!1173725) b!2820509))

(assert (= (and b!2820509 res!1173724) b!2820510))

(assert (= (and b!2820510 res!1173719) b!2820507))

(assert (= (and b!2820507 res!1173721) b!2820524))

(assert (= (and b!2820524 res!1173728) b!2820515))

(assert (= (and b!2820515 res!1173720) b!2820508))

(assert (= (and b!2820508 res!1173717) b!2820518))

(assert (= (and b!2820518 (not res!1173726)) b!2820516))

(assert (= (and b!2820516 res!1173723) b!2820520))

(assert (= (and b!2820518 res!1173718) b!2820521))

(assert (= (and b!2820518 (not res!1173716)) b!2820505))

(assert (= (and b!2820505 res!1173727) b!2820506))

(assert (= b!2820511 b!2820523))

(assert (= b!2820512 b!2820511))

(assert (= (and start!273658 ((_ is Cons!33076) rules!4424)) b!2820512))

(assert (= b!2820517 b!2820513))

(assert (= b!2820519 b!2820517))

(assert (= b!2820522 b!2820519))

(assert (= (and start!273658 ((_ is Cons!33077) l!6581)) b!2820522))

(declare-fun m!3251045 () Bool)

(assert (=> b!2820520 m!3251045))

(declare-fun m!3251047 () Bool)

(assert (=> b!2820510 m!3251047))

(declare-fun m!3251049 () Bool)

(assert (=> b!2820517 m!3251049))

(declare-fun m!3251051 () Bool)

(assert (=> b!2820517 m!3251051))

(declare-fun m!3251053 () Bool)

(assert (=> b!2820514 m!3251053))

(declare-fun m!3251055 () Bool)

(assert (=> b!2820509 m!3251055))

(declare-fun m!3251057 () Bool)

(assert (=> b!2820515 m!3251057))

(declare-fun m!3251059 () Bool)

(assert (=> b!2820508 m!3251059))

(declare-fun m!3251061 () Bool)

(assert (=> b!2820518 m!3251061))

(declare-fun m!3251063 () Bool)

(assert (=> b!2820518 m!3251063))

(declare-fun m!3251065 () Bool)

(assert (=> b!2820518 m!3251065))

(declare-fun m!3251067 () Bool)

(assert (=> b!2820518 m!3251067))

(declare-fun m!3251069 () Bool)

(assert (=> b!2820518 m!3251069))

(declare-fun m!3251071 () Bool)

(assert (=> b!2820518 m!3251071))

(declare-fun m!3251073 () Bool)

(assert (=> b!2820518 m!3251073))

(declare-fun m!3251075 () Bool)

(assert (=> b!2820518 m!3251075))

(declare-fun m!3251077 () Bool)

(assert (=> b!2820507 m!3251077))

(declare-fun m!3251079 () Bool)

(assert (=> b!2820519 m!3251079))

(declare-fun m!3251081 () Bool)

(assert (=> b!2820521 m!3251081))

(declare-fun m!3251083 () Bool)

(assert (=> b!2820506 m!3251083))

(declare-fun m!3251085 () Bool)

(assert (=> b!2820522 m!3251085))

(declare-fun m!3251087 () Bool)

(assert (=> b!2820516 m!3251087))

(declare-fun m!3251089 () Bool)

(assert (=> b!2820505 m!3251089))

(declare-fun m!3251091 () Bool)

(assert (=> b!2820511 m!3251091))

(declare-fun m!3251093 () Bool)

(assert (=> b!2820511 m!3251093))

(check-sat (not b_next!81355) (not b!2820514) (not b!2820505) (not b!2820510) (not b!2820507) (not b!2820508) (not b!2820518) (not b!2820511) (not b_next!81353) (not b!2820515) (not b!2820522) (not b!2820516) b_and!206037 b_and!206035 (not b!2820519) (not b!2820521) (not b!2820506) (not b_next!81349) (not b!2820517) (not b!2820509) (not b!2820512) (not b_next!81351) (not b!2820520) (not b!2820533) b_and!206033 b_and!206031)
(check-sat (not b_next!81349) (not b_next!81355) (not b_next!81351) (not b_next!81353) b_and!206037 b_and!206035 b_and!206033 b_and!206031)
