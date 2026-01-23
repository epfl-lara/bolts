; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124850 () Bool)

(assert start!124850)

(declare-fun b!1379591 () Bool)

(declare-fun b_free!33507 () Bool)

(declare-fun b_next!34211 () Bool)

(assert (=> b!1379591 (= b_free!33507 (not b_next!34211))))

(declare-fun tp!395417 () Bool)

(declare-fun b_and!92435 () Bool)

(assert (=> b!1379591 (= tp!395417 b_and!92435)))

(declare-fun b_free!33509 () Bool)

(declare-fun b_next!34213 () Bool)

(assert (=> b!1379591 (= b_free!33509 (not b_next!34213))))

(declare-fun tp!395416 () Bool)

(declare-fun b_and!92437 () Bool)

(assert (=> b!1379591 (= tp!395416 b_and!92437)))

(declare-fun b!1379585 () Bool)

(declare-fun b_free!33511 () Bool)

(declare-fun b_next!34215 () Bool)

(assert (=> b!1379585 (= b_free!33511 (not b_next!34215))))

(declare-fun tp!395423 () Bool)

(declare-fun b_and!92439 () Bool)

(assert (=> b!1379585 (= tp!395423 b_and!92439)))

(declare-fun b_free!33513 () Bool)

(declare-fun b_next!34217 () Bool)

(assert (=> b!1379585 (= b_free!33513 (not b_next!34217))))

(declare-fun tp!395422 () Bool)

(declare-fun b_and!92441 () Bool)

(assert (=> b!1379585 (= tp!395422 b_and!92441)))

(declare-fun b!1379592 () Bool)

(declare-fun b_free!33515 () Bool)

(declare-fun b_next!34219 () Bool)

(assert (=> b!1379592 (= b_free!33515 (not b_next!34219))))

(declare-fun tp!395426 () Bool)

(declare-fun b_and!92443 () Bool)

(assert (=> b!1379592 (= tp!395426 b_and!92443)))

(declare-fun b_free!33517 () Bool)

(declare-fun b_next!34221 () Bool)

(assert (=> b!1379592 (= b_free!33517 (not b_next!34221))))

(declare-fun tp!395418 () Bool)

(declare-fun b_and!92445 () Bool)

(assert (=> b!1379592 (= tp!395418 b_and!92445)))

(declare-fun b!1379574 () Bool)

(assert (=> b!1379574 true))

(assert (=> b!1379574 true))

(declare-fun b!1379570 () Bool)

(declare-fun e!881554 () Bool)

(declare-fun e!881540 () Bool)

(assert (=> b!1379570 (= e!881554 e!881540)))

(declare-fun res!622056 () Bool)

(assert (=> b!1379570 (=> (not res!622056) (not e!881540))))

(declare-datatypes ((C!7768 0))(
  ( (C!7769 (val!4444 Int)) )
))
(declare-datatypes ((Regex!3739 0))(
  ( (ElementMatch!3739 (c!226983 C!7768)) (Concat!6254 (regOne!7990 Regex!3739) (regTwo!7990 Regex!3739)) (EmptyExpr!3739) (Star!3739 (reg!4068 Regex!3739)) (EmptyLang!3739) (Union!3739 (regOne!7991 Regex!3739) (regTwo!7991 Regex!3739)) )
))
(declare-fun lt!458763 () Regex!3739)

(declare-datatypes ((List!14065 0))(
  ( (Nil!13999) (Cons!13999 (h!19400 C!7768) (t!121930 List!14065)) )
))
(declare-fun lt!458759 () List!14065)

(declare-fun prefixMatch!248 (Regex!3739 List!14065) Bool)

(assert (=> b!1379570 (= res!622056 (prefixMatch!248 lt!458763 lt!458759))))

(declare-datatypes ((LexerInterface!2120 0))(
  ( (LexerInterfaceExt!2117 (__x!8859 Int)) (Lexer!2118) )
))
(declare-fun thiss!19762 () LexerInterface!2120)

(declare-datatypes ((List!14066 0))(
  ( (Nil!14000) (Cons!14000 (h!19401 (_ BitVec 16)) (t!121931 List!14066)) )
))
(declare-datatypes ((TokenValue!2515 0))(
  ( (FloatLiteralValue!5030 (text!18050 List!14066)) (TokenValueExt!2514 (__x!8860 Int)) (Broken!12575 (value!78719 List!14066)) (Object!2580) (End!2515) (Def!2515) (Underscore!2515) (Match!2515) (Else!2515) (Error!2515) (Case!2515) (If!2515) (Extends!2515) (Abstract!2515) (Class!2515) (Val!2515) (DelimiterValue!5030 (del!2575 List!14066)) (KeywordValue!2521 (value!78720 List!14066)) (CommentValue!5030 (value!78721 List!14066)) (WhitespaceValue!5030 (value!78722 List!14066)) (IndentationValue!2515 (value!78723 List!14066)) (String!16810) (Int32!2515) (Broken!12576 (value!78724 List!14066)) (Boolean!2516) (Unit!20262) (OperatorValue!2518 (op!2575 List!14066)) (IdentifierValue!5030 (value!78725 List!14066)) (IdentifierValue!5031 (value!78726 List!14066)) (WhitespaceValue!5031 (value!78727 List!14066)) (True!5030) (False!5030) (Broken!12577 (value!78728 List!14066)) (Broken!12578 (value!78729 List!14066)) (True!5031) (RightBrace!2515) (RightBracket!2515) (Colon!2515) (Null!2515) (Comma!2515) (LeftBracket!2515) (False!5031) (LeftBrace!2515) (ImaginaryLiteralValue!2515 (text!18051 List!14066)) (StringLiteralValue!7545 (value!78730 List!14066)) (EOFValue!2515 (value!78731 List!14066)) (IdentValue!2515 (value!78732 List!14066)) (DelimiterValue!5031 (value!78733 List!14066)) (DedentValue!2515 (value!78734 List!14066)) (NewLineValue!2515 (value!78735 List!14066)) (IntegerValue!7545 (value!78736 (_ BitVec 32)) (text!18052 List!14066)) (IntegerValue!7546 (value!78737 Int) (text!18053 List!14066)) (Times!2515) (Or!2515) (Equal!2515) (Minus!2515) (Broken!12579 (value!78738 List!14066)) (And!2515) (Div!2515) (LessEqual!2515) (Mod!2515) (Concat!6255) (Not!2515) (Plus!2515) (SpaceValue!2515 (value!78739 List!14066)) (IntegerValue!7547 (value!78740 Int) (text!18054 List!14066)) (StringLiteralValue!7546 (text!18055 List!14066)) (FloatLiteralValue!5031 (text!18056 List!14066)) (BytesLiteralValue!2515 (value!78741 List!14066)) (CommentValue!5031 (value!78742 List!14066)) (StringLiteralValue!7547 (value!78743 List!14066)) (ErrorTokenValue!2515 (msg!2576 List!14066)) )
))
(declare-datatypes ((IArray!9227 0))(
  ( (IArray!9228 (innerList!4671 List!14065)) )
))
(declare-datatypes ((Conc!4611 0))(
  ( (Node!4611 (left!11973 Conc!4611) (right!12303 Conc!4611) (csize!9452 Int) (cheight!4822 Int)) (Leaf!7020 (xs!7338 IArray!9227) (csize!9453 Int)) (Empty!4611) )
))
(declare-datatypes ((BalanceConc!9162 0))(
  ( (BalanceConc!9163 (c!226984 Conc!4611)) )
))
(declare-datatypes ((String!16811 0))(
  ( (String!16812 (value!78744 String)) )
))
(declare-datatypes ((TokenValueInjection!4690 0))(
  ( (TokenValueInjection!4691 (toValue!3704 Int) (toChars!3563 Int)) )
))
(declare-datatypes ((Rule!4650 0))(
  ( (Rule!4651 (regex!2425 Regex!3739) (tag!2687 String!16811) (isSeparator!2425 Bool) (transformation!2425 TokenValueInjection!4690)) )
))
(declare-datatypes ((List!14067 0))(
  ( (Nil!14001) (Cons!14001 (h!19402 Rule!4650) (t!121932 List!14067)) )
))
(declare-fun rules!2550 () List!14067)

(declare-fun rulesRegex!308 (LexerInterface!2120 List!14067) Regex!3739)

(assert (=> b!1379570 (= lt!458763 (rulesRegex!308 thiss!19762 rules!2550))))

(declare-fun lt!458764 () List!14065)

(declare-fun lt!458766 () C!7768)

(declare-fun ++!3626 (List!14065 List!14065) List!14065)

(assert (=> b!1379570 (= lt!458759 (++!3626 lt!458764 (Cons!13999 lt!458766 Nil!13999)))))

(declare-fun lt!458758 () BalanceConc!9162)

(declare-fun apply!3467 (BalanceConc!9162 Int) C!7768)

(assert (=> b!1379570 (= lt!458766 (apply!3467 lt!458758 0))))

(declare-fun lt!458761 () BalanceConc!9162)

(declare-fun list!5410 (BalanceConc!9162) List!14065)

(assert (=> b!1379570 (= lt!458764 (list!5410 lt!458761))))

(declare-datatypes ((Token!4512 0))(
  ( (Token!4513 (value!78745 TokenValue!2515) (rule!4184 Rule!4650) (size!11473 Int) (originalCharacters!3287 List!14065)) )
))
(declare-fun t1!34 () Token!4512)

(declare-fun charsOf!1397 (Token!4512) BalanceConc!9162)

(assert (=> b!1379570 (= lt!458761 (charsOf!1397 t1!34))))

(declare-fun b!1379571 () Bool)

(declare-fun e!881536 () Bool)

(declare-fun e!881535 () Bool)

(assert (=> b!1379571 (= e!881536 e!881535)))

(declare-fun res!622069 () Bool)

(assert (=> b!1379571 (=> res!622069 e!881535)))

(declare-fun lt!458760 () C!7768)

(declare-fun contains!2659 (List!14065 C!7768) Bool)

(assert (=> b!1379571 (= res!622069 (not (contains!2659 lt!458759 lt!458760)))))

(assert (=> b!1379571 (= lt!458760 (apply!3467 lt!458761 0))))

(declare-fun b!1379572 () Bool)

(declare-fun e!881544 () Bool)

(declare-fun tp!395420 () Bool)

(declare-fun e!881547 () Bool)

(declare-fun inv!18338 (String!16811) Bool)

(declare-fun inv!18341 (TokenValueInjection!4690) Bool)

(assert (=> b!1379572 (= e!881544 (and tp!395420 (inv!18338 (tag!2687 (h!19402 rules!2550))) (inv!18341 (transformation!2425 (h!19402 rules!2550))) e!881547))))

(declare-fun b!1379573 () Bool)

(declare-fun res!622066 () Bool)

(assert (=> b!1379573 (=> res!622066 e!881535)))

(assert (=> b!1379573 (= res!622066 (not (contains!2659 lt!458759 lt!458766)))))

(declare-fun e!881552 () Bool)

(assert (=> b!1379574 (= e!881540 (not e!881552))))

(declare-fun res!622062 () Bool)

(assert (=> b!1379574 (=> res!622062 e!881552)))

(declare-fun lambda!59117 () Int)

(declare-fun Exists!889 (Int) Bool)

(assert (=> b!1379574 (= res!622062 (not (Exists!889 lambda!59117)))))

(assert (=> b!1379574 (Exists!889 lambda!59117)))

(declare-datatypes ((Unit!20263 0))(
  ( (Unit!20264) )
))
(declare-fun lt!458762 () Unit!20263)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!207 (Regex!3739 List!14065) Unit!20263)

(assert (=> b!1379574 (= lt!458762 (lemmaPrefixMatchThenExistsStringThatMatches!207 lt!458763 lt!458759))))

(declare-fun b!1379575 () Bool)

(declare-fun e!881549 () Bool)

(assert (=> b!1379575 (= e!881549 e!881554)))

(declare-fun res!622055 () Bool)

(assert (=> b!1379575 (=> (not res!622055) (not e!881554))))

(declare-fun size!11474 (BalanceConc!9162) Int)

(assert (=> b!1379575 (= res!622055 (> (size!11474 lt!458758) 0))))

(declare-fun t2!34 () Token!4512)

(assert (=> b!1379575 (= lt!458758 (charsOf!1397 t2!34))))

(declare-fun b!1379576 () Bool)

(declare-fun e!881545 () Bool)

(declare-fun e!881550 () Bool)

(declare-fun tp!395419 () Bool)

(assert (=> b!1379576 (= e!881550 (and tp!395419 (inv!18338 (tag!2687 (rule!4184 t2!34))) (inv!18341 (transformation!2425 (rule!4184 t2!34))) e!881545))))

(declare-fun b!1379577 () Bool)

(declare-fun res!622061 () Bool)

(assert (=> b!1379577 (=> (not res!622061) (not e!881554))))

(declare-fun separableTokensPredicate!403 (LexerInterface!2120 Token!4512 Token!4512 List!14067) Bool)

(assert (=> b!1379577 (= res!622061 (not (separableTokensPredicate!403 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1379578 () Bool)

(declare-fun res!622064 () Bool)

(assert (=> b!1379578 (=> (not res!622064) (not e!881554))))

(declare-fun sepAndNonSepRulesDisjointChars!798 (List!14067 List!14067) Bool)

(assert (=> b!1379578 (= res!622064 (sepAndNonSepRulesDisjointChars!798 rules!2550 rules!2550))))

(declare-fun lambda!59119 () Int)

(declare-fun b!1379579 () Bool)

(declare-fun lambda!59118 () Int)

(declare-datatypes ((List!14068 0))(
  ( (Nil!14002) (Cons!14002 (h!19403 Regex!3739) (t!121933 List!14068)) )
))
(declare-fun forall!3407 (List!14068 Int) Bool)

(declare-fun map!3098 (List!14067 Int) List!14068)

(assert (=> b!1379579 (= e!881535 (forall!3407 (map!3098 rules!2550 lambda!59118) lambda!59119))))

(declare-fun e!881539 () Bool)

(declare-fun tp!395421 () Bool)

(declare-fun b!1379580 () Bool)

(declare-fun inv!21 (TokenValue!2515) Bool)

(assert (=> b!1379580 (= e!881539 (and (inv!21 (value!78745 t2!34)) e!881550 tp!395421))))

(declare-fun b!1379581 () Bool)

(declare-fun res!622065 () Bool)

(assert (=> b!1379581 (=> res!622065 e!881535)))

(declare-fun lt!458765 () List!14065)

(assert (=> b!1379581 (= res!622065 (not (contains!2659 lt!458765 lt!458760)))))

(declare-fun b!1379582 () Bool)

(declare-fun res!622060 () Bool)

(assert (=> b!1379582 (=> (not res!622060) (not e!881549))))

(declare-fun rulesProduceIndividualToken!1089 (LexerInterface!2120 List!14067 Token!4512) Bool)

(assert (=> b!1379582 (= res!622060 (rulesProduceIndividualToken!1089 thiss!19762 rules!2550 t2!34))))

(declare-fun res!622070 () Bool)

(assert (=> start!124850 (=> (not res!622070) (not e!881549))))

(get-info :version)

(assert (=> start!124850 (= res!622070 ((_ is Lexer!2118) thiss!19762))))

(assert (=> start!124850 e!881549))

(assert (=> start!124850 true))

(declare-fun e!881543 () Bool)

(assert (=> start!124850 e!881543))

(declare-fun e!881551 () Bool)

(declare-fun inv!18342 (Token!4512) Bool)

(assert (=> start!124850 (and (inv!18342 t1!34) e!881551)))

(assert (=> start!124850 (and (inv!18342 t2!34) e!881539)))

(declare-fun b!1379583 () Bool)

(declare-fun tp!395424 () Bool)

(declare-fun e!881548 () Bool)

(declare-fun e!881538 () Bool)

(assert (=> b!1379583 (= e!881548 (and tp!395424 (inv!18338 (tag!2687 (rule!4184 t1!34))) (inv!18341 (transformation!2425 (rule!4184 t1!34))) e!881538))))

(declare-fun b!1379584 () Bool)

(declare-fun res!622059 () Bool)

(assert (=> b!1379584 (=> (not res!622059) (not e!881549))))

(assert (=> b!1379584 (= res!622059 (not (= (isSeparator!2425 (rule!4184 t1!34)) (isSeparator!2425 (rule!4184 t2!34)))))))

(assert (=> b!1379585 (= e!881545 (and tp!395423 tp!395422))))

(declare-fun b!1379586 () Bool)

(declare-fun tp!395415 () Bool)

(assert (=> b!1379586 (= e!881543 (and e!881544 tp!395415))))

(declare-fun b!1379587 () Bool)

(declare-fun res!622063 () Bool)

(assert (=> b!1379587 (=> res!622063 e!881535)))

(declare-fun matchR!1730 (Regex!3739 List!14065) Bool)

(assert (=> b!1379587 (= res!622063 (not (matchR!1730 lt!458763 lt!458765)))))

(declare-fun tp!395425 () Bool)

(declare-fun b!1379588 () Bool)

(assert (=> b!1379588 (= e!881551 (and (inv!21 (value!78745 t1!34)) e!881548 tp!395425))))

(declare-fun b!1379589 () Bool)

(declare-fun res!622058 () Bool)

(assert (=> b!1379589 (=> (not res!622058) (not e!881549))))

(assert (=> b!1379589 (= res!622058 (rulesProduceIndividualToken!1089 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1379590 () Bool)

(declare-fun res!622067 () Bool)

(assert (=> b!1379590 (=> (not res!622067) (not e!881549))))

(declare-fun isEmpty!8445 (List!14067) Bool)

(assert (=> b!1379590 (= res!622067 (not (isEmpty!8445 rules!2550)))))

(assert (=> b!1379591 (= e!881538 (and tp!395417 tp!395416))))

(assert (=> b!1379592 (= e!881547 (and tp!395426 tp!395418))))

(declare-fun b!1379593 () Bool)

(assert (=> b!1379593 (= e!881552 e!881536)))

(declare-fun res!622057 () Bool)

(assert (=> b!1379593 (=> res!622057 e!881536)))

(declare-fun getSuffix!585 (List!14065 List!14065) List!14065)

(assert (=> b!1379593 (= res!622057 (not (= lt!458765 (++!3626 lt!458759 (getSuffix!585 lt!458765 lt!458759)))))))

(declare-fun pickWitness!192 (Int) List!14065)

(assert (=> b!1379593 (= lt!458765 (pickWitness!192 lambda!59117))))

(declare-fun b!1379594 () Bool)

(declare-fun res!622068 () Bool)

(assert (=> b!1379594 (=> res!622068 e!881535)))

(assert (=> b!1379594 (= res!622068 (not (contains!2659 lt!458765 lt!458766)))))

(declare-fun b!1379595 () Bool)

(declare-fun res!622054 () Bool)

(assert (=> b!1379595 (=> (not res!622054) (not e!881549))))

(declare-fun rulesInvariant!1990 (LexerInterface!2120 List!14067) Bool)

(assert (=> b!1379595 (= res!622054 (rulesInvariant!1990 thiss!19762 rules!2550))))

(assert (= (and start!124850 res!622070) b!1379590))

(assert (= (and b!1379590 res!622067) b!1379595))

(assert (= (and b!1379595 res!622054) b!1379589))

(assert (= (and b!1379589 res!622058) b!1379582))

(assert (= (and b!1379582 res!622060) b!1379584))

(assert (= (and b!1379584 res!622059) b!1379575))

(assert (= (and b!1379575 res!622055) b!1379578))

(assert (= (and b!1379578 res!622064) b!1379577))

(assert (= (and b!1379577 res!622061) b!1379570))

(assert (= (and b!1379570 res!622056) b!1379574))

(assert (= (and b!1379574 (not res!622062)) b!1379593))

(assert (= (and b!1379593 (not res!622057)) b!1379571))

(assert (= (and b!1379571 (not res!622069)) b!1379581))

(assert (= (and b!1379581 (not res!622065)) b!1379573))

(assert (= (and b!1379573 (not res!622066)) b!1379594))

(assert (= (and b!1379594 (not res!622068)) b!1379587))

(assert (= (and b!1379587 (not res!622063)) b!1379579))

(assert (= b!1379572 b!1379592))

(assert (= b!1379586 b!1379572))

(assert (= (and start!124850 ((_ is Cons!14001) rules!2550)) b!1379586))

(assert (= b!1379583 b!1379591))

(assert (= b!1379588 b!1379583))

(assert (= start!124850 b!1379588))

(assert (= b!1379576 b!1379585))

(assert (= b!1379580 b!1379576))

(assert (= start!124850 b!1379580))

(declare-fun m!1552201 () Bool)

(assert (=> b!1379593 m!1552201))

(assert (=> b!1379593 m!1552201))

(declare-fun m!1552203 () Bool)

(assert (=> b!1379593 m!1552203))

(declare-fun m!1552205 () Bool)

(assert (=> b!1379593 m!1552205))

(declare-fun m!1552207 () Bool)

(assert (=> b!1379577 m!1552207))

(declare-fun m!1552209 () Bool)

(assert (=> b!1379587 m!1552209))

(declare-fun m!1552211 () Bool)

(assert (=> b!1379594 m!1552211))

(declare-fun m!1552213 () Bool)

(assert (=> b!1379576 m!1552213))

(declare-fun m!1552215 () Bool)

(assert (=> b!1379576 m!1552215))

(declare-fun m!1552217 () Bool)

(assert (=> start!124850 m!1552217))

(declare-fun m!1552219 () Bool)

(assert (=> start!124850 m!1552219))

(declare-fun m!1552221 () Bool)

(assert (=> b!1379570 m!1552221))

(declare-fun m!1552223 () Bool)

(assert (=> b!1379570 m!1552223))

(declare-fun m!1552225 () Bool)

(assert (=> b!1379570 m!1552225))

(declare-fun m!1552227 () Bool)

(assert (=> b!1379570 m!1552227))

(declare-fun m!1552229 () Bool)

(assert (=> b!1379570 m!1552229))

(declare-fun m!1552231 () Bool)

(assert (=> b!1379570 m!1552231))

(declare-fun m!1552233 () Bool)

(assert (=> b!1379590 m!1552233))

(declare-fun m!1552235 () Bool)

(assert (=> b!1379571 m!1552235))

(declare-fun m!1552237 () Bool)

(assert (=> b!1379571 m!1552237))

(declare-fun m!1552239 () Bool)

(assert (=> b!1379595 m!1552239))

(declare-fun m!1552241 () Bool)

(assert (=> b!1379589 m!1552241))

(declare-fun m!1552243 () Bool)

(assert (=> b!1379583 m!1552243))

(declare-fun m!1552245 () Bool)

(assert (=> b!1379583 m!1552245))

(declare-fun m!1552247 () Bool)

(assert (=> b!1379582 m!1552247))

(declare-fun m!1552249 () Bool)

(assert (=> b!1379578 m!1552249))

(declare-fun m!1552251 () Bool)

(assert (=> b!1379579 m!1552251))

(assert (=> b!1379579 m!1552251))

(declare-fun m!1552253 () Bool)

(assert (=> b!1379579 m!1552253))

(declare-fun m!1552255 () Bool)

(assert (=> b!1379572 m!1552255))

(declare-fun m!1552257 () Bool)

(assert (=> b!1379572 m!1552257))

(declare-fun m!1552259 () Bool)

(assert (=> b!1379573 m!1552259))

(declare-fun m!1552261 () Bool)

(assert (=> b!1379580 m!1552261))

(declare-fun m!1552263 () Bool)

(assert (=> b!1379575 m!1552263))

(declare-fun m!1552265 () Bool)

(assert (=> b!1379575 m!1552265))

(declare-fun m!1552267 () Bool)

(assert (=> b!1379588 m!1552267))

(declare-fun m!1552269 () Bool)

(assert (=> b!1379581 m!1552269))

(declare-fun m!1552271 () Bool)

(assert (=> b!1379574 m!1552271))

(assert (=> b!1379574 m!1552271))

(declare-fun m!1552273 () Bool)

(assert (=> b!1379574 m!1552273))

(check-sat (not b!1379571) b_and!92443 (not b!1379583) (not b!1379574) b_and!92435 b_and!92441 (not b!1379595) b_and!92437 (not b!1379582) (not b!1379573) (not b!1379579) (not b!1379586) (not b!1379590) (not b!1379593) (not b!1379581) (not b!1379575) (not b_next!34211) (not b!1379572) (not b_next!34221) (not b!1379588) (not b_next!34219) (not b_next!34213) (not start!124850) (not b_next!34217) b_and!92445 (not b!1379594) (not b!1379587) (not b_next!34215) (not b!1379580) (not b!1379576) (not b!1379589) (not b!1379570) b_and!92439 (not b!1379577) (not b!1379578))
(check-sat b_and!92443 (not b_next!34211) b_and!92435 b_and!92441 b_and!92437 b_and!92445 (not b_next!34215) b_and!92439 (not b_next!34221) (not b_next!34219) (not b_next!34213) (not b_next!34217))
(get-model)

(declare-fun d!393865 () Bool)

(declare-fun lt!458769 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2043 (List!14065) (InoxSet C!7768))

(assert (=> d!393865 (= lt!458769 (select (content!2043 lt!458765) lt!458766))))

(declare-fun e!881565 () Bool)

(assert (=> d!393865 (= lt!458769 e!881565)))

(declare-fun res!622090 () Bool)

(assert (=> d!393865 (=> (not res!622090) (not e!881565))))

(assert (=> d!393865 (= res!622090 ((_ is Cons!13999) lt!458765))))

(assert (=> d!393865 (= (contains!2659 lt!458765 lt!458766) lt!458769)))

(declare-fun b!1379610 () Bool)

(declare-fun e!881566 () Bool)

(assert (=> b!1379610 (= e!881565 e!881566)))

(declare-fun res!622089 () Bool)

(assert (=> b!1379610 (=> res!622089 e!881566)))

(assert (=> b!1379610 (= res!622089 (= (h!19400 lt!458765) lt!458766))))

(declare-fun b!1379611 () Bool)

(assert (=> b!1379611 (= e!881566 (contains!2659 (t!121930 lt!458765) lt!458766))))

(assert (= (and d!393865 res!622090) b!1379610))

(assert (= (and b!1379610 (not res!622089)) b!1379611))

(declare-fun m!1552279 () Bool)

(assert (=> d!393865 m!1552279))

(declare-fun m!1552281 () Bool)

(assert (=> d!393865 m!1552281))

(declare-fun m!1552283 () Bool)

(assert (=> b!1379611 m!1552283))

(assert (=> b!1379594 d!393865))

(declare-fun d!393867 () Bool)

(declare-fun lt!458770 () Bool)

(assert (=> d!393867 (= lt!458770 (select (content!2043 lt!458759) lt!458766))))

(declare-fun e!881567 () Bool)

(assert (=> d!393867 (= lt!458770 e!881567)))

(declare-fun res!622092 () Bool)

(assert (=> d!393867 (=> (not res!622092) (not e!881567))))

(assert (=> d!393867 (= res!622092 ((_ is Cons!13999) lt!458759))))

(assert (=> d!393867 (= (contains!2659 lt!458759 lt!458766) lt!458770)))

(declare-fun b!1379612 () Bool)

(declare-fun e!881568 () Bool)

(assert (=> b!1379612 (= e!881567 e!881568)))

(declare-fun res!622091 () Bool)

(assert (=> b!1379612 (=> res!622091 e!881568)))

(assert (=> b!1379612 (= res!622091 (= (h!19400 lt!458759) lt!458766))))

(declare-fun b!1379613 () Bool)

(assert (=> b!1379613 (= e!881568 (contains!2659 (t!121930 lt!458759) lt!458766))))

(assert (= (and d!393867 res!622092) b!1379612))

(assert (= (and b!1379612 (not res!622091)) b!1379613))

(declare-fun m!1552285 () Bool)

(assert (=> d!393867 m!1552285))

(declare-fun m!1552287 () Bool)

(assert (=> d!393867 m!1552287))

(declare-fun m!1552289 () Bool)

(assert (=> b!1379613 m!1552289))

(assert (=> b!1379573 d!393867))

(declare-fun d!393869 () Bool)

(assert (=> d!393869 (= (inv!18338 (tag!2687 (h!19402 rules!2550))) (= (mod (str.len (value!78744 (tag!2687 (h!19402 rules!2550)))) 2) 0))))

(assert (=> b!1379572 d!393869))

(declare-fun d!393871 () Bool)

(declare-fun res!622095 () Bool)

(declare-fun e!881571 () Bool)

(assert (=> d!393871 (=> (not res!622095) (not e!881571))))

(declare-fun semiInverseModEq!934 (Int Int) Bool)

(assert (=> d!393871 (= res!622095 (semiInverseModEq!934 (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (h!19402 rules!2550)))))))

(assert (=> d!393871 (= (inv!18341 (transformation!2425 (h!19402 rules!2550))) e!881571)))

(declare-fun b!1379616 () Bool)

(declare-fun equivClasses!893 (Int Int) Bool)

(assert (=> b!1379616 (= e!881571 (equivClasses!893 (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (h!19402 rules!2550)))))))

(assert (= (and d!393871 res!622095) b!1379616))

(declare-fun m!1552291 () Bool)

(assert (=> d!393871 m!1552291))

(declare-fun m!1552293 () Bool)

(assert (=> b!1379616 m!1552293))

(assert (=> b!1379572 d!393871))

(declare-fun d!393873 () Bool)

(assert (=> d!393873 (= (inv!18338 (tag!2687 (rule!4184 t1!34))) (= (mod (str.len (value!78744 (tag!2687 (rule!4184 t1!34)))) 2) 0))))

(assert (=> b!1379583 d!393873))

(declare-fun d!393875 () Bool)

(declare-fun res!622096 () Bool)

(declare-fun e!881572 () Bool)

(assert (=> d!393875 (=> (not res!622096) (not e!881572))))

(assert (=> d!393875 (= res!622096 (semiInverseModEq!934 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))))))

(assert (=> d!393875 (= (inv!18341 (transformation!2425 (rule!4184 t1!34))) e!881572)))

(declare-fun b!1379617 () Bool)

(assert (=> b!1379617 (= e!881572 (equivClasses!893 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))))))

(assert (= (and d!393875 res!622096) b!1379617))

(declare-fun m!1552295 () Bool)

(assert (=> d!393875 m!1552295))

(declare-fun m!1552297 () Bool)

(assert (=> b!1379617 m!1552297))

(assert (=> b!1379583 d!393875))

(declare-fun d!393877 () Bool)

(declare-fun lt!458822 () Bool)

(declare-fun e!881698 () Bool)

(assert (=> d!393877 (= lt!458822 e!881698)))

(declare-fun res!622193 () Bool)

(assert (=> d!393877 (=> (not res!622193) (not e!881698))))

(declare-datatypes ((List!14071 0))(
  ( (Nil!14005) (Cons!14005 (h!19406 Token!4512) (t!121970 List!14071)) )
))
(declare-datatypes ((IArray!9231 0))(
  ( (IArray!9232 (innerList!4673 List!14071)) )
))
(declare-datatypes ((Conc!4613 0))(
  ( (Node!4613 (left!11975 Conc!4613) (right!12305 Conc!4613) (csize!9456 Int) (cheight!4824 Int)) (Leaf!7022 (xs!7340 IArray!9231) (csize!9457 Int)) (Empty!4613) )
))
(declare-datatypes ((BalanceConc!9166 0))(
  ( (BalanceConc!9167 (c!227046 Conc!4613)) )
))
(declare-fun list!5413 (BalanceConc!9166) List!14071)

(declare-datatypes ((tuple2!13614 0))(
  ( (tuple2!13615 (_1!7693 BalanceConc!9166) (_2!7693 BalanceConc!9162)) )
))
(declare-fun lex!947 (LexerInterface!2120 List!14067 BalanceConc!9162) tuple2!13614)

(declare-fun print!886 (LexerInterface!2120 BalanceConc!9166) BalanceConc!9162)

(declare-fun singletonSeq!1063 (Token!4512) BalanceConc!9166)

(assert (=> d!393877 (= res!622193 (= (list!5413 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))))) (list!5413 (singletonSeq!1063 t2!34))))))

(declare-fun e!881697 () Bool)

(assert (=> d!393877 (= lt!458822 e!881697)))

(declare-fun res!622194 () Bool)

(assert (=> d!393877 (=> (not res!622194) (not e!881697))))

(declare-fun lt!458823 () tuple2!13614)

(declare-fun size!11480 (BalanceConc!9166) Int)

(assert (=> d!393877 (= res!622194 (= (size!11480 (_1!7693 lt!458823)) 1))))

(assert (=> d!393877 (= lt!458823 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))))))

(assert (=> d!393877 (not (isEmpty!8445 rules!2550))))

(assert (=> d!393877 (= (rulesProduceIndividualToken!1089 thiss!19762 rules!2550 t2!34) lt!458822)))

(declare-fun b!1379818 () Bool)

(declare-fun res!622192 () Bool)

(assert (=> b!1379818 (=> (not res!622192) (not e!881697))))

(declare-fun apply!3471 (BalanceConc!9166 Int) Token!4512)

(assert (=> b!1379818 (= res!622192 (= (apply!3471 (_1!7693 lt!458823) 0) t2!34))))

(declare-fun b!1379819 () Bool)

(declare-fun isEmpty!8448 (BalanceConc!9162) Bool)

(assert (=> b!1379819 (= e!881697 (isEmpty!8448 (_2!7693 lt!458823)))))

(declare-fun b!1379820 () Bool)

(assert (=> b!1379820 (= e!881698 (isEmpty!8448 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))))))))

(assert (= (and d!393877 res!622194) b!1379818))

(assert (= (and b!1379818 res!622192) b!1379819))

(assert (= (and d!393877 res!622193) b!1379820))

(declare-fun m!1552537 () Bool)

(assert (=> d!393877 m!1552537))

(declare-fun m!1552539 () Bool)

(assert (=> d!393877 m!1552539))

(assert (=> d!393877 m!1552233))

(assert (=> d!393877 m!1552537))

(declare-fun m!1552541 () Bool)

(assert (=> d!393877 m!1552541))

(assert (=> d!393877 m!1552537))

(declare-fun m!1552543 () Bool)

(assert (=> d!393877 m!1552543))

(assert (=> d!393877 m!1552541))

(declare-fun m!1552545 () Bool)

(assert (=> d!393877 m!1552545))

(declare-fun m!1552547 () Bool)

(assert (=> d!393877 m!1552547))

(declare-fun m!1552549 () Bool)

(assert (=> b!1379818 m!1552549))

(declare-fun m!1552551 () Bool)

(assert (=> b!1379819 m!1552551))

(assert (=> b!1379820 m!1552537))

(assert (=> b!1379820 m!1552537))

(assert (=> b!1379820 m!1552541))

(assert (=> b!1379820 m!1552541))

(assert (=> b!1379820 m!1552545))

(declare-fun m!1552553 () Bool)

(assert (=> b!1379820 m!1552553))

(assert (=> b!1379582 d!393877))

(declare-fun d!393955 () Bool)

(declare-fun e!881703 () Bool)

(assert (=> d!393955 e!881703))

(declare-fun res!622199 () Bool)

(assert (=> d!393955 (=> (not res!622199) (not e!881703))))

(declare-fun lt!458826 () List!14065)

(assert (=> d!393955 (= res!622199 (= (content!2043 lt!458826) ((_ map or) (content!2043 lt!458759) (content!2043 (getSuffix!585 lt!458765 lt!458759)))))))

(declare-fun e!881704 () List!14065)

(assert (=> d!393955 (= lt!458826 e!881704)))

(declare-fun c!227018 () Bool)

(assert (=> d!393955 (= c!227018 ((_ is Nil!13999) lt!458759))))

(assert (=> d!393955 (= (++!3626 lt!458759 (getSuffix!585 lt!458765 lt!458759)) lt!458826)))

(declare-fun b!1379831 () Bool)

(declare-fun res!622200 () Bool)

(assert (=> b!1379831 (=> (not res!622200) (not e!881703))))

(declare-fun size!11481 (List!14065) Int)

(assert (=> b!1379831 (= res!622200 (= (size!11481 lt!458826) (+ (size!11481 lt!458759) (size!11481 (getSuffix!585 lt!458765 lt!458759)))))))

(declare-fun b!1379830 () Bool)

(assert (=> b!1379830 (= e!881704 (Cons!13999 (h!19400 lt!458759) (++!3626 (t!121930 lt!458759) (getSuffix!585 lt!458765 lt!458759))))))

(declare-fun b!1379832 () Bool)

(assert (=> b!1379832 (= e!881703 (or (not (= (getSuffix!585 lt!458765 lt!458759) Nil!13999)) (= lt!458826 lt!458759)))))

(declare-fun b!1379829 () Bool)

(assert (=> b!1379829 (= e!881704 (getSuffix!585 lt!458765 lt!458759))))

(assert (= (and d!393955 c!227018) b!1379829))

(assert (= (and d!393955 (not c!227018)) b!1379830))

(assert (= (and d!393955 res!622199) b!1379831))

(assert (= (and b!1379831 res!622200) b!1379832))

(declare-fun m!1552555 () Bool)

(assert (=> d!393955 m!1552555))

(assert (=> d!393955 m!1552285))

(assert (=> d!393955 m!1552201))

(declare-fun m!1552557 () Bool)

(assert (=> d!393955 m!1552557))

(declare-fun m!1552559 () Bool)

(assert (=> b!1379831 m!1552559))

(declare-fun m!1552561 () Bool)

(assert (=> b!1379831 m!1552561))

(assert (=> b!1379831 m!1552201))

(declare-fun m!1552563 () Bool)

(assert (=> b!1379831 m!1552563))

(assert (=> b!1379830 m!1552201))

(declare-fun m!1552565 () Bool)

(assert (=> b!1379830 m!1552565))

(assert (=> b!1379593 d!393955))

(declare-fun d!393957 () Bool)

(declare-fun lt!458829 () List!14065)

(assert (=> d!393957 (= (++!3626 lt!458759 lt!458829) lt!458765)))

(declare-fun e!881707 () List!14065)

(assert (=> d!393957 (= lt!458829 e!881707)))

(declare-fun c!227021 () Bool)

(assert (=> d!393957 (= c!227021 ((_ is Cons!13999) lt!458759))))

(assert (=> d!393957 (>= (size!11481 lt!458765) (size!11481 lt!458759))))

(assert (=> d!393957 (= (getSuffix!585 lt!458765 lt!458759) lt!458829)))

(declare-fun b!1379837 () Bool)

(declare-fun tail!1998 (List!14065) List!14065)

(assert (=> b!1379837 (= e!881707 (getSuffix!585 (tail!1998 lt!458765) (t!121930 lt!458759)))))

(declare-fun b!1379838 () Bool)

(assert (=> b!1379838 (= e!881707 lt!458765)))

(assert (= (and d!393957 c!227021) b!1379837))

(assert (= (and d!393957 (not c!227021)) b!1379838))

(declare-fun m!1552567 () Bool)

(assert (=> d!393957 m!1552567))

(declare-fun m!1552569 () Bool)

(assert (=> d!393957 m!1552569))

(assert (=> d!393957 m!1552561))

(declare-fun m!1552571 () Bool)

(assert (=> b!1379837 m!1552571))

(assert (=> b!1379837 m!1552571))

(declare-fun m!1552573 () Bool)

(assert (=> b!1379837 m!1552573))

(assert (=> b!1379593 d!393957))

(declare-fun d!393959 () Bool)

(declare-fun lt!458832 () List!14065)

(declare-fun dynLambda!6369 (Int List!14065) Bool)

(assert (=> d!393959 (dynLambda!6369 lambda!59117 lt!458832)))

(declare-fun choose!8467 (Int) List!14065)

(assert (=> d!393959 (= lt!458832 (choose!8467 lambda!59117))))

(assert (=> d!393959 (Exists!889 lambda!59117)))

(assert (=> d!393959 (= (pickWitness!192 lambda!59117) lt!458832)))

(declare-fun b_lambda!42463 () Bool)

(assert (=> (not b_lambda!42463) (not d!393959)))

(declare-fun bs!336459 () Bool)

(assert (= bs!336459 d!393959))

(declare-fun m!1552575 () Bool)

(assert (=> bs!336459 m!1552575))

(declare-fun m!1552577 () Bool)

(assert (=> bs!336459 m!1552577))

(assert (=> bs!336459 m!1552271))

(assert (=> b!1379593 d!393959))

(declare-fun d!393961 () Bool)

(declare-fun lt!458833 () Bool)

(assert (=> d!393961 (= lt!458833 (select (content!2043 lt!458759) lt!458760))))

(declare-fun e!881708 () Bool)

(assert (=> d!393961 (= lt!458833 e!881708)))

(declare-fun res!622202 () Bool)

(assert (=> d!393961 (=> (not res!622202) (not e!881708))))

(assert (=> d!393961 (= res!622202 ((_ is Cons!13999) lt!458759))))

(assert (=> d!393961 (= (contains!2659 lt!458759 lt!458760) lt!458833)))

(declare-fun b!1379839 () Bool)

(declare-fun e!881709 () Bool)

(assert (=> b!1379839 (= e!881708 e!881709)))

(declare-fun res!622201 () Bool)

(assert (=> b!1379839 (=> res!622201 e!881709)))

(assert (=> b!1379839 (= res!622201 (= (h!19400 lt!458759) lt!458760))))

(declare-fun b!1379840 () Bool)

(assert (=> b!1379840 (= e!881709 (contains!2659 (t!121930 lt!458759) lt!458760))))

(assert (= (and d!393961 res!622202) b!1379839))

(assert (= (and b!1379839 (not res!622201)) b!1379840))

(assert (=> d!393961 m!1552285))

(declare-fun m!1552579 () Bool)

(assert (=> d!393961 m!1552579))

(declare-fun m!1552581 () Bool)

(assert (=> b!1379840 m!1552581))

(assert (=> b!1379571 d!393961))

(declare-fun d!393963 () Bool)

(declare-fun lt!458836 () C!7768)

(declare-fun apply!3472 (List!14065 Int) C!7768)

(assert (=> d!393963 (= lt!458836 (apply!3472 (list!5410 lt!458761) 0))))

(declare-fun apply!3473 (Conc!4611 Int) C!7768)

(assert (=> d!393963 (= lt!458836 (apply!3473 (c!226984 lt!458761) 0))))

(declare-fun e!881712 () Bool)

(assert (=> d!393963 e!881712))

(declare-fun res!622205 () Bool)

(assert (=> d!393963 (=> (not res!622205) (not e!881712))))

(assert (=> d!393963 (= res!622205 (<= 0 0))))

(assert (=> d!393963 (= (apply!3467 lt!458761 0) lt!458836)))

(declare-fun b!1379843 () Bool)

(assert (=> b!1379843 (= e!881712 (< 0 (size!11474 lt!458761)))))

(assert (= (and d!393963 res!622205) b!1379843))

(assert (=> d!393963 m!1552229))

(assert (=> d!393963 m!1552229))

(declare-fun m!1552583 () Bool)

(assert (=> d!393963 m!1552583))

(declare-fun m!1552585 () Bool)

(assert (=> d!393963 m!1552585))

(declare-fun m!1552587 () Bool)

(assert (=> b!1379843 m!1552587))

(assert (=> b!1379571 d!393963))

(declare-fun d!393965 () Bool)

(declare-fun lt!458837 () C!7768)

(assert (=> d!393965 (= lt!458837 (apply!3472 (list!5410 lt!458758) 0))))

(assert (=> d!393965 (= lt!458837 (apply!3473 (c!226984 lt!458758) 0))))

(declare-fun e!881713 () Bool)

(assert (=> d!393965 e!881713))

(declare-fun res!622206 () Bool)

(assert (=> d!393965 (=> (not res!622206) (not e!881713))))

(assert (=> d!393965 (= res!622206 (<= 0 0))))

(assert (=> d!393965 (= (apply!3467 lt!458758 0) lt!458837)))

(declare-fun b!1379844 () Bool)

(assert (=> b!1379844 (= e!881713 (< 0 (size!11474 lt!458758)))))

(assert (= (and d!393965 res!622206) b!1379844))

(declare-fun m!1552589 () Bool)

(assert (=> d!393965 m!1552589))

(assert (=> d!393965 m!1552589))

(declare-fun m!1552591 () Bool)

(assert (=> d!393965 m!1552591))

(declare-fun m!1552593 () Bool)

(assert (=> d!393965 m!1552593))

(assert (=> b!1379844 m!1552263))

(assert (=> b!1379570 d!393965))

(declare-fun d!393967 () Bool)

(declare-fun c!227024 () Bool)

(declare-fun isEmpty!8449 (List!14065) Bool)

(assert (=> d!393967 (= c!227024 (isEmpty!8449 lt!458759))))

(declare-fun e!881716 () Bool)

(assert (=> d!393967 (= (prefixMatch!248 lt!458763 lt!458759) e!881716)))

(declare-fun b!1379849 () Bool)

(declare-fun lostCause!339 (Regex!3739) Bool)

(assert (=> b!1379849 (= e!881716 (not (lostCause!339 lt!458763)))))

(declare-fun b!1379850 () Bool)

(declare-fun derivativeStep!963 (Regex!3739 C!7768) Regex!3739)

(declare-fun head!2501 (List!14065) C!7768)

(assert (=> b!1379850 (= e!881716 (prefixMatch!248 (derivativeStep!963 lt!458763 (head!2501 lt!458759)) (tail!1998 lt!458759)))))

(assert (= (and d!393967 c!227024) b!1379849))

(assert (= (and d!393967 (not c!227024)) b!1379850))

(declare-fun m!1552595 () Bool)

(assert (=> d!393967 m!1552595))

(declare-fun m!1552597 () Bool)

(assert (=> b!1379849 m!1552597))

(declare-fun m!1552599 () Bool)

(assert (=> b!1379850 m!1552599))

(assert (=> b!1379850 m!1552599))

(declare-fun m!1552601 () Bool)

(assert (=> b!1379850 m!1552601))

(declare-fun m!1552603 () Bool)

(assert (=> b!1379850 m!1552603))

(assert (=> b!1379850 m!1552601))

(assert (=> b!1379850 m!1552603))

(declare-fun m!1552605 () Bool)

(assert (=> b!1379850 m!1552605))

(assert (=> b!1379570 d!393967))

(declare-fun d!393969 () Bool)

(declare-fun list!5414 (Conc!4611) List!14065)

(assert (=> d!393969 (= (list!5410 lt!458761) (list!5414 (c!226984 lt!458761)))))

(declare-fun bs!336460 () Bool)

(assert (= bs!336460 d!393969))

(declare-fun m!1552607 () Bool)

(assert (=> bs!336460 m!1552607))

(assert (=> b!1379570 d!393969))

(declare-fun d!393971 () Bool)

(declare-fun lt!458840 () BalanceConc!9162)

(assert (=> d!393971 (= (list!5410 lt!458840) (originalCharacters!3287 t1!34))))

(declare-fun dynLambda!6370 (Int TokenValue!2515) BalanceConc!9162)

(assert (=> d!393971 (= lt!458840 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))

(assert (=> d!393971 (= (charsOf!1397 t1!34) lt!458840)))

(declare-fun b_lambda!42465 () Bool)

(assert (=> (not b_lambda!42465) (not d!393971)))

(declare-fun t!121954 () Bool)

(declare-fun tb!72497 () Bool)

(assert (=> (and b!1379591 (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) t!121954) tb!72497))

(declare-fun b!1379855 () Bool)

(declare-fun e!881719 () Bool)

(declare-fun tp!395474 () Bool)

(declare-fun inv!18345 (Conc!4611) Bool)

(assert (=> b!1379855 (= e!881719 (and (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))) tp!395474))))

(declare-fun result!88042 () Bool)

(declare-fun inv!18346 (BalanceConc!9162) Bool)

(assert (=> tb!72497 (= result!88042 (and (inv!18346 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))) e!881719))))

(assert (= tb!72497 b!1379855))

(declare-fun m!1552609 () Bool)

(assert (=> b!1379855 m!1552609))

(declare-fun m!1552611 () Bool)

(assert (=> tb!72497 m!1552611))

(assert (=> d!393971 t!121954))

(declare-fun b_and!92475 () Bool)

(assert (= b_and!92437 (and (=> t!121954 result!88042) b_and!92475)))

(declare-fun t!121956 () Bool)

(declare-fun tb!72499 () Bool)

(assert (=> (and b!1379585 (= (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) t!121956) tb!72499))

(declare-fun result!88046 () Bool)

(assert (= result!88046 result!88042))

(assert (=> d!393971 t!121956))

(declare-fun b_and!92477 () Bool)

(assert (= b_and!92441 (and (=> t!121956 result!88046) b_and!92477)))

(declare-fun tb!72501 () Bool)

(declare-fun t!121958 () Bool)

(assert (=> (and b!1379592 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) t!121958) tb!72501))

(declare-fun result!88048 () Bool)

(assert (= result!88048 result!88042))

(assert (=> d!393971 t!121958))

(declare-fun b_and!92479 () Bool)

(assert (= b_and!92445 (and (=> t!121958 result!88048) b_and!92479)))

(declare-fun m!1552613 () Bool)

(assert (=> d!393971 m!1552613))

(declare-fun m!1552615 () Bool)

(assert (=> d!393971 m!1552615))

(assert (=> b!1379570 d!393971))

(declare-fun d!393973 () Bool)

(declare-fun e!881720 () Bool)

(assert (=> d!393973 e!881720))

(declare-fun res!622207 () Bool)

(assert (=> d!393973 (=> (not res!622207) (not e!881720))))

(declare-fun lt!458841 () List!14065)

(assert (=> d!393973 (= res!622207 (= (content!2043 lt!458841) ((_ map or) (content!2043 lt!458764) (content!2043 (Cons!13999 lt!458766 Nil!13999)))))))

(declare-fun e!881721 () List!14065)

(assert (=> d!393973 (= lt!458841 e!881721)))

(declare-fun c!227025 () Bool)

(assert (=> d!393973 (= c!227025 ((_ is Nil!13999) lt!458764))))

(assert (=> d!393973 (= (++!3626 lt!458764 (Cons!13999 lt!458766 Nil!13999)) lt!458841)))

(declare-fun b!1379858 () Bool)

(declare-fun res!622208 () Bool)

(assert (=> b!1379858 (=> (not res!622208) (not e!881720))))

(assert (=> b!1379858 (= res!622208 (= (size!11481 lt!458841) (+ (size!11481 lt!458764) (size!11481 (Cons!13999 lt!458766 Nil!13999)))))))

(declare-fun b!1379857 () Bool)

(assert (=> b!1379857 (= e!881721 (Cons!13999 (h!19400 lt!458764) (++!3626 (t!121930 lt!458764) (Cons!13999 lt!458766 Nil!13999))))))

(declare-fun b!1379859 () Bool)

(assert (=> b!1379859 (= e!881720 (or (not (= (Cons!13999 lt!458766 Nil!13999) Nil!13999)) (= lt!458841 lt!458764)))))

(declare-fun b!1379856 () Bool)

(assert (=> b!1379856 (= e!881721 (Cons!13999 lt!458766 Nil!13999))))

(assert (= (and d!393973 c!227025) b!1379856))

(assert (= (and d!393973 (not c!227025)) b!1379857))

(assert (= (and d!393973 res!622207) b!1379858))

(assert (= (and b!1379858 res!622208) b!1379859))

(declare-fun m!1552617 () Bool)

(assert (=> d!393973 m!1552617))

(declare-fun m!1552619 () Bool)

(assert (=> d!393973 m!1552619))

(declare-fun m!1552621 () Bool)

(assert (=> d!393973 m!1552621))

(declare-fun m!1552623 () Bool)

(assert (=> b!1379858 m!1552623))

(declare-fun m!1552625 () Bool)

(assert (=> b!1379858 m!1552625))

(declare-fun m!1552627 () Bool)

(assert (=> b!1379858 m!1552627))

(declare-fun m!1552629 () Bool)

(assert (=> b!1379857 m!1552629))

(assert (=> b!1379570 d!393973))

(declare-fun bs!336461 () Bool)

(declare-fun d!393975 () Bool)

(assert (= bs!336461 (and d!393975 b!1379579)))

(declare-fun lambda!59128 () Int)

(assert (=> bs!336461 (= lambda!59128 lambda!59118)))

(declare-fun lt!458844 () Unit!20263)

(declare-fun lemma!133 (List!14067 LexerInterface!2120 List!14067) Unit!20263)

(assert (=> d!393975 (= lt!458844 (lemma!133 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!141 (List!14068) Regex!3739)

(assert (=> d!393975 (= (rulesRegex!308 thiss!19762 rules!2550) (generalisedUnion!141 (map!3098 rules!2550 lambda!59128)))))

(declare-fun bs!336462 () Bool)

(assert (= bs!336462 d!393975))

(declare-fun m!1552631 () Bool)

(assert (=> bs!336462 m!1552631))

(declare-fun m!1552633 () Bool)

(assert (=> bs!336462 m!1552633))

(assert (=> bs!336462 m!1552633))

(declare-fun m!1552635 () Bool)

(assert (=> bs!336462 m!1552635))

(assert (=> b!1379570 d!393975))

(declare-fun d!393977 () Bool)

(declare-fun lt!458845 () Bool)

(assert (=> d!393977 (= lt!458845 (select (content!2043 lt!458765) lt!458760))))

(declare-fun e!881722 () Bool)

(assert (=> d!393977 (= lt!458845 e!881722)))

(declare-fun res!622210 () Bool)

(assert (=> d!393977 (=> (not res!622210) (not e!881722))))

(assert (=> d!393977 (= res!622210 ((_ is Cons!13999) lt!458765))))

(assert (=> d!393977 (= (contains!2659 lt!458765 lt!458760) lt!458845)))

(declare-fun b!1379860 () Bool)

(declare-fun e!881723 () Bool)

(assert (=> b!1379860 (= e!881722 e!881723)))

(declare-fun res!622209 () Bool)

(assert (=> b!1379860 (=> res!622209 e!881723)))

(assert (=> b!1379860 (= res!622209 (= (h!19400 lt!458765) lt!458760))))

(declare-fun b!1379861 () Bool)

(assert (=> b!1379861 (= e!881723 (contains!2659 (t!121930 lt!458765) lt!458760))))

(assert (= (and d!393977 res!622210) b!1379860))

(assert (= (and b!1379860 (not res!622209)) b!1379861))

(assert (=> d!393977 m!1552279))

(declare-fun m!1552637 () Bool)

(assert (=> d!393977 m!1552637))

(declare-fun m!1552639 () Bool)

(assert (=> b!1379861 m!1552639))

(assert (=> b!1379581 d!393977))

(declare-fun b!1379872 () Bool)

(declare-fun res!622213 () Bool)

(declare-fun e!881731 () Bool)

(assert (=> b!1379872 (=> res!622213 e!881731)))

(assert (=> b!1379872 (= res!622213 (not ((_ is IntegerValue!7547) (value!78745 t2!34))))))

(declare-fun e!881732 () Bool)

(assert (=> b!1379872 (= e!881732 e!881731)))

(declare-fun b!1379873 () Bool)

(declare-fun e!881730 () Bool)

(assert (=> b!1379873 (= e!881730 e!881732)))

(declare-fun c!227030 () Bool)

(assert (=> b!1379873 (= c!227030 ((_ is IntegerValue!7546) (value!78745 t2!34)))))

(declare-fun b!1379874 () Bool)

(declare-fun inv!17 (TokenValue!2515) Bool)

(assert (=> b!1379874 (= e!881732 (inv!17 (value!78745 t2!34)))))

(declare-fun b!1379875 () Bool)

(declare-fun inv!15 (TokenValue!2515) Bool)

(assert (=> b!1379875 (= e!881731 (inv!15 (value!78745 t2!34)))))

(declare-fun d!393979 () Bool)

(declare-fun c!227031 () Bool)

(assert (=> d!393979 (= c!227031 ((_ is IntegerValue!7545) (value!78745 t2!34)))))

(assert (=> d!393979 (= (inv!21 (value!78745 t2!34)) e!881730)))

(declare-fun b!1379876 () Bool)

(declare-fun inv!16 (TokenValue!2515) Bool)

(assert (=> b!1379876 (= e!881730 (inv!16 (value!78745 t2!34)))))

(assert (= (and d!393979 c!227031) b!1379876))

(assert (= (and d!393979 (not c!227031)) b!1379873))

(assert (= (and b!1379873 c!227030) b!1379874))

(assert (= (and b!1379873 (not c!227030)) b!1379872))

(assert (= (and b!1379872 (not res!622213)) b!1379875))

(declare-fun m!1552641 () Bool)

(assert (=> b!1379874 m!1552641))

(declare-fun m!1552643 () Bool)

(assert (=> b!1379875 m!1552643))

(declare-fun m!1552645 () Bool)

(assert (=> b!1379876 m!1552645))

(assert (=> b!1379580 d!393979))

(declare-fun d!393981 () Bool)

(assert (=> d!393981 (= (isEmpty!8445 rules!2550) ((_ is Nil!14001) rules!2550))))

(assert (=> b!1379590 d!393981))

(declare-fun d!393983 () Bool)

(declare-fun res!622218 () Bool)

(declare-fun e!881737 () Bool)

(assert (=> d!393983 (=> res!622218 e!881737)))

(assert (=> d!393983 (= res!622218 ((_ is Nil!14002) (map!3098 rules!2550 lambda!59118)))))

(assert (=> d!393983 (= (forall!3407 (map!3098 rules!2550 lambda!59118) lambda!59119) e!881737)))

(declare-fun b!1379881 () Bool)

(declare-fun e!881738 () Bool)

(assert (=> b!1379881 (= e!881737 e!881738)))

(declare-fun res!622219 () Bool)

(assert (=> b!1379881 (=> (not res!622219) (not e!881738))))

(declare-fun dynLambda!6371 (Int Regex!3739) Bool)

(assert (=> b!1379881 (= res!622219 (dynLambda!6371 lambda!59119 (h!19403 (map!3098 rules!2550 lambda!59118))))))

(declare-fun b!1379882 () Bool)

(assert (=> b!1379882 (= e!881738 (forall!3407 (t!121933 (map!3098 rules!2550 lambda!59118)) lambda!59119))))

(assert (= (and d!393983 (not res!622218)) b!1379881))

(assert (= (and b!1379881 res!622219) b!1379882))

(declare-fun b_lambda!42467 () Bool)

(assert (=> (not b_lambda!42467) (not b!1379881)))

(declare-fun m!1552647 () Bool)

(assert (=> b!1379881 m!1552647))

(declare-fun m!1552649 () Bool)

(assert (=> b!1379882 m!1552649))

(assert (=> b!1379579 d!393983))

(declare-fun d!393985 () Bool)

(declare-fun lt!458848 () List!14068)

(declare-fun size!11482 (List!14068) Int)

(declare-fun size!11483 (List!14067) Int)

(assert (=> d!393985 (= (size!11482 lt!458848) (size!11483 rules!2550))))

(declare-fun e!881741 () List!14068)

(assert (=> d!393985 (= lt!458848 e!881741)))

(declare-fun c!227034 () Bool)

(assert (=> d!393985 (= c!227034 ((_ is Nil!14001) rules!2550))))

(assert (=> d!393985 (= (map!3098 rules!2550 lambda!59118) lt!458848)))

(declare-fun b!1379887 () Bool)

(assert (=> b!1379887 (= e!881741 Nil!14002)))

(declare-fun b!1379888 () Bool)

(declare-fun $colon$colon!207 (List!14068 Regex!3739) List!14068)

(declare-fun dynLambda!6372 (Int Rule!4650) Regex!3739)

(assert (=> b!1379888 (= e!881741 ($colon$colon!207 (map!3098 (t!121932 rules!2550) lambda!59118) (dynLambda!6372 lambda!59118 (h!19402 rules!2550))))))

(assert (= (and d!393985 c!227034) b!1379887))

(assert (= (and d!393985 (not c!227034)) b!1379888))

(declare-fun b_lambda!42469 () Bool)

(assert (=> (not b_lambda!42469) (not b!1379888)))

(declare-fun m!1552651 () Bool)

(assert (=> d!393985 m!1552651))

(declare-fun m!1552653 () Bool)

(assert (=> d!393985 m!1552653))

(declare-fun m!1552655 () Bool)

(assert (=> b!1379888 m!1552655))

(declare-fun m!1552657 () Bool)

(assert (=> b!1379888 m!1552657))

(assert (=> b!1379888 m!1552655))

(assert (=> b!1379888 m!1552657))

(declare-fun m!1552659 () Bool)

(assert (=> b!1379888 m!1552659))

(assert (=> b!1379579 d!393985))

(declare-fun d!393987 () Bool)

(declare-fun res!622224 () Bool)

(declare-fun e!881746 () Bool)

(assert (=> d!393987 (=> res!622224 e!881746)))

(assert (=> d!393987 (= res!622224 (not ((_ is Cons!14001) rules!2550)))))

(assert (=> d!393987 (= (sepAndNonSepRulesDisjointChars!798 rules!2550 rules!2550) e!881746)))

(declare-fun b!1379893 () Bool)

(declare-fun e!881747 () Bool)

(assert (=> b!1379893 (= e!881746 e!881747)))

(declare-fun res!622225 () Bool)

(assert (=> b!1379893 (=> (not res!622225) (not e!881747))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!376 (Rule!4650 List!14067) Bool)

(assert (=> b!1379893 (= res!622225 (ruleDisjointCharsFromAllFromOtherType!376 (h!19402 rules!2550) rules!2550))))

(declare-fun b!1379894 () Bool)

(assert (=> b!1379894 (= e!881747 (sepAndNonSepRulesDisjointChars!798 rules!2550 (t!121932 rules!2550)))))

(assert (= (and d!393987 (not res!622224)) b!1379893))

(assert (= (and b!1379893 res!622225) b!1379894))

(declare-fun m!1552661 () Bool)

(assert (=> b!1379893 m!1552661))

(declare-fun m!1552663 () Bool)

(assert (=> b!1379894 m!1552663))

(assert (=> b!1379578 d!393987))

(declare-fun d!393989 () Bool)

(declare-fun lt!458849 () Bool)

(declare-fun e!881749 () Bool)

(assert (=> d!393989 (= lt!458849 e!881749)))

(declare-fun res!622227 () Bool)

(assert (=> d!393989 (=> (not res!622227) (not e!881749))))

(assert (=> d!393989 (= res!622227 (= (list!5413 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))))) (list!5413 (singletonSeq!1063 t1!34))))))

(declare-fun e!881748 () Bool)

(assert (=> d!393989 (= lt!458849 e!881748)))

(declare-fun res!622228 () Bool)

(assert (=> d!393989 (=> (not res!622228) (not e!881748))))

(declare-fun lt!458850 () tuple2!13614)

(assert (=> d!393989 (= res!622228 (= (size!11480 (_1!7693 lt!458850)) 1))))

(assert (=> d!393989 (= lt!458850 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))))))

(assert (=> d!393989 (not (isEmpty!8445 rules!2550))))

(assert (=> d!393989 (= (rulesProduceIndividualToken!1089 thiss!19762 rules!2550 t1!34) lt!458849)))

(declare-fun b!1379895 () Bool)

(declare-fun res!622226 () Bool)

(assert (=> b!1379895 (=> (not res!622226) (not e!881748))))

(assert (=> b!1379895 (= res!622226 (= (apply!3471 (_1!7693 lt!458850) 0) t1!34))))

(declare-fun b!1379896 () Bool)

(assert (=> b!1379896 (= e!881748 (isEmpty!8448 (_2!7693 lt!458850)))))

(declare-fun b!1379897 () Bool)

(assert (=> b!1379897 (= e!881749 (isEmpty!8448 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))))))))

(assert (= (and d!393989 res!622228) b!1379895))

(assert (= (and b!1379895 res!622226) b!1379896))

(assert (= (and d!393989 res!622227) b!1379897))

(declare-fun m!1552665 () Bool)

(assert (=> d!393989 m!1552665))

(declare-fun m!1552667 () Bool)

(assert (=> d!393989 m!1552667))

(assert (=> d!393989 m!1552233))

(assert (=> d!393989 m!1552665))

(declare-fun m!1552669 () Bool)

(assert (=> d!393989 m!1552669))

(assert (=> d!393989 m!1552665))

(declare-fun m!1552671 () Bool)

(assert (=> d!393989 m!1552671))

(assert (=> d!393989 m!1552669))

(declare-fun m!1552673 () Bool)

(assert (=> d!393989 m!1552673))

(declare-fun m!1552675 () Bool)

(assert (=> d!393989 m!1552675))

(declare-fun m!1552677 () Bool)

(assert (=> b!1379895 m!1552677))

(declare-fun m!1552679 () Bool)

(assert (=> b!1379896 m!1552679))

(assert (=> b!1379897 m!1552665))

(assert (=> b!1379897 m!1552665))

(assert (=> b!1379897 m!1552669))

(assert (=> b!1379897 m!1552669))

(assert (=> b!1379897 m!1552673))

(declare-fun m!1552681 () Bool)

(assert (=> b!1379897 m!1552681))

(assert (=> b!1379589 d!393989))

(declare-fun b!1379898 () Bool)

(declare-fun res!622229 () Bool)

(declare-fun e!881751 () Bool)

(assert (=> b!1379898 (=> res!622229 e!881751)))

(assert (=> b!1379898 (= res!622229 (not ((_ is IntegerValue!7547) (value!78745 t1!34))))))

(declare-fun e!881752 () Bool)

(assert (=> b!1379898 (= e!881752 e!881751)))

(declare-fun b!1379899 () Bool)

(declare-fun e!881750 () Bool)

(assert (=> b!1379899 (= e!881750 e!881752)))

(declare-fun c!227035 () Bool)

(assert (=> b!1379899 (= c!227035 ((_ is IntegerValue!7546) (value!78745 t1!34)))))

(declare-fun b!1379900 () Bool)

(assert (=> b!1379900 (= e!881752 (inv!17 (value!78745 t1!34)))))

(declare-fun b!1379901 () Bool)

(assert (=> b!1379901 (= e!881751 (inv!15 (value!78745 t1!34)))))

(declare-fun d!393991 () Bool)

(declare-fun c!227036 () Bool)

(assert (=> d!393991 (= c!227036 ((_ is IntegerValue!7545) (value!78745 t1!34)))))

(assert (=> d!393991 (= (inv!21 (value!78745 t1!34)) e!881750)))

(declare-fun b!1379902 () Bool)

(assert (=> b!1379902 (= e!881750 (inv!16 (value!78745 t1!34)))))

(assert (= (and d!393991 c!227036) b!1379902))

(assert (= (and d!393991 (not c!227036)) b!1379899))

(assert (= (and b!1379899 c!227035) b!1379900))

(assert (= (and b!1379899 (not c!227035)) b!1379898))

(assert (= (and b!1379898 (not res!622229)) b!1379901))

(declare-fun m!1552683 () Bool)

(assert (=> b!1379900 m!1552683))

(declare-fun m!1552685 () Bool)

(assert (=> b!1379901 m!1552685))

(declare-fun m!1552687 () Bool)

(assert (=> b!1379902 m!1552687))

(assert (=> b!1379588 d!393991))

(declare-fun d!393993 () Bool)

(declare-fun prefixMatchZipperSequence!270 (Regex!3739 BalanceConc!9162) Bool)

(declare-fun ++!3628 (BalanceConc!9162 BalanceConc!9162) BalanceConc!9162)

(declare-fun singletonSeq!1064 (C!7768) BalanceConc!9162)

(assert (=> d!393993 (= (separableTokensPredicate!403 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!270 (rulesRegex!308 thiss!19762 rules!2550) (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))))))

(declare-fun bs!336463 () Bool)

(assert (= bs!336463 d!393993))

(assert (=> bs!336463 m!1552223))

(declare-fun m!1552689 () Bool)

(assert (=> bs!336463 m!1552689))

(declare-fun m!1552691 () Bool)

(assert (=> bs!336463 m!1552691))

(assert (=> bs!336463 m!1552265))

(declare-fun m!1552693 () Bool)

(assert (=> bs!336463 m!1552693))

(assert (=> bs!336463 m!1552689))

(assert (=> bs!336463 m!1552231))

(assert (=> bs!336463 m!1552691))

(declare-fun m!1552695 () Bool)

(assert (=> bs!336463 m!1552695))

(assert (=> bs!336463 m!1552231))

(assert (=> bs!336463 m!1552265))

(assert (=> bs!336463 m!1552693))

(assert (=> bs!336463 m!1552223))

(assert (=> b!1379577 d!393993))

(declare-fun d!393995 () Bool)

(assert (=> d!393995 (= (inv!18338 (tag!2687 (rule!4184 t2!34))) (= (mod (str.len (value!78744 (tag!2687 (rule!4184 t2!34)))) 2) 0))))

(assert (=> b!1379576 d!393995))

(declare-fun d!393997 () Bool)

(declare-fun res!622230 () Bool)

(declare-fun e!881753 () Bool)

(assert (=> d!393997 (=> (not res!622230) (not e!881753))))

(assert (=> d!393997 (= res!622230 (semiInverseModEq!934 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (rule!4184 t2!34)))))))

(assert (=> d!393997 (= (inv!18341 (transformation!2425 (rule!4184 t2!34))) e!881753)))

(declare-fun b!1379903 () Bool)

(assert (=> b!1379903 (= e!881753 (equivClasses!893 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (rule!4184 t2!34)))))))

(assert (= (and d!393997 res!622230) b!1379903))

(declare-fun m!1552697 () Bool)

(assert (=> d!393997 m!1552697))

(declare-fun m!1552699 () Bool)

(assert (=> b!1379903 m!1552699))

(assert (=> b!1379576 d!393997))

(declare-fun b!1379932 () Bool)

(declare-fun res!622254 () Bool)

(declare-fun e!881772 () Bool)

(assert (=> b!1379932 (=> res!622254 e!881772)))

(assert (=> b!1379932 (= res!622254 (not (isEmpty!8449 (tail!1998 lt!458765))))))

(declare-fun b!1379933 () Bool)

(declare-fun res!622249 () Bool)

(declare-fun e!881769 () Bool)

(assert (=> b!1379933 (=> res!622249 e!881769)))

(assert (=> b!1379933 (= res!622249 (not ((_ is ElementMatch!3739) lt!458763)))))

(declare-fun e!881774 () Bool)

(assert (=> b!1379933 (= e!881774 e!881769)))

(declare-fun b!1379934 () Bool)

(declare-fun e!881768 () Bool)

(declare-fun nullable!1205 (Regex!3739) Bool)

(assert (=> b!1379934 (= e!881768 (nullable!1205 lt!458763))))

(declare-fun b!1379935 () Bool)

(declare-fun e!881771 () Bool)

(assert (=> b!1379935 (= e!881771 e!881774)))

(declare-fun c!227045 () Bool)

(assert (=> b!1379935 (= c!227045 ((_ is EmptyLang!3739) lt!458763))))

(declare-fun b!1379936 () Bool)

(declare-fun e!881773 () Bool)

(assert (=> b!1379936 (= e!881773 e!881772)))

(declare-fun res!622247 () Bool)

(assert (=> b!1379936 (=> res!622247 e!881772)))

(declare-fun call!92423 () Bool)

(assert (=> b!1379936 (= res!622247 call!92423)))

(declare-fun bm!92418 () Bool)

(assert (=> bm!92418 (= call!92423 (isEmpty!8449 lt!458765))))

(declare-fun b!1379937 () Bool)

(assert (=> b!1379937 (= e!881769 e!881773)))

(declare-fun res!622248 () Bool)

(assert (=> b!1379937 (=> (not res!622248) (not e!881773))))

(declare-fun lt!458853 () Bool)

(assert (=> b!1379937 (= res!622248 (not lt!458853))))

(declare-fun b!1379938 () Bool)

(assert (=> b!1379938 (= e!881771 (= lt!458853 call!92423))))

(declare-fun b!1379939 () Bool)

(declare-fun res!622250 () Bool)

(declare-fun e!881770 () Bool)

(assert (=> b!1379939 (=> (not res!622250) (not e!881770))))

(assert (=> b!1379939 (= res!622250 (isEmpty!8449 (tail!1998 lt!458765)))))

(declare-fun b!1379940 () Bool)

(assert (=> b!1379940 (= e!881770 (= (head!2501 lt!458765) (c!226983 lt!458763)))))

(declare-fun b!1379941 () Bool)

(declare-fun res!622251 () Bool)

(assert (=> b!1379941 (=> (not res!622251) (not e!881770))))

(assert (=> b!1379941 (= res!622251 (not call!92423))))

(declare-fun b!1379942 () Bool)

(assert (=> b!1379942 (= e!881774 (not lt!458853))))

(declare-fun b!1379943 () Bool)

(assert (=> b!1379943 (= e!881772 (not (= (head!2501 lt!458765) (c!226983 lt!458763))))))

(declare-fun d!393999 () Bool)

(assert (=> d!393999 e!881771))

(declare-fun c!227043 () Bool)

(assert (=> d!393999 (= c!227043 ((_ is EmptyExpr!3739) lt!458763))))

(assert (=> d!393999 (= lt!458853 e!881768)))

(declare-fun c!227044 () Bool)

(assert (=> d!393999 (= c!227044 (isEmpty!8449 lt!458765))))

(declare-fun validRegex!1625 (Regex!3739) Bool)

(assert (=> d!393999 (validRegex!1625 lt!458763)))

(assert (=> d!393999 (= (matchR!1730 lt!458763 lt!458765) lt!458853)))

(declare-fun b!1379944 () Bool)

(assert (=> b!1379944 (= e!881768 (matchR!1730 (derivativeStep!963 lt!458763 (head!2501 lt!458765)) (tail!1998 lt!458765)))))

(declare-fun b!1379945 () Bool)

(declare-fun res!622253 () Bool)

(assert (=> b!1379945 (=> res!622253 e!881769)))

(assert (=> b!1379945 (= res!622253 e!881770)))

(declare-fun res!622252 () Bool)

(assert (=> b!1379945 (=> (not res!622252) (not e!881770))))

(assert (=> b!1379945 (= res!622252 lt!458853)))

(assert (= (and d!393999 c!227044) b!1379934))

(assert (= (and d!393999 (not c!227044)) b!1379944))

(assert (= (and d!393999 c!227043) b!1379938))

(assert (= (and d!393999 (not c!227043)) b!1379935))

(assert (= (and b!1379935 c!227045) b!1379942))

(assert (= (and b!1379935 (not c!227045)) b!1379933))

(assert (= (and b!1379933 (not res!622249)) b!1379945))

(assert (= (and b!1379945 res!622252) b!1379941))

(assert (= (and b!1379941 res!622251) b!1379939))

(assert (= (and b!1379939 res!622250) b!1379940))

(assert (= (and b!1379945 (not res!622253)) b!1379937))

(assert (= (and b!1379937 res!622248) b!1379936))

(assert (= (and b!1379936 (not res!622247)) b!1379932))

(assert (= (and b!1379932 (not res!622254)) b!1379943))

(assert (= (or b!1379938 b!1379936 b!1379941) bm!92418))

(declare-fun m!1552701 () Bool)

(assert (=> d!393999 m!1552701))

(declare-fun m!1552703 () Bool)

(assert (=> d!393999 m!1552703))

(declare-fun m!1552705 () Bool)

(assert (=> b!1379934 m!1552705))

(declare-fun m!1552707 () Bool)

(assert (=> b!1379944 m!1552707))

(assert (=> b!1379944 m!1552707))

(declare-fun m!1552709 () Bool)

(assert (=> b!1379944 m!1552709))

(assert (=> b!1379944 m!1552571))

(assert (=> b!1379944 m!1552709))

(assert (=> b!1379944 m!1552571))

(declare-fun m!1552711 () Bool)

(assert (=> b!1379944 m!1552711))

(assert (=> bm!92418 m!1552701))

(assert (=> b!1379932 m!1552571))

(assert (=> b!1379932 m!1552571))

(declare-fun m!1552713 () Bool)

(assert (=> b!1379932 m!1552713))

(assert (=> b!1379943 m!1552707))

(assert (=> b!1379940 m!1552707))

(assert (=> b!1379939 m!1552571))

(assert (=> b!1379939 m!1552571))

(assert (=> b!1379939 m!1552713))

(assert (=> b!1379587 d!393999))

(declare-fun d!394001 () Bool)

(declare-fun res!622259 () Bool)

(declare-fun e!881777 () Bool)

(assert (=> d!394001 (=> (not res!622259) (not e!881777))))

(assert (=> d!394001 (= res!622259 (not (isEmpty!8449 (originalCharacters!3287 t1!34))))))

(assert (=> d!394001 (= (inv!18342 t1!34) e!881777)))

(declare-fun b!1379950 () Bool)

(declare-fun res!622260 () Bool)

(assert (=> b!1379950 (=> (not res!622260) (not e!881777))))

(assert (=> b!1379950 (= res!622260 (= (originalCharacters!3287 t1!34) (list!5410 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(declare-fun b!1379951 () Bool)

(assert (=> b!1379951 (= e!881777 (= (size!11473 t1!34) (size!11481 (originalCharacters!3287 t1!34))))))

(assert (= (and d!394001 res!622259) b!1379950))

(assert (= (and b!1379950 res!622260) b!1379951))

(declare-fun b_lambda!42471 () Bool)

(assert (=> (not b_lambda!42471) (not b!1379950)))

(assert (=> b!1379950 t!121954))

(declare-fun b_and!92481 () Bool)

(assert (= b_and!92475 (and (=> t!121954 result!88042) b_and!92481)))

(assert (=> b!1379950 t!121956))

(declare-fun b_and!92483 () Bool)

(assert (= b_and!92477 (and (=> t!121956 result!88046) b_and!92483)))

(assert (=> b!1379950 t!121958))

(declare-fun b_and!92485 () Bool)

(assert (= b_and!92479 (and (=> t!121958 result!88048) b_and!92485)))

(declare-fun m!1552715 () Bool)

(assert (=> d!394001 m!1552715))

(assert (=> b!1379950 m!1552615))

(assert (=> b!1379950 m!1552615))

(declare-fun m!1552717 () Bool)

(assert (=> b!1379950 m!1552717))

(declare-fun m!1552719 () Bool)

(assert (=> b!1379951 m!1552719))

(assert (=> start!124850 d!394001))

(declare-fun d!394003 () Bool)

(declare-fun res!622261 () Bool)

(declare-fun e!881778 () Bool)

(assert (=> d!394003 (=> (not res!622261) (not e!881778))))

(assert (=> d!394003 (= res!622261 (not (isEmpty!8449 (originalCharacters!3287 t2!34))))))

(assert (=> d!394003 (= (inv!18342 t2!34) e!881778)))

(declare-fun b!1379952 () Bool)

(declare-fun res!622262 () Bool)

(assert (=> b!1379952 (=> (not res!622262) (not e!881778))))

(assert (=> b!1379952 (= res!622262 (= (originalCharacters!3287 t2!34) (list!5410 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(declare-fun b!1379953 () Bool)

(assert (=> b!1379953 (= e!881778 (= (size!11473 t2!34) (size!11481 (originalCharacters!3287 t2!34))))))

(assert (= (and d!394003 res!622261) b!1379952))

(assert (= (and b!1379952 res!622262) b!1379953))

(declare-fun b_lambda!42473 () Bool)

(assert (=> (not b_lambda!42473) (not b!1379952)))

(declare-fun tb!72503 () Bool)

(declare-fun t!121960 () Bool)

(assert (=> (and b!1379591 (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) t!121960) tb!72503))

(declare-fun b!1379954 () Bool)

(declare-fun e!881779 () Bool)

(declare-fun tp!395475 () Bool)

(assert (=> b!1379954 (= e!881779 (and (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))) tp!395475))))

(declare-fun result!88050 () Bool)

(assert (=> tb!72503 (= result!88050 (and (inv!18346 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))) e!881779))))

(assert (= tb!72503 b!1379954))

(declare-fun m!1552721 () Bool)

(assert (=> b!1379954 m!1552721))

(declare-fun m!1552723 () Bool)

(assert (=> tb!72503 m!1552723))

(assert (=> b!1379952 t!121960))

(declare-fun b_and!92487 () Bool)

(assert (= b_and!92481 (and (=> t!121960 result!88050) b_and!92487)))

(declare-fun t!121962 () Bool)

(declare-fun tb!72505 () Bool)

(assert (=> (and b!1379585 (= (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) t!121962) tb!72505))

(declare-fun result!88052 () Bool)

(assert (= result!88052 result!88050))

(assert (=> b!1379952 t!121962))

(declare-fun b_and!92489 () Bool)

(assert (= b_and!92483 (and (=> t!121962 result!88052) b_and!92489)))

(declare-fun t!121964 () Bool)

(declare-fun tb!72507 () Bool)

(assert (=> (and b!1379592 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) t!121964) tb!72507))

(declare-fun result!88054 () Bool)

(assert (= result!88054 result!88050))

(assert (=> b!1379952 t!121964))

(declare-fun b_and!92491 () Bool)

(assert (= b_and!92485 (and (=> t!121964 result!88054) b_and!92491)))

(declare-fun m!1552725 () Bool)

(assert (=> d!394003 m!1552725))

(declare-fun m!1552727 () Bool)

(assert (=> b!1379952 m!1552727))

(assert (=> b!1379952 m!1552727))

(declare-fun m!1552729 () Bool)

(assert (=> b!1379952 m!1552729))

(declare-fun m!1552731 () Bool)

(assert (=> b!1379953 m!1552731))

(assert (=> start!124850 d!394003))

(declare-fun d!394005 () Bool)

(declare-fun lt!458856 () Int)

(assert (=> d!394005 (= lt!458856 (size!11481 (list!5410 lt!458758)))))

(declare-fun size!11484 (Conc!4611) Int)

(assert (=> d!394005 (= lt!458856 (size!11484 (c!226984 lt!458758)))))

(assert (=> d!394005 (= (size!11474 lt!458758) lt!458856)))

(declare-fun bs!336464 () Bool)

(assert (= bs!336464 d!394005))

(assert (=> bs!336464 m!1552589))

(assert (=> bs!336464 m!1552589))

(declare-fun m!1552733 () Bool)

(assert (=> bs!336464 m!1552733))

(declare-fun m!1552735 () Bool)

(assert (=> bs!336464 m!1552735))

(assert (=> b!1379575 d!394005))

(declare-fun d!394007 () Bool)

(declare-fun lt!458857 () BalanceConc!9162)

(assert (=> d!394007 (= (list!5410 lt!458857) (originalCharacters!3287 t2!34))))

(assert (=> d!394007 (= lt!458857 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))

(assert (=> d!394007 (= (charsOf!1397 t2!34) lt!458857)))

(declare-fun b_lambda!42475 () Bool)

(assert (=> (not b_lambda!42475) (not d!394007)))

(assert (=> d!394007 t!121960))

(declare-fun b_and!92493 () Bool)

(assert (= b_and!92487 (and (=> t!121960 result!88050) b_and!92493)))

(assert (=> d!394007 t!121962))

(declare-fun b_and!92495 () Bool)

(assert (= b_and!92489 (and (=> t!121962 result!88052) b_and!92495)))

(assert (=> d!394007 t!121964))

(declare-fun b_and!92497 () Bool)

(assert (= b_and!92491 (and (=> t!121964 result!88054) b_and!92497)))

(declare-fun m!1552737 () Bool)

(assert (=> d!394007 m!1552737))

(assert (=> d!394007 m!1552727))

(assert (=> b!1379575 d!394007))

(declare-fun d!394009 () Bool)

(declare-fun choose!8468 (Int) Bool)

(assert (=> d!394009 (= (Exists!889 lambda!59117) (choose!8468 lambda!59117))))

(declare-fun bs!336465 () Bool)

(assert (= bs!336465 d!394009))

(declare-fun m!1552739 () Bool)

(assert (=> bs!336465 m!1552739))

(assert (=> b!1379574 d!394009))

(declare-fun bs!336466 () Bool)

(declare-fun d!394011 () Bool)

(assert (= bs!336466 (and d!394011 b!1379574)))

(declare-fun lambda!59131 () Int)

(assert (=> bs!336466 (= lambda!59131 lambda!59117)))

(assert (=> d!394011 true))

(assert (=> d!394011 true))

(assert (=> d!394011 (Exists!889 lambda!59131)))

(declare-fun lt!458860 () Unit!20263)

(declare-fun choose!8469 (Regex!3739 List!14065) Unit!20263)

(assert (=> d!394011 (= lt!458860 (choose!8469 lt!458763 lt!458759))))

(assert (=> d!394011 (validRegex!1625 lt!458763)))

(assert (=> d!394011 (= (lemmaPrefixMatchThenExistsStringThatMatches!207 lt!458763 lt!458759) lt!458860)))

(declare-fun bs!336467 () Bool)

(assert (= bs!336467 d!394011))

(declare-fun m!1552741 () Bool)

(assert (=> bs!336467 m!1552741))

(declare-fun m!1552743 () Bool)

(assert (=> bs!336467 m!1552743))

(assert (=> bs!336467 m!1552703))

(assert (=> b!1379574 d!394011))

(declare-fun d!394013 () Bool)

(declare-fun res!622267 () Bool)

(declare-fun e!881784 () Bool)

(assert (=> d!394013 (=> (not res!622267) (not e!881784))))

(declare-fun rulesValid!903 (LexerInterface!2120 List!14067) Bool)

(assert (=> d!394013 (= res!622267 (rulesValid!903 thiss!19762 rules!2550))))

(assert (=> d!394013 (= (rulesInvariant!1990 thiss!19762 rules!2550) e!881784)))

(declare-fun b!1379959 () Bool)

(declare-datatypes ((List!14072 0))(
  ( (Nil!14006) (Cons!14006 (h!19407 String!16811) (t!121971 List!14072)) )
))
(declare-fun noDuplicateTag!903 (LexerInterface!2120 List!14067 List!14072) Bool)

(assert (=> b!1379959 (= e!881784 (noDuplicateTag!903 thiss!19762 rules!2550 Nil!14006))))

(assert (= (and d!394013 res!622267) b!1379959))

(declare-fun m!1552745 () Bool)

(assert (=> d!394013 m!1552745))

(declare-fun m!1552747 () Bool)

(assert (=> b!1379959 m!1552747))

(assert (=> b!1379595 d!394013))

(declare-fun e!881787 () Bool)

(assert (=> b!1379572 (= tp!395420 e!881787)))

(declare-fun b!1379972 () Bool)

(declare-fun tp!395490 () Bool)

(assert (=> b!1379972 (= e!881787 tp!395490)))

(declare-fun b!1379971 () Bool)

(declare-fun tp!395487 () Bool)

(declare-fun tp!395489 () Bool)

(assert (=> b!1379971 (= e!881787 (and tp!395487 tp!395489))))

(declare-fun b!1379970 () Bool)

(declare-fun tp_is_empty!6759 () Bool)

(assert (=> b!1379970 (= e!881787 tp_is_empty!6759)))

(declare-fun b!1379973 () Bool)

(declare-fun tp!395486 () Bool)

(declare-fun tp!395488 () Bool)

(assert (=> b!1379973 (= e!881787 (and tp!395486 tp!395488))))

(assert (= (and b!1379572 ((_ is ElementMatch!3739) (regex!2425 (h!19402 rules!2550)))) b!1379970))

(assert (= (and b!1379572 ((_ is Concat!6254) (regex!2425 (h!19402 rules!2550)))) b!1379971))

(assert (= (and b!1379572 ((_ is Star!3739) (regex!2425 (h!19402 rules!2550)))) b!1379972))

(assert (= (and b!1379572 ((_ is Union!3739) (regex!2425 (h!19402 rules!2550)))) b!1379973))

(declare-fun b!1379978 () Bool)

(declare-fun e!881790 () Bool)

(declare-fun tp!395493 () Bool)

(assert (=> b!1379978 (= e!881790 (and tp_is_empty!6759 tp!395493))))

(assert (=> b!1379588 (= tp!395425 e!881790)))

(assert (= (and b!1379588 ((_ is Cons!13999) (originalCharacters!3287 t1!34))) b!1379978))

(declare-fun e!881791 () Bool)

(assert (=> b!1379583 (= tp!395424 e!881791)))

(declare-fun b!1379981 () Bool)

(declare-fun tp!395498 () Bool)

(assert (=> b!1379981 (= e!881791 tp!395498)))

(declare-fun b!1379980 () Bool)

(declare-fun tp!395495 () Bool)

(declare-fun tp!395497 () Bool)

(assert (=> b!1379980 (= e!881791 (and tp!395495 tp!395497))))

(declare-fun b!1379979 () Bool)

(assert (=> b!1379979 (= e!881791 tp_is_empty!6759)))

(declare-fun b!1379982 () Bool)

(declare-fun tp!395494 () Bool)

(declare-fun tp!395496 () Bool)

(assert (=> b!1379982 (= e!881791 (and tp!395494 tp!395496))))

(assert (= (and b!1379583 ((_ is ElementMatch!3739) (regex!2425 (rule!4184 t1!34)))) b!1379979))

(assert (= (and b!1379583 ((_ is Concat!6254) (regex!2425 (rule!4184 t1!34)))) b!1379980))

(assert (= (and b!1379583 ((_ is Star!3739) (regex!2425 (rule!4184 t1!34)))) b!1379981))

(assert (= (and b!1379583 ((_ is Union!3739) (regex!2425 (rule!4184 t1!34)))) b!1379982))

(declare-fun e!881792 () Bool)

(assert (=> b!1379576 (= tp!395419 e!881792)))

(declare-fun b!1379985 () Bool)

(declare-fun tp!395503 () Bool)

(assert (=> b!1379985 (= e!881792 tp!395503)))

(declare-fun b!1379984 () Bool)

(declare-fun tp!395500 () Bool)

(declare-fun tp!395502 () Bool)

(assert (=> b!1379984 (= e!881792 (and tp!395500 tp!395502))))

(declare-fun b!1379983 () Bool)

(assert (=> b!1379983 (= e!881792 tp_is_empty!6759)))

(declare-fun b!1379986 () Bool)

(declare-fun tp!395499 () Bool)

(declare-fun tp!395501 () Bool)

(assert (=> b!1379986 (= e!881792 (and tp!395499 tp!395501))))

(assert (= (and b!1379576 ((_ is ElementMatch!3739) (regex!2425 (rule!4184 t2!34)))) b!1379983))

(assert (= (and b!1379576 ((_ is Concat!6254) (regex!2425 (rule!4184 t2!34)))) b!1379984))

(assert (= (and b!1379576 ((_ is Star!3739) (regex!2425 (rule!4184 t2!34)))) b!1379985))

(assert (= (and b!1379576 ((_ is Union!3739) (regex!2425 (rule!4184 t2!34)))) b!1379986))

(declare-fun b!1379997 () Bool)

(declare-fun b_free!33523 () Bool)

(declare-fun b_next!34227 () Bool)

(assert (=> b!1379997 (= b_free!33523 (not b_next!34227))))

(declare-fun tp!395513 () Bool)

(declare-fun b_and!92499 () Bool)

(assert (=> b!1379997 (= tp!395513 b_and!92499)))

(declare-fun b_free!33525 () Bool)

(declare-fun b_next!34229 () Bool)

(assert (=> b!1379997 (= b_free!33525 (not b_next!34229))))

(declare-fun tb!72509 () Bool)

(declare-fun t!121966 () Bool)

(assert (=> (and b!1379997 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) t!121966) tb!72509))

(declare-fun result!88062 () Bool)

(assert (= result!88062 result!88042))

(assert (=> d!393971 t!121966))

(assert (=> b!1379950 t!121966))

(declare-fun tb!72511 () Bool)

(declare-fun t!121968 () Bool)

(assert (=> (and b!1379997 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) t!121968) tb!72511))

(declare-fun result!88064 () Bool)

(assert (= result!88064 result!88050))

(assert (=> b!1379952 t!121968))

(assert (=> d!394007 t!121968))

(declare-fun tp!395515 () Bool)

(declare-fun b_and!92501 () Bool)

(assert (=> b!1379997 (= tp!395515 (and (=> t!121966 result!88062) (=> t!121968 result!88064) b_and!92501))))

(declare-fun e!881804 () Bool)

(assert (=> b!1379997 (= e!881804 (and tp!395513 tp!395515))))

(declare-fun b!1379996 () Bool)

(declare-fun e!881801 () Bool)

(declare-fun tp!395514 () Bool)

(assert (=> b!1379996 (= e!881801 (and tp!395514 (inv!18338 (tag!2687 (h!19402 (t!121932 rules!2550)))) (inv!18341 (transformation!2425 (h!19402 (t!121932 rules!2550)))) e!881804))))

(declare-fun b!1379995 () Bool)

(declare-fun e!881803 () Bool)

(declare-fun tp!395512 () Bool)

(assert (=> b!1379995 (= e!881803 (and e!881801 tp!395512))))

(assert (=> b!1379586 (= tp!395415 e!881803)))

(assert (= b!1379996 b!1379997))

(assert (= b!1379995 b!1379996))

(assert (= (and b!1379586 ((_ is Cons!14001) (t!121932 rules!2550))) b!1379995))

(declare-fun m!1552749 () Bool)

(assert (=> b!1379996 m!1552749))

(declare-fun m!1552751 () Bool)

(assert (=> b!1379996 m!1552751))

(declare-fun b!1379998 () Bool)

(declare-fun e!881805 () Bool)

(declare-fun tp!395516 () Bool)

(assert (=> b!1379998 (= e!881805 (and tp_is_empty!6759 tp!395516))))

(assert (=> b!1379580 (= tp!395421 e!881805)))

(assert (= (and b!1379580 ((_ is Cons!13999) (originalCharacters!3287 t2!34))) b!1379998))

(declare-fun b_lambda!42477 () Bool)

(assert (= b_lambda!42469 (or b!1379579 b_lambda!42477)))

(declare-fun bs!336468 () Bool)

(declare-fun d!394015 () Bool)

(assert (= bs!336468 (and d!394015 b!1379579)))

(assert (=> bs!336468 (= (dynLambda!6372 lambda!59118 (h!19402 rules!2550)) (regex!2425 (h!19402 rules!2550)))))

(assert (=> b!1379888 d!394015))

(declare-fun b_lambda!42479 () Bool)

(assert (= b_lambda!42475 (or (and b!1379591 b_free!33509 (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) (and b!1379585 b_free!33513) (and b!1379592 b_free!33517 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) (and b!1379997 b_free!33525 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) b_lambda!42479)))

(declare-fun b_lambda!42481 () Bool)

(assert (= b_lambda!42465 (or (and b!1379591 b_free!33509) (and b!1379585 b_free!33513 (= (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) (and b!1379592 b_free!33517 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) (and b!1379997 b_free!33525 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) b_lambda!42481)))

(declare-fun b_lambda!42483 () Bool)

(assert (= b_lambda!42463 (or b!1379574 b_lambda!42483)))

(declare-fun bs!336469 () Bool)

(declare-fun d!394017 () Bool)

(assert (= bs!336469 (and d!394017 b!1379574)))

(declare-fun res!622268 () Bool)

(declare-fun e!881806 () Bool)

(assert (=> bs!336469 (=> (not res!622268) (not e!881806))))

(assert (=> bs!336469 (= res!622268 (matchR!1730 lt!458763 lt!458832))))

(assert (=> bs!336469 (= (dynLambda!6369 lambda!59117 lt!458832) e!881806)))

(declare-fun b!1379999 () Bool)

(declare-fun isPrefix!1133 (List!14065 List!14065) Bool)

(assert (=> b!1379999 (= e!881806 (isPrefix!1133 lt!458759 lt!458832))))

(assert (= (and bs!336469 res!622268) b!1379999))

(declare-fun m!1552753 () Bool)

(assert (=> bs!336469 m!1552753))

(declare-fun m!1552755 () Bool)

(assert (=> b!1379999 m!1552755))

(assert (=> d!393959 d!394017))

(declare-fun b_lambda!42485 () Bool)

(assert (= b_lambda!42473 (or (and b!1379591 b_free!33509 (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) (and b!1379585 b_free!33513) (and b!1379592 b_free!33517 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) (and b!1379997 b_free!33525 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t2!34))))) b_lambda!42485)))

(declare-fun b_lambda!42487 () Bool)

(assert (= b_lambda!42471 (or (and b!1379591 b_free!33509) (and b!1379585 b_free!33513 (= (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) (and b!1379592 b_free!33517 (= (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) (and b!1379997 b_free!33525 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toChars!3563 (transformation!2425 (rule!4184 t1!34))))) b_lambda!42487)))

(declare-fun b_lambda!42489 () Bool)

(assert (= b_lambda!42467 (or b!1379579 b_lambda!42489)))

(declare-fun bs!336470 () Bool)

(declare-fun d!394019 () Bool)

(assert (= bs!336470 (and d!394019 b!1379579)))

(assert (=> bs!336470 (= (dynLambda!6371 lambda!59119 (h!19403 (map!3098 rules!2550 lambda!59118))) (validRegex!1625 (h!19403 (map!3098 rules!2550 lambda!59118))))))

(declare-fun m!1552757 () Bool)

(assert (=> bs!336470 m!1552757))

(assert (=> b!1379881 d!394019))

(check-sat b_and!92495 b_and!92493 (not b!1379973) (not d!393967) (not d!393975) (not b!1379995) (not b!1379998) (not b!1379897) (not d!393999) (not b!1379844) b_and!92443 (not d!394009) (not b!1379893) (not d!393871) (not bm!92418) (not b!1379999) (not b_next!34227) (not b_lambda!42489) (not b_lambda!42483) (not b!1379940) (not b!1379831) (not b!1379981) (not b!1379874) (not b!1379617) (not b!1379944) (not d!394011) (not b!1379952) (not b!1379876) (not tb!72503) (not d!393985) (not d!394007) (not b!1379837) (not b_lambda!42479) b_and!92499 (not b_next!34211) (not b!1379843) (not b!1379939) (not b!1379950) (not b!1379819) (not bs!336470) (not bs!336469) (not b_next!34221) (not b_next!34219) (not b!1379953) (not d!393965) (not b!1379971) (not b!1379616) (not b!1379850) (not d!393875) b_and!92435 (not b!1379861) (not b!1379978) (not b!1379820) tp_is_empty!6759 (not b!1379980) (not b!1379840) (not d!393865) (not d!393969) b_and!92497 (not b!1379895) (not b!1379932) (not b!1379882) (not b!1379982) (not b_lambda!42485) (not b!1379972) (not b_next!34217) (not tb!72497) (not b_next!34213) (not b_lambda!42477) (not d!394005) (not b!1379611) (not b!1379857) (not b!1379849) (not b!1379818) (not d!393867) (not b!1379896) (not b_next!34229) (not d!394001) (not d!393997) (not b_next!34215) (not d!394013) (not d!393877) (not b!1379943) (not b!1379900) (not b!1379855) (not b!1379902) (not b!1379903) (not b!1379996) (not b!1379951) (not b!1379986) (not d!393977) (not b!1379830) (not b!1379858) (not b!1379984) (not b!1379901) (not b!1379875) (not d!394003) (not d!393963) b_and!92501 (not d!393973) (not d!393957) (not b!1379934) (not d!393959) (not d!393989) (not d!393961) (not b!1379985) b_and!92439 (not b!1379613) (not d!393955) (not b_lambda!42487) (not b!1379894) (not d!393993) (not b!1379888) (not d!393971) (not b_lambda!42481) (not b!1379954) (not b!1379959))
(check-sat b_and!92443 (not b_next!34227) b_and!92495 b_and!92493 b_and!92435 b_and!92497 (not b_next!34229) (not b_next!34215) b_and!92501 b_and!92439 b_and!92499 (not b_next!34211) (not b_next!34221) (not b_next!34219) (not b_next!34213) (not b_next!34217))
(get-model)

(declare-fun d!394029 () Bool)

(assert (=> d!394029 true))

(declare-fun order!8537 () Int)

(declare-fun lambda!59134 () Int)

(declare-fun order!8535 () Int)

(declare-fun dynLambda!6373 (Int Int) Int)

(declare-fun dynLambda!6374 (Int Int) Int)

(assert (=> d!394029 (< (dynLambda!6373 order!8535 (toChars!3563 (transformation!2425 (h!19402 rules!2550)))) (dynLambda!6374 order!8537 lambda!59134))))

(assert (=> d!394029 true))

(declare-fun order!8539 () Int)

(declare-fun dynLambda!6375 (Int Int) Int)

(assert (=> d!394029 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (h!19402 rules!2550)))) (dynLambda!6374 order!8537 lambda!59134))))

(declare-fun Forall!544 (Int) Bool)

(assert (=> d!394029 (= (semiInverseModEq!934 (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (h!19402 rules!2550)))) (Forall!544 lambda!59134))))

(declare-fun bs!336472 () Bool)

(assert (= bs!336472 d!394029))

(declare-fun m!1552787 () Bool)

(assert (=> bs!336472 m!1552787))

(assert (=> d!393871 d!394029))

(declare-fun d!394033 () Bool)

(assert (=> d!394033 (= (isEmpty!8449 (tail!1998 lt!458765)) ((_ is Nil!13999) (tail!1998 lt!458765)))))

(assert (=> b!1379932 d!394033))

(declare-fun d!394035 () Bool)

(assert (=> d!394035 (= (tail!1998 lt!458765) (t!121930 lt!458765))))

(assert (=> b!1379932 d!394035))

(declare-fun d!394037 () Bool)

(declare-fun e!881810 () Bool)

(assert (=> d!394037 e!881810))

(declare-fun res!622286 () Bool)

(assert (=> d!394037 (=> (not res!622286) (not e!881810))))

(declare-fun lt!458867 () List!14065)

(assert (=> d!394037 (= res!622286 (= (content!2043 lt!458867) ((_ map or) (content!2043 (t!121930 lt!458759)) (content!2043 (getSuffix!585 lt!458765 lt!458759)))))))

(declare-fun e!881811 () List!14065)

(assert (=> d!394037 (= lt!458867 e!881811)))

(declare-fun c!227050 () Bool)

(assert (=> d!394037 (= c!227050 ((_ is Nil!13999) (t!121930 lt!458759)))))

(assert (=> d!394037 (= (++!3626 (t!121930 lt!458759) (getSuffix!585 lt!458765 lt!458759)) lt!458867)))

(declare-fun b!1380018 () Bool)

(declare-fun res!622287 () Bool)

(assert (=> b!1380018 (=> (not res!622287) (not e!881810))))

(assert (=> b!1380018 (= res!622287 (= (size!11481 lt!458867) (+ (size!11481 (t!121930 lt!458759)) (size!11481 (getSuffix!585 lt!458765 lt!458759)))))))

(declare-fun b!1380017 () Bool)

(assert (=> b!1380017 (= e!881811 (Cons!13999 (h!19400 (t!121930 lt!458759)) (++!3626 (t!121930 (t!121930 lt!458759)) (getSuffix!585 lt!458765 lt!458759))))))

(declare-fun b!1380019 () Bool)

(assert (=> b!1380019 (= e!881810 (or (not (= (getSuffix!585 lt!458765 lt!458759) Nil!13999)) (= lt!458867 (t!121930 lt!458759))))))

(declare-fun b!1380016 () Bool)

(assert (=> b!1380016 (= e!881811 (getSuffix!585 lt!458765 lt!458759))))

(assert (= (and d!394037 c!227050) b!1380016))

(assert (= (and d!394037 (not c!227050)) b!1380017))

(assert (= (and d!394037 res!622286) b!1380018))

(assert (= (and b!1380018 res!622287) b!1380019))

(declare-fun m!1552789 () Bool)

(assert (=> d!394037 m!1552789))

(declare-fun m!1552791 () Bool)

(assert (=> d!394037 m!1552791))

(assert (=> d!394037 m!1552201))

(assert (=> d!394037 m!1552557))

(declare-fun m!1552793 () Bool)

(assert (=> b!1380018 m!1552793))

(declare-fun m!1552795 () Bool)

(assert (=> b!1380018 m!1552795))

(assert (=> b!1380018 m!1552201))

(assert (=> b!1380018 m!1552563))

(assert (=> b!1380017 m!1552201))

(declare-fun m!1552797 () Bool)

(assert (=> b!1380017 m!1552797))

(assert (=> b!1379830 d!394037))

(declare-fun d!394039 () Bool)

(declare-fun c!227053 () Bool)

(assert (=> d!394039 (= c!227053 ((_ is Nil!13999) lt!458841))))

(declare-fun e!881814 () (InoxSet C!7768))

(assert (=> d!394039 (= (content!2043 lt!458841) e!881814)))

(declare-fun b!1380024 () Bool)

(assert (=> b!1380024 (= e!881814 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380025 () Bool)

(assert (=> b!1380025 (= e!881814 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 lt!458841) true) (content!2043 (t!121930 lt!458841))))))

(assert (= (and d!394039 c!227053) b!1380024))

(assert (= (and d!394039 (not c!227053)) b!1380025))

(declare-fun m!1552799 () Bool)

(assert (=> b!1380025 m!1552799))

(declare-fun m!1552801 () Bool)

(assert (=> b!1380025 m!1552801))

(assert (=> d!393973 d!394039))

(declare-fun d!394041 () Bool)

(declare-fun c!227054 () Bool)

(assert (=> d!394041 (= c!227054 ((_ is Nil!13999) lt!458764))))

(declare-fun e!881815 () (InoxSet C!7768))

(assert (=> d!394041 (= (content!2043 lt!458764) e!881815)))

(declare-fun b!1380026 () Bool)

(assert (=> b!1380026 (= e!881815 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380027 () Bool)

(assert (=> b!1380027 (= e!881815 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 lt!458764) true) (content!2043 (t!121930 lt!458764))))))

(assert (= (and d!394041 c!227054) b!1380026))

(assert (= (and d!394041 (not c!227054)) b!1380027))

(declare-fun m!1552803 () Bool)

(assert (=> b!1380027 m!1552803))

(declare-fun m!1552805 () Bool)

(assert (=> b!1380027 m!1552805))

(assert (=> d!393973 d!394041))

(declare-fun d!394043 () Bool)

(declare-fun c!227055 () Bool)

(assert (=> d!394043 (= c!227055 ((_ is Nil!13999) (Cons!13999 lt!458766 Nil!13999)))))

(declare-fun e!881816 () (InoxSet C!7768))

(assert (=> d!394043 (= (content!2043 (Cons!13999 lt!458766 Nil!13999)) e!881816)))

(declare-fun b!1380028 () Bool)

(assert (=> b!1380028 (= e!881816 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380029 () Bool)

(assert (=> b!1380029 (= e!881816 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 (Cons!13999 lt!458766 Nil!13999)) true) (content!2043 (t!121930 (Cons!13999 lt!458766 Nil!13999)))))))

(assert (= (and d!394043 c!227055) b!1380028))

(assert (= (and d!394043 (not c!227055)) b!1380029))

(declare-fun m!1552807 () Bool)

(assert (=> b!1380029 m!1552807))

(declare-fun m!1552809 () Bool)

(assert (=> b!1380029 m!1552809))

(assert (=> d!393973 d!394043))

(declare-fun d!394045 () Bool)

(declare-fun lt!458870 () Bool)

(assert (=> d!394045 (= lt!458870 (isEmpty!8449 (list!5410 (_2!7693 lt!458850))))))

(declare-fun isEmpty!8451 (Conc!4611) Bool)

(assert (=> d!394045 (= lt!458870 (isEmpty!8451 (c!226984 (_2!7693 lt!458850))))))

(assert (=> d!394045 (= (isEmpty!8448 (_2!7693 lt!458850)) lt!458870)))

(declare-fun bs!336473 () Bool)

(assert (= bs!336473 d!394045))

(declare-fun m!1552811 () Bool)

(assert (=> bs!336473 m!1552811))

(assert (=> bs!336473 m!1552811))

(declare-fun m!1552813 () Bool)

(assert (=> bs!336473 m!1552813))

(declare-fun m!1552815 () Bool)

(assert (=> bs!336473 m!1552815))

(assert (=> b!1379896 d!394045))

(declare-fun b!1380040 () Bool)

(declare-fun res!622296 () Bool)

(declare-fun e!881819 () Bool)

(assert (=> b!1380040 (=> (not res!622296) (not e!881819))))

(declare-fun height!675 (Conc!4611) Int)

(declare-fun ++!3630 (Conc!4611 Conc!4611) Conc!4611)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1380040 (= res!622296 (>= (height!675 (++!3630 (c!226984 (charsOf!1397 t1!34)) (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))) (max!0 (height!675 (c!226984 (charsOf!1397 t1!34))) (height!675 (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0)))))))))

(declare-fun b!1380038 () Bool)

(declare-fun res!622297 () Bool)

(assert (=> b!1380038 (=> (not res!622297) (not e!881819))))

(declare-fun isBalanced!1358 (Conc!4611) Bool)

(assert (=> b!1380038 (= res!622297 (isBalanced!1358 (++!3630 (c!226984 (charsOf!1397 t1!34)) (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))))))

(declare-fun d!394047 () Bool)

(assert (=> d!394047 e!881819))

(declare-fun res!622299 () Bool)

(assert (=> d!394047 (=> (not res!622299) (not e!881819))))

(declare-fun appendAssocInst!287 (Conc!4611 Conc!4611) Bool)

(assert (=> d!394047 (= res!622299 (appendAssocInst!287 (c!226984 (charsOf!1397 t1!34)) (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0)))))))

(declare-fun lt!458873 () BalanceConc!9162)

(assert (=> d!394047 (= lt!458873 (BalanceConc!9163 (++!3630 (c!226984 (charsOf!1397 t1!34)) (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))))))

(assert (=> d!394047 (= (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))) lt!458873)))

(declare-fun b!1380041 () Bool)

(assert (=> b!1380041 (= e!881819 (= (list!5410 lt!458873) (++!3626 (list!5410 (charsOf!1397 t1!34)) (list!5410 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))))))

(declare-fun b!1380039 () Bool)

(declare-fun res!622298 () Bool)

(assert (=> b!1380039 (=> (not res!622298) (not e!881819))))

(assert (=> b!1380039 (= res!622298 (<= (height!675 (++!3630 (c!226984 (charsOf!1397 t1!34)) (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))) (+ (max!0 (height!675 (c!226984 (charsOf!1397 t1!34))) (height!675 (c!226984 (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))) 1)))))

(assert (= (and d!394047 res!622299) b!1380038))

(assert (= (and b!1380038 res!622297) b!1380039))

(assert (= (and b!1380039 res!622298) b!1380040))

(assert (= (and b!1380040 res!622296) b!1380041))

(declare-fun m!1552817 () Bool)

(assert (=> b!1380041 m!1552817))

(assert (=> b!1380041 m!1552223))

(declare-fun m!1552819 () Bool)

(assert (=> b!1380041 m!1552819))

(assert (=> b!1380041 m!1552689))

(declare-fun m!1552821 () Bool)

(assert (=> b!1380041 m!1552821))

(assert (=> b!1380041 m!1552819))

(assert (=> b!1380041 m!1552821))

(declare-fun m!1552823 () Bool)

(assert (=> b!1380041 m!1552823))

(declare-fun m!1552825 () Bool)

(assert (=> b!1380038 m!1552825))

(assert (=> b!1380038 m!1552825))

(declare-fun m!1552827 () Bool)

(assert (=> b!1380038 m!1552827))

(assert (=> b!1380039 m!1552825))

(declare-fun m!1552829 () Bool)

(assert (=> b!1380039 m!1552829))

(assert (=> b!1380039 m!1552825))

(declare-fun m!1552831 () Bool)

(assert (=> b!1380039 m!1552831))

(declare-fun m!1552833 () Bool)

(assert (=> b!1380039 m!1552833))

(declare-fun m!1552835 () Bool)

(assert (=> b!1380039 m!1552835))

(assert (=> b!1380039 m!1552831))

(assert (=> b!1380039 m!1552833))

(assert (=> b!1380040 m!1552825))

(assert (=> b!1380040 m!1552829))

(assert (=> b!1380040 m!1552825))

(assert (=> b!1380040 m!1552831))

(assert (=> b!1380040 m!1552833))

(assert (=> b!1380040 m!1552835))

(assert (=> b!1380040 m!1552831))

(assert (=> b!1380040 m!1552833))

(declare-fun m!1552837 () Bool)

(assert (=> d!394047 m!1552837))

(assert (=> d!394047 m!1552825))

(assert (=> d!393993 d!394047))

(declare-fun d!394049 () Bool)

(declare-fun lt!458933 () Bool)

(assert (=> d!394049 (= lt!458933 (prefixMatch!248 (rulesRegex!308 thiss!19762 rules!2550) (list!5410 (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))))))))

(declare-datatypes ((Context!1218 0))(
  ( (Context!1219 (exprs!1109 List!14068)) )
))
(declare-fun prefixMatchZipperSequence!272 ((InoxSet Context!1218) BalanceConc!9162 Int) Bool)

(declare-fun focus!100 (Regex!3739) (InoxSet Context!1218))

(assert (=> d!394049 (= lt!458933 (prefixMatchZipperSequence!272 (focus!100 (rulesRegex!308 thiss!19762 rules!2550)) (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))) 0))))

(declare-fun lt!458924 () Unit!20263)

(declare-fun lt!458928 () Unit!20263)

(assert (=> d!394049 (= lt!458924 lt!458928)))

(declare-fun lt!458926 () List!14065)

(declare-fun lt!458929 () (InoxSet Context!1218))

(declare-fun prefixMatchZipper!80 ((InoxSet Context!1218) List!14065) Bool)

(assert (=> d!394049 (= (prefixMatch!248 (rulesRegex!308 thiss!19762 rules!2550) lt!458926) (prefixMatchZipper!80 lt!458929 lt!458926))))

(declare-datatypes ((List!14074 0))(
  ( (Nil!14008) (Cons!14008 (h!19409 Context!1218) (t!121993 List!14074)) )
))
(declare-fun lt!458927 () List!14074)

(declare-fun prefixMatchZipperRegexEquiv!80 ((InoxSet Context!1218) List!14074 Regex!3739 List!14065) Unit!20263)

(assert (=> d!394049 (= lt!458928 (prefixMatchZipperRegexEquiv!80 lt!458929 lt!458927 (rulesRegex!308 thiss!19762 rules!2550) lt!458926))))

(assert (=> d!394049 (= lt!458926 (list!5410 (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0)))))))

(declare-fun toList!764 ((InoxSet Context!1218)) List!14074)

(assert (=> d!394049 (= lt!458927 (toList!764 (focus!100 (rulesRegex!308 thiss!19762 rules!2550))))))

(assert (=> d!394049 (= lt!458929 (focus!100 (rulesRegex!308 thiss!19762 rules!2550)))))

(declare-fun lt!458925 () Unit!20263)

(declare-fun lt!458931 () Unit!20263)

(assert (=> d!394049 (= lt!458925 lt!458931)))

(declare-fun lt!458930 () Int)

(declare-fun lt!458932 () (InoxSet Context!1218))

(declare-fun dropList!418 (BalanceConc!9162 Int) List!14065)

(assert (=> d!394049 (= (prefixMatchZipper!80 lt!458932 (dropList!418 (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))) lt!458930)) (prefixMatchZipperSequence!272 lt!458932 (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))) lt!458930))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!80 ((InoxSet Context!1218) BalanceConc!9162 Int) Unit!20263)

(assert (=> d!394049 (= lt!458931 (lemmaprefixMatchZipperSequenceEquivalent!80 lt!458932 (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0))) lt!458930))))

(assert (=> d!394049 (= lt!458930 0)))

(assert (=> d!394049 (= lt!458932 (focus!100 (rulesRegex!308 thiss!19762 rules!2550)))))

(assert (=> d!394049 (validRegex!1625 (rulesRegex!308 thiss!19762 rules!2550))))

(assert (=> d!394049 (= (prefixMatchZipperSequence!270 (rulesRegex!308 thiss!19762 rules!2550) (++!3628 (charsOf!1397 t1!34) (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0)))) lt!458933)))

(declare-fun bs!336475 () Bool)

(assert (= bs!336475 d!394049))

(assert (=> bs!336475 m!1552231))

(declare-fun m!1552865 () Bool)

(assert (=> bs!336475 m!1552865))

(assert (=> bs!336475 m!1552231))

(declare-fun m!1552867 () Bool)

(assert (=> bs!336475 m!1552867))

(assert (=> bs!336475 m!1552865))

(assert (=> bs!336475 m!1552691))

(declare-fun m!1552869 () Bool)

(assert (=> bs!336475 m!1552869))

(assert (=> bs!336475 m!1552231))

(declare-fun m!1552871 () Bool)

(assert (=> bs!336475 m!1552871))

(assert (=> bs!336475 m!1552865))

(declare-fun m!1552873 () Bool)

(assert (=> bs!336475 m!1552873))

(assert (=> bs!336475 m!1552691))

(declare-fun m!1552875 () Bool)

(assert (=> bs!336475 m!1552875))

(assert (=> bs!336475 m!1552691))

(declare-fun m!1552877 () Bool)

(assert (=> bs!336475 m!1552877))

(assert (=> bs!336475 m!1552875))

(declare-fun m!1552879 () Bool)

(assert (=> bs!336475 m!1552879))

(assert (=> bs!336475 m!1552691))

(declare-fun m!1552881 () Bool)

(assert (=> bs!336475 m!1552881))

(assert (=> bs!336475 m!1552231))

(declare-fun m!1552883 () Bool)

(assert (=> bs!336475 m!1552883))

(declare-fun m!1552885 () Bool)

(assert (=> bs!336475 m!1552885))

(assert (=> bs!336475 m!1552691))

(declare-fun m!1552887 () Bool)

(assert (=> bs!336475 m!1552887))

(assert (=> bs!336475 m!1552231))

(assert (=> bs!336475 m!1552877))

(declare-fun m!1552889 () Bool)

(assert (=> bs!336475 m!1552889))

(assert (=> d!393993 d!394049))

(declare-fun d!394053 () Bool)

(declare-fun e!881828 () Bool)

(assert (=> d!394053 e!881828))

(declare-fun res!622306 () Bool)

(assert (=> d!394053 (=> (not res!622306) (not e!881828))))

(declare-fun lt!458940 () BalanceConc!9162)

(assert (=> d!394053 (= res!622306 (= (list!5410 lt!458940) (Cons!13999 (apply!3467 (charsOf!1397 t2!34) 0) Nil!13999)))))

(declare-fun singleton!464 (C!7768) BalanceConc!9162)

(assert (=> d!394053 (= lt!458940 (singleton!464 (apply!3467 (charsOf!1397 t2!34) 0)))))

(assert (=> d!394053 (= (singletonSeq!1064 (apply!3467 (charsOf!1397 t2!34) 0)) lt!458940)))

(declare-fun b!1380052 () Bool)

(assert (=> b!1380052 (= e!881828 (isBalanced!1358 (c!226984 lt!458940)))))

(assert (= (and d!394053 res!622306) b!1380052))

(declare-fun m!1552905 () Bool)

(assert (=> d!394053 m!1552905))

(assert (=> d!394053 m!1552693))

(declare-fun m!1552907 () Bool)

(assert (=> d!394053 m!1552907))

(declare-fun m!1552909 () Bool)

(assert (=> b!1380052 m!1552909))

(assert (=> d!393993 d!394053))

(assert (=> d!393993 d!393975))

(declare-fun d!394059 () Bool)

(declare-fun lt!458941 () C!7768)

(assert (=> d!394059 (= lt!458941 (apply!3472 (list!5410 (charsOf!1397 t2!34)) 0))))

(assert (=> d!394059 (= lt!458941 (apply!3473 (c!226984 (charsOf!1397 t2!34)) 0))))

(declare-fun e!881829 () Bool)

(assert (=> d!394059 e!881829))

(declare-fun res!622307 () Bool)

(assert (=> d!394059 (=> (not res!622307) (not e!881829))))

(assert (=> d!394059 (= res!622307 (<= 0 0))))

(assert (=> d!394059 (= (apply!3467 (charsOf!1397 t2!34) 0) lt!458941)))

(declare-fun b!1380053 () Bool)

(assert (=> b!1380053 (= e!881829 (< 0 (size!11474 (charsOf!1397 t2!34))))))

(assert (= (and d!394059 res!622307) b!1380053))

(assert (=> d!394059 m!1552265))

(declare-fun m!1552911 () Bool)

(assert (=> d!394059 m!1552911))

(assert (=> d!394059 m!1552911))

(declare-fun m!1552913 () Bool)

(assert (=> d!394059 m!1552913))

(declare-fun m!1552915 () Bool)

(assert (=> d!394059 m!1552915))

(assert (=> b!1380053 m!1552265))

(declare-fun m!1552917 () Bool)

(assert (=> b!1380053 m!1552917))

(assert (=> d!393993 d!394059))

(assert (=> d!393993 d!393971))

(assert (=> d!393993 d!394007))

(declare-fun d!394061 () Bool)

(assert (=> d!394061 (= (inv!18346 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))) (isBalanced!1358 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(declare-fun bs!336476 () Bool)

(assert (= bs!336476 d!394061))

(declare-fun m!1552931 () Bool)

(assert (=> bs!336476 m!1552931))

(assert (=> tb!72497 d!394061))

(declare-fun d!394067 () Bool)

(declare-fun res!622324 () Bool)

(declare-fun e!881851 () Bool)

(assert (=> d!394067 (=> res!622324 e!881851)))

(assert (=> d!394067 (= res!622324 ((_ is Nil!14001) rules!2550))))

(assert (=> d!394067 (= (noDuplicateTag!903 thiss!19762 rules!2550 Nil!14006) e!881851)))

(declare-fun b!1380082 () Bool)

(declare-fun e!881852 () Bool)

(assert (=> b!1380082 (= e!881851 e!881852)))

(declare-fun res!622325 () Bool)

(assert (=> b!1380082 (=> (not res!622325) (not e!881852))))

(declare-fun contains!2660 (List!14072 String!16811) Bool)

(assert (=> b!1380082 (= res!622325 (not (contains!2660 Nil!14006 (tag!2687 (h!19402 rules!2550)))))))

(declare-fun b!1380083 () Bool)

(assert (=> b!1380083 (= e!881852 (noDuplicateTag!903 thiss!19762 (t!121932 rules!2550) (Cons!14006 (tag!2687 (h!19402 rules!2550)) Nil!14006)))))

(assert (= (and d!394067 (not res!622324)) b!1380082))

(assert (= (and b!1380082 res!622325) b!1380083))

(declare-fun m!1552933 () Bool)

(assert (=> b!1380082 m!1552933))

(declare-fun m!1552935 () Bool)

(assert (=> b!1380083 m!1552935))

(assert (=> b!1379959 d!394067))

(declare-fun d!394069 () Bool)

(declare-fun c!227071 () Bool)

(assert (=> d!394069 (= c!227071 ((_ is Node!4611) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(declare-fun e!881864 () Bool)

(assert (=> d!394069 (= (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))) e!881864)))

(declare-fun b!1380099 () Bool)

(declare-fun inv!18347 (Conc!4611) Bool)

(assert (=> b!1380099 (= e!881864 (inv!18347 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(declare-fun b!1380100 () Bool)

(declare-fun e!881865 () Bool)

(assert (=> b!1380100 (= e!881864 e!881865)))

(declare-fun res!622333 () Bool)

(assert (=> b!1380100 (= res!622333 (not ((_ is Leaf!7020) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))))))

(assert (=> b!1380100 (=> res!622333 e!881865)))

(declare-fun b!1380101 () Bool)

(declare-fun inv!18348 (Conc!4611) Bool)

(assert (=> b!1380101 (= e!881865 (inv!18348 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(assert (= (and d!394069 c!227071) b!1380099))

(assert (= (and d!394069 (not c!227071)) b!1380100))

(assert (= (and b!1380100 (not res!622333)) b!1380101))

(declare-fun m!1552943 () Bool)

(assert (=> b!1380099 m!1552943))

(declare-fun m!1552945 () Bool)

(assert (=> b!1380101 m!1552945))

(assert (=> b!1379954 d!394069))

(declare-fun b!1380102 () Bool)

(declare-fun res!622341 () Bool)

(declare-fun e!881870 () Bool)

(assert (=> b!1380102 (=> res!622341 e!881870)))

(assert (=> b!1380102 (= res!622341 (not (isEmpty!8449 (tail!1998 lt!458832))))))

(declare-fun b!1380103 () Bool)

(declare-fun res!622336 () Bool)

(declare-fun e!881867 () Bool)

(assert (=> b!1380103 (=> res!622336 e!881867)))

(assert (=> b!1380103 (= res!622336 (not ((_ is ElementMatch!3739) lt!458763)))))

(declare-fun e!881872 () Bool)

(assert (=> b!1380103 (= e!881872 e!881867)))

(declare-fun b!1380104 () Bool)

(declare-fun e!881866 () Bool)

(assert (=> b!1380104 (= e!881866 (nullable!1205 lt!458763))))

(declare-fun b!1380105 () Bool)

(declare-fun e!881869 () Bool)

(assert (=> b!1380105 (= e!881869 e!881872)))

(declare-fun c!227074 () Bool)

(assert (=> b!1380105 (= c!227074 ((_ is EmptyLang!3739) lt!458763))))

(declare-fun b!1380106 () Bool)

(declare-fun e!881871 () Bool)

(assert (=> b!1380106 (= e!881871 e!881870)))

(declare-fun res!622334 () Bool)

(assert (=> b!1380106 (=> res!622334 e!881870)))

(declare-fun call!92433 () Bool)

(assert (=> b!1380106 (= res!622334 call!92433)))

(declare-fun bm!92428 () Bool)

(assert (=> bm!92428 (= call!92433 (isEmpty!8449 lt!458832))))

(declare-fun b!1380107 () Bool)

(assert (=> b!1380107 (= e!881867 e!881871)))

(declare-fun res!622335 () Bool)

(assert (=> b!1380107 (=> (not res!622335) (not e!881871))))

(declare-fun lt!458943 () Bool)

(assert (=> b!1380107 (= res!622335 (not lt!458943))))

(declare-fun b!1380108 () Bool)

(assert (=> b!1380108 (= e!881869 (= lt!458943 call!92433))))

(declare-fun b!1380109 () Bool)

(declare-fun res!622337 () Bool)

(declare-fun e!881868 () Bool)

(assert (=> b!1380109 (=> (not res!622337) (not e!881868))))

(assert (=> b!1380109 (= res!622337 (isEmpty!8449 (tail!1998 lt!458832)))))

(declare-fun b!1380110 () Bool)

(assert (=> b!1380110 (= e!881868 (= (head!2501 lt!458832) (c!226983 lt!458763)))))

(declare-fun b!1380111 () Bool)

(declare-fun res!622338 () Bool)

(assert (=> b!1380111 (=> (not res!622338) (not e!881868))))

(assert (=> b!1380111 (= res!622338 (not call!92433))))

(declare-fun b!1380112 () Bool)

(assert (=> b!1380112 (= e!881872 (not lt!458943))))

(declare-fun b!1380113 () Bool)

(assert (=> b!1380113 (= e!881870 (not (= (head!2501 lt!458832) (c!226983 lt!458763))))))

(declare-fun d!394073 () Bool)

(assert (=> d!394073 e!881869))

(declare-fun c!227072 () Bool)

(assert (=> d!394073 (= c!227072 ((_ is EmptyExpr!3739) lt!458763))))

(assert (=> d!394073 (= lt!458943 e!881866)))

(declare-fun c!227073 () Bool)

(assert (=> d!394073 (= c!227073 (isEmpty!8449 lt!458832))))

(assert (=> d!394073 (validRegex!1625 lt!458763)))

(assert (=> d!394073 (= (matchR!1730 lt!458763 lt!458832) lt!458943)))

(declare-fun b!1380114 () Bool)

(assert (=> b!1380114 (= e!881866 (matchR!1730 (derivativeStep!963 lt!458763 (head!2501 lt!458832)) (tail!1998 lt!458832)))))

(declare-fun b!1380115 () Bool)

(declare-fun res!622340 () Bool)

(assert (=> b!1380115 (=> res!622340 e!881867)))

(assert (=> b!1380115 (= res!622340 e!881868)))

(declare-fun res!622339 () Bool)

(assert (=> b!1380115 (=> (not res!622339) (not e!881868))))

(assert (=> b!1380115 (= res!622339 lt!458943)))

(assert (= (and d!394073 c!227073) b!1380104))

(assert (= (and d!394073 (not c!227073)) b!1380114))

(assert (= (and d!394073 c!227072) b!1380108))

(assert (= (and d!394073 (not c!227072)) b!1380105))

(assert (= (and b!1380105 c!227074) b!1380112))

(assert (= (and b!1380105 (not c!227074)) b!1380103))

(assert (= (and b!1380103 (not res!622336)) b!1380115))

(assert (= (and b!1380115 res!622339) b!1380111))

(assert (= (and b!1380111 res!622338) b!1380109))

(assert (= (and b!1380109 res!622337) b!1380110))

(assert (= (and b!1380115 (not res!622340)) b!1380107))

(assert (= (and b!1380107 res!622335) b!1380106))

(assert (= (and b!1380106 (not res!622334)) b!1380102))

(assert (= (and b!1380102 (not res!622341)) b!1380113))

(assert (= (or b!1380108 b!1380106 b!1380111) bm!92428))

(declare-fun m!1552947 () Bool)

(assert (=> d!394073 m!1552947))

(assert (=> d!394073 m!1552703))

(assert (=> b!1380104 m!1552705))

(declare-fun m!1552949 () Bool)

(assert (=> b!1380114 m!1552949))

(assert (=> b!1380114 m!1552949))

(declare-fun m!1552951 () Bool)

(assert (=> b!1380114 m!1552951))

(declare-fun m!1552953 () Bool)

(assert (=> b!1380114 m!1552953))

(assert (=> b!1380114 m!1552951))

(assert (=> b!1380114 m!1552953))

(declare-fun m!1552955 () Bool)

(assert (=> b!1380114 m!1552955))

(assert (=> bm!92428 m!1552947))

(assert (=> b!1380102 m!1552953))

(assert (=> b!1380102 m!1552953))

(declare-fun m!1552957 () Bool)

(assert (=> b!1380102 m!1552957))

(assert (=> b!1380113 m!1552949))

(assert (=> b!1380110 m!1552949))

(assert (=> b!1380109 m!1552953))

(assert (=> b!1380109 m!1552953))

(assert (=> b!1380109 m!1552957))

(assert (=> bs!336469 d!394073))

(declare-fun d!394075 () Bool)

(declare-fun lt!458944 () List!14065)

(assert (=> d!394075 (= (++!3626 (t!121930 lt!458759) lt!458944) (tail!1998 lt!458765))))

(declare-fun e!881873 () List!14065)

(assert (=> d!394075 (= lt!458944 e!881873)))

(declare-fun c!227075 () Bool)

(assert (=> d!394075 (= c!227075 ((_ is Cons!13999) (t!121930 lt!458759)))))

(assert (=> d!394075 (>= (size!11481 (tail!1998 lt!458765)) (size!11481 (t!121930 lt!458759)))))

(assert (=> d!394075 (= (getSuffix!585 (tail!1998 lt!458765) (t!121930 lt!458759)) lt!458944)))

(declare-fun b!1380116 () Bool)

(assert (=> b!1380116 (= e!881873 (getSuffix!585 (tail!1998 (tail!1998 lt!458765)) (t!121930 (t!121930 lt!458759))))))

(declare-fun b!1380117 () Bool)

(assert (=> b!1380117 (= e!881873 (tail!1998 lt!458765))))

(assert (= (and d!394075 c!227075) b!1380116))

(assert (= (and d!394075 (not c!227075)) b!1380117))

(declare-fun m!1552959 () Bool)

(assert (=> d!394075 m!1552959))

(assert (=> d!394075 m!1552571))

(declare-fun m!1552961 () Bool)

(assert (=> d!394075 m!1552961))

(assert (=> d!394075 m!1552795))

(assert (=> b!1380116 m!1552571))

(declare-fun m!1552963 () Bool)

(assert (=> b!1380116 m!1552963))

(assert (=> b!1380116 m!1552963))

(declare-fun m!1552965 () Bool)

(assert (=> b!1380116 m!1552965))

(assert (=> b!1379837 d!394075))

(assert (=> b!1379837 d!394035))

(declare-fun d!394077 () Bool)

(declare-fun charsToInt!0 (List!14066) (_ BitVec 32))

(assert (=> d!394077 (= (inv!16 (value!78745 t2!34)) (= (charsToInt!0 (text!18052 (value!78745 t2!34))) (value!78736 (value!78745 t2!34))))))

(declare-fun bs!336477 () Bool)

(assert (= bs!336477 d!394077))

(declare-fun m!1552967 () Bool)

(assert (=> bs!336477 m!1552967))

(assert (=> b!1379876 d!394077))

(declare-fun d!394079 () Bool)

(declare-fun lt!458945 () Bool)

(assert (=> d!394079 (= lt!458945 (select (content!2043 (t!121930 lt!458765)) lt!458760))))

(declare-fun e!881876 () Bool)

(assert (=> d!394079 (= lt!458945 e!881876)))

(declare-fun res!622345 () Bool)

(assert (=> d!394079 (=> (not res!622345) (not e!881876))))

(assert (=> d!394079 (= res!622345 ((_ is Cons!13999) (t!121930 lt!458765)))))

(assert (=> d!394079 (= (contains!2659 (t!121930 lt!458765) lt!458760) lt!458945)))

(declare-fun b!1380120 () Bool)

(declare-fun e!881877 () Bool)

(assert (=> b!1380120 (= e!881876 e!881877)))

(declare-fun res!622344 () Bool)

(assert (=> b!1380120 (=> res!622344 e!881877)))

(assert (=> b!1380120 (= res!622344 (= (h!19400 (t!121930 lt!458765)) lt!458760))))

(declare-fun b!1380121 () Bool)

(assert (=> b!1380121 (= e!881877 (contains!2659 (t!121930 (t!121930 lt!458765)) lt!458760))))

(assert (= (and d!394079 res!622345) b!1380120))

(assert (= (and b!1380120 (not res!622344)) b!1380121))

(declare-fun m!1552969 () Bool)

(assert (=> d!394079 m!1552969))

(declare-fun m!1552971 () Bool)

(assert (=> d!394079 m!1552971))

(declare-fun m!1552973 () Bool)

(assert (=> b!1380121 m!1552973))

(assert (=> b!1379861 d!394079))

(declare-fun b!1380122 () Bool)

(declare-fun res!622353 () Bool)

(declare-fun e!881882 () Bool)

(assert (=> b!1380122 (=> res!622353 e!881882)))

(assert (=> b!1380122 (= res!622353 (not (isEmpty!8449 (tail!1998 (tail!1998 lt!458765)))))))

(declare-fun b!1380123 () Bool)

(declare-fun res!622348 () Bool)

(declare-fun e!881879 () Bool)

(assert (=> b!1380123 (=> res!622348 e!881879)))

(assert (=> b!1380123 (= res!622348 (not ((_ is ElementMatch!3739) (derivativeStep!963 lt!458763 (head!2501 lt!458765)))))))

(declare-fun e!881884 () Bool)

(assert (=> b!1380123 (= e!881884 e!881879)))

(declare-fun b!1380124 () Bool)

(declare-fun e!881878 () Bool)

(assert (=> b!1380124 (= e!881878 (nullable!1205 (derivativeStep!963 lt!458763 (head!2501 lt!458765))))))

(declare-fun b!1380125 () Bool)

(declare-fun e!881881 () Bool)

(assert (=> b!1380125 (= e!881881 e!881884)))

(declare-fun c!227078 () Bool)

(assert (=> b!1380125 (= c!227078 ((_ is EmptyLang!3739) (derivativeStep!963 lt!458763 (head!2501 lt!458765))))))

(declare-fun b!1380126 () Bool)

(declare-fun e!881883 () Bool)

(assert (=> b!1380126 (= e!881883 e!881882)))

(declare-fun res!622346 () Bool)

(assert (=> b!1380126 (=> res!622346 e!881882)))

(declare-fun call!92434 () Bool)

(assert (=> b!1380126 (= res!622346 call!92434)))

(declare-fun bm!92429 () Bool)

(assert (=> bm!92429 (= call!92434 (isEmpty!8449 (tail!1998 lt!458765)))))

(declare-fun b!1380127 () Bool)

(assert (=> b!1380127 (= e!881879 e!881883)))

(declare-fun res!622347 () Bool)

(assert (=> b!1380127 (=> (not res!622347) (not e!881883))))

(declare-fun lt!458946 () Bool)

(assert (=> b!1380127 (= res!622347 (not lt!458946))))

(declare-fun b!1380128 () Bool)

(assert (=> b!1380128 (= e!881881 (= lt!458946 call!92434))))

(declare-fun b!1380129 () Bool)

(declare-fun res!622349 () Bool)

(declare-fun e!881880 () Bool)

(assert (=> b!1380129 (=> (not res!622349) (not e!881880))))

(assert (=> b!1380129 (= res!622349 (isEmpty!8449 (tail!1998 (tail!1998 lt!458765))))))

(declare-fun b!1380130 () Bool)

(assert (=> b!1380130 (= e!881880 (= (head!2501 (tail!1998 lt!458765)) (c!226983 (derivativeStep!963 lt!458763 (head!2501 lt!458765)))))))

(declare-fun b!1380131 () Bool)

(declare-fun res!622350 () Bool)

(assert (=> b!1380131 (=> (not res!622350) (not e!881880))))

(assert (=> b!1380131 (= res!622350 (not call!92434))))

(declare-fun b!1380132 () Bool)

(assert (=> b!1380132 (= e!881884 (not lt!458946))))

(declare-fun b!1380133 () Bool)

(assert (=> b!1380133 (= e!881882 (not (= (head!2501 (tail!1998 lt!458765)) (c!226983 (derivativeStep!963 lt!458763 (head!2501 lt!458765))))))))

(declare-fun d!394081 () Bool)

(assert (=> d!394081 e!881881))

(declare-fun c!227076 () Bool)

(assert (=> d!394081 (= c!227076 ((_ is EmptyExpr!3739) (derivativeStep!963 lt!458763 (head!2501 lt!458765))))))

(assert (=> d!394081 (= lt!458946 e!881878)))

(declare-fun c!227077 () Bool)

(assert (=> d!394081 (= c!227077 (isEmpty!8449 (tail!1998 lt!458765)))))

(assert (=> d!394081 (validRegex!1625 (derivativeStep!963 lt!458763 (head!2501 lt!458765)))))

(assert (=> d!394081 (= (matchR!1730 (derivativeStep!963 lt!458763 (head!2501 lt!458765)) (tail!1998 lt!458765)) lt!458946)))

(declare-fun b!1380134 () Bool)

(assert (=> b!1380134 (= e!881878 (matchR!1730 (derivativeStep!963 (derivativeStep!963 lt!458763 (head!2501 lt!458765)) (head!2501 (tail!1998 lt!458765))) (tail!1998 (tail!1998 lt!458765))))))

(declare-fun b!1380135 () Bool)

(declare-fun res!622352 () Bool)

(assert (=> b!1380135 (=> res!622352 e!881879)))

(assert (=> b!1380135 (= res!622352 e!881880)))

(declare-fun res!622351 () Bool)

(assert (=> b!1380135 (=> (not res!622351) (not e!881880))))

(assert (=> b!1380135 (= res!622351 lt!458946)))

(assert (= (and d!394081 c!227077) b!1380124))

(assert (= (and d!394081 (not c!227077)) b!1380134))

(assert (= (and d!394081 c!227076) b!1380128))

(assert (= (and d!394081 (not c!227076)) b!1380125))

(assert (= (and b!1380125 c!227078) b!1380132))

(assert (= (and b!1380125 (not c!227078)) b!1380123))

(assert (= (and b!1380123 (not res!622348)) b!1380135))

(assert (= (and b!1380135 res!622351) b!1380131))

(assert (= (and b!1380131 res!622350) b!1380129))

(assert (= (and b!1380129 res!622349) b!1380130))

(assert (= (and b!1380135 (not res!622352)) b!1380127))

(assert (= (and b!1380127 res!622347) b!1380126))

(assert (= (and b!1380126 (not res!622346)) b!1380122))

(assert (= (and b!1380122 (not res!622353)) b!1380133))

(assert (= (or b!1380128 b!1380126 b!1380131) bm!92429))

(assert (=> d!394081 m!1552571))

(assert (=> d!394081 m!1552713))

(assert (=> d!394081 m!1552709))

(declare-fun m!1552977 () Bool)

(assert (=> d!394081 m!1552977))

(assert (=> b!1380124 m!1552709))

(declare-fun m!1552979 () Bool)

(assert (=> b!1380124 m!1552979))

(assert (=> b!1380134 m!1552571))

(declare-fun m!1552981 () Bool)

(assert (=> b!1380134 m!1552981))

(assert (=> b!1380134 m!1552709))

(assert (=> b!1380134 m!1552981))

(declare-fun m!1552983 () Bool)

(assert (=> b!1380134 m!1552983))

(assert (=> b!1380134 m!1552571))

(assert (=> b!1380134 m!1552963))

(assert (=> b!1380134 m!1552983))

(assert (=> b!1380134 m!1552963))

(declare-fun m!1552985 () Bool)

(assert (=> b!1380134 m!1552985))

(assert (=> bm!92429 m!1552571))

(assert (=> bm!92429 m!1552713))

(assert (=> b!1380122 m!1552571))

(assert (=> b!1380122 m!1552963))

(assert (=> b!1380122 m!1552963))

(declare-fun m!1552987 () Bool)

(assert (=> b!1380122 m!1552987))

(assert (=> b!1380133 m!1552571))

(assert (=> b!1380133 m!1552981))

(assert (=> b!1380130 m!1552571))

(assert (=> b!1380130 m!1552981))

(assert (=> b!1380129 m!1552571))

(assert (=> b!1380129 m!1552963))

(assert (=> b!1380129 m!1552963))

(assert (=> b!1380129 m!1552987))

(assert (=> b!1379944 d!394081))

(declare-fun e!881916 () Regex!3739)

(declare-fun call!92445 () Regex!3739)

(declare-fun b!1380184 () Bool)

(declare-fun call!92444 () Regex!3739)

(assert (=> b!1380184 (= e!881916 (Union!3739 (Concat!6254 call!92445 (regTwo!7990 lt!458763)) call!92444))))

(declare-fun b!1380185 () Bool)

(declare-fun e!881913 () Regex!3739)

(assert (=> b!1380185 (= e!881913 (Concat!6254 call!92445 lt!458763))))

(declare-fun b!1380186 () Bool)

(assert (=> b!1380186 (= e!881916 (Union!3739 (Concat!6254 call!92444 (regTwo!7990 lt!458763)) EmptyLang!3739))))

(declare-fun c!227095 () Bool)

(declare-fun c!227096 () Bool)

(declare-fun call!92446 () Regex!3739)

(declare-fun bm!92438 () Bool)

(assert (=> bm!92438 (= call!92446 (derivativeStep!963 (ite c!227096 (regTwo!7991 lt!458763) (ite c!227095 (regTwo!7990 lt!458763) (regOne!7990 lt!458763))) (head!2501 lt!458765)))))

(declare-fun b!1380188 () Bool)

(assert (=> b!1380188 (= c!227096 ((_ is Union!3739) lt!458763))))

(declare-fun e!881917 () Regex!3739)

(declare-fun e!881915 () Regex!3739)

(assert (=> b!1380188 (= e!881917 e!881915)))

(declare-fun bm!92439 () Bool)

(declare-fun c!227097 () Bool)

(declare-fun call!92443 () Regex!3739)

(assert (=> bm!92439 (= call!92443 (derivativeStep!963 (ite c!227096 (regOne!7991 lt!458763) (ite c!227097 (reg!4068 lt!458763) (regOne!7990 lt!458763))) (head!2501 lt!458765)))))

(declare-fun bm!92440 () Bool)

(assert (=> bm!92440 (= call!92445 call!92443)))

(declare-fun b!1380189 () Bool)

(declare-fun e!881914 () Regex!3739)

(assert (=> b!1380189 (= e!881914 EmptyLang!3739)))

(declare-fun b!1380190 () Bool)

(assert (=> b!1380190 (= e!881915 e!881913)))

(assert (=> b!1380190 (= c!227097 ((_ is Star!3739) lt!458763))))

(declare-fun bm!92441 () Bool)

(assert (=> bm!92441 (= call!92444 call!92446)))

(declare-fun b!1380191 () Bool)

(assert (=> b!1380191 (= e!881915 (Union!3739 call!92443 call!92446))))

(declare-fun b!1380187 () Bool)

(assert (=> b!1380187 (= e!881914 e!881917)))

(declare-fun c!227093 () Bool)

(assert (=> b!1380187 (= c!227093 ((_ is ElementMatch!3739) lt!458763))))

(declare-fun d!394085 () Bool)

(declare-fun lt!458961 () Regex!3739)

(assert (=> d!394085 (validRegex!1625 lt!458961)))

(assert (=> d!394085 (= lt!458961 e!881914)))

(declare-fun c!227094 () Bool)

(assert (=> d!394085 (= c!227094 (or ((_ is EmptyExpr!3739) lt!458763) ((_ is EmptyLang!3739) lt!458763)))))

(assert (=> d!394085 (validRegex!1625 lt!458763)))

(assert (=> d!394085 (= (derivativeStep!963 lt!458763 (head!2501 lt!458765)) lt!458961)))

(declare-fun b!1380192 () Bool)

(assert (=> b!1380192 (= c!227095 (nullable!1205 (regOne!7990 lt!458763)))))

(assert (=> b!1380192 (= e!881913 e!881916)))

(declare-fun b!1380193 () Bool)

(assert (=> b!1380193 (= e!881917 (ite (= (head!2501 lt!458765) (c!226983 lt!458763)) EmptyExpr!3739 EmptyLang!3739))))

(assert (= (and d!394085 c!227094) b!1380189))

(assert (= (and d!394085 (not c!227094)) b!1380187))

(assert (= (and b!1380187 c!227093) b!1380193))

(assert (= (and b!1380187 (not c!227093)) b!1380188))

(assert (= (and b!1380188 c!227096) b!1380191))

(assert (= (and b!1380188 (not c!227096)) b!1380190))

(assert (= (and b!1380190 c!227097) b!1380185))

(assert (= (and b!1380190 (not c!227097)) b!1380192))

(assert (= (and b!1380192 c!227095) b!1380184))

(assert (= (and b!1380192 (not c!227095)) b!1380186))

(assert (= (or b!1380184 b!1380186) bm!92441))

(assert (= (or b!1380185 b!1380184) bm!92440))

(assert (= (or b!1380191 bm!92440) bm!92439))

(assert (= (or b!1380191 bm!92441) bm!92438))

(assert (=> bm!92438 m!1552707))

(declare-fun m!1553025 () Bool)

(assert (=> bm!92438 m!1553025))

(assert (=> bm!92439 m!1552707))

(declare-fun m!1553027 () Bool)

(assert (=> bm!92439 m!1553027))

(declare-fun m!1553029 () Bool)

(assert (=> d!394085 m!1553029))

(assert (=> d!394085 m!1552703))

(declare-fun m!1553031 () Bool)

(assert (=> b!1380192 m!1553031))

(assert (=> b!1379944 d!394085))

(declare-fun d!394105 () Bool)

(assert (=> d!394105 (= (head!2501 lt!458765) (h!19400 lt!458765))))

(assert (=> b!1379944 d!394105))

(assert (=> b!1379944 d!394035))

(declare-fun d!394107 () Bool)

(declare-fun lt!458967 () C!7768)

(assert (=> d!394107 (contains!2659 (list!5410 lt!458761) lt!458967)))

(declare-fun e!881923 () C!7768)

(assert (=> d!394107 (= lt!458967 e!881923)))

(declare-fun c!227100 () Bool)

(assert (=> d!394107 (= c!227100 (= 0 0))))

(declare-fun e!881922 () Bool)

(assert (=> d!394107 e!881922))

(declare-fun res!622374 () Bool)

(assert (=> d!394107 (=> (not res!622374) (not e!881922))))

(assert (=> d!394107 (= res!622374 (<= 0 0))))

(assert (=> d!394107 (= (apply!3472 (list!5410 lt!458761) 0) lt!458967)))

(declare-fun b!1380200 () Bool)

(assert (=> b!1380200 (= e!881922 (< 0 (size!11481 (list!5410 lt!458761))))))

(declare-fun b!1380201 () Bool)

(assert (=> b!1380201 (= e!881923 (head!2501 (list!5410 lt!458761)))))

(declare-fun b!1380202 () Bool)

(assert (=> b!1380202 (= e!881923 (apply!3472 (tail!1998 (list!5410 lt!458761)) (- 0 1)))))

(assert (= (and d!394107 res!622374) b!1380200))

(assert (= (and d!394107 c!227100) b!1380201))

(assert (= (and d!394107 (not c!227100)) b!1380202))

(assert (=> d!394107 m!1552229))

(declare-fun m!1553039 () Bool)

(assert (=> d!394107 m!1553039))

(assert (=> b!1380200 m!1552229))

(declare-fun m!1553041 () Bool)

(assert (=> b!1380200 m!1553041))

(assert (=> b!1380201 m!1552229))

(declare-fun m!1553043 () Bool)

(assert (=> b!1380201 m!1553043))

(assert (=> b!1380202 m!1552229))

(declare-fun m!1553045 () Bool)

(assert (=> b!1380202 m!1553045))

(assert (=> b!1380202 m!1553045))

(declare-fun m!1553047 () Bool)

(assert (=> b!1380202 m!1553047))

(assert (=> d!393963 d!394107))

(assert (=> d!393963 d!393969))

(declare-fun b!1380217 () Bool)

(declare-fun e!881932 () C!7768)

(declare-fun e!881933 () C!7768)

(assert (=> b!1380217 (= e!881932 e!881933)))

(declare-fun lt!458973 () Bool)

(declare-fun appendIndex!174 (List!14065 List!14065 Int) Bool)

(assert (=> b!1380217 (= lt!458973 (appendIndex!174 (list!5414 (left!11973 (c!226984 lt!458761))) (list!5414 (right!12303 (c!226984 lt!458761))) 0))))

(declare-fun c!227108 () Bool)

(assert (=> b!1380217 (= c!227108 (< 0 (size!11484 (left!11973 (c!226984 lt!458761)))))))

(declare-fun b!1380218 () Bool)

(declare-fun call!92449 () C!7768)

(assert (=> b!1380218 (= e!881933 call!92449)))

(declare-fun bm!92444 () Bool)

(declare-fun c!227109 () Bool)

(assert (=> bm!92444 (= c!227109 c!227108)))

(declare-fun e!881934 () Int)

(assert (=> bm!92444 (= call!92449 (apply!3473 (ite c!227108 (left!11973 (c!226984 lt!458761)) (right!12303 (c!226984 lt!458761))) e!881934))))

(declare-fun b!1380219 () Bool)

(declare-fun apply!3474 (IArray!9227 Int) C!7768)

(assert (=> b!1380219 (= e!881932 (apply!3474 (xs!7338 (c!226984 lt!458761)) 0))))

(declare-fun b!1380220 () Bool)

(assert (=> b!1380220 (= e!881933 call!92449)))

(declare-fun b!1380221 () Bool)

(assert (=> b!1380221 (= e!881934 (- 0 (size!11484 (left!11973 (c!226984 lt!458761)))))))

(declare-fun b!1380222 () Bool)

(assert (=> b!1380222 (= e!881934 0)))

(declare-fun b!1380223 () Bool)

(declare-fun e!881935 () Bool)

(assert (=> b!1380223 (= e!881935 (< 0 (size!11484 (c!226984 lt!458761))))))

(declare-fun d!394111 () Bool)

(declare-fun lt!458972 () C!7768)

(assert (=> d!394111 (= lt!458972 (apply!3472 (list!5414 (c!226984 lt!458761)) 0))))

(assert (=> d!394111 (= lt!458972 e!881932)))

(declare-fun c!227107 () Bool)

(assert (=> d!394111 (= c!227107 ((_ is Leaf!7020) (c!226984 lt!458761)))))

(assert (=> d!394111 e!881935))

(declare-fun res!622377 () Bool)

(assert (=> d!394111 (=> (not res!622377) (not e!881935))))

(assert (=> d!394111 (= res!622377 (<= 0 0))))

(assert (=> d!394111 (= (apply!3473 (c!226984 lt!458761) 0) lt!458972)))

(assert (= (and d!394111 res!622377) b!1380223))

(assert (= (and d!394111 c!227107) b!1380219))

(assert (= (and d!394111 (not c!227107)) b!1380217))

(assert (= (and b!1380217 c!227108) b!1380220))

(assert (= (and b!1380217 (not c!227108)) b!1380218))

(assert (= (or b!1380220 b!1380218) bm!92444))

(assert (= (and bm!92444 c!227109) b!1380222))

(assert (= (and bm!92444 (not c!227109)) b!1380221))

(declare-fun m!1553049 () Bool)

(assert (=> b!1380221 m!1553049))

(declare-fun m!1553051 () Bool)

(assert (=> b!1380223 m!1553051))

(declare-fun m!1553053 () Bool)

(assert (=> b!1380219 m!1553053))

(assert (=> d!394111 m!1552607))

(assert (=> d!394111 m!1552607))

(declare-fun m!1553055 () Bool)

(assert (=> d!394111 m!1553055))

(declare-fun m!1553057 () Bool)

(assert (=> bm!92444 m!1553057))

(declare-fun m!1553059 () Bool)

(assert (=> b!1380217 m!1553059))

(declare-fun m!1553061 () Bool)

(assert (=> b!1380217 m!1553061))

(assert (=> b!1380217 m!1553059))

(assert (=> b!1380217 m!1553061))

(declare-fun m!1553063 () Bool)

(assert (=> b!1380217 m!1553063))

(assert (=> b!1380217 m!1553049))

(assert (=> d!393963 d!394111))

(declare-fun d!394113 () Bool)

(assert (=> d!394113 true))

(assert (=> d!394113 true))

(declare-fun res!622380 () Bool)

(assert (=> d!394113 (= (choose!8468 lambda!59117) res!622380)))

(assert (=> d!394009 d!394113))

(declare-fun d!394115 () Bool)

(declare-fun charsToBigInt!0 (List!14066 Int) Int)

(assert (=> d!394115 (= (inv!15 (value!78745 t2!34)) (= (charsToBigInt!0 (text!18054 (value!78745 t2!34)) 0) (value!78740 (value!78745 t2!34))))))

(declare-fun bs!336484 () Bool)

(assert (= bs!336484 d!394115))

(declare-fun m!1553065 () Bool)

(assert (=> bs!336484 m!1553065))

(assert (=> b!1379875 d!394115))

(declare-fun b!1380253 () Bool)

(declare-fun e!881957 () Bool)

(declare-fun lt!458985 () tuple2!13614)

(declare-fun isEmpty!8453 (BalanceConc!9166) Bool)

(assert (=> b!1380253 (= e!881957 (not (isEmpty!8453 (_1!7693 lt!458985))))))

(declare-fun d!394117 () Bool)

(declare-fun e!881956 () Bool)

(assert (=> d!394117 e!881956))

(declare-fun res!622400 () Bool)

(assert (=> d!394117 (=> (not res!622400) (not e!881956))))

(declare-fun e!881955 () Bool)

(assert (=> d!394117 (= res!622400 e!881955)))

(declare-fun c!227117 () Bool)

(assert (=> d!394117 (= c!227117 (> (size!11480 (_1!7693 lt!458985)) 0))))

(declare-fun lexTailRecV2!419 (LexerInterface!2120 List!14067 BalanceConc!9162 BalanceConc!9162 BalanceConc!9162 BalanceConc!9166) tuple2!13614)

(assert (=> d!394117 (= lt!458985 (lexTailRecV2!419 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34)) (BalanceConc!9163 Empty!4611) (print!886 thiss!19762 (singletonSeq!1063 t1!34)) (BalanceConc!9167 Empty!4613)))))

(assert (=> d!394117 (= (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))) lt!458985)))

(declare-fun b!1380254 () Bool)

(assert (=> b!1380254 (= e!881955 (= (_2!7693 lt!458985) (print!886 thiss!19762 (singletonSeq!1063 t1!34))))))

(declare-fun b!1380255 () Bool)

(assert (=> b!1380255 (= e!881955 e!881957)))

(declare-fun res!622401 () Bool)

(assert (=> b!1380255 (= res!622401 (< (size!11474 (_2!7693 lt!458985)) (size!11474 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))

(assert (=> b!1380255 (=> (not res!622401) (not e!881957))))

(declare-fun b!1380256 () Bool)

(declare-datatypes ((tuple2!13618 0))(
  ( (tuple2!13619 (_1!7695 List!14071) (_2!7695 List!14065)) )
))
(declare-fun lexList!638 (LexerInterface!2120 List!14067 List!14065) tuple2!13618)

(assert (=> b!1380256 (= e!881956 (= (list!5410 (_2!7693 lt!458985)) (_2!7695 (lexList!638 thiss!19762 rules!2550 (list!5410 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))))

(declare-fun b!1380257 () Bool)

(declare-fun res!622402 () Bool)

(assert (=> b!1380257 (=> (not res!622402) (not e!881956))))

(assert (=> b!1380257 (= res!622402 (= (list!5413 (_1!7693 lt!458985)) (_1!7695 (lexList!638 thiss!19762 rules!2550 (list!5410 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))))

(assert (= (and d!394117 c!227117) b!1380255))

(assert (= (and d!394117 (not c!227117)) b!1380254))

(assert (= (and b!1380255 res!622401) b!1380253))

(assert (= (and d!394117 res!622400) b!1380257))

(assert (= (and b!1380257 res!622402) b!1380256))

(declare-fun m!1553107 () Bool)

(assert (=> b!1380257 m!1553107))

(assert (=> b!1380257 m!1552669))

(declare-fun m!1553109 () Bool)

(assert (=> b!1380257 m!1553109))

(assert (=> b!1380257 m!1553109))

(declare-fun m!1553111 () Bool)

(assert (=> b!1380257 m!1553111))

(declare-fun m!1553113 () Bool)

(assert (=> b!1380256 m!1553113))

(assert (=> b!1380256 m!1552669))

(assert (=> b!1380256 m!1553109))

(assert (=> b!1380256 m!1553109))

(assert (=> b!1380256 m!1553111))

(declare-fun m!1553115 () Bool)

(assert (=> d!394117 m!1553115))

(assert (=> d!394117 m!1552669))

(assert (=> d!394117 m!1552669))

(declare-fun m!1553117 () Bool)

(assert (=> d!394117 m!1553117))

(declare-fun m!1553119 () Bool)

(assert (=> b!1380253 m!1553119))

(declare-fun m!1553121 () Bool)

(assert (=> b!1380255 m!1553121))

(assert (=> b!1380255 m!1552669))

(declare-fun m!1553123 () Bool)

(assert (=> b!1380255 m!1553123))

(assert (=> d!393989 d!394117))

(declare-fun d!394137 () Bool)

(declare-fun lt!458988 () Int)

(declare-fun size!11487 (List!14071) Int)

(assert (=> d!394137 (= lt!458988 (size!11487 (list!5413 (_1!7693 lt!458850))))))

(declare-fun size!11488 (Conc!4613) Int)

(assert (=> d!394137 (= lt!458988 (size!11488 (c!227046 (_1!7693 lt!458850))))))

(assert (=> d!394137 (= (size!11480 (_1!7693 lt!458850)) lt!458988)))

(declare-fun bs!336489 () Bool)

(assert (= bs!336489 d!394137))

(declare-fun m!1553125 () Bool)

(assert (=> bs!336489 m!1553125))

(assert (=> bs!336489 m!1553125))

(declare-fun m!1553127 () Bool)

(assert (=> bs!336489 m!1553127))

(declare-fun m!1553129 () Bool)

(assert (=> bs!336489 m!1553129))

(assert (=> d!393989 d!394137))

(declare-fun d!394139 () Bool)

(declare-fun lt!458994 () BalanceConc!9162)

(declare-fun printList!614 (LexerInterface!2120 List!14071) List!14065)

(assert (=> d!394139 (= (list!5410 lt!458994) (printList!614 thiss!19762 (list!5413 (singletonSeq!1063 t1!34))))))

(declare-fun printTailRec!596 (LexerInterface!2120 BalanceConc!9166 Int BalanceConc!9162) BalanceConc!9162)

(assert (=> d!394139 (= lt!458994 (printTailRec!596 thiss!19762 (singletonSeq!1063 t1!34) 0 (BalanceConc!9163 Empty!4611)))))

(assert (=> d!394139 (= (print!886 thiss!19762 (singletonSeq!1063 t1!34)) lt!458994)))

(declare-fun bs!336490 () Bool)

(assert (= bs!336490 d!394139))

(declare-fun m!1553155 () Bool)

(assert (=> bs!336490 m!1553155))

(assert (=> bs!336490 m!1552665))

(assert (=> bs!336490 m!1552671))

(assert (=> bs!336490 m!1552671))

(declare-fun m!1553157 () Bool)

(assert (=> bs!336490 m!1553157))

(assert (=> bs!336490 m!1552665))

(declare-fun m!1553159 () Bool)

(assert (=> bs!336490 m!1553159))

(assert (=> d!393989 d!394139))

(declare-fun d!394149 () Bool)

(declare-fun e!881986 () Bool)

(assert (=> d!394149 e!881986))

(declare-fun res!622418 () Bool)

(assert (=> d!394149 (=> (not res!622418) (not e!881986))))

(declare-fun lt!458997 () BalanceConc!9166)

(assert (=> d!394149 (= res!622418 (= (list!5413 lt!458997) (Cons!14005 t1!34 Nil!14005)))))

(declare-fun singleton!466 (Token!4512) BalanceConc!9166)

(assert (=> d!394149 (= lt!458997 (singleton!466 t1!34))))

(assert (=> d!394149 (= (singletonSeq!1063 t1!34) lt!458997)))

(declare-fun b!1380307 () Bool)

(declare-fun isBalanced!1360 (Conc!4613) Bool)

(assert (=> b!1380307 (= e!881986 (isBalanced!1360 (c!227046 lt!458997)))))

(assert (= (and d!394149 res!622418) b!1380307))

(declare-fun m!1553161 () Bool)

(assert (=> d!394149 m!1553161))

(declare-fun m!1553163 () Bool)

(assert (=> d!394149 m!1553163))

(declare-fun m!1553165 () Bool)

(assert (=> b!1380307 m!1553165))

(assert (=> d!393989 d!394149))

(declare-fun d!394151 () Bool)

(declare-fun list!5416 (Conc!4613) List!14071)

(assert (=> d!394151 (= (list!5413 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))))) (list!5416 (c!227046 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))))

(declare-fun bs!336491 () Bool)

(assert (= bs!336491 d!394151))

(declare-fun m!1553175 () Bool)

(assert (=> bs!336491 m!1553175))

(assert (=> d!393989 d!394151))

(declare-fun d!394155 () Bool)

(assert (=> d!394155 (= (list!5413 (singletonSeq!1063 t1!34)) (list!5416 (c!227046 (singletonSeq!1063 t1!34))))))

(declare-fun bs!336492 () Bool)

(assert (= bs!336492 d!394155))

(declare-fun m!1553177 () Bool)

(assert (=> bs!336492 m!1553177))

(assert (=> d!393989 d!394155))

(assert (=> d!393989 d!393981))

(declare-fun d!394157 () Bool)

(declare-fun lt!458999 () Bool)

(assert (=> d!394157 (= lt!458999 (select (content!2043 (t!121930 lt!458759)) lt!458766))))

(declare-fun e!881992 () Bool)

(assert (=> d!394157 (= lt!458999 e!881992)))

(declare-fun res!622420 () Bool)

(assert (=> d!394157 (=> (not res!622420) (not e!881992))))

(assert (=> d!394157 (= res!622420 ((_ is Cons!13999) (t!121930 lt!458759)))))

(assert (=> d!394157 (= (contains!2659 (t!121930 lt!458759) lt!458766) lt!458999)))

(declare-fun b!1380318 () Bool)

(declare-fun e!881993 () Bool)

(assert (=> b!1380318 (= e!881992 e!881993)))

(declare-fun res!622419 () Bool)

(assert (=> b!1380318 (=> res!622419 e!881993)))

(assert (=> b!1380318 (= res!622419 (= (h!19400 (t!121930 lt!458759)) lt!458766))))

(declare-fun b!1380319 () Bool)

(assert (=> b!1380319 (= e!881993 (contains!2659 (t!121930 (t!121930 lt!458759)) lt!458766))))

(assert (= (and d!394157 res!622420) b!1380318))

(assert (= (and b!1380318 (not res!622419)) b!1380319))

(assert (=> d!394157 m!1552791))

(declare-fun m!1553179 () Bool)

(assert (=> d!394157 m!1553179))

(declare-fun m!1553181 () Bool)

(assert (=> b!1380319 m!1553181))

(assert (=> b!1379613 d!394157))

(declare-fun d!394161 () Bool)

(assert (=> d!394161 (= (inv!18346 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))) (isBalanced!1358 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(declare-fun bs!336493 () Bool)

(assert (= bs!336493 d!394161))

(declare-fun m!1553183 () Bool)

(assert (=> bs!336493 m!1553183))

(assert (=> tb!72503 d!394161))

(declare-fun d!394163 () Bool)

(assert (=> d!394163 (= ($colon$colon!207 (map!3098 (t!121932 rules!2550) lambda!59118) (dynLambda!6372 lambda!59118 (h!19402 rules!2550))) (Cons!14002 (dynLambda!6372 lambda!59118 (h!19402 rules!2550)) (map!3098 (t!121932 rules!2550) lambda!59118)))))

(assert (=> b!1379888 d!394163))

(declare-fun d!394165 () Bool)

(declare-fun lt!459000 () List!14068)

(assert (=> d!394165 (= (size!11482 lt!459000) (size!11483 (t!121932 rules!2550)))))

(declare-fun e!881994 () List!14068)

(assert (=> d!394165 (= lt!459000 e!881994)))

(declare-fun c!227140 () Bool)

(assert (=> d!394165 (= c!227140 ((_ is Nil!14001) (t!121932 rules!2550)))))

(assert (=> d!394165 (= (map!3098 (t!121932 rules!2550) lambda!59118) lt!459000)))

(declare-fun b!1380320 () Bool)

(assert (=> b!1380320 (= e!881994 Nil!14002)))

(declare-fun b!1380321 () Bool)

(assert (=> b!1380321 (= e!881994 ($colon$colon!207 (map!3098 (t!121932 (t!121932 rules!2550)) lambda!59118) (dynLambda!6372 lambda!59118 (h!19402 (t!121932 rules!2550)))))))

(assert (= (and d!394165 c!227140) b!1380320))

(assert (= (and d!394165 (not c!227140)) b!1380321))

(declare-fun b_lambda!42493 () Bool)

(assert (=> (not b_lambda!42493) (not b!1380321)))

(declare-fun m!1553185 () Bool)

(assert (=> d!394165 m!1553185))

(declare-fun m!1553187 () Bool)

(assert (=> d!394165 m!1553187))

(declare-fun m!1553189 () Bool)

(assert (=> b!1380321 m!1553189))

(declare-fun m!1553191 () Bool)

(assert (=> b!1380321 m!1553191))

(assert (=> b!1380321 m!1553189))

(assert (=> b!1380321 m!1553191))

(declare-fun m!1553193 () Bool)

(assert (=> b!1380321 m!1553193))

(assert (=> b!1379888 d!394165))

(declare-fun lt!459001 () Bool)

(declare-fun d!394167 () Bool)

(assert (=> d!394167 (= lt!459001 (isEmpty!8449 (list!5410 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))))

(assert (=> d!394167 (= lt!459001 (isEmpty!8451 (c!226984 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))))

(assert (=> d!394167 (= (isEmpty!8448 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))))) lt!459001)))

(declare-fun bs!336494 () Bool)

(assert (= bs!336494 d!394167))

(declare-fun m!1553195 () Bool)

(assert (=> bs!336494 m!1553195))

(assert (=> bs!336494 m!1553195))

(declare-fun m!1553197 () Bool)

(assert (=> bs!336494 m!1553197))

(declare-fun m!1553199 () Bool)

(assert (=> bs!336494 m!1553199))

(assert (=> b!1379820 d!394167))

(declare-fun b!1380328 () Bool)

(declare-fun e!882001 () Bool)

(declare-fun lt!459004 () tuple2!13614)

(assert (=> b!1380328 (= e!882001 (not (isEmpty!8453 (_1!7693 lt!459004))))))

(declare-fun d!394169 () Bool)

(declare-fun e!882000 () Bool)

(assert (=> d!394169 e!882000))

(declare-fun res!622423 () Bool)

(assert (=> d!394169 (=> (not res!622423) (not e!882000))))

(declare-fun e!881999 () Bool)

(assert (=> d!394169 (= res!622423 e!881999)))

(declare-fun c!227143 () Bool)

(assert (=> d!394169 (= c!227143 (> (size!11480 (_1!7693 lt!459004)) 0))))

(assert (=> d!394169 (= lt!459004 (lexTailRecV2!419 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34)) (BalanceConc!9163 Empty!4611) (print!886 thiss!19762 (singletonSeq!1063 t2!34)) (BalanceConc!9167 Empty!4613)))))

(assert (=> d!394169 (= (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))) lt!459004)))

(declare-fun b!1380329 () Bool)

(assert (=> b!1380329 (= e!881999 (= (_2!7693 lt!459004) (print!886 thiss!19762 (singletonSeq!1063 t2!34))))))

(declare-fun b!1380330 () Bool)

(assert (=> b!1380330 (= e!881999 e!882001)))

(declare-fun res!622424 () Bool)

(assert (=> b!1380330 (= res!622424 (< (size!11474 (_2!7693 lt!459004)) (size!11474 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))

(assert (=> b!1380330 (=> (not res!622424) (not e!882001))))

(declare-fun b!1380331 () Bool)

(assert (=> b!1380331 (= e!882000 (= (list!5410 (_2!7693 lt!459004)) (_2!7695 (lexList!638 thiss!19762 rules!2550 (list!5410 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))))

(declare-fun b!1380332 () Bool)

(declare-fun res!622425 () Bool)

(assert (=> b!1380332 (=> (not res!622425) (not e!882000))))

(assert (=> b!1380332 (= res!622425 (= (list!5413 (_1!7693 lt!459004)) (_1!7695 (lexList!638 thiss!19762 rules!2550 (list!5410 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))))

(assert (= (and d!394169 c!227143) b!1380330))

(assert (= (and d!394169 (not c!227143)) b!1380329))

(assert (= (and b!1380330 res!622424) b!1380328))

(assert (= (and d!394169 res!622423) b!1380332))

(assert (= (and b!1380332 res!622425) b!1380331))

(declare-fun m!1553201 () Bool)

(assert (=> b!1380332 m!1553201))

(assert (=> b!1380332 m!1552541))

(declare-fun m!1553203 () Bool)

(assert (=> b!1380332 m!1553203))

(assert (=> b!1380332 m!1553203))

(declare-fun m!1553205 () Bool)

(assert (=> b!1380332 m!1553205))

(declare-fun m!1553207 () Bool)

(assert (=> b!1380331 m!1553207))

(assert (=> b!1380331 m!1552541))

(assert (=> b!1380331 m!1553203))

(assert (=> b!1380331 m!1553203))

(assert (=> b!1380331 m!1553205))

(declare-fun m!1553209 () Bool)

(assert (=> d!394169 m!1553209))

(assert (=> d!394169 m!1552541))

(assert (=> d!394169 m!1552541))

(declare-fun m!1553211 () Bool)

(assert (=> d!394169 m!1553211))

(declare-fun m!1553213 () Bool)

(assert (=> b!1380328 m!1553213))

(declare-fun m!1553215 () Bool)

(assert (=> b!1380330 m!1553215))

(assert (=> b!1380330 m!1552541))

(declare-fun m!1553217 () Bool)

(assert (=> b!1380330 m!1553217))

(assert (=> b!1379820 d!394169))

(declare-fun d!394171 () Bool)

(declare-fun lt!459005 () BalanceConc!9162)

(assert (=> d!394171 (= (list!5410 lt!459005) (printList!614 thiss!19762 (list!5413 (singletonSeq!1063 t2!34))))))

(assert (=> d!394171 (= lt!459005 (printTailRec!596 thiss!19762 (singletonSeq!1063 t2!34) 0 (BalanceConc!9163 Empty!4611)))))

(assert (=> d!394171 (= (print!886 thiss!19762 (singletonSeq!1063 t2!34)) lt!459005)))

(declare-fun bs!336495 () Bool)

(assert (= bs!336495 d!394171))

(declare-fun m!1553219 () Bool)

(assert (=> bs!336495 m!1553219))

(assert (=> bs!336495 m!1552537))

(assert (=> bs!336495 m!1552543))

(assert (=> bs!336495 m!1552543))

(declare-fun m!1553221 () Bool)

(assert (=> bs!336495 m!1553221))

(assert (=> bs!336495 m!1552537))

(declare-fun m!1553223 () Bool)

(assert (=> bs!336495 m!1553223))

(assert (=> b!1379820 d!394171))

(declare-fun d!394173 () Bool)

(declare-fun e!882004 () Bool)

(assert (=> d!394173 e!882004))

(declare-fun res!622427 () Bool)

(assert (=> d!394173 (=> (not res!622427) (not e!882004))))

(declare-fun lt!459007 () BalanceConc!9166)

(assert (=> d!394173 (= res!622427 (= (list!5413 lt!459007) (Cons!14005 t2!34 Nil!14005)))))

(assert (=> d!394173 (= lt!459007 (singleton!466 t2!34))))

(assert (=> d!394173 (= (singletonSeq!1063 t2!34) lt!459007)))

(declare-fun b!1380336 () Bool)

(assert (=> b!1380336 (= e!882004 (isBalanced!1360 (c!227046 lt!459007)))))

(assert (= (and d!394173 res!622427) b!1380336))

(declare-fun m!1553225 () Bool)

(assert (=> d!394173 m!1553225))

(declare-fun m!1553231 () Bool)

(assert (=> d!394173 m!1553231))

(declare-fun m!1553235 () Bool)

(assert (=> b!1380336 m!1553235))

(assert (=> b!1379820 d!394173))

(declare-fun d!394175 () Bool)

(assert (=> d!394175 (= (list!5413 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34))))) (list!5416 (c!227046 (_1!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t2!34)))))))))

(declare-fun bs!336496 () Bool)

(assert (= bs!336496 d!394175))

(declare-fun m!1553241 () Bool)

(assert (=> bs!336496 m!1553241))

(assert (=> d!393877 d!394175))

(declare-fun d!394179 () Bool)

(declare-fun lt!459008 () Int)

(assert (=> d!394179 (= lt!459008 (size!11487 (list!5413 (_1!7693 lt!458823))))))

(assert (=> d!394179 (= lt!459008 (size!11488 (c!227046 (_1!7693 lt!458823))))))

(assert (=> d!394179 (= (size!11480 (_1!7693 lt!458823)) lt!459008)))

(declare-fun bs!336497 () Bool)

(assert (= bs!336497 d!394179))

(declare-fun m!1553243 () Bool)

(assert (=> bs!336497 m!1553243))

(assert (=> bs!336497 m!1553243))

(declare-fun m!1553245 () Bool)

(assert (=> bs!336497 m!1553245))

(declare-fun m!1553247 () Bool)

(assert (=> bs!336497 m!1553247))

(assert (=> d!393877 d!394179))

(assert (=> d!393877 d!394171))

(assert (=> d!393877 d!394173))

(assert (=> d!393877 d!393981))

(assert (=> d!393877 d!394169))

(declare-fun d!394181 () Bool)

(assert (=> d!394181 (= (list!5413 (singletonSeq!1063 t2!34)) (list!5416 (c!227046 (singletonSeq!1063 t2!34))))))

(declare-fun bs!336498 () Bool)

(assert (= bs!336498 d!394181))

(declare-fun m!1553249 () Bool)

(assert (=> bs!336498 m!1553249))

(assert (=> d!393877 d!394181))

(declare-fun d!394183 () Bool)

(assert (=> d!394183 (= (inv!15 (value!78745 t1!34)) (= (charsToBigInt!0 (text!18054 (value!78745 t1!34)) 0) (value!78740 (value!78745 t1!34))))))

(declare-fun bs!336499 () Bool)

(assert (= bs!336499 d!394183))

(declare-fun m!1553251 () Bool)

(assert (=> bs!336499 m!1553251))

(assert (=> b!1379901 d!394183))

(declare-fun d!394185 () Bool)

(declare-fun lt!459011 () Token!4512)

(declare-fun apply!3476 (List!14071 Int) Token!4512)

(assert (=> d!394185 (= lt!459011 (apply!3476 (list!5413 (_1!7693 lt!458823)) 0))))

(declare-fun apply!3477 (Conc!4613 Int) Token!4512)

(assert (=> d!394185 (= lt!459011 (apply!3477 (c!227046 (_1!7693 lt!458823)) 0))))

(declare-fun e!882007 () Bool)

(assert (=> d!394185 e!882007))

(declare-fun res!622430 () Bool)

(assert (=> d!394185 (=> (not res!622430) (not e!882007))))

(assert (=> d!394185 (= res!622430 (<= 0 0))))

(assert (=> d!394185 (= (apply!3471 (_1!7693 lt!458823) 0) lt!459011)))

(declare-fun b!1380339 () Bool)

(assert (=> b!1380339 (= e!882007 (< 0 (size!11480 (_1!7693 lt!458823))))))

(assert (= (and d!394185 res!622430) b!1380339))

(assert (=> d!394185 m!1553243))

(assert (=> d!394185 m!1553243))

(declare-fun m!1553253 () Bool)

(assert (=> d!394185 m!1553253))

(declare-fun m!1553255 () Bool)

(assert (=> d!394185 m!1553255))

(assert (=> b!1380339 m!1552547))

(assert (=> b!1379818 d!394185))

(assert (=> b!1379939 d!394033))

(assert (=> b!1379939 d!394035))

(declare-fun d!394187 () Bool)

(assert (=> d!394187 (= (isEmpty!8449 lt!458765) ((_ is Nil!13999) lt!458765))))

(assert (=> d!393999 d!394187))

(declare-fun b!1380379 () Bool)

(declare-fun e!882039 () Bool)

(declare-fun e!882040 () Bool)

(assert (=> b!1380379 (= e!882039 e!882040)))

(declare-fun c!227158 () Bool)

(assert (=> b!1380379 (= c!227158 ((_ is Star!3739) lt!458763))))

(declare-fun b!1380380 () Bool)

(declare-fun e!882034 () Bool)

(declare-fun call!92472 () Bool)

(assert (=> b!1380380 (= e!882034 call!92472)))

(declare-fun b!1380381 () Bool)

(declare-fun e!882038 () Bool)

(declare-fun call!92473 () Bool)

(assert (=> b!1380381 (= e!882038 call!92473)))

(declare-fun b!1380383 () Bool)

(assert (=> b!1380383 (= e!882040 e!882034)))

(declare-fun res!622445 () Bool)

(assert (=> b!1380383 (= res!622445 (not (nullable!1205 (reg!4068 lt!458763))))))

(assert (=> b!1380383 (=> (not res!622445) (not e!882034))))

(declare-fun bm!92467 () Bool)

(assert (=> bm!92467 (= call!92473 call!92472)))

(declare-fun b!1380384 () Bool)

(declare-fun res!622447 () Bool)

(declare-fun e!882036 () Bool)

(assert (=> b!1380384 (=> (not res!622447) (not e!882036))))

(declare-fun call!92474 () Bool)

(assert (=> b!1380384 (= res!622447 call!92474)))

(declare-fun e!882035 () Bool)

(assert (=> b!1380384 (= e!882035 e!882036)))

(declare-fun b!1380385 () Bool)

(assert (=> b!1380385 (= e!882036 call!92473)))

(declare-fun b!1380386 () Bool)

(declare-fun res!622446 () Bool)

(declare-fun e!882037 () Bool)

(assert (=> b!1380386 (=> res!622446 e!882037)))

(assert (=> b!1380386 (= res!622446 (not ((_ is Concat!6254) lt!458763)))))

(assert (=> b!1380386 (= e!882035 e!882037)))

(declare-fun bm!92468 () Bool)

(declare-fun c!227159 () Bool)

(assert (=> bm!92468 (= call!92474 (validRegex!1625 (ite c!227159 (regOne!7991 lt!458763) (regOne!7990 lt!458763))))))

(declare-fun d!394189 () Bool)

(declare-fun res!622448 () Bool)

(assert (=> d!394189 (=> res!622448 e!882039)))

(assert (=> d!394189 (= res!622448 ((_ is ElementMatch!3739) lt!458763))))

(assert (=> d!394189 (= (validRegex!1625 lt!458763) e!882039)))

(declare-fun b!1380382 () Bool)

(assert (=> b!1380382 (= e!882037 e!882038)))

(declare-fun res!622444 () Bool)

(assert (=> b!1380382 (=> (not res!622444) (not e!882038))))

(assert (=> b!1380382 (= res!622444 call!92474)))

(declare-fun b!1380387 () Bool)

(assert (=> b!1380387 (= e!882040 e!882035)))

(assert (=> b!1380387 (= c!227159 ((_ is Union!3739) lt!458763))))

(declare-fun bm!92469 () Bool)

(assert (=> bm!92469 (= call!92472 (validRegex!1625 (ite c!227158 (reg!4068 lt!458763) (ite c!227159 (regTwo!7991 lt!458763) (regTwo!7990 lt!458763)))))))

(assert (= (and d!394189 (not res!622448)) b!1380379))

(assert (= (and b!1380379 c!227158) b!1380383))

(assert (= (and b!1380379 (not c!227158)) b!1380387))

(assert (= (and b!1380383 res!622445) b!1380380))

(assert (= (and b!1380387 c!227159) b!1380384))

(assert (= (and b!1380387 (not c!227159)) b!1380386))

(assert (= (and b!1380384 res!622447) b!1380385))

(assert (= (and b!1380386 (not res!622446)) b!1380382))

(assert (= (and b!1380382 res!622444) b!1380381))

(assert (= (or b!1380384 b!1380382) bm!92468))

(assert (= (or b!1380385 b!1380381) bm!92467))

(assert (= (or b!1380380 bm!92467) bm!92469))

(declare-fun m!1553275 () Bool)

(assert (=> b!1380383 m!1553275))

(declare-fun m!1553277 () Bool)

(assert (=> bm!92468 m!1553277))

(declare-fun m!1553279 () Bool)

(assert (=> bm!92469 m!1553279))

(assert (=> d!393999 d!394189))

(declare-fun d!394195 () Bool)

(declare-fun c!227160 () Bool)

(assert (=> d!394195 (= c!227160 ((_ is Nil!13999) lt!458765))))

(declare-fun e!882041 () (InoxSet C!7768))

(assert (=> d!394195 (= (content!2043 lt!458765) e!882041)))

(declare-fun b!1380388 () Bool)

(assert (=> b!1380388 (= e!882041 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380389 () Bool)

(assert (=> b!1380389 (= e!882041 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 lt!458765) true) (content!2043 (t!121930 lt!458765))))))

(assert (= (and d!394195 c!227160) b!1380388))

(assert (= (and d!394195 (not c!227160)) b!1380389))

(declare-fun m!1553281 () Bool)

(assert (=> b!1380389 m!1553281))

(assert (=> b!1380389 m!1552969))

(assert (=> d!393977 d!394195))

(declare-fun b!1380390 () Bool)

(declare-fun e!882047 () Bool)

(declare-fun e!882048 () Bool)

(assert (=> b!1380390 (= e!882047 e!882048)))

(declare-fun c!227161 () Bool)

(assert (=> b!1380390 (= c!227161 ((_ is Star!3739) (h!19403 (map!3098 rules!2550 lambda!59118))))))

(declare-fun b!1380391 () Bool)

(declare-fun e!882042 () Bool)

(declare-fun call!92475 () Bool)

(assert (=> b!1380391 (= e!882042 call!92475)))

(declare-fun b!1380392 () Bool)

(declare-fun e!882046 () Bool)

(declare-fun call!92476 () Bool)

(assert (=> b!1380392 (= e!882046 call!92476)))

(declare-fun b!1380394 () Bool)

(assert (=> b!1380394 (= e!882048 e!882042)))

(declare-fun res!622450 () Bool)

(assert (=> b!1380394 (= res!622450 (not (nullable!1205 (reg!4068 (h!19403 (map!3098 rules!2550 lambda!59118))))))))

(assert (=> b!1380394 (=> (not res!622450) (not e!882042))))

(declare-fun bm!92470 () Bool)

(assert (=> bm!92470 (= call!92476 call!92475)))

(declare-fun b!1380395 () Bool)

(declare-fun res!622452 () Bool)

(declare-fun e!882044 () Bool)

(assert (=> b!1380395 (=> (not res!622452) (not e!882044))))

(declare-fun call!92477 () Bool)

(assert (=> b!1380395 (= res!622452 call!92477)))

(declare-fun e!882043 () Bool)

(assert (=> b!1380395 (= e!882043 e!882044)))

(declare-fun b!1380396 () Bool)

(assert (=> b!1380396 (= e!882044 call!92476)))

(declare-fun b!1380397 () Bool)

(declare-fun res!622451 () Bool)

(declare-fun e!882045 () Bool)

(assert (=> b!1380397 (=> res!622451 e!882045)))

(assert (=> b!1380397 (= res!622451 (not ((_ is Concat!6254) (h!19403 (map!3098 rules!2550 lambda!59118)))))))

(assert (=> b!1380397 (= e!882043 e!882045)))

(declare-fun c!227162 () Bool)

(declare-fun bm!92471 () Bool)

(assert (=> bm!92471 (= call!92477 (validRegex!1625 (ite c!227162 (regOne!7991 (h!19403 (map!3098 rules!2550 lambda!59118))) (regOne!7990 (h!19403 (map!3098 rules!2550 lambda!59118))))))))

(declare-fun d!394197 () Bool)

(declare-fun res!622453 () Bool)

(assert (=> d!394197 (=> res!622453 e!882047)))

(assert (=> d!394197 (= res!622453 ((_ is ElementMatch!3739) (h!19403 (map!3098 rules!2550 lambda!59118))))))

(assert (=> d!394197 (= (validRegex!1625 (h!19403 (map!3098 rules!2550 lambda!59118))) e!882047)))

(declare-fun b!1380393 () Bool)

(assert (=> b!1380393 (= e!882045 e!882046)))

(declare-fun res!622449 () Bool)

(assert (=> b!1380393 (=> (not res!622449) (not e!882046))))

(assert (=> b!1380393 (= res!622449 call!92477)))

(declare-fun b!1380398 () Bool)

(assert (=> b!1380398 (= e!882048 e!882043)))

(assert (=> b!1380398 (= c!227162 ((_ is Union!3739) (h!19403 (map!3098 rules!2550 lambda!59118))))))

(declare-fun bm!92472 () Bool)

(assert (=> bm!92472 (= call!92475 (validRegex!1625 (ite c!227161 (reg!4068 (h!19403 (map!3098 rules!2550 lambda!59118))) (ite c!227162 (regTwo!7991 (h!19403 (map!3098 rules!2550 lambda!59118))) (regTwo!7990 (h!19403 (map!3098 rules!2550 lambda!59118)))))))))

(assert (= (and d!394197 (not res!622453)) b!1380390))

(assert (= (and b!1380390 c!227161) b!1380394))

(assert (= (and b!1380390 (not c!227161)) b!1380398))

(assert (= (and b!1380394 res!622450) b!1380391))

(assert (= (and b!1380398 c!227162) b!1380395))

(assert (= (and b!1380398 (not c!227162)) b!1380397))

(assert (= (and b!1380395 res!622452) b!1380396))

(assert (= (and b!1380397 (not res!622451)) b!1380393))

(assert (= (and b!1380393 res!622449) b!1380392))

(assert (= (or b!1380395 b!1380393) bm!92471))

(assert (= (or b!1380396 b!1380392) bm!92470))

(assert (= (or b!1380391 bm!92470) bm!92472))

(declare-fun m!1553283 () Bool)

(assert (=> b!1380394 m!1553283))

(declare-fun m!1553285 () Bool)

(assert (=> bm!92471 m!1553285))

(declare-fun m!1553287 () Bool)

(assert (=> bm!92472 m!1553287))

(assert (=> bs!336470 d!394197))

(declare-fun d!394199 () Bool)

(declare-fun lt!459018 () Int)

(assert (=> d!394199 (= lt!459018 (size!11481 (list!5410 lt!458761)))))

(assert (=> d!394199 (= lt!459018 (size!11484 (c!226984 lt!458761)))))

(assert (=> d!394199 (= (size!11474 lt!458761) lt!459018)))

(declare-fun bs!336501 () Bool)

(assert (= bs!336501 d!394199))

(assert (=> bs!336501 m!1552229))

(assert (=> bs!336501 m!1552229))

(assert (=> bs!336501 m!1553041))

(assert (=> bs!336501 m!1553051))

(assert (=> b!1379843 d!394199))

(declare-fun d!394201 () Bool)

(declare-fun e!882051 () Bool)

(assert (=> d!394201 e!882051))

(declare-fun res!622456 () Bool)

(assert (=> d!394201 (=> (not res!622456) (not e!882051))))

(declare-fun lt!459019 () List!14065)

(assert (=> d!394201 (= res!622456 (= (content!2043 lt!459019) ((_ map or) (content!2043 (t!121930 lt!458764)) (content!2043 (Cons!13999 lt!458766 Nil!13999)))))))

(declare-fun e!882052 () List!14065)

(assert (=> d!394201 (= lt!459019 e!882052)))

(declare-fun c!227163 () Bool)

(assert (=> d!394201 (= c!227163 ((_ is Nil!13999) (t!121930 lt!458764)))))

(assert (=> d!394201 (= (++!3626 (t!121930 lt!458764) (Cons!13999 lt!458766 Nil!13999)) lt!459019)))

(declare-fun b!1380403 () Bool)

(declare-fun res!622457 () Bool)

(assert (=> b!1380403 (=> (not res!622457) (not e!882051))))

(assert (=> b!1380403 (= res!622457 (= (size!11481 lt!459019) (+ (size!11481 (t!121930 lt!458764)) (size!11481 (Cons!13999 lt!458766 Nil!13999)))))))

(declare-fun b!1380402 () Bool)

(assert (=> b!1380402 (= e!882052 (Cons!13999 (h!19400 (t!121930 lt!458764)) (++!3626 (t!121930 (t!121930 lt!458764)) (Cons!13999 lt!458766 Nil!13999))))))

(declare-fun b!1380404 () Bool)

(assert (=> b!1380404 (= e!882051 (or (not (= (Cons!13999 lt!458766 Nil!13999) Nil!13999)) (= lt!459019 (t!121930 lt!458764))))))

(declare-fun b!1380401 () Bool)

(assert (=> b!1380401 (= e!882052 (Cons!13999 lt!458766 Nil!13999))))

(assert (= (and d!394201 c!227163) b!1380401))

(assert (= (and d!394201 (not c!227163)) b!1380402))

(assert (= (and d!394201 res!622456) b!1380403))

(assert (= (and b!1380403 res!622457) b!1380404))

(declare-fun m!1553289 () Bool)

(assert (=> d!394201 m!1553289))

(assert (=> d!394201 m!1552805))

(assert (=> d!394201 m!1552621))

(declare-fun m!1553291 () Bool)

(assert (=> b!1380403 m!1553291))

(declare-fun m!1553293 () Bool)

(assert (=> b!1380403 m!1553293))

(assert (=> b!1380403 m!1552627))

(declare-fun m!1553295 () Bool)

(assert (=> b!1380402 m!1553295))

(assert (=> b!1379857 d!394201))

(declare-fun d!394203 () Bool)

(declare-fun res!622458 () Bool)

(declare-fun e!882053 () Bool)

(assert (=> d!394203 (=> res!622458 e!882053)))

(assert (=> d!394203 (= res!622458 ((_ is Nil!14002) (t!121933 (map!3098 rules!2550 lambda!59118))))))

(assert (=> d!394203 (= (forall!3407 (t!121933 (map!3098 rules!2550 lambda!59118)) lambda!59119) e!882053)))

(declare-fun b!1380405 () Bool)

(declare-fun e!882054 () Bool)

(assert (=> b!1380405 (= e!882053 e!882054)))

(declare-fun res!622459 () Bool)

(assert (=> b!1380405 (=> (not res!622459) (not e!882054))))

(assert (=> b!1380405 (= res!622459 (dynLambda!6371 lambda!59119 (h!19403 (t!121933 (map!3098 rules!2550 lambda!59118)))))))

(declare-fun b!1380406 () Bool)

(assert (=> b!1380406 (= e!882054 (forall!3407 (t!121933 (t!121933 (map!3098 rules!2550 lambda!59118))) lambda!59119))))

(assert (= (and d!394203 (not res!622458)) b!1380405))

(assert (= (and b!1380405 res!622459) b!1380406))

(declare-fun b_lambda!42495 () Bool)

(assert (=> (not b_lambda!42495) (not b!1380405)))

(declare-fun m!1553297 () Bool)

(assert (=> b!1380405 m!1553297))

(declare-fun m!1553299 () Bool)

(assert (=> b!1380406 m!1553299))

(assert (=> b!1379882 d!394203))

(declare-fun d!394205 () Bool)

(declare-fun lt!459020 () Bool)

(assert (=> d!394205 (= lt!459020 (select (content!2043 (t!121930 lt!458759)) lt!458760))))

(declare-fun e!882055 () Bool)

(assert (=> d!394205 (= lt!459020 e!882055)))

(declare-fun res!622461 () Bool)

(assert (=> d!394205 (=> (not res!622461) (not e!882055))))

(assert (=> d!394205 (= res!622461 ((_ is Cons!13999) (t!121930 lt!458759)))))

(assert (=> d!394205 (= (contains!2659 (t!121930 lt!458759) lt!458760) lt!459020)))

(declare-fun b!1380407 () Bool)

(declare-fun e!882056 () Bool)

(assert (=> b!1380407 (= e!882055 e!882056)))

(declare-fun res!622460 () Bool)

(assert (=> b!1380407 (=> res!622460 e!882056)))

(assert (=> b!1380407 (= res!622460 (= (h!19400 (t!121930 lt!458759)) lt!458760))))

(declare-fun b!1380408 () Bool)

(assert (=> b!1380408 (= e!882056 (contains!2659 (t!121930 (t!121930 lt!458759)) lt!458760))))

(assert (= (and d!394205 res!622461) b!1380407))

(assert (= (and b!1380407 (not res!622460)) b!1380408))

(assert (=> d!394205 m!1552791))

(declare-fun m!1553303 () Bool)

(assert (=> d!394205 m!1553303))

(declare-fun m!1553305 () Bool)

(assert (=> b!1380408 m!1553305))

(assert (=> b!1379840 d!394205))

(declare-fun d!394209 () Bool)

(declare-fun lt!459025 () Int)

(assert (=> d!394209 (>= lt!459025 0)))

(declare-fun e!882062 () Int)

(assert (=> d!394209 (= lt!459025 e!882062)))

(declare-fun c!227167 () Bool)

(assert (=> d!394209 (= c!227167 ((_ is Nil!13999) (originalCharacters!3287 t1!34)))))

(assert (=> d!394209 (= (size!11481 (originalCharacters!3287 t1!34)) lt!459025)))

(declare-fun b!1380417 () Bool)

(assert (=> b!1380417 (= e!882062 0)))

(declare-fun b!1380418 () Bool)

(assert (=> b!1380418 (= e!882062 (+ 1 (size!11481 (t!121930 (originalCharacters!3287 t1!34)))))))

(assert (= (and d!394209 c!227167) b!1380417))

(assert (= (and d!394209 (not c!227167)) b!1380418))

(declare-fun m!1553323 () Bool)

(assert (=> b!1380418 m!1553323))

(assert (=> b!1379951 d!394209))

(declare-fun d!394223 () Bool)

(declare-fun lt!459026 () Int)

(assert (=> d!394223 (>= lt!459026 0)))

(declare-fun e!882064 () Int)

(assert (=> d!394223 (= lt!459026 e!882064)))

(declare-fun c!227169 () Bool)

(assert (=> d!394223 (= c!227169 ((_ is Nil!13999) (originalCharacters!3287 t2!34)))))

(assert (=> d!394223 (= (size!11481 (originalCharacters!3287 t2!34)) lt!459026)))

(declare-fun b!1380421 () Bool)

(assert (=> b!1380421 (= e!882064 0)))

(declare-fun b!1380422 () Bool)

(assert (=> b!1380422 (= e!882064 (+ 1 (size!11481 (t!121930 (originalCharacters!3287 t2!34)))))))

(assert (= (and d!394223 c!227169) b!1380421))

(assert (= (and d!394223 (not c!227169)) b!1380422))

(declare-fun m!1553329 () Bool)

(assert (=> b!1380422 m!1553329))

(assert (=> b!1379953 d!394223))

(declare-fun d!394225 () Bool)

(declare-fun nullableFct!285 (Regex!3739) Bool)

(assert (=> d!394225 (= (nullable!1205 lt!458763) (nullableFct!285 lt!458763))))

(declare-fun bs!336509 () Bool)

(assert (= bs!336509 d!394225))

(declare-fun m!1553339 () Bool)

(assert (=> bs!336509 m!1553339))

(assert (=> b!1379934 d!394225))

(declare-fun d!394235 () Bool)

(assert (=> d!394235 true))

(declare-fun lambda!59144 () Int)

(declare-fun order!8545 () Int)

(declare-fun dynLambda!6378 (Int Int) Int)

(assert (=> d!394235 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (dynLambda!6378 order!8545 lambda!59144))))

(declare-fun Forall2!447 (Int) Bool)

(assert (=> d!394235 (= (equivClasses!893 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (Forall2!447 lambda!59144))))

(declare-fun bs!336510 () Bool)

(assert (= bs!336510 d!394235))

(declare-fun m!1553363 () Bool)

(assert (=> bs!336510 m!1553363))

(assert (=> b!1379617 d!394235))

(declare-fun bs!336511 () Bool)

(declare-fun d!394247 () Bool)

(assert (= bs!336511 (and d!394247 d!394235)))

(declare-fun lambda!59145 () Int)

(assert (=> bs!336511 (= (= (toValue!3704 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (= lambda!59145 lambda!59144))))

(assert (=> d!394247 true))

(assert (=> d!394247 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (rule!4184 t2!34)))) (dynLambda!6378 order!8545 lambda!59145))))

(assert (=> d!394247 (= (equivClasses!893 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (rule!4184 t2!34)))) (Forall2!447 lambda!59145))))

(declare-fun bs!336512 () Bool)

(assert (= bs!336512 d!394247))

(declare-fun m!1553369 () Bool)

(assert (=> bs!336512 m!1553369))

(assert (=> b!1379903 d!394247))

(declare-fun d!394251 () Bool)

(declare-fun res!622474 () Bool)

(declare-fun e!882083 () Bool)

(assert (=> d!394251 (=> res!622474 e!882083)))

(assert (=> d!394251 (= res!622474 (not ((_ is Cons!14001) (t!121932 rules!2550))))))

(assert (=> d!394251 (= (sepAndNonSepRulesDisjointChars!798 rules!2550 (t!121932 rules!2550)) e!882083)))

(declare-fun b!1380451 () Bool)

(declare-fun e!882084 () Bool)

(assert (=> b!1380451 (= e!882083 e!882084)))

(declare-fun res!622475 () Bool)

(assert (=> b!1380451 (=> (not res!622475) (not e!882084))))

(assert (=> b!1380451 (= res!622475 (ruleDisjointCharsFromAllFromOtherType!376 (h!19402 (t!121932 rules!2550)) rules!2550))))

(declare-fun b!1380452 () Bool)

(assert (=> b!1380452 (= e!882084 (sepAndNonSepRulesDisjointChars!798 rules!2550 (t!121932 (t!121932 rules!2550))))))

(assert (= (and d!394251 (not res!622474)) b!1380451))

(assert (= (and b!1380451 res!622475) b!1380452))

(declare-fun m!1553371 () Bool)

(assert (=> b!1380451 m!1553371))

(declare-fun m!1553373 () Bool)

(assert (=> b!1380452 m!1553373))

(assert (=> b!1379894 d!394251))

(declare-fun d!394253 () Bool)

(assert (=> d!394253 true))

(declare-fun lt!459031 () Bool)

(declare-fun rulesValidInductive!775 (LexerInterface!2120 List!14067) Bool)

(assert (=> d!394253 (= lt!459031 (rulesValidInductive!775 thiss!19762 rules!2550))))

(declare-fun lambda!59151 () Int)

(declare-fun forall!3408 (List!14067 Int) Bool)

(assert (=> d!394253 (= lt!459031 (forall!3408 rules!2550 lambda!59151))))

(assert (=> d!394253 (= (rulesValid!903 thiss!19762 rules!2550) lt!459031)))

(declare-fun bs!336514 () Bool)

(assert (= bs!336514 d!394253))

(declare-fun m!1553377 () Bool)

(assert (=> bs!336514 m!1553377))

(declare-fun m!1553379 () Bool)

(assert (=> bs!336514 m!1553379))

(assert (=> d!394013 d!394253))

(declare-fun d!394257 () Bool)

(declare-fun c!227178 () Bool)

(assert (=> d!394257 (= c!227178 (isEmpty!8449 (tail!1998 lt!458759)))))

(declare-fun e!882085 () Bool)

(assert (=> d!394257 (= (prefixMatch!248 (derivativeStep!963 lt!458763 (head!2501 lt!458759)) (tail!1998 lt!458759)) e!882085)))

(declare-fun b!1380459 () Bool)

(assert (=> b!1380459 (= e!882085 (not (lostCause!339 (derivativeStep!963 lt!458763 (head!2501 lt!458759)))))))

(declare-fun b!1380460 () Bool)

(assert (=> b!1380460 (= e!882085 (prefixMatch!248 (derivativeStep!963 (derivativeStep!963 lt!458763 (head!2501 lt!458759)) (head!2501 (tail!1998 lt!458759))) (tail!1998 (tail!1998 lt!458759))))))

(assert (= (and d!394257 c!227178) b!1380459))

(assert (= (and d!394257 (not c!227178)) b!1380460))

(assert (=> d!394257 m!1552603))

(declare-fun m!1553381 () Bool)

(assert (=> d!394257 m!1553381))

(assert (=> b!1380459 m!1552601))

(declare-fun m!1553383 () Bool)

(assert (=> b!1380459 m!1553383))

(assert (=> b!1380460 m!1552603))

(declare-fun m!1553385 () Bool)

(assert (=> b!1380460 m!1553385))

(assert (=> b!1380460 m!1552601))

(assert (=> b!1380460 m!1553385))

(declare-fun m!1553387 () Bool)

(assert (=> b!1380460 m!1553387))

(assert (=> b!1380460 m!1552603))

(declare-fun m!1553389 () Bool)

(assert (=> b!1380460 m!1553389))

(assert (=> b!1380460 m!1553387))

(assert (=> b!1380460 m!1553389))

(declare-fun m!1553391 () Bool)

(assert (=> b!1380460 m!1553391))

(assert (=> b!1379850 d!394257))

(declare-fun call!92483 () Regex!3739)

(declare-fun call!92484 () Regex!3739)

(declare-fun b!1380461 () Bool)

(declare-fun e!882089 () Regex!3739)

(assert (=> b!1380461 (= e!882089 (Union!3739 (Concat!6254 call!92484 (regTwo!7990 lt!458763)) call!92483))))

(declare-fun b!1380462 () Bool)

(declare-fun e!882086 () Regex!3739)

(assert (=> b!1380462 (= e!882086 (Concat!6254 call!92484 lt!458763))))

(declare-fun b!1380463 () Bool)

(assert (=> b!1380463 (= e!882089 (Union!3739 (Concat!6254 call!92483 (regTwo!7990 lt!458763)) EmptyLang!3739))))

(declare-fun call!92485 () Regex!3739)

(declare-fun c!227182 () Bool)

(declare-fun c!227181 () Bool)

(declare-fun bm!92477 () Bool)

(assert (=> bm!92477 (= call!92485 (derivativeStep!963 (ite c!227182 (regTwo!7991 lt!458763) (ite c!227181 (regTwo!7990 lt!458763) (regOne!7990 lt!458763))) (head!2501 lt!458759)))))

(declare-fun b!1380465 () Bool)

(assert (=> b!1380465 (= c!227182 ((_ is Union!3739) lt!458763))))

(declare-fun e!882090 () Regex!3739)

(declare-fun e!882088 () Regex!3739)

(assert (=> b!1380465 (= e!882090 e!882088)))

(declare-fun bm!92478 () Bool)

(declare-fun call!92482 () Regex!3739)

(declare-fun c!227183 () Bool)

(assert (=> bm!92478 (= call!92482 (derivativeStep!963 (ite c!227182 (regOne!7991 lt!458763) (ite c!227183 (reg!4068 lt!458763) (regOne!7990 lt!458763))) (head!2501 lt!458759)))))

(declare-fun bm!92479 () Bool)

(assert (=> bm!92479 (= call!92484 call!92482)))

(declare-fun b!1380466 () Bool)

(declare-fun e!882087 () Regex!3739)

(assert (=> b!1380466 (= e!882087 EmptyLang!3739)))

(declare-fun b!1380467 () Bool)

(assert (=> b!1380467 (= e!882088 e!882086)))

(assert (=> b!1380467 (= c!227183 ((_ is Star!3739) lt!458763))))

(declare-fun bm!92480 () Bool)

(assert (=> bm!92480 (= call!92483 call!92485)))

(declare-fun b!1380468 () Bool)

(assert (=> b!1380468 (= e!882088 (Union!3739 call!92482 call!92485))))

(declare-fun b!1380464 () Bool)

(assert (=> b!1380464 (= e!882087 e!882090)))

(declare-fun c!227179 () Bool)

(assert (=> b!1380464 (= c!227179 ((_ is ElementMatch!3739) lt!458763))))

(declare-fun d!394259 () Bool)

(declare-fun lt!459032 () Regex!3739)

(assert (=> d!394259 (validRegex!1625 lt!459032)))

(assert (=> d!394259 (= lt!459032 e!882087)))

(declare-fun c!227180 () Bool)

(assert (=> d!394259 (= c!227180 (or ((_ is EmptyExpr!3739) lt!458763) ((_ is EmptyLang!3739) lt!458763)))))

(assert (=> d!394259 (validRegex!1625 lt!458763)))

(assert (=> d!394259 (= (derivativeStep!963 lt!458763 (head!2501 lt!458759)) lt!459032)))

(declare-fun b!1380469 () Bool)

(assert (=> b!1380469 (= c!227181 (nullable!1205 (regOne!7990 lt!458763)))))

(assert (=> b!1380469 (= e!882086 e!882089)))

(declare-fun b!1380470 () Bool)

(assert (=> b!1380470 (= e!882090 (ite (= (head!2501 lt!458759) (c!226983 lt!458763)) EmptyExpr!3739 EmptyLang!3739))))

(assert (= (and d!394259 c!227180) b!1380466))

(assert (= (and d!394259 (not c!227180)) b!1380464))

(assert (= (and b!1380464 c!227179) b!1380470))

(assert (= (and b!1380464 (not c!227179)) b!1380465))

(assert (= (and b!1380465 c!227182) b!1380468))

(assert (= (and b!1380465 (not c!227182)) b!1380467))

(assert (= (and b!1380467 c!227183) b!1380462))

(assert (= (and b!1380467 (not c!227183)) b!1380469))

(assert (= (and b!1380469 c!227181) b!1380461))

(assert (= (and b!1380469 (not c!227181)) b!1380463))

(assert (= (or b!1380461 b!1380463) bm!92480))

(assert (= (or b!1380462 b!1380461) bm!92479))

(assert (= (or b!1380468 bm!92479) bm!92478))

(assert (= (or b!1380468 bm!92480) bm!92477))

(assert (=> bm!92477 m!1552599))

(declare-fun m!1553399 () Bool)

(assert (=> bm!92477 m!1553399))

(assert (=> bm!92478 m!1552599))

(declare-fun m!1553401 () Bool)

(assert (=> bm!92478 m!1553401))

(declare-fun m!1553403 () Bool)

(assert (=> d!394259 m!1553403))

(assert (=> d!394259 m!1552703))

(assert (=> b!1380469 m!1553031))

(assert (=> b!1379850 d!394259))

(declare-fun d!394265 () Bool)

(assert (=> d!394265 (= (head!2501 lt!458759) (h!19400 lt!458759))))

(assert (=> b!1379850 d!394265))

(declare-fun d!394267 () Bool)

(assert (=> d!394267 (= (tail!1998 lt!458759) (t!121930 lt!458759))))

(assert (=> b!1379850 d!394267))

(declare-fun d!394269 () Bool)

(declare-fun lt!459034 () Int)

(assert (=> d!394269 (>= lt!459034 0)))

(declare-fun e!882091 () Int)

(assert (=> d!394269 (= lt!459034 e!882091)))

(declare-fun c!227184 () Bool)

(assert (=> d!394269 (= c!227184 ((_ is Nil!13999) lt!458826))))

(assert (=> d!394269 (= (size!11481 lt!458826) lt!459034)))

(declare-fun b!1380471 () Bool)

(assert (=> b!1380471 (= e!882091 0)))

(declare-fun b!1380472 () Bool)

(assert (=> b!1380472 (= e!882091 (+ 1 (size!11481 (t!121930 lt!458826))))))

(assert (= (and d!394269 c!227184) b!1380471))

(assert (= (and d!394269 (not c!227184)) b!1380472))

(declare-fun m!1553405 () Bool)

(assert (=> b!1380472 m!1553405))

(assert (=> b!1379831 d!394269))

(declare-fun d!394271 () Bool)

(declare-fun lt!459035 () Int)

(assert (=> d!394271 (>= lt!459035 0)))

(declare-fun e!882092 () Int)

(assert (=> d!394271 (= lt!459035 e!882092)))

(declare-fun c!227185 () Bool)

(assert (=> d!394271 (= c!227185 ((_ is Nil!13999) lt!458759))))

(assert (=> d!394271 (= (size!11481 lt!458759) lt!459035)))

(declare-fun b!1380473 () Bool)

(assert (=> b!1380473 (= e!882092 0)))

(declare-fun b!1380474 () Bool)

(assert (=> b!1380474 (= e!882092 (+ 1 (size!11481 (t!121930 lt!458759))))))

(assert (= (and d!394271 c!227185) b!1380473))

(assert (= (and d!394271 (not c!227185)) b!1380474))

(assert (=> b!1380474 m!1552795))

(assert (=> b!1379831 d!394271))

(declare-fun d!394273 () Bool)

(declare-fun lt!459036 () Int)

(assert (=> d!394273 (>= lt!459036 0)))

(declare-fun e!882093 () Int)

(assert (=> d!394273 (= lt!459036 e!882093)))

(declare-fun c!227186 () Bool)

(assert (=> d!394273 (= c!227186 ((_ is Nil!13999) (getSuffix!585 lt!458765 lt!458759)))))

(assert (=> d!394273 (= (size!11481 (getSuffix!585 lt!458765 lt!458759)) lt!459036)))

(declare-fun b!1380475 () Bool)

(assert (=> b!1380475 (= e!882093 0)))

(declare-fun b!1380476 () Bool)

(assert (=> b!1380476 (= e!882093 (+ 1 (size!11481 (t!121930 (getSuffix!585 lt!458765 lt!458759)))))))

(assert (= (and d!394273 c!227186) b!1380475))

(assert (= (and d!394273 (not c!227186)) b!1380476))

(declare-fun m!1553407 () Bool)

(assert (=> b!1380476 m!1553407))

(assert (=> b!1379831 d!394273))

(declare-fun d!394275 () Bool)

(declare-fun lostCauseFct!139 (Regex!3739) Bool)

(assert (=> d!394275 (= (lostCause!339 lt!458763) (lostCauseFct!139 lt!458763))))

(declare-fun bs!336516 () Bool)

(assert (= bs!336516 d!394275))

(declare-fun m!1553409 () Bool)

(assert (=> bs!336516 m!1553409))

(assert (=> b!1379849 d!394275))

(declare-fun bs!336517 () Bool)

(declare-fun d!394277 () Bool)

(assert (= bs!336517 (and d!394277 d!394029)))

(declare-fun lambda!59152 () Int)

(assert (=> bs!336517 (= (and (= (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toChars!3563 (transformation!2425 (h!19402 rules!2550)))) (= (toValue!3704 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (h!19402 rules!2550))))) (= lambda!59152 lambda!59134))))

(assert (=> d!394277 true))

(assert (=> d!394277 (< (dynLambda!6373 order!8535 (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) (dynLambda!6374 order!8537 lambda!59152))))

(assert (=> d!394277 true))

(assert (=> d!394277 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (rule!4184 t2!34)))) (dynLambda!6374 order!8537 lambda!59152))))

(assert (=> d!394277 (= (semiInverseModEq!934 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (toValue!3704 (transformation!2425 (rule!4184 t2!34)))) (Forall!544 lambda!59152))))

(declare-fun bs!336518 () Bool)

(assert (= bs!336518 d!394277))

(declare-fun m!1553411 () Bool)

(assert (=> bs!336518 m!1553411))

(assert (=> d!393997 d!394277))

(declare-fun bs!336519 () Bool)

(declare-fun d!394279 () Bool)

(assert (= bs!336519 (and d!394279 d!394029)))

(declare-fun lambda!59153 () Int)

(assert (=> bs!336519 (= (and (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (h!19402 rules!2550)))) (= (toValue!3704 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (h!19402 rules!2550))))) (= lambda!59153 lambda!59134))))

(declare-fun bs!336520 () Bool)

(assert (= bs!336520 (and d!394279 d!394277)))

(assert (=> bs!336520 (= (and (= (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) (= (toValue!3704 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (rule!4184 t2!34))))) (= lambda!59153 lambda!59152))))

(assert (=> d!394279 true))

(assert (=> d!394279 (< (dynLambda!6373 order!8535 (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) (dynLambda!6374 order!8537 lambda!59153))))

(assert (=> d!394279 true))

(assert (=> d!394279 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (dynLambda!6374 order!8537 lambda!59153))))

(assert (=> d!394279 (= (semiInverseModEq!934 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (Forall!544 lambda!59153))))

(declare-fun bs!336521 () Bool)

(assert (= bs!336521 d!394279))

(declare-fun m!1553413 () Bool)

(assert (=> bs!336521 m!1553413))

(assert (=> d!393875 d!394279))

(declare-fun d!394281 () Bool)

(assert (=> d!394281 (= (isEmpty!8449 (originalCharacters!3287 t2!34)) ((_ is Nil!13999) (originalCharacters!3287 t2!34)))))

(assert (=> d!394003 d!394281))

(declare-fun d!394283 () Bool)

(assert (=> d!394283 (= (Exists!889 lambda!59131) (choose!8468 lambda!59131))))

(declare-fun bs!336522 () Bool)

(assert (= bs!336522 d!394283))

(declare-fun m!1553415 () Bool)

(assert (=> bs!336522 m!1553415))

(assert (=> d!394011 d!394283))

(declare-fun bs!336527 () Bool)

(declare-fun d!394285 () Bool)

(assert (= bs!336527 (and d!394285 b!1379574)))

(declare-fun lambda!59156 () Int)

(assert (=> bs!336527 (= lambda!59156 lambda!59117)))

(declare-fun bs!336528 () Bool)

(assert (= bs!336528 (and d!394285 d!394011)))

(assert (=> bs!336528 (= lambda!59156 lambda!59131)))

(assert (=> d!394285 true))

(assert (=> d!394285 true))

(assert (=> d!394285 (Exists!889 lambda!59156)))

(assert (=> d!394285 true))

(declare-fun _$103!149 () Unit!20263)

(assert (=> d!394285 (= (choose!8469 lt!458763 lt!458759) _$103!149)))

(declare-fun bs!336529 () Bool)

(assert (= bs!336529 d!394285))

(declare-fun m!1553469 () Bool)

(assert (=> bs!336529 m!1553469))

(assert (=> d!394011 d!394285))

(assert (=> d!394011 d!394189))

(declare-fun d!394303 () Bool)

(declare-fun c!227192 () Bool)

(assert (=> d!394303 (= c!227192 ((_ is Nil!13999) lt!458759))))

(declare-fun e!882109 () (InoxSet C!7768))

(assert (=> d!394303 (= (content!2043 lt!458759) e!882109)))

(declare-fun b!1380498 () Bool)

(assert (=> b!1380498 (= e!882109 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380499 () Bool)

(assert (=> b!1380499 (= e!882109 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 lt!458759) true) (content!2043 (t!121930 lt!458759))))))

(assert (= (and d!394303 c!227192) b!1380498))

(assert (= (and d!394303 (not c!227192)) b!1380499))

(declare-fun m!1553479 () Bool)

(assert (=> b!1380499 m!1553479))

(assert (=> b!1380499 m!1552791))

(assert (=> d!393961 d!394303))

(declare-fun d!394305 () Bool)

(declare-fun lt!459047 () Bool)

(assert (=> d!394305 (= lt!459047 (isEmpty!8449 (list!5410 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))))

(assert (=> d!394305 (= lt!459047 (isEmpty!8451 (c!226984 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34)))))))))

(assert (=> d!394305 (= (isEmpty!8448 (_2!7693 (lex!947 thiss!19762 rules!2550 (print!886 thiss!19762 (singletonSeq!1063 t1!34))))) lt!459047)))

(declare-fun bs!336530 () Bool)

(assert (= bs!336530 d!394305))

(declare-fun m!1553487 () Bool)

(assert (=> bs!336530 m!1553487))

(assert (=> bs!336530 m!1553487))

(declare-fun m!1553489 () Bool)

(assert (=> bs!336530 m!1553489))

(declare-fun m!1553491 () Bool)

(assert (=> bs!336530 m!1553491))

(assert (=> b!1379897 d!394305))

(assert (=> b!1379897 d!394117))

(assert (=> b!1379897 d!394139))

(assert (=> b!1379897 d!394149))

(declare-fun d!394309 () Bool)

(declare-fun lt!459048 () Token!4512)

(assert (=> d!394309 (= lt!459048 (apply!3476 (list!5413 (_1!7693 lt!458850)) 0))))

(assert (=> d!394309 (= lt!459048 (apply!3477 (c!227046 (_1!7693 lt!458850)) 0))))

(declare-fun e!882110 () Bool)

(assert (=> d!394309 e!882110))

(declare-fun res!622490 () Bool)

(assert (=> d!394309 (=> (not res!622490) (not e!882110))))

(assert (=> d!394309 (= res!622490 (<= 0 0))))

(assert (=> d!394309 (= (apply!3471 (_1!7693 lt!458850) 0) lt!459048)))

(declare-fun b!1380500 () Bool)

(assert (=> b!1380500 (= e!882110 (< 0 (size!11480 (_1!7693 lt!458850))))))

(assert (= (and d!394309 res!622490) b!1380500))

(assert (=> d!394309 m!1553125))

(assert (=> d!394309 m!1553125))

(declare-fun m!1553493 () Bool)

(assert (=> d!394309 m!1553493))

(declare-fun m!1553495 () Bool)

(assert (=> d!394309 m!1553495))

(assert (=> b!1380500 m!1552675))

(assert (=> b!1379895 d!394309))

(declare-fun b!1380524 () Bool)

(declare-fun res!622503 () Bool)

(declare-fun e!882126 () Bool)

(assert (=> b!1380524 (=> (not res!622503) (not e!882126))))

(assert (=> b!1380524 (= res!622503 (= (head!2501 lt!458759) (head!2501 lt!458832)))))

(declare-fun b!1380525 () Bool)

(assert (=> b!1380525 (= e!882126 (isPrefix!1133 (tail!1998 lt!458759) (tail!1998 lt!458832)))))

(declare-fun b!1380523 () Bool)

(declare-fun e!882125 () Bool)

(assert (=> b!1380523 (= e!882125 e!882126)))

(declare-fun res!622502 () Bool)

(assert (=> b!1380523 (=> (not res!622502) (not e!882126))))

(assert (=> b!1380523 (= res!622502 (not ((_ is Nil!13999) lt!458832)))))

(declare-fun b!1380526 () Bool)

(declare-fun e!882127 () Bool)

(assert (=> b!1380526 (= e!882127 (>= (size!11481 lt!458832) (size!11481 lt!458759)))))

(declare-fun d!394311 () Bool)

(assert (=> d!394311 e!882127))

(declare-fun res!622501 () Bool)

(assert (=> d!394311 (=> res!622501 e!882127)))

(declare-fun lt!459057 () Bool)

(assert (=> d!394311 (= res!622501 (not lt!459057))))

(assert (=> d!394311 (= lt!459057 e!882125)))

(declare-fun res!622504 () Bool)

(assert (=> d!394311 (=> res!622504 e!882125)))

(assert (=> d!394311 (= res!622504 ((_ is Nil!13999) lt!458759))))

(assert (=> d!394311 (= (isPrefix!1133 lt!458759 lt!458832) lt!459057)))

(assert (= (and d!394311 (not res!622504)) b!1380523))

(assert (= (and b!1380523 res!622502) b!1380524))

(assert (= (and b!1380524 res!622503) b!1380525))

(assert (= (and d!394311 (not res!622501)) b!1380526))

(assert (=> b!1380524 m!1552599))

(assert (=> b!1380524 m!1552949))

(assert (=> b!1380525 m!1552603))

(assert (=> b!1380525 m!1552953))

(assert (=> b!1380525 m!1552603))

(assert (=> b!1380525 m!1552953))

(declare-fun m!1553501 () Bool)

(assert (=> b!1380525 m!1553501))

(declare-fun m!1553503 () Bool)

(assert (=> b!1380526 m!1553503))

(assert (=> b!1380526 m!1552561))

(assert (=> b!1379999 d!394311))

(assert (=> b!1379844 d!394005))

(declare-fun d!394319 () Bool)

(assert (=> d!394319 (= (list!5410 lt!458857) (list!5414 (c!226984 lt!458857)))))

(declare-fun bs!336531 () Bool)

(assert (= bs!336531 d!394319))

(declare-fun m!1553507 () Bool)

(assert (=> bs!336531 m!1553507))

(assert (=> d!394007 d!394319))

(declare-fun d!394321 () Bool)

(declare-fun lt!459059 () Bool)

(assert (=> d!394321 (= lt!459059 (select (content!2043 (t!121930 lt!458765)) lt!458766))))

(declare-fun e!882130 () Bool)

(assert (=> d!394321 (= lt!459059 e!882130)))

(declare-fun res!622507 () Bool)

(assert (=> d!394321 (=> (not res!622507) (not e!882130))))

(assert (=> d!394321 (= res!622507 ((_ is Cons!13999) (t!121930 lt!458765)))))

(assert (=> d!394321 (= (contains!2659 (t!121930 lt!458765) lt!458766) lt!459059)))

(declare-fun b!1380530 () Bool)

(declare-fun e!882131 () Bool)

(assert (=> b!1380530 (= e!882130 e!882131)))

(declare-fun res!622506 () Bool)

(assert (=> b!1380530 (=> res!622506 e!882131)))

(assert (=> b!1380530 (= res!622506 (= (h!19400 (t!121930 lt!458765)) lt!458766))))

(declare-fun b!1380531 () Bool)

(assert (=> b!1380531 (= e!882131 (contains!2659 (t!121930 (t!121930 lt!458765)) lt!458766))))

(assert (= (and d!394321 res!622507) b!1380530))

(assert (= (and b!1380530 (not res!622506)) b!1380531))

(assert (=> d!394321 m!1552969))

(declare-fun m!1553511 () Bool)

(assert (=> d!394321 m!1553511))

(declare-fun m!1553513 () Bool)

(assert (=> b!1380531 m!1553513))

(assert (=> b!1379611 d!394321))

(declare-fun d!394327 () Bool)

(declare-fun e!882134 () Bool)

(assert (=> d!394327 e!882134))

(declare-fun res!622508 () Bool)

(assert (=> d!394327 (=> (not res!622508) (not e!882134))))

(declare-fun lt!459062 () List!14065)

(assert (=> d!394327 (= res!622508 (= (content!2043 lt!459062) ((_ map or) (content!2043 lt!458759) (content!2043 lt!458829))))))

(declare-fun e!882135 () List!14065)

(assert (=> d!394327 (= lt!459062 e!882135)))

(declare-fun c!227202 () Bool)

(assert (=> d!394327 (= c!227202 ((_ is Nil!13999) lt!458759))))

(assert (=> d!394327 (= (++!3626 lt!458759 lt!458829) lt!459062)))

(declare-fun b!1380538 () Bool)

(declare-fun res!622509 () Bool)

(assert (=> b!1380538 (=> (not res!622509) (not e!882134))))

(assert (=> b!1380538 (= res!622509 (= (size!11481 lt!459062) (+ (size!11481 lt!458759) (size!11481 lt!458829))))))

(declare-fun b!1380537 () Bool)

(assert (=> b!1380537 (= e!882135 (Cons!13999 (h!19400 lt!458759) (++!3626 (t!121930 lt!458759) lt!458829)))))

(declare-fun b!1380539 () Bool)

(assert (=> b!1380539 (= e!882134 (or (not (= lt!458829 Nil!13999)) (= lt!459062 lt!458759)))))

(declare-fun b!1380536 () Bool)

(assert (=> b!1380536 (= e!882135 lt!458829)))

(assert (= (and d!394327 c!227202) b!1380536))

(assert (= (and d!394327 (not c!227202)) b!1380537))

(assert (= (and d!394327 res!622508) b!1380538))

(assert (= (and b!1380538 res!622509) b!1380539))

(declare-fun m!1553517 () Bool)

(assert (=> d!394327 m!1553517))

(assert (=> d!394327 m!1552285))

(declare-fun m!1553520 () Bool)

(assert (=> d!394327 m!1553520))

(declare-fun m!1553523 () Bool)

(assert (=> b!1380538 m!1553523))

(assert (=> b!1380538 m!1552561))

(declare-fun m!1553527 () Bool)

(assert (=> b!1380538 m!1553527))

(declare-fun m!1553529 () Bool)

(assert (=> b!1380537 m!1553529))

(assert (=> d!393957 d!394327))

(declare-fun d!394333 () Bool)

(declare-fun lt!459064 () Int)

(assert (=> d!394333 (>= lt!459064 0)))

(declare-fun e!882139 () Int)

(assert (=> d!394333 (= lt!459064 e!882139)))

(declare-fun c!227205 () Bool)

(assert (=> d!394333 (= c!227205 ((_ is Nil!13999) lt!458765))))

(assert (=> d!394333 (= (size!11481 lt!458765) lt!459064)))

(declare-fun b!1380545 () Bool)

(assert (=> b!1380545 (= e!882139 0)))

(declare-fun b!1380546 () Bool)

(assert (=> b!1380546 (= e!882139 (+ 1 (size!11481 (t!121930 lt!458765))))))

(assert (= (and d!394333 c!227205) b!1380545))

(assert (= (and d!394333 (not c!227205)) b!1380546))

(declare-fun m!1553533 () Bool)

(assert (=> b!1380546 m!1553533))

(assert (=> d!393957 d!394333))

(assert (=> d!393957 d!394271))

(declare-fun b!1380561 () Bool)

(declare-fun e!882147 () List!14065)

(assert (=> b!1380561 (= e!882147 Nil!13999)))

(declare-fun d!394337 () Bool)

(declare-fun c!227213 () Bool)

(assert (=> d!394337 (= c!227213 ((_ is Empty!4611) (c!226984 lt!458761)))))

(assert (=> d!394337 (= (list!5414 (c!226984 lt!458761)) e!882147)))

(declare-fun b!1380564 () Bool)

(declare-fun e!882148 () List!14065)

(assert (=> b!1380564 (= e!882148 (++!3626 (list!5414 (left!11973 (c!226984 lt!458761))) (list!5414 (right!12303 (c!226984 lt!458761)))))))

(declare-fun b!1380562 () Bool)

(assert (=> b!1380562 (= e!882147 e!882148)))

(declare-fun c!227214 () Bool)

(assert (=> b!1380562 (= c!227214 ((_ is Leaf!7020) (c!226984 lt!458761)))))

(declare-fun b!1380563 () Bool)

(declare-fun list!5417 (IArray!9227) List!14065)

(assert (=> b!1380563 (= e!882148 (list!5417 (xs!7338 (c!226984 lt!458761))))))

(assert (= (and d!394337 c!227213) b!1380561))

(assert (= (and d!394337 (not c!227213)) b!1380562))

(assert (= (and b!1380562 c!227214) b!1380563))

(assert (= (and b!1380562 (not c!227214)) b!1380564))

(assert (=> b!1380564 m!1553059))

(assert (=> b!1380564 m!1553061))

(assert (=> b!1380564 m!1553059))

(assert (=> b!1380564 m!1553061))

(declare-fun m!1553547 () Bool)

(assert (=> b!1380564 m!1553547))

(declare-fun m!1553549 () Bool)

(assert (=> b!1380563 m!1553549))

(assert (=> d!393969 d!394337))

(assert (=> b!1379943 d!394105))

(declare-fun d!394349 () Bool)

(declare-fun lt!459068 () C!7768)

(assert (=> d!394349 (contains!2659 (list!5410 lt!458758) lt!459068)))

(declare-fun e!882150 () C!7768)

(assert (=> d!394349 (= lt!459068 e!882150)))

(declare-fun c!227215 () Bool)

(assert (=> d!394349 (= c!227215 (= 0 0))))

(declare-fun e!882149 () Bool)

(assert (=> d!394349 e!882149))

(declare-fun res!622511 () Bool)

(assert (=> d!394349 (=> (not res!622511) (not e!882149))))

(assert (=> d!394349 (= res!622511 (<= 0 0))))

(assert (=> d!394349 (= (apply!3472 (list!5410 lt!458758) 0) lt!459068)))

(declare-fun b!1380565 () Bool)

(assert (=> b!1380565 (= e!882149 (< 0 (size!11481 (list!5410 lt!458758))))))

(declare-fun b!1380566 () Bool)

(assert (=> b!1380566 (= e!882150 (head!2501 (list!5410 lt!458758)))))

(declare-fun b!1380567 () Bool)

(assert (=> b!1380567 (= e!882150 (apply!3472 (tail!1998 (list!5410 lt!458758)) (- 0 1)))))

(assert (= (and d!394349 res!622511) b!1380565))

(assert (= (and d!394349 c!227215) b!1380566))

(assert (= (and d!394349 (not c!227215)) b!1380567))

(assert (=> d!394349 m!1552589))

(declare-fun m!1553551 () Bool)

(assert (=> d!394349 m!1553551))

(assert (=> b!1380565 m!1552589))

(assert (=> b!1380565 m!1552733))

(assert (=> b!1380566 m!1552589))

(declare-fun m!1553553 () Bool)

(assert (=> b!1380566 m!1553553))

(assert (=> b!1380567 m!1552589))

(declare-fun m!1553555 () Bool)

(assert (=> b!1380567 m!1553555))

(assert (=> b!1380567 m!1553555))

(declare-fun m!1553557 () Bool)

(assert (=> b!1380567 m!1553557))

(assert (=> d!393965 d!394349))

(declare-fun d!394351 () Bool)

(assert (=> d!394351 (= (list!5410 lt!458758) (list!5414 (c!226984 lt!458758)))))

(declare-fun bs!336535 () Bool)

(assert (= bs!336535 d!394351))

(declare-fun m!1553561 () Bool)

(assert (=> bs!336535 m!1553561))

(assert (=> d!393965 d!394351))

(declare-fun b!1380568 () Bool)

(declare-fun e!882151 () C!7768)

(declare-fun e!882152 () C!7768)

(assert (=> b!1380568 (= e!882151 e!882152)))

(declare-fun lt!459070 () Bool)

(assert (=> b!1380568 (= lt!459070 (appendIndex!174 (list!5414 (left!11973 (c!226984 lt!458758))) (list!5414 (right!12303 (c!226984 lt!458758))) 0))))

(declare-fun c!227217 () Bool)

(assert (=> b!1380568 (= c!227217 (< 0 (size!11484 (left!11973 (c!226984 lt!458758)))))))

(declare-fun b!1380569 () Bool)

(declare-fun call!92487 () C!7768)

(assert (=> b!1380569 (= e!882152 call!92487)))

(declare-fun bm!92482 () Bool)

(declare-fun c!227218 () Bool)

(assert (=> bm!92482 (= c!227218 c!227217)))

(declare-fun e!882153 () Int)

(assert (=> bm!92482 (= call!92487 (apply!3473 (ite c!227217 (left!11973 (c!226984 lt!458758)) (right!12303 (c!226984 lt!458758))) e!882153))))

(declare-fun b!1380570 () Bool)

(assert (=> b!1380570 (= e!882151 (apply!3474 (xs!7338 (c!226984 lt!458758)) 0))))

(declare-fun b!1380571 () Bool)

(assert (=> b!1380571 (= e!882152 call!92487)))

(declare-fun b!1380572 () Bool)

(assert (=> b!1380572 (= e!882153 (- 0 (size!11484 (left!11973 (c!226984 lt!458758)))))))

(declare-fun b!1380573 () Bool)

(assert (=> b!1380573 (= e!882153 0)))

(declare-fun b!1380574 () Bool)

(declare-fun e!882154 () Bool)

(assert (=> b!1380574 (= e!882154 (< 0 (size!11484 (c!226984 lt!458758))))))

(declare-fun d!394355 () Bool)

(declare-fun lt!459069 () C!7768)

(assert (=> d!394355 (= lt!459069 (apply!3472 (list!5414 (c!226984 lt!458758)) 0))))

(assert (=> d!394355 (= lt!459069 e!882151)))

(declare-fun c!227216 () Bool)

(assert (=> d!394355 (= c!227216 ((_ is Leaf!7020) (c!226984 lt!458758)))))

(assert (=> d!394355 e!882154))

(declare-fun res!622512 () Bool)

(assert (=> d!394355 (=> (not res!622512) (not e!882154))))

(assert (=> d!394355 (= res!622512 (<= 0 0))))

(assert (=> d!394355 (= (apply!3473 (c!226984 lt!458758) 0) lt!459069)))

(assert (= (and d!394355 res!622512) b!1380574))

(assert (= (and d!394355 c!227216) b!1380570))

(assert (= (and d!394355 (not c!227216)) b!1380568))

(assert (= (and b!1380568 c!227217) b!1380571))

(assert (= (and b!1380568 (not c!227217)) b!1380569))

(assert (= (or b!1380571 b!1380569) bm!92482))

(assert (= (and bm!92482 c!227218) b!1380573))

(assert (= (and bm!92482 (not c!227218)) b!1380572))

(declare-fun m!1553563 () Bool)

(assert (=> b!1380572 m!1553563))

(assert (=> b!1380574 m!1552735))

(declare-fun m!1553565 () Bool)

(assert (=> b!1380570 m!1553565))

(assert (=> d!394355 m!1553561))

(assert (=> d!394355 m!1553561))

(declare-fun m!1553567 () Bool)

(assert (=> d!394355 m!1553567))

(declare-fun m!1553569 () Bool)

(assert (=> bm!92482 m!1553569))

(declare-fun m!1553571 () Bool)

(assert (=> b!1380568 m!1553571))

(declare-fun m!1553573 () Bool)

(assert (=> b!1380568 m!1553573))

(assert (=> b!1380568 m!1553571))

(assert (=> b!1380568 m!1553573))

(declare-fun m!1553575 () Bool)

(assert (=> b!1380568 m!1553575))

(assert (=> b!1380568 m!1553563))

(assert (=> d!393965 d!394355))

(assert (=> d!393865 d!394195))

(declare-fun d!394357 () Bool)

(declare-fun lt!459076 () Int)

(assert (=> d!394357 (>= lt!459076 0)))

(declare-fun e!882157 () Int)

(assert (=> d!394357 (= lt!459076 e!882157)))

(declare-fun c!227221 () Bool)

(assert (=> d!394357 (= c!227221 ((_ is Nil!14002) lt!458848))))

(assert (=> d!394357 (= (size!11482 lt!458848) lt!459076)))

(declare-fun b!1380581 () Bool)

(assert (=> b!1380581 (= e!882157 0)))

(declare-fun b!1380582 () Bool)

(assert (=> b!1380582 (= e!882157 (+ 1 (size!11482 (t!121933 lt!458848))))))

(assert (= (and d!394357 c!227221) b!1380581))

(assert (= (and d!394357 (not c!227221)) b!1380582))

(declare-fun m!1553581 () Bool)

(assert (=> b!1380582 m!1553581))

(assert (=> d!393985 d!394357))

(declare-fun d!394361 () Bool)

(declare-fun lt!459081 () Int)

(assert (=> d!394361 (>= lt!459081 0)))

(declare-fun e!882169 () Int)

(assert (=> d!394361 (= lt!459081 e!882169)))

(declare-fun c!227228 () Bool)

(assert (=> d!394361 (= c!227228 ((_ is Nil!14001) rules!2550))))

(assert (=> d!394361 (= (size!11483 rules!2550) lt!459081)))

(declare-fun b!1380605 () Bool)

(assert (=> b!1380605 (= e!882169 0)))

(declare-fun b!1380606 () Bool)

(assert (=> b!1380606 (= e!882169 (+ 1 (size!11483 (t!121932 rules!2550))))))

(assert (= (and d!394361 c!227228) b!1380605))

(assert (= (and d!394361 (not c!227228)) b!1380606))

(assert (=> b!1380606 m!1553187))

(assert (=> d!393985 d!394361))

(declare-fun bs!336538 () Bool)

(declare-fun d!394367 () Bool)

(assert (= bs!336538 (and d!394367 d!394235)))

(declare-fun lambda!59161 () Int)

(assert (=> bs!336538 (= (= (toValue!3704 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (rule!4184 t1!34)))) (= lambda!59161 lambda!59144))))

(declare-fun bs!336539 () Bool)

(assert (= bs!336539 (and d!394367 d!394247)))

(assert (=> bs!336539 (= (= (toValue!3704 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (rule!4184 t2!34)))) (= lambda!59161 lambda!59145))))

(assert (=> d!394367 true))

(assert (=> d!394367 (< (dynLambda!6375 order!8539 (toValue!3704 (transformation!2425 (h!19402 rules!2550)))) (dynLambda!6378 order!8545 lambda!59161))))

(assert (=> d!394367 (= (equivClasses!893 (toChars!3563 (transformation!2425 (h!19402 rules!2550))) (toValue!3704 (transformation!2425 (h!19402 rules!2550)))) (Forall2!447 lambda!59161))))

(declare-fun bs!336540 () Bool)

(assert (= bs!336540 d!394367))

(declare-fun m!1553605 () Bool)

(assert (=> bs!336540 m!1553605))

(assert (=> b!1379616 d!394367))

(declare-fun d!394373 () Bool)

(declare-fun c!227230 () Bool)

(assert (=> d!394373 (= c!227230 ((_ is Node!4611) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(declare-fun e!882171 () Bool)

(assert (=> d!394373 (= (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))) e!882171)))

(declare-fun b!1380609 () Bool)

(assert (=> b!1380609 (= e!882171 (inv!18347 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(declare-fun b!1380610 () Bool)

(declare-fun e!882172 () Bool)

(assert (=> b!1380610 (= e!882171 e!882172)))

(declare-fun res!622523 () Bool)

(assert (=> b!1380610 (= res!622523 (not ((_ is Leaf!7020) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))))))

(assert (=> b!1380610 (=> res!622523 e!882172)))

(declare-fun b!1380611 () Bool)

(assert (=> b!1380611 (= e!882172 (inv!18348 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(assert (= (and d!394373 c!227230) b!1380609))

(assert (= (and d!394373 (not c!227230)) b!1380610))

(assert (= (and b!1380610 (not res!622523)) b!1380611))

(declare-fun m!1553607 () Bool)

(assert (=> b!1380609 m!1553607))

(declare-fun m!1553609 () Bool)

(assert (=> b!1380611 m!1553609))

(assert (=> b!1379855 d!394373))

(assert (=> b!1379940 d!394105))

(declare-fun d!394375 () Bool)

(declare-fun charsToBigInt!1 (List!14066) Int)

(assert (=> d!394375 (= (inv!17 (value!78745 t2!34)) (= (charsToBigInt!1 (text!18053 (value!78745 t2!34))) (value!78737 (value!78745 t2!34))))))

(declare-fun bs!336541 () Bool)

(assert (= bs!336541 d!394375))

(declare-fun m!1553611 () Bool)

(assert (=> bs!336541 m!1553611))

(assert (=> b!1379874 d!394375))

(declare-fun d!394377 () Bool)

(assert (=> d!394377 (= (inv!16 (value!78745 t1!34)) (= (charsToInt!0 (text!18052 (value!78745 t1!34))) (value!78736 (value!78745 t1!34))))))

(declare-fun bs!336542 () Bool)

(assert (= bs!336542 d!394377))

(declare-fun m!1553613 () Bool)

(assert (=> bs!336542 m!1553613))

(assert (=> b!1379902 d!394377))

(declare-fun d!394379 () Bool)

(assert (=> d!394379 (= (isEmpty!8449 (originalCharacters!3287 t1!34)) ((_ is Nil!13999) (originalCharacters!3287 t1!34)))))

(assert (=> d!394001 d!394379))

(declare-fun d!394381 () Bool)

(declare-fun c!227235 () Bool)

(assert (=> d!394381 (= c!227235 ((_ is Nil!13999) lt!458826))))

(declare-fun e!882177 () (InoxSet C!7768))

(assert (=> d!394381 (= (content!2043 lt!458826) e!882177)))

(declare-fun b!1380620 () Bool)

(assert (=> b!1380620 (= e!882177 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380621 () Bool)

(assert (=> b!1380621 (= e!882177 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 lt!458826) true) (content!2043 (t!121930 lt!458826))))))

(assert (= (and d!394381 c!227235) b!1380620))

(assert (= (and d!394381 (not c!227235)) b!1380621))

(declare-fun m!1553615 () Bool)

(assert (=> b!1380621 m!1553615))

(declare-fun m!1553617 () Bool)

(assert (=> b!1380621 m!1553617))

(assert (=> d!393955 d!394381))

(assert (=> d!393955 d!394303))

(declare-fun d!394383 () Bool)

(declare-fun c!227236 () Bool)

(assert (=> d!394383 (= c!227236 ((_ is Nil!13999) (getSuffix!585 lt!458765 lt!458759)))))

(declare-fun e!882178 () (InoxSet C!7768))

(assert (=> d!394383 (= (content!2043 (getSuffix!585 lt!458765 lt!458759)) e!882178)))

(declare-fun b!1380622 () Bool)

(assert (=> b!1380622 (= e!882178 ((as const (Array C!7768 Bool)) false))))

(declare-fun b!1380623 () Bool)

(assert (=> b!1380623 (= e!882178 ((_ map or) (store ((as const (Array C!7768 Bool)) false) (h!19400 (getSuffix!585 lt!458765 lt!458759)) true) (content!2043 (t!121930 (getSuffix!585 lt!458765 lt!458759)))))))

(assert (= (and d!394383 c!227236) b!1380622))

(assert (= (and d!394383 (not c!227236)) b!1380623))

(declare-fun m!1553619 () Bool)

(assert (=> b!1380623 m!1553619))

(declare-fun m!1553621 () Bool)

(assert (=> b!1380623 m!1553621))

(assert (=> d!393955 d!394383))

(declare-fun d!394385 () Bool)

(declare-fun lt!459083 () Int)

(assert (=> d!394385 (>= lt!459083 0)))

(declare-fun e!882181 () Int)

(assert (=> d!394385 (= lt!459083 e!882181)))

(declare-fun c!227239 () Bool)

(assert (=> d!394385 (= c!227239 ((_ is Nil!13999) lt!458841))))

(assert (=> d!394385 (= (size!11481 lt!458841) lt!459083)))

(declare-fun b!1380628 () Bool)

(assert (=> b!1380628 (= e!882181 0)))

(declare-fun b!1380629 () Bool)

(assert (=> b!1380629 (= e!882181 (+ 1 (size!11481 (t!121930 lt!458841))))))

(assert (= (and d!394385 c!227239) b!1380628))

(assert (= (and d!394385 (not c!227239)) b!1380629))

(declare-fun m!1553623 () Bool)

(assert (=> b!1380629 m!1553623))

(assert (=> b!1379858 d!394385))

(declare-fun d!394387 () Bool)

(declare-fun lt!459084 () Int)

(assert (=> d!394387 (>= lt!459084 0)))

(declare-fun e!882182 () Int)

(assert (=> d!394387 (= lt!459084 e!882182)))

(declare-fun c!227240 () Bool)

(assert (=> d!394387 (= c!227240 ((_ is Nil!13999) lt!458764))))

(assert (=> d!394387 (= (size!11481 lt!458764) lt!459084)))

(declare-fun b!1380630 () Bool)

(assert (=> b!1380630 (= e!882182 0)))

(declare-fun b!1380631 () Bool)

(assert (=> b!1380631 (= e!882182 (+ 1 (size!11481 (t!121930 lt!458764))))))

(assert (= (and d!394387 c!227240) b!1380630))

(assert (= (and d!394387 (not c!227240)) b!1380631))

(assert (=> b!1380631 m!1553293))

(assert (=> b!1379858 d!394387))

(declare-fun d!394389 () Bool)

(declare-fun lt!459085 () Int)

(assert (=> d!394389 (>= lt!459085 0)))

(declare-fun e!882183 () Int)

(assert (=> d!394389 (= lt!459085 e!882183)))

(declare-fun c!227241 () Bool)

(assert (=> d!394389 (= c!227241 ((_ is Nil!13999) (Cons!13999 lt!458766 Nil!13999)))))

(assert (=> d!394389 (= (size!11481 (Cons!13999 lt!458766 Nil!13999)) lt!459085)))

(declare-fun b!1380632 () Bool)

(assert (=> b!1380632 (= e!882183 0)))

(declare-fun b!1380633 () Bool)

(assert (=> b!1380633 (= e!882183 (+ 1 (size!11481 (t!121930 (Cons!13999 lt!458766 Nil!13999)))))))

(assert (= (and d!394389 c!227241) b!1380632))

(assert (= (and d!394389 (not c!227241)) b!1380633))

(declare-fun m!1553629 () Bool)

(assert (=> b!1380633 m!1553629))

(assert (=> b!1379858 d!394389))

(declare-fun d!394395 () Bool)

(declare-fun lt!459086 () Bool)

(assert (=> d!394395 (= lt!459086 (isEmpty!8449 (list!5410 (_2!7693 lt!458823))))))

(assert (=> d!394395 (= lt!459086 (isEmpty!8451 (c!226984 (_2!7693 lt!458823))))))

(assert (=> d!394395 (= (isEmpty!8448 (_2!7693 lt!458823)) lt!459086)))

(declare-fun bs!336545 () Bool)

(assert (= bs!336545 d!394395))

(declare-fun m!1553635 () Bool)

(assert (=> bs!336545 m!1553635))

(assert (=> bs!336545 m!1553635))

(declare-fun m!1553637 () Bool)

(assert (=> bs!336545 m!1553637))

(declare-fun m!1553639 () Bool)

(assert (=> bs!336545 m!1553639))

(assert (=> b!1379819 d!394395))

(declare-fun d!394399 () Bool)

(assert (=> d!394399 (= (inv!17 (value!78745 t1!34)) (= (charsToBigInt!1 (text!18053 (value!78745 t1!34))) (value!78737 (value!78745 t1!34))))))

(declare-fun bs!336546 () Bool)

(assert (= bs!336546 d!394399))

(declare-fun m!1553641 () Bool)

(assert (=> bs!336546 m!1553641))

(assert (=> b!1379900 d!394399))

(declare-fun d!394401 () Bool)

(assert (=> d!394401 (= (list!5410 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))) (list!5414 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))))))

(declare-fun bs!336547 () Bool)

(assert (= bs!336547 d!394401))

(declare-fun m!1553643 () Bool)

(assert (=> bs!336547 m!1553643))

(assert (=> b!1379950 d!394401))

(declare-fun d!394403 () Bool)

(assert (=> d!394403 (= (inv!18338 (tag!2687 (h!19402 (t!121932 rules!2550)))) (= (mod (str.len (value!78744 (tag!2687 (h!19402 (t!121932 rules!2550))))) 2) 0))))

(assert (=> b!1379996 d!394403))

(declare-fun d!394405 () Bool)

(declare-fun res!622524 () Bool)

(declare-fun e!882184 () Bool)

(assert (=> d!394405 (=> (not res!622524) (not e!882184))))

(assert (=> d!394405 (= res!622524 (semiInverseModEq!934 (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toValue!3704 (transformation!2425 (h!19402 (t!121932 rules!2550))))))))

(assert (=> d!394405 (= (inv!18341 (transformation!2425 (h!19402 (t!121932 rules!2550)))) e!882184)))

(declare-fun b!1380634 () Bool)

(assert (=> b!1380634 (= e!882184 (equivClasses!893 (toChars!3563 (transformation!2425 (h!19402 (t!121932 rules!2550)))) (toValue!3704 (transformation!2425 (h!19402 (t!121932 rules!2550))))))))

(assert (= (and d!394405 res!622524) b!1380634))

(declare-fun m!1553645 () Bool)

(assert (=> d!394405 m!1553645))

(declare-fun m!1553647 () Bool)

(assert (=> b!1380634 m!1553647))

(assert (=> b!1379996 d!394405))

(declare-fun d!394407 () Bool)

(assert (=> d!394407 (= (list!5410 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))) (list!5414 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))))))

(declare-fun bs!336548 () Bool)

(assert (= bs!336548 d!394407))

(declare-fun m!1553649 () Bool)

(assert (=> bs!336548 m!1553649))

(assert (=> b!1379952 d!394407))

(declare-fun d!394409 () Bool)

(declare-fun res!622527 () List!14065)

(assert (=> d!394409 (dynLambda!6369 lambda!59117 res!622527)))

(declare-fun e!882187 () Bool)

(assert (=> d!394409 e!882187))

(assert (=> d!394409 (= (choose!8467 lambda!59117) res!622527)))

(declare-fun b!1380637 () Bool)

(declare-fun tp!395522 () Bool)

(assert (=> b!1380637 (= e!882187 (and tp_is_empty!6759 tp!395522))))

(assert (= (and d!394409 ((_ is Cons!13999) res!622527)) b!1380637))

(declare-fun b_lambda!42501 () Bool)

(assert (=> (not b_lambda!42501) (not d!394409)))

(declare-fun m!1553651 () Bool)

(assert (=> d!394409 m!1553651))

(assert (=> d!393959 d!394409))

(assert (=> d!393959 d!394009))

(declare-fun d!394411 () Bool)

(declare-fun lt!459087 () Int)

(assert (=> d!394411 (>= lt!459087 0)))

(declare-fun e!882188 () Int)

(assert (=> d!394411 (= lt!459087 e!882188)))

(declare-fun c!227242 () Bool)

(assert (=> d!394411 (= c!227242 ((_ is Nil!13999) (list!5410 lt!458758)))))

(assert (=> d!394411 (= (size!11481 (list!5410 lt!458758)) lt!459087)))

(declare-fun b!1380638 () Bool)

(assert (=> b!1380638 (= e!882188 0)))

(declare-fun b!1380639 () Bool)

(assert (=> b!1380639 (= e!882188 (+ 1 (size!11481 (t!121930 (list!5410 lt!458758)))))))

(assert (= (and d!394411 c!227242) b!1380638))

(assert (= (and d!394411 (not c!227242)) b!1380639))

(declare-fun m!1553653 () Bool)

(assert (=> b!1380639 m!1553653))

(assert (=> d!394005 d!394411))

(assert (=> d!394005 d!394351))

(declare-fun d!394413 () Bool)

(declare-fun lt!459094 () Int)

(assert (=> d!394413 (= lt!459094 (size!11481 (list!5414 (c!226984 lt!458758))))))

(assert (=> d!394413 (= lt!459094 (ite ((_ is Empty!4611) (c!226984 lt!458758)) 0 (ite ((_ is Leaf!7020) (c!226984 lt!458758)) (csize!9453 (c!226984 lt!458758)) (csize!9452 (c!226984 lt!458758)))))))

(assert (=> d!394413 (= (size!11484 (c!226984 lt!458758)) lt!459094)))

(declare-fun bs!336549 () Bool)

(assert (= bs!336549 d!394413))

(assert (=> bs!336549 m!1553561))

(assert (=> bs!336549 m!1553561))

(declare-fun m!1553655 () Bool)

(assert (=> bs!336549 m!1553655))

(assert (=> d!394005 d!394413))

(declare-fun d!394415 () Bool)

(assert (=> d!394415 (= (isEmpty!8449 lt!458759) ((_ is Nil!13999) lt!458759))))

(assert (=> d!393967 d!394415))

(assert (=> bm!92418 d!394187))

(declare-fun bs!336552 () Bool)

(declare-fun d!394417 () Bool)

(assert (= bs!336552 (and d!394417 b!1379579)))

(declare-fun lambda!59172 () Int)

(assert (=> bs!336552 (= lambda!59172 lambda!59118)))

(declare-fun bs!336553 () Bool)

(assert (= bs!336553 (and d!394417 d!393975)))

(assert (=> bs!336553 (= lambda!59172 lambda!59128)))

(declare-fun lambda!59173 () Int)

(assert (=> bs!336552 (= lambda!59173 lambda!59119)))

(assert (=> d!394417 (forall!3407 (map!3098 rules!2550 lambda!59172) lambda!59173)))

(declare-fun lt!459101 () Unit!20263)

(declare-fun e!882194 () Unit!20263)

(assert (=> d!394417 (= lt!459101 e!882194)))

(declare-fun c!227248 () Bool)

(assert (=> d!394417 (= c!227248 ((_ is Nil!14001) rules!2550))))

(assert (=> d!394417 (rulesValidInductive!775 thiss!19762 rules!2550)))

(assert (=> d!394417 (= (lemma!133 rules!2550 thiss!19762 rules!2550) lt!459101)))

(declare-fun b!1380650 () Bool)

(declare-fun Unit!20267 () Unit!20263)

(assert (=> b!1380650 (= e!882194 Unit!20267)))

(declare-fun b!1380651 () Bool)

(declare-fun Unit!20268 () Unit!20263)

(assert (=> b!1380651 (= e!882194 Unit!20268)))

(declare-fun lt!459102 () Unit!20263)

(assert (=> b!1380651 (= lt!459102 (lemma!133 rules!2550 thiss!19762 (t!121932 rules!2550)))))

(assert (= (and d!394417 c!227248) b!1380650))

(assert (= (and d!394417 (not c!227248)) b!1380651))

(declare-fun m!1553663 () Bool)

(assert (=> d!394417 m!1553663))

(assert (=> d!394417 m!1553663))

(declare-fun m!1553665 () Bool)

(assert (=> d!394417 m!1553665))

(assert (=> d!394417 m!1553377))

(declare-fun m!1553667 () Bool)

(assert (=> b!1380651 m!1553667))

(assert (=> d!393975 d!394417))

(declare-fun bs!336557 () Bool)

(declare-fun d!394421 () Bool)

(assert (= bs!336557 (and d!394421 b!1379579)))

(declare-fun lambda!59179 () Int)

(assert (=> bs!336557 (= lambda!59179 lambda!59119)))

(declare-fun bs!336558 () Bool)

(assert (= bs!336558 (and d!394421 d!394417)))

(assert (=> bs!336558 (= lambda!59179 lambda!59173)))

(declare-fun b!1380710 () Bool)

(declare-fun e!882231 () Bool)

(declare-fun isEmpty!8455 (List!14068) Bool)

(assert (=> b!1380710 (= e!882231 (isEmpty!8455 (t!121933 (map!3098 rules!2550 lambda!59128))))))

(declare-fun b!1380711 () Bool)

(declare-fun e!882233 () Bool)

(declare-fun e!882235 () Bool)

(assert (=> b!1380711 (= e!882233 e!882235)))

(declare-fun c!227273 () Bool)

(assert (=> b!1380711 (= c!227273 (isEmpty!8455 (map!3098 rules!2550 lambda!59128)))))

(assert (=> d!394421 e!882233))

(declare-fun res!622541 () Bool)

(assert (=> d!394421 (=> (not res!622541) (not e!882233))))

(declare-fun lt!459110 () Regex!3739)

(assert (=> d!394421 (= res!622541 (validRegex!1625 lt!459110))))

(declare-fun e!882234 () Regex!3739)

(assert (=> d!394421 (= lt!459110 e!882234)))

(declare-fun c!227275 () Bool)

(assert (=> d!394421 (= c!227275 e!882231)))

(declare-fun res!622540 () Bool)

(assert (=> d!394421 (=> (not res!622540) (not e!882231))))

(assert (=> d!394421 (= res!622540 ((_ is Cons!14002) (map!3098 rules!2550 lambda!59128)))))

(assert (=> d!394421 (forall!3407 (map!3098 rules!2550 lambda!59128) lambda!59179)))

(assert (=> d!394421 (= (generalisedUnion!141 (map!3098 rules!2550 lambda!59128)) lt!459110)))

(declare-fun b!1380712 () Bool)

(assert (=> b!1380712 (= e!882234 (h!19403 (map!3098 rules!2550 lambda!59128)))))

(declare-fun b!1380713 () Bool)

(declare-fun e!882232 () Bool)

(declare-fun isUnion!51 (Regex!3739) Bool)

(assert (=> b!1380713 (= e!882232 (isUnion!51 lt!459110))))

(declare-fun b!1380714 () Bool)

(declare-fun e!882230 () Regex!3739)

(assert (=> b!1380714 (= e!882230 (Union!3739 (h!19403 (map!3098 rules!2550 lambda!59128)) (generalisedUnion!141 (t!121933 (map!3098 rules!2550 lambda!59128)))))))

(declare-fun b!1380715 () Bool)

(assert (=> b!1380715 (= e!882234 e!882230)))

(declare-fun c!227272 () Bool)

(assert (=> b!1380715 (= c!227272 ((_ is Cons!14002) (map!3098 rules!2550 lambda!59128)))))

(declare-fun b!1380716 () Bool)

(declare-fun isEmptyLang!51 (Regex!3739) Bool)

(assert (=> b!1380716 (= e!882235 (isEmptyLang!51 lt!459110))))

(declare-fun b!1380717 () Bool)

(declare-fun head!2503 (List!14068) Regex!3739)

(assert (=> b!1380717 (= e!882232 (= lt!459110 (head!2503 (map!3098 rules!2550 lambda!59128))))))

(declare-fun b!1380718 () Bool)

(assert (=> b!1380718 (= e!882235 e!882232)))

(declare-fun c!227274 () Bool)

(declare-fun tail!2000 (List!14068) List!14068)

(assert (=> b!1380718 (= c!227274 (isEmpty!8455 (tail!2000 (map!3098 rules!2550 lambda!59128))))))

(declare-fun b!1380719 () Bool)

(assert (=> b!1380719 (= e!882230 EmptyLang!3739)))

(assert (= (and d!394421 res!622540) b!1380710))

(assert (= (and d!394421 c!227275) b!1380712))

(assert (= (and d!394421 (not c!227275)) b!1380715))

(assert (= (and b!1380715 c!227272) b!1380714))

(assert (= (and b!1380715 (not c!227272)) b!1380719))

(assert (= (and d!394421 res!622541) b!1380711))

(assert (= (and b!1380711 c!227273) b!1380716))

(assert (= (and b!1380711 (not c!227273)) b!1380718))

(assert (= (and b!1380718 c!227274) b!1380717))

(assert (= (and b!1380718 (not c!227274)) b!1380713))

(assert (=> b!1380718 m!1552633))

(declare-fun m!1553719 () Bool)

(assert (=> b!1380718 m!1553719))

(assert (=> b!1380718 m!1553719))

(declare-fun m!1553721 () Bool)

(assert (=> b!1380718 m!1553721))

(assert (=> b!1380717 m!1552633))

(declare-fun m!1553723 () Bool)

(assert (=> b!1380717 m!1553723))

(declare-fun m!1553725 () Bool)

(assert (=> b!1380714 m!1553725))

(declare-fun m!1553727 () Bool)

(assert (=> b!1380716 m!1553727))

(declare-fun m!1553729 () Bool)

(assert (=> d!394421 m!1553729))

(assert (=> d!394421 m!1552633))

(declare-fun m!1553731 () Bool)

(assert (=> d!394421 m!1553731))

(declare-fun m!1553733 () Bool)

(assert (=> b!1380713 m!1553733))

(declare-fun m!1553735 () Bool)

(assert (=> b!1380710 m!1553735))

(assert (=> b!1380711 m!1552633))

(declare-fun m!1553739 () Bool)

(assert (=> b!1380711 m!1553739))

(assert (=> d!393975 d!394421))

(declare-fun d!394439 () Bool)

(declare-fun lt!459113 () List!14068)

(assert (=> d!394439 (= (size!11482 lt!459113) (size!11483 rules!2550))))

(declare-fun e!882237 () List!14068)

(assert (=> d!394439 (= lt!459113 e!882237)))

(declare-fun c!227277 () Bool)

(assert (=> d!394439 (= c!227277 ((_ is Nil!14001) rules!2550))))

(assert (=> d!394439 (= (map!3098 rules!2550 lambda!59128) lt!459113)))

(declare-fun b!1380722 () Bool)

(assert (=> b!1380722 (= e!882237 Nil!14002)))

(declare-fun b!1380723 () Bool)

(assert (=> b!1380723 (= e!882237 ($colon$colon!207 (map!3098 (t!121932 rules!2550) lambda!59128) (dynLambda!6372 lambda!59128 (h!19402 rules!2550))))))

(assert (= (and d!394439 c!227277) b!1380722))

(assert (= (and d!394439 (not c!227277)) b!1380723))

(declare-fun b_lambda!42505 () Bool)

(assert (=> (not b_lambda!42505) (not b!1380723)))

(declare-fun m!1553745 () Bool)

(assert (=> d!394439 m!1553745))

(assert (=> d!394439 m!1552653))

(declare-fun m!1553749 () Bool)

(assert (=> b!1380723 m!1553749))

(declare-fun m!1553753 () Bool)

(assert (=> b!1380723 m!1553753))

(assert (=> b!1380723 m!1553749))

(assert (=> b!1380723 m!1553753))

(declare-fun m!1553755 () Bool)

(assert (=> b!1380723 m!1553755))

(assert (=> d!393975 d!394439))

(assert (=> d!393867 d!394303))

(declare-fun d!394447 () Bool)

(assert (=> d!394447 (= (list!5410 lt!458840) (list!5414 (c!226984 lt!458840)))))

(declare-fun bs!336561 () Bool)

(assert (= bs!336561 d!394447))

(declare-fun m!1553757 () Bool)

(assert (=> bs!336561 m!1553757))

(assert (=> d!393971 d!394447))

(declare-fun b!1380745 () Bool)

(declare-fun e!882255 () Bool)

(declare-fun e!882256 () Bool)

(assert (=> b!1380745 (= e!882255 e!882256)))

(declare-fun res!622554 () Bool)

(declare-fun rulesUseDisjointChars!187 (Rule!4650 Rule!4650) Bool)

(assert (=> b!1380745 (= res!622554 (rulesUseDisjointChars!187 (h!19402 rules!2550) (h!19402 rules!2550)))))

(assert (=> b!1380745 (=> (not res!622554) (not e!882256))))

(declare-fun b!1380746 () Bool)

(declare-fun e!882254 () Bool)

(declare-fun call!92494 () Bool)

(assert (=> b!1380746 (= e!882254 call!92494)))

(declare-fun b!1380747 () Bool)

(assert (=> b!1380747 (= e!882255 e!882254)))

(declare-fun res!622553 () Bool)

(assert (=> b!1380747 (= res!622553 (not ((_ is Cons!14001) rules!2550)))))

(assert (=> b!1380747 (=> res!622553 e!882254)))

(declare-fun d!394449 () Bool)

(declare-fun c!227283 () Bool)

(assert (=> d!394449 (= c!227283 (and ((_ is Cons!14001) rules!2550) (not (= (isSeparator!2425 (h!19402 rules!2550)) (isSeparator!2425 (h!19402 rules!2550))))))))

(assert (=> d!394449 (= (ruleDisjointCharsFromAllFromOtherType!376 (h!19402 rules!2550) rules!2550) e!882255)))

(declare-fun bm!92489 () Bool)

(assert (=> bm!92489 (= call!92494 (ruleDisjointCharsFromAllFromOtherType!376 (h!19402 rules!2550) (t!121932 rules!2550)))))

(declare-fun b!1380748 () Bool)

(assert (=> b!1380748 (= e!882256 call!92494)))

(assert (= (and d!394449 c!227283) b!1380745))

(assert (= (and d!394449 (not c!227283)) b!1380747))

(assert (= (and b!1380745 res!622554) b!1380748))

(assert (= (and b!1380747 (not res!622553)) b!1380746))

(assert (= (or b!1380748 b!1380746) bm!92489))

(declare-fun m!1553767 () Bool)

(assert (=> b!1380745 m!1553767))

(declare-fun m!1553769 () Bool)

(assert (=> bm!92489 m!1553769))

(assert (=> b!1379893 d!394449))

(declare-fun b!1380749 () Bool)

(declare-fun e!882257 () Bool)

(declare-fun tp!395523 () Bool)

(assert (=> b!1380749 (= e!882257 (and tp_is_empty!6759 tp!395523))))

(assert (=> b!1379978 (= tp!395493 e!882257)))

(assert (= (and b!1379978 ((_ is Cons!13999) (t!121930 (originalCharacters!3287 t1!34)))) b!1380749))

(declare-fun e!882258 () Bool)

(assert (=> b!1379985 (= tp!395503 e!882258)))

(declare-fun b!1380752 () Bool)

(declare-fun tp!395528 () Bool)

(assert (=> b!1380752 (= e!882258 tp!395528)))

(declare-fun b!1380751 () Bool)

(declare-fun tp!395525 () Bool)

(declare-fun tp!395527 () Bool)

(assert (=> b!1380751 (= e!882258 (and tp!395525 tp!395527))))

(declare-fun b!1380750 () Bool)

(assert (=> b!1380750 (= e!882258 tp_is_empty!6759)))

(declare-fun b!1380753 () Bool)

(declare-fun tp!395524 () Bool)

(declare-fun tp!395526 () Bool)

(assert (=> b!1380753 (= e!882258 (and tp!395524 tp!395526))))

(assert (= (and b!1379985 ((_ is ElementMatch!3739) (reg!4068 (regex!2425 (rule!4184 t2!34))))) b!1380750))

(assert (= (and b!1379985 ((_ is Concat!6254) (reg!4068 (regex!2425 (rule!4184 t2!34))))) b!1380751))

(assert (= (and b!1379985 ((_ is Star!3739) (reg!4068 (regex!2425 (rule!4184 t2!34))))) b!1380752))

(assert (= (and b!1379985 ((_ is Union!3739) (reg!4068 (regex!2425 (rule!4184 t2!34))))) b!1380753))

(declare-fun e!882259 () Bool)

(assert (=> b!1379980 (= tp!395495 e!882259)))

(declare-fun b!1380756 () Bool)

(declare-fun tp!395533 () Bool)

(assert (=> b!1380756 (= e!882259 tp!395533)))

(declare-fun b!1380755 () Bool)

(declare-fun tp!395530 () Bool)

(declare-fun tp!395532 () Bool)

(assert (=> b!1380755 (= e!882259 (and tp!395530 tp!395532))))

(declare-fun b!1380754 () Bool)

(assert (=> b!1380754 (= e!882259 tp_is_empty!6759)))

(declare-fun b!1380757 () Bool)

(declare-fun tp!395529 () Bool)

(declare-fun tp!395531 () Bool)

(assert (=> b!1380757 (= e!882259 (and tp!395529 tp!395531))))

(assert (= (and b!1379980 ((_ is ElementMatch!3739) (regOne!7990 (regex!2425 (rule!4184 t1!34))))) b!1380754))

(assert (= (and b!1379980 ((_ is Concat!6254) (regOne!7990 (regex!2425 (rule!4184 t1!34))))) b!1380755))

(assert (= (and b!1379980 ((_ is Star!3739) (regOne!7990 (regex!2425 (rule!4184 t1!34))))) b!1380756))

(assert (= (and b!1379980 ((_ is Union!3739) (regOne!7990 (regex!2425 (rule!4184 t1!34))))) b!1380757))

(declare-fun e!882260 () Bool)

(assert (=> b!1379980 (= tp!395497 e!882260)))

(declare-fun b!1380760 () Bool)

(declare-fun tp!395538 () Bool)

(assert (=> b!1380760 (= e!882260 tp!395538)))

(declare-fun b!1380759 () Bool)

(declare-fun tp!395535 () Bool)

(declare-fun tp!395537 () Bool)

(assert (=> b!1380759 (= e!882260 (and tp!395535 tp!395537))))

(declare-fun b!1380758 () Bool)

(assert (=> b!1380758 (= e!882260 tp_is_empty!6759)))

(declare-fun b!1380761 () Bool)

(declare-fun tp!395534 () Bool)

(declare-fun tp!395536 () Bool)

(assert (=> b!1380761 (= e!882260 (and tp!395534 tp!395536))))

(assert (= (and b!1379980 ((_ is ElementMatch!3739) (regTwo!7990 (regex!2425 (rule!4184 t1!34))))) b!1380758))

(assert (= (and b!1379980 ((_ is Concat!6254) (regTwo!7990 (regex!2425 (rule!4184 t1!34))))) b!1380759))

(assert (= (and b!1379980 ((_ is Star!3739) (regTwo!7990 (regex!2425 (rule!4184 t1!34))))) b!1380760))

(assert (= (and b!1379980 ((_ is Union!3739) (regTwo!7990 (regex!2425 (rule!4184 t1!34))))) b!1380761))

(declare-fun e!882261 () Bool)

(assert (=> b!1379982 (= tp!395494 e!882261)))

(declare-fun b!1380764 () Bool)

(declare-fun tp!395543 () Bool)

(assert (=> b!1380764 (= e!882261 tp!395543)))

(declare-fun b!1380763 () Bool)

(declare-fun tp!395540 () Bool)

(declare-fun tp!395542 () Bool)

(assert (=> b!1380763 (= e!882261 (and tp!395540 tp!395542))))

(declare-fun b!1380762 () Bool)

(assert (=> b!1380762 (= e!882261 tp_is_empty!6759)))

(declare-fun b!1380765 () Bool)

(declare-fun tp!395539 () Bool)

(declare-fun tp!395541 () Bool)

(assert (=> b!1380765 (= e!882261 (and tp!395539 tp!395541))))

(assert (= (and b!1379982 ((_ is ElementMatch!3739) (regOne!7991 (regex!2425 (rule!4184 t1!34))))) b!1380762))

(assert (= (and b!1379982 ((_ is Concat!6254) (regOne!7991 (regex!2425 (rule!4184 t1!34))))) b!1380763))

(assert (= (and b!1379982 ((_ is Star!3739) (regOne!7991 (regex!2425 (rule!4184 t1!34))))) b!1380764))

(assert (= (and b!1379982 ((_ is Union!3739) (regOne!7991 (regex!2425 (rule!4184 t1!34))))) b!1380765))

(declare-fun e!882262 () Bool)

(assert (=> b!1379982 (= tp!395496 e!882262)))

(declare-fun b!1380768 () Bool)

(declare-fun tp!395548 () Bool)

(assert (=> b!1380768 (= e!882262 tp!395548)))

(declare-fun b!1380767 () Bool)

(declare-fun tp!395545 () Bool)

(declare-fun tp!395547 () Bool)

(assert (=> b!1380767 (= e!882262 (and tp!395545 tp!395547))))

(declare-fun b!1380766 () Bool)

(assert (=> b!1380766 (= e!882262 tp_is_empty!6759)))

(declare-fun b!1380769 () Bool)

(declare-fun tp!395544 () Bool)

(declare-fun tp!395546 () Bool)

(assert (=> b!1380769 (= e!882262 (and tp!395544 tp!395546))))

(assert (= (and b!1379982 ((_ is ElementMatch!3739) (regTwo!7991 (regex!2425 (rule!4184 t1!34))))) b!1380766))

(assert (= (and b!1379982 ((_ is Concat!6254) (regTwo!7991 (regex!2425 (rule!4184 t1!34))))) b!1380767))

(assert (= (and b!1379982 ((_ is Star!3739) (regTwo!7991 (regex!2425 (rule!4184 t1!34))))) b!1380768))

(assert (= (and b!1379982 ((_ is Union!3739) (regTwo!7991 (regex!2425 (rule!4184 t1!34))))) b!1380769))

(declare-fun e!882263 () Bool)

(assert (=> b!1379986 (= tp!395499 e!882263)))

(declare-fun b!1380772 () Bool)

(declare-fun tp!395553 () Bool)

(assert (=> b!1380772 (= e!882263 tp!395553)))

(declare-fun b!1380771 () Bool)

(declare-fun tp!395550 () Bool)

(declare-fun tp!395552 () Bool)

(assert (=> b!1380771 (= e!882263 (and tp!395550 tp!395552))))

(declare-fun b!1380770 () Bool)

(assert (=> b!1380770 (= e!882263 tp_is_empty!6759)))

(declare-fun b!1380773 () Bool)

(declare-fun tp!395549 () Bool)

(declare-fun tp!395551 () Bool)

(assert (=> b!1380773 (= e!882263 (and tp!395549 tp!395551))))

(assert (= (and b!1379986 ((_ is ElementMatch!3739) (regOne!7991 (regex!2425 (rule!4184 t2!34))))) b!1380770))

(assert (= (and b!1379986 ((_ is Concat!6254) (regOne!7991 (regex!2425 (rule!4184 t2!34))))) b!1380771))

(assert (= (and b!1379986 ((_ is Star!3739) (regOne!7991 (regex!2425 (rule!4184 t2!34))))) b!1380772))

(assert (= (and b!1379986 ((_ is Union!3739) (regOne!7991 (regex!2425 (rule!4184 t2!34))))) b!1380773))

(declare-fun e!882264 () Bool)

(assert (=> b!1379986 (= tp!395501 e!882264)))

(declare-fun b!1380778 () Bool)

(declare-fun tp!395558 () Bool)

(assert (=> b!1380778 (= e!882264 tp!395558)))

(declare-fun b!1380775 () Bool)

(declare-fun tp!395555 () Bool)

(declare-fun tp!395557 () Bool)

(assert (=> b!1380775 (= e!882264 (and tp!395555 tp!395557))))

(declare-fun b!1380774 () Bool)

(assert (=> b!1380774 (= e!882264 tp_is_empty!6759)))

(declare-fun b!1380779 () Bool)

(declare-fun tp!395554 () Bool)

(declare-fun tp!395556 () Bool)

(assert (=> b!1380779 (= e!882264 (and tp!395554 tp!395556))))

(assert (= (and b!1379986 ((_ is ElementMatch!3739) (regTwo!7991 (regex!2425 (rule!4184 t2!34))))) b!1380774))

(assert (= (and b!1379986 ((_ is Concat!6254) (regTwo!7991 (regex!2425 (rule!4184 t2!34))))) b!1380775))

(assert (= (and b!1379986 ((_ is Star!3739) (regTwo!7991 (regex!2425 (rule!4184 t2!34))))) b!1380778))

(assert (= (and b!1379986 ((_ is Union!3739) (regTwo!7991 (regex!2425 (rule!4184 t2!34))))) b!1380779))

(declare-fun e!882266 () Bool)

(assert (=> b!1379981 (= tp!395498 e!882266)))

(declare-fun b!1380782 () Bool)

(declare-fun tp!395563 () Bool)

(assert (=> b!1380782 (= e!882266 tp!395563)))

(declare-fun b!1380781 () Bool)

(declare-fun tp!395560 () Bool)

(declare-fun tp!395562 () Bool)

(assert (=> b!1380781 (= e!882266 (and tp!395560 tp!395562))))

(declare-fun b!1380780 () Bool)

(assert (=> b!1380780 (= e!882266 tp_is_empty!6759)))

(declare-fun b!1380783 () Bool)

(declare-fun tp!395559 () Bool)

(declare-fun tp!395561 () Bool)

(assert (=> b!1380783 (= e!882266 (and tp!395559 tp!395561))))

(assert (= (and b!1379981 ((_ is ElementMatch!3739) (reg!4068 (regex!2425 (rule!4184 t1!34))))) b!1380780))

(assert (= (and b!1379981 ((_ is Concat!6254) (reg!4068 (regex!2425 (rule!4184 t1!34))))) b!1380781))

(assert (= (and b!1379981 ((_ is Star!3739) (reg!4068 (regex!2425 (rule!4184 t1!34))))) b!1380782))

(assert (= (and b!1379981 ((_ is Union!3739) (reg!4068 (regex!2425 (rule!4184 t1!34))))) b!1380783))

(declare-fun e!882267 () Bool)

(assert (=> b!1379996 (= tp!395514 e!882267)))

(declare-fun b!1380786 () Bool)

(declare-fun tp!395568 () Bool)

(assert (=> b!1380786 (= e!882267 tp!395568)))

(declare-fun b!1380785 () Bool)

(declare-fun tp!395565 () Bool)

(declare-fun tp!395567 () Bool)

(assert (=> b!1380785 (= e!882267 (and tp!395565 tp!395567))))

(declare-fun b!1380784 () Bool)

(assert (=> b!1380784 (= e!882267 tp_is_empty!6759)))

(declare-fun b!1380787 () Bool)

(declare-fun tp!395564 () Bool)

(declare-fun tp!395566 () Bool)

(assert (=> b!1380787 (= e!882267 (and tp!395564 tp!395566))))

(assert (= (and b!1379996 ((_ is ElementMatch!3739) (regex!2425 (h!19402 (t!121932 rules!2550))))) b!1380784))

(assert (= (and b!1379996 ((_ is Concat!6254) (regex!2425 (h!19402 (t!121932 rules!2550))))) b!1380785))

(assert (= (and b!1379996 ((_ is Star!3739) (regex!2425 (h!19402 (t!121932 rules!2550))))) b!1380786))

(assert (= (and b!1379996 ((_ is Union!3739) (regex!2425 (h!19402 (t!121932 rules!2550))))) b!1380787))

(declare-fun b!1380788 () Bool)

(declare-fun e!882268 () Bool)

(declare-fun tp!395569 () Bool)

(assert (=> b!1380788 (= e!882268 (and tp_is_empty!6759 tp!395569))))

(assert (=> b!1379998 (= tp!395516 e!882268)))

(assert (= (and b!1379998 ((_ is Cons!13999) (t!121930 (originalCharacters!3287 t2!34)))) b!1380788))

(declare-fun e!882269 () Bool)

(assert (=> b!1379972 (= tp!395490 e!882269)))

(declare-fun b!1380791 () Bool)

(declare-fun tp!395574 () Bool)

(assert (=> b!1380791 (= e!882269 tp!395574)))

(declare-fun b!1380790 () Bool)

(declare-fun tp!395571 () Bool)

(declare-fun tp!395573 () Bool)

(assert (=> b!1380790 (= e!882269 (and tp!395571 tp!395573))))

(declare-fun b!1380789 () Bool)

(assert (=> b!1380789 (= e!882269 tp_is_empty!6759)))

(declare-fun b!1380792 () Bool)

(declare-fun tp!395570 () Bool)

(declare-fun tp!395572 () Bool)

(assert (=> b!1380792 (= e!882269 (and tp!395570 tp!395572))))

(assert (= (and b!1379972 ((_ is ElementMatch!3739) (reg!4068 (regex!2425 (h!19402 rules!2550))))) b!1380789))

(assert (= (and b!1379972 ((_ is Concat!6254) (reg!4068 (regex!2425 (h!19402 rules!2550))))) b!1380790))

(assert (= (and b!1379972 ((_ is Star!3739) (reg!4068 (regex!2425 (h!19402 rules!2550))))) b!1380791))

(assert (= (and b!1379972 ((_ is Union!3739) (reg!4068 (regex!2425 (h!19402 rules!2550))))) b!1380792))

(declare-fun e!882270 () Bool)

(assert (=> b!1379984 (= tp!395500 e!882270)))

(declare-fun b!1380795 () Bool)

(declare-fun tp!395579 () Bool)

(assert (=> b!1380795 (= e!882270 tp!395579)))

(declare-fun b!1380794 () Bool)

(declare-fun tp!395576 () Bool)

(declare-fun tp!395578 () Bool)

(assert (=> b!1380794 (= e!882270 (and tp!395576 tp!395578))))

(declare-fun b!1380793 () Bool)

(assert (=> b!1380793 (= e!882270 tp_is_empty!6759)))

(declare-fun b!1380796 () Bool)

(declare-fun tp!395575 () Bool)

(declare-fun tp!395577 () Bool)

(assert (=> b!1380796 (= e!882270 (and tp!395575 tp!395577))))

(assert (= (and b!1379984 ((_ is ElementMatch!3739) (regOne!7990 (regex!2425 (rule!4184 t2!34))))) b!1380793))

(assert (= (and b!1379984 ((_ is Concat!6254) (regOne!7990 (regex!2425 (rule!4184 t2!34))))) b!1380794))

(assert (= (and b!1379984 ((_ is Star!3739) (regOne!7990 (regex!2425 (rule!4184 t2!34))))) b!1380795))

(assert (= (and b!1379984 ((_ is Union!3739) (regOne!7990 (regex!2425 (rule!4184 t2!34))))) b!1380796))

(declare-fun e!882271 () Bool)

(assert (=> b!1379984 (= tp!395502 e!882271)))

(declare-fun b!1380799 () Bool)

(declare-fun tp!395584 () Bool)

(assert (=> b!1380799 (= e!882271 tp!395584)))

(declare-fun b!1380798 () Bool)

(declare-fun tp!395581 () Bool)

(declare-fun tp!395583 () Bool)

(assert (=> b!1380798 (= e!882271 (and tp!395581 tp!395583))))

(declare-fun b!1380797 () Bool)

(assert (=> b!1380797 (= e!882271 tp_is_empty!6759)))

(declare-fun b!1380800 () Bool)

(declare-fun tp!395580 () Bool)

(declare-fun tp!395582 () Bool)

(assert (=> b!1380800 (= e!882271 (and tp!395580 tp!395582))))

(assert (= (and b!1379984 ((_ is ElementMatch!3739) (regTwo!7990 (regex!2425 (rule!4184 t2!34))))) b!1380797))

(assert (= (and b!1379984 ((_ is Concat!6254) (regTwo!7990 (regex!2425 (rule!4184 t2!34))))) b!1380798))

(assert (= (and b!1379984 ((_ is Star!3739) (regTwo!7990 (regex!2425 (rule!4184 t2!34))))) b!1380799))

(assert (= (and b!1379984 ((_ is Union!3739) (regTwo!7990 (regex!2425 (rule!4184 t2!34))))) b!1380800))

(declare-fun tp!395593 () Bool)

(declare-fun b!1380818 () Bool)

(declare-fun tp!395592 () Bool)

(declare-fun e!882284 () Bool)

(assert (=> b!1380818 (= e!882284 (and (inv!18345 (left!11973 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))) tp!395592 (inv!18345 (right!12303 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))) tp!395593))))

(declare-fun b!1380820 () Bool)

(declare-fun e!882283 () Bool)

(declare-fun tp!395591 () Bool)

(assert (=> b!1380820 (= e!882283 tp!395591)))

(declare-fun b!1380819 () Bool)

(declare-fun inv!18351 (IArray!9227) Bool)

(assert (=> b!1380819 (= e!882284 (and (inv!18351 (xs!7338 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))) e!882283))))

(assert (=> b!1379954 (= tp!395475 (and (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34)))) e!882284))))

(assert (= (and b!1379954 ((_ is Node!4611) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))) b!1380818))

(assert (= b!1380819 b!1380820))

(assert (= (and b!1379954 ((_ is Leaf!7020) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t2!34))) (value!78745 t2!34))))) b!1380819))

(declare-fun m!1553785 () Bool)

(assert (=> b!1380818 m!1553785))

(declare-fun m!1553787 () Bool)

(assert (=> b!1380818 m!1553787))

(declare-fun m!1553789 () Bool)

(assert (=> b!1380819 m!1553789))

(assert (=> b!1379954 m!1552721))

(declare-fun e!882285 () Bool)

(assert (=> b!1379973 (= tp!395486 e!882285)))

(declare-fun b!1380823 () Bool)

(declare-fun tp!395598 () Bool)

(assert (=> b!1380823 (= e!882285 tp!395598)))

(declare-fun b!1380822 () Bool)

(declare-fun tp!395595 () Bool)

(declare-fun tp!395597 () Bool)

(assert (=> b!1380822 (= e!882285 (and tp!395595 tp!395597))))

(declare-fun b!1380821 () Bool)

(assert (=> b!1380821 (= e!882285 tp_is_empty!6759)))

(declare-fun b!1380824 () Bool)

(declare-fun tp!395594 () Bool)

(declare-fun tp!395596 () Bool)

(assert (=> b!1380824 (= e!882285 (and tp!395594 tp!395596))))

(assert (= (and b!1379973 ((_ is ElementMatch!3739) (regOne!7991 (regex!2425 (h!19402 rules!2550))))) b!1380821))

(assert (= (and b!1379973 ((_ is Concat!6254) (regOne!7991 (regex!2425 (h!19402 rules!2550))))) b!1380822))

(assert (= (and b!1379973 ((_ is Star!3739) (regOne!7991 (regex!2425 (h!19402 rules!2550))))) b!1380823))

(assert (= (and b!1379973 ((_ is Union!3739) (regOne!7991 (regex!2425 (h!19402 rules!2550))))) b!1380824))

(declare-fun e!882286 () Bool)

(assert (=> b!1379973 (= tp!395488 e!882286)))

(declare-fun b!1380827 () Bool)

(declare-fun tp!395603 () Bool)

(assert (=> b!1380827 (= e!882286 tp!395603)))

(declare-fun b!1380826 () Bool)

(declare-fun tp!395600 () Bool)

(declare-fun tp!395602 () Bool)

(assert (=> b!1380826 (= e!882286 (and tp!395600 tp!395602))))

(declare-fun b!1380825 () Bool)

(assert (=> b!1380825 (= e!882286 tp_is_empty!6759)))

(declare-fun b!1380828 () Bool)

(declare-fun tp!395599 () Bool)

(declare-fun tp!395601 () Bool)

(assert (=> b!1380828 (= e!882286 (and tp!395599 tp!395601))))

(assert (= (and b!1379973 ((_ is ElementMatch!3739) (regTwo!7991 (regex!2425 (h!19402 rules!2550))))) b!1380825))

(assert (= (and b!1379973 ((_ is Concat!6254) (regTwo!7991 (regex!2425 (h!19402 rules!2550))))) b!1380826))

(assert (= (and b!1379973 ((_ is Star!3739) (regTwo!7991 (regex!2425 (h!19402 rules!2550))))) b!1380827))

(assert (= (and b!1379973 ((_ is Union!3739) (regTwo!7991 (regex!2425 (h!19402 rules!2550))))) b!1380828))

(declare-fun b!1380831 () Bool)

(declare-fun b_free!33527 () Bool)

(declare-fun b_next!34231 () Bool)

(assert (=> b!1380831 (= b_free!33527 (not b_next!34231))))

(declare-fun tp!395605 () Bool)

(declare-fun b_and!92503 () Bool)

(assert (=> b!1380831 (= tp!395605 b_and!92503)))

(declare-fun b_free!33529 () Bool)

(declare-fun b_next!34233 () Bool)

(assert (=> b!1380831 (= b_free!33529 (not b_next!34233))))

(declare-fun t!121985 () Bool)

(declare-fun tb!72513 () Bool)

(assert (=> (and b!1380831 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 (t!121932 rules!2550))))) (toChars!3563 (transformation!2425 (rule!4184 t1!34)))) t!121985) tb!72513))

(declare-fun result!88070 () Bool)

(assert (= result!88070 result!88042))

(assert (=> d!393971 t!121985))

(assert (=> b!1379950 t!121985))

(declare-fun tb!72515 () Bool)

(declare-fun t!121987 () Bool)

(assert (=> (and b!1380831 (= (toChars!3563 (transformation!2425 (h!19402 (t!121932 (t!121932 rules!2550))))) (toChars!3563 (transformation!2425 (rule!4184 t2!34)))) t!121987) tb!72515))

(declare-fun result!88072 () Bool)

(assert (= result!88072 result!88050))

(assert (=> b!1379952 t!121987))

(assert (=> d!394007 t!121987))

(declare-fun b_and!92505 () Bool)

(declare-fun tp!395607 () Bool)

(assert (=> b!1380831 (= tp!395607 (and (=> t!121985 result!88070) (=> t!121987 result!88072) b_and!92505))))

(declare-fun e!882290 () Bool)

(assert (=> b!1380831 (= e!882290 (and tp!395605 tp!395607))))

(declare-fun b!1380830 () Bool)

(declare-fun tp!395606 () Bool)

(declare-fun e!882287 () Bool)

(assert (=> b!1380830 (= e!882287 (and tp!395606 (inv!18338 (tag!2687 (h!19402 (t!121932 (t!121932 rules!2550))))) (inv!18341 (transformation!2425 (h!19402 (t!121932 (t!121932 rules!2550))))) e!882290))))

(declare-fun b!1380829 () Bool)

(declare-fun e!882289 () Bool)

(declare-fun tp!395604 () Bool)

(assert (=> b!1380829 (= e!882289 (and e!882287 tp!395604))))

(assert (=> b!1379995 (= tp!395512 e!882289)))

(assert (= b!1380830 b!1380831))

(assert (= b!1380829 b!1380830))

(assert (= (and b!1379995 ((_ is Cons!14001) (t!121932 (t!121932 rules!2550)))) b!1380829))

(declare-fun m!1553793 () Bool)

(assert (=> b!1380830 m!1553793))

(declare-fun m!1553795 () Bool)

(assert (=> b!1380830 m!1553795))

(declare-fun e!882295 () Bool)

(assert (=> b!1379971 (= tp!395487 e!882295)))

(declare-fun b!1380842 () Bool)

(declare-fun tp!395618 () Bool)

(assert (=> b!1380842 (= e!882295 tp!395618)))

(declare-fun b!1380841 () Bool)

(declare-fun tp!395615 () Bool)

(declare-fun tp!395617 () Bool)

(assert (=> b!1380841 (= e!882295 (and tp!395615 tp!395617))))

(declare-fun b!1380840 () Bool)

(assert (=> b!1380840 (= e!882295 tp_is_empty!6759)))

(declare-fun b!1380843 () Bool)

(declare-fun tp!395614 () Bool)

(declare-fun tp!395616 () Bool)

(assert (=> b!1380843 (= e!882295 (and tp!395614 tp!395616))))

(assert (= (and b!1379971 ((_ is ElementMatch!3739) (regOne!7990 (regex!2425 (h!19402 rules!2550))))) b!1380840))

(assert (= (and b!1379971 ((_ is Concat!6254) (regOne!7990 (regex!2425 (h!19402 rules!2550))))) b!1380841))

(assert (= (and b!1379971 ((_ is Star!3739) (regOne!7990 (regex!2425 (h!19402 rules!2550))))) b!1380842))

(assert (= (and b!1379971 ((_ is Union!3739) (regOne!7990 (regex!2425 (h!19402 rules!2550))))) b!1380843))

(declare-fun e!882296 () Bool)

(assert (=> b!1379971 (= tp!395489 e!882296)))

(declare-fun b!1380846 () Bool)

(declare-fun tp!395623 () Bool)

(assert (=> b!1380846 (= e!882296 tp!395623)))

(declare-fun b!1380845 () Bool)

(declare-fun tp!395620 () Bool)

(declare-fun tp!395622 () Bool)

(assert (=> b!1380845 (= e!882296 (and tp!395620 tp!395622))))

(declare-fun b!1380844 () Bool)

(assert (=> b!1380844 (= e!882296 tp_is_empty!6759)))

(declare-fun b!1380847 () Bool)

(declare-fun tp!395619 () Bool)

(declare-fun tp!395621 () Bool)

(assert (=> b!1380847 (= e!882296 (and tp!395619 tp!395621))))

(assert (= (and b!1379971 ((_ is ElementMatch!3739) (regTwo!7990 (regex!2425 (h!19402 rules!2550))))) b!1380844))

(assert (= (and b!1379971 ((_ is Concat!6254) (regTwo!7990 (regex!2425 (h!19402 rules!2550))))) b!1380845))

(assert (= (and b!1379971 ((_ is Star!3739) (regTwo!7990 (regex!2425 (h!19402 rules!2550))))) b!1380846))

(assert (= (and b!1379971 ((_ is Union!3739) (regTwo!7990 (regex!2425 (h!19402 rules!2550))))) b!1380847))

(declare-fun b!1380848 () Bool)

(declare-fun e!882298 () Bool)

(declare-fun tp!395626 () Bool)

(declare-fun tp!395625 () Bool)

(assert (=> b!1380848 (= e!882298 (and (inv!18345 (left!11973 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))) tp!395625 (inv!18345 (right!12303 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))) tp!395626))))

(declare-fun b!1380850 () Bool)

(declare-fun e!882297 () Bool)

(declare-fun tp!395624 () Bool)

(assert (=> b!1380850 (= e!882297 tp!395624)))

(declare-fun b!1380849 () Bool)

(assert (=> b!1380849 (= e!882298 (and (inv!18351 (xs!7338 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))) e!882297))))

(assert (=> b!1379855 (= tp!395474 (and (inv!18345 (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34)))) e!882298))))

(assert (= (and b!1379855 ((_ is Node!4611) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))) b!1380848))

(assert (= b!1380849 b!1380850))

(assert (= (and b!1379855 ((_ is Leaf!7020) (c!226984 (dynLambda!6370 (toChars!3563 (transformation!2425 (rule!4184 t1!34))) (value!78745 t1!34))))) b!1380849))

(declare-fun m!1553797 () Bool)

(assert (=> b!1380848 m!1553797))

(declare-fun m!1553799 () Bool)

(assert (=> b!1380848 m!1553799))

(declare-fun m!1553801 () Bool)

(assert (=> b!1380849 m!1553801))

(assert (=> b!1379855 m!1552609))

(declare-fun b_lambda!42507 () Bool)

(assert (= b_lambda!42493 (or b!1379579 b_lambda!42507)))

(declare-fun bs!336573 () Bool)

(declare-fun d!394469 () Bool)

(assert (= bs!336573 (and d!394469 b!1379579)))

(assert (=> bs!336573 (= (dynLambda!6372 lambda!59118 (h!19402 (t!121932 rules!2550))) (regex!2425 (h!19402 (t!121932 rules!2550))))))

(assert (=> b!1380321 d!394469))

(declare-fun b_lambda!42509 () Bool)

(assert (= b_lambda!42495 (or b!1379579 b_lambda!42509)))

(declare-fun bs!336574 () Bool)

(declare-fun d!394471 () Bool)

(assert (= bs!336574 (and d!394471 b!1379579)))

(assert (=> bs!336574 (= (dynLambda!6371 lambda!59119 (h!19403 (t!121933 (map!3098 rules!2550 lambda!59118)))) (validRegex!1625 (h!19403 (t!121933 (map!3098 rules!2550 lambda!59118)))))))

(declare-fun m!1553809 () Bool)

(assert (=> bs!336574 m!1553809))

(assert (=> b!1380405 d!394471))

(declare-fun b_lambda!42511 () Bool)

(assert (= b_lambda!42501 (or b!1379574 b_lambda!42511)))

(declare-fun bs!336575 () Bool)

(declare-fun d!394473 () Bool)

(assert (= bs!336575 (and d!394473 b!1379574)))

(declare-fun res!622560 () Bool)

(declare-fun e!882302 () Bool)

(assert (=> bs!336575 (=> (not res!622560) (not e!882302))))

(assert (=> bs!336575 (= res!622560 (matchR!1730 lt!458763 res!622527))))

(assert (=> bs!336575 (= (dynLambda!6369 lambda!59117 res!622527) e!882302)))

(declare-fun b!1380858 () Bool)

(assert (=> b!1380858 (= e!882302 (isPrefix!1133 lt!458759 res!622527))))

(assert (= (and bs!336575 res!622560) b!1380858))

(declare-fun m!1553811 () Bool)

(assert (=> bs!336575 m!1553811))

(declare-fun m!1553813 () Bool)

(assert (=> b!1380858 m!1553813))

(assert (=> d!394409 d!394473))

(declare-fun b_lambda!42513 () Bool)

(assert (= b_lambda!42505 (or d!393975 b_lambda!42513)))

(declare-fun bs!336576 () Bool)

(declare-fun d!394475 () Bool)

(assert (= bs!336576 (and d!394475 d!393975)))

(assert (=> bs!336576 (= (dynLambda!6372 lambda!59128 (h!19402 rules!2550)) (regex!2425 (h!19402 rules!2550)))))

(assert (=> b!1380723 d!394475))

(check-sat (not b!1380223) (not b!1380828) (not b!1380200) (not b!1380710) (not b!1380394) (not b!1380760) (not b!1380110) (not b!1380099) (not d!394279) (not b!1380796) (not b!1380751) (not b!1380843) (not b!1380130) b_and!92443 (not b!1380114) (not bm!92471) (not b!1380537) (not b!1380716) (not d!394107) (not d!394183) (not bs!336574) (not d!394175) (not bs!336575) (not b!1380714) (not bm!92429) (not b!1380847) (not b_lambda!42507) b_and!92505 (not b!1380330) (not b!1380783) (not b!1380476) (not b_next!34233) (not b!1380339) (not b!1380631) (not b!1380761) (not d!394165) (not b!1380109) (not d!394085) (not b!1380469) (not b_lambda!42489) (not b_next!34227) (not b!1380027) (not b!1380771) (not b!1380307) b_and!92495 (not d!394285) (not d!394077) (not b!1380582) (not b!1380202) (not b!1380546) (not d!394167) (not d!394321) (not b!1380790) (not b!1380846) (not b!1380201) (not b_lambda!42483) (not b!1380850) b_and!92503 (not b!1380711) (not bm!92482) (not d!394327) (not b!1380257) (not b!1380820) (not b!1380823) (not d!394169) (not d!394305) (not d!394407) (not bm!92438) (not d!394029) (not bm!92444) (not b!1380018) (not b!1380767) (not b!1380564) (not b!1380253) (not b!1380052) (not d!394259) (not b!1380217) (not b!1380606) (not d!394161) (not d!394205) (not b!1380472) (not b!1380389) (not d!394399) (not d!394181) (not b!1380101) (not b!1380122) (not d!394049) (not bm!92489) (not b!1380133) (not b!1380221) (not b_lambda!42511) (not d!394045) (not b!1380639) (not b!1380827) (not b!1380609) (not b!1380749) (not b!1380053) (not d!394439) (not d!394377) (not b!1380452) (not b!1380524) (not b!1380563) (not d!394111) (not b!1380849) (not b_lambda!42509) b_and!92493 (not d!394139) (not b!1380763) (not d!394115) (not b!1380500) (not b_lambda!42479) b_and!92499 (not d!394137) (not b!1380775) (not d!394199) (not b_next!34211) (not bm!92439) (not b!1380192) (not b!1380795) (not b!1380336) (not b!1380858) (not d!394367) (not b!1380451) (not b!1380083) (not b!1380611) (not b!1380637) (not b!1380121) (not d!394283) (not b!1380383) (not d!394235) (not b_next!34219) (not b!1380040) (not d!394117) (not d!394171) (not b!1380845) (not b!1380773) (not b!1380566) (not b!1380623) (not b!1380752) (not d!394225) (not b_next!34221) (not b!1380474) b_and!92435 (not d!394405) (not b!1380723) (not b!1380798) (not d!394401) (not b!1380782) (not b!1380829) (not b!1380025) (not b_lambda!42513) (not d!394319) (not d!394275) (not d!394309) (not d!394061) (not d!394185) (not b!1380629) (not bm!92472) (not b!1380745) tp_is_empty!6759 (not b!1380039) (not b!1380794) (not b!1380826) (not b!1380124) (not b!1380104) (not b!1380753) (not d!394155) b_and!92497 (not d!394151) (not d!394179) (not b!1380764) (not b!1380418) (not b!1380331) (not b!1380779) (not b!1380459) (not b!1380848) (not d!394073) (not bm!92469) (not d!394247) (not b!1380717) (not b!1380525) (not b!1380842) (not b_next!34213) (not b_lambda!42477) (not b!1380256) (not d!394355) (not b!1380570) (not b_lambda!42485) (not b!1380841) (not b_next!34217) (not d!394079) (not b!1380800) (not d!394395) (not b!1380572) (not b!1380759) (not b!1380824) (not b!1380574) (not b!1380041) (not b!1380567) (not b!1380408) (not d!394257) (not b!1380029) (not b!1380769) (not b!1380255) (not b!1380402) (not b!1380799) (not b!1380818) (not d!394349) (not d!394059) (not b!1380772) (not b!1380082) (not b!1380633) (not b!1380129) (not b!1380781) (not d!394047) (not b!1380403) (not b!1380791) (not b!1380787) (not b_next!34229) (not b!1380765) (not b_next!34215) (not d!394375) (not d!394277) (not b!1380531) (not b!1380219) (not d!394075) (not b!1380116) (not d!394417) (not d!394157) (not b!1379855) (not b!1380460) (not b!1380651) (not d!394413) (not b!1380830) (not b!1380328) (not b!1380713) (not d!394081) (not bm!92468) (not b!1380017) (not b!1380756) (not b!1380038) (not d!394149) (not b!1380788) (not d!394253) (not b!1380634) (not b!1380499) (not b!1380718) (not d!394053) (not d!394173) (not b!1380768) (not b!1380113) (not b_next!34231) (not b!1380526) (not b!1380819) (not b!1380757) (not b!1380755) (not b!1380792) (not b!1380786) (not d!394037) (not b!1380422) b_and!92501 (not bm!92428) (not b!1380134) (not b!1380778) (not b!1380621) b_and!92439 (not b!1380332) (not b!1380785) (not b!1380319) (not d!394351) (not b!1380822) (not bm!92478) (not b_lambda!42487) (not bm!92477) (not b!1380538) (not d!394201) (not b_lambda!42481) (not b!1380102) (not b!1380321) (not b!1379954) (not d!394447) (not b!1380568) (not d!394421) (not b!1380565) (not b!1380406))
(check-sat b_and!92443 (not b_next!34227) b_and!92495 b_and!92503 b_and!92493 b_and!92435 b_and!92497 (not b_next!34229) (not b_next!34215) b_and!92439 b_and!92505 (not b_next!34233) b_and!92499 (not b_next!34211) (not b_next!34221) (not b_next!34219) (not b_next!34213) (not b_next!34217) (not b_next!34231) b_and!92501)
