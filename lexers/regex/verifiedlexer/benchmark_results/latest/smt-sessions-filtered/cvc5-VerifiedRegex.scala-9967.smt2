; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!522154 () Bool)

(assert start!522154)

(declare-fun b!4954291 () Bool)

(declare-fun b_free!132127 () Bool)

(declare-fun b_next!132917 () Bool)

(assert (=> b!4954291 (= b_free!132127 (not b_next!132917))))

(declare-fun tp!1389041 () Bool)

(declare-fun b_and!346979 () Bool)

(assert (=> b!4954291 (= tp!1389041 b_and!346979)))

(declare-fun b_free!132129 () Bool)

(declare-fun b_next!132919 () Bool)

(assert (=> b!4954291 (= b_free!132129 (not b_next!132919))))

(declare-fun tp!1389039 () Bool)

(declare-fun b_and!346981 () Bool)

(assert (=> b!4954291 (= tp!1389039 b_and!346981)))

(declare-fun e!3095561 () Bool)

(assert (=> b!4954291 (= e!3095561 (and tp!1389041 tp!1389039))))

(declare-fun res!2113658 () Bool)

(declare-fun e!3095569 () Bool)

(assert (=> start!522154 (=> (not res!2113658) (not e!3095569))))

(declare-datatypes ((LexerInterface!7877 0))(
  ( (LexerInterfaceExt!7874 (__x!34483 Int)) (Lexer!7875) )
))
(declare-fun thiss!15247 () LexerInterface!7877)

(assert (=> start!522154 (= res!2113658 (is-Lexer!7875 thiss!15247))))

(assert (=> start!522154 e!3095569))

(assert (=> start!522154 true))

(declare-fun e!3095571 () Bool)

(assert (=> start!522154 e!3095571))

(declare-datatypes ((C!27286 0))(
  ( (C!27287 (val!23009 Int)) )
))
(declare-datatypes ((List!57241 0))(
  ( (Nil!57117) (Cons!57117 (h!63565 C!27286) (t!367807 List!57241)) )
))
(declare-datatypes ((IArray!30135 0))(
  ( (IArray!30136 (innerList!15125 List!57241)) )
))
(declare-datatypes ((Conc!15037 0))(
  ( (Node!15037 (left!41666 Conc!15037) (right!41996 Conc!15037) (csize!30304 Int) (cheight!15248 Int)) (Leaf!25005 (xs!18363 IArray!30135) (csize!30305 Int)) (Empty!15037) )
))
(declare-datatypes ((BalanceConc!29504 0))(
  ( (BalanceConc!29505 (c!846010 Conc!15037)) )
))
(declare-fun input!1342 () BalanceConc!29504)

(declare-fun e!3095563 () Bool)

(declare-fun inv!74477 (BalanceConc!29504) Bool)

(assert (=> start!522154 (and (inv!74477 input!1342) e!3095563)))

(declare-fun totalInput!464 () BalanceConc!29504)

(declare-fun e!3095572 () Bool)

(assert (=> start!522154 (and (inv!74477 totalInput!464) e!3095572)))

(declare-fun b!4954292 () Bool)

(declare-fun e!3095565 () Bool)

(declare-datatypes ((List!57242 0))(
  ( (Nil!57118) (Cons!57118 (h!63566 (_ BitVec 16)) (t!367808 List!57242)) )
))
(declare-datatypes ((TokenValue!8595 0))(
  ( (FloatLiteralValue!17190 (text!60610 List!57242)) (TokenValueExt!8594 (__x!34484 Int)) (Broken!42975 (value!265544 List!57242)) (Object!8718) (End!8595) (Def!8595) (Underscore!8595) (Match!8595) (Else!8595) (Error!8595) (Case!8595) (If!8595) (Extends!8595) (Abstract!8595) (Class!8595) (Val!8595) (DelimiterValue!17190 (del!8655 List!57242)) (KeywordValue!8601 (value!265545 List!57242)) (CommentValue!17190 (value!265546 List!57242)) (WhitespaceValue!17190 (value!265547 List!57242)) (IndentationValue!8595 (value!265548 List!57242)) (String!64850) (Int32!8595) (Broken!42976 (value!265549 List!57242)) (Boolean!8596) (Unit!148011) (OperatorValue!8598 (op!8655 List!57242)) (IdentifierValue!17190 (value!265550 List!57242)) (IdentifierValue!17191 (value!265551 List!57242)) (WhitespaceValue!17191 (value!265552 List!57242)) (True!17190) (False!17190) (Broken!42977 (value!265553 List!57242)) (Broken!42978 (value!265554 List!57242)) (True!17191) (RightBrace!8595) (RightBracket!8595) (Colon!8595) (Null!8595) (Comma!8595) (LeftBracket!8595) (False!17191) (LeftBrace!8595) (ImaginaryLiteralValue!8595 (text!60611 List!57242)) (StringLiteralValue!25785 (value!265555 List!57242)) (EOFValue!8595 (value!265556 List!57242)) (IdentValue!8595 (value!265557 List!57242)) (DelimiterValue!17191 (value!265558 List!57242)) (DedentValue!8595 (value!265559 List!57242)) (NewLineValue!8595 (value!265560 List!57242)) (IntegerValue!25785 (value!265561 (_ BitVec 32)) (text!60612 List!57242)) (IntegerValue!25786 (value!265562 Int) (text!60613 List!57242)) (Times!8595) (Or!8595) (Equal!8595) (Minus!8595) (Broken!42979 (value!265563 List!57242)) (And!8595) (Div!8595) (LessEqual!8595) (Mod!8595) (Concat!22113) (Not!8595) (Plus!8595) (SpaceValue!8595 (value!265564 List!57242)) (IntegerValue!25787 (value!265565 Int) (text!60614 List!57242)) (StringLiteralValue!25786 (text!60615 List!57242)) (FloatLiteralValue!17191 (text!60616 List!57242)) (BytesLiteralValue!8595 (value!265566 List!57242)) (CommentValue!17191 (value!265567 List!57242)) (StringLiteralValue!25787 (value!265568 List!57242)) (ErrorTokenValue!8595 (msg!8656 List!57242)) )
))
(declare-datatypes ((Regex!13518 0))(
  ( (ElementMatch!13518 (c!846011 C!27286)) (Concat!22114 (regOne!27548 Regex!13518) (regTwo!27548 Regex!13518)) (EmptyExpr!13518) (Star!13518 (reg!13847 Regex!13518)) (EmptyLang!13518) (Union!13518 (regOne!27549 Regex!13518) (regTwo!27549 Regex!13518)) )
))
(declare-datatypes ((String!64851 0))(
  ( (String!64852 (value!265569 String)) )
))
(declare-datatypes ((TokenValueInjection!16498 0))(
  ( (TokenValueInjection!16499 (toValue!11236 Int) (toChars!11095 Int)) )
))
(declare-datatypes ((Rule!16370 0))(
  ( (Rule!16371 (regex!8285 Regex!13518) (tag!9149 String!64851) (isSeparator!8285 Bool) (transformation!8285 TokenValueInjection!16498)) )
))
(declare-datatypes ((Token!15078 0))(
  ( (Token!15079 (value!265570 TokenValue!8595) (rule!11499 Rule!16370) (size!37899 Int) (originalCharacters!8570 List!57241)) )
))
(declare-datatypes ((tuple2!61664 0))(
  ( (tuple2!61665 (_1!34135 Token!15078) (_2!34135 List!57241)) )
))
(declare-datatypes ((Option!14253 0))(
  ( (None!14252) (Some!14252 (v!50237 tuple2!61664)) )
))
(declare-fun lt!2044747 () Option!14253)

(declare-fun isDefined!11206 (Option!14253) Bool)

(assert (=> b!4954292 (= e!3095565 (isDefined!11206 lt!2044747))))

(declare-fun b!4954293 () Bool)

(declare-fun tp!1389042 () Bool)

(declare-fun inv!74478 (Conc!15037) Bool)

(assert (=> b!4954293 (= e!3095572 (and (inv!74478 (c!846010 totalInput!464)) tp!1389042))))

(declare-fun b!4954294 () Bool)

(declare-fun res!2113654 () Bool)

(declare-fun e!3095560 () Bool)

(assert (=> b!4954294 (=> res!2113654 e!3095560)))

(declare-fun lt!2044740 () Bool)

(assert (=> b!4954294 (= res!2113654 lt!2044740)))

(declare-fun b!4954295 () Bool)

(declare-fun e!3095568 () Bool)

(declare-fun e!3095573 () Bool)

(assert (=> b!4954295 (= e!3095568 (not e!3095573))))

(declare-fun res!2113662 () Bool)

(assert (=> b!4954295 (=> res!2113662 e!3095573)))

(declare-datatypes ((List!57243 0))(
  ( (Nil!57119) (Cons!57119 (h!63567 Rule!16370) (t!367809 List!57243)) )
))
(declare-fun rulesArg!259 () List!57243)

(assert (=> b!4954295 (= res!2113662 (or (not (is-Cons!57119 rulesArg!259)) (not (is-Nil!57119 (t!367809 rulesArg!259)))))))

(declare-fun lt!2044744 () List!57241)

(declare-fun isPrefix!5138 (List!57241 List!57241) Bool)

(assert (=> b!4954295 (isPrefix!5138 lt!2044744 lt!2044744)))

(declare-datatypes ((Unit!148012 0))(
  ( (Unit!148013) )
))
(declare-fun lt!2044745 () Unit!148012)

(declare-fun lemmaIsPrefixRefl!3462 (List!57241 List!57241) Unit!148012)

(assert (=> b!4954295 (= lt!2044745 (lemmaIsPrefixRefl!3462 lt!2044744 lt!2044744))))

(declare-fun b!4954296 () Bool)

(declare-fun e!3095564 () Bool)

(assert (=> b!4954296 (= e!3095564 e!3095560)))

(declare-fun res!2113656 () Bool)

(assert (=> b!4954296 (=> res!2113656 e!3095560)))

(declare-fun e!3095562 () Bool)

(assert (=> b!4954296 (= res!2113656 e!3095562)))

(declare-fun res!2113661 () Bool)

(assert (=> b!4954296 (=> (not res!2113661) (not e!3095562))))

(assert (=> b!4954296 (= res!2113661 (not lt!2044740))))

(declare-fun lt!2044742 () Bool)

(assert (=> b!4954296 (= lt!2044740 (not lt!2044742))))

(declare-fun b!4954297 () Bool)

(declare-fun e!3095570 () Bool)

(declare-fun tp!1389037 () Bool)

(assert (=> b!4954297 (= e!3095571 (and e!3095570 tp!1389037))))

(declare-fun b!4954298 () Bool)

(declare-fun e!3095567 () Bool)

(declare-datatypes ((tuple2!61666 0))(
  ( (tuple2!61667 (_1!34136 Token!15078) (_2!34136 BalanceConc!29504)) )
))
(declare-fun lt!2044741 () tuple2!61666)

(declare-fun lt!2044746 () tuple2!61664)

(declare-fun list!18219 (BalanceConc!29504) List!57241)

(assert (=> b!4954298 (= e!3095567 (not (= (list!18219 (_2!34136 lt!2044741)) (_2!34135 lt!2044746))))))

(declare-fun b!4954299 () Bool)

(assert (=> b!4954299 (= e!3095569 e!3095568)))

(declare-fun res!2113655 () Bool)

(assert (=> b!4954299 (=> (not res!2113655) (not e!3095568))))

(declare-fun isSuffix!1084 (List!57241 List!57241) Bool)

(assert (=> b!4954299 (= res!2113655 (isSuffix!1084 lt!2044744 (list!18219 totalInput!464)))))

(assert (=> b!4954299 (= lt!2044744 (list!18219 input!1342))))

(declare-fun b!4954300 () Bool)

(assert (=> b!4954300 (= e!3095573 e!3095564)))

(declare-fun res!2113663 () Bool)

(assert (=> b!4954300 (=> res!2113663 e!3095564)))

(declare-fun lt!2044743 () Option!14253)

(assert (=> b!4954300 (= res!2113663 (not (= lt!2044742 (isDefined!11206 lt!2044743))))))

(declare-datatypes ((Option!14254 0))(
  ( (None!14253) (Some!14253 (v!50238 tuple2!61666)) )
))
(declare-fun lt!2044748 () Option!14254)

(declare-fun isDefined!11207 (Option!14254) Bool)

(assert (=> b!4954300 (= lt!2044742 (isDefined!11207 lt!2044748))))

(declare-fun maxPrefixZipper!696 (LexerInterface!7877 List!57243 List!57241) Option!14253)

(assert (=> b!4954300 (= lt!2044743 (maxPrefixZipper!696 thiss!15247 rulesArg!259 lt!2044744))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!273 (LexerInterface!7877 Rule!16370 BalanceConc!29504 BalanceConc!29504) Option!14254)

(assert (=> b!4954300 (= lt!2044748 (maxPrefixOneRuleZipperSequenceV2!273 thiss!15247 (h!63567 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4954301 () Bool)

(declare-fun tp!1389038 () Bool)

(declare-fun inv!74474 (String!64851) Bool)

(declare-fun inv!74479 (TokenValueInjection!16498) Bool)

(assert (=> b!4954301 (= e!3095570 (and tp!1389038 (inv!74474 (tag!9149 (h!63567 rulesArg!259))) (inv!74479 (transformation!8285 (h!63567 rulesArg!259))) e!3095561))))

(declare-fun b!4954302 () Bool)

(assert (=> b!4954302 (= e!3095560 e!3095565)))

(declare-fun res!2113657 () Bool)

(assert (=> b!4954302 (=> res!2113657 e!3095565)))

(declare-fun get!19742 (Option!14254) tuple2!61666)

(declare-fun get!19743 (Option!14253) tuple2!61664)

(assert (=> b!4954302 (= res!2113657 (not (= (_1!34136 (get!19742 lt!2044748)) (_1!34135 (get!19743 lt!2044747)))))))

(declare-fun maxPrefix!4618 (LexerInterface!7877 List!57243 List!57241) Option!14253)

(assert (=> b!4954302 (= lt!2044747 (maxPrefix!4618 thiss!15247 rulesArg!259 lt!2044744))))

(declare-fun b!4954303 () Bool)

(declare-fun res!2113660 () Bool)

(assert (=> b!4954303 (=> (not res!2113660) (not e!3095569))))

(declare-fun isEmpty!30713 (List!57243) Bool)

(assert (=> b!4954303 (= res!2113660 (not (isEmpty!30713 rulesArg!259)))))

(declare-fun b!4954304 () Bool)

(assert (=> b!4954304 (= e!3095562 e!3095567)))

(declare-fun res!2113653 () Bool)

(assert (=> b!4954304 (=> res!2113653 e!3095567)))

(assert (=> b!4954304 (= res!2113653 (not (= (_1!34136 lt!2044741) (_1!34135 lt!2044746))))))

(assert (=> b!4954304 (= lt!2044746 (get!19743 lt!2044743))))

(assert (=> b!4954304 (= lt!2044741 (get!19742 lt!2044748))))

(declare-fun b!4954305 () Bool)

(declare-fun res!2113659 () Bool)

(assert (=> b!4954305 (=> (not res!2113659) (not e!3095569))))

(declare-fun rulesValidInductive!3188 (LexerInterface!7877 List!57243) Bool)

(assert (=> b!4954305 (= res!2113659 (rulesValidInductive!3188 thiss!15247 rulesArg!259))))

(declare-fun b!4954306 () Bool)

(declare-fun tp!1389040 () Bool)

(assert (=> b!4954306 (= e!3095563 (and (inv!74478 (c!846010 input!1342)) tp!1389040))))

(assert (= (and start!522154 res!2113658) b!4954305))

(assert (= (and b!4954305 res!2113659) b!4954303))

(assert (= (and b!4954303 res!2113660) b!4954299))

(assert (= (and b!4954299 res!2113655) b!4954295))

(assert (= (and b!4954295 (not res!2113662)) b!4954300))

(assert (= (and b!4954300 (not res!2113663)) b!4954296))

(assert (= (and b!4954296 res!2113661) b!4954304))

(assert (= (and b!4954304 (not res!2113653)) b!4954298))

(assert (= (and b!4954296 (not res!2113656)) b!4954294))

(assert (= (and b!4954294 (not res!2113654)) b!4954302))

(assert (= (and b!4954302 (not res!2113657)) b!4954292))

(assert (= b!4954301 b!4954291))

(assert (= b!4954297 b!4954301))

(assert (= (and start!522154 (is-Cons!57119 rulesArg!259)) b!4954297))

(assert (= start!522154 b!4954306))

(assert (= start!522154 b!4954293))

(declare-fun m!5978988 () Bool)

(assert (=> b!4954293 m!5978988))

(declare-fun m!5978990 () Bool)

(assert (=> b!4954302 m!5978990))

(declare-fun m!5978992 () Bool)

(assert (=> b!4954302 m!5978992))

(declare-fun m!5978994 () Bool)

(assert (=> b!4954302 m!5978994))

(declare-fun m!5978996 () Bool)

(assert (=> b!4954295 m!5978996))

(declare-fun m!5978998 () Bool)

(assert (=> b!4954295 m!5978998))

(declare-fun m!5979000 () Bool)

(assert (=> b!4954306 m!5979000))

(declare-fun m!5979002 () Bool)

(assert (=> b!4954299 m!5979002))

(assert (=> b!4954299 m!5979002))

(declare-fun m!5979004 () Bool)

(assert (=> b!4954299 m!5979004))

(declare-fun m!5979006 () Bool)

(assert (=> b!4954299 m!5979006))

(declare-fun m!5979008 () Bool)

(assert (=> b!4954292 m!5979008))

(declare-fun m!5979010 () Bool)

(assert (=> b!4954304 m!5979010))

(assert (=> b!4954304 m!5978990))

(declare-fun m!5979012 () Bool)

(assert (=> b!4954298 m!5979012))

(declare-fun m!5979014 () Bool)

(assert (=> b!4954300 m!5979014))

(declare-fun m!5979016 () Bool)

(assert (=> b!4954300 m!5979016))

(declare-fun m!5979018 () Bool)

(assert (=> b!4954300 m!5979018))

(declare-fun m!5979020 () Bool)

(assert (=> b!4954300 m!5979020))

(declare-fun m!5979022 () Bool)

(assert (=> b!4954301 m!5979022))

(declare-fun m!5979024 () Bool)

(assert (=> b!4954301 m!5979024))

(declare-fun m!5979026 () Bool)

(assert (=> b!4954303 m!5979026))

(declare-fun m!5979028 () Bool)

(assert (=> start!522154 m!5979028))

(declare-fun m!5979030 () Bool)

(assert (=> start!522154 m!5979030))

(declare-fun m!5979032 () Bool)

(assert (=> b!4954305 m!5979032))

(push 1)

(assert (not b!4954293))

(assert (not b!4954305))

(assert (not b!4954299))

(assert (not b!4954297))

(assert (not b!4954298))

(assert (not start!522154))

(assert (not b!4954300))

(assert b_and!346979)

(assert (not b!4954295))

(assert (not b_next!132917))

(assert (not b!4954292))

(assert (not b!4954304))

(assert (not b!4954306))

(assert b_and!346981)

(assert (not b_next!132919))

(assert (not b!4954303))

(assert (not b!4954302))

(assert (not b!4954301))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346979)

(assert b_and!346981)

(assert (not b_next!132917))

(assert (not b_next!132919))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1595314 () Bool)

(assert (=> d!1595314 (= (get!19743 lt!2044743) (v!50237 lt!2044743))))

(assert (=> b!4954304 d!1595314))

(declare-fun d!1595316 () Bool)

(assert (=> d!1595316 (= (get!19742 lt!2044748) (v!50238 lt!2044748))))

(assert (=> b!4954304 d!1595316))

(declare-fun d!1595318 () Bool)

(assert (=> d!1595318 true))

(declare-fun lt!2044807 () Bool)

(declare-fun lambda!247045 () Int)

(declare-fun forall!13294 (List!57243 Int) Bool)

(assert (=> d!1595318 (= lt!2044807 (forall!13294 rulesArg!259 lambda!247045))))

(declare-fun e!3095628 () Bool)

(assert (=> d!1595318 (= lt!2044807 e!3095628)))

(declare-fun res!2113710 () Bool)

(assert (=> d!1595318 (=> res!2113710 e!3095628)))

(assert (=> d!1595318 (= res!2113710 (not (is-Cons!57119 rulesArg!259)))))

(assert (=> d!1595318 (= (rulesValidInductive!3188 thiss!15247 rulesArg!259) lt!2044807)))

(declare-fun b!4954371 () Bool)

(declare-fun e!3095627 () Bool)

(assert (=> b!4954371 (= e!3095628 e!3095627)))

(declare-fun res!2113711 () Bool)

(assert (=> b!4954371 (=> (not res!2113711) (not e!3095627))))

(declare-fun ruleValid!3766 (LexerInterface!7877 Rule!16370) Bool)

(assert (=> b!4954371 (= res!2113711 (ruleValid!3766 thiss!15247 (h!63567 rulesArg!259)))))

(declare-fun b!4954372 () Bool)

(assert (=> b!4954372 (= e!3095627 (rulesValidInductive!3188 thiss!15247 (t!367809 rulesArg!259)))))

(assert (= (and d!1595318 (not res!2113710)) b!4954371))

(assert (= (and b!4954371 res!2113711) b!4954372))

(declare-fun m!5979088 () Bool)

(assert (=> d!1595318 m!5979088))

(declare-fun m!5979090 () Bool)

(assert (=> b!4954371 m!5979090))

(declare-fun m!5979092 () Bool)

(assert (=> b!4954372 m!5979092))

(assert (=> b!4954305 d!1595318))

(declare-fun d!1595332 () Bool)

(declare-fun isEmpty!30715 (Option!14253) Bool)

(assert (=> d!1595332 (= (isDefined!11206 lt!2044747) (not (isEmpty!30715 lt!2044747)))))

(declare-fun bs!1182448 () Bool)

(assert (= bs!1182448 d!1595332))

(declare-fun m!5979094 () Bool)

(assert (=> bs!1182448 m!5979094))

(assert (=> b!4954292 d!1595332))

(declare-fun d!1595334 () Bool)

(assert (=> d!1595334 (= (isEmpty!30713 rulesArg!259) (is-Nil!57119 rulesArg!259))))

(assert (=> b!4954303 d!1595334))

(declare-fun d!1595336 () Bool)

(declare-fun c!846022 () Bool)

(assert (=> d!1595336 (= c!846022 (is-Node!15037 (c!846010 totalInput!464)))))

(declare-fun e!3095633 () Bool)

(assert (=> d!1595336 (= (inv!74478 (c!846010 totalInput!464)) e!3095633)))

(declare-fun b!4954381 () Bool)

(declare-fun inv!74483 (Conc!15037) Bool)

(assert (=> b!4954381 (= e!3095633 (inv!74483 (c!846010 totalInput!464)))))

(declare-fun b!4954382 () Bool)

(declare-fun e!3095634 () Bool)

(assert (=> b!4954382 (= e!3095633 e!3095634)))

(declare-fun res!2113714 () Bool)

(assert (=> b!4954382 (= res!2113714 (not (is-Leaf!25005 (c!846010 totalInput!464))))))

(assert (=> b!4954382 (=> res!2113714 e!3095634)))

(declare-fun b!4954383 () Bool)

(declare-fun inv!74484 (Conc!15037) Bool)

(assert (=> b!4954383 (= e!3095634 (inv!74484 (c!846010 totalInput!464)))))

(assert (= (and d!1595336 c!846022) b!4954381))

(assert (= (and d!1595336 (not c!846022)) b!4954382))

(assert (= (and b!4954382 (not res!2113714)) b!4954383))

(declare-fun m!5979096 () Bool)

(assert (=> b!4954381 m!5979096))

(declare-fun m!5979098 () Bool)

(assert (=> b!4954383 m!5979098))

(assert (=> b!4954293 d!1595336))

(assert (=> b!4954302 d!1595316))

(declare-fun d!1595338 () Bool)

(assert (=> d!1595338 (= (get!19743 lt!2044747) (v!50237 lt!2044747))))

(assert (=> b!4954302 d!1595338))

(declare-fun b!4954402 () Bool)

(declare-fun res!2113733 () Bool)

(declare-fun e!3095641 () Bool)

(assert (=> b!4954402 (=> (not res!2113733) (not e!3095641))))

(declare-fun lt!2044819 () Option!14253)

(declare-fun charsOf!5412 (Token!15078) BalanceConc!29504)

(assert (=> b!4954402 (= res!2113733 (= (list!18219 (charsOf!5412 (_1!34135 (get!19743 lt!2044819)))) (originalCharacters!8570 (_1!34135 (get!19743 lt!2044819)))))))

(declare-fun b!4954403 () Bool)

(declare-fun res!2113729 () Bool)

(assert (=> b!4954403 (=> (not res!2113729) (not e!3095641))))

(declare-fun apply!13873 (TokenValueInjection!16498 BalanceConc!29504) TokenValue!8595)

(declare-fun seqFromList!6005 (List!57241) BalanceConc!29504)

(assert (=> b!4954403 (= res!2113729 (= (value!265570 (_1!34135 (get!19743 lt!2044819))) (apply!13873 (transformation!8285 (rule!11499 (_1!34135 (get!19743 lt!2044819)))) (seqFromList!6005 (originalCharacters!8570 (_1!34135 (get!19743 lt!2044819)))))))))

(declare-fun b!4954404 () Bool)

(declare-fun contains!19513 (List!57243 Rule!16370) Bool)

(assert (=> b!4954404 (= e!3095641 (contains!19513 rulesArg!259 (rule!11499 (_1!34135 (get!19743 lt!2044819)))))))

(declare-fun b!4954405 () Bool)

(declare-fun e!3095642 () Option!14253)

(declare-fun call!345877 () Option!14253)

(assert (=> b!4954405 (= e!3095642 call!345877)))

(declare-fun b!4954406 () Bool)

(declare-fun res!2113735 () Bool)

(assert (=> b!4954406 (=> (not res!2113735) (not e!3095641))))

(declare-fun ++!12507 (List!57241 List!57241) List!57241)

(assert (=> b!4954406 (= res!2113735 (= (++!12507 (list!18219 (charsOf!5412 (_1!34135 (get!19743 lt!2044819)))) (_2!34135 (get!19743 lt!2044819))) lt!2044744))))

(declare-fun bm!345872 () Bool)

(declare-fun maxPrefixOneRule!3598 (LexerInterface!7877 Rule!16370 List!57241) Option!14253)

(assert (=> bm!345872 (= call!345877 (maxPrefixOneRule!3598 thiss!15247 (h!63567 rulesArg!259) lt!2044744))))

(declare-fun b!4954408 () Bool)

(declare-fun res!2113734 () Bool)

(assert (=> b!4954408 (=> (not res!2113734) (not e!3095641))))

(declare-fun size!37901 (List!57241) Int)

(assert (=> b!4954408 (= res!2113734 (< (size!37901 (_2!34135 (get!19743 lt!2044819))) (size!37901 lt!2044744)))))

(declare-fun b!4954409 () Bool)

(declare-fun lt!2044821 () Option!14253)

(declare-fun lt!2044818 () Option!14253)

(assert (=> b!4954409 (= e!3095642 (ite (and (is-None!14252 lt!2044821) (is-None!14252 lt!2044818)) None!14252 (ite (is-None!14252 lt!2044818) lt!2044821 (ite (is-None!14252 lt!2044821) lt!2044818 (ite (>= (size!37899 (_1!34135 (v!50237 lt!2044821))) (size!37899 (_1!34135 (v!50237 lt!2044818)))) lt!2044821 lt!2044818)))))))

(assert (=> b!4954409 (= lt!2044821 call!345877)))

(assert (=> b!4954409 (= lt!2044818 (maxPrefix!4618 thiss!15247 (t!367809 rulesArg!259) lt!2044744))))

(declare-fun b!4954410 () Bool)

(declare-fun e!3095643 () Bool)

(assert (=> b!4954410 (= e!3095643 e!3095641)))

(declare-fun res!2113730 () Bool)

(assert (=> b!4954410 (=> (not res!2113730) (not e!3095641))))

(assert (=> b!4954410 (= res!2113730 (isDefined!11206 lt!2044819))))

(declare-fun b!4954407 () Bool)

(declare-fun res!2113732 () Bool)

(assert (=> b!4954407 (=> (not res!2113732) (not e!3095641))))

(declare-fun matchR!6605 (Regex!13518 List!57241) Bool)

(assert (=> b!4954407 (= res!2113732 (matchR!6605 (regex!8285 (rule!11499 (_1!34135 (get!19743 lt!2044819)))) (list!18219 (charsOf!5412 (_1!34135 (get!19743 lt!2044819))))))))

(declare-fun d!1595340 () Bool)

(assert (=> d!1595340 e!3095643))

(declare-fun res!2113731 () Bool)

(assert (=> d!1595340 (=> res!2113731 e!3095643)))

(assert (=> d!1595340 (= res!2113731 (isEmpty!30715 lt!2044819))))

(assert (=> d!1595340 (= lt!2044819 e!3095642)))

(declare-fun c!846025 () Bool)

(assert (=> d!1595340 (= c!846025 (and (is-Cons!57119 rulesArg!259) (is-Nil!57119 (t!367809 rulesArg!259))))))

(declare-fun lt!2044820 () Unit!148012)

(declare-fun lt!2044822 () Unit!148012)

(assert (=> d!1595340 (= lt!2044820 lt!2044822)))

(assert (=> d!1595340 (isPrefix!5138 lt!2044744 lt!2044744)))

(assert (=> d!1595340 (= lt!2044822 (lemmaIsPrefixRefl!3462 lt!2044744 lt!2044744))))

(assert (=> d!1595340 (rulesValidInductive!3188 thiss!15247 rulesArg!259)))

(assert (=> d!1595340 (= (maxPrefix!4618 thiss!15247 rulesArg!259 lt!2044744) lt!2044819)))

(assert (= (and d!1595340 c!846025) b!4954405))

(assert (= (and d!1595340 (not c!846025)) b!4954409))

(assert (= (or b!4954405 b!4954409) bm!345872))

(assert (= (and d!1595340 (not res!2113731)) b!4954410))

(assert (= (and b!4954410 res!2113730) b!4954402))

(assert (= (and b!4954402 res!2113733) b!4954408))

(assert (= (and b!4954408 res!2113734) b!4954406))

(assert (= (and b!4954406 res!2113735) b!4954403))

(assert (= (and b!4954403 res!2113729) b!4954407))

(assert (= (and b!4954407 res!2113732) b!4954404))

(declare-fun m!5979100 () Bool)

(assert (=> b!4954403 m!5979100))

(declare-fun m!5979102 () Bool)

(assert (=> b!4954403 m!5979102))

(assert (=> b!4954403 m!5979102))

(declare-fun m!5979104 () Bool)

(assert (=> b!4954403 m!5979104))

(assert (=> b!4954404 m!5979100))

(declare-fun m!5979106 () Bool)

(assert (=> b!4954404 m!5979106))

(declare-fun m!5979108 () Bool)

(assert (=> bm!345872 m!5979108))

(assert (=> b!4954402 m!5979100))

(declare-fun m!5979110 () Bool)

(assert (=> b!4954402 m!5979110))

(assert (=> b!4954402 m!5979110))

(declare-fun m!5979112 () Bool)

(assert (=> b!4954402 m!5979112))

(declare-fun m!5979114 () Bool)

(assert (=> d!1595340 m!5979114))

(assert (=> d!1595340 m!5978996))

(assert (=> d!1595340 m!5978998))

(assert (=> d!1595340 m!5979032))

(declare-fun m!5979116 () Bool)

(assert (=> b!4954409 m!5979116))

(assert (=> b!4954408 m!5979100))

(declare-fun m!5979118 () Bool)

(assert (=> b!4954408 m!5979118))

(declare-fun m!5979120 () Bool)

(assert (=> b!4954408 m!5979120))

(assert (=> b!4954407 m!5979100))

(assert (=> b!4954407 m!5979110))

(assert (=> b!4954407 m!5979110))

(assert (=> b!4954407 m!5979112))

(assert (=> b!4954407 m!5979112))

(declare-fun m!5979122 () Bool)

(assert (=> b!4954407 m!5979122))

(declare-fun m!5979124 () Bool)

(assert (=> b!4954410 m!5979124))

(assert (=> b!4954406 m!5979100))

(assert (=> b!4954406 m!5979110))

(assert (=> b!4954406 m!5979110))

(assert (=> b!4954406 m!5979112))

(assert (=> b!4954406 m!5979112))

(declare-fun m!5979126 () Bool)

(assert (=> b!4954406 m!5979126))

(assert (=> b!4954302 d!1595340))

(declare-fun d!1595342 () Bool)

(assert (=> d!1595342 (= (isDefined!11206 lt!2044743) (not (isEmpty!30715 lt!2044743)))))

(declare-fun bs!1182449 () Bool)

(assert (= bs!1182449 d!1595342))

(declare-fun m!5979128 () Bool)

(assert (=> bs!1182449 m!5979128))

(assert (=> b!4954300 d!1595342))

(declare-fun d!1595344 () Bool)

(declare-fun isEmpty!30716 (Option!14254) Bool)

(assert (=> d!1595344 (= (isDefined!11207 lt!2044748) (not (isEmpty!30716 lt!2044748)))))

(declare-fun bs!1182450 () Bool)

(assert (= bs!1182450 d!1595344))

(declare-fun m!5979130 () Bool)

(assert (=> bs!1182450 m!5979130))

(assert (=> b!4954300 d!1595344))

(declare-fun lt!2044836 () Option!14253)

(declare-fun d!1595346 () Bool)

(assert (=> d!1595346 (= lt!2044836 (maxPrefix!4618 thiss!15247 rulesArg!259 lt!2044744))))

(declare-fun e!3095646 () Option!14253)

(assert (=> d!1595346 (= lt!2044836 e!3095646)))

(declare-fun c!846028 () Bool)

(assert (=> d!1595346 (= c!846028 (and (is-Cons!57119 rulesArg!259) (is-Nil!57119 (t!367809 rulesArg!259))))))

(declare-fun lt!2044834 () Unit!148012)

(declare-fun lt!2044837 () Unit!148012)

(assert (=> d!1595346 (= lt!2044834 lt!2044837)))

(assert (=> d!1595346 (isPrefix!5138 lt!2044744 lt!2044744)))

(assert (=> d!1595346 (= lt!2044837 (lemmaIsPrefixRefl!3462 lt!2044744 lt!2044744))))

(assert (=> d!1595346 (rulesValidInductive!3188 thiss!15247 rulesArg!259)))

(assert (=> d!1595346 (= (maxPrefixZipper!696 thiss!15247 rulesArg!259 lt!2044744) lt!2044836)))

(declare-fun call!345880 () Option!14253)

(declare-fun bm!345875 () Bool)

(declare-fun maxPrefixOneRuleZipper!271 (LexerInterface!7877 Rule!16370 List!57241) Option!14253)

(assert (=> bm!345875 (= call!345880 (maxPrefixOneRuleZipper!271 thiss!15247 (h!63567 rulesArg!259) lt!2044744))))

(declare-fun b!4954415 () Bool)

(assert (=> b!4954415 (= e!3095646 call!345880)))

(declare-fun b!4954416 () Bool)

(declare-fun lt!2044833 () Option!14253)

(declare-fun lt!2044835 () Option!14253)

(assert (=> b!4954416 (= e!3095646 (ite (and (is-None!14252 lt!2044833) (is-None!14252 lt!2044835)) None!14252 (ite (is-None!14252 lt!2044835) lt!2044833 (ite (is-None!14252 lt!2044833) lt!2044835 (ite (>= (size!37899 (_1!34135 (v!50237 lt!2044833))) (size!37899 (_1!34135 (v!50237 lt!2044835)))) lt!2044833 lt!2044835)))))))

(assert (=> b!4954416 (= lt!2044833 call!345880)))

(assert (=> b!4954416 (= lt!2044835 (maxPrefixZipper!696 thiss!15247 (t!367809 rulesArg!259) lt!2044744))))

(assert (= (and d!1595346 c!846028) b!4954415))

(assert (= (and d!1595346 (not c!846028)) b!4954416))

(assert (= (or b!4954415 b!4954416) bm!345875))

(assert (=> d!1595346 m!5978994))

(assert (=> d!1595346 m!5978996))

(assert (=> d!1595346 m!5978998))

(assert (=> d!1595346 m!5979032))

(declare-fun m!5979132 () Bool)

(assert (=> bm!345875 m!5979132))

(declare-fun m!5979134 () Bool)

(assert (=> b!4954416 m!5979134))

(assert (=> b!4954300 d!1595346))

(declare-fun b!4954442 () Bool)

(declare-fun e!3095667 () Bool)

(assert (=> b!4954442 (= e!3095667 true)))

(declare-fun b!4954441 () Bool)

(declare-fun e!3095666 () Bool)

(assert (=> b!4954441 (= e!3095666 e!3095667)))

(declare-fun b!4954433 () Bool)

(assert (=> b!4954433 e!3095666))

(assert (= b!4954441 b!4954442))

(assert (= b!4954433 b!4954441))

(declare-fun order!26029 () Int)

(declare-fun lambda!247050 () Int)

(declare-fun order!26027 () Int)

(declare-fun dynLambda!23054 (Int Int) Int)

(declare-fun dynLambda!23055 (Int Int) Int)

(assert (=> b!4954442 (< (dynLambda!23054 order!26027 (toValue!11236 (transformation!8285 (h!63567 rulesArg!259)))) (dynLambda!23055 order!26029 lambda!247050))))

(declare-fun order!26031 () Int)

(declare-fun dynLambda!23056 (Int Int) Int)

(assert (=> b!4954442 (< (dynLambda!23056 order!26031 (toChars!11095 (transformation!8285 (h!63567 rulesArg!259)))) (dynLambda!23055 order!26029 lambda!247050))))

(declare-fun b!4954429 () Bool)

(declare-fun e!3095660 () Bool)

(declare-fun e!3095658 () Bool)

(assert (=> b!4954429 (= e!3095660 e!3095658)))

(declare-fun res!2113744 () Bool)

(assert (=> b!4954429 (=> (not res!2113744) (not e!3095658))))

(declare-fun lt!2044864 () Option!14254)

(assert (=> b!4954429 (= res!2113744 (= (_1!34136 (get!19742 lt!2044864)) (_1!34135 (get!19743 (maxPrefixOneRule!3598 thiss!15247 (h!63567 rulesArg!259) (list!18219 input!1342))))))))

(declare-fun d!1595348 () Bool)

(declare-fun e!3095661 () Bool)

(assert (=> d!1595348 e!3095661))

(declare-fun res!2113745 () Bool)

(assert (=> d!1595348 (=> (not res!2113745) (not e!3095661))))

(assert (=> d!1595348 (= res!2113745 (= (isDefined!11207 lt!2044864) (isDefined!11206 (maxPrefixOneRule!3598 thiss!15247 (h!63567 rulesArg!259) (list!18219 input!1342)))))))

(declare-fun e!3095659 () Option!14254)

(assert (=> d!1595348 (= lt!2044864 e!3095659)))

(declare-fun c!846031 () Bool)

(declare-datatypes ((tuple2!61672 0))(
  ( (tuple2!61673 (_1!34139 BalanceConc!29504) (_2!34139 BalanceConc!29504)) )
))
(declare-fun lt!2044861 () tuple2!61672)

(declare-fun isEmpty!30717 (BalanceConc!29504) Bool)

(assert (=> d!1595348 (= c!846031 (isEmpty!30717 (_1!34139 lt!2044861)))))

(declare-fun findLongestMatchWithZipperSequenceV2!137 (Regex!13518 BalanceConc!29504 BalanceConc!29504) tuple2!61672)

(assert (=> d!1595348 (= lt!2044861 (findLongestMatchWithZipperSequenceV2!137 (regex!8285 (h!63567 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595348 (ruleValid!3766 thiss!15247 (h!63567 rulesArg!259))))

(assert (=> d!1595348 (= (maxPrefixOneRuleZipperSequenceV2!273 thiss!15247 (h!63567 rulesArg!259) input!1342 totalInput!464) lt!2044864)))

(declare-fun b!4954430 () Bool)

(assert (=> b!4954430 (= e!3095658 (= (list!18219 (_2!34136 (get!19742 lt!2044864))) (_2!34135 (get!19743 (maxPrefixOneRule!3598 thiss!15247 (h!63567 rulesArg!259) (list!18219 input!1342))))))))

(declare-fun b!4954431 () Bool)

(assert (=> b!4954431 (= e!3095661 e!3095660)))

(declare-fun res!2113747 () Bool)

(assert (=> b!4954431 (=> res!2113747 e!3095660)))

(assert (=> b!4954431 (= res!2113747 (not (isDefined!11207 lt!2044864)))))

(declare-fun b!4954432 () Bool)

(declare-fun e!3095657 () Bool)

(declare-fun lt!2044863 () List!57241)

(declare-datatypes ((tuple2!61674 0))(
  ( (tuple2!61675 (_1!34140 List!57241) (_2!34140 List!57241)) )
))
(declare-fun findLongestMatchInner!1828 (Regex!13518 List!57241 Int List!57241 List!57241 Int) tuple2!61674)

(assert (=> b!4954432 (= e!3095657 (matchR!6605 (regex!8285 (h!63567 rulesArg!259)) (_1!34140 (findLongestMatchInner!1828 (regex!8285 (h!63567 rulesArg!259)) Nil!57117 (size!37901 Nil!57117) lt!2044863 lt!2044863 (size!37901 lt!2044863)))))))

(declare-fun size!37902 (BalanceConc!29504) Int)

(assert (=> b!4954433 (= e!3095659 (Some!14253 (tuple2!61667 (Token!15079 (apply!13873 (transformation!8285 (h!63567 rulesArg!259)) (_1!34139 lt!2044861)) (h!63567 rulesArg!259) (size!37902 (_1!34139 lt!2044861)) (list!18219 (_1!34139 lt!2044861))) (_2!34139 lt!2044861))))))

(assert (=> b!4954433 (= lt!2044863 (list!18219 input!1342))))

(declare-fun lt!2044862 () Unit!148012)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1789 (Regex!13518 List!57241) Unit!148012)

(assert (=> b!4954433 (= lt!2044862 (longestMatchIsAcceptedByMatchOrIsEmpty!1789 (regex!8285 (h!63567 rulesArg!259)) lt!2044863))))

(declare-fun res!2113746 () Bool)

(declare-fun isEmpty!30718 (List!57241) Bool)

(assert (=> b!4954433 (= res!2113746 (isEmpty!30718 (_1!34140 (findLongestMatchInner!1828 (regex!8285 (h!63567 rulesArg!259)) Nil!57117 (size!37901 Nil!57117) lt!2044863 lt!2044863 (size!37901 lt!2044863)))))))

(assert (=> b!4954433 (=> res!2113746 e!3095657)))

(assert (=> b!4954433 e!3095657))

(declare-fun lt!2044858 () Unit!148012)

(assert (=> b!4954433 (= lt!2044858 lt!2044862)))

(declare-fun lt!2044859 () Unit!148012)

(declare-fun lemmaInv!1307 (TokenValueInjection!16498) Unit!148012)

(assert (=> b!4954433 (= lt!2044859 (lemmaInv!1307 (transformation!8285 (h!63567 rulesArg!259))))))

(declare-fun lt!2044865 () Unit!148012)

(declare-fun ForallOf!1200 (Int BalanceConc!29504) Unit!148012)

(assert (=> b!4954433 (= lt!2044865 (ForallOf!1200 lambda!247050 (_1!34139 lt!2044861)))))

(declare-fun lt!2044860 () Unit!148012)

(assert (=> b!4954433 (= lt!2044860 (ForallOf!1200 lambda!247050 (seqFromList!6005 (list!18219 (_1!34139 lt!2044861)))))))

(declare-fun lt!2044867 () Option!14254)

(assert (=> b!4954433 (= lt!2044867 (Some!14253 (tuple2!61667 (Token!15079 (apply!13873 (transformation!8285 (h!63567 rulesArg!259)) (_1!34139 lt!2044861)) (h!63567 rulesArg!259) (size!37902 (_1!34139 lt!2044861)) (list!18219 (_1!34139 lt!2044861))) (_2!34139 lt!2044861))))))

(declare-fun lt!2044866 () Unit!148012)

(declare-fun lemmaEqSameImage!1141 (TokenValueInjection!16498 BalanceConc!29504 BalanceConc!29504) Unit!148012)

(assert (=> b!4954433 (= lt!2044866 (lemmaEqSameImage!1141 (transformation!8285 (h!63567 rulesArg!259)) (_1!34139 lt!2044861) (seqFromList!6005 (list!18219 (_1!34139 lt!2044861)))))))

(declare-fun b!4954434 () Bool)

(assert (=> b!4954434 (= e!3095659 None!14253)))

(assert (= (and d!1595348 c!846031) b!4954434))

(assert (= (and d!1595348 (not c!846031)) b!4954433))

(assert (= (and b!4954433 (not res!2113746)) b!4954432))

(assert (= (and d!1595348 res!2113745) b!4954431))

(assert (= (and b!4954431 (not res!2113747)) b!4954429))

(assert (= (and b!4954429 res!2113744) b!4954430))

(declare-fun m!5979136 () Bool)

(assert (=> b!4954429 m!5979136))

(assert (=> b!4954429 m!5979006))

(assert (=> b!4954429 m!5979006))

(declare-fun m!5979138 () Bool)

(assert (=> b!4954429 m!5979138))

(assert (=> b!4954429 m!5979138))

(declare-fun m!5979140 () Bool)

(assert (=> b!4954429 m!5979140))

(declare-fun m!5979142 () Bool)

(assert (=> b!4954431 m!5979142))

(declare-fun m!5979144 () Bool)

(assert (=> b!4954433 m!5979144))

(declare-fun m!5979146 () Bool)

(assert (=> b!4954433 m!5979146))

(declare-fun m!5979148 () Bool)

(assert (=> b!4954433 m!5979148))

(declare-fun m!5979150 () Bool)

(assert (=> b!4954433 m!5979150))

(declare-fun m!5979152 () Bool)

(assert (=> b!4954433 m!5979152))

(declare-fun m!5979154 () Bool)

(assert (=> b!4954433 m!5979154))

(assert (=> b!4954433 m!5979150))

(declare-fun m!5979156 () Bool)

(assert (=> b!4954433 m!5979156))

(declare-fun m!5979158 () Bool)

(assert (=> b!4954433 m!5979158))

(assert (=> b!4954433 m!5979006))

(assert (=> b!4954433 m!5979150))

(declare-fun m!5979160 () Bool)

(assert (=> b!4954433 m!5979160))

(assert (=> b!4954433 m!5979154))

(declare-fun m!5979162 () Bool)

(assert (=> b!4954433 m!5979162))

(declare-fun m!5979164 () Bool)

(assert (=> b!4954433 m!5979164))

(assert (=> b!4954433 m!5979146))

(assert (=> b!4954433 m!5979162))

(declare-fun m!5979166 () Bool)

(assert (=> b!4954433 m!5979166))

(declare-fun m!5979168 () Bool)

(assert (=> b!4954433 m!5979168))

(assert (=> b!4954432 m!5979146))

(assert (=> b!4954432 m!5979162))

(assert (=> b!4954432 m!5979146))

(assert (=> b!4954432 m!5979162))

(assert (=> b!4954432 m!5979166))

(declare-fun m!5979170 () Bool)

(assert (=> b!4954432 m!5979170))

(assert (=> d!1595348 m!5979006))

(assert (=> d!1595348 m!5979138))

(declare-fun m!5979172 () Bool)

(assert (=> d!1595348 m!5979172))

(assert (=> d!1595348 m!5979138))

(declare-fun m!5979174 () Bool)

(assert (=> d!1595348 m!5979174))

(declare-fun m!5979176 () Bool)

(assert (=> d!1595348 m!5979176))

(assert (=> d!1595348 m!5979006))

(assert (=> d!1595348 m!5979090))

(assert (=> d!1595348 m!5979142))

(assert (=> b!4954430 m!5979136))

(assert (=> b!4954430 m!5979006))

(assert (=> b!4954430 m!5979138))

(assert (=> b!4954430 m!5979140))

(assert (=> b!4954430 m!5979006))

(assert (=> b!4954430 m!5979138))

(declare-fun m!5979178 () Bool)

(assert (=> b!4954430 m!5979178))

(assert (=> b!4954300 d!1595348))

(declare-fun d!1595350 () Bool)

(assert (=> d!1595350 (= (inv!74474 (tag!9149 (h!63567 rulesArg!259))) (= (mod (str.len (value!265569 (tag!9149 (h!63567 rulesArg!259)))) 2) 0))))

(assert (=> b!4954301 d!1595350))

(declare-fun d!1595352 () Bool)

(declare-fun res!2113750 () Bool)

(declare-fun e!3095670 () Bool)

(assert (=> d!1595352 (=> (not res!2113750) (not e!3095670))))

(declare-fun semiInverseModEq!3667 (Int Int) Bool)

(assert (=> d!1595352 (= res!2113750 (semiInverseModEq!3667 (toChars!11095 (transformation!8285 (h!63567 rulesArg!259))) (toValue!11236 (transformation!8285 (h!63567 rulesArg!259)))))))

(assert (=> d!1595352 (= (inv!74479 (transformation!8285 (h!63567 rulesArg!259))) e!3095670)))

(declare-fun b!4954445 () Bool)

(declare-fun equivClasses!3515 (Int Int) Bool)

(assert (=> b!4954445 (= e!3095670 (equivClasses!3515 (toChars!11095 (transformation!8285 (h!63567 rulesArg!259))) (toValue!11236 (transformation!8285 (h!63567 rulesArg!259)))))))

(assert (= (and d!1595352 res!2113750) b!4954445))

(declare-fun m!5979180 () Bool)

(assert (=> d!1595352 m!5979180))

(declare-fun m!5979182 () Bool)

(assert (=> b!4954445 m!5979182))

(assert (=> b!4954301 d!1595352))

(declare-fun d!1595354 () Bool)

(declare-fun e!3095673 () Bool)

(assert (=> d!1595354 e!3095673))

(declare-fun res!2113753 () Bool)

(assert (=> d!1595354 (=> res!2113753 e!3095673)))

(declare-fun lt!2044870 () Bool)

(assert (=> d!1595354 (= res!2113753 (not lt!2044870))))

(declare-fun drop!2316 (List!57241 Int) List!57241)

(assert (=> d!1595354 (= lt!2044870 (= lt!2044744 (drop!2316 (list!18219 totalInput!464) (- (size!37901 (list!18219 totalInput!464)) (size!37901 lt!2044744)))))))

(assert (=> d!1595354 (= (isSuffix!1084 lt!2044744 (list!18219 totalInput!464)) lt!2044870)))

(declare-fun b!4954448 () Bool)

(assert (=> b!4954448 (= e!3095673 (>= (size!37901 (list!18219 totalInput!464)) (size!37901 lt!2044744)))))

(assert (= (and d!1595354 (not res!2113753)) b!4954448))

(assert (=> d!1595354 m!5979002))

(declare-fun m!5979184 () Bool)

(assert (=> d!1595354 m!5979184))

(assert (=> d!1595354 m!5979120))

(assert (=> d!1595354 m!5979002))

(declare-fun m!5979186 () Bool)

(assert (=> d!1595354 m!5979186))

(assert (=> b!4954448 m!5979002))

(assert (=> b!4954448 m!5979184))

(assert (=> b!4954448 m!5979120))

(assert (=> b!4954299 d!1595354))

(declare-fun d!1595356 () Bool)

(declare-fun list!18221 (Conc!15037) List!57241)

(assert (=> d!1595356 (= (list!18219 totalInput!464) (list!18221 (c!846010 totalInput!464)))))

(declare-fun bs!1182451 () Bool)

(assert (= bs!1182451 d!1595356))

(declare-fun m!5979188 () Bool)

(assert (=> bs!1182451 m!5979188))

(assert (=> b!4954299 d!1595356))

(declare-fun d!1595358 () Bool)

(assert (=> d!1595358 (= (list!18219 input!1342) (list!18221 (c!846010 input!1342)))))

(declare-fun bs!1182452 () Bool)

(assert (= bs!1182452 d!1595358))

(declare-fun m!5979190 () Bool)

(assert (=> bs!1182452 m!5979190))

(assert (=> b!4954299 d!1595358))

(declare-fun d!1595360 () Bool)

(assert (=> d!1595360 (= (list!18219 (_2!34136 lt!2044741)) (list!18221 (c!846010 (_2!34136 lt!2044741))))))

(declare-fun bs!1182453 () Bool)

(assert (= bs!1182453 d!1595360))

(declare-fun m!5979192 () Bool)

(assert (=> bs!1182453 m!5979192))

(assert (=> b!4954298 d!1595360))

(declare-fun d!1595362 () Bool)

(declare-fun isBalanced!4168 (Conc!15037) Bool)

(assert (=> d!1595362 (= (inv!74477 input!1342) (isBalanced!4168 (c!846010 input!1342)))))

(declare-fun bs!1182454 () Bool)

(assert (= bs!1182454 d!1595362))

(declare-fun m!5979194 () Bool)

(assert (=> bs!1182454 m!5979194))

(assert (=> start!522154 d!1595362))

(declare-fun d!1595364 () Bool)

(assert (=> d!1595364 (= (inv!74477 totalInput!464) (isBalanced!4168 (c!846010 totalInput!464)))))

(declare-fun bs!1182455 () Bool)

(assert (= bs!1182455 d!1595364))

(declare-fun m!5979196 () Bool)

(assert (=> bs!1182455 m!5979196))

(assert (=> start!522154 d!1595364))

(declare-fun b!4954459 () Bool)

(declare-fun e!3095681 () Bool)

(declare-fun tail!9769 (List!57241) List!57241)

(assert (=> b!4954459 (= e!3095681 (isPrefix!5138 (tail!9769 lt!2044744) (tail!9769 lt!2044744)))))

(declare-fun b!4954460 () Bool)

(declare-fun e!3095682 () Bool)

(assert (=> b!4954460 (= e!3095682 (>= (size!37901 lt!2044744) (size!37901 lt!2044744)))))

(declare-fun b!4954458 () Bool)

(declare-fun res!2113763 () Bool)

(assert (=> b!4954458 (=> (not res!2113763) (not e!3095681))))

(declare-fun head!10636 (List!57241) C!27286)

(assert (=> b!4954458 (= res!2113763 (= (head!10636 lt!2044744) (head!10636 lt!2044744)))))

(declare-fun d!1595366 () Bool)

(assert (=> d!1595366 e!3095682))

(declare-fun res!2113764 () Bool)

(assert (=> d!1595366 (=> res!2113764 e!3095682)))

(declare-fun lt!2044873 () Bool)

(assert (=> d!1595366 (= res!2113764 (not lt!2044873))))

(declare-fun e!3095680 () Bool)

(assert (=> d!1595366 (= lt!2044873 e!3095680)))

(declare-fun res!2113765 () Bool)

(assert (=> d!1595366 (=> res!2113765 e!3095680)))

(assert (=> d!1595366 (= res!2113765 (is-Nil!57117 lt!2044744))))

(assert (=> d!1595366 (= (isPrefix!5138 lt!2044744 lt!2044744) lt!2044873)))

(declare-fun b!4954457 () Bool)

(assert (=> b!4954457 (= e!3095680 e!3095681)))

(declare-fun res!2113762 () Bool)

(assert (=> b!4954457 (=> (not res!2113762) (not e!3095681))))

(assert (=> b!4954457 (= res!2113762 (not (is-Nil!57117 lt!2044744)))))

(assert (= (and d!1595366 (not res!2113765)) b!4954457))

(assert (= (and b!4954457 res!2113762) b!4954458))

(assert (= (and b!4954458 res!2113763) b!4954459))

(assert (= (and d!1595366 (not res!2113764)) b!4954460))

(declare-fun m!5979198 () Bool)

(assert (=> b!4954459 m!5979198))

(assert (=> b!4954459 m!5979198))

(assert (=> b!4954459 m!5979198))

(assert (=> b!4954459 m!5979198))

(declare-fun m!5979200 () Bool)

(assert (=> b!4954459 m!5979200))

(assert (=> b!4954460 m!5979120))

(assert (=> b!4954460 m!5979120))

(declare-fun m!5979202 () Bool)

(assert (=> b!4954458 m!5979202))

(assert (=> b!4954458 m!5979202))

(assert (=> b!4954295 d!1595366))

(declare-fun d!1595368 () Bool)

(assert (=> d!1595368 (isPrefix!5138 lt!2044744 lt!2044744)))

(declare-fun lt!2044876 () Unit!148012)

(declare-fun choose!36616 (List!57241 List!57241) Unit!148012)

(assert (=> d!1595368 (= lt!2044876 (choose!36616 lt!2044744 lt!2044744))))

(assert (=> d!1595368 (= (lemmaIsPrefixRefl!3462 lt!2044744 lt!2044744) lt!2044876)))

(declare-fun bs!1182456 () Bool)

(assert (= bs!1182456 d!1595368))

(assert (=> bs!1182456 m!5978996))

(declare-fun m!5979204 () Bool)

(assert (=> bs!1182456 m!5979204))

(assert (=> b!4954295 d!1595368))

(declare-fun d!1595370 () Bool)

(declare-fun c!846032 () Bool)

(assert (=> d!1595370 (= c!846032 (is-Node!15037 (c!846010 input!1342)))))

(declare-fun e!3095683 () Bool)

(assert (=> d!1595370 (= (inv!74478 (c!846010 input!1342)) e!3095683)))

(declare-fun b!4954461 () Bool)

(assert (=> b!4954461 (= e!3095683 (inv!74483 (c!846010 input!1342)))))

(declare-fun b!4954462 () Bool)

(declare-fun e!3095684 () Bool)

(assert (=> b!4954462 (= e!3095683 e!3095684)))

(declare-fun res!2113766 () Bool)

(assert (=> b!4954462 (= res!2113766 (not (is-Leaf!25005 (c!846010 input!1342))))))

(assert (=> b!4954462 (=> res!2113766 e!3095684)))

(declare-fun b!4954463 () Bool)

(assert (=> b!4954463 (= e!3095684 (inv!74484 (c!846010 input!1342)))))

(assert (= (and d!1595370 c!846032) b!4954461))

(assert (= (and d!1595370 (not c!846032)) b!4954462))

(assert (= (and b!4954462 (not res!2113766)) b!4954463))

(declare-fun m!5979206 () Bool)

(assert (=> b!4954461 m!5979206))

(declare-fun m!5979208 () Bool)

(assert (=> b!4954463 m!5979208))

(assert (=> b!4954306 d!1595370))

(declare-fun e!3095690 () Bool)

(declare-fun tp!1389069 () Bool)

(declare-fun b!4954472 () Bool)

(declare-fun tp!1389068 () Bool)

(assert (=> b!4954472 (= e!3095690 (and (inv!74478 (left!41666 (c!846010 totalInput!464))) tp!1389069 (inv!74478 (right!41996 (c!846010 totalInput!464))) tp!1389068))))

(declare-fun b!4954474 () Bool)

(declare-fun e!3095689 () Bool)

(declare-fun tp!1389067 () Bool)

(assert (=> b!4954474 (= e!3095689 tp!1389067)))

(declare-fun b!4954473 () Bool)

(declare-fun inv!74485 (IArray!30135) Bool)

(assert (=> b!4954473 (= e!3095690 (and (inv!74485 (xs!18363 (c!846010 totalInput!464))) e!3095689))))

(assert (=> b!4954293 (= tp!1389042 (and (inv!74478 (c!846010 totalInput!464)) e!3095690))))

(assert (= (and b!4954293 (is-Node!15037 (c!846010 totalInput!464))) b!4954472))

(assert (= b!4954473 b!4954474))

(assert (= (and b!4954293 (is-Leaf!25005 (c!846010 totalInput!464))) b!4954473))

(declare-fun m!5979210 () Bool)

(assert (=> b!4954472 m!5979210))

(declare-fun m!5979212 () Bool)

(assert (=> b!4954472 m!5979212))

(declare-fun m!5979214 () Bool)

(assert (=> b!4954473 m!5979214))

(assert (=> b!4954293 m!5978988))

(declare-fun b!4954485 () Bool)

(declare-fun b_free!132135 () Bool)

(declare-fun b_next!132925 () Bool)

(assert (=> b!4954485 (= b_free!132135 (not b_next!132925))))

(declare-fun tp!1389081 () Bool)

(declare-fun b_and!346987 () Bool)

(assert (=> b!4954485 (= tp!1389081 b_and!346987)))

(declare-fun b_free!132137 () Bool)

(declare-fun b_next!132927 () Bool)

(assert (=> b!4954485 (= b_free!132137 (not b_next!132927))))

(declare-fun tp!1389078 () Bool)

(declare-fun b_and!346989 () Bool)

(assert (=> b!4954485 (= tp!1389078 b_and!346989)))

(declare-fun e!3095702 () Bool)

(assert (=> b!4954485 (= e!3095702 (and tp!1389081 tp!1389078))))

(declare-fun b!4954484 () Bool)

(declare-fun tp!1389079 () Bool)

(declare-fun e!3095700 () Bool)

(assert (=> b!4954484 (= e!3095700 (and tp!1389079 (inv!74474 (tag!9149 (h!63567 (t!367809 rulesArg!259)))) (inv!74479 (transformation!8285 (h!63567 (t!367809 rulesArg!259)))) e!3095702))))

(declare-fun b!4954483 () Bool)

(declare-fun e!3095699 () Bool)

(declare-fun tp!1389080 () Bool)

(assert (=> b!4954483 (= e!3095699 (and e!3095700 tp!1389080))))

(assert (=> b!4954297 (= tp!1389037 e!3095699)))

(assert (= b!4954484 b!4954485))

(assert (= b!4954483 b!4954484))

(assert (= (and b!4954297 (is-Cons!57119 (t!367809 rulesArg!259))) b!4954483))

(declare-fun m!5979216 () Bool)

(assert (=> b!4954484 m!5979216))

(declare-fun m!5979218 () Bool)

(assert (=> b!4954484 m!5979218))

(declare-fun tp!1389083 () Bool)

(declare-fun e!3095704 () Bool)

(declare-fun tp!1389084 () Bool)

(declare-fun b!4954486 () Bool)

(assert (=> b!4954486 (= e!3095704 (and (inv!74478 (left!41666 (c!846010 input!1342))) tp!1389084 (inv!74478 (right!41996 (c!846010 input!1342))) tp!1389083))))

(declare-fun b!4954488 () Bool)

(declare-fun e!3095703 () Bool)

(declare-fun tp!1389082 () Bool)

(assert (=> b!4954488 (= e!3095703 tp!1389082)))

(declare-fun b!4954487 () Bool)

(assert (=> b!4954487 (= e!3095704 (and (inv!74485 (xs!18363 (c!846010 input!1342))) e!3095703))))

(assert (=> b!4954306 (= tp!1389040 (and (inv!74478 (c!846010 input!1342)) e!3095704))))

(assert (= (and b!4954306 (is-Node!15037 (c!846010 input!1342))) b!4954486))

(assert (= b!4954487 b!4954488))

(assert (= (and b!4954306 (is-Leaf!25005 (c!846010 input!1342))) b!4954487))

(declare-fun m!5979220 () Bool)

(assert (=> b!4954486 m!5979220))

(declare-fun m!5979222 () Bool)

(assert (=> b!4954486 m!5979222))

(declare-fun m!5979224 () Bool)

(assert (=> b!4954487 m!5979224))

(assert (=> b!4954306 m!5979000))

(declare-fun e!3095707 () Bool)

(assert (=> b!4954301 (= tp!1389038 e!3095707)))

(declare-fun b!4954500 () Bool)

(declare-fun tp!1389099 () Bool)

(declare-fun tp!1389096 () Bool)

(assert (=> b!4954500 (= e!3095707 (and tp!1389099 tp!1389096))))

(declare-fun b!4954499 () Bool)

(declare-fun tp_is_empty!36261 () Bool)

(assert (=> b!4954499 (= e!3095707 tp_is_empty!36261)))

(declare-fun b!4954501 () Bool)

(declare-fun tp!1389098 () Bool)

(assert (=> b!4954501 (= e!3095707 tp!1389098)))

(declare-fun b!4954502 () Bool)

(declare-fun tp!1389095 () Bool)

(declare-fun tp!1389097 () Bool)

(assert (=> b!4954502 (= e!3095707 (and tp!1389095 tp!1389097))))

(assert (= (and b!4954301 (is-ElementMatch!13518 (regex!8285 (h!63567 rulesArg!259)))) b!4954499))

(assert (= (and b!4954301 (is-Concat!22114 (regex!8285 (h!63567 rulesArg!259)))) b!4954500))

(assert (= (and b!4954301 (is-Star!13518 (regex!8285 (h!63567 rulesArg!259)))) b!4954501))

(assert (= (and b!4954301 (is-Union!13518 (regex!8285 (h!63567 rulesArg!259)))) b!4954502))

(push 1)

(assert (not b!4954500))

(assert (not b!4954474))

(assert (not b!4954407))

(assert (not b!4954431))

(assert (not b!4954445))

(assert (not d!1595340))

(assert (not b!4954408))

(assert (not b!4954371))

(assert (not b!4954460))

(assert (not b!4954402))

(assert (not b!4954409))

(assert (not b!4954403))

(assert (not b!4954458))

(assert (not b!4954372))

(assert (not bm!345872))

(assert (not b!4954293))

(assert (not b_next!132925))

(assert (not b!4954488))

(assert (not d!1595342))

(assert (not d!1595344))

(assert b_and!346989)

(assert b_and!346979)

(assert (not b!4954433))

(assert (not d!1595360))

(assert (not b_next!132917))

(assert (not b!4954383))

(assert (not b!4954430))

(assert (not b_next!132927))

(assert (not d!1595332))

(assert (not b!4954406))

(assert (not b!4954448))

(assert (not b!4954472))

(assert (not d!1595352))

(assert (not b!4954416))

(assert (not b!4954484))

(assert (not b!4954502))

(assert (not b!4954429))

(assert (not b!4954473))

(assert (not b!4954306))

(assert b_and!346981)

(assert (not d!1595364))

(assert (not d!1595354))

(assert b_and!346987)

(assert (not b!4954381))

(assert (not b!4954410))

(assert (not b!4954483))

(assert (not b!4954432))

(assert (not b!4954404))

(assert (not d!1595358))

(assert (not b!4954461))

(assert (not b!4954487))

(assert (not bm!345875))

(assert (not b!4954459))

(assert (not b!4954463))

(assert (not d!1595318))

(assert (not d!1595356))

(assert (not b_next!132919))

(assert (not d!1595368))

(assert tp_is_empty!36261)

(assert (not d!1595362))

(assert (not b!4954501))

(assert (not d!1595348))

(assert (not b!4954486))

(assert (not d!1595346))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!132925))

(assert (not b_next!132917))

(assert (not b_next!132927))

(assert b_and!346981)

(assert b_and!346987)

(assert (not b_next!132919))

(assert b_and!346989)

(assert b_and!346979)

(check-sat)

(pop 1)

