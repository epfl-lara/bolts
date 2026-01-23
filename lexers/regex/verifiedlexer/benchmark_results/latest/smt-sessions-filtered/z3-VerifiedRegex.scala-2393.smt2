; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121978 () Bool)

(assert start!121978)

(declare-fun b!1356557 () Bool)

(declare-fun b_free!33027 () Bool)

(declare-fun b_next!33731 () Bool)

(assert (=> b!1356557 (= b_free!33027 (not b_next!33731))))

(declare-fun tp!391500 () Bool)

(declare-fun b_and!90803 () Bool)

(assert (=> b!1356557 (= tp!391500 b_and!90803)))

(declare-fun b_free!33029 () Bool)

(declare-fun b_next!33733 () Bool)

(assert (=> b!1356557 (= b_free!33029 (not b_next!33733))))

(declare-fun tp!391501 () Bool)

(declare-fun b_and!90805 () Bool)

(assert (=> b!1356557 (= tp!391501 b_and!90805)))

(declare-fun b!1356541 () Bool)

(declare-fun b_free!33031 () Bool)

(declare-fun b_next!33735 () Bool)

(assert (=> b!1356541 (= b_free!33031 (not b_next!33735))))

(declare-fun tp!391502 () Bool)

(declare-fun b_and!90807 () Bool)

(assert (=> b!1356541 (= tp!391502 b_and!90807)))

(declare-fun b_free!33033 () Bool)

(declare-fun b_next!33737 () Bool)

(assert (=> b!1356541 (= b_free!33033 (not b_next!33737))))

(declare-fun tp!391492 () Bool)

(declare-fun b_and!90809 () Bool)

(assert (=> b!1356541 (= tp!391492 b_and!90809)))

(declare-fun b!1356535 () Bool)

(declare-fun b_free!33035 () Bool)

(declare-fun b_next!33739 () Bool)

(assert (=> b!1356535 (= b_free!33035 (not b_next!33739))))

(declare-fun tp!391497 () Bool)

(declare-fun b_and!90811 () Bool)

(assert (=> b!1356535 (= tp!391497 b_and!90811)))

(declare-fun b_free!33037 () Bool)

(declare-fun b_next!33741 () Bool)

(assert (=> b!1356535 (= b_free!33037 (not b_next!33741))))

(declare-fun tp!391493 () Bool)

(declare-fun b_and!90813 () Bool)

(assert (=> b!1356535 (= tp!391493 b_and!90813)))

(declare-fun b!1356540 () Bool)

(assert (=> b!1356540 true))

(assert (=> b!1356540 true))

(declare-fun b!1356548 () Bool)

(assert (=> b!1356548 true))

(declare-fun b!1356539 () Bool)

(assert (=> b!1356539 true))

(declare-fun e!868111 () Bool)

(assert (=> b!1356535 (= e!868111 (and tp!391497 tp!391493))))

(declare-fun b!1356536 () Bool)

(declare-fun e!868130 () Bool)

(declare-fun e!868121 () Bool)

(assert (=> b!1356536 (= e!868130 e!868121)))

(declare-fun res!611199 () Bool)

(assert (=> b!1356536 (=> res!611199 e!868121)))

(declare-datatypes ((C!7708 0))(
  ( (C!7709 (val!4414 Int)) )
))
(declare-datatypes ((List!13888 0))(
  ( (Nil!13822) (Cons!13822 (h!19223 C!7708) (t!120391 List!13888)) )
))
(declare-fun lt!449243 () List!13888)

(declare-fun lt!449250 () C!7708)

(declare-fun contains!2561 (List!13888 C!7708) Bool)

(assert (=> b!1356536 (= res!611199 (not (contains!2561 lt!449243 lt!449250)))))

(declare-datatypes ((IArray!9109 0))(
  ( (IArray!9110 (innerList!4612 List!13888)) )
))
(declare-datatypes ((Conc!4552 0))(
  ( (Node!4552 (left!11839 Conc!4552) (right!12169 Conc!4552) (csize!9334 Int) (cheight!4763 Int)) (Leaf!6946 (xs!7275 IArray!9109) (csize!9335 Int)) (Empty!4552) )
))
(declare-datatypes ((BalanceConc!9044 0))(
  ( (BalanceConc!9045 (c!222576 Conc!4552)) )
))
(declare-fun lt!449253 () BalanceConc!9044)

(declare-fun apply!3337 (BalanceConc!9044 Int) C!7708)

(assert (=> b!1356536 (= lt!449250 (apply!3337 lt!449253 0))))

(declare-fun b!1356537 () Bool)

(declare-fun e!868124 () Bool)

(declare-fun e!868110 () Bool)

(assert (=> b!1356537 (= e!868124 e!868110)))

(declare-fun res!611194 () Bool)

(assert (=> b!1356537 (=> (not res!611194) (not e!868110))))

(declare-fun lt!449251 () BalanceConc!9044)

(declare-fun size!11303 (BalanceConc!9044) Int)

(assert (=> b!1356537 (= res!611194 (> (size!11303 lt!449251) 0))))

(declare-datatypes ((List!13889 0))(
  ( (Nil!13823) (Cons!13823 (h!19224 (_ BitVec 16)) (t!120392 List!13889)) )
))
(declare-datatypes ((TokenValue!2485 0))(
  ( (FloatLiteralValue!4970 (text!17840 List!13889)) (TokenValueExt!2484 (__x!8799 Int)) (Broken!12425 (value!77864 List!13889)) (Object!2550) (End!2485) (Def!2485) (Underscore!2485) (Match!2485) (Else!2485) (Error!2485) (Case!2485) (If!2485) (Extends!2485) (Abstract!2485) (Class!2485) (Val!2485) (DelimiterValue!4970 (del!2545 List!13889)) (KeywordValue!2491 (value!77865 List!13889)) (CommentValue!4970 (value!77866 List!13889)) (WhitespaceValue!4970 (value!77867 List!13889)) (IndentationValue!2485 (value!77868 List!13889)) (String!16660) (Int32!2485) (Broken!12426 (value!77869 List!13889)) (Boolean!2486) (Unit!19972) (OperatorValue!2488 (op!2545 List!13889)) (IdentifierValue!4970 (value!77870 List!13889)) (IdentifierValue!4971 (value!77871 List!13889)) (WhitespaceValue!4971 (value!77872 List!13889)) (True!4970) (False!4970) (Broken!12427 (value!77873 List!13889)) (Broken!12428 (value!77874 List!13889)) (True!4971) (RightBrace!2485) (RightBracket!2485) (Colon!2485) (Null!2485) (Comma!2485) (LeftBracket!2485) (False!4971) (LeftBrace!2485) (ImaginaryLiteralValue!2485 (text!17841 List!13889)) (StringLiteralValue!7455 (value!77875 List!13889)) (EOFValue!2485 (value!77876 List!13889)) (IdentValue!2485 (value!77877 List!13889)) (DelimiterValue!4971 (value!77878 List!13889)) (DedentValue!2485 (value!77879 List!13889)) (NewLineValue!2485 (value!77880 List!13889)) (IntegerValue!7455 (value!77881 (_ BitVec 32)) (text!17842 List!13889)) (IntegerValue!7456 (value!77882 Int) (text!17843 List!13889)) (Times!2485) (Or!2485) (Equal!2485) (Minus!2485) (Broken!12429 (value!77883 List!13889)) (And!2485) (Div!2485) (LessEqual!2485) (Mod!2485) (Concat!6194) (Not!2485) (Plus!2485) (SpaceValue!2485 (value!77884 List!13889)) (IntegerValue!7457 (value!77885 Int) (text!17844 List!13889)) (StringLiteralValue!7456 (text!17845 List!13889)) (FloatLiteralValue!4971 (text!17846 List!13889)) (BytesLiteralValue!2485 (value!77886 List!13889)) (CommentValue!4971 (value!77887 List!13889)) (StringLiteralValue!7457 (value!77888 List!13889)) (ErrorTokenValue!2485 (msg!2546 List!13889)) )
))
(declare-datatypes ((Regex!3709 0))(
  ( (ElementMatch!3709 (c!222577 C!7708)) (Concat!6195 (regOne!7930 Regex!3709) (regTwo!7930 Regex!3709)) (EmptyExpr!3709) (Star!3709 (reg!4038 Regex!3709)) (EmptyLang!3709) (Union!3709 (regOne!7931 Regex!3709) (regTwo!7931 Regex!3709)) )
))
(declare-datatypes ((String!16661 0))(
  ( (String!16662 (value!77889 String)) )
))
(declare-datatypes ((TokenValueInjection!4630 0))(
  ( (TokenValueInjection!4631 (toValue!3650 Int) (toChars!3509 Int)) )
))
(declare-datatypes ((Rule!4590 0))(
  ( (Rule!4591 (regex!2395 Regex!3709) (tag!2657 String!16661) (isSeparator!2395 Bool) (transformation!2395 TokenValueInjection!4630)) )
))
(declare-datatypes ((Token!4452 0))(
  ( (Token!4453 (value!77890 TokenValue!2485) (rule!4144 Rule!4590) (size!11304 Int) (originalCharacters!3257 List!13888)) )
))
(declare-fun t2!34 () Token!4452)

(declare-fun charsOf!1367 (Token!4452) BalanceConc!9044)

(assert (=> b!1356537 (= lt!449251 (charsOf!1367 t2!34))))

(declare-fun b!1356538 () Bool)

(declare-fun res!611197 () Bool)

(declare-fun e!868112 () Bool)

(assert (=> b!1356538 (=> res!611197 e!868112)))

(declare-datatypes ((List!13890 0))(
  ( (Nil!13824) (Cons!13824 (h!19225 Token!4452) (t!120393 List!13890)) )
))
(declare-datatypes ((IArray!9111 0))(
  ( (IArray!9112 (innerList!4613 List!13890)) )
))
(declare-datatypes ((Conc!4553 0))(
  ( (Node!4553 (left!11840 Conc!4553) (right!12170 Conc!4553) (csize!9336 Int) (cheight!4764 Int)) (Leaf!6947 (xs!7276 IArray!9111) (csize!9337 Int)) (Empty!4553) )
))
(declare-datatypes ((BalanceConc!9046 0))(
  ( (BalanceConc!9047 (c!222578 Conc!4553)) )
))
(declare-datatypes ((tuple2!13402 0))(
  ( (tuple2!13403 (_1!7587 BalanceConc!9046) (_2!7587 BalanceConc!9044)) )
))
(declare-fun lt!449244 () tuple2!13402)

(declare-fun isEmpty!8286 (BalanceConc!9044) Bool)

(assert (=> b!1356538 (= res!611197 (not (isEmpty!8286 (_2!7587 lt!449244))))))

(declare-fun e!868108 () Bool)

(declare-fun e!868128 () Bool)

(assert (=> b!1356539 (= e!868108 e!868128)))

(declare-fun res!611193 () Bool)

(assert (=> b!1356539 (=> res!611193 e!868128)))

(declare-datatypes ((List!13891 0))(
  ( (Nil!13825) (Cons!13825 (h!19226 Rule!4590) (t!120394 List!13891)) )
))
(declare-fun rules!2550 () List!13891)

(declare-fun lambda!57379 () Int)

(declare-fun exists!448 (List!13891 Int) Bool)

(assert (=> b!1356539 (= res!611193 (not (exists!448 rules!2550 lambda!57379)))))

(assert (=> b!1356539 (exists!448 rules!2550 lambda!57379)))

(declare-fun lt!449241 () Regex!3709)

(declare-datatypes ((Unit!19973 0))(
  ( (Unit!19974) )
))
(declare-fun lt!449258 () Unit!19973)

(declare-fun lambda!57377 () Int)

(declare-fun lemmaMapContains!114 (List!13891 Int Regex!3709) Unit!19973)

(assert (=> b!1356539 (= lt!449258 (lemmaMapContains!114 rules!2550 lambda!57377 lt!449241))))

(declare-fun e!868119 () Bool)

(declare-fun e!868131 () Bool)

(assert (=> b!1356540 (= e!868119 (not e!868131))))

(declare-fun res!611196 () Bool)

(assert (=> b!1356540 (=> res!611196 e!868131)))

(declare-fun lambda!57376 () Int)

(declare-fun Exists!861 (Int) Bool)

(assert (=> b!1356540 (= res!611196 (not (Exists!861 lambda!57376)))))

(assert (=> b!1356540 (Exists!861 lambda!57376)))

(declare-fun lt!449255 () Unit!19973)

(declare-fun lt!449246 () Regex!3709)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!179 (Regex!3709 List!13888) Unit!19973)

(assert (=> b!1356540 (= lt!449255 (lemmaPrefixMatchThenExistsStringThatMatches!179 lt!449246 lt!449243))))

(declare-fun e!868114 () Bool)

(assert (=> b!1356541 (= e!868114 (and tp!391502 tp!391492))))

(declare-fun b!1356542 () Bool)

(declare-fun res!611204 () Bool)

(assert (=> b!1356542 (=> res!611204 e!868121)))

(declare-fun lt!449252 () List!13888)

(assert (=> b!1356542 (= res!611204 (not (contains!2561 lt!449252 lt!449250)))))

(declare-fun b!1356543 () Bool)

(declare-fun e!868125 () Bool)

(assert (=> b!1356543 (= e!868112 e!868125)))

(declare-fun res!611207 () Bool)

(assert (=> b!1356543 (=> res!611207 e!868125)))

(declare-fun lt!449257 () tuple2!13402)

(declare-fun list!5298 (BalanceConc!9046) List!13890)

(assert (=> b!1356543 (= res!611207 (not (= (list!5298 (_1!7587 lt!449257)) (Cons!13824 t2!34 Nil!13824))))))

(declare-datatypes ((LexerInterface!2090 0))(
  ( (LexerInterfaceExt!2087 (__x!8800 Int)) (Lexer!2088) )
))
(declare-fun thiss!19762 () LexerInterface!2090)

(declare-fun lex!917 (LexerInterface!2090 List!13891 BalanceConc!9044) tuple2!13402)

(declare-fun print!856 (LexerInterface!2090 BalanceConc!9046) BalanceConc!9044)

(declare-fun singletonSeq!1016 (Token!4452) BalanceConc!9046)

(assert (=> b!1356543 (= lt!449257 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34))))))

(declare-fun b!1356544 () Bool)

(declare-fun res!611189 () Bool)

(assert (=> b!1356544 (=> (not res!611189) (not e!868110))))

(declare-fun sepAndNonSepRulesDisjointChars!768 (List!13891 List!13891) Bool)

(assert (=> b!1356544 (= res!611189 (sepAndNonSepRulesDisjointChars!768 rules!2550 rules!2550))))

(declare-fun b!1356545 () Bool)

(assert (=> b!1356545 (= e!868110 e!868119)))

(declare-fun res!611210 () Bool)

(assert (=> b!1356545 (=> (not res!611210) (not e!868119))))

(declare-fun prefixMatch!218 (Regex!3709 List!13888) Bool)

(assert (=> b!1356545 (= res!611210 (prefixMatch!218 lt!449246 lt!449243))))

(declare-fun rulesRegex!278 (LexerInterface!2090 List!13891) Regex!3709)

(assert (=> b!1356545 (= lt!449246 (rulesRegex!278 thiss!19762 rules!2550))))

(declare-fun lt!449249 () List!13888)

(declare-fun lt!449256 () C!7708)

(declare-fun ++!3558 (List!13888 List!13888) List!13888)

(assert (=> b!1356545 (= lt!449243 (++!3558 lt!449249 (Cons!13822 lt!449256 Nil!13822)))))

(assert (=> b!1356545 (= lt!449256 (apply!3337 lt!449251 0))))

(declare-fun list!5299 (BalanceConc!9044) List!13888)

(assert (=> b!1356545 (= lt!449249 (list!5299 lt!449253))))

(declare-fun t1!34 () Token!4452)

(assert (=> b!1356545 (= lt!449253 (charsOf!1367 t1!34))))

(declare-fun b!1356546 () Bool)

(declare-fun e!868129 () Bool)

(declare-fun e!868122 () Bool)

(declare-fun tp!391498 () Bool)

(assert (=> b!1356546 (= e!868129 (and e!868122 tp!391498))))

(declare-fun e!868115 () Bool)

(declare-fun b!1356547 () Bool)

(declare-fun tp!391499 () Bool)

(declare-fun inv!18164 (String!16661) Bool)

(declare-fun inv!18167 (TokenValueInjection!4630) Bool)

(assert (=> b!1356547 (= e!868115 (and tp!391499 (inv!18164 (tag!2657 (rule!4144 t1!34))) (inv!18167 (transformation!2395 (rule!4144 t1!34))) e!868114))))

(declare-fun e!868116 () Bool)

(assert (=> b!1356548 (= e!868121 e!868116)))

(declare-fun res!611205 () Bool)

(assert (=> b!1356548 (=> res!611205 e!868116)))

(declare-fun lambda!57378 () Int)

(declare-datatypes ((List!13892 0))(
  ( (Nil!13826) (Cons!13826 (h!19227 Regex!3709) (t!120395 List!13892)) )
))
(declare-fun exists!449 (List!13892 Int) Bool)

(declare-fun map!3053 (List!13891 Int) List!13892)

(assert (=> b!1356548 (= res!611205 (not (exists!449 (map!3053 rules!2550 lambda!57377) lambda!57378)))))

(declare-fun lt!449254 () List!13892)

(assert (=> b!1356548 (exists!449 lt!449254 lambda!57378)))

(declare-fun lt!449247 () Unit!19973)

(declare-fun matchRGenUnionSpec!126 (Regex!3709 List!13892 List!13888) Unit!19973)

(assert (=> b!1356548 (= lt!449247 (matchRGenUnionSpec!126 lt!449246 lt!449254 lt!449252))))

(assert (=> b!1356548 (= lt!449254 (map!3053 rules!2550 lambda!57377))))

(declare-fun b!1356549 () Bool)

(declare-fun res!611185 () Bool)

(assert (=> b!1356549 (=> (not res!611185) (not e!868124))))

(declare-fun isEmpty!8287 (List!13891) Bool)

(assert (=> b!1356549 (= res!611185 (not (isEmpty!8287 rules!2550)))))

(declare-fun tp!391494 () Bool)

(declare-fun b!1356550 () Bool)

(assert (=> b!1356550 (= e!868122 (and tp!391494 (inv!18164 (tag!2657 (h!19226 rules!2550))) (inv!18167 (transformation!2395 (h!19226 rules!2550))) e!868111))))

(declare-fun b!1356551 () Bool)

(declare-fun res!611187 () Bool)

(assert (=> b!1356551 (=> res!611187 e!868121)))

(assert (=> b!1356551 (= res!611187 (not (contains!2561 lt!449243 lt!449256)))))

(declare-fun b!1356552 () Bool)

(declare-fun res!611203 () Bool)

(assert (=> b!1356552 (=> res!611203 e!868112)))

(declare-fun contains!2562 (List!13891 Rule!4590) Bool)

(assert (=> b!1356552 (= res!611203 (not (contains!2562 rules!2550 (rule!4144 t1!34))))))

(declare-fun b!1356553 () Bool)

(declare-fun res!611209 () Bool)

(assert (=> b!1356553 (=> (not res!611209) (not e!868110))))

(declare-fun separableTokensPredicate!373 (LexerInterface!2090 Token!4452 Token!4452 List!13891) Bool)

(assert (=> b!1356553 (= res!611209 (not (separableTokensPredicate!373 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1356554 () Bool)

(declare-fun tp!391496 () Bool)

(declare-fun e!868123 () Bool)

(declare-fun inv!21 (TokenValue!2485) Bool)

(assert (=> b!1356554 (= e!868123 (and (inv!21 (value!77890 t1!34)) e!868115 tp!391496))))

(declare-fun b!1356555 () Bool)

(declare-fun res!611206 () Bool)

(assert (=> b!1356555 (=> res!611206 e!868121)))

(declare-fun matchR!1702 (Regex!3709 List!13888) Bool)

(assert (=> b!1356555 (= res!611206 (not (matchR!1702 lt!449246 lt!449252)))))

(declare-fun b!1356556 () Bool)

(declare-fun res!611202 () Bool)

(assert (=> b!1356556 (=> res!611202 e!868112)))

(declare-datatypes ((tuple2!13404 0))(
  ( (tuple2!13405 (_1!7588 Token!4452) (_2!7588 List!13888)) )
))
(declare-datatypes ((Option!2650 0))(
  ( (None!2649) (Some!2649 (v!21383 tuple2!13404)) )
))
(declare-fun maxPrefix!1072 (LexerInterface!2090 List!13891 List!13888) Option!2650)

(assert (=> b!1356556 (= res!611202 (not (= (maxPrefix!1072 thiss!19762 rules!2550 lt!449249) (Some!2649 (tuple2!13405 t1!34 Nil!13822)))))))

(declare-fun e!868127 () Bool)

(assert (=> b!1356557 (= e!868127 (and tp!391500 tp!391501))))

(declare-fun b!1356558 () Bool)

(declare-fun res!611200 () Bool)

(assert (=> b!1356558 (=> res!611200 e!868121)))

(assert (=> b!1356558 (= res!611200 (not (contains!2561 lt!449252 lt!449256)))))

(declare-fun b!1356559 () Bool)

(declare-fun res!611192 () Bool)

(assert (=> b!1356559 (=> (not res!611192) (not e!868124))))

(declare-fun rulesInvariant!1960 (LexerInterface!2090 List!13891) Bool)

(assert (=> b!1356559 (= res!611192 (rulesInvariant!1960 thiss!19762 rules!2550))))

(declare-fun b!1356560 () Bool)

(assert (=> b!1356560 (= e!868125 (isEmpty!8286 (_2!7587 lt!449257)))))

(declare-fun e!868118 () Bool)

(declare-fun tp!391495 () Bool)

(declare-fun b!1356561 () Bool)

(assert (=> b!1356561 (= e!868118 (and tp!391495 (inv!18164 (tag!2657 (rule!4144 t2!34))) (inv!18167 (transformation!2395 (rule!4144 t2!34))) e!868127))))

(declare-fun b!1356562 () Bool)

(declare-fun res!611186 () Bool)

(assert (=> b!1356562 (=> (not res!611186) (not e!868124))))

(declare-fun rulesProduceIndividualToken!1059 (LexerInterface!2090 List!13891 Token!4452) Bool)

(assert (=> b!1356562 (= res!611186 (rulesProduceIndividualToken!1059 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1356563 () Bool)

(declare-fun res!611195 () Bool)

(assert (=> b!1356563 (=> (not res!611195) (not e!868124))))

(assert (=> b!1356563 (= res!611195 (rulesProduceIndividualToken!1059 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1356564 () Bool)

(declare-fun res!611191 () Bool)

(assert (=> b!1356564 (=> (not res!611191) (not e!868124))))

(assert (=> b!1356564 (= res!611191 (not (= (isSeparator!2395 (rule!4144 t1!34)) (isSeparator!2395 (rule!4144 t2!34)))))))

(declare-fun b!1356565 () Bool)

(declare-fun res!611190 () Bool)

(assert (=> b!1356565 (=> res!611190 e!868112)))

(declare-fun lt!449248 () BalanceConc!9044)

(declare-fun lt!449245 () List!13890)

(declare-datatypes ((tuple2!13406 0))(
  ( (tuple2!13407 (_1!7589 List!13890) (_2!7589 List!13888)) )
))
(declare-fun lexList!608 (LexerInterface!2090 List!13891 List!13888) tuple2!13406)

(assert (=> b!1356565 (= res!611190 (not (= (lexList!608 thiss!19762 rules!2550 (list!5299 lt!449248)) (tuple2!13407 lt!449245 Nil!13822))))))

(declare-fun b!1356566 () Bool)

(assert (=> b!1356566 (= e!868128 e!868112)))

(declare-fun res!611198 () Bool)

(assert (=> b!1356566 (=> res!611198 e!868112)))

(assert (=> b!1356566 (= res!611198 (not (= (list!5298 (_1!7587 lt!449244)) lt!449245)))))

(assert (=> b!1356566 (= lt!449245 (Cons!13824 t1!34 Nil!13824))))

(assert (=> b!1356566 (= lt!449244 (lex!917 thiss!19762 rules!2550 lt!449248))))

(assert (=> b!1356566 (= lt!449248 (print!856 thiss!19762 (singletonSeq!1016 t1!34)))))

(declare-fun lt!449242 () Rule!4590)

(declare-fun getWitness!336 (List!13891 Int) Rule!4590)

(assert (=> b!1356566 (= lt!449242 (getWitness!336 rules!2550 lambda!57379))))

(declare-fun b!1356567 () Bool)

(assert (=> b!1356567 (= e!868131 e!868130)))

(declare-fun res!611201 () Bool)

(assert (=> b!1356567 (=> res!611201 e!868130)))

(declare-fun getSuffix!557 (List!13888 List!13888) List!13888)

(assert (=> b!1356567 (= res!611201 (not (= lt!449252 (++!3558 lt!449243 (getSuffix!557 lt!449252 lt!449243)))))))

(declare-fun pickWitness!164 (Int) List!13888)

(assert (=> b!1356567 (= lt!449252 (pickWitness!164 lambda!57376))))

(declare-fun b!1356568 () Bool)

(assert (=> b!1356568 (= e!868116 e!868108)))

(declare-fun res!611208 () Bool)

(assert (=> b!1356568 (=> res!611208 e!868108)))

(declare-fun contains!2563 (List!13892 Regex!3709) Bool)

(assert (=> b!1356568 (= res!611208 (not (contains!2563 (map!3053 rules!2550 lambda!57377) lt!449241)))))

(declare-fun getWitness!337 (List!13892 Int) Regex!3709)

(assert (=> b!1356568 (= lt!449241 (getWitness!337 (map!3053 rules!2550 lambda!57377) lambda!57378))))

(declare-fun tp!391491 () Bool)

(declare-fun b!1356569 () Bool)

(declare-fun e!868120 () Bool)

(assert (=> b!1356569 (= e!868120 (and (inv!21 (value!77890 t2!34)) e!868118 tp!391491))))

(declare-fun res!611188 () Bool)

(assert (=> start!121978 (=> (not res!611188) (not e!868124))))

(get-info :version)

(assert (=> start!121978 (= res!611188 ((_ is Lexer!2088) thiss!19762))))

(assert (=> start!121978 e!868124))

(assert (=> start!121978 true))

(assert (=> start!121978 e!868129))

(declare-fun inv!18168 (Token!4452) Bool)

(assert (=> start!121978 (and (inv!18168 t1!34) e!868123)))

(assert (=> start!121978 (and (inv!18168 t2!34) e!868120)))

(assert (= (and start!121978 res!611188) b!1356549))

(assert (= (and b!1356549 res!611185) b!1356559))

(assert (= (and b!1356559 res!611192) b!1356562))

(assert (= (and b!1356562 res!611186) b!1356563))

(assert (= (and b!1356563 res!611195) b!1356564))

(assert (= (and b!1356564 res!611191) b!1356537))

(assert (= (and b!1356537 res!611194) b!1356544))

(assert (= (and b!1356544 res!611189) b!1356553))

(assert (= (and b!1356553 res!611209) b!1356545))

(assert (= (and b!1356545 res!611210) b!1356540))

(assert (= (and b!1356540 (not res!611196)) b!1356567))

(assert (= (and b!1356567 (not res!611201)) b!1356536))

(assert (= (and b!1356536 (not res!611199)) b!1356542))

(assert (= (and b!1356542 (not res!611204)) b!1356551))

(assert (= (and b!1356551 (not res!611187)) b!1356558))

(assert (= (and b!1356558 (not res!611200)) b!1356555))

(assert (= (and b!1356555 (not res!611206)) b!1356548))

(assert (= (and b!1356548 (not res!611205)) b!1356568))

(assert (= (and b!1356568 (not res!611208)) b!1356539))

(assert (= (and b!1356539 (not res!611193)) b!1356566))

(assert (= (and b!1356566 (not res!611198)) b!1356538))

(assert (= (and b!1356538 (not res!611197)) b!1356565))

(assert (= (and b!1356565 (not res!611190)) b!1356556))

(assert (= (and b!1356556 (not res!611202)) b!1356552))

(assert (= (and b!1356552 (not res!611203)) b!1356543))

(assert (= (and b!1356543 (not res!611207)) b!1356560))

(assert (= b!1356550 b!1356535))

(assert (= b!1356546 b!1356550))

(assert (= (and start!121978 ((_ is Cons!13825) rules!2550)) b!1356546))

(assert (= b!1356547 b!1356541))

(assert (= b!1356554 b!1356547))

(assert (= start!121978 b!1356554))

(assert (= b!1356561 b!1356557))

(assert (= b!1356569 b!1356561))

(assert (= start!121978 b!1356569))

(declare-fun m!1519079 () Bool)

(assert (=> b!1356542 m!1519079))

(declare-fun m!1519081 () Bool)

(assert (=> b!1356553 m!1519081))

(declare-fun m!1519083 () Bool)

(assert (=> b!1356561 m!1519083))

(declare-fun m!1519085 () Bool)

(assert (=> b!1356561 m!1519085))

(declare-fun m!1519087 () Bool)

(assert (=> b!1356563 m!1519087))

(declare-fun m!1519089 () Bool)

(assert (=> b!1356552 m!1519089))

(declare-fun m!1519091 () Bool)

(assert (=> b!1356568 m!1519091))

(assert (=> b!1356568 m!1519091))

(declare-fun m!1519093 () Bool)

(assert (=> b!1356568 m!1519093))

(assert (=> b!1356568 m!1519091))

(assert (=> b!1356568 m!1519091))

(declare-fun m!1519095 () Bool)

(assert (=> b!1356568 m!1519095))

(declare-fun m!1519097 () Bool)

(assert (=> b!1356559 m!1519097))

(declare-fun m!1519099 () Bool)

(assert (=> b!1356565 m!1519099))

(assert (=> b!1356565 m!1519099))

(declare-fun m!1519101 () Bool)

(assert (=> b!1356565 m!1519101))

(declare-fun m!1519103 () Bool)

(assert (=> b!1356550 m!1519103))

(declare-fun m!1519105 () Bool)

(assert (=> b!1356550 m!1519105))

(declare-fun m!1519107 () Bool)

(assert (=> start!121978 m!1519107))

(declare-fun m!1519109 () Bool)

(assert (=> start!121978 m!1519109))

(declare-fun m!1519111 () Bool)

(assert (=> b!1356540 m!1519111))

(assert (=> b!1356540 m!1519111))

(declare-fun m!1519113 () Bool)

(assert (=> b!1356540 m!1519113))

(declare-fun m!1519115 () Bool)

(assert (=> b!1356558 m!1519115))

(declare-fun m!1519117 () Bool)

(assert (=> b!1356560 m!1519117))

(declare-fun m!1519119 () Bool)

(assert (=> b!1356556 m!1519119))

(declare-fun m!1519121 () Bool)

(assert (=> b!1356536 m!1519121))

(declare-fun m!1519123 () Bool)

(assert (=> b!1356536 m!1519123))

(declare-fun m!1519125 () Bool)

(assert (=> b!1356537 m!1519125))

(declare-fun m!1519127 () Bool)

(assert (=> b!1356537 m!1519127))

(declare-fun m!1519129 () Bool)

(assert (=> b!1356555 m!1519129))

(declare-fun m!1519131 () Bool)

(assert (=> b!1356551 m!1519131))

(declare-fun m!1519133 () Bool)

(assert (=> b!1356545 m!1519133))

(declare-fun m!1519135 () Bool)

(assert (=> b!1356545 m!1519135))

(declare-fun m!1519137 () Bool)

(assert (=> b!1356545 m!1519137))

(declare-fun m!1519139 () Bool)

(assert (=> b!1356545 m!1519139))

(declare-fun m!1519141 () Bool)

(assert (=> b!1356545 m!1519141))

(declare-fun m!1519143 () Bool)

(assert (=> b!1356545 m!1519143))

(declare-fun m!1519145 () Bool)

(assert (=> b!1356562 m!1519145))

(declare-fun m!1519147 () Bool)

(assert (=> b!1356548 m!1519147))

(assert (=> b!1356548 m!1519091))

(declare-fun m!1519149 () Bool)

(assert (=> b!1356548 m!1519149))

(assert (=> b!1356548 m!1519091))

(assert (=> b!1356548 m!1519091))

(declare-fun m!1519151 () Bool)

(assert (=> b!1356548 m!1519151))

(declare-fun m!1519153 () Bool)

(assert (=> b!1356547 m!1519153))

(declare-fun m!1519155 () Bool)

(assert (=> b!1356547 m!1519155))

(declare-fun m!1519157 () Bool)

(assert (=> b!1356566 m!1519157))

(declare-fun m!1519159 () Bool)

(assert (=> b!1356566 m!1519159))

(declare-fun m!1519161 () Bool)

(assert (=> b!1356566 m!1519161))

(declare-fun m!1519163 () Bool)

(assert (=> b!1356566 m!1519163))

(assert (=> b!1356566 m!1519159))

(declare-fun m!1519165 () Bool)

(assert (=> b!1356566 m!1519165))

(declare-fun m!1519167 () Bool)

(assert (=> b!1356544 m!1519167))

(declare-fun m!1519169 () Bool)

(assert (=> b!1356567 m!1519169))

(assert (=> b!1356567 m!1519169))

(declare-fun m!1519171 () Bool)

(assert (=> b!1356567 m!1519171))

(declare-fun m!1519173 () Bool)

(assert (=> b!1356567 m!1519173))

(declare-fun m!1519175 () Bool)

(assert (=> b!1356569 m!1519175))

(declare-fun m!1519177 () Bool)

(assert (=> b!1356538 m!1519177))

(declare-fun m!1519179 () Bool)

(assert (=> b!1356539 m!1519179))

(assert (=> b!1356539 m!1519179))

(declare-fun m!1519181 () Bool)

(assert (=> b!1356539 m!1519181))

(declare-fun m!1519183 () Bool)

(assert (=> b!1356554 m!1519183))

(declare-fun m!1519185 () Bool)

(assert (=> b!1356543 m!1519185))

(declare-fun m!1519187 () Bool)

(assert (=> b!1356543 m!1519187))

(assert (=> b!1356543 m!1519187))

(declare-fun m!1519189 () Bool)

(assert (=> b!1356543 m!1519189))

(assert (=> b!1356543 m!1519189))

(declare-fun m!1519191 () Bool)

(assert (=> b!1356543 m!1519191))

(declare-fun m!1519193 () Bool)

(assert (=> b!1356549 m!1519193))

(check-sat b_and!90803 (not b!1356537) (not b!1356540) (not b!1356546) (not b!1356547) (not b!1356558) (not b!1356567) (not b!1356548) (not b_next!33735) (not b!1356543) b_and!90811 (not b!1356538) (not b!1356539) (not b!1356569) (not b!1356553) b_and!90805 (not b!1356544) (not b!1356554) (not b!1356565) (not b_next!33739) b_and!90809 (not start!121978) (not b!1356561) (not b!1356549) (not b!1356563) (not b!1356542) (not b!1356566) (not b!1356562) (not b!1356536) (not b!1356545) (not b_next!33737) b_and!90813 (not b!1356560) (not b!1356552) (not b_next!33741) (not b!1356568) (not b!1356550) (not b!1356551) (not b!1356555) (not b!1356559) b_and!90807 (not b!1356556) (not b_next!33731) (not b_next!33733))
(check-sat b_and!90803 (not b_next!33735) b_and!90811 b_and!90805 (not b_next!33739) b_and!90809 (not b_next!33741) b_and!90807 (not b_next!33737) b_and!90813 (not b_next!33731) (not b_next!33733))
(get-model)

(declare-fun d!384376 () Bool)

(declare-fun lt!449261 () C!7708)

(declare-fun apply!3339 (List!13888 Int) C!7708)

(assert (=> d!384376 (= lt!449261 (apply!3339 (list!5299 lt!449251) 0))))

(declare-fun apply!3340 (Conc!4552 Int) C!7708)

(assert (=> d!384376 (= lt!449261 (apply!3340 (c!222576 lt!449251) 0))))

(declare-fun e!868135 () Bool)

(assert (=> d!384376 e!868135))

(declare-fun res!611221 () Bool)

(assert (=> d!384376 (=> (not res!611221) (not e!868135))))

(assert (=> d!384376 (= res!611221 (<= 0 0))))

(assert (=> d!384376 (= (apply!3337 lt!449251 0) lt!449261)))

(declare-fun b!1356580 () Bool)

(assert (=> b!1356580 (= e!868135 (< 0 (size!11303 lt!449251)))))

(assert (= (and d!384376 res!611221) b!1356580))

(declare-fun m!1519195 () Bool)

(assert (=> d!384376 m!1519195))

(assert (=> d!384376 m!1519195))

(declare-fun m!1519197 () Bool)

(assert (=> d!384376 m!1519197))

(declare-fun m!1519199 () Bool)

(assert (=> d!384376 m!1519199))

(assert (=> b!1356580 m!1519125))

(assert (=> b!1356545 d!384376))

(declare-fun d!384378 () Bool)

(declare-fun list!5301 (Conc!4552) List!13888)

(assert (=> d!384378 (= (list!5299 lt!449253) (list!5301 (c!222576 lt!449253)))))

(declare-fun bs!333945 () Bool)

(assert (= bs!333945 d!384378))

(declare-fun m!1519201 () Bool)

(assert (=> bs!333945 m!1519201))

(assert (=> b!1356545 d!384378))

(declare-fun d!384380 () Bool)

(declare-fun c!222581 () Bool)

(declare-fun isEmpty!8289 (List!13888) Bool)

(assert (=> d!384380 (= c!222581 (isEmpty!8289 lt!449243))))

(declare-fun e!868138 () Bool)

(assert (=> d!384380 (= (prefixMatch!218 lt!449246 lt!449243) e!868138)))

(declare-fun b!1356585 () Bool)

(declare-fun lostCause!322 (Regex!3709) Bool)

(assert (=> b!1356585 (= e!868138 (not (lostCause!322 lt!449246)))))

(declare-fun b!1356586 () Bool)

(declare-fun derivativeStep!946 (Regex!3709 C!7708) Regex!3709)

(declare-fun head!2430 (List!13888) C!7708)

(declare-fun tail!1960 (List!13888) List!13888)

(assert (=> b!1356586 (= e!868138 (prefixMatch!218 (derivativeStep!946 lt!449246 (head!2430 lt!449243)) (tail!1960 lt!449243)))))

(assert (= (and d!384380 c!222581) b!1356585))

(assert (= (and d!384380 (not c!222581)) b!1356586))

(declare-fun m!1519203 () Bool)

(assert (=> d!384380 m!1519203))

(declare-fun m!1519205 () Bool)

(assert (=> b!1356585 m!1519205))

(declare-fun m!1519207 () Bool)

(assert (=> b!1356586 m!1519207))

(assert (=> b!1356586 m!1519207))

(declare-fun m!1519209 () Bool)

(assert (=> b!1356586 m!1519209))

(declare-fun m!1519211 () Bool)

(assert (=> b!1356586 m!1519211))

(assert (=> b!1356586 m!1519209))

(assert (=> b!1356586 m!1519211))

(declare-fun m!1519213 () Bool)

(assert (=> b!1356586 m!1519213))

(assert (=> b!1356545 d!384380))

(declare-fun d!384382 () Bool)

(declare-fun lt!449264 () BalanceConc!9044)

(assert (=> d!384382 (= (list!5299 lt!449264) (originalCharacters!3257 t1!34))))

(declare-fun dynLambda!6190 (Int TokenValue!2485) BalanceConc!9044)

(assert (=> d!384382 (= lt!449264 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (value!77890 t1!34)))))

(assert (=> d!384382 (= (charsOf!1367 t1!34) lt!449264)))

(declare-fun b_lambda!40831 () Bool)

(assert (=> (not b_lambda!40831) (not d!384382)))

(declare-fun tb!71265 () Bool)

(declare-fun t!120397 () Bool)

(assert (=> (and b!1356557 (= (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toChars!3509 (transformation!2395 (rule!4144 t1!34)))) t!120397) tb!71265))

(declare-fun b!1356591 () Bool)

(declare-fun e!868141 () Bool)

(declare-fun tp!391505 () Bool)

(declare-fun inv!18169 (Conc!4552) Bool)

(assert (=> b!1356591 (= e!868141 (and (inv!18169 (c!222576 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (value!77890 t1!34)))) tp!391505))))

(declare-fun result!86630 () Bool)

(declare-fun inv!18170 (BalanceConc!9044) Bool)

(assert (=> tb!71265 (= result!86630 (and (inv!18170 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (value!77890 t1!34))) e!868141))))

(assert (= tb!71265 b!1356591))

(declare-fun m!1519215 () Bool)

(assert (=> b!1356591 m!1519215))

(declare-fun m!1519217 () Bool)

(assert (=> tb!71265 m!1519217))

(assert (=> d!384382 t!120397))

(declare-fun b_and!90815 () Bool)

(assert (= b_and!90805 (and (=> t!120397 result!86630) b_and!90815)))

(declare-fun t!120399 () Bool)

(declare-fun tb!71267 () Bool)

(assert (=> (and b!1356541 (= (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toChars!3509 (transformation!2395 (rule!4144 t1!34)))) t!120399) tb!71267))

(declare-fun result!86634 () Bool)

(assert (= result!86634 result!86630))

(assert (=> d!384382 t!120399))

(declare-fun b_and!90817 () Bool)

(assert (= b_and!90809 (and (=> t!120399 result!86634) b_and!90817)))

(declare-fun tb!71269 () Bool)

(declare-fun t!120401 () Bool)

(assert (=> (and b!1356535 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t1!34)))) t!120401) tb!71269))

(declare-fun result!86636 () Bool)

(assert (= result!86636 result!86630))

(assert (=> d!384382 t!120401))

(declare-fun b_and!90819 () Bool)

(assert (= b_and!90813 (and (=> t!120401 result!86636) b_and!90819)))

(declare-fun m!1519219 () Bool)

(assert (=> d!384382 m!1519219))

(declare-fun m!1519221 () Bool)

(assert (=> d!384382 m!1519221))

(assert (=> b!1356545 d!384382))

(declare-fun b!1356603 () Bool)

(declare-fun e!868146 () Bool)

(declare-fun lt!449267 () List!13888)

(assert (=> b!1356603 (= e!868146 (or (not (= (Cons!13822 lt!449256 Nil!13822) Nil!13822)) (= lt!449267 lt!449249)))))

(declare-fun b!1356601 () Bool)

(declare-fun e!868147 () List!13888)

(assert (=> b!1356601 (= e!868147 (Cons!13822 (h!19223 lt!449249) (++!3558 (t!120391 lt!449249) (Cons!13822 lt!449256 Nil!13822))))))

(declare-fun b!1356602 () Bool)

(declare-fun res!611227 () Bool)

(assert (=> b!1356602 (=> (not res!611227) (not e!868146))))

(declare-fun size!11308 (List!13888) Int)

(assert (=> b!1356602 (= res!611227 (= (size!11308 lt!449267) (+ (size!11308 lt!449249) (size!11308 (Cons!13822 lt!449256 Nil!13822)))))))

(declare-fun b!1356600 () Bool)

(assert (=> b!1356600 (= e!868147 (Cons!13822 lt!449256 Nil!13822))))

(declare-fun d!384384 () Bool)

(assert (=> d!384384 e!868146))

(declare-fun res!611226 () Bool)

(assert (=> d!384384 (=> (not res!611226) (not e!868146))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1994 (List!13888) (InoxSet C!7708))

(assert (=> d!384384 (= res!611226 (= (content!1994 lt!449267) ((_ map or) (content!1994 lt!449249) (content!1994 (Cons!13822 lt!449256 Nil!13822)))))))

(assert (=> d!384384 (= lt!449267 e!868147)))

(declare-fun c!222584 () Bool)

(assert (=> d!384384 (= c!222584 ((_ is Nil!13822) lt!449249))))

(assert (=> d!384384 (= (++!3558 lt!449249 (Cons!13822 lt!449256 Nil!13822)) lt!449267)))

(assert (= (and d!384384 c!222584) b!1356600))

(assert (= (and d!384384 (not c!222584)) b!1356601))

(assert (= (and d!384384 res!611226) b!1356602))

(assert (= (and b!1356602 res!611227) b!1356603))

(declare-fun m!1519223 () Bool)

(assert (=> b!1356601 m!1519223))

(declare-fun m!1519225 () Bool)

(assert (=> b!1356602 m!1519225))

(declare-fun m!1519227 () Bool)

(assert (=> b!1356602 m!1519227))

(declare-fun m!1519229 () Bool)

(assert (=> b!1356602 m!1519229))

(declare-fun m!1519231 () Bool)

(assert (=> d!384384 m!1519231))

(declare-fun m!1519233 () Bool)

(assert (=> d!384384 m!1519233))

(declare-fun m!1519235 () Bool)

(assert (=> d!384384 m!1519235))

(assert (=> b!1356545 d!384384))

(declare-fun bs!333946 () Bool)

(declare-fun d!384386 () Bool)

(assert (= bs!333946 (and d!384386 b!1356548)))

(declare-fun lambda!57382 () Int)

(assert (=> bs!333946 (= lambda!57382 lambda!57377)))

(declare-fun lt!449270 () Unit!19973)

(declare-fun lemma!116 (List!13891 LexerInterface!2090 List!13891) Unit!19973)

(assert (=> d!384386 (= lt!449270 (lemma!116 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!124 (List!13892) Regex!3709)

(assert (=> d!384386 (= (rulesRegex!278 thiss!19762 rules!2550) (generalisedUnion!124 (map!3053 rules!2550 lambda!57382)))))

(declare-fun bs!333947 () Bool)

(assert (= bs!333947 d!384386))

(declare-fun m!1519237 () Bool)

(assert (=> bs!333947 m!1519237))

(declare-fun m!1519239 () Bool)

(assert (=> bs!333947 m!1519239))

(assert (=> bs!333947 m!1519239))

(declare-fun m!1519241 () Bool)

(assert (=> bs!333947 m!1519241))

(assert (=> b!1356545 d!384386))

(declare-fun d!384388 () Bool)

(declare-fun e!868190 () Bool)

(assert (=> d!384388 e!868190))

(declare-fun res!611265 () Bool)

(assert (=> d!384388 (=> (not res!611265) (not e!868190))))

(declare-fun e!868191 () Bool)

(assert (=> d!384388 (= res!611265 e!868191)))

(declare-fun c!222599 () Bool)

(declare-fun lt!449306 () tuple2!13402)

(declare-fun size!11309 (BalanceConc!9046) Int)

(assert (=> d!384388 (= c!222599 (> (size!11309 (_1!7587 lt!449306)) 0))))

(declare-fun lexTailRecV2!402 (LexerInterface!2090 List!13891 BalanceConc!9044 BalanceConc!9044 BalanceConc!9044 BalanceConc!9046) tuple2!13402)

(assert (=> d!384388 (= lt!449306 (lexTailRecV2!402 thiss!19762 rules!2550 lt!449248 (BalanceConc!9045 Empty!4552) lt!449248 (BalanceConc!9047 Empty!4553)))))

(assert (=> d!384388 (= (lex!917 thiss!19762 rules!2550 lt!449248) lt!449306)))

(declare-fun b!1356667 () Bool)

(assert (=> b!1356667 (= e!868191 (= (_2!7587 lt!449306) lt!449248))))

(declare-fun b!1356668 () Bool)

(declare-fun e!868189 () Bool)

(assert (=> b!1356668 (= e!868191 e!868189)))

(declare-fun res!611264 () Bool)

(assert (=> b!1356668 (= res!611264 (< (size!11303 (_2!7587 lt!449306)) (size!11303 lt!449248)))))

(assert (=> b!1356668 (=> (not res!611264) (not e!868189))))

(declare-fun b!1356669 () Bool)

(assert (=> b!1356669 (= e!868190 (= (list!5299 (_2!7587 lt!449306)) (_2!7589 (lexList!608 thiss!19762 rules!2550 (list!5299 lt!449248)))))))

(declare-fun b!1356670 () Bool)

(declare-fun isEmpty!8291 (BalanceConc!9046) Bool)

(assert (=> b!1356670 (= e!868189 (not (isEmpty!8291 (_1!7587 lt!449306))))))

(declare-fun b!1356671 () Bool)

(declare-fun res!611263 () Bool)

(assert (=> b!1356671 (=> (not res!611263) (not e!868190))))

(assert (=> b!1356671 (= res!611263 (= (list!5298 (_1!7587 lt!449306)) (_1!7589 (lexList!608 thiss!19762 rules!2550 (list!5299 lt!449248)))))))

(assert (= (and d!384388 c!222599) b!1356668))

(assert (= (and d!384388 (not c!222599)) b!1356667))

(assert (= (and b!1356668 res!611264) b!1356670))

(assert (= (and d!384388 res!611265) b!1356671))

(assert (= (and b!1356671 res!611263) b!1356669))

(declare-fun m!1519313 () Bool)

(assert (=> b!1356671 m!1519313))

(assert (=> b!1356671 m!1519099))

(assert (=> b!1356671 m!1519099))

(assert (=> b!1356671 m!1519101))

(declare-fun m!1519315 () Bool)

(assert (=> b!1356669 m!1519315))

(assert (=> b!1356669 m!1519099))

(assert (=> b!1356669 m!1519099))

(assert (=> b!1356669 m!1519101))

(declare-fun m!1519317 () Bool)

(assert (=> d!384388 m!1519317))

(declare-fun m!1519319 () Bool)

(assert (=> d!384388 m!1519319))

(declare-fun m!1519321 () Bool)

(assert (=> b!1356668 m!1519321))

(declare-fun m!1519323 () Bool)

(assert (=> b!1356668 m!1519323))

(declare-fun m!1519325 () Bool)

(assert (=> b!1356670 m!1519325))

(assert (=> b!1356566 d!384388))

(declare-fun b!1356706 () Bool)

(declare-fun lt!449314 () Unit!19973)

(declare-fun Unit!19975 () Unit!19973)

(assert (=> b!1356706 (= lt!449314 Unit!19975)))

(assert (=> b!1356706 false))

(declare-fun e!868216 () Rule!4590)

(declare-fun head!2431 (List!13891) Rule!4590)

(assert (=> b!1356706 (= e!868216 (head!2431 rules!2550))))

(declare-fun b!1356707 () Bool)

(assert (=> b!1356707 (= e!868216 (getWitness!336 (t!120394 rules!2550) lambda!57379))))

(declare-fun b!1356708 () Bool)

(declare-fun e!868219 () Rule!4590)

(assert (=> b!1356708 (= e!868219 e!868216)))

(declare-fun c!222610 () Bool)

(assert (=> b!1356708 (= c!222610 ((_ is Cons!13825) rules!2550))))

(declare-fun b!1356709 () Bool)

(declare-fun e!868218 () Bool)

(declare-fun dynLambda!6191 (Int Rule!4590) Bool)

(assert (=> b!1356709 (= e!868218 (dynLambda!6191 lambda!57379 (h!19226 rules!2550)))))

(declare-fun d!384412 () Bool)

(declare-fun e!868217 () Bool)

(assert (=> d!384412 e!868217))

(declare-fun res!611281 () Bool)

(assert (=> d!384412 (=> (not res!611281) (not e!868217))))

(declare-fun lt!449313 () Rule!4590)

(assert (=> d!384412 (= res!611281 (dynLambda!6191 lambda!57379 lt!449313))))

(assert (=> d!384412 (= lt!449313 e!868219)))

(declare-fun c!222611 () Bool)

(assert (=> d!384412 (= c!222611 e!868218)))

(declare-fun res!611280 () Bool)

(assert (=> d!384412 (=> (not res!611280) (not e!868218))))

(assert (=> d!384412 (= res!611280 ((_ is Cons!13825) rules!2550))))

(assert (=> d!384412 (exists!448 rules!2550 lambda!57379)))

(assert (=> d!384412 (= (getWitness!336 rules!2550 lambda!57379) lt!449313)))

(declare-fun b!1356710 () Bool)

(assert (=> b!1356710 (= e!868217 (contains!2562 rules!2550 lt!449313))))

(declare-fun b!1356711 () Bool)

(assert (=> b!1356711 (= e!868219 (h!19226 rules!2550))))

(assert (= (and d!384412 res!611280) b!1356709))

(assert (= (and d!384412 c!222611) b!1356711))

(assert (= (and d!384412 (not c!222611)) b!1356708))

(assert (= (and b!1356708 c!222610) b!1356707))

(assert (= (and b!1356708 (not c!222610)) b!1356706))

(assert (= (and d!384412 res!611281) b!1356710))

(declare-fun b_lambda!40835 () Bool)

(assert (=> (not b_lambda!40835) (not b!1356709)))

(declare-fun b_lambda!40837 () Bool)

(assert (=> (not b_lambda!40837) (not d!384412)))

(declare-fun m!1519337 () Bool)

(assert (=> d!384412 m!1519337))

(assert (=> d!384412 m!1519179))

(declare-fun m!1519339 () Bool)

(assert (=> b!1356707 m!1519339))

(declare-fun m!1519341 () Bool)

(assert (=> b!1356709 m!1519341))

(declare-fun m!1519343 () Bool)

(assert (=> b!1356706 m!1519343))

(declare-fun m!1519345 () Bool)

(assert (=> b!1356710 m!1519345))

(assert (=> b!1356566 d!384412))

(declare-fun d!384420 () Bool)

(declare-fun lt!449318 () BalanceConc!9044)

(declare-fun printList!597 (LexerInterface!2090 List!13890) List!13888)

(assert (=> d!384420 (= (list!5299 lt!449318) (printList!597 thiss!19762 (list!5298 (singletonSeq!1016 t1!34))))))

(declare-fun printTailRec!579 (LexerInterface!2090 BalanceConc!9046 Int BalanceConc!9044) BalanceConc!9044)

(assert (=> d!384420 (= lt!449318 (printTailRec!579 thiss!19762 (singletonSeq!1016 t1!34) 0 (BalanceConc!9045 Empty!4552)))))

(assert (=> d!384420 (= (print!856 thiss!19762 (singletonSeq!1016 t1!34)) lt!449318)))

(declare-fun bs!333953 () Bool)

(assert (= bs!333953 d!384420))

(declare-fun m!1519353 () Bool)

(assert (=> bs!333953 m!1519353))

(assert (=> bs!333953 m!1519159))

(declare-fun m!1519355 () Bool)

(assert (=> bs!333953 m!1519355))

(assert (=> bs!333953 m!1519355))

(declare-fun m!1519357 () Bool)

(assert (=> bs!333953 m!1519357))

(assert (=> bs!333953 m!1519159))

(declare-fun m!1519359 () Bool)

(assert (=> bs!333953 m!1519359))

(assert (=> b!1356566 d!384420))

(declare-fun d!384424 () Bool)

(declare-fun list!5302 (Conc!4553) List!13890)

(assert (=> d!384424 (= (list!5298 (_1!7587 lt!449244)) (list!5302 (c!222578 (_1!7587 lt!449244))))))

(declare-fun bs!333954 () Bool)

(assert (= bs!333954 d!384424))

(declare-fun m!1519361 () Bool)

(assert (=> bs!333954 m!1519361))

(assert (=> b!1356566 d!384424))

(declare-fun d!384426 () Bool)

(declare-fun e!868224 () Bool)

(assert (=> d!384426 e!868224))

(declare-fun res!611286 () Bool)

(assert (=> d!384426 (=> (not res!611286) (not e!868224))))

(declare-fun lt!449321 () BalanceConc!9046)

(assert (=> d!384426 (= res!611286 (= (list!5298 lt!449321) (Cons!13824 t1!34 Nil!13824)))))

(declare-fun singleton!435 (Token!4452) BalanceConc!9046)

(assert (=> d!384426 (= lt!449321 (singleton!435 t1!34))))

(assert (=> d!384426 (= (singletonSeq!1016 t1!34) lt!449321)))

(declare-fun b!1356716 () Bool)

(declare-fun isBalanced!1329 (Conc!4553) Bool)

(assert (=> b!1356716 (= e!868224 (isBalanced!1329 (c!222578 lt!449321)))))

(assert (= (and d!384426 res!611286) b!1356716))

(declare-fun m!1519363 () Bool)

(assert (=> d!384426 m!1519363))

(declare-fun m!1519365 () Bool)

(assert (=> d!384426 m!1519365))

(declare-fun m!1519367 () Bool)

(assert (=> b!1356716 m!1519367))

(assert (=> b!1356566 d!384426))

(declare-fun lt!449322 () List!13888)

(declare-fun e!868225 () Bool)

(declare-fun b!1356720 () Bool)

(assert (=> b!1356720 (= e!868225 (or (not (= (getSuffix!557 lt!449252 lt!449243) Nil!13822)) (= lt!449322 lt!449243)))))

(declare-fun b!1356718 () Bool)

(declare-fun e!868226 () List!13888)

(assert (=> b!1356718 (= e!868226 (Cons!13822 (h!19223 lt!449243) (++!3558 (t!120391 lt!449243) (getSuffix!557 lt!449252 lt!449243))))))

(declare-fun b!1356719 () Bool)

(declare-fun res!611288 () Bool)

(assert (=> b!1356719 (=> (not res!611288) (not e!868225))))

(assert (=> b!1356719 (= res!611288 (= (size!11308 lt!449322) (+ (size!11308 lt!449243) (size!11308 (getSuffix!557 lt!449252 lt!449243)))))))

(declare-fun b!1356717 () Bool)

(assert (=> b!1356717 (= e!868226 (getSuffix!557 lt!449252 lt!449243))))

(declare-fun d!384428 () Bool)

(assert (=> d!384428 e!868225))

(declare-fun res!611287 () Bool)

(assert (=> d!384428 (=> (not res!611287) (not e!868225))))

(assert (=> d!384428 (= res!611287 (= (content!1994 lt!449322) ((_ map or) (content!1994 lt!449243) (content!1994 (getSuffix!557 lt!449252 lt!449243)))))))

(assert (=> d!384428 (= lt!449322 e!868226)))

(declare-fun c!222612 () Bool)

(assert (=> d!384428 (= c!222612 ((_ is Nil!13822) lt!449243))))

(assert (=> d!384428 (= (++!3558 lt!449243 (getSuffix!557 lt!449252 lt!449243)) lt!449322)))

(assert (= (and d!384428 c!222612) b!1356717))

(assert (= (and d!384428 (not c!222612)) b!1356718))

(assert (= (and d!384428 res!611287) b!1356719))

(assert (= (and b!1356719 res!611288) b!1356720))

(assert (=> b!1356718 m!1519169))

(declare-fun m!1519369 () Bool)

(assert (=> b!1356718 m!1519369))

(declare-fun m!1519371 () Bool)

(assert (=> b!1356719 m!1519371))

(declare-fun m!1519373 () Bool)

(assert (=> b!1356719 m!1519373))

(assert (=> b!1356719 m!1519169))

(declare-fun m!1519375 () Bool)

(assert (=> b!1356719 m!1519375))

(declare-fun m!1519377 () Bool)

(assert (=> d!384428 m!1519377))

(declare-fun m!1519379 () Bool)

(assert (=> d!384428 m!1519379))

(assert (=> d!384428 m!1519169))

(declare-fun m!1519381 () Bool)

(assert (=> d!384428 m!1519381))

(assert (=> b!1356567 d!384428))

(declare-fun d!384430 () Bool)

(declare-fun lt!449325 () List!13888)

(assert (=> d!384430 (= (++!3558 lt!449243 lt!449325) lt!449252)))

(declare-fun e!868229 () List!13888)

(assert (=> d!384430 (= lt!449325 e!868229)))

(declare-fun c!222615 () Bool)

(assert (=> d!384430 (= c!222615 ((_ is Cons!13822) lt!449243))))

(assert (=> d!384430 (>= (size!11308 lt!449252) (size!11308 lt!449243))))

(assert (=> d!384430 (= (getSuffix!557 lt!449252 lt!449243) lt!449325)))

(declare-fun b!1356725 () Bool)

(assert (=> b!1356725 (= e!868229 (getSuffix!557 (tail!1960 lt!449252) (t!120391 lt!449243)))))

(declare-fun b!1356726 () Bool)

(assert (=> b!1356726 (= e!868229 lt!449252)))

(assert (= (and d!384430 c!222615) b!1356725))

(assert (= (and d!384430 (not c!222615)) b!1356726))

(declare-fun m!1519383 () Bool)

(assert (=> d!384430 m!1519383))

(declare-fun m!1519385 () Bool)

(assert (=> d!384430 m!1519385))

(assert (=> d!384430 m!1519373))

(declare-fun m!1519387 () Bool)

(assert (=> b!1356725 m!1519387))

(assert (=> b!1356725 m!1519387))

(declare-fun m!1519389 () Bool)

(assert (=> b!1356725 m!1519389))

(assert (=> b!1356567 d!384430))

(declare-fun d!384432 () Bool)

(declare-fun lt!449328 () List!13888)

(declare-fun dynLambda!6192 (Int List!13888) Bool)

(assert (=> d!384432 (dynLambda!6192 lambda!57376 lt!449328)))

(declare-fun choose!8345 (Int) List!13888)

(assert (=> d!384432 (= lt!449328 (choose!8345 lambda!57376))))

(assert (=> d!384432 (Exists!861 lambda!57376)))

(assert (=> d!384432 (= (pickWitness!164 lambda!57376) lt!449328)))

(declare-fun b_lambda!40839 () Bool)

(assert (=> (not b_lambda!40839) (not d!384432)))

(declare-fun bs!333955 () Bool)

(assert (= bs!333955 d!384432))

(declare-fun m!1519391 () Bool)

(assert (=> bs!333955 m!1519391))

(declare-fun m!1519393 () Bool)

(assert (=> bs!333955 m!1519393))

(assert (=> bs!333955 m!1519111))

(assert (=> b!1356567 d!384432))

(declare-fun d!384434 () Bool)

(assert (=> d!384434 (= (inv!18164 (tag!2657 (rule!4144 t1!34))) (= (mod (str.len (value!77889 (tag!2657 (rule!4144 t1!34)))) 2) 0))))

(assert (=> b!1356547 d!384434))

(declare-fun d!384436 () Bool)

(declare-fun res!611297 () Bool)

(declare-fun e!868238 () Bool)

(assert (=> d!384436 (=> (not res!611297) (not e!868238))))

(declare-fun semiInverseModEq!918 (Int Int) Bool)

(assert (=> d!384436 (= res!611297 (semiInverseModEq!918 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toValue!3650 (transformation!2395 (rule!4144 t1!34)))))))

(assert (=> d!384436 (= (inv!18167 (transformation!2395 (rule!4144 t1!34))) e!868238)))

(declare-fun b!1356737 () Bool)

(declare-fun equivClasses!877 (Int Int) Bool)

(assert (=> b!1356737 (= e!868238 (equivClasses!877 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toValue!3650 (transformation!2395 (rule!4144 t1!34)))))))

(assert (= (and d!384436 res!611297) b!1356737))

(declare-fun m!1519395 () Bool)

(assert (=> d!384436 m!1519395))

(declare-fun m!1519397 () Bool)

(assert (=> b!1356737 m!1519397))

(assert (=> b!1356547 d!384436))

(declare-fun d!384438 () Bool)

(declare-fun lt!449341 () Bool)

(declare-fun content!1995 (List!13892) (InoxSet Regex!3709))

(assert (=> d!384438 (= lt!449341 (select (content!1995 (map!3053 rules!2550 lambda!57377)) lt!449241))))

(declare-fun e!868243 () Bool)

(assert (=> d!384438 (= lt!449341 e!868243)))

(declare-fun res!611311 () Bool)

(assert (=> d!384438 (=> (not res!611311) (not e!868243))))

(assert (=> d!384438 (= res!611311 ((_ is Cons!13826) (map!3053 rules!2550 lambda!57377)))))

(assert (=> d!384438 (= (contains!2563 (map!3053 rules!2550 lambda!57377) lt!449241) lt!449341)))

(declare-fun b!1356752 () Bool)

(declare-fun e!868244 () Bool)

(assert (=> b!1356752 (= e!868243 e!868244)))

(declare-fun res!611310 () Bool)

(assert (=> b!1356752 (=> res!611310 e!868244)))

(assert (=> b!1356752 (= res!611310 (= (h!19227 (map!3053 rules!2550 lambda!57377)) lt!449241))))

(declare-fun b!1356753 () Bool)

(assert (=> b!1356753 (= e!868244 (contains!2563 (t!120395 (map!3053 rules!2550 lambda!57377)) lt!449241))))

(assert (= (and d!384438 res!611311) b!1356752))

(assert (= (and b!1356752 (not res!611310)) b!1356753))

(assert (=> d!384438 m!1519091))

(declare-fun m!1519399 () Bool)

(assert (=> d!384438 m!1519399))

(declare-fun m!1519401 () Bool)

(assert (=> d!384438 m!1519401))

(declare-fun m!1519403 () Bool)

(assert (=> b!1356753 m!1519403))

(assert (=> b!1356568 d!384438))

(declare-fun d!384440 () Bool)

(declare-fun lt!449349 () List!13892)

(declare-fun size!11310 (List!13892) Int)

(declare-fun size!11311 (List!13891) Int)

(assert (=> d!384440 (= (size!11310 lt!449349) (size!11311 rules!2550))))

(declare-fun e!868250 () List!13892)

(assert (=> d!384440 (= lt!449349 e!868250)))

(declare-fun c!222621 () Bool)

(assert (=> d!384440 (= c!222621 ((_ is Nil!13825) rules!2550))))

(assert (=> d!384440 (= (map!3053 rules!2550 lambda!57377) lt!449349)))

(declare-fun b!1356767 () Bool)

(assert (=> b!1356767 (= e!868250 Nil!13826)))

(declare-fun b!1356768 () Bool)

(declare-fun $colon$colon!190 (List!13892 Regex!3709) List!13892)

(declare-fun dynLambda!6194 (Int Rule!4590) Regex!3709)

(assert (=> b!1356768 (= e!868250 ($colon$colon!190 (map!3053 (t!120394 rules!2550) lambda!57377) (dynLambda!6194 lambda!57377 (h!19226 rules!2550))))))

(assert (= (and d!384440 c!222621) b!1356767))

(assert (= (and d!384440 (not c!222621)) b!1356768))

(declare-fun b_lambda!40841 () Bool)

(assert (=> (not b_lambda!40841) (not b!1356768)))

(declare-fun m!1519405 () Bool)

(assert (=> d!384440 m!1519405))

(declare-fun m!1519407 () Bool)

(assert (=> d!384440 m!1519407))

(declare-fun m!1519409 () Bool)

(assert (=> b!1356768 m!1519409))

(declare-fun m!1519411 () Bool)

(assert (=> b!1356768 m!1519411))

(assert (=> b!1356768 m!1519409))

(assert (=> b!1356768 m!1519411))

(declare-fun m!1519413 () Bool)

(assert (=> b!1356768 m!1519413))

(assert (=> b!1356568 d!384440))

(declare-fun b!1356783 () Bool)

(declare-fun lt!449355 () Unit!19973)

(declare-fun Unit!19976 () Unit!19973)

(assert (=> b!1356783 (= lt!449355 Unit!19976)))

(assert (=> b!1356783 false))

(declare-fun e!868264 () Regex!3709)

(declare-fun head!2432 (List!13892) Regex!3709)

(assert (=> b!1356783 (= e!868264 (head!2432 (map!3053 rules!2550 lambda!57377)))))

(declare-fun b!1356784 () Bool)

(declare-fun e!868262 () Regex!3709)

(assert (=> b!1356784 (= e!868262 (h!19227 (map!3053 rules!2550 lambda!57377)))))

(declare-fun b!1356785 () Bool)

(declare-fun lt!449356 () Regex!3709)

(declare-fun e!868263 () Bool)

(assert (=> b!1356785 (= e!868263 (contains!2563 (map!3053 rules!2550 lambda!57377) lt!449356))))

(declare-fun d!384442 () Bool)

(assert (=> d!384442 e!868263))

(declare-fun res!611326 () Bool)

(assert (=> d!384442 (=> (not res!611326) (not e!868263))))

(declare-fun dynLambda!6195 (Int Regex!3709) Bool)

(assert (=> d!384442 (= res!611326 (dynLambda!6195 lambda!57378 lt!449356))))

(assert (=> d!384442 (= lt!449356 e!868262)))

(declare-fun c!222626 () Bool)

(declare-fun e!868261 () Bool)

(assert (=> d!384442 (= c!222626 e!868261)))

(declare-fun res!611325 () Bool)

(assert (=> d!384442 (=> (not res!611325) (not e!868261))))

(assert (=> d!384442 (= res!611325 ((_ is Cons!13826) (map!3053 rules!2550 lambda!57377)))))

(assert (=> d!384442 (exists!449 (map!3053 rules!2550 lambda!57377) lambda!57378)))

(assert (=> d!384442 (= (getWitness!337 (map!3053 rules!2550 lambda!57377) lambda!57378) lt!449356)))

(declare-fun b!1356786 () Bool)

(assert (=> b!1356786 (= e!868261 (dynLambda!6195 lambda!57378 (h!19227 (map!3053 rules!2550 lambda!57377))))))

(declare-fun b!1356787 () Bool)

(assert (=> b!1356787 (= e!868262 e!868264)))

(declare-fun c!222627 () Bool)

(assert (=> b!1356787 (= c!222627 ((_ is Cons!13826) (map!3053 rules!2550 lambda!57377)))))

(declare-fun b!1356788 () Bool)

(assert (=> b!1356788 (= e!868264 (getWitness!337 (t!120395 (map!3053 rules!2550 lambda!57377)) lambda!57378))))

(assert (= (and d!384442 res!611325) b!1356786))

(assert (= (and d!384442 c!222626) b!1356784))

(assert (= (and d!384442 (not c!222626)) b!1356787))

(assert (= (and b!1356787 c!222627) b!1356788))

(assert (= (and b!1356787 (not c!222627)) b!1356783))

(assert (= (and d!384442 res!611326) b!1356785))

(declare-fun b_lambda!40843 () Bool)

(assert (=> (not b_lambda!40843) (not d!384442)))

(declare-fun b_lambda!40845 () Bool)

(assert (=> (not b_lambda!40845) (not b!1356786)))

(declare-fun m!1519455 () Bool)

(assert (=> b!1356788 m!1519455))

(assert (=> b!1356783 m!1519091))

(declare-fun m!1519457 () Bool)

(assert (=> b!1356783 m!1519457))

(declare-fun m!1519459 () Bool)

(assert (=> b!1356786 m!1519459))

(assert (=> b!1356785 m!1519091))

(declare-fun m!1519461 () Bool)

(assert (=> b!1356785 m!1519461))

(declare-fun m!1519463 () Bool)

(assert (=> d!384442 m!1519463))

(assert (=> d!384442 m!1519091))

(assert (=> d!384442 m!1519149))

(assert (=> b!1356568 d!384442))

(declare-fun d!384450 () Bool)

(declare-fun lt!449359 () Bool)

(assert (=> d!384450 (= lt!449359 (select (content!1994 lt!449252) lt!449250))))

(declare-fun e!868269 () Bool)

(assert (=> d!384450 (= lt!449359 e!868269)))

(declare-fun res!611332 () Bool)

(assert (=> d!384450 (=> (not res!611332) (not e!868269))))

(assert (=> d!384450 (= res!611332 ((_ is Cons!13822) lt!449252))))

(assert (=> d!384450 (= (contains!2561 lt!449252 lt!449250) lt!449359)))

(declare-fun b!1356793 () Bool)

(declare-fun e!868270 () Bool)

(assert (=> b!1356793 (= e!868269 e!868270)))

(declare-fun res!611331 () Bool)

(assert (=> b!1356793 (=> res!611331 e!868270)))

(assert (=> b!1356793 (= res!611331 (= (h!19223 lt!449252) lt!449250))))

(declare-fun b!1356794 () Bool)

(assert (=> b!1356794 (= e!868270 (contains!2561 (t!120391 lt!449252) lt!449250))))

(assert (= (and d!384450 res!611332) b!1356793))

(assert (= (and b!1356793 (not res!611331)) b!1356794))

(declare-fun m!1519465 () Bool)

(assert (=> d!384450 m!1519465))

(declare-fun m!1519467 () Bool)

(assert (=> d!384450 m!1519467))

(declare-fun m!1519469 () Bool)

(assert (=> b!1356794 m!1519469))

(assert (=> b!1356542 d!384450))

(declare-fun d!384452 () Bool)

(assert (=> d!384452 (= (list!5298 (_1!7587 lt!449257)) (list!5302 (c!222578 (_1!7587 lt!449257))))))

(declare-fun bs!333957 () Bool)

(assert (= bs!333957 d!384452))

(declare-fun m!1519471 () Bool)

(assert (=> bs!333957 m!1519471))

(assert (=> b!1356543 d!384452))

(declare-fun d!384454 () Bool)

(declare-fun e!868272 () Bool)

(assert (=> d!384454 e!868272))

(declare-fun res!611335 () Bool)

(assert (=> d!384454 (=> (not res!611335) (not e!868272))))

(declare-fun e!868273 () Bool)

(assert (=> d!384454 (= res!611335 e!868273)))

(declare-fun c!222628 () Bool)

(declare-fun lt!449360 () tuple2!13402)

(assert (=> d!384454 (= c!222628 (> (size!11309 (_1!7587 lt!449360)) 0))))

(assert (=> d!384454 (= lt!449360 (lexTailRecV2!402 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34)) (BalanceConc!9045 Empty!4552) (print!856 thiss!19762 (singletonSeq!1016 t2!34)) (BalanceConc!9047 Empty!4553)))))

(assert (=> d!384454 (= (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34))) lt!449360)))

(declare-fun b!1356795 () Bool)

(assert (=> b!1356795 (= e!868273 (= (_2!7587 lt!449360) (print!856 thiss!19762 (singletonSeq!1016 t2!34))))))

(declare-fun b!1356796 () Bool)

(declare-fun e!868271 () Bool)

(assert (=> b!1356796 (= e!868273 e!868271)))

(declare-fun res!611334 () Bool)

(assert (=> b!1356796 (= res!611334 (< (size!11303 (_2!7587 lt!449360)) (size!11303 (print!856 thiss!19762 (singletonSeq!1016 t2!34)))))))

(assert (=> b!1356796 (=> (not res!611334) (not e!868271))))

(declare-fun b!1356797 () Bool)

(assert (=> b!1356797 (= e!868272 (= (list!5299 (_2!7587 lt!449360)) (_2!7589 (lexList!608 thiss!19762 rules!2550 (list!5299 (print!856 thiss!19762 (singletonSeq!1016 t2!34)))))))))

(declare-fun b!1356798 () Bool)

(assert (=> b!1356798 (= e!868271 (not (isEmpty!8291 (_1!7587 lt!449360))))))

(declare-fun b!1356799 () Bool)

(declare-fun res!611333 () Bool)

(assert (=> b!1356799 (=> (not res!611333) (not e!868272))))

(assert (=> b!1356799 (= res!611333 (= (list!5298 (_1!7587 lt!449360)) (_1!7589 (lexList!608 thiss!19762 rules!2550 (list!5299 (print!856 thiss!19762 (singletonSeq!1016 t2!34)))))))))

(assert (= (and d!384454 c!222628) b!1356796))

(assert (= (and d!384454 (not c!222628)) b!1356795))

(assert (= (and b!1356796 res!611334) b!1356798))

(assert (= (and d!384454 res!611335) b!1356799))

(assert (= (and b!1356799 res!611333) b!1356797))

(declare-fun m!1519473 () Bool)

(assert (=> b!1356799 m!1519473))

(assert (=> b!1356799 m!1519189))

(declare-fun m!1519475 () Bool)

(assert (=> b!1356799 m!1519475))

(assert (=> b!1356799 m!1519475))

(declare-fun m!1519477 () Bool)

(assert (=> b!1356799 m!1519477))

(declare-fun m!1519479 () Bool)

(assert (=> b!1356797 m!1519479))

(assert (=> b!1356797 m!1519189))

(assert (=> b!1356797 m!1519475))

(assert (=> b!1356797 m!1519475))

(assert (=> b!1356797 m!1519477))

(declare-fun m!1519481 () Bool)

(assert (=> d!384454 m!1519481))

(assert (=> d!384454 m!1519189))

(assert (=> d!384454 m!1519189))

(declare-fun m!1519483 () Bool)

(assert (=> d!384454 m!1519483))

(declare-fun m!1519485 () Bool)

(assert (=> b!1356796 m!1519485))

(assert (=> b!1356796 m!1519189))

(declare-fun m!1519487 () Bool)

(assert (=> b!1356796 m!1519487))

(declare-fun m!1519489 () Bool)

(assert (=> b!1356798 m!1519489))

(assert (=> b!1356543 d!384454))

(declare-fun d!384456 () Bool)

(declare-fun lt!449361 () BalanceConc!9044)

(assert (=> d!384456 (= (list!5299 lt!449361) (printList!597 thiss!19762 (list!5298 (singletonSeq!1016 t2!34))))))

(assert (=> d!384456 (= lt!449361 (printTailRec!579 thiss!19762 (singletonSeq!1016 t2!34) 0 (BalanceConc!9045 Empty!4552)))))

(assert (=> d!384456 (= (print!856 thiss!19762 (singletonSeq!1016 t2!34)) lt!449361)))

(declare-fun bs!333958 () Bool)

(assert (= bs!333958 d!384456))

(declare-fun m!1519491 () Bool)

(assert (=> bs!333958 m!1519491))

(assert (=> bs!333958 m!1519187))

(declare-fun m!1519493 () Bool)

(assert (=> bs!333958 m!1519493))

(assert (=> bs!333958 m!1519493))

(declare-fun m!1519495 () Bool)

(assert (=> bs!333958 m!1519495))

(assert (=> bs!333958 m!1519187))

(declare-fun m!1519497 () Bool)

(assert (=> bs!333958 m!1519497))

(assert (=> b!1356543 d!384456))

(declare-fun d!384458 () Bool)

(declare-fun e!868274 () Bool)

(assert (=> d!384458 e!868274))

(declare-fun res!611336 () Bool)

(assert (=> d!384458 (=> (not res!611336) (not e!868274))))

(declare-fun lt!449362 () BalanceConc!9046)

(assert (=> d!384458 (= res!611336 (= (list!5298 lt!449362) (Cons!13824 t2!34 Nil!13824)))))

(assert (=> d!384458 (= lt!449362 (singleton!435 t2!34))))

(assert (=> d!384458 (= (singletonSeq!1016 t2!34) lt!449362)))

(declare-fun b!1356800 () Bool)

(assert (=> b!1356800 (= e!868274 (isBalanced!1329 (c!222578 lt!449362)))))

(assert (= (and d!384458 res!611336) b!1356800))

(declare-fun m!1519499 () Bool)

(assert (=> d!384458 m!1519499))

(declare-fun m!1519501 () Bool)

(assert (=> d!384458 m!1519501))

(declare-fun m!1519503 () Bool)

(assert (=> b!1356800 m!1519503))

(assert (=> b!1356543 d!384458))

(declare-fun b!1356811 () Bool)

(declare-fun e!868282 () Bool)

(declare-fun e!868283 () Bool)

(assert (=> b!1356811 (= e!868282 e!868283)))

(declare-fun res!611339 () Bool)

(declare-fun lt!449371 () tuple2!13406)

(assert (=> b!1356811 (= res!611339 (< (size!11308 (_2!7589 lt!449371)) (size!11308 (list!5299 lt!449248))))))

(assert (=> b!1356811 (=> (not res!611339) (not e!868283))))

(declare-fun b!1356812 () Bool)

(declare-fun e!868281 () tuple2!13406)

(declare-fun lt!449370 () Option!2650)

(declare-fun lt!449369 () tuple2!13406)

(assert (=> b!1356812 (= e!868281 (tuple2!13407 (Cons!13824 (_1!7588 (v!21383 lt!449370)) (_1!7589 lt!449369)) (_2!7589 lt!449369)))))

(assert (=> b!1356812 (= lt!449369 (lexList!608 thiss!19762 rules!2550 (_2!7588 (v!21383 lt!449370))))))

(declare-fun b!1356813 () Bool)

(assert (=> b!1356813 (= e!868281 (tuple2!13407 Nil!13824 (list!5299 lt!449248)))))

(declare-fun b!1356814 () Bool)

(assert (=> b!1356814 (= e!868282 (= (_2!7589 lt!449371) (list!5299 lt!449248)))))

(declare-fun d!384460 () Bool)

(assert (=> d!384460 e!868282))

(declare-fun c!222634 () Bool)

(declare-fun size!11314 (List!13890) Int)

(assert (=> d!384460 (= c!222634 (> (size!11314 (_1!7589 lt!449371)) 0))))

(assert (=> d!384460 (= lt!449371 e!868281)))

(declare-fun c!222633 () Bool)

(assert (=> d!384460 (= c!222633 ((_ is Some!2649) lt!449370))))

(assert (=> d!384460 (= lt!449370 (maxPrefix!1072 thiss!19762 rules!2550 (list!5299 lt!449248)))))

(assert (=> d!384460 (= (lexList!608 thiss!19762 rules!2550 (list!5299 lt!449248)) lt!449371)))

(declare-fun b!1356815 () Bool)

(declare-fun isEmpty!8295 (List!13890) Bool)

(assert (=> b!1356815 (= e!868283 (not (isEmpty!8295 (_1!7589 lt!449371))))))

(assert (= (and d!384460 c!222633) b!1356812))

(assert (= (and d!384460 (not c!222633)) b!1356813))

(assert (= (and d!384460 c!222634) b!1356811))

(assert (= (and d!384460 (not c!222634)) b!1356814))

(assert (= (and b!1356811 res!611339) b!1356815))

(declare-fun m!1519505 () Bool)

(assert (=> b!1356811 m!1519505))

(assert (=> b!1356811 m!1519099))

(declare-fun m!1519507 () Bool)

(assert (=> b!1356811 m!1519507))

(declare-fun m!1519509 () Bool)

(assert (=> b!1356812 m!1519509))

(declare-fun m!1519511 () Bool)

(assert (=> d!384460 m!1519511))

(assert (=> d!384460 m!1519099))

(declare-fun m!1519513 () Bool)

(assert (=> d!384460 m!1519513))

(declare-fun m!1519515 () Bool)

(assert (=> b!1356815 m!1519515))

(assert (=> b!1356565 d!384460))

(declare-fun d!384462 () Bool)

(assert (=> d!384462 (= (list!5299 lt!449248) (list!5301 (c!222576 lt!449248)))))

(declare-fun bs!333959 () Bool)

(assert (= bs!333959 d!384462))

(declare-fun m!1519517 () Bool)

(assert (=> bs!333959 m!1519517))

(assert (=> b!1356565 d!384462))

(declare-fun d!384464 () Bool)

(declare-fun res!611344 () Bool)

(declare-fun e!868288 () Bool)

(assert (=> d!384464 (=> res!611344 e!868288)))

(assert (=> d!384464 (= res!611344 (not ((_ is Cons!13825) rules!2550)))))

(assert (=> d!384464 (= (sepAndNonSepRulesDisjointChars!768 rules!2550 rules!2550) e!868288)))

(declare-fun b!1356820 () Bool)

(declare-fun e!868289 () Bool)

(assert (=> b!1356820 (= e!868288 e!868289)))

(declare-fun res!611345 () Bool)

(assert (=> b!1356820 (=> (not res!611345) (not e!868289))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!359 (Rule!4590 List!13891) Bool)

(assert (=> b!1356820 (= res!611345 (ruleDisjointCharsFromAllFromOtherType!359 (h!19226 rules!2550) rules!2550))))

(declare-fun b!1356821 () Bool)

(assert (=> b!1356821 (= e!868289 (sepAndNonSepRulesDisjointChars!768 rules!2550 (t!120394 rules!2550)))))

(assert (= (and d!384464 (not res!611344)) b!1356820))

(assert (= (and b!1356820 res!611345) b!1356821))

(declare-fun m!1519519 () Bool)

(assert (=> b!1356820 m!1519519))

(declare-fun m!1519521 () Bool)

(assert (=> b!1356821 m!1519521))

(assert (=> b!1356544 d!384464))

(declare-fun d!384466 () Bool)

(assert (=> d!384466 (= (inv!18164 (tag!2657 (h!19226 rules!2550))) (= (mod (str.len (value!77889 (tag!2657 (h!19226 rules!2550)))) 2) 0))))

(assert (=> b!1356550 d!384466))

(declare-fun d!384468 () Bool)

(declare-fun res!611346 () Bool)

(declare-fun e!868290 () Bool)

(assert (=> d!384468 (=> (not res!611346) (not e!868290))))

(assert (=> d!384468 (= res!611346 (semiInverseModEq!918 (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toValue!3650 (transformation!2395 (h!19226 rules!2550)))))))

(assert (=> d!384468 (= (inv!18167 (transformation!2395 (h!19226 rules!2550))) e!868290)))

(declare-fun b!1356822 () Bool)

(assert (=> b!1356822 (= e!868290 (equivClasses!877 (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toValue!3650 (transformation!2395 (h!19226 rules!2550)))))))

(assert (= (and d!384468 res!611346) b!1356822))

(declare-fun m!1519523 () Bool)

(assert (=> d!384468 m!1519523))

(declare-fun m!1519525 () Bool)

(assert (=> b!1356822 m!1519525))

(assert (=> b!1356550 d!384468))

(declare-fun d!384470 () Bool)

(declare-fun lt!449372 () Bool)

(assert (=> d!384470 (= lt!449372 (select (content!1994 lt!449243) lt!449256))))

(declare-fun e!868291 () Bool)

(assert (=> d!384470 (= lt!449372 e!868291)))

(declare-fun res!611348 () Bool)

(assert (=> d!384470 (=> (not res!611348) (not e!868291))))

(assert (=> d!384470 (= res!611348 ((_ is Cons!13822) lt!449243))))

(assert (=> d!384470 (= (contains!2561 lt!449243 lt!449256) lt!449372)))

(declare-fun b!1356823 () Bool)

(declare-fun e!868292 () Bool)

(assert (=> b!1356823 (= e!868291 e!868292)))

(declare-fun res!611347 () Bool)

(assert (=> b!1356823 (=> res!611347 e!868292)))

(assert (=> b!1356823 (= res!611347 (= (h!19223 lt!449243) lt!449256))))

(declare-fun b!1356824 () Bool)

(assert (=> b!1356824 (= e!868292 (contains!2561 (t!120391 lt!449243) lt!449256))))

(assert (= (and d!384470 res!611348) b!1356823))

(assert (= (and b!1356823 (not res!611347)) b!1356824))

(assert (=> d!384470 m!1519379))

(declare-fun m!1519527 () Bool)

(assert (=> d!384470 m!1519527))

(declare-fun m!1519529 () Bool)

(assert (=> b!1356824 m!1519529))

(assert (=> b!1356551 d!384470))

(declare-fun d!384472 () Bool)

(declare-fun lt!449375 () Bool)

(declare-fun content!1997 (List!13891) (InoxSet Rule!4590))

(assert (=> d!384472 (= lt!449375 (select (content!1997 rules!2550) (rule!4144 t1!34)))))

(declare-fun e!868297 () Bool)

(assert (=> d!384472 (= lt!449375 e!868297)))

(declare-fun res!611354 () Bool)

(assert (=> d!384472 (=> (not res!611354) (not e!868297))))

(assert (=> d!384472 (= res!611354 ((_ is Cons!13825) rules!2550))))

(assert (=> d!384472 (= (contains!2562 rules!2550 (rule!4144 t1!34)) lt!449375)))

(declare-fun b!1356829 () Bool)

(declare-fun e!868298 () Bool)

(assert (=> b!1356829 (= e!868297 e!868298)))

(declare-fun res!611353 () Bool)

(assert (=> b!1356829 (=> res!611353 e!868298)))

(assert (=> b!1356829 (= res!611353 (= (h!19226 rules!2550) (rule!4144 t1!34)))))

(declare-fun b!1356830 () Bool)

(assert (=> b!1356830 (= e!868298 (contains!2562 (t!120394 rules!2550) (rule!4144 t1!34)))))

(assert (= (and d!384472 res!611354) b!1356829))

(assert (= (and b!1356829 (not res!611353)) b!1356830))

(declare-fun m!1519531 () Bool)

(assert (=> d!384472 m!1519531))

(declare-fun m!1519533 () Bool)

(assert (=> d!384472 m!1519533))

(declare-fun m!1519535 () Bool)

(assert (=> b!1356830 m!1519535))

(assert (=> b!1356552 d!384472))

(declare-fun d!384474 () Bool)

(declare-fun res!611359 () Bool)

(declare-fun e!868301 () Bool)

(assert (=> d!384474 (=> (not res!611359) (not e!868301))))

(assert (=> d!384474 (= res!611359 (not (isEmpty!8289 (originalCharacters!3257 t1!34))))))

(assert (=> d!384474 (= (inv!18168 t1!34) e!868301)))

(declare-fun b!1356835 () Bool)

(declare-fun res!611360 () Bool)

(assert (=> b!1356835 (=> (not res!611360) (not e!868301))))

(assert (=> b!1356835 (= res!611360 (= (originalCharacters!3257 t1!34) (list!5299 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (value!77890 t1!34)))))))

(declare-fun b!1356836 () Bool)

(assert (=> b!1356836 (= e!868301 (= (size!11304 t1!34) (size!11308 (originalCharacters!3257 t1!34))))))

(assert (= (and d!384474 res!611359) b!1356835))

(assert (= (and b!1356835 res!611360) b!1356836))

(declare-fun b_lambda!40847 () Bool)

(assert (=> (not b_lambda!40847) (not b!1356835)))

(assert (=> b!1356835 t!120397))

(declare-fun b_and!90821 () Bool)

(assert (= b_and!90815 (and (=> t!120397 result!86630) b_and!90821)))

(assert (=> b!1356835 t!120399))

(declare-fun b_and!90823 () Bool)

(assert (= b_and!90817 (and (=> t!120399 result!86634) b_and!90823)))

(assert (=> b!1356835 t!120401))

(declare-fun b_and!90825 () Bool)

(assert (= b_and!90819 (and (=> t!120401 result!86636) b_and!90825)))

(declare-fun m!1519537 () Bool)

(assert (=> d!384474 m!1519537))

(assert (=> b!1356835 m!1519221))

(assert (=> b!1356835 m!1519221))

(declare-fun m!1519539 () Bool)

(assert (=> b!1356835 m!1519539))

(declare-fun m!1519541 () Bool)

(assert (=> b!1356836 m!1519541))

(assert (=> start!121978 d!384474))

(declare-fun d!384476 () Bool)

(declare-fun res!611361 () Bool)

(declare-fun e!868302 () Bool)

(assert (=> d!384476 (=> (not res!611361) (not e!868302))))

(assert (=> d!384476 (= res!611361 (not (isEmpty!8289 (originalCharacters!3257 t2!34))))))

(assert (=> d!384476 (= (inv!18168 t2!34) e!868302)))

(declare-fun b!1356837 () Bool)

(declare-fun res!611362 () Bool)

(assert (=> b!1356837 (=> (not res!611362) (not e!868302))))

(assert (=> b!1356837 (= res!611362 (= (originalCharacters!3257 t2!34) (list!5299 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (value!77890 t2!34)))))))

(declare-fun b!1356838 () Bool)

(assert (=> b!1356838 (= e!868302 (= (size!11304 t2!34) (size!11308 (originalCharacters!3257 t2!34))))))

(assert (= (and d!384476 res!611361) b!1356837))

(assert (= (and b!1356837 res!611362) b!1356838))

(declare-fun b_lambda!40849 () Bool)

(assert (=> (not b_lambda!40849) (not b!1356837)))

(declare-fun t!120405 () Bool)

(declare-fun tb!71271 () Bool)

(assert (=> (and b!1356557 (= (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toChars!3509 (transformation!2395 (rule!4144 t2!34)))) t!120405) tb!71271))

(declare-fun b!1356839 () Bool)

(declare-fun e!868303 () Bool)

(declare-fun tp!391506 () Bool)

(assert (=> b!1356839 (= e!868303 (and (inv!18169 (c!222576 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (value!77890 t2!34)))) tp!391506))))

(declare-fun result!86638 () Bool)

(assert (=> tb!71271 (= result!86638 (and (inv!18170 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (value!77890 t2!34))) e!868303))))

(assert (= tb!71271 b!1356839))

(declare-fun m!1519543 () Bool)

(assert (=> b!1356839 m!1519543))

(declare-fun m!1519545 () Bool)

(assert (=> tb!71271 m!1519545))

(assert (=> b!1356837 t!120405))

(declare-fun b_and!90827 () Bool)

(assert (= b_and!90821 (and (=> t!120405 result!86638) b_and!90827)))

(declare-fun t!120407 () Bool)

(declare-fun tb!71273 () Bool)

(assert (=> (and b!1356541 (= (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toChars!3509 (transformation!2395 (rule!4144 t2!34)))) t!120407) tb!71273))

(declare-fun result!86640 () Bool)

(assert (= result!86640 result!86638))

(assert (=> b!1356837 t!120407))

(declare-fun b_and!90829 () Bool)

(assert (= b_and!90823 (and (=> t!120407 result!86640) b_and!90829)))

(declare-fun tb!71275 () Bool)

(declare-fun t!120409 () Bool)

(assert (=> (and b!1356535 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t2!34)))) t!120409) tb!71275))

(declare-fun result!86642 () Bool)

(assert (= result!86642 result!86638))

(assert (=> b!1356837 t!120409))

(declare-fun b_and!90831 () Bool)

(assert (= b_and!90825 (and (=> t!120409 result!86642) b_and!90831)))

(declare-fun m!1519547 () Bool)

(assert (=> d!384476 m!1519547))

(declare-fun m!1519549 () Bool)

(assert (=> b!1356837 m!1519549))

(assert (=> b!1356837 m!1519549))

(declare-fun m!1519551 () Bool)

(assert (=> b!1356837 m!1519551))

(declare-fun m!1519553 () Bool)

(assert (=> b!1356838 m!1519553))

(assert (=> start!121978 d!384476))

(declare-fun b!1356850 () Bool)

(declare-fun e!868310 () Bool)

(declare-fun inv!16 (TokenValue!2485) Bool)

(assert (=> b!1356850 (= e!868310 (inv!16 (value!77890 t2!34)))))

(declare-fun d!384478 () Bool)

(declare-fun c!222639 () Bool)

(assert (=> d!384478 (= c!222639 ((_ is IntegerValue!7455) (value!77890 t2!34)))))

(assert (=> d!384478 (= (inv!21 (value!77890 t2!34)) e!868310)))

(declare-fun b!1356851 () Bool)

(declare-fun e!868311 () Bool)

(declare-fun inv!17 (TokenValue!2485) Bool)

(assert (=> b!1356851 (= e!868311 (inv!17 (value!77890 t2!34)))))

(declare-fun b!1356852 () Bool)

(declare-fun e!868312 () Bool)

(declare-fun inv!15 (TokenValue!2485) Bool)

(assert (=> b!1356852 (= e!868312 (inv!15 (value!77890 t2!34)))))

(declare-fun b!1356853 () Bool)

(declare-fun res!611365 () Bool)

(assert (=> b!1356853 (=> res!611365 e!868312)))

(assert (=> b!1356853 (= res!611365 (not ((_ is IntegerValue!7457) (value!77890 t2!34))))))

(assert (=> b!1356853 (= e!868311 e!868312)))

(declare-fun b!1356854 () Bool)

(assert (=> b!1356854 (= e!868310 e!868311)))

(declare-fun c!222640 () Bool)

(assert (=> b!1356854 (= c!222640 ((_ is IntegerValue!7456) (value!77890 t2!34)))))

(assert (= (and d!384478 c!222639) b!1356850))

(assert (= (and d!384478 (not c!222639)) b!1356854))

(assert (= (and b!1356854 c!222640) b!1356851))

(assert (= (and b!1356854 (not c!222640)) b!1356853))

(assert (= (and b!1356853 (not res!611365)) b!1356852))

(declare-fun m!1519555 () Bool)

(assert (=> b!1356850 m!1519555))

(declare-fun m!1519557 () Bool)

(assert (=> b!1356851 m!1519557))

(declare-fun m!1519559 () Bool)

(assert (=> b!1356852 m!1519559))

(assert (=> b!1356569 d!384478))

(assert (=> b!1356548 d!384440))

(declare-fun bs!333960 () Bool)

(declare-fun d!384480 () Bool)

(assert (= bs!333960 (and d!384480 b!1356548)))

(declare-fun lambda!57388 () Int)

(assert (=> bs!333960 (not (= lambda!57388 lambda!57378))))

(assert (=> d!384480 true))

(declare-fun order!8351 () Int)

(declare-fun dynLambda!6200 (Int Int) Int)

(assert (=> d!384480 (< (dynLambda!6200 order!8351 lambda!57378) (dynLambda!6200 order!8351 lambda!57388))))

(declare-fun forall!3374 (List!13892 Int) Bool)

(assert (=> d!384480 (= (exists!449 lt!449254 lambda!57378) (not (forall!3374 lt!449254 lambda!57388)))))

(declare-fun bs!333961 () Bool)

(assert (= bs!333961 d!384480))

(declare-fun m!1519561 () Bool)

(assert (=> bs!333961 m!1519561))

(assert (=> b!1356548 d!384480))

(declare-fun bs!333962 () Bool)

(declare-fun d!384482 () Bool)

(assert (= bs!333962 (and d!384482 b!1356548)))

(declare-fun lambda!57393 () Int)

(assert (=> bs!333962 (not (= lambda!57393 lambda!57378))))

(declare-fun bs!333963 () Bool)

(assert (= bs!333963 (and d!384482 d!384480)))

(assert (=> bs!333963 (not (= lambda!57393 lambda!57388))))

(declare-fun lambda!57394 () Int)

(assert (=> bs!333962 (= lambda!57394 lambda!57378)))

(assert (=> bs!333963 (not (= lambda!57394 lambda!57388))))

(declare-fun bs!333964 () Bool)

(assert (= bs!333964 d!384482))

(assert (=> bs!333964 (not (= lambda!57394 lambda!57393))))

(assert (=> d!384482 true))

(assert (=> d!384482 (= (matchR!1702 lt!449246 lt!449252) (exists!449 lt!449254 lambda!57394))))

(declare-fun lt!449378 () Unit!19973)

(declare-fun choose!8347 (Regex!3709 List!13892 List!13888) Unit!19973)

(assert (=> d!384482 (= lt!449378 (choose!8347 lt!449246 lt!449254 lt!449252))))

(assert (=> d!384482 (forall!3374 lt!449254 lambda!57393)))

(assert (=> d!384482 (= (matchRGenUnionSpec!126 lt!449246 lt!449254 lt!449252) lt!449378)))

(assert (=> bs!333964 m!1519129))

(declare-fun m!1519563 () Bool)

(assert (=> bs!333964 m!1519563))

(declare-fun m!1519565 () Bool)

(assert (=> bs!333964 m!1519565))

(declare-fun m!1519567 () Bool)

(assert (=> bs!333964 m!1519567))

(assert (=> b!1356548 d!384482))

(declare-fun bs!333965 () Bool)

(declare-fun d!384484 () Bool)

(assert (= bs!333965 (and d!384484 b!1356548)))

(declare-fun lambda!57395 () Int)

(assert (=> bs!333965 (not (= lambda!57395 lambda!57378))))

(declare-fun bs!333966 () Bool)

(assert (= bs!333966 (and d!384484 d!384480)))

(assert (=> bs!333966 (= lambda!57395 lambda!57388)))

(declare-fun bs!333967 () Bool)

(assert (= bs!333967 (and d!384484 d!384482)))

(assert (=> bs!333967 (not (= lambda!57395 lambda!57393))))

(assert (=> bs!333967 (not (= lambda!57395 lambda!57394))))

(assert (=> d!384484 true))

(assert (=> d!384484 (< (dynLambda!6200 order!8351 lambda!57378) (dynLambda!6200 order!8351 lambda!57395))))

(assert (=> d!384484 (= (exists!449 (map!3053 rules!2550 lambda!57377) lambda!57378) (not (forall!3374 (map!3053 rules!2550 lambda!57377) lambda!57395)))))

(declare-fun bs!333968 () Bool)

(assert (= bs!333968 d!384484))

(assert (=> bs!333968 m!1519091))

(declare-fun m!1519569 () Bool)

(assert (=> bs!333968 m!1519569))

(assert (=> b!1356548 d!384484))

(declare-fun d!384486 () Bool)

(assert (=> d!384486 (= (isEmpty!8287 rules!2550) ((_ is Nil!13825) rules!2550))))

(assert (=> b!1356549 d!384486))

(declare-fun b!1356895 () Bool)

(declare-fun e!868334 () Bool)

(declare-fun lt!449403 () Option!2650)

(declare-fun get!4330 (Option!2650) tuple2!13404)

(assert (=> b!1356895 (= e!868334 (contains!2562 rules!2550 (rule!4144 (_1!7588 (get!4330 lt!449403)))))))

(declare-fun b!1356896 () Bool)

(declare-fun e!868333 () Bool)

(assert (=> b!1356896 (= e!868333 e!868334)))

(declare-fun res!611396 () Bool)

(assert (=> b!1356896 (=> (not res!611396) (not e!868334))))

(declare-fun isDefined!2207 (Option!2650) Bool)

(assert (=> b!1356896 (= res!611396 (isDefined!2207 lt!449403))))

(declare-fun b!1356897 () Bool)

(declare-fun res!611395 () Bool)

(assert (=> b!1356897 (=> (not res!611395) (not e!868334))))

(assert (=> b!1356897 (= res!611395 (< (size!11308 (_2!7588 (get!4330 lt!449403))) (size!11308 lt!449249)))))

(declare-fun b!1356898 () Bool)

(declare-fun res!611394 () Bool)

(assert (=> b!1356898 (=> (not res!611394) (not e!868334))))

(assert (=> b!1356898 (= res!611394 (matchR!1702 (regex!2395 (rule!4144 (_1!7588 (get!4330 lt!449403)))) (list!5299 (charsOf!1367 (_1!7588 (get!4330 lt!449403))))))))

(declare-fun b!1356899 () Bool)

(declare-fun e!868335 () Option!2650)

(declare-fun call!91255 () Option!2650)

(assert (=> b!1356899 (= e!868335 call!91255)))

(declare-fun b!1356900 () Bool)

(declare-fun res!611399 () Bool)

(assert (=> b!1356900 (=> (not res!611399) (not e!868334))))

(declare-fun apply!3344 (TokenValueInjection!4630 BalanceConc!9044) TokenValue!2485)

(declare-fun seqFromList!1625 (List!13888) BalanceConc!9044)

(assert (=> b!1356900 (= res!611399 (= (value!77890 (_1!7588 (get!4330 lt!449403))) (apply!3344 (transformation!2395 (rule!4144 (_1!7588 (get!4330 lt!449403)))) (seqFromList!1625 (originalCharacters!3257 (_1!7588 (get!4330 lt!449403)))))))))

(declare-fun d!384488 () Bool)

(assert (=> d!384488 e!868333))

(declare-fun res!611400 () Bool)

(assert (=> d!384488 (=> res!611400 e!868333)))

(declare-fun isEmpty!8296 (Option!2650) Bool)

(assert (=> d!384488 (= res!611400 (isEmpty!8296 lt!449403))))

(assert (=> d!384488 (= lt!449403 e!868335)))

(declare-fun c!222646 () Bool)

(assert (=> d!384488 (= c!222646 (and ((_ is Cons!13825) rules!2550) ((_ is Nil!13825) (t!120394 rules!2550))))))

(declare-fun lt!449402 () Unit!19973)

(declare-fun lt!449400 () Unit!19973)

(assert (=> d!384488 (= lt!449402 lt!449400)))

(declare-fun isPrefix!1119 (List!13888 List!13888) Bool)

(assert (=> d!384488 (isPrefix!1119 lt!449249 lt!449249)))

(declare-fun lemmaIsPrefixRefl!781 (List!13888 List!13888) Unit!19973)

(assert (=> d!384488 (= lt!449400 (lemmaIsPrefixRefl!781 lt!449249 lt!449249))))

(declare-fun rulesValidInductive!760 (LexerInterface!2090 List!13891) Bool)

(assert (=> d!384488 (rulesValidInductive!760 thiss!19762 rules!2550)))

(assert (=> d!384488 (= (maxPrefix!1072 thiss!19762 rules!2550 lt!449249) lt!449403)))

(declare-fun b!1356901 () Bool)

(declare-fun res!611397 () Bool)

(assert (=> b!1356901 (=> (not res!611397) (not e!868334))))

(assert (=> b!1356901 (= res!611397 (= (++!3558 (list!5299 (charsOf!1367 (_1!7588 (get!4330 lt!449403)))) (_2!7588 (get!4330 lt!449403))) lt!449249))))

(declare-fun b!1356902 () Bool)

(declare-fun lt!449401 () Option!2650)

(declare-fun lt!449404 () Option!2650)

(assert (=> b!1356902 (= e!868335 (ite (and ((_ is None!2649) lt!449401) ((_ is None!2649) lt!449404)) None!2649 (ite ((_ is None!2649) lt!449404) lt!449401 (ite ((_ is None!2649) lt!449401) lt!449404 (ite (>= (size!11304 (_1!7588 (v!21383 lt!449401))) (size!11304 (_1!7588 (v!21383 lt!449404)))) lt!449401 lt!449404)))))))

(assert (=> b!1356902 (= lt!449401 call!91255)))

(assert (=> b!1356902 (= lt!449404 (maxPrefix!1072 thiss!19762 (t!120394 rules!2550) lt!449249))))

(declare-fun b!1356903 () Bool)

(declare-fun res!611398 () Bool)

(assert (=> b!1356903 (=> (not res!611398) (not e!868334))))

(assert (=> b!1356903 (= res!611398 (= (list!5299 (charsOf!1367 (_1!7588 (get!4330 lt!449403)))) (originalCharacters!3257 (_1!7588 (get!4330 lt!449403)))))))

(declare-fun bm!91250 () Bool)

(declare-fun maxPrefixOneRule!607 (LexerInterface!2090 Rule!4590 List!13888) Option!2650)

(assert (=> bm!91250 (= call!91255 (maxPrefixOneRule!607 thiss!19762 (h!19226 rules!2550) lt!449249))))

(assert (= (and d!384488 c!222646) b!1356899))

(assert (= (and d!384488 (not c!222646)) b!1356902))

(assert (= (or b!1356899 b!1356902) bm!91250))

(assert (= (and d!384488 (not res!611400)) b!1356896))

(assert (= (and b!1356896 res!611396) b!1356903))

(assert (= (and b!1356903 res!611398) b!1356897))

(assert (= (and b!1356897 res!611395) b!1356901))

(assert (= (and b!1356901 res!611397) b!1356900))

(assert (= (and b!1356900 res!611399) b!1356898))

(assert (= (and b!1356898 res!611394) b!1356895))

(declare-fun m!1519607 () Bool)

(assert (=> b!1356895 m!1519607))

(declare-fun m!1519609 () Bool)

(assert (=> b!1356895 m!1519609))

(declare-fun m!1519611 () Bool)

(assert (=> bm!91250 m!1519611))

(assert (=> b!1356900 m!1519607))

(declare-fun m!1519613 () Bool)

(assert (=> b!1356900 m!1519613))

(assert (=> b!1356900 m!1519613))

(declare-fun m!1519615 () Bool)

(assert (=> b!1356900 m!1519615))

(assert (=> b!1356901 m!1519607))

(declare-fun m!1519617 () Bool)

(assert (=> b!1356901 m!1519617))

(assert (=> b!1356901 m!1519617))

(declare-fun m!1519619 () Bool)

(assert (=> b!1356901 m!1519619))

(assert (=> b!1356901 m!1519619))

(declare-fun m!1519621 () Bool)

(assert (=> b!1356901 m!1519621))

(assert (=> b!1356897 m!1519607))

(declare-fun m!1519623 () Bool)

(assert (=> b!1356897 m!1519623))

(assert (=> b!1356897 m!1519227))

(assert (=> b!1356903 m!1519607))

(assert (=> b!1356903 m!1519617))

(assert (=> b!1356903 m!1519617))

(assert (=> b!1356903 m!1519619))

(declare-fun m!1519625 () Bool)

(assert (=> d!384488 m!1519625))

(declare-fun m!1519627 () Bool)

(assert (=> d!384488 m!1519627))

(declare-fun m!1519629 () Bool)

(assert (=> d!384488 m!1519629))

(declare-fun m!1519631 () Bool)

(assert (=> d!384488 m!1519631))

(assert (=> b!1356898 m!1519607))

(assert (=> b!1356898 m!1519617))

(assert (=> b!1356898 m!1519617))

(assert (=> b!1356898 m!1519619))

(assert (=> b!1356898 m!1519619))

(declare-fun m!1519633 () Bool)

(assert (=> b!1356898 m!1519633))

(declare-fun m!1519635 () Bool)

(assert (=> b!1356896 m!1519635))

(declare-fun m!1519637 () Bool)

(assert (=> b!1356902 m!1519637))

(assert (=> b!1356556 d!384488))

(declare-fun d!384498 () Bool)

(declare-fun lt!449406 () Bool)

(assert (=> d!384498 (= lt!449406 (select (content!1994 lt!449243) lt!449250))))

(declare-fun e!868338 () Bool)

(assert (=> d!384498 (= lt!449406 e!868338)))

(declare-fun res!611406 () Bool)

(assert (=> d!384498 (=> (not res!611406) (not e!868338))))

(assert (=> d!384498 (= res!611406 ((_ is Cons!13822) lt!449243))))

(assert (=> d!384498 (= (contains!2561 lt!449243 lt!449250) lt!449406)))

(declare-fun b!1356908 () Bool)

(declare-fun e!868339 () Bool)

(assert (=> b!1356908 (= e!868338 e!868339)))

(declare-fun res!611405 () Bool)

(assert (=> b!1356908 (=> res!611405 e!868339)))

(assert (=> b!1356908 (= res!611405 (= (h!19223 lt!449243) lt!449250))))

(declare-fun b!1356909 () Bool)

(assert (=> b!1356909 (= e!868339 (contains!2561 (t!120391 lt!449243) lt!449250))))

(assert (= (and d!384498 res!611406) b!1356908))

(assert (= (and b!1356908 (not res!611405)) b!1356909))

(assert (=> d!384498 m!1519379))

(declare-fun m!1519639 () Bool)

(assert (=> d!384498 m!1519639))

(declare-fun m!1519641 () Bool)

(assert (=> b!1356909 m!1519641))

(assert (=> b!1356536 d!384498))

(declare-fun d!384500 () Bool)

(declare-fun lt!449407 () C!7708)

(assert (=> d!384500 (= lt!449407 (apply!3339 (list!5299 lt!449253) 0))))

(assert (=> d!384500 (= lt!449407 (apply!3340 (c!222576 lt!449253) 0))))

(declare-fun e!868341 () Bool)

(assert (=> d!384500 e!868341))

(declare-fun res!611409 () Bool)

(assert (=> d!384500 (=> (not res!611409) (not e!868341))))

(assert (=> d!384500 (= res!611409 (<= 0 0))))

(assert (=> d!384500 (= (apply!3337 lt!449253 0) lt!449407)))

(declare-fun b!1356912 () Bool)

(assert (=> b!1356912 (= e!868341 (< 0 (size!11303 lt!449253)))))

(assert (= (and d!384500 res!611409) b!1356912))

(assert (=> d!384500 m!1519135))

(assert (=> d!384500 m!1519135))

(declare-fun m!1519643 () Bool)

(assert (=> d!384500 m!1519643))

(declare-fun m!1519645 () Bool)

(assert (=> d!384500 m!1519645))

(declare-fun m!1519647 () Bool)

(assert (=> b!1356912 m!1519647))

(assert (=> b!1356536 d!384500))

(declare-fun d!384502 () Bool)

(declare-fun prefixMatchZipperSequence!242 (Regex!3709 BalanceConc!9044) Bool)

(declare-fun ++!3560 (BalanceConc!9044 BalanceConc!9044) BalanceConc!9044)

(declare-fun singletonSeq!1018 (C!7708) BalanceConc!9044)

(assert (=> d!384502 (= (separableTokensPredicate!373 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!242 (rulesRegex!278 thiss!19762 rules!2550) (++!3560 (charsOf!1367 t1!34) (singletonSeq!1018 (apply!3337 (charsOf!1367 t2!34) 0))))))))

(declare-fun bs!333971 () Bool)

(assert (= bs!333971 d!384502))

(assert (=> bs!333971 m!1519137))

(assert (=> bs!333971 m!1519127))

(assert (=> bs!333971 m!1519139))

(declare-fun m!1519705 () Bool)

(assert (=> bs!333971 m!1519705))

(declare-fun m!1519707 () Bool)

(assert (=> bs!333971 m!1519707))

(declare-fun m!1519709 () Bool)

(assert (=> bs!333971 m!1519709))

(declare-fun m!1519711 () Bool)

(assert (=> bs!333971 m!1519711))

(assert (=> bs!333971 m!1519137))

(assert (=> bs!333971 m!1519711))

(assert (=> bs!333971 m!1519705))

(assert (=> bs!333971 m!1519127))

(assert (=> bs!333971 m!1519709))

(assert (=> bs!333971 m!1519139))

(assert (=> b!1356553 d!384502))

(declare-fun b!1356953 () Bool)

(declare-fun e!868370 () Bool)

(assert (=> b!1356953 (= e!868370 (inv!16 (value!77890 t1!34)))))

(declare-fun d!384516 () Bool)

(declare-fun c!222656 () Bool)

(assert (=> d!384516 (= c!222656 ((_ is IntegerValue!7455) (value!77890 t1!34)))))

(assert (=> d!384516 (= (inv!21 (value!77890 t1!34)) e!868370)))

(declare-fun b!1356954 () Bool)

(declare-fun e!868371 () Bool)

(assert (=> b!1356954 (= e!868371 (inv!17 (value!77890 t1!34)))))

(declare-fun b!1356955 () Bool)

(declare-fun e!868372 () Bool)

(assert (=> b!1356955 (= e!868372 (inv!15 (value!77890 t1!34)))))

(declare-fun b!1356956 () Bool)

(declare-fun res!611426 () Bool)

(assert (=> b!1356956 (=> res!611426 e!868372)))

(assert (=> b!1356956 (= res!611426 (not ((_ is IntegerValue!7457) (value!77890 t1!34))))))

(assert (=> b!1356956 (= e!868371 e!868372)))

(declare-fun b!1356957 () Bool)

(assert (=> b!1356957 (= e!868370 e!868371)))

(declare-fun c!222657 () Bool)

(assert (=> b!1356957 (= c!222657 ((_ is IntegerValue!7456) (value!77890 t1!34)))))

(assert (= (and d!384516 c!222656) b!1356953))

(assert (= (and d!384516 (not c!222656)) b!1356957))

(assert (= (and b!1356957 c!222657) b!1356954))

(assert (= (and b!1356957 (not c!222657)) b!1356956))

(assert (= (and b!1356956 (not res!611426)) b!1356955))

(declare-fun m!1519713 () Bool)

(assert (=> b!1356953 m!1519713))

(declare-fun m!1519715 () Bool)

(assert (=> b!1356954 m!1519715))

(declare-fun m!1519717 () Bool)

(assert (=> b!1356955 m!1519717))

(assert (=> b!1356554 d!384516))

(declare-fun b!1356986 () Bool)

(declare-fun e!868393 () Bool)

(declare-fun e!868392 () Bool)

(assert (=> b!1356986 (= e!868393 e!868392)))

(declare-fun c!222666 () Bool)

(assert (=> b!1356986 (= c!222666 ((_ is EmptyLang!3709) lt!449246))))

(declare-fun b!1356987 () Bool)

(declare-fun e!868391 () Bool)

(declare-fun e!868389 () Bool)

(assert (=> b!1356987 (= e!868391 e!868389)))

(declare-fun res!611446 () Bool)

(assert (=> b!1356987 (=> (not res!611446) (not e!868389))))

(declare-fun lt!449423 () Bool)

(assert (=> b!1356987 (= res!611446 (not lt!449423))))

(declare-fun b!1356988 () Bool)

(assert (=> b!1356988 (= e!868392 (not lt!449423))))

(declare-fun b!1356989 () Bool)

(declare-fun e!868388 () Bool)

(assert (=> b!1356989 (= e!868388 (= (head!2430 lt!449252) (c!222577 lt!449246)))))

(declare-fun b!1356990 () Bool)

(declare-fun res!611447 () Bool)

(assert (=> b!1356990 (=> (not res!611447) (not e!868388))))

(declare-fun call!91258 () Bool)

(assert (=> b!1356990 (= res!611447 (not call!91258))))

(declare-fun b!1356991 () Bool)

(assert (=> b!1356991 (= e!868393 (= lt!449423 call!91258))))

(declare-fun b!1356992 () Bool)

(declare-fun res!611445 () Bool)

(assert (=> b!1356992 (=> res!611445 e!868391)))

(assert (=> b!1356992 (= res!611445 (not ((_ is ElementMatch!3709) lt!449246)))))

(assert (=> b!1356992 (= e!868392 e!868391)))

(declare-fun b!1356993 () Bool)

(declare-fun e!868387 () Bool)

(assert (=> b!1356993 (= e!868387 (not (= (head!2430 lt!449252) (c!222577 lt!449246))))))

(declare-fun b!1356994 () Bool)

(declare-fun res!611444 () Bool)

(assert (=> b!1356994 (=> res!611444 e!868387)))

(assert (=> b!1356994 (= res!611444 (not (isEmpty!8289 (tail!1960 lt!449252))))))

(declare-fun b!1356995 () Bool)

(declare-fun res!611443 () Bool)

(assert (=> b!1356995 (=> (not res!611443) (not e!868388))))

(assert (=> b!1356995 (= res!611443 (isEmpty!8289 (tail!1960 lt!449252)))))

(declare-fun bm!91253 () Bool)

(assert (=> bm!91253 (= call!91258 (isEmpty!8289 lt!449252))))

(declare-fun d!384518 () Bool)

(assert (=> d!384518 e!868393))

(declare-fun c!222665 () Bool)

(assert (=> d!384518 (= c!222665 ((_ is EmptyExpr!3709) lt!449246))))

(declare-fun e!868390 () Bool)

(assert (=> d!384518 (= lt!449423 e!868390)))

(declare-fun c!222664 () Bool)

(assert (=> d!384518 (= c!222664 (isEmpty!8289 lt!449252))))

(declare-fun validRegex!1609 (Regex!3709) Bool)

(assert (=> d!384518 (validRegex!1609 lt!449246)))

(assert (=> d!384518 (= (matchR!1702 lt!449246 lt!449252) lt!449423)))

(declare-fun b!1356996 () Bool)

(declare-fun res!611450 () Bool)

(assert (=> b!1356996 (=> res!611450 e!868391)))

(assert (=> b!1356996 (= res!611450 e!868388)))

(declare-fun res!611448 () Bool)

(assert (=> b!1356996 (=> (not res!611448) (not e!868388))))

(assert (=> b!1356996 (= res!611448 lt!449423)))

(declare-fun b!1356997 () Bool)

(assert (=> b!1356997 (= e!868390 (matchR!1702 (derivativeStep!946 lt!449246 (head!2430 lt!449252)) (tail!1960 lt!449252)))))

(declare-fun b!1356998 () Bool)

(assert (=> b!1356998 (= e!868389 e!868387)))

(declare-fun res!611449 () Bool)

(assert (=> b!1356998 (=> res!611449 e!868387)))

(assert (=> b!1356998 (= res!611449 call!91258)))

(declare-fun b!1356999 () Bool)

(declare-fun nullable!1189 (Regex!3709) Bool)

(assert (=> b!1356999 (= e!868390 (nullable!1189 lt!449246))))

(assert (= (and d!384518 c!222664) b!1356999))

(assert (= (and d!384518 (not c!222664)) b!1356997))

(assert (= (and d!384518 c!222665) b!1356991))

(assert (= (and d!384518 (not c!222665)) b!1356986))

(assert (= (and b!1356986 c!222666) b!1356988))

(assert (= (and b!1356986 (not c!222666)) b!1356992))

(assert (= (and b!1356992 (not res!611445)) b!1356996))

(assert (= (and b!1356996 res!611448) b!1356990))

(assert (= (and b!1356990 res!611447) b!1356995))

(assert (= (and b!1356995 res!611443) b!1356989))

(assert (= (and b!1356996 (not res!611450)) b!1356987))

(assert (= (and b!1356987 res!611446) b!1356998))

(assert (= (and b!1356998 (not res!611449)) b!1356994))

(assert (= (and b!1356994 (not res!611444)) b!1356993))

(assert (= (or b!1356991 b!1356990 b!1356998) bm!91253))

(declare-fun m!1519719 () Bool)

(assert (=> b!1356989 m!1519719))

(assert (=> b!1356993 m!1519719))

(assert (=> b!1356997 m!1519719))

(assert (=> b!1356997 m!1519719))

(declare-fun m!1519721 () Bool)

(assert (=> b!1356997 m!1519721))

(assert (=> b!1356997 m!1519387))

(assert (=> b!1356997 m!1519721))

(assert (=> b!1356997 m!1519387))

(declare-fun m!1519723 () Bool)

(assert (=> b!1356997 m!1519723))

(assert (=> b!1356995 m!1519387))

(assert (=> b!1356995 m!1519387))

(declare-fun m!1519725 () Bool)

(assert (=> b!1356995 m!1519725))

(declare-fun m!1519727 () Bool)

(assert (=> d!384518 m!1519727))

(declare-fun m!1519729 () Bool)

(assert (=> d!384518 m!1519729))

(assert (=> bm!91253 m!1519727))

(declare-fun m!1519731 () Bool)

(assert (=> b!1356999 m!1519731))

(assert (=> b!1356994 m!1519387))

(assert (=> b!1356994 m!1519387))

(assert (=> b!1356994 m!1519725))

(assert (=> b!1356555 d!384518))

(declare-fun d!384520 () Bool)

(declare-fun choose!8348 (Int) Bool)

(assert (=> d!384520 (= (Exists!861 lambda!57376) (choose!8348 lambda!57376))))

(declare-fun bs!333972 () Bool)

(assert (= bs!333972 d!384520))

(declare-fun m!1519733 () Bool)

(assert (=> bs!333972 m!1519733))

(assert (=> b!1356540 d!384520))

(declare-fun bs!333974 () Bool)

(declare-fun d!384522 () Bool)

(assert (= bs!333974 (and d!384522 b!1356540)))

(declare-fun lambda!57398 () Int)

(assert (=> bs!333974 (= lambda!57398 lambda!57376)))

(assert (=> d!384522 true))

(assert (=> d!384522 true))

(assert (=> d!384522 (Exists!861 lambda!57398)))

(declare-fun lt!449428 () Unit!19973)

(declare-fun choose!8349 (Regex!3709 List!13888) Unit!19973)

(assert (=> d!384522 (= lt!449428 (choose!8349 lt!449246 lt!449243))))

(assert (=> d!384522 (validRegex!1609 lt!449246)))

(assert (=> d!384522 (= (lemmaPrefixMatchThenExistsStringThatMatches!179 lt!449246 lt!449243) lt!449428)))

(declare-fun bs!333975 () Bool)

(assert (= bs!333975 d!384522))

(declare-fun m!1519757 () Bool)

(assert (=> bs!333975 m!1519757))

(declare-fun m!1519759 () Bool)

(assert (=> bs!333975 m!1519759))

(assert (=> bs!333975 m!1519729))

(assert (=> b!1356540 d!384522))

(declare-fun d!384528 () Bool)

(assert (=> d!384528 (= (inv!18164 (tag!2657 (rule!4144 t2!34))) (= (mod (str.len (value!77889 (tag!2657 (rule!4144 t2!34)))) 2) 0))))

(assert (=> b!1356561 d!384528))

(declare-fun d!384530 () Bool)

(declare-fun res!611456 () Bool)

(declare-fun e!868398 () Bool)

(assert (=> d!384530 (=> (not res!611456) (not e!868398))))

(assert (=> d!384530 (= res!611456 (semiInverseModEq!918 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toValue!3650 (transformation!2395 (rule!4144 t2!34)))))))

(assert (=> d!384530 (= (inv!18167 (transformation!2395 (rule!4144 t2!34))) e!868398)))

(declare-fun b!1357005 () Bool)

(assert (=> b!1357005 (= e!868398 (equivClasses!877 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toValue!3650 (transformation!2395 (rule!4144 t2!34)))))))

(assert (= (and d!384530 res!611456) b!1357005))

(declare-fun m!1519761 () Bool)

(assert (=> d!384530 m!1519761))

(declare-fun m!1519763 () Bool)

(assert (=> b!1357005 m!1519763))

(assert (=> b!1356561 d!384530))

(declare-fun d!384532 () Bool)

(declare-fun lt!449465 () Bool)

(declare-fun e!868489 () Bool)

(assert (=> d!384532 (= lt!449465 e!868489)))

(declare-fun res!611519 () Bool)

(assert (=> d!384532 (=> (not res!611519) (not e!868489))))

(assert (=> d!384532 (= res!611519 (= (list!5298 (_1!7587 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t1!34))))) (list!5298 (singletonSeq!1016 t1!34))))))

(declare-fun e!868488 () Bool)

(assert (=> d!384532 (= lt!449465 e!868488)))

(declare-fun res!611520 () Bool)

(assert (=> d!384532 (=> (not res!611520) (not e!868488))))

(declare-fun lt!449466 () tuple2!13402)

(assert (=> d!384532 (= res!611520 (= (size!11309 (_1!7587 lt!449466)) 1))))

(assert (=> d!384532 (= lt!449466 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t1!34))))))

(assert (=> d!384532 (not (isEmpty!8287 rules!2550))))

(assert (=> d!384532 (= (rulesProduceIndividualToken!1059 thiss!19762 rules!2550 t1!34) lt!449465)))

(declare-fun b!1357159 () Bool)

(declare-fun res!611521 () Bool)

(assert (=> b!1357159 (=> (not res!611521) (not e!868488))))

(declare-fun apply!3345 (BalanceConc!9046 Int) Token!4452)

(assert (=> b!1357159 (= res!611521 (= (apply!3345 (_1!7587 lt!449466) 0) t1!34))))

(declare-fun b!1357160 () Bool)

(assert (=> b!1357160 (= e!868488 (isEmpty!8286 (_2!7587 lt!449466)))))

(declare-fun b!1357161 () Bool)

(assert (=> b!1357161 (= e!868489 (isEmpty!8286 (_2!7587 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t1!34))))))))

(assert (= (and d!384532 res!611520) b!1357159))

(assert (= (and b!1357159 res!611521) b!1357160))

(assert (= (and d!384532 res!611519) b!1357161))

(assert (=> d!384532 m!1519193))

(declare-fun m!1519925 () Bool)

(assert (=> d!384532 m!1519925))

(assert (=> d!384532 m!1519159))

(assert (=> d!384532 m!1519165))

(assert (=> d!384532 m!1519159))

(assert (=> d!384532 m!1519165))

(declare-fun m!1519927 () Bool)

(assert (=> d!384532 m!1519927))

(assert (=> d!384532 m!1519159))

(assert (=> d!384532 m!1519355))

(declare-fun m!1519929 () Bool)

(assert (=> d!384532 m!1519929))

(declare-fun m!1519931 () Bool)

(assert (=> b!1357159 m!1519931))

(declare-fun m!1519933 () Bool)

(assert (=> b!1357160 m!1519933))

(assert (=> b!1357161 m!1519159))

(assert (=> b!1357161 m!1519159))

(assert (=> b!1357161 m!1519165))

(assert (=> b!1357161 m!1519165))

(assert (=> b!1357161 m!1519927))

(declare-fun m!1519935 () Bool)

(assert (=> b!1357161 m!1519935))

(assert (=> b!1356562 d!384532))

(declare-fun d!384600 () Bool)

(declare-fun lt!449467 () Bool)

(declare-fun e!868491 () Bool)

(assert (=> d!384600 (= lt!449467 e!868491)))

(declare-fun res!611522 () Bool)

(assert (=> d!384600 (=> (not res!611522) (not e!868491))))

(assert (=> d!384600 (= res!611522 (= (list!5298 (_1!7587 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34))))) (list!5298 (singletonSeq!1016 t2!34))))))

(declare-fun e!868490 () Bool)

(assert (=> d!384600 (= lt!449467 e!868490)))

(declare-fun res!611523 () Bool)

(assert (=> d!384600 (=> (not res!611523) (not e!868490))))

(declare-fun lt!449468 () tuple2!13402)

(assert (=> d!384600 (= res!611523 (= (size!11309 (_1!7587 lt!449468)) 1))))

(assert (=> d!384600 (= lt!449468 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34))))))

(assert (=> d!384600 (not (isEmpty!8287 rules!2550))))

(assert (=> d!384600 (= (rulesProduceIndividualToken!1059 thiss!19762 rules!2550 t2!34) lt!449467)))

(declare-fun b!1357162 () Bool)

(declare-fun res!611524 () Bool)

(assert (=> b!1357162 (=> (not res!611524) (not e!868490))))

(assert (=> b!1357162 (= res!611524 (= (apply!3345 (_1!7587 lt!449468) 0) t2!34))))

(declare-fun b!1357163 () Bool)

(assert (=> b!1357163 (= e!868490 (isEmpty!8286 (_2!7587 lt!449468)))))

(declare-fun b!1357164 () Bool)

(assert (=> b!1357164 (= e!868491 (isEmpty!8286 (_2!7587 (lex!917 thiss!19762 rules!2550 (print!856 thiss!19762 (singletonSeq!1016 t2!34))))))))

(assert (= (and d!384600 res!611523) b!1357162))

(assert (= (and b!1357162 res!611524) b!1357163))

(assert (= (and d!384600 res!611522) b!1357164))

(assert (=> d!384600 m!1519193))

(declare-fun m!1519937 () Bool)

(assert (=> d!384600 m!1519937))

(assert (=> d!384600 m!1519187))

(assert (=> d!384600 m!1519189))

(assert (=> d!384600 m!1519187))

(assert (=> d!384600 m!1519189))

(assert (=> d!384600 m!1519191))

(assert (=> d!384600 m!1519187))

(assert (=> d!384600 m!1519493))

(declare-fun m!1519939 () Bool)

(assert (=> d!384600 m!1519939))

(declare-fun m!1519941 () Bool)

(assert (=> b!1357162 m!1519941))

(declare-fun m!1519943 () Bool)

(assert (=> b!1357163 m!1519943))

(assert (=> b!1357164 m!1519187))

(assert (=> b!1357164 m!1519187))

(assert (=> b!1357164 m!1519189))

(assert (=> b!1357164 m!1519189))

(assert (=> b!1357164 m!1519191))

(declare-fun m!1519945 () Bool)

(assert (=> b!1357164 m!1519945))

(assert (=> b!1356563 d!384600))

(declare-fun d!384602 () Bool)

(declare-fun lt!449469 () Bool)

(assert (=> d!384602 (= lt!449469 (select (content!1994 lt!449252) lt!449256))))

(declare-fun e!868492 () Bool)

(assert (=> d!384602 (= lt!449469 e!868492)))

(declare-fun res!611526 () Bool)

(assert (=> d!384602 (=> (not res!611526) (not e!868492))))

(assert (=> d!384602 (= res!611526 ((_ is Cons!13822) lt!449252))))

(assert (=> d!384602 (= (contains!2561 lt!449252 lt!449256) lt!449469)))

(declare-fun b!1357165 () Bool)

(declare-fun e!868493 () Bool)

(assert (=> b!1357165 (= e!868492 e!868493)))

(declare-fun res!611525 () Bool)

(assert (=> b!1357165 (=> res!611525 e!868493)))

(assert (=> b!1357165 (= res!611525 (= (h!19223 lt!449252) lt!449256))))

(declare-fun b!1357166 () Bool)

(assert (=> b!1357166 (= e!868493 (contains!2561 (t!120391 lt!449252) lt!449256))))

(assert (= (and d!384602 res!611526) b!1357165))

(assert (= (and b!1357165 (not res!611525)) b!1357166))

(assert (=> d!384602 m!1519465))

(declare-fun m!1519947 () Bool)

(assert (=> d!384602 m!1519947))

(declare-fun m!1519949 () Bool)

(assert (=> b!1357166 m!1519949))

(assert (=> b!1356558 d!384602))

(declare-fun d!384604 () Bool)

(declare-fun res!611529 () Bool)

(declare-fun e!868496 () Bool)

(assert (=> d!384604 (=> (not res!611529) (not e!868496))))

(declare-fun rulesValid!887 (LexerInterface!2090 List!13891) Bool)

(assert (=> d!384604 (= res!611529 (rulesValid!887 thiss!19762 rules!2550))))

(assert (=> d!384604 (= (rulesInvariant!1960 thiss!19762 rules!2550) e!868496)))

(declare-fun b!1357169 () Bool)

(declare-datatypes ((List!13894 0))(
  ( (Nil!13828) (Cons!13828 (h!19229 String!16661) (t!120433 List!13894)) )
))
(declare-fun noDuplicateTag!887 (LexerInterface!2090 List!13891 List!13894) Bool)

(assert (=> b!1357169 (= e!868496 (noDuplicateTag!887 thiss!19762 rules!2550 Nil!13828))))

(assert (= (and d!384604 res!611529) b!1357169))

(declare-fun m!1519951 () Bool)

(assert (=> d!384604 m!1519951))

(declare-fun m!1519953 () Bool)

(assert (=> b!1357169 m!1519953))

(assert (=> b!1356559 d!384604))

(declare-fun d!384606 () Bool)

(declare-fun lt!449472 () Int)

(assert (=> d!384606 (= lt!449472 (size!11308 (list!5299 lt!449251)))))

(declare-fun size!11316 (Conc!4552) Int)

(assert (=> d!384606 (= lt!449472 (size!11316 (c!222576 lt!449251)))))

(assert (=> d!384606 (= (size!11303 lt!449251) lt!449472)))

(declare-fun bs!334003 () Bool)

(assert (= bs!334003 d!384606))

(assert (=> bs!334003 m!1519195))

(assert (=> bs!334003 m!1519195))

(declare-fun m!1519955 () Bool)

(assert (=> bs!334003 m!1519955))

(declare-fun m!1519957 () Bool)

(assert (=> bs!334003 m!1519957))

(assert (=> b!1356537 d!384606))

(declare-fun d!384608 () Bool)

(declare-fun lt!449473 () BalanceConc!9044)

(assert (=> d!384608 (= (list!5299 lt!449473) (originalCharacters!3257 t2!34))))

(assert (=> d!384608 (= lt!449473 (dynLambda!6190 (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (value!77890 t2!34)))))

(assert (=> d!384608 (= (charsOf!1367 t2!34) lt!449473)))

(declare-fun b_lambda!40889 () Bool)

(assert (=> (not b_lambda!40889) (not d!384608)))

(assert (=> d!384608 t!120405))

(declare-fun b_and!90861 () Bool)

(assert (= b_and!90827 (and (=> t!120405 result!86638) b_and!90861)))

(assert (=> d!384608 t!120407))

(declare-fun b_and!90863 () Bool)

(assert (= b_and!90829 (and (=> t!120407 result!86640) b_and!90863)))

(assert (=> d!384608 t!120409))

(declare-fun b_and!90865 () Bool)

(assert (= b_and!90831 (and (=> t!120409 result!86642) b_and!90865)))

(declare-fun m!1519959 () Bool)

(assert (=> d!384608 m!1519959))

(assert (=> d!384608 m!1519549))

(assert (=> b!1356537 d!384608))

(declare-fun bs!334004 () Bool)

(declare-fun d!384610 () Bool)

(assert (= bs!334004 (and d!384610 b!1356539)))

(declare-fun lambda!57420 () Int)

(assert (=> bs!334004 (not (= lambda!57420 lambda!57379))))

(assert (=> d!384610 true))

(declare-fun order!8359 () Int)

(declare-fun dynLambda!6203 (Int Int) Int)

(assert (=> d!384610 (< (dynLambda!6203 order!8359 lambda!57379) (dynLambda!6203 order!8359 lambda!57420))))

(declare-fun forall!3376 (List!13891 Int) Bool)

(assert (=> d!384610 (= (exists!448 rules!2550 lambda!57379) (not (forall!3376 rules!2550 lambda!57420)))))

(declare-fun bs!334005 () Bool)

(assert (= bs!334005 d!384610))

(declare-fun m!1519961 () Bool)

(assert (=> bs!334005 m!1519961))

(assert (=> b!1356539 d!384610))

(declare-fun bs!334006 () Bool)

(declare-fun d!384612 () Bool)

(assert (= bs!334006 (and d!384612 b!1356539)))

(declare-fun lambda!57423 () Int)

(assert (=> bs!334006 (not (= lambda!57423 lambda!57379))))

(declare-fun bs!334007 () Bool)

(assert (= bs!334007 (and d!384612 d!384610)))

(assert (=> bs!334007 (not (= lambda!57423 lambda!57420))))

(assert (=> d!384612 true))

(assert (=> d!384612 true))

(declare-fun order!8361 () Int)

(declare-fun dynLambda!6204 (Int Int) Int)

(assert (=> d!384612 (< (dynLambda!6204 order!8361 lambda!57377) (dynLambda!6203 order!8359 lambda!57423))))

(assert (=> d!384612 (exists!448 rules!2550 lambda!57423)))

(declare-fun lt!449476 () Unit!19973)

(declare-fun choose!8351 (List!13891 Int Regex!3709) Unit!19973)

(assert (=> d!384612 (= lt!449476 (choose!8351 rules!2550 lambda!57377 lt!449241))))

(assert (=> d!384612 (contains!2563 (map!3053 rules!2550 lambda!57377) lt!449241)))

(assert (=> d!384612 (= (lemmaMapContains!114 rules!2550 lambda!57377 lt!449241) lt!449476)))

(declare-fun bs!334008 () Bool)

(assert (= bs!334008 d!384612))

(declare-fun m!1519963 () Bool)

(assert (=> bs!334008 m!1519963))

(declare-fun m!1519965 () Bool)

(assert (=> bs!334008 m!1519965))

(assert (=> bs!334008 m!1519091))

(assert (=> bs!334008 m!1519091))

(assert (=> bs!334008 m!1519093))

(assert (=> b!1356539 d!384612))

(declare-fun d!384614 () Bool)

(declare-fun lt!449479 () Bool)

(assert (=> d!384614 (= lt!449479 (isEmpty!8289 (list!5299 (_2!7587 lt!449244))))))

(declare-fun isEmpty!8297 (Conc!4552) Bool)

(assert (=> d!384614 (= lt!449479 (isEmpty!8297 (c!222576 (_2!7587 lt!449244))))))

(assert (=> d!384614 (= (isEmpty!8286 (_2!7587 lt!449244)) lt!449479)))

(declare-fun bs!334009 () Bool)

(assert (= bs!334009 d!384614))

(declare-fun m!1519967 () Bool)

(assert (=> bs!334009 m!1519967))

(assert (=> bs!334009 m!1519967))

(declare-fun m!1519969 () Bool)

(assert (=> bs!334009 m!1519969))

(declare-fun m!1519971 () Bool)

(assert (=> bs!334009 m!1519971))

(assert (=> b!1356538 d!384614))

(declare-fun d!384616 () Bool)

(declare-fun lt!449480 () Bool)

(assert (=> d!384616 (= lt!449480 (isEmpty!8289 (list!5299 (_2!7587 lt!449257))))))

(assert (=> d!384616 (= lt!449480 (isEmpty!8297 (c!222576 (_2!7587 lt!449257))))))

(assert (=> d!384616 (= (isEmpty!8286 (_2!7587 lt!449257)) lt!449480)))

(declare-fun bs!334010 () Bool)

(assert (= bs!334010 d!384616))

(declare-fun m!1519973 () Bool)

(assert (=> bs!334010 m!1519973))

(assert (=> bs!334010 m!1519973))

(declare-fun m!1519975 () Bool)

(assert (=> bs!334010 m!1519975))

(declare-fun m!1519977 () Bool)

(assert (=> bs!334010 m!1519977))

(assert (=> b!1356560 d!384616))

(declare-fun b!1357189 () Bool)

(declare-fun e!868499 () Bool)

(declare-fun tp!391564 () Bool)

(declare-fun tp!391562 () Bool)

(assert (=> b!1357189 (= e!868499 (and tp!391564 tp!391562))))

(assert (=> b!1356561 (= tp!391495 e!868499)))

(declare-fun b!1357186 () Bool)

(declare-fun tp_is_empty!6727 () Bool)

(assert (=> b!1357186 (= e!868499 tp_is_empty!6727)))

(declare-fun b!1357187 () Bool)

(declare-fun tp!391565 () Bool)

(declare-fun tp!391563 () Bool)

(assert (=> b!1357187 (= e!868499 (and tp!391565 tp!391563))))

(declare-fun b!1357188 () Bool)

(declare-fun tp!391566 () Bool)

(assert (=> b!1357188 (= e!868499 tp!391566)))

(assert (= (and b!1356561 ((_ is ElementMatch!3709) (regex!2395 (rule!4144 t2!34)))) b!1357186))

(assert (= (and b!1356561 ((_ is Concat!6195) (regex!2395 (rule!4144 t2!34)))) b!1357187))

(assert (= (and b!1356561 ((_ is Star!3709) (regex!2395 (rule!4144 t2!34)))) b!1357188))

(assert (= (and b!1356561 ((_ is Union!3709) (regex!2395 (rule!4144 t2!34)))) b!1357189))

(declare-fun b!1357193 () Bool)

(declare-fun e!868500 () Bool)

(declare-fun tp!391569 () Bool)

(declare-fun tp!391567 () Bool)

(assert (=> b!1357193 (= e!868500 (and tp!391569 tp!391567))))

(assert (=> b!1356550 (= tp!391494 e!868500)))

(declare-fun b!1357190 () Bool)

(assert (=> b!1357190 (= e!868500 tp_is_empty!6727)))

(declare-fun b!1357191 () Bool)

(declare-fun tp!391570 () Bool)

(declare-fun tp!391568 () Bool)

(assert (=> b!1357191 (= e!868500 (and tp!391570 tp!391568))))

(declare-fun b!1357192 () Bool)

(declare-fun tp!391571 () Bool)

(assert (=> b!1357192 (= e!868500 tp!391571)))

(assert (= (and b!1356550 ((_ is ElementMatch!3709) (regex!2395 (h!19226 rules!2550)))) b!1357190))

(assert (= (and b!1356550 ((_ is Concat!6195) (regex!2395 (h!19226 rules!2550)))) b!1357191))

(assert (= (and b!1356550 ((_ is Star!3709) (regex!2395 (h!19226 rules!2550)))) b!1357192))

(assert (= (and b!1356550 ((_ is Union!3709) (regex!2395 (h!19226 rules!2550)))) b!1357193))

(declare-fun b!1357204 () Bool)

(declare-fun b_free!33043 () Bool)

(declare-fun b_next!33747 () Bool)

(assert (=> b!1357204 (= b_free!33043 (not b_next!33747))))

(declare-fun tp!391583 () Bool)

(declare-fun b_and!90867 () Bool)

(assert (=> b!1357204 (= tp!391583 b_and!90867)))

(declare-fun b_free!33045 () Bool)

(declare-fun b_next!33749 () Bool)

(assert (=> b!1357204 (= b_free!33045 (not b_next!33749))))

(declare-fun t!120429 () Bool)

(declare-fun tb!71293 () Bool)

(assert (=> (and b!1357204 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t1!34)))) t!120429) tb!71293))

(declare-fun result!86672 () Bool)

(assert (= result!86672 result!86630))

(assert (=> d!384382 t!120429))

(assert (=> b!1356835 t!120429))

(declare-fun t!120431 () Bool)

(declare-fun tb!71295 () Bool)

(assert (=> (and b!1357204 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t2!34)))) t!120431) tb!71295))

(declare-fun result!86674 () Bool)

(assert (= result!86674 result!86638))

(assert (=> b!1356837 t!120431))

(assert (=> d!384608 t!120431))

(declare-fun b_and!90869 () Bool)

(declare-fun tp!391582 () Bool)

(assert (=> b!1357204 (= tp!391582 (and (=> t!120429 result!86672) (=> t!120431 result!86674) b_and!90869))))

(declare-fun e!868509 () Bool)

(assert (=> b!1357204 (= e!868509 (and tp!391583 tp!391582))))

(declare-fun b!1357203 () Bool)

(declare-fun tp!391580 () Bool)

(declare-fun e!868511 () Bool)

(assert (=> b!1357203 (= e!868511 (and tp!391580 (inv!18164 (tag!2657 (h!19226 (t!120394 rules!2550)))) (inv!18167 (transformation!2395 (h!19226 (t!120394 rules!2550)))) e!868509))))

(declare-fun b!1357202 () Bool)

(declare-fun e!868510 () Bool)

(declare-fun tp!391581 () Bool)

(assert (=> b!1357202 (= e!868510 (and e!868511 tp!391581))))

(assert (=> b!1356546 (= tp!391498 e!868510)))

(assert (= b!1357203 b!1357204))

(assert (= b!1357202 b!1357203))

(assert (= (and b!1356546 ((_ is Cons!13825) (t!120394 rules!2550))) b!1357202))

(declare-fun m!1519979 () Bool)

(assert (=> b!1357203 m!1519979))

(declare-fun m!1519981 () Bool)

(assert (=> b!1357203 m!1519981))

(declare-fun b!1357208 () Bool)

(declare-fun e!868513 () Bool)

(declare-fun tp!391586 () Bool)

(declare-fun tp!391584 () Bool)

(assert (=> b!1357208 (= e!868513 (and tp!391586 tp!391584))))

(assert (=> b!1356547 (= tp!391499 e!868513)))

(declare-fun b!1357205 () Bool)

(assert (=> b!1357205 (= e!868513 tp_is_empty!6727)))

(declare-fun b!1357206 () Bool)

(declare-fun tp!391587 () Bool)

(declare-fun tp!391585 () Bool)

(assert (=> b!1357206 (= e!868513 (and tp!391587 tp!391585))))

(declare-fun b!1357207 () Bool)

(declare-fun tp!391588 () Bool)

(assert (=> b!1357207 (= e!868513 tp!391588)))

(assert (= (and b!1356547 ((_ is ElementMatch!3709) (regex!2395 (rule!4144 t1!34)))) b!1357205))

(assert (= (and b!1356547 ((_ is Concat!6195) (regex!2395 (rule!4144 t1!34)))) b!1357206))

(assert (= (and b!1356547 ((_ is Star!3709) (regex!2395 (rule!4144 t1!34)))) b!1357207))

(assert (= (and b!1356547 ((_ is Union!3709) (regex!2395 (rule!4144 t1!34)))) b!1357208))

(declare-fun b!1357213 () Bool)

(declare-fun e!868516 () Bool)

(declare-fun tp!391591 () Bool)

(assert (=> b!1357213 (= e!868516 (and tp_is_empty!6727 tp!391591))))

(assert (=> b!1356569 (= tp!391491 e!868516)))

(assert (= (and b!1356569 ((_ is Cons!13822) (originalCharacters!3257 t2!34))) b!1357213))

(declare-fun b!1357214 () Bool)

(declare-fun e!868517 () Bool)

(declare-fun tp!391592 () Bool)

(assert (=> b!1357214 (= e!868517 (and tp_is_empty!6727 tp!391592))))

(assert (=> b!1356554 (= tp!391496 e!868517)))

(assert (= (and b!1356554 ((_ is Cons!13822) (originalCharacters!3257 t1!34))) b!1357214))

(declare-fun b_lambda!40891 () Bool)

(assert (= b_lambda!40841 (or b!1356548 b_lambda!40891)))

(declare-fun bs!334011 () Bool)

(declare-fun d!384618 () Bool)

(assert (= bs!334011 (and d!384618 b!1356548)))

(assert (=> bs!334011 (= (dynLambda!6194 lambda!57377 (h!19226 rules!2550)) (regex!2395 (h!19226 rules!2550)))))

(assert (=> b!1356768 d!384618))

(declare-fun b_lambda!40893 () Bool)

(assert (= b_lambda!40837 (or b!1356539 b_lambda!40893)))

(declare-fun bs!334012 () Bool)

(declare-fun d!384620 () Bool)

(assert (= bs!334012 (and d!384620 b!1356539)))

(assert (=> bs!334012 (= (dynLambda!6191 lambda!57379 lt!449313) (= (regex!2395 lt!449313) lt!449241))))

(assert (=> d!384412 d!384620))

(declare-fun b_lambda!40895 () Bool)

(assert (= b_lambda!40831 (or (and b!1356557 b_free!33029 (= (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) (and b!1356541 b_free!33033) (and b!1356535 b_free!33037 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) (and b!1357204 b_free!33045 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) b_lambda!40895)))

(declare-fun b_lambda!40897 () Bool)

(assert (= b_lambda!40843 (or b!1356548 b_lambda!40897)))

(declare-fun bs!334013 () Bool)

(declare-fun d!384622 () Bool)

(assert (= bs!334013 (and d!384622 b!1356548)))

(declare-fun res!611530 () Bool)

(declare-fun e!868518 () Bool)

(assert (=> bs!334013 (=> (not res!611530) (not e!868518))))

(assert (=> bs!334013 (= res!611530 (validRegex!1609 lt!449356))))

(assert (=> bs!334013 (= (dynLambda!6195 lambda!57378 lt!449356) e!868518)))

(declare-fun b!1357215 () Bool)

(assert (=> b!1357215 (= e!868518 (matchR!1702 lt!449356 lt!449252))))

(assert (= (and bs!334013 res!611530) b!1357215))

(declare-fun m!1519983 () Bool)

(assert (=> bs!334013 m!1519983))

(declare-fun m!1519985 () Bool)

(assert (=> b!1357215 m!1519985))

(assert (=> d!384442 d!384622))

(declare-fun b_lambda!40899 () Bool)

(assert (= b_lambda!40889 (or (and b!1356557 b_free!33029) (and b!1356541 b_free!33033 (= (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) (and b!1356535 b_free!33037 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) (and b!1357204 b_free!33045 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) b_lambda!40899)))

(declare-fun b_lambda!40901 () Bool)

(assert (= b_lambda!40845 (or b!1356548 b_lambda!40901)))

(declare-fun bs!334014 () Bool)

(declare-fun d!384624 () Bool)

(assert (= bs!334014 (and d!384624 b!1356548)))

(declare-fun res!611531 () Bool)

(declare-fun e!868519 () Bool)

(assert (=> bs!334014 (=> (not res!611531) (not e!868519))))

(assert (=> bs!334014 (= res!611531 (validRegex!1609 (h!19227 (map!3053 rules!2550 lambda!57377))))))

(assert (=> bs!334014 (= (dynLambda!6195 lambda!57378 (h!19227 (map!3053 rules!2550 lambda!57377))) e!868519)))

(declare-fun b!1357216 () Bool)

(assert (=> b!1357216 (= e!868519 (matchR!1702 (h!19227 (map!3053 rules!2550 lambda!57377)) lt!449252))))

(assert (= (and bs!334014 res!611531) b!1357216))

(declare-fun m!1519987 () Bool)

(assert (=> bs!334014 m!1519987))

(declare-fun m!1519989 () Bool)

(assert (=> b!1357216 m!1519989))

(assert (=> b!1356786 d!384624))

(declare-fun b_lambda!40903 () Bool)

(assert (= b_lambda!40835 (or b!1356539 b_lambda!40903)))

(declare-fun bs!334015 () Bool)

(declare-fun d!384626 () Bool)

(assert (= bs!334015 (and d!384626 b!1356539)))

(assert (=> bs!334015 (= (dynLambda!6191 lambda!57379 (h!19226 rules!2550)) (= (regex!2395 (h!19226 rules!2550)) lt!449241))))

(assert (=> b!1356709 d!384626))

(declare-fun b_lambda!40905 () Bool)

(assert (= b_lambda!40847 (or (and b!1356557 b_free!33029 (= (toChars!3509 (transformation!2395 (rule!4144 t2!34))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) (and b!1356541 b_free!33033) (and b!1356535 b_free!33037 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) (and b!1357204 b_free!33045 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t1!34))))) b_lambda!40905)))

(declare-fun b_lambda!40907 () Bool)

(assert (= b_lambda!40839 (or b!1356540 b_lambda!40907)))

(declare-fun bs!334016 () Bool)

(declare-fun d!384628 () Bool)

(assert (= bs!334016 (and d!384628 b!1356540)))

(declare-fun res!611532 () Bool)

(declare-fun e!868520 () Bool)

(assert (=> bs!334016 (=> (not res!611532) (not e!868520))))

(assert (=> bs!334016 (= res!611532 (matchR!1702 lt!449246 lt!449328))))

(assert (=> bs!334016 (= (dynLambda!6192 lambda!57376 lt!449328) e!868520)))

(declare-fun b!1357217 () Bool)

(assert (=> b!1357217 (= e!868520 (isPrefix!1119 lt!449243 lt!449328))))

(assert (= (and bs!334016 res!611532) b!1357217))

(declare-fun m!1519991 () Bool)

(assert (=> bs!334016 m!1519991))

(declare-fun m!1519993 () Bool)

(assert (=> b!1357217 m!1519993))

(assert (=> d!384432 d!384628))

(declare-fun b_lambda!40909 () Bool)

(assert (= b_lambda!40849 (or (and b!1356557 b_free!33029) (and b!1356541 b_free!33033 (= (toChars!3509 (transformation!2395 (rule!4144 t1!34))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) (and b!1356535 b_free!33037 (= (toChars!3509 (transformation!2395 (h!19226 rules!2550))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) (and b!1357204 b_free!33045 (= (toChars!3509 (transformation!2395 (h!19226 (t!120394 rules!2550)))) (toChars!3509 (transformation!2395 (rule!4144 t2!34))))) b_lambda!40909)))

(check-sat (not d!384436) (not d!384376) (not d!384484) (not b!1356838) (not d!384480) b_and!90865 (not b!1357207) (not b!1357191) (not d!384450) (not d!384458) (not b!1356830) (not b!1357161) (not tb!71271) b_and!90803 (not d!384462) (not b!1356896) (not b!1356669) (not b_lambda!40901) (not bm!91250) (not d!384456) (not b!1356670) (not b_lambda!40891) (not d!384430) (not d!384612) (not b!1356997) (not d!384428) (not b!1356852) (not d!384482) (not d!384388) (not b_next!33735) (not b!1357159) (not bs!334013) (not b_lambda!40905) (not d!384442) (not b!1356710) (not d!384426) (not b!1356821) (not b!1356707) b_and!90811 (not d!384522) (not d!384412) (not b!1356999) (not d!384488) (not b!1357169) (not b!1356768) (not d!384518) (not b!1356995) (not b!1356898) (not b!1357216) (not d!384520) (not tb!71265) (not b!1356902) (not b!1356706) (not b_lambda!40895) (not b!1356668) (not b_next!33749) (not b!1356955) (not bm!91253) (not b_lambda!40897) (not b!1357166) (not b!1356797) (not b!1357215) (not b!1356586) (not d!384454) (not b!1356783) (not b!1356836) (not b!1356822) (not b!1356839) (not b_next!33739) (not b!1357160) (not b!1356903) (not d!384384) (not b!1356585) (not b!1356850) (not b!1356785) (not b!1357217) (not b!1356994) (not d!384502) (not b!1356837) (not b!1357187) (not b!1356954) (not d!384532) (not b_next!33747) (not d!384610) (not b!1356824) (not b!1356798) (not d!384606) b_and!90861 (not b_lambda!40903) (not b!1356820) (not b!1356835) (not d!384470) (not b!1357005) (not d!384476) (not b!1356989) (not d!384600) (not b!1356895) (not b!1356799) (not b!1357192) b_and!90869 (not b!1357208) (not b!1356753) (not d!384440) (not b!1356901) (not b!1356796) (not b!1356719) (not d!384452) (not b!1356953) (not b!1356993) (not b!1356716) (not d!384420) (not b!1356812) (not b!1357213) (not b!1357214) (not b!1357164) (not b!1356897) (not b!1357163) (not d!384438) (not d!384424) (not b!1356811) (not b!1356851) (not bs!334014) (not d!384382) (not b!1356591) (not b!1356815) (not b!1356912) (not d!384380) (not d!384468) (not bs!334016) (not d!384604) (not b!1356602) (not d!384530) (not b!1356580) (not d!384608) (not b_next!33737) (not b!1357162) (not b!1356909) (not b!1356800) (not d!384616) (not b!1356601) (not b!1356737) (not b!1357206) (not d!384378) (not b_lambda!40893) (not b!1357203) (not d!384614) (not b!1356725) (not b_lambda!40907) (not d!384500) (not d!384460) (not b!1357202) (not d!384432) (not b!1357193) (not b_next!33741) b_and!90867 (not b!1356788) (not b!1356718) (not b_lambda!40909) (not b!1356794) b_and!90863 (not b!1356900) (not b!1356671) (not d!384386) (not d!384474) (not d!384498) b_and!90807 (not b!1357189) (not d!384472) tp_is_empty!6727 (not b!1357188) (not b_next!33731) (not b_next!33733) (not d!384602) (not b_lambda!40899))
(check-sat b_and!90865 b_and!90803 (not b_next!33735) b_and!90811 (not b_next!33749) (not b_next!33739) (not b_next!33747) b_and!90861 b_and!90869 (not b_next!33737) (not b_next!33741) b_and!90867 b_and!90863 b_and!90807 (not b_next!33731) (not b_next!33733))
