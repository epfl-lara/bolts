; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231694 () Bool)

(assert start!231694)

(declare-fun b!2361170 () Bool)

(declare-fun b_free!70529 () Bool)

(declare-fun b_next!71233 () Bool)

(assert (=> b!2361170 (= b_free!70529 (not b_next!71233))))

(declare-fun tp!755107 () Bool)

(declare-fun b_and!185501 () Bool)

(assert (=> b!2361170 (= tp!755107 b_and!185501)))

(declare-fun b_free!70531 () Bool)

(declare-fun b_next!71235 () Bool)

(assert (=> b!2361170 (= b_free!70531 (not b_next!71235))))

(declare-fun tp!755106 () Bool)

(declare-fun b_and!185503 () Bool)

(assert (=> b!2361170 (= tp!755106 b_and!185503)))

(declare-fun b!2361169 () Bool)

(declare-fun e!1508135 () Bool)

(declare-fun e!1508136 () Bool)

(declare-fun tp!755108 () Bool)

(assert (=> b!2361169 (= e!1508135 (and e!1508136 tp!755108))))

(declare-fun e!1508127 () Bool)

(assert (=> b!2361170 (= e!1508127 (and tp!755107 tp!755106))))

(declare-fun b!2361171 () Bool)

(declare-datatypes ((List!28042 0))(
  ( (Nil!27944) (Cons!27944 (h!33345 (_ BitVec 16)) (t!207981 List!28042)) )
))
(declare-datatypes ((TokenValue!4633 0))(
  ( (FloatLiteralValue!9266 (text!32876 List!28042)) (TokenValueExt!4632 (__x!18521 Int)) (Broken!23165 (value!141589 List!28042)) (Object!4730) (End!4633) (Def!4633) (Underscore!4633) (Match!4633) (Else!4633) (Error!4633) (Case!4633) (If!4633) (Extends!4633) (Abstract!4633) (Class!4633) (Val!4633) (DelimiterValue!9266 (del!4693 List!28042)) (KeywordValue!4639 (value!141590 List!28042)) (CommentValue!9266 (value!141591 List!28042)) (WhitespaceValue!9266 (value!141592 List!28042)) (IndentationValue!4633 (value!141593 List!28042)) (String!30764) (Int32!4633) (Broken!23166 (value!141594 List!28042)) (Boolean!4634) (Unit!40848) (OperatorValue!4636 (op!4693 List!28042)) (IdentifierValue!9266 (value!141595 List!28042)) (IdentifierValue!9267 (value!141596 List!28042)) (WhitespaceValue!9267 (value!141597 List!28042)) (True!9266) (False!9266) (Broken!23167 (value!141598 List!28042)) (Broken!23168 (value!141599 List!28042)) (True!9267) (RightBrace!4633) (RightBracket!4633) (Colon!4633) (Null!4633) (Comma!4633) (LeftBracket!4633) (False!9267) (LeftBrace!4633) (ImaginaryLiteralValue!4633 (text!32877 List!28042)) (StringLiteralValue!13899 (value!141600 List!28042)) (EOFValue!4633 (value!141601 List!28042)) (IdentValue!4633 (value!141602 List!28042)) (DelimiterValue!9267 (value!141603 List!28042)) (DedentValue!4633 (value!141604 List!28042)) (NewLineValue!4633 (value!141605 List!28042)) (IntegerValue!13899 (value!141606 (_ BitVec 32)) (text!32878 List!28042)) (IntegerValue!13900 (value!141607 Int) (text!32879 List!28042)) (Times!4633) (Or!4633) (Equal!4633) (Minus!4633) (Broken!23169 (value!141608 List!28042)) (And!4633) (Div!4633) (LessEqual!4633) (Mod!4633) (Concat!11538) (Not!4633) (Plus!4633) (SpaceValue!4633 (value!141609 List!28042)) (IntegerValue!13901 (value!141610 Int) (text!32880 List!28042)) (StringLiteralValue!13900 (text!32881 List!28042)) (FloatLiteralValue!9267 (text!32882 List!28042)) (BytesLiteralValue!4633 (value!141611 List!28042)) (CommentValue!9267 (value!141612 List!28042)) (StringLiteralValue!13901 (value!141613 List!28042)) (ErrorTokenValue!4633 (msg!4694 List!28042)) )
))
(declare-datatypes ((C!13968 0))(
  ( (C!13969 (val!8226 Int)) )
))
(declare-datatypes ((Regex!6905 0))(
  ( (ElementMatch!6905 (c!375284 C!13968)) (Concat!11539 (regOne!14322 Regex!6905) (regTwo!14322 Regex!6905)) (EmptyExpr!6905) (Star!6905 (reg!7234 Regex!6905)) (EmptyLang!6905) (Union!6905 (regOne!14323 Regex!6905) (regTwo!14323 Regex!6905)) )
))
(declare-datatypes ((String!30765 0))(
  ( (String!30766 (value!141614 String)) )
))
(declare-datatypes ((List!28043 0))(
  ( (Nil!27945) (Cons!27945 (h!33346 C!13968) (t!207982 List!28043)) )
))
(declare-datatypes ((IArray!18303 0))(
  ( (IArray!18304 (innerList!9209 List!28043)) )
))
(declare-datatypes ((Conc!9149 0))(
  ( (Node!9149 (left!21245 Conc!9149) (right!21575 Conc!9149) (csize!18528 Int) (cheight!9360 Int)) (Leaf!13506 (xs!12129 IArray!18303) (csize!18529 Int)) (Empty!9149) )
))
(declare-datatypes ((BalanceConc!17910 0))(
  ( (BalanceConc!17911 (c!375285 Conc!9149)) )
))
(declare-datatypes ((TokenValueInjection!8766 0))(
  ( (TokenValueInjection!8767 (toValue!6295 Int) (toChars!6154 Int)) )
))
(declare-datatypes ((Rule!8694 0))(
  ( (Rule!8695 (regex!4447 Regex!6905) (tag!4937 String!30765) (isSeparator!4447 Bool) (transformation!4447 TokenValueInjection!8766)) )
))
(declare-datatypes ((List!28044 0))(
  ( (Nil!27946) (Cons!27946 (h!33347 Rule!8694) (t!207983 List!28044)) )
))
(declare-fun rules!1706 () List!28044)

(declare-fun tp!755109 () Bool)

(declare-fun inv!38167 (String!30765) Bool)

(declare-fun inv!38169 (TokenValueInjection!8766) Bool)

(assert (=> b!2361171 (= e!1508136 (and tp!755109 (inv!38167 (tag!4937 (h!33347 rules!1706))) (inv!38169 (transformation!4447 (h!33347 rules!1706))) e!1508127))))

(declare-fun res!1002104 () Bool)

(declare-fun e!1508133 () Bool)

(assert (=> start!231694 (=> (not res!1002104) (not e!1508133))))

(declare-datatypes ((LexerInterface!4044 0))(
  ( (LexerInterfaceExt!4041 (__x!18522 Int)) (Lexer!4042) )
))
(declare-fun thiss!13512 () LexerInterface!4044)

(get-info :version)

(assert (=> start!231694 (= res!1002104 ((_ is Lexer!4042) thiss!13512))))

(assert (=> start!231694 e!1508133))

(assert (=> start!231694 true))

(assert (=> start!231694 e!1508135))

(declare-fun e!1508129 () Bool)

(assert (=> start!231694 e!1508129))

(declare-fun b!2361172 () Bool)

(declare-fun res!1002102 () Bool)

(assert (=> b!2361172 (=> (not res!1002102) (not e!1508133))))

(declare-fun rulesInvariant!3544 (LexerInterface!4044 List!28044) Bool)

(assert (=> b!2361172 (= res!1002102 (rulesInvariant!3544 thiss!13512 rules!1706))))

(declare-fun b!2361173 () Bool)

(declare-fun e!1508131 () Bool)

(declare-datatypes ((Token!8364 0))(
  ( (Token!8365 (value!141615 TokenValue!4633) (rule!6803 Rule!8694) (size!22127 Int) (originalCharacters!5213 List!28043)) )
))
(declare-datatypes ((List!28045 0))(
  ( (Nil!27947) (Cons!27947 (h!33348 Token!8364) (t!207984 List!28045)) )
))
(declare-datatypes ((tuple2!27680 0))(
  ( (tuple2!27681 (_1!16381 List!28045) (_2!16381 List!28043)) )
))
(declare-fun lt!864430 () tuple2!27680)

(declare-fun input!1160 () List!28043)

(assert (=> b!2361173 (= e!1508131 (not (= (_2!16381 lt!864430) input!1160)))))

(declare-fun b!2361174 () Bool)

(declare-fun tp_is_empty!11227 () Bool)

(declare-fun tp!755105 () Bool)

(assert (=> b!2361174 (= e!1508129 (and tp_is_empty!11227 tp!755105))))

(declare-fun b!2361175 () Bool)

(declare-fun e!1508132 () Bool)

(assert (=> b!2361175 (= e!1508131 e!1508132)))

(declare-fun res!1002107 () Bool)

(declare-fun size!22128 (List!28043) Int)

(assert (=> b!2361175 (= res!1002107 (>= (size!22128 (_2!16381 lt!864430)) (size!22128 input!1160)))))

(assert (=> b!2361175 (=> res!1002107 e!1508132)))

(declare-fun b!2361176 () Bool)

(declare-fun lt!864428 () List!28045)

(declare-fun isEmpty!15876 (List!28045) Bool)

(assert (=> b!2361176 (= e!1508132 (isEmpty!15876 lt!864428))))

(declare-fun b!2361177 () Bool)

(declare-fun e!1508130 () Bool)

(assert (=> b!2361177 (= e!1508130 e!1508131)))

(declare-fun c!375283 () Bool)

(declare-fun size!22129 (List!28045) Int)

(assert (=> b!2361177 (= c!375283 (> (size!22129 lt!864428) 0))))

(declare-datatypes ((tuple2!27682 0))(
  ( (tuple2!27683 (_1!16382 Token!8364) (_2!16382 List!28043)) )
))
(declare-datatypes ((Option!5454 0))(
  ( (None!5453) (Some!5453 (v!30859 tuple2!27682)) )
))
(declare-fun lt!864429 () Option!5454)

(assert (=> b!2361177 (= lt!864428 (Cons!27947 (_1!16382 (v!30859 lt!864429)) (_1!16381 lt!864430)))))

(declare-fun b!2361178 () Bool)

(declare-fun e!1508134 () Bool)

(assert (=> b!2361178 (= e!1508133 e!1508134)))

(declare-fun res!1002106 () Bool)

(assert (=> b!2361178 (=> (not res!1002106) (not e!1508134))))

(assert (=> b!2361178 (= res!1002106 ((_ is Some!5453) lt!864429))))

(declare-fun maxPrefix!2274 (LexerInterface!4044 List!28044 List!28043) Option!5454)

(assert (=> b!2361178 (= lt!864429 (maxPrefix!2274 thiss!13512 rules!1706 input!1160))))

(declare-fun b!2361179 () Bool)

(declare-fun res!1002103 () Bool)

(assert (=> b!2361179 (=> (not res!1002103) (not e!1508133))))

(declare-fun isEmpty!15877 (List!28044) Bool)

(assert (=> b!2361179 (= res!1002103 (not (isEmpty!15877 rules!1706)))))

(declare-fun b!2361180 () Bool)

(assert (=> b!2361180 (= e!1508134 e!1508130)))

(declare-fun res!1002105 () Bool)

(assert (=> b!2361180 (=> (not res!1002105) (not e!1508130))))

(declare-fun ++!6880 (List!28043 List!28043) List!28043)

(declare-fun list!11087 (BalanceConc!17910) List!28043)

(declare-fun charsOf!2807 (Token!8364) BalanceConc!17910)

(assert (=> b!2361180 (= res!1002105 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))) (_2!16382 (v!30859 lt!864429))) input!1160))))

(declare-fun lexRegexList!4 (LexerInterface!4044 List!28044 List!28043) tuple2!27680)

(assert (=> b!2361180 (= lt!864430 (lexRegexList!4 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864429))))))

(assert (= (and start!231694 res!1002104) b!2361179))

(assert (= (and b!2361179 res!1002103) b!2361172))

(assert (= (and b!2361172 res!1002102) b!2361178))

(assert (= (and b!2361178 res!1002106) b!2361180))

(assert (= (and b!2361180 res!1002105) b!2361177))

(assert (= (and b!2361177 c!375283) b!2361175))

(assert (= (and b!2361177 (not c!375283)) b!2361173))

(assert (= (and b!2361175 (not res!1002107)) b!2361176))

(assert (= b!2361171 b!2361170))

(assert (= b!2361169 b!2361171))

(assert (= (and start!231694 ((_ is Cons!27946) rules!1706)) b!2361169))

(assert (= (and start!231694 ((_ is Cons!27945) input!1160)) b!2361174))

(declare-fun m!2773425 () Bool)

(assert (=> b!2361177 m!2773425))

(declare-fun m!2773427 () Bool)

(assert (=> b!2361180 m!2773427))

(assert (=> b!2361180 m!2773427))

(declare-fun m!2773429 () Bool)

(assert (=> b!2361180 m!2773429))

(assert (=> b!2361180 m!2773429))

(declare-fun m!2773431 () Bool)

(assert (=> b!2361180 m!2773431))

(declare-fun m!2773433 () Bool)

(assert (=> b!2361180 m!2773433))

(declare-fun m!2773435 () Bool)

(assert (=> b!2361179 m!2773435))

(declare-fun m!2773437 () Bool)

(assert (=> b!2361178 m!2773437))

(declare-fun m!2773439 () Bool)

(assert (=> b!2361176 m!2773439))

(declare-fun m!2773441 () Bool)

(assert (=> b!2361172 m!2773441))

(declare-fun m!2773443 () Bool)

(assert (=> b!2361171 m!2773443))

(declare-fun m!2773445 () Bool)

(assert (=> b!2361171 m!2773445))

(declare-fun m!2773447 () Bool)

(assert (=> b!2361175 m!2773447))

(declare-fun m!2773449 () Bool)

(assert (=> b!2361175 m!2773449))

(check-sat (not b!2361179) (not b!2361174) tp_is_empty!11227 b_and!185501 (not b!2361178) (not b!2361180) (not b!2361177) (not b!2361172) (not b!2361175) (not b!2361176) (not b!2361169) (not b_next!71235) (not b_next!71233) (not b!2361171) b_and!185503)
(check-sat b_and!185503 b_and!185501 (not b_next!71233) (not b_next!71235))
(get-model)

(declare-fun d!693971 () Bool)

(assert (=> d!693971 (= (isEmpty!15877 rules!1706) ((_ is Nil!27946) rules!1706))))

(assert (=> b!2361179 d!693971))

(declare-fun b!2361211 () Bool)

(declare-fun res!1002138 () Bool)

(declare-fun e!1508153 () Bool)

(assert (=> b!2361211 (=> (not res!1002138) (not e!1508153))))

(declare-fun lt!864448 () Option!5454)

(declare-fun get!8478 (Option!5454) tuple2!27682)

(assert (=> b!2361211 (= res!1002138 (= (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))) (originalCharacters!5213 (_1!16382 (get!8478 lt!864448)))))))

(declare-fun bm!143658 () Bool)

(declare-fun call!143663 () Option!5454)

(declare-fun maxPrefixOneRule!1442 (LexerInterface!4044 Rule!8694 List!28043) Option!5454)

(assert (=> bm!143658 (= call!143663 (maxPrefixOneRule!1442 thiss!13512 (h!33347 rules!1706) input!1160))))

(declare-fun d!693973 () Bool)

(declare-fun e!1508152 () Bool)

(assert (=> d!693973 e!1508152))

(declare-fun res!1002136 () Bool)

(assert (=> d!693973 (=> res!1002136 e!1508152)))

(declare-fun isEmpty!15879 (Option!5454) Bool)

(assert (=> d!693973 (= res!1002136 (isEmpty!15879 lt!864448))))

(declare-fun e!1508154 () Option!5454)

(assert (=> d!693973 (= lt!864448 e!1508154)))

(declare-fun c!375291 () Bool)

(assert (=> d!693973 (= c!375291 (and ((_ is Cons!27946) rules!1706) ((_ is Nil!27946) (t!207983 rules!1706))))))

(declare-datatypes ((Unit!40851 0))(
  ( (Unit!40852) )
))
(declare-fun lt!864444 () Unit!40851)

(declare-fun lt!864445 () Unit!40851)

(assert (=> d!693973 (= lt!864444 lt!864445)))

(declare-fun isPrefix!2409 (List!28043 List!28043) Bool)

(assert (=> d!693973 (isPrefix!2409 input!1160 input!1160)))

(declare-fun lemmaIsPrefixRefl!1535 (List!28043 List!28043) Unit!40851)

(assert (=> d!693973 (= lt!864445 (lemmaIsPrefixRefl!1535 input!1160 input!1160))))

(declare-fun rulesValidInductive!1577 (LexerInterface!4044 List!28044) Bool)

(assert (=> d!693973 (rulesValidInductive!1577 thiss!13512 rules!1706)))

(assert (=> d!693973 (= (maxPrefix!2274 thiss!13512 rules!1706 input!1160) lt!864448)))

(declare-fun b!2361212 () Bool)

(assert (=> b!2361212 (= e!1508152 e!1508153)))

(declare-fun res!1002137 () Bool)

(assert (=> b!2361212 (=> (not res!1002137) (not e!1508153))))

(declare-fun isDefined!4282 (Option!5454) Bool)

(assert (=> b!2361212 (= res!1002137 (isDefined!4282 lt!864448))))

(declare-fun b!2361213 () Bool)

(declare-fun res!1002133 () Bool)

(assert (=> b!2361213 (=> (not res!1002133) (not e!1508153))))

(declare-fun apply!6714 (TokenValueInjection!8766 BalanceConc!17910) TokenValue!4633)

(declare-fun seqFromList!3133 (List!28043) BalanceConc!17910)

(assert (=> b!2361213 (= res!1002133 (= (value!141615 (_1!16382 (get!8478 lt!864448))) (apply!6714 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448)))))))))

(declare-fun b!2361214 () Bool)

(declare-fun contains!4884 (List!28044 Rule!8694) Bool)

(assert (=> b!2361214 (= e!1508153 (contains!4884 rules!1706 (rule!6803 (_1!16382 (get!8478 lt!864448)))))))

(declare-fun b!2361215 () Bool)

(declare-fun res!1002134 () Bool)

(assert (=> b!2361215 (=> (not res!1002134) (not e!1508153))))

(assert (=> b!2361215 (= res!1002134 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))) (_2!16382 (get!8478 lt!864448))) input!1160))))

(declare-fun b!2361216 () Bool)

(declare-fun res!1002135 () Bool)

(assert (=> b!2361216 (=> (not res!1002135) (not e!1508153))))

(assert (=> b!2361216 (= res!1002135 (< (size!22128 (_2!16382 (get!8478 lt!864448))) (size!22128 input!1160)))))

(declare-fun b!2361217 () Bool)

(assert (=> b!2361217 (= e!1508154 call!143663)))

(declare-fun b!2361218 () Bool)

(declare-fun lt!864447 () Option!5454)

(declare-fun lt!864446 () Option!5454)

(assert (=> b!2361218 (= e!1508154 (ite (and ((_ is None!5453) lt!864447) ((_ is None!5453) lt!864446)) None!5453 (ite ((_ is None!5453) lt!864446) lt!864447 (ite ((_ is None!5453) lt!864447) lt!864446 (ite (>= (size!22127 (_1!16382 (v!30859 lt!864447))) (size!22127 (_1!16382 (v!30859 lt!864446)))) lt!864447 lt!864446)))))))

(assert (=> b!2361218 (= lt!864447 call!143663)))

(assert (=> b!2361218 (= lt!864446 (maxPrefix!2274 thiss!13512 (t!207983 rules!1706) input!1160))))

(declare-fun b!2361219 () Bool)

(declare-fun res!1002132 () Bool)

(assert (=> b!2361219 (=> (not res!1002132) (not e!1508153))))

(declare-fun matchR!3026 (Regex!6905 List!28043) Bool)

(assert (=> b!2361219 (= res!1002132 (matchR!3026 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))

(assert (= (and d!693973 c!375291) b!2361217))

(assert (= (and d!693973 (not c!375291)) b!2361218))

(assert (= (or b!2361217 b!2361218) bm!143658))

(assert (= (and d!693973 (not res!1002136)) b!2361212))

(assert (= (and b!2361212 res!1002137) b!2361211))

(assert (= (and b!2361211 res!1002138) b!2361216))

(assert (= (and b!2361216 res!1002135) b!2361215))

(assert (= (and b!2361215 res!1002134) b!2361213))

(assert (= (and b!2361213 res!1002133) b!2361219))

(assert (= (and b!2361219 res!1002132) b!2361214))

(declare-fun m!2773461 () Bool)

(assert (=> b!2361214 m!2773461))

(declare-fun m!2773463 () Bool)

(assert (=> b!2361214 m!2773463))

(declare-fun m!2773465 () Bool)

(assert (=> bm!143658 m!2773465))

(declare-fun m!2773467 () Bool)

(assert (=> b!2361218 m!2773467))

(declare-fun m!2773469 () Bool)

(assert (=> d!693973 m!2773469))

(declare-fun m!2773471 () Bool)

(assert (=> d!693973 m!2773471))

(declare-fun m!2773473 () Bool)

(assert (=> d!693973 m!2773473))

(declare-fun m!2773475 () Bool)

(assert (=> d!693973 m!2773475))

(assert (=> b!2361213 m!2773461))

(declare-fun m!2773477 () Bool)

(assert (=> b!2361213 m!2773477))

(assert (=> b!2361213 m!2773477))

(declare-fun m!2773479 () Bool)

(assert (=> b!2361213 m!2773479))

(declare-fun m!2773481 () Bool)

(assert (=> b!2361212 m!2773481))

(assert (=> b!2361219 m!2773461))

(declare-fun m!2773483 () Bool)

(assert (=> b!2361219 m!2773483))

(assert (=> b!2361219 m!2773483))

(declare-fun m!2773485 () Bool)

(assert (=> b!2361219 m!2773485))

(assert (=> b!2361219 m!2773485))

(declare-fun m!2773487 () Bool)

(assert (=> b!2361219 m!2773487))

(assert (=> b!2361216 m!2773461))

(declare-fun m!2773489 () Bool)

(assert (=> b!2361216 m!2773489))

(assert (=> b!2361216 m!2773449))

(assert (=> b!2361211 m!2773461))

(assert (=> b!2361211 m!2773483))

(assert (=> b!2361211 m!2773483))

(assert (=> b!2361211 m!2773485))

(assert (=> b!2361215 m!2773461))

(assert (=> b!2361215 m!2773483))

(assert (=> b!2361215 m!2773483))

(assert (=> b!2361215 m!2773485))

(assert (=> b!2361215 m!2773485))

(declare-fun m!2773491 () Bool)

(assert (=> b!2361215 m!2773491))

(assert (=> b!2361178 d!693973))

(declare-fun d!693987 () Bool)

(declare-fun res!1002155 () Bool)

(declare-fun e!1508163 () Bool)

(assert (=> d!693987 (=> (not res!1002155) (not e!1508163))))

(declare-fun rulesValid!1653 (LexerInterface!4044 List!28044) Bool)

(assert (=> d!693987 (= res!1002155 (rulesValid!1653 thiss!13512 rules!1706))))

(assert (=> d!693987 (= (rulesInvariant!3544 thiss!13512 rules!1706) e!1508163)))

(declare-fun b!2361240 () Bool)

(declare-datatypes ((List!28047 0))(
  ( (Nil!27949) (Cons!27949 (h!33350 String!30765) (t!207994 List!28047)) )
))
(declare-fun noDuplicateTag!1651 (LexerInterface!4044 List!28044 List!28047) Bool)

(assert (=> b!2361240 (= e!1508163 (noDuplicateTag!1651 thiss!13512 rules!1706 Nil!27949))))

(assert (= (and d!693987 res!1002155) b!2361240))

(declare-fun m!2773493 () Bool)

(assert (=> d!693987 m!2773493))

(declare-fun m!2773495 () Bool)

(assert (=> b!2361240 m!2773495))

(assert (=> b!2361172 d!693987))

(declare-fun d!693989 () Bool)

(declare-fun lt!864461 () Int)

(assert (=> d!693989 (>= lt!864461 0)))

(declare-fun e!1508166 () Int)

(assert (=> d!693989 (= lt!864461 e!1508166)))

(declare-fun c!375296 () Bool)

(assert (=> d!693989 (= c!375296 ((_ is Nil!27947) lt!864428))))

(assert (=> d!693989 (= (size!22129 lt!864428) lt!864461)))

(declare-fun b!2361245 () Bool)

(assert (=> b!2361245 (= e!1508166 0)))

(declare-fun b!2361246 () Bool)

(assert (=> b!2361246 (= e!1508166 (+ 1 (size!22129 (t!207984 lt!864428))))))

(assert (= (and d!693989 c!375296) b!2361245))

(assert (= (and d!693989 (not c!375296)) b!2361246))

(declare-fun m!2773497 () Bool)

(assert (=> b!2361246 m!2773497))

(assert (=> b!2361177 d!693989))

(declare-fun d!693991 () Bool)

(assert (=> d!693991 (= (inv!38167 (tag!4937 (h!33347 rules!1706))) (= (mod (str.len (value!141614 (tag!4937 (h!33347 rules!1706)))) 2) 0))))

(assert (=> b!2361171 d!693991))

(declare-fun d!693993 () Bool)

(declare-fun res!1002165 () Bool)

(declare-fun e!1508172 () Bool)

(assert (=> d!693993 (=> (not res!1002165) (not e!1508172))))

(declare-fun semiInverseModEq!1828 (Int Int) Bool)

(assert (=> d!693993 (= res!1002165 (semiInverseModEq!1828 (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toValue!6295 (transformation!4447 (h!33347 rules!1706)))))))

(assert (=> d!693993 (= (inv!38169 (transformation!4447 (h!33347 rules!1706))) e!1508172)))

(declare-fun b!2361258 () Bool)

(declare-fun equivClasses!1739 (Int Int) Bool)

(assert (=> b!2361258 (= e!1508172 (equivClasses!1739 (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toValue!6295 (transformation!4447 (h!33347 rules!1706)))))))

(assert (= (and d!693993 res!1002165) b!2361258))

(declare-fun m!2773499 () Bool)

(assert (=> d!693993 m!2773499))

(declare-fun m!2773501 () Bool)

(assert (=> b!2361258 m!2773501))

(assert (=> b!2361171 d!693993))

(declare-fun d!693995 () Bool)

(assert (=> d!693995 (= (isEmpty!15876 lt!864428) ((_ is Nil!27947) lt!864428))))

(assert (=> b!2361176 d!693995))

(declare-fun d!693997 () Bool)

(declare-fun lt!864469 () Int)

(assert (=> d!693997 (>= lt!864469 0)))

(declare-fun e!1508175 () Int)

(assert (=> d!693997 (= lt!864469 e!1508175)))

(declare-fun c!375300 () Bool)

(assert (=> d!693997 (= c!375300 ((_ is Nil!27945) (_2!16381 lt!864430)))))

(assert (=> d!693997 (= (size!22128 (_2!16381 lt!864430)) lt!864469)))

(declare-fun b!2361263 () Bool)

(assert (=> b!2361263 (= e!1508175 0)))

(declare-fun b!2361264 () Bool)

(assert (=> b!2361264 (= e!1508175 (+ 1 (size!22128 (t!207982 (_2!16381 lt!864430)))))))

(assert (= (and d!693997 c!375300) b!2361263))

(assert (= (and d!693997 (not c!375300)) b!2361264))

(declare-fun m!2773535 () Bool)

(assert (=> b!2361264 m!2773535))

(assert (=> b!2361175 d!693997))

(declare-fun d!694001 () Bool)

(declare-fun lt!864470 () Int)

(assert (=> d!694001 (>= lt!864470 0)))

(declare-fun e!1508176 () Int)

(assert (=> d!694001 (= lt!864470 e!1508176)))

(declare-fun c!375301 () Bool)

(assert (=> d!694001 (= c!375301 ((_ is Nil!27945) input!1160))))

(assert (=> d!694001 (= (size!22128 input!1160) lt!864470)))

(declare-fun b!2361265 () Bool)

(assert (=> b!2361265 (= e!1508176 0)))

(declare-fun b!2361266 () Bool)

(assert (=> b!2361266 (= e!1508176 (+ 1 (size!22128 (t!207982 input!1160))))))

(assert (= (and d!694001 c!375301) b!2361265))

(assert (= (and d!694001 (not c!375301)) b!2361266))

(declare-fun m!2773537 () Bool)

(assert (=> b!2361266 m!2773537))

(assert (=> b!2361175 d!694001))

(declare-fun d!694005 () Bool)

(declare-fun e!1508185 () Bool)

(assert (=> d!694005 e!1508185))

(declare-fun res!1002171 () Bool)

(assert (=> d!694005 (=> (not res!1002171) (not e!1508185))))

(declare-fun lt!864479 () List!28043)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3797 (List!28043) (InoxSet C!13968))

(assert (=> d!694005 (= res!1002171 (= (content!3797 lt!864479) ((_ map or) (content!3797 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) (content!3797 (_2!16382 (v!30859 lt!864429))))))))

(declare-fun e!1508186 () List!28043)

(assert (=> d!694005 (= lt!864479 e!1508186)))

(declare-fun c!375308 () Bool)

(assert (=> d!694005 (= c!375308 ((_ is Nil!27945) (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(assert (=> d!694005 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))) (_2!16382 (v!30859 lt!864429))) lt!864479)))

(declare-fun b!2361285 () Bool)

(assert (=> b!2361285 (= e!1508186 (_2!16382 (v!30859 lt!864429)))))

(declare-fun b!2361288 () Bool)

(assert (=> b!2361288 (= e!1508185 (or (not (= (_2!16382 (v!30859 lt!864429)) Nil!27945)) (= lt!864479 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))))))

(declare-fun b!2361287 () Bool)

(declare-fun res!1002170 () Bool)

(assert (=> b!2361287 (=> (not res!1002170) (not e!1508185))))

(assert (=> b!2361287 (= res!1002170 (= (size!22128 lt!864479) (+ (size!22128 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) (size!22128 (_2!16382 (v!30859 lt!864429))))))))

(declare-fun b!2361286 () Bool)

(assert (=> b!2361286 (= e!1508186 (Cons!27945 (h!33346 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) (++!6880 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) (_2!16382 (v!30859 lt!864429)))))))

(assert (= (and d!694005 c!375308) b!2361285))

(assert (= (and d!694005 (not c!375308)) b!2361286))

(assert (= (and d!694005 res!1002171) b!2361287))

(assert (= (and b!2361287 res!1002170) b!2361288))

(declare-fun m!2773543 () Bool)

(assert (=> d!694005 m!2773543))

(assert (=> d!694005 m!2773429))

(declare-fun m!2773545 () Bool)

(assert (=> d!694005 m!2773545))

(declare-fun m!2773547 () Bool)

(assert (=> d!694005 m!2773547))

(declare-fun m!2773549 () Bool)

(assert (=> b!2361287 m!2773549))

(assert (=> b!2361287 m!2773429))

(declare-fun m!2773551 () Bool)

(assert (=> b!2361287 m!2773551))

(declare-fun m!2773553 () Bool)

(assert (=> b!2361287 m!2773553))

(declare-fun m!2773555 () Bool)

(assert (=> b!2361286 m!2773555))

(assert (=> b!2361180 d!694005))

(declare-fun d!694011 () Bool)

(declare-fun list!11089 (Conc!9149) List!28043)

(assert (=> d!694011 (= (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))) (list!11089 (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(declare-fun bs!460544 () Bool)

(assert (= bs!460544 d!694011))

(declare-fun m!2773571 () Bool)

(assert (=> bs!460544 m!2773571))

(assert (=> b!2361180 d!694011))

(declare-fun d!694015 () Bool)

(declare-fun lt!864486 () BalanceConc!17910)

(assert (=> d!694015 (= (list!11087 lt!864486) (originalCharacters!5213 (_1!16382 (v!30859 lt!864429))))))

(declare-fun dynLambda!12041 (Int TokenValue!4633) BalanceConc!17910)

(assert (=> d!694015 (= lt!864486 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))))

(assert (=> d!694015 (= (charsOf!2807 (_1!16382 (v!30859 lt!864429))) lt!864486)))

(declare-fun b_lambda!73789 () Bool)

(assert (=> (not b_lambda!73789) (not d!694015)))

(declare-fun t!207988 () Bool)

(declare-fun tb!138803 () Bool)

(assert (=> (and b!2361170 (= (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429)))))) t!207988) tb!138803))

(declare-fun b!2361308 () Bool)

(declare-fun e!1508198 () Bool)

(declare-fun tp!755115 () Bool)

(declare-fun inv!38172 (Conc!9149) Bool)

(assert (=> b!2361308 (= e!1508198 (and (inv!38172 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))) tp!755115))))

(declare-fun result!169756 () Bool)

(declare-fun inv!38173 (BalanceConc!17910) Bool)

(assert (=> tb!138803 (= result!169756 (and (inv!38173 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))) e!1508198))))

(assert (= tb!138803 b!2361308))

(declare-fun m!2773583 () Bool)

(assert (=> b!2361308 m!2773583))

(declare-fun m!2773585 () Bool)

(assert (=> tb!138803 m!2773585))

(assert (=> d!694015 t!207988))

(declare-fun b_and!185507 () Bool)

(assert (= b_and!185503 (and (=> t!207988 result!169756) b_and!185507)))

(declare-fun m!2773587 () Bool)

(assert (=> d!694015 m!2773587))

(declare-fun m!2773589 () Bool)

(assert (=> d!694015 m!2773589))

(assert (=> b!2361180 d!694015))

(declare-fun b!2361364 () Bool)

(declare-fun e!1508234 () tuple2!27680)

(declare-fun lt!864502 () Option!5454)

(declare-fun lt!864504 () tuple2!27680)

(assert (=> b!2361364 (= e!1508234 (tuple2!27681 (Cons!27947 (_1!16382 (v!30859 lt!864502)) (_1!16381 lt!864504)) (_2!16381 lt!864504)))))

(assert (=> b!2361364 (= lt!864504 (lexRegexList!4 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864502))))))

(declare-fun b!2361365 () Bool)

(assert (=> b!2361365 (= e!1508234 (tuple2!27681 Nil!27947 (_2!16382 (v!30859 lt!864429))))))

(declare-fun b!2361366 () Bool)

(declare-fun e!1508233 () Bool)

(declare-fun e!1508232 () Bool)

(assert (=> b!2361366 (= e!1508233 e!1508232)))

(declare-fun res!1002183 () Bool)

(declare-fun lt!864503 () tuple2!27680)

(assert (=> b!2361366 (= res!1002183 (< (size!22128 (_2!16381 lt!864503)) (size!22128 (_2!16382 (v!30859 lt!864429)))))))

(assert (=> b!2361366 (=> (not res!1002183) (not e!1508232))))

(declare-fun b!2361367 () Bool)

(assert (=> b!2361367 (= e!1508232 (not (isEmpty!15876 (_1!16381 lt!864503))))))

(declare-fun b!2361368 () Bool)

(assert (=> b!2361368 (= e!1508233 (= (_2!16381 lt!864503) (_2!16382 (v!30859 lt!864429))))))

(declare-fun d!694021 () Bool)

(assert (=> d!694021 e!1508233))

(declare-fun c!375323 () Bool)

(assert (=> d!694021 (= c!375323 (> (size!22129 (_1!16381 lt!864503)) 0))))

(assert (=> d!694021 (= lt!864503 e!1508234)))

(declare-fun c!375322 () Bool)

(assert (=> d!694021 (= c!375322 ((_ is Some!5453) lt!864502))))

(assert (=> d!694021 (= lt!864502 (maxPrefix!2274 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864429))))))

(assert (=> d!694021 (= (lexRegexList!4 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864429))) lt!864503)))

(assert (= (and d!694021 c!375322) b!2361364))

(assert (= (and d!694021 (not c!375322)) b!2361365))

(assert (= (and d!694021 c!375323) b!2361366))

(assert (= (and d!694021 (not c!375323)) b!2361368))

(assert (= (and b!2361366 res!1002183) b!2361367))

(declare-fun m!2773605 () Bool)

(assert (=> b!2361364 m!2773605))

(declare-fun m!2773607 () Bool)

(assert (=> b!2361366 m!2773607))

(assert (=> b!2361366 m!2773553))

(declare-fun m!2773609 () Bool)

(assert (=> b!2361367 m!2773609))

(declare-fun m!2773611 () Bool)

(assert (=> d!694021 m!2773611))

(declare-fun m!2773613 () Bool)

(assert (=> d!694021 m!2773613))

(assert (=> b!2361180 d!694021))

(declare-fun b!2361373 () Bool)

(declare-fun e!1508237 () Bool)

(declare-fun tp!755148 () Bool)

(assert (=> b!2361373 (= e!1508237 (and tp_is_empty!11227 tp!755148))))

(assert (=> b!2361174 (= tp!755105 e!1508237)))

(assert (= (and b!2361174 ((_ is Cons!27945) (t!207982 input!1160))) b!2361373))

(declare-fun b!2361384 () Bool)

(declare-fun e!1508240 () Bool)

(assert (=> b!2361384 (= e!1508240 tp_is_empty!11227)))

(assert (=> b!2361171 (= tp!755109 e!1508240)))

(declare-fun b!2361387 () Bool)

(declare-fun tp!755160 () Bool)

(declare-fun tp!755159 () Bool)

(assert (=> b!2361387 (= e!1508240 (and tp!755160 tp!755159))))

(declare-fun b!2361385 () Bool)

(declare-fun tp!755162 () Bool)

(declare-fun tp!755163 () Bool)

(assert (=> b!2361385 (= e!1508240 (and tp!755162 tp!755163))))

(declare-fun b!2361386 () Bool)

(declare-fun tp!755161 () Bool)

(assert (=> b!2361386 (= e!1508240 tp!755161)))

(assert (= (and b!2361171 ((_ is ElementMatch!6905) (regex!4447 (h!33347 rules!1706)))) b!2361384))

(assert (= (and b!2361171 ((_ is Concat!11539) (regex!4447 (h!33347 rules!1706)))) b!2361385))

(assert (= (and b!2361171 ((_ is Star!6905) (regex!4447 (h!33347 rules!1706)))) b!2361386))

(assert (= (and b!2361171 ((_ is Union!6905) (regex!4447 (h!33347 rules!1706)))) b!2361387))

(declare-fun b!2361398 () Bool)

(declare-fun b_free!70537 () Bool)

(declare-fun b_next!71241 () Bool)

(assert (=> b!2361398 (= b_free!70537 (not b_next!71241))))

(declare-fun tp!755172 () Bool)

(declare-fun b_and!185513 () Bool)

(assert (=> b!2361398 (= tp!755172 b_and!185513)))

(declare-fun b_free!70539 () Bool)

(declare-fun b_next!71243 () Bool)

(assert (=> b!2361398 (= b_free!70539 (not b_next!71243))))

(declare-fun tb!138807 () Bool)

(declare-fun t!207993 () Bool)

(assert (=> (and b!2361398 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429)))))) t!207993) tb!138807))

(declare-fun result!169774 () Bool)

(assert (= result!169774 result!169756))

(assert (=> d!694015 t!207993))

(declare-fun tp!755173 () Bool)

(declare-fun b_and!185515 () Bool)

(assert (=> b!2361398 (= tp!755173 (and (=> t!207993 result!169774) b_and!185515))))

(declare-fun e!1508250 () Bool)

(assert (=> b!2361398 (= e!1508250 (and tp!755172 tp!755173))))

(declare-fun e!1508251 () Bool)

(declare-fun tp!755174 () Bool)

(declare-fun b!2361397 () Bool)

(assert (=> b!2361397 (= e!1508251 (and tp!755174 (inv!38167 (tag!4937 (h!33347 (t!207983 rules!1706)))) (inv!38169 (transformation!4447 (h!33347 (t!207983 rules!1706)))) e!1508250))))

(declare-fun b!2361396 () Bool)

(declare-fun e!1508252 () Bool)

(declare-fun tp!755175 () Bool)

(assert (=> b!2361396 (= e!1508252 (and e!1508251 tp!755175))))

(assert (=> b!2361169 (= tp!755108 e!1508252)))

(assert (= b!2361397 b!2361398))

(assert (= b!2361396 b!2361397))

(assert (= (and b!2361169 ((_ is Cons!27946) (t!207983 rules!1706))) b!2361396))

(declare-fun m!2773615 () Bool)

(assert (=> b!2361397 m!2773615))

(declare-fun m!2773617 () Bool)

(assert (=> b!2361397 m!2773617))

(check-sat (not b!2361396) (not b_lambda!73789) (not b!2361367) (not d!694005) (not tb!138803) (not b!2361212) (not b!2361211) (not b!2361397) (not b!2361386) (not b!2361366) (not b!2361387) b_and!185513 (not b!2361286) (not b!2361216) (not b!2361308) (not b!2361258) (not b!2361219) (not d!694011) (not b!2361287) (not b!2361385) (not b_next!71243) (not b_next!71235) (not d!693973) (not b_next!71233) (not b!2361373) tp_is_empty!11227 (not b!2361266) (not b!2361246) (not b!2361218) (not d!694015) b_and!185501 (not b!2361215) (not d!694021) (not b_next!71241) (not b!2361364) (not d!693993) (not b!2361213) (not bm!143658) (not b!2361214) (not d!693987) b_and!185515 (not b!2361264) (not b!2361240) b_and!185507)
(check-sat (not b_next!71243) b_and!185501 (not b_next!71241) b_and!185515 b_and!185513 b_and!185507 (not b_next!71235) (not b_next!71233))
(get-model)

(declare-fun d!694023 () Bool)

(assert (=> d!694023 (= (list!11087 lt!864486) (list!11089 (c!375285 lt!864486)))))

(declare-fun bs!460546 () Bool)

(assert (= bs!460546 d!694023))

(declare-fun m!2773619 () Bool)

(assert (=> bs!460546 m!2773619))

(assert (=> d!694015 d!694023))

(declare-fun d!694025 () Bool)

(assert (=> d!694025 (= (isDefined!4282 lt!864448) (not (isEmpty!15879 lt!864448)))))

(declare-fun bs!460547 () Bool)

(assert (= bs!460547 d!694025))

(assert (=> bs!460547 m!2773469))

(assert (=> b!2361212 d!694025))

(declare-fun d!694027 () Bool)

(assert (=> d!694027 (= (isEmpty!15879 lt!864448) (not ((_ is Some!5453) lt!864448)))))

(assert (=> d!693973 d!694027))

(declare-fun b!2361409 () Bool)

(declare-fun e!1508261 () Bool)

(declare-fun tail!3348 (List!28043) List!28043)

(assert (=> b!2361409 (= e!1508261 (isPrefix!2409 (tail!3348 input!1160) (tail!3348 input!1160)))))

(declare-fun b!2361410 () Bool)

(declare-fun e!1508260 () Bool)

(assert (=> b!2361410 (= e!1508260 (>= (size!22128 input!1160) (size!22128 input!1160)))))

(declare-fun b!2361408 () Bool)

(declare-fun res!1002198 () Bool)

(assert (=> b!2361408 (=> (not res!1002198) (not e!1508261))))

(declare-fun head!5079 (List!28043) C!13968)

(assert (=> b!2361408 (= res!1002198 (= (head!5079 input!1160) (head!5079 input!1160)))))

(declare-fun d!694029 () Bool)

(assert (=> d!694029 e!1508260))

(declare-fun res!1002197 () Bool)

(assert (=> d!694029 (=> res!1002197 e!1508260)))

(declare-fun lt!864507 () Bool)

(assert (=> d!694029 (= res!1002197 (not lt!864507))))

(declare-fun e!1508259 () Bool)

(assert (=> d!694029 (= lt!864507 e!1508259)))

(declare-fun res!1002196 () Bool)

(assert (=> d!694029 (=> res!1002196 e!1508259)))

(assert (=> d!694029 (= res!1002196 ((_ is Nil!27945) input!1160))))

(assert (=> d!694029 (= (isPrefix!2409 input!1160 input!1160) lt!864507)))

(declare-fun b!2361407 () Bool)

(assert (=> b!2361407 (= e!1508259 e!1508261)))

(declare-fun res!1002195 () Bool)

(assert (=> b!2361407 (=> (not res!1002195) (not e!1508261))))

(assert (=> b!2361407 (= res!1002195 (not ((_ is Nil!27945) input!1160)))))

(assert (= (and d!694029 (not res!1002196)) b!2361407))

(assert (= (and b!2361407 res!1002195) b!2361408))

(assert (= (and b!2361408 res!1002198) b!2361409))

(assert (= (and d!694029 (not res!1002197)) b!2361410))

(declare-fun m!2773621 () Bool)

(assert (=> b!2361409 m!2773621))

(assert (=> b!2361409 m!2773621))

(assert (=> b!2361409 m!2773621))

(assert (=> b!2361409 m!2773621))

(declare-fun m!2773623 () Bool)

(assert (=> b!2361409 m!2773623))

(assert (=> b!2361410 m!2773449))

(assert (=> b!2361410 m!2773449))

(declare-fun m!2773625 () Bool)

(assert (=> b!2361408 m!2773625))

(assert (=> b!2361408 m!2773625))

(assert (=> d!693973 d!694029))

(declare-fun d!694031 () Bool)

(assert (=> d!694031 (isPrefix!2409 input!1160 input!1160)))

(declare-fun lt!864510 () Unit!40851)

(declare-fun choose!13693 (List!28043 List!28043) Unit!40851)

(assert (=> d!694031 (= lt!864510 (choose!13693 input!1160 input!1160))))

(assert (=> d!694031 (= (lemmaIsPrefixRefl!1535 input!1160 input!1160) lt!864510)))

(declare-fun bs!460548 () Bool)

(assert (= bs!460548 d!694031))

(assert (=> bs!460548 m!2773471))

(declare-fun m!2773627 () Bool)

(assert (=> bs!460548 m!2773627))

(assert (=> d!693973 d!694031))

(declare-fun d!694033 () Bool)

(assert (=> d!694033 true))

(declare-fun lt!864516 () Bool)

(declare-fun lambda!86854 () Int)

(declare-fun forall!5540 (List!28044 Int) Bool)

(assert (=> d!694033 (= lt!864516 (forall!5540 rules!1706 lambda!86854))))

(declare-fun e!1508279 () Bool)

(assert (=> d!694033 (= lt!864516 e!1508279)))

(declare-fun res!1002208 () Bool)

(assert (=> d!694033 (=> res!1002208 e!1508279)))

(assert (=> d!694033 (= res!1002208 (not ((_ is Cons!27946) rules!1706)))))

(assert (=> d!694033 (= (rulesValidInductive!1577 thiss!13512 rules!1706) lt!864516)))

(declare-fun b!2361436 () Bool)

(declare-fun e!1508278 () Bool)

(assert (=> b!2361436 (= e!1508279 e!1508278)))

(declare-fun res!1002209 () Bool)

(assert (=> b!2361436 (=> (not res!1002209) (not e!1508278))))

(declare-fun ruleValid!1510 (LexerInterface!4044 Rule!8694) Bool)

(assert (=> b!2361436 (= res!1002209 (ruleValid!1510 thiss!13512 (h!33347 rules!1706)))))

(declare-fun b!2361437 () Bool)

(assert (=> b!2361437 (= e!1508278 (rulesValidInductive!1577 thiss!13512 (t!207983 rules!1706)))))

(assert (= (and d!694033 (not res!1002208)) b!2361436))

(assert (= (and b!2361436 res!1002209) b!2361437))

(declare-fun m!2773647 () Bool)

(assert (=> d!694033 m!2773647))

(declare-fun m!2773649 () Bool)

(assert (=> b!2361436 m!2773649))

(declare-fun m!2773651 () Bool)

(assert (=> b!2361437 m!2773651))

(assert (=> d!693973 d!694033))

(declare-fun b!2361495 () Bool)

(declare-fun e!1508310 () Option!5454)

(declare-datatypes ((tuple2!27684 0))(
  ( (tuple2!27685 (_1!16383 List!28043) (_2!16383 List!28043)) )
))
(declare-fun lt!864532 () tuple2!27684)

(declare-fun size!22130 (BalanceConc!17910) Int)

(assert (=> b!2361495 (= e!1508310 (Some!5453 (tuple2!27683 (Token!8365 (apply!6714 (transformation!4447 (h!33347 rules!1706)) (seqFromList!3133 (_1!16383 lt!864532))) (h!33347 rules!1706) (size!22130 (seqFromList!3133 (_1!16383 lt!864532))) (_1!16383 lt!864532)) (_2!16383 lt!864532))))))

(declare-fun lt!864535 () Unit!40851)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!719 (Regex!6905 List!28043) Unit!40851)

(assert (=> b!2361495 (= lt!864535 (longestMatchIsAcceptedByMatchOrIsEmpty!719 (regex!4447 (h!33347 rules!1706)) input!1160))))

(declare-fun res!1002248 () Bool)

(declare-fun isEmpty!15880 (List!28043) Bool)

(declare-fun findLongestMatchInner!746 (Regex!6905 List!28043 Int List!28043 List!28043 Int) tuple2!27684)

(assert (=> b!2361495 (= res!1002248 (isEmpty!15880 (_1!16383 (findLongestMatchInner!746 (regex!4447 (h!33347 rules!1706)) Nil!27945 (size!22128 Nil!27945) input!1160 input!1160 (size!22128 input!1160)))))))

(declare-fun e!1508308 () Bool)

(assert (=> b!2361495 (=> res!1002248 e!1508308)))

(assert (=> b!2361495 e!1508308))

(declare-fun lt!864534 () Unit!40851)

(assert (=> b!2361495 (= lt!864534 lt!864535)))

(declare-fun lt!864536 () Unit!40851)

(declare-fun lemmaSemiInverse!1097 (TokenValueInjection!8766 BalanceConc!17910) Unit!40851)

(assert (=> b!2361495 (= lt!864536 (lemmaSemiInverse!1097 (transformation!4447 (h!33347 rules!1706)) (seqFromList!3133 (_1!16383 lt!864532))))))

(declare-fun b!2361496 () Bool)

(assert (=> b!2361496 (= e!1508308 (matchR!3026 (regex!4447 (h!33347 rules!1706)) (_1!16383 (findLongestMatchInner!746 (regex!4447 (h!33347 rules!1706)) Nil!27945 (size!22128 Nil!27945) input!1160 input!1160 (size!22128 input!1160)))))))

(declare-fun b!2361497 () Bool)

(declare-fun res!1002245 () Bool)

(declare-fun e!1508309 () Bool)

(assert (=> b!2361497 (=> (not res!1002245) (not e!1508309))))

(declare-fun lt!864533 () Option!5454)

(assert (=> b!2361497 (= res!1002245 (= (value!141615 (_1!16382 (get!8478 lt!864533))) (apply!6714 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864533)))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864533)))))))))

(declare-fun b!2361498 () Bool)

(assert (=> b!2361498 (= e!1508310 None!5453)))

(declare-fun b!2361499 () Bool)

(assert (=> b!2361499 (= e!1508309 (= (size!22127 (_1!16382 (get!8478 lt!864533))) (size!22128 (originalCharacters!5213 (_1!16382 (get!8478 lt!864533))))))))

(declare-fun d!694049 () Bool)

(declare-fun e!1508311 () Bool)

(assert (=> d!694049 e!1508311))

(declare-fun res!1002247 () Bool)

(assert (=> d!694049 (=> res!1002247 e!1508311)))

(assert (=> d!694049 (= res!1002247 (isEmpty!15879 lt!864533))))

(assert (=> d!694049 (= lt!864533 e!1508310)))

(declare-fun c!375342 () Bool)

(assert (=> d!694049 (= c!375342 (isEmpty!15880 (_1!16383 lt!864532)))))

(declare-fun findLongestMatch!675 (Regex!6905 List!28043) tuple2!27684)

(assert (=> d!694049 (= lt!864532 (findLongestMatch!675 (regex!4447 (h!33347 rules!1706)) input!1160))))

(assert (=> d!694049 (ruleValid!1510 thiss!13512 (h!33347 rules!1706))))

(assert (=> d!694049 (= (maxPrefixOneRule!1442 thiss!13512 (h!33347 rules!1706) input!1160) lt!864533)))

(declare-fun b!2361500 () Bool)

(declare-fun res!1002244 () Bool)

(assert (=> b!2361500 (=> (not res!1002244) (not e!1508309))))

(assert (=> b!2361500 (= res!1002244 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864533)))) (_2!16382 (get!8478 lt!864533))) input!1160))))

(declare-fun b!2361501 () Bool)

(assert (=> b!2361501 (= e!1508311 e!1508309)))

(declare-fun res!1002246 () Bool)

(assert (=> b!2361501 (=> (not res!1002246) (not e!1508309))))

(assert (=> b!2361501 (= res!1002246 (matchR!3026 (regex!4447 (h!33347 rules!1706)) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864533))))))))

(declare-fun b!2361502 () Bool)

(declare-fun res!1002243 () Bool)

(assert (=> b!2361502 (=> (not res!1002243) (not e!1508309))))

(assert (=> b!2361502 (= res!1002243 (= (rule!6803 (_1!16382 (get!8478 lt!864533))) (h!33347 rules!1706)))))

(declare-fun b!2361503 () Bool)

(declare-fun res!1002242 () Bool)

(assert (=> b!2361503 (=> (not res!1002242) (not e!1508309))))

(assert (=> b!2361503 (= res!1002242 (< (size!22128 (_2!16382 (get!8478 lt!864533))) (size!22128 input!1160)))))

(assert (= (and d!694049 c!375342) b!2361498))

(assert (= (and d!694049 (not c!375342)) b!2361495))

(assert (= (and b!2361495 (not res!1002248)) b!2361496))

(assert (= (and d!694049 (not res!1002247)) b!2361501))

(assert (= (and b!2361501 res!1002246) b!2361500))

(assert (= (and b!2361500 res!1002244) b!2361503))

(assert (= (and b!2361503 res!1002242) b!2361502))

(assert (= (and b!2361502 res!1002243) b!2361497))

(assert (= (and b!2361497 res!1002245) b!2361499))

(declare-fun m!2773683 () Bool)

(assert (=> d!694049 m!2773683))

(declare-fun m!2773685 () Bool)

(assert (=> d!694049 m!2773685))

(declare-fun m!2773687 () Bool)

(assert (=> d!694049 m!2773687))

(assert (=> d!694049 m!2773649))

(declare-fun m!2773689 () Bool)

(assert (=> b!2361503 m!2773689))

(declare-fun m!2773691 () Bool)

(assert (=> b!2361503 m!2773691))

(assert (=> b!2361503 m!2773449))

(assert (=> b!2361501 m!2773689))

(declare-fun m!2773693 () Bool)

(assert (=> b!2361501 m!2773693))

(assert (=> b!2361501 m!2773693))

(declare-fun m!2773695 () Bool)

(assert (=> b!2361501 m!2773695))

(assert (=> b!2361501 m!2773695))

(declare-fun m!2773697 () Bool)

(assert (=> b!2361501 m!2773697))

(assert (=> b!2361500 m!2773689))

(assert (=> b!2361500 m!2773693))

(assert (=> b!2361500 m!2773693))

(assert (=> b!2361500 m!2773695))

(assert (=> b!2361500 m!2773695))

(declare-fun m!2773699 () Bool)

(assert (=> b!2361500 m!2773699))

(assert (=> b!2361495 m!2773449))

(declare-fun m!2773701 () Bool)

(assert (=> b!2361495 m!2773701))

(declare-fun m!2773703 () Bool)

(assert (=> b!2361495 m!2773703))

(assert (=> b!2361495 m!2773701))

(declare-fun m!2773705 () Bool)

(assert (=> b!2361495 m!2773705))

(declare-fun m!2773707 () Bool)

(assert (=> b!2361495 m!2773707))

(assert (=> b!2361495 m!2773449))

(declare-fun m!2773709 () Bool)

(assert (=> b!2361495 m!2773709))

(assert (=> b!2361495 m!2773701))

(declare-fun m!2773711 () Bool)

(assert (=> b!2361495 m!2773711))

(assert (=> b!2361495 m!2773701))

(declare-fun m!2773713 () Bool)

(assert (=> b!2361495 m!2773713))

(declare-fun m!2773715 () Bool)

(assert (=> b!2361495 m!2773715))

(assert (=> b!2361495 m!2773707))

(assert (=> b!2361502 m!2773689))

(assert (=> b!2361499 m!2773689))

(declare-fun m!2773717 () Bool)

(assert (=> b!2361499 m!2773717))

(assert (=> b!2361497 m!2773689))

(declare-fun m!2773719 () Bool)

(assert (=> b!2361497 m!2773719))

(assert (=> b!2361497 m!2773719))

(declare-fun m!2773725 () Bool)

(assert (=> b!2361497 m!2773725))

(assert (=> b!2361496 m!2773707))

(assert (=> b!2361496 m!2773449))

(assert (=> b!2361496 m!2773707))

(assert (=> b!2361496 m!2773449))

(assert (=> b!2361496 m!2773709))

(declare-fun m!2773733 () Bool)

(assert (=> b!2361496 m!2773733))

(assert (=> bm!143658 d!694049))

(declare-fun bs!460553 () Bool)

(declare-fun d!694063 () Bool)

(assert (= bs!460553 (and d!694063 d!694033)))

(declare-fun lambda!86860 () Int)

(assert (=> bs!460553 (= lambda!86860 lambda!86854)))

(assert (=> d!694063 true))

(declare-fun lt!864540 () Bool)

(assert (=> d!694063 (= lt!864540 (rulesValidInductive!1577 thiss!13512 rules!1706))))

(assert (=> d!694063 (= lt!864540 (forall!5540 rules!1706 lambda!86860))))

(assert (=> d!694063 (= (rulesValid!1653 thiss!13512 rules!1706) lt!864540)))

(declare-fun bs!460554 () Bool)

(assert (= bs!460554 d!694063))

(assert (=> bs!460554 m!2773475))

(declare-fun m!2773741 () Bool)

(assert (=> bs!460554 m!2773741))

(assert (=> d!693987 d!694063))

(declare-fun d!694069 () Bool)

(assert (=> d!694069 (= (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))) (list!11089 (c!375285 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun bs!460555 () Bool)

(assert (= bs!460555 d!694069))

(declare-fun m!2773743 () Bool)

(assert (=> bs!460555 m!2773743))

(assert (=> b!2361211 d!694069))

(declare-fun d!694071 () Bool)

(declare-fun lt!864541 () BalanceConc!17910)

(assert (=> d!694071 (= (list!11087 lt!864541) (originalCharacters!5213 (_1!16382 (get!8478 lt!864448))))))

(assert (=> d!694071 (= lt!864541 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))) (value!141615 (_1!16382 (get!8478 lt!864448)))))))

(assert (=> d!694071 (= (charsOf!2807 (_1!16382 (get!8478 lt!864448))) lt!864541)))

(declare-fun b_lambda!73795 () Bool)

(assert (=> (not b_lambda!73795) (not d!694071)))

(declare-fun tb!138817 () Bool)

(declare-fun t!208004 () Bool)

(assert (=> (and b!2361170 (= (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208004) tb!138817))

(declare-fun b!2361518 () Bool)

(declare-fun e!1508319 () Bool)

(declare-fun tp!755177 () Bool)

(assert (=> b!2361518 (= e!1508319 (and (inv!38172 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))) (value!141615 (_1!16382 (get!8478 lt!864448)))))) tp!755177))))

(declare-fun result!169786 () Bool)

(assert (=> tb!138817 (= result!169786 (and (inv!38173 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))) (value!141615 (_1!16382 (get!8478 lt!864448))))) e!1508319))))

(assert (= tb!138817 b!2361518))

(declare-fun m!2773745 () Bool)

(assert (=> b!2361518 m!2773745))

(declare-fun m!2773747 () Bool)

(assert (=> tb!138817 m!2773747))

(assert (=> d!694071 t!208004))

(declare-fun b_and!185525 () Bool)

(assert (= b_and!185507 (and (=> t!208004 result!169786) b_and!185525)))

(declare-fun tb!138819 () Bool)

(declare-fun t!208006 () Bool)

(assert (=> (and b!2361398 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208006) tb!138819))

(declare-fun result!169788 () Bool)

(assert (= result!169788 result!169786))

(assert (=> d!694071 t!208006))

(declare-fun b_and!185527 () Bool)

(assert (= b_and!185515 (and (=> t!208006 result!169788) b_and!185527)))

(declare-fun m!2773749 () Bool)

(assert (=> d!694071 m!2773749))

(declare-fun m!2773751 () Bool)

(assert (=> d!694071 m!2773751))

(assert (=> b!2361211 d!694071))

(declare-fun d!694073 () Bool)

(assert (=> d!694073 (= (get!8478 lt!864448) (v!30859 lt!864448))))

(assert (=> b!2361211 d!694073))

(declare-fun d!694075 () Bool)

(assert (=> d!694075 (= (inv!38167 (tag!4937 (h!33347 (t!207983 rules!1706)))) (= (mod (str.len (value!141614 (tag!4937 (h!33347 (t!207983 rules!1706))))) 2) 0))))

(assert (=> b!2361397 d!694075))

(declare-fun d!694079 () Bool)

(declare-fun res!1002262 () Bool)

(declare-fun e!1508323 () Bool)

(assert (=> d!694079 (=> (not res!1002262) (not e!1508323))))

(assert (=> d!694079 (= res!1002262 (semiInverseModEq!1828 (toChars!6154 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toValue!6295 (transformation!4447 (h!33347 (t!207983 rules!1706))))))))

(assert (=> d!694079 (= (inv!38169 (transformation!4447 (h!33347 (t!207983 rules!1706)))) e!1508323)))

(declare-fun b!2361523 () Bool)

(assert (=> b!2361523 (= e!1508323 (equivClasses!1739 (toChars!6154 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toValue!6295 (transformation!4447 (h!33347 (t!207983 rules!1706))))))))

(assert (= (and d!694079 res!1002262) b!2361523))

(declare-fun m!2773755 () Bool)

(assert (=> d!694079 m!2773755))

(declare-fun m!2773757 () Bool)

(assert (=> b!2361523 m!2773757))

(assert (=> b!2361397 d!694079))

(declare-fun d!694081 () Bool)

(declare-fun lt!864549 () Bool)

(declare-fun content!3798 (List!28044) (InoxSet Rule!8694))

(assert (=> d!694081 (= lt!864549 (select (content!3798 rules!1706) (rule!6803 (_1!16382 (get!8478 lt!864448)))))))

(declare-fun e!1508329 () Bool)

(assert (=> d!694081 (= lt!864549 e!1508329)))

(declare-fun res!1002270 () Bool)

(assert (=> d!694081 (=> (not res!1002270) (not e!1508329))))

(assert (=> d!694081 (= res!1002270 ((_ is Cons!27946) rules!1706))))

(assert (=> d!694081 (= (contains!4884 rules!1706 (rule!6803 (_1!16382 (get!8478 lt!864448)))) lt!864549)))

(declare-fun b!2361537 () Bool)

(declare-fun e!1508328 () Bool)

(assert (=> b!2361537 (= e!1508329 e!1508328)))

(declare-fun res!1002269 () Bool)

(assert (=> b!2361537 (=> res!1002269 e!1508328)))

(assert (=> b!2361537 (= res!1002269 (= (h!33347 rules!1706) (rule!6803 (_1!16382 (get!8478 lt!864448)))))))

(declare-fun b!2361538 () Bool)

(assert (=> b!2361538 (= e!1508328 (contains!4884 (t!207983 rules!1706) (rule!6803 (_1!16382 (get!8478 lt!864448)))))))

(assert (= (and d!694081 res!1002270) b!2361537))

(assert (= (and b!2361537 (not res!1002269)) b!2361538))

(declare-fun m!2773787 () Bool)

(assert (=> d!694081 m!2773787))

(declare-fun m!2773789 () Bool)

(assert (=> d!694081 m!2773789))

(declare-fun m!2773791 () Bool)

(assert (=> b!2361538 m!2773791))

(assert (=> b!2361214 d!694081))

(assert (=> b!2361214 d!694073))

(assert (=> b!2361213 d!694073))

(declare-fun d!694085 () Bool)

(declare-fun dynLambda!12042 (Int BalanceConc!17910) TokenValue!4633)

(assert (=> d!694085 (= (apply!6714 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448))))) (dynLambda!12042 (toValue!6295 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun b_lambda!73797 () Bool)

(assert (=> (not b_lambda!73797) (not d!694085)))

(declare-fun tb!138821 () Bool)

(declare-fun t!208008 () Bool)

(assert (=> (and b!2361170 (= (toValue!6295 (transformation!4447 (h!33347 rules!1706))) (toValue!6295 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208008) tb!138821))

(declare-fun result!169790 () Bool)

(declare-fun inv!21 (TokenValue!4633) Bool)

(assert (=> tb!138821 (= result!169790 (inv!21 (dynLambda!12042 (toValue!6295 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448)))))))))

(declare-fun m!2773797 () Bool)

(assert (=> tb!138821 m!2773797))

(assert (=> d!694085 t!208008))

(declare-fun b_and!185529 () Bool)

(assert (= b_and!185501 (and (=> t!208008 result!169790) b_and!185529)))

(declare-fun t!208010 () Bool)

(declare-fun tb!138823 () Bool)

(assert (=> (and b!2361398 (= (toValue!6295 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toValue!6295 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208010) tb!138823))

(declare-fun result!169794 () Bool)

(assert (= result!169794 result!169790))

(assert (=> d!694085 t!208010))

(declare-fun b_and!185531 () Bool)

(assert (= b_and!185513 (and (=> t!208010 result!169794) b_and!185531)))

(assert (=> d!694085 m!2773477))

(declare-fun m!2773799 () Bool)

(assert (=> d!694085 m!2773799))

(assert (=> b!2361213 d!694085))

(declare-fun d!694091 () Bool)

(declare-fun fromListB!1416 (List!28043) BalanceConc!17910)

(assert (=> d!694091 (= (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448)))) (fromListB!1416 (originalCharacters!5213 (_1!16382 (get!8478 lt!864448)))))))

(declare-fun bs!460559 () Bool)

(assert (= bs!460559 d!694091))

(declare-fun m!2773813 () Bool)

(assert (=> bs!460559 m!2773813))

(assert (=> b!2361213 d!694091))

(declare-fun d!694095 () Bool)

(declare-fun lt!864553 () Int)

(assert (=> d!694095 (>= lt!864553 0)))

(declare-fun e!1508336 () Int)

(assert (=> d!694095 (= lt!864553 e!1508336)))

(declare-fun c!375349 () Bool)

(assert (=> d!694095 (= c!375349 ((_ is Nil!27947) (_1!16381 lt!864503)))))

(assert (=> d!694095 (= (size!22129 (_1!16381 lt!864503)) lt!864553)))

(declare-fun b!2361546 () Bool)

(assert (=> b!2361546 (= e!1508336 0)))

(declare-fun b!2361547 () Bool)

(assert (=> b!2361547 (= e!1508336 (+ 1 (size!22129 (t!207984 (_1!16381 lt!864503)))))))

(assert (= (and d!694095 c!375349) b!2361546))

(assert (= (and d!694095 (not c!375349)) b!2361547))

(declare-fun m!2773815 () Bool)

(assert (=> b!2361547 m!2773815))

(assert (=> d!694021 d!694095))

(declare-fun b!2361552 () Bool)

(declare-fun res!1002282 () Bool)

(declare-fun e!1508342 () Bool)

(assert (=> b!2361552 (=> (not res!1002282) (not e!1508342))))

(declare-fun lt!864560 () Option!5454)

(assert (=> b!2361552 (= res!1002282 (= (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864560)))) (originalCharacters!5213 (_1!16382 (get!8478 lt!864560)))))))

(declare-fun call!143671 () Option!5454)

(declare-fun bm!143666 () Bool)

(assert (=> bm!143666 (= call!143671 (maxPrefixOneRule!1442 thiss!13512 (h!33347 rules!1706) (_2!16382 (v!30859 lt!864429))))))

(declare-fun d!694097 () Bool)

(declare-fun e!1508341 () Bool)

(assert (=> d!694097 e!1508341))

(declare-fun res!1002280 () Bool)

(assert (=> d!694097 (=> res!1002280 e!1508341)))

(assert (=> d!694097 (= res!1002280 (isEmpty!15879 lt!864560))))

(declare-fun e!1508343 () Option!5454)

(assert (=> d!694097 (= lt!864560 e!1508343)))

(declare-fun c!375350 () Bool)

(assert (=> d!694097 (= c!375350 (and ((_ is Cons!27946) rules!1706) ((_ is Nil!27946) (t!207983 rules!1706))))))

(declare-fun lt!864556 () Unit!40851)

(declare-fun lt!864557 () Unit!40851)

(assert (=> d!694097 (= lt!864556 lt!864557)))

(assert (=> d!694097 (isPrefix!2409 (_2!16382 (v!30859 lt!864429)) (_2!16382 (v!30859 lt!864429)))))

(assert (=> d!694097 (= lt!864557 (lemmaIsPrefixRefl!1535 (_2!16382 (v!30859 lt!864429)) (_2!16382 (v!30859 lt!864429))))))

(assert (=> d!694097 (rulesValidInductive!1577 thiss!13512 rules!1706)))

(assert (=> d!694097 (= (maxPrefix!2274 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864429))) lt!864560)))

(declare-fun b!2361553 () Bool)

(assert (=> b!2361553 (= e!1508341 e!1508342)))

(declare-fun res!1002281 () Bool)

(assert (=> b!2361553 (=> (not res!1002281) (not e!1508342))))

(assert (=> b!2361553 (= res!1002281 (isDefined!4282 lt!864560))))

(declare-fun b!2361554 () Bool)

(declare-fun res!1002277 () Bool)

(assert (=> b!2361554 (=> (not res!1002277) (not e!1508342))))

(assert (=> b!2361554 (= res!1002277 (= (value!141615 (_1!16382 (get!8478 lt!864560))) (apply!6714 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864560)))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864560)))))))))

(declare-fun b!2361555 () Bool)

(assert (=> b!2361555 (= e!1508342 (contains!4884 rules!1706 (rule!6803 (_1!16382 (get!8478 lt!864560)))))))

(declare-fun b!2361556 () Bool)

(declare-fun res!1002278 () Bool)

(assert (=> b!2361556 (=> (not res!1002278) (not e!1508342))))

(assert (=> b!2361556 (= res!1002278 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864560)))) (_2!16382 (get!8478 lt!864560))) (_2!16382 (v!30859 lt!864429))))))

(declare-fun b!2361557 () Bool)

(declare-fun res!1002279 () Bool)

(assert (=> b!2361557 (=> (not res!1002279) (not e!1508342))))

(assert (=> b!2361557 (= res!1002279 (< (size!22128 (_2!16382 (get!8478 lt!864560))) (size!22128 (_2!16382 (v!30859 lt!864429)))))))

(declare-fun b!2361558 () Bool)

(assert (=> b!2361558 (= e!1508343 call!143671)))

(declare-fun b!2361559 () Bool)

(declare-fun lt!864559 () Option!5454)

(declare-fun lt!864558 () Option!5454)

(assert (=> b!2361559 (= e!1508343 (ite (and ((_ is None!5453) lt!864559) ((_ is None!5453) lt!864558)) None!5453 (ite ((_ is None!5453) lt!864558) lt!864559 (ite ((_ is None!5453) lt!864559) lt!864558 (ite (>= (size!22127 (_1!16382 (v!30859 lt!864559))) (size!22127 (_1!16382 (v!30859 lt!864558)))) lt!864559 lt!864558)))))))

(assert (=> b!2361559 (= lt!864559 call!143671)))

(assert (=> b!2361559 (= lt!864558 (maxPrefix!2274 thiss!13512 (t!207983 rules!1706) (_2!16382 (v!30859 lt!864429))))))

(declare-fun b!2361560 () Bool)

(declare-fun res!1002276 () Bool)

(assert (=> b!2361560 (=> (not res!1002276) (not e!1508342))))

(assert (=> b!2361560 (= res!1002276 (matchR!3026 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864560)))) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864560))))))))

(assert (= (and d!694097 c!375350) b!2361558))

(assert (= (and d!694097 (not c!375350)) b!2361559))

(assert (= (or b!2361558 b!2361559) bm!143666))

(assert (= (and d!694097 (not res!1002280)) b!2361553))

(assert (= (and b!2361553 res!1002281) b!2361552))

(assert (= (and b!2361552 res!1002282) b!2361557))

(assert (= (and b!2361557 res!1002279) b!2361556))

(assert (= (and b!2361556 res!1002278) b!2361554))

(assert (= (and b!2361554 res!1002277) b!2361560))

(assert (= (and b!2361560 res!1002276) b!2361555))

(declare-fun m!2773827 () Bool)

(assert (=> b!2361555 m!2773827))

(declare-fun m!2773829 () Bool)

(assert (=> b!2361555 m!2773829))

(declare-fun m!2773831 () Bool)

(assert (=> bm!143666 m!2773831))

(declare-fun m!2773833 () Bool)

(assert (=> b!2361559 m!2773833))

(declare-fun m!2773835 () Bool)

(assert (=> d!694097 m!2773835))

(declare-fun m!2773837 () Bool)

(assert (=> d!694097 m!2773837))

(declare-fun m!2773839 () Bool)

(assert (=> d!694097 m!2773839))

(assert (=> d!694097 m!2773475))

(assert (=> b!2361554 m!2773827))

(declare-fun m!2773841 () Bool)

(assert (=> b!2361554 m!2773841))

(assert (=> b!2361554 m!2773841))

(declare-fun m!2773843 () Bool)

(assert (=> b!2361554 m!2773843))

(declare-fun m!2773845 () Bool)

(assert (=> b!2361553 m!2773845))

(assert (=> b!2361560 m!2773827))

(declare-fun m!2773847 () Bool)

(assert (=> b!2361560 m!2773847))

(assert (=> b!2361560 m!2773847))

(declare-fun m!2773849 () Bool)

(assert (=> b!2361560 m!2773849))

(assert (=> b!2361560 m!2773849))

(declare-fun m!2773851 () Bool)

(assert (=> b!2361560 m!2773851))

(assert (=> b!2361557 m!2773827))

(declare-fun m!2773853 () Bool)

(assert (=> b!2361557 m!2773853))

(assert (=> b!2361557 m!2773553))

(assert (=> b!2361552 m!2773827))

(assert (=> b!2361552 m!2773847))

(assert (=> b!2361552 m!2773847))

(assert (=> b!2361552 m!2773849))

(assert (=> b!2361556 m!2773827))

(assert (=> b!2361556 m!2773847))

(assert (=> b!2361556 m!2773847))

(assert (=> b!2361556 m!2773849))

(assert (=> b!2361556 m!2773849))

(declare-fun m!2773855 () Bool)

(assert (=> b!2361556 m!2773855))

(assert (=> d!694021 d!694097))

(declare-fun d!694107 () Bool)

(declare-fun lt!864562 () Int)

(assert (=> d!694107 (>= lt!864562 0)))

(declare-fun e!1508347 () Int)

(assert (=> d!694107 (= lt!864562 e!1508347)))

(declare-fun c!375351 () Bool)

(assert (=> d!694107 (= c!375351 ((_ is Nil!27945) (_2!16382 (get!8478 lt!864448))))))

(assert (=> d!694107 (= (size!22128 (_2!16382 (get!8478 lt!864448))) lt!864562)))

(declare-fun b!2361564 () Bool)

(assert (=> b!2361564 (= e!1508347 0)))

(declare-fun b!2361565 () Bool)

(assert (=> b!2361565 (= e!1508347 (+ 1 (size!22128 (t!207982 (_2!16382 (get!8478 lt!864448))))))))

(assert (= (and d!694107 c!375351) b!2361564))

(assert (= (and d!694107 (not c!375351)) b!2361565))

(declare-fun m!2773857 () Bool)

(assert (=> b!2361565 m!2773857))

(assert (=> b!2361216 d!694107))

(assert (=> b!2361216 d!694073))

(assert (=> b!2361216 d!694001))

(declare-fun d!694109 () Bool)

(declare-fun lt!864563 () Int)

(assert (=> d!694109 (>= lt!864563 0)))

(declare-fun e!1508348 () Int)

(assert (=> d!694109 (= lt!864563 e!1508348)))

(declare-fun c!375352 () Bool)

(assert (=> d!694109 (= c!375352 ((_ is Nil!27945) (t!207982 input!1160)))))

(assert (=> d!694109 (= (size!22128 (t!207982 input!1160)) lt!864563)))

(declare-fun b!2361566 () Bool)

(assert (=> b!2361566 (= e!1508348 0)))

(declare-fun b!2361567 () Bool)

(assert (=> b!2361567 (= e!1508348 (+ 1 (size!22128 (t!207982 (t!207982 input!1160)))))))

(assert (= (and d!694109 c!375352) b!2361566))

(assert (= (and d!694109 (not c!375352)) b!2361567))

(declare-fun m!2773859 () Bool)

(assert (=> b!2361567 m!2773859))

(assert (=> b!2361266 d!694109))

(declare-fun d!694111 () Bool)

(declare-fun e!1508349 () Bool)

(assert (=> d!694111 e!1508349))

(declare-fun res!1002287 () Bool)

(assert (=> d!694111 (=> (not res!1002287) (not e!1508349))))

(declare-fun lt!864564 () List!28043)

(assert (=> d!694111 (= res!1002287 (= (content!3797 lt!864564) ((_ map or) (content!3797 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (content!3797 (_2!16382 (get!8478 lt!864448))))))))

(declare-fun e!1508350 () List!28043)

(assert (=> d!694111 (= lt!864564 e!1508350)))

(declare-fun c!375353 () Bool)

(assert (=> d!694111 (= c!375353 ((_ is Nil!27945) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))

(assert (=> d!694111 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))) (_2!16382 (get!8478 lt!864448))) lt!864564)))

(declare-fun b!2361568 () Bool)

(assert (=> b!2361568 (= e!1508350 (_2!16382 (get!8478 lt!864448)))))

(declare-fun b!2361571 () Bool)

(assert (=> b!2361571 (= e!1508349 (or (not (= (_2!16382 (get!8478 lt!864448)) Nil!27945)) (= lt!864564 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))))))))

(declare-fun b!2361570 () Bool)

(declare-fun res!1002286 () Bool)

(assert (=> b!2361570 (=> (not res!1002286) (not e!1508349))))

(assert (=> b!2361570 (= res!1002286 (= (size!22128 lt!864564) (+ (size!22128 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (size!22128 (_2!16382 (get!8478 lt!864448))))))))

(declare-fun b!2361569 () Bool)

(assert (=> b!2361569 (= e!1508350 (Cons!27945 (h!33346 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (++!6880 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (_2!16382 (get!8478 lt!864448)))))))

(assert (= (and d!694111 c!375353) b!2361568))

(assert (= (and d!694111 (not c!375353)) b!2361569))

(assert (= (and d!694111 res!1002287) b!2361570))

(assert (= (and b!2361570 res!1002286) b!2361571))

(declare-fun m!2773861 () Bool)

(assert (=> d!694111 m!2773861))

(assert (=> d!694111 m!2773485))

(declare-fun m!2773863 () Bool)

(assert (=> d!694111 m!2773863))

(declare-fun m!2773865 () Bool)

(assert (=> d!694111 m!2773865))

(declare-fun m!2773867 () Bool)

(assert (=> b!2361570 m!2773867))

(assert (=> b!2361570 m!2773485))

(declare-fun m!2773869 () Bool)

(assert (=> b!2361570 m!2773869))

(assert (=> b!2361570 m!2773489))

(declare-fun m!2773871 () Bool)

(assert (=> b!2361569 m!2773871))

(assert (=> b!2361215 d!694111))

(assert (=> b!2361215 d!694069))

(assert (=> b!2361215 d!694071))

(assert (=> b!2361215 d!694073))

(declare-fun b!2361629 () Bool)

(declare-fun e!1508388 () Bool)

(declare-fun lt!864582 () Bool)

(assert (=> b!2361629 (= e!1508388 (not lt!864582))))

(declare-fun b!2361630 () Bool)

(declare-fun res!1002333 () Bool)

(declare-fun e!1508387 () Bool)

(assert (=> b!2361630 (=> res!1002333 e!1508387)))

(assert (=> b!2361630 (= res!1002333 (not (isEmpty!15880 (tail!3348 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))))

(declare-fun d!694113 () Bool)

(declare-fun e!1508386 () Bool)

(assert (=> d!694113 e!1508386))

(declare-fun c!375363 () Bool)

(assert (=> d!694113 (= c!375363 ((_ is EmptyExpr!6905) (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun e!1508384 () Bool)

(assert (=> d!694113 (= lt!864582 e!1508384)))

(declare-fun c!375362 () Bool)

(assert (=> d!694113 (= c!375362 (isEmpty!15880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun validRegex!2645 (Regex!6905) Bool)

(assert (=> d!694113 (validRegex!2645 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))))

(assert (=> d!694113 (= (matchR!3026 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) lt!864582)))

(declare-fun b!2361631 () Bool)

(declare-fun call!143675 () Bool)

(assert (=> b!2361631 (= e!1508386 (= lt!864582 call!143675))))

(declare-fun b!2361632 () Bool)

(declare-fun derivativeStep!1638 (Regex!6905 C!13968) Regex!6905)

(assert (=> b!2361632 (= e!1508384 (matchR!3026 (derivativeStep!1638 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))) (head!5079 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))))) (tail!3348 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))))))))

(declare-fun b!2361633 () Bool)

(assert (=> b!2361633 (= e!1508386 e!1508388)))

(declare-fun c!375364 () Bool)

(assert (=> b!2361633 (= c!375364 ((_ is EmptyLang!6905) (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun b!2361634 () Bool)

(declare-fun res!1002335 () Bool)

(declare-fun e!1508385 () Bool)

(assert (=> b!2361634 (=> (not res!1002335) (not e!1508385))))

(assert (=> b!2361634 (= res!1002335 (isEmpty!15880 (tail!3348 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448)))))))))

(declare-fun b!2361635 () Bool)

(assert (=> b!2361635 (= e!1508387 (not (= (head!5079 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (c!375284 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))))))))

(declare-fun b!2361636 () Bool)

(declare-fun res!1002332 () Bool)

(declare-fun e!1508390 () Bool)

(assert (=> b!2361636 (=> res!1002332 e!1508390)))

(assert (=> b!2361636 (= res!1002332 e!1508385)))

(declare-fun res!1002334 () Bool)

(assert (=> b!2361636 (=> (not res!1002334) (not e!1508385))))

(assert (=> b!2361636 (= res!1002334 lt!864582)))

(declare-fun b!2361637 () Bool)

(declare-fun res!1002331 () Bool)

(assert (=> b!2361637 (=> res!1002331 e!1508390)))

(assert (=> b!2361637 (= res!1002331 (not ((_ is ElementMatch!6905) (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))))))

(assert (=> b!2361637 (= e!1508388 e!1508390)))

(declare-fun b!2361638 () Bool)

(declare-fun e!1508389 () Bool)

(assert (=> b!2361638 (= e!1508390 e!1508389)))

(declare-fun res!1002329 () Bool)

(assert (=> b!2361638 (=> (not res!1002329) (not e!1508389))))

(assert (=> b!2361638 (= res!1002329 (not lt!864582))))

(declare-fun b!2361639 () Bool)

(assert (=> b!2361639 (= e!1508389 e!1508387)))

(declare-fun res!1002330 () Bool)

(assert (=> b!2361639 (=> res!1002330 e!1508387)))

(assert (=> b!2361639 (= res!1002330 call!143675)))

(declare-fun bm!143670 () Bool)

(assert (=> bm!143670 (= call!143675 (isEmpty!15880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun b!2361640 () Bool)

(declare-fun nullable!1979 (Regex!6905) Bool)

(assert (=> b!2361640 (= e!1508384 (nullable!1979 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448))))))))

(declare-fun b!2361641 () Bool)

(declare-fun res!1002336 () Bool)

(assert (=> b!2361641 (=> (not res!1002336) (not e!1508385))))

(assert (=> b!2361641 (= res!1002336 (not call!143675))))

(declare-fun b!2361642 () Bool)

(assert (=> b!2361642 (= e!1508385 (= (head!5079 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864448))))) (c!375284 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))))))

(assert (= (and d!694113 c!375362) b!2361640))

(assert (= (and d!694113 (not c!375362)) b!2361632))

(assert (= (and d!694113 c!375363) b!2361631))

(assert (= (and d!694113 (not c!375363)) b!2361633))

(assert (= (and b!2361633 c!375364) b!2361629))

(assert (= (and b!2361633 (not c!375364)) b!2361637))

(assert (= (and b!2361637 (not res!1002331)) b!2361636))

(assert (= (and b!2361636 res!1002334) b!2361641))

(assert (= (and b!2361641 res!1002336) b!2361634))

(assert (= (and b!2361634 res!1002335) b!2361642))

(assert (= (and b!2361636 (not res!1002332)) b!2361638))

(assert (= (and b!2361638 res!1002329) b!2361639))

(assert (= (and b!2361639 (not res!1002330)) b!2361630))

(assert (= (and b!2361630 (not res!1002333)) b!2361635))

(assert (= (or b!2361631 b!2361639 b!2361641) bm!143670))

(assert (=> bm!143670 m!2773485))

(declare-fun m!2773923 () Bool)

(assert (=> bm!143670 m!2773923))

(assert (=> b!2361632 m!2773485))

(declare-fun m!2773925 () Bool)

(assert (=> b!2361632 m!2773925))

(assert (=> b!2361632 m!2773925))

(declare-fun m!2773927 () Bool)

(assert (=> b!2361632 m!2773927))

(assert (=> b!2361632 m!2773485))

(declare-fun m!2773929 () Bool)

(assert (=> b!2361632 m!2773929))

(assert (=> b!2361632 m!2773927))

(assert (=> b!2361632 m!2773929))

(declare-fun m!2773931 () Bool)

(assert (=> b!2361632 m!2773931))

(assert (=> d!694113 m!2773485))

(assert (=> d!694113 m!2773923))

(declare-fun m!2773933 () Bool)

(assert (=> d!694113 m!2773933))

(assert (=> b!2361635 m!2773485))

(assert (=> b!2361635 m!2773925))

(declare-fun m!2773935 () Bool)

(assert (=> b!2361640 m!2773935))

(assert (=> b!2361642 m!2773485))

(assert (=> b!2361642 m!2773925))

(assert (=> b!2361634 m!2773485))

(assert (=> b!2361634 m!2773929))

(assert (=> b!2361634 m!2773929))

(declare-fun m!2773937 () Bool)

(assert (=> b!2361634 m!2773937))

(assert (=> b!2361630 m!2773485))

(assert (=> b!2361630 m!2773929))

(assert (=> b!2361630 m!2773929))

(assert (=> b!2361630 m!2773937))

(assert (=> b!2361219 d!694113))

(assert (=> b!2361219 d!694073))

(assert (=> b!2361219 d!694069))

(assert (=> b!2361219 d!694071))

(declare-fun d!694133 () Bool)

(declare-fun res!1002341 () Bool)

(declare-fun e!1508398 () Bool)

(assert (=> d!694133 (=> res!1002341 e!1508398)))

(assert (=> d!694133 (= res!1002341 ((_ is Nil!27946) rules!1706))))

(assert (=> d!694133 (= (noDuplicateTag!1651 thiss!13512 rules!1706 Nil!27949) e!1508398)))

(declare-fun b!2361653 () Bool)

(declare-fun e!1508399 () Bool)

(assert (=> b!2361653 (= e!1508398 e!1508399)))

(declare-fun res!1002342 () Bool)

(assert (=> b!2361653 (=> (not res!1002342) (not e!1508399))))

(declare-fun contains!4885 (List!28047 String!30765) Bool)

(assert (=> b!2361653 (= res!1002342 (not (contains!4885 Nil!27949 (tag!4937 (h!33347 rules!1706)))))))

(declare-fun b!2361654 () Bool)

(assert (=> b!2361654 (= e!1508399 (noDuplicateTag!1651 thiss!13512 (t!207983 rules!1706) (Cons!27949 (tag!4937 (h!33347 rules!1706)) Nil!27949)))))

(assert (= (and d!694133 (not res!1002341)) b!2361653))

(assert (= (and b!2361653 res!1002342) b!2361654))

(declare-fun m!2773939 () Bool)

(assert (=> b!2361653 m!2773939))

(declare-fun m!2773941 () Bool)

(assert (=> b!2361654 m!2773941))

(assert (=> b!2361240 d!694133))

(declare-fun b!2361655 () Bool)

(declare-fun res!1002349 () Bool)

(declare-fun e!1508401 () Bool)

(assert (=> b!2361655 (=> (not res!1002349) (not e!1508401))))

(declare-fun lt!864590 () Option!5454)

(assert (=> b!2361655 (= res!1002349 (= (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864590)))) (originalCharacters!5213 (_1!16382 (get!8478 lt!864590)))))))

(declare-fun bm!143671 () Bool)

(declare-fun call!143676 () Option!5454)

(assert (=> bm!143671 (= call!143676 (maxPrefixOneRule!1442 thiss!13512 (h!33347 (t!207983 rules!1706)) input!1160))))

(declare-fun d!694135 () Bool)

(declare-fun e!1508400 () Bool)

(assert (=> d!694135 e!1508400))

(declare-fun res!1002347 () Bool)

(assert (=> d!694135 (=> res!1002347 e!1508400)))

(assert (=> d!694135 (= res!1002347 (isEmpty!15879 lt!864590))))

(declare-fun e!1508402 () Option!5454)

(assert (=> d!694135 (= lt!864590 e!1508402)))

(declare-fun c!375368 () Bool)

(assert (=> d!694135 (= c!375368 (and ((_ is Cons!27946) (t!207983 rules!1706)) ((_ is Nil!27946) (t!207983 (t!207983 rules!1706)))))))

(declare-fun lt!864586 () Unit!40851)

(declare-fun lt!864587 () Unit!40851)

(assert (=> d!694135 (= lt!864586 lt!864587)))

(assert (=> d!694135 (isPrefix!2409 input!1160 input!1160)))

(assert (=> d!694135 (= lt!864587 (lemmaIsPrefixRefl!1535 input!1160 input!1160))))

(assert (=> d!694135 (rulesValidInductive!1577 thiss!13512 (t!207983 rules!1706))))

(assert (=> d!694135 (= (maxPrefix!2274 thiss!13512 (t!207983 rules!1706) input!1160) lt!864590)))

(declare-fun b!2361656 () Bool)

(assert (=> b!2361656 (= e!1508400 e!1508401)))

(declare-fun res!1002348 () Bool)

(assert (=> b!2361656 (=> (not res!1002348) (not e!1508401))))

(assert (=> b!2361656 (= res!1002348 (isDefined!4282 lt!864590))))

(declare-fun b!2361657 () Bool)

(declare-fun res!1002344 () Bool)

(assert (=> b!2361657 (=> (not res!1002344) (not e!1508401))))

(assert (=> b!2361657 (= res!1002344 (= (value!141615 (_1!16382 (get!8478 lt!864590))) (apply!6714 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864590)))) (seqFromList!3133 (originalCharacters!5213 (_1!16382 (get!8478 lt!864590)))))))))

(declare-fun b!2361658 () Bool)

(assert (=> b!2361658 (= e!1508401 (contains!4884 (t!207983 rules!1706) (rule!6803 (_1!16382 (get!8478 lt!864590)))))))

(declare-fun b!2361659 () Bool)

(declare-fun res!1002345 () Bool)

(assert (=> b!2361659 (=> (not res!1002345) (not e!1508401))))

(assert (=> b!2361659 (= res!1002345 (= (++!6880 (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864590)))) (_2!16382 (get!8478 lt!864590))) input!1160))))

(declare-fun b!2361660 () Bool)

(declare-fun res!1002346 () Bool)

(assert (=> b!2361660 (=> (not res!1002346) (not e!1508401))))

(assert (=> b!2361660 (= res!1002346 (< (size!22128 (_2!16382 (get!8478 lt!864590))) (size!22128 input!1160)))))

(declare-fun b!2361661 () Bool)

(assert (=> b!2361661 (= e!1508402 call!143676)))

(declare-fun b!2361662 () Bool)

(declare-fun lt!864589 () Option!5454)

(declare-fun lt!864588 () Option!5454)

(assert (=> b!2361662 (= e!1508402 (ite (and ((_ is None!5453) lt!864589) ((_ is None!5453) lt!864588)) None!5453 (ite ((_ is None!5453) lt!864588) lt!864589 (ite ((_ is None!5453) lt!864589) lt!864588 (ite (>= (size!22127 (_1!16382 (v!30859 lt!864589))) (size!22127 (_1!16382 (v!30859 lt!864588)))) lt!864589 lt!864588)))))))

(assert (=> b!2361662 (= lt!864589 call!143676)))

(assert (=> b!2361662 (= lt!864588 (maxPrefix!2274 thiss!13512 (t!207983 (t!207983 rules!1706)) input!1160))))

(declare-fun b!2361663 () Bool)

(declare-fun res!1002343 () Bool)

(assert (=> b!2361663 (=> (not res!1002343) (not e!1508401))))

(assert (=> b!2361663 (= res!1002343 (matchR!3026 (regex!4447 (rule!6803 (_1!16382 (get!8478 lt!864590)))) (list!11087 (charsOf!2807 (_1!16382 (get!8478 lt!864590))))))))

(assert (= (and d!694135 c!375368) b!2361661))

(assert (= (and d!694135 (not c!375368)) b!2361662))

(assert (= (or b!2361661 b!2361662) bm!143671))

(assert (= (and d!694135 (not res!1002347)) b!2361656))

(assert (= (and b!2361656 res!1002348) b!2361655))

(assert (= (and b!2361655 res!1002349) b!2361660))

(assert (= (and b!2361660 res!1002346) b!2361659))

(assert (= (and b!2361659 res!1002345) b!2361657))

(assert (= (and b!2361657 res!1002344) b!2361663))

(assert (= (and b!2361663 res!1002343) b!2361658))

(declare-fun m!2773943 () Bool)

(assert (=> b!2361658 m!2773943))

(declare-fun m!2773945 () Bool)

(assert (=> b!2361658 m!2773945))

(declare-fun m!2773947 () Bool)

(assert (=> bm!143671 m!2773947))

(declare-fun m!2773949 () Bool)

(assert (=> b!2361662 m!2773949))

(declare-fun m!2773951 () Bool)

(assert (=> d!694135 m!2773951))

(assert (=> d!694135 m!2773471))

(assert (=> d!694135 m!2773473))

(assert (=> d!694135 m!2773651))

(assert (=> b!2361657 m!2773943))

(declare-fun m!2773953 () Bool)

(assert (=> b!2361657 m!2773953))

(assert (=> b!2361657 m!2773953))

(declare-fun m!2773955 () Bool)

(assert (=> b!2361657 m!2773955))

(declare-fun m!2773957 () Bool)

(assert (=> b!2361656 m!2773957))

(assert (=> b!2361663 m!2773943))

(declare-fun m!2773959 () Bool)

(assert (=> b!2361663 m!2773959))

(assert (=> b!2361663 m!2773959))

(declare-fun m!2773961 () Bool)

(assert (=> b!2361663 m!2773961))

(assert (=> b!2361663 m!2773961))

(declare-fun m!2773963 () Bool)

(assert (=> b!2361663 m!2773963))

(assert (=> b!2361660 m!2773943))

(declare-fun m!2773965 () Bool)

(assert (=> b!2361660 m!2773965))

(assert (=> b!2361660 m!2773449))

(assert (=> b!2361655 m!2773943))

(assert (=> b!2361655 m!2773959))

(assert (=> b!2361655 m!2773959))

(assert (=> b!2361655 m!2773961))

(assert (=> b!2361659 m!2773943))

(assert (=> b!2361659 m!2773959))

(assert (=> b!2361659 m!2773959))

(assert (=> b!2361659 m!2773961))

(assert (=> b!2361659 m!2773961))

(declare-fun m!2773967 () Bool)

(assert (=> b!2361659 m!2773967))

(assert (=> b!2361218 d!694135))

(declare-fun d!694137 () Bool)

(declare-fun isBalanced!2790 (Conc!9149) Bool)

(assert (=> d!694137 (= (inv!38173 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))) (isBalanced!2790 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))))))

(declare-fun bs!460562 () Bool)

(assert (= bs!460562 d!694137))

(declare-fun m!2773969 () Bool)

(assert (=> bs!460562 m!2773969))

(assert (=> tb!138803 d!694137))

(declare-fun d!694139 () Bool)

(declare-fun c!375371 () Bool)

(assert (=> d!694139 (= c!375371 ((_ is Nil!27945) lt!864479))))

(declare-fun e!1508405 () (InoxSet C!13968))

(assert (=> d!694139 (= (content!3797 lt!864479) e!1508405)))

(declare-fun b!2361668 () Bool)

(assert (=> b!2361668 (= e!1508405 ((as const (Array C!13968 Bool)) false))))

(declare-fun b!2361669 () Bool)

(assert (=> b!2361669 (= e!1508405 ((_ map or) (store ((as const (Array C!13968 Bool)) false) (h!33346 lt!864479) true) (content!3797 (t!207982 lt!864479))))))

(assert (= (and d!694139 c!375371) b!2361668))

(assert (= (and d!694139 (not c!375371)) b!2361669))

(declare-fun m!2773971 () Bool)

(assert (=> b!2361669 m!2773971))

(declare-fun m!2773973 () Bool)

(assert (=> b!2361669 m!2773973))

(assert (=> d!694005 d!694139))

(declare-fun d!694141 () Bool)

(declare-fun c!375372 () Bool)

(assert (=> d!694141 (= c!375372 ((_ is Nil!27945) (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(declare-fun e!1508406 () (InoxSet C!13968))

(assert (=> d!694141 (= (content!3797 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) e!1508406)))

(declare-fun b!2361670 () Bool)

(assert (=> b!2361670 (= e!1508406 ((as const (Array C!13968 Bool)) false))))

(declare-fun b!2361671 () Bool)

(assert (=> b!2361671 (= e!1508406 ((_ map or) (store ((as const (Array C!13968 Bool)) false) (h!33346 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) true) (content!3797 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))))

(assert (= (and d!694141 c!375372) b!2361670))

(assert (= (and d!694141 (not c!375372)) b!2361671))

(declare-fun m!2773975 () Bool)

(assert (=> b!2361671 m!2773975))

(declare-fun m!2773977 () Bool)

(assert (=> b!2361671 m!2773977))

(assert (=> d!694005 d!694141))

(declare-fun d!694143 () Bool)

(declare-fun c!375373 () Bool)

(assert (=> d!694143 (= c!375373 ((_ is Nil!27945) (_2!16382 (v!30859 lt!864429))))))

(declare-fun e!1508407 () (InoxSet C!13968))

(assert (=> d!694143 (= (content!3797 (_2!16382 (v!30859 lt!864429))) e!1508407)))

(declare-fun b!2361672 () Bool)

(assert (=> b!2361672 (= e!1508407 ((as const (Array C!13968 Bool)) false))))

(declare-fun b!2361673 () Bool)

(assert (=> b!2361673 (= e!1508407 ((_ map or) (store ((as const (Array C!13968 Bool)) false) (h!33346 (_2!16382 (v!30859 lt!864429))) true) (content!3797 (t!207982 (_2!16382 (v!30859 lt!864429))))))))

(assert (= (and d!694143 c!375373) b!2361672))

(assert (= (and d!694143 (not c!375373)) b!2361673))

(declare-fun m!2773979 () Bool)

(assert (=> b!2361673 m!2773979))

(declare-fun m!2773981 () Bool)

(assert (=> b!2361673 m!2773981))

(assert (=> d!694005 d!694143))

(declare-fun d!694145 () Bool)

(declare-fun lt!864591 () Int)

(assert (=> d!694145 (>= lt!864591 0)))

(declare-fun e!1508408 () Int)

(assert (=> d!694145 (= lt!864591 e!1508408)))

(declare-fun c!375374 () Bool)

(assert (=> d!694145 (= c!375374 ((_ is Nil!27947) (t!207984 lt!864428)))))

(assert (=> d!694145 (= (size!22129 (t!207984 lt!864428)) lt!864591)))

(declare-fun b!2361674 () Bool)

(assert (=> b!2361674 (= e!1508408 0)))

(declare-fun b!2361675 () Bool)

(assert (=> b!2361675 (= e!1508408 (+ 1 (size!22129 (t!207984 (t!207984 lt!864428)))))))

(assert (= (and d!694145 c!375374) b!2361674))

(assert (= (and d!694145 (not c!375374)) b!2361675))

(declare-fun m!2773983 () Bool)

(assert (=> b!2361675 m!2773983))

(assert (=> b!2361246 d!694145))

(declare-fun b!2361685 () Bool)

(declare-fun e!1508413 () List!28043)

(declare-fun e!1508414 () List!28043)

(assert (=> b!2361685 (= e!1508413 e!1508414)))

(declare-fun c!375380 () Bool)

(assert (=> b!2361685 (= c!375380 ((_ is Leaf!13506) (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(declare-fun b!2361687 () Bool)

(assert (=> b!2361687 (= e!1508414 (++!6880 (list!11089 (left!21245 (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))) (list!11089 (right!21575 (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))))

(declare-fun b!2361684 () Bool)

(assert (=> b!2361684 (= e!1508413 Nil!27945)))

(declare-fun b!2361686 () Bool)

(declare-fun list!11090 (IArray!18303) List!28043)

(assert (=> b!2361686 (= e!1508414 (list!11090 (xs!12129 (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))))))

(declare-fun d!694147 () Bool)

(declare-fun c!375379 () Bool)

(assert (=> d!694147 (= c!375379 ((_ is Empty!9149) (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(assert (=> d!694147 (= (list!11089 (c!375285 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) e!1508413)))

(assert (= (and d!694147 c!375379) b!2361684))

(assert (= (and d!694147 (not c!375379)) b!2361685))

(assert (= (and b!2361685 c!375380) b!2361686))

(assert (= (and b!2361685 (not c!375380)) b!2361687))

(declare-fun m!2773985 () Bool)

(assert (=> b!2361687 m!2773985))

(declare-fun m!2773987 () Bool)

(assert (=> b!2361687 m!2773987))

(assert (=> b!2361687 m!2773985))

(assert (=> b!2361687 m!2773987))

(declare-fun m!2773989 () Bool)

(assert (=> b!2361687 m!2773989))

(declare-fun m!2773991 () Bool)

(assert (=> b!2361686 m!2773991))

(assert (=> d!694011 d!694147))

(declare-fun d!694149 () Bool)

(declare-fun lt!864592 () Int)

(assert (=> d!694149 (>= lt!864592 0)))

(declare-fun e!1508415 () Int)

(assert (=> d!694149 (= lt!864592 e!1508415)))

(declare-fun c!375381 () Bool)

(assert (=> d!694149 (= c!375381 ((_ is Nil!27945) (t!207982 (_2!16381 lt!864430))))))

(assert (=> d!694149 (= (size!22128 (t!207982 (_2!16381 lt!864430))) lt!864592)))

(declare-fun b!2361688 () Bool)

(assert (=> b!2361688 (= e!1508415 0)))

(declare-fun b!2361689 () Bool)

(assert (=> b!2361689 (= e!1508415 (+ 1 (size!22128 (t!207982 (t!207982 (_2!16381 lt!864430))))))))

(assert (= (and d!694149 c!375381) b!2361688))

(assert (= (and d!694149 (not c!375381)) b!2361689))

(declare-fun m!2773993 () Bool)

(assert (=> b!2361689 m!2773993))

(assert (=> b!2361264 d!694149))

(declare-fun b!2361690 () Bool)

(declare-fun e!1508418 () tuple2!27680)

(declare-fun lt!864593 () Option!5454)

(declare-fun lt!864595 () tuple2!27680)

(assert (=> b!2361690 (= e!1508418 (tuple2!27681 (Cons!27947 (_1!16382 (v!30859 lt!864593)) (_1!16381 lt!864595)) (_2!16381 lt!864595)))))

(assert (=> b!2361690 (= lt!864595 (lexRegexList!4 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864593))))))

(declare-fun b!2361691 () Bool)

(assert (=> b!2361691 (= e!1508418 (tuple2!27681 Nil!27947 (_2!16382 (v!30859 lt!864502))))))

(declare-fun b!2361692 () Bool)

(declare-fun e!1508417 () Bool)

(declare-fun e!1508416 () Bool)

(assert (=> b!2361692 (= e!1508417 e!1508416)))

(declare-fun res!1002350 () Bool)

(declare-fun lt!864594 () tuple2!27680)

(assert (=> b!2361692 (= res!1002350 (< (size!22128 (_2!16381 lt!864594)) (size!22128 (_2!16382 (v!30859 lt!864502)))))))

(assert (=> b!2361692 (=> (not res!1002350) (not e!1508416))))

(declare-fun b!2361693 () Bool)

(assert (=> b!2361693 (= e!1508416 (not (isEmpty!15876 (_1!16381 lt!864594))))))

(declare-fun b!2361694 () Bool)

(assert (=> b!2361694 (= e!1508417 (= (_2!16381 lt!864594) (_2!16382 (v!30859 lt!864502))))))

(declare-fun d!694151 () Bool)

(assert (=> d!694151 e!1508417))

(declare-fun c!375383 () Bool)

(assert (=> d!694151 (= c!375383 (> (size!22129 (_1!16381 lt!864594)) 0))))

(assert (=> d!694151 (= lt!864594 e!1508418)))

(declare-fun c!375382 () Bool)

(assert (=> d!694151 (= c!375382 ((_ is Some!5453) lt!864593))))

(assert (=> d!694151 (= lt!864593 (maxPrefix!2274 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864502))))))

(assert (=> d!694151 (= (lexRegexList!4 thiss!13512 rules!1706 (_2!16382 (v!30859 lt!864502))) lt!864594)))

(assert (= (and d!694151 c!375382) b!2361690))

(assert (= (and d!694151 (not c!375382)) b!2361691))

(assert (= (and d!694151 c!375383) b!2361692))

(assert (= (and d!694151 (not c!375383)) b!2361694))

(assert (= (and b!2361692 res!1002350) b!2361693))

(declare-fun m!2773995 () Bool)

(assert (=> b!2361690 m!2773995))

(declare-fun m!2773997 () Bool)

(assert (=> b!2361692 m!2773997))

(declare-fun m!2773999 () Bool)

(assert (=> b!2361692 m!2773999))

(declare-fun m!2774001 () Bool)

(assert (=> b!2361693 m!2774001))

(declare-fun m!2774003 () Bool)

(assert (=> d!694151 m!2774003))

(declare-fun m!2774005 () Bool)

(assert (=> d!694151 m!2774005))

(assert (=> b!2361364 d!694151))

(declare-fun d!694153 () Bool)

(assert (=> d!694153 true))

(declare-fun order!15489 () Int)

(declare-fun lambda!86869 () Int)

(declare-fun order!15487 () Int)

(declare-fun dynLambda!12047 (Int Int) Int)

(declare-fun dynLambda!12048 (Int Int) Int)

(assert (=> d!694153 (< (dynLambda!12047 order!15487 (toValue!6295 (transformation!4447 (h!33347 rules!1706)))) (dynLambda!12048 order!15489 lambda!86869))))

(declare-fun Forall2!740 (Int) Bool)

(assert (=> d!694153 (= (equivClasses!1739 (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toValue!6295 (transformation!4447 (h!33347 rules!1706)))) (Forall2!740 lambda!86869))))

(declare-fun bs!460563 () Bool)

(assert (= bs!460563 d!694153))

(declare-fun m!2774007 () Bool)

(assert (=> bs!460563 m!2774007))

(assert (=> b!2361258 d!694153))

(declare-fun d!694155 () Bool)

(declare-fun c!375386 () Bool)

(assert (=> d!694155 (= c!375386 ((_ is Node!9149) (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))))))

(declare-fun e!1508425 () Bool)

(assert (=> d!694155 (= (inv!38172 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))) e!1508425)))

(declare-fun b!2361705 () Bool)

(declare-fun inv!38176 (Conc!9149) Bool)

(assert (=> b!2361705 (= e!1508425 (inv!38176 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))))))

(declare-fun b!2361706 () Bool)

(declare-fun e!1508426 () Bool)

(assert (=> b!2361706 (= e!1508425 e!1508426)))

(declare-fun res!1002355 () Bool)

(assert (=> b!2361706 (= res!1002355 (not ((_ is Leaf!13506) (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))))))

(assert (=> b!2361706 (=> res!1002355 e!1508426)))

(declare-fun b!2361707 () Bool)

(declare-fun inv!38177 (Conc!9149) Bool)

(assert (=> b!2361707 (= e!1508426 (inv!38177 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))))))

(assert (= (and d!694155 c!375386) b!2361705))

(assert (= (and d!694155 (not c!375386)) b!2361706))

(assert (= (and b!2361706 (not res!1002355)) b!2361707))

(declare-fun m!2774009 () Bool)

(assert (=> b!2361705 m!2774009))

(declare-fun m!2774011 () Bool)

(assert (=> b!2361707 m!2774011))

(assert (=> b!2361308 d!694155))

(declare-fun d!694157 () Bool)

(assert (=> d!694157 true))

(declare-fun order!15493 () Int)

(declare-fun order!15491 () Int)

(declare-fun lambda!86872 () Int)

(declare-fun dynLambda!12049 (Int Int) Int)

(declare-fun dynLambda!12050 (Int Int) Int)

(assert (=> d!694157 (< (dynLambda!12049 order!15491 (toChars!6154 (transformation!4447 (h!33347 rules!1706)))) (dynLambda!12050 order!15493 lambda!86872))))

(assert (=> d!694157 true))

(assert (=> d!694157 (< (dynLambda!12047 order!15487 (toValue!6295 (transformation!4447 (h!33347 rules!1706)))) (dynLambda!12050 order!15493 lambda!86872))))

(declare-fun Forall!1132 (Int) Bool)

(assert (=> d!694157 (= (semiInverseModEq!1828 (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toValue!6295 (transformation!4447 (h!33347 rules!1706)))) (Forall!1132 lambda!86872))))

(declare-fun bs!460564 () Bool)

(assert (= bs!460564 d!694157))

(declare-fun m!2774013 () Bool)

(assert (=> bs!460564 m!2774013))

(assert (=> d!693993 d!694157))

(declare-fun d!694159 () Bool)

(declare-fun lt!864596 () Int)

(assert (=> d!694159 (>= lt!864596 0)))

(declare-fun e!1508427 () Int)

(assert (=> d!694159 (= lt!864596 e!1508427)))

(declare-fun c!375387 () Bool)

(assert (=> d!694159 (= c!375387 ((_ is Nil!27945) lt!864479))))

(assert (=> d!694159 (= (size!22128 lt!864479) lt!864596)))

(declare-fun b!2361712 () Bool)

(assert (=> b!2361712 (= e!1508427 0)))

(declare-fun b!2361713 () Bool)

(assert (=> b!2361713 (= e!1508427 (+ 1 (size!22128 (t!207982 lt!864479))))))

(assert (= (and d!694159 c!375387) b!2361712))

(assert (= (and d!694159 (not c!375387)) b!2361713))

(declare-fun m!2774015 () Bool)

(assert (=> b!2361713 m!2774015))

(assert (=> b!2361287 d!694159))

(declare-fun d!694161 () Bool)

(declare-fun lt!864597 () Int)

(assert (=> d!694161 (>= lt!864597 0)))

(declare-fun e!1508428 () Int)

(assert (=> d!694161 (= lt!864597 e!1508428)))

(declare-fun c!375388 () Bool)

(assert (=> d!694161 (= c!375388 ((_ is Nil!27945) (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))

(assert (=> d!694161 (= (size!22128 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) lt!864597)))

(declare-fun b!2361714 () Bool)

(assert (=> b!2361714 (= e!1508428 0)))

(declare-fun b!2361715 () Bool)

(assert (=> b!2361715 (= e!1508428 (+ 1 (size!22128 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))))

(assert (= (and d!694161 c!375388) b!2361714))

(assert (= (and d!694161 (not c!375388)) b!2361715))

(declare-fun m!2774017 () Bool)

(assert (=> b!2361715 m!2774017))

(assert (=> b!2361287 d!694161))

(declare-fun d!694163 () Bool)

(declare-fun lt!864598 () Int)

(assert (=> d!694163 (>= lt!864598 0)))

(declare-fun e!1508429 () Int)

(assert (=> d!694163 (= lt!864598 e!1508429)))

(declare-fun c!375389 () Bool)

(assert (=> d!694163 (= c!375389 ((_ is Nil!27945) (_2!16382 (v!30859 lt!864429))))))

(assert (=> d!694163 (= (size!22128 (_2!16382 (v!30859 lt!864429))) lt!864598)))

(declare-fun b!2361716 () Bool)

(assert (=> b!2361716 (= e!1508429 0)))

(declare-fun b!2361717 () Bool)

(assert (=> b!2361717 (= e!1508429 (+ 1 (size!22128 (t!207982 (_2!16382 (v!30859 lt!864429))))))))

(assert (= (and d!694163 c!375389) b!2361716))

(assert (= (and d!694163 (not c!375389)) b!2361717))

(declare-fun m!2774019 () Bool)

(assert (=> b!2361717 m!2774019))

(assert (=> b!2361287 d!694163))

(declare-fun d!694165 () Bool)

(assert (=> d!694165 (= (isEmpty!15876 (_1!16381 lt!864503)) ((_ is Nil!27947) (_1!16381 lt!864503)))))

(assert (=> b!2361367 d!694165))

(declare-fun d!694167 () Bool)

(declare-fun e!1508430 () Bool)

(assert (=> d!694167 e!1508430))

(declare-fun res!1002357 () Bool)

(assert (=> d!694167 (=> (not res!1002357) (not e!1508430))))

(declare-fun lt!864599 () List!28043)

(assert (=> d!694167 (= res!1002357 (= (content!3797 lt!864599) ((_ map or) (content!3797 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))) (content!3797 (_2!16382 (v!30859 lt!864429))))))))

(declare-fun e!1508431 () List!28043)

(assert (=> d!694167 (= lt!864599 e!1508431)))

(declare-fun c!375390 () Bool)

(assert (=> d!694167 (= c!375390 ((_ is Nil!27945) (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))))))

(assert (=> d!694167 (= (++!6880 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))) (_2!16382 (v!30859 lt!864429))) lt!864599)))

(declare-fun b!2361718 () Bool)

(assert (=> b!2361718 (= e!1508431 (_2!16382 (v!30859 lt!864429)))))

(declare-fun b!2361721 () Bool)

(assert (=> b!2361721 (= e!1508430 (or (not (= (_2!16382 (v!30859 lt!864429)) Nil!27945)) (= lt!864599 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429))))))))))

(declare-fun b!2361720 () Bool)

(declare-fun res!1002356 () Bool)

(assert (=> b!2361720 (=> (not res!1002356) (not e!1508430))))

(assert (=> b!2361720 (= res!1002356 (= (size!22128 lt!864599) (+ (size!22128 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))) (size!22128 (_2!16382 (v!30859 lt!864429))))))))

(declare-fun b!2361719 () Bool)

(assert (=> b!2361719 (= e!1508431 (Cons!27945 (h!33346 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))) (++!6880 (t!207982 (t!207982 (list!11087 (charsOf!2807 (_1!16382 (v!30859 lt!864429)))))) (_2!16382 (v!30859 lt!864429)))))))

(assert (= (and d!694167 c!375390) b!2361718))

(assert (= (and d!694167 (not c!375390)) b!2361719))

(assert (= (and d!694167 res!1002357) b!2361720))

(assert (= (and b!2361720 res!1002356) b!2361721))

(declare-fun m!2774021 () Bool)

(assert (=> d!694167 m!2774021))

(assert (=> d!694167 m!2773977))

(assert (=> d!694167 m!2773547))

(declare-fun m!2774023 () Bool)

(assert (=> b!2361720 m!2774023))

(assert (=> b!2361720 m!2774017))

(assert (=> b!2361720 m!2773553))

(declare-fun m!2774025 () Bool)

(assert (=> b!2361719 m!2774025))

(assert (=> b!2361286 d!694167))

(declare-fun d!694169 () Bool)

(declare-fun lt!864600 () Int)

(assert (=> d!694169 (>= lt!864600 0)))

(declare-fun e!1508432 () Int)

(assert (=> d!694169 (= lt!864600 e!1508432)))

(declare-fun c!375391 () Bool)

(assert (=> d!694169 (= c!375391 ((_ is Nil!27945) (_2!16381 lt!864503)))))

(assert (=> d!694169 (= (size!22128 (_2!16381 lt!864503)) lt!864600)))

(declare-fun b!2361722 () Bool)

(assert (=> b!2361722 (= e!1508432 0)))

(declare-fun b!2361723 () Bool)

(assert (=> b!2361723 (= e!1508432 (+ 1 (size!22128 (t!207982 (_2!16381 lt!864503)))))))

(assert (= (and d!694169 c!375391) b!2361722))

(assert (= (and d!694169 (not c!375391)) b!2361723))

(declare-fun m!2774027 () Bool)

(assert (=> b!2361723 m!2774027))

(assert (=> b!2361366 d!694169))

(assert (=> b!2361366 d!694163))

(declare-fun b!2361724 () Bool)

(declare-fun e!1508433 () Bool)

(assert (=> b!2361724 (= e!1508433 tp_is_empty!11227)))

(assert (=> b!2361386 (= tp!755161 e!1508433)))

(declare-fun b!2361727 () Bool)

(declare-fun tp!755179 () Bool)

(declare-fun tp!755178 () Bool)

(assert (=> b!2361727 (= e!1508433 (and tp!755179 tp!755178))))

(declare-fun b!2361725 () Bool)

(declare-fun tp!755181 () Bool)

(declare-fun tp!755182 () Bool)

(assert (=> b!2361725 (= e!1508433 (and tp!755181 tp!755182))))

(declare-fun b!2361726 () Bool)

(declare-fun tp!755180 () Bool)

(assert (=> b!2361726 (= e!1508433 tp!755180)))

(assert (= (and b!2361386 ((_ is ElementMatch!6905) (reg!7234 (regex!4447 (h!33347 rules!1706))))) b!2361724))

(assert (= (and b!2361386 ((_ is Concat!11539) (reg!7234 (regex!4447 (h!33347 rules!1706))))) b!2361725))

(assert (= (and b!2361386 ((_ is Star!6905) (reg!7234 (regex!4447 (h!33347 rules!1706))))) b!2361726))

(assert (= (and b!2361386 ((_ is Union!6905) (reg!7234 (regex!4447 (h!33347 rules!1706))))) b!2361727))

(declare-fun b!2361728 () Bool)

(declare-fun e!1508434 () Bool)

(assert (=> b!2361728 (= e!1508434 tp_is_empty!11227)))

(assert (=> b!2361385 (= tp!755162 e!1508434)))

(declare-fun b!2361731 () Bool)

(declare-fun tp!755184 () Bool)

(declare-fun tp!755183 () Bool)

(assert (=> b!2361731 (= e!1508434 (and tp!755184 tp!755183))))

(declare-fun b!2361729 () Bool)

(declare-fun tp!755186 () Bool)

(declare-fun tp!755187 () Bool)

(assert (=> b!2361729 (= e!1508434 (and tp!755186 tp!755187))))

(declare-fun b!2361730 () Bool)

(declare-fun tp!755185 () Bool)

(assert (=> b!2361730 (= e!1508434 tp!755185)))

(assert (= (and b!2361385 ((_ is ElementMatch!6905) (regOne!14322 (regex!4447 (h!33347 rules!1706))))) b!2361728))

(assert (= (and b!2361385 ((_ is Concat!11539) (regOne!14322 (regex!4447 (h!33347 rules!1706))))) b!2361729))

(assert (= (and b!2361385 ((_ is Star!6905) (regOne!14322 (regex!4447 (h!33347 rules!1706))))) b!2361730))

(assert (= (and b!2361385 ((_ is Union!6905) (regOne!14322 (regex!4447 (h!33347 rules!1706))))) b!2361731))

(declare-fun b!2361732 () Bool)

(declare-fun e!1508435 () Bool)

(assert (=> b!2361732 (= e!1508435 tp_is_empty!11227)))

(assert (=> b!2361385 (= tp!755163 e!1508435)))

(declare-fun b!2361735 () Bool)

(declare-fun tp!755189 () Bool)

(declare-fun tp!755188 () Bool)

(assert (=> b!2361735 (= e!1508435 (and tp!755189 tp!755188))))

(declare-fun b!2361733 () Bool)

(declare-fun tp!755191 () Bool)

(declare-fun tp!755192 () Bool)

(assert (=> b!2361733 (= e!1508435 (and tp!755191 tp!755192))))

(declare-fun b!2361734 () Bool)

(declare-fun tp!755190 () Bool)

(assert (=> b!2361734 (= e!1508435 tp!755190)))

(assert (= (and b!2361385 ((_ is ElementMatch!6905) (regTwo!14322 (regex!4447 (h!33347 rules!1706))))) b!2361732))

(assert (= (and b!2361385 ((_ is Concat!11539) (regTwo!14322 (regex!4447 (h!33347 rules!1706))))) b!2361733))

(assert (= (and b!2361385 ((_ is Star!6905) (regTwo!14322 (regex!4447 (h!33347 rules!1706))))) b!2361734))

(assert (= (and b!2361385 ((_ is Union!6905) (regTwo!14322 (regex!4447 (h!33347 rules!1706))))) b!2361735))

(declare-fun tp!755200 () Bool)

(declare-fun e!1508441 () Bool)

(declare-fun b!2361744 () Bool)

(declare-fun tp!755201 () Bool)

(assert (=> b!2361744 (= e!1508441 (and (inv!38172 (left!21245 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))) tp!755201 (inv!38172 (right!21575 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))) tp!755200))))

(declare-fun b!2361746 () Bool)

(declare-fun e!1508440 () Bool)

(declare-fun tp!755199 () Bool)

(assert (=> b!2361746 (= e!1508440 tp!755199)))

(declare-fun b!2361745 () Bool)

(declare-fun inv!38178 (IArray!18303) Bool)

(assert (=> b!2361745 (= e!1508441 (and (inv!38178 (xs!12129 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))) e!1508440))))

(assert (=> b!2361308 (= tp!755115 (and (inv!38172 (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429)))))) e!1508441))))

(assert (= (and b!2361308 ((_ is Node!9149) (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))) b!2361744))

(assert (= b!2361745 b!2361746))

(assert (= (and b!2361308 ((_ is Leaf!13506) (c!375285 (dynLambda!12041 (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))) (value!141615 (_1!16382 (v!30859 lt!864429))))))) b!2361745))

(declare-fun m!2774029 () Bool)

(assert (=> b!2361744 m!2774029))

(declare-fun m!2774031 () Bool)

(assert (=> b!2361744 m!2774031))

(declare-fun m!2774033 () Bool)

(assert (=> b!2361745 m!2774033))

(assert (=> b!2361308 m!2773583))

(declare-fun b!2361747 () Bool)

(declare-fun e!1508442 () Bool)

(assert (=> b!2361747 (= e!1508442 tp_is_empty!11227)))

(assert (=> b!2361397 (= tp!755174 e!1508442)))

(declare-fun b!2361750 () Bool)

(declare-fun tp!755203 () Bool)

(declare-fun tp!755202 () Bool)

(assert (=> b!2361750 (= e!1508442 (and tp!755203 tp!755202))))

(declare-fun b!2361748 () Bool)

(declare-fun tp!755205 () Bool)

(declare-fun tp!755206 () Bool)

(assert (=> b!2361748 (= e!1508442 (and tp!755205 tp!755206))))

(declare-fun b!2361749 () Bool)

(declare-fun tp!755204 () Bool)

(assert (=> b!2361749 (= e!1508442 tp!755204)))

(assert (= (and b!2361397 ((_ is ElementMatch!6905) (regex!4447 (h!33347 (t!207983 rules!1706))))) b!2361747))

(assert (= (and b!2361397 ((_ is Concat!11539) (regex!4447 (h!33347 (t!207983 rules!1706))))) b!2361748))

(assert (= (and b!2361397 ((_ is Star!6905) (regex!4447 (h!33347 (t!207983 rules!1706))))) b!2361749))

(assert (= (and b!2361397 ((_ is Union!6905) (regex!4447 (h!33347 (t!207983 rules!1706))))) b!2361750))

(declare-fun b!2361753 () Bool)

(declare-fun b_free!70541 () Bool)

(declare-fun b_next!71245 () Bool)

(assert (=> b!2361753 (= b_free!70541 (not b_next!71245))))

(declare-fun t!208013 () Bool)

(declare-fun tb!138825 () Bool)

(assert (=> (and b!2361753 (= (toValue!6295 (transformation!4447 (h!33347 (t!207983 (t!207983 rules!1706))))) (toValue!6295 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208013) tb!138825))

(declare-fun result!169798 () Bool)

(assert (= result!169798 result!169790))

(assert (=> d!694085 t!208013))

(declare-fun tp!755207 () Bool)

(declare-fun b_and!185533 () Bool)

(assert (=> b!2361753 (= tp!755207 (and (=> t!208013 result!169798) b_and!185533))))

(declare-fun b_free!70543 () Bool)

(declare-fun b_next!71247 () Bool)

(assert (=> b!2361753 (= b_free!70543 (not b_next!71247))))

(declare-fun tb!138827 () Bool)

(declare-fun t!208015 () Bool)

(assert (=> (and b!2361753 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 (t!207983 rules!1706))))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429)))))) t!208015) tb!138827))

(declare-fun result!169800 () Bool)

(assert (= result!169800 result!169756))

(assert (=> d!694015 t!208015))

(declare-fun t!208017 () Bool)

(declare-fun tb!138829 () Bool)

(assert (=> (and b!2361753 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 (t!207983 rules!1706))))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (get!8478 lt!864448)))))) t!208017) tb!138829))

(declare-fun result!169802 () Bool)

(assert (= result!169802 result!169786))

(assert (=> d!694071 t!208017))

(declare-fun tp!755208 () Bool)

(declare-fun b_and!185535 () Bool)

(assert (=> b!2361753 (= tp!755208 (and (=> t!208015 result!169800) (=> t!208017 result!169802) b_and!185535))))

(declare-fun e!1508444 () Bool)

(assert (=> b!2361753 (= e!1508444 (and tp!755207 tp!755208))))

(declare-fun tp!755209 () Bool)

(declare-fun e!1508445 () Bool)

(declare-fun b!2361752 () Bool)

(assert (=> b!2361752 (= e!1508445 (and tp!755209 (inv!38167 (tag!4937 (h!33347 (t!207983 (t!207983 rules!1706))))) (inv!38169 (transformation!4447 (h!33347 (t!207983 (t!207983 rules!1706))))) e!1508444))))

(declare-fun b!2361751 () Bool)

(declare-fun e!1508446 () Bool)

(declare-fun tp!755210 () Bool)

(assert (=> b!2361751 (= e!1508446 (and e!1508445 tp!755210))))

(assert (=> b!2361396 (= tp!755175 e!1508446)))

(assert (= b!2361752 b!2361753))

(assert (= b!2361751 b!2361752))

(assert (= (and b!2361396 ((_ is Cons!27946) (t!207983 (t!207983 rules!1706)))) b!2361751))

(declare-fun m!2774035 () Bool)

(assert (=> b!2361752 m!2774035))

(declare-fun m!2774037 () Bool)

(assert (=> b!2361752 m!2774037))

(declare-fun b!2361754 () Bool)

(declare-fun e!1508447 () Bool)

(assert (=> b!2361754 (= e!1508447 tp_is_empty!11227)))

(assert (=> b!2361387 (= tp!755160 e!1508447)))

(declare-fun b!2361757 () Bool)

(declare-fun tp!755212 () Bool)

(declare-fun tp!755211 () Bool)

(assert (=> b!2361757 (= e!1508447 (and tp!755212 tp!755211))))

(declare-fun b!2361755 () Bool)

(declare-fun tp!755214 () Bool)

(declare-fun tp!755215 () Bool)

(assert (=> b!2361755 (= e!1508447 (and tp!755214 tp!755215))))

(declare-fun b!2361756 () Bool)

(declare-fun tp!755213 () Bool)

(assert (=> b!2361756 (= e!1508447 tp!755213)))

(assert (= (and b!2361387 ((_ is ElementMatch!6905) (regOne!14323 (regex!4447 (h!33347 rules!1706))))) b!2361754))

(assert (= (and b!2361387 ((_ is Concat!11539) (regOne!14323 (regex!4447 (h!33347 rules!1706))))) b!2361755))

(assert (= (and b!2361387 ((_ is Star!6905) (regOne!14323 (regex!4447 (h!33347 rules!1706))))) b!2361756))

(assert (= (and b!2361387 ((_ is Union!6905) (regOne!14323 (regex!4447 (h!33347 rules!1706))))) b!2361757))

(declare-fun b!2361758 () Bool)

(declare-fun e!1508448 () Bool)

(assert (=> b!2361758 (= e!1508448 tp_is_empty!11227)))

(assert (=> b!2361387 (= tp!755159 e!1508448)))

(declare-fun b!2361761 () Bool)

(declare-fun tp!755217 () Bool)

(declare-fun tp!755216 () Bool)

(assert (=> b!2361761 (= e!1508448 (and tp!755217 tp!755216))))

(declare-fun b!2361759 () Bool)

(declare-fun tp!755219 () Bool)

(declare-fun tp!755220 () Bool)

(assert (=> b!2361759 (= e!1508448 (and tp!755219 tp!755220))))

(declare-fun b!2361760 () Bool)

(declare-fun tp!755218 () Bool)

(assert (=> b!2361760 (= e!1508448 tp!755218)))

(assert (= (and b!2361387 ((_ is ElementMatch!6905) (regTwo!14323 (regex!4447 (h!33347 rules!1706))))) b!2361758))

(assert (= (and b!2361387 ((_ is Concat!11539) (regTwo!14323 (regex!4447 (h!33347 rules!1706))))) b!2361759))

(assert (= (and b!2361387 ((_ is Star!6905) (regTwo!14323 (regex!4447 (h!33347 rules!1706))))) b!2361760))

(assert (= (and b!2361387 ((_ is Union!6905) (regTwo!14323 (regex!4447 (h!33347 rules!1706))))) b!2361761))

(declare-fun b!2361762 () Bool)

(declare-fun e!1508449 () Bool)

(declare-fun tp!755221 () Bool)

(assert (=> b!2361762 (= e!1508449 (and tp_is_empty!11227 tp!755221))))

(assert (=> b!2361373 (= tp!755148 e!1508449)))

(assert (= (and b!2361373 ((_ is Cons!27945) (t!207982 (t!207982 input!1160)))) b!2361762))

(declare-fun b_lambda!73799 () Bool)

(assert (= b_lambda!73789 (or (and b!2361170 b_free!70531 (= (toChars!6154 (transformation!4447 (h!33347 rules!1706))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))))) (and b!2361398 b_free!70539 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 rules!1706)))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))))) (and b!2361753 b_free!70543 (= (toChars!6154 (transformation!4447 (h!33347 (t!207983 (t!207983 rules!1706))))) (toChars!6154 (transformation!4447 (rule!6803 (_1!16382 (v!30859 lt!864429))))))) b_lambda!73799)))

(check-sat (not b!2361693) (not d!694097) (not b_next!71245) (not b!2361555) (not b!2361642) (not b!2361731) (not b!2361713) (not d!694167) (not b!2361748) (not b!2361308) (not b!2361640) (not d!694137) (not b!2361569) (not b!2361715) (not d!694031) (not b!2361662) (not b!2361523) (not d!694071) (not tb!138821) (not b!2361707) (not b!2361565) (not b!2361755) (not b_next!71247) (not b!2361559) (not b_next!71243) (not b!2361554) (not d!694091) (not d!694069) (not b!2361656) (not d!694049) (not b!2361496) (not b_lambda!73795) (not b!2361518) (not b!2361660) (not b!2361726) (not b!2361659) (not b!2361635) (not b!2361437) (not b!2361538) (not b!2361687) (not d!694079) (not b!2361503) (not d!694033) (not b!2361729) (not d!694153) (not b!2361761) (not b!2361499) (not b!2361556) (not b!2361410) (not b!2361735) (not b!2361717) (not b!2361675) (not b!2361409) (not b!2361553) (not d!694023) (not b!2361567) (not b!2361497) (not b!2361745) (not b_next!71235) (not b!2361723) (not b!2361705) (not b_next!71233) (not b!2361500) (not tb!138817) (not b!2361657) (not b!2361752) (not b!2361730) tp_is_empty!11227 (not b!2361686) (not b!2361671) (not b!2361653) (not b!2361733) (not b!2361749) (not b_lambda!73799) (not d!694151) b_and!185525 (not d!694063) (not b!2361669) (not d!694081) (not b!2361751) (not b!2361756) (not b!2361658) (not b!2361762) (not b!2361663) (not b!2361408) b_and!185529 (not b!2361654) (not b!2361436) (not b!2361630) (not b!2361634) (not b!2361552) (not b!2361744) (not d!694113) b_and!185527 (not b!2361725) (not b!2361560) b_and!185531 b_and!185533 (not b!2361757) (not b!2361557) (not b_next!71241) (not b!2361570) (not b!2361501) (not b!2361759) (not b!2361734) (not d!694025) (not bm!143670) (not bm!143671) (not b!2361689) (not b!2361720) (not b!2361719) (not b!2361692) b_and!185535 (not b!2361760) (not b!2361495) (not b!2361632) (not b!2361655) (not b!2361727) (not b!2361502) (not b_lambda!73797) (not b!2361673) (not b!2361690) (not d!694135) (not b!2361547) (not d!694111) (not d!694157) (not bm!143666) (not b!2361746) (not b!2361750))
(check-sat b_and!185525 b_and!185529 b_and!185527 (not b_next!71245) (not b_next!71241) b_and!185535 (not b_next!71247) (not b_next!71243) (not b_next!71235) (not b_next!71233) b_and!185531 b_and!185533)
