; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404370 () Bool)

(assert start!404370)

(declare-fun b!4228512 () Bool)

(declare-fun b_free!124843 () Bool)

(declare-fun b_next!125547 () Bool)

(assert (=> b!4228512 (= b_free!124843 (not b_next!125547))))

(declare-fun tp!1295265 () Bool)

(declare-fun b_and!334081 () Bool)

(assert (=> b!4228512 (= tp!1295265 b_and!334081)))

(declare-fun b_free!124845 () Bool)

(declare-fun b_next!125549 () Bool)

(assert (=> b!4228512 (= b_free!124845 (not b_next!125549))))

(declare-fun tp!1295269 () Bool)

(declare-fun b_and!334083 () Bool)

(assert (=> b!4228512 (= tp!1295269 b_and!334083)))

(declare-fun b!4228508 () Bool)

(declare-fun b_free!124847 () Bool)

(declare-fun b_next!125551 () Bool)

(assert (=> b!4228508 (= b_free!124847 (not b_next!125551))))

(declare-fun tp!1295267 () Bool)

(declare-fun b_and!334085 () Bool)

(assert (=> b!4228508 (= tp!1295267 b_and!334085)))

(declare-fun b_free!124849 () Bool)

(declare-fun b_next!125553 () Bool)

(assert (=> b!4228508 (= b_free!124849 (not b_next!125553))))

(declare-fun tp!1295272 () Bool)

(declare-fun b_and!334087 () Bool)

(assert (=> b!4228508 (= tp!1295272 b_and!334087)))

(declare-fun b!4228506 () Bool)

(declare-fun res!1738793 () Bool)

(declare-fun e!2625616 () Bool)

(assert (=> b!4228506 (=> (not res!1738793) (not e!2625616))))

(declare-fun lt!1503362 () Int)

(declare-datatypes ((C!25744 0))(
  ( (C!25745 (val!15034 Int)) )
))
(declare-datatypes ((List!46800 0))(
  ( (Nil!46676) (Cons!46676 (h!52096 C!25744) (t!349421 List!46800)) )
))
(declare-fun p!3014 () List!46800)

(declare-fun size!34194 (List!46800) Int)

(assert (=> b!4228506 (= res!1738793 (> lt!1503362 (size!34194 p!3014)))))

(declare-fun b!4228507 () Bool)

(declare-fun res!1738787 () Bool)

(declare-fun e!2625610 () Bool)

(assert (=> b!4228507 (=> (not res!1738787) (not e!2625610))))

(declare-fun input!3586 () List!46800)

(declare-fun isPrefix!4683 (List!46800 List!46800) Bool)

(assert (=> b!4228507 (= res!1738787 (isPrefix!4683 p!3014 input!3586))))

(declare-fun e!2625621 () Bool)

(assert (=> b!4228508 (= e!2625621 (and tp!1295267 tp!1295272))))

(declare-fun res!1738789 () Bool)

(assert (=> start!404370 (=> (not res!1738789) (not e!2625610))))

(declare-datatypes ((LexerInterface!7463 0))(
  ( (LexerInterfaceExt!7460 (__x!28419 Int)) (Lexer!7461) )
))
(declare-fun thiss!26785 () LexerInterface!7463)

(get-info :version)

(assert (=> start!404370 (= res!1738789 ((_ is Lexer!7461) thiss!26785))))

(assert (=> start!404370 e!2625610))

(assert (=> start!404370 true))

(declare-fun e!2625618 () Bool)

(assert (=> start!404370 e!2625618))

(declare-datatypes ((List!46801 0))(
  ( (Nil!46677) (Cons!46677 (h!52097 (_ BitVec 16)) (t!349422 List!46801)) )
))
(declare-datatypes ((TokenValue!8098 0))(
  ( (FloatLiteralValue!16196 (text!57131 List!46801)) (TokenValueExt!8097 (__x!28420 Int)) (Broken!40490 (value!244710 List!46801)) (Object!8221) (End!8098) (Def!8098) (Underscore!8098) (Match!8098) (Else!8098) (Error!8098) (Case!8098) (If!8098) (Extends!8098) (Abstract!8098) (Class!8098) (Val!8098) (DelimiterValue!16196 (del!8158 List!46801)) (KeywordValue!8104 (value!244711 List!46801)) (CommentValue!16196 (value!244712 List!46801)) (WhitespaceValue!16196 (value!244713 List!46801)) (IndentationValue!8098 (value!244714 List!46801)) (String!54363) (Int32!8098) (Broken!40491 (value!244715 List!46801)) (Boolean!8099) (Unit!65774) (OperatorValue!8101 (op!8158 List!46801)) (IdentifierValue!16196 (value!244716 List!46801)) (IdentifierValue!16197 (value!244717 List!46801)) (WhitespaceValue!16197 (value!244718 List!46801)) (True!16196) (False!16196) (Broken!40492 (value!244719 List!46801)) (Broken!40493 (value!244720 List!46801)) (True!16197) (RightBrace!8098) (RightBracket!8098) (Colon!8098) (Null!8098) (Comma!8098) (LeftBracket!8098) (False!16197) (LeftBrace!8098) (ImaginaryLiteralValue!8098 (text!57132 List!46801)) (StringLiteralValue!24294 (value!244721 List!46801)) (EOFValue!8098 (value!244722 List!46801)) (IdentValue!8098 (value!244723 List!46801)) (DelimiterValue!16197 (value!244724 List!46801)) (DedentValue!8098 (value!244725 List!46801)) (NewLineValue!8098 (value!244726 List!46801)) (IntegerValue!24294 (value!244727 (_ BitVec 32)) (text!57133 List!46801)) (IntegerValue!24295 (value!244728 Int) (text!57134 List!46801)) (Times!8098) (Or!8098) (Equal!8098) (Minus!8098) (Broken!40494 (value!244729 List!46801)) (And!8098) (Div!8098) (LessEqual!8098) (Mod!8098) (Concat!20871) (Not!8098) (Plus!8098) (SpaceValue!8098 (value!244730 List!46801)) (IntegerValue!24296 (value!244731 Int) (text!57135 List!46801)) (StringLiteralValue!24295 (text!57136 List!46801)) (FloatLiteralValue!16197 (text!57137 List!46801)) (BytesLiteralValue!8098 (value!244732 List!46801)) (CommentValue!16197 (value!244733 List!46801)) (StringLiteralValue!24296 (value!244734 List!46801)) (ErrorTokenValue!8098 (msg!8159 List!46801)) )
))
(declare-datatypes ((IArray!28163 0))(
  ( (IArray!28164 (innerList!14139 List!46800)) )
))
(declare-datatypes ((Conc!14079 0))(
  ( (Node!14079 (left!34717 Conc!14079) (right!35047 Conc!14079) (csize!28388 Int) (cheight!14290 Int)) (Leaf!21758 (xs!17385 IArray!28163) (csize!28389 Int)) (Empty!14079) )
))
(declare-datatypes ((Regex!12773 0))(
  ( (ElementMatch!12773 (c!718784 C!25744)) (Concat!20872 (regOne!26058 Regex!12773) (regTwo!26058 Regex!12773)) (EmptyExpr!12773) (Star!12773 (reg!13102 Regex!12773)) (EmptyLang!12773) (Union!12773 (regOne!26059 Regex!12773) (regTwo!26059 Regex!12773)) )
))
(declare-datatypes ((String!54364 0))(
  ( (String!54365 (value!244735 String)) )
))
(declare-datatypes ((BalanceConc!27752 0))(
  ( (BalanceConc!27753 (c!718785 Conc!14079)) )
))
(declare-datatypes ((TokenValueInjection!15624 0))(
  ( (TokenValueInjection!15625 (toValue!10596 Int) (toChars!10455 Int)) )
))
(declare-datatypes ((Rule!15536 0))(
  ( (Rule!15537 (regex!7868 Regex!12773) (tag!8732 String!54364) (isSeparator!7868 Bool) (transformation!7868 TokenValueInjection!15624)) )
))
(declare-datatypes ((Token!14370 0))(
  ( (Token!14371 (value!244736 TokenValue!8098) (rule!10982 Rule!15536) (size!34195 Int) (originalCharacters!8216 List!46800)) )
))
(declare-fun t!8425 () Token!14370)

(declare-fun e!2625617 () Bool)

(declare-fun inv!61342 (Token!14370) Bool)

(assert (=> start!404370 (and (inv!61342 t!8425) e!2625617)))

(declare-fun e!2625609 () Bool)

(assert (=> start!404370 e!2625609))

(declare-fun e!2625619 () Bool)

(assert (=> start!404370 e!2625619))

(declare-fun e!2625613 () Bool)

(assert (=> start!404370 e!2625613))

(declare-fun e!2625615 () Bool)

(assert (=> start!404370 e!2625615))

(declare-fun b!4228509 () Bool)

(declare-fun tp_is_empty!22481 () Bool)

(declare-fun tp!1295268 () Bool)

(assert (=> b!4228509 (= e!2625619 (and tp_is_empty!22481 tp!1295268))))

(declare-fun e!2625611 () Bool)

(declare-fun tp!1295266 () Bool)

(declare-fun b!4228510 () Bool)

(declare-fun inv!61339 (String!54364) Bool)

(declare-fun inv!61343 (TokenValueInjection!15624) Bool)

(assert (=> b!4228510 (= e!2625611 (and tp!1295266 (inv!61339 (tag!8732 (rule!10982 t!8425))) (inv!61343 (transformation!7868 (rule!10982 t!8425))) e!2625621))))

(declare-fun b!4228511 () Bool)

(declare-fun tp!1295271 () Bool)

(assert (=> b!4228511 (= e!2625618 (and tp_is_empty!22481 tp!1295271))))

(declare-fun e!2625614 () Bool)

(assert (=> b!4228512 (= e!2625614 (and tp!1295265 tp!1295269))))

(declare-fun b!4228513 () Bool)

(assert (=> b!4228513 (= e!2625616 (not true))))

(declare-datatypes ((tuple2!44266 0))(
  ( (tuple2!44267 (_1!25267 Token!14370) (_2!25267 List!46800)) )
))
(declare-datatypes ((Option!10016 0))(
  ( (None!10015) (Some!10015 (v!40943 tuple2!44266)) )
))
(declare-fun lt!1503364 () Option!10016)

(declare-fun r!4334 () Rule!15536)

(declare-fun maxPrefixOneRule!3410 (LexerInterface!7463 Rule!15536 List!46800) Option!10016)

(assert (=> b!4228513 (= lt!1503364 (maxPrefixOneRule!3410 thiss!26785 r!4334 input!3586))))

(assert (=> b!4228513 (isPrefix!4683 input!3586 input!3586)))

(declare-datatypes ((Unit!65775 0))(
  ( (Unit!65776) )
))
(declare-fun lt!1503363 () Unit!65775)

(declare-fun lemmaIsPrefixRefl!3094 (List!46800 List!46800) Unit!65775)

(assert (=> b!4228513 (= lt!1503363 (lemmaIsPrefixRefl!3094 input!3586 input!3586))))

(declare-fun b!4228514 () Bool)

(declare-fun tp!1295264 () Bool)

(assert (=> b!4228514 (= e!2625615 (and tp_is_empty!22481 tp!1295264))))

(declare-fun b!4228515 () Bool)

(declare-fun res!1738796 () Bool)

(assert (=> b!4228515 (=> (not res!1738796) (not e!2625610))))

(declare-fun pBis!134 () List!46800)

(assert (=> b!4228515 (= res!1738796 (isPrefix!4683 pBis!134 input!3586))))

(declare-fun b!4228516 () Bool)

(declare-fun tp!1295263 () Bool)

(assert (=> b!4228516 (= e!2625609 (and tp!1295263 (inv!61339 (tag!8732 r!4334)) (inv!61343 (transformation!7868 r!4334)) e!2625614))))

(declare-fun b!4228517 () Bool)

(assert (=> b!4228517 (= e!2625610 e!2625616)))

(declare-fun res!1738788 () Bool)

(assert (=> b!4228517 (=> (not res!1738788) (not e!2625616))))

(assert (=> b!4228517 (= res!1738788 (<= lt!1503362 (size!34194 input!3586)))))

(assert (=> b!4228517 (= lt!1503362 (size!34194 pBis!134))))

(declare-fun b!4228518 () Bool)

(declare-fun res!1738790 () Bool)

(assert (=> b!4228518 (=> (not res!1738790) (not e!2625616))))

(declare-fun validRegex!5791 (Regex!12773) Bool)

(assert (=> b!4228518 (= res!1738790 (validRegex!5791 (regex!7868 r!4334)))))

(declare-fun b!4228519 () Bool)

(declare-fun tp!1295270 () Bool)

(assert (=> b!4228519 (= e!2625613 (and tp_is_empty!22481 tp!1295270))))

(declare-fun b!4228520 () Bool)

(declare-fun res!1738795 () Bool)

(assert (=> b!4228520 (=> (not res!1738795) (not e!2625610))))

(declare-fun suffix!1590 () List!46800)

(declare-fun ++!11898 (List!46800 List!46800) List!46800)

(assert (=> b!4228520 (= res!1738795 (= (++!11898 p!3014 suffix!1590) input!3586))))

(declare-fun b!4228521 () Bool)

(declare-fun res!1738792 () Bool)

(assert (=> b!4228521 (=> (not res!1738792) (not e!2625616))))

(declare-fun matchR!6412 (Regex!12773 List!46800) Bool)

(assert (=> b!4228521 (= res!1738792 (matchR!6412 (regex!7868 r!4334) p!3014))))

(declare-fun b!4228522 () Bool)

(declare-fun res!1738791 () Bool)

(assert (=> b!4228522 (=> (not res!1738791) (not e!2625616))))

(declare-fun ruleValid!3564 (LexerInterface!7463 Rule!15536) Bool)

(assert (=> b!4228522 (= res!1738791 (ruleValid!3564 thiss!26785 r!4334))))

(declare-fun b!4228523 () Bool)

(declare-fun tp!1295262 () Bool)

(declare-fun inv!21 (TokenValue!8098) Bool)

(assert (=> b!4228523 (= e!2625617 (and (inv!21 (value!244736 t!8425)) e!2625611 tp!1295262))))

(declare-fun b!4228524 () Bool)

(declare-fun res!1738794 () Bool)

(assert (=> b!4228524 (=> (not res!1738794) (not e!2625616))))

(declare-fun list!16846 (BalanceConc!27752) List!46800)

(declare-fun charsOf!5243 (Token!14370) BalanceConc!27752)

(assert (=> b!4228524 (= res!1738794 (= (list!16846 (charsOf!5243 t!8425)) p!3014))))

(assert (= (and start!404370 res!1738789) b!4228520))

(assert (= (and b!4228520 res!1738795) b!4228507))

(assert (= (and b!4228507 res!1738787) b!4228515))

(assert (= (and b!4228515 res!1738796) b!4228517))

(assert (= (and b!4228517 res!1738788) b!4228506))

(assert (= (and b!4228506 res!1738793) b!4228522))

(assert (= (and b!4228522 res!1738791) b!4228518))

(assert (= (and b!4228518 res!1738790) b!4228521))

(assert (= (and b!4228521 res!1738792) b!4228524))

(assert (= (and b!4228524 res!1738794) b!4228513))

(assert (= (and start!404370 ((_ is Cons!46676) p!3014)) b!4228511))

(assert (= b!4228510 b!4228508))

(assert (= b!4228523 b!4228510))

(assert (= start!404370 b!4228523))

(assert (= b!4228516 b!4228512))

(assert (= start!404370 b!4228516))

(assert (= (and start!404370 ((_ is Cons!46676) input!3586)) b!4228509))

(assert (= (and start!404370 ((_ is Cons!46676) pBis!134)) b!4228519))

(assert (= (and start!404370 ((_ is Cons!46676) suffix!1590)) b!4228514))

(declare-fun m!4815479 () Bool)

(assert (=> b!4228520 m!4815479))

(declare-fun m!4815481 () Bool)

(assert (=> b!4228518 m!4815481))

(declare-fun m!4815483 () Bool)

(assert (=> b!4228510 m!4815483))

(declare-fun m!4815485 () Bool)

(assert (=> b!4228510 m!4815485))

(declare-fun m!4815487 () Bool)

(assert (=> b!4228523 m!4815487))

(declare-fun m!4815489 () Bool)

(assert (=> b!4228513 m!4815489))

(declare-fun m!4815491 () Bool)

(assert (=> b!4228513 m!4815491))

(declare-fun m!4815493 () Bool)

(assert (=> b!4228513 m!4815493))

(declare-fun m!4815495 () Bool)

(assert (=> start!404370 m!4815495))

(declare-fun m!4815497 () Bool)

(assert (=> b!4228516 m!4815497))

(declare-fun m!4815499 () Bool)

(assert (=> b!4228516 m!4815499))

(declare-fun m!4815501 () Bool)

(assert (=> b!4228522 m!4815501))

(declare-fun m!4815503 () Bool)

(assert (=> b!4228517 m!4815503))

(declare-fun m!4815505 () Bool)

(assert (=> b!4228517 m!4815505))

(declare-fun m!4815507 () Bool)

(assert (=> b!4228515 m!4815507))

(declare-fun m!4815509 () Bool)

(assert (=> b!4228506 m!4815509))

(declare-fun m!4815511 () Bool)

(assert (=> b!4228524 m!4815511))

(assert (=> b!4228524 m!4815511))

(declare-fun m!4815513 () Bool)

(assert (=> b!4228524 m!4815513))

(declare-fun m!4815515 () Bool)

(assert (=> b!4228521 m!4815515))

(declare-fun m!4815517 () Bool)

(assert (=> b!4228507 m!4815517))

(check-sat b_and!334087 b_and!334081 (not b_next!125553) b_and!334083 (not b_next!125549) (not b!4228514) (not b!4228520) (not b!4228523) (not b!4228513) (not b!4228516) (not b!4228519) (not b!4228506) (not b!4228515) (not b!4228507) (not b_next!125547) (not start!404370) (not b!4228511) b_and!334085 (not b!4228509) (not b!4228522) (not b!4228510) (not b!4228524) (not b_next!125551) (not b!4228521) (not b!4228518) (not b!4228517) tp_is_empty!22481)
(check-sat b_and!334087 b_and!334081 b_and!334085 (not b_next!125553) b_and!334083 (not b_next!125549) (not b_next!125551) (not b_next!125547))
