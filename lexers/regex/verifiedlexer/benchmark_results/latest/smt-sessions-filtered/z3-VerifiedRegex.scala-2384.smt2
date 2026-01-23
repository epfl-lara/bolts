; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119974 () Bool)

(assert start!119974)

(declare-fun b!1342522 () Bool)

(declare-fun b_free!32723 () Bool)

(declare-fun b_next!33427 () Bool)

(assert (=> b!1342522 (= b_free!32723 (not b_next!33427))))

(declare-fun tp!388727 () Bool)

(declare-fun b_and!89859 () Bool)

(assert (=> b!1342522 (= tp!388727 b_and!89859)))

(declare-fun b_free!32725 () Bool)

(declare-fun b_next!33429 () Bool)

(assert (=> b!1342522 (= b_free!32725 (not b_next!33429))))

(declare-fun tp!388731 () Bool)

(declare-fun b_and!89861 () Bool)

(assert (=> b!1342522 (= tp!388731 b_and!89861)))

(declare-fun b!1342544 () Bool)

(declare-fun b_free!32727 () Bool)

(declare-fun b_next!33431 () Bool)

(assert (=> b!1342544 (= b_free!32727 (not b_next!33431))))

(declare-fun tp!388733 () Bool)

(declare-fun b_and!89863 () Bool)

(assert (=> b!1342544 (= tp!388733 b_and!89863)))

(declare-fun b_free!32729 () Bool)

(declare-fun b_next!33433 () Bool)

(assert (=> b!1342544 (= b_free!32729 (not b_next!33433))))

(declare-fun tp!388735 () Bool)

(declare-fun b_and!89865 () Bool)

(assert (=> b!1342544 (= tp!388735 b_and!89865)))

(declare-fun b!1342525 () Bool)

(declare-fun b_free!32731 () Bool)

(declare-fun b_next!33435 () Bool)

(assert (=> b!1342525 (= b_free!32731 (not b_next!33435))))

(declare-fun tp!388728 () Bool)

(declare-fun b_and!89867 () Bool)

(assert (=> b!1342525 (= tp!388728 b_and!89867)))

(declare-fun b_free!32733 () Bool)

(declare-fun b_next!33437 () Bool)

(assert (=> b!1342525 (= b_free!32733 (not b_next!33437))))

(declare-fun tp!388729 () Bool)

(declare-fun b_and!89869 () Bool)

(assert (=> b!1342525 (= tp!388729 b_and!89869)))

(declare-fun b!1342537 () Bool)

(assert (=> b!1342537 true))

(assert (=> b!1342537 true))

(declare-fun b!1342524 () Bool)

(assert (=> b!1342524 true))

(declare-fun e!859757 () Bool)

(assert (=> b!1342522 (= e!859757 (and tp!388727 tp!388731))))

(declare-fun b!1342523 () Bool)

(declare-fun res!604917 () Bool)

(declare-fun e!859762 () Bool)

(assert (=> b!1342523 (=> (not res!604917) (not e!859762))))

(declare-datatypes ((LexerInterface!2072 0))(
  ( (LexerInterfaceExt!2069 (__x!8763 Int)) (Lexer!2070) )
))
(declare-fun thiss!19762 () LexerInterface!2072)

(declare-datatypes ((List!13781 0))(
  ( (Nil!13715) (Cons!13715 (h!19116 (_ BitVec 16)) (t!119580 List!13781)) )
))
(declare-datatypes ((TokenValue!2467 0))(
  ( (FloatLiteralValue!4934 (text!17714 List!13781)) (TokenValueExt!2466 (__x!8764 Int)) (Broken!12335 (value!77351 List!13781)) (Object!2532) (End!2467) (Def!2467) (Underscore!2467) (Match!2467) (Else!2467) (Error!2467) (Case!2467) (If!2467) (Extends!2467) (Abstract!2467) (Class!2467) (Val!2467) (DelimiterValue!4934 (del!2527 List!13781)) (KeywordValue!2473 (value!77352 List!13781)) (CommentValue!4934 (value!77353 List!13781)) (WhitespaceValue!4934 (value!77354 List!13781)) (IndentationValue!2467 (value!77355 List!13781)) (String!16570) (Int32!2467) (Broken!12336 (value!77356 List!13781)) (Boolean!2468) (Unit!19830) (OperatorValue!2470 (op!2527 List!13781)) (IdentifierValue!4934 (value!77357 List!13781)) (IdentifierValue!4935 (value!77358 List!13781)) (WhitespaceValue!4935 (value!77359 List!13781)) (True!4934) (False!4934) (Broken!12337 (value!77360 List!13781)) (Broken!12338 (value!77361 List!13781)) (True!4935) (RightBrace!2467) (RightBracket!2467) (Colon!2467) (Null!2467) (Comma!2467) (LeftBracket!2467) (False!4935) (LeftBrace!2467) (ImaginaryLiteralValue!2467 (text!17715 List!13781)) (StringLiteralValue!7401 (value!77362 List!13781)) (EOFValue!2467 (value!77363 List!13781)) (IdentValue!2467 (value!77364 List!13781)) (DelimiterValue!4935 (value!77365 List!13781)) (DedentValue!2467 (value!77366 List!13781)) (NewLineValue!2467 (value!77367 List!13781)) (IntegerValue!7401 (value!77368 (_ BitVec 32)) (text!17716 List!13781)) (IntegerValue!7402 (value!77369 Int) (text!17717 List!13781)) (Times!2467) (Or!2467) (Equal!2467) (Minus!2467) (Broken!12339 (value!77370 List!13781)) (And!2467) (Div!2467) (LessEqual!2467) (Mod!2467) (Concat!6158) (Not!2467) (Plus!2467) (SpaceValue!2467 (value!77371 List!13781)) (IntegerValue!7403 (value!77372 Int) (text!17718 List!13781)) (StringLiteralValue!7402 (text!17719 List!13781)) (FloatLiteralValue!4935 (text!17720 List!13781)) (BytesLiteralValue!2467 (value!77373 List!13781)) (CommentValue!4935 (value!77374 List!13781)) (StringLiteralValue!7403 (value!77375 List!13781)) (ErrorTokenValue!2467 (msg!2528 List!13781)) )
))
(declare-datatypes ((C!7672 0))(
  ( (C!7673 (val!4396 Int)) )
))
(declare-datatypes ((List!13782 0))(
  ( (Nil!13716) (Cons!13716 (h!19117 C!7672) (t!119581 List!13782)) )
))
(declare-datatypes ((IArray!9043 0))(
  ( (IArray!9044 (innerList!4579 List!13782)) )
))
(declare-datatypes ((Conc!4519 0))(
  ( (Node!4519 (left!11761 Conc!4519) (right!12091 Conc!4519) (csize!9268 Int) (cheight!4730 Int)) (Leaf!6904 (xs!7238 IArray!9043) (csize!9269 Int)) (Empty!4519) )
))
(declare-datatypes ((BalanceConc!8978 0))(
  ( (BalanceConc!8979 (c!219905 Conc!4519)) )
))
(declare-datatypes ((Regex!3691 0))(
  ( (ElementMatch!3691 (c!219906 C!7672)) (Concat!6159 (regOne!7894 Regex!3691) (regTwo!7894 Regex!3691)) (EmptyExpr!3691) (Star!3691 (reg!4020 Regex!3691)) (EmptyLang!3691) (Union!3691 (regOne!7895 Regex!3691) (regTwo!7895 Regex!3691)) )
))
(declare-datatypes ((String!16571 0))(
  ( (String!16572 (value!77376 String)) )
))
(declare-datatypes ((TokenValueInjection!4594 0))(
  ( (TokenValueInjection!4595 (toValue!3620 Int) (toChars!3479 Int)) )
))
(declare-datatypes ((Rule!4554 0))(
  ( (Rule!4555 (regex!2377 Regex!3691) (tag!2639 String!16571) (isSeparator!2377 Bool) (transformation!2377 TokenValueInjection!4594)) )
))
(declare-datatypes ((List!13783 0))(
  ( (Nil!13717) (Cons!13717 (h!19118 Rule!4554) (t!119582 List!13783)) )
))
(declare-fun rules!2550 () List!13783)

(declare-datatypes ((Token!4416 0))(
  ( (Token!4417 (value!77377 TokenValue!2467) (rule!4122 Rule!4554) (size!11181 Int) (originalCharacters!3239 List!13782)) )
))
(declare-fun t2!34 () Token!4416)

(declare-fun rulesProduceIndividualToken!1041 (LexerInterface!2072 List!13783 Token!4416) Bool)

(assert (=> b!1342523 (= res!604917 (rulesProduceIndividualToken!1041 thiss!19762 rules!2550 t2!34))))

(declare-fun lambda!56282 () Int)

(declare-fun lambda!56283 () Int)

(declare-fun e!859756 () Bool)

(declare-datatypes ((List!13784 0))(
  ( (Nil!13718) (Cons!13718 (h!19119 Regex!3691) (t!119583 List!13784)) )
))
(declare-fun exists!415 (List!13784 Int) Bool)

(declare-fun map!3026 (List!13783 Int) List!13784)

(assert (=> b!1342524 (= e!859756 (exists!415 (map!3026 rules!2550 lambda!56282) lambda!56283))))

(declare-fun lt!444137 () List!13784)

(assert (=> b!1342524 (exists!415 lt!444137 lambda!56283)))

(declare-fun lt!444132 () Regex!3691)

(declare-datatypes ((Unit!19831 0))(
  ( (Unit!19832) )
))
(declare-fun lt!444138 () Unit!19831)

(declare-fun lt!444133 () List!13782)

(declare-fun matchRGenUnionSpec!108 (Regex!3691 List!13784 List!13782) Unit!19831)

(assert (=> b!1342524 (= lt!444138 (matchRGenUnionSpec!108 lt!444132 lt!444137 lt!444133))))

(assert (=> b!1342524 (= lt!444137 (map!3026 rules!2550 lambda!56282))))

(declare-fun e!859754 () Bool)

(assert (=> b!1342525 (= e!859754 (and tp!388728 tp!388729))))

(declare-fun b!1342526 () Bool)

(declare-fun res!604914 () Bool)

(assert (=> b!1342526 (=> (not res!604914) (not e!859762))))

(declare-fun t1!34 () Token!4416)

(assert (=> b!1342526 (= res!604914 (rulesProduceIndividualToken!1041 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1342527 () Bool)

(declare-fun e!859751 () Bool)

(declare-fun e!859752 () Bool)

(assert (=> b!1342527 (= e!859751 e!859752)))

(declare-fun res!604904 () Bool)

(assert (=> b!1342527 (=> (not res!604904) (not e!859752))))

(declare-fun lt!444128 () List!13782)

(declare-fun prefixMatch!200 (Regex!3691 List!13782) Bool)

(assert (=> b!1342527 (= res!604904 (prefixMatch!200 lt!444132 lt!444128))))

(declare-fun rulesRegex!260 (LexerInterface!2072 List!13783) Regex!3691)

(assert (=> b!1342527 (= lt!444132 (rulesRegex!260 thiss!19762 rules!2550))))

(declare-fun lt!444131 () List!13782)

(declare-fun lt!444130 () C!7672)

(declare-fun ++!3514 (List!13782 List!13782) List!13782)

(assert (=> b!1342527 (= lt!444128 (++!3514 lt!444131 (Cons!13716 lt!444130 Nil!13716)))))

(declare-fun lt!444134 () BalanceConc!8978)

(declare-fun apply!3249 (BalanceConc!8978 Int) C!7672)

(assert (=> b!1342527 (= lt!444130 (apply!3249 lt!444134 0))))

(declare-fun lt!444135 () BalanceConc!8978)

(declare-fun list!5227 (BalanceConc!8978) List!13782)

(assert (=> b!1342527 (= lt!444131 (list!5227 lt!444135))))

(declare-fun charsOf!1349 (Token!4416) BalanceConc!8978)

(assert (=> b!1342527 (= lt!444135 (charsOf!1349 t1!34))))

(declare-fun b!1342528 () Bool)

(declare-fun e!859745 () Bool)

(declare-fun e!859753 () Bool)

(assert (=> b!1342528 (= e!859745 e!859753)))

(declare-fun res!604911 () Bool)

(assert (=> b!1342528 (=> res!604911 e!859753)))

(declare-fun getSuffix!539 (List!13782 List!13782) List!13782)

(assert (=> b!1342528 (= res!604911 (not (= lt!444133 (++!3514 lt!444128 (getSuffix!539 lt!444133 lt!444128)))))))

(declare-fun lambda!56281 () Int)

(declare-fun pickWitness!146 (Int) List!13782)

(assert (=> b!1342528 (= lt!444133 (pickWitness!146 lambda!56281))))

(declare-fun tp!388726 () Bool)

(declare-fun b!1342529 () Bool)

(declare-fun e!859759 () Bool)

(declare-fun e!859748 () Bool)

(declare-fun inv!21 (TokenValue!2467) Bool)

(assert (=> b!1342529 (= e!859759 (and (inv!21 (value!77377 t1!34)) e!859748 tp!388726))))

(declare-fun e!859760 () Bool)

(declare-fun e!859750 () Bool)

(declare-fun b!1342530 () Bool)

(declare-fun tp!388730 () Bool)

(declare-fun inv!18051 (String!16571) Bool)

(declare-fun inv!18054 (TokenValueInjection!4594) Bool)

(assert (=> b!1342530 (= e!859760 (and tp!388730 (inv!18051 (tag!2639 (rule!4122 t2!34))) (inv!18054 (transformation!2377 (rule!4122 t2!34))) e!859750))))

(declare-fun tp!388725 () Bool)

(declare-fun b!1342531 () Bool)

(assert (=> b!1342531 (= e!859748 (and tp!388725 (inv!18051 (tag!2639 (rule!4122 t1!34))) (inv!18054 (transformation!2377 (rule!4122 t1!34))) e!859757))))

(declare-fun b!1342532 () Bool)

(declare-fun res!604910 () Bool)

(assert (=> b!1342532 (=> (not res!604910) (not e!859751))))

(declare-fun sepAndNonSepRulesDisjointChars!750 (List!13783 List!13783) Bool)

(assert (=> b!1342532 (= res!604910 (sepAndNonSepRulesDisjointChars!750 rules!2550 rules!2550))))

(declare-fun res!604912 () Bool)

(assert (=> start!119974 (=> (not res!604912) (not e!859762))))

(get-info :version)

(assert (=> start!119974 (= res!604912 ((_ is Lexer!2070) thiss!19762))))

(assert (=> start!119974 e!859762))

(assert (=> start!119974 true))

(declare-fun e!859747 () Bool)

(assert (=> start!119974 e!859747))

(declare-fun inv!18055 (Token!4416) Bool)

(assert (=> start!119974 (and (inv!18055 t1!34) e!859759)))

(declare-fun e!859749 () Bool)

(assert (=> start!119974 (and (inv!18055 t2!34) e!859749)))

(declare-fun b!1342533 () Bool)

(declare-fun e!859761 () Bool)

(declare-fun tp!388734 () Bool)

(assert (=> b!1342533 (= e!859747 (and e!859761 tp!388734))))

(declare-fun b!1342534 () Bool)

(declare-fun res!604918 () Bool)

(assert (=> b!1342534 (=> res!604918 e!859756)))

(declare-fun contains!2505 (List!13782 C!7672) Bool)

(assert (=> b!1342534 (= res!604918 (not (contains!2505 lt!444133 lt!444130)))))

(declare-fun b!1342535 () Bool)

(declare-fun res!604908 () Bool)

(assert (=> b!1342535 (=> (not res!604908) (not e!859762))))

(declare-fun isEmpty!8187 (List!13783) Bool)

(assert (=> b!1342535 (= res!604908 (not (isEmpty!8187 rules!2550)))))

(declare-fun b!1342536 () Bool)

(declare-fun res!604907 () Bool)

(assert (=> b!1342536 (=> res!604907 e!859756)))

(declare-fun matchR!1684 (Regex!3691 List!13782) Bool)

(assert (=> b!1342536 (= res!604907 (not (matchR!1684 lt!444132 lt!444133)))))

(assert (=> b!1342537 (= e!859752 (not e!859745))))

(declare-fun res!604909 () Bool)

(assert (=> b!1342537 (=> res!604909 e!859745)))

(declare-fun Exists!843 (Int) Bool)

(assert (=> b!1342537 (= res!604909 (not (Exists!843 lambda!56281)))))

(assert (=> b!1342537 (Exists!843 lambda!56281)))

(declare-fun lt!444129 () Unit!19831)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!161 (Regex!3691 List!13782) Unit!19831)

(assert (=> b!1342537 (= lt!444129 (lemmaPrefixMatchThenExistsStringThatMatches!161 lt!444132 lt!444128))))

(declare-fun b!1342538 () Bool)

(assert (=> b!1342538 (= e!859762 e!859751)))

(declare-fun res!604903 () Bool)

(assert (=> b!1342538 (=> (not res!604903) (not e!859751))))

(declare-fun size!11182 (BalanceConc!8978) Int)

(assert (=> b!1342538 (= res!604903 (> (size!11182 lt!444134) 0))))

(assert (=> b!1342538 (= lt!444134 (charsOf!1349 t2!34))))

(declare-fun b!1342539 () Bool)

(declare-fun res!604916 () Bool)

(assert (=> b!1342539 (=> (not res!604916) (not e!859751))))

(declare-fun separableTokensPredicate!355 (LexerInterface!2072 Token!4416 Token!4416 List!13783) Bool)

(assert (=> b!1342539 (= res!604916 (not (separableTokensPredicate!355 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1342540 () Bool)

(declare-fun res!604906 () Bool)

(assert (=> b!1342540 (=> res!604906 e!859756)))

(declare-fun lt!444136 () C!7672)

(assert (=> b!1342540 (= res!604906 (not (contains!2505 lt!444133 lt!444136)))))

(declare-fun b!1342541 () Bool)

(declare-fun res!604902 () Bool)

(assert (=> b!1342541 (=> (not res!604902) (not e!859762))))

(assert (=> b!1342541 (= res!604902 (not (= (isSeparator!2377 (rule!4122 t1!34)) (isSeparator!2377 (rule!4122 t2!34)))))))

(declare-fun b!1342542 () Bool)

(assert (=> b!1342542 (= e!859753 e!859756)))

(declare-fun res!604905 () Bool)

(assert (=> b!1342542 (=> res!604905 e!859756)))

(assert (=> b!1342542 (= res!604905 (not (contains!2505 lt!444128 lt!444136)))))

(assert (=> b!1342542 (= lt!444136 (apply!3249 lt!444135 0))))

(declare-fun b!1342543 () Bool)

(declare-fun tp!388736 () Bool)

(assert (=> b!1342543 (= e!859749 (and (inv!21 (value!77377 t2!34)) e!859760 tp!388736))))

(assert (=> b!1342544 (= e!859750 (and tp!388733 tp!388735))))

(declare-fun b!1342545 () Bool)

(declare-fun res!604913 () Bool)

(assert (=> b!1342545 (=> (not res!604913) (not e!859762))))

(declare-fun rulesInvariant!1942 (LexerInterface!2072 List!13783) Bool)

(assert (=> b!1342545 (= res!604913 (rulesInvariant!1942 thiss!19762 rules!2550))))

(declare-fun tp!388732 () Bool)

(declare-fun b!1342546 () Bool)

(assert (=> b!1342546 (= e!859761 (and tp!388732 (inv!18051 (tag!2639 (h!19118 rules!2550))) (inv!18054 (transformation!2377 (h!19118 rules!2550))) e!859754))))

(declare-fun b!1342547 () Bool)

(declare-fun res!604915 () Bool)

(assert (=> b!1342547 (=> res!604915 e!859756)))

(assert (=> b!1342547 (= res!604915 (not (contains!2505 lt!444128 lt!444130)))))

(assert (= (and start!119974 res!604912) b!1342535))

(assert (= (and b!1342535 res!604908) b!1342545))

(assert (= (and b!1342545 res!604913) b!1342526))

(assert (= (and b!1342526 res!604914) b!1342523))

(assert (= (and b!1342523 res!604917) b!1342541))

(assert (= (and b!1342541 res!604902) b!1342538))

(assert (= (and b!1342538 res!604903) b!1342532))

(assert (= (and b!1342532 res!604910) b!1342539))

(assert (= (and b!1342539 res!604916) b!1342527))

(assert (= (and b!1342527 res!604904) b!1342537))

(assert (= (and b!1342537 (not res!604909)) b!1342528))

(assert (= (and b!1342528 (not res!604911)) b!1342542))

(assert (= (and b!1342542 (not res!604905)) b!1342540))

(assert (= (and b!1342540 (not res!604906)) b!1342547))

(assert (= (and b!1342547 (not res!604915)) b!1342534))

(assert (= (and b!1342534 (not res!604918)) b!1342536))

(assert (= (and b!1342536 (not res!604907)) b!1342524))

(assert (= b!1342546 b!1342525))

(assert (= b!1342533 b!1342546))

(assert (= (and start!119974 ((_ is Cons!13717) rules!2550)) b!1342533))

(assert (= b!1342531 b!1342522))

(assert (= b!1342529 b!1342531))

(assert (= start!119974 b!1342529))

(assert (= b!1342530 b!1342544))

(assert (= b!1342543 b!1342530))

(assert (= start!119974 b!1342543))

(declare-fun m!1501121 () Bool)

(assert (=> b!1342540 m!1501121))

(declare-fun m!1501123 () Bool)

(assert (=> b!1342543 m!1501123))

(declare-fun m!1501125 () Bool)

(assert (=> b!1342528 m!1501125))

(assert (=> b!1342528 m!1501125))

(declare-fun m!1501127 () Bool)

(assert (=> b!1342528 m!1501127))

(declare-fun m!1501129 () Bool)

(assert (=> b!1342528 m!1501129))

(declare-fun m!1501131 () Bool)

(assert (=> start!119974 m!1501131))

(declare-fun m!1501133 () Bool)

(assert (=> start!119974 m!1501133))

(declare-fun m!1501135 () Bool)

(assert (=> b!1342546 m!1501135))

(declare-fun m!1501137 () Bool)

(assert (=> b!1342546 m!1501137))

(declare-fun m!1501139 () Bool)

(assert (=> b!1342527 m!1501139))

(declare-fun m!1501141 () Bool)

(assert (=> b!1342527 m!1501141))

(declare-fun m!1501143 () Bool)

(assert (=> b!1342527 m!1501143))

(declare-fun m!1501145 () Bool)

(assert (=> b!1342527 m!1501145))

(declare-fun m!1501147 () Bool)

(assert (=> b!1342527 m!1501147))

(declare-fun m!1501149 () Bool)

(assert (=> b!1342527 m!1501149))

(declare-fun m!1501151 () Bool)

(assert (=> b!1342536 m!1501151))

(declare-fun m!1501153 () Bool)

(assert (=> b!1342524 m!1501153))

(declare-fun m!1501155 () Bool)

(assert (=> b!1342524 m!1501155))

(assert (=> b!1342524 m!1501155))

(assert (=> b!1342524 m!1501155))

(declare-fun m!1501157 () Bool)

(assert (=> b!1342524 m!1501157))

(declare-fun m!1501159 () Bool)

(assert (=> b!1342524 m!1501159))

(declare-fun m!1501161 () Bool)

(assert (=> b!1342530 m!1501161))

(declare-fun m!1501163 () Bool)

(assert (=> b!1342530 m!1501163))

(declare-fun m!1501165 () Bool)

(assert (=> b!1342547 m!1501165))

(declare-fun m!1501167 () Bool)

(assert (=> b!1342523 m!1501167))

(declare-fun m!1501169 () Bool)

(assert (=> b!1342545 m!1501169))

(declare-fun m!1501171 () Bool)

(assert (=> b!1342542 m!1501171))

(declare-fun m!1501173 () Bool)

(assert (=> b!1342542 m!1501173))

(declare-fun m!1501175 () Bool)

(assert (=> b!1342534 m!1501175))

(declare-fun m!1501177 () Bool)

(assert (=> b!1342539 m!1501177))

(declare-fun m!1501179 () Bool)

(assert (=> b!1342531 m!1501179))

(declare-fun m!1501181 () Bool)

(assert (=> b!1342531 m!1501181))

(declare-fun m!1501183 () Bool)

(assert (=> b!1342535 m!1501183))

(declare-fun m!1501185 () Bool)

(assert (=> b!1342538 m!1501185))

(declare-fun m!1501187 () Bool)

(assert (=> b!1342538 m!1501187))

(declare-fun m!1501189 () Bool)

(assert (=> b!1342532 m!1501189))

(declare-fun m!1501191 () Bool)

(assert (=> b!1342529 m!1501191))

(declare-fun m!1501193 () Bool)

(assert (=> b!1342526 m!1501193))

(declare-fun m!1501195 () Bool)

(assert (=> b!1342537 m!1501195))

(assert (=> b!1342537 m!1501195))

(declare-fun m!1501197 () Bool)

(assert (=> b!1342537 m!1501197))

(check-sat b_and!89863 (not b!1342545) b_and!89869 b_and!89865 (not b_next!33435) (not b!1342542) b_and!89859 (not start!119974) (not b!1342528) (not b!1342537) (not b!1342536) (not b!1342523) (not b!1342543) (not b_next!33431) (not b!1342547) (not b!1342531) (not b!1342526) (not b!1342535) (not b!1342530) (not b!1342538) (not b!1342529) b_and!89867 (not b!1342533) b_and!89861 (not b!1342527) (not b!1342539) (not b_next!33433) (not b_next!33427) (not b_next!33437) (not b!1342534) (not b!1342524) (not b!1342546) (not b_next!33429) (not b!1342532) (not b!1342540))
(check-sat (not b_next!33431) b_and!89863 b_and!89867 b_and!89861 b_and!89869 (not b_next!33437) (not b_next!33429) b_and!89865 (not b_next!33435) b_and!89859 (not b_next!33433) (not b_next!33427))
