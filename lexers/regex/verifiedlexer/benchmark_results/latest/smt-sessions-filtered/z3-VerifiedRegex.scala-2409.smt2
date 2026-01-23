; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125118 () Bool)

(assert start!125118)

(declare-fun b!1381087 () Bool)

(declare-fun b_free!33547 () Bool)

(declare-fun b_next!34251 () Bool)

(assert (=> b!1381087 (= b_free!33547 (not b_next!34251))))

(declare-fun tp!395779 () Bool)

(declare-fun b_and!92523 () Bool)

(assert (=> b!1381087 (= tp!395779 b_and!92523)))

(declare-fun b_free!33549 () Bool)

(declare-fun b_next!34253 () Bool)

(assert (=> b!1381087 (= b_free!33549 (not b_next!34253))))

(declare-fun tp!395784 () Bool)

(declare-fun b_and!92525 () Bool)

(assert (=> b!1381087 (= tp!395784 b_and!92525)))

(declare-fun b!1381091 () Bool)

(declare-fun b_free!33551 () Bool)

(declare-fun b_next!34255 () Bool)

(assert (=> b!1381091 (= b_free!33551 (not b_next!34255))))

(declare-fun tp!395783 () Bool)

(declare-fun b_and!92527 () Bool)

(assert (=> b!1381091 (= tp!395783 b_and!92527)))

(declare-fun b_free!33553 () Bool)

(declare-fun b_next!34257 () Bool)

(assert (=> b!1381091 (= b_free!33553 (not b_next!34257))))

(declare-fun tp!395788 () Bool)

(declare-fun b_and!92529 () Bool)

(assert (=> b!1381091 (= tp!395788 b_and!92529)))

(declare-fun b!1381080 () Bool)

(declare-fun b_free!33555 () Bool)

(declare-fun b_next!34259 () Bool)

(assert (=> b!1381080 (= b_free!33555 (not b_next!34259))))

(declare-fun tp!395789 () Bool)

(declare-fun b_and!92531 () Bool)

(assert (=> b!1381080 (= tp!395789 b_and!92531)))

(declare-fun b_free!33557 () Bool)

(declare-fun b_next!34261 () Bool)

(assert (=> b!1381080 (= b_free!33557 (not b_next!34261))))

(declare-fun tp!395782 () Bool)

(declare-fun b_and!92533 () Bool)

(assert (=> b!1381080 (= tp!395782 b_and!92533)))

(declare-fun b!1381102 () Bool)

(assert (=> b!1381102 true))

(assert (=> b!1381102 true))

(declare-fun e!882445 () Bool)

(declare-fun tp!395780 () Bool)

(declare-fun e!882461 () Bool)

(declare-fun b!1381079 () Bool)

(declare-datatypes ((List!14079 0))(
  ( (Nil!14013) (Cons!14013 (h!19414 (_ BitVec 16)) (t!121998 List!14079)) )
))
(declare-datatypes ((TokenValue!2517 0))(
  ( (FloatLiteralValue!5034 (text!18064 List!14079)) (TokenValueExt!2516 (__x!8863 Int)) (Broken!12585 (value!78776 List!14079)) (Object!2582) (End!2517) (Def!2517) (Underscore!2517) (Match!2517) (Else!2517) (Error!2517) (Case!2517) (If!2517) (Extends!2517) (Abstract!2517) (Class!2517) (Val!2517) (DelimiterValue!5034 (del!2577 List!14079)) (KeywordValue!2523 (value!78777 List!14079)) (CommentValue!5034 (value!78778 List!14079)) (WhitespaceValue!5034 (value!78779 List!14079)) (IndentationValue!2517 (value!78780 List!14079)) (String!16820) (Int32!2517) (Broken!12586 (value!78781 List!14079)) (Boolean!2518) (Unit!20272) (OperatorValue!2520 (op!2577 List!14079)) (IdentifierValue!5034 (value!78782 List!14079)) (IdentifierValue!5035 (value!78783 List!14079)) (WhitespaceValue!5035 (value!78784 List!14079)) (True!5034) (False!5034) (Broken!12587 (value!78785 List!14079)) (Broken!12588 (value!78786 List!14079)) (True!5035) (RightBrace!2517) (RightBracket!2517) (Colon!2517) (Null!2517) (Comma!2517) (LeftBracket!2517) (False!5035) (LeftBrace!2517) (ImaginaryLiteralValue!2517 (text!18065 List!14079)) (StringLiteralValue!7551 (value!78787 List!14079)) (EOFValue!2517 (value!78788 List!14079)) (IdentValue!2517 (value!78789 List!14079)) (DelimiterValue!5035 (value!78790 List!14079)) (DedentValue!2517 (value!78791 List!14079)) (NewLineValue!2517 (value!78792 List!14079)) (IntegerValue!7551 (value!78793 (_ BitVec 32)) (text!18066 List!14079)) (IntegerValue!7552 (value!78794 Int) (text!18067 List!14079)) (Times!2517) (Or!2517) (Equal!2517) (Minus!2517) (Broken!12589 (value!78795 List!14079)) (And!2517) (Div!2517) (LessEqual!2517) (Mod!2517) (Concat!6258) (Not!2517) (Plus!2517) (SpaceValue!2517 (value!78796 List!14079)) (IntegerValue!7553 (value!78797 Int) (text!18068 List!14079)) (StringLiteralValue!7552 (text!18069 List!14079)) (FloatLiteralValue!5035 (text!18070 List!14079)) (BytesLiteralValue!2517 (value!78798 List!14079)) (CommentValue!5035 (value!78799 List!14079)) (StringLiteralValue!7553 (value!78800 List!14079)) (ErrorTokenValue!2517 (msg!2578 List!14079)) )
))
(declare-datatypes ((C!7772 0))(
  ( (C!7773 (val!4446 Int)) )
))
(declare-datatypes ((List!14080 0))(
  ( (Nil!14014) (Cons!14014 (h!19415 C!7772) (t!121999 List!14080)) )
))
(declare-datatypes ((IArray!9235 0))(
  ( (IArray!9236 (innerList!4675 List!14080)) )
))
(declare-datatypes ((String!16821 0))(
  ( (String!16822 (value!78801 String)) )
))
(declare-datatypes ((Conc!4615 0))(
  ( (Node!4615 (left!11982 Conc!4615) (right!12312 Conc!4615) (csize!9460 Int) (cheight!4826 Int)) (Leaf!7025 (xs!7342 IArray!9235) (csize!9461 Int)) (Empty!4615) )
))
(declare-datatypes ((BalanceConc!9170 0))(
  ( (BalanceConc!9171 (c!227289 Conc!4615)) )
))
(declare-datatypes ((Regex!3741 0))(
  ( (ElementMatch!3741 (c!227290 C!7772)) (Concat!6259 (regOne!7994 Regex!3741) (regTwo!7994 Regex!3741)) (EmptyExpr!3741) (Star!3741 (reg!4070 Regex!3741)) (EmptyLang!3741) (Union!3741 (regOne!7995 Regex!3741) (regTwo!7995 Regex!3741)) )
))
(declare-datatypes ((TokenValueInjection!4694 0))(
  ( (TokenValueInjection!4695 (toValue!3710 Int) (toChars!3569 Int)) )
))
(declare-datatypes ((Rule!4654 0))(
  ( (Rule!4655 (regex!2427 Regex!3741) (tag!2689 String!16821) (isSeparator!2427 Bool) (transformation!2427 TokenValueInjection!4694)) )
))
(declare-datatypes ((Token!4516 0))(
  ( (Token!4517 (value!78802 TokenValue!2517) (rule!4186 Rule!4654) (size!11491 Int) (originalCharacters!3289 List!14080)) )
))
(declare-fun t2!34 () Token!4516)

(declare-fun inv!21 (TokenValue!2517) Bool)

(assert (=> b!1381079 (= e!882461 (and (inv!21 (value!78802 t2!34)) e!882445 tp!395780))))

(declare-fun e!882451 () Bool)

(assert (=> b!1381080 (= e!882451 (and tp!395789 tp!395782))))

(declare-fun b!1381081 () Bool)

(declare-fun e!882463 () Bool)

(declare-fun e!882462 () Bool)

(assert (=> b!1381081 (= e!882463 e!882462)))

(declare-fun res!622670 () Bool)

(assert (=> b!1381081 (=> (not res!622670) (not e!882462))))

(declare-fun lt!459175 () Regex!3741)

(declare-fun lt!459172 () List!14080)

(declare-fun prefixMatch!250 (Regex!3741 List!14080) Bool)

(assert (=> b!1381081 (= res!622670 (prefixMatch!250 lt!459175 lt!459172))))

(declare-datatypes ((LexerInterface!2122 0))(
  ( (LexerInterfaceExt!2119 (__x!8864 Int)) (Lexer!2120) )
))
(declare-fun thiss!19762 () LexerInterface!2122)

(declare-datatypes ((List!14081 0))(
  ( (Nil!14015) (Cons!14015 (h!19416 Rule!4654) (t!122000 List!14081)) )
))
(declare-fun rules!2550 () List!14081)

(declare-fun rulesRegex!310 (LexerInterface!2122 List!14081) Regex!3741)

(assert (=> b!1381081 (= lt!459175 (rulesRegex!310 thiss!19762 rules!2550))))

(declare-fun lt!459169 () List!14080)

(declare-fun lt!459167 () C!7772)

(declare-fun ++!3632 (List!14080 List!14080) List!14080)

(assert (=> b!1381081 (= lt!459172 (++!3632 lt!459169 (Cons!14014 lt!459167 Nil!14014)))))

(declare-fun lt!459176 () BalanceConc!9170)

(declare-fun apply!3481 (BalanceConc!9170 Int) C!7772)

(assert (=> b!1381081 (= lt!459167 (apply!3481 lt!459176 0))))

(declare-fun lt!459170 () BalanceConc!9170)

(declare-fun list!5420 (BalanceConc!9170) List!14080)

(assert (=> b!1381081 (= lt!459169 (list!5420 lt!459170))))

(declare-fun t1!34 () Token!4516)

(declare-fun charsOf!1399 (Token!4516) BalanceConc!9170)

(assert (=> b!1381081 (= lt!459170 (charsOf!1399 t1!34))))

(declare-fun b!1381082 () Bool)

(declare-fun res!622681 () Bool)

(declare-fun e!882459 () Bool)

(assert (=> b!1381082 (=> (not res!622681) (not e!882459))))

(declare-fun rulesProduceIndividualToken!1091 (LexerInterface!2122 List!14081 Token!4516) Bool)

(assert (=> b!1381082 (= res!622681 (rulesProduceIndividualToken!1091 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1381083 () Bool)

(declare-fun e!882454 () Bool)

(declare-fun e!882444 () Bool)

(assert (=> b!1381083 (= e!882454 e!882444)))

(declare-fun res!622673 () Bool)

(assert (=> b!1381083 (=> res!622673 e!882444)))

(declare-fun lt!459168 () C!7772)

(declare-fun contains!2663 (List!14080 C!7772) Bool)

(assert (=> b!1381083 (= res!622673 (not (contains!2663 lt!459172 lt!459168)))))

(assert (=> b!1381083 (= lt!459168 (apply!3481 lt!459170 0))))

(declare-fun b!1381084 () Bool)

(declare-fun e!882448 () Bool)

(assert (=> b!1381084 (= e!882448 e!882454)))

(declare-fun res!622669 () Bool)

(assert (=> b!1381084 (=> res!622669 e!882454)))

(declare-fun lt!459173 () List!14080)

(declare-fun getSuffix!587 (List!14080 List!14080) List!14080)

(assert (=> b!1381084 (= res!622669 (not (= lt!459173 (++!3632 lt!459172 (getSuffix!587 lt!459173 lt!459172)))))))

(declare-fun lambda!59205 () Int)

(declare-fun pickWitness!194 (Int) List!14080)

(assert (=> b!1381084 (= lt!459173 (pickWitness!194 lambda!59205))))

(declare-fun b!1381085 () Bool)

(declare-fun res!622677 () Bool)

(assert (=> b!1381085 (=> res!622677 e!882444)))

(assert (=> b!1381085 (= res!622677 (not (contains!2663 lt!459172 lt!459167)))))

(declare-fun e!882453 () Bool)

(declare-fun tp!395790 () Bool)

(declare-fun b!1381086 () Bool)

(declare-fun inv!18355 (String!16821) Bool)

(declare-fun inv!18358 (TokenValueInjection!4694) Bool)

(assert (=> b!1381086 (= e!882445 (and tp!395790 (inv!18355 (tag!2689 (rule!4186 t2!34))) (inv!18358 (transformation!2427 (rule!4186 t2!34))) e!882453))))

(assert (=> b!1381087 (= e!882453 (and tp!395779 tp!395784))))

(declare-fun res!622680 () Bool)

(assert (=> start!125118 (=> (not res!622680) (not e!882459))))

(get-info :version)

(assert (=> start!125118 (= res!622680 ((_ is Lexer!2120) thiss!19762))))

(assert (=> start!125118 e!882459))

(assert (=> start!125118 true))

(declare-fun e!882452 () Bool)

(assert (=> start!125118 e!882452))

(declare-fun e!882460 () Bool)

(declare-fun inv!18359 (Token!4516) Bool)

(assert (=> start!125118 (and (inv!18359 t1!34) e!882460)))

(assert (=> start!125118 (and (inv!18359 t2!34) e!882461)))

(declare-fun b!1381088 () Bool)

(declare-fun e!882455 () Bool)

(declare-datatypes ((List!14082 0))(
  ( (Nil!14016) (Cons!14016 (h!19417 Regex!3741) (t!122001 List!14082)) )
))
(declare-fun lt!459171 () List!14082)

(declare-fun generalisedUnion!143 (List!14082) Regex!3741)

(assert (=> b!1381088 (= e!882455 (= lt!459175 (generalisedUnion!143 lt!459171)))))

(declare-fun b!1381089 () Bool)

(declare-fun e!882449 () Bool)

(declare-fun e!882457 () Bool)

(declare-fun tp!395785 () Bool)

(assert (=> b!1381089 (= e!882457 (and tp!395785 (inv!18355 (tag!2689 (rule!4186 t1!34))) (inv!18358 (transformation!2427 (rule!4186 t1!34))) e!882449))))

(declare-fun b!1381090 () Bool)

(declare-fun res!622671 () Bool)

(assert (=> b!1381090 (=> (not res!622671) (not e!882459))))

(assert (=> b!1381090 (= res!622671 (rulesProduceIndividualToken!1091 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1381091 (= e!882449 (and tp!395783 tp!395788))))

(declare-fun b!1381092 () Bool)

(declare-fun res!622676 () Bool)

(assert (=> b!1381092 (=> (not res!622676) (not e!882459))))

(declare-fun rulesInvariant!1992 (LexerInterface!2122 List!14081) Bool)

(assert (=> b!1381092 (= res!622676 (rulesInvariant!1992 thiss!19762 rules!2550))))

(declare-fun b!1381093 () Bool)

(declare-fun res!622666 () Bool)

(assert (=> b!1381093 (=> (not res!622666) (not e!882463))))

(declare-fun separableTokensPredicate!405 (LexerInterface!2122 Token!4516 Token!4516 List!14081) Bool)

(assert (=> b!1381093 (= res!622666 (not (separableTokensPredicate!405 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1381094 () Bool)

(assert (=> b!1381094 (= e!882444 e!882455)))

(declare-fun res!622675 () Bool)

(assert (=> b!1381094 (=> res!622675 e!882455)))

(declare-fun lambda!59207 () Int)

(declare-fun forall!3411 (List!14082 Int) Bool)

(assert (=> b!1381094 (= res!622675 (not (forall!3411 lt!459171 lambda!59207)))))

(declare-fun lambda!59206 () Int)

(declare-fun map!3101 (List!14081 Int) List!14082)

(assert (=> b!1381094 (= lt!459171 (map!3101 rules!2550 lambda!59206))))

(declare-fun b!1381095 () Bool)

(declare-fun res!622667 () Bool)

(assert (=> b!1381095 (=> (not res!622667) (not e!882459))))

(declare-fun isEmpty!8457 (List!14081) Bool)

(assert (=> b!1381095 (= res!622667 (not (isEmpty!8457 rules!2550)))))

(declare-fun e!882446 () Bool)

(declare-fun b!1381096 () Bool)

(declare-fun tp!395786 () Bool)

(assert (=> b!1381096 (= e!882446 (and tp!395786 (inv!18355 (tag!2689 (h!19416 rules!2550))) (inv!18358 (transformation!2427 (h!19416 rules!2550))) e!882451))))

(declare-fun b!1381097 () Bool)

(declare-fun res!622672 () Bool)

(assert (=> b!1381097 (=> (not res!622672) (not e!882459))))

(assert (=> b!1381097 (= res!622672 (not (= (isSeparator!2427 (rule!4186 t1!34)) (isSeparator!2427 (rule!4186 t2!34)))))))

(declare-fun b!1381098 () Bool)

(assert (=> b!1381098 (= e!882459 e!882463)))

(declare-fun res!622665 () Bool)

(assert (=> b!1381098 (=> (not res!622665) (not e!882463))))

(declare-fun size!11492 (BalanceConc!9170) Int)

(assert (=> b!1381098 (= res!622665 (> (size!11492 lt!459176) 0))))

(assert (=> b!1381098 (= lt!459176 (charsOf!1399 t2!34))))

(declare-fun b!1381099 () Bool)

(declare-fun res!622664 () Bool)

(assert (=> b!1381099 (=> res!622664 e!882444)))

(assert (=> b!1381099 (= res!622664 (not (contains!2663 lt!459173 lt!459168)))))

(declare-fun b!1381100 () Bool)

(declare-fun tp!395787 () Bool)

(assert (=> b!1381100 (= e!882452 (and e!882446 tp!395787))))

(declare-fun b!1381101 () Bool)

(declare-fun res!622668 () Bool)

(assert (=> b!1381101 (=> res!622668 e!882444)))

(declare-fun matchR!1732 (Regex!3741 List!14080) Bool)

(assert (=> b!1381101 (= res!622668 (not (matchR!1732 lt!459175 lt!459173)))))

(assert (=> b!1381102 (= e!882462 (not e!882448))))

(declare-fun res!622679 () Bool)

(assert (=> b!1381102 (=> res!622679 e!882448)))

(declare-fun Exists!891 (Int) Bool)

(assert (=> b!1381102 (= res!622679 (not (Exists!891 lambda!59205)))))

(assert (=> b!1381102 (Exists!891 lambda!59205)))

(declare-datatypes ((Unit!20273 0))(
  ( (Unit!20274) )
))
(declare-fun lt!459174 () Unit!20273)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!209 (Regex!3741 List!14080) Unit!20273)

(assert (=> b!1381102 (= lt!459174 (lemmaPrefixMatchThenExistsStringThatMatches!209 lt!459175 lt!459172))))

(declare-fun b!1381103 () Bool)

(declare-fun tp!395781 () Bool)

(assert (=> b!1381103 (= e!882460 (and (inv!21 (value!78802 t1!34)) e!882457 tp!395781))))

(declare-fun b!1381104 () Bool)

(declare-fun res!622674 () Bool)

(assert (=> b!1381104 (=> res!622674 e!882444)))

(assert (=> b!1381104 (= res!622674 (not (contains!2663 lt!459173 lt!459167)))))

(declare-fun b!1381105 () Bool)

(declare-fun res!622678 () Bool)

(assert (=> b!1381105 (=> (not res!622678) (not e!882463))))

(declare-fun sepAndNonSepRulesDisjointChars!800 (List!14081 List!14081) Bool)

(assert (=> b!1381105 (= res!622678 (sepAndNonSepRulesDisjointChars!800 rules!2550 rules!2550))))

(assert (= (and start!125118 res!622680) b!1381095))

(assert (= (and b!1381095 res!622667) b!1381092))

(assert (= (and b!1381092 res!622676) b!1381090))

(assert (= (and b!1381090 res!622671) b!1381082))

(assert (= (and b!1381082 res!622681) b!1381097))

(assert (= (and b!1381097 res!622672) b!1381098))

(assert (= (and b!1381098 res!622665) b!1381105))

(assert (= (and b!1381105 res!622678) b!1381093))

(assert (= (and b!1381093 res!622666) b!1381081))

(assert (= (and b!1381081 res!622670) b!1381102))

(assert (= (and b!1381102 (not res!622679)) b!1381084))

(assert (= (and b!1381084 (not res!622669)) b!1381083))

(assert (= (and b!1381083 (not res!622673)) b!1381099))

(assert (= (and b!1381099 (not res!622664)) b!1381085))

(assert (= (and b!1381085 (not res!622677)) b!1381104))

(assert (= (and b!1381104 (not res!622674)) b!1381101))

(assert (= (and b!1381101 (not res!622668)) b!1381094))

(assert (= (and b!1381094 (not res!622675)) b!1381088))

(assert (= b!1381096 b!1381080))

(assert (= b!1381100 b!1381096))

(assert (= (and start!125118 ((_ is Cons!14015) rules!2550)) b!1381100))

(assert (= b!1381089 b!1381091))

(assert (= b!1381103 b!1381089))

(assert (= start!125118 b!1381103))

(assert (= b!1381086 b!1381087))

(assert (= b!1381079 b!1381086))

(assert (= start!125118 b!1381079))

(declare-fun m!1553907 () Bool)

(assert (=> b!1381095 m!1553907))

(declare-fun m!1553909 () Bool)

(assert (=> b!1381079 m!1553909))

(declare-fun m!1553911 () Bool)

(assert (=> b!1381093 m!1553911))

(declare-fun m!1553913 () Bool)

(assert (=> b!1381099 m!1553913))

(declare-fun m!1553915 () Bool)

(assert (=> b!1381101 m!1553915))

(declare-fun m!1553917 () Bool)

(assert (=> b!1381086 m!1553917))

(declare-fun m!1553919 () Bool)

(assert (=> b!1381086 m!1553919))

(declare-fun m!1553921 () Bool)

(assert (=> b!1381092 m!1553921))

(declare-fun m!1553923 () Bool)

(assert (=> b!1381088 m!1553923))

(declare-fun m!1553925 () Bool)

(assert (=> b!1381104 m!1553925))

(declare-fun m!1553927 () Bool)

(assert (=> b!1381084 m!1553927))

(assert (=> b!1381084 m!1553927))

(declare-fun m!1553929 () Bool)

(assert (=> b!1381084 m!1553929))

(declare-fun m!1553931 () Bool)

(assert (=> b!1381084 m!1553931))

(declare-fun m!1553933 () Bool)

(assert (=> b!1381096 m!1553933))

(declare-fun m!1553935 () Bool)

(assert (=> b!1381096 m!1553935))

(declare-fun m!1553937 () Bool)

(assert (=> b!1381081 m!1553937))

(declare-fun m!1553939 () Bool)

(assert (=> b!1381081 m!1553939))

(declare-fun m!1553941 () Bool)

(assert (=> b!1381081 m!1553941))

(declare-fun m!1553943 () Bool)

(assert (=> b!1381081 m!1553943))

(declare-fun m!1553945 () Bool)

(assert (=> b!1381081 m!1553945))

(declare-fun m!1553947 () Bool)

(assert (=> b!1381081 m!1553947))

(declare-fun m!1553949 () Bool)

(assert (=> b!1381082 m!1553949))

(declare-fun m!1553951 () Bool)

(assert (=> b!1381085 m!1553951))

(declare-fun m!1553953 () Bool)

(assert (=> start!125118 m!1553953))

(declare-fun m!1553955 () Bool)

(assert (=> start!125118 m!1553955))

(declare-fun m!1553957 () Bool)

(assert (=> b!1381089 m!1553957))

(declare-fun m!1553959 () Bool)

(assert (=> b!1381089 m!1553959))

(declare-fun m!1553961 () Bool)

(assert (=> b!1381103 m!1553961))

(declare-fun m!1553963 () Bool)

(assert (=> b!1381098 m!1553963))

(declare-fun m!1553965 () Bool)

(assert (=> b!1381098 m!1553965))

(declare-fun m!1553967 () Bool)

(assert (=> b!1381105 m!1553967))

(declare-fun m!1553969 () Bool)

(assert (=> b!1381094 m!1553969))

(declare-fun m!1553971 () Bool)

(assert (=> b!1381094 m!1553971))

(declare-fun m!1553973 () Bool)

(assert (=> b!1381102 m!1553973))

(assert (=> b!1381102 m!1553973))

(declare-fun m!1553975 () Bool)

(assert (=> b!1381102 m!1553975))

(declare-fun m!1553977 () Bool)

(assert (=> b!1381083 m!1553977))

(declare-fun m!1553979 () Bool)

(assert (=> b!1381083 m!1553979))

(declare-fun m!1553981 () Bool)

(assert (=> b!1381090 m!1553981))

(check-sat (not b_next!34261) (not b!1381101) (not b!1381103) (not b!1381102) b_and!92531 b_and!92527 (not b!1381098) (not b!1381089) (not b_next!34251) (not b!1381088) b_and!92523 (not b_next!34255) (not b!1381090) (not b!1381093) (not b_next!34257) (not b_next!34259) (not b!1381105) (not b!1381096) (not b!1381084) (not b!1381086) (not b!1381104) (not b!1381092) (not b!1381085) b_and!92529 (not start!125118) (not b!1381079) (not b!1381094) (not b!1381083) b_and!92525 b_and!92533 (not b!1381081) (not b!1381095) (not b!1381099) (not b!1381100) (not b!1381082) (not b_next!34253))
(check-sat (not b_next!34261) b_and!92529 b_and!92525 b_and!92531 b_and!92527 b_and!92533 (not b_next!34251) b_and!92523 (not b_next!34253) (not b_next!34255) (not b_next!34257) (not b_next!34259))
(get-model)

(declare-fun b!1381120 () Bool)

(declare-fun res!622690 () Bool)

(declare-fun e!882469 () Bool)

(assert (=> b!1381120 (=> (not res!622690) (not e!882469))))

(declare-fun lt!459179 () List!14080)

(declare-fun size!11493 (List!14080) Int)

(assert (=> b!1381120 (= res!622690 (= (size!11493 lt!459179) (+ (size!11493 lt!459172) (size!11493 (getSuffix!587 lt!459173 lt!459172)))))))

(declare-fun b!1381118 () Bool)

(declare-fun e!882470 () List!14080)

(assert (=> b!1381118 (= e!882470 (getSuffix!587 lt!459173 lt!459172))))

(declare-fun b!1381121 () Bool)

(assert (=> b!1381121 (= e!882469 (or (not (= (getSuffix!587 lt!459173 lt!459172) Nil!14014)) (= lt!459179 lt!459172)))))

(declare-fun b!1381119 () Bool)

(assert (=> b!1381119 (= e!882470 (Cons!14014 (h!19415 lt!459172) (++!3632 (t!121999 lt!459172) (getSuffix!587 lt!459173 lt!459172))))))

(declare-fun d!394486 () Bool)

(assert (=> d!394486 e!882469))

(declare-fun res!622691 () Bool)

(assert (=> d!394486 (=> (not res!622691) (not e!882469))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2044 (List!14080) (InoxSet C!7772))

(assert (=> d!394486 (= res!622691 (= (content!2044 lt!459179) ((_ map or) (content!2044 lt!459172) (content!2044 (getSuffix!587 lt!459173 lt!459172)))))))

(assert (=> d!394486 (= lt!459179 e!882470)))

(declare-fun c!227293 () Bool)

(assert (=> d!394486 (= c!227293 ((_ is Nil!14014) lt!459172))))

(assert (=> d!394486 (= (++!3632 lt!459172 (getSuffix!587 lt!459173 lt!459172)) lt!459179)))

(assert (= (and d!394486 c!227293) b!1381118))

(assert (= (and d!394486 (not c!227293)) b!1381119))

(assert (= (and d!394486 res!622691) b!1381120))

(assert (= (and b!1381120 res!622690) b!1381121))

(declare-fun m!1553983 () Bool)

(assert (=> b!1381120 m!1553983))

(declare-fun m!1553985 () Bool)

(assert (=> b!1381120 m!1553985))

(assert (=> b!1381120 m!1553927))

(declare-fun m!1553987 () Bool)

(assert (=> b!1381120 m!1553987))

(assert (=> b!1381119 m!1553927))

(declare-fun m!1553989 () Bool)

(assert (=> b!1381119 m!1553989))

(declare-fun m!1553991 () Bool)

(assert (=> d!394486 m!1553991))

(declare-fun m!1553993 () Bool)

(assert (=> d!394486 m!1553993))

(assert (=> d!394486 m!1553927))

(declare-fun m!1553995 () Bool)

(assert (=> d!394486 m!1553995))

(assert (=> b!1381084 d!394486))

(declare-fun d!394488 () Bool)

(declare-fun lt!459182 () List!14080)

(assert (=> d!394488 (= (++!3632 lt!459172 lt!459182) lt!459173)))

(declare-fun e!882473 () List!14080)

(assert (=> d!394488 (= lt!459182 e!882473)))

(declare-fun c!227296 () Bool)

(assert (=> d!394488 (= c!227296 ((_ is Cons!14014) lt!459172))))

(assert (=> d!394488 (>= (size!11493 lt!459173) (size!11493 lt!459172))))

(assert (=> d!394488 (= (getSuffix!587 lt!459173 lt!459172) lt!459182)))

(declare-fun b!1381126 () Bool)

(declare-fun tail!2001 (List!14080) List!14080)

(assert (=> b!1381126 (= e!882473 (getSuffix!587 (tail!2001 lt!459173) (t!121999 lt!459172)))))

(declare-fun b!1381127 () Bool)

(assert (=> b!1381127 (= e!882473 lt!459173)))

(assert (= (and d!394488 c!227296) b!1381126))

(assert (= (and d!394488 (not c!227296)) b!1381127))

(declare-fun m!1553997 () Bool)

(assert (=> d!394488 m!1553997))

(declare-fun m!1553999 () Bool)

(assert (=> d!394488 m!1553999))

(assert (=> d!394488 m!1553985))

(declare-fun m!1554001 () Bool)

(assert (=> b!1381126 m!1554001))

(assert (=> b!1381126 m!1554001))

(declare-fun m!1554003 () Bool)

(assert (=> b!1381126 m!1554003))

(assert (=> b!1381084 d!394488))

(declare-fun d!394490 () Bool)

(declare-fun lt!459185 () List!14080)

(declare-fun dynLambda!6381 (Int List!14080) Bool)

(assert (=> d!394490 (dynLambda!6381 lambda!59205 lt!459185)))

(declare-fun choose!8470 (Int) List!14080)

(assert (=> d!394490 (= lt!459185 (choose!8470 lambda!59205))))

(assert (=> d!394490 (Exists!891 lambda!59205)))

(assert (=> d!394490 (= (pickWitness!194 lambda!59205) lt!459185)))

(declare-fun b_lambda!42523 () Bool)

(assert (=> (not b_lambda!42523) (not d!394490)))

(declare-fun bs!336583 () Bool)

(assert (= bs!336583 d!394490))

(declare-fun m!1554005 () Bool)

(assert (=> bs!336583 m!1554005))

(declare-fun m!1554007 () Bool)

(assert (=> bs!336583 m!1554007))

(assert (=> bs!336583 m!1553973))

(assert (=> b!1381084 d!394490))

(declare-fun d!394492 () Bool)

(declare-fun lt!459188 () Bool)

(assert (=> d!394492 (= lt!459188 (select (content!2044 lt!459172) lt!459167))))

(declare-fun e!882478 () Bool)

(assert (=> d!394492 (= lt!459188 e!882478)))

(declare-fun res!622697 () Bool)

(assert (=> d!394492 (=> (not res!622697) (not e!882478))))

(assert (=> d!394492 (= res!622697 ((_ is Cons!14014) lt!459172))))

(assert (=> d!394492 (= (contains!2663 lt!459172 lt!459167) lt!459188)))

(declare-fun b!1381132 () Bool)

(declare-fun e!882479 () Bool)

(assert (=> b!1381132 (= e!882478 e!882479)))

(declare-fun res!622696 () Bool)

(assert (=> b!1381132 (=> res!622696 e!882479)))

(assert (=> b!1381132 (= res!622696 (= (h!19415 lt!459172) lt!459167))))

(declare-fun b!1381133 () Bool)

(assert (=> b!1381133 (= e!882479 (contains!2663 (t!121999 lt!459172) lt!459167))))

(assert (= (and d!394492 res!622697) b!1381132))

(assert (= (and b!1381132 (not res!622696)) b!1381133))

(assert (=> d!394492 m!1553993))

(declare-fun m!1554009 () Bool)

(assert (=> d!394492 m!1554009))

(declare-fun m!1554011 () Bool)

(assert (=> b!1381133 m!1554011))

(assert (=> b!1381085 d!394492))

(declare-fun d!394494 () Bool)

(declare-fun lt!459189 () Bool)

(assert (=> d!394494 (= lt!459189 (select (content!2044 lt!459172) lt!459168))))

(declare-fun e!882480 () Bool)

(assert (=> d!394494 (= lt!459189 e!882480)))

(declare-fun res!622699 () Bool)

(assert (=> d!394494 (=> (not res!622699) (not e!882480))))

(assert (=> d!394494 (= res!622699 ((_ is Cons!14014) lt!459172))))

(assert (=> d!394494 (= (contains!2663 lt!459172 lt!459168) lt!459189)))

(declare-fun b!1381134 () Bool)

(declare-fun e!882481 () Bool)

(assert (=> b!1381134 (= e!882480 e!882481)))

(declare-fun res!622698 () Bool)

(assert (=> b!1381134 (=> res!622698 e!882481)))

(assert (=> b!1381134 (= res!622698 (= (h!19415 lt!459172) lt!459168))))

(declare-fun b!1381135 () Bool)

(assert (=> b!1381135 (= e!882481 (contains!2663 (t!121999 lt!459172) lt!459168))))

(assert (= (and d!394494 res!622699) b!1381134))

(assert (= (and b!1381134 (not res!622698)) b!1381135))

(assert (=> d!394494 m!1553993))

(declare-fun m!1554013 () Bool)

(assert (=> d!394494 m!1554013))

(declare-fun m!1554015 () Bool)

(assert (=> b!1381135 m!1554015))

(assert (=> b!1381083 d!394494))

(declare-fun d!394496 () Bool)

(declare-fun lt!459192 () C!7772)

(declare-fun apply!3482 (List!14080 Int) C!7772)

(assert (=> d!394496 (= lt!459192 (apply!3482 (list!5420 lt!459170) 0))))

(declare-fun apply!3483 (Conc!4615 Int) C!7772)

(assert (=> d!394496 (= lt!459192 (apply!3483 (c!227289 lt!459170) 0))))

(declare-fun e!882484 () Bool)

(assert (=> d!394496 e!882484))

(declare-fun res!622702 () Bool)

(assert (=> d!394496 (=> (not res!622702) (not e!882484))))

(assert (=> d!394496 (= res!622702 (<= 0 0))))

(assert (=> d!394496 (= (apply!3481 lt!459170 0) lt!459192)))

(declare-fun b!1381138 () Bool)

(assert (=> b!1381138 (= e!882484 (< 0 (size!11492 lt!459170)))))

(assert (= (and d!394496 res!622702) b!1381138))

(assert (=> d!394496 m!1553947))

(assert (=> d!394496 m!1553947))

(declare-fun m!1554017 () Bool)

(assert (=> d!394496 m!1554017))

(declare-fun m!1554019 () Bool)

(assert (=> d!394496 m!1554019))

(declare-fun m!1554021 () Bool)

(assert (=> b!1381138 m!1554021))

(assert (=> b!1381083 d!394496))

(declare-fun d!394498 () Bool)

(declare-fun res!622707 () Bool)

(declare-fun e!882487 () Bool)

(assert (=> d!394498 (=> (not res!622707) (not e!882487))))

(declare-fun isEmpty!8458 (List!14080) Bool)

(assert (=> d!394498 (= res!622707 (not (isEmpty!8458 (originalCharacters!3289 t1!34))))))

(assert (=> d!394498 (= (inv!18359 t1!34) e!882487)))

(declare-fun b!1381143 () Bool)

(declare-fun res!622708 () Bool)

(assert (=> b!1381143 (=> (not res!622708) (not e!882487))))

(declare-fun dynLambda!6382 (Int TokenValue!2517) BalanceConc!9170)

(assert (=> b!1381143 (= res!622708 (= (originalCharacters!3289 t1!34) (list!5420 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (value!78802 t1!34)))))))

(declare-fun b!1381144 () Bool)

(assert (=> b!1381144 (= e!882487 (= (size!11491 t1!34) (size!11493 (originalCharacters!3289 t1!34))))))

(assert (= (and d!394498 res!622707) b!1381143))

(assert (= (and b!1381143 res!622708) b!1381144))

(declare-fun b_lambda!42525 () Bool)

(assert (=> (not b_lambda!42525) (not b!1381143)))

(declare-fun t!122003 () Bool)

(declare-fun tb!72521 () Bool)

(assert (=> (and b!1381087 (= (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toChars!3569 (transformation!2427 (rule!4186 t1!34)))) t!122003) tb!72521))

(declare-fun b!1381149 () Bool)

(declare-fun e!882490 () Bool)

(declare-fun tp!395793 () Bool)

(declare-fun inv!18360 (Conc!4615) Bool)

(assert (=> b!1381149 (= e!882490 (and (inv!18360 (c!227289 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (value!78802 t1!34)))) tp!395793))))

(declare-fun result!88078 () Bool)

(declare-fun inv!18361 (BalanceConc!9170) Bool)

(assert (=> tb!72521 (= result!88078 (and (inv!18361 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (value!78802 t1!34))) e!882490))))

(assert (= tb!72521 b!1381149))

(declare-fun m!1554023 () Bool)

(assert (=> b!1381149 m!1554023))

(declare-fun m!1554025 () Bool)

(assert (=> tb!72521 m!1554025))

(assert (=> b!1381143 t!122003))

(declare-fun b_and!92535 () Bool)

(assert (= b_and!92525 (and (=> t!122003 result!88078) b_and!92535)))

(declare-fun t!122005 () Bool)

(declare-fun tb!72523 () Bool)

(assert (=> (and b!1381091 (= (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toChars!3569 (transformation!2427 (rule!4186 t1!34)))) t!122005) tb!72523))

(declare-fun result!88082 () Bool)

(assert (= result!88082 result!88078))

(assert (=> b!1381143 t!122005))

(declare-fun b_and!92537 () Bool)

(assert (= b_and!92529 (and (=> t!122005 result!88082) b_and!92537)))

(declare-fun t!122007 () Bool)

(declare-fun tb!72525 () Bool)

(assert (=> (and b!1381080 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t1!34)))) t!122007) tb!72525))

(declare-fun result!88084 () Bool)

(assert (= result!88084 result!88078))

(assert (=> b!1381143 t!122007))

(declare-fun b_and!92539 () Bool)

(assert (= b_and!92533 (and (=> t!122007 result!88084) b_and!92539)))

(declare-fun m!1554027 () Bool)

(assert (=> d!394498 m!1554027))

(declare-fun m!1554029 () Bool)

(assert (=> b!1381143 m!1554029))

(assert (=> b!1381143 m!1554029))

(declare-fun m!1554031 () Bool)

(assert (=> b!1381143 m!1554031))

(declare-fun m!1554033 () Bool)

(assert (=> b!1381144 m!1554033))

(assert (=> start!125118 d!394498))

(declare-fun d!394500 () Bool)

(declare-fun res!622709 () Bool)

(declare-fun e!882491 () Bool)

(assert (=> d!394500 (=> (not res!622709) (not e!882491))))

(assert (=> d!394500 (= res!622709 (not (isEmpty!8458 (originalCharacters!3289 t2!34))))))

(assert (=> d!394500 (= (inv!18359 t2!34) e!882491)))

(declare-fun b!1381150 () Bool)

(declare-fun res!622710 () Bool)

(assert (=> b!1381150 (=> (not res!622710) (not e!882491))))

(assert (=> b!1381150 (= res!622710 (= (originalCharacters!3289 t2!34) (list!5420 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (value!78802 t2!34)))))))

(declare-fun b!1381151 () Bool)

(assert (=> b!1381151 (= e!882491 (= (size!11491 t2!34) (size!11493 (originalCharacters!3289 t2!34))))))

(assert (= (and d!394500 res!622709) b!1381150))

(assert (= (and b!1381150 res!622710) b!1381151))

(declare-fun b_lambda!42527 () Bool)

(assert (=> (not b_lambda!42527) (not b!1381150)))

(declare-fun t!122009 () Bool)

(declare-fun tb!72527 () Bool)

(assert (=> (and b!1381087 (= (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toChars!3569 (transformation!2427 (rule!4186 t2!34)))) t!122009) tb!72527))

(declare-fun b!1381152 () Bool)

(declare-fun e!882492 () Bool)

(declare-fun tp!395794 () Bool)

(assert (=> b!1381152 (= e!882492 (and (inv!18360 (c!227289 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (value!78802 t2!34)))) tp!395794))))

(declare-fun result!88086 () Bool)

(assert (=> tb!72527 (= result!88086 (and (inv!18361 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (value!78802 t2!34))) e!882492))))

(assert (= tb!72527 b!1381152))

(declare-fun m!1554035 () Bool)

(assert (=> b!1381152 m!1554035))

(declare-fun m!1554037 () Bool)

(assert (=> tb!72527 m!1554037))

(assert (=> b!1381150 t!122009))

(declare-fun b_and!92541 () Bool)

(assert (= b_and!92535 (and (=> t!122009 result!88086) b_and!92541)))

(declare-fun tb!72529 () Bool)

(declare-fun t!122011 () Bool)

(assert (=> (and b!1381091 (= (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toChars!3569 (transformation!2427 (rule!4186 t2!34)))) t!122011) tb!72529))

(declare-fun result!88088 () Bool)

(assert (= result!88088 result!88086))

(assert (=> b!1381150 t!122011))

(declare-fun b_and!92543 () Bool)

(assert (= b_and!92537 (and (=> t!122011 result!88088) b_and!92543)))

(declare-fun tb!72531 () Bool)

(declare-fun t!122013 () Bool)

(assert (=> (and b!1381080 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t2!34)))) t!122013) tb!72531))

(declare-fun result!88090 () Bool)

(assert (= result!88090 result!88086))

(assert (=> b!1381150 t!122013))

(declare-fun b_and!92545 () Bool)

(assert (= b_and!92539 (and (=> t!122013 result!88090) b_and!92545)))

(declare-fun m!1554039 () Bool)

(assert (=> d!394500 m!1554039))

(declare-fun m!1554041 () Bool)

(assert (=> b!1381150 m!1554041))

(assert (=> b!1381150 m!1554041))

(declare-fun m!1554043 () Bool)

(assert (=> b!1381150 m!1554043))

(declare-fun m!1554045 () Bool)

(assert (=> b!1381151 m!1554045))

(assert (=> start!125118 d!394500))

(declare-fun d!394502 () Bool)

(declare-fun lt!459193 () Bool)

(assert (=> d!394502 (= lt!459193 (select (content!2044 lt!459173) lt!459167))))

(declare-fun e!882493 () Bool)

(assert (=> d!394502 (= lt!459193 e!882493)))

(declare-fun res!622712 () Bool)

(assert (=> d!394502 (=> (not res!622712) (not e!882493))))

(assert (=> d!394502 (= res!622712 ((_ is Cons!14014) lt!459173))))

(assert (=> d!394502 (= (contains!2663 lt!459173 lt!459167) lt!459193)))

(declare-fun b!1381153 () Bool)

(declare-fun e!882494 () Bool)

(assert (=> b!1381153 (= e!882493 e!882494)))

(declare-fun res!622711 () Bool)

(assert (=> b!1381153 (=> res!622711 e!882494)))

(assert (=> b!1381153 (= res!622711 (= (h!19415 lt!459173) lt!459167))))

(declare-fun b!1381154 () Bool)

(assert (=> b!1381154 (= e!882494 (contains!2663 (t!121999 lt!459173) lt!459167))))

(assert (= (and d!394502 res!622712) b!1381153))

(assert (= (and b!1381153 (not res!622711)) b!1381154))

(declare-fun m!1554047 () Bool)

(assert (=> d!394502 m!1554047))

(declare-fun m!1554049 () Bool)

(assert (=> d!394502 m!1554049))

(declare-fun m!1554051 () Bool)

(assert (=> b!1381154 m!1554051))

(assert (=> b!1381104 d!394502))

(declare-fun d!394504 () Bool)

(declare-fun res!622717 () Bool)

(declare-fun e!882499 () Bool)

(assert (=> d!394504 (=> res!622717 e!882499)))

(assert (=> d!394504 (= res!622717 (not ((_ is Cons!14015) rules!2550)))))

(assert (=> d!394504 (= (sepAndNonSepRulesDisjointChars!800 rules!2550 rules!2550) e!882499)))

(declare-fun b!1381159 () Bool)

(declare-fun e!882500 () Bool)

(assert (=> b!1381159 (= e!882499 e!882500)))

(declare-fun res!622718 () Bool)

(assert (=> b!1381159 (=> (not res!622718) (not e!882500))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!377 (Rule!4654 List!14081) Bool)

(assert (=> b!1381159 (= res!622718 (ruleDisjointCharsFromAllFromOtherType!377 (h!19416 rules!2550) rules!2550))))

(declare-fun b!1381160 () Bool)

(assert (=> b!1381160 (= e!882500 (sepAndNonSepRulesDisjointChars!800 rules!2550 (t!122000 rules!2550)))))

(assert (= (and d!394504 (not res!622717)) b!1381159))

(assert (= (and b!1381159 res!622718) b!1381160))

(declare-fun m!1554053 () Bool)

(assert (=> b!1381159 m!1554053))

(declare-fun m!1554055 () Bool)

(assert (=> b!1381160 m!1554055))

(assert (=> b!1381105 d!394504))

(declare-fun d!394506 () Bool)

(assert (=> d!394506 (= (inv!18355 (tag!2689 (rule!4186 t2!34))) (= (mod (str.len (value!78801 (tag!2689 (rule!4186 t2!34)))) 2) 0))))

(assert (=> b!1381086 d!394506))

(declare-fun d!394508 () Bool)

(declare-fun res!622721 () Bool)

(declare-fun e!882503 () Bool)

(assert (=> d!394508 (=> (not res!622721) (not e!882503))))

(declare-fun semiInverseModEq!935 (Int Int) Bool)

(assert (=> d!394508 (= res!622721 (semiInverseModEq!935 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toValue!3710 (transformation!2427 (rule!4186 t2!34)))))))

(assert (=> d!394508 (= (inv!18358 (transformation!2427 (rule!4186 t2!34))) e!882503)))

(declare-fun b!1381163 () Bool)

(declare-fun equivClasses!894 (Int Int) Bool)

(assert (=> b!1381163 (= e!882503 (equivClasses!894 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toValue!3710 (transformation!2427 (rule!4186 t2!34)))))))

(assert (= (and d!394508 res!622721) b!1381163))

(declare-fun m!1554057 () Bool)

(assert (=> d!394508 m!1554057))

(declare-fun m!1554059 () Bool)

(assert (=> b!1381163 m!1554059))

(assert (=> b!1381086 d!394508))

(declare-fun b!1381174 () Bool)

(declare-fun e!882510 () Bool)

(declare-fun inv!17 (TokenValue!2517) Bool)

(assert (=> b!1381174 (= e!882510 (inv!17 (value!78802 t2!34)))))

(declare-fun d!394510 () Bool)

(declare-fun c!227301 () Bool)

(assert (=> d!394510 (= c!227301 ((_ is IntegerValue!7551) (value!78802 t2!34)))))

(declare-fun e!882512 () Bool)

(assert (=> d!394510 (= (inv!21 (value!78802 t2!34)) e!882512)))

(declare-fun b!1381175 () Bool)

(assert (=> b!1381175 (= e!882512 e!882510)))

(declare-fun c!227302 () Bool)

(assert (=> b!1381175 (= c!227302 ((_ is IntegerValue!7552) (value!78802 t2!34)))))

(declare-fun b!1381176 () Bool)

(declare-fun res!622728 () Bool)

(declare-fun e!882511 () Bool)

(assert (=> b!1381176 (=> res!622728 e!882511)))

(assert (=> b!1381176 (= res!622728 (not ((_ is IntegerValue!7553) (value!78802 t2!34))))))

(assert (=> b!1381176 (= e!882510 e!882511)))

(declare-fun b!1381177 () Bool)

(declare-fun inv!16 (TokenValue!2517) Bool)

(assert (=> b!1381177 (= e!882512 (inv!16 (value!78802 t2!34)))))

(declare-fun b!1381178 () Bool)

(declare-fun inv!15 (TokenValue!2517) Bool)

(assert (=> b!1381178 (= e!882511 (inv!15 (value!78802 t2!34)))))

(assert (= (and d!394510 c!227301) b!1381177))

(assert (= (and d!394510 (not c!227301)) b!1381175))

(assert (= (and b!1381175 c!227302) b!1381174))

(assert (= (and b!1381175 (not c!227302)) b!1381176))

(assert (= (and b!1381176 (not res!622728)) b!1381178))

(declare-fun m!1554061 () Bool)

(assert (=> b!1381174 m!1554061))

(declare-fun m!1554063 () Bool)

(assert (=> b!1381177 m!1554063))

(declare-fun m!1554065 () Bool)

(assert (=> b!1381178 m!1554065))

(assert (=> b!1381079 d!394510))

(declare-fun b!1381219 () Bool)

(declare-fun e!882537 () Bool)

(declare-fun e!882541 () Bool)

(assert (=> b!1381219 (= e!882537 e!882541)))

(declare-fun res!622754 () Bool)

(assert (=> b!1381219 (=> res!622754 e!882541)))

(declare-fun call!92500 () Bool)

(assert (=> b!1381219 (= res!622754 call!92500)))

(declare-fun b!1381220 () Bool)

(declare-fun e!882538 () Bool)

(declare-fun e!882542 () Bool)

(assert (=> b!1381220 (= e!882538 e!882542)))

(declare-fun c!227312 () Bool)

(assert (=> b!1381220 (= c!227312 ((_ is EmptyLang!3741) lt!459175))))

(declare-fun b!1381221 () Bool)

(declare-fun res!622752 () Bool)

(declare-fun e!882539 () Bool)

(assert (=> b!1381221 (=> (not res!622752) (not e!882539))))

(assert (=> b!1381221 (= res!622752 (not call!92500))))

(declare-fun b!1381222 () Bool)

(declare-fun e!882540 () Bool)

(assert (=> b!1381222 (= e!882540 e!882537)))

(declare-fun res!622751 () Bool)

(assert (=> b!1381222 (=> (not res!622751) (not e!882537))))

(declare-fun lt!459199 () Bool)

(assert (=> b!1381222 (= res!622751 (not lt!459199))))

(declare-fun bm!92495 () Bool)

(assert (=> bm!92495 (= call!92500 (isEmpty!8458 lt!459173))))

(declare-fun b!1381223 () Bool)

(declare-fun res!622758 () Bool)

(assert (=> b!1381223 (=> res!622758 e!882541)))

(assert (=> b!1381223 (= res!622758 (not (isEmpty!8458 (tail!2001 lt!459173))))))

(declare-fun d!394512 () Bool)

(assert (=> d!394512 e!882538))

(declare-fun c!227313 () Bool)

(assert (=> d!394512 (= c!227313 ((_ is EmptyExpr!3741) lt!459175))))

(declare-fun e!882536 () Bool)

(assert (=> d!394512 (= lt!459199 e!882536)))

(declare-fun c!227314 () Bool)

(assert (=> d!394512 (= c!227314 (isEmpty!8458 lt!459173))))

(declare-fun validRegex!1626 (Regex!3741) Bool)

(assert (=> d!394512 (validRegex!1626 lt!459175)))

(assert (=> d!394512 (= (matchR!1732 lt!459175 lt!459173) lt!459199)))

(declare-fun b!1381224 () Bool)

(assert (=> b!1381224 (= e!882538 (= lt!459199 call!92500))))

(declare-fun b!1381225 () Bool)

(declare-fun res!622753 () Bool)

(assert (=> b!1381225 (=> (not res!622753) (not e!882539))))

(assert (=> b!1381225 (= res!622753 (isEmpty!8458 (tail!2001 lt!459173)))))

(declare-fun b!1381226 () Bool)

(declare-fun nullable!1206 (Regex!3741) Bool)

(assert (=> b!1381226 (= e!882536 (nullable!1206 lt!459175))))

(declare-fun b!1381227 () Bool)

(assert (=> b!1381227 (= e!882542 (not lt!459199))))

(declare-fun b!1381228 () Bool)

(declare-fun res!622756 () Bool)

(assert (=> b!1381228 (=> res!622756 e!882540)))

(assert (=> b!1381228 (= res!622756 (not ((_ is ElementMatch!3741) lt!459175)))))

(assert (=> b!1381228 (= e!882542 e!882540)))

(declare-fun b!1381229 () Bool)

(declare-fun head!2504 (List!14080) C!7772)

(assert (=> b!1381229 (= e!882541 (not (= (head!2504 lt!459173) (c!227290 lt!459175))))))

(declare-fun b!1381230 () Bool)

(declare-fun derivativeStep!964 (Regex!3741 C!7772) Regex!3741)

(assert (=> b!1381230 (= e!882536 (matchR!1732 (derivativeStep!964 lt!459175 (head!2504 lt!459173)) (tail!2001 lt!459173)))))

(declare-fun b!1381231 () Bool)

(assert (=> b!1381231 (= e!882539 (= (head!2504 lt!459173) (c!227290 lt!459175)))))

(declare-fun b!1381232 () Bool)

(declare-fun res!622755 () Bool)

(assert (=> b!1381232 (=> res!622755 e!882540)))

(assert (=> b!1381232 (= res!622755 e!882539)))

(declare-fun res!622757 () Bool)

(assert (=> b!1381232 (=> (not res!622757) (not e!882539))))

(assert (=> b!1381232 (= res!622757 lt!459199)))

(assert (= (and d!394512 c!227314) b!1381226))

(assert (= (and d!394512 (not c!227314)) b!1381230))

(assert (= (and d!394512 c!227313) b!1381224))

(assert (= (and d!394512 (not c!227313)) b!1381220))

(assert (= (and b!1381220 c!227312) b!1381227))

(assert (= (and b!1381220 (not c!227312)) b!1381228))

(assert (= (and b!1381228 (not res!622756)) b!1381232))

(assert (= (and b!1381232 res!622757) b!1381221))

(assert (= (and b!1381221 res!622752) b!1381225))

(assert (= (and b!1381225 res!622753) b!1381231))

(assert (= (and b!1381232 (not res!622755)) b!1381222))

(assert (= (and b!1381222 res!622751) b!1381219))

(assert (= (and b!1381219 (not res!622754)) b!1381223))

(assert (= (and b!1381223 (not res!622758)) b!1381229))

(assert (= (or b!1381224 b!1381219 b!1381221) bm!92495))

(assert (=> b!1381223 m!1554001))

(assert (=> b!1381223 m!1554001))

(declare-fun m!1554081 () Bool)

(assert (=> b!1381223 m!1554081))

(declare-fun m!1554083 () Bool)

(assert (=> d!394512 m!1554083))

(declare-fun m!1554085 () Bool)

(assert (=> d!394512 m!1554085))

(declare-fun m!1554087 () Bool)

(assert (=> b!1381226 m!1554087))

(declare-fun m!1554089 () Bool)

(assert (=> b!1381230 m!1554089))

(assert (=> b!1381230 m!1554089))

(declare-fun m!1554091 () Bool)

(assert (=> b!1381230 m!1554091))

(assert (=> b!1381230 m!1554001))

(assert (=> b!1381230 m!1554091))

(assert (=> b!1381230 m!1554001))

(declare-fun m!1554093 () Bool)

(assert (=> b!1381230 m!1554093))

(assert (=> bm!92495 m!1554083))

(assert (=> b!1381231 m!1554089))

(assert (=> b!1381225 m!1554001))

(assert (=> b!1381225 m!1554001))

(assert (=> b!1381225 m!1554081))

(assert (=> b!1381229 m!1554089))

(assert (=> b!1381101 d!394512))

(declare-fun d!394520 () Bool)

(declare-fun lt!459200 () Bool)

(assert (=> d!394520 (= lt!459200 (select (content!2044 lt!459173) lt!459168))))

(declare-fun e!882549 () Bool)

(assert (=> d!394520 (= lt!459200 e!882549)))

(declare-fun res!622762 () Bool)

(assert (=> d!394520 (=> (not res!622762) (not e!882549))))

(assert (=> d!394520 (= res!622762 ((_ is Cons!14014) lt!459173))))

(assert (=> d!394520 (= (contains!2663 lt!459173 lt!459168) lt!459200)))

(declare-fun b!1381243 () Bool)

(declare-fun e!882550 () Bool)

(assert (=> b!1381243 (= e!882549 e!882550)))

(declare-fun res!622761 () Bool)

(assert (=> b!1381243 (=> res!622761 e!882550)))

(assert (=> b!1381243 (= res!622761 (= (h!19415 lt!459173) lt!459168))))

(declare-fun b!1381244 () Bool)

(assert (=> b!1381244 (= e!882550 (contains!2663 (t!121999 lt!459173) lt!459168))))

(assert (= (and d!394520 res!622762) b!1381243))

(assert (= (and b!1381243 (not res!622761)) b!1381244))

(assert (=> d!394520 m!1554047))

(declare-fun m!1554095 () Bool)

(assert (=> d!394520 m!1554095))

(declare-fun m!1554097 () Bool)

(assert (=> b!1381244 m!1554097))

(assert (=> b!1381099 d!394520))

(declare-fun b!1381245 () Bool)

(declare-fun e!882551 () Bool)

(assert (=> b!1381245 (= e!882551 (inv!17 (value!78802 t1!34)))))

(declare-fun d!394522 () Bool)

(declare-fun c!227319 () Bool)

(assert (=> d!394522 (= c!227319 ((_ is IntegerValue!7551) (value!78802 t1!34)))))

(declare-fun e!882553 () Bool)

(assert (=> d!394522 (= (inv!21 (value!78802 t1!34)) e!882553)))

(declare-fun b!1381246 () Bool)

(assert (=> b!1381246 (= e!882553 e!882551)))

(declare-fun c!227320 () Bool)

(assert (=> b!1381246 (= c!227320 ((_ is IntegerValue!7552) (value!78802 t1!34)))))

(declare-fun b!1381247 () Bool)

(declare-fun res!622763 () Bool)

(declare-fun e!882552 () Bool)

(assert (=> b!1381247 (=> res!622763 e!882552)))

(assert (=> b!1381247 (= res!622763 (not ((_ is IntegerValue!7553) (value!78802 t1!34))))))

(assert (=> b!1381247 (= e!882551 e!882552)))

(declare-fun b!1381248 () Bool)

(assert (=> b!1381248 (= e!882553 (inv!16 (value!78802 t1!34)))))

(declare-fun b!1381249 () Bool)

(assert (=> b!1381249 (= e!882552 (inv!15 (value!78802 t1!34)))))

(assert (= (and d!394522 c!227319) b!1381248))

(assert (= (and d!394522 (not c!227319)) b!1381246))

(assert (= (and b!1381246 c!227320) b!1381245))

(assert (= (and b!1381246 (not c!227320)) b!1381247))

(assert (= (and b!1381247 (not res!622763)) b!1381249))

(declare-fun m!1554099 () Bool)

(assert (=> b!1381245 m!1554099))

(declare-fun m!1554101 () Bool)

(assert (=> b!1381248 m!1554101))

(declare-fun m!1554103 () Bool)

(assert (=> b!1381249 m!1554103))

(assert (=> b!1381103 d!394522))

(declare-fun d!394524 () Bool)

(declare-fun lt!459208 () Bool)

(declare-fun e!882576 () Bool)

(assert (=> d!394524 (= lt!459208 e!882576)))

(declare-fun res!622787 () Bool)

(assert (=> d!394524 (=> (not res!622787) (not e!882576))))

(declare-datatypes ((List!14084 0))(
  ( (Nil!14018) (Cons!14018 (h!19419 Token!4516) (t!122037 List!14084)) )
))
(declare-datatypes ((IArray!9237 0))(
  ( (IArray!9238 (innerList!4676 List!14084)) )
))
(declare-datatypes ((Conc!4616 0))(
  ( (Node!4616 (left!11983 Conc!4616) (right!12313 Conc!4616) (csize!9462 Int) (cheight!4827 Int)) (Leaf!7026 (xs!7343 IArray!9237) (csize!9463 Int)) (Empty!4616) )
))
(declare-datatypes ((BalanceConc!9172 0))(
  ( (BalanceConc!9173 (c!227375 Conc!4616)) )
))
(declare-fun list!5421 (BalanceConc!9172) List!14084)

(declare-datatypes ((tuple2!13620 0))(
  ( (tuple2!13621 (_1!7696 BalanceConc!9172) (_2!7696 BalanceConc!9170)) )
))
(declare-fun lex!948 (LexerInterface!2122 List!14081 BalanceConc!9170) tuple2!13620)

(declare-fun print!887 (LexerInterface!2122 BalanceConc!9172) BalanceConc!9170)

(declare-fun singletonSeq!1065 (Token!4516) BalanceConc!9172)

(assert (=> d!394524 (= res!622787 (= (list!5421 (_1!7696 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t2!34))))) (list!5421 (singletonSeq!1065 t2!34))))))

(declare-fun e!882575 () Bool)

(assert (=> d!394524 (= lt!459208 e!882575)))

(declare-fun res!622786 () Bool)

(assert (=> d!394524 (=> (not res!622786) (not e!882575))))

(declare-fun lt!459209 () tuple2!13620)

(declare-fun size!11497 (BalanceConc!9172) Int)

(assert (=> d!394524 (= res!622786 (= (size!11497 (_1!7696 lt!459209)) 1))))

(assert (=> d!394524 (= lt!459209 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t2!34))))))

(assert (=> d!394524 (not (isEmpty!8457 rules!2550))))

(assert (=> d!394524 (= (rulesProduceIndividualToken!1091 thiss!19762 rules!2550 t2!34) lt!459208)))

(declare-fun b!1381281 () Bool)

(declare-fun res!622785 () Bool)

(assert (=> b!1381281 (=> (not res!622785) (not e!882575))))

(declare-fun apply!3484 (BalanceConc!9172 Int) Token!4516)

(assert (=> b!1381281 (= res!622785 (= (apply!3484 (_1!7696 lt!459209) 0) t2!34))))

(declare-fun b!1381282 () Bool)

(declare-fun isEmpty!8460 (BalanceConc!9170) Bool)

(assert (=> b!1381282 (= e!882575 (isEmpty!8460 (_2!7696 lt!459209)))))

(declare-fun b!1381283 () Bool)

(assert (=> b!1381283 (= e!882576 (isEmpty!8460 (_2!7696 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t2!34))))))))

(assert (= (and d!394524 res!622786) b!1381281))

(assert (= (and b!1381281 res!622785) b!1381282))

(assert (= (and d!394524 res!622787) b!1381283))

(declare-fun m!1554141 () Bool)

(assert (=> d!394524 m!1554141))

(declare-fun m!1554143 () Bool)

(assert (=> d!394524 m!1554143))

(declare-fun m!1554145 () Bool)

(assert (=> d!394524 m!1554145))

(declare-fun m!1554147 () Bool)

(assert (=> d!394524 m!1554147))

(assert (=> d!394524 m!1553907))

(assert (=> d!394524 m!1554147))

(assert (=> d!394524 m!1554143))

(declare-fun m!1554149 () Bool)

(assert (=> d!394524 m!1554149))

(assert (=> d!394524 m!1554147))

(declare-fun m!1554151 () Bool)

(assert (=> d!394524 m!1554151))

(declare-fun m!1554153 () Bool)

(assert (=> b!1381281 m!1554153))

(declare-fun m!1554155 () Bool)

(assert (=> b!1381282 m!1554155))

(assert (=> b!1381283 m!1554147))

(assert (=> b!1381283 m!1554147))

(assert (=> b!1381283 m!1554143))

(assert (=> b!1381283 m!1554143))

(assert (=> b!1381283 m!1554145))

(declare-fun m!1554157 () Bool)

(assert (=> b!1381283 m!1554157))

(assert (=> b!1381082 d!394524))

(declare-fun d!394534 () Bool)

(declare-fun c!227325 () Bool)

(assert (=> d!394534 (= c!227325 (isEmpty!8458 lt!459172))))

(declare-fun e!882583 () Bool)

(assert (=> d!394534 (= (prefixMatch!250 lt!459175 lt!459172) e!882583)))

(declare-fun b!1381294 () Bool)

(declare-fun lostCause!340 (Regex!3741) Bool)

(assert (=> b!1381294 (= e!882583 (not (lostCause!340 lt!459175)))))

(declare-fun b!1381295 () Bool)

(assert (=> b!1381295 (= e!882583 (prefixMatch!250 (derivativeStep!964 lt!459175 (head!2504 lt!459172)) (tail!2001 lt!459172)))))

(assert (= (and d!394534 c!227325) b!1381294))

(assert (= (and d!394534 (not c!227325)) b!1381295))

(declare-fun m!1554159 () Bool)

(assert (=> d!394534 m!1554159))

(declare-fun m!1554161 () Bool)

(assert (=> b!1381294 m!1554161))

(declare-fun m!1554163 () Bool)

(assert (=> b!1381295 m!1554163))

(assert (=> b!1381295 m!1554163))

(declare-fun m!1554165 () Bool)

(assert (=> b!1381295 m!1554165))

(declare-fun m!1554167 () Bool)

(assert (=> b!1381295 m!1554167))

(assert (=> b!1381295 m!1554165))

(assert (=> b!1381295 m!1554167))

(declare-fun m!1554169 () Bool)

(assert (=> b!1381295 m!1554169))

(assert (=> b!1381081 d!394534))

(declare-fun d!394536 () Bool)

(declare-fun list!5423 (Conc!4615) List!14080)

(assert (=> d!394536 (= (list!5420 lt!459170) (list!5423 (c!227289 lt!459170)))))

(declare-fun bs!336584 () Bool)

(assert (= bs!336584 d!394536))

(declare-fun m!1554171 () Bool)

(assert (=> bs!336584 m!1554171))

(assert (=> b!1381081 d!394536))

(declare-fun d!394538 () Bool)

(declare-fun lt!459214 () C!7772)

(assert (=> d!394538 (= lt!459214 (apply!3482 (list!5420 lt!459176) 0))))

(assert (=> d!394538 (= lt!459214 (apply!3483 (c!227289 lt!459176) 0))))

(declare-fun e!882584 () Bool)

(assert (=> d!394538 e!882584))

(declare-fun res!622794 () Bool)

(assert (=> d!394538 (=> (not res!622794) (not e!882584))))

(assert (=> d!394538 (= res!622794 (<= 0 0))))

(assert (=> d!394538 (= (apply!3481 lt!459176 0) lt!459214)))

(declare-fun b!1381296 () Bool)

(assert (=> b!1381296 (= e!882584 (< 0 (size!11492 lt!459176)))))

(assert (= (and d!394538 res!622794) b!1381296))

(declare-fun m!1554173 () Bool)

(assert (=> d!394538 m!1554173))

(assert (=> d!394538 m!1554173))

(declare-fun m!1554175 () Bool)

(assert (=> d!394538 m!1554175))

(declare-fun m!1554177 () Bool)

(assert (=> d!394538 m!1554177))

(assert (=> b!1381296 m!1553963))

(assert (=> b!1381081 d!394538))

(declare-fun b!1381302 () Bool)

(declare-fun res!622798 () Bool)

(declare-fun e!882587 () Bool)

(assert (=> b!1381302 (=> (not res!622798) (not e!882587))))

(declare-fun lt!459217 () List!14080)

(assert (=> b!1381302 (= res!622798 (= (size!11493 lt!459217) (+ (size!11493 lt!459169) (size!11493 (Cons!14014 lt!459167 Nil!14014)))))))

(declare-fun b!1381300 () Bool)

(declare-fun e!882588 () List!14080)

(assert (=> b!1381300 (= e!882588 (Cons!14014 lt!459167 Nil!14014))))

(declare-fun b!1381303 () Bool)

(assert (=> b!1381303 (= e!882587 (or (not (= (Cons!14014 lt!459167 Nil!14014) Nil!14014)) (= lt!459217 lt!459169)))))

(declare-fun b!1381301 () Bool)

(assert (=> b!1381301 (= e!882588 (Cons!14014 (h!19415 lt!459169) (++!3632 (t!121999 lt!459169) (Cons!14014 lt!459167 Nil!14014))))))

(declare-fun d!394540 () Bool)

(assert (=> d!394540 e!882587))

(declare-fun res!622799 () Bool)

(assert (=> d!394540 (=> (not res!622799) (not e!882587))))

(assert (=> d!394540 (= res!622799 (= (content!2044 lt!459217) ((_ map or) (content!2044 lt!459169) (content!2044 (Cons!14014 lt!459167 Nil!14014)))))))

(assert (=> d!394540 (= lt!459217 e!882588)))

(declare-fun c!227326 () Bool)

(assert (=> d!394540 (= c!227326 ((_ is Nil!14014) lt!459169))))

(assert (=> d!394540 (= (++!3632 lt!459169 (Cons!14014 lt!459167 Nil!14014)) lt!459217)))

(assert (= (and d!394540 c!227326) b!1381300))

(assert (= (and d!394540 (not c!227326)) b!1381301))

(assert (= (and d!394540 res!622799) b!1381302))

(assert (= (and b!1381302 res!622798) b!1381303))

(declare-fun m!1554183 () Bool)

(assert (=> b!1381302 m!1554183))

(declare-fun m!1554185 () Bool)

(assert (=> b!1381302 m!1554185))

(declare-fun m!1554187 () Bool)

(assert (=> b!1381302 m!1554187))

(declare-fun m!1554191 () Bool)

(assert (=> b!1381301 m!1554191))

(declare-fun m!1554193 () Bool)

(assert (=> d!394540 m!1554193))

(declare-fun m!1554195 () Bool)

(assert (=> d!394540 m!1554195))

(declare-fun m!1554199 () Bool)

(assert (=> d!394540 m!1554199))

(assert (=> b!1381081 d!394540))

(declare-fun d!394542 () Bool)

(declare-fun lt!459221 () BalanceConc!9170)

(assert (=> d!394542 (= (list!5420 lt!459221) (originalCharacters!3289 t1!34))))

(assert (=> d!394542 (= lt!459221 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (value!78802 t1!34)))))

(assert (=> d!394542 (= (charsOf!1399 t1!34) lt!459221)))

(declare-fun b_lambda!42537 () Bool)

(assert (=> (not b_lambda!42537) (not d!394542)))

(assert (=> d!394542 t!122003))

(declare-fun b_and!92559 () Bool)

(assert (= b_and!92541 (and (=> t!122003 result!88078) b_and!92559)))

(assert (=> d!394542 t!122005))

(declare-fun b_and!92561 () Bool)

(assert (= b_and!92543 (and (=> t!122005 result!88082) b_and!92561)))

(assert (=> d!394542 t!122007))

(declare-fun b_and!92563 () Bool)

(assert (= b_and!92545 (and (=> t!122007 result!88084) b_and!92563)))

(declare-fun m!1554217 () Bool)

(assert (=> d!394542 m!1554217))

(assert (=> d!394542 m!1554029))

(assert (=> b!1381081 d!394542))

(declare-fun bs!336585 () Bool)

(declare-fun d!394550 () Bool)

(assert (= bs!336585 (and d!394550 b!1381094)))

(declare-fun lambda!59210 () Int)

(assert (=> bs!336585 (= lambda!59210 lambda!59206)))

(declare-fun lt!459224 () Unit!20273)

(declare-fun lemma!134 (List!14081 LexerInterface!2122 List!14081) Unit!20273)

(assert (=> d!394550 (= lt!459224 (lemma!134 rules!2550 thiss!19762 rules!2550))))

(assert (=> d!394550 (= (rulesRegex!310 thiss!19762 rules!2550) (generalisedUnion!143 (map!3101 rules!2550 lambda!59210)))))

(declare-fun bs!336586 () Bool)

(assert (= bs!336586 d!394550))

(declare-fun m!1554223 () Bool)

(assert (=> bs!336586 m!1554223))

(declare-fun m!1554225 () Bool)

(assert (=> bs!336586 m!1554225))

(assert (=> bs!336586 m!1554225))

(declare-fun m!1554227 () Bool)

(assert (=> bs!336586 m!1554227))

(assert (=> b!1381081 d!394550))

(declare-fun d!394554 () Bool)

(declare-fun choose!8471 (Int) Bool)

(assert (=> d!394554 (= (Exists!891 lambda!59205) (choose!8471 lambda!59205))))

(declare-fun bs!336587 () Bool)

(assert (= bs!336587 d!394554))

(declare-fun m!1554229 () Bool)

(assert (=> bs!336587 m!1554229))

(assert (=> b!1381102 d!394554))

(declare-fun bs!336588 () Bool)

(declare-fun d!394556 () Bool)

(assert (= bs!336588 (and d!394556 b!1381102)))

(declare-fun lambda!59213 () Int)

(assert (=> bs!336588 (= lambda!59213 lambda!59205)))

(assert (=> d!394556 true))

(assert (=> d!394556 true))

(assert (=> d!394556 (Exists!891 lambda!59213)))

(declare-fun lt!459227 () Unit!20273)

(declare-fun choose!8472 (Regex!3741 List!14080) Unit!20273)

(assert (=> d!394556 (= lt!459227 (choose!8472 lt!459175 lt!459172))))

(assert (=> d!394556 (validRegex!1626 lt!459175)))

(assert (=> d!394556 (= (lemmaPrefixMatchThenExistsStringThatMatches!209 lt!459175 lt!459172) lt!459227)))

(declare-fun bs!336589 () Bool)

(assert (= bs!336589 d!394556))

(declare-fun m!1554235 () Bool)

(assert (=> bs!336589 m!1554235))

(declare-fun m!1554237 () Bool)

(assert (=> bs!336589 m!1554237))

(assert (=> bs!336589 m!1554085))

(assert (=> b!1381102 d!394556))

(declare-fun d!394560 () Bool)

(assert (=> d!394560 (= (isEmpty!8457 rules!2550) ((_ is Nil!14015) rules!2550))))

(assert (=> b!1381095 d!394560))

(declare-fun d!394562 () Bool)

(declare-fun res!622818 () Bool)

(declare-fun e!882615 () Bool)

(assert (=> d!394562 (=> res!622818 e!882615)))

(assert (=> d!394562 (= res!622818 ((_ is Nil!14016) lt!459171))))

(assert (=> d!394562 (= (forall!3411 lt!459171 lambda!59207) e!882615)))

(declare-fun b!1381338 () Bool)

(declare-fun e!882616 () Bool)

(assert (=> b!1381338 (= e!882615 e!882616)))

(declare-fun res!622819 () Bool)

(assert (=> b!1381338 (=> (not res!622819) (not e!882616))))

(declare-fun dynLambda!6386 (Int Regex!3741) Bool)

(assert (=> b!1381338 (= res!622819 (dynLambda!6386 lambda!59207 (h!19417 lt!459171)))))

(declare-fun b!1381339 () Bool)

(assert (=> b!1381339 (= e!882616 (forall!3411 (t!122001 lt!459171) lambda!59207))))

(assert (= (and d!394562 (not res!622818)) b!1381338))

(assert (= (and b!1381338 res!622819) b!1381339))

(declare-fun b_lambda!42539 () Bool)

(assert (=> (not b_lambda!42539) (not b!1381338)))

(declare-fun m!1554239 () Bool)

(assert (=> b!1381338 m!1554239))

(declare-fun m!1554241 () Bool)

(assert (=> b!1381339 m!1554241))

(assert (=> b!1381094 d!394562))

(declare-fun d!394564 () Bool)

(declare-fun lt!459233 () List!14082)

(declare-fun size!11499 (List!14082) Int)

(declare-fun size!11500 (List!14081) Int)

(assert (=> d!394564 (= (size!11499 lt!459233) (size!11500 rules!2550))))

(declare-fun e!882625 () List!14082)

(assert (=> d!394564 (= lt!459233 e!882625)))

(declare-fun c!227341 () Bool)

(assert (=> d!394564 (= c!227341 ((_ is Nil!14015) rules!2550))))

(assert (=> d!394564 (= (map!3101 rules!2550 lambda!59206) lt!459233)))

(declare-fun b!1381354 () Bool)

(assert (=> b!1381354 (= e!882625 Nil!14016)))

(declare-fun b!1381355 () Bool)

(declare-fun $colon$colon!209 (List!14082 Regex!3741) List!14082)

(declare-fun dynLambda!6387 (Int Rule!4654) Regex!3741)

(assert (=> b!1381355 (= e!882625 ($colon$colon!209 (map!3101 (t!122000 rules!2550) lambda!59206) (dynLambda!6387 lambda!59206 (h!19416 rules!2550))))))

(assert (= (and d!394564 c!227341) b!1381354))

(assert (= (and d!394564 (not c!227341)) b!1381355))

(declare-fun b_lambda!42541 () Bool)

(assert (=> (not b_lambda!42541) (not b!1381355)))

(declare-fun m!1554263 () Bool)

(assert (=> d!394564 m!1554263))

(declare-fun m!1554265 () Bool)

(assert (=> d!394564 m!1554265))

(declare-fun m!1554267 () Bool)

(assert (=> b!1381355 m!1554267))

(declare-fun m!1554269 () Bool)

(assert (=> b!1381355 m!1554269))

(assert (=> b!1381355 m!1554267))

(assert (=> b!1381355 m!1554269))

(declare-fun m!1554271 () Bool)

(assert (=> b!1381355 m!1554271))

(assert (=> b!1381094 d!394564))

(declare-fun d!394570 () Bool)

(declare-fun lt!459236 () Int)

(assert (=> d!394570 (= lt!459236 (size!11493 (list!5420 lt!459176)))))

(declare-fun size!11501 (Conc!4615) Int)

(assert (=> d!394570 (= lt!459236 (size!11501 (c!227289 lt!459176)))))

(assert (=> d!394570 (= (size!11492 lt!459176) lt!459236)))

(declare-fun bs!336591 () Bool)

(assert (= bs!336591 d!394570))

(assert (=> bs!336591 m!1554173))

(assert (=> bs!336591 m!1554173))

(declare-fun m!1554273 () Bool)

(assert (=> bs!336591 m!1554273))

(declare-fun m!1554275 () Bool)

(assert (=> bs!336591 m!1554275))

(assert (=> b!1381098 d!394570))

(declare-fun d!394572 () Bool)

(declare-fun lt!459237 () BalanceConc!9170)

(assert (=> d!394572 (= (list!5420 lt!459237) (originalCharacters!3289 t2!34))))

(assert (=> d!394572 (= lt!459237 (dynLambda!6382 (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (value!78802 t2!34)))))

(assert (=> d!394572 (= (charsOf!1399 t2!34) lt!459237)))

(declare-fun b_lambda!42543 () Bool)

(assert (=> (not b_lambda!42543) (not d!394572)))

(assert (=> d!394572 t!122009))

(declare-fun b_and!92565 () Bool)

(assert (= b_and!92559 (and (=> t!122009 result!88086) b_and!92565)))

(assert (=> d!394572 t!122011))

(declare-fun b_and!92567 () Bool)

(assert (= b_and!92561 (and (=> t!122011 result!88088) b_and!92567)))

(assert (=> d!394572 t!122013))

(declare-fun b_and!92569 () Bool)

(assert (= b_and!92563 (and (=> t!122013 result!88090) b_and!92569)))

(declare-fun m!1554277 () Bool)

(assert (=> d!394572 m!1554277))

(assert (=> d!394572 m!1554041))

(assert (=> b!1381098 d!394572))

(declare-fun d!394574 () Bool)

(assert (=> d!394574 (= (inv!18355 (tag!2689 (h!19416 rules!2550))) (= (mod (str.len (value!78801 (tag!2689 (h!19416 rules!2550)))) 2) 0))))

(assert (=> b!1381096 d!394574))

(declare-fun d!394576 () Bool)

(declare-fun res!622822 () Bool)

(declare-fun e!882626 () Bool)

(assert (=> d!394576 (=> (not res!622822) (not e!882626))))

(assert (=> d!394576 (= res!622822 (semiInverseModEq!935 (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toValue!3710 (transformation!2427 (h!19416 rules!2550)))))))

(assert (=> d!394576 (= (inv!18358 (transformation!2427 (h!19416 rules!2550))) e!882626)))

(declare-fun b!1381356 () Bool)

(assert (=> b!1381356 (= e!882626 (equivClasses!894 (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toValue!3710 (transformation!2427 (h!19416 rules!2550)))))))

(assert (= (and d!394576 res!622822) b!1381356))

(declare-fun m!1554279 () Bool)

(assert (=> d!394576 m!1554279))

(declare-fun m!1554281 () Bool)

(assert (=> b!1381356 m!1554281))

(assert (=> b!1381096 d!394576))

(declare-fun d!394578 () Bool)

(declare-fun lt!459238 () Bool)

(declare-fun e!882628 () Bool)

(assert (=> d!394578 (= lt!459238 e!882628)))

(declare-fun res!622825 () Bool)

(assert (=> d!394578 (=> (not res!622825) (not e!882628))))

(assert (=> d!394578 (= res!622825 (= (list!5421 (_1!7696 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t1!34))))) (list!5421 (singletonSeq!1065 t1!34))))))

(declare-fun e!882627 () Bool)

(assert (=> d!394578 (= lt!459238 e!882627)))

(declare-fun res!622824 () Bool)

(assert (=> d!394578 (=> (not res!622824) (not e!882627))))

(declare-fun lt!459239 () tuple2!13620)

(assert (=> d!394578 (= res!622824 (= (size!11497 (_1!7696 lt!459239)) 1))))

(assert (=> d!394578 (= lt!459239 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t1!34))))))

(assert (=> d!394578 (not (isEmpty!8457 rules!2550))))

(assert (=> d!394578 (= (rulesProduceIndividualToken!1091 thiss!19762 rules!2550 t1!34) lt!459238)))

(declare-fun b!1381357 () Bool)

(declare-fun res!622823 () Bool)

(assert (=> b!1381357 (=> (not res!622823) (not e!882627))))

(assert (=> b!1381357 (= res!622823 (= (apply!3484 (_1!7696 lt!459239) 0) t1!34))))

(declare-fun b!1381358 () Bool)

(assert (=> b!1381358 (= e!882627 (isEmpty!8460 (_2!7696 lt!459239)))))

(declare-fun b!1381359 () Bool)

(assert (=> b!1381359 (= e!882628 (isEmpty!8460 (_2!7696 (lex!948 thiss!19762 rules!2550 (print!887 thiss!19762 (singletonSeq!1065 t1!34))))))))

(assert (= (and d!394578 res!622824) b!1381357))

(assert (= (and b!1381357 res!622823) b!1381358))

(assert (= (and d!394578 res!622825) b!1381359))

(declare-fun m!1554283 () Bool)

(assert (=> d!394578 m!1554283))

(declare-fun m!1554285 () Bool)

(assert (=> d!394578 m!1554285))

(declare-fun m!1554287 () Bool)

(assert (=> d!394578 m!1554287))

(declare-fun m!1554289 () Bool)

(assert (=> d!394578 m!1554289))

(assert (=> d!394578 m!1553907))

(assert (=> d!394578 m!1554289))

(assert (=> d!394578 m!1554285))

(declare-fun m!1554291 () Bool)

(assert (=> d!394578 m!1554291))

(assert (=> d!394578 m!1554289))

(declare-fun m!1554293 () Bool)

(assert (=> d!394578 m!1554293))

(declare-fun m!1554295 () Bool)

(assert (=> b!1381357 m!1554295))

(declare-fun m!1554297 () Bool)

(assert (=> b!1381358 m!1554297))

(assert (=> b!1381359 m!1554289))

(assert (=> b!1381359 m!1554289))

(assert (=> b!1381359 m!1554285))

(assert (=> b!1381359 m!1554285))

(assert (=> b!1381359 m!1554287))

(declare-fun m!1554299 () Bool)

(assert (=> b!1381359 m!1554299))

(assert (=> b!1381090 d!394578))

(declare-fun bs!336592 () Bool)

(declare-fun d!394580 () Bool)

(assert (= bs!336592 (and d!394580 b!1381094)))

(declare-fun lambda!59219 () Int)

(assert (=> bs!336592 (= lambda!59219 lambda!59207)))

(declare-fun b!1381380 () Bool)

(declare-fun e!882641 () Regex!3741)

(assert (=> b!1381380 (= e!882641 EmptyLang!3741)))

(declare-fun b!1381381 () Bool)

(declare-fun e!882642 () Bool)

(declare-fun lt!459242 () Regex!3741)

(declare-fun isEmptyLang!53 (Regex!3741) Bool)

(assert (=> b!1381381 (= e!882642 (isEmptyLang!53 lt!459242))))

(declare-fun b!1381382 () Bool)

(declare-fun e!882643 () Bool)

(assert (=> b!1381382 (= e!882642 e!882643)))

(declare-fun c!227351 () Bool)

(declare-fun isEmpty!8463 (List!14082) Bool)

(declare-fun tail!2004 (List!14082) List!14082)

(assert (=> b!1381382 (= c!227351 (isEmpty!8463 (tail!2004 lt!459171)))))

(declare-fun b!1381383 () Bool)

(declare-fun e!882645 () Bool)

(assert (=> b!1381383 (= e!882645 (isEmpty!8463 (t!122001 lt!459171)))))

(declare-fun b!1381385 () Bool)

(declare-fun e!882644 () Regex!3741)

(assert (=> b!1381385 (= e!882644 e!882641)))

(declare-fun c!227353 () Bool)

(assert (=> b!1381385 (= c!227353 ((_ is Cons!14016) lt!459171))))

(declare-fun b!1381386 () Bool)

(declare-fun head!2507 (List!14082) Regex!3741)

(assert (=> b!1381386 (= e!882643 (= lt!459242 (head!2507 lt!459171)))))

(declare-fun b!1381387 () Bool)

(declare-fun e!882646 () Bool)

(assert (=> b!1381387 (= e!882646 e!882642)))

(declare-fun c!227352 () Bool)

(assert (=> b!1381387 (= c!227352 (isEmpty!8463 lt!459171))))

(declare-fun b!1381388 () Bool)

(assert (=> b!1381388 (= e!882641 (Union!3741 (h!19417 lt!459171) (generalisedUnion!143 (t!122001 lt!459171))))))

(declare-fun b!1381389 () Bool)

(declare-fun isUnion!53 (Regex!3741) Bool)

(assert (=> b!1381389 (= e!882643 (isUnion!53 lt!459242))))

(declare-fun b!1381384 () Bool)

(assert (=> b!1381384 (= e!882644 (h!19417 lt!459171))))

(assert (=> d!394580 e!882646))

(declare-fun res!622831 () Bool)

(assert (=> d!394580 (=> (not res!622831) (not e!882646))))

(assert (=> d!394580 (= res!622831 (validRegex!1626 lt!459242))))

(assert (=> d!394580 (= lt!459242 e!882644)))

(declare-fun c!227350 () Bool)

(assert (=> d!394580 (= c!227350 e!882645)))

(declare-fun res!622830 () Bool)

(assert (=> d!394580 (=> (not res!622830) (not e!882645))))

(assert (=> d!394580 (= res!622830 ((_ is Cons!14016) lt!459171))))

(assert (=> d!394580 (forall!3411 lt!459171 lambda!59219)))

(assert (=> d!394580 (= (generalisedUnion!143 lt!459171) lt!459242)))

(assert (= (and d!394580 res!622830) b!1381383))

(assert (= (and d!394580 c!227350) b!1381384))

(assert (= (and d!394580 (not c!227350)) b!1381385))

(assert (= (and b!1381385 c!227353) b!1381388))

(assert (= (and b!1381385 (not c!227353)) b!1381380))

(assert (= (and d!394580 res!622831) b!1381387))

(assert (= (and b!1381387 c!227352) b!1381381))

(assert (= (and b!1381387 (not c!227352)) b!1381382))

(assert (= (and b!1381382 c!227351) b!1381386))

(assert (= (and b!1381382 (not c!227351)) b!1381389))

(declare-fun m!1554301 () Bool)

(assert (=> d!394580 m!1554301))

(declare-fun m!1554303 () Bool)

(assert (=> d!394580 m!1554303))

(declare-fun m!1554305 () Bool)

(assert (=> b!1381387 m!1554305))

(declare-fun m!1554307 () Bool)

(assert (=> b!1381389 m!1554307))

(declare-fun m!1554309 () Bool)

(assert (=> b!1381381 m!1554309))

(declare-fun m!1554311 () Bool)

(assert (=> b!1381388 m!1554311))

(declare-fun m!1554313 () Bool)

(assert (=> b!1381383 m!1554313))

(declare-fun m!1554315 () Bool)

(assert (=> b!1381386 m!1554315))

(declare-fun m!1554317 () Bool)

(assert (=> b!1381382 m!1554317))

(assert (=> b!1381382 m!1554317))

(declare-fun m!1554319 () Bool)

(assert (=> b!1381382 m!1554319))

(assert (=> b!1381088 d!394580))

(declare-fun d!394582 () Bool)

(assert (=> d!394582 (= (inv!18355 (tag!2689 (rule!4186 t1!34))) (= (mod (str.len (value!78801 (tag!2689 (rule!4186 t1!34)))) 2) 0))))

(assert (=> b!1381089 d!394582))

(declare-fun d!394584 () Bool)

(declare-fun res!622832 () Bool)

(declare-fun e!882647 () Bool)

(assert (=> d!394584 (=> (not res!622832) (not e!882647))))

(assert (=> d!394584 (= res!622832 (semiInverseModEq!935 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toValue!3710 (transformation!2427 (rule!4186 t1!34)))))))

(assert (=> d!394584 (= (inv!18358 (transformation!2427 (rule!4186 t1!34))) e!882647)))

(declare-fun b!1381390 () Bool)

(assert (=> b!1381390 (= e!882647 (equivClasses!894 (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toValue!3710 (transformation!2427 (rule!4186 t1!34)))))))

(assert (= (and d!394584 res!622832) b!1381390))

(declare-fun m!1554321 () Bool)

(assert (=> d!394584 m!1554321))

(declare-fun m!1554323 () Bool)

(assert (=> b!1381390 m!1554323))

(assert (=> b!1381089 d!394584))

(declare-fun d!394586 () Bool)

(declare-fun res!622835 () Bool)

(declare-fun e!882650 () Bool)

(assert (=> d!394586 (=> (not res!622835) (not e!882650))))

(declare-fun rulesValid!905 (LexerInterface!2122 List!14081) Bool)

(assert (=> d!394586 (= res!622835 (rulesValid!905 thiss!19762 rules!2550))))

(assert (=> d!394586 (= (rulesInvariant!1992 thiss!19762 rules!2550) e!882650)))

(declare-fun b!1381393 () Bool)

(declare-datatypes ((List!14086 0))(
  ( (Nil!14020) (Cons!14020 (h!19421 String!16821) (t!122039 List!14086)) )
))
(declare-fun noDuplicateTag!905 (LexerInterface!2122 List!14081 List!14086) Bool)

(assert (=> b!1381393 (= e!882650 (noDuplicateTag!905 thiss!19762 rules!2550 Nil!14020))))

(assert (= (and d!394586 res!622835) b!1381393))

(declare-fun m!1554325 () Bool)

(assert (=> d!394586 m!1554325))

(declare-fun m!1554327 () Bool)

(assert (=> b!1381393 m!1554327))

(assert (=> b!1381092 d!394586))

(declare-fun d!394588 () Bool)

(declare-fun prefixMatchZipperSequence!274 (Regex!3741 BalanceConc!9170) Bool)

(declare-fun ++!3634 (BalanceConc!9170 BalanceConc!9170) BalanceConc!9170)

(declare-fun singletonSeq!1068 (C!7772) BalanceConc!9170)

(assert (=> d!394588 (= (separableTokensPredicate!405 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!274 (rulesRegex!310 thiss!19762 rules!2550) (++!3634 (charsOf!1399 t1!34) (singletonSeq!1068 (apply!3481 (charsOf!1399 t2!34) 0))))))))

(declare-fun bs!336595 () Bool)

(assert (= bs!336595 d!394588))

(assert (=> bs!336595 m!1553945))

(assert (=> bs!336595 m!1553965))

(declare-fun m!1554371 () Bool)

(assert (=> bs!336595 m!1554371))

(declare-fun m!1554373 () Bool)

(assert (=> bs!336595 m!1554373))

(assert (=> bs!336595 m!1553937))

(assert (=> bs!336595 m!1554373))

(declare-fun m!1554375 () Bool)

(assert (=> bs!336595 m!1554375))

(assert (=> bs!336595 m!1553965))

(assert (=> bs!336595 m!1554371))

(assert (=> bs!336595 m!1553937))

(assert (=> bs!336595 m!1553945))

(assert (=> bs!336595 m!1554375))

(declare-fun m!1554377 () Bool)

(assert (=> bs!336595 m!1554377))

(assert (=> b!1381093 d!394588))

(declare-fun b!1381419 () Bool)

(declare-fun e!882665 () Bool)

(declare-fun tp_is_empty!6761 () Bool)

(declare-fun tp!395801 () Bool)

(assert (=> b!1381419 (= e!882665 (and tp_is_empty!6761 tp!395801))))

(assert (=> b!1381079 (= tp!395780 e!882665)))

(assert (= (and b!1381079 ((_ is Cons!14014) (originalCharacters!3289 t2!34))) b!1381419))

(declare-fun b!1381430 () Bool)

(declare-fun b_free!33559 () Bool)

(declare-fun b_next!34263 () Bool)

(assert (=> b!1381430 (= b_free!33559 (not b_next!34263))))

(declare-fun tp!395810 () Bool)

(declare-fun b_and!92577 () Bool)

(assert (=> b!1381430 (= tp!395810 b_and!92577)))

(declare-fun b_free!33561 () Bool)

(declare-fun b_next!34265 () Bool)

(assert (=> b!1381430 (= b_free!33561 (not b_next!34265))))

(declare-fun t!122029 () Bool)

(declare-fun tb!72545 () Bool)

(assert (=> (and b!1381430 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t1!34)))) t!122029) tb!72545))

(declare-fun result!88110 () Bool)

(assert (= result!88110 result!88078))

(assert (=> b!1381143 t!122029))

(declare-fun tb!72547 () Bool)

(declare-fun t!122031 () Bool)

(assert (=> (and b!1381430 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t2!34)))) t!122031) tb!72547))

(declare-fun result!88112 () Bool)

(assert (= result!88112 result!88086))

(assert (=> b!1381150 t!122031))

(assert (=> d!394542 t!122029))

(assert (=> d!394572 t!122031))

(declare-fun b_and!92579 () Bool)

(declare-fun tp!395813 () Bool)

(assert (=> b!1381430 (= tp!395813 (and (=> t!122029 result!88110) (=> t!122031 result!88112) b_and!92579))))

(declare-fun e!882677 () Bool)

(assert (=> b!1381430 (= e!882677 (and tp!395810 tp!395813))))

(declare-fun e!882674 () Bool)

(declare-fun b!1381429 () Bool)

(declare-fun tp!395811 () Bool)

(assert (=> b!1381429 (= e!882674 (and tp!395811 (inv!18355 (tag!2689 (h!19416 (t!122000 rules!2550)))) (inv!18358 (transformation!2427 (h!19416 (t!122000 rules!2550)))) e!882677))))

(declare-fun b!1381428 () Bool)

(declare-fun e!882676 () Bool)

(declare-fun tp!395812 () Bool)

(assert (=> b!1381428 (= e!882676 (and e!882674 tp!395812))))

(assert (=> b!1381100 (= tp!395787 e!882676)))

(assert (= b!1381429 b!1381430))

(assert (= b!1381428 b!1381429))

(assert (= (and b!1381100 ((_ is Cons!14015) (t!122000 rules!2550))) b!1381428))

(declare-fun m!1554381 () Bool)

(assert (=> b!1381429 m!1554381))

(declare-fun m!1554383 () Bool)

(assert (=> b!1381429 m!1554383))

(declare-fun b!1381445 () Bool)

(declare-fun e!882681 () Bool)

(declare-fun tp!395824 () Bool)

(declare-fun tp!395828 () Bool)

(assert (=> b!1381445 (= e!882681 (and tp!395824 tp!395828))))

(declare-fun b!1381444 () Bool)

(declare-fun tp!395826 () Bool)

(assert (=> b!1381444 (= e!882681 tp!395826)))

(assert (=> b!1381089 (= tp!395785 e!882681)))

(declare-fun b!1381443 () Bool)

(declare-fun tp!395827 () Bool)

(declare-fun tp!395825 () Bool)

(assert (=> b!1381443 (= e!882681 (and tp!395827 tp!395825))))

(declare-fun b!1381442 () Bool)

(assert (=> b!1381442 (= e!882681 tp_is_empty!6761)))

(assert (= (and b!1381089 ((_ is ElementMatch!3741) (regex!2427 (rule!4186 t1!34)))) b!1381442))

(assert (= (and b!1381089 ((_ is Concat!6259) (regex!2427 (rule!4186 t1!34)))) b!1381443))

(assert (= (and b!1381089 ((_ is Star!3741) (regex!2427 (rule!4186 t1!34)))) b!1381444))

(assert (= (and b!1381089 ((_ is Union!3741) (regex!2427 (rule!4186 t1!34)))) b!1381445))

(declare-fun b!1381446 () Bool)

(declare-fun e!882682 () Bool)

(declare-fun tp!395829 () Bool)

(assert (=> b!1381446 (= e!882682 (and tp_is_empty!6761 tp!395829))))

(assert (=> b!1381103 (= tp!395781 e!882682)))

(assert (= (and b!1381103 ((_ is Cons!14014) (originalCharacters!3289 t1!34))) b!1381446))

(declare-fun b!1381450 () Bool)

(declare-fun e!882683 () Bool)

(declare-fun tp!395830 () Bool)

(declare-fun tp!395834 () Bool)

(assert (=> b!1381450 (= e!882683 (and tp!395830 tp!395834))))

(declare-fun b!1381449 () Bool)

(declare-fun tp!395832 () Bool)

(assert (=> b!1381449 (= e!882683 tp!395832)))

(assert (=> b!1381096 (= tp!395786 e!882683)))

(declare-fun b!1381448 () Bool)

(declare-fun tp!395833 () Bool)

(declare-fun tp!395831 () Bool)

(assert (=> b!1381448 (= e!882683 (and tp!395833 tp!395831))))

(declare-fun b!1381447 () Bool)

(assert (=> b!1381447 (= e!882683 tp_is_empty!6761)))

(assert (= (and b!1381096 ((_ is ElementMatch!3741) (regex!2427 (h!19416 rules!2550)))) b!1381447))

(assert (= (and b!1381096 ((_ is Concat!6259) (regex!2427 (h!19416 rules!2550)))) b!1381448))

(assert (= (and b!1381096 ((_ is Star!3741) (regex!2427 (h!19416 rules!2550)))) b!1381449))

(assert (= (and b!1381096 ((_ is Union!3741) (regex!2427 (h!19416 rules!2550)))) b!1381450))

(declare-fun b!1381454 () Bool)

(declare-fun e!882684 () Bool)

(declare-fun tp!395835 () Bool)

(declare-fun tp!395839 () Bool)

(assert (=> b!1381454 (= e!882684 (and tp!395835 tp!395839))))

(declare-fun b!1381453 () Bool)

(declare-fun tp!395837 () Bool)

(assert (=> b!1381453 (= e!882684 tp!395837)))

(assert (=> b!1381086 (= tp!395790 e!882684)))

(declare-fun b!1381452 () Bool)

(declare-fun tp!395838 () Bool)

(declare-fun tp!395836 () Bool)

(assert (=> b!1381452 (= e!882684 (and tp!395838 tp!395836))))

(declare-fun b!1381451 () Bool)

(assert (=> b!1381451 (= e!882684 tp_is_empty!6761)))

(assert (= (and b!1381086 ((_ is ElementMatch!3741) (regex!2427 (rule!4186 t2!34)))) b!1381451))

(assert (= (and b!1381086 ((_ is Concat!6259) (regex!2427 (rule!4186 t2!34)))) b!1381452))

(assert (= (and b!1381086 ((_ is Star!3741) (regex!2427 (rule!4186 t2!34)))) b!1381453))

(assert (= (and b!1381086 ((_ is Union!3741) (regex!2427 (rule!4186 t2!34)))) b!1381454))

(declare-fun b_lambda!42547 () Bool)

(assert (= b_lambda!42539 (or b!1381094 b_lambda!42547)))

(declare-fun bs!336599 () Bool)

(declare-fun d!394610 () Bool)

(assert (= bs!336599 (and d!394610 b!1381094)))

(assert (=> bs!336599 (= (dynLambda!6386 lambda!59207 (h!19417 lt!459171)) (validRegex!1626 (h!19417 lt!459171)))))

(declare-fun m!1554397 () Bool)

(assert (=> bs!336599 m!1554397))

(assert (=> b!1381338 d!394610))

(declare-fun b_lambda!42549 () Bool)

(assert (= b_lambda!42537 (or (and b!1381087 b_free!33549 (= (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) (and b!1381091 b_free!33553) (and b!1381080 b_free!33557 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) (and b!1381430 b_free!33561 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) b_lambda!42549)))

(declare-fun b_lambda!42551 () Bool)

(assert (= b_lambda!42525 (or (and b!1381087 b_free!33549 (= (toChars!3569 (transformation!2427 (rule!4186 t2!34))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) (and b!1381091 b_free!33553) (and b!1381080 b_free!33557 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) (and b!1381430 b_free!33561 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t1!34))))) b_lambda!42551)))

(declare-fun b_lambda!42553 () Bool)

(assert (= b_lambda!42543 (or (and b!1381087 b_free!33549) (and b!1381091 b_free!33553 (= (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) (and b!1381080 b_free!33557 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) (and b!1381430 b_free!33561 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) b_lambda!42553)))

(declare-fun b_lambda!42555 () Bool)

(assert (= b_lambda!42527 (or (and b!1381087 b_free!33549) (and b!1381091 b_free!33553 (= (toChars!3569 (transformation!2427 (rule!4186 t1!34))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) (and b!1381080 b_free!33557 (= (toChars!3569 (transformation!2427 (h!19416 rules!2550))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) (and b!1381430 b_free!33561 (= (toChars!3569 (transformation!2427 (h!19416 (t!122000 rules!2550)))) (toChars!3569 (transformation!2427 (rule!4186 t2!34))))) b_lambda!42555)))

(declare-fun b_lambda!42557 () Bool)

(assert (= b_lambda!42541 (or b!1381094 b_lambda!42557)))

(declare-fun bs!336600 () Bool)

(declare-fun d!394612 () Bool)

(assert (= bs!336600 (and d!394612 b!1381094)))

(assert (=> bs!336600 (= (dynLambda!6387 lambda!59206 (h!19416 rules!2550)) (regex!2427 (h!19416 rules!2550)))))

(assert (=> b!1381355 d!394612))

(declare-fun b_lambda!42559 () Bool)

(assert (= b_lambda!42523 (or b!1381102 b_lambda!42559)))

(declare-fun bs!336601 () Bool)

(declare-fun d!394614 () Bool)

(assert (= bs!336601 (and d!394614 b!1381102)))

(declare-fun res!622846 () Bool)

(declare-fun e!882685 () Bool)

(assert (=> bs!336601 (=> (not res!622846) (not e!882685))))

(assert (=> bs!336601 (= res!622846 (matchR!1732 lt!459175 lt!459185))))

(assert (=> bs!336601 (= (dynLambda!6381 lambda!59205 lt!459185) e!882685)))

(declare-fun b!1381455 () Bool)

(declare-fun isPrefix!1134 (List!14080 List!14080) Bool)

(assert (=> b!1381455 (= e!882685 (isPrefix!1134 lt!459172 lt!459185))))

(assert (= (and bs!336601 res!622846) b!1381455))

(declare-fun m!1554399 () Bool)

(assert (=> bs!336601 m!1554399))

(declare-fun m!1554401 () Bool)

(assert (=> b!1381455 m!1554401))

(assert (=> d!394490 d!394614))

(check-sat (not d!394586) (not b!1381283) b_and!92577 (not bm!92495) (not d!394542) b_and!92579 (not b!1381230) (not b!1381294) (not d!394486) (not d!394588) (not b!1381295) (not b_next!34257) (not b_next!34259) (not b_lambda!42553) (not b!1381386) (not d!394488) (not b!1381143) (not b!1381231) (not d!394576) (not d!394540) (not b!1381389) (not d!394492) (not b!1381419) (not b!1381281) (not b_next!34261) (not b!1381225) (not b!1381445) (not b!1381393) (not b_lambda!42557) (not b!1381358) b_and!92565 (not b!1381138) (not d!394498) (not b_lambda!42551) (not b!1381444) (not b!1381119) (not b!1381383) (not d!394536) (not b!1381282) (not d!394534) (not tb!72527) (not b!1381149) (not b!1381452) (not d!394580) (not d!394554) (not b_next!34265) (not b!1381133) (not d!394538) (not b!1381455) (not b!1381454) (not b!1381381) (not b!1381226) (not d!394508) b_and!92567 (not b!1381390) (not b_lambda!42549) (not d!394524) b_and!92531 (not d!394520) (not b!1381160) (not b!1381126) (not b!1381245) (not b!1381357) (not b!1381163) (not d!394570) (not b!1381382) (not b!1381150) (not b!1381449) (not d!394578) (not b!1381388) (not b!1381355) (not b!1381152) (not b_lambda!42555) (not b!1381177) b_and!92527 (not d!394496) (not d!394572) (not d!394550) (not b_next!34263) (not b!1381296) (not b!1381453) (not b!1381120) (not b!1381135) (not b!1381229) (not b_lambda!42547) (not b!1381301) (not d!394512) (not b!1381151) (not bs!336601) (not b_next!34251) (not b!1381159) (not b!1381339) (not b!1381446) (not b!1381223) (not d!394584) (not b!1381429) (not b!1381356) (not b!1381248) (not d!394490) (not d!394564) tp_is_empty!6761 (not b!1381359) (not b!1381387) (not b!1381443) (not b_lambda!42559) b_and!92523 (not b!1381174) (not bs!336599) (not b!1381178) (not b!1381244) (not b!1381448) b_and!92569 (not d!394556) (not b!1381302) (not b!1381154) (not b!1381249) (not d!394500) (not b!1381144) (not tb!72521) (not d!394502) (not b!1381450) (not b_next!34253) (not d!394494) (not b_next!34255) (not b!1381428))
(check-sat b_and!92579 (not b_next!34261) b_and!92565 (not b_next!34265) b_and!92577 b_and!92567 b_and!92531 b_and!92527 (not b_next!34263) (not b_next!34251) b_and!92523 b_and!92569 (not b_next!34253) (not b_next!34255) (not b_next!34257) (not b_next!34259))
