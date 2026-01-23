; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124638 () Bool)

(assert start!124638)

(declare-fun b!1378449 () Bool)

(declare-fun b_free!33467 () Bool)

(declare-fun b_next!34171 () Bool)

(assert (=> b!1378449 (= b_free!33467 (not b_next!34171))))

(declare-fun tp!395064 () Bool)

(declare-fun b_and!92347 () Bool)

(assert (=> b!1378449 (= tp!395064 b_and!92347)))

(declare-fun b_free!33469 () Bool)

(declare-fun b_next!34173 () Bool)

(assert (=> b!1378449 (= b_free!33469 (not b_next!34173))))

(declare-fun tp!395057 () Bool)

(declare-fun b_and!92349 () Bool)

(assert (=> b!1378449 (= tp!395057 b_and!92349)))

(declare-fun b!1378458 () Bool)

(declare-fun b_free!33471 () Bool)

(declare-fun b_next!34175 () Bool)

(assert (=> b!1378458 (= b_free!33471 (not b_next!34175))))

(declare-fun tp!395063 () Bool)

(declare-fun b_and!92351 () Bool)

(assert (=> b!1378458 (= tp!395063 b_and!92351)))

(declare-fun b_free!33473 () Bool)

(declare-fun b_next!34177 () Bool)

(assert (=> b!1378458 (= b_free!33473 (not b_next!34177))))

(declare-fun tp!395061 () Bool)

(declare-fun b_and!92353 () Bool)

(assert (=> b!1378458 (= tp!395061 b_and!92353)))

(declare-fun b!1378444 () Bool)

(declare-fun b_free!33475 () Bool)

(declare-fun b_next!34179 () Bool)

(assert (=> b!1378444 (= b_free!33475 (not b_next!34179))))

(declare-fun tp!395068 () Bool)

(declare-fun b_and!92355 () Bool)

(assert (=> b!1378444 (= tp!395068 b_and!92355)))

(declare-fun b_free!33477 () Bool)

(declare-fun b_next!34181 () Bool)

(assert (=> b!1378444 (= b_free!33477 (not b_next!34181))))

(declare-fun tp!395060 () Bool)

(declare-fun b_and!92357 () Bool)

(assert (=> b!1378444 (= tp!395060 b_and!92357)))

(declare-fun b!1378443 () Bool)

(declare-fun res!621656 () Bool)

(declare-fun e!880869 () Bool)

(assert (=> b!1378443 (=> (not res!621656) (not e!880869))))

(declare-datatypes ((List!14050 0))(
  ( (Nil!13984) (Cons!13984 (h!19385 (_ BitVec 16)) (t!121863 List!14050)) )
))
(declare-datatypes ((TokenValue!2513 0))(
  ( (FloatLiteralValue!5026 (text!18036 List!14050)) (TokenValueExt!2512 (__x!8855 Int)) (Broken!12565 (value!78662 List!14050)) (Object!2578) (End!2513) (Def!2513) (Underscore!2513) (Match!2513) (Else!2513) (Error!2513) (Case!2513) (If!2513) (Extends!2513) (Abstract!2513) (Class!2513) (Val!2513) (DelimiterValue!5026 (del!2573 List!14050)) (KeywordValue!2519 (value!78663 List!14050)) (CommentValue!5026 (value!78664 List!14050)) (WhitespaceValue!5026 (value!78665 List!14050)) (IndentationValue!2513 (value!78666 List!14050)) (String!16800) (Int32!2513) (Broken!12566 (value!78667 List!14050)) (Boolean!2514) (Unit!20250) (OperatorValue!2516 (op!2573 List!14050)) (IdentifierValue!5026 (value!78668 List!14050)) (IdentifierValue!5027 (value!78669 List!14050)) (WhitespaceValue!5027 (value!78670 List!14050)) (True!5026) (False!5026) (Broken!12567 (value!78671 List!14050)) (Broken!12568 (value!78672 List!14050)) (True!5027) (RightBrace!2513) (RightBracket!2513) (Colon!2513) (Null!2513) (Comma!2513) (LeftBracket!2513) (False!5027) (LeftBrace!2513) (ImaginaryLiteralValue!2513 (text!18037 List!14050)) (StringLiteralValue!7539 (value!78673 List!14050)) (EOFValue!2513 (value!78674 List!14050)) (IdentValue!2513 (value!78675 List!14050)) (DelimiterValue!5027 (value!78676 List!14050)) (DedentValue!2513 (value!78677 List!14050)) (NewLineValue!2513 (value!78678 List!14050)) (IntegerValue!7539 (value!78679 (_ BitVec 32)) (text!18038 List!14050)) (IntegerValue!7540 (value!78680 Int) (text!18039 List!14050)) (Times!2513) (Or!2513) (Equal!2513) (Minus!2513) (Broken!12569 (value!78681 List!14050)) (And!2513) (Div!2513) (LessEqual!2513) (Mod!2513) (Concat!6250) (Not!2513) (Plus!2513) (SpaceValue!2513 (value!78682 List!14050)) (IntegerValue!7541 (value!78683 Int) (text!18040 List!14050)) (StringLiteralValue!7540 (text!18041 List!14050)) (FloatLiteralValue!5027 (text!18042 List!14050)) (BytesLiteralValue!2513 (value!78684 List!14050)) (CommentValue!5027 (value!78685 List!14050)) (StringLiteralValue!7541 (value!78686 List!14050)) (ErrorTokenValue!2513 (msg!2574 List!14050)) )
))
(declare-datatypes ((C!7764 0))(
  ( (C!7765 (val!4442 Int)) )
))
(declare-datatypes ((List!14051 0))(
  ( (Nil!13985) (Cons!13985 (h!19386 C!7764) (t!121864 List!14051)) )
))
(declare-datatypes ((IArray!9219 0))(
  ( (IArray!9220 (innerList!4667 List!14051)) )
))
(declare-datatypes ((Conc!4607 0))(
  ( (Node!4607 (left!11960 Conc!4607) (right!12290 Conc!4607) (csize!9444 Int) (cheight!4818 Int)) (Leaf!7015 (xs!7334 IArray!9219) (csize!9445 Int)) (Empty!4607) )
))
(declare-datatypes ((BalanceConc!9154 0))(
  ( (BalanceConc!9155 (c!226767 Conc!4607)) )
))
(declare-datatypes ((Regex!3737 0))(
  ( (ElementMatch!3737 (c!226768 C!7764)) (Concat!6251 (regOne!7986 Regex!3737) (regTwo!7986 Regex!3737)) (EmptyExpr!3737) (Star!3737 (reg!4066 Regex!3737)) (EmptyLang!3737) (Union!3737 (regOne!7987 Regex!3737) (regTwo!7987 Regex!3737)) )
))
(declare-datatypes ((String!16801 0))(
  ( (String!16802 (value!78687 String)) )
))
(declare-datatypes ((TokenValueInjection!4686 0))(
  ( (TokenValueInjection!4687 (toValue!3698 Int) (toChars!3557 Int)) )
))
(declare-datatypes ((Rule!4646 0))(
  ( (Rule!4647 (regex!2423 Regex!3737) (tag!2685 String!16801) (isSeparator!2423 Bool) (transformation!2423 TokenValueInjection!4686)) )
))
(declare-datatypes ((List!14052 0))(
  ( (Nil!13986) (Cons!13986 (h!19387 Rule!4646) (t!121865 List!14052)) )
))
(declare-fun rules!2550 () List!14052)

(declare-datatypes ((Token!4508 0))(
  ( (Token!4509 (value!78688 TokenValue!2513) (rule!4182 Rule!4646) (size!11455 Int) (originalCharacters!3285 List!14051)) )
))
(declare-fun t2!34 () Token!4508)

(declare-datatypes ((LexerInterface!2118 0))(
  ( (LexerInterfaceExt!2115 (__x!8856 Int)) (Lexer!2116) )
))
(declare-fun thiss!19762 () LexerInterface!2118)

(declare-fun rulesProduceIndividualToken!1087 (LexerInterface!2118 List!14052 Token!4508) Bool)

(assert (=> b!1378443 (= res!621656 (rulesProduceIndividualToken!1087 thiss!19762 rules!2550 t2!34))))

(declare-fun e!880862 () Bool)

(assert (=> b!1378444 (= e!880862 (and tp!395068 tp!395060))))

(declare-fun b!1378445 () Bool)

(declare-fun res!621653 () Bool)

(assert (=> b!1378445 (=> (not res!621653) (not e!880869))))

(declare-fun isEmpty!8433 (List!14052) Bool)

(assert (=> b!1378445 (= res!621653 (not (isEmpty!8433 rules!2550)))))

(declare-fun b!1378446 () Bool)

(declare-fun e!880872 () Bool)

(declare-fun e!880874 () Bool)

(declare-fun tp!395058 () Bool)

(assert (=> b!1378446 (= e!880872 (and e!880874 tp!395058))))

(declare-fun b!1378447 () Bool)

(declare-fun e!880858 () Bool)

(declare-fun e!880864 () Bool)

(assert (=> b!1378447 (= e!880858 e!880864)))

(declare-fun res!621655 () Bool)

(assert (=> b!1378447 (=> (not res!621655) (not e!880864))))

(declare-fun lt!458460 () Regex!3737)

(declare-fun lt!458458 () List!14051)

(declare-fun prefixMatch!246 (Regex!3737 List!14051) Bool)

(assert (=> b!1378447 (= res!621655 (prefixMatch!246 lt!458460 lt!458458))))

(declare-fun rulesRegex!306 (LexerInterface!2118 List!14052) Regex!3737)

(assert (=> b!1378447 (= lt!458460 (rulesRegex!306 thiss!19762 rules!2550))))

(declare-fun t1!34 () Token!4508)

(declare-fun lt!458459 () BalanceConc!9154)

(declare-fun ++!3620 (List!14051 List!14051) List!14051)

(declare-fun list!5401 (BalanceConc!9154) List!14051)

(declare-fun charsOf!1395 (Token!4508) BalanceConc!9154)

(declare-fun apply!3453 (BalanceConc!9154 Int) C!7764)

(assert (=> b!1378447 (= lt!458458 (++!3620 (list!5401 (charsOf!1395 t1!34)) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))

(declare-fun e!880866 () Bool)

(assert (=> b!1378449 (= e!880866 (and tp!395064 tp!395057))))

(declare-fun tp!395059 () Bool)

(declare-fun b!1378450 () Bool)

(declare-fun inv!18324 (String!16801) Bool)

(declare-fun inv!18327 (TokenValueInjection!4686) Bool)

(assert (=> b!1378450 (= e!880874 (and tp!395059 (inv!18324 (tag!2685 (h!19387 rules!2550))) (inv!18327 (transformation!2423 (h!19387 rules!2550))) e!880862))))

(declare-fun b!1378451 () Bool)

(declare-fun validRegex!1623 (Regex!3737) Bool)

(assert (=> b!1378451 (= e!880864 (not (validRegex!1623 lt!458460)))))

(declare-fun e!880868 () Bool)

(declare-fun e!880863 () Bool)

(declare-fun b!1378452 () Bool)

(declare-fun tp!395062 () Bool)

(declare-fun inv!21 (TokenValue!2513) Bool)

(assert (=> b!1378452 (= e!880868 (and (inv!21 (value!78688 t1!34)) e!880863 tp!395062))))

(declare-fun b!1378453 () Bool)

(declare-fun res!621654 () Bool)

(assert (=> b!1378453 (=> (not res!621654) (not e!880869))))

(assert (=> b!1378453 (= res!621654 (not (= (isSeparator!2423 (rule!4182 t1!34)) (isSeparator!2423 (rule!4182 t2!34)))))))

(declare-fun b!1378454 () Bool)

(declare-fun res!621648 () Bool)

(assert (=> b!1378454 (=> (not res!621648) (not e!880858))))

(declare-fun separableTokensPredicate!401 (LexerInterface!2118 Token!4508 Token!4508 List!14052) Bool)

(assert (=> b!1378454 (= res!621648 (not (separableTokensPredicate!401 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!880867 () Bool)

(declare-fun tp!395066 () Bool)

(declare-fun b!1378455 () Bool)

(declare-fun e!880871 () Bool)

(assert (=> b!1378455 (= e!880871 (and (inv!21 (value!78688 t2!34)) e!880867 tp!395066))))

(declare-fun b!1378456 () Bool)

(declare-fun res!621651 () Bool)

(assert (=> b!1378456 (=> (not res!621651) (not e!880858))))

(declare-fun sepAndNonSepRulesDisjointChars!796 (List!14052 List!14052) Bool)

(assert (=> b!1378456 (= res!621651 (sepAndNonSepRulesDisjointChars!796 rules!2550 rules!2550))))

(declare-fun e!880870 () Bool)

(declare-fun tp!395067 () Bool)

(declare-fun b!1378457 () Bool)

(assert (=> b!1378457 (= e!880863 (and tp!395067 (inv!18324 (tag!2685 (rule!4182 t1!34))) (inv!18327 (transformation!2423 (rule!4182 t1!34))) e!880870))))

(assert (=> b!1378458 (= e!880870 (and tp!395063 tp!395061))))

(declare-fun b!1378459 () Bool)

(assert (=> b!1378459 (= e!880869 e!880858)))

(declare-fun res!621649 () Bool)

(assert (=> b!1378459 (=> (not res!621649) (not e!880858))))

(declare-fun size!11456 (BalanceConc!9154) Int)

(assert (=> b!1378459 (= res!621649 (> (size!11456 lt!458459) 0))))

(assert (=> b!1378459 (= lt!458459 (charsOf!1395 t2!34))))

(declare-fun b!1378448 () Bool)

(declare-fun res!621657 () Bool)

(assert (=> b!1378448 (=> (not res!621657) (not e!880869))))

(assert (=> b!1378448 (= res!621657 (rulesProduceIndividualToken!1087 thiss!19762 rules!2550 t1!34))))

(declare-fun res!621650 () Bool)

(assert (=> start!124638 (=> (not res!621650) (not e!880869))))

(get-info :version)

(assert (=> start!124638 (= res!621650 ((_ is Lexer!2116) thiss!19762))))

(assert (=> start!124638 e!880869))

(assert (=> start!124638 true))

(assert (=> start!124638 e!880872))

(declare-fun inv!18328 (Token!4508) Bool)

(assert (=> start!124638 (and (inv!18328 t1!34) e!880868)))

(assert (=> start!124638 (and (inv!18328 t2!34) e!880871)))

(declare-fun b!1378460 () Bool)

(declare-fun tp!395065 () Bool)

(assert (=> b!1378460 (= e!880867 (and tp!395065 (inv!18324 (tag!2685 (rule!4182 t2!34))) (inv!18327 (transformation!2423 (rule!4182 t2!34))) e!880866))))

(declare-fun b!1378461 () Bool)

(declare-fun res!621652 () Bool)

(assert (=> b!1378461 (=> (not res!621652) (not e!880869))))

(declare-fun rulesInvariant!1988 (LexerInterface!2118 List!14052) Bool)

(assert (=> b!1378461 (= res!621652 (rulesInvariant!1988 thiss!19762 rules!2550))))

(assert (= (and start!124638 res!621650) b!1378445))

(assert (= (and b!1378445 res!621653) b!1378461))

(assert (= (and b!1378461 res!621652) b!1378448))

(assert (= (and b!1378448 res!621657) b!1378443))

(assert (= (and b!1378443 res!621656) b!1378453))

(assert (= (and b!1378453 res!621654) b!1378459))

(assert (= (and b!1378459 res!621649) b!1378456))

(assert (= (and b!1378456 res!621651) b!1378454))

(assert (= (and b!1378454 res!621648) b!1378447))

(assert (= (and b!1378447 res!621655) b!1378451))

(assert (= b!1378450 b!1378444))

(assert (= b!1378446 b!1378450))

(assert (= (and start!124638 ((_ is Cons!13986) rules!2550)) b!1378446))

(assert (= b!1378457 b!1378458))

(assert (= b!1378452 b!1378457))

(assert (= start!124638 b!1378452))

(assert (= b!1378460 b!1378449))

(assert (= b!1378455 b!1378460))

(assert (= start!124638 b!1378455))

(declare-fun m!1550985 () Bool)

(assert (=> b!1378448 m!1550985))

(declare-fun m!1550987 () Bool)

(assert (=> b!1378455 m!1550987))

(declare-fun m!1550989 () Bool)

(assert (=> b!1378456 m!1550989))

(declare-fun m!1550991 () Bool)

(assert (=> b!1378445 m!1550991))

(declare-fun m!1550993 () Bool)

(assert (=> b!1378457 m!1550993))

(declare-fun m!1550995 () Bool)

(assert (=> b!1378457 m!1550995))

(declare-fun m!1550997 () Bool)

(assert (=> b!1378454 m!1550997))

(declare-fun m!1550999 () Bool)

(assert (=> b!1378447 m!1550999))

(declare-fun m!1551001 () Bool)

(assert (=> b!1378447 m!1551001))

(assert (=> b!1378447 m!1551001))

(declare-fun m!1551003 () Bool)

(assert (=> b!1378447 m!1551003))

(declare-fun m!1551005 () Bool)

(assert (=> b!1378447 m!1551005))

(declare-fun m!1551007 () Bool)

(assert (=> b!1378447 m!1551007))

(assert (=> b!1378447 m!1550999))

(declare-fun m!1551009 () Bool)

(assert (=> b!1378447 m!1551009))

(declare-fun m!1551011 () Bool)

(assert (=> b!1378461 m!1551011))

(declare-fun m!1551013 () Bool)

(assert (=> b!1378460 m!1551013))

(declare-fun m!1551015 () Bool)

(assert (=> b!1378460 m!1551015))

(declare-fun m!1551017 () Bool)

(assert (=> b!1378443 m!1551017))

(declare-fun m!1551019 () Bool)

(assert (=> b!1378452 m!1551019))

(declare-fun m!1551021 () Bool)

(assert (=> b!1378451 m!1551021))

(declare-fun m!1551023 () Bool)

(assert (=> b!1378459 m!1551023))

(declare-fun m!1551025 () Bool)

(assert (=> b!1378459 m!1551025))

(declare-fun m!1551027 () Bool)

(assert (=> start!124638 m!1551027))

(declare-fun m!1551029 () Bool)

(assert (=> start!124638 m!1551029))

(declare-fun m!1551031 () Bool)

(assert (=> b!1378450 m!1551031))

(declare-fun m!1551033 () Bool)

(assert (=> b!1378450 m!1551033))

(check-sat (not b!1378443) b_and!92351 b_and!92347 (not b_next!34173) (not b!1378460) (not b!1378456) (not b_next!34181) (not b_next!34171) (not b_next!34177) b_and!92353 (not start!124638) (not b!1378447) (not b!1378455) (not b_next!34179) (not b!1378452) b_and!92355 (not b!1378445) (not b!1378454) b_and!92357 (not b!1378448) (not b!1378446) (not b!1378450) b_and!92349 (not b!1378457) (not b_next!34175) (not b!1378451) (not b!1378459) (not b!1378461))
(check-sat b_and!92351 b_and!92347 (not b_next!34173) (not b_next!34179) b_and!92355 b_and!92357 b_and!92349 (not b_next!34181) (not b_next!34175) (not b_next!34171) (not b_next!34177) b_and!92353)
(get-model)

(declare-fun b!1378472 () Bool)

(declare-fun e!880881 () Bool)

(declare-fun inv!15 (TokenValue!2513) Bool)

(assert (=> b!1378472 (= e!880881 (inv!15 (value!78688 t2!34)))))

(declare-fun d!393448 () Bool)

(declare-fun c!226774 () Bool)

(assert (=> d!393448 (= c!226774 ((_ is IntegerValue!7539) (value!78688 t2!34)))))

(declare-fun e!880882 () Bool)

(assert (=> d!393448 (= (inv!21 (value!78688 t2!34)) e!880882)))

(declare-fun b!1378473 () Bool)

(declare-fun res!621664 () Bool)

(assert (=> b!1378473 (=> res!621664 e!880881)))

(assert (=> b!1378473 (= res!621664 (not ((_ is IntegerValue!7541) (value!78688 t2!34))))))

(declare-fun e!880883 () Bool)

(assert (=> b!1378473 (= e!880883 e!880881)))

(declare-fun b!1378474 () Bool)

(declare-fun inv!17 (TokenValue!2513) Bool)

(assert (=> b!1378474 (= e!880883 (inv!17 (value!78688 t2!34)))))

(declare-fun b!1378475 () Bool)

(assert (=> b!1378475 (= e!880882 e!880883)))

(declare-fun c!226773 () Bool)

(assert (=> b!1378475 (= c!226773 ((_ is IntegerValue!7540) (value!78688 t2!34)))))

(declare-fun b!1378476 () Bool)

(declare-fun inv!16 (TokenValue!2513) Bool)

(assert (=> b!1378476 (= e!880882 (inv!16 (value!78688 t2!34)))))

(assert (= (and d!393448 c!226774) b!1378476))

(assert (= (and d!393448 (not c!226774)) b!1378475))

(assert (= (and b!1378475 c!226773) b!1378474))

(assert (= (and b!1378475 (not c!226773)) b!1378473))

(assert (= (and b!1378473 (not res!621664)) b!1378472))

(declare-fun m!1551035 () Bool)

(assert (=> b!1378472 m!1551035))

(declare-fun m!1551037 () Bool)

(assert (=> b!1378474 m!1551037))

(declare-fun m!1551039 () Bool)

(assert (=> b!1378476 m!1551039))

(assert (=> b!1378455 d!393448))

(declare-fun d!393450 () Bool)

(assert (=> d!393450 (= (isEmpty!8433 rules!2550) ((_ is Nil!13986) rules!2550))))

(assert (=> b!1378445 d!393450))

(declare-fun d!393452 () Bool)

(declare-fun res!621673 () Bool)

(declare-fun e!880888 () Bool)

(assert (=> d!393452 (=> res!621673 e!880888)))

(assert (=> d!393452 (= res!621673 (not ((_ is Cons!13986) rules!2550)))))

(assert (=> d!393452 (= (sepAndNonSepRulesDisjointChars!796 rules!2550 rules!2550) e!880888)))

(declare-fun b!1378481 () Bool)

(declare-fun e!880889 () Bool)

(assert (=> b!1378481 (= e!880888 e!880889)))

(declare-fun res!621674 () Bool)

(assert (=> b!1378481 (=> (not res!621674) (not e!880889))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!373 (Rule!4646 List!14052) Bool)

(assert (=> b!1378481 (= res!621674 (ruleDisjointCharsFromAllFromOtherType!373 (h!19387 rules!2550) rules!2550))))

(declare-fun b!1378482 () Bool)

(assert (=> b!1378482 (= e!880889 (sepAndNonSepRulesDisjointChars!796 rules!2550 (t!121865 rules!2550)))))

(assert (= (and d!393452 (not res!621673)) b!1378481))

(assert (= (and b!1378481 res!621674) b!1378482))

(declare-fun m!1551041 () Bool)

(assert (=> b!1378481 m!1551041))

(declare-fun m!1551043 () Bool)

(assert (=> b!1378482 m!1551043))

(assert (=> b!1378456 d!393452))

(declare-fun d!393454 () Bool)

(declare-fun lt!458489 () Bool)

(declare-fun e!880975 () Bool)

(assert (=> d!393454 (= lt!458489 e!880975)))

(declare-fun res!621745 () Bool)

(assert (=> d!393454 (=> (not res!621745) (not e!880975))))

(declare-datatypes ((List!14056 0))(
  ( (Nil!13990) (Cons!13990 (h!19391 Token!4508) (t!121903 List!14056)) )
))
(declare-datatypes ((IArray!9223 0))(
  ( (IArray!9224 (innerList!4669 List!14056)) )
))
(declare-datatypes ((Conc!4609 0))(
  ( (Node!4609 (left!11962 Conc!4609) (right!12292 Conc!4609) (csize!9448 Int) (cheight!4820 Int)) (Leaf!7017 (xs!7336 IArray!9223) (csize!9449 Int)) (Empty!4609) )
))
(declare-datatypes ((BalanceConc!9158 0))(
  ( (BalanceConc!9159 (c!226810 Conc!4609)) )
))
(declare-fun list!5404 (BalanceConc!9158) List!14056)

(declare-datatypes ((tuple2!13606 0))(
  ( (tuple2!13607 (_1!7689 BalanceConc!9158) (_2!7689 BalanceConc!9154)) )
))
(declare-fun lex!945 (LexerInterface!2118 List!14052 BalanceConc!9154) tuple2!13606)

(declare-fun print!884 (LexerInterface!2118 BalanceConc!9158) BalanceConc!9154)

(declare-fun singletonSeq!1059 (Token!4508) BalanceConc!9158)

(assert (=> d!393454 (= res!621745 (= (list!5404 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))))) (list!5404 (singletonSeq!1059 t2!34))))))

(declare-fun e!880976 () Bool)

(assert (=> d!393454 (= lt!458489 e!880976)))

(declare-fun res!621744 () Bool)

(assert (=> d!393454 (=> (not res!621744) (not e!880976))))

(declare-fun lt!458490 () tuple2!13606)

(declare-fun size!11460 (BalanceConc!9158) Int)

(assert (=> d!393454 (= res!621744 (= (size!11460 (_1!7689 lt!458490)) 1))))

(assert (=> d!393454 (= lt!458490 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))))))

(assert (=> d!393454 (not (isEmpty!8433 rules!2550))))

(assert (=> d!393454 (= (rulesProduceIndividualToken!1087 thiss!19762 rules!2550 t2!34) lt!458489)))

(declare-fun b!1378619 () Bool)

(declare-fun res!621743 () Bool)

(assert (=> b!1378619 (=> (not res!621743) (not e!880976))))

(declare-fun apply!3457 (BalanceConc!9158 Int) Token!4508)

(assert (=> b!1378619 (= res!621743 (= (apply!3457 (_1!7689 lt!458490) 0) t2!34))))

(declare-fun b!1378620 () Bool)

(declare-fun isEmpty!8436 (BalanceConc!9154) Bool)

(assert (=> b!1378620 (= e!880976 (isEmpty!8436 (_2!7689 lt!458490)))))

(declare-fun b!1378621 () Bool)

(assert (=> b!1378621 (= e!880975 (isEmpty!8436 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))))))))

(assert (= (and d!393454 res!621744) b!1378619))

(assert (= (and b!1378619 res!621743) b!1378620))

(assert (= (and d!393454 res!621745) b!1378621))

(declare-fun m!1551199 () Bool)

(assert (=> d!393454 m!1551199))

(declare-fun m!1551201 () Bool)

(assert (=> d!393454 m!1551201))

(declare-fun m!1551203 () Bool)

(assert (=> d!393454 m!1551203))

(assert (=> d!393454 m!1550991))

(assert (=> d!393454 m!1551201))

(declare-fun m!1551205 () Bool)

(assert (=> d!393454 m!1551205))

(declare-fun m!1551207 () Bool)

(assert (=> d!393454 m!1551207))

(assert (=> d!393454 m!1551199))

(declare-fun m!1551209 () Bool)

(assert (=> d!393454 m!1551209))

(assert (=> d!393454 m!1551199))

(declare-fun m!1551211 () Bool)

(assert (=> b!1378619 m!1551211))

(declare-fun m!1551213 () Bool)

(assert (=> b!1378620 m!1551213))

(assert (=> b!1378621 m!1551199))

(assert (=> b!1378621 m!1551199))

(assert (=> b!1378621 m!1551201))

(assert (=> b!1378621 m!1551201))

(assert (=> b!1378621 m!1551205))

(declare-fun m!1551215 () Bool)

(assert (=> b!1378621 m!1551215))

(assert (=> b!1378443 d!393454))

(declare-fun d!393506 () Bool)

(declare-fun prefixMatchZipperSequence!266 (Regex!3737 BalanceConc!9154) Bool)

(declare-fun ++!3622 (BalanceConc!9154 BalanceConc!9154) BalanceConc!9154)

(declare-fun singletonSeq!1060 (C!7764) BalanceConc!9154)

(assert (=> d!393506 (= (separableTokensPredicate!401 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!266 (rulesRegex!306 thiss!19762 rules!2550) (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))))))

(declare-fun bs!336351 () Bool)

(assert (= bs!336351 d!393506))

(assert (=> bs!336351 m!1551005))

(declare-fun m!1551221 () Bool)

(assert (=> bs!336351 m!1551221))

(declare-fun m!1551223 () Bool)

(assert (=> bs!336351 m!1551223))

(assert (=> bs!336351 m!1551025))

(declare-fun m!1551225 () Bool)

(assert (=> bs!336351 m!1551225))

(assert (=> bs!336351 m!1551005))

(assert (=> bs!336351 m!1551025))

(assert (=> bs!336351 m!1551225))

(declare-fun m!1551227 () Bool)

(assert (=> bs!336351 m!1551227))

(assert (=> bs!336351 m!1550999))

(assert (=> bs!336351 m!1550999))

(assert (=> bs!336351 m!1551227))

(assert (=> bs!336351 m!1551221))

(assert (=> b!1378454 d!393506))

(declare-fun d!393508 () Bool)

(declare-fun c!226798 () Bool)

(declare-fun isEmpty!8437 (List!14051) Bool)

(assert (=> d!393508 (= c!226798 (isEmpty!8437 lt!458458))))

(declare-fun e!880994 () Bool)

(assert (=> d!393508 (= (prefixMatch!246 lt!458460 lt!458458) e!880994)))

(declare-fun b!1378643 () Bool)

(declare-fun lostCause!337 (Regex!3737) Bool)

(assert (=> b!1378643 (= e!880994 (not (lostCause!337 lt!458460)))))

(declare-fun b!1378644 () Bool)

(declare-fun derivativeStep!961 (Regex!3737 C!7764) Regex!3737)

(declare-fun head!2497 (List!14051) C!7764)

(declare-fun tail!1994 (List!14051) List!14051)

(assert (=> b!1378644 (= e!880994 (prefixMatch!246 (derivativeStep!961 lt!458460 (head!2497 lt!458458)) (tail!1994 lt!458458)))))

(assert (= (and d!393508 c!226798) b!1378643))

(assert (= (and d!393508 (not c!226798)) b!1378644))

(declare-fun m!1551229 () Bool)

(assert (=> d!393508 m!1551229))

(declare-fun m!1551231 () Bool)

(assert (=> b!1378643 m!1551231))

(declare-fun m!1551233 () Bool)

(assert (=> b!1378644 m!1551233))

(assert (=> b!1378644 m!1551233))

(declare-fun m!1551235 () Bool)

(assert (=> b!1378644 m!1551235))

(declare-fun m!1551237 () Bool)

(assert (=> b!1378644 m!1551237))

(assert (=> b!1378644 m!1551235))

(assert (=> b!1378644 m!1551237))

(declare-fun m!1551239 () Bool)

(assert (=> b!1378644 m!1551239))

(assert (=> b!1378447 d!393508))

(declare-fun d!393510 () Bool)

(declare-fun lt!458493 () C!7764)

(declare-fun apply!3458 (List!14051 Int) C!7764)

(assert (=> d!393510 (= lt!458493 (apply!3458 (list!5401 lt!458459) 0))))

(declare-fun apply!3459 (Conc!4607 Int) C!7764)

(assert (=> d!393510 (= lt!458493 (apply!3459 (c!226767 lt!458459) 0))))

(declare-fun e!880997 () Bool)

(assert (=> d!393510 e!880997))

(declare-fun res!621748 () Bool)

(assert (=> d!393510 (=> (not res!621748) (not e!880997))))

(assert (=> d!393510 (= res!621748 (<= 0 0))))

(assert (=> d!393510 (= (apply!3453 lt!458459 0) lt!458493)))

(declare-fun b!1378647 () Bool)

(assert (=> b!1378647 (= e!880997 (< 0 (size!11456 lt!458459)))))

(assert (= (and d!393510 res!621748) b!1378647))

(declare-fun m!1551241 () Bool)

(assert (=> d!393510 m!1551241))

(assert (=> d!393510 m!1551241))

(declare-fun m!1551243 () Bool)

(assert (=> d!393510 m!1551243))

(declare-fun m!1551245 () Bool)

(assert (=> d!393510 m!1551245))

(assert (=> b!1378647 m!1551023))

(assert (=> b!1378447 d!393510))

(declare-fun b!1378657 () Bool)

(declare-fun e!881002 () List!14051)

(assert (=> b!1378657 (= e!881002 (Cons!13985 (h!19386 (list!5401 (charsOf!1395 t1!34))) (++!3620 (t!121864 (list!5401 (charsOf!1395 t1!34))) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985))))))

(declare-fun d!393512 () Bool)

(declare-fun e!881003 () Bool)

(assert (=> d!393512 e!881003))

(declare-fun res!621753 () Bool)

(assert (=> d!393512 (=> (not res!621753) (not e!881003))))

(declare-fun lt!458496 () List!14051)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2041 (List!14051) (InoxSet C!7764))

(assert (=> d!393512 (= res!621753 (= (content!2041 lt!458496) ((_ map or) (content!2041 (list!5401 (charsOf!1395 t1!34))) (content!2041 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(assert (=> d!393512 (= lt!458496 e!881002)))

(declare-fun c!226801 () Bool)

(assert (=> d!393512 (= c!226801 ((_ is Nil!13985) (list!5401 (charsOf!1395 t1!34))))))

(assert (=> d!393512 (= (++!3620 (list!5401 (charsOf!1395 t1!34)) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)) lt!458496)))

(declare-fun b!1378659 () Bool)

(assert (=> b!1378659 (= e!881003 (or (not (= (Cons!13985 (apply!3453 lt!458459 0) Nil!13985) Nil!13985)) (= lt!458496 (list!5401 (charsOf!1395 t1!34)))))))

(declare-fun b!1378658 () Bool)

(declare-fun res!621754 () Bool)

(assert (=> b!1378658 (=> (not res!621754) (not e!881003))))

(declare-fun size!11461 (List!14051) Int)

(assert (=> b!1378658 (= res!621754 (= (size!11461 lt!458496) (+ (size!11461 (list!5401 (charsOf!1395 t1!34))) (size!11461 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(declare-fun b!1378656 () Bool)

(assert (=> b!1378656 (= e!881002 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985))))

(assert (= (and d!393512 c!226801) b!1378656))

(assert (= (and d!393512 (not c!226801)) b!1378657))

(assert (= (and d!393512 res!621753) b!1378658))

(assert (= (and b!1378658 res!621754) b!1378659))

(declare-fun m!1551247 () Bool)

(assert (=> b!1378657 m!1551247))

(declare-fun m!1551249 () Bool)

(assert (=> d!393512 m!1551249))

(assert (=> d!393512 m!1551001))

(declare-fun m!1551251 () Bool)

(assert (=> d!393512 m!1551251))

(declare-fun m!1551253 () Bool)

(assert (=> d!393512 m!1551253))

(declare-fun m!1551255 () Bool)

(assert (=> b!1378658 m!1551255))

(assert (=> b!1378658 m!1551001))

(declare-fun m!1551257 () Bool)

(assert (=> b!1378658 m!1551257))

(declare-fun m!1551259 () Bool)

(assert (=> b!1378658 m!1551259))

(assert (=> b!1378447 d!393512))

(declare-fun d!393514 () Bool)

(declare-fun list!5405 (Conc!4607) List!14051)

(assert (=> d!393514 (= (list!5401 (charsOf!1395 t1!34)) (list!5405 (c!226767 (charsOf!1395 t1!34))))))

(declare-fun bs!336352 () Bool)

(assert (= bs!336352 d!393514))

(declare-fun m!1551261 () Bool)

(assert (=> bs!336352 m!1551261))

(assert (=> b!1378447 d!393514))

(declare-fun d!393516 () Bool)

(declare-fun lt!458499 () BalanceConc!9154)

(assert (=> d!393516 (= (list!5401 lt!458499) (originalCharacters!3285 t1!34))))

(declare-fun dynLambda!6354 (Int TokenValue!2513) BalanceConc!9154)

(assert (=> d!393516 (= lt!458499 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))

(assert (=> d!393516 (= (charsOf!1395 t1!34) lt!458499)))

(declare-fun b_lambda!42411 () Bool)

(assert (=> (not b_lambda!42411) (not d!393516)))

(declare-fun tb!72457 () Bool)

(declare-fun t!121887 () Bool)

(assert (=> (and b!1378449 (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) t!121887) tb!72457))

(declare-fun b!1378664 () Bool)

(declare-fun e!881006 () Bool)

(declare-fun tp!395116 () Bool)

(declare-fun inv!18331 (Conc!4607) Bool)

(assert (=> b!1378664 (= e!881006 (and (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))) tp!395116))))

(declare-fun result!87982 () Bool)

(declare-fun inv!18332 (BalanceConc!9154) Bool)

(assert (=> tb!72457 (= result!87982 (and (inv!18332 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))) e!881006))))

(assert (= tb!72457 b!1378664))

(declare-fun m!1551263 () Bool)

(assert (=> b!1378664 m!1551263))

(declare-fun m!1551265 () Bool)

(assert (=> tb!72457 m!1551265))

(assert (=> d!393516 t!121887))

(declare-fun b_and!92387 () Bool)

(assert (= b_and!92349 (and (=> t!121887 result!87982) b_and!92387)))

(declare-fun t!121889 () Bool)

(declare-fun tb!72459 () Bool)

(assert (=> (and b!1378458 (= (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) t!121889) tb!72459))

(declare-fun result!87986 () Bool)

(assert (= result!87986 result!87982))

(assert (=> d!393516 t!121889))

(declare-fun b_and!92389 () Bool)

(assert (= b_and!92353 (and (=> t!121889 result!87986) b_and!92389)))

(declare-fun tb!72461 () Bool)

(declare-fun t!121891 () Bool)

(assert (=> (and b!1378444 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) t!121891) tb!72461))

(declare-fun result!87988 () Bool)

(assert (= result!87988 result!87982))

(assert (=> d!393516 t!121891))

(declare-fun b_and!92391 () Bool)

(assert (= b_and!92357 (and (=> t!121891 result!87988) b_and!92391)))

(declare-fun m!1551267 () Bool)

(assert (=> d!393516 m!1551267))

(declare-fun m!1551269 () Bool)

(assert (=> d!393516 m!1551269))

(assert (=> b!1378447 d!393516))

(declare-fun d!393518 () Bool)

(declare-datatypes ((Unit!20253 0))(
  ( (Unit!20254) )
))
(declare-fun lt!458502 () Unit!20253)

(declare-fun lemma!131 (List!14052 LexerInterface!2118 List!14052) Unit!20253)

(assert (=> d!393518 (= lt!458502 (lemma!131 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!59049 () Int)

(declare-datatypes ((List!14057 0))(
  ( (Nil!13991) (Cons!13991 (h!19392 Regex!3737) (t!121904 List!14057)) )
))
(declare-fun generalisedUnion!139 (List!14057) Regex!3737)

(declare-fun map!3095 (List!14052 Int) List!14057)

(assert (=> d!393518 (= (rulesRegex!306 thiss!19762 rules!2550) (generalisedUnion!139 (map!3095 rules!2550 lambda!59049)))))

(declare-fun bs!336353 () Bool)

(assert (= bs!336353 d!393518))

(declare-fun m!1551271 () Bool)

(assert (=> bs!336353 m!1551271))

(declare-fun m!1551273 () Bool)

(assert (=> bs!336353 m!1551273))

(assert (=> bs!336353 m!1551273))

(declare-fun m!1551275 () Bool)

(assert (=> bs!336353 m!1551275))

(assert (=> b!1378447 d!393518))

(declare-fun d!393520 () Bool)

(declare-fun lt!458503 () Bool)

(declare-fun e!881007 () Bool)

(assert (=> d!393520 (= lt!458503 e!881007)))

(declare-fun res!621757 () Bool)

(assert (=> d!393520 (=> (not res!621757) (not e!881007))))

(assert (=> d!393520 (= res!621757 (= (list!5404 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))))) (list!5404 (singletonSeq!1059 t1!34))))))

(declare-fun e!881008 () Bool)

(assert (=> d!393520 (= lt!458503 e!881008)))

(declare-fun res!621756 () Bool)

(assert (=> d!393520 (=> (not res!621756) (not e!881008))))

(declare-fun lt!458504 () tuple2!13606)

(assert (=> d!393520 (= res!621756 (= (size!11460 (_1!7689 lt!458504)) 1))))

(assert (=> d!393520 (= lt!458504 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))))))

(assert (=> d!393520 (not (isEmpty!8433 rules!2550))))

(assert (=> d!393520 (= (rulesProduceIndividualToken!1087 thiss!19762 rules!2550 t1!34) lt!458503)))

(declare-fun b!1378665 () Bool)

(declare-fun res!621755 () Bool)

(assert (=> b!1378665 (=> (not res!621755) (not e!881008))))

(assert (=> b!1378665 (= res!621755 (= (apply!3457 (_1!7689 lt!458504) 0) t1!34))))

(declare-fun b!1378666 () Bool)

(assert (=> b!1378666 (= e!881008 (isEmpty!8436 (_2!7689 lt!458504)))))

(declare-fun b!1378667 () Bool)

(assert (=> b!1378667 (= e!881007 (isEmpty!8436 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))))))))

(assert (= (and d!393520 res!621756) b!1378665))

(assert (= (and b!1378665 res!621755) b!1378666))

(assert (= (and d!393520 res!621757) b!1378667))

(declare-fun m!1551277 () Bool)

(assert (=> d!393520 m!1551277))

(declare-fun m!1551279 () Bool)

(assert (=> d!393520 m!1551279))

(declare-fun m!1551281 () Bool)

(assert (=> d!393520 m!1551281))

(assert (=> d!393520 m!1550991))

(assert (=> d!393520 m!1551279))

(declare-fun m!1551283 () Bool)

(assert (=> d!393520 m!1551283))

(declare-fun m!1551285 () Bool)

(assert (=> d!393520 m!1551285))

(assert (=> d!393520 m!1551277))

(declare-fun m!1551287 () Bool)

(assert (=> d!393520 m!1551287))

(assert (=> d!393520 m!1551277))

(declare-fun m!1551289 () Bool)

(assert (=> b!1378665 m!1551289))

(declare-fun m!1551291 () Bool)

(assert (=> b!1378666 m!1551291))

(assert (=> b!1378667 m!1551277))

(assert (=> b!1378667 m!1551277))

(assert (=> b!1378667 m!1551279))

(assert (=> b!1378667 m!1551279))

(assert (=> b!1378667 m!1551283))

(declare-fun m!1551293 () Bool)

(assert (=> b!1378667 m!1551293))

(assert (=> b!1378448 d!393520))

(declare-fun d!393522 () Bool)

(assert (=> d!393522 (= (inv!18324 (tag!2685 (rule!4182 t1!34))) (= (mod (str.len (value!78687 (tag!2685 (rule!4182 t1!34)))) 2) 0))))

(assert (=> b!1378457 d!393522))

(declare-fun d!393524 () Bool)

(declare-fun res!621760 () Bool)

(declare-fun e!881011 () Bool)

(assert (=> d!393524 (=> (not res!621760) (not e!881011))))

(declare-fun semiInverseModEq!932 (Int Int) Bool)

(assert (=> d!393524 (= res!621760 (semiInverseModEq!932 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))))))

(assert (=> d!393524 (= (inv!18327 (transformation!2423 (rule!4182 t1!34))) e!881011)))

(declare-fun b!1378670 () Bool)

(declare-fun equivClasses!891 (Int Int) Bool)

(assert (=> b!1378670 (= e!881011 (equivClasses!891 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))))))

(assert (= (and d!393524 res!621760) b!1378670))

(declare-fun m!1551295 () Bool)

(assert (=> d!393524 m!1551295))

(declare-fun m!1551297 () Bool)

(assert (=> b!1378670 m!1551297))

(assert (=> b!1378457 d!393524))

(declare-fun d!393526 () Bool)

(assert (=> d!393526 (= (inv!18324 (tag!2685 (h!19387 rules!2550))) (= (mod (str.len (value!78687 (tag!2685 (h!19387 rules!2550)))) 2) 0))))

(assert (=> b!1378450 d!393526))

(declare-fun d!393528 () Bool)

(declare-fun res!621761 () Bool)

(declare-fun e!881012 () Bool)

(assert (=> d!393528 (=> (not res!621761) (not e!881012))))

(assert (=> d!393528 (= res!621761 (semiInverseModEq!932 (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (h!19387 rules!2550)))))))

(assert (=> d!393528 (= (inv!18327 (transformation!2423 (h!19387 rules!2550))) e!881012)))

(declare-fun b!1378671 () Bool)

(assert (=> b!1378671 (= e!881012 (equivClasses!891 (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (h!19387 rules!2550)))))))

(assert (= (and d!393528 res!621761) b!1378671))

(declare-fun m!1551299 () Bool)

(assert (=> d!393528 m!1551299))

(declare-fun m!1551301 () Bool)

(assert (=> b!1378671 m!1551301))

(assert (=> b!1378450 d!393528))

(declare-fun d!393530 () Bool)

(declare-fun res!621764 () Bool)

(declare-fun e!881015 () Bool)

(assert (=> d!393530 (=> (not res!621764) (not e!881015))))

(declare-fun rulesValid!901 (LexerInterface!2118 List!14052) Bool)

(assert (=> d!393530 (= res!621764 (rulesValid!901 thiss!19762 rules!2550))))

(assert (=> d!393530 (= (rulesInvariant!1988 thiss!19762 rules!2550) e!881015)))

(declare-fun b!1378674 () Bool)

(declare-datatypes ((List!14058 0))(
  ( (Nil!13992) (Cons!13992 (h!19393 String!16801) (t!121905 List!14058)) )
))
(declare-fun noDuplicateTag!901 (LexerInterface!2118 List!14052 List!14058) Bool)

(assert (=> b!1378674 (= e!881015 (noDuplicateTag!901 thiss!19762 rules!2550 Nil!13992))))

(assert (= (and d!393530 res!621764) b!1378674))

(declare-fun m!1551303 () Bool)

(assert (=> d!393530 m!1551303))

(declare-fun m!1551305 () Bool)

(assert (=> b!1378674 m!1551305))

(assert (=> b!1378461 d!393530))

(declare-fun d!393532 () Bool)

(declare-fun lt!458507 () Int)

(assert (=> d!393532 (= lt!458507 (size!11461 (list!5401 lt!458459)))))

(declare-fun size!11462 (Conc!4607) Int)

(assert (=> d!393532 (= lt!458507 (size!11462 (c!226767 lt!458459)))))

(assert (=> d!393532 (= (size!11456 lt!458459) lt!458507)))

(declare-fun bs!336354 () Bool)

(assert (= bs!336354 d!393532))

(assert (=> bs!336354 m!1551241))

(assert (=> bs!336354 m!1551241))

(declare-fun m!1551307 () Bool)

(assert (=> bs!336354 m!1551307))

(declare-fun m!1551309 () Bool)

(assert (=> bs!336354 m!1551309))

(assert (=> b!1378459 d!393532))

(declare-fun d!393534 () Bool)

(declare-fun lt!458508 () BalanceConc!9154)

(assert (=> d!393534 (= (list!5401 lt!458508) (originalCharacters!3285 t2!34))))

(assert (=> d!393534 (= lt!458508 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))

(assert (=> d!393534 (= (charsOf!1395 t2!34) lt!458508)))

(declare-fun b_lambda!42413 () Bool)

(assert (=> (not b_lambda!42413) (not d!393534)))

(declare-fun t!121894 () Bool)

(declare-fun tb!72463 () Bool)

(assert (=> (and b!1378449 (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) t!121894) tb!72463))

(declare-fun b!1378675 () Bool)

(declare-fun e!881016 () Bool)

(declare-fun tp!395117 () Bool)

(assert (=> b!1378675 (= e!881016 (and (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))) tp!395117))))

(declare-fun result!87990 () Bool)

(assert (=> tb!72463 (= result!87990 (and (inv!18332 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))) e!881016))))

(assert (= tb!72463 b!1378675))

(declare-fun m!1551311 () Bool)

(assert (=> b!1378675 m!1551311))

(declare-fun m!1551313 () Bool)

(assert (=> tb!72463 m!1551313))

(assert (=> d!393534 t!121894))

(declare-fun b_and!92393 () Bool)

(assert (= b_and!92387 (and (=> t!121894 result!87990) b_and!92393)))

(declare-fun t!121896 () Bool)

(declare-fun tb!72465 () Bool)

(assert (=> (and b!1378458 (= (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) t!121896) tb!72465))

(declare-fun result!87992 () Bool)

(assert (= result!87992 result!87990))

(assert (=> d!393534 t!121896))

(declare-fun b_and!92395 () Bool)

(assert (= b_and!92389 (and (=> t!121896 result!87992) b_and!92395)))

(declare-fun tb!72467 () Bool)

(declare-fun t!121898 () Bool)

(assert (=> (and b!1378444 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) t!121898) tb!72467))

(declare-fun result!87994 () Bool)

(assert (= result!87994 result!87990))

(assert (=> d!393534 t!121898))

(declare-fun b_and!92397 () Bool)

(assert (= b_and!92391 (and (=> t!121898 result!87994) b_and!92397)))

(declare-fun m!1551315 () Bool)

(assert (=> d!393534 m!1551315))

(declare-fun m!1551317 () Bool)

(assert (=> d!393534 m!1551317))

(assert (=> b!1378459 d!393534))

(declare-fun d!393536 () Bool)

(declare-fun res!621769 () Bool)

(declare-fun e!881019 () Bool)

(assert (=> d!393536 (=> (not res!621769) (not e!881019))))

(assert (=> d!393536 (= res!621769 (not (isEmpty!8437 (originalCharacters!3285 t1!34))))))

(assert (=> d!393536 (= (inv!18328 t1!34) e!881019)))

(declare-fun b!1378680 () Bool)

(declare-fun res!621770 () Bool)

(assert (=> b!1378680 (=> (not res!621770) (not e!881019))))

(assert (=> b!1378680 (= res!621770 (= (originalCharacters!3285 t1!34) (list!5401 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(declare-fun b!1378681 () Bool)

(assert (=> b!1378681 (= e!881019 (= (size!11455 t1!34) (size!11461 (originalCharacters!3285 t1!34))))))

(assert (= (and d!393536 res!621769) b!1378680))

(assert (= (and b!1378680 res!621770) b!1378681))

(declare-fun b_lambda!42415 () Bool)

(assert (=> (not b_lambda!42415) (not b!1378680)))

(assert (=> b!1378680 t!121887))

(declare-fun b_and!92399 () Bool)

(assert (= b_and!92393 (and (=> t!121887 result!87982) b_and!92399)))

(assert (=> b!1378680 t!121889))

(declare-fun b_and!92401 () Bool)

(assert (= b_and!92395 (and (=> t!121889 result!87986) b_and!92401)))

(assert (=> b!1378680 t!121891))

(declare-fun b_and!92403 () Bool)

(assert (= b_and!92397 (and (=> t!121891 result!87988) b_and!92403)))

(declare-fun m!1551319 () Bool)

(assert (=> d!393536 m!1551319))

(assert (=> b!1378680 m!1551269))

(assert (=> b!1378680 m!1551269))

(declare-fun m!1551321 () Bool)

(assert (=> b!1378680 m!1551321))

(declare-fun m!1551323 () Bool)

(assert (=> b!1378681 m!1551323))

(assert (=> start!124638 d!393536))

(declare-fun d!393538 () Bool)

(declare-fun res!621771 () Bool)

(declare-fun e!881020 () Bool)

(assert (=> d!393538 (=> (not res!621771) (not e!881020))))

(assert (=> d!393538 (= res!621771 (not (isEmpty!8437 (originalCharacters!3285 t2!34))))))

(assert (=> d!393538 (= (inv!18328 t2!34) e!881020)))

(declare-fun b!1378682 () Bool)

(declare-fun res!621772 () Bool)

(assert (=> b!1378682 (=> (not res!621772) (not e!881020))))

(assert (=> b!1378682 (= res!621772 (= (originalCharacters!3285 t2!34) (list!5401 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(declare-fun b!1378683 () Bool)

(assert (=> b!1378683 (= e!881020 (= (size!11455 t2!34) (size!11461 (originalCharacters!3285 t2!34))))))

(assert (= (and d!393538 res!621771) b!1378682))

(assert (= (and b!1378682 res!621772) b!1378683))

(declare-fun b_lambda!42417 () Bool)

(assert (=> (not b_lambda!42417) (not b!1378682)))

(assert (=> b!1378682 t!121894))

(declare-fun b_and!92405 () Bool)

(assert (= b_and!92399 (and (=> t!121894 result!87990) b_and!92405)))

(assert (=> b!1378682 t!121896))

(declare-fun b_and!92407 () Bool)

(assert (= b_and!92401 (and (=> t!121896 result!87992) b_and!92407)))

(assert (=> b!1378682 t!121898))

(declare-fun b_and!92409 () Bool)

(assert (= b_and!92403 (and (=> t!121898 result!87994) b_and!92409)))

(declare-fun m!1551325 () Bool)

(assert (=> d!393538 m!1551325))

(assert (=> b!1378682 m!1551317))

(assert (=> b!1378682 m!1551317))

(declare-fun m!1551327 () Bool)

(assert (=> b!1378682 m!1551327))

(declare-fun m!1551329 () Bool)

(assert (=> b!1378683 m!1551329))

(assert (=> start!124638 d!393538))

(declare-fun d!393540 () Bool)

(assert (=> d!393540 (= (inv!18324 (tag!2685 (rule!4182 t2!34))) (= (mod (str.len (value!78687 (tag!2685 (rule!4182 t2!34)))) 2) 0))))

(assert (=> b!1378460 d!393540))

(declare-fun d!393542 () Bool)

(declare-fun res!621773 () Bool)

(declare-fun e!881021 () Bool)

(assert (=> d!393542 (=> (not res!621773) (not e!881021))))

(assert (=> d!393542 (= res!621773 (semiInverseModEq!932 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t2!34)))))))

(assert (=> d!393542 (= (inv!18327 (transformation!2423 (rule!4182 t2!34))) e!881021)))

(declare-fun b!1378684 () Bool)

(assert (=> b!1378684 (= e!881021 (equivClasses!891 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t2!34)))))))

(assert (= (and d!393542 res!621773) b!1378684))

(declare-fun m!1551331 () Bool)

(assert (=> d!393542 m!1551331))

(declare-fun m!1551333 () Bool)

(assert (=> b!1378684 m!1551333))

(assert (=> b!1378460 d!393542))

(declare-fun b!1378703 () Bool)

(declare-fun res!621787 () Bool)

(declare-fun e!881037 () Bool)

(assert (=> b!1378703 (=> res!621787 e!881037)))

(assert (=> b!1378703 (= res!621787 (not ((_ is Concat!6251) lt!458460)))))

(declare-fun e!881036 () Bool)

(assert (=> b!1378703 (= e!881036 e!881037)))

(declare-fun b!1378704 () Bool)

(declare-fun e!881040 () Bool)

(declare-fun e!881041 () Bool)

(assert (=> b!1378704 (= e!881040 e!881041)))

(declare-fun c!226806 () Bool)

(assert (=> b!1378704 (= c!226806 ((_ is Star!3737) lt!458460))))

(declare-fun call!92369 () Bool)

(declare-fun c!226807 () Bool)

(declare-fun bm!92362 () Bool)

(assert (=> bm!92362 (= call!92369 (validRegex!1623 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))

(declare-fun b!1378705 () Bool)

(declare-fun e!881038 () Bool)

(declare-fun call!92368 () Bool)

(assert (=> b!1378705 (= e!881038 call!92368)))

(declare-fun d!393544 () Bool)

(declare-fun res!621788 () Bool)

(assert (=> d!393544 (=> res!621788 e!881040)))

(assert (=> d!393544 (= res!621788 ((_ is ElementMatch!3737) lt!458460))))

(assert (=> d!393544 (= (validRegex!1623 lt!458460) e!881040)))

(declare-fun b!1378706 () Bool)

(declare-fun e!881042 () Bool)

(assert (=> b!1378706 (= e!881042 call!92369)))

(declare-fun bm!92363 () Bool)

(declare-fun call!92367 () Bool)

(assert (=> bm!92363 (= call!92367 (validRegex!1623 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))

(declare-fun b!1378707 () Bool)

(assert (=> b!1378707 (= e!881041 e!881042)))

(declare-fun res!621785 () Bool)

(declare-fun nullable!1203 (Regex!3737) Bool)

(assert (=> b!1378707 (= res!621785 (not (nullable!1203 (reg!4066 lt!458460))))))

(assert (=> b!1378707 (=> (not res!621785) (not e!881042))))

(declare-fun b!1378708 () Bool)

(declare-fun res!621786 () Bool)

(declare-fun e!881039 () Bool)

(assert (=> b!1378708 (=> (not res!621786) (not e!881039))))

(assert (=> b!1378708 (= res!621786 call!92367)))

(assert (=> b!1378708 (= e!881036 e!881039)))

(declare-fun b!1378709 () Bool)

(assert (=> b!1378709 (= e!881041 e!881036)))

(assert (=> b!1378709 (= c!226807 ((_ is Union!3737) lt!458460))))

(declare-fun b!1378710 () Bool)

(assert (=> b!1378710 (= e!881039 call!92368)))

(declare-fun b!1378711 () Bool)

(assert (=> b!1378711 (= e!881037 e!881038)))

(declare-fun res!621784 () Bool)

(assert (=> b!1378711 (=> (not res!621784) (not e!881038))))

(assert (=> b!1378711 (= res!621784 call!92367)))

(declare-fun bm!92364 () Bool)

(assert (=> bm!92364 (= call!92368 call!92369)))

(assert (= (and d!393544 (not res!621788)) b!1378704))

(assert (= (and b!1378704 c!226806) b!1378707))

(assert (= (and b!1378704 (not c!226806)) b!1378709))

(assert (= (and b!1378707 res!621785) b!1378706))

(assert (= (and b!1378709 c!226807) b!1378708))

(assert (= (and b!1378709 (not c!226807)) b!1378703))

(assert (= (and b!1378708 res!621786) b!1378710))

(assert (= (and b!1378703 (not res!621787)) b!1378711))

(assert (= (and b!1378711 res!621784) b!1378705))

(assert (= (or b!1378708 b!1378711) bm!92363))

(assert (= (or b!1378710 b!1378705) bm!92364))

(assert (= (or b!1378706 bm!92364) bm!92362))

(declare-fun m!1551335 () Bool)

(assert (=> bm!92362 m!1551335))

(declare-fun m!1551337 () Bool)

(assert (=> bm!92363 m!1551337))

(declare-fun m!1551339 () Bool)

(assert (=> b!1378707 m!1551339))

(assert (=> b!1378451 d!393544))

(declare-fun b!1378712 () Bool)

(declare-fun e!881043 () Bool)

(assert (=> b!1378712 (= e!881043 (inv!15 (value!78688 t1!34)))))

(declare-fun d!393546 () Bool)

(declare-fun c!226809 () Bool)

(assert (=> d!393546 (= c!226809 ((_ is IntegerValue!7539) (value!78688 t1!34)))))

(declare-fun e!881044 () Bool)

(assert (=> d!393546 (= (inv!21 (value!78688 t1!34)) e!881044)))

(declare-fun b!1378713 () Bool)

(declare-fun res!621789 () Bool)

(assert (=> b!1378713 (=> res!621789 e!881043)))

(assert (=> b!1378713 (= res!621789 (not ((_ is IntegerValue!7541) (value!78688 t1!34))))))

(declare-fun e!881045 () Bool)

(assert (=> b!1378713 (= e!881045 e!881043)))

(declare-fun b!1378714 () Bool)

(assert (=> b!1378714 (= e!881045 (inv!17 (value!78688 t1!34)))))

(declare-fun b!1378715 () Bool)

(assert (=> b!1378715 (= e!881044 e!881045)))

(declare-fun c!226808 () Bool)

(assert (=> b!1378715 (= c!226808 ((_ is IntegerValue!7540) (value!78688 t1!34)))))

(declare-fun b!1378716 () Bool)

(assert (=> b!1378716 (= e!881044 (inv!16 (value!78688 t1!34)))))

(assert (= (and d!393546 c!226809) b!1378716))

(assert (= (and d!393546 (not c!226809)) b!1378715))

(assert (= (and b!1378715 c!226808) b!1378714))

(assert (= (and b!1378715 (not c!226808)) b!1378713))

(assert (= (and b!1378713 (not res!621789)) b!1378712))

(declare-fun m!1551341 () Bool)

(assert (=> b!1378712 m!1551341))

(declare-fun m!1551343 () Bool)

(assert (=> b!1378714 m!1551343))

(declare-fun m!1551345 () Bool)

(assert (=> b!1378716 m!1551345))

(assert (=> b!1378452 d!393546))

(declare-fun b!1378721 () Bool)

(declare-fun e!881048 () Bool)

(declare-fun tp_is_empty!6755 () Bool)

(declare-fun tp!395120 () Bool)

(assert (=> b!1378721 (= e!881048 (and tp_is_empty!6755 tp!395120))))

(assert (=> b!1378455 (= tp!395066 e!881048)))

(assert (= (and b!1378455 ((_ is Cons!13985) (originalCharacters!3285 t2!34))) b!1378721))

(declare-fun e!881051 () Bool)

(assert (=> b!1378450 (= tp!395059 e!881051)))

(declare-fun b!1378734 () Bool)

(declare-fun tp!395134 () Bool)

(assert (=> b!1378734 (= e!881051 tp!395134)))

(declare-fun b!1378735 () Bool)

(declare-fun tp!395133 () Bool)

(declare-fun tp!395135 () Bool)

(assert (=> b!1378735 (= e!881051 (and tp!395133 tp!395135))))

(declare-fun b!1378732 () Bool)

(assert (=> b!1378732 (= e!881051 tp_is_empty!6755)))

(declare-fun b!1378733 () Bool)

(declare-fun tp!395132 () Bool)

(declare-fun tp!395131 () Bool)

(assert (=> b!1378733 (= e!881051 (and tp!395132 tp!395131))))

(assert (= (and b!1378450 ((_ is ElementMatch!3737) (regex!2423 (h!19387 rules!2550)))) b!1378732))

(assert (= (and b!1378450 ((_ is Concat!6251) (regex!2423 (h!19387 rules!2550)))) b!1378733))

(assert (= (and b!1378450 ((_ is Star!3737) (regex!2423 (h!19387 rules!2550)))) b!1378734))

(assert (= (and b!1378450 ((_ is Union!3737) (regex!2423 (h!19387 rules!2550)))) b!1378735))

(declare-fun e!881052 () Bool)

(assert (=> b!1378460 (= tp!395065 e!881052)))

(declare-fun b!1378738 () Bool)

(declare-fun tp!395139 () Bool)

(assert (=> b!1378738 (= e!881052 tp!395139)))

(declare-fun b!1378739 () Bool)

(declare-fun tp!395138 () Bool)

(declare-fun tp!395140 () Bool)

(assert (=> b!1378739 (= e!881052 (and tp!395138 tp!395140))))

(declare-fun b!1378736 () Bool)

(assert (=> b!1378736 (= e!881052 tp_is_empty!6755)))

(declare-fun b!1378737 () Bool)

(declare-fun tp!395137 () Bool)

(declare-fun tp!395136 () Bool)

(assert (=> b!1378737 (= e!881052 (and tp!395137 tp!395136))))

(assert (= (and b!1378460 ((_ is ElementMatch!3737) (regex!2423 (rule!4182 t2!34)))) b!1378736))

(assert (= (and b!1378460 ((_ is Concat!6251) (regex!2423 (rule!4182 t2!34)))) b!1378737))

(assert (= (and b!1378460 ((_ is Star!3737) (regex!2423 (rule!4182 t2!34)))) b!1378738))

(assert (= (and b!1378460 ((_ is Union!3737) (regex!2423 (rule!4182 t2!34)))) b!1378739))

(declare-fun b!1378750 () Bool)

(declare-fun b_free!33483 () Bool)

(declare-fun b_next!34187 () Bool)

(assert (=> b!1378750 (= b_free!33483 (not b_next!34187))))

(declare-fun tp!395152 () Bool)

(declare-fun b_and!92411 () Bool)

(assert (=> b!1378750 (= tp!395152 b_and!92411)))

(declare-fun b_free!33485 () Bool)

(declare-fun b_next!34189 () Bool)

(assert (=> b!1378750 (= b_free!33485 (not b_next!34189))))

(declare-fun tb!72469 () Bool)

(declare-fun t!121900 () Bool)

(assert (=> (and b!1378750 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) t!121900) tb!72469))

(declare-fun result!88002 () Bool)

(assert (= result!88002 result!87982))

(assert (=> d!393516 t!121900))

(declare-fun tb!72471 () Bool)

(declare-fun t!121902 () Bool)

(assert (=> (and b!1378750 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) t!121902) tb!72471))

(declare-fun result!88004 () Bool)

(assert (= result!88004 result!87990))

(assert (=> d!393534 t!121902))

(assert (=> b!1378680 t!121900))

(assert (=> b!1378682 t!121902))

(declare-fun tp!395151 () Bool)

(declare-fun b_and!92413 () Bool)

(assert (=> b!1378750 (= tp!395151 (and (=> t!121900 result!88002) (=> t!121902 result!88004) b_and!92413))))

(declare-fun e!881061 () Bool)

(assert (=> b!1378750 (= e!881061 (and tp!395152 tp!395151))))

(declare-fun e!881063 () Bool)

(declare-fun b!1378749 () Bool)

(declare-fun tp!395150 () Bool)

(assert (=> b!1378749 (= e!881063 (and tp!395150 (inv!18324 (tag!2685 (h!19387 (t!121865 rules!2550)))) (inv!18327 (transformation!2423 (h!19387 (t!121865 rules!2550)))) e!881061))))

(declare-fun b!1378748 () Bool)

(declare-fun e!881064 () Bool)

(declare-fun tp!395149 () Bool)

(assert (=> b!1378748 (= e!881064 (and e!881063 tp!395149))))

(assert (=> b!1378446 (= tp!395058 e!881064)))

(assert (= b!1378749 b!1378750))

(assert (= b!1378748 b!1378749))

(assert (= (and b!1378446 ((_ is Cons!13986) (t!121865 rules!2550))) b!1378748))

(declare-fun m!1551347 () Bool)

(assert (=> b!1378749 m!1551347))

(declare-fun m!1551349 () Bool)

(assert (=> b!1378749 m!1551349))

(declare-fun e!881065 () Bool)

(assert (=> b!1378457 (= tp!395067 e!881065)))

(declare-fun b!1378753 () Bool)

(declare-fun tp!395156 () Bool)

(assert (=> b!1378753 (= e!881065 tp!395156)))

(declare-fun b!1378754 () Bool)

(declare-fun tp!395155 () Bool)

(declare-fun tp!395157 () Bool)

(assert (=> b!1378754 (= e!881065 (and tp!395155 tp!395157))))

(declare-fun b!1378751 () Bool)

(assert (=> b!1378751 (= e!881065 tp_is_empty!6755)))

(declare-fun b!1378752 () Bool)

(declare-fun tp!395154 () Bool)

(declare-fun tp!395153 () Bool)

(assert (=> b!1378752 (= e!881065 (and tp!395154 tp!395153))))

(assert (= (and b!1378457 ((_ is ElementMatch!3737) (regex!2423 (rule!4182 t1!34)))) b!1378751))

(assert (= (and b!1378457 ((_ is Concat!6251) (regex!2423 (rule!4182 t1!34)))) b!1378752))

(assert (= (and b!1378457 ((_ is Star!3737) (regex!2423 (rule!4182 t1!34)))) b!1378753))

(assert (= (and b!1378457 ((_ is Union!3737) (regex!2423 (rule!4182 t1!34)))) b!1378754))

(declare-fun b!1378755 () Bool)

(declare-fun e!881066 () Bool)

(declare-fun tp!395158 () Bool)

(assert (=> b!1378755 (= e!881066 (and tp_is_empty!6755 tp!395158))))

(assert (=> b!1378452 (= tp!395062 e!881066)))

(assert (= (and b!1378452 ((_ is Cons!13985) (originalCharacters!3285 t1!34))) b!1378755))

(declare-fun b_lambda!42419 () Bool)

(assert (= b_lambda!42411 (or (and b!1378449 b_free!33469 (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) (and b!1378458 b_free!33473) (and b!1378444 b_free!33477 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) (and b!1378750 b_free!33485 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) b_lambda!42419)))

(declare-fun b_lambda!42421 () Bool)

(assert (= b_lambda!42417 (or (and b!1378449 b_free!33469) (and b!1378458 b_free!33473 (= (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) (and b!1378444 b_free!33477 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) (and b!1378750 b_free!33485 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) b_lambda!42421)))

(declare-fun b_lambda!42423 () Bool)

(assert (= b_lambda!42413 (or (and b!1378449 b_free!33469) (and b!1378458 b_free!33473 (= (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) (and b!1378444 b_free!33477 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) (and b!1378750 b_free!33485 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t2!34))))) b_lambda!42423)))

(declare-fun b_lambda!42425 () Bool)

(assert (= b_lambda!42415 (or (and b!1378449 b_free!33469 (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) (and b!1378458 b_free!33473) (and b!1378444 b_free!33477 (= (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) (and b!1378750 b_free!33485 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toChars!3557 (transformation!2423 (rule!4182 t1!34))))) b_lambda!42425)))

(check-sat (not b_lambda!42421) (not b!1378714) (not d!393520) (not d!393536) (not bm!92363) tp_is_empty!6755 (not b!1378755) (not d!393512) (not b!1378643) (not b!1378682) (not b!1378675) b_and!92351 (not b!1378666) (not b!1378737) b_and!92347 (not b!1378671) (not tb!72463) (not b!1378665) (not b_next!34173) (not b_next!34179) (not b!1378474) (not b!1378681) b_and!92411 (not b!1378620) (not b_lambda!42419) (not b!1378735) (not d!393530) b_and!92355 (not d!393516) (not d!393514) (not bm!92362) (not b!1378712) (not b!1378670) (not b!1378621) (not b!1378680) (not b!1378674) (not b!1378644) (not b!1378647) (not tb!72457) (not b!1378481) (not b!1378753) (not b!1378707) (not d!393518) (not b!1378657) (not d!393528) (not d!393506) (not b!1378476) (not d!393542) (not b!1378683) (not d!393538) b_and!92409 (not b_lambda!42423) (not b!1378684) (not b_next!34181) b_and!92405 (not d!393524) (not b_next!34175) (not b!1378667) (not b_lambda!42425) (not b_next!34187) b_and!92407 (not b!1378472) (not d!393508) (not b_next!34171) (not b!1378738) (not b!1378716) (not b!1378749) (not d!393454) (not b_next!34177) (not b!1378721) (not b!1378619) (not d!393534) (not d!393532) (not d!393510) b_and!92413 (not b!1378664) (not b!1378752) (not b!1378734) (not b!1378733) (not b_next!34189) (not b!1378658) (not b!1378739) (not b!1378754) (not b!1378482) (not b!1378748))
(check-sat b_and!92351 b_and!92347 (not b_next!34173) (not b_next!34179) b_and!92411 b_and!92355 b_and!92409 (not b_next!34181) b_and!92405 (not b_next!34175) (not b_next!34171) (not b_next!34177) b_and!92413 (not b_next!34189) (not b_next!34187) b_and!92407)
(get-model)

(declare-fun d!393548 () Bool)

(declare-fun isBalanced!1353 (Conc!4607) Bool)

(assert (=> d!393548 (= (inv!18332 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))) (isBalanced!1353 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(declare-fun bs!336355 () Bool)

(assert (= bs!336355 d!393548))

(declare-fun m!1551351 () Bool)

(assert (=> bs!336355 m!1551351))

(assert (=> tb!72457 d!393548))

(declare-fun d!393550 () Bool)

(assert (=> d!393550 true))

(declare-fun order!8519 () Int)

(declare-fun order!8521 () Int)

(declare-fun lambda!59052 () Int)

(declare-fun dynLambda!6355 (Int Int) Int)

(declare-fun dynLambda!6356 (Int Int) Int)

(assert (=> d!393550 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (dynLambda!6356 order!8521 lambda!59052))))

(declare-fun Forall2!444 (Int) Bool)

(assert (=> d!393550 (= (equivClasses!891 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (Forall2!444 lambda!59052))))

(declare-fun bs!336360 () Bool)

(assert (= bs!336360 d!393550))

(declare-fun m!1551405 () Bool)

(assert (=> bs!336360 m!1551405))

(assert (=> b!1378670 d!393550))

(declare-fun bs!336361 () Bool)

(declare-fun d!393572 () Bool)

(assert (= bs!336361 (and d!393572 d!393550)))

(declare-fun lambda!59053 () Int)

(assert (=> bs!336361 (= (= (toValue!3698 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (= lambda!59053 lambda!59052))))

(assert (=> d!393572 true))

(assert (=> d!393572 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (rule!4182 t2!34)))) (dynLambda!6356 order!8521 lambda!59053))))

(assert (=> d!393572 (= (equivClasses!891 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t2!34)))) (Forall2!444 lambda!59053))))

(declare-fun bs!336362 () Bool)

(assert (= bs!336362 d!393572))

(declare-fun m!1551407 () Bool)

(assert (=> bs!336362 m!1551407))

(assert (=> b!1378684 d!393572))

(declare-fun d!393574 () Bool)

(declare-fun lt!458530 () Int)

(assert (=> d!393574 (>= lt!458530 0)))

(declare-fun e!881098 () Int)

(assert (=> d!393574 (= lt!458530 e!881098)))

(declare-fun c!226826 () Bool)

(assert (=> d!393574 (= c!226826 ((_ is Nil!13985) (originalCharacters!3285 t2!34)))))

(assert (=> d!393574 (= (size!11461 (originalCharacters!3285 t2!34)) lt!458530)))

(declare-fun b!1378806 () Bool)

(assert (=> b!1378806 (= e!881098 0)))

(declare-fun b!1378807 () Bool)

(assert (=> b!1378807 (= e!881098 (+ 1 (size!11461 (t!121864 (originalCharacters!3285 t2!34)))))))

(assert (= (and d!393574 c!226826) b!1378806))

(assert (= (and d!393574 (not c!226826)) b!1378807))

(declare-fun m!1551409 () Bool)

(assert (=> b!1378807 m!1551409))

(assert (=> b!1378683 d!393574))

(declare-fun d!393576 () Bool)

(declare-fun charsToBigInt!1 (List!14050) Int)

(assert (=> d!393576 (= (inv!17 (value!78688 t2!34)) (= (charsToBigInt!1 (text!18039 (value!78688 t2!34))) (value!78680 (value!78688 t2!34))))))

(declare-fun bs!336363 () Bool)

(assert (= bs!336363 d!393576))

(declare-fun m!1551411 () Bool)

(assert (=> bs!336363 m!1551411))

(assert (=> b!1378474 d!393576))

(declare-fun d!393578 () Bool)

(declare-fun lt!458531 () Int)

(assert (=> d!393578 (>= lt!458531 0)))

(declare-fun e!881099 () Int)

(assert (=> d!393578 (= lt!458531 e!881099)))

(declare-fun c!226827 () Bool)

(assert (=> d!393578 (= c!226827 ((_ is Nil!13985) (originalCharacters!3285 t1!34)))))

(assert (=> d!393578 (= (size!11461 (originalCharacters!3285 t1!34)) lt!458531)))

(declare-fun b!1378808 () Bool)

(assert (=> b!1378808 (= e!881099 0)))

(declare-fun b!1378809 () Bool)

(assert (=> b!1378809 (= e!881099 (+ 1 (size!11461 (t!121864 (originalCharacters!3285 t1!34)))))))

(assert (= (and d!393578 c!226827) b!1378808))

(assert (= (and d!393578 (not c!226827)) b!1378809))

(declare-fun m!1551413 () Bool)

(assert (=> b!1378809 m!1551413))

(assert (=> b!1378681 d!393578))

(declare-fun d!393580 () Bool)

(declare-fun charsToInt!0 (List!14050) (_ BitVec 32))

(assert (=> d!393580 (= (inv!16 (value!78688 t2!34)) (= (charsToInt!0 (text!18038 (value!78688 t2!34))) (value!78679 (value!78688 t2!34))))))

(declare-fun bs!336364 () Bool)

(assert (= bs!336364 d!393580))

(declare-fun m!1551415 () Bool)

(assert (=> bs!336364 m!1551415))

(assert (=> b!1378476 d!393580))

(declare-fun d!393582 () Bool)

(declare-fun list!5406 (Conc!4609) List!14056)

(assert (=> d!393582 (= (list!5404 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))))) (list!5406 (c!226810 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))))

(declare-fun bs!336365 () Bool)

(assert (= bs!336365 d!393582))

(declare-fun m!1551431 () Bool)

(assert (=> bs!336365 m!1551431))

(assert (=> d!393454 d!393582))

(declare-fun d!393586 () Bool)

(declare-fun lt!458537 () BalanceConc!9154)

(declare-fun printList!611 (LexerInterface!2118 List!14056) List!14051)

(assert (=> d!393586 (= (list!5401 lt!458537) (printList!611 thiss!19762 (list!5404 (singletonSeq!1059 t2!34))))))

(declare-fun printTailRec!593 (LexerInterface!2118 BalanceConc!9158 Int BalanceConc!9154) BalanceConc!9154)

(assert (=> d!393586 (= lt!458537 (printTailRec!593 thiss!19762 (singletonSeq!1059 t2!34) 0 (BalanceConc!9155 Empty!4607)))))

(assert (=> d!393586 (= (print!884 thiss!19762 (singletonSeq!1059 t2!34)) lt!458537)))

(declare-fun bs!336369 () Bool)

(assert (= bs!336369 d!393586))

(declare-fun m!1551447 () Bool)

(assert (=> bs!336369 m!1551447))

(assert (=> bs!336369 m!1551199))

(assert (=> bs!336369 m!1551209))

(assert (=> bs!336369 m!1551209))

(declare-fun m!1551449 () Bool)

(assert (=> bs!336369 m!1551449))

(assert (=> bs!336369 m!1551199))

(declare-fun m!1551451 () Bool)

(assert (=> bs!336369 m!1551451))

(assert (=> d!393454 d!393586))

(declare-fun d!393596 () Bool)

(declare-fun e!881112 () Bool)

(assert (=> d!393596 e!881112))

(declare-fun res!621824 () Bool)

(assert (=> d!393596 (=> (not res!621824) (not e!881112))))

(declare-fun lt!458540 () BalanceConc!9158)

(assert (=> d!393596 (= res!621824 (= (list!5404 lt!458540) (Cons!13990 t2!34 Nil!13990)))))

(declare-fun singleton!459 (Token!4508) BalanceConc!9158)

(assert (=> d!393596 (= lt!458540 (singleton!459 t2!34))))

(assert (=> d!393596 (= (singletonSeq!1059 t2!34) lt!458540)))

(declare-fun b!1378825 () Bool)

(declare-fun isBalanced!1354 (Conc!4609) Bool)

(assert (=> b!1378825 (= e!881112 (isBalanced!1354 (c!226810 lt!458540)))))

(assert (= (and d!393596 res!621824) b!1378825))

(declare-fun m!1551453 () Bool)

(assert (=> d!393596 m!1551453))

(declare-fun m!1551455 () Bool)

(assert (=> d!393596 m!1551455))

(declare-fun m!1551457 () Bool)

(assert (=> b!1378825 m!1551457))

(assert (=> d!393454 d!393596))

(assert (=> d!393454 d!393450))

(declare-fun b!1378836 () Bool)

(declare-fun res!621831 () Bool)

(declare-fun e!881119 () Bool)

(assert (=> b!1378836 (=> (not res!621831) (not e!881119))))

(declare-fun lt!458543 () tuple2!13606)

(declare-datatypes ((tuple2!13608 0))(
  ( (tuple2!13609 (_1!7690 List!14056) (_2!7690 List!14051)) )
))
(declare-fun lexList!635 (LexerInterface!2118 List!14052 List!14051) tuple2!13608)

(assert (=> b!1378836 (= res!621831 (= (list!5404 (_1!7689 lt!458543)) (_1!7690 (lexList!635 thiss!19762 rules!2550 (list!5401 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))))

(declare-fun b!1378837 () Bool)

(declare-fun e!881121 () Bool)

(declare-fun isEmpty!8438 (BalanceConc!9158) Bool)

(assert (=> b!1378837 (= e!881121 (not (isEmpty!8438 (_1!7689 lt!458543))))))

(declare-fun b!1378838 () Bool)

(declare-fun e!881120 () Bool)

(assert (=> b!1378838 (= e!881120 e!881121)))

(declare-fun res!621833 () Bool)

(assert (=> b!1378838 (= res!621833 (< (size!11456 (_2!7689 lt!458543)) (size!11456 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))

(assert (=> b!1378838 (=> (not res!621833) (not e!881121))))

(declare-fun b!1378839 () Bool)

(assert (=> b!1378839 (= e!881120 (= (_2!7689 lt!458543) (print!884 thiss!19762 (singletonSeq!1059 t2!34))))))

(declare-fun b!1378840 () Bool)

(assert (=> b!1378840 (= e!881119 (= (list!5401 (_2!7689 lt!458543)) (_2!7690 (lexList!635 thiss!19762 rules!2550 (list!5401 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))))

(declare-fun d!393598 () Bool)

(assert (=> d!393598 e!881119))

(declare-fun res!621832 () Bool)

(assert (=> d!393598 (=> (not res!621832) (not e!881119))))

(assert (=> d!393598 (= res!621832 e!881120)))

(declare-fun c!226834 () Bool)

(assert (=> d!393598 (= c!226834 (> (size!11460 (_1!7689 lt!458543)) 0))))

(declare-fun lexTailRecV2!416 (LexerInterface!2118 List!14052 BalanceConc!9154 BalanceConc!9154 BalanceConc!9154 BalanceConc!9158) tuple2!13606)

(assert (=> d!393598 (= lt!458543 (lexTailRecV2!416 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34)) (BalanceConc!9155 Empty!4607) (print!884 thiss!19762 (singletonSeq!1059 t2!34)) (BalanceConc!9159 Empty!4609)))))

(assert (=> d!393598 (= (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))) lt!458543)))

(assert (= (and d!393598 c!226834) b!1378838))

(assert (= (and d!393598 (not c!226834)) b!1378839))

(assert (= (and b!1378838 res!621833) b!1378837))

(assert (= (and d!393598 res!621832) b!1378836))

(assert (= (and b!1378836 res!621831) b!1378840))

(declare-fun m!1551459 () Bool)

(assert (=> b!1378836 m!1551459))

(assert (=> b!1378836 m!1551201))

(declare-fun m!1551461 () Bool)

(assert (=> b!1378836 m!1551461))

(assert (=> b!1378836 m!1551461))

(declare-fun m!1551463 () Bool)

(assert (=> b!1378836 m!1551463))

(declare-fun m!1551465 () Bool)

(assert (=> d!393598 m!1551465))

(assert (=> d!393598 m!1551201))

(assert (=> d!393598 m!1551201))

(declare-fun m!1551467 () Bool)

(assert (=> d!393598 m!1551467))

(declare-fun m!1551469 () Bool)

(assert (=> b!1378838 m!1551469))

(assert (=> b!1378838 m!1551201))

(declare-fun m!1551471 () Bool)

(assert (=> b!1378838 m!1551471))

(declare-fun m!1551473 () Bool)

(assert (=> b!1378840 m!1551473))

(assert (=> b!1378840 m!1551201))

(assert (=> b!1378840 m!1551461))

(assert (=> b!1378840 m!1551461))

(assert (=> b!1378840 m!1551463))

(declare-fun m!1551475 () Bool)

(assert (=> b!1378837 m!1551475))

(assert (=> d!393454 d!393598))

(declare-fun d!393600 () Bool)

(declare-fun lt!458546 () Int)

(declare-fun size!11463 (List!14056) Int)

(assert (=> d!393600 (= lt!458546 (size!11463 (list!5404 (_1!7689 lt!458490))))))

(declare-fun size!11464 (Conc!4609) Int)

(assert (=> d!393600 (= lt!458546 (size!11464 (c!226810 (_1!7689 lt!458490))))))

(assert (=> d!393600 (= (size!11460 (_1!7689 lt!458490)) lt!458546)))

(declare-fun bs!336370 () Bool)

(assert (= bs!336370 d!393600))

(declare-fun m!1551477 () Bool)

(assert (=> bs!336370 m!1551477))

(assert (=> bs!336370 m!1551477))

(declare-fun m!1551479 () Bool)

(assert (=> bs!336370 m!1551479))

(declare-fun m!1551481 () Bool)

(assert (=> bs!336370 m!1551481))

(assert (=> d!393454 d!393600))

(declare-fun d!393602 () Bool)

(assert (=> d!393602 (= (list!5404 (singletonSeq!1059 t2!34)) (list!5406 (c!226810 (singletonSeq!1059 t2!34))))))

(declare-fun bs!336371 () Bool)

(assert (= bs!336371 d!393602))

(declare-fun m!1551483 () Bool)

(assert (=> bs!336371 m!1551483))

(assert (=> d!393454 d!393602))

(declare-fun bs!336372 () Bool)

(declare-fun d!393604 () Bool)

(assert (= bs!336372 (and d!393604 d!393518)))

(declare-fun lambda!59058 () Int)

(assert (=> bs!336372 (= lambda!59058 lambda!59049)))

(declare-fun lambda!59059 () Int)

(declare-fun forall!3403 (List!14057 Int) Bool)

(assert (=> d!393604 (forall!3403 (map!3095 rules!2550 lambda!59058) lambda!59059)))

(declare-fun lt!458551 () Unit!20253)

(declare-fun e!881124 () Unit!20253)

(assert (=> d!393604 (= lt!458551 e!881124)))

(declare-fun c!226837 () Bool)

(assert (=> d!393604 (= c!226837 ((_ is Nil!13986) rules!2550))))

(declare-fun rulesValidInductive!773 (LexerInterface!2118 List!14052) Bool)

(assert (=> d!393604 (rulesValidInductive!773 thiss!19762 rules!2550)))

(assert (=> d!393604 (= (lemma!131 rules!2550 thiss!19762 rules!2550) lt!458551)))

(declare-fun b!1378845 () Bool)

(declare-fun Unit!20255 () Unit!20253)

(assert (=> b!1378845 (= e!881124 Unit!20255)))

(declare-fun b!1378846 () Bool)

(declare-fun Unit!20256 () Unit!20253)

(assert (=> b!1378846 (= e!881124 Unit!20256)))

(declare-fun lt!458552 () Unit!20253)

(assert (=> b!1378846 (= lt!458552 (lemma!131 rules!2550 thiss!19762 (t!121865 rules!2550)))))

(assert (= (and d!393604 c!226837) b!1378845))

(assert (= (and d!393604 (not c!226837)) b!1378846))

(declare-fun m!1551485 () Bool)

(assert (=> d!393604 m!1551485))

(assert (=> d!393604 m!1551485))

(declare-fun m!1551487 () Bool)

(assert (=> d!393604 m!1551487))

(declare-fun m!1551489 () Bool)

(assert (=> d!393604 m!1551489))

(declare-fun m!1551491 () Bool)

(assert (=> b!1378846 m!1551491))

(assert (=> d!393518 d!393604))

(declare-fun bs!336373 () Bool)

(declare-fun d!393606 () Bool)

(assert (= bs!336373 (and d!393606 d!393604)))

(declare-fun lambda!59062 () Int)

(assert (=> bs!336373 (= lambda!59062 lambda!59059)))

(declare-fun b!1378867 () Bool)

(declare-fun e!881141 () Bool)

(declare-fun e!881139 () Bool)

(assert (=> b!1378867 (= e!881141 e!881139)))

(declare-fun c!226848 () Bool)

(declare-fun isEmpty!8439 (List!14057) Bool)

(declare-fun tail!1995 (List!14057) List!14057)

(assert (=> b!1378867 (= c!226848 (isEmpty!8439 (tail!1995 (map!3095 rules!2550 lambda!59049))))))

(declare-fun b!1378868 () Bool)

(declare-fun lt!458555 () Regex!3737)

(declare-fun isUnion!48 (Regex!3737) Bool)

(assert (=> b!1378868 (= e!881139 (isUnion!48 lt!458555))))

(declare-fun b!1378869 () Bool)

(declare-fun e!881137 () Bool)

(assert (=> b!1378869 (= e!881137 e!881141)))

(declare-fun c!226847 () Bool)

(assert (=> b!1378869 (= c!226847 (isEmpty!8439 (map!3095 rules!2550 lambda!59049)))))

(declare-fun b!1378870 () Bool)

(declare-fun isEmptyLang!48 (Regex!3737) Bool)

(assert (=> b!1378870 (= e!881141 (isEmptyLang!48 lt!458555))))

(declare-fun b!1378871 () Bool)

(declare-fun e!881142 () Bool)

(assert (=> b!1378871 (= e!881142 (isEmpty!8439 (t!121904 (map!3095 rules!2550 lambda!59049))))))

(declare-fun b!1378872 () Bool)

(declare-fun head!2498 (List!14057) Regex!3737)

(assert (=> b!1378872 (= e!881139 (= lt!458555 (head!2498 (map!3095 rules!2550 lambda!59049))))))

(declare-fun b!1378873 () Bool)

(declare-fun e!881140 () Regex!3737)

(declare-fun e!881138 () Regex!3737)

(assert (=> b!1378873 (= e!881140 e!881138)))

(declare-fun c!226849 () Bool)

(assert (=> b!1378873 (= c!226849 ((_ is Cons!13991) (map!3095 rules!2550 lambda!59049)))))

(assert (=> d!393606 e!881137))

(declare-fun res!621838 () Bool)

(assert (=> d!393606 (=> (not res!621838) (not e!881137))))

(assert (=> d!393606 (= res!621838 (validRegex!1623 lt!458555))))

(assert (=> d!393606 (= lt!458555 e!881140)))

(declare-fun c!226846 () Bool)

(assert (=> d!393606 (= c!226846 e!881142)))

(declare-fun res!621839 () Bool)

(assert (=> d!393606 (=> (not res!621839) (not e!881142))))

(assert (=> d!393606 (= res!621839 ((_ is Cons!13991) (map!3095 rules!2550 lambda!59049)))))

(assert (=> d!393606 (forall!3403 (map!3095 rules!2550 lambda!59049) lambda!59062)))

(assert (=> d!393606 (= (generalisedUnion!139 (map!3095 rules!2550 lambda!59049)) lt!458555)))

(declare-fun b!1378874 () Bool)

(assert (=> b!1378874 (= e!881138 (Union!3737 (h!19392 (map!3095 rules!2550 lambda!59049)) (generalisedUnion!139 (t!121904 (map!3095 rules!2550 lambda!59049)))))))

(declare-fun b!1378875 () Bool)

(assert (=> b!1378875 (= e!881138 EmptyLang!3737)))

(declare-fun b!1378876 () Bool)

(assert (=> b!1378876 (= e!881140 (h!19392 (map!3095 rules!2550 lambda!59049)))))

(assert (= (and d!393606 res!621839) b!1378871))

(assert (= (and d!393606 c!226846) b!1378876))

(assert (= (and d!393606 (not c!226846)) b!1378873))

(assert (= (and b!1378873 c!226849) b!1378874))

(assert (= (and b!1378873 (not c!226849)) b!1378875))

(assert (= (and d!393606 res!621838) b!1378869))

(assert (= (and b!1378869 c!226847) b!1378870))

(assert (= (and b!1378869 (not c!226847)) b!1378867))

(assert (= (and b!1378867 c!226848) b!1378872))

(assert (= (and b!1378867 (not c!226848)) b!1378868))

(assert (=> b!1378872 m!1551273))

(declare-fun m!1551493 () Bool)

(assert (=> b!1378872 m!1551493))

(assert (=> b!1378867 m!1551273))

(declare-fun m!1551495 () Bool)

(assert (=> b!1378867 m!1551495))

(assert (=> b!1378867 m!1551495))

(declare-fun m!1551497 () Bool)

(assert (=> b!1378867 m!1551497))

(assert (=> b!1378869 m!1551273))

(declare-fun m!1551499 () Bool)

(assert (=> b!1378869 m!1551499))

(declare-fun m!1551501 () Bool)

(assert (=> b!1378874 m!1551501))

(declare-fun m!1551503 () Bool)

(assert (=> d!393606 m!1551503))

(assert (=> d!393606 m!1551273))

(declare-fun m!1551505 () Bool)

(assert (=> d!393606 m!1551505))

(declare-fun m!1551507 () Bool)

(assert (=> b!1378868 m!1551507))

(declare-fun m!1551509 () Bool)

(assert (=> b!1378871 m!1551509))

(declare-fun m!1551511 () Bool)

(assert (=> b!1378870 m!1551511))

(assert (=> d!393518 d!393606))

(declare-fun d!393608 () Bool)

(declare-fun lt!458558 () List!14057)

(declare-fun size!11465 (List!14057) Int)

(declare-fun size!11466 (List!14052) Int)

(assert (=> d!393608 (= (size!11465 lt!458558) (size!11466 rules!2550))))

(declare-fun e!881145 () List!14057)

(assert (=> d!393608 (= lt!458558 e!881145)))

(declare-fun c!226852 () Bool)

(assert (=> d!393608 (= c!226852 ((_ is Nil!13986) rules!2550))))

(assert (=> d!393608 (= (map!3095 rules!2550 lambda!59049) lt!458558)))

(declare-fun b!1378881 () Bool)

(assert (=> b!1378881 (= e!881145 Nil!13991)))

(declare-fun b!1378882 () Bool)

(declare-fun $colon$colon!204 (List!14057 Regex!3737) List!14057)

(declare-fun dynLambda!6357 (Int Rule!4646) Regex!3737)

(assert (=> b!1378882 (= e!881145 ($colon$colon!204 (map!3095 (t!121865 rules!2550) lambda!59049) (dynLambda!6357 lambda!59049 (h!19387 rules!2550))))))

(assert (= (and d!393608 c!226852) b!1378881))

(assert (= (and d!393608 (not c!226852)) b!1378882))

(declare-fun b_lambda!42427 () Bool)

(assert (=> (not b_lambda!42427) (not b!1378882)))

(declare-fun m!1551513 () Bool)

(assert (=> d!393608 m!1551513))

(declare-fun m!1551515 () Bool)

(assert (=> d!393608 m!1551515))

(declare-fun m!1551517 () Bool)

(assert (=> b!1378882 m!1551517))

(declare-fun m!1551519 () Bool)

(assert (=> b!1378882 m!1551519))

(assert (=> b!1378882 m!1551517))

(assert (=> b!1378882 m!1551519))

(declare-fun m!1551521 () Bool)

(assert (=> b!1378882 m!1551521))

(assert (=> d!393518 d!393608))

(declare-fun b!1378884 () Bool)

(declare-fun e!881146 () List!14051)

(assert (=> b!1378884 (= e!881146 (Cons!13985 (h!19386 (t!121864 (list!5401 (charsOf!1395 t1!34)))) (++!3620 (t!121864 (t!121864 (list!5401 (charsOf!1395 t1!34)))) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985))))))

(declare-fun d!393610 () Bool)

(declare-fun e!881147 () Bool)

(assert (=> d!393610 e!881147))

(declare-fun res!621840 () Bool)

(assert (=> d!393610 (=> (not res!621840) (not e!881147))))

(declare-fun lt!458559 () List!14051)

(assert (=> d!393610 (= res!621840 (= (content!2041 lt!458559) ((_ map or) (content!2041 (t!121864 (list!5401 (charsOf!1395 t1!34)))) (content!2041 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(assert (=> d!393610 (= lt!458559 e!881146)))

(declare-fun c!226853 () Bool)

(assert (=> d!393610 (= c!226853 ((_ is Nil!13985) (t!121864 (list!5401 (charsOf!1395 t1!34)))))))

(assert (=> d!393610 (= (++!3620 (t!121864 (list!5401 (charsOf!1395 t1!34))) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)) lt!458559)))

(declare-fun b!1378886 () Bool)

(assert (=> b!1378886 (= e!881147 (or (not (= (Cons!13985 (apply!3453 lt!458459 0) Nil!13985) Nil!13985)) (= lt!458559 (t!121864 (list!5401 (charsOf!1395 t1!34))))))))

(declare-fun b!1378885 () Bool)

(declare-fun res!621841 () Bool)

(assert (=> b!1378885 (=> (not res!621841) (not e!881147))))

(assert (=> b!1378885 (= res!621841 (= (size!11461 lt!458559) (+ (size!11461 (t!121864 (list!5401 (charsOf!1395 t1!34)))) (size!11461 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(declare-fun b!1378883 () Bool)

(assert (=> b!1378883 (= e!881146 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985))))

(assert (= (and d!393610 c!226853) b!1378883))

(assert (= (and d!393610 (not c!226853)) b!1378884))

(assert (= (and d!393610 res!621840) b!1378885))

(assert (= (and b!1378885 res!621841) b!1378886))

(declare-fun m!1551523 () Bool)

(assert (=> b!1378884 m!1551523))

(declare-fun m!1551525 () Bool)

(assert (=> d!393610 m!1551525))

(declare-fun m!1551527 () Bool)

(assert (=> d!393610 m!1551527))

(assert (=> d!393610 m!1551253))

(declare-fun m!1551529 () Bool)

(assert (=> b!1378885 m!1551529))

(declare-fun m!1551531 () Bool)

(assert (=> b!1378885 m!1551531))

(assert (=> b!1378885 m!1551259))

(assert (=> b!1378657 d!393610))

(declare-fun b!1378887 () Bool)

(declare-fun res!621845 () Bool)

(declare-fun e!881149 () Bool)

(assert (=> b!1378887 (=> res!621845 e!881149)))

(assert (=> b!1378887 (= res!621845 (not ((_ is Concat!6251) (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460)))))))

(declare-fun e!881148 () Bool)

(assert (=> b!1378887 (= e!881148 e!881149)))

(declare-fun b!1378888 () Bool)

(declare-fun e!881152 () Bool)

(declare-fun e!881153 () Bool)

(assert (=> b!1378888 (= e!881152 e!881153)))

(declare-fun c!226854 () Bool)

(assert (=> b!1378888 (= c!226854 ((_ is Star!3737) (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))

(declare-fun call!92375 () Bool)

(declare-fun bm!92368 () Bool)

(declare-fun c!226855 () Bool)

(assert (=> bm!92368 (= call!92375 (validRegex!1623 (ite c!226854 (reg!4066 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))) (ite c!226855 (regTwo!7987 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))) (regTwo!7986 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460)))))))))

(declare-fun b!1378889 () Bool)

(declare-fun e!881150 () Bool)

(declare-fun call!92374 () Bool)

(assert (=> b!1378889 (= e!881150 call!92374)))

(declare-fun d!393612 () Bool)

(declare-fun res!621846 () Bool)

(assert (=> d!393612 (=> res!621846 e!881152)))

(assert (=> d!393612 (= res!621846 ((_ is ElementMatch!3737) (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))

(assert (=> d!393612 (= (validRegex!1623 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))) e!881152)))

(declare-fun b!1378890 () Bool)

(declare-fun e!881154 () Bool)

(assert (=> b!1378890 (= e!881154 call!92375)))

(declare-fun call!92373 () Bool)

(declare-fun bm!92369 () Bool)

(assert (=> bm!92369 (= call!92373 (validRegex!1623 (ite c!226855 (regOne!7987 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))) (regOne!7986 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))))

(declare-fun b!1378891 () Bool)

(assert (=> b!1378891 (= e!881153 e!881154)))

(declare-fun res!621843 () Bool)

(assert (=> b!1378891 (= res!621843 (not (nullable!1203 (reg!4066 (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))))

(assert (=> b!1378891 (=> (not res!621843) (not e!881154))))

(declare-fun b!1378892 () Bool)

(declare-fun res!621844 () Bool)

(declare-fun e!881151 () Bool)

(assert (=> b!1378892 (=> (not res!621844) (not e!881151))))

(assert (=> b!1378892 (= res!621844 call!92373)))

(assert (=> b!1378892 (= e!881148 e!881151)))

(declare-fun b!1378893 () Bool)

(assert (=> b!1378893 (= e!881153 e!881148)))

(assert (=> b!1378893 (= c!226855 ((_ is Union!3737) (ite c!226807 (regOne!7987 lt!458460) (regOne!7986 lt!458460))))))

(declare-fun b!1378894 () Bool)

(assert (=> b!1378894 (= e!881151 call!92374)))

(declare-fun b!1378895 () Bool)

(assert (=> b!1378895 (= e!881149 e!881150)))

(declare-fun res!621842 () Bool)

(assert (=> b!1378895 (=> (not res!621842) (not e!881150))))

(assert (=> b!1378895 (= res!621842 call!92373)))

(declare-fun bm!92370 () Bool)

(assert (=> bm!92370 (= call!92374 call!92375)))

(assert (= (and d!393612 (not res!621846)) b!1378888))

(assert (= (and b!1378888 c!226854) b!1378891))

(assert (= (and b!1378888 (not c!226854)) b!1378893))

(assert (= (and b!1378891 res!621843) b!1378890))

(assert (= (and b!1378893 c!226855) b!1378892))

(assert (= (and b!1378893 (not c!226855)) b!1378887))

(assert (= (and b!1378892 res!621844) b!1378894))

(assert (= (and b!1378887 (not res!621845)) b!1378895))

(assert (= (and b!1378895 res!621842) b!1378889))

(assert (= (or b!1378892 b!1378895) bm!92369))

(assert (= (or b!1378894 b!1378889) bm!92370))

(assert (= (or b!1378890 bm!92370) bm!92368))

(declare-fun m!1551533 () Bool)

(assert (=> bm!92368 m!1551533))

(declare-fun m!1551535 () Bool)

(assert (=> bm!92369 m!1551535))

(declare-fun m!1551537 () Bool)

(assert (=> b!1378891 m!1551537))

(assert (=> bm!92363 d!393612))

(declare-fun d!393614 () Bool)

(declare-fun charsToBigInt!0 (List!14050 Int) Int)

(assert (=> d!393614 (= (inv!15 (value!78688 t1!34)) (= (charsToBigInt!0 (text!18040 (value!78688 t1!34)) 0) (value!78683 (value!78688 t1!34))))))

(declare-fun bs!336374 () Bool)

(assert (= bs!336374 d!393614))

(declare-fun m!1551539 () Bool)

(assert (=> bs!336374 m!1551539))

(assert (=> b!1378712 d!393614))

(declare-fun d!393616 () Bool)

(assert (=> d!393616 true))

(declare-fun order!8525 () Int)

(declare-fun lambda!59065 () Int)

(declare-fun order!8523 () Int)

(declare-fun dynLambda!6358 (Int Int) Int)

(declare-fun dynLambda!6359 (Int Int) Int)

(assert (=> d!393616 (< (dynLambda!6358 order!8523 (toChars!3557 (transformation!2423 (h!19387 rules!2550)))) (dynLambda!6359 order!8525 lambda!59065))))

(assert (=> d!393616 true))

(assert (=> d!393616 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (h!19387 rules!2550)))) (dynLambda!6359 order!8525 lambda!59065))))

(declare-fun Forall!542 (Int) Bool)

(assert (=> d!393616 (= (semiInverseModEq!932 (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (h!19387 rules!2550)))) (Forall!542 lambda!59065))))

(declare-fun bs!336375 () Bool)

(assert (= bs!336375 d!393616))

(declare-fun m!1551541 () Bool)

(assert (=> bs!336375 m!1551541))

(assert (=> d!393528 d!393616))

(declare-fun d!393618 () Bool)

(assert (=> d!393618 (= (inv!17 (value!78688 t1!34)) (= (charsToBigInt!1 (text!18039 (value!78688 t1!34))) (value!78680 (value!78688 t1!34))))))

(declare-fun bs!336376 () Bool)

(assert (= bs!336376 d!393618))

(declare-fun m!1551543 () Bool)

(assert (=> bs!336376 m!1551543))

(assert (=> b!1378714 d!393618))

(assert (=> b!1378647 d!393532))

(declare-fun bs!336377 () Bool)

(declare-fun d!393620 () Bool)

(assert (= bs!336377 (and d!393620 d!393616)))

(declare-fun lambda!59066 () Int)

(assert (=> bs!336377 (= (and (= (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toChars!3557 (transformation!2423 (h!19387 rules!2550)))) (= (toValue!3698 (transformation!2423 (rule!4182 t1!34))) (toValue!3698 (transformation!2423 (h!19387 rules!2550))))) (= lambda!59066 lambda!59065))))

(assert (=> d!393620 true))

(assert (=> d!393620 (< (dynLambda!6358 order!8523 (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) (dynLambda!6359 order!8525 lambda!59066))))

(assert (=> d!393620 true))

(assert (=> d!393620 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (dynLambda!6359 order!8525 lambda!59066))))

(assert (=> d!393620 (= (semiInverseModEq!932 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (Forall!542 lambda!59066))))

(declare-fun bs!336378 () Bool)

(assert (= bs!336378 d!393620))

(declare-fun m!1551545 () Bool)

(assert (=> bs!336378 m!1551545))

(assert (=> d!393524 d!393620))

(declare-fun b!1378900 () Bool)

(declare-fun res!621847 () Bool)

(declare-fun e!881155 () Bool)

(assert (=> b!1378900 (=> (not res!621847) (not e!881155))))

(declare-fun lt!458560 () tuple2!13606)

(assert (=> b!1378900 (= res!621847 (= (list!5404 (_1!7689 lt!458560)) (_1!7690 (lexList!635 thiss!19762 rules!2550 (list!5401 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))))

(declare-fun b!1378901 () Bool)

(declare-fun e!881157 () Bool)

(assert (=> b!1378901 (= e!881157 (not (isEmpty!8438 (_1!7689 lt!458560))))))

(declare-fun b!1378902 () Bool)

(declare-fun e!881156 () Bool)

(assert (=> b!1378902 (= e!881156 e!881157)))

(declare-fun res!621849 () Bool)

(assert (=> b!1378902 (= res!621849 (< (size!11456 (_2!7689 lt!458560)) (size!11456 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))

(assert (=> b!1378902 (=> (not res!621849) (not e!881157))))

(declare-fun b!1378903 () Bool)

(assert (=> b!1378903 (= e!881156 (= (_2!7689 lt!458560) (print!884 thiss!19762 (singletonSeq!1059 t1!34))))))

(declare-fun b!1378904 () Bool)

(assert (=> b!1378904 (= e!881155 (= (list!5401 (_2!7689 lt!458560)) (_2!7690 (lexList!635 thiss!19762 rules!2550 (list!5401 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))))

(declare-fun d!393622 () Bool)

(assert (=> d!393622 e!881155))

(declare-fun res!621848 () Bool)

(assert (=> d!393622 (=> (not res!621848) (not e!881155))))

(assert (=> d!393622 (= res!621848 e!881156)))

(declare-fun c!226856 () Bool)

(assert (=> d!393622 (= c!226856 (> (size!11460 (_1!7689 lt!458560)) 0))))

(assert (=> d!393622 (= lt!458560 (lexTailRecV2!416 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34)) (BalanceConc!9155 Empty!4607) (print!884 thiss!19762 (singletonSeq!1059 t1!34)) (BalanceConc!9159 Empty!4609)))))

(assert (=> d!393622 (= (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))) lt!458560)))

(assert (= (and d!393622 c!226856) b!1378902))

(assert (= (and d!393622 (not c!226856)) b!1378903))

(assert (= (and b!1378902 res!621849) b!1378901))

(assert (= (and d!393622 res!621848) b!1378900))

(assert (= (and b!1378900 res!621847) b!1378904))

(declare-fun m!1551547 () Bool)

(assert (=> b!1378900 m!1551547))

(assert (=> b!1378900 m!1551279))

(declare-fun m!1551549 () Bool)

(assert (=> b!1378900 m!1551549))

(assert (=> b!1378900 m!1551549))

(declare-fun m!1551551 () Bool)

(assert (=> b!1378900 m!1551551))

(declare-fun m!1551553 () Bool)

(assert (=> d!393622 m!1551553))

(assert (=> d!393622 m!1551279))

(assert (=> d!393622 m!1551279))

(declare-fun m!1551555 () Bool)

(assert (=> d!393622 m!1551555))

(declare-fun m!1551557 () Bool)

(assert (=> b!1378902 m!1551557))

(assert (=> b!1378902 m!1551279))

(declare-fun m!1551559 () Bool)

(assert (=> b!1378902 m!1551559))

(declare-fun m!1551561 () Bool)

(assert (=> b!1378904 m!1551561))

(assert (=> b!1378904 m!1551279))

(assert (=> b!1378904 m!1551549))

(assert (=> b!1378904 m!1551549))

(assert (=> b!1378904 m!1551551))

(declare-fun m!1551563 () Bool)

(assert (=> b!1378901 m!1551563))

(assert (=> d!393520 d!393622))

(declare-fun d!393624 () Bool)

(declare-fun lt!458561 () BalanceConc!9154)

(assert (=> d!393624 (= (list!5401 lt!458561) (printList!611 thiss!19762 (list!5404 (singletonSeq!1059 t1!34))))))

(assert (=> d!393624 (= lt!458561 (printTailRec!593 thiss!19762 (singletonSeq!1059 t1!34) 0 (BalanceConc!9155 Empty!4607)))))

(assert (=> d!393624 (= (print!884 thiss!19762 (singletonSeq!1059 t1!34)) lt!458561)))

(declare-fun bs!336379 () Bool)

(assert (= bs!336379 d!393624))

(declare-fun m!1551565 () Bool)

(assert (=> bs!336379 m!1551565))

(assert (=> bs!336379 m!1551277))

(assert (=> bs!336379 m!1551287))

(assert (=> bs!336379 m!1551287))

(declare-fun m!1551567 () Bool)

(assert (=> bs!336379 m!1551567))

(assert (=> bs!336379 m!1551277))

(declare-fun m!1551569 () Bool)

(assert (=> bs!336379 m!1551569))

(assert (=> d!393520 d!393624))

(declare-fun d!393626 () Bool)

(declare-fun e!881158 () Bool)

(assert (=> d!393626 e!881158))

(declare-fun res!621850 () Bool)

(assert (=> d!393626 (=> (not res!621850) (not e!881158))))

(declare-fun lt!458562 () BalanceConc!9158)

(assert (=> d!393626 (= res!621850 (= (list!5404 lt!458562) (Cons!13990 t1!34 Nil!13990)))))

(assert (=> d!393626 (= lt!458562 (singleton!459 t1!34))))

(assert (=> d!393626 (= (singletonSeq!1059 t1!34) lt!458562)))

(declare-fun b!1378905 () Bool)

(assert (=> b!1378905 (= e!881158 (isBalanced!1354 (c!226810 lt!458562)))))

(assert (= (and d!393626 res!621850) b!1378905))

(declare-fun m!1551571 () Bool)

(assert (=> d!393626 m!1551571))

(declare-fun m!1551573 () Bool)

(assert (=> d!393626 m!1551573))

(declare-fun m!1551575 () Bool)

(assert (=> b!1378905 m!1551575))

(assert (=> d!393520 d!393626))

(declare-fun d!393628 () Bool)

(assert (=> d!393628 (= (list!5404 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))))) (list!5406 (c!226810 (_1!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))))

(declare-fun bs!336380 () Bool)

(assert (= bs!336380 d!393628))

(declare-fun m!1551577 () Bool)

(assert (=> bs!336380 m!1551577))

(assert (=> d!393520 d!393628))

(declare-fun d!393630 () Bool)

(declare-fun lt!458563 () Int)

(assert (=> d!393630 (= lt!458563 (size!11463 (list!5404 (_1!7689 lt!458504))))))

(assert (=> d!393630 (= lt!458563 (size!11464 (c!226810 (_1!7689 lt!458504))))))

(assert (=> d!393630 (= (size!11460 (_1!7689 lt!458504)) lt!458563)))

(declare-fun bs!336381 () Bool)

(assert (= bs!336381 d!393630))

(declare-fun m!1551579 () Bool)

(assert (=> bs!336381 m!1551579))

(assert (=> bs!336381 m!1551579))

(declare-fun m!1551581 () Bool)

(assert (=> bs!336381 m!1551581))

(declare-fun m!1551583 () Bool)

(assert (=> bs!336381 m!1551583))

(assert (=> d!393520 d!393630))

(declare-fun d!393632 () Bool)

(assert (=> d!393632 (= (list!5404 (singletonSeq!1059 t1!34)) (list!5406 (c!226810 (singletonSeq!1059 t1!34))))))

(declare-fun bs!336382 () Bool)

(assert (= bs!336382 d!393632))

(declare-fun m!1551585 () Bool)

(assert (=> bs!336382 m!1551585))

(assert (=> d!393520 d!393632))

(assert (=> d!393520 d!393450))

(declare-fun d!393634 () Bool)

(declare-fun lt!458566 () Bool)

(assert (=> d!393634 (= lt!458566 (isEmpty!8437 (list!5401 (_2!7689 lt!458490))))))

(declare-fun isEmpty!8440 (Conc!4607) Bool)

(assert (=> d!393634 (= lt!458566 (isEmpty!8440 (c!226767 (_2!7689 lt!458490))))))

(assert (=> d!393634 (= (isEmpty!8436 (_2!7689 lt!458490)) lt!458566)))

(declare-fun bs!336383 () Bool)

(assert (= bs!336383 d!393634))

(declare-fun m!1551587 () Bool)

(assert (=> bs!336383 m!1551587))

(assert (=> bs!336383 m!1551587))

(declare-fun m!1551589 () Bool)

(assert (=> bs!336383 m!1551589))

(declare-fun m!1551591 () Bool)

(assert (=> bs!336383 m!1551591))

(assert (=> b!1378620 d!393634))

(declare-fun bs!336384 () Bool)

(declare-fun d!393636 () Bool)

(assert (= bs!336384 (and d!393636 d!393550)))

(declare-fun lambda!59067 () Int)

(assert (=> bs!336384 (= (= (toValue!3698 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (rule!4182 t1!34)))) (= lambda!59067 lambda!59052))))

(declare-fun bs!336385 () Bool)

(assert (= bs!336385 (and d!393636 d!393572)))

(assert (=> bs!336385 (= (= (toValue!3698 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (rule!4182 t2!34)))) (= lambda!59067 lambda!59053))))

(assert (=> d!393636 true))

(assert (=> d!393636 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (h!19387 rules!2550)))) (dynLambda!6356 order!8521 lambda!59067))))

(assert (=> d!393636 (= (equivClasses!891 (toChars!3557 (transformation!2423 (h!19387 rules!2550))) (toValue!3698 (transformation!2423 (h!19387 rules!2550)))) (Forall2!444 lambda!59067))))

(declare-fun bs!336386 () Bool)

(assert (= bs!336386 d!393636))

(declare-fun m!1551593 () Bool)

(assert (=> bs!336386 m!1551593))

(assert (=> b!1378671 d!393636))

(declare-fun d!393638 () Bool)

(declare-fun lt!458567 () Int)

(assert (=> d!393638 (>= lt!458567 0)))

(declare-fun e!881159 () Int)

(assert (=> d!393638 (= lt!458567 e!881159)))

(declare-fun c!226857 () Bool)

(assert (=> d!393638 (= c!226857 ((_ is Nil!13985) (list!5401 lt!458459)))))

(assert (=> d!393638 (= (size!11461 (list!5401 lt!458459)) lt!458567)))

(declare-fun b!1378906 () Bool)

(assert (=> b!1378906 (= e!881159 0)))

(declare-fun b!1378907 () Bool)

(assert (=> b!1378907 (= e!881159 (+ 1 (size!11461 (t!121864 (list!5401 lt!458459)))))))

(assert (= (and d!393638 c!226857) b!1378906))

(assert (= (and d!393638 (not c!226857)) b!1378907))

(declare-fun m!1551595 () Bool)

(assert (=> b!1378907 m!1551595))

(assert (=> d!393532 d!393638))

(declare-fun d!393640 () Bool)

(assert (=> d!393640 (= (list!5401 lt!458459) (list!5405 (c!226767 lt!458459)))))

(declare-fun bs!336387 () Bool)

(assert (= bs!336387 d!393640))

(declare-fun m!1551597 () Bool)

(assert (=> bs!336387 m!1551597))

(assert (=> d!393532 d!393640))

(declare-fun d!393642 () Bool)

(declare-fun lt!458570 () Int)

(assert (=> d!393642 (= lt!458570 (size!11461 (list!5405 (c!226767 lt!458459))))))

(assert (=> d!393642 (= lt!458570 (ite ((_ is Empty!4607) (c!226767 lt!458459)) 0 (ite ((_ is Leaf!7015) (c!226767 lt!458459)) (csize!9445 (c!226767 lt!458459)) (csize!9444 (c!226767 lt!458459)))))))

(assert (=> d!393642 (= (size!11462 (c!226767 lt!458459)) lt!458570)))

(declare-fun bs!336388 () Bool)

(assert (= bs!336388 d!393642))

(assert (=> bs!336388 m!1551597))

(assert (=> bs!336388 m!1551597))

(declare-fun m!1551599 () Bool)

(assert (=> bs!336388 m!1551599))

(assert (=> d!393532 d!393642))

(declare-fun d!393644 () Bool)

(assert (=> d!393644 (= (isEmpty!8437 lt!458458) ((_ is Nil!13985) lt!458458))))

(assert (=> d!393508 d!393644))

(declare-fun d!393646 () Bool)

(assert (=> d!393646 true))

(declare-fun lt!458573 () Bool)

(assert (=> d!393646 (= lt!458573 (rulesValidInductive!773 thiss!19762 rules!2550))))

(declare-fun lambda!59070 () Int)

(declare-fun forall!3404 (List!14052 Int) Bool)

(assert (=> d!393646 (= lt!458573 (forall!3404 rules!2550 lambda!59070))))

(assert (=> d!393646 (= (rulesValid!901 thiss!19762 rules!2550) lt!458573)))

(declare-fun bs!336389 () Bool)

(assert (= bs!336389 d!393646))

(assert (=> bs!336389 m!1551489))

(declare-fun m!1551601 () Bool)

(assert (=> bs!336389 m!1551601))

(assert (=> d!393530 d!393646))

(declare-fun d!393648 () Bool)

(declare-fun c!226860 () Bool)

(assert (=> d!393648 (= c!226860 ((_ is Node!4607) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(declare-fun e!881164 () Bool)

(assert (=> d!393648 (= (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))) e!881164)))

(declare-fun b!1378916 () Bool)

(declare-fun inv!18333 (Conc!4607) Bool)

(assert (=> b!1378916 (= e!881164 (inv!18333 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(declare-fun b!1378917 () Bool)

(declare-fun e!881165 () Bool)

(assert (=> b!1378917 (= e!881164 e!881165)))

(declare-fun res!621853 () Bool)

(assert (=> b!1378917 (= res!621853 (not ((_ is Leaf!7015) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))))))

(assert (=> b!1378917 (=> res!621853 e!881165)))

(declare-fun b!1378918 () Bool)

(declare-fun inv!18334 (Conc!4607) Bool)

(assert (=> b!1378918 (= e!881165 (inv!18334 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(assert (= (and d!393648 c!226860) b!1378916))

(assert (= (and d!393648 (not c!226860)) b!1378917))

(assert (= (and b!1378917 (not res!621853)) b!1378918))

(declare-fun m!1551603 () Bool)

(assert (=> b!1378916 m!1551603))

(declare-fun m!1551605 () Bool)

(assert (=> b!1378918 m!1551605))

(assert (=> b!1378664 d!393648))

(declare-fun d!393650 () Bool)

(assert (=> d!393650 (= (inv!15 (value!78688 t2!34)) (= (charsToBigInt!0 (text!18040 (value!78688 t2!34)) 0) (value!78683 (value!78688 t2!34))))))

(declare-fun bs!336390 () Bool)

(assert (= bs!336390 d!393650))

(declare-fun m!1551607 () Bool)

(assert (=> bs!336390 m!1551607))

(assert (=> b!1378472 d!393650))

(declare-fun d!393652 () Bool)

(declare-fun c!226861 () Bool)

(assert (=> d!393652 (= c!226861 ((_ is Node!4607) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(declare-fun e!881166 () Bool)

(assert (=> d!393652 (= (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))) e!881166)))

(declare-fun b!1378919 () Bool)

(assert (=> b!1378919 (= e!881166 (inv!18333 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(declare-fun b!1378920 () Bool)

(declare-fun e!881167 () Bool)

(assert (=> b!1378920 (= e!881166 e!881167)))

(declare-fun res!621854 () Bool)

(assert (=> b!1378920 (= res!621854 (not ((_ is Leaf!7015) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))))))

(assert (=> b!1378920 (=> res!621854 e!881167)))

(declare-fun b!1378921 () Bool)

(assert (=> b!1378921 (= e!881167 (inv!18334 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(assert (= (and d!393652 c!226861) b!1378919))

(assert (= (and d!393652 (not c!226861)) b!1378920))

(assert (= (and b!1378920 (not res!621854)) b!1378921))

(declare-fun m!1551609 () Bool)

(assert (=> b!1378919 m!1551609))

(declare-fun m!1551611 () Bool)

(assert (=> b!1378921 m!1551611))

(assert (=> b!1378675 d!393652))

(declare-fun d!393654 () Bool)

(declare-fun lt!458576 () Token!4508)

(declare-fun apply!3460 (List!14056 Int) Token!4508)

(assert (=> d!393654 (= lt!458576 (apply!3460 (list!5404 (_1!7689 lt!458504)) 0))))

(declare-fun apply!3461 (Conc!4609 Int) Token!4508)

(assert (=> d!393654 (= lt!458576 (apply!3461 (c!226810 (_1!7689 lt!458504)) 0))))

(declare-fun e!881170 () Bool)

(assert (=> d!393654 e!881170))

(declare-fun res!621857 () Bool)

(assert (=> d!393654 (=> (not res!621857) (not e!881170))))

(assert (=> d!393654 (= res!621857 (<= 0 0))))

(assert (=> d!393654 (= (apply!3457 (_1!7689 lt!458504) 0) lt!458576)))

(declare-fun b!1378924 () Bool)

(assert (=> b!1378924 (= e!881170 (< 0 (size!11460 (_1!7689 lt!458504))))))

(assert (= (and d!393654 res!621857) b!1378924))

(assert (=> d!393654 m!1551579))

(assert (=> d!393654 m!1551579))

(declare-fun m!1551613 () Bool)

(assert (=> d!393654 m!1551613))

(declare-fun m!1551615 () Bool)

(assert (=> d!393654 m!1551615))

(assert (=> b!1378924 m!1551281))

(assert (=> b!1378665 d!393654))

(declare-fun lt!458577 () Bool)

(declare-fun d!393656 () Bool)

(assert (=> d!393656 (= lt!458577 (isEmpty!8437 (list!5401 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))))

(assert (=> d!393656 (= lt!458577 (isEmpty!8440 (c!226767 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34)))))))))

(assert (=> d!393656 (= (isEmpty!8436 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t1!34))))) lt!458577)))

(declare-fun bs!336391 () Bool)

(assert (= bs!336391 d!393656))

(declare-fun m!1551617 () Bool)

(assert (=> bs!336391 m!1551617))

(assert (=> bs!336391 m!1551617))

(declare-fun m!1551619 () Bool)

(assert (=> bs!336391 m!1551619))

(declare-fun m!1551621 () Bool)

(assert (=> bs!336391 m!1551621))

(assert (=> b!1378667 d!393656))

(assert (=> b!1378667 d!393622))

(assert (=> b!1378667 d!393624))

(assert (=> b!1378667 d!393626))

(declare-fun d!393658 () Bool)

(declare-fun res!621858 () Bool)

(declare-fun e!881171 () Bool)

(assert (=> d!393658 (=> res!621858 e!881171)))

(assert (=> d!393658 (= res!621858 (not ((_ is Cons!13986) (t!121865 rules!2550))))))

(assert (=> d!393658 (= (sepAndNonSepRulesDisjointChars!796 rules!2550 (t!121865 rules!2550)) e!881171)))

(declare-fun b!1378925 () Bool)

(declare-fun e!881172 () Bool)

(assert (=> b!1378925 (= e!881171 e!881172)))

(declare-fun res!621859 () Bool)

(assert (=> b!1378925 (=> (not res!621859) (not e!881172))))

(assert (=> b!1378925 (= res!621859 (ruleDisjointCharsFromAllFromOtherType!373 (h!19387 (t!121865 rules!2550)) rules!2550))))

(declare-fun b!1378926 () Bool)

(assert (=> b!1378926 (= e!881172 (sepAndNonSepRulesDisjointChars!796 rules!2550 (t!121865 (t!121865 rules!2550))))))

(assert (= (and d!393658 (not res!621858)) b!1378925))

(assert (= (and b!1378925 res!621859) b!1378926))

(declare-fun m!1551623 () Bool)

(assert (=> b!1378925 m!1551623))

(declare-fun m!1551625 () Bool)

(assert (=> b!1378926 m!1551625))

(assert (=> b!1378482 d!393658))

(declare-fun d!393660 () Bool)

(assert (=> d!393660 (= (list!5401 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))) (list!5405 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(declare-fun bs!336392 () Bool)

(assert (= bs!336392 d!393660))

(declare-fun m!1551627 () Bool)

(assert (=> bs!336392 m!1551627))

(assert (=> b!1378682 d!393660))

(declare-fun d!393662 () Bool)

(assert (=> d!393662 (= (list!5401 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))) (list!5405 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))))))

(declare-fun bs!336393 () Bool)

(assert (= bs!336393 d!393662))

(declare-fun m!1551629 () Bool)

(assert (=> bs!336393 m!1551629))

(assert (=> b!1378680 d!393662))

(declare-fun d!393664 () Bool)

(declare-fun c!226866 () Bool)

(assert (=> d!393664 (= c!226866 ((_ is Empty!4607) (c!226767 (charsOf!1395 t1!34))))))

(declare-fun e!881177 () List!14051)

(assert (=> d!393664 (= (list!5405 (c!226767 (charsOf!1395 t1!34))) e!881177)))

(declare-fun b!1378936 () Bool)

(declare-fun e!881178 () List!14051)

(assert (=> b!1378936 (= e!881177 e!881178)))

(declare-fun c!226867 () Bool)

(assert (=> b!1378936 (= c!226867 ((_ is Leaf!7015) (c!226767 (charsOf!1395 t1!34))))))

(declare-fun b!1378937 () Bool)

(declare-fun list!5407 (IArray!9219) List!14051)

(assert (=> b!1378937 (= e!881178 (list!5407 (xs!7334 (c!226767 (charsOf!1395 t1!34)))))))

(declare-fun b!1378938 () Bool)

(assert (=> b!1378938 (= e!881178 (++!3620 (list!5405 (left!11960 (c!226767 (charsOf!1395 t1!34)))) (list!5405 (right!12290 (c!226767 (charsOf!1395 t1!34))))))))

(declare-fun b!1378935 () Bool)

(assert (=> b!1378935 (= e!881177 Nil!13985)))

(assert (= (and d!393664 c!226866) b!1378935))

(assert (= (and d!393664 (not c!226866)) b!1378936))

(assert (= (and b!1378936 c!226867) b!1378937))

(assert (= (and b!1378936 (not c!226867)) b!1378938))

(declare-fun m!1551631 () Bool)

(assert (=> b!1378937 m!1551631))

(declare-fun m!1551633 () Bool)

(assert (=> b!1378938 m!1551633))

(declare-fun m!1551635 () Bool)

(assert (=> b!1378938 m!1551635))

(assert (=> b!1378938 m!1551633))

(assert (=> b!1378938 m!1551635))

(declare-fun m!1551637 () Bool)

(assert (=> b!1378938 m!1551637))

(assert (=> d!393514 d!393664))

(declare-fun b!1378947 () Bool)

(declare-fun res!621871 () Bool)

(declare-fun e!881181 () Bool)

(assert (=> b!1378947 (=> (not res!621871) (not e!881181))))

(declare-fun ++!3623 (Conc!4607 Conc!4607) Conc!4607)

(assert (=> b!1378947 (= res!621871 (isBalanced!1353 (++!3623 (c!226767 (charsOf!1395 t1!34)) (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))))))

(declare-fun b!1378949 () Bool)

(declare-fun res!621869 () Bool)

(assert (=> b!1378949 (=> (not res!621869) (not e!881181))))

(declare-fun height!672 (Conc!4607) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1378949 (= res!621869 (>= (height!672 (++!3623 (c!226767 (charsOf!1395 t1!34)) (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))) (max!0 (height!672 (c!226767 (charsOf!1395 t1!34))) (height!672 (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0)))))))))

(declare-fun lt!458580 () BalanceConc!9154)

(declare-fun b!1378950 () Bool)

(assert (=> b!1378950 (= e!881181 (= (list!5401 lt!458580) (++!3620 (list!5401 (charsOf!1395 t1!34)) (list!5401 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))))))

(declare-fun d!393666 () Bool)

(assert (=> d!393666 e!881181))

(declare-fun res!621868 () Bool)

(assert (=> d!393666 (=> (not res!621868) (not e!881181))))

(declare-fun appendAssocInst!284 (Conc!4607 Conc!4607) Bool)

(assert (=> d!393666 (= res!621868 (appendAssocInst!284 (c!226767 (charsOf!1395 t1!34)) (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0)))))))

(assert (=> d!393666 (= lt!458580 (BalanceConc!9155 (++!3623 (c!226767 (charsOf!1395 t1!34)) (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))))))

(assert (=> d!393666 (= (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))) lt!458580)))

(declare-fun b!1378948 () Bool)

(declare-fun res!621870 () Bool)

(assert (=> b!1378948 (=> (not res!621870) (not e!881181))))

(assert (=> b!1378948 (= res!621870 (<= (height!672 (++!3623 (c!226767 (charsOf!1395 t1!34)) (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))) (+ (max!0 (height!672 (c!226767 (charsOf!1395 t1!34))) (height!672 (c!226767 (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))) 1)))))

(assert (= (and d!393666 res!621868) b!1378947))

(assert (= (and b!1378947 res!621871) b!1378948))

(assert (= (and b!1378948 res!621870) b!1378949))

(assert (= (and b!1378949 res!621869) b!1378950))

(declare-fun m!1551639 () Bool)

(assert (=> d!393666 m!1551639))

(declare-fun m!1551641 () Bool)

(assert (=> d!393666 m!1551641))

(declare-fun m!1551643 () Bool)

(assert (=> b!1378950 m!1551643))

(assert (=> b!1378950 m!1550999))

(assert (=> b!1378950 m!1551001))

(assert (=> b!1378950 m!1551227))

(declare-fun m!1551645 () Bool)

(assert (=> b!1378950 m!1551645))

(assert (=> b!1378950 m!1551001))

(assert (=> b!1378950 m!1551645))

(declare-fun m!1551647 () Bool)

(assert (=> b!1378950 m!1551647))

(assert (=> b!1378947 m!1551641))

(assert (=> b!1378947 m!1551641))

(declare-fun m!1551649 () Bool)

(assert (=> b!1378947 m!1551649))

(declare-fun m!1551651 () Bool)

(assert (=> b!1378949 m!1551651))

(declare-fun m!1551653 () Bool)

(assert (=> b!1378949 m!1551653))

(declare-fun m!1551655 () Bool)

(assert (=> b!1378949 m!1551655))

(assert (=> b!1378949 m!1551641))

(assert (=> b!1378949 m!1551641))

(declare-fun m!1551657 () Bool)

(assert (=> b!1378949 m!1551657))

(assert (=> b!1378949 m!1551651))

(assert (=> b!1378949 m!1551653))

(assert (=> b!1378948 m!1551651))

(assert (=> b!1378948 m!1551653))

(assert (=> b!1378948 m!1551655))

(assert (=> b!1378948 m!1551641))

(assert (=> b!1378948 m!1551641))

(assert (=> b!1378948 m!1551657))

(assert (=> b!1378948 m!1551651))

(assert (=> b!1378948 m!1551653))

(assert (=> d!393506 d!393666))

(declare-fun d!393668 () Bool)

(declare-fun lt!458610 () Bool)

(assert (=> d!393668 (= lt!458610 (prefixMatch!246 (rulesRegex!306 thiss!19762 rules!2550) (list!5401 (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))))))))

(declare-datatypes ((Context!1212 0))(
  ( (Context!1213 (exprs!1106 List!14057)) )
))
(declare-fun prefixMatchZipperSequence!267 ((InoxSet Context!1212) BalanceConc!9154 Int) Bool)

(declare-fun focus!97 (Regex!3737) (InoxSet Context!1212))

(assert (=> d!393668 (= lt!458610 (prefixMatchZipperSequence!267 (focus!97 (rulesRegex!306 thiss!19762 rules!2550)) (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))) 0))))

(declare-fun lt!458606 () Unit!20253)

(declare-fun lt!458607 () Unit!20253)

(assert (=> d!393668 (= lt!458606 lt!458607)))

(declare-fun lt!458601 () (InoxSet Context!1212))

(declare-fun lt!458608 () List!14051)

(declare-fun prefixMatchZipper!77 ((InoxSet Context!1212) List!14051) Bool)

(assert (=> d!393668 (= (prefixMatch!246 (rulesRegex!306 thiss!19762 rules!2550) lt!458608) (prefixMatchZipper!77 lt!458601 lt!458608))))

(declare-datatypes ((List!14059 0))(
  ( (Nil!13993) (Cons!13993 (h!19394 Context!1212) (t!121924 List!14059)) )
))
(declare-fun lt!458602 () List!14059)

(declare-fun prefixMatchZipperRegexEquiv!77 ((InoxSet Context!1212) List!14059 Regex!3737 List!14051) Unit!20253)

(assert (=> d!393668 (= lt!458607 (prefixMatchZipperRegexEquiv!77 lt!458601 lt!458602 (rulesRegex!306 thiss!19762 rules!2550) lt!458608))))

(assert (=> d!393668 (= lt!458608 (list!5401 (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0)))))))

(declare-fun toList!761 ((InoxSet Context!1212)) List!14059)

(assert (=> d!393668 (= lt!458602 (toList!761 (focus!97 (rulesRegex!306 thiss!19762 rules!2550))))))

(assert (=> d!393668 (= lt!458601 (focus!97 (rulesRegex!306 thiss!19762 rules!2550)))))

(declare-fun lt!458609 () Unit!20253)

(declare-fun lt!458604 () Unit!20253)

(assert (=> d!393668 (= lt!458609 lt!458604)))

(declare-fun lt!458605 () Int)

(declare-fun lt!458603 () (InoxSet Context!1212))

(declare-fun dropList!415 (BalanceConc!9154 Int) List!14051)

(assert (=> d!393668 (= (prefixMatchZipper!77 lt!458603 (dropList!415 (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))) lt!458605)) (prefixMatchZipperSequence!267 lt!458603 (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))) lt!458605))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!77 ((InoxSet Context!1212) BalanceConc!9154 Int) Unit!20253)

(assert (=> d!393668 (= lt!458604 (lemmaprefixMatchZipperSequenceEquivalent!77 lt!458603 (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0))) lt!458605))))

(assert (=> d!393668 (= lt!458605 0)))

(assert (=> d!393668 (= lt!458603 (focus!97 (rulesRegex!306 thiss!19762 rules!2550)))))

(assert (=> d!393668 (validRegex!1623 (rulesRegex!306 thiss!19762 rules!2550))))

(assert (=> d!393668 (= (prefixMatchZipperSequence!266 (rulesRegex!306 thiss!19762 rules!2550) (++!3622 (charsOf!1395 t1!34) (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0)))) lt!458610)))

(declare-fun bs!336394 () Bool)

(assert (= bs!336394 d!393668))

(declare-fun m!1551659 () Bool)

(assert (=> bs!336394 m!1551659))

(assert (=> bs!336394 m!1551221))

(declare-fun m!1551661 () Bool)

(assert (=> bs!336394 m!1551661))

(declare-fun m!1551663 () Bool)

(assert (=> bs!336394 m!1551663))

(assert (=> bs!336394 m!1551221))

(declare-fun m!1551665 () Bool)

(assert (=> bs!336394 m!1551665))

(assert (=> bs!336394 m!1551005))

(declare-fun m!1551667 () Bool)

(assert (=> bs!336394 m!1551667))

(assert (=> bs!336394 m!1551005))

(assert (=> bs!336394 m!1551663))

(assert (=> bs!336394 m!1551663))

(declare-fun m!1551669 () Bool)

(assert (=> bs!336394 m!1551669))

(assert (=> bs!336394 m!1551221))

(declare-fun m!1551671 () Bool)

(assert (=> bs!336394 m!1551671))

(assert (=> bs!336394 m!1551221))

(declare-fun m!1551673 () Bool)

(assert (=> bs!336394 m!1551673))

(declare-fun m!1551675 () Bool)

(assert (=> bs!336394 m!1551675))

(declare-fun m!1551677 () Bool)

(assert (=> bs!336394 m!1551677))

(assert (=> bs!336394 m!1551005))

(declare-fun m!1551679 () Bool)

(assert (=> bs!336394 m!1551679))

(assert (=> bs!336394 m!1551221))

(assert (=> bs!336394 m!1551675))

(assert (=> bs!336394 m!1551005))

(declare-fun m!1551681 () Bool)

(assert (=> bs!336394 m!1551681))

(assert (=> bs!336394 m!1551005))

(assert (=> bs!336394 m!1551661))

(declare-fun m!1551683 () Bool)

(assert (=> bs!336394 m!1551683))

(assert (=> d!393506 d!393668))

(declare-fun d!393670 () Bool)

(declare-fun e!881184 () Bool)

(assert (=> d!393670 e!881184))

(declare-fun res!621874 () Bool)

(assert (=> d!393670 (=> (not res!621874) (not e!881184))))

(declare-fun lt!458613 () BalanceConc!9154)

(assert (=> d!393670 (= res!621874 (= (list!5401 lt!458613) (Cons!13985 (apply!3453 (charsOf!1395 t2!34) 0) Nil!13985)))))

(declare-fun singleton!461 (C!7764) BalanceConc!9154)

(assert (=> d!393670 (= lt!458613 (singleton!461 (apply!3453 (charsOf!1395 t2!34) 0)))))

(assert (=> d!393670 (= (singletonSeq!1060 (apply!3453 (charsOf!1395 t2!34) 0)) lt!458613)))

(declare-fun b!1378957 () Bool)

(assert (=> b!1378957 (= e!881184 (isBalanced!1353 (c!226767 lt!458613)))))

(assert (= (and d!393670 res!621874) b!1378957))

(declare-fun m!1551685 () Bool)

(assert (=> d!393670 m!1551685))

(assert (=> d!393670 m!1551225))

(declare-fun m!1551687 () Bool)

(assert (=> d!393670 m!1551687))

(declare-fun m!1551689 () Bool)

(assert (=> b!1378957 m!1551689))

(assert (=> d!393506 d!393670))

(assert (=> d!393506 d!393518))

(declare-fun d!393672 () Bool)

(declare-fun lt!458614 () C!7764)

(assert (=> d!393672 (= lt!458614 (apply!3458 (list!5401 (charsOf!1395 t2!34)) 0))))

(assert (=> d!393672 (= lt!458614 (apply!3459 (c!226767 (charsOf!1395 t2!34)) 0))))

(declare-fun e!881185 () Bool)

(assert (=> d!393672 e!881185))

(declare-fun res!621875 () Bool)

(assert (=> d!393672 (=> (not res!621875) (not e!881185))))

(assert (=> d!393672 (= res!621875 (<= 0 0))))

(assert (=> d!393672 (= (apply!3453 (charsOf!1395 t2!34) 0) lt!458614)))

(declare-fun b!1378958 () Bool)

(assert (=> b!1378958 (= e!881185 (< 0 (size!11456 (charsOf!1395 t2!34))))))

(assert (= (and d!393672 res!621875) b!1378958))

(assert (=> d!393672 m!1551025))

(declare-fun m!1551693 () Bool)

(assert (=> d!393672 m!1551693))

(assert (=> d!393672 m!1551693))

(declare-fun m!1551695 () Bool)

(assert (=> d!393672 m!1551695))

(declare-fun m!1551697 () Bool)

(assert (=> d!393672 m!1551697))

(assert (=> b!1378958 m!1551025))

(declare-fun m!1551699 () Bool)

(assert (=> b!1378958 m!1551699))

(assert (=> d!393506 d!393672))

(assert (=> d!393506 d!393516))

(assert (=> d!393506 d!393534))

(declare-fun d!393676 () Bool)

(assert (=> d!393676 (= (isEmpty!8437 (originalCharacters!3285 t1!34)) ((_ is Nil!13985) (originalCharacters!3285 t1!34)))))

(assert (=> d!393536 d!393676))

(declare-fun b!1378959 () Bool)

(declare-fun res!621879 () Bool)

(declare-fun e!881187 () Bool)

(assert (=> b!1378959 (=> res!621879 e!881187)))

(assert (=> b!1378959 (= res!621879 (not ((_ is Concat!6251) (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460))))))))

(declare-fun e!881186 () Bool)

(assert (=> b!1378959 (= e!881186 e!881187)))

(declare-fun b!1378960 () Bool)

(declare-fun e!881190 () Bool)

(declare-fun e!881191 () Bool)

(assert (=> b!1378960 (= e!881190 e!881191)))

(declare-fun c!226871 () Bool)

(assert (=> b!1378960 (= c!226871 ((_ is Star!3737) (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))

(declare-fun c!226872 () Bool)

(declare-fun call!92378 () Bool)

(declare-fun bm!92371 () Bool)

(assert (=> bm!92371 (= call!92378 (validRegex!1623 (ite c!226871 (reg!4066 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))) (ite c!226872 (regTwo!7987 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))) (regTwo!7986 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460))))))))))

(declare-fun b!1378961 () Bool)

(declare-fun e!881188 () Bool)

(declare-fun call!92377 () Bool)

(assert (=> b!1378961 (= e!881188 call!92377)))

(declare-fun d!393678 () Bool)

(declare-fun res!621880 () Bool)

(assert (=> d!393678 (=> res!621880 e!881190)))

(assert (=> d!393678 (= res!621880 ((_ is ElementMatch!3737) (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))

(assert (=> d!393678 (= (validRegex!1623 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))) e!881190)))

(declare-fun b!1378962 () Bool)

(declare-fun e!881192 () Bool)

(assert (=> b!1378962 (= e!881192 call!92378)))

(declare-fun call!92376 () Bool)

(declare-fun bm!92372 () Bool)

(assert (=> bm!92372 (= call!92376 (validRegex!1623 (ite c!226872 (regOne!7987 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))) (regOne!7986 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))))

(declare-fun b!1378963 () Bool)

(assert (=> b!1378963 (= e!881191 e!881192)))

(declare-fun res!621877 () Bool)

(assert (=> b!1378963 (= res!621877 (not (nullable!1203 (reg!4066 (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))))

(assert (=> b!1378963 (=> (not res!621877) (not e!881192))))

(declare-fun b!1378964 () Bool)

(declare-fun res!621878 () Bool)

(declare-fun e!881189 () Bool)

(assert (=> b!1378964 (=> (not res!621878) (not e!881189))))

(assert (=> b!1378964 (= res!621878 call!92376)))

(assert (=> b!1378964 (= e!881186 e!881189)))

(declare-fun b!1378965 () Bool)

(assert (=> b!1378965 (= e!881191 e!881186)))

(assert (=> b!1378965 (= c!226872 ((_ is Union!3737) (ite c!226806 (reg!4066 lt!458460) (ite c!226807 (regTwo!7987 lt!458460) (regTwo!7986 lt!458460)))))))

(declare-fun b!1378966 () Bool)

(assert (=> b!1378966 (= e!881189 call!92377)))

(declare-fun b!1378967 () Bool)

(assert (=> b!1378967 (= e!881187 e!881188)))

(declare-fun res!621876 () Bool)

(assert (=> b!1378967 (=> (not res!621876) (not e!881188))))

(assert (=> b!1378967 (= res!621876 call!92376)))

(declare-fun bm!92373 () Bool)

(assert (=> bm!92373 (= call!92377 call!92378)))

(assert (= (and d!393678 (not res!621880)) b!1378960))

(assert (= (and b!1378960 c!226871) b!1378963))

(assert (= (and b!1378960 (not c!226871)) b!1378965))

(assert (= (and b!1378963 res!621877) b!1378962))

(assert (= (and b!1378965 c!226872) b!1378964))

(assert (= (and b!1378965 (not c!226872)) b!1378959))

(assert (= (and b!1378964 res!621878) b!1378966))

(assert (= (and b!1378959 (not res!621879)) b!1378967))

(assert (= (and b!1378967 res!621876) b!1378961))

(assert (= (or b!1378964 b!1378967) bm!92372))

(assert (= (or b!1378966 b!1378961) bm!92373))

(assert (= (or b!1378962 bm!92373) bm!92371))

(declare-fun m!1551701 () Bool)

(assert (=> bm!92371 m!1551701))

(declare-fun m!1551703 () Bool)

(assert (=> bm!92372 m!1551703))

(declare-fun m!1551705 () Bool)

(assert (=> b!1378963 m!1551705))

(assert (=> bm!92362 d!393678))

(declare-fun d!393680 () Bool)

(declare-fun lt!458622 () C!7764)

(declare-fun contains!2655 (List!14051 C!7764) Bool)

(assert (=> d!393680 (contains!2655 (list!5401 lt!458459) lt!458622)))

(declare-fun e!881202 () C!7764)

(assert (=> d!393680 (= lt!458622 e!881202)))

(declare-fun c!226880 () Bool)

(assert (=> d!393680 (= c!226880 (= 0 0))))

(declare-fun e!881203 () Bool)

(assert (=> d!393680 e!881203))

(declare-fun res!621883 () Bool)

(assert (=> d!393680 (=> (not res!621883) (not e!881203))))

(assert (=> d!393680 (= res!621883 (<= 0 0))))

(assert (=> d!393680 (= (apply!3458 (list!5401 lt!458459) 0) lt!458622)))

(declare-fun b!1378984 () Bool)

(assert (=> b!1378984 (= e!881203 (< 0 (size!11461 (list!5401 lt!458459))))))

(declare-fun b!1378985 () Bool)

(assert (=> b!1378985 (= e!881202 (head!2497 (list!5401 lt!458459)))))

(declare-fun b!1378986 () Bool)

(assert (=> b!1378986 (= e!881202 (apply!3458 (tail!1994 (list!5401 lt!458459)) (- 0 1)))))

(assert (= (and d!393680 res!621883) b!1378984))

(assert (= (and d!393680 c!226880) b!1378985))

(assert (= (and d!393680 (not c!226880)) b!1378986))

(assert (=> d!393680 m!1551241))

(declare-fun m!1551715 () Bool)

(assert (=> d!393680 m!1551715))

(assert (=> b!1378984 m!1551241))

(assert (=> b!1378984 m!1551307))

(assert (=> b!1378985 m!1551241))

(declare-fun m!1551717 () Bool)

(assert (=> b!1378985 m!1551717))

(assert (=> b!1378986 m!1551241))

(declare-fun m!1551719 () Bool)

(assert (=> b!1378986 m!1551719))

(assert (=> b!1378986 m!1551719))

(declare-fun m!1551721 () Bool)

(assert (=> b!1378986 m!1551721))

(assert (=> d!393510 d!393680))

(assert (=> d!393510 d!393640))

(declare-fun b!1379013 () Bool)

(declare-fun e!881220 () C!7764)

(declare-fun call!92383 () C!7764)

(assert (=> b!1379013 (= e!881220 call!92383)))

(declare-fun bm!92378 () Bool)

(declare-fun c!226890 () Bool)

(declare-fun c!226891 () Bool)

(assert (=> bm!92378 (= c!226890 c!226891)))

(declare-fun e!881223 () Int)

(assert (=> bm!92378 (= call!92383 (apply!3459 (ite c!226891 (left!11960 (c!226767 lt!458459)) (right!12290 (c!226767 lt!458459))) e!881223))))

(declare-fun b!1379014 () Bool)

(assert (=> b!1379014 (= e!881223 (- 0 (size!11462 (left!11960 (c!226767 lt!458459)))))))

(declare-fun b!1379015 () Bool)

(declare-fun e!881221 () Bool)

(assert (=> b!1379015 (= e!881221 (< 0 (size!11462 (c!226767 lt!458459))))))

(declare-fun b!1379017 () Bool)

(declare-fun e!881222 () C!7764)

(assert (=> b!1379017 (= e!881222 e!881220)))

(declare-fun lt!458628 () Bool)

(declare-fun appendIndex!173 (List!14051 List!14051 Int) Bool)

(assert (=> b!1379017 (= lt!458628 (appendIndex!173 (list!5405 (left!11960 (c!226767 lt!458459))) (list!5405 (right!12290 (c!226767 lt!458459))) 0))))

(assert (=> b!1379017 (= c!226891 (< 0 (size!11462 (left!11960 (c!226767 lt!458459)))))))

(declare-fun b!1379018 () Bool)

(assert (=> b!1379018 (= e!881223 0)))

(declare-fun b!1379019 () Bool)

(declare-fun apply!3463 (IArray!9219 Int) C!7764)

(assert (=> b!1379019 (= e!881222 (apply!3463 (xs!7334 (c!226767 lt!458459)) 0))))

(declare-fun b!1379016 () Bool)

(assert (=> b!1379016 (= e!881220 call!92383)))

(declare-fun d!393690 () Bool)

(declare-fun lt!458627 () C!7764)

(assert (=> d!393690 (= lt!458627 (apply!3458 (list!5405 (c!226767 lt!458459)) 0))))

(assert (=> d!393690 (= lt!458627 e!881222)))

(declare-fun c!226889 () Bool)

(assert (=> d!393690 (= c!226889 ((_ is Leaf!7015) (c!226767 lt!458459)))))

(assert (=> d!393690 e!881221))

(declare-fun res!621892 () Bool)

(assert (=> d!393690 (=> (not res!621892) (not e!881221))))

(assert (=> d!393690 (= res!621892 (<= 0 0))))

(assert (=> d!393690 (= (apply!3459 (c!226767 lt!458459) 0) lt!458627)))

(assert (= (and d!393690 res!621892) b!1379015))

(assert (= (and d!393690 c!226889) b!1379019))

(assert (= (and d!393690 (not c!226889)) b!1379017))

(assert (= (and b!1379017 c!226891) b!1379016))

(assert (= (and b!1379017 (not c!226891)) b!1379013))

(assert (= (or b!1379016 b!1379013) bm!92378))

(assert (= (and bm!92378 c!226890) b!1379018))

(assert (= (and bm!92378 (not c!226890)) b!1379014))

(declare-fun m!1551731 () Bool)

(assert (=> b!1379019 m!1551731))

(assert (=> d!393690 m!1551597))

(assert (=> d!393690 m!1551597))

(declare-fun m!1551733 () Bool)

(assert (=> d!393690 m!1551733))

(declare-fun m!1551735 () Bool)

(assert (=> bm!92378 m!1551735))

(declare-fun m!1551737 () Bool)

(assert (=> b!1379014 m!1551737))

(declare-fun m!1551739 () Bool)

(assert (=> b!1379017 m!1551739))

(declare-fun m!1551741 () Bool)

(assert (=> b!1379017 m!1551741))

(assert (=> b!1379017 m!1551739))

(assert (=> b!1379017 m!1551741))

(declare-fun m!1551743 () Bool)

(assert (=> b!1379017 m!1551743))

(assert (=> b!1379017 m!1551737))

(assert (=> b!1379015 m!1551309))

(assert (=> d!393510 d!393690))

(declare-fun d!393700 () Bool)

(assert (=> d!393700 (= (list!5401 lt!458508) (list!5405 (c!226767 lt!458508)))))

(declare-fun bs!336402 () Bool)

(assert (= bs!336402 d!393700))

(declare-fun m!1551745 () Bool)

(assert (=> bs!336402 m!1551745))

(assert (=> d!393534 d!393700))

(declare-fun d!393702 () Bool)

(declare-fun lt!458629 () Int)

(assert (=> d!393702 (>= lt!458629 0)))

(declare-fun e!881227 () Int)

(assert (=> d!393702 (= lt!458629 e!881227)))

(declare-fun c!226893 () Bool)

(assert (=> d!393702 (= c!226893 ((_ is Nil!13985) lt!458496))))

(assert (=> d!393702 (= (size!11461 lt!458496) lt!458629)))

(declare-fun b!1379024 () Bool)

(assert (=> b!1379024 (= e!881227 0)))

(declare-fun b!1379025 () Bool)

(assert (=> b!1379025 (= e!881227 (+ 1 (size!11461 (t!121864 lt!458496))))))

(assert (= (and d!393702 c!226893) b!1379024))

(assert (= (and d!393702 (not c!226893)) b!1379025))

(declare-fun m!1551751 () Bool)

(assert (=> b!1379025 m!1551751))

(assert (=> b!1378658 d!393702))

(declare-fun d!393706 () Bool)

(declare-fun lt!458630 () Int)

(assert (=> d!393706 (>= lt!458630 0)))

(declare-fun e!881228 () Int)

(assert (=> d!393706 (= lt!458630 e!881228)))

(declare-fun c!226894 () Bool)

(assert (=> d!393706 (= c!226894 ((_ is Nil!13985) (list!5401 (charsOf!1395 t1!34))))))

(assert (=> d!393706 (= (size!11461 (list!5401 (charsOf!1395 t1!34))) lt!458630)))

(declare-fun b!1379026 () Bool)

(assert (=> b!1379026 (= e!881228 0)))

(declare-fun b!1379027 () Bool)

(assert (=> b!1379027 (= e!881228 (+ 1 (size!11461 (t!121864 (list!5401 (charsOf!1395 t1!34))))))))

(assert (= (and d!393706 c!226894) b!1379026))

(assert (= (and d!393706 (not c!226894)) b!1379027))

(assert (=> b!1379027 m!1551531))

(assert (=> b!1378658 d!393706))

(declare-fun d!393708 () Bool)

(declare-fun lt!458631 () Int)

(assert (=> d!393708 (>= lt!458631 0)))

(declare-fun e!881229 () Int)

(assert (=> d!393708 (= lt!458631 e!881229)))

(declare-fun c!226895 () Bool)

(assert (=> d!393708 (= c!226895 ((_ is Nil!13985) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))

(assert (=> d!393708 (= (size!11461 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)) lt!458631)))

(declare-fun b!1379028 () Bool)

(assert (=> b!1379028 (= e!881229 0)))

(declare-fun b!1379029 () Bool)

(assert (=> b!1379029 (= e!881229 (+ 1 (size!11461 (t!121864 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(assert (= (and d!393708 c!226895) b!1379028))

(assert (= (and d!393708 (not c!226895)) b!1379029))

(declare-fun m!1551753 () Bool)

(assert (=> b!1379029 m!1551753))

(assert (=> b!1378658 d!393708))

(declare-fun d!393710 () Bool)

(declare-fun nullableFct!284 (Regex!3737) Bool)

(assert (=> d!393710 (= (nullable!1203 (reg!4066 lt!458460)) (nullableFct!284 (reg!4066 lt!458460)))))

(declare-fun bs!336403 () Bool)

(assert (= bs!336403 d!393710))

(declare-fun m!1551755 () Bool)

(assert (=> bs!336403 m!1551755))

(assert (=> b!1378707 d!393710))

(declare-fun d!393712 () Bool)

(assert (=> d!393712 (= (list!5401 lt!458499) (list!5405 (c!226767 lt!458499)))))

(declare-fun bs!336404 () Bool)

(assert (= bs!336404 d!393712))

(declare-fun m!1551757 () Bool)

(assert (=> bs!336404 m!1551757))

(assert (=> d!393516 d!393712))

(declare-fun d!393714 () Bool)

(declare-fun lostCauseFct!137 (Regex!3737) Bool)

(assert (=> d!393714 (= (lostCause!337 lt!458460) (lostCauseFct!137 lt!458460))))

(declare-fun bs!336405 () Bool)

(assert (= bs!336405 d!393714))

(declare-fun m!1551759 () Bool)

(assert (=> bs!336405 m!1551759))

(assert (=> b!1378643 d!393714))

(declare-fun d!393716 () Bool)

(declare-fun res!621899 () Bool)

(declare-fun e!881236 () Bool)

(assert (=> d!393716 (=> res!621899 e!881236)))

(assert (=> d!393716 (= res!621899 ((_ is Nil!13986) rules!2550))))

(assert (=> d!393716 (= (noDuplicateTag!901 thiss!19762 rules!2550 Nil!13992) e!881236)))

(declare-fun b!1379038 () Bool)

(declare-fun e!881237 () Bool)

(assert (=> b!1379038 (= e!881236 e!881237)))

(declare-fun res!621900 () Bool)

(assert (=> b!1379038 (=> (not res!621900) (not e!881237))))

(declare-fun contains!2657 (List!14058 String!16801) Bool)

(assert (=> b!1379038 (= res!621900 (not (contains!2657 Nil!13992 (tag!2685 (h!19387 rules!2550)))))))

(declare-fun b!1379039 () Bool)

(assert (=> b!1379039 (= e!881237 (noDuplicateTag!901 thiss!19762 (t!121865 rules!2550) (Cons!13992 (tag!2685 (h!19387 rules!2550)) Nil!13992)))))

(assert (= (and d!393716 (not res!621899)) b!1379038))

(assert (= (and b!1379038 res!621900) b!1379039))

(declare-fun m!1551761 () Bool)

(assert (=> b!1379038 m!1551761))

(declare-fun m!1551763 () Bool)

(assert (=> b!1379039 m!1551763))

(assert (=> b!1378674 d!393716))

(declare-fun d!393718 () Bool)

(assert (=> d!393718 (= (inv!18324 (tag!2685 (h!19387 (t!121865 rules!2550)))) (= (mod (str.len (value!78687 (tag!2685 (h!19387 (t!121865 rules!2550))))) 2) 0))))

(assert (=> b!1378749 d!393718))

(declare-fun d!393720 () Bool)

(declare-fun res!621901 () Bool)

(declare-fun e!881239 () Bool)

(assert (=> d!393720 (=> (not res!621901) (not e!881239))))

(assert (=> d!393720 (= res!621901 (semiInverseModEq!932 (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toValue!3698 (transformation!2423 (h!19387 (t!121865 rules!2550))))))))

(assert (=> d!393720 (= (inv!18327 (transformation!2423 (h!19387 (t!121865 rules!2550)))) e!881239)))

(declare-fun b!1379042 () Bool)

(assert (=> b!1379042 (= e!881239 (equivClasses!891 (toChars!3557 (transformation!2423 (h!19387 (t!121865 rules!2550)))) (toValue!3698 (transformation!2423 (h!19387 (t!121865 rules!2550))))))))

(assert (= (and d!393720 res!621901) b!1379042))

(declare-fun m!1551765 () Bool)

(assert (=> d!393720 m!1551765))

(declare-fun m!1551767 () Bool)

(assert (=> b!1379042 m!1551767))

(assert (=> b!1378749 d!393720))

(declare-fun d!393722 () Bool)

(declare-fun c!226899 () Bool)

(assert (=> d!393722 (= c!226899 (isEmpty!8437 (tail!1994 lt!458458)))))

(declare-fun e!881240 () Bool)

(assert (=> d!393722 (= (prefixMatch!246 (derivativeStep!961 lt!458460 (head!2497 lt!458458)) (tail!1994 lt!458458)) e!881240)))

(declare-fun b!1379043 () Bool)

(assert (=> b!1379043 (= e!881240 (not (lostCause!337 (derivativeStep!961 lt!458460 (head!2497 lt!458458)))))))

(declare-fun b!1379044 () Bool)

(assert (=> b!1379044 (= e!881240 (prefixMatch!246 (derivativeStep!961 (derivativeStep!961 lt!458460 (head!2497 lt!458458)) (head!2497 (tail!1994 lt!458458))) (tail!1994 (tail!1994 lt!458458))))))

(assert (= (and d!393722 c!226899) b!1379043))

(assert (= (and d!393722 (not c!226899)) b!1379044))

(assert (=> d!393722 m!1551237))

(declare-fun m!1551769 () Bool)

(assert (=> d!393722 m!1551769))

(assert (=> b!1379043 m!1551235))

(declare-fun m!1551771 () Bool)

(assert (=> b!1379043 m!1551771))

(assert (=> b!1379044 m!1551237))

(declare-fun m!1551773 () Bool)

(assert (=> b!1379044 m!1551773))

(assert (=> b!1379044 m!1551235))

(assert (=> b!1379044 m!1551773))

(declare-fun m!1551777 () Bool)

(assert (=> b!1379044 m!1551777))

(assert (=> b!1379044 m!1551237))

(declare-fun m!1551779 () Bool)

(assert (=> b!1379044 m!1551779))

(assert (=> b!1379044 m!1551777))

(assert (=> b!1379044 m!1551779))

(declare-fun m!1551785 () Bool)

(assert (=> b!1379044 m!1551785))

(assert (=> b!1378644 d!393722))

(declare-fun b!1379095 () Bool)

(declare-fun e!881270 () Regex!3737)

(assert (=> b!1379095 (= e!881270 (ite (= (head!2497 lt!458458) (c!226768 lt!458460)) EmptyExpr!3737 EmptyLang!3737))))

(declare-fun b!1379096 () Bool)

(declare-fun c!226926 () Bool)

(assert (=> b!1379096 (= c!226926 (nullable!1203 (regOne!7986 lt!458460)))))

(declare-fun e!881271 () Regex!3737)

(declare-fun e!881273 () Regex!3737)

(assert (=> b!1379096 (= e!881271 e!881273)))

(declare-fun bm!92388 () Bool)

(declare-fun call!92393 () Regex!3737)

(declare-fun call!92396 () Regex!3737)

(assert (=> bm!92388 (= call!92393 call!92396)))

(declare-fun b!1379097 () Bool)

(declare-fun e!881272 () Regex!3737)

(assert (=> b!1379097 (= e!881272 e!881270)))

(declare-fun c!226925 () Bool)

(assert (=> b!1379097 (= c!226925 ((_ is ElementMatch!3737) lt!458460))))

(declare-fun b!1379098 () Bool)

(declare-fun e!881269 () Regex!3737)

(assert (=> b!1379098 (= e!881269 e!881271)))

(declare-fun c!226922 () Bool)

(assert (=> b!1379098 (= c!226922 ((_ is Star!3737) lt!458460))))

(declare-fun b!1379099 () Bool)

(declare-fun call!92394 () Regex!3737)

(assert (=> b!1379099 (= e!881269 (Union!3737 call!92396 call!92394))))

(declare-fun b!1379100 () Bool)

(assert (=> b!1379100 (= e!881272 EmptyLang!3737)))

(declare-fun b!1379101 () Bool)

(declare-fun call!92395 () Regex!3737)

(assert (=> b!1379101 (= e!881271 (Concat!6251 call!92395 lt!458460))))

(declare-fun bm!92389 () Bool)

(assert (=> bm!92389 (= call!92395 call!92394)))

(declare-fun bm!92390 () Bool)

(declare-fun c!226924 () Bool)

(assert (=> bm!92390 (= call!92396 (derivativeStep!961 (ite c!226924 (regOne!7987 lt!458460) (ite c!226926 (regTwo!7986 lt!458460) (regOne!7986 lt!458460))) (head!2497 lt!458458)))))

(declare-fun d!393726 () Bool)

(declare-fun lt!458643 () Regex!3737)

(assert (=> d!393726 (validRegex!1623 lt!458643)))

(assert (=> d!393726 (= lt!458643 e!881272)))

(declare-fun c!226923 () Bool)

(assert (=> d!393726 (= c!226923 (or ((_ is EmptyExpr!3737) lt!458460) ((_ is EmptyLang!3737) lt!458460)))))

(assert (=> d!393726 (validRegex!1623 lt!458460)))

(assert (=> d!393726 (= (derivativeStep!961 lt!458460 (head!2497 lt!458458)) lt!458643)))

(declare-fun b!1379102 () Bool)

(assert (=> b!1379102 (= e!881273 (Union!3737 (Concat!6251 call!92395 (regTwo!7986 lt!458460)) call!92393))))

(declare-fun b!1379103 () Bool)

(assert (=> b!1379103 (= c!226924 ((_ is Union!3737) lt!458460))))

(assert (=> b!1379103 (= e!881270 e!881269)))

(declare-fun b!1379104 () Bool)

(assert (=> b!1379104 (= e!881273 (Union!3737 (Concat!6251 call!92393 (regTwo!7986 lt!458460)) EmptyLang!3737))))

(declare-fun bm!92391 () Bool)

(assert (=> bm!92391 (= call!92394 (derivativeStep!961 (ite c!226924 (regTwo!7987 lt!458460) (ite c!226922 (reg!4066 lt!458460) (regOne!7986 lt!458460))) (head!2497 lt!458458)))))

(assert (= (and d!393726 c!226923) b!1379100))

(assert (= (and d!393726 (not c!226923)) b!1379097))

(assert (= (and b!1379097 c!226925) b!1379095))

(assert (= (and b!1379097 (not c!226925)) b!1379103))

(assert (= (and b!1379103 c!226924) b!1379099))

(assert (= (and b!1379103 (not c!226924)) b!1379098))

(assert (= (and b!1379098 c!226922) b!1379101))

(assert (= (and b!1379098 (not c!226922)) b!1379096))

(assert (= (and b!1379096 c!226926) b!1379102))

(assert (= (and b!1379096 (not c!226926)) b!1379104))

(assert (= (or b!1379102 b!1379104) bm!92388))

(assert (= (or b!1379101 b!1379102) bm!92389))

(assert (= (or b!1379099 bm!92388) bm!92390))

(assert (= (or b!1379099 bm!92389) bm!92391))

(declare-fun m!1551809 () Bool)

(assert (=> b!1379096 m!1551809))

(assert (=> bm!92390 m!1551233))

(declare-fun m!1551811 () Bool)

(assert (=> bm!92390 m!1551811))

(declare-fun m!1551813 () Bool)

(assert (=> d!393726 m!1551813))

(assert (=> d!393726 m!1551021))

(assert (=> bm!92391 m!1551233))

(declare-fun m!1551815 () Bool)

(assert (=> bm!92391 m!1551815))

(assert (=> b!1378644 d!393726))

(declare-fun d!393730 () Bool)

(assert (=> d!393730 (= (head!2497 lt!458458) (h!19386 lt!458458))))

(assert (=> b!1378644 d!393730))

(declare-fun d!393732 () Bool)

(assert (=> d!393732 (= (tail!1994 lt!458458) (t!121864 lt!458458))))

(assert (=> b!1378644 d!393732))

(declare-fun d!393734 () Bool)

(assert (=> d!393734 (= (inv!16 (value!78688 t1!34)) (= (charsToInt!0 (text!18038 (value!78688 t1!34))) (value!78679 (value!78688 t1!34))))))

(declare-fun bs!336408 () Bool)

(assert (= bs!336408 d!393734))

(declare-fun m!1551817 () Bool)

(assert (=> bs!336408 m!1551817))

(assert (=> b!1378716 d!393734))

(declare-fun d!393736 () Bool)

(declare-fun lt!458646 () Token!4508)

(assert (=> d!393736 (= lt!458646 (apply!3460 (list!5404 (_1!7689 lt!458490)) 0))))

(assert (=> d!393736 (= lt!458646 (apply!3461 (c!226810 (_1!7689 lt!458490)) 0))))

(declare-fun e!881276 () Bool)

(assert (=> d!393736 e!881276))

(declare-fun res!621908 () Bool)

(assert (=> d!393736 (=> (not res!621908) (not e!881276))))

(assert (=> d!393736 (= res!621908 (<= 0 0))))

(assert (=> d!393736 (= (apply!3457 (_1!7689 lt!458490) 0) lt!458646)))

(declare-fun b!1379109 () Bool)

(assert (=> b!1379109 (= e!881276 (< 0 (size!11460 (_1!7689 lt!458490))))))

(assert (= (and d!393736 res!621908) b!1379109))

(assert (=> d!393736 m!1551477))

(assert (=> d!393736 m!1551477))

(declare-fun m!1551819 () Bool)

(assert (=> d!393736 m!1551819))

(declare-fun m!1551821 () Bool)

(assert (=> d!393736 m!1551821))

(assert (=> b!1379109 m!1551203))

(assert (=> b!1378619 d!393736))

(declare-fun lt!458648 () Bool)

(declare-fun d!393738 () Bool)

(assert (=> d!393738 (= lt!458648 (isEmpty!8437 (list!5401 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))))

(assert (=> d!393738 (= lt!458648 (isEmpty!8440 (c!226767 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34)))))))))

(assert (=> d!393738 (= (isEmpty!8436 (_2!7689 (lex!945 thiss!19762 rules!2550 (print!884 thiss!19762 (singletonSeq!1059 t2!34))))) lt!458648)))

(declare-fun bs!336409 () Bool)

(assert (= bs!336409 d!393738))

(declare-fun m!1551825 () Bool)

(assert (=> bs!336409 m!1551825))

(assert (=> bs!336409 m!1551825))

(declare-fun m!1551833 () Bool)

(assert (=> bs!336409 m!1551833))

(declare-fun m!1551835 () Bool)

(assert (=> bs!336409 m!1551835))

(assert (=> b!1378621 d!393738))

(assert (=> b!1378621 d!393598))

(assert (=> b!1378621 d!393586))

(assert (=> b!1378621 d!393596))

(declare-fun d!393740 () Bool)

(assert (=> d!393740 (= (inv!18332 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))) (isBalanced!1353 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))))))

(declare-fun bs!336410 () Bool)

(assert (= bs!336410 d!393740))

(declare-fun m!1551839 () Bool)

(assert (=> bs!336410 m!1551839))

(assert (=> tb!72463 d!393740))

(declare-fun b!1379130 () Bool)

(declare-fun e!881291 () Bool)

(declare-fun e!881290 () Bool)

(assert (=> b!1379130 (= e!881291 e!881290)))

(declare-fun res!621914 () Bool)

(assert (=> b!1379130 (= res!621914 (not ((_ is Cons!13986) rules!2550)))))

(assert (=> b!1379130 (=> res!621914 e!881290)))

(declare-fun d!393744 () Bool)

(declare-fun c!226937 () Bool)

(assert (=> d!393744 (= c!226937 (and ((_ is Cons!13986) rules!2550) (not (= (isSeparator!2423 (h!19387 rules!2550)) (isSeparator!2423 (h!19387 rules!2550))))))))

(assert (=> d!393744 (= (ruleDisjointCharsFromAllFromOtherType!373 (h!19387 rules!2550) rules!2550) e!881291)))

(declare-fun b!1379131 () Bool)

(declare-fun e!881289 () Bool)

(declare-fun call!92399 () Bool)

(assert (=> b!1379131 (= e!881289 call!92399)))

(declare-fun b!1379132 () Bool)

(assert (=> b!1379132 (= e!881291 e!881289)))

(declare-fun res!621913 () Bool)

(declare-fun rulesUseDisjointChars!186 (Rule!4646 Rule!4646) Bool)

(assert (=> b!1379132 (= res!621913 (rulesUseDisjointChars!186 (h!19387 rules!2550) (h!19387 rules!2550)))))

(assert (=> b!1379132 (=> (not res!621913) (not e!881289))))

(declare-fun bm!92394 () Bool)

(assert (=> bm!92394 (= call!92399 (ruleDisjointCharsFromAllFromOtherType!373 (h!19387 rules!2550) (t!121865 rules!2550)))))

(declare-fun b!1379133 () Bool)

(assert (=> b!1379133 (= e!881290 call!92399)))

(assert (= (and d!393744 c!226937) b!1379132))

(assert (= (and d!393744 (not c!226937)) b!1379130))

(assert (= (and b!1379132 res!621913) b!1379131))

(assert (= (and b!1379130 (not res!621914)) b!1379133))

(assert (= (or b!1379131 b!1379133) bm!92394))

(declare-fun m!1551853 () Bool)

(assert (=> b!1379132 m!1551853))

(declare-fun m!1551855 () Bool)

(assert (=> bm!92394 m!1551855))

(assert (=> b!1378481 d!393744))

(declare-fun d!393752 () Bool)

(declare-fun c!226940 () Bool)

(assert (=> d!393752 (= c!226940 ((_ is Nil!13985) lt!458496))))

(declare-fun e!881296 () (InoxSet C!7764))

(assert (=> d!393752 (= (content!2041 lt!458496) e!881296)))

(declare-fun b!1379140 () Bool)

(assert (=> b!1379140 (= e!881296 ((as const (Array C!7764 Bool)) false))))

(declare-fun b!1379141 () Bool)

(assert (=> b!1379141 (= e!881296 ((_ map or) (store ((as const (Array C!7764 Bool)) false) (h!19386 lt!458496) true) (content!2041 (t!121864 lt!458496))))))

(assert (= (and d!393752 c!226940) b!1379140))

(assert (= (and d!393752 (not c!226940)) b!1379141))

(declare-fun m!1551857 () Bool)

(assert (=> b!1379141 m!1551857))

(declare-fun m!1551859 () Bool)

(assert (=> b!1379141 m!1551859))

(assert (=> d!393512 d!393752))

(declare-fun d!393754 () Bool)

(declare-fun c!226941 () Bool)

(assert (=> d!393754 (= c!226941 ((_ is Nil!13985) (list!5401 (charsOf!1395 t1!34))))))

(declare-fun e!881298 () (InoxSet C!7764))

(assert (=> d!393754 (= (content!2041 (list!5401 (charsOf!1395 t1!34))) e!881298)))

(declare-fun b!1379143 () Bool)

(assert (=> b!1379143 (= e!881298 ((as const (Array C!7764 Bool)) false))))

(declare-fun b!1379144 () Bool)

(assert (=> b!1379144 (= e!881298 ((_ map or) (store ((as const (Array C!7764 Bool)) false) (h!19386 (list!5401 (charsOf!1395 t1!34))) true) (content!2041 (t!121864 (list!5401 (charsOf!1395 t1!34))))))))

(assert (= (and d!393754 c!226941) b!1379143))

(assert (= (and d!393754 (not c!226941)) b!1379144))

(declare-fun m!1551865 () Bool)

(assert (=> b!1379144 m!1551865))

(assert (=> b!1379144 m!1551527))

(assert (=> d!393512 d!393754))

(declare-fun d!393756 () Bool)

(declare-fun c!226942 () Bool)

(assert (=> d!393756 (= c!226942 ((_ is Nil!13985) (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))

(declare-fun e!881299 () (InoxSet C!7764))

(assert (=> d!393756 (= (content!2041 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)) e!881299)))

(declare-fun b!1379145 () Bool)

(assert (=> b!1379145 (= e!881299 ((as const (Array C!7764 Bool)) false))))

(declare-fun b!1379146 () Bool)

(assert (=> b!1379146 (= e!881299 ((_ map or) (store ((as const (Array C!7764 Bool)) false) (h!19386 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)) true) (content!2041 (t!121864 (Cons!13985 (apply!3453 lt!458459 0) Nil!13985)))))))

(assert (= (and d!393756 c!226942) b!1379145))

(assert (= (and d!393756 (not c!226942)) b!1379146))

(declare-fun m!1551869 () Bool)

(assert (=> b!1379146 m!1551869))

(declare-fun m!1551871 () Bool)

(assert (=> b!1379146 m!1551871))

(assert (=> d!393512 d!393756))

(declare-fun d!393760 () Bool)

(assert (=> d!393760 (= (isEmpty!8437 (originalCharacters!3285 t2!34)) ((_ is Nil!13985) (originalCharacters!3285 t2!34)))))

(assert (=> d!393538 d!393760))

(declare-fun bs!336411 () Bool)

(declare-fun d!393764 () Bool)

(assert (= bs!336411 (and d!393764 d!393616)))

(declare-fun lambda!59087 () Int)

(assert (=> bs!336411 (= (and (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (h!19387 rules!2550)))) (= (toValue!3698 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (h!19387 rules!2550))))) (= lambda!59087 lambda!59065))))

(declare-fun bs!336412 () Bool)

(assert (= bs!336412 (and d!393764 d!393620)))

(assert (=> bs!336412 (= (and (= (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) (= (toValue!3698 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t1!34))))) (= lambda!59087 lambda!59066))))

(assert (=> d!393764 true))

(assert (=> d!393764 (< (dynLambda!6358 order!8523 (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) (dynLambda!6359 order!8525 lambda!59087))))

(assert (=> d!393764 true))

(assert (=> d!393764 (< (dynLambda!6355 order!8519 (toValue!3698 (transformation!2423 (rule!4182 t2!34)))) (dynLambda!6359 order!8525 lambda!59087))))

(assert (=> d!393764 (= (semiInverseModEq!932 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (toValue!3698 (transformation!2423 (rule!4182 t2!34)))) (Forall!542 lambda!59087))))

(declare-fun bs!336413 () Bool)

(assert (= bs!336413 d!393764))

(declare-fun m!1551877 () Bool)

(assert (=> bs!336413 m!1551877))

(assert (=> d!393542 d!393764))

(declare-fun d!393770 () Bool)

(declare-fun lt!458654 () Bool)

(assert (=> d!393770 (= lt!458654 (isEmpty!8437 (list!5401 (_2!7689 lt!458504))))))

(assert (=> d!393770 (= lt!458654 (isEmpty!8440 (c!226767 (_2!7689 lt!458504))))))

(assert (=> d!393770 (= (isEmpty!8436 (_2!7689 lt!458504)) lt!458654)))

(declare-fun bs!336414 () Bool)

(assert (= bs!336414 d!393770))

(declare-fun m!1551879 () Bool)

(assert (=> bs!336414 m!1551879))

(assert (=> bs!336414 m!1551879))

(declare-fun m!1551881 () Bool)

(assert (=> bs!336414 m!1551881))

(declare-fun m!1551883 () Bool)

(assert (=> bs!336414 m!1551883))

(assert (=> b!1378666 d!393770))

(declare-fun e!881309 () Bool)

(assert (=> b!1378749 (= tp!395150 e!881309)))

(declare-fun b!1379162 () Bool)

(declare-fun tp!395162 () Bool)

(assert (=> b!1379162 (= e!881309 tp!395162)))

(declare-fun b!1379163 () Bool)

(declare-fun tp!395161 () Bool)

(declare-fun tp!395163 () Bool)

(assert (=> b!1379163 (= e!881309 (and tp!395161 tp!395163))))

(declare-fun b!1379160 () Bool)

(assert (=> b!1379160 (= e!881309 tp_is_empty!6755)))

(declare-fun b!1379161 () Bool)

(declare-fun tp!395160 () Bool)

(declare-fun tp!395159 () Bool)

(assert (=> b!1379161 (= e!881309 (and tp!395160 tp!395159))))

(assert (= (and b!1378749 ((_ is ElementMatch!3737) (regex!2423 (h!19387 (t!121865 rules!2550))))) b!1379160))

(assert (= (and b!1378749 ((_ is Concat!6251) (regex!2423 (h!19387 (t!121865 rules!2550))))) b!1379161))

(assert (= (and b!1378749 ((_ is Star!3737) (regex!2423 (h!19387 (t!121865 rules!2550))))) b!1379162))

(assert (= (and b!1378749 ((_ is Union!3737) (regex!2423 (h!19387 (t!121865 rules!2550))))) b!1379163))

(declare-fun b!1379164 () Bool)

(declare-fun e!881310 () Bool)

(declare-fun tp!395164 () Bool)

(assert (=> b!1379164 (= e!881310 (and tp_is_empty!6755 tp!395164))))

(assert (=> b!1378755 (= tp!395158 e!881310)))

(assert (= (and b!1378755 ((_ is Cons!13985) (t!121864 (originalCharacters!3285 t1!34)))) b!1379164))

(declare-fun b!1379165 () Bool)

(declare-fun e!881311 () Bool)

(declare-fun tp!395165 () Bool)

(assert (=> b!1379165 (= e!881311 (and tp_is_empty!6755 tp!395165))))

(assert (=> b!1378721 (= tp!395120 e!881311)))

(assert (= (and b!1378721 ((_ is Cons!13985) (t!121864 (originalCharacters!3285 t2!34)))) b!1379165))

(declare-fun e!881312 () Bool)

(assert (=> b!1378737 (= tp!395137 e!881312)))

(declare-fun b!1379168 () Bool)

(declare-fun tp!395169 () Bool)

(assert (=> b!1379168 (= e!881312 tp!395169)))

(declare-fun b!1379169 () Bool)

(declare-fun tp!395168 () Bool)

(declare-fun tp!395170 () Bool)

(assert (=> b!1379169 (= e!881312 (and tp!395168 tp!395170))))

(declare-fun b!1379166 () Bool)

(assert (=> b!1379166 (= e!881312 tp_is_empty!6755)))

(declare-fun b!1379167 () Bool)

(declare-fun tp!395167 () Bool)

(declare-fun tp!395166 () Bool)

(assert (=> b!1379167 (= e!881312 (and tp!395167 tp!395166))))

(assert (= (and b!1378737 ((_ is ElementMatch!3737) (regOne!7986 (regex!2423 (rule!4182 t2!34))))) b!1379166))

(assert (= (and b!1378737 ((_ is Concat!6251) (regOne!7986 (regex!2423 (rule!4182 t2!34))))) b!1379167))

(assert (= (and b!1378737 ((_ is Star!3737) (regOne!7986 (regex!2423 (rule!4182 t2!34))))) b!1379168))

(assert (= (and b!1378737 ((_ is Union!3737) (regOne!7986 (regex!2423 (rule!4182 t2!34))))) b!1379169))

(declare-fun e!881313 () Bool)

(assert (=> b!1378737 (= tp!395136 e!881313)))

(declare-fun b!1379172 () Bool)

(declare-fun tp!395174 () Bool)

(assert (=> b!1379172 (= e!881313 tp!395174)))

(declare-fun b!1379173 () Bool)

(declare-fun tp!395173 () Bool)

(declare-fun tp!395175 () Bool)

(assert (=> b!1379173 (= e!881313 (and tp!395173 tp!395175))))

(declare-fun b!1379170 () Bool)

(assert (=> b!1379170 (= e!881313 tp_is_empty!6755)))

(declare-fun b!1379171 () Bool)

(declare-fun tp!395172 () Bool)

(declare-fun tp!395171 () Bool)

(assert (=> b!1379171 (= e!881313 (and tp!395172 tp!395171))))

(assert (= (and b!1378737 ((_ is ElementMatch!3737) (regTwo!7986 (regex!2423 (rule!4182 t2!34))))) b!1379170))

(assert (= (and b!1378737 ((_ is Concat!6251) (regTwo!7986 (regex!2423 (rule!4182 t2!34))))) b!1379171))

(assert (= (and b!1378737 ((_ is Star!3737) (regTwo!7986 (regex!2423 (rule!4182 t2!34))))) b!1379172))

(assert (= (and b!1378737 ((_ is Union!3737) (regTwo!7986 (regex!2423 (rule!4182 t2!34))))) b!1379173))

(declare-fun e!881314 () Bool)

(assert (=> b!1378734 (= tp!395134 e!881314)))

(declare-fun b!1379176 () Bool)

(declare-fun tp!395179 () Bool)

(assert (=> b!1379176 (= e!881314 tp!395179)))

(declare-fun b!1379177 () Bool)

(declare-fun tp!395178 () Bool)

(declare-fun tp!395180 () Bool)

(assert (=> b!1379177 (= e!881314 (and tp!395178 tp!395180))))

(declare-fun b!1379174 () Bool)

(assert (=> b!1379174 (= e!881314 tp_is_empty!6755)))

(declare-fun b!1379175 () Bool)

(declare-fun tp!395177 () Bool)

(declare-fun tp!395176 () Bool)

(assert (=> b!1379175 (= e!881314 (and tp!395177 tp!395176))))

(assert (= (and b!1378734 ((_ is ElementMatch!3737) (reg!4066 (regex!2423 (h!19387 rules!2550))))) b!1379174))

(assert (= (and b!1378734 ((_ is Concat!6251) (reg!4066 (regex!2423 (h!19387 rules!2550))))) b!1379175))

(assert (= (and b!1378734 ((_ is Star!3737) (reg!4066 (regex!2423 (h!19387 rules!2550))))) b!1379176))

(assert (= (and b!1378734 ((_ is Union!3737) (reg!4066 (regex!2423 (h!19387 rules!2550))))) b!1379177))

(declare-fun e!881315 () Bool)

(assert (=> b!1378733 (= tp!395132 e!881315)))

(declare-fun b!1379180 () Bool)

(declare-fun tp!395184 () Bool)

(assert (=> b!1379180 (= e!881315 tp!395184)))

(declare-fun b!1379181 () Bool)

(declare-fun tp!395183 () Bool)

(declare-fun tp!395185 () Bool)

(assert (=> b!1379181 (= e!881315 (and tp!395183 tp!395185))))

(declare-fun b!1379178 () Bool)

(assert (=> b!1379178 (= e!881315 tp_is_empty!6755)))

(declare-fun b!1379179 () Bool)

(declare-fun tp!395182 () Bool)

(declare-fun tp!395181 () Bool)

(assert (=> b!1379179 (= e!881315 (and tp!395182 tp!395181))))

(assert (= (and b!1378733 ((_ is ElementMatch!3737) (regOne!7986 (regex!2423 (h!19387 rules!2550))))) b!1379178))

(assert (= (and b!1378733 ((_ is Concat!6251) (regOne!7986 (regex!2423 (h!19387 rules!2550))))) b!1379179))

(assert (= (and b!1378733 ((_ is Star!3737) (regOne!7986 (regex!2423 (h!19387 rules!2550))))) b!1379180))

(assert (= (and b!1378733 ((_ is Union!3737) (regOne!7986 (regex!2423 (h!19387 rules!2550))))) b!1379181))

(declare-fun e!881316 () Bool)

(assert (=> b!1378733 (= tp!395131 e!881316)))

(declare-fun b!1379184 () Bool)

(declare-fun tp!395189 () Bool)

(assert (=> b!1379184 (= e!881316 tp!395189)))

(declare-fun b!1379185 () Bool)

(declare-fun tp!395188 () Bool)

(declare-fun tp!395190 () Bool)

(assert (=> b!1379185 (= e!881316 (and tp!395188 tp!395190))))

(declare-fun b!1379182 () Bool)

(assert (=> b!1379182 (= e!881316 tp_is_empty!6755)))

(declare-fun b!1379183 () Bool)

(declare-fun tp!395187 () Bool)

(declare-fun tp!395186 () Bool)

(assert (=> b!1379183 (= e!881316 (and tp!395187 tp!395186))))

(assert (= (and b!1378733 ((_ is ElementMatch!3737) (regTwo!7986 (regex!2423 (h!19387 rules!2550))))) b!1379182))

(assert (= (and b!1378733 ((_ is Concat!6251) (regTwo!7986 (regex!2423 (h!19387 rules!2550))))) b!1379183))

(assert (= (and b!1378733 ((_ is Star!3737) (regTwo!7986 (regex!2423 (h!19387 rules!2550))))) b!1379184))

(assert (= (and b!1378733 ((_ is Union!3737) (regTwo!7986 (regex!2423 (h!19387 rules!2550))))) b!1379185))

(declare-fun e!881317 () Bool)

(assert (=> b!1378738 (= tp!395139 e!881317)))

(declare-fun b!1379188 () Bool)

(declare-fun tp!395194 () Bool)

(assert (=> b!1379188 (= e!881317 tp!395194)))

(declare-fun b!1379189 () Bool)

(declare-fun tp!395193 () Bool)

(declare-fun tp!395195 () Bool)

(assert (=> b!1379189 (= e!881317 (and tp!395193 tp!395195))))

(declare-fun b!1379186 () Bool)

(assert (=> b!1379186 (= e!881317 tp_is_empty!6755)))

(declare-fun b!1379187 () Bool)

(declare-fun tp!395192 () Bool)

(declare-fun tp!395191 () Bool)

(assert (=> b!1379187 (= e!881317 (and tp!395192 tp!395191))))

(assert (= (and b!1378738 ((_ is ElementMatch!3737) (reg!4066 (regex!2423 (rule!4182 t2!34))))) b!1379186))

(assert (= (and b!1378738 ((_ is Concat!6251) (reg!4066 (regex!2423 (rule!4182 t2!34))))) b!1379187))

(assert (= (and b!1378738 ((_ is Star!3737) (reg!4066 (regex!2423 (rule!4182 t2!34))))) b!1379188))

(assert (= (and b!1378738 ((_ is Union!3737) (reg!4066 (regex!2423 (rule!4182 t2!34))))) b!1379189))

(declare-fun e!881318 () Bool)

(assert (=> b!1378735 (= tp!395133 e!881318)))

(declare-fun b!1379192 () Bool)

(declare-fun tp!395199 () Bool)

(assert (=> b!1379192 (= e!881318 tp!395199)))

(declare-fun b!1379193 () Bool)

(declare-fun tp!395198 () Bool)

(declare-fun tp!395200 () Bool)

(assert (=> b!1379193 (= e!881318 (and tp!395198 tp!395200))))

(declare-fun b!1379190 () Bool)

(assert (=> b!1379190 (= e!881318 tp_is_empty!6755)))

(declare-fun b!1379191 () Bool)

(declare-fun tp!395197 () Bool)

(declare-fun tp!395196 () Bool)

(assert (=> b!1379191 (= e!881318 (and tp!395197 tp!395196))))

(assert (= (and b!1378735 ((_ is ElementMatch!3737) (regOne!7987 (regex!2423 (h!19387 rules!2550))))) b!1379190))

(assert (= (and b!1378735 ((_ is Concat!6251) (regOne!7987 (regex!2423 (h!19387 rules!2550))))) b!1379191))

(assert (= (and b!1378735 ((_ is Star!3737) (regOne!7987 (regex!2423 (h!19387 rules!2550))))) b!1379192))

(assert (= (and b!1378735 ((_ is Union!3737) (regOne!7987 (regex!2423 (h!19387 rules!2550))))) b!1379193))

(declare-fun e!881319 () Bool)

(assert (=> b!1378735 (= tp!395135 e!881319)))

(declare-fun b!1379196 () Bool)

(declare-fun tp!395204 () Bool)

(assert (=> b!1379196 (= e!881319 tp!395204)))

(declare-fun b!1379197 () Bool)

(declare-fun tp!395203 () Bool)

(declare-fun tp!395205 () Bool)

(assert (=> b!1379197 (= e!881319 (and tp!395203 tp!395205))))

(declare-fun b!1379194 () Bool)

(assert (=> b!1379194 (= e!881319 tp_is_empty!6755)))

(declare-fun b!1379195 () Bool)

(declare-fun tp!395202 () Bool)

(declare-fun tp!395201 () Bool)

(assert (=> b!1379195 (= e!881319 (and tp!395202 tp!395201))))

(assert (= (and b!1378735 ((_ is ElementMatch!3737) (regTwo!7987 (regex!2423 (h!19387 rules!2550))))) b!1379194))

(assert (= (and b!1378735 ((_ is Concat!6251) (regTwo!7987 (regex!2423 (h!19387 rules!2550))))) b!1379195))

(assert (= (and b!1378735 ((_ is Star!3737) (regTwo!7987 (regex!2423 (h!19387 rules!2550))))) b!1379196))

(assert (= (and b!1378735 ((_ is Union!3737) (regTwo!7987 (regex!2423 (h!19387 rules!2550))))) b!1379197))

(declare-fun e!881320 () Bool)

(assert (=> b!1378739 (= tp!395138 e!881320)))

(declare-fun b!1379200 () Bool)

(declare-fun tp!395209 () Bool)

(assert (=> b!1379200 (= e!881320 tp!395209)))

(declare-fun b!1379201 () Bool)

(declare-fun tp!395208 () Bool)

(declare-fun tp!395210 () Bool)

(assert (=> b!1379201 (= e!881320 (and tp!395208 tp!395210))))

(declare-fun b!1379198 () Bool)

(assert (=> b!1379198 (= e!881320 tp_is_empty!6755)))

(declare-fun b!1379199 () Bool)

(declare-fun tp!395207 () Bool)

(declare-fun tp!395206 () Bool)

(assert (=> b!1379199 (= e!881320 (and tp!395207 tp!395206))))

(assert (= (and b!1378739 ((_ is ElementMatch!3737) (regOne!7987 (regex!2423 (rule!4182 t2!34))))) b!1379198))

(assert (= (and b!1378739 ((_ is Concat!6251) (regOne!7987 (regex!2423 (rule!4182 t2!34))))) b!1379199))

(assert (= (and b!1378739 ((_ is Star!3737) (regOne!7987 (regex!2423 (rule!4182 t2!34))))) b!1379200))

(assert (= (and b!1378739 ((_ is Union!3737) (regOne!7987 (regex!2423 (rule!4182 t2!34))))) b!1379201))

(declare-fun e!881321 () Bool)

(assert (=> b!1378739 (= tp!395140 e!881321)))

(declare-fun b!1379204 () Bool)

(declare-fun tp!395214 () Bool)

(assert (=> b!1379204 (= e!881321 tp!395214)))

(declare-fun b!1379205 () Bool)

(declare-fun tp!395213 () Bool)

(declare-fun tp!395215 () Bool)

(assert (=> b!1379205 (= e!881321 (and tp!395213 tp!395215))))

(declare-fun b!1379202 () Bool)

(assert (=> b!1379202 (= e!881321 tp_is_empty!6755)))

(declare-fun b!1379203 () Bool)

(declare-fun tp!395212 () Bool)

(declare-fun tp!395211 () Bool)

(assert (=> b!1379203 (= e!881321 (and tp!395212 tp!395211))))

(assert (= (and b!1378739 ((_ is ElementMatch!3737) (regTwo!7987 (regex!2423 (rule!4182 t2!34))))) b!1379202))

(assert (= (and b!1378739 ((_ is Concat!6251) (regTwo!7987 (regex!2423 (rule!4182 t2!34))))) b!1379203))

(assert (= (and b!1378739 ((_ is Star!3737) (regTwo!7987 (regex!2423 (rule!4182 t2!34))))) b!1379204))

(assert (= (and b!1378739 ((_ is Union!3737) (regTwo!7987 (regex!2423 (rule!4182 t2!34))))) b!1379205))

(declare-fun e!881322 () Bool)

(assert (=> b!1378752 (= tp!395154 e!881322)))

(declare-fun b!1379208 () Bool)

(declare-fun tp!395219 () Bool)

(assert (=> b!1379208 (= e!881322 tp!395219)))

(declare-fun b!1379209 () Bool)

(declare-fun tp!395218 () Bool)

(declare-fun tp!395220 () Bool)

(assert (=> b!1379209 (= e!881322 (and tp!395218 tp!395220))))

(declare-fun b!1379206 () Bool)

(assert (=> b!1379206 (= e!881322 tp_is_empty!6755)))

(declare-fun b!1379207 () Bool)

(declare-fun tp!395217 () Bool)

(declare-fun tp!395216 () Bool)

(assert (=> b!1379207 (= e!881322 (and tp!395217 tp!395216))))

(assert (= (and b!1378752 ((_ is ElementMatch!3737) (regOne!7986 (regex!2423 (rule!4182 t1!34))))) b!1379206))

(assert (= (and b!1378752 ((_ is Concat!6251) (regOne!7986 (regex!2423 (rule!4182 t1!34))))) b!1379207))

(assert (= (and b!1378752 ((_ is Star!3737) (regOne!7986 (regex!2423 (rule!4182 t1!34))))) b!1379208))

(assert (= (and b!1378752 ((_ is Union!3737) (regOne!7986 (regex!2423 (rule!4182 t1!34))))) b!1379209))

(declare-fun e!881323 () Bool)

(assert (=> b!1378752 (= tp!395153 e!881323)))

(declare-fun b!1379212 () Bool)

(declare-fun tp!395224 () Bool)

(assert (=> b!1379212 (= e!881323 tp!395224)))

(declare-fun b!1379213 () Bool)

(declare-fun tp!395223 () Bool)

(declare-fun tp!395225 () Bool)

(assert (=> b!1379213 (= e!881323 (and tp!395223 tp!395225))))

(declare-fun b!1379210 () Bool)

(assert (=> b!1379210 (= e!881323 tp_is_empty!6755)))

(declare-fun b!1379211 () Bool)

(declare-fun tp!395222 () Bool)

(declare-fun tp!395221 () Bool)

(assert (=> b!1379211 (= e!881323 (and tp!395222 tp!395221))))

(assert (= (and b!1378752 ((_ is ElementMatch!3737) (regTwo!7986 (regex!2423 (rule!4182 t1!34))))) b!1379210))

(assert (= (and b!1378752 ((_ is Concat!6251) (regTwo!7986 (regex!2423 (rule!4182 t1!34))))) b!1379211))

(assert (= (and b!1378752 ((_ is Star!3737) (regTwo!7986 (regex!2423 (rule!4182 t1!34))))) b!1379212))

(assert (= (and b!1378752 ((_ is Union!3737) (regTwo!7986 (regex!2423 (rule!4182 t1!34))))) b!1379213))

(declare-fun tp!395233 () Bool)

(declare-fun e!881328 () Bool)

(declare-fun b!1379222 () Bool)

(declare-fun tp!395232 () Bool)

(assert (=> b!1379222 (= e!881328 (and (inv!18331 (left!11960 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))) tp!395233 (inv!18331 (right!12290 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))) tp!395232))))

(declare-fun b!1379224 () Bool)

(declare-fun e!881329 () Bool)

(declare-fun tp!395234 () Bool)

(assert (=> b!1379224 (= e!881329 tp!395234)))

(declare-fun b!1379223 () Bool)

(declare-fun inv!18335 (IArray!9219) Bool)

(assert (=> b!1379223 (= e!881328 (and (inv!18335 (xs!7334 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))) e!881329))))

(assert (=> b!1378664 (= tp!395116 (and (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34)))) e!881328))))

(assert (= (and b!1378664 ((_ is Node!4607) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))) b!1379222))

(assert (= b!1379223 b!1379224))

(assert (= (and b!1378664 ((_ is Leaf!7015) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t1!34))) (value!78688 t1!34))))) b!1379223))

(declare-fun m!1551891 () Bool)

(assert (=> b!1379222 m!1551891))

(declare-fun m!1551893 () Bool)

(assert (=> b!1379222 m!1551893))

(declare-fun m!1551895 () Bool)

(assert (=> b!1379223 m!1551895))

(assert (=> b!1378664 m!1551263))

(declare-fun e!881330 () Bool)

(assert (=> b!1378754 (= tp!395155 e!881330)))

(declare-fun b!1379227 () Bool)

(declare-fun tp!395238 () Bool)

(assert (=> b!1379227 (= e!881330 tp!395238)))

(declare-fun b!1379228 () Bool)

(declare-fun tp!395237 () Bool)

(declare-fun tp!395239 () Bool)

(assert (=> b!1379228 (= e!881330 (and tp!395237 tp!395239))))

(declare-fun b!1379225 () Bool)

(assert (=> b!1379225 (= e!881330 tp_is_empty!6755)))

(declare-fun b!1379226 () Bool)

(declare-fun tp!395236 () Bool)

(declare-fun tp!395235 () Bool)

(assert (=> b!1379226 (= e!881330 (and tp!395236 tp!395235))))

(assert (= (and b!1378754 ((_ is ElementMatch!3737) (regOne!7987 (regex!2423 (rule!4182 t1!34))))) b!1379225))

(assert (= (and b!1378754 ((_ is Concat!6251) (regOne!7987 (regex!2423 (rule!4182 t1!34))))) b!1379226))

(assert (= (and b!1378754 ((_ is Star!3737) (regOne!7987 (regex!2423 (rule!4182 t1!34))))) b!1379227))

(assert (= (and b!1378754 ((_ is Union!3737) (regOne!7987 (regex!2423 (rule!4182 t1!34))))) b!1379228))

(declare-fun e!881331 () Bool)

(assert (=> b!1378754 (= tp!395157 e!881331)))

(declare-fun b!1379231 () Bool)

(declare-fun tp!395243 () Bool)

(assert (=> b!1379231 (= e!881331 tp!395243)))

(declare-fun b!1379232 () Bool)

(declare-fun tp!395242 () Bool)

(declare-fun tp!395244 () Bool)

(assert (=> b!1379232 (= e!881331 (and tp!395242 tp!395244))))

(declare-fun b!1379229 () Bool)

(assert (=> b!1379229 (= e!881331 tp_is_empty!6755)))

(declare-fun b!1379230 () Bool)

(declare-fun tp!395241 () Bool)

(declare-fun tp!395240 () Bool)

(assert (=> b!1379230 (= e!881331 (and tp!395241 tp!395240))))

(assert (= (and b!1378754 ((_ is ElementMatch!3737) (regTwo!7987 (regex!2423 (rule!4182 t1!34))))) b!1379229))

(assert (= (and b!1378754 ((_ is Concat!6251) (regTwo!7987 (regex!2423 (rule!4182 t1!34))))) b!1379230))

(assert (= (and b!1378754 ((_ is Star!3737) (regTwo!7987 (regex!2423 (rule!4182 t1!34))))) b!1379231))

(assert (= (and b!1378754 ((_ is Union!3737) (regTwo!7987 (regex!2423 (rule!4182 t1!34))))) b!1379232))

(declare-fun e!881332 () Bool)

(assert (=> b!1378753 (= tp!395156 e!881332)))

(declare-fun b!1379235 () Bool)

(declare-fun tp!395248 () Bool)

(assert (=> b!1379235 (= e!881332 tp!395248)))

(declare-fun b!1379236 () Bool)

(declare-fun tp!395247 () Bool)

(declare-fun tp!395249 () Bool)

(assert (=> b!1379236 (= e!881332 (and tp!395247 tp!395249))))

(declare-fun b!1379233 () Bool)

(assert (=> b!1379233 (= e!881332 tp_is_empty!6755)))

(declare-fun b!1379234 () Bool)

(declare-fun tp!395246 () Bool)

(declare-fun tp!395245 () Bool)

(assert (=> b!1379234 (= e!881332 (and tp!395246 tp!395245))))

(assert (= (and b!1378753 ((_ is ElementMatch!3737) (reg!4066 (regex!2423 (rule!4182 t1!34))))) b!1379233))

(assert (= (and b!1378753 ((_ is Concat!6251) (reg!4066 (regex!2423 (rule!4182 t1!34))))) b!1379234))

(assert (= (and b!1378753 ((_ is Star!3737) (reg!4066 (regex!2423 (rule!4182 t1!34))))) b!1379235))

(assert (= (and b!1378753 ((_ is Union!3737) (reg!4066 (regex!2423 (rule!4182 t1!34))))) b!1379236))

(declare-fun b!1379237 () Bool)

(declare-fun tp!395251 () Bool)

(declare-fun e!881333 () Bool)

(declare-fun tp!395250 () Bool)

(assert (=> b!1379237 (= e!881333 (and (inv!18331 (left!11960 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))) tp!395251 (inv!18331 (right!12290 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))) tp!395250))))

(declare-fun b!1379239 () Bool)

(declare-fun e!881334 () Bool)

(declare-fun tp!395252 () Bool)

(assert (=> b!1379239 (= e!881334 tp!395252)))

(declare-fun b!1379238 () Bool)

(assert (=> b!1379238 (= e!881333 (and (inv!18335 (xs!7334 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))) e!881334))))

(assert (=> b!1378675 (= tp!395117 (and (inv!18331 (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34)))) e!881333))))

(assert (= (and b!1378675 ((_ is Node!4607) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))) b!1379237))

(assert (= b!1379238 b!1379239))

(assert (= (and b!1378675 ((_ is Leaf!7015) (c!226767 (dynLambda!6354 (toChars!3557 (transformation!2423 (rule!4182 t2!34))) (value!78688 t2!34))))) b!1379238))

(declare-fun m!1551897 () Bool)

(assert (=> b!1379237 m!1551897))

(declare-fun m!1551899 () Bool)

(assert (=> b!1379237 m!1551899))

(declare-fun m!1551901 () Bool)

(assert (=> b!1379238 m!1551901))

(assert (=> b!1378675 m!1551311))

(declare-fun b!1379242 () Bool)

(declare-fun b_free!33487 () Bool)

(declare-fun b_next!34191 () Bool)

(assert (=> b!1379242 (= b_free!33487 (not b_next!34191))))

(declare-fun tp!395256 () Bool)

(declare-fun b_and!92415 () Bool)

(assert (=> b!1379242 (= tp!395256 b_and!92415)))

(declare-fun b_free!33489 () Bool)

(declare-fun b_next!34193 () Bool)

(assert (=> b!1379242 (= b_free!33489 (not b_next!34193))))

(declare-fun tb!72473 () Bool)

(declare-fun t!121914 () Bool)

(assert (=> (and b!1379242 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 (t!121865 rules!2550))))) (toChars!3557 (transformation!2423 (rule!4182 t1!34)))) t!121914) tb!72473))

(declare-fun result!88008 () Bool)

(assert (= result!88008 result!87982))

(assert (=> d!393516 t!121914))

(declare-fun t!121916 () Bool)

(declare-fun tb!72475 () Bool)

(assert (=> (and b!1379242 (= (toChars!3557 (transformation!2423 (h!19387 (t!121865 (t!121865 rules!2550))))) (toChars!3557 (transformation!2423 (rule!4182 t2!34)))) t!121916) tb!72475))

(declare-fun result!88010 () Bool)

(assert (= result!88010 result!87990))

(assert (=> d!393534 t!121916))

(assert (=> b!1378680 t!121914))

(assert (=> b!1378682 t!121916))

(declare-fun tp!395255 () Bool)

(declare-fun b_and!92417 () Bool)

(assert (=> b!1379242 (= tp!395255 (and (=> t!121914 result!88008) (=> t!121916 result!88010) b_and!92417))))

(declare-fun e!881335 () Bool)

(assert (=> b!1379242 (= e!881335 (and tp!395256 tp!395255))))

(declare-fun e!881337 () Bool)

(declare-fun b!1379241 () Bool)

(declare-fun tp!395254 () Bool)

(assert (=> b!1379241 (= e!881337 (and tp!395254 (inv!18324 (tag!2685 (h!19387 (t!121865 (t!121865 rules!2550))))) (inv!18327 (transformation!2423 (h!19387 (t!121865 (t!121865 rules!2550))))) e!881335))))

(declare-fun b!1379240 () Bool)

(declare-fun e!881338 () Bool)

(declare-fun tp!395253 () Bool)

(assert (=> b!1379240 (= e!881338 (and e!881337 tp!395253))))

(assert (=> b!1378748 (= tp!395149 e!881338)))

(assert (= b!1379241 b!1379242))

(assert (= b!1379240 b!1379241))

(assert (= (and b!1378748 ((_ is Cons!13986) (t!121865 (t!121865 rules!2550)))) b!1379240))

(declare-fun m!1551903 () Bool)

(assert (=> b!1379241 m!1551903))

(declare-fun m!1551905 () Bool)

(assert (=> b!1379241 m!1551905))

(declare-fun b_lambda!42431 () Bool)

(assert (= b_lambda!42427 (or d!393518 b_lambda!42431)))

(declare-fun bs!336415 () Bool)

(declare-fun d!393774 () Bool)

(assert (= bs!336415 (and d!393774 d!393518)))

(assert (=> bs!336415 (= (dynLambda!6357 lambda!59049 (h!19387 rules!2550)) (regex!2423 (h!19387 rules!2550)))))

(assert (=> b!1378882 d!393774))

(check-sat (not d!393610) (not b!1379042) (not b!1379043) tp_is_empty!6755 (not d!393586) (not b!1379189) (not b!1379230) (not d!393640) (not b!1378675) (not d!393620) (not b!1379180) (not b!1378868) (not b!1379165) b_and!92351 (not b!1379039) (not b!1379184) (not b!1378949) (not b!1378958) (not b!1378902) (not b!1378947) (not d!393606) (not b!1379234) (not b!1378916) (not b!1379213) (not d!393642) (not b!1379203) (not d!393596) (not d!393572) (not b!1379173) b_and!92347 (not d!393710) (not b_next!34173) (not b!1379231) (not b!1378905) (not b!1379044) (not b!1378948) (not d!393602) (not b!1378919) (not b!1379029) (not b_next!34179) (not b!1378924) (not d!393738) (not b!1379226) (not b!1379241) (not b!1379238) (not b!1379183) b_and!92411 (not b!1379175) (not d!393720) (not b!1379025) (not d!393616) (not d!393598) (not b!1379235) (not b!1379209) (not b_lambda!42419) (not bm!92391) (not b!1378985) b_and!92355 (not d!393666) (not b!1379168) (not b!1378901) (not b!1379236) (not b!1378809) (not b!1379015) (not b!1379196) (not d!393726) (not b!1379195) (not b!1379172) (not b_next!34193) (not d!393764) (not b!1378840) (not b!1379205) (not b!1379019) (not b!1378869) (not b_lambda!42431) (not b!1379176) (not d!393690) (not b!1378957) (not bm!92372) (not d!393630) (not b!1379109) (not d!393670) (not b!1379199) (not b!1379164) (not d!393656) (not b!1379027) (not b!1379017) (not d!393734) (not b!1378907) (not b!1379211) (not d!393700) (not d!393736) (not b!1379146) (not d!393628) (not b_lambda!42421) (not bm!92369) (not b!1379038) (not b!1379171) (not b!1378867) (not bm!92390) (not bm!92394) (not d!393626) (not d!393680) (not b!1379239) (not d!393634) (not b!1379162) b_and!92409 (not b_lambda!42423) (not b!1379192) (not d!393548) (not d!393722) (not b!1379240) (not bm!92378) (not b!1378882) (not b_next!34181) (not b!1378870) (not b!1379187) (not b!1379177) (not b!1379181) (not b!1379223) (not b!1378926) (not b!1378884) b_and!92405 (not bm!92371) (not d!393654) b_and!92417 (not b!1379179) (not b!1378937) (not b!1378885) (not b_next!34175) (not d!393632) (not b!1379185) (not d!393770) (not b!1378963) (not b!1378918) (not b!1379161) (not b!1379193) (not b!1379191) (not b!1379014) (not d!393740) (not b!1379167) (not d!393660) (not b!1379188) (not b_lambda!42425) (not b_next!34187) (not b!1378871) b_and!92407 (not b!1379096) (not b!1378921) (not d!393600) (not b_next!34171) (not d!393650) b_and!92415 (not b!1379207) (not d!393714) (not b!1379237) (not b!1378807) (not b!1379208) (not b!1378984) (not d!393636) (not b!1378825) (not b!1378950) (not b!1378846) (not b!1379197) (not d!393712) (not b_next!34177) (not d!393624) (not b!1379144) (not b!1379224) (not b!1378838) (not b!1379228) (not b!1379227) (not b!1378874) (not d!393614) (not b!1378986) (not b!1379200) b_and!92413 (not b!1378664) (not d!393608) (not bm!92368) (not b!1379141) (not b!1378872) (not b!1378900) (not b!1379212) (not b!1379222) (not d!393672) (not b!1379232) (not b!1378837) (not b!1378836) (not d!393604) (not d!393646) (not b!1378938) (not d!393582) (not b!1379163) (not d!393618) (not d!393668) (not b_next!34189) (not b!1378904) (not d!393622) (not b!1379204) (not d!393550) (not b!1378925) (not b!1379132) (not d!393576) (not d!393662) (not d!393580) (not b_next!34191) (not b!1379201) (not b!1379169) (not b!1378891))
(check-sat b_and!92351 b_and!92347 (not b_next!34173) (not b_next!34179) b_and!92411 b_and!92355 (not b_next!34193) b_and!92409 (not b_next!34181) (not b_next!34175) (not b_next!34177) b_and!92413 (not b_next!34189) (not b_next!34191) b_and!92405 b_and!92417 (not b_next!34187) b_and!92407 (not b_next!34171) b_and!92415)
